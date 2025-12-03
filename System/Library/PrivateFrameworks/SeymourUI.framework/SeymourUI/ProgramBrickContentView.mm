@interface ProgramBrickContentView
- (_TtC9SeymourUI23ProgramBrickContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ProgramBrickContentView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BEC08E4(change);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BEC1494();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ProgramBrickContentView();
  [(ProgramBrickContentView *)&v3 layoutSubviews];
}

- (_TtC9SeymourUI23ProgramBrickContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end