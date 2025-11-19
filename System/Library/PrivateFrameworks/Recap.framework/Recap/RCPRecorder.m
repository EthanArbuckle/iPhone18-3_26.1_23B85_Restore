@interface RCPRecorder
+ (BOOL)shouldRecordSenderProperties;
+ (id)sharedRecorder;
+ (void)registerEventStreamRecorder:(id)a3;
+ (void)unregisterEventStreamRecorder:(id)a3;
- (__IOHIDEvent)_initialLocationEvent;
- (__IOHIDEvent)_newLocationEventFromNormalPoint:(CGPoint)a3;
- (void)_registerIOHIDClient;
@end

@implementation RCPRecorder

+ (id)sharedRecorder
{
  if (sharedRecorder_onceToken != -1)
  {
    +[RCPRecorder sharedRecorder];
  }

  v3 = sharedRecorder__sharedRecorder;

  return v3;
}

void __29__RCPRecorder_sharedRecorder__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedRecorder__sharedRecorder;
  sharedRecorder__sharedRecorder = v0;

  v2 = MEMORY[0x277CBEB58];
  v3 = sharedRecorder__sharedRecorder;
  v4 = [v2 set];
  v5 = v3[2];
  v3[2] = v4;
}

+ (BOOL)shouldRecordSenderProperties
{
  v2 = [a1 sharedRecorder];
  v3 = [v2 shouldRecordSenderProperties];

  return v3;
}

+ (void)registerEventStreamRecorder:(id)a3
{
  v3 = a3;
  v5 = +[RCPRecorder sharedRecorder];
  [v5[2] addObject:v3];
  v4 = [v3 config];

  LOBYTE(v3) = [v4 ignoreSenderProperties];
  if ((v3 & 1) == 0)
  {
    [v5 setShouldRecordSenderProperties:1];
  }

  [v5 _registerIOHIDClient];
}

+ (void)unregisterEventStreamRecorder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[RCPRecorder sharedRecorder];
  [v4[2] removeObject:v3];
  if (![v4[2] count])
  {
    [v4 _unregisterIOHIDClient];
  }

  [v4 setShouldRecordSenderProperties:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4[2];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) config];
        v11 = [v10 ignoreSenderProperties];

        if ((v11 & 1) == 0)
        {
          [v4 setShouldRecordSenderProperties:1];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (__IOHIDEvent)_newLocationEventFromNormalPoint:(CGPoint)a3
{
  v3 = IOHIDEventCreate();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  return v3;
}

- (__IOHIDEvent)_initialLocationEvent
{
  v3 = [MEMORY[0x277CF0720] sharedInstance];
  [v3 normalizedGlobalPointerPosition];
  v5 = v4;
  v7 = v6;

  return [(RCPRecorder *)self _newLocationEventFromNormalPoint:v5, v7];
}

- (void)_registerIOHIDClient
{
  v48 = *MEMORY[0x277D85DE8];
  if (!self->_ioRunLoop)
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v25 = self;
    obj = self->_activeRecorders;
    v23 = [(NSMutableSet *)obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v23)
    {
      v22 = *v41;
      do
      {
        v5 = 0;
        do
        {
          if (*v41 != v22)
          {
            v6 = v5;
            objc_enumerationMutation(obj);
            v5 = v6;
          }

          v24 = v5;
          v7 = *(*(&v40 + 1) + 8 * v5);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v8 = [v7 config];
          v9 = [v8 deviceUsagePageArray];

          v10 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
          if (v10)
          {
            v11 = *v37;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v37 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v36 + 1) + 8 * i);
                if ([v13 unsignedIntValue] == 1)
                {
                  self->_shouldRecordInitialPointerLocation = 1;
                }

                v44 = @"DeviceUsagePage";
                v45 = v13;
                v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
                [v4 addObject:v14];

                v15 = [v13 stringValue];
                [v3 addObject:v15];
              }

              v10 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
            }

            while (v10);
          }

          v5 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [(NSMutableSet *)obj countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v23);
    }

    v16 = dispatch_semaphore_create(0);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v17 = MEMORY[0x277CCACC8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __35__RCPRecorder__registerIOHIDClient__block_invoke;
    v26[3] = &unk_279AF1020;
    v31 = &v32;
    v18 = v16;
    v27 = v18;
    v19 = v3;
    v28 = v19;
    v20 = v4;
    v29 = v20;
    v30 = v25;
    [v17 detachNewThreadWithBlock:v26];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    v25->_ioRunLoop = v33[3];

    _Block_object_dispose(&v32, 8);
  }
}

void __35__RCPRecorder__registerIOHIDClient__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 24) = CFRunLoopGetCurrent();
  dispatch_semaphore_signal(*(a1 + 32));
  RCPSetNonDecayingThreadPriority(63);
  v2 = IOHIDEventSystemClientCreate();
  CFRunLoopGetCurrent();
  IOHIDEventSystemClientScheduleWithRunLoop();
  if (_CLTLogLevel >= 3)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [*(a1 + 40) componentsJoinedByString:{@", "}];
    v5 = [v3 stringWithFormat:@"Recording usage pages (-d): %@\n", v4];
    v6 = [v5 UTF8String];
    v7 = MEMORY[0x277D85E08];
    fputs(v6, *MEMORY[0x277D85E08]);

    fflush(*v7);
    if (_CLTLogLevel >= 5)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Actual filter array: %@\n", *(a1 + 48)];
      fputs([v8 UTF8String], *v7);

      fflush(*v7);
    }
  }

  IOHIDEventSystemClientSetMatchingMultiple();
  IOHIDEventSystemClientRegisterEventCallback();
  CFRunLoopRun();
  IOHIDEventSystemClientUnregisterEventCallback();
  CFRunLoopGetCurrent();
  IOHIDEventSystemClientUnscheduleWithRunLoop();

  CFRelease(v2);
}

@end