@interface PIPosterLayoutRequest
- (CGRect)normalizedLayoutBounds;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation PIPosterLayoutRequest

- (CGRect)normalizedLayoutBounds
{
  x = self->_normalizedLayoutBounds.origin.x;
  y = self->_normalizedLayoutBounds.origin.y;
  width = self->_normalizedLayoutBounds.size.width;
  height = self->_normalizedLayoutBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)newRenderJob
{
  v3 = [_PIPosterLayoutJob alloc];

  return [(_PIPosterLayoutJob *)v3 initWithPosterLayoutRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23.receiver = self;
  v23.super_class = PIPosterLayoutRequest;
  v4 = [(NURenderRequest *)&v23 copyWithZone:a3];
  if (v4)
  {
    v5 = [(PIPosterLayoutRequest *)self layoutConfiguration];
    v6 = v4[21];
    v4[21] = v5;

    v7 = [(PIPosterLayoutRequest *)self layoutRegions];
    v8 = v4[22];
    v4[22] = v7;

    v9 = [(PIPosterLayoutRequest *)self segmentationMatte];
    v10 = v4[23];
    v4[23] = v9;

    v11 = [(PIPosterLayoutRequest *)self segmentationConfidenceMap];
    v12 = v4[24];
    v4[24] = v11;

    v4[25] = [(PIPosterLayoutRequest *)self segmentationClassification];
    *(v4 + 160) = [(PIPosterLayoutRequest *)self shouldConstrainLayoutToBounds];
    *(v4 + 161) = [(PIPosterLayoutRequest *)self hasSettlingEffect];
    [(PIPosterLayoutRequest *)self normalizedLayoutBounds];
    v4[31] = v13;
    v4[32] = v14;
    v4[33] = v15;
    v4[34] = v16;
    *(v4 + 162) = [(PIPosterLayoutRequest *)self shouldComputeAllScores];
    *(v4 + 163) = [(PIPosterLayoutRequest *)self shouldConsiderHeadroom];
    v17 = [(PIPosterLayoutRequest *)self layoutProvider];
    v18 = v4[29];
    v4[29] = v17;

    v4[27] = [(PIPosterLayoutRequest *)self allowedLayoutStrategies];
    *(v4 + 164) = [(PIPosterLayoutRequest *)self shouldComputeSpatialLayout];
    [(PIPosterLayoutRequest *)self spatialPadding];
    v4[26] = v19;
    v20 = [(PIPosterLayoutRequest *)self allowedClockStretch];
    v21 = v4[28];
    v4[28] = v20;

    v4[30] = [(PIPosterLayoutRequest *)self role];
  }

  return v4;
}

- (void)_commonInit
{
  v4.receiver = self;
  v4.super_class = PIPosterLayoutRequest;
  [(NURenderRequest *)&v4 _commonInit];
  v3 = *(MEMORY[0x1E695F050] + 16);
  self->_normalizedLayoutBounds.origin = *MEMORY[0x1E695F050];
  self->_normalizedLayoutBounds.size = v3;
  self->_shouldComputeAllScores = 1;
  self->_allowedLayoutStrategies = 3;
  self->_shouldConsiderHeadroom = 1;
}

@end