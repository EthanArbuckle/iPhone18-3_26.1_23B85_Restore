@interface SXGalleryItemImageView
- (BOOL)isAccessibilityElement;
- (SXGalleryItemImageView)initWithGalleryItem:(id)a3 imageResource:(id)a4 resourceDataSource:(id)a5 reachabilityProvider:(id)a6;
- (id)accessibilityLabel;
@end

@implementation SXGalleryItemImageView

- (SXGalleryItemImageView)initWithGalleryItem:(id)a3 imageResource:(id)a4 resourceDataSource:(id)a5 reachabilityProvider:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SXGalleryItemImageView;
  v12 = [(SXImageView *)&v15 initWithImageResource:a4 resourceDataSource:a5 reachabilityProvider:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_galleryItem, a3);
  }

  return v13;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SXGalleryItemImageView *)self accessibilityLabel];
  if ([v3 length])
  {
    v4 = ![self sxax_shouldBeOccluded];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(SXGalleryItemImageView *)self galleryItem];
  v4 = [v3 accessibilityCaption];

  if (![v4 length])
  {
    v5 = [(SXGalleryItemImageView *)self galleryItem];
    v6 = [v5 caption];

    v4 = v6;
  }

  return v4;
}

@end