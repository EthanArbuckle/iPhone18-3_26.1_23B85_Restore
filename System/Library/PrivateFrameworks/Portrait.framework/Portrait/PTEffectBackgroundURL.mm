@interface PTEffectBackgroundURL
- (BOOL)isEqual:(id)a3;
- (PTEffectBackgroundURL)initWithFullsize:(id)a3 thumbnail:(id)a4 inputBufferChecksum:(id)a5;
- (id)URLs;
- (unint64_t)hash;
@end

@implementation PTEffectBackgroundURL

- (PTEffectBackgroundURL)initWithFullsize:(id)a3 thumbnail:(id)a4 inputBufferChecksum:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = PTEffectBackgroundURL;
  v12 = [(PTEffectBackgroundURL *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fullsizeURL, a3);
    objc_storeStrong(&v13->_thumbnailURL, a4);
    objc_storeStrong(&v13->_inputBufferChecksum, a5);
    v14 = v13;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PTEffectBackgroundURL *)v5 fullsizeURL];
      v7 = [(PTEffectBackgroundURL *)self fullsizeURL];
      if ([v6 isEqual:v7])
      {
        v8 = [(PTEffectBackgroundURL *)v5 thumbnailURL];
        v9 = [(PTEffectBackgroundURL *)self thumbnailURL];
        if ([v8 isEqual:v9])
        {
          v10 = [(PTEffectBackgroundURL *)v5 inputBufferChecksum];
          v11 = [(PTEffectBackgroundURL *)self inputBufferChecksum];
          v12 = [v10 isEqual:v11];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_fullsizeURL hash];
  v4 = [(NSURL *)self->_thumbnailURL hash]^ v3;
  return v4 ^ [(NSString *)self->_inputBufferChecksum hash];
}

- (id)URLs
{
  v5[2] = *MEMORY[0x277D85DE8];
  thumbnailURL = self->_thumbnailURL;
  v5[0] = self->_fullsizeURL;
  v5[1] = thumbnailURL;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

@end