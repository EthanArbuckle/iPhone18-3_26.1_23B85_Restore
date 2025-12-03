@interface VANameDetectionResult
- (NSString)description;
- (_TtC12VoiceActions21VANameDetectionResult)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VANameDetectionResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_27223A774(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
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