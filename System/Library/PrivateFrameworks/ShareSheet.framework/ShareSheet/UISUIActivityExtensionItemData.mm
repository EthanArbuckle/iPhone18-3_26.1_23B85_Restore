@interface UISUIActivityExtensionItemData
+ (id)_extensionItemsByPreparingToSendExtensionItems:(id)a3 toDestinationExtension:(id)a4;
+ (id)_onBackgroundQueue_extensionItemsByPreparingToSendExtensionItems:(id)a3 toDestinationExtension:(id)a4;
- (UISUIActivityExtensionItemData)init;
- (UISUIActivityExtensionItemData)initWithCoder:(id)a3;
- (id)_getItemUUIDForItem:(id)a3 createIfNeeded:(BOOL)a4;
- (id)_uuidMappingDataForTemporaryAttachmentToExtensionItem:(id)a3 attachments:(id)a4;
- (id)attachmentNameForItem:(id)a3;
- (id)dataTypeForItem:(id)a3;
- (id)previewImageDataForItem:(id)a3;
- (id)previewImageForItem:(id)a3;
- (id)subjectForItem:(id)a3;
- (void)_appendTemporaryUUIDMappingAttachmentToExtensionItem:(id)a3;
- (void)_changeUUIDMappingFromExtensionItems:(id)a3 toClonedExtensionItems:(id)a4;
- (void)_loadItemProviderOrExtensionItemWithMetadataToUUIDFromTemporaryUUIDMappingAttachedToExtensionItems:(id)a3;
- (void)_removeTemporaryUUIDMappingAttachmentFromExtensionItems:(id)a3;
- (void)_setItemUUID:(id)a3 forItem:(id)a4;
- (void)addAttachmentName:(id)a3 forItem:(id)a4;
- (void)addDataType:(id)a3 forItem:(id)a4;
- (void)addPreviewImage:(id)a3 forItem:(id)a4;
- (void)addPreviewImageData:(id)a3 forItem:(id)a4;
- (void)addSubject:(id)a3 forItem:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)prepareForSendingAsCompletionToHostWithAuditToken:(id *)a3;
- (void)prepareForSendingToExtension:(id)a3;
@end

@implementation UISUIActivityExtensionItemData

- (UISUIActivityExtensionItemData)init
{
  v16.receiver = self;
  v16.super_class = UISUIActivityExtensionItemData;
  v2 = [(UISUIActivityExtensionItemData *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    attachmentNamesByItemUUID = v2->_attachmentNamesByItemUUID;
    v2->_attachmentNamesByItemUUID = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    subjectsByItemUUID = v2->_subjectsByItemUUID;
    v2->_subjectsByItemUUID = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    previewImagesByItemUUID = v2->_previewImagesByItemUUID;
    v2->_previewImagesByItemUUID = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    previewImageDataByItemUUID = v2->_previewImageDataByItemUUID;
    v2->_previewImageDataByItemUUID = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    dataTypesByItemUUID = v2->_dataTypesByItemUUID;
    v2->_dataTypesByItemUUID = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    openURLAnnotationsByURL = v2->_openURLAnnotationsByURL;
    v2->_openURLAnnotationsByURL = v13;

    v2->_itemProviderOrExtensionItemWithMetadataToUUID = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v2;
}

- (UISUIActivityExtensionItemData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UISUIActivityExtensionItemData *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_extensionItems);
    v7 = _UISecureDecodeExtensionItemsWithKey(v4, v6);
    extensionItems = v5->_extensionItems;
    v5->_extensionItems = v7;

    [(UISUIActivityExtensionItemData *)v5 _loadItemProviderOrExtensionItemWithMetadataToUUIDFromTemporaryUUIDMappingAttachedToExtensionItems:v5->_extensionItems];
    [(UISUIActivityExtensionItemData *)v5 _removeTemporaryUUIDMappingAttachmentFromExtensionItems:v5->_extensionItems];
    v9 = NSStringFromSelector(sel_attachmentNamesByItemUUID);
    v10 = _UISecureDecodeExtensionItemsWithKey(v4, v9);
    attachmentNamesByItemUUID = v5->_attachmentNamesByItemUUID;
    v5->_attachmentNamesByItemUUID = v10;

    v12 = NSStringFromSelector(sel_subjectsByItemUUID);
    v13 = _UISecureDecodeExtensionItemsWithKey(v4, v12);
    subjectsByItemUUID = v5->_subjectsByItemUUID;
    v5->_subjectsByItemUUID = v13;

    v15 = NSStringFromSelector(sel_previewImagesByItemUUID);
    v16 = _UISecureDecodeExtensionItemsWithKey(v4, v15);
    previewImagesByItemUUID = v5->_previewImagesByItemUUID;
    v5->_previewImagesByItemUUID = v16;

    v18 = NSStringFromSelector(sel_previewImageDataByItemUUID);
    v19 = _UISecureDecodeExtensionItemsWithKey(v4, v18);
    previewImageDataByItemUUID = v5->_previewImageDataByItemUUID;
    v5->_previewImageDataByItemUUID = v19;

    v21 = NSStringFromSelector(sel_dataTypesByItemUUID);
    v22 = _UISecureDecodeExtensionItemsWithKey(v4, v21);
    dataTypesByItemUUID = v5->_dataTypesByItemUUID;
    v5->_dataTypesByItemUUID = v22;

    v24 = _UISecureStandardPropertyListClasses();
    v25 = NSStringFromSelector(sel_openURLAnnotationsByURL);
    v26 = [v4 decodeObjectOfClasses:v24 forKey:v25];
    openURLAnnotationsByURL = v5->_openURLAnnotationsByURL;
    v5->_openURLAnnotationsByURL = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  extensionItems = self->_extensionItems;
  v5 = a3;
  [(UISUIActivityExtensionItemData *)self _appendTemporaryUUIDMappingAttachmentToExtensionItem:extensionItems];
  v6 = self->_extensionItems;
  v7 = NSStringFromSelector(sel_extensionItems);
  [v5 encodeObject:v6 forKey:v7];

  [(UISUIActivityExtensionItemData *)self _removeTemporaryUUIDMappingAttachmentFromExtensionItems:self->_extensionItems];
  attachmentNamesByItemUUID = self->_attachmentNamesByItemUUID;
  v9 = NSStringFromSelector(sel_attachmentNamesByItemUUID);
  [v5 encodeObject:attachmentNamesByItemUUID forKey:v9];

  subjectsByItemUUID = self->_subjectsByItemUUID;
  v11 = NSStringFromSelector(sel_subjectsByItemUUID);
  [v5 encodeObject:subjectsByItemUUID forKey:v11];

  previewImagesByItemUUID = self->_previewImagesByItemUUID;
  v13 = NSStringFromSelector(sel_previewImagesByItemUUID);
  [v5 encodeObject:previewImagesByItemUUID forKey:v13];

  previewImageDataByItemUUID = self->_previewImageDataByItemUUID;
  v15 = NSStringFromSelector(sel_previewImageDataByItemUUID);
  [v5 encodeObject:previewImageDataByItemUUID forKey:v15];

  dataTypesByItemUUID = self->_dataTypesByItemUUID;
  v17 = NSStringFromSelector(sel_dataTypesByItemUUID);
  [v5 encodeObject:dataTypesByItemUUID forKey:v17];

  openURLAnnotationsByURL = self->_openURLAnnotationsByURL;
  v19 = NSStringFromSelector(sel_openURLAnnotationsByURL);
  [v5 encodeObject:openURLAnnotationsByURL forKey:v19];
}

- (void)dealloc
{
  itemProviderOrExtensionItemWithMetadataToUUID = self->_itemProviderOrExtensionItemWithMetadataToUUID;
  if (itemProviderOrExtensionItemWithMetadataToUUID)
  {
    CFRelease(itemProviderOrExtensionItemWithMetadataToUUID);
  }

  v4.receiver = self;
  v4.super_class = UISUIActivityExtensionItemData;
  [(UISUIActivityExtensionItemData *)&v4 dealloc];
}

- (void)addAttachmentName:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a4 createIfNeeded:1];
  [(NSMutableDictionary *)self->_attachmentNamesByItemUUID setObject:v6 forKey:v7];
}

- (id)attachmentNameForItem:(id)a3
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a3 createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_attachmentNamesByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)addSubject:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a4 createIfNeeded:1];
  [(NSMutableDictionary *)self->_subjectsByItemUUID setObject:v6 forKey:v7];
}

- (id)subjectForItem:(id)a3
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a3 createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_subjectsByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)addPreviewImage:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a4 createIfNeeded:1];
  [(NSMutableDictionary *)self->_previewImagesByItemUUID setObject:v6 forKey:v7];
}

- (id)previewImageForItem:(id)a3
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a3 createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_previewImagesByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)addPreviewImageData:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a4 createIfNeeded:1];
  [(NSMutableDictionary *)self->_previewImageDataByItemUUID setObject:v6 forKey:v7];
}

- (id)previewImageDataForItem:(id)a3
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a3 createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_previewImageDataByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)addDataType:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a4 createIfNeeded:1];
  [(NSMutableDictionary *)self->_dataTypesByItemUUID setObject:v6 forKey:v7];
}

- (id)dataTypeForItem:(id)a3
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:a3 createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_dataTypesByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)prepareForSendingToExtension:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(UISUIActivityExtensionItemData *)self extensionItems];
  v7 = [v5 _extensionItemsByPreparingToSendExtensionItems:v6 toDestinationExtension:v4];

  [(UISUIActivityExtensionItemData *)self _changeUUIDMappingFromExtensionItems:self->_extensionItems toClonedExtensionItems:v7];
  [(UISUIActivityExtensionItemData *)self setExtensionItems:v7];
}

- (void)prepareForSendingAsCompletionToHostWithAuditToken:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [(UISUIActivityExtensionItemData *)self extensionItems];
  v5 = *&a3->var0[4];
  v30 = *a3->var0;
  v31 = v5;
  v6 = v4;
  v7 = NSClassFromString(&cfstr_Nsitemprovider.isa);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v20 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [v9 attachments];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            v14 = 0;
            do
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * v14);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [(objc_class *)v7 alloc];
                v21[0] = v30;
                v21[1] = v31;
                v17 = [(objc_class *)v16 initWithItemProvider:v15 destinationProcessAuditToken:v21];
                [v15 setValue:v17 forKey:@"_loadOperator"];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v20);
  }
}

+ (id)_onBackgroundQueue_extensionItemsByPreparingToSendExtensionItems:(id)a3 toDestinationExtension:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __122__UISUIActivityExtensionItemData__onBackgroundQueue_extensionItemsByPreparingToSendExtensionItems_toDestinationExtension___block_invoke;
  v12[3] = &unk_1E71FAA48;
  v8 = v6;
  v13 = v8;
  v15 = &v16;
  v9 = v7;
  v14 = v9;
  [v8 beginExtensionRequestWithInputItems:v5 completion:v12];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __122__UISUIActivityExtensionItemData__onBackgroundQueue_extensionItemsByPreparingToSendExtensionItems_toDestinationExtension___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) _extensionContextForUUID:a2];
  v3 = [v6 inputItems];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  dispatch_group_leave(*(a1 + 40));
}

+ (id)_extensionItemsByPreparingToSendExtensionItems:(id)a3 toDestinationExtension:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0;
  v6 = [v5 beginExtensionRequestWithInputItems:a3 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 identifier];
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Error preparing extension items to send to destination extension (%{public}@). Error = %{public}@", buf, 0x16u);
    }
  }

  v10 = [v5 _extensionContextForUUID:v6];
  v11 = [v10 inputItems];

  return v11;
}

- (void)_loadItemProviderOrExtensionItemWithMetadataToUUIDFromTemporaryUUIDMappingAttachedToExtensionItems:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __133__UISUIActivityExtensionItemData__loadItemProviderOrExtensionItemWithMetadataToUUIDFromTemporaryUUIDMappingAttachedToExtensionItems___block_invoke;
  v33[3] = &unk_1E71FAA70;
  v33[4] = self;
  v5 = MEMORY[0x18CFF58E0](v33);
  itemProviderOrExtensionItemWithMetadataToUUID = self->_itemProviderOrExtensionItemWithMetadataToUUID;
  if (itemProviderOrExtensionItemWithMetadataToUUID)
  {
    CFRelease(itemProviderOrExtensionItemWithMetadataToUUID);
  }

  self->_itemProviderOrExtensionItemWithMetadataToUUID = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v27 = *v30;
    v26 = *MEMORY[0x1E696A508];
    do
    {
      v9 = 0;
      v24 = v8;
      do
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = [v10 attachments];
        v12 = [v11 lastObject];
        v13 = [v12 userInfo];
        v14 = [v13 objectForKeyedSubscript:@"UUIDMappingData"];

        if (v14)
        {
          v28 = v14;
          v15 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v14 error:0];
          v16 = _UISecureStandardPropertyListClasses();
          v17 = [v15 decodeObjectOfClasses:v16 forKey:v26];

          if (v17)
          {
            v18 = [v17 objectForKeyedSubscript:@"extensionItemUUID"];
            (v5)[2](v5, v10, v18);

            v19 = [v17 objectForKeyedSubscript:@"attachmentUUIDs"];
            if ([v19 count])
            {
              v20 = 0;
              do
              {
                v21 = [v10 attachments];
                v22 = [v21 objectAtIndexedSubscript:v20];
                v23 = [v19 objectAtIndexedSubscript:v20];
                (v5)[2](v5, v22, v23);

                ++v20;
              }

              while (v20 < [v19 count]);
            }

            v8 = v24;
            v14 = v28;
          }
        }

        ++v9;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }
}

void __133__UISUIActivityExtensionItemData__loadItemProviderOrExtensionItemWithMetadataToUUIDFromTemporaryUUIDMappingAttachedToExtensionItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v6 isEqual:v5];

  if ((v7 & 1) == 0)
  {
    [*(a1 + 32) _setItemUUID:v5 forItem:v8];
  }
}

- (void)_appendTemporaryUUIDMappingAttachmentToExtensionItem:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 attachments];
        v10 = [v9 mutableCopy];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [MEMORY[0x1E695DF70] array];
        }

        v13 = v12;

        v14 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:&stru_1EFE999E0 typeIdentifier:@"com.apple.UISUIActivityExtensionItemData.uuidMapping"];
        v22 = @"UUIDMappingData";
        v15 = [(UISUIActivityExtensionItemData *)self _uuidMappingDataForTemporaryAttachmentToExtensionItem:v8 attachments:v13];
        v23 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        [v14 setUserInfo:v16];

        [v13 addObject:v14];
        [v8 setAttachments:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)_removeTemporaryUUIDMappingAttachmentFromExtensionItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 attachments];
        v10 = [v9 lastObject];
        v11 = [v10 userInfo];
        v12 = [v11 objectForKey:@"UUIDMappingData"];

        if (v12)
        {
          v13 = [v8 attachments];
          v14 = [v13 mutableCopy];

          [v14 removeLastObject];
          [v8 setAttachments:v14];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (id)_uuidMappingDataForTemporaryAttachmentToExtensionItem:(id)a3 attachments:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v25 = v6;
  v9 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:v6 createIfNeeded:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;

  v12 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:*(*(&v26 + 1) + 8 * i) createIfNeeded:0, v24];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [MEMORY[0x1E695DFB0] null];
        }

        v21 = v20;

        [v12 addObject:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  [v8 setObject:v24 forKeyedSubscript:@"extensionItemUUID"];
  [v8 setObject:v12 forKeyedSubscript:@"attachmentUUIDs"];
  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  return v22;
}

- (void)_changeUUIDMappingFromExtensionItems:(id)a3 toClonedExtensionItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __94__UISUIActivityExtensionItemData__changeUUIDMappingFromExtensionItems_toClonedExtensionItems___block_invoke;
  v27[3] = &unk_1E71F9930;
  v27[4] = self;
  v8 = MEMORY[0x18CFF58E0](v27);
  v26 = v6;
  v9 = [v6 count];
  v10 = [v7 count];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v25 = v11;
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [v26 objectAtIndexedSubscript:v12];
      v14 = [v7 objectAtIndexedSubscript:v12];
      (v8)[2](v8, v13, v14);

      v15 = [v26 objectAtIndexedSubscript:v12];
      v16 = [v15 attachments];

      v17 = [v7 objectAtIndexedSubscript:v12];
      v18 = [v17 attachments];

      v19 = [v16 count];
      v20 = [v18 count];
      if (v19 >= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          v23 = [v16 objectAtIndexedSubscript:i];
          v24 = [v18 objectAtIndexedSubscript:i];
          (v8)[2](v8, v23, v24);
        }
      }

      ++v12;
    }

    while (v12 != v25);
  }
}

void __94__UISUIActivityExtensionItemData__changeUUIDMappingFromExtensionItems_toClonedExtensionItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _getItemUUIDForItem:v7 createIfNeeded:0];
  if (v6)
  {
    [*(a1 + 32) _setItemUUID:v6 forItem:v5];
    [*(a1 + 32) _setItemUUID:0 forItem:v7];
  }
}

- (void)_setItemUUID:(id)a3 forItem:(id)a4
{
  value = a3;
  v6 = a4;
  if (value || !v6)
  {
    if (value && v6)
    {
      CFDictionarySetValue(self->_itemProviderOrExtensionItemWithMetadataToUUID, v6, value);
    }
  }

  else
  {
    CFDictionaryRemoveValue(self->_itemProviderOrExtensionItemWithMetadataToUUID, v6);
  }
}

- (id)_getItemUUIDForItem:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = CFDictionaryGetValue(self->_itemProviderOrExtensionItemWithMetadataToUUID, v6);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    [(UISUIActivityExtensionItemData *)self _setItemUUID:v7 forItem:v6];
  }

  return v7;
}

@end