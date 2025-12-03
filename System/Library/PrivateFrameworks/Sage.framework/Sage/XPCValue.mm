@interface XPCValue
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCValue

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B5EA3934(coderCopy);
}

@end