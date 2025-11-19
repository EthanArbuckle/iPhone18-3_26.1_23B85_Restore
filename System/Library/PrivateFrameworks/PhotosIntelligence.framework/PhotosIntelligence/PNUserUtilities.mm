@interface PNUserUtilities
+ (BOOL)isUserFCS;
@end

@implementation PNUserUtilities

+ (BOOL)isUserFCS
{
  if (+[PNUserUtilities isUserSeed])
  {
    return 0;
  }

  else
  {
    return PFOSVariantHasInternalDiagnostics() ^ 1;
  }
}

@end