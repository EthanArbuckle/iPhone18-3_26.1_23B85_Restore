@interface TSCH3DHorizontalChartTitlePositioner
- (LabelTransform)categoryAxisTitleTransform;
- (LabelTransform)mainTitleTransform;
- (LabelTransform)valueAxisTitleTransform;
@end

@implementation TSCH3DHorizontalChartTitlePositioner

- (LabelTransform)mainTitleTransform
{
  v8 = objc_msgSend_info(self, a3, v3, v4, v5);
  v31 = objc_msgSend_paragraphStyleForLabelsFontForInfo_(TSCHChartValueAxis, v9, v10, v11, v12, v8);

  objc_msgSend_ascent(v31, v13, v14, v15, v16);
  *&v17 = v17;
  *&retstr->var2 = 8;
  retstr->var4 = 0;
  *&v17 = *&v17 + *&v17;
  *&retstr->var0.var0.var0 = xmmword_2764D61C0;
  retstr->var1.var1.var0 = *&v17;
  v20 = objc_msgSend_info(self, v18, v17, 0.0369318201, v19);
  v25 = objc_msgSend_paragraphStyleForTitleFontForInfo_(TSCH3DChartMainTitleSceneObject, v21, v22, v23, v24, v20);

  objc_msgSend_applyParagraphStyle_onLabelTransform_alignmentDimension_(self, v26, v27, v28, v29, v25, retstr, 0);

  return result;
}

- (LabelTransform)valueAxisTitleTransform
{
  v8 = objc_msgSend_scene(self, a3, v3, v4, v5);

  if (v8)
  {
    v14 = objc_msgSend_scene(self, v10, v11, v12, v13);
    v19 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v15, v16, v17, v18, v14);

    if (v19)
    {
      objc_msgSend_gridlinesOffset(v19, v20, v21, v22, v23);
    }

    else
    {
      v92 = 0;
    }

    *&v24 = sub_27615656C();
    v91 = LODWORD(v24);
    objc_msgSend_sizeOfValueAxisLabels(self, v25, v24, v26, v27);
    v32 = objc_msgSend_info(self, v28, v29, v30, v31);
    v37 = objc_msgSend_paragraphStyleForTitleFontForInfo_(TSCH3DChartValueAxisTitleSceneObject, v33, v34, v35, v36, v32);

    objc_msgSend_floatValueForProperty_(v37, v38, v39, v40, v41, 17);
    v43 = *&v42;
    v47 = objc_msgSend_info(self, v44, v42, v45, v46);
    v52 = objc_msgSend_styleIndexForInfo_(TSCH3DChartValueAxisTitleSceneObject, v48, v49, v50, v51, v47);

    v57 = objc_msgSend_info(self, v53, v54, v55, v56);
    v62 = objc_msgSend_axisForInfo_(TSCH3DChartValueAxisTitleSceneObject, v58, v59, v60, v61, v57);

    v67 = objc_msgSend_info(self, v63, v64, v65, v66);
    v72 = objc_msgSend_paragraphStyleAtIndex_(v67, v68, v69, v70, v71, v52);

    v77 = objc_msgSend_objectValueForProperty_(v62, v73, v74, v75, v76, 1062);
    v82 = objc_msgSend_sharedText(TSCHText, v78, v79, v80, v81);
    objc_msgSend_measureText_paragraphStyle_(v82, v83, v84, v85, v86, v77, v72);
    v87.i32[0] = 0;
    v87.i32[1] = v91;
    *&retstr->var2 = 8;
    retstr->var4 = 0;
    retstr->var0.var0.var0 = 0.5;
    *&retstr->var0.var1.var0 = vadd_f32(v87, v92);
    v89 = v88 + v43 + 12.0 + v92.f32[0];
    *&v89 = v89;
    *&v89 = -*&v89;
    retstr->var1.var0.var0 = 0.0;
    retstr->var1.var1.var0 = *&v89;
    objc_msgSend_applyParagraphStyle_onLabelTransform_alignmentDimension_(self, v90, v89, v88, v92.f32[0], v72, retstr, 0);
  }

  else
  {
    *&retstr->var0.var0.var0 = 0;
    *&retstr->var0.var2.var0 = 0;
    *&retstr->var1.var1.var0 = 0x800000000;
    retstr->var3 = 0.0;
    retstr->var4 = 0;
  }

  return result;
}

- (LabelTransform)categoryAxisTitleTransform
{
  v8 = objc_msgSend_scene(self, a3, v3, v4, v5);

  *&retstr->var0.var0.var0 = 0;
  *&retstr->var0.var2.var0 = 0;
  *&retstr->var1.var1.var0 = 0x800000000;
  retstr->var3 = 0.0;
  retstr->var4 = 0;
  if (v8)
  {
    v14 = objc_msgSend_scene(self, v10, v11, v12, v13);
    v19 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v15, v16, v17, v18, v14);

    if (v19)
    {
      objc_msgSend_categoryLabelsOffset(v19, v20, v21, v22, v23);
    }

    else
    {
      v82 = 0.0;
      LODWORD(v81) = 0;
    }

    HIDWORD(v81) = 1056964608;
    v24 = objc_msgSend_info(self, v20, v21, v22, v23);
    v29 = objc_msgSend_axisForInfo_(TSCH3DChartCategoryAxisTitleSceneObject, v25, v26, v27, v28, v24);

    v34 = objc_msgSend_info(self, v30, v31, v32, v33);
    v39 = objc_msgSend_paragraphStyleForLabelsFontForInfo_(TSCHChartCategoryAxis, v35, v36, v37, v38, v34);

    objc_msgSend_floatValueForProperty_(v39, v40, v41, v42, v43, 17);
    v45 = *&v44;
    v49 = objc_msgSend_info(self, v46, v44, v47, v48);
    v54 = objc_msgSend_chartType(v49, v50, v51, v52, v53);

    if (objc_msgSend_intValueForProperty_defaultValue_(v29, v55, v56, v57, v58, 1059, 0))
    {
      v63 = objc_msgSend_supportsSeriesLabels(v54, v59, v60, v61, v62);
    }

    else
    {
      v63 = 0;
    }

    v65 = objc_msgSend_intValueForProperty_defaultValue_(v29, v59, v60, v61, v62, 1052, 1);
    v69 = 12.0;
    if (v63)
    {
      objc_msgSend_sizeOfSeriesLabels(self, v64, v66, v67, v68);
      LODWORD(v67) = 12.0;
      *&v66 = v45 + (v80 + 12.0);
      v69 = *&v66 + 12.0;
    }

    if (v65)
    {
      objc_msgSend_sizeOfCategoryAxisLabels(self, v64, v66, v67, v68);
      v69 = v69 + (v45 + v80);
    }

    *&v66 = -v69;
    retstr->var1.var1.var0 = 0.0;
    *&retstr->var0.var0.var0 = v81;
    retstr->var0.var2.var0 = v82;
    retstr->var1.var0.var0 = -v69;
    *&retstr->var2 = 0x42B4000000000008;
    retstr->var4 = 1;
    v70 = objc_msgSend_info(self, v64, v66, COERCE_DOUBLE(LODWORD(v82) | 0x3F00000000000000), v68);
    v75 = objc_msgSend_paragraphStyleForTitleFontForInfo_(TSCH3DChartCategoryAxisTitleSceneObject, v71, v72, v73, v74, v70);

    objc_msgSend_applyParagraphStyle_onLabelTransform_alignmentDimension_(self, v76, v77, v78, v79, v75, retstr, 1);
  }

  return result;
}

@end