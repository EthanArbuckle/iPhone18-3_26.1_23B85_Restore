@interface SBHIconModel.IconModelDisableAutosaveAssertion
- (NSString)description;
- (_TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion)init;
- (void)appendDescriptionToStream:(id)a3;
- (void)invalidate;
@end

@implementation SBHIconModel.IconModelDisableAutosaveAssertion

- (void)invalidate
{
  v2 = self;
  sub_1BEE173DC();
}

- (NSString)description
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 descriptionForRootObject_];
  if (!v5)
  {
    sub_1BEE4708C();
    v5 = sub_1BEE4705C();
  }

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = sub_1BEE4705C();
  v6 = sub_1BEE4705C();
  [v4 appendString:v5 withName:v6];
}

- (_TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end