@interface TRIAssetIdURL
+ (id)urlWithAssetId:(id)id url:(id)url;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTourl:(id)tourl;
- (TRIAssetIdURL)initWithAssetId:(id)id url:(id)url;
- (id)copyWithReplacementAssetId:(id)id;
- (id)copyWithReplacementUrl:(id)url;
- (id)description;
@end

@implementation TRIAssetIdURL

- (TRIAssetIdURL)initWithAssetId:(id)id url:(id)url
{
  idCopy = id;
  urlCopy = url;
  v10 = urlCopy;
  if (idCopy)
  {
    if (urlCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2563 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2564 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIAssetIdURL;
  v11 = [(TRIAssetIdURL *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetId, id);
    objc_storeStrong(&v12->_url, url);
  }

  return v12;
}

+ (id)urlWithAssetId:(id)id url:(id)url
{
  urlCopy = url;
  idCopy = id;
  v8 = [[self alloc] initWithAssetId:idCopy url:urlCopy];

  return v8;
}

- (id)copyWithReplacementAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetId:idCopy url:self->_url];

  return v5;
}

- (id)copyWithReplacementUrl:(id)url
{
  urlCopy = url;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetId:self->_assetId url:urlCopy];

  return v5;
}

- (BOOL)isEqualTourl:(id)tourl
{
  tourlCopy = tourl;
  v5 = tourlCopy;
  if (!tourlCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_assetId == 0;
  assetId = [tourlCopy assetId];
  v8 = assetId != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  assetId = self->_assetId;
  if (assetId)
  {
    assetId2 = [v5 assetId];
    v11 = [(TRIAssetId *)assetId isEqual:assetId2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_url == 0;
  v13 = [v5 url];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    url = self->_url;
    if (url)
    {
      v16 = [v5 url];
      v17 = [(NSURL *)url isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIAssetIdURL *)self isEqualTourl:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIAssetIdURL | assetId:%@ url:%@>", self->_assetId, self->_url];

  return v2;
}

@end