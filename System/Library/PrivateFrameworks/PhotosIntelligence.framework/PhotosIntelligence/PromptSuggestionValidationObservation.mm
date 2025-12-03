@interface PromptSuggestionValidationObservation
- (void)photoLibraryDidChange:(id)change;
@end

@implementation PromptSuggestionValidationObservation

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1C737F884();
}

@end