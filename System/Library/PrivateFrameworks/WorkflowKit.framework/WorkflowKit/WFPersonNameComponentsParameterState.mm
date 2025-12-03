@interface WFPersonNameComponentsParameterState
+ (id)serializedRepresentationFromValue:(id)value;
@end

@implementation WFPersonNameComponentsParameterState

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPersonNameComponentsParameterState.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[NSPersonNameComponents class]]"}];
  }

  serializedRepresentation = [valueCopy serializedRepresentation];

  return serializedRepresentation;
}

@end