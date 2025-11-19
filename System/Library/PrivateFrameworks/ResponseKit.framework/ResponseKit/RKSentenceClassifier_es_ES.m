@interface RKSentenceClassifier_es_ES
- (id)addSentenceTerminatorQuestion:(id)a3;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_es_ES

- (id)addSentenceTerminatorQuestion:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = RKSentenceClassifier_es_ES;
  v4 = [(RKSentenceClassifier *)&v7 addSentenceTerminatorQuestion:a3];
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
  v3 = [(RKSentenceClassifier *)&v8 classifySentence];
  if (![v3 sentenceType])
  {
    v4 = [(RKSentenceClassifier *)self interrogatives];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__RKSentenceClassifier_es_ES_classifySentence__block_invoke;
    v6[3] = &unk_279B0FD90;
    v7 = v3;
    [v4 enumerateObjectsUsingBlock:v6];
  }

  if (![v3 sentenceType] && -[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [v3 setSentenceType:1];
  }

  return v3;
}

@end