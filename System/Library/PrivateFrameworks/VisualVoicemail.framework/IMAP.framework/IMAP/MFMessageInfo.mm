@interface MFMessageInfo
- (BOOL)isEqual:(id)a3;
- (MFMessageInfo)init;
- (MFMessageInfo)initWithUid:(unsigned int)a3 mailboxID:(unsigned int)a4 messageID:(int64_t)a5 dateReceivedInterval:(unsigned int)a6 dateSentInterval:(unsigned int)a7 conversationHash:(int64_t)a8 read:(BOOL)a9 knownToHaveAttachments:(BOOL)a10 flagged:(BOOL)a11 isVIP:(BOOL)a12;
- (NSString)description;
- (id)_flagDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)generationCompare:(id)a3;
- (unint64_t)hash;
- (void)setDeleted:(BOOL)a3;
- (void)setIsVIP:(BOOL)a3;
- (void)setKnownToHaveAttachments:(BOOL)a3;
- (void)setRead:(BOOL)a3;
- (void)setUidIsLibraryID:(BOOL)a3;
@end

@implementation MFMessageInfo

- (void)setRead:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setDeleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setUidIsLibraryID:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setKnownToHaveAttachments:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xEF | v3;
}

- (void)setIsVIP:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xDF | v3;
}

- (MFMessageInfo)init
{
  v3.receiver = self;
  v3.super_class = MFMessageInfo;
  result = [(MFMessageInfo *)&v3 init];
  if (result)
  {
    result->_generationNumber = atomic_fetch_add_explicit(&__globalGenerationNumber, 1uLL, memory_order_relaxed) + 1;
  }

  return result;
}

- (MFMessageInfo)initWithUid:(unsigned int)a3 mailboxID:(unsigned int)a4 messageID:(int64_t)a5 dateReceivedInterval:(unsigned int)a6 dateSentInterval:(unsigned int)a7 conversationHash:(int64_t)a8 read:(BOOL)a9 knownToHaveAttachments:(BOOL)a10 flagged:(BOOL)a11 isVIP:(BOOL)a12
{
  result = [(MFMessageInfo *)self init];
  if (result)
  {
    result->_uid = a3;
    result->_dateReceivedInterval = a6;
    result->_sortUid = a3;
    result->_sortDateReceivedInterval = a6;
    result->_dateSentInterval = a7;
    result->_mailboxID = a4;
    result->_conversationHash = a8;
    result->_messageIDHash = a5;
    if (a9)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    if (a10)
    {
      v20 = 16;
    }

    else
    {
      v20 = 0;
    }

    if (a12)
    {
      v21 = 32;
    }

    else
    {
      v21 = 0;
    }

    *(result + 8) = v20 | v19 | a11 | v21 | *(result + 8) & 0xCC;
  }

  return result;
}

- (int64_t)generationCompare:(id)a3
{
  v3 = *(a3 + 6);
  generationNumber = self->_generationNumber;
  v5 = v3 <= generationNumber;
  v6 = v3 < generationNumber;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    uid = self->_uid;
    v7 = uid && v5[5] == uid && v5[4] == self->_mailboxID;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  result = self->_uid;
  if (!result)
  {
    [MFMessageInfo hash];
  }

  return result;
}

- (NSString)description
{
  sortUid = self->_sortUid;
  if (self->_uid == sortUid)
  {
    v15 = &stru_288159858;
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@", sortUid=%u", sortUid];
  }

  if (self->_dateReceivedInterval == self->_sortDateReceivedInterval)
  {
    v4 = &stru_288159858;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@", sortReceived=%u", self->_sortDateReceivedInterval];
  }

  v14 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  conversationHash = self->_conversationHash;
  messageIDHash = self->_messageIDHash;
  mailboxID = self->_mailboxID;
  uid = self->_uid;
  dateReceivedInterval = self->_dateReceivedInterval;
  v11 = [(MFMessageInfo *)self _flagDescription];
  v12 = [v14 stringWithFormat:@"<%@: %p uid=%u; mailboxID=%U; conversation=%lld; messageID=%lld; received=%u%@%@; %@;>", v5, self, uid, mailboxID, conversationHash, messageIDHash, dateReceivedInterval, v15, v4, v11];;

  return v12;
}

- (id)_flagDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = asNSStringBOOL([(MFMessageInfo *)self read]);
  v5 = [v3 stringWithFormat:@"read=%@", v4];

  v6 = [(MFMessageInfo *)self flagged];
  v7 = @", flagged=YES";
  if (!v6)
  {
    v7 = &stru_288159858;
  }

  v8 = v7;
  v9 = [(MFMessageInfo *)self isVIP];
  v10 = @", isVIP=YES";
  if (!v9)
  {
    v10 = &stru_288159858;
  }

  v11 = v10;
  v12 = [(MFMessageInfo *)self isKnownToHaveAttachments];
  v13 = @", hasAttachments=YES";
  if (!v12)
  {
    v13 = &stru_288159858;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"flags={ %@%@%@%@ }", v5, v8, v11, v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = *(self + 8);
  BYTE3(v8) = (v5 & 0x20) != 0;
  BYTE2(v8) = v5 & 1;
  BYTE1(v8) = (v5 & 0x10) != 0;
  LOBYTE(v8) = (v5 & 2) != 0;
  v6 = [v4 initWithUid:self->_uid mailboxID:self->_mailboxID messageID:self->_messageIDHash dateReceivedInterval:self->_dateReceivedInterval dateSentInterval:self->_dateSentInterval conversationHash:self->_conversationHash read:v8 knownToHaveAttachments:? flagged:? isVIP:?];
  [v6 setUidIsLibraryID:{-[MFMessageInfo uidIsLibraryID](self, "uidIsLibraryID")}];
  return v6;
}

@end