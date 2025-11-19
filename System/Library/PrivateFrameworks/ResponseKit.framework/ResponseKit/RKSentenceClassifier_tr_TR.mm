@interface RKSentenceClassifier_tr_TR
- (id)addSentenceTerminatorQuestion:(id)a3;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_tr_TR

- (id)addSentenceTerminatorQuestion:(id)a3
{
  v6.receiver = self;
  v6.super_class = RKSentenceClassifier_tr_TR;
  v3 = [(RKSentenceClassifier *)&v6 addSentenceTerminatorQuestion:a3];
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
  v3 = [(RKSentenceClassifier *)&v19 classifySentence];
  if (![v3 sentenceType])
  {
    v4 = [(RKSentenceClassifier *)self interrogatives];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__RKSentenceClassifier_tr_TR_classifySentence__block_invoke;
    v17[3] = &unk_279B0FD90;
    v18 = v3;
    [v4 enumerateObjectsUsingBlock:v17];
  }

  if (![v3 sentenceType])
  {
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"m[ıiuü][ ]*\\?" options:1 error:0];
    v6 = [(RKSentenceClassifier *)self sentenceString];
    v7 = [(RKSentenceClassifier *)self sentenceString];
    v8 = [v5 firstMatchInString:v6 options:0 range:{0, objc_msgSend(v7, "length")}];

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

    [v3 setSentenceType:v9];
    goto LABEL_9;
  }

LABEL_10:
  if ([v3 sentenceType] == 11)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(string == 'neredesin')"];
    v11 = [(RKSentenceClassifier *)self sentenceEntities];
    v12 = [v11 filteredArrayUsingPredicate:v10];
    v13 = [v12 count];

    if (v13)
    {
      [v3 setSentenceType:12];
    }
  }

  if (![v3 sentenceType] || objc_msgSend(v3, "sentenceType") == 31)
  {
    v14 = [(RKSentenceClassifier *)self appreciations];
    v15 = [v14 count];

    if (v15)
    {
      [v3 setSentenceType:34];
    }
  }

  return v3;
}

@end