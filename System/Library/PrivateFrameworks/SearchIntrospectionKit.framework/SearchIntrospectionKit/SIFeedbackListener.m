@interface SIFeedbackListener
- (SIFeedbackListener)init;
- (void)sendResultSectionsDidLoadFeedback:(id)a3;
@end

@implementation SIFeedbackListener

- (SIFeedbackListener)init
{
  v3.receiver = self;
  v3.super_class = SIFeedbackListener;
  return [(SIFeedbackListener *)&v3 init];
}

- (void)sendResultSectionsDidLoadFeedback:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo18SIFeedbackListenerC22SearchIntrospectionKitE4sendyySo31SFResultSectionsDidLoadFeedbackCF_0(v4);
}

@end