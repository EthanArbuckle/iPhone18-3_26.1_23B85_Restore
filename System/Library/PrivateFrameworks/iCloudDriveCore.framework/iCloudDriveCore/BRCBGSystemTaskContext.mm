@interface BRCBGSystemTaskContext
- (BRCBGSystemTaskContext)initWithOptions:(unint64_t)options;
- (unint64_t)releaseReference;
- (void)addReference;
@end

@implementation BRCBGSystemTaskContext

- (unint64_t)releaseReference
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_referenceCounter - 1;
  selfCopy->_referenceCounter = v3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BRCBGSystemTaskContext)initWithOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = BRCBGSystemTaskContext;
  result = [(BRCBGSystemTaskContext *)&v5 init];
  if (result)
  {
    result->_referenceCounter = 1;
    result->_options = options;
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