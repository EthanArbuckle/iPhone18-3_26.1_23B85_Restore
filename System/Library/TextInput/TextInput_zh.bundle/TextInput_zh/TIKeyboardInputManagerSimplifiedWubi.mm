@interface TIKeyboardInputManagerSimplifiedWubi
- (id)sortingMethods;
- (void)initImplementation;
@end

@implementation TIKeyboardInputManagerSimplifiedWubi

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC71C0];
  v3 = *MEMORY[0x29EDC71A8];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerSimplifiedWubi;
  return [(TIKeyboardInputManagerChinese *)&v5 initImplementationWithMode:v2 andLanguage:v3];
}

- (id)sortingMethods
{
  if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
  {
    v3 = &unk_2A2532370;
  }

  else
  {
    v4 = [(TIKeyboardInputManagerChinese *)self hasIdeographicCandidates];
    v5 = MEMORY[0x29EDB8D80];
    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:1];
    if (v4)
    {
      v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:4];
      v3 = [v5 arrayWithObjects:{v6, v7, 0}];
    }

    else
    {
      v3 = [v5 arrayWithObject:v6];
    }
  }

  return v3;
}

@end