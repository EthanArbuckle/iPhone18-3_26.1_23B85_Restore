@interface _SBDynamicFlashlightZeroDelayPanGestureRecognizer
- (BOOL)_shouldTryToBeginWithEvent:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation _SBDynamicFlashlightZeroDelayPanGestureRecognizer

- (BOOL)_shouldTryToBeginWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SBDynamicFlashlightZeroDelayPanGestureRecognizer;
  return [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)&v4 _shouldTryToBeginWithEvent:a3];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _SBDynamicFlashlightZeroDelayPanGestureRecognizer;
  [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  if (![(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)self state])
  {
    [(_SBDynamicFlashlightZeroDelayPanGestureRecognizer *)self setState:1];
  }
}

@end