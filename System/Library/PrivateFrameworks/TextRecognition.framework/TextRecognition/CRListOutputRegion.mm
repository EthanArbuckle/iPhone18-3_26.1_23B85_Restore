@interface CRListOutputRegion
+ (id)listsWithParagraphs:(id)paragraphs;
- (CRListOutputRegion)initWithListItems:(id)items;
@end

@implementation CRListOutputRegion

- (CRListOutputRegion)initWithListItems:(id)items
{
  v48 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [(CROutputRegion *)self init];
  if (v5 && [itemsCopy count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = itemsCopy;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v42;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          [v13 baselineAngle];
          v15 = v14;
          [(CROutputRegion *)v5 baselineAngle];
          v17 = v15 - v16;
          if (v15 - v16 <= 3.14159265)
          {
            if (v17 <= -3.14159265)
            {
              v17 = v17 + 6.28318531;
            }
          }

          else
          {
            v17 = v17 + -6.28318531;
          }

          v18 = v16 + v17 * (1.0 / ++v9);
          if (v18 <= 3.14159265)
          {
            if (v18 <= -3.14159265)
            {
              v18 = v18 + 6.28318531;
            }
          }

          else
          {
            v18 = v18 + -6.28318531;
          }

          [(CROutputRegion *)v5 setBaselineAngle:v18];
          v11 = v11 + [v13 confidence];
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v8);
    }

    else
    {
      v11 = 0.0;
    }

    v32 = itemsCopy;

    -[CROutputRegion setConfidence:](v5, "setConfidence:", (v11 / [v6 count]));
    [(CRCompositeOutputRegion *)v5 setShouldComputeBoundsFromChildren:1];
    [(CROutputRegion *)v5 setShouldComputeTranscriptFromChildren:1];
    [(CROutputRegion *)v5 setChildren:v6];
    v19 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v6;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v37 + 1) + 8 * j);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          paragraphRegions = [v25 paragraphRegions];
          v27 = [paragraphRegions countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v34;
            do
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v34 != v29)
                {
                  objc_enumerationMutation(paragraphRegions);
                }

                [v19 addObject:*(*(&v33 + 1) + 8 * k)];
              }

              v28 = [paragraphRegions countByEnumeratingWithState:&v33 objects:v45 count:16];
            }

            while (v28);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v22);
    }

    [(CROutputRegion *)v5 setParagraphRegions:v19];
    itemsCopy = v32;
  }

  return v5;
}

+ (id)listsWithParagraphs:(id)paragraphs
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [CRLayoutList listsWithRegionGroups:paragraphs];
  v19 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = objc_opt_new();
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        items = [v7 items];
        v10 = [items countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(items);
              }

              v14 = [[CRListItemOutputRegion alloc] initWithLayoutListItem:*(*(&v20 + 1) + 8 * j)];
              [v8 addObject:v14];
            }

            v11 = [items countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }

        v15 = [[CRListOutputRegion alloc] initWithListItems:v8];
        -[CROutputRegion setLayoutDirection:](v15, "setLayoutDirection:", [v7 layoutDirection]);
        [v19 addObject:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  return v19;
}

@end