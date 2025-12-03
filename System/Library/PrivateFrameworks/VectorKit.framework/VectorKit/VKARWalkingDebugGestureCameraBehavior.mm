@interface VKARWalkingDebugGestureCameraBehavior
- (VKARWalkingDebugGestureCameraBehavior)initWithCameraController:(id)controller;
- (void)updatePan:(CGPoint)pan lastScreenPoint:(CGPoint)point;
- (void)updateRotate:(double)rotate atScreenPoint:(CGPoint)point;
@end

@implementation VKARWalkingDebugGestureCameraBehavior

- (void)updateRotate:(double)rotate atScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  canvas = [WeakRetained canvas];
  [canvas size];
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_controller);
  v15 = v11 * x;
  v16 = v13 - y * v13;
  rotateCopy = rotate;
  v18 = v15;
  v19 = v16;
  v20 = 1;
  [v14 pushGesture:&rotateCopy];
}

- (void)updatePan:(CGPoint)pan lastScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = pan.y;
  v7 = pan.x;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  canvas = [WeakRetained canvas];
  [canvas size];
  v12 = v11;
  v14 = v13;

  v15 = v12 * v7;
  v16 = v14 - v6 * v14;
  v17 = v12 * x;
  v18 = v14 - y * v14;
  v19 = 1;
  v20 = v17;
  v21 = v15;
  do
  {
    v22 = vabdd_f64(v21, v20);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v19 = 0;
    v20 = v18;
    v21 = v16;
  }

  while (v22 < 1.0);
  if (v22 >= 1.0)
  {
    v23 = objc_loadWeakRetained(&self->_controller);
    v24 = v17;
    v25 = v18;
    v26 = v15;
    *v28 = v24;
    *&v28[1] = v25;
    v27 = v16;
    *&v28[2] = v26;
    *&v28[3] = v27;
    v28[4] = 0;
    [v23 pushGesture:v28];
  }
}

- (VKARWalkingDebugGestureCameraBehavior)initWithCameraController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = VKARWalkingDebugGestureCameraBehavior;
  v5 = [(VKGestureCameraBehavior *)&v8 initWithCameraController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
    v6->super._notifyCameraStateChanges = 1;
  }

  return v6;
}

@end