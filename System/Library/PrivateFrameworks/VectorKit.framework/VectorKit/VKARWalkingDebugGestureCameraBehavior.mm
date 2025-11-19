@interface VKARWalkingDebugGestureCameraBehavior
- (VKARWalkingDebugGestureCameraBehavior)initWithCameraController:(id)a3;
- (void)updatePan:(CGPoint)a3 lastScreenPoint:(CGPoint)a4;
- (void)updateRotate:(double)a3 atScreenPoint:(CGPoint)a4;
@end

@implementation VKARWalkingDebugGestureCameraBehavior

- (void)updateRotate:(double)a3 atScreenPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v9 = [WeakRetained canvas];
  [v9 size];
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_controller);
  v15 = v11 * x;
  v16 = v13 - y * v13;
  v17 = a3;
  v18 = v15;
  v19 = v16;
  v20 = 1;
  [v14 pushGesture:&v17];
}

- (void)updatePan:(CGPoint)a3 lastScreenPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v10 = [WeakRetained canvas];
  [v10 size];
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

- (VKARWalkingDebugGestureCameraBehavior)initWithCameraController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VKARWalkingDebugGestureCameraBehavior;
  v5 = [(VKGestureCameraBehavior *)&v8 initWithCameraController:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, v4);
    v6->super._notifyCameraStateChanges = 1;
  }

  return v6;
}

@end