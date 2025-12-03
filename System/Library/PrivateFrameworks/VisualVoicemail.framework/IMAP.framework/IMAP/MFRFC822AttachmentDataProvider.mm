@interface MFRFC822AttachmentDataProvider
- (MFRFC822AttachmentDataProvider)initWithMessageData:(id)data parentPart:(id)part;
- (id)fetchLocalDataForAttachment:(id)attachment;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFRFC822AttachmentDataProvider

- (MFRFC822AttachmentDataProvider)initWithMessageData:(id)data parentPart:(id)part
{
  dataCopy = data;
  partCopy = part;
  v9 = [(MFRFC822AttachmentDataProvider *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageData, data);
    objc_storeStrong(&v10->_parentPart, part);
    v11 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v10->_messageData withParentPart:v10->_parentPart generateMessageIDHash:1];
    message = v10->_message;
    v10->_message = v11;
  }

  return v10;
}

- (id)fetchLocalDataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  messageStore = [(MFMailMessage *)self->_message messageStore];
  part = [attachmentCopy part];
  mimeBody = [part mimeBody];

  if (!mimeBody)
  {
    part2 = [attachmentCopy part];
    v9 = [messageStore bodyForMessage:self->_message fetchIfNotAvailable:0 updateFlags:0];
    [part2 setMimeBody:v9];
  }

  readFromDisk = [attachmentCopy readFromDisk];
  if (!readFromDisk)
  {
    part3 = [attachmentCopy part];
    part4 = [attachmentCopy part];
    [part4 range];
    readFromDisk = [messageStore dataForMimePart:part3 inRange:0 isComplete:v13 downloadIfNecessary:0 didDownload:{0, 0}];
  }

  return readFromDisk;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  v44[1] = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __86__MFRFC822AttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v39[3] = &unk_279E35298;
  v13 = progressCopy;
  v40 = v13;
  completionCopy = completion;
  v15 = MEMORY[0x2743C3100](v39);
  messageStore = [(MFMailMessage *)self->_message messageStore];
  part = [attachmentCopy part];
  mimeBody = [part mimeBody];

  if (!mimeBody)
  {
    part2 = [attachmentCopy part];
    v19 = [messageStore bodyForMessage:self->_message fetchIfNotAvailable:0 updateFlags:0];
    [part2 setMimeBody:v19];
  }

  readFromDisk = [attachmentCopy readFromDisk];
  if (readFromDisk)
  {
    v21 = objc_alloc(MEMORY[0x277D24F88]);
    v44[0] = consumerCopy;
    v22 = 1;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v24 = [v21 initWithConsumers:v23 expectedSize:{objc_msgSend(attachmentCopy, "encodedFileSize")}];

    [v24 setProgressBlock:v15];
    [v24 appendData:readFromDisk];
    v25 = 0;
  }

  else
  {
    v37 = v13;
    v26 = [attachmentCopy decodeFilterWithDataConsumer:consumerCopy];
    v27 = objc_alloc(MEMORY[0x277D24F88]);
    v43 = v26;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v24 = [v27 initWithConsumers:v28 expectedSize:{objc_msgSend(attachmentCopy, "encodedFileSize")}];

    [v24 setProgressBlock:v15];
    part3 = [attachmentCopy part];
    part4 = [attachmentCopy part];
    [part4 range];
    v32 = [messageStore dataForMimePart:part3 inRange:0 withConsumer:v31 downloadIfNecessary:{v24, 1}];

    if (v32)
    {
      v25 = 0;
      v22 = 1;
      v13 = v37;
    }

    else
    {
      v33 = +[MFActivityMonitor currentMonitor];
      error = [v33 error];

      if (error)
      {
        v41 = *MEMORY[0x277CCA7E8];
        v42 = error;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      }

      else
      {
        v35 = 0;
      }

      v13 = v37;
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve RFC822 data for attachment." title:@"No Data Found" userInfo:v35];

      v22 = 0;
    }
  }

  [v24 done];
  [consumerCopy done];
  completionCopy[2](completionCopy, v22, v25, 0);

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __86__MFRFC822AttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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