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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSItemProvider+UIKitAdditions.m" lineNumber:44 description:{@"teamData may not exceed %lu bytes in length.", 0x2000}];
  }

  [self _setMetadataValue:v6 forKey:*MEMORY[0x1E69BC868]];
}

- (id)teamData
{
  v1 = [self _metadataValueForKey:*MEMORY[0x1E69BC868]];
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
  v1 = [self _metadataValueForKey:*MEMORY[0x1E69BC850]];
  [v1 CGSizeValue];
  v3 = v2;

  return v3;
}

- (void)setPreferredPresentationSize:()UIKitAdditions
{
  if (a2 == *MEMORY[0x1E695F060] && a3 == *(MEMORY[0x1E695F060] + 8))
  {
    v5 = *MEMORY[0x1E69BC850];

    [self _setMetadataValue:0 forKey:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    [self _setMetadataValue:v6 forKey:*MEMORY[0x1E69BC850]];
  }
}

- (void)_NSItemProviderDidRegisterObject:()UIKitAdditions
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 preferredPresentationSizeForItemProvider];
    [self setPreferredPresentationSize:?];
  }
}

- (uint64_t)preferredPresentationStyle
{
  v1 = [self _metadataValueForKey:*MEMORY[0x1E69BC858]];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)setPreferredPresentationStyle:()UIKitAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [self _setMetadataValue:v2 forKey:*MEMORY[0x1E69BC858]];
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
    [self _addRepresentationType_v2:v7 preferredRepresentation:1 loader:v9];
  }
}

- (void)registerFileRepresentationForTypeIdentifier:()UIKitAdditions dataAvailableImmediately:visibility:loadHandler:
{
  v6 = a3;
  [self registerFileRepresentationForTypeIdentifier:? fileOptions:? visibility:? loadHandler:?];
  if (a4)
  {
    [self setDataAvailability:1 forTypeIdentifier:v6];
  }
}

- (uint64_t)isDataAvailableImmediatelyForTypeIdentifier:()UIKitAdditions
{
  v4 = a3;
  dataAvailabilityByTypeIdentifier = [self dataAvailabilityByTypeIdentifier];
  v6 = [dataAvailabilityByTypeIdentifier objectForKey:v4];

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (void)setDataAvailability:()UIKitAdditions forTypeIdentifier:
{
  v10 = a4;
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSItemProvider+UIKitAdditions.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  dataAvailabilityByTypeIdentifier = [self dataAvailabilityByTypeIdentifier];
  if (!dataAvailabilityByTypeIdentifier)
  {
    dataAvailabilityByTypeIdentifier = objc_opt_new();
    objc_setAssociatedObject(self, &kDataAvailableImmediately, dataAvailabilityByTypeIdentifier, 0x301);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [dataAvailabilityByTypeIdentifier setObject:v8 forKeyedSubscript:v10];
}

- (uint64_t)isDerivedRepresentationForTypeIdentifier:()UIKitAdditions
{
  v4 = a3;
  derivedRepresentationByTypeIdentfier = [self derivedRepresentationByTypeIdentfier];
  v6 = [derivedRepresentationByTypeIdentfier objectForKey:v4];

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (BOOL)hasDerivedRepresentations
{
  derivedRepresentationByTypeIdentfier = [self derivedRepresentationByTypeIdentfier];
  v2 = [derivedRepresentationByTypeIdentfier count] != 0;

  return v2;
}

- (void)setDerivedRepresentation:()UIKitAdditions forTypeIdentifier:
{
  v10 = a4;
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSItemProvider+UIKitAdditions.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  derivedRepresentationByTypeIdentfier = [self derivedRepresentationByTypeIdentfier];
  if (!derivedRepresentationByTypeIdentfier)
  {
    derivedRepresentationByTypeIdentfier = objc_opt_new();
    objc_setAssociatedObject(self, &kDataDerivedRepresentation, derivedRepresentationByTypeIdentfier, 0x301);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [derivedRepresentationByTypeIdentfier setObject:v8 forKeyedSubscript:v10];
}

- (id)_highestFidelityClassForLoading:()UIKitAdditions
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  defaultRegistry = [MEMORY[0x1E69BC7F8] defaultRegistry];
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
    selfCopy = self;
    v37 = defaultRegistry;
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
        if ([self canLoadObjectOfClass:{v9, selfCopy, v37}])
        {
          v53 = 0uLL;
          v54 = 0uLL;
          v51 = 0uLL;
          v52 = 0uLL;
          registeredTypeIdentifiers = [self registeredTypeIdentifiers];
          v10 = [registeredTypeIdentifiers countByEnumeratingWithState:&v51 objects:v66 count:16];
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
                  objc_enumerationMutation(registeredTypeIdentifiers);
                }

                v15 = *(*(&v51 + 1) + 8 * v14);
                if (objc_opt_respondsToSelector())
                {
                  v16 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v15 allowUndeclared:1];
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v62 = 0u;
                  readableTypeIdentifiersForItemProvider = [v9 readableTypeIdentifiersForItemProvider];
                  v18 = [readableTypeIdentifiersForItemProvider countByEnumeratingWithState:&v59 objects:v68 count:16];
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
                          objc_enumerationMutation(readableTypeIdentifiersForItemProvider);
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

                      v19 = [readableTypeIdentifiersForItemProvider countByEnumeratingWithState:&v59 objects:v68 count:16];
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
              v11 = [registeredTypeIdentifiers countByEnumeratingWithState:&v51 objects:v66 count:16];
            }

            while (v11);
            self = selfCopy;
            defaultRegistry = v37;
            v6 = v42;
          }
        }

        else
        {
          v49 = 0uLL;
          v50 = 0uLL;
          v47 = 0uLL;
          v48 = 0uLL;
          registeredTypeIdentifiers = [self registeredTypeIdentifiers];
          v26 = [registeredTypeIdentifiers countByEnumeratingWithState:&v47 objects:v64 count:16];
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
                  objc_enumerationMutation(registeredTypeIdentifiers);
                }

                if ([defaultRegistry canCoerceFromRepresentationConformingToType:*(*(&v47 + 1) + 8 * j) toObjectOfClass:v9])
                {
                  v63[0] = v9;
                  v31 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
                  v63[1] = v31;
                  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
                  [v6 addObject:v32];
                }

                ++v29;
              }

              v27 = [registeredTypeIdentifiers countByEnumeratingWithState:&v47 objects:v64 count:16];
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
    firstObject = [v6 firstObject];
    v33FirstObject = [firstObject firstObject];
  }

  else
  {
    v33FirstObject = 0;
  }

  return v33FirstObject;
}

- (id)_loadObjectOfClass:()UIKitAdditions userInfo:completionHandler:
{
  v8 = a4;
  v9 = a5;
  registeredTypeIdentifiers = [self registeredTypeIdentifiers];
  v11 = [registeredTypeIdentifiers mutableCopy];

  readableTypeIdentifiersForItemProvider = [a3 readableTypeIdentifiersForItemProvider];
  v13 = _bestMatchConformingToTypes(readableTypeIdentifiersForItemProvider, v11);
  if (v13)
  {
    v14 = v13;
    defaultRegistry = 0;
  }

  else
  {
    defaultRegistry = [MEMORY[0x1E69BC7F8] defaultRegistry];
    v16 = [defaultRegistry acceptableRepresentationTypesForCreatingObjectOfClass:a3];
    v14 = _bestMatchConformingToTypes(v16, v11);

    if (!v14)
    {
      goto LABEL_11;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = objc_opt_respondsToSelector();
    if (defaultRegistry)
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
    v19 = [self loadObjectOfClass:a3 completionHandler:v9];
    goto LABEL_13;
  }

  if (defaultRegistry)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((v18 & 1) == 0)
  {
    defaultRegistry = 0;
    goto LABEL_11;
  }

LABEL_12:
  v20 = v18 & 1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__NSItemProvider_UIKitAdditions___loadObjectOfClass_userInfo_completionHandler___block_invoke;
  v22[3] = &unk_1E7119E10;
  defaultRegistry = defaultRegistry;
  v23 = defaultRegistry;
  v27 = a3;
  v14 = v14;
  v24 = v14;
  v28 = v20;
  v25 = v8;
  v26 = v9;
  v19 = [self loadDataRepresentationForTypeIdentifier:v14 completionHandler:v22];

LABEL_13:

  return v19;
}

@end