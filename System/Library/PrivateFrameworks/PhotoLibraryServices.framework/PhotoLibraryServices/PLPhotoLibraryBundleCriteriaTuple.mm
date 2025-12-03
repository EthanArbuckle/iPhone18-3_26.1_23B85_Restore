@interface PLPhotoLibraryBundleCriteriaTuple
- (BOOL)isEqual:(id)equal;
- (PLPhotoLibraryBundleCriteriaTuple)initWithBundle:(id)bundle withCriteria:(id)criteria withProgressReportBlock:(id)block;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLPhotoLibraryBundleCriteriaTuple

- (unint64_t)hash
{
  bundle = [(PLPhotoLibraryBundleCriteriaTuple *)self bundle];
  libraryURL = [bundle libraryURL];
  v5 = [libraryURL hash];
  criteria = [(PLPhotoLibraryBundleCriteriaTuple *)self criteria];
  v7 = [criteria hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PLPhotoLibraryBundleCriteriaTuple;
    if ([(PLPhotoLibraryBundleCriteriaTuple *)&v15 isEqual:equalCopy])
    {
      bundle = [(PLPhotoLibraryBundleCriteriaTuple *)self bundle];
      libraryURL = [bundle libraryURL];
      absoluteString = [libraryURL absoluteString];
      bundle2 = [(PLPhotoLibraryBundleCriteriaTuple *)equalCopy bundle];
      libraryURL2 = [bundle2 libraryURL];
      absoluteString2 = [libraryURL2 absoluteString];
      if ([absoluteString isEqualToString:absoluteString2])
      {
        criteria = [(PLPhotoLibraryBundleCriteriaTuple *)self criteria];
        criteria2 = [(PLPhotoLibraryBundleCriteriaTuple *)equalCopy criteria];
        v13 = [criteria isEqual:criteria2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  shortCode = [(PLBackgroundJobCriteria *)self->_criteria shortCode];
  v5 = [v3 stringWithFormat:@"[%@] - %@", shortCode, self->_bundle];

  return v5;
}

- (PLPhotoLibraryBundleCriteriaTuple)initWithBundle:(id)bundle withCriteria:(id)criteria withProgressReportBlock:(id)block
{
  bundleCopy = bundle;
  criteriaCopy = criteria;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = PLPhotoLibraryBundleCriteriaTuple;
  v12 = [(PLPhotoLibraryBundleCriteriaTuple *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundle, bundle);
    objc_storeStrong(&v13->_criteria, criteria);
    v14 = _Block_copy(blockCopy);
    progressBlock = v13->_progressBlock;
    v13->_progressBlock = v14;
  }

  return v13;
}

@end