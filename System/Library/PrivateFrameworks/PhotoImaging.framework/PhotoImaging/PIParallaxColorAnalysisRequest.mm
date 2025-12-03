@interface PIParallaxColorAnalysisRequest
- (CGRect)normalizedClipRect;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation PIParallaxColorAnalysisRequest

- (CGRect)normalizedClipRect
{
  x = self->_normalizedClipRect.origin.x;
  y = self->_normalizedClipRect.origin.y;
  width = self->_normalizedClipRect.size.width;
  height = self->_normalizedClipRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)newRenderJob
{
  v3 = [_PIParallaxColorAnalysisJob alloc];

  return [(_PIParallaxColorAnalysisJob *)v3 initWithParallaxColorAnalysisRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = PIParallaxColorAnalysisRequest;
  v4 = [(NURenderRequest *)&v14 copyWithZone:zone];
  if (v4)
  {
    segmentationMatte = [(PIParallaxColorAnalysisRequest *)self segmentationMatte];
    v6 = v4[21];
    v4[21] = segmentationMatte;

    *(v4 + 160) = [(PIParallaxColorAnalysisRequest *)self analyzeBackground];
    *(v4 + 161) = [(PIParallaxColorAnalysisRequest *)self analyzeHeadroom];
    [(PIParallaxColorAnalysisRequest *)self normalizedClipRect];
    v4[25] = v7;
    v4[26] = v8;
    v4[27] = v9;
    v4[28] = v10;
    v4[22] = [(PIParallaxColorAnalysisRequest *)self maxDominantColors];
    [(PIParallaxColorAnalysisRequest *)self dominanceThreshold];
    v4[23] = v11;
    [(PIParallaxColorAnalysisRequest *)self chromaThreshold];
    v4[24] = v12;
  }

  return v4;
}

- (void)_commonInit
{
  v3.receiver = self;
  v3.super_class = PIParallaxColorAnalysisRequest;
  [(NURenderRequest *)&v3 _commonInit];
  [(PIParallaxColorAnalysisRequest *)self setMaxDominantColors:3];
  [(PIParallaxColorAnalysisRequest *)self setDominanceThreshold:0.01];
  [(PIParallaxColorAnalysisRequest *)self setChromaThreshold:0.0375000015];
}

@end