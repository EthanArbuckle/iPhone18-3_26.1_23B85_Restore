@interface VSTextPreProcessorRule
- (VSTextPreProcessorRule)initWithDictionaryRepresentation:(id)representation;
- (id)matchedString:(id)string forTokenInRange:(id *)range;
- (void)dealloc;
@end

@implementation VSTextPreProcessorRule

- (id)matchedString:(id)string forTokenInRange:(id *)range
{
  if (!string)
  {
    return 0;
  }

  matchPattern = self->_matchPattern;
  if (!matchPattern || CFStringCompareWithOptions(string, matchPattern, *range, !self->_caseSensitive))
  {
    return 0;
  }

  replacement = self->_replacement;
  if (self->_eatPunctuation)
  {
    v14.location = 0;
    v14.length = 0;
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    v11 = range->var1 + range->var0;
    for (i = [string length] - v11; ; i -= length)
    {
      v15.location = v11;
      v15.length = i;
      if (!CFStringFindCharacterFromSet(string, Predefined, v15, 8uLL, &v14))
      {
        break;
      }

      length = v14.length;
      range->var1 += v14.length;
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

- (VSTextPreProcessorRule)initWithDictionaryRepresentation:(id)representation
{
  v5 = [representation objectForKey:@"match"];
  v6 = [representation objectForKey:@"replace"];
  v7 = [representation objectForKey:@"case-sensitive"];
  v8 = [representation objectForKey:@"eat-punct"];
  if ([v5 length])
  {
    v9 = [(VSTextPreProcessorRule *)self init];
    if (v9)
    {
      v9->_matchPattern = v5;
      v9->_replacement = v6;
      if (v7)
      {
        bOOLValue = [v7 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      v9->_caseSensitive = bOOLValue;
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