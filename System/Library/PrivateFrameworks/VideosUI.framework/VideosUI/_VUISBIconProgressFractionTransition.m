@interface _VUISBIconProgressFractionTransition
+ (id)newTransitionToFraction:(double)a3;
- (void)_updateView:(id)a3 forDisplayedFraction:(double)a4;
- (void)updateView:(id)a3 withElapsedTime:(double)a4;
@end

@implementation _VUISBIconProgressFractionTransition

+ (id)newTransitionToFraction:(double)a3
{
  v4 = objc_alloc_init(a1);
  [v4 updateToFraction:a3];
  return v4;
}

- (void)updateView:(id)a3 withElapsedTime:(double)a4
{
  v6 = a4 * 0.3;
  [a3 displayedFraction];
  targetFraction = v6 + v7;
  if (self->_targetFraction < targetFraction)
  {
    targetFraction = self->_targetFraction;
  }

  [(_VUISBIconProgressFractionTransition *)self _updateView:a3 forDisplayedFraction:targetFraction];
}

- (void)_updateView:(id)a3 forDisplayedFraction:(double)a4
{
  [a3 setDisplayedFraction:a4];
  [a3 circleBoundingRect];

  [a3 setNeedsDisplayInRect:?];
}

@end