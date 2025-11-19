@interface VIThirdPartyObject
- (BOOL)isEqual:(id)a3;
- (VIThirdPartyObject)initWithObjectIdentifier:(id)a3 imageURL:(id)a4 thumbnailURL:(id)a5 metadata:(id)a6;
- (unint64_t)hash;
@end

@implementation VIThirdPartyObject

- (VIThirdPartyObject)initWithObjectIdentifier:(id)a3 imageURL:(id)a4 thumbnailURL:(id)a5 metadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = VIThirdPartyObject;
  v14 = [(VIThirdPartyObject *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    objectIdentifier = v14->_objectIdentifier;
    v14->_objectIdentifier = v15;

    v17 = [v11 copy];
    imageURL = v14->_imageURL;
    v14->_imageURL = v17;

    v19 = [v12 copy];
    thumbnailURL = v14->_thumbnailURL;
    v14->_thumbnailURL = v19;

    v21 = [v13 copy];
    metadata = v14->_metadata;
    v14->_metadata = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    objectIdentifier = self->_objectIdentifier;
    v8 = [(VIThirdPartyObject *)v6 objectIdentifier];
    if (VIObjectIsEqual(objectIdentifier, v8))
    {
      imageURL = self->_imageURL;
      v10 = [(VIThirdPartyObject *)v6 imageURL];
      if (VIObjectIsEqual(imageURL, v10))
      {
        thumbnailURL = self->_thumbnailURL;
        v12 = [(VIThirdPartyObject *)v6 thumbnailURL];
        if (VIObjectIsEqual(thumbnailURL, v12))
        {
          metadata = self->_metadata;
          v14 = [(VIThirdPartyObject *)v6 metadata];
          IsEqual = VIObjectIsEqual(metadata, v14);
        }

        else
        {
          IsEqual = 0;
        }
      }

      else
      {
        IsEqual = 0;
      }
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectIdentifier hash];
  v4 = [(NSString *)self->_imageURL hash]^ v3;
  v5 = [(NSString *)self->_thumbnailURL hash];
  return v4 ^ v5 ^ [(NSData *)self->_metadata hash];
}

@end