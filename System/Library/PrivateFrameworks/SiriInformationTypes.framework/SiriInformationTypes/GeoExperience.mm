@interface GeoExperience
- (void)encodeWithCoder:(id)coder;
@end

@implementation GeoExperience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  GeoExperience.encode(with:)(coderCopy);
}

@end