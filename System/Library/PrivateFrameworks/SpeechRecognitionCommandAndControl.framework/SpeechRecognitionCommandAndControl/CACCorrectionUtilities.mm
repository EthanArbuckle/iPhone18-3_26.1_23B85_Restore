@interface CACCorrectionUtilities
+ (id)_spellingGuessesForString:(id)string languageIdentifier:(id)identifier;
+ (id)alternativesForString:(id)string languageIdentifier:(id)identifier;
+ (id)emojiSuggestionsForString:(id)string;
@end

@implementation CACCorrectionUtilities

+ (id)alternativesForString:(id)string languageIdentifier:(id)identifier
{
  v6 = MEMORY[0x277CBEB18];
  identifierCopy = identifier;
  stringCopy = string;
  array = [v6 array];
  v10 = [self _spellingGuessesForString:stringCopy languageIdentifier:identifierCopy];

  [array addObjectsFromArray:v10];
  localizedUppercaseString = [stringCopy localizedUppercaseString];
  LOBYTE(v6) = [localizedUppercaseString isEqualToString:stringCopy];

  if ((v6 & 1) == 0)
  {
    [array addObject:localizedUppercaseString];
  }

  return array;
}

+ (id)_spellingGuessesForString:(id)string languageIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  v8 = +[CACSpeechSystem speechSystem];
  [v8 recognitionSystemRef];
  v9 = RXRecognitionSystemCopyPhoneticNeighborsForText();

  if (![v9 count])
  {
    v10 = objc_opt_new();
    v11 = [v10 guessesForWordRange:0 inString:objc_msgSend(stringCopy language:{"length"), stringCopy, identifierCopy}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v9 addObject:*(*(&v19 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  if (![v9 count])
  {
    v16 = +[CACEmojiManager sharedManager];
    v17 = [v16 stringByReplacingEmojisWithDescriptions:stringCopy];

    if ([v17 length])
    {
      [v9 addObject:v17];
    }
  }

  return v9;
}

+ (id)emojiSuggestionsForString:(id)string
{
  stringCopy = string;
  v4 = +[CACEmojiManager sharedManager];
  v5 = [v4 stringByReplacingEmojisWithDescriptions:stringCopy];

  array = [MEMORY[0x277CBEB18] array];
  v7 = +[CACEmojiManager sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__CACCorrectionUtilities_emojiSuggestionsForString___block_invoke;
  v10[3] = &unk_279CECB90;
  v8 = array;
  v11 = v8;
  [v7 enumerateEmojisInText:v5 skinToneFilter:1 usingBlock:v10];

  return v8;
}

@end