@interface WFLinkClockToggleAlarmAction
- (id)overrideDefaultValuesByParameter;
@end

@implementation WFLinkClockToggleAlarmAction

- (id)overrideDefaultValuesByParameter
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"OpenWhenRun";
  v6[0] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end