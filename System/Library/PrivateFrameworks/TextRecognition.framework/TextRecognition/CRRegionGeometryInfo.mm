@interface CRRegionGeometryInfo
- (CGSize)cachedSize;
- (CGVector)baselineVector;
- (id)initFromRegion:(id)region layoutDirection:(unint64_t)direction;
- (id)mutualGeometryInfoWith:(id)with;
@end

@implementation CRRegionGeometryInfo

- (id)initFromRegion:(id)region layoutDirection:(unint64_t)direction
{
  regionCopy = region;
  boundingQuad = [regionCopy boundingQuad];
  denormalizedQuad = [boundingQuad denormalizedQuad];
  [denormalizedQuad topLeft];
  v9 = v8;
  v11 = v10;
  boundingQuad2 = [regionCopy boundingQuad];
  denormalizedQuad2 = [boundingQuad2 denormalizedQuad];
  [denormalizedQuad2 topRight];
  v15 = v14;
  v17 = v16;
  boundingQuad3 = [regionCopy boundingQuad];
  denormalizedQuad3 = [boundingQuad3 denormalizedQuad];
  [denormalizedQuad3 bottomRight];
  v21 = v20;
  v23 = v22;
  boundingQuad4 = [regionCopy boundingQuad];

  denormalizedQuad4 = [boundingQuad4 denormalizedQuad];
  [denormalizedQuad4 bottomLeft];
  v40.receiver = self;
  v40.super_class = CRRegionGeometryInfo;
  v28 = [(CRImageSpaceQuad *)&v40 initWithTopLeft:v9 topRight:v11 bottomRight:v15 bottomLeft:v17, v21, v23, v26, v27];

  if (v28)
  {
    [(CRRegionGeometryInfo *)v28 setLayoutDirection:direction];
    v39.receiver = v28;
    v39.super_class = CRRegionGeometryInfo;
    [(CRImageSpaceQuad *)&v39 size];
    [(CRRegionGeometryInfo *)v28 setCachedSize:?];
    [(CRRegionGeometryInfo *)v28 size];
    [(CRRegionGeometryInfo *)v28 setEstimatedLineHeight:v29];
    [(CRImageSpaceQuad *)v28 bottomRight];
    v31 = v30;
    [(CRImageSpaceQuad *)v28 bottomLeft];
    v33 = v31 - v32;
    [(CRImageSpaceQuad *)v28 bottomRight];
    v35 = v34;
    [(CRImageSpaceQuad *)v28 bottomLeft];
    v28->_baselineVector.dx = v33;
    v28->_baselineVector.dy = v35 - v36;
  }

  return v28;
}

- (id)mutualGeometryInfoWith:(id)with
{
  withCopy = with;
  v5 = [[CRPairedRegionMutualGeometryInfo alloc] initFromGeometryInfo1:self geometryInfo2:withCopy];

  return v5;
}

- (CGSize)cachedSize
{
  objc_copyStruct(v4, &self->cachedSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGVector)baselineVector
{
  objc_copyStruct(v4, &self->_baselineVector, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

@end