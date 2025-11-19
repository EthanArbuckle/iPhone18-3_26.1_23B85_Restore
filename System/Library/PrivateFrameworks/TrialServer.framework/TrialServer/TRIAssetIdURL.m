@interface TRIAssetIdURL
+ (id)urlWithAssetId:(id)a3 url:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTourl:(id)a3;
- (TRIAssetIdURL)initWithAssetId:(id)a3 url:(id)a4;
- (id)copyWithReplacementAssetId:(id)a3;
- (id)copyWithReplacementUrl:(id)a3;
- (id)description;
@end

@implementation TRIAssetIdURL

- (TRIAssetIdURL)initWithAssetId:(id)a3 url:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2563 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2564 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIAssetIdURL;
  v11 = [(TRIAssetIdURL *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetId, a3);
    objc_storeStrong(&v12->_url, a4);
  }

  return v12;
}

+ (id)urlWithAssetId:(id)a3 url:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAssetId:v7 url:v6];

  return v8;
}

- (id)copyWithReplacementAssetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetId:v4 url:self->_url];

  return v5;
}

- (id)copyWithReplacementUrl:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetId:self->_assetId url:v4];

  return v5;
}

- (BOOL)isEqualTourl:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_assetId == 0;
  v7 = [v4 assetId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  assetId = self->_assetId;
  if (assetId)
  {
    v10 = [v5 assetId];
    v11 = [(TRIAssetId *)assetId isEqual:v10];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIAssetIdURL *)self isEqualTourl:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIAssetIdURL | assetId:%@ url:%@>", self->_assetId, self->_url];

  return v2;
}

@end