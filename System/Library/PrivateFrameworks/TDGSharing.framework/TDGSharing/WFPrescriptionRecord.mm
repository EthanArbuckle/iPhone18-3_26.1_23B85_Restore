@interface WFPrescriptionRecord
- (NSString)description;
- (WFPrescriptionRecord)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPrescriptionRecord

- (NSString)description
{
  v2 = sub_26C6D89E8();

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26C68534C(coderCopy);
}

- (WFPrescriptionRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end