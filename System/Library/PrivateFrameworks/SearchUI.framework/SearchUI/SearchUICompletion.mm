@interface SearchUICompletion
+ (_NSRange)nonPartialRangeOfTypedString:(id)string inString:(id)inString;
+ (id)initWithAttributedTypedString:(id)string result:(id)result cardSection:(id)section;
+ (id)initWithTypedString:(id)string result:(id)result cardSection:(id)section;
- (BOOL)completionResultIsPotentiallyPunchout;
- (NSString)bridgeString;
- (SFImage)image;
- (SearchUICompletion)initWithTypedString:(id)string result:(id)result cardSection:(id)section;
- (id)calculationCommand;
- (id)completionStringToMatch;
- (id)completionStringWithString:(id)string;
- (id)description;
- (id)prefixMatchExtensionString;
- (void)updateFields;
@end

@implementation SearchUICompletion

+ (id)initWithTypedString:(id)string result:(id)result cardSection:(id)section
{
  v8 = MEMORY[0x1E696AAB0];
  sectionCopy = section;
  resultCopy = result;
  stringCopy = string;
  v12 = [[v8 alloc] initWithString:stringCopy];

  v13 = [self initWithAttributedTypedString:v12 result:resultCopy cardSection:sectionCopy];

  return v13;
}

+ (id)initWithAttributedTypedString:(id)string result:(id)result cardSection:(id)section
{
  sectionCopy = section;
  resultCopy = result;
  stringCopy = string;
  v10 = [[SearchUICompletion alloc] initWithTypedString:stringCopy result:resultCopy cardSection:sectionCopy];

  return v10;
}

- (SearchUICompletion)initWithTypedString:(id)string result:(id)result cardSection:(id)section
{
  stringCopy = string;
  resultCopy = result;
  sectionCopy = section;
  v21.receiver = self;
  v21.super_class = SearchUICompletion;
  v12 = [(SearchUICompletion *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_typedString, string);
    v14 = objc_opt_new();
    v15 = [v14 buildRowModelFromCardSection:sectionCopy result:resultCopy];
    if (v15)
    {
      commandHandler = v15;
    }

    else
    {
      v17 = [v14 buildRowModelsFromResult:resultCopy];
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
  calculationCommand = [(SearchUICompletion *)self calculationCommand];

  if (calculationCommand)
  {
    typedString = [(SearchUICompletion *)self typedString];
    string = [typedString string];
    v6 = [SearchUIUtilities stringHasRegexMatch:string regex:@"[=＝]\\s*$"];
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
  commandHandler = [(SearchUICompletion *)self commandHandler];
  destinationApplicationIconImage = [commandHandler destinationApplicationIconImage];

  return destinationApplicationIconImage;
}

- (void)updateFields
{
  completionStringToMatch = [(SearchUICompletion *)self completionStringToMatch];
  if (![objc_opt_class() stringMatchesWritingDirection:completionStringToMatch])
  {
    [(SearchUICompletion *)self setCompletionString:0];
    [(SearchUICompletion *)self setExtensionString:completionStringToMatch];
    goto LABEL_11;
  }

  v3 = [(SearchUICompletion *)self completionStringWithString:completionStringToMatch];
  if (v3)
  {
    [(SearchUICompletion *)self setCompletionString:v3];
    prefixMatchExtensionString = [(SearchUICompletion *)self prefixMatchExtensionString];
  }

  else
  {
    commandHandler = [(SearchUICompletion *)self commandHandler];
    if (commandHandler)
    {
      [(SearchUICompletion *)self setCompletionString:0];
    }

    else
    {
      typedString = [(SearchUICompletion *)self typedString];
      [(SearchUICompletion *)self setCompletionString:typedString];
    }

    prefixMatchExtensionString = [(SearchUICompletion *)self completionStringToMatch];
    if (!prefixMatchExtensionString)
    {
      prefixMatchExtensionString2 = [(SearchUICompletion *)self prefixMatchExtensionString];
      [(SearchUICompletion *)self setExtensionString:prefixMatchExtensionString2];

      goto LABEL_10;
    }
  }

  [(SearchUICompletion *)self setExtensionString:prefixMatchExtensionString];
LABEL_10:

LABEL_11:
  typedString2 = [(SearchUICompletion *)self typedString];
  v8 = [typedString2 length];

  if (!v8)
  {
    if ([completionStringToMatch length])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:completionStringToMatch];
      [(SearchUICompletion *)self setCompletionString:v9];

      prefixMatchExtensionString3 = [(SearchUICompletion *)self prefixMatchExtensionString];
      [(SearchUICompletion *)self setExtensionString:prefixMatchExtensionString3];
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
  calculationCommand = [(SearchUICompletion *)self calculationCommand];
  v4 = calculationCommand;
  if (calculationCommand)
  {
    output = [calculationCommand output];
  }

  else
  {
    commandHandler = [(SearchUICompletion *)self commandHandler];
    rowModel = [commandHandler rowModel];

    identifyingResult = [rowModel identifyingResult];
    title = [identifyingResult title];
    text = [title text];
    v11 = text;
    if (text)
    {
      v12 = text;
    }

    else
    {
      completion = [identifyingResult completion];
      v14 = completion;
      if (completion)
      {
        dragTitle = completion;
      }

      else
      {
        dragTitle = [rowModel dragTitle];
      }

      v12 = dragTitle;
    }

    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    v17 = [v12 stringByTrimmingCharactersInSet:controlCharacterSet];

    if ([v17 length])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    output = v18;
  }

  return output;
}

- (id)prefixMatchExtensionString
{
  commandHandler = [(SearchUICompletion *)self commandHandler];
  defaultTitle = [commandHandler defaultTitle];

  return defaultTitle;
}

+ (_NSRange)nonPartialRangeOfTypedString:(id)string inString:(id)inString
{
  stringCopy = string;
  inStringCopy = inString;
  v7 = [stringCopy length];
  if (stringCopy && [inStringCopy length] >= v7)
  {
    v9 = [inStringCopy localizedStandardRangeOfString:stringCopy];
    v8 = v12;
    v13 = v12 + v9 - 1;
    if (v13 < [inStringCopy length] - 1)
    {
      v17.location = [inStringCopy rangeOfComposedCharacterSequenceAtIndex:v13];
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

- (id)completionStringWithString:(id)string
{
  v54[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  typedString = [(SearchUICompletion *)self typedString];
  string = [typedString string];
  v7 = [string componentsSeparatedByString:@"\uFFFC"];
  lastObject = [v7 lastObject];

  if (![lastObject length])
  {
    typedString2 = [(SearchUICompletion *)self typedString];
    string2 = [typedString2 string];

    lastObject = string2;
  }

  typedString3 = [(SearchUICompletion *)self typedString];
  string3 = [typedString3 string];
  v13 = [string3 length];
  v14 = [lastObject length];

  completionString = [(SearchUICompletion *)self completionString];
  string4 = [completionString string];
  self->_isCompletionStringFullyMatched = [string4 isEqualToString:lastObject];

  v17 = [objc_opt_class() nonPartialRangeOfTypedString:lastObject inString:stringCopy];
  v19 = v18;
  if (![(SearchUICompletion *)self isValidRange:v17, v18])
  {
    v20 = SearchUIGeneralLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412546;
      v46 = lastObject;
      v47 = 2112;
      v48 = stringCopy;
      _os_log_impl(&dword_1DA169000, v20, OS_LOG_TYPE_DEFAULT, "to handle new normalized range match with compatibility equivalence, precomposing typedString: %@ and completionString: %@", &v45, 0x16u);
    }

    precomposedStringWithCompatibilityMapping = [lastObject precomposedStringWithCompatibilityMapping];

    precomposedStringWithCompatibilityMapping2 = [stringCopy precomposedStringWithCompatibilityMapping];

    v17 = [objc_opt_class() nonPartialRangeOfTypedString:precomposedStringWithCompatibilityMapping inString:precomposedStringWithCompatibilityMapping2];
    v19 = v23;
    lastObject = precomposedStringWithCompatibilityMapping;
    stringCopy = precomposedStringWithCompatibilityMapping2;
  }

  if ([(SearchUICompletion *)self isValidRange:v17, v19])
  {
    v24 = v13 - v14;
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v26 = [defaultParagraphStyle mutableCopy];

    [v26 setAllowsDefaultTighteningForTruncation:0];
    v27 = objc_alloc(MEMORY[0x1E696AD40]);
    typedString4 = [(SearchUICompletion *)self typedString];
    v29 = [v27 initWithAttributedString:typedString4];

    v53 = *MEMORY[0x1E69DB688];
    v54[0] = v26;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    [v29 setAttributes:v30 range:{v24, objc_msgSend(lastObject, "length")}];

    v31 = [stringCopy length];
    v32 = v31 - v19;
    if (v19 == 0x7FFFFFFFFFFFFFFFLL || (v33 = v31, v31 > [stringCopy length]))
    {
      v34 = SearchUIGeneralLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v56.location = v19;
        v56.length = v32;
        v42 = NSStringFromRange(v56);
        typedString5 = [(SearchUICompletion *)self typedString];
        v57.location = v17;
        v57.length = v19;
        v44 = NSStringFromRange(v57);
        v45 = 138413058;
        v46 = v42;
        v47 = 2112;
        v48 = stringCopy;
        v49 = 2112;
        v50 = typedString5;
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
      v37 = [stringCopy substringWithRange:{v19, v32}];
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
  commandHandler = [(SearchUICompletion *)self commandHandler];
  command = [commandHandler command];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = command;
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
  commandHandler = [(SearchUICompletion *)self commandHandler];
  v3 = [commandHandler destination] == 2;

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SearchUICompletion;
  v3 = [(SearchUICompletion *)&v8 description];
  v4 = [v3 mutableCopy];

  completionString = [(SearchUICompletion *)self completionString];
  extensionString = [(SearchUICompletion *)self extensionString];
  [v4 appendFormat:@"completion:%@ extension:%@", completionString, extensionString];

  return v4;
}

@end