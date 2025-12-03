@interface PCFxBlendOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PCFxBlendOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PCFxBlendOptions allocWithZone:zone];

  return [(PCFxBlendOptions *)v4 initWithBlendOptions:self];
}

@end