@interface TIWordSearchKorean
- (id)mecabraCreationOptionsDictionary;
- (void)updateMecabraState;
@end

@implementation TIWordSearchKorean

- (void)updateMecabraState
{
  v3.receiver = self;
  v3.super_class = TIWordSearchKorean;
  [(TIWordSearch *)&v3 updateMecabraState];
  [(TIWordSearch *)self updateUserWordEntries];
  [(TIWordSearch *)self updateDictionaryPaths];
}

- (id)mecabraCreationOptionsDictionary
{
  v10.receiver = self;
  v10.super_class = TIWordSearchKorean;
  v3 = [(TIWordSearch *)&v10 mecabraCreationOptionsDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(TIWordSearch *)self inputMode];
  v6 = [v5 originalIdentifier];
  v7 = TIInputModeGetSWLayout();
  v8 = [v7 isEqualToString:@"Korean-With-QWERTY"];

  if (v8)
  {
    [v4 setObject:@"en_US" forKeyedSubscript:*MEMORY[0x29EDC96F0]];
  }

  return v4;
}

@end