@interface PXStoryExportVideoOptions
- (CGSize)resolution;
- (CGSize)resolutionInPixels;
- (PXStoryExportVideoOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXStoryExportVideoOptions

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)resolutionInPixels
{
  [(PXStoryExportVideoOptions *)self scale];
  [(PXStoryExportVideoOptions *)self resolution];
  PXSizeScale();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 5) = self->_frameRate;
  *(v4 + 56) = self->_resolution;
  *(v4 + 3) = *&self->_scale;
  *(v4 + 6) = self->_codec;
  v4[8] = self->_prefersExportLayoutMatchesPlayback;
  objc_storeStrong(v4 + 2, self->_fullSizePlayerExtendedTraitCollectionSnapshot);
  v5 = [(NSNumber *)self->_averageBitratePerSecond copy];
  v6 = *(v4 + 4);
  *(v4 + 4) = v5;

  return v4;
}

- (PXStoryExportVideoOptions)init
{
  v3.receiver = self;
  v3.super_class = PXStoryExportVideoOptions;
  result = [(PXStoryExportVideoOptions *)&v3 init];
  if (result)
  {
    result->_resolution = xmmword_1A5380E30;
    result->_scale = 1.0;
    *&result->_frameRate = xmmword_1A5380E40;
  }

  return result;
}

@end