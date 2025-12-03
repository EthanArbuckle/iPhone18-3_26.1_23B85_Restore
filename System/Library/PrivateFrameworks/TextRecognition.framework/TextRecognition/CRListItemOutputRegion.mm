@interface CRListItemOutputRegion
+ (BOOL)textStartsWithListItem:(id)item;
+ (id)listItemForParagraph:(id)paragraph;
- (CRListItemOutputRegion)initWithLayoutListItem:(id)item;
- (_NSRange)markerRange;
- (id)listItemByAppendingParagraph:(id)paragraph;
- (int64_t)markerType;
- (void)initWithParagraphs:(void *)paragraphs marker:;
@end

@implementation CRListItemOutputRegion

- (CRListItemOutputRegion)initWithLayoutListItem:(id)item
{
  itemCopy = item;
  groups = [itemCopy groups];
  [groups count];

  groups2 = [itemCopy groups];
  marker = [itemCopy marker];

  v8 = [(CRListItemOutputRegion *)self initWithParagraphs:groups2 marker:marker];
  return v8;
}

- (void)initWithParagraphs:(void *)paragraphs marker:
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  paragraphsCopy = paragraphs;
  if (self)
  {
    self = [self init];
    if (self)
    {
      if ([v5 count])
      {
        newValue = paragraphsCopy;
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
              [self baselineAngle];
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

              [self setBaselineAngle:v19];
              confidence = [v14 confidence];
              if (v10 < [v7 count])
              {
                [v14 setUseLineSeparatorAsJoiningDelimiter:1];
                children = [v14 children];
                lastObject = [children lastObject];
                [lastObject setUseLineSeparatorAsLineBreak:1];
              }

              v12 = v12 + confidence;
            }

            v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v9);
        }

        else
        {
          v12 = 0.0;
        }

        [self setConfidence:{(v12 / objc_msgSend(v7, "count"))}];
        [self setShouldComputeBoundsFromChildren:1];
        [self setShouldComputeTranscriptFromChildren:1];
        [self setChildren:v7];
        [self setParagraphRegions:v7];
        paragraphsCopy = newValue;
        objc_setProperty_atomic(self, v23, newValue, 352);
      }
    }
  }

  return self;
}

- (id)listItemByAppendingParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  paragraphRegions = [(CROutputRegion *)self paragraphRegions];
  lastObject = [paragraphRegions lastObject];

  [lastObject setUseLineSeparatorAsJoiningDelimiter:1];
  children = [lastObject children];
  lastObject2 = [children lastObject];
  [lastObject2 setUseLineSeparatorAsLineBreak:1];

  paragraphRegions2 = [(CROutputRegion *)self paragraphRegions];
  v10 = [paragraphRegions2 arrayByAddingObject:paragraphCopy];

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

  range = [(CRListItemOutputRegion *)self range];
  result.length = v4;
  result.location = range;
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

+ (BOOL)textStartsWithListItem:(id)item
{
  v3 = [CRListItemMarker listItemMarkerForText:item requiresAdjacentText:1];
  v4 = v3 != 0;

  return v4;
}

+ (id)listItemForParagraph:(id)paragraph
{
  v10[1] = *MEMORY[0x1E69E9840];
  paragraphCopy = paragraph;
  text = [paragraphCopy text];
  v5 = [CRListItemMarker listItemMarkerForText:text requiresAdjacentText:1];

  if (v5)
  {
    v6 = [CRListItemOutputRegion alloc];
    v10[0] = paragraphCopy;
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