@interface PhoneSessionContinueOnWatchView
- (_TtC9SeymourUI31PhoneSessionContinueOnWatchView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PhoneSessionContinueOnWatchView

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for PhoneSessionContinueOnWatchView();
  v4 = a3;
  v5 = v12.receiver;
  [(PhoneSessionContinueOnWatchView *)&v12 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  [v5 bounds];
  v11 = sub_20BF6C784(v6, v7, v8, v9, v10);
  sub_20C078788(v11, MEMORY[0x277D84F90], a3);

  [v5 setNeedsUpdateConstraints];
}

- (_TtC9SeymourUI31PhoneSessionContinueOnWatchView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end