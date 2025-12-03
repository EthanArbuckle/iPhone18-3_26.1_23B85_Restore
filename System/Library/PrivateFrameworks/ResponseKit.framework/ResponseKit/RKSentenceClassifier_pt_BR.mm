@interface RKSentenceClassifier_pt_BR
- (id)addSentenceTerminatorQuestion:(id)question;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_pt_BR

- (id)addSentenceTerminatorQuestion:(id)question
{
  v6.receiver = self;
  v6.super_class = RKSentenceClassifier_pt_BR;
  v3 = [(RKSentenceClassifier *)&v6 addSentenceTerminatorQuestion:question];
  v4 = [v3 stringByAppendingString:@"?"];

  return v4;
}

- (void)analyzeSentence
{
  v2.receiver = self;
  v2.super_class = RKSentenceClassifier_pt_BR;
  [(RKSentenceClassifier *)&v2 analyzeSentence];
}

- (id)classifySentence
{
  v8.receiver = self;
  v8.super_class = RKSentenceClassifier_pt_BR;
  classifySentence = [(RKSentenceClassifier *)&v8 classifySentence];
  if (![classifySentence sentenceType])
  {
    interrogatives = [(RKSentenceClassifier *)self interrogatives];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__RKSentenceClassifier_pt_BR_classifySentence__block_invoke;
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