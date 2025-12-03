@interface SPUISContactResultBuilder
+ (BOOL)doesNotContainObject:(id)object inArray:(id)array;
+ (BOOL)supportsResult:(id)result;
+ (id)contactIdentifierFromResult:(id)result contactEntity:(id)entity;
+ (id)contactIdentifiersFromResults:(id)results;
+ (id)labeledValuesFromStrings:(id)strings labeledValues:(id)values withStringForLabeledValueBlock:(id)block labeledValueForStringBlock:(id)stringBlock;
- (NSString)fullName;
- (SPUISContactResultBuilder)initWithResult:(id)result contactEntity:(id)entity contact:(id)contact;
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

@implementation SPUISContactResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  if (supportsResult__onceToken != -1)
  {
    +[SPUISContactResultBuilder supportsResult:];
  }

  applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
  v6 = [applicationBundleIdentifier isEqualToString:@"com.apple.contactsd"];

  if ((isMacOS() & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___SPUISContactResultBuilder;
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

  v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2CF0] withType:objc_opt_class()];
  v10 = [v9 isEqual:@"vCard"];

  return v6 & (v10 ^ 1);
}

void __44__SPUISContactResultBuilder_supportsResult___block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.apple.spotlight.contacts";
  v5[1] = @"com.apple.MobileAddressBook";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportsResult__contactResultBundleIds;
  supportsResult__contactResultBundleIds = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)contactIdentifiersFromResults:(id)results
{
  v20 = *MEMORY[0x277D85DE8];
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
        if ([(objc_class *)[SPUISResultBuilder isSubclassOfClass:v11 resultBuilderClassForResult:v15 preferAppVendedView:?], "isSubclassOfClass:", self])
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

  v13 = *MEMORY[0x277D85DE8];

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
    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC25F0] withType:objc_opt_class()];
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
    v15 = [resultCopy valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];

    v11 = v15;
  }

  return v11;
}

+ (BOOL)doesNotContainObject:(id)object inArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
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

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)labeledValuesFromStrings:(id)strings labeledValues:(id)values withStringForLabeledValueBlock:(id)block labeledValueForStringBlock:(id)stringBlock
{
  v43 = *MEMORY[0x277D85DE8];
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

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

- (SPUISContactResultBuilder)initWithResult:(id)result contactEntity:(id)entity contact:(id)contact
{
  resultCopy = result;
  entityCopy = entity;
  contactCopy = contact;
  v63.receiver = self;
  v63.super_class = SPUISContactResultBuilder;
  v11 = [(SPUISResultBuilder *)&v63 initWithResult:resultCopy];
  if (!v11)
  {
    goto LABEL_55;
  }

  personIdentifier = [resultCopy personIdentifier];
  if (personIdentifier)
  {
    [(SPUISContactResultBuilder *)v11 setPersonIdentifier:personIdentifier];
  }

  else
  {
    personIdentifier2 = [entityCopy personIdentifier];
    [(SPUISContactResultBuilder *)v11 setPersonIdentifier:personIdentifier2];
  }

  personQueryIdentifier = [resultCopy personQueryIdentifier];
  if (personQueryIdentifier)
  {
    [(SPUISContactResultBuilder *)v11 setPersonQueryIdentifier:personQueryIdentifier];
  }

  else
  {
    personQueryIdentifier2 = [entityCopy personQueryIdentifier];
    [(SPUISContactResultBuilder *)v11 setPersonQueryIdentifier:personQueryIdentifier2];
  }

  v16 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
  if (v16)
  {
    [(SPUISContactResultBuilder *)v11 setDisplayName:v16];
  }

  else
  {
    name = [entityCopy name];
    [(SPUISContactResultBuilder *)v11 setDisplayName:name];
  }

  if (resultCopy)
  {
    -[SPUISContactResultBuilder setResultType:](v11, "setResultType:", [resultCopy type]);
  }

  else
  {
    personIdentifier3 = [(SPUISContactResultBuilder *)v11 personIdentifier];
    if (personIdentifier3)
    {
      v19 = 37;
    }

    else
    {
      v19 = 36;
    }

    [(SPUISContactResultBuilder *)v11 setResultType:v19];
  }

  v20 = [objc_opt_class() contactIdentifierFromResult:resultCopy contactEntity:entityCopy];
  [(SPUISContactResultBuilder *)v11 setRealContactIdentifier:v20];
  v62 = v20;
  if (entityCopy)
  {
    v21 = entityCopy;
    goto LABEL_26;
  }

  v21 = objc_opt_new();
  if (v21)
  {
LABEL_26:
    v32 = [contactCopy mutableCopy];
    if (v20)
    {
      goto LABEL_27;
    }

LABEL_35:
    v35 = 1;
    if (!v32)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  personQueryIdentifier3 = [(SPUISContactResultBuilder *)v11 personQueryIdentifier];

  if (personQueryIdentifier3)
  {
    personQueryIdentifier4 = [(SPUISContactResultBuilder *)v11 personQueryIdentifier];
    if (v20)
    {
      v24 = [MEMORY[0x277D65888] updatePersonQueryIdentifier:personQueryIdentifier4 withContactIdentifier:v20];

      personQueryIdentifier4 = v24;
    }

    personIdentifier4 = [(SPUISContactResultBuilder *)v11 personIdentifier];

    if (personIdentifier4)
    {
      v26 = MEMORY[0x277D65888];
      personIdentifier5 = [(SPUISContactResultBuilder *)v11 personIdentifier];
      v28 = [v26 updatePersonQueryIdentifier:personQueryIdentifier4 withContactIdentifier:personIdentifier5];

      personQueryIdentifier4 = v28;
    }

    v29 = MEMORY[0x277D65890];
    result = [(SPUISResultBuilder *)v11 result];
    completion = [result completion];
    v21 = [v29 searchEntityWithPersonQueryIdentifier:personQueryIdentifier4 personName:completion fromSuggestion:1];

    v20 = v62;
    goto LABEL_26;
  }

  if (!v20)
  {
    v32 = [contactCopy mutableCopy];
    v21 = 0;
    goto LABEL_35;
  }

  v21 = [MEMORY[0x277D65890] searchEntityWithContactIdentifier:v20 fromSuggestion:0];
  v32 = [contactCopy mutableCopy];
LABEL_27:
  identifier = [contactCopy identifier];
  v34 = [v20 isEqual:identifier];

  if (v34)
  {
    v35 = 0;
    if (!v32)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v36 = [SPUISContactStore contactForContactIdentifier:v20];
    v37 = [v36 mutableCopy];

    v35 = 0;
    v32 = v37;
    if (!v37)
    {
LABEL_36:
      contact = [v21 contact];
      v32 = [contact mutableCopy];

      if (!v32)
      {
        v32 = objc_opt_new();
      }
    }
  }

LABEL_38:
  if (v35)
  {
    displayName = [(SPUISContactResultBuilder *)v11 displayName];
    v40 = [SPUISNameFormatManager contactFromName:displayName];
    v41 = [v40 mutableCopy];

    v32 = v41;
  }

  emailAddresses = [v21 emailAddresses];
  v60 = contactCopy;
  if ([emailAddresses count])
  {
    [v21 emailAddresses];
  }

  else
  {
    [resultCopy valueForAttribute:*MEMORY[0x277CC2788] withType:objc_opt_class()];
  }
  v43 = ;

  v44 = objc_opt_class();
  emailAddresses2 = [v32 emailAddresses];
  v46 = [v44 labeledValuesFromStrings:v43 labeledValues:emailAddresses2 withStringForLabeledValueBlock:&__block_literal_global_528 labeledValueForStringBlock:&__block_literal_global_531];
  [v32 setEmailAddresses:v46];

  rawPhoneNumbers = [v21 rawPhoneNumbers];
  if ([rawPhoneNumbers count])
  {
    [v21 rawPhoneNumbers];
  }

  else
  {
    [resultCopy valueForAttribute:*MEMORY[0x277CC2EB8] withType:objc_opt_class()];
  }
  v48 = ;

  v49 = objc_opt_class();
  phoneNumbers = [v32 phoneNumbers];
  v51 = [v49 labeledValuesFromStrings:v48 labeledValues:phoneNumbers withStringForLabeledValueBlock:&__block_literal_global_534 labeledValueForStringBlock:&__block_literal_global_536];
  [v32 setPhoneNumbers:v51];

  addresses = [v21 addresses];
  if ([addresses count])
  {
    [v21 addresses];
  }

  else
  {
    [resultCopy valueForAttribute:*MEMORY[0x277CC24B0] withType:objc_opt_class()];
  }
  v53 = ;

  postalAddresses = [v32 postalAddresses];
  v55 = [postalAddresses count];

  if (!v55)
  {
    v56 = [objc_opt_class() labeledValuesFromStrings:v53 labeledValues:0 withStringForLabeledValueBlock:&__block_literal_global_538 labeledValueForStringBlock:&__block_literal_global_541];
    [v32 setPostalAddresses:v56];
  }

  birthday = [v32 birthday];
  if (birthday)
  {
    [v32 setBirthday:birthday];
  }

  else
  {
    birthdayComponents = [v21 birthdayComponents];
    [v32 setBirthday:birthdayComponents];
  }

  [(SPUISContactResultBuilder *)v11 setContact:v32];
  contactCopy = v61;
LABEL_55:

  return v11;
}

id __66__SPUISContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDB20];
  v3 = a2;
  v4 = [[v2 alloc] initWithLabel:0 value:v3];

  return v4;
}

id __66__SPUISContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 formattedStringValue];

  return v3;
}

id __66__SPUISContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:a2];
  v3 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:0 value:v2];

  return v3;
}

id __66__SPUISContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDB80];
  v3 = [a2 value];
  v4 = [v2 stringFromPostalAddress:v3 style:0];

  return v4;
}

id __66__SPUISContactResultBuilder_initWithResult_contactEntity_contact___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v3 postalAddressFromString:v2];

  if (!v4)
  {
    v4 = objc_opt_new();
    [v4 setStreet:v2];
  }

  v5 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:0 value:v4];

  return v5;
}

- (NSString)fullName
{
  v2 = MEMORY[0x277CBDA78];
  contact = [(SPUISContactResultBuilder *)self contact];
  v4 = [v2 stringFromContact:contact style:0];

  return v4;
}

- (id)buildResult
{
  v12.receiver = self;
  v12.super_class = SPUISContactResultBuilder;
  buildResult = [(SPUISResultBuilder *)&v12 buildResult];
  realContactIdentifier = [(SPUISContactResultBuilder *)self realContactIdentifier];
  [buildResult setContactIdentifier:realContactIdentifier];

  personIdentifier = [(SPUISContactResultBuilder *)self personIdentifier];
  [buildResult setPersonIdentifier:personIdentifier];

  personQueryIdentifier = [(SPUISContactResultBuilder *)self personQueryIdentifier];
  [buildResult setPersonQueryIdentifier:personQueryIdentifier];

  [buildResult setResultBundleId:@"com.apple.MobileAddressBook"];
  result = [(SPUISResultBuilder *)self result];
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

  [buildResult setType:{-[SPUISContactResultBuilder resultType](self, "resultType")}];

  return buildResult;
}

- (id)buildHeaderResultForEntity
{
  v23[1] = *MEMORY[0x277D85DE8];
  realContactIdentifier = [(SPUISContactResultBuilder *)self realContactIdentifier];
  v4 = objc_opt_new();
  [v4 setContactIdentifier:realContactIdentifier];
  personIdentifier = [(SPUISContactResultBuilder *)self personIdentifier];
  [v4 setPersonIdentifier:personIdentifier];

  fullName = [(SPUISContactResultBuilder *)self fullName];
  [v4 setDisplayName:fullName];

  v7 = objc_opt_new();
  [v7 setPerson:v4];
  [v7 setCardSectionId:@"com.apple.spotlight.contactHeader"];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 setCollectionStyle:v9];

  v23[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v8 setCardSections:v10];

  v11 = objc_opt_new();
  v22 = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  [v11 setCardSections:v12];

  buildResult = [(SPUISContactResultBuilder *)self buildResult];
  [buildResult setResultBundleId:@"com.apple.MobileAddressBook"];
  [buildResult setApplicationBundleIdentifier:0];
  [buildResult setContactIdentifier:realContactIdentifier];
  personIdentifier2 = [(SPUISContactResultBuilder *)self personIdentifier];
  [buildResult setPersonIdentifier:personIdentifier2];

  [buildResult setInlineCard:v11];
  [buildResult setCompactCard:0];
  if (realContactIdentifier)
  {
    personIdentifier3 = realContactIdentifier;
  }

  else
  {
    personIdentifier3 = [(SPUISContactResultBuilder *)self personIdentifier];
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

  v20 = *MEMORY[0x277D85DE8];

  return buildResult;
}

- (id)buildFooterResultForEntity
{
  v134 = *MEMORY[0x277D85DE8];
  if (buildFooterResultForEntity_onceToken != -1)
  {
    [SPUISContactResultBuilder buildFooterResultForEntity];
  }

  v3 = objc_opt_new();
  selfCopy = self;
  contact = [(SPUISContactResultBuilder *)self contact];
  phoneNumbers = [contact phoneNumbers];
  v6 = [phoneNumbers count];

  v100 = contact;
  v101 = v3;
  if (v6)
  {
    v7 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = [contact phoneNumbers];
    v8 = [obj countByEnumeratingWithState:&v120 objects:v133 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v121;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v121 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v120 + 1) + 8 * i);
          v13 = objc_opt_new();
          v14 = MEMORY[0x277CBDB20];
          label = [v12 label];
          v16 = [v14 localizedStringForLabel:label];

          if ([v16 length])
          {
            [v13 setKey:v16];
          }

          else
          {
            v17 = [SPUISUtilities localizedStringForKey:@"PHONE_LABEL"];
            [v13 setKey:v17];
          }

          value = [v12 value];
          formattedStringValue = [value formattedStringValue];

          contact2 = [(SPUISContactResultBuilder *)selfCopy contact];
          v21 = [SPUISCommandConfiguration commandButtonItemForPhoneNumber:formattedStringValue contact:contact2];
          v132 = v21;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
          [v13 setValues:v22];

          [v7 addObject:v13];
        }

        v9 = [obj countByEnumeratingWithState:&v120 objects:v133 count:16];
      }

      while (v9);
    }

    v23 = objc_opt_new();
    [v23 setInfoTuples:v7];
    v3 = v101;
    [v101 addObject:v23];

    contact = v100;
  }

  emailAddresses = [contact emailAddresses];
  v25 = [emailAddresses count];

  if (v25)
  {
    v26 = objc_opt_new();
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    obja = [contact emailAddresses];
    v27 = [obja countByEnumeratingWithState:&v116 objects:v131 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v117;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v117 != v29)
          {
            objc_enumerationMutation(obja);
          }

          v31 = *(*(&v116 + 1) + 8 * j);
          v32 = objc_opt_new();
          v33 = MEMORY[0x277CBDB20];
          label2 = [v31 label];
          v35 = [v33 localizedStringForLabel:label2];

          if ([v35 length])
          {
            [v32 setKey:v35];
          }

          else
          {
            v36 = [SPUISUtilities localizedStringForKey:@"EMAIL_LABEL"];
            [v32 setKey:v36];
          }

          value2 = [v31 value];
          v38 = [SPUISCommandConfiguration commandButtonItemForEmail:value2];
          v130 = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
          [v32 setValues:v39];

          [v26 addObject:v32];
        }

        v28 = [obja countByEnumeratingWithState:&v116 objects:v131 count:16];
      }

      while (v28);
    }

    v40 = objc_opt_new();
    [v40 setInfoTuples:v26];
    v3 = v101;
    [v101 addObject:v40];

    contact = v100;
  }

  postalAddresses = [contact postalAddresses];
  v42 = [postalAddresses count];

  if (v42)
  {
    v43 = objc_opt_new();
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    objb = [contact postalAddresses];
    v44 = [objb countByEnumeratingWithState:&v112 objects:v129 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v113;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v113 != v46)
          {
            objc_enumerationMutation(objb);
          }

          v48 = *(*(&v112 + 1) + 8 * k);
          v49 = objc_opt_new();
          v50 = MEMORY[0x277CBDB20];
          label3 = [v48 label];
          v52 = [v50 localizedStringForLabel:label3];

          if ([v52 length])
          {
            [v49 setKey:v52];
          }

          else
          {
            v53 = [SPUISUtilities localizedStringForKey:@"ADDRESS_LABEL"];
            [v49 setKey:v53];
          }

          v54 = MEMORY[0x277CBDB80];
          value3 = [v48 value];
          v56 = [v54 stringFromPostalAddress:value3 style:0];

          v57 = [SPUISCommandConfiguration commandButtonItemForAddressLocation:v56];
          v128 = v57;
          v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
          [v49 setValues:v58];

          [v43 addObject:v49];
        }

        v45 = [objb countByEnumeratingWithState:&v112 objects:v129 count:16];
      }

      while (v45);
    }

    v59 = objc_opt_new();
    [v59 setInfoTuples:v43];
    v3 = v101;
    [v101 addObject:v59];

    contact = v100;
  }

  birthday = [contact birthday];

  if (birthday)
  {
    v61 = objc_opt_new();
    v62 = [SPUISUtilities localizedStringForKey:@"BIRTHDAY_LABEL"];
    [v61 setKey:v62];

    birthday2 = [contact birthday];
    v64 = [SPUISCommandConfiguration commandButtonItemForBirthday:birthday2];
    v127 = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
    [v61 setValues:v65];

    v66 = objc_opt_new();
    v126 = v61;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
    [v66 setInfoTuples:v67];

    [v3 addObject:v66];
  }

  if ([v3 count])
  {
    v68 = objc_opt_new();
    [v68 setSymbolName:@"arrow.up.forward.app.fill"];
    [v68 setIsTemplate:1];
    identifier = [contact identifier];
    v70 = objc_opt_new();
    [v70 setCoreSpotlightIdentifier:identifier];
    if (+[SPUISUtilities isMacOS])
    {
      [v70 setApplicationBundleIdentifier:@"com.apple.MobileAddressBook"];
      v71 = selfCopy;
    }

    else
    {
      v71 = selfCopy;
      bundleId = [objc_opt_class() bundleId];
      [v70 setApplicationBundleIdentifier:bundleId];
    }

    v74 = objc_opt_new();
    v75 = [SPUISUtilities localizedStringForKey:@"OPEN_IN_CONTACTS_TITLE"];
    [v74 setTitle:v75];

    [v74 setImage:v68];
    [v74 setCommand:v70];
    v76 = objc_opt_new();
    v77 = MEMORY[0x277D4C598];
    v78 = [SPUISUtilities localizedStringForKey:@"CONTACT_HEADER_TITLE"];
    v79 = [v77 textWithString:v78];
    [v76 setTitle:v79];

    v80 = objc_opt_new();
    [v76 setCollectionStyle:v80];

    [v76 setCardSections:v3];
    v107 = v74;
    [v76 setButtonItem:v74];
    v81 = objc_opt_new();
    v125 = v76;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
    [v81 setCardSections:v82];

    buildResult = [(SPUISContactResultBuilder *)v71 buildResult];
    [buildResult setContactIdentifier:identifier];
    personIdentifier = [(SPUISContactResultBuilder *)v71 personIdentifier];
    [buildResult setPersonIdentifier:personIdentifier];

    [buildResult setInlineCard:v81];
    [buildResult setCompactCard:v81];
    objc = v68;
    v97 = v70;
    v99 = identifier;
    if (identifier)
    {
      v84 = identifier;
    }

    else
    {
      v84 = [(SPUISContactResultBuilder *)v71 personIdentifier:v70];
    }

    v85 = v84;
    if (v84)
    {
      v86 = v84;
    }

    else
    {
      v86 = @"unknown";
    }

    v87 = [@"com.apple.spotlight.contactInfo" stringByAppendingString:{v86, v97}];
    [buildResult setIdentifier:v87];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v88 = v3;
    v89 = [v88 countByEnumeratingWithState:&v108 objects:v124 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v109;
      do
      {
        for (m = 0; m != v90; ++m)
        {
          if (*v109 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = *(*(&v108 + 1) + 8 * m);
          identifier2 = [buildResult identifier];
          [v93 setResultIdentifier:identifier2];
        }

        v90 = [v88 countByEnumeratingWithState:&v108 objects:v124 count:16];
      }

      while (v90);
    }

    contact = v100;
    v3 = v101;
  }

  else
  {
    buildResult = 0;
  }

  v95 = *MEMORY[0x277D85DE8];

  return buildResult;
}

uint64_t __55__SPUISContactResultBuilder_buildFooterResultForEntity__block_invoke()
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

  return MEMORY[0x2821F96F8]();
}

- (id)buildSocialMediaResultForEntity
{
  v61 = *MEMORY[0x277D85DE8];
  if (buildSocialMediaResultForEntity_onceToken != -1)
  {
    [SPUISContactResultBuilder buildSocialMediaResultForEntity];
  }

  v51 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  selfCopy = self;
  contact = [(SPUISContactResultBuilder *)self contact];
  socialProfiles = [contact socialProfiles];

  obj = socialProfiles;
  v52 = [socialProfiles countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v52)
  {
    v50 = *v56;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v56 != v50)
        {
          objc_enumerationMutation(obj);
        }

        value = [*(*(&v55 + 1) + 8 * i) value];
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

        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v14 = [defaultWorkspace applicationIsInstalled:firstObject2];

        v15 = objc_opt_new();
        if (v14)
        {
          [v15 setBundleIdentifier:firstObject2];
        }

        else
        {
          [v15 setSymbolName:@"safari"];
          [v15 setPunchThroughBackground:1];
          [v15 setSize:{45.0, 45.0}];
        }

        v54 = firstObject2;
        v53 = urlString;
        if ([urlString length])
        {
          v16 = MEMORY[0x277D4C550];
          v17 = [MEMORY[0x277CBEBC0] URLWithString:urlString];
          v18 = [v16 punchoutWithURL:v17];
        }

        else
        {
          v18 = 0;
        }

        v19 = objc_opt_new();
        [v19 setPunchout:v18];
        v20 = objc_opt_new();
        v21 = MEMORY[0x277D4C598];
        v22 = [MEMORY[0x277CBDBB0] localizedStringForService:service];
        v23 = [v21 textWithString:v22];
        [v20 setTitle:v23];

        title = [v20 title];
        [title setMaxLines:1];

        v25 = MEMORY[0x277D4C598];
        username = [value username];
        v27 = [v25 textWithString:username];
        [v20 setSubtitle:v27];

        subtitle = [v20 subtitle];
        [subtitle setMaxLines:1];

        [v20 setImage:v15];
        [v20 setCardSectionId:@"com.apple.MobileAddressBook.SocialMedia"];
        [v20 setCommand:v19];
        [v51 addObject:v20];
      }

      v52 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v52);
  }

  if ([v51 count])
  {
    v29 = objc_opt_new();
    [v29 setNumberOfRows:1];
    v30 = objc_opt_new();
    v31 = MEMORY[0x277D4C598];
    v32 = [SPUISUtilities localizedStringForKey:@"SOCIAL_MEDIA_SECTION_TITLE"];
    v33 = [v31 textWithString:v32];
    [v30 setTitle:v33];

    [v30 setCollectionStyle:v29];
    [v30 setCardSections:v51];
    v34 = objc_opt_new();
    v59 = v30;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    [v34 setCardSections:v35];

    buildResult = [(SPUISContactResultBuilder *)selfCopy buildResult];
    [buildResult setResultBundleId:@"com.apple.MobileAddressBook.SocialMedia"];
    [buildResult setApplicationBundleIdentifier:@"com.apple.MobileAddressBook.SocialMedia"];
    realContactIdentifier = [(SPUISContactResultBuilder *)selfCopy realContactIdentifier];
    [buildResult setContactIdentifier:realContactIdentifier];

    personIdentifier = [(SPUISContactResultBuilder *)selfCopy personIdentifier];
    [buildResult setPersonIdentifier:personIdentifier];

    [buildResult setInlineCard:v34];
    [buildResult setCompactCard:0];
    realContactIdentifier2 = [(SPUISContactResultBuilder *)selfCopy realContactIdentifier];
    v40 = realContactIdentifier2;
    if (realContactIdentifier2)
    {
      personIdentifier2 = realContactIdentifier2;
    }

    else
    {
      personIdentifier2 = [(SPUISContactResultBuilder *)selfCopy personIdentifier];
    }

    v42 = personIdentifier2;

    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = @"unknown";
    }

    v44 = [@"com.apple.MobileAddressBook.SocialMedia" stringByAppendingString:v43];
    [buildResult setIdentifier:v44];

    identifier = [buildResult identifier];
    [v30 setResultIdentifier:identifier];
  }

  else
  {
    buildResult = 0;
  }

  v46 = *MEMORY[0x277D85DE8];

  return buildResult;
}

void __60__SPUISContactResultBuilder_buildSocialMediaResultForEntity__block_invoke()
{
  v9[8] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBD9A0];
  v8[0] = *MEMORY[0x277CBD998];
  v8[1] = v0;
  v9[0] = @"com.facebook.Facebook";
  v9[1] = @"com.yahoo.flickr";
  v1 = *MEMORY[0x277CBD9C0];
  v8[2] = *MEMORY[0x277CBD9B8];
  v8[3] = v1;
  v9[2] = @"com.linkedin.LinkedIn";
  v9[3] = &stru_287C50EE8;
  v2 = *MEMORY[0x277CBD9D0];
  v8[4] = *MEMORY[0x277CBD9C8];
  v8[5] = v2;
  v9[4] = @"com.sina.weibo";
  v9[5] = @"com.sina.weibo";
  v8[6] = *MEMORY[0x277CBD9D8];
  v3 = +[SPUISUtilities isMacOS];
  v4 = @"com.atebits.Tweetie2";
  if (v3)
  {
    v4 = @"maccatalyst.com.atebits.Tweetie2";
  }

  v8[7] = *MEMORY[0x277CBD9E0];
  v9[6] = v4;
  v9[7] = @"com.yelp.yelpiphone";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:8];
  v6 = buildSocialMediaResultForEntity_bundleIDForDefaultServices;
  buildSocialMediaResultForEntity_bundleIDForDefaultServices = v5;

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildPreviewCommand
{
  v3 = objc_opt_new();
  realContactIdentifier = [(SPUISContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:realContactIdentifier];

  return v3;
}

- (id)highlightedMatchedText
{
  buildTitle = [(SPUISContactResultBuilder *)self buildTitle];
  text = [buildTitle text];
  v5 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:text headTruncation:1];

  [v5 setMaxLines:1];

  return v5;
}

- (id)buildDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!+[SPUISUtilities isMacOS]|| ([(SPUISContactResultBuilder *)self highlightedMatchedText], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ((isIpad() & 1) != 0 || +[SPUISUtilities isMacOS])
    {
      contact = [(SPUISContactResultBuilder *)self contact];
      organizationName = [contact organizationName];

      if ([organizationName length] && (-[SPUISContactResultBuilder displayName](self, "displayName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(organizationName, "isEqualToString:", v7), v7, !v8))
      {
        v4 = [MEMORY[0x277D4C598] textWithString:organizationName];
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
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];

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
    fullName = [(SPUISContactResultBuilder *)self fullName];
    [buildCommand setTokenString:fullName];

    realContactIdentifier = [(SPUISContactResultBuilder *)self realContactIdentifier];
    personQueryIdentifier = [(SPUISContactResultBuilder *)self personQueryIdentifier];
    if (personQueryIdentifier)
    {
      [buildCommand setEntityIdentifier:personQueryIdentifier];
    }

    else
    {
      result = [(SPUISResultBuilder *)self result];
      personQueryIdentifier2 = [result personQueryIdentifier];
      if (personQueryIdentifier2)
      {
        [buildCommand setEntityIdentifier:personQueryIdentifier2];
      }

      else
      {
        v10 = [MEMORY[0x277D65888] updatePersonQueryIdentifier:&stru_287C50EE8 withContactIdentifier:realContactIdentifier];
        [buildCommand setEntityIdentifier:v10];
      }
    }

    [buildCommand setEntityType:2];
    [buildCommand setSymbolImage:v4];
    [buildCommand setTokenImage:v4];
    buildBackgroundColor = [(SPUISContactResultBuilder *)self buildBackgroundColor];
    [buildCommand setEntityBackgroundColor:buildBackgroundColor];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SPUISContactResultBuilder;
    buildCommand = [(SPUISResultBuilder *)&v13 buildCommand];
  }

  return buildCommand;
}

- (id)buildFillToolParameterCommand
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  realContactIdentifier = [(SPUISContactResultBuilder *)self realContactIdentifier];
  [v4 setContactIdentifier:realContactIdentifier];

  personIdentifier = [(SPUISContactResultBuilder *)self personIdentifier];
  [v4 setPersonIdentifier:personIdentifier];

  fullName = [(SPUISContactResultBuilder *)self fullName];
  [v4 setDisplayName:fullName];

  [v3 setPerson:v4];

  return v3;
}

- (id)buildTitle
{
  displayName = [(SPUISContactResultBuilder *)self displayName];
  if (![displayName length])
  {
    fullName = [(SPUISContactResultBuilder *)self fullName];

    if ([fullName length])
    {
      displayName = fullName;
    }

    else
    {
      contact = [(SPUISContactResultBuilder *)self contact];
      phoneNumbers = [contact phoneNumbers];
      firstObject = [phoneNumbers firstObject];
      value = [firstObject value];
      displayName = [value stringValue];

      if (![displayName length])
      {
        contact2 = [(SPUISContactResultBuilder *)self contact];
        emailAddresses = [contact2 emailAddresses];
        firstObject2 = [emailAddresses firstObject];
        value2 = [firstObject2 value];

        if ([value2 length])
        {
          displayName = value2;
        }

        else
        {
          displayName = [SPUISUtilities localizedStringForKey:@"NO_NAME"];
        }
      }
    }
  }

  v13 = [MEMORY[0x277D4C598] textWithString:displayName];
  [v13 setMaxLines:2];

  return v13;
}

- (id)buildAction
{
  v3 = objc_opt_new();
  realContactIdentifier = [(SPUISContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:realContactIdentifier];

  return v3;
}

- (id)buildThumbnail
{
  v10[1] = *MEMORY[0x277D85DE8];
  realContactIdentifier = [(SPUISContactResultBuilder *)self realContactIdentifier];
  v4 = objc_opt_new();
  if (realContactIdentifier)
  {
    [v4 setThreeDTouchEnabled:1];
    v10[0] = realContactIdentifier;
    contact = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v4 setContactIdentifiers:contact];
  }

  else
  {
    [v4 setMonogramStyle:0];
    v6 = MEMORY[0x277CBDA78];
    contact = [(SPUISContactResultBuilder *)self contact];
    v7 = [v6 stringFromContact:contact style:1002];
    [v4 setMonogramLetters:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)buildBackgroundColor
{
  v3 = objc_opt_new();
  buildThumbnail = [(SPUISContactResultBuilder *)self buildThumbnail];
  [v3 setImage:buildThumbnail];

  return v3;
}

- (id)buildPreviewButtonItems
{
  v9[1] = *MEMORY[0x277D85DE8];
  realContactIdentifier = [(SPUISContactResultBuilder *)self realContactIdentifier];
  if (realContactIdentifier)
  {
    v4 = objc_opt_new();
    [v4 setContactIdentifier:realContactIdentifier];
    v9[0] = v4;
    buildPreviewButtonItems = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISContactResultBuilder;
    buildPreviewButtonItems = [(SPUISResultBuilder *)&v8 buildPreviewButtonItems];
  }

  v6 = *MEMORY[0x277D85DE8];

  return buildPreviewButtonItems;
}

@end