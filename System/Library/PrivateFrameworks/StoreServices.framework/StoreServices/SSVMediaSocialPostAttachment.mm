@interface SSVMediaSocialPostAttachment
- (SSVMediaSocialPostAttachment)initWithXPCEncoding:(id)encoding;
- (id)childAttachmentForRelationship:(id)relationship;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)enumerateChildAttachmentsUsingBlock:(id)block;
- (void)setChildAttachment:(id)attachment forRelationship:(id)relationship;
@end

@implementation SSVMediaSocialPostAttachment

- (id)childAttachmentForRelationship:(id)relationship
{
  v3 = [(NSMutableDictionary *)self->_childAttachments objectForKey:relationship];
  v4 = [v3 copy];

  return v4;
}

- (void)enumerateChildAttachmentsUsingBlock:(id)block
{
  blockCopy = block;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  childAttachments = self->_childAttachments;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SSVMediaSocialPostAttachment_enumerateChildAttachmentsUsingBlock___block_invoke;
  v7[3] = &unk_1E84B28D8;
  v6 = blockCopy;
  v8 = v6;
  v9 = v10;
  [(NSMutableDictionary *)childAttachments enumerateKeysAndObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __68__SSVMediaSocialPostAttachment_enumerateChildAttachmentsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  (*(*(a1 + 32) + 16))();

  ++*(*(*(a1 + 40) + 8) + 24);
}

- (void)setChildAttachment:(id)attachment forRelationship:(id)relationship
{
  attachmentCopy = attachment;
  relationshipCopy = relationship;
  v7 = attachmentCopy;
  v8 = relationshipCopy;
  childAttachments = self->_childAttachments;
  if (attachmentCopy)
  {
    if (!childAttachments)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_childAttachments;
      self->_childAttachments = v10;

      v7 = attachmentCopy;
    }

    v12 = [v7 copy];
    [(NSMutableDictionary *)self->_childAttachments setObject:v12 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)childAttachments removeObjectForKey:v8];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAlbumIdentifier:self->_albumIdentifier];
  [v5 setArtists:self->_artists];
  [v5 setAssetData:self->_assetData];
  [v5 setAssetURL:self->_assetURL];
  [v5 setAttachmentDescription:self->_attachmentDescription];
  [v5 setCategoryName:self->_categoryName];
  v6 = [(NSMutableDictionary *)self->_childAttachments mutableCopyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  [v5 setDeletesAssetWhenFinished:self->_deletesAssetWhenFinished];
  [v5 setExplicitContent:self->_explicitContent];
  [v5 setPreviewFrameTimestamp:self->_previewFrameTimestamp];
  [v5 setSubtitle:self->_subtitle];
  [v5 setTitle:self->_title];
  [v5 setUTI:self->_uti];
  return v5;
}

- (SSVMediaSocialPostAttachment)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && (v6 = MEMORY[0x1DA6E0380](encodingCopy), v7 = MEMORY[0x1E69E9E80], v6 == MEMORY[0x1E69E9E80]))
  {
    v8 = [(SSVMediaSocialPostAttachment *)self init];
    if (v8)
    {
      v10 = xpc_dictionary_get_value(v5, "0");
      v11 = objc_opt_class();
      v12 = SSXPCCreateNSArrayFromXPCEncodedArray(v10, v11);
      artists = v8->_artists;
      v8->_artists = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v14);
      assetData = v8->_assetData;
      v8->_assetData = v15;

      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v17);
      if (v18)
      {
        v19 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v18];
        assetURL = v8->_assetURL;
        v8->_assetURL = v19;
      }

      v21 = objc_opt_class();
      v22 = SSXPCDictionaryCopyObjectWithClass(v5, "C", v21);
      albumIdentifier = v8->_albumIdentifier;
      v8->_albumIdentifier = v22;

      v24 = objc_opt_class();
      v25 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v24);
      attachmentDescription = v8->_attachmentDescription;
      v8->_attachmentDescription = v25;

      v27 = objc_opt_class();
      v28 = SSXPCDictionaryCopyObjectWithClass(v5, "3", v27);
      categoryName = v8->_categoryName;
      v8->_categoryName = v28;

      v8->_deletesAssetWhenFinished = xpc_dictionary_get_BOOL(v5, "9");
      v8->_explicitContent = xpc_dictionary_get_BOOL(v5, "5");
      v8->_previewFrameTimestamp = xpc_dictionary_get_double(v5, "B");
      v30 = objc_opt_class();
      v31 = SSXPCDictionaryCopyObjectWithClass(v5, "6", v30);
      subtitle = v8->_subtitle;
      v8->_subtitle = v31;

      v33 = objc_opt_class();
      v34 = SSXPCDictionaryCopyObjectWithClass(v5, "7", v33);
      title = v8->_title;
      v8->_title = v34;

      v36 = objc_opt_class();
      v37 = SSXPCDictionaryCopyObjectWithClass(v5, "8", v36);
      uti = v8->_uti;
      v8->_uti = v37;

      v39 = xpc_dictionary_get_value(v5, "A");
      v40 = v39;
      if (v39 && MEMORY[0x1DA6E0380](v39) == v7)
      {
        v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
        childAttachments = v8->_childAttachments;
        v8->_childAttachments = v41;

        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __52__SSVMediaSocialPostAttachment_initWithXPCEncoding___block_invoke;
        applier[3] = &unk_1E84AFAC8;
        v44 = v8;
        xpc_dictionary_apply(v40, applier);
      }
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

uint64_t __52__SSVMediaSocialPostAttachment_initWithXPCEncoding___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[SSVMediaSocialPostAttachment alloc] initWithXPCEncoding:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
    [*(*(a1 + 32) + 56) setObject:v6 forKey:v7];
  }

  return 1;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "C", self->_albumIdentifier);
  SSXPCDictionarySetObject(v3, "0", self->_artists);
  SSXPCDictionarySetObject(v3, "1", self->_assetData);
  absoluteString = [(NSURL *)self->_assetURL absoluteString];
  SSXPCDictionarySetObject(v3, "2", absoluteString);

  SSXPCDictionarySetObject(v3, "4", self->_attachmentDescription);
  SSXPCDictionarySetObject(v3, "3", self->_categoryName);
  xpc_dictionary_set_BOOL(v3, "9", self->_deletesAssetWhenFinished);
  xpc_dictionary_set_BOOL(v3, "5", self->_explicitContent);
  xpc_dictionary_set_double(v3, "B", self->_previewFrameTimestamp);
  SSXPCDictionarySetObject(v3, "6", self->_subtitle);
  SSXPCDictionarySetObject(v3, "7", self->_title);
  SSXPCDictionarySetObject(v3, "8", self->_uti);
  if (self->_childAttachments)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    childAttachments = self->_childAttachments;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__SSVMediaSocialPostAttachment_copyXPCEncoding__block_invoke;
    v9[3] = &unk_1E84B2900;
    v10 = v5;
    v7 = v5;
    [(NSMutableDictionary *)childAttachments enumerateKeysAndObjectsUsingBlock:v9];
    xpc_dictionary_set_value(v3, "A", v7);
  }

  return v3;
}

void __47__SSVMediaSocialPostAttachment_copyXPCEncoding__block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = a3;
  SSXPCDictionarySetObject(v5, [a2 UTF8String], v7);
}

@end