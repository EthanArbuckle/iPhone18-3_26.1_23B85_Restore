@interface TISmartPunctuationOptions
+ (id)smartPunctuationOptionsForLocale:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TISmartPunctuationOptions)initWithCoder:(id)a3;
- (TISmartPunctuationOptions)initWithLocale:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)_generateDataFromLocale;
- (void)encodeWithCoder:(id)a3;
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

  v14 = [(TISmartPunctuationOptions *)self leftSingleQuote];
  v15 = [(TISmartPunctuationOptions *)self rightSingleQuote];
  if ([v14 isEqualToString:v15])
  {
    v16 = [(TISmartPunctuationOptions *)self leftDoubleQuote];
    v17 = [(TISmartPunctuationOptions *)self rightDoubleQuote];
    -[TISmartPunctuationOptions setUsesDirectionalQuotes:](self, "setUsesDirectionalQuotes:", [v16 isEqualToString:v17] ^ 1);
  }

  else
  {
    [(TISmartPunctuationOptions *)self setUsesDirectionalQuotes:1];
  }
}

- (TISmartPunctuationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TISmartPunctuationOptions;
  v5 = [(TISmartPunctuationOptions *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LocaleIdentifier"];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v6];
      locale = v5->_locale;
      v5->_locale = v7;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LeftSingleQuote"];
    v10 = [v9 copy];
    leftSingleQuote = v5->_leftSingleQuote;
    v5->_leftSingleQuote = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RightSingleQuote"];
    v13 = [v12 copy];
    rightSingleQuote = v5->_rightSingleQuote;
    v5->_rightSingleQuote = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Apostrophe"];
    v16 = [v15 copy];
    apostrophe = v5->_apostrophe;
    v5->_apostrophe = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LeftDoubleQuote"];
    v19 = [v18 copy];
    leftDoubleQuote = v5->_leftDoubleQuote;
    v5->_leftDoubleQuote = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LeftDoubleQuote"];
    v22 = [v21 copy];
    rightDoubleQuote = v5->_rightDoubleQuote;
    v5->_rightDoubleQuote = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(TISmartPunctuationOptions *)self locale];

  if (v4)
  {
    v5 = [(TISmartPunctuationOptions *)self locale];
    v6 = [v5 localeIdentifier];
    [v12 encodeObject:v6 forKey:@"LocaleIdentifier"];
  }

  v7 = [(TISmartPunctuationOptions *)self leftSingleQuote];
  [v12 encodeObject:v7 forKey:@"LeftSingleQuote"];

  v8 = [(TISmartPunctuationOptions *)self rightSingleQuote];
  [v12 encodeObject:v8 forKey:@"RightSingleQuote"];

  v9 = [(TISmartPunctuationOptions *)self apostrophe];
  [v12 encodeObject:v9 forKey:@"Apostrophe"];

  v10 = [(TISmartPunctuationOptions *)self leftDoubleQuote];
  [v12 encodeObject:v10 forKey:@"LeftDoubleQuote"];

  v11 = [(TISmartPunctuationOptions *)self rightDoubleQuote];
  [v12 encodeObject:v11 forKey:@"LeftDoubleQuote"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = TISmartPunctuationOptions;
  v4 = [(TISmartPunctuationOptions *)&v12 description];
  v5 = [(TISmartPunctuationOptions *)self leftSingleQuote];
  v6 = [(TISmartPunctuationOptions *)self rightSingleQuote];
  v7 = [(TISmartPunctuationOptions *)self apostrophe];
  v8 = [(TISmartPunctuationOptions *)self leftDoubleQuote];
  v9 = [(TISmartPunctuationOptions *)self rightDoubleQuote];
  v10 = [v3 stringWithFormat:@"%@{%@xy%@/x%@y/%@xy%@}", v4, v5, v6, v7, v8, v9];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = MEMORY[0x1E696AEC0], -[TISmartPunctuationOptions leftSingleQuote](self, "leftSingleQuote"), v6 = objc_claimAutoreleasedReturnValue(), -[TISmartPunctuationOptions leftSingleQuote](v4, "leftSingleQuote"), v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = [v5 _string:v6 matchesString:v7], v7, v6, v5) && (v8 = MEMORY[0x1E696AEC0], -[TISmartPunctuationOptions rightSingleQuote](self, "rightSingleQuote"), v9 = objc_claimAutoreleasedReturnValue(), -[TISmartPunctuationOptions rightSingleQuote](v4, "rightSingleQuote"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend(v8, "_string:matchesString:", v9, v10), v10, v9, v8) && (v11 = MEMORY[0x1E696AEC0], -[TISmartPunctuationOptions apostrophe](self, "apostrophe"), v12 = objc_claimAutoreleasedReturnValue(), -[TISmartPunctuationOptions apostrophe](v4, "apostrophe"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = objc_msgSend(v11, "_string:matchesString:", v12, v13), v13, v12, v11) && (v14 = MEMORY[0x1E696AEC0], -[TISmartPunctuationOptions leftDoubleQuote](self, "leftDoubleQuote"), v15 = objc_claimAutoreleasedReturnValue(), -[TISmartPunctuationOptions leftDoubleQuote](v4, "leftDoubleQuote"), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v14) = objc_msgSend(v14, "_string:matchesString:", v15, v16), v16, v15, v14))
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = [(TISmartPunctuationOptions *)self rightDoubleQuote];
      v19 = [(TISmartPunctuationOptions *)v4 rightDoubleQuote];
      v20 = [v17 _string:v18 matchesString:v19];
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (TISmartPunctuationOptions)initWithLocale:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TISmartPunctuationOptions;
  v6 = [(TISmartPunctuationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, a3);
    [(TISmartPunctuationOptions *)v7 _generateDataFromLocale];
  }

  return v7;
}

+ (id)smartPunctuationOptionsForLocale:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithLocale:v4];

  return v5;
}

@end