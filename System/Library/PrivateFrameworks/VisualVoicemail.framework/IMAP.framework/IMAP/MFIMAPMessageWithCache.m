@interface MFIMAPMessageWithCache
- (BOOL)isMessageContentsLocallyAvailable;
- (id)headerData;
- (id)messageData;
- (void)dealloc;
- (void)setHeaders:(id)a3;
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
    v4 = [(MFIMAPMessageWithCache *)&v6 messageData];

    v3 = v4;
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

- (void)setHeaders:(id)a3
{
  v5 = a3;
  if (self->_headers != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_headers, a3);
    v5 = v6;
  }
}

- (id)headerData
{
  v3 = [(MFIMAPMessageWithCache *)self messageData];
  v4 = v3;
  if (!v3 || (v5 = [v3 mf_rangeOfRFC822HeaderData], v5 == 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(v4, "mf_subdataWithRange:", v5, v6), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9.receiver = self;
    v9.super_class = MFIMAPMessageWithCache;
    v7 = [(MFIMAPMessageWithCache *)&v9 headerData];
  }

  return v7;
}

@end