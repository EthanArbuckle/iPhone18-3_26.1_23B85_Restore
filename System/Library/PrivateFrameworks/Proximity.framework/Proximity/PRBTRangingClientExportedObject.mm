@interface PRBTRangingClientExportedObject
- (PRBTRangingClientExportedObject)initWithRangingClient:(id)client;
- (PRBTRangingClientProtocol)rangingClient;
- (void)didConnectDevice:(id)device error:(id)error;
- (void)didFailWithError:(id)error;
- (void)didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error;
- (void)didReceiveNewBTRSSI:(id)i;
- (void)didStartRangingOnDevice:(id)device withError:(id)error;
- (void)didStopOwnerRangingOnDevice:(id)device withError:(id)error;
@end

@implementation PRBTRangingClientExportedObject

- (PRBTRangingClientExportedObject)initWithRangingClient:(id)client
{
  clientCopy = client;
  v8.receiver = self;
  v8.super_class = PRBTRangingClientExportedObject;
  v5 = [(PRBTRangingClientExportedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_rangingClient, clientCopy);
  }

  return v6;
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didFailWithError:errorCopy];
}

- (void)didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  powerCopy = power;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didFetchTxPower:powerCopy fromDevice:deviceCopy withError:errorCopy];
}

- (void)didConnectDevice:(id)device error:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didConnectDevice:deviceCopy error:errorCopy];
}

- (void)didStartRangingOnDevice:(id)device withError:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didStartRangingOnDevice:deviceCopy withError:errorCopy];
}

- (void)didStopOwnerRangingOnDevice:(id)device withError:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didStopOwnerRangingOnDevice:deviceCopy withError:errorCopy];
}

- (void)didReceiveNewBTRSSI:(id)i
{
  iCopy = i;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didReceiveNewBTRSSI:iCopy];
}

- (PRBTRangingClientProtocol)rangingClient
{
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);

  return WeakRetained;
}

@end