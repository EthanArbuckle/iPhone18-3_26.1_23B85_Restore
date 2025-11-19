@interface CompletedWorkoutShareArtworkItemProvider
- (_TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider)init;
- (_TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider)initWithItem:(id)a3 typeIdentifier:(id)a4;
- (id)loadDataRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation CompletedWorkoutShareArtworkItemProvider

- (id)loadDataRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  v8 = sub_20BD3BD58(sub_20BAEA7CC, v6);

  return v8;
}

- (_TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI40CompletedWorkoutShareArtworkItemProvider)initWithItem:(id)a3 typeIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end