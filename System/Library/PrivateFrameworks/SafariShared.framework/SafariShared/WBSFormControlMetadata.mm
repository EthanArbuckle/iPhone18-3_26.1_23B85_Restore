@interface WBSFormControlMetadata
+ (id)formControlMetadataFromSerializedData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)frame;
- (NSData)serializedData;
- (WBSFormControlMetadata)init;
- (WBSFormControlMetadata)initWithCoder:(id)a3;
- (WBSFormControlMetadata)initWithDictionary:(id)a3;
- (WBSFormControlMetadata)initWithMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentationRedactingSensitiveValues:(BOOL)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)oneTimeCodeFieldClassification;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)serializedData;
@end

@implementation WBSFormControlMetadata

- (WBSFormControlMetadata)initWithCoder:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WBSFormControlMetadata *)self init];
  if (setUpEncodingClasses_onceToken != -1)
  {
    [WBSFormControlMetadata initWithCoder:];
  }

  v6 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"a"];
  addressBookLabel = v5->_addressBookLabel;
  v5->_addressBookLabel = v6;

  v8 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"d"];
  associatedUsername = v5->_associatedUsername;
  v5->_associatedUsername = v8;

  v10 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"f"];
  fieldClass = v5->_fieldClass;
  v5->_fieldClass = v10;

  v12 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"g"];
  fieldID = v5->_fieldID;
  v5->_fieldID = v12;

  v14 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"h"];
  fieldName = v5->_fieldName;
  v5->_fieldName = v14;

  v16 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"i"];
  tagName = v5->_tagName;
  v5->_tagName = v16;

  v18 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"j"];
  uniqueID = v5->_uniqueID;
  v5->_uniqueID = v18;

  v20 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"k"];
  nextControlUniqueID = v5->_nextControlUniqueID;
  v5->_nextControlUniqueID = v20;

  v22 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"1"];
  placeholder = v5->_placeholder;
  v5->_placeholder = v22;

  v24 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"l"];
  value = v5->_value;
  v5->_value = v24;

  v26 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"e"];
  passwordRules = v5->_passwordRules;
  v5->_passwordRules = v26;

  v28 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"3"];
  requiredFormatForDateTimeInput = v5->_requiredFormatForDateTimeInput;
  v5->_requiredFormatForDateTimeInput = v28;

  v30 = [v4 decodeObjectOfClasses:nsStringClassSet forKey:@"4"];
  classification = v5->_classification;
  v5->_classification = v30;

  v5->_size = [v4 decodeInt32ForKey:@"s"];
  v5->_maxLength = [v4 decodeInt32ForKey:@"t"];
  v5->_minLength = [v4 decodeInt32ForKey:@"u"];
  v5->_selectionStart = [v4 decodeInt32ForKey:@"v"];
  v5->_selectionLength = [v4 decodeInt32ForKey:@"w"];
  v5->_autoFillButtonType = [v4 decodeInt32ForKey:@"y"];
  v5->_lastAutoFillButtonType = [v4 decodeInt32ForKey:@"z"];
  v5->_continuationID = [v4 decodeInt32ForKey:@"5"];
  v5->_continuationIndex = [v4 decodeInt32ForKey:@"6"];
  [v4 decodeDoubleForKey:@"o"];
  v5->_rectLeft = v32;
  [v4 decodeDoubleForKey:@"p"];
  v5->_rectTop = v33;
  [v4 decodeDoubleForKey:@"q"];
  v5->_rectWidth = v34;
  [v4 decodeDoubleForKey:@"r"];
  v5->_rectHeight = v35;
  v36 = [v4 decodeObjectOfClasses:stringDictionaryClasses forKey:@"b"];
  annotations = v5->_annotations;
  v5->_annotations = v36;

  p_name = &OBJC_PROTOCOL___WBSURLCompletionMatchData.name;
  v39 = [v4 decodeObjectOfClasses:stringArrayClasses forKey:@"c"];
  autocompleteTokens = v5->_autocompleteTokens;
  v5->_autocompleteTokens = v39;

  v41 = [v4 decodeObjectOfClasses:stringArrayDictionaryClasses forKey:@"m"];
  radioButtonInfo = v5->_radioButtonInfo;
  v5->_radioButtonInfo = v41;

  v43 = [v4 decodeObjectOfClasses:urlArrayDictionaryClasses forKey:@"2"];
  ancestorFrameURLs = v5->_ancestorFrameURLs;
  v5->_ancestorFrameURLs = v43;

  v45 = [v4 decodeObjectOfClasses:selectElementInfoClasses forKey:@"n"];
  if (objc_opt_isKindOfClass())
  {
    v65 = v4;
    v46 = [MEMORY[0x1E695DF70] array];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v64 = v45;
    v47 = v45;
    v48 = [v47 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v67;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v67 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = *(*(&v66 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v50 = [v53 integerValue];
          }

          else
          {
            v54 = [MEMORY[0x1E696AD98] numberWithInteger:v50];
            v70[0] = v54;
            v70[1] = v53;
            v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
            [(NSArray *)v46 addObject:v55];

            ++v50;
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v49);
    }

    v4 = v65;
    p_name = (&OBJC_PROTOCOL___WBSURLCompletionMatchData + 8);
    v45 = v64;
  }

  else
  {
    v46 = 0;
  }

  selectElementInfo = v5->_selectElementInfo;
  v5->_selectElementInfo = v46;

  v5->_flags.asInteger = [v4 decodeIntegerForKey:@"x"];
  v57 = [v4 decodeObjectOfClasses:p_name[400] forKey:@"7"];
  orderedParts = v5->_orderedParts;
  v5->_orderedParts = v57;

  v59 = [v4 decodeObjectOfClasses:p_name[400] forKey:@"8"];
  classificationHints = v5->_classificationHints;
  v5->_classificationHints = v59;

  v61 = [v4 decodeObjectOfClasses:nodePathClasses forKey:@"9"];
  nodePath = v5->_nodePath;
  v5->_nodePath = v61;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  addressBookLabel = self->_addressBookLabel;
  if (addressBookLabel)
  {
    [v4 encodeObject:addressBookLabel forKey:@"a"];
  }

  associatedUsername = self->_associatedUsername;
  if (associatedUsername)
  {
    [v5 encodeObject:associatedUsername forKey:@"d"];
  }

  fieldClass = self->_fieldClass;
  if (fieldClass)
  {
    [v5 encodeObject:fieldClass forKey:@"f"];
  }

  fieldID = self->_fieldID;
  if (fieldID)
  {
    [v5 encodeObject:fieldID forKey:@"g"];
  }

  fieldName = self->_fieldName;
  if (fieldName)
  {
    [v5 encodeObject:fieldName forKey:@"h"];
  }

  tagName = self->_tagName;
  if (tagName)
  {
    [v5 encodeObject:tagName forKey:@"i"];
  }

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v5 encodeObject:uniqueID forKey:@"j"];
  }

  nextControlUniqueID = self->_nextControlUniqueID;
  if (nextControlUniqueID)
  {
    [v5 encodeObject:nextControlUniqueID forKey:@"k"];
  }

  placeholder = self->_placeholder;
  if (placeholder)
  {
    [v5 encodeObject:placeholder forKey:@"1"];
  }

  value = self->_value;
  if (value)
  {
    [v5 encodeObject:value forKey:@"l"];
  }

  passwordRules = self->_passwordRules;
  if (passwordRules)
  {
    [v5 encodeObject:passwordRules forKey:@"e"];
  }

  requiredFormatForDateTimeInput = self->_requiredFormatForDateTimeInput;
  if (requiredFormatForDateTimeInput)
  {
    [v5 encodeObject:requiredFormatForDateTimeInput forKey:@"3"];
  }

  classification = self->_classification;
  if (classification)
  {
    [v5 encodeObject:classification forKey:@"4"];
  }

  size = self->_size;
  if (size)
  {
    [v5 encodeInt32:size forKey:@"s"];
  }

  maxLength = self->_maxLength;
  if (maxLength)
  {
    [v5 encodeInt32:maxLength forKey:@"t"];
  }

  minLength = self->_minLength;
  if (minLength)
  {
    [v5 encodeInt32:minLength forKey:@"u"];
  }

  selectionStart = self->_selectionStart;
  if (selectionStart)
  {
    [v5 encodeInt32:selectionStart forKey:@"v"];
  }

  selectionLength = self->_selectionLength;
  if (selectionLength)
  {
    [v5 encodeInt32:selectionLength forKey:@"w"];
  }

  autoFillButtonType = self->_autoFillButtonType;
  if (autoFillButtonType)
  {
    [v5 encodeInt32:autoFillButtonType forKey:@"y"];
  }

  lastAutoFillButtonType = self->_lastAutoFillButtonType;
  if (lastAutoFillButtonType)
  {
    [v5 encodeInt32:lastAutoFillButtonType forKey:@"z"];
  }

  continuationID = self->_continuationID;
  if (continuationID)
  {
    [v5 encodeInt32:continuationID forKey:@"5"];
  }

  continuationIndex = self->_continuationIndex;
  if (continuationIndex)
  {
    [v5 encodeInt32:continuationIndex forKey:@"6"];
  }

  if (self->_rectLeft != 0.0)
  {
    [v5 encodeDouble:@"o" forKey:?];
  }

  if (self->_rectTop != 0.0)
  {
    [v5 encodeDouble:@"p" forKey:?];
  }

  if (self->_rectWidth != 0.0)
  {
    [v5 encodeDouble:@"q" forKey:?];
  }

  if (self->_rectHeight != 0.0)
  {
    [v5 encodeDouble:@"r" forKey:?];
  }

  annotations = self->_annotations;
  if (annotations)
  {
    [v5 encodeObject:annotations forKey:@"b"];
  }

  autocompleteTokens = self->_autocompleteTokens;
  if (autocompleteTokens)
  {
    [v5 encodeObject:autocompleteTokens forKey:@"c"];
  }

  radioButtonInfo = self->_radioButtonInfo;
  if (radioButtonInfo)
  {
    [v5 encodeObject:radioButtonInfo forKey:@"m"];
  }

  selectElementInfo = self->_selectElementInfo;
  if (selectElementInfo)
  {
    v32 = v5;
    v33 = selectElementInfo;
    if ([(NSArray *)v33 count])
    {
      v51 = v32;
      v52 = v5;
      v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v33, "count")}];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v50 = v33;
      v35 = v33;
      v36 = [(NSArray *)v35 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = 0;
        v39 = *v54;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v54 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v41 = *(*(&v53 + 1) + 8 * i);
            v42 = [v41 objectAtIndexedSubscript:0];
            v43 = [v42 integerValue];
            v44 = [v41 objectAtIndexedSubscript:1];
            if (v43 != v38)
            {
              [v34 addObject:v42];
              v38 = v43;
            }

            [v34 addObject:v44];
            ++v38;
          }

          v37 = [(NSArray *)v35 countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v37);
      }

      v32 = v51;
      [v51 encodeObject:v34 forKey:@"n"];

      v5 = v52;
      v33 = v50;
    }
  }

  ancestorFrameURLs = self->_ancestorFrameURLs;
  if (ancestorFrameURLs)
  {
    [v5 encodeObject:ancestorFrameURLs forKey:@"2"];
  }

  asInteger = self->_flags.asInteger;
  if (asInteger)
  {
    [v5 encodeInteger:asInteger forKey:@"x"];
  }

  orderedParts = self->_orderedParts;
  if (orderedParts)
  {
    [v5 encodeObject:orderedParts forKey:@"7"];
  }

  classificationHints = self->_classificationHints;
  if (classificationHints)
  {
    [v5 encodeObject:classificationHints forKey:@"8"];
  }

  nodePath = self->_nodePath;
  if (nodePath)
  {
    [v5 encodeObject:nodePath forKey:@"9"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WBSFormControlMetadata allocWithZone:a3];

  return [(WBSFormControlMetadata *)v4 initWithMetadata:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [WBSMutableFormControlMetadata allocWithZone:a3];

  return [(WBSFormControlMetadata *)v4 initWithMetadata:self];
}

- (WBSFormControlMetadata)init
{
  v3.receiver = self;
  v3.super_class = WBSFormControlMetadata;
  result = [(WBSFormControlMetadata *)&v3 init];
  result->_maxLength = 0x80000;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v6 = 1;
    }

    else
    {
      v5 = v4;
      if (self->_flags.asInteger == v5->_flags.asInteger && WBSIsEqual() && WBSIsEqual() && self->_rectLeft == v5->_rectLeft && self->_rectTop == v5->_rectTop && self->_rectWidth == v5->_rectWidth && self->_rectHeight == v5->_rectHeight && self->_size == v5->_size && self->_maxLength == v5->_maxLength && self->_minLength == v5->_minLength && self->_selectionStart == v5->_selectionStart && self->_selectionLength == v5->_selectionLength && self->_autoFillButtonType == v5->_autoFillButtonType && self->_lastAutoFillButtonType == v5->_lastAutoFillButtonType && self->_continuationID == v5->_continuationID && self->_continuationIndex == v5->_continuationIndex && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && WBSIsEqual())
      {
        v6 = WBSIsEqual();
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueID hash];
  v4 = [(NSString *)self->_nextControlUniqueID hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_value hash];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_flags.asInteger];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (WBSFormControlMetadata)initWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [(WBSFormControlMetadata *)self init];
  v6 = v5;
  if (v4)
  {
    objc_storeStrong(&v5->_addressBookLabel, v4[1]);
    objc_storeStrong(&v6->_associatedUsername, v4[2]);
    objc_storeStrong(&v6->_fieldClass, v4[3]);
    objc_storeStrong(&v6->_fieldID, v4[4]);
    objc_storeStrong(&v6->_fieldName, v4[5]);
    objc_storeStrong(&v6->_tagName, v4[6]);
    objc_storeStrong(&v6->_uniqueID, v4[7]);
    objc_storeStrong(&v6->_nextControlUniqueID, v4[8]);
    objc_storeStrong(&v6->_placeholder, v4[9]);
    objc_storeStrong(&v6->_value, v4[10]);
    objc_storeStrong(&v6->_passwordRules, v4[11]);
    objc_storeStrong(&v6->_requiredFormatForDateTimeInput, v4[12]);
    objc_storeStrong(&v6->_classification, v4[13]);
    v6->_size = *(v4 + 52);
    v6->_maxLength = *(v4 + 53);
    v6->_minLength = *(v4 + 54);
    v6->_selectionStart = *(v4 + 55);
    v6->_selectionLength = *(v4 + 56);
    v6->_autoFillButtonType = *(v4 + 57);
    v6->_lastAutoFillButtonType = *(v4 + 58);
    v6->_continuationID = *(v4 + 59);
    v6->_continuationIndex = *(v4 + 60);
    *&v6->_rectLeft = v4[21];
    *&v6->_rectTop = v4[22];
    *&v6->_rectWidth = v4[23];
    *&v6->_rectHeight = v4[24];
    objc_storeStrong(&v6->_annotations, v4[15]);
    objc_storeStrong(&v6->_autocompleteTokens, v4[17]);
    objc_storeStrong(&v6->_radioButtonInfo, v4[14]);
    objc_storeStrong(&v6->_selectElementInfo, v4[16]);
    objc_storeStrong(&v6->_ancestorFrameURLs, v4[18]);
    v6->_flags.asInteger = v4[25];
    objc_storeStrong(&v6->_orderedParts, v4[19]);
    objc_storeStrong(&v6->_classificationHints, v4[20]);
    objc_storeStrong(&v6->_nodePath, v4[31]);
  }

  return v6;
}

- (WBSFormControlMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(WBSFormControlMetadata *)self init];
  if ([v4 count])
  {
    if (getPropertyMap_onceToken != -1)
    {
      [WBSFormControlMetadata initWithDictionary:];
    }

    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __45__WBSFormControlMetadata_initWithDictionary___block_invoke;
    v32 = &unk_1E7FC5C08;
    v34 = getPropertyMap_map;
    v6 = v5;
    v33 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:&v29];
    if (([MEMORY[0x1E69C8880] isInternalInstall] & 1) != 0 || objc_msgSend(MEMORY[0x1E69C8880], "isAutoFillDrivenByUIProcess"))
    {
      v7 = [v4 safari_numberForKey:@"ControlRectLeft"];
      [v7 doubleValue];
      v6->_rectLeft = v8;

      v9 = [v4 safari_numberForKey:@"ControlRectTop"];
      [v9 doubleValue];
      v6->_rectTop = v10;

      v11 = [v4 safari_numberForKey:@"ControlRectWidth"];
      [v11 doubleValue];
      v6->_rectWidth = v12;

      v13 = [v4 safari_numberForKey:@"ControlRectHeight"];
      [v13 doubleValue];
      v6->_rectHeight = v14;
    }

    v15 = [v4 safari_numberForKey:@"ControlSize"];
    v6->_size = [v15 integerValue];

    v16 = [v4 safari_numberForKey:@"ControlMaxLength"];
    v17 = [v16 integerValue];
    if (v17 >= 0x80000)
    {
      v18 = 0x80000;
    }

    else
    {
      v18 = v17;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x80000;
    }

    v6->_maxLength = v19;
    v20 = [v4 safari_numberForKey:@"ControlMinLength"];
    v6->_minLength = [v20 integerValue];

    v21 = [v4 safari_numberForKey:@"SelectionStart"];
    v6->_selectionStart = [v21 integerValue];

    v22 = [v4 safari_numberForKey:@"SelectionLength"];
    v6->_selectionLength = [v22 integerValue];

    v23 = [v4 safari_numberForKey:@"ControlAutoFillButtonType"];
    v6->_autoFillButtonType = [v23 integerValue];

    v24 = [v4 safari_numberForKey:@"ControlLastAutoFillButtonType"];
    v6->_lastAutoFillButtonType = [v24 integerValue];

    v25 = [v4 safari_numberForKey:@"ControlContinuationID"];
    v6->_continuationID = [v25 integerValue];

    v26 = [v4 safari_numberForKey:@"ControlContinuationIndex"];
    v6->_continuationIndex = [v26 integerValue];

    v27 = v6;
  }

  return v5;
}

void __45__WBSFormControlMetadata_initWithDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 40) objectForKeyedSubscript:a2];
  if (v5)
  {
    v6 = v5;
    v7 = v5[1];
    if (v7 == 2)
    {
      v10 = (v5[4])(a3);
      if (v10)
      {
        v11 = v10;
        object_setIvar(*(a1 + 32), v6[2], v10);
        v10 = v11;
      }
    }

    else if (v7 == 1)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = *(a1 + 32);
        v9 = v6[2];

        object_setIvar(v8, v9, a3);
      }
    }

    else if (!v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      if ([a3 BOOLValue])
      {
        *(*(a1 + 32) + 200) |= v6[3];
      }
    }
  }
}

- (id)dictionaryRepresentationRedactingSensitiveValues:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  flags = self->_flags.flags;
  if (*&flags)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"DisallowsAutocomplete"];
    flags = self->_flags.flags;
    if ((*&flags & 2) == 0)
    {
LABEL_3:
      if ((*&flags & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_109;
    }
  }

  else if ((*&flags & 2) == 0)
  {
    goto LABEL_3;
  }

  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlClaimsToBeCurrentPasswordViaAutocompleteAttribute"];
  flags = self->_flags.flags;
  if ((*&flags & 4) == 0)
  {
LABEL_4:
    if ((*&flags & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_110;
  }

LABEL_109:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlClaimsToBeNewPasswordViaAutocompleteAttribute"];
  flags = self->_flags.flags;
  if ((*&flags & 8) == 0)
  {
LABEL_5:
    if ((*&flags & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_111;
  }

LABEL_110:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlClaimsToBeUsernameViaAutocompleteAttribute"];
  flags = self->_flags.flags;
  if ((*&flags & 0x10) == 0)
  {
LABEL_6:
    if ((*&flags & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_112;
  }

LABEL_111:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeOneTimeCodeField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x20) == 0)
  {
LABEL_7:
    if ((*&flags & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_113;
  }

LABEL_112:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"OneTimeCodeIsEligibleForAutomaticLogin"];
  flags = self->_flags.flags;
  if ((*&flags & 0x40) == 0)
  {
LABEL_8:
    if ((*&flags & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_114;
  }

LABEL_113:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsVisible"];
  flags = self->_flags.flags;
  if ((*&flags & 0x80) == 0)
  {
LABEL_9:
    if ((*&flags & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_115;
  }

LABEL_114:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsActiveElement"];
  flags = self->_flags.flags;
  if ((*&flags & 0x100) == 0)
  {
LABEL_10:
    if ((*&flags & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_116;
  }

LABEL_115:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsDisabled"];
  flags = self->_flags.flags;
  if ((*&flags & 0x200) == 0)
  {
LABEL_11:
    if ((*&flags & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_117;
  }

LABEL_116:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsReadOnly"];
  flags = self->_flags.flags;
  if ((*&flags & 0x400) == 0)
  {
LABEL_12:
    if ((*&flags & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_118;
  }

LABEL_117:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsTextField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x800) == 0)
  {
LABEL_13:
    if ((*&flags & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_119;
  }

LABEL_118:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsSecureTextField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x1000) == 0)
  {
LABEL_14:
    if ((*&flags & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_120;
  }

LABEL_119:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsAutoFilledTextField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x2000) == 0)
  {
LABEL_15:
    if ((*&flags & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_121;
  }

LABEL_120:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsUserEditedTextField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x4000) == 0)
  {
LABEL_16:
    if ((*&flags & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_122;
  }

LABEL_121:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsLabeledUsernameField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x8000) == 0)
  {
LABEL_17:
    if ((*&flags & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_123;
  }

LABEL_122:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlIsVerticalWritingMode"];
  flags = self->_flags.flags;
  if ((*&flags & 0x10000) == 0)
  {
LABEL_18:
    if ((*&flags & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_124;
  }

LABEL_123:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeCreditCardCardholderField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x20000) == 0)
  {
LABEL_19:
    if ((*&flags & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_125;
  }

LABEL_124:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeCreditCardCompositeExpirationDateField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x40000) == 0)
  {
LABEL_20:
    if ((*&flags & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_126;
  }

LABEL_125:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeCreditCardNumberField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x80000) == 0)
  {
LABEL_21:
    if ((*&flags & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_127;
  }

LABEL_126:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeCreditCardSecurityCodeField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x100000) == 0)
  {
LABEL_22:
    if ((*&flags & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_128;
  }

LABEL_127:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeCreditCardTypeField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x200000) == 0)
  {
LABEL_23:
    if ((*&flags & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_129;
  }

LABEL_128:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeEIDField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x400000) == 0)
  {
LABEL_24:
    if ((*&flags & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_130;
  }

LABEL_129:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeIMEIField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x800000) == 0)
  {
LABEL_25:
    if ((*&flags & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_131;
  }

LABEL_130:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeDayField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&flags & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_132;
  }

LABEL_131:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeMonthField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x2000000) == 0)
  {
LABEL_27:
    if ((*&flags & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_133;
  }

LABEL_132:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeYearField"];
  flags = self->_flags.flags;
  if ((*&flags & 0x4000000) == 0)
  {
LABEL_28:
    if ((*&flags & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_133:
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikeIgnoredDataTypeField"];
  if ((*&self->_flags.flags & 0x8000000) != 0)
  {
LABEL_29:
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ControlLooksLikePasswordCredentialField"];
  }

LABEL_30:
  addressBookLabel = self->_addressBookLabel;
  if (addressBookLabel)
  {
    [v6 setObject:addressBookLabel forKeyedSubscript:@"AddressBookLabel"];
  }

  associatedUsername = self->_associatedUsername;
  if (associatedUsername)
  {
    [v6 setObject:associatedUsername forKeyedSubscript:@"ControlAssociatedUsername"];
  }

  fieldClass = self->_fieldClass;
  if (fieldClass)
  {
    [v6 setObject:fieldClass forKeyedSubscript:@"ControlFieldClass"];
  }

  fieldID = self->_fieldID;
  if (fieldID)
  {
    [v6 setObject:fieldID forKeyedSubscript:@"ControlFieldID"];
  }

  fieldName = self->_fieldName;
  if (fieldName)
  {
    [v6 setObject:fieldName forKeyedSubscript:@"ControlFieldName"];
  }

  tagName = self->_tagName;
  if (tagName)
  {
    [v6 setObject:tagName forKeyedSubscript:@"ControlTagName"];
  }

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v6 setObject:uniqueID forKeyedSubscript:@"ControlUniqueID"];
  }

  nextControlUniqueID = self->_nextControlUniqueID;
  if (nextControlUniqueID)
  {
    [v6 setObject:nextControlUniqueID forKeyedSubscript:@"ControlNextFieldUniqueID"];
  }

  placeholder = self->_placeholder;
  if (placeholder)
  {
    [v6 setObject:placeholder forKeyedSubscript:@"ControlPlaceholder"];
  }

  value = self->_value;
  if (value)
  {
    [v6 setObject:value forKeyedSubscript:@"ControlValue"];
  }

  passwordRules = self->_passwordRules;
  if (passwordRules)
  {
    [v6 setObject:passwordRules forKeyedSubscript:@"ControlPasswordRules"];
  }

  requiredFormatForDateTimeInput = self->_requiredFormatForDateTimeInput;
  if (requiredFormatForDateTimeInput)
  {
    [v6 setObject:requiredFormatForDateTimeInput forKeyedSubscript:@"ControlRequiredFormatForDateTimeInput"];
  }

  classification = self->_classification;
  if (classification)
  {
    [v6 setObject:classification forKeyedSubscript:@"ControlClassification"];
  }

  annotations = self->_annotations;
  if (annotations)
  {
    [v6 setObject:annotations forKeyedSubscript:@"Annotations"];
  }

  autocompleteTokens = self->_autocompleteTokens;
  if (autocompleteTokens)
  {
    [v6 setObject:autocompleteTokens forKeyedSubscript:@"AutocompleteTokens"];
  }

  radioButtonInfo = self->_radioButtonInfo;
  if (radioButtonInfo)
  {
    [v6 setObject:radioButtonInfo forKeyedSubscript:@"RadioButtonInfo"];
  }

  selectElementInfo = self->_selectElementInfo;
  if (selectElementInfo)
  {
    [v6 setObject:selectElementInfo forKeyedSubscript:@"SelectElementInfo"];
  }

  ancestorFrameURLs = self->_ancestorFrameURLs;
  if (ancestorFrameURLs)
  {
    [v6 setObject:ancestorFrameURLs forKeyedSubscript:@"AncestorFrameURLs"];
  }

  orderedParts = self->_orderedParts;
  if (orderedParts)
  {
    [v6 setObject:orderedParts forKeyedSubscript:@"ControlOrderedParts"];
  }

  classificationHints = self->_classificationHints;
  if (classificationHints)
  {
    [v6 setObject:classificationHints forKeyedSubscript:@"ControlClassificationHints"];
  }

  nodePath = self->_nodePath;
  if (nodePath)
  {
    [v6 setObject:nodePath forKeyedSubscript:@"ControlNodePath"];
  }

  if (self->_rectLeft != 0.0)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 setObject:v29 forKeyedSubscript:@"ControlRectLeft"];
  }

  if (self->_rectTop != 0.0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 setObject:v30 forKeyedSubscript:@"ControlRectTop"];
  }

  if (self->_rectWidth != 0.0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 setObject:v31 forKeyedSubscript:@"ControlRectWidth"];
  }

  if (self->_rectHeight != 0.0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 setObject:v32 forKeyedSubscript:@"ControlRectHeight"];
  }

  if (self->_size)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v33 forKeyedSubscript:@"ControlSize"];
  }

  if (self->_maxLength)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v34 forKeyedSubscript:@"ControlMaxLength"];
  }

  if (self->_minLength)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v35 forKeyedSubscript:@"ControlMinLength"];
  }

  if (self->_selectionStart)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v36 forKeyedSubscript:@"SelectionStart"];
  }

  if (self->_selectionLength)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v37 forKeyedSubscript:@"SelectionLength"];
  }

  if (self->_autoFillButtonType)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v38 forKeyedSubscript:@"ControlAutoFillButtonType"];
  }

  if (self->_lastAutoFillButtonType)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v39 forKeyedSubscript:@"ControlLastAutoFillButtonType"];
  }

  if (self->_continuationID)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v40 forKeyedSubscript:@"ControlContinuationID"];
  }

  if (self->_continuationIndex)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v41 forKeyedSubscript:@"ControlContinuationIndex"];
  }

  if (self->_maxLength == 0x80000)
  {
    [v6 removeObjectForKey:@"ControlMaxLength"];
  }

  if (!self->_continuationID || self->_continuationIndex)
  {
    if (!v3)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  [v6 setObject:&unk_1F3A9AD18 forKeyedSubscript:@"ControlContinuationIndex"];
  if (v3)
  {
LABEL_103:
    [v6 removeObjectForKey:@"ControlValue"];
    [v6 removeObjectForKey:@"ControlAssociatedUsername"];
  }

LABEL_104:
  v42 = [v6 copy];

  return v42;
}

- (NSData)serializedData
{
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXKeyedArchiver();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSFormControlMetadata *)v4 serializedData];
    }
  }

  return v2;
}

+ (id)formControlMetadataFromSerializedData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_10;
  }

  v19 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v19 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v20 = 0;
  v14 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v13 fromData:v3 error:&v20];
  v15 = v20;
  if (v15)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXKeyedArchiver();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSFormControlMetadata *)v16 formControlMetadataFromSerializedData:v15];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v17 = v14;
LABEL_9:

LABEL_10:

  return v17;
}

- (int64_t)oneTimeCodeFieldClassification
{
  if ([(NSArray *)self->_autocompleteTokens containsObject:@"one-time-code"])
  {
    return 2;
  }

  else
  {
    return (self->_flags.flags >> 4) & 1;
  }
}

- (CGRect)frame
{
  rectLeft = self->_rectLeft;
  rectTop = self->_rectTop;
  rectWidth = self->_rectWidth;
  rectHeight = self->_rectHeight;
  result.size.height = rectHeight;
  result.size.width = rectWidth;
  result.origin.y = rectTop;
  result.origin.x = rectLeft;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WBSFormControlMetadata;
  v4 = [(WBSFormControlMetadata *)&v8 description];
  v5 = [(WBSFormControlMetadata *)self uniqueID];
  v6 = [v3 stringWithFormat:@"<%@ controlUniqueID=%@>", v4, v5];

  return v6;
}

- (void)serializedData
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to archive WBSFormControlMetadata: %{public}@", v7, v8, v9, v10, 2u);
}

+ (void)formControlMetadataFromSerializedData:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to read from WBSFormControlMetadata data with exception: %{public}@", v7, v8, v9, v10, 2u);
}

@end