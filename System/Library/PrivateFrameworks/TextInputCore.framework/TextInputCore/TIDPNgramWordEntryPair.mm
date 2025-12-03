@interface TIDPNgramWordEntryPair
- (BOOL)isStandaloneString;
- (TIDPNgramWordEntryPair)initWithWordString:(id)string wordEntryAligned:(id)aligned;
@end

@implementation TIDPNgramWordEntryPair

- (BOOL)isStandaloneString
{
  wordEntryAligned = [(TIDPNgramWordEntryPair *)self wordEntryAligned];
  if (wordEntryAligned)
  {
    v4 = 0;
  }

  else
  {
    wordString = [(TIDPNgramWordEntryPair *)self wordString];
    v4 = wordString != 0;
  }

  return v4;
}

- (TIDPNgramWordEntryPair)initWithWordString:(id)string wordEntryAligned:(id)aligned
{
  stringCopy = string;
  alignedCopy = aligned;
  v11.receiver = self;
  v11.super_class = TIDPNgramWordEntryPair;
  v8 = [(TIDPNgramWordEntryPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TIDPNgramWordEntryPair *)v8 setWordString:stringCopy];
    [(TIDPNgramWordEntryPair *)v9 setWordEntryAligned:alignedCopy];
  }

  return v9;
}

@end