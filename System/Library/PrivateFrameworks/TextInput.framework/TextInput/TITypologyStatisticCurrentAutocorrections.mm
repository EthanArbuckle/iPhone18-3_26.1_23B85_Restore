@interface TITypologyStatisticCurrentAutocorrections
- (void)visitRecordAutocorrections:(id)autocorrections;
@end

@implementation TITypologyStatisticCurrentAutocorrections

- (void)visitRecordAutocorrections:(id)autocorrections
{
  autocorrectionsCopy = autocorrections;
  autocorrections = [autocorrectionsCopy autocorrections];
  [(TITypologyStatisticCurrentAutocorrections *)self setAutocorrections:autocorrections];

  requestToken = [autocorrectionsCopy requestToken];

  [(TITypologyStatisticCurrentAutocorrections *)self setRequestToken:requestToken];
}

@end