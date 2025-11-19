@interface SXTextTangierEditingController
- (id)editingReps;
- (id)editorKeyboardLanguage;
- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)clearSelection;
- (void)copy:(id)a3;
@end

@implementation SXTextTangierEditingController

- (void)copy:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = [(TSWPEditingController *)self selection];
  v5 = [v4 isRange];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [(TSWPEditingController *)self storage];
    v8 = [v7 stylesheet];

    if (v8)
    {
      v9 = [(TSWPEditingController *)self selection];
      v10 = [v9 range];
      v12 = v11;

      v13 = [(TSWPEditingController *)self storage];
      v14 = [v13 nsAttributedSubstringFromRange:v10 scale:{v12, 1.0}];

      v22 = 0;
      [v14 tokenCountWithEnumerationOptions:1027 maxTokenCount:200 outLimitLength:&v22];
      v15 = [v14 stringByTruncatingToLength:v22 options:1027];

      v16 = [v15 tsu_RTFFromRange:0 documentAttributes:{objc_msgSend(v15, "length"), 0}];
      if (v16)
      {
        [v6 setObject:v16 forKey:*MEMORY[0x1E6963888]];
      }
    }

    v17 = [(TSWPEditingController *)self storage];
    v18 = [(TSWPEditingController *)self selection];
    v19 = [v17 substringWithSelection:v18];

    [v6 setObject:v19 forKey:*MEMORY[0x1E69638C8]];
    v23[0] = v6;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v21 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v21 setItems:v20];
  }
}

- (id)editingReps
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(TSWPEditingController *)self interactiveCanvasController:0];
  v5 = [v4 canvas];
  v6 = [v5 topLevelReps];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        v11 = TSUDynamicCast();
        v12 = [v11 storage];
        v13 = [(TSWPEditingController *)self storage];

        if (v12 == v13)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v3;
}

- (int)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  if (sel_selectAll_ == a3 || sel_copy_ == a3)
  {
    return 1;
  }

  v9 = v4;
  v10 = v5;
  v8.receiver = self;
  v8.super_class = SXTextTangierEditingController;
  return [TSWPEditingController canPerformEditorAction:sel_canPerformEditorAction_withSender_ withSender:?];
}

- (id)editorKeyboardLanguage
{
  objc_opt_class();
  v3 = [(TSWPEditingController *)self storage];
  v4 = TSUDynamicCast();

  v5 = [v4 locale];
  v6 = [v5 localeIdentifier];

  return v6;
}

- (void)clearSelection
{
  v2 = [(TSWPEditingController *)self interactiveCanvasController];
  [v2 endEditing];
}

@end