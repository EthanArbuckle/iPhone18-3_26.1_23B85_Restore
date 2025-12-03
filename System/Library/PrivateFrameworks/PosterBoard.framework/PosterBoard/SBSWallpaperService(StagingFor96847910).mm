@interface SBSWallpaperService(StagingFor96847910)
- (void)staging_fetchPosterSignificantEventsCounterWithCompletionHandler:()StagingFor96847910;
@end

@implementation SBSWallpaperService(StagingFor96847910)

- (void)staging_fetchPosterSignificantEventsCounterWithCompletionHandler:()StagingFor96847910
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [self fetchPosterSignificantEventsCounterWithCompletionHandler:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

@end