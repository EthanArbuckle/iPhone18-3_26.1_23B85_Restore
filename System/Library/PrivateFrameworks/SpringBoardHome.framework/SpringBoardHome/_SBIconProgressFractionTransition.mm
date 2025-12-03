@interface _SBIconProgressFractionTransition
+ (id)newTransitionToFraction:(double)fraction;
- (BOOL)isCompleteWithView:(id)view;
- (void)_updateView:(id)view forDisplayedFraction:(double)fraction;
- (void)updateView:(id)view withElapsedTime:(double)time;
@end

@implementation _SBIconProgressFractionTransition

+ (id)newTransitionToFraction:(double)fraction
{
  v4 = objc_alloc_init(self);
  [v4 updateToFraction:fraction];
  return v4;
}

- (void)updateView:(id)view withElapsedTime:(double)time
{
  v5 = time * 0.3;
  viewCopy = view;
  [viewCopy displayedFraction];
  targetFraction = v5 + v6;
  if (self->_targetFraction < targetFraction)
  {
    targetFraction = self->_targetFraction;
  }

  [(_SBIconProgressFractionTransition *)self _updateView:viewCopy forDisplayedFraction:targetFraction];
}

- (void)_updateView:(id)view forDisplayedFraction:(double)fraction
{
  viewCopy = view;
  [viewCopy setDisplayedFraction:fraction];
  [viewCopy circleBoundingRect];
  [viewCopy setNeedsDisplayInRect:?];
}

- (BOOL)isCompleteWithView:(id)view
{
  [view displayedFraction];

  return BSFloatEqualToFloat();
}

@end