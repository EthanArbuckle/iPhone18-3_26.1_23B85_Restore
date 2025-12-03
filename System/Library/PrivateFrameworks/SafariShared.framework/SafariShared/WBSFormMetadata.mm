@interface WBSFormMetadata
+ (id)formMetadataFromSerializedData:(id)data;
- (BOOL)containsAtLeastOneSecureTextField;
- (BOOL)containsClassifications;
- (BOOL)isEqual:(id)equal;
- (CGRect)_controlsBoundingRect;
- (NSArray)uniqueIDsOfPasswordControlAndRelatedControls;
- (NSData)serializedData;
- (WBSFormControlMetadata)bestControlForStreamlinedLoginFocus;
- (WBSFormMetadata)initWithCoder:(id)coder;
- (WBSFormMetadata)initWithDictionary:(id)dictionary;
- (WBSFormMetadata)initWithJSValue:(id)value;
- (WBSFormMetadata)initWithMetadata:(id)metadata;
- (id)_init;
- (id)_valueOfControlWithUniqueID:(id)d;
- (id)description;
- (id)dictionaryRepresentationRedactingSensitiveValues:(BOOL)values withKnownSensitiveValues:(id)sensitiveValues;
- (id)formMetadataByReplacingControlsWith:(id)with;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)serializedData;
@end

@implementation WBSFormMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self != v5)
    {
      if (self->_uniqueID != v5->_uniqueID || self->_allowsAutocomplete != v5->_allowsAutocomplete || self->_type != v5->_type || self->_containsActiveElement != v5->_containsActiveElement || !WBSIsEqual() || self->_bestForPageLevelAutoFill != v6->_bestForPageLevelAutoFill || self->_bestForStreamlinedLogin != v6->_bestForStreamlinedLogin || self->_eligibleForAutomaticLogin != v6->_eligibleForAutomaticLogin || self->_visible != v6->_visible || self->_usesRelAsync != v6->_usesRelAsync || self->_usesGeneratedPassword != v6->_usesGeneratedPassword || self->_requestType != v6->_requestType || self->_isSearchForm != v6->_isSearchForm || (annotations = self->_annotations, annotations != v6->_annotations) && ![(NSDictionary *)annotations isEqualToDictionary:?]|| (confirmPasswordElementUniqueID = self->_confirmPasswordElementUniqueID, confirmPasswordElementUniqueID != v6->_confirmPasswordElementUniqueID) && ![(NSString *)confirmPasswordElementUniqueID isEqualToString:?]|| (firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = self->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID, firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID != v6->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID) && ![(NSString *)firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID isEqualToString:?]|| (action = self->_action, action != v6->_action) && ![(NSURL *)action isEqual:?]|| (controls = self->_controls, controls != v6->_controls) && ![(NSArray *)controls isEqualToArray:?]|| (oldPasswordElementUniqueID = self->_oldPasswordElementUniqueID, oldPasswordElementUniqueID != v6->_oldPasswordElementUniqueID) && ![(NSString *)oldPasswordElementUniqueID isEqualToString:?]|| (passwordElementUniqueID = self->_passwordElementUniqueID, passwordElementUniqueID != v6->_passwordElementUniqueID) && ![(NSString *)passwordElementUniqueID isEqualToString:?]|| (textSample = self->_textSample, textSample != v6->_textSample) && ![(NSString *)textSample isEqualToString:?])
      {
        v16 = 0;
        goto LABEL_37;
      }

      userNameElementUniqueID = self->_userNameElementUniqueID;
      if (userNameElementUniqueID != v6->_userNameElementUniqueID)
      {
        v16 = [(NSString *)userNameElementUniqueID isEqualToString:?];
LABEL_37:

        goto LABEL_38;
      }
    }

    v16 = 1;
    goto LABEL_37;
  }

  v16 = 0;
LABEL_38:

  return v16;
}

- (WBSFormMetadata)initWithJSValue:(id)value
{
  valueCopy = value;
  v46.receiver = self;
  v46.super_class = WBSFormMetadata;
  v5 = [(WBSFormMetadata *)&v46 init];
  if (v5
    && ([valueCopy objectForKeyedSubscript:@"DisallowsAutocomplete"], v6 = objc_claimAutoreleasedReturnValue(), v5->_allowsAutocomplete = objc_msgSend(v6, "toBool") ^ 1, v6, objc_msgSend(valueCopy, "objectForKeyedSubscript:", @"Annotations"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "toDictionary"), v8 = objc_claimAutoreleasedReturnValue(), annotations = v5->_annotations, v5->_annotations = v8, annotations, v7, objc_msgSend(valueCopy, "objectForKeyedSubscript:", @"AutoFillFormType"), v10 = objc_claimAutoreleasedReturnValue(), v5->_type = objc_msgSend(v10, "toInt32"), v10, v5->_type <= 5)
    && (stringForKey(valueCopy, @"ConfirmPasswordElementUniqueID"),
        v11 = objc_claimAutoreleasedReturnValue(),
        confirmPasswordElementUniqueID = v5->_confirmPasswordElementUniqueID,
        v5->_confirmPasswordElementUniqueID = v11,
        confirmPasswordElementUniqueID,
        [valueCopy objectForKeyedSubscript:@"ContainsActiveElement"],
        v13 = objc_claimAutoreleasedReturnValue(),
        v5->_containsActiveElement = [v13 toBool],
        v13,
        stringForKey(valueCopy, @"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"),
        v14 = objc_claimAutoreleasedReturnValue(),
        firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID,
        v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v14,
        firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID,
        v16 = MEMORY[0x1E695DFF8],
        stringForKey(valueCopy, @"FormAction"),
        v17 = objc_claimAutoreleasedReturnValue(),
        [v16 safari_URLWithDataAsString:v17],
        v18 = objc_claimAutoreleasedReturnValue(),
        action = v5->_action,
        v5->_action = v18,
        action,
        v17,
        [valueCopy objectForKeyedSubscript:@"FormControls"],
        v20 = objc_claimAutoreleasedReturnValue(),
        [v20 toArray],
        v21 = objc_claimAutoreleasedReturnValue(),
        [v21 safari_mapObjectsUsingBlock:&__block_literal_global_51],
        v22 = objc_claimAutoreleasedReturnValue(),
        controls = v5->_controls,
        v5->_controls = v22,
        controls,
        v21,
        v20,
        [valueCopy objectForKeyedSubscript:@"FormID"],
        v24 = objc_claimAutoreleasedReturnValue(),
        [v24 toDouble],
        v5->_uniqueID = v25,
        v24,
        stringForKey(valueCopy, @"LogicalFormElementSelector"),
        v26 = objc_claimAutoreleasedReturnValue(),
        logicalFormElementSelector = v5->_logicalFormElementSelector,
        v5->_logicalFormElementSelector = v26,
        logicalFormElementSelector,
        [valueCopy objectForKeyedSubscript:@"FormIsBestForPageLevelAutoFill"],
        v28 = objc_claimAutoreleasedReturnValue(),
        v5->_bestForPageLevelAutoFill = [v28 toBool],
        v28,
        [valueCopy objectForKeyedSubscript:@"FormIsBestForStreamlinedLogin"],
        v29 = objc_claimAutoreleasedReturnValue(),
        v5->_bestForStreamlinedLogin = [v29 toBool],
        v29,
        [valueCopy objectForKeyedSubscript:@"FormIsEligibleForAutomaticLogin"],
        v30 = objc_claimAutoreleasedReturnValue(),
        v5->_eligibleForAutomaticLogin = [v30 toBool],
        v30,
        [valueCopy objectForKeyedSubscript:@"IsVisible"],
        v31 = objc_claimAutoreleasedReturnValue(),
        v5->_visible = [v31 toBool],
        v31,
        [valueCopy objectForKeyedSubscript:@"FormUsesRelAsync"],
        v32 = objc_claimAutoreleasedReturnValue(),
        v5->_usesRelAsync = [v32 toBool],
        v32,
        stringForKey(valueCopy, @"OldPasswordElementUniqueID"),
        v33 = objc_claimAutoreleasedReturnValue(),
        oldPasswordElementUniqueID = v5->_oldPasswordElementUniqueID,
        v5->_oldPasswordElementUniqueID = v33,
        oldPasswordElementUniqueID,
        stringForKey(valueCopy, @"PasswordElementUniqueID"),
        v35 = objc_claimAutoreleasedReturnValue(),
        passwordElementUniqueID = v5->_passwordElementUniqueID,
        v5->_passwordElementUniqueID = v35,
        passwordElementUniqueID,
        stringForKey(valueCopy, @"TextSample"),
        v37 = objc_claimAutoreleasedReturnValue(),
        textSample = v5->_textSample,
        v5->_textSample = v37,
        textSample,
        stringForKey(valueCopy, @"UsernameElementUniqueID"),
        v39 = objc_claimAutoreleasedReturnValue(),
        userNameElementUniqueID = v5->_userNameElementUniqueID,
        v5->_userNameElementUniqueID = v39,
        userNameElementUniqueID,
        [valueCopy objectForKeyedSubscript:@"UsesGeneratedPassword"],
        v41 = objc_claimAutoreleasedReturnValue(),
        v5->_usesGeneratedPassword = [v41 toBool],
        v41,
        [valueCopy objectForKeyedSubscript:@"RequestType"],
        v42 = objc_claimAutoreleasedReturnValue(),
        v5->_requestType = [v42 toInt32],
        v42,
        v5->_requestType <= 4))
  {
    v43 = [valueCopy objectForKeyedSubscript:@"FormIsSearchForm"];
    v5->_isSearchForm = [v43 toBool];

    v44 = v5;
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

WBSFormControlMetadata *__35__WBSFormMetadata_initWithJSValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSFormControlMetadata alloc] initWithDictionary:v2];

  return v3;
}

- (WBSFormMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v45.receiver = self;
  v45.super_class = WBSFormMetadata;
  v5 = [(WBSFormMetadata *)&v45 init];
  if (v5
    && ([dictionaryCopy objectForKeyedSubscript:@"AutoFillFormType"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6)
    && ([dictionaryCopy objectForKeyedSubscript:@"DisallowsAutocomplete"], v7 = objc_claimAutoreleasedReturnValue(), v5->_allowsAutocomplete = objc_msgSend(v7, "BOOLValue") ^ 1, v7, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"Annotations"), v8 = objc_claimAutoreleasedReturnValue(), annotations = v5->_annotations, v5->_annotations = v8, annotations, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"AutoFillFormType"), v10 = objc_claimAutoreleasedReturnValue(), v5->_type = objc_msgSend(v10, "integerValue"), v10, v5->_type <= 5)
    && ([dictionaryCopy objectForKeyedSubscript:@"ConfirmPasswordElementUniqueID"],
        v11 = objc_claimAutoreleasedReturnValue(),
        confirmPasswordElementUniqueID = v5->_confirmPasswordElementUniqueID,
        v5->_confirmPasswordElementUniqueID = v11,
        confirmPasswordElementUniqueID,
        [dictionaryCopy objectForKeyedSubscript:@"ContainsActiveElement"],
        v13 = objc_claimAutoreleasedReturnValue(),
        v5->_containsActiveElement = [v13 BOOLValue],
        v13,
        [dictionaryCopy objectForKeyedSubscript:@"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"],
        v14 = objc_claimAutoreleasedReturnValue(),
        firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID,
        v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v14,
        firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID,
        v16 = MEMORY[0x1E695DFF8],
        [dictionaryCopy objectForKeyedSubscript:@"FormAction"],
        v17 = objc_claimAutoreleasedReturnValue(),
        [v16 safari_URLWithDataAsString:v17],
        v18 = objc_claimAutoreleasedReturnValue(),
        action = v5->_action,
        v5->_action = v18,
        action,
        v17,
        [dictionaryCopy objectForKeyedSubscript:@"FormControls"],
        v20 = objc_claimAutoreleasedReturnValue(),
        [v20 safari_mapObjectsUsingBlock:&__block_literal_global_4_0],
        v21 = objc_claimAutoreleasedReturnValue(),
        controls = v5->_controls,
        v5->_controls = v21,
        controls,
        v20,
        [dictionaryCopy objectForKeyedSubscript:@"FormID"],
        v23 = objc_claimAutoreleasedReturnValue(),
        [v23 doubleValue],
        v5->_uniqueID = v24,
        v23,
        [dictionaryCopy objectForKeyedSubscript:@"LogicalFormElementSelector"],
        v25 = objc_claimAutoreleasedReturnValue(),
        logicalFormElementSelector = v5->_logicalFormElementSelector,
        v5->_logicalFormElementSelector = v25,
        logicalFormElementSelector,
        [dictionaryCopy objectForKeyedSubscript:@"FormIsBestForPageLevelAutoFill"],
        v27 = objc_claimAutoreleasedReturnValue(),
        v5->_bestForPageLevelAutoFill = [v27 BOOLValue],
        v27,
        [dictionaryCopy objectForKeyedSubscript:@"FormIsBestForStreamlinedLogin"],
        v28 = objc_claimAutoreleasedReturnValue(),
        v5->_bestForStreamlinedLogin = [v28 BOOLValue],
        v28,
        [dictionaryCopy objectForKeyedSubscript:@"FormIsEligibleForAutomaticLogin"],
        v29 = objc_claimAutoreleasedReturnValue(),
        v5->_eligibleForAutomaticLogin = [v29 BOOLValue],
        v29,
        [dictionaryCopy objectForKeyedSubscript:@"IsVisible"],
        v30 = objc_claimAutoreleasedReturnValue(),
        v5->_visible = [v30 BOOLValue],
        v30,
        [dictionaryCopy objectForKeyedSubscript:@"FormUsesRelAsync"],
        v31 = objc_claimAutoreleasedReturnValue(),
        v5->_usesRelAsync = [v31 BOOLValue],
        v31,
        [dictionaryCopy objectForKeyedSubscript:@"OldPasswordElementUniqueID"],
        v32 = objc_claimAutoreleasedReturnValue(),
        oldPasswordElementUniqueID = v5->_oldPasswordElementUniqueID,
        v5->_oldPasswordElementUniqueID = v32,
        oldPasswordElementUniqueID,
        [dictionaryCopy objectForKeyedSubscript:@"PasswordElementUniqueID"],
        v34 = objc_claimAutoreleasedReturnValue(),
        passwordElementUniqueID = v5->_passwordElementUniqueID,
        v5->_passwordElementUniqueID = v34,
        passwordElementUniqueID,
        [dictionaryCopy objectForKeyedSubscript:@"TextSample"],
        v36 = objc_claimAutoreleasedReturnValue(),
        textSample = v5->_textSample,
        v5->_textSample = v36,
        textSample,
        [dictionaryCopy objectForKeyedSubscript:@"UsernameElementUniqueID"],
        v38 = objc_claimAutoreleasedReturnValue(),
        userNameElementUniqueID = v5->_userNameElementUniqueID,
        v5->_userNameElementUniqueID = v38,
        userNameElementUniqueID,
        [dictionaryCopy objectForKeyedSubscript:@"UsesGeneratedPassword"],
        v40 = objc_claimAutoreleasedReturnValue(),
        v5->_usesGeneratedPassword = [v40 BOOLValue],
        v40,
        [dictionaryCopy objectForKeyedSubscript:@"RequestType"],
        v41 = objc_claimAutoreleasedReturnValue(),
        v5->_requestType = [v41 integerValue],
        v41,
        v5->_requestType <= 4))
  {
    v42 = [dictionaryCopy objectForKeyedSubscript:@"FormIsSearchForm"];
    v5->_isSearchForm = [v42 BOOLValue];

    v43 = v5;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

WBSFormControlMetadata *__38__WBSFormMetadata_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSFormControlMetadata alloc] initWithDictionary:v2];

  return v3;
}

- (WBSFormMetadata)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v27.receiver = self;
  v27.super_class = WBSFormMetadata;
  v5 = [(WBSFormMetadata *)&v27 init];
  v6 = v5;
  if (v5)
  {
    v5->_allowsAutocomplete = *(metadataCopy + 72);
    v5->_type = *(metadataCopy + 2);
    v5->_containsActiveElement = *(metadataCopy + 73);
    v5->_uniqueID = *(metadataCopy + 13);
    objc_storeStrong(&v5->_logicalFormElementSelector, *(metadataCopy + 14));
    v6->_bestForPageLevelAutoFill = *(metadataCopy + 74);
    v6->_bestForStreamlinedLogin = *(metadataCopy + 75);
    v6->_eligibleForAutomaticLogin = *(metadataCopy + 76);
    v6->_visible = *(metadataCopy + 77);
    v6->_usesRelAsync = *(metadataCopy + 78);
    v6->_usesGeneratedPassword = *(metadataCopy + 79);
    v6->_requestType = *(metadataCopy + 16);
    v6->_isSearchForm = *(metadataCopy + 80);
    v7 = [*(metadataCopy + 11) copy];
    annotations = v6->_annotations;
    v6->_annotations = v7;

    v9 = [*(metadataCopy + 6) copy];
    confirmPasswordElementUniqueID = v6->_confirmPasswordElementUniqueID;
    v6->_confirmPasswordElementUniqueID = v9;

    v11 = [*(metadataCopy + 8) copy];
    firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v6->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
    v6->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v11;

    objc_storeStrong(&v6->_action, *(metadataCopy + 12));
    v13 = [*(metadataCopy + 3) copy];
    controls = v6->_controls;
    v6->_controls = v13;

    v15 = [*(metadataCopy + 7) copy];
    oldPasswordElementUniqueID = v6->_oldPasswordElementUniqueID;
    v6->_oldPasswordElementUniqueID = v15;

    v17 = [*(metadataCopy + 5) copy];
    passwordElementUniqueID = v6->_passwordElementUniqueID;
    v6->_passwordElementUniqueID = v17;

    v19 = [*(metadataCopy + 15) copy];
    textSample = v6->_textSample;
    v6->_textSample = v19;

    v21 = [*(metadataCopy + 4) copy];
    userNameElementUniqueID = v6->_userNameElementUniqueID;
    v6->_userNameElementUniqueID = v21;

    v23 = [*(metadataCopy + 17) copy];
    passwordRequirements = v6->_passwordRequirements;
    v6->_passwordRequirements = v23;

    v25 = v6;
  }

  return v6;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = WBSFormMetadata;
  return [(WBSFormMetadata *)&v3 init];
}

- (id)formMetadataByReplacingControlsWith:(id)with
{
  withCopy = with;
  _init = [[WBSFormMetadata alloc] _init];
  *(_init + 72) = self->_allowsAutocomplete;
  *(_init + 2) = self->_type;
  *(_init + 73) = self->_containsActiveElement;
  *(_init + 13) = self->_uniqueID;
  objc_storeStrong(_init + 14, self->_logicalFormElementSelector);
  *(_init + 74) = self->_bestForPageLevelAutoFill;
  *(_init + 75) = self->_bestForStreamlinedLogin;
  *(_init + 76) = self->_eligibleForAutomaticLogin;
  *(_init + 77) = self->_visible;
  *(_init + 78) = self->_usesRelAsync;
  *(_init + 79) = self->_usesGeneratedPassword;
  *(_init + 16) = self->_requestType;
  *(_init + 80) = self->_isSearchForm;
  v6 = [(NSDictionary *)self->_annotations copy];
  v7 = *(_init + 11);
  *(_init + 11) = v6;

  v8 = [(NSString *)self->_confirmPasswordElementUniqueID copy];
  v9 = *(_init + 6);
  *(_init + 6) = v8;

  v10 = [(NSString *)self->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID copy];
  v11 = *(_init + 8);
  *(_init + 8) = v10;

  objc_storeStrong(_init + 12, self->_action);
  v12 = [withCopy mutableCopy];

  v13 = *(_init + 3);
  *(_init + 3) = v12;

  v14 = [(NSString *)self->_oldPasswordElementUniqueID copy];
  v15 = *(_init + 7);
  *(_init + 7) = v14;

  v16 = [(NSString *)self->_passwordElementUniqueID copy];
  v17 = *(_init + 5);
  *(_init + 5) = v16;

  v18 = [(NSString *)self->_textSample copy];
  v19 = *(_init + 15);
  *(_init + 15) = v18;

  v20 = [(NSString *)self->_userNameElementUniqueID copy];
  v21 = *(_init + 4);
  *(_init + 4) = v20;

  v22 = [(NSDictionary *)self->_passwordRequirements copy];
  v23 = *(_init + 17);
  *(_init + 17) = v22;

  return _init;
}

- (id)dictionaryRepresentationRedactingSensitiveValues:(BOOL)values withKnownSensitiveValues:(id)sensitiveValues
{
  valuesCopy = values;
  sensitiveValuesCopy = sensitiveValues;
  v26 = MEMORY[0x1E695DF90];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_type];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_containsActiveElement];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_uniqueID];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_visible];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_usesGeneratedPassword];
  v10 = [v26 dictionaryWithObjectsAndKeys:{v5, @"AutoFillFormType", v6, @"ContainsActiveElement", v7, @"FormID", v8, @"IsVisible", v9, @"UsesGeneratedPassword", 0}];

  if (!self->_allowsAutocomplete)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"DisallowsAutocomplete"];
  }

  if (self->_annotations && !valuesCopy)
  {
    [v10 setObject:? forKeyedSubscript:?];
  }

  confirmPasswordElementUniqueID = self->_confirmPasswordElementUniqueID;
  if (confirmPasswordElementUniqueID)
  {
    [v10 setObject:confirmPasswordElementUniqueID forKeyedSubscript:@"ConfirmPasswordElementUniqueID"];
  }

  firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = self->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
  if (firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID)
  {
    [v10 setObject:firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID forKeyedSubscript:@"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"];
  }

  action = self->_action;
  if (action && !valuesCopy)
  {
    safari_originalDataAsString = [(NSURL *)action safari_originalDataAsString];
    [v10 setObject:safari_originalDataAsString forKeyedSubscript:@"FormAction"];
  }

  controls = self->_controls;
  if (controls)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __93__WBSFormMetadata_dictionaryRepresentationRedactingSensitiveValues_withKnownSensitiveValues___block_invoke;
    v29[3] = &__block_descriptor_33_e46___NSDictionary_16__0__WBSFormControlMetadata_8l;
    v30 = valuesCopy;
    v16 = [(NSArray *)controls safari_mapObjectsUsingBlock:v29];
    [v10 setObject:v16 forKeyedSubscript:@"FormControls"];
  }

  oldPasswordElementUniqueID = self->_oldPasswordElementUniqueID;
  if (oldPasswordElementUniqueID)
  {
    [v10 setObject:oldPasswordElementUniqueID forKeyedSubscript:@"OldPasswordElementUniqueID"];
  }

  passwordElementUniqueID = self->_passwordElementUniqueID;
  if (passwordElementUniqueID)
  {
    [v10 setObject:passwordElementUniqueID forKeyedSubscript:@"PasswordElementUniqueID"];
  }

  if (self->_textSample)
  {
    if (sensitiveValuesCopy && valuesCopy)
    {
      v19 = [(NSString *)self->_textSample safari_stringByRedactingStrings:sensitiveValuesCopy withReplacement:@"<redacted>"];
      [v10 setObject:v19 forKeyedSubscript:@"TextSample"];
    }

    else
    {
      [v10 setObject:? forKeyedSubscript:?];
    }
  }

  userNameElementUniqueID = self->_userNameElementUniqueID;
  if (userNameElementUniqueID)
  {
    [v10 setObject:userNameElementUniqueID forKeyedSubscript:@"UsernameElementUniqueID"];
  }

  if (self->_usesRelAsync)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FormUsesRelAsync"];
  }

  if (self->_bestForPageLevelAutoFill)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FormIsBestForPageLevelAutoFill"];
  }

  if (self->_bestForStreamlinedLogin)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FormIsBestForStreamlinedLogin"];
  }

  if (self->_eligibleForAutomaticLogin)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FormIsEligibleForAutomaticLogin"];
  }

  requestType = self->_requestType;
  if (requestType <= 4)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:requestType];
    [v10 setObject:v22 forKeyedSubscript:@"RequestType"];
  }

  if (self->_isSearchForm)
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FormIsSearchForm"];
  }

  passwordRequirements = self->_passwordRequirements;
  if (passwordRequirements)
  {
    [v10 setObject:passwordRequirements forKeyedSubscript:@"PasswordRequirements"];
  }

  logicalFormElementSelector = self->_logicalFormElementSelector;
  if (logicalFormElementSelector && [(NSString *)logicalFormElementSelector length])
  {
    [v10 setObject:self->_logicalFormElementSelector forKeyedSubscript:@"LogicalFormElementSelector"];
  }

  return v10;
}

- (CGRect)_controlsBoundingRect
{
  v30 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_controls;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        [v11 frame];
        if (!CGRectIsEmpty(v31))
        {
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          IsEmpty = CGRectIsEmpty(v32);
          [v11 frame];
          v17 = v13;
          v18 = v14;
          v19 = v15;
          v20 = v16;
          if (IsEmpty)
          {
            height = v16;
            width = v15;
            y = v14;
            x = v13;
          }

          else
          {
            v33.origin.x = x;
            v33.origin.y = y;
            v33.size.width = width;
            v33.size.height = height;
            v34 = CGRectUnion(v33, *&v17);
            x = v34.origin.x;
            y = v34.origin.y;
            width = v34.size.width;
            height = v34.size.height;
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

uint64_t __40__WBSFormMetadata_visualOrderComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 _controlsBoundingRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 _controlsBoundingRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if (v8 < v16)
  {
    return -1;
  }

  if (v8 > v16)
  {
    return 1;
  }

  if (v6 < v14)
  {
    return -1;
  }

  if (v6 > v14)
  {
    return 1;
  }

  if (v12 < v20)
  {
    return -1;
  }

  if (v12 > v20)
  {
    return 1;
  }

  if (v10 < v18)
  {
    return -1;
  }

  return v10 > v18;
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
      [(WBSFormMetadata *)v4 serializedData];
    }
  }

  return v2;
}

+ (id)formMetadataFromSerializedData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_10;
  }

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v18 = 0;
  v13 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v12 fromData:dataCopy error:&v18];
  v14 = v18;
  if (v14)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXKeyedArchiver();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(WBSFormMetadata *)v15 formMetadataFromSerializedData:v14];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v16 = v13;
LABEL_9:

LABEL_10:

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"AutoFillFormType"];
  [coderCopy encodeInteger:self->_uniqueID forKey:@"FormID"];
  if (!self->_allowsAutocomplete)
  {
    [coderCopy encodeBool:1 forKey:@"DisallowsAutocomplete"];
  }

  if (self->_containsActiveElement)
  {
    [coderCopy encodeBool:1 forKey:@"ContainsActiveElement"];
  }

  v4 = coderCopy;
  if (self->_visible)
  {
    [coderCopy encodeBool:1 forKey:@"IsVisible"];
    v4 = coderCopy;
  }

  if (self->_usesGeneratedPassword)
  {
    [coderCopy encodeBool:1 forKey:@"UsesGeneratedPassword"];
    v4 = coderCopy;
  }

  annotations = self->_annotations;
  if (annotations)
  {
    [coderCopy encodeObject:annotations forKey:@"Annotations"];
    v4 = coderCopy;
  }

  confirmPasswordElementUniqueID = self->_confirmPasswordElementUniqueID;
  if (confirmPasswordElementUniqueID)
  {
    [coderCopy encodeObject:confirmPasswordElementUniqueID forKey:@"ConfirmPasswordElementUniqueID"];
    v4 = coderCopy;
  }

  firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = self->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
  if (firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID)
  {
    [coderCopy encodeObject:firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID forKey:@"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"];
    v4 = coderCopy;
  }

  action = self->_action;
  if (action)
  {
    [coderCopy encodeObject:action forKey:@"FormAction"];
    v4 = coderCopy;
  }

  controls = self->_controls;
  if (controls)
  {
    [coderCopy encodeObject:controls forKey:@"FormControls"];
    v4 = coderCopy;
  }

  oldPasswordElementUniqueID = self->_oldPasswordElementUniqueID;
  if (oldPasswordElementUniqueID)
  {
    [coderCopy encodeObject:oldPasswordElementUniqueID forKey:@"OldPasswordElementUniqueID"];
    v4 = coderCopy;
  }

  passwordElementUniqueID = self->_passwordElementUniqueID;
  if (passwordElementUniqueID)
  {
    [coderCopy encodeObject:passwordElementUniqueID forKey:@"PasswordElementUniqueID"];
    v4 = coderCopy;
  }

  textSample = self->_textSample;
  if (textSample)
  {
    [coderCopy encodeObject:textSample forKey:@"TextSample"];
    v4 = coderCopy;
  }

  userNameElementUniqueID = self->_userNameElementUniqueID;
  if (userNameElementUniqueID)
  {
    [coderCopy encodeObject:userNameElementUniqueID forKey:@"UsernameElementUniqueID"];
    v4 = coderCopy;
  }

  if (self->_usesRelAsync)
  {
    [coderCopy encodeBool:1 forKey:@"FormUsesRelAsync"];
    v4 = coderCopy;
  }

  if (self->_bestForPageLevelAutoFill)
  {
    [coderCopy encodeBool:1 forKey:@"FormIsBestForPageLevelAutoFill"];
    v4 = coderCopy;
  }

  if (self->_bestForStreamlinedLogin)
  {
    [coderCopy encodeBool:1 forKey:@"FormIsBestForStreamlinedLogin"];
    v4 = coderCopy;
  }

  if (self->_eligibleForAutomaticLogin)
  {
    [coderCopy encodeBool:1 forKey:@"FormIsEligibleForAutomaticLogin"];
    v4 = coderCopy;
  }

  if (self->_requestType <= 4)
  {
    [coderCopy encodeInteger:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_isSearchForm)
  {
    [coderCopy encodeBool:1 forKey:@"FormIsSearchForm"];
    v4 = coderCopy;
  }

  passwordRequirements = self->_passwordRequirements;
  if (passwordRequirements)
  {
    [coderCopy encodeObject:passwordRequirements forKey:@"PasswordRequirements"];
    v4 = coderCopy;
  }

  logicalFormElementSelector = self->_logicalFormElementSelector;
  if (logicalFormElementSelector)
  {
    [coderCopy encodeObject:logicalFormElementSelector forKey:@"LogicalFormElementSelector"];
    v4 = coderCopy;
  }
}

- (WBSFormMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = WBSFormMetadata;
  v5 = [(WBSFormMetadata *)&v54 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeIntegerForKey:@"AutoFillFormType"];
    v5->_type = v7;
    v8 = MEMORY[0x1E696A490];
    if (v7 >= 6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A490] format:{@"Form type is invalid: %lu", v7}];
    }

    v5->_uniqueID = [coderCopy decodeIntegerForKey:@"FormID"];
    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"LogicalFormElementSelector"];
    logicalFormElementSelector = v5->_logicalFormElementSelector;
    v5->_logicalFormElementSelector = v9;

    v5->_allowsAutocomplete = [coderCopy decodeBoolForKey:@"DisallowsAutocomplete"] ^ 1;
    v5->_containsActiveElement = [coderCopy decodeBoolForKey:@"ContainsActiveElement"];
    v5->_visible = [coderCopy decodeBoolForKey:@"IsVisible"];
    v5->_usesGeneratedPassword = [coderCopy decodeBoolForKey:@"UsesGeneratedPassword"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, v6, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"Annotations"];
    annotations = v5->_annotations;
    v5->_annotations = v15;

    if (v5->_annotations)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*v8 format:{@"Annotations is not a dictionary: %@", v5->_annotations}];
      }
    }

    v17 = [coderCopy decodeObjectOfClass:v6 forKey:@"ConfirmPasswordElementUniqueID"];
    confirmPasswordElementUniqueID = v5->_confirmPasswordElementUniqueID;
    v5->_confirmPasswordElementUniqueID = v17;

    v19 = [coderCopy decodeObjectOfClass:v6 forKey:@"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"];
    firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
    v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FormAction"];
    action = v5->_action;
    v5->_action = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v23 setWithObjects:{v24, v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"FormControls"];
    controls = v5->_controls;
    v5->_controls = v28;

    if (v5->_controls)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v31 = v5->_controls;
      if ((isKindOfClass & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*v8 format:{@"Controls is not an array: %@", v5->_controls}];
        v31 = v5->_controls;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = [(NSArray *)v31 safari_mapObjectsUsingBlock:&__block_literal_global_34];
    v33 = v5->_controls;
    v5->_controls = v32;

    v34 = [coderCopy decodeObjectOfClass:v6 forKey:@"OldPasswordElementUniqueID"];
    oldPasswordElementUniqueID = v5->_oldPasswordElementUniqueID;
    v5->_oldPasswordElementUniqueID = v34;

    v36 = [coderCopy decodeObjectOfClass:v6 forKey:@"PasswordElementUniqueID"];
    passwordElementUniqueID = v5->_passwordElementUniqueID;
    v5->_passwordElementUniqueID = v36;

    v38 = [coderCopy decodeObjectOfClass:v6 forKey:@"TextSample"];
    textSample = v5->_textSample;
    v5->_textSample = v38;

    v40 = [coderCopy decodeObjectOfClass:v6 forKey:@"UsernameElementUniqueID"];
    userNameElementUniqueID = v5->_userNameElementUniqueID;
    v5->_userNameElementUniqueID = v40;

    v5->_usesRelAsync = [coderCopy decodeBoolForKey:@"FormUsesRelAsync"];
    v5->_bestForPageLevelAutoFill = [coderCopy decodeBoolForKey:@"FormIsBestForPageLevelAutoFill"];
    v5->_bestForStreamlinedLogin = [coderCopy decodeBoolForKey:@"FormIsBestForStreamlinedLogin"];
    v5->_eligibleForAutomaticLogin = [coderCopy decodeBoolForKey:@"FormIsEligibleForAutomaticLogin"];
    v42 = [coderCopy decodeIntegerForKey:@"RequestType"];
    v5->_requestType = v42;
    if (v42 >= 5)
    {
      [MEMORY[0x1E695DF30] raise:*v8 format:{@"Request type is invalid: %lu", v42}];
    }

    v5->_isSearchForm = [coderCopy decodeBoolForKey:@"FormIsSearchForm"];
    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = [v43 setWithObjects:{v44, v45, v46, v47, v48, v6, objc_opt_class(), 0}];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"PasswordRequirements"];
    passwordRequirements = v5->_passwordRequirements;
    v5->_passwordRequirements = v50;

    v52 = v5;
  }

  return v5;
}

id __33__WBSFormMetadata_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

- (NSArray)uniqueIDsOfPasswordControlAndRelatedControls
{
  v2 = MEMORY[0x1E695DEC8];
  passwordElementUniqueID = self->_passwordElementUniqueID;
  confirmPasswordElementUniqueID = self->_confirmPasswordElementUniqueID;
  null = [MEMORY[0x1E695DFB0] null];
  v6 = [v2 safari_arrayWithObjectsUnlessNil:{passwordElementUniqueID, confirmPasswordElementUniqueID, null}];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [WBSMutableFormMetadata allocWithZone:zone];

  return [(WBSFormMetadata *)v4 initWithMetadata:self];
}

- (BOOL)containsAtLeastOneSecureTextField
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_containsAtLeastOneSecureTextField)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_controls;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v10 + 1) + 8 * i) isSecureTextField])
          {
            containsAtLeastOneSecureTextField = self->_containsAtLeastOneSecureTextField;
            self->_containsAtLeastOneSecureTextField = MEMORY[0x1E695E118];

            goto LABEL_12;
          }
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return [(NSNumber *)self->_containsAtLeastOneSecureTextField BOOLValue];
}

- (BOOL)containsClassifications
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_controls;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        classification = [*(*(&v8 + 1) + 8 * i) classification];

        if (classification)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (WBSFormControlMetadata)bestControlForStreamlinedLoginFocus
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_controls;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isVisible] && (objc_msgSend(v7, "isDisabled") & 1) == 0)
        {
          uniqueID = [v7 uniqueID];
          if ([v7 looksLikeOneTimeCodeField] & 1) != 0 || (WBSIsEqual() & 1) != 0 || (WBSIsEqual())
          {
            v9 = v7;

            goto LABEL_16;
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (id)_valueOfControlWithUniqueID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    controls = self->_controls;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__WBSFormMetadata__valueOfControlWithUniqueID___block_invoke;
    v9[3] = &unk_1E7FC6010;
    v10 = dCopy;
    v6 = [(NSArray *)controls safari_firstObjectPassingTest:v9];
    value = [v6 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

uint64_t __47__WBSFormMetadata__valueOfControlWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = WBSFormMetadata;
  v4 = [(WBSFormMetadata *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ formID=%ld>", v4, -[WBSFormMetadata uniqueID](self, "uniqueID")];

  return v5;
}

- (void)serializedData
{
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to archive WBSFormMetadata: %{public}@", v7, v8, v9, v10, 2u);
}

+ (void)formMetadataFromSerializedData:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to read from WBSFormMetadata data with exception: %{public}@", v7, v8, v9, v10, 2u);
}

@end