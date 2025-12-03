@interface _PGPictureInPictureConnectionExportedObject
- (_PGPictureInPictureConnectionExportedObject)initWithPictureInPictureProxy:(id)proxy;
- (void)actionButtonTapped;
- (void)beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)endTwoStagePictureInPictureStopWithCompletionBlock:(id)block;
- (void)handleCommand:(id)command;
- (void)hostedWindowSizeChangeBegan;
- (void)hostedWindowSizeChangeEnded;
- (void)pagingSkipByNumberOfPages:(int64_t)pages;
- (void)pictureInPictureCancelRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)pictureInPictureInvalidated;
- (void)pictureInPictureStartRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)pictureInPictureStopRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)setResourcesUsageReductionReasons:(unint64_t)reasons;
- (void)setStashedOrUnderLock:(BOOL)lock;
- (void)updateHostedWindowSize:(CGSize)size animationType:(int64_t)type initialSpringVelocity:(double)velocity synchronizationFence:(id)fence;
- (void)updatePictureInPicturePossible:(BOOL)possible;
@end

@implementation _PGPictureInPictureConnectionExportedObject

- (_PGPictureInPictureConnectionExportedObject)initWithPictureInPictureProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  v9.receiver = self;
  v9.super_class = _PGPictureInPictureConnectionExportedObject;
  v6 = [(_PGPictureInPictureConnectionExportedObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_pictureInPictureProxy, proxyCopy);
  }

  return v7;
}

- (void)dealloc
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  v4.receiver = self;
  v4.super_class = _PGPictureInPictureConnectionExportedObject;
  [(_PGPictureInPictureConnectionExportedObject *)&v4 dealloc];
}

- (void)pictureInPictureStartRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pictureInPictureStartRequestedAnimated:animatedCopy withCompletionHandler:handlerCopy];
}

- (void)pictureInPictureStopRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pictureInPictureStopRequestedAnimated:animatedCopy withCompletionHandler:handlerCopy];
}

- (void)beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:handlerCopy];
}

- (void)endTwoStagePictureInPictureStopWithCompletionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained endTwoStagePictureInPictureStopWithCompletionBlock:blockCopy];
}

- (void)pictureInPictureCancelRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pictureInPictureCancelRequestedAnimated:animatedCopy withCompletionHandler:handlerCopy];
}

- (void)updatePictureInPicturePossible:(BOOL)possible
{
  possibleCopy = possible;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained updatePictureInPicturePossible:possibleCopy];
}

- (void)pictureInPictureInvalidated
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pictureInPictureInvalidated];
}

- (void)pagingSkipByNumberOfPages:(int64_t)pages
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pagingSkipByNumberOfPages:pages];
}

- (void)updateHostedWindowSize:(CGSize)size animationType:(int64_t)type initialSpringVelocity:(double)velocity synchronizationFence:(id)fence
{
  height = size.height;
  width = size.width;
  fenceCopy = fence;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained updateHostedWindowSize:type animationType:fenceCopy initialSpringVelocity:width synchronizationFence:{height, velocity}];
}

- (void)hostedWindowSizeChangeBegan
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained hostedWindowSizeChangeBegan];
}

- (void)hostedWindowSizeChangeEnded
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained hostedWindowSizeChangeEnded];
}

- (void)actionButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained actionButtonTapped];
}

- (void)setStashedOrUnderLock:(BOOL)lock
{
  lockCopy = lock;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained setStashedOrUnderLock:lockCopy];
}

- (void)setResourcesUsageReductionReasons:(unint64_t)reasons
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained setResourcesUsageReductionReasons:reasons];
}

- (void)handleCommand:(id)command
{
  commandCopy = command;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained handleCommand:commandCopy];
}

@end