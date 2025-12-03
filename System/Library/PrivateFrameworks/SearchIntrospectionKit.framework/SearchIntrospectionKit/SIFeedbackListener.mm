@interface SIFeedbackListener
- (SIFeedbackListener)init;
- (void)sendResultSectionsDidLoadFeedback:(id)feedback;
@end

@implementation SIFeedbackListener

- (SIFeedbackListener)init
{
  v3.receiver = self;
  v3.super_class = SIFeedbackListener;
  return [(SIFeedbackListener *)&v3 init];
}

- (void)sendResultSectionsDidLoadFeedback:(id)feedback
{
  feedbackCopy = feedback;
  selfCopy = self;
  _sSo18SIFeedbackListenerC22SearchIntrospectionKitE4sendyySo31SFResultSectionsDidLoadFeedbackCF_0(feedbackCopy);
}

@end