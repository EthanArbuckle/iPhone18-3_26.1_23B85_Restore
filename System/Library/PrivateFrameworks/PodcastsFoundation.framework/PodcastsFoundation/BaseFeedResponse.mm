@interface BaseFeedResponse
- (_TtC18PodcastsFoundation16BaseFeedResponse)init;
- (id)itemInSection:(int64_t)a3 row:(int64_t)a4;
- (id)itemsFor:(int64_t)a3;
- (id)sectionAtIndex:(unint64_t)a3;
@end

@implementation BaseFeedResponse

- (id)itemsFor:(int64_t)a3
{
  v3 = sub_1D91785DC();

  return v3;
}

- (id)itemInSection:(int64_t)a3 row:(int64_t)a4
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];

  return v4;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];

  return v3;
}

- (_TtC18PodcastsFoundation16BaseFeedResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end