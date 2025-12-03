@interface SKUIMediaSocialProfile
- (SKUIMediaSocialProfile)initWithProfileDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKUIMediaSocialProfile

- (SKUIMediaSocialProfile)initWithProfileDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaSocialProfile initWithProfileDictionary:];
  }

  v20.receiver = self;
  v20.super_class = SKUIMediaSocialProfile;
  v5 = [(SKUIMediaSocialProfile *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"entityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      identifier = v5->_identifier;
      v5->_identifier = v7;
    }

    v9 = [dictionaryCopy objectForKey:@"entityType"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      profileType = v5->_profileType;
      v5->_profileType = v10;
    }

    v12 = [dictionaryCopy objectForKey:@"name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      name = v5->_name;
      v5->_name = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"handle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_handle, v15);
    }

    v16 = [dictionaryCopy objectForKey:@"bio"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      bio = v5->_bio;
      v5->_bio = v17;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setBackgroundImageURL:self->_backgroundImageURL];
  [v4 setBio:self->_bio];
  [v4 setHandle:self->_handle];
  [v4 setIdentifier:self->_identifier];
  [v4 setName:self->_name];
  [v4 setProfileImageURL:self->_profileImageURL];
  [v4 setProfileType:self->_profileType];
  return v4;
}

- (void)initWithProfileDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaSocialProfile initWithProfileDictionary:]";
}

@end