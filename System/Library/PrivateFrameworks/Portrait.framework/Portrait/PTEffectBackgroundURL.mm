@interface PTEffectBackgroundURL
- (BOOL)isEqual:(id)equal;
- (PTEffectBackgroundURL)initWithFullsize:(id)fullsize thumbnail:(id)thumbnail inputBufferChecksum:(id)checksum;
- (id)URLs;
- (unint64_t)hash;
@end

@implementation PTEffectBackgroundURL

- (PTEffectBackgroundURL)initWithFullsize:(id)fullsize thumbnail:(id)thumbnail inputBufferChecksum:(id)checksum
{
  fullsizeCopy = fullsize;
  thumbnailCopy = thumbnail;
  checksumCopy = checksum;
  v16.receiver = self;
  v16.super_class = PTEffectBackgroundURL;
  v12 = [(PTEffectBackgroundURL *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fullsizeURL, fullsize);
    objc_storeStrong(&v13->_thumbnailURL, thumbnail);
    objc_storeStrong(&v13->_inputBufferChecksum, checksum);
    v14 = v13;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fullsizeURL = [(PTEffectBackgroundURL *)v5 fullsizeURL];
      fullsizeURL2 = [(PTEffectBackgroundURL *)self fullsizeURL];
      if ([fullsizeURL isEqual:fullsizeURL2])
      {
        thumbnailURL = [(PTEffectBackgroundURL *)v5 thumbnailURL];
        thumbnailURL2 = [(PTEffectBackgroundURL *)self thumbnailURL];
        if ([thumbnailURL isEqual:thumbnailURL2])
        {
          inputBufferChecksum = [(PTEffectBackgroundURL *)v5 inputBufferChecksum];
          inputBufferChecksum2 = [(PTEffectBackgroundURL *)self inputBufferChecksum];
          v12 = [inputBufferChecksum isEqual:inputBufferChecksum2];
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