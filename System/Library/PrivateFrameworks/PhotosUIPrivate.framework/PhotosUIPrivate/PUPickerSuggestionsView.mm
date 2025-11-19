@interface PUPickerSuggestionsView
- (CGSize)intrinsicContentSize;
- (PUPickerSuggestion)selectedSuggestion;
- (PUPickerSuggestionsViewDelegate)delegate;
- (void)clearFilterableSuggestion;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)setNeedsRTLInitialOffsetCorrection;
- (void)setSelectedSuggestion:(id)a3;
@end

@implementation PUPickerSuggestionsView

- (PUPickerSuggestionsViewDelegate)delegate
{
  v2 = sub_1B377E2B4();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B377E324();
}

- (PUPickerSuggestion)selectedSuggestion
{
  v2 = sub_1B377E3A0();

  return v2;
}

- (void)setSelectedSuggestion:(id)a3
{
  swift_getObjectType();
  v5 = a3;
  v6 = self;
  sub_1B37807BC(v5, v6);
}

- (void)clearFilterableSuggestion
{
  v2 = self;
  sub_1B377E4B0();
}

- (void)setNeedsRTLInitialOffsetCorrection
{
  v2 = self;
  sub_1B377E59C();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1B377EBAC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutMarginsDidChange
{
  v2 = self;
  sub_1B377EBD8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1B377ECFC();
}

@end