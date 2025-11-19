@interface BRCBGSystemTaskContext
- (BRCBGSystemTaskContext)initWithOptions:(unint64_t)a3;
- (unint64_t)releaseReference;
- (void)addReference;
@end

@implementation BRCBGSystemTaskContext

- (unint64_t)releaseReference
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_referenceCounter - 1;
  v2->_referenceCounter = v3;
  objc_sync_exit(v2);

  return v3;
}

- (BRCBGSystemTaskContext)initWithOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BRCBGSystemTaskContext;
  result = [(BRCBGSystemTaskContext *)&v5 init];
  if (result)
  {
    result->_referenceCounter = 1;
    result->_options = a3;
  }

  return result;
}

- (void)addReference
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_referenceCounter;
  objc_sync_exit(obj);
}

@end