@interface UnitsSettingsDataProvider
- (void)didUpdateKeyValueDomain:(id)domain;
@end

@implementation UnitsSettingsDataProvider

- (void)didUpdateKeyValueDomain:(id)domain
{
  domainCopy = domain;

  specialized UnitsSettingsDataProvider.keyValueDomain(didUpdate:)();
}

@end