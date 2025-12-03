@interface TILanguageLikelihoodModelStub
- (unint64_t)emojiUsageCountForApp:(id)app lastEmojiCountUpdateTime:(double *)time;
- (void)priorProbabilityForLanguages:(id)languages recipient:(id)recipient handler:(id)handler;
@end

@implementation TILanguageLikelihoodModelStub

- (unint64_t)emojiUsageCountForApp:(id)app lastEmojiCountUpdateTime:(double *)time
{
  if (time)
  {
    [(TILanguageLikelihoodModelStub *)self emojiLastUsageTime];
    *time = v6;
  }

  return [(TILanguageLikelihoodModelStub *)self emojiUsageCount];
}

- (void)priorProbabilityForLanguages:(id)languages recipient:(id)recipient handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  handlerCopy = handler;
  v19 = 0;
  v8 = [languagesCopy count];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = languagesCopy;
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

      handlerCopy[2](handlerCopy, *(*(&v15 + 1) + 8 * v14), &v19, v13);
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