@interface SKUIOnboardingAffiliationItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKUIOnboardingAffiliationItem

- (id)copyWithZone:(_NSZone *)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIOnboardingAffiliationItem *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v13 setFillColor:self->_fillColor];
  [v13 setIdentifier:self->_identifier];
  [v13 setImageName:self->_imageName];
  [v13 setImageTreatment:self->_imageTreatment];
  [v13 setImageURL:self->_imageURL];
  [v13 setTitle:self->_title];
  [v13 setUserAffinityCount:self->_userAffinityCount];
  return v13;
}

- (id)description
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIOnboardingAffiliationItem *)v3 description:v4];
      }
    }
  }

  v11 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = SKUIOnboardingAffiliationItem;
  v12 = [(SKUIOnboardingAffiliationItem *)&v15 description];
  v13 = [v11 stringWithFormat:@"%@: [%@, %@]", v12, self->_identifier, self->_title];

  return v13;
}

- (unint64_t)hash
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIOnboardingAffiliationItem *)v3 hash:v4];
      }
    }
  }

  return [(NSString *)self->_identifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIOnboardingAffiliationItem *)v5 isEqual:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_opt_class();
  if (v13 == objc_opt_class())
  {
    v15 = [(SKUIOnboardingAffiliationItem *)self identifier];
    v16 = [v4 identifier];
    v14 = [v15 isEqualToString:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end