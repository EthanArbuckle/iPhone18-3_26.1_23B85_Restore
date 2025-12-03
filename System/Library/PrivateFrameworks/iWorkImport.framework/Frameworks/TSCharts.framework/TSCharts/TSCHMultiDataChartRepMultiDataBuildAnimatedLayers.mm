@interface TSCHMultiDataChartRepMultiDataBuildAnimatedLayers
+ (id)animatedLayers;
- (NSArray)allBackgroundFadingLayers;
- (NSArray)elementFadingLayers;
- (NSArray)layersAlreadyHaveProperTransforms;
- (id)layersRequiringGeometryTransformsBackgroundOnly:(BOOL)only;
@end

@implementation TSCHMultiDataChartRepMultiDataBuildAnimatedLayers

+ (id)animatedLayers
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (NSArray)allBackgroundFadingLayers
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_backgroundLayer(self, a2, v2, v3, v4);
  v28[0] = v6;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v8, v9, v10, v28, 1);

  v16 = objc_msgSend_legendLayer(self, v12, v13, v14, v15);

  if (v16)
  {
    v21 = objc_msgSend_legendLayer(self, v17, v18, v19, v20);
    v26 = objc_msgSend_arrayByAddingObject_(v11, v22, v23, v24, v25, v21);

    v11 = v26;
  }

  return v11;
}

- (NSArray)elementFadingLayers
{
  v6 = objc_msgSend_elementLayers(self, a2, v2, v3, v4);
  v11 = objc_msgSend_dataSetNameLayer(self, v7, v8, v9, v10);
  v16 = objc_msgSend_arrayByAddingObject_(v6, v12, v13, v14, v15, v11);
  v21 = objc_msgSend_referenceLineLayers(self, v17, v18, v19, v20);
  v26 = objc_msgSend_arrayByAddingObjectsFromArray_(v16, v22, v23, v24, v25, v21);

  return v26;
}

- (id)layersRequiringGeometryTransformsBackgroundOnly:(BOOL)only
{
  v47[2] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_backgroundLayer(self, a2, v3, v4, v5);
  v47[0] = v8;
  v13 = objc_msgSend_dataSetNameLayer(self, v9, v10, v11, v12);
  v47[1] = v13;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v15, v16, v17, v47, 2);

  v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v19, v20, v21, v22);
  objc_msgSend_addObjectsFromArray_(v23, v24, v25, v26, v27, v18);
  if (!only)
  {
    v32 = objc_msgSend_elementLayers(self, v28, v29, v30, v31);
    objc_msgSend_addObjectsFromArray_(v23, v33, v34, v35, v36, v32);

    v41 = objc_msgSend_referenceLineLayers(self, v37, v38, v39, v40);
    objc_msgSend_addObjectsFromArray_(v23, v42, v43, v44, v45, v41);
  }

  return v23;
}

- (NSArray)layersAlreadyHaveProperTransforms
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_legendLayer(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_legendLayer(self, v7, v8, v9, v10);
    objc_msgSend_setHidden_(v11, v12, v13, v14, v15, 0);

    v20 = objc_msgSend_legendLayer(self, v16, v17, v18, v19);
    v27[0] = v20;
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v22, v23, v24, v27, 1);
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  return v25;
}

@end