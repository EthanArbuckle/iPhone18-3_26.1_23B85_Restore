@interface TSCH3DPieChartTitlePositioner
- (LabelTransform)mainTitleTransform;
@end

@implementation TSCH3DPieChartTitlePositioner

- (LabelTransform)mainTitleTransform
{
  retstr->var3 = 0.0;
  retstr->var4 = 0;
  *&retstr->var0.var0.var0 = xmmword_2764D61D0;
  *&retstr->var1.var1.var0 = 0x800000000;
  v7 = objc_msgSend_info(self, a3, 0.0140625033, v3, v4);
  v17 = objc_msgSend_paragraphStyleForTitleFontForInfo_(TSCH3DChartMainTitleSceneObject, v8, v9, v10, v11, v7);

  objc_msgSend_applyParagraphStyle_onLabelTransform_alignmentDimension_(self, v12, v13, v14, v15, v17, retstr, 0);

  return result;
}

@end