@interface TSCH3DChartMainTitleSceneObject
+ (id)paragraphStyleForTitleFontForInfo:(id)a3;
- (BOOL)canRenderSelectionPath:(id)a3 forInfo:(id)a4;
- (LabelTransform)labelTransformForPositioner:(SEL)a3;
- (id)convertSelectionPathTo3D:(id)a3 path:(id)a4;
- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5;
- (id)textForInfo:(id)a3;
@end

@implementation TSCH3DChartMainTitleSceneObject

- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v12 = objc_msgSend_styleIndexForInfo_(v7, v8, v9, v10, v11, v5);
  v17 = objc_msgSend_selectionPathWithClass_styleIndex_type_name_arguments_(TSCH3DSelectionPath, v13, v14, v15, v16, v6, v12, @"text", @"chartTitle", 0);

  return v17;
}

- (id)convertSelectionPathTo3D:(id)a3 path:(id)a4
{
  v7 = objc_msgSend_selectionPathForInfo_scene_pickedPoint_(self, a2, v4, v5, v6, a3, 0, 0);

  return v7;
}

- (BOOL)canRenderSelectionPath:(id)a3 forInfo:(id)a4
{
  v4 = a3;
  v10 = objc_msgSend_type(v4, v5, v6, v7, v8);
  if (v10 == @"text")
  {
    v15 = objc_msgSend_name(v4, v9, v11, v12, v13);
    v14 = v15 == @"chartTitle";
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)textForInfo:(id)a3
{
  v6 = objc_msgSend_objectValueForProperty_(a3, a2, v3, v4, v5, 1124);

  return v6;
}

- (LabelTransform)labelTransformForPositioner:(SEL)a3
{
  v5 = a4;
  v11 = v5;
  if (v5)
  {
    objc_msgSend_mainTitleTransform(v5, v6, v7, v8, v9);
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

@end