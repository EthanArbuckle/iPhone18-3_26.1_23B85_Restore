@interface CoreLocationAuthorizationProvider.Observer
- (_TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer)init;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation CoreLocationAuthorizationProvider.Observer

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_26A09DFF4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v11 = *(&self->super.isa + OBJC_IVAR____TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer_authorizationChangedBlock);
  v10 = *&self->authorizationChangedBlock[OBJC_IVAR____TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer_authorizationChangedBlock];
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = v10;
  v12[6] = a3;
  v13 = a3;

  sub_26A06B90C(0, 0, v8, &unk_26A09FB78, v12);
}

- (_TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end