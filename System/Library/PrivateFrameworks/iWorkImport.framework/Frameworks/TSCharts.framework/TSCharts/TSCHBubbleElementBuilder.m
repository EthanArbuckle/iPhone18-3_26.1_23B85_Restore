@interface TSCHBubbleElementBuilder
- (unint64_t)countOfElementsInSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewElementBounds:(CGRect *)a6 outNewClipRects:(CGRect *)a7 outNewElementPaths:(const CGPath *)a8 outSelectionKnobLocations:(id *)a9 forHighlightPath:(BOOL)a10;
@end

@implementation TSCHBubbleElementBuilder

- (unint64_t)countOfElementsInSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewElementBounds:(CGRect *)a6 outNewClipRects:(CGRect *)a7 outNewElementPaths:(const CGPath *)a8 outSelectionKnobLocations:(id *)a9 forHighlightPath:(BOOL)a10
{
  v16 = a3;
  v17 = a5;
  v44.receiver = self;
  v44.super_class = TSCHBubbleElementBuilder;
  v18 = [(TSCHLineAreaScatterElementBuilder *)&v44 countOfElementsInSeries:v16 forGroups:a4 forBodyLayout:v17 outNewElementBounds:a6 outNewClipRects:a7 outNewElementPaths:a8 outSelectionKnobLocations:a9 forHighlightPath:a10];
  v19 = v18;
  if (a7 && v18)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *a7;
      v23 = &(*a7)[v20];
      x = v23->origin.x;
      y = v23->origin.y;
      width = v23->size.width;
      height = v23->size.height;
      v45.origin.x = v23->origin.x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      if (!CGRectIsNull(v45))
      {
        break;
      }

      ++v21;
      ++v20;
      if (v21 >= v19)
      {
        goto LABEL_8;
      }
    }

    objc_msgSend_layoutSize(v17, v28, v29, v30, v31);
    objc_msgSend_p_bubbleMaxForSeries_inChartBodyLayoutSize_(self, v32, v33, v34, v35, v16);
    v37 = v36;
    objc_msgSend_layoutOffset(v17, v38, v36, v39, v40);
    v42 = v41;
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v48.origin.x = CGRectGetMinX(v46);
    v48.origin.y = v42 - fabs(v37 * 0.5);
    v48.size.width = 0.0;
    v48.size.height = 0.0;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v22[v20] = CGRectUnion(v47, v48);
  }

LABEL_8:

  return v19;
}

@end