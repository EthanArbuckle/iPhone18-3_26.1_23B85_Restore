@interface _UIFocusTrackingVisitor
- (BOOL)_prepareToVisitView:(id)a3 changedSubview:(id)a4 previousWindow:(id)a5 previousSuperview:(id)a6;
- (BOOL)_visitView:(id)a3;
@end

@implementation _UIFocusTrackingVisitor

- (BOOL)_visitView:(id)a3
{
  subviewAddedToHierarchy = self->_subviewAddedToHierarchy;
  v6 = [a3 _countOfFocusedAncestorTrackingViewsInSubtree];
  countOfFocusedAncestorTrackingViewsInSubtree = self->_countOfFocusedAncestorTrackingViewsInSubtree;
  if (!subviewAddedToHierarchy)
  {
    countOfFocusedAncestorTrackingViewsInSubtree = -countOfFocusedAncestorTrackingViewsInSubtree;
  }

  [a3 _setCountOfFocusedAncestorTrackingViewsInSubtree:countOfFocusedAncestorTrackingViewsInSubtree + v6];
  return 1;
}

- (BOOL)_prepareToVisitView:(id)a3 changedSubview:(id)a4 previousWindow:(id)a5 previousSuperview:(id)a6
{
  v9 = [a4 _countOfFocusedAncestorTrackingViewsInSubtree];
  if (v9)
  {
    self->_subviewAddedToHierarchy = [a4 superview] == a3;
    self->_countOfFocusedAncestorTrackingViewsInSubtree = [a4 _countOfFocusedAncestorTrackingViewsInSubtree];
  }

  return v9 != 0;
}

@end