@interface _ANEProgramCacheKey
+ (_ANEProgramCacheKey)programCacheKeyWithModel:(id)model bundleID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_ANEProgramCacheKey)initWithModelIdentifier:(id)identifier modelPerfStatsMask:(unsigned int)mask bundleID:(id)d;
- (_ANEProgramCacheKey)initWithModelPath:(id)path modelKey:(id)key modelPerfStatsMask:(unsigned int)mask bundleID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation _ANEProgramCacheKey

- (unint64_t)hash
{
  modelPath = [(_ANEProgramCacheKey *)self modelPath];
  v4 = [modelPath hash];
  modelKey = [(_ANEProgramCacheKey *)self modelKey];
  v6 = [modelKey hash] ^ v4;
  bundleID = [(_ANEProgramCacheKey *)self bundleID];
  v8 = v6 ^ [bundleID hash];
  modelPerfStatsMask = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
  cacheURLIdentifier = [(_ANEProgramCacheKey *)self cacheURLIdentifier];
  v11 = modelPerfStatsMask ^ [cacheURLIdentifier hash];

  return v8 ^ v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  modelPath = [(_ANEProgramCacheKey *)self modelPath];
  modelKey = [(_ANEProgramCacheKey *)self modelKey];
  cacheURLIdentifier = [(_ANEProgramCacheKey *)self cacheURLIdentifier];
  modelPerfStatsMask = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
  bundleID = [(_ANEProgramCacheKey *)self bundleID];
  v10 = [NSString stringWithFormat:@"%@: { modelPath=%@ : modelKey=%@ : cacheURLIdentifier=%@ : modelPerfStatsMask=%u : bundleID=%@ }", v4, modelPath, modelKey, cacheURLIdentifier, modelPerfStatsMask, bundleID];

  return v10;
}

- (_ANEProgramCacheKey)initWithModelPath:(id)path modelKey:(id)key modelPerfStatsMask:(unsigned int)mask bundleID:(id)d
{
  pathCopy = path;
  keyCopy = key;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = _ANEProgramCacheKey;
  v13 = [(_ANEProgramCacheKey *)&v22 init];
  if (v13)
  {
    v14 = [pathCopy copy];
    modelPath = v13->_modelPath;
    v13->_modelPath = v14;

    v16 = [keyCopy copy];
    modelKey = v13->_modelKey;
    v13->_modelKey = v16;

    v13->_modelPerfStatsMask = mask;
    v18 = [dCopy copy];
    bundleID = v13->_bundleID;
    v13->_bundleID = v18;

    cacheURLIdentifier = v13->_cacheURLIdentifier;
    v13->_cacheURLIdentifier = 0;
  }

  return v13;
}

- (_ANEProgramCacheKey)initWithModelIdentifier:(id)identifier modelPerfStatsMask:(unsigned int)mask bundleID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = _ANEProgramCacheKey;
  v10 = [(_ANEProgramCacheKey *)&v18 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    cacheURLIdentifier = v10->_cacheURLIdentifier;
    v10->_cacheURLIdentifier = v11;

    v10->_modelPerfStatsMask = mask;
    v13 = [dCopy copy];
    bundleID = v10->_bundleID;
    v10->_bundleID = v13;

    modelPath = v10->_modelPath;
    v10->_modelPath = 0;

    modelKey = v10->_modelKey;
    v10->_modelKey = 0;
  }

  return v10;
}

+ (_ANEProgramCacheKey)programCacheKeyWithModel:(id)model bundleID:(id)d
{
  dCopy = d;
  modelCopy = model;
  getCacheURLIdentifier = [modelCopy getCacheURLIdentifier];

  v9 = [self alloc];
  if (getCacheURLIdentifier)
  {
    getCacheURLIdentifier2 = [modelCopy getCacheURLIdentifier];
    perfStatsMask = [modelCopy perfStatsMask];

    v12 = [v9 initWithModelIdentifier:getCacheURLIdentifier2 modelPerfStatsMask:perfStatsMask bundleID:dCopy];
  }

  else
  {
    getCacheURLIdentifier2 = [modelCopy modelURL];
    path = [getCacheURLIdentifier2 path];
    v14 = [modelCopy key];
    perfStatsMask2 = [modelCopy perfStatsMask];

    v12 = [v9 initWithModelPath:path modelKey:v14 modelPerfStatsMask:perfStatsMask2 bundleID:dCopy];
    dCopy = path;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  cacheURLIdentifier = [(_ANEProgramCacheKey *)self cacheURLIdentifier];

  v5 = objc_alloc(objc_opt_class());
  if (cacheURLIdentifier)
  {
    cacheURLIdentifier2 = [(_ANEProgramCacheKey *)self cacheURLIdentifier];
    modelPerfStatsMask = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
    bundleID = [(_ANEProgramCacheKey *)self bundleID];
    v9 = [v5 initWithModelIdentifier:cacheURLIdentifier2 modelPerfStatsMask:modelPerfStatsMask bundleID:bundleID];
  }

  else
  {
    cacheURLIdentifier2 = [(_ANEProgramCacheKey *)self modelPath];
    bundleID = [(_ANEProgramCacheKey *)self modelKey];
    modelPerfStatsMask2 = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
    bundleID2 = [(_ANEProgramCacheKey *)self bundleID];
    v9 = [v5 initWithModelPath:cacheURLIdentifier2 modelKey:bundleID modelPerfStatsMask:modelPerfStatsMask2 bundleID:bundleID2];
  }

  return v9;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    cacheURLIdentifier = [(_ANEProgramCacheKey *)self cacheURLIdentifier];

    if (cacheURLIdentifier)
    {
      cacheURLIdentifier2 = [(_ANEProgramCacheKey *)self cacheURLIdentifier];
      cacheURLIdentifier3 = [keyCopy cacheURLIdentifier];
      v8 = [cacheURLIdentifier2 isEqualToString:cacheURLIdentifier3];
    }

    else
    {
      modelPath = [(_ANEProgramCacheKey *)self modelPath];
      modelPath2 = [keyCopy modelPath];
      v12 = [modelPath isEqualToString:modelPath2];

      modelKey = [(_ANEProgramCacheKey *)self modelKey];
      modelKey2 = [keyCopy modelKey];
      v15 = [modelKey isEqualToString:modelKey2];

      v8 = v12 & v15;
    }

    modelPerfStatsMask = [(_ANEProgramCacheKey *)self modelPerfStatsMask];
    modelPerfStatsMask2 = [keyCopy modelPerfStatsMask];
    bundleID = [(_ANEProgramCacheKey *)self bundleID];
    bundleID2 = [keyCopy bundleID];
    v20 = [bundleID isEqualToString:bundleID2];

    if (modelPerfStatsMask == modelPerfStatsMask2)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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