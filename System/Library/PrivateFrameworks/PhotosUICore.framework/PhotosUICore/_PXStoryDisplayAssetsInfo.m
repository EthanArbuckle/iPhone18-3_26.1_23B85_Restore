@interface _PXStoryDisplayAssetsInfo
- (_PXStoryDisplayAssetsInfo)init;
- (const)oneUpPlaybackStyles;
- (id)displayAssetsWithCount:(int64_t)a3;
- (void)configureWithRange:(_NSRange)a3 resourcesDataSource:(id)a4 timelineStyle:(id)a5 nUpPlaybackStyleMapping:(const int64_t *)a6;
- (void)dealloc;
@end

@implementation _PXStoryDisplayAssetsInfo

- (const)oneUpPlaybackStyles
{
  p_oneUpPlaybackStyle = &self->_oneUpPlaybackStyle;
  if (!self->_oneUpPlaybackStyle && self->_count >= 1)
  {
    v4 = [(_PXStoryDisplayAssetsFetchResult *)self->_displayAssets storyDisplayAssetAtIndex:0];
    self->_oneUpPlaybackStyle = [(PXStoryTimelineStyle *)self->_timelineStyle finalOneUpPlaybackStyleForDisplayAsset:v4 originalPlaybackStyle:*self->_originalPlaybackStyles];
  }

  return p_oneUpPlaybackStyle;
}

- (id)displayAssetsWithCount:(int64_t)a3
{
  [(_PXStoryDisplayAssetsFetchResult *)self->_displayAssets setCount:a3];
  displayAssets = self->_displayAssets;

  return displayAssets;
}

- (void)configureWithRange:(_NSRange)a3 resourcesDataSource:(id)a4 timelineStyle:(id)a5 nUpPlaybackStyleMapping:(const int64_t *)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a5;
  [(_PXStoryDisplayAssetsFetchResult *)self->_displayAssets configureWithRange:location resourcesDataSource:length, a4];
  objc_storeStrong(&self->_timelineStyle, a5);
  self->_count = [(_PXStoryDisplayAssetsFetchResult *)self->_displayAssets configuredCount];
  *&v12 = self->_capacity;
  _PXGArrayCapacityResizeToCount();
}

- (void)dealloc
{
  free(self->_originalPlaybackStyles);
  free(self->_nUpPlaybackStyles);
  free(self->_assetContentInfos);
  v3.receiver = self;
  v3.super_class = _PXStoryDisplayAssetsInfo;
  [(_PXStoryDisplayAssetsInfo *)&v3 dealloc];
}

- (_PXStoryDisplayAssetsInfo)init
{
  v6.receiver = self;
  v6.super_class = _PXStoryDisplayAssetsInfo;
  v2 = [(_PXStoryDisplayAssetsInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PXStoryDisplayAssetsFetchResult);
    displayAssets = v2->_displayAssets;
    v2->_displayAssets = v3;
  }

  return v2;
}

@end