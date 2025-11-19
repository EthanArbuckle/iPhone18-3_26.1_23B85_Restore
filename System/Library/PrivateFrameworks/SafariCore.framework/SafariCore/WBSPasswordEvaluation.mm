@interface WBSPasswordEvaluation
- (BOOL)_shouldShowUserFeedbackStringsForWordListPatternMatch:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordEvaluation)initWithCoder:(id)a3;
- (WBSPasswordEvaluation)initWithDictionaryRepresentation:(id)a3;
- (WBSPasswordEvaluation)initWithEvaluationType:(int64_t)a3 password:(id)a4 patternMatches:(id)a5 guessesRequired:(double)a6;
- (WBSPasswordPatternMatch)bestPatternMatchForUserFeedback;
- (double)guessesRequired;
- (id)_bestPatternMatchOfType:(unint64_t)a3;
- (id)_passwordFeedbackStringWithPasswordVisibility:(unint64_t)a3;
- (id)compactDescriptionWithPasswordColumnWidth:(unint64_t)a3 includePatternMatches:(BOOL)a4;
- (id)userFeedbackStringWithPasswordVisibility:(unint64_t)a3;
- (unint64_t)_userFeedbackLengthScoreForPatternMatch:(id)a3;
- (unint64_t)hash;
- (unint64_t)strength;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSPasswordEvaluation

- (WBSPasswordEvaluation)initWithEvaluationType:(int64_t)a3 password:(id)a4 patternMatches:(id)a5 guessesRequired:(double)a6
{
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = WBSPasswordEvaluation;
  v12 = [(WBSPasswordEvaluation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_evaluationType = a3;
    v14 = [v10 copy];
    password = v13->_password;
    v13->_password = v14;

    v16 = [v11 copy];
    patternMatches = v13->_patternMatches;
    v13->_patternMatches = v16;

    v13->_guessesRequired = a6;
    v18 = v13;
  }

  return v13;
}

- (WBSPasswordEvaluation)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_numberForKey:@"evaluationType"];
  v6 = [v4 safari_numberForKey:@"guessesRequired"];
  v7 = [v4 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"patternMatches"];
  v8 = [v4 objectForKeyedSubscript:@"password"];

  v9 = 0;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F3064D08;
  }

  if (v5 && v6 && v7)
  {
    v11 = [v7 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_46];
    v12 = [v5 integerValue];
    [v6 doubleValue];
    self = [(WBSPasswordEvaluation *)self initWithEvaluationType:v12 password:v10 patternMatches:v11 guessesRequired:?];

    v9 = self;
  }

  return v9;
}

WBSPasswordPatternMatch *__58__WBSPasswordEvaluation_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSPasswordPatternMatch alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_evaluationType == v5->_evaluationType && [(NSString *)self->_password isEqual:v5->_password]&& [(NSArray *)self->_patternMatches isEqualToArray:v5->_patternMatches]&& self->_guessesRequired == v5->_guessesRequired;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  evaluationType = self->_evaluationType;
  v4 = [(NSString *)self->_password hash]^ evaluationType;
  return v4 ^ [(NSArray *)self->_patternMatches hash]^ self->_guessesRequired;
}

- (unint64_t)strength
{
  evaluationType = self->_evaluationType;
  if (evaluationType == 1)
  {
    guessesRequired = self->_guessesRequired;
    v5 = 1000.0;
  }

  else
  {
    if (evaluationType)
    {
      return 3;
    }

    guessesRequired = self->_guessesRequired;
    if (guessesRequired < 1000000.0)
    {
      return 0;
    }

    v5 = 99999999.0;
  }

  if (guessesRequired < v5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (double)guessesRequired
{
  result = 0.0;
  if (self->_evaluationType != 2)
  {
    return self->_guessesRequired;
  }

  return result;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"evaluationType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_evaluationType];
  password = self->_password;
  patternMatches = self->_patternMatches;
  v12[0] = v3;
  v12[1] = password;
  v11[1] = @"password";
  v11[2] = @"patternMatches";
  v6 = [(NSArray *)patternMatches safari_mapObjectsUsingBlock:&__block_literal_global_19_1];
  v12[2] = v6;
  v11[3] = @"guessesRequired";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_guessesRequired];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unint64_t)_userFeedbackLengthScoreForPatternMatch:(id)a3
{
  v3 = a3;
  v4 = [v3 type] == 3;
  [v3 range];
  v6 = v5;

  return v6 << v4;
}

- (WBSPasswordPatternMatch)bestPatternMatchForUserFeedback
{
  v3 = [(NSArray *)self->_patternMatches safari_filterObjectsUsingBlock:&__block_literal_global_22_1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__WBSPasswordEvaluation_bestPatternMatchForUserFeedback__block_invoke_2;
  v6[3] = &unk_1E7CF34C0;
  v6[4] = self;
  v4 = [v3 safari_reduceObjectsUsingBlock:v6];

  return v4;
}

BOOL __56__WBSPasswordEvaluation_bestPatternMatchForUserFeedback__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if (v3)
  {
    if (v3 == 4)
    {
      [v2 range];
      v8 = v9 > 2;
    }

    else if (v3 == 3)
    {
      v4 = [v2 userInfo];
      v5 = [v4 safari_numberForKey:@"WordListGuessesRequired"];
      [v5 doubleValue];
      v7 = v6;

      v8 = v7 <= 100000.0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __56__WBSPasswordEvaluation_bestPatternMatchForUserFeedback__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v6)
  {
    v8 = [*(a1 + 32) _userFeedbackLengthScoreForPatternMatch:v5];
    v9 = [*(a1 + 32) _userFeedbackLengthScoreForPatternMatch:v6];
    v7 = v5;
    if (v8 <= v9)
    {
      v7 = v6;
      if (v9 <= v8)
      {
        [v5 guessesRequired];
        v11 = v10;
        [v6 guessesRequired];
        if (v11 >= v12)
        {
          v7 = v6;
        }

        else
        {
          v7 = v5;
        }
      }
    }
  }

  v13 = v7;

  return v13;
}

- (id)_bestPatternMatchOfType:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_patternMatches;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 type] == a3)
        {
          if (!v7 || ([v7 guessesRequired], v12 = v11, objc_msgSend(v10, "guessesRequired"), v12 > v13))
          {
            v14 = v10;

            v7 = v14;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)_shouldShowUserFeedbackStringsForWordListPatternMatch:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 safari_numberForKey:@"WordListGuessesRequired"];
  [v4 doubleValue];
  v6 = v5;

  return v6 <= 100000.0;
}

- (id)_passwordFeedbackStringWithPasswordVisibility:(unint64_t)a3
{
  v5 = [(WBSPasswordEvaluation *)self bestPatternMatchForUserFeedback];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v5 type] != 3 || !-[WBSPasswordEvaluation _shouldShowUserFeedbackStringsForWordListPatternMatch:](self, "_shouldShowUserFeedbackStringsForWordListPatternMatch:", v6))
  {
    goto LABEL_39;
  }

  v7 = [v6 userInfo];
  v8 = v7;
  if (a3 == 2)
  {
    v9 = 1;
  }

  else if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 safari_BOOLForKey:@"IsSensitive"];
  }

  v10 = [v8 safari_stringForKey:@"WordListIdentifier"];
  v11 = [v8 safari_stringForKey:@"FirstSubstitutedCharacter"];
  v12 = [v8 safari_stringForKey:@"FirstSubstitutionCharacter"];
  v13 = v12;
  if (!v11 || !v12)
  {
    goto LABEL_16;
  }

  if (![v10 isEqualToString:@"EnglishLexicon"])
  {
    if ([v10 isEqualToString:@"CommonPasswords"])
    {
      v14 = @"This password is based on a common password, which makes it easy to guess.";
      goto LABEL_33;
    }

LABEL_16:
    if ([v10 isEqualToString:@"EnglishLexicon"])
    {
      [v6 range];
      if (v15 == -[NSString length](self->_password, "length") && ([v8 objectForKeyedSubscript:@"SubstitutionVariations"], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
      {
        if (v9)
        {
          v14 = @"This password is a common word, which makes it easy to guess.";
          goto LABEL_33;
        }

        v20 = MEMORY[0x1E696AEC0];
        v21 = @"This password is a common word, “%@”, which makes it easy to guess.";
      }

      else
      {
        if (v9)
        {
          v14 = @"This password contains a common word, which makes it easy to guess.";
          goto LABEL_33;
        }

        v20 = MEMORY[0x1E696AEC0];
        v21 = @"This password contains a common word, “%@”, which makes it easy to guess.";
      }
    }

    else
    {
      if (![v10 isEqualToString:@"CommonPasswords"])
      {
        v19 = 1;
        goto LABEL_38;
      }

      [v6 range];
      if (v17 == -[NSString length](self->_password, "length") && ([v8 objectForKeyedSubscript:@"SubstitutionVariations"], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
      {
        if (v9)
        {
          v14 = @"Many people use this password, which makes it easy to guess.";
          goto LABEL_33;
        }

        v20 = MEMORY[0x1E696AEC0];
        v21 = @"Many people use the password “%@”, which makes it easy to guess.";
      }

      else
      {
        if (v9)
        {
          v14 = @"This password contains a common password, which makes it easy to guess.";
          goto LABEL_33;
        }

        v20 = MEMORY[0x1E696AEC0];
        v21 = @"This password contains a common password, “%@”, which makes it easy to guess.";
      }
    }

    v22 = _WBSLocalizedString(v21, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v23 = [v6 matchedSubstring];
    v9 = [v20 stringWithFormat:v22, v23];

    goto LABEL_37;
  }

  v14 = @"This password is based on a common word, which makes it easy to guess.";
LABEL_33:
  v9 = _WBSLocalizedString(v14, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
LABEL_37:
  v19 = 0;
LABEL_38:

  if (!v19)
  {
    goto LABEL_45;
  }

LABEL_39:
  if ([v6 type] != 2)
  {
    if ([v6 type] == 1)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = @"This password uses a pattern found on a keyboard, “%@”, which makes it easy to guess.";
      goto LABEL_43;
    }

    if ([v6 type] == 4)
    {
      v29 = MEMORY[0x1E696AEC0];
      v26 = _WBSLocalizedString(@"This password repeats part of the password, which makes it easy to guess.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
      v9 = [v29 stringWithFormat:v26];
      goto LABEL_44;
    }

LABEL_7:
    v9 = _WBSLocalizedString(@"This password is easy to guess.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    goto LABEL_45;
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = @"This password uses a sequence, “%@”, which makes it easy to guess.";
LABEL_43:
  v26 = _WBSLocalizedString(v25, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v27 = [v6 matchedSubstring];
  v9 = [v24 stringWithFormat:v26, v27];

LABEL_44:
LABEL_45:

  return v9;
}

- (id)userFeedbackStringWithPasswordVisibility:(unint64_t)a3
{
  if ([(WBSPasswordEvaluation *)self userShouldBeShownPassiveWarning])
  {
    if (self->_evaluationType)
    {
      _WBSLocalizedString(@"This password is easy to guess.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    }

    else
    {
      [(WBSPasswordEvaluation *)self _passwordFeedbackStringWithPasswordVisibility:a3];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)compactDescriptionWithPasswordColumnWidth:(unint64_t)a3 includePatternMatches:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(WBSPasswordEvaluation *)self strength];
  if (v8 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E7CF34E0[v8];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%-*s | %12lg | %@", a3, -[NSString UTF8String](self->_password, "UTF8String"), *&self->_guessesRequired, v9];
  [v7 addObject:v10];

  if (v4)
  {
    [v7 addObject:&stru_1F3064D08];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_patternMatches;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) compactDescriptionWithMatchedStringColumnWidth:a3];
          [v7 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  v17 = [v7 componentsJoinedByString:@"\n"];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WBSPasswordEvaluation *)self dictionaryRepresentation];
  [v4 encodeObject:v5];
}

- (WBSPasswordEvaluation)initWithCoder:(id)a3
{
  v4 = [a3 decodeObject];
  v5 = [(WBSPasswordEvaluation *)self initWithDictionaryRepresentation:v4];

  return v5;
}

@end