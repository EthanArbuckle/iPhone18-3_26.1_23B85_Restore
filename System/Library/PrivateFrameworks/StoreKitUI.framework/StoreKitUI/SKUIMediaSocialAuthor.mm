@interface SKUIMediaSocialAuthor
- (BOOL)isEqual:(id)equal;
- (SKUIMediaSocialAuthor)initWithAuthorDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SKUIMediaSocialAuthor

- (SKUIMediaSocialAuthor)initWithAuthorDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaSocialAuthor initWithAuthorDictionary:];
  }

  v31.receiver = self;
  v31.super_class = SKUIMediaSocialAuthor;
  v5 = [(SKUIMediaSocialAuthor *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"dsId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      dsid = v5->_dsid;
      v5->_dsid = v7;
    }

    v9 = [dictionaryCopy objectForKey:@"entityId"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      identifier = v5->_identifier;
      v5->_identifier = v10;
    }

    v12 = [dictionaryCopy objectForKey:@"entityType"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      authorType = v5->_authorType;
      v5->_authorType = v13;
    }

    v15 = [dictionaryCopy objectForKey:@"permissions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v12;
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          v21 = 0;
          do
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v27 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v16 addObject:v22];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v19);
      }

      if ([v16 count])
      {
        v23 = [v16 copy];
        permissions = v5->_permissions;
        v5->_permissions = v23;
      }

      v12 = v26;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAuthorType:self->_authorType];
  [v4 setDsid:self->_dsid];
  [v4 setIdentifier:self->_identifier];
  [v4 setName:self->_name];
  [v4 setPermissions:self->_permissions];
  [v4 setStorePlatformData:self->_storePlatformData];
  [v4 setThumbnailImageURL:self->_thumbnailImageURL];
  return v4;
}

- (unint64_t)hash
{
  identifier = self->_identifier;
  if (identifier)
  {
    v4 = [(NSString *)identifier hash];
  }

  else
  {
    v4 = 0;
  }

  authorType = self->_authorType;
  if (authorType)
  {
    v4 ^= [(NSString *)authorType hash];
  }

  if (!v4)
  {
    v7.receiver = self;
    v7.super_class = SKUIMediaSocialAuthor;
    return [(SKUIMediaSocialAuthor *)&v7 hash];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    identifier = [(SKUIMediaSocialAuthor *)self identifier];
    identifier2 = [equalCopy identifier];
    if ([identifier isEqualToString:identifier2])
    {
      authorType = [(SKUIMediaSocialAuthor *)self authorType];
      authorType2 = [equalCopy authorType];
      v6 = [authorType isEqualToString:authorType2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initWithAuthorDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaSocialAuthor initWithAuthorDictionary:]";
}

@end