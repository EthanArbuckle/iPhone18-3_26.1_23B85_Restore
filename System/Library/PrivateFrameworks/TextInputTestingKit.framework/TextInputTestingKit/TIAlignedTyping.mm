@interface TIAlignedTyping
- (BOOL)isAutocompleteTriggerForPreviousEntry;
- (BOOL)isRevisedAutocompleteEntry;
@end

@implementation TIAlignedTyping

- (BOOL)isRevisedAutocompleteEntry
{
  touched = [(TIAlignedTyping *)self touched];
  if ([touched containsObject:@"<Autocorrect>"])
  {
    v4 = ![(TIAlignedTyping *)self isAutocompleteTriggerForPreviousEntry];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isAutocompleteTriggerForPreviousEntry
{
  touched = [(TIAlignedTyping *)self touched];
  lastObject = [touched lastObject];
  v4 = [lastObject isEqualToString:@"<Autocorrect>"];

  return v4;
}

@end