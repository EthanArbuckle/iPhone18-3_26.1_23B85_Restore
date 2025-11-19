@interface NSAttributedString
@end

@implementation NSAttributedString

void __64__NSAttributedString_TVMLKitAdditions__tv_currentParagraphStyle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  if (v3 != a2)
  {
    *(v2 + 40) = 0;
  }
}

void __68__NSAttributedString_TVMLKitAdditions__boundingRectWithWidth_lines___block_invoke(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v13.size.height = a5;
  v13.size.width = a4;
  v13.origin.y = a3;
  v13.origin.x = a2;
  ++*(*(a1[4] + 8) + 24);
  v12 = CGRectUnion(*(*(a1[5] + 8) + 32), v13);
  v11 = a1[6];
  *(*(a1[5] + 8) + 32) = v12;
  if (v11)
  {
    if (*(*(a1[4] + 8) + 24) >= v11)
    {
      *a9 = 1;
    }
  }
}

@end