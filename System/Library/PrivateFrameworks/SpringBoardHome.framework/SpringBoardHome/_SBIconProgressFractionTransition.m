@interface _SBIconProgressFractionTransition
+ (id)newTransitionToFraction:(double)a3;
- (BOOL)isCompleteWithView:(id)a3;
- (void)_updateView:(id)a3 forDisplayedFraction:(double)a4;
- (void)updateView:(id)a3 withElapsedTime:(double)a4;
@end

@implementation _SBIconProgressFractionTransition

+ (id)newTransitionToFraction:(double)a3
{
  v4 = objc_alloc_init(a1);
  [v4 updateToFraction:a3];
  return v4;
}

- (void)updateView:(id)a3 withElapsedTime:(double)a4
{
  v5 = a4 * 0.3;
  v8 = a3;
  [v8 displayedFraction];
  targetFraction = v5 + v6;
  if (self->_targetFraction < targetFraction)
  {
    targetFraction = self->_targetFraction;
  }

  [(_SBIconProgressFractionTransition *)self _updateView:v8 forDisplayedFraction:targetFraction];
}

- (void)_updateView:(id)a3 forDisplayedFraction:(double)a4
{
  v5 = a3;
  [v5 setDisplayedFraction:a4];
  [v5 circleBoundingRect];
  [v5 setNeedsDisplayInRect:?];
}

- (BOOL)isCompleteWithView:(id)a3
{
  [a3 displayedFraction];

  return BSFloatEqualToFloat();
}

@end