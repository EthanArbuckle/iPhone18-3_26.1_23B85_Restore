@interface PGFeatureAugmenterSupervisedMixUp
- (id)labeledFloatVectorsWithLabeledFloatVectors:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureAugmenterSupervisedMixUp

- (id)labeledFloatVectorsWithLabeledFloatVectors:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v33 = a3;
  if ([v33 count])
  {
    v30 = self;
    v31 = a4;
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v33, "count")}];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v6 = v33;
    v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v7)
    {
      v8 = *v40;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v39 + 1) + 8 * i);
          v11 = objc_alloc(MEMORY[0x277D22C68]);
          v12 = [v10 floatVector];
          v13 = [v12 data];
          v14 = [v11 initWithData:v13];

          v15 = [v10 label];
          [v14 appendVector:v15];

          [v34 addObject:v14];
        }

        v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v7);
    }

    v32 = [(PGFeatureAugmenterMixUp *)self floatVectorsWithFloatVectors:v34 error:v31];
    v16 = [v6 objectAtIndexedSubscript:0];
    v17 = [v16 floatVector];
    v18 = [v17 count];

    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v32, "count")}];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v32;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v21)
    {
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v35 + 1) + 8 * j);
          v25 = [v24 sliceFromStart:0 toEnd:{v18, v30}];
          v26 = [v24 sliceFromStart:v18 toEnd:{objc_msgSend(v24, "count")}];
          v27 = [[PGLabeledFloatVector alloc] initWithFloatVector:v25 label:v26];
          [v19 addObject:v27];
        }

        v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

@end