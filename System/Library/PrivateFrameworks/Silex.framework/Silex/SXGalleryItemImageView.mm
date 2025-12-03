@interface SXGalleryItemImageView
- (BOOL)isAccessibilityElement;
- (SXGalleryItemImageView)initWithGalleryItem:(id)item imageResource:(id)resource resourceDataSource:(id)source reachabilityProvider:(id)provider;
- (id)accessibilityLabel;
@end

@implementation SXGalleryItemImageView

- (SXGalleryItemImageView)initWithGalleryItem:(id)item imageResource:(id)resource resourceDataSource:(id)source reachabilityProvider:(id)provider
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = SXGalleryItemImageView;
  v12 = [(SXImageView *)&v15 initWithImageResource:resource resourceDataSource:source reachabilityProvider:provider];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_galleryItem, item);
  }

  return v13;
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(SXGalleryItemImageView *)self accessibilityLabel];
  if ([accessibilityLabel length])
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
  galleryItem = [(SXGalleryItemImageView *)self galleryItem];
  accessibilityCaption = [galleryItem accessibilityCaption];

  if (![accessibilityCaption length])
  {
    galleryItem2 = [(SXGalleryItemImageView *)self galleryItem];
    caption = [galleryItem2 caption];

    accessibilityCaption = caption;
  }

  return accessibilityCaption;
}

@end