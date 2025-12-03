@interface PGFeatureAugmenterSupervisedMixUp
- (id)labeledFloatVectorsWithLabeledFloatVectors:(id)vectors error:(id *)error;
@end

@implementation PGFeatureAugmenterSupervisedMixUp

- (id)labeledFloatVectorsWithLabeledFloatVectors:(id)vectors error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  if ([vectorsCopy count])
  {
    selfCopy = self;
    errorCopy = error;
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(vectorsCopy, "count")}];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v6 = vectorsCopy;
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
          floatVector = [v10 floatVector];
          data = [floatVector data];
          v14 = [v11 initWithData:data];

          label = [v10 label];
          [v14 appendVector:label];

          [v34 addObject:v14];
        }

        v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v7);
    }

    v32 = [(PGFeatureAugmenterMixUp *)self floatVectorsWithFloatVectors:v34 error:errorCopy];
    v16 = [v6 objectAtIndexedSubscript:0];
    floatVector2 = [v16 floatVector];
    v18 = [floatVector2 count];

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
          v25 = [v24 sliceFromStart:0 toEnd:{v18, selfCopy}];
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