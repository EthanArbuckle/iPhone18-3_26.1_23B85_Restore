@interface MFAttachmentComposeManager
- (BOOL)updateAttachment:(id)attachment withNewData:(id)data;
- (id)_composeAttachmentDataProviderForContext:(id)context;
- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider syncLock:(id *)lock;
- (id)_queueForAttachment:(id)attachment;
- (id)attachmentsForContext:(id)context;
- (void)_callProgressBlockForAttachmentURL:(id)l withBytes:(unint64_t)bytes expectedSize:(unint64_t)size;
- (void)dealloc;
- (void)recordPasteboardAttachmentsForURLs:(id)ls forContextID:(id)d;
- (void)recordUndoAttachmentsForURLs:(id)ls forContextID:(id)d;
- (void)removeAttachmentForURL:(id)l;
@end

@implementation MFAttachmentComposeManager

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFAttachmentComposeManager;
  [(MFAttachmentManager *)&v2 dealloc];
}

- (id)_queueForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (([attachmentCopy isDataAvailableLocally] & 1) == 0)
  {
    v5 = [attachmentCopy url];
    v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:0];

    v7 = [v6 messageForAttachment:attachmentCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mailbox = [v7 mailbox];
      attachmentDownloadQueue = [mailbox attachmentDownloadQueue];

      if (attachmentDownloadQueue)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  defaultDownloadQueue = self->_defaultDownloadQueue;
  if (!defaultDownloadQueue)
  {
    v11 = [[MFInvocationQueue alloc] initWithDomain:"invc.comp"];
    v12 = self->_defaultDownloadQueue;
    self->_defaultDownloadQueue = v11;

    defaultDownloadQueue = self->_defaultDownloadQueue;
  }

  attachmentDownloadQueue = defaultDownloadQueue;
LABEL_9:

  return attachmentDownloadQueue;
}

- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider syncLock:(id *)lock
{
  v52 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  providerCopy = provider;
  v10 = [attachmentCopy url];
  v11 = [(NSMutableDictionary *)self->super._attachments objectForKeyedSubscript:v10];
  if (v11)
  {
    customConsumer = [attachmentCopy customConsumer];
    if (customConsumer)
    {
      v13 = [v11 objectForKeyedSubscript:@"MFAttachmentCollectionFilterKey"];
      [v13 addDataConsumer:customConsumer];
    }

    v14 = [v11 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
    isInternalDevice();
    [v14 addObject:attachmentCopy];
    v15 = [v11 objectForKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    v16 = [v11 objectForKeyedSubscript:@"MFAttachmentSyncLockKey"];

    if (lock)
    {
LABEL_5:
      v17 = v16;
      *lock = v16;
    }
  }

  else
  {
    v20 = v10;
    v21 = objc_alloc_init(MEMORY[0x277D24EE8]);
    v22 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v40 = v21;
    v23 = [objc_alloc(MEMORY[0x277D24F78]) initWithMainConsumer:v21];
    customConsumer2 = [attachmentCopy customConsumer];

    if (customConsumer2)
    {
      customConsumer3 = [attachmentCopy customConsumer];
      [v23 addDataConsumer:customConsumer3];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v27 = [MEMORY[0x277CBEB18] arrayWithObject:attachmentCopy];
    [dictionary setObject:v27 forKeyedSubscript:@"MFAttachmentAttachmentKey"];

    [dictionary setObject:v40 forKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    [dictionary setObject:v23 forKeyedSubscript:@"MFAttachmentCollectionFilterKey"];
    [dictionary setObject:v22 forKeyedSubscript:@"MFAttachmentSyncLockKey"];
    v28 = vm_imap_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v49 = attachmentCopy;
      v50 = 2112;
      v51 = v20;
      _os_log_impl(&dword_2720B1000, v28, OS_LOG_TYPE_DEFAULT, "#Attachments requesting download of attachment %p with URL %@", buf, 0x16u);
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke;
    v41[3] = &unk_279E36278;
    v36 = attachmentCopy;
    v42 = v36;
    selfCopy = self;
    v38 = v20;
    v29 = v20;
    v44 = v29;
    v45 = providerCopy;
    v46 = v23;
    v16 = v22;
    v47 = v16;
    v37 = v23;
    v39 = providerCopy;
    v30 = MEMORY[0x2743C3100](v41);
    v31 = [v30 copy];

    v32 = MEMORY[0x2743C3100](v31);
    v33 = [MFMonitoredInvocation invocationWithSelector:sel__fetchInvocationCallUsingBlock_ target:self object:v32 taskName:@"FetchDataForURL" priority:4 canBeCancelled:1];

    [v33 setPowerAssertionId:@"com.apple.message.MFAttachmentComposeManager"];
    [v33 retainArguments];
    monitor = [v33 monitor];
    [dictionary setObject:monitor forKeyedSubscript:@"MFAttachmentMonitorKey"];

    [(NSMutableDictionary *)self->super._attachments setObject:dictionary forKeyedSubscript:v29];
    v35 = [(MFAttachmentComposeManager *)self _queueForAttachment:v36];
    [v35 addInvocation:v33];

    providerCopy = v39;
    v10 = v38;
    v15 = v40;
    if (lock)
    {
      goto LABEL_5;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(*(a1 + 32), "encodedFileSize")}];
  v2 = v24[5];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_13;
  v20[3] = &unk_279E36200;
  v3 = *(a1 + 48);
  v20[4] = *(a1 + 40);
  v21 = v3;
  v22 = &v23;
  v4 = [v2 vf_observeKeyPath:@"fractionCompleted" options:1 usingBlock:v20];
  v5 = *(a1 + 32);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = v24[5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_2;
  v13[3] = &unk_279E36250;
  v9 = v6;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 32);
  v18 = *(a1 + 72);
  v12 = v4;
  v19 = v12;
  [v7 fetchDataForAttachment:v5 consumer:v9 progress:v8 completion:v13];

  _Block_object_dispose(&v23, 8);
}

uint64_t __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_13(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [*(*(a1[6] + 8) + 40) completedUnitCount];
  v5 = [*(*(a1[6] + 8) + 40) totalUnitCount];

  return [v2 _callProgressBlockForAttachmentURL:v3 withBytes:v4 expectedSize:v5];
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_2(uint64_t a1, int a2, void *a3, int a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [*(a1 + 32) data];
  v9 = v8;
  if (a2 && a4 && (v10 = [v8 length], !v7) && v10)
  {
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(v12 + 8);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_3;
    v21 = &unk_279E36228;
    v22 = v12;
    v23 = v11;
    v24 = *(a1 + 56);
    v25 = v9;
    dispatch_sync(v13, &v18);
  }

  else
  {
    v14 = vm_imap_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 48);
      v15 = *(a1 + 56);
      *buf = 134219266;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = a2;
      v34 = 2048;
      v35 = [v9 length];
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#Attachments not writing attachment %p %@ to disk (shouldWriteToDisk=%d, success=%d, data.length=%lu, error=%@)", buf, 0x36u);
    }
  }

  [*(a1 + 64) lock];
  [*(a1 + 64) unlockWithCondition:1];
  [*(a1 + 40) _fetchCompletedForAttachment:*(a1 + 56) error:v7];
  [*(a1 + 72) cancel];

  v17 = *MEMORY[0x277D85DE8];
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) writeToDiskWithData:*(a1 + 56)];
  }

  else
  {
    v3 = vm_imap_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v7 = 134218242;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#Attachments not writing attachment %p %@ to disk (no-existing-attachment-dictionary)", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_callProgressBlockForAttachmentURL:(id)l withBytes:(unint64_t)bytes expectedSize:(unint64_t)size
{
  v46 = *MEMORY[0x277D85DE8];
  lCopy = l;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  v38 = 0;
  arrayAccessQueue = self->super._arrayAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke;
  block[3] = &unk_279E362A0;
  v32 = &v33;
  block[4] = self;
  v23 = lCopy;
  v31 = v23;
  dispatch_sync(arrayAccessQueue, block);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v34[5];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v45 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        lastProgressBytes = [v15 lastProgressBytes];
        [v15 lastProgressTime];
        if (v9 - v17 >= 0.0333333333 || size * 0.02 <= (bytes - lastProgressBytes))
        {
          v19 = vm_imap_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            fileName = [v15 fileName];
            *buf = 138412802;
            v40 = fileName;
            v41 = 2048;
            bytesCopy = bytes;
            v43 = 2048;
            sizeCopy = size;
            _os_log_debug_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEBUG, "Calling progress block for %@.  %lu/%lu", buf, 0x20u);
          }

          [v15 setLastProgressBytes:bytes];
          [v15 setLastProgressTime:v9];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke_27;
          v25[3] = &unk_279E34F70;
          v25[4] = v15;
          v25[5] = bytes;
          v20 = MEMORY[0x2743C3100](v25);
          if ([v15 wantsCompletionBlockOffMainThread])
          {
            v20[2](v20);
          }

          else
          {
            dispatch_async(MEMORY[0x277D85CD0], v20);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v45 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v33, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke(void *a1)
{
  v6 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v2 = [v6 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
  v3 = [v2 copy];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)attachmentsForContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_composeAttachmentURLs, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_composeAttachmentURLs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 rangeOfString:contextCopy] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
          v12 = [(MFAttachmentManager *)self attachmentForURL:v11 error:0];

          if (v12)
          {
            [v15 addObject:v12];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_composeAttachmentDataProviderForContext:(id)context
{
  v4 = MEMORY[0x277CBEBC0];
  context = [MEMORY[0x277CCACA8] stringWithFormat:@"x-attach-compose://%@", context];
  v6 = [v4 URLWithString:context];

  providers = self->super._providers;
  absoluteString = [v6 absoluteString];
  v9 = [(NSMutableDictionary *)providers valueForKey:absoluteString];

  return v9;
}

- (BOOL)updateAttachment:(id)attachment withNewData:(id)data
{
  attachmentCopy = attachment;
  dataCopy = data;
  v8 = [attachmentCopy url];
  v9 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v8 error:0];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v9;
    v12 = [attachmentCopy url];
    [v11 removeDataForAttachment:v12];

    contentID = [attachmentCopy contentID];
    [v11 addData:dataCopy forContentID:contentID];
  }

  return isKindOfClass & 1;
}

- (void)removeAttachmentForURL:(id)l
{
  lCopy = l;
  composeAttachmentURLs = self->_composeAttachmentURLs;
  v9 = lCopy;
  absoluteString = [lCopy absoluteString];
  v7 = [(NSMutableArray *)composeAttachmentURLs indexOfObject:absoluteString];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_composeAttachmentURLs removeObjectAtIndex:v7];
    v8 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v9 error:0];
    [v8 removeDataForAttachment:v9];
  }
}

- (void)recordPasteboardAttachmentsForURLs:(id)ls forContextID:(id)d
{
  lsCopy = ls;
  v6 = [(MFAttachmentComposeManager *)self _composeAttachmentDataProviderForContext:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 recordPasteboardDataForAttachments:lsCopy];
  }
}

- (void)recordUndoAttachmentsForURLs:(id)ls forContextID:(id)d
{
  lsCopy = ls;
  v6 = [(MFAttachmentComposeManager *)self _composeAttachmentDataProviderForContext:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 recordUndoDataForAttachments:lsCopy];
  }
}

@end