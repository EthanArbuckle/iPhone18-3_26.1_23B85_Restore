@interface PRUISPosterSnapshotBundle
+ (PRUISPosterSnapshotBundle)snapshotBundleWithPUIPosterSnapshotBundle:(id)bundle;
+ (id)snapshotBundleAtURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CGRect)salientContentRectangle;
- (CGSize)assetSize;
- (NSArray)snapshotLevelSets;
- (PRPosterContentOcclusionRectSet)contentOcclusionRectangles;
- (PRPosterSnapshotBundle)prPosterSnapshotBundle;
- (PRUISPosterSnapshotBundle)initWithURL:(id)l;
- (PRUISPosterSnapshotBundle)initWithUnderlyingSnapshotBundle:(id)bundle;
- (id)description;
- (id)snapshotForLevelSet:(id)set;
@end

@implementation PRUISPosterSnapshotBundle

- (PRUISPosterSnapshotBundle)initWithUnderlyingSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  if (bundleCopy)
  {
    v10.receiver = self;
    v10.super_class = PRUISPosterSnapshotBundle;
    v6 = [(PRUISPosterSnapshotBundle *)&v10 init];
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

- (PRUISPosterSnapshotBundle)initWithURL:(id)l
{
  v4 = MEMORY[0x1E69C55B8];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

  v7 = [(PRUISPosterSnapshotBundle *)self initWithUnderlyingSnapshotBundle:v6];
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

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  bundleURL = [(PRUISPosterSnapshotBundle *)self bundleURL];
  v5 = [v3 appendObject:bundleURL withName:@"bundleURL"];

  infoDictionary = [(PRUISPosterSnapshotBundle *)self infoDictionary];
  [v3 appendDictionarySection:infoDictionary withName:@"infoDictionary" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

- (NSArray)snapshotLevelSets
{
  snapshotLevelSets = [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle snapshotLevelSets];
  v3 = [snapshotLevelSets bs_mapNoNulls:&__block_literal_global_6];

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
  contentOcclusionRectangles = [(PUIPosterSnapshotBundle *)self->_underlyingSnapshotBundle contentOcclusionRectangles];
  if (contentOcclusionRectangles)
  {
    v3 = objc_alloc(MEMORY[0x1E69C52F8]);
    allRects = [contentOcclusionRectangles allRects];
    v5 = [v3 initWithNameToRectMap:allRects];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

+ (PRUISPosterSnapshotBundle)snapshotBundleWithPUIPosterSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [[self alloc] initWithUnderlyingSnapshotBundle:bundleCopy];

  return v5;
}

- (PRPosterSnapshotBundle)prPosterSnapshotBundle
{
  v2 = MEMORY[0x1E69C5330];
  underlyingSnapshotBundle = [(PRUISPosterSnapshotBundle *)self underlyingSnapshotBundle];
  v4 = [v2 snapshotBundleWithPUIPosterSnapshotBundle:underlyingSnapshotBundle];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy)
  {
    underlyingSnapshotBundle = [(PRUISPosterSnapshotBundle *)equalCopy underlyingSnapshotBundle];
    if (underlyingSnapshotBundle)
    {
      underlyingSnapshotBundle2 = [(PRUISPosterSnapshotBundle *)self underlyingSnapshotBundle];
      v8 = [underlyingSnapshotBundle2 isEqual:underlyingSnapshotBundle];
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