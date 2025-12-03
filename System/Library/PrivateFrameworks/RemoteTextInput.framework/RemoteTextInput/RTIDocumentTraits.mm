@interface RTIDocumentTraits
- (BOOL)isEqual:(id)equal;
- (RTIDocumentTraits)init;
- (RTIDocumentTraits)initWithCoder:(id)coder;
- (_NSRange)validTextRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)copyContextualPropertiesFromDocumentTraits:(id)traits;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDevicePasscodeEntry:(BOOL)entry;
- (void)setDisableAutomaticKeyboardUI:(BOOL)i;
- (void)setDisableInputBars:(BOOL)bars;
- (void)setDisablePrediction:(BOOL)prediction;
- (void)setExplicitAutoFillMode:(BOOL)mode;
- (void)setHidePrediction:(BOOL)prediction;
- (void)setShouldReverseLayoutDirection:(BOOL)direction;
- (void)setSingleLineDocument:(BOOL)document;
- (void)setSupportsAdaptiveImageGlyph:(BOOL)glyph;
- (void)setSupportsEmojiImageTextAttachments:(BOOL)attachments;
- (void)setSupportsGenmojiCreation:(BOOL)creation;
- (void)setSupportsImagePaste:(BOOL)paste;
@end

@implementation RTIDocumentTraits

- (RTIDocumentTraits)init
{
  v6.receiver = self;
  v6.super_class = RTIDocumentTraits;
  v2 = [(RTIDocumentTraits *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D96E0]);
    textInputTraits = v2->_textInputTraits;
    v2->_textInputTraits = v3;

    v2->_validTextRange = xmmword_19A2CBC90;
    v2->_autofillMode = 0;
    v2->_autofillSubMode = 0;
    v2->_delegateConformanceType = 23;
  }

  return v2;
}

- (void)dealloc
{
  [(CAFenceHandle *)self->_fenceHandle invalidate];
  v3.receiver = self;
  v3.super_class = RTIDocumentTraits;
  [(RTIDocumentTraits *)&v3 dealloc];
}

- (void)setSupportsImagePaste:(BOOL)paste
{
  if (paste)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFFD | v3;
}

- (void)setSupportsEmojiImageTextAttachments:(BOOL)attachments
{
  if (attachments)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFBFF | v3;
}

- (void)setSupportsAdaptiveImageGlyph:(BOOL)glyph
{
  if (glyph)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFBFF | v3;
}

- (void)setSupportsGenmojiCreation:(BOOL)creation
{
  if (creation)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xF7FF | v3;
}

- (void)setDevicePasscodeEntry:(BOOL)entry
{
  if (entry)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFFB | v3;
}

- (void)setDisableInputBars:(BOOL)bars
{
  if (bars)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFF7 | v3;
}

- (void)setDisablePrediction:(BOOL)prediction
{
  if (prediction)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFEF | v3;
}

- (void)setHidePrediction:(BOOL)prediction
{
  if (prediction)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFDF | v3;
}

- (void)setDisableAutomaticKeyboardUI:(BOOL)i
{
  if (i)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFBF | v3;
}

- (void)setShouldReverseLayoutDirection:(BOOL)direction
{
  if (direction)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFF7F | v3;
}

- (void)setExplicitAutoFillMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFEFF | v3;
}

- (void)setSingleLineDocument:(BOOL)document
{
  if (document)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFDFF | v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  processId = self->_processId;
  if (processId)
  {
    [coderCopy encodeInt32:processId forKey:@"pId"];
  }

  appId = self->_appId;
  if (appId)
  {
    if (self->_bundleId)
    {
      if ([(NSString *)self->_appId hasSuffix:self->_bundleId])
      {
        [coderCopy encodeBool:1 forKey:@"a2bId"];
        v6 = [(NSString *)self->_appId substringToIndex:[(NSString *)self->_appId length]- [(NSString *)self->_bundleId length]];
        [coderCopy encodeObject:v6 forKey:@"aId"];

        goto LABEL_11;
      }

      appId = self->_appId;
    }

    [coderCopy encodeObject:appId forKey:@"aId"];
  }

LABEL_11:
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [coderCopy encodeObject:bundleId forKey:@"bId"];
  }

  appName = self->_appName;
  if (appName)
  {
    [coderCopy encodeObject:appName forKey:@"app"];
  }

  localizedAppName = self->_localizedAppName;
  if (localizedAppName)
  {
    [coderCopy encodeObject:localizedAppName forKey:@"locApp"];
  }

  if ([(NSArray *)self->_associatedDomains count])
  {
    v10 = [(NSArray *)self->_associatedDomains componentsJoinedByString:@"\n"];
    v11 = [v10 copy];

    [coderCopy encodeObject:v11 forKey:@"assdDmns"];
  }

  responderId = self->_responderId;
  if (responderId)
  {
    [coderCopy encodeObject:responderId forKey:@"rId"];
  }

  sceneID = self->_sceneID;
  if (sceneID)
  {
    [coderCopy encodeObject:sceneID forKey:@"sceneId"];
  }

  entityID = self->_entityID;
  if (entityID)
  {
    [coderCopy encodeInt64:entityID forKey:@"entityId"];
  }

  contextID = self->_contextID;
  if (contextID)
  {
    [coderCopy encodeInt32:contextID forKey:@"ctxId"];
  }

  layerID = self->_layerID;
  if (layerID)
  {
    [coderCopy encodeInt64:layerID forKey:@"layerId"];
  }

  sceneExclusivityIdentifier = self->_sceneExclusivityIdentifier;
  if (sceneExclusivityIdentifier)
  {
    [coderCopy encodeObject:sceneExclusivityIdentifier forKey:@"sceneExId"];
  }

  delegateConformanceType = self->_delegateConformanceType;
  if (delegateConformanceType)
  {
    [coderCopy encodeInt32:delegateConformanceType forKey:@"cfmType"];
  }

  title = self->_title;
  if (title)
  {
    [coderCopy encodeObject:title forKey:@"title"];
  }

  prompt = self->_prompt;
  if (prompt)
  {
    [coderCopy encodeObject:prompt forKey:@"prompt"];
  }

  textInputTraits = self->_textInputTraits;
  if (textInputTraits)
  {
    [coderCopy encodeObject:textInputTraits forKey:@"tiTraits"];
  }

  keyboardActionButtonConfiguration = self->_keyboardActionButtonConfiguration;
  if (keyboardActionButtonConfiguration)
  {
    [coderCopy encodeObject:keyboardActionButtonConfiguration forKey:@"kABC"];
  }

  textInputContextIdentifier = self->_textInputContextIdentifier;
  if (textInputContextIdentifier)
  {
    [coderCopy encodeObject:textInputContextIdentifier forKey:@"tiCtxId"];
  }

  PINEntrySeparatorIndexes = self->_PINEntrySeparatorIndexes;
  if (PINEntrySeparatorIndexes)
  {
    [coderCopy encodeObject:PINEntrySeparatorIndexes forKey:@"pinIdxs"];
  }

  length = self->_validTextRange.length;
  if (self->_validTextRange.location || length != -1)
  {
    [coderCopy encodeInt32:self->_validTextRange.location | (length << 16) forKey:@"validRange"];
  }

  autofillMode = self->_autofillMode;
  if (autofillMode)
  {
    [coderCopy encodeInt32:autofillMode forKey:@"afMode"];
  }

  autofillSubMode = self->_autofillSubMode;
  if (autofillSubMode)
  {
    [coderCopy encodeInt32:autofillSubMode forKey:@"afSubMode"];
  }

  if ([(NSDictionary *)self->_autofillContext count])
  {
    [coderCopy encodeObject:self->_autofillContext forKey:@"afCtx"];
  }

  passwordRules = self->_passwordRules;
  if (passwordRules)
  {
    [coderCopy encodeObject:passwordRules forKey:@"pwRules"];
  }

  inputViewInfo = self->_inputViewInfo;
  v30 = coderCopy;
  if (inputViewInfo)
  {
    [coderCopy encodeObject:inputViewInfo forKey:@"ivInfo"];
    v30 = coderCopy;
  }

  assistantViewInfo = self->_assistantViewInfo;
  if (assistantViewInfo)
  {
    [coderCopy encodeObject:assistantViewInfo forKey:@"avInfo"];
    v30 = coderCopy;
  }

  assistantItem = self->_assistantItem;
  if (assistantItem)
  {
    [coderCopy encodeObject:assistantItem forKey:@"aItem"];
    v30 = coderCopy;
  }

  recipientId = self->_recipientId;
  if (recipientId)
  {
    [coderCopy encodeObject:recipientId forKey:@"recpId"];
    v30 = coderCopy;
  }

  responseContext = self->_responseContext;
  if (responseContext)
  {
    [coderCopy encodeObject:responseContext forKey:@"respCtx"];
    v30 = coderCopy;
  }

  inputContextHistory = self->_inputContextHistory;
  if (inputContextHistory)
  {
    [coderCopy encodeObject:inputContextHistory forKey:@"ctxHistory"];
    v30 = coderCopy;
  }

  enabledSupplementalLexiconIdentifiers = self->_enabledSupplementalLexiconIdentifiers;
  if (enabledSupplementalLexiconIdentifiers)
  {
    [coderCopy encodeObject:enabledSupplementalLexiconIdentifiers forKey:@"aSuppLexIds"];
    v30 = coderCopy;
  }

  supportedPayloadIds = self->_supportedPayloadIds;
  if (supportedPayloadIds)
  {
    [coderCopy encodeObject:supportedPayloadIds forKey:@"payIds"];
    v30 = coderCopy;
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [coderCopy encodeObject:userInfo forKey:@"userInfo"];
    v30 = coderCopy;
  }

  fenceHandle = self->_fenceHandle;
  if (fenceHandle)
  {
    [coderCopy encodeObject:fenceHandle forKey:@"fenceHandle"];
    v30 = coderCopy;
  }

  textInputModeData = self->_textInputModeData;
  if (textInputModeData)
  {
    [coderCopy encodeObject:textInputModeData forKey:@"inputModeData"];
    v30 = coderCopy;
  }

  additionalLocaleIdentifiers = self->_additionalLocaleIdentifiers;
  if (additionalLocaleIdentifiers)
  {
    [coderCopy encodeObject:additionalLocaleIdentifiers forKey:@"addedLocales"];
    v30 = coderCopy;
  }

  integerValue = self->_textInputTraitsMask.integerValue;
  if (integerValue)
  {
    [coderCopy encodeInt32:integerValue forKey:@"traitsMask"];
    v30 = coderCopy;
  }
}

- (RTIDocumentTraits)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v101.receiver = self;
  v101.super_class = RTIDocumentTraits;
  v5 = [(RTIDocumentTraits *)&v101 init];
  if (v5)
  {
    v5->_processId = [coderCopy decodeInt32ForKey:@"pId"];
    v6 = [coderCopy decodeBoolForKey:@"a2bId"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aId"];
    v8 = [v7 copy];
    appId = v5->_appId;
    v5->_appId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bId"];
    v11 = [v10 copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v11;

    if (v6 && v5->_bundleId)
    {
      v13 = [(NSString *)v5->_appId stringByAppendingString:?];
      v14 = v5->_appId;
      v5->_appId = v13;
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"app"];
    v16 = [v15 copy];
    appName = v5->_appName;
    v5->_appName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locApp"];
    v19 = [v18 copy];
    localizedAppName = v5->_localizedAppName;
    v5->_localizedAppName = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assdDmns"];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 componentsSeparatedByString:@"\n"];
      associatedDomains = v5->_associatedDomains;
      v5->_associatedDomains = v23;
    }

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"rId"];
    v29 = [v28 copy];
    responderId = v5->_responderId;
    v5->_responderId = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneId"];
    v32 = [v31 copy];
    sceneID = v5->_sceneID;
    v5->_sceneID = v32;

    v5->_entityID = [coderCopy decodeInt64ForKey:@"entityId"];
    v5->_contextID = [coderCopy decodeInt32ForKey:@"ctxId"];
    v5->_layerID = [coderCopy decodeInt64ForKey:@"layerId"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneExId"];
    sceneExclusivityIdentifier = v5->_sceneExclusivityIdentifier;
    v5->_sceneExclusivityIdentifier = v34;

    v5->_delegateConformanceType = [coderCopy decodeInt32ForKey:@"cfmType"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v37 = [v36 copy];
    title = v5->_title;
    v5->_title = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prompt"];
    v40 = [v39 copy];
    prompt = v5->_prompt;
    v5->_prompt = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tiTraits"];
    textInputTraits = v5->_textInputTraits;
    v5->_textInputTraits = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kABC"];
    keyboardActionButtonConfiguration = v5->_keyboardActionButtonConfiguration;
    v5->_keyboardActionButtonConfiguration = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tiCtxId"];
    textInputContextIdentifier = v5->_textInputContextIdentifier;
    v5->_textInputContextIdentifier = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinIdxs"];
    PINEntrySeparatorIndexes = v5->_PINEntrySeparatorIndexes;
    v5->_PINEntrySeparatorIndexes = v48;

    if ([coderCopy containsValueForKey:@"validRange"])
    {
      v50 = [coderCopy decodeInt32ForKey:@"validRange"];
      v51 = v50;
      v52 = HIWORD(v50);
    }

    else
    {
      v51 = 0;
      v52 = -1;
    }

    v5->_validTextRange.location = v51;
    v5->_validTextRange.length = v52;
    if ([coderCopy containsValueForKey:@"afMode"])
    {
      v53 = [coderCopy decodeInt32ForKey:@"afMode"];
    }

    else
    {
      v53 = 0;
    }

    v5->_autofillMode = v53;
    if ([coderCopy containsValueForKey:@"afSubMode"])
    {
      v54 = [coderCopy decodeInt32ForKey:@"afSubMode"];
    }

    else
    {
      v54 = 0;
    }

    v5->_autofillSubMode = v54;
    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = [v55 setWithObjects:{v56, v57, v58, v59, objc_opt_class(), 0}];
    v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"afCtx"];
    autofillContext = v5->_autofillContext;
    v5->_autofillContext = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pwRules"];
    passwordRules = v5->_passwordRules;
    v5->_passwordRules = v63;

    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ivInfo"];
    inputViewInfo = v5->_inputViewInfo;
    v5->_inputViewInfo = v65;

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avInfo"];
    assistantViewInfo = v5->_assistantViewInfo;
    v5->_assistantViewInfo = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aItem"];
    assistantItem = v5->_assistantItem;
    v5->_assistantItem = v69;

    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recpId"];
    recipientId = v5->_recipientId;
    v5->_recipientId = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"respCtx"];
    responseContext = v5->_responseContext;
    v5->_responseContext = v73;

    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ctxHistory"];
    inputContextHistory = v5->_inputContextHistory;
    v5->_inputContextHistory = v75;

    v77 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"aSuppLexIds"];
    enabledSupplementalLexiconIdentifiers = v5->_enabledSupplementalLexiconIdentifiers;
    v5->_enabledSupplementalLexiconIdentifiers = v77;

    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
    v82 = [coderCopy decodeObjectOfClasses:v81 forKey:@"payIds"];
    supportedPayloadIds = v5->_supportedPayloadIds;
    v5->_supportedPayloadIds = v82;

    v84 = MEMORY[0x1E695DFD8];
    v85 = objc_opt_class();
    v86 = objc_opt_class();
    v87 = objc_opt_class();
    v88 = [v84 setWithObjects:{v85, v86, v87, objc_opt_class(), 0}];
    v89 = [coderCopy decodeObjectOfClasses:v88 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v89;

    v91 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fenceHandle"];
    fenceHandle = v5->_fenceHandle;
    v5->_fenceHandle = v91;

    v93 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputModeData"];
    textInputModeData = v5->_textInputModeData;
    v5->_textInputModeData = v93;

    v95 = MEMORY[0x1E695DFD8];
    v96 = objc_opt_class();
    v97 = [v95 setWithObjects:{v96, objc_opt_class(), 0}];
    v98 = [coderCopy decodeObjectOfClasses:v97 forKey:@"addedLocales"];
    additionalLocaleIdentifiers = v5->_additionalLocaleIdentifiers;
    v5->_additionalLocaleIdentifiers = v98;

    v5->_textInputTraitsMask.integerValue = [coderCopy decodeInt32ForKey:@"traitsMask"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[RTIDocumentTraits allocWithZone:](RTIDocumentTraits init];
  v5->_processId = self->_processId;
  v6 = [(NSString *)self->_appId copyWithZone:zone];
  appId = v5->_appId;
  v5->_appId = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:zone];
  bundleId = v5->_bundleId;
  v5->_bundleId = v8;

  v10 = [(NSString *)self->_appName copyWithZone:zone];
  appName = v5->_appName;
  v5->_appName = v10;

  v12 = [(NSString *)self->_localizedAppName copyWithZone:zone];
  localizedAppName = v5->_localizedAppName;
  v5->_localizedAppName = v12;

  v14 = [(NSArray *)self->_associatedDomains copyWithZone:zone];
  associatedDomains = v5->_associatedDomains;
  v5->_associatedDomains = v14;

  v16 = [(NSCopying *)self->_responderId copyWithZone:zone];
  responderId = v5->_responderId;
  v5->_responderId = v16;

  v18 = [(NSString *)self->_sceneID copyWithZone:zone];
  sceneID = v5->_sceneID;
  v5->_sceneID = v18;

  v5->_entityID = self->_entityID;
  v5->_contextID = self->_contextID;
  v5->_layerID = self->_layerID;
  v20 = [(NSString *)self->_sceneExclusivityIdentifier copyWithZone:zone];
  sceneExclusivityIdentifier = v5->_sceneExclusivityIdentifier;
  v5->_sceneExclusivityIdentifier = v20;

  v5->_delegateConformanceType = self->_delegateConformanceType;
  v22 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v22;

  v24 = [(NSString *)self->_prompt copyWithZone:zone];
  prompt = v5->_prompt;
  v5->_prompt = v24;

  v26 = [(TITextInputTraits *)self->_textInputTraits copyWithZone:zone];
  textInputTraits = v5->_textInputTraits;
  v5->_textInputTraits = v26;

  v28 = [(RTITextInputKeyboardActionButtonConfiguration *)self->_keyboardActionButtonConfiguration copyWithZone:zone];
  keyboardActionButtonConfiguration = v5->_keyboardActionButtonConfiguration;
  v5->_keyboardActionButtonConfiguration = v28;

  v30 = [(NSString *)self->_textInputContextIdentifier copyWithZone:zone];
  textInputContextIdentifier = v5->_textInputContextIdentifier;
  v5->_textInputContextIdentifier = v30;

  v32 = [(NSIndexSet *)self->_PINEntrySeparatorIndexes copyWithZone:zone];
  PINEntrySeparatorIndexes = v5->_PINEntrySeparatorIndexes;
  v5->_PINEntrySeparatorIndexes = v32;

  v5->_validTextRange = self->_validTextRange;
  v5->_autofillMode = self->_autofillMode;
  v5->_autofillSubMode = self->_autofillSubMode;
  v34 = [(NSDictionary *)self->_autofillContext copyWithZone:zone];
  autofillContext = v5->_autofillContext;
  v5->_autofillContext = v34;

  v36 = [(NSString *)self->_passwordRules copyWithZone:zone];
  passwordRules = v5->_passwordRules;
  v5->_passwordRules = v36;

  v38 = [(RTIInputViewInfo *)self->_inputViewInfo copyWithZone:zone];
  inputViewInfo = v5->_inputViewInfo;
  v5->_inputViewInfo = v38;

  v40 = [(RTIInputViewInfo *)self->_assistantViewInfo copyWithZone:zone];
  assistantViewInfo = v5->_assistantViewInfo;
  v5->_assistantViewInfo = v40;

  v42 = [(RTIAssistantItem *)self->_assistantItem copyWithZone:zone];
  assistantItem = v5->_assistantItem;
  v5->_assistantItem = v42;

  v44 = [(NSString *)self->_recipientId copyWithZone:zone];
  recipientId = v5->_recipientId;
  v5->_recipientId = v44;

  v46 = [(NSString *)self->_responseContext copyWithZone:zone];
  responseContext = v5->_responseContext;
  v5->_responseContext = v46;

  v48 = [(TIInputContextHistory *)self->_inputContextHistory copyWithZone:zone];
  inputContextHistory = v5->_inputContextHistory;
  v5->_inputContextHistory = v48;

  v50 = [(NSArray *)self->_enabledSupplementalLexiconIdentifiers copyWithZone:zone];
  enabledSupplementalLexiconIdentifiers = v5->_enabledSupplementalLexiconIdentifiers;
  v5->_enabledSupplementalLexiconIdentifiers = v50;

  v52 = [(NSArray *)self->_supportedPayloadIds copyWithZone:zone];
  supportedPayloadIds = v5->_supportedPayloadIds;
  v5->_supportedPayloadIds = v52;

  v54 = [(NSDictionary *)self->_userInfo copyWithZone:zone];
  userInfo = v5->_userInfo;
  v5->_userInfo = v54;

  fenceHandle = self->_fenceHandle;
  if (fenceHandle)
  {
    objc_storeStrong(&v5->_fenceHandle, fenceHandle);
  }

  v57 = [(NSData *)self->_textInputModeData copyWithZone:zone];
  textInputModeData = v5->_textInputModeData;
  v5->_textInputModeData = v57;

  v59 = [(NSArray *)self->_additionalLocaleIdentifiers copyWithZone:zone];
  additionalLocaleIdentifiers = v5->_additionalLocaleIdentifiers;
  v5->_additionalLocaleIdentifiers = v59;

  v5->_textInputTraitsMask.integerValue = self->_textInputTraitsMask.integerValue;
  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(RTIDocumentTraits *)self processId])
  {
    [v3 appendFormat:@"; processId = %d", -[RTIDocumentTraits processId](self, "processId")];
  }

  appId = [(RTIDocumentTraits *)self appId];

  if (appId)
  {
    appId2 = [(RTIDocumentTraits *)self appId];
    [v3 appendFormat:@"; appId = %@", appId2];
  }

  bundleId = [(RTIDocumentTraits *)self bundleId];

  if (bundleId)
  {
    bundleId2 = [(RTIDocumentTraits *)self bundleId];
    [v3 appendFormat:@"; bundleId = %@", bundleId2];
  }

  appName = [(RTIDocumentTraits *)self appName];

  if (appName)
  {
    appName2 = [(RTIDocumentTraits *)self appName];
    [v3 appendFormat:@"; appName = %@", appName2];
  }

  localizedAppName = [(RTIDocumentTraits *)self localizedAppName];

  if (localizedAppName)
  {
    localizedAppName2 = [(RTIDocumentTraits *)self localizedAppName];
    [v3 appendFormat:@"; localizedAppName = %@", localizedAppName2];
  }

  associatedDomains = [(RTIDocumentTraits *)self associatedDomains];

  if (associatedDomains)
  {
    associatedDomains2 = [(RTIDocumentTraits *)self associatedDomains];
    [v3 appendFormat:@"; associatedDomains = %@", associatedDomains2];
  }

  responderId = [(RTIDocumentTraits *)self responderId];

  if (responderId)
  {
    responderId2 = [(RTIDocumentTraits *)self responderId];
    [v3 appendFormat:@"; responderId = %@", responderId2];
  }

  sceneID = [(RTIDocumentTraits *)self sceneID];

  if (sceneID)
  {
    sceneID2 = [(RTIDocumentTraits *)self sceneID];
    [v3 appendFormat:@"; sceneID = %@", sceneID2];
  }

  if ([(RTIDocumentTraits *)self entityID])
  {
    [v3 appendFormat:@"; entityID = %llu", -[RTIDocumentTraits entityID](self, "entityID")];
  }

  if ([(RTIDocumentTraits *)self contextID])
  {
    [v3 appendFormat:@"; contextID = %x", -[RTIDocumentTraits contextID](self, "contextID")];
  }

  if ([(RTIDocumentTraits *)self layerID])
  {
    [v3 appendFormat:@"; layerID = %llx", -[RTIDocumentTraits layerID](self, "layerID")];
  }

  sceneExclusivityIdentifier = [(RTIDocumentTraits *)self sceneExclusivityIdentifier];

  if (sceneExclusivityIdentifier)
  {
    sceneExclusivityIdentifier2 = [(RTIDocumentTraits *)self sceneExclusivityIdentifier];
    [v3 appendFormat:@"; sceneExclusivityIdentifier = %@", sceneExclusivityIdentifier2];
  }

  if ([(RTIDocumentTraits *)self delegateConformanceType])
  {
    [v3 appendFormat:@"; delegateConformanceType = %d", -[RTIDocumentTraits delegateConformanceType](self, "delegateConformanceType")];
  }

  if ([(RTIDocumentTraits *)self disableAutomaticKeyboardUI])
  {
    [v3 appendFormat:@"; disableAutomaticKeyboardUI = %d", -[RTIDocumentTraits disableAutomaticKeyboardUI](self, "disableAutomaticKeyboardUI")];
  }

  title = [(RTIDocumentTraits *)self title];

  if (title)
  {
    title2 = [(RTIDocumentTraits *)self title];
    [v3 appendFormat:@"; title = %@", title2];
  }

  prompt = [(RTIDocumentTraits *)self prompt];

  if (prompt)
  {
    prompt2 = [(RTIDocumentTraits *)self prompt];
    [v3 appendFormat:@"; prompt = %@", prompt2];
  }

  textInputTraits = [(RTIDocumentTraits *)self textInputTraits];
  [v3 appendFormat:@"; textInputTraits = %@", textInputTraits];

  textInputContextIdentifier = [(RTIDocumentTraits *)self textInputContextIdentifier];

  if (textInputContextIdentifier)
  {
    textInputContextIdentifier2 = [(RTIDocumentTraits *)self textInputContextIdentifier];
    [v3 appendFormat:@"; textInputContextIdentifier = %@", textInputContextIdentifier2];
  }

  if ([(RTIDocumentTraits *)self autofillMode])
  {
    [v3 appendFormat:@"; autofillMode = %d", -[RTIDocumentTraits autofillMode](self, "autofillMode")];
  }

  if ([(RTIDocumentTraits *)self autofillSubMode])
  {
    [v3 appendFormat:@"; autofillSubMode = %d", -[RTIDocumentTraits autofillSubMode](self, "autofillSubMode")];
  }

  autofillContext = [(RTIDocumentTraits *)self autofillContext];

  if (autofillContext)
  {
    autofillContext2 = [(RTIDocumentTraits *)self autofillContext];
    [v3 appendFormat:@"; autofillContext = %@", autofillContext2];
  }

  if ([(RTIDocumentTraits *)self shouldLoadAutofillSignUp])
  {
    [v3 appendFormat:@"; shouldLoadAutofillSignUp = YES"];
  }

  passwordRules = [(RTIDocumentTraits *)self passwordRules];

  if (passwordRules)
  {
    passwordRules2 = [(RTIDocumentTraits *)self passwordRules];
    [v3 appendFormat:@"; passwordRules = %@", passwordRules2];
  }

  inputViewInfo = [(RTIDocumentTraits *)self inputViewInfo];

  if (inputViewInfo)
  {
    inputViewInfo2 = [(RTIDocumentTraits *)self inputViewInfo];
    [v3 appendFormat:@"; inputViewInfo = %@", inputViewInfo2];
  }

  assistantViewInfo = [(RTIDocumentTraits *)self assistantViewInfo];

  if (assistantViewInfo)
  {
    assistantViewInfo2 = [(RTIDocumentTraits *)self assistantViewInfo];
    [v3 appendFormat:@"; assistantViewInfo = %@", assistantViewInfo2];
  }

  assistantItem = [(RTIDocumentTraits *)self assistantItem];

  if (assistantItem)
  {
    assistantItem2 = [(RTIDocumentTraits *)self assistantItem];
    [v3 appendFormat:@"; assistantItem = %@", assistantItem2];
  }

  recipientId = [(RTIDocumentTraits *)self recipientId];

  if (recipientId)
  {
    recipientId2 = [(RTIDocumentTraits *)self recipientId];
    [v3 appendFormat:@"; recipientId = %@", recipientId2];
  }

  responseContext = [(RTIDocumentTraits *)self responseContext];

  if (responseContext)
  {
    responseContext2 = [(RTIDocumentTraits *)self responseContext];
    [v3 appendFormat:@"; responseContext = %@", responseContext2];
  }

  inputContextHistory = [(RTIDocumentTraits *)self inputContextHistory];

  if (inputContextHistory)
  {
    inputContextHistory2 = [(RTIDocumentTraits *)self inputContextHistory];
    [v3 appendFormat:@"; inputContextHistory = %@", inputContextHistory2];
  }

  enabledSupplementalLexiconIdentifiers = [(RTIDocumentTraits *)self enabledSupplementalLexiconIdentifiers];

  if (enabledSupplementalLexiconIdentifiers)
  {
    enabledSupplementalLexiconIdentifiers2 = [(RTIDocumentTraits *)self enabledSupplementalLexiconIdentifiers];
    [v3 appendFormat:@"; enabledSupplementalLexiconIdentifiers = %@", enabledSupplementalLexiconIdentifiers2];
  }

  supportedPayloadIds = [(RTIDocumentTraits *)self supportedPayloadIds];

  if (supportedPayloadIds)
  {
    supportedPayloadIds2 = [(RTIDocumentTraits *)self supportedPayloadIds];
    [v3 appendFormat:@"; supportedPayloadIds = %@", supportedPayloadIds2];
  }

  if ([(RTIDocumentTraits *)self supportsImagePaste])
  {
    [v3 appendFormat:@"; supportsImagePaste = YES"];
  }

  if ([(RTIDocumentTraits *)self supportsAdaptiveImageGlyph])
  {
    [v3 appendFormat:@"; supportsAdaptiveImageGlyph = YES"];
  }

  if ([(RTIDocumentTraits *)self supportsGenmojiCreation])
  {
    [v3 appendFormat:@"; supportsGenmojiCreation = YES"];
  }

  if ([(RTIDocumentTraits *)self devicePasscodeEntry])
  {
    [v3 appendFormat:@"; devicePasscodeEntry = YES"];
  }

  if ([(RTIDocumentTraits *)self disableInputBars])
  {
    [v3 appendFormat:@"; disableInputBars = YES"];
  }

  userInfo = [(RTIDocumentTraits *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(RTIDocumentTraits *)self userInfo];
    allKeys = [userInfo2 allKeys];
    [v3 appendFormat:@"; userInfo.keys = %@", allKeys];
  }

  if ([(RTIDocumentTraits *)self disablePrediction])
  {
    [v3 appendFormat:@"; disablePrediction = YES"];
  }

  if ([(RTIDocumentTraits *)self hidePrediction])
  {
    [v3 appendFormat:@"; hidePrediction = YES"];
  }

  if ([(RTIDocumentTraits *)self shouldReverseLayoutDirection])
  {
    shouldReverseLayoutDirection = [(RTIDocumentTraits *)self shouldReverseLayoutDirection];
    v51 = @"N";
    if (shouldReverseLayoutDirection)
    {
      v51 = @"Y";
    }

    [v3 appendFormat:@"; shouldReverseLayoutDirection = %@", v51];
  }

  fenceHandle = [(RTIDocumentTraits *)self fenceHandle];

  if (fenceHandle)
  {
    fenceHandle2 = [(RTIDocumentTraits *)self fenceHandle];
    [v3 appendFormat:@"; fenceHandle = %@", fenceHandle2];
  }

  textInputModeData = [(RTIDocumentTraits *)self textInputModeData];

  if (textInputModeData)
  {
    textInputModeData2 = [(RTIDocumentTraits *)self textInputModeData];
    [v3 appendFormat:@"; has %lu bytes of textInputModeData", objc_msgSend(textInputModeData2, "length")];
  }

  additionalLocaleIdentifiers = [(RTIDocumentTraits *)self additionalLocaleIdentifiers];

  if (additionalLocaleIdentifiers)
  {
    additionalLocaleIdentifiers2 = [(RTIDocumentTraits *)self additionalLocaleIdentifiers];
    [v3 appendFormat:@"; addedLocales = %@", additionalLocaleIdentifiers2];
  }

  if ([(RTIDocumentTraits *)self isExplicitAutoFillMode])
  {
    [v3 appendFormat:@"; explicitAutoFillMode = YES"];
  }

  if ([(RTIDocumentTraits *)self isSingleLineDocument])
  {
    [v3 appendFormat:@"; singleLineDocument = YES"];
  }

  keyboardActionButtonConfiguration = [(RTIDocumentTraits *)self keyboardActionButtonConfiguration];

  if (keyboardActionButtonConfiguration)
  {
    keyboardActionButtonConfiguration2 = [(RTIDocumentTraits *)self keyboardActionButtonConfiguration];
    v60 = [keyboardActionButtonConfiguration2 description];
    [v3 appendFormat:@"; keyboardActionButtonConfiguration = %@", v60];
  }

  v61 = v3;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      processId = [(RTIDocumentTraits *)self processId];
      if (processId == [(RTIDocumentTraits *)v5 processId])
      {
        v7 = MEMORY[0x1E696AEC0];
        appId = [(RTIDocumentTraits *)self appId];
        appId2 = [(RTIDocumentTraits *)v5 appId];
        v10 = [v7 _string:appId matchesString:appId2];

        if (!v10)
        {
          goto LABEL_26;
        }

        v11 = MEMORY[0x1E696AEC0];
        bundleId = [(RTIDocumentTraits *)self bundleId];
        bundleId2 = [(RTIDocumentTraits *)v5 bundleId];
        v10 = [v11 _string:bundleId matchesString:bundleId2];

        if (!v10)
        {
          goto LABEL_26;
        }

        v14 = MEMORY[0x1E696AEC0];
        appName = [(RTIDocumentTraits *)self appName];
        appName2 = [(RTIDocumentTraits *)v5 appName];
        v10 = [v14 _string:appName matchesString:appName2];

        if (!v10)
        {
          goto LABEL_26;
        }

        v17 = MEMORY[0x1E696AEC0];
        localizedAppName = [(RTIDocumentTraits *)self localizedAppName];
        localizedAppName2 = [(RTIDocumentTraits *)v5 localizedAppName];
        v10 = [v17 _string:localizedAppName matchesString:localizedAppName2];

        if (!v10)
        {
          goto LABEL_26;
        }

        associatedDomains = [(RTIDocumentTraits *)self associatedDomains];
        associatedDomains2 = [(RTIDocumentTraits *)v5 associatedDomains];
        v22 = associatedDomains2;
        if (associatedDomains == associatedDomains2)
        {
        }

        else
        {
          associatedDomains3 = [(RTIDocumentTraits *)self associatedDomains];
          associatedDomains4 = [(RTIDocumentTraits *)v5 associatedDomains];
          v25 = [associatedDomains3 isEqualToArray:associatedDomains4];

          if (!v25)
          {
            goto LABEL_25;
          }
        }

        responderId = [(RTIDocumentTraits *)self responderId];
        responderId2 = [(RTIDocumentTraits *)v5 responderId];
        v28 = responderId2;
        if (responderId == responderId2)
        {
        }

        else
        {
          responderId3 = [(RTIDocumentTraits *)self responderId];
          responderId4 = [(RTIDocumentTraits *)v5 responderId];
          v31 = [responderId3 isEqual:responderId4];

          if (!v31)
          {
            goto LABEL_25;
          }
        }

        v32 = MEMORY[0x1E696AEC0];
        sceneID = [(RTIDocumentTraits *)self sceneID];
        sceneID2 = [(RTIDocumentTraits *)v5 sceneID];
        v10 = [v32 _string:sceneID matchesString:sceneID2];

        if (!v10)
        {
          goto LABEL_26;
        }

        entityID = [(RTIDocumentTraits *)self entityID];
        if (entityID != [(RTIDocumentTraits *)v5 entityID])
        {
          goto LABEL_25;
        }

        contextID = [(RTIDocumentTraits *)self contextID];
        if (contextID != [(RTIDocumentTraits *)v5 contextID])
        {
          goto LABEL_25;
        }

        layerID = [(RTIDocumentTraits *)self layerID];
        if (layerID != [(RTIDocumentTraits *)v5 layerID])
        {
          goto LABEL_25;
        }

        v38 = MEMORY[0x1E696AEC0];
        sceneExclusivityIdentifier = [(RTIDocumentTraits *)self sceneExclusivityIdentifier];
        sceneExclusivityIdentifier2 = [(RTIDocumentTraits *)v5 sceneExclusivityIdentifier];
        v10 = [v38 _string:sceneExclusivityIdentifier matchesString:sceneExclusivityIdentifier2];

        if (!v10)
        {
LABEL_26:

          goto LABEL_27;
        }

        delegateConformanceType = [(RTIDocumentTraits *)self delegateConformanceType];
        if (delegateConformanceType == [(RTIDocumentTraits *)v5 delegateConformanceType])
        {
          disableAutomaticKeyboardUI = [(RTIDocumentTraits *)self disableAutomaticKeyboardUI];
          if (disableAutomaticKeyboardUI == [(RTIDocumentTraits *)v5 disableAutomaticKeyboardUI])
          {
            v44 = MEMORY[0x1E696AEC0];
            title = [(RTIDocumentTraits *)self title];
            title2 = [(RTIDocumentTraits *)v5 title];
            v10 = [v44 _string:title matchesString:title2];

            if (!v10)
            {
              goto LABEL_26;
            }

            v47 = MEMORY[0x1E696AEC0];
            prompt = [(RTIDocumentTraits *)self prompt];
            prompt2 = [(RTIDocumentTraits *)v5 prompt];
            v10 = [v47 _string:prompt matchesString:prompt2];

            if (!v10)
            {
              goto LABEL_26;
            }

            textInputTraits = [(RTIDocumentTraits *)self textInputTraits];
            textInputTraits2 = [(RTIDocumentTraits *)v5 textInputTraits];
            v52 = textInputTraits2;
            if (textInputTraits == textInputTraits2)
            {
            }

            else
            {
              textInputTraits3 = [(RTIDocumentTraits *)self textInputTraits];
              textInputTraits4 = [(RTIDocumentTraits *)v5 textInputTraits];
              v55 = [textInputTraits3 isEqual:textInputTraits4];

              if (!v55)
              {
                goto LABEL_25;
              }
            }

            textInputContextIdentifier = [(RTIDocumentTraits *)self textInputContextIdentifier];
            textInputContextIdentifier2 = [(RTIDocumentTraits *)v5 textInputContextIdentifier];
            v58 = textInputContextIdentifier2;
            if (textInputContextIdentifier == textInputContextIdentifier2)
            {
            }

            else
            {
              textInputContextIdentifier3 = [(RTIDocumentTraits *)self textInputContextIdentifier];
              textInputContextIdentifier4 = [(RTIDocumentTraits *)v5 textInputContextIdentifier];
              v61 = [textInputContextIdentifier3 isEqual:textInputContextIdentifier4];

              if (!v61)
              {
                goto LABEL_25;
              }
            }

            pINEntrySeparatorIndexes = [(RTIDocumentTraits *)self PINEntrySeparatorIndexes];
            pINEntrySeparatorIndexes2 = [(RTIDocumentTraits *)v5 PINEntrySeparatorIndexes];
            v64 = pINEntrySeparatorIndexes2;
            if (pINEntrySeparatorIndexes == pINEntrySeparatorIndexes2)
            {
            }

            else
            {
              pINEntrySeparatorIndexes3 = [(RTIDocumentTraits *)self PINEntrySeparatorIndexes];
              pINEntrySeparatorIndexes4 = [(RTIDocumentTraits *)v5 PINEntrySeparatorIndexes];
              v67 = [pINEntrySeparatorIndexes3 isEqual:pINEntrySeparatorIndexes4];

              if (!v67)
              {
                goto LABEL_25;
              }
            }

            validTextRange = [(RTIDocumentTraits *)self validTextRange];
            v70 = v69;
            LOBYTE(v10) = 0;
            if (validTextRange != [(RTIDocumentTraits *)v5 validTextRange]|| v70 != v71)
            {
              goto LABEL_26;
            }

            autofillMode = [(RTIDocumentTraits *)self autofillMode];
            if (autofillMode != [(RTIDocumentTraits *)v5 autofillMode])
            {
              goto LABEL_25;
            }

            autofillSubMode = [(RTIDocumentTraits *)self autofillSubMode];
            if (autofillSubMode != [(RTIDocumentTraits *)v5 autofillSubMode])
            {
              goto LABEL_25;
            }

            autofillContext = [(RTIDocumentTraits *)self autofillContext];
            autofillContext2 = [(RTIDocumentTraits *)v5 autofillContext];
            v76 = autofillContext2;
            if (autofillContext == autofillContext2)
            {
            }

            else
            {
              autofillContext3 = [(RTIDocumentTraits *)self autofillContext];
              autofillContext4 = [(RTIDocumentTraits *)v5 autofillContext];
              v79 = [autofillContext3 isEqualToDictionary:autofillContext4];

              if (!v79)
              {
                goto LABEL_25;
              }
            }

            shouldLoadAutofillSignUp = [(RTIDocumentTraits *)self shouldLoadAutofillSignUp];
            if (shouldLoadAutofillSignUp == [(RTIDocumentTraits *)v5 shouldLoadAutofillSignUp])
            {
              passwordRules = [(RTIDocumentTraits *)self passwordRules];
              passwordRules2 = [(RTIDocumentTraits *)v5 passwordRules];
              v83 = passwordRules2;
              if (passwordRules == passwordRules2)
              {
              }

              else
              {
                passwordRules3 = [(RTIDocumentTraits *)self passwordRules];
                passwordRules4 = [(RTIDocumentTraits *)v5 passwordRules];
                v86 = [passwordRules3 isEqual:passwordRules4];

                if (!v86)
                {
                  goto LABEL_25;
                }
              }

              inputViewInfo = [(RTIDocumentTraits *)self inputViewInfo];
              inputViewInfo2 = [(RTIDocumentTraits *)v5 inputViewInfo];
              v89 = inputViewInfo2;
              if (inputViewInfo == inputViewInfo2)
              {
              }

              else
              {
                inputViewInfo3 = [(RTIDocumentTraits *)self inputViewInfo];
                inputViewInfo4 = [(RTIDocumentTraits *)v5 inputViewInfo];
                v92 = [inputViewInfo3 isEqual:inputViewInfo4];

                if (!v92)
                {
                  goto LABEL_25;
                }
              }

              assistantViewInfo = [(RTIDocumentTraits *)self assistantViewInfo];
              assistantViewInfo2 = [(RTIDocumentTraits *)v5 assistantViewInfo];
              v95 = assistantViewInfo2;
              if (assistantViewInfo == assistantViewInfo2)
              {
              }

              else
              {
                assistantViewInfo3 = [(RTIDocumentTraits *)self assistantViewInfo];
                assistantViewInfo4 = [(RTIDocumentTraits *)v5 assistantViewInfo];
                v98 = [assistantViewInfo3 isEqual:assistantViewInfo4];

                if (!v98)
                {
                  goto LABEL_25;
                }
              }

              assistantItem = [(RTIDocumentTraits *)self assistantItem];
              assistantItem2 = [(RTIDocumentTraits *)v5 assistantItem];
              v101 = assistantItem2;
              if (assistantItem == assistantItem2)
              {
              }

              else
              {
                assistantItem3 = [(RTIDocumentTraits *)self assistantItem];
                assistantItem4 = [(RTIDocumentTraits *)v5 assistantItem];
                v104 = [assistantItem3 isEqual:assistantItem4];

                if (!v104)
                {
                  goto LABEL_25;
                }
              }

              v105 = MEMORY[0x1E696AEC0];
              recipientId = [(RTIDocumentTraits *)self recipientId];
              recipientId2 = [(RTIDocumentTraits *)v5 recipientId];
              v10 = [v105 _string:recipientId matchesString:recipientId2];

              if (!v10)
              {
                goto LABEL_26;
              }

              v108 = MEMORY[0x1E696AEC0];
              responseContext = [(RTIDocumentTraits *)self responseContext];
              responseContext2 = [(RTIDocumentTraits *)v5 responseContext];
              v10 = [v108 _string:responseContext matchesString:responseContext2];

              if (!v10)
              {
                goto LABEL_26;
              }

              inputContextHistory = [(RTIDocumentTraits *)self inputContextHistory];
              inputContextHistory2 = [(RTIDocumentTraits *)v5 inputContextHistory];
              v113 = inputContextHistory2;
              if (inputContextHistory == inputContextHistory2)
              {
              }

              else
              {
                inputContextHistory3 = [(RTIDocumentTraits *)self inputContextHistory];
                inputContextHistory4 = [(RTIDocumentTraits *)v5 inputContextHistory];
                v116 = [inputContextHistory3 isEqual:inputContextHistory4];

                if (!v116)
                {
                  goto LABEL_25;
                }
              }

              enabledSupplementalLexiconIdentifiers = [(RTIDocumentTraits *)self enabledSupplementalLexiconIdentifiers];
              enabledSupplementalLexiconIdentifiers2 = [(RTIDocumentTraits *)v5 enabledSupplementalLexiconIdentifiers];
              v119 = enabledSupplementalLexiconIdentifiers2;
              if (enabledSupplementalLexiconIdentifiers == enabledSupplementalLexiconIdentifiers2)
              {
              }

              else
              {
                enabledSupplementalLexiconIdentifiers3 = [(RTIDocumentTraits *)self enabledSupplementalLexiconIdentifiers];
                enabledSupplementalLexiconIdentifiers4 = [(RTIDocumentTraits *)v5 enabledSupplementalLexiconIdentifiers];
                v122 = [enabledSupplementalLexiconIdentifiers3 isEqualToArray:enabledSupplementalLexiconIdentifiers4];

                if (!v122)
                {
                  goto LABEL_25;
                }
              }

              supportedPayloadIds = [(RTIDocumentTraits *)self supportedPayloadIds];
              supportedPayloadIds2 = [(RTIDocumentTraits *)v5 supportedPayloadIds];
              v125 = supportedPayloadIds2;
              if (supportedPayloadIds == supportedPayloadIds2)
              {
              }

              else
              {
                supportedPayloadIds3 = [(RTIDocumentTraits *)self supportedPayloadIds];
                supportedPayloadIds4 = [(RTIDocumentTraits *)v5 supportedPayloadIds];
                v128 = [supportedPayloadIds3 isEqualToArray:supportedPayloadIds4];

                if (!v128)
                {
                  goto LABEL_25;
                }
              }

              supportsImagePaste = [(RTIDocumentTraits *)self supportsImagePaste];
              if (supportsImagePaste != [(RTIDocumentTraits *)v5 supportsImagePaste])
              {
                goto LABEL_25;
              }

              supportsAdaptiveImageGlyph = [(RTIDocumentTraits *)self supportsAdaptiveImageGlyph];
              if (supportsAdaptiveImageGlyph != [(RTIDocumentTraits *)v5 supportsAdaptiveImageGlyph])
              {
                goto LABEL_25;
              }

              supportsGenmojiCreation = [(RTIDocumentTraits *)self supportsGenmojiCreation];
              if (supportsGenmojiCreation != [(RTIDocumentTraits *)v5 supportsGenmojiCreation])
              {
                goto LABEL_25;
              }

              devicePasscodeEntry = [(RTIDocumentTraits *)self devicePasscodeEntry];
              if (devicePasscodeEntry != [(RTIDocumentTraits *)v5 devicePasscodeEntry])
              {
                goto LABEL_25;
              }

              disableInputBars = [(RTIDocumentTraits *)self disableInputBars];
              if (disableInputBars != [(RTIDocumentTraits *)v5 disableInputBars])
              {
                goto LABEL_25;
              }

              userInfo = [(RTIDocumentTraits *)self userInfo];
              userInfo2 = [(RTIDocumentTraits *)v5 userInfo];
              v136 = userInfo2;
              if (userInfo == userInfo2)
              {
              }

              else
              {
                userInfo3 = [(RTIDocumentTraits *)self userInfo];
                userInfo4 = [(RTIDocumentTraits *)v5 userInfo];
                v139 = [userInfo3 isEqualToDictionary:userInfo4];

                if (!v139)
                {
                  goto LABEL_25;
                }
              }

              disablePrediction = [(RTIDocumentTraits *)self disablePrediction];
              if (disablePrediction != [(RTIDocumentTraits *)v5 disablePrediction])
              {
                goto LABEL_25;
              }

              hidePrediction = [(RTIDocumentTraits *)self hidePrediction];
              if (hidePrediction != [(RTIDocumentTraits *)v5 hidePrediction])
              {
                goto LABEL_25;
              }

              shouldReverseLayoutDirection = [(RTIDocumentTraits *)self shouldReverseLayoutDirection];
              if (shouldReverseLayoutDirection != [(RTIDocumentTraits *)v5 shouldReverseLayoutDirection])
              {
                goto LABEL_25;
              }

              textInputModeData = [(RTIDocumentTraits *)self textInputModeData];
              textInputModeData2 = [(RTIDocumentTraits *)v5 textInputModeData];
              v145 = textInputModeData2;
              if (textInputModeData == textInputModeData2)
              {
              }

              else
              {
                textInputModeData3 = [(RTIDocumentTraits *)self textInputModeData];
                textInputModeData4 = [(RTIDocumentTraits *)v5 textInputModeData];
                v148 = [textInputModeData3 isEqual:textInputModeData4];

                if (!v148)
                {
                  goto LABEL_25;
                }
              }

              additionalLocaleIdentifiers = [(RTIDocumentTraits *)self additionalLocaleIdentifiers];
              additionalLocaleIdentifiers2 = [(RTIDocumentTraits *)v5 additionalLocaleIdentifiers];
              v151 = additionalLocaleIdentifiers2;
              if (additionalLocaleIdentifiers == additionalLocaleIdentifiers2)
              {
              }

              else
              {
                additionalLocaleIdentifiers3 = [(RTIDocumentTraits *)self additionalLocaleIdentifiers];
                additionalLocaleIdentifiers4 = [(RTIDocumentTraits *)v5 additionalLocaleIdentifiers];
                v154 = [additionalLocaleIdentifiers3 isEqualToArray:additionalLocaleIdentifiers4];

                if (!v154)
                {
                  goto LABEL_25;
                }
              }

              isExplicitAutoFillMode = [(RTIDocumentTraits *)self isExplicitAutoFillMode];
              if (isExplicitAutoFillMode == [(RTIDocumentTraits *)v5 isExplicitAutoFillMode])
              {
                isSingleLineDocument = [(RTIDocumentTraits *)self isSingleLineDocument];
                if (isSingleLineDocument == [(RTIDocumentTraits *)v5 isSingleLineDocument])
                {
                  keyboardActionButtonConfiguration = [(RTIDocumentTraits *)self keyboardActionButtonConfiguration];
                  keyboardActionButtonConfiguration2 = [(RTIDocumentTraits *)v5 keyboardActionButtonConfiguration];
                  if (keyboardActionButtonConfiguration == keyboardActionButtonConfiguration2)
                  {
                    LOBYTE(v10) = 1;
                  }

                  else
                  {
                    keyboardActionButtonConfiguration3 = [(RTIDocumentTraits *)self keyboardActionButtonConfiguration];
                    keyboardActionButtonConfiguration4 = [(RTIDocumentTraits *)v5 keyboardActionButtonConfiguration];
                    LOBYTE(v10) = [keyboardActionButtonConfiguration3 isEqual:keyboardActionButtonConfiguration4];
                  }

                  goto LABEL_26;
                }
              }
            }
          }
        }
      }

LABEL_25:
      LOBYTE(v10) = 0;
      goto LABEL_26;
    }

    LOBYTE(v10) = 0;
  }

LABEL_27:

  return v10;
}

- (void)copyContextualPropertiesFromDocumentTraits:(id)traits
{
  traitsCopy = traits;
  v4 = [*(traitsCopy + 8) copy];
  responderId = self->_responderId;
  self->_responderId = v4;

  v6 = [*(traitsCopy + 9) copy];
  sceneID = self->_sceneID;
  self->_sceneID = v6;

  self->_entityID = *(traitsCopy + 10);
  self->_contextID = *(traitsCopy + 4);
  self->_layerID = *(traitsCopy + 11);
  v8 = [*(traitsCopy + 12) copy];
  sceneExclusivityIdentifier = self->_sceneExclusivityIdentifier;
  self->_sceneExclusivityIdentifier = v8;

  self->_delegateConformanceType = *(traitsCopy + 13);
  v10 = [*(traitsCopy + 14) copy];
  title = self->_title;
  self->_title = v10;

  v12 = [*(traitsCopy + 15) copy];
  prompt = self->_prompt;
  self->_prompt = v12;

  v14 = [*(traitsCopy + 19) copy];
  textInputTraits = self->_textInputTraits;
  self->_textInputTraits = v14;

  v16 = [*(traitsCopy + 35) copy];
  keyboardActionButtonConfiguration = self->_keyboardActionButtonConfiguration;
  self->_keyboardActionButtonConfiguration = v16;

  v18 = [*(traitsCopy + 20) copy];
  textInputContextIdentifier = self->_textInputContextIdentifier;
  self->_textInputContextIdentifier = v18;

  v20 = [*(traitsCopy + 21) copy];
  PINEntrySeparatorIndexes = self->_PINEntrySeparatorIndexes;
  self->_PINEntrySeparatorIndexes = v20;

  self->_validTextRange = *(traitsCopy + 18);
  self->_autofillMode = *(traitsCopy + 22);
  self->_autofillSubMode = *(traitsCopy + 23);
  v22 = [*(traitsCopy + 24) copy];
  autofillContext = self->_autofillContext;
  self->_autofillContext = v22;

  v24 = [*(traitsCopy + 25) copy];
  passwordRules = self->_passwordRules;
  self->_passwordRules = v24;

  v26 = [*(traitsCopy + 7) copy];
  associatedDomains = self->_associatedDomains;
  self->_associatedDomains = v26;

  v28 = [*(traitsCopy + 16) copy];
  inputViewInfo = self->_inputViewInfo;
  self->_inputViewInfo = v28;

  v30 = [*(traitsCopy + 17) copy];
  assistantViewInfo = self->_assistantViewInfo;
  self->_assistantViewInfo = v30;

  v32 = [*(traitsCopy + 18) copy];
  assistantItem = self->_assistantItem;
  self->_assistantItem = v32;

  v34 = [*(traitsCopy + 26) copy];
  recipientId = self->_recipientId;
  self->_recipientId = v34;

  v36 = [*(traitsCopy + 27) copy];
  responseContext = self->_responseContext;
  self->_responseContext = v36;

  v38 = [*(traitsCopy + 28) copy];
  inputContextHistory = self->_inputContextHistory;
  self->_inputContextHistory = v38;

  v40 = [*(traitsCopy + 29) copy];
  enabledSupplementalLexiconIdentifiers = self->_enabledSupplementalLexiconIdentifiers;
  self->_enabledSupplementalLexiconIdentifiers = v40;

  v42 = [*(traitsCopy + 30) copy];
  supportedPayloadIds = self->_supportedPayloadIds;
  self->_supportedPayloadIds = v42;

  v44 = [*(traitsCopy + 31) copy];
  userInfo = self->_userInfo;
  self->_userInfo = v44;

  v46 = traitsCopy;
  v47 = *(traitsCopy + 32);
  if (v47)
  {
    fenceHandle = self->_fenceHandle;
    if (fenceHandle != v47 && ([(CAFenceHandle *)fenceHandle isInvalidated]& 1) == 0)
    {
      [(CAFenceHandle *)self->_fenceHandle invalidate];
    }

    objc_storeStrong(&self->_fenceHandle, *(traitsCopy + 32));
    v49 = *(traitsCopy + 32);
    *(traitsCopy + 32) = 0;

    v46 = traitsCopy;
  }

  v50 = [v46[33] copy];
  textInputModeData = self->_textInputModeData;
  self->_textInputModeData = v50;

  v52 = [*(traitsCopy + 34) copy];
  additionalLocaleIdentifiers = self->_additionalLocaleIdentifiers;
  self->_additionalLocaleIdentifiers = v52;

  self->_textInputTraitsMask.integerValue = *(traitsCopy + 2);
}

- (_NSRange)validTextRange
{
  length = self->_validTextRange.length;
  location = self->_validTextRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end