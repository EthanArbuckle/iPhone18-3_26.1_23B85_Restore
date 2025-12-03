@interface PXStoryCompanionTimelineRequestConfiguration
- (CGSize)viewportSize;
- (PXStoryCompanionTimelineRequestConfiguration)init;
- (PXStoryCompanionTimelineRequestConfiguration)initWithAssetCollection:(id)collection viewportSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXStoryCompanionTimelineRequestConfiguration

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  assetCollection = [(PXStoryCompanionTimelineRequestConfiguration *)self assetCollection];
  [(PXStoryCompanionTimelineRequestConfiguration *)self viewportSize];
  v6 = [v4 initWithAssetCollection:assetCollection viewportSize:?];

  queue = [(PXStoryCompanionTimelineRequestConfiguration *)self queue];
  [v6 setQueue:queue];

  [v6 setSongsProducerKind:{-[PXStoryCompanionTimelineRequestConfiguration songsProducerKind](self, "songsProducerKind")}];
  return v6;
}

- (PXStoryCompanionTimelineRequestConfiguration)initWithAssetCollection:(id)collection viewportSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = PXStoryCompanionTimelineRequestConfiguration;
  v9 = [(PXStoryCompanionTimelineRequestConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollection, collection);
    v10->_viewportSize.width = width;
    v10->_viewportSize.height = height;
    objc_storeStrong(&v10->_queue, MEMORY[0x1E69E96A0]);
    v10->_songsProducerKind = 0;
  }

  return v10;
}

- (PXStoryCompanionTimelineRequestConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryCompanionTimelineRequestConfiguration.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXStoryCompanionTimelineRequestConfiguration init]"}];

  abort();
}

@end