@interface MTPodcastUpdateAverageCalculator
- (MTPodcastUpdateAverageCalculator)init;
- (void)unsafeSetUpdateAverageWithPodcast:(id)podcast on:(id)on;
@end

@implementation MTPodcastUpdateAverageCalculator

- (void)unsafeSetUpdateAverageWithPodcast:(id)podcast on:(id)on
{
  podcastCopy = podcast;
  onCopy = on;
  selfCopy = self;
  sub_1D8FDBB24(podcastCopy, onCopy);
}

- (MTPodcastUpdateAverageCalculator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PodcastUpdateAverageCalculator();
  return [(MTPodcastUpdateAverageCalculator *)&v3 init];
}

@end