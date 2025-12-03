@interface RKSentenceClassifier_en_US
+ (id)preProcessTextMessageForLinguisticTagger:(id)tagger;
- (id)addSentenceTerminatorQuestion:(id)question;
- (id)classifySentence;
- (void)analyzeSentence;
@end

@implementation RKSentenceClassifier_en_US

+ (id)preProcessTextMessageForLinguisticTagger:(id)tagger
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAE8];
  taggerCopy = tagger;
  v5 = [v3 alloc];
  v19[0] = *MEMORY[0x277CCA3E0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v5 initWithTagSchemes:v6 options:6];

  [v7 setString:taggerCopy];
  v8 = [taggerCopy mutableCopy];

  v9 = [v8 length];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__RKSentenceClassifier_en_US_preProcessTextMessageForLinguisticTagger___block_invoke;
  v16[3] = &unk_279B102B0;
  v17 = v7;
  v10 = v8;
  v18 = v10;
  v11 = v7;
  [v10 enumerateSubstringsInRange:0 options:v9 usingBlock:{259, v16}];
  v12 = v18;
  v13 = v10;

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)addSentenceTerminatorQuestion:(id)question
{
  v6.receiver = self;
  v6.super_class = RKSentenceClassifier_en_US;
  v3 = [(RKSentenceClassifier *)&v6 addSentenceTerminatorQuestion:question];
  v4 = [v3 stringByAppendingString:@"?"];

  return v4;
}

- (void)analyzeSentence
{
  v15[5] = *MEMORY[0x277D85DE8];
  sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
  [sentenceEntities enumerateObjectsUsingBlock:&__block_literal_global_3];

  v14.receiver = self;
  v14.super_class = RKSentenceClassifier_en_US;
  [(RKSentenceClassifier *)&v14 analyzeSentence];
  array = [MEMORY[0x277CBEA60] array];
  [(RKSentenceClassifier *)self setInversions:array];

  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874E6EE0];
  v6 = MEMORY[0x277CBEB98];
  v7 = *MEMORY[0x277CCA3C8];
  v15[0] = *MEMORY[0x277CCA368];
  v15[1] = v7;
  v8 = *MEMORY[0x277CCA3B8];
  v15[2] = *MEMORY[0x277CCA3B0];
  v15[3] = v8;
  v15[4] = *MEMORY[0x277CCA388];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
  v10 = [v6 setWithArray:v9];

  sentenceEntities2 = [(RKSentenceClassifier *)self sentenceEntities];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__RKSentenceClassifier_en_US_analyzeSentence__block_invoke_2;
  v13[3] = &unk_279B102F8;
  v13[4] = v10;
  v13[5] = self;
  v13[6] = v5;
  [sentenceEntities2 enumerateObjectsUsingBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)classifySentence
{
  v3 = objc_opt_new();
  if (![v3 sentenceType])
  {
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"lemma == 'please'"];
    sentenceEntities = [(RKSentenceClassifier *)self sentenceEntities];
    v6 = [sentenceEntities filteredArrayUsingPredicate:v4];
    v7 = [v6 count];

    if (v7)
    {
      [v3 setSentenceType:4];
    }
  }

  if (![v3 sentenceType])
  {
    v60.receiver = self;
    v60.super_class = RKSentenceClassifier_en_US;
    classifySentence = [(RKSentenceClassifier *)&v60 classifySentence];

    v3 = classifySentence;
  }

  if ([v3 sentenceType] == 6)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v55[3] = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v54 = 0;
    sentenceEntities2 = [(RKSentenceClassifier *)self sentenceEntities];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __46__RKSentenceClassifier_en_US_classifySentence__block_invoke;
    v48[3] = &unk_279B10348;
    v48[4] = self;
    v50 = &v56;
    v51 = v53;
    v10 = v3;
    v49 = v10;
    v52 = v55;
    [sentenceEntities2 enumerateObjectsUsingBlock:v48];

    if (v57[3])
    {
      goto LABEL_10;
    }

    sentenceEntities3 = [(RKSentenceClassifier *)self sentenceEntities];
    alternatives = [(RKSentenceClassifier *)self alternatives];
    alternatives2 = [(RKSentenceClassifier *)self alternatives];
    v14 = [alternatives objectAtIndexedSubscript:{objc_msgSend(alternatives2, "count") - 1}];
    v15 = [sentenceEntities3 objectAtIndexedSubscript:{objc_msgSend(v14, "rangeValue")}];
    word = [v15 word];
    v17 = [word isEqualToString:@"so"];

    if (v17)
    {
LABEL_10:
      [v10 setSentenceType:0];
      [v10 setCustomResponses:0];
    }

    _Block_object_dispose(v53, 8);
    _Block_object_dispose(v55, 8);
    _Block_object_dispose(&v56, 8);
  }

  if (![v3 sentenceType])
  {
    interrogatives = [(RKSentenceClassifier *)self interrogatives];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __46__RKSentenceClassifier_en_US_classifySentence__block_invoke_3;
    v46[3] = &unk_279B0FDE8;
    v46[4] = self;
    v47 = v3;
    [interrogatives enumerateObjectsUsingBlock:v46];
  }

  if ([v3 sentenceType] == 19)
  {
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"partOfSpeech == %@ && lemma == 'time'", *MEMORY[0x277CCA368]];
    sentenceEntities4 = [(RKSentenceClassifier *)self sentenceEntities];
    v21 = [sentenceEntities4 filteredArrayUsingPredicate:v19];
    v22 = [v21 count];

    if (v22)
    {
      v23 = v3;
      v24 = 28;
LABEL_20:
      [v23 setSentenceType:v24];
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if ([v3 sentenceType] != 11)
  {
    if ([v3 sentenceType] != 21)
    {
      goto LABEL_31;
    }

    v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874E6F10];
    v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(lemma == 'tomorrow') || (lemma == 'yesterday')"];
    v29 = *MEMORY[0x277CCA418];
    v30 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(partOfSpeech == %@ && lemma == 'will') || (partOfSpeech == %@ && lemma == 'next')", *MEMORY[0x277CCA418], *MEMORY[0x277CCA3C0]];
    v31 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(partOfSpeech == %@ && string.lowercaseString IN %@) || (partOfSpeech == %@ && lemma == 'last')", v29, v19, *MEMORY[0x277CCA320]];
    sentenceEntities5 = [(RKSentenceClassifier *)self sentenceEntities];
    v33 = [sentenceEntities5 filteredArrayUsingPredicate:v28];
    v34 = [v33 count];

    if (v34)
    {
      v35 = 24;
    }

    else
    {
      sentenceEntities6 = [(RKSentenceClassifier *)self sentenceEntities];
      v37 = [sentenceEntities6 filteredArrayUsingPredicate:v31];
      v38 = [v37 count];

      if (v38)
      {
        v35 = 22;
      }

      else
      {
        sentenceEntities7 = [(RKSentenceClassifier *)self sentenceEntities];
        v40 = [sentenceEntities7 filteredArrayUsingPredicate:v30];
        v41 = [v40 count];

        if (!v41)
        {
LABEL_29:

          goto LABEL_30;
        }

        v35 = 23;
      }
    }

    [v3 setSentenceType:v35];
    goto LABEL_29;
  }

  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"partOfSpeech == %@ && lemma == 'you'", *MEMORY[0x277CCA3C8]];
  sentenceEntities8 = [(RKSentenceClassifier *)self sentenceEntities];
  v26 = [sentenceEntities8 filteredArrayUsingPredicate:v19];
  v27 = [v26 count];

  if (v27)
  {
    v23 = v3;
    v24 = 12;
    goto LABEL_20;
  }

LABEL_30:

LABEL_31:
  if (![v3 sentenceType])
  {
    inversions = [(RKSentenceClassifier *)self inversions];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __46__RKSentenceClassifier_en_US_classifySentence__block_invoke_4;
    v44[3] = &unk_279B10370;
    v44[4] = self;
    v45 = v3;
    [inversions enumerateObjectsUsingBlock:v44];
  }

  if (![v3 sentenceType] && -[RKSentenceClassifier sentenceHasQuestionTerminator](self, "sentenceHasQuestionTerminator"))
  {
    [v3 setSentenceType:1];
  }

  return v3;
}

@end