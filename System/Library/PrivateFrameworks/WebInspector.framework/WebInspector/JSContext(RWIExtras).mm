@interface JSContext(RWIExtras)
- (RWIProtocolInspector)_inspector;
@end

@implementation JSContext(RWIExtras)

- (RWIProtocolInspector)_inspector
{
  AssociatedObject = objc_getAssociatedObject(a1, &[JSContext(RWIExtras) _inspector]::rwiProtocolInspectorAssociatedObjectKey);
  if (!AssociatedObject)
  {
    [a1 JSGlobalContextRef];
    AssociatedObject = [[RWIProtocolInspector alloc] initWithController:JSGlobalContextGetAugmentableInspectorController()];
    objc_setAssociatedObject(a1, &[JSContext(RWIExtras) _inspector]::rwiProtocolInspectorAssociatedObjectKey, AssociatedObject, 0x301);
    if (AssociatedObject)
    {
    }
  }

  return AssociatedObject;
}

@end