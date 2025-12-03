@interface CRTableOutputRegion
- (CRTableOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (CRTableOutputRegion)initWithCells:(id)cells quad:(id)quad rowQuads:(id)quads colQuads:(id)colQuads;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
@end

@implementation CRTableOutputRegion

- (CRTableOutputRegion)initWithCells:(id)cells quad:(id)quad rowQuads:(id)quads colQuads:(id)colQuads
{
  v27 = *MEMORY[0x1E69E9840];
  cellsCopy = cells;
  quadCopy = quad;
  quadsCopy = quads;
  colQuadsCopy = colQuads;
  v14 = [(CROutputRegion *)self init];
  if (v14)
  {
    if ([cellsCopy count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = cellsCopy;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        v19 = 0.0;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v19 = v19 + [*(*(&v22 + 1) + 8 * i) confidence];
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v17);
      }

      else
      {
        v19 = 0.0;
      }

      -[CROutputRegion setConfidence:](v14, "setConfidence:", (v19 / [v15 count]));
      [(CROutputRegion *)v14 setChildren:v15];
    }

    [quadCopy baselineAngle];
    [(CROutputRegion *)v14 setBaselineAngle:?];
    [(CROutputRegion *)v14 setBoundingQuad:quadCopy];
    [(CROutputRegion *)v14 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v14 setShouldComputeTranscriptFromChildren:1];
    [(CRTableOutputRegion *)v14 setRowQuads:quadsCopy];
    [(CRTableOutputRegion *)v14 setColQuads:colQuadsCopy];
  }

  return v14;
}

- (CRTableOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = CRTableOutputRegion;
  v9 = [(CROutputRegion *)&v13 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v9)
  {
    if (version >= 3)
    {
      [CRCodingUtilities integerFromEncodingData:representationCopy offset:offset];
    }

    v10 = [CRCodingUtilities arrayFromEncodingData:representationCopy offset:offset objectProviderBlock:&__block_literal_global_28];
    [(CRTableOutputRegion *)v9 setRowQuads:v10];

    v11 = [CRCodingUtilities arrayFromEncodingData:representationCopy offset:offset objectProviderBlock:&__block_literal_global_3_0];
    [(CRTableOutputRegion *)v9 setColQuads:v11];
  }

  return v9;
}

CRNormalizedQuad *__74__CRTableOutputRegion_initWithCRCodableDataRepresentation_version_offset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRNormalizedQuad alloc] initWithCRCodableDataRepresentation:v2];

  return v3;
}

CRNormalizedQuad *__74__CRTableOutputRegion_initWithCRCodableDataRepresentation_version_offset___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRNormalizedQuad alloc] initWithCRCodableDataRepresentation:v2];

  return v3;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v9.receiver = self;
  v9.super_class = CRTableOutputRegion;
  crCodableDataRepresentation = [(CROutputRegion *)&v9 crCodableDataRepresentation];
  v5 = [v3 dataWithData:crCodableDataRepresentation];

  [CRCodingUtilities appendInteger:1 toData:v5];
  rowQuads = [(CRTableOutputRegion *)self rowQuads];
  [CRCodingUtilities appendCodable:rowQuads toData:v5];

  colQuads = [(CRTableOutputRegion *)self colQuads];
  [CRCodingUtilities appendCodable:colQuads toData:v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  copyCopy = copy;
  v16.receiver = self;
  v16.super_class = CRTableOutputRegion;
  v8 = [(CROutputRegion *)&v16 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:?];
  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  rowQuads = [(CRTableOutputRegion *)self rowQuads];
  v11 = [v9 initWithArray:rowQuads copyItems:copyCopy];
  [v8 setRowQuads:v11];

  v12 = objc_alloc(MEMORY[0x1E695DEC8]);
  colQuads = [(CRTableOutputRegion *)self colQuads];
  v14 = [v12 initWithArray:colQuads copyItems:copyCopy];
  [v8 setColQuads:v14];

  return v8;
}

@end