@interface SCRCMathMultiscriptsExpression
- (SCRCMathMultiscriptsExpression)initWithDictionary:(id)a3;
- (id)_appendString:(id)a3 toDescription:(id)a4 arePausesAllowed:(BOOL)a5;
- (id)_subSuperscriptPairFromDictionary:(id)a3;
- (id)description;
- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4;
- (void)_subSuperScriptsDescriptionFromArray:(id)a3 withSpeakingStyle:(int64_t)a4 arePausesAllowed:(BOOL)a5 outSubscripts:(id *)a6 outSuperscripts:(id *)a7;
@end

@implementation SCRCMathMultiscriptsExpression

- (SCRCMathMultiscriptsExpression)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = SCRCMathMultiscriptsExpression;
  v5 = [(SCRCMathExpression *)&v36 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AXMBaseObject"];
    v7 = [SCRCMathExpression mathExpressionWithDictionary:v6];
    [(SCRCMathMultiscriptsExpression *)v5 setBase:v7];

    v8 = [v4 objectForKey:@"AXMMultiscriptPostscripts"];
    v9 = [v4 objectForKey:@"AXMMultiscriptPrescripts"];
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

- (id)_subSuperscriptPairFromDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 objectForKey:@"AXMSubscriptObject"];
  v7 = [v4 objectForKey:@"AXMSuperscriptObject"];

  if (v6)
  {
    v8 = [SCRCMathExpression mathExpressionWithDictionary:v6];

    if (v8)
    {
      v9 = [SCRCMathExpression mathExpressionWithDictionary:v6];
      [v5 setObject:v9 forKey:@"AXMSubscriptObject"];
    }
  }

  if (v7)
  {
    v10 = [SCRCMathExpression mathExpressionWithDictionary:v7];

    if (v10)
    {
      v11 = [SCRCMathExpression mathExpressionWithDictionary:v7];
      [v5 setObject:v11 forKey:@"AXMSuperscriptObject"];
    }
  }

  return v5;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = SCRCMathMultiscriptsExpression;
  v3 = [(SCRCMathMultiscriptsExpression *)&v9 description];
  v4 = [(SCRCMathMultiscriptsExpression *)self base];
  v5 = [(SCRCMathMultiscriptsExpression *)self preScripts];
  v6 = [(SCRCMathMultiscriptsExpression *)self postScripts];
  v7 = [v3 stringByAppendingFormat:@" - base %@, prescripts %@, postscripts %@", v4, v5, v6];

  return v7;
}

- (id)speakableDescriptionWithSpeakingStyle:(int64_t)a3 arePausesAllowed:(BOOL)a4
{
  v4 = a4;
  v7 = [(SCRCMathMultiscriptsExpression *)self base];
  v8 = [v7 speakableDescriptionWithSpeakingStyle:a3 arePausesAllowed:v4];

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
    [(SCRCMathMultiscriptsExpression *)self _subSuperScriptsDescriptionFromArray:preScripts withSpeakingStyle:a3 arePausesAllowed:v4 outSubscripts:&v43 outSuperscripts:&v42];
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
  [(SCRCMathMultiscriptsExpression *)self _subSuperScriptsDescriptionFromArray:postScripts withSpeakingStyle:a3 arePausesAllowed:v4 outSubscripts:&v41 outSuperscripts:&v40];
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

      v10 = [(SCRCMathMultiscriptsExpression *)self _appendString:v13 toDescription:v18 arePausesAllowed:v4];
    }

    if ([v14 length])
    {
      v23 = MEMORY[0x277CCA898];
      v24 = [(SCRCMathExpression *)self localizedStringForKey:@"left.superscript.formatter"];
      v25 = [v23 scrcStringWithFormat:v24, v14];

      v26 = [(SCRCMathMultiscriptsExpression *)self _appendString:v25 toDescription:v10 arePausesAllowed:v4];

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

    v31 = [(SCRCMathMultiscriptsExpression *)self _appendString:v30 toDescription:v10 arePausesAllowed:v4];

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

    v36 = [(SCRCMathMultiscriptsExpression *)self _appendString:v35 toDescription:v10 arePausesAllowed:v4];

    v10 = v36;
    v17 = v35;
  }

  v37 = v10;

  return v10;
}

- (id)_appendString:(id)a3 toDescription:(id)a4 arePausesAllowed:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = MEMORY[0x277CCA898];
  v9 = a3;
  if (v5)
  {
    [v8 scrcPauseString];
  }

  else
  {
    [v8 scrcSpaceString];
  }
  v10 = ;
  v11 = [v7 scrcStringByAppendingAttributedString:v10];

  v12 = [v11 scrcStringByAppendingAttributedString:v9];

  return v12;
}

- (void)_subSuperScriptsDescriptionFromArray:(id)a3 withSpeakingStyle:(int64_t)a4 arePausesAllowed:(BOOL)a5 outSubscripts:(id *)a6 outSuperscripts:(id *)a7
{
  v34 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  if (v9 && [v9 count])
  {
    v29 = a6;
    v11 = [MEMORY[0x277CCA898] scrcString];
    v12 = [MEMORY[0x277CCA898] scrcString];
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
            if ([v11 length])
            {
              v19 = [MEMORY[0x277CCA898] scrcSpaceString];
              v20 = [v11 scrcStringByAppendingAttributedString:v19];

              v11 = v20;
            }

            v21 = [v17 speakableDescriptionWithSpeakingStyle:a4 arePausesAllowed:v34];
            v22 = [v11 scrcStringByAppendingAttributedString:v21];

            v11 = v22;
          }

          if (v18)
          {
            if ([v12 length])
            {
              v23 = [MEMORY[0x277CCA898] scrcSpaceString];
              v24 = [v12 scrcStringByAppendingAttributedString:v23];

              v12 = v24;
            }

            v25 = [v18 speakableDescriptionWithSpeakingStyle:a4 arePausesAllowed:v34];
            v26 = [v12 scrcStringByAppendingAttributedString:v25];

            v12 = v26;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v14);
    }

    if (v29)
    {
      v27 = v11;
      *v29 = v11;
      v28 = v12;
      *a7 = v12;
    }

    v10 = v30;
  }
}

@end