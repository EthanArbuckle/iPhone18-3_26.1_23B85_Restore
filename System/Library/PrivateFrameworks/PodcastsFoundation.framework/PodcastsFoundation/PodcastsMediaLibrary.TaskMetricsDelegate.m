@interface PodcastsMediaLibrary.TaskMetricsDelegate
- (_TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate)init;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
@end

@implementation PodcastsMediaLibrary.TaskMetricsDelegate

- (_TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate_strongRef) = 0;
  v6.receiver = self;
  v6.super_class = _s19TaskMetricsDelegateCMa();
  v2 = [(PodcastsMediaLibrary.TaskMetricsDelegate *)&v6 init];
  v3 = *(&v2->super.isa + OBJC_IVAR____TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate_strongRef);
  *(&v2->super.isa + OBJC_IVAR____TtCC18PodcastsFoundation20PodcastsMediaLibrary19TaskMetricsDelegate_strongRef) = v2;
  v4 = v2;

  return v4;
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D90BA814(v10);
}

@end