@interface ICLiveLinkQueueEventContentUpdatedMessage
- (ICLiveLinkQueueEventContentUpdatedMessage)initWithLocalizedTitle:(id)a3 localizedMessage:(id)a4;
@end

@implementation ICLiveLinkQueueEventContentUpdatedMessage

- (ICLiveLinkQueueEventContentUpdatedMessage)initWithLocalizedTitle:(id)a3 localizedMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ICLiveLinkQueueEventContentUpdatedMessage;
  v8 = [(ICLiveLinkQueueEventContentUpdatedMessage *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    localizedTitle = v8->_localizedTitle;
    v8->_localizedTitle = v9;

    v11 = [v7 copy];
    localizedMessage = v8->_localizedMessage;
    v8->_localizedMessage = v11;
  }

  return v8;
}

@end