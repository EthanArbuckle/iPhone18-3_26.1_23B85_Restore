@interface SiriBluetoothKeyboardActivationSource
- (void)activateFromSource:(int64_t)source;
@end

@implementation SiriBluetoothKeyboardActivationSource

- (void)activateFromSource:(int64_t)source
{
  os_unfair_lock_lock(&self->super.super._lock);
  remoteTarget = [(BSServiceConnection *)self->super.super._connection remoteTarget];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:source];
  [remoteTarget activationRequestFromBluetoothKeyboardActivation:v6];

  os_unfair_lock_unlock(&self->super.super._lock);
}

@end