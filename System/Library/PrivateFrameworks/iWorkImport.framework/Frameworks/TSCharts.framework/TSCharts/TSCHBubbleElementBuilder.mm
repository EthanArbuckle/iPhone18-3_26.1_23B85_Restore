@interface TSCHBubbleElementBuilder
- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations forHighlightPath:(BOOL)self0;
@end

@implementation TSCHBubbleElementBuilder

- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations forHighlightPath:(BOOL)self0
{
  seriesCopy = series;
  layoutCopy = layout;
  v44.receiver = self;
  v44.super_class = TSCHBubbleElementBuilder;
  v18 = [(TSCHLineAreaScatterElementBuilder *)&v44 countOfElementsInSeries:seriesCopy forGroups:groups forBodyLayout:layoutCopy outNewElementBounds:bounds outNewClipRects:rects outNewElementPaths:paths outSelectionKnobLocations:locations forHighlightPath:path];
  v19 = v18;
  if (rects && v18)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *rects;
      v23 = &(*rects)[v20];
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

    objc_msgSend_layoutSize(layoutCopy, v28, v29, v30, v31);
    objc_msgSend_p_bubbleMaxForSeries_inChartBodyLayoutSize_(self, v32, v33, v34, v35, seriesCopy);
    v37 = v36;
    objc_msgSend_layoutOffset(layoutCopy, v38, v36, v39, v40);
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