@interface QLPreviewProvider
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation QLPreviewProvider

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  if ([contextCopy conformsToProtocol:&unk_2873E5DF8])
  {
    [contextCopy setPreviewProvider:self];
  }
}

@end