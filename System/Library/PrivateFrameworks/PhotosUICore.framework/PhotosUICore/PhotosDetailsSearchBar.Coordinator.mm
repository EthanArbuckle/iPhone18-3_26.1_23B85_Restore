@interface PhotosDetailsSearchBar.Coordinator
- (_TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator)init;
- (void)searchBar:(id)bar textDidChange:(id)change;
@end

@implementation PhotosDetailsSearchBar.Coordinator

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = sub_1A524C674();
  v7 = v6;
  v8 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v8(v5, v7);
}

- (_TtCV12PhotosUICore22PhotosDetailsSearchBar11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end