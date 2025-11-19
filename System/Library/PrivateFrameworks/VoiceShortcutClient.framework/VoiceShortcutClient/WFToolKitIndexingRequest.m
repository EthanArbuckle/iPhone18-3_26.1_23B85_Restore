@interface WFToolKitIndexingRequest
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFToolKitIndexingRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1E5A03C(v4);
}

- (NSString)debugDescription
{
  v2 = self;
  sub_1B1E5A53C();

  v3 = sub_1B1F1A860();

  return v3;
}

@end