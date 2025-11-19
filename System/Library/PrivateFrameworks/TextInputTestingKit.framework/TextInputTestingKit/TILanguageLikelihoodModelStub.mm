@interface TILanguageLikelihoodModelStub
- (unint64_t)emojiUsageCountForApp:(id)a3 lastEmojiCountUpdateTime:(double *)a4;
- (void)priorProbabilityForLanguages:(id)a3 recipient:(id)a4 handler:(id)a5;
@end

@implementation TILanguageLikelihoodModelStub

- (unint64_t)emojiUsageCountForApp:(id)a3 lastEmojiCountUpdateTime:(double *)a4
{
  if (a4)
  {
    [(TILanguageLikelihoodModelStub *)self emojiLastUsageTime];
    *a4 = v6;
  }

  return [(TILanguageLikelihoodModelStub *)self emojiUsageCount];
}

- (void)priorProbabilityForLanguages:(id)a3 recipient:(id)a4 handler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v19 = 0;
  v8 = [v6 count];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    v13 = 1.0 / v8;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v16 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v7[2](v7, *(*(&v15 + 1) + 8 * v14), &v19, v13);
      if (v19)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end