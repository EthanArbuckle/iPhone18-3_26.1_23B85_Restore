@interface _UIViewServiceUIBehaviorProxy
+ (id)proxyWrappingExportedObject:(id)a3 forCommunicationWithPID:(int)a4 exportedProtocol:(id)a5;
+ (void)initialize;
- (void)_objc_initiateDealloc;
- (void)dealloc;
@end

@implementation _UIViewServiceUIBehaviorProxy

+ (id)proxyWrappingExportedObject:(id)a3 forCommunicationWithPID:(int)a4 exportedProtocol:(id)a5
{
  v8 = [_UIViewServiceImplicitAnimationDecodingProxy proxyDecodingAnimationsForTarget:a3];
  if (a4)
  {
    v9 = [_UIViewServiceFencingControlProxy proxyWithTarget:v8 exportedProtocol:a5 fencingBatchController:0];
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS____UIViewServiceUIBehaviorProxy;
  v11 = objc_msgSendSuper2(&v13, sel_proxyWithTarget_, v10);
  v11[3] = v9;
  *(v11 + 4) = a4;
  return v11;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    _class_setCustomDeallocInitiation();
  }
}

- (void)_objc_initiateDealloc
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___UIViewServiceUIBehaviorProxy__objc_initiateDealloc__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0ls32l8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIViewServiceUIBehaviorProxy;
  [(_UIViewServiceUIBehaviorProxy *)&v3 dealloc];
}

@end