@interface PAAccessInterval
+ (id)placeholderAccessInterval;
- (PAAccessInterval)initWithLogger:(id)a3 slot:(id)a4;
- (void)dealloc;
- (void)endWithTimestampAdjustment:(double)a3 accessCount:(int64_t)a4;
- (void)recordAccessToAssetIdentifiers:(id)a3 withVisibilityState:(int64_t)a4 accessEventCount:(unint64_t)a5;
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
  v2 = [[a1 alloc] initWithLogger:0 slot:&unk_1F5A58100];

  return v2;
}

- (PAAccessInterval)initWithLogger:(id)a3 slot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PAAccessInterval;
  v8 = [(PAAccessInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_logger, v6);
    objc_storeStrong(&v9->_slot, a4);
    atomic_store(0, &v9->_wasEnded);
    v9->_accessCount = 0;
  }

  return v9;
}

- (void)endWithTimestampAdjustment:(double)a3 accessCount:(int64_t)a4
{
  if ((atomic_exchange(&self->_wasEnded._Value, 1u) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_logger);
    [WeakRetained endIntervalWithSlot:self->_slot timestampAdjustment:a4 accessCount:a3];
  }
}

- (void)recordAccessToAssetIdentifiers:(id)a3 withVisibilityState:(int64_t)a4 accessEventCount:(unint64_t)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_logger);
  [WeakRetained recordAssetIdentifiers:v8 withVisibilityState:a4 accessEventCount:a5 forSlot:self->_slot];
}

@end