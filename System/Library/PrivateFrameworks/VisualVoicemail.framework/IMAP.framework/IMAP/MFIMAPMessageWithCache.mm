@interface MFIMAPMessageWithCache
- (BOOL)isMessageContentsLocallyAvailable;
- (id)headerData;
- (id)messageData;
- (void)dealloc;
- (void)setHeaders:(id)headers;
@end

@implementation MFIMAPMessageWithCache

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPMessageWithCache;
  [(MFIMAPMessage *)&v2 dealloc];
}

- (id)messageData
{
  if ([(MFIMAPMessage *)self isPartial])
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_messageData;
  }

  if ([(MFIMAPMessage *)self isPartial])
  {
    v6.receiver = self;
    v6.super_class = MFIMAPMessageWithCache;
    messageData = [(MFIMAPMessageWithCache *)&v6 messageData];

    v3 = messageData;
  }

  return v3;
}

- (BOOL)isMessageContentsLocallyAvailable
{
  if (self->_messageData)
  {
    return ![(MFIMAPMessage *)self isPartial];
  }

  else
  {
    return 0;
  }
}

- (void)setHeaders:(id)headers
{
  headersCopy = headers;
  if (self->_headers != headersCopy)
  {
    v6 = headersCopy;
    objc_storeStrong(&self->_headers, headers);
    headersCopy = v6;
  }
}

- (id)headerData
{
  messageData = [(MFIMAPMessageWithCache *)self messageData];
  v4 = messageData;
  if (!messageData || (v5 = [messageData mf_rangeOfRFC822HeaderData], v5 == 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(v4, "mf_subdataWithRange:", v5, v6), (headerData = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9.receiver = self;
    v9.super_class = MFIMAPMessageWithCache;
    headerData = [(MFIMAPMessageWithCache *)&v9 headerData];
  }

  return headerData;
}

@end