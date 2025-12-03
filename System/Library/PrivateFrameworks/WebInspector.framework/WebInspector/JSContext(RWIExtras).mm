@interface JSContext(RWIExtras)
- (RWIProtocolInspector)_inspector;
@end

@implementation JSContext(RWIExtras)

- (RWIProtocolInspector)_inspector
{
  AssociatedObject = objc_getAssociatedObject(self, &[JSContext(RWIExtras) _inspector]::rwiProtocolInspectorAssociatedObjectKey);
  if (!AssociatedObject)
  {
    [self JSGlobalContextRef];
    AssociatedObject = [[RWIProtocolInspector alloc] initWithController:JSGlobalContextGetAugmentableInspectorController()];
    objc_setAssociatedObject(self, &[JSContext(RWIExtras) _inspector]::rwiProtocolInspectorAssociatedObjectKey, AssociatedObject, 0x301);
    if (AssociatedObject)
    {
    }
  }

  return AssociatedObject;
}

@end