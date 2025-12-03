@interface IFunScores
- (IFunScores)initWithSFEngagementSignal:(id)signal;
@end

@implementation IFunScores

- (IFunScores)initWithSFEngagementSignal:(id)signal
{
  v33 = *MEMORY[0x1E69E9840];
  signalCopy = signal;
  v31.receiver = self;
  v31.super_class = IFunScores;
  v5 = [(IFunScores *)&v31 init];
  if (signalCopy)
  {
    serverScore = [signalCopy serverScore];
    serverScore = v5->_serverScore;
    v5->_serverScore = serverScore;

    localScore = [signalCopy localScore];
    localScore = v5->_localScore;
    v5->_localScore = localScore;

    domainEngagementScores = [signalCopy domainEngagementScores];
    v11 = [domainEngagementScores count];

    if (v11)
    {
      v12 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = signalCopy;
      domainEngagementScores2 = [signalCopy domainEngagementScores];
      v14 = [domainEngagementScores2 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
              objc_enumerationMutation(domainEngagementScores2);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            if ([v18 domain])
            {
              score = [v18 score];

              if (score)
              {
                score2 = [v18 score];
                v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "domain")}];
                [v12 setObject:score2 forKeyedSubscript:v21];
              }
            }
          }

          v15 = [domainEngagementScores2 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      v22 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v12];
      domainScores = v5->_domainScores;
      v5->_domainScores = v22;

      signalCopy = v26;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

@end