@interface QLPreviewProvider
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation QLPreviewProvider

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2873E5DF8])
  {
    [v4 setPreviewProvider:self];
  }
}

@end