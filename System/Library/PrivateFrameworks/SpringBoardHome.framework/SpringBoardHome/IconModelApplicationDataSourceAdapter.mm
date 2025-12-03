@interface IconModelApplicationDataSourceAdapter
- (NSArray)webClips;
- (_TtC15SpringBoardHome37IconModelApplicationDataSourceAdapter)init;
- (void)uninstallApplicationWithBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation IconModelApplicationDataSourceAdapter

- (NSArray)webClips
{
  selfCopy = self;
  sub_1BEE094B0();

  sub_1BEE09A28();
  v3 = sub_1BEE4719C();

  return v3;
}

- (void)uninstallApplicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1BEE4708C();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_1BEE09CF8;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_1BEE095C8(v6, v8, v5, v9);
  sub_1BEB326F8(v5);
}

- (_TtC15SpringBoardHome37IconModelApplicationDataSourceAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end