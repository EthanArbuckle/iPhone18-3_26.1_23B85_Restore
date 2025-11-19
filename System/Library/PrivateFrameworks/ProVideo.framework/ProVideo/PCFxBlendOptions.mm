@interface PCFxBlendOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PCFxBlendOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PCFxBlendOptions allocWithZone:a3];

  return [(PCFxBlendOptions *)v4 initWithBlendOptions:self];
}

@end