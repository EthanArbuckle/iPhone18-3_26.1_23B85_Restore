@interface ACMHTTPHandler
- (id)environmentPreferences;
- (id)iForgotURL;
- (id)serverAttemptsDelays;
- (id)serverHosts;
@end

@implementation ACMHTTPHandler

- (id)environmentPreferences
{
  v3 = [-[ACMHTTPHandler components](self "components")];
  v4 = [-[ACCAuthContextProtocol principal](-[ACCHTTPHandler context](self "context")];

  return [v3 environmentPreferencesWithRealm:v4];
}

- (id)iForgotURL
{
  v2 = [(ACMHTTPHandler *)self environmentPreferences];

  return [v2 iForgotURL];
}

- (id)serverHosts
{
  v2 = [(ACMHTTPHandler *)self environmentPreferences];

  return [v2 serverHosts];
}

- (id)serverAttemptsDelays
{
  v2 = [(ACMHTTPHandler *)self environmentPreferences];

  return [v2 serverAttemptsDelays];
}

@end