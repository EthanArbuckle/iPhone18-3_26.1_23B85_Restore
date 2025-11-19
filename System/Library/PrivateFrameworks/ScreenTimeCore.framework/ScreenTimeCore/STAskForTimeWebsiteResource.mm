@interface STAskForTimeWebsiteResource
- (STAskForTimeWebsiteResource)initWithWebsiteDomain:(id)a3 changeHandler:(id)a4;
@end

@implementation STAskForTimeWebsiteResource

- (STAskForTimeWebsiteResource)initWithWebsiteDomain:(id)a3 changeHandler:(id)a4
{
  v5.receiver = self;
  v5.super_class = STAskForTimeWebsiteResource;
  return [(STAskForTimeResource *)&v5 initWithResourceIdentifier:a3 resourceDisplayName:a3 usageType:1 changeHandler:a4];
}

@end