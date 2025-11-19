@interface _TVCarouselCollectionView
- (BOOL)_canScrollX;
@end

@implementation _TVCarouselCollectionView

- (BOOL)_canScrollX
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 2)
  {
    return 0;
  }

  return [(_TVCarouselCollectionView *)self isUserInteractionEnabled];
}

@end