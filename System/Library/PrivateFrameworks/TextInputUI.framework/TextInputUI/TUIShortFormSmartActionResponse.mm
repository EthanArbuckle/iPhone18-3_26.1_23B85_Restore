@interface TUIShortFormSmartActionResponse
- (NSDictionary)outputOptions;
- (TUIShortFormSmartActionResponse)init;
@end

@implementation TUIShortFormSmartActionResponse

- (NSDictionary)outputOptions
{
  if (*(self + OBJC_IVAR___TUIShortFormSmartActionResponse_outputOptions))
  {

    v2 = sub_1900B1590();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (TUIShortFormSmartActionResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end