@interface PGMusicCurationAndFeatures
- (PGMusicCurationAndFeatures)initWithAppleMusicCuration:(id)curation features:(id)features;
- (PGMusicCurationAndFeatures)initWithFlexMusicCuration:(id)curation features:(id)features;
@end

@implementation PGMusicCurationAndFeatures

- (PGMusicCurationAndFeatures)initWithFlexMusicCuration:(id)curation features:(id)features
{
  curationCopy = curation;
  featuresCopy = features;
  v12.receiver = self;
  v12.super_class = PGMusicCurationAndFeatures;
  v9 = [(PGMusicCurationAndFeatures *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flexMusicCuration, curation);
    objc_storeStrong(&v10->_features, features);
  }

  return v10;
}

- (PGMusicCurationAndFeatures)initWithAppleMusicCuration:(id)curation features:(id)features
{
  curationCopy = curation;
  featuresCopy = features;
  v12.receiver = self;
  v12.super_class = PGMusicCurationAndFeatures;
  v9 = [(PGMusicCurationAndFeatures *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleMusicCuration, curation);
    objc_storeStrong(&v10->_features, features);
  }

  return v10;
}

@end