@interface PLSpotlightProgressManager
+ (BOOL)deleteSpotlightProgressForPhotoLibraryPathManager:(id)a3;
@end

@implementation PLSpotlightProgressManager

+ (BOOL)deleteSpotlightProgressForPhotoLibraryPathManager:(id)a3
{
  v3 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_FAULT, "This class is not supported. Remove usage of deprecated Photos IPI rdar://140243729", v5, 2u);
  }

  return 0;
}

@end