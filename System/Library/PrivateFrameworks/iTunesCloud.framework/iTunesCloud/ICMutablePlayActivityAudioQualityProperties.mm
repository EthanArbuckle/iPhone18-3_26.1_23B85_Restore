@interface ICMutablePlayActivityAudioQualityProperties
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation ICMutablePlayActivityAudioQualityProperties

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ICPlayActivityAudioQualityProperties *)self _copyWithClass:v5 zone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ICPlayActivityAudioQualityProperties *)self _copyWithClass:v5 zone:zone];
}

@end