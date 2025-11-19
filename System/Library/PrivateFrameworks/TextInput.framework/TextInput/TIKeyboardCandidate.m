@interface TIKeyboardCandidate
- (BOOL)isAddress;
- (BOOL)isCompletionCandidate;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPunctuation;
- (BOOL)isPunctuationCompletionCandidate;
- (BOOL)isPunctuationKeyCandidate;
- (BOOL)isSupplementalItemCandidate;
- (NSString)description;
- (NSString)inputWithoutSupplementalItemPrefix;
- (NSString)shortDescription;
- (TIKeyboardCandidate)init;
- (TIKeyboardCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TIKeyboardCandidate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [(TIKeyboardCandidate *)self supplementalItemIdentifiers];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 encodeByte:{objc_msgSend(objc_opt_class(), "type")}];
  v5 = [(TIKeyboardCandidate *)self alternativeText];
  [v4 encodeString:v5];

  v6 = [(TIKeyboardCandidate *)self annotationText];
  [v4 encodeString:v6];

  [v4 encodeUInt32:{-[TIKeyboardCandidate slotID](self, "slotID")}];
  [(TIKeyboardCandidate *)self secureCandidateWidth];
  [v4 encodeDouble:?];
  [v4 encodeBool:{-[TIKeyboardCandidate isSecureCandidateDoubleLines](self, "isSecureCandidateDoubleLines")}];
  [v4 encodeUInt64:{-[TIKeyboardCandidate secureCandidateHash](self, "secureCandidateHash")}];
  [v4 encodeUInt64:{-[TIKeyboardCandidate customInfoType](self, "customInfoType")}];
  [v4 encodeUInt32:{-[TIKeyboardCandidate indexForMetrics](self, "indexForMetrics")}];
  [v4 encodeBool:{-[TIKeyboardCandidate isResponseKitCandidate](self, "isResponseKitCandidate")}];
  v7 = [(TIKeyboardCandidate *)self responseKitCategory];
  [v4 encodeString:v7];

  [v4 encodeShort:self->_supplementalItemPrefix];
  [v4 encodeUInt32:{-[TIKeyboardCandidate typingEngine](self, "typingEngine")}];
  [v4 encodeUInt32:{-[TIKeyboardCandidate confidence](self, "confidence")}];
  [v4 encodeUInt64:{-[NSArray count](self->_supplementalItemIdentifiers, "count")}];
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

        [v4 encodeUInt64:{objc_msgSend(*(*(&v13 + 1) + 8 * v12++), "unsignedLongLongValue", v13)}];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (TIKeyboardCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TIKeyboardCandidate;
  v5 = [(TIKeyboardCandidate *)&v22 init];
  if (v5)
  {
    [v4 decodeByte];
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    alternativeText = v5->_alternativeText;
    v5->_alternativeText = v7;

    v9 = [v4 decodeString];
    v10 = [v9 copy];
    annotationText = v5->_annotationText;
    v5->_annotationText = v10;

    v5->_slotID = [v4 decodeUInt32];
    [v4 decodeDouble];
    v5->_secureCandidateWidth = v12;
    v5->_isSecureCandidateDoubleLines = [v4 decodeBool];
    v5->_secureCandidateHash = [v4 decodeUInt64];
    v5->_customInfoType = [v4 decodeUInt64];
    v5->_indexForMetrics = [v4 decodeUInt32];
    v5->_responseKitCandidate = [v4 decodeBool];
    v13 = [v4 decodeString];
    v14 = [v13 copy];
    responseKitCategory = v5->_responseKitCategory;
    v5->_responseKitCategory = v14;

    v5->_supplementalItemPrefix = [v4 decodeShort];
    v5->_typingEngine = [v4 decodeUInt32];
    v5->_confidence = [v4 decodeUInt32];
    v16 = [v4 decodeUInt64];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
      do
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "decodeUInt64")}];
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
  v3 = [(TIKeyboardCandidate *)self isPunctuation];
  if (v3)
  {
    LOBYTE(v3) = [(TIKeyboardCandidate *)self deleteCount]== 0;
  }

  return v3;
}

- (BOOL)isPunctuationKeyCandidate
{
  v3 = [(TIKeyboardCandidate *)self isPunctuation];
  if (v3)
  {
    LOBYTE(v3) = [(TIKeyboardCandidate *)self deleteCount]!= 0;
  }

  return v3;
}

- (BOOL)isPunctuation
{
  v2 = [(TIKeyboardCandidate *)self label];
  v3 = [v2 _containsSymbolsAndPunctuationOnly];

  return v3;
}

- (BOOL)isCompletionCandidate
{
  v3 = [(TIKeyboardCandidate *)self input];
  if ([v3 length])
  {
    v4 = [(TIKeyboardCandidate *)self isInlineCompletionCandidate];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = [(TIKeyboardCandidate *)self candidate];
  v4 = [v3 hash];

  v5 = [(TIKeyboardCandidate *)self alternativeText];
  v6 = 257 * [v5 hash];
  v7 = [(TIKeyboardCandidate *)self annotationText];
  v8 = 65537 * [v7 hash];

  return v6 + v4 + v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TIKeyboardCandidate *)self candidate];
    v7 = [v5 candidate];
    v8 = [v6 isEqualToString:v7];

    if (!v8)
    {
      goto LABEL_32;
    }

    v9 = [(TIKeyboardCandidate *)self input];
    v10 = [v5 input];
    v11 = [v9 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = [(TIKeyboardCandidate *)self alternativeText];
    v13 = [v5 alternativeText];
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      v15 = [(TIKeyboardCandidate *)self alternativeText];
      v16 = [v5 alternativeText];
      v17 = [v15 isEqualToString:v16];

      if (!v17)
      {
        goto LABEL_32;
      }
    }

    v19 = [(TIKeyboardCandidate *)self annotationText];
    v20 = [v5 annotationText];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(TIKeyboardCandidate *)self annotationText];
      v23 = [v5 annotationText];
      v24 = [v22 isEqualToString:v23];

      if (!v24)
      {
        goto LABEL_32;
      }
    }

    v25 = [(TIKeyboardCandidate *)self slotID];
    if (v25 == [v5 slotID])
    {
      [(TIKeyboardCandidate *)self secureCandidateWidth];
      v27 = v26;
      [v5 secureCandidateWidth];
      if (v27 == v28)
      {
        v29 = [(TIKeyboardCandidate *)self isSecureCandidateDoubleLines];
        if (v29 == [v5 isSecureCandidateDoubleLines])
        {
          v30 = [(TIKeyboardCandidate *)self secureCandidateHash];
          if (v30 == [v5 secureCandidateHash])
          {
            v31 = [(TIKeyboardCandidate *)self learningFlagsMask];
            if (v31 == [v5 learningFlagsMask])
            {
              v32 = [(TIKeyboardCandidate *)self isContinuousPathConversion];
              if (v32 == [v5 isContinuousPathConversion])
              {
                v33 = [(TIKeyboardCandidate *)self shouldAccept];
                if (v33 == [v5 shouldAccept])
                {
                  v34 = [(TIKeyboardCandidate *)self customInfoType];
                  if (v34 == [v5 customInfoType])
                  {
                    v35 = [(TIKeyboardCandidate *)self isResponseKitCandidate];
                    if (v35 == [v5 isResponseKitCandidate])
                    {
                      v36 = [(TIKeyboardCandidate *)self isTransliterationCandidate];
                      if (v36 == [v5 isTransliterationCandidate])
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
  v18 = [(TIKeyboardCandidate *)&v39 isEqual:v4];
LABEL_34:

  return v18;
}

- (BOOL)isAddress
{
  v2 = [(TIKeyboardCandidate *)self proactiveTrigger];
  v3 = [v2 attributes];
  v4 = [v3 objectForKey:@"field"];

  LOBYTE(v2) = [v4 containsString:@"ADDRESS"];
  return v2;
}

- (NSString)inputWithoutSupplementalItemPrefix
{
  v3 = [(TIKeyboardCandidate *)self input];
  v4 = [v3 length];
  v5 = [(TIKeyboardCandidate *)self input];
  v6 = v5;
  if (v4)
  {
    if ([v5 characterAtIndex:0] == self->_supplementalItemPrefix)
    {
      v7 = [(TIKeyboardCandidate *)self input];
      v8 = [v7 substringFromIndex:1];
    }

    else
    {
      v8 = [(TIKeyboardCandidate *)self input];
    }

    v6 = v8;
  }

  return v6;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(TIKeyboardCandidate *)self input];
  v5 = [(TIKeyboardCandidate *)self candidate];
  v6 = [v3 stringWithFormat:@"'%@' -> '%@'", v4, v5];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TIKeyboardCandidate *)self input];
  v6 = [(TIKeyboardCandidate *)self candidate];
  v7 = [(TIKeyboardCandidate *)self isExtensionCandidate];
  v8 = [(NSArray *)self->_supplementalItemIdentifiers componentsJoinedByString:@", "];
  v9 = [v3 stringWithFormat:@"<%@: %p '%@' -> '%@' (extension: %d), supplementalItemIDs: [%@]>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  alternativeText = self->_alternativeText;
  v17 = v4;
  if (alternativeText)
  {
    [v4 encodeObject:alternativeText forKey:@"alternativeText"];
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

- (TIKeyboardCandidate)initWithCoder:(id)a3
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = TIKeyboardCandidate;
  v5 = [(TIKeyboardCandidate *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternativeText"];
    alternativeText = v5->_alternativeText;
    v5->_alternativeText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"annotationText"];
    annotationText = v5->_annotationText;
    v5->_annotationText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slotID"];
    v5->_slotID = [v10 unsignedIntValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureCandidateWidth"];
    [v11 floatValue];
    v5->_secureCandidateWidth = v12;

    v5->_isSecureCandidateDoubleLines = [v4 decodeBoolForKey:@"isSecureCandidateDoubleLines"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureCandidateHash"];
    v5->_secureCandidateHash = [v13 unsignedLongValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customInfoType"];
    v5->_customInfoType = [v14 unsignedLongValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"indexForMetrics"];
    v5->_indexForMetrics = [v15 unsignedIntValue];

    v5->_responseKitCandidate = [v4 decodeBoolForKey:@"responseKitCandidate"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseKitCategory"];
    responseKitCategory = v5->_responseKitCategory;
    v5->_responseKitCategory = v16;

    v18 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"supplementalItemIdentifiers"];
    supplementalItemIdentifiers = v5->_supplementalItemIdentifiers;
    v5->_supplementalItemIdentifiers = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalItemPrefix"];
    v5->_supplementalItemPrefix = [v23 unsignedShortValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typingEngine"];
    v5->_typingEngine = [v24 unsignedIntValue];

    v5->_confidence = [v4 decodeInt32ForKey:@"candidateConfidence"];
    v5->_candidateProperty = [v4 decodeIntForKey:@"candidateProperty"];
    v5->_isAlternativeInput = [v4 decodeBoolForKey:@"isAlternativeInput"];
    v5->_shouldHintAtAlternativeInput = [v4 decodeBoolForKey:@"shouldHintAtAlternativeInput"];
    v5->_isOneTimeCodeThatRequiresAuthentication = [v4 decodeBoolForKey:@"isOneTimeCodeThatRequiresAuthentication"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wordSeparator"];
    wordSeparator = v5->_wordSeparator;
    v5->_wordSeparator = v25;

    v27 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_alternativeText copyWithZone:a3];
    v7 = *(v5 + 48);
    *(v5 + 48) = v6;

    v8 = [(NSString *)self->_annotationText copyWithZone:a3];
    v9 = *(v5 + 56);
    *(v5 + 56) = v8;

    *(v5 + 36) = self->_slotID;
    *(v5 + 64) = self->_secureCandidateWidth;
    *(v5 + 24) = self->_isSecureCandidateDoubleLines;
    *(v5 + 72) = *&self->_secureCandidateHash;
    *(v5 + 88) = self->_indexForMetrics;
    *(v5 + 8) = self->_responseKitCandidate;
    v10 = [(NSString *)self->_responseKitCategory copyWithZone:a3];
    v11 = *(v5 + 96);
    *(v5 + 96) = v10;

    v12 = [(NSArray *)self->_supplementalItemIdentifiers copyWithZone:a3];
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