@interface TSCH2DChartType
- (BOOL)supportsIndividualShadowRendering;
- (id)animationDeliveryStylesForFilter:(id)filter;
@end

@implementation TSCH2DChartType

- (id)animationDeliveryStylesForFilter:(id)filter
{
  v39.receiver = self;
  v39.super_class = TSCH2DChartType;
  v4 = [(TSCHChartType *)&v39 animationDeliveryStylesForFilter:filter];
  v9 = objc_msgSend_mutableCopy(v4, v5, v6, v7, v8);

  objc_msgSend_addIndex_(v9, v10, v11, v12, v13, 0);
  objc_msgSend_addIndex_(v9, v14, v15, v16, v17, 104);
  objc_msgSend_addIndex_(v9, v18, v19, v20, v21, 105);
  if (objc_msgSend_supportsElementChunking(self, v22, v23, v24, v25))
  {
    objc_msgSend_addIndex_(v9, v26, v27, v28, v29, 106);
    objc_msgSend_addIndex_(v9, v30, v31, v32, v33, 107);
    objc_msgSend_addIndex_(v9, v34, v35, v36, v37, 108);
  }

  return v9;
}

- (BOOL)supportsIndividualShadowRendering
{
  v5 = objc_msgSend_feature(self, a2, v2, v3, v4);
  v10 = objc_msgSend_supportsIndividualShadowRendering(v5, v6, v7, v8, v9);

  return v10;
}

@end