@interface RKSentenceClassifier_fr_FR
- (id)classifySentence;
- (id)lexicalEntitiesFromString:(id)string;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_fr_FR

- (id)lexicalEntitiesFromString:(id)string
{
  v4 = [string stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  lowercaseString = [v4 lowercaseString];

  v8.receiver = self;
  v8.super_class = RKSentenceClassifier_fr_FR;
  v6 = [(RKSentenceClassifier *)&v8 lexicalEntitiesFromString:lowercaseString];

  return v6;
}

- (void)analyzeSentence
{
  v13[5] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = RKSentenceClassifier_fr_FR;
  [(RKSentenceClassifier *)&v12 analyzeSentence];
  array = [MEMORY[0x277CBEA60] array];
  [(RKSentenceClassifier *)self setInversions:array];

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

  sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__RKSentenceClassifier_fr_FR_analyzeSentence__block_invoke;
  v11[3] = &unk_279B0FDC0;
  v11[4] = v8;
  v11[5] = self;
  [sentenceEntities enumerateObjectsUsingBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)classifySentence
{
  v35.receiver = self;
  v35.super_class = RKSentenceClassifier_fr_FR;
  classifySentence = [(RKSentenceClassifier *)&v35 classifySentence];
  if (![classifySentence sentenceType])
  {
    sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
    if ([sentenceEntities count])
    {
      sentenceEntities2 = [(RKSentenceClassifier *)self sentenceEntities];
      v6 = [sentenceEntities2 objectAtIndexedSubscript:0];
      word = [v6 word];
      if (word)
      {
        v8 = word;
        sentenceEntities3 = [(RKSentenceClassifier *)self sentenceEntities];
        v10 = [sentenceEntities3 objectAtIndexedSubscript:0];
        word2 = [v10 word];
        v12 = [&unk_2874E6AF0 containsObject:word2];

        if (v12)
        {
          [classifySentence setSentenceType:8];
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    interrogatives = [(RKSentenceClassifier *)self interrogatives];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __46__RKSentenceClassifier_fr_FR_classifySentence__block_invoke;
    v33[3] = &unk_279B0FDE8;
    v33[4] = self;
    v34 = classifySentence;
    [interrogatives enumerateObjectsUsingBlock:v33];
  }

LABEL_9:
  if (![classifySentence sentenceType])
  {
    inversions = [(RKSentenceClassifier *)self inversions];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__RKSentenceClassifier_fr_FR_classifySentence__block_invoke_2;
    v31[3] = &unk_279B0FE10;
    v32 = classifySentence;
    [inversions enumerateObjectsUsingBlock:v31];
  }

  sentenceString = [(RKSentenceClassifier *)self sentenceString];
  lowercaseString = [sentenceString lowercaseString];

  if ([classifySentence sentenceType] && objc_msgSend(lowercaseString, "containsString:", @"comment"))
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(lemma == 'appeler') || (lemma == 'appelles') || (lemma == \"s'appeler\""];
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(lemma == 'dire')"];
    if (([lowercaseString isEqualToString:@"comment?"] & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", @"comment!") & 1) == 0)
    {
      sentenceEntities4 = [(RKSentenceClassifier *)self sentenceEntities];
      v26 = [sentenceEntities4 filteredArrayUsingPredicate:v17];
      v27 = [v26 count];

      if (v27)
      {
        v19 = 9;
        goto LABEL_16;
      }

      sentenceEntities5 = [(RKSentenceClassifier *)self sentenceEntities];
      v29 = [sentenceEntities5 filteredArrayUsingPredicate:v18];
      v30 = [v29 count];

      if (!v30 && ![RKUtilities prefixInArray:lowercaseString withArray:&unk_2874E6B20]&& (![RKUtilities prefixInArray:lowercaseString withArray:&unk_2874E6B38]|| ![RKUtilities suffixInArray:lowercaseString withArray:&unk_2874E6B50]&& ![RKUtilities tokenInArray:lowercaseString withArray:&unk_2874E6B08]) && ![RKUtilities tokenInArray:lowercaseString withArray:&unk_2874E6B68])
      {
        goto LABEL_17;
      }
    }

    v19 = 8;
LABEL_16:
    [classifySentence setSentenceType:v19];
LABEL_17:
  }

  if ([classifySentence sentenceType] == 11)
  {
    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"partOfSpeech == %@ &&(word == 't\\'' || string == 'tu')", *MEMORY[0x277CCA3C8]];
    sentenceEntities6 = [(RKSentenceClassifier *)self sentenceEntities];
    v22 = [sentenceEntities6 filteredArrayUsingPredicate:v20];
    v23 = [v22 count];

    if (v23)
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