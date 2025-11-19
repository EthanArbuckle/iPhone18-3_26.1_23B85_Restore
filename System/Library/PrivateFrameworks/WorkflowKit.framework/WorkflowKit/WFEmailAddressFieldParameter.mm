@interface WFEmailAddressFieldParameter
- (id)supportedContactProperties;
@end

@implementation WFEmailAddressFieldParameter

- (id)supportedContactProperties
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"Email";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end