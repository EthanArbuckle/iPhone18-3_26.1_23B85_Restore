@interface SHSheetSuggestionAction
- (NSString)suggestionReason;
- (SHSheetSuggestionAction)initWithSuggestionReason:(id)reason;
@end

@implementation SHSheetSuggestionAction

- (SHSheetSuggestionAction)initWithSuggestionReason:(id)reason
{
  v4 = MEMORY[0x1E698E700];
  reasonCopy = reason;
  v6 = objc_alloc_init(v4);
  [v6 setObject:reasonCopy forSetting:2];

  v7 = [(SHSheetSuggestionAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (NSString)suggestionReason
{
  info = [(SHSheetSuggestionAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

@end