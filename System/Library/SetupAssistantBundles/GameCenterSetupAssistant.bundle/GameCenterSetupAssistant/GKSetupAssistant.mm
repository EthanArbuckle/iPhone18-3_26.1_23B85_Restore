@interface GKSetupAssistant
- (id)accountSetupRequestParameters;
- (void)completeSetupWithResponseParameters:(id)parameters handler:(id)handler;
@end

@implementation GKSetupAssistant

- (id)accountSetupRequestParameters
{
  v3 = +[GKDevice currentDevice];
  udid = [v3 udid];

  _gkAuthenticatedPlayerID = [(GKSetupAssistant *)self _gkAuthenticatedPlayerID];
  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (_gkAuthenticatedPlayerID)
  {
    [v6 setObject:_gkAuthenticatedPlayerID forKey:@"player-id"];
  }

  if (udid)
  {
    [v7 setObject:udid forKey:@"device-id"];
  }

  return v7;
}

- (void)completeSetupWithResponseParameters:(id)parameters handler:(id)handler
{
  handlerCopy = handler;
  parametersCopy = parameters;
  [(GKSetupAssistant *)self setCancelled:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_D2C;
  v9[3] = &unk_4090;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(GKSetupAssistant *)self _gkSetupAccountWithParamaters:parametersCopy completionHandler:v9];
}

@end