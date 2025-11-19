@interface TSCH3DSageFillData
+ (id)TSPImageDataFromTexture:(id)a3;
+ (id)dataWithFillSetIdentifier:(id)a3;
+ (id)dataWithFillSetIdentifier:(id)a3 isLowRes:(BOOL)a4;
+ (id)dataWithProperties:(id)a3 layersProperties:(id)a4 identifier:(id)a5 imageSource:(id)a6;
+ (id)dataWithProperties:(id)a3 layersProperties:(id)a4 identifier:(id)a5 imageSource:(id)a6 isLowRes:(BOOL)a7;
+ (id)textureWithImageData:(id)a3;
- (BOOL)isLayerEnabledForIndex:(unint64_t)a3;
- (BOOL)layerIsEnvironmentMapForIndex:(unint64_t)a3;
- (Color)colorFromRedKey:(id)a3 greenKey:(id)a4 blueKey:(id)a5 defaultGray:(float)a6;
- (Color)diffuse;
- (Color)emissive;
- (Color)makeGray:(float)a3;
- (Color)specular;
- (ColorResult)colorFromRedKey:(SEL)a3 greenKey:(id)a4 blueKey:(id)a5;
- (TSCH3DSageFillData)initWithProperties:(id)a3 layersProperties:(id)a4 identifier:(id)a5 imageSource:(id)a6 isLowRes:(BOOL)a7;
- (float)layerRotationForIndex:(unint64_t)a3;
- (float)layerScaleForIndex:(unint64_t)a3;
- (float)opacity;
- (float)shininess;
- (id)objectForKey:(id)a3 index:(unint64_t)a4;
- (id)textureForIndex:(unint64_t)a3;
- (int)layerTilingModeForIndex:(unint64_t)a3;
- (int64_t)layerBlendModeForIndex:(unint64_t)a3;
@end

@implementation TSCH3DSageFillData

+ (id)textureWithImageData:(id)a3
{
  v6 = objc_msgSend_textureWithImageData_colorFill_optimizedMipmapData_textureSetId_imageName_(TSCH3DTSPImageDataTexture, a2, v3, v4, v5, a3, 0, 0, 0, 0);

  return v6;
}

+ (id)TSPImageDataFromTexture:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v9 = objc_msgSend_imageData(v4, v5, v6, v7, v8);

  return v9;
}

+ (id)dataWithFillSetIdentifier:(id)a3 isLowRes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_loadPropertiesDictionary(v6, v7, v8, v9, v10);
  v17 = objc_msgSend_objectForKey_(v11, v12, v13, v14, v15, @"SFCTextureLayersArrayKey");
  if (v17)
  {
    v21 = objc_msgSend_dataWithProperties_layersProperties_identifier_imageSource_isLowRes_(a1, v16, v18, v19, v20, v11, v17, v6, 0, v4);
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "+[TSCH3DSageFillData dataWithFillSetIdentifier:isLowRes:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageFillData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 49, 0, "invalid nil value for '%{public}s'", "layers");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    v21 = 0;
  }

  return v21;
}

+ (id)dataWithFillSetIdentifier:(id)a3
{
  v6 = objc_msgSend_dataWithFillSetIdentifier_isLowRes_(a1, a2, v3, v4, v5, a3, 0);

  return v6;
}

+ (id)dataWithProperties:(id)a3 layersProperties:(id)a4 identifier:(id)a5 imageSource:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 alloc];
  isLowRes = objc_msgSend_initWithProperties_layersProperties_identifier_imageSource_isLowRes_(v14, v15, v16, v17, v18, v10, v11, v12, v13, 0);

  return isLowRes;
}

+ (id)dataWithProperties:(id)a3 layersProperties:(id)a4 identifier:(id)a5 imageSource:(id)a6 isLowRes:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a1 alloc];
  isLowRes = objc_msgSend_initWithProperties_layersProperties_identifier_imageSource_isLowRes_(v16, v17, v18, v19, v20, v12, v13, v14, v15, v7);

  return isLowRes;
}

- (TSCH3DSageFillData)initWithProperties:(id)a3 layersProperties:(id)a4 identifier:(id)a5 imageSource:(id)a6 isLowRes:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = TSCH3DSageFillData;
  v17 = [(TSCH3DSageFillData *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_properties, a3);
    objc_storeStrong(&v18->_layersProperties, a4);
    objc_storeStrong(&v18->_identifier, a5);
    objc_storeStrong(&v18->_imageSource, a6);
    v18->_isLowRes = a7;
  }

  return v18;
}

- (ColorResult)colorFromRedKey:(SEL)a3 greenKey:(id)a4 blueKey:(id)a5
{
  v44 = a4;
  v10 = a5;
  v11 = a6;
  v16 = objc_msgSend_objectForKey_(self->_properties, v12, v13, v14, v15, v44);
  v21 = objc_msgSend_objectForKey_(self->_properties, v17, v18, v19, v20, v10);
  v26 = objc_msgSend_objectForKey_(self->_properties, v22, v23, v24, v25, v11);
  v31 = v26;
  if (v16 && v21 && v26)
  {
    objc_msgSend_floatValue(v16, v27, v28, v29, v30);
    v33 = *&v32;
    objc_msgSend_floatValue(v21, v34, v32, v35, v36);
    v38 = *&v37;
    objc_msgSend_floatValue(v31, v39, v37, v40, v41);
    retstr->var0 = 1;
    retstr->var1.var0 = v33;
    retstr->var1.var1 = v38;
    retstr->var1.var2 = v42;
    retstr->var1.var3 = 1.0;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1.var2 = 0;
    *&retstr->var1.var0 = 0;
  }

  return result;
}

- (Color)makeGray:(float)a3
{
  v3 = 1.0;
  result.var3 = v3;
  result.var2 = a3;
  result.var1 = a3;
  result.var0 = a3;
  return result;
}

- (float)opacity
{
  v5 = objc_msgSend_objectForKey_(self->_properties, a2, v2, v3, v4, @"SFCTextureBaseOpacityKey");
  v10 = v5;
  if (v5)
  {
    objc_msgSend_floatValue(v5, v6, v7, v8, v9);
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  return v12;
}

- (float)shininess
{
  v5 = objc_msgSend_objectForKey_(self->_properties, a2, v2, v3, v4, @"SFCTextureBaseShininessKey");
  v10 = v5;
  if (v5)
  {
    objc_msgSend_floatValue(v5, v6, v7, v8, v9);
    v12 = v11;
  }

  else
  {
    v12 = 0.2;
  }

  return v12;
}

- (Color)colorFromRedKey:(id)a3 greenKey:(id)a4 blueKey:(id)a5 defaultGray:(float)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_msgSend_colorFromRedKey_greenKey_blueKey_(self, v13, v14, v15, v16, v10, v11, v12);
  if (v33)
  {
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
  }

  else
  {
    *&v18 = a6;
    objc_msgSend_makeGray_(self, v17, v18, v19, v20);
    v21 = v25;
    v22 = v26;
    v23 = v27;
    v24 = v28;
  }

  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  result.var3 = v32;
  result.var2 = v31;
  result.var1 = v30;
  result.var0 = v29;
  return result;
}

- (Color)diffuse
{
  LODWORD(v2) = 1.0;
  (MEMORY[0x2821F9670])(self, sel_colorFromRedKey_greenKey_blueKey_defaultGray_, v2);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (Color)specular
{
  LODWORD(v2) = 1.0;
  (MEMORY[0x2821F9670])(self, sel_colorFromRedKey_greenKey_blueKey_defaultGray_, v2);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (Color)emissive
{
  (MEMORY[0x2821F9670])(self, sel_colorFromRedKey_greenKey_blueKey_defaultGray_, 0.0);
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)objectForKey:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_objectAtIndexedSubscript_(self->_layersProperties, v7, v8, v9, v10, a4);
  v16 = objc_msgSend_objectForKey_(v11, v12, v13, v14, v15, v6);

  return v16;
}

- (BOOL)isLayerEnabledForIndex:(unint64_t)a3
{
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_index_(self, v5, v6, v7, v8, @"SFCTextureLayerEnabledKey", a3);
  v10 = TSUCheckedDynamicCast();
  v15 = objc_msgSend_BOOLValue(v10, v11, v12, v13, v14);

  return v15;
}

- (float)layerScaleForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_objectForKey_index_(self, a2, v3, v4, v5, @"SFCTextureLayerScaleXKey", a3);
  v11 = v6;
  if (v6)
  {
    objc_msgSend_floatValue(v6, v7, v8, v9, v10);
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  return v13;
}

- (float)layerRotationForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_objectForKey_index_(self, a2, v3, v4, v5, @"SFCTextureLayerRotationKey", a3);
  v11 = v6;
  if (v6)
  {
    objc_msgSend_floatValue(v6, v7, v8, v9, v10);
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (BOOL)layerIsEnvironmentMapForIndex:(unint64_t)a3
{
  objc_opt_class();
  v9 = objc_msgSend_objectForKey_index_(self, v5, v6, v7, v8, @"SFCTextureLayerIsEnvironmentMapKey", a3);
  v10 = TSUCheckedDynamicCast();
  v15 = objc_msgSend_BOOLValue(v10, v11, v12, v13, v14);

  return v15;
}

- (int64_t)layerBlendModeForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_objectForKey_index_(self, a2, v3, v4, v5, @"SFCTextureLayerBlendModeKey", a3);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_intValue(v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = 1;
  }

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;

  return v14;
}

- (int)layerTilingModeForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_objectForKey_index_(self, a2, v3, v4, v5, @"SFCTextureLayerTilingModeKey", a3);
  v11 = v6;
  v12 = v6 && objc_msgSend_intValue(v6, v7, v8, v9, v10) != 2;

  return v12;
}

- (id)textureForIndex:(unint64_t)a3
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    v9 = objc_msgSend_textureForIndex_(imageSource, a2, v3, v4, v5, a3);
  }

  else
  {
    if ((objc_msgSend_isStoredInLocalBundle(self->_identifier, a2, v3, v4, v5) & 1) == 0 && (objc_msgSend_isOnDemandResource(self->_identifier, v10, v11, v12, v13) & 1) == 0)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DSageFillData textureForIndex:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageFillData.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 216, 0, "unable to find local images for %@ and is not an on demand resource", self->_identifier);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    v29 = objc_msgSend_objectForKey_index_(self, v10, v11, v12, v13, @"SFCTextureLayerImageKey", a3);
    if (!v29)
    {
      goto LABEL_31;
    }

    v34 = v29;
    if (self->_isLowRes)
    {
      v35 = objc_msgSend_stringByDeletingPathExtension(v29, v30, v31, v32, v33);
      v40 = objc_msgSend_pathExtension(v34, v36, v37, v38, v39);
      v45 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, v42, v43, v44, @"%@_%@.%@", v35, @"low_res", v40);
      v50 = objc_msgSend_lowResLocalDirectoryPath(self->_identifier, v46, v47, v48, v49);
      v55 = objc_msgSend_stringByAppendingPathComponent_(v50, v51, v52, v53, v54, v45);
    }

    else
    {
      v35 = objc_msgSend_localDirectoryPath(self->_identifier, v30, v31, v32, v33);
      v55 = objc_msgSend_stringByAppendingPathComponent_(v35, v56, v57, v58, v59, v34);
    }

    if (v55)
    {
      v64 = MEMORY[0x277D80828];
      v65 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v60, v61, v62, v63, v55);
      v70 = objc_msgSend_readOnlyDataFromURL_(v64, v66, v67, v68, v69, v65);
    }

    else
    {
      v70 = 0;
    }

    v71 = objc_msgSend_digest(v70, v60, v61, v62, v63);

    if (v71)
    {
      v190 = v55;
      v76 = objc_msgSend_dataWithTSPImageData_(TSCH3DTSPImageData, v72, v73, v74, v75, v70);
      v81 = objc_msgSend_sharedInstance(TSCHAssetColorMap, v77, v78, v79, v80);
      v86 = objc_msgSend_colorForFilename_fillSetIdentifier_(v81, v82, v83, v84, v85, v34, self->_identifier);

      if (objc_msgSend_layerIsEnvironmentMapForIndex_(self, v87, v88, v89, v90, a3))
      {
        if (objc_msgSend_layerBlendModeForIndex_(self, v91, v92, v93, v94, a3) == 1)
        {
          v97 = 1.0;
        }

        else
        {
          v97 = 0.0;
        }

        v98 = MEMORY[0x277D81180];
        objc_msgSend_redComponent(v86, v95, 0.0, 1.0, v96);
        v100 = v99;
        objc_msgSend_greenComponent(v86, v101, v99, v102, v103);
        v105 = v104;
        objc_msgSend_blueComponent(v86, v106, v104, v107, v108);
        v111 = objc_msgSend_colorWithRed_green_blue_alpha_(v98, v109, v100, v105, v110, v97);

        v86 = v111;
      }

      v112 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v91, v92, v93, v94, v86);
      v117 = objc_msgSend_mipmapLocalDirectoryPath(self->_identifier, v113, v114, v115, v116);
      v122 = objc_msgSend_mipmapNameFromImageName_(TSCH3DMipmaps, v118, v119, v120, v121, v34);
      v127 = objc_msgSend_stringByAppendingPathComponent_(v117, v123, v124, v125, v126, v122);

      v132 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v128, v129, v130, v131);
      v137 = objc_msgSend_fileExistsAtPath_(v132, v133, v134, v135, v136, v127);

      if (v137)
      {
        if (v127)
        {
          v142 = MEMORY[0x277D80828];
          v143 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v138, v139, v140, v141, v127);
          v148 = objc_msgSend_readOnlyDataFromURL_(v142, v144, v145, v146, v147, v143);
        }

        else
        {
          v148 = 0;
        }

        v168 = objc_msgSend_dataWithTSPData_(TSCH3DTSPMipmapData, v138, v139, v140, v141, v148);
      }

      else
      {
        v168 = 0;
      }

      v169 = objc_msgSend_textureSetID(self->_identifier, v138, v139, v140, v141);
      v9 = objc_msgSend_textureWithImageData_colorFill_optimizedMipmapData_textureSetId_imageName_(TSCH3DTSPImageDataTexture, v170, v171, v172, v173, v76, v112, v168, v169, v34);

      v55 = v190;
    }

    else
    {
      v76 = objc_msgSend_fallbackColor(v70, v72, v73, v74, v75);
      if (!v76)
      {
        v153 = MEMORY[0x277D812E8];
        v154 = objc_msgSend_textureSetFilename(self->_identifier, v149, v150, v151, v152);
        v159 = objc_msgSend_locatorForSageChartTextureSet_image_(v153, v155, v156, v157, v158, v154, v34);

        v76 = objc_msgSend_colorForResource_(MEMORY[0x277D812E8], v160, v161, v162, v163, v159);

        if (!v76)
        {
          v76 = objc_msgSend_grayColor(MEMORY[0x277D81180], v149, v150, v151, v152);
        }
      }

      v86 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v149, v150, v151, v152, v76);
      v9 = objc_msgSend_textureWithTSDFill_(TSCH3DTSDFillTexture, v164, v165, v166, v167, v86);
    }

    if (!v9)
    {
LABEL_31:
      v174 = MEMORY[0x277D81150];
      v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCH3DSageFillData textureForIndex:]");
      v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v176, v177, v178, v179, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageFillData.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v174, v181, v182, v183, v184, v175, v180, 262, 0, "invalid nil value for '%{public}s'", "result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v185, v186, v187, v188);
      v9 = 0;
    }
  }

  return v9;
}

@end