@interface PXNavigationBarAllowingUnclippedSubviewHitTest
- (id)_unclippedViewPassingHitTest:(id)test point:(CGPoint)point event:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PXNavigationBarAllowingUnclippedSubviewHitTest

- (id)_unclippedViewPassingHitTest:(id)test point:(CGPoint)point event:(id)event
{
  y = point.y;
  x = point.x;
  v25 = *MEMORY[0x1E69E9840];
  testCopy = test;
  eventCopy = event;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = testCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v12)
  {
LABEL_10:

    [MEMORY[0x1E695DF70] array];
    objc_claimAutoreleasedReturnValue();
    PXReduce();
  }

  v13 = v12;
  v14 = *v21;
LABEL_3:
  v15 = 0;
  while (1)
  {
    if (*v21 != v14)
    {
      objc_enumerationMutation(v11);
    }

    v16 = *(*(&v20 + 1) + 8 * v15);
    [(PXNavigationBarAllowingUnclippedSubviewHitTest *)self convertPoint:v16 toView:x, y, v20];
    v17 = [v16 hitTest:eventCopy withEvent:?];
    v18 = v17;
    if (v17)
    {
      if (![v17 clipsToBounds])
      {
        break;
      }
    }

    if (v13 == ++v15)
    {
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_3;
    }
  }

  return v18;
}

id __91__PXNavigationBarAllowingUnclippedSubviewHitTest__unclippedViewPassingHitTest_point_event___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (([v4 isHidden] & 1) == 0)
  {
    [v4 alpha];
    if (v6 > 0.01)
    {
      if ([v4 isUserInteractionEnabled])
      {
        v7 = [v4 subviews];
        [v5 addObjectsFromArray:v7];
      }
    }
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = PXNavigationBarAllowingUnclippedSubviewHitTest;
  v8 = [(PXNavigationBarAllowingUnclippedSubviewHitTest *)&v16 hitTest:eventCopy withEvent:x, y];
  topItem = [(PXNavigationBarAllowingUnclippedSubviewHitTest *)self topItem];
  _preferredNavigationBarVisibility = [topItem _preferredNavigationBarVisibility];

  if ((!v8 || __68__PXNavigationBarAllowingUnclippedSubviewHitTest_hitTest_withEvent___block_invoke()) && ([(PXNavigationBarAllowingUnclippedSubviewHitTest *)self isHidden]& 1) == 0)
  {
    [(PXNavigationBarAllowingUnclippedSubviewHitTest *)self alpha];
    if (v11 > 0.01 && [(PXNavigationBarAllowingUnclippedSubviewHitTest *)self isUserInteractionEnabled]&& !_preferredNavigationBarVisibility)
    {
      if (v8 && (__68__PXNavigationBarAllowingUnclippedSubviewHitTest_hitTest_withEvent___block_invoke() & 1) != 0)
      {
        selfCopy = v8;
      }

      else
      {
        selfCopy = self;
      }

      subviews = [(PXNavigationBarAllowingUnclippedSubviewHitTest *)selfCopy subviews];
      v14 = [(PXNavigationBarAllowingUnclippedSubviewHitTest *)self _unclippedViewPassingHitTest:subviews point:eventCopy event:x, y];

      v8 = v14;
    }
  }

  return v8;
}

uint64_t __68__PXNavigationBarAllowingUnclippedSubviewHitTest_hitTest_withEvent___block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = [v1 isEqualToString:@"UIKit.NavigationBarContentView"];

  return v2;
}

@end