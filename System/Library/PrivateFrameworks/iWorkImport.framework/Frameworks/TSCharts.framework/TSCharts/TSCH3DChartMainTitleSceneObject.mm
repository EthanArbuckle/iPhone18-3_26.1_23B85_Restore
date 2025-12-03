@interface TSCH3DChartMainTitleSceneObject
+ (id)paragraphStyleForTitleFontForInfo:(id)info;
- (BOOL)canRenderSelectionPath:(id)path forInfo:(id)info;
- (LabelTransform)labelTransformForPositioner:(SEL)positioner;
- (id)convertSelectionPathTo3D:(id)d path:(id)path;
- (id)selectionPathForInfo:(id)info scene:(id)scene pickedPoint:(id)point;
- (id)textForInfo:(id)info;
@end

@implementation TSCH3DChartMainTitleSceneObject

- (id)selectionPathForInfo:(id)info scene:(id)scene pickedPoint:(id)point
{
  infoCopy = info;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v12 = objc_msgSend_styleIndexForInfo_(v7, v8, v9, v10, v11, infoCopy);
  v17 = objc_msgSend_selectionPathWithClass_styleIndex_type_name_arguments_(TSCH3DSelectionPath, v13, v14, v15, v16, v6, v12, @"text", @"chartTitle", 0);

  return v17;
}

- (id)convertSelectionPathTo3D:(id)d path:(id)path
{
  v7 = objc_msgSend_selectionPathForInfo_scene_pickedPoint_(self, a2, v4, v5, v6, d, 0, 0);

  return v7;
}

- (BOOL)canRenderSelectionPath:(id)path forInfo:(id)info
{
  pathCopy = path;
  v10 = objc_msgSend_type(pathCopy, v5, v6, v7, v8);
  if (v10 == @"text")
  {
    v15 = objc_msgSend_name(pathCopy, v9, v11, v12, v13);
    v14 = v15 == @"chartTitle";
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)textForInfo:(id)info
{
  v6 = objc_msgSend_objectValueForProperty_(info, a2, v3, v4, v5, 1124);

  return v6;
}

- (LabelTransform)labelTransformForPositioner:(SEL)positioner
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

+ (id)paragraphStyleForTitleFontForInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_styleIndexForInfo_(self, v5, v6, v7, v8, infoCopy);
  v14 = objc_msgSend_paragraphStyleAtIndex_(infoCopy, v10, v11, v12, v13, v9);

  return v14;
}

@end