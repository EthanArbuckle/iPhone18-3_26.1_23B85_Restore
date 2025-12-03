@interface SummarizationXPCRequest
- (void)encodeWithCoder:(id)coder;
@end

@implementation SummarizationXPCRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B5E7941C(coderCopy);
}

@end