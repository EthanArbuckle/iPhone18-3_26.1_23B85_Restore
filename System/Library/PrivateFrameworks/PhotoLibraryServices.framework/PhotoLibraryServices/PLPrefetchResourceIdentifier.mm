@interface PLPrefetchResourceIdentifier
+ (id)resourceDescriptionWithAssetUuid:(id)uuid resourceVersion:(unsigned int)version cplType:(unint64_t)type recipeID:(unsigned int)d;
- (BOOL)isEqual:(id)equal;
- (PLPrefetchResourceIdentifier)initWithAssetUuid:(id)uuid version:(unsigned int)version cplType:(unint64_t)type recipeID:(unsigned int)d;
- (id)description;
@end

@implementation PLPrefetchResourceIdentifier

- (id)description
{
  v3 = objc_opt_class();
  assetUuid = self->_assetUuid;
  cplType = self->_cplType;
  version = self->_version;
  recipeID = self->_recipeID;

  return [v3 resourceDescriptionWithAssetUuid:assetUuid resourceVersion:version cplType:cplType recipeID:recipeID];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_20;
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v9 = equalCopy;
    assetUuid = [(PLPrefetchResourceIdentifier *)v9 assetUuid];
    if (assetUuid || self->_assetUuid)
    {
      assetUuid2 = [(PLPrefetchResourceIdentifier *)v9 assetUuid];
      if (!assetUuid2)
      {
        v8 = 0;
        goto LABEL_19;
      }

      v3 = assetUuid2;
      assetUuid = self->_assetUuid;
      assetUuid3 = [(PLPrefetchResourceIdentifier *)v9 assetUuid];
      if (![(NSString *)assetUuid isEqual:assetUuid3])
      {
        v14 = 0;
        goto LABEL_18;
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    version = self->_version;
    if (version == [(PLPrefetchResourceIdentifier *)v9 version])
    {
      cplType = self->_cplType;
      if (cplType == [(PLPrefetchResourceIdentifier *)v9 cplType])
      {
        recipeID = self->_recipeID;
        v14 = recipeID == [(PLPrefetchResourceIdentifier *)v9 recipeID];
        v8 = v14;
        if ((v13 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v14 = 0;
    v8 = 0;
    if (v13)
    {
LABEL_18:

      v8 = v14;
    }

LABEL_19:

    goto LABEL_20;
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (PLPrefetchResourceIdentifier)initWithAssetUuid:(id)uuid version:(unsigned int)version cplType:(unint64_t)type recipeID:(unsigned int)d
{
  uuidCopy = uuid;
  v15.receiver = self;
  v15.super_class = PLPrefetchResourceIdentifier;
  v12 = [(PLPrefetchResourceIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetUuid, uuid);
    v13->_cplType = type;
    v13->_version = version;
    v13->_recipeID = d;
  }

  return v13;
}

+ (id)resourceDescriptionWithAssetUuid:(id)uuid resourceVersion:(unsigned int)version cplType:(unint64_t)type recipeID:(unsigned int)d
{
  v6 = *&d;
  v9 = MEMORY[0x1E696AEC0];
  uuidCopy = uuid;
  if (version > 2)
  {
    v11 = @"cur";
  }

  else
  {
    v11 = off_1E75664B0[version];
  }

  v12 = v11;
  v13 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:type];
  v14 = [v9 stringWithFormat:@"%@-%@-%@(%u)", uuidCopy, v12, v13, v6];

  return v14;
}

@end