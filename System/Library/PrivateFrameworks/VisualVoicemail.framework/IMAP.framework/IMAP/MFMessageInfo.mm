@interface MFMessageInfo
- (BOOL)isEqual:(id)equal;
- (MFMessageInfo)init;
- (MFMessageInfo)initWithUid:(unsigned int)uid mailboxID:(unsigned int)d messageID:(int64_t)iD dateReceivedInterval:(unsigned int)interval dateSentInterval:(unsigned int)sentInterval conversationHash:(int64_t)hash read:(BOOL)read knownToHaveAttachments:(BOOL)self0 flagged:(BOOL)self1 isVIP:(BOOL)self2;
- (NSString)description;
- (id)_flagDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)generationCompare:(id)compare;
- (unint64_t)hash;
- (void)setDeleted:(BOOL)deleted;
- (void)setIsVIP:(BOOL)p;
- (void)setKnownToHaveAttachments:(BOOL)attachments;
- (void)setRead:(BOOL)read;
- (void)setUidIsLibraryID:(BOOL)d;
@end

@implementation MFMessageInfo

- (void)setRead:(BOOL)read
{
  if (read)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v3;
}

- (void)setDeleted:(BOOL)deleted
{
  if (deleted)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v3;
}

- (void)setUidIsLibraryID:(BOOL)d
{
  if (d)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xF7 | v3;
}

- (void)setKnownToHaveAttachments:(BOOL)attachments
{
  if (attachments)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 8) = *(self + 8) & 0xEF | v3;
}

- (void)setIsVIP:(BOOL)p
{
  if (p)
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

- (MFMessageInfo)initWithUid:(unsigned int)uid mailboxID:(unsigned int)d messageID:(int64_t)iD dateReceivedInterval:(unsigned int)interval dateSentInterval:(unsigned int)sentInterval conversationHash:(int64_t)hash read:(BOOL)read knownToHaveAttachments:(BOOL)self0 flagged:(BOOL)self1 isVIP:(BOOL)self2
{
  result = [(MFMessageInfo *)self init];
  if (result)
  {
    result->_uid = uid;
    result->_dateReceivedInterval = interval;
    result->_sortUid = uid;
    result->_sortDateReceivedInterval = interval;
    result->_dateSentInterval = sentInterval;
    result->_mailboxID = d;
    result->_conversationHash = hash;
    result->_messageIDHash = iD;
    if (read)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    if (attachments)
    {
      v20 = 16;
    }

    else
    {
      v20 = 0;
    }

    if (p)
    {
      v21 = 32;
    }

    else
    {
      v21 = 0;
    }

    *(result + 8) = v20 | v19 | flagged | v21 | *(result + 8) & 0xCC;
  }

  return result;
}

- (int64_t)generationCompare:(id)compare
{
  v3 = *(compare + 6);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
    sortUid = &stru_288159858;
  }

  else
  {
    sortUid = [MEMORY[0x277CCACA8] stringWithFormat:@", sortUid=%u", sortUid];
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
  _flagDescription = [(MFMessageInfo *)self _flagDescription];
  v12 = [v14 stringWithFormat:@"<%@: %p uid=%u; mailboxID=%U; conversation=%lld; messageID=%lld; received=%u%@%@; %@;>", v5, self, uid, mailboxID, conversationHash, messageIDHash, dateReceivedInterval, sortUid, v4, _flagDescription];;

  return v12;
}

- (id)_flagDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = asNSStringBOOL([(MFMessageInfo *)self read]);
  v5 = [v3 stringWithFormat:@"read=%@", v4];

  flagged = [(MFMessageInfo *)self flagged];
  v7 = @", flagged=YES";
  if (!flagged)
  {
    v7 = &stru_288159858;
  }

  v8 = v7;
  isVIP = [(MFMessageInfo *)self isVIP];
  v10 = @", isVIP=YES";
  if (!isVIP)
  {
    v10 = &stru_288159858;
  }

  v11 = v10;
  isKnownToHaveAttachments = [(MFMessageInfo *)self isKnownToHaveAttachments];
  v13 = @", hasAttachments=YES";
  if (!isKnownToHaveAttachments)
  {
    v13 = &stru_288159858;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"flags={ %@%@%@%@ }", v5, v8, v11, v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
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