@interface SFUIAvatarImageRenderer
+ (id)avatarImageRender;
- (CNKeyDescriptor)descriptorForRequiredKeys;
- (SFUIAvatarImageRenderer)init;
- (id)avatarImageForContacts:(id)a3 scope:(id)a4;
- (id)placeholderImageForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation SFUIAvatarImageRenderer

- (SFUIAvatarImageRenderer)init
{
  v8.receiver = self;
  v8.super_class = SFUIAvatarImageRenderer;
  v2 = [(SFUIAvatarImageRenderer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(getCNAvatarImageRendererClass());
    v4 = [getCNAvatarImageRendererSettingsClass() defaultSettings];
    v5 = [v3 initWithSettings:v4];
    imageRenderer = v2->_imageRenderer;
    v2->_imageRenderer = v5;
  }

  return v2;
}

+ (id)avatarImageRender
{
  v2 = objc_alloc_init(SFUIAvatarImageRenderer);

  return v2;
}

- (id)avatarImageForContacts:(id)a3 scope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SFUIAvatarImageRenderer *)self imageRenderer];
  v9 = [v6 scope];

  v10 = [v8 avatarImageForContacts:v7 scope:v9];

  return v10;
}

- (id)placeholderImageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(SFUIAvatarImageRenderer *)self imageRenderer];
  v8 = [v7 placeholderImageProvider];

  v9 = [v8 imageForSize:width scale:{height, a4}];

  return v9;
}

- (CNKeyDescriptor)descriptorForRequiredKeys
{
  CNAvatarImageRendererClass = getCNAvatarImageRendererClass();

  return [CNAvatarImageRendererClass descriptorForRequiredKeys];
}

@end