@interface SBApplication(Classic_Internal)
- (BOOL)_calculateSupportedTypesLazilyIfNecessary;
@end

@implementation SBApplication(Classic_Internal)

- (BOOL)_calculateSupportedTypesLazilyIfNecessary
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  *a1 = v2;
  return [v2 userInterfaceIdiom] == 1;
}

@end