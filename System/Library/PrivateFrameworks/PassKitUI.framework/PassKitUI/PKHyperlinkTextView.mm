@interface PKHyperlinkTextView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (PKHyperlinkTextView)initWithFrame:(CGRect)frame;
- (void)setLinkForegroundColor:(id)color;
- (void)updateLinkTextAttributes;
@end

@implementation PKHyperlinkTextView

- (void)setLinkForegroundColor:(id)color
{
  objc_storeStrong(&self->_linkForegroundColor, color);

  [(PKHyperlinkTextView *)self updateLinkTextAttributes];
}

- (void)updateLinkTextAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB650];
  linkForegroundColor = self->_linkForegroundColor;
  linkColor = linkForegroundColor;
  if (!linkForegroundColor)
  {
    linkColor = [MEMORY[0x1E69DC888] linkColor];
  }

  v8[0] = linkColor;
  v7[1] = *MEMORY[0x1E69DB758];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLinkUnderlined];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(PKHyperlinkTextView *)self setLinkTextAttributes:v6];

  if (!linkForegroundColor)
  {
  }
}

- (PKHyperlinkTextView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PKHyperlinkTextView;
  v3 = [(PKHyperlinkTextView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [MEMORY[0x1E69DD168] pkui_styleTextView:v3];
    [(PKHyperlinkTextView *)v3 setEditable:0];
    [(PKHyperlinkTextView *)v3 setScrollEnabled:0];
    [(PKHyperlinkTextView *)v3 _setInteractiveTextSelectionDisabled:1];
    [(PKHyperlinkTextView *)v3 setDataDetectorTypes:2];
    [(PKHyperlinkTextView *)v3 setDelegate:v3];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    linkForegroundColor = v3->_linkForegroundColor;
    v3->_linkForegroundColor = linkColor;

    v3->_isLinkUnderlined = 0;
    [(PKHyperlinkTextView *)v3 updateLinkTextAttributes];
    [(PKHyperlinkTextView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B98F8]];
  }

  return v3;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  action = [(PKHyperlinkTextView *)self action];

  if (action)
  {
    action2 = [(PKHyperlinkTextView *)self action];
    (action2)[2](action2, lCopy);
  }

  return 0;
}

@end