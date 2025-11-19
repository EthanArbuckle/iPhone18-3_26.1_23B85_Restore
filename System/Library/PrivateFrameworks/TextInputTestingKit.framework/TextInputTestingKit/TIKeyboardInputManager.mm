@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

void __73__TIKeyboardInputManager_MockTestingParameters__swizzleTestingParameters__block_invoke()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel_testingParameters);
  v2 = class_getInstanceMethod(v0, sel_mockTestingParameters);
  if (InstanceMethod)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = v2;
    Implementation = method_getImplementation(v2);
    TypeEncoding = method_getTypeEncoding(v4);
    if (class_addMethod(v0, sel_testingParameters, Implementation, TypeEncoding))
    {
      v8 = method_getImplementation(InstanceMethod);
      v9 = method_getTypeEncoding(InstanceMethod);

      class_replaceMethod(v0, sel_mockTestingParameters, v8, v9);
    }

    else
    {

      method_exchangeImplementations(InstanceMethod, v4);
    }
  }
}

@end