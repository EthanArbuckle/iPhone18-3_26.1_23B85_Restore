@interface SHSheetSuggestionAction
- (NSString)suggestionReason;
- (SHSheetSuggestionAction)initWithSuggestionReason:(id)a3;
@end

@implementation SHSheetSuggestionAction

- (SHSheetSuggestionAction)initWithSuggestionReason:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:2];

  v7 = [(SHSheetSuggestionAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (NSString)suggestionReason
{
  v2 = [(SHSheetSuggestionAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

@end