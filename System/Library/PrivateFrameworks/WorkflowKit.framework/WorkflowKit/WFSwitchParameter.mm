@interface WFSwitchParameter
- (NSString)localizedOffDisplayName;
- (NSString)localizedOnDisplayName;
@end

@implementation WFSwitchParameter

- (NSString)localizedOffDisplayName
{
  defaultContext = [MEMORY[0x1E69E0BE0] defaultContext];
  v4 = [(WFParameter *)self _localizedStringForKey:@"OffDisplayName" context:defaultContext];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[WFSwitchParameter defaultLocalizedOffDisplayName];
  }

  v6 = v5;

  return v6;
}

- (NSString)localizedOnDisplayName
{
  defaultContext = [MEMORY[0x1E69E0BE0] defaultContext];
  v4 = [(WFParameter *)self _localizedStringForKey:@"OnDisplayName" context:defaultContext];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[WFSwitchParameter defaultLocalizedOnDisplayName];
  }

  v6 = v5;

  return v6;
}

@end