@interface MTPodcastUpdateAverageCalculator
- (MTPodcastUpdateAverageCalculator)init;
- (void)unsafeSetUpdateAverageWithPodcast:(id)a3 on:(id)a4;
@end

@implementation MTPodcastUpdateAverageCalculator

- (void)unsafeSetUpdateAverageWithPodcast:(id)a3 on:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D8FDBB24(v6, v7);
}

- (MTPodcastUpdateAverageCalculator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PodcastUpdateAverageCalculator();
  return [(MTPodcastUpdateAverageCalculator *)&v3 init];
}

@end