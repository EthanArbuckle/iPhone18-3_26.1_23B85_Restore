@interface UIItemProvider
- (BOOL)canLoadObjectOfClass:(Class)class;
- (BOOL)copyFileRepresentationForTypeIdentifier:(id)identifier toURL:(id)l options:(id)options error:(id *)error;
- (UIItemProvider)initWithPBItem:(id)item loadRequestContext:(id)context secureRetryHandler:(id)handler;
- (id)_availableTypes;
- (id)_objectOfClass:(Class)class data:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (id)_readableTypeIdentifiersForItemProviderForClass:(Class)class;
- (id)copyDataRepresentationForTypeIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)copyFileRepresentationForTypeIdentifier:(id)identifier error:(id *)error;
- (id)instantiateObjectOfClass:(Class)class options:(id)options error:(id *)error;
- (id)loadObjectOfClass:(Class)class completionHandler:(id)handler;
- (void)copyDataRepresentationForTypeIdentifier:(id)identifier options:(id)options completionBlock:(id)block;
- (void)copyFileRepresentationForTypeIdentifier:(id)identifier toURL:(id)l options:(id)options completionBlock:(id)block;
- (void)registerDataRepresentationForTypeIdentifier:(id)identifier loadHandler:(id)handler;
- (void)registerFileRepresentationForTypeIdentifier:(id)identifier fileOptions:(int64_t)options loadHandler:(id)handler;
@end

@implementation UIItemProvider

- (UIItemProvider)initWithPBItem:(id)item loadRequestContext:(id)context secureRetryHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  handlerCopy = handler;
  v42.receiver = self;
  v42.super_class = UIItemProvider;
  v9 = [(UIItemProvider *)&v42 init];
  if (v9)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [itemCopy availableTypes];
    v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v31 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = [itemCopy representationConformingToType:v13];
          if ([itemCopy isDataAvailableImmediatelyForType:v13])
          {
            [(NSItemProvider *)v9 setDataAvailability:1 forTypeIdentifier:v13];
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && [v14 isDerivedRepresentation])
          {
            [(NSItemProvider *)v9 setDerivedRepresentation:1 forTypeIdentifier:v13];
          }

          [itemCopy preferredRepresentationForType:v13];
          v15 = PBNSPreferredRepresentationFromPB();
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __71__UIItemProvider_initWithPBItem_loadRequestContext_secureRetryHandler___block_invoke;
          v34[3] = &unk_1E711A190;
          v16 = v14;
          v35 = v16;
          v36 = contextCopy;
          v37 = handlerCopy;
          [(UIItemProvider *)v9 _addRepresentationType_v2:v13 preferredRepresentation:v15 loader:v34];
          if (objc_opt_respondsToSelector())
          {
            visibility = [v16 visibility];
            v18 = [(UIItemProvider *)v9 _representationConformingToType:v13];
            [v18 setVisibility:visibility];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    metadata = [itemCopy metadata];
    v20 = [metadata mutableCopy];

    v21 = *MEMORY[0x1E69BC860];
    v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BC860]];
    if (v22)
    {
      [v20 removeObjectForKey:v21];
      [(UIItemProvider *)v9 setSuggestedName:v22];
    }

    v23 = *MEMORY[0x1E69BC868];
    v24 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BC868]];
    if (v24)
    {
      [v20 removeObjectForKey:v23];
      [(NSItemProvider *)v9 setTeamData:v24];
    }

    v25 = *MEMORY[0x1E69BC850];
    v26 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BC850]];
    if (v26)
    {
      [v20 removeObjectForKey:v25];
      [(UIItemProvider *)v9 _setMetadataValue:v26 forKey:v25];
    }

    v27 = *MEMORY[0x1E69BC858];
    v28 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BC858]];
    if (v28)
    {
      [v20 removeObjectForKey:v27];
      [(UIItemProvider *)v9 _setMetadataValue:v28 forKey:v27];
    }

    if ([v20 count])
    {
      [(UIItemProvider *)v9 _setMetadataValue:v20 forKey:*MEMORY[0x1E69BC848]];
    }
  }

  return v9;
}

id __71__UIItemProvider_initWithPBItem_loadRequestContext_secureRetryHandler___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__UIItemProvider_initWithPBItem_loadRequestContext_secureRetryHandler___block_invoke_2;
  aBlock[3] = &unk_1E711A140;
  v18 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = a1[4];
  v8 = a1[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__UIItemProvider_initWithPBItem_loadRequestContext_secureRetryHandler___block_invoke_3;
  v12[3] = &unk_1E711A168;
  v15 = a1[6];
  v13 = a1[4];
  v14 = a1[5];
  v16 = v6;
  v9 = v6;
  v10 = [v7 loadWithContext:v8 completionHandler:v12];

  return v10;
}

void __71__UIItemProvider_initWithPBItem_loadRequestContext_secureRetryHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = MEMORY[0x1E696ACA8];
  v11 = a6;
  v12 = a5;
  v13 = a2;
  v14 = [a3 nsURLWrapper];
  v15 = [v10 resultWithData:v13 urlWrapper:v14 cleanupHandler:v11 error:v12];

  (*(*(a1 + 32) + 16))();
}

void __71__UIItemProvider_initWithPBItem_loadRequestContext_secureRetryHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11 | v12)
  {
    goto LABEL_7;
  }

  v16 = [v14 domain];
  if (![v16 isEqualToString:*MEMORY[0x1E69BC840]] || objc_msgSend(v14, "code") != 20)
  {

    goto LABEL_7;
  }

  v17 = *(a1 + 48);

  if (!v17)
  {
LABEL_7:
    (*(*(a1 + 56) + 16))();
    goto LABEL_8;
  }

  v18 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__UIItemProvider_initWithPBItem_loadRequestContext_secureRetryHandler___block_invoke_4;
  v19[3] = &unk_1E70FCE28;
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  (*(v18 + 16))(v18, v19);

LABEL_8:
}

- (id)loadObjectOfClass:(Class)class completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__UIItemProvider_loadObjectOfClass_completionHandler___block_invoke;
  v11[3] = &unk_1E711A1B8;
  v12 = handlerCopy;
  v10.receiver = self;
  v10.super_class = UIItemProvider;
  v7 = handlerCopy;
  v8 = [(UIItemProvider *)&v10 loadObjectOfClass:class completionHandler:v11];

  return v8;
}

void __54__UIItemProvider_loadObjectOfClass_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([MEMORY[0x1E695DFF8] _allowsCreationOfFileURLFromItemProvider] & 1) == 0)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = v10;
      if ([v8 isFileURL])
      {

        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];

        v10 = 0;
        v5 = v9;
      }

      else
      {
        v10 = v8;
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_availableTypes
{
  if ([MEMORY[0x1E696ACA0] instancesRespondToSelector:sel__availableTypes])
  {
    v5.receiver = self;
    v5.super_class = UIItemProvider;
    _availableTypes = [(UIItemProvider *)&v5 _availableTypes];
  }

  else
  {
    _availableTypes = [(UIItemProvider *)self registeredTypeIdentifiers];
  }

  return _availableTypes;
}

- (BOOL)canLoadObjectOfClass:(Class)class
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = [(UIItemProvider *)self _readableTypeIdentifiersForItemProviderForClass:class];
  v6 = MEMORY[0x1E696ACA0];
  _availableTypes = [(UIItemProvider *)self _availableTypes];
  v8 = [v6 _uikit_bestMatchConformingToTypes:v5 availableTypes:_availableTypes];
  v9 = v8 != 0;

  return v9;
}

- (id)_readableTypeIdentifiersForItemProviderForClass:(Class)class
{
  if (objc_opt_respondsToSelector())
  {
    readableTypeIdentifiersForItemProvider = [(objc_class *)class _uikit_readableTypeIdentifiersForItemProviderConsideringLinkage:0];
LABEL_5:
    v6 = readableTypeIdentifiersForItemProvider;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    readableTypeIdentifiersForItemProvider = [(objc_class *)class readableTypeIdentifiersForItemProvider];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  if (objc_opt_respondsToSelector())
  {
    _ui_augmentingNSItemProviderReadingClass = [(objc_class *)class _ui_augmentingNSItemProviderReadingClass];
    additionalLeadingReadableTypeIdentifiersForItemProvider = [_ui_augmentingNSItemProviderReadingClass additionalLeadingReadableTypeIdentifiersForItemProvider];
    additionalTrailingReadableTypeIdentifiersForItemProvider = [_ui_augmentingNSItemProviderReadingClass additionalTrailingReadableTypeIdentifiersForItemProvider];
    v10 = [v6 arrayByAddingObjectsFromArray:additionalTrailingReadableTypeIdentifiersForItemProvider];
    v11 = [additionalLeadingReadableTypeIdentifiersForItemProvider arrayByAddingObjectsFromArray:v10];

    v6 = v11;
  }

  if ([(NSItemProvider *)self hasDerivedRepresentations])
  {
    registeredTypeIdentifiers = [(UIItemProvider *)self registeredTypeIdentifiers];
    v13 = [v6 mutableCopy];
    while (1)
    {
      v14 = [MEMORY[0x1E696ACA0] _uikit_bestMatchConformingToTypes:v13 availableTypes:registeredTypeIdentifiers];
      if (!v14 || ![(NSItemProvider *)self isDerivedRepresentationForTypeIdentifier:v14])
      {
        break;
      }

      [v13 removeObject:v14];

      if (![v13 count])
      {
        goto LABEL_17;
      }
    }

    if ([v13 count])
    {
      v15 = v13;

      v6 = v15;
    }

LABEL_17:
  }

  if (v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = v16;

  return v16;
}

- (id)_objectOfClass:(Class)class data:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([-[objc_class _ui_augmentingNSItemProviderReadingClass](class "_ui_augmentingNSItemProviderReadingClass")], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [(objc_class *)class objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy error:error];
  }

  return v11;
}

- (void)registerDataRepresentationForTypeIdentifier:(id)identifier loadHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__UIItemProvider_registerDataRepresentationForTypeIdentifier_loadHandler___block_invoke;
  v8[3] = &unk_1E711A1E0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(UIItemProvider *)self registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v8];
}

uint64_t __74__UIItemProvider_registerDataRepresentationForTypeIdentifier_loadHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__UIItemProvider_registerDataRepresentationForTypeIdentifier_loadHandler___block_invoke_2;
  v8[3] = &unk_1E7119F30;
  v9 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v8, 0);

  return 0;
}

- (void)registerFileRepresentationForTypeIdentifier:(id)identifier fileOptions:(int64_t)options loadHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__UIItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_loadHandler___block_invoke;
  v10[3] = &unk_1E711A208;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(UIItemProvider *)self registerFileRepresentationForTypeIdentifier:identifier fileOptions:options visibility:0 loadHandler:v10];
}

uint64_t __86__UIItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_loadHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__UIItemProvider_registerFileRepresentationForTypeIdentifier_fileOptions_loadHandler___block_invoke_2;
  v8[3] = &unk_1E71187F0;
  v9 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v8, 0);

  return 0;
}

- (void)copyDataRepresentationForTypeIdentifier:(id)identifier options:(id)options completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__UIItemProvider_copyDataRepresentationForTypeIdentifier_options_completionBlock___block_invoke;
  v10[3] = &unk_1E7119F30;
  v11 = blockCopy;
  v8 = blockCopy;
  v9 = [(UIItemProvider *)self loadDataRepresentationForTypeIdentifier:identifier completionHandler:v10];
}

uint64_t __82__UIItemProvider_copyDataRepresentationForTypeIdentifier_options_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)copyDataRepresentationForTypeIdentifier:(id)identifier options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__151;
  v29 = __Block_byref_object_dispose__151;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__151;
  v23 = __Block_byref_object_dispose__151;
  v24 = 0;
  v10 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__UIItemProvider_copyDataRepresentationForTypeIdentifier_options_error___block_invoke;
  v15[3] = &unk_1E711A230;
  v17 = &v25;
  v18 = &v19;
  v11 = v10;
  v16 = v11;
  [(UIItemProvider *)self copyDataRepresentationForTypeIdentifier:identifierCopy options:optionsCopy completionBlock:v15];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v12 = v20[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __72__UIItemProvider_copyDataRepresentationForTypeIdentifier_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)copyFileRepresentationForTypeIdentifier:(id)identifier toURL:(id)l options:(id)options completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__UIItemProvider_copyFileRepresentationForTypeIdentifier_toURL_options_completionBlock___block_invoke;
  v14[3] = &unk_1E711A258;
  v15 = lCopy;
  v16 = blockCopy;
  v11 = blockCopy;
  v12 = lCopy;
  v13 = [(UIItemProvider *)self loadFileRepresentationForTypeIdentifier:identifier completionHandler:v14];
}

void __88__UIItemProvider_copyFileRepresentationForTypeIdentifier_toURL_options_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = *(a1 + 32);
    v11 = 0;
    [v8 copyItemAtURL:v5 toURL:v9 error:&v11];
    v7 = v11;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v7 == 0, v7);
  }
}

- (id)copyFileRepresentationForTypeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = _UITemporaryFileWithUniqueName(@"com.apple.UIKit.ItemProvider", identifierCopy, 0);
  LOBYTE(error) = [(UIItemProvider *)self copyFileRepresentationForTypeIdentifier:identifierCopy toURL:v7 options:0 error:error];

  if ((error & 1) == 0)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v7 error:0];

    return 0;
  }

  return v7;
}

- (BOOL)copyFileRepresentationForTypeIdentifier:(id)identifier toURL:(id)l options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  lCopy = l;
  optionsCopy = options;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__151;
  v26 = __Block_byref_object_dispose__151;
  v27 = 0;
  v13 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__UIItemProvider_copyFileRepresentationForTypeIdentifier_toURL_options_error___block_invoke;
  v18[3] = &unk_1E711A280;
  v20 = &v28;
  v21 = &v22;
  v14 = v13;
  v19 = v14;
  [(UIItemProvider *)self copyFileRepresentationForTypeIdentifier:identifierCopy toURL:lCopy options:optionsCopy completionBlock:v18];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v15 = v23[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = *(v29 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

void __78__UIItemProvider_copyFileRepresentationForTypeIdentifier_toURL_options_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)instantiateObjectOfClass:(Class)class options:(id)options error:(id *)error
{
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__151;
  v28 = __Block_byref_object_dispose__151;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__151;
  v22 = __Block_byref_object_dispose__151;
  v23 = 0;
  v9 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__UIItemProvider_instantiateObjectOfClass_options_error___block_invoke;
  v14[3] = &unk_1E711A2A8;
  v16 = &v24;
  v17 = &v18;
  v10 = v9;
  v15 = v10;
  [(UIItemProvider *)self instantiateObjectOfClass:class options:optionsCopy completionBlock:v14];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v11 = v19[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __57__UIItemProvider_instantiateObjectOfClass_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end