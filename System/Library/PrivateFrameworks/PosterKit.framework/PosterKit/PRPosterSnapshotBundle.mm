@interface PRPosterSnapshotBundle
+ (id)snapshotBundleAtURL:(id)a3 error:(id *)a4;
+ (id)snapshotBundleWithPUIPosterSnapshotBundle:(id)a3;
- (CGSize)assetSize;
- (NSArray)snapshotLevelSets;
- (PRPosterSnapshotBundle)initWithURL:(id)a3;
- (PRPosterSnapshotBundle)initWithUnderlyingSnapshotBundle:(id)a3;
- (id)snapshotForLevelSet:(id)a3;
@end

@implementation PRPosterSnapshotBundle

+ (id)snapshotBundleWithPUIPosterSnapshotBundle:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUnderlyingSnapshotBundle:v4];

  return v5;
}

- (PRPosterSnapshotBundle)initWithUnderlyingSnapshotBundle:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PRPosterSnapshotBundle;
    v6 = [(PRPosterSnapshotBundle *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_underlyingSnapshotBundle, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PRPosterSnapshotBundle)initWithURL:(id)a3
{
  v4 = MEMORY[0x1E69C55B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5];

  v7 = [(PRPosterSnapshotBundle *)self initWithUnderlyingSnapshotBundle:v6];
  return v7;
}

+ (id)snapshotBundleAtURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E69C55B8] snapshotBundleAtURL:a3 error:a4];
  if (v5)
  {
    v6 = [[a1 alloc] initWithUnderlyingSnapshotBundle:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)snapshotLevelSets
{
  v2 = [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle snapshotLevelSets];
  v3 = [v2 bs_mapNoNulls:&__block_literal_global_8];

  return v3;
}

PRPosterLevelSet *__43__PRPosterSnapshotBundle_snapshotLevelSets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PRPosterLevelSet alloc];
  v4 = [v2 levels];

  v5 = [(PRPosterLevelSet *)v3 initWithLevels:v4];

  return v5;
}

- (CGSize)assetSize
{
  [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle assetSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)snapshotForLevelSet:(id)a3
{
  underlyingSnapshotBundle = self->_underlyingSnapshotBundle;
  v4 = MEMORY[0x1E69C5590];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 levels];

  v8 = [v6 initWithSet:v7];
  v9 = [(PUIPosterSnapshotBundle *)underlyingSnapshotBundle snapshotForLevelSet:v8];

  return v9;
}

@end