@interface ADSearchObjectNativeAdTracker
+ (void)beginTrackingWithAdverts:(id)a3;
+ (void)endTrackingFor:(id)a3;
- (ADSearchObjectNativeAdTracker)init;
@end

@implementation ADSearchObjectNativeAdTracker

+ (void)beginTrackingWithAdverts:(id)a3
{
  sub_264E52098();
  v3 = sub_264E563D4();
  _s9SearchAds0A21ObjectNativeAdTrackerC13beginTracking7advertsySaySo18ADAppAdvertisementCG_tFZ_0(v3);
}

+ (void)endTrackingFor:(id)a3
{
  v3 = sub_264E563D4();
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_264E56154();
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_264E56144();
      sub_264E56134();

      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

- (ADSearchObjectNativeAdTracker)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchObjectNativeAdTracker();
  return [(ADSearchObjectNativeAdTracker *)&v3 init];
}

@end