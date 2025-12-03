@interface VideoExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation VideoExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  VideoExperience.encode(with:)(coderCopy);
}

@end