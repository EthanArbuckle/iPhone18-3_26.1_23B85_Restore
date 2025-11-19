@interface MFAttachmentLibraryManager
- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)a3;
- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4;
- (id)attachmentsForMessage:(id)a3 withSchemes:(id)a4;
- (void)_messageAttachmentStorageLocationsDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)removeProviderForBaseURL:(id)a3;
@end

@implementation MFAttachmentLibraryManager

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MFAttachmentLibraryManager;
  [(MFAttachmentComposeManager *)&v4 dealloc];
}

- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)a3
{
  v4 = a3;
  v5 = [(MFAttachmentManager *)self init];
  if (v5)
  {
    v6 = [v4 dataProvider];
    v7 = [MEMORY[0x277CBEBC0] URLWithString:@"x-attach"];
    [(MFAttachmentManager *)v5 addProvider:v6 forBaseURL:v7];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v5 selector:sel__messageAttachmentStorageLocationsDidChangeNotification_ name:@"MailMessageStoreMessagesAttachmentStorageLocationChanged" object:0];
  }

  return v5;
}

- (void)_messageAttachmentStorageLocationsDidChangeNotification:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"messages"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v23 + 1) + 8 * i) libraryID];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [(NSMutableDictionary *)self->super.super._metadata allKeys];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if ([v15 mf_rowID] == v9)
              {
                [(NSMutableDictionary *)self->super.super._metadata removeObjectForKey:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = MFAttachmentLibraryManager;
  v19 = 0;
  v7 = [(MFAttachmentManager *)&v18 _dataProviderForAttachmentURL:v6 error:&v19];
  v8 = v19;
  if (!v7)
  {
    providers = self->super.super._providers;
    v10 = [v6 scheme];
    v11 = [(NSMutableDictionary *)providers objectForKeyedSubscript:v10];

    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v12 = [(NSMutableDictionary *)self->super.super._providers objectForKeyedSubscript:@"x-attach"];
      v7 = v12;
      if (a4 && !v12)
      {
        if (v8)
        {
          v13 = [v8 userInfo];
          v14 = [v8 domain];
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v14 = @"MFMessageErrorDomain";
          v13 = 0;
          v16 = @"No Provider Found";
          v15 = @"Could not find a provider for the given URL.";
        }

        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:v14 code:1030 localizedDescription:v15 title:v16 userInfo:v13];

        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)removeProviderForBaseURL:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  v6 = [v5 isEqualToString:@"x-attach://"];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = MFAttachmentLibraryManager;
    [(MFAttachmentManager *)&v7 removeProviderForBaseURL:v4];
  }
}

- (id)attachmentsForMessage:(id)a3 withSchemes:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = [MEMORY[0x277CBEB18] array];
  [v6 messageBodyIfAvailable];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = v27 = 0u;
  obj = [v21 attachments];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v24 + 1) + 8 * i) mimePart];
        v13 = [v12 partURL];

        if (([v6 messageFlags] & 8) != 0)
        {
          v15 = 0;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v14 = [(MFAttachmentLibraryManager *)self _dataProviderForAttachmentURL:v13 error:0];
          objc_opt_class();
          v15 = 0;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = v21;
          }

          if (v7)
          {
LABEL_12:
            v16 = [v13 scheme];
            v17 = [v7 containsObject:v16];

            if (!v17)
            {
              goto LABEL_16;
            }
          }
        }

        v18 = [(MFAttachmentManager *)self attachmentForURL:v13 withMimeBody:v15 error:0];
        if (v18)
        {
          [v22 addObject:v18];
        }

LABEL_16:
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

@end