@interface _UIMotionEffectsVisitor
- (BOOL)_prepareToVisitView:(id)a3 changedSubview:(id)a4 previousWindow:(id)a5 previousSuperview:(id)a6;
- (BOOL)_visitView:(id)a3;
@end

@implementation _UIMotionEffectsVisitor

- (BOOL)_visitView:(id)a3
{
  subviewAddedToHierarchy = self->_subviewAddedToHierarchy;
  v6 = [a3 _countOfMotionEffectsInSubtree];
  countOfMotionEffectsInSubview = self->_countOfMotionEffectsInSubview;
  if (!subviewAddedToHierarchy)
  {
    countOfMotionEffectsInSubview = -countOfMotionEffectsInSubview;
  }

  [a3 _setCountOfMotionEffectsInSubtree:countOfMotionEffectsInSubview + v6];
  return 1;
}

- (BOOL)_prepareToVisitView:(id)a3 changedSubview:(id)a4 previousWindow:(id)a5 previousSuperview:(id)a6
{
  v9 = [a4 _countOfMotionEffectsInSubtree];
  if (v9)
  {
    self->_subviewAddedToHierarchy = [a4 superview] == a3;
    self->_countOfMotionEffectsInSubview = [a4 _countOfMotionEffectsInSubtree];
  }

  return v9 != 0;
}

@end