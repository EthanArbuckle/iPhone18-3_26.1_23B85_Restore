@interface MFMessageDetails
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyMessageInfo;
- (void)dealloc;
@end

@implementation MFMessageDetails

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMessageDetails;
  [(MFMessageDetails *)&v2 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p libraryID=%u uid=%u flags=0x%x>", v5, self, self->libraryID, self->uid, self->messageFlags];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    libraryID = self->libraryID;
    v6 = [v4 libraryID];

    return libraryID == v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFMessageDetails;
    v7 = [(MFMessageDetails *)&v9 isEqual:v4];
  }

  return v7;
}

- (id)copyMessageInfo
{
  v15 = [MFMessageInfo alloc];
  libraryID = self->libraryID;
  mailboxID = self->mailboxID;
  dateReceived = self->dateReceived;
  dateSent = self->dateSent;
  conversationHash = self->conversationHash;
  messageIDHash = self->messageIDHash;
  v9 = [(MFMessageDetails *)self read];
  v10 = [(MFMessageDetails *)self isKnownToHaveAttachments];
  v11 = [(MFMessageDetails *)self flagged];
  BYTE3(v14) = [(MFMessageDetails *)self senderVIP];
  BYTE2(v14) = v11;
  BYTE1(v14) = v10;
  LOBYTE(v14) = v9;
  v12 = [MFMessageInfo initWithUid:v15 mailboxID:"initWithUid:mailboxID:messageID:dateReceivedInterval:dateSentInterval:conversationHash:read:knownToHaveAttachments:flagged:isVIP:" messageID:libraryID dateReceivedInterval:mailboxID dateSentInterval:messageIDHash conversationHash:dateReceived read:dateSent knownToHaveAttachments:conversationHash flagged:v14 isVIP:?];
  [(MFMessageInfo *)v12 setUidIsLibraryID:1];
  return v12;
}

@end