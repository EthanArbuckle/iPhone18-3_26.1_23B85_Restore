@interface WFAction
- (id)configurableParameters;
@end

@implementation WFAction

- (id)configurableParameters
{
  v2 = [(WFAction *)self visibleParametersWithProcessing:1];
  v3 = [v2 if_objectsPassingTest:&stru_10002D880];

  return v3;
}

@end