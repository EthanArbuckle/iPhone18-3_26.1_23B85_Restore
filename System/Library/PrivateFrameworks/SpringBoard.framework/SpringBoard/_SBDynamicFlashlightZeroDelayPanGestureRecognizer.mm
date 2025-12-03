@interface _SBDynamicFlashlightZeroDelayPanGestureRecognizer
- (BOOL)_shouldTryToBeginWithEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation _SBDynamicFlashlightZeroDelayPanGestureRecognizer

- (BOOL)_shouldTryToBeginWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = _SBDynamicFlashlightZeroDelayPanGestureRecognizer;
  return [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)&v4 _shouldTryToBeginWithEvent:event];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _SBDynamicFlashlightZeroDelayPanGestureRecognizer;
  [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  if (![(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)self state])
  {
    [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)self setState:1];
  }
}

@end