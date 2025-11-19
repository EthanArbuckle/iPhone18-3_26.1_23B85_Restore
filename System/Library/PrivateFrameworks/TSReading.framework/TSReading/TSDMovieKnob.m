@interface TSDMovieKnob
- (void)updateHitRegionPathForRep:(id)a3;
@end

@implementation TSDMovieKnob

- (void)updateHitRegionPathForRep:(id)a3
{
  self->super.super.mHitRegionPath = 0;
  [(TSDKnob *)self radius];
  self->super.super.mHitRegionPath = [TSDBezierPath bezierPathWithOvalInRect:-v4, -v4, v4 + v4, v4 + v4];
}

@end