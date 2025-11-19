@interface TIWordSearchThai
- (id)mecabraCreationOptionsDictionary;
- (void)updateMecabraState;
@end

@implementation TIWordSearchThai

- (void)updateMecabraState
{
  v3.receiver = self;
  v3.super_class = TIWordSearchThai;
  [(TIWordSearch *)&v3 updateMecabraState];
  [(TIWordSearch *)self updateUserWordEntries];
  [(TIWordSearch *)self updateDictionaryPaths];
}

- (id)mecabraCreationOptionsDictionary
{
  v11.receiver = self;
  v11.super_class = TIWordSearchThai;
  v3 = [(TIWordSearch *)&v11 mecabraCreationOptionsDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(TIWordSearch *)self inputMode];
  v6 = [v5 originalIdentifier];
  v7 = TIInputModeGetSWLayout();
  v8 = [v7 isEqualToString:@"Thai-24-Key"];

  if (v8)
  {
    v9 = *MEMORY[0x29EDB8F00];
    [v4 setObject:*MEMORY[0x29EDB8F00] forKeyedSubscript:*MEMORY[0x29EDC96F8]];
  }

  return v4;
}

@end