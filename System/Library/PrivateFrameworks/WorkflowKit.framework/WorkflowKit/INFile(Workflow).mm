@interface INFile(Workflow)
+ (id)compatibleFileTypeForContentItem:()Workflow availableTypes:;
+ (id)wf_fileWithBookmarkData:()Workflow filename:;
+ (id)wf_fileWithFileRepresentation:()Workflow bookmarkData:displayName:;
+ (id)wf_fileWithFileRepresentation:()Workflow displayName:;
+ (uint64_t)wf_processParameterValue:()Workflow parameterState:coerceToSupportedUTIs:array:dynamicOptions:completionHandler:;
+ (void)coerceContentItems:()Workflow toSupportedUTIs:completion:;
+ (void)coerceContentItemsIfAppropriate:()Workflow toSupportedUTIs:withParameterStates:dynamicOptions:completion:;
+ (void)getINFileRepresentationsFromContent:()Workflow byCoercingToSupportedUTIs:withParameterState:dynamicOptions:completion:;
- (id)wf_contentItemWithCodableAttribute:()Workflow;
- (id)wf_fileRepresentation;
- (id)wf_initWithBookmarkData:()Workflow filename:typeIdentifier:removedOnCompletion:;
- (id)wf_initWithData:()Workflow filename:fileURL:typeIdentifier:removedOnCompletion:;
- (void)wf_transformUsingCodableAttribute:()Workflow completionHandler:;
@end

@implementation INFile(Workflow)

- (id)wf_fileRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E0AF8];
  v3 = [a1 typeIdentifier];
  v4 = [v2 typeWithString:v3];

  v5 = [a1 fileURL];

  if (v5)
  {
    if ([a1 _hasAssociatedAuditToken])
    {
      v6 = [a1 fileURL];
      [a1 _associatedAuditToken];
      v7 = [v6 wf_sandboxAllowsReadingFileWithAuditToken:buf];

      if (!v7)
      {
        v12 = 0;
        goto LABEL_18;
      }
    }

    if ([a1 removedOnCompletion])
    {
      v8 = 9;
    }

    else
    {
      v8 = 8;
    }

    v9 = MEMORY[0x1E6996E20];
    v10 = [a1 fileURL];
    v11 = [a1 filename];
    v12 = [v9 fileWithURL:v10 options:v8 ofType:v4 proposedFilename:v11];
  }

  else
  {
    v13 = MEMORY[0x1E6996E20];
    v14 = [a1 data];
    v15 = [a1 filename];
    v12 = [v13 fileWithData:v14 ofType:v4 proposedFilename:v15];
  }

  v16 = a1;
  v17 = [v16 _itemProviderRequestMetadata];
  v18 = [v17 metadata];

  if (v18)
  {
    v19 = MEMORY[0x1E696ACD0];
    v20 = objc_opt_class();
    v21 = [v16 _itemProviderRequestMetadata];
    v22 = [v21 metadata];
    v29 = 0;
    v23 = [v19 unarchivedObjectOfClass:v20 fromData:v22 error:&v29];
    v24 = v29;

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v26 = getWFGeneralLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "WFItemProviderRequestMetadataWithINFile";
        v32 = 2112;
        v33 = v24;
        _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_ERROR, "%s Could not unarchive item provider metadata with error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  [v12 setMetadata:v23];
LABEL_18:

  v27 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)wf_transformUsingCodableAttribute:()Workflow completionHandler:
{
  v6 = a4;
  v8 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"INFile+Workflow.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    v6 = 0;
  }

  (*(v6 + 2))(v6, a1);
}

- (id)wf_contentItemWithCodableAttribute:()Workflow
{
  v1 = MEMORY[0x1E6996D58];
  v2 = [a1 wf_fileRepresentation];
  v3 = [v1 itemWithFile:v2];

  return v3;
}

- (id)wf_initWithBookmarkData:()Workflow filename:typeIdentifier:removedOnCompletion:
{
  v6 = [a1 _initWithBookmarkData:a3 filename:a4 typeIdentifier:a5 removedOnCompletion:a6];

  return v6;
}

- (id)wf_initWithData:()Workflow filename:fileURL:typeIdentifier:removedOnCompletion:
{
  v7 = [a1 _initWithData:a3 filename:a4 fileURL:a5 typeIdentifier:a6 removedOnCompletion:a7];

  return v7;
}

+ (id)compatibleFileTypeForContentItem:()Workflow availableTypes:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 preferredFileType];
  if ([v7 conformsToTypes:v6])
  {
    v8 = v7;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v5 supportedTypes];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (v14)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          v8 = v15;

          if ([v8 conformsToTypes:v6])
          {

            goto LABEL_18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)coerceContentItems:()Workflow toSupportedUTIs:completion:
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 if_map:&__block_literal_global_193_66804];
  v12 = objc_alloc(MEMORY[0x1E695DFB8]);
  v13 = [v11 if_compactMap:&__block_literal_global_197];
  v14 = [v12 initWithArray:v13];

  v15 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v32 = "+[INFile(Workflow) coerceContentItems:toSupportedUTIs:completion:]";
    v33 = 2114;
    v34 = v8;
    v35 = 2114;
    v36 = v14;
    _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEBUG, "%s Mapped UTIs: %{public}@ to content items: %{public}@", buf, 0x20u);
  }

  v16 = MEMORY[0x1E6996CF0];
  v17 = [v14 array];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66__INFile_Workflow__coerceContentItems_toSupportedUTIs_completion___block_invoke_200;
  v25[3] = &unk_1E837E410;
  v27 = v9;
  v28 = a1;
  v26 = v11;
  v18 = v11;
  v19 = v9;
  v20 = [v16 requestForCoercingToContentClasses:v17 completionHandler:v25];

  v21 = MEMORY[0x1E6996CE8];
  v29 = *MEMORY[0x1E6997008];
  v30 = *MEMORY[0x1E69970C0];
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v23 = [v21 optionsWithDictionary:v22];
  [v20 setOptions:v23];

  [v10 performCoercion:v20];
  v24 = *MEMORY[0x1E69E9840];
}

+ (void)coerceContentItemsIfAppropriate:()Workflow toSupportedUTIs:withParameterStates:dynamicOptions:completion:
{
  v13 = a4;
  v11 = a7;
  v12 = a3;
  if (![v13 count] || a6)
  {
    [v12 getFileRepresentations:v11 forType:0];
  }

  else
  {
    [a1 coerceContentItems:v12 toSupportedUTIs:v13 completion:v11];
  }
}

+ (void)getINFileRepresentationsFromContent:()Workflow byCoercingToSupportedUTIs:withParameterState:dynamicOptions:completion:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v14 parameterStates];
    v17 = [v16 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26[0] = v14;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    }

    else
    {
      v19 = 0;
    }
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __127__INFile_Workflow__getINFileRepresentationsFromContent_byCoercingToSupportedUTIs_withParameterState_dynamicOptions_completion___block_invoke;
  v23[3] = &unk_1E837F020;
  v24 = v19;
  v25 = v15;
  v20 = v19;
  v21 = v15;
  [a1 coerceContentItemsIfAppropriate:v12 toSupportedUTIs:v13 withParameterStates:v20 dynamicOptions:a6 completion:v23];

  v22 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)wf_processParameterValue:()Workflow parameterState:coerceToSupportedUTIs:array:dynamicOptions:completionHandler:
{
  v55[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__INFile_Workflow__wf_processParameterValue_parameterState_coerceToSupportedUTIs_array_dynamicOptions_completionHandler___block_invoke;
  aBlock[3] = &unk_1E837E310;
  v18 = v17;
  v52 = v18;
  v53 = a6;
  v19 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = MEMORY[0x1E6996D40];
    [MEMORY[0x1E6996D58] itemWithFile:v14];
    v45 = v14;
    v21 = v18;
    v22 = a7;
    v23 = v19;
    v24 = v16;
    v26 = v25 = v15;
    v55[0] = v26;
    v27 = 1;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
    v29 = [v20 collectionWithItems:v28];

    v15 = v25;
    v16 = v24;
    v19 = v23;
    v30 = v22;
    v18 = v21;
    v14 = v45;
    [a1 getINFileRepresentationsFromContent:v29 byCoercingToSupportedUTIs:v16 withParameterState:v15 dynamicOptions:v30 completion:v23];

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [v14 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v33 = MEMORY[0x1E6996D40];
      v34 = [v14 if_map:&__block_literal_global_66813];
      v35 = [v33 collectionWithItems:v34];

      [a1 getINFileRepresentationsFromContent:v35 byCoercingToSupportedUTIs:v16 withParameterState:v15 dynamicOptions:a7 completion:v19];
LABEL_10:
      v27 = 1;
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 getINFileRepresentationsFromContent:v14 byCoercingToSupportedUTIs:v16 withParameterState:v15 dynamicOptions:a7 completion:v19];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(v18 + 2))(v18, v14, 0);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v15;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = v14;
    v39 = [v38 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v48;
      while (2)
      {
        v42 = 0;
        do
        {
          if (*v48 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v47 + 1) + 8 * v42);
          v44 = objc_opt_class();
          if (v44 == objc_opt_class())
          {
            (*(v18 + 2))(v18, v38, 0);

            v27 = 1;
            goto LABEL_24;
          }

          ++v42;
        }

        while (v40 != v42);
        v40 = [v38 countByEnumeratingWithState:&v47 objects:v54 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_24:
    v15 = v46;
  }

  else
  {
    v27 = 0;
  }

LABEL_11:

  v36 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (id)wf_fileWithBookmarkData:()Workflow filename:
{
  v5 = MEMORY[0x1E696E840];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 wf_initWithBookmarkData:v7 filename:v6 typeIdentifier:0 removedOnCompletion:0];

  return v9;
}

+ (id)wf_fileWithFileRepresentation:()Workflow bookmarkData:displayName:
{
  v7 = a3;
  v8 = MEMORY[0x1E696E840];
  v9 = a5;
  v10 = a4;
  v11 = [v8 alloc];
  v12 = v9;
  if (!v9)
  {
    v12 = [v7 filename];
  }

  v13 = [v7 wfType];
  v14 = [v13 string];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "deletesFileOnDeallocation")}];
  v16 = [v11 wf_initWithBookmarkData:v10 filename:v12 typeIdentifier:v14 removedOnCompletion:v15];

  if (!v9)
  {
  }

  v17 = WFINItemProviderRequestMetadataWithFileRepresentation(v7);
  [v16 _setItemProviderRequestMetadata:v17];

  if ([v7 deletesFileOnDeallocation])
  {
    [v16 _setMarkedForDeletionOnDeallocation:1];
  }

  return v16;
}

+ (id)wf_fileWithFileRepresentation:()Workflow displayName:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 filename];
  }

  v9 = v8;
  v10 = [v5 initialRepresentationType];
  v11 = objc_alloc(MEMORY[0x1E696E840]);
  if (v10)
  {
    v12 = [v5 fileURL];
    v13 = [v5 wfType];
    v14 = [v13 string];
    v15 = v11;
    v16 = 0;
    v17 = v9;
    v18 = v12;
  }

  else
  {
    v12 = [v5 data];
    v13 = [v5 wfType];
    v14 = [v13 string];
    v15 = v11;
    v16 = v12;
    v17 = v9;
    v18 = 0;
  }

  v19 = [v15 wf_initWithData:v16 filename:v17 fileURL:v18 typeIdentifier:v14 removedOnCompletion:0];

  v20 = WFINItemProviderRequestMetadataWithFileRepresentation(v5);
  [v19 _setItemProviderRequestMetadata:v20];

  if ([v5 deletesFileOnDeallocation])
  {
    [v19 _setMarkedForDeletionOnDeallocation:1];
  }

  return v19;
}

@end