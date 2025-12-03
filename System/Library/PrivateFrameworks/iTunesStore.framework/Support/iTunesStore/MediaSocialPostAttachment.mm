@interface MediaSocialPostAttachment
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MediaSocialPostAttachment

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MediaSocialPostAttachment;
  v4 = [(MediaSocialPostAttachment *)&v6 copyWithZone:zone];
  [v4 setAssetToken:self->_assetToken];
  [v4 setAssetTokenType:self->_assetTokenType];
  [v4 setUploadTime:self->_uploadTime];
  return v4;
}

@end