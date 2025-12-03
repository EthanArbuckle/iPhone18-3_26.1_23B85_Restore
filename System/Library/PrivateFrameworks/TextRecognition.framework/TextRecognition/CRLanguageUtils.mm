@interface CRLanguageUtils
+ (_LXLexicon)createDynamicLexicon:(id)lexicon forLocale:(id)locale error:(id *)error;
+ (_LXLexicon)createDynamicLexiconForLocale:(id)locale error:(id *)error;
@end

@implementation CRLanguageUtils

+ (_LXLexicon)createDynamicLexicon:(id)lexicon forLocale:(id)locale error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  lexiconCopy = lexicon;
  v21 = 0;
  v8 = [CRLanguageUtils createDynamicLexiconForLocale:locale error:&v21];
  v9 = v21;
  if (v9)
  {
    v10 = CROSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_ERROR, "Unable to create custom lexicon: %@", buf, 0xCu);
    }

    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  else if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = lexiconCopy;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (LXLexiconAdd())
          {
            LXLexiconIncrementUsageCount();
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }

  return v8;
}

+ (_LXLexicon)createDynamicLexiconForLocale:(id)locale error:(id *)error
{
  v11[2] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v6 = *MEMORY[0x1E69ABFE8];
  v10[0] = *MEMORY[0x1E69ABFF8];
  v10[1] = v6;
  v11[0] = @"CR-Custom-Lexicon";
  v11[1] = localeCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  Mutable = LXLexiconCreateMutable();
  if (error)
  {
    *error = 0;
  }

  return Mutable;
}

@end