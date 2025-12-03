@interface MFDecryptedAttachmentDataProvider
- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)message;
- (id)fetchLocalDataForAttachment:(id)attachment;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFDecryptedAttachmentDataProvider

- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)message
{
  messageCopy = message;
  v6 = [(MFDecryptedAttachmentDataProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFDecryptedAttachmentDataProvider;
  [(MFDecryptedAttachmentDataProvider *)&v2 dealloc];
}

- (id)fetchLocalDataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  messageStore = [(MFMailMessage *)self->_message messageStore];
  part = [attachmentCopy part];
  messageBody = [(MFMailMessage *)self->_message messageBody];
  [part setMimeBody:messageBody];

  readFromDisk = [attachmentCopy readFromDisk];
  if (readFromDisk)
  {
    v9 = readFromDisk;
    part2 = [attachmentCopy part];
    part3 = [attachmentCopy part];
    [part3 range];
    v13 = [messageStore dataForMimePart:part2 inRange:0 isComplete:v12 downloadIfNecessary:0 didDownload:{0, 0}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  v42[1] = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v38[3] = &unk_279E35298;
  v13 = progressCopy;
  v39 = v13;
  completionCopy = completion;
  v15 = MEMORY[0x2743C3100](v38);
  messageStore = [(MFMailMessage *)self->_message messageStore];
  part = [attachmentCopy part];
  messageBody = [(MFMailMessage *)self->_message messageBody];
  [part setMimeBody:messageBody];

  readFromDisk = [attachmentCopy readFromDisk];
  v36 = messageStore;
  v37 = v15;
  v35 = attachmentCopy;
  if (readFromDisk)
  {
    [consumerCopy appendData:readFromDisk];
    v20 = [readFromDisk length];
    [v13 setCompletedUnitCount:v20];
    [v13 setTotalUnitCount:v20];
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v34 = consumerCopy;
    v33 = [attachmentCopy decodeFilterWithDataConsumer:consumerCopy];
    v25 = objc_alloc(MEMORY[0x277D24F88]);
    v42[0] = v33;
    v24 = 1;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v22 = [v25 initWithConsumers:v26 expectedSize:{objc_msgSend(attachmentCopy, "encodedFileSize")}];

    [v22 setProgressBlock:v15];
    [part range];
    LOBYTE(v26) = [messageStore dataForMimePart:part inRange:0 withConsumer:v27 downloadIfNecessary:{v22, 1}];

    if (v26)
    {
      v23 = 0;
      v21 = 1;
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA7E8];
      v29 = +[MFActivityMonitor currentMonitor];
      error = [v29 error];
      v41 = error;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v23 = [v28 errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve decrypted data for attachment." title:@"No Data Found" userInfo:v31];

      v24 = 0;
      v21 = 0;
    }

    consumerCopy = v34;
  }

  [v22 done];
  [consumerCopy done];
  completionCopy[2](completionCopy, v24, v23, v21);

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
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

@end