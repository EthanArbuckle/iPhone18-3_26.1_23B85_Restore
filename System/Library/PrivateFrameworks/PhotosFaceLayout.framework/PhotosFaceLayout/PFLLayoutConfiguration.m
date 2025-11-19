@interface PFLLayoutConfiguration
- (CGRect)acceptableCropRect;
- (CGRect)preferredCropRect;
- (CGRect)timeRect;
- (CGRect)timeRectInAsset;
- (CGRect)visibleRect;
- (CGSize)assetSize;
- (PFLLayoutConfiguration)initWithAsset:(id)a3 timePosition:(unint64_t)a4 segmentationData:(id)a5 coreLayout:(id)a6;
- (id)description;
- (void)dealloc;
@end

@implementation PFLLayoutConfiguration

- (PFLLayoutConfiguration)initWithAsset:(id)a3 timePosition:(unint64_t)a4 segmentationData:(id)a5 coreLayout:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v56.receiver = self;
  v56.super_class = PFLLayoutConfiguration;
  v13 = [(PFLLayoutConfiguration *)&v56 init];
  if (v13)
  {
    v14 = [v10 localIdentifier];
    assetId = v13->_assetId;
    v13->_assetId = v14;

    v16 = [v11 segmentationBuffer];
    v13->_foregroundMask = v16;
    CVPixelBufferRetain(v16);
    v13->_maskIsInverted = ([v11 classification] - 3) < 2;
    v17 = [v10 pixelWidth];
    v18 = [v10 pixelHeight];
    v13->_assetSize.width = v17;
    v13->_assetSize.height = v18;
    [v12 visibleRect];
    v13->_visibleRect.origin.x = v19;
    v13->_visibleRect.origin.y = v20;
    v13->_visibleRect.size.width = v21;
    v13->_visibleRect.size.height = v22;
    v13->_timePosition = a4;
    PFCRectForTimePosition();
    v13->_timeRect.origin.x = v23;
    v13->_timeRect.origin.y = v24;
    v13->_timeRect.size.width = v25;
    v13->_timeRect.size.height = v26;
    v27 = [v11 colorAnalysis];
    colorAnalysis = v13->_colorAnalysis;
    v13->_colorAnalysis = v27;

    [v12 cropScore];
    v13->_cropScore = v29;
    [v12 layoutScore];
    v13->_layoutScore = v30;
    v13->_usesMask = [v12 usesMask];
    v31 = [v11 regions];
    v32 = [v31 faceRegions];
    v33 = flipYNormalizedRects(v32);
    faceRects = v13->_faceRects;
    v13->_faceRects = v33;

    v35 = [v31 petRegions];
    v36 = flipYNormalizedRects(v35);
    petRects = v13->_petRects;
    v13->_petRects = v36;

    [v31 acceptableCropRect];
    v13->_acceptableCropRect.origin.x = flipYNormalizedRect(v38, v39, v40, v41);
    v13->_acceptableCropRect.origin.y = v42;
    v13->_acceptableCropRect.size.width = v43;
    v13->_acceptableCropRect.size.height = v44;
    [v31 preferredCropRect];
    v13->_preferredCropRect.origin.x = flipYNormalizedRect(v45, v46, v47, v48);
    v13->_preferredCropRect.origin.y = v49;
    v13->_preferredCropRect.size.width = v50;
    v13->_preferredCropRect.size.height = v51;
    v13->_timeRectInAsset.origin.x = renormalizeRect(v13->_timeRect.origin.x, v13->_timeRect.origin.y, v13->_timeRect.size.width, v13->_timeRect.size.height, v13->_visibleRect.origin.x, v13->_visibleRect.origin.y, v13->_visibleRect.size.width, v13->_visibleRect.size.height);
    v13->_timeRectInAsset.origin.y = v52;
    v13->_timeRectInAsset.size.width = v53;
    v13->_timeRectInAsset.size.height = v54;
  }

  return v13;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_foregroundMask);
  v3.receiver = self;
  v3.super_class = PFLLayoutConfiguration;
  [(PFLLayoutConfiguration *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  assetId = self->_assetId;
  width = self->_assetSize.width;
  height = self->_assetSize.height;
  v7 = _rectAsString(self->_visibleRect.origin.x, self->_visibleRect.origin.y, self->_visibleRect.size.width, self->_visibleRect.size.height);
  v8 = v7;
  if (self->_usesMask)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  v10 = [v3 stringWithFormat:@"[PFLLayoutConfiguration asset:%@, assetSize:%ldx%ld, visbleRect:%@, timePosition:%ld, score:%.3f, usesMask:%s]", assetId, width, height, v7, self->_timePosition, *&self->_cropScore, v9];

  return v10;
}

- (CGSize)assetSize
{
  width = self->_assetSize.width;
  height = self->_assetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)timeRect
{
  x = self->_timeRect.origin.x;
  y = self->_timeRect.origin.y;
  width = self->_timeRect.size.width;
  height = self->_timeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)acceptableCropRect
{
  x = self->_acceptableCropRect.origin.x;
  y = self->_acceptableCropRect.origin.y;
  width = self->_acceptableCropRect.size.width;
  height = self->_acceptableCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->_preferredCropRect.origin.x;
  y = self->_preferredCropRect.origin.y;
  width = self->_preferredCropRect.size.width;
  height = self->_preferredCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)timeRectInAsset
{
  x = self->_timeRectInAsset.origin.x;
  y = self->_timeRectInAsset.origin.y;
  width = self->_timeRectInAsset.size.width;
  height = self->_timeRectInAsset.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end