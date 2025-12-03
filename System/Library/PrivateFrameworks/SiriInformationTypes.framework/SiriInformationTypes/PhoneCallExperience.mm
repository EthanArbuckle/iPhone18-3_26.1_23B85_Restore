@interface PhoneCallExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation PhoneCallExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PhoneCallExperience.encode(with:)(coderCopy);
}

@end