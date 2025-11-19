@interface VideosExtrasCarouselCollectionView
- (VideosExtrasCarouselCollectionViewDelegate)carouselCollectionViewDelegate;
- (void)didAddSubview:(id)a3;
@end

@implementation VideosExtrasCarouselCollectionView

- (void)didAddSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = VideosExtrasCarouselCollectionView;
  [(VideosExtrasCarouselCollectionView *)&v5 didAddSubview:a3];
  v4 = [(VideosExtrasCarouselCollectionView *)self carouselCollectionViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 subviewsDidChangeForCarouselCollectionView:self];
  }
}

- (VideosExtrasCarouselCollectionViewDelegate)carouselCollectionViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_carouselCollectionViewDelegate);

  return WeakRetained;
}

@end