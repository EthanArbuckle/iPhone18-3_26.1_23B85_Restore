@interface CRTrackedDocumentOutputRegion
+ (CRBlockOutputRegion)_blockFromRegion:(uint64_t)region trackedType:;
+ (CRBlockOutputRegion)_blockFromTrackedRegionGroup:(uint64_t)group trackedType:;
+ (id)documentWithTrackedRegionGroups:(id)groups;
+ (id)documentWithTrackedRegions:(id)regions;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
@end

@implementation CRTrackedDocumentOutputRegion

+ (CRBlockOutputRegion)_blockFromTrackedRegionGroup:(uint64_t)group trackedType:
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_self();
  string = [MEMORY[0x1E696AD60] string];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = v3;
  children = [v3 children];
  v7 = [children countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(children);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        numberOfLines = [v14 numberOfLines];
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

        if ([string length])
        {
          if ([v5 isInlineGroup])
          {
            v20 = @" ";
          }

          else
          {
            v20 = @"\n";
          }

          [string appendString:v20];
        }

        v9 += numberOfLines;
        text = [v14 text];
        [string appendString:text];

        v11 = v11 + 1.0;
      }

      v8 = [children countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v12 = 0.0;
  }

  v22 = [CRBlockOutputRegion alloc];
  children2 = [v5 children];
  firstObject = [children2 firstObject];
  v25 = -[CROutputRegion initWithConfidence:baselineAngle:](v22, "initWithConfidence:baselineAngle:", [firstObject confidence], v12);

  [(CRCompositeOutputRegion *)v25 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v25 setShouldComputeParagraphsFromChildren:0];
  [(CROutputRegion *)v25 setShouldComputeTranscriptFromChildren:0];
  [(CROutputRegion *)v25 setNumberOfLines:v9];
  -[CROutputRegion setTextAlignment:](v25, "setTextAlignment:", [v5 textAlignment]);
  -[CROutputRegion setLayoutDirection:](v25, "setLayoutDirection:", [v5 layoutDirection]);
  [(CROutputRegion *)v25 setText:string];
  boundingQuad = [v5 boundingQuad];
  [(CROutputRegion *)v25 setBoundingQuad:boundingQuad];

  originalBoundingQuad = [v5 originalBoundingQuad];
  [(CROutputRegion *)v25 setOriginalBoundingQuad:originalBoundingQuad];

  [v5 boundingQuadHomography];
  [(CROutputRegion *)v25 setBoundingQuadHomography:?];
  trackingID = [v5 trackingID];
  [(CROutputRegion *)v25 setTrackingID:trackingID];

  v29 = MEMORY[0x1E696AD98];
  vcQuad = [v5 vcQuad];
  v31 = [v29 numberWithInt:{objc_msgSend(vcQuad, "homographyGroupID")}];
  [(CROutputRegion *)v25 setHomographyGroupID:v31];

  if (group == 4)
  {
    [(CROutputRegion *)v25 setChildren:MEMORY[0x1E695E0F0]];
    children3 = [v5 children];
    [(CROutputRegion *)v25 setParagraphRegions:children3];

    [(CROutputRegion *)v25 setNumberOfLines:0];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    children4 = [v5 children];
    v34 = [children4 countByEnumeratingWithState:&v40 objects:v48 count:16];
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
            objc_enumerationMutation(children4);
          }

          -[CROutputRegion setNumberOfLines:](v25, "setNumberOfLines:", -[CROutputRegion numberOfLines](v25, "numberOfLines") + [*(*(&v40 + 1) + 8 * j) numberOfLines]);
        }

        v35 = [children4 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v35);
    }
  }

  else
  {
    children4 = [v5 children];
    [(CROutputRegion *)v25 setChildren:children4];
  }

  return v25;
}

+ (CRBlockOutputRegion)_blockFromRegion:(uint64_t)region trackedType:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v5 = [CRBlockOutputRegion alloc];
  confidence = [v4 confidence];
  [v4 baselineAngle];
  v7 = [(CROutputRegion *)v5 initWithConfidence:confidence baselineAngle:?];
  [(CRCompositeOutputRegion *)v7 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v7 setShouldComputeParagraphsFromChildren:0];
  [(CROutputRegion *)v7 setShouldComputeTranscriptFromChildren:0];
  children = [v4 children];
  [(CROutputRegion *)v7 setChildren:children];

  -[CROutputRegion setNumberOfLines:](v7, "setNumberOfLines:", [v4 numberOfLines]);
  -[CROutputRegion setTextAlignment:](v7, "setTextAlignment:", [v4 textAlignment]);
  -[CROutputRegion setLayoutDirection:](v7, "setLayoutDirection:", [v4 layoutDirection]);
  text = [v4 text];
  [(CROutputRegion *)v7 setText:text];

  boundingQuad = [v4 boundingQuad];
  [(CROutputRegion *)v7 setBoundingQuad:boundingQuad];

  originalBoundingQuad = [v4 originalBoundingQuad];
  [(CROutputRegion *)v7 setOriginalBoundingQuad:originalBoundingQuad];

  [v4 boundingQuadHomography];
  [(CROutputRegion *)v7 setBoundingQuadHomography:?];
  trackingID = [v4 trackingID];
  [(CROutputRegion *)v7 setTrackingID:trackingID];

  if (region == 4)
  {
    v15[0] = v4;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(CROutputRegion *)v7 setParagraphRegions:v13];
  }

  return v7;
}

+ (id)documentWithTrackedRegionGroups:(id)groups
{
  v23 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v5 = [(CROutputRegion *)[CRTrackedDocumentOutputRegion alloc] initWithConfidence:2 baselineAngle:0.0];
  firstObject = [groupsCopy firstObject];
  children = [firstObject children];
  firstObject2 = [children firstObject];
  type = [firstObject2 type];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = groupsCopy;
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

        v16 = [(CRTrackedDocumentOutputRegion *)self _blockFromTrackedRegionGroup:type trackedType:?];
        [v10 addObject:{v16, v18}];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [(CRDocumentOutputRegion *)v5 setChildren:v10];

  return v5;
}

+ (id)documentWithTrackedRegions:(id)regions
{
  v22 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  v5 = [(CROutputRegion *)[CRTrackedDocumentOutputRegion alloc] initWithConfidence:2 baselineAngle:0.0];
  firstObject = [regionsCopy firstObject];
  type = [firstObject type];

  if (type == 8 || ([(CROutputRegion *)v5 setShouldComputeParagraphsFromChildren:0], type != 2))
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(regionsCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = regionsCopy;
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

          v15 = [(CRTrackedDocumentOutputRegion *)self _blockFromRegion:type trackedType:?];
          [v9 addObject:{v15, v17}];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v8 = [v9 copy];
    [(CRDocumentOutputRegion *)v5 setChildren:v8];
    if (type == 4)
    {
      [(CROutputRegion *)v5 setParagraphRegions:v10];
    }
  }

  else
  {
    v8 = regionsCopy;
    [(CRDocumentOutputRegion *)v5 setChildren:v8];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  childrenCopy = children;
  v25.receiver = self;
  v25.super_class = CRTrackedDocumentOutputRegion;
  v8 = [(CRDocumentOutputRegion *)&v25 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
  if (childrenCopy)
  {
    paragraphRegions = [(CROutputRegion *)self paragraphRegions];
    v10 = [paragraphRegions count];

    if (v10)
    {
      v11 = [v8 contentsWithTypes:4];
      v12 = [v11 count];
      paragraphRegions2 = [(CROutputRegion *)self paragraphRegions];
      v14 = [paragraphRegions2 count];

      if (v12 == v14)
      {
        paragraphRegions3 = [(CROutputRegion *)self paragraphRegions];
        v16 = [paragraphRegions3 count];

        if (v16)
        {
          v17 = 0;
          do
          {
            paragraphRegions4 = [(CROutputRegion *)self paragraphRegions];
            v19 = [paragraphRegions4 objectAtIndexedSubscript:v17];
            trackingID = [v19 trackingID];
            v21 = [v11 objectAtIndexedSubscript:v17];
            [v21 setTrackingID:trackingID];

            ++v17;
            paragraphRegions5 = [(CROutputRegion *)self paragraphRegions];
            v23 = [paragraphRegions5 count];
          }

          while (v23 > v17);
        }
      }
    }
  }

  return v8;
}

@end