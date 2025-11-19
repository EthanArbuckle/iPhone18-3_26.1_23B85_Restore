@interface SiriBluetoothKeyboardActivationSource
- (void)activateFromSource:(int64_t)a3;
@end

@implementation SiriBluetoothKeyboardActivationSource

- (void)activateFromSource:(int64_t)a3
{
  os_unfair_lock_lock(&self->super.super._lock);
  v5 = [(BSServiceConnection *)self->super.super._connection remoteTarget];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 activationRequestFromBluetoothKeyboardActivation:v6];

  os_unfair_lock_unlock(&self->super.super._lock);
}

@end