@interface PTCinematographyRefinementOptions
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)rackFocusPullTime;
- (PTCinematographyRefinementOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setGlobalMetadata:(id)metadata;
@end

@implementation PTCinematographyRefinementOptions

- (PTCinematographyRefinementOptions)init
{
  v6.receiver = self;
  v6.super_class = PTCinematographyRefinementOptions;
  v2 = [(PTCinematographyRefinementOptions *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PTCinematographyFocusFramesOptions);
    focusFramesOptions = v2->_focusFramesOptions;
    v2->_focusFramesOptions = v3;
  }

  return v2;
}

- (void)setGlobalMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[PTCinematographyFocusFramesOptions alloc] initWithGlobalMetadata:metadataCopy];
  focusFramesOptions = self->_focusFramesOptions;
  self->_focusFramesOptions = v5;

  v7 = [metadataCopy copy];
  globalMetadata = self->_globalMetadata;
  self->_globalMetadata = v7;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)rackFocusPullTime
{
  focusFramesOptions = [(PTCinematographyRefinementOptions *)self focusFramesOptions];
  if (focusFramesOptions)
  {
    v6 = focusFramesOptions;
    [focusFramesOptions maximumRackFocusPullTime];
    focusFramesOptions = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  focusFramesOptions = [(PTCinematographyRefinementOptions *)self focusFramesOptions];
  v6 = [focusFramesOptions copy];
  [v4 setFocusFramesOptions:v6];

  globalMetadata = [(PTCinematographyRefinementOptions *)self globalMetadata];
  v8 = [globalMetadata copy];
  [v4 setGlobalMetadata:v8];

  [v4 setDisableDetectionSmoothing:{-[PTCinematographyRefinementOptions disableDetectionSmoothing](self, "disableDetectionSmoothing")}];
  return v4;
}

@end