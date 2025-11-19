@interface BrowsingVideoModel
- (void)mediaTimelineControl:(id)a3 didChangeValue:(float)a4;
- (void)mediaTimelineControlDidEndChanging:(id)a3;
- (void)mediaTimelineControlDidEndDecelerating:(id)a3;
- (void)mediaTimelineControlWillBeginChanging:(id)a3;
- (void)videoPlayer:(id)a3 currentTimeDidChange:(id *)a4;
@end

@implementation BrowsingVideoModel

- (void)videoPlayer:(id)a3 currentTimeDidChange:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1B372D5A4();
}

- (void)mediaTimelineControl:(id)a3 didChangeValue:(float)a4
{
  v6 = a3;
  v7 = self;
  sub_1B372EE78(a4);
}

- (void)mediaTimelineControlWillBeginChanging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B372F0B8();
}

- (void)mediaTimelineControlDidEndChanging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B372F290();
}

- (void)mediaTimelineControlDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B372F3CC();
}

@end