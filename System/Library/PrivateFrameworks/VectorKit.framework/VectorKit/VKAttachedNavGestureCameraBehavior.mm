@interface VKAttachedNavGestureCameraBehavior
- (VKAttachedNavGestureCameraBehavior)initWithNavCameraController:(id)controller;
- (void)_startZoomAnimationFrom:(double)from to:(double)to completionHandler:(id)handler;
- (void)beginZoom:(CGPoint)zoom;
- (void)dealloc;
- (void)tapZoom:(CGPoint)zoom levels:(double)levels completionHandler:(id)handler;
- (void)updateZoom:(CGPoint)zoom oldFactor:(double)factor newFactor:(double)newFactor;
@end

@implementation VKAttachedNavGestureCameraBehavior

- (void)updateZoom:(CGPoint)zoom oldFactor:(double)factor newFactor:(double)newFactor
{
  startZoomScale = self->_startZoomScale;
  WeakRetained = objc_loadWeakRetained(&self->_navCameraController);
  [WeakRetained minZoomScale];
  v9 = v8;
  v10 = objc_loadWeakRetained(&self->_navCameraController);
  [v10 maxZoomScale];
  v12 = fmin(fmax(startZoomScale / newFactor, v9), v11);

  v14 = objc_loadWeakRetained(&self->_navCameraController);
  [v14 setZoomScale:v12];
}

- (void)beginZoom:(CGPoint)zoom
{
  WeakRetained = objc_loadWeakRetained(&self->_navCameraController);
  [WeakRetained zoomScale];
  self->_startZoomScale = v4;
}

- (void)tapZoom:(CGPoint)zoom levels:(double)levels completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_navCameraController);
  [WeakRetained zoomScale];
  exp2(-levels);

  v8 = objc_loadWeakRetained(&self->_navCameraController);
  [v8 minZoomScale];
  v9 = objc_loadWeakRetained(&self->_navCameraController);
  [v9 maxZoomScale];

  v10 = objc_loadWeakRetained(&self->_navCameraController);
  [v10 zoomScale];
  [VKAttachedNavGestureCameraBehavior _startZoomAnimationFrom:"_startZoomAnimationFrom:to:completionHandler:" to:handlerCopy completionHandler:?];

  v11 = objc_loadWeakRetained(&self->_navCameraController);
  [v11 startIgnoreStyleChangeTimer];
}

- (void)_startZoomAnimationFrom:(double)from to:(double)to completionHandler:(id)handler
{
  handlerCopy = handler;
  [(VKAnimation *)self->_tapZoomAnimation stop];
  v9 = [[VKTimedAnimation alloc] initWithDuration:0.25];
  tapZoomAnimation = self->_tapZoomAnimation;
  self->_tapZoomAnimation = v9;

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__VKAttachedNavGestureCameraBehavior__startZoomAnimationFrom_to_completionHandler___block_invoke;
  v15[3] = &unk_1E7B3D550;
  objc_copyWeak(v16, &location);
  v16[1] = *&from;
  v16[2] = *&to;
  [(VKTimedAnimation *)self->_tapZoomAnimation setStepHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__VKAttachedNavGestureCameraBehavior__startZoomAnimationFrom_to_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7B3D578;
  v11 = handlerCopy;
  v14 = v11;
  [(VKAnimation *)self->_tapZoomAnimation setCompletionHandler:v13];
  WeakRetained = objc_loadWeakRetained(&self->_navCameraController);
  md::AnimationRunner::runAnimation([WeakRetained animationRunner], &self->_tapZoomAnimation->super);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __83__VKAttachedNavGestureCameraBehavior__startZoomAnimationFrom_to_completionHandler___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40) + (*(a1 + 48) - *(a1 + 40)) * a2;
    v7 = WeakRetained;
    v6 = objc_loadWeakRetained(WeakRetained + 23);
    [v6 setZoomScale:v5];

    WeakRetained = v7;
  }
}

uint64_t __83__VKAttachedNavGestureCameraBehavior__startZoomAnimationFrom_to_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  [(VKAnimation *)self->_tapZoomAnimation stop];
  tapZoomAnimation = self->_tapZoomAnimation;
  self->_tapZoomAnimation = 0;

  v4.receiver = self;
  v4.super_class = VKAttachedNavGestureCameraBehavior;
  [(VKAttachedNavGestureCameraBehavior *)&v4 dealloc];
}

- (VKAttachedNavGestureCameraBehavior)initWithNavCameraController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = VKAttachedNavGestureCameraBehavior;
  v5 = [(VKGestureCameraBehavior *)&v8 initWithCameraController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_navCameraController, controllerCopy);
    v6->super._notifyCameraStateChanges = 1;
    v6->_startZoomScale = 1.0;
  }

  return v6;
}

@end