@interface PUPickerSuggestionsView
- (CGSize)intrinsicContentSize;
- (PUPickerSuggestion)selectedSuggestion;
- (PUPickerSuggestionsViewDelegate)delegate;
- (void)clearFilterableSuggestion;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)setNeedsRTLInitialOffsetCorrection;
- (void)setSelectedSuggestion:(id)suggestion;
@end

@implementation PUPickerSuggestionsView

- (PUPickerSuggestionsViewDelegate)delegate
{
  v2 = sub_1B377E2B4();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B377E324();
}

- (PUPickerSuggestion)selectedSuggestion
{
  v2 = sub_1B377E3A0();

  return v2;
}

- (void)setSelectedSuggestion:(id)suggestion
{
  swift_getObjectType();
  suggestionCopy = suggestion;
  selfCopy = self;
  sub_1B37807BC(suggestionCopy, selfCopy);
}

- (void)clearFilterableSuggestion
{
  selfCopy = self;
  sub_1B377E4B0();
}

- (void)setNeedsRTLInitialOffsetCorrection
{
  selfCopy = self;
  sub_1B377E59C();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1B377EBD8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B377ECFC();
}

@end