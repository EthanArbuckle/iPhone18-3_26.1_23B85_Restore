@interface RTITextOperations
+ (id)customInfoDictionary;
+ (void)registerCustomInfoClasses:(id)classes forType:(id)type;
+ (void)unregisterCustomInfoType:(id)type;
- (BOOL)isEqual:(id)equal;
- (NSAttributedString)attributedInsertionText;
- (NSString)description;
- (RTITextOperations)initWithCoder:(id)coder;
- (RTITextOperations)initWithTargetSessionUUID:(id)d;
- (SEL)editingActionSelector;
- (_NSRange)selectionRangeToAssert;
- (_NSRange)textCheckingAnnotationRange;
- (_NSRange)textCheckingAnnotationRemovalRange;
- (_NSRange)textCheckingReplacementRange;
- (void)_createAttributedPlaceholdersIfNecessary;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAdaptiveImageGlyphsUsingBlock:(id)block;
- (void)enumerateImagesAndUserInfosUsingBlock:(id)block;
- (void)enumerateImagesUsingBlock:(id)block;
- (void)enumerateTextAttachmentsUsingBlock:(id)block;
- (void)insertAdaptiveImageGlyph:(id)glyph;
- (void)insertAttributedText:(id)text;
- (void)insertAttributedText:(id)text replacementRange:(_NSRange)range;
- (void)insertImageWithFileHandle:(id)handle typeIdentifier:(id)identifier imageUserInfo:(id)info;
- (void)insertText:(id)text replacementRange:(_NSRange)range;
- (void)insertTextAttachment:(id)attachment;
- (void)setEditingActionSelector:(SEL)selector;
@end

@implementation RTITextOperations

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  keyboardOutput = self->_keyboardOutput;
  if (keyboardOutput)
  {
    [coderCopy encodeObject:keyboardOutput forKey:@"keyboardOutput"];
  }

  intermediateText = self->_intermediateText;
  if (intermediateText)
  {
    [coderCopy encodeObject:intermediateText forKey:@"intermediateText"];
  }

  styledIntermediateText = self->_styledIntermediateText;
  if (styledIntermediateText)
  {
    [coderCopy encodeObject:styledIntermediateText forKey:@"styledIntermediateText"];
  }

  textToAssert = self->_textToAssert;
  if (textToAssert)
  {
    [coderCopy encodeObject:textToAssert forKey:@"textToAssert"];
  }

  if (self->_selectionRangeToAssert.location != 0x7FFFFFFFFFFFFFFFLL || self->_selectionRangeToAssert.length)
  {
    v9 = [MEMORY[0x1E696B098] valueWithRange:?];
    [coderCopy encodeObject:v9 forKey:@"selectionRangeToAssert"];
  }

  editingActionSelector = self->_editingActionSelector;
  if (editingActionSelector)
  {
    v11 = self->_editingActionSelector;
    v12 = NSStringFromSelector(editingActionSelector);
    [coderCopy encodeObject:v12 forKey:@"editingActionSelector"];
  }

  multilingualLanguages = self->_multilingualLanguages;
  if (multilingualLanguages)
  {
    [coderCopy encodeObject:multilingualLanguages forKey:@"multilingualLanguages"];
  }

  inputSourceState = self->_inputSourceState;
  if (inputSourceState)
  {
    [coderCopy encodeObject:inputSourceState forKey:@"inputSourceState"];
  }

  attributedPlaceholders = self->_attributedPlaceholders;
  if (attributedPlaceholders)
  {
    [coderCopy encodeObject:attributedPlaceholders forKey:@"attributedPlaceholders"];
  }

  enumeratedInsertionAnimationStyle = self->_enumeratedInsertionAnimationStyle;
  if (enumeratedInsertionAnimationStyle)
  {
    [coderCopy encodeInteger:enumeratedInsertionAnimationStyle forKey:@"insertionAnimationStyle"];
  }

  textCheckingAnnotatedString = self->_textCheckingAnnotatedString;
  if (textCheckingAnnotatedString)
  {
    v18 = +[RTIUtilities _textAnnotationAttributes];
    v19 = [(NSAttributedString *)textCheckingAnnotatedString _ti_attributedStringByKeepingAttributes:v18];

    [coderCopy encodeObject:v19 forKey:@"textCheckingAnnotatedString"];
  }

  if (self->_textCheckingAnnotationRange.location != 0x7FFFFFFFFFFFFFFFLL || self->_textCheckingAnnotationRange.length)
  {
    v20 = [MEMORY[0x1E696B098] valueWithRange:?];
    [coderCopy encodeObject:v20 forKey:@"textCheckingAnnotationRange"];
  }

  if (self->_textCheckingReplacementRange.location != 0x7FFFFFFFFFFFFFFFLL || self->_textCheckingReplacementRange.length)
  {
    v21 = [MEMORY[0x1E696B098] valueWithRange:?];
    [coderCopy encodeObject:v21 forKey:@"textCheckingReplacementRange"];
  }

  if (self->_textCheckingAnnotationRemovalRange.location != 0x7FFFFFFFFFFFFFFFLL || self->_textCheckingAnnotationRemovalRange.length)
  {
    v22 = [MEMORY[0x1E696B098] valueWithRange:?];
    [coderCopy encodeObject:v22 forKey:@"textCheckingAnnotationRemovalRange"];
  }

  textCheckingAnnotationToRemove = self->_textCheckingAnnotationToRemove;
  if (textCheckingAnnotationToRemove)
  {
    [coderCopy encodeObject:textCheckingAnnotationToRemove forKey:@"textCheckingAnnotationToRemove"];
  }

  customInfoType = self->_customInfoType;
  if (customInfoType)
  {
    [coderCopy encodeObject:customInfoType forKey:@"customInfoType"];
  }

  customInfo = self->_customInfo;
  if (customInfo)
  {
    [coderCopy encodeObject:customInfo forKey:@"customInfo"];
  }

  fileHandles = self->_fileHandles;
  if (fileHandles)
  {
    if (self->_typeIdentifiers)
    {
      v27 = [(NSMutableArray *)fileHandles count];
      if (v27 == [(NSMutableArray *)self->_typeIdentifiers count])
      {
        v28 = [(NSMutableArray *)self->_fileHandles count];
        if (v28 == [(NSMutableArray *)self->_imageUserInfos count])
        {
          [coderCopy encodeObject:self->_fileHandles forKey:@"fileHandles"];
          [coderCopy encodeObject:self->_typeIdentifiers forKey:@"typeIdentifiers"];
          [coderCopy encodeObject:self->_imageUserInfos forKey:@"imgUserInfo"];
        }
      }
    }
  }

  attachmentDatas = self->_attachmentDatas;
  if (attachmentDatas)
  {
    if (self->_attachmentClasses)
    {
      if (self->_typeIdentifiers)
      {
        v30 = [(NSMutableArray *)attachmentDatas count];
        if (v30 == [(NSMutableArray *)self->_attachmentClasses count])
        {
          v31 = [(NSMutableArray *)self->_attachmentClasses count];
          if (v31 == [(NSMutableArray *)self->_typeIdentifiers count])
          {
            [coderCopy encodeObject:self->_attachmentDatas forKey:@"attachmentDatas"];
            [coderCopy encodeObject:self->_attachmentClasses forKey:@"attachmentClasses"];
            [coderCopy encodeObject:self->_typeIdentifiers forKey:@"typeIdentifiers"];
          }
        }
      }
    }
  }

  imageGlyphs = self->_imageGlyphs;
  if (imageGlyphs)
  {
    [coderCopy encodeObject:imageGlyphs forKey:@"imageGlyphs"];
  }

  targetSessionUUID = self->_targetSessionUUID;
  if (targetSessionUUID)
  {
    [coderCopy encodeObject:targetSessionUUID forKey:@"targetSessionUUID"];
  }

  [coderCopy encodeBool:self->_isExplicitAutoFillInvocation forKey:@"isExplicitAutoFillInvocation"];
  [coderCopy encodeBool:self->_isAutoFillTextOperation forKey:@"isAutoFillTextOperation"];
}

- (RTITextOperations)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v5 = [(RTITextOperations *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardOutput"];
    keyboardOutput = v5->_keyboardOutput;
    v5->_keyboardOutput = v6;

    if (!v5->_keyboardOutput)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69D9638]);
      v9 = v5->_keyboardOutput;
      v5->_keyboardOutput = v8;
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intermediateText"];
    intermediateText = v5->_intermediateText;
    v5->_intermediateText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"styledIntermediateText"];
    styledIntermediateText = v5->_styledIntermediateText;
    v5->_styledIntermediateText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textToAssert"];
    v15 = [v14 copy];
    textToAssert = v5->_textToAssert;
    v5->_textToAssert = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectionRangeToAssert"];
    v18 = v17;
    if (v17)
    {
      rangeValue = [v17 rangeValue];
    }

    else
    {
      v20 = 0;
      rangeValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_selectionRangeToAssert.location = rangeValue;
    v5->_selectionRangeToAssert.length = v20;
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editingActionSelector"];
    v22 = [v21 copy];

    if (v22)
    {
      v23 = NSSelectorFromString(v22);
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v5->_editingActionSelector = v24;
    }

    v109 = v22;
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"multilingualLanguages"];
    multilingualLanguages = v5->_multilingualLanguages;
    v5->_multilingualLanguages = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputSourceState"];
    inputSourceState = v5->_inputSourceState;
    v5->_inputSourceState = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v115 = 0;
    v116 = &v115;
    v117 = 0x2050000000;
    v36 = getNSTextAlternativesClass_softClass;
    v118 = getNSTextAlternativesClass_softClass;
    if (!getNSTextAlternativesClass_softClass)
    {
      v110 = MEMORY[0x1E69E9820];
      v111 = 3221225472;
      v112 = __getNSTextAlternativesClass_block_invoke;
      v113 = &unk_1E75144B0;
      v114 = &v115;
      __getNSTextAlternativesClass_block_invoke(&v110);
      v36 = v116[3];
    }

    v37 = v36;
    _Block_object_dispose(&v115, 8);
    v38 = [v32 setWithObjects:{v33, v34, v35, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"attributedPlaceholders"];
    attributedPlaceholders = v5->_attributedPlaceholders;
    v5->_attributedPlaceholders = v39;

    v5->_enumeratedInsertionAnimationStyle = [coderCopy decodeIntegerForKey:@"insertionAnimationStyle"];
    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotationRange"];
    v107 = v41;
    if (v41)
    {
      rangeValue2 = [v41 rangeValue];
    }

    else
    {
      v43 = 0;
      rangeValue2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_textCheckingAnnotationRange.location = rangeValue2;
    v5->_textCheckingAnnotationRange.length = v43;
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingReplacementRange"];
    v106 = v44;
    if (v44)
    {
      rangeValue3 = [v44 rangeValue];
    }

    else
    {
      v46 = 0;
      rangeValue3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_textCheckingReplacementRange.location = rangeValue3;
    v5->_textCheckingReplacementRange.length = v46;
    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotatedString"];
    textCheckingAnnotatedString = v5->_textCheckingAnnotatedString;
    v5->_textCheckingAnnotatedString = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotationRemovalRange"];
    v105 = v49;
    if (v49)
    {
      rangeValue4 = [v49 rangeValue];
    }

    else
    {
      v51 = 0;
      rangeValue4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_textCheckingAnnotationRemovalRange.location = rangeValue4;
    v5->_textCheckingAnnotationRemovalRange.length = v51;
    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotationToRemove"];
    textCheckingAnnotationToRemove = v5->_textCheckingAnnotationToRemove;
    v5->_textCheckingAnnotationToRemove = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customInfoType"];
    customInfoType = v5->_customInfoType;
    v5->_customInfoType = v54;

    v56 = v5->_customInfoType;
    if (v56)
    {
      v57 = [RTIUtilities customInfoClassesForType:v56 forClass:objc_opt_class()];
      if ([v57 count])
      {
        v58 = [coderCopy decodeObjectOfClasses:v57 forKey:@"customInfo"];
        customInfo = v5->_customInfo;
        v5->_customInfo = v58;
      }
    }

    v108 = v18;
    v60 = MEMORY[0x1E695DFD8];
    v61 = objc_opt_class();
    v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
    v63 = [coderCopy decodeObjectOfClasses:v62 forKey:@"fileHandles"];
    v64 = [v63 mutableCopy];
    fileHandles = v5->_fileHandles;
    v5->_fileHandles = v64;

    v66 = MEMORY[0x1E695DFD8];
    v67 = objc_opt_class();
    v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
    v69 = [coderCopy decodeObjectOfClasses:v68 forKey:@"typeIdentifiers"];
    v70 = [v69 mutableCopy];
    typeIdentifiers = v5->_typeIdentifiers;
    v5->_typeIdentifiers = v70;

    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v76 = objc_opt_class();
    v77 = [v72 setWithObjects:{v73, v74, v75, v76, objc_opt_class(), 0}];
    v78 = [coderCopy decodeObjectOfClasses:v77 forKey:@"imgUserInfo"];
    v79 = [v78 mutableCopy];
    imageUserInfos = v5->_imageUserInfos;
    v5->_imageUserInfos = v79;

    v81 = MEMORY[0x1E695DFD8];
    v82 = objc_opt_class();
    v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
    v84 = [coderCopy decodeObjectOfClasses:v83 forKey:@"attachmentDatas"];
    v85 = [v84 mutableCopy];
    attachmentDatas = v5->_attachmentDatas;
    v5->_attachmentDatas = v85;

    v87 = MEMORY[0x1E695DFD8];
    v88 = objc_opt_class();
    v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
    v90 = [coderCopy decodeObjectOfClasses:v89 forKey:@"attachmentClasses"];
    v91 = [v90 mutableCopy];
    attachmentClasses = v5->_attachmentClasses;
    v5->_attachmentClasses = v91;

    v93 = MEMORY[0x1E695DFD8];
    v94 = objc_opt_class();
    v115 = 0;
    v116 = &v115;
    v117 = 0x2050000000;
    v95 = getNSAdaptiveImageGlyphClass_softClass;
    v118 = getNSAdaptiveImageGlyphClass_softClass;
    if (!getNSAdaptiveImageGlyphClass_softClass)
    {
      v110 = MEMORY[0x1E69E9820];
      v111 = 3221225472;
      v112 = __getNSAdaptiveImageGlyphClass_block_invoke;
      v113 = &unk_1E75144B0;
      v114 = &v115;
      __getNSAdaptiveImageGlyphClass_block_invoke(&v110);
      v95 = v116[3];
    }

    v96 = v95;
    _Block_object_dispose(&v115, 8);
    v97 = objc_opt_class();
    v98 = [v93 setWithObjects:{v94, v95, v97, objc_opt_class(), 0}];
    v99 = [coderCopy decodeObjectOfClasses:v98 forKey:@"imageGlyphs"];
    v100 = [v99 mutableCopy];
    imageGlyphs = v5->_imageGlyphs;
    v5->_imageGlyphs = v100;

    v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetSessionUUID"];
    targetSessionUUID = v5->_targetSessionUUID;
    v5->_targetSessionUUID = v102;

    v5->_isExplicitAutoFillInvocation = [coderCopy decodeBoolForKey:@"isExplicitAutoFillInvocation"];
    v5->_isAutoFillTextOperation = [coderCopy decodeBoolForKey:@"isAutoFillTextOperation"];
  }

  return v5;
}

- (RTITextOperations)initWithTargetSessionUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = RTITextOperations;
  v6 = [(RTITextOperations *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69D9638]);
    keyboardOutput = v6->_keyboardOutput;
    v6->_keyboardOutput = v7;

    v6->_selectionRangeToAssert = xmmword_19A2CBC70;
    v6->_textCheckingAnnotationRange = xmmword_19A2CBC70;
    v6->_textCheckingReplacementRange = xmmword_19A2CBC70;
    v6->_textCheckingAnnotationRemovalRange = xmmword_19A2CBC70;
    objc_storeStrong(&v6->_targetSessionUUID, d);
  }

  return v6;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  keyboardOutput = [(RTITextOperations *)self keyboardOutput];
  [v3 appendFormat:@"; keyboardOutput = %@", keyboardOutput];

  intermediateText = [(RTITextOperations *)self intermediateText];

  if (intermediateText)
  {
    intermediateText2 = [(RTITextOperations *)self intermediateText];
    [v3 appendFormat:@"; intermediateText = %@", intermediateText2];
  }

  styledIntermediateText = [(RTITextOperations *)self styledIntermediateText];

  if (styledIntermediateText)
  {
    styledIntermediateText2 = [(RTITextOperations *)self styledIntermediateText];
    [v3 appendFormat:@"; styledIntermediateText = %@", styledIntermediateText2];
  }

  textToAssert = [(RTITextOperations *)self textToAssert];

  if (textToAssert)
  {
    textToAssert2 = [(RTITextOperations *)self textToAssert];
    [v3 appendFormat:@"; textToAssert = %@", textToAssert2];
  }

  if ([(RTITextOperations *)self selectionRangeToAssert]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = MEMORY[0x1E696B098];
    selectionRangeToAssert = [(RTITextOperations *)self selectionRangeToAssert];
    v14 = [v11 valueWithRange:{selectionRangeToAssert, v13}];
    [v3 appendFormat:@"; selectionRangeToAssert = %@", v14];
  }

  if ([(RTITextOperations *)self editingActionSelector])
  {
    v15 = NSStringFromSelector([(RTITextOperations *)self editingActionSelector]);
    [v3 appendFormat:@"; editingActionSelector = %@", v15];
  }

  multilingualLanguages = [(RTITextOperations *)self multilingualLanguages];

  if (multilingualLanguages)
  {
    multilingualLanguages2 = [(RTITextOperations *)self multilingualLanguages];
    [v3 appendFormat:@"; multilingualLanguages = %@", multilingualLanguages2];
  }

  inputSourceState = [(RTITextOperations *)self inputSourceState];

  if (inputSourceState)
  {
    inputSourceState2 = [(RTITextOperations *)self inputSourceState];
    [v3 appendFormat:@"; inputSourceState = %@", inputSourceState2];
  }

  if ([(RTITextOperations *)self textCheckingAnnotationRange]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = MEMORY[0x1E696B098];
    textCheckingAnnotationRange = [(RTITextOperations *)self textCheckingAnnotationRange];
    v23 = [v20 valueWithRange:{textCheckingAnnotationRange, v22}];
    [v3 appendFormat:@"; textCheckingAnnotationRange = %@", v23];
  }

  if ([(RTITextOperations *)self textCheckingReplacementRange]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = MEMORY[0x1E696B098];
    textCheckingReplacementRange = [(RTITextOperations *)self textCheckingReplacementRange];
    v27 = [v24 valueWithRange:{textCheckingReplacementRange, v26}];
    [v3 appendFormat:@"; textCheckingReplacementRange = %@", v27];
  }

  textCheckingAnnotatedString = [(RTITextOperations *)self textCheckingAnnotatedString];

  if (textCheckingAnnotatedString)
  {
    textCheckingAnnotatedString2 = [(RTITextOperations *)self textCheckingAnnotatedString];
    [v3 appendFormat:@"; textCheckingAnnotatedString = %p", textCheckingAnnotatedString2];
  }

  if ([(RTITextOperations *)self textCheckingAnnotationRemovalRange]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = MEMORY[0x1E696B098];
    textCheckingAnnotationRemovalRange = [(RTITextOperations *)self textCheckingAnnotationRemovalRange];
    v33 = [v30 valueWithRange:{textCheckingAnnotationRemovalRange, v32}];
    [v3 appendFormat:@"; textCheckingAnnotationRemovalRange = %@", v33];
  }

  textCheckingAnnotationToRemove = [(RTITextOperations *)self textCheckingAnnotationToRemove];

  if (textCheckingAnnotationToRemove)
  {
    textCheckingAnnotationToRemove2 = [(RTITextOperations *)self textCheckingAnnotationToRemove];
    [v3 appendFormat:@"; textCheckingAnnotationToRemove = %@", textCheckingAnnotationToRemove2];
  }

  customInfoType = [(RTITextOperations *)self customInfoType];

  if (customInfoType)
  {
    customInfoType2 = [(RTITextOperations *)self customInfoType];
    [v3 appendFormat:@"; customInfoType = %@", customInfoType2];
  }

  customInfo = [(RTITextOperations *)self customInfo];

  if (customInfo)
  {
    customInfo2 = [(RTITextOperations *)self customInfo];
    [v3 appendFormat:@"; customInfo = %@", customInfo2];
  }

  if ([(RTITextOperations *)self enumeratedInsertionAnimationStyle])
  {
    [v3 appendFormat:@"; enumeratedInsertionAnimationStyle = %ld", -[RTITextOperations enumeratedInsertionAnimationStyle](self, "enumeratedInsertionAnimationStyle")];
  }

  fileHandles = [(RTITextOperations *)self fileHandles];
  if ([fileHandles count])
  {
    typeIdentifiers = [(RTITextOperations *)self typeIdentifiers];
    v42 = [typeIdentifiers count];

    if (!v42)
    {
      goto LABEL_35;
    }

    fileHandles = [(RTITextOperations *)self typeIdentifiers];
    [v3 appendFormat:@"; fileHandles with types = %@", fileHandles];
  }

LABEL_35:
  attachmentDatas = [(RTITextOperations *)self attachmentDatas];
  if ([attachmentDatas count])
  {
    attachmentClasses = [(RTITextOperations *)self attachmentClasses];
    v45 = [attachmentClasses count];

    if (!v45)
    {
      goto LABEL_39;
    }

    attachmentDatas = [(RTITextOperations *)self attachmentClasses];
    [v3 appendFormat:@"; textAttachments = %@", attachmentDatas];
  }

LABEL_39:
  imageGlyphs = [(RTITextOperations *)self imageGlyphs];
  v47 = [imageGlyphs count];

  if (v47)
  {
    imageGlyphs2 = [(RTITextOperations *)self imageGlyphs];
    [v3 appendFormat:@"; %lu adaptiveImageGlyphs", objc_msgSend(imageGlyphs2, "count")];
  }

  targetSessionUUID = [(RTITextOperations *)self targetSessionUUID];
  [v3 appendFormat:@"; targetSessionUUID = %@", targetSessionUUID];

  if ([(RTITextOperations *)self isExplicitAutoFillInvocation])
  {
    v50 = @"YES";
  }

  else
  {
    v50 = @"NO";
  }

  [v3 appendFormat:@"; isExplicitAutoFillInvocation = %@", v50];
  if ([(RTITextOperations *)self isAutoFillTextOperation])
  {
    v51 = @"YES";
  }

  else
  {
    v51 = @"NO";
  }

  [v3 appendFormat:@"; isAutoFillTextOperation = %@", v51];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keyboardOutput = [(RTITextOperations *)self keyboardOutput];
      keyboardOutput2 = [(RTITextOperations *)v5 keyboardOutput];
      v8 = keyboardOutput2;
      if (keyboardOutput == keyboardOutput2)
      {
      }

      else
      {
        keyboardOutput3 = [(RTITextOperations *)self keyboardOutput];
        keyboardOutput4 = [(RTITextOperations *)v5 keyboardOutput];
        v11 = [keyboardOutput3 isEqual:keyboardOutput4];

        if (!v11)
        {
          goto LABEL_21;
        }
      }

      intermediateText = [(RTITextOperations *)self intermediateText];
      intermediateText2 = [(RTITextOperations *)v5 intermediateText];
      v15 = intermediateText2;
      if (intermediateText == intermediateText2)
      {
      }

      else
      {
        intermediateText3 = [(RTITextOperations *)self intermediateText];
        intermediateText4 = [(RTITextOperations *)v5 intermediateText];
        v18 = [intermediateText3 isEqual:intermediateText4];

        if (!v18)
        {
          goto LABEL_21;
        }
      }

      styledIntermediateText = [(RTITextOperations *)self styledIntermediateText];
      styledIntermediateText2 = [(RTITextOperations *)v5 styledIntermediateText];
      v21 = styledIntermediateText2;
      if (styledIntermediateText == styledIntermediateText2)
      {
      }

      else
      {
        styledIntermediateText3 = [(RTITextOperations *)self styledIntermediateText];
        styledIntermediateText4 = [(RTITextOperations *)v5 styledIntermediateText];
        v24 = [styledIntermediateText3 isEqual:styledIntermediateText4];

        if (!v24)
        {
          goto LABEL_21;
        }
      }

      v25 = MEMORY[0x1E696AEC0];
      textToAssert = [(RTITextOperations *)self textToAssert];
      textToAssert2 = [(RTITextOperations *)v5 textToAssert];
      v12 = [v25 _string:textToAssert matchesString:textToAssert2];

      if (!v12)
      {
        goto LABEL_22;
      }

      selectionRangeToAssert = [(RTITextOperations *)self selectionRangeToAssert];
      v30 = v29;
      LOBYTE(v12) = 0;
      if (selectionRangeToAssert != [(RTITextOperations *)v5 selectionRangeToAssert]|| v30 != v31)
      {
        goto LABEL_22;
      }

      editingActionSelector = [(RTITextOperations *)self editingActionSelector];
      if (editingActionSelector != [(RTITextOperations *)v5 editingActionSelector])
      {
        goto LABEL_21;
      }

      multilingualLanguages = [(RTITextOperations *)self multilingualLanguages];
      multilingualLanguages2 = [(RTITextOperations *)v5 multilingualLanguages];
      v36 = multilingualLanguages2;
      if (multilingualLanguages == multilingualLanguages2)
      {
      }

      else
      {
        multilingualLanguages3 = [(RTITextOperations *)self multilingualLanguages];
        multilingualLanguages4 = [(RTITextOperations *)v5 multilingualLanguages];
        v39 = [multilingualLanguages3 isEqualToArray:multilingualLanguages4];

        if (!v39)
        {
          goto LABEL_21;
        }
      }

      inputSourceState = [(RTITextOperations *)self inputSourceState];
      inputSourceState2 = [(RTITextOperations *)v5 inputSourceState];
      v42 = inputSourceState2;
      if (inputSourceState == inputSourceState2)
      {
      }

      else
      {
        inputSourceState3 = [(RTITextOperations *)self inputSourceState];
        inputSourceState4 = [(RTITextOperations *)v5 inputSourceState];
        v45 = [inputSourceState3 isEqual:inputSourceState4];

        if (!v45)
        {
          goto LABEL_21;
        }
      }

      textCheckingAnnotationRange = [(RTITextOperations *)self textCheckingAnnotationRange];
      v48 = v47;
      LOBYTE(v12) = 0;
      if (textCheckingAnnotationRange != [(RTITextOperations *)v5 textCheckingAnnotationRange])
      {
        goto LABEL_22;
      }

      if (v48 != v49)
      {
        goto LABEL_22;
      }

      textCheckingReplacementRange = [(RTITextOperations *)self textCheckingReplacementRange];
      v52 = v51;
      LOBYTE(v12) = 0;
      if (textCheckingReplacementRange != [(RTITextOperations *)v5 textCheckingReplacementRange]|| v52 != v53)
      {
        goto LABEL_22;
      }

      textCheckingAnnotatedString = [(RTITextOperations *)self textCheckingAnnotatedString];
      textCheckingAnnotatedString2 = [(RTITextOperations *)v5 textCheckingAnnotatedString];
      v56 = textCheckingAnnotatedString2;
      if (textCheckingAnnotatedString == textCheckingAnnotatedString2)
      {
      }

      else
      {
        textCheckingAnnotatedString3 = [(RTITextOperations *)self textCheckingAnnotatedString];
        textCheckingAnnotatedString4 = [(RTITextOperations *)v5 textCheckingAnnotatedString];
        v59 = [textCheckingAnnotatedString3 isEqual:textCheckingAnnotatedString4];

        if (!v59)
        {
          goto LABEL_21;
        }
      }

      textCheckingAnnotationRemovalRange = [(RTITextOperations *)self textCheckingAnnotationRemovalRange];
      v62 = v61;
      LOBYTE(v12) = 0;
      if (textCheckingAnnotationRemovalRange != [(RTITextOperations *)v5 textCheckingAnnotationRemovalRange]|| v62 != v63)
      {
        goto LABEL_22;
      }

      textCheckingAnnotationToRemove = [(RTITextOperations *)self textCheckingAnnotationToRemove];
      textCheckingAnnotationToRemove2 = [(RTITextOperations *)v5 textCheckingAnnotationToRemove];
      v66 = textCheckingAnnotationToRemove2;
      if (textCheckingAnnotationToRemove == textCheckingAnnotationToRemove2)
      {
      }

      else
      {
        textCheckingAnnotationToRemove3 = [(RTITextOperations *)self textCheckingAnnotationToRemove];
        textCheckingAnnotationToRemove4 = [(RTITextOperations *)v5 textCheckingAnnotationToRemove];
        v69 = [textCheckingAnnotationToRemove3 isEqual:textCheckingAnnotationToRemove4];

        if (!v69)
        {
          goto LABEL_21;
        }
      }

      customInfoType = [(RTITextOperations *)self customInfoType];
      customInfoType2 = [(RTITextOperations *)v5 customInfoType];
      v72 = customInfoType2;
      if (customInfoType == customInfoType2)
      {
      }

      else
      {
        customInfoType3 = [(RTITextOperations *)self customInfoType];
        customInfoType4 = [(RTITextOperations *)v5 customInfoType];
        v75 = [customInfoType3 isEqual:customInfoType4];

        if (!v75)
        {
          goto LABEL_21;
        }
      }

      customInfo = [(RTITextOperations *)self customInfo];
      customInfo2 = [(RTITextOperations *)v5 customInfo];
      v78 = customInfo2;
      if (customInfo == customInfo2)
      {
      }

      else
      {
        customInfo3 = [(RTITextOperations *)self customInfo];
        customInfo4 = [(RTITextOperations *)v5 customInfo];
        v81 = [customInfo3 isEqual:customInfo4];

        if (!v81)
        {
          goto LABEL_21;
        }
      }

      enumeratedInsertionAnimationStyle = [(RTITextOperations *)self enumeratedInsertionAnimationStyle];
      if (enumeratedInsertionAnimationStyle == [(RTITextOperations *)v5 enumeratedInsertionAnimationStyle])
      {
        fileHandles = [(RTITextOperations *)self fileHandles];
        fileHandles2 = [(RTITextOperations *)v5 fileHandles];
        v85 = fileHandles2;
        if (fileHandles == fileHandles2)
        {
        }

        else
        {
          fileHandles3 = [(RTITextOperations *)self fileHandles];
          v87 = [fileHandles3 count];
          fileHandles4 = [(RTITextOperations *)v5 fileHandles];
          v89 = [fileHandles4 count];

          if (v87 != v89)
          {
            goto LABEL_21;
          }
        }

        typeIdentifiers = [(RTITextOperations *)self typeIdentifiers];
        typeIdentifiers2 = [(RTITextOperations *)v5 typeIdentifiers];
        v92 = typeIdentifiers2;
        if (typeIdentifiers == typeIdentifiers2)
        {
        }

        else
        {
          typeIdentifiers3 = [(RTITextOperations *)self typeIdentifiers];
          typeIdentifiers4 = [(RTITextOperations *)v5 typeIdentifiers];
          v95 = [typeIdentifiers3 isEqualToArray:typeIdentifiers4];

          if (!v95)
          {
            goto LABEL_21;
          }
        }

        imageUserInfos = [(RTITextOperations *)self imageUserInfos];
        imageUserInfos2 = [(RTITextOperations *)v5 imageUserInfos];
        v98 = imageUserInfos2;
        if (imageUserInfos == imageUserInfos2)
        {
        }

        else
        {
          imageUserInfos3 = [(RTITextOperations *)self imageUserInfos];
          imageUserInfos4 = [(RTITextOperations *)v5 imageUserInfos];
          v101 = [imageUserInfos3 isEqualToArray:imageUserInfos4];

          if (!v101)
          {
            goto LABEL_21;
          }
        }

        attachmentDatas = [(RTITextOperations *)self attachmentDatas];
        attachmentDatas2 = [(RTITextOperations *)v5 attachmentDatas];
        v104 = attachmentDatas2;
        if (attachmentDatas == attachmentDatas2)
        {
        }

        else
        {
          attachmentDatas3 = [(RTITextOperations *)self attachmentDatas];
          attachmentDatas4 = [(RTITextOperations *)v5 attachmentDatas];
          v107 = [attachmentDatas3 isEqualToArray:attachmentDatas4];

          if (!v107)
          {
            goto LABEL_21;
          }
        }

        attachmentClasses = [(RTITextOperations *)self attachmentClasses];
        attachmentClasses2 = [(RTITextOperations *)v5 attachmentClasses];
        v110 = attachmentClasses2;
        if (attachmentClasses == attachmentClasses2)
        {
        }

        else
        {
          attachmentClasses3 = [(RTITextOperations *)self attachmentClasses];
          attachmentClasses4 = [(RTITextOperations *)v5 attachmentClasses];
          v113 = [attachmentClasses3 isEqualToArray:attachmentClasses4];

          if (!v113)
          {
            goto LABEL_21;
          }
        }

        imageGlyphs = [(RTITextOperations *)self imageGlyphs];
        imageGlyphs2 = [(RTITextOperations *)v5 imageGlyphs];
        v116 = imageGlyphs2;
        if (imageGlyphs == imageGlyphs2)
        {
        }

        else
        {
          imageGlyphs3 = [(RTITextOperations *)self imageGlyphs];
          imageGlyphs4 = [(RTITextOperations *)v5 imageGlyphs];
          v119 = [imageGlyphs3 isEqualToArray:imageGlyphs4];

          if (!v119)
          {
            goto LABEL_21;
          }
        }

        targetSessionUUID = [(RTITextOperations *)self targetSessionUUID];
        targetSessionUUID2 = [(RTITextOperations *)v5 targetSessionUUID];
        v122 = targetSessionUUID2;
        if (targetSessionUUID == targetSessionUUID2)
        {
        }

        else
        {
          targetSessionUUID3 = [(RTITextOperations *)self targetSessionUUID];
          targetSessionUUID4 = [(RTITextOperations *)v5 targetSessionUUID];
          v125 = [targetSessionUUID3 isEqual:targetSessionUUID4];

          if (!v125)
          {
            goto LABEL_21;
          }
        }

        isExplicitAutoFillInvocation = [(RTITextOperations *)self isExplicitAutoFillInvocation];
        if (isExplicitAutoFillInvocation == [(RTITextOperations *)v5 isExplicitAutoFillInvocation])
        {
          isAutoFillTextOperation = [(RTITextOperations *)self isAutoFillTextOperation];
          v12 = isAutoFillTextOperation ^ [(RTITextOperations *)v5 isAutoFillTextOperation]^ 1;
          goto LABEL_22;
        }
      }

LABEL_21:
      LOBYTE(v12) = 0;
LABEL_22:

      goto LABEL_23;
    }

    LOBYTE(v12) = 0;
  }

LABEL_23:

  return v12;
}

+ (id)customInfoDictionary
{
  if (customInfoDictionary_onceToken_0 != -1)
  {
    +[RTITextOperations customInfoDictionary];
  }

  v3 = customInfoDictionary_customInfoDictionary_0;

  return v3;
}

uint64_t __41__RTITextOperations_customInfoDictionary__block_invoke()
{
  customInfoDictionary_customInfoDictionary_0 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)registerCustomInfoClasses:(id)classes forType:(id)type
{
  typeCopy = type;
  classesCopy = classes;
  [RTIUtilities registerCustomInfoClasses:classesCopy forType:typeCopy forClass:objc_opt_class()];
}

+ (void)unregisterCustomInfoType:(id)type
{
  typeCopy = type;
  [RTIUtilities unregisterCustomInfoType:typeCopy forClass:objc_opt_class()];
}

- (void)insertText:(id)text replacementRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  [(RTITextOperations *)self setSelectionRangeToAssert:location, length];
  keyboardOutput = [(RTITextOperations *)self keyboardOutput];
  [keyboardOutput insertText:textCopy];
}

- (void)_createAttributedPlaceholdersIfNecessary
{
  if (!self->_attributedPlaceholders)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    attributedPlaceholders = self->_attributedPlaceholders;
    self->_attributedPlaceholders = v4;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)insertAttributedText:(id)text
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"NSTextAlternatives";
  v12[1] = @"NSTextAnimation";
  v4 = MEMORY[0x1E695DEC8];
  textCopy = text;
  v6 = [v4 arrayWithObjects:v12 count:2];
  v7 = [RTIUtilities _codableAttributedString:textCopy validAttributes:v6];

  [(RTITextOperations *)self _createAttributedPlaceholdersIfNecessary];
  string = [v7 string];
  mutableAttributedPlaceholders = [(RTITextOperations *)self mutableAttributedPlaceholders];
  [mutableAttributedPlaceholders setObject:v7 forKey:string];

  keyboardOutput = [(RTITextOperations *)self keyboardOutput];
  [keyboardOutput insertText:string];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)insertAttributedText:(id)text replacementRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  [(RTITextOperations *)self setSelectionRangeToAssert:location, length];
  [(RTITextOperations *)self insertAttributedText:textCopy];
}

- (NSAttributedString)attributedInsertionText
{
  if (self->_attributedPlaceholders)
  {
    keyboardOutput = [(RTITextOperations *)self keyboardOutput];
    insertionText = [keyboardOutput insertionText];

    v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:insertionText];
    attributedPlaceholders = self->_attributedPlaceholders;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__RTITextOperations_attributedInsertionText__block_invoke;
    v12[3] = &unk_1E7514B00;
    v13 = insertionText;
    v7 = v5;
    v14 = v7;
    v8 = insertionText;
    [(NSDictionary *)attributedPlaceholders enumerateKeysAndObjectsUsingBlock:v12];
    v9 = v14;
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __44__RTITextOperations_attributedInsertionText__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 rangeOfString:a2];
  v9 = v8;
  v10 = [RTIUtilities _decodableAttributedString:v6];

  [*(a1 + 40) replaceCharactersInRange:v7 withAttributedString:{v9, v10}];
}

- (void)insertImageWithFileHandle:(id)handle typeIdentifier:(id)identifier imageUserInfo:(id)info
{
  handleCopy = handle;
  identifierCopy = identifier;
  infoCopy = info;
  if (!self->_fileHandles)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    [(RTITextOperations *)self setFileHandles:v10];
  }

  if (!self->_typeIdentifiers)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    [(RTITextOperations *)self setTypeIdentifiers:v11];
  }

  if (!self->_imageUserInfos)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    [(RTITextOperations *)self setImageUserInfos:v12];
  }

  fileHandles = [(RTITextOperations *)self fileHandles];
  if ([fileHandles count])
  {
    goto LABEL_10;
  }

  typeIdentifiers = [(RTITextOperations *)self typeIdentifiers];
  if ([typeIdentifiers count])
  {

LABEL_10:
LABEL_11:
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not supporting >1 FileHandle insertion at this time." userInfo:0];
    [v15 raise];

    goto LABEL_12;
  }

  imageUserInfos = [(RTITextOperations *)self imageUserInfos];
  v17 = [imageUserInfos count];

  if (v17)
  {
    goto LABEL_11;
  }

LABEL_12:
  [(NSMutableArray *)self->_fileHandles addObject:handleCopy];
  [(NSMutableArray *)self->_typeIdentifiers addObject:identifierCopy];
  if (!infoCopy)
  {
    infoCopy = MEMORY[0x1E695E0F8];
  }

  [(NSMutableArray *)self->_imageUserInfos addObject:infoCopy];
}

- (void)insertTextAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (attachmentCopy)
  {
    if (!self->_attachmentDatas)
    {
      v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      [(RTITextOperations *)self setAttachmentDatas:v4];
    }

    if (!self->_attachmentClasses)
    {
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      [(RTITextOperations *)self setAttachmentClasses:v5];
    }

    if (!self->_typeIdentifiers)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      [(RTITextOperations *)self setTypeIdentifiers:v6];
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    contents = [attachmentCopy contents];
    fileType = [attachmentCopy fileType];
    if (contents)
    {
      [(NSMutableArray *)self->_attachmentDatas addObject:contents];
      [(NSMutableArray *)self->_attachmentClasses addObject:v8];
      [(NSMutableArray *)self->_typeIdentifiers addObject:fileType];
    }
  }
}

- (void)insertAdaptiveImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (glyphCopy)
  {
    imageGlyphs = self->_imageGlyphs;
    v7 = glyphCopy;
    if (!imageGlyphs)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      [(RTITextOperations *)self setImageGlyphs:v6];

      imageGlyphs = self->_imageGlyphs;
    }

    [(NSMutableArray *)imageGlyphs addObject:v7];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)enumerateImagesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    fileHandles = self->_fileHandles;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__RTITextOperations_enumerateImagesUsingBlock___block_invoke;
    v7[3] = &unk_1E7514B28;
    v7[4] = self;
    v8 = blockCopy;
    [(NSMutableArray *)fileHandles enumerateObjectsUsingBlock:v7];
  }
}

void __47__RTITextOperations_enumerateImagesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 72);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

- (void)enumerateImagesAndUserInfosUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    fileHandles = self->_fileHandles;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__RTITextOperations_enumerateImagesAndUserInfosUsingBlock___block_invoke;
    v7[3] = &unk_1E7514B28;
    v7[4] = self;
    v8 = blockCopy;
    [(NSMutableArray *)fileHandles enumerateObjectsUsingBlock:v7];
  }
}

void __59__RTITextOperations_enumerateImagesAndUserInfosUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 72);
  v6 = a2;
  v8 = [v5 objectAtIndexedSubscript:a3];
  v7 = [*(*(a1 + 32) + 80) objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

- (void)enumerateTextAttachmentsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    attachmentDatas = self->_attachmentDatas;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__RTITextOperations_enumerateTextAttachmentsUsingBlock___block_invoke;
    v7[3] = &unk_1E7514B50;
    v7[4] = self;
    v8 = blockCopy;
    [(NSMutableArray *)attachmentDatas enumerateObjectsUsingBlock:v7];
  }
}

void __56__RTITextOperations_enumerateTextAttachmentsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(a1 + 32) + 96) objectAtIndexedSubscript:a3];
  if ([(NSString *)v6 isEqualToString:@"NSEmojiImageTextAttachment"])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v7 = getNSEmojiImageTextAttachmentClass_softClass;
    v15 = getNSEmojiImageTextAttachmentClass_softClass;
    if (!getNSEmojiImageTextAttachmentClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getNSEmojiImageTextAttachmentClass_block_invoke;
      v11[3] = &unk_1E75144B0;
      v11[4] = &v12;
      __getNSEmojiImageTextAttachmentClass_block_invoke(v11);
      v7 = v13[3];
    }

    v8 = v7;
    _Block_object_dispose(&v12, 8);
    v9 = [[v7 alloc] initWithData:v5];
  }

  else
  {
    v10 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:a3];
    v9 = [objc_alloc(NSClassFromString(v6)) initWithData:v5 ofType:v10];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)enumerateAdaptiveImageGlyphsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    imageGlyphs = self->_imageGlyphs;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__RTITextOperations_enumerateAdaptiveImageGlyphsUsingBlock___block_invoke;
    v7[3] = &unk_1E7514B78;
    v8 = blockCopy;
    [(NSMutableArray *)imageGlyphs enumerateObjectsUsingBlock:v7];
  }
}

- (_NSRange)selectionRangeToAssert
{
  length = self->_selectionRangeToAssert.length;
  location = self->_selectionRangeToAssert.location;
  result.length = length;
  result.location = location;
  return result;
}

- (SEL)editingActionSelector
{
  if (self->_editingActionSelector)
  {
    return self->_editingActionSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setEditingActionSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_editingActionSelector = selectorCopy;
}

- (_NSRange)textCheckingAnnotationRange
{
  length = self->_textCheckingAnnotationRange.length;
  location = self->_textCheckingAnnotationRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)textCheckingReplacementRange
{
  length = self->_textCheckingReplacementRange.length;
  location = self->_textCheckingReplacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)textCheckingAnnotationRemovalRange
{
  length = self->_textCheckingAnnotationRemovalRange.length;
  location = self->_textCheckingAnnotationRemovalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[RTITextOperations encodeWithCoder:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_19A2A6000, a2, OS_LOG_TYPE_ERROR, "%s  RTITextOperations with textCheckingAnnotatedString: non-serializable string encountered: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end