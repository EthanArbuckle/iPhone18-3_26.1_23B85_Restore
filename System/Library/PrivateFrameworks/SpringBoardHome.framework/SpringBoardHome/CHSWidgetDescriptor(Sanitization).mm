@interface CHSWidgetDescriptor(Sanitization)
- (SBHSpecialWidgetDescriptor)sanitizedDescriptor;
@end

@implementation CHSWidgetDescriptor(Sanitization)

- (SBHSpecialWidgetDescriptor)sanitizedDescriptor
{
  v2 = [a1 extensionBundleIdentifier];
  if ([v2 length])
  {

LABEL_4:
    v4 = a1;
    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v6 = [a1 kind];
  v7 = SBHSpecialWidgetDescriptorTypeForKind(v6);

  v4 = [[SBHSpecialWidgetDescriptor alloc] initWithType:v7];
LABEL_5:

  return v4;
}

@end