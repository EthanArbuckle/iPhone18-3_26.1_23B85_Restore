@interface RKSentenceClassifier_ar_AE
- (id)addSentenceTerminatorQuestion:(id)question;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_ar_AE

- (id)addSentenceTerminatorQuestion:(id)question
{
  questionCopy = question;
  if ([questionCopy hasSuffix:@"؟"])
  {
    v8.receiver = self;
    v8.super_class = RKSentenceClassifier_ar_AE;
    v5 = [(RKSentenceClassifier *)&v8 addSentenceTerminatorQuestion:questionCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = RKSentenceClassifier_ar_AE;
    v6 = [(RKSentenceClassifier *)&v9 addSentenceTerminatorQuestion:questionCopy];

    v5 = [v6 stringByAppendingString:@"؟"];
    questionCopy = v6;
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
  classifySentence = [(RKSentenceClassifier *)&v8 classifySentence];
  if (![classifySentence sentenceType])
  {
    interrogatives = [(RKSentenceClassifier *)self interrogatives];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__RKSentenceClassifier_ar_AE_classifySentence__block_invoke;
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