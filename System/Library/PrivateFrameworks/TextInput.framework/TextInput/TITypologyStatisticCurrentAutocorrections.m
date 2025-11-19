@interface TITypologyStatisticCurrentAutocorrections
- (void)visitRecordAutocorrections:(id)a3;
@end

@implementation TITypologyStatisticCurrentAutocorrections

- (void)visitRecordAutocorrections:(id)a3
{
  v4 = a3;
  v5 = [v4 autocorrections];
  [(TITypologyStatisticCurrentAutocorrections *)self setAutocorrections:v5];

  v6 = [v4 requestToken];

  [(TITypologyStatisticCurrentAutocorrections *)self setRequestToken:v6];
}

@end