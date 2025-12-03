@interface UIDictationSerializableResults
- (UIDictationSerializableResults)init;
- (UIDictationSerializableResults)initWithArrayOfArrayOfStrings:(id)strings;
- (UIDictationSerializableResults)initWithCoder:(id)coder;
- (UIDictationSerializableResults)initWithDetectedPhrases:(id)phrases multilingualAlternatives:(id)alternatives;
- (UIDictationSerializableResults)initWithPhrases:(id)phrases;
- (id)bestResults;
- (id)bestText;
- (id)bestTextArray;
- (id)bestTextArrayForAlternatives:(id)alternatives;
- (id)bestTextForMultilingualAlternatives;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictationPhraseArray;
- (id)multilingualResultsByLanguageCode;
- (id)secondBestText;
- (id)secondBestTextArray;
- (id)singleLineResult;
- (id)text;
- (id)textArray;
- (id)textArrayForAlternatives:(id)alternatives;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setIndexPathOfInterpretations:(id)interpretations;
- (void)setTransform:(__CFString *)transform;
@end

@implementation UIDictationSerializableResults

- (UIDictationSerializableResults)init
{
  v9.receiver = self;
  v9.super_class = UIDictationSerializableResults;
  v2 = [(UIDictationSerializableResults *)&v9 init];
  v3 = v2;
  if (v2)
  {
    phrases = v2->_phrases;
    v5 = MEMORY[0x1E695E0F0];
    v2->_phrases = MEMORY[0x1E695E0F0];

    v3->_fromKeyboard = 0;
    v3->_transform = 0;
    v3->_useServerCapitalization = 0;
    v3->_allowsAlternatives = !+[UIDictationUtilities _isUsingLargeFormatDictationUI];
    multilingualAlternatives = v3->_multilingualAlternatives;
    v3->_multilingualAlternatives = v5;

    v3->_showMultilingualAlternatives = 0;
    v7 = v3;
  }

  return v3;
}

- (UIDictationSerializableResults)initWithPhrases:(id)phrases
{
  phrasesCopy = phrases;
  v5 = [(UIDictationSerializableResults *)self init];
  if (v5)
  {
    v6 = [phrasesCopy copy];
    phrases = v5->_phrases;
    v5->_phrases = v6;

    v8 = v5;
  }

  return v5;
}

- (UIDictationSerializableResults)initWithDetectedPhrases:(id)phrases multilingualAlternatives:(id)alternatives
{
  phrasesCopy = phrases;
  alternativesCopy = alternatives;
  v8 = [(UIDictationSerializableResults *)self init];
  if (v8)
  {
    v9 = [phrasesCopy copy];
    phrases = v8->_phrases;
    v8->_phrases = v9;

    v11 = [alternativesCopy copy];
    multilingualAlternatives = v8->_multilingualAlternatives;
    v8->_multilingualAlternatives = v11;

    v8->_showMultilingualAlternatives = 1;
    v13 = v8;
  }

  return v8;
}

- (UIDictationSerializableResults)initWithArrayOfArrayOfStrings:(id)strings
{
  stringsCopy = strings;
  v5 = [(UIDictationSerializableResults *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __64__UIDictationSerializableResults_initWithArrayOfArrayOfStrings___block_invoke;
    v15 = &unk_1E7115878;
    v16 = stringsCopy;
    v17 = v6;
    v7 = v6;
    [v16 enumerateObjectsUsingBlock:&v12];
    v8 = [v7 copy];
    phrases = v5->_phrases;
    v5->_phrases = v8;

    v10 = v5;
  }

  return v5;
}

void __64__UIDictationSerializableResults_initWithArrayOfArrayOfStrings___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __64__UIDictationSerializableResults_initWithArrayOfArrayOfStrings___block_invoke_2;
  v18 = &unk_1E7115850;
  v19 = v6;
  v22 = a3;
  v20 = *(a1 + 32);
  v21 = v5;
  v7 = v5;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:&v15];
  v9 = [UIDictationInterpretation alloc];
  v10 = [(UIDictationInterpretation *)v9 initWithTokens:v8 score:1.0, v15, v16, v17, v18];
  v11 = *(a1 + 40);
  v12 = [UIDictationInterpretationGroup alloc];
  v23[0] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v14 = [(UIDictationInterpretationGroup *)v12 initWithInterpretations:v13];
  [v11 addObject:v14];
}

void __64__UIDictationSerializableResults_initWithArrayOfArrayOfStrings___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = [UIDictationScoredToken alloc];
  v7 = *(a1 + 56);
  v8 = v7 + 1 == [*(a1 + 40) count] && a3 + 1 == objc_msgSend(*(a1 + 48), "count");
  v9 = [(UIDictationScoredToken *)v6 initWithText:v10 removeSpaceBefore:(v7 | a3) == 0 removeSpaceAfter:v8 confidenceScore:1.0];
  [v5 addObject:v9];
}

- (UIDictationSerializableResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = UIDictationSerializableResults;
  v5 = [(UIDictationSerializableResults *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"phrases"];
    phrases = v5->_phrases;
    v5->_phrases = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"multilingualAlternatives"];
    multilingualAlternatives = v5->_multilingualAlternatives;
    v5->_multilingualAlternatives = v14;

    v5->_showMultilingualAlternatives = [coderCopy decodeBoolForKey:@"showMultilingualAlternatives"];
    v5->_lowConfidenceAboutLanguageDetection = [coderCopy decodeBoolForKey:@"lowConfidenceAboutLanguageDetection"];
    v5->_fromKeyboard = [coderCopy decodeBoolForKey:@"fromKeyboard"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transform"];
    v17 = [v16 copy];
    v5->_transform = v17;

    v5->_useServerCapitalization = [coderCopy decodeBoolForKey:@"useServerCapitalization"];
    v5->_allowsAlternatives = [coderCopy decodeBoolForKey:@"allowsAlternatives"];
    v5->_isFinalResult = [coderCopy decodeBoolForKey:@"isFinalResult"];
    v5->_addTrailingSpace = [coderCopy decodeBoolForKey:@"addTrailingSpace"];
    v18 = v5;
  }

  return v5;
}

- (void)dealloc
{
  transform = self->_transform;
  if (transform)
  {
    CFRelease(transform);
    self->_transform = 0;
  }

  v4.receiver = self;
  v4.super_class = UIDictationSerializableResults;
  [(UIDictationSerializableResults *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_phrases forKey:@"phrases"];
  [coderCopy encodeObject:self->_multilingualAlternatives forKey:@"multilingualAlternatives"];
  [coderCopy encodeBool:self->_showMultilingualAlternatives forKey:@"showMultilingualAlternatives"];
  [coderCopy encodeBool:self->_lowConfidenceAboutLanguageDetection forKey:@"lowConfidenceAboutLanguageDetection"];
  [coderCopy encodeBool:self->_fromKeyboard forKey:@"fromKeyboard"];
  if (self->_transform)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:self->_transform];
    [coderCopy encodeObject:v4 forKey:@"transform"];
  }

  [coderCopy encodeBool:self->_useServerCapitalization forKey:@"useServerCapitalization"];
  [coderCopy encodeBool:self->_allowsAlternatives forKey:@"allowsAlternatives"];
  [coderCopy encodeBool:self->_isFinalResult forKey:@"isFinalResult"];
  [coderCopy encodeBool:self->_addTrailingSpace forKey:@"addTrailingSpace"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIDictationSerializableResults);
  v5 = [(NSArray *)self->_phrases copy];
  [(UIDictationSerializableResults *)v4 setPhrases:v5];

  v6 = [(NSArray *)self->_multilingualAlternatives copy];
  [(UIDictationSerializableResults *)v4 setMultilingualAlternatives:v6];

  [(UIDictationSerializableResults *)v4 setShowMultilingualAlternatives:self->_showMultilingualAlternatives];
  [(UIDictationSerializableResults *)v4 setLowConfidenceAboutLanguageDetection:self->_lowConfidenceAboutLanguageDetection];
  [(UIDictationSerializableResults *)v4 setFromKeyboard:self->_fromKeyboard];
  transform = self->_transform;
  if (transform)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], transform);
  }

  else
  {
    Copy = 0;
  }

  [(UIDictationSerializableResults *)v4 setTransform:Copy];
  [(UIDictationSerializableResults *)v4 setUseServerCapitalization:self->_useServerCapitalization];
  [(UIDictationSerializableResults *)v4 setAddTrailingSpace:self->_addTrailingSpace];
  v9 = [(NSIndexPath *)self->_indexPathOfInterpretations copy];
  [(UIDictationSerializableResults *)v4 setIndexPathOfInterpretations:v9];

  [(UIDictationSerializableResults *)v4 setIsFinalResult:self->_isFinalResult];
  return v4;
}

- (void)setTransform:(__CFString *)transform
{
  transform = self->_transform;
  if (transform != transform)
  {
    if (transform)
    {
      CFRelease(transform);
    }

    self->_transform = transform;
    if (transform)
    {

      CFRetain(transform);
    }
  }
}

- (void)setIndexPathOfInterpretations:(id)interpretations
{
  interpretationsCopy = interpretations;
  v6 = interpretationsCopy;
  if (interpretationsCopy)
  {
    v7 = [(NSIndexPath *)interpretationsCopy length];
    if (v7 != [(NSArray *)self->_phrases count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIDictationUtilities.m" lineNumber:1838 description:@"Incorrect number of interpretation indexes"];
    }
  }

  indexPathOfInterpretations = self->_indexPathOfInterpretations;
  self->_indexPathOfInterpretations = v6;
}

- (id)text
{
  textArray = [(UIDictationSerializableResults *)self textArray];
  v3 = [textArray componentsJoinedByString:&stru_1EFB14550];

  return v3;
}

- (id)bestText
{
  bestTextArray = [(UIDictationSerializableResults *)self bestTextArray];
  v3 = [bestTextArray componentsJoinedByString:&stru_1EFB14550];

  return v3;
}

- (id)secondBestText
{
  secondBestTextArray = [(UIDictationSerializableResults *)self secondBestTextArray];
  v3 = [secondBestTextArray componentsJoinedByString:&stru_1EFB14550];

  return v3;
}

- (id)multilingualResultsByLanguageCode
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_multilingualAlternatives;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        dominantLanguage = [v9 dominantLanguage];
        [dictionary setObject:v9 forKey:dominantLanguage];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (id)bestTextForMultilingualAlternatives
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_multilingualAlternatives;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        phrases = [v7 phrases];
        v9 = [(UIDictationSerializableResults *)self bestTextArrayForAlternatives:phrases];

        if ([v9 count])
        {
          v10 = [v9 componentsJoinedByString:&stru_1EFB14550];
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = &stru_1EFB14550;
          }

          v24[1] = @"language";
          v25[0] = v12;
          v24[0] = @"text";
          dominantLanguage = [v7 dominantLanguage];
          v14 = dominantLanguage;
          if (dominantLanguage)
          {
            v15 = dominantLanguage;
          }

          else
          {
            v15 = &stru_1EFB14550;
          }

          v25[1] = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
          [v19 addObject:v16];
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  return v19;
}

- (id)textArray
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_fromKeyboard)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  useServerCapitalization = self->_useServerCapitalization;
  v6 = [(NSArray *)self->_phrases count];
  if (v6)
  {
    v7 = v6;
    removeSpaceAfter = 0;
    v9 = 0;
    v20 = v4 | useServerCapitalization;
    v19 = v4 | useServerCapitalization | 4;
    do
    {
      indexPathOfInterpretations = self->_indexPathOfInterpretations;
      if (indexPathOfInterpretations)
      {
        v11 = [(NSIndexPath *)indexPathOfInterpretations indexAtPosition:v9];
      }

      else
      {
        v11 = 0;
      }

      v12 = [(NSArray *)self->_phrases objectAtIndex:v9, v19];
      interpretations = [v12 interpretations];
      v14 = [interpretations objectAtIndex:v11];

      if (v9)
      {
        v15 = v20;
      }

      else
      {
        v15 = v19;
      }

      tokens = [v14 tokens];
      v17 = [UIDictationController serializedInterpretationFromTokens:tokens transform:[(UIDictationSerializableResults *)self transform] capitalization:v15];

      if (v9 && (([v14 removeSpaceBefore] | removeSpaceAfter) & 1) == 0)
      {
        [v3 addObject:@" "];
      }

      [v3 addObject:v17];
      removeSpaceAfter = [v14 removeSpaceAfter];

      ++v9;
    }

    while (v7 != v9);
  }

  if (self->_addTrailingSpace)
  {
    [v3 addObject:@" "];
  }

  return v3;
}

- (id)textArrayForAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_fromKeyboard)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  useServerCapitalization = self->_useServerCapitalization;
  v23 = alternativesCopy;
  v8 = [alternativesCopy count];
  if (v8)
  {
    v9 = v8;
    removeSpaceAfter = 0;
    v11 = 0;
    v22 = v6 | useServerCapitalization;
    v21 = v6 | useServerCapitalization | 4;
    do
    {
      indexPathOfInterpretations = self->_indexPathOfInterpretations;
      if (indexPathOfInterpretations)
      {
        v13 = [(NSIndexPath *)indexPathOfInterpretations indexAtPosition:v11];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v23 objectAtIndex:v11];
      interpretations = [v14 interpretations];
      v16 = [interpretations objectAtIndex:v13];

      if (v11)
      {
        v17 = v22;
      }

      else
      {
        v17 = v21;
      }

      tokens = [v16 tokens];
      v19 = [UIDictationController serializedInterpretationFromTokens:tokens transform:[(UIDictationSerializableResults *)self transform] capitalization:v17];

      if (v11 && (([v16 removeSpaceBefore] | removeSpaceAfter) & 1) == 0)
      {
        [v5 addObject:@" "];
      }

      [v5 addObject:v19];
      removeSpaceAfter = [v16 removeSpaceAfter];

      ++v11;
    }

    while (v9 != v11);
  }

  if (self->_addTrailingSpace)
  {
    [v5 addObject:@" "];
  }

  return v5;
}

- (id)bestTextArray
{
  v3 = self->_indexPathOfInterpretations;
  indexPathOfInterpretations = self->_indexPathOfInterpretations;
  self->_indexPathOfInterpretations = 0;

  textArray = [(UIDictationSerializableResults *)self textArray];
  v6 = self->_indexPathOfInterpretations;
  self->_indexPathOfInterpretations = v3;

  return textArray;
}

- (id)secondBestTextArray
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_fromKeyboard)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  useServerCapitalization = self->_useServerCapitalization;
  v35 = [(NSArray *)self->_phrases count];
  if (v35)
  {
    removeSpaceAfter = 0;
    v32 = 0;
    v7 = 0;
    v34 = v4 | useServerCapitalization;
    v33 = v4 | useServerCapitalization | 4;
    do
    {
      indexPathOfInterpretations = self->_indexPathOfInterpretations;
      if (indexPathOfInterpretations)
      {
        v9 = [(NSIndexPath *)indexPathOfInterpretations indexAtPosition:v7];
      }

      else
      {
        v9 = 0;
      }

      v10 = [(NSArray *)self->_phrases objectAtIndex:v7];
      interpretations = [v10 interpretations];
      v12 = [interpretations count];

      if (v12 < 2)
      {
        goto LABEL_15;
      }

      v13 = 0;
      v14 = 0.0;
      v15 = 1;
      do
      {
        interpretations2 = [v10 interpretations];
        v17 = [interpretations2 objectAtIndex:v15];
        [v17 averageConfidenceScore];
        v19 = v18;

        if (v19 > v14)
        {
          interpretations3 = [v10 interpretations];
          v21 = [interpretations3 objectAtIndex:v15];
          [v21 averageConfidenceScore];
          v14 = v22;

          interpretations4 = [v10 interpretations];
          v24 = [interpretations4 objectAtIndex:v15];

          v13 = v24;
        }

        ++v15;
        interpretations5 = [v10 interpretations];
        v26 = [interpretations5 count];
      }

      while (v15 < v26);
      v32 = 1;
      if (!v13)
      {
LABEL_15:
        interpretations6 = [v10 interpretations];
        v13 = [interpretations6 objectAtIndex:v9];
      }

      if (v7)
      {
        v28 = v34;
      }

      else
      {
        v28 = v33;
      }

      tokens = [v13 tokens];
      v30 = [UIDictationController serializedInterpretationFromTokens:tokens transform:[(UIDictationSerializableResults *)self transform] capitalization:v28];

      if (v7 && (([v13 removeSpaceBefore] | removeSpaceAfter) & 1) == 0)
      {
        [v3 addObject:@" "];
      }

      [v3 addObject:v30];
      removeSpaceAfter = [v13 removeSpaceAfter];

      ++v7;
    }

    while (v7 != v35);
  }

  else
  {
    v32 = 0;
  }

  if (self->_addTrailingSpace)
  {
    [v3 addObject:@" "];
  }

  if ((v32 & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (id)bestTextArrayForAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  if ([alternativesCopy count])
  {
    v5 = self->_indexPathOfInterpretations;
    indexPathOfInterpretations = self->_indexPathOfInterpretations;
    self->_indexPathOfInterpretations = 0;

    v7 = [(UIDictationSerializableResults *)self textArrayForAlternatives:alternativesCopy];
    v8 = self->_indexPathOfInterpretations;
    self->_indexPathOfInterpretations = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)dictationPhraseArray
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = 2;
  if (!self->_fromKeyboard)
  {
    v4 = 0;
  }

  v5 = v4 | self->_useServerCapitalization;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  phrases = self->_phrases;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__UIDictationSerializableResults_dictationPhraseArray__block_invoke;
  v11[3] = &unk_1E71158F0;
  v15 = v5;
  v11[4] = self;
  v13 = v18;
  v7 = array;
  v12 = v7;
  v14 = v16;
  [(NSArray *)phrases enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v7;

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);

  return v9;
}

void __54__UIDictationSerializableResults_dictationPhraseArray__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 40);
  if (v6)
  {
    v7 = [v6 indexAtPosition:a3];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 interpretations];
  v9 = [v8 objectAtIndex:v7];

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = [v9 removeSpaceBefore];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = [v9 removeSpaceBefore];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = [v9 removeSpaceAfter];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = [v9 removeSpaceAfter];
  if (a3)
  {
    v10 = *(a1 + 64);
  }

  else
  {
    v10 = *(a1 + 64) | 4;
  }

  v11 = [v9 tokens];
  v12 = +[UIDictationController serializedInterpretationFromTokens:transform:capitalization:](UIDictationController, "serializedInterpretationFromTokens:transform:capitalization:", v11, [*(a1 + 32) transform], v10);

  v13 = [v5 interpretations];
  if ([v13 count] < 2)
  {

    goto LABEL_11;
  }

  v14 = [*(a1 + 32) allowsAlternatives];

  if (!v14)
  {
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [v5 interpretations];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __54__UIDictationSerializableResults_dictationPhraseArray__block_invoke_2;
  v35[3] = &unk_1E71158A0;
  v38 = &v51;
  v39 = &v47;
  v40 = &v43;
  v41 = v7;
  v17 = *(a1 + 32);
  v37 = &v55;
  v35[4] = v17;
  v42 = v10;
  v18 = v15;
  v36 = v18;
  [v16 enumerateObjectsUsingBlock:v35];

LABEL_12:
  if (*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || (v56[3])
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && *(v56 + 24) == 1 && (v52[3] & 1) == 0)
    {
      if (([v9 removeSpaceBefore] & 1) == 0)
      {
        v19 = [@" " stringByAppendingString:v12];

        v12 = v19;
      }

      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v34[3] = 0;
      v20 = [v5 interpretations];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __54__UIDictationSerializableResults_dictationPhraseArray__block_invoke_3;
      v30 = &unk_1E71158C8;
      v33 = v7;
      v31 = v18;
      v32 = v34;
      [v20 enumerateObjectsUsingBlock:&v27];

      _Block_object_dispose(v34, 8);
    }
  }

  else if (a3)
  {
    v21 = *(a1 + 40);
    v22 = [UIDictationPhrase phraseWithText:@" " alternativeInterpretations:0 style:0];
    [v21 addObject:v22];
  }

  v23 = [UIDictationController sharedInstance:v27];
  v24 = [v23 inputModeOptions];
  v25 = [v24 shouldSupressShowingAlternativesAutomatically];

  v26 = +[UIDictationPhrase phraseWithText:alternativeInterpretations:style:](UIDictationPhrase, "phraseWithText:alternativeInterpretations:style:", v12, v18, [v5 isLowConfidence] & (v25 ^ 1));
  [*(a1 + 40) addObject:v26];
  *(*(*(a1 + 48) + 8) + 24) = *(v48 + 24);
  *(*(*(a1 + 56) + 8) + 24) = *(v44 + 24);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

void __54__UIDictationSerializableResults_dictationPhraseArray__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 80) != a3)
  {
    v5 = a2;
    *(*(*(a1 + 48) + 8) + 24) |= [v5 removeSpaceBefore];
    *(*(*(a1 + 56) + 8) + 24) &= [v5 removeSpaceBefore];
    *(*(*(a1 + 64) + 8) + 24) |= [v5 removeSpaceAfter];
    *(*(*(a1 + 72) + 8) + 24) &= [v5 removeSpaceAfter];
    v6 = [v5 tokens];

    v7 = +[UIDictationController serializedInterpretationFromTokens:transform:capitalization:](UIDictationController, "serializedInterpretationFromTokens:transform:capitalization:", v6, [*(a1 + 32) transform], *(a1 + 88));

    [*(a1 + 40) addObject:v7];
  }
}

void __54__UIDictationSerializableResults_dictationPhraseArray__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 48) != a3)
  {
    if (([a2 removeSpaceBefore] & 1) == 0)
    {
      v4 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 40) + 8) + 24)];
      v5 = *(a1 + 32);
      v6 = [@" " stringByAppendingString:v4];
      [v5 setObject:v6 atIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)bestResults
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  phrases = self->_phrases;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__UIDictationSerializableResults_bestResults__block_invoke;
  v8[3] = &unk_1E7115918;
  v9 = v3;
  v5 = v3;
  [(NSArray *)phrases enumerateObjectsUsingBlock:v8];
  v6 = [[UIDictationSerializableResults alloc] initWithPhrases:v5];
  [(UIDictationSerializableResults *)v6 setFromKeyboard:self->_fromKeyboard];
  [(UIDictationSerializableResults *)v6 setTransform:self->_transform];
  [(UIDictationSerializableResults *)v6 setUseServerCapitalization:self->_useServerCapitalization];

  return v6;
}

void __45__UIDictationSerializableResults_bestResults__block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [UIDictationInterpretationGroup alloc];
  v5 = [v3 bestInterpretation];

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [(UIDictationInterpretationGroup *)v4 initWithInterpretations:v6];
  [v2 addObject:v7];
}

- (id)singleLineResult
{
  selfCopy = self;
  v60[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_phrases count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v54 = v3;
    v55 = selfCopy;
    while (1)
    {
      indexPathOfInterpretations = selfCopy->_indexPathOfInterpretations;
      v8 = indexPathOfInterpretations ? [(NSIndexPath *)indexPathOfInterpretations indexAtPosition:v6]: 0;
      v9 = [(NSArray *)selfCopy->_phrases objectAtIndex:v6];
      interpretations = [(UIDictationInterpretationGroup *)v9 interpretations];
      v11 = [interpretations objectAtIndex:v8];
      tokens = [v11 tokens];
      v13 = [tokens count];

      if (v13)
      {
        break;
      }

      v20 = 0;
      if (v5)
      {
LABEL_13:
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v9;
        }

        [v5 addObject:v21];

        if (++v6 == v4)
        {
          v51 = [[UIDictationSerializableResults alloc] initWithPhrases:v5];
          [(UIDictationSerializableResults *)v51 setFromKeyboard:selfCopy->_fromKeyboard];
          [(UIDictationSerializableResults *)v51 setTransform:selfCopy->_transform];
          [(UIDictationSerializableResults *)v51 setUseServerCapitalization:selfCopy->_useServerCapitalization];

          goto LABEL_36;
        }
      }

      else
      {
LABEL_33:

        if (++v6 == v4)
        {
          goto LABEL_34;
        }
      }
    }

    array = v5;
    v14 = 0;
    while (1)
    {
      bestInterpretation = [(UIDictationInterpretationGroup *)v9 bestInterpretation];
      tokens2 = [bestInterpretation tokens];
      v17 = [tokens2 objectAtIndex:v14];

      text = [v17 text];
      v19 = [text rangeOfString:@"\n"];

      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v13 == ++v14)
      {
        v20 = 0;
        v5 = array;
        if (array)
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }
    }

    if (v14)
    {
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
        if (v6)
        {
          for (i = 0; i != v6; ++i)
          {
            v23 = [(NSArray *)v55->_phrases objectAtIndex:i];
            [array addObject:v23];
          }
        }
      }

      bestInterpretation2 = [(UIDictationInterpretationGroup *)v9 bestInterpretation];
      tokens3 = [bestInterpretation2 tokens];
      v26 = [tokens3 subarrayWithRange:{0, v14 - 1}];
      v27 = [v26 mutableCopy];

      v28 = [UIDictationScoredToken alloc];
      text2 = [v17 text];
      v30 = [text2 substringToIndex:v19];
      removeSpaceBefore = [v17 removeSpaceBefore];
      [v17 confidenceScore];
      v32 = [(UIDictationScoredToken *)v28 initWithText:v30 removeSpaceBefore:removeSpaceBefore removeSpaceAfter:1 confidenceScore:?];

      [v27 addObject:v32];
      v33 = [UIDictationInterpretation alloc];
      v58 = v32;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
      [v17 confidenceScore];
      v35 = [(UIDictationInterpretation *)v33 initWithTokens:v34 score:?];

      v36 = [UIDictationInterpretationGroup alloc];
      v57 = v35;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      v20 = [(UIDictationInterpretationGroup *)v36 initWithInterpretations:v37];

      v5 = array;
    }

    else
    {
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
        if (v6)
        {
          for (j = 0; j != v6; ++j)
          {
            v39 = [(NSArray *)v55->_phrases objectAtIndex:j];
            [array addObject:v39];
          }
        }
      }

      if (v19)
      {
        v40 = [UIDictationScoredToken alloc];
        text3 = [v17 text];
        v42 = [text3 substringToIndex:v19];
        removeSpaceBefore2 = [v17 removeSpaceBefore];
        [v17 confidenceScore];
        v44 = [(UIDictationScoredToken *)v40 initWithText:v42 removeSpaceBefore:removeSpaceBefore2 removeSpaceAfter:1 confidenceScore:?];

        v45 = [UIDictationInterpretation alloc];
        v60[0] = v44;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
        [v17 confidenceScore];
        v47 = [(UIDictationInterpretation *)v45 initWithTokens:v46 score:?];

        v48 = [UIDictationInterpretationGroup alloc];
        v59 = v47;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        v50 = [(UIDictationInterpretationGroup *)v48 initWithInterpretations:v49];

        [array addObject:v50];
      }

      v53 = [[UIDictationSerializableResults alloc] initWithPhrases:array];
      v20 = 0;
      v5 = array;
    }

    if (!v14)
    {

      v51 = v53;
      goto LABEL_36;
    }

    v4 = v54;
    selfCopy = v55;
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_34:
  v51 = selfCopy;
LABEL_36:

  return v51;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bestText = [(UIDictationSerializableResults *)self bestText];
  v7 = [v3 stringWithFormat:@"<%@ best=%@>", v5, bestText];

  return v7;
}

@end