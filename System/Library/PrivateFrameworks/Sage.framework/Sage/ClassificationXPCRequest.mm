@interface ClassificationXPCRequest
- (void)encodeWithCoder:(id)coder;
@end

@implementation ClassificationXPCRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B5E23B44(coderCopy);
}

@end