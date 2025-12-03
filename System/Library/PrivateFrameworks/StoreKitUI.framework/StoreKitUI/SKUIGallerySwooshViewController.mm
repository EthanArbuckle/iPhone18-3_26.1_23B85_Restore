@interface SKUIGallerySwooshViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SKUIGallerySwooshViewController)initWithGallerySwoosh:(id)swoosh;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_newViewWithMediaComponent:(id)component;
- (id)artworkForItemAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)mediaView:(id)view playbackStateDidChange:(int64_t)change;
- (void)performActionForItemAtIndex:(int64_t)index animated:(BOOL)animated;
- (void)setColorScheme:(id)scheme;
- (void)setDelegate:(id)delegate;
- (void)setImage:(id)image forItemAtIndex:(int64_t)index;
@end

@implementation SKUIGallerySwooshViewController

- (SKUIGallerySwooshViewController)initWithGallerySwoosh:(id)swoosh
{
  swooshCopy = swoosh;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGallerySwooshViewController initWithGallerySwoosh:];
  }

  v15.receiver = self;
  v15.super_class = SKUIGallerySwooshViewController;
  v6 = [(SKUIGallerySwooshViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gallerySwoosh, swoosh);
    mediaComponents = [(SKUISwooshPageComponent *)v7->_gallerySwoosh mediaComponents];
    v9 = [mediaComponents count];

    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [(SKUIGallerySwooshViewController *)v7 artworkForItemAtIndex:i];
        itemHeight = v7->_itemHeight;
        height = [v11 height];
        if (itemHeight >= height)
        {
          height = itemHeight;
        }

        v7->_itemHeight = height;
      }
    }

    if ([(SKUISwooshPageComponent *)v7->_gallerySwoosh showsMediaTitles])
    {
      v7->_itemHeight = v7->_itemHeight + 27.0;
    }
  }

  return v7;
}

- (id)artworkForItemAtIndex:(int64_t)index
{
  mediaComponents = [(SKUISwooshPageComponent *)self->_gallerySwoosh mediaComponents];
  v5 = [mediaComponents objectAtIndex:index];

  bestThumbnailArtwork = [v5 bestThumbnailArtwork];

  return bestThumbnailArtwork;
}

- (void)performActionForItemAtIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  collectionView = self->_collectionView;
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  v8 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v6];

  contentChildView = [v8 contentChildView];
  [contentChildView beginPlaybackAnimated:animatedCopy];
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  colorScheme = [(SKUISwooshViewController *)self colorScheme];

  if (colorScheme != schemeCopy)
  {
    v6.receiver = self;
    v6.super_class = SKUIGallerySwooshViewController;
    [(SKUISwooshViewController *)&v6 setColorScheme:schemeCopy];
    [(SKUISwooshView *)self->_swooshView setColoringWithColorScheme:schemeCopy];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  self->_delegateWantsWillDisplay = objc_opt_respondsToSelector() & 1;
  v5.receiver = self;
  v5.super_class = SKUIGallerySwooshViewController;
  [(SKUISwooshViewController *)&v5 setDelegate:delegateCopy];
}

- (void)setImage:(id)image forItemAtIndex:(int64_t)index
{
  collectionView = self->_collectionView;
  v6 = MEMORY[0x277CCAA70];
  imageCopy = image;
  v8 = [v6 indexPathForItem:index inSection:0];
  v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

  contentChildView = [v10 contentChildView];
  [contentChildView setThumbnailImage:imageCopy];
}

- (void)loadView
{
  if (!self->_swooshView)
  {
    v3 = objc_alloc_init(SKUISwooshView);
    swooshView = self->_swooshView;
    self->_swooshView = v3;

    v5 = self->_swooshView;
    colorScheme = [(SKUISwooshViewController *)self colorScheme];
    [(SKUISwooshView *)v5 setColoringWithColorScheme:colorScheme];

    v7 = self->_swooshView;
    title = [(SKUISwooshPageComponent *)self->_gallerySwoosh title];
    [(SKUISwooshView *)v7 setTitle:title];

    [(SKUISwooshView *)self->_swooshView contentInsets];
    [(SKUISwooshView *)self->_swooshView setCollectionViewInsets:0.0, -v9, 0.0, -v10];
  }

  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v12 = objc_alloc_init(SKUISwooshCollectionViewLayout);
    [(UICollectionViewFlowLayout *)v12 setMinimumInteritemSpacing:20.0];
    [(UICollectionViewFlowLayout *)v12 setMinimumLineSpacing:20.0];
    [(UICollectionViewFlowLayout *)v12 setScrollDirection:1];
    [(SKUISwooshCollectionViewLayout *)v12 setSnapsToItemBoundaries:1];
    v13 = [objc_alloc(MEMORY[0x277D752A0]) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, self->_itemHeight}];
    v14 = self->_collectionView;
    self->_collectionView = v13;

    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"0"];
    [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
    v15 = self->_collectionView;
    backgroundColor = [(SKUISwooshView *)self->_swooshView backgroundColor];
    [(UICollectionView *)v15 setBackgroundColor:backgroundColor];

    [(UICollectionView *)self->_collectionView setDataSource:self];
    v17 = self->_collectionView;
    +[SKUISwooshCollectionViewLayout snapToBoundariesDecelerationRate];
    [(UICollectionView *)v17 setDecelerationRate:v18];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setScrollsToTop:0];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setPrefetchingEnabled:0];

    collectionView = self->_collectionView;
  }

  [(SKUISwooshView *)self->_swooshView setCollectionView:collectionView];
  [(SKUISwooshView *)self->_swooshView sizeToFit];
  v19 = self->_swooshView;

  [(SKUIGallerySwooshViewController *)self setView:v19];
}

- (void)mediaView:(id)view playbackStateDidChange:(int64_t)change
{
  viewCopy = view;
  delegate = [(SKUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [viewCopy bounds];
    [viewCopy convertRect:self->_collectionView toView:?];
    v7 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
    v8 = v7;
    if (v7)
    {
      [delegate swoosh:self didChangePlaybackState:change forItemAtIndex:{objc_msgSend(v7, "item")}];
    }
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"0" forIndexPath:pathCopy];
  backgroundColor = [viewCopy backgroundColor];

  [v8 setBackgroundColor:backgroundColor];
  item = [pathCopy item];

  mediaComponents = [(SKUISwooshPageComponent *)self->_gallerySwoosh mediaComponents];
  v12 = [mediaComponents objectAtIndex:item];

  delegate = [(SKUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [delegate swoosh:self imageForCellAtIndex:item];
  }

  else
  {
    v14 = 0;
  }

  bestThumbnailArtwork = [v12 bestThumbnailArtwork];
  v16 = [(SKUIGallerySwooshViewController *)self _newViewWithMediaComponent:v12];
  [v16 setThumbnailImage:v14];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  width = [bestThumbnailArtwork width];
  height = [bestThumbnailArtwork height];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v16 setBackgroundColor:blackColor];

  [v16 setFrame:{v18, v20, width, height}];
  [v8 setContentChildView:v16];
  if ([(SKUISwooshPageComponent *)self->_gallerySwoosh showsMediaTitles])
  {
    colorScheme = [(SKUISwooshViewController *)self colorScheme];
    [v8 setColoringWithColorScheme:colorScheme];

    title = [v12 title];
    v26 = title;
    if (title)
    {
      v27 = title;
    }

    else
    {
      v27 = &stru_2827FFAC8;
    }

    [v8 setTitle:v27];
  }

  if (self->_delegateWantsWillDisplay)
  {
    [delegate swoosh:self willDisplayCellAtIndex:item];
  }

  return v8;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(SKUISwooshPageComponent *)self->_gallerySwoosh mediaComponents:view];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(SKUISwooshViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate swoosh:self didSelectCellAtIndex:{objc_msgSend(pathCopy, "item")}];
  }
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 0.0;
  v6 = 15.0;
  v7 = 0.0;
  v8 = 15.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  itemHeight = self->_itemHeight;
  v6 = -[SKUIGallerySwooshViewController artworkForItemAtIndex:](self, "artworkForItemAtIndex:", [path item]);
  width = [v6 width];

  v8 = width;
  v9 = itemHeight;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)_newViewWithMediaComponent:(id)component
{
  componentCopy = component;
  v5 = objc_alloc_init(SKUIEmbeddedMediaView);
  accessibilityLabel = [componentCopy accessibilityLabel];
  [(SKUIEmbeddedMediaView *)v5 setAccessibilityLabel:accessibilityLabel];

  [(SKUIEmbeddedMediaView *)v5 setDelegate:self];
  -[SKUIEmbeddedMediaView setMediaType:](v5, "setMediaType:", [componentCopy mediaType]);
  mediaURLString = [componentCopy mediaURLString];

  [(SKUIEmbeddedMediaView *)v5 setMediaURLString:mediaURLString];
  return v5;
}

- (void)initWithGallerySwoosh:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGallerySwooshViewController initWithGallerySwoosh:]";
}

@end