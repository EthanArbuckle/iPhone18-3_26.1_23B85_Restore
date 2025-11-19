@interface TIAlignedTyping
- (BOOL)isAutocompleteTriggerForPreviousEntry;
- (BOOL)isRevisedAutocompleteEntry;
@end

@implementation TIAlignedTyping

- (BOOL)isRevisedAutocompleteEntry
{
  v3 = [(TIAlignedTyping *)self touched];
  if ([v3 containsObject:@"<Autocorrect>"])
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
  v2 = [(TIAlignedTyping *)self touched];
  v3 = [v2 lastObject];
  v4 = [v3 isEqualToString:@"<Autocorrect>"];

  return v4;
}

@end