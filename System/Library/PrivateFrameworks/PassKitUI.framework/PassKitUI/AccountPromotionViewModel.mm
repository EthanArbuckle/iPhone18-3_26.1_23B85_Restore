@interface AccountPromotionViewModel
- (_TtC9PassKitUI25AccountPromotionViewModel)init;
- (void)dealloc;
- (void)linkedApplicationDidChangeState:(id)state;
@end

@implementation AccountPromotionViewModel

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI25AccountPromotionViewModel_linkedApplication);
  if (v3)
  {
    [v3 removeObserver_];
  }

  else
  {
    selfCopy = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for AccountPromotionViewModel();
  [(AccountPromotionViewModel *)&v5 dealloc];
}

- (_TtC9PassKitUI25AccountPromotionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)linkedApplicationDidChangeState:(id)state
{
  selfCopy = self;
  sub_1BD36C5DC();
}

@end