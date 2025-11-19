@interface SXTextTangierCanvasViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)interactionShouldBegin:(id)a3 atPoint:(CGPoint)a4;
- (id)actionForHyperlink:(id)a3 inRep:(id)a4 gesture:(id)a5;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)overrideUserInterfaceStyle;
- (void)dealloc;
- (void)interactionDidEnd:(id)a3;
- (void)loadView;
- (void)selectAll:(id)a3;
@end

@implementation SXTextTangierCanvasViewController

- (void)loadView
{
  v3 = objc_alloc_init(SXCanvasView);
  [(SXTextTangierCanvasViewController *)self setView:v3];
}

- (id)actionForHyperlink:(id)a3 inRep:(id)a4 gesture:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v11 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  v12 = TSUDynamicCast();

  v13 = [v12 delegate];
  v14 = TSUProtocolCast();

  [v10 unscaledLocationForICC:v12];
  v16 = v15;
  v18 = v17;
  v19 = [v10 gestureKind];
  v20 = *MEMORY[0x1E69D5758];
  v21 = v19 == *MEMORY[0x1E69D5758];

  if (([v10 isDone] & 1) != 0 || v19 == v20 && objc_msgSend(v10, "gestureState") == 1)
  {
    v22 = [v10 gestureKind];
    v23 = *MEMORY[0x1E69D5750];

    if (v22 == v23)
    {
      v24 = &__block_literal_global_292;
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__SXTextTangierCanvasViewController_actionForHyperlink_inRep_gesture___block_invoke_3;
      v27[3] = &unk_1E8500128;
      v28 = v14;
      v29 = v9;
      v30 = v12;
      v31 = v8;
      v32 = v16;
      v33 = v18;
      v34 = v21;
      v24 = MEMORY[0x1DA716BE0](v27);
    }
  }

  else
  {
    v24 = &__block_literal_global_28;
  }

  v25 = [MEMORY[0x1E69D56E0] hyperlinkActionWithHyperlink:v8 inRep:v9 action:v24];
  [v25 setPerformImmediately:1];
  if ([v10 gestureState] == 2)
  {

    v25 = 0;
  }

  return v25;
}

void __70__SXTextTangierCanvasViewController_actionForHyperlink_inRep_gesture___block_invoke_2()
{
  v0 = [MEMORY[0x1E69D56F0] sharedHyperlinkUIController];
  [v0 endUISession];
}

void __70__SXTextTangierCanvasViewController_actionForHyperlink_inRep_gesture___block_invoke_3(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 40) info];
    v3 = TSUProtocolCast();

    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = [v6 range];
    [v4 interactiveCanvasController:v5 interactedWithHyperlink:v6 info:v3 range:v7 touchPoint:v8 touchAndHold:{*(a1 + 80), *(a1 + 64), *(a1 + 72)}];
  }

  v9 = [MEMORY[0x1E69D56F0] sharedHyperlinkUIController];
  [v9 endUISession];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_delete_ != a3 && (sel_selectAll_ != a3 || [(SXTextTangierCanvasViewController *)self selectAllEnabled]&& [(SXTextTangierCanvasViewController *)self selectionEnabled]))
  {
    v9.receiver = self;
    v9.super_class = SXTextTangierCanvasViewController;
    v7 = [(TSDiOSCanvasViewController *)&v9 canPerformAction:a3 withSender:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)selectAll:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SXTextTangierCanvasViewController *)self selectionEnabled]&& [(SXTextTangierCanvasViewController *)self selectAllEnabled])
  {
    v5 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [v5 infosToDisplay];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = v4;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 storage];
          v14 = [v13 flowName];
          v15 = [v14 isEqualToString:@"body"];

          if (v15)
          {
            v16 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v16 = 0;
LABEL_13:
      v4 = v21;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
    v18 = [v17 beginEditingRepForInfo:v16];

    v19 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
    v20 = [v19 textInputResponder];
    [v20 selectAll:v4];
  }
}

- (BOOL)interactionShouldBegin:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  v9 = [v8 delegate];
  v10 = TSUProtocolCast();

  if ((objc_opt_respondsToSelector() & 1) != 0 && (-[TSWPiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 interactiveCanvasController:v11 shouldBeginInteraction:v7 atPoint:{x, y}], v11, !v12))
  {
    v13 = 0;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SXTextTangierCanvasViewController;
    if ([(TSDiOSCanvasViewController *)&v16 respondsToSelector:sel_interactionShouldBegin_atPoint_])
    {
      v15.receiver = self;
      v15.super_class = SXTextTangierCanvasViewController;
      v13 = [(TSWPiOSCanvasViewController *)&v15 interactionShouldBegin:v7 atPoint:x, y];
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (void)interactionDidEnd:(id)a3
{
  v4 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  v3 = [v4 textInputResponder];
  [v3 resignFirstResponder];
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (NSSelectorFromString(&cfstr_Accessibilitys.isa) == a3 || NSSelectorFromString(&cfstr_Accessibilityp.isa) == a3)
  {
    v8 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
    v9 = [v8 textInputResponder];

    v7 = [v9 targetForAction:a3 withSender:v6];
  }

  else if (NSSelectorFromString(&cfstr_Delete.isa) == a3)
  {
    v7 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SXTextTangierCanvasViewController;
    v7 = [(SXTextTangierCanvasViewController *)&v11 targetForAction:a3 withSender:v6];
  }

  return v7;
}

- (void)dealloc
{
  [(TSWPiOSCanvasViewController *)self cancelDelayedTapAction];
  v3.receiver = self;
  v3.super_class = SXTextTangierCanvasViewController;
  [(TSWPiOSCanvasViewController *)&v3 dealloc];
}

- (int64_t)overrideUserInterfaceStyle
{
  v2 = [(SXTextTangierCanvasViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 screen];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceStyle];

  return v6;
}

@end