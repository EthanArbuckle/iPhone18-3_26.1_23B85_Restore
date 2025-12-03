@interface UISmartReplySuggestion
- (UISmartReplySuggestion)initWithSmartReply:(id)reply;
@end

@implementation UISmartReplySuggestion

- (UISmartReplySuggestion)initWithSmartReply:(id)reply
{
  replyCopy = reply;
  v9.receiver = self;
  v9.super_class = UISmartReplySuggestion;
  v6 = [(UISmartReplySuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartReply, reply);
  }

  return v7;
}

@end