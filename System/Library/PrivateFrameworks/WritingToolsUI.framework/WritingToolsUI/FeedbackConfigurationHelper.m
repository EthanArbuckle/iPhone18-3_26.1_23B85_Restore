@interface FeedbackConfigurationHelper
+ (BOOL)useReportConcernUI;
- (_TtC14WritingToolsUI27FeedbackConfigurationHelper)init;
@end

@implementation FeedbackConfigurationHelper

+ (BOOL)useReportConcernUI
{
  if (qword_1EC7D21A8 != -1)
  {
    swift_once();
  }

  if (byte_1EC7D2240 == 1)
  {
    v5 = &type metadata for WritingTools;
    v6 = sub_1D451F108();
    v4[0] = 14;
    v2 = sub_1D455561C();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

- (_TtC14WritingToolsUI27FeedbackConfigurationHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FeedbackConfigurationHelper();
  return [(FeedbackConfigurationHelper *)&v3 init];
}

@end