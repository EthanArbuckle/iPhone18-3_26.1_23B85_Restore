@interface WFAnisetteRequest
- (WFAnisetteRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAnisetteRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26C6CBAB8(coderCopy, &OBJC_IVAR___WFAnisetteRequest_id, &OBJC_IVAR___WFAnisetteRequest_data, &qword_2804A9198, &qword_26C6DE428);
}

- (WFAnisetteRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end