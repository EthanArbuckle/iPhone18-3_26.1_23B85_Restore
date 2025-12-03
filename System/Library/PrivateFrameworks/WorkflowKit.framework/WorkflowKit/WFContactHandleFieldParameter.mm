@interface WFContactHandleFieldParameter
- (id)supportedContactProperties;
- (void)setAllowsCustomHandles:(BOOL)handles;
@end

@implementation WFContactHandleFieldParameter

- (void)setAllowsCustomHandles:(BOOL)handles
{
  if (self->super._allowsCustomHandles != handles)
  {
    self->super._allowsCustomHandles = handles;
    [(WFParameter *)self attributesDidChange];
  }
}

- (id)supportedContactProperties
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"Email";
  v5[1] = @"Phone";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end