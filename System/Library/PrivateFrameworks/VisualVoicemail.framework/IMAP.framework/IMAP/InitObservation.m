@interface InitObservation
@end

@implementation InitObservation

void ___InitObservation_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.message.MFContentProtectionObserver", 0);
  v1 = _observationQueue;
  _observationQueue = v0;

  v2 = _observationQueue;

  dispatch_async(v2, &__block_literal_global_53);
}

uint64_t ___InitObservation_block_invoke_2()
{
  if (MKBDeviceFormattedForContentProtection())
  {
    out_token = 0;
    notify_register_dispatch(*MEMORY[0x277D28B30], &out_token, _observationQueue, &__block_literal_global_56);
    _beganObservingTime = CFAbsoluteTimeGetCurrent();
  }

  result = _KeyBagLockState();
  _contentProtectionState = result;
  return result;
}

void ___InitObservation_block_invoke_3()
{
  _lastNotificationTime = CFAbsoluteTimeGetCurrent();
  v0 = _KeyBagLockState();

  _NotifyObserversWithContentProtectionState(v0);
}

@end