@interface _UISimpleFenceProvider
+ (_UISimpleFenceProvider)sharedInstance;
- (BOOL)isTrackingAnySystemAnimationFence;
- (BOOL)trackSystemAnimationFence:(id)a3;
- (_UISimpleFenceProvider)init;
- (id)requestSystemAnimationFence;
- (void)synchronizeSystemAnimationFencesWithCleanUpBlock:(id)a3;
@end

@implementation _UISimpleFenceProvider

+ (_UISimpleFenceProvider)sharedInstance
{
  if (qword_1ED49C950 != -1)
  {
    dispatch_once(&qword_1ED49C950, &__block_literal_global_58);
  }

  v3 = _MergedGlobals_1005;

  return v3;
}

- (_UISimpleFenceProvider)init
{
  v3.receiver = self;
  v3.super_class = _UISimpleFenceProvider;
  return [(_UISimpleFenceProvider *)&v3 init];
}

- (id)requestSystemAnimationFence
{
  v2 = MEMORY[0x1E698E388];
  v3 = [MEMORY[0x1E6979370] newFenceFromDefaultServer];
  v4 = [v2 newFenceHandleForCAFenceHandle:v3];

  return v4;
}

- (BOOL)isTrackingAnySystemAnimationFence
{
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UISimpleFenceProvider.m" lineNumber:45 description:@"main thread only"];
  }

  return self->_trackingAny;
}

- (BOOL)trackSystemAnimationFence:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UISimpleFenceProvider.m" lineNumber:51 description:@"main thread only"];
  }

  if (self->_synchronizing)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UISimpleFenceProvider.m" lineNumber:52 description:@"cannot start tracking a new fence while we are synchronizing"];
  }

  v6 = [v5 isUsable];
  if (v6)
  {
    self->_trackingAny = 1;
  }

  return v6;
}

- (void)synchronizeSystemAnimationFencesWithCleanUpBlock:(id)a3
{
  v8 = a3;
  if (pthread_main_np() != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UISimpleFenceProvider.m" lineNumber:63 description:@"main thread only"];
  }

  *&self->_trackingAny = 256;
  v5 = v8;
  if (v8)
  {
    v6 = objc_autoreleasePoolPush();
    (*(v8 + 2))(v8, 0);
    objc_autoreleasePoolPop(v6);
    v5 = v8;
  }

  self->_synchronizing = 0;
}

@end