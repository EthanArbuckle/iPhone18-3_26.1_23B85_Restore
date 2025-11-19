@interface UITextKitTextRange
@end

@implementation UITextKitTextRange

void __37___UITextKitTextRange_unionTextRange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v10 = v3;
  if (v5)
  {
    v6 = [v5 textRangeByFormingUnionWithTextRange:v3];
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = v3;
    v8 = *(v4 + 40);
    *(v4 + 40) = v9;
  }
}

@end