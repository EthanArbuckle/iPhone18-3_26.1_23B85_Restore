@interface TIKeyboardFeatureSpecialization_en
- (id)terminatorsDeletingAutospace;
@end

@implementation TIKeyboardFeatureSpecialization_en

- (id)terminatorsDeletingAutospace
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __66__TIKeyboardFeatureSpecialization_en_terminatorsDeletingAutospace__block_invoke;
  block[3] = &unk_29F378208;
  block[4] = self;
  if (terminatorsDeletingAutospace_onceToken != -1)
  {
    dispatch_once(&terminatorsDeletingAutospace_onceToken, block);
  }

  return terminatorsDeletingAutospace_result;
}

@end