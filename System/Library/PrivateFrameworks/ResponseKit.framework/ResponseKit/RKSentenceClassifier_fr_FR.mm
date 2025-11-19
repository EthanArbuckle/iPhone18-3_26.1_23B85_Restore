@interface RKSentenceClassifier_fr_FR
- (id)classifySentence;
- (id)lexicalEntitiesFromString:(id)a3;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_fr_FR

- (id)lexicalEntitiesFromString:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  v5 = [v4 lowercaseString];

  v8.receiver = self;
  v8.super_class = RKSentenceClassifier_fr_FR;
  v6 = [(RKSentenceClassifier *)&v8 lexicalEntitiesFromString:v5];

  return v6;
}

- (void)analyzeSentence
{
  v13[5] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = RKSentenceClassifier_fr_FR;
  [(RKSentenceClassifier *)&v12 analyzeSentence];
  v3 = [MEMORY[0x277CBEA60] array];
  [(RKSentenceClassifier *)self setInversions:v3];

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
  v11[2] = __45__RKSentenceClassifier_fr_FR_analyzeSentence__block_invoke;
  v11[3] = &unk_279B0FDC0;
  v11[4] = v8;
  v11[5] = self;
  [v9 enumerateObjectsUsingBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)classifySentence
{
  v35.receiver = self;
  v35.super_class = RKSentenceClassifier_fr_FR;
  v3 = [(RKSentenceClassifier *)&v35 classifySentence];
  if (![v3 sentenceType])
  {
    v4 = [(RKSentenceClassifier *)self sentenceEntities];
    if ([v4 count])
    {
      v5 = [(RKSentenceClassifier *)self sentenceEntities];
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 word];
      if (v7)
      {
        v8 = v7;
        v9 = [(RKSentenceClassifier *)self sentenceEntities];
        v10 = [v9 objectAtIndexedSubscript:0];
        v11 = [v10 word];
        v12 = [&unk_2874E6AF0 containsObject:v11];

        if (v12)
        {
          [v3 setSentenceType:8];
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    v13 = [(RKSentenceClassifier *)self interrogatives];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __46__RKSentenceClassifier_fr_FR_classifySentence__block_invoke;
    v33[3] = &unk_279B0FDE8;
    v33[4] = self;
    v34 = v3;
    [v13 enumerateObjectsUsingBlock:v33];
  }

LABEL_9:
  if (![v3 sentenceType])
  {
    v14 = [(RKSentenceClassifier *)self inversions];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__RKSentenceClassifier_fr_FR_classifySentence__block_invoke_2;
    v31[3] = &unk_279B0FE10;
    v32 = v3;
    [v14 enumerateObjectsUsingBlock:v31];
  }

  v15 = [(RKSentenceClassifier *)self sentenceString];
  v16 = [v15 lowercaseString];

  if ([v3 sentenceType] && objc_msgSend(v16, "containsString:", @"comment"))
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(lemma == 'appeler') || (lemma == 'appelles') || (lemma == \"s'appeler\""];
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(lemma == 'dire')"];
    if (([v16 isEqualToString:@"comment?"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"comment!") & 1) == 0)
    {
      v25 = [(RKSentenceClassifier *)self sentenceEntities];
      v26 = [v25 filteredArrayUsingPredicate:v17];
      v27 = [v26 count];

      if (v27)
      {
        v19 = 9;
        goto LABEL_16;
      }

      v28 = [(RKSentenceClassifier *)self sentenceEntities];
      v29 = [v28 filteredArrayUsingPredicate:v18];
      v30 = [v29 count];

      if (!v30 && ![RKUtilities prefixInArray:v16 withArray:&unk_2874E6B20]&& (![RKUtilities prefixInArray:v16 withArray:&unk_2874E6B38]|| ![RKUtilities suffixInArray:v16 withArray:&unk_2874E6B50]&& ![RKUtilities tokenInArray:v16 withArray:&unk_2874E6B08]) && ![RKUtilities tokenInArray:v16 withArray:&unk_2874E6B68])
      {
        goto LABEL_17;
      }
    }

    v19 = 8;
LABEL_16:
    [v3 setSentenceType:v19];
LABEL_17:
  }

  if ([v3 sentenceType] == 11)
  {
    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"partOfSpeech == %@ &&(word == 't\\'' || string == 'tu')", *MEMORY[0x277CCA3C8]];
    v21 = [(RKSentenceClassifier *)self sentenceEntities];
    v22 = [v21 filteredArrayUsingPredicate:v20];
    v23 = [v22 count];

    if (v23)
    {
      [v3 setSentenceType:12];
    }
  }

  if (![v3 sentenceType] && -[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [v3 setSentenceType:1];
  }

  return v3;
}

@end