@interface SBSBackgroundActivityAssertionAcquisitionHandlerEntry
- (SBSBackgroundActivityAssertionAcquisitionHandlerEntry)initWithHandler:(id)handler queue:(id)queue;
@end

@implementation SBSBackgroundActivityAssertionAcquisitionHandlerEntry

- (SBSBackgroundActivityAssertionAcquisitionHandlerEntry)initWithHandler:(id)handler queue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = SBSBackgroundActivityAssertionAcquisitionHandlerEntry;
  v8 = [(SBSBackgroundActivityAssertionAcquisitionHandlerEntry *)&v12 init];
  if (v8)
  {
    v9 = [handlerCopy copy];
    handler = v8->_handler;
    v8->_handler = v9;

    objc_storeStrong(&v8->_queue, queue);
  }

  return v8;
}

@end