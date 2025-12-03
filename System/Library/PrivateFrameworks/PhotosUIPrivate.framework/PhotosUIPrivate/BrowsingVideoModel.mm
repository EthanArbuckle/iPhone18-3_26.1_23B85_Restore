@interface BrowsingVideoModel
- (void)mediaTimelineControl:(id)control didChangeValue:(float)value;
- (void)mediaTimelineControlDidEndChanging:(id)changing;
- (void)mediaTimelineControlDidEndDecelerating:(id)decelerating;
- (void)mediaTimelineControlWillBeginChanging:(id)changing;
- (void)videoPlayer:(id)player currentTimeDidChange:(id *)change;
@end

@implementation BrowsingVideoModel

- (void)videoPlayer:(id)player currentTimeDidChange:(id *)change
{
  playerCopy = player;
  selfCopy = self;
  sub_1B372D5A4();
}

- (void)mediaTimelineControl:(id)control didChangeValue:(float)value
{
  controlCopy = control;
  selfCopy = self;
  sub_1B372EE78(value);
}

- (void)mediaTimelineControlWillBeginChanging:(id)changing
{
  changingCopy = changing;
  selfCopy = self;
  sub_1B372F0B8();
}

- (void)mediaTimelineControlDidEndChanging:(id)changing
{
  changingCopy = changing;
  selfCopy = self;
  sub_1B372F290();
}

- (void)mediaTimelineControlDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_1B372F3CC();
}

@end