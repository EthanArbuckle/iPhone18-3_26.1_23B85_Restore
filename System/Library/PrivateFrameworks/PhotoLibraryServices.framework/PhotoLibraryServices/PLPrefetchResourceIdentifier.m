@interface PLPrefetchResourceIdentifier
+ (id)resourceDescriptionWithAssetUuid:(id)a3 resourceVersion:(unsigned int)a4 cplType:(unint64_t)a5 recipeID:(unsigned int)a6;
- (BOOL)isEqual:(id)a3;
- (PLPrefetchResourceIdentifier)initWithAssetUuid:(id)a3 version:(unsigned int)a4 cplType:(unint64_t)a5 recipeID:(unsigned int)a6;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v8 = 1;
    goto LABEL_20;
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v9 = v6;
    v10 = [(PLPrefetchResourceIdentifier *)v9 assetUuid];
    if (v10 || self->_assetUuid)
    {
      v11 = [(PLPrefetchResourceIdentifier *)v9 assetUuid];
      if (!v11)
      {
        v8 = 0;
        goto LABEL_19;
      }

      v3 = v11;
      assetUuid = self->_assetUuid;
      v4 = [(PLPrefetchResourceIdentifier *)v9 assetUuid];
      if (![(NSString *)assetUuid isEqual:v4])
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

- (PLPrefetchResourceIdentifier)initWithAssetUuid:(id)a3 version:(unsigned int)a4 cplType:(unint64_t)a5 recipeID:(unsigned int)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = PLPrefetchResourceIdentifier;
  v12 = [(PLPrefetchResourceIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetUuid, a3);
    v13->_cplType = a5;
    v13->_version = a4;
    v13->_recipeID = a6;
  }

  return v13;
}

+ (id)resourceDescriptionWithAssetUuid:(id)a3 resourceVersion:(unsigned int)a4 cplType:(unint64_t)a5 recipeID:(unsigned int)a6
{
  v6 = *&a6;
  v9 = MEMORY[0x1E696AEC0];
  v10 = a3;
  if (a4 > 2)
  {
    v11 = @"cur";
  }

  else
  {
    v11 = off_1E75664B0[a4];
  }

  v12 = v11;
  v13 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:a5];
  v14 = [v9 stringWithFormat:@"%@-%@-%@(%u)", v10, v12, v13, v6];

  return v14;
}

@end