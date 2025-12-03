@interface SiriBluetoothDeviceSource
+ (id)bluetoothDeviceForIdentifier:(int64_t)identifier bluetoothDevice:(id)device;
- (void)activate;
- (void)deactivate;
@end

@implementation SiriBluetoothDeviceSource

+ (id)bluetoothDeviceForIdentifier:(int64_t)identifier bluetoothDevice:(id)device
{
  deviceCopy = device;
  v6 = [(SiriLongPressButtonSource *)[SiriBluetoothDeviceSource alloc] _initWithButtonIdentifier:identifier];
  v7 = [[SiriBluetoothContext alloc] initWithBluetoothDevice:deviceCopy];

  [v6 setContext:v7];
  [v6 setLongPressInterval:0.4];

  return v6;
}

- (void)activate
{
  os_unfair_lock_lock(&self->super.super._lock);
  remoteTarget = [(BSServiceConnection *)self->super.super._connection remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:[(SiriBluetoothDeviceSource *)self buttonIdentifier]];
  context = [(SiriBluetoothDeviceSource *)self context];
  [remoteTarget activationRequestFromButtonIdentifier:v4 context:context];

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)deactivate
{
  os_unfair_lock_lock(&self->super.super._lock);
  v6 = [[SiriDismissalOptions alloc] initWithDeactivationOptions:0 animated:1 dismissalReason:18];
  remoteTarget = [(BSServiceConnection *)self->super.super._connection remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:[(SiriBluetoothDeviceSource *)self buttonIdentifier]];
  context = [(SiriBluetoothDeviceSource *)self context];
  [remoteTarget deactivationRequestFromButtonIdentifier:v4 context:context options:v6];

  os_unfair_lock_unlock(&self->super.super._lock);
}

@end