@interface WBSLocalePair
- (NSString)compactDescriptionForLogging;
- (WBSLocalePair)initWithLTLocalePair:(id)a3;
- (WBSLocalePair)initWithSourceLocale:(id)a3 targetLocale:(id)a4;
- (WBSLocalePair)initWithSourceLocaleIdentifier:(id)a3 targetLocaleIdentifier:(id)a4;
- (_LTLocalePair)lt_localePair;
- (id)description;
@end

@implementation WBSLocalePair

- (WBSLocalePair)initWithSourceLocale:(id)a3 targetLocale:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSLocalePair;
  v9 = [(WBSLocalePair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceLocale, a3);
    objc_storeStrong(&v10->_targetLocale, a4);
    v11 = v10;
  }

  return v10;
}

- (WBSLocalePair)initWithSourceLocaleIdentifier:(id)a3 targetLocaleIdentifier:(id)a4
{
  v6 = MEMORY[0x1E695DF58];
  v7 = a4;
  v8 = [v6 localeWithLocaleIdentifier:a3];
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];

  v10 = [(WBSLocalePair *)self initWithSourceLocale:v8 targetLocale:v9];
  return v10;
}

- (WBSLocalePair)initWithLTLocalePair:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceLocale];
  v6 = [v4 targetLocale];

  v7 = [(WBSLocalePair *)self initWithSourceLocale:v5 targetLocale:v6];
  return v7;
}

- (_LTLocalePair)lt_localePair
{
  v2 = [objc_alloc(get_LTLocalePairClass()) initWithSourceLocale:self->_sourceLocale targetLocale:self->_targetLocale];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(WBSLocalePair *)self sourceLocaleIdentifier];
  v6 = [(WBSLocalePair *)self targetLocaleIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p sourceLocale = %@; targetLocale = %@>", v4, self, v5, v6];;

  return v7;
}

- (NSString)compactDescriptionForLogging
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WBSLocalePair *)self sourceLocaleIdentifier];
  v5 = [(WBSLocalePair *)self targetLocaleIdentifier];
  v6 = [v3 stringWithFormat:@"%@ > %@", v4, v5];

  return v6;
}

@end