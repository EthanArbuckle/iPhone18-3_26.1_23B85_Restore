@interface WFAnisetteResponse
- (WFAnisetteResponse)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAnisetteResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26C6CBA94(coderCopy);
}

- (WFAnisetteResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end