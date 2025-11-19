@interface RCPPlayer
+ (id)sharedPlayer;
+ (void)playEventStream:(id)a3 withOptions:(id)a4;
+ (void)tearDown;
- (BOOL)prewarmForEventStream:(id)a3 withError:(id *)a4;
- (RCPPlayer)init;
- (RCPPlayer)initWithDeliveryServicePool:(id)a3 environment:(id)a4 analyticsEventSender:(id)a5;
- (__IOHIDEvent)_cloneAndTransformHIDEvent:(id)a3 machTimeOffset:(int64_t)a4 transform:(CGAffineTransform *)a5;
- (void)_sendEvent:(id)a3 machTimeOffset:(int64_t)a4 transform:(CGAffineTransform *)a5;
- (void)_sendEvent:(id)a3 withService:(id)a4 machTimeOffset:(int64_t)a5 transform:(CGAffineTransform *)a6;
- (void)playEventStream:(id)a3 withOptions:(id)a4;
@end

@implementation RCPPlayer

- (RCPPlayer)init
{
  v3 = objc_alloc_init(RCPEventDeliveryServicePool);
  v4 = +[RCPEventEnvironment currentEnvironment];
  v5 = objc_alloc_init(RCPCoreAnalyticsBackedAnalyticsEventSender);
  v6 = [(RCPPlayer *)self initWithDeliveryServicePool:v3 environment:v4 analyticsEventSender:v5];

  return v6;
}

+ (id)sharedPlayer
{
  if (sharedPlayer_onceToken != -1)
  {
    +[RCPPlayer sharedPlayer];
  }

  v3 = sharedPlayer__sharedPlayer;

  return v3;
}

uint64_t __25__RCPPlayer_sharedPlayer__block_invoke()
{
  sharedPlayer__sharedPlayer = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)playEventStream:(id)a3 withOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = RCPLogPlayback();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2619DE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0x1F5uLL, "RecapPlayEventStream", &unk_261A05C9D, buf, 2u);
  }

  v9 = [a1 sharedPlayer];
  [v9 prewarmForEventStream:v7 withError:0];

  v10 = [a1 sharedPlayer];
  [v10 playEventStream:v7 withOptions:v6];

  v11 = [a1 sharedPlayer];
  [v11 tearDown];

  v12 = RCPLogPlayback();
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2619DE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0x1F5uLL, "RecapPlayEventStream", &unk_261A05C9D, v13, 2u);
  }
}

+ (void)tearDown
{
  v2 = [a1 sharedPlayer];
  [v2 tearDown];
}

- (RCPPlayer)initWithDeliveryServicePool:(id)a3 environment:(id)a4 analyticsEventSender:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RCPPlayer;
  v12 = [(RCPPlayer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deliveryServicePool, a3);
    objc_storeStrong(&v13->_environment, a4);
    objc_storeStrong(&v13->_analyticsEventSender, a5);
  }

  return v13;
}

- (BOOL)prewarmForEventStream:(id)a3 withError:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    deliveryServicePool = self->_deliveryServicePool;
    v20 = 0;
    [(RCPEventDeliveryServicePool *)deliveryServicePool prewarmForSenderProperties:0 withError:&v20];
    v11 = v20;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  [v6 events];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v23;
LABEL_4:
    v13 = 0;
    v14 = v11;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = self->_deliveryServicePool;
      v16 = [*(*(&v22 + 1) + 8 * v13) senderProperties];
      v21 = v14;
      [(RCPEventDeliveryServicePool *)v15 prewarmForSenderProperties:v16 withError:&v21];
      v11 = v21;

      if (a4)
      {
        if (v11)
        {
          break;
        }
      }

      ++v13;
      v14 = v11;
      if (v10 == v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
LABEL_16:
    if (v11)
    {
      v18 = v11;
      *a4 = v11;
    }
  }

LABEL_18:

  return v11 == 0;
}

- (void)playEventStream:(id)a3 withOptions:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RCPPlayer *)self environment];
  [v7 playbackSpeedFactor];
  v10 = v9;
  v11 = [v6 environment];
  [v8 speedFactorToAdjustRecordingEnvironment:v11];
  [v7 setPlaybackSpeedFactor:v10 * v12];

  objc_storeStrong(&self->_playbackOptions, a4);
  v52 = v8;
  if ([v8 isSimulator] && (v13 = objc_opt_class(), (objc_msgSend(v13, "isSubclassOfClass:", objc_opt_class(), v8) & 1) == 0))
  {
    v14 = [v6 environment];
    if ([v14 isSimulator])
    {
      v15 = [v6 environment];
      self->_stompSenderForSimulatorPlayback = v15 == v8;
    }

    else
    {
      self->_stompSenderForSimulatorPlayback = 1;
    }
  }

  else
  {
    self->_stompSenderForSimulatorPlayback = 0;
  }

  info = 0;
  mach_timebase_info(&info);
  numer = info.numer;
  denom = info.denom;
  [v7 playbackSpeedFactor];
  v19 = v18;
  v54 = v6;
  v20 = [v6 events];
  v21 = mach_absolute_time();
  [v7 minDelayBetweenSends];
  v23 = v22;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  if (v7)
  {
    [v7 transform];
  }

  v56 = v7;
  if ([(RCPPlayerPlaybackOptions *)self->_playbackOptions linkEventDeliveryToDisplayRefreshRate])
  {
    +[RCPPlayerDisplayLinkWaiter wait];
    v24 = [v20 firstObject];
    *buf = v68;
    *&buf[16] = v69;
    v75 = v70;
    [(RCPPlayer *)self _sendEvent:v24 machTimeOffset:0 transform:buf];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v20;
  v57 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v57)
  {
    v25 = 0;
    v26 = (numer / denom);
    v27 = 1.0 / v19;
    v28 = (v23 * 1000000000.0);
    v55 = *v65;
    do
    {
      v29 = 0;
      do
      {
        v30 = self;
        if (*v65 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v64 + 1) + 8 * v29);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v32 = [v31 preActions];
        v33 = [v32 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v61;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v61 != v35)
              {
                objc_enumerationMutation(v32);
              }

              [*(*(&v60 + 1) + 8 * i) play];
              v37 = mach_absolute_time();
            }

            v21 = v37;
            v34 = [v32 countByEnumeratingWithState:&v60 objects:v72 count:16];
          }

          while (v34);
        }

        v38 = [obj firstObject];
        v39 = (v27 * [v56 timestampForEventReplay:v38]);

        v40 = v21 - v39;
        v41 = v21 - v39 + (v27 * [v56 timestampForEventReplay:v31]);
        v42 = (v26 * mach_absolute_time());
        v43 = v42 + v28;
        if (v42 + v28 <= (v41 * v26 + -1000000.0))
        {
          v43 = (v41 * v26 + -1000000.0);
        }

        if (!v28)
        {
          v43 = (v41 * v26 + -1000000.0);
        }

        v44 = v43 - v42;
        if (v43 > v42)
        {
          __rqtp.tv_sec = v44 / 0x3B9ACA00;
          __rqtp.tv_nsec = v44 % 0x3B9ACA00;
          nanosleep(&__rqtp, 0);
          v45 = RCPLogPlayback();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = RCPTimeIntervalFromMachTimestamp((v44 / v26));
            *buf = 134218240;
            *&buf[4] = v25;
            *&buf[12] = 2048;
            *&buf[14] = v46;
            _os_log_impl(&dword_2619DE000, v45, OS_LOG_TYPE_INFO, " - %4ld delayed by %0.9fs -\n", buf, 0x16u);
          }
        }

        v47 = mach_absolute_time();
        v48 = RCPTimeIntervalFromMachTimestamp(v47);
        v49 = RCPTimeIntervalFromMachTimestamp(v41);
        v50 = RCPLogPlayback();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = v25;
          *&buf[12] = 2048;
          *&buf[14] = v48 - v49;
          _os_log_debug_impl(&dword_2619DE000, v50, OS_LOG_TYPE_DEBUG, "  - %4ld delivery - difference %0.9fs -\n", buf, 0x16u);
        }

        self = v30;
        if (![(RCPPlayerPlaybackOptions *)v30->_playbackOptions linkEventDeliveryToDisplayRefreshRate]|| v25)
        {
          *buf = v68;
          *&buf[16] = v69;
          v75 = v70;
          [(RCPPlayer *)v30 _sendEvent:v31 machTimeOffset:v40 transform:buf];
        }

        ++v25;
        ++v29;
      }

      while (v29 != v57);
      v57 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v57);
  }

  v51 = [(RCPPlayer *)self analyticsEventSender];
  [v51 sendEvent:1];
}

- (void)_sendEvent:(id)a3 machTimeOffset:(int64_t)a4 transform:(CGAffineTransform *)a5
{
  deliveryServicePool = self->_deliveryServicePool;
  v9 = a3;
  v10 = [v9 senderProperties];
  v11 = [(RCPEventDeliveryServicePool *)deliveryServicePool deliveryServiceForSenderProperties:v10];
  v12 = *&a5->c;
  v13[0] = *&a5->a;
  v13[1] = v12;
  v13[2] = *&a5->tx;
  [(RCPPlayer *)self _sendEvent:v9 withService:v11 machTimeOffset:a4 transform:v13];
}

- (__IOHIDEvent)_cloneAndTransformHIDEvent:(id)a3 machTimeOffset:(int64_t)a4 transform:(CGAffineTransform *)a5
{
  if (![a3 hidEvent])
  {
    return 0;
  }

  Copy = IOHIDEventCreateCopy();
  IOHIDEventGetTimeStamp();
  [(RCPPlayerPlaybackOptions *)self->_playbackOptions playbackSpeedFactor];
  mach_absolute_time();
  IOHIDEventSetTimeStamp();
  v8 = *&a5->c;
  *&v11.a = *&a5->a;
  *&v11.c = v8;
  *&v11.tx = *&a5->tx;
  if (!CGAffineTransformIsIdentity(&v11))
  {
    v9 = *&a5->c;
    *&v11.a = *&a5->a;
    *&v11.c = v9;
    *&v11.tx = *&a5->tx;
    RCPHIDEventTransformLocation(Copy, &v11);
  }

  return Copy;
}

- (void)_sendEvent:(id)a3 withService:(id)a4 machTimeOffset:(int64_t)a5 transform:(CGAffineTransform *)a6
{
  v10 = a4;
  v11 = *&a6->c;
  v16[0] = *&a6->a;
  v16[1] = v11;
  v16[2] = *&a6->tx;
  v12 = [(RCPPlayer *)self _cloneAndTransformHIDEvent:a3 machTimeOffset:a5 transform:v16];
  v13 = [(RCPPlayerPlaybackOptions *)self->_playbackOptions customizeHIDEvent];

  if (v13)
  {
    v14 = [(RCPPlayerPlaybackOptions *)self->_playbackOptions customizeHIDEvent];
    (v14)[2](v14, v12);
  }

  if (v12)
  {
    v15 = RCPLogPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [RCPPlayer _sendEvent:v12 withService:v15 machTimeOffset:? transform:?];
    }

    [v10 postHIDEvent:v12];
    CFRelease(v12);
  }
}

- (void)_sendEvent:(const void *)a1 withService:(NSObject *)a2 machTimeOffset:transform:.cold.1(const void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = CFCopyDescription(a1);
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_2619DE000, a2, OS_LOG_TYPE_DEBUG, "send event %{public}@", &v4, 0xCu);
}

@end