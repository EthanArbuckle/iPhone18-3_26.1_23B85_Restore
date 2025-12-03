@interface MFComposeAttachmentDataProvider
- (MFComposeAttachmentDataProvider)initWithData:(id)data forContentID:(id)d;
- (id)_dataForAttachment:(id)attachment;
- (id)dataForContentID:(id)d;
- (id)rawDataForContentID:(id)d;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)addData:(id)data forContentID:(id)d;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
- (void)recordPasteboardDataForAttachments:(id)attachments;
- (void)recordUndoDataForAttachments:(id)attachments;
- (void)removeDataForAttachment:(id)attachment;
@end

@implementation MFComposeAttachmentDataProvider

- (MFComposeAttachmentDataProvider)initWithData:(id)data forContentID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = MFComposeAttachmentDataProvider;
  v8 = [(MFComposeAttachmentDataProvider *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attachmentsData = v8->_attachmentsData;
    v8->_attachmentsData = v9;

    [(MFComposeAttachmentDataProvider *)v8 addData:dataCopy forContentID:dCopy];
    v11 = objc_alloc_init(MEMORY[0x277CBEA78]);
    attachmentsPlaceholderData = v8->_attachmentsPlaceholderData;
    v8->_attachmentsPlaceholderData = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    attachmentsPasteboardData = v8->_attachmentsPasteboardData;
    v8->_attachmentsPasteboardData = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    attachmentsUndoData = v8->_attachmentsUndoData;
    v8->_attachmentsUndoData = v15;
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFComposeAttachmentDataProvider;
  [(MFComposeAttachmentDataProvider *)&v2 dealloc];
}

- (void)addData:(id)data forContentID:(id)d
{
  dataCopy = data;
  dCopy = d;
  if (dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:dCopy];
    v8 = [v7 isEqualToData:dataCopy];

    if ((v8 & 1) == 0)
    {
      v9 = [objc_alloc(MEMORY[0x277D24F00]) initWithData:dataCopy];
      [(NSMutableDictionary *)self->_attachmentsData setValue:v9 forKey:dCopy];
    }
  }
}

- (void)removeDataForAttachment:(id)attachment
{
  if (attachment)
  {
    lastPathComponent = [attachment lastPathComponent];
    [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:lastPathComponent];
    [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:lastPathComponent];
  }
}

- (void)recordPasteboardDataForAttachments:(id)attachments
{
  v18 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  if (attachmentsCopy)
  {
    [(NSMutableDictionary *)self->_attachmentsPasteboardData removeAllObjects];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = attachmentsCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          lastPathComponent = [*(*(&v13 + 1) + 8 * v9) lastPathComponent];
          if ([lastPathComponent length])
          {
            v11 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:lastPathComponent];
            if (v11)
            {
              [(NSMutableDictionary *)self->_attachmentsPasteboardData setObject:v11 forKey:lastPathComponent];
            }

            [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:lastPathComponent];
            [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:lastPathComponent];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)recordUndoDataForAttachments:(id)attachments
{
  v18 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  if (attachmentsCopy)
  {
    [(NSMutableDictionary *)self->_attachmentsUndoData removeAllObjects];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = attachmentsCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          lastPathComponent = [*(*(&v13 + 1) + 8 * v9) lastPathComponent];
          if ([lastPathComponent length])
          {
            v11 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:lastPathComponent];
            if (v11)
            {
              [(NSMutableDictionary *)self->_attachmentsUndoData setObject:v11 forKey:lastPathComponent];
            }

            [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:lastPathComponent];
            [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:lastPathComponent];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_dataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  contentID = [attachmentCopy contentID];
  if (![contentID length])
  {
    v6 = [attachmentCopy url];
    lastPathComponent = [v6 lastPathComponent];

    contentID = lastPathComponent;
  }

  v8 = [(MFComposeAttachmentDataProvider *)self dataForContentID:contentID];

  return v8;
}

- (id)dataForContentID:(id)d
{
  dCopy = d;
  v5 = [(MFComposeAttachmentDataProvider *)self rawDataForContentID:dCopy];
  if ([MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:v5])
  {
    v6 = [(NSCache *)self->_attachmentsPlaceholderData objectForKey:dCopy];
    if (v6)
    {
      goto LABEL_3;
    }

    v9 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v5];
    if (v9)
    {
      v10 = v9;
      v6 = [MFAttachmentPlaceholder dataForPlaceholder:v9];
      if ([v6 length])
      {
        [(NSCache *)self->_attachmentsPlaceholderData setObject:v6 forKey:dCopy];
      }

      if (v6)
      {
LABEL_3:
        v7 = v6;

        v5 = v7;
      }
    }
  }

  return v5;
}

- (id)rawDataForContentID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:dCopy];
  if (!v5)
  {
    v5 = [(NSMutableDictionary *)self->_attachmentsPasteboardData objectForKey:dCopy];
    if (!v5)
    {
      v5 = [(NSMutableDictionary *)self->_attachmentsUndoData objectForKey:dCopy];
    }
  }

  v6 = v5;
  if (![v5 length])
  {
    v7 = vm_imap_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        [(MFComposeAttachmentDataProvider *)dCopy rawDataForContentID:v7];
      }
    }

    else if (v8)
    {
      [(MFComposeAttachmentDataProvider *)dCopy rawDataForContentID:v7];
    }
  }

  return v6;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  completionCopy = completion;
  v13 = [(MFComposeAttachmentDataProvider *)self _dataForAttachment:attachmentCopy];
  if (v13)
  {
    [consumerCopy appendData:v13];
    encodedFileSize = [attachmentCopy encodedFileSize];
    [progressCopy setCompletedUnitCount:encodedFileSize];
    [progressCopy setTotalUnitCount:encodedFileSize];
    [consumerCopy done];
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not find data for compose attachment." title:@"No Data Found" userInfo:0];
  }

  completionCopy[2](completionCopy, v13 != 0, v15, 0);
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

- (void)rawDataForContentID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2720B1000, a2, OS_LOG_TYPE_DEBUG, "Zero length attachment for [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)rawDataForContentID:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2720B1000, a2, OS_LOG_TYPE_DEBUG, "No attachment for [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end