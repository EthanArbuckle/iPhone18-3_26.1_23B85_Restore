@interface UIWebElementAction
+ (id)customElementActionWithTitle:(id)a3 actionHandler:(id)a4;
+ (id)standardElementActionWithType:(int)a3 customTitle:(id)a4 context:(id)a5;
- (UIWebElementAction)initWithTitle:(id)a3 actionHandler:(id)a4 type:(int)a5;
- (void)_runActionWithElement:(id)a3 targetURL:(id)a4 documentView:(id)a5 interactionLocation:(CGPoint)a6;
- (void)dealloc;
@end

@implementation UIWebElementAction

- (UIWebElementAction)initWithTitle:(id)a3 actionHandler:(id)a4 type:(int)a5
{
  v10.receiver = self;
  v10.super_class = UIWebElementAction;
  v8 = [(UIWebElementAction *)&v10 init];
  if (v8)
  {
    v8->_title = a3;
    v8->_type = a5;
    v8->_actionHandler = _Block_copy(a4);
  }

  return v8;
}

- (void)dealloc
{
  self->_title = 0;

  self->_actionHandler = 0;
  self->_dismissalHandler = 0;
  v3.receiver = self;
  v3.super_class = UIWebElementAction;
  [(UIWebElementAction *)&v3 dealloc];
}

+ (id)customElementActionWithTitle:(id)a3 actionHandler:(id)a4
{
  v6 = [a1 alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__UIWebElementAction_customElementActionWithTitle_actionHandler___block_invoke;
  v8[3] = &unk_1E712C250;
  v8[4] = a4;
  return [v6 initWithTitle:a3 actionHandler:v8 type:0];
}

+ (id)standardElementActionWithType:(int)a3 customTitle:(id)a4 context:(id)a5
{
  v6 = *&a3;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v8 = [_UIKitBundle() localizedStringForKey:@"Open Link" value:@"Open" table:@"Localizable"];
        v9 = &__block_literal_global_355_4;
        goto LABEL_17;
      case 2:
        v8 = [_UIKitBundle() localizedStringForKey:@"Copy Link" value:@"Copy" table:@"Localizable"];
        v9 = &__block_literal_global_727;
        goto LABEL_17;
      case 3:
        v8 = _UINSLocalizedStringWithDefaultValue(@"Save Image", @"Save Image");
        v9 = &__block_literal_global_360_0;
        goto LABEL_17;
    }

LABEL_13:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"There is no standard web element action of type %d.", a5, *&a3}];
    return 0;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      v11 = [a5 objectForKeyedSubscript:@"UIWebElementActionContextAppLinkKey"];
      v12 = [objc_msgSend(v11 "targetApplicationProxy")];
      v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(_UIKitBundle(), "localizedStringForKey:value:table:", @"Open in “%@” (Link Element Action Sheet Button)", @"Open in “%@”", @"Localizable", v12];
      v9 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__UIWebElementAction_standardElementActionWithType_customTitle_context___block_invoke_7;
      v15[3] = &unk_1E712C298;
      v15[4] = v11;
      goto LABEL_17;
    }

    if (a3 == 7)
    {
      v8 = _UINSLocalizedStringWithDefaultValue(@"Share…", @"Share…");
      v9 = &__block_literal_global_385_0;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a3 == 4)
  {
    v8 = _UINSLocalizedStringWithDefaultValue(@"Add to Reading List", @"Add to Reading List");
    v9 = &__block_literal_global_365_1;
  }

  else
  {
    v7 = [a5 objectForKeyedSubscript:@"UIWebElementActionContextAppLinkKey"];
    v8 = _UINSLocalizedStringWithDefaultValue(@"Open in Safari", @"Open in Safari");
    v9 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__UIWebElementAction_standardElementActionWithType_customTitle_context___block_invoke_5;
    v16[3] = &unk_1E712C298;
    v16[4] = v7;
  }

LABEL_17:
  v13 = [UIWebElementAction alloc];
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v8;
  }

  return [(UIWebElementAction *)v13 initWithTitle:v14 actionHandler:v9 type:v6];
}

void __72__UIWebElementAction_standardElementActionWithType_customTitle_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF90]);
    v5 = [a3 absoluteString];
    v6 = [UIPasteboardTypeListString objectAtIndex:0];
    v18 = [v4 initWithObjectsAndKeys:{v5, v6, a3, objc_msgSend(UIPasteboardTypeListURL, "objectAtIndex:", 0), 0}];
    v7 = +[UIPasteboard generalPasteboard];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v18];
    v9 = v7;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v11 = [a2 dataRepresentation:1];
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = [a2 mimeType];
    v14 = [MEMORY[0x1E6982C40] typeWithTag:v13 tagClass:*MEMORY[0x1E6982C50] conformingToType:0];
    if (v14)
    {
      v15 = v14;
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v16 setObject:v12 forKey:{objc_msgSend(v15, "identifier")}];
      v17 = [a2 absoluteImageURL];
      [v16 setObject:v17 forKey:{objc_msgSend(*MEMORY[0x1E6983030], "identifier")}];
      [v18 addObject:v16];
    }

    v9 = +[UIPasteboard generalPasteboard];
    v8 = v18;
  }

  [(UIPasteboard *)v9 setItems:v8];
}

void __72__UIWebElementAction_standardElementActionWithType_customTitle_context___block_invoke_3(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a2 dataRepresentation:0];
    if (v3)
    {

      UIImageDataWriteToSavedPhotosAlbum(v3, 0, 0, 0);
    }
  }
}

uint64_t __72__UIWebElementAction_standardElementActionWithType_customTitle_context___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = [a3 absoluteString];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [a2 innerText], (v7 = objc_msgSend(v6, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet"))) == 0) || (v8 = v7, !objc_msgSend(v7, "length")))
  {
    v8 = v5;
  }

  v9 = [getSSReadingListClass_0() defaultReadingList];

  return [v9 addReadingListItemWithURL:a3 title:v8 previewText:0 error:0];
}

- (void)_runActionWithElement:(id)a3 targetURL:(id)a4 documentView:(id)a5 interactionLocation:(CGPoint)a6
{
  [objc_alloc_init(UIWebElementActionInfo) _setInteractionLocation:a6.x, a6.y];
  v7 = *(self->_actionHandler + 2);

  v7();
}

@end