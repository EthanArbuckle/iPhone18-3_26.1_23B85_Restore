@interface CSVTUIASRGrammars
+ (id)sharedGrammars;
- (CSVTUIASRGrammars)init;
- (id)_getLMEWithGrammar:(id)a3 withLocale:(id)a4;
- (id)_getLeadingPatternsWithGrammars:(id)a3 withLocale:(id)a4;
- (id)_getRegexPatternsWithGrammars:(id)a3 withUtt:(int64_t)a4 withLocale:(id)a5;
- (id)_getTrailingPatternsWithGrammars:(id)a3 withLocale:(id)a4;
- (id)createGrammars;
- (id)getLMEforLocale:(id)a3;
- (id)getLeadingPatternsForUtt:(int64_t)a3 Locale:(id)a4;
- (id)getRegexPatternsForUtt:(int64_t)a3 Locale:(id)a4;
- (id)getTrailingPatternsForUtt:(int64_t)a3 Locale:(id)a4;
@end

@implementation CSVTUIASRGrammars

- (id)_getLMEWithGrammar:(id)a3 withLocale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [v5 objectForKey:v6];
    v9 = [v8 objectForKey:@"lme"];

    if (v9)
    {
      v10 = [v5 objectForKey:v6];
      v7 = [v10 objectForKey:@"lme"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)getLMEforLocale:(id)a3
{
  v5 = 0;
  if (a3)
  {
    grammar = self->_grammar;
    if (grammar)
    {
      v5 = [(CSVTUIASRGrammars *)self _getLMEWithGrammar:grammar withLocale:a3];
      v3 = vars8;
    }
  }

  return v5;
}

- (id)_getRegexPatternsWithGrammars:(id)a3 withUtt:(int64_t)a4 withLocale:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 objectForKey:v8];

  if (v9 && ([v7 objectForKey:v8], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", @"regex"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [v7 objectForKey:v8];
    v13 = [v12 objectForKey:@"regex"];

    if (v13 && [v13 count] >= a4)
    {
      v14 = [v13 objectAtIndex:a4 - 1];
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

- (id)getRegexPatternsForUtt:(int64_t)a3 Locale:(id)a4
{
  v7 = 0;
  if (a4)
  {
    grammar = self->_grammar;
    if (grammar)
    {
      v7 = [(CSVTUIASRGrammars *)self _getRegexPatternsWithGrammars:grammar withUtt:a3 withLocale:a4];
      v4 = vars8;
    }
  }

  return v7;
}

- (id)_getLeadingPatternsWithGrammars:(id)a3 withLocale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [v5 objectForKey:v6];
    v9 = [v8 objectForKey:@"leading_garbage"];

    if (v9)
    {
      v10 = [v5 objectForKey:v6];
      v7 = [v10 objectForKey:@"leading_garbage"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)getLeadingPatternsForUtt:(int64_t)a3 Locale:(id)a4
{
  v6 = 0;
  if (a4 && self->_grammar)
  {
    v6 = [CSVTUIASRGrammars _getLeadingPatternsWithGrammars:"_getLeadingPatternsWithGrammars:withLocale:" withLocale:?];
    v4 = vars8;
  }

  return v6;
}

- (id)_getTrailingPatternsWithGrammars:(id)a3 withLocale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [v5 objectForKey:v6];
    v9 = [v8 objectForKey:@"trailing_garbage"];

    if (v9)
    {
      v10 = [v5 objectForKey:v6];
      v7 = [v10 objectForKey:@"trailing_garbage"];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)getTrailingPatternsForUtt:(int64_t)a3 Locale:(id)a4
{
  v6 = 0;
  if (a4 && self->_grammar)
  {
    v6 = [CSVTUIASRGrammars _getTrailingPatternsWithGrammars:"_getTrailingPatternsWithGrammars:withLocale:" withLocale:?];
    v4 = vars8;
  }

  return v6;
}

- (id)createGrammars
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 bundlePath];

  v6 = [v5 stringByAppendingPathComponent:@"regex.json"];
  if ([v3 fileExistsAtPath:v6])
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
    v4 = [(CSVTUIASRGrammars *)v2 createGrammars];
    grammar = v3->_grammar;
    v3->_grammar = v4;
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