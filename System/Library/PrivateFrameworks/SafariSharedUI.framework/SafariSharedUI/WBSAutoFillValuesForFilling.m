@interface WBSAutoFillValuesForFilling
- (NSDictionary)controlIDsToValues;
- (NSString)description;
- (WBSAutoFillValuesForFilling)init;
- (WBSAutoFillValuesForFilling)initWithFrameAssociatedFormMetadata:(id)a3 controlIDsToValues:(id)a4;
@end

@implementation WBSAutoFillValuesForFilling

- (NSDictionary)controlIDsToValues
{

  v2 = sub_1C6A74710();

  return v2;
}

- (WBSAutoFillValuesForFilling)initWithFrameAssociatedFormMetadata:(id)a3 controlIDsToValues:(id)a4
{
  v6 = sub_1C6A74720();
  *(self + OBJC_IVAR___WBSAutoFillValuesForFilling_frameAssociatedFormMetadata) = a3;
  *(self + OBJC_IVAR___WBSAutoFillValuesForFilling_controlIDsToValues) = v6;
  v9.receiver = self;
  v9.super_class = WBSAutoFillValuesForFilling;
  v7 = a3;
  return [(WBSAutoFillValuesForFilling *)&v9 init];
}

- (NSString)description
{
  v2 = self;
  WBSAutoFillValuesForFilling.description.getter();

  v3 = sub_1C6A74780();

  return v3;
}

- (WBSAutoFillValuesForFilling)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end