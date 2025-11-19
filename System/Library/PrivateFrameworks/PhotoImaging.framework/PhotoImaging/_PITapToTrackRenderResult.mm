@interface _PITapToTrackRenderResult
- (_PITapToTrackRenderResult)initWithCompletedTrack:(id)a3;
@end

@implementation _PITapToTrackRenderResult

- (_PITapToTrackRenderResult)initWithCompletedTrack:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PITapToTrackRenderResult;
  v6 = [(_PITapToTrackRenderResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_completedTrack, a3);
  }

  return v7;
}

@end