@interface ICLiveLinkCustomEvent
- (ICLiveLinkCustomEvent)initWithLocalizedMessage:(id)message;
@end

@implementation ICLiveLinkCustomEvent

- (ICLiveLinkCustomEvent)initWithLocalizedMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = ICLiveLinkCustomEvent;
  v5 = [(ICLiveLinkCustomEvent *)&v9 init];
  if (v5)
  {
    v6 = [messageCopy copy];
    localizedMessage = v5->_localizedMessage;
    v5->_localizedMessage = v6;
  }

  return v5;
}

@end