@interface SCRCMathMultiscriptsExpression
- (SCRCMathMultiscriptsExpression)initWithDictionary:(id)dictionary;
- (id)_appendString:(id)string toDescription:(id)description arePausesAllowed:(BOOL)allowed;
- (id)_subSuperscriptPairFromDictionary:(id)dictionary;
- (id)description;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed;
- (void)_subSuperScriptsDescriptionFromArray:(id)array withSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed outSubscripts:(id *)subscripts outSuperscripts:(id *)superscripts;
@end

@implementation SCRCMathMultiscriptsExpression

- (SCRCMathMultiscriptsExpression)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = SCRCMathMultiscriptsExpression;
  v5 = [(SCRCMathExpression *)&v36 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"AXMBaseObject"];
    v7 = [SCRCMathExpression mathExpressionWithDictionary:v6];
    [(SCRCMathMultiscriptsExpression *)v5 setBase:v7];

    v8 = [dictionaryCopy objectForKey:@"AXMMultiscriptPostscripts"];
    v9 = [dictionaryCopy objectForKey:@"AXMMultiscriptPrescripts"];
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        v16 = 0;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(SCRCMathMultiscriptsExpression *)v5 _subSuperscriptPairFromDictionary:*(*(&v32 + 1) + 8 * v16)];
          [(NSArray *)v10 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v14);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        v22 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(SCRCMathMultiscriptsExpression *)v5 _subSuperscriptPairFromDictionary:*(*(&v28 + 1) + 8 * v22), v28];
          [(NSArray *)v11 addObject:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v20);
    }

    postScripts = v5->_postScripts;
    v5->_postScripts = v10;
    v25 = v10;

    preScripts = v5->_preScripts;
    v5->_preScripts = v11;
  }

  return v5;
}

- (id)_subSuperscriptPairFromDictionary:(id)dictionary
{
  v3 = MEMORY[0x277CBEB38];
  dictionaryCopy = dictionary;
  dictionary = [v3 dictionary];
  v6 = [dictionaryCopy objectForKey:@"AXMSubscriptObject"];
  v7 = [dictionaryCopy objectForKey:@"AXMSuperscriptObject"];

  if (v6)
  {
    v8 = [SCRCMathExpression mathExpressionWithDictionary:v6];

    if (v8)
    {
      v9 = [SCRCMathExpression mathExpressionWithDictionary:v6];
      [dictionary setObject:v9 forKey:@"AXMSubscriptObject"];
    }
  }

  if (v7)
  {
    v10 = [SCRCMathExpression mathExpressionWithDictionary:v7];

    if (v10)
    {
      v11 = [SCRCMathExpression mathExpressionWithDictionary:v7];
      [dictionary setObject:v11 forKey:@"AXMSuperscriptObject"];
    }
  }

  return dictionary;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = SCRCMathMultiscriptsExpression;
  v3 = [(SCRCMathMultiscriptsExpression *)&v9 description];
  base = [(SCRCMathMultiscriptsExpression *)self base];
  preScripts = [(SCRCMathMultiscriptsExpression *)self preScripts];
  postScripts = [(SCRCMathMultiscriptsExpression *)self postScripts];
  v7 = [v3 stringByAppendingFormat:@" - base %@, prescripts %@, postscripts %@", base, preScripts, postScripts];

  return v7;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  base = [(SCRCMathMultiscriptsExpression *)self base];
  v8 = [base speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];

  if (![v8 length])
  {
    v9 = [(SCRCMathExpression *)self localizedAttributedStringForKey:@"empty.content"];

    v8 = v9;
  }

  v10 = v8;
  v11 = [(NSArray *)self->_preScripts count];
  if (v11)
  {
    preScripts = self->_preScripts;
    v42 = 0;
    v43 = 0;
    [(SCRCMathMultiscriptsExpression *)self _subSuperScriptsDescriptionFromArray:preScripts withSpeakingStyle:style arePausesAllowed:allowedCopy outSubscripts:&v43 outSuperscripts:&v42];
    v13 = v43;
    v14 = v42;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  postScripts = self->_postScripts;
  v40 = 0;
  v41 = 0;
  [(SCRCMathMultiscriptsExpression *)self _subSuperScriptsDescriptionFromArray:postScripts withSpeakingStyle:style arePausesAllowed:allowedCopy outSubscripts:&v41 outSuperscripts:&v40];
  v16 = v41;
  v17 = v40;
  v39 = v10;
  if (v11)
  {
    if ([v13 length])
    {
      v18 = v10;
      v19 = MEMORY[0x277CCA898];
      v20 = [(SCRCMathExpression *)self localizedStringForKey:@"left.subscript.formatter"];
      v21 = [v19 scrcStringWithFormat:v20, v13, v39];
      v22 = v13;
      v13 = v21;

      v10 = [(SCRCMathMultiscriptsExpression *)self _appendString:v13 toDescription:v18 arePausesAllowed:allowedCopy];
    }

    if ([v14 length])
    {
      v23 = MEMORY[0x277CCA898];
      v24 = [(SCRCMathExpression *)self localizedStringForKey:@"left.superscript.formatter"];
      v25 = [v23 scrcStringWithFormat:v24, v14];

      v26 = [(SCRCMathMultiscriptsExpression *)self _appendString:v25 toDescription:v10 arePausesAllowed:allowedCopy];

      v10 = v26;
      v14 = v25;
    }
  }

  if ([v16 length])
  {
    v27 = MEMORY[0x277CCA898];
    if (v11)
    {
      v28 = @"right.subscript.formatter";
    }

    else
    {
      v28 = @"generic.subscript.formatter";
    }

    v29 = [(SCRCMathExpression *)self localizedStringForKey:v28];
    v30 = [v27 scrcStringWithFormat:v29, v16];

    v31 = [(SCRCMathMultiscriptsExpression *)self _appendString:v30 toDescription:v10 arePausesAllowed:allowedCopy];

    v10 = v31;
    v16 = v30;
  }

  if ([v17 length])
  {
    v32 = MEMORY[0x277CCA898];
    if (v11)
    {
      v33 = @"right.superscript.formatter";
    }

    else
    {
      v33 = @"generic.superscript.formatter";
    }

    v34 = [(SCRCMathExpression *)self localizedStringForKey:v33];
    v35 = [v32 scrcStringWithFormat:v34, v17];

    v36 = [(SCRCMathMultiscriptsExpression *)self _appendString:v35 toDescription:v10 arePausesAllowed:allowedCopy];

    v10 = v36;
    v17 = v35;
  }

  v37 = v10;

  return v10;
}

- (id)_appendString:(id)string toDescription:(id)description arePausesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  descriptionCopy = description;
  v8 = MEMORY[0x277CCA898];
  stringCopy = string;
  if (allowedCopy)
  {
    [v8 scrcPauseString];
  }

  else
  {
    [v8 scrcSpaceString];
  }
  v10 = ;
  v11 = [descriptionCopy scrcStringByAppendingAttributedString:v10];

  v12 = [v11 scrcStringByAppendingAttributedString:stringCopy];

  return v12;
}

- (void)_subSuperScriptsDescriptionFromArray:(id)array withSpeakingStyle:(int64_t)style arePausesAllowed:(BOOL)allowed outSubscripts:(id *)subscripts outSuperscripts:(id *)superscripts
{
  allowedCopy = allowed;
  v40 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v10 = arrayCopy;
  if (arrayCopy && [arrayCopy count])
  {
    subscriptsCopy = subscripts;
    scrcString = [MEMORY[0x277CCA898] scrcString];
    scrcString2 = [MEMORY[0x277CCA898] scrcString];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = v10;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v32 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [v16 objectForKey:@"AXMSubscriptObject"];
          v18 = [v16 objectForKey:@"AXMSuperscriptObject"];
          if (v17)
          {
            if ([scrcString length])
            {
              scrcSpaceString = [MEMORY[0x277CCA898] scrcSpaceString];
              v20 = [scrcString scrcStringByAppendingAttributedString:scrcSpaceString];

              scrcString = v20;
            }

            v21 = [v17 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];
            v22 = [scrcString scrcStringByAppendingAttributedString:v21];

            scrcString = v22;
          }

          if (v18)
          {
            if ([scrcString2 length])
            {
              scrcSpaceString2 = [MEMORY[0x277CCA898] scrcSpaceString];
              v24 = [scrcString2 scrcStringByAppendingAttributedString:scrcSpaceString2];

              scrcString2 = v24;
            }

            v25 = [v18 speakableDescriptionWithSpeakingStyle:style arePausesAllowed:allowedCopy];
            v26 = [scrcString2 scrcStringByAppendingAttributedString:v25];

            scrcString2 = v26;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v14);
    }

    if (subscriptsCopy)
    {
      v27 = scrcString;
      *subscriptsCopy = scrcString;
      v28 = scrcString2;
      *superscripts = scrcString2;
    }

    v10 = v30;
  }
}

@end