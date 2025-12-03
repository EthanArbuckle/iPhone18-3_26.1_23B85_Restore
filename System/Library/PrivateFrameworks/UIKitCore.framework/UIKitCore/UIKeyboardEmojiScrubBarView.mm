@interface UIKeyboardEmojiScrubBarView
- (void)didMoveToWindow;
@end

@implementation UIKeyboardEmojiScrubBarView

- (void)didMoveToWindow
{
  window = [(UIView *)self window];

  if (!window)
  {
    return;
  }

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  v15 = _inheritedRenderConfig;
  if (!self || !self->_isFirstPartyStickers)
  {
    if ([_inheritedRenderConfig lightKeyboard])
    {
      v6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979850]];
      layer = [(UIView *)self layer];
      [layer setCompositingFilter:v6];

      if (+[UIKBRenderFactory _graphicsQuality]== 100)
      {
        v8 = [UIColor colorWithWhite:0.380392157 alpha:1.0];
        [(UIView *)self setBackgroundColor:v8];

        layer2 = [(UIView *)self layer];
        v5 = layer2;
        LODWORD(v10) = 1061779669;
LABEL_12:
        [layer2 setOpacity:v10];
        goto LABEL_13;
      }

      v13 = [UIColor colorWithRed:0.435294118 green:0.4 blue:0.368627451 alpha:1.0];
    }

    else
    {
      v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CD0]];
      layer3 = [(UIView *)self layer];
      [layer3 setCompositingFilter:v11];

      v13 = +[UIColor whiteColor];
    }

    v14 = v13;
    [(UIView *)self setBackgroundColor:v13];

    layer2 = [(UIView *)self layer];
    v5 = layer2;
    LODWORD(v10) = 1058642330;
    goto LABEL_12;
  }

  v5 = +[UIColor tertiarySystemFillColor];
  [(UIView *)self setBackgroundColor:v5];
LABEL_13:
}

@end