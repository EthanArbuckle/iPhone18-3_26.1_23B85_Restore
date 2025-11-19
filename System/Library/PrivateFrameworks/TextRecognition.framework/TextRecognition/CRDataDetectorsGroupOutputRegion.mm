@interface CRDataDetectorsGroupOutputRegion
- (CRDataDetectorsGroupOutputRegion)initWithDDRegions:(id)a3 children:(id)a4 groupType:(unint64_t)a5;
- (id)debugDescription;
@end

@implementation CRDataDetectorsGroupOutputRegion

- (CRDataDetectorsGroupOutputRegion)initWithDDRegions:(id)a3 children:(id)a4 groupType:(unint64_t)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
    v12 = 0.0;
    if (v11)
    {
      v13 = v11;
      v14 = *v49;
      v15 = 0.0;
      v16 = 2;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v48 + 1) + 8 * i);
          [v18 baselineAngle];
          v15 = v15 + v19;
          v20 = [v18 confidence];
          if (v20 < v16)
          {
            v16 = v20;
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v13);
    }

    else
    {
      v16 = 2;
      v15 = 0.0;
    }

    if ([v10 count])
    {
      v12 = v15 / [v10 count];
    }

    v47.receiver = self;
    v47.super_class = CRDataDetectorsGroupOutputRegion;
    v22 = [(CROutputRegion *)&v47 initWithConfidence:v16 baselineAngle:v12];
    if (v22)
    {
      v42 = v9;
      v23 = [v10 copy];
      [(CROutputRegion *)v22 setChildren:v23];

      v24 = [v8 copy];
      [(CROutputRegion *)v22 setDataDetectorRegions:v24];

      v22->_groupType = a5;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v25 = [(CROutputRegion *)v22 dataDetectorRegions];
      v26 = [v25 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = 0;
        v30 = *v44;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v44 != v30)
            {
              objc_enumerationMutation(v25);
            }

            v32 = *(*(&v43 + 1) + 8 * j);
            if (v28)
            {
              [v28 baselineAngle];
              v34 = v33;
              [v32 baselineAngle];
              v36 = v35 + v34 * v29++;
              v37 = v36 / v29;
              v38 = [v32 boundingQuad];
              *&v39 = v37;
              v40 = [v28 unionWithNormalizedQuad:v38 baselineAngle:v39];

              v28 = v40;
            }

            else
            {
              v28 = [*(*(&v43 + 1) + 8 * j) boundingQuad];
              ++v29;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v27);
      }

      else
      {
        v28 = 0;
      }

      [(CROutputRegion *)v22 setBoundingQuad:v28];
      v9 = v42;
    }

    self = v22;
    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)debugDescription
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(CRDataDetectorsGroupOutputRegion *)self groupType];
  v8 = [(CROutputRegion *)self dataDetectorRegions];
  v9 = [v8 count];
  v10 = [(CROutputRegion *)self children];
  v11 = [v4 stringWithFormat:@"[%@] type:%lu #DD:%lu #Non-DD:%lu", v6, v7, v9, objc_msgSend(v10, "count")];
  [v3 addObject:v11];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [(CROutputRegion *)self dataDetectorRegions];
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = MEMORY[0x1E696AEC0];
        v18 = [*(*(&v34 + 1) + 8 * i) debugDescription];
        v19 = [v17 stringWithFormat:@"- DD: %@", v18];
        [v3 addObject:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v14);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = [(CROutputRegion *)self dataDetectorRegions];
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = MEMORY[0x1E696AEC0];
        v26 = [*(*(&v30 + 1) + 8 * j) debugDescription];
        v27 = [v25 stringWithFormat:@"- Non-DD: %@", v26];
        [v3 addObject:v27];
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v22);
  }

  v28 = [v3 componentsJoinedByString:@"\n"];

  return v28;
}

@end