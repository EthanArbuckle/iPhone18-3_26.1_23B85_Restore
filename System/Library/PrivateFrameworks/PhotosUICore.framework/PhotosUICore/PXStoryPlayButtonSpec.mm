@interface PXStoryPlayButtonSpec
- (PXExtendedTraitCollection)extendedTraitCollection;
- (PXStoryPlayButtonSpec)initWithChromeButtonSpec:(id)spec;
@end

@implementation PXStoryPlayButtonSpec

- (PXExtendedTraitCollection)extendedTraitCollection
{
  chromeButtonSpec = [(PXStoryPlayButtonSpec *)self chromeButtonSpec];
  extendedTraitCollection = [chromeButtonSpec extendedTraitCollection];

  return extendedTraitCollection;
}

- (PXStoryPlayButtonSpec)initWithChromeButtonSpec:(id)spec
{
  specCopy = spec;
  v9.receiver = self;
  v9.super_class = PXStoryPlayButtonSpec;
  v6 = [(PXStoryPlayButtonSpec *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chromeButtonSpec, spec);
    v7->_playButtonProgressIndicatorLineWidth = 2.0;
  }

  return v7;
}

@end