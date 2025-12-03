@interface SXConditionValidationContextFactory
- (id)createContextWithLayoutOptions:(id)options experiment:(id)experiment;
@end

@implementation SXConditionValidationContextFactory

- (id)createContextWithLayoutOptions:(id)options experiment:(id)experiment
{
  experimentCopy = experiment;
  optionsCopy = options;
  v7 = [[SXConditionValidationContext alloc] initWithLayoutOptions:optionsCopy experiment:experimentCopy];

  return v7;
}

@end