@interface SKUICellScrollView
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SKUICellScrollView

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
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

  v17 = v7;
  v18 = v8;
  v19 = self;
  v20 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v20, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v19, a2, v17, v18);
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
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

  v17 = v7;
  v18 = v8;
  v19 = self;
  v20 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v20, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v19, a2, v17, v18);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
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

  v17 = v7;
  v18 = v8;
  v19 = self;
  v20 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v20, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v19, a2, v17, v18);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
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

  v17 = v7;
  v18 = v8;
  v19 = self;
  v20 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v20, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v19, a2, v17, v18);
}

@end