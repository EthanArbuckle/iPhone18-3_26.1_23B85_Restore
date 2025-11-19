@interface INCodableAttribute(Workflow)
- (id)wf_contentItemClass;
- (id)wf_contentItemForValue:()Workflow;
- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:;
@end

@implementation INCodableAttribute(Workflow)

- (id)wf_contentItemForValue:()Workflow
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "wf_contentItemClass")];

  return v5;
}

- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:
{
  v61[8] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v42 = a5;
  v43 = [[WFINCodableAttributeParameterName alloc] initWithAttribute:a1];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__26657;
  v51 = __Block_byref_object_dispose__26658;
  v9 = v8;
  v52 = v9;
  v59[0] = @"Class";
  v10 = NSStringFromClass(a4);
  v60[0] = v10;
  v59[1] = @"Key";
  v11 = [a1 propertyName];
  v60[1] = v11;
  v60[2] = v43;
  v59[2] = @"Label";
  v59[3] = @"IntentSlotName";
  v12 = [a1 propertyName];
  v60[3] = v12;
  v59[4] = @"AllowsMultipleValues";
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a1, "modifier") == 0}];
  v60[4] = v13;
  v60[5] = @"Right";
  v59[5] = @"TextAlignment";
  v59[6] = @"FixedSizeArray";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isFixedSizeArray")}];
  v60[6] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:7];

  if ([a1 isFixedSizeArray])
  {
    v16 = *MEMORY[0x1E696E548];
    v61[0] = *MEMORY[0x1E696E550];
    v61[1] = v16;
    v17 = *MEMORY[0x1E696E538];
    v61[2] = *MEMORY[0x1E696E540];
    v61[3] = v17;
    v18 = *MEMORY[0x1E696E518];
    v61[4] = *MEMORY[0x1E696E520];
    v61[5] = v18;
    v19 = *MEMORY[0x1E696E528];
    v61[6] = *MEMORY[0x1E696E530];
    v61[7] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:8];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __87__INCodableAttribute_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke;
    v46[3] = &unk_1E837E220;
    v46[4] = a1;
    v21 = [v20 if_compactMap:v46];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __87__INCodableAttribute_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke_2;
    v45[3] = &unk_1E8377820;
    v45[4] = a1;
    v22 = [v20 if_objectsPassingTest:v45];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v22];
    v57 = @"ArraySizesForSizeClass";
    v58 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v25 = [v15 if_dictionaryByAddingEntriesFromDictionary:v24];

    v15 = v25;
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __87__INCodableAttribute_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke_3;
  v44[3] = &unk_1E837D4A8;
  v44[4] = &v47;
  [v15 enumerateKeysAndObjectsUsingBlock:v44];
  if (([a1 supportsDynamicEnumeration] & 1) == 0)
  {
    v26 = v48[5];
    v55 = @"Placeholder";
    v27 = [WFINCodableAttributePlaceholder alloc];
    v28 = [a1 metadata];
    v29 = [(WFINCodableAttributePlaceholder *)v27 initWithMetadata:v28];
    v56 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v31 = [v26 definitionByAddingEntriesInDictionary:v30];
    v32 = v48[5];
    v48[5] = v31;
  }

  v33 = [a1 languageCode];

  if (v33)
  {
    v34 = v48[5];
    v53 = @"LanguageCodeOverride";
    v35 = [a1 languageCode];
    v54 = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v37 = [v34 definitionByAddingEntriesInDictionary:v36];
    v38 = v48[5];
    v48[5] = v37;
  }

  v39 = v48[5];

  _Block_object_dispose(&v47, 8);
  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)wf_contentItemClass
{
  if ([objc_msgSend(a1 "wf_objectClass")])
  {
    v2 = [objc_msgSend(a1 "wf_objectClass")];
  }

  else
  {
    v3 = [MEMORY[0x1E6996D68] sharedRegistry];
    v4 = [MEMORY[0x1E6996ED0] typeWithClass:{objc_msgSend(a1, "wf_objectClass")}];
    v2 = [v3 contentItemClassForType:v4];
  }

  return v2;
}

@end