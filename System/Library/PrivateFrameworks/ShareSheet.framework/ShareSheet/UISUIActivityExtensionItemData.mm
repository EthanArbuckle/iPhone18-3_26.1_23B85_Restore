@interface UISUIActivityExtensionItemData
+ (id)_extensionItemsByPreparingToSendExtensionItems:(id)items toDestinationExtension:(id)extension;
+ (id)_onBackgroundQueue_extensionItemsByPreparingToSendExtensionItems:(id)items toDestinationExtension:(id)extension;
- (UISUIActivityExtensionItemData)init;
- (UISUIActivityExtensionItemData)initWithCoder:(id)coder;
- (id)_getItemUUIDForItem:(id)item createIfNeeded:(BOOL)needed;
- (id)_uuidMappingDataForTemporaryAttachmentToExtensionItem:(id)item attachments:(id)attachments;
- (id)attachmentNameForItem:(id)item;
- (id)dataTypeForItem:(id)item;
- (id)previewImageDataForItem:(id)item;
- (id)previewImageForItem:(id)item;
- (id)subjectForItem:(id)item;
- (void)_appendTemporaryUUIDMappingAttachmentToExtensionItem:(id)item;
- (void)_changeUUIDMappingFromExtensionItems:(id)items toClonedExtensionItems:(id)extensionItems;
- (void)_loadItemProviderOrExtensionItemWithMetadataToUUIDFromTemporaryUUIDMappingAttachedToExtensionItems:(id)items;
- (void)_removeTemporaryUUIDMappingAttachmentFromExtensionItems:(id)items;
- (void)_setItemUUID:(id)d forItem:(id)item;
- (void)addAttachmentName:(id)name forItem:(id)item;
- (void)addDataType:(id)type forItem:(id)item;
- (void)addPreviewImage:(id)image forItem:(id)item;
- (void)addPreviewImageData:(id)data forItem:(id)item;
- (void)addSubject:(id)subject forItem:(id)item;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)prepareForSendingAsCompletionToHostWithAuditToken:(id *)token;
- (void)prepareForSendingToExtension:(id)extension;
@end

@implementation UISUIActivityExtensionItemData

- (UISUIActivityExtensionItemData)init
{
  v16.receiver = self;
  v16.super_class = UISUIActivityExtensionItemData;
  v2 = [(UISUIActivityExtensionItemData *)&v16 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    attachmentNamesByItemUUID = v2->_attachmentNamesByItemUUID;
    v2->_attachmentNamesByItemUUID = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    subjectsByItemUUID = v2->_subjectsByItemUUID;
    v2->_subjectsByItemUUID = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    previewImagesByItemUUID = v2->_previewImagesByItemUUID;
    v2->_previewImagesByItemUUID = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    previewImageDataByItemUUID = v2->_previewImageDataByItemUUID;
    v2->_previewImageDataByItemUUID = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    dataTypesByItemUUID = v2->_dataTypesByItemUUID;
    v2->_dataTypesByItemUUID = dictionary5;

    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
    openURLAnnotationsByURL = v2->_openURLAnnotationsByURL;
    v2->_openURLAnnotationsByURL = dictionary6;

    v2->_itemProviderOrExtensionItemWithMetadataToUUID = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v2;
}

- (UISUIActivityExtensionItemData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UISUIActivityExtensionItemData *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_extensionItems);
    v7 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v6);
    extensionItems = v5->_extensionItems;
    v5->_extensionItems = v7;

    [(UISUIActivityExtensionItemData *)v5 _loadItemProviderOrExtensionItemWithMetadataToUUIDFromTemporaryUUIDMappingAttachedToExtensionItems:v5->_extensionItems];
    [(UISUIActivityExtensionItemData *)v5 _removeTemporaryUUIDMappingAttachmentFromExtensionItems:v5->_extensionItems];
    v9 = NSStringFromSelector(sel_attachmentNamesByItemUUID);
    v10 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v9);
    attachmentNamesByItemUUID = v5->_attachmentNamesByItemUUID;
    v5->_attachmentNamesByItemUUID = v10;

    v12 = NSStringFromSelector(sel_subjectsByItemUUID);
    v13 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v12);
    subjectsByItemUUID = v5->_subjectsByItemUUID;
    v5->_subjectsByItemUUID = v13;

    v15 = NSStringFromSelector(sel_previewImagesByItemUUID);
    v16 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v15);
    previewImagesByItemUUID = v5->_previewImagesByItemUUID;
    v5->_previewImagesByItemUUID = v16;

    v18 = NSStringFromSelector(sel_previewImageDataByItemUUID);
    v19 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v18);
    previewImageDataByItemUUID = v5->_previewImageDataByItemUUID;
    v5->_previewImageDataByItemUUID = v19;

    v21 = NSStringFromSelector(sel_dataTypesByItemUUID);
    v22 = _UISecureDecodeExtensionItemsWithKey(coderCopy, v21);
    dataTypesByItemUUID = v5->_dataTypesByItemUUID;
    v5->_dataTypesByItemUUID = v22;

    v24 = _UISecureStandardPropertyListClasses();
    v25 = NSStringFromSelector(sel_openURLAnnotationsByURL);
    v26 = [coderCopy decodeObjectOfClasses:v24 forKey:v25];
    openURLAnnotationsByURL = v5->_openURLAnnotationsByURL;
    v5->_openURLAnnotationsByURL = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  extensionItems = self->_extensionItems;
  coderCopy = coder;
  [(UISUIActivityExtensionItemData *)self _appendTemporaryUUIDMappingAttachmentToExtensionItem:extensionItems];
  v6 = self->_extensionItems;
  v7 = NSStringFromSelector(sel_extensionItems);
  [coderCopy encodeObject:v6 forKey:v7];

  [(UISUIActivityExtensionItemData *)self _removeTemporaryUUIDMappingAttachmentFromExtensionItems:self->_extensionItems];
  attachmentNamesByItemUUID = self->_attachmentNamesByItemUUID;
  v9 = NSStringFromSelector(sel_attachmentNamesByItemUUID);
  [coderCopy encodeObject:attachmentNamesByItemUUID forKey:v9];

  subjectsByItemUUID = self->_subjectsByItemUUID;
  v11 = NSStringFromSelector(sel_subjectsByItemUUID);
  [coderCopy encodeObject:subjectsByItemUUID forKey:v11];

  previewImagesByItemUUID = self->_previewImagesByItemUUID;
  v13 = NSStringFromSelector(sel_previewImagesByItemUUID);
  [coderCopy encodeObject:previewImagesByItemUUID forKey:v13];

  previewImageDataByItemUUID = self->_previewImageDataByItemUUID;
  v15 = NSStringFromSelector(sel_previewImageDataByItemUUID);
  [coderCopy encodeObject:previewImageDataByItemUUID forKey:v15];

  dataTypesByItemUUID = self->_dataTypesByItemUUID;
  v17 = NSStringFromSelector(sel_dataTypesByItemUUID);
  [coderCopy encodeObject:dataTypesByItemUUID forKey:v17];

  openURLAnnotationsByURL = self->_openURLAnnotationsByURL;
  v19 = NSStringFromSelector(sel_openURLAnnotationsByURL);
  [coderCopy encodeObject:openURLAnnotationsByURL forKey:v19];
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

- (void)addAttachmentName:(id)name forItem:(id)item
{
  nameCopy = name;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:1];
  [(NSMutableDictionary *)self->_attachmentNamesByItemUUID setObject:nameCopy forKey:v7];
}

- (id)attachmentNameForItem:(id)item
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_attachmentNamesByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)addSubject:(id)subject forItem:(id)item
{
  subjectCopy = subject;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:1];
  [(NSMutableDictionary *)self->_subjectsByItemUUID setObject:subjectCopy forKey:v7];
}

- (id)subjectForItem:(id)item
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_subjectsByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)addPreviewImage:(id)image forItem:(id)item
{
  imageCopy = image;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:1];
  [(NSMutableDictionary *)self->_previewImagesByItemUUID setObject:imageCopy forKey:v7];
}

- (id)previewImageForItem:(id)item
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_previewImagesByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)addPreviewImageData:(id)data forItem:(id)item
{
  dataCopy = data;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:1];
  [(NSMutableDictionary *)self->_previewImageDataByItemUUID setObject:dataCopy forKey:v7];
}

- (id)previewImageDataForItem:(id)item
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_previewImageDataByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)addDataType:(id)type forItem:(id)item
{
  typeCopy = type;
  v7 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:1];
  [(NSMutableDictionary *)self->_dataTypesByItemUUID setObject:typeCopy forKey:v7];
}

- (id)dataTypeForItem:(id)item
{
  v4 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:item createIfNeeded:0];
  v5 = [(NSMutableDictionary *)self->_dataTypesByItemUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)prepareForSendingToExtension:(id)extension
{
  extensionCopy = extension;
  v5 = objc_opt_class();
  extensionItems = [(UISUIActivityExtensionItemData *)self extensionItems];
  v7 = [v5 _extensionItemsByPreparingToSendExtensionItems:extensionItems toDestinationExtension:extensionCopy];

  [(UISUIActivityExtensionItemData *)self _changeUUIDMappingFromExtensionItems:self->_extensionItems toClonedExtensionItems:v7];
  [(UISUIActivityExtensionItemData *)self setExtensionItems:v7];
}

- (void)prepareForSendingAsCompletionToHostWithAuditToken:(id *)token
{
  v34 = *MEMORY[0x1E69E9840];
  extensionItems = [(UISUIActivityExtensionItemData *)self extensionItems];
  v5 = *&token->var0[4];
  v30 = *token->var0;
  v31 = v5;
  v6 = extensionItems;
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
        attachments = [v9 attachments];
        v11 = [attachments countByEnumeratingWithState:&v22 objects:v32 count:16];
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
                objc_enumerationMutation(attachments);
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
            v12 = [attachments countByEnumeratingWithState:&v22 objects:v32 count:16];
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

+ (id)_onBackgroundQueue_extensionItemsByPreparingToSendExtensionItems:(id)items toDestinationExtension:(id)extension
{
  itemsCopy = items;
  extensionCopy = extension;
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
  v8 = extensionCopy;
  v13 = v8;
  v15 = &v16;
  v9 = v7;
  v14 = v9;
  [v8 beginExtensionRequestWithInputItems:itemsCopy completion:v12];
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

+ (id)_extensionItemsByPreparingToSendExtensionItems:(id)items toDestinationExtension:(id)extension
{
  v18 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v13 = 0;
  v6 = [extensionCopy beginExtensionRequestWithInputItems:items error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [extensionCopy identifier];
      *buf = 138543618;
      v15 = identifier;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Error preparing extension items to send to destination extension (%{public}@). Error = %{public}@", buf, 0x16u);
    }
  }

  v10 = [extensionCopy _extensionContextForUUID:v6];
  inputItems = [v10 inputItems];

  return inputItems;
}

- (void)_loadItemProviderOrExtensionItemWithMetadataToUUIDFromTemporaryUUIDMappingAttachedToExtensionItems:(id)items
{
  v35 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
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
  obj = itemsCopy;
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
        attachments = [v10 attachments];
        lastObject = [attachments lastObject];
        userInfo = [lastObject userInfo];
        v14 = [userInfo objectForKeyedSubscript:@"UUIDMappingData"];

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
                attachments2 = [v10 attachments];
                v22 = [attachments2 objectAtIndexedSubscript:v20];
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

- (void)_appendTemporaryUUIDMappingAttachmentToExtensionItem:(id)item
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = item;
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
        attachments = [v8 attachments];
        v10 = [attachments mutableCopy];
        v11 = v10;
        if (v10)
        {
          array = v10;
        }

        else
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v13 = array;

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

- (void)_removeTemporaryUUIDMappingAttachmentFromExtensionItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        attachments = [v8 attachments];
        lastObject = [attachments lastObject];
        userInfo = [lastObject userInfo];
        v12 = [userInfo objectForKey:@"UUIDMappingData"];

        if (v12)
        {
          attachments2 = [v8 attachments];
          v14 = [attachments2 mutableCopy];

          [v14 removeLastObject];
          [v8 setAttachments:v14];
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (id)_uuidMappingDataForTemporaryAttachmentToExtensionItem:(id)item attachments:(id)attachments
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  attachmentsCopy = attachments;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = itemCopy;
  v9 = [(UISUIActivityExtensionItemData *)self _getItemUUIDForItem:itemCopy createIfNeeded:0];
  v10 = v9;
  if (v9)
  {
    null = v9;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;

  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = attachmentsCopy;
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
          null2 = v18;
        }

        else
        {
          null2 = [MEMORY[0x1E695DFB0] null];
        }

        v21 = null2;

        [array addObject:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  [dictionary setObject:v24 forKeyedSubscript:@"extensionItemUUID"];
  [dictionary setObject:array forKeyedSubscript:@"attachmentUUIDs"];
  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:0];

  return v22;
}

- (void)_changeUUIDMappingFromExtensionItems:(id)items toClonedExtensionItems:(id)extensionItems
{
  itemsCopy = items;
  extensionItemsCopy = extensionItems;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __94__UISUIActivityExtensionItemData__changeUUIDMappingFromExtensionItems_toClonedExtensionItems___block_invoke;
  v27[3] = &unk_1E71F9930;
  v27[4] = self;
  v8 = MEMORY[0x18CFF58E0](v27);
  v26 = itemsCopy;
  v9 = [itemsCopy count];
  v10 = [extensionItemsCopy count];
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
      v14 = [extensionItemsCopy objectAtIndexedSubscript:v12];
      (v8)[2](v8, v13, v14);

      v15 = [v26 objectAtIndexedSubscript:v12];
      attachments = [v15 attachments];

      v17 = [extensionItemsCopy objectAtIndexedSubscript:v12];
      attachments2 = [v17 attachments];

      v19 = [attachments count];
      v20 = [attachments2 count];
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
          v23 = [attachments objectAtIndexedSubscript:i];
          v24 = [attachments2 objectAtIndexedSubscript:i];
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

- (void)_setItemUUID:(id)d forItem:(id)item
{
  value = d;
  itemCopy = item;
  if (value || !itemCopy)
  {
    if (value && itemCopy)
    {
      CFDictionarySetValue(self->_itemProviderOrExtensionItemWithMetadataToUUID, itemCopy, value);
    }
  }

  else
  {
    CFDictionaryRemoveValue(self->_itemProviderOrExtensionItemWithMetadataToUUID, itemCopy);
  }
}

- (id)_getItemUUIDForItem:(id)item createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  itemCopy = item;
  uUID = CFDictionaryGetValue(self->_itemProviderOrExtensionItemWithMetadataToUUID, itemCopy);
  if (uUID)
  {
    v8 = 1;
  }

  else
  {
    v8 = !neededCopy;
  }

  if (!v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(UISUIActivityExtensionItemData *)self _setItemUUID:uUID forItem:itemCopy];
  }

  return uUID;
}

@end