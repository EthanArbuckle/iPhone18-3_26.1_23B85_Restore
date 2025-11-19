@interface PTCinematographyFrame(Private)
- (void)focusOnNothing;
@end

@implementation PTCinematographyFrame(Private)

- (void)_initWithCinematographyDictionary:()Private .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "warning: no detection found from legacy coefficients dictionary %@", &v2, 0xCu);
}

- (void)focusOnNothing
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2243FB000, a1, OS_LOG_TYPE_DEBUG, "stack trace: %@", &v3, 0xCu);
}

@end