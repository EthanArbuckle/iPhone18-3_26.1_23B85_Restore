@interface PGMusicCurationAndFeatures
- (PGMusicCurationAndFeatures)initWithAppleMusicCuration:(id)a3 features:(id)a4;
- (PGMusicCurationAndFeatures)initWithFlexMusicCuration:(id)a3 features:(id)a4;
@end

@implementation PGMusicCurationAndFeatures

- (PGMusicCurationAndFeatures)initWithFlexMusicCuration:(id)a3 features:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGMusicCurationAndFeatures;
  v9 = [(PGMusicCurationAndFeatures *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flexMusicCuration, a3);
    objc_storeStrong(&v10->_features, a4);
  }

  return v10;
}

- (PGMusicCurationAndFeatures)initWithAppleMusicCuration:(id)a3 features:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGMusicCurationAndFeatures;
  v9 = [(PGMusicCurationAndFeatures *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleMusicCuration, a3);
    objc_storeStrong(&v10->_features, a4);
  }

  return v10;
}

@end