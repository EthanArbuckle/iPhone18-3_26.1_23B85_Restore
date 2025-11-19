@interface PreheatOptions
@end

@implementation PreheatOptions

void ___PreheatOptions_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF90]);
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:4];
  v2 = *MEMORY[0x1E695F268];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:4];
  v4 = *MEMORY[0x1E695F270];
  v5 = *MEMORY[0x1E695F280];
  v6 = *MEMORY[0x1E695F288];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v8 = *MEMORY[0x1E695F298];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v13 = [v0 initWithObjectsAndKeys:{v1, v2, v3, v4, v5, v6, v7, v8, v9, *MEMORY[0x1E696E0A8], 0}];

  if (qword_1ED6D17B8 != -1)
  {
    dispatch_once(&qword_1ED6D17B8, &__block_literal_global_230);
  }

  v10 = v13;
  if (qword_1ED6D17B0)
  {
    [v13 addEntriesFromDictionary:?];
    v10 = v13;
  }

  v11 = [v10 copy];
  v12 = _MergedGlobals_192;
  _MergedGlobals_192 = v11;
}

@end