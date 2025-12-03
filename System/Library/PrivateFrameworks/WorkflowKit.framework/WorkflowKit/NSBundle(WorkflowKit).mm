@interface NSBundle(WorkflowKit)
- (uint64_t)wf_isFocusConfigurationExtensionBundle;
- (uint64_t)wf_isWidgetConfigurationExtensionBundle;
@end

@implementation NSBundle(WorkflowKit)

- (uint64_t)wf_isFocusConfigurationExtensionBundle
{
  bundleIdentifier = [self bundleIdentifier];
  if ([bundleIdentifier isEqualToString:*MEMORY[0x1E69E0F20]])
  {
    v3 = 1;
  }

  else
  {
    bundleIdentifier2 = [self bundleIdentifier];
    v3 = [bundleIdentifier2 isEqualToString:*MEMORY[0x1E69E0F28]];
  }

  return v3;
}

- (uint64_t)wf_isWidgetConfigurationExtensionBundle
{
  bundleIdentifier = [self bundleIdentifier];
  v2 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69E0F58]];

  return v2;
}

@end