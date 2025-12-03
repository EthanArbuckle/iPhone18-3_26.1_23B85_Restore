@interface SYDocumentAttributes
+ (BOOL)_removeDocumentAttributesForFileAtURL:(id)l keepDocumentRelatedUniqueIdentifierKey:(BOOL)key error:(id *)error;
+ (id)documentAttributesForFileAtURL:(id)l error:(id *)error;
+ (id)documentAttributesFromData:(id)data error:(id *)error;
+ (void)_removeDocumentAttributesForFileAtURL:(int)l keepDocumentRelatedUniqueIdentifierKey:(void *)key completion:;
+ (void)fetchDocumentAttributesForFileAtURL:(id)l completion:(id)completion;
- (BOOL)saveToFileURL:(id)l additionalAttributes:(id)attributes error:(id *)error;
- (SYDocumentAttributes)initWithCoder:(id)coder;
- (SYDocumentAttributes)initWithSourceBundleIdentifier:(id)identifier indexKey:(id)key originalFileURL:(id)l receivedDate:(id)date sender:(id)sender;
- (void)encodeWithCoder:(id)coder;
- (void)initWithSourceBundleIdentifier:(uint64_t)identifier indexKey:(uint64_t)key fileURL:(uint64_t)l receivedDate:(uint64_t)date sender:;
- (void)saveToFileURL:(id)l additionalAttributes:(id)attributes completion:(id)completion;
@end

@implementation SYDocumentAttributes

- (BOOL)saveToFileURL:(id)l additionalAttributes:(id)attributes error:(id *)error
{
  lCopy = l;
  attributesCopy = attributes;
  v10 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__SYDocumentAttributes_Writing__saveToFileURL_additionalAttributes_error___block_invoke;
  v15[3] = &unk_27856B6C0;
  v17 = &v18;
  v11 = v10;
  v16 = v11;
  [(SYDocumentAttributes *)self saveToFileURL:lCopy additionalAttributes:attributesCopy completion:v15];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v19[5];
  if (error && v12)
  {
    *error = v12;
    v12 = v19[5];
  }

  v13 = v12 == 0;

  _Block_object_dispose(&v18, 8);
  return v13;
}

void __74__SYDocumentAttributes_Writing__saveToFileURL_additionalAttributes_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)saveToFileURL:(id)l additionalAttributes:(id)attributes completion:(id)completion
{
  v29[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  attributesCopy = attributes;
  completionCopy = completion;
  if (!lCopy)
  {
    v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"fileURL must not be nil" userInfo:0];
    objc_exception_throw(v21);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __79__SYDocumentAttributes_Writing__saveToFileURL_additionalAttributes_completion___block_invoke;
  v26[3] = &unk_27856B4C0;
  v11 = completionCopy;
  v27 = v11;
  v12 = MEMORY[0x22AA6A360](v26);
  v25 = 0;
  v13 = [(SYDocumentAttributes *)self dataRepresentationWithError:&v25];
  v14 = v25;
  if (v13)
  {
    v28[0] = @"com.apple.synapse:DocumentAttributes";
    v28[1] = @"SYDocumentRelatedUniqueIdentifierKey";
    v29[0] = v13;
    indexKey = [(SYDocumentAttributes *)self indexKey];
    v29[1] = indexKey;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

    if (attributesCopy)
    {
      v17 = [v16 mutableCopy];
      [v17 addEntriesFromDictionary:attributesCopy];
      v18 = [v17 copy];

      v16 = v18;
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __79__SYDocumentAttributes_Writing__saveToFileURL_additionalAttributes_completion___block_invoke_9;
    v22[3] = &unk_27856B6E8;
    v23 = lCopy;
    v24 = v12;
    [SYFileExtendedAttributes setPrivateAttributes:v16 forFileURL:v23 completion:v22];
  }

  else
  {
    v19 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentAttributes(Writing) saveToFileURL:v14 additionalAttributes:v19 completion:?];
    }

    (v12)[2](v12, v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __79__SYDocumentAttributes_Writing__saveToFileURL_additionalAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__SYDocumentAttributes_Writing__saveToFileURL_additionalAttributes_completion___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__SYDocumentAttributes_Writing__saveToFileURL_additionalAttributes_completion___block_invoke_9_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)_removeDocumentAttributesForFileAtURL:(id)l keepDocumentRelatedUniqueIdentifierKey:(BOOL)key error:(id *)error
{
  keyCopy = key;
  lCopy = l;
  if (lCopy)
  {
    v9 = dispatch_semaphore_create(0);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __116__SYDocumentAttributes_Writing___removeDocumentAttributesForFileAtURL_keepDocumentRelatedUniqueIdentifierKey_error___block_invoke;
    v14[3] = &unk_27856B710;
    v16 = &v24;
    v17 = buf;
    v10 = v9;
    v15 = v10;
    [(SYDocumentAttributes *)self _removeDocumentAttributesForFileAtURL:lCopy keepDocumentRelatedUniqueIdentifierKey:keyCopy completion:v14];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      v11 = *(v19 + 5);
      if (v11)
      {
        *error = v11;
      }
    }

    v12 = *(v25 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v12 = 0;
  }

  return v12 & 1;
}

void __116__SYDocumentAttributes_Writing___removeDocumentAttributesForFileAtURL_keepDocumentRelatedUniqueIdentifierKey_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)_removeDocumentAttributesForFileAtURL:(int)l keepDocumentRelatedUniqueIdentifierKey:(void *)key completion:
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  keyCopy = key;
  objc_opt_self();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __121__SYDocumentAttributes_Writing___removeDocumentAttributesForFileAtURL_keepDocumentRelatedUniqueIdentifierKey_completion___block_invoke;
  v22[3] = &unk_27856B738;
  v8 = keyCopy;
  v23 = v8;
  v9 = MEMORY[0x22AA6A360](v22);
  v10 = objc_alloc(MEMORY[0x277CBEB38]);
  v28[0] = @"com.apple.synapse:DocumentAttributes";
  data = [MEMORY[0x277CBEA90] data];
  v28[1] = @"SYDocumentRelatedUniqueIdentifierKey";
  v29[0] = data;
  v29[1] = &stru_2838DFF18;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v13 = [v10 initWithDictionary:v12];

  if (l)
  {
    [v13 removeObjectForKey:@"SYDocumentRelatedUniqueIdentifierKey"];
  }

  v14 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    path = [v6 path];
    *buf = 138478083;
    v25 = path;
    v26 = 1024;
    lCopy = l;
    _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_DEFAULT, "Removing document attributes from file path: %{private}@, keepRelatedUniqueId: %{BOOL}d", buf, 0x12u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __121__SYDocumentAttributes_Writing___removeDocumentAttributesForFileAtURL_keepDocumentRelatedUniqueIdentifierKey_completion___block_invoke_16;
  v19[3] = &unk_27856B6E8;
  v20 = v6;
  v21 = v9;
  v16 = v9;
  v17 = v6;
  [SYFileExtendedAttributes setPrivateAttributes:v13 forFileURL:v17 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __121__SYDocumentAttributes_Writing___removeDocumentAttributesForFileAtURL_keepDocumentRelatedUniqueIdentifierKey_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __121__SYDocumentAttributes_Writing___removeDocumentAttributesForFileAtURL_keepDocumentRelatedUniqueIdentifierKey_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __121__SYDocumentAttributes_Writing___removeDocumentAttributesForFileAtURL_keepDocumentRelatedUniqueIdentifierKey_completion___block_invoke_16_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (SYDocumentAttributes)initWithSourceBundleIdentifier:(id)identifier indexKey:(id)key originalFileURL:(id)l receivedDate:(id)date sender:(id)sender
{
  identifierCopy = identifier;
  keyCopy = key;
  lCopy = l;
  dateCopy = date;
  senderCopy = sender;
  v23.receiver = self;
  v23.super_class = SYDocumentAttributes;
  v17 = [(SYDocumentAttributes *)&v23 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    sourceBundleIdentifier = v17->_sourceBundleIdentifier;
    v17->_sourceBundleIdentifier = v18;

    v20 = [keyCopy copy];
    indexKey = v17->_indexKey;
    v17->_indexKey = v20;

    objc_storeStrong(&v17->_originalFileURL, l);
    objc_storeStrong(&v17->_receivedDate, date);
    objc_storeStrong(&v17->_sender, sender);
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceBundleIdentifier = [(SYDocumentAttributes *)self sourceBundleIdentifier];
  [coderCopy encodeObject:sourceBundleIdentifier forKey:@"SYDocumentAttributeSourceBundleIdentifierKey"];

  indexKey = [(SYDocumentAttributes *)self indexKey];
  [coderCopy encodeObject:indexKey forKey:@"SYDocumentAttributeIndexKey"];

  originalFileURL = [(SYDocumentAttributes *)self originalFileURL];
  [coderCopy encodeObject:originalFileURL forKey:@"SYDocumentAttributeFileURLKey"];

  receivedDate = [(SYDocumentAttributes *)self receivedDate];
  [coderCopy encodeObject:receivedDate forKey:@"SYDocumentAttributesReceivedDateKey"];

  sender = [(SYDocumentAttributes *)self sender];
  [coderCopy encodeObject:sender forKey:@"SYDocumentAttributeSenderKey"];
}

- (SYDocumentAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentAttributeSourceBundleIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentAttributeIndexKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentAttributeFileURLKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentAttributesReceivedDateKey"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] now];
  }

  v11 = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SYDocumentAttributeSenderKey"];
  v13 = v12;
  selfCopy = 0;
  if (v5 && v6 && v7 && v11 && v12)
  {
    self = [(SYDocumentAttributes *)self initWithSourceBundleIdentifier:v5 indexKey:v6 originalFileURL:v7 receivedDate:v11 sender:v12];
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)documentAttributesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy && [dataCopy length])
  {
    v13 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v13];
    v9 = v13;
    if (!v8)
    {
      v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(SYDocumentAttributes *)self documentAttributesFromData:v9 error:v10];
      }

      if (error && v9)
      {
        v11 = v9;
        *error = v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)documentAttributesForFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__SYDocumentAttributes_Reading__documentAttributesForFileAtURL_error___block_invoke;
  v12[3] = &unk_27856B8B0;
  v14 = &v22;
  v15 = &v16;
  v8 = v7;
  v13 = v8;
  [self fetchDocumentAttributesForFileAtURL:lCopy completion:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v9 = v17[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __70__SYDocumentAttributes_Reading__documentAttributesForFileAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (void)fetchDocumentAttributesForFileAtURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (!lCopy)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"fileURL must not be nil" userInfo:0];
    objc_exception_throw(v11);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__SYDocumentAttributes_Reading__fetchDocumentAttributesForFileAtURL_completion___block_invoke;
  v15[3] = &unk_27856B8D8;
  v16 = completionCopy;
  v7 = completionCopy;
  v8 = MEMORY[0x22AA6A360](v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__SYDocumentAttributes_Reading__fetchDocumentAttributesForFileAtURL_completion___block_invoke_2;
  v12[3] = &unk_27856B900;
  v13 = lCopy;
  v14 = v8;
  v9 = lCopy;
  v10 = v8;
  [SYFileExtendedAttributes fetchPrivateAttributesForFileURL:v9 completion:v12];
}

uint64_t __80__SYDocumentAttributes_Reading__fetchDocumentAttributesForFileAtURL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__SYDocumentAttributes_Reading__fetchDocumentAttributesForFileAtURL_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 objectForKey:@"com.apple.synapse:DocumentAttributes"];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = [MEMORY[0x277CBEB68] null];

    if (v6 == v7)
    {
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 length])
      {
        v14 = 0;
        v8 = [SYDocumentAttributes documentAttributesFromData:v6 error:&v14];
        v9 = v14;
        (*(*(a1 + 40) + 16))();

LABEL_15:
        goto LABEL_16;
      }

      v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = [*(a1 + 32) path];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      v12 = "Found empty private attributes data at URL: %@, error: %@";
    }

    else
    {
      v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

LABEL_14:
        (*(*(a1 + 40) + 16))();
        goto LABEL_15;
      }

      v11 = [*(a1 + 32) path];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      v12 = "Unexpected private attributes data type at URL: %@, error: %@";
    }

    _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);

    goto LABEL_13;
  }

  (*(*(a1 + 40) + 16))();
LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

void __79__SYDocumentAttributes_Writing__saveToFileURL_additionalAttributes_completion___block_invoke_9_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_225901000, v2, v3, "Unable to write document attributes to: %@, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __121__SYDocumentAttributes_Writing___removeDocumentAttributesForFileAtURL_keepDocumentRelatedUniqueIdentifierKey_completion___block_invoke_16_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_225901000, v2, v3, "Unable to remove document attributes from file path: %{private}@, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithSourceBundleIdentifier:(uint64_t)identifier indexKey:(uint64_t)key fileURL:(uint64_t)l receivedDate:(uint64_t)date sender:
{
  if (self)
  {
    return [self initWithSourceBundleIdentifier:a2 indexKey:identifier originalFileURL:key receivedDate:l sender:date];
  }

  return self;
}

+ (void)documentAttributesFromData:(NSObject *)a3 error:.cold.1(objc_class *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromClass(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Unable to init '%@' from data, error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end