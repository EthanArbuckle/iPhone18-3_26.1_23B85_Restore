@interface UIVectorTextLayout
@end

@implementation UIVectorTextLayout

void __38___UIVectorTextLayout__layoutIfNeeded__block_invoke(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v12.origin.x = a4;
  v12.origin.y = a5;
  v12.size.width = a6;
  v12.size.height = a7;
  if (!CGRectIsEmpty(v12))
  {
    v13.origin.x = a4;
    v13.origin.y = a5;
    v13.size.width = a6;
    v13.size.height = a7;
    *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v13);
  }
}

@end