@interface TIDPNgramWordEntryPair
- (BOOL)isStandaloneString;
- (TIDPNgramWordEntryPair)initWithWordString:(id)a3 wordEntryAligned:(id)a4;
@end

@implementation TIDPNgramWordEntryPair

- (BOOL)isStandaloneString
{
  v3 = [(TIDPNgramWordEntryPair *)self wordEntryAligned];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TIDPNgramWordEntryPair *)self wordString];
    v4 = v5 != 0;
  }

  return v4;
}

- (TIDPNgramWordEntryPair)initWithWordString:(id)a3 wordEntryAligned:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TIDPNgramWordEntryPair;
  v8 = [(TIDPNgramWordEntryPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TIDPNgramWordEntryPair *)v8 setWordString:v6];
    [(TIDPNgramWordEntryPair *)v9 setWordEntryAligned:v7];
  }

  return v9;
}

@end