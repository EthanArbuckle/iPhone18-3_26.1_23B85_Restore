@interface WFConditionalSubjectParameter
- (id)defaultSupportedVariableTypes;
- (id)disallowedVariableTypes;
@end

@implementation WFConditionalSubjectParameter

- (id)disallowedVariableTypes
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Ask", 0}];

  return v2;
}

- (id)defaultSupportedVariableTypes
{
  v2 = objc_opt_class();

  return [v2 allInsertableVariableTypes];
}

@end