@interface PXPhotosSearchFeatureAvailabilityManagerObjcHelper
+ (BOOL)wantsSearchReportAConcernStyling;
- (PXPhotosSearchFeatureAvailabilityManagerObjcHelper)init;
@end

@implementation PXPhotosSearchFeatureAvailabilityManagerObjcHelper

+ (BOOL)wantsSearchReportAConcernStyling
{
  if ([a1 searchReportAConcernIsInternalOrSeed])
  {
    return 1;
  }

  return [a1 searchReportAConcernIsExternal];
}

- (PXPhotosSearchFeatureAvailabilityManagerObjcHelper)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosSearchFeatureAvailabilityManagerObjcHelper;
  return [(PXPhotosSearchFeatureAvailabilityManagerObjcHelper *)&v3 init];
}

@end