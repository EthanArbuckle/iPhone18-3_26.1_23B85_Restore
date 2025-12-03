@interface TRIFetchOptions
+ (id)optionsWithDownloadOptions:(id)options cacheDeleteAvailableSpaceClass:(id)class;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOptions:(id)options;
- (TRIFetchOptions)initWithDownloadOptions:(id)options cacheDeleteAvailableSpaceClass:(id)class;
- (id)copyWithReplacementCacheDeleteAvailableSpaceClass:(id)class;
- (id)copyWithReplacementDownloadOptions:(id)options;
- (id)description;
@end

@implementation TRIFetchOptions

- (TRIFetchOptions)initWithDownloadOptions:(id)options cacheDeleteAvailableSpaceClass:(id)class
{
  optionsCopy = options;
  classCopy = class;
  v10 = classCopy;
  if (optionsCopy)
  {
    if (classCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4263 description:{@"Invalid parameter not satisfying: %@", @"downloadOptions != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4264 description:{@"Invalid parameter not satisfying: %@", @"cacheDeleteAvailableSpaceClass != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIFetchOptions;
  v11 = [(TRIFetchOptions *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downloadOptions, options);
    objc_storeStrong(&v12->_cacheDeleteAvailableSpaceClass, class);
  }

  return v12;
}

+ (id)optionsWithDownloadOptions:(id)options cacheDeleteAvailableSpaceClass:(id)class
{
  classCopy = class;
  optionsCopy = options;
  v8 = [[self alloc] initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:classCopy];

  return v8;
}

- (id)copyWithReplacementDownloadOptions:(id)options
{
  optionsCopy = options;
  v5 = [objc_alloc(objc_opt_class()) initWithDownloadOptions:optionsCopy cacheDeleteAvailableSpaceClass:self->_cacheDeleteAvailableSpaceClass];

  return v5;
}

- (id)copyWithReplacementCacheDeleteAvailableSpaceClass:(id)class
{
  classCopy = class;
  v5 = [objc_alloc(objc_opt_class()) initWithDownloadOptions:self->_downloadOptions cacheDeleteAvailableSpaceClass:classCopy];

  return v5;
}

- (BOOL)isEqualToOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (!optionsCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_downloadOptions == 0;
  downloadOptions = [optionsCopy downloadOptions];
  v8 = downloadOptions != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  downloadOptions = self->_downloadOptions;
  if (downloadOptions)
  {
    downloadOptions2 = [v5 downloadOptions];
    v11 = [(TRIDownloadOptions *)downloadOptions isEqual:downloadOptions2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_cacheDeleteAvailableSpaceClass == 0;
  cacheDeleteAvailableSpaceClass = [v5 cacheDeleteAvailableSpaceClass];
  v14 = cacheDeleteAvailableSpaceClass != 0;

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
      cacheDeleteAvailableSpaceClass2 = [v5 cacheDeleteAvailableSpaceClass];
      v17 = [(NSNumber *)cacheDeleteAvailableSpaceClass isEqual:cacheDeleteAvailableSpaceClass2];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFetchOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFetchOptions | downloadOptions:%@ cacheDeleteAvailableSpaceClass:%@>", self->_downloadOptions, self->_cacheDeleteAvailableSpaceClass];

  return v2;
}

@end