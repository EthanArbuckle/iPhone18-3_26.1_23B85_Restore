@interface WiFiP2PTrafficRegistrationReservation
- (id)initForService:(id)a3;
- (id)trafficRegistrationConfiguration;
- (void)activateWithCompletion:(id)a3;
- (void)handleConnectionEstablishedWithProxy:(id)a3;
- (void)invalidate;
@end

@implementation WiFiP2PTrafficRegistrationReservation

- (id)initForService:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WiFiP2PTrafficRegistrationReservation;
  v5 = [(WiFiP2PTrafficRegistrationReservation *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    service = v5->_service;
    v5->_service = v6;

    v5->_showsUIAlertOnError = 0;
    v5->_enabledCount = 0;
    v8 = [WiFiP2PXPCConnection alloc];
    v9 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v10 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.TrafficRegistrationReservation", 0, v9);
    v11 = [(WiFiP2PXPCConnection *)v8 initWithEndpointType:0 queue:v10 retryTimeout:+[WiFiP2PXPCConnection defaultRetryTimeout]];
    xpcConnection = v5->_xpcConnection;
    v5->_xpcConnection = v11;

    [(WiFiP2PXPCConnection *)v5->_xpcConnection setDelegate:v5];
  }

  return v5;
}

- (id)trafficRegistrationConfiguration
{
  v3 = [AWDLTrafficRegistrationConfiguration alloc];
  v4 = [(WiFiP2PTrafficRegistrationReservation *)self service];
  v5 = +[WiFiMACAddress zeroAddress];
  v6 = [(AWDLTrafficRegistrationConfiguration *)v3 initWithUniqueIdentifier:v4 peerAddress:v5];

  if ([(WiFiP2PTrafficRegistrationReservation *)self showsUIAlertOnError])
  {
    [(AWDLTrafficRegistrationConfiguration *)v6 setOptions:[(AWDLTrafficRegistrationConfiguration *)v6 options]| 4];
  }

  return v6;
}

- (void)handleConnectionEstablishedWithProxy:(id)a3
{
  v6 = a3;
  if (self->_enabledCount)
  {
    v4 = 0;
    do
    {
      v5 = [(WiFiP2PTrafficRegistrationReservation *)self trafficRegistrationConfiguration];
      [v6 reserveTrafficRegistrationsForConfiguration:v5 enabled:1 completionHandler:&__block_literal_global_200];

      ++v4;
    }

    while (v4 < self->_enabledCount);
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WiFiP2PTrafficRegistrationReservation *)self trafficRegistrationConfiguration];
  xpcConnection = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__WiFiP2PTrafficRegistrationReservation_activateWithCompletion___block_invoke;
  v11[3] = &unk_2787AB780;
  v11[4] = self;
  v12 = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__WiFiP2PTrafficRegistrationReservation_activateWithCompletion___block_invoke_2;
  v9[3] = &unk_2787AB7A8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  v8 = v5;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v11 clientErrorHandler:v9];
}

uint64_t __64__WiFiP2PTrafficRegistrationReservation_activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    --*(*(a1 + 32) + 16);
    v3 = *(a1 + 32);
    if (!*(v3 + 16))
    {
      [*(v3 + 8) stop];
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)invalidate
{
  v3 = [(WiFiP2PTrafficRegistrationReservation *)self trafficRegistrationConfiguration];
  xpcConnection = self->_xpcConnection;
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__WiFiP2PTrafficRegistrationReservation_invalidate__block_invoke;
  v7[3] = &unk_2787AB780;
  v7[4] = self;
  v8 = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__WiFiP2PTrafficRegistrationReservation_invalidate__block_invoke_2;
  v6[3] = &unk_2787AB7D0;
  v5 = v3;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v7 clientErrorHandler:v6];
}

void __51__WiFiP2PTrafficRegistrationReservation_invalidate__block_invoke(uint64_t a1, void *a2, void (**a3)(void))
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    *(v4 + 16) = v5 - 1;
    v7 = *(a1 + 40);
    v10 = a3;
    [a2 reserveTrafficRegistrationsForConfiguration:v7 enabled:0 completionHandler:?];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = a3;
    v10 = [v8 errorWithDomain:@"com.apple.wifip2pd" code:2 userInfo:0];
    a3[2](v9);
  }
}

uint64_t __51__WiFiP2PTrafficRegistrationReservation_invalidate__block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 16))
  {
    return [*(v1 + 8) stop];
  }

  return result;
}

@end