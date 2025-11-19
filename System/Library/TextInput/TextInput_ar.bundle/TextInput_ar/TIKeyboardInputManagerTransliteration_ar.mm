@interface TIKeyboardInputManagerTransliteration_ar
+ (id)arabicPrefixes;
+ (id)rtlMarkExcludedClientIdentifiers;
- (BOOL)shouldExcludeRtlMarkHandling;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)addRtlMark:(id)a3;
- (void)handleSpaceDeletionWithContext:(id)a3;
- (void)removeRtlMark:(id)a3;
@end

@implementation TIKeyboardInputManagerTransliteration_ar

+ (id)arabicPrefixes
{
  if (+[TIKeyboardInputManagerTransliteration_ar arabicPrefixes]::onceToken != -1)
  {
    +[TIKeyboardInputManagerTransliteration_ar arabicPrefixes];
  }

  v3 = +[TIKeyboardInputManagerTransliteration_ar arabicPrefixes]::prefixes;

  return v3;
}

+ (id)rtlMarkExcludedClientIdentifiers
{
  if (+[TIKeyboardInputManagerTransliteration_ar rtlMarkExcludedClientIdentifiers]::onceToken != -1)
  {
    +[TIKeyboardInputManagerTransliteration_ar rtlMarkExcludedClientIdentifiers];
  }

  v3 = +[TIKeyboardInputManagerTransliteration_ar rtlMarkExcludedClientIdentifiers]::clientIdentifiers;

  return v3;
}

- (BOOL)shouldExcludeRtlMarkHandling
{
  v3 = [objc_opt_class() rtlMarkExcludedClientIdentifiers];
  v4 = [(TIKeyboardInputManagerTransliteration_ar *)self keyboardState];
  v5 = [v4 clientIdentifier];
  v6 = [v3 containsObject:v5];

  return v6;
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(TIKeyboardInputManagerTransliteration_ar *)self shouldExcludeRtlMarkHandling])
  {
    [(TIKeyboardInputManagerTransliteration_ar *)self addRtlMark:v7];
  }

  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerTransliteration_ar;
  [(TIKeyboardInputManagerTransliteration_ar *)&v8 addInput:v6 withContext:v7];
  if (![(TIKeyboardInputManagerTransliteration_ar *)self shouldExcludeRtlMarkHandling])
  {
    [(TIKeyboardInputManagerTransliteration_ar *)self removeRtlMark:v7];
  }

  [(TIKeyboardInputManagerTransliteration_ar *)self handleSpaceDeletionWithContext:v7];
}

- (void)addRtlMark:(id)a3
{
  v11 = a3;
  v3 = [v11 revisionHistory];
  v4 = [v3 documentText];
  v5 = [v4 length];

  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [v11 revisionHistory];
  v7 = [v6 documentText];
  v8 = [v11 revisionHistory];
  v9 = [v8 documentText];
  v10 = [v7 characterAtIndex:{objc_msgSend(v9, "length") - 1}];

  if (v10 == 10)
  {
LABEL_3:
    [v11 insertText:@"\u200F"];
  }
}

- (void)removeRtlMark:(id)a3
{
  v20 = a3;
  v3 = [v20 revisionHistory];
  v4 = [v3 documentText];

  v5 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  if ([v6 count] >= 2)
  {
    if ([v4 characterAtIndex:0] == 8207)
    {
      [v20 deleteBackward:{objc_msgSend(v4, "length")}];
      v7 = [v4 substringFromIndex:1];
      if ([v7 length])
      {
        [v20 insertText:v7];
      }
    }

    else
    {
      v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
      v9 = [v8 containsString:@"\u200F"];

      if (!v9)
      {
        goto LABEL_15;
      }

      v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
      if ([v7 hasPrefix:@"\u200F"])
      {
        v10 = [v7 substringFromIndex:1];

        v7 = v10;
      }

      v11 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];
      v12 = [v11 length];
      v13 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
      v14 = v12 + [v13 length];

      [v20 deleteBackward:v14 + 1];
      v15 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 2}];
      LODWORD(v14) = [v15 isEqualToString:@"\u200F"];

      v16 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") - 1}];
      if (v14)
      {
        v17 = @"\n";
      }

      else
      {
        v17 = @" ";
      }

      v18 = [(__CFString *)v17 stringByAppendingString:v16];
      v19 = [v7 stringByAppendingString:v18];

      if ([v19 length])
      {
        [v20 insertText:v19];
      }
    }
  }

LABEL_15:
}

- (void)handleSpaceDeletionWithContext:(id)a3
{
  v43 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = [v3 revisionHistory];
  v5 = [v4 documentText];

  v6 = [v5 length];
  [objc_opt_class() arabicPrefixes];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v39 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  v26 = v7;
  v27 = v3;
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v37 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@" %@ ", *(*(&v36 + 1) + 8 * v11)];
      if ([v5 hasSuffix:v12])
      {
        goto LABEL_32;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v6 < 4)
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
LABEL_23:
      v24 = 0;
      while (1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ ", *(*(&v28 + 1) + 8 * v24)];
        if (v6 == [v12 length] && (objc_msgSend(v5, "hasSuffix:", v12) & 1) != 0)
        {
          goto LABEL_31;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v22)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }
  }

  else
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
LABEL_12:
      v17 = 0;
      while (1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * v17);
        v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ ", v18];
        if ([v5 hasSuffix:v12])
        {
          v19 = [v18 length];
          if (v6 >= v19 + 2 && [v5 characterAtIndex:v6 - 2 - v19] == 10)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v15)
          {
            goto LABEL_12;
          }

          goto LABEL_33;
        }
      }

LABEL_31:
      v3 = v27;
LABEL_32:
      [v3 deleteTextBackward:@" "];
    }
  }

LABEL_33:

  v25 = *MEMORY[0x29EDCA608];
}

@end