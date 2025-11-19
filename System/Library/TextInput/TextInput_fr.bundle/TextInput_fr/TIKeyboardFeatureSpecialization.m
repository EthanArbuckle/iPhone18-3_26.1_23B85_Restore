@interface TIKeyboardFeatureSpecialization
@end

@implementation TIKeyboardFeatureSpecialization

void __68__TIKeyboardFeatureSpecialization_fr_accentKeyStringForInputPrefix___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x29EDB8E50]);
  v3 = [@"aujourd c d entr j l m n prud s t y" componentsSeparatedByString:@" "];
  v1 = [v0 initWithArray:v3];
  v2 = [TIKeyboardFeatureSpecialization_fr accentKeyStringForInputPrefix:]::apostrophePrefixes;
  [TIKeyboardFeatureSpecialization_fr accentKeyStringForInputPrefix:]::apostrophePrefixes = v1;
}

void __70__TIKeyboardFeatureSpecialization_fr_accentKeyStringForKeyboardState___block_invoke()
{
  v2 = [MEMORY[0x29EDB9F50] letterCharacterSet];
  v0 = [v2 invertedSet];
  v1 = [TIKeyboardFeatureSpecialization_fr accentKeyStringForKeyboardState:]::nonLetterSet;
  [TIKeyboardFeatureSpecialization_fr accentKeyStringForKeyboardState:]::nonLetterSet = v0;
}

uint64_t __57__TIKeyboardFeatureSpecialization_fr_createInputManager___block_invoke(int a1, KB *this)
{
  v2 = this;
  LODWORD(result) = KB::character_is_word_medial_punctuation(this);
  if (v2 == 45)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t __66__TIKeyboardFeatureSpecialization_fr_terminatorsDeletingAutospace__block_invoke()
{
  -[TIKeyboardFeatureSpecialization_fr terminatorsDeletingAutospace]::result = [objc_alloc(MEMORY[0x29EDC6FD8]) initWithCharactersInString:{@", .]}"}]);

  return MEMORY[0x2A1C71028]();
}

@end