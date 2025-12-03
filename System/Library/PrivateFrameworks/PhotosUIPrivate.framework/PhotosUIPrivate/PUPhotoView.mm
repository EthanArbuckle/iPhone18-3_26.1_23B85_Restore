@interface PUPhotoView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PUPhotoView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PUPhotoView

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = PUPhotoView;
  changeCopy = change;
  [(PUPhotoView *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(PUPhotoView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v6)
  {
    [(PUPhotoViewContentHelper *)self->_contentHelper contentViewDynamicUserInterfaceTraitDidChange];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPhotoView;
  [(PUPhotoView *)&v3 layoutSubviews];
  [(PUPhotoViewContentHelper *)self->_contentHelper layoutSubviewsOfContentView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PUPhotoViewContentHelper *)self->_contentHelper contentViewSizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PUPhotoView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PUPhotoView;
  v3 = [(PUPhotoView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[PUPhotoViewContentHelper alloc] initWithContentView:v3];
    contentHelper = v3->_contentHelper;
    v3->_contentHelper = v4;
  }

  return v3;
}

@end