@interface MKMapView(Weather)
- (void)configureForMuted;
- (void)configureForWeather;
- (void)configureForWeatherWind;
@end

@implementation MKMapView(Weather)

- (void)configureForWeather
{
  v2 = [objc_alloc(MEMORY[0x277CD4F50]) initWithEmphasisStyle:101];
  [a1 setPreferredConfiguration:?];
}

- (void)configureForMuted
{
  v2 = [objc_alloc(MEMORY[0x277CD4F50]) initWithEmphasisStyle:1];
  [a1 setPreferredConfiguration:?];
}

- (void)configureForWeatherWind
{
  v2 = objc_alloc(MEMORY[0x277CD4F50]);
  v3 = [v2 initWithEmphasisStyle:*MEMORY[0x277CD4D88]];
  [a1 setPreferredConfiguration:?];
}

@end