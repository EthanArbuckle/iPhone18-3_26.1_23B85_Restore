@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __59__NSUserDefaults_PBFUtilities__pbf_unprotectedUserDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PosterBoard.unprotectedUserDefaults"];
  v1 = pbf_unprotectedUserDefaults_unprotectedUserDefaults;
  pbf_unprotectedUserDefaults_unprotectedUserDefaults = v0;

  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];

  return MEMORY[0x282110310](@"com.apple.PosterBoard.unprotectedUserDefaults", v2, v3, 0, 4);
}

@end