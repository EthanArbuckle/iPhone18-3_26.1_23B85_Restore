@interface SASHIDGenerator
- (SASHIDGenerator)init;
- (void)_sendHIDEvent:(__IOHIDEvent *)event;
- (void)_sendHIDHoldHomeButton;
- (void)_sendHIDHoldLockButton;
- (void)dealloc;
- (void)sendHoldHomeButtonHIDEvents;
- (void)sendHoldLockButtonHIDEvents;
@end

@implementation SASHIDGenerator

- (SASHIDGenerator)init
{
  v7.receiver = self;
  v7.super_class = SASHIDGenerator;
  v2 = [(SASHIDGenerator *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.siri.SASHIDGenerator", v3);
    generatorQueue = v2->_generatorQueue;
    v2->_generatorQueue = v4;
  }

  return v2;
}

- (void)dealloc
{
  ioSystemClient = self->_ioSystemClient;
  if (ioSystemClient)
  {
    CFRelease(ioSystemClient);
  }

  v4.receiver = self;
  v4.super_class = SASHIDGenerator;
  [(SASHIDGenerator *)&v4 dealloc];
}

- (void)sendHoldHomeButtonHIDEvents
{
  generatorQueue = self->_generatorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SASHIDGenerator_sendHoldHomeButtonHIDEvents__block_invoke;
  block[3] = &unk_27842FF78;
  block[4] = self;
  dispatch_async(generatorQueue, block);
}

- (void)sendHoldLockButtonHIDEvents
{
  generatorQueue = self->_generatorQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SASHIDGenerator_sendHoldLockButtonHIDEvents__block_invoke;
  block[3] = &unk_27842FF78;
  block[4] = self;
  dispatch_async(generatorQueue, block);
}

- (void)_sendHIDHoldHomeButton
{
  SASHIDGetCurrentTime();
  v9 = xmmword_21FF0E260;
  __rqtp = xmmword_21FF0E250;
  v8 = xmmword_21FF0E270;
  v3 = *MEMORY[0x277CBECE8];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetPhase();
  [(SASHIDGenerator *)self _sendHIDEvent:KeyboardEvent, xmmword_21FF0E270, 0, 58393417, 0, 334856333];
  CFRelease(KeyboardEvent);
  nanosleep(&__rqtp, 0);
  v5 = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetPhase();
  [(SASHIDGenerator *)self _sendHIDEvent:v5];
  CFRelease(v5);
  nanosleep(&v9, 0);
  v6 = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  [(SASHIDGenerator *)self _sendHIDEvent:v6];
  CFRelease(v6);
  nanosleep(&v8, 0);
  v7 = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetIntegerValue();
  [(SASHIDGenerator *)self _sendHIDEvent:v7];
  CFRelease(v7);
}

- (void)_sendHIDHoldLockButton
{
  SASHIDGetCurrentTime();
  v6 = xmmword_21FF0E280;
  v3 = *MEMORY[0x277CBECE8];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetIntegerValue();
  [(SASHIDGenerator *)self _sendHIDEvent:KeyboardEvent, xmmword_21FF0E280];
  CFRelease(KeyboardEvent);
  nanosleep(&v6, 0);
  v5 = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetIntegerValue();
  [(SASHIDGenerator *)self _sendHIDEvent:v5];
  CFRelease(v5);
}

- (void)_sendHIDEvent:(__IOHIDEvent *)event
{
  if (event)
  {
    if (!self->_ioSystemClient)
    {
      v4 = *MEMORY[0x277CBECE8];
      self->_ioSystemClient = IOHIDEventSystemClientCreate();
    }

    MEMORY[0x282121C10]();
  }
}

@end