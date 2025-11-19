@interface MFAttachmentLibraryDataProvider
- (MFAttachmentLibraryDataProvider)initWithLibrary:(id)a3;
- (MFMessageLibrary)messageLibrary;
- (id)fetchLocalDataForAttachment:(id)a3;
- (id)messageForAttachment:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MFAttachmentLibraryDataProvider

- (MFAttachmentLibraryDataProvider)initWithLibrary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFAttachmentLibraryDataProvider;
  v5 = [(MFAttachmentLibraryDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MFAttachmentLibraryDataProvider *)v5 setMessageLibrary:v4];
  }

  return v6;
}

- (id)fetchLocalDataForAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 readFromDisk];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 url];
    v8 = [(MFAttachmentLibraryDataProvider *)self messageForAttachment:v4];
    v9 = [v8 messageStore];
    v10 = [v7 mf_lastPartNumber];
    v11 = [v8 messageBody];
    v12 = [v11 partWithNumber:v10];

    v13 = [v12 range];
    v15 = [v9 dataForMimePart:v12 inRange:v13 isComplete:v14 downloadIfNecessary:0 didDownload:{0, 0}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v39[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __87__MFAttachmentLibraryDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v36[3] = &unk_279E35298;
  v32 = v12;
  v37 = v32;
  v13 = a6;
  v35 = MEMORY[0x2743C3100](v36);
  v14 = [v10 url];
  v15 = [(MFAttachmentLibraryDataProvider *)self messageForAttachment:v10];
  v34 = [v15 messageStore];
  v16 = [v14 mf_lastPartNumber];
  v33 = v11;
  if (v16)
  {
    v17 = [v10 readFromDisk];
    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277D24F88]);
      v39[0] = v11;
      v19 = 1;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v21 = [v18 initWithConsumers:v20 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

      [v21 setProgressBlock:v35];
      [v21 appendData:v17];
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v31 = [v10 decodeFilterWithDataConsumer:v11];
      v24 = objc_alloc(MEMORY[0x277D24F88]);
      v38 = v31;
      v22 = 1;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v21 = [v24 initWithConsumers:v25 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

      [v21 setProgressBlock:v35];
      v26 = [v15 messageBody];
      v27 = [v26 partWithNumber:v16];

      v28 = [v27 range];
      LOBYTE(v26) = [v34 dataForMimePart:v27 inRange:v28 withConsumer:v29 downloadIfNecessary:{v21, 1}];

      if (v26)
      {
        v23 = 0;
        v19 = 1;
      }

      else
      {
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve library data for attachment." title:@"No Data Found" userInfo:0];
        v19 = 0;
        v22 = 0;
      }
    }
  }

  else
  {
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Invalid attachment URL." title:@"Invalid Attachment URL" userInfo:0];
    v21 = 0;
    v22 = 0;
    v19 = 0;
  }

  [v21 done];
  [v33 done];
  v13[2](v13, v19, v23, v22);

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __87__MFAttachmentLibraryDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

- (id)messageForAttachment:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 part];
  v6 = [v5 mimeBody];
  v7 = [v6 message];

  if (!v7)
  {
    v8 = [v4 url];
    v9 = [v8 mf_rowID];

    if (v9 == -1)
    {
      v7 = 0;
    }

    else
    {
      v10 = [(MFAttachmentLibraryDataProvider *)self messageLibrary];
      v7 = [v10 messageWithLibraryID:v9 options:4111 inMailbox:0];

      v11 = [v7 mailbox];
      v12 = [v11 account];
      v13 = [v12 storeForMailboxUid:v11];
      if (v13)
      {
        [v7 setMessageStore:v13];
      }

      else
      {
        v14 = vm_imap_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v7 vf_publicDescription];
          v18 = 138543362;
          v19 = v15;
          _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#Attachments failed to find a store for message %{public}@, things may behave unexpectedly", &v18, 0xCu);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4
{
  v5 = a3;
  v6 = [a4 attachmentStorageLocation];
  if (v6)
  {
    v7 = [v5 part];
    v8 = [v7 partNumber];
    v9 = [v6 stringByAppendingPathComponent:v8];

    v10 = [v5 fileName];
    v6 = [v9 stringByAppendingPathComponent:v10];
  }

  return v6;
}

- (MFMessageLibrary)messageLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLibrary);

  return WeakRetained;
}

@end