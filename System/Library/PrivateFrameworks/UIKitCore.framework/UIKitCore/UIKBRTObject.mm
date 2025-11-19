@interface UIKBRTObject
@end

@implementation UIKBRTObject

void __26___UIKBRTObject_setOwner___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

void __30___UIKBRTObject_previousEntry__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) indexOfObject:?];
  if (v2)
  {
    v3 = v2 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = [*(*(a1 + 32) + 8) objectAtIndex:v2 - 1];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void __26___UIKBRTObject_nextEntry__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) indexOfObject:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v2 + 1;
    if (v2 + 1 < [*(*(a1 + 32) + 8) count])
    {
      v4 = [*(*(a1 + 32) + 8) objectAtIndex:v3];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }
  }
}

@end