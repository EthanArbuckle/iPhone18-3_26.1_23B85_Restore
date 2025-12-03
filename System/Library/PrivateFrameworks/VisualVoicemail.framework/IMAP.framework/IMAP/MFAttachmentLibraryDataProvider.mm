@interface MFAttachmentLibraryDataProvider
- (MFAttachmentLibraryDataProvider)initWithLibrary:(id)library;
- (MFMessageLibrary)messageLibrary;
- (id)fetchLocalDataForAttachment:(id)attachment;
- (id)messageForAttachment:(id)attachment;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFAttachmentLibraryDataProvider

- (MFAttachmentLibraryDataProvider)initWithLibrary:(id)library
{
  libraryCopy = library;
  v8.receiver = self;
  v8.super_class = MFAttachmentLibraryDataProvider;
  v5 = [(MFAttachmentLibraryDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MFAttachmentLibraryDataProvider *)v5 setMessageLibrary:libraryCopy];
  }

  return v6;
}

- (id)fetchLocalDataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  readFromDisk = [attachmentCopy readFromDisk];
  if (readFromDisk)
  {
    v6 = readFromDisk;
    v7 = [attachmentCopy url];
    v8 = [(MFAttachmentLibraryDataProvider *)self messageForAttachment:attachmentCopy];
    messageStore = [v8 messageStore];
    mf_lastPartNumber = [v7 mf_lastPartNumber];
    messageBody = [v8 messageBody];
    v12 = [messageBody partWithNumber:mf_lastPartNumber];

    range = [v12 range];
    v15 = [messageStore dataForMimePart:v12 inRange:range isComplete:v14 downloadIfNecessary:0 didDownload:{0, 0}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  v39[1] = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __87__MFAttachmentLibraryDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v36[3] = &unk_279E35298;
  v32 = progressCopy;
  v37 = v32;
  completionCopy = completion;
  v35 = MEMORY[0x2743C3100](v36);
  v14 = [attachmentCopy url];
  v15 = [(MFAttachmentLibraryDataProvider *)self messageForAttachment:attachmentCopy];
  messageStore = [v15 messageStore];
  mf_lastPartNumber = [v14 mf_lastPartNumber];
  v33 = consumerCopy;
  if (mf_lastPartNumber)
  {
    readFromDisk = [attachmentCopy readFromDisk];
    if (readFromDisk)
    {
      v18 = objc_alloc(MEMORY[0x277D24F88]);
      v39[0] = consumerCopy;
      v19 = 1;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v21 = [v18 initWithConsumers:v20 expectedSize:{objc_msgSend(attachmentCopy, "encodedFileSize")}];

      [v21 setProgressBlock:v35];
      [v21 appendData:readFromDisk];
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v31 = [attachmentCopy decodeFilterWithDataConsumer:consumerCopy];
      v24 = objc_alloc(MEMORY[0x277D24F88]);
      v38 = v31;
      v22 = 1;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v21 = [v24 initWithConsumers:v25 expectedSize:{objc_msgSend(attachmentCopy, "encodedFileSize")}];

      [v21 setProgressBlock:v35];
      messageBody = [v15 messageBody];
      v27 = [messageBody partWithNumber:mf_lastPartNumber];

      range = [v27 range];
      LOBYTE(messageBody) = [messageStore dataForMimePart:v27 inRange:range withConsumer:v29 downloadIfNecessary:{v21, 1}];

      if (messageBody)
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
  completionCopy[2](completionCopy, v19, v23, v22);

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __87__MFAttachmentLibraryDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

- (id)messageForAttachment:(id)attachment
{
  v20 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  part = [attachmentCopy part];
  mimeBody = [part mimeBody];
  message = [mimeBody message];

  if (!message)
  {
    v8 = [attachmentCopy url];
    mf_rowID = [v8 mf_rowID];

    if (mf_rowID == -1)
    {
      message = 0;
    }

    else
    {
      messageLibrary = [(MFAttachmentLibraryDataProvider *)self messageLibrary];
      message = [messageLibrary messageWithLibraryID:mf_rowID options:4111 inMailbox:0];

      mailbox = [message mailbox];
      account = [mailbox account];
      v13 = [account storeForMailboxUid:mailbox];
      if (v13)
      {
        [message setMessageStore:v13];
      }

      else
      {
        v14 = vm_imap_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          vf_publicDescription = [message vf_publicDescription];
          v18 = 138543362;
          v19 = vf_publicDescription;
          _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#Attachments failed to find a store for message %{public}@, things may behave unexpectedly", &v18, 0xCu);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return message;
}

- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message
{
  attachmentCopy = attachment;
  attachmentStorageLocation = [message attachmentStorageLocation];
  if (attachmentStorageLocation)
  {
    part = [attachmentCopy part];
    partNumber = [part partNumber];
    v9 = [attachmentStorageLocation stringByAppendingPathComponent:partNumber];

    fileName = [attachmentCopy fileName];
    attachmentStorageLocation = [v9 stringByAppendingPathComponent:fileName];
  }

  return attachmentStorageLocation;
}

- (MFMessageLibrary)messageLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLibrary);

  return WeakRetained;
}

@end