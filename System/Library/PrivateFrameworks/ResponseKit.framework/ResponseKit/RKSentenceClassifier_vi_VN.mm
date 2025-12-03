@interface RKSentenceClassifier_vi_VN
- (id)addSentenceTerminatorQuestion:(id)question;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_vi_VN

- (id)addSentenceTerminatorQuestion:(id)question
{
  v6.receiver = self;
  v6.super_class = RKSentenceClassifier_vi_VN;
  v3 = [(RKSentenceClassifier *)&v6 addSentenceTerminatorQuestion:question];
  v4 = [v3 stringByAppendingString:@"?"];

  return v4;
}

- (void)analyzeSentence
{
  v2.receiver = self;
  v2.super_class = RKSentenceClassifier_vi_VN;
  [(RKSentenceClassifier *)&v2 analyzeSentence];
}

- (id)classifySentence
{
  v12.receiver = self;
  v12.super_class = RKSentenceClassifier_vi_VN;
  classifySentence = [(RKSentenceClassifier *)&v12 classifySentence];
  if (![classifySentence sentenceType])
  {
    interrogatives = [(RKSentenceClassifier *)self interrogatives];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__RKSentenceClassifier_vi_VN_classifySentence__block_invoke;
    v10[3] = &unk_279B0FD90;
    v11 = classifySentence;
    [interrogatives enumerateObjectsUsingBlock:v10];
  }

  if ([classifySentence sentenceType] == 11)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"word == 'bạn'"];
    sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
    v7 = [sentenceEntities filteredArrayUsingPredicate:v5];
    v8 = [v7 count];

    if (v8)
    {
      [classifySentence setSentenceType:12];
    }
  }

  if (![classifySentence sentenceType] && -[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [classifySentence setSentenceType:1];
  }

  return classifySentence;
}

@end