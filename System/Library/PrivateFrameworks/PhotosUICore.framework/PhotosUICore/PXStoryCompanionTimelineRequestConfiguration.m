@interface PXStoryCompanionTimelineRequestConfiguration
- (CGSize)viewportSize;
- (PXStoryCompanionTimelineRequestConfiguration)init;
- (PXStoryCompanionTimelineRequestConfiguration)initWithAssetCollection:(id)a3 viewportSize:(CGSize)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PXStoryCompanionTimelineRequestConfiguration *)self assetCollection];
  [(PXStoryCompanionTimelineRequestConfiguration *)self viewportSize];
  v6 = [v4 initWithAssetCollection:v5 viewportSize:?];

  v7 = [(PXStoryCompanionTimelineRequestConfiguration *)self queue];
  [v6 setQueue:v7];

  [v6 setSongsProducerKind:{-[PXStoryCompanionTimelineRequestConfiguration songsProducerKind](self, "songsProducerKind")}];
  return v6;
}

- (PXStoryCompanionTimelineRequestConfiguration)initWithAssetCollection:(id)a3 viewportSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = PXStoryCompanionTimelineRequestConfiguration;
  v9 = [(PXStoryCompanionTimelineRequestConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetCollection, a3);
    v10->_viewportSize.width = width;
    v10->_viewportSize.height = height;
    objc_storeStrong(&v10->_queue, MEMORY[0x1E69E96A0]);
    v10->_songsProducerKind = 0;
  }

  return v10;
}

- (PXStoryCompanionTimelineRequestConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryCompanionTimelineRequestConfiguration.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXStoryCompanionTimelineRequestConfiguration init]"}];

  abort();
}

@end