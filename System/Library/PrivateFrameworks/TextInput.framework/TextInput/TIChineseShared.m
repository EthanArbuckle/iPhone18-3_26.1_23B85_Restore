@interface TIChineseShared
+ (id)defaultFuzzyPinyinPairs;
+ (id)validFuzzyPinyinPairs;
@end

@implementation TIChineseShared

+ (id)defaultFuzzyPinyinPairs
{
  if (defaultFuzzyPinyinPairs___onceToken != -1)
  {
    dispatch_once(&defaultFuzzyPinyinPairs___onceToken, &__block_literal_global_75_1102);
  }

  v3 = defaultFuzzyPinyinPairs___defaultFuzzyPinyinPairs;

  return v3;
}

void __42__TIChineseShared_defaultFuzzyPinyinPairs__block_invoke()
{
  v0 = MEMORY[0x1E695DEC8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"z", @"zh", 0}];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"s", @"sh", 0}];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"c", @"ch", 0}];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"an", @"ang", 0}];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en", @"eng", 0}];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"in", @"ing", 0}];
  v6 = [v0 arrayWithObjects:{v8, v1, v2, v3, v4, v5, 0}];
  v7 = defaultFuzzyPinyinPairs___defaultFuzzyPinyinPairs;
  defaultFuzzyPinyinPairs___defaultFuzzyPinyinPairs = v6;
}

+ (id)validFuzzyPinyinPairs
{
  if (validFuzzyPinyinPairs___onceToken != -1)
  {
    dispatch_once(&validFuzzyPinyinPairs___onceToken, &__block_literal_global_1129);
  }

  v3 = validFuzzyPinyinPairs___validFuzzyPinyinPairs;

  return v3;
}

void __40__TIChineseShared_validFuzzyPinyinPairs__block_invoke()
{
  v13 = MEMORY[0x1E695DEC8];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"z", @"zh", 0}];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"s", @"sh", 0}];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"c", @"ch", 0}];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"an", @"ang", 0}];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en", @"eng", 0}];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"in", @"ing", 0}];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"ian", @"iang", 0}];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"uan", @"uang", 0}];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"n", @"l", 0}];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"r", @"l", 0}];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"h", @"f", 0}];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"hui", @"fei", 0}];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"huang", @"wang", 0}];
  v8 = [v13 arrayWithObjects:{v15, v12, v11, v14, v10, v0, v1, v2, v3, v4, v5, v6, v7, 0}];
  v9 = validFuzzyPinyinPairs___validFuzzyPinyinPairs;
  validFuzzyPinyinPairs___validFuzzyPinyinPairs = v8;
}

@end