@interface ICMutablePlayActivityAudioQualityProperties
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation ICMutablePlayActivityAudioQualityProperties

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ICPlayActivityAudioQualityProperties *)self _copyWithClass:v5 zone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ICPlayActivityAudioQualityProperties *)self _copyWithClass:v5 zone:a3];
}

@end