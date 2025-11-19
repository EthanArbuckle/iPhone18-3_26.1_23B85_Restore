@interface SiriUIPlatterSectionHeaderView
+ (CGSize)sizeThatFits:(CGSize)a3 text:(id)a4;
- (SiriUIPlatterSectionHeaderView)initWithText:(id)a3 visualEffect:(id)a4;
- (void)setTextAlignment:(int64_t)a3;
@end

@implementation SiriUIPlatterSectionHeaderView

+ (CGSize)sizeThatFits:(CGSize)a3 text:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [a1 _font];
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___SiriUIPlatterSectionHeaderView;
  v15[0] = xmmword_2694DDDF0;
  v15[1] = unk_2694DDE00;
  v15[2] = xmmword_2694DDE10;
  v16 = 0x4030000000000000;
  objc_msgSendSuper2(&v17, sel_sizeThatFits_text_font_textContainerStyle_, v7, v8, v15, width, height);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (SiriUIPlatterSectionHeaderView)initWithText:(id)a3 visualEffect:(id)a4
{
  v10.receiver = self;
  v10.super_class = SiriUIPlatterSectionHeaderView;
  v4 = [(SiriUITextContainerView *)&v10 initWithText:a3 visualEffect:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] siriui_keylineColor];
    [(SiriUIPlatterSectionHeaderView *)v4 setBackgroundColor:v5];

    [(SiriUIPlatterSectionHeaderView *)v4 setTextAlignment:4];
    v8[0] = xmmword_2694DDDF0;
    v8[1] = unk_2694DDE00;
    v8[2] = xmmword_2694DDE10;
    v9 = 0x4030000000000000;
    [(SiriUITextContainerView *)v4 setTextContainerStyle:v8];
    v6 = [objc_opt_class() _font];
    [(SiriUITextContainerView *)v4 setFont:v6];
  }

  return v4;
}

- (void)setTextAlignment:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SiriUIPlatterSectionHeaderView;
  [(SiriUITextContainerView *)&v4 setTextAlignment:a3];
  [(UIView *)self recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
}

@end