@interface _SBDeviceApplicationSceneHandleSnapshottingAssertion
- (_SBDeviceApplicationSceneHandleSnapshottingAssertion)initWithIdentifier:(id)identifier forReason:(id)reason contextId:(unsigned int)id renderId:(unint64_t)renderId invalidationBlock:(id)block;
@end

@implementation _SBDeviceApplicationSceneHandleSnapshottingAssertion

- (_SBDeviceApplicationSceneHandleSnapshottingAssertion)initWithIdentifier:(id)identifier forReason:(id)reason contextId:(unsigned int)id renderId:(unint64_t)renderId invalidationBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = _SBDeviceApplicationSceneHandleSnapshottingAssertion;
  result = [(BSSimpleAssertion *)&v10 initWithIdentifier:identifier forReason:reason invalidationBlock:block];
  if (result)
  {
    result->_renderId = renderId;
    result->_contextId = id;
  }

  return result;
}

@end