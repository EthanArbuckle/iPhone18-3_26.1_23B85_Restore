@interface PTAssetCinematicGlobals
- (PTAssetCinematicGlobals)initWithAssetReader:(id)reader;
- (void)_assignGlobalsFromAssetReader:(id)reader;
- (void)dealloc;
@end

@implementation PTAssetCinematicGlobals

- (PTAssetCinematicGlobals)initWithAssetReader:(id)reader
{
  readerCopy = reader;
  v8.receiver = self;
  v8.super_class = PTAssetCinematicGlobals;
  v5 = [(PTAssetCinematicGlobals *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PTAssetCinematicGlobals *)v5 _assignGlobalsFromAssetReader:readerCopy];
  }

  return v6;
}

- (void)_assignGlobalsFromAssetReader:(id)reader
{
  readerCopy = reader;
  globalCinematographyMetadata = [readerCopy globalCinematographyMetadata];
  globalCinematographyMetadata = self->_globalCinematographyMetadata;
  self->_globalCinematographyMetadata = globalCinematographyMetadata;

  globalRenderingMetadata = [readerCopy globalRenderingMetadata];
  globalRenderingMetadata = self->_globalRenderingMetadata;
  self->_globalRenderingMetadata = globalRenderingMetadata;

  globalStabilizationMetadata = [readerCopy globalStabilizationMetadata];
  globalStabilizationMetadata = self->_globalStabilizationMetadata;
  self->_globalStabilizationMetadata = globalStabilizationMetadata;

  globalVideoHeaderMetadata = [readerCopy globalVideoHeaderMetadata];
  globalVideoHeaderMetadata = self->_globalVideoHeaderMetadata;
  self->_globalVideoHeaderMetadata = globalVideoHeaderMetadata;

  colorPrimaries = [readerCopy colorPrimaries];
  colorPrimaries = self->_colorPrimaries;
  self->_colorPrimaries = colorPrimaries;

  transferFunction = [readerCopy transferFunction];
  transferFunction = self->_transferFunction;
  self->_transferFunction = transferFunction;

  yCbCrMatrix = [readerCopy YCbCrMatrix];
  YCbCrMatrix = self->_YCbCrMatrix;
  self->_YCbCrMatrix = yCbCrMatrix;

  self->_estimatedDataRate = [readerCopy estimatedDataRate];
  formatDescription = [readerCopy formatDescription];
  self->_formatDescription = formatDescription;
  if (formatDescription)
  {
    CFRetain(formatDescription);
  }

  if (readerCopy)
  {
    [readerCopy frameDuration];
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