@interface SPUISContactResultBuilder
+ (BOOL)doesNotContainObject:(id)a3 inArray:(id)a4;
+ (BOOL)supportsResult:(id)a3;
+ (id)contactIdentifierFromResult:(id)a3 contactEntity:(id)a4;
+ (id)contactIdentifiersFromResults:(id)a3;
+ (id)labeledValuesFromStrings:(id)a3 labeledValues:(id)a4 withStringForLabeledValueBlock:(id)a5 labeledValueForStringBlock:(id)a6;
- (NSString)fullName;
- (SPUISContactResultBuilder)initWithResult:(id)a3 contactEntity:(id)a4 contact:(id)a5;
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

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  if (supportsResult__onceToken != -1)
  {
    +[SPUISContactResultBuilder supportsResult:];
  }

  v5 = [v4 applicationBundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.contactsd"];

  if ((isMacOS() & 1) == 0)
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___SPUISContactResultBuilder;
    if (objc_msgSendSuper2(&v12, sel_supportsResult_, v4))
    {
      v6 = 1;
    }

    else
    {
      v7 = supportsResult__contactResultBundleIds;
      v8 = [v4 resultBundleId];
      v6 = [v7 containsObject:v8];
    }
  }

  v9 = [v4 valueForAttribute:*MEMORY[0x277CC2CF0] withType:objc_opt_class()];
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

+ (id)contactIdentifiersFromResults:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        if ([(objc_class *)[SPUISResultBuilder isSubclassOfClass:v11 resultBuilderClassForResult:v15 preferAppVendedView:?], "isSubclassOfClass:", a1])
        {
          v12 = [a1 contactIdentifierFromResult:v11 contactEntity:0];
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

+ (id)contactIdentifierFromResult:(id)a3 contactEntity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 applicationBundleIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.contactsd"];

  v9 = [v5 contactIdentifier];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v5 valueForAttribute:*MEMORY[0x277CC25F0] withType:objc_opt_class()];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v6 contactIdentifier];
    }

    v11 = v14;
  }

  if (v8)
  {
    v15 = [v5 valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];

    v11 = v15;
  }

  return v11;
}

+ (BOOL)doesNotContainObject:(id)a3 inArray:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v5 isEqual:{v11, v15}] & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 isLikePhoneNumber:v11] & 1) == 0)
          {
            continue;
          }
        }

        v12 = 0;
        goto LABEL_14;
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)labeledValuesFromStrings:(id)a3 labeledValues:(id)a4 withStringForLabeledValueBlock:(id)a5 labeledValueForStringBlock:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v32 = objc_opt_new();
  v11 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v9;
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
        v18 = [v16 value];
        LODWORD(v17) = [v17 doesNotContainObject:v18 inArray:v11];

        if (v17)
        {
          [v32 addObject:v16];
          v19 = [v16 value];
          [v11 addObject:v19];
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
  v30 = v8;
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

        v24 = v10[2](v10, *(*(&v33 + 1) + 8 * j));
        v25 = objc_opt_class();
        v26 = [v24 value];
        LODWORD(v25) = [v25 doesNotContainObject:v26 inArray:v11];

        if (v25)
        {
          [v32 addObject:v24];
          v27 = [v24 value];
          [v11 addObject:v27];
        }
      }

      v21 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v21);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

- (SPUISContactResultBuilder)initWithResult:(id)a3 contactEntity:(id)a4 contact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v63.receiver = self;
  v63.super_class = SPUISContactResultBuilder;
  v11 = [(SPUISResultBuilder *)&v63 initWithResult:v8];
  if (!v11)
  {
    goto LABEL_55;
  }

  v12 = [v8 personIdentifier];
  if (v12)
  {
    [(SPUISContactResultBuilder *)v11 setPersonIdentifier:v12];
  }

  else
  {
    v13 = [v9 personIdentifier];
    [(SPUISContactResultBuilder *)v11 setPersonIdentifier:v13];
  }

  v14 = [v8 personQueryIdentifier];
  if (v14)
  {
    [(SPUISContactResultBuilder *)v11 setPersonQueryIdentifier:v14];
  }

  else
  {
    v15 = [v9 personQueryIdentifier];
    [(SPUISContactResultBuilder *)v11 setPersonQueryIdentifier:v15];
  }

  v16 = [v8 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
  if (v16)
  {
    [(SPUISContactResultBuilder *)v11 setDisplayName:v16];
  }

  else
  {
    v17 = [v9 name];
    [(SPUISContactResultBuilder *)v11 setDisplayName:v17];
  }

  if (v8)
  {
    -[SPUISContactResultBuilder setResultType:](v11, "setResultType:", [v8 type]);
  }

  else
  {
    v18 = [(SPUISContactResultBuilder *)v11 personIdentifier];
    if (v18)
    {
      v19 = 37;
    }

    else
    {
      v19 = 36;
    }

    [(SPUISContactResultBuilder *)v11 setResultType:v19];
  }

  v20 = [objc_opt_class() contactIdentifierFromResult:v8 contactEntity:v9];
  [(SPUISContactResultBuilder *)v11 setRealContactIdentifier:v20];
  v62 = v20;
  if (v9)
  {
    v21 = v9;
    goto LABEL_26;
  }

  v21 = objc_opt_new();
  if (v21)
  {
LABEL_26:
    v32 = [v10 mutableCopy];
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

  v22 = [(SPUISContactResultBuilder *)v11 personQueryIdentifier];

  if (v22)
  {
    v23 = [(SPUISContactResultBuilder *)v11 personQueryIdentifier];
    if (v20)
    {
      v24 = [MEMORY[0x277D65888] updatePersonQueryIdentifier:v23 withContactIdentifier:v20];

      v23 = v24;
    }

    v25 = [(SPUISContactResultBuilder *)v11 personIdentifier];

    if (v25)
    {
      v26 = MEMORY[0x277D65888];
      v27 = [(SPUISContactResultBuilder *)v11 personIdentifier];
      v28 = [v26 updatePersonQueryIdentifier:v23 withContactIdentifier:v27];

      v23 = v28;
    }

    v29 = MEMORY[0x277D65890];
    v30 = [(SPUISResultBuilder *)v11 result];
    v31 = [v30 completion];
    v21 = [v29 searchEntityWithPersonQueryIdentifier:v23 personName:v31 fromSuggestion:1];

    v20 = v62;
    goto LABEL_26;
  }

  if (!v20)
  {
    v32 = [v10 mutableCopy];
    v21 = 0;
    goto LABEL_35;
  }

  v21 = [MEMORY[0x277D65890] searchEntityWithContactIdentifier:v20 fromSuggestion:0];
  v32 = [v10 mutableCopy];
LABEL_27:
  v33 = [v10 identifier];
  v34 = [v20 isEqual:v33];

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
      v38 = [v21 contact];
      v32 = [v38 mutableCopy];

      if (!v32)
      {
        v32 = objc_opt_new();
      }
    }
  }

LABEL_38:
  if (v35)
  {
    v39 = [(SPUISContactResultBuilder *)v11 displayName];
    v40 = [SPUISNameFormatManager contactFromName:v39];
    v41 = [v40 mutableCopy];

    v32 = v41;
  }

  v42 = [v21 emailAddresses];
  v60 = v10;
  if ([v42 count])
  {
    [v21 emailAddresses];
  }

  else
  {
    [v8 valueForAttribute:*MEMORY[0x277CC2788] withType:objc_opt_class()];
  }
  v43 = ;

  v44 = objc_opt_class();
  v45 = [v32 emailAddresses];
  v46 = [v44 labeledValuesFromStrings:v43 labeledValues:v45 withStringForLabeledValueBlock:&__block_literal_global_528 labeledValueForStringBlock:&__block_literal_global_531];
  [v32 setEmailAddresses:v46];

  v47 = [v21 rawPhoneNumbers];
  if ([v47 count])
  {
    [v21 rawPhoneNumbers];
  }

  else
  {
    [v8 valueForAttribute:*MEMORY[0x277CC2EB8] withType:objc_opt_class()];
  }
  v48 = ;

  v49 = objc_opt_class();
  v50 = [v32 phoneNumbers];
  v51 = [v49 labeledValuesFromStrings:v48 labeledValues:v50 withStringForLabeledValueBlock:&__block_literal_global_534 labeledValueForStringBlock:&__block_literal_global_536];
  [v32 setPhoneNumbers:v51];

  v52 = [v21 addresses];
  if ([v52 count])
  {
    [v21 addresses];
  }

  else
  {
    [v8 valueForAttribute:*MEMORY[0x277CC24B0] withType:objc_opt_class()];
  }
  v53 = ;

  v54 = [v32 postalAddresses];
  v55 = [v54 count];

  if (!v55)
  {
    v56 = [objc_opt_class() labeledValuesFromStrings:v53 labeledValues:0 withStringForLabeledValueBlock:&__block_literal_global_538 labeledValueForStringBlock:&__block_literal_global_541];
    [v32 setPostalAddresses:v56];
  }

  v57 = [v32 birthday];
  if (v57)
  {
    [v32 setBirthday:v57];
  }

  else
  {
    v58 = [v21 birthdayComponents];
    [v32 setBirthday:v58];
  }

  [(SPUISContactResultBuilder *)v11 setContact:v32];
  v10 = v61;
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
  v3 = [(SPUISContactResultBuilder *)self contact];
  v4 = [v2 stringFromContact:v3 style:0];

  return v4;
}

- (id)buildResult
{
  v12.receiver = self;
  v12.super_class = SPUISContactResultBuilder;
  v3 = [(SPUISResultBuilder *)&v12 buildResult];
  v4 = [(SPUISContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:v4];

  v5 = [(SPUISContactResultBuilder *)self personIdentifier];
  [v3 setPersonIdentifier:v5];

  v6 = [(SPUISContactResultBuilder *)self personQueryIdentifier];
  [v3 setPersonQueryIdentifier:v6];

  [v3 setResultBundleId:@"com.apple.MobileAddressBook"];
  v7 = [(SPUISResultBuilder *)self result];
  v8 = [v7 applicationBundleIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"com.apple.MobileAddressBook";
  }

  [v3 setApplicationBundleIdentifier:v10];

  [v3 setType:{-[SPUISContactResultBuilder resultType](self, "resultType")}];

  return v3;
}

- (id)buildHeaderResultForEntity
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISContactResultBuilder *)self realContactIdentifier];
  v4 = objc_opt_new();
  [v4 setContactIdentifier:v3];
  v5 = [(SPUISContactResultBuilder *)self personIdentifier];
  [v4 setPersonIdentifier:v5];

  v6 = [(SPUISContactResultBuilder *)self fullName];
  [v4 setDisplayName:v6];

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

  v13 = [(SPUISContactResultBuilder *)self buildResult];
  [v13 setResultBundleId:@"com.apple.MobileAddressBook"];
  [v13 setApplicationBundleIdentifier:0];
  [v13 setContactIdentifier:v3];
  v14 = [(SPUISContactResultBuilder *)self personIdentifier];
  [v13 setPersonIdentifier:v14];

  [v13 setInlineCard:v11];
  [v13 setCompactCard:0];
  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = [(SPUISContactResultBuilder *)self personIdentifier];
  }

  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"unknown";
  }

  v18 = [@"com.apple.spotlight.contactHeader" stringByAppendingString:v17];
  [v13 setIdentifier:v18];

  [v13 setNoGoTakeover:1];
  v19 = [v13 identifier];
  [v7 setResultIdentifier:v19];

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)buildFooterResultForEntity
{
  v134 = *MEMORY[0x277D85DE8];
  if (buildFooterResultForEntity_onceToken != -1)
  {
    [SPUISContactResultBuilder buildFooterResultForEntity];
  }

  v3 = objc_opt_new();
  v106 = self;
  v4 = [(SPUISContactResultBuilder *)self contact];
  v5 = [v4 phoneNumbers];
  v6 = [v5 count];

  v100 = v4;
  v101 = v3;
  if (v6)
  {
    v7 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = [v4 phoneNumbers];
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
          v15 = [v12 label];
          v16 = [v14 localizedStringForLabel:v15];

          if ([v16 length])
          {
            [v13 setKey:v16];
          }

          else
          {
            v17 = [SPUISUtilities localizedStringForKey:@"PHONE_LABEL"];
            [v13 setKey:v17];
          }

          v18 = [v12 value];
          v19 = [v18 formattedStringValue];

          v20 = [(SPUISContactResultBuilder *)v106 contact];
          v21 = [SPUISCommandConfiguration commandButtonItemForPhoneNumber:v19 contact:v20];
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

    v4 = v100;
  }

  v24 = [v4 emailAddresses];
  v25 = [v24 count];

  if (v25)
  {
    v26 = objc_opt_new();
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    obja = [v4 emailAddresses];
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
          v34 = [v31 label];
          v35 = [v33 localizedStringForLabel:v34];

          if ([v35 length])
          {
            [v32 setKey:v35];
          }

          else
          {
            v36 = [SPUISUtilities localizedStringForKey:@"EMAIL_LABEL"];
            [v32 setKey:v36];
          }

          v37 = [v31 value];
          v38 = [SPUISCommandConfiguration commandButtonItemForEmail:v37];
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

    v4 = v100;
  }

  v41 = [v4 postalAddresses];
  v42 = [v41 count];

  if (v42)
  {
    v43 = objc_opt_new();
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    objb = [v4 postalAddresses];
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
          v51 = [v48 label];
          v52 = [v50 localizedStringForLabel:v51];

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
          v55 = [v48 value];
          v56 = [v54 stringFromPostalAddress:v55 style:0];

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

    v4 = v100;
  }

  v60 = [v4 birthday];

  if (v60)
  {
    v61 = objc_opt_new();
    v62 = [SPUISUtilities localizedStringForKey:@"BIRTHDAY_LABEL"];
    [v61 setKey:v62];

    v63 = [v4 birthday];
    v64 = [SPUISCommandConfiguration commandButtonItemForBirthday:v63];
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
    v69 = [v4 identifier];
    v70 = objc_opt_new();
    [v70 setCoreSpotlightIdentifier:v69];
    if (+[SPUISUtilities isMacOS])
    {
      [v70 setApplicationBundleIdentifier:@"com.apple.MobileAddressBook"];
      v71 = v106;
    }

    else
    {
      v71 = v106;
      v73 = [objc_opt_class() bundleId];
      [v70 setApplicationBundleIdentifier:v73];
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

    v72 = [(SPUISContactResultBuilder *)v71 buildResult];
    [v72 setContactIdentifier:v69];
    v83 = [(SPUISContactResultBuilder *)v71 personIdentifier];
    [v72 setPersonIdentifier:v83];

    [v72 setInlineCard:v81];
    [v72 setCompactCard:v81];
    objc = v68;
    v97 = v70;
    v99 = v69;
    if (v69)
    {
      v84 = v69;
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
    [v72 setIdentifier:v87];

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
          v94 = [v72 identifier];
          [v93 setResultIdentifier:v94];
        }

        v90 = [v88 countByEnumeratingWithState:&v108 objects:v124 count:16];
      }

      while (v90);
    }

    v4 = v100;
    v3 = v101;
  }

  else
  {
    v72 = 0;
  }

  v95 = *MEMORY[0x277D85DE8];

  return v72;
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
  v48 = self;
  v3 = [(SPUISContactResultBuilder *)self contact];
  v4 = [v3 socialProfiles];

  obj = v4;
  v52 = [v4 countByEnumeratingWithState:&v55 objects:v60 count:16];
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

        v6 = [*(*(&v55 + 1) + 8 * i) value];
        v7 = [v6 service];
        v8 = [v6 urlString];
        v9 = [v6 bundleIdentifiers];
        v10 = [v9 firstObject];
        if ([v10 length])
        {
          v11 = [v6 bundleIdentifiers];
          v12 = [v11 firstObject];
        }

        else
        {
          v12 = [buildSocialMediaResultForEntity_bundleIDForDefaultServices objectForKeyedSubscript:v7];
        }

        v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v14 = [v13 applicationIsInstalled:v12];

        v15 = objc_opt_new();
        if (v14)
        {
          [v15 setBundleIdentifier:v12];
        }

        else
        {
          [v15 setSymbolName:@"safari"];
          [v15 setPunchThroughBackground:1];
          [v15 setSize:{45.0, 45.0}];
        }

        v54 = v12;
        v53 = v8;
        if ([v8 length])
        {
          v16 = MEMORY[0x277D4C550];
          v17 = [MEMORY[0x277CBEBC0] URLWithString:v8];
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
        v22 = [MEMORY[0x277CBDBB0] localizedStringForService:v7];
        v23 = [v21 textWithString:v22];
        [v20 setTitle:v23];

        v24 = [v20 title];
        [v24 setMaxLines:1];

        v25 = MEMORY[0x277D4C598];
        v26 = [v6 username];
        v27 = [v25 textWithString:v26];
        [v20 setSubtitle:v27];

        v28 = [v20 subtitle];
        [v28 setMaxLines:1];

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

    v36 = [(SPUISContactResultBuilder *)v48 buildResult];
    [v36 setResultBundleId:@"com.apple.MobileAddressBook.SocialMedia"];
    [v36 setApplicationBundleIdentifier:@"com.apple.MobileAddressBook.SocialMedia"];
    v37 = [(SPUISContactResultBuilder *)v48 realContactIdentifier];
    [v36 setContactIdentifier:v37];

    v38 = [(SPUISContactResultBuilder *)v48 personIdentifier];
    [v36 setPersonIdentifier:v38];

    [v36 setInlineCard:v34];
    [v36 setCompactCard:0];
    v39 = [(SPUISContactResultBuilder *)v48 realContactIdentifier];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = [(SPUISContactResultBuilder *)v48 personIdentifier];
    }

    v42 = v41;

    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = @"unknown";
    }

    v44 = [@"com.apple.MobileAddressBook.SocialMedia" stringByAppendingString:v43];
    [v36 setIdentifier:v44];

    v45 = [v36 identifier];
    [v30 setResultIdentifier:v45];
  }

  else
  {
    v36 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v36;
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
  v4 = [(SPUISContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:v4];

  return v3;
}

- (id)highlightedMatchedText
{
  v3 = [(SPUISContactResultBuilder *)self buildTitle];
  v4 = [v3 text];
  v5 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:v4 headTruncation:1];

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
      v5 = [(SPUISContactResultBuilder *)self contact];
      v6 = [v5 organizationName];

      if ([v6 length] && (-[SPUISContactResultBuilder displayName](self, "displayName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, !v8))
      {
        v4 = [MEMORY[0x277D4C598] textWithString:v6];
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
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    [v4 setSymbolName:@"person.crop.circle"];
    [v4 setIsTemplate:1];
    v5 = [(SPUISContactResultBuilder *)self fullName];
    [v3 setTokenString:v5];

    v6 = [(SPUISContactResultBuilder *)self realContactIdentifier];
    v7 = [(SPUISContactResultBuilder *)self personQueryIdentifier];
    if (v7)
    {
      [v3 setEntityIdentifier:v7];
    }

    else
    {
      v8 = [(SPUISResultBuilder *)self result];
      v9 = [v8 personQueryIdentifier];
      if (v9)
      {
        [v3 setEntityIdentifier:v9];
      }

      else
      {
        v10 = [MEMORY[0x277D65888] updatePersonQueryIdentifier:&stru_287C50EE8 withContactIdentifier:v6];
        [v3 setEntityIdentifier:v10];
      }
    }

    [v3 setEntityType:2];
    [v3 setSymbolImage:v4];
    [v3 setTokenImage:v4];
    v11 = [(SPUISContactResultBuilder *)self buildBackgroundColor];
    [v3 setEntityBackgroundColor:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SPUISContactResultBuilder;
    v3 = [(SPUISResultBuilder *)&v13 buildCommand];
  }

  return v3;
}

- (id)buildFillToolParameterCommand
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SPUISContactResultBuilder *)self realContactIdentifier];
  [v4 setContactIdentifier:v5];

  v6 = [(SPUISContactResultBuilder *)self personIdentifier];
  [v4 setPersonIdentifier:v6];

  v7 = [(SPUISContactResultBuilder *)self fullName];
  [v4 setDisplayName:v7];

  [v3 setPerson:v4];

  return v3;
}

- (id)buildTitle
{
  v3 = [(SPUISContactResultBuilder *)self displayName];
  if (![v3 length])
  {
    v4 = [(SPUISContactResultBuilder *)self fullName];

    if ([v4 length])
    {
      v3 = v4;
    }

    else
    {
      v5 = [(SPUISContactResultBuilder *)self contact];
      v6 = [v5 phoneNumbers];
      v7 = [v6 firstObject];
      v8 = [v7 value];
      v3 = [v8 stringValue];

      if (![v3 length])
      {
        v9 = [(SPUISContactResultBuilder *)self contact];
        v10 = [v9 emailAddresses];
        v11 = [v10 firstObject];
        v12 = [v11 value];

        if ([v12 length])
        {
          v3 = v12;
        }

        else
        {
          v3 = [SPUISUtilities localizedStringForKey:@"NO_NAME"];
        }
      }
    }
  }

  v13 = [MEMORY[0x277D4C598] textWithString:v3];
  [v13 setMaxLines:2];

  return v13;
}

- (id)buildAction
{
  v3 = objc_opt_new();
  v4 = [(SPUISContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:v4];

  return v3;
}

- (id)buildThumbnail
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISContactResultBuilder *)self realContactIdentifier];
  v4 = objc_opt_new();
  if (v3)
  {
    [v4 setThreeDTouchEnabled:1];
    v10[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v4 setContactIdentifiers:v5];
  }

  else
  {
    [v4 setMonogramStyle:0];
    v6 = MEMORY[0x277CBDA78];
    v5 = [(SPUISContactResultBuilder *)self contact];
    v7 = [v6 stringFromContact:v5 style:1002];
    [v4 setMonogramLetters:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)buildBackgroundColor
{
  v3 = objc_opt_new();
  v4 = [(SPUISContactResultBuilder *)self buildThumbnail];
  [v3 setImage:v4];

  return v3;
}

- (id)buildPreviewButtonItems
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISContactResultBuilder *)self realContactIdentifier];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setContactIdentifier:v3];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISContactResultBuilder;
    v5 = [(SPUISResultBuilder *)&v8 buildPreviewButtonItems];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end