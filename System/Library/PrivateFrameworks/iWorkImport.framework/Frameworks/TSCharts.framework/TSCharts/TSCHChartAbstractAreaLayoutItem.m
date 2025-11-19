@interface TSCHChartAbstractAreaLayoutItem
- (CGRect)calcDrawingRect;
- (CGRect)titleFrame;
@end

@implementation TSCHChartAbstractAreaLayoutItem

- (CGRect)calcDrawingRect
{
  v93 = *MEMORY[0x277D85DE8];
  v88.receiver = self;
  v88.super_class = TSCHChartAbstractAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v88 calcDrawingRect];
  v79 = v4;
  v80 = v3;
  v6 = v5;
  v8 = v7;
  objc_msgSend_rootedLayoutRect(self, v9, v3, v4, v5);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v19 = objc_msgSend_model(self, v18, 0.0, v12, v14);
  v24 = objc_msgSend_seriesList(v19, v20, v21, v22, v23);

  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v26, v27, v28, &v84, v92, 16);
  if (v29)
  {
    v32 = v29;
    v33 = *v85;
    v35 = *MEMORY[0x277CBF398];
    v34 = *(MEMORY[0x277CBF398] + 16);
    v81 = v34;
    v82 = *MEMORY[0x277CBF398];
    v36 = v13;
    v37 = v11;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v85 != v33)
        {
          objc_enumerationMutation(v24);
        }

        v39 = *(*(&v84 + 1) + 8 * i);
        v40 = objc_msgSend_seriesType(v39, v30, v34.width, *&v35, v31);
        v45 = objc_msgSend_elementBuilder(v40, v41, v42, v43, v44);

        v83.origin = v82;
        v83.size = v81;
        if (v45)
        {
          objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v45, v46, v81.width, v82.x, v47, v39, self, 0, &v83, 0, 0);
        }

        else
        {
          v90 = 0u;
          v91 = 0u;
          v89 = 0u;
        }

        if (!CGRectIsNull(v83))
        {
          TSUTransformedCornersOfRect();
          TSURectWithPoints();
          v103.origin.x = v50;
          v103.origin.y = v51;
          v103.size.width = v52;
          v103.size.height = v53;
          v94.origin.x = v37;
          v94.origin.y = v36;
          v94.size.width = v15;
          v94.size.height = v17;
          v95 = CGRectUnion(v94, v103);
          x = v95.origin.x;
          y = v95.origin.y;
          width = v95.size.width;
          height = v95.size.height;
          TSURectWithPoints();
          v104.origin.x = v58;
          v104.origin.y = v59;
          v104.size.width = v60;
          v104.size.height = v61;
          v96.origin.x = x;
          v96.origin.y = y;
          v96.size.width = width;
          v96.size.height = height;
          *(&v49 - 2) = CGRectUnion(v96, v104);
          v37 = v62;
          v36 = v63;
          v15 = v49;
          v17 = v64;
        }

        v83.origin = v82;
        v83.size = v81;
        if (v45)
        {
          objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v45, v48, v81.width, v82.x, v49, v39, self, 0, &v83, 0, 0);
        }

        else
        {
          v90 = 0u;
          v91 = 0u;
          v89 = 0u;
        }

        if (!CGRectIsNull(v83))
        {
          TSUTransformedCornersOfRect();
          TSURectWithPoints();
          v105.origin.x = v65;
          v105.origin.y = v66;
          v105.size.width = v67;
          v105.size.height = v68;
          v97.origin.x = v37;
          v97.origin.y = v36;
          v97.size.width = v15;
          v97.size.height = v17;
          v98 = CGRectUnion(v97, v105);
          v69 = v98.origin.x;
          v70 = v98.origin.y;
          v71 = v98.size.width;
          v72 = v98.size.height;
          TSURectWithPoints();
          v106.origin.x = v73;
          v106.origin.y = v74;
          v106.size.width = v75;
          v106.size.height = v76;
          v99.origin.x = v69;
          v99.origin.y = v70;
          v99.size.width = v71;
          v99.size.height = v72;
          v100 = CGRectUnion(v99, v106);
          v37 = v100.origin.x;
          v36 = v100.origin.y;
          v15 = v100.size.width;
          v17 = v100.size.height;
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v30, v34.width, *&v35, v31, &v84, v92, 16);
    }

    while (v32);
  }

  TSUSubtractPoints();
  v107.origin.x = v77;
  v107.origin.y = v78;
  v101.origin.y = v79;
  v101.origin.x = v80;
  v101.size.width = v6;
  v101.size.height = v8;
  v107.size.width = v15;
  v107.size.height = v17;
  return CGRectUnion(v101, v107);
}

- (CGRect)titleFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end