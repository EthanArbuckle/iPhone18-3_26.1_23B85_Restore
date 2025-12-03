@interface PhoneSessionContinueOnWatchView
- (_TtC9SeymourUI31PhoneSessionContinueOnWatchView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PhoneSessionContinueOnWatchView

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for PhoneSessionContinueOnWatchView();
  changeCopy = change;
  v5 = v12.receiver;
  [(PhoneSessionContinueOnWatchView *)&v12 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  [v5 bounds];
  v11 = sub_20BF6C784(traitCollection, v7, v8, v9, v10);
  sub_20C078788(v11, MEMORY[0x277D84F90], change);

  [v5 setNeedsUpdateConstraints];
}

- (_TtC9SeymourUI31PhoneSessionContinueOnWatchView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end