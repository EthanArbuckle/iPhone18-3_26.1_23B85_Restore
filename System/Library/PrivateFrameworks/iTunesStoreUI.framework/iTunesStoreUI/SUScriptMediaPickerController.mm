@interface SUScriptMediaPickerController
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (BOOL)allowsPickingMultipleItems;
- (NSArray)mediaTypes;
- (NSString)prompt;
- (SUScriptMediaPickerController)initWithMediaTypes:(id)a3;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setNativeViewController:(id)a3;
- (void)setPrompt:(id)a3;
@end

@implementation SUScriptMediaPickerController

- (SUScriptMediaPickerController)initWithMediaTypes:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  v5 = [(SUScriptObject *)self init];
  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__26;
    v14 = __Block_byref_object_dispose__26;
    v15 = 0;
    if (a3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v6 = [a3 copyArrayValueWithValidator:__SUMediaTypeValidator context:0], (v11[5] = v6) == 0))
      {
        [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];

        v5 = 0;
LABEL_11:

        _Block_object_dispose(&v10, 8);
        return v5;
      }
    }

    else
    {
      v7 = [SUScriptMediaItem scriptMediaTypeForNativeMediaType:-1];
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
      v11[5] = v8;
    }

    WebThreadRunOnMainThread();
    goto LABEL_11;
  }

  return v5;
}

void __52__SUScriptMediaPickerController_initWithMediaTypes___block_invoke(uint64_t a1)
{
  v2 = [SUScriptMediaItem nativeMediaTypesForScriptMediaTypes:*(*(*(a1 + 40) + 8) + 40)];
  v3 = [objc_alloc(MEMORY[0x1E69705F8]) initWithMediaTypes:v2];
  [*(a1 + 32) setNativeViewController:v3];
}

- (id)newNativeViewController
{
  v2 = objc_alloc(MEMORY[0x1E69705F8]);

  return [v2 initWithMediaTypes:-1];
}

- (void)setNativeViewController:(id)a3
{
  if (a3)
  {
    v4 = [(SUScriptNativeObject *)SUScriptMediaPickerNativeObject objectWithNativeObject:?];

    [(SUScriptObject *)self setNativeObject:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUScriptMediaPickerController;
    [(SUScriptViewController *)&v5 setNativeViewController:?];
  }
}

- (BOOL)allowsPickingMultipleItems
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __59__SUScriptMediaPickerController_allowsPickingMultipleItems__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSArray)mediaTypes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__26;
  v12 = __Block_byref_object_dispose__26;
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

id __43__SUScriptMediaPickerController_mediaTypes__block_invoke(uint64_t a1)
{
  result = +[SUScriptMediaItem copyScriptMediaTypesForNativeMediaTypes:](SUScriptMediaItem, "copyScriptMediaTypesForNativeMediaTypes:", [objc_msgSend(*(a1 + 32) "nativeViewController")]);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)prompt
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__26;
  v12 = __Block_byref_object_dispose__26;
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

id __39__SUScriptMediaPickerController_prompt__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "nativeViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __63__SUScriptMediaPickerController_setAllowsPickingMultipleItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  v3 = *(a1 + 40);

  return [v2 setAllowsPickingMultipleItems:v3];
}

- (void)setPrompt:(id)a3
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

uint64_t __43__SUScriptMediaPickerController_setPrompt___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nativeViewController];
  v3 = *(a1 + 40);

  return [v2 setPrompt:v3];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_38 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaPickerController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMediaPickerController;
  v2 = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [v2 addObjectsFromArray:{objc_msgSend(__KeyMapping_38, "allKeys")}];
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_38 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"allowsPickingMultipleItems", @"mediaTypes", @"mediaTypes", @"prompt", @"prompt", 0}];
  }
}

@end