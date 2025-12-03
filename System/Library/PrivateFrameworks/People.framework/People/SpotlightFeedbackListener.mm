@interface SpotlightFeedbackListener
+ (void)didPerformCommand:(id)command;
- (_TtC6People25SpotlightFeedbackListener)init;
@end

@implementation SpotlightFeedbackListener

+ (void)didPerformCommand:(id)command
{
  commandCopy = command;
  _s6People25SpotlightFeedbackListenerC17didPerformCommandyySo019SFCommandEngagementC0CFZ_0(commandCopy);
}

- (_TtC6People25SpotlightFeedbackListener)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SpotlightFeedbackListener();
  return [(SpotlightFeedbackListener *)&v3 init];
}

@end