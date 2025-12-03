@interface TIKeyboardCandidate
- (BOOL)isAddress;
- (BOOL)isCompletionCandidate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPunctuation;
- (BOOL)isPunctuationCompletionCandidate;
- (BOOL)isPunctuationKeyCandidate;
- (BOOL)isSupplementalItemCandidate;
- (NSString)description;
- (NSString)inputWithoutSupplementalItemPrefix;
- (NSString)shortDescription;
- (TIKeyboardCandidate)init;
- (TIKeyboardCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TIKeyboardCandidate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardCandidate

- (TIKeyboardCandidate)init
{
  v3.receiver = self;
  v3.super_class = TIKeyboardCandidate;
  result = [(TIKeyboardCandidate *)&v3 init];
  if (result)
  {
    result->_confidence = 3;
  }

  return result;
}

- (BOOL)isSupplementalItemCandidate
{
  supplementalItemIdentifiers = [(TIKeyboardCandidate *)self supplementalItemIdentifiers];
  v3 = [supplementalItemIdentifiers count] != 0;

  return v3;
}

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeByte:{objc_msgSend(objc_opt_class(), "type")}];
  alternativeText = [(TIKeyboardCandidate *)self alternativeText];
  [coderCopy encodeString:alternativeText];

  annotationText = [(TIKeyboardCandidate *)self annotationText];
  [coderCopy encodeString:annotationText];

  [coderCopy encodeUInt32:{-[TIKeyboardCandidate slotID](self, "slotID")}];
  [(TIKeyboardCandidate *)self secureCandidateWidth];
  [coderCopy encodeDouble:?];
  [coderCopy encodeBool:{-[TIKeyboardCandidate isSecureCandidateDoubleLines](self, "isSecureCandidateDoubleLines")}];
  [coderCopy encodeUInt64:{-[TIKeyboardCandidate secureCandidateHash](self, "secureCandidateHash")}];
  [coderCopy encodeUInt64:{-[TIKeyboardCandidate customInfoType](self, "customInfoType")}];
  [coderCopy encodeUInt32:{-[TIKeyboardCandidate indexForMetrics](self, "indexForMetrics")}];
  [coderCopy encodeBool:{-[TIKeyboardCandidate isResponseKitCandidate](self, "isResponseKitCandidate")}];
  responseKitCategory = [(TIKeyboardCandidate *)self responseKitCategory];
  [coderCopy encodeString:responseKitCategory];

  [coderCopy encodeShort:self->_supplementalItemPrefix];
  [coderCopy encodeUInt32:{-[TIKeyboardCandidate typingEngine](self, "typingEngine")}];
  [coderCopy encodeUInt32:{-[TIKeyboardCandidate confidence](self, "confidence")}];
  [coderCopy encodeUInt64:{-[NSArray count](self->_supplementalItemIdentifiers, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_supplementalItemIdentifiers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [coderCopy encodeUInt64:{objc_msgSend(*(*(&v13 + 1) + 8 * v12++), "unsignedLongLongValue", v13)}];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (TIKeyboardCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = TIKeyboardCandidate;
  v5 = [(TIKeyboardCandidate *)&v22 init];
  if (v5)
  {
    [coderCopy decodeByte];
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    alternativeText = v5->_alternativeText;
    v5->_alternativeText = v7;

    decodeString2 = [coderCopy decodeString];
    v10 = [decodeString2 copy];
    annotationText = v5->_annotationText;
    v5->_annotationText = v10;

    v5->_slotID = [coderCopy decodeUInt32];
    [coderCopy decodeDouble];
    v5->_secureCandidateWidth = v12;
    v5->_isSecureCandidateDoubleLines = [coderCopy decodeBool];
    v5->_secureCandidateHash = [coderCopy decodeUInt64];
    v5->_customInfoType = [coderCopy decodeUInt64];
    v5->_indexForMetrics = [coderCopy decodeUInt32];
    v5->_responseKitCandidate = [coderCopy decodeBool];
    decodeString3 = [coderCopy decodeString];
    v14 = [decodeString3 copy];
    responseKitCategory = v5->_responseKitCategory;
    v5->_responseKitCategory = v14;

    v5->_supplementalItemPrefix = [coderCopy decodeShort];
    v5->_typingEngine = [coderCopy decodeUInt32];
    v5->_confidence = [coderCopy decodeUInt32];
    decodeUInt64 = [coderCopy decodeUInt64];
    if (decodeUInt64)
    {
      v17 = decodeUInt64;
      v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:decodeUInt64];
      do
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(coderCopy, "decodeUInt64")}];
        [(NSArray *)v18 addObject:v19];

        --v17;
      }

      while (v17);
      supplementalItemIdentifiers = v5->_supplementalItemIdentifiers;
      v5->_supplementalItemIdentifiers = v18;
    }
  }

  return v5;
}

- (BOOL)isPunctuationCompletionCandidate
{
  isPunctuation = [(TIKeyboardCandidate *)self isPunctuation];
  if (isPunctuation)
  {
    LOBYTE(isPunctuation) = [(TIKeyboardCandidate *)self deleteCount]== 0;
  }

  return isPunctuation;
}

- (BOOL)isPunctuationKeyCandidate
{
  isPunctuation = [(TIKeyboardCandidate *)self isPunctuation];
  if (isPunctuation)
  {
    LOBYTE(isPunctuation) = [(TIKeyboardCandidate *)self deleteCount]!= 0;
  }

  return isPunctuation;
}

- (BOOL)isPunctuation
{
  label = [(TIKeyboardCandidate *)self label];
  _containsSymbolsAndPunctuationOnly = [label _containsSymbolsAndPunctuationOnly];

  return _containsSymbolsAndPunctuationOnly;
}

- (BOOL)isCompletionCandidate
{
  input = [(TIKeyboardCandidate *)self input];
  if ([input length])
  {
    isInlineCompletionCandidate = [(TIKeyboardCandidate *)self isInlineCompletionCandidate];
  }

  else
  {
    isInlineCompletionCandidate = 1;
  }

  return isInlineCompletionCandidate;
}

- (unint64_t)hash
{
  candidate = [(TIKeyboardCandidate *)self candidate];
  v4 = [candidate hash];

  alternativeText = [(TIKeyboardCandidate *)self alternativeText];
  v6 = 257 * [alternativeText hash];
  annotationText = [(TIKeyboardCandidate *)self annotationText];
  v8 = 65537 * [annotationText hash];

  return v6 + v4 + v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    candidate = [(TIKeyboardCandidate *)self candidate];
    candidate2 = [v5 candidate];
    v8 = [candidate isEqualToString:candidate2];

    if (!v8)
    {
      goto LABEL_32;
    }

    input = [(TIKeyboardCandidate *)self input];
    input2 = [v5 input];
    v11 = [input isEqualToString:input2];

    if (!v11)
    {
      goto LABEL_32;
    }

    alternativeText = [(TIKeyboardCandidate *)self alternativeText];
    alternativeText2 = [v5 alternativeText];
    v14 = alternativeText2;
    if (alternativeText == alternativeText2)
    {
    }

    else
    {
      alternativeText3 = [(TIKeyboardCandidate *)self alternativeText];
      alternativeText4 = [v5 alternativeText];
      v17 = [alternativeText3 isEqualToString:alternativeText4];

      if (!v17)
      {
        goto LABEL_32;
      }
    }

    annotationText = [(TIKeyboardCandidate *)self annotationText];
    annotationText2 = [v5 annotationText];
    v21 = annotationText2;
    if (annotationText == annotationText2)
    {
    }

    else
    {
      annotationText3 = [(TIKeyboardCandidate *)self annotationText];
      annotationText4 = [v5 annotationText];
      v24 = [annotationText3 isEqualToString:annotationText4];

      if (!v24)
      {
        goto LABEL_32;
      }
    }

    slotID = [(TIKeyboardCandidate *)self slotID];
    if (slotID == [v5 slotID])
    {
      [(TIKeyboardCandidate *)self secureCandidateWidth];
      v27 = v26;
      [v5 secureCandidateWidth];
      if (v27 == v28)
      {
        isSecureCandidateDoubleLines = [(TIKeyboardCandidate *)self isSecureCandidateDoubleLines];
        if (isSecureCandidateDoubleLines == [v5 isSecureCandidateDoubleLines])
        {
          secureCandidateHash = [(TIKeyboardCandidate *)self secureCandidateHash];
          if (secureCandidateHash == [v5 secureCandidateHash])
          {
            learningFlagsMask = [(TIKeyboardCandidate *)self learningFlagsMask];
            if (learningFlagsMask == [v5 learningFlagsMask])
            {
              isContinuousPathConversion = [(TIKeyboardCandidate *)self isContinuousPathConversion];
              if (isContinuousPathConversion == [v5 isContinuousPathConversion])
              {
                shouldAccept = [(TIKeyboardCandidate *)self shouldAccept];
                if (shouldAccept == [v5 shouldAccept])
                {
                  customInfoType = [(TIKeyboardCandidate *)self customInfoType];
                  if (customInfoType == [v5 customInfoType])
                  {
                    isResponseKitCandidate = [(TIKeyboardCandidate *)self isResponseKitCandidate];
                    if (isResponseKitCandidate == [v5 isResponseKitCandidate])
                    {
                      isTransliterationCandidate = [(TIKeyboardCandidate *)self isTransliterationCandidate];
                      if (isTransliterationCandidate == [v5 isTransliterationCandidate])
                      {
                        v37 = [(NSArray *)self->_supplementalItemIdentifiers count];
                        if ((v37 == [v5[15] count] || -[NSArray isEqualToArray:](self->_supplementalItemIdentifiers, "isEqualToArray:", v5[15])) && self->_supplementalItemPrefix == *(v5 + 17) && self->_typingEngine == *(v5 + 11) && self->_confidence == *(v5 + 10) && self->_candidateProperty == v5[2] && self->_isAlternativeInput == *(v5 + 30) && self->_shouldHintAtAlternativeInput == *(v5 + 31))
                        {
                          v18 = self->_isOneTimeCodeThatRequiresAuthentication == *(v5 + 32);
LABEL_33:

                          goto LABEL_34;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_32:
    v18 = 0;
    goto LABEL_33;
  }

  v39.receiver = self;
  v39.super_class = TIKeyboardCandidate;
  v18 = [(TIKeyboardCandidate *)&v39 isEqual:equalCopy];
LABEL_34:

  return v18;
}

- (BOOL)isAddress
{
  proactiveTrigger = [(TIKeyboardCandidate *)self proactiveTrigger];
  attributes = [proactiveTrigger attributes];
  v4 = [attributes objectForKey:@"field"];

  LOBYTE(proactiveTrigger) = [v4 containsString:@"ADDRESS"];
  return proactiveTrigger;
}

- (NSString)inputWithoutSupplementalItemPrefix
{
  input = [(TIKeyboardCandidate *)self input];
  v4 = [input length];
  input2 = [(TIKeyboardCandidate *)self input];
  v6 = input2;
  if (v4)
  {
    if ([input2 characterAtIndex:0] == self->_supplementalItemPrefix)
    {
      input3 = [(TIKeyboardCandidate *)self input];
      input4 = [input3 substringFromIndex:1];
    }

    else
    {
      input4 = [(TIKeyboardCandidate *)self input];
    }

    v6 = input4;
  }

  return v6;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  input = [(TIKeyboardCandidate *)self input];
  candidate = [(TIKeyboardCandidate *)self candidate];
  v6 = [v3 stringWithFormat:@"'%@' -> '%@'", input, candidate];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  input = [(TIKeyboardCandidate *)self input];
  candidate = [(TIKeyboardCandidate *)self candidate];
  isExtensionCandidate = [(TIKeyboardCandidate *)self isExtensionCandidate];
  v8 = [(NSArray *)self->_supplementalItemIdentifiers componentsJoinedByString:@", "];
  v9 = [v3 stringWithFormat:@"<%@: %p '%@' -> '%@' (extension: %d), supplementalItemIDs: [%@]>", v4, self, input, candidate, isExtensionCandidate, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  alternativeText = self->_alternativeText;
  v17 = coderCopy;
  if (alternativeText)
  {
    [coderCopy encodeObject:alternativeText forKey:@"alternativeText"];
  }

  annotationText = self->_annotationText;
  if (annotationText)
  {
    [v17 encodeObject:annotationText forKey:@"annotationText"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_slotID];
  [v17 encodeObject:v7 forKey:@"slotID"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_secureCandidateWidth];
  [v17 encodeObject:v8 forKey:@"secureCandidateWidth"];

  [v17 encodeBool:self->_isSecureCandidateDoubleLines forKey:@"isSecureCandidateDoubleLines"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_secureCandidateHash];
  [v17 encodeObject:v9 forKey:@"secureCandidateHash"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_customInfoType];
  [v17 encodeObject:v10 forKey:@"customInfoType"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_indexForMetrics];
  [v17 encodeObject:v11 forKey:@"indexForMetrics"];

  [v17 encodeBool:self->_responseKitCandidate forKey:@"responseKitCandidate"];
  responseKitCategory = self->_responseKitCategory;
  if (responseKitCategory)
  {
    [v17 encodeObject:responseKitCategory forKey:@"responseKitCategory"];
  }

  supplementalItemIdentifiers = self->_supplementalItemIdentifiers;
  if (supplementalItemIdentifiers)
  {
    [v17 encodeObject:supplementalItemIdentifiers forKey:@"supplementalItemIdentifiers"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_supplementalItemPrefix];
  [v17 encodeObject:v14 forKey:@"supplementalItemPrefix"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_typingEngine];
  [v17 encodeObject:v15 forKey:@"typingEngine"];

  [v17 encodeInt32:self->_confidence forKey:@"candidateConfidence"];
  [v17 encodeInt:LODWORD(self->_candidateProperty) forKey:@"candidateProperty"];
  if (self->_isAlternativeInput)
  {
    [v17 encodeBool:1 forKey:@"isAlternativeInput"];
  }

  if (self->_shouldHintAtAlternativeInput)
  {
    [v17 encodeBool:1 forKey:@"shouldHintAtAlternativeInput"];
  }

  [v17 encodeBool:self->_isOneTimeCodeThatRequiresAuthentication forKey:@"isOneTimeCodeThatRequiresAuthentication"];
  wordSeparator = self->_wordSeparator;
  if (wordSeparator)
  {
    [v17 encodeObject:wordSeparator forKey:@"wordSeparator"];
  }
}

- (TIKeyboardCandidate)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = TIKeyboardCandidate;
  v5 = [(TIKeyboardCandidate *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternativeText"];
    alternativeText = v5->_alternativeText;
    v5->_alternativeText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"annotationText"];
    annotationText = v5->_annotationText;
    v5->_annotationText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slotID"];
    v5->_slotID = [v10 unsignedIntValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureCandidateWidth"];
    [v11 floatValue];
    v5->_secureCandidateWidth = v12;

    v5->_isSecureCandidateDoubleLines = [coderCopy decodeBoolForKey:@"isSecureCandidateDoubleLines"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureCandidateHash"];
    v5->_secureCandidateHash = [v13 unsignedLongValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customInfoType"];
    v5->_customInfoType = [v14 unsignedLongValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexForMetrics"];
    v5->_indexForMetrics = [v15 unsignedIntValue];

    v5->_responseKitCandidate = [coderCopy decodeBoolForKey:@"responseKitCandidate"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseKitCategory"];
    responseKitCategory = v5->_responseKitCategory;
    v5->_responseKitCategory = v16;

    v18 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"supplementalItemIdentifiers"];
    supplementalItemIdentifiers = v5->_supplementalItemIdentifiers;
    v5->_supplementalItemIdentifiers = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supplementalItemPrefix"];
    v5->_supplementalItemPrefix = [v23 unsignedShortValue];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typingEngine"];
    v5->_typingEngine = [v24 unsignedIntValue];

    v5->_confidence = [coderCopy decodeInt32ForKey:@"candidateConfidence"];
    v5->_candidateProperty = [coderCopy decodeIntForKey:@"candidateProperty"];
    v5->_isAlternativeInput = [coderCopy decodeBoolForKey:@"isAlternativeInput"];
    v5->_shouldHintAtAlternativeInput = [coderCopy decodeBoolForKey:@"shouldHintAtAlternativeInput"];
    v5->_isOneTimeCodeThatRequiresAuthentication = [coderCopy decodeBoolForKey:@"isOneTimeCodeThatRequiresAuthentication"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wordSeparator"];
    wordSeparator = v5->_wordSeparator;
    v5->_wordSeparator = v25;

    v27 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_alternativeText copyWithZone:zone];
    v7 = *(v5 + 48);
    *(v5 + 48) = v6;

    v8 = [(NSString *)self->_annotationText copyWithZone:zone];
    v9 = *(v5 + 56);
    *(v5 + 56) = v8;

    *(v5 + 36) = self->_slotID;
    *(v5 + 64) = self->_secureCandidateWidth;
    *(v5 + 24) = self->_isSecureCandidateDoubleLines;
    *(v5 + 72) = *&self->_secureCandidateHash;
    *(v5 + 88) = self->_indexForMetrics;
    *(v5 + 8) = self->_responseKitCandidate;
    v10 = [(NSString *)self->_responseKitCategory copyWithZone:zone];
    v11 = *(v5 + 96);
    *(v5 + 96) = v10;

    v12 = [(NSArray *)self->_supplementalItemIdentifiers copyWithZone:zone];
    v13 = *(v5 + 120);
    *(v5 + 120) = v12;

    *(v5 + 34) = self->_supplementalItemPrefix;
    *(v5 + 44) = self->_typingEngine;
    *(v5 + 40) = self->_confidence;
    *(v5 + 16) = self->_candidateProperty;
    *(v5 + 30) = self->_isAlternativeInput;
    *(v5 + 31) = self->_shouldHintAtAlternativeInput;
    objc_storeStrong((v5 + 144), self->_lexiconLocale);
    *(v5 + 32) = self->_isOneTimeCodeThatRequiresAuthentication;
    objc_storeStrong((v5 + 112), self->_wordSeparator);
  }

  return v5;
}

@end