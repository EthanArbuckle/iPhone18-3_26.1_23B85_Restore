@interface MFWebMessageDocument
- (MFWebMessageDocument)init;
- (MFWebMessageDocument)initWithMimeBody:(id)body;
- (MFWebMessageDocument)initWithMimePart:(id)part;
- (id)_initWithMimePart:(id)part htmlData:(id)data;
- (id)attachmentForURL:(id)l;
- (id)attachmentsInDocument;
- (id)fileWrapper;
- (id)mimePartForURL:(id)l;
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

- (MFWebMessageDocument)initWithMimeBody:(id)body
{
  bodyCopy = body;
  v5 = bodyCopy;
  if (bodyCopy && [bodyCopy isHTML])
  {
    textHtmlPart = [v5 textHtmlPart];
    self = [(MFWebMessageDocument *)self initWithMimePart:textHtmlPart];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithMimePart:(id)part htmlData:(id)data
{
  partCopy = part;
  dataCopy = data;
  mimeBody = [partCopy mimeBody];
  v10 = mimeBody;
  v11 = 0;
  if (!dataCopy || !partCopy || !mimeBody)
  {
    goto LABEL_6;
  }

  v12 = [(MFWebMessageDocument *)self init];
  v11 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_htmlPart, part);
    objc_storeStrong(&v11->_mimeBody, v10);
    v13 = dataCopy;
    self = v11->_htmlData;
    v11->_htmlData = v13;
LABEL_6:
  }

  return v11;
}

- (MFWebMessageDocument)initWithMimePart:(id)part
{
  partCopy = part;
  bodyData = [partCopy bodyData];
  v6 = [(MFWebMessageDocument *)self _initWithMimePart:partCopy htmlData:bodyData];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFWebMessageDocument;
  [(MFWebAttachmentSource *)&v2 dealloc];
}

- (id)mimePartForURL:(id)l
{
  lCopy = l;
  [(MFLock *)self->_lock lock];
  if (self->_partsByURL)
  {
    if (!lCopy)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v25 = lCopy;
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    partsByURL = self->_partsByURL;
    self->_partsByURL = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    partsByFilename = self->_partsByFilename;
    self->_partsByFilename = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    mimeBody = [(MFWebMessageDocument *)self mimeBody];
    topLevelPart = [mimeBody topLevelPart];
    v12 = [v9 initWithObjects:{topLevelPart, 0}];
    while (1)
    {

      if (![v12 count])
      {
        break;
      }

      mimeBody = [v12 lastObject];
      contentID = [mimeBody contentID];
      topLevelPart = MFCreateURLForContentID(contentID);

      contentLocation = [mimeBody contentLocation];
      attachmentFilename = [mimeBody attachmentFilename];
      if (topLevelPart)
      {
        [(NSMutableDictionary *)self->_partsByURL setObject:mimeBody forKey:topLevelPart];
      }

      if (contentLocation)
      {
        v16 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithString:contentLocation relativeToURL:self->_baseURL];
        v17 = v16;
        if (v16)
        {
          v18 = self->_partsByURL;
          absoluteURL = [v16 absoluteURL];
          [(NSMutableDictionary *)v18 setObject:mimeBody forKey:absoluteURL];
        }
      }

      if (attachmentFilename)
      {
        [(NSMutableDictionary *)self->_partsByFilename setObject:mimeBody forKey:attachmentFilename];
      }

      [v12 removeLastObject];
      subparts = [mimeBody subparts];
      if (subparts)
      {
        [v12 addObjectsFromArray:subparts];
      }
    }

    lCopy = v25;
    if (!v25)
    {
      goto LABEL_19;
    }
  }

  v21 = [(NSMutableDictionary *)self->_partsByURL objectForKey:lCopy];
  if (!v21)
  {
LABEL_19:
    path = [lCopy path];
    lastPathComponent = [path lastPathComponent];

    if (lastPathComponent)
    {
      v21 = [(NSMutableDictionary *)self->_partsByFilename objectForKey:lastPathComponent];
    }

    else
    {
      v21 = 0;
    }
  }

  [(MFLock *)self->_lock unlock];

  return v21;
}

- (id)attachmentForURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = MFWebMessageDocument;
  v5 = [(MFWebAttachmentSource *)&v10 attachmentForURL:lCopy];
  if (!v5)
  {
    v6 = [(MFWebMessageDocument *)self mimePartForURL:lCopy];
    v7 = v6;
    if (v6)
    {
      attachments = [v6 attachments];
      if ([attachments count])
      {
        v5 = [attachments objectAtIndex:0];
        [(MFWebAttachmentSource *)self setAttachment:v5 forURL:lCopy];
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
  allKeys = [(NSMutableDictionary *)self->_partsByURL allKeys];
  [(MFLock *)self->_lock unlock];
  if ([allKeys count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = allKeys;
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
    mimePart = [(MFWebMessageDocument *)self mimePart];
    v3 = [mimePart bodyParameterForKey:@"charset"];
  }

  return v3;
}

- (id)fileWrapper
{
  v3 = objc_alloc(MEMORY[0x277D24F38]);
  htmlData = [(MFWebMessageDocument *)self htmlData];
  v5 = [v3 initRegularFileWithContents:htmlData];

  mimePart = [(MFWebMessageDocument *)self mimePart];
  [mimePart configureFileWrapper:v5];

  return v5;
}

@end