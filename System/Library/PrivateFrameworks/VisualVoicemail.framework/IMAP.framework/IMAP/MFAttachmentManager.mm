@interface MFAttachmentManager
+ (id)allManagers;
+ (id)defaultManager;
+ (id)supportedDocumentUTIs;
- (BOOL)_setupAttachment:(id)attachment withMimeBody:(id)body error:(id *)error;
- (MFAttachmentManager)init;
- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error;
- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider syncLock:(id *)lock;
- (id)_filePathForAttachment:(id)attachment;
- (id)attachmentForContentID:(id)d preferredSchemes:(id)schemes;
- (id)attachmentForTextAttachment:(id)attachment error:(id *)error;
- (id)attachmentForURL:(id)l withMimeBody:(id)body error:(id *)error;
- (id)attachmentsForURLs:(id)ls error:(id *)error;
- (id)metadataForAttachment:(id)attachment forKey:(id)key;
- (void)_fetchCompletedForAttachment:(id)attachment error:(id)error;
- (void)addProvider:(id)provider forBaseURL:(id)l;
- (void)cancelFetchForAttachment:(id)attachment;
- (void)clearMetadataForAttachment:(id)attachment;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)attachment;
- (void)fetchDataSynchronouslyForAttachment:(id)attachment;
- (void)removeProvider:(id)provider;
- (void)removeProviderForBaseURL:(id)l;
- (void)setContentID:(id)d forAttachment:(id)attachment;
- (void)setMetadataForAttachment:(id)attachment toValue:(id)value forKey:(id)key;
@end

@implementation MFAttachmentManager

+ (id)allManagers
{
  if (allManagers_onceToken != -1)
  {
    +[MFAttachmentManager allManagers];
  }

  v3 = allManagers_sAllManagers;

  return v3;
}

uint64_t __34__MFAttachmentManager_allManagers__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D24FC8]);
  v1 = allManagers_sAllManagers;
  allManagers_sAllManagers = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)defaultManager
{
  allManagers = [self allManagers];
  allObjects = [allManagers allObjects];
  firstObject = [allObjects firstObject];

  return firstObject;
}

- (MFAttachmentManager)init
{
  v14.receiver = self;
  v14.super_class = MFAttachmentManager;
  v2 = [(MFAttachmentManager *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attachments = v2->_attachments;
    v2->_attachments = v3;

    v5 = dispatch_queue_create("com.apple.mail.attachmentManagerAttachmentArray", 0);
    arrayAccessQueue = v2->_arrayAccessQueue;
    v2->_arrayAccessQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    metaDataLock = v2->_metaDataLock;
    v2->_metaDataLock = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.message.attachmentManager.imagescaling", v9);
    imageScalingQueue = v2->_imageScalingQueue;
    v2->_imageScalingQueue = v10;

    allManagers = [objc_opt_class() allManagers];
    [allManagers addObject:v2];
  }

  return v2;
}

- (void)dealloc
{
  allManagers = [objc_opt_class() allManagers];
  [allManagers removeObject:self];

  v4.receiver = self;
  v4.super_class = MFAttachmentManager;
  [(MFAttachmentManager *)&v4 dealloc];
}

+ (id)supportedDocumentUTIs
{
  if (supportedDocumentUTIs_onceToken != -1)
  {
    +[MFAttachmentManager supportedDocumentUTIs];
  }

  v3 = _supportedUTIs;

  return v3;
}

void __44__MFAttachmentManager_supportedDocumentUTIs__block_invoke()
{
  v15[25] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC2128];
  v15[0] = *MEMORY[0x277CC2048];
  v15[1] = v0;
  v1 = *MEMORY[0x277CC2188];
  v15[2] = *MEMORY[0x277CC2028];
  v15[3] = v1;
  v2 = *MEMORY[0x277CC2098];
  v15[4] = *MEMORY[0x277CC2050];
  v15[5] = v2;
  v3 = *MEMORY[0x277CC2168];
  v15[6] = *MEMORY[0x277CC21B0];
  v15[7] = v3;
  v4 = *MEMORY[0x277CC20D8];
  v15[8] = *MEMORY[0x277CC2160];
  v15[9] = v4;
  v5 = *MEMORY[0x277CC20B0];
  v15[10] = *MEMORY[0x277CC2148];
  v15[11] = v5;
  v6 = *MEMORY[0x277CC2090];
  v15[12] = *MEMORY[0x277CC2020];
  v15[13] = v6;
  v7 = *MEMORY[0x277CC21B8];
  v15[14] = *MEMORY[0x277CC2030];
  v15[15] = v7;
  v8 = *MEMORY[0x277CC2140];
  v15[16] = *MEMORY[0x277CC2170];
  v15[17] = v8;
  v9 = *MEMORY[0x277CC20B8];
  v15[18] = *MEMORY[0x277CC21A0];
  v15[19] = v9;
  v10 = *MEMORY[0x277CC1F68];
  v15[20] = *MEMORY[0x277CC2080];
  v15[21] = v10;
  v11 = *MEMORY[0x277CC21A8];
  v15[22] = *MEMORY[0x277CC2118];
  v15[23] = v11;
  v15[24] = *MEMORY[0x277CC2060];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:25];
  v13 = _supportedUTIs;
  _supportedUTIs = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addProvider:(id)provider forBaseURL:(id)l
{
  providerCopy = provider;
  lCopy = l;
  if (!self->_providers)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    providers = self->_providers;
    self->_providers = v7;
  }

  absoluteString = [lCopy absoluteString];
  if ([absoluteString hasSuffix:@"/"])
  {
    v10 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 1}];

    absoluteString = v10;
  }

  [(NSMutableDictionary *)self->_providers setObject:providerCopy forKey:absoluteString];
}

- (void)removeProviderForBaseURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [absoluteString hasSuffix:@"/"];
  if (!v4)
  {
    v6 = absoluteString;
    if (!absoluteString)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 1}];

  v6 = v5;
  if (v5)
  {
LABEL_5:
    v8 = v6;
    v4 = [(NSMutableDictionary *)self->_providers removeObjectForKey:v6];
    v6 = v8;
  }

LABEL_6:

  MEMORY[0x2821F96F8](v4, v6);
}

- (void)removeProvider:(id)provider
{
  v20 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_providers;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_providers objectForKey:v10, v15];

      if (v11 == providerCopy)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    [(MFAttachmentManager *)self removeProviderForBaseURL:v13];

    v5 = v12;
  }

LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupAttachment:(id)attachment withMimeBody:(id)body error:(id *)error
{
  attachmentCopy = attachment;
  bodyCopy = body;
  v10 = [attachmentCopy url];
  mf_isValidAttachmentURL = [v10 mf_isValidAttachmentURL];

  if (mf_isValidAttachmentURL)
  {
    v12 = [attachmentCopy url];
    v13 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v12 error:error];

    v14 = v13 != 0;
    if (v13)
    {
      if (bodyCopy || ([v13 messageForAttachment:attachmentCopy], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "messageBody"), bodyCopy = objc_claimAutoreleasedReturnValue(), v15, bodyCopy))
      {
        v16 = [attachmentCopy url];
        mf_lastPartNumber = [v16 mf_lastPartNumber];
        v18 = [bodyCopy partWithNumber:mf_lastPartNumber];

        [attachmentCopy setPart:v18];
        fileName = [attachmentCopy fileName];

        if (!fileName)
        {
          attachmentFilename = [v18 attachmentFilename];
          [attachmentCopy setFileName:attachmentFilename];
        }

        if (v18)
        {
          v21 = MEMORY[0x277CCACA8];
          type = [v18 type];
          subtype = [v18 subtype];
          v24 = [v21 stringWithFormat:@"%@/%@", type, subtype];
          [attachmentCopy setMimeType:v24];

          [attachmentCopy setEncodedFileSize:{objc_msgSend(v18, "approximateRawSize")}];
          disposition = [v18 disposition];
          [attachmentCopy setDisposition:disposition];

          v26 = [v18 dispositionParameterForKey:@"remote-image"];
          if (v26)
          {
            [attachmentCopy setRemoteImageFileName:v26];
          }
        }
      }

      else
      {
        v18 = 0;
      }

      v27 = [(MFAttachmentManager *)self metadataForAttachment:attachmentCopy forKey:@"MFAttachmentContentIDKey"];
      if (!v27)
      {
        contentID = [v18 contentID];
        if (!contentID)
        {
          contentID = [v18 bodyParameterForKey:*MEMORY[0x277D24E78]];
          if (!contentID)
          {
            contentID = [MEMORY[0x277CCACA8] mf_messageIDStringWithDomainHint:0];
          }
        }

        v27 = contentID;
        [(MFAttachmentManager *)self setContentID:contentID forAttachment:attachmentCopy];
      }
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Invalid attachment URL." title:@"Invalid Attachment URL" userInfo:0];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_filePathForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = [attachmentCopy url];
  v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:0];

  if (v6)
  {
    v7 = [v6 messageForAttachment:attachmentCopy];
    v8 = [attachmentCopy url];
    v9 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v8 error:0];

    storagePath = [v9 storageLocationForAttachment:attachmentCopy withMessage:v7];
    if (!storagePath)
    {
      messageStore = [v7 messageStore];
      storagePath = [messageStore storagePath];
    }
  }

  else
  {
    storagePath = 0;
  }

  return storagePath;
}

- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error
{
  lCopy = l;
  mf_partNumbers = [lCopy mf_partNumbers];
  if ([mf_partNumbers count])
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v9 = [mf_partNumbers count];
    if (v9 == -1)
    {
      v8URLByDeletingLastPathComponent = uRLByDeletingLastPathComponent;
LABEL_14:
      v17 = getLogger_1();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MFAttachmentManager _dataProviderForAttachmentURL:error:];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not find a provider for the given URL." title:@"No Provider Found" userInfo:0];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      uRLByDeletingLastPathComponent = v8URLByDeletingLastPathComponent;
    }

    else
    {
      v10 = v9 + 1;
      while (1)
      {
        absoluteString = [uRLByDeletingLastPathComponent absoluteString];
        if ([absoluteString hasSuffix:@"/"])
        {
          v12 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 1}];

          absoluteString = v12;
        }

        v13 = [(NSMutableDictionary *)self->_providers objectForKey:absoluteString];
        if (v13)
        {
          break;
        }

        v8URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

        uRLByDeletingLastPathComponent = v8URLByDeletingLastPathComponent;
        if (!--v10)
        {
          goto LABEL_14;
        }
      }

      v16 = v13;
    }
  }

  else
  {
    v15 = getLogger_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MFAttachmentManager _dataProviderForAttachmentURL:error:];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Invalid attachment URL.  Too few parts." title:@"Invalid Attachment URL" userInfo:0];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)attachmentForURL:(id)l withMimeBody:(id)body error:(id *)error
{
  lCopy = l;
  bodyCopy = body;
  if (lCopy)
  {
    v10 = [[MFAttachment alloc] initWithURL:lCopy attachmentManager:self];
    if ([(MFAttachmentManager *)self _setupAttachment:v10 withMimeBody:bodyCopy error:error])
    {
      goto LABEL_5;
    }
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)attachmentsForURLs:(id)ls error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = lsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(MFAttachmentManager *)self attachmentForURL:*(*(&v17 + 1) + 8 * i) error:error, v17];
        if (!v13)
        {

          v7 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)attachmentForTextAttachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  mimePart = [attachmentCopy mimePart];
  partURL = [mimePart partURL];

  mimePart2 = [attachmentCopy mimePart];

  mimeBody = [mimePart2 mimeBody];

  v11 = [(MFAttachmentManager *)self attachmentForURL:partURL withMimeBody:mimeBody error:error];

  return v11;
}

- (id)attachmentForContentID:(id)d preferredSchemes:(id)schemes
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  schemesCopy = schemes;
  if ([dCopy length])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__MFAttachmentManager_attachmentForContentID_preferredSchemes___block_invoke;
    v27[3] = &unk_279E34E10;
    v28 = dCopy;
    v10 = v8;
    v29 = v10;
    v11 = schemesCopy;
    v30 = v11;
    [(NSMutableDictionary *)metadata enumerateKeysAndObjectsUsingBlock:v27];
    [(NSLock *)self->_metaDataLock unlock];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          lowercaseString = [*(*(&v23 + 1) + 8 * i) lowercaseString];
          firstObject = [v10 objectForKeyedSubscript:lowercaseString];

          if (firstObject)
          {

            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    allValues = [v10 allValues];
    firstObject = [allValues firstObject];

    if (firstObject)
    {
LABEL_13:
      v20 = [(MFAttachmentManager *)self attachmentForURL:firstObject error:0, v23];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __63__MFAttachmentManager_attachmentForContentID_preferredSchemes___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [a3 objectForKeyedSubscript:@"MFAttachmentContentIDKey"];
  if (![*(a1 + 32) caseInsensitiveCompare:v7])
  {
    v8 = *(a1 + 40);
    v9 = [v14 scheme];
    v10 = [v9 lowercaseString];
    [v8 setObject:v14 forKeyedSubscript:v10];

    if (![*(a1 + 48) count] || (objc_msgSend(v14, "scheme"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 48), "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "caseInsensitiveCompare:", v12), v12, v11, !v13))
    {
      *a4 = 1;
    }
  }
}

- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider syncLock:(id *)lock
{
  attachmentCopy = attachment;
  providerCopy = provider;
  [(MFAttachmentManager *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFAttachmentManager _fetchDataForAttachment:withProvider:syncLock:]", "MFAttachmentManager.m", 387, "0");
}

- (void)fetchDataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = [attachmentCopy url];
  v17 = 0;
  v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:&v17];
  v7 = v17;

  if (v6)
  {
    arrayAccessQueue = self->_arrayAccessQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__MFAttachmentManager_fetchDataForAttachment___block_invoke_2;
    v11[3] = &unk_279E34E60;
    v11[4] = self;
    v12 = attachmentCopy;
    v13 = v6;
    dispatch_async(arrayAccessQueue, v11);
  }

  else
  {
    fetchCompletionBlock = [attachmentCopy fetchCompletionBlock];
    v10 = fetchCompletionBlock;
    if (fetchCompletionBlock)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__MFAttachmentManager_fetchDataForAttachment___block_invoke;
      block[3] = &unk_279E34E38;
      v16 = fetchCompletionBlock;
      v15 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)fetchDataSynchronouslyForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  fetchCompletionBlock = [attachmentCopy fetchCompletionBlock];
  [attachmentCopy setFetchCompletionBlock:0];
  v6 = [attachmentCopy url];
  v36 = 0;
  v7 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v6 error:&v36];
  v8 = v36;

  if (v7)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__2;
    v34 = __Block_byref_object_dispose__2;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2;
    v28 = __Block_byref_object_dispose__2;
    v29 = 0;
    arrayAccessQueue = self->_arrayAccessQueue;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__MFAttachmentManager_fetchDataSynchronouslyForAttachment___block_invoke;
    v18 = &unk_279E34E88;
    v22 = &v30;
    selfCopy = self;
    v20 = attachmentCopy;
    v21 = v7;
    v23 = &v24;
    dispatch_sync(arrayAccessQueue, &v15);
    isMainThread = [MEMORY[0x277CCACC8] isMainThread];
    v11 = v25[5];
    if (isMainThread)
    {
      if (([v11 tryLockWhenCondition:1] & 1) == 0)
      {
        if (isInternalDevice())
        {
          v12 = getLogger_1();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [MFAttachmentManager fetchDataSynchronouslyForAttachment:];
          }
        }

        v13 = v31[5];
        v31[5] = 0;

        goto LABEL_13;
      }
    }

    else
    {
      [v11 lockWhenCondition:1];
    }

    [v25[5] unlock];
LABEL_13:
    if (fetchCompletionBlock)
    {
      data = [v31[5] data];
      (fetchCompletionBlock)[2](fetchCompletionBlock, data, 0);
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);

    goto LABEL_16;
  }

  if (fetchCompletionBlock)
  {
    (fetchCompletionBlock)[2](fetchCompletionBlock, 0, v8);
  }

LABEL_16:
}

void __59__MFAttachmentManager_fetchDataSynchronouslyForAttachment___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _fetchDataForAttachment:v3 withProvider:v4 syncLock:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)_fetchCompletedForAttachment:(id)attachment error:(id)error
{
  attachmentCopy = attachment;
  errorCopy = error;
  arrayAccessQueue = self->_arrayAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke;
  block[3] = &unk_279E34E60;
  block[4] = self;
  v12 = attachmentCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = attachmentCopy;
  dispatch_sync(arrayAccessQueue, block);
}

void __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) url];
  v4 = [v2 objectForKey:v3];
  v5 = [v4 copy];

  v6 = [*(a1 + 40) url];

  if (v6)
  {
    v7 = getLogger_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 136315650;
      v49 = "";
      v50 = 2080;
      v51 = "";
      v52 = 2112;
      v53 = v8;
      _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving attachment %@", buf, 0x20u);
    }

    v9 = *(*(a1 + 32) + 24);
    v10 = [*(a1 + 40) url];
    [v9 removeObjectForKey:v10];
  }

  v11 = [v5 objectForKey:@"MFAttachmentAttachmentKey"];
  v12 = [v5 objectForKey:@"MFAttachmentPrimaryConsumerKey"];
  v31 = v12;
  if (*(a1 + 48))
  {
    v13 = 0;
  }

  else
  {
    v13 = [v12 data];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        if ([v21 wantsCompletionBlockOffMainThread])
        {
          v22 = v14;
        }

        else
        {
          v22 = v15;
        }

        [v22 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v18);
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_69;
  v39[3] = &unk_279E34EB0;
  v40 = *(a1 + 48);
  v23 = v13;
  v41 = v23;
  v24 = MEMORY[0x2743C3100](v39);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v14;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v24[2](v24, *(*(&v35 + 1) + 8 * j));
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v27);
  }

  if ([v15 count])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_2;
    block[3] = &unk_279E34ED8;
    v33 = v15;
    v34 = v24;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_69(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 downloadProgress];
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 cancel];
  }

  else
  {
    [v3 setCompletedUnitCount:{objc_msgSend(v3, "totalUnitCount")}];
  }

  v5 = [v7 fetchCompletionBlock];

  if (v5)
  {
    v6 = [v7 fetchCompletionBlock];
    v6[2](v6, *(a1 + 40), *(a1 + 32));

    [v7 setFetchCompletionBlock:0];
  }

  [v7 resetProgress];
}

void __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelFetchForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  arrayAccessQueue = self->_arrayAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MFAttachmentManager_cancelFetchForAttachment___block_invoke;
  v7[3] = &unk_279E346E0;
  v7[4] = self;
  v8 = attachmentCopy;
  v6 = attachmentCopy;
  dispatch_async(arrayAccessQueue, v7);
}

void __48__MFAttachmentManager_cancelFetchForAttachment___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) url];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) fetchCompletionBlock];

    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__MFAttachmentManager_cancelFetchForAttachment___block_invoke_2;
      block[3] = &unk_279E33588;
      v15 = *(a1 + 40);
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }

    [*(a1 + 40) resetProgress];
    v6 = [v4 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
    [v6 removeObjectIdenticalTo:*(a1 + 40)];
    if (![v6 count])
    {
      v7 = [v4 objectForKeyedSubscript:@"MFAttachmentMonitorKey"];
      [v7 cancel];

      v8 = getLogger_1();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        *buf = 136315650;
        v17 = "";
        v18 = 2080;
        v19 = "";
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving attachment %@", buf, 0x20u);
      }

      v10 = *(a1 + 40);
      v11 = *(*(a1 + 32) + 24);
      v12 = [v10 url];
      [v11 removeObjectForKey:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __48__MFAttachmentManager_cancelFetchForAttachment___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchCompletionBlock];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:@"Download Canceled." title:@"Download Canceled" userInfo:0];
  (v2)[2](v2, 0, v3);

  v4 = *(a1 + 32);

  return [v4 setFetchCompletionBlock:0];
}

- (void)setContentID:(id)d forAttachment:(id)attachment
{
  dCopy = d;
  attachmentCopy = attachment;
  if ([dCopy hasPrefix:@"<"])
  {
    v7 = [dCopy substringFromIndex:1];

    v8 = v7;
  }

  else
  {
    v8 = dCopy;
  }

  v12 = v8;
  if ([v8 hasSuffix:@">"])
  {
    v9 = [v12 substringToIndex:{objc_msgSend(v12, "length") - 1}];

    v10 = v9;
  }

  else
  {
    v10 = v12;
  }

  v13 = v10;
  [(MFAttachmentManager *)self setMetadataForAttachment:attachmentCopy toValue:v10 forKey:@"MFAttachmentContentIDKey"];
}

- (void)setMetadataForAttachment:(id)attachment toValue:(id)value forKey:(id)key
{
  attachmentCopy = attachment;
  valueCopy = value;
  keyCopy = key;
  v10 = [attachmentCopy url];

  if (v10)
  {
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    if (!metadata)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = self->_metadata;
      self->_metadata = v12;

      metadata = self->_metadata;
    }

    v14 = [attachmentCopy url];
    v15 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:v14];

    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = self->_metadata;
      v17 = [attachmentCopy url];
      [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];
    }

    [v15 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(NSLock *)self->_metaDataLock unlock];
  }
}

- (id)metadataForAttachment:(id)attachment forKey:(id)key
{
  metaDataLock = self->_metaDataLock;
  keyCopy = key;
  attachmentCopy = attachment;
  [(NSLock *)metaDataLock lock];
  metadata = self->_metadata;
  v10 = [attachmentCopy url];

  v11 = [(NSMutableDictionary *)metadata objectForKey:v10];
  v12 = [v11 objectForKey:keyCopy];

  [(NSLock *)self->_metaDataLock unlock];

  return v12;
}

- (void)clearMetadataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = [attachmentCopy url];

  if (v4)
  {
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    v6 = [attachmentCopy url];
    [(NSMutableDictionary *)metadata removeObjectForKey:v6];

    [(NSLock *)self->_metaDataLock unlock];
  }
}

- (void)_dataProviderForAttachmentURL:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2720B1000, v1, OS_LOG_TYPE_ERROR, "#E %s%sCould not find a provider for the given URL: %@", v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_dataProviderForAttachmentURL:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2720B1000, v1, OS_LOG_TYPE_ERROR, "#E %s%sInvalid attachment URL. Too few parts. URL: %@", v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchDataSynchronouslyForAttachment:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_2720B1000, v0, OS_LOG_TYPE_ERROR, "#E %s%s#Attachments FIXME: Blocking call requested on the main thread", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end