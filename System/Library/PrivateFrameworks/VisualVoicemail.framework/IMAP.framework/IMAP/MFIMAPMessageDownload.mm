@interface MFIMAPMessageDownload
- (BOOL)isComplete;
- (MFIMAPMessageDownload)initWithMessage:(id)a3;
- (id)data;
- (id)topLevelPart;
- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4;
- (void)dealloc;
- (void)handleFetchResult:(id)a3;
- (void)processResults;
- (void)setFetchBodyData:(BOOL)a3;
- (void)setTopLevelPart:(id)a3;
@end

@implementation MFIMAPMessageDownload

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPMessageDownload;
  [(MFIMAPCompoundDownload *)&v2 dealloc];
}

- (MFIMAPMessageDownload)initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFIMAPMessageDownload;
  v6 = -[MFIMAPDownload initWithUid:](&v9, sel_initWithUid_, [v5 uid]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
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

- (void)setTopLevelPart:(id)a3
{
  v5 = a3;
  [(MFIMAPMessageDownload *)self mf_lock];
  if (self->_topLevelPart != v5)
  {
    objc_storeStrong(&self->_topLevelPart, a3);
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
  v4 = [(MFCollectingDataConsumer *)self->_headerConsumer data];
  v5 = v4;
  if ((v3 & 2) == 0)
  {
    if (!v4)
    {
      v7 = 0;
      goto LABEL_23;
    }

    Mutable = [(MFCollectingDataConsumer *)self->_textConsumer data];
    if (Mutable)
    {
      v7 = [v5 mutableCopy];
      [v7 appendData:Mutable];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_22;
  }

  v7 = [v4 mutableCopy];

  v5 = [(MFCollectingDataConsumer *)self->_textConsumer data];
  if (v5)
  {
    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x277D24F70]) initWithBytes:"\n" length:1];
    }

    [v7 appendData:v5];
    goto LABEL_23;
  }

  if (self->_topLevelPart)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v7)
    {
      v8 = [(MFMimePart *)self->_topLevelPart type];
      if ([v8 isEqualToString:@"multipart"])
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
  v4 = [v3 error];

  if (v4)
  {
    v5 = [v4 mf_shouldFailDownload] ^ 1;
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

- (void)handleFetchResult:(id)a3
{
  v7 = a3;
  [(MFIMAPMessageDownload *)self mf_lock];
  if (!self->_topLevelPart && [v7 type] == 6)
  {
    pendingFetchResults = self->super.super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v6 = self->super.super._pendingFetchResults;
      self->super.super._pendingFetchResults = v5;

      pendingFetchResults = self->super.super._pendingFetchResults;
    }

    [(NSMutableArray *)pendingFetchResults addObject:v7];
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

      v7 = [v6 bodyStructure];
      if (v7)
      {
        v8 = objc_alloc_init(MFMailMimePart);
        if (([(MFMailMimePart *)v8 parseIMAPPropertyList:v7]& 1) != 0)
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

- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFIMAPMessageDownload *)self mf_lock];
  if ((*(self + 64) & 4) == 0)
  {
    v8 = *(self + 64);
    if (v8)
    {
      if ((*(self + 64) & 0x40) != 0)
      {
        v10 = [(MFMessage *)self->_message messageSize];
        v9 = 2 * (v10 >= [v6 chunkSize]);
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

    v15 = [v7 downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"HEADER" consumer:{1024, self->_headerFilter}];
    [(MFIMAPCompoundDownload *)self addSubdownload:v15];

    if ((*(self + 64) & 2) != 0)
    {
      [v6 addFetchCommandForUid:-[MFIMAPDownload uid](self fetchItem:"uid") expectedLength:@"BODYSTRUCTURE" bodyDataConsumer:256 consumerSection:{0, 0}];
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

      v20 = [v7 downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"TEXT" consumer:{-[MFMessage messageSize](self->_message, "messageSize"), self->_textFilter}];
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
  [(MFIMAPCompoundDownload *)&v21 addCommandsToPipeline:v6 withCache:v7];
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)setFetchBodyData:(BOOL)a3
{
  if (a3)
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