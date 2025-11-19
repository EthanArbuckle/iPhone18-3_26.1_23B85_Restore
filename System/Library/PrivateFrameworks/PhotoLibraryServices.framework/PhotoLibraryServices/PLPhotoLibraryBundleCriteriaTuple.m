@interface PLPhotoLibraryBundleCriteriaTuple
- (BOOL)isEqual:(id)a3;
- (PLPhotoLibraryBundleCriteriaTuple)initWithBundle:(id)a3 withCriteria:(id)a4 withProgressReportBlock:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLPhotoLibraryBundleCriteriaTuple

- (unint64_t)hash
{
  v3 = [(PLPhotoLibraryBundleCriteriaTuple *)self bundle];
  v4 = [v3 libraryURL];
  v5 = [v4 hash];
  v6 = [(PLPhotoLibraryBundleCriteriaTuple *)self criteria];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PLPhotoLibraryBundleCriteriaTuple;
    if ([(PLPhotoLibraryBundleCriteriaTuple *)&v15 isEqual:v4])
    {
      v5 = [(PLPhotoLibraryBundleCriteriaTuple *)self bundle];
      v6 = [v5 libraryURL];
      v7 = [v6 absoluteString];
      v8 = [(PLPhotoLibraryBundleCriteriaTuple *)v4 bundle];
      v9 = [v8 libraryURL];
      v10 = [v9 absoluteString];
      if ([v7 isEqualToString:v10])
      {
        v11 = [(PLPhotoLibraryBundleCriteriaTuple *)self criteria];
        v12 = [(PLPhotoLibraryBundleCriteriaTuple *)v4 criteria];
        v13 = [v11 isEqual:v12];
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
  v4 = [(PLBackgroundJobCriteria *)self->_criteria shortCode];
  v5 = [v3 stringWithFormat:@"[%@] - %@", v4, self->_bundle];

  return v5;
}

- (PLPhotoLibraryBundleCriteriaTuple)initWithBundle:(id)a3 withCriteria:(id)a4 withProgressReportBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PLPhotoLibraryBundleCriteriaTuple;
  v12 = [(PLPhotoLibraryBundleCriteriaTuple *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundle, a3);
    objc_storeStrong(&v13->_criteria, a4);
    v14 = _Block_copy(v11);
    progressBlock = v13->_progressBlock;
    v13->_progressBlock = v14;
  }

  return v13;
}

@end