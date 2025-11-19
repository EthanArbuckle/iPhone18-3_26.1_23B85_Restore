@interface PTCinematographyRefinementOptions
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)rackFocusPullTime;
- (PTCinematographyRefinementOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setGlobalMetadata:(id)a3;
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

- (void)setGlobalMetadata:(id)a3
{
  v4 = a3;
  v5 = [[PTCinematographyFocusFramesOptions alloc] initWithGlobalMetadata:v4];
  focusFramesOptions = self->_focusFramesOptions;
  self->_focusFramesOptions = v5;

  v7 = [v4 copy];
  globalMetadata = self->_globalMetadata;
  self->_globalMetadata = v7;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)rackFocusPullTime
{
  v4 = [(PTCinematographyRefinementOptions *)self focusFramesOptions];
  if (v4)
  {
    v6 = v4;
    [v4 maximumRackFocusPullTime];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(PTCinematographyRefinementOptions *)self focusFramesOptions];
  v6 = [v5 copy];
  [v4 setFocusFramesOptions:v6];

  v7 = [(PTCinematographyRefinementOptions *)self globalMetadata];
  v8 = [v7 copy];
  [v4 setGlobalMetadata:v8];

  [v4 setDisableDetectionSmoothing:{-[PTCinematographyRefinementOptions disableDetectionSmoothing](self, "disableDetectionSmoothing")}];
  return v4;
}

@end