@interface TIUserDictionaryWord
+ (BOOL)userWord:(id)word duplicatesTarget:(id)target andShortcut:(id)shortcut;
+ (int64_t)validateTransaction:(id)transaction existingEntries:(id)entries;
@end

@implementation TIUserDictionaryWord

+ (BOOL)userWord:(id)word duplicatesTarget:(id)target andShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  targetCopy = target;
  wordCopy = word;
  phrase = [wordCopy phrase];
  v11 = [targetCopy isEqualToString:phrase];

  shortcut = [wordCopy shortcut];
  if ([shortcut length])
  {
    [wordCopy shortcut];
  }

  else
  {
    [wordCopy phrase];
  }
  v13 = ;

  v14 = [shortcutCopy compare:v13 options:1];
  return ((v14 != 0) ^ ((v14 != 0) | v11)) & 1;
}

+ (int64_t)validateTransaction:(id)transaction existingEntries:(id)entries
{
  v42 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  entriesCopy = entries;
  valueToInsert = [transactionCopy valueToInsert];
  phrase = [valueToInsert phrase];

  valueToInsert2 = [transactionCopy valueToInsert];
  shortcut = [valueToInsert2 shortcut];

  v11 = [phrase length];
  _containsIdeographicCharacters = [phrase _containsIdeographicCharacters];
  if (!v11)
  {
    v21 = 1;
    goto LABEL_51;
  }

  v13 = _containsIdeographicCharacters;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v15 = [phrase stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v16 = [v15 length];

  if (!v16)
  {
    v21 = 2;
    goto LABEL_51;
  }

  if ([shortcut length])
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

  if (shortcut)
  {
    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v20 = [shortcut rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet2];

    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 5;
      goto LABEL_51;
    }
  }

  if ([shortcut _containsEmoji])
  {
    v21 = 9;
    goto LABEL_51;
  }

  _containsCJKSymbolsAndPunctuation = [shortcut _containsCJKSymbolsAndPunctuation];
  if (((_containsCJKSymbolsAndPunctuation ^ 1) & v13) == 1)
  {
    if (![shortcut length])
    {
      v21 = 11;
      goto LABEL_51;
    }
  }

  else
  {
    if (_containsCJKSymbolsAndPunctuation)
    {
      v21 = 10;
    }

    else
    {
      v21 = 0;
    }

    if (_containsCJKSymbolsAndPunctuation)
    {
      goto LABEL_51;
    }
  }

  if ([shortcut _containsIdeographicCharacters])
  {
    v21 = 8;
  }

  else
  {
    if ([shortcut _containsHiraganaKatakanaOrBopomofo])
    {
      v23 = 1;
    }

    else if ([shortcut isEqualToString:@"☻"])
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if ([shortcut length] && objc_msgSend(shortcut, "length") < v23)
    {
      v21 = 6;
    }

    else
    {
      v24 = shortcut;
      if ([v24 length])
      {
        v21 = 7;
      }

      else
      {
        v25 = phrase;

        v21 = 4;
        v24 = v25;
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = entriesCopy;
      v26 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v26)
      {
        v27 = v26;
        v34 = entriesCopy;
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
          valueToDelete = [transactionCopy valueToDelete];
          v32 = [valueToDelete matchesEntry:v30];

          if ((v32 & 1) == 0 && [TIUserDictionaryWord userWord:v30 duplicatesTarget:phrase andShortcut:v35])
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

        entriesCopy = v34;
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