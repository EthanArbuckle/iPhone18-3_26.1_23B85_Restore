@interface MFIMAPMessageDownload
- (BOOL)isComplete;
- (MFIMAPMessageDownload)initWithMessage:(id)message;
- (id)data;
- (id)topLevelPart;
- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache;
- (void)dealloc;
- (void)handleFetchResult:(id)result;
- (void)processResults;
- (void)setFetchBodyData:(BOOL)data;
- (void)setTopLevelPart:(id)part;
@end

@implementation MFIMAPMessageDownload

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPMessageDownload;
  [(MFIMAPCompoundDownload *)&v2 dealloc];
}

- (MFIMAPMessageDownload)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = MFIMAPMessageDownload;
  v6 = -[MFIMAPDownload initWithUid:](&v9, sel_initWithUid_, [messageCopy uid]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (id)topLevelPart
{
  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = self->_topLevelPart;
  [(MFIMAPMessageDownload *)self mf_unlock];

  return v3;
}

- (void)setTopLevelPart:(id)part
{
  partCopy = part;
  [(MFIMAPMessageDownload *)self mf_lock];
  if (self->_topLevelPart != partCopy)
  {
    objc_storeStrong(&self->_topLevelPart, part);
  }

  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (id)data
{
  if (![(MFIMAPMessageDownload *)self isComplete])
  {
    v7 = 0;
    goto LABEL_28;
  }

  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = *(self + 64);
  data = [(MFCollectingDataConsumer *)self->_headerConsumer data];
  data2 = data;
  if ((v3 & 2) == 0)
  {
    if (!data)
    {
      v7 = 0;
      goto LABEL_23;
    }

    Mutable = [(MFCollectingDataConsumer *)self->_textConsumer data];
    if (Mutable)
    {
      v7 = [data2 mutableCopy];
      [v7 appendData:Mutable];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_22;
  }

  v7 = [data mutableCopy];

  data2 = [(MFCollectingDataConsumer *)self->_textConsumer data];
  if (data2)
  {
    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x277D24F70]) initWithBytes:"\n" length:1];
    }

    [v7 appendData:data2];
    goto LABEL_23;
  }

  if (self->_topLevelPart)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v7)
    {
      type = [(MFMimePart *)self->_topLevelPart type];
      if ([type isEqualToString:@"multipart"])
      {
        v9 = [(MFMimePart *)self->_topLevelPart bodyParameterForKey:@"boundary"];

        if (!v9)
        {
          v14[0] = 0;
          v14[1] = 0;
          if (MFMimeDataGetRangeOfHeader(v14, 0, *MEMORY[0x277D06F88], v7, 0, [v7 length]))
          {
            topLevelPart = self->_topLevelPart;
            [v7 bytes];
            MFMimePartParseContentTypeHeader();
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D24F70]) initWithBytes:"\n" length:1];
    }

    v11 = objc_alloc_init(MFMessageWriter);
    [(MFMessageWriter *)v11 appendDataForMimePart:self->_topLevelPart toData:v7 withPartData:Mutable];

LABEL_22:
  }

LABEL_23:

  [(MFIMAPMessageDownload *)self mf_unlock];
  if (v7)
  {
    v12 = (*(self + 64) & 2) != 0 && (*(self + 64) & 0x10) == 0;
    [(MFMessage *)self->_message setMessageData:v7 isPartial:v12];
  }

LABEL_28:

  return v7;
}

- (BOOL)isComplete
{
  v3 = +[MFActivityMonitor currentMonitor];
  error = [v3 error];

  if (error)
  {
    v5 = [error mf_shouldFailDownload] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if ((*(self + 64) & 4) == 0 || (*(self + 64) & 0x20) == 0)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = MFIMAPMessageDownload;
  return [(MFIMAPCompoundDownload *)&v7 isComplete]& v5;
}

- (void)handleFetchResult:(id)result
{
  resultCopy = result;
  [(MFIMAPMessageDownload *)self mf_lock];
  if (!self->_topLevelPart && [resultCopy type] == 6)
  {
    pendingFetchResults = self->super.super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v6 = self->super.super._pendingFetchResults;
      self->super.super._pendingFetchResults = v5;

      pendingFetchResults = self->super.super._pendingFetchResults;
    }

    [(NSMutableArray *)pendingFetchResults addObject:resultCopy];
  }

  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)processResults
{
  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = [(NSMutableArray *)self->super.super._pendingFetchResults count];
  if (v3)
  {
    for (i = v3; i; --i)
    {
      v5 = [(NSMutableArray *)self->super.super._pendingFetchResults objectAtIndex:0];
      v6 = v5;
      if (self->_topLevelPart || [v5 type] != 6)
      {
        goto LABEL_13;
      }

      bodyStructure = [v6 bodyStructure];
      if (bodyStructure)
      {
        v8 = objc_alloc_init(MFMailMimePart);
        if (([(MFMailMimePart *)v8 parseIMAPPropertyList:bodyStructure]& 1) != 0)
        {
          if (v8)
          {
            objc_storeStrong(&self->_topLevelPart, v8);
            if ((*(self + 64) & 2) != 0)
            {
              v9 = 0;
              [(MFMailMimePart *)v8 getNumberOfAttachments:0 isSigned:&v9 + 1 isEncrypted:&v9];
            }
          }

          goto LABEL_12;
        }
      }

      v8 = 0;
LABEL_12:

LABEL_13:
      [(NSMutableArray *)self->super.super._pendingFetchResults removeObjectAtIndex:0];
    }
  }

  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache
{
  pipelineCopy = pipeline;
  cacheCopy = cache;
  [(MFIMAPMessageDownload *)self mf_lock];
  if ((*(self + 64) & 4) == 0)
  {
    v8 = *(self + 64);
    if (v8)
    {
      if ((*(self + 64) & 0x40) != 0)
      {
        messageSize = [(MFMessage *)self->_message messageSize];
        v9 = 2 * (messageSize >= [pipelineCopy chunkSize]);
        goto LABEL_10;
      }
    }

    else if ((*(self + 64) & 0x40) != 0)
    {
      goto LABEL_11;
    }

    v9 = 2;
LABEL_10:
    *(self + 64) = *(self + 64) & 0xFD | v9;
LABEL_11:
    if (!self->_headerConsumer)
    {
      v11 = objc_alloc_init(MEMORY[0x277D24EE8]);
      headerConsumer = self->_headerConsumer;
      self->_headerConsumer = v11;

      v13 = [objc_alloc(MEMORY[0x277D24F20]) initWithConsumer:self->_headerConsumer];
      headerFilter = self->_headerFilter;
      self->_headerFilter = v13;
    }

    v15 = [cacheCopy downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"HEADER" consumer:{1024, self->_headerFilter}];
    [(MFIMAPCompoundDownload *)self addSubdownload:v15];

    if ((*(self + 64) & 2) != 0)
    {
      [pipelineCopy addFetchCommandForUid:-[MFIMAPDownload uid](self fetchItem:"uid") expectedLength:@"BODYSTRUCTURE" bodyDataConsumer:256 consumerSection:{0, 0}];
    }

    else
    {
      if (!self->_textConsumer)
      {
        v16 = objc_alloc_init(MEMORY[0x277D24EE8]);
        textConsumer = self->_textConsumer;
        self->_textConsumer = v16;

        v18 = [objc_alloc(MEMORY[0x277D24F20]) initWithConsumer:self->_textConsumer];
        textFilter = self->_textFilter;
        self->_textFilter = v18;
      }

      v20 = [cacheCopy downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"TEXT" consumer:{-[MFMessage messageSize](self->_message, "messageSize"), self->_textFilter}];
      [(MFIMAPCompoundDownload *)self addSubdownload:v20];

      *(self + 64) |= 8u;
      *(self + 64) |= 0x20u;
    }

    *(self + 64) |= 4u;
    goto LABEL_19;
  }

  if ((*(self + 64) & 0x20) == 0)
  {
    *(self + 64) |= 0x20u;
  }

LABEL_19:
  v21.receiver = self;
  v21.super_class = MFIMAPMessageDownload;
  [(MFIMAPCompoundDownload *)&v21 addCommandsToPipeline:pipelineCopy withCache:cacheCopy];
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)setFetchBodyData:(BOOL)data
{
  if (data)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 64) = *(self + 64) & 0xBF | v3;
}

@end