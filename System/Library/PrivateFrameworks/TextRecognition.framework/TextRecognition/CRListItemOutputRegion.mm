@interface CRListItemOutputRegion
+ (BOOL)textStartsWithListItem:(id)a3;
+ (id)listItemForParagraph:(id)a3;
- (CRListItemOutputRegion)initWithLayoutListItem:(id)a3;
- (_NSRange)markerRange;
- (id)listItemByAppendingParagraph:(id)a3;
- (int64_t)markerType;
- (void)initWithParagraphs:(void *)a3 marker:;
@end

@implementation CRListItemOutputRegion

- (CRListItemOutputRegion)initWithLayoutListItem:(id)a3
{
  v4 = a3;
  v5 = [v4 groups];
  [v5 count];

  v6 = [v4 groups];
  v7 = [v4 marker];

  v8 = [(CRListItemOutputRegion *)self initWithParagraphs:v6 marker:v7];
  return v8;
}

- (void)initWithParagraphs:(void *)a3 marker:
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    a1 = [a1 init];
    if (a1)
    {
      if ([v5 count])
      {
        newValue = v6;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v27;
          v12 = 0.0;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v14 = *(*(&v26 + 1) + 8 * i);
              [v14 baselineAngle];
              v16 = v15;
              [a1 baselineAngle];
              v18 = v16 - v17;
              if (v16 - v17 <= 3.14159265)
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

              v19 = v17 + v18 * (1.0 / ++v10);
              if (v19 <= 3.14159265)
              {
                if (v19 <= -3.14159265)
                {
                  v19 = v19 + 6.28318531;
                }
              }

              else
              {
                v19 = v19 + -6.28318531;
              }

              [a1 setBaselineAngle:v19];
              v20 = [v14 confidence];
              if (v10 < [v7 count])
              {
                [v14 setUseLineSeparatorAsJoiningDelimiter:1];
                v21 = [v14 children];
                v22 = [v21 lastObject];
                [v22 setUseLineSeparatorAsLineBreak:1];
              }

              v12 = v12 + v20;
            }

            v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v9);
        }

        else
        {
          v12 = 0.0;
        }

        [a1 setConfidence:{(v12 / objc_msgSend(v7, "count"))}];
        [a1 setShouldComputeBoundsFromChildren:1];
        [a1 setShouldComputeTranscriptFromChildren:1];
        [a1 setChildren:v7];
        [a1 setParagraphRegions:v7];
        v6 = newValue;
        objc_setProperty_atomic(a1, v23, newValue, 352);
      }
    }
  }

  return a1;
}

- (id)listItemByAppendingParagraph:(id)a3
{
  v4 = a3;
  v5 = [(CROutputRegion *)self paragraphRegions];
  v6 = [v5 lastObject];

  [v6 setUseLineSeparatorAsJoiningDelimiter:1];
  v7 = [v6 children];
  v8 = [v7 lastObject];
  [v8 setUseLineSeparatorAsLineBreak:1];

  v9 = [(CROutputRegion *)self paragraphRegions];
  v10 = [v9 arrayByAddingObject:v4];

  v12 = [CRListItemOutputRegion alloc];
  if (self)
  {
    Property = objc_getProperty(self, v11, 352, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = [(CRListItemOutputRegion *)v12 initWithParagraphs:v10 marker:Property];

  return v14;
}

- (_NSRange)markerRange
{
  if (self)
  {
    self = objc_getProperty(self, a2, 352, 1);
    v2 = vars8;
  }

  v3 = [(CRListItemOutputRegion *)self range];
  result.length = v4;
  result.location = v3;
  return result;
}

- (int64_t)markerType
{
  if (self)
  {
    self = objc_getProperty(self, a2, 352, 1);
    v2 = vars8;
  }

  return [(CRListItemOutputRegion *)self type];
}

+ (BOOL)textStartsWithListItem:(id)a3
{
  v3 = [CRListItemMarker listItemMarkerForText:a3 requiresAdjacentText:1];
  v4 = v3 != 0;

  return v4;
}

+ (id)listItemForParagraph:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 text];
  v5 = [CRListItemMarker listItemMarkerForText:v4 requiresAdjacentText:1];

  if (v5)
  {
    v6 = [CRListItemOutputRegion alloc];
    v10[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [(CRListItemOutputRegion *)v6 initWithParagraphs:v7 marker:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end