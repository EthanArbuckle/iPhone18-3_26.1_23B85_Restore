@interface CRMutableRecognizedTextRegion
- (id)_removeUnknownScriptMarkersFromString:(void *)a3 replacementString:;
- (void)adjustBoundsBasedOnSubregions;
- (void)removeUnknownScriptMarkersFromTranscripts:(id)a3;
@end

@implementation CRMutableRecognizedTextRegion

- (void)adjustBoundsBasedOnSubregions
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [(CRRecognizedTextRegion *)self boundingQuad];
  v4 = [v3 denormalizedQuad];
  [v4 midPoint];
  v39 = v6;
  v40 = v5;

  v7 = [(CRRecognizedTextRegion *)self boundingQuad];
  [v7 baselineAngle];
  v9 = v8;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = [(CRRecognizedTextRegion *)self subregions];
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    v14 = v9;
    v15 = 1.79769313e308;
    v16 = -1.79769313e308;
    v17 = -1.79769313e308;
    v41 = 1.79769313e308;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v19 = [*(*(&v42 + 1) + 8 * i) boundingQuad];
        v20 = [v19 denormalizedQuad];
        *&v21 = v14;
        v22 = [v20 rotatedAroundPoint:v40 angle:{v39, v21}];

        [v22 boundingBox];
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        v26 = v14;
        height = v48.size.height;
        MinX = CGRectGetMinX(v48);
        if (v15 >= MinX)
        {
          v15 = MinX;
        }

        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        MaxX = CGRectGetMaxX(v49);
        if (v17 < MaxX)
        {
          v17 = MaxX;
        }

        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        MinY = CGRectGetMinY(v50);
        v31 = v41;
        if (v41 >= MinY)
        {
          v31 = MinY;
        }

        v41 = v31;
        v51.origin.x = x;
        v51.origin.y = y;
        v51.size.width = width;
        v51.size.height = height;
        v14 = v26;
        MaxY = CGRectGetMaxY(v51);
        if (v16 < MaxY)
        {
          v16 = MaxY;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v12);
    v33 = v41;
  }

  else
  {
    v14 = v9;
    v33 = 1.79769313e308;
    v16 = -1.79769313e308;
    v17 = -1.79769313e308;
    v15 = 1.79769313e308;
  }

  v34 = [[CRImageSpaceQuad alloc] initWithBoundingBox:v15, v33, v17 - v15, v16 - v33];
  *&v35 = -v14;
  v36 = [(CRImageSpaceQuad *)v34 rotatedAroundPoint:v40 angle:v39, v35];
  v37 = [(CRRecognizedTextRegion *)self boundingQuad];
  [v37 normalizationSize];
  v38 = [v36 normalizedQuadForImageSize:?];

  [(CRRecognizedTextRegion *)self setBoundingQuad:v38];
}

- (void)removeUnknownScriptMarkersFromTranscripts:(id)a3
{
  v19 = a3;
  v4 = [(CRRecognizedTextRegion *)self text];
  v5 = [(CRMutableRecognizedTextRegion *)self _removeUnknownScriptMarkersFromString:v4 replacementString:v19];
  [(CRRecognizedTextRegion *)self setText:v5];

  v6 = MEMORY[0x1E695DF70];
  v7 = [(CRRecognizedTextRegion *)self subregions];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = [(CRRecognizedTextRegion *)self subregions];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = [(CRRecognizedTextRegion *)self subregions];
      v13 = [v12 objectAtIndexedSubscript:v11];
      v14 = [v13 mutableCopy];

      v15 = [v14 text];
      v16 = [(CRMutableRecognizedTextRegion *)self _removeUnknownScriptMarkersFromString:v15 replacementString:v19];
      [v14 setText:v16];

      [v8 addObject:v14];
      ++v11;
      v17 = [(CRRecognizedTextRegion *)self subregions];
      v18 = [v17 count];
    }

    while (v11 < v18);
  }

  [(CRRecognizedTextRegion *)self setSubregions:v8];
}

- (id)_removeUnknownScriptMarkersFromString:(void *)a3 replacementString:
{
  if (a1)
  {
    v4 = MEMORY[0x1E696AB08];
    v5 = a3;
    v6 = a2;
    v7 = [v4 whitespaceCharacterSet];
    v8 = [MEMORY[0x1E696AB08] _crUnknownScriptCharacterSet];
    v9 = [v6 componentsSeparatedByCharactersInSet:v8];

    v10 = [v9 componentsJoinedByString:v5];

    v11 = [v10 stringByTrimmingCharactersInSet:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end