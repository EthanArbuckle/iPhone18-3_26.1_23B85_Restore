@interface IMAPServiceLibraryMessage
- (id)messageIDHeader;
- (void)dealloc;
- (void)setMessageIDHeader:(id)header;
@end

@implementation IMAPServiceLibraryMessage

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMAPServiceLibraryMessage;
  [(IMAPServiceLibraryMessage *)&v2 dealloc];
}

- (void)setMessageIDHeader:(id)header
{
  headerCopy = header;
  [(IMAPServiceLibraryMessage *)self mf_lock];
  if (self->_messageIDHeader != headerCopy)
  {
    objc_storeStrong(&self->_messageIDHeader, header);
  }

  [(IMAPServiceLibraryMessage *)self mf_unlock];
}

- (id)messageIDHeader
{
  [(IMAPServiceLibraryMessage *)self mf_lock];
  messageIDHeader = self->_messageIDHeader;
  if (messageIDHeader)
  {
    messageIDHeader = messageIDHeader;
    [(IMAPServiceLibraryMessage *)self mf_unlock];
  }

  else
  {
    [(IMAPServiceLibraryMessage *)self mf_unlock];
    v6.receiver = self;
    v6.super_class = IMAPServiceLibraryMessage;
    messageIDHeader = [(IMAPServiceLibraryMessage *)&v6 messageIDHeader];
  }

  return messageIDHeader;
}

@end