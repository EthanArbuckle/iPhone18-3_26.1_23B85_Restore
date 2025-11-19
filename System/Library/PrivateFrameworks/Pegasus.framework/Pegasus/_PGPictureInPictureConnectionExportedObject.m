@interface _PGPictureInPictureConnectionExportedObject
- (_PGPictureInPictureConnectionExportedObject)initWithPictureInPictureProxy:(id)a3;
- (void)actionButtonTapped;
- (void)beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)endTwoStagePictureInPictureStopWithCompletionBlock:(id)a3;
- (void)handleCommand:(id)a3;
- (void)hostedWindowSizeChangeBegan;
- (void)hostedWindowSizeChangeEnded;
- (void)pagingSkipByNumberOfPages:(int64_t)a3;
- (void)pictureInPictureCancelRequestedAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)pictureInPictureInvalidated;
- (void)pictureInPictureStartRequestedAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)pictureInPictureStopRequestedAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)setResourcesUsageReductionReasons:(unint64_t)a3;
- (void)setStashedOrUnderLock:(BOOL)a3;
- (void)updateHostedWindowSize:(CGSize)a3 animationType:(int64_t)a4 initialSpringVelocity:(double)a5 synchronizationFence:(id)a6;
- (void)updatePictureInPicturePossible:(BOOL)a3;
@end

@implementation _PGPictureInPictureConnectionExportedObject

- (_PGPictureInPictureConnectionExportedObject)initWithPictureInPictureProxy:(id)a3
{
  v4 = a3;
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
    objc_storeWeak(&v6->_pictureInPictureProxy, v4);
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

- (void)pictureInPictureStartRequestedAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pictureInPictureStartRequestedAnimated:v4 withCompletionHandler:v6];
}

- (void)pictureInPictureStopRequestedAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pictureInPictureStopRequestedAnimated:v4 withCompletionHandler:v6];
}

- (void)beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:v4];
}

- (void)endTwoStagePictureInPictureStopWithCompletionBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained endTwoStagePictureInPictureStopWithCompletionBlock:v4];
}

- (void)pictureInPictureCancelRequestedAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pictureInPictureCancelRequestedAnimated:v4 withCompletionHandler:v6];
}

- (void)updatePictureInPicturePossible:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained updatePictureInPicturePossible:v3];
}

- (void)pictureInPictureInvalidated
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pictureInPictureInvalidated];
}

- (void)pagingSkipByNumberOfPages:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained pagingSkipByNumberOfPages:a3];
}

- (void)updateHostedWindowSize:(CGSize)a3 animationType:(int64_t)a4 initialSpringVelocity:(double)a5 synchronizationFence:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained updateHostedWindowSize:a4 animationType:v11 initialSpringVelocity:width synchronizationFence:{height, a5}];
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

- (void)setStashedOrUnderLock:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained setStashedOrUnderLock:v3];
}

- (void)setResourcesUsageReductionReasons:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained setResourcesUsageReductionReasons:a3];
}

- (void)handleCommand:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureProxy);
  [WeakRetained handleCommand:v4];
}

@end