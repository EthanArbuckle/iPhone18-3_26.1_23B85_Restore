@interface _UIFocusTrackingVisitor
- (BOOL)_prepareToVisitView:(id)view changedSubview:(id)subview previousWindow:(id)window previousSuperview:(id)superview;
- (BOOL)_visitView:(id)view;
@end

@implementation _UIFocusTrackingVisitor

- (BOOL)_visitView:(id)view
{
  subviewAddedToHierarchy = self->_subviewAddedToHierarchy;
  _countOfFocusedAncestorTrackingViewsInSubtree = [view _countOfFocusedAncestorTrackingViewsInSubtree];
  countOfFocusedAncestorTrackingViewsInSubtree = self->_countOfFocusedAncestorTrackingViewsInSubtree;
  if (!subviewAddedToHierarchy)
  {
    countOfFocusedAncestorTrackingViewsInSubtree = -countOfFocusedAncestorTrackingViewsInSubtree;
  }

  [view _setCountOfFocusedAncestorTrackingViewsInSubtree:countOfFocusedAncestorTrackingViewsInSubtree + _countOfFocusedAncestorTrackingViewsInSubtree];
  return 1;
}

- (BOOL)_prepareToVisitView:(id)view changedSubview:(id)subview previousWindow:(id)window previousSuperview:(id)superview
{
  _countOfFocusedAncestorTrackingViewsInSubtree = [subview _countOfFocusedAncestorTrackingViewsInSubtree];
  if (_countOfFocusedAncestorTrackingViewsInSubtree)
  {
    self->_subviewAddedToHierarchy = [subview superview] == view;
    self->_countOfFocusedAncestorTrackingViewsInSubtree = [subview _countOfFocusedAncestorTrackingViewsInSubtree];
  }

  return _countOfFocusedAncestorTrackingViewsInSubtree != 0;
}

@end