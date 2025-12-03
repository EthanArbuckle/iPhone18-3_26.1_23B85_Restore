@interface SPFeedbackListenerWrapper
+ (id)wrapperWithFeedbackListener:(id)listener;
+ (void)initialize;
- (SPFeedbackListenerWrapper)initWithFeedbackListener:(id)listener;
@end

@implementation SPFeedbackListenerWrapper

+ (void)initialize
{
  if (qword_1000A8618 != -1)
  {
    sub_100063620();
  }
}

+ (id)wrapperWithFeedbackListener:(id)listener
{
  listenerCopy = listener;
  v4 = [[SPFeedbackListenerWrapper alloc] initWithFeedbackListener:listenerCopy];

  return v4;
}

- (SPFeedbackListenerWrapper)initWithFeedbackListener:(id)listener
{
  listenerCopy = listener;
  v10.receiver = self;
  v10.super_class = SPFeedbackListenerWrapper;
  v6 = [(SPFeedbackListenerWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedbackListener, listener);
    for (i = 1; i != 28; ++i)
    {
      if (qword_1000A8620[i] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v7->_supportedTypes |= (1 << i);
      }
    }
  }

  return v7;
}

@end