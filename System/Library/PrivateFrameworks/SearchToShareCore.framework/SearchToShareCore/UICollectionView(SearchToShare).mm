@interface UICollectionView(SearchToShare)
- (void)sts_enumerateAllIndexPathsUsingBlock:()SearchToShare;
@end

@implementation UICollectionView(SearchToShare)

- (void)sts_enumerateAllIndexPathsUsingBlock:()SearchToShare
{
  v4 = a3;
  v14 = 0;
  numberOfSections = [self numberOfSections];
  if (numberOfSections)
  {
    v6 = numberOfSections;
    for (i = 0; i != v6; ++i)
    {
      v8 = [self numberOfItemsInSection:i];
      if (v8)
      {
        v9 = v8;
        v10 = 1;
        do
        {
          v11 = [MEMORY[0x277CCAA70] indexPathForItem:v10 - 1 inSection:i];
          v4[2](v4, v11, &v14);
          v12 = v14;

          if (v12)
          {
            break;
          }
        }

        while (v10++ < v9);
      }

      if (v14)
      {
        break;
      }
    }
  }
}

@end