@interface SKUIViewElementLayoutContext
+ (double)_calculateValueFromString:(id)string withDefault:(double)default coefficent:(double)coefficent;
+ (double)itemWidthForElement:(id)element withDefaultWidth:(double)width fitWidth:(double)fitWidth;
- (BOOL)_loadImageForURL:(id)l cacheKey:(id)key dataConsumer:(id)consumer reason:(int64_t)reason;
- (BOOL)loadImageForArtwork:(id)artwork dataConsumer:(id)consumer reason:(int64_t)reason;
- (BOOL)loadImageForArtwork:(id)artwork reason:(int64_t)reason;
- (BOOL)loadImageForBadgeElement:(id)element reason:(int64_t)reason;
- (BOOL)loadImageForImageElement:(id)element reason:(int64_t)reason;
- (BOOL)loadImageForImageElement:(id)element reason:(int64_t)reason dataConsumer:(id)consumer;
- (BOOL)loadTemplatedImageForBadgeElement:(id)element reason:(int64_t)reason;
- (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason;
- (CGSize)_sizeForImageElement:(id)element applyTransform:(BOOL)transform;
- (CGSize)sizeForBadgeElement:(id)element;
- (CGSize)sizeForImageElement:(id)element;
- (CGSize)sizeForItemOfferButton:(id)button;
- (CGSize)sizeForViewElement:(id)element width:(double)width;
- (MPUBorderDrawingCache)borderDrawingCache;
- (SKUIArtworkRequestDelegate)artworkRequestDelegate;
- (SKUIBadgeTextAttachmentLoader)badgeImageLoader;
- (SKUIViewElementLayoutContext)initWithStorePageSectionContext:(id)context previousLayoutContext:(id)layoutContext;
- (UIEdgeInsets)largeScreenElementPadding;
- (UIViewController)parentViewController;
- (double)defaultItemWidthForViewElement:(id)element;
- (double)displayScale;
- (id)_initSKUIViewElementLayoutContext;
- (id)blurColorForCacheKey:(id)key;
- (id)dataConsumerForImageElement:(id)element;
- (id)editorialLayoutForLabelElement:(id)element width:(double)width;
- (id)imageResourceCacheKeyForViewElement:(id)element;
- (id)placeholderImageForImageElement:(id)element dataConsumer:(id)consumer;
- (id)placeholderImageForSize:(CGSize)size;
- (id)requestIdentifierForArtwork:(id)artwork;
- (id)requestIdentifierForResourceCacheKey:(id)key;
- (id)requestIdentifierForViewElement:(id)element;
- (id)textPropertiesForViewElement:(id)element width:(double)width;
- (id)transientRequestIdentifierForViewElement:(id)element;
- (int64_t)maxWidthForElement:(id)element withDefaultWidth:(int64_t)width;
- (void)_artworkRequestDidLoadImageNotification:(id)notification;
- (void)_initSKUIViewElementLayoutContext;
- (void)dealloc;
- (void)expandEditorialForLabelElement:(id)element;
- (void)setAggregateValue:(id)value forKey:(id)key;
- (void)setBlurColor:(id)color cacheKey:(id)key;
- (void)setLargeScreenElementPaddingFromContext:(id)context;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__artworkRequestDidLoadImageNotification_ name:@"SKUIArtworkRequestDidLoadImageNotification" object:0];
  }

  return v3;
}

- (SKUIViewElementLayoutContext)initWithStorePageSectionContext:(id)context previousLayoutContext:(id)layoutContext
{
  contextCopy = context;
  layoutContextCopy = layoutContext;
  _initSKUIViewElementLayoutContext = [(SKUIViewElementLayoutContext *)self _initSKUIViewElementLayoutContext];
  if (_initSKUIViewElementLayoutContext)
  {
    resourceLoader = [contextCopy resourceLoader];
    if (resourceLoader)
    {
      resourceLoader2 = [layoutContextCopy resourceLoader];

      if (resourceLoader2 == resourceLoader)
      {
        v11 = layoutContextCopy[12];
        if (v11)
        {
          v12 = v11;
          v13 = [v12 mutableCopy];
          observedArtworkRequestIDs = _initSKUIViewElementLayoutContext->_observedArtworkRequestIDs;
          _initSKUIViewElementLayoutContext->_observedArtworkRequestIDs = v13;
        }
      }
    }

    labelLayoutCache = [layoutContextCopy labelLayoutCache];
    textLayoutCache = [contextCopy textLayoutCache];
    layoutCache = [labelLayoutCache layoutCache];

    if (layoutCache == textLayoutCache)
    {
      objc_storeStrong(&_initSKUIViewElementLayoutContext->_labelLayoutCache, labelLayoutCache);
      [(SKUIViewElementTextLayoutCache *)_initSKUIViewElementLayoutContext->_labelLayoutCache invalidateLayoutsForUpdatedElements];
    }

    else
    {
      v18 = [SKUIViewElementTextLayoutCache alloc];
      textLayoutCache2 = [contextCopy textLayoutCache];
      v20 = [(SKUIViewElementTextLayoutCache *)v18 initWithLayoutCache:textLayoutCache2];
      labelLayoutCache = _initSKUIViewElementLayoutContext->_labelLayoutCache;
      _initSKUIViewElementLayoutContext->_labelLayoutCache = v20;
    }

    [contextCopy activePageWidth];
    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setActivePageWidth:?];
    clientContext = [contextCopy clientContext];
    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setClientContext:clientContext];

    parentViewController = [contextCopy parentViewController];
    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setParentViewController:parentViewController];
    placeholderColor = [contextCopy placeholderColor];
    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setPlaceholderColor:placeholderColor];

    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setResourceLoader:resourceLoader];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      navigationController = parentViewController;
    }

    else
    {
      navigationController = [parentViewController navigationController];
    }

    v26 = navigationController;
    navigationBar = [navigationController navigationBar];
    _backdropViewLayerGroupName = [navigationBar _backdropViewLayerGroupName];
    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setBackdropGroupName:_backdropViewLayerGroupName];

    collectionView = [contextCopy collectionView];
    tintColor = [collectionView tintColor];
    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setTintColor:tintColor];

    traitCollection = [collectionView traitCollection];
    [traitCollection displayScale];
    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setDisplayScale:?];
    [(SKUIViewElementLayoutContext *)_initSKUIViewElementLayoutContext setLargeScreenElementPaddingFromContext:contextCopy];
  }

  return _initSKUIViewElementLayoutContext;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SKUIArtworkRequestDidLoadImageNotification" object:0];

  v4.receiver = self;
  v4.super_class = SKUIViewElementLayoutContext;
  [(SKUIViewElementLayoutContext *)&v4 dealloc];
}

+ (double)itemWidthForElement:(id)element withDefaultWidth:(double)width fitWidth:(double)fitWidth
{
  style = [element style];
  itemWidth = [style itemWidth];

  [self _calculateValueFromString:itemWidth withDefault:width coefficent:fitWidth];
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

- (id)blurColorForCacheKey:(id)key
{
  if (key)
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

- (double)defaultItemWidthForViewElement:(id)element
{
  style = [element style];
  itemWidth = [style itemWidth];

  if (itemWidth && ([itemWidth floatValue], v6 >= 0.00000011921))
  {
    v7 = v6;
  }

  else if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v7 = 335.0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = v9;

    if (v10 == 3.0)
    {
      v7 = 270.0;
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v5 = v4;

    return v5;
  }

  return result;
}

- (id)editorialLayoutForLabelElement:(id)element width:(double)width
{
  elementCopy = element;
  v7 = [(NSMapTable *)self->_editorialLayouts objectForKey:elementCopy];
  if (!v7)
  {
    v8 = [[SKUIEditorialComponent alloc] initWithViewElement:elementCopy];
    v9 = [SKUIEditorialLayout alloc];
    layoutCache = [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache layoutCache];
    v7 = [(SKUIEditorialLayout *)v9 initWithEditorial:v8 layoutCache:layoutCache];

    [(SKUIEditorialLayout *)v7 setLayoutWidth:0 forOrientation:width];
    [(NSMapTable *)self->_editorialLayouts setObject:v7 forKey:elementCopy];
  }

  return v7;
}

- (void)expandEditorialForLabelElement:(id)element
{
  v4 = [(NSMapTable *)self->_editorialLayouts objectForKey:element];
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

- (id)imageResourceCacheKeyForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  resourceCacheKey2 = 0;
  if (elementType > 48)
  {
    if (elementType != 49)
    {
      if (elementType == 50)
      {
        buttonImage = [elementCopy buttonImage];
      }

      else
      {
        if (elementType != 152)
        {
          goto LABEL_14;
        }

        buttonImage = [elementCopy thumbnailImage];
      }

      goto LABEL_13;
    }

    resourceCacheKey = [elementCopy resourceCacheKey];
LABEL_10:
    resourceCacheKey2 = resourceCacheKey;
    goto LABEL_14;
  }

  if (elementType != 7)
  {
    if (elementType != 8)
    {
      goto LABEL_14;
    }

    resourceCacheKey = [elementCopy URL];
    goto LABEL_10;
  }

  buttonImage = [elementCopy firstChildForElementType:49];
LABEL_13:
  v8 = buttonImage;
  resourceCacheKey2 = [buttonImage resourceCacheKey];

LABEL_14:

  return resourceCacheKey2;
}

- (BOOL)loadImageForArtwork:(id)artwork reason:(int64_t)reason
{
  artworkCopy = artwork;
  v7 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
  LOBYTE(reason) = [(SKUIViewElementLayoutContext *)self loadImageForArtwork:artworkCopy dataConsumer:v7 reason:reason];

  return reason;
}

- (BOOL)loadImageForArtwork:(id)artwork dataConsumer:(id)consumer reason:(int64_t)reason
{
  consumerCopy = consumer;
  v9 = [artwork URL];
  if (v9)
  {
    v10 = [(SKUIViewElementLayoutContext *)self _loadImageForURL:v9 cacheKey:v9 dataConsumer:consumerCopy reason:reason];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)loadImageForBadgeElement:(id)element reason:(int64_t)reason
{
  elementCopy = element;
  v7 = [elementCopy URL];
  style = [elementCopy style];
  imageMaskColor = [style imageMaskColor];

  if (imageMaskColor)
  {
    v10 = [(SKUIViewElementLayoutContext *)self loadTemplatedImageForBadgeElement:elementCopy reason:reason];
  }

  else if (v7)
  {
    v11 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    v10 = [(SKUIViewElementLayoutContext *)self _loadImageForURL:v7 cacheKey:v7 dataConsumer:v11 reason:reason];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)loadTemplatedImageForBadgeElement:(id)element reason:(int64_t)reason
{
  elementCopy = element;
  v7 = [elementCopy URL];
  if (v7)
  {
    v8 = +[(SSVURLDataConsumer *)SKUITemplatedBadgeImageConsumer];
    style = [elementCopy style];
    imageMaskColor = [style imageMaskColor];

    if (imageMaskColor)
    {
      color = [imageMaskColor color];
      if ([imageMaskColor colorType] == 1 || !color)
      {
        tintColor = [(SKUIViewElementLayoutContext *)self tintColor];

        color = tintColor;
      }

      [v8 setTemplateColor:color];
      v13 = v8;
    }

    else
    {
      v13 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
      color = v13;
    }

    v14 = [(SKUIViewElementLayoutContext *)self _loadImageForURL:v7 cacheKey:v7 dataConsumer:v13 reason:reason];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)loadImageForImageElement:(id)element reason:(int64_t)reason
{
  elementCopy = element;
  v7 = [(SKUIViewElementLayoutContext *)self dataConsumerForImageElement:elementCopy];
  LOBYTE(reason) = [(SKUIViewElementLayoutContext *)self loadImageForImageElement:elementCopy reason:reason dataConsumer:v7];

  return reason;
}

- (BOOL)loadImageForImageElement:(id)element reason:(int64_t)reason dataConsumer:(id)consumer
{
  elementCopy = element;
  consumerCopy = consumer;
  v10 = [elementCopy URL];
  if (v10)
  {
    v11 = [elementCopy URL];
    resourceCacheKey = [elementCopy resourceCacheKey];
    v13 = [(SKUIViewElementLayoutContext *)self _loadImageForURL:v11 cacheKey:resourceCacheKey dataConsumer:consumerCopy reason:reason];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dataConsumerForImageElement:(id)element
{
  elementCopy = element;
  style = [elementCopy style];
  imageMaskColor = [style imageMaskColor];

  if (imageMaskColor)
  {
    v7 = +[(SSVURLDataConsumer *)SKUITemplatedBadgeImageConsumer];
    color = [imageMaskColor color];
    if ([imageMaskColor colorType] == 1 || !color)
    {
      tintColor = [(SKUIViewElementLayoutContext *)self tintColor];

      color = tintColor;
    }

    [(SKUIStyledImageDataConsumer *)v7 setTemplateColor:color];
  }

  else
  {
    v7 = [[SKUIStyledImageDataConsumer alloc] initWithViewElement:elementCopy];
    [(SKUIViewElementLayoutContext *)self _sizeForImageElement:elementCopy applyTransform:0];
    [(SKUIStyledImageDataConsumer *)v7 setImageSize:?];
  }

  return v7;
}

- (id)placeholderImageForImageElement:(id)element dataConsumer:(id)consumer
{
  consumerCopy = consumer;
  elementCopy = element;
  [(SKUIViewElementLayoutContext *)self _sizeForImageElement:elementCopy applyTransform:0];
  v9 = v8;
  v11 = v10;
  style = [elementCopy style];
  imageTreatment = [style imageTreatment];
  v14 = SKUIImageTreatmentForString(imageTreatment);

  style2 = [elementCopy style];

  imagePlaceholderBackgroundColor = [style2 imagePlaceholderBackgroundColor];

  if ([imagePlaceholderBackgroundColor colorType] == 4)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v18 = [[SKUIPlaceholderImageKey alloc] initWithSize:v14 imageTreatment:imagePlaceholderBackgroundColor placeholderBackgroundColor:v9, v11];
  placeholderImageCache = [(SKUIViewElementLayoutContext *)self placeholderImageCache];
  v17 = [placeholderImageCache objectForKey:v18];

  if (!v17)
  {
    color = [imagePlaceholderBackgroundColor color];

    if (!color)
    {
      v17 = [consumerCopy imageForColor:self->_placeholderColor];
      if (!v17)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    color2 = [imagePlaceholderBackgroundColor color];
    v22 = [consumerCopy imageForColor:color2];
    v17 = [v22 imageWithRenderingMode:1];

    if (v17)
    {
LABEL_6:
      placeholderImageCache2 = [(SKUIViewElementLayoutContext *)self placeholderImageCache];
      [placeholderImageCache2 setObject:v17 forKey:v18];
    }
  }

LABEL_7:

LABEL_8:

  return v17;
}

- (int64_t)maxWidthForElement:(id)element withDefaultWidth:(int64_t)width
{
  style = [element style];
  maxWidth = [style maxWidth];

  [objc_opt_class() _calculateValueFromString:maxWidth withDefault:width coefficent:width];
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  v8 = v7;

  return v8;
}

- (id)placeholderImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [[SKUIPlaceholderImageKey alloc] initWithSize:0 imageTreatment:0 placeholderBackgroundColor:size.width, size.height];
  placeholderImageCache = [(SKUIViewElementLayoutContext *)self placeholderImageCache];
  v8 = [placeholderImageCache objectForKey:v6];

  if (!v8)
  {
    v9 = objc_alloc_init(SKUIStyledImageDataConsumer);
    [(SKUIStyledImageDataConsumer *)v9 setImageSize:width, height];
    [(SKUIStyledImageDataConsumer *)v9 setImageTreatment:0];
    v8 = [(SKUIStyledImageDataConsumer *)v9 imageForColor:self->_placeholderColor];
    if (v8)
    {
      placeholderImageCache2 = [(SKUIViewElementLayoutContext *)self placeholderImageCache];
      [placeholderImageCache2 setObject:v8 forKey:v6];
    }
  }

  return v8;
}

- (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  v8 = 0;
  if (elementType <= 49)
  {
    if (elementType > 47)
    {
      if (elementType == 48)
      {
        v10 = SKUISectionHeaderView;
        goto LABEL_22;
      }

      v11 = [(SKUIViewElementLayoutContext *)self loadImageForImageElement:elementCopy reason:reason];
    }

    else
    {
      if (elementType != 8)
      {
        if (elementType != 40)
        {
          goto LABEL_24;
        }

        v10 = SKUIFilterBarView;
        goto LABEL_22;
      }

      v11 = [(SKUIViewElementLayoutContext *)self loadImageForBadgeElement:elementCopy reason:reason];
    }

LABEL_23:
    v8 = v11;
    goto LABEL_24;
  }

  if (elementType > 61)
  {
    switch(elementType)
    {
      case 62:
        v10 = SKUIHorizontalListView;
        break;
      case 77:
        v10 = SKUIOfferView;
        break;
      case 152:
        thumbnailImage = [elementCopy thumbnailImage];
LABEL_20:
        v12 = thumbnailImage;
        v8 = [(SKUIViewElementLayoutContext *)self loadImageForImageElement:thumbnailImage reason:reason];

        goto LABEL_24;
      default:
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (elementType == 50)
  {
    thumbnailImage = [elementCopy buttonImage];
    goto LABEL_20;
  }

  if (elementType == 51)
  {
    v10 = SKUIImageDeckView;
LABEL_22:
    v11 = [(__objc2_class *)v10 prefetchResourcesForViewElement:elementCopy reason:reason context:self];
    goto LABEL_23;
  }

LABEL_24:

  return v8;
}

- (id)requestIdentifierForArtwork:(id)artwork
{
  v4 = [(SKUIViewElementLayoutContext *)self imageResourceCacheKeyForArtwork:artwork];
  v5 = [(SKUIViewElementLayoutContext *)self requestIdentifierForResourceCacheKey:v4];

  return v5;
}

- (id)requestIdentifierForResourceCacheKey:(id)key
{
  if (key)
  {
    v4 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)requestIdentifierForViewElement:(id)element
{
  v4 = [(SKUIViewElementLayoutContext *)self imageResourceCacheKeyForViewElement:element];
  v5 = [(SKUIViewElementLayoutContext *)self requestIdentifierForResourceCacheKey:v4];

  return v5;
}

- (void)setAggregateValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = valueCopy;
  v8 = keyCopy;
  aggregateValues = self->_aggregateValues;
  if (valueCopy)
  {
    if (!aggregateValues)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_aggregateValues;
      self->_aggregateValues = v10;

      v7 = valueCopy;
      aggregateValues = self->_aggregateValues;
    }

    [(NSMutableDictionary *)aggregateValues setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)aggregateValues removeObjectForKey:v8];
  }
}

- (void)setBlurColor:(id)color cacheKey:(id)key
{
  if (color)
  {
    if (key)
    {
      [NSMapTable setObject:"setObject:forKey:" forKey:?];
    }
  }
}

- (void)setLargeScreenElementPaddingFromContext:(id)context
{
  contextCopy = context;
  v4 = *(MEMORY[0x277D768C8] + 16);
  *&self->_largeScreenElementPadding.top = *MEMORY[0x277D768C8];
  *&self->_largeScreenElementPadding.bottom = v4;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqual:@"com.apple.Music"];

  if ((v7 & 1) == 0)
  {
    collectionView = [contextCopy collectionView];
    [collectionView bounds];
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

    [contextCopy activePageWidth];
    if (v22 == 455.0 || ([contextCopy activePageWidth], v23 == 341.0))
    {
      *&self->_largeScreenElementPadding.top = xmmword_215F3FD40;
      *&self->_largeScreenElementPadding.bottom = xmmword_215F3FD50;
    }
  }
}

- (CGSize)sizeForBadgeElement:(id)element
{
  elementCopy = element;
  [elementCopy size];
  v6 = v5;
  v7 = v4;
  if (v5 == *MEMORY[0x277CBF3A8] && v4 == *(MEMORY[0x277CBF3A8] + 8))
  {
    resourceName = [elementCopy resourceName];
    v10 = resourceName;
    if (resourceName && (SKUIImageWithResourceName(resourceName), (v11 = objc_claimAutoreleasedReturnValue()) != 0) || ([elementCopy fallbackImage], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (CGSize)sizeForImageElement:(id)element
{
  [(SKUIViewElementLayoutContext *)self _sizeForImageElement:element applyTransform:1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeForItemOfferButton:(id)button
{
  buttonCopy = button;
  buttonText = [buttonCopy buttonText];
  string = [buttonText string];

  itemIdentifier = [buttonCopy itemIdentifier];
  if (itemIdentifier)
  {
    v8 = itemIdentifier;
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
      parent = [buttonCopy parent];
      attributes = [parent attributes];
      v15 = [attributes objectForKey:@"supportsPlayButton"];
      bOOLValue = [v15 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v17 = [SKUIItemOfferButton localizedTitleForItemState:v10 clientContext:self->_clientContext];

        string = v17;
      }
    }
  }

  if (string)
  {
    v18 = [(NSMutableDictionary *)self->_itemOfferButtonSizes objectForKey:string];
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
      [(SKUIItemOfferButton *)self->_itemOfferButton setTitle:string];
      [(SKUIItemOfferButton *)self->_itemOfferButton sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
      v12 = v28;
      v11 = v29;
      v19 = [[SKUISizeValue alloc] initWithSize:v28, v29];
      [(NSMutableDictionary *)self->_itemOfferButtonSizes setObject:v19 forKey:string];
    }
  }

  else if ([buttonCopy buttonViewType] == 3)
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

- (CGSize)sizeForViewElement:(id)element width:(double)width
{
  elementCopy = element;
  widthCopy = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  elementType = [elementCopy elementType];
  if (elementType <= 68)
  {
    if (elementType > 47)
    {
      if (elementType > 49)
      {
        if (elementType != 50)
        {
          if (elementType == 51)
          {
            v15 = SKUIImageDeckView;
          }

          else
          {
            if (elementType != 62)
            {
              goto LABEL_82;
            }

            v15 = SKUIHorizontalListView;
          }

          goto LABEL_62;
        }

        buttonImage = [elementCopy buttonImage];
LABEL_55:
        titleItem = buttonImage;
        [(SKUIViewElementLayoutContext *)self _sizeForImageElement:buttonImage applyTransform:1];
        goto LABEL_56;
      }

      if (elementType == 48)
      {
        v15 = SKUISectionHeaderView;
        goto LABEL_62;
      }

      [(SKUIViewElementLayoutContext *)self _sizeForImageElement:elementCopy applyTransform:1];
LABEL_63:
      widthCopy = v24;
      v7 = v25;
      goto LABEL_82;
    }

    if (elementType > 12)
    {
      if (elementType == 13)
      {
        [(SKUIViewElementLayoutContext *)self sizeForItemOfferButton:elementCopy];
        goto LABEL_63;
      }

      if (elementType != 32)
      {
        if (elementType != 40)
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

      v21 = elementCopy;
      if ([(SKUIButtonBorderStyle *)v21 dividerType]== 3)
      {
        style = [(SKUIButtonBorderStyle *)v21 style];
        itemHeight = [style itemHeight];

        if (itemHeight)
        {
          [itemHeight floatValue];
          v7 = v31;
        }

        else
        {
          v7 = 10.0;
        }

        widthCopy = 0.0;
      }

LABEL_91:

      goto LABEL_82;
    }

    if (elementType == 8)
    {
      titleItem = elementCopy;
      if ([titleItem badgeType] == 1)
      {
        v34 = [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache layoutForWidth:width viewElement:titleItem];
        if (v34)
        {
          [SKUIAttributedStringView sizeWithLayout:v34 treatment:1];
          widthCopy = v35;
          v7 = v36;
        }

        goto LABEL_81;
      }

      [(SKUIViewElementLayoutContext *)self sizeForBadgeElement:titleItem];
      goto LABEL_56;
    }

    if (elementType != 12)
    {
      goto LABEL_82;
    }

    [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache sizeForButton:elementCopy width:width];
    widthCopy = v16;
    v7 = v17;
    buttonViewType = [elementCopy buttonViewType];
    if (buttonViewType <= 6)
    {
      if (!buttonViewType)
      {
LABEL_37:
        v19 = [SKUIButtonBorderStyle alloc];
        style2 = [elementCopy style];
        v21 = [(SKUIButtonBorderStyle *)v19 initWithElementStyle:style2];

        [SKUIStyledButton sizeForTextSize:0 buttonType:v21 borderStyle:widthCopy, v7];
        widthCopy = v22;
        v7 = v23;
        goto LABEL_91;
      }

      if (buttonViewType != 1)
      {
        if (buttonViewType != 6)
        {
          goto LABEL_82;
        }

        v44 = [SKUIButtonBorderStyle alloc];
        style3 = [elementCopy style];
        v21 = [(SKUIButtonBorderStyle *)v44 initWithElementStyle:style3];

        [SKUIStyledButton sizeForTextSize:[SKUIStyledButton buttonTypeForElement:elementCopy] buttonType:v21 borderStyle:widthCopy, v7];
        v47 = v46;
        v49 = v48;
        style4 = [elementCopy style];
        [style4 elementPadding];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        widthCopy = v47 + v54 + v58;
        v7 = v49 + v52 + v56;
        goto LABEL_91;
      }

      v61 = widthCopy;
      v62 = v7;
      v63 = 3;
    }

    else
    {
      if (buttonViewType > 0xD)
      {
        goto LABEL_82;
      }

      if (((1 << buttonViewType) & 0x2D00) != 0)
      {
        goto LABEL_37;
      }

      if (buttonViewType != 7)
      {
        if (buttonViewType != 12)
        {
          goto LABEL_82;
        }

        v15 = SKUIPlayButton;
        goto LABEL_62;
      }

      v61 = widthCopy;
      v62 = v7;
      v63 = 4;
    }

    [SKUIStyledButton sizeForTextSize:v63 buttonType:v61, v62];
    goto LABEL_63;
  }

  if (elementType > 134)
  {
    if (elementType <= 143)
    {
      if (elementType != 135)
      {
        if (elementType == 138)
        {
          v32 = [(NSMapTable *)self->_editorialLayouts objectForKey:elementCopy];
          if (v32)
          {
            [v32 layoutHeightForOrientation:0 expanded:{-[SKUIViewElementLayoutContext isEditorialLayoutExpanded:](self, "isEditorialLayoutExpanded:", v32)}];
            v7 = v33;
          }

          else
          {
            [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache estimatedSizeForLabel:elementCopy width:width];
            width = v42;
            v7 = v43;
          }

          widthCopy = width;
        }

        else if (elementType == 141)
        {
          titleItem = elementCopy;
          itemIdentifier = [titleItem itemIdentifier];
          if (itemIdentifier)
          {
            v12 = itemIdentifier;
            v13 = +[SKUIItemStateCenter defaultCenter];
            storeIdentifier = [v13 stateForItemWithIdentifier:v12];
          }

          else
          {
            storeIdentifier = [titleItem storeIdentifier];

            if (!storeIdentifier)
            {
              goto LABEL_68;
            }

            v13 = +[SKUIItemStateCenter defaultCenter];
            storeIdentifier2 = [titleItem storeIdentifier];
            storeIdentifier = [v13 stateForItemWithStoreIdentifier:storeIdentifier2];
          }

LABEL_68:
          if ([SKUIStyledButton usesItemOfferAppearanceForButtonType:1 itemState:storeIdentifier])
          {
            [(SKUIViewElementLayoutContext *)self sizeForItemOfferButton:titleItem];
          }

          else
          {
            if (width < 0.00000011920929)
            {
              [(SKUIViewElementLayoutContext *)self sizeForItemOfferButton:titleItem];
              v7 = v40;
              widthCopy = v41 + -20.0;
LABEL_80:

              goto LABEL_81;
            }

            [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache sizeForButton:titleItem width:width];
            [SKUIStyledButton sizeForTextSize:1 buttonType:?];
          }

          widthCopy = v38;
          v7 = v39;
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      v15 = SKUIStarRatingViewElementView;
      goto LABEL_62;
    }

    if (elementType != 144)
    {
      if (elementType != 152)
      {
        if (elementType != 154)
        {
          goto LABEL_82;
        }

        v15 = SKUIImageGridView;
        goto LABEL_62;
      }

      buttonImage = [elementCopy thumbnailImage];
      goto LABEL_55;
    }

    v15 = SKUITomatoRatingView;
LABEL_62:
    [(__objc2_class *)v15 sizeThatFitsWidth:elementCopy viewElement:self context:width];
    goto LABEL_63;
  }

  if (elementType <= 79)
  {
    if (elementType == 69)
    {
      titleItem = [elementCopy titleItem];
      [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache sizeForViewElement:titleItem width:width];
LABEL_56:
      widthCopy = v27;
      v7 = v28;
LABEL_81:

      goto LABEL_82;
    }

    if (elementType != 77)
    {
      goto LABEL_82;
    }

    v15 = SKUIOfferView;
    goto LABEL_62;
  }

  switch(elementType)
  {
    case 80:
      [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache estimatedSizeForOrdinal:elementCopy width:width];
      goto LABEL_63;
    case 109:
      widthCopy = 0.0;
      v7 = 29.0;
      break;
    case 131:
      v15 = SKUIStackListCollectionViewCell;
      goto LABEL_62;
  }

LABEL_82:

  v59 = widthCopy;
  v60 = v7;
  result.height = v60;
  result.width = v59;
  return result;
}

- (id)textPropertiesForViewElement:(id)element width:(double)width
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (elementType == 138)
  {
    v9 = [(NSMapTable *)self->_editorialLayouts objectForKey:elementCopy];
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
      v11 = [(SKUIViewElementTextLayoutCache *)self->_labelLayoutCache layoutForWidth:width viewElement:elementCopy];
      if (v11)
      {
        v12 = [[SKUIViewTextProperties alloc] initWithStringLayout:v11];
        goto LABEL_10;
      }
    }

    v8 = 0;
    goto LABEL_12;
  }

  if (elementType == 135)
  {
    v8 = [SKUIStarRatingViewElementView textPropertiesForViewElement:elementCopy width:self context:width];
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)transientRequestIdentifierForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  switch(elementType)
  {
    case 152:
      thumbnailImage = [elementCopy thumbnailImage];
      break;
    case 50:
      thumbnailImage = [elementCopy buttonImage];
      break;
    case 49:
      transientResourceCacheKey = [elementCopy transientResourceCacheKey];
      if (!transientResourceCacheKey)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    default:
      goto LABEL_5;
  }

  v9 = thumbnailImage;
  transientResourceCacheKey = [thumbnailImage transientResourceCacheKey];

  if (!transientResourceCacheKey)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v7 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:transientResourceCacheKey];

LABEL_10:

  return v7;
}

- (void)_artworkRequestDidLoadImageNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(object, "requestIdentifier")}];
  if ([(NSMutableSet *)self->_observedArtworkRequestIDs containsObject:v5])
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKey:@"SKUIArtworkRequestImageKey"];

    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_artworkRequestDelegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained artworkRequest:object didLoadImage:v7];
      }
    }

    [(NSMutableSet *)self->_observedArtworkRequestIDs removeObject:v5];
  }
}

+ (double)_calculateValueFromString:(id)string withDefault:(double)default coefficent:(double)coefficent
{
  stringCopy = string;
  if ([stringCopy length])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v9 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v10 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v9];
    v14 = 0.0;
    default = 0.0;
    if ([v10 scanDouble:&v14])
    {
      v11 = [v10 scanString:@"%" intoString:0];
      default = v14;
      if (v14 > 0.0 && v11 != 0)
      {
        default = floor(v14 * coefficent / 100.0);
      }
    }
  }

  return default;
}

- (BOOL)_loadImageForURL:(id)l cacheKey:(id)key dataConsumer:(id)consumer reason:(int64_t)reason
{
  lCopy = l;
  keyCopy = key;
  consumerCopy = consumer;
  v13 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:keyCopy];
  v14 = v13;
  if (v13 && -[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_resourceLoader, "trySetReason:forRequestWithIdentifier:", reason, [v13 unsignedIntegerValue]))
  {
    [(NSMutableSet *)self->_observedArtworkRequestIDs addObject:v14];
    v15 = 0;
  }

  else
  {
    v16 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIResourceRequest *)v16 setCacheKey:keyCopy];
    [(SKUIArtworkRequest *)v16 setDataConsumer:consumerCopy];
    [(SKUIArtworkRequest *)v16 setURL:lCopy];
    v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v16, "requestIdentifier")}];
    [(NSMutableSet *)self->_observedArtworkRequestIDs addObject:v17];
    v15 = [(SKUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v16 reason:reason];
  }

  return v15;
}

- (CGSize)_sizeForImageElement:(id)element applyTransform:(BOOL)transform
{
  transformCopy = transform;
  elementCopy = element;
  [elementCopy size];
  v8 = v7;
  v9 = v6;
  if (v7 == *MEMORY[0x277CBF3A8] && v6 == *(MEMORY[0x277CBF3A8] + 8))
  {
    resourceName = [elementCopy resourceName];
    v12 = resourceName;
    if (resourceName)
    {
      v13 = SKUIImageWithResourceName(resourceName);
      if (v13)
      {
        v14 = v13;
        [v13 size];
        v8 = v15;
        v9 = v16;
      }
    }
  }

  style = [elementCopy style];
  v18 = style;
  if (transformCopy && style)
  {
    [style transform];
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