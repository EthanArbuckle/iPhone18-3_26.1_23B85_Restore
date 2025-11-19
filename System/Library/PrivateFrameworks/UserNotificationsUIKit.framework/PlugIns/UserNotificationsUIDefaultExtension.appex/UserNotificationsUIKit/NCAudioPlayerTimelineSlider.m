@interface NCAudioPlayerTimelineSlider
- (NCAudioPlayerTimelineSlider)initWithFrame:(CGRect)a3;
@end

@implementation NCAudioPlayerTimelineSlider

- (NCAudioPlayerTimelineSlider)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NCAudioPlayerTimelineSlider;
  return [(NCAudioPlayerTimelineSlider *)&v4 initWithFrame:5 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end