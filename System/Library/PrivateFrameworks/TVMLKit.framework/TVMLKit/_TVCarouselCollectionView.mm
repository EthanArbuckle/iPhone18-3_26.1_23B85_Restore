@interface _TVCarouselCollectionView
- (BOOL)_canScrollX;
@end

@implementation _TVCarouselCollectionView

- (BOOL)_canScrollX
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    return 0;
  }

  return [(_TVCarouselCollectionView *)self isUserInteractionEnabled];
}

@end