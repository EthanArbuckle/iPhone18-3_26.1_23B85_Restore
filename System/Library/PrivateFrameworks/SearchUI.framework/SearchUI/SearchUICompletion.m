@interface SearchUICompletion
+ (_NSRange)nonPartialRangeOfTypedString:(id)a3 inString:(id)a4;
+ (id)initWithAttributedTypedString:(id)a3 result:(id)a4 cardSection:(id)a5;
+ (id)initWithTypedString:(id)a3 result:(id)a4 cardSection:(id)a5;
- (BOOL)completionResultIsPotentiallyPunchout;
- (NSString)bridgeString;
- (SFImage)image;
- (SearchUICompletion)initWithTypedString:(id)a3 result:(id)a4 cardSection:(id)a5;
- (id)calculationCommand;
- (id)completionStringToMatch;
- (id)completionStringWithString:(id)a3;
- (id)description;
- (id)prefixMatchExtensionString;
- (void)updateFields;
@end

@implementation SearchUICompletion

+ (id)initWithTypedString:(id)a3 result:(id)a4 cardSection:(id)a5
{
  v8 = MEMORY[0x1E696AAB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithString:v11];

  v13 = [a1 initWithAttributedTypedString:v12 result:v10 cardSection:v9];

  return v13;
}

+ (id)initWithAttributedTypedString:(id)a3 result:(id)a4 cardSection:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SearchUICompletion alloc] initWithTypedString:v9 result:v8 cardSection:v7];

  return v10;
}

- (SearchUICompletion)initWithTypedString:(id)a3 result:(id)a4 cardSection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = SearchUICompletion;
  v12 = [(SearchUICompletion *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_typedString, a3);
    v14 = objc_opt_new();
    v15 = [v14 buildRowModelFromCardSection:v11 result:v10];
    if (v15)
    {
      commandHandler = v15;
    }

    else
    {
      v17 = [v14 buildRowModelsFromResult:v10];
      commandHandler = [v17 firstObject];

      if (!commandHandler)
      {
        commandHandler = v13->_commandHandler;
        v13->_commandHandler = 0;
        goto LABEL_6;
      }
    }

    v18 = [SearchUICommandHandler handlerForRowModel:commandHandler environment:0];
    v19 = v13->_commandHandler;
    v13->_commandHandler = v18;

LABEL_6:
    [(SearchUICompletion *)v13 updateFields];
  }

  return v13;
}

- (NSString)bridgeString
{
  v3 = [(SearchUICompletion *)self calculationCommand];

  if (v3)
  {
    v4 = [(SearchUICompletion *)self typedString];
    v5 = [v4 string];
    v6 = [SearchUIUtilities stringHasRegexMatch:v5 regex:@"[=＝]\\s*$"];
    v7 = @" = ";
    if (v6)
    {
      v7 = &stru_1F55BC4E8;
    }

    v8 = v7;
  }

  else
  {
    v9 = +[SearchUIUtilities isIpad];
    v10 = @" — ";
    if (v9)
    {
      v10 = @"﹣";
    }

    v8 = v10;
  }

  return v8;
}

- (SFImage)image
{
  v2 = [(SearchUICompletion *)self commandHandler];
  v3 = [v2 destinationApplicationIconImage];

  return v3;
}

- (void)updateFields
{
  v12 = [(SearchUICompletion *)self completionStringToMatch];
  if (![objc_opt_class() stringMatchesWritingDirection:v12])
  {
    [(SearchUICompletion *)self setCompletionString:0];
    [(SearchUICompletion *)self setExtensionString:v12];
    goto LABEL_11;
  }

  v3 = [(SearchUICompletion *)self completionStringWithString:v12];
  if (v3)
  {
    [(SearchUICompletion *)self setCompletionString:v3];
    v4 = [(SearchUICompletion *)self prefixMatchExtensionString];
  }

  else
  {
    v5 = [(SearchUICompletion *)self commandHandler];
    if (v5)
    {
      [(SearchUICompletion *)self setCompletionString:0];
    }

    else
    {
      v6 = [(SearchUICompletion *)self typedString];
      [(SearchUICompletion *)self setCompletionString:v6];
    }

    v4 = [(SearchUICompletion *)self completionStringToMatch];
    if (!v4)
    {
      v11 = [(SearchUICompletion *)self prefixMatchExtensionString];
      [(SearchUICompletion *)self setExtensionString:v11];

      goto LABEL_10;
    }
  }

  [(SearchUICompletion *)self setExtensionString:v4];
LABEL_10:

LABEL_11:
  v7 = [(SearchUICompletion *)self typedString];
  v8 = [v7 length];

  if (!v8)
  {
    if ([v12 length])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v12];
      [(SearchUICompletion *)self setCompletionString:v9];

      v10 = [(SearchUICompletion *)self prefixMatchExtensionString];
      [(SearchUICompletion *)self setExtensionString:v10];
    }

    else
    {
      [(SearchUICompletion *)self setCompletionString:0];
      [(SearchUICompletion *)self setExtensionString:0];
    }
  }
}

- (id)completionStringToMatch
{
  v3 = [(SearchUICompletion *)self calculationCommand];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 output];
  }

  else
  {
    v6 = [(SearchUICompletion *)self commandHandler];
    v7 = [v6 rowModel];

    v8 = [v7 identifyingResult];
    v9 = [v8 title];
    v10 = [v9 text];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = [v8 completion];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v7 dragTitle];
      }

      v12 = v15;
    }

    v16 = [MEMORY[0x1E696AB08] controlCharacterSet];
    v17 = [v12 stringByTrimmingCharactersInSet:v16];

    if ([v17 length])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v5 = v18;
  }

  return v5;
}

- (id)prefixMatchExtensionString
{
  v2 = [(SearchUICompletion *)self commandHandler];
  v3 = [v2 defaultTitle];

  return v3;
}

+ (_NSRange)nonPartialRangeOfTypedString:(id)a3 inString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  if (v5 && [v6 length] >= v7)
  {
    v9 = [v6 localizedStandardRangeOfString:v5];
    v8 = v12;
    v13 = v12 + v9 - 1;
    if (v13 < [v6 length] - 1)
    {
      v17.location = [v6 rangeOfComposedCharacterSequenceAtIndex:v13];
      location = v17.location;
      length = v17.length;
      v19.location = v9;
      v19.length = v8;
      v16 = NSIntersectionRange(v17, v19);
      if (v16.location != location || v16.length != length)
      {
        v8 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)completionStringWithString:(id)a3
{
  v54[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUICompletion *)self typedString];
  v6 = [v5 string];
  v7 = [v6 componentsSeparatedByString:@"\uFFFC"];
  v8 = [v7 lastObject];

  if (![v8 length])
  {
    v9 = [(SearchUICompletion *)self typedString];
    v10 = [v9 string];

    v8 = v10;
  }

  v11 = [(SearchUICompletion *)self typedString];
  v12 = [v11 string];
  v13 = [v12 length];
  v14 = [v8 length];

  v15 = [(SearchUICompletion *)self completionString];
  v16 = [v15 string];
  self->_isCompletionStringFullyMatched = [v16 isEqualToString:v8];

  v17 = [objc_opt_class() nonPartialRangeOfTypedString:v8 inString:v4];
  v19 = v18;
  if (![(SearchUICompletion *)self isValidRange:v17, v18])
  {
    v20 = SearchUIGeneralLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412546;
      v46 = v8;
      v47 = 2112;
      v48 = v4;
      _os_log_impl(&dword_1DA169000, v20, OS_LOG_TYPE_DEFAULT, "to handle new normalized range match with compatibility equivalence, precomposing typedString: %@ and completionString: %@", &v45, 0x16u);
    }

    v21 = [v8 precomposedStringWithCompatibilityMapping];

    v22 = [v4 precomposedStringWithCompatibilityMapping];

    v17 = [objc_opt_class() nonPartialRangeOfTypedString:v21 inString:v22];
    v19 = v23;
    v8 = v21;
    v4 = v22;
  }

  if ([(SearchUICompletion *)self isValidRange:v17, v19])
  {
    v24 = v13 - v14;
    v25 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v26 = [v25 mutableCopy];

    [v26 setAllowsDefaultTighteningForTruncation:0];
    v27 = objc_alloc(MEMORY[0x1E696AD40]);
    v28 = [(SearchUICompletion *)self typedString];
    v29 = [v27 initWithAttributedString:v28];

    v53 = *MEMORY[0x1E69DB688];
    v54[0] = v26;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    [v29 setAttributes:v30 range:{v24, objc_msgSend(v8, "length")}];

    v31 = [v4 length];
    v32 = v31 - v19;
    if (v19 == 0x7FFFFFFFFFFFFFFFLL || (v33 = v31, v31 > [v4 length]))
    {
      v34 = SearchUIGeneralLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v56.location = v19;
        v56.length = v32;
        v42 = NSStringFromRange(v56);
        v43 = [(SearchUICompletion *)self typedString];
        v57.location = v17;
        v57.length = v19;
        v44 = NSStringFromRange(v57);
        v45 = 138413058;
        v46 = v42;
        v47 = 2112;
        v48 = v4;
        v49 = 2112;
        v50 = v43;
        v51 = 2112;
        v52 = v44;
        _os_log_error_impl(&dword_1DA169000, v34, OS_LOG_TYPE_ERROR, "suffix range: %@ is wrong for completionString: %@ with typedString: %@. originalRange: %@", &v45, 0x2Au);
      }

      v35 = 0;
    }

    else
    {
      self->_isCompletionStringFullyMatched |= v33 == v19;
      v36 = objc_alloc(MEMORY[0x1E696AAB0]);
      v37 = [v4 substringWithRange:{v19, v32}];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = &stru_1F55BC4E8;
      }

      v40 = [v36 initWithString:v39];

      [v29 appendAttributedString:v40];
      v35 = [v29 copy];
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)calculationCommand
{
  v2 = [(SearchUICompletion *)self commandHandler];
  v3 = [v2 command];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)completionResultIsPotentiallyPunchout
{
  v2 = [(SearchUICompletion *)self commandHandler];
  v3 = [v2 destination] == 2;

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SearchUICompletion;
  v3 = [(SearchUICompletion *)&v8 description];
  v4 = [v3 mutableCopy];

  v5 = [(SearchUICompletion *)self completionString];
  v6 = [(SearchUICompletion *)self extensionString];
  [v4 appendFormat:@"completion:%@ extension:%@", v5, v6];

  return v4;
}

@end