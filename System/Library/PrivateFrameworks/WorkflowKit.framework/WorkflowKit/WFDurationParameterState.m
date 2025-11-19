@interface WFDurationParameterState
+ (id)serializedRepresentationFromValue:(id)a3;
@end

@implementation WFDurationParameterState

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFDurationParameterState.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[LNDurationBridge class]]"}];
  }

  v6 = [v5 serializedRepresentation];

  return v6;
}

@end