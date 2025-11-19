@interface TIUserDictionaryWord
+ (BOOL)userWord:(id)a3 duplicatesTarget:(id)a4 andShortcut:(id)a5;
+ (int64_t)validateTransaction:(id)a3 existingEntries:(id)a4;
@end

@implementation TIUserDictionaryWord

+ (BOOL)userWord:(id)a3 duplicatesTarget:(id)a4 andShortcut:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 phrase];
  v11 = [v8 isEqualToString:v10];

  v12 = [v9 shortcut];
  if ([v12 length])
  {
    [v9 shortcut];
  }

  else
  {
    [v9 phrase];
  }
  v13 = ;

  v14 = [v7 compare:v13 options:1];
  return ((v14 != 0) ^ ((v14 != 0) | v11)) & 1;
}

+ (int64_t)validateTransaction:(id)a3 existingEntries:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 valueToInsert];
  v8 = [v7 phrase];

  v9 = [v5 valueToInsert];
  v10 = [v9 shortcut];

  v11 = [v8 length];
  v12 = [v8 _containsIdeographicCharacters];
  if (!v11)
  {
    v21 = 1;
    goto LABEL_51;
  }

  v13 = v12;
  v14 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v15 = [v8 stringByTrimmingCharactersInSet:v14];
  v16 = [v15 length];

  if (!v16)
  {
    v21 = 2;
    goto LABEL_51;
  }

  if ([v10 length])
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == 1;
  }

  v18 = !v17;
  if (((v18 | v13) & 1) == 0)
  {
    v21 = 3;
    goto LABEL_51;
  }

  if (v10)
  {
    v19 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v20 = [v10 rangeOfCharacterFromSet:v19];

    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 5;
      goto LABEL_51;
    }
  }

  if ([v10 _containsEmoji])
  {
    v21 = 9;
    goto LABEL_51;
  }

  v22 = [v10 _containsCJKSymbolsAndPunctuation];
  if (((v22 ^ 1) & v13) == 1)
  {
    if (![v10 length])
    {
      v21 = 11;
      goto LABEL_51;
    }
  }

  else
  {
    if (v22)
    {
      v21 = 10;
    }

    else
    {
      v21 = 0;
    }

    if (v22)
    {
      goto LABEL_51;
    }
  }

  if ([v10 _containsIdeographicCharacters])
  {
    v21 = 8;
  }

  else
  {
    if ([v10 _containsHiraganaKatakanaOrBopomofo])
    {
      v23 = 1;
    }

    else if ([v10 isEqualToString:@"☻"])
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if ([v10 length] && objc_msgSend(v10, "length") < v23)
    {
      v21 = 6;
    }

    else
    {
      v24 = v10;
      if ([v24 length])
      {
        v21 = 7;
      }

      else
      {
        v25 = v8;

        v21 = 4;
        v24 = v25;
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v6;
      v26 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v26)
      {
        v27 = v26;
        v34 = v6;
        v35 = v24;
        v28 = *v38;
LABEL_40:
        v29 = 0;
        while (1)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v37 + 1) + 8 * v29);
          v31 = [v5 valueToDelete];
          v32 = [v31 matchesEntry:v30];

          if ((v32 & 1) == 0 && [TIUserDictionaryWord userWord:v30 duplicatesTarget:v8 andShortcut:v35])
          {
            break;
          }

          if (v27 == ++v29)
          {
            v27 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
            if (v27)
            {
              goto LABEL_40;
            }

            v21 = 0;
            break;
          }
        }

        v6 = v34;
        v24 = v35;
      }

      else
      {
        v21 = 0;
      }
    }
  }

LABEL_51:

  return v21;
}

@end