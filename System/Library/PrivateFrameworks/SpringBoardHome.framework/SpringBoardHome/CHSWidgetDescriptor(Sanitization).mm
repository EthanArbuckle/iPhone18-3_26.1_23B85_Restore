@interface CHSWidgetDescriptor(Sanitization)
- (SBHSpecialWidgetDescriptor)sanitizedDescriptor;
@end

@implementation CHSWidgetDescriptor(Sanitization)

- (SBHSpecialWidgetDescriptor)sanitizedDescriptor
{
  extensionBundleIdentifier = [self extensionBundleIdentifier];
  if ([extensionBundleIdentifier length])
  {

LABEL_4:
    selfCopy = self;
    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  kind = [self kind];
  v7 = SBHSpecialWidgetDescriptorTypeForKind(kind);

  selfCopy = [[SBHSpecialWidgetDescriptor alloc] initWithType:v7];
LABEL_5:

  return selfCopy;
}

@end