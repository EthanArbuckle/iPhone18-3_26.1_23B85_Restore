@interface CACCommandRecognizerCustom
+ (id)customCommandRecognizers;
- (void)_buildLanguageModelUsingCommands;
@end

@implementation CACCommandRecognizerCustom

+ (id)customCommandRecognizers
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = objc_opt_new();
  v2 = objc_opt_new();
  +[CACPreferences sharedPreferences];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v35 = 0u;
  v3 = [v26 enabledCommandIdentifiersForCommandSetIdentifier:@"Custom"];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[CACSpokenCommandCustom alloc] initWithCommandIdentifier:*(*(&v32 + 1) + 8 * i)];
        v9 = v8;
        if (v8)
        {
          v10 = [(CACSpokenCommand *)v8 strings];

          if (v10)
          {
            v11 = [(CACSpokenCommand *)v9 contextEvaluation];
            v12 = [CACSpokenCommand stringFromContextEvaluationDictionary:v11 isCustom:1];

            v13 = [v2 objectForKey:v12];
            if (!v13)
            {
              v13 = objc_opt_new();
              [v2 setObject:v13 forKey:v12];
            }

            [v13 addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v2;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        v20 = [v14 objectForKey:v19];
        v21 = [CACCommandRecognizerCustom alloc];
        v22 = [v20 firstObject];
        v23 = [v22 contextEvaluation];
        v24 = [(CACCommandRecognizer *)v21 initWithCommands:v20 contextEvaluators:v23 builtInLMIdentifiers:0];

        [(CACCommandRecognizer *)v24 setType:v19];
        [v27 addObject:v24];
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  return v27;
}

- (void)_buildLanguageModelUsingCommands
{
  v4.receiver = self;
  v4.super_class = CACCommandRecognizerCustom;
  [(CACCommandRecognizer *)&v4 _buildLanguageModelUsingCommands];
  v3 = [(CACSpeechRecognizer *)self->super._speechRecognizer languageModel];
  [v3 setObject:*MEMORY[0x277CBED28] forAttribute:kCACLanguageModelAttributeCustomCommands];
}

@end