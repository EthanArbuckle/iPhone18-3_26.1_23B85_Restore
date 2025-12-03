@interface TISmartPunctuationOptions
+ (id)smartPunctuationOptionsForLocale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (TISmartPunctuationOptions)initWithCoder:(id)coder;
- (TISmartPunctuationOptions)initWithLocale:(id)locale;
- (id)description;
- (unint64_t)hash;
- (void)_generateDataFromLocale;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TISmartPunctuationOptions

- (void)_generateDataFromLocale
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0x201C201920192018;
  v31 = 8221;
  v28 = 0x201E20182019201ALL;
  v29 = 8220;
  v26 = 0xAB201920192018;
  v27 = 187;
  v24 = 0x201E20192019201ALL;
  v25 = 8221;
  v23 = 8221;
  v22 = 0x201D201920192019;
  v21 = 34;
  v20 = 0x22002700270027;
  v19 = 187;
  v18 = 0xAB20182019201ALL;
  v3 = MEMORY[0x1E695DF58];
  v4 = [(NSLocale *)self->_locale objectForKey:*MEMORY[0x1E695D9B0]];
  v5 = [v3 canonicalLanguageIdentifierFromString:v4];

  if ([v5 isEqualToString:@"de"])
  {
    v6 = &v28;
  }

  else if ([v5 isEqualToString:@"fr"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"nb") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"no") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"ru") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"el"))
  {
    v6 = &v26;
  }

  else if ([v5 isEqualToString:@"pl"])
  {
    v6 = &v24;
  }

  else if ([v5 isEqualToString:@"sv"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"fi"))
  {
    v6 = &v22;
  }

  else if ([v5 isEqualToString:@"ar"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"ars"))
  {
    v6 = &v20;
  }

  else if ([v5 isEqualToString:@"uk"])
  {
    v6 = &v18;
  }

  else
  {
    v6 = &v30;
  }

  v7 = [v5 isEqualToString:@"fr"];
  v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:v6 length:1];
  [(TISmartPunctuationOptions *)self setLeftSingleQuote:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithCharacters:v6 + 4 length:1];
  [(TISmartPunctuationOptions *)self setRightSingleQuote:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithCharacters:v6 + 2 length:1];
  [(TISmartPunctuationOptions *)self setApostrophe:v10];

  if (v7)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C%C", *(v6 + 3), 160];
    [(TISmartPunctuationOptions *)self setLeftDoubleQuote:v11];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%C%C", 160, *(v6 + 4)];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithCharacters:v6 + 6 length:1];
    [(TISmartPunctuationOptions *)self setLeftDoubleQuote:v12];

    [MEMORY[0x1E696AEC0] stringWithCharacters:v6 + 1 length:1];
  }
  v13 = ;
  [(TISmartPunctuationOptions *)self setRightDoubleQuote:v13];

  leftSingleQuote = [(TISmartPunctuationOptions *)self leftSingleQuote];
  rightSingleQuote = [(TISmartPunctuationOptions *)self rightSingleQuote];
  if ([leftSingleQuote isEqualToString:rightSingleQuote])
  {
    leftDoubleQuote = [(TISmartPunctuationOptions *)self leftDoubleQuote];
    rightDoubleQuote = [(TISmartPunctuationOptions *)self rightDoubleQuote];
    -[TISmartPunctuationOptions setUsesDirectionalQuotes:](self, "setUsesDirectionalQuotes:", [leftDoubleQuote isEqualToString:rightDoubleQuote] ^ 1);
  }

  else
  {
    [(TISmartPunctuationOptions *)self setUsesDirectionalQuotes:1];
  }
}

- (TISmartPunctuationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = TISmartPunctuationOptions;
  v5 = [(TISmartPunctuationOptions *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocaleIdentifier"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v6];
      locale = v5->_locale;
      v5->_locale = v7;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LeftSingleQuote"];
    v10 = [v9 copy];
    leftSingleQuote = v5->_leftSingleQuote;
    v5->_leftSingleQuote = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RightSingleQuote"];
    v13 = [v12 copy];
    rightSingleQuote = v5->_rightSingleQuote;
    v5->_rightSingleQuote = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Apostrophe"];
    v16 = [v15 copy];
    apostrophe = v5->_apostrophe;
    v5->_apostrophe = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LeftDoubleQuote"];
    v19 = [v18 copy];
    leftDoubleQuote = v5->_leftDoubleQuote;
    v5->_leftDoubleQuote = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LeftDoubleQuote"];
    v22 = [v21 copy];
    rightDoubleQuote = v5->_rightDoubleQuote;
    v5->_rightDoubleQuote = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  locale = [(TISmartPunctuationOptions *)self locale];

  if (locale)
  {
    locale2 = [(TISmartPunctuationOptions *)self locale];
    localeIdentifier = [locale2 localeIdentifier];
    [coderCopy encodeObject:localeIdentifier forKey:@"LocaleIdentifier"];
  }

  leftSingleQuote = [(TISmartPunctuationOptions *)self leftSingleQuote];
  [coderCopy encodeObject:leftSingleQuote forKey:@"LeftSingleQuote"];

  rightSingleQuote = [(TISmartPunctuationOptions *)self rightSingleQuote];
  [coderCopy encodeObject:rightSingleQuote forKey:@"RightSingleQuote"];

  apostrophe = [(TISmartPunctuationOptions *)self apostrophe];
  [coderCopy encodeObject:apostrophe forKey:@"Apostrophe"];

  leftDoubleQuote = [(TISmartPunctuationOptions *)self leftDoubleQuote];
  [coderCopy encodeObject:leftDoubleQuote forKey:@"LeftDoubleQuote"];

  rightDoubleQuote = [(TISmartPunctuationOptions *)self rightDoubleQuote];
  [coderCopy encodeObject:rightDoubleQuote forKey:@"LeftDoubleQuote"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = TISmartPunctuationOptions;
  v4 = [(TISmartPunctuationOptions *)&v12 description];
  leftSingleQuote = [(TISmartPunctuationOptions *)self leftSingleQuote];
  rightSingleQuote = [(TISmartPunctuationOptions *)self rightSingleQuote];
  apostrophe = [(TISmartPunctuationOptions *)self apostrophe];
  leftDoubleQuote = [(TISmartPunctuationOptions *)self leftDoubleQuote];
  rightDoubleQuote = [(TISmartPunctuationOptions *)self rightDoubleQuote];
  v10 = [v3 stringWithFormat:@"%@{%@xy%@/x%@y/%@xy%@}", v4, leftSingleQuote, rightSingleQuote, apostrophe, leftDoubleQuote, rightDoubleQuote];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_leftSingleQuote hash];
  v4 = [(NSString *)self->_rightSingleQuote hash]^ v3;
  v5 = [(NSString *)self->_apostrophe hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_leftDoubleQuote hash];
  return v6 ^ [(NSString *)self->_rightDoubleQuote hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = MEMORY[0x1E696AEC0], -[TISmartPunctuationOptions leftSingleQuote](self, "leftSingleQuote"), v6 = objc_claimAutoreleasedReturnValue(), -[TISmartPunctuationOptions leftSingleQuote](equalCopy, "leftSingleQuote"), v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = [v5 _string:v6 matchesString:v7], v7, v6, v5) && (v8 = MEMORY[0x1E696AEC0], -[TISmartPunctuationOptions rightSingleQuote](self, "rightSingleQuote"), v9 = objc_claimAutoreleasedReturnValue(), -[TISmartPunctuationOptions rightSingleQuote](equalCopy, "rightSingleQuote"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend(v8, "_string:matchesString:", v9, v10), v10, v9, v8) && (v11 = MEMORY[0x1E696AEC0], -[TISmartPunctuationOptions apostrophe](self, "apostrophe"), v12 = objc_claimAutoreleasedReturnValue(), -[TISmartPunctuationOptions apostrophe](equalCopy, "apostrophe"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = objc_msgSend(v11, "_string:matchesString:", v12, v13), v13, v12, v11) && (v14 = MEMORY[0x1E696AEC0], -[TISmartPunctuationOptions leftDoubleQuote](self, "leftDoubleQuote"), v15 = objc_claimAutoreleasedReturnValue(), -[TISmartPunctuationOptions leftDoubleQuote](equalCopy, "leftDoubleQuote"), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v14) = objc_msgSend(v14, "_string:matchesString:", v15, v16), v16, v15, v14))
    {
      v17 = MEMORY[0x1E696AEC0];
      rightDoubleQuote = [(TISmartPunctuationOptions *)self rightDoubleQuote];
      rightDoubleQuote2 = [(TISmartPunctuationOptions *)equalCopy rightDoubleQuote];
      v20 = [v17 _string:rightDoubleQuote matchesString:rightDoubleQuote2];
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (TISmartPunctuationOptions)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = TISmartPunctuationOptions;
  v6 = [(TISmartPunctuationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
    [(TISmartPunctuationOptions *)v7 _generateDataFromLocale];
  }

  return v7;
}

+ (id)smartPunctuationOptionsForLocale:(id)locale
{
  localeCopy = locale;
  v5 = [[self alloc] initWithLocale:localeCopy];

  return v5;
}

@end