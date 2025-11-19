@interface SUScriptSegmentedControlItem
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (NSString)identifier;
- (NSString)imageURL;
- (NSString)title;
- (SUScriptCanvasContext)canvas;
- (SUScriptSegmentedControlItem)initWithPageSection:(id)a3;
- (id)_segmentedControl;
- (id)newPageSection;
- (id)scriptAttributeKeys;
- (id)userInfo;
- (void)_reloadUserInterface;
- (void)_setImage:(id)a3;
- (void)dealloc;
- (void)setCanvas:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setImageURL:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation SUScriptSegmentedControlItem

- (SUScriptSegmentedControlItem)initWithPageSection:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptSegmentedControlItem;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_identifier = [a3 identifier];
    v4->_image = [a3 image];
    v4->_title = [a3 title];
    v4->_userInfo = -[SUScriptURLRequest initWithNativeRequestProperties:]([SUScriptURLRequest alloc], "initWithNativeRequestProperties:", [a3 URLRequestProperties]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptSegmentedControlItem;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)newPageSection
{
  v3 = objc_alloc_init(SUPageSection);
  v4 = [(SUScriptSegmentedControlItem *)self userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUPageSection *)v3 setStructuredPageType:[SUStructuredPage pageTypeForStorePageString:v4]];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 copyNativeRequestProperties];
      [(SUPageSection *)v3 setURLRequestProperties:v5];
    }
  }

  if ([(SUPageSection *)v3 URLRequestProperties]|| [(SUPageSection *)v3 structuredPageType]== 8)
  {
    v6 = [(SUScriptSegmentedControlItem *)self identifier];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    [(SUPageSection *)v3 setIdentifier:v7];
    [(SUPageSection *)v3 setImage:[(SUScriptSegmentedControlItem *)self image]];
    v8 = [(SUScriptSegmentedControlItem *)self title];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    [(SUPageSection *)v3 setTitle:v9];
  }

  else
  {

    return 0;
  }

  return v3;
}

- (SUScriptCanvasContext)canvas
{
  [(SUScriptObject *)self lock];
  v3 = self->_canvas;
  [(SUScriptObject *)self unlock];
  if (v3)
  {
    return v3;
  }

  v5 = MEMORY[0x1E695DFB0];

  return [v5 null];
}

- (NSString)identifier
{
  [(SUScriptObject *)self lock];
  v3 = self->_identifier;
  [(SUScriptObject *)self unlock];
  if (v3)
  {
    return v3;
  }

  v5 = MEMORY[0x1E695DFB0];

  return [v5 null];
}

- (NSString)imageURL
{
  [(SUScriptObject *)self lock];
  v3 = self->_imageURLString;
  [(SUScriptObject *)self unlock];
  if (v3)
  {
    return v3;
  }

  v5 = MEMORY[0x1E695DFB0];

  return [v5 null];
}

- (void)setCanvas:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3 || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = a3, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    canvas = self->_canvas;
    if (canvas != v5)
    {

      self->_canvas = v5;
    }

    [(SUScriptObject *)self unlock];
    v7 = [(SUScriptCanvasContext *)v5 copyCanvasImage];
    WebThreadRunOnMainThread();

    return;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

- (void)setIdentifier:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    identifier = self->_identifier;
    if (identifier != v5)
    {

      self->_identifier = v5;
    }

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid argument"];
}

- (void)setImageURL:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = 0;
    if (a3)
    {
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        v5 = a3;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
  if (v6)
  {
    v7 = v6;
    [(SUScriptObject *)self lock];
    imageURLString = self->_imageURLString;
    if (imageURLString != v5)
    {

      self->_imageURLString = v5;
    }

    [(SUScriptObject *)self unlock];
    WebThreadRunOnMainThread();

    return;
  }

LABEL_10:
  v10 = MEMORY[0x1E69E2F88];

  [v10 throwException:@"Invalid argument"];
}

void __44__SUScriptSegmentedControlItem_setImageURL___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) newImageWithURL:*(a1 + 40)];
  if (v2)
  {
    v11 = v2;
    [*(a1 + 32) _setImage:v2];
  }

  else
  {
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      LODWORD(v10) = 22;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v12, v10}];
        free(v9);
        SSFileLog();
      }
    }
  }
}

- (void)setTitle:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __41__SUScriptSegmentedControlItem_setTitle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  if (v3 != *(a1 + 40))
  {

    *(*(a1 + 32) + 104) = *(a1 + 40);
    v2 = *(a1 + 32);
  }

  return [v2 _reloadUserInterface];
}

- (void)setUserInfo:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  [(SUScriptObject *)self lock];
  userInfo = self->_userInfo;
  if (userInfo != a3)
  {

    self->_userInfo = a3;
  }

  [(SUScriptObject *)self unlock];
}

- (NSString)title
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__35;
  v12 = __Block_byref_object_dispose__35;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __37__SUScriptSegmentedControlItem_title__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)userInfo
{
  [(SUScriptObject *)self lock];
  v3 = self->_userInfo;
  [(SUScriptObject *)self unlock];
  if (v3)
  {
    return v3;
  }

  v5 = MEMORY[0x1E695DFB0];

  return [v5 null];
}

- (void)_reloadUserInterface
{
  v3 = [(SUScriptSegmentedControlItem *)self _segmentedControl];
  v4 = [v3 rawSegments];
  if (v4)
  {
    v5 = [v4 indexOfObjectIdenticalTo:self];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = [v3 activeSegmentedControl];
      [v7 setImage:self->_image forSegmentAtIndex:v6];
      [v7 setTitle:self->_title forSegmentAtIndex:v6];
      v8 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 "storePageViewController")];
      [v8 setImage:self->_image];
      title = self->_title;

      [v8 setTitle:title];
    }
  }
}

- (id)_segmentedControl
{
  v2 = [(SUScriptObject *)self parentScriptObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (void)_setImage:(id)a3
{
  image = self->_image;
  if (image != a3)
  {

    self->_image = a3;
  }

  [(SUScriptSegmentedControlItem *)self _reloadUserInterface];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_47 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptSegmentedControlItem;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptSegmentedControlItem;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_47 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_47 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"canvas", @"identifier", @"identifier", @"imageURL", @"imageURL", @"title", @"title", @"userInfo", @"userInfo", 0}];
  }
}

@end