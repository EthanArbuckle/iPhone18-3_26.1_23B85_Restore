@interface VideosExtrasCarouselCollectionView
- (VideosExtrasCarouselCollectionViewDelegate)carouselCollectionViewDelegate;
- (void)didAddSubview:(id)subview;
@end

@implementation VideosExtrasCarouselCollectionView

- (void)didAddSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = VideosExtrasCarouselCollectionView;
  [(VideosExtrasCarouselCollectionView *)&v5 didAddSubview:subview];
  carouselCollectionViewDelegate = [(VideosExtrasCarouselCollectionView *)self carouselCollectionViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [carouselCollectionViewDelegate subviewsDidChangeForCarouselCollectionView:self];
  }
}

- (VideosExtrasCarouselCollectionViewDelegate)carouselCollectionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_carouselCollectionViewDelegate);

  return WeakRetained;
}

@end