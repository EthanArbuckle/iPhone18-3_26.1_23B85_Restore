@interface _UIDynamicItemObservingBehavior
- (CGVector)targetVelocity;
- (void)willMoveToAnimator:(id)a3;
@end

@implementation _UIDynamicItemObservingBehavior

- (void)willMoveToAnimator:(id)a3
{
  v4 = a3;
  [(_UIDynamicItemObservingBehavior *)self setEnabled:1];
  [(_UIDynamicItemObservingBehavior *)self setFrameCount:0];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___UIDynamicItemObservingBehavior_willMoveToAnimator___block_invoke;
  v5[3] = &unk_1E70F5A28;
  objc_copyWeak(&v6, &location);
  [(UIDynamicBehavior *)self setAction:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (CGVector)targetVelocity
{
  dx = self->_targetVelocity.dx;
  dy = self->_targetVelocity.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end