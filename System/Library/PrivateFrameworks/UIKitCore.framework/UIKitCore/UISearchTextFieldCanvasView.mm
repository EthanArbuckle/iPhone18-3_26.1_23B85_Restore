@interface UISearchTextFieldCanvasView
@end

@implementation UISearchTextFieldCanvasView

void __49___UISearchTextFieldCanvasView__updateTokenViews__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  rect_8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
    [*(a1 + 32) lineFragmentRectForGlyphAtIndex:v7 effectiveRange:0];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = *(a1 + 40);
    [*(a1 + 32) locationForGlyphAtIndex:v7];
    [rect_8 attachmentBoundsForTextContainer:v16 proposedLineFragment:a3 glyphPosition:v9 characterIndex:{v11, v13, v15, v17, v18}];
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    rect = v43.origin.x;
    MinX = CGRectGetMinX(v43);
    v44.origin.x = v9;
    v44.origin.y = v11;
    v44.size.width = v13;
    v44.size.height = v15;
    if (MinX < CGRectGetMaxX(v44))
    {
      v45.origin.x = rect;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      MaxX = CGRectGetMaxX(v45);
      v46.origin.x = v9;
      v46.origin.y = v11;
      v46.size.width = v13;
      v46.size.height = v15;
      if (MaxX > CGRectGetMinX(v46))
      {
        v39 = v11;
        v24 = [rect_8 _viewProvider];
        v25 = [v24 view];

        [*(a1 + 48) removeObject:v25];
        v26 = *(a1 + 56);
        if (!v26[56])
        {
          v27 = objc_opt_new();
          v28 = *(a1 + 56);
          v29 = *(v28 + 448);
          *(v28 + 448) = v27;

          v26 = *(a1 + 56);
        }

        [v26 addSubview:v25];
        [*(*(a1 + 56) + 448) addObject:v25];
        v30 = UIRectIntegralWithScale(rect, y, width, height, *(a1 + 64));
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [v25 frame];
        if (v34 != v38 || v36 != v37)
        {
          [v25 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v34, v36}];
          [v25 layoutSubviews];
        }

        [v25 setFrame:{UIPointRoundToScale(v30 + *(a1 + 72), v39 + 0.0 + *(a1 + 80), *(a1 + 64))}];
        [v25 updateMaskLayerForAttachmentRect:v30 lineFragment:{v32, v34, v36, v9, v39, v13, v15}];
      }
    }
  }
}

@end