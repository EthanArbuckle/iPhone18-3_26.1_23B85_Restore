@interface SNConnection
- (SNConnection)initWithConnectionInfo:(id)info connectionQueue:(id)queue;
- (SNConnectionDelegate)delegate;
- (id)start;
- (void)didCloseConnection:(id)connection;
- (void)didEncounterError:(id)error error:(id)a4 analysisInfo:(id)info;
- (void)didEncounterIntermediateError:(id)error error:(id)a4;
- (void)didOpenConnectionType:(id)type type:(id)a4 routeId:(id)id delay:(double)delay method:(id)method;
- (void)didReceiveAceObject:(id)object object:(id)a4;
- (void)didReceiveObject:(id)object object:(id)a4;
- (void)willStartConnection:(id)connection type:(id)type;
- (void)willStartConnection:(id)connection with:(id)with;
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

- (SNConnection)initWithConnectionInfo:(id)info connectionQueue:(id)queue
{
  infoCopy = info;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = SNConnection;
  v8 = [(SNConnection *)&v25 init];
  v9 = v8;
  if (v8)
  {
    [(SNConnection *)v8 setConnectionInfo:infoCopy];
    v10 = objc_alloc_init(SNConnectionInfoInternal);
    -[SNConnectionInfoInternal setConnectionProtocolTechnology:](v10, "setConnectionProtocolTechnology:", [infoCopy connectionProtocolTechnology]);
    assistantIdentifier = [infoCopy assistantIdentifier];
    [(SNConnectionInfoInternal *)v10 setAssistantIdentifier:assistantIdentifier];

    peerAssistantIdentifier = [infoCopy peerAssistantIdentifier];
    [(SNConnectionInfoInternal *)v10 setPeerAssistantIdentifier:peerAssistantIdentifier];

    connectionId = [infoCopy connectionId];
    [(SNConnectionInfoInternal *)v10 setConnectionId:connectionId];

    aceHost = [infoCopy aceHost];
    [(SNConnectionInfoInternal *)v10 setAceHost:aceHost];

    languageCode = [infoCopy languageCode];
    [(SNConnectionInfoInternal *)v10 setLanguageCode:languageCode];

    -[SNConnectionInfoInternal setPrefersWWAN:](v10, "setPrefersWWAN:", [infoCopy prefersWWAN]);
    -[SNConnectionInfoInternal setSkipPeer:](v10, "setSkipPeer:", [infoCopy skipPeer]);
    -[SNConnectionInfoInternal setUseWiFiHint:](v10, "setUseWiFiHint:", [infoCopy useWiFiHint]);
    skipPeerErrorReason = [infoCopy skipPeerErrorReason];
    [(SNConnectionInfoInternal *)v10 setSkipPeerErrorReason:skipPeerErrorReason];

    -[SNConnectionInfoInternal setForceReconnect:](v10, "setForceReconnect:", [infoCopy forceReconnect]);
    [infoCopy timeout];
    [(SNConnectionInfoInternal *)v10 setTimeout:?];
    -[SNConnectionInfoInternal setImposePolicyBan:](v10, "setImposePolicyBan:", [infoCopy imposePolicyBan]);
    connectionPolicy = [infoCopy connectionPolicy];
    [(SNConnectionInfoInternal *)v10 setConnectionPolicy:connectionPolicy];

    connectionPolicyRoute = [infoCopy connectionPolicyRoute];
    [(SNConnectionInfoInternal *)v10 setConnectionPolicyRoute:connectionPolicyRoute];

    -[SNConnectionInfoInternal setForceOnDeviceOnlyDictation:](v10, "setForceOnDeviceOnlyDictation:", [infoCopy isForceOnDeviceOnlyDictationEnabled]);
    peerType = [infoCopy peerType];
    [(SNConnectionInfoInternal *)v10 setPeerType:peerType];

    peerVersion = [infoCopy peerVersion];
    [(SNConnectionInfoInternal *)v10 setPeerVersion:peerVersion];

    -[SNConnectionInfoInternal setDeviceIsInWalkaboutExperimentGroup:](v10, "setDeviceIsInWalkaboutExperimentGroup:", [infoCopy deviceIsInWalkaboutExperimentGroup]);
    peerType2 = [infoCopy peerType];
    [(SNConnectionInfoInternal *)v10 setPeerType:peerType2];

    -[SNConnectionInfoInternal setUsesProxyConnection:](v10, "setUsesProxyConnection:", [infoCopy usesProxyConnection]);
    -[SNConnectionInfoInternal setUsesPeerManagedSync:](v10, "setUsesPeerManagedSync:", [infoCopy usesPeerManagedSync]);
    v22 = [[SNConnectionInternal alloc] initWithConnectionInfo:v10 connectionQueue:queueCopy];
    underlyingConnection = v9->_underlyingConnection;
    v9->_underlyingConnection = v22;

    [(SNConnectionInternal *)v9->_underlyingConnection setDelegate:v9];
  }

  return v9;
}

- (void)willStartConnection:(id)connection type:(id)type
{
  typeCopy = type;
  delegate = [connection delegate];

  if (delegate == self)
  {
    v7 = -[SNConnectionType initWithTechnology:]([SNConnectionType alloc], "initWithTechnology:", [typeCopy connectionTypeRawValue]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained willStartConnection:self type:v7];
  }
}

- (void)willStartConnection:(id)connection with:(id)with
{
  withCopy = with;
  delegate = [connection delegate];

  if (delegate == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained willStartConnection:self with:withCopy];
  }
}

- (void)didOpenConnectionType:(id)type type:(id)a4 routeId:(id)id delay:(double)delay method:(id)method
{
  v17 = a4;
  idCopy = id;
  methodCopy = method;
  delegate = [type delegate];

  if (delegate == self)
  {
    v15 = -[SNConnectionType initWithTechnology:]([SNConnectionType alloc], "initWithTechnology:", [v17 connectionTypeRawValue]);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didOpenConnectionType:self type:v15 routeId:idCopy delay:methodCopy method:delay];
  }
}

- (void)didReceiveObject:(id)object object:(id)a4
{
  v8 = a4;
  delegate = [object delegate];

  if (delegate == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveObject:self object:v8];
  }
}

- (void)didReceiveAceObject:(id)object object:(id)a4
{
  v8 = a4;
  delegate = [object delegate];

  if (delegate == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didReceiveAceObject:self object:v8];
  }
}

- (void)didCloseConnection:(id)connection
{
  delegate = [connection delegate];

  if (delegate == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didCloseConnection:self];
  }
}

- (void)didEncounterError:(id)error error:(id)a4 analysisInfo:(id)info
{
  v11 = a4;
  infoCopy = info;
  delegate = [error delegate];

  if (delegate == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didEncounterError:self error:v11 analysisInfo:infoCopy];
  }
}

- (void)didEncounterIntermediateError:(id)error error:(id)a4
{
  v8 = a4;
  delegate = [error delegate];

  if (delegate == self)
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