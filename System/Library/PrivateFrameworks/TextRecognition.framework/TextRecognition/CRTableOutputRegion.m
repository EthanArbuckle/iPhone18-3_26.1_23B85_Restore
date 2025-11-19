@interface CRTableOutputRegion
- (CRTableOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5;
- (CRTableOutputRegion)initWithCells:(id)a3 quad:(id)a4 rowQuads:(id)a5 colQuads:(id)a6;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)crCodableDataRepresentation;
@end

@implementation CRTableOutputRegion

- (CRTableOutputRegion)initWithCells:(id)a3 quad:(id)a4 rowQuads:(id)a5 colQuads:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CROutputRegion *)self init];
  if (v14)
  {
    if ([v10 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = v10;
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

    [v11 baselineAngle];
    [(CROutputRegion *)v14 setBaselineAngle:?];
    [(CROutputRegion *)v14 setBoundingQuad:v11];
    [(CROutputRegion *)v14 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v14 setShouldComputeTranscriptFromChildren:1];
    [(CRTableOutputRegion *)v14 setRowQuads:v12];
    [(CRTableOutputRegion *)v14 setColQuads:v13];
  }

  return v14;
}

- (CRTableOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = CRTableOutputRegion;
  v9 = [(CROutputRegion *)&v13 initWithCRCodableDataRepresentation:v8 version:a4 offset:a5];
  if (v9)
  {
    if (a4 >= 3)
    {
      [CRCodingUtilities integerFromEncodingData:v8 offset:a5];
    }

    v10 = [CRCodingUtilities arrayFromEncodingData:v8 offset:a5 objectProviderBlock:&__block_literal_global_28];
    [(CRTableOutputRegion *)v9 setRowQuads:v10];

    v11 = [CRCodingUtilities arrayFromEncodingData:v8 offset:a5 objectProviderBlock:&__block_literal_global_3_0];
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
  v4 = [(CROutputRegion *)&v9 crCodableDataRepresentation];
  v5 = [v3 dataWithData:v4];

  [CRCodingUtilities appendInteger:1 toData:v5];
  v6 = [(CRTableOutputRegion *)self rowQuads];
  [CRCodingUtilities appendCodable:v6 toData:v5];

  v7 = [(CRTableOutputRegion *)self colQuads];
  [CRCodingUtilities appendCodable:v7 toData:v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v6 = a6;
  v16.receiver = self;
  v16.super_class = CRTableOutputRegion;
  v8 = [(CROutputRegion *)&v16 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:?];
  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  v10 = [(CRTableOutputRegion *)self rowQuads];
  v11 = [v9 initWithArray:v10 copyItems:v6];
  [v8 setRowQuads:v11];

  v12 = objc_alloc(MEMORY[0x1E695DEC8]);
  v13 = [(CRTableOutputRegion *)self colQuads];
  v14 = [v12 initWithArray:v13 copyItems:v6];
  [v8 setColQuads:v14];

  return v8;
}

@end