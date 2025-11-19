@interface TSCH3DFillSageFillData
+ (id)dataWithFill:(id)a3;
- (Color)diffuse;
- (Color)emissive;
- (Color)specular;
- (TSCH3DFillSageFillData)initWithFill:(id)a3;
- (float)layerRotationForIndex:(unint64_t)a3;
- (float)layerScaleForIndex:(unint64_t)a3;
- (float)shininess;
- (id)diffuseMaterial;
- (id)environment;
- (id)modulateMaterial;
- (id)phongMaterials;
- (id)textureForIndex:(unint64_t)a3;
- (int)layerTilingModeForIndex:(unint64_t)a3;
- (int64_t)layerBlendModeForIndex:(unint64_t)a3;
- (unint64_t)diffuseCount;
- (unint64_t)modulateCount;
- (void)p_addMaterial:(id)a3 blendMode:(int64_t)a4;
@end

@implementation TSCH3DFillSageFillData

+ (id)dataWithFill:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithFill_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DFillSageFillData)initWithFill:(id)a3
{
  v5 = a3;
  v54.receiver = self;
  v54.super_class = TSCH3DFillSageFillData;
  v6 = [(TSCH3DFillSageFillData *)&v54 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fill, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    textures = v7->_textures;
    v7->_textures = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    textureBlendModes = v7->_textureBlendModes;
    v7->_textureBlendModes = v10;

    if (objc_msgSend_diffuseCount(v7, v12, v13, v14, v15))
    {
      v20 = objc_msgSend_diffuseMaterial(v7, v16, v17, v18, v19);
      objc_msgSend_p_addMaterial_blendMode_(v7, v21, v22, v23, v24, v20, 1);
    }

    if (objc_msgSend_modulateCount(v7, v16, v17, v18, v19))
    {
      v29 = objc_msgSend_modulateMaterial(v7, v25, v26, v27, v28);
      objc_msgSend_p_addMaterial_blendMode_(v7, v30, v31, v32, v33, v29, 1);
    }

    v34 = objc_msgSend_environment(v7, v25, v26, v27, v28);
    v39 = objc_msgSend_materialEnumerator(v34, v35, v36, v37, v38);
    while (1)
    {

      v44 = objc_msgSend_nextObject(v39, v40, v41, v42, v43);
      v34 = v44;
      if (!v44)
      {
        break;
      }

      if (objc_msgSend_decalMode(v44, v45, v46, v47, v48))
      {
        objc_msgSend_p_addMaterial_blendMode_(v7, v49, v50, v51, v52, v34, 2);
      }

      else
      {
        objc_msgSend_p_addMaterial_blendMode_(v7, v49, v50, v51, v52, v34, 1);
      }
    }
  }

  return v7;
}

- (void)p_addMaterial:(id)a3 blendMode:(int64_t)a4
{
  v50 = a3;
  if (!self->_textures)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DFillSageFillData p_addMaterial:blendMode:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 158, 0, "invalid nil value for '%{public}s'", "_textures");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (!self->_textureBlendModes)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DFillSageFillData p_addMaterial:blendMode:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillImportExportAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 159, 0, "invalid nil value for '%{public}s'", "_textureBlendModes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  objc_msgSend_addObject_(self->_textures, v6, v7, v8, v9, v50);
  textureBlendModes = self->_textureBlendModes;
  v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v41, v42, v43, v44, a4);
  objc_msgSend_addObject_(textureBlendModes, v46, v47, v48, v49, v45);
}

- (id)phongMaterials
{
  v5 = objc_msgSend_lightingModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_materials(v5, v6, v7, v8, v9);

  return v10;
}

- (id)diffuseMaterial
{
  v5 = objc_msgSend_phongMaterials(self, a2, v2, v3, v4);
  v10 = objc_msgSend_diffuse(v5, v6, v7, v8, v9);

  return v10;
}

- (id)modulateMaterial
{
  v5 = objc_msgSend_phongMaterials(self, a2, v2, v3, v4);
  v10 = objc_msgSend_modulate(v5, v6, v7, v8, v9);

  return v10;
}

- (id)environment
{
  v5 = objc_msgSend_lightingModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_environment(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)diffuseCount
{
  v5 = objc_msgSend_diffuseMaterial(self, a2, v2, v3, v4);
  v10 = objc_msgSend_textureCount(v5, v6, v7, v8, v9) != 0;

  return v10;
}

- (unint64_t)modulateCount
{
  v5 = objc_msgSend_modulateMaterial(self, a2, v2, v3, v4);
  v10 = objc_msgSend_textureCount(v5, v6, v7, v8, v9) != 0;

  return v10;
}

- (float)shininess
{
  v5 = objc_msgSend_phongMaterials(self, a2, v2, v3, v4);
  v10 = objc_msgSend_shininess(v5, v6, v7, v8, v9);

  if (v10)
  {
    objc_msgSend_color(v10, v11, v12, v13, v14);
    v15 = v17;
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

- (Color)diffuse
{
  v5 = objc_msgSend_diffuseMaterial(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    objc_msgSend_color(v5, v6, v7, v8, v9);
    v11 = v19;
    v12 = v18;
    v13 = v20;
  }

  else
  {
    v13 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
  }

  v14 = 1.0;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  result.var3 = v14;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (Color)specular
{
  v5 = objc_msgSend_phongMaterials(self, a2, v2, v3, v4);
  v10 = objc_msgSend_specular(v5, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    objc_msgSend_color(v10, v11, v12, v13, v14);
    v16 = v24;
    v17 = v23;
    v18 = v25;
  }

  else
  {
    v18 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  v19 = 1.0;
  v20 = v17;
  v21 = v16;
  v22 = v18;
  result.var3 = v19;
  result.var2 = v22;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (Color)emissive
{
  v5 = objc_msgSend_phongMaterials(self, a2, v2, v3, v4);
  v10 = objc_msgSend_emissive(v5, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    objc_msgSend_color(v10, v11, v12, v13, v14);
    v16 = v24;
    v17 = v23;
    v18 = v25;
  }

  else
  {
    v18 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  v19 = 1.0;
  v20 = v17;
  v21 = v16;
  v22 = v18;
  result.var3 = v19;
  result.var2 = v22;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (float)layerScaleForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_materialAtIndex_(self, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_firstTiling(v6, v7, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_scale(v11, v12, v13, v14, v15);
    v18 = v22;
    v17 = v23;
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
  }

  v19 = v18 == v17;
  if (v18 < v17)
  {
    v17 = v18;
  }

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return v20;
}

- (float)layerRotationForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_materialAtIndex_(self, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_firstTiling(v6, v7, v8, v9, v10);
  objc_msgSend_rotation(v11, v12, v13, v14, v15);
  v17 = v16;

  return v17;
}

- (int64_t)layerBlendModeForIndex:(unint64_t)a3
{
  objc_opt_class();
  v9 = objc_msgSend_objectAtIndexedSubscript_(self->_textureBlendModes, v5, v6, v7, v8, a3);
  v10 = TSUCheckedDynamicCast();
  v15 = objc_msgSend_integerValue(v10, v11, v12, v13, v14);

  return v15;
}

- (int)layerTilingModeForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_materialAtIndex_(self, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_firstTiling(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_mode(v11, v12, v13, v14, v15);

  return v16;
}

- (id)textureForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_materialAtIndex_(self, a2, v3, v4, v5, a3);
  objc_opt_class();
  v11 = objc_msgSend_firstTexture(v6, v7, v8, v9, v10);
  v12 = TSUDynamicCast();

  if (v12)
  {
    v13 = v12;
  }

  return v12;
}

@end