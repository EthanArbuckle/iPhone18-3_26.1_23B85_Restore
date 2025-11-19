@interface XCTestCase
- (VTKAssert)VisualTestKitAssert;
- (VTKInternalConfiguration)VisualTestKitConfiguration;
@end

@implementation XCTestCase

- (VTKAssert)VisualTestKitAssert
{
  v3 = [VTKAssert alloc];
  v4 = [(XCTestCase *)self VisualTestKitConfiguration];
  v5 = [(VTKAssert *)v3 initWithTestCase:self configuration:v4];

  return v5;
}

- (VTKInternalConfiguration)VisualTestKitConfiguration
{
  v3 = [(XCTestCase *)self invocation];
  v4 = NSStringFromSelector([v3 selector]);

  v5 = objc_getAssociatedObject(self, "VTKConfigurationObjectToken");
  if (v5 && ([v4 isEqualToString:v5] & 1) != 0)
  {
    v6 = objc_getAssociatedObject(self, "VTKConfigurationObject");
  }

  else
  {
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v11 = __55__XCTestCase_VisualTestKit__VisualTestKitConfiguration__block_invoke;
    v12 = &unk_C1C0;
    objc_copyWeak(&v13, &location);
    v7 = self;
    v8 = v10;
    v6 = objc_getAssociatedObject(v7, "VTKConfigurationObject");
    if (!v6)
    {
      v6 = v11(v8);
      objc_setAssociatedObject(v7, "VTKConfigurationObject", v6, &dword_0 + 1);
    }

    objc_setAssociatedObject(v7, "VTKConfigurationObjectToken", v4, &dword_0 + 1);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __55__XCTestCase_VisualTestKit__VisualTestKitConfiguration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __55__XCTestCase_VisualTestKit__VisualTestKitConfiguration__block_invoke_2;
  v5[3] = &unk_C198;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained addTeardownBlock:v5];

  v3 = objc_opt_new();
  objc_destroyWeak(&v6);

  return v3;
}

void __55__XCTestCase_VisualTestKit__VisualTestKitConfiguration__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setVisualTestKitConfiguration:0];
}

@end