@interface UIRectangularBoundingPath
@end

@implementation UIRectangularBoundingPath

void __50___UIRectangularBoundingPath__imageRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[UIColor whiteColor];
  [v3 setFill];

  [v5 fillRect:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  v4 = +[UIColor blackColor];
  [v4 setFill];

  [v5 fillRect:{*(*(a1 + 32) + 16), *(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40)}];
}

@end