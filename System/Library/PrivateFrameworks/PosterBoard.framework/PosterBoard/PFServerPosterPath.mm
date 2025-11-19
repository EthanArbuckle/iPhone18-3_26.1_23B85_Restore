@interface PFServerPosterPath
@end

@implementation PFServerPosterPath

uint64_t __50__PFServerPosterPath_PBFUtilities__pbf_sha256Hash__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 absoluteString];
  v6 = [v4 absoluteString];

  v7 = [v5 compare:v6];
  return v7;
}

@end