@interface SURollbackDescriptor
- (BOOL)isEqual:(id)equal;
- (SURollbackDescriptor)init;
- (SURollbackDescriptor)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SURollbackDescriptor

- (SURollbackDescriptor)init
{
  v9.receiver = self;
  v9.super_class = SURollbackDescriptor;
  v2 = [(SURollbackDescriptor *)&v9 init];
  v3 = v2;
  if (v2)
  {
    restoreVersion = v2->_restoreVersion;
    v2->_restoreVersion = 0;

    productVersion = v3->_productVersion;
    v3->_productVersion = 0;

    productBuildVersion = v3->_productBuildVersion;
    v3->_productBuildVersion = 0;

    releaseType = v3->_releaseType;
    v3->_releaseType = 0;
  }

  return v3;
}

- (SURollbackDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SURollbackDescriptor;
  v5 = [(SURollbackDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restoreVersion"];
    [(SURollbackDescriptor *)v5 setRestoreVersion:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    [(SURollbackDescriptor *)v5 setProductVersion:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    [(SURollbackDescriptor *)v5 setProductBuildVersion:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseType"];
    [(SURollbackDescriptor *)v5 setReleaseType:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  restoreVersion = [(SURollbackDescriptor *)self restoreVersion];
  [coderCopy encodeObject:restoreVersion forKey:@"restoreVersion"];

  productVersion = [(SURollbackDescriptor *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"productVersion"];

  productBuildVersion = [(SURollbackDescriptor *)self productBuildVersion];
  [coderCopy encodeObject:productBuildVersion forKey:@"productBuildVersion"];

  releaseType = [(SURollbackDescriptor *)self releaseType];
  [coderCopy encodeObject:releaseType forKey:@"releaseType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  restoreVersion = [(SURollbackDescriptor *)self restoreVersion];
  [v4 setRestoreVersion:restoreVersion];

  productVersion = [(SURollbackDescriptor *)self productVersion];
  [v4 setProductVersion:productVersion];

  productBuildVersion = [(SURollbackDescriptor *)self productBuildVersion];
  [v4 setProductBuildVersion:productBuildVersion];

  releaseType = [(SURollbackDescriptor *)self releaseType];
  [v4 setReleaseType:releaseType];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  restoreVersion = [(SURollbackDescriptor *)self restoreVersion];
  productVersion = [(SURollbackDescriptor *)self productVersion];
  productBuildVersion = [(SURollbackDescriptor *)self productBuildVersion];
  releaseType = [(SURollbackDescriptor *)self releaseType];
  v8 = [v3 stringWithFormat:@"SURollbackDescriptor:\n              RestoreVersion: %@\n              ProductVersion: %@\n              ProductBuildVersion: %@\n              ReleaseType: %@\n", restoreVersion, productVersion, productBuildVersion, releaseType];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    restoreVersion = [v6 restoreVersion];
    if (restoreVersion || ([(SURollbackDescriptor *)self restoreVersion], (productBuildVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      restoreVersion2 = [v6 restoreVersion];
      restoreVersion3 = [(SURollbackDescriptor *)self restoreVersion];
      v10 = [restoreVersion2 isEqualToString:restoreVersion3];

      if (restoreVersion)
      {

        if (!v10)
        {
          goto LABEL_24;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    productVersion = [v6 productVersion];
    if (productVersion || ([(SURollbackDescriptor *)self productVersion], (productBuildVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      productVersion2 = [v6 productVersion];
      productVersion3 = [(SURollbackDescriptor *)self productVersion];
      v15 = [productVersion2 isEqualToString:productVersion3];

      if (productVersion)
      {

        if (!v15)
        {
          goto LABEL_24;
        }
      }

      else
      {

        if ((v15 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    productBuildVersion = [v6 productBuildVersion];
    if (!productBuildVersion)
    {
      productBuildVersion2 = [(SURollbackDescriptor *)self productBuildVersion];
      if (!productBuildVersion2)
      {
LABEL_19:
        releaseType = [v6 releaseType];
        if (releaseType || ([(SURollbackDescriptor *)self releaseType], (productBuildVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          releaseType2 = [v6 releaseType];
          releaseType3 = [(SURollbackDescriptor *)self releaseType];
          v11 = [releaseType2 isEqualToString:releaseType3];

          if (releaseType)
          {
LABEL_29:

            goto LABEL_25;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_29;
      }
    }

    productBuildVersion3 = [v6 productBuildVersion];
    productBuildVersion4 = [(SURollbackDescriptor *)self productBuildVersion];
    v19 = [productBuildVersion3 isEqualToString:productBuildVersion4];

    if (productBuildVersion)
    {

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    v11 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v11 = 0;
LABEL_26:

  return v11;
}

@end