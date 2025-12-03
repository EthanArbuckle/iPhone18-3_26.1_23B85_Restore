@interface GenericExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation GenericExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  GenericExperience.encode(with:)(coderCopy);
}

@end