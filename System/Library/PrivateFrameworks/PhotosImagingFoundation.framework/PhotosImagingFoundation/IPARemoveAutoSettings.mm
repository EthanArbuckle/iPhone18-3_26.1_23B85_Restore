@interface IPARemoveAutoSettings
- (IPARemoveAutoSettings)init;
- (IPARemoveAutoSettings)initWithIdentifier:(id)identifier;
@end

@implementation IPARemoveAutoSettings

- (IPARemoveAutoSettings)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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