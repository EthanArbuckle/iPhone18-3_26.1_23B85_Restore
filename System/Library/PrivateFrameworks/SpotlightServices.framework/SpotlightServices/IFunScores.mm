@interface IFunScores
- (IFunScores)initWithSFEngagementSignal:(id)a3;
@end

@implementation IFunScores

- (IFunScores)initWithSFEngagementSignal:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = IFunScores;
  v5 = [(IFunScores *)&v31 init];
  if (v4)
  {
    v6 = [v4 serverScore];
    serverScore = v5->_serverScore;
    v5->_serverScore = v6;

    v8 = [v4 localScore];
    localScore = v5->_localScore;
    v5->_localScore = v8;

    v10 = [v4 domainEngagementScores];
    v11 = [v10 count];

    if (v11)
    {
      v12 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = v4;
      v13 = [v4 domainEngagementScores];
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            if ([v18 domain])
            {
              v19 = [v18 score];

              if (v19)
              {
                v20 = [v18 score];
                v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "domain")}];
                [v12 setObject:v20 forKeyedSubscript:v21];
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      v22 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v12];
      domainScores = v5->_domainScores;
      v5->_domainScores = v22;

      v4 = v26;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

@end