@interface AppLaunchExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation AppLaunchExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AppLaunchExperience.encode(with:)(coderCopy);
}

@end