@interface MFWebMessageDocument
- (MFWebMessageDocument)init;
- (MFWebMessageDocument)initWithMimeBody:(id)a3;
- (MFWebMessageDocument)initWithMimePart:(id)a3;
- (id)_initWithMimePart:(id)a3 htmlData:(id)a4;
- (id)attachmentForURL:(id)a3;
- (id)attachmentsInDocument;
- (id)fileWrapper;
- (id)mimePartForURL:(id)a3;
- (id)preferredCharacterSet;
- (void)dealloc;
@end

@implementation MFWebMessageDocument

- (MFWebMessageDocument)init
{
  v12.receiver = self;
  v12.super_class = MFWebMessageDocument;
  v2 = [(MFWebAttachmentSource *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_uniqueId = atomic_fetch_add_explicit(init_lastUniqueId, 1u, memory_order_relaxed) + 1;
    v4 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-msg://%ul/", v3->_uniqueId];
    v6 = [v4 initWithString:v5];
    baseURL = v3->_baseURL;
    v3->_baseURL = v6;

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MFWebMessageDocument/%ul", v3->_uniqueId];
    v9 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:v8 andDelegate:v3];
    lock = v3->_lock;
    v3->_lock = v9;

    v3->_preferredEncoding = -1;
  }

  return v3;
}

- (MFWebMessageDocument)initWithMimeBody:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 isHTML])
  {
    v6 = [v5 textHtmlPart];
    self = [(MFWebMessageDocument *)self initWithMimePart:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithMimePart:(id)a3 htmlData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 mimeBody];
  v10 = v9;
  v11 = 0;
  if (!v8 || !v7 || !v9)
  {
    goto LABEL_6;
  }

  v12 = [(MFWebMessageDocument *)self init];
  v11 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_htmlPart, a3);
    objc_storeStrong(&v11->_mimeBody, v10);
    v13 = v8;
    self = v11->_htmlData;
    v11->_htmlData = v13;
LABEL_6:
  }

  return v11;
}

- (MFWebMessageDocument)initWithMimePart:(id)a3
{
  v4 = a3;
  v5 = [v4 bodyData];
  v6 = [(MFWebMessageDocument *)self _initWithMimePart:v4 htmlData:v5];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFWebMessageDocument;
  [(MFWebAttachmentSource *)&v2 dealloc];
}

- (id)mimePartForURL:(id)a3
{
  v4 = a3;
  [(MFLock *)self->_lock lock];
  if (self->_partsByURL)
  {
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v25 = v4;
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    partsByURL = self->_partsByURL;
    self->_partsByURL = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    partsByFilename = self->_partsByFilename;
    self->_partsByFilename = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v10 = [(MFWebMessageDocument *)self mimeBody];
    v11 = [v10 topLevelPart];
    v12 = [v9 initWithObjects:{v11, 0}];
    while (1)
    {

      if (![v12 count])
      {
        break;
      }

      v10 = [v12 lastObject];
      v13 = [v10 contentID];
      v11 = MFCreateURLForContentID(v13);

      v14 = [v10 contentLocation];
      v15 = [v10 attachmentFilename];
      if (v11)
      {
        [(NSMutableDictionary *)self->_partsByURL setObject:v10 forKey:v11];
      }

      if (v14)
      {
        v16 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithString:v14 relativeToURL:self->_baseURL];
        v17 = v16;
        if (v16)
        {
          v18 = self->_partsByURL;
          v19 = [v16 absoluteURL];
          [(NSMutableDictionary *)v18 setObject:v10 forKey:v19];
        }
      }

      if (v15)
      {
        [(NSMutableDictionary *)self->_partsByFilename setObject:v10 forKey:v15];
      }

      [v12 removeLastObject];
      v20 = [v10 subparts];
      if (v20)
      {
        [v12 addObjectsFromArray:v20];
      }
    }

    v4 = v25;
    if (!v25)
    {
      goto LABEL_19;
    }
  }

  v21 = [(NSMutableDictionary *)self->_partsByURL objectForKey:v4];
  if (!v21)
  {
LABEL_19:
    v22 = [v4 path];
    v23 = [v22 lastPathComponent];

    if (v23)
    {
      v21 = [(NSMutableDictionary *)self->_partsByFilename objectForKey:v23];
    }

    else
    {
      v21 = 0;
    }
  }

  [(MFLock *)self->_lock unlock];

  return v21;
}

- (id)attachmentForURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFWebMessageDocument;
  v5 = [(MFWebAttachmentSource *)&v10 attachmentForURL:v4];
  if (!v5)
  {
    v6 = [(MFWebMessageDocument *)self mimePartForURL:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 attachments];
      if ([v8 count])
      {
        v5 = [v8 objectAtIndex:0];
        [(MFWebAttachmentSource *)self setAttachment:v5 forURL:v4];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)attachmentsInDocument
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(MFWebMessageDocument *)self mimePartForURL:0];
  [(MFLock *)self->_lock lock];
  v4 = [(NSMutableDictionary *)self->_partsByURL allKeys];
  [(MFLock *)self->_lock unlock];
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(MFWebMessageDocument *)self attachmentForURL:*(*(&v14 + 1) + 8 * i), v14];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)preferredCharacterSet
{
  if ([(MFWebMessageDocument *)self preferredEncoding]== -1 || (MFCharsetForEncoding(), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(MFWebMessageDocument *)self mimePart];
    v3 = [v4 bodyParameterForKey:@"charset"];
  }

  return v3;
}

- (id)fileWrapper
{
  v3 = objc_alloc(MEMORY[0x277D24F38]);
  v4 = [(MFWebMessageDocument *)self htmlData];
  v5 = [v3 initRegularFileWithContents:v4];

  v6 = [(MFWebMessageDocument *)self mimePart];
  [v6 configureFileWrapper:v5];

  return v5;
}

@end