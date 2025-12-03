@interface SiriSharedUIUserUtteranceEditingDataManager
- (SiriSharedUIUserUtteranceEditingDataManager)initWithUserUtterance:(id)utterance backingAceObjectRefId:(id)id;
- (id)attributedStringAtIndex:(int64_t)index;
- (id)selectionResultsForAlternateTextAtIndex:(int64_t)index;
- (id)selectionResultsForEditedText:(id)text;
- (void)_createAlternativeDisplayStringsAndMap;
@end

@implementation SiriSharedUIUserUtteranceEditingDataManager

- (SiriSharedUIUserUtteranceEditingDataManager)initWithUserUtterance:(id)utterance backingAceObjectRefId:(id)id
{
  utteranceCopy = utterance;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = SiriSharedUIUserUtteranceEditingDataManager;
  v9 = [(SiriSharedUIUserUtteranceEditingDataManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userUtterance, utterance);
    objc_storeStrong(&v10->_refId, id);
    [(SiriSharedUIUserUtteranceEditingDataManager *)v10 _createAlternativeDisplayStringsAndMap];
  }

  return v10;
}

- (void)_createAlternativeDisplayStringsAndMap
{
  v76[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  userSelectionResultsMap = self->_userSelectionResultsMap;
  self->_userSelectionResultsMap = v3;

  v75 = *MEMORY[0x277D740C0];
  v5 = v75;
  labelColor = [MEMORY[0x277D75348] labelColor];
  v76[0] = labelColor;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];

  v73 = v5;
  selfCopy = self;
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v74 = secondaryLabelColor;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];

  allRecognitionStringsAndScores = [(AFUserUtterance *)self->_userUtterance allRecognitionStringsAndScores];
  v11 = [allRecognitionStringsAndScores keysSortedByValueUsingComparator:&__block_literal_global_0];
  array = [MEMORY[0x277CBEB18] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v62;
    v54 = *MEMORY[0x277CEF120];
    v47 = *MEMORY[0x277CEF118];
    v46 = *MEMORY[0x277CEF128];
    v44 = *MEMORY[0x277D48840];
    v45 = *MEMORY[0x277D48848];
    *&v13 = 136315650;
    v43 = v13;
    v48 = *v62;
    v49 = allRecognitionStringsAndScores;
    do
    {
      v16 = 0;
      v51 = v14;
      do
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v61 + 1) + 8 * v16);
        v18 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v66 = "[SiriSharedUIUserUtteranceEditingDataManager _createAlternativeDisplayStringsAndMap]";
          v67 = 2112;
          v68 = v17;
          _os_log_impl(&dword_21E3EB000, v18, OS_LOG_TYPE_DEFAULT, "%s #compact: filtering alternative:%@", buf, 0x16u);
        }

        v19 = [MEMORY[0x277D61B38] string:v17 isSameAsUserUtterance:{selfCopy->_userUtterance, v43}];
        v20 = [allRecognitionStringsAndScores objectForKey:v17];
        v21 = [v20 objectForKey:v54];
        v22 = v21;
        if ((v19 & 1) == 0 && v21)
        {
          v56 = [v20 objectForKey:v47];
          v55 = [v20 objectForKey:v46];
          v23 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v17 attributes:v50];
          v24 = selfCopy;
          v25 = -[AFUserUtterance rangeListOfDifferingTextFromUtteranceAtIndex:comparedToBaseUtteranceAtIndex:](selfCopy->_userUtterance, "rangeListOfDifferingTextFromUtteranceAtIndex:comparedToBaseUtteranceAtIndex:", [v22 integerValue], 0);
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v26 = [v25 countByEnumeratingWithState:&v57 objects:v71 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v58;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v58 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                rangeValue = [*(*(&v57 + 1) + 8 * i) rangeValue];
                [v23 setAttributes:v7 range:{rangeValue, v31}];
              }

              v27 = [v25 countByEnumeratingWithState:&v57 objects:v71 count:16];
            }

            while (v27);
          }

          [(NSArray *)array addObject:v23];
          v32 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            v33 = MEMORY[0x277CCABB0];
            v34 = v32;
            v35 = [v33 numberWithUnsignedInteger:{-[NSArray count](array, "count") - 1}];
            *buf = v43;
            v66 = "[SiriSharedUIUserUtteranceEditingDataManager _createAlternativeDisplayStringsAndMap]";
            v67 = 2112;
            v68 = v23;
            v69 = 2112;
            v70 = v35;
            _os_log_impl(&dword_21E3EB000, v34, OS_LOG_TYPE_DEFAULT, "%s #compact: added utteranceToDisplay: %@ atIndex:%@", buf, 0x20u);
          }

          v36 = objc_alloc_init(MEMORY[0x277CEF4F8]);
          [v36 setOriginalRank:v22];
          [v36 setOriginalScore:v56];
          integerValue = [v55 integerValue];
          v38 = v45;
          if (integerValue == 2)
          {
            v24->_clientAlternativePresented = 1;
            v38 = v44;
          }

          [v36 setUtteranceSource:v38];
          bestTextInterpretation = [(AFUserUtterance *)v24->_userUtterance bestTextInterpretation];
          [v36 setPreviousUtterance:bestTextInterpretation];

          v40 = v24->_userSelectionResultsMap;
          string = [v23 string];
          [(NSMutableDictionary *)v40 setValue:v36 forKey:string];

          selfCopy = v24;
          v15 = v48;
          allRecognitionStringsAndScores = v49;
          v14 = v51;
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v14);
  }

  alternativeDisplayStrings = selfCopy->_alternativeDisplayStrings;
  selfCopy->_alternativeDisplayStrings = array;
}

uint64_t __85__SiriSharedUIUserUtteranceEditingDataManager__createAlternativeDisplayStringsAndMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277CEF120];
  v5 = a3;
  v6 = [a2 objectForKey:v4];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKey:v4];

  v9 = [v8 integerValue];
  if (v7 < v9)
  {
    return -1;
  }

  else
  {
    return v7 > v9;
  }
}

- (id)selectionResultsForAlternateTextAtIndex:(int64_t)index
{
  if ([(NSArray *)self->_alternativeDisplayStrings count]<= index)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_alternativeDisplayStrings objectAtIndex:index];
    string = [v5 string];

    v7 = [(NSMutableDictionary *)self->_userSelectionResultsMap objectForKey:string];
    [(SiriSharedUIUserUtteranceEditingDataManager *)self _updateSelectionResults:v7 interactionId:self->_refId];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_clientAlternativePresented];
    [v7 setOnDeviceUtterancesPresent:v8];
  }

  return v7;
}

- (id)selectionResultsForEditedText:(id)text
{
  v4 = objc_alloc_init(MEMORY[0x277CEF4F8]);
  [(SiriSharedUIUserUtteranceEditingDataManager *)self _updateSelectionResults:v4 interactionId:self->_refId];
  [v4 setUtteranceSource:*MEMORY[0x277D48850]];

  return v4;
}

- (id)attributedStringAtIndex:(int64_t)index
{
  if ([(NSArray *)self->_alternativeDisplayStrings count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_alternativeDisplayStrings objectAtIndex:index];
  }

  return v5;
}

@end