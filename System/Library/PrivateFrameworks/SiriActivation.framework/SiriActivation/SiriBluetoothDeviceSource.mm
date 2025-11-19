@interface SiriBluetoothDeviceSource
+ (id)bluetoothDeviceForIdentifier:(int64_t)a3 bluetoothDevice:(id)a4;
- (void)activate;
- (void)deactivate;
@end

@implementation SiriBluetoothDeviceSource

+ (id)bluetoothDeviceForIdentifier:(int64_t)a3 bluetoothDevice:(id)a4
{
  v5 = a4;
  v6 = [(SiriLongPressButtonSource *)[SiriBluetoothDeviceSource alloc] _initWithButtonIdentifier:a3];
  v7 = [[SiriBluetoothContext alloc] initWithBluetoothDevice:v5];

  [v6 setContext:v7];
  [v6 setLongPressInterval:0.4];

  return v6;
}

- (void)activate
{
  os_unfair_lock_lock(&self->super.super._lock);
  v3 = [(BSServiceConnection *)self->super.super._connection remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:[(SiriBluetoothDeviceSource *)self buttonIdentifier]];
  v5 = [(SiriBluetoothDeviceSource *)self context];
  [v3 activationRequestFromButtonIdentifier:v4 context:v5];

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (void)deactivate
{
  os_unfair_lock_lock(&self->super.super._lock);
  v6 = [[SiriDismissalOptions alloc] initWithDeactivationOptions:0 animated:1 dismissalReason:18];
  v3 = [(BSServiceConnection *)self->super.super._connection remoteTarget];
  v4 = [[SASButtonIdentifierTransport alloc] initWithSiriButtonIdentifier:[(SiriBluetoothDeviceSource *)self buttonIdentifier]];
  v5 = [(SiriBluetoothDeviceSource *)self context];
  [v3 deactivationRequestFromButtonIdentifier:v4 context:v5 options:v6];

  os_unfair_lock_unlock(&self->super.super._lock);
}

@end