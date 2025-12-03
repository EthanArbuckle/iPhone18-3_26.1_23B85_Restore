@interface ContinuousNumericCapabilityPrimitive
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContinuousNumericCapabilityPrimitive

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698DC454(coderCopy);
}

@end