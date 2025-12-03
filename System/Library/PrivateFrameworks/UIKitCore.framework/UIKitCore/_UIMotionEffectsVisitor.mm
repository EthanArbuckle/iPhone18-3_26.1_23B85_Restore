@interface _UIMotionEffectsVisitor
- (BOOL)_prepareToVisitView:(id)view changedSubview:(id)subview previousWindow:(id)window previousSuperview:(id)superview;
- (BOOL)_visitView:(id)view;
@end

@implementation _UIMotionEffectsVisitor

- (BOOL)_visitView:(id)view
{
  subviewAddedToHierarchy = self->_subviewAddedToHierarchy;
  _countOfMotionEffectsInSubtree = [view _countOfMotionEffectsInSubtree];
  countOfMotionEffectsInSubview = self->_countOfMotionEffectsInSubview;
  if (!subviewAddedToHierarchy)
  {
    countOfMotionEffectsInSubview = -countOfMotionEffectsInSubview;
  }

  [view _setCountOfMotionEffectsInSubtree:countOfMotionEffectsInSubview + _countOfMotionEffectsInSubtree];
  return 1;
}

- (BOOL)_prepareToVisitView:(id)view changedSubview:(id)subview previousWindow:(id)window previousSuperview:(id)superview
{
  _countOfMotionEffectsInSubtree = [subview _countOfMotionEffectsInSubtree];
  if (_countOfMotionEffectsInSubtree)
  {
    self->_subviewAddedToHierarchy = [subview superview] == view;
    self->_countOfMotionEffectsInSubview = [subview _countOfMotionEffectsInSubtree];
  }

  return _countOfMotionEffectsInSubtree != 0;
}

@end