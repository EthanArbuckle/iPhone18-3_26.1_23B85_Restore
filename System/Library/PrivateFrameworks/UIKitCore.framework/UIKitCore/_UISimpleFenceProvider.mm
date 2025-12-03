@interface _UISimpleFenceProvider
+ (_UISimpleFenceProvider)sharedInstance;
- (BOOL)isTrackingAnySystemAnimationFence;
- (BOOL)trackSystemAnimationFence:(id)fence;
- (_UISimpleFenceProvider)init;
- (id)requestSystemAnimationFence;
- (void)synchronizeSystemAnimationFencesWithCleanUpBlock:(id)block;
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
  newFenceFromDefaultServer = [MEMORY[0x1E6979370] newFenceFromDefaultServer];
  v4 = [v2 newFenceHandleForCAFenceHandle:newFenceFromDefaultServer];

  return v4;
}

- (BOOL)isTrackingAnySystemAnimationFence
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISimpleFenceProvider.m" lineNumber:45 description:@"main thread only"];
  }

  return self->_trackingAny;
}

- (BOOL)trackSystemAnimationFence:(id)fence
{
  fenceCopy = fence;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISimpleFenceProvider.m" lineNumber:51 description:@"main thread only"];
  }

  if (self->_synchronizing)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UISimpleFenceProvider.m" lineNumber:52 description:@"cannot start tracking a new fence while we are synchronizing"];
  }

  isUsable = [fenceCopy isUsable];
  if (isUsable)
  {
    self->_trackingAny = 1;
  }

  return isUsable;
}

- (void)synchronizeSystemAnimationFencesWithCleanUpBlock:(id)block
{
  blockCopy = block;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISimpleFenceProvider.m" lineNumber:63 description:@"main thread only"];
  }

  *&self->_trackingAny = 256;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6 = objc_autoreleasePoolPush();
    (*(blockCopy + 2))(blockCopy, 0);
    objc_autoreleasePoolPop(v6);
    v5 = blockCopy;
  }

  self->_synchronizing = 0;
}

@end