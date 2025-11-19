@interface SUScriptActivityItemProvider
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SUActivityItemProvider)nativeActivityItemProvider;
- (SUScriptActivityItemProvider)initWithMIMEType:(id)a3;
- (WebScriptObject)itemFunction;
- (id)_newPlaceholderWithMIMEType:(id)a3;
- (id)activitySupportsMIMEType:(id)a3;
- (id)scriptAttributeKeys;
- (void)_finishItemWithItem:(id)a3;
- (void)_finishPreviewWithImage:(id)a3;
- (void)activityItemProvider:(id)a3 provideItemUsingBlock:(id)a4;
- (void)dealloc;
- (void)setItem:(id)a3;
- (void)setItemFunction:(id)a3;
- (void)setPreviewImageWithURLString:(id)a3;
@end

@implementation SUScriptActivityItemProvider

- (SUScriptActivityItemProvider)initWithMIMEType:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptActivityItemProvider;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_mimeType = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  [(SUScriptFunction *)self->_itemFunction setThisObject:0];

  [(SUActivityItemProvider *)self->_nativeProvider setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUScriptActivityItemProvider;
  [(SUScriptObject *)&v3 dealloc];
}

- (SUActivityItemProvider)nativeActivityItemProvider
{
  [(SUScriptObject *)self lock];
  nativeProvider = self->_nativeProvider;
  if (!nativeProvider)
  {
    v4 = [(SUScriptActivityItemProvider *)self _newPlaceholderWithMIMEType:self->_mimeType];
    v5 = [[SUActivityItemProvider alloc] initWithPlaceholderItem:v4];
    self->_nativeProvider = v5;
    [(SUActivityItemProvider *)v5 setDelegate:self];

    nativeProvider = self->_nativeProvider;
  }

  v6 = nativeProvider;
  [(SUScriptObject *)self unlock];
  return v6;
}

- (id)activitySupportsMIMEType:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    goto LABEL_7;
  }

  v5 = [(SUScriptActivityItemProvider *)self _newPlaceholderWithMIMEType:a3];
  if (!v5)
  {
LABEL_7:
    v8 = MEMORY[0x1E695E4C0];
    return *v8;
  }

  v6 = v5;
  v7 = [(SUActivityItemProvider *)[(SUScriptActivityItemProvider *)self nativeActivityItemProvider] suActivity];
  LOBYTE(v7) = -[UIActivity canPerformWithActivityItems:](v7, "canPerformWithActivityItems:", [MEMORY[0x1E695DEC8] arrayWithObject:v6]);

  v8 = MEMORY[0x1E695E4D0];
  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  return *v8;
}

- (void)setItem:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass)
  {
    v5 = self;
    v6 = 0;
LABEL_3:

    [(SUScriptActivityItemProvider *)v5 _finishItemWithItem:v6];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(NSString *)self->_mimeType isEqualToString:@"text/url"])
    {
      v13 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a3];
      [(SUScriptActivityItemProvider *)self _finishItemWithItem:v13];

      return;
    }

    if ([(NSString *)self->_mimeType hasPrefix:@"text/"])
    {
      v5 = self;
      v6 = a3;
      goto LABEL_3;
    }

    if ([(NSString *)self->_mimeType hasPrefix:@"image/"])
    {
      v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a3];
      v10 = [(SUScriptObject *)self newImageWithURL:v9];
      if (v10)
      {
        v11 = v10;
        [(SUScriptActivityItemProvider *)self _finishItemWithItem:v10];
      }

      else
      {
        [(SUScriptObject *)self lock];
        self->_loadState = 1;
        [(SUScriptObject *)self unlock];
        v12 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __40__SUScriptActivityItemProvider_setItem___block_invoke;
        v14[3] = &unk_1E8167138;
        v14[4] = v12;
        [(SUScriptObject *)self loadImageWithURL:v9 completionBlock:v14];
      }
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E2F88];

    [v8 throwException:@"Invalid argument"];
  }
}

uint64_t __40__SUScriptActivityItemProvider_setItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) object];

  return [v3 _finishItemWithItem:a2];
}

- (void)setPreviewImageWithURLString:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass)
  {

    [(SUScriptActivityItemProvider *)self _finishPreviewWithImage:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a3];
      if (v6)
      {
        v7 = v6;
        v8 = [(SUScriptObject *)self newImageWithURL:v6];
        if (v8)
        {
          v9 = v8;
          [(SUScriptActivityItemProvider *)self _finishPreviewWithImage:v8];
        }

        else
        {
          [(SUScriptObject *)self lock];
          self->_previewLoadState = 1;
          [(SUScriptObject *)self unlock];
          v11 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __61__SUScriptActivityItemProvider_setPreviewImageWithURLString___block_invoke;
          v12[3] = &unk_1E8167138;
          v12[4] = v11;
          [(SUScriptObject *)self loadImageWithURL:v7 completionBlock:v12];
        }
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E2F88];

      [v10 throwException:@"Invalid argument"];
    }
  }
}

uint64_t __61__SUScriptActivityItemProvider_setPreviewImageWithURLString___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) object];

  return [v3 _finishPreviewWithImage:a2];
}

- (WebScriptObject)itemFunction
{
  [(SUScriptObject *)self lock];
  v3 = [(SUScriptFunction *)self->_itemFunction scriptObject];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setItemFunction:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  v6 = 1;
  if (!a3 || (isKindOfClass & 1) != 0)
  {
LABEL_3:
    [(SUScriptFunction *)self->_itemFunction setThisObject:0];

    if (v6)
    {
      self->_itemFunction = 0;
    }

    else
    {
      v8 = [[SUScriptFunction alloc] initWithScriptObject:v5];
      self->_itemFunction = v8;

      [(SUScriptFunction *)v8 setThisObject:self];
    }

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
    v5 = a3;
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

- (void)activityItemProvider:(id)a3 provideItemUsingBlock:(id)a4
{
  [(SUScriptObject *)self lock];
  v6 = self->_itemFunction;

  self->_itemBlock = [a4 copy];
  [(SUScriptObject *)self unlock];
  if (v6)
  {
    v7 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__SUScriptActivityItemProvider_activityItemProvider_provideItemUsingBlock___block_invoke;
    v9[3] = &unk_1E8165A10;
    v9[4] = v7;
    [(SUScriptFunction *)v6 callWithArguments:0 completionBlock:v9];
  }

  else
  {
    v8 = *(a4 + 2);

    v8(a4, 0);
  }
}

uint64_t __75__SUScriptActivityItemProvider_activityItemProvider_provideItemUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) object];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = a2;
      LODWORD(v12) = 22;
      v11 = &v13;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v13, v12}];
        free(v9);
        v11 = v10;
        SSFileLog();
      }
    }

    return [v3 _finishItemWithItem:{0, v11}];
  }

  return result;
}

- (void)_finishItemWithItem:(id)a3
{
  [(SUScriptObject *)self lock];

  self->_item = a3;
  self->_loadState = 2;
  if (self->_previewLoadState == 1)
  {

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v5 = self->_itemBlock;
    [(SUScriptObject *)self unlock];
    if (v5)
    {
      v5[2](v5, a3);
    }
  }
}

- (void)_finishPreviewWithImage:(id)a3
{
  [(SUActivityItemProvider *)[(SUScriptActivityItemProvider *)self nativeActivityItemProvider] setSUPreviewImage:a3];
  [(SUScriptObject *)self lock];
  self->_previewLoadState = 2;
  if (self->_loadState == 2)
  {
    v6 = self->_item;
    v4 = self->_itemBlock;
    [(SUScriptObject *)self unlock];
    if (v4)
    {
      v4[2](v4, v6);
    }

    v5 = v6;
  }

  else
  {
    [(SUScriptObject *)self unlock];
    v5 = 0;
  }
}

- (id)_newPlaceholderWithMIMEType:(id)a3
{
  if ([a3 isEqualToString:@"text/url"])
  {
    v4 = objc_alloc(MEMORY[0x1E695DFF8]);

    return [v4 initWithString:@"http://example.com/"];
  }

  else
  {
    if ([a3 hasPrefix:@"text/"])
    {
      v6 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (![a3 hasPrefix:@"image/"])
      {
        return 0;
      }

      v6 = MEMORY[0x1E69DCAB8];
    }

    return objc_alloc_init(v6);
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_71 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptActivityItemProvider;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_53, 3);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptActivityItemProvider;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptActivityItemProvider;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_71 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_53 = sel_activitySupportsMIMEType_;
    *algn_1EBF3B808 = @"activitySupportsMIMEType";
    qword_1EBF3B810 = sel_setItem_;
    unk_1EBF3B818 = @"setItem";
    qword_1EBF3B820 = sel_setPreviewImageWithURLString_;
    unk_1EBF3B828 = @"setPreviewImage";
    __KeyMapping_71 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"activityType", @"itemFunction", @"itemFunction", @"MIMEType", @"MIMEType", @"progress", @"progress", @"status", @"status", 0}];
  }
}

@end