@interface MFIMAPFetchResult
- (MFIMAPFetchResult)initWithType:(int)a3;
- (id)description;
- (id)fetchData;
- (id)section;
- (unint64_t)startOffset;
- (unsigned)encoding;
- (void)dealloc;
- (void)setBodyStructure:(id)a3;
- (void)setEnvelope:(id)a3;
- (void)setFetchData:(id)a3;
- (void)setInternalDate:(id)a3;
- (void)setSection:(id)a3;
@end

@implementation MFIMAPFetchResult

- (MFIMAPFetchResult)initWithType:(int)a3
{
  v13.receiver = self;
  v13.super_class = MFIMAPFetchResult;
  v4 = [(MFIMAPFetchResult *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_itemType = a3;
    envelope = v4->_typeSpecific.envelope;
    v4->_typeSpecific.envelope = 0;

    internalDate = v5->_typeSpecific.internalDate;
    v5->_typeSpecific.internalDate = 0;

    bodyStructure = v5->_typeSpecific.bodyStructure;
    v5->_typeSpecific.messageSize = 0;
    v5->_typeSpecific.bodyStructure = 0;

    section = v5->_typeSpecific.bodySectionInfo.section;
    v5->_typeSpecific.bodySectionInfo.section = 0;

    sectionData = v5->_typeSpecific.bodySectionInfo.sectionData;
    v5->_typeSpecific.bodySectionInfo.startOffset = 0;
    v5->_typeSpecific.bodySectionInfo.sectionData = 0;

    v5->_typeSpecific.uid = 0;
    v5->_typeSpecific.uniqueRemoteId = 0;
    v5->_typeSpecific.flags.messageFlags = 0;
    customFlags = v5->_typeSpecific.flags.customFlags;
    v5->_typeSpecific.flags.customFlags = 0;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPFetchResult;
  [(MFIMAPFetchResult *)&v2 dealloc];
}

- (void)setEnvelope:(id)a3
{
  v5 = a3;
  envelope = self->_typeSpecific.envelope;
  p_typeSpecific = &self->_typeSpecific;
  if (envelope != v5)
  {
    v8 = v5;
    objc_storeStrong(&p_typeSpecific->envelope, a3);
    v5 = v8;
  }
}

- (void)setInternalDate:(id)a3
{
  v5 = a3;
  internalDate = self->_typeSpecific.internalDate;
  p_internalDate = &self->_typeSpecific.internalDate;
  if (internalDate != v5)
  {
    v8 = v5;
    objc_storeStrong(p_internalDate, a3);
    v5 = v8;
  }
}

- (id)fetchData
{
  itemType = self->_itemType;
  v4 = itemType > 7;
  v5 = (1 << itemType) & 0xB0;
  if (v4 || v5 == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = self->_typeSpecific.bodySectionInfo.sectionData;
  }

  return v7;
}

- (void)setFetchData:(id)a3
{
  v5 = a3;
  itemType = self->_itemType;
  v7 = itemType > 7;
  v8 = (1 << itemType) & 0xB0;
  if (!v7 && v8 != 0)
  {
    sectionData = self->_typeSpecific.bodySectionInfo.sectionData;
    p_sectionData = &self->_typeSpecific.bodySectionInfo.sectionData;
    if (sectionData != v5)
    {
      v12 = v5;
      objc_storeStrong(p_sectionData, a3);
      v5 = v12;
    }
  }
}

- (void)setBodyStructure:(id)a3
{
  v5 = a3;
  bodyStructure = self->_typeSpecific.bodyStructure;
  p_bodyStructure = &self->_typeSpecific.bodyStructure;
  if (bodyStructure != v5)
  {
    v8 = v5;
    objc_storeStrong(p_bodyStructure, a3);
    v5 = v8;
  }
}

- (unint64_t)startOffset
{
  itemType = self->_itemType;
  v3 = itemType > 7;
  v4 = (1 << itemType) & 0xB0;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  else
  {
    return self->_typeSpecific.bodySectionInfo.startOffset;
  }
}

- (id)section
{
  itemType = self->_itemType;
  if (itemType == 7)
  {
    v5 = self->_typeSpecific.bodySectionInfo.section;
  }

  else
  {
    v4 = @"HEADER";
    if (itemType != 4)
    {
      v4 = 0;
    }

    if (itemType == 5)
    {
      v5 = @"TEXT";
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

- (void)setSection:(id)a3
{
  v5 = a3;
  section = self->_typeSpecific.bodySectionInfo.section;
  p_bodySectionInfo = &self->_typeSpecific.bodySectionInfo;
  if (section != v5)
  {
    v8 = v5;
    objc_storeStrong(&p_bodySectionInfo->section, a3);
    v5 = v8;
  }
}

- (unsigned)encoding
{
  v20 = *MEMORY[0x277D85DE8];
  [(MFIMAPFetchResult *)self flagsArray];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      if (v7)
      {
        v8 = [*(*(&v15 + 1) + 8 * v6) rangeOfString:@"CHARSET=" options:{9, v15}];
        if (v9)
        {
          v10 = v8 + v9;
          if (v8 + v9 < [v7 length])
          {
            v11 = [v7 substringFromIndex:v10];
            v12 = MFEncodingForCharset();

            if (v12 != -1)
            {
              break;
            }
          }
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v12 = -1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)description
{
  itemType = self->_itemType;
  if (itemType > 5)
  {
    if (itemType > 8)
    {
      if (itemType != 9)
      {
        if (itemType != 10)
        {
          if (itemType == 11)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"MODSEQ %d", 0];
            goto LABEL_28;
          }

          goto LABEL_33;
        }

        v16 = MEMORY[0x277CCACA8];
        v7 = [(MFIMAPFetchResult *)self flagsArray];
        v17 = [(__CFString *)v7 componentsJoinedByString:@" "];
        v12 = [v16 stringWithFormat:@"FLAGS (%@)", v17];

LABEL_32:
        if (v12)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v6 = MEMORY[0x277CCACA8];
      v18 = [(MFIMAPFetchResult *)self uniqueRemoteId];
      v5 = @"X-GM-MSGID %llu";
    }

    else
    {
      if (itemType == 6)
      {
        v13 = MEMORY[0x277CCACA8];
        v7 = CFCopyDescription([(MFIMAPFetchResult *)self bodyStructure]);
        [v13 stringWithFormat:@"BODYSTRUCTURE %@", v7, v19, v20];
        v12 = LABEL_31:;
        goto LABEL_32;
      }

      if (itemType == 7)
      {
LABEL_12:
        v7 = [(MFIMAPFetchResult *)self section];
        v8 = [(MFIMAPFetchResult *)self startOffset];
        v9 = [(MFIMAPFetchResult *)self fetchData];
        v10 = [v9 length];

        v11 = &stru_288159858;
        if (v7)
        {
          v11 = v7;
        }

        if (v8)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"BODY[%@]<%lu> {%lu}...", v11, v8, v10];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"BODY[%@] {%lu}...", v11, v10, v20];
        }

        goto LABEL_31;
      }

      v6 = MEMORY[0x277CCACA8];
      v18 = [(MFIMAPFetchResult *)self uid];
      v5 = @"UID %u";
    }

LABEL_26:
    v4 = v6;
    goto LABEL_27;
  }

  if (itemType > 2)
  {
    if ((itemType - 4) < 2)
    {
      goto LABEL_12;
    }

    if (itemType != 3)
    {
      goto LABEL_33;
    }

    v6 = MEMORY[0x277CCACA8];
    v18 = [(MFIMAPFetchResult *)self messageSize];
    v5 = @"RFC822.SIZE %u";
    goto LABEL_26;
  }

  switch(itemType)
  {
    case 0:
      v12 = @"* INVALID *";
      goto LABEL_34;
    case 1:
      v14 = MEMORY[0x277CCACA8];
      v7 = [(MFIMAPFetchResult *)self envelope];
      [v14 stringWithFormat:@"ENVELOPE %@", v7, v19, v20];
      goto LABEL_31;
    case 2:
      v4 = MEMORY[0x277CCACA8];
      v5 = @"INTERNALDATE";
LABEL_27:
      [v4 stringWithFormat:v5, v18];
      v12 = LABEL_28:;
      if (v12)
      {
        goto LABEL_34;
      }

      break;
  }

LABEL_33:
  v21.receiver = self;
  v21.super_class = MFIMAPFetchResult;
  v12 = [(MFIMAPFetchResult *)&v21 description];
LABEL_34:

  return v12;
}

@end