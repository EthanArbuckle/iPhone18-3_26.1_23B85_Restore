@interface MFAttachmentLibraryManager
- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)library;
- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error;
- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes;
- (void)_messageAttachmentStorageLocationsDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)removeProviderForBaseURL:(id)l;
@end

@implementation MFAttachmentLibraryManager

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MFAttachmentLibraryManager;
  [(MFAttachmentComposeManager *)&v4 dealloc];
}

- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)library
{
  libraryCopy = library;
  v5 = [(MFAttachmentManager *)self init];
  if (v5)
  {
    dataProvider = [libraryCopy dataProvider];
    v7 = [MEMORY[0x277CBEBC0] URLWithString:@"x-attach"];
    [(MFAttachmentManager *)v5 addProvider:dataProvider forBaseURL:v7];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__messageAttachmentStorageLocationsDidChangeNotification_ name:@"MailMessageStoreMessagesAttachmentStorageLocationChanged" object:0];
  }

  return v5;
}

- (void)_messageAttachmentStorageLocationsDidChangeNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"messages"];

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

        libraryID = [*(*(&v23 + 1) + 8 * i) libraryID];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        allKeys = [(NSMutableDictionary *)self->super.super._metadata allKeys];
        v11 = [allKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if ([v15 mf_rowID] == libraryID)
              {
                [(NSMutableDictionary *)self->super.super._metadata removeObjectForKey:v15];
              }
            }

            v12 = [allKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = MFAttachmentLibraryManager;
  v19 = 0;
  v7 = [(MFAttachmentManager *)&v18 _dataProviderForAttachmentURL:lCopy error:&v19];
  v8 = v19;
  if (!v7)
  {
    providers = self->super.super._providers;
    scheme = [lCopy scheme];
    v11 = [(NSMutableDictionary *)providers objectForKeyedSubscript:scheme];

    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v12 = [(NSMutableDictionary *)self->super.super._providers objectForKeyedSubscript:@"x-attach"];
      v7 = v12;
      if (error && !v12)
      {
        if (v8)
        {
          userInfo = [v8 userInfo];
          domain = [v8 domain];
          v15 = 0;
          v16 = 0;
        }

        else
        {
          domain = @"MFMessageErrorDomain";
          userInfo = 0;
          v16 = @"No Provider Found";
          v15 = @"Could not find a provider for the given URL.";
        }

        *error = [MEMORY[0x277CCA9B8] errorWithDomain:domain code:1030 localizedDescription:v15 title:v16 userInfo:userInfo];

        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)removeProviderForBaseURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v6 = [absoluteString isEqualToString:@"x-attach://"];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = MFAttachmentLibraryManager;
    [(MFAttachmentManager *)&v7 removeProviderForBaseURL:lCopy];
  }
}

- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  schemesCopy = schemes;
  array = [MEMORY[0x277CBEB18] array];
  [messageCopy messageBodyIfAvailable];
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

        mimePart = [*(*(&v24 + 1) + 8 * i) mimePart];
        partURL = [mimePart partURL];

        if (([messageCopy messageFlags] & 8) != 0)
        {
          v15 = 0;
          if (schemesCopy)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v14 = [(MFAttachmentLibraryManager *)self _dataProviderForAttachmentURL:partURL error:0];
          objc_opt_class();
          v15 = 0;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = v21;
          }

          if (schemesCopy)
          {
LABEL_12:
            scheme = [partURL scheme];
            v17 = [schemesCopy containsObject:scheme];

            if (!v17)
            {
              goto LABEL_16;
            }
          }
        }

        v18 = [(MFAttachmentManager *)self attachmentForURL:partURL withMimeBody:v15 error:0];
        if (v18)
        {
          [array addObject:v18];
        }

LABEL_16:
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];

  return array;
}

@end