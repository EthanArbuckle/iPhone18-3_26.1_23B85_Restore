@interface SKAPowerLogger
+ (SKAPowerLogger)shared;
- (void)logEvent:(int64_t)event ofType:(int64_t)type channelType:(int64_t)channelType identifier:(id)identifier;
- (void)logEvent:(int64_t)event ofType:(int64_t)type onDatabaseChannel:(id)channel;
- (void)logEvent:(int64_t)event ofType:(int64_t)type onDatabaseChannels:(id)channels;
@end

@implementation SKAPowerLogger

+ (SKAPowerLogger)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static SKAPowerLogger.shared;

  return v3;
}

- (void)logEvent:(int64_t)event ofType:(int64_t)type onDatabaseChannel:(id)channel
{
  channelCopy = channel;
  selfCopy = self;
  SKAPowerLogger.log(_:type:on:)(event, type, channelCopy);
}

- (void)logEvent:(int64_t)event ofType:(int64_t)type onDatabaseChannels:(id)channels
{
  type metadata accessor for SKADatabaseChannel();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  selfCopy = self;
  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223D77050](i, v9);
    }

    else
    {
      v13 = *(v9 + 8 * i + 32);
    }

    v14 = v13;
    SKAPowerLogger.log(_:type:on:)(event, type, v13);
  }

LABEL_10:
}

- (void)logEvent:(int64_t)event ofType:(int64_t)type channelType:(int64_t)channelType identifier:(id)identifier
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = (self + OBJC_IVAR___SKAPowerLogger_state);
  selfCopy = self;
  os_unfair_lock_lock(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMd, &_s15Synchronization5MutexVy18StatusKitAgentCore14SKAPowerLoggerC5State33_9FCD8C5B33CE418606FD932C9F8D29EFLLVGMR);
  _s18StatusKitAgentCore14SKAPowerLoggerC3log33_9FCD8C5B33CE418606FD932C9F8D29EFLL_4type2on11channelType10identifieryAA11SKALogEventO_AC0e3LogwT0OSSSo018SKADatabaseChannelT0VSStFyAC5StateAELLVzYuYTXEfU_((v13 + *(v14 + 28)), v10, v12, channelType, event, type);

  os_unfair_lock_unlock(v13);
}

@end