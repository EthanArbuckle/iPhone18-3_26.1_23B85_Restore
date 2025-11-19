@interface WBSFormMetadata
+ (id)formMetadataFromSerializedData:(id)a3;
- (BOOL)containsAtLeastOneSecureTextField;
- (BOOL)containsClassifications;
- (BOOL)isEqual:(id)a3;
- (CGRect)_controlsBoundingRect;
- (NSArray)uniqueIDsOfPasswordControlAndRelatedControls;
- (NSData)serializedData;
- (WBSFormControlMetadata)bestControlForStreamlinedLoginFocus;
- (WBSFormMetadata)initWithCoder:(id)a3;
- (WBSFormMetadata)initWithDictionary:(id)a3;
- (WBSFormMetadata)initWithJSValue:(id)a3;
- (WBSFormMetadata)initWithMetadata:(id)a3;
- (id)_init;
- (id)_valueOfControlWithUniqueID:(id)a3;
- (id)description;
- (id)dictionaryRepresentationRedactingSensitiveValues:(BOOL)a3 withKnownSensitiveValues:(id)a4;
- (id)formMetadataByReplacingControlsWith:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)serializedData;
@end

@implementation WBSFormMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (WBSFormMetadata)initWithJSValue:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = WBSFormMetadata;
  v5 = [(WBSFormMetadata *)&v46 init];
  if (v5
    && ([v4 objectForKeyedSubscript:@"DisallowsAutocomplete"], v6 = objc_claimAutoreleasedReturnValue(), v5->_allowsAutocomplete = objc_msgSend(v6, "toBool") ^ 1, v6, objc_msgSend(v4, "objectForKeyedSubscript:", @"Annotations"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "toDictionary"), v8 = objc_claimAutoreleasedReturnValue(), annotations = v5->_annotations, v5->_annotations = v8, annotations, v7, objc_msgSend(v4, "objectForKeyedSubscript:", @"AutoFillFormType"), v10 = objc_claimAutoreleasedReturnValue(), v5->_type = objc_msgSend(v10, "toInt32"), v10, v5->_type <= 5)
    && (stringForKey(v4, @"ConfirmPasswordElementUniqueID"),
        v11 = objc_claimAutoreleasedReturnValue(),
        confirmPasswordElementUniqueID = v5->_confirmPasswordElementUniqueID,
        v5->_confirmPasswordElementUniqueID = v11,
        confirmPasswordElementUniqueID,
        [v4 objectForKeyedSubscript:@"ContainsActiveElement"],
        v13 = objc_claimAutoreleasedReturnValue(),
        v5->_containsActiveElement = [v13 toBool],
        v13,
        stringForKey(v4, @"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"),
        v14 = objc_claimAutoreleasedReturnValue(),
        firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID,
        v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v14,
        firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID,
        v16 = MEMORY[0x1E695DFF8],
        stringForKey(v4, @"FormAction"),
        v17 = objc_claimAutoreleasedReturnValue(),
        [v16 safari_URLWithDataAsString:v17],
        v18 = objc_claimAutoreleasedReturnValue(),
        action = v5->_action,
        v5->_action = v18,
        action,
        v17,
        [v4 objectForKeyedSubscript:@"FormControls"],
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
        [v4 objectForKeyedSubscript:@"FormID"],
        v24 = objc_claimAutoreleasedReturnValue(),
        [v24 toDouble],
        v5->_uniqueID = v25,
        v24,
        stringForKey(v4, @"LogicalFormElementSelector"),
        v26 = objc_claimAutoreleasedReturnValue(),
        logicalFormElementSelector = v5->_logicalFormElementSelector,
        v5->_logicalFormElementSelector = v26,
        logicalFormElementSelector,
        [v4 objectForKeyedSubscript:@"FormIsBestForPageLevelAutoFill"],
        v28 = objc_claimAutoreleasedReturnValue(),
        v5->_bestForPageLevelAutoFill = [v28 toBool],
        v28,
        [v4 objectForKeyedSubscript:@"FormIsBestForStreamlinedLogin"],
        v29 = objc_claimAutoreleasedReturnValue(),
        v5->_bestForStreamlinedLogin = [v29 toBool],
        v29,
        [v4 objectForKeyedSubscript:@"FormIsEligibleForAutomaticLogin"],
        v30 = objc_claimAutoreleasedReturnValue(),
        v5->_eligibleForAutomaticLogin = [v30 toBool],
        v30,
        [v4 objectForKeyedSubscript:@"IsVisible"],
        v31 = objc_claimAutoreleasedReturnValue(),
        v5->_visible = [v31 toBool],
        v31,
        [v4 objectForKeyedSubscript:@"FormUsesRelAsync"],
        v32 = objc_claimAutoreleasedReturnValue(),
        v5->_usesRelAsync = [v32 toBool],
        v32,
        stringForKey(v4, @"OldPasswordElementUniqueID"),
        v33 = objc_claimAutoreleasedReturnValue(),
        oldPasswordElementUniqueID = v5->_oldPasswordElementUniqueID,
        v5->_oldPasswordElementUniqueID = v33,
        oldPasswordElementUniqueID,
        stringForKey(v4, @"PasswordElementUniqueID"),
        v35 = objc_claimAutoreleasedReturnValue(),
        passwordElementUniqueID = v5->_passwordElementUniqueID,
        v5->_passwordElementUniqueID = v35,
        passwordElementUniqueID,
        stringForKey(v4, @"TextSample"),
        v37 = objc_claimAutoreleasedReturnValue(),
        textSample = v5->_textSample,
        v5->_textSample = v37,
        textSample,
        stringForKey(v4, @"UsernameElementUniqueID"),
        v39 = objc_claimAutoreleasedReturnValue(),
        userNameElementUniqueID = v5->_userNameElementUniqueID,
        v5->_userNameElementUniqueID = v39,
        userNameElementUniqueID,
        [v4 objectForKeyedSubscript:@"UsesGeneratedPassword"],
        v41 = objc_claimAutoreleasedReturnValue(),
        v5->_usesGeneratedPassword = [v41 toBool],
        v41,
        [v4 objectForKeyedSubscript:@"RequestType"],
        v42 = objc_claimAutoreleasedReturnValue(),
        v5->_requestType = [v42 toInt32],
        v42,
        v5->_requestType <= 4))
  {
    v43 = [v4 objectForKeyedSubscript:@"FormIsSearchForm"];
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

- (WBSFormMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = WBSFormMetadata;
  v5 = [(WBSFormMetadata *)&v45 init];
  if (v5
    && ([v4 objectForKeyedSubscript:@"AutoFillFormType"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6)
    && ([v4 objectForKeyedSubscript:@"DisallowsAutocomplete"], v7 = objc_claimAutoreleasedReturnValue(), v5->_allowsAutocomplete = objc_msgSend(v7, "BOOLValue") ^ 1, v7, objc_msgSend(v4, "objectForKeyedSubscript:", @"Annotations"), v8 = objc_claimAutoreleasedReturnValue(), annotations = v5->_annotations, v5->_annotations = v8, annotations, objc_msgSend(v4, "objectForKeyedSubscript:", @"AutoFillFormType"), v10 = objc_claimAutoreleasedReturnValue(), v5->_type = objc_msgSend(v10, "integerValue"), v10, v5->_type <= 5)
    && ([v4 objectForKeyedSubscript:@"ConfirmPasswordElementUniqueID"],
        v11 = objc_claimAutoreleasedReturnValue(),
        confirmPasswordElementUniqueID = v5->_confirmPasswordElementUniqueID,
        v5->_confirmPasswordElementUniqueID = v11,
        confirmPasswordElementUniqueID,
        [v4 objectForKeyedSubscript:@"ContainsActiveElement"],
        v13 = objc_claimAutoreleasedReturnValue(),
        v5->_containsActiveElement = [v13 BOOLValue],
        v13,
        [v4 objectForKeyedSubscript:@"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"],
        v14 = objc_claimAutoreleasedReturnValue(),
        firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID,
        v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v14,
        firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID,
        v16 = MEMORY[0x1E695DFF8],
        [v4 objectForKeyedSubscript:@"FormAction"],
        v17 = objc_claimAutoreleasedReturnValue(),
        [v16 safari_URLWithDataAsString:v17],
        v18 = objc_claimAutoreleasedReturnValue(),
        action = v5->_action,
        v5->_action = v18,
        action,
        v17,
        [v4 objectForKeyedSubscript:@"FormControls"],
        v20 = objc_claimAutoreleasedReturnValue(),
        [v20 safari_mapObjectsUsingBlock:&__block_literal_global_4_0],
        v21 = objc_claimAutoreleasedReturnValue(),
        controls = v5->_controls,
        v5->_controls = v21,
        controls,
        v20,
        [v4 objectForKeyedSubscript:@"FormID"],
        v23 = objc_claimAutoreleasedReturnValue(),
        [v23 doubleValue],
        v5->_uniqueID = v24,
        v23,
        [v4 objectForKeyedSubscript:@"LogicalFormElementSelector"],
        v25 = objc_claimAutoreleasedReturnValue(),
        logicalFormElementSelector = v5->_logicalFormElementSelector,
        v5->_logicalFormElementSelector = v25,
        logicalFormElementSelector,
        [v4 objectForKeyedSubscript:@"FormIsBestForPageLevelAutoFill"],
        v27 = objc_claimAutoreleasedReturnValue(),
        v5->_bestForPageLevelAutoFill = [v27 BOOLValue],
        v27,
        [v4 objectForKeyedSubscript:@"FormIsBestForStreamlinedLogin"],
        v28 = objc_claimAutoreleasedReturnValue(),
        v5->_bestForStreamlinedLogin = [v28 BOOLValue],
        v28,
        [v4 objectForKeyedSubscript:@"FormIsEligibleForAutomaticLogin"],
        v29 = objc_claimAutoreleasedReturnValue(),
        v5->_eligibleForAutomaticLogin = [v29 BOOLValue],
        v29,
        [v4 objectForKeyedSubscript:@"IsVisible"],
        v30 = objc_claimAutoreleasedReturnValue(),
        v5->_visible = [v30 BOOLValue],
        v30,
        [v4 objectForKeyedSubscript:@"FormUsesRelAsync"],
        v31 = objc_claimAutoreleasedReturnValue(),
        v5->_usesRelAsync = [v31 BOOLValue],
        v31,
        [v4 objectForKeyedSubscript:@"OldPasswordElementUniqueID"],
        v32 = objc_claimAutoreleasedReturnValue(),
        oldPasswordElementUniqueID = v5->_oldPasswordElementUniqueID,
        v5->_oldPasswordElementUniqueID = v32,
        oldPasswordElementUniqueID,
        [v4 objectForKeyedSubscript:@"PasswordElementUniqueID"],
        v34 = objc_claimAutoreleasedReturnValue(),
        passwordElementUniqueID = v5->_passwordElementUniqueID,
        v5->_passwordElementUniqueID = v34,
        passwordElementUniqueID,
        [v4 objectForKeyedSubscript:@"TextSample"],
        v36 = objc_claimAutoreleasedReturnValue(),
        textSample = v5->_textSample,
        v5->_textSample = v36,
        textSample,
        [v4 objectForKeyedSubscript:@"UsernameElementUniqueID"],
        v38 = objc_claimAutoreleasedReturnValue(),
        userNameElementUniqueID = v5->_userNameElementUniqueID,
        v5->_userNameElementUniqueID = v38,
        userNameElementUniqueID,
        [v4 objectForKeyedSubscript:@"UsesGeneratedPassword"],
        v40 = objc_claimAutoreleasedReturnValue(),
        v5->_usesGeneratedPassword = [v40 BOOLValue],
        v40,
        [v4 objectForKeyedSubscript:@"RequestType"],
        v41 = objc_claimAutoreleasedReturnValue(),
        v5->_requestType = [v41 integerValue],
        v41,
        v5->_requestType <= 4))
  {
    v42 = [v4 objectForKeyedSubscript:@"FormIsSearchForm"];
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

- (WBSFormMetadata)initWithMetadata:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = WBSFormMetadata;
  v5 = [(WBSFormMetadata *)&v27 init];
  v6 = v5;
  if (v5)
  {
    v5->_allowsAutocomplete = *(v4 + 72);
    v5->_type = *(v4 + 2);
    v5->_containsActiveElement = *(v4 + 73);
    v5->_uniqueID = *(v4 + 13);
    objc_storeStrong(&v5->_logicalFormElementSelector, *(v4 + 14));
    v6->_bestForPageLevelAutoFill = *(v4 + 74);
    v6->_bestForStreamlinedLogin = *(v4 + 75);
    v6->_eligibleForAutomaticLogin = *(v4 + 76);
    v6->_visible = *(v4 + 77);
    v6->_usesRelAsync = *(v4 + 78);
    v6->_usesGeneratedPassword = *(v4 + 79);
    v6->_requestType = *(v4 + 16);
    v6->_isSearchForm = *(v4 + 80);
    v7 = [*(v4 + 11) copy];
    annotations = v6->_annotations;
    v6->_annotations = v7;

    v9 = [*(v4 + 6) copy];
    confirmPasswordElementUniqueID = v6->_confirmPasswordElementUniqueID;
    v6->_confirmPasswordElementUniqueID = v9;

    v11 = [*(v4 + 8) copy];
    firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v6->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
    v6->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v11;

    objc_storeStrong(&v6->_action, *(v4 + 12));
    v13 = [*(v4 + 3) copy];
    controls = v6->_controls;
    v6->_controls = v13;

    v15 = [*(v4 + 7) copy];
    oldPasswordElementUniqueID = v6->_oldPasswordElementUniqueID;
    v6->_oldPasswordElementUniqueID = v15;

    v17 = [*(v4 + 5) copy];
    passwordElementUniqueID = v6->_passwordElementUniqueID;
    v6->_passwordElementUniqueID = v17;

    v19 = [*(v4 + 15) copy];
    textSample = v6->_textSample;
    v6->_textSample = v19;

    v21 = [*(v4 + 4) copy];
    userNameElementUniqueID = v6->_userNameElementUniqueID;
    v6->_userNameElementUniqueID = v21;

    v23 = [*(v4 + 17) copy];
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

- (id)formMetadataByReplacingControlsWith:(id)a3
{
  v4 = a3;
  v5 = [[WBSFormMetadata alloc] _init];
  *(v5 + 72) = self->_allowsAutocomplete;
  *(v5 + 2) = self->_type;
  *(v5 + 73) = self->_containsActiveElement;
  *(v5 + 13) = self->_uniqueID;
  objc_storeStrong(v5 + 14, self->_logicalFormElementSelector);
  *(v5 + 74) = self->_bestForPageLevelAutoFill;
  *(v5 + 75) = self->_bestForStreamlinedLogin;
  *(v5 + 76) = self->_eligibleForAutomaticLogin;
  *(v5 + 77) = self->_visible;
  *(v5 + 78) = self->_usesRelAsync;
  *(v5 + 79) = self->_usesGeneratedPassword;
  *(v5 + 16) = self->_requestType;
  *(v5 + 80) = self->_isSearchForm;
  v6 = [(NSDictionary *)self->_annotations copy];
  v7 = *(v5 + 11);
  *(v5 + 11) = v6;

  v8 = [(NSString *)self->_confirmPasswordElementUniqueID copy];
  v9 = *(v5 + 6);
  *(v5 + 6) = v8;

  v10 = [(NSString *)self->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID copy];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  objc_storeStrong(v5 + 12, self->_action);
  v12 = [v4 mutableCopy];

  v13 = *(v5 + 3);
  *(v5 + 3) = v12;

  v14 = [(NSString *)self->_oldPasswordElementUniqueID copy];
  v15 = *(v5 + 7);
  *(v5 + 7) = v14;

  v16 = [(NSString *)self->_passwordElementUniqueID copy];
  v17 = *(v5 + 5);
  *(v5 + 5) = v16;

  v18 = [(NSString *)self->_textSample copy];
  v19 = *(v5 + 15);
  *(v5 + 15) = v18;

  v20 = [(NSString *)self->_userNameElementUniqueID copy];
  v21 = *(v5 + 4);
  *(v5 + 4) = v20;

  v22 = [(NSDictionary *)self->_passwordRequirements copy];
  v23 = *(v5 + 17);
  *(v5 + 17) = v22;

  return v5;
}

- (id)dictionaryRepresentationRedactingSensitiveValues:(BOOL)a3 withKnownSensitiveValues:(id)a4
{
  v27 = a3;
  v28 = a4;
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

  if (self->_annotations && !v27)
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
  if (action && !v27)
  {
    v14 = [(NSURL *)action safari_originalDataAsString];
    [v10 setObject:v14 forKeyedSubscript:@"FormAction"];
  }

  controls = self->_controls;
  if (controls)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __93__WBSFormMetadata_dictionaryRepresentationRedactingSensitiveValues_withKnownSensitiveValues___block_invoke;
    v29[3] = &__block_descriptor_33_e46___NSDictionary_16__0__WBSFormControlMetadata_8l;
    v30 = v27;
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
    if (v28 && v27)
    {
      v19 = [(NSString *)self->_textSample safari_stringByRedactingStrings:v28 withReplacement:@"<redacted>"];
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

+ (id)formMetadataFromSerializedData:(id)a3
{
  v3 = a3;
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
  v13 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v12 fromData:v3 error:&v18];
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

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  [v16 encodeInteger:self->_type forKey:@"AutoFillFormType"];
  [v16 encodeInteger:self->_uniqueID forKey:@"FormID"];
  if (!self->_allowsAutocomplete)
  {
    [v16 encodeBool:1 forKey:@"DisallowsAutocomplete"];
  }

  if (self->_containsActiveElement)
  {
    [v16 encodeBool:1 forKey:@"ContainsActiveElement"];
  }

  v4 = v16;
  if (self->_visible)
  {
    [v16 encodeBool:1 forKey:@"IsVisible"];
    v4 = v16;
  }

  if (self->_usesGeneratedPassword)
  {
    [v16 encodeBool:1 forKey:@"UsesGeneratedPassword"];
    v4 = v16;
  }

  annotations = self->_annotations;
  if (annotations)
  {
    [v16 encodeObject:annotations forKey:@"Annotations"];
    v4 = v16;
  }

  confirmPasswordElementUniqueID = self->_confirmPasswordElementUniqueID;
  if (confirmPasswordElementUniqueID)
  {
    [v16 encodeObject:confirmPasswordElementUniqueID forKey:@"ConfirmPasswordElementUniqueID"];
    v4 = v16;
  }

  firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = self->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
  if (firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID)
  {
    [v16 encodeObject:firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID forKey:@"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"];
    v4 = v16;
  }

  action = self->_action;
  if (action)
  {
    [v16 encodeObject:action forKey:@"FormAction"];
    v4 = v16;
  }

  controls = self->_controls;
  if (controls)
  {
    [v16 encodeObject:controls forKey:@"FormControls"];
    v4 = v16;
  }

  oldPasswordElementUniqueID = self->_oldPasswordElementUniqueID;
  if (oldPasswordElementUniqueID)
  {
    [v16 encodeObject:oldPasswordElementUniqueID forKey:@"OldPasswordElementUniqueID"];
    v4 = v16;
  }

  passwordElementUniqueID = self->_passwordElementUniqueID;
  if (passwordElementUniqueID)
  {
    [v16 encodeObject:passwordElementUniqueID forKey:@"PasswordElementUniqueID"];
    v4 = v16;
  }

  textSample = self->_textSample;
  if (textSample)
  {
    [v16 encodeObject:textSample forKey:@"TextSample"];
    v4 = v16;
  }

  userNameElementUniqueID = self->_userNameElementUniqueID;
  if (userNameElementUniqueID)
  {
    [v16 encodeObject:userNameElementUniqueID forKey:@"UsernameElementUniqueID"];
    v4 = v16;
  }

  if (self->_usesRelAsync)
  {
    [v16 encodeBool:1 forKey:@"FormUsesRelAsync"];
    v4 = v16;
  }

  if (self->_bestForPageLevelAutoFill)
  {
    [v16 encodeBool:1 forKey:@"FormIsBestForPageLevelAutoFill"];
    v4 = v16;
  }

  if (self->_bestForStreamlinedLogin)
  {
    [v16 encodeBool:1 forKey:@"FormIsBestForStreamlinedLogin"];
    v4 = v16;
  }

  if (self->_eligibleForAutomaticLogin)
  {
    [v16 encodeBool:1 forKey:@"FormIsEligibleForAutomaticLogin"];
    v4 = v16;
  }

  if (self->_requestType <= 4)
  {
    [v16 encodeInteger:? forKey:?];
    v4 = v16;
  }

  if (self->_isSearchForm)
  {
    [v16 encodeBool:1 forKey:@"FormIsSearchForm"];
    v4 = v16;
  }

  passwordRequirements = self->_passwordRequirements;
  if (passwordRequirements)
  {
    [v16 encodeObject:passwordRequirements forKey:@"PasswordRequirements"];
    v4 = v16;
  }

  logicalFormElementSelector = self->_logicalFormElementSelector;
  if (logicalFormElementSelector)
  {
    [v16 encodeObject:logicalFormElementSelector forKey:@"LogicalFormElementSelector"];
    v4 = v16;
  }
}

- (WBSFormMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = WBSFormMetadata;
  v5 = [(WBSFormMetadata *)&v54 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeIntegerForKey:@"AutoFillFormType"];
    v5->_type = v7;
    v8 = MEMORY[0x1E696A490];
    if (v7 >= 6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A490] format:{@"Form type is invalid: %lu", v7}];
    }

    v5->_uniqueID = [v4 decodeIntegerForKey:@"FormID"];
    v9 = [v4 decodeObjectOfClass:v6 forKey:@"LogicalFormElementSelector"];
    logicalFormElementSelector = v5->_logicalFormElementSelector;
    v5->_logicalFormElementSelector = v9;

    v5->_allowsAutocomplete = [v4 decodeBoolForKey:@"DisallowsAutocomplete"] ^ 1;
    v5->_containsActiveElement = [v4 decodeBoolForKey:@"ContainsActiveElement"];
    v5->_visible = [v4 decodeBoolForKey:@"IsVisible"];
    v5->_usesGeneratedPassword = [v4 decodeBoolForKey:@"UsesGeneratedPassword"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, v6, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"Annotations"];
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

    v17 = [v4 decodeObjectOfClass:v6 forKey:@"ConfirmPasswordElementUniqueID"];
    confirmPasswordElementUniqueID = v5->_confirmPasswordElementUniqueID;
    v5->_confirmPasswordElementUniqueID = v17;

    v19 = [v4 decodeObjectOfClass:v6 forKey:@"FirstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID"];
    firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID;
    v5->_firstCreditCardCardholderFieldOrCreditCardNumberFieldUniqueID = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FormAction"];
    action = v5->_action;
    v5->_action = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v23 setWithObjects:{v24, v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"FormControls"];
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

    v34 = [v4 decodeObjectOfClass:v6 forKey:@"OldPasswordElementUniqueID"];
    oldPasswordElementUniqueID = v5->_oldPasswordElementUniqueID;
    v5->_oldPasswordElementUniqueID = v34;

    v36 = [v4 decodeObjectOfClass:v6 forKey:@"PasswordElementUniqueID"];
    passwordElementUniqueID = v5->_passwordElementUniqueID;
    v5->_passwordElementUniqueID = v36;

    v38 = [v4 decodeObjectOfClass:v6 forKey:@"TextSample"];
    textSample = v5->_textSample;
    v5->_textSample = v38;

    v40 = [v4 decodeObjectOfClass:v6 forKey:@"UsernameElementUniqueID"];
    userNameElementUniqueID = v5->_userNameElementUniqueID;
    v5->_userNameElementUniqueID = v40;

    v5->_usesRelAsync = [v4 decodeBoolForKey:@"FormUsesRelAsync"];
    v5->_bestForPageLevelAutoFill = [v4 decodeBoolForKey:@"FormIsBestForPageLevelAutoFill"];
    v5->_bestForStreamlinedLogin = [v4 decodeBoolForKey:@"FormIsBestForStreamlinedLogin"];
    v5->_eligibleForAutomaticLogin = [v4 decodeBoolForKey:@"FormIsEligibleForAutomaticLogin"];
    v42 = [v4 decodeIntegerForKey:@"RequestType"];
    v5->_requestType = v42;
    if (v42 >= 5)
    {
      [MEMORY[0x1E695DF30] raise:*v8 format:{@"Request type is invalid: %lu", v42}];
    }

    v5->_isSearchForm = [v4 decodeBoolForKey:@"FormIsSearchForm"];
    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = [v43 setWithObjects:{v44, v45, v46, v47, v48, v6, objc_opt_class(), 0}];
    v50 = [v4 decodeObjectOfClasses:v49 forKey:@"PasswordRequirements"];
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
  v5 = [MEMORY[0x1E695DFB0] null];
  v6 = [v2 safari_arrayWithObjectsUnlessNil:{passwordElementUniqueID, confirmPasswordElementUniqueID, v5}];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [WBSMutableFormMetadata allocWithZone:a3];

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

        v6 = [*(*(&v8 + 1) + 8 * i) classification];

        if (v6)
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
          v8 = [v7 uniqueID];
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

- (id)_valueOfControlWithUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    controls = self->_controls;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__WBSFormMetadata__valueOfControlWithUniqueID___block_invoke;
    v9[3] = &unk_1E7FC6010;
    v10 = v4;
    v6 = [(NSArray *)controls safari_firstObjectPassingTest:v9];
    v7 = [v6 value];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to archive WBSFormMetadata: %{public}@", v7, v8, v9, v10, 2u);
}

+ (void)formMetadataFromSerializedData:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to read from WBSFormMetadata data with exception: %{public}@", v7, v8, v9, v10, 2u);
}

@end