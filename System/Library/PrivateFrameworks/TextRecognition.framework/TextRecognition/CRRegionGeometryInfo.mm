@interface CRRegionGeometryInfo
- (CGSize)cachedSize;
- (CGVector)baselineVector;
- (id)initFromRegion:(id)a3 layoutDirection:(unint64_t)a4;
- (id)mutualGeometryInfoWith:(id)a3;
@end

@implementation CRRegionGeometryInfo

- (id)initFromRegion:(id)a3 layoutDirection:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 boundingQuad];
  v7 = [v6 denormalizedQuad];
  [v7 topLeft];
  v9 = v8;
  v11 = v10;
  v12 = [v5 boundingQuad];
  v13 = [v12 denormalizedQuad];
  [v13 topRight];
  v15 = v14;
  v17 = v16;
  v18 = [v5 boundingQuad];
  v19 = [v18 denormalizedQuad];
  [v19 bottomRight];
  v21 = v20;
  v23 = v22;
  v24 = [v5 boundingQuad];

  v25 = [v24 denormalizedQuad];
  [v25 bottomLeft];
  v40.receiver = self;
  v40.super_class = CRRegionGeometryInfo;
  v28 = [(CRImageSpaceQuad *)&v40 initWithTopLeft:v9 topRight:v11 bottomRight:v15 bottomLeft:v17, v21, v23, v26, v27];

  if (v28)
  {
    [(CRRegionGeometryInfo *)v28 setLayoutDirection:a4];
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

- (id)mutualGeometryInfoWith:(id)a3
{
  v4 = a3;
  v5 = [[CRPairedRegionMutualGeometryInfo alloc] initFromGeometryInfo1:self geometryInfo2:v4];

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