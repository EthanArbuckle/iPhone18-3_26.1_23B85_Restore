@interface SKUIImageViewElementCacheKey
- (BOOL)isEqual:(id)a3;
- (SKUIImageViewElementCacheKey)initWithURL:(id)a3 size:(CGSize)a4 imageTreatment:(id)a5;
@end

@implementation SKUIImageViewElementCacheKey

- (SKUIImageViewElementCacheKey)initWithURL:(id)a3 size:(CGSize)a4 imageTreatment:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        [(SKUIImageViewElementCacheKey *)v12 initWithURL:v13 size:v14 imageTreatment:v15, v16, v17, v18, v19];
      }
    }
  }

  v22.receiver = self;
  v22.super_class = SKUIImageViewElementCacheKey;
  v20 = [(SKUIImageViewElementCacheKey *)&v22 init];
  if (v20)
  {
    v20->_imageTreatment = SKUIImageTreatmentForString(v11);
    v20->_size.width = width;
    v20->_size.height = height;
    objc_storeStrong(&v20->_url, a3);
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && *&self->_size.height == *&v4->_size.height && *&self->_size.width == *&v4->_size.width && self->_imageTreatment == v4->_imageTreatment)
    {
      v6 = [(NSURL *)self->_url isEqual:v4->_url];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end