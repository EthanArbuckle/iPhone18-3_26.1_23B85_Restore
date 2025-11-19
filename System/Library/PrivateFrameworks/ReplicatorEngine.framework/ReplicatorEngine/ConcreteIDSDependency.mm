@interface ConcreteIDSDependency
- (_TtC16ReplicatorEngine21ConcreteIDSDependency)init;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation ConcreteIDSDependency

- (_TtC16ReplicatorEngine21ConcreteIDSDependency)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_1DEF323AC(v6);
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency__devicesChanged);
  v5 = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F58, &unk_1DEF95DB0);
  sub_1DEE1B548(&qword_1ECDE2D08, &qword_1ECDE4F58, &unk_1DEF95DB0);
  sub_1DEF8D5A8();
}

@end