@interface _SBWidgetExtensionLaunchRequestResult
- (_SBWidgetExtensionLaunchRequestResult)initWithWidgetDescriptor:(id)descriptor widgetFamily:(int64_t)family controlDescriptor:(id)controlDescriptor;
@end

@implementation _SBWidgetExtensionLaunchRequestResult

- (_SBWidgetExtensionLaunchRequestResult)initWithWidgetDescriptor:(id)descriptor widgetFamily:(int64_t)family controlDescriptor:(id)controlDescriptor
{
  descriptorCopy = descriptor;
  controlDescriptorCopy = controlDescriptor;
  v14.receiver = self;
  v14.super_class = _SBWidgetExtensionLaunchRequestResult;
  v11 = [(_SBWidgetExtensionLaunchRequestResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_widgetFamily = family;
    objc_storeStrong(&v11->_widgetDescriptorToUse, descriptor);
    objc_storeStrong(&v12->_controlDescriptorToUse, controlDescriptor);
  }

  return v12;
}

@end