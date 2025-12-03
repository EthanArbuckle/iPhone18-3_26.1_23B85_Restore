@interface STAskForTimeWebsiteResource
- (STAskForTimeWebsiteResource)initWithWebsiteDomain:(id)domain changeHandler:(id)handler;
@end

@implementation STAskForTimeWebsiteResource

- (STAskForTimeWebsiteResource)initWithWebsiteDomain:(id)domain changeHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = STAskForTimeWebsiteResource;
  return [(STAskForTimeResource *)&v5 initWithResourceIdentifier:domain resourceDisplayName:domain usageType:1 changeHandler:handler];
}

@end