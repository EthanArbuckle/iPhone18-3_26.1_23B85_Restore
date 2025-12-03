@interface RCPPlayer
+ (id)sharedPlayer;
+ (void)playEventStream:(id)stream withOptions:(id)options;
+ (void)tearDown;
- (BOOL)prewarmForEventStream:(id)stream withError:(id *)error;
- (RCPPlayer)init;
- (RCPPlayer)initWithDeliveryServicePool:(id)pool environment:(id)environment analyticsEventSender:(id)sender;
- (__IOHIDEvent)_cloneAndTransformHIDEvent:(id)event machTimeOffset:(int64_t)offset transform:(CGAffineTransform *)transform;
- (void)_sendEvent:(id)event machTimeOffset:(int64_t)offset transform:(CGAffineTransform *)transform;
- (void)_sendEvent:(id)event withService:(id)service machTimeOffset:(int64_t)offset transform:(CGAffineTransform *)transform;
- (void)playEventStream:(id)stream withOptions:(id)options;
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

+ (void)playEventStream:(id)stream withOptions:(id)options
{
  optionsCopy = options;
  streamCopy = stream;
  v8 = RCPLogPlayback();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2619DE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0x1F5uLL, "RecapPlayEventStream", &unk_261A05C9D, buf, 2u);
  }

  sharedPlayer = [self sharedPlayer];
  [sharedPlayer prewarmForEventStream:streamCopy withError:0];

  sharedPlayer2 = [self sharedPlayer];
  [sharedPlayer2 playEventStream:streamCopy withOptions:optionsCopy];

  sharedPlayer3 = [self sharedPlayer];
  [sharedPlayer3 tearDown];

  v12 = RCPLogPlayback();
  if (os_signpost_enabled(v12))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2619DE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0x1F5uLL, "RecapPlayEventStream", &unk_261A05C9D, v13, 2u);
  }
}

+ (void)tearDown
{
  sharedPlayer = [self sharedPlayer];
  [sharedPlayer tearDown];
}

- (RCPPlayer)initWithDeliveryServicePool:(id)pool environment:(id)environment analyticsEventSender:(id)sender
{
  poolCopy = pool;
  environmentCopy = environment;
  senderCopy = sender;
  v15.receiver = self;
  v15.super_class = RCPPlayer;
  v12 = [(RCPPlayer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deliveryServicePool, pool);
    objc_storeStrong(&v13->_environment, environment);
    objc_storeStrong(&v13->_analyticsEventSender, sender);
  }

  return v13;
}

- (BOOL)prewarmForEventStream:(id)stream withError:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v7 = streamCopy;
  if (!streamCopy)
  {
    deliveryServicePool = self->_deliveryServicePool;
    v20 = 0;
    [(RCPEventDeliveryServicePool *)deliveryServicePool prewarmForSenderProperties:0 withError:&v20];
    v11 = v20;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  [streamCopy events];
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
      senderProperties = [*(*(&v22 + 1) + 8 * v13) senderProperties];
      v21 = v14;
      [(RCPEventDeliveryServicePool *)v15 prewarmForSenderProperties:senderProperties withError:&v21];
      v11 = v21;

      if (error)
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

  if (error)
  {
LABEL_16:
    if (v11)
    {
      v18 = v11;
      *error = v11;
    }
  }

LABEL_18:

  return v11 == 0;
}

- (void)playEventStream:(id)stream withOptions:(id)options
{
  v76 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  optionsCopy = options;
  environment = [(RCPPlayer *)self environment];
  [optionsCopy playbackSpeedFactor];
  v10 = v9;
  environment2 = [streamCopy environment];
  [environment speedFactorToAdjustRecordingEnvironment:environment2];
  [optionsCopy setPlaybackSpeedFactor:v10 * v12];

  objc_storeStrong(&self->_playbackOptions, options);
  v52 = environment;
  if ([environment isSimulator] && (v13 = objc_opt_class(), (objc_msgSend(v13, "isSubclassOfClass:", objc_opt_class(), environment) & 1) == 0))
  {
    environment3 = [streamCopy environment];
    if ([environment3 isSimulator])
    {
      environment4 = [streamCopy environment];
      self->_stompSenderForSimulatorPlayback = environment4 == environment;
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
  [optionsCopy playbackSpeedFactor];
  v19 = v18;
  v54 = streamCopy;
  events = [streamCopy events];
  v21 = mach_absolute_time();
  [optionsCopy minDelayBetweenSends];
  v23 = v22;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  if (optionsCopy)
  {
    [optionsCopy transform];
  }

  v56 = optionsCopy;
  if ([(RCPPlayerPlaybackOptions *)self->_playbackOptions linkEventDeliveryToDisplayRefreshRate])
  {
    +[RCPPlayerDisplayLinkWaiter wait];
    firstObject = [events firstObject];
    *buf = v68;
    *&buf[16] = v69;
    v75 = v70;
    [(RCPPlayer *)self _sendEvent:firstObject machTimeOffset:0 transform:buf];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = events;
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
        selfCopy = self;
        if (*v65 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v64 + 1) + 8 * v29);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        preActions = [v31 preActions];
        v33 = [preActions countByEnumeratingWithState:&v60 objects:v72 count:16];
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
                objc_enumerationMutation(preActions);
              }

              [*(*(&v60 + 1) + 8 * i) play];
              v37 = mach_absolute_time();
            }

            v21 = v37;
            v34 = [preActions countByEnumeratingWithState:&v60 objects:v72 count:16];
          }

          while (v34);
        }

        firstObject2 = [obj firstObject];
        v39 = (v27 * [v56 timestampForEventReplay:firstObject2]);

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

        self = selfCopy;
        if (![(RCPPlayerPlaybackOptions *)selfCopy->_playbackOptions linkEventDeliveryToDisplayRefreshRate]|| v25)
        {
          *buf = v68;
          *&buf[16] = v69;
          v75 = v70;
          [(RCPPlayer *)selfCopy _sendEvent:v31 machTimeOffset:v40 transform:buf];
        }

        ++v25;
        ++v29;
      }

      while (v29 != v57);
      v57 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v57);
  }

  analyticsEventSender = [(RCPPlayer *)self analyticsEventSender];
  [analyticsEventSender sendEvent:1];
}

- (void)_sendEvent:(id)event machTimeOffset:(int64_t)offset transform:(CGAffineTransform *)transform
{
  deliveryServicePool = self->_deliveryServicePool;
  eventCopy = event;
  senderProperties = [eventCopy senderProperties];
  v11 = [(RCPEventDeliveryServicePool *)deliveryServicePool deliveryServiceForSenderProperties:senderProperties];
  v12 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v12;
  v13[2] = *&transform->tx;
  [(RCPPlayer *)self _sendEvent:eventCopy withService:v11 machTimeOffset:offset transform:v13];
}

- (__IOHIDEvent)_cloneAndTransformHIDEvent:(id)event machTimeOffset:(int64_t)offset transform:(CGAffineTransform *)transform
{
  if (![event hidEvent])
  {
    return 0;
  }

  Copy = IOHIDEventCreateCopy();
  IOHIDEventGetTimeStamp();
  [(RCPPlayerPlaybackOptions *)self->_playbackOptions playbackSpeedFactor];
  mach_absolute_time();
  IOHIDEventSetTimeStamp();
  v8 = *&transform->c;
  *&v11.a = *&transform->a;
  *&v11.c = v8;
  *&v11.tx = *&transform->tx;
  if (!CGAffineTransformIsIdentity(&v11))
  {
    v9 = *&transform->c;
    *&v11.a = *&transform->a;
    *&v11.c = v9;
    *&v11.tx = *&transform->tx;
    RCPHIDEventTransformLocation(Copy, &v11);
  }

  return Copy;
}

- (void)_sendEvent:(id)event withService:(id)service machTimeOffset:(int64_t)offset transform:(CGAffineTransform *)transform
{
  serviceCopy = service;
  v11 = *&transform->c;
  v16[0] = *&transform->a;
  v16[1] = v11;
  v16[2] = *&transform->tx;
  v12 = [(RCPPlayer *)self _cloneAndTransformHIDEvent:event machTimeOffset:offset transform:v16];
  customizeHIDEvent = [(RCPPlayerPlaybackOptions *)self->_playbackOptions customizeHIDEvent];

  if (customizeHIDEvent)
  {
    customizeHIDEvent2 = [(RCPPlayerPlaybackOptions *)self->_playbackOptions customizeHIDEvent];
    (customizeHIDEvent2)[2](customizeHIDEvent2, v12);
  }

  if (v12)
  {
    v15 = RCPLogPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [RCPPlayer _sendEvent:v12 withService:v15 machTimeOffset:? transform:?];
    }

    [serviceCopy postHIDEvent:v12];
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