@interface RKSentenceClassifier_ms_MY
- (id)addSentenceTerminatorQuestion:(id)question;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_ms_MY

- (id)addSentenceTerminatorQuestion:(id)question
{
  v6.receiver = self;
  v6.super_class = RKSentenceClassifier_ms_MY;
  v3 = [(RKSentenceClassifier *)&v6 addSentenceTerminatorQuestion:question];
  v4 = [v3 stringByAppendingString:@"?"];

  return v4;
}

- (void)analyzeSentence
{
  v2.receiver = self;
  v2.super_class = RKSentenceClassifier_ms_MY;
  [(RKSentenceClassifier *)&v2 analyzeSentence];
}

- (id)classifySentence
{
  v18.receiver = self;
  v18.super_class = RKSentenceClassifier_ms_MY;
  classifySentence = [(RKSentenceClassifier *)&v18 classifySentence];
  if (![classifySentence sentenceType])
  {
    interrogatives = [(RKSentenceClassifier *)self interrogatives];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__RKSentenceClassifier_ms_MY_classifySentence__block_invoke;
    v16[3] = &unk_279B0FD90;
    v17 = classifySentence;
    [interrogatives enumerateObjectsUsingBlock:v16];
  }

  if ([classifySentence sentenceType] == 2)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"word == 'boleh'"];
    sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
    v7 = [sentenceEntities filteredArrayUsingPredicate:v5];
    v8 = [v7 count];

    if (v8)
    {
      [classifySentence setSentenceType:4];
    }
  }

  if ([classifySentence sentenceType] == 11)
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"word == 'anda'"];
    sentenceEntities2 = [(RKSentenceClassifier *)self sentenceEntities];
    v11 = [sentenceEntities2 filteredArrayUsingPredicate:v9];
    v12 = [v11 count];

    if (v12)
    {
      [classifySentence setSentenceType:12];
    }
  }

  if (![classifySentence sentenceType])
  {
    appreciations = [(RKSentenceClassifier *)self appreciations];
    v14 = [appreciations count];

    if (v14)
    {
      [classifySentence setSentenceType:34];
    }
  }

  if (![classifySentence sentenceType] && -[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [classifySentence setSentenceType:1];
  }

  return classifySentence;
}

@end