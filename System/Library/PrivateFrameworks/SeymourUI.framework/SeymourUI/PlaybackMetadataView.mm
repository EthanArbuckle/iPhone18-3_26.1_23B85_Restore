@interface PlaybackMetadataView
- (_TtC9SeymourUI20PlaybackMetadataView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlaybackMetadataView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BA68B28(change);
}

- (_TtC9SeymourUI20PlaybackMetadataView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end