@interface SearchListCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIButton)buttonView;
- (VUILabel)resultsContextLabel;
- (VUILabel)subtitleLabel;
- (VUILabel)titleLabel;
- (id)zoomSourceView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setButtonView:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setResultsContextLabel:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setSubtitleLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
@end

@implementation SearchListCell

- (VUILabel)resultsContextLabel
{
  v2 = sub_1E4162544();

  return v2;
}

- (void)setResultsContextLabel:(id)a3
{
  OUTLINED_FUNCTION_33_99(self, a2, a3);
  v4 = v3;
  OUTLINED_FUNCTION_10_0();
  sub_1E41625C8();
}

- (VUILabel)titleLabel
{
  v2 = sub_1E4162730();

  return v2;
}

- (void)setTitleLabel:(id)a3
{
  OUTLINED_FUNCTION_33_99(self, a2, a3);
  v4 = v3;
  OUTLINED_FUNCTION_10_0();
  sub_1E41627B4();
}

- (VUILabel)subtitleLabel
{
  v2 = sub_1E41628F0();

  return v2;
}

- (void)setSubtitleLabel:(id)a3
{
  OUTLINED_FUNCTION_33_99(self, a2, a3);
  v4 = v3;
  OUTLINED_FUNCTION_10_0();
  sub_1E4162974();
}

- (VUIButton)buttonView
{
  v2 = sub_1E4162FFC();

  return v2;
}

- (void)setButtonView:(id)a3
{
  OUTLINED_FUNCTION_33_99(self, a2, a3);
  v4 = v3;
  OUTLINED_FUNCTION_10_0();
  sub_1E4163080();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1E41637DC(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E4164DE0();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1E4164F80();
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_1E4165050(a3);
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1E4165214(a3, a4);
}

- (id)zoomSourceView
{
  v2 = self;
  v3 = sub_1E41658A0();

  return v3;
}

@end