@interface SSContactResultBuilder
+ (BOOL)doesNotContainObject:(id)a3 inArray:(id)a4;
+ (BOOL)supportsResult:(id)a3;
+ (id)contactIdentifierFromResult:(id)a3 contactEntity:(id)a4;
+ (id)contactIdentifiersFromResults:(id)a3;
+ (id)labeledValuesFromStrings:(id)a3 labeledValues:(id)a4 withStringForLabeledValueBlock:(id)a5 labeledValueForStringBlock:(id)a6;
- (NSString)fullName;
- (SSContactResultBuilder)initWithResult:(id)a3 contactEntity:(id)a4 contact:(id)a5;
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

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  if (supportsResult__onceToken != -1)
  {
    +[SSContactResultBuilder supportsResult:];
  }

  v5 = [v4 applicationBundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.contactsd"];

  if ((isMacOS() & 1) == 0)
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___SSContactResultBuilder;
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

  v9 = [v4 valueForAttribute:*MEMORY[0x1E6964528] withType:objc_opt_class()];
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

+ (id)contactIdentifiersFromResults:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
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
        if ([(objc_class *)[SSResultBuilder isSubclassOfClass:v11 resultBuilderClassForResult:v15 preferAppVendedView:?], "isSubclassOfClass:", a1])
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

  v13 = *MEMORY[0x1E69E9840];

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
    v12 = [v5 valueForAttribute:*MEMORY[0x1E6963E40] withType:objc_opt_class()];
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
    v15 = [v5 valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];

    v11 = v15;
  }

  return v11;
}

+ (BOOL)doesNotContainObject:(id)a3 inArray:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
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

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)labeledValuesFromStrings:(id)a3 labeledValues:(id)a4 withStringForLabeledValueBlock:(id)a5 labeledValueForStringBlock:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
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

  v28 = *MEMORY[0x1E69E9840];

  return v32;
}

- (SSContactResultBuilder)initWithResult:(id)a3 contactEntity:(id)a4 contact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v61.receiver = self;
  v61.super_class = SSContactResultBuilder;
  v11 = [(SSResultBuilder *)&v61 initWithResult:v8];
  if (!v11)
  {
    goto LABEL_55;
  }

  v12 = [v8 personIdentifier];
  if (v12)
  {
    [(SSContactResultBuilder *)v11 setPersonIdentifier:v12];
  }

  else
  {
    v13 = [v9 personIdentifier];
    [(SSContactResultBuilder *)v11 setPersonIdentifier:v13];
  }

  v14 = [v8 personQueryIdentifier];
  if (v14)
  {
    [(SSContactResultBuilder *)v11 setPersonQueryIdentifier:v14];
  }

  else
  {
    v15 = [v9 personQueryIdentifier];
    [(SSContactResultBuilder *)v11 setPersonQueryIdentifier:v15];
  }

  v16 = [v8 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
  if (v16)
  {
    [(SSContactResultBuilder *)v11 setDisplayName:v16];
  }

  else
  {
    v17 = [v9 name];
    [(SSContactResultBuilder *)v11 setDisplayName:v17];
  }

  if (v8)
  {
    -[SSContactResultBuilder setResultType:](v11, "setResultType:", [v8 type]);
  }

  else
  {
    v18 = [(SSContactResultBuilder *)v11 personIdentifier];
    if (v18)
    {
      v19 = 37;
    }

    else
    {
      v19 = 36;
    }

    [(SSContactResultBuilder *)v11 setResultType:v19];
  }

  v20 = [objc_opt_class() contactIdentifierFromResult:v8 contactEntity:v9];
  [(SSContactResultBuilder *)v11 setRealContactIdentifier:v20];
  v60 = v20;
  if (v9)
  {
    v21 = v9;
    goto LABEL_26;
  }

  v21 = objc_opt_new();
  if (v21)
  {
LABEL_26:
    v30 = [v10 mutableCopy];
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

  v22 = [(SSContactResultBuilder *)v11 personQueryIdentifier];

  if (v22)
  {
    v23 = [(SSContactResultBuilder *)v11 personQueryIdentifier];
    if (v20)
    {
      v24 = [SPSearchContactEntity updatePersonQueryIdentifier:v23 withContactIdentifier:v20];

      v23 = v24;
    }

    v25 = [(SSContactResultBuilder *)v11 personIdentifier];

    if (v25)
    {
      v26 = [(SSContactResultBuilder *)v11 personIdentifier];
      v27 = [SPSearchContactEntity updatePersonQueryIdentifier:v23 withContactIdentifier:v26];

      v23 = v27;
    }

    v28 = [(SSResultBuilder *)v11 result];
    v29 = [v28 completion];
    v21 = [SPSearchEntity searchEntityWithPersonQueryIdentifier:v23 personName:v29 fromSuggestion:1];

    v20 = v60;
    goto LABEL_26;
  }

  if (!v20)
  {
    v30 = [v10 mutableCopy];
    v21 = 0;
    goto LABEL_35;
  }

  v21 = [SPSearchEntity searchEntityWithContactIdentifier:v20 fromSuggestion:0];
  v30 = [v10 mutableCopy];
LABEL_27:
  v31 = [v10 identifier];
  v32 = [v20 isEqual:v31];

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
      v36 = [v21 contact];
      v30 = [v36 mutableCopy];

      if (!v30)
      {
        v30 = objc_opt_new();
      }
    }
  }

LABEL_38:
  if (v33)
  {
    v37 = [(SSContactResultBuilder *)v11 displayName];
    v38 = [SSNameFormatManager contactFromName:v37];
    v39 = [v38 mutableCopy];

    v30 = v39;
  }

  v40 = [v21 emailAddresses];
  v58 = v10;
  if ([v40 count])
  {
    [v21 emailAddresses];
  }

  else
  {
    [v8 valueForAttribute:*MEMORY[0x1E6963FC8] withType:objc_opt_class()];
  }
  v41 = ;

  v42 = objc_opt_class();
  v43 = [v30 emailAddresses];
  v44 = [v42 labeledValuesFromStrings:v41 labeledValues:v43 withStringForLabeledValueBlock:&__block_literal_global_30 labeledValueForStringBlock:&__block_literal_global_33_0];
  [v30 setEmailAddresses:v44];

  v45 = [v21 rawPhoneNumbers];
  if ([v45 count])
  {
    [v21 rawPhoneNumbers];
  }

  else
  {
    [v8 valueForAttribute:*MEMORY[0x1E6964720] withType:objc_opt_class()];
  }
  v46 = ;

  v47 = objc_opt_class();
  v48 = [v30 phoneNumbers];
  v49 = [v47 labeledValuesFromStrings:v46 labeledValues:v48 withStringForLabeledValueBlock:&__block_literal_global_36 labeledValueForStringBlock:&__block_literal_global_38];
  [v30 setPhoneNumbers:v49];

  v50 = [v21 addresses];
  if ([v50 count])
  {
    [v21 addresses];
  }

  else
  {
    [v8 valueForAttribute:*MEMORY[0x1E6963CE8] withType:objc_opt_class()];
  }
  v51 = ;

  v52 = [v30 postalAddresses];
  v53 = [v52 count];

  if (!v53)
  {
    v54 = [objc_opt_class() labeledValuesFromStrings:v51 labeledValues:0 withStringForLabeledValueBlock:&__block_literal_global_40 labeledValueForStringBlock:&__block_literal_global_43_0];
    [v30 setPostalAddresses:v54];
  }

  v55 = [v30 birthday];
  if (v55)
  {
    [v30 setBirthday:v55];
  }

  else
  {
    v56 = [v21 birthdayComponents];
    [v30 setBirthday:v56];
  }

  [(SSContactResultBuilder *)v11 setContact:v30];
  v10 = v59;
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
  v3 = [(SSContactResultBuilder *)self contact];
  v4 = [v2 stringFromContact:v3 style:0];

  return v4;
}

- (id)buildResult
{
  v12.receiver = self;
  v12.super_class = SSContactResultBuilder;
  v3 = [(SSResultBuilder *)&v12 buildResult];
  v4 = [(SSContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:v4];

  v5 = [(SSContactResultBuilder *)self personIdentifier];
  [v3 setPersonIdentifier:v5];

  v6 = [(SSContactResultBuilder *)self personQueryIdentifier];
  [v3 setPersonQueryIdentifier:v6];

  [v3 setResultBundleId:@"com.apple.MobileAddressBook"];
  v7 = [(SSResultBuilder *)self result];
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

  [v3 setType:{-[SSContactResultBuilder resultType](self, "resultType")}];

  return v3;
}

- (id)buildHeaderResultForEntity
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSContactResultBuilder *)self realContactIdentifier];
  v4 = objc_opt_new();
  [v4 setContactIdentifier:v3];
  v5 = [(SSContactResultBuilder *)self personIdentifier];
  [v4 setPersonIdentifier:v5];

  v6 = [(SSContactResultBuilder *)self fullName];
  [v4 setDisplayName:v6];

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

  v13 = [(SSContactResultBuilder *)self buildResult];
  [v13 setResultBundleId:@"com.apple.MobileAddressBook"];
  [v13 setApplicationBundleIdentifier:0];
  [v13 setContactIdentifier:v3];
  v14 = [(SSContactResultBuilder *)self personIdentifier];
  [v13 setPersonIdentifier:v14];

  [v13 setInlineCard:v11];
  [v13 setCompactCard:0];
  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = [(SSContactResultBuilder *)self personIdentifier];
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

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)buildFooterResultForEntity
{
  v138 = *MEMORY[0x1E69E9840];
  if (buildFooterResultForEntity_onceToken != -1)
  {
    [SSContactResultBuilder buildFooterResultForEntity];
  }

  v3 = objc_opt_new();
  v110 = self;
  v4 = [(SSContactResultBuilder *)self contact];
  v5 = [v4 phoneNumbers];
  v6 = [v5 count];

  v105 = v4;
  v106 = v3;
  if (v6)
  {
    v7 = objc_opt_new();
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    obj = [v4 phoneNumbers];
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
          v15 = [v12 label];
          v16 = [v14 localizedStringForLabel:v15];

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

          v19 = [v12 value];
          v20 = [v19 formattedStringValue];

          v21 = [(SSContactResultBuilder *)v110 contact];
          v22 = [SSCommandConfiguration commandButtonItemForPhoneNumber:v20 contact:v21];
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

    v4 = v105;
  }

  v25 = [v4 emailAddresses];
  v26 = [v25 count];

  if (v26)
  {
    v27 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v28 = [v4 emailAddresses];
    v29 = [v28 countByEnumeratingWithState:&v120 objects:v135 count:16];
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
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v120 + 1) + 8 * j);
          v34 = objc_opt_new();
          v35 = MEMORY[0x1E695CEE0];
          v36 = [v33 label];
          v37 = [v35 localizedStringForLabel:v36];

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

          v40 = [v33 value];
          v41 = [SSCommandConfiguration commandButtonItemForEmail:v40];
          v134 = v41;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
          [v34 setValues:v42];

          [v27 addObject:v34];
        }

        v30 = [v28 countByEnumeratingWithState:&v120 objects:v135 count:16];
      }

      while (v30);
    }

    v43 = objc_opt_new();
    [v43 setInfoTuples:v27];
    v3 = v106;
    [v106 addObject:v43];

    v4 = v105;
  }

  v44 = [v4 postalAddresses];
  v45 = [v44 count];

  if (v45)
  {
    v46 = objc_opt_new();
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    obja = [v4 postalAddresses];
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
          v54 = [v51 label];
          v55 = [v53 localizedStringForLabel:v54];

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
          v59 = [v51 value];
          v60 = [v58 stringFromPostalAddress:v59 style:0];

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

    v4 = v105;
  }

  v64 = [v4 birthday];

  if (v64)
  {
    v65 = objc_opt_new();
    v66 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v67 = [v66 localizedStringForKey:@"BIRTHDAY_LABEL" value:&stru_1F556FE60 table:@"SpotlightServices"];
    [v65 setKey:v67];

    v68 = [v4 birthday];
    v69 = [SSCommandConfiguration commandButtonItemForBirthday:v68];
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
    objb = [v4 identifier];
    v74 = objc_opt_new();
    [v74 setCoreSpotlightIdentifier:objb];
    if (isMacOS())
    {
      [v74 setApplicationBundleIdentifier:@"com.apple.MobileAddressBook"];
      v75 = v110;
    }

    else
    {
      v75 = v110;
      v77 = [objc_opt_class() bundleId];
      [v74 setApplicationBundleIdentifier:v77];
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

    v76 = [(SSContactResultBuilder *)v75 buildResult];
    [v76 setContactIdentifier:objb];
    v89 = [(SSContactResultBuilder *)v75 personIdentifier];
    [v76 setPersonIdentifier:v89];

    [v76 setInlineCard:v87];
    [v76 setCompactCard:v87];
    if (objb)
    {
      v90 = objb;
    }

    else
    {
      v90 = [(SSContactResultBuilder *)v75 personIdentifier];
    }

    v91 = v90;
    if (v90)
    {
      v92 = v90;
    }

    else
    {
      v92 = @"unknown";
    }

    v93 = [@"com.apple.spotlight.contactInfo" stringByAppendingString:v92];
    [v76 setIdentifier:v93];

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
          v100 = [v76 identifier];
          [v99 setResultIdentifier:v100];
        }

        v96 = [v94 countByEnumeratingWithState:&v112 objects:v128 count:16];
      }

      while (v96);
    }

    v4 = v105;
    v3 = v106;
  }

  else
  {
    v76 = 0;
  }

  v101 = *MEMORY[0x1E69E9840];

  return v76;
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
  v49 = self;
  v3 = [(SSContactResultBuilder *)self contact];
  v4 = [v3 socialProfiles];

  obj = v4;
  v53 = [v4 countByEnumeratingWithState:&v56 objects:v61 count:16];
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

        v6 = [*(*(&v56 + 1) + 8 * i) value];
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

        v13 = [MEMORY[0x1E6963608] defaultWorkspace];
        v14 = [v13 applicationIsInstalled:v12];

        if (v14)
        {
          v15 = objc_opt_new();
          [v15 setBundleIdentifier:v12];
        }

        else
        {
          v15 = objc_opt_new();
          [v15 setSymbolName:@"safari"];
          [v15 setPunchThroughBackground:1];
          [v15 setSize:{45.0, 45.0}];
        }

        v55 = v12;
        v54 = v8;
        if ([v8 length])
        {
          v16 = MEMORY[0x1E69CA320];
          v17 = [MEMORY[0x1E695DFF8] URLWithString:v8];
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
        v22 = [MEMORY[0x1E695CFA0] localizedStringForService:v7];
        v23 = [v21 textWithString:v22];
        [v20 setTitle:v23];

        v24 = [v20 title];
        [v24 setMaxLines:1];

        v25 = MEMORY[0x1E69CA3A0];
        v26 = [v6 username];
        v27 = [v25 textWithString:v26];
        [v20 setSubtitle:v27];

        v28 = [v20 subtitle];
        [v28 setMaxLines:1];

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

    v37 = [(SSContactResultBuilder *)v49 buildResult];
    [v37 setResultBundleId:@"com.apple.MobileAddressBook.SocialMedia"];
    [v37 setApplicationBundleIdentifier:@"com.apple.MobileAddressBook.SocialMedia"];
    v38 = [(SSContactResultBuilder *)v49 realContactIdentifier];
    [v37 setContactIdentifier:v38];

    v39 = [(SSContactResultBuilder *)v49 personIdentifier];
    [v37 setPersonIdentifier:v39];

    [v37 setInlineCard:v35];
    [v37 setCompactCard:0];
    v40 = [(SSContactResultBuilder *)v49 realContactIdentifier];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = [(SSContactResultBuilder *)v49 personIdentifier];
    }

    v43 = v42;

    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = @"unknown";
    }

    v45 = [@"com.apple.MobileAddressBook.SocialMedia" stringByAppendingString:v44];
    [v37 setIdentifier:v45];

    v46 = [v37 identifier];
    [v30 setResultIdentifier:v46];
  }

  else
  {
    v37 = 0;
  }

  v47 = *MEMORY[0x1E69E9840];

  return v37;
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
  v4 = [(SSContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:v4];

  return v3;
}

- (id)highlightedMatchedText
{
  v3 = [(SSContactResultBuilder *)self buildTitle];
  v4 = [v3 text];
  v5 = [(SSResultBuilder *)self buildHighlightedMatchedTextWithTitle:v4 headTruncation:1];

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
      v5 = [(SSContactResultBuilder *)self contact];
      v6 = [v5 organizationName];

      if ([v6 length] && (-[SSContactResultBuilder displayName](self, "displayName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, !v8))
      {
        v4 = [MEMORY[0x1E69CA3A0] textWithString:v6];
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
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    [v4 setSymbolName:@"person.crop.circle"];
    [v4 setIsTemplate:1];
    v5 = [(SSContactResultBuilder *)self fullName];
    [v3 setTokenString:v5];

    v6 = [(SSContactResultBuilder *)self realContactIdentifier];
    v7 = [(SSContactResultBuilder *)self personQueryIdentifier];
    if (v7)
    {
      [v3 setEntityIdentifier:v7];
    }

    else
    {
      v8 = [(SSResultBuilder *)self result];
      v9 = [v8 personQueryIdentifier];
      if (v9)
      {
        [v3 setEntityIdentifier:v9];
      }

      else
      {
        v10 = [SPSearchContactEntity updatePersonQueryIdentifier:&stru_1F556FE60 withContactIdentifier:v6];
        [v3 setEntityIdentifier:v10];
      }
    }

    [v3 setEntityType:2];
    [v3 setSymbolImage:v4];
    [v3 setTokenImage:v4];
    v11 = [(SSContactResultBuilder *)self buildBackgroundColor];
    [v3 setEntityBackgroundColor:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SSContactResultBuilder;
    v3 = [(SSResultBuilder *)&v13 buildCommand];
  }

  return v3;
}

- (id)buildFillToolParameterCommand
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SSContactResultBuilder *)self realContactIdentifier];
  [v4 setContactIdentifier:v5];

  v6 = [(SSContactResultBuilder *)self personIdentifier];
  [v4 setPersonIdentifier:v6];

  v7 = [(SSContactResultBuilder *)self fullName];
  [v4 setDisplayName:v7];

  [v3 setPerson:v4];

  return v3;
}

- (id)buildTitle
{
  v3 = [(SSContactResultBuilder *)self displayName];
  if (![v3 length])
  {
    v4 = [(SSContactResultBuilder *)self fullName];

    if ([v4 length])
    {
      v3 = v4;
    }

    else
    {
      v5 = [(SSContactResultBuilder *)self contact];
      v6 = [v5 phoneNumbers];
      v7 = [v6 firstObject];
      v8 = [v7 value];
      v3 = [v8 stringValue];

      if (![v3 length])
      {
        v9 = [(SSContactResultBuilder *)self contact];
        v10 = [v9 emailAddresses];
        v11 = [v10 firstObject];
        v12 = [v11 value];

        if ([v12 length])
        {
          v3 = v12;
        }

        else
        {
          v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v3 = [v13 localizedStringForKey:@"NO_NAME" value:&stru_1F556FE60 table:@"SpotlightServices"];
        }
      }
    }
  }

  v14 = [MEMORY[0x1E69CA3A0] textWithString:v3];
  [v14 setMaxLines:2];

  return v14;
}

- (id)buildAction
{
  v3 = objc_opt_new();
  v4 = [(SSContactResultBuilder *)self realContactIdentifier];
  [v3 setContactIdentifier:v4];

  return v3;
}

- (id)buildThumbnail
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSContactResultBuilder *)self realContactIdentifier];
  v4 = objc_opt_new();
  if (v3)
  {
    [v4 setThreeDTouchEnabled:1];
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v4 setContactIdentifiers:v5];
  }

  else
  {
    [v4 setMonogramStyle:0];
    v6 = MEMORY[0x1E695CD80];
    v5 = [(SSContactResultBuilder *)self contact];
    v7 = [v6 stringFromContact:v5 style:1002];
    [v4 setMonogramLetters:v7];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildBackgroundColor
{
  v3 = objc_opt_new();
  v4 = [(SSContactResultBuilder *)self buildThumbnail];
  [v3 setImage:v4];

  return v3;
}

- (id)buildPreviewButtonItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSContactResultBuilder *)self realContactIdentifier];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setContactIdentifier:v3];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSContactResultBuilder;
    v5 = [(SSResultBuilder *)&v8 buildPreviewButtonItems];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end