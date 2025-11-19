@interface RKSentenceClassifier_ar_AE
- (id)addSentenceTerminatorQuestion:(id)a3;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_ar_AE

- (id)addSentenceTerminatorQuestion:(id)a3
{
  v4 = a3;
  if ([v4 hasSuffix:@"؟"])
  {
    v8.receiver = self;
    v8.super_class = RKSentenceClassifier_ar_AE;
    v5 = [(RKSentenceClassifier *)&v8 addSentenceTerminatorQuestion:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = RKSentenceClassifier_ar_AE;
    v6 = [(RKSentenceClassifier *)&v9 addSentenceTerminatorQuestion:v4];

    v5 = [v6 stringByAppendingString:@"؟"];
    v4 = v6;
  }

  return v5;
}

- (void)analyzeSentence
{
  v2.receiver = self;
  v2.super_class = RKSentenceClassifier_ar_AE;
  [(RKSentenceClassifier *)&v2 analyzeSentence];
}

- (id)classifySentence
{
  v8.receiver = self;
  v8.super_class = RKSentenceClassifier_ar_AE;
  v3 = [(RKSentenceClassifier *)&v8 classifySentence];
  if (![v3 sentenceType])
  {
    v4 = [(RKSentenceClassifier *)self interrogatives];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__RKSentenceClassifier_ar_AE_classifySentence__block_invoke;
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