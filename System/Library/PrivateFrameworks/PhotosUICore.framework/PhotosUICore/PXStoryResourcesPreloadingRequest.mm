@interface PXStoryResourcesPreloadingRequest
- (PXStoryResourcesPreloadingRequest)initWithTimeline:(id)a3 timelineAttributes:(unint64_t)a4 startingSegmentIdentifier:(int64_t)a5 shouldIgnoreStartingSegmentIdentifier:(BOOL)a6;
@end

@implementation PXStoryResourcesPreloadingRequest

- (PXStoryResourcesPreloadingRequest)initWithTimeline:(id)a3 timelineAttributes:(unint64_t)a4 startingSegmentIdentifier:(int64_t)a5 shouldIgnoreStartingSegmentIdentifier:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = PXStoryResourcesPreloadingRequest;
  v12 = [(PXStoryResourcesPreloadingRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timeline, a3);
    v13->_timelineAttributes = a4;
    v13->_startingSegmentIdentifier = a5;
    v13->_shouldIgnoreStartingSegmentIdentifier = a6;
  }

  return v13;
}

@end