@interface ICLiveLinkQueueEventContentUpdatedMessage
- (ICLiveLinkQueueEventContentUpdatedMessage)initWithLocalizedTitle:(id)title localizedMessage:(id)message;
@end

@implementation ICLiveLinkQueueEventContentUpdatedMessage

- (ICLiveLinkQueueEventContentUpdatedMessage)initWithLocalizedTitle:(id)title localizedMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = ICLiveLinkQueueEventContentUpdatedMessage;
  v8 = [(ICLiveLinkQueueEventContentUpdatedMessage *)&v14 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    localizedTitle = v8->_localizedTitle;
    v8->_localizedTitle = v9;

    v11 = [messageCopy copy];
    localizedMessage = v8->_localizedMessage;
    v8->_localizedMessage = v11;
  }

  return v8;
}

@end