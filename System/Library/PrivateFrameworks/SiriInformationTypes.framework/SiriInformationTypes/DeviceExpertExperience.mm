@interface DeviceExpertExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation DeviceExpertExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DeviceExpertExperience.encode(with:)(coderCopy);
}

@end