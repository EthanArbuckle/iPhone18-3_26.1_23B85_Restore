@interface PUPhotoView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PUPhotoView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PUPhotoView

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUPhotoView;
  v4 = a3;
  [(PUPhotoView *)&v7 traitCollectionDidChange:v4];
  v5 = [(PUPhotoView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PUPhotoViewContentHelper *)self->_contentHelper contentViewSizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PUPhotoView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PUPhotoView;
  v3 = [(PUPhotoView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[PUPhotoViewContentHelper alloc] initWithContentView:v3];
    contentHelper = v3->_contentHelper;
    v3->_contentHelper = v4;
  }

  return v3;
}

@end