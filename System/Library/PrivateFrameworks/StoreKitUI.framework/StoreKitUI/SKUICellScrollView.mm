@interface SKUICellScrollView
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SKUICellScrollView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUICellScrollView *)v9 touchesBegan:v10 withEvent:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = beganCopy;
  v18 = eventCopy;
  selfCopy = self;
  v20 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v20, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, v17, v18);
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUICellScrollView *)v9 touchesCancelled:v10 withEvent:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = cancelledCopy;
  v18 = eventCopy;
  selfCopy = self;
  v20 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v20, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, v17, v18);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUICellScrollView *)v9 touchesEnded:v10 withEvent:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = endedCopy;
  v18 = eventCopy;
  selfCopy = self;
  v20 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v20, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, v17, v18);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUICellScrollView *)v9 touchesMoved:v10 withEvent:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = movedCopy;
  v18 = eventCopy;
  selfCopy = self;
  v20 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v20, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, v17, v18);
}

@end