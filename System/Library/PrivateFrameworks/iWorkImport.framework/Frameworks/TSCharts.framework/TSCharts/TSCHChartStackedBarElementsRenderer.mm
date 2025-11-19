@interface TSCHChartStackedBarElementsRenderer
- (CGPath)clippingPathForRect:(CGRect)a3 inGroupIndex:(unint64_t)a4 series:(id)a5 withContext:(CGContext *)a6 relativelyPositive:(BOOL)a7 stackRects:(id)a8 forceRoundedCornersOff:(BOOL)a9;
- (id)stackRectsWithContext:(CGContext *)a3;
- (void)renderRoundedCornerElementStrokeIntoContext:(CGContext *)a3 stroke:(id)a4 clippingPath:(CGPath *)a5 elementRenderRect:(CGRect)a6;
@end

@implementation TSCHChartStackedBarElementsRenderer

- (id)stackRectsWithContext:(CGContext *)a3
{
  v7 = objc_msgSend_model(self, a2, v3, v4, v5);
  v12 = objc_msgSend_chartInfo(v7, v8, v9, v10, v11);
  hasRoundedCorners = objc_msgSend_hasRoundedCorners(v12, v13, v14, v15, v16);

  if (hasRoundedCorners)
  {
    v73 = objc_msgSend_seriesList(v7, v18, v19, v20, v21);
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = sub_2762562F4;
    v85 = sub_276256304;
    objc_msgSend_dictionary(MEMORY[0x277CBEB38], v22, COERCE_DOUBLE(0x3032000000), v23, v24);
    v86 = v25 = 0;
    v71 = v75;
    while (v25 < objc_msgSend_count(v73, v26, v27, v28, v29))
    {
      v34 = objc_msgSend_barModelCacheForSeries_(v7, v30, v31, v32, v33, v25);
      v39 = objc_msgSend_series(v34, v35, v36, v37, v38);
      objc_opt_class();
      v44 = objc_msgSend_seriesType(v39, v40, v41, v42, v43);
      v49 = objc_msgSend_elementBuilder(v44, v45, v46, v47, v48);
      v50 = TSUDynamicCast();

      if (v50)
      {
        v79 = 0;
        v80 = 0;
        v78 = 0;
        v55 = v7;
        v56 = objc_msgSend_allGroupsIndexSetForSeries_(v7, v51, v52, v53, v54, v39);
        v61 = objc_msgSend_countOfBarRectsForSeries_forGroups_forBodyLayout_outNewGroupIndexArray_outNewElementRectsArray_outNewClipRectsArray_(v50, v57, v58, v59, v60, v39, v56, self->super.super._layoutItem, &v78, &v80, &v79);

        v63 = v78;
        v62 = v79;
        v64 = v80;
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v75[0] = sub_276258788;
        v75[1] = &unk_27A6B6F38;
        v77 = &v81;
        v76 = v34;
        objc_msgSend_enumerateElementsForSeries_context_elementCount_groupIndexes_elementRects_clipRects_forBlock_(self, v65, v66, v67, v68, v39, a3, v61, v63, v64, v62, v74, v71);
        v7 = v55;
        if (v78)
        {
          free(v78);
        }

        if (v80)
        {
          free(v80);
        }

        if (v79)
        {
          free(v79);
        }
      }

      ++v25;
    }

    v69 = objc_msgSend_copy(v82[5], v30, v31, v32, v33);
    _Block_object_dispose(&v81, 8);
  }

  else
  {
    v69 = 0;
  }

  return v69;
}

- (CGPath)clippingPathForRect:(CGRect)a3 inGroupIndex:(unint64_t)a4 series:(id)a5 withContext:(CGContext *)a6 relativelyPositive:(BOOL)a7 stackRects:(id)a8 forceRoundedCornersOff:(BOOL)a9
{
  v11 = a7;
  height = a3.size.height;
  width = a3.size.width;
  v16 = a5;
  v18 = a8;
  if (a9)
  {
    goto LABEL_6;
  }

  v22 = objc_msgSend_model(self, v17, v19, v20, v21);
  v27 = objc_msgSend_chartInfo(v22, v23, v24, v25, v26);
  if ((objc_msgSend_hasRoundedCorners(v27, v28, v29, v30, v31) & 1) == 0)
  {
LABEL_5:

LABEL_6:
    v41 = 0;
    goto LABEL_7;
  }

  v36 = objc_msgSend_chartRep(self, v32, v33, v34, v35);
  if ((objc_msgSend_is2DRepFor3DChartRep(v36, v37, v38, v39, v40) & 1) != 0 || width == 0.0 || fabs(width) < 0.00999999978)
  {

    goto LABEL_5;
  }

  v41 = 0;
  if (height != 0.0)
  {
    v46 = fabs(height);
    if (v46 >= 0.00999999978)
    {
      v47 = objc_msgSend_model(self, v43, v46, v44, v45);
      v52 = objc_msgSend_chartInfo(v47, v48, v49, v50, v51);
      v53 = sub_2762A204C(a4, v18, v52, v11, self->super._vertical);

      v41 = CFAutorelease(v53);
    }
  }

LABEL_7:

  return v41;
}

- (void)renderRoundedCornerElementStrokeIntoContext:(CGContext *)a3 stroke:(id)a4 clippingPath:(CGPath *)a5 elementRenderRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a4;
  CGContextClipToRectSafe();
  objc_msgSend_applyToContext_insideStroke_(v12, v13, v14, v15, v16, a3, 1);

  v18 = sub_2762A1B4C(a5, v17, x, y, width, height);
  CGContextAddPathSafe();
  CGContextStrokePath(a3);

  CGPathRelease(v18);
}

@end