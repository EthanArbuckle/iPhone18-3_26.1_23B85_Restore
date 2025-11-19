@interface PRUISPosterSnapshotBundle
+ (PRUISPosterSnapshotBundle)snapshotBundleWithPUIPosterSnapshotBundle:(id)a3;
+ (id)snapshotBundleAtURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)salientContentRectangle;
- (CGSize)assetSize;
- (NSArray)snapshotLevelSets;
- (PRPosterContentOcclusionRectSet)contentOcclusionRectangles;
- (PRPosterSnapshotBundle)prPosterSnapshotBundle;
- (PRUISPosterSnapshotBundle)initWithURL:(id)a3;
- (PRUISPosterSnapshotBundle)initWithUnderlyingSnapshotBundle:(id)a3;
- (id)description;
- (id)snapshotForLevelSet:(id)a3;
@end

@implementation PRUISPosterSnapshotBundle

- (PRUISPosterSnapshotBundle)initWithUnderlyingSnapshotBundle:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PRUISPosterSnapshotBundle;
    v6 = [(PRUISPosterSnapshotBundle *)&v10 init];
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

- (PRUISPosterSnapshotBundle)initWithURL:(id)a3
{
  v4 = MEMORY[0x1E69C55B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5];

  v7 = [(PRUISPosterSnapshotBundle *)self initWithUnderlyingSnapshotBundle:v6];
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

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PRUISPosterSnapshotBundle *)self bundleURL];
  v5 = [v3 appendObject:v4 withName:@"bundleURL"];

  v6 = [(PRUISPosterSnapshotBundle *)self infoDictionary];
  [v3 appendDictionarySection:v6 withName:@"infoDictionary" skipIfEmpty:1];

  v7 = [v3 build];

  return v7;
}

- (NSArray)snapshotLevelSets
{
  v2 = [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle snapshotLevelSets];
  v3 = [v2 bs_mapNoNulls:&__block_literal_global_6];

  return v3;
}

PRUISPosterLevelSet *__46__PRUISPosterSnapshotBundle_snapshotLevelSets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PRUISPosterLevelSet alloc];
  v4 = [v2 levels];

  v5 = [(PRUISPosterLevelSet *)v3 initWithLevels:v4];

  return v5;
}

- (CGSize)assetSize
{
  [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle assetSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)salientContentRectangle
{
  [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle salientContentRectangle];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PRPosterContentOcclusionRectSet)contentOcclusionRectangles
{
  v2 = [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle contentOcclusionRectangles];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C52F8]);
    v4 = [v2 allRects];
    v5 = [v3 initWithNameToRectMap:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

+ (PRUISPosterSnapshotBundle)snapshotBundleWithPUIPosterSnapshotBundle:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUnderlyingSnapshotBundle:v4];

  return v5;
}

- (PRPosterSnapshotBundle)prPosterSnapshotBundle
{
  v2 = MEMORY[0x1E69C5330];
  v3 = [(PRUISPosterSnapshotBundle *)self underlyingSnapshotBundle];
  v4 = [v2 snapshotBundleWithPUIPosterSnapshotBundle:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4)
  {
    v6 = [(PRUISPosterSnapshotBundle *)v4 underlyingSnapshotBundle];
    if (v6)
    {
      v7 = [(PRUISPosterSnapshotBundle *)self underlyingSnapshotBundle];
      v8 = [v7 isEqual:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end