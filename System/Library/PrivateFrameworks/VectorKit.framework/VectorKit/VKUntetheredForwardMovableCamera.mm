@interface VKUntetheredForwardMovableCamera
- (Matrix<double,)groundPoint;
- (Matrix<double,)rightVector;
- (VKCameraRegionRestriction)regionRestriction;
- (VKCameraState)cameraState;
- (const)orientation;
- (const)position;
- (double)maxHeight;
- (double)maxPitchRadian;
- (double)minHeight;
- (double)pitchRadian;
- (double)yawRadian;
- (optional<gm::Matrix<double,)groundPointFromScreenPoint:(1>> *__return_ptr)retstr;
- (void)setOrientation:(const void *)orientation;
- (void)setPosition:(const void *)position;
@end

@implementation VKUntetheredForwardMovableCamera

- (VKCameraRegionRestriction)regionRestriction
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    regionRestriction = [WeakRetained regionRestriction];
  }

  else
  {
    regionRestriction = 0;
  }

  return regionRestriction;
}

- (VKCameraState)cameraState
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cameraState];
  }

  else
  {
    *&retstr->var0._rotation._scalar = 0u;
    *&retstr->var2._value = 0u;
    *&retstr->var0._translation._e[2] = 0u;
    *&retstr->var0._rotation._imaginary._e[1] = 0u;
    *retstr->var0._translation._e = 0u;
    retstr->var0._rotation._scalar = 1.0;
  }

  return result;
}

- (Matrix<double,)groundPoint
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained groundPoint];
    v4 = v7;
    v3 = v8;
    v2 = v9;
  }

  v10 = v4;
  v11 = v3;
  v12 = v2;
  result._e[2] = v12;
  result._e[1] = v11;
  result._e[0] = v10;
  return result;
}

- (double)maxPitchRadian
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained maxPitchRadian];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (Matrix<double,)rightVector
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained rightVector];
    v4 = v7;
    v3 = v8;
    v2 = v9;
  }

  v10 = v4;
  v11 = v3;
  v12 = v2;
  result._e[2] = v12;
  result._e[1] = v11;
  result._e[0] = v10;
  return result;
}

- (double)yawRadian
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained yawRadian];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)pitchRadian
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained pitchRadian];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)maxHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained maxHeight];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (double)minHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained minHeight];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (optional<gm::Matrix<double,)groundPointFromScreenPoint:(1>> *__return_ptr)retstr
{
  y = a4.y;
  x = a4.x;
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained groundPointFromScreenPoint:{x, y}];
  }

  else
  {
    retstr->var0.__null_state_ = 0;
    retstr->__engaged_ = 0;
  }

  return result;
}

- (const)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    orientation = [WeakRetained orientation];
  }

  {
    orientation = &[VKUntetheredForwardMovableCamera orientation]::identity;
  }

  else
  {
    orientation = &[VKUntetheredForwardMovableCamera orientation]::identity;
    {
      [VKUntetheredForwardMovableCamera orientation]::identity = 0;
      *algn_1EB844C38 = 0;
      qword_1EB844C40 = 0;
      unk_1EB844C48 = 0x3FF0000000000000;
    }
  }

  return orientation;
}

- (void)setOrientation:(const void *)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  if (WeakRetained)
  {
    [WeakRetained setOrientation:orientation];
  }
}

- (const)position
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    position = [WeakRetained position];
  }

  {
    position = &[VKUntetheredForwardMovableCamera position]::zero;
  }

  else
  {
    position = &[VKUntetheredForwardMovableCamera position]::zero;
    {
      [VKUntetheredForwardMovableCamera position]::zero = 0;
      *algn_1EB844C18 = 0;
      qword_1EB844C20 = 0;
    }
  }

  return position;
}

- (void)setPosition:(const void *)position
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardMoveableCamera);
  if (WeakRetained)
  {
    [WeakRetained setPosition:position];
  }
}

@end