@interface STToolSupportServerDataFetcher
- (id)serverDataForDomains:(id)domains preferredLocalizations:(id)localizations;
@end

@implementation STToolSupportServerDataFetcher

- (id)serverDataForDomains:(id)domains preferredLocalizations:(id)localizations
{
  localizationsCopy = localizations;
  domainsCopy = domains;
  v7 = +[STStatusDomainXPCServerHandle sharedMachServiceServerHandle];
  v8 = [v7 serverDataForDomains:domainsCopy preferredLocalizations:localizationsCopy];

  return v8;
}

@end