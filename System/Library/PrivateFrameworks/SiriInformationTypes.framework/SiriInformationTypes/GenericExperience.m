@interface GenericExperience
- (void)encodeWithCoder:(id)a3;
@end

@implementation GenericExperience

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  GenericExperience.encode(with:)(v4);
}

@end