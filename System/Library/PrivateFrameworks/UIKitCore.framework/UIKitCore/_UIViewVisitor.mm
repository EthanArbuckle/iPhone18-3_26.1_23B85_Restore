@interface _UIViewVisitor
+ (void)_addHierarchyTrackingVisitor:(id)visitor;
+ (void)_removeHierarchyTrackingVisitor:(id)visitor;
+ (void)_startTraversalOfVisitor:(id)visitor withView:(id)view;
- (_UIViewVisitor)initWithTraversalDirection:(unint64_t)direction;
@end

@implementation _UIViewVisitor

+ (void)_addHierarchyTrackingVisitor:(id)visitor
{
  if ([visitor traversalDirection])
  {
    v4 = &_MergedGlobals_15_11;
  }

  else
  {
    if (([visitor traversalDirection] & 2) == 0)
    {
      return;
    }

    v4 = &qword_1ED49C1D0;
  }

  if (!*v4)
  {
    *v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  }

  [visitor setTracksHierarchy:1];
  v5 = *v4;

  [v5 addObject:visitor];
}

+ (void)_removeHierarchyTrackingVisitor:(id)visitor
{
  if ([visitor traversalDirection])
  {
    v4 = &_MergedGlobals_15_11;
  }

  else
  {
    if (([visitor traversalDirection] & 2) == 0)
    {
      return;
    }

    v4 = &qword_1ED49C1D0;
  }

  v5 = *v4;

  [v5 removeObject:visitor];
}

+ (void)_startTraversalOfVisitor:(id)visitor withView:(id)view
{
  v8[5] = *MEMORY[0x1E69E9840];
  if ([visitor tracksHierarchy])
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if ([visitor _prepareToVisitView:view changedSubview:0 previousWindow:0 previousSuperview:0])
  {
    [visitor set_currentlyVisitingHierarchy:1];
    if ([visitor traversalDirection])
    {
      _UIViewVisitorEntertainAscendingVisitors(v8, 1, view);
    }

    else if (([visitor traversalDirection] & 2) != 0)
    {
      _UIViewVisitorRecursivelyEntertainDescendingVisitors(v8, 1, view, 0);
    }

    [visitor set_currentlyVisitingHierarchy:0];
  }
}

- (_UIViewVisitor)initWithTraversalDirection:(unint64_t)direction
{
  v5.receiver = self;
  v5.super_class = _UIViewVisitor;
  result = [(_UIViewVisitor *)&v5 init];
  if (result)
  {
    result->_visitMaskViews = 1;
    result->_traversalDirection = direction;
  }

  return result;
}

@end