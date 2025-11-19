@interface ICLiveLinkCustomEvent
- (ICLiveLinkCustomEvent)initWithLocalizedMessage:(id)a3;
@end

@implementation ICLiveLinkCustomEvent

- (ICLiveLinkCustomEvent)initWithLocalizedMessage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICLiveLinkCustomEvent;
  v5 = [(ICLiveLinkCustomEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    localizedMessage = v5->_localizedMessage;
    v5->_localizedMessage = v6;
  }

  return v5;
}

@end