@interface RKSentenceClassifier_it_IT
- (id)addSentenceTerminatorQuestion:(id)a3;
- (id)classifySentence;
- (id)lexicalEntitiesFromString:(id)a3;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_it_IT

- (id)addSentenceTerminatorQuestion:(id)a3
{
  v6.receiver = self;
  v6.super_class = RKSentenceClassifier_it_IT;
  v3 = [(RKSentenceClassifier *)&v6 addSentenceTerminatorQuestion:a3];
  v4 = [v3 stringByAppendingString:@"?"];

  return v4;
}

- (id)lexicalEntitiesFromString:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  v5 = [v4 lowercaseString];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"cos'è" withString:@"cosa è"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"com'è" withString:@"come è"];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"quant'è" withString:@"quanto è"];

  v11.receiver = self;
  v11.super_class = RKSentenceClassifier_it_IT;
  v9 = [(RKSentenceClassifier *)&v11 lexicalEntitiesFromString:v8];

  return v9;
}

- (void)analyzeSentence
{
  v2.receiver = self;
  v2.super_class = RKSentenceClassifier_it_IT;
  [(RKSentenceClassifier *)&v2 analyzeSentence];
}

- (id)classifySentence
{
  v12.receiver = self;
  v12.super_class = RKSentenceClassifier_it_IT;
  v3 = [(RKSentenceClassifier *)&v12 classifySentence];
  if (![v3 sentenceType])
  {
    v4 = [(RKSentenceClassifier *)self interrogatives];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__RKSentenceClassifier_it_IT_classifySentence__block_invoke;
    v10[3] = &unk_279B0FD90;
    v11 = v3;
    [v4 enumerateObjectsUsingBlock:v10];
  }

  if ([v3 sentenceType] == 11)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"partOfSpeech == %@ && ((word == 'ti') || (word == 'tu'))", *MEMORY[0x277CCA3C8]];
    v6 = [(RKSentenceClassifier *)self sentenceEntities];
    v7 = [v6 filteredArrayUsingPredicate:v5];
    v8 = [v7 count];

    if (v8)
    {
      [v3 setSentenceType:12];
    }
  }

  if (![v3 sentenceType] && -[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [v3 setSentenceType:1];
  }

  return v3;
}

@end