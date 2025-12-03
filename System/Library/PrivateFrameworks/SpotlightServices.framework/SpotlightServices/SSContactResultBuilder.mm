@interface SSContactResultBuilder
+ (BOOL)doesNotContainObject:(id)object inArray:(id)array;
+ (BOOL)supportsResult:(id)result;
+ (id)contactIdentifierFromResult:(id)result contactEntity:(id)entity;
+ (id)contactIdentifiersFromResults:(id)results;
+ (id)labeledValuesFromStrings:(id)strings labeledValues:(id)values withStringForLabeledValueBlock:(id)block labeledValueForStringBlock:(id)stringBlock;
- (NSString)fullName;
- (SSContactResultBuilder)initWithResult:(id)result contactEntity:(id)entity contact:(id)contact;
- (id)buildAction;
- (id)buildBackgroundColor;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildFillToolParameterCommand;
- (id)buildFooterResultForEntity;
- (id)buildHeaderResultForEntity;
- (id)buildPreviewButtonItems;
- (id)buildPreviewCommand;
- (id)buildResult;
- (id)buildSocialMediaResultForEntity;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)highlightedMatchedText;
@end

@implementation SSContactResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  if (supportsResult__onceToken != -1)
  {
    +[SSContactResultBuilder supportsResult:];
  }

  applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
  v6 = [applicationBundleIdentifier isEqualToString:@"com.apple.contactsd"];

  if ((isMacOS() & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___SSContactResultBuilder;
    if (objc_msgSendSuper2(&v12, sel_supportsResult_, resultCopy))
    {
      v6 = 1;
    }

    else
    {
      v7 = supportsResult__contactResultBundleIds;
      resultBundleId = [resultCopy resultBundleId];
      v6 = [v7 containsObject:resultBundleId];
    }
  }

  v9 = [resultCopy valueForAttribute:*MEMORY[0x1E6964528] withType:objc_opt_class()];
  v10 = [v9 isEqual:@"vCard"];

  return v6 & (v10 ^ 1);
}

void __41__SSContactResultBuilder_supportsResult___block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.spotlight.contacts";
  v5[1] = @"com.apple.MobileAddressBook";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportsResult__contactResultBundleIds;
  supportsResult__contactResultBundleIds = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)contactIdentifiersFromResults:(id)results
{
  v20 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = resultsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(objc_class *)[SSResultBuilder isSubclassOfClass:v11 resultBuilderClassForResult:v15 preferAppVendedView:?], "isSubclassOfClass:", self])
        {
          v12 = [self contactIdentifierFromResult:v11 contactEntity:0];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)contactIdentifierFromResult:(id)result contactEntity:(id)entity
{
  resultCopy = result;
  entityCopy = entity;
  applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier isEqualToString:@"com.apple.contactsd"];

  contactIdentifier = [resultCopy contactIdentifier];
  v10 = contactIdentifier;
  if (contactIdentifier)
  {
    v11 = contactIdentifier;
  }

  else
  {
    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E40] withType:objc_opt_class()];
    v13 = v12;
    if (v12)
    {
      contactIdentifier2 = v12;
    }

    else
    {
      contactIdentifier2 = [entityCopy contactIdentifier];
    }

    v11 = contactIdentifier2;
  }

  if (v8)
  {
    v15 = [resultCopy valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];

    v11 = v15;
  }

  return v11;
}

+ (BOOL)doesNotContainObject:(id)object inArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([objectCopy isEqual:{v11, v15}] & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([objectCopy isLikePhoneNumber:v11] & 1) == 0)
          {
            continue;
          }
        }

        v12 = 0;
        goto LABEL_14;
      }

      v8 = [arrayCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)labeledValuesFromStrings:(id)strings labeledValues:(id)values withStringForLabeledValueBlock:(id)block labeledValueForStringBlock:(id)stringBlock
{
  v43 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  valuesCopy = values;
  stringBlockCopy = stringBlock;
  v32 = objc_opt_new();
  v11 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = valuesCopy;
  v12 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = objc_opt_class();
        value = [v16 value];
        LODWORD(v17) = [v17 doesNotContainObject:value inArray:v11];

        if (v17)
        {
          [v32 addObject:v16];
          value2 = [v16 value];
          [v11 addObject:value2];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = stringsCopy;
  v20 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v30);
        }

        v24 = stringBlockCopy[2](stringBlockCopy, *(*(&v33 + 1) + 8 * j));
        v25 = objc_opt_class();
        value3 = [v24 value];
        LODWORD(v25) = [v25 doesNotContainObject:value3 inArray:v11];

        if (v25)
        {
          [v32 addObject:v24];
          value4 = [v24 value];
          [v11 addObject:value4];
        }
      }

      v21 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v21);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v32;
}

- (SSContactResultBuilder)initWithResult:(id)result contactEntity:(id)entity contact:(id)contact
{
  resultCopy = result;
  entityCopy = entity;
  contactCopy = contact;
  v61.receiver = self;
  v61.super_class = SSContactResultBuilder;
  v11 = [(SSResultBuilder *)&v61 initWithResult:resultCopy];
  if (!v11)
  {
    goto LABEL_55;
  }

  personIdentifier = [resultCopy personIdentifier];
  if (personIdentifier)
  {
    [(SSContactResultBuilder *)v11 setPersonIdentifier:personIdentifier];
  }

  else
  {
    personIdentifier2 = [entityCopy personIdentifier];
    [(SSContactResultBuilder *)v11 setPersonIdentifier:personIdentifier2];
  }

  personQueryIdentifier = [resultCopy personQueryIdentifier];
  if (personQueryIdentifier)
  {
    [(SSContactResultBuilder *)v11 setPersonQueryIdentifier:personQueryIdentifier];
  }

  else
  {
    personQueryIdentifier2 = [entityCopy personQueryIdentifier];
    [(SSContactResultBuilder *)v11 setPersonQueryIdentifier:personQueryIdentifier2];
  }

  v16 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
  if (v16)
  {
    [(SSContactResultBuilder *)v11 setDisplayName:v16];
  }

  else
  {
    name = [entityCopy name];
    [(SSContactResultBuilder *)v11 setDisplayName:name];
  }

  if (resultCopy)
  {
    -[SSContactResultBuilder setResultType:](v11, "setResultType:", [resultCopy type]);
  }

  else
  {
    personIdentifier3 = [(SSContactResultBuilder *)v11 personIdentifier];
    if (personIdentifier3)
    {
      v19 = 37;
    }

    else
    {
      v19 = 36;
    }

    [(SSContactResultBuilder *)v11 setResultType:v19];
  }

  v20 = [objc_opt_class() contactIdentifierFromResult:resultCopy contactEntity:entityCopy];
  [(SSContactResultBuilder *)v11 setRealContactIdentifier:v20];
  v60 = v20;
  if (entityCopy)
  {
    v21 = entityCopy;
    goto LABEL_26;
  }

  v21 = objc_opt_new();
  if (v21)
  {
LABEL_26:
    v30 = [contactCopy mutableCopy];
    if (v20)
    {
      goto LABEL_27;
    }

LABEL_35:
    v33 = 1;
    if (!v30)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  personQueryIdentifier3 = [(SSContactResultBuilder *)v11 personQueryIdentifier];

  if (personQueryIdentifier3)
  {
    personQueryIdentifier4 = [(SSContactResultBuilder *)v11 personQueryIdentifier];
    if (v20)
    {
      v24 = [SPSearchContactEntity updatePersonQueryIdentifier:personQueryIdentifier4 withContactIdentifier:v20];

      personQueryIdentifier4 = v24;
    }

    personIdentifier4 = [(SSContactResultBuilder *)v11 personIdentifier];

    if (personIdentifier4)
    {
      personIdentifier5 = [(SSContactResultBuilder *)v11 personIdentifier];
      v27 = [SPSearchContactEntity updatePersonQueryIdentifier:personQueryIdentifier4 withContactIdentifier:personIdentifier5];

      personQueryIdentifier4 = v27;
    }

    result = [(SSResultBuilder *)v11 result];
    completion = [result completion];
    v21 = [SPSearchEntity searchEntityWithPersonQueryIdentifier:personQueryIdentifier4 personName:completion fromSuggestion:1];

    v20 = v60;
    goto LABEL_26;
  }

  if (!v20)
  {
    v30 = [contactCopy mutableCopy];
    v21 = 0;
    goto LABEL_35;
  }

  v21 = [SPSearchEntity searchEntityWithContactIdentifier:v20 fromSuggestion:0];
  v30 = [contactCopy mutableCopy];
LABEL_27:
  identifier = [contactCopy identifier];
  v32 = [v20 isEqual:identifier];

  if (v32)
  {
    v33 = 0;
    if (!v30)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v34 = [SSContactStore contactForContactIdentifier:v20];
    v35 = [v34 mutableCopy];

    v33 = 0;
    v30 = v35;
    if (!v35)
    {
LABEL_36:
      contact = [v21 contact];
      v30 = [contact mutableCopy];

      if (!v30)
      {
        v30 = objc_opt_new();
      }
    }
  }

LABEL_38:
  if (v33)
  {
    displayName = [(SSContactResultBuilder *)v11 displayName];
    v38 = [SSNameFormatManager contactFromName:displayName];
    v39 = [v38 mutableCopy];

    v30 = v39;
  }

  emailAddresses = [v21 emailAddresses];
  v58 = contactCopy;
  if ([emailAddresses count])
  {
    [v21 emailAddresses];
  }

  else
  {
    [resultCopy valueForAttribute:*MEMORY[0x1E6963FC8] withType:objc_opt_class()];
  }
  v41 = ;

  v42 = objc_opt_class();
  emailAddresses2 = [v30 emailAddresses];
  v44 = [v42 labeledValuesFromStrings:v41 labeledValues:emailAddresses2 withStringForLabeledValueBlock:&__block_literal_global_30 labeledValueForStringBlock:&__block_literal_global_33_0];
  [v30 setEmailAddresses:v44];

  rawPhoneNumbers = [v21 rawPhoneNumbers];
  if ([rawPhoneNumbers count])
  {
    [v21 rawPhoneNumbers];
  }

  else
  {
    [resultCopy valueForAttribute:*MEMORY[0x1E6964720] withType:objc_opt_class()];
  }
  v46 = ;

  v47 = objc_opt_class();
  phoneNumbers = [v30 phoneNumbers];
  v49 = [v47 labeledValuesFromStrings:v46 labeledValues:phoneNumbers withStringForLabeledValueBlock:&__block_literal_global_36 labeledValueForStringBlock:&__block_literal_global_38];
  [v30 setPhoneNumbers:v49];

  addresses = [v21 addresses];
  if ([addresses count])
  {
    [v21 addresses];
  }

  else
  {
    [resultCopy valueForAttribute:*MEMORY[0x1E6963CE8] withType:objc_opt_class()];
  }
  v51 = ;

  postalAddresses = [v30 postalAddresses];
  v53 = [postalAddresses count];

  if (!v53)
  {
    v54 = [objc_opt_class() labeledValuesFromStrings:v51 labeledValues:0 withStringForLabeledValueBlock:&__block_literal_global_40 labeledValueForStringBlock:&__block_literal_global_43_0];
    [v30 setPostalAddresses:v54];
  }

  birthday = [v30 birthday];
  if (birthday)
  {
    [v30 setBirthday:birthday];
  }

  else
  {
    birthdayComponents = [v21 birthdayComponents];
    [v30 setBirthday:birthdayComponents];
  }

  [(SSContactResultBuilder *)v11 setContact:v30];
  contactCopy = v59;
LABEL_55:

  return v11;
}

id __63__SSContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695CEE0];
  v3 = a2;
  v4 = [[v2 alloc] initWithLabel:0 value:v3];

  return v4;
}

id __63__SSContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 formattedStringValue];

  return v3;
}

id __63__SSContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:a2];
  v3 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v2];

  return v3;
}

id __63__SSContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695CF68];
  v3 = [a2 value];
  v4 = [v2 stringFromPostalAddress:v3 style:0];

  return v4;
}

id __63__SSContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v3 postalAddressFromString:v2];

  if (!v4)
  {
    v4 = objc_opt_new();
    [v4 setStreet:v2];
  }

  v5 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v4];

  return v5;
}

- (NSString)fullName
{
  v2 = MEMORY[0x1E695CD80];
  contact = [(SSContactResultBuilder *)self contact];
  v4 = [v2 stringFromContact:contact style:0];

  return v4;
}

- (id)buildResult
{
  v12.receiver = self;
  v12.super_class = SSContactResultBuilder;
  buildResult = [(SSResultBuilder *)&v12 buildResult];
  realContactIdentifier = [(SSContactResultBuilder *)self realContactIdentifier];
  [buildResult setContactIdentifier:realContactIdentifier];

  personIdentifier = [(SSContactResultBuilder *)self personIdentifier];
  [buildResult setPersonIdentifier:personIdentifier];

  personQueryIdentifier = [(SSContactResultBuilder *)self personQueryIdentifier];
  [buildResult setPersonQueryIdentifier:personQueryIdentifier];

  [buildResult setResultBundleId:@"com.apple.MobileAddressBook"];
  result = [(SSResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  v9 = applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    v10 = applicationBundleIdentifier;
  }

  else
  {
    v10 = @"com.apple.MobileAddressBook";
  }

  [buildResult setApplicationBundleIdentifier:v10];

  [buildResult setType:{-[SSContactResultBuilder resultType](self, "resultType")}];

  return buildResult;
}

- (id)buildHeaderResultForEntity
{
  v23[1] = *MEMORY[0x1E69E9840];
  realContactIdentifier = [(SSContactResultBuilder *)self realContactIdentifier];
  v4 = objc_opt_new();
  [v4 setContactIdentifier:realContactIdentifier];
  personIdentifier = [(SSContactResultBuilder *)self personIdentifier];
  [v4 setPersonIdentifier:personIdentifier];

  fullName = [(SSContactResultBuilder *)self fullName];
  [v4 setDisplayName:fullName];

  v7 = objc_opt_new();
  [v7 setPerson:v4];
  [v7 setCardSectionId:@"com.apple.spotlight.contactHeader"];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 setCollectionStyle:v9];

  v23[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v8 setCardSections:v10];

  v11 = objc_opt_new();
  v22 = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [v11 setCardSections:v12];

  buildResult = [(SSContactResultBuilder *)self buildResult];
  [buildResult setResultBundleId:@"com.apple.MobileAddressBook"];
  [buildResult setApplicationBundleIdentifier:0];
  [buildResult setContactIdentifier:realContactIdentifier];
  personIdentifier2 = [(SSContactResultBuilder *)self personIdentifier];
  [buildResult setPersonIdentifier:personIdentifier2];

  [buildResult setInlineCard:v11];
  [buildResult setCompactCard:0];
  if (realContactIdentifier)
  {
    personIdentifier3 = realContactIdentifier;
  }

  else
  {
    personIdentifier3 = [(SSContactResultBuilder *)self personIdentifier];
  }

  v16 = personIdentifier3;
  if (personIdentifier3)
  {
    v17 = personIdentifier3;
  }

  else
  {
    v17 = @"unknown";
  }

  v18 = [@"com.apple.spotlight.contactHeader" stringByAppendingString:v17];
  [buildResult setIdentifier:v18];

  [buildResult setNoGoTakeover:1];
  identifier = [buildResult identifier];
  [v7 setResultIdentifier:identifier];

  v20 = *MEMORY[0x1E69E9840];

  return buildResult;
}

- (id)buildFooterResultForEntity
{
  v138 = *MEMORY[0x1E69E9840];
  if (buildFooterResultForEntity_onceToken != -1)
  {
    [SSContactResultBuilder buildFooterResultForEntity];
  }

  v3 = objc_opt_new();
  selfCopy = self;
  contact = [(SSContactResultBuilder *)self contact];
  phoneNumbers = [contact phoneNumbers];
  v6 = [phoneNumbers count];

  v105 = contact;
  v106 = v3;
  if (v6)
  {
    v7 = objc_opt_new();
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    obj = [contact phoneNumbers];
    v8 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v125;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v125 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v124 + 1) + 8 * i);
          v13 = objc_opt_new();
          v14 = MEMORY[0x1E695CEE0];
          label = [v12 label];
          v16 = [v14 localizedStringForLabel:label];

          if ([v16 length])
          {
            [v13 setKey:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v18 = [v17 localizedStringForKey:@"PHONE_LABEL" value:&stru_1F556FE60 table:@"SpotlightServices"];
            [v13 setKey:v18];
          }

          value = [v12 value];
          formattedStringValue = [value formattedStringValue];

          contact2 = [(SSContactResultBuilder *)selfCopy contact];
          v22 = [SSCommandConfiguration commandButtonItemForPhoneNumber:formattedStringValue contact:contact2];
          v136 = v22;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v136 count:1];
          [v13 setValues:v23];

          [v7 addObject:v13];
        }

        v9 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
      }

      while (v9);
    }

    v24 = objc_opt_new();
    [v24 setInfoTuples:v7];
    v3 = v106;
    [v106 addObject:v24];

    contact = v105;
  }

  emailAddresses = [contact emailAddresses];
  v26 = [emailAddresses count];

  if (v26)
  {
    v27 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    emailAddresses2 = [contact emailAddresses];
    v29 = [emailAddresses2 countByEnumeratingWithState:&v120 objects:v135 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v121;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v121 != v31)
          {
            objc_enumerationMutation(emailAddresses2);
          }

          v33 = *(*(&v120 + 1) + 8 * j);
          v34 = objc_opt_new();
          v35 = MEMORY[0x1E695CEE0];
          label2 = [v33 label];
          v37 = [v35 localizedStringForLabel:label2];

          if ([v37 length])
          {
            [v34 setKey:v37];
          }

          else
          {
            v38 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v39 = [v38 localizedStringForKey:@"EMAIL_LABEL" value:&stru_1F556FE60 table:@"SpotlightServices"];
            [v34 setKey:v39];
          }

          value2 = [v33 value];
          v41 = [SSCommandConfiguration commandButtonItemForEmail:value2];
          v134 = v41;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
          [v34 setValues:v42];

          [v27 addObject:v34];
        }

        v30 = [emailAddresses2 countByEnumeratingWithState:&v120 objects:v135 count:16];
      }

      while (v30);
    }

    v43 = objc_opt_new();
    [v43 setInfoTuples:v27];
    v3 = v106;
    [v106 addObject:v43];

    contact = v105;
  }

  postalAddresses = [contact postalAddresses];
  v45 = [postalAddresses count];

  if (v45)
  {
    v46 = objc_opt_new();
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    obja = [contact postalAddresses];
    v47 = [obja countByEnumeratingWithState:&v116 objects:v133 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v117;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v117 != v49)
          {
            objc_enumerationMutation(obja);
          }

          v51 = *(*(&v116 + 1) + 8 * k);
          v52 = objc_opt_new();
          v53 = MEMORY[0x1E695CEE0];
          label3 = [v51 label];
          v55 = [v53 localizedStringForLabel:label3];

          if ([v55 length])
          {
            [v52 setKey:v55];
          }

          else
          {
            v56 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            v57 = [v56 localizedStringForKey:@"ADDRESS_LABEL" value:&stru_1F556FE60 table:@"SpotlightServices"];
            [v52 setKey:v57];
          }

          v58 = MEMORY[0x1E695CF68];
          value3 = [v51 value];
          v60 = [v58 stringFromPostalAddress:value3 style:0];

          v61 = [SSCommandConfiguration commandButtonItemForAddressLocation:v60];
          v132 = v61;
          v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
          [v52 setValues:v62];

          [v46 addObject:v52];
        }

        v48 = [obja countByEnumeratingWithState:&v116 objects:v133 count:16];
      }

      while (v48);
    }

    v63 = objc_opt_new();
    [v63 setInfoTuples:v46];
    v3 = v106;
    [v106 addObject:v63];

    contact = v105;
  }

  birthday = [contact birthday];

  if (birthday)
  {
    v65 = objc_opt_new();
    v66 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v67 = [v66 localizedStringForKey:@"BIRTHDAY_LABEL" value:&stru_1F556FE60 table:@"SpotlightServices"];
    [v65 setKey:v67];

    birthday2 = [contact birthday];
    v69 = [SSCommandConfiguration commandButtonItemForBirthday:birthday2];
    v131 = v69;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
    [v65 setValues:v70];

    v71 = objc_opt_new();
    v130 = v65;
    v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
    [v71 setInfoTuples:v72];

    [v3 addObject:v71];
  }

  if ([v3 count])
  {
    v73 = objc_opt_new();
    [v73 setSymbolName:@"arrow.up.forward.app.fill"];
    [v73 setIsTemplate:1];
    objb = [contact identifier];
    v74 = objc_opt_new();
    [v74 setCoreSpotlightIdentifier:objb];
    if (isMacOS())
    {
      [v74 setApplicationBundleIdentifier:@"com.apple.MobileAddressBook"];
      v75 = selfCopy;
    }

    else
    {
      v75 = selfCopy;
      bundleId = [objc_opt_class() bundleId];
      [v74 setApplicationBundleIdentifier:bundleId];
    }

    v78 = objc_opt_new();
    v79 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v80 = [v79 localizedStringForKey:@"OPEN_IN_CONTACTS_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
    [v78 setTitle:v80];

    v111 = v73;
    [v78 setImage:v73];
    v104 = v74;
    [v78 setCommand:v74];
    v81 = objc_opt_new();
    v82 = MEMORY[0x1E69CA3A0];
    v83 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v84 = [v83 localizedStringForKey:@"CONTACT_HEADER_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v85 = [v82 textWithString:v84];
    [v81 setTitle:v85];

    v86 = objc_opt_new();
    [v81 setCollectionStyle:v86];

    [v81 setCardSections:v3];
    v103 = v78;
    [v81 setButtonItem:v78];
    v87 = objc_opt_new();
    v129 = v81;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
    [v87 setCardSections:v88];

    buildResult = [(SSContactResultBuilder *)v75 buildResult];
    [buildResult setContactIdentifier:objb];
    personIdentifier = [(SSContactResultBuilder *)v75 personIdentifier];
    [buildResult setPersonIdentifier:personIdentifier];

    [buildResult setInlineCard:v87];
    [buildResult setCompactCard:v87];
    if (objb)
    {
      personIdentifier2 = objb;
    }

    else
    {
      personIdentifier2 = [(SSContactResultBuilder *)v75 personIdentifier];
    }

    v91 = personIdentifier2;
    if (personIdentifier2)
    {
      v92 = personIdentifier2;
    }

    else
    {
      v92 = @"unknown";
    }

    v93 = [@"com.apple.spotlight.contactInfo" stringByAppendingString:v92];
    [buildResult setIdentifier:v93];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v94 = v3;
    v95 = [v94 countByEnumeratingWithState:&v112 objects:v128 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v113;
      do
      {
        for (m = 0; m != v96; ++m)
        {
          if (*v113 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v99 = *(*(&v112 + 1) + 8 * m);
          identifier = [buildResult identifier];
          [v99 setResultIdentifier:identifier];
        }

        v96 = [v94 countByEnumeratingWithState:&v112 objects:v128 count:16];
      }

      while (v96);
    }

    contact = v105;
    v3 = v106;
  }

  else
  {
    buildResult = 0;
  }

  v101 = *MEMORY[0x1E69E9840];

  return buildResult;
}

uint64_t __52__SSContactResultBuilder_buildFooterResultForEntity__block_invoke()
{
  v0 = [@"com.apple.spotlight.contactInfo" stringByAppendingString:@".phoneNumber"];
  v1 = buildFooterResultForEntity_phoneNumberCardSectionIdentifier;
  buildFooterResultForEntity_phoneNumberCardSectionIdentifier = v0;

  v2 = [@"com.apple.spotlight.contactInfo" stringByAppendingString:@".emailAddress"];
  v3 = buildFooterResultForEntity_emailAddressCardSectionIdentifier;
  buildFooterResultForEntity_emailAddressCardSectionIdentifier = v2;

  v4 = [@"com.apple.spotlight.contactInfo" stringByAppendingString:@".address"];
  v5 = buildFooterResultForEntity_addressCardSectionIdentifier;
  buildFooterResultForEntity_addressCardSectionIdentifier = v4;

  buildFooterResultForEntity_birthdayCardSectionIdentifier = [@"com.apple.spotlight.contactInfo" stringByAppendingString:@".birthday"];

  return MEMORY[0x1EEE66BB8]();
}

- (id)buildSocialMediaResultForEntity
{
  v62 = *MEMORY[0x1E69E9840];
  if (buildSocialMediaResultForEntity_onceToken != -1)
  {
    [SSContactResultBuilder buildSocialMediaResultForEntity];
  }

  v52 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  selfCopy = self;
  contact = [(SSContactResultBuilder *)self contact];
  socialProfiles = [contact socialProfiles];

  obj = socialProfiles;
  v53 = [socialProfiles countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v53)
  {
    v51 = *v57;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v57 != v51)
        {
          objc_enumerationMutation(obj);
        }

        value = [*(*(&v56 + 1) + 8 * i) value];
        service = [value service];
        urlString = [value urlString];
        bundleIdentifiers = [value bundleIdentifiers];
        firstObject = [bundleIdentifiers firstObject];
        if ([firstObject length])
        {
          bundleIdentifiers2 = [value bundleIdentifiers];
          firstObject2 = [bundleIdentifiers2 firstObject];
        }

        else
        {
          firstObject2 = [buildSocialMediaResultForEntity_bundleIDForDefaultServices objectForKeyedSubscript:service];
        }

        defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
        v14 = [defaultWorkspace applicationIsInstalled:firstObject2];

        if (v14)
        {
          v15 = objc_opt_new();
          [v15 setBundleIdentifier:firstObject2];
        }

        else
        {
          v15 = objc_opt_new();
          [v15 setSymbolName:@"safari"];
          [v15 setPunchThroughBackground:1];
          [v15 setSize:{45.0, 45.0}];
        }

        v55 = firstObject2;
        v54 = urlString;
        if ([urlString length])
        {
          v16 = MEMORY[0x1E69CA320];
          v17 = [MEMORY[0x1E695DFF8] URLWithString:urlString];
          v18 = [v16 punchoutWithURL:v17];
        }

        else
        {
          v18 = 0;
        }

        v19 = objc_opt_new();
        [v19 setPunchout:v18];
        v20 = objc_opt_new();
        v21 = MEMORY[0x1E69CA3A0];
        v22 = [MEMORY[0x1E695CFA0] localizedStringForService:service];
        v23 = [v21 textWithString:v22];
        [v20 setTitle:v23];

        title = [v20 title];
        [title setMaxLines:1];

        v25 = MEMORY[0x1E69CA3A0];
        username = [value username];
        v27 = [v25 textWithString:username];
        [v20 setSubtitle:v27];

        subtitle = [v20 subtitle];
        [subtitle setMaxLines:1];

        [v20 setImage:v15];
        [v20 setCardSectionId:@"com.apple.MobileAddressBook.SocialMedia"];
        [v20 setCommand:v19];
        [v52 addObject:v20];
      }

      v53 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v53);
  }

  if ([v52 count])
  {
    v29 = objc_opt_new();
    [v29 setNumberOfRows:1];
    v30 = objc_opt_new();
    v31 = MEMORY[0x1E69CA3A0];
    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"SOCIAL_MEDIA_SECTION_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v34 = [v31 textWithString:v33];
    [v30 setTitle:v34];

    [v30 setCollectionStyle:v29];
    [v30 setCardSections:v52];
    v35 = objc_opt_new();
    v60 = v30;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    [v35 setCardSections:v36];

    buildResult = [(SSContactResultBuilder *)selfCopy buildResult];
    [buildResult setResultBundleId:@"com.apple.MobileAddressBook.SocialMedia"];
    [buildResult setApplicationBundleIdentifier:@"com.apple.MobileAddressBook.SocialMedia"];
    realContactIdentifier = [(SSContactResultBuilder *)selfCopy realContactIdentifier];
    [buildResult setContactIdentifier:realContactIdentifier];

    personIdentifier = [(SSContactResultBuilder *)selfCopy personIdentifier];
    [buildResult setPersonIdentifier:personIdentifier];

    [buildResult setInlineCard:v35];
    [buildResult setCompactCard:0];
    realContactIdentifier2 = [(SSContactResultBuilder *)selfCopy realContactIdentifier];
    v41 = realContactIdentifier2;
    if (realContactIdentifier2)
    {
      personIdentifier2 = realContactIdentifier2;
    }

    else
    {
      personIdentifier2 = [(SSContactResultBuilder *)selfCopy personIdentifier];
    }

    v43 = personIdentifier2;

    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = @"unknown";
    }

    v45 = [@"com.apple.MobileAddressBook.SocialMedia" stringByAppendingString:v44];
    [buildResult setIdentifier:v45];

    identifier = [buildResult identifier];
    [v30 setResultIdentifier:identifier];
  }

  else
  {
    buildResult = 0;
  }

  v47 = *MEMORY[0x1E69E9840];

  return buildResult;
}

void __57__SSContactResultBuilder_buildSocialMediaResultForEntity__block_invoke()
{
  v9[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695CC50];
  v8[0] = *MEMORY[0x1E695CC48];
  v8[1] = v0;
  v9[0] = @"com.facebook.Facebook";
  v9[1] = @"com.yahoo.flickr";
  v1 = *MEMORY[0x1E695CC60];
  v8[2] = *MEMORY[0x1E695CC58];
  v8[3] = v1;
  v9[2] = @"com.linkedin.LinkedIn";
  v9[3] = &stru_1F556FE60;
  v2 = *MEMORY[0x1E695CC70];
  v8[4] = *MEMORY[0x1E695CC68];
  v8[5] = v2;
  v9[4] = @"com.sina.weibo";
  v9[5] = @"com.sina.weibo";
  v8[6] = *MEMORY[0x1E695CC78];
  v3 = isMacOS();
  v4 = @"com.atebits.Tweetie2";
  if (v3)
  {
    v4 = @"maccatalyst.com.atebits.Tweetie2";
  }

  v8[7] = *MEMORY[0x1E695CC80];
  v9[6] = v4;
  v9[7] = @"com.yelp.yelpiphone";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:8];
  v6 = buildSocialMediaResultForEntity_bundleIDForDefaultServices;
  buildSocialMediaResultForEntity_bundleIDForDefaultServices = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)buildPreviewCommand
{
  v3 = objc_opt_new();
  realContactIdentifier = [(SSContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:realContactIdentifier];

  return v3;
}

- (id)highlightedMatchedText
{
  buildTitle = [(SSContactResultBuilder *)self buildTitle];
  text = [buildTitle text];
  v5 = [(SSResultBuilder *)self buildHighlightedMatchedTextWithTitle:text headTruncation:1];

  [v5 setMaxLines:1];

  return v5;
}

- (id)buildDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!isMacOS() || ([(SSContactResultBuilder *)self highlightedMatchedText], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ((isIpad() & 1) != 0 || isMacOS())
    {
      contact = [(SSContactResultBuilder *)self contact];
      organizationName = [contact organizationName];

      if ([organizationName length] && (-[SSContactResultBuilder displayName](self, "displayName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(organizationName, "isEqualToString:", v7), v7, !v8))
      {
        v4 = [MEMORY[0x1E69CA3A0] textWithString:organizationName];
        [v4 setMaxLines:1];

        if (v4)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v9 = 0;
    goto LABEL_12;
  }

  v4 = v3;
LABEL_11:
  v12[0] = v4;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)buildCommand
{
  if ([objc_opt_class() isSpotlight])
  {
    buildCommand = objc_opt_new();
    v4 = objc_opt_new();
    [v4 setSymbolName:@"person.crop.circle"];
    [v4 setIsTemplate:1];
    fullName = [(SSContactResultBuilder *)self fullName];
    [buildCommand setTokenString:fullName];

    realContactIdentifier = [(SSContactResultBuilder *)self realContactIdentifier];
    personQueryIdentifier = [(SSContactResultBuilder *)self personQueryIdentifier];
    if (personQueryIdentifier)
    {
      [buildCommand setEntityIdentifier:personQueryIdentifier];
    }

    else
    {
      result = [(SSResultBuilder *)self result];
      personQueryIdentifier2 = [result personQueryIdentifier];
      if (personQueryIdentifier2)
      {
        [buildCommand setEntityIdentifier:personQueryIdentifier2];
      }

      else
      {
        v10 = [SPSearchContactEntity updatePersonQueryIdentifier:&stru_1F556FE60 withContactIdentifier:realContactIdentifier];
        [buildCommand setEntityIdentifier:v10];
      }
    }

    [buildCommand setEntityType:2];
    [buildCommand setSymbolImage:v4];
    [buildCommand setTokenImage:v4];
    buildBackgroundColor = [(SSContactResultBuilder *)self buildBackgroundColor];
    [buildCommand setEntityBackgroundColor:buildBackgroundColor];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SSContactResultBuilder;
    buildCommand = [(SSResultBuilder *)&v13 buildCommand];
  }

  return buildCommand;
}

- (id)buildFillToolParameterCommand
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  realContactIdentifier = [(SSContactResultBuilder *)self realContactIdentifier];
  [v4 setContactIdentifier:realContactIdentifier];

  personIdentifier = [(SSContactResultBuilder *)self personIdentifier];
  [v4 setPersonIdentifier:personIdentifier];

  fullName = [(SSContactResultBuilder *)self fullName];
  [v4 setDisplayName:fullName];

  [v3 setPerson:v4];

  return v3;
}

- (id)buildTitle
{
  displayName = [(SSContactResultBuilder *)self displayName];
  if (![displayName length])
  {
    fullName = [(SSContactResultBuilder *)self fullName];

    if ([fullName length])
    {
      displayName = fullName;
    }

    else
    {
      contact = [(SSContactResultBuilder *)self contact];
      phoneNumbers = [contact phoneNumbers];
      firstObject = [phoneNumbers firstObject];
      value = [firstObject value];
      displayName = [value stringValue];

      if (![displayName length])
      {
        contact2 = [(SSContactResultBuilder *)self contact];
        emailAddresses = [contact2 emailAddresses];
        firstObject2 = [emailAddresses firstObject];
        value2 = [firstObject2 value];

        if ([value2 length])
        {
          displayName = value2;
        }

        else
        {
          v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          displayName = [v13 localizedStringForKey:@"NO_NAME" value:&stru_1F556FE60 table:@"SpotlightServices"];
        }
      }
    }
  }

  v14 = [MEMORY[0x1E69CA3A0] textWithString:displayName];
  [v14 setMaxLines:2];

  return v14;
}

- (id)buildAction
{
  v3 = objc_opt_new();
  realContactIdentifier = [(SSContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:realContactIdentifier];

  return v3;
}

- (id)buildThumbnail
{
  v10[1] = *MEMORY[0x1E69E9840];
  realContactIdentifier = [(SSContactResultBuilder *)self realContactIdentifier];
  v4 = objc_opt_new();
  if (realContactIdentifier)
  {
    [v4 setThreeDTouchEnabled:1];
    v10[0] = realContactIdentifier;
    contact = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v4 setContactIdentifiers:contact];
  }

  else
  {
    [v4 setMonogramStyle:0];
    v6 = MEMORY[0x1E695CD80];
    contact = [(SSContactResultBuilder *)self contact];
    v7 = [v6 stringFromContact:contact style:1002];
    [v4 setMonogramLetters:v7];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildBackgroundColor
{
  v3 = objc_opt_new();
  buildThumbnail = [(SSContactResultBuilder *)self buildThumbnail];
  [v3 setImage:buildThumbnail];

  return v3;
}

- (id)buildPreviewButtonItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  realContactIdentifier = [(SSContactResultBuilder *)self realContactIdentifier];
  if (realContactIdentifier)
  {
    v4 = objc_opt_new();
    [v4 setContactIdentifier:realContactIdentifier];
    v9[0] = v4;
    buildPreviewButtonItems = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSContactResultBuilder;
    buildPreviewButtonItems = [(SSResultBuilder *)&v8 buildPreviewButtonItems];
  }

  v6 = *MEMORY[0x1E69E9840];

  return buildPreviewButtonItems;
}

@end