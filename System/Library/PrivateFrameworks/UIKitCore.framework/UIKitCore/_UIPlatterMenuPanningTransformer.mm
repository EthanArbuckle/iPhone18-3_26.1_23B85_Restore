@interface _UIPlatterMenuPanningTransformer
+ (_UIPlatterMenuPanningTransformer)transformerWithAxisTransitionZonePosition:(CGPoint)position axisTransitionZoneSize:(CGSize)size;
- (CGPoint)lastDirectionChangeTouchPosition;
- (CGPoint)lastTouchPosition;
- (CGPoint)lastTransformedPoint;
- (CGPoint)panBeginTouchPosition;
- (CGPoint)transitionZonePosition;
- (CGRect)transitionZoneRect;
- (CGSize)transitionZoneSize;
- (CGVector)lastOffset;
- (CGVector)offset;
- (CGVector)velocity;
- (_UIPlatterMenuPanningTransformer)initWithAxisTransitionZonePosition:(CGPoint)position axisTransitionZoneSize:(CGSize)size;
- (_UIPlatterMenuPanningTransformerDelegate)delegate;
- (double)timeIntervalSinceLastDirectionChange;
- (void)didBeginPanningWithTouchPosition:(CGPoint)position currentTransformedPosition:(CGPoint)transformedPosition;
- (void)didEndPanningWithTouchPosition:(CGPoint)position currentTransformedPosition:(CGPoint)transformedPosition;
- (void)didPanWithTouchPosition:(CGPoint)position currentTransformedPosition:(CGPoint)transformedPosition;
@end

@implementation _UIPlatterMenuPanningTransformer

- (_UIPlatterMenuPanningTransformer)initWithAxisTransitionZonePosition:(CGPoint)position axisTransitionZoneSize:(CGSize)size
{
  height = size.height;
  y = position.y;
  width = size.width;
  x = position.x;
  v20.receiver = self;
  v20.super_class = _UIPlatterMenuPanningTransformer;
  v5 = [(_UIPlatterMenuPanningTransformer *)&v20 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 4) = 0;
    v7.f64[0] = x;
    *(v5 + 9) = x;
    *(v5 + 10) = y;
    v8.f64[0] = width;
    v8.f64[1] = height + height;
    *(v5 + 11) = width;
    *(v5 + 12) = height;
    __asm { FMOV            V2.2D, #-0.5 }

    v7.f64[1] = y;
    *(v5 + 184) = vrndaq_f64(vaddq_f64(v7, vmulq_f64(v8, _Q2)));
    *(v5 + 25) = width;
    *(v5 + 26) = height + height;
    v14 = objc_alloc_init(_UIVelocityIntegrator);
    velocityIntegrator = v6->_velocityIntegrator;
    v6->_velocityIntegrator = v14;
  }

  return v6;
}

+ (_UIPlatterMenuPanningTransformer)transformerWithAxisTransitionZonePosition:(CGPoint)position axisTransitionZoneSize:(CGSize)size
{
  v4 = [[self alloc] initWithAxisTransitionZonePosition:position.x axisTransitionZoneSize:{position.y, size.width, size.height}];

  return v4;
}

- (double)timeIntervalSinceLastDirectionChange
{
  timeForLastDirectionalChange = [(_UIPlatterMenuPanningTransformer *)self timeForLastDirectionalChange];

  if (!timeForLastDirectionalChange)
  {
    return 0.0;
  }

  date = [MEMORY[0x1E695DF00] date];
  timeForLastDirectionalChange2 = [(_UIPlatterMenuPanningTransformer *)self timeForLastDirectionalChange];
  [date timeIntervalSinceDate:timeForLastDirectionalChange2];
  v7 = v6;

  return v7;
}

- (CGVector)offset
{
  [(_UIPlatterMenuPanningTransformer *)self transitionZonePosition];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = 0.0;
  v8 = v7 == *MEMORY[0x1E695EFF8] && v3 == v5;
  v9 = 0.0;
  if (!v8)
  {
    [(_UIPlatterMenuPanningTransformer *)self lastTransformedPoint];
    v12 = v11 == v4 && v10 == v5;
    v9 = 0.0;
    if (!v12)
    {
      [(_UIPlatterMenuPanningTransformer *)self transitionZonePosition];
      v14 = v13;
      [(_UIPlatterMenuPanningTransformer *)self lastTransformedPoint];
      v6 = v14 - v15;
      [(_UIPlatterMenuPanningTransformer *)self transitionZonePosition];
      v17 = v16;
      [(_UIPlatterMenuPanningTransformer *)self lastTransformedPoint];
      v9 = v17 - v18;
    }
  }

  v19 = v6;
  result.dy = v9;
  result.dx = v19;
  return result;
}

- (CGVector)velocity
{
  velocityIntegrator = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
  [velocityIntegrator velocity];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.dy = v8;
  result.dx = v7;
  return result;
}

- (void)didBeginPanningWithTouchPosition:(CGPoint)position currentTransformedPosition:(CGPoint)transformedPosition
{
  y = transformedPosition.y;
  x = transformedPosition.x;
  v6 = position.y;
  v7 = position.x;
  [(_UIPlatterMenuPanningTransformer *)self setLastDirectionChangeTouchPosition:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(_UIPlatterMenuPanningTransformer *)self setPanBeginTouchPosition:v7, v6];
  date = [MEMORY[0x1E695DF00] date];
  [(_UIPlatterMenuPanningTransformer *)self setPanBeginTime:date];

  if ([(_UIPlatterMenuPanningTransformer *)self overrideLockAxis])
  {
    [(_UIPlatterMenuPanningTransformer *)self setAxisLock:[(_UIPlatterMenuPanningTransformer *)self overrideLockAxis]];
  }

  velocityIntegrator = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
  [velocityIntegrator reset];

  velocityIntegrator2 = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
  [velocityIntegrator2 addSample:{v7, v6}];

  [(_UIPlatterMenuPanningTransformer *)self setTimeForLastDirectionalChange:0];
  [(_UIPlatterMenuPanningTransformer *)self setLastTransformedPoint:x, y];
  [(_UIPlatterMenuPanningTransformer *)self setLastTouchPosition:v7, v6];
  [(_UIPlatterMenuPanningTransformer *)self setLastOffset:0.0, 0.0];
  delegate = [(_UIPlatterMenuPanningTransformer *)self delegate];
  [delegate panningTransformer:self didBeginPanToTransformedPosition:{x, y}];
}

- (void)didPanWithTouchPosition:(CGPoint)position currentTransformedPosition:(CGPoint)transformedPosition
{
  y = transformedPosition.y;
  x = transformedPosition.x;
  v6 = position.y;
  v7 = position.x;
  [(_UIPlatterMenuPanningTransformer *)self lastTouchPosition];
  v10 = v9;
  [(_UIPlatterMenuPanningTransformer *)self lastTouchPosition];
  v12 = v11;
  if ([(_UIPlatterMenuPanningTransformer *)self overrideLockAxis])
  {
    [(_UIPlatterMenuPanningTransformer *)self setAxisLock:[(_UIPlatterMenuPanningTransformer *)self overrideLockAxis]];
  }

  v13 = v6 - v12;
  axisLock = [(_UIPlatterMenuPanningTransformer *)self axisLock];
  if ([(_UIPlatterMenuPanningTransformer *)self overrideLockAxis])
  {
    goto LABEL_4;
  }

  [(_UIPlatterMenuPanningTransformer *)self transitionZoneRect];
  v67.x = x;
  v67.y = y;
  if (!CGRectContainsPoint(v68, v67))
  {
    if ([(_UIPlatterMenuPanningTransformer *)self axisLock])
    {
      goto LABEL_4;
    }
  }

  [(_UIPlatterMenuPanningTransformer *)self panBeginTouchPosition];
  v29 = v28;
  v31 = v30;
  [(_UIPlatterMenuPanningTransformer *)self lastDirectionChangeTouchPosition];
  if (v33 != *MEMORY[0x1E695EFF8] || v32 != *(MEMORY[0x1E695EFF8] + 8))
  {
    [(_UIPlatterMenuPanningTransformer *)self lastDirectionChangeTouchPosition];
    v29 = v35;
    v31 = v36;
  }

  v37 = v7 - v29 >= 0.0 ? v7 - v29 : -(v7 - v29);
  v38 = v6 - v31 >= 0.0 ? v6 - v31 : -(v6 - v31);
  if (v37 <= 3.0 && v38 <= 3.0)
  {
    goto LABEL_4;
  }

  if (v37 >= 2.22044605e-16)
  {
    if (v38 >= 2.22044605e-16)
    {
      v54 = atan(v38 / v37) / 0.0174532925;
      if (v37 <= v38)
      {
        if (v54 > 45.0)
        {
          goto LABEL_42;
        }
      }

      else if (v54 <= 45.0)
      {
        v41 = 1;
        v40 = 1;
        goto LABEL_69;
      }
    }

    else if (v37 > v38)
    {
      v40 = 1;
      v41 = 1;
      goto LABEL_69;
    }

LABEL_82:
    [(_UIPlatterMenuPanningTransformer *)self axisLock];
    goto LABEL_4;
  }

  if (v37 > v38)
  {
    goto LABEL_82;
  }

LABEL_42:
  v40 = 0;
  v41 = 2;
LABEL_69:
  if ([(_UIPlatterMenuPanningTransformer *)self axisLock]== v41)
  {
    goto LABEL_4;
  }

  v55 = CACurrentMediaTime();
  [(_UIPlatterMenuPanningTransformer *)self lastAxisLockTime];
  v57 = v55 - v56;
  [(_UIPlatterMenuPanningTransformer *)self lastAxisLockTime];
  v59 = v57 >= 0.35 || v58 <= 0.0;
  if ((v40 & v59) != 1 || ([(_UIPlatterMenuPanningTransformer *)self minimumXVelocityForAxisLock], v60 <= 0.0))
  {
    if (!v59)
    {
      goto LABEL_4;
    }

    goto LABEL_80;
  }

  velocityIntegrator = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
  [velocityIntegrator velocity];
  v63 = v62;

  if (v63 < 0.0)
  {
    v63 = -v63;
  }

  [(_UIPlatterMenuPanningTransformer *)self minimumXVelocityForAxisLock];
  if (v63 >= v64)
  {
LABEL_80:
    [(_UIPlatterMenuPanningTransformer *)self setAxisLock:v41];
    [(_UIPlatterMenuPanningTransformer *)self setLastAxisLockTime:CACurrentMediaTime()];
  }

LABEL_4:
  v15 = y + v13;
  if ([(_UIPlatterMenuPanningTransformer *)self axisLock]== 2)
  {
    [(_UIPlatterMenuPanningTransformer *)self transitionZonePosition];
    v17 = v16;
    v18 = 0.0;
  }

  else
  {
    v18 = v7 - v10;
    v17 = x + v18;
    if ([(_UIPlatterMenuPanningTransformer *)self axisLock]== 1)
    {
      [(_UIPlatterMenuPanningTransformer *)self transitionZonePosition];
      v15 = v19;
      v13 = 0.0;
    }
  }

  [(_UIPlatterMenuPanningTransformer *)self setLastTouchPosition:v7, v6];
  if ([(_UIPlatterMenuPanningTransformer *)self axisLock])
  {
    velocityIntegrator2 = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
    [velocityIntegrator2 velocity];
    v22 = v21;
    v24 = v23;

    if ([(_UIPlatterMenuPanningTransformer *)self axisLock]== 1)
    {
      v25 = -v22;
      if (v22 >= 0.0)
      {
        v25 = v22;
      }

      if (v25 <= 2.22044605e-16)
      {
        goto LABEL_57;
      }

      v26 = -v18;
      if (v18 >= 0.0)
      {
        v26 = v18;
      }

      v27 = v22 < 0.0 && v18 < 0.0;
      if (v26 <= 2.22044605e-16 || v27 || v22 > 0.0 && v18 > 0.0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ([(_UIPlatterMenuPanningTransformer *)self axisLock]!= 2)
      {
        goto LABEL_57;
      }

      v42 = -v24;
      if (v24 >= 0.0)
      {
        v42 = v24;
      }

      if (v42 <= 2.22044605e-16)
      {
        goto LABEL_57;
      }

      v43 = -v13;
      if (v13 >= 0.0)
      {
        v43 = v13;
      }

      v44 = v24 < 0.0 && v13 < 0.0;
      if (v43 <= 2.22044605e-16 || v44 || v24 > 0.0 && v13 > 0.0)
      {
        goto LABEL_57;
      }
    }

    [(_UIPlatterMenuPanningTransformer *)self setLastDirectionChangeTouchPosition:v7, v6];
    date = [MEMORY[0x1E695DF00] date];
    [(_UIPlatterMenuPanningTransformer *)self setTimeForLastDirectionalChange:date];

    velocityIntegrator3 = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
    [velocityIntegrator3 reset];

LABEL_57:
    [(_UIPlatterMenuPanningTransformer *)self setLastOffset:v18, v13];
    [(_UIPlatterMenuPanningTransformer *)self setLastTransformedPoint:v17, v15];
    axisLock2 = [(_UIPlatterMenuPanningTransformer *)self axisLock];
    if (axisLock2 != axisLock)
    {
      [(_UIPlatterMenuPanningTransformer *)self setLastDirectionChangeTouchPosition:v7, v6];
      velocityIntegrator4 = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
      [velocityIntegrator4 reset];
    }

    v49 = axisLock2 != axisLock;
    delegate = [(_UIPlatterMenuPanningTransformer *)self delegate];
    velocityIntegrator5 = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
    [velocityIntegrator5 velocity];
    [delegate panningTransformer:self didPanToTransformedPosition:v49 offsetFromPrevious:-[_UIPlatterMenuPanningTransformer axisLock](self touchPosition:"axisLock") velocity:v17 didChangeAxis:v15 axisLock:{v18, v13, v7, v6, v52, v53}];
  }

  velocityIntegrator6 = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
  [velocityIntegrator6 addSample:{v7, v6}];
}

- (void)didEndPanningWithTouchPosition:(CGPoint)position currentTransformedPosition:(CGPoint)transformedPosition
{
  y = transformedPosition.y;
  x = transformedPosition.x;
  v6 = position.y;
  v7 = position.x;
  velocityIntegrator = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
  [velocityIntegrator addSample:{v7, v6}];

  delegate = [(_UIPlatterMenuPanningTransformer *)self delegate];
  [(_UIPlatterMenuPanningTransformer *)self lastOffset];
  v11 = v10;
  v13 = v12;
  velocityIntegrator2 = [(_UIPlatterMenuPanningTransformer *)self velocityIntegrator];
  [velocityIntegrator2 velocity];
  [delegate panningTransformer:self didEndPanToTransformedPosition:x offsetFromPrevious:y velocity:{v11, v13, v15, v16}];
}

- (_UIPlatterMenuPanningTransformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)transitionZonePosition
{
  x = self->_transitionZonePosition.x;
  y = self->_transitionZonePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)transitionZoneSize
{
  width = self->_transitionZoneSize.width;
  height = self->_transitionZoneSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)lastTouchPosition
{
  x = self->_lastTouchPosition.x;
  y = self->_lastTouchPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)transitionZoneRect
{
  x = self->_transitionZoneRect.origin.x;
  y = self->_transitionZoneRect.origin.y;
  width = self->_transitionZoneRect.size.width;
  height = self->_transitionZoneRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGVector)lastOffset
{
  dx = self->_lastOffset.dx;
  dy = self->_lastOffset.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGPoint)lastTransformedPoint
{
  x = self->_lastTransformedPoint.x;
  y = self->_lastTransformedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)panBeginTouchPosition
{
  x = self->_panBeginTouchPosition.x;
  y = self->_panBeginTouchPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastDirectionChangeTouchPosition
{
  x = self->_lastDirectionChangeTouchPosition.x;
  y = self->_lastDirectionChangeTouchPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end