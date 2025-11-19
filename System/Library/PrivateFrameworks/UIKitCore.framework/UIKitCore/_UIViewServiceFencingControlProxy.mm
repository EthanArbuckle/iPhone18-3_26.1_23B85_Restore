@interface _UIViewServiceFencingControlProxy
+ (id)proxyWithTarget:(id)a3 exportedProtocol:(id)a4 fencingBatchController:(id)a5;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)__finishParticipatingInSystemAnimationFence:(id)a3;
- (void)__participateInSystemAnimationFence:(id)a3 timing:(_UIUpdateTiming *)a4;
@end

@implementation _UIViewServiceFencingControlProxy

+ (id)proxyWithTarget:(id)a3 exportedProtocol:(id)a4 fencingBatchController:(id)a5
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93___UIViewServiceFencingControlProxy_proxyWithTarget_exportedProtocol_fencingBatchController___block_invoke;
  v6[3] = &unk_1E7129170;
  v6[4] = a4;
  return [a1 proxyWithTarget:a3 shouldSuspendInvocationBlock:{v6, a5}];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (protocol_getMethodDescription(&unk_1F00E9A80, a3, 1, 1).name)
  {
    v5 = MEMORY[0x1E695DF68];
    v6 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v6, a3);
    TypeEncoding = method_getTypeEncoding(InstanceMethod);

    return [v5 signatureWithObjCTypes:TypeEncoding];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UIViewServiceFencingControlProxy;
    return [(_UITargetedProxy *)&v10 methodSignatureForSelector:a3];
  }
}

- (void)__participateInSystemAnimationFence:(id)a3 timing:(_UIUpdateTiming *)a4
{
  if (_UIUpdateCycleEnabled())
  {
    ++*(_UIUpdateCycleMainScheduler + 692);
    *&v6 = _UIUpdateSchedulerRequestUpdate(&_UIUpdateCycleMainScheduler, a4, &v7).n128_u64[0];
  }

  [UIScene _synchronizeDrawingWithFence:a3, v6];
  [a3 invalidate];
}

- (void)__finishParticipatingInSystemAnimationFence:(id)a3
{
  [UIScene _synchronizeDrawingWithFence:?];
  [a3 invalidate];
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