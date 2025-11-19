@interface SiriUserFeedbackLearningPlatformPlugin
- (_TtC38SiriUserFeedbackLearningPlatformPlugin38SiriUserFeedbackLearningPlatformPlugin)init;
- (id)performTask:(id)a3 error:(id *)a4;
@end

@implementation SiriUserFeedbackLearningPlatformPlugin

- (_TtC38SiriUserFeedbackLearningPlatformPlugin38SiriUserFeedbackLearningPlatformPlugin)init
{
  v6 = sub_10000283C();
  v7 = &protocol witness table for UsageLogger;
  sub_100002484(&v5);
  sub_10000282C();
  sub_1000024E8(&v5, self + OBJC_IVAR____TtC38SiriUserFeedbackLearningPlatformPlugin38SiriUserFeedbackLearningPlatformPlugin_usageLogger);
  v6 = sub_1000027CC();
  v7 = &protocol witness table for SiriUserFeedbackLearningPluginLauncher;
  sub_100002484(&v5);
  sub_1000027BC();
  sub_1000024E8(&v5, self + OBJC_IVAR____TtC38SiriUserFeedbackLearningPlatformPlugin38SiriUserFeedbackLearningPlatformPlugin_pluginLauncher);
  v4.receiver = self;
  v4.super_class = type metadata accessor for SiriUserFeedbackLearningPlatformPlugin();
  return [(SiriUserFeedbackLearningPlatformPlugin *)&v4 init];
}

- (id)performTask:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1000014C8(v5);

  return v7;
}

@end