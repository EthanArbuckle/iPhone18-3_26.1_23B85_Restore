@interface CRTrackedDocumentOutputRegion
+ (CRBlockOutputRegion)_blockFromRegion:(uint64_t)a3 trackedType:;
+ (CRBlockOutputRegion)_blockFromTrackedRegionGroup:(uint64_t)a3 trackedType:;
+ (id)documentWithTrackedRegionGroups:(id)a3;
+ (id)documentWithTrackedRegions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
@end

@implementation CRTrackedDocumentOutputRegion

+ (CRBlockOutputRegion)_blockFromTrackedRegionGroup:(uint64_t)a3 trackedType:
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_self();
  v4 = [MEMORY[0x1E696AD60] string];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = v3;
  v6 = [v3 children];
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v45;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        v15 = [v14 numberOfLines];
        [v14 baselineAngle];
        v17 = v16;
        if (v11 == 0.0)
        {
          v12 = v16;
        }

        else
        {
          v18 = __sincos_stret(v12);
          v19 = __sincos_stret(v17);
          v12 = atan2(v19.__sinval + v18.__sinval * v11, v19.__cosval + v18.__cosval * v11);
        }

        if ([v4 length])
        {
          if ([v5 isInlineGroup])
          {
            v20 = @" ";
          }

          else
          {
            v20 = @"\n";
          }

          [v4 appendString:v20];
        }

        v9 += v15;
        v21 = [v14 text];
        [v4 appendString:v21];

        v11 = v11 + 1.0;
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v12 = 0.0;
  }

  v22 = [CRBlockOutputRegion alloc];
  v23 = [v5 children];
  v24 = [v23 firstObject];
  v25 = -[CROutputRegion initWithConfidence:baselineAngle:](v22, "initWithConfidence:baselineAngle:", [v24 confidence], v12);

  [(CRCompositeOutputRegion *)v25 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v25 setShouldComputeParagraphsFromChildren:0];
  [(CROutputRegion *)v25 setShouldComputeTranscriptFromChildren:0];
  [(CROutputRegion *)v25 setNumberOfLines:v9];
  -[CROutputRegion setTextAlignment:](v25, "setTextAlignment:", [v5 textAlignment]);
  -[CROutputRegion setLayoutDirection:](v25, "setLayoutDirection:", [v5 layoutDirection]);
  [(CROutputRegion *)v25 setText:v4];
  v26 = [v5 boundingQuad];
  [(CROutputRegion *)v25 setBoundingQuad:v26];

  v27 = [v5 originalBoundingQuad];
  [(CROutputRegion *)v25 setOriginalBoundingQuad:v27];

  [v5 boundingQuadHomography];
  [(CROutputRegion *)v25 setBoundingQuadHomography:?];
  v28 = [v5 trackingID];
  [(CROutputRegion *)v25 setTrackingID:v28];

  v29 = MEMORY[0x1E696AD98];
  v30 = [v5 vcQuad];
  v31 = [v29 numberWithInt:{objc_msgSend(v30, "homographyGroupID")}];
  [(CROutputRegion *)v25 setHomographyGroupID:v31];

  if (a3 == 4)
  {
    [(CROutputRegion *)v25 setChildren:MEMORY[0x1E695E0F0]];
    v32 = [v5 children];
    [(CROutputRegion *)v25 setParagraphRegions:v32];

    [(CROutputRegion *)v25 setNumberOfLines:0];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = [v5 children];
    v34 = [v33 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v41;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v41 != v36)
          {
            objc_enumerationMutation(v33);
          }

          -[CROutputRegion setNumberOfLines:](v25, "setNumberOfLines:", -[CROutputRegion numberOfLines](v25, "numberOfLines") + [*(*(&v40 + 1) + 8 * j) numberOfLines]);
        }

        v35 = [v33 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v35);
    }
  }

  else
  {
    v33 = [v5 children];
    [(CROutputRegion *)v25 setChildren:v33];
  }

  return v25;
}

+ (CRBlockOutputRegion)_blockFromRegion:(uint64_t)a3 trackedType:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v5 = [CRBlockOutputRegion alloc];
  v6 = [v4 confidence];
  [v4 baselineAngle];
  v7 = [(CROutputRegion *)v5 initWithConfidence:v6 baselineAngle:?];
  [(CRCompositeOutputRegion *)v7 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v7 setShouldComputeParagraphsFromChildren:0];
  [(CROutputRegion *)v7 setShouldComputeTranscriptFromChildren:0];
  v8 = [v4 children];
  [(CROutputRegion *)v7 setChildren:v8];

  -[CROutputRegion setNumberOfLines:](v7, "setNumberOfLines:", [v4 numberOfLines]);
  -[CROutputRegion setTextAlignment:](v7, "setTextAlignment:", [v4 textAlignment]);
  -[CROutputRegion setLayoutDirection:](v7, "setLayoutDirection:", [v4 layoutDirection]);
  v9 = [v4 text];
  [(CROutputRegion *)v7 setText:v9];

  v10 = [v4 boundingQuad];
  [(CROutputRegion *)v7 setBoundingQuad:v10];

  v11 = [v4 originalBoundingQuad];
  [(CROutputRegion *)v7 setOriginalBoundingQuad:v11];

  [v4 boundingQuadHomography];
  [(CROutputRegion *)v7 setBoundingQuadHomography:?];
  v12 = [v4 trackingID];
  [(CROutputRegion *)v7 setTrackingID:v12];

  if (a3 == 4)
  {
    v15[0] = v4;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(CROutputRegion *)v7 setParagraphRegions:v13];
  }

  return v7;
}

+ (id)documentWithTrackedRegionGroups:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CROutputRegion *)[CRTrackedDocumentOutputRegion alloc] initWithConfidence:2 baselineAngle:0.0];
  v6 = [v4 firstObject];
  v7 = [v6 children];
  v8 = [v7 firstObject];
  v9 = [v8 type];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(CRTrackedDocumentOutputRegion *)a1 _blockFromTrackedRegionGroup:v9 trackedType:?];
        [v10 addObject:{v16, v18}];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [(CRDocumentOutputRegion *)v5 setChildren:v10];

  return v5;
}

+ (id)documentWithTrackedRegions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CROutputRegion *)[CRTrackedDocumentOutputRegion alloc] initWithConfidence:2 baselineAngle:0.0];
  v6 = [v4 firstObject];
  v7 = [v6 type];

  if (v7 == 8 || ([(CROutputRegion *)v5 setShouldComputeParagraphsFromChildren:0], v7 != 2))
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(CRTrackedDocumentOutputRegion *)a1 _blockFromRegion:v7 trackedType:?];
          [v9 addObject:{v15, v17}];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v8 = [v9 copy];
    [(CRDocumentOutputRegion *)v5 setChildren:v8];
    if (v7 == 4)
    {
      [(CROutputRegion *)v5 setParagraphRegions:v10];
    }
  }

  else
  {
    v8 = v4;
    [(CRDocumentOutputRegion *)v5 setChildren:v8];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v6 = a4;
  v25.receiver = self;
  v25.super_class = CRTrackedDocumentOutputRegion;
  v8 = [(CRDocumentOutputRegion *)&v25 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:a6];
  if (v6)
  {
    v9 = [(CROutputRegion *)self paragraphRegions];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v8 contentsWithTypes:4];
      v12 = [v11 count];
      v13 = [(CROutputRegion *)self paragraphRegions];
      v14 = [v13 count];

      if (v12 == v14)
      {
        v15 = [(CROutputRegion *)self paragraphRegions];
        v16 = [v15 count];

        if (v16)
        {
          v17 = 0;
          do
          {
            v18 = [(CROutputRegion *)self paragraphRegions];
            v19 = [v18 objectAtIndexedSubscript:v17];
            v20 = [v19 trackingID];
            v21 = [v11 objectAtIndexedSubscript:v17];
            [v21 setTrackingID:v20];

            ++v17;
            v22 = [(CROutputRegion *)self paragraphRegions];
            v23 = [v22 count];
          }

          while (v23 > v17);
        }
      }
    }
  }

  return v8;
}

@end