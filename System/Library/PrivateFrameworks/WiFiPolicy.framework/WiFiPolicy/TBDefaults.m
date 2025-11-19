@interface TBDefaults
+ (double)nearbyTileSearchRadius;
+ (double)tileSearchRadius;
+ (unsigned)zoomLevel;
@end

@implementation TBDefaults

+ (double)nearbyTileSearchRadius
{
  if (nearbyTileSearchRadius_nearbyRadiusToken != -1)
  {
    +[TBDefaults nearbyTileSearchRadius];
  }

  return *&_nearbyTileSearchRadius;
}

+ (unsigned)zoomLevel
{
  if (zoomLevel_zoomToken != -1)
  {
    +[TBDefaults zoomLevel];
  }

  if (_overrideZoomLevel)
  {
    NSLog(&cfstr_SReturningOver.isa, "+[TBDefaults zoomLevel]", _overrideZoomLevel, _zoomLevel);
    v2 = &_overrideZoomLevel;
  }

  else
  {
    v2 = &_zoomLevel;
  }

  return *v2;
}

+ (double)tileSearchRadius
{
  if (tileSearchRadius_radiusToken != -1)
  {
    +[TBDefaults tileSearchRadius];
  }

  return *&_tileSearchRadius;
}

void __30__TBDefaults_tileSearchRadius__block_invoke()
{
  v1 = [MEMORY[0x277D0EBD8] sharedService];
  [v1 wiFiQualitySearchRadiusMeters];
  _tileSearchRadius = v0;
}

void __36__TBDefaults_nearbyTileSearchRadius__block_invoke()
{
  v1 = [MEMORY[0x277D0EBD8] sharedService];
  [v1 wiFiQualitySmallSearchRadiusMeters];
  _nearbyTileSearchRadius = v0;
}

void __23__TBDefaults_zoomLevel__block_invoke()
{
  v0 = [MEMORY[0x277D0EBD8] sharedService];
  _zoomLevel = [v0 wiFiQualitySearchZoomLevel];
}

@end