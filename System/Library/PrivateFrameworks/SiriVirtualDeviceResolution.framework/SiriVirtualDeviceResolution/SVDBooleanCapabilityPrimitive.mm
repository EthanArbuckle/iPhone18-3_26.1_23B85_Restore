@interface SVDBooleanCapabilityPrimitive
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVDBooleanCapabilityPrimitive

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698DC11C(coderCopy);
}

@end