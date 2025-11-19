@interface TSCH3DChartAxisTitleSceneObject
+ (id)paragraphStyleForTitleFontForInfo:(id)a3;
+ (unint64_t)styleIndexForInfo:(id)a3;
- (BOOL)canRenderSelectionPath:(id)a3 forInfo:(id)a4;
- (BOOL)enabledForInfo:(id)a3;
- (LabelTransform)labelTransformForPositioner:(SEL)a3;
- (id)convertSelectionPathTo3D:(id)a3 path:(id)a4;
- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5;
- (id)textForInfo:(id)a3;
@end

@implementation TSCH3DChartAxisTitleSceneObject

+ (unint64_t)styleIndexForInfo:(id)a3
{
  v6 = objc_msgSend_axisForInfo_(a1, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_intValueForProperty_defaultValue_(v6, v7, v8, v9, v10, 1063, 0);

  return v11;
}

- (BOOL)enabledForInfo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v9 = objc_msgSend_axisForInfo_(v4, v5, v6, v7, v8, v3);
  v14 = objc_msgSend_intValueForProperty_defaultValue_(v9, v10, v11, v12, v13, 1060, 0) != 0;

  return v14;
}

- (id)textForInfo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v9 = objc_msgSend_axisForInfo_(v4, v5, v6, v7, v8, v3);
  v14 = objc_msgSend_objectValueForProperty_(v9, v10, v11, v12, v13, 1062);

  return v14;
}

- (LabelTransform)labelTransformForPositioner:(SEL)a3
{
  v5 = a4;
  v11 = v5;
  if (v5)
  {
    objc_msgSend_valueAxisTitleTransform(v5, v6, v7, v8, v9);
  }

  else
  {
    *&retstr->var0.var0.var0 = 0u;
    *&retstr->var1.var1.var0 = 0u;
  }

  return result;
}

+ (id)paragraphStyleForTitleFontForInfo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_styleIndexForInfo_(a1, v5, v6, v7, v8, v4);
  v14 = objc_msgSend_paragraphStyleAtIndex_(v4, v10, v11, v12, v13, v9);

  return v14;
}

- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_class();
  v11 = objc_msgSend_axisForInfo_(v6, v7, v8, v9, v10, v5);
  v16 = objc_msgSend_axisID(v11, v12, v13, v14, v15);

  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v23 = objc_msgSend_styleIndexForInfo_(v18, v19, v20, v21, v22, v5);
  v35[0] = v16;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v25, v26, v27, v35, 1);
  v33 = objc_msgSend_selectionPathWithClass_styleIndex_type_name_arguments_(TSCH3DSelectionPath, v29, v30, v31, v32, v17, v23, @"text", @"axisTitle", v28);

  return v33;
}

- (id)convertSelectionPathTo3D:(id)a3 path:(id)a4
{
  v7 = objc_msgSend_selectionPathForInfo_scene_pickedPoint_(self, a2, v4, v5, v6, a3, 0, 0);

  return v7;
}

- (BOOL)canRenderSelectionPath:(id)a3 forInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v12 = objc_msgSend_axisForInfo_(v7, v8, v9, v10, v11, v6);
  v17 = objc_msgSend_axisID(v12, v13, v14, v15, v16);

  v23 = objc_msgSend_type(v5, v18, v19, v20, v21);
  if (v23 == @"text")
  {
    v28 = objc_msgSend_name(v5, v22, v24, v25, v26);

    if (v28 != @"axisTitle")
    {
      isEqual = 0;
      goto LABEL_6;
    }

    v23 = objc_msgSend_argumentAtIndex_(v5, v29, v30, v31, v32, 0);
    isEqual = objc_msgSend_isEqual_(v17, v34, v35, v36, v37, v23);
  }

  else
  {
    isEqual = 0;
  }

LABEL_6:
  return isEqual;
}

@end