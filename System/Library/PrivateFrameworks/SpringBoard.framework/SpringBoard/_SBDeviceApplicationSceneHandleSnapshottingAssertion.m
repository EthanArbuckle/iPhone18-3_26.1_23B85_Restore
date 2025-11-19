@interface _SBDeviceApplicationSceneHandleSnapshottingAssertion
- (_SBDeviceApplicationSceneHandleSnapshottingAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 contextId:(unsigned int)a5 renderId:(unint64_t)a6 invalidationBlock:(id)a7;
@end

@implementation _SBDeviceApplicationSceneHandleSnapshottingAssertion

- (_SBDeviceApplicationSceneHandleSnapshottingAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 contextId:(unsigned int)a5 renderId:(unint64_t)a6 invalidationBlock:(id)a7
{
  v10.receiver = self;
  v10.super_class = _SBDeviceApplicationSceneHandleSnapshottingAssertion;
  result = [(BSSimpleAssertion *)&v10 initWithIdentifier:a3 forReason:a4 invalidationBlock:a7];
  if (result)
  {
    result->_renderId = a6;
    result->_contextId = a5;
  }

  return result;
}

@end