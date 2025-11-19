@interface TSCH3DBarResourceCacheItem
+ (id)itemWithExtrusionSetting:(const BarExtrusionSetting *)a3;
- (TSCH3DBarResourceCacheItem)initWithExtrusionSetting:(const BarExtrusionSetting *)a3;
@end

@implementation TSCH3DBarResourceCacheItem

+ (id)itemWithExtrusionSetting:(const BarExtrusionSetting *)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithExtrusionSetting_(v4, v5, v6, v7, v8, a3);

  return v9;
}

- (TSCH3DBarResourceCacheItem)initWithExtrusionSetting:(const BarExtrusionSetting *)a3
{
  v63.receiver = self;
  v63.super_class = TSCH3DBarResourceCacheItem;
  v4 = [(TSCH3DBarResourceCacheItem *)&v63 init];
  if (v4)
  {
    v5 = objc_alloc_init(TSCH3DBarExtrusionGeometry);
    barGeometry = v4->_barGeometry;
    v4->_barGeometry = v5;

    v7 = v4->_barGeometry;
    v8 = *&a3->details.crossSection.adaptiveThreshold;
    v60[0] = *&a3->size;
    v60[1] = v8;
    v9 = *&a3->details.spine.stride;
    v61 = *&a3->details.spine.bevelHeight;
    v62 = v9;
    objc_msgSend_setExtrusionSetting_(v7, v10, *&v61, *&v9, v11, v60);
    objc_msgSend_generateArrays(v4->_barGeometry, v12, v13, v14, v15);
    if (a3->isCylindrical)
    {
      sub_2761EECB8(v60, v16, v17);
      v22 = objc_msgSend_generatorWithBBox_(TSCH3DTexCoordGenerationCylinder, v18, v19, v20, v21, v60);
    }

    else
    {
      sub_2761EECB8(v59, v16, v17);
      v22 = objc_msgSend_generatorWithBBox_(TSCH3DTexCoordGenerationCube, v27, v28, v29, v30, v59);
    }

    v31 = v22;
    v32 = objc_msgSend_normalDirectionMapper(v4->_barGeometry, v23, v24, v25, v26);
    objc_msgSend_setNormalDirectionMapper_(v31, v33, v34, v35, v36, v32);

    v37 = [TSCH3DBarVertexResource alloc];
    v42 = objc_msgSend_initWithGeometry_(v37, v38, v39, v40, v41, v4->_barGeometry);
    vertexResource = v4->_vertexResource;
    v4->_vertexResource = v42;

    v44 = [TSCH3DBarNormalResource alloc];
    v49 = objc_msgSend_initWithGeometry_(v44, v45, v46, v47, v48, v4->_barGeometry);
    normalResource = v4->_normalResource;
    v4->_normalResource = v49;

    v51 = [TSCH3DBarTexCoordResource alloc];
    v56 = objc_msgSend_initWithGeometry_generator_(v51, v52, v53, v54, v55, v4->_barGeometry, v31);
    texCoordResource = v4->_texCoordResource;
    v4->_texCoordResource = v56;
  }

  return v4;
}

@end