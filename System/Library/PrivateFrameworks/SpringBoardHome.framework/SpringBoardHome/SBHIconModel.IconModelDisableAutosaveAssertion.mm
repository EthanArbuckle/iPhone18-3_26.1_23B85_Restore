@interface SBHIconModel.IconModelDisableAutosaveAssertion
- (NSString)description;
- (_TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion)init;
- (void)appendDescriptionToStream:(id)stream;
- (void)invalidate;
@end

@implementation SBHIconModel.IconModelDisableAutosaveAssertion

- (void)invalidate
{
  selfCopy = self;
  sub_1BEE173DC();
}

- (NSString)description
{
  v3 = objc_opt_self();
  selfCopy = self;
  descriptionForRootObject_ = [v3 descriptionForRootObject_];
  if (!descriptionForRootObject_)
  {
    sub_1BEE4708C();
    descriptionForRootObject_ = sub_1BEE4705C();
  }

  return descriptionForRootObject_;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  v5 = sub_1BEE4705C();
  v6 = sub_1BEE4705C();
  [streamCopy appendString:v5 withName:v6];
}

- (_TtCE15SpringBoardHomeCSo12SBHIconModelP33_294E8E30CF4CC42333D2CCC80E9D9C8133IconModelDisableAutosaveAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end