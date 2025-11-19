@interface MFDecryptedAttachmentDataProvider
- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)a3;
- (id)fetchLocalDataForAttachment:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MFDecryptedAttachmentDataProvider

- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)a3
{
  v5 = a3;
  v6 = [(MFDecryptedAttachmentDataProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFDecryptedAttachmentDataProvider;
  [(MFDecryptedAttachmentDataProvider *)&v2 dealloc];
}

- (id)fetchLocalDataForAttachment:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessage *)self->_message messageStore];
  v6 = [v4 part];
  v7 = [(MFMailMessage *)self->_message messageBody];
  [v6 setMimeBody:v7];

  v8 = [v4 readFromDisk];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 part];
    v11 = [v4 part];
    [v11 range];
    v13 = [v5 dataForMimePart:v10 inRange:0 isComplete:v12 downloadIfNecessary:0 didDownload:{0, 0}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v42[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v38[3] = &unk_279E35298;
  v13 = v12;
  v39 = v13;
  v14 = a6;
  v15 = MEMORY[0x2743C3100](v38);
  v16 = [(MFMailMessage *)self->_message messageStore];
  v17 = [v10 part];
  v18 = [(MFMailMessage *)self->_message messageBody];
  [v17 setMimeBody:v18];

  v19 = [v10 readFromDisk];
  v36 = v16;
  v37 = v15;
  v35 = v10;
  if (v19)
  {
    [v11 appendData:v19];
    v20 = [v19 length];
    [v13 setCompletedUnitCount:v20];
    [v13 setTotalUnitCount:v20];
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v34 = v11;
    v33 = [v10 decodeFilterWithDataConsumer:v11];
    v25 = objc_alloc(MEMORY[0x277D24F88]);
    v42[0] = v33;
    v24 = 1;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v22 = [v25 initWithConsumers:v26 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

    [v22 setProgressBlock:v15];
    [v17 range];
    LOBYTE(v26) = [v16 dataForMimePart:v17 inRange:0 withConsumer:v27 downloadIfNecessary:{v22, 1}];

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
      v30 = [v29 error];
      v41 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v23 = [v28 errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve decrypted data for attachment." title:@"No Data Found" userInfo:v31];

      v24 = 0;
      v21 = 0;
    }

    v11 = v34;
  }

  [v22 done];
  [v11 done];
  v14[2](v14, v24, v23, v21);

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
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

@end