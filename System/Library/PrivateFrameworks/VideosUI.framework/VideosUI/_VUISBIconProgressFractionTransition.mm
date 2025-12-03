@interface _VUISBIconProgressFractionTransition
+ (id)newTransitionToFraction:(double)fraction;
- (void)_updateView:(id)view forDisplayedFraction:(double)fraction;
- (void)updateView:(id)view withElapsedTime:(double)time;
@end

@implementation _VUISBIconProgressFractionTransition

+ (id)newTransitionToFraction:(double)fraction
{
  v4 = objc_alloc_init(self);
  [v4 updateToFraction:fraction];
  return v4;
}

- (void)updateView:(id)view withElapsedTime:(double)time
{
  v6 = time * 0.3;
  [view displayedFraction];
  targetFraction = v6 + v7;
  if (self->_targetFraction < targetFraction)
  {
    targetFraction = self->_targetFraction;
  }

  [(_VUISBIconProgressFractionTransition *)self _updateView:view forDisplayedFraction:targetFraction];
}

- (void)_updateView:(id)view forDisplayedFraction:(double)fraction
{
  [view setDisplayedFraction:fraction];
  [view circleBoundingRect];

  [view setNeedsDisplayInRect:?];
}

@end