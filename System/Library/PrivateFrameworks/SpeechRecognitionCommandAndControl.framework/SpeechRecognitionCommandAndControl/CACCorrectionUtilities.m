@interface CACCorrectionUtilities
+ (id)_spellingGuessesForString:(id)a3 languageIdentifier:(id)a4;
+ (id)alternativesForString:(id)a3 languageIdentifier:(id)a4;
+ (id)emojiSuggestionsForString:(id)a3;
@end

@implementation CACCorrectionUtilities

+ (id)alternativesForString:(id)a3 languageIdentifier:(id)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  v10 = [a1 _spellingGuessesForString:v8 languageIdentifier:v7];

  [v9 addObjectsFromArray:v10];
  v11 = [v8 localizedUppercaseString];
  LOBYTE(v6) = [v11 isEqualToString:v8];

  if ((v6 & 1) == 0)
  {
    [v9 addObject:v11];
  }

  return v9;
}

+ (id)_spellingGuessesForString:(id)a3 languageIdentifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = +[CACSpeechSystem speechSystem];
  [v8 recognitionSystemRef];
  v9 = RXRecognitionSystemCopyPhoneticNeighborsForText();

  if (![v9 count])
  {
    v10 = objc_opt_new();
    v11 = [v10 guessesForWordRange:0 inString:objc_msgSend(v5 language:{"length"), v5, v6}];
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
    v17 = [v16 stringByReplacingEmojisWithDescriptions:v5];

    if ([v17 length])
    {
      [v9 addObject:v17];
    }
  }

  return v9;
}

+ (id)emojiSuggestionsForString:(id)a3
{
  v3 = a3;
  v4 = +[CACEmojiManager sharedManager];
  v5 = [v4 stringByReplacingEmojisWithDescriptions:v3];

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = +[CACEmojiManager sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__CACCorrectionUtilities_emojiSuggestionsForString___block_invoke;
  v10[3] = &unk_279CECB90;
  v8 = v6;
  v11 = v8;
  [v7 enumerateEmojisInText:v5 skinToneFilter:1 usingBlock:v10];

  return v8;
}

@end