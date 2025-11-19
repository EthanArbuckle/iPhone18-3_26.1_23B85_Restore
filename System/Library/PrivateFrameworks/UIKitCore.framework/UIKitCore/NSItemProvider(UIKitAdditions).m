@interface NSItemProvider(UIKitAdditions)
- (BOOL)hasDerivedRepresentations;
- (double)preferredPresentationSize;
- (id)_highestFidelityClassForLoading:()UIKitAdditions;
- (id)_loadObjectOfClass:()UIKitAdditions userInfo:completionHandler:;
- (id)teamData;
- (uint64_t)isDataAvailableImmediatelyForTypeIdentifier:()UIKitAdditions;
- (uint64_t)isDerivedRepresentationForTypeIdentifier:()UIKitAdditions;
- (uint64_t)preferredPresentationStyle;
- (void)_NSItemProviderDidRegisterObject:()UIKitAdditions;
- (void)registerFileProviderItemForTypeIdentifier:()UIKitAdditions visibility:loadHandler:;
- (void)registerFileRepresentationForTypeIdentifier:()UIKitAdditions dataAvailableImmediately:visibility:loadHandler:;
- (void)setDataAvailability:()UIKitAdditions forTypeIdentifier:;
- (void)setDerivedRepresentation:()UIKitAdditions forTypeIdentifier:;
- (void)setPreferredPresentationSize:()UIKitAdditions;
- (void)setPreferredPresentationStyle:()UIKitAdditions;
- (void)setTeamData:()UIKitAdditions;
@end

@implementation NSItemProvider(UIKitAdditions)

- (void)setTeamData:()UIKitAdditions
{
  v6 = a3;
  if ([v6 length] > 0x2000)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:a1 file:@"NSItemProvider+UIKitAdditions.m" lineNumber:44 description:{@"teamData may not exceed %lu bytes in length.", 0x2000}];
  }

  [a1 _setMetadataValue:v6 forKey:*MEMORY[0x1E69BC868]];
}

- (id)teamData
{
  v1 = [a1 _metadataValueForKey:*MEMORY[0x1E69BC868]];
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v1 = 0;
    }
  }

  return v1;
}

- (double)preferredPresentationSize
{
  v1 = [a1 _metadataValueForKey:*MEMORY[0x1E69BC850]];
  [v1 CGSizeValue];
  v3 = v2;

  return v3;
}

- (void)setPreferredPresentationSize:()UIKitAdditions
{
  if (a2 == *MEMORY[0x1E695F060] && a3 == *(MEMORY[0x1E695F060] + 8))
  {
    v5 = *MEMORY[0x1E69BC850];

    [a1 _setMetadataValue:0 forKey:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    [a1 _setMetadataValue:v6 forKey:*MEMORY[0x1E69BC850]];
  }
}

- (void)_NSItemProviderDidRegisterObject:()UIKitAdditions
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 preferredPresentationSizeForItemProvider];
    [a1 setPreferredPresentationSize:?];
  }
}

- (uint64_t)preferredPresentationStyle
{
  v1 = [a1 _metadataValueForKey:*MEMORY[0x1E69BC858]];
  v2 = [v1 integerValue];

  return v2;
}

- (void)setPreferredPresentationStyle:()UIKitAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 _setMetadataValue:v2 forKey:*MEMORY[0x1E69BC858]];
}

- (void)registerFileProviderItemForTypeIdentifier:()UIKitAdditions visibility:loadHandler:
{
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x1E69BC828] instancesRespondToSelector:sel_initWithFPItem_])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__NSItemProvider_UIKitAdditions__registerFileProviderItemForTypeIdentifier_visibility_loadHandler___block_invoke;
    v9[3] = &unk_1E7119DC8;
    v10 = v8;
    [a1 _addRepresentationType_v2:v7 preferredRepresentation:1 loader:v9];
  }
}

- (void)registerFileRepresentationForTypeIdentifier:()UIKitAdditions dataAvailableImmediately:visibility:loadHandler:
{
  v6 = a3;
  [a1 registerFileRepresentationForTypeIdentifier:? fileOptions:? visibility:? loadHandler:?];
  if (a4)
  {
    [a1 setDataAvailability:1 forTypeIdentifier:v6];
  }
}

- (uint64_t)isDataAvailableImmediatelyForTypeIdentifier:()UIKitAdditions
{
  v4 = a3;
  v5 = [a1 dataAvailabilityByTypeIdentifier];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 BOOLValue];
  return v7;
}

- (void)setDataAvailability:()UIKitAdditions forTypeIdentifier:
{
  v10 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSItemProvider+UIKitAdditions.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  v7 = [a1 dataAvailabilityByTypeIdentifier];
  if (!v7)
  {
    v7 = objc_opt_new();
    objc_setAssociatedObject(a1, &kDataAvailableImmediately, v7, 0x301);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v7 setObject:v8 forKeyedSubscript:v10];
}

- (uint64_t)isDerivedRepresentationForTypeIdentifier:()UIKitAdditions
{
  v4 = a3;
  v5 = [a1 derivedRepresentationByTypeIdentfier];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 BOOLValue];
  return v7;
}

- (BOOL)hasDerivedRepresentations
{
  v1 = [a1 derivedRepresentationByTypeIdentfier];
  v2 = [v1 count] != 0;

  return v2;
}

- (void)setDerivedRepresentation:()UIKitAdditions forTypeIdentifier:
{
  v10 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"NSItemProvider+UIKitAdditions.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  v7 = [a1 derivedRepresentationByTypeIdentfier];
  if (!v7)
  {
    v7 = objc_opt_new();
    objc_setAssociatedObject(a1, &kDataDerivedRepresentation, v7, 0x301);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v7 setObject:v8 forKeyedSubscript:v10];
}

- (id)_highestFidelityClassForLoading:()UIKitAdditions
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69BC7F8] defaultRegistry];
  v6 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
  v40 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v40)
  {
    v39 = *v56;
    v36 = a1;
    v37 = v5;
    v42 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v56 != v39)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v41 = v7;
        v9 = *(*(&v55 + 1) + 8 * v7);
        if ([a1 canLoadObjectOfClass:{v9, v36, v37}])
        {
          v53 = 0uLL;
          v54 = 0uLL;
          v51 = 0uLL;
          v52 = 0uLL;
          v46 = [a1 registeredTypeIdentifiers];
          v10 = [v46 countByEnumeratingWithState:&v51 objects:v66 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v13 = *v52;
            v43 = *v52;
            v44 = v9;
            do
            {
              v14 = 0;
              v45 = v11;
              do
              {
                if (*v52 != v13)
                {
                  objc_enumerationMutation(v46);
                }

                v15 = *(*(&v51 + 1) + 8 * v14);
                if (objc_opt_respondsToSelector())
                {
                  v16 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v15 allowUndeclared:1];
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v62 = 0u;
                  v17 = [v9 readableTypeIdentifiersForItemProvider];
                  v18 = [v17 countByEnumeratingWithState:&v59 objects:v68 count:16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *v60;
                    while (2)
                    {
                      for (i = 0; i != v19; ++i)
                      {
                        if (*v60 != v20)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v22 = [MEMORY[0x1E6982C40] _typeWithIdentifier:*(*(&v59 + 1) + 8 * i) allowUndeclared:1];
                        v23 = [v16 conformsToType:v22];

                        if (v23)
                        {

                          v9 = v44;
                          v65[0] = v44;
                          v24 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
                          v65[1] = v24;
                          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
                          [v42 addObject:v25];

                          goto LABEL_24;
                        }
                      }

                      v19 = [v17 countByEnumeratingWithState:&v59 objects:v68 count:16];
                      if (v19)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v9 = v44;
LABEL_24:
                  v13 = v43;
                  v11 = v45;
                }

                else
                {
                }

                ++v12;
                ++v14;
              }

              while (v14 != v11);
              v11 = [v46 countByEnumeratingWithState:&v51 objects:v66 count:16];
            }

            while (v11);
            a1 = v36;
            v5 = v37;
            v6 = v42;
          }
        }

        else
        {
          v49 = 0uLL;
          v50 = 0uLL;
          v47 = 0uLL;
          v48 = 0uLL;
          v46 = [a1 registeredTypeIdentifiers];
          v26 = [v46 countByEnumeratingWithState:&v47 objects:v64 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v48;
            v29 = 0x10000;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v48 != v28)
                {
                  objc_enumerationMutation(v46);
                }

                if ([v5 canCoerceFromRepresentationConformingToType:*(*(&v47 + 1) + 8 * j) toObjectOfClass:v9])
                {
                  v63[0] = v9;
                  v31 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
                  v63[1] = v31;
                  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
                  [v6 addObject:v32];
                }

                ++v29;
              }

              v27 = [v46 countByEnumeratingWithState:&v47 objects:v64 count:16];
            }

            while (v27);
          }
        }

        v7 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v40);
  }

  if ([v6 count])
  {
    [v6 sortUsingComparator:&__block_literal_global_437];
    v33 = [v6 firstObject];
    v34 = [v33 firstObject];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_loadObjectOfClass:()UIKitAdditions userInfo:completionHandler:
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 registeredTypeIdentifiers];
  v11 = [v10 mutableCopy];

  v12 = [a3 readableTypeIdentifiersForItemProvider];
  v13 = _bestMatchConformingToTypes(v12, v11);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E69BC7F8] defaultRegistry];
    v16 = [v15 acceptableRepresentationTypesForCreatingObjectOfClass:a3];
    v14 = _bestMatchConformingToTypes(v16, v11);

    if (!v14)
    {
      goto LABEL_11;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = objc_opt_respondsToSelector();
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v17 = [a3 _preferredRepresentationForItemProviderReadableTypeIdentifier:v14];
  v18 = objc_opt_respondsToSelector();
  if (v17)
  {
LABEL_11:
    v19 = [a1 loadObjectOfClass:a3 completionHandler:v9];
    goto LABEL_13;
  }

  if (v15)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((v18 & 1) == 0)
  {
    v15 = 0;
    goto LABEL_11;
  }

LABEL_12:
  v20 = v18 & 1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__NSItemProvider_UIKitAdditions___loadObjectOfClass_userInfo_completionHandler___block_invoke;
  v22[3] = &unk_1E7119E10;
  v15 = v15;
  v23 = v15;
  v27 = a3;
  v14 = v14;
  v24 = v14;
  v28 = v20;
  v25 = v8;
  v26 = v9;
  v19 = [a1 loadDataRepresentationForTypeIdentifier:v14 completionHandler:v22];

LABEL_13:

  return v19;
}

@end