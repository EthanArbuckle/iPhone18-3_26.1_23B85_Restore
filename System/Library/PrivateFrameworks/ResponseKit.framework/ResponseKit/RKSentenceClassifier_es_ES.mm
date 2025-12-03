@interface RKSentenceClassifier_es_ES
- (id)addSentenceTerminatorQuestion:(id)question;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_es_ES

- (id)addSentenceTerminatorQuestion:(id)question
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = RKSentenceClassifier_es_ES;
  v4 = [(RKSentenceClassifier *)&v7 addSentenceTerminatorQuestion:question];
  v5 = [v3 stringWithFormat:@"¿%@?", v4];

  return v5;
}

- (void)analyzeSentence
{
  v2.receiver = self;
  v2.super_class = RKSentenceClassifier_es_ES;
  [(RKSentenceClassifier *)&v2 analyzeSentence];
}

- (id)classifySentence
{
  v8.receiver = self;
  v8.super_class = RKSentenceClassifier_es_ES;
  classifySentence = [(RKSentenceClassifier *)&v8 classifySentence];
  if (![classifySentence sentenceType])
  {
    interrogatives = [(RKSentenceClassifier *)self interrogatives];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__RKSentenceClassifier_es_ES_classifySentence__block_invoke;
    v6[3] = &unk_279B0FD90;
    v7 = classifySentence;
    [interrogatives enumerateObjectsUsingBlock:v6];
  }

  if (![classifySentence sentenceType] && -[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [classifySentence setSentenceType:1];
  }

  return classifySentence;
}

@end