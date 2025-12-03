@interface TSCH3DVerticalChartTitlePositioner
- (LabelTransform)categoryAxisTitleTransform;
- (LabelTransform)mainTitleTransform;
- (LabelTransform)valueAxisTitleTransform;
- (float)categoryVerticalPadding;
- (tvec2<float>)sizeOfValueAxisLabelsForAlignment:(unsigned int)alignment;
@end

@implementation TSCH3DVerticalChartTitlePositioner

- (float)categoryVerticalPadding
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisForInfo_(TSCH3DChartCategoryAxisTitleSceneObject, v7, v8, v9, v10, v6);

  v16 = objc_msgSend_info(self, v12, v13, v14, v15);
  v21 = objc_msgSend_chartType(v16, v17, v18, v19, v20);

  if (objc_msgSend_intValueForProperty_defaultValue_(v11, v22, v23, v24, v25, 1059, 0))
  {
    v30 = objc_msgSend_supportsSeriesLabels(v21, v26, v27, v28, v29);
  }

  else
  {
    v30 = 0;
  }

  v32 = objc_msgSend_intValueForProperty_defaultValue_(v11, v26, v27, v28, v29, 1052, 1);
  v36 = 0.0;
  if (v30)
  {
    objc_msgSend_sizeOfSeriesLabels(self, v31, v33, v34, v35);
    *&v33 = v38;
    LODWORD(v34) = 12.0;
    v36 = v38 + 12.0;
  }

  if (v32)
  {
    objc_msgSend_sizeOfCategoryAxisLabels(self, v31, v33, v34, v35);
    v36 = v36 + (v38 + 12.0);
  }

  return floorf(v36);
}

- (LabelTransform)mainTitleTransform
{
  *&retstr->var2 = 8;
  retstr->var4 = 0;
  *&retstr->var0.var0.var0 = 0x3F99999A3F000000;
  retstr->var0.var2.var0 = 0.0;
  objc_msgSend_categoryVerticalPadding(self, a3, 0.0250000096, v3, v4);
  retstr->var1.var0.var0 = 0.0;
  retstr->var1.var1.var0 = *&v7;
  v11 = objc_msgSend_info(self, v8, v7, v9, v10);
  v21 = objc_msgSend_paragraphStyleForTitleFontForInfo_(TSCH3DChartMainTitleSceneObject, v12, v13, v14, v15, v11);

  objc_msgSend_applyParagraphStyle_onLabelTransform_alignmentDimension_(self, v16, v17, v18, v19, v21, retstr, 0);

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
      v58 = 0.0;
      v57 = 0.0;
    }

    *&v24 = sub_27615656C();
    v25 = *&v24;
    objc_msgSend_sizeOfValueAxisLabelsForAlignment_(self, v26, v24, v27, v28, 16);
    v33 = objc_msgSend_info(self, v29, v30, v31, v32);
    v38 = objc_msgSend_paragraphStyleForLabelsFontForInfo_(TSCHChartValueAxis, v34, v35, v36, v37, v33);

    objc_msgSend_floatValueForProperty_(v38, v39, v40, v41, v42, 17);
    *&v43 = v25 + v58;
    *&retstr->var2 = 0xC2B4000000000008;
    *&retstr->var0.var0.var0 = 0x3F0000003F800000;
    *&v45 = (v44 + floorf(v57)) + 12.0;
    retstr->var0.var2.var0 = v25 + v58;
    retstr->var1.var0.var0 = *&v45;
    retstr->var1.var1.var0 = 0.0;
    retstr->var4 = 1;
    v47 = objc_msgSend_info(self, v46, v45, v43, COERCE_DOUBLE(COERCE_UNSIGNED_INT(12.0) | 0x3F00000000000000));
    v52 = objc_msgSend_paragraphStyleForTitleFontForInfo_(TSCH3DChartValueAxisTitleSceneObject, v48, v49, v50, v51, v47);

    objc_msgSend_applyParagraphStyle_onLabelTransform_alignmentDimension_(self, v53, v54, v55, v56, v52, retstr, 1);
    retstr->var0.var1.var0 = 1.0 - retstr->var0.var1.var0;
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

  if (v8)
  {
    objc_msgSend_categoryVerticalPadding(self, v10, v11, v12, v13);
    v15 = *&v14;
    v19 = objc_msgSend_info(self, v16, v14, v17, v18);
    v24 = objc_msgSend_paragraphStyleForTitleFontForInfo_(TSCH3DChartCategoryAxisTitleSceneObject, v20, v21, v22, v23, v19);

    objc_msgSend_floatValueForProperty_(v24, v25, v26, v27, v28, 17);
    v30 = *&v29;
    *&retstr->var0.var0.var0 = 0;
    *&retstr->var0.var2.var0 = 0;
    *&retstr->var1.var1.var0 = 0x800000000;
    retstr->var3 = 0.0;
    retstr->var4 = 0;
    v34 = objc_msgSend_scene(self, v31, v29, v32, v33);
    v39 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v35, v36, v37, v38, v34);

    if (v39)
    {
      objc_msgSend_categoryLabelsOffset(v39, v40, v41, v42, v43);
      v44 = v45;
    }

    else
    {
      v44 = 0.0;
    }

    *&v43 = v30 + 12.0;
    *&v42 = (v15 + 12.0) + (v30 + 12.0);
    retstr->var0.var0.var0 = 0.5;
    *&retstr->var0.var1.var0 = v44;
    retstr->var2 = 4;
    *&v44 = -(*&v42 - v30);
    retstr->var1.var0.var0 = 0.0;
    retstr->var1.var1.var0 = *&v44;
    objc_msgSend_applyParagraphStyle_onLabelTransform_alignmentDimension_(self, v40, v44, v42, v43, v24, retstr, 0);
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

- (tvec2<float>)sizeOfValueAxisLabelsForAlignment:(unsigned int)alignment
{
  v9 = v3;
  v10 = objc_msgSend_scene(self, a2, v4, v5, v6);
  isFixedPositionForScene = objc_msgSend_isFixedPositionForScene_(TSCH3DChartValueAxisTitleSceneObject, v11, v12, v13, v14, v10);

  if (isFixedPositionForScene || (objc_msgSend_scene(self, v16, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend_valueAxisLabelAlignmentForScene_(TSCH3DChartAxisLabelsSceneObject, v21, v22, v23, v24, v20), v20, v25 == alignment))
  {

    return objc_msgSend_sizeOfValueAxisLabels(self, v16, v17, v18, v19);
  }

  else
  {
    *v9 = 0;
  }

  return v26;
}

@end