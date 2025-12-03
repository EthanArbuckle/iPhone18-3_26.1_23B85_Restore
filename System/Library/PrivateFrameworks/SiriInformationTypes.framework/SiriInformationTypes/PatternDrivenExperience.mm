@interface PatternDrivenExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation PatternDrivenExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PatternDrivenExperience.encode(with:)(coderCopy);
}

@end