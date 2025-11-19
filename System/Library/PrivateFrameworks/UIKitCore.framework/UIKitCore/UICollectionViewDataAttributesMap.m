@interface UICollectionViewDataAttributesMap
@end

@implementation UICollectionViewDataAttributesMap

void __59___UICollectionViewDataAttributesMap_indexesOfItemsInRect___block_invoke(uint64_t a1, uint64_t *a2, int8x16_t a3)
{
  v3 = *a2;
  if (*a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 24);
    if (v6 == v3)
    {
      *(v5 + 24) = v3 + 1;
    }

    else
    {
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 24);
      if (v8 == v3 + 1)
      {
        *(v7 + 24) = v3;
      }

      else
      {
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(_UIMutableFastIndexSet *)*(a1 + 32) addIndexesInRange:v8, v6 - v8, a3];
          v7 = *(*(a1 + 48) + 8);
        }

        *(v7 + 24) = v3;
        *(*(*(a1 + 40) + 8) + 24) = v3 + 1;
      }
    }
  }
}

@end