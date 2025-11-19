@interface VANameDetectionResult
- (NSString)description;
- (_TtC12VoiceActions21VANameDetectionResult)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VANameDetectionResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27223A774(v4);
}

- (NSString)description
{
  v2 = self;
  sub_27223B13C();

  v3 = sub_2723777FC();

  return v3;
}

- (_TtC12VoiceActions21VANameDetectionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end