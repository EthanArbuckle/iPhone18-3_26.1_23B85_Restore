@interface RKSentenceClassifier_tr_TR
- (id)addSentenceTerminatorQuestion:(id)question;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_tr_TR

- (id)addSentenceTerminatorQuestion:(id)question
{
  v6.receiver = self;
  v6.super_class = RKSentenceClassifier_tr_TR;
  v3 = [(RKSentenceClassifier *)&v6 addSentenceTerminatorQuestion:question];
  v4 = [v3 stringByAppendingString:@"?"];

  return v4;
}

- (void)analyzeSentence
{
  v2.receiver = self;
  v2.super_class = RKSentenceClassifier_tr_TR;
  [(RKSentenceClassifier *)&v2 analyzeSentence];
}

- (id)classifySentence
{
  v19.receiver = self;
  v19.super_class = RKSentenceClassifier_tr_TR;
  classifySentence = [(RKSentenceClassifier *)&v19 classifySentence];
  if (![classifySentence sentenceType])
  {
    interrogatives = [(RKSentenceClassifier *)self interrogatives];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__RKSentenceClassifier_tr_TR_classifySentence__block_invoke;
    v17[3] = &unk_279B0FD90;
    v18 = classifySentence;
    [interrogatives enumerateObjectsUsingBlock:v17];
  }

  if (![classifySentence sentenceType])
  {
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"m[ıiuü][ ]*\\?" options:1 error:0];
    sentenceString = [(RKSentenceClassifier *)self sentenceString];
    sentenceString2 = [(RKSentenceClassifier *)self sentenceString];
    v8 = [v5 firstMatchInString:sentenceString options:0 range:{0, objc_msgSend(sentenceString2, "length")}];

    if (v8)
    {
      v9 = 3;
    }

    else
    {
      if (![(RKSentenceClassifier *)self sentenceHasQuestionTerminator])
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = 1;
    }

    [classifySentence setSentenceType:v9];
    goto LABEL_9;
  }

LABEL_10:
  if ([classifySentence sentenceType] == 11)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(string == 'neredesin')"];
    sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
    v12 = [sentenceEntities filteredArrayUsingPredicate:v10];
    v13 = [v12 count];

    if (v13)
    {
      [classifySentence setSentenceType:12];
    }
  }

  if (![classifySentence sentenceType] || objc_msgSend(classifySentence, "sentenceType") == 31)
  {
    appreciations = [(RKSentenceClassifier *)self appreciations];
    v15 = [appreciations count];

    if (v15)
    {
      [classifySentence setSentenceType:34];
    }
  }

  return classifySentence;
}

@end