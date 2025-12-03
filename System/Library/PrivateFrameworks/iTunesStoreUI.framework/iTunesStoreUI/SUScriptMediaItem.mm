@interface SUScriptMediaItem
+ (id)copyScriptMediaTypesForNativeMediaTypes:(unint64_t)types;
+ (id)scriptMediaTypeForNativeMediaType:(unint64_t)type;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (unint64_t)nativeMediaTypesForScriptMediaTypes:(id)types;
+ (void)initialize;
- (MPMediaItem)nativeItem;
- (id)imageURLWithWidth:(id)width height:(id)height;
- (id)valueForProperty:(id)property;
@end

@implementation SUScriptMediaItem

+ (id)copyScriptMediaTypesForNativeMediaTypes:(unint64_t)types
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = &off_1E8165D40;
  v6 = 10;
  while (1)
  {
    v7 = *(v5 - 1);
    if (v7 == types)
    {
      break;
    }

    if ((v7 & types) != 0)
    {
      [v4 addObject:*v5];
    }

    v5 += 2;
    if (!--v6)
    {
      return v4;
    }
  }

  [v4 removeAllObjects];
  [v4 addObject:*v5];
  return v4;
}

+ (unint64_t)nativeMediaTypesForScriptMediaTypes:(id)types
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [types countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(types);
      }

      v9 = *(*(&v13 + 1) + 8 * i);
      v10 = &off_1E8165D40;
      v11 = 10;
      while (![*v10 isEqualToString:v9])
      {
        v10 += 2;
        if (!--v11)
        {
          goto LABEL_11;
        }
      }

      v6 |= *(v10 - 1);
LABEL_11:
      ;
    }

    v5 = [types countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v5);
  return v6;
}

+ (id)scriptMediaTypeForNativeMediaType:(unint64_t)type
{
  v3 = &off_1E8165D40;
  v4 = 10;
  while (*(v3 - 1) != type)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  return *v3;
}

- (MPMediaItem)nativeItem
{
  nativeObject = [(SUScriptObject *)self nativeObject];

  return [(SUScriptNativeObject *)nativeObject object];
}

- (id)imageURLWithWidth:(id)width height:(id)height
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__21;
  v12 = __Block_byref_object_dispose__21;
  v13 = 0;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v4 = v9[5];
  if (v4)
  {
    null = v4;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v6 = null;
  _Block_object_dispose(&v8, 8);
  return v6;
}

uint64_t __46__SUScriptMediaItem_imageURLWithWidth_height___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "nativeObject")];
  result = [v2 valueForProperty:*MEMORY[0x1E696FA98]];
  if (result)
  {
    v4 = result;
    v5 = [objc_msgSend(*(a1 + 32) "webFrame")];
    *(*(*(a1 + 56) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"itms-api:media-image/%@-%ld-%ld.png", objc_msgSend(v4, "stringValue"), objc_msgSend(*(a1 + 40), "integerValue"), objc_msgSend(*(a1 + 48), "integerValue")];
    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:*(*(*(a1 + 56) + 8) + 40)];
    if (![v5 subresourceForURL:v9])
    {
      v6 = [v2 valueForProperty:*MEMORY[0x1E696F940]];
      if (v6 && (v7 = UIImagePNGRepresentation([v6 imageWithSize:{objc_msgSend(*(a1 + 40), "integerValue"), objc_msgSend(*(a1 + 48), "integerValue")}])) != 0)
      {
        v8 = [objc_alloc(MEMORY[0x1E69E2F80]) initWithData:v7 URL:v9 MIMEType:@"image/png" textEncodingName:0 frameName:0];
        [v5 addSubresource:v8];
      }

      else
      {

        *(*(*(a1 + 56) + 8) + 40) = 0;
      }
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)valueForProperty:(id)property
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__21;
  v11 = __Block_byref_object_dispose__21;
  v12 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v8;
    if (isKindOfClass)
    {
      [MEMORY[0x1E69E2F88] throwException:{objc_msgSend(v8[5], "reason")}];

      v4 = v8;
      v8[5] = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v4 = v8;
  }

  null = v4[5];
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  _Block_object_dispose(&v7, 8);
  return null;
}

id __38__SUScriptMediaItem_valueForProperty___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "nativeObject")];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_29, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaItem;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_29 = sel_imageURLWithWidth_height_;
    *algn_1EBF3B048 = @"imageURLForSize";
    qword_1EBF3B050 = sel_valueForProperty_;
    unk_1EBF3B058 = @"valueForProperty";
  }
}

@end