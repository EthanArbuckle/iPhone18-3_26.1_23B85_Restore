@interface SKEContextUpdate
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKEContextUpdate

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1DCCC6644(coderCopy);
}

@end