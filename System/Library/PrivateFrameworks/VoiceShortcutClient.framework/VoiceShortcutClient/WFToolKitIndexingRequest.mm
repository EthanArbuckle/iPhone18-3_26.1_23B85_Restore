@interface WFToolKitIndexingRequest
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFToolKitIndexingRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1E5A03C(coderCopy);
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1B1E5A53C();

  v3 = sub_1B1F1A860();

  return v3;
}

@end