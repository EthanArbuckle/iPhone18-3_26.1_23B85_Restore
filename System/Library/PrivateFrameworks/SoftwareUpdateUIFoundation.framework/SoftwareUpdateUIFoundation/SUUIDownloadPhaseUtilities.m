@interface SUUIDownloadPhaseUtilities
+ (id)description:(int64_t)a3;
@end

@implementation SUUIDownloadPhaseUtilities

+ (id)description:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUIDownloadPhaseDownloading");
    }

    else if (a3 == 2)
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