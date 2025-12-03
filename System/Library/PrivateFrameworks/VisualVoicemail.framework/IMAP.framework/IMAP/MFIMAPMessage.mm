@interface MFIMAPMessage
- (BOOL)isMessageContentsLocallyAvailable;
- (MFIMAPMessage)initWithFlags:(unint64_t)flags customFlags:(id)customFlags size:(unint64_t)size uid:(unsigned int)uid;
- (id)_privacySafeDescription;
- (id)mailboxName;
- (id)messageID;
- (id)remoteID;
- (id)remoteMailboxURL;
- (int64_t)compareByNumberWithMessage:(id)message;
- (void)dealloc;
- (void)setIsPartial:(BOOL)partial;
- (void)setPreferredEncoding:(unsigned int)encoding;
@end

@implementation MFIMAPMessage

- (MFIMAPMessage)initWithFlags:(unint64_t)flags customFlags:(id)customFlags size:(unint64_t)size uid:(unsigned int)uid
{
  customFlagsCopy = customFlags;
  v16.receiver = self;
  v16.super_class = MFIMAPMessage;
  v12 = [(MFIMAPMessage *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(MFMailMessage *)v12 setMessageFlags:flags];
    v13->_size = size;
    v13->_uid = uid;
    objc_storeStrong(&v13->_customFlags, customFlags);
    v14 = v13;
  }

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPMessage;
  [(MFMailMessage *)&v2 dealloc];
}

- (id)_privacySafeDescription
{
  v7.receiver = self;
  v7.super_class = MFIMAPMessage;
  _privacySafeDescription = [(MFMailMessage *)&v7 _privacySafeDescription];
  remoteID = [(MFIMAPMessage *)self remoteID];
  v5 = [_privacySafeDescription stringByAppendingFormat:@" remoteID=%@", remoteID];

  return v5;
}

- (id)messageID
{
  v8 = *MEMORY[0x277D85DE8];
  if ((self->super._messageFlags & 0x400000000) != 0)
  {
    v2 = "temp-";
  }

  else
  {
    v2 = "";
  }

  v3 = snprintf(__str, 0x1FuLL, "%s%u", v2, self->_uid);
  v4 = CFStringCreateWithBytes(0, __str, v3, 0x600u, 0);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int64_t)compareByNumberWithMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    v6 = (HIDWORD(self->super._messageFlags) & 1) + ((*(messageCopy + 23) >> 1) >> 31);
    if (!v6)
    {
      v6 = self->_uid - *(messageCopy + 60);
    }

    v7 = v6 < 0;
    v8 = v6 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)setIsPartial:(BOOL)partial
{
  v3 = 0x400000000;
  if (!partial)
  {
    v3 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (BOOL)isMessageContentsLocallyAvailable
{
  selfCopy = self;
  messageStore = [(MFMailMessage *)self messageStore];
  LOBYTE(selfCopy) = [messageStore hasValidCacheFileForMessage:selfCopy];

  return selfCopy;
}

- (void)setPreferredEncoding:(unsigned int)encoding
{
  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFF7FFFFFFFFLL | ((encoding != -1) << 35);
  v3.receiver = self;
  v3.super_class = MFIMAPMessage;
  [(MFIMAPMessage *)&v3 setPreferredEncoding:?];
}

- (id)mailboxName
{
  messageStore = [(MFMailMessage *)self messageStore];
  mailboxName = [messageStore mailboxName];

  return mailboxName;
}

- (id)remoteID
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uid];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (id)remoteMailboxURL
{
  mailbox = [(MFMailMessage *)self mailbox];
  uRLString = [mailbox URLString];

  return uRLString;
}

@end