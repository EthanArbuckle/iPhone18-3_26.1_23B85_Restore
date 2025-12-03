@interface AudioExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation AudioExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AudioExperience.encode(with:)(coderCopy);
}

@end