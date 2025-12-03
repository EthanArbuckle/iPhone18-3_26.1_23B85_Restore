@interface CSVTUIASRGrammars
+ (id)sharedGrammars;
- (CSVTUIASRGrammars)init;
- (id)_getLMEWithGrammar:(id)grammar withLocale:(id)locale;
- (id)_getLeadingPatternsWithGrammars:(id)grammars withLocale:(id)locale;
- (id)_getRegexPatternsWithGrammars:(id)grammars withUtt:(int64_t)utt withLocale:(id)locale;
- (id)_getTrailingPatternsWithGrammars:(id)grammars withLocale:(id)locale;
- (id)createGrammars;
- (id)getLMEforLocale:(id)locale;
- (id)getLeadingPatternsForUtt:(int64_t)utt Locale:(id)locale;
- (id)getRegexPatternsForUtt:(int64_t)utt Locale:(id)locale;
- (id)getTrailingPatternsForUtt:(int64_t)utt Locale:(id)locale;
@end

@implementation CSVTUIASRGrammars

- (id)_getLMEWithGrammar:(id)grammar withLocale:(id)locale
{
  grammarCopy = grammar;
  localeCopy = locale;
  v7 = [grammarCopy objectForKey:localeCopy];

  if (v7)
  {
    v8 = [grammarCopy objectForKey:localeCopy];
    v9 = [v8 objectForKey:@"lme"];

    if (v9)
    {
      v10 = [grammarCopy objectForKey:localeCopy];
      v7 = [v10 objectForKey:@"lme"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)getLMEforLocale:(id)locale
{
  v5 = 0;
  if (locale)
  {
    grammar = self->_grammar;
    if (grammar)
    {
      v5 = [(CSVTUIASRGrammars *)self _getLMEWithGrammar:grammar withLocale:locale];
      v3 = vars8;
    }
  }

  return v5;
}

- (id)_getRegexPatternsWithGrammars:(id)grammars withUtt:(int64_t)utt withLocale:(id)locale
{
  grammarsCopy = grammars;
  localeCopy = locale;
  v9 = [grammarsCopy objectForKey:localeCopy];

  if (v9 && ([grammarsCopy objectForKey:localeCopy], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", @"regex"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [grammarsCopy objectForKey:localeCopy];
    v13 = [v12 objectForKey:@"regex"];

    if (v13 && [v13 count] >= utt)
    {
      v14 = [v13 objectAtIndex:utt - 1];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)getRegexPatternsForUtt:(int64_t)utt Locale:(id)locale
{
  v7 = 0;
  if (locale)
  {
    grammar = self->_grammar;
    if (grammar)
    {
      v7 = [(CSVTUIASRGrammars *)self _getRegexPatternsWithGrammars:grammar withUtt:utt withLocale:locale];
      v4 = vars8;
    }
  }

  return v7;
}

- (id)_getLeadingPatternsWithGrammars:(id)grammars withLocale:(id)locale
{
  grammarsCopy = grammars;
  localeCopy = locale;
  v7 = [grammarsCopy objectForKey:localeCopy];

  if (v7)
  {
    v8 = [grammarsCopy objectForKey:localeCopy];
    v9 = [v8 objectForKey:@"leading_garbage"];

    if (v9)
    {
      v10 = [grammarsCopy objectForKey:localeCopy];
      v7 = [v10 objectForKey:@"leading_garbage"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)getLeadingPatternsForUtt:(int64_t)utt Locale:(id)locale
{
  v6 = 0;
  if (locale && self->_grammar)
  {
    v6 = [CSVTUIASRGrammars _getLeadingPatternsWithGrammars:"_getLeadingPatternsWithGrammars:withLocale:" withLocale:?];
    v4 = vars8;
  }

  return v6;
}

- (id)_getTrailingPatternsWithGrammars:(id)grammars withLocale:(id)locale
{
  grammarsCopy = grammars;
  localeCopy = locale;
  v7 = [grammarsCopy objectForKey:localeCopy];

  if (v7)
  {
    v8 = [grammarsCopy objectForKey:localeCopy];
    v9 = [v8 objectForKey:@"trailing_garbage"];

    if (v9)
    {
      v10 = [grammarsCopy objectForKey:localeCopy];
      v7 = [v10 objectForKey:@"trailing_garbage"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)getTrailingPatternsForUtt:(int64_t)utt Locale:(id)locale
{
  v6 = 0;
  if (locale && self->_grammar)
  {
    v6 = [CSVTUIASRGrammars _getTrailingPatternsWithGrammars:"_getTrailingPatternsWithGrammars:withLocale:" withLocale:?];
    v4 = vars8;
  }

  return v6;
}

- (id)createGrammars
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundlePath = [v4 bundlePath];

  v6 = [bundlePath stringByAppendingPathComponent:@"regex.json"];
  if ([defaultManager fileExistsAtPath:v6])
  {
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
    v11 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v11];
    v9 = v11;

    if (v9)
    {
      NSLog(&cfstr_CannotParseToJ.isa);
    }

    v2 = v8;
  }

  else
  {
    NSLog(&cfstr_CannotFindTheF.isa);
  }

  return v2;
}

- (CSVTUIASRGrammars)init
{
  v7.receiver = self;
  v7.super_class = CSVTUIASRGrammars;
  v2 = [(CSVTUIASRGrammars *)&v7 init];
  v3 = v2;
  if (v2)
  {
    createGrammars = [(CSVTUIASRGrammars *)v2 createGrammars];
    grammar = v3->_grammar;
    v3->_grammar = createGrammars;
  }

  return v3;
}

+ (id)sharedGrammars
{
  if (sharedGrammars_onceToken != -1)
  {
    dispatch_once(&sharedGrammars_onceToken, &__block_literal_global_9330);
  }

  v3 = sharedGrammars_sharedGammars;

  return v3;
}

uint64_t __35__CSVTUIASRGrammars_sharedGrammars__block_invoke()
{
  sharedGrammars_sharedGammars = objc_alloc_init(CSVTUIASRGrammars);

  return MEMORY[0x2821F96F8]();
}

@end