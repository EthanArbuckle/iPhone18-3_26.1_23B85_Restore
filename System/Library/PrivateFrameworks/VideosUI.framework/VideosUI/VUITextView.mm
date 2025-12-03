@interface VUITextView
- (CGSize)vui_sizeThatFits:(CGSize)fits;
- (id)_defaultParagraphStyle;
- (void)setVuiAttributedText:(id)text;
@end

@implementation VUITextView

- (void)setVuiAttributedText:(id)text
{
  textCopy = text;
  v5 = +[VUIInterfaceFactory sharedInstance];
  languageStringHandler = [v5 languageStringHandler];

  _defaultParagraphStyle = [(VUITextView *)self _defaultParagraphStyle];
  v7 = [languageStringHandler makeLanguageAwareAttributedString:textCopy defaultParagraphStyle:_defaultParagraphStyle];

  [(VUITextView *)self setAttributedText:v7];
}

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = VUITextView;
  [(VUITextView *)&v5 sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_defaultParagraphStyle
{
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v4 = [defaultParagraphStyle mutableCopy];

  [v4 setAlignment:{-[VUITextView vuiTextAlignment](self, "vuiTextAlignment")}];
  [v4 setLineBreakMode:0];
  v5 = [v4 copy];

  return v5;
}

@end