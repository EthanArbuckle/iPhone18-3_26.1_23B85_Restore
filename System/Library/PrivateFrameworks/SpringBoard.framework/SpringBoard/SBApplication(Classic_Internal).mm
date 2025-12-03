@interface SBApplication(Classic_Internal)
- (BOOL)_calculateSupportedTypesLazilyIfNecessary;
@end

@implementation SBApplication(Classic_Internal)

- (BOOL)_calculateSupportedTypesLazilyIfNecessary
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  *self = currentDevice;
  return [currentDevice userInterfaceIdiom] == 1;
}

@end