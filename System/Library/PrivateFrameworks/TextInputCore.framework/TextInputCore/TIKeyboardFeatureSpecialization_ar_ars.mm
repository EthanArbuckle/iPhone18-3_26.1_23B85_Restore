@interface TIKeyboardFeatureSpecialization_ar_ars
- (id)terminatorsDeletingAutospace;
@end

@implementation TIKeyboardFeatureSpecialization_ar_ars

- (id)terminatorsDeletingAutospace
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__TIKeyboardFeatureSpecialization_ar_ars_terminatorsDeletingAutospace__block_invoke;
  block[3] = &unk_278733308;
  block[4] = self;
  if ([TIKeyboardFeatureSpecialization_ar_ars terminatorsDeletingAutospace]::onceToken != -1)
  {
    dispatch_once(&[TIKeyboardFeatureSpecialization_ar_ars terminatorsDeletingAutospace]::onceToken, block);
  }

  return [TIKeyboardFeatureSpecialization_ar_ars terminatorsDeletingAutospace]::result;
}

@end