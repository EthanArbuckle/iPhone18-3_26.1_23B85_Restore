@interface TSCH3DBarChartCircularAppearance
+ (BarExtrusionDetails)defaultDetails;
- (float)chartMinZForScene:(id)a3;
- (float)depthForScene:(id)a3;
@end

@implementation TSCH3DBarChartCircularAppearance

+ (BarExtrusionDetails)defaultDetails
{
  *&retstr->crossSection.detail = xmmword_2764D6120;
  retstr->crossSection.crossType = 3;
  retstr->spine.bevelHeight = 0.25;
  *&retstr->spine.bevelSlices = xmmword_2764D6130;
  retstr->spine.creaseAngle = 0.6;
  return result;
}

- (float)chartMinZForScene:(id)a3
{
  objc_msgSend_depthForScene_(self, a2, v3, v4, v5, a3);
  v8 = v7;
  WeakRetained = objc_loadWeakRetained(&self->super._properties);
  objc_msgSend_chartInitialDepthOffset(WeakRetained, v10, v11, v12, v13);
  v15 = v14;

  return v15 + v8 * -0.5;
}

- (float)depthForScene:(id)a3
{
  v7 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, a2, v3, v4, v5, a3);
  v12 = v7;
  if (v7)
  {
    objc_msgSend_stageScale(v7, v8, v9, v10, v11);
  }

  else
  {
    v23 = 0.0;
    v22 = 0;
  }

  isHorizontal = objc_msgSend_isHorizontal(v12, v8, v9, v10, v11, v22);
  WeakRetained = objc_loadWeakRetained(&self->super._properties);
  objc_msgSend_barWidth(WeakRetained, v15, v16, v17, v18);
  v20 = (v19 * *(&v22 | (4 * isHorizontal))) / v23;

  return v20;
}

@end