@interface EditingCoordinator
- (_TtC21PosterBoardUIServices18EditingCoordinator)init;
- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4;
- (void)injectedEditingClientSettingsDidChange:(id)a3;
@end

@implementation EditingCoordinator

- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CAEB168C(v6, a4);
}

- (void)injectedEditingClientSettingsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CAEB1968(v4);
}

- (_TtC21PosterBoardUIServices18EditingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end