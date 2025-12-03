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
  environmentPreferences = [(ACMHTTPHandler *)self environmentPreferences];

  return [environmentPreferences iForgotURL];
}

- (id)serverHosts
{
  environmentPreferences = [(ACMHTTPHandler *)self environmentPreferences];

  return [environmentPreferences serverHosts];
}

- (id)serverAttemptsDelays
{
  environmentPreferences = [(ACMHTTPHandler *)self environmentPreferences];

  return [environmentPreferences serverAttemptsDelays];
}

@end