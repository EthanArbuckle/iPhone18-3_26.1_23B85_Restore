@interface PXGPPTVideoPlaybackViewController
- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)result;
- (PXGPPTVideoPlaybackViewController)initWithAssetsDataSource:(id)source;
- (PXGPPTVideoPlaybackViewController)initWithLayout:(id)layout;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout;
- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index;
- (void)viewDidLoad;
@end

@implementation PXGPPTVideoPlaybackViewController

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout
{
  v5 = [(PXAssetsDataSource *)self->_dataSource identifier:range];
  dataSource = self->_dataSource;
  v9 = v5;
  v10 = xmmword_1A5380D10;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(PXAssetsDataSource *)dataSource assetsInSectionIndexPath:&v9];

  return v7;
}

- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index
{
  indexCopy = index;
  v6 = objc_alloc_init(off_1E7721600);
  [v6 setContentSource:self];
  [v6 setNumberOfColumns:self->_numberOfColumns];
  if (indexCopy)
  {
    v7 = 21;
  }

  else
  {
    v7 = 1;
  }

  if (indexCopy)
  {
    v8 = 5;
  }

  else
  {
    v8 = 2;
  }

  [v6 setNumberOfItems:v7];
  [v6 setMediaKind:v8];

  return v6;
}

- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)result
{
  v5 = result.width * 0.25 * ((((index << 63 >> 63) & 0x14) + self->_numberOfColumns) / self->_numberOfColumns);
  result.height = v5;
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PXGPPTVideoPlaybackViewController;
  [(PXGPPTViewController *)&v5 viewDidLoad];
  v3 = objc_alloc_init(off_1E7721580);
  gridView = [(PXGPPTViewController *)self gridView];
  [gridView registerAllTextureProvidersWithMediaProvider:v3 namedImagesBundle:0];
}

- (PXGPPTVideoPlaybackViewController)initWithLayout:(id)layout
{
  layoutCopy = layout;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPPTVideoPlaybackViewController.m" lineNumber:56 description:{@"%s is not available as initializer", "-[PXGPPTVideoPlaybackViewController initWithLayout:]"}];

  abort();
}

- (PXGPPTVideoPlaybackViewController)initWithAssetsDataSource:(id)source
{
  sourceCopy = source;
  v6 = objc_alloc_init(off_1E77216D8);
  v16.receiver = self;
  v16.super_class = PXGPPTVideoPlaybackViewController;
  v7 = [(PXGPPTViewController *)&v16 initWithLayout:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSource, source);
    purpleColor = [MEMORY[0x1E69DC888] purpleColor];
    spriteColor = v8->_spriteColor;
    v8->_spriteColor = purpleColor;

    v8->_numberOfColumns = 4;
    v11 = dispatch_queue_create("com.apple.photos._pixelBufferSources_queue", 0);
    pixelBufferSources_queue = v8->_pixelBufferSources_queue;
    v8->_pixelBufferSources_queue = v11;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    pixelBufferSourcesByDisplayAsset = v8->_pixelBufferSourcesByDisplayAsset;
    v8->_pixelBufferSourcesByDisplayAsset = strongToStrongObjectsMapTable;

    [v6 setAxis:1];
    [v6 setInterlayoutSpacing:10.0];
    [v6 insertSublayoutProvider:v8 inRange:{0, 10}];
  }

  return v8;
}

@end