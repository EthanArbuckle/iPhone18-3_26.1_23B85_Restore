@interface TRIFetchOptions
+ (id)optionsWithDownloadOptions:(id)a3 cacheDeleteAvailableSpaceClass:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOptions:(id)a3;
- (TRIFetchOptions)initWithDownloadOptions:(id)a3 cacheDeleteAvailableSpaceClass:(id)a4;
- (id)copyWithReplacementCacheDeleteAvailableSpaceClass:(id)a3;
- (id)copyWithReplacementDownloadOptions:(id)a3;
- (id)description;
@end

@implementation TRIFetchOptions

- (TRIFetchOptions)initWithDownloadOptions:(id)a3 cacheDeleteAvailableSpaceClass:(id)a4
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
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4263 description:{@"Invalid parameter not satisfying: %@", @"downloadOptions != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4264 description:{@"Invalid parameter not satisfying: %@", @"cacheDeleteAvailableSpaceClass != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIFetchOptions;
  v11 = [(TRIFetchOptions *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downloadOptions, a3);
    objc_storeStrong(&v12->_cacheDeleteAvailableSpaceClass, a4);
  }

  return v12;
}

+ (id)optionsWithDownloadOptions:(id)a3 cacheDeleteAvailableSpaceClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDownloadOptions:v7 cacheDeleteAvailableSpaceClass:v6];

  return v8;
}

- (id)copyWithReplacementDownloadOptions:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDownloadOptions:v4 cacheDeleteAvailableSpaceClass:self->_cacheDeleteAvailableSpaceClass];

  return v5;
}

- (id)copyWithReplacementCacheDeleteAvailableSpaceClass:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDownloadOptions:self->_downloadOptions cacheDeleteAvailableSpaceClass:v4];

  return v5;
}

- (BOOL)isEqualToOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_downloadOptions == 0;
  v7 = [v4 downloadOptions];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  downloadOptions = self->_downloadOptions;
  if (downloadOptions)
  {
    v10 = [v5 downloadOptions];
    v11 = [(TRIDownloadOptions *)downloadOptions isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_cacheDeleteAvailableSpaceClass == 0;
  v13 = [v5 cacheDeleteAvailableSpaceClass];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    cacheDeleteAvailableSpaceClass = self->_cacheDeleteAvailableSpaceClass;
    if (cacheDeleteAvailableSpaceClass)
    {
      v16 = [v5 cacheDeleteAvailableSpaceClass];
      v17 = [(NSNumber *)cacheDeleteAvailableSpaceClass isEqual:v16];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFetchOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFetchOptions | downloadOptions:%@ cacheDeleteAvailableSpaceClass:%@>", self->_downloadOptions, self->_cacheDeleteAvailableSpaceClass];

  return v2;
}

@end