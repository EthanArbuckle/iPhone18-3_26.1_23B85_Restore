@interface _PUIDPointerControllerClientState
- (CATransform3D)transformFromClientContextToDisplay;
- (_PUIDPointerControllerClientState)init;
- (void)invalidateAutomaticRegionExitTimer;
- (void)setTransformFromClientContextToDisplay:(CATransform3D *)display;
- (void)startAutomaticRegionExitTimerWithDelayInterval:(double)interval fireHandler:(id)handler;
@end

@implementation _PUIDPointerControllerClientState

- (_PUIDPointerControllerClientState)init
{
  v7.receiver = self;
  v7.super_class = _PUIDPointerControllerClientState;
  result = [(_PUIDPointerControllerClientState *)&v7 init];
  if (result)
  {
    v3 = *&CATransform3DIdentity.m33;
    *&result->_transformFromClientContextToDisplay.m31 = *&CATransform3DIdentity.m31;
    *&result->_transformFromClientContextToDisplay.m33 = v3;
    v4 = *&CATransform3DIdentity.m43;
    *&result->_transformFromClientContextToDisplay.m41 = *&CATransform3DIdentity.m41;
    *&result->_transformFromClientContextToDisplay.m43 = v4;
    v5 = *&CATransform3DIdentity.m13;
    *&result->_transformFromClientContextToDisplay.m11 = *&CATransform3DIdentity.m11;
    *&result->_transformFromClientContextToDisplay.m13 = v5;
    v6 = *&CATransform3DIdentity.m23;
    *&result->_transformFromClientContextToDisplay.m21 = *&CATransform3DIdentity.m21;
    *&result->_transformFromClientContextToDisplay.m23 = v6;
  }

  return result;
}

- (void)invalidateAutomaticRegionExitTimer
{
  [(NSTimer *)self->_automaticHoverRegionExitTimer invalidate];
  automaticHoverRegionExitTimer = self->_automaticHoverRegionExitTimer;
  self->_automaticHoverRegionExitTimer = 0;
}

- (void)startAutomaticRegionExitTimerWithDelayInterval:(double)interval fireHandler:(id)handler
{
  handlerCopy = handler;
  [(NSTimer *)self->_automaticHoverRegionExitTimer invalidate];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001011C;
  v10[3] = &unk_1000490F0;
  objc_copyWeak(&v12, &location);
  v7 = handlerCopy;
  v11 = v7;
  v8 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v10 block:interval];
  automaticHoverRegionExitTimer = self->_automaticHoverRegionExitTimer;
  self->_automaticHoverRegionExitTimer = v8;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (CATransform3D)transformFromClientContextToDisplay
{
  v3 = *&self[1].m11;
  *&retstr->m31 = *&self->m43;
  *&retstr->m33 = v3;
  v4 = *&self[1].m21;
  *&retstr->m41 = *&self[1].m13;
  *&retstr->m43 = v4;
  v5 = *&self->m31;
  *&retstr->m11 = *&self->m23;
  *&retstr->m13 = v5;
  v6 = *&self->m41;
  *&retstr->m21 = *&self->m33;
  *&retstr->m23 = v6;
  return self;
}

- (void)setTransformFromClientContextToDisplay:(CATransform3D *)display
{
  v3 = *&display->m11;
  v4 = *&display->m13;
  v5 = *&display->m23;
  *&self->_transformFromClientContextToDisplay.m21 = *&display->m21;
  *&self->_transformFromClientContextToDisplay.m23 = v5;
  *&self->_transformFromClientContextToDisplay.m11 = v3;
  *&self->_transformFromClientContextToDisplay.m13 = v4;
  v6 = *&display->m31;
  v7 = *&display->m33;
  v8 = *&display->m43;
  *&self->_transformFromClientContextToDisplay.m41 = *&display->m41;
  *&self->_transformFromClientContextToDisplay.m43 = v8;
  *&self->_transformFromClientContextToDisplay.m31 = v6;
  *&self->_transformFromClientContextToDisplay.m33 = v7;
}

@end