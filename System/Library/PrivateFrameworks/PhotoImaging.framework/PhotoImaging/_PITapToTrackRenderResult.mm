@interface _PITapToTrackRenderResult
- (_PITapToTrackRenderResult)initWithCompletedTrack:(id)track;
@end

@implementation _PITapToTrackRenderResult

- (_PITapToTrackRenderResult)initWithCompletedTrack:(id)track
{
  trackCopy = track;
  v9.receiver = self;
  v9.super_class = _PITapToTrackRenderResult;
  v6 = [(_PITapToTrackRenderResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_completedTrack, track);
  }

  return v7;
}

@end