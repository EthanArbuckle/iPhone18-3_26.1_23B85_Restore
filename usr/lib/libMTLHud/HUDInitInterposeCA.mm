@interface HUDInitInterposeCA
@end

@implementation HUDInitInterposeCA

void __HUDInitInterposeCA_block_invoke(id a1)
{
  HUDInterposeEnableCompilerStats(1);
  v1 = objc_autoreleasePoolPush();
  HUDInitInterposeMetal();
  v2 = objc_opt_class();
  replaceMethod<objc_object * {__strong}>(v2, "nextDrawable", CAMetalLayer_nextDrawable);
  v3 = objc_opt_class();
  replaceMethod<objc_object * {__strong}>(v3, "drawable", CAMetalDisplayLinkUpdate_drawable);
  if ([objc_opt_class() instancesRespondToSelector:"shimDrawable:"])
  {
    v4 = objc_opt_class();
    if ("shimDrawable:")
    {
      v5 = v4;
      if (v4)
      {
        InstanceMethod = class_getInstanceMethod(v4, "shimDrawable:");
        if (InstanceMethod)
        {
          v7 = InstanceMethod;
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongPU26objcproto15CAMetalDrawable11objc_objectEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
          v13[3] = &__block_descriptor_56_e30__24__0_8___CAMetalDrawable__16l;
          v13[4] = CAMetalLayer_shimDrawable;
          v13[5] = method_getImplementation(InstanceMethod);
          v13[6] = "shimDrawable:";
          v8 = objc_retainBlock(v13);
          v9 = imp_implementationWithBlock(v8);

          TypeEncoding = method_getTypeEncoding(v7);
          class_replaceMethod(v5, "shimDrawable:", v9, TypeEncoding);
        }
      }
    }
  }

  v11 = objc_opt_class();
  replaceMethod<objc_object * {__strong}>(v11, "nextDrawable", CAMetalLayer_nextDrawable);
  Class = objc_getClass("CAMetalDrawable");
  replaceMethod<void>(Class, "present", CAMetalDrawable_present);
  replaceMethod<void,double>("presentAtTime:", CAMetalDrawable_presentAtTime);
  replaceMethod<void,double>("presentAfterMinimumDuration:", CAMetalDrawable_presentAfterMinimumDuration);
  objc_autoreleasePoolPop(v1);
}

@end