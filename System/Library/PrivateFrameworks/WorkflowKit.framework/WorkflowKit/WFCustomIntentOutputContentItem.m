@interface WFCustomIntentOutputContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (INCustomObject)customObject;
- (WFCustomIntentOutputContentItem)initWithCoder:(id)a3;
- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFCustomIntentOutputContentItem

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToClass:objc_opt_class()])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___WFCustomIntentOutputContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, v4);
  }

  return v5;
}

+ (id)propertyBuilders
{
  v2 = [a1 codableDescription];
  v3 = [v2 displayOrderedAttributes];
  v4 = [v3 array];

  if (v4)
  {
    v5 = [v4 if_compactMap:&__block_literal_global_71081];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __51__WFCustomIntentOutputContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDefaultAttribute])
  {
    goto LABEL_13;
  }

  v3 = [v2 displayName];
  v4 = [v3 length];

  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [v2 wf_objectClass];
  if (!v5)
  {
    goto LABEL_14;
  }

  if (([v5 isSubclassOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(v5, "isSubclassOfClass:", objc_opt_class()) & 1) == 0)
  {
    v6 = [MEMORY[0x1E6996D68] sharedRegistry];
    v7 = [MEMORY[0x1E6996ED0] typeWithClass:v5];
    v8 = [v6 contentItemClassForType:v7];

    if (v8)
    {
      goto LABEL_9;
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v5 = [v2 wf_contentItemClass];
  if (v5)
  {
LABEL_9:
    v9 = [v2 wf_multipleValues];
    v10 = [v2 metadata];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;

    v14 = MEMORY[0x1E6996D90];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __51__WFCustomIntentOutputContentItem_propertyBuilders__block_invoke_2;
    v22[3] = &unk_1E837F200;
    v15 = v2;
    v23 = v15;
    v16 = [v15 propertyName];
    v17 = [v14 block:v22 name:v16 class:v5];
    v18 = [v17 multipleValues:v9];
    v19 = [v13 wf_measurementType];

    v20 = [v18 measurementUnitType:v19];
    v21 = [v15 localizedDisplayName];
    v5 = [v20 displayName:v21];
  }

LABEL_14:

  return v5;
}

void __51__WFCustomIntentOutputContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a2 customObject];
  v8 = [*(a1 + 32) propertyName];
  v9 = [v7 valueForKey:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(a1 + 32) wf_contentItemForValue:{*(*(&v19 + 1) + 8 * v15), v19}];
          if (v16)
          {
            [v10 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v17 = [v10 copy];
  }

  else if (v9)
  {
    v17 = [*(a1 + 32) wf_contentItemForValue:v9];
  }

  else
  {
    v17 = 0;
  }

  v6[2](v6, v17);

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v4 = a3;
  v5 = [a1 codableDescription];
  v6 = [v4 stringLocalizer];

  v7 = [v5 wf_outputDisplayNameWithLocalizer:v6];

  return v7;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(WFCustomIntentOutputContentItem *)self customObject];
  v5 = [v4 codableDescription];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 performSelector:sel_mainBundleIdentifier];
    [v12 encodeObject:v6 forKey:@"bundleIdentifier"];
  }

  v7 = [v5 typeName];
  [v12 encodeObject:v7 forKey:@"codableDescriptionTypeName"];

  v8 = [v5 intentDefinitionNamespace];
  [v12 encodeObject:v8 forKey:@"intentDefinitionNamespace"];

  v9 = objc_alloc_init(MEMORY[0x1E696E8D0]);
  v10 = [(WFCustomIntentOutputContentItem *)self customObject];
  v11 = [v9 encodeObject:v10 withCodableDescription:v5];

  [v12 encodeObject:v11 forKey:@"customObject"];
}

- (WFCustomIntentOutputContentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = WFCustomIntentOutputContentItem;
  v5 = [(WFCustomIntentOutputContentItem *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v7 = [(__CFString *)v6 isEqualToString:@"com.apple.Bridge"];
    v8 = @"com.apple.PBBridgeSupport.BridgeIntents";
    if (!v7)
    {
      v8 = v6;
    }

    v9 = v8;

    if ([(__CFString *)v9 length])
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__71147;
      v39 = __Block_byref_object_dispose__71148;
      v40 = 0;
      v10 = [MEMORY[0x1E696E878] sharedConnection];
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __49__WFCustomIntentOutputContentItem_initWithCoder___block_invoke;
      v32[3] = &unk_1E837F898;
      v33 = v9;
      v34 = &v35;
      [v10 wf_accessBundleContentForBundleIdentifiers:v11 withBlock:v32];

      if (v36[5])
      {
        v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codableDescriptionTypeName"];
        v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentDefinitionNamespace"];
        v31 = INIntentDefinitionNamespacedName();
        v14 = [v36[5] _types];
        v15 = [v14 objectForKey:v31];

        if (v15)
        {
          v28 = v13;
          v29 = [v15 wf_contentItemClassForCustomObjectWithNamespace:v13];
          v30 = MEMORY[0x1E695DFD8];
          v16 = objc_opt_class();
          v17 = objc_opt_class();
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v21 = [v30 setWithObjects:{v16, v17, v18, v19, v20, objc_opt_class(), 0}];
          v22 = [v4 decodeObjectOfClasses:v21 forKey:@"customObject"];

          v23 = objc_alloc_init(MEMORY[0x1E696E8C8]);
          v24 = [objc_alloc(MEMORY[0x1E696E7F0]) initWithObject:0 codableDescription:v15];
          [v23 decodeObject:v24 withCodableDescription:v15 from:v22];
          v25 = [v29 itemWithObject:v24];

          v13 = v28;
        }

        else
        {
          v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCustomIntentOutputContentItemErrorDomain" code:1 userInfo:0];
          [v4 failWithError:v22];
          v25 = 0;
        }
      }

      else
      {
        v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCustomIntentOutputContentItemErrorDomain" code:0 userInfo:0];
        [v4 failWithError:v12];
        v25 = 0;
      }

      _Block_object_dispose(&v35, 8);
    }

    else
    {
      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCustomIntentOutputContentItemErrorDomain" code:2 userInfo:0];
      [v4 failWithError:v26];

      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __49__WFCustomIntentOutputContentItem_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:*(a1 + 32) allowPlaceholder:0 error:0];
  v7 = v2;
  if (v2)
  {
    [MEMORY[0x1E696E9B8] schemaWithBundleRecord:v2 fallbackToSystemSchema:0];
  }

  else
  {
    v4 = *(a1 + 32);
    INSyncedSchemaWithBundleID();
  }
  v3 = ;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    v7 = MEMORY[0x1E6996EC8];
    v8 = [(WFCustomIntentOutputContentItem *)self customObject];
    v9 = [v8 displayString];
    v10 = [v7 object:v9];
    v13[0] = v10;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (INCustomObject)customObject
{
  v3 = objc_opt_class();

  return [(WFCustomIntentOutputContentItem *)self objectForClass:v3];
}

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  v5 = a3;
  v6 = [(WFCustomIntentOutputContentItem *)self customObject];
  v7 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  v8 = [v6 _intents_displayImageWithLocalizer:v7];

  v9 = [v8 wf_image];
  v10 = v9;
  if (v5 && v9)
  {
    v5[2](v5, v9, 0);
  }

  return v10 != 0;
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFCustomIntentOutputContentItem *)self customObject];
  v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  v7 = [v5 _intents_readableSubtitleWithLocalizer:v6];

  if (v4 && v7)
  {
    v4[2](v4, v7);
  }

  return v7 != 0;
}

@end