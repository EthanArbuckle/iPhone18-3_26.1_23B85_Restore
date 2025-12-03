@interface StreamBookmarkCollection
- (_TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StreamBookmarkCollection

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks);
  type metadata accessor for StreamBookmark();
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_222B025D8();
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end