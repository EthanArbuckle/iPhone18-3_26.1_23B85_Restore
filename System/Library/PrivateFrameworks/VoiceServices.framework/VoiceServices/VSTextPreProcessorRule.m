@interface VSTextPreProcessorRule
- (VSTextPreProcessorRule)initWithDictionaryRepresentation:(id)a3;
- (id)matchedString:(id)a3 forTokenInRange:(id *)a4;
- (void)dealloc;
@end

@implementation VSTextPreProcessorRule

- (id)matchedString:(id)a3 forTokenInRange:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  matchPattern = self->_matchPattern;
  if (!matchPattern || CFStringCompareWithOptions(a3, matchPattern, *a4, !self->_caseSensitive))
  {
    return 0;
  }

  replacement = self->_replacement;
  if (self->_eatPunctuation)
  {
    v14.location = 0;
    v14.length = 0;
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    v11 = a4->var1 + a4->var0;
    for (i = [a3 length] - v11; ; i -= length)
    {
      v15.location = v11;
      v15.length = i;
      if (!CFStringFindCharacterFromSet(a3, Predefined, v15, 8uLL, &v14))
      {
        break;
      }

      length = v14.length;
      a4->var1 += v14.length;
      v11 += length;
    }
  }

  return replacement;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VSTextPreProcessorRule;
  [(VSTextPreProcessorRule *)&v3 dealloc];
}

- (VSTextPreProcessorRule)initWithDictionaryRepresentation:(id)a3
{
  v5 = [a3 objectForKey:@"match"];
  v6 = [a3 objectForKey:@"replace"];
  v7 = [a3 objectForKey:@"case-sensitive"];
  v8 = [a3 objectForKey:@"eat-punct"];
  if ([v5 length])
  {
    v9 = [(VSTextPreProcessorRule *)self init];
    if (v9)
    {
      v9->_matchPattern = v5;
      v9->_replacement = v6;
      if (v7)
      {
        v10 = [v7 BOOLValue];
      }

      else
      {
        v10 = 1;
      }

      v9->_caseSensitive = v10;
      v9->_eatPunctuation = [v8 BOOLValue];
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

@end