@interface SXTextTangierEditingController
- (id)editingReps;
- (id)editorKeyboardLanguage;
- (int)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)clearSelection;
- (void)copy:(id)copy;
@end

@implementation SXTextTangierEditingController

- (void)copy:(id)copy
{
  v23[1] = *MEMORY[0x1E69E9840];
  selection = [(TSWPEditingController *)self selection];
  isRange = [selection isRange];

  if (isRange)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storage = [(TSWPEditingController *)self storage];
    stylesheet = [storage stylesheet];

    if (stylesheet)
    {
      selection2 = [(TSWPEditingController *)self selection];
      range = [selection2 range];
      v12 = v11;

      storage2 = [(TSWPEditingController *)self storage];
      v14 = [storage2 nsAttributedSubstringFromRange:range scale:{v12, 1.0}];

      v22 = 0;
      [v14 tokenCountWithEnumerationOptions:1027 maxTokenCount:200 outLimitLength:&v22];
      v15 = [v14 stringByTruncatingToLength:v22 options:1027];

      v16 = [v15 tsu_RTFFromRange:0 documentAttributes:{objc_msgSend(v15, "length"), 0}];
      if (v16)
      {
        [v6 setObject:v16 forKey:*MEMORY[0x1E6963888]];
      }
    }

    storage3 = [(TSWPEditingController *)self storage];
    selection3 = [(TSWPEditingController *)self selection];
    v19 = [storage3 substringWithSelection:selection3];

    [v6 setObject:v19 forKey:*MEMORY[0x1E69638C8]];
    v23[0] = v6;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setItems:v20];
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
  canvas = [v4 canvas];
  topLevelReps = [canvas topLevelReps];

  v7 = [topLevelReps countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        objc_opt_class();
        v11 = TSUDynamicCast();
        storage = [v11 storage];
        storage2 = [(TSWPEditingController *)self storage];

        if (storage == storage2)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [topLevelReps countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v3;
}

- (int)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  if (sel_selectAll_ == action || sel_copy_ == action)
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
  storage = [(TSWPEditingController *)self storage];
  v4 = TSUDynamicCast();

  locale = [v4 locale];
  localeIdentifier = [locale localeIdentifier];

  return localeIdentifier;
}

- (void)clearSelection
{
  interactiveCanvasController = [(TSWPEditingController *)self interactiveCanvasController];
  [interactiveCanvasController endEditing];
}

@end