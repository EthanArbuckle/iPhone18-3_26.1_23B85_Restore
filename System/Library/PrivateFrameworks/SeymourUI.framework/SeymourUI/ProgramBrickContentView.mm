@interface ProgramBrickContentView
- (_TtC9SeymourUI23ProgramBrickContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProgramBrickContentView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20BEC08E4(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20BEC1494();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ProgramBrickContentView();
  [(ProgramBrickContentView *)&v3 layoutSubviews];
}

- (_TtC9SeymourUI23ProgramBrickContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end