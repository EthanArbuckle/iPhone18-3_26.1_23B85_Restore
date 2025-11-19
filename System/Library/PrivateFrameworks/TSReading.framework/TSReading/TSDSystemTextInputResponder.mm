@interface TSDSystemTextInputResponder
- (void)cancelAutoscroll;
- (void)copy:(id)a3;
- (void)scrollSelectionToVisible:(BOOL)a3;
- (void)startAutoscroll:(CGPoint)a3;
@end

@implementation TSDSystemTextInputResponder

- (void)copy:(id)a3
{
  [(TSDTextInputResponder *)self editor];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [[(TSDTextInputResponder *)self editor] canPerformEditorAction:a2 withSender:a3]== 1)
  {
    [(TSDTextInputResponder *)self acceptAutocorrection];
    [objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")];
    v6 = [(TSDTextInputResponder *)self editor];

    [(TSDTextInput *)v6 copy:a3];
  }
}

- (void)startAutoscroll:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(TSDTextInputResponder *)self p_ICC];
  [v5 convertBoundsToUnscaledPoint:{x, y}];
  v7 = v6 + -10.0;
  v9 = v8 + -10.0;

  [v5 scrollRectToVisible:1 animated:{v7, v9, 20.0, 20.0}];
}

- (void)cancelAutoscroll
{
  v2 = [(TSDTextInputResponder *)self p_ICC];

  [v2 forceStopScrolling];
}

- (void)scrollSelectionToVisible:(BOOL)a3
{
  v3 = [(TSDTextInputResponder *)self p_ICC];

  [v3 scrollCurrentSelectionToVisible];
}

@end