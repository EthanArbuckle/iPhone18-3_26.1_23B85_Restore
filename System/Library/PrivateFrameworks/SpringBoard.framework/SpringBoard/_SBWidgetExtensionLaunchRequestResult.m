@interface _SBWidgetExtensionLaunchRequestResult
- (_SBWidgetExtensionLaunchRequestResult)initWithWidgetDescriptor:(id)a3 widgetFamily:(int64_t)a4 controlDescriptor:(id)a5;
@end

@implementation _SBWidgetExtensionLaunchRequestResult

- (_SBWidgetExtensionLaunchRequestResult)initWithWidgetDescriptor:(id)a3 widgetFamily:(int64_t)a4 controlDescriptor:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _SBWidgetExtensionLaunchRequestResult;
  v11 = [(_SBWidgetExtensionLaunchRequestResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_widgetFamily = a4;
    objc_storeStrong(&v11->_widgetDescriptorToUse, a3);
    objc_storeStrong(&v12->_controlDescriptorToUse, a5);
  }

  return v12;
}

@end