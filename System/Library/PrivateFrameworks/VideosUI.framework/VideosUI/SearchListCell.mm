@interface SearchListCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIButton)buttonView;
- (VUILabel)resultsContextLabel;
- (VUILabel)subtitleLabel;
- (VUILabel)titleLabel;
- (id)zoomSourceView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setButtonView:(id)view;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setResultsContextLabel:(id)label;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSubtitleLabel:(id)label;
- (void)setTitleLabel:(id)label;
@end

@implementation SearchListCell

- (VUILabel)resultsContextLabel
{
  v2 = sub_1E4162544();

  return v2;
}

- (void)setResultsContextLabel:(id)label
{
  OUTLINED_FUNCTION_33_99(self, a2, label);
  v4 = v3;
  OUTLINED_FUNCTION_10_0();
  sub_1E41625C8();
}

- (VUILabel)titleLabel
{
  v2 = sub_1E4162730();

  return v2;
}

- (void)setTitleLabel:(id)label
{
  OUTLINED_FUNCTION_33_99(self, a2, label);
  v4 = v3;
  OUTLINED_FUNCTION_10_0();
  sub_1E41627B4();
}

- (VUILabel)subtitleLabel
{
  v2 = sub_1E41628F0();

  return v2;
}

- (void)setSubtitleLabel:(id)label
{
  OUTLINED_FUNCTION_33_99(self, a2, label);
  v4 = v3;
  OUTLINED_FUNCTION_10_0();
  sub_1E4162974();
}

- (VUIButton)buttonView
{
  v2 = sub_1E4162FFC();

  return v2;
}

- (void)setButtonView:(id)view
{
  OUTLINED_FUNCTION_33_99(self, a2, view);
  v4 = v3;
  OUTLINED_FUNCTION_10_0();
  sub_1E4163080();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_1E4164DE0();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1E4164F80();
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_1E4165050(highlighted);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selfCopy = self;
  sub_1E4165214(selected, animated);
}

- (id)zoomSourceView
{
  selfCopy = self;
  v3 = sub_1E41658A0();

  return v3;
}

@end