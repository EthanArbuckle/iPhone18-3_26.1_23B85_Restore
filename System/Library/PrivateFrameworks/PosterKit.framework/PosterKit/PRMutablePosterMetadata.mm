@interface PRMutablePosterMetadata
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRMutablePosterMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterMetadata allocWithZone:zone];
  displayNameLocalizationKey = [(PRPosterMetadata *)self displayNameLocalizationKey];
  v6 = [(PRPosterMetadata *)v4 initWithDisplayNameLocalizationKey:displayNameLocalizationKey];

  return v6;
}

@end