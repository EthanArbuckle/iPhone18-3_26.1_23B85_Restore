@interface SFUIAvatarImageRenderer
+ (id)avatarImageRender;
- (CNKeyDescriptor)descriptorForRequiredKeys;
- (SFUIAvatarImageRenderer)init;
- (id)avatarImageForContacts:(id)contacts scope:(id)scope;
- (id)placeholderImageForSize:(CGSize)size scale:(double)scale;
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
    defaultSettings = [getCNAvatarImageRendererSettingsClass() defaultSettings];
    v5 = [v3 initWithSettings:defaultSettings];
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

- (id)avatarImageForContacts:(id)contacts scope:(id)scope
{
  scopeCopy = scope;
  contactsCopy = contacts;
  imageRenderer = [(SFUIAvatarImageRenderer *)self imageRenderer];
  scope = [scopeCopy scope];

  v10 = [imageRenderer avatarImageForContacts:contactsCopy scope:scope];

  return v10;
}

- (id)placeholderImageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  imageRenderer = [(SFUIAvatarImageRenderer *)self imageRenderer];
  placeholderImageProvider = [imageRenderer placeholderImageProvider];

  v9 = [placeholderImageProvider imageForSize:width scale:{height, scale}];

  return v9;
}

- (CNKeyDescriptor)descriptorForRequiredKeys
{
  CNAvatarImageRendererClass = getCNAvatarImageRendererClass();

  return [CNAvatarImageRendererClass descriptorForRequiredKeys];
}

@end