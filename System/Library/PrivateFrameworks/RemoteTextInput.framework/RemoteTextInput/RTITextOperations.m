@interface RTITextOperations
+ (id)customInfoDictionary;
+ (void)registerCustomInfoClasses:(id)a3 forType:(id)a4;
+ (void)unregisterCustomInfoType:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSAttributedString)attributedInsertionText;
- (NSString)description;
- (RTITextOperations)initWithCoder:(id)a3;
- (RTITextOperations)initWithTargetSessionUUID:(id)a3;
- (SEL)editingActionSelector;
- (_NSRange)selectionRangeToAssert;
- (_NSRange)textCheckingAnnotationRange;
- (_NSRange)textCheckingAnnotationRemovalRange;
- (_NSRange)textCheckingReplacementRange;
- (void)_createAttributedPlaceholdersIfNecessary;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAdaptiveImageGlyphsUsingBlock:(id)a3;
- (void)enumerateImagesAndUserInfosUsingBlock:(id)a3;
- (void)enumerateImagesUsingBlock:(id)a3;
- (void)enumerateTextAttachmentsUsingBlock:(id)a3;
- (void)insertAdaptiveImageGlyph:(id)a3;
- (void)insertAttributedText:(id)a3;
- (void)insertAttributedText:(id)a3 replacementRange:(_NSRange)a4;
- (void)insertImageWithFileHandle:(id)a3 typeIdentifier:(id)a4 imageUserInfo:(id)a5;
- (void)insertText:(id)a3 replacementRange:(_NSRange)a4;
- (void)insertTextAttachment:(id)a3;
- (void)setEditingActionSelector:(SEL)a3;
@end

@implementation RTITextOperations

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  keyboardOutput = self->_keyboardOutput;
  if (keyboardOutput)
  {
    [v4 encodeObject:keyboardOutput forKey:@"keyboardOutput"];
  }

  intermediateText = self->_intermediateText;
  if (intermediateText)
  {
    [v4 encodeObject:intermediateText forKey:@"intermediateText"];
  }

  styledIntermediateText = self->_styledIntermediateText;
  if (styledIntermediateText)
  {
    [v4 encodeObject:styledIntermediateText forKey:@"styledIntermediateText"];
  }

  textToAssert = self->_textToAssert;
  if (textToAssert)
  {
    [v4 encodeObject:textToAssert forKey:@"textToAssert"];
  }

  if (self->_selectionRangeToAssert.location != 0x7FFFFFFFFFFFFFFFLL || self->_selectionRangeToAssert.length)
  {
    v9 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v4 encodeObject:v9 forKey:@"selectionRangeToAssert"];
  }

  editingActionSelector = self->_editingActionSelector;
  if (editingActionSelector)
  {
    v11 = self->_editingActionSelector;
    v12 = NSStringFromSelector(editingActionSelector);
    [v4 encodeObject:v12 forKey:@"editingActionSelector"];
  }

  multilingualLanguages = self->_multilingualLanguages;
  if (multilingualLanguages)
  {
    [v4 encodeObject:multilingualLanguages forKey:@"multilingualLanguages"];
  }

  inputSourceState = self->_inputSourceState;
  if (inputSourceState)
  {
    [v4 encodeObject:inputSourceState forKey:@"inputSourceState"];
  }

  attributedPlaceholders = self->_attributedPlaceholders;
  if (attributedPlaceholders)
  {
    [v4 encodeObject:attributedPlaceholders forKey:@"attributedPlaceholders"];
  }

  enumeratedInsertionAnimationStyle = self->_enumeratedInsertionAnimationStyle;
  if (enumeratedInsertionAnimationStyle)
  {
    [v4 encodeInteger:enumeratedInsertionAnimationStyle forKey:@"insertionAnimationStyle"];
  }

  textCheckingAnnotatedString = self->_textCheckingAnnotatedString;
  if (textCheckingAnnotatedString)
  {
    v18 = +[RTIUtilities _textAnnotationAttributes];
    v19 = [(NSAttributedString *)textCheckingAnnotatedString _ti_attributedStringByKeepingAttributes:v18];

    [v4 encodeObject:v19 forKey:@"textCheckingAnnotatedString"];
  }

  if (self->_textCheckingAnnotationRange.location != 0x7FFFFFFFFFFFFFFFLL || self->_textCheckingAnnotationRange.length)
  {
    v20 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v4 encodeObject:v20 forKey:@"textCheckingAnnotationRange"];
  }

  if (self->_textCheckingReplacementRange.location != 0x7FFFFFFFFFFFFFFFLL || self->_textCheckingReplacementRange.length)
  {
    v21 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v4 encodeObject:v21 forKey:@"textCheckingReplacementRange"];
  }

  if (self->_textCheckingAnnotationRemovalRange.location != 0x7FFFFFFFFFFFFFFFLL || self->_textCheckingAnnotationRemovalRange.length)
  {
    v22 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v4 encodeObject:v22 forKey:@"textCheckingAnnotationRemovalRange"];
  }

  textCheckingAnnotationToRemove = self->_textCheckingAnnotationToRemove;
  if (textCheckingAnnotationToRemove)
  {
    [v4 encodeObject:textCheckingAnnotationToRemove forKey:@"textCheckingAnnotationToRemove"];
  }

  customInfoType = self->_customInfoType;
  if (customInfoType)
  {
    [v4 encodeObject:customInfoType forKey:@"customInfoType"];
  }

  customInfo = self->_customInfo;
  if (customInfo)
  {
    [v4 encodeObject:customInfo forKey:@"customInfo"];
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
          [v4 encodeObject:self->_fileHandles forKey:@"fileHandles"];
          [v4 encodeObject:self->_typeIdentifiers forKey:@"typeIdentifiers"];
          [v4 encodeObject:self->_imageUserInfos forKey:@"imgUserInfo"];
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
            [v4 encodeObject:self->_attachmentDatas forKey:@"attachmentDatas"];
            [v4 encodeObject:self->_attachmentClasses forKey:@"attachmentClasses"];
            [v4 encodeObject:self->_typeIdentifiers forKey:@"typeIdentifiers"];
          }
        }
      }
    }
  }

  imageGlyphs = self->_imageGlyphs;
  if (imageGlyphs)
  {
    [v4 encodeObject:imageGlyphs forKey:@"imageGlyphs"];
  }

  targetSessionUUID = self->_targetSessionUUID;
  if (targetSessionUUID)
  {
    [v4 encodeObject:targetSessionUUID forKey:@"targetSessionUUID"];
  }

  [v4 encodeBool:self->_isExplicitAutoFillInvocation forKey:@"isExplicitAutoFillInvocation"];
  [v4 encodeBool:self->_isAutoFillTextOperation forKey:@"isAutoFillTextOperation"];
}

- (RTITextOperations)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v5 = [(RTITextOperations *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyboardOutput"];
    keyboardOutput = v5->_keyboardOutput;
    v5->_keyboardOutput = v6;

    if (!v5->_keyboardOutput)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69D9638]);
      v9 = v5->_keyboardOutput;
      v5->_keyboardOutput = v8;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intermediateText"];
    intermediateText = v5->_intermediateText;
    v5->_intermediateText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"styledIntermediateText"];
    styledIntermediateText = v5->_styledIntermediateText;
    v5->_styledIntermediateText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textToAssert"];
    v15 = [v14 copy];
    textToAssert = v5->_textToAssert;
    v5->_textToAssert = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectionRangeToAssert"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 rangeValue];
    }

    else
    {
      v20 = 0;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_selectionRangeToAssert.location = v19;
    v5->_selectionRangeToAssert.length = v20;
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"editingActionSelector"];
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
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"multilingualLanguages"];
    multilingualLanguages = v5->_multilingualLanguages;
    v5->_multilingualLanguages = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputSourceState"];
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
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"attributedPlaceholders"];
    attributedPlaceholders = v5->_attributedPlaceholders;
    v5->_attributedPlaceholders = v39;

    v5->_enumeratedInsertionAnimationStyle = [v4 decodeIntegerForKey:@"insertionAnimationStyle"];
    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotationRange"];
    v107 = v41;
    if (v41)
    {
      v42 = [v41 rangeValue];
    }

    else
    {
      v43 = 0;
      v42 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_textCheckingAnnotationRange.location = v42;
    v5->_textCheckingAnnotationRange.length = v43;
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingReplacementRange"];
    v106 = v44;
    if (v44)
    {
      v45 = [v44 rangeValue];
    }

    else
    {
      v46 = 0;
      v45 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_textCheckingReplacementRange.location = v45;
    v5->_textCheckingReplacementRange.length = v46;
    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotatedString"];
    textCheckingAnnotatedString = v5->_textCheckingAnnotatedString;
    v5->_textCheckingAnnotatedString = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotationRemovalRange"];
    v105 = v49;
    if (v49)
    {
      v50 = [v49 rangeValue];
    }

    else
    {
      v51 = 0;
      v50 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_textCheckingAnnotationRemovalRange.location = v50;
    v5->_textCheckingAnnotationRemovalRange.length = v51;
    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textCheckingAnnotationToRemove"];
    textCheckingAnnotationToRemove = v5->_textCheckingAnnotationToRemove;
    v5->_textCheckingAnnotationToRemove = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customInfoType"];
    customInfoType = v5->_customInfoType;
    v5->_customInfoType = v54;

    v56 = v5->_customInfoType;
    if (v56)
    {
      v57 = [RTIUtilities customInfoClassesForType:v56 forClass:objc_opt_class()];
      if ([v57 count])
      {
        v58 = [v4 decodeObjectOfClasses:v57 forKey:@"customInfo"];
        customInfo = v5->_customInfo;
        v5->_customInfo = v58;
      }
    }

    v108 = v18;
    v60 = MEMORY[0x1E695DFD8];
    v61 = objc_opt_class();
    v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
    v63 = [v4 decodeObjectOfClasses:v62 forKey:@"fileHandles"];
    v64 = [v63 mutableCopy];
    fileHandles = v5->_fileHandles;
    v5->_fileHandles = v64;

    v66 = MEMORY[0x1E695DFD8];
    v67 = objc_opt_class();
    v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
    v69 = [v4 decodeObjectOfClasses:v68 forKey:@"typeIdentifiers"];
    v70 = [v69 mutableCopy];
    typeIdentifiers = v5->_typeIdentifiers;
    v5->_typeIdentifiers = v70;

    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v76 = objc_opt_class();
    v77 = [v72 setWithObjects:{v73, v74, v75, v76, objc_opt_class(), 0}];
    v78 = [v4 decodeObjectOfClasses:v77 forKey:@"imgUserInfo"];
    v79 = [v78 mutableCopy];
    imageUserInfos = v5->_imageUserInfos;
    v5->_imageUserInfos = v79;

    v81 = MEMORY[0x1E695DFD8];
    v82 = objc_opt_class();
    v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
    v84 = [v4 decodeObjectOfClasses:v83 forKey:@"attachmentDatas"];
    v85 = [v84 mutableCopy];
    attachmentDatas = v5->_attachmentDatas;
    v5->_attachmentDatas = v85;

    v87 = MEMORY[0x1E695DFD8];
    v88 = objc_opt_class();
    v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
    v90 = [v4 decodeObjectOfClasses:v89 forKey:@"attachmentClasses"];
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
    v99 = [v4 decodeObjectOfClasses:v98 forKey:@"imageGlyphs"];
    v100 = [v99 mutableCopy];
    imageGlyphs = v5->_imageGlyphs;
    v5->_imageGlyphs = v100;

    v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetSessionUUID"];
    targetSessionUUID = v5->_targetSessionUUID;
    v5->_targetSessionUUID = v102;

    v5->_isExplicitAutoFillInvocation = [v4 decodeBoolForKey:@"isExplicitAutoFillInvocation"];
    v5->_isAutoFillTextOperation = [v4 decodeBoolForKey:@"isAutoFillTextOperation"];
  }

  return v5;
}

- (RTITextOperations)initWithTargetSessionUUID:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_targetSessionUUID, a3);
  }

  return v6;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(RTITextOperations *)self keyboardOutput];
  [v3 appendFormat:@"; keyboardOutput = %@", v4];

  v5 = [(RTITextOperations *)self intermediateText];

  if (v5)
  {
    v6 = [(RTITextOperations *)self intermediateText];
    [v3 appendFormat:@"; intermediateText = %@", v6];
  }

  v7 = [(RTITextOperations *)self styledIntermediateText];

  if (v7)
  {
    v8 = [(RTITextOperations *)self styledIntermediateText];
    [v3 appendFormat:@"; styledIntermediateText = %@", v8];
  }

  v9 = [(RTITextOperations *)self textToAssert];

  if (v9)
  {
    v10 = [(RTITextOperations *)self textToAssert];
    [v3 appendFormat:@"; textToAssert = %@", v10];
  }

  if ([(RTITextOperations *)self selectionRangeToAssert]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = MEMORY[0x1E696B098];
    v12 = [(RTITextOperations *)self selectionRangeToAssert];
    v14 = [v11 valueWithRange:{v12, v13}];
    [v3 appendFormat:@"; selectionRangeToAssert = %@", v14];
  }

  if ([(RTITextOperations *)self editingActionSelector])
  {
    v15 = NSStringFromSelector([(RTITextOperations *)self editingActionSelector]);
    [v3 appendFormat:@"; editingActionSelector = %@", v15];
  }

  v16 = [(RTITextOperations *)self multilingualLanguages];

  if (v16)
  {
    v17 = [(RTITextOperations *)self multilingualLanguages];
    [v3 appendFormat:@"; multilingualLanguages = %@", v17];
  }

  v18 = [(RTITextOperations *)self inputSourceState];

  if (v18)
  {
    v19 = [(RTITextOperations *)self inputSourceState];
    [v3 appendFormat:@"; inputSourceState = %@", v19];
  }

  if ([(RTITextOperations *)self textCheckingAnnotationRange]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = MEMORY[0x1E696B098];
    v21 = [(RTITextOperations *)self textCheckingAnnotationRange];
    v23 = [v20 valueWithRange:{v21, v22}];
    [v3 appendFormat:@"; textCheckingAnnotationRange = %@", v23];
  }

  if ([(RTITextOperations *)self textCheckingReplacementRange]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = MEMORY[0x1E696B098];
    v25 = [(RTITextOperations *)self textCheckingReplacementRange];
    v27 = [v24 valueWithRange:{v25, v26}];
    [v3 appendFormat:@"; textCheckingReplacementRange = %@", v27];
  }

  v28 = [(RTITextOperations *)self textCheckingAnnotatedString];

  if (v28)
  {
    v29 = [(RTITextOperations *)self textCheckingAnnotatedString];
    [v3 appendFormat:@"; textCheckingAnnotatedString = %p", v29];
  }

  if ([(RTITextOperations *)self textCheckingAnnotationRemovalRange]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = MEMORY[0x1E696B098];
    v31 = [(RTITextOperations *)self textCheckingAnnotationRemovalRange];
    v33 = [v30 valueWithRange:{v31, v32}];
    [v3 appendFormat:@"; textCheckingAnnotationRemovalRange = %@", v33];
  }

  v34 = [(RTITextOperations *)self textCheckingAnnotationToRemove];

  if (v34)
  {
    v35 = [(RTITextOperations *)self textCheckingAnnotationToRemove];
    [v3 appendFormat:@"; textCheckingAnnotationToRemove = %@", v35];
  }

  v36 = [(RTITextOperations *)self customInfoType];

  if (v36)
  {
    v37 = [(RTITextOperations *)self customInfoType];
    [v3 appendFormat:@"; customInfoType = %@", v37];
  }

  v38 = [(RTITextOperations *)self customInfo];

  if (v38)
  {
    v39 = [(RTITextOperations *)self customInfo];
    [v3 appendFormat:@"; customInfo = %@", v39];
  }

  if ([(RTITextOperations *)self enumeratedInsertionAnimationStyle])
  {
    [v3 appendFormat:@"; enumeratedInsertionAnimationStyle = %ld", -[RTITextOperations enumeratedInsertionAnimationStyle](self, "enumeratedInsertionAnimationStyle")];
  }

  v40 = [(RTITextOperations *)self fileHandles];
  if ([v40 count])
  {
    v41 = [(RTITextOperations *)self typeIdentifiers];
    v42 = [v41 count];

    if (!v42)
    {
      goto LABEL_35;
    }

    v40 = [(RTITextOperations *)self typeIdentifiers];
    [v3 appendFormat:@"; fileHandles with types = %@", v40];
  }

LABEL_35:
  v43 = [(RTITextOperations *)self attachmentDatas];
  if ([v43 count])
  {
    v44 = [(RTITextOperations *)self attachmentClasses];
    v45 = [v44 count];

    if (!v45)
    {
      goto LABEL_39;
    }

    v43 = [(RTITextOperations *)self attachmentClasses];
    [v3 appendFormat:@"; textAttachments = %@", v43];
  }

LABEL_39:
  v46 = [(RTITextOperations *)self imageGlyphs];
  v47 = [v46 count];

  if (v47)
  {
    v48 = [(RTITextOperations *)self imageGlyphs];
    [v3 appendFormat:@"; %lu adaptiveImageGlyphs", objc_msgSend(v48, "count")];
  }

  v49 = [(RTITextOperations *)self targetSessionUUID];
  [v3 appendFormat:@"; targetSessionUUID = %@", v49];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTITextOperations *)self keyboardOutput];
      v7 = [(RTITextOperations *)v5 keyboardOutput];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(RTITextOperations *)self keyboardOutput];
        v10 = [(RTITextOperations *)v5 keyboardOutput];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_21;
        }
      }

      v13 = [(RTITextOperations *)self intermediateText];
      v14 = [(RTITextOperations *)v5 intermediateText];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(RTITextOperations *)self intermediateText];
        v17 = [(RTITextOperations *)v5 intermediateText];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
          goto LABEL_21;
        }
      }

      v19 = [(RTITextOperations *)self styledIntermediateText];
      v20 = [(RTITextOperations *)v5 styledIntermediateText];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(RTITextOperations *)self styledIntermediateText];
        v23 = [(RTITextOperations *)v5 styledIntermediateText];
        v24 = [v22 isEqual:v23];

        if (!v24)
        {
          goto LABEL_21;
        }
      }

      v25 = MEMORY[0x1E696AEC0];
      v26 = [(RTITextOperations *)self textToAssert];
      v27 = [(RTITextOperations *)v5 textToAssert];
      v12 = [v25 _string:v26 matchesString:v27];

      if (!v12)
      {
        goto LABEL_22;
      }

      v28 = [(RTITextOperations *)self selectionRangeToAssert];
      v30 = v29;
      LOBYTE(v12) = 0;
      if (v28 != [(RTITextOperations *)v5 selectionRangeToAssert]|| v30 != v31)
      {
        goto LABEL_22;
      }

      v32 = [(RTITextOperations *)self editingActionSelector];
      if (v32 != [(RTITextOperations *)v5 editingActionSelector])
      {
        goto LABEL_21;
      }

      v34 = [(RTITextOperations *)self multilingualLanguages];
      v35 = [(RTITextOperations *)v5 multilingualLanguages];
      v36 = v35;
      if (v34 == v35)
      {
      }

      else
      {
        v37 = [(RTITextOperations *)self multilingualLanguages];
        v38 = [(RTITextOperations *)v5 multilingualLanguages];
        v39 = [v37 isEqualToArray:v38];

        if (!v39)
        {
          goto LABEL_21;
        }
      }

      v40 = [(RTITextOperations *)self inputSourceState];
      v41 = [(RTITextOperations *)v5 inputSourceState];
      v42 = v41;
      if (v40 == v41)
      {
      }

      else
      {
        v43 = [(RTITextOperations *)self inputSourceState];
        v44 = [(RTITextOperations *)v5 inputSourceState];
        v45 = [v43 isEqual:v44];

        if (!v45)
        {
          goto LABEL_21;
        }
      }

      v46 = [(RTITextOperations *)self textCheckingAnnotationRange];
      v48 = v47;
      LOBYTE(v12) = 0;
      if (v46 != [(RTITextOperations *)v5 textCheckingAnnotationRange])
      {
        goto LABEL_22;
      }

      if (v48 != v49)
      {
        goto LABEL_22;
      }

      v50 = [(RTITextOperations *)self textCheckingReplacementRange];
      v52 = v51;
      LOBYTE(v12) = 0;
      if (v50 != [(RTITextOperations *)v5 textCheckingReplacementRange]|| v52 != v53)
      {
        goto LABEL_22;
      }

      v54 = [(RTITextOperations *)self textCheckingAnnotatedString];
      v55 = [(RTITextOperations *)v5 textCheckingAnnotatedString];
      v56 = v55;
      if (v54 == v55)
      {
      }

      else
      {
        v57 = [(RTITextOperations *)self textCheckingAnnotatedString];
        v58 = [(RTITextOperations *)v5 textCheckingAnnotatedString];
        v59 = [v57 isEqual:v58];

        if (!v59)
        {
          goto LABEL_21;
        }
      }

      v60 = [(RTITextOperations *)self textCheckingAnnotationRemovalRange];
      v62 = v61;
      LOBYTE(v12) = 0;
      if (v60 != [(RTITextOperations *)v5 textCheckingAnnotationRemovalRange]|| v62 != v63)
      {
        goto LABEL_22;
      }

      v64 = [(RTITextOperations *)self textCheckingAnnotationToRemove];
      v65 = [(RTITextOperations *)v5 textCheckingAnnotationToRemove];
      v66 = v65;
      if (v64 == v65)
      {
      }

      else
      {
        v67 = [(RTITextOperations *)self textCheckingAnnotationToRemove];
        v68 = [(RTITextOperations *)v5 textCheckingAnnotationToRemove];
        v69 = [v67 isEqual:v68];

        if (!v69)
        {
          goto LABEL_21;
        }
      }

      v70 = [(RTITextOperations *)self customInfoType];
      v71 = [(RTITextOperations *)v5 customInfoType];
      v72 = v71;
      if (v70 == v71)
      {
      }

      else
      {
        v73 = [(RTITextOperations *)self customInfoType];
        v74 = [(RTITextOperations *)v5 customInfoType];
        v75 = [v73 isEqual:v74];

        if (!v75)
        {
          goto LABEL_21;
        }
      }

      v76 = [(RTITextOperations *)self customInfo];
      v77 = [(RTITextOperations *)v5 customInfo];
      v78 = v77;
      if (v76 == v77)
      {
      }

      else
      {
        v79 = [(RTITextOperations *)self customInfo];
        v80 = [(RTITextOperations *)v5 customInfo];
        v81 = [v79 isEqual:v80];

        if (!v81)
        {
          goto LABEL_21;
        }
      }

      v82 = [(RTITextOperations *)self enumeratedInsertionAnimationStyle];
      if (v82 == [(RTITextOperations *)v5 enumeratedInsertionAnimationStyle])
      {
        v83 = [(RTITextOperations *)self fileHandles];
        v84 = [(RTITextOperations *)v5 fileHandles];
        v85 = v84;
        if (v83 == v84)
        {
        }

        else
        {
          v86 = [(RTITextOperations *)self fileHandles];
          v87 = [v86 count];
          v88 = [(RTITextOperations *)v5 fileHandles];
          v89 = [v88 count];

          if (v87 != v89)
          {
            goto LABEL_21;
          }
        }

        v90 = [(RTITextOperations *)self typeIdentifiers];
        v91 = [(RTITextOperations *)v5 typeIdentifiers];
        v92 = v91;
        if (v90 == v91)
        {
        }

        else
        {
          v93 = [(RTITextOperations *)self typeIdentifiers];
          v94 = [(RTITextOperations *)v5 typeIdentifiers];
          v95 = [v93 isEqualToArray:v94];

          if (!v95)
          {
            goto LABEL_21;
          }
        }

        v96 = [(RTITextOperations *)self imageUserInfos];
        v97 = [(RTITextOperations *)v5 imageUserInfos];
        v98 = v97;
        if (v96 == v97)
        {
        }

        else
        {
          v99 = [(RTITextOperations *)self imageUserInfos];
          v100 = [(RTITextOperations *)v5 imageUserInfos];
          v101 = [v99 isEqualToArray:v100];

          if (!v101)
          {
            goto LABEL_21;
          }
        }

        v102 = [(RTITextOperations *)self attachmentDatas];
        v103 = [(RTITextOperations *)v5 attachmentDatas];
        v104 = v103;
        if (v102 == v103)
        {
        }

        else
        {
          v105 = [(RTITextOperations *)self attachmentDatas];
          v106 = [(RTITextOperations *)v5 attachmentDatas];
          v107 = [v105 isEqualToArray:v106];

          if (!v107)
          {
            goto LABEL_21;
          }
        }

        v108 = [(RTITextOperations *)self attachmentClasses];
        v109 = [(RTITextOperations *)v5 attachmentClasses];
        v110 = v109;
        if (v108 == v109)
        {
        }

        else
        {
          v111 = [(RTITextOperations *)self attachmentClasses];
          v112 = [(RTITextOperations *)v5 attachmentClasses];
          v113 = [v111 isEqualToArray:v112];

          if (!v113)
          {
            goto LABEL_21;
          }
        }

        v114 = [(RTITextOperations *)self imageGlyphs];
        v115 = [(RTITextOperations *)v5 imageGlyphs];
        v116 = v115;
        if (v114 == v115)
        {
        }

        else
        {
          v117 = [(RTITextOperations *)self imageGlyphs];
          v118 = [(RTITextOperations *)v5 imageGlyphs];
          v119 = [v117 isEqualToArray:v118];

          if (!v119)
          {
            goto LABEL_21;
          }
        }

        v120 = [(RTITextOperations *)self targetSessionUUID];
        v121 = [(RTITextOperations *)v5 targetSessionUUID];
        v122 = v121;
        if (v120 == v121)
        {
        }

        else
        {
          v123 = [(RTITextOperations *)self targetSessionUUID];
          v124 = [(RTITextOperations *)v5 targetSessionUUID];
          v125 = [v123 isEqual:v124];

          if (!v125)
          {
            goto LABEL_21;
          }
        }

        v126 = [(RTITextOperations *)self isExplicitAutoFillInvocation];
        if (v126 == [(RTITextOperations *)v5 isExplicitAutoFillInvocation])
        {
          v127 = [(RTITextOperations *)self isAutoFillTextOperation];
          v12 = v127 ^ [(RTITextOperations *)v5 isAutoFillTextOperation]^ 1;
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

+ (void)registerCustomInfoClasses:(id)a3 forType:(id)a4
{
  v5 = a4;
  v6 = a3;
  [RTIUtilities registerCustomInfoClasses:v6 forType:v5 forClass:objc_opt_class()];
}

+ (void)unregisterCustomInfoType:(id)a3
{
  v3 = a3;
  [RTIUtilities unregisterCustomInfoType:v3 forClass:objc_opt_class()];
}

- (void)insertText:(id)a3 replacementRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  [(RTITextOperations *)self setSelectionRangeToAssert:location, length];
  v8 = [(RTITextOperations *)self keyboardOutput];
  [v8 insertText:v7];
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

- (void)insertAttributedText:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"NSTextAlternatives";
  v12[1] = @"NSTextAnimation";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v12 count:2];
  v7 = [RTIUtilities _codableAttributedString:v5 validAttributes:v6];

  [(RTITextOperations *)self _createAttributedPlaceholdersIfNecessary];
  v8 = [v7 string];
  v9 = [(RTITextOperations *)self mutableAttributedPlaceholders];
  [v9 setObject:v7 forKey:v8];

  v10 = [(RTITextOperations *)self keyboardOutput];
  [v10 insertText:v8];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)insertAttributedText:(id)a3 replacementRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  [(RTITextOperations *)self setSelectionRangeToAssert:location, length];
  [(RTITextOperations *)self insertAttributedText:v7];
}

- (NSAttributedString)attributedInsertionText
{
  if (self->_attributedPlaceholders)
  {
    v3 = [(RTITextOperations *)self keyboardOutput];
    v4 = [v3 insertionText];

    v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4];
    attributedPlaceholders = self->_attributedPlaceholders;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__RTITextOperations_attributedInsertionText__block_invoke;
    v12[3] = &unk_1E7514B00;
    v13 = v4;
    v7 = v5;
    v14 = v7;
    v8 = v4;
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

- (void)insertImageWithFileHandle:(id)a3 typeIdentifier:(id)a4 imageUserInfo:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
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

  v13 = [(RTITextOperations *)self fileHandles];
  if ([v13 count])
  {
    goto LABEL_10;
  }

  v14 = [(RTITextOperations *)self typeIdentifiers];
  if ([v14 count])
  {

LABEL_10:
LABEL_11:
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not supporting >1 FileHandle insertion at this time." userInfo:0];
    [v15 raise];

    goto LABEL_12;
  }

  v16 = [(RTITextOperations *)self imageUserInfos];
  v17 = [v16 count];

  if (v17)
  {
    goto LABEL_11;
  }

LABEL_12:
  [(NSMutableArray *)self->_fileHandles addObject:v18];
  [(NSMutableArray *)self->_typeIdentifiers addObject:v8];
  if (!v9)
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  [(NSMutableArray *)self->_imageUserInfos addObject:v9];
}

- (void)insertTextAttachment:(id)a3
{
  v11 = a3;
  if (v11)
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
    v9 = [v11 contents];
    v10 = [v11 fileType];
    if (v9)
    {
      [(NSMutableArray *)self->_attachmentDatas addObject:v9];
      [(NSMutableArray *)self->_attachmentClasses addObject:v8];
      [(NSMutableArray *)self->_typeIdentifiers addObject:v10];
    }
  }
}

- (void)insertAdaptiveImageGlyph:(id)a3
{
  v4 = a3;
  if (v4)
  {
    imageGlyphs = self->_imageGlyphs;
    v7 = v4;
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

- (void)enumerateImagesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    fileHandles = self->_fileHandles;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__RTITextOperations_enumerateImagesUsingBlock___block_invoke;
    v7[3] = &unk_1E7514B28;
    v7[4] = self;
    v8 = v4;
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

- (void)enumerateImagesAndUserInfosUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    fileHandles = self->_fileHandles;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__RTITextOperations_enumerateImagesAndUserInfosUsingBlock___block_invoke;
    v7[3] = &unk_1E7514B28;
    v7[4] = self;
    v8 = v4;
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

- (void)enumerateTextAttachmentsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    attachmentDatas = self->_attachmentDatas;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__RTITextOperations_enumerateTextAttachmentsUsingBlock___block_invoke;
    v7[3] = &unk_1E7514B50;
    v7[4] = self;
    v8 = v4;
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

- (void)enumerateAdaptiveImageGlyphsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    imageGlyphs = self->_imageGlyphs;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__RTITextOperations_enumerateAdaptiveImageGlyphsUsingBlock___block_invoke;
    v7[3] = &unk_1E7514B78;
    v8 = v4;
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

- (void)setEditingActionSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_editingActionSelector = v3;
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