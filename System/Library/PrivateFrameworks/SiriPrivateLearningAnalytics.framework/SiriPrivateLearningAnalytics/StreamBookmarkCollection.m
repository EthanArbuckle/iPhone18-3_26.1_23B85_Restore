@interface StreamBookmarkCollection
- (_TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation StreamBookmarkCollection

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks);
  type metadata accessor for StreamBookmark();
  v6 = a3;
  v9 = self;
  v7 = sub_222B025D8();
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end