@interface GKSetupAssistant
- (id)accountSetupRequestParameters;
- (void)completeSetupWithResponseParameters:(id)a3 handler:(id)a4;
@end

@implementation GKSetupAssistant

- (id)accountSetupRequestParameters
{
  v3 = +[GKDevice currentDevice];
  v4 = [v3 udid];

  v5 = [(GKSetupAssistant *)self _gkAuthenticatedPlayerID];
  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (v5)
  {
    [v6 setObject:v5 forKey:@"player-id"];
  }

  if (v4)
  {
    [v7 setObject:v4 forKey:@"device-id"];
  }

  return v7;
}

- (void)completeSetupWithResponseParameters:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GKSetupAssistant *)self setCancelled:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_D2C;
  v9[3] = &unk_4090;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(GKSetupAssistant *)self _gkSetupAccountWithParamaters:v7 completionHandler:v9];
}

@end