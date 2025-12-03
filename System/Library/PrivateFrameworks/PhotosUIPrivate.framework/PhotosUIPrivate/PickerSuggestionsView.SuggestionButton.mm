@interface PickerSuggestionsView.SuggestionButton
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation PickerSuggestionsView.SuggestionButton

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_1B3710718(0, &qword_1EB853590);
  sub_1B37806A4();
  v6 = sub_1B3C9C988();
  eventCopy = event;
  selfCopy = self;
  sub_1B377ED7C(v6, event);
}

@end