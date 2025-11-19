@interface WFEmailAddressSubstitutableState
- (id)valueItemClasses;
@end

@implementation WFEmailAddressSubstitutableState

- (id)valueItemClasses
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end