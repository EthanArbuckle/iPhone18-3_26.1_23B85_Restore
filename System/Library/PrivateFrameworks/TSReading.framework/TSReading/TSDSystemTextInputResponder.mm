@interface TSDSystemTextInputResponder
- (void)cancelAutoscroll;
- (void)copy:(id)copy;
- (void)scrollSelectionToVisible:(BOOL)visible;
- (void)startAutoscroll:(CGPoint)autoscroll;
@end

@implementation TSDSystemTextInputResponder

- (void)copy:(id)copy
{
  [(TSDTextInputResponder *)self editor];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [[(TSDTextInputResponder *)self editor] canPerformEditorAction:a2 withSender:copy]== 1)
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
    editor = [(TSDTextInputResponder *)self editor];

    [(TSDTextInput *)editor copy:copy];
  }
}

- (void)startAutoscroll:(CGPoint)autoscroll
{
  y = autoscroll.y;
  x = autoscroll.x;
  p_ICC = [(TSDTextInputResponder *)self p_ICC];
  [p_ICC convertBoundsToUnscaledPoint:{x, y}];
  v7 = v6 + -10.0;
  v9 = v8 + -10.0;

  [p_ICC scrollRectToVisible:1 animated:{v7, v9, 20.0, 20.0}];
}

- (void)cancelAutoscroll
{
  p_ICC = [(TSDTextInputResponder *)self p_ICC];

  [p_ICC forceStopScrolling];
}

- (void)scrollSelectionToVisible:(BOOL)visible
{
  p_ICC = [(TSDTextInputResponder *)self p_ICC];

  [p_ICC scrollCurrentSelectionToVisible];
}

@end