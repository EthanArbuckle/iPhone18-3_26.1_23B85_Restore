@interface LNFullyQualifiedActionIdentifier(Workflow)
- (id)compositeIdentifier;
@end

@implementation LNFullyQualifiedActionIdentifier(Workflow)

- (id)compositeIdentifier
{
  v8[2] = *MEMORY[0x1E69E9840];
  bundleIdentifier = [self bundleIdentifier];
  v8[0] = bundleIdentifier;
  actionIdentifier = [self actionIdentifier];
  v8[1] = actionIdentifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v4 componentsJoinedByString:@"."];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end