@interface IPARemoveAutoSettings
- (IPARemoveAutoSettings)init;
- (IPARemoveAutoSettings)initWithIdentifier:(id)a3;
@end

@implementation IPARemoveAutoSettings

- (IPARemoveAutoSettings)initWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  return [(IPARemoveAutoSettings *)v5 init];
}

- (IPARemoveAutoSettings)init
{
  v3.receiver = self;
  v3.super_class = IPARemoveAutoSettings;
  return [(IPAAutoSettings *)&v3 initWithIdentifier:@"remove"];
}

@end