@interface SUUIDownloadPhaseUtilities
+ (id)description:(int64_t)description;
@end

@implementation SUUIDownloadPhaseUtilities

+ (id)description:(int64_t)description
{
  if (description)
  {
    if (description == 1)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUIDownloadPhaseDownloading");
    }

    else if (description == 2)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUIDownloadPhasePreparing");
    }
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](@"SUUIDownloadPhaseUpdateRequested");
  }

  return v4;
}

@end