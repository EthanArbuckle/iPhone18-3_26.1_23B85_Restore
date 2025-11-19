@interface FeedUpdateRequest.MediaRequestTelemetry
- (void)beginBuildingRequest;
@end

@implementation FeedUpdateRequest.MediaRequestTelemetry

- (void)beginBuildingRequest
{
  v4 = 6;

  sub_1D8D76684(&v4, &v5);
  v3 = *&self->_anon_8[OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestBuildingState];
  *(&self->super.isa + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestBuildingState) = v5;
}

@end