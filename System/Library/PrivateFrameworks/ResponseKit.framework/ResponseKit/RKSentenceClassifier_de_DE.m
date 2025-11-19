@interface RKSentenceClassifier_de_DE
- (id)addSentenceTerminatorQuestion:(id)a3;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_de_DE

- (id)addSentenceTerminatorQuestion:(id)a3
{
  v6.receiver = self;
  v6.super_class = RKSentenceClassifier_de_DE;
  v3 = [(RKSentenceClassifier *)&v6 addSentenceTerminatorQuestion:a3];
  v4 = [v3 stringByAppendingString:@"?"];

  return v4;
}

- (void)analyzeSentence
{
  v13[5] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = RKSentenceClassifier_de_DE;
  [(RKSentenceClassifier *)&v12 analyzeSentence];
  v3 = [MEMORY[0x277CBEA60] array];
  [(RKSentenceClassifier *)self setInversions:v3];

  if (analyzeSentence_onceToken_0 != -1)
  {
    [RKSentenceClassifier_de_DE analyzeSentence];
  }

  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCA3C8];
  v13[0] = *MEMORY[0x277CCA368];
  v13[1] = v5;
  v6 = *MEMORY[0x277CCA3B8];
  v13[2] = *MEMORY[0x277CCA3B0];
  v13[3] = v6;
  v13[4] = *MEMORY[0x277CCA388];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];
  v8 = [v4 setWithArray:v7];

  v9 = [(RKSentenceClassifier *)self sentenceEntities];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__RKSentenceClassifier_de_DE_analyzeSentence__block_invoke_2;
  v11[3] = &unk_279B0FDC0;
  v11[4] = v8;
  v11[5] = self;
  [v9 enumerateObjectsUsingBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)classifySentence
{
  v19.receiver = self;
  v19.super_class = RKSentenceClassifier_de_DE;
  v3 = [(RKSentenceClassifier *)&v19 classifySentence];
  if (![v3 sentenceType])
  {
    v4 = [(RKSentenceClassifier *)self interrogatives];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__RKSentenceClassifier_de_DE_classifySentence__block_invoke;
    v17[3] = &unk_279B0FDE8;
    v17[4] = self;
    v18 = v3;
    [v4 enumerateObjectsUsingBlock:v17];
  }

  if ([v3 sentenceType] == 11)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"partOfSpeech == %@ && ((word == 'du') || (string == 'Sie'))", *MEMORY[0x277CCA3C8]];
    v6 = [(RKSentenceClassifier *)self sentenceEntities];
    v7 = [v6 filteredArrayUsingPredicate:v5];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 12;
LABEL_9:
      [v3 setSentenceType:v9];
    }
  }

  else
  {
    if ([v3 sentenceType] != 21)
    {
      goto LABEL_11;
    }

    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(string LIKE[cd] 'morgen') || (string LIKE[cd] 'morgigen') || (string LIKE[cd] 'gestern') || (string LIKE[cd] 'gestrigen')"];
    v10 = [(RKSentenceClassifier *)self sentenceEntities];
    v11 = [v10 filteredArrayUsingPredicate:v5];
    v12 = [v11 count];

    if (v12)
    {
      v9 = 24;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (![v3 sentenceType])
  {
    v13 = [(RKSentenceClassifier *)self inversions];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__RKSentenceClassifier_de_DE_classifySentence__block_invoke_2;
    v15[3] = &unk_279B10370;
    v15[4] = self;
    v16 = v3;
    [v13 enumerateObjectsUsingBlock:v15];
  }

  if (![v3 sentenceType] && -[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [v3 setSentenceType:1];
  }

  return v3;
}

@end