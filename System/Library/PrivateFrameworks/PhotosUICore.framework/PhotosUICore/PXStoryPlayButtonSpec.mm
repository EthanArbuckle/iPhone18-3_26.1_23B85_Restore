@interface PXStoryPlayButtonSpec
- (PXExtendedTraitCollection)extendedTraitCollection;
- (PXStoryPlayButtonSpec)initWithChromeButtonSpec:(id)a3;
@end

@implementation PXStoryPlayButtonSpec

- (PXExtendedTraitCollection)extendedTraitCollection
{
  v2 = [(PXStoryPlayButtonSpec *)self chromeButtonSpec];
  v3 = [v2 extendedTraitCollection];

  return v3;
}

- (PXStoryPlayButtonSpec)initWithChromeButtonSpec:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPlayButtonSpec;
  v6 = [(PXStoryPlayButtonSpec *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chromeButtonSpec, a3);
    v7->_playButtonProgressIndicatorLineWidth = 2.0;
  }

  return v7;
}

@end