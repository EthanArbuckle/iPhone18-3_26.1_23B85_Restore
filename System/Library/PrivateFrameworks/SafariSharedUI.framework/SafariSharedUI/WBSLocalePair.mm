@interface WBSLocalePair
- (NSString)compactDescriptionForLogging;
- (WBSLocalePair)initWithLTLocalePair:(id)pair;
- (WBSLocalePair)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale;
- (WBSLocalePair)initWithSourceLocaleIdentifier:(id)identifier targetLocaleIdentifier:(id)localeIdentifier;
- (_LTLocalePair)lt_localePair;
- (id)description;
@end

@implementation WBSLocalePair

- (WBSLocalePair)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale
{
  localeCopy = locale;
  targetLocaleCopy = targetLocale;
  v13.receiver = self;
  v13.super_class = WBSLocalePair;
  v9 = [(WBSLocalePair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceLocale, locale);
    objc_storeStrong(&v10->_targetLocale, targetLocale);
    v11 = v10;
  }

  return v10;
}

- (WBSLocalePair)initWithSourceLocaleIdentifier:(id)identifier targetLocaleIdentifier:(id)localeIdentifier
{
  v6 = MEMORY[0x1E695DF58];
  localeIdentifierCopy = localeIdentifier;
  v8 = [v6 localeWithLocaleIdentifier:identifier];
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:localeIdentifierCopy];

  v10 = [(WBSLocalePair *)self initWithSourceLocale:v8 targetLocale:v9];
  return v10;
}

- (WBSLocalePair)initWithLTLocalePair:(id)pair
{
  pairCopy = pair;
  sourceLocale = [pairCopy sourceLocale];
  targetLocale = [pairCopy targetLocale];

  v7 = [(WBSLocalePair *)self initWithSourceLocale:sourceLocale targetLocale:targetLocale];
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
  sourceLocaleIdentifier = [(WBSLocalePair *)self sourceLocaleIdentifier];
  targetLocaleIdentifier = [(WBSLocalePair *)self targetLocaleIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p sourceLocale = %@; targetLocale = %@>", v4, self, sourceLocaleIdentifier, targetLocaleIdentifier];;

  return v7;
}

- (NSString)compactDescriptionForLogging
{
  v3 = MEMORY[0x1E696AEC0];
  sourceLocaleIdentifier = [(WBSLocalePair *)self sourceLocaleIdentifier];
  targetLocaleIdentifier = [(WBSLocalePair *)self targetLocaleIdentifier];
  v6 = [v3 stringWithFormat:@"%@ > %@", sourceLocaleIdentifier, targetLocaleIdentifier];

  return v6;
}

@end