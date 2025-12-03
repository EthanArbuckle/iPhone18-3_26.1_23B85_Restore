@interface PXStoryResourcesPreloadingRequest
- (PXStoryResourcesPreloadingRequest)initWithTimeline:(id)timeline timelineAttributes:(unint64_t)attributes startingSegmentIdentifier:(int64_t)identifier shouldIgnoreStartingSegmentIdentifier:(BOOL)segmentIdentifier;
@end

@implementation PXStoryResourcesPreloadingRequest

- (PXStoryResourcesPreloadingRequest)initWithTimeline:(id)timeline timelineAttributes:(unint64_t)attributes startingSegmentIdentifier:(int64_t)identifier shouldIgnoreStartingSegmentIdentifier:(BOOL)segmentIdentifier
{
  timelineCopy = timeline;
  v15.receiver = self;
  v15.super_class = PXStoryResourcesPreloadingRequest;
  v12 = [(PXStoryResourcesPreloadingRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timeline, timeline);
    v13->_timelineAttributes = attributes;
    v13->_startingSegmentIdentifier = identifier;
    v13->_shouldIgnoreStartingSegmentIdentifier = segmentIdentifier;
  }

  return v13;
}

@end