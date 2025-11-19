@interface PTAssetCinematicGlobals
- (PTAssetCinematicGlobals)initWithAssetReader:(id)a3;
- (void)_assignGlobalsFromAssetReader:(id)a3;
- (void)dealloc;
@end

@implementation PTAssetCinematicGlobals

- (PTAssetCinematicGlobals)initWithAssetReader:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PTAssetCinematicGlobals;
  v5 = [(PTAssetCinematicGlobals *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PTAssetCinematicGlobals *)v5 _assignGlobalsFromAssetReader:v4];
  }

  return v6;
}

- (void)_assignGlobalsFromAssetReader:(id)a3
{
  v4 = a3;
  v5 = [v4 globalCinematographyMetadata];
  globalCinematographyMetadata = self->_globalCinematographyMetadata;
  self->_globalCinematographyMetadata = v5;

  v7 = [v4 globalRenderingMetadata];
  globalRenderingMetadata = self->_globalRenderingMetadata;
  self->_globalRenderingMetadata = v7;

  v9 = [v4 globalStabilizationMetadata];
  globalStabilizationMetadata = self->_globalStabilizationMetadata;
  self->_globalStabilizationMetadata = v9;

  v11 = [v4 globalVideoHeaderMetadata];
  globalVideoHeaderMetadata = self->_globalVideoHeaderMetadata;
  self->_globalVideoHeaderMetadata = v11;

  v13 = [v4 colorPrimaries];
  colorPrimaries = self->_colorPrimaries;
  self->_colorPrimaries = v13;

  v15 = [v4 transferFunction];
  transferFunction = self->_transferFunction;
  self->_transferFunction = v15;

  v17 = [v4 YCbCrMatrix];
  YCbCrMatrix = self->_YCbCrMatrix;
  self->_YCbCrMatrix = v17;

  self->_estimatedDataRate = [v4 estimatedDataRate];
  v19 = [v4 formatDescription];
  self->_formatDescription = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  if (v4)
  {
    [v4 frameDuration];
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
  }

  *&self->_frameDuration.value = v20;
  self->_frameDuration.epoch = v21;
}

- (void)dealloc
{
  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  v4.receiver = self;
  v4.super_class = PTAssetCinematicGlobals;
  [(PTAssetCinematicGlobals *)&v4 dealloc];
}

@end