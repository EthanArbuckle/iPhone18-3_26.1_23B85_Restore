@interface TSDMovieKnob
- (void)updateHitRegionPathForRep:(id)rep;
@end

@implementation TSDMovieKnob

- (void)updateHitRegionPathForRep:(id)rep
{
  self->super.super.mHitRegionPath = 0;
  [(TSDKnob *)self radius];
  self->super.super.mHitRegionPath = [TSDBezierPath bezierPathWithOvalInRect:-v4, -v4, v4 + v4, v4 + v4];
}

@end