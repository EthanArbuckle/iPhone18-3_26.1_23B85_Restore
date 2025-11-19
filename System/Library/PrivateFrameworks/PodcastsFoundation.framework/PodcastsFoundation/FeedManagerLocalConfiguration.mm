@interface FeedManagerLocalConfiguration
+ (_TtC18PodcastsFoundation29FeedManagerLocalConfiguration)platformSpecificConfiguration;
- (_TtC18PodcastsFoundation29FeedManagerLocalConfiguration)init;
@end

@implementation FeedManagerLocalConfiguration

+ (_TtC18PodcastsFoundation29FeedManagerLocalConfiguration)platformSpecificConfiguration
{
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB34D0 != -1)
    {
      swift_once();
    }

    v2 = &qword_1ECAB73D0;
  }

  else
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EDCD23F0;
  }

  v3 = *v2;

  return v3;
}

- (_TtC18PodcastsFoundation29FeedManagerLocalConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end