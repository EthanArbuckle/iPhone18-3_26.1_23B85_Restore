@interface CGPath
@end

@implementation CGPath

void __pv_create_closed_CGPath_with_points_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 CGPointValue];
  v7 = *(a1 + 32);
  if (a3)
  {

    CGPathAddLineToPoint(v7, 0, v5, v6);
  }

  else
  {

    CGPathMoveToPoint(v7, 0, v5, v6);
  }
}

@end