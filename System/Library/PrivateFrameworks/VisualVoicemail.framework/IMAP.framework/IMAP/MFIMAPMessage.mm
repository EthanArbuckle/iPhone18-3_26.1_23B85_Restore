@interface MFIMAPMessage
- (BOOL)isMessageContentsLocallyAvailable;
- (MFIMAPMessage)initWithFlags:(unint64_t)a3 customFlags:(id)a4 size:(unint64_t)a5 uid:(unsigned int)a6;
- (id)_privacySafeDescription;
- (id)mailboxName;
- (id)messageID;
- (id)remoteID;
- (id)remoteMailboxURL;
- (int64_t)compareByNumberWithMessage:(id)a3;
- (void)dealloc;
- (void)setIsPartial:(BOOL)a3;
- (void)setPreferredEncoding:(unsigned int)a3;
@end

@implementation MFIMAPMessage

- (MFIMAPMessage)initWithFlags:(unint64_t)a3 customFlags:(id)a4 size:(unint64_t)a5 uid:(unsigned int)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = MFIMAPMessage;
  v12 = [(MFIMAPMessage *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(MFMailMessage *)v12 setMessageFlags:a3];
    v13->_size = a5;
    v13->_uid = a6;
    objc_storeStrong(&v13->_customFlags, a4);
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
  v3 = [(MFMailMessage *)&v7 _privacySafeDescription];
  v4 = [(MFIMAPMessage *)self remoteID];
  v5 = [v3 stringByAppendingFormat:@" remoteID=%@", v4];

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

- (int64_t)compareByNumberWithMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = (HIDWORD(self->super._messageFlags) & 1) + ((*(v4 + 23) >> 1) >> 31);
    if (!v6)
    {
      v6 = self->_uid - *(v4 + 60);
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

- (void)setIsPartial:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (BOOL)isMessageContentsLocallyAvailable
{
  v2 = self;
  v3 = [(MFMailMessage *)self messageStore];
  LOBYTE(v2) = [v3 hasValidCacheFileForMessage:v2];

  return v2;
}

- (void)setPreferredEncoding:(unsigned int)a3
{
  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFF7FFFFFFFFLL | ((a3 != -1) << 35);
  v3.receiver = self;
  v3.super_class = MFIMAPMessage;
  [(MFIMAPMessage *)&v3 setPreferredEncoding:?];
}

- (id)mailboxName
{
  v2 = [(MFMailMessage *)self messageStore];
  v3 = [v2 mailboxName];

  return v3;
}

- (id)remoteID
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uid];
  v3 = [v2 stringValue];

  return v3;
}

- (id)remoteMailboxURL
{
  v2 = [(MFMailMessage *)self mailbox];
  v3 = [v2 URLString];

  return v3;
}

@end