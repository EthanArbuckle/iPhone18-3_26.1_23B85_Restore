@interface PXAutoScroller
- (BOOL)autoscrollWithOffset:(CGPoint)a3;
- (CGPoint)_autoscrollDirection;
- (CGRect)visibleRectForScrollView:(id)a3;
- (PXAutoScroller)init;
- (PXAutoScroller)initWithTargetScrollView:(id)a3;
- (PXAutoScrollerDelegate)delegate;
- (void)_setAutoscrollDirection:(CGPoint)a3;
- (void)_setRepeating:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)startRepeating;
- (void)stopRepeating;
- (void)updateWithTimestamp:(double)a3;
- (void)updateWithUserInteractionLocation:(CGPoint)a3 inCoordinateSpace:(id)a4;
@end

@implementation PXAutoScroller

- (CGPoint)_autoscrollDirection
{
  x = self->__autoscrollDirection.x;
  y = self->__autoscrollDirection.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXAutoScrollerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setRepeating:(BOOL)a3
{
  if (self->__repeating != a3)
  {
    self->__repeating = a3;
    if (a3)
    {
      [(PXAutoScroller *)self _setLastUpdateTimestamp:0.0];

      [(PXAutoScroller *)self startRepeating];
    }

    else
    {

      [(PXAutoScroller *)self stopRepeating];
    }
  }
}

- (void)_setAutoscrollDirection:(CGPoint)a3
{
  if (a3.x != self->__autoscrollDirection.x || a3.y != self->__autoscrollDirection.y)
  {
    self->__autoscrollDirection = a3;
    v4 = a3.y != *(MEMORY[0x1E695EFF8] + 8) || a3.x != *MEMORY[0x1E695EFF8];
    [(PXAutoScroller *)self _setRepeating:v4];
  }
}

- (BOOL)autoscrollWithOffset:(CGPoint)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXAutoScroller.m" lineNumber:104 description:{@"Method %s is a responsibility of subclass %@", "-[PXAutoScroller autoscrollWithOffset:]", v7}];

  abort();
}

- (void)stopRepeating
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXAutoScroller.m" lineNumber:100 description:{@"Method %s is a responsibility of subclass %@", "-[PXAutoScroller stopRepeating]", v6}];

  abort();
}

- (void)startRepeating
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXAutoScroller.m" lineNumber:96 description:{@"Method %s is a responsibility of subclass %@", "-[PXAutoScroller startRepeating]", v6}];

  abort();
}

- (CGRect)visibleRectForScrollView:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAutoScroller.m" lineNumber:92 description:{@"Method %s is a responsibility of subclass %@", "-[PXAutoScroller visibleRectForScrollView:]", v8}];

  abort();
}

- (void)updateWithTimestamp:(double)a3
{
  if ([(PXAutoScroller *)self _isRepeating])
  {
    [(PXAutoScroller *)self _lastUpdateTimestamp];
    v6 = v5;
    [(PXAutoScroller *)self _setLastUpdateTimestamp:a3];
    if (v6 > 0.0)
    {
      v7 = a3 - v6;
      if (a3 - v6 < 0.0)
      {
        v7 = 0.0;
      }

      v24 = fmin(v7, 0.25);
      [(PXAutoScroller *)self _autoscrollDirection];
      v22 = v9;
      v23 = v8;
      [(PXAutoScroller *)self _margin];
      v21 = v10;
      [(PXAutoScroller *)self _maximumSpeed];
      v11.f64[0] = v23;
      v11.f64[1] = v22;
      v12 = vdivq_f64(v11, vdupq_lane_s64(v21, 0));
      __asm { FMOV            V2.2D, #-1.0 }

      v18 = vbslq_s8(vcgtq_f64(_Q2, v12), _Q2, v12);
      __asm { FMOV            V2.2D, #1.0 }

      if ([(PXAutoScroller *)self autoscrollWithOffset:vmulq_n_f64(vmulq_n_f64(vminnmq_f64(v18, _Q2), v20), v24)]&& self->_delegateRespondsTo.didAutoscrollWithTimestamp)
      {
        v25 = [(PXAutoScroller *)self delegate];
        [v25 autoScroller:self didAutoscrollWithTimestamp:a3];
      }
    }
  }
}

- (void)updateWithUserInteractionLocation:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXAutoScroller *)self scrollView];
  [(PXAutoScroller *)self visibleRectForScrollView:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(PXAutoScroller *)self _margin];
  v18 = v17;
  v25 = v8;
  [v7 convertPoint:v25 toCoordinateSpace:{x, y}];
  v20 = v19;
  v22 = v21;

  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  v28 = CGRectInset(v27, v18, v18);
  v23 = v28.origin.x + v28.size.width;
  if (v20 < v23)
  {
    v23 = v20;
  }

  if (v28.origin.x < v23)
  {
    v28.origin.x = v23;
  }

  v24 = v28.origin.y + v28.size.height;
  if (v22 < v28.origin.y + v28.size.height)
  {
    v24 = v22;
  }

  if (v28.origin.y < v24)
  {
    v28.origin.y = v24;
  }

  [(PXAutoScroller *)self _setAutoscrollDirection:v20 - v28.origin.x, v22 - v28.origin.y];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.didAutoscrollWithTimestamp = objc_opt_respondsToSelector() & 1;
  }
}

- (PXAutoScroller)initWithTargetScrollView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXAutoScroller;
  v6 = [(PXAutoScroller *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollView, a3);
    *&v7->__margin = xmmword_1B4074EE0;
  }

  return v7;
}

- (PXAutoScroller)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAutoScroller.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXAutoScroller init]"}];

  abort();
}

@end