@interface SYFormFillingDocumentAttributes
+ (BOOL)removeFormFillingDocumentAttributesForFileAtURL:(id)l error:(id *)error;
+ (id)dictionaryRepresentationWithNullValues;
+ (id)formFillingDocumentAttributesForFileAtURL:(id)l error:(id *)error;
+ (void)_removeFormFillingDocumentAttributesForFileAtURL:(void *)l completion:;
+ (void)formFillingDocumentAttributesForFileAtURL:(id)l completion:(id)completion;
- (BOOL)saveToFileURL:(id)l error:(id *)error;
- (SYFormFillingDocumentAttributes)initWithFormFillingCoachingDisabled:(BOOL)disabled;
- (id)dictionaryRepresentation;
- (uint64_t)_formFillingCoachingDisabledValueFromDictionary:(uint64_t)dictionary;
- (uint64_t)initWithDictionary:(uint64_t)result;
- (void)_saveToFileURL:(void *)l completion:;
@end

@implementation SYFormFillingDocumentAttributes

- (SYFormFillingDocumentAttributes)initWithFormFillingCoachingDisabled:(BOOL)disabled
{
  v5.receiver = self;
  v5.super_class = SYFormFillingDocumentAttributes;
  result = [(SYFormFillingDocumentAttributes *)&v5 init];
  if (result)
  {
    result->_formFillingCoachingDisabled = disabled;
  }

  return result;
}

+ (id)dictionaryRepresentationWithNullValues
{
  v4[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3 = @"SYFormFillingCoachingDisabled";
  v4[0] = &stru_2838DFF18;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

+ (id)formFillingDocumentAttributesForFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  if (lCopy)
  {
    v7 = dispatch_semaphore_create(0);
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__5;
    v26 = __Block_byref_object_dispose__5;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__SYFormFillingDocumentAttributes_formFillingDocumentAttributesForFileAtURL_error___block_invoke;
    v12[3] = &unk_27856C190;
    v14 = buf;
    v15 = &v16;
    v8 = v7;
    v13 = v8;
    [self formFillingDocumentAttributesForFileAtURL:lCopy completion:v12];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      v9 = v17[5];
      if (v9)
      {
        *error = v9;
      }
    }

    v10 = *(v23 + 5);

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v10 = 0;
  }

  return v10;
}

void __83__SYFormFillingDocumentAttributes_formFillingDocumentAttributesForFileAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (void)formFillingDocumentAttributesForFileAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (!lCopy)
    v9 = {;
    objc_exception_throw(v9);
  }

  v7 = completionCopy;
  if (!os_variant_has_internal_diagnostics() || ([SYFormFillingDocumentAttributes formFillingDocumentAttributesForFileAtURL:v7 completion:&v12]& 1) != 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__SYFormFillingDocumentAttributes_formFillingDocumentAttributesForFileAtURL_completion___block_invoke;
    v10[3] = &unk_27856C1B8;
    v11 = v7;
    [SYFileExtendedAttributes fetchPrivateAttributesForFileURL:lCopy completion:v10];
    v8 = v11;
  }

  else
  {
    v8 = v12;
  }
}

- (BOOL)saveToFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__SYFormFillingDocumentAttributes_saveToFileURL_error___block_invoke;
  v12[3] = &unk_27856C1E0;
  v14 = &v22;
  v15 = &v16;
  v8 = v7;
  v13 = v8;
  [(SYFormFillingDocumentAttributes *)self _saveToFileURL:lCopy completion:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v9 = v17[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __55__SYFormFillingDocumentAttributes_saveToFileURL_error___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __61__SYFormFillingDocumentAttributes__saveToFileURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __61__SYFormFillingDocumentAttributes__saveToFileURL_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__SYFormFillingDocumentAttributes__saveToFileURL_completion___block_invoke_2_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)removeFormFillingDocumentAttributesForFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  if (lCopy)
  {
    v7 = dispatch_semaphore_create(0);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__SYFormFillingDocumentAttributes_removeFormFillingDocumentAttributesForFileAtURL_error___block_invoke;
    v12[3] = &unk_27856B710;
    v14 = &v22;
    v15 = buf;
    v8 = v7;
    v13 = v8;
    [(SYFormFillingDocumentAttributes *)self _removeFormFillingDocumentAttributesForFileAtURL:lCopy completion:v12];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      v9 = *(v17 + 5);
      if (v9)
      {
        *error = v9;
      }
    }

    v10 = *(v23 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v10 = 0;
  }

  return v10 & 1;
}

void __89__SYFormFillingDocumentAttributes_removeFormFillingDocumentAttributesForFileAtURL_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)_removeFormFillingDocumentAttributesForFileAtURL:(void *)l completion:
{
  v4 = a2;
  lCopy = l;
  objc_opt_self();
  v6 = +[SYFormFillingDocumentAttributes dictionaryRepresentationWithNullValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__SYFormFillingDocumentAttributes__removeFormFillingDocumentAttributesForFileAtURL_completion___block_invoke;
  v9[3] = &unk_27856B6E8;
  v10 = v4;
  v11 = lCopy;
  v7 = lCopy;
  v8 = v4;
  [SYFileExtendedAttributes setPrivateAttributes:v6 forFileURL:v8 completion:v9];
}

void __95__SYFormFillingDocumentAttributes__removeFormFillingDocumentAttributesForFileAtURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__SYFormFillingDocumentAttributes__removeFormFillingDocumentAttributesForFileAtURL_completion___block_invoke_cold_1(a1);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0, v3);
  }
}

- (uint64_t)initWithDictionary:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = [(SYFormFillingDocumentAttributes *)result _formFillingCoachingDisabledValueFromDictionary:a2];

    return [v2 initWithFormFillingCoachingDisabled:v3];
  }

  return result;
}

- (uint64_t)_formFillingCoachingDisabledValueFromDictionary:(uint64_t)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v2 = [a2 objectForKey:@"SYFormFillingCoachingDisabled"];
  if (!v2)
  {
    goto LABEL_7;
  }

  null = [MEMORY[0x277CBEB68] null];
  v4 = null;
  if (v2 == null)
  {

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [v2 isEqualToString:@"1"];
LABEL_8:

  return v6;
}

- (id)dictionaryRepresentation
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = @"SYFormFillingCoachingDisabled";
    formFillingCoachingDisabled = [self formFillingCoachingDisabled];
    v2 = @"0";
    if (formFillingCoachingDisabled)
    {
      v2 = @"1";
    }

    v6[0] = v2;
    self = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return self;
}

void __88__SYFormFillingDocumentAttributes_formFillingDocumentAttributesForFileAtURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [SYFormFillingDocumentAttributes alloc];
  v7 = v6;
  if (v6)
  {
    v7 = [(SYFormFillingDocumentAttributes *)v6 initWithFormFillingCoachingDisabled:[(SYFormFillingDocumentAttributes *)v6 _formFillingCoachingDisabledValueFromDictionary:v9]];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v5);
  }
}

- (void)_saveToFileURL:(void *)l completion:
{
  v5 = a2;
  lCopy = l;
  v7 = lCopy;
  if (self)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__SYFormFillingDocumentAttributes__saveToFileURL_completion___block_invoke;
    v14[3] = &unk_27856B4C0;
    v15 = lCopy;
    v8 = MEMORY[0x22AA6A360](v14);
    dictionaryRepresentation = [(SYFormFillingDocumentAttributes *)self dictionaryRepresentation];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__SYFormFillingDocumentAttributes__saveToFileURL_completion___block_invoke_2;
    v11[3] = &unk_27856B6E8;
    v12 = v5;
    v13 = v8;
    v10 = v8;
    [SYFileExtendedAttributes setPrivateAttributes:dictionaryRepresentation forFileURL:v12 completion:v11];
  }
}

+ (uint64_t)formFillingDocumentAttributesForFileAtURL:(uint64_t)a1 completion:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 objectForKey:@"SYFormFillingCoachingDisabled"];

  if (v5)
  {
    v6 = [v4 BOOLForKey:@"SYFormFillingCoachingDisabled"];
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = @"SYFormFillingCoachingDisabled";
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Found internal setting to override %@ state to %{BOOL}d", &v11, 0x12u);
    }

    if (a1)
    {
      v8 = [[SYFormFillingDocumentAttributes alloc] initWithFormFillingCoachingDisabled:v6];
      (*(a1 + 16))(a1, v8, 0);
    }

    result = 0;
    *a2 = v4;
  }

  else
  {

    result = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __61__SYFormFillingDocumentAttributes__saveToFileURL_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_225901000, v2, v3, "Unable to write form filling document attributes to: %@, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __95__SYFormFillingDocumentAttributes__removeFormFillingDocumentAttributesForFileAtURL_completion___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_225901000, v2, v3, "Unable to remove form filling document attributes from file: %@, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end