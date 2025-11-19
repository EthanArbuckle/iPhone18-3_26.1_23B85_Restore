@interface VUITextView
- (CGSize)vui_sizeThatFits:(CGSize)a3;
- (id)_defaultParagraphStyle;
- (void)setVuiAttributedText:(id)a3;
@end

@implementation VUITextView

- (void)setVuiAttributedText:(id)a3
{
  v4 = a3;
  v5 = +[VUIInterfaceFactory sharedInstance];
  v8 = [v5 languageStringHandler];

  v6 = [(VUITextView *)self _defaultParagraphStyle];
  v7 = [v8 makeLanguageAwareAttributedString:v4 defaultParagraphStyle:v6];

  [(VUITextView *)self setAttributedText:v7];
}

- (CGSize)vui_sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = VUITextView;
  [(VUITextView *)&v5 sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_defaultParagraphStyle
{
  v3 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setAlignment:{-[VUITextView vuiTextAlignment](self, "vuiTextAlignment")}];
  [v4 setLineBreakMode:0];
  v5 = [v4 copy];

  return v5;
}

@end