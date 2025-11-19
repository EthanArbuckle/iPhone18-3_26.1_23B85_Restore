@interface PRMutablePosterMetadata
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PRMutablePosterMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterMetadata allocWithZone:a3];
  v5 = [(PRPosterMetadata *)self displayNameLocalizationKey];
  v6 = [(PRPosterMetadata *)v4 initWithDisplayNameLocalizationKey:v5];

  return v6;
}

@end