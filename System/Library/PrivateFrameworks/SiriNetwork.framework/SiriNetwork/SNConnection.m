@interface SNConnection
- (SNConnection)initWithConnectionInfo:(id)a3 connectionQueue:(id)a4;
- (SNConnectionDelegate)delegate;
- (id)start;
- (void)didCloseConnection:(id)a3;
- (void)didEncounterError:(id)a3 error:(id)a4 analysisInfo:(id)a5;
- (void)didEncounterIntermediateError:(id)a3 error:(id)a4;
- (void)didOpenConnectionType:(id)a3 type:(id)a4 routeId:(id)a5 delay:(double)a6 method:(id)a7;
- (void)didReceiveAceObject:(id)a3 object:(id)a4;
- (void)didReceiveObject:(id)a3 object:(id)a4;
- (void)willStartConnection:(id)a3 type:(id)a4;
- (void)willStartConnection:(id)a3 with:(id)a4;
@end

@implementation SNConnection

- (id)start
{
  underlyingConnection = self->_underlyingConnection;
  v5 = 0;
  [(SNConnectionInternal *)underlyingConnection startAndReturnError:&v5];
  v3 = v5;

  return v3;
}

- (SNConnection)initWithConnectionInfo:(id)a3 connectionQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = SNConnection;
  v8 = [(SNConnection *)&v25 init];
  v9 = v8;
  if (v8)
  {
    [(SNConnection *)v8 setConnectionInfo:v6];
    v10 = objc_alloc_init(SNConnectionInfoInternal);
    -[SNConnectionInfoInternal setConnectionProtocolTechnology:](v10, "setConnectionProtocolTechnology:", [v6 connectionProtocolTechnology]);
    v11 = [v6 assistantIdentifier];
    [(SNConnectionInfoInternal *)v10 setAssistantIdentifier:v11];

    v12 = [v6 peerAssistantIdentifier];
    [(SNConnectionInfoInternal *)v10 setPeerAssistantIdentifier:v12];

    v13 = [v6 connectionId];
    [(SNConnectionInfoInternal *)v10 setConnectionId:v13];

    v14 = [v6 aceHost];
    [(SNConnectionInfoInternal *)v10 setAceHost:v14];

    v15 = [v6 languageCode];
    [(SNConnectionInfoInternal *)v10 setLanguageCode:v15];

    -[SNConnectionInfoInternal setPrefersWWAN:](v10, "setPrefersWWAN:", [v6 prefersWWAN]);
    -[SNConnectionInfoInternal setSkipPeer:](v10, "setSkipPeer:", [v6 skipPeer]);
    -[SNConnectionInfoInternal setUseWiFiHint:](v10, "setUseWiFiHint:", [v6 useWiFiHint]);
    v16 = [v6 skipPeerErrorReason];
    [(SNConnectionInfoInternal *)v10 setSkipPeerErrorReason:v16];

    -[SNConnectionInfoInternal setForceReconnect:](v10, "setForceReconnect:", [v6 forceReconnect]);
    [v6 timeout];
    [(SNConnectionInfoInternal *)v10 setTimeout:?];
    -[SNConnectionInfoInternal setImposePolicyBan:](v10, "setImposePolicyBan:", [v6 imposePolicyBan]);
    v17 = [v6 connectionPolicy];
    [(SNConnectionInfoInternal *)v10 setConnectionPolicy:v17];

    v18 = [v6 connectionPolicyRoute];
    [(SNConnectionInfoInternal *)v10 setConnectionPolicyRoute:v18];

    -[SNConnectionInfoInternal setForceOnDeviceOnlyDictation:](v10, "setForceOnDeviceOnlyDictation:", [v6 isForceOnDeviceOnlyDictationEnabled]);
    v19 = [v6 peerType];
    [(SNConnectionInfoInternal *)v10 setPeerType:v19];

    v20 = [v6 peerVersion];
    [(SNConnectionInfoInternal *)v10 setPeerVersion:v20];

    -[SNConnectionInfoInternal setDeviceIsInWalkaboutExperimentGroup:](v10, "setDeviceIsInWalkaboutExperimentGroup:", [v6 deviceIsInWalkaboutExperimentGroup]);
    v21 = [v6 peerType];
    [(SNConnectionInfoInternal *)v10 setPeerType:v21];

    -[SNConnectionInfoInternal setUsesProxyConnection:](v10, "setUsesProxyConnection:", [v6 usesProxyConnection]);
    -[SNConnectionInfoInternal setUsesPeerManagedSync:](v10, "setUsesPeerManagedSync:", [v6 usesPeerManagedSync]);
    v22 = [[SNConnectionInternal alloc] initWithConnectionInfo:v10 connectionQueue:v7];
    underlyingConnection = v9->_underlyingConnection;
    v9->_underlyingConnection = v22;

    [(SNConnectionInternal *)v9->_underlyingConnection setDelegate:v9];
  }

  return v9;
}

- (void)willStartConnection:(id)a3 type:(id)a4
{
  v9 = a4;
  v6 = [a3 delegate];

  if (v6 == self)
  {
    v7 = -[SNConnectionType initWithTechnology:]([SNConnectionType alloc], "initWithTechnology:", [v9 connectionTypeRawValue]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained willStartConnection:self type:v7];
  }
}

- (void)willStartConnection:(id)a3 with:(id)a4
{
  v8 = a4;
  v6 = [a3 delegate];

  if (v6 == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained willStartConnection:self with:v8];
  }
}

- (void)didOpenConnectionType:(id)a3 type:(id)a4 routeId:(id)a5 delay:(double)a6 method:(id)a7
{
  v17 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [a3 delegate];

  if (v14 == self)
  {
    v15 = -[SNConnectionType initWithTechnology:]([SNConnectionType alloc], "initWithTechnology:", [v17 connectionTypeRawValue]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didOpenConnectionType:self type:v15 routeId:v12 delay:v13 method:a6];
  }
}

- (void)didReceiveObject:(id)a3 object:(id)a4
{
  v8 = a4;
  v6 = [a3 delegate];

  if (v6 == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveObject:self object:v8];
  }
}

- (void)didReceiveAceObject:(id)a3 object:(id)a4
{
  v8 = a4;
  v6 = [a3 delegate];

  if (v6 == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveAceObject:self object:v8];
  }
}

- (void)didCloseConnection:(id)a3
{
  v4 = [a3 delegate];

  if (v4 == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didCloseConnection:self];
  }
}

- (void)didEncounterError:(id)a3 error:(id)a4 analysisInfo:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [a3 delegate];

  if (v9 == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didEncounterError:self error:v11 analysisInfo:v8];
  }
}

- (void)didEncounterIntermediateError:(id)a3 error:(id)a4
{
  v8 = a4;
  v6 = [a3 delegate];

  if (v6 == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didEncounterIntermediateError:self error:v8];
  }
}

- (SNConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end