@interface WFIntelligencePromptView
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)accessoryButtonTapped;
- (void)contentSizeCategoryDidChange;
- (void)detachedButtonTapped;
- (void)layoutSubviews;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFIntelligencePromptView

- (void)contentSizeCategoryDidChange
{
  v2 = self;
  sub_1C8399620();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1C839A0FC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1C839AD6C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1C83A0C48(a3);
}

- (void)accessoryButtonTapped
{
  v2 = self;
  sub_1C83A359C();
}

- (void)detachedButtonTapped
{
  v2 = self;
  sub_1C83A364C();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1C83A3740();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1C83A37EC();

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C83A38B0();
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C83A3978();
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C83A3A40(v4);
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  sub_1C840CDDC();
  v7 = a3;
  v8 = self;
  v9 = sub_1C83A3CF4(v7);

  return v9 & 1;
}

@end