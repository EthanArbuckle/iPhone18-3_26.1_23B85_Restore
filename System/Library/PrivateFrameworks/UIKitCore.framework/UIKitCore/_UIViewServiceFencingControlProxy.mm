@interface _UIViewServiceFencingControlProxy
+ (id)proxyWithTarget:(id)target exportedProtocol:(id)protocol fencingBatchController:(id)controller;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)__finishParticipatingInSystemAnimationFence:(id)fence;
- (void)__participateInSystemAnimationFence:(id)fence timing:(_UIUpdateTiming *)timing;
@end

@implementation _UIViewServiceFencingControlProxy

+ (id)proxyWithTarget:(id)target exportedProtocol:(id)protocol fencingBatchController:(id)controller
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93___UIViewServiceFencingControlProxy_proxyWithTarget_exportedProtocol_fencingBatchController___block_invoke;
  v6[3] = &unk_1E7129170;
  v6[4] = protocol;
  return [self proxyWithTarget:target shouldSuspendInvocationBlock:{v6, controller}];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (protocol_getMethodDescription(&unk_1F00E9A80, selector, 1, 1).name)
  {
    v5 = MEMORY[0x1E695DF68];
    v6 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v6, selector);
    TypeEncoding = method_getTypeEncoding(InstanceMethod);

    return [v5 signatureWithObjCTypes:TypeEncoding];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIViewServiceFencingControlProxy;
    return [(_UITargetedProxy *)&v10 methodSignatureForSelector:selector];
  }
}

- (void)__participateInSystemAnimationFence:(id)fence timing:(_UIUpdateTiming *)timing
{
  if (_UIUpdateCycleEnabled())
  {
    ++*(_UIUpdateCycleMainScheduler + 692);
    *&v6 = _UIUpdateSchedulerRequestUpdate(&_UIUpdateCycleMainScheduler, timing, &v7).n128_u64[0];
  }

  [UIScene _synchronizeDrawingWithFence:fence, v6];
  [fence invalidate];
}

- (void)__finishParticipatingInSystemAnimationFence:(id)fence
{
  [UIScene _synchronizeDrawingWithFence:?];
  [fence invalidate];
  if (_UIUpdateCycleEnabled())
  {
    v4 = *(_UIUpdateCycleMainScheduler + 692) - 1;
    *(_UIUpdateCycleMainScheduler + 692) = v4;
    if (!v4)
    {

      UCDriverSignal();
    }
  }
}

@end