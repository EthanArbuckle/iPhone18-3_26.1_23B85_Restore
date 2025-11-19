@interface UITraitCollectionInlinePointerSetForTraitEnvironment
@end

@implementation UITraitCollectionInlinePointerSetForTraitEnvironment

void ___UITraitCollectionInlinePointerSetForTraitEnvironment_block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  if (!_UIInlinePointerSetContainsElement(v3, a2))
  {
    v4 = *v3;
    if (*v3 > 0xCuLL)
    {
      v5 = *(v3 + 16);
      if (!v5)
      {
        *(v3 + 16) = __UIInlinePointerSetCreateHashTableWithCapacity(26);
        v6 = (v3 + 24);
        do
        {
          v7 = *v6++;
          NSHashInsert(*(v3 + 16), v7);
          --v4;
        }

        while (v4);
        v5 = *(v3 + 16);
      }

      NSHashInsert(v5, a2);
      v4 = *v3;
    }

    else
    {
      *(v3 + 8 * v4 + 24) = a2;
    }

    v8 = (1 << (a2 >> 4)) | (1 << (a2 >> 10)) | (1 << SBYTE2(a2)) | *(v3 + 8);
    *v3 = v4 + 1;
    *(v3 + 8) = v8;
  }
}

@end