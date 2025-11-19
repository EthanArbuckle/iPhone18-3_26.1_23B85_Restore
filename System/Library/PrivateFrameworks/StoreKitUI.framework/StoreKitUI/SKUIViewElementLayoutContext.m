@interface SKUIViewElementLayoutContext
+ (double)_calculateValueFromString:(id)a3 withDefault:(double)a4 coefficent:(double)a5;
+ (double)itemWidthForElement:(id)a3 withDefaultWidth:(double)a4 fitWidth:(double)a5;
- (BOOL)_loadImageForURL:(id)a3 cacheKey:(id)a4 dataConsumer:(id)a5 reason:(int64_t)a6;
- (BOOL)loadImageForArtwork:(id)a3 dataConsumer:(id)a4 reason:(int64_t)a5;
- (BOOL)loadImageForArtwork:(id)a3 reason:(int64_t)a4;
- (BOOL)loadImageForBadgeElement:(id)a3 reason:(int64_t)a4;
- (BOOL)loadImageForImageElement:(id)a3 reason:(int64_t)a4;
- (BOOL)loadImageForImageElement:(id)a3 reason:(int64_t)a4 dataConsumer:(id)a5;
- (BOOL)loadTemplatedImageForBadgeElement:(id)a3 reason:(int64_t)a4;
- (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4;
- (CGSize)_sizeForImageElement:(id)a3 applyTransform:(BOOL)a4;
- (CGSize)sizeForBadgeElement:(id)a3;
- (CGSize)sizeForImageElement:(id)a3;
- (CGSize)sizeForItemOfferButton:(id)a3;
- (CGSize)sizeForViewElement:(id)a3 width:(double)a4;
- (MPUBorderDrawingCache)borderDrawingCache;
- (SKUIArtworkRequestDelegate)artworkRequestDelegate;
- (SKUIBadgeTextAttachmentLoader)badgeImageLoader;
- (SKUIViewElementLayoutContext)initWithStorePageSectionContext:(id)a3 previousLayoutContext:(id)a4;
- (UIEdgeInsets)largeScreenElementPadding;
- (UIViewController)parentViewController;
- (double)defaultItemWidthForViewElement:(id)a3;
- (double)displayScale;
- (id)_initSKUIViewElementLayoutContext;
- (id)blurColorForCacheKey:(id)a3;
- (id)dataConsumerForImageElement:(id)a3;
- (id)editorialLayoutForLabelElement:(id)a3 width:(double)a4;
- (id)imageResourceCacheKeyForViewElement:(id)a3;
- (id)placeholderImageForImageElement:(id)a3 dataConsumer:(id)a4;
- (id)placeholderImageForSize:(CGSize)a3;
- (id)requestIdentifierForArtwork:(id)a3;
- (id)requestIdentifierForResourceCacheKey:(id)a3;
- (id)requestIdentifierForViewElement:(id)a3;
- (id)textPropertiesForViewElement:(id)a3 width:(double)a4;
- (id)transientRequestIdentifierForViewElement:(id)a3;
- (int64_t)maxWidthForElement:(id)a3 withDefaultWidth:(int64_t)a4;
- (void)_artworkRequestDidLoadImageNotification:(id)a3;
- (void)_initSKUIViewElementLayoutContext;
- (void)dealloc;
- (void)expandEditorialForLabelElement:(id)a3;
- (void)setAggregateValue:(id)a3 forKey:(id)a4;
- (void)setBlurColor:(id)a3 cacheKey:(id)a4;
- (void)setLargeScreenElementPaddingFromContext:(id)a3;
@end

@implementation SKUIViewElementLayoutContext

- (id)_initSKUIViewElementLayoutContext
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIViewElementLayoutContext _initSKUIViewElementLayoutContext];
  }

  v18.receiver = self;
  v18.super_class = SKUIViewElementLayoutContext;
  v3 = [(SKUIViewElementLayoutContext *)&v18 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    editorialLayouts = v3->_editorialLayouts;
    v3->_editorialLayouts = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observedArtworkRequestIDs = v3->_observedArtworkRequestIDs;
    v3->_observedArtworkRequestIDs = v6;

    v8 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    placeholderColor = v3->_placeholderColor;
    v3->_placeholderColor = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    blurColors = v3->_blurColors;
    v3->_blurColors = v10;

    v12 = objc_alloc_init(SKUIItemOfferButton);
    itemOfferButton = v3->_itemOfferButton;
    v3->_itemOfferButton = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemOfferButtonSizes = v3->_itemOfferButtonSizes;
    v3->_itemOfferButtonSizes = v14;

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v3 selector:sel__artworkRequestDidLoadImageNotification_ name:@"SKUIArtworkRequestDidLoadImageNotification" object:0];
  }

  return v3;
}

- (SKUIViewElementLayoutContext)initWithStorePageSectionContext:(id)a3 previousLayoutContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIViewElementLayoutContext *)self _initSKUIViewElementLayoutContext];
  if (v8)
  {
    v9 = [v6 resourceLoader];
    if (v9)
    {
      v10 = [v7 resourceLoader];

      if (v10 == v9)
      {
        v11 = v7[12];
        if (v11)
        {
          v12 = v11;
          v13 = [v12 mutableCopy];
          observedArtworkRequestIDs = v8->_observedArtworkRequestIDs;
          v8->_observedArtworkRequestIDs = v13;
        }
      }
    }

    v15 = [v7 labelLayoutCache];
    v16 = [v6 textLayoutCache];
    v17 = [v15 layoutCache];

    if (v17 == v16)
    {
      objc_storeStrong(&v8->_labelLayoutCache, v15);
      [(SKUIViewElementTextLayoutCache *)v8->_labelLayoutCache invalidateLayoutsForUpdatedElements];
    }

    else
    {
      v18 = [SKUIViewElementTextLayoutCache alloc];
      v19 = [v6 textLayoutCache];
      v20 = [(SKUIViewElementTextLayoutCache *)v18 initWithLayoutCache:v19];
      labelLayoutCache = v8->_labelLayoutCache;
      v8->_labelLayoutCache = v20;
    }

    [v6 activePageWidth];
    [(SKUIViewElementLayoutContext *)v8 setActivePageWidth:?];
    v22 = [v6 clientContext];
    [(SKUIViewElementLayoutContext *)v8 setClientContext:v22];

    v23 = [v6 parentViewController];
    [(SKUIViewElementLayoutContext *)v8 setParentViewController:v23];
    v24 = [v6 placeholderColor];
    [(SKUIViewElementLayoutContext *)v8 setPlaceholderColor:v24];

    [(SKUIViewElementLayoutContext *)v8 setResourceLoader:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v23;
    }

    else
    {
      v25 = [v23 navigationController];
    }

    v26 = v25;
    v27 = [v25 navigationBar];
    v28 = [v27 _backdropViewLayerGroupName];
    [(SKUIViewElementLayoutContext *)v8 setBackdropGroupName:v28];

    v29 = [v6 collectionView];
    v30 = [v29 tintColor];
    [(SKUIViewElementLayoutContext *)v8 setTintColor:v30];

    v31 = [v29 traitCollection];
    [v31 displayScale];
    [(SKUIViewElementLayoutContext *)v8 setDisplayScale:?];
    [(SKUIViewElementLayoutContext *)v8 setLargeScreenElementPaddingFromContext:v6];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SKUIArtworkRequestDidLoadImageNotification" object:0];

  v4.receiver = self;
  v4.super_class = SKUIViewElementLayoutContext;
  [(SKUIViewElementLayoutContext *)&v4 dealloc];
}

+ (double)itemWidthForElement:(id)a3 withDefaultWidth:(double)a4 fitWidth:(double)a5
{
  v8 = [a3 style];
  v9 = [v8 itemWidth];

  [a1 _calculateValueFromString:v9 withDefault:a4 coefficent:a5];
  v11 = v10;

  return v11;
}

- (SKUIBadgeTextAttachmentLoader)badgeImageLoader
{
  badgeImageLoader = self->_badgeImageLoader;
  if (!badgeImageLoader)
  {
    v4 = [[SKUIBadgeTextAttachmentLoader alloc] initWithResourceLoader:self->_resourceLoader];
    v5 = self->_badgeImageLoader;
    self->_badgeImageLoader = v4;

    badgeImageLoader = self->_badgeImageLoader;
  }

  return badgeImageLoader;
}

- (id)blurColorForCacheKey:(id)a3
{
  if (a3)
  {
    v4 = [(NSMapTable *)self->_blurColors objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MPUBorderDrawingCache)borderDrawingCache
{
  borderDrawingCache = self->_borderDrawingCache;
  if (!borderDrawingCache)
  {
    v4 = SKUIMPUFoundationFramework();
    v5 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Mpuborderdrawi.isa, v4));
    v6 = self->_borderDrawingCache;
    self->_borderDrawingCache = v5;

    borderDrawingCache = self->_borderDrawingCache;
  }

  return borderDrawingCache;
}

- (double)defaultItemWidthForViewElement:(id)a3
{
  v4 = [a3 style];
  v5 = [v4 itemWidth];

  if (v5 && ([v5 floatValue], v6 >= 0.00000011921))
  {
    v7 = v6;
  }

  else if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v7 = 335.0;
  }

  else
  {
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    v10 = v9;

    if (v10 == 3.0)
    {
      v7 = 270.0;
    }

    else
    {
      v11 = [MEMORY[0x277D759A0] mainScreen];
      [v11 bounds];
      v13 = v12 > 320.0;

      v7 = dbl_215F3FD30[v13];
    }
  }

  return v7;
}

- (double)displayScale
{
  result = self->_displayScale;
  if (result <= 0.00000011920929)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    v5 = v4;

    return v5;
  }

  return result;
}

- (id)editorialLayoutForLabelElement:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [(NSMapTable *)self->_editorialLayouts objectForKey:v6];
  if (!v7)
  {
    v8 = [[SKUIEditorialComponent alloc] initWithViewElement:v6];
    v9 = [SKUIEditorialLayout alloc];
    v10 = [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache layoutCache];
    v7 = [(SKUIEditorialLayout *)v9 initWithEditorial:v8 layoutCache:v10];

    [(SKUIEditorialLayout *)v7 setLayoutWidth:0 forOrientation:a4];
    [(NSMapTable *)self->_editorialLayouts setObject:v7 forKey:v6];
  }

  return v7;
}

- (void)expandEditorialForLabelElement:(id)a3
{
  v4 = [(NSMapTable *)self->_editorialLayouts objectForKey:a3];
  v5 = v4;
  if (v4)
  {
    expandedEditorialLayouts = self->_expandedEditorialLayouts;
    v9 = v5;
    if (!expandedEditorialLayouts)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:512 capacity:1];
      v8 = self->_expandedEditorialLayouts;
      self->_expandedEditorialLayouts = v7;

      expandedEditorialLayouts = self->_expandedEditorialLayouts;
    }

    v4 = [(NSHashTable *)expandedEditorialLayouts addObject:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)imageResourceCacheKeyForViewElement:(id)a3
{
  v3 = a3;
  v4 = [v3 elementType];
  v5 = 0;
  if (v4 > 48)
  {
    if (v4 != 49)
    {
      if (v4 == 50)
      {
        v6 = [v3 buttonImage];
      }

      else
      {
        if (v4 != 152)
        {
          goto LABEL_14;
        }

        v6 = [v3 thumbnailImage];
      }

      goto LABEL_13;
    }

    v7 = [v3 resourceCacheKey];
LABEL_10:
    v5 = v7;
    goto LABEL_14;
  }

  if (v4 != 7)
  {
    if (v4 != 8)
    {
      goto LABEL_14;
    }

    v7 = [v3 URL];
    goto LABEL_10;
  }

  v6 = [v3 firstChildForElementType:49];
LABEL_13:
  v8 = v6;
  v5 = [v6 resourceCacheKey];

LABEL_14:

  return v5;
}

- (BOOL)loadImageForArtwork:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
  LOBYTE(a4) = [(SKUIViewElementLayoutContext *)self loadImageForArtwork:v6 dataConsumer:v7 reason:a4];

  return a4;
}

- (BOOL)loadImageForArtwork:(id)a3 dataConsumer:(id)a4 reason:(int64_t)a5
{
  v8 = a4;
  v9 = [a3 URL];
  if (v9)
  {
    v10 = [(SKUIViewElementLayoutContext *)self _loadImageForURL:v9 cacheKey:v9 dataConsumer:v8 reason:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)loadImageForBadgeElement:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 URL];
  v8 = [v6 style];
  v9 = [v8 imageMaskColor];

  if (v9)
  {
    v10 = [(SKUIViewElementLayoutContext *)self loadTemplatedImageForBadgeElement:v6 reason:a4];
  }

  else if (v7)
  {
    v11 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    v10 = [(SKUIViewElementLayoutContext *)self _loadImageForURL:v7 cacheKey:v7 dataConsumer:v11 reason:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)loadTemplatedImageForBadgeElement:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 URL];
  if (v7)
  {
    v8 = +[(SSVURLDataConsumer *)SKUITemplatedBadgeImageConsumer];
    v9 = [v6 style];
    v10 = [v9 imageMaskColor];

    if (v10)
    {
      v11 = [v10 color];
      if ([v10 colorType] == 1 || !v11)
      {
        v12 = [(SKUIViewElementLayoutContext *)self tintColor];

        v11 = v12;
      }

      [v8 setTemplateColor:v11];
      v13 = v8;
    }

    else
    {
      v13 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
      v11 = v13;
    }

    v14 = [(SKUIViewElementLayoutContext *)self _loadImageForURL:v7 cacheKey:v7 dataConsumer:v13 reason:a4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)loadImageForImageElement:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [(SKUIViewElementLayoutContext *)self dataConsumerForImageElement:v6];
  LOBYTE(a4) = [(SKUIViewElementLayoutContext *)self loadImageForImageElement:v6 reason:a4 dataConsumer:v7];

  return a4;
}

- (BOOL)loadImageForImageElement:(id)a3 reason:(int64_t)a4 dataConsumer:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 URL];
  if (v10)
  {
    v11 = [v8 URL];
    v12 = [v8 resourceCacheKey];
    v13 = [(SKUIViewElementLayoutContext *)self _loadImageForURL:v11 cacheKey:v12 dataConsumer:v9 reason:a4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dataConsumerForImageElement:(id)a3
{
  v4 = a3;
  v5 = [v4 style];
  v6 = [v5 imageMaskColor];

  if (v6)
  {
    v7 = +[(SSVURLDataConsumer *)SKUITemplatedBadgeImageConsumer];
    v8 = [v6 color];
    if ([v6 colorType] == 1 || !v8)
    {
      v9 = [(SKUIViewElementLayoutContext *)self tintColor];

      v8 = v9;
    }

    [(SKUIStyledImageDataConsumer *)v7 setTemplateColor:v8];
  }

  else
  {
    v7 = [[SKUIStyledImageDataConsumer alloc] initWithViewElement:v4];
    [(SKUIViewElementLayoutContext *)self _sizeForImageElement:v4 applyTransform:0];
    [(SKUIStyledImageDataConsumer *)v7 setImageSize:?];
  }

  return v7;
}

- (id)placeholderImageForImageElement:(id)a3 dataConsumer:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SKUIViewElementLayoutContext *)self _sizeForImageElement:v7 applyTransform:0];
  v9 = v8;
  v11 = v10;
  v12 = [v7 style];
  v13 = [v12 imageTreatment];
  v14 = SKUIImageTreatmentForString(v13);

  v15 = [v7 style];

  v16 = [v15 imagePlaceholderBackgroundColor];

  if ([v16 colorType] == 4)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v18 = [[SKUIPlaceholderImageKey alloc] initWithSize:v14 imageTreatment:v16 placeholderBackgroundColor:v9, v11];
  v19 = [(SKUIViewElementLayoutContext *)self placeholderImageCache];
  v17 = [v19 objectForKey:v18];

  if (!v17)
  {
    v20 = [v16 color];

    if (!v20)
    {
      v17 = [v6 imageForColor:self->_placeholderColor];
      if (!v17)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v21 = [v16 color];
    v22 = [v6 imageForColor:v21];
    v17 = [v22 imageWithRenderingMode:1];

    if (v17)
    {
LABEL_6:
      v23 = [(SKUIViewElementLayoutContext *)self placeholderImageCache];
      [v23 setObject:v17 forKey:v18];
    }
  }

LABEL_7:

LABEL_8:

  return v17;
}

- (int64_t)maxWidthForElement:(id)a3 withDefaultWidth:(int64_t)a4
{
  v5 = [a3 style];
  v6 = [v5 maxWidth];

  [objc_opt_class() _calculateValueFromString:v6 withDefault:a4 coefficent:a4];
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  v8 = v7;

  return v8;
}

- (id)placeholderImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [[SKUIPlaceholderImageKey alloc] initWithSize:0 imageTreatment:0 placeholderBackgroundColor:a3.width, a3.height];
  v7 = [(SKUIViewElementLayoutContext *)self placeholderImageCache];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v9 = objc_alloc_init(SKUIStyledImageDataConsumer);
    [(SKUIStyledImageDataConsumer *)v9 setImageSize:width, height];
    [(SKUIStyledImageDataConsumer *)v9 setImageTreatment:0];
    v8 = [(SKUIStyledImageDataConsumer *)v9 imageForColor:self->_placeholderColor];
    if (v8)
    {
      v10 = [(SKUIViewElementLayoutContext *)self placeholderImageCache];
      [v10 setObject:v8 forKey:v6];
    }
  }

  return v8;
}

- (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 elementType];
  v8 = 0;
  if (v7 <= 49)
  {
    if (v7 > 47)
    {
      if (v7 == 48)
      {
        v10 = SKUISectionHeaderView;
        goto LABEL_22;
      }

      v11 = [(SKUIViewElementLayoutContext *)self loadImageForImageElement:v6 reason:a4];
    }

    else
    {
      if (v7 != 8)
      {
        if (v7 != 40)
        {
          goto LABEL_24;
        }

        v10 = SKUIFilterBarView;
        goto LABEL_22;
      }

      v11 = [(SKUIViewElementLayoutContext *)self loadImageForBadgeElement:v6 reason:a4];
    }

LABEL_23:
    v8 = v11;
    goto LABEL_24;
  }

  if (v7 > 61)
  {
    switch(v7)
    {
      case 62:
        v10 = SKUIHorizontalListView;
        break;
      case 77:
        v10 = SKUIOfferView;
        break;
      case 152:
        v9 = [v6 thumbnailImage];
LABEL_20:
        v12 = v9;
        v8 = [(SKUIViewElementLayoutContext *)self loadImageForImageElement:v9 reason:a4];

        goto LABEL_24;
      default:
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v7 == 50)
  {
    v9 = [v6 buttonImage];
    goto LABEL_20;
  }

  if (v7 == 51)
  {
    v10 = SKUIImageDeckView;
LABEL_22:
    v11 = [(__objc2_class *)v10 prefetchResourcesForViewElement:v6 reason:a4 context:self];
    goto LABEL_23;
  }

LABEL_24:

  return v8;
}

- (id)requestIdentifierForArtwork:(id)a3
{
  v4 = [(SKUIViewElementLayoutContext *)self imageResourceCacheKeyForArtwork:a3];
  v5 = [(SKUIViewElementLayoutContext *)self requestIdentifierForResourceCacheKey:v4];

  return v5;
}

- (id)requestIdentifierForResourceCacheKey:(id)a3
{
  if (a3)
  {
    v4 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)requestIdentifierForViewElement:(id)a3
{
  v4 = [(SKUIViewElementLayoutContext *)self imageResourceCacheKeyForViewElement:a3];
  v5 = [(SKUIViewElementLayoutContext *)self requestIdentifierForResourceCacheKey:v4];

  return v5;
}

- (void)setAggregateValue:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = v6;
  aggregateValues = self->_aggregateValues;
  if (v12)
  {
    if (!aggregateValues)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_aggregateValues;
      self->_aggregateValues = v10;

      v7 = v12;
      aggregateValues = self->_aggregateValues;
    }

    [(NSMutableDictionary *)aggregateValues setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)aggregateValues removeObjectForKey:v8];
  }
}

- (void)setBlurColor:(id)a3 cacheKey:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [NSMapTable setObject:"setObject:forKey:" forKey:?];
    }
  }
}

- (void)setLargeScreenElementPaddingFromContext:(id)a3
{
  v24 = a3;
  v4 = *(MEMORY[0x277D768C8] + 16);
  *&self->_largeScreenElementPadding.top = *MEMORY[0x277D768C8];
  *&self->_largeScreenElementPadding.bottom = v4;
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqual:@"com.apple.Music"];

  if ((v7 & 1) == 0)
  {
    v8 = [v24 collectionView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v26.origin.x = v10;
    v26.origin.y = v12;
    v26.size.width = v14;
    v26.size.height = v16;
    if (CGRectGetHeight(v26) >= 1024.0)
    {
      v27.origin.x = v10;
      v27.origin.y = v12;
      v27.size.width = v14;
      v27.size.height = v16;
      if (CGRectGetWidth(v27) >= 1024.0)
      {
        __asm { FMOV            V0.2D, #20.0 }

        *&self->_largeScreenElementPadding.top = _Q0;
        *&self->_largeScreenElementPadding.bottom = _Q0;
      }
    }

    [v24 activePageWidth];
    if (v22 == 455.0 || ([v24 activePageWidth], v23 == 341.0))
    {
      *&self->_largeScreenElementPadding.top = xmmword_215F3FD40;
      *&self->_largeScreenElementPadding.bottom = xmmword_215F3FD50;
    }
  }
}

- (CGSize)sizeForBadgeElement:(id)a3
{
  v3 = a3;
  [v3 size];
  v6 = v5;
  v7 = v4;
  if (v5 == *MEMORY[0x277CBF3A8] && v4 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v9 = [v3 resourceName];
    v10 = v9;
    if (v9 && (SKUIImageWithResourceName(v9), (v11 = objc_claimAutoreleasedReturnValue()) != 0) || ([v3 fallbackImage], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      [v11 size];
      v6 = v13;
      v7 = v14;
    }
  }

  v15 = v6;
  v16 = v7;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)sizeForImageElement:(id)a3
{
  [(SKUIViewElementLayoutContext *)self _sizeForImageElement:a3 applyTransform:1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeForItemOfferButton:(id)a3
{
  v4 = a3;
  v5 = [v4 buttonText];
  v6 = [v5 string];

  v7 = [v4 itemIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = +[SKUIItemStateCenter defaultCenter];
    v10 = [v9 stateForItemWithIdentifier:v8];

    if (([v10 state] & 3) != 0)
    {

      v11 = 26.0;
      v12 = 26.0;
      goto LABEL_18;
    }

    if ([v10 state])
    {
      v13 = [v4 parent];
      v14 = [v13 attributes];
      v15 = [v14 objectForKey:@"supportsPlayButton"];
      v16 = [v15 BOOLValue];

      if ((v16 & 1) == 0)
      {
        v17 = [SKUIItemOfferButton localizedTitleForItemState:v10 clientContext:self->_clientContext];

        v6 = v17;
      }
    }
  }

  if (v6)
  {
    v18 = [(NSMutableDictionary *)self->_itemOfferButtonSizes objectForKey:v6];
    if (v18)
    {
      v19 = v18;
      [(SKUISizeValue *)v18 size];
      v12 = v20;
      v11 = v21;
    }

    else
    {
      [(SKUIItemOfferButton *)self->_itemOfferButton setImage:0];
      [(SKUIItemOfferButton *)self->_itemOfferButton setTitle:v6];
      [(SKUIItemOfferButton *)self->_itemOfferButton sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
      v12 = v28;
      v11 = v29;
      v19 = [[SKUISizeValue alloc] initWithSize:v28, v29];
      [(NSMutableDictionary *)self->_itemOfferButtonSizes setObject:v19 forKey:v6];
    }
  }

  else if ([v4 buttonViewType] == 3)
  {
    v22 = sizeForItemOfferButton__sDownloadButtonSize;
    if (!sizeForItemOfferButton__sDownloadButtonSize)
    {
      [(SKUIItemOfferButton *)self->_itemOfferButton setTitle:0];
      [(SKUIItemOfferButton *)self->_itemOfferButton showCloudImage];
      v23 = [SKUISizeValue alloc];
      [(SKUIItemOfferButton *)self->_itemOfferButton sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
      v24 = [(SKUISizeValue *)v23 initWithSize:?];
      v25 = sizeForItemOfferButton__sDownloadButtonSize;
      sizeForItemOfferButton__sDownloadButtonSize = v24;

      v22 = sizeForItemOfferButton__sDownloadButtonSize;
    }

    [v22 size];
    v12 = v26;
    v11 = v27;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

LABEL_18:

  v30 = v12;
  v31 = v11;
  result.height = v31;
  result.width = v30;
  return result;
}

- (CGSize)sizeForViewElement:(id)a3 width:(double)a4
{
  v6 = a3;
  v8 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  v9 = [v6 elementType];
  if (v9 <= 68)
  {
    if (v9 > 47)
    {
      if (v9 > 49)
      {
        if (v9 != 50)
        {
          if (v9 == 51)
          {
            v15 = SKUIImageDeckView;
          }

          else
          {
            if (v9 != 62)
            {
              goto LABEL_82;
            }

            v15 = SKUIHorizontalListView;
          }

          goto LABEL_62;
        }

        v26 = [v6 buttonImage];
LABEL_55:
        v10 = v26;
        [(SKUIViewElementLayoutContext *)self _sizeForImageElement:v26 applyTransform:1];
        goto LABEL_56;
      }

      if (v9 == 48)
      {
        v15 = SKUISectionHeaderView;
        goto LABEL_62;
      }

      [(SKUIViewElementLayoutContext *)self _sizeForImageElement:v6 applyTransform:1];
LABEL_63:
      v8 = v24;
      v7 = v25;
      goto LABEL_82;
    }

    if (v9 > 12)
    {
      if (v9 == 13)
      {
        [(SKUIViewElementLayoutContext *)self sizeForItemOfferButton:v6];
        goto LABEL_63;
      }

      if (v9 != 32)
      {
        if (v9 != 40)
        {
          goto LABEL_82;
        }

        v15 = SKUIFilterBarView;
        goto LABEL_62;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_82;
      }

      v21 = v6;
      if ([(SKUIButtonBorderStyle *)v21 dividerType]== 3)
      {
        v29 = [(SKUIButtonBorderStyle *)v21 style];
        v30 = [v29 itemHeight];

        if (v30)
        {
          [v30 floatValue];
          v7 = v31;
        }

        else
        {
          v7 = 10.0;
        }

        v8 = 0.0;
      }

LABEL_91:

      goto LABEL_82;
    }

    if (v9 == 8)
    {
      v10 = v6;
      if ([v10 badgeType] == 1)
      {
        v34 = [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache layoutForWidth:a4 viewElement:v10];
        if (v34)
        {
          [SKUIAttributedStringView sizeWithLayout:v34 treatment:1];
          v8 = v35;
          v7 = v36;
        }

        goto LABEL_81;
      }

      [(SKUIViewElementLayoutContext *)self sizeForBadgeElement:v10];
      goto LABEL_56;
    }

    if (v9 != 12)
    {
      goto LABEL_82;
    }

    [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache sizeForButton:v6 width:a4];
    v8 = v16;
    v7 = v17;
    v18 = [v6 buttonViewType];
    if (v18 <= 6)
    {
      if (!v18)
      {
LABEL_37:
        v19 = [SKUIButtonBorderStyle alloc];
        v20 = [v6 style];
        v21 = [(SKUIButtonBorderStyle *)v19 initWithElementStyle:v20];

        [SKUIStyledButton sizeForTextSize:0 buttonType:v21 borderStyle:v8, v7];
        v8 = v22;
        v7 = v23;
        goto LABEL_91;
      }

      if (v18 != 1)
      {
        if (v18 != 6)
        {
          goto LABEL_82;
        }

        v44 = [SKUIButtonBorderStyle alloc];
        v45 = [v6 style];
        v21 = [(SKUIButtonBorderStyle *)v44 initWithElementStyle:v45];

        [SKUIStyledButton sizeForTextSize:[SKUIStyledButton buttonTypeForElement:v6] buttonType:v21 borderStyle:v8, v7];
        v47 = v46;
        v49 = v48;
        v50 = [v6 style];
        [v50 elementPadding];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v8 = v47 + v54 + v58;
        v7 = v49 + v52 + v56;
        goto LABEL_91;
      }

      v61 = v8;
      v62 = v7;
      v63 = 3;
    }

    else
    {
      if (v18 > 0xD)
      {
        goto LABEL_82;
      }

      if (((1 << v18) & 0x2D00) != 0)
      {
        goto LABEL_37;
      }

      if (v18 != 7)
      {
        if (v18 != 12)
        {
          goto LABEL_82;
        }

        v15 = SKUIPlayButton;
        goto LABEL_62;
      }

      v61 = v8;
      v62 = v7;
      v63 = 4;
    }

    [SKUIStyledButton sizeForTextSize:v63 buttonType:v61, v62];
    goto LABEL_63;
  }

  if (v9 > 134)
  {
    if (v9 <= 143)
    {
      if (v9 != 135)
      {
        if (v9 == 138)
        {
          v32 = [(NSMapTable *)self->_editorialLayouts objectForKey:v6];
          if (v32)
          {
            [v32 layoutHeightForOrientation:0 expanded:{-[SKUIViewElementLayoutContext isEditorialLayoutExpanded:](self, "isEditorialLayoutExpanded:", v32)}];
            v7 = v33;
          }

          else
          {
            [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache estimatedSizeForLabel:v6 width:a4];
            a4 = v42;
            v7 = v43;
          }

          v8 = a4;
        }

        else if (v9 == 141)
        {
          v10 = v6;
          v11 = [v10 itemIdentifier];
          if (v11)
          {
            v12 = v11;
            v13 = +[SKUIItemStateCenter defaultCenter];
            v14 = [v13 stateForItemWithIdentifier:v12];
          }

          else
          {
            v14 = [v10 storeIdentifier];

            if (!v14)
            {
              goto LABEL_68;
            }

            v13 = +[SKUIItemStateCenter defaultCenter];
            v37 = [v10 storeIdentifier];
            v14 = [v13 stateForItemWithStoreIdentifier:v37];
          }

LABEL_68:
          if ([SKUIStyledButton usesItemOfferAppearanceForButtonType:1 itemState:v14])
          {
            [(SKUIViewElementLayoutContext *)self sizeForItemOfferButton:v10];
          }

          else
          {
            if (a4 < 0.00000011920929)
            {
              [(SKUIViewElementLayoutContext *)self sizeForItemOfferButton:v10];
              v7 = v40;
              v8 = v41 + -20.0;
LABEL_80:

              goto LABEL_81;
            }

            [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache sizeForButton:v10 width:a4];
            [SKUIStyledButton sizeForTextSize:1 buttonType:?];
          }

          v8 = v38;
          v7 = v39;
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      v15 = SKUIStarRatingViewElementView;
      goto LABEL_62;
    }

    if (v9 != 144)
    {
      if (v9 != 152)
      {
        if (v9 != 154)
        {
          goto LABEL_82;
        }

        v15 = SKUIImageGridView;
        goto LABEL_62;
      }

      v26 = [v6 thumbnailImage];
      goto LABEL_55;
    }

    v15 = SKUITomatoRatingView;
LABEL_62:
    [(__objc2_class *)v15 sizeThatFitsWidth:v6 viewElement:self context:a4];
    goto LABEL_63;
  }

  if (v9 <= 79)
  {
    if (v9 == 69)
    {
      v10 = [v6 titleItem];
      [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache sizeForViewElement:v10 width:a4];
LABEL_56:
      v8 = v27;
      v7 = v28;
LABEL_81:

      goto LABEL_82;
    }

    if (v9 != 77)
    {
      goto LABEL_82;
    }

    v15 = SKUIOfferView;
    goto LABEL_62;
  }

  switch(v9)
  {
    case 80:
      [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache estimatedSizeForOrdinal:v6 width:a4];
      goto LABEL_63;
    case 109:
      v8 = 0.0;
      v7 = 29.0;
      break;
    case 131:
      v15 = SKUIStackListCollectionViewCell;
      goto LABEL_62;
  }

LABEL_82:

  v59 = v8;
  v60 = v7;
  result.height = v60;
  result.width = v59;
  return result;
}

- (id)textPropertiesForViewElement:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [v6 elementType];
  if (v7 == 138)
  {
    v9 = [(NSMapTable *)self->_editorialLayouts objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 bodyTextLayoutForOrientation:0];
      if (v11)
      {
        v12 = [[SKUIViewTextProperties alloc] initWithTextLayout:v11 isExpanded:[(SKUIViewElementLayoutContext *)self isEditorialLayoutExpanded:v10]];
LABEL_10:
        v8 = v12;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v11 = [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache layoutForWidth:a4 viewElement:v6];
      if (v11)
      {
        v12 = [[SKUIViewTextProperties alloc] initWithStringLayout:v11];
        goto LABEL_10;
      }
    }

    v8 = 0;
    goto LABEL_12;
  }

  if (v7 == 135)
  {
    v8 = [SKUIStarRatingViewElementView textPropertiesForViewElement:v6 width:self context:a4];
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)transientRequestIdentifierForViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  switch(v5)
  {
    case 152:
      v8 = [v4 thumbnailImage];
      break;
    case 50:
      v8 = [v4 buttonImage];
      break;
    case 49:
      v6 = [v4 transientResourceCacheKey];
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    default:
      goto LABEL_5;
  }

  v9 = v8;
  v6 = [v8 transientResourceCacheKey];

  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v7 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:v6];

LABEL_10:

  return v7;
}

- (void)_artworkRequestDidLoadImageNotification:(id)a3
{
  v9 = a3;
  v4 = [v9 object];
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v4, "requestIdentifier")}];
  if ([(NSMutableSet *)self->_observedArtworkRequestIDs containsObject:v5])
  {
    v6 = [v9 userInfo];
    v7 = [v6 objectForKey:@"SKUIArtworkRequestImageKey"];

    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_artworkRequestDelegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained artworkRequest:v4 didLoadImage:v7];
      }
    }

    [(NSMutableSet *)self->_observedArtworkRequestIDs removeObject:v5];
  }
}

+ (double)_calculateValueFromString:(id)a3 withDefault:(double)a4 coefficent:(double)a5
{
  v7 = a3;
  if ([v7 length])
  {
    v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];
    v10 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v9];
    v14 = 0.0;
    a4 = 0.0;
    if ([v10 scanDouble:&v14])
    {
      v11 = [v10 scanString:@"%" intoString:0];
      a4 = v14;
      if (v14 > 0.0 && v11 != 0)
      {
        a4 = floor(v14 * a5 / 100.0);
      }
    }
  }

  return a4;
}

- (BOOL)_loadImageForURL:(id)a3 cacheKey:(id)a4 dataConsumer:(id)a5 reason:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:v11];
  v14 = v13;
  if (v13 && -[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_resourceLoader, "trySetReason:forRequestWithIdentifier:", a6, [v13 unsignedIntegerValue]))
  {
    [(NSMutableSet *)self->_observedArtworkRequestIDs addObject:v14];
    v15 = 0;
  }

  else
  {
    v16 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIResourceRequest *)v16 setCacheKey:v11];
    [(SKUIArtworkRequest *)v16 setDataConsumer:v12];
    [(SKUIArtworkRequest *)v16 setURL:v10];
    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v16, "requestIdentifier")}];
    [(NSMutableSet *)self->_observedArtworkRequestIDs addObject:v17];
    v15 = [(SKUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v16 reason:a6];
  }

  return v15;
}

- (CGSize)_sizeForImageElement:(id)a3 applyTransform:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [v5 size];
  v8 = v7;
  v9 = v6;
  if (v7 == *MEMORY[0x277CBF3A8] && v6 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v11 = [v5 resourceName];
    v12 = v11;
    if (v11)
    {
      v13 = SKUIImageWithResourceName(v11);
      if (v13)
      {
        v14 = v13;
        [v13 size];
        v8 = v15;
        v9 = v16;
      }
    }
  }

  v17 = [v5 style];
  v18 = v17;
  if (v4 && v17)
  {
    [v17 transform];
    v19 = v9 * v24 + v22 * v8;
    v9 = fabs(floor(v9 * v25 + v23 * v8));
    v8 = fabs(floor(v19));
  }

  v20 = v8;
  v21 = v9;
  result.height = v21;
  result.width = v20;
  return result;
}

- (SKUIArtworkRequestDelegate)artworkRequestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_artworkRequestDelegate);

  return WeakRetained;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (UIEdgeInsets)largeScreenElementPadding
{
  top = self->_largeScreenElementPadding.top;
  left = self->_largeScreenElementPadding.left;
  bottom = self->_largeScreenElementPadding.bottom;
  right = self->_largeScreenElementPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_initSKUIViewElementLayoutContext
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewElementLayoutContext _initSKUIViewElementLayoutContext]";
}

@end