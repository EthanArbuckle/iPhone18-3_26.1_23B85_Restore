@interface STToolSupportServerDataFetcher
- (id)serverDataForDomains:(id)a3 preferredLocalizations:(id)a4;
@end

@implementation STToolSupportServerDataFetcher

- (id)serverDataForDomains:(id)a3 preferredLocalizations:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[STStatusDomainXPCServerHandle sharedMachServiceServerHandle];
  v8 = [v7 serverDataForDomains:v6 preferredLocalizations:v5];

  return v8;
}

@end