@interface _UIViewVisitor
+ (void)_addHierarchyTrackingVisitor:(id)a3;
+ (void)_removeHierarchyTrackingVisitor:(id)a3;
+ (void)_startTraversalOfVisitor:(id)a3 withView:(id)a4;
- (_UIViewVisitor)initWithTraversalDirection:(unint64_t)a3;
@end

@implementation _UIViewVisitor

+ (void)_addHierarchyTrackingVisitor:(id)a3
{
  if ([a3 traversalDirection])
  {
    v4 = &_MergedGlobals_15_11;
  }

  else
  {
    if (([a3 traversalDirection] & 2) == 0)
    {
      return;
    }

    v4 = &qword_1ED49C1D0;
  }

  if (!*v4)
  {
    *v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  }

  [a3 setTracksHierarchy:1];
  v5 = *v4;

  [v5 addObject:a3];
}

+ (void)_removeHierarchyTrackingVisitor:(id)a3
{
  if ([a3 traversalDirection])
  {
    v4 = &_MergedGlobals_15_11;
  }

  else
  {
    if (([a3 traversalDirection] & 2) == 0)
    {
      return;
    }

    v4 = &qword_1ED49C1D0;
  }

  v5 = *v4;

  [v5 removeObject:a3];
}

+ (void)_startTraversalOfVisitor:(id)a3 withView:(id)a4
{
  v8[5] = *MEMORY[0x1E69E9840];
  if ([a3 tracksHierarchy])
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if ([a3 _prepareToVisitView:a4 changedSubview:0 previousWindow:0 previousSuperview:0])
  {
    [a3 set_currentlyVisitingHierarchy:1];
    if ([a3 traversalDirection])
    {
      _UIViewVisitorEntertainAscendingVisitors(v8, 1, a4);
    }

    else if (([a3 traversalDirection] & 2) != 0)
    {
      _UIViewVisitorRecursivelyEntertainDescendingVisitors(v8, 1, a4, 0);
    }

    [a3 set_currentlyVisitingHierarchy:0];
  }
}

- (_UIViewVisitor)initWithTraversalDirection:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIViewVisitor;
  result = [(_UIViewVisitor *)&v5 init];
  if (result)
  {
    result->_visitMaskViews = 1;
    result->_traversalDirection = a3;
  }

  return result;
}

@end