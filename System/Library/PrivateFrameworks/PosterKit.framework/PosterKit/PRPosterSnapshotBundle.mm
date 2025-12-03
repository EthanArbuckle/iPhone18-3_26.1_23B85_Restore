@interface PRPosterSnapshotBundle
+ (id)snapshotBundleAtURL:(id)l error:(id *)error;
+ (id)snapshotBundleWithPUIPosterSnapshotBundle:(id)bundle;
- (CGSize)assetSize;
- (NSArray)snapshotLevelSets;
- (PRPosterSnapshotBundle)initWithURL:(id)l;
- (PRPosterSnapshotBundle)initWithUnderlyingSnapshotBundle:(id)bundle;
- (id)snapshotForLevelSet:(id)set;
@end

@implementation PRPosterSnapshotBundle

+ (id)snapshotBundleWithPUIPosterSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [[self alloc] initWithUnderlyingSnapshotBundle:bundleCopy];

  return v5;
}

- (PRPosterSnapshotBundle)initWithUnderlyingSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  if (bundleCopy)
  {
    v10.receiver = self;
    v10.super_class = PRPosterSnapshotBundle;
    v6 = [(PRPosterSnapshotBundle *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_underlyingSnapshotBundle, bundle);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PRPosterSnapshotBundle)initWithURL:(id)l
{
  v4 = MEMORY[0x1E69C55B8];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

  v7 = [(PRPosterSnapshotBundle *)self initWithUnderlyingSnapshotBundle:v6];
  return v7;
}

+ (id)snapshotBundleAtURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x1E69C55B8] snapshotBundleAtURL:l error:error];
  if (v5)
  {
    v6 = [[self alloc] initWithUnderlyingSnapshotBundle:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)snapshotLevelSets
{
  snapshotLevelSets = [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle snapshotLevelSets];
  v3 = [snapshotLevelSets bs_mapNoNulls:&__block_literal_global_8];

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

- (id)snapshotForLevelSet:(id)set
{
  underlyingSnapshotBundle = self->_underlyingSnapshotBundle;
  v4 = MEMORY[0x1E69C5590];
  setCopy = set;
  v6 = [v4 alloc];
  levels = [setCopy levels];

  v8 = [v6 initWithSet:levels];
  v9 = [(PUIPosterSnapshotBundle *)underlyingSnapshotBundle snapshotForLevelSet:v8];

  return v9;
}

@end