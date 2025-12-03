@interface _CFXProgressDebugger
+ (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _CFXProgressDebugger

+ (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_fractionCompleted(object, v11, v12, v13);
    if (v14 > 1.0)
    {
      NSLog(&cfstr_VfxCfxprogress.isa);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS____CFXProgressDebugger;
    objc_msgSendSuper2(&v15, sel_observeValueForKeyPath_ofObject_change_context_, path, object, change, context);
  }
}

@end