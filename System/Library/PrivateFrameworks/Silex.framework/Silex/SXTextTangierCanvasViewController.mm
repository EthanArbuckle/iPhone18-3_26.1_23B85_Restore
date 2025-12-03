@interface SXTextTangierCanvasViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point;
- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)overrideUserInterfaceStyle;
- (void)dealloc;
- (void)interactionDidEnd:(id)end;
- (void)loadView;
- (void)selectAll:(id)all;
@end

@implementation SXTextTangierCanvasViewController

- (void)loadView
{
  v3 = objc_alloc_init(SXCanvasView);
  [(SXTextTangierCanvasViewController *)self setView:v3];
}

- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  hyperlinkCopy = hyperlink;
  repCopy = rep;
  gestureCopy = gesture;
  objc_opt_class();
  interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  v12 = TSUDynamicCast();

  delegate = [v12 delegate];
  v14 = TSUProtocolCast();

  [gestureCopy unscaledLocationForICC:v12];
  v16 = v15;
  v18 = v17;
  gestureKind = [gestureCopy gestureKind];
  v20 = *MEMORY[0x1E69D5758];
  v21 = gestureKind == *MEMORY[0x1E69D5758];

  if (([gestureCopy isDone] & 1) != 0 || gestureKind == v20 && objc_msgSend(gestureCopy, "gestureState") == 1)
  {
    gestureKind2 = [gestureCopy gestureKind];
    v23 = *MEMORY[0x1E69D5750];

    if (gestureKind2 == v23)
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
      v29 = repCopy;
      v30 = v12;
      v31 = hyperlinkCopy;
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

  v25 = [MEMORY[0x1E69D56E0] hyperlinkActionWithHyperlink:hyperlinkCopy inRep:repCopy action:v24];
  [v25 setPerformImmediately:1];
  if ([gestureCopy gestureState] == 2)
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_delete_ != action && (sel_selectAll_ != action || [(SXTextTangierCanvasViewController *)self selectAllEnabled]&& [(SXTextTangierCanvasViewController *)self selectionEnabled]))
  {
    v9.receiver = self;
    v9.super_class = SXTextTangierCanvasViewController;
    v7 = [(TSDiOSCanvasViewController *)&v9 canPerformAction:action withSender:senderCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)selectAll:(id)all
{
  v27 = *MEMORY[0x1E69E9840];
  allCopy = all;
  if ([(SXTextTangierCanvasViewController *)self selectionEnabled]&& [(SXTextTangierCanvasViewController *)self selectAllEnabled])
  {
    interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
    infosToDisplay = [interactiveCanvasController infosToDisplay];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = infosToDisplay;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = allCopy;
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
          storage = [v12 storage];
          flowName = [storage flowName];
          v15 = [flowName isEqualToString:@"body"];

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
      allCopy = v21;
    }

    else
    {
      v16 = 0;
    }

    interactiveCanvasController2 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
    v18 = [interactiveCanvasController2 beginEditingRepForInfo:v16];

    interactiveCanvasController3 = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
    textInputResponder = [interactiveCanvasController3 textInputResponder];
    [textInputResponder selectAll:allCopy];
  }
}

- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  beginCopy = begin;
  interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  delegate = [interactiveCanvasController delegate];
  v10 = TSUProtocolCast();

  if ((objc_opt_respondsToSelector() & 1) != 0 && (-[TSWPiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 interactiveCanvasController:v11 shouldBeginInteraction:beginCopy atPoint:{x, y}], v11, !v12))
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
      v13 = [(TSWPiOSCanvasViewController *)&v15 interactionShouldBegin:beginCopy atPoint:x, y];
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (void)interactionDidEnd:(id)end
{
  interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
  textInputResponder = [interactiveCanvasController textInputResponder];
  [textInputResponder resignFirstResponder];
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (NSSelectorFromString(&cfstr_Accessibilitys.isa) == action || NSSelectorFromString(&cfstr_Accessibilityp.isa) == action)
  {
    interactiveCanvasController = [(TSWPiOSCanvasViewController *)self interactiveCanvasController];
    textInputResponder = [interactiveCanvasController textInputResponder];

    v7 = [textInputResponder targetForAction:action withSender:senderCopy];
  }

  else if (NSSelectorFromString(&cfstr_Delete.isa) == action)
  {
    v7 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SXTextTangierCanvasViewController;
    v7 = [(SXTextTangierCanvasViewController *)&v11 targetForAction:action withSender:senderCopy];
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
  view = [(SXTextTangierCanvasViewController *)self view];
  window = [view window];
  screen = [window screen];
  traitCollection = [screen traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

@end