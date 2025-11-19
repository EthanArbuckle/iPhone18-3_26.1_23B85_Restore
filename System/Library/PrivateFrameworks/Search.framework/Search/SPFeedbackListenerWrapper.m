@interface SPFeedbackListenerWrapper
+ (id)wrapperWithFeedbackListener:(id)a3;
+ (void)initialize;
- (SPFeedbackListenerWrapper)initWithFeedbackListener:(id)a3;
@end

@implementation SPFeedbackListenerWrapper

+ (void)initialize
{
  if (qword_1000A8618 != -1)
  {
    sub_100063620();
  }
}

+ (id)wrapperWithFeedbackListener:(id)a3
{
  v3 = a3;
  v4 = [[SPFeedbackListenerWrapper alloc] initWithFeedbackListener:v3];

  return v4;
}

- (SPFeedbackListenerWrapper)initWithFeedbackListener:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SPFeedbackListenerWrapper;
  v6 = [(SPFeedbackListenerWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedbackListener, a3);
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