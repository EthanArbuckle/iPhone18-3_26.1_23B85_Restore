@interface WFPrescriptionRecord
- (NSString)description;
- (WFPrescriptionRecord)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFPrescriptionRecord

- (NSString)description
{
  v2 = sub_26C6D89E8();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26C68534C(v4);
}

- (WFPrescriptionRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end