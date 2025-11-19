@interface UIPrintServiceExtensionContextHost
- (UIPrintServiceExtensionContextHost)init;
@end

@implementation UIPrintServiceExtensionContextHost

- (UIPrintServiceExtensionContextHost)init
{
  v3.receiver = self;
  v3.super_class = UIPrintServiceExtensionContextHost;
  return [(UIPrintServiceExtensionContextHost *)&v3 init];
}

@end