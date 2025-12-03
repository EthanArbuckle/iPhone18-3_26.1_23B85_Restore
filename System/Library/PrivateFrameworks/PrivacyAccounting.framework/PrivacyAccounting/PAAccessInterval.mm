@interface PAAccessInterval
+ (id)placeholderAccessInterval;
- (PAAccessInterval)initWithLogger:(id)logger slot:(id)slot;
- (void)dealloc;
- (void)endWithTimestampAdjustment:(double)adjustment accessCount:(int64_t)count;
- (void)recordAccessToAssetIdentifiers:(id)identifiers withVisibilityState:(int64_t)state accessEventCount:(unint64_t)count;
@end

@implementation PAAccessInterval

- (void)dealloc
{
  [(PAAccessInterval *)self end];
  v3.receiver = self;
  v3.super_class = PAAccessInterval;
  [(PAAccessInterval *)&v3 dealloc];
}

+ (id)placeholderAccessInterval
{
  v2 = [[self alloc] initWithLogger:0 slot:&unk_1F5A58100];

  return v2;
}

- (PAAccessInterval)initWithLogger:(id)logger slot:(id)slot
{
  loggerCopy = logger;
  slotCopy = slot;
  v11.receiver = self;
  v11.super_class = PAAccessInterval;
  v8 = [(PAAccessInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_logger, loggerCopy);
    objc_storeStrong(&v9->_slot, slot);
    atomic_store(0, &v9->_wasEnded);
    v9->_accessCount = 0;
  }

  return v9;
}

- (void)endWithTimestampAdjustment:(double)adjustment accessCount:(int64_t)count
{
  if ((atomic_exchange(&self->_wasEnded._Value, 1u) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_logger);
    [WeakRetained endIntervalWithSlot:self->_slot timestampAdjustment:count accessCount:adjustment];
  }
}

- (void)recordAccessToAssetIdentifiers:(id)identifiers withVisibilityState:(int64_t)state accessEventCount:(unint64_t)count
{
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_logger);
  [WeakRetained recordAssetIdentifiers:identifiersCopy withVisibilityState:state accessEventCount:count forSlot:self->_slot];
}

@end