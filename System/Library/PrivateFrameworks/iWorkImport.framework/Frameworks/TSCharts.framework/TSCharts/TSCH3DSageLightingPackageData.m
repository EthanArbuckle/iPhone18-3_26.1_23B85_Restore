@interface TSCH3DSageLightingPackageData
+ (id)dataWithDictionary:(id)a3;
- (BOOL)enabledAtIndex:(unint64_t)a3;
- (Color)ambientColorAtIndex:(unint64_t)a3;
- (Color)colorAtIndex:(unint64_t)a3 redKey:(id)a4 greenKey:(id)a5 blueKey:(id)a6;
- (Color)diffuseColorAtIndex:(unint64_t)a3;
- (Color)specularColorAtIndex:(unint64_t)a3;
- (TSCH3DSageLightingPackageData)initWithDictionary:(id)a3;
- (Vector3)attenuationAtIndex:(unint64_t)a3;
- (Vector3)directionAtIndex:(unint64_t)a3;
- (Vector3)positionAtIndex:(unint64_t)a3;
- (float)cutOffAngleAtIndex:(unint64_t)a3;
- (float)dropOffRateAtIndex:(unint64_t)a3;
- (float)intensityAtIndex:(unint64_t)a3;
- (id)nameAtIndex:(unint64_t)a3;
- (int64_t)coordinateSpaceAtIndex:(unint64_t)a3;
- (int64_t)typeAtIndex:(unint64_t)a3;
- (unint64_t)count;
@end

@implementation TSCH3DSageLightingPackageData

+ (id)dataWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithDictionary_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DSageLightingPackageData)initWithDictionary:(id)a3
{
  v5 = a3;
  v59.receiver = self;
  v59.super_class = TSCH3DSageLightingPackageData;
  v6 = [(TSCH3DSageLightingPackageData *)&v59 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_package, a3);
    v12 = objc_msgSend_objectForKey_(v7->_package, v8, v9, v10, v11, @"lights");
    objc_storeWeak(&v7->_lights, v12);

    v17 = objc_msgSend_objectForKey_(v7->_package, v13, v14, v15, v16, @"name");
    objc_opt_class();
    LOBYTE(v12) = objc_opt_isKindOfClass();

    if ((v12 & 1) == 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCH3DSageLightingPackageData initWithDictionary:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 86, 0, "invalid class or nil for lighting package name in package %@", v7->_package);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }

    WeakRetained = objc_loadWeakRetained(&v7->_lights);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCH3DSageLightingPackageData initWithDictionary:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 88, 0, "invalid class or nil for lighting package lights in package %@", v7->_package);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    }
  }

  return v7;
}

- (unint64_t)count
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v7 = objc_msgSend_count(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (id)nameAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);
  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"name");

  return v14;
}

- (int64_t)typeAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);
  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"type");

  if ((objc_msgSend_isEqualToString_(v14, v15, v16, v17, v18, @"point") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v14, v19, v20, v21, v22, @"directional"))
    {
      v23 = 1;
      goto LABEL_7;
    }

    if (objc_msgSend_isEqualToString_(v14, v24, v25, v26, v27, @"spot"))
    {
      v23 = 2;
      goto LABEL_7;
    }

    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCH3DSageLightingPackageData typeAtIndex:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 115, 0, "invalid light type %@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v23 = 0;
LABEL_7:

  return v23;
}

- (Color)colorAtIndex:(unint64_t)a3 redKey:(id)a4 greenKey:(id)a5 blueKey:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v18 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v14, v15, v16, v17, a3);

  v23 = objc_msgSend_objectForKey_(v18, v19, v20, v21, v22, v10);
  v28 = objc_msgSend_objectForKey_(v18, v24, v25, v26, v27, v11);
  v33 = objc_msgSend_objectForKey_(v18, v29, v30, v31, v32, v12);
  v38 = v33;
  if (v23 && v28 && v33)
  {
    objc_msgSend_floatValue(v23, v34, v35, v36, v37);
    v40 = *&v39;
    objc_msgSend_floatValue(v28, v41, v39, v42, v43);
    v45 = *&v44;
    objc_msgSend_floatValue(v38, v46, v44, v47, v48);
    v50 = v49;
    v51 = 1.0;
  }

  else
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "[TSCH3DSageLightingPackageData colorAtIndex:redKey:greenKey:blueKey:]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v59, v60, v61, v62, v53, v58, 125, 0, "light colors not defined propertly (%@, %@, %@)", v23, v28, v38);

    v40 = 0.0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
    v45 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
  }

  v67 = v40;
  v68 = v45;
  v69 = v50;
  v70 = v51;
  result.var3 = v70;
  result.var2 = v69;
  result.var1 = v68;
  result.var0 = v67;
  return result;
}

- (Color)ambientColorAtIndex:(unint64_t)a3
{
  (MEMORY[0x2821F9670])(self, sel_colorAtIndex_redKey_greenKey_blueKey_);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (Color)diffuseColorAtIndex:(unint64_t)a3
{
  (MEMORY[0x2821F9670])(self, sel_colorAtIndex_redKey_greenKey_blueKey_);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (Color)specularColorAtIndex:(unint64_t)a3
{
  (MEMORY[0x2821F9670])(self, sel_colorAtIndex_redKey_greenKey_blueKey_);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (float)intensityAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);
  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"intensity");

  if (v14)
  {
    objc_msgSend_floatValue(v14, v15, v16, v17, v18);
    v20 = v19;
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DSageLightingPackageData intensityAtIndex:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 155, 0, "intensity value does not exist");

    v20 = 0.0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  return v20;
}

- (Vector3)attenuationAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);

  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"attenuationQuadratic");
  v19 = objc_msgSend_objectForKey_(v9, v15, v16, v17, v18, @"attenuationLinear");
  v24 = objc_msgSend_objectForKey_(v9, v20, v21, v22, v23, @"attenuationConstant");
  v29 = v24;
  if (v14 && v19 && v24)
  {
    objc_msgSend_floatValue(v14, v25, v26, v27, v28);
    v31 = *&v30;
    objc_msgSend_floatValue(v19, v32, v30, v33, v34);
    v36 = *&v35;
    objc_msgSend_floatValue(v29, v37, v35, v38, v39);
    v41 = v40;
  }

  else
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DSageLightingPackageData attenuationAtIndex:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 165, 0, "invalid light attenuation (%@, %@, %@)", v14, v19, v29);

    v41 = 0.0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    v36 = 0.0;
    v31 = 0.0;
  }

  v57 = v31;
  v58 = v36;
  v59 = v41;
  result.var2 = v59;
  result.var1 = v58;
  result.var0 = v57;
  return result;
}

- (int64_t)coordinateSpaceAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);
  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"coordinateSpace");

  if (objc_msgSend_isEqualToString_(v14, v15, v16, v17, v18, @"chart"))
  {
    goto LABEL_5;
  }

  if ((objc_msgSend_isEqualToString_(v14, v19, v20, v21, v22, @"world") & 1) == 0)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCH3DSageLightingPackageData coordinateSpaceAtIndex:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 180, 0, "invalid coordinate space %@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
LABEL_5:
    v27 = 1;
    goto LABEL_6;
  }

  v27 = 0;
LABEL_6:

  return v27;
}

- (BOOL)enabledAtIndex:(unint64_t)a3
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v10 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v6, v7, v8, v9, a3);
  v15 = objc_msgSend_objectForKey_(v10, v11, v12, v13, v14, @"on");
  v16 = TSUDynamicCast();
  v21 = objc_msgSend_BOOLValue(v16, v17, v18, v19, v20);

  return v21;
}

- (Vector3)positionAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);

  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"xLocation");
  v19 = objc_msgSend_objectForKey_(v9, v15, v16, v17, v18, @"yLocation");
  v24 = objc_msgSend_objectForKey_(v9, v20, v21, v22, v23, @"zLocation");
  v29 = v24;
  if (v14 && v19 && v24)
  {
    objc_msgSend_floatValue(v14, v25, v26, v27, v28);
    v31 = *&v30;
    objc_msgSend_floatValue(v19, v32, v30, v33, v34);
    v36 = *&v35;
    objc_msgSend_floatValue(v29, v37, v35, v38, v39);
    v41 = v40;
  }

  else
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DSageLightingPackageData positionAtIndex:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 193, 0, "invalid light position (%@, %@, %@)", v14, v19, v29);

    v41 = 0.0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    v36 = 0.0;
    v31 = 0.0;
  }

  v57 = v31;
  v58 = v36;
  v59 = v41;
  result.var2 = v59;
  result.var1 = v58;
  result.var0 = v57;
  return result;
}

- (Vector3)directionAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);

  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"xDirection");
  v19 = objc_msgSend_objectForKey_(v9, v15, v16, v17, v18, @"yDirection");
  v24 = objc_msgSend_objectForKey_(v9, v20, v21, v22, v23, @"zDirection");
  v29 = v24;
  if (v14 && v19 && v24)
  {
    objc_msgSend_floatValue(v14, v25, v26, v27, v28);
    v31 = *&v30;
    objc_msgSend_floatValue(v19, v32, v30, v33, v34);
    v36 = *&v35;
    objc_msgSend_floatValue(v29, v37, v35, v38, v39);
    v41 = v40;
  }

  else
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DSageLightingPackageData directionAtIndex:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 205, 0, "invalid light direction (%@, %@, %@)", v14, v19, v29);

    v41 = 0.0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    v36 = 0.0;
    v31 = 0.0;
  }

  v57 = v31;
  v58 = v36;
  v59 = v41;
  result.var2 = v59;
  result.var1 = v58;
  result.var0 = v57;
  return result;
}

- (float)cutOffAngleAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);
  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"cutOffAngle");

  if (!v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DSageLightingPackageData cutOffAngleAtIndex:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 214, 0, "invalid cut off angle %@", 0);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  objc_msgSend_floatValue(v14, v15, v16, v17, v18);
  v35 = v34;

  return v35;
}

- (float)dropOffRateAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lights);
  v9 = objc_msgSend_objectAtIndexedSubscript_(WeakRetained, v5, v6, v7, v8, a3);
  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, @"dropOffRate");

  if (!v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DSageLightingPackageData dropOffRateAtIndex:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageLightingPackageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 220, 0, "invalid drop off %@", 0);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  objc_msgSend_floatValue(v14, v15, v16, v17, v18);
  v35 = v34;

  return v35;
}

@end