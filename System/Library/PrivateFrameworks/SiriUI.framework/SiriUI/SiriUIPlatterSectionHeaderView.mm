@interface SiriUIPlatterSectionHeaderView
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text;
- (SiriUIPlatterSectionHeaderView)initWithText:(id)text visualEffect:(id)effect;
- (void)setTextAlignment:(int64_t)alignment;
@end

@implementation SiriUIPlatterSectionHeaderView

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text
{
  height = fits.height;
  width = fits.width;
  textCopy = text;
  _font = [self _font];
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___SiriUIPlatterSectionHeaderView;
  v15[0] = xmmword_2694DDDF0;
  v15[1] = unk_2694DDE00;
  v15[2] = xmmword_2694DDE10;
  v16 = 0x4030000000000000;
  objc_msgSendSuper2(&v17, sel_sizeThatFits_text_font_textContainerStyle_, textCopy, _font, v15, width, height);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (SiriUIPlatterSectionHeaderView)initWithText:(id)text visualEffect:(id)effect
{
  v10.receiver = self;
  v10.super_class = SiriUIPlatterSectionHeaderView;
  v4 = [(SiriUITextContainerView *)&v10 initWithText:text visualEffect:effect];
  if (v4)
  {
    siriui_keylineColor = [MEMORY[0x277D75348] siriui_keylineColor];
    [(SiriUIPlatterSectionHeaderView *)v4 setBackgroundColor:siriui_keylineColor];

    [(SiriUIPlatterSectionHeaderView *)v4 setTextAlignment:4];
    v8[0] = xmmword_2694DDDF0;
    v8[1] = unk_2694DDE00;
    v8[2] = xmmword_2694DDE10;
    v9 = 0x4030000000000000;
    [(SiriUITextContainerView *)v4 setTextContainerStyle:v8];
    _font = [objc_opt_class() _font];
    [(SiriUITextContainerView *)v4 setFont:_font];
  }

  return v4;
}

- (void)setTextAlignment:(int64_t)alignment
{
  v4.receiver = self;
  v4.super_class = SiriUIPlatterSectionHeaderView;
  [(SiriUITextContainerView *)&v4 setTextAlignment:alignment];
  [(UIView *)self recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
}

@end