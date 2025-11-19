@interface SXConditionValidationContextFactory
- (id)createContextWithLayoutOptions:(id)a3 experiment:(id)a4;
@end

@implementation SXConditionValidationContextFactory

- (id)createContextWithLayoutOptions:(id)a3 experiment:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SXConditionValidationContext alloc] initWithLayoutOptions:v6 experiment:v5];

  return v7;
}

@end