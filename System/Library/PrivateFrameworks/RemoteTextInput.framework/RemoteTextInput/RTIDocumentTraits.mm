@interface RTIDocumentTraits
- (BOOL)isEqual:(id)a3;
- (RTIDocumentTraits)init;
- (RTIDocumentTraits)initWithCoder:(id)a3;
- (_NSRange)validTextRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)copyContextualPropertiesFromDocumentTraits:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDevicePasscodeEntry:(BOOL)a3;
- (void)setDisableAutomaticKeyboardUI:(BOOL)a3;
- (void)setDisableInputBars:(BOOL)a3;
- (void)setDisablePrediction:(BOOL)a3;
- (void)setExplicitAutoFillMode:(BOOL)a3;
- (void)setHidePrediction:(BOOL)a3;
- (void)setShouldReverseLayoutDirection:(BOOL)a3;
- (void)setSingleLineDocument:(BOOL)a3;
- (void)setSupportsAdaptiveImageGlyph:(BOOL)a3;
- (void)setSupportsEmojiImageTextAttachments:(BOOL)a3;
- (void)setSupportsGenmojiCreation:(BOOL)a3;
- (void)setSupportsImagePaste:(BOOL)a3;
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

- (void)setSupportsImagePaste:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFFD | v3;
}

- (void)setSupportsEmojiImageTextAttachments:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFBFF | v3;
}

- (void)setSupportsAdaptiveImageGlyph:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFBFF | v3;
}

- (void)setSupportsGenmojiCreation:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xF7FF | v3;
}

- (void)setDevicePasscodeEntry:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFFB | v3;
}

- (void)setDisableInputBars:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFF7 | v3;
}

- (void)setDisablePrediction:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFEF | v3;
}

- (void)setHidePrediction:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFDF | v3;
}

- (void)setDisableAutomaticKeyboardUI:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFFBF | v3;
}

- (void)setShouldReverseLayoutDirection:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFF7F | v3;
}

- (void)setExplicitAutoFillMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFEFF | v3;
}

- (void)setSingleLineDocument:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  LOWORD(self->_textInputTraitsMask.integerValue) = self->_textInputTraitsMask.integerValue & 0xFDFF | v3;
}

- (void)encodeWithCoder:(id)a3
{
  v43 = a3;
  if (([v43 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  processId = self->_processId;
  if (processId)
  {
    [v43 encodeInt32:processId forKey:@"pId"];
  }

  appId = self->_appId;
  if (appId)
  {
    if (self->_bundleId)
    {
      if ([(NSString *)self->_appId hasSuffix:self->_bundleId])
      {
        [v43 encodeBool:1 forKey:@"a2bId"];
        v6 = [(NSString *)self->_appId substringToIndex:[(NSString *)self->_appId length]- [(NSString *)self->_bundleId length]];
        [v43 encodeObject:v6 forKey:@"aId"];

        goto LABEL_11;
      }

      appId = self->_appId;
    }

    [v43 encodeObject:appId forKey:@"aId"];
  }

LABEL_11:
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v43 encodeObject:bundleId forKey:@"bId"];
  }

  appName = self->_appName;
  if (appName)
  {
    [v43 encodeObject:appName forKey:@"app"];
  }

  localizedAppName = self->_localizedAppName;
  if (localizedAppName)
  {
    [v43 encodeObject:localizedAppName forKey:@"locApp"];
  }

  if ([(NSArray *)self->_associatedDomains count])
  {
    v10 = [(NSArray *)self->_associatedDomains componentsJoinedByString:@"\n"];
    v11 = [v10 copy];

    [v43 encodeObject:v11 forKey:@"assdDmns"];
  }

  responderId = self->_responderId;
  if (responderId)
  {
    [v43 encodeObject:responderId forKey:@"rId"];
  }

  sceneID = self->_sceneID;
  if (sceneID)
  {
    [v43 encodeObject:sceneID forKey:@"sceneId"];
  }

  entityID = self->_entityID;
  if (entityID)
  {
    [v43 encodeInt64:entityID forKey:@"entityId"];
  }

  contextID = self->_contextID;
  if (contextID)
  {
    [v43 encodeInt32:contextID forKey:@"ctxId"];
  }

  layerID = self->_layerID;
  if (layerID)
  {
    [v43 encodeInt64:layerID forKey:@"layerId"];
  }

  sceneExclusivityIdentifier = self->_sceneExclusivityIdentifier;
  if (sceneExclusivityIdentifier)
  {
    [v43 encodeObject:sceneExclusivityIdentifier forKey:@"sceneExId"];
  }

  delegateConformanceType = self->_delegateConformanceType;
  if (delegateConformanceType)
  {
    [v43 encodeInt32:delegateConformanceType forKey:@"cfmType"];
  }

  title = self->_title;
  if (title)
  {
    [v43 encodeObject:title forKey:@"title"];
  }

  prompt = self->_prompt;
  if (prompt)
  {
    [v43 encodeObject:prompt forKey:@"prompt"];
  }

  textInputTraits = self->_textInputTraits;
  if (textInputTraits)
  {
    [v43 encodeObject:textInputTraits forKey:@"tiTraits"];
  }

  keyboardActionButtonConfiguration = self->_keyboardActionButtonConfiguration;
  if (keyboardActionButtonConfiguration)
  {
    [v43 encodeObject:keyboardActionButtonConfiguration forKey:@"kABC"];
  }

  textInputContextIdentifier = self->_textInputContextIdentifier;
  if (textInputContextIdentifier)
  {
    [v43 encodeObject:textInputContextIdentifier forKey:@"tiCtxId"];
  }

  PINEntrySeparatorIndexes = self->_PINEntrySeparatorIndexes;
  if (PINEntrySeparatorIndexes)
  {
    [v43 encodeObject:PINEntrySeparatorIndexes forKey:@"pinIdxs"];
  }

  length = self->_validTextRange.length;
  if (self->_validTextRange.location || length != -1)
  {
    [v43 encodeInt32:self->_validTextRange.location | (length << 16) forKey:@"validRange"];
  }

  autofillMode = self->_autofillMode;
  if (autofillMode)
  {
    [v43 encodeInt32:autofillMode forKey:@"afMode"];
  }

  autofillSubMode = self->_autofillSubMode;
  if (autofillSubMode)
  {
    [v43 encodeInt32:autofillSubMode forKey:@"afSubMode"];
  }

  if ([(NSDictionary *)self->_autofillContext count])
  {
    [v43 encodeObject:self->_autofillContext forKey:@"afCtx"];
  }

  passwordRules = self->_passwordRules;
  if (passwordRules)
  {
    [v43 encodeObject:passwordRules forKey:@"pwRules"];
  }

  inputViewInfo = self->_inputViewInfo;
  v30 = v43;
  if (inputViewInfo)
  {
    [v43 encodeObject:inputViewInfo forKey:@"ivInfo"];
    v30 = v43;
  }

  assistantViewInfo = self->_assistantViewInfo;
  if (assistantViewInfo)
  {
    [v43 encodeObject:assistantViewInfo forKey:@"avInfo"];
    v30 = v43;
  }

  assistantItem = self->_assistantItem;
  if (assistantItem)
  {
    [v43 encodeObject:assistantItem forKey:@"aItem"];
    v30 = v43;
  }

  recipientId = self->_recipientId;
  if (recipientId)
  {
    [v43 encodeObject:recipientId forKey:@"recpId"];
    v30 = v43;
  }

  responseContext = self->_responseContext;
  if (responseContext)
  {
    [v43 encodeObject:responseContext forKey:@"respCtx"];
    v30 = v43;
  }

  inputContextHistory = self->_inputContextHistory;
  if (inputContextHistory)
  {
    [v43 encodeObject:inputContextHistory forKey:@"ctxHistory"];
    v30 = v43;
  }

  enabledSupplementalLexiconIdentifiers = self->_enabledSupplementalLexiconIdentifiers;
  if (enabledSupplementalLexiconIdentifiers)
  {
    [v43 encodeObject:enabledSupplementalLexiconIdentifiers forKey:@"aSuppLexIds"];
    v30 = v43;
  }

  supportedPayloadIds = self->_supportedPayloadIds;
  if (supportedPayloadIds)
  {
    [v43 encodeObject:supportedPayloadIds forKey:@"payIds"];
    v30 = v43;
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v43 encodeObject:userInfo forKey:@"userInfo"];
    v30 = v43;
  }

  fenceHandle = self->_fenceHandle;
  if (fenceHandle)
  {
    [v43 encodeObject:fenceHandle forKey:@"fenceHandle"];
    v30 = v43;
  }

  textInputModeData = self->_textInputModeData;
  if (textInputModeData)
  {
    [v43 encodeObject:textInputModeData forKey:@"inputModeData"];
    v30 = v43;
  }

  additionalLocaleIdentifiers = self->_additionalLocaleIdentifiers;
  if (additionalLocaleIdentifiers)
  {
    [v43 encodeObject:additionalLocaleIdentifiers forKey:@"addedLocales"];
    v30 = v43;
  }

  integerValue = self->_textInputTraitsMask.integerValue;
  if (integerValue)
  {
    [v43 encodeInt32:integerValue forKey:@"traitsMask"];
    v30 = v43;
  }
}

- (RTIDocumentTraits)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v101.receiver = self;
  v101.super_class = RTIDocumentTraits;
  v5 = [(RTIDocumentTraits *)&v101 init];
  if (v5)
  {
    v5->_processId = [v4 decodeInt32ForKey:@"pId"];
    v6 = [v4 decodeBoolForKey:@"a2bId"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aId"];
    v8 = [v7 copy];
    appId = v5->_appId;
    v5->_appId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bId"];
    v11 = [v10 copy];
    bundleId = v5->_bundleId;
    v5->_bundleId = v11;

    if (v6 && v5->_bundleId)
    {
      v13 = [(NSString *)v5->_appId stringByAppendingString:?];
      v14 = v5->_appId;
      v5->_appId = v13;
    }

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app"];
    v16 = [v15 copy];
    appName = v5->_appName;
    v5->_appName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locApp"];
    v19 = [v18 copy];
    localizedAppName = v5->_localizedAppName;
    v5->_localizedAppName = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assdDmns"];
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
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"rId"];
    v29 = [v28 copy];
    responderId = v5->_responderId;
    v5->_responderId = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneId"];
    v32 = [v31 copy];
    sceneID = v5->_sceneID;
    v5->_sceneID = v32;

    v5->_entityID = [v4 decodeInt64ForKey:@"entityId"];
    v5->_contextID = [v4 decodeInt32ForKey:@"ctxId"];
    v5->_layerID = [v4 decodeInt64ForKey:@"layerId"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneExId"];
    sceneExclusivityIdentifier = v5->_sceneExclusivityIdentifier;
    v5->_sceneExclusivityIdentifier = v34;

    v5->_delegateConformanceType = [v4 decodeInt32ForKey:@"cfmType"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v37 = [v36 copy];
    title = v5->_title;
    v5->_title = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prompt"];
    v40 = [v39 copy];
    prompt = v5->_prompt;
    v5->_prompt = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tiTraits"];
    textInputTraits = v5->_textInputTraits;
    v5->_textInputTraits = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kABC"];
    keyboardActionButtonConfiguration = v5->_keyboardActionButtonConfiguration;
    v5->_keyboardActionButtonConfiguration = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tiCtxId"];
    textInputContextIdentifier = v5->_textInputContextIdentifier;
    v5->_textInputContextIdentifier = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinIdxs"];
    PINEntrySeparatorIndexes = v5->_PINEntrySeparatorIndexes;
    v5->_PINEntrySeparatorIndexes = v48;

    if ([v4 containsValueForKey:@"validRange"])
    {
      v50 = [v4 decodeInt32ForKey:@"validRange"];
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
    if ([v4 containsValueForKey:@"afMode"])
    {
      v53 = [v4 decodeInt32ForKey:@"afMode"];
    }

    else
    {
      v53 = 0;
    }

    v5->_autofillMode = v53;
    if ([v4 containsValueForKey:@"afSubMode"])
    {
      v54 = [v4 decodeInt32ForKey:@"afSubMode"];
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
    v61 = [v4 decodeObjectOfClasses:v60 forKey:@"afCtx"];
    autofillContext = v5->_autofillContext;
    v5->_autofillContext = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pwRules"];
    passwordRules = v5->_passwordRules;
    v5->_passwordRules = v63;

    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ivInfo"];
    inputViewInfo = v5->_inputViewInfo;
    v5->_inputViewInfo = v65;

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avInfo"];
    assistantViewInfo = v5->_assistantViewInfo;
    v5->_assistantViewInfo = v67;

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aItem"];
    assistantItem = v5->_assistantItem;
    v5->_assistantItem = v69;

    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recpId"];
    recipientId = v5->_recipientId;
    v5->_recipientId = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"respCtx"];
    responseContext = v5->_responseContext;
    v5->_responseContext = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ctxHistory"];
    inputContextHistory = v5->_inputContextHistory;
    v5->_inputContextHistory = v75;

    v77 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"aSuppLexIds"];
    enabledSupplementalLexiconIdentifiers = v5->_enabledSupplementalLexiconIdentifiers;
    v5->_enabledSupplementalLexiconIdentifiers = v77;

    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
    v82 = [v4 decodeObjectOfClasses:v81 forKey:@"payIds"];
    supportedPayloadIds = v5->_supportedPayloadIds;
    v5->_supportedPayloadIds = v82;

    v84 = MEMORY[0x1E695DFD8];
    v85 = objc_opt_class();
    v86 = objc_opt_class();
    v87 = objc_opt_class();
    v88 = [v84 setWithObjects:{v85, v86, v87, objc_opt_class(), 0}];
    v89 = [v4 decodeObjectOfClasses:v88 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v89;

    v91 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fenceHandle"];
    fenceHandle = v5->_fenceHandle;
    v5->_fenceHandle = v91;

    v93 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputModeData"];
    textInputModeData = v5->_textInputModeData;
    v5->_textInputModeData = v93;

    v95 = MEMORY[0x1E695DFD8];
    v96 = objc_opt_class();
    v97 = [v95 setWithObjects:{v96, objc_opt_class(), 0}];
    v98 = [v4 decodeObjectOfClasses:v97 forKey:@"addedLocales"];
    additionalLocaleIdentifiers = v5->_additionalLocaleIdentifiers;
    v5->_additionalLocaleIdentifiers = v98;

    v5->_textInputTraitsMask.integerValue = [v4 decodeInt32ForKey:@"traitsMask"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[RTIDocumentTraits allocWithZone:](RTIDocumentTraits init];
  v5->_processId = self->_processId;
  v6 = [(NSString *)self->_appId copyWithZone:a3];
  appId = v5->_appId;
  v5->_appId = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:a3];
  bundleId = v5->_bundleId;
  v5->_bundleId = v8;

  v10 = [(NSString *)self->_appName copyWithZone:a3];
  appName = v5->_appName;
  v5->_appName = v10;

  v12 = [(NSString *)self->_localizedAppName copyWithZone:a3];
  localizedAppName = v5->_localizedAppName;
  v5->_localizedAppName = v12;

  v14 = [(NSArray *)self->_associatedDomains copyWithZone:a3];
  associatedDomains = v5->_associatedDomains;
  v5->_associatedDomains = v14;

  v16 = [(NSCopying *)self->_responderId copyWithZone:a3];
  responderId = v5->_responderId;
  v5->_responderId = v16;

  v18 = [(NSString *)self->_sceneID copyWithZone:a3];
  sceneID = v5->_sceneID;
  v5->_sceneID = v18;

  v5->_entityID = self->_entityID;
  v5->_contextID = self->_contextID;
  v5->_layerID = self->_layerID;
  v20 = [(NSString *)self->_sceneExclusivityIdentifier copyWithZone:a3];
  sceneExclusivityIdentifier = v5->_sceneExclusivityIdentifier;
  v5->_sceneExclusivityIdentifier = v20;

  v5->_delegateConformanceType = self->_delegateConformanceType;
  v22 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v22;

  v24 = [(NSString *)self->_prompt copyWithZone:a3];
  prompt = v5->_prompt;
  v5->_prompt = v24;

  v26 = [(TITextInputTraits *)self->_textInputTraits copyWithZone:a3];
  textInputTraits = v5->_textInputTraits;
  v5->_textInputTraits = v26;

  v28 = [(RTITextInputKeyboardActionButtonConfiguration *)self->_keyboardActionButtonConfiguration copyWithZone:a3];
  keyboardActionButtonConfiguration = v5->_keyboardActionButtonConfiguration;
  v5->_keyboardActionButtonConfiguration = v28;

  v30 = [(NSString *)self->_textInputContextIdentifier copyWithZone:a3];
  textInputContextIdentifier = v5->_textInputContextIdentifier;
  v5->_textInputContextIdentifier = v30;

  v32 = [(NSIndexSet *)self->_PINEntrySeparatorIndexes copyWithZone:a3];
  PINEntrySeparatorIndexes = v5->_PINEntrySeparatorIndexes;
  v5->_PINEntrySeparatorIndexes = v32;

  v5->_validTextRange = self->_validTextRange;
  v5->_autofillMode = self->_autofillMode;
  v5->_autofillSubMode = self->_autofillSubMode;
  v34 = [(NSDictionary *)self->_autofillContext copyWithZone:a3];
  autofillContext = v5->_autofillContext;
  v5->_autofillContext = v34;

  v36 = [(NSString *)self->_passwordRules copyWithZone:a3];
  passwordRules = v5->_passwordRules;
  v5->_passwordRules = v36;

  v38 = [(RTIInputViewInfo *)self->_inputViewInfo copyWithZone:a3];
  inputViewInfo = v5->_inputViewInfo;
  v5->_inputViewInfo = v38;

  v40 = [(RTIInputViewInfo *)self->_assistantViewInfo copyWithZone:a3];
  assistantViewInfo = v5->_assistantViewInfo;
  v5->_assistantViewInfo = v40;

  v42 = [(RTIAssistantItem *)self->_assistantItem copyWithZone:a3];
  assistantItem = v5->_assistantItem;
  v5->_assistantItem = v42;

  v44 = [(NSString *)self->_recipientId copyWithZone:a3];
  recipientId = v5->_recipientId;
  v5->_recipientId = v44;

  v46 = [(NSString *)self->_responseContext copyWithZone:a3];
  responseContext = v5->_responseContext;
  v5->_responseContext = v46;

  v48 = [(TIInputContextHistory *)self->_inputContextHistory copyWithZone:a3];
  inputContextHistory = v5->_inputContextHistory;
  v5->_inputContextHistory = v48;

  v50 = [(NSArray *)self->_enabledSupplementalLexiconIdentifiers copyWithZone:a3];
  enabledSupplementalLexiconIdentifiers = v5->_enabledSupplementalLexiconIdentifiers;
  v5->_enabledSupplementalLexiconIdentifiers = v50;

  v52 = [(NSArray *)self->_supportedPayloadIds copyWithZone:a3];
  supportedPayloadIds = v5->_supportedPayloadIds;
  v5->_supportedPayloadIds = v52;

  v54 = [(NSDictionary *)self->_userInfo copyWithZone:a3];
  userInfo = v5->_userInfo;
  v5->_userInfo = v54;

  fenceHandle = self->_fenceHandle;
  if (fenceHandle)
  {
    objc_storeStrong(&v5->_fenceHandle, fenceHandle);
  }

  v57 = [(NSData *)self->_textInputModeData copyWithZone:a3];
  textInputModeData = v5->_textInputModeData;
  v5->_textInputModeData = v57;

  v59 = [(NSArray *)self->_additionalLocaleIdentifiers copyWithZone:a3];
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

  v4 = [(RTIDocumentTraits *)self appId];

  if (v4)
  {
    v5 = [(RTIDocumentTraits *)self appId];
    [v3 appendFormat:@"; appId = %@", v5];
  }

  v6 = [(RTIDocumentTraits *)self bundleId];

  if (v6)
  {
    v7 = [(RTIDocumentTraits *)self bundleId];
    [v3 appendFormat:@"; bundleId = %@", v7];
  }

  v8 = [(RTIDocumentTraits *)self appName];

  if (v8)
  {
    v9 = [(RTIDocumentTraits *)self appName];
    [v3 appendFormat:@"; appName = %@", v9];
  }

  v10 = [(RTIDocumentTraits *)self localizedAppName];

  if (v10)
  {
    v11 = [(RTIDocumentTraits *)self localizedAppName];
    [v3 appendFormat:@"; localizedAppName = %@", v11];
  }

  v12 = [(RTIDocumentTraits *)self associatedDomains];

  if (v12)
  {
    v13 = [(RTIDocumentTraits *)self associatedDomains];
    [v3 appendFormat:@"; associatedDomains = %@", v13];
  }

  v14 = [(RTIDocumentTraits *)self responderId];

  if (v14)
  {
    v15 = [(RTIDocumentTraits *)self responderId];
    [v3 appendFormat:@"; responderId = %@", v15];
  }

  v16 = [(RTIDocumentTraits *)self sceneID];

  if (v16)
  {
    v17 = [(RTIDocumentTraits *)self sceneID];
    [v3 appendFormat:@"; sceneID = %@", v17];
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

  v18 = [(RTIDocumentTraits *)self sceneExclusivityIdentifier];

  if (v18)
  {
    v19 = [(RTIDocumentTraits *)self sceneExclusivityIdentifier];
    [v3 appendFormat:@"; sceneExclusivityIdentifier = %@", v19];
  }

  if ([(RTIDocumentTraits *)self delegateConformanceType])
  {
    [v3 appendFormat:@"; delegateConformanceType = %d", -[RTIDocumentTraits delegateConformanceType](self, "delegateConformanceType")];
  }

  if ([(RTIDocumentTraits *)self disableAutomaticKeyboardUI])
  {
    [v3 appendFormat:@"; disableAutomaticKeyboardUI = %d", -[RTIDocumentTraits disableAutomaticKeyboardUI](self, "disableAutomaticKeyboardUI")];
  }

  v20 = [(RTIDocumentTraits *)self title];

  if (v20)
  {
    v21 = [(RTIDocumentTraits *)self title];
    [v3 appendFormat:@"; title = %@", v21];
  }

  v22 = [(RTIDocumentTraits *)self prompt];

  if (v22)
  {
    v23 = [(RTIDocumentTraits *)self prompt];
    [v3 appendFormat:@"; prompt = %@", v23];
  }

  v24 = [(RTIDocumentTraits *)self textInputTraits];
  [v3 appendFormat:@"; textInputTraits = %@", v24];

  v25 = [(RTIDocumentTraits *)self textInputContextIdentifier];

  if (v25)
  {
    v26 = [(RTIDocumentTraits *)self textInputContextIdentifier];
    [v3 appendFormat:@"; textInputContextIdentifier = %@", v26];
  }

  if ([(RTIDocumentTraits *)self autofillMode])
  {
    [v3 appendFormat:@"; autofillMode = %d", -[RTIDocumentTraits autofillMode](self, "autofillMode")];
  }

  if ([(RTIDocumentTraits *)self autofillSubMode])
  {
    [v3 appendFormat:@"; autofillSubMode = %d", -[RTIDocumentTraits autofillSubMode](self, "autofillSubMode")];
  }

  v27 = [(RTIDocumentTraits *)self autofillContext];

  if (v27)
  {
    v28 = [(RTIDocumentTraits *)self autofillContext];
    [v3 appendFormat:@"; autofillContext = %@", v28];
  }

  if ([(RTIDocumentTraits *)self shouldLoadAutofillSignUp])
  {
    [v3 appendFormat:@"; shouldLoadAutofillSignUp = YES"];
  }

  v29 = [(RTIDocumentTraits *)self passwordRules];

  if (v29)
  {
    v30 = [(RTIDocumentTraits *)self passwordRules];
    [v3 appendFormat:@"; passwordRules = %@", v30];
  }

  v31 = [(RTIDocumentTraits *)self inputViewInfo];

  if (v31)
  {
    v32 = [(RTIDocumentTraits *)self inputViewInfo];
    [v3 appendFormat:@"; inputViewInfo = %@", v32];
  }

  v33 = [(RTIDocumentTraits *)self assistantViewInfo];

  if (v33)
  {
    v34 = [(RTIDocumentTraits *)self assistantViewInfo];
    [v3 appendFormat:@"; assistantViewInfo = %@", v34];
  }

  v35 = [(RTIDocumentTraits *)self assistantItem];

  if (v35)
  {
    v36 = [(RTIDocumentTraits *)self assistantItem];
    [v3 appendFormat:@"; assistantItem = %@", v36];
  }

  v37 = [(RTIDocumentTraits *)self recipientId];

  if (v37)
  {
    v38 = [(RTIDocumentTraits *)self recipientId];
    [v3 appendFormat:@"; recipientId = %@", v38];
  }

  v39 = [(RTIDocumentTraits *)self responseContext];

  if (v39)
  {
    v40 = [(RTIDocumentTraits *)self responseContext];
    [v3 appendFormat:@"; responseContext = %@", v40];
  }

  v41 = [(RTIDocumentTraits *)self inputContextHistory];

  if (v41)
  {
    v42 = [(RTIDocumentTraits *)self inputContextHistory];
    [v3 appendFormat:@"; inputContextHistory = %@", v42];
  }

  v43 = [(RTIDocumentTraits *)self enabledSupplementalLexiconIdentifiers];

  if (v43)
  {
    v44 = [(RTIDocumentTraits *)self enabledSupplementalLexiconIdentifiers];
    [v3 appendFormat:@"; enabledSupplementalLexiconIdentifiers = %@", v44];
  }

  v45 = [(RTIDocumentTraits *)self supportedPayloadIds];

  if (v45)
  {
    v46 = [(RTIDocumentTraits *)self supportedPayloadIds];
    [v3 appendFormat:@"; supportedPayloadIds = %@", v46];
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

  v47 = [(RTIDocumentTraits *)self userInfo];

  if (v47)
  {
    v48 = [(RTIDocumentTraits *)self userInfo];
    v49 = [v48 allKeys];
    [v3 appendFormat:@"; userInfo.keys = %@", v49];
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
    v50 = [(RTIDocumentTraits *)self shouldReverseLayoutDirection];
    v51 = @"N";
    if (v50)
    {
      v51 = @"Y";
    }

    [v3 appendFormat:@"; shouldReverseLayoutDirection = %@", v51];
  }

  v52 = [(RTIDocumentTraits *)self fenceHandle];

  if (v52)
  {
    v53 = [(RTIDocumentTraits *)self fenceHandle];
    [v3 appendFormat:@"; fenceHandle = %@", v53];
  }

  v54 = [(RTIDocumentTraits *)self textInputModeData];

  if (v54)
  {
    v55 = [(RTIDocumentTraits *)self textInputModeData];
    [v3 appendFormat:@"; has %lu bytes of textInputModeData", objc_msgSend(v55, "length")];
  }

  v56 = [(RTIDocumentTraits *)self additionalLocaleIdentifiers];

  if (v56)
  {
    v57 = [(RTIDocumentTraits *)self additionalLocaleIdentifiers];
    [v3 appendFormat:@"; addedLocales = %@", v57];
  }

  if ([(RTIDocumentTraits *)self isExplicitAutoFillMode])
  {
    [v3 appendFormat:@"; explicitAutoFillMode = YES"];
  }

  if ([(RTIDocumentTraits *)self isSingleLineDocument])
  {
    [v3 appendFormat:@"; singleLineDocument = YES"];
  }

  v58 = [(RTIDocumentTraits *)self keyboardActionButtonConfiguration];

  if (v58)
  {
    v59 = [(RTIDocumentTraits *)self keyboardActionButtonConfiguration];
    v60 = [v59 description];
    [v3 appendFormat:@"; keyboardActionButtonConfiguration = %@", v60];
  }

  v61 = v3;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTIDocumentTraits *)self processId];
      if (v6 == [(RTIDocumentTraits *)v5 processId])
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = [(RTIDocumentTraits *)self appId];
        v9 = [(RTIDocumentTraits *)v5 appId];
        v10 = [v7 _string:v8 matchesString:v9];

        if (!v10)
        {
          goto LABEL_26;
        }

        v11 = MEMORY[0x1E696AEC0];
        v12 = [(RTIDocumentTraits *)self bundleId];
        v13 = [(RTIDocumentTraits *)v5 bundleId];
        v10 = [v11 _string:v12 matchesString:v13];

        if (!v10)
        {
          goto LABEL_26;
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [(RTIDocumentTraits *)self appName];
        v16 = [(RTIDocumentTraits *)v5 appName];
        v10 = [v14 _string:v15 matchesString:v16];

        if (!v10)
        {
          goto LABEL_26;
        }

        v17 = MEMORY[0x1E696AEC0];
        v18 = [(RTIDocumentTraits *)self localizedAppName];
        v19 = [(RTIDocumentTraits *)v5 localizedAppName];
        v10 = [v17 _string:v18 matchesString:v19];

        if (!v10)
        {
          goto LABEL_26;
        }

        v20 = [(RTIDocumentTraits *)self associatedDomains];
        v21 = [(RTIDocumentTraits *)v5 associatedDomains];
        v22 = v21;
        if (v20 == v21)
        {
        }

        else
        {
          v23 = [(RTIDocumentTraits *)self associatedDomains];
          v24 = [(RTIDocumentTraits *)v5 associatedDomains];
          v25 = [v23 isEqualToArray:v24];

          if (!v25)
          {
            goto LABEL_25;
          }
        }

        v26 = [(RTIDocumentTraits *)self responderId];
        v27 = [(RTIDocumentTraits *)v5 responderId];
        v28 = v27;
        if (v26 == v27)
        {
        }

        else
        {
          v29 = [(RTIDocumentTraits *)self responderId];
          v30 = [(RTIDocumentTraits *)v5 responderId];
          v31 = [v29 isEqual:v30];

          if (!v31)
          {
            goto LABEL_25;
          }
        }

        v32 = MEMORY[0x1E696AEC0];
        v33 = [(RTIDocumentTraits *)self sceneID];
        v34 = [(RTIDocumentTraits *)v5 sceneID];
        v10 = [v32 _string:v33 matchesString:v34];

        if (!v10)
        {
          goto LABEL_26;
        }

        v35 = [(RTIDocumentTraits *)self entityID];
        if (v35 != [(RTIDocumentTraits *)v5 entityID])
        {
          goto LABEL_25;
        }

        v36 = [(RTIDocumentTraits *)self contextID];
        if (v36 != [(RTIDocumentTraits *)v5 contextID])
        {
          goto LABEL_25;
        }

        v37 = [(RTIDocumentTraits *)self layerID];
        if (v37 != [(RTIDocumentTraits *)v5 layerID])
        {
          goto LABEL_25;
        }

        v38 = MEMORY[0x1E696AEC0];
        v39 = [(RTIDocumentTraits *)self sceneExclusivityIdentifier];
        v40 = [(RTIDocumentTraits *)v5 sceneExclusivityIdentifier];
        v10 = [v38 _string:v39 matchesString:v40];

        if (!v10)
        {
LABEL_26:

          goto LABEL_27;
        }

        v41 = [(RTIDocumentTraits *)self delegateConformanceType];
        if (v41 == [(RTIDocumentTraits *)v5 delegateConformanceType])
        {
          v42 = [(RTIDocumentTraits *)self disableAutomaticKeyboardUI];
          if (v42 == [(RTIDocumentTraits *)v5 disableAutomaticKeyboardUI])
          {
            v44 = MEMORY[0x1E696AEC0];
            v45 = [(RTIDocumentTraits *)self title];
            v46 = [(RTIDocumentTraits *)v5 title];
            v10 = [v44 _string:v45 matchesString:v46];

            if (!v10)
            {
              goto LABEL_26;
            }

            v47 = MEMORY[0x1E696AEC0];
            v48 = [(RTIDocumentTraits *)self prompt];
            v49 = [(RTIDocumentTraits *)v5 prompt];
            v10 = [v47 _string:v48 matchesString:v49];

            if (!v10)
            {
              goto LABEL_26;
            }

            v50 = [(RTIDocumentTraits *)self textInputTraits];
            v51 = [(RTIDocumentTraits *)v5 textInputTraits];
            v52 = v51;
            if (v50 == v51)
            {
            }

            else
            {
              v53 = [(RTIDocumentTraits *)self textInputTraits];
              v54 = [(RTIDocumentTraits *)v5 textInputTraits];
              v55 = [v53 isEqual:v54];

              if (!v55)
              {
                goto LABEL_25;
              }
            }

            v56 = [(RTIDocumentTraits *)self textInputContextIdentifier];
            v57 = [(RTIDocumentTraits *)v5 textInputContextIdentifier];
            v58 = v57;
            if (v56 == v57)
            {
            }

            else
            {
              v59 = [(RTIDocumentTraits *)self textInputContextIdentifier];
              v60 = [(RTIDocumentTraits *)v5 textInputContextIdentifier];
              v61 = [v59 isEqual:v60];

              if (!v61)
              {
                goto LABEL_25;
              }
            }

            v62 = [(RTIDocumentTraits *)self PINEntrySeparatorIndexes];
            v63 = [(RTIDocumentTraits *)v5 PINEntrySeparatorIndexes];
            v64 = v63;
            if (v62 == v63)
            {
            }

            else
            {
              v65 = [(RTIDocumentTraits *)self PINEntrySeparatorIndexes];
              v66 = [(RTIDocumentTraits *)v5 PINEntrySeparatorIndexes];
              v67 = [v65 isEqual:v66];

              if (!v67)
              {
                goto LABEL_25;
              }
            }

            v68 = [(RTIDocumentTraits *)self validTextRange];
            v70 = v69;
            LOBYTE(v10) = 0;
            if (v68 != [(RTIDocumentTraits *)v5 validTextRange]|| v70 != v71)
            {
              goto LABEL_26;
            }

            v72 = [(RTIDocumentTraits *)self autofillMode];
            if (v72 != [(RTIDocumentTraits *)v5 autofillMode])
            {
              goto LABEL_25;
            }

            v73 = [(RTIDocumentTraits *)self autofillSubMode];
            if (v73 != [(RTIDocumentTraits *)v5 autofillSubMode])
            {
              goto LABEL_25;
            }

            v74 = [(RTIDocumentTraits *)self autofillContext];
            v75 = [(RTIDocumentTraits *)v5 autofillContext];
            v76 = v75;
            if (v74 == v75)
            {
            }

            else
            {
              v77 = [(RTIDocumentTraits *)self autofillContext];
              v78 = [(RTIDocumentTraits *)v5 autofillContext];
              v79 = [v77 isEqualToDictionary:v78];

              if (!v79)
              {
                goto LABEL_25;
              }
            }

            v80 = [(RTIDocumentTraits *)self shouldLoadAutofillSignUp];
            if (v80 == [(RTIDocumentTraits *)v5 shouldLoadAutofillSignUp])
            {
              v81 = [(RTIDocumentTraits *)self passwordRules];
              v82 = [(RTIDocumentTraits *)v5 passwordRules];
              v83 = v82;
              if (v81 == v82)
              {
              }

              else
              {
                v84 = [(RTIDocumentTraits *)self passwordRules];
                v85 = [(RTIDocumentTraits *)v5 passwordRules];
                v86 = [v84 isEqual:v85];

                if (!v86)
                {
                  goto LABEL_25;
                }
              }

              v87 = [(RTIDocumentTraits *)self inputViewInfo];
              v88 = [(RTIDocumentTraits *)v5 inputViewInfo];
              v89 = v88;
              if (v87 == v88)
              {
              }

              else
              {
                v90 = [(RTIDocumentTraits *)self inputViewInfo];
                v91 = [(RTIDocumentTraits *)v5 inputViewInfo];
                v92 = [v90 isEqual:v91];

                if (!v92)
                {
                  goto LABEL_25;
                }
              }

              v93 = [(RTIDocumentTraits *)self assistantViewInfo];
              v94 = [(RTIDocumentTraits *)v5 assistantViewInfo];
              v95 = v94;
              if (v93 == v94)
              {
              }

              else
              {
                v96 = [(RTIDocumentTraits *)self assistantViewInfo];
                v97 = [(RTIDocumentTraits *)v5 assistantViewInfo];
                v98 = [v96 isEqual:v97];

                if (!v98)
                {
                  goto LABEL_25;
                }
              }

              v99 = [(RTIDocumentTraits *)self assistantItem];
              v100 = [(RTIDocumentTraits *)v5 assistantItem];
              v101 = v100;
              if (v99 == v100)
              {
              }

              else
              {
                v102 = [(RTIDocumentTraits *)self assistantItem];
                v103 = [(RTIDocumentTraits *)v5 assistantItem];
                v104 = [v102 isEqual:v103];

                if (!v104)
                {
                  goto LABEL_25;
                }
              }

              v105 = MEMORY[0x1E696AEC0];
              v106 = [(RTIDocumentTraits *)self recipientId];
              v107 = [(RTIDocumentTraits *)v5 recipientId];
              v10 = [v105 _string:v106 matchesString:v107];

              if (!v10)
              {
                goto LABEL_26;
              }

              v108 = MEMORY[0x1E696AEC0];
              v109 = [(RTIDocumentTraits *)self responseContext];
              v110 = [(RTIDocumentTraits *)v5 responseContext];
              v10 = [v108 _string:v109 matchesString:v110];

              if (!v10)
              {
                goto LABEL_26;
              }

              v111 = [(RTIDocumentTraits *)self inputContextHistory];
              v112 = [(RTIDocumentTraits *)v5 inputContextHistory];
              v113 = v112;
              if (v111 == v112)
              {
              }

              else
              {
                v114 = [(RTIDocumentTraits *)self inputContextHistory];
                v115 = [(RTIDocumentTraits *)v5 inputContextHistory];
                v116 = [v114 isEqual:v115];

                if (!v116)
                {
                  goto LABEL_25;
                }
              }

              v117 = [(RTIDocumentTraits *)self enabledSupplementalLexiconIdentifiers];
              v118 = [(RTIDocumentTraits *)v5 enabledSupplementalLexiconIdentifiers];
              v119 = v118;
              if (v117 == v118)
              {
              }

              else
              {
                v120 = [(RTIDocumentTraits *)self enabledSupplementalLexiconIdentifiers];
                v121 = [(RTIDocumentTraits *)v5 enabledSupplementalLexiconIdentifiers];
                v122 = [v120 isEqualToArray:v121];

                if (!v122)
                {
                  goto LABEL_25;
                }
              }

              v123 = [(RTIDocumentTraits *)self supportedPayloadIds];
              v124 = [(RTIDocumentTraits *)v5 supportedPayloadIds];
              v125 = v124;
              if (v123 == v124)
              {
              }

              else
              {
                v126 = [(RTIDocumentTraits *)self supportedPayloadIds];
                v127 = [(RTIDocumentTraits *)v5 supportedPayloadIds];
                v128 = [v126 isEqualToArray:v127];

                if (!v128)
                {
                  goto LABEL_25;
                }
              }

              v129 = [(RTIDocumentTraits *)self supportsImagePaste];
              if (v129 != [(RTIDocumentTraits *)v5 supportsImagePaste])
              {
                goto LABEL_25;
              }

              v130 = [(RTIDocumentTraits *)self supportsAdaptiveImageGlyph];
              if (v130 != [(RTIDocumentTraits *)v5 supportsAdaptiveImageGlyph])
              {
                goto LABEL_25;
              }

              v131 = [(RTIDocumentTraits *)self supportsGenmojiCreation];
              if (v131 != [(RTIDocumentTraits *)v5 supportsGenmojiCreation])
              {
                goto LABEL_25;
              }

              v132 = [(RTIDocumentTraits *)self devicePasscodeEntry];
              if (v132 != [(RTIDocumentTraits *)v5 devicePasscodeEntry])
              {
                goto LABEL_25;
              }

              v133 = [(RTIDocumentTraits *)self disableInputBars];
              if (v133 != [(RTIDocumentTraits *)v5 disableInputBars])
              {
                goto LABEL_25;
              }

              v134 = [(RTIDocumentTraits *)self userInfo];
              v135 = [(RTIDocumentTraits *)v5 userInfo];
              v136 = v135;
              if (v134 == v135)
              {
              }

              else
              {
                v137 = [(RTIDocumentTraits *)self userInfo];
                v138 = [(RTIDocumentTraits *)v5 userInfo];
                v139 = [v137 isEqualToDictionary:v138];

                if (!v139)
                {
                  goto LABEL_25;
                }
              }

              v140 = [(RTIDocumentTraits *)self disablePrediction];
              if (v140 != [(RTIDocumentTraits *)v5 disablePrediction])
              {
                goto LABEL_25;
              }

              v141 = [(RTIDocumentTraits *)self hidePrediction];
              if (v141 != [(RTIDocumentTraits *)v5 hidePrediction])
              {
                goto LABEL_25;
              }

              v142 = [(RTIDocumentTraits *)self shouldReverseLayoutDirection];
              if (v142 != [(RTIDocumentTraits *)v5 shouldReverseLayoutDirection])
              {
                goto LABEL_25;
              }

              v143 = [(RTIDocumentTraits *)self textInputModeData];
              v144 = [(RTIDocumentTraits *)v5 textInputModeData];
              v145 = v144;
              if (v143 == v144)
              {
              }

              else
              {
                v146 = [(RTIDocumentTraits *)self textInputModeData];
                v147 = [(RTIDocumentTraits *)v5 textInputModeData];
                v148 = [v146 isEqual:v147];

                if (!v148)
                {
                  goto LABEL_25;
                }
              }

              v149 = [(RTIDocumentTraits *)self additionalLocaleIdentifiers];
              v150 = [(RTIDocumentTraits *)v5 additionalLocaleIdentifiers];
              v151 = v150;
              if (v149 == v150)
              {
              }

              else
              {
                v152 = [(RTIDocumentTraits *)self additionalLocaleIdentifiers];
                v153 = [(RTIDocumentTraits *)v5 additionalLocaleIdentifiers];
                v154 = [v152 isEqualToArray:v153];

                if (!v154)
                {
                  goto LABEL_25;
                }
              }

              v155 = [(RTIDocumentTraits *)self isExplicitAutoFillMode];
              if (v155 == [(RTIDocumentTraits *)v5 isExplicitAutoFillMode])
              {
                v156 = [(RTIDocumentTraits *)self isSingleLineDocument];
                if (v156 == [(RTIDocumentTraits *)v5 isSingleLineDocument])
                {
                  v157 = [(RTIDocumentTraits *)self keyboardActionButtonConfiguration];
                  v158 = [(RTIDocumentTraits *)v5 keyboardActionButtonConfiguration];
                  if (v157 == v158)
                  {
                    LOBYTE(v10) = 1;
                  }

                  else
                  {
                    v159 = [(RTIDocumentTraits *)self keyboardActionButtonConfiguration];
                    v160 = [(RTIDocumentTraits *)v5 keyboardActionButtonConfiguration];
                    LOBYTE(v10) = [v159 isEqual:v160];
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

- (void)copyContextualPropertiesFromDocumentTraits:(id)a3
{
  v54 = a3;
  v4 = [*(v54 + 8) copy];
  responderId = self->_responderId;
  self->_responderId = v4;

  v6 = [*(v54 + 9) copy];
  sceneID = self->_sceneID;
  self->_sceneID = v6;

  self->_entityID = *(v54 + 10);
  self->_contextID = *(v54 + 4);
  self->_layerID = *(v54 + 11);
  v8 = [*(v54 + 12) copy];
  sceneExclusivityIdentifier = self->_sceneExclusivityIdentifier;
  self->_sceneExclusivityIdentifier = v8;

  self->_delegateConformanceType = *(v54 + 13);
  v10 = [*(v54 + 14) copy];
  title = self->_title;
  self->_title = v10;

  v12 = [*(v54 + 15) copy];
  prompt = self->_prompt;
  self->_prompt = v12;

  v14 = [*(v54 + 19) copy];
  textInputTraits = self->_textInputTraits;
  self->_textInputTraits = v14;

  v16 = [*(v54 + 35) copy];
  keyboardActionButtonConfiguration = self->_keyboardActionButtonConfiguration;
  self->_keyboardActionButtonConfiguration = v16;

  v18 = [*(v54 + 20) copy];
  textInputContextIdentifier = self->_textInputContextIdentifier;
  self->_textInputContextIdentifier = v18;

  v20 = [*(v54 + 21) copy];
  PINEntrySeparatorIndexes = self->_PINEntrySeparatorIndexes;
  self->_PINEntrySeparatorIndexes = v20;

  self->_validTextRange = *(v54 + 18);
  self->_autofillMode = *(v54 + 22);
  self->_autofillSubMode = *(v54 + 23);
  v22 = [*(v54 + 24) copy];
  autofillContext = self->_autofillContext;
  self->_autofillContext = v22;

  v24 = [*(v54 + 25) copy];
  passwordRules = self->_passwordRules;
  self->_passwordRules = v24;

  v26 = [*(v54 + 7) copy];
  associatedDomains = self->_associatedDomains;
  self->_associatedDomains = v26;

  v28 = [*(v54 + 16) copy];
  inputViewInfo = self->_inputViewInfo;
  self->_inputViewInfo = v28;

  v30 = [*(v54 + 17) copy];
  assistantViewInfo = self->_assistantViewInfo;
  self->_assistantViewInfo = v30;

  v32 = [*(v54 + 18) copy];
  assistantItem = self->_assistantItem;
  self->_assistantItem = v32;

  v34 = [*(v54 + 26) copy];
  recipientId = self->_recipientId;
  self->_recipientId = v34;

  v36 = [*(v54 + 27) copy];
  responseContext = self->_responseContext;
  self->_responseContext = v36;

  v38 = [*(v54 + 28) copy];
  inputContextHistory = self->_inputContextHistory;
  self->_inputContextHistory = v38;

  v40 = [*(v54 + 29) copy];
  enabledSupplementalLexiconIdentifiers = self->_enabledSupplementalLexiconIdentifiers;
  self->_enabledSupplementalLexiconIdentifiers = v40;

  v42 = [*(v54 + 30) copy];
  supportedPayloadIds = self->_supportedPayloadIds;
  self->_supportedPayloadIds = v42;

  v44 = [*(v54 + 31) copy];
  userInfo = self->_userInfo;
  self->_userInfo = v44;

  v46 = v54;
  v47 = *(v54 + 32);
  if (v47)
  {
    fenceHandle = self->_fenceHandle;
    if (fenceHandle != v47 && ([(CAFenceHandle *)fenceHandle isInvalidated]& 1) == 0)
    {
      [(CAFenceHandle *)self->_fenceHandle invalidate];
    }

    objc_storeStrong(&self->_fenceHandle, *(v54 + 32));
    v49 = *(v54 + 32);
    *(v54 + 32) = 0;

    v46 = v54;
  }

  v50 = [v46[33] copy];
  textInputModeData = self->_textInputModeData;
  self->_textInputModeData = v50;

  v52 = [*(v54 + 34) copy];
  additionalLocaleIdentifiers = self->_additionalLocaleIdentifiers;
  self->_additionalLocaleIdentifiers = v52;

  self->_textInputTraitsMask.integerValue = *(v54 + 2);
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