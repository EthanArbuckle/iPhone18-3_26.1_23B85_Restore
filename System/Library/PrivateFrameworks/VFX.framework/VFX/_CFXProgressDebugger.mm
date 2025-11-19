@interface _CFXProgressDebugger
+ (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _CFXProgressDebugger

+ (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_fractionCompleted(a4, v11, v12, v13);
    if (v14 > 1.0)
    {
      NSLog(&cfstr_VfxCfxprogress.isa);
    }
  }

  else
  {
    v15.receiver = a1;
    v15.super_class = &OBJC_METACLASS____CFXProgressDebugger;
    objc_msgSendSuper2(&v15, sel_observeValueForKeyPath_ofObject_change_context_, a3, a4, a5, a6);
  }
}

@end