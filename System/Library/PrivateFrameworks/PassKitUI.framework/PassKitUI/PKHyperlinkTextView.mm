@interface PKHyperlinkTextView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (PKHyperlinkTextView)initWithFrame:(CGRect)a3;
- (void)setLinkForegroundColor:(id)a3;
- (void)updateLinkTextAttributes;
@end

@implementation PKHyperlinkTextView

- (void)setLinkForegroundColor:(id)a3
{
  objc_storeStrong(&self->_linkForegroundColor, a3);

  [(PKHyperlinkTextView *)self updateLinkTextAttributes];
}

- (void)updateLinkTextAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB650];
  linkForegroundColor = self->_linkForegroundColor;
  v4 = linkForegroundColor;
  if (!linkForegroundColor)
  {
    v4 = [MEMORY[0x1E69DC888] linkColor];
  }

  v8[0] = v4;
  v7[1] = *MEMORY[0x1E69DB758];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLinkUnderlined];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(PKHyperlinkTextView *)self setLinkTextAttributes:v6];

  if (!linkForegroundColor)
  {
  }
}

- (PKHyperlinkTextView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKHyperlinkTextView;
  v3 = [(PKHyperlinkTextView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [MEMORY[0x1E69DD168] pkui_styleTextView:v3];
    [(PKHyperlinkTextView *)v3 setEditable:0];
    [(PKHyperlinkTextView *)v3 setScrollEnabled:0];
    [(PKHyperlinkTextView *)v3 _setInteractiveTextSelectionDisabled:1];
    [(PKHyperlinkTextView *)v3 setDataDetectorTypes:2];
    [(PKHyperlinkTextView *)v3 setDelegate:v3];
    v4 = [MEMORY[0x1E69DC888] linkColor];
    linkForegroundColor = v3->_linkForegroundColor;
    v3->_linkForegroundColor = v4;

    v3->_isLinkUnderlined = 0;
    [(PKHyperlinkTextView *)v3 updateLinkTextAttributes];
    [(PKHyperlinkTextView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B98F8]];
  }

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = [(PKHyperlinkTextView *)self action];

  if (v8)
  {
    v9 = [(PKHyperlinkTextView *)self action];
    (v9)[2](v9, v7);
  }

  return 0;
}

@end