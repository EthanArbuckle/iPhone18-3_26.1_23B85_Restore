@interface NCAudioPlayerTimelineSlider
- (NCAudioPlayerTimelineSlider)initWithFrame:(CGRect)frame;
@end

@implementation NCAudioPlayerTimelineSlider

- (NCAudioPlayerTimelineSlider)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = NCAudioPlayerTimelineSlider;
  return [(NCAudioPlayerTimelineSlider *)&v4 initWithFrame:5 style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end