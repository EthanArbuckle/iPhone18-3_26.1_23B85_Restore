@interface UIAutoScrollerItemBehavior
@end

@implementation UIAutoScrollerItemBehavior

uint64_t __63___UIAutoScrollerItemBehavior_offsetForAutoScroller_timeDelta___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MaxY = CGRectGetMaxY(*&a2);
  v16.origin.x = a6;
  v16.origin.y = a7;
  v16.size.width = a8;
  v16.size.height = a9;
  if (MaxY <= CGRectGetMaxY(v16) + -5.0)
  {
    return 0;
  }

  else
  {
    return (*(a1 + 32) >> 4) & 1;
  }
}

uint64_t __63___UIAutoScrollerItemBehavior_offsetForAutoScroller_timeDelta___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinY = CGRectGetMinY(*&a2);
  v16.origin.x = a6;
  v16.origin.y = a7;
  v16.size.width = a8;
  v16.size.height = a9;
  if (MinY >= CGRectGetMinY(v16) + 5.0)
  {
    return 0;
  }

  else
  {
    return (*(a1 + 32) >> 3) & 1;
  }
}

uint64_t __63___UIAutoScrollerItemBehavior_offsetForAutoScroller_timeDelta___block_invoke_3(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MaxX = CGRectGetMaxX(*&a2);
  v16.origin.x = a6;
  v16.origin.y = a7;
  v16.size.width = a8;
  v16.size.height = a9;
  if (MaxX <= CGRectGetMaxX(v16) + -5.0)
  {
    return 0;
  }

  else
  {
    return (*(a1 + 32) >> 2) & 1;
  }
}

uint64_t __63___UIAutoScrollerItemBehavior_offsetForAutoScroller_timeDelta___block_invoke_4(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinX = CGRectGetMinX(*&a2);
  v16.origin.x = a6;
  v16.origin.y = a7;
  v16.size.width = a8;
  v16.size.height = a9;
  if (MinX >= CGRectGetMinX(v16) + 5.0)
  {
    return 0;
  }

  else
  {
    return (*(a1 + 32) >> 1) & 1;
  }
}

@end