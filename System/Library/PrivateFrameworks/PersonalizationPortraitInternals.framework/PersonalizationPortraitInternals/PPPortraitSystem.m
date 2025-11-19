@interface PPPortraitSystem
+ (void)start;
@end

@implementation PPPortraitSystem

+ (void)start
{
  +[PPMaintenance registerMaintenanceTasksInternal];
  +[PPSWHarvestingSystem start];
  v2 = +[PPNamedEntityExtractionPlugin sharedInstance];
  v3 = +[PPSettings sharedInstance];

  +[PPTextUnderstandingObservationSystem start];
}

@end