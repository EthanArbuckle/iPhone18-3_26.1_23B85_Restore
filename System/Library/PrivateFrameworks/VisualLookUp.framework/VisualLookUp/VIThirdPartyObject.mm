@interface VIThirdPartyObject
- (BOOL)isEqual:(id)equal;
- (VIThirdPartyObject)initWithObjectIdentifier:(id)identifier imageURL:(id)l thumbnailURL:(id)rL metadata:(id)metadata;
- (unint64_t)hash;
@end

@implementation VIThirdPartyObject

- (VIThirdPartyObject)initWithObjectIdentifier:(id)identifier imageURL:(id)l thumbnailURL:(id)rL metadata:(id)metadata
{
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  metadataCopy = metadata;
  v24.receiver = self;
  v24.super_class = VIThirdPartyObject;
  v14 = [(VIThirdPartyObject *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    objectIdentifier = v14->_objectIdentifier;
    v14->_objectIdentifier = v15;

    v17 = [lCopy copy];
    imageURL = v14->_imageURL;
    v14->_imageURL = v17;

    v19 = [rLCopy copy];
    thumbnailURL = v14->_thumbnailURL;
    v14->_thumbnailURL = v19;

    v21 = [metadataCopy copy];
    metadata = v14->_metadata;
    v14->_metadata = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    objectIdentifier = self->_objectIdentifier;
    objectIdentifier = [(VIThirdPartyObject *)v6 objectIdentifier];
    if (VIObjectIsEqual(objectIdentifier, objectIdentifier))
    {
      imageURL = self->_imageURL;
      imageURL = [(VIThirdPartyObject *)v6 imageURL];
      if (VIObjectIsEqual(imageURL, imageURL))
      {
        thumbnailURL = self->_thumbnailURL;
        thumbnailURL = [(VIThirdPartyObject *)v6 thumbnailURL];
        if (VIObjectIsEqual(thumbnailURL, thumbnailURL))
        {
          metadata = self->_metadata;
          metadata = [(VIThirdPartyObject *)v6 metadata];
          IsEqual = VIObjectIsEqual(metadata, metadata);
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