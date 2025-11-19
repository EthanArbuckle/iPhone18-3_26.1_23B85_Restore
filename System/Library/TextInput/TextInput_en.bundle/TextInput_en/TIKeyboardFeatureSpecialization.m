@interface TIKeyboardFeatureSpecialization
@end

@implementation TIKeyboardFeatureSpecialization

void __66__TIKeyboardFeatureSpecialization_en_terminatorsDeletingAutospace__block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = TIKeyboardFeatureSpecialization_en;
  v1 = objc_msgSendSuper2(&v4, sel_terminatorsDeletingAutospace);
  v2 = [v1 mutableCopy];

  [v2 addCharactersInString:@"'’"];
  v3 = terminatorsDeletingAutospace_result;
  terminatorsDeletingAutospace_result = v2;
}

@end