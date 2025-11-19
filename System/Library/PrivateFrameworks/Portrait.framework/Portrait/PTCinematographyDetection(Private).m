@interface PTCinematographyDetection(Private)
@end

@implementation PTCinematographyDetection(Private)

- (void)_fixMissingTrackIdentifier:()Private .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "error: detection missing track identifier (%@)", &v2, 0xCu);
}

@end