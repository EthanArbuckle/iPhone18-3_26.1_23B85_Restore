@interface MFComposeAttachmentDataProvider
- (MFComposeAttachmentDataProvider)initWithData:(id)a3 forContentID:(id)a4;
- (id)_dataForAttachment:(id)a3;
- (id)dataForContentID:(id)a3;
- (id)rawDataForContentID:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)addData:(id)a3 forContentID:(id)a4;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)recordPasteboardDataForAttachments:(id)a3;
- (void)recordUndoDataForAttachments:(id)a3;
- (void)removeDataForAttachment:(id)a3;
@end

@implementation MFComposeAttachmentDataProvider

- (MFComposeAttachmentDataProvider)initWithData:(id)a3 forContentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = MFComposeAttachmentDataProvider;
  v8 = [(MFComposeAttachmentDataProvider *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attachmentsData = v8->_attachmentsData;
    v8->_attachmentsData = v9;

    [(MFComposeAttachmentDataProvider *)v8 addData:v6 forContentID:v7];
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

- (void)addData:(id)a3 forContentID:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:v6];
    v8 = [v7 isEqualToData:v10];

    if ((v8 & 1) == 0)
    {
      v9 = [objc_alloc(MEMORY[0x277D24F00]) initWithData:v10];
      [(NSMutableDictionary *)self->_attachmentsData setValue:v9 forKey:v6];
    }
  }
}

- (void)removeDataForAttachment:(id)a3
{
  if (a3)
  {
    v4 = [a3 lastPathComponent];
    [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:v4];
  }
}

- (void)recordPasteboardDataForAttachments:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(NSMutableDictionary *)self->_attachmentsPasteboardData removeAllObjects];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
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

          v10 = [*(*(&v13 + 1) + 8 * v9) lastPathComponent];
          if ([v10 length])
          {
            v11 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:v10];
            if (v11)
            {
              [(NSMutableDictionary *)self->_attachmentsPasteboardData setObject:v11 forKey:v10];
            }

            [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:v10];
            [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:v10];
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

- (void)recordUndoDataForAttachments:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(NSMutableDictionary *)self->_attachmentsUndoData removeAllObjects];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
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

          v10 = [*(*(&v13 + 1) + 8 * v9) lastPathComponent];
          if ([v10 length])
          {
            v11 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:v10];
            if (v11)
            {
              [(NSMutableDictionary *)self->_attachmentsUndoData setObject:v11 forKey:v10];
            }

            [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:v10];
            [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:v10];
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

- (id)_dataForAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 contentID];
  if (![v5 length])
  {
    v6 = [v4 url];
    v7 = [v6 lastPathComponent];

    v5 = v7;
  }

  v8 = [(MFComposeAttachmentDataProvider *)self dataForContentID:v5];

  return v8;
}

- (id)dataForContentID:(id)a3
{
  v4 = a3;
  v5 = [(MFComposeAttachmentDataProvider *)self rawDataForContentID:v4];
  if ([MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:v5])
  {
    v6 = [(NSCache *)self->_attachmentsPlaceholderData objectForKey:v4];
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
        [(NSCache *)self->_attachmentsPlaceholderData setObject:v6 forKey:v4];
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

- (id)rawDataForContentID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:v4];
  if (!v5)
  {
    v5 = [(NSMutableDictionary *)self->_attachmentsPasteboardData objectForKey:v4];
    if (!v5)
    {
      v5 = [(NSMutableDictionary *)self->_attachmentsUndoData objectForKey:v4];
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
        [(MFComposeAttachmentDataProvider *)v4 rawDataForContentID:v7];
      }
    }

    else if (v8)
    {
      [(MFComposeAttachmentDataProvider *)v4 rawDataForContentID:v7];
    }
  }

  return v6;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MFComposeAttachmentDataProvider *)self _dataForAttachment:v16];
  if (v13)
  {
    [v10 appendData:v13];
    v14 = [v16 encodedFileSize];
    [v11 setCompletedUnitCount:v14];
    [v11 setTotalUnitCount:v14];
    [v10 done];
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not find data for compose attachment." title:@"No Data Found" userInfo:0];
  }

  v12[2](v12, v13 != 0, v15, 0);
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