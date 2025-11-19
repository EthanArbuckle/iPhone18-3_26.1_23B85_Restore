@interface NSTextContentStorageReleaseElementsInRange
@end

@implementation NSTextContentStorageReleaseElementsInRange

void ____NSTextContentStorageReleaseElementsInRange_block_invoke(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v11 = v5;
    v12 = v4;
    v13 = v6;
    v14 = v7;
    v8 = a2;
    v9 = &a2[a4];
    do
    {
      [*v8 setTextContentManager:{0, v11, v12, v13, v14}];
      v10 = *v8++;
    }

    while (v8 < v9);
  }
}

@end