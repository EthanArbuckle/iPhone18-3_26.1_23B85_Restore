@interface UserPromptExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation UserPromptExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  UserPromptExperience.encode(with:)(coderCopy);
}

@end