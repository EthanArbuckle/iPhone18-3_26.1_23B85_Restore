@interface SiriUserFeedbackLearningPluginBase
- (_TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase)init;
- (id)performTask:(id)a3 error:(id *)a4;
@end

@implementation SiriUserFeedbackLearningPluginBase

- (_TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase)init
{
  v3 = self + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_usageLogger;
  *(v3 + 3) = &type metadata for UsageLogger;
  *(v3 + 4) = &protocol witness table for UsageLogger;
  if (qword_280CB7BA0 != -1)
  {
    swift_once();
  }

  v4 = sub_222B021B8();
  v5 = __swift_project_value_buffer(v4, qword_280CB7BB0);
  (*(*(v4 - 8) + 16))(self + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics34SiriUserFeedbackLearningPluginBase_timeout, v5, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriUserFeedbackLearningPluginBase();
  return [(SiriUserFeedbackLearningPluginBase *)&v7 init];
}

- (id)performTask:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_222AD88A4(v5);

  return v7;
}

@end