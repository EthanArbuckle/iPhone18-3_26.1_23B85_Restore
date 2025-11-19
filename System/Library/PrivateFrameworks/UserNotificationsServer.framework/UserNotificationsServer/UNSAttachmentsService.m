@interface UNSAttachmentsService
+ (id)_attachmentURLsRemovedByReplaceUpdate:(id)a3;
+ (id)_stagingDirectory;
- (UNSAttachmentsService)initWithAttachmentsRepository:(id)a3 notificationRepository:(id)a4 notificationSchedulingService:(id)a5 pendingNotificationRepository:(id)a6;
- (id)_queue_resolveAttachmentsForRequest:(id)a3 bundleIdentifier:(id)a4 fromLocalClientConnection:(id)a5 orFromServiceExtensionOfBundleProxy:(id)a6 continueOnFailure:(BOOL)a7 error:(id *)a8;
- (id)_queue_resolveGenmojiAttachmentsForRequest:(id)a3;
- (id)_queue_resolvedFileURLForNotificationAttachment:(id)a3 request:(id)a4 bundleIdentifier:(id)a5 fromLocalClientConnection:(id)a6 orFromServiceExtensionOfBundleProxy:(id)a7 error:(id *)a8;
- (id)_queue_resolvedURLForNotificationAttachment:(id)a3 request:(id)a4 bundleIdentifier:(id)a5 fromLocalClientConnection:(id)a6 orFromServiceExtensionOfBundleProxy:(id)a7 error:(id *)a8;
- (id)_queue_validatedRepositoryURLForNotificationAttachment:(id)a3 request:(id)a4 bundleIdentifier:(id)a5 fromLocalClientConnection:(id)a6 orFromServiceExtensionOfBundleProxy:(id)a7 error:(id *)a8;
- (id)_temporaryAttachmentFileURL;
- (id)_thumbnailRepresentationsForGlyphData:(id)a3;
- (id)resolveAttachmentsForRequest:(id)a3 bundleIdentifier:(id)a4 fromLocalClientConnection:(id)a5 error:(id *)a6;
- (id)resolveAttachmentsSkippingErrorsForRequest:(id)a3 bundleIdentifier:(id)a4 fromBundleProxyForServiceExtension:(id)a5;
- (void)_beginObservingNotificationChanges;
- (void)_notificationIdentifiersForBundleIdentifier:(id)a3 replyOnQueue:(id)a4 completionHandler:(id)a5;
- (void)_queue_applicationDidUninstall:(id)a3;
- (void)_queue_deleteAttachmentDataForNotificationRecord:(id)a3 bundleIdentifier:(id)a4;
- (void)_queue_deleteAttachmentDataForNotificationRecords:(id)a3 bundleIdentifier:(id)a4;
- (void)_queue_ensureIntegrityWithCompletionHandler:(id)a3;
- (void)_queue_notificationSourcesDidUninstall:(id)a3;
- (void)_repositoryDidPerformUpdates:(id)a3 forBundleIdentifier:(id)a4;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3;
- (void)ensureIntegrityWithCompletionHandler:(id)a3;
- (void)notificationSourcesDidUninstall:(id)a3;
@end

@implementation UNSAttachmentsService

- (UNSAttachmentsService)initWithAttachmentsRepository:(id)a3 notificationRepository:(id)a4 notificationSchedulingService:(id)a5 pendingNotificationRepository:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = UNSAttachmentsService;
  v15 = [(UNSAttachmentsService *)&v20 init];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.usernotificationsserver.AttachmentsService", v16);
    queue = v15->_queue;
    v15->_queue = v17;

    objc_storeStrong(&v15->_attachmentsRepository, a3);
    objc_storeStrong(&v15->_notificationRepository, a4);
    objc_storeStrong(&v15->_notificationSchedulingService, a5);
    objc_storeStrong(&v15->_pendingNotificationRepository, a6);
    [(UNSAttachmentsService *)v15 _beginObservingNotificationChanges];
  }

  return v15;
}

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3
{
  if (a3)
  {
    [(UNSAttachmentsService *)self ensureIntegrityWithCompletionHandler:&__block_literal_global_1];
  }
}

void __69__UNSAttachmentsService_contentProtectionStateChangedForFirstUnlock___block_invoke()
{
  v0 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270AA8000, v0, OS_LOG_TYPE_DEFAULT, "Attachment integrity check complete after first unlock", v1, 2u);
  }
}

- (void)ensureIntegrityWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__UNSAttachmentsService_ensureIntegrityWithCompletionHandler___block_invoke;
  v7[3] = &unk_279E10378;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __62__UNSAttachmentsService_ensureIntegrityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "Suspending attachment service", buf, 2u);
  }

  dispatch_suspend(*(*(a1 + 32) + 8));
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__UNSAttachmentsService_ensureIntegrityWithCompletionHandler___block_invoke_3;
  v4[3] = &unk_279E10378;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _queue_ensureIntegrityWithCompletionHandler:v4];
}

uint64_t __62__UNSAttachmentsService_ensureIntegrityWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270AA8000, v2, OS_LOG_TYPE_DEFAULT, "Resuming attachment service", v4, 2u);
  }

  dispatch_resume(*(*(a1 + 32) + 8));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_queue_ensureIntegrityWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.usernotificationsserver.AttachmentsService.integrity", v4);

  v5 = dispatch_group_create();
  v6 = [(UNCAttachmentsRepository *)self->_attachmentsRepository bundleIdentifiersClaimingAttachments];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy_;
  v26[4] = __Block_byref_object_dispose_;
  v27 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        dispatch_group_enter(v5);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __69__UNSAttachmentsService__queue_ensureIntegrityWithCompletionHandler___block_invoke;
        v19[3] = &unk_279E103A0;
        v21 = v26;
        v19[4] = v10;
        v20 = v5;
        [(UNSAttachmentsService *)self _notificationIdentifiersForBundleIdentifier:v10 replyOnQueue:queue completionHandler:v19];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__UNSAttachmentsService__queue_ensureIntegrityWithCompletionHandler___block_invoke_2;
  block[3] = &unk_279E103C8;
  v18 = v26;
  block[4] = self;
  v17 = v13;
  v11 = v13;
  dispatch_group_notify(v5, queue, block);

  _Block_object_dispose(v26, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __69__UNSAttachmentsService__queue_ensureIntegrityWithCompletionHandler___block_invoke(void *a1, uint64_t a2)
{
  [*(*(a1[6] + 8) + 40) setObject:a2 forKey:a1[4]];
  v3 = a1[5];

  dispatch_group_leave(v3);
}

uint64_t __69__UNSAttachmentsService__queue_ensureIntegrityWithCompletionHandler___block_invoke_2(void *a1)
{
  [*(a1[4] + 16) ensureIntegrityUsingNotificationIdentifiersForBundleIdentifiers:*(*(a1[6] + 8) + 40)];
  v2 = *(a1[5] + 16);

  return v2();
}

- (id)resolveAttachmentsForRequest:(id)a3 bundleIdentifier:(id)a4 fromLocalClientConnection:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v13 = v10;
  v39 = v13;
  v14 = [(UNSAttachmentsService *)self _queue_resolveGenmojiAttachmentsForRequest:v35[5]];
  v15 = v35[5];
  v35[5] = v14;

  v16 = [v13 content];
  v17 = [v16 attachments];
  v18 = [v17 count];

  if (v18)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__UNSAttachmentsService_resolveAttachmentsForRequest_bundleIdentifier_fromLocalClientConnection_error___block_invoke;
    block[3] = &unk_279E103F0;
    v26 = &v34;
    block[4] = self;
    v24 = v11;
    v25 = v12;
    v27 = &v28;
    dispatch_sync(queue, block);
    if (a6)
    {
      v20 = v29[5];
      if (v20)
      {
        *a6 = v20;
      }
    }

    _Block_object_dispose(&v28, 8);
  }

  v21 = v35[5];
  _Block_object_dispose(&v34, 8);

  return v21;
}

void __103__UNSAttachmentsService_resolveAttachmentsForRequest_bundleIdentifier_fromLocalClientConnection_error___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(*(a1[7] + 8) + 40);
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v4 _queue_resolveAttachmentsForRequest:v3 bundleIdentifier:v5 fromLocalClientConnection:v2 orFromServiceExtensionOfBundleProxy:0 continueOnFailure:0 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)resolveAttachmentsSkippingErrorsForRequest:(id)a3 bundleIdentifier:(id)a4 fromBundleProxyForServiceExtension:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v12 = [v9 content];
  v13 = [v12 attachments];
  v14 = [v13 count];

  if (v14)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__UNSAttachmentsService_resolveAttachmentsSkippingErrorsForRequest_bundleIdentifier_fromBundleProxyForServiceExtension___block_invoke;
    block[3] = &unk_279E10418;
    v22 = &v23;
    block[4] = self;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    dispatch_sync(queue, block);
  }

  else
  {
    objc_storeStrong(v24 + 5, a3);
  }

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

void __120__UNSAttachmentsService_resolveAttachmentsSkippingErrorsForRequest_bundleIdentifier_fromBundleProxyForServiceExtension___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_resolveAttachmentsForRequest:*(a1 + 40) bundleIdentifier:*(a1 + 48) fromLocalClientConnection:0 orFromServiceExtensionOfBundleProxy:*(a1 + 56) continueOnFailure:1 error:0];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_resolveGenmojiAttachmentsForRequest:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 content];
  v6 = [v5 attributedBody];

  v7 = MEMORY[0x277CE2068];
  if (!v6 || ![v6 length])
  {
    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v4 identifier];
      v11 = [v10 un_logDigest];
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_270AA8000, v9, OS_LOG_TYPE_DEFAULT, "attributedBody is empty for request %@ %@", buf, 0x16u);
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [v6 length];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __68__UNSAttachmentsService__queue_resolveGenmojiAttachmentsForRequest___block_invoke;
  v43[3] = &unk_279E10440;
  v14 = v12;
  v44 = v14;
  [v6 enumerateAttributesInRange:0 options:v13 usingBlock:{0, v43}];
  if (![v14 count])
  {
    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v4 identifier];
      v18 = [v17 un_logDigest];
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "Did not find image glyph data for request %@", buf, 0xCu);
    }
  }

  v19 = [(UNSAttachmentsService *)self _thumbnailRepresentationsForGlyphData:v14];
  v20 = [v6 mutableCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v50 = 0;
  v21 = [v6 length];
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __68__UNSAttachmentsService__queue_resolveGenmojiAttachmentsForRequest___block_invoke_8;
  v39 = &unk_279E10468;
  v22 = v19;
  v40 = v22;
  v42 = buf;
  v23 = v20;
  v41 = v23;
  [v6 enumerateAttributesInRange:0 options:v21 usingBlock:{0, &v36}];
  v24 = [v4 content];
  v25 = [v24 mutableCopy];

  v26 = *v7;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v4 identifier];
    v28 = [v27 un_logDigest];
    v29 = *(*&buf[8] + 24);
    *v45 = 138412546;
    v46 = v28;
    v47 = 2048;
    v48 = v29;
    _os_log_impl(&dword_270AA8000, v26, OS_LOG_TYPE_DEFAULT, "Updated attributedBody of request %@ w/ %ld image glyphs", v45, 0x16u);
  }

  [v25 setAttributedBody:v23];
  v30 = MEMORY[0x277CE1FC0];
  v31 = [v4 identifier];
  v32 = [v4 trigger];
  v33 = [v30 requestWithIdentifier:v31 content:v25 trigger:v32 destinations:{objc_msgSend(v4, "destinations")}];

  _Block_object_dispose(buf, 8);
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

void __68__UNSAttachmentsService__queue_resolveGenmojiAttachmentsForRequest___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isEqualToString:@"CTAdaptiveImageProvider"])
        {
          v10 = *(a1 + 32);
          v11 = [v3 objectForKeyedSubscript:v9];
          v12 = [v11 imageContent];
          [v10 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __68__UNSAttachmentsService__queue_resolveGenmojiAttachmentsForRequest___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = [v7 keyEnumerator];
  v50 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v50)
  {
    v49 = *v53;
    v9 = 0x277D74000uLL;
    v10 = 0x277CBE000;
    v41 = a3;
    v42 = a4;
    v43 = v8;
    v44 = v7;
    v40 = a1;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v40}];
        v51 = v12;
        if ([v12 isEqualToString:@"CTAdaptiveImageProvider"])
        {
          if ([*(a1 + 32) count] > *(*(*(a1 + 48) + 8) + 24))
          {
            v14 = [*(a1 + 32) objectAtIndex:?];

            if (v14)
            {
              v15 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
              v16 = [v15 generatedProperties];
              v17 = [v16 additionalProperties];

              v48 = [v17 objectForKey:@"contentIdentifier"];
              v47 = [v17 objectForKey:@"shortDescription"];
              v18 = [v17 objectForKey:@"alignmentInsetWidths"];
              v45 = v17;
              v19 = [v17 objectForKey:@"alignmentInsetHeights"];
              v46 = v15;
              v20 = [v15 images];
              v21 = objc_opt_new();
              if ([v20 count])
              {
                v22 = 0;
                do
                {
                  v23 = [v20 objectAtIndex:v22];
                  v24 = [v18 objectAtIndex:v22];
                  [v24 floatValue];
                  v26 = v25;

                  v27 = [v19 objectAtIndex:v22];
                  [v27 floatValue];
                  v29 = v28;

                  v30 = [objc_alloc(*(v9 + 552)) initWithImage:v23 alignmentInset:{v26, v29}];
                  [v21 addObject:v30];

                  ++v22;
                }

                while (v22 < [v20 count]);
              }

              if (v48)
              {
                v8 = v43;
                v7 = v44;
                v31 = v46;
                if (v47 && [v21 count])
                {
                  v32 = [objc_alloc(MEMORY[0x277D74220]) initWithContentIdentifier:v48 shortDescription:v47 strikeImages:v21];
                  v33 = objc_alloc(MEMORY[0x277D74208]);
                  v34 = [v32 imageData];
                  v35 = [v33 initWithImageContent:v34];

                  v36 = v35;
                  a1 = v40;
                  ++*(*(*(v40 + 48) + 8) + 24);

                  v13 = v36;
                  v8 = v43;
                  v7 = v44;
                }

                else
                {
                  a1 = v40;
                }
              }

              else
              {
                v8 = v43;
                v7 = v44;
                a1 = v40;
                v31 = v46;
              }

              a3 = v41;
              a4 = v42;
              v9 = 0x277D74000;
              v10 = 0x277CBE000uLL;
            }
          }
        }

        if (v13)
        {
          v37 = *(a1 + 40);
          v56 = v51;
          v57 = v13;
          v38 = [*(v10 + 2752) dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          [v37 setAttributes:v38 range:{a3, a4}];

          v9 = 0x277D74000;
        }
      }

      v50 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v50);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)_queue_resolveAttachmentsForRequest:(id)a3 bundleIdentifier:(id)a4 fromLocalClientConnection:(id)a5 orFromServiceExtensionOfBundleProxy:(id)a6 continueOnFailure:(BOOL)a7 error:(id *)a8
{
  v81 = a7;
  v107 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v75 = a5;
  v74 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v77 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  [v12 enterSecurityScope];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v15 = [v12 content];
  v16 = [v15 attachments];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v95 objects:v106 count:16];
  v79 = v13;
  v76 = v14;
  v84 = self;
  if (!v17)
  {
    v80 = 0;
    v82 = 1;
    goto LABEL_24;
  }

  v18 = v17;
  v80 = 0;
  v19 = *v96;
  v82 = 1;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v96 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v95 + 1) + 8 * i);
      v22 = [v21 URL];
      v23 = [v14 objectForKey:v22];

      if (v23)
      {
        v24 = [v21 type];
        v25 = [v23 type];
        v26 = [v24 isEqual:v25];

        if (v26)
        {
          v27 = [v23 URL];
          if (v27)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v34 = *MEMORY[0x277CE2068];
          if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v101 = v21;
            v102 = 2114;
            *v103 = v23;
            _os_log_error_impl(&dword_270AA8000, v34, OS_LOG_TYPE_ERROR, "Type conflict between attachment and pre-resolved attachment: attachment=%{public}@, preResolvedAttachment=%{public}@", buf, 0x16u);
          }

          v35 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];

          v80 = v35;
        }
      }

      else
      {
        v94 = v80;
        v27 = [(UNSAttachmentsService *)v84 _queue_resolvedURLForNotificationAttachment:v21 request:v12 bundleIdentifier:v13 fromLocalClientConnection:v75 orFromServiceExtensionOfBundleProxy:v74 error:&v94];
        v28 = v94;

        v80 = v28;
        if (v27)
        {
LABEL_11:
          v29 = objc_alloc(MEMORY[0x277CE1F90]);
          v30 = [v21 identifier];
          v31 = [v21 type];
          v32 = [v21 options];
          v33 = [v29 initWithIdentifier:v30 URL:v27 type:v31 options:v32];

          v14 = v76;
          [v77 addObject:v33];

          v13 = v79;
          self = v84;
          goto LABEL_19;
        }
      }

      v13 = v79;
      self = v84;
      v36 = *MEMORY[0x277CE2068];
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v101 = v21;
        v102 = 2114;
        *v103 = v80;
        _os_log_error_impl(&dword_270AA8000, v36, OS_LOG_TYPE_ERROR, "Unable to stage attachment: attachment=%{public}@, error=%{public}@", buf, 0x16u);
      }

      if (!v81)
      {

        v82 = 0;
        goto LABEL_24;
      }

      v82 = 0;
LABEL_19:
    }

    v18 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_24:

  [v12 leaveSecurityScope];
  if ((v82 & 1) != 0 || v81)
  {
    v63 = [v12 content];
    v56 = [v63 mutableCopy];

    [v56 setAttachments:v77];
    v64 = MEMORY[0x277CE1FC0];
    v65 = [v12 identifier];
    v66 = [v12 trigger];
    v57 = [v64 requestWithIdentifier:v65 content:v56 trigger:v66 destinations:{objc_msgSend(v12, "destinations")}];

    v67 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v101 = v57;
      v102 = 1024;
      *v103 = v82 & 1;
      *&v103[4] = 1024;
      *&v103[6] = v81;
      _os_log_impl(&dword_270AA8000, v67, OS_LOG_TYPE_DEFAULT, "Successfully resolved request: resolvedRequest=%{public}@, resolutionSuccess=%{BOOL}d, continueOnFailure=%{BOOL}d", buf, 0x18u);
    }
  }

  else
  {
    v72 = v12;
    v37 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
    {
      [UNSAttachmentsService _queue_resolveAttachmentsForRequest:v80 bundleIdentifier:v37 fromLocalClientConnection:? orFromServiceExtensionOfBundleProxy:? continueOnFailure:? error:?];
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v38 = v76;
    v39 = [v38 countByEnumeratingWithState:&v90 objects:v105 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v91;
      v83 = *v91;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v91 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v90 + 1) + 8 * j);
          if (([(UNCAttachmentsRepository *)self->_attachmentsRepository isRepositoryURL:v43, v72]& 1) != 0)
          {
            v44 = *MEMORY[0x277CE2068];
            if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v101 = v43;
              _os_log_impl(&dword_270AA8000, v44, OS_LOG_TYPE_DEFAULT, "Skipping attachment URL from repository: URL=%{public}@", buf, 0xCu);
            }
          }

          else
          {
            v45 = [v38 objectForKey:v43];
            v46 = [v45 URL];
            v47 = [MEMORY[0x277CCAA00] defaultManager];
            v48 = [v43 path];
            v49 = [v47 fileExistsAtPath:v48];

            if ((v49 & 1) == 0)
            {
              v50 = v38;
              v51 = [MEMORY[0x277CCAA00] defaultManager];
              v89 = 0;
              v52 = [v51 copyItemAtURL:v46 toURL:v43 error:&v89];
              v53 = v89;

              v54 = *MEMORY[0x277CE2068];
              v55 = *MEMORY[0x277CE2068];
              if (v52)
              {
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v101 = v46;
                  v102 = 2114;
                  *v103 = v43;
                  _os_log_impl(&dword_270AA8000, v54, OS_LOG_TYPE_DEFAULT, "Rolled back attachment: resolvedURL=%{public}@, originalAttachmentURL=%{public}@", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v101 = v46;
                v102 = 2114;
                *v103 = v43;
                *&v103[8] = 2114;
                v104 = v53;
                _os_log_error_impl(&dword_270AA8000, v54, OS_LOG_TYPE_ERROR, "Unable to roll back attachment: resolvedURL=%{public}@, originalAttachmentURL=%{public}@, error=%{public}@", buf, 0x20u);
              }

              v38 = v50;
              v41 = v83;
            }

            self = v84;
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v90 objects:v105 count:16];
      }

      while (v40);
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v56 = v77;
    v57 = [v56 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v57)
    {
      v58 = *v86;
      v12 = v72;
      v13 = v79;
      do
      {
        for (k = 0; k != v57; k = k + 1)
        {
          if (*v86 != v58)
          {
            objc_enumerationMutation(v56);
          }

          attachmentsRepository = self->_attachmentsRepository;
          v61 = [*(*(&v85 + 1) + 8 * k) URL];
          v62 = [v12 identifier];
          [(UNCAttachmentsRepository *)attachmentsRepository removeReferenceToRepositoryURL:v61 forNotificationIdentifier:v62 bundleIdentifier:v79];
        }

        v57 = [v56 countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v57);
    }

    else
    {
      v12 = v72;
      v13 = v79;
    }
  }

  if (a8 && v80)
  {
    v68 = v80;
    *a8 = v80;
  }

  v69 = v57;

  v70 = *MEMORY[0x277D85DE8];
  return v57;
}

- (id)_thumbnailRepresentationsForGlyphData:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v14 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = __Block_byref_object_copy_;
        v25 = __Block_byref_object_dispose_;
        v26 = 0;
        v19[0] = 0;
        v19[1] = v19;
        v19[2] = 0x3032000000;
        v19[3] = __Block_byref_object_copy_;
        v19[4] = __Block_byref_object_dispose_;
        v20 = 0;
        v7 = [objc_alloc(MEMORY[0x277CDAAD8]) initWithData:v6 contentType:@"com.apple.private.usernotifications.genmoji.attachment" size:4 scale:1025.0 representationTypes:{1025.0, 1.0}];
        [v7 setContentTypeUTI:@"com.apple.private.usernotifications.genmoji.attachment"];
        v8 = [MEMORY[0x277CDAAE0] sharedGenerator];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __63__UNSAttachmentsService__thumbnailRepresentationsForGlyphData___block_invoke;
        v15[3] = &unk_279E10490;
        v17 = &v21;
        v18 = v19;
        v9 = v7;
        v16 = v9;
        [v8 synchronousGenerateThumbnailForRequest:v9 updateHandler:0 statusHandler:0 completionHandler:v15];

        if (v22[5])
        {
          [v13 addObject:?];
        }

        _Block_object_dispose(v19, 8);
        _Block_object_dispose(&v21, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v13;
}

void __63__UNSAttachmentsService__thumbnailRepresentationsForGlyphData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
    {
      __63__UNSAttachmentsService__thumbnailRepresentationsForGlyphData___block_invoke_cold_1(a1, a1 + 48, v8);
    }
  }
}

- (id)_queue_resolvedURLForNotificationAttachment:(id)a3 request:(id)a4 bundleIdentifier:(id)a5 fromLocalClientConnection:(id)a6 orFromServiceExtensionOfBundleProxy:(id)a7 error:(id *)a8
{
  v13 = a3;
  queue = self->_queue;
  v33 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  dispatch_assert_queue_V2(queue);
  v18 = [v13 URL];
  v19 = [v18 URLByStandardizingPath];

  v20 = [v19 URLByResolvingSymlinksInPath];

  v21 = objc_alloc(MEMORY[0x277CE1F90]);
  v22 = [v13 identifier];
  v23 = [v13 type];
  v24 = [v13 options];
  v25 = [v21 initWithIdentifier:v22 URL:v20 type:v23 options:v24];

  if ([(UNCAttachmentsRepository *)self->_attachmentsRepository isRepositoryURL:v20])
  {
    v36 = 0;
    v26 = &v36;
    v27 = v33;
    v28 = [(UNSAttachmentsService *)self _queue_validatedRepositoryURLForNotificationAttachment:v25 request:v17 bundleIdentifier:v16 fromLocalClientConnection:v15 orFromServiceExtensionOfBundleProxy:v33 error:&v36];
  }

  else
  {
    v35 = 0;
    v26 = &v35;
    v27 = v33;
    v28 = [(UNSAttachmentsService *)self _queue_resolvedFileURLForNotificationAttachment:v25 request:v17 bundleIdentifier:v16 fromLocalClientConnection:v15 orFromServiceExtensionOfBundleProxy:v33 error:&v35];
  }

  v29 = v28;

  v30 = *v26;
  if (!v29 && os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
  {
    [UNSAttachmentsService _queue_resolvedURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:];
  }

  if (a8 && v30)
  {
    v31 = v30;
    *a8 = v30;
  }

  return v29;
}

- (id)_queue_validatedRepositoryURLForNotificationAttachment:(id)a3 request:(id)a4 bundleIdentifier:(id)a5 fromLocalClientConnection:(id)a6 orFromServiceExtensionOfBundleProxy:(id)a7 error:(id *)a8
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v13 = [v11 URL];
  if ([(UNCAttachmentsRepository *)self->_attachmentsRepository isValidRepositoryURL:v13 forBundleIdentifier:v12])
  {
    v14 = MEMORY[0x277CE1CB8];
    v15 = [v11 type];
    v16 = [v14 typeWithIdentifier:v15];

    v17 = [v16 preferredFilenameExtension];
    v18 = [v13 pathExtension];
    v19 = [v17 isEqualToString:v18];
    v20 = *MEMORY[0x277CE2068];
    if (v19)
    {
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543618;
        v28 = v11;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_270AA8000, v20, OS_LOG_TYPE_DEFAULT, "Attachment is in repository for bundle: attachment=%{public}@, bundleIdentifier=%@", &v27, 0x16u);
      }

      v21 = v13;
      v22 = 0;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        v27 = 138544130;
        v28 = v11;
        v29 = 2112;
        v30 = v12;
        v31 = 2114;
        v32 = v17;
        v33 = 2114;
        v34 = v18;
        _os_log_error_impl(&dword_270AA8000, v20, OS_LOG_TYPE_ERROR, "Attachment has a type that doesn't match existing file in the repository: attachment=%{public}@, bundleIdentifier=%@, expectedExtension=%{public}@, actualExtension=%{public}@", &v27, 0x2Au);
      }

      v22 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:101 userInfo:0];
      v21 = 0;
    }

    if (a8)
    {
LABEL_14:
      if (v22)
      {
        v24 = v22;
        *a8 = v22;
      }
    }
  }

  else
  {
    v23 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
    {
      [UNSAttachmentsService _queue_validatedRepositoryURLForNotificationAttachment:v11 request:v12 bundleIdentifier:v23 fromLocalClientConnection:? orFromServiceExtensionOfBundleProxy:? error:?];
    }

    v22 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];
    v21 = 0;
    if (a8)
    {
      goto LABEL_14;
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_queue_resolvedFileURLForNotificationAttachment:(id)a3 request:(id)a4 bundleIdentifier:(id)a5 fromLocalClientConnection:(id)a6 orFromServiceExtensionOfBundleProxy:(id)a7 error:(id *)a8
{
  v75 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v66 = a6;
  v17 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v18 = [v14 URL];
  v70 = 0;
  v19 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v18 error:&v70];
  v20 = v70;
  v21 = v20;
  if (v19 && !v20)
  {
    v69 = 0;
    v22 = [MEMORY[0x277CE1F90] stagingActionForFileHandle:v19 fromLocalClientConnection:v66 orFromServiceExtensionOfBundleProxy:v17 servicingBundleIdentifier:v16 error:&v69];
    v65 = v69;
    if (!v22)
    {
      v41 = *MEMORY[0x277CE2068];
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v72 = v18;
        v73 = 2112;
        *v74 = v16;
        *&v74[8] = 2114;
        *&v74[10] = v65;
        _os_log_error_impl(&dword_270AA8000, v41, OS_LOG_TYPE_ERROR, "Attachment file is not related to bundle: fileURL=%{public}@, bundleIdentifier=%@, stagingError=%{public}@", buf, 0x20u);
      }

      v39 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];
      v40 = 0;
LABEL_33:
      [v19 closeFile];
      if (!a8)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v62 = v16;
    v63 = v15;
    v58 = a8;
    v23 = MEMORY[0x277CE1CB8];
    v24 = [v14 type];
    v25 = [v23 typeWithIdentifier:v24];

    v60 = v25;
    v26 = [v25 preferredFilenameExtension];
    v27 = [(UNSAttachmentsService *)self _temporaryAttachmentFileURL];
    v59 = v26;
    v28 = [v27 URLByAppendingPathExtension:v26];

    v29 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v72 = v18;
      v73 = 2114;
      *v74 = v28;
      _os_log_impl(&dword_270AA8000, v29, OS_LOG_TYPE_DEFAULT, "Will stage attachment file via secure copy: fileURL=%{public}@, temporaryFileURL=%{public}@", buf, 0x16u);
    }

    v30 = [MEMORY[0x277CCAA00] defaultManager];
    v68 = 0;
    v31 = [v30 unc_securelyCopyFile:v19 fromURL:v18 toURL:v28 error:&v68];
    v61 = v68;

    v64 = v28;
    if (!v31)
    {
      v42 = *MEMORY[0x277CE2068];
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v72 = v18;
        v73 = 2114;
        *v74 = v28;
        *&v74[8] = 2114;
        *&v74[10] = v61;
        _os_log_error_impl(&dword_270AA8000, v42, OS_LOG_TYPE_ERROR, "Unable to stage attachment file: fileURL=%{public}@, temporaryFileURL=%{public}@ error=%{public}@", buf, 0x20u);
      }

      v39 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:104 userInfo:0];
      v40 = 0;
      v15 = v63;
      a8 = v58;
      goto LABEL_32;
    }

    v56 = v17;
    v32 = [MEMORY[0x277CCAA00] defaultManager];
    v33 = [v28 path];
    v34 = [v32 attributesOfItemAtPath:v33 error:0];

    v57 = v34;
    v35 = [v34 objectForKey:*MEMORY[0x277CCA1C0]];
    [v14 family];
    v36 = UNNotificationAttachmentFamilyMaximumSize();
    v55 = v35;
    if ([v35 unsignedLongValue] <= v36)
    {
      attachmentsRepository = self->_attachmentsRepository;
      v44 = [v63 identifier];
      v40 = [(UNCAttachmentsRepository *)attachmentsRepository moveFileIntoRepositoryFromFileURL:v28 forNotificationIdentifier:v44 bundleIdentifier:v16];

      v45 = *MEMORY[0x277CE2068];
      v46 = *MEMORY[0x277CE2068];
      if (v40)
      {
        a8 = v58;
        v17 = v56;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v72 = v14;
          v73 = 2114;
          *v74 = v40;
          _os_log_impl(&dword_270AA8000, v45, OS_LOG_TYPE_DEFAULT, "Copied attachment file into repository: attachment=%{public}@, repositoryURL=%{public}@", buf, 0x16u);
        }

        v39 = 0;
        v15 = v63;
        goto LABEL_31;
      }

      a8 = v58;
      v17 = v56;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [UNSAttachmentsService _queue_resolvedFileURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:];
      }

      v37 = 104;
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
      {
        [UNSAttachmentsService _queue_resolvedFileURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:];
      }

      v37 = 102;
      a8 = v58;
      v17 = v56;
    }

    v39 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:v37 userInfo:{0, v55}];
    v47 = [MEMORY[0x277CCAA00] defaultManager];
    v67 = 0;
    v48 = [v47 removeItemAtURL:v64 error:&v67];
    v49 = v67;

    v50 = *MEMORY[0x277CE2068];
    if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v72 = v14;
      v73 = 1024;
      *v74 = v48;
      *&v74[4] = 2114;
      *&v74[6] = v49;
      _os_log_impl(&dword_270AA8000, v50, OS_LOG_TYPE_DEFAULT, "Performed delete for invalid attachment: attachment=%{public}@, success=%{BOOL}d, error=%{public}@", buf, 0x1Cu);
    }

    v40 = 0;
    v16 = v62;
    v15 = v63;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v38 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v72 = v18;
    v73 = 2112;
    *v74 = v16;
    *&v74[8] = 2114;
    *&v74[10] = v21;
    _os_log_error_impl(&dword_270AA8000, v38, OS_LOG_TYPE_ERROR, "Error opening file for attachment URL: fileURL=%{public}@, bundleIdentifier=%@, fileHandleCreationError=%{public}@", buf, 0x20u);
  }

  v39 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];
  v65 = 0;
  v40 = 0;
  if (a8)
  {
LABEL_34:
    if (v39)
    {
      v51 = v39;
      *a8 = v39;
    }
  }

LABEL_36:
  v52 = v40;

  v53 = *MEMORY[0x277D85DE8];
  return v40;
}

- (id)_temporaryAttachmentFileURL
{
  v2 = [objc_opt_class() _stagingDirectory];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];

  v5 = [v2 URLByAppendingPathComponent:v4];

  return v5;
}

- (void)_queue_deleteAttachmentDataForNotificationRecords:(id)a3 bundleIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(UNSAttachmentsService *)self _queue_deleteAttachmentDataForNotificationRecord:*(*(&v14 + 1) + 8 * v12++) bundleIdentifier:v7, v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deleteAttachmentDataForNotificationRecord:(id)a3 bundleIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 identifier];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 attachments];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        attachmentsRepository = self->_attachmentsRepository;
        v15 = [*(*(&v17 + 1) + 8 * v13) URL];
        [(UNCAttachmentsRepository *)attachmentsRepository removeReferenceToRepositoryURL:v15 forNotificationIdentifier:v8 bundleIdentifier:v7];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)notificationSourcesDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__UNSAttachmentsService_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_queue_notificationSourcesDidUninstall:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UNSAttachmentsService *)self _queue_applicationDidUninstall:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_applicationDidUninstall:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  attachmentsRepository = self->_attachmentsRepository;
  v7 = [v5 bundleIdentifier];

  [(UNCAttachmentsRepository *)attachmentsRepository deleteAllFilesForBundleIdentifier:v7];
}

- (void)_beginObservingNotificationChanges
{
  v3 = *MEMORY[0x277D77D40];
  [(UNCNotificationRepository *)self->_notificationRepository addObserver:self forBundleIdentifier:*MEMORY[0x277D77D40]];
  pendingNotificationRepository = self->_pendingNotificationRepository;

  [(UNCPendingNotificationRepository *)pendingNotificationRepository addObserver:self forBundleIdentifier:v3];
}

- (void)_repositoryDidPerformUpdates:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__UNSAttachmentsService__repositoryDidPerformUpdates_forBundleIdentifier___block_invoke;
  v11[3] = &unk_279E104E0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(UNSAttachmentsService *)self _notificationIdentifiersForBundleIdentifier:v9 replyOnQueue:queue completionHandler:v11];
}

void __74__UNSAttachmentsService__repositoryDidPerformUpdates_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v23 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v25 = *v31;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v5);
        objc_opt_class();
        v7 = UNSafeCast();
        objc_opt_class();
        v8 = UNSafeCast();
        v9 = v8;
        if (v7)
        {
          v10 = *(a1 + 40);
          v11 = [objc_opt_class() _attachmentURLsRemovedByReplaceUpdate:v7];
          v12 = [v7 notificationRecord];
          v13 = [v12 identifier];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = v11;
          v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v27;
            do
            {
              v18 = 0;
              do
              {
                if (*v27 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [*(*(a1 + 40) + 16) removeReferenceToRepositoryURL:*(*(&v26 + 1) + 8 * v18++) forNotificationIdentifier:v13 bundleIdentifier:*(a1 + 48)];
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v16);
          }

LABEL_15:
          goto LABEL_16;
        }

        if (v8)
        {
          v14 = [v6 notificationRecord];
          v19 = [v14 identifier];
          v20 = [v23 containsObject:v19];

          if ((v20 & 1) == 0)
          {
            [*(a1 + 40) _queue_deleteAttachmentDataForNotificationRecord:v14 bundleIdentifier:*(a1 + 48)];
          }

          goto LABEL_15;
        }

LABEL_16:

        ++v5;
      }

      while (v5 != v4);
      v21 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      v4 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_notificationIdentifiersForBundleIdentifier:(id)a3 replyOnQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  notificationRepository = self->_notificationRepository;
  v10 = a4;
  v11 = a3;
  v12 = [(UNCNotificationRepository *)notificationRepository notificationRecordsForBundleIdentifier:v11];
  v13 = [objc_opt_class() _notificationIdentifiersForNotificationRecords:v12];
  v14 = [(UNCNotificationSchedulingService *)self->_notificationSchedulingService undeliveredNotificationRecordsForBundleIdentifier:v11];

  v15 = [objc_opt_class() _notificationIdentifiersForNotificationRecords:v14];
  v16 = [v13 arrayByAddingObjectsFromArray:v15];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__UNSAttachmentsService__notificationIdentifiersForBundleIdentifier_replyOnQueue_completionHandler___block_invoke;
  v19[3] = &unk_279E10508;
  v20 = v16;
  v21 = v8;
  v17 = v16;
  v18 = v8;
  dispatch_async(v10, v19);
}

uint64_t __100__UNSAttachmentsService__notificationIdentifiersForBundleIdentifier_replyOnQueue_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

+ (id)_stagingDirectory
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (id)_attachmentURLsRemovedByReplaceUpdate:(id)a3
{
  v3 = a3;
  v4 = [v3 notificationRecord];
  v5 = [v4 attachments];
  v6 = [v5 bs_mapNoNulls:&__block_literal_global_46];
  v7 = [v3 replacedNotificationRecord];

  v8 = [v7 attachments];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__UNSAttachmentsService__attachmentURLsRemovedByReplaceUpdate___block_invoke_2;
  v14[3] = &unk_279E10570;
  v15 = v6;
  v9 = v6;
  v10 = [v8 bs_mapNoNulls:v14];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v12 = [v11 allObjects];

  return v12;
}

void *__63__UNSAttachmentsService__attachmentURLsRemovedByReplaceUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (void)_queue_resolveAttachmentsForRequest:(uint64_t)a1 bundleIdentifier:(NSObject *)a2 fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:continueOnFailure:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_270AA8000, a2, OS_LOG_TYPE_ERROR, "Hit error staging attachment, will roll back: error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __63__UNSAttachmentsService__thumbnailRepresentationsForGlyphData___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_1(&dword_270AA8000, a2, a3, "Could not generate thumbnail for request=%{public}@ with error=%{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_queue_resolvedURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v0, v1, "Unable to resolve URL: attachment=%{public}@, error=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_validatedRepositoryURLForNotificationAttachment:(NSObject *)a3 request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_270AA8000, a2, a3, "Attachment claims to be in the repository for bundle but is not: attachment=%{public}@, bundleIdentifier=%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_queue_resolvedFileURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v0, v1, "Serious error moving attachment file into repository: attachment=%{public}@, temporaryFileURL=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_resolvedFileURLForNotificationAttachment:request:bundleIdentifier:fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v0, v1, "Attachment's file exceeds maximum size: attachment=%{public}@, size=%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end