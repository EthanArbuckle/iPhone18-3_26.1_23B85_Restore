@interface _ANEProgramCacheKey
+ (_ANEProgramCacheKey)programCacheKeyWithModel:(id)a3 bundleID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheKey:(id)a3;
- (_ANEProgramCacheKey)initWithModelIdentifier:(id)a3 modelPerfStatsMask:(unsigned int)a4 bundleID:(id)a5;
- (_ANEProgramCacheKey)initWithModelPath:(id)a3 modelKey:(id)a4 modelPerfStatsMask:(unsigned int)a5 bundleID:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _ANEProgramCacheKey

- (unint64_t)hash
{
  v3 = [(_ANEProgramCacheKey *)self modelPath];
  v4 = [v3 hash];
  v5 = [(_ANEProgramCacheKey *)self modelKey];
  v6 = [v5 hash] ^ v4;
  v7 = [(_ANEProgramCacheKey *)self bundleID];
  v8 = v6 ^ [v7 hash];
  v9 = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
  v10 = [(_ANEProgramCacheKey *)self cacheURLIdentifier];
  v11 = v9 ^ [v10 hash];

  return v8 ^ v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(_ANEProgramCacheKey *)self modelPath];
  v6 = [(_ANEProgramCacheKey *)self modelKey];
  v7 = [(_ANEProgramCacheKey *)self cacheURLIdentifier];
  v8 = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
  v9 = [(_ANEProgramCacheKey *)self bundleID];
  v10 = [NSString stringWithFormat:@"%@: { modelPath=%@ : modelKey=%@ : cacheURLIdentifier=%@ : modelPerfStatsMask=%u : bundleID=%@ }", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (_ANEProgramCacheKey)initWithModelPath:(id)a3 modelKey:(id)a4 modelPerfStatsMask:(unsigned int)a5 bundleID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _ANEProgramCacheKey;
  v13 = [(_ANEProgramCacheKey *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
    modelPath = v13->_modelPath;
    v13->_modelPath = v14;

    v16 = [v11 copy];
    modelKey = v13->_modelKey;
    v13->_modelKey = v16;

    v13->_modelPerfStatsMask = a5;
    v18 = [v12 copy];
    bundleID = v13->_bundleID;
    v13->_bundleID = v18;

    cacheURLIdentifier = v13->_cacheURLIdentifier;
    v13->_cacheURLIdentifier = 0;
  }

  return v13;
}

- (_ANEProgramCacheKey)initWithModelIdentifier:(id)a3 modelPerfStatsMask:(unsigned int)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = _ANEProgramCacheKey;
  v10 = [(_ANEProgramCacheKey *)&v18 init];
  if (v10)
  {
    v11 = [v8 copy];
    cacheURLIdentifier = v10->_cacheURLIdentifier;
    v10->_cacheURLIdentifier = v11;

    v10->_modelPerfStatsMask = a4;
    v13 = [v9 copy];
    bundleID = v10->_bundleID;
    v10->_bundleID = v13;

    modelPath = v10->_modelPath;
    v10->_modelPath = 0;

    modelKey = v10->_modelKey;
    v10->_modelKey = 0;
  }

  return v10;
}

+ (_ANEProgramCacheKey)programCacheKeyWithModel:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 getCacheURLIdentifier];

  v9 = [a1 alloc];
  if (v8)
  {
    v10 = [v7 getCacheURLIdentifier];
    v11 = [v7 perfStatsMask];

    v12 = [v9 initWithModelIdentifier:v10 modelPerfStatsMask:v11 bundleID:v6];
  }

  else
  {
    v10 = [v7 modelURL];
    v13 = [v10 path];
    v14 = [v7 key];
    v15 = [v7 perfStatsMask];

    v12 = [v9 initWithModelPath:v13 modelKey:v14 modelPerfStatsMask:v15 bundleID:v6];
    v6 = v13;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(_ANEProgramCacheKey *)self cacheURLIdentifier];

  v5 = objc_alloc(objc_opt_class());
  if (v4)
  {
    v6 = [(_ANEProgramCacheKey *)self cacheURLIdentifier];
    v7 = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
    v8 = [(_ANEProgramCacheKey *)self bundleID];
    v9 = [v5 initWithModelIdentifier:v6 modelPerfStatsMask:v7 bundleID:v8];
  }

  else
  {
    v6 = [(_ANEProgramCacheKey *)self modelPath];
    v8 = [(_ANEProgramCacheKey *)self modelKey];
    v10 = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
    v11 = [(_ANEProgramCacheKey *)self bundleID];
    v9 = [v5 initWithModelPath:v6 modelKey:v8 modelPerfStatsMask:v10 bundleID:v11];
  }

  return v9;
}

- (BOOL)isEqualToCacheKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_ANEProgramCacheKey *)self cacheURLIdentifier];

    if (v5)
    {
      v6 = [(_ANEProgramCacheKey *)self cacheURLIdentifier];
      v7 = [v4 cacheURLIdentifier];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v10 = [(_ANEProgramCacheKey *)self modelPath];
      v11 = [v4 modelPath];
      v12 = [v10 isEqualToString:v11];

      v13 = [(_ANEProgramCacheKey *)self modelKey];
      v14 = [v4 modelKey];
      v15 = [v13 isEqualToString:v14];

      v8 = v12 & v15;
    }

    v16 = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
    v17 = [v4 modelPerfStatsMask];
    v18 = [(_ANEProgramCacheKey *)self bundleID];
    v19 = [v4 bundleID];
    v20 = [v18 isEqualToString:v19];

    if (v16 == v17)
    {
      v21 = v8;
    }

    else
    {
      v21 = 0;
    }

    v9 = v21 & v20;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_ANEProgramCacheKey *)self isEqualToCacheKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end