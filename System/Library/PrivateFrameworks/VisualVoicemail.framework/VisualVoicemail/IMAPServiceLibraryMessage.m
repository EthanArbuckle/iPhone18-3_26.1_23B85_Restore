@interface IMAPServiceLibraryMessage
- (id)messageIDHeader;
- (void)dealloc;
- (void)setMessageIDHeader:(id)a3;
@end

@implementation IMAPServiceLibraryMessage

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMAPServiceLibraryMessage;
  [(IMAPServiceLibraryMessage *)&v2 dealloc];
}

- (void)setMessageIDHeader:(id)a3
{
  v5 = a3;
  [(IMAPServiceLibraryMessage *)self mf_lock];
  if (self->_messageIDHeader != v5)
  {
    objc_storeStrong(&self->_messageIDHeader, a3);
  }

  [(IMAPServiceLibraryMessage *)self mf_unlock];
}

- (id)messageIDHeader
{
  [(IMAPServiceLibraryMessage *)self mf_lock];
  messageIDHeader = self->_messageIDHeader;
  if (messageIDHeader)
  {
    v4 = messageIDHeader;
    [(IMAPServiceLibraryMessage *)self mf_unlock];
  }

  else
  {
    [(IMAPServiceLibraryMessage *)self mf_unlock];
    v6.receiver = self;
    v6.super_class = IMAPServiceLibraryMessage;
    v4 = [(IMAPServiceLibraryMessage *)&v6 messageIDHeader];
  }

  return v4;
}

@end