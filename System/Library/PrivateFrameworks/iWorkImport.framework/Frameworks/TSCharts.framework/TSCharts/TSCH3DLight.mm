@interface TSCH3DLight
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)light;
+ (id)lightClasses;
- (BOOL)isEqual:(id)equal;
- (TSCH3DLight)init;
- (TSCH3DLight)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCH3DLight)initWithLightArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (tvec3<float>)attenuation;
- (tvec4<float>)ambientColor;
- (tvec4<float>)diffuseColor;
- (tvec4<float>)specularColor;
- (void)affect:(id)affect states:(id)states texturePool:(id)pool;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToLightArchive:(void *)archive archiver:(id)archiver;
- (void)setAmbientColor:(tvec4<float>)color;
- (void)setAttenuation:(tvec3<float>)attenuation;
- (void)setDiffuseColor:(tvec4<float>)color;
- (void)setSpecularColor:(tvec4<float>)color;
@end

@implementation TSCH3DLight

+ (id)lightClasses
{
  if (qword_280A46878 != -1)
  {
    sub_2764A6AE4();
  }

  v3 = qword_280A46870;

  return v3;
}

+ (id)light
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DLight)init
{
  v43.receiver = self;
  v43.super_class = TSCH3DLight;
  v3 = [(TSCH3DLight *)&v43 init];
  if (v3)
  {
    v7 = objc_msgSend_copy(@"Unnamed", v2, v4, v5, v6);
    name = v3->_name;
    v3->_name = v7;

    v9 = [TSCH3DVector alloc];
    v42 = 0uLL;
    v14 = objc_msgSend_initWithVec4_(v9, v10, v11, v12, v13, &v42);
    ambientColor = v3->_ambientColor;
    v3->_ambientColor = v14;

    v16 = [TSCH3DVector alloc];
    __asm { FMOV            V0.4S, #1.0 }

    v41 = _Q0;
    v42 = _Q0;
    v25 = objc_msgSend_initWithVec4_(v16, v22, *&_Q0, v23, v24, &v42);
    diffuseColor = v3->_diffuseColor;
    v3->_diffuseColor = v25;

    v27 = [TSCH3DVector alloc];
    v42 = v41;
    v31 = objc_msgSend_initWithVec4_(v27, v28, *&v41, v29, v30, &v42);
    specularColor = v3->_specularColor;
    v3->_specularColor = v31;

    v3->_intensity = 1.0;
    v33 = [TSCH3DVector alloc];
    *&v42 = 0;
    DWORD2(v42) = 1065353216;
    v38 = objc_msgSend_initWithVec3_(v33, v34, v35, v36, v37, &v42);
    attenuation = v3->_attenuation;
    v3->_attenuation = v38;

    v3->_coordinateSpace = 0;
    v3->_enabled = 1;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v9 = objc_msgSend_name(self, v4, v6, v7, v8);
    objc_msgSend_setName_(v5, v10, v11, v12, v13, v9);

    objc_msgSend_ambientColor(self, v14, v15, v16, v17);
    v74 = v73;
    objc_msgSend_setAmbientColor_(v5, v18, *&v73, v19, v20, &v74);
    objc_msgSend_diffuseColor(self, v21, v22, v23, v24);
    v74 = v72;
    objc_msgSend_setDiffuseColor_(v5, v25, *&v72, v26, v27, &v74);
    objc_msgSend_specularColor(self, v28, v29, v30, v31);
    v74 = v71;
    objc_msgSend_setSpecularColor_(v5, v32, *&v71, v33, v34, &v74);
    objc_msgSend_intensity(self, v35, v36, v37, v38);
    objc_msgSend_setIntensity_(v5, v39, v40, v41, v42);
    objc_msgSend_attenuation(self, v43, v44, v45, v46);
    *&v74 = v69;
    DWORD2(v74) = v70;
    objc_msgSend_setAttenuation_(v5, v47, COERCE_DOUBLE(__PAIR64__(HIDWORD(v69), v70)), v48, v49, &v74);
    v54 = objc_msgSend_coordinateSpace(self, v50, v51, v52, v53);
    objc_msgSend_setCoordinateSpace_(v5, v55, v56, v57, v58, v54);
    v63 = objc_msgSend_enabled(self, v59, v60, v61, v62);
    objc_msgSend_setEnabled_(v5, v64, v65, v66, v67, v63);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v43 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    v6 = v5;
    v43 = v5 && ((v7 = *(v5 + 8), v8 = self->_name, v9 = v7, !(v8 | v9)) || (v14 = v9, isEqual = objc_msgSend_isEqual_(v8, v10, v11, v12, v13, v9), v14, v8, isEqual)) && ((v16 = *(v6 + 16), v17 = self->_ambientColor, v18 = v16, !(v17 | v18)) || (v23 = v18, v24 = objc_msgSend_isEqual_(v17, v19, v20, v21, v22, v18), v23, v17, v24)) && ((v25 = *(v6 + 24), v26 = self->_diffuseColor, v27 = v25, !(v26 | v27)) || (v32 = v27, v33 = objc_msgSend_isEqual_(v26, v28, v29, v30, v31, v27), v32, v26, v33)) && ((v34 = *(v6 + 32), v35 = self->_specularColor, v36 = v34, !(v35 | v36)) || (v41 = v36, v42 = objc_msgSend_isEqual_(v35, v37, v38, v39, v40, v36), v41, v35, v42)) && self->_intensity == *(v6 + 40) && sub_276191510(self->_attenuation, *(v6 + 48)) && self->_coordinateSpace == *(v6 + 56) && self->_enabled == *(v6 + 60);
  }

  return v43;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TSCH3DLight;
  v4 = [(TSCH3DLight *)&v9 description];
  v7 = objc_msgSend_stringWithFormat_(v3, v5, *&self->_name, self->_intensity, v6, @"%@(enabled %ld, name %@, ambient %@, diffuse %@, specular, %@, intensity %f, attenuation %@, coordinateSpace %ld)", v4, self->_enabled, self->_name, self->_ambientColor, self->_diffuseColor, self->_specularColor, self->_intensity, self->_attenuation, self->_coordinateSpace);

  return v7;
}

- (tvec4<float>)ambientColor
{
  v7 = v2;
  ambientColor = self->_ambientColor;
  if (ambientColor || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DLight ambientColor]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 129, 0, "invalid nil value for '%{public}s'", "_ambientColor"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (ambientColor = self->_ambientColor) != 0))
  {

    ambientColor = objc_msgSend_value(ambientColor, a2, v3, v4, v5);
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
  }

  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = ambientColor;
  result.var1 = *(&ambientColor + 4);
  return result;
}

- (void)setAmbientColor:(tvec4<float>)color
{
  v3 = *&color.var0.var0;
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec4_(v5, v6, v7, v8, v9, v3);
  ambientColor = self->_ambientColor;
  self->_ambientColor = v10;
}

- (tvec4<float>)diffuseColor
{
  v7 = v2;
  diffuseColor = self->_diffuseColor;
  if (diffuseColor || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DLight diffuseColor]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 138, 0, "invalid nil value for '%{public}s'", "_diffuseColor"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (diffuseColor = self->_diffuseColor) != 0))
  {

    diffuseColor = objc_msgSend_value(diffuseColor, a2, v3, v4, v5);
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
  }

  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = diffuseColor;
  result.var1 = *(&diffuseColor + 4);
  return result;
}

- (void)setDiffuseColor:(tvec4<float>)color
{
  v3 = *&color.var0.var0;
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec4_(v5, v6, v7, v8, v9, v3);
  diffuseColor = self->_diffuseColor;
  self->_diffuseColor = v10;
}

- (tvec4<float>)specularColor
{
  v7 = v2;
  specularColor = self->_specularColor;
  if (specularColor || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DLight specularColor]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 147, 0, "invalid nil value for '%{public}s'", "_specularColor"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (specularColor = self->_specularColor) != 0))
  {

    specularColor = objc_msgSend_value(specularColor, a2, v3, v4, v5);
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
  }

  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = specularColor;
  result.var1 = *(&specularColor + 4);
  return result;
}

- (void)setSpecularColor:(tvec4<float>)color
{
  v3 = *&color.var0.var0;
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec4_(v5, v6, v7, v8, v9, v3);
  specularColor = self->_specularColor;
  self->_specularColor = v10;
}

- (tvec3<float>)attenuation
{
  v7 = v2;
  diffuseColor = self->_diffuseColor;
  if (diffuseColor || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DLight attenuation]"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 156, 0, "invalid nil value for '%{public}s'", "_diffuseColor"), v15, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23), (diffuseColor = self->_diffuseColor) != 0))
  {

    diffuseColor = objc_msgSend_value3(diffuseColor, a2, v3, v4, v5);
  }

  else
  {
    *(v7 + 8) = 0;
    *v7 = 0;
  }

  result.var2 = a2;
  result.var0 = diffuseColor;
  result.var1 = *(&diffuseColor + 4);
  return result;
}

- (void)setAttenuation:(tvec3<float>)attenuation
{
  v3 = *&attenuation.var0.var0;
  v5 = [TSCH3DVector alloc];
  v10 = objc_msgSend_initWithVec3_(v5, v6, v7, v8, v9, v3);
  attenuation = self->_attenuation;
  self->_attenuation = v10;
}

- (void)affect:(id)affect states:(id)states texturePool:(id)pool
{
  statesCopy = states;
  v6 = objc_opt_class();
  v11 = objc_msgSend_effectClass(v6, v7, v8, v9, v10);
  v17 = objc_msgSend_stateForStateInfo_createIfNil_(statesCopy, v12, v13, v14, v15, v11, 1);
  if ((statesCopy == 0) == (v17 != 0))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DLight affect:states:texturePool:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 168, 0, "mismatch between state %@ and effectsStates %@", v17, statesCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  objc_msgSend_addObject_(v17, v16, v18, v19, v20, self);
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v10 = *(archive + 4);
  if ((v10 & 0x20) != 0)
  {
    v12 = off_27A6B5AD0;
  }

  else if ((v10 & 0x40) != 0)
  {
    v12 = off_27A6B5AA8;
  }

  else
  {
    if ((v10 & 0x80) == 0)
    {
      v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v7, v8, v9);
      goto LABEL_9;
    }

    v12 = off_27A6B5AD8;
  }

  v13 = objc_alloc(*v12);
  v11 = objc_msgSend_initWithArchive_unarchiver_(v13, v14, v15, v16, v17, archive, unarchiverCopy);
LABEL_9:
  v18 = v11;

  return v18;
}

- (TSCH3DLight)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v8 = objc_msgSend_instanceWithArchive_unarchiver_(TSCH3DLight, a2, v4, v5, v6, archive, unarchiver);

  return v8;
}

- (TSCH3DLight)initWithLightArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v44.receiver = self;
  v44.super_class = TSCH3DLight;
  v7 = [(TSCH3DLight *)&v44 init];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, v10, v11, v12, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    name = v7->_name;
    v7->_name = v13;

    v15 = [TSCH3DVector alloc];
    if (*(archive + 4))
    {
      v20 = objc_msgSend_initWithArchive_unarchiver_(v15, v16, v17, v18, v19, *(archive + 4), unarchiverCopy);
    }

    else
    {
      v20 = objc_msgSend_initWithArchive_unarchiver_(v15, v16, v17, v18, v19, &qword_2812F15A8, unarchiverCopy);
    }

    ambientColor = v7->_ambientColor;
    v7->_ambientColor = v20;

    v22 = [TSCH3DVector alloc];
    if (*(archive + 5))
    {
      v27 = objc_msgSend_initWithArchive_unarchiver_(v22, v23, v24, v25, v26, *(archive + 5), unarchiverCopy);
    }

    else
    {
      v27 = objc_msgSend_initWithArchive_unarchiver_(v22, v23, v24, v25, v26, &qword_2812F15A8, unarchiverCopy);
    }

    diffuseColor = v7->_diffuseColor;
    v7->_diffuseColor = v27;

    v29 = [TSCH3DVector alloc];
    if (*(archive + 6))
    {
      v34 = objc_msgSend_initWithArchive_unarchiver_(v29, v30, v31, v32, v33, *(archive + 6), unarchiverCopy);
    }

    else
    {
      v34 = objc_msgSend_initWithArchive_unarchiver_(v29, v30, v31, v32, v33, &qword_2812F15A8, unarchiverCopy);
    }

    specularColor = v7->_specularColor;
    v7->_specularColor = v34;

    v7->_intensity = *(archive + 22);
    v36 = [TSCH3DVector alloc];
    if (*(archive + 7))
    {
      v41 = objc_msgSend_initWithArchive_unarchiver_(v36, v37, v38, v39, v40, *(archive + 7), unarchiverCopy);
    }

    else
    {
      v41 = objc_msgSend_initWithArchive_unarchiver_(v36, v37, v38, v39, v40, &qword_2812F15A8, unarchiverCopy);
    }

    attenuation = v7->_attenuation;
    v7->_attenuation = v41;

    v7->_coordinateSpace = *(archive + 23);
    v7->_enabled = *(archive + 96);
  }

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DLight(PersistenceAdditions) saveToArchive:archiver:]", archiver);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 216, 0, "Cannot archive super class TSCH3DLight");

  v22 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

- (void)saveToLightArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  name = self->_name;
  if (!name)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DLight(PersistenceAdditions) saveToLightArchive:archiver:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 220, 0, "invalid nil value for '%{public}s'", "_name");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    name = self->_name;
  }

  v26 = objc_msgSend_tsp_protobufString(name, v6, v7, v8, v9);
  sub_276192594(archive, v26);
  ambientColor = self->_ambientColor;
  if (!ambientColor)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCH3DLight(PersistenceAdditions) saveToLightArchive:archiver:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 223, 0, "invalid nil value for '%{public}s'", "_ambientColor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    ambientColor = self->_ambientColor;
  }

  *(archive + 4) |= 2u;
  v47 = *(archive + 4);
  if (!v47)
  {
    v48 = *(archive + 1);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = sub_276447FD4(v48);
    *(archive + 4) = v47;
  }

  objc_msgSend_saveToArchive_archiver_(ambientColor, v27, v28, v29, v30, v47, archiverCopy);
  diffuseColor = self->_diffuseColor;
  if (!diffuseColor)
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "[TSCH3DLight(PersistenceAdditions) saveToLightArchive:archiver:]");
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v61, v62, v63, v64, v55, v60, 225, 0, "invalid nil value for '%{public}s'", "_diffuseColor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
    diffuseColor = self->_diffuseColor;
  }

  *(archive + 4) |= 4u;
  v69 = *(archive + 5);
  if (!v69)
  {
    v70 = *(archive + 1);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = sub_276447FD4(v70);
    *(archive + 5) = v69;
  }

  objc_msgSend_saveToArchive_archiver_(diffuseColor, v49, v50, v51, v52, v69, archiverCopy);
  specularColor = self->_specularColor;
  if (!specularColor)
  {
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, "[TSCH3DLight(PersistenceAdditions) saveToLightArchive:archiver:]");
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v83, v84, v85, v86, v77, v82, 227, 0, "invalid nil value for '%{public}s'", "_specularColor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
    specularColor = self->_specularColor;
  }

  *(archive + 4) |= 8u;
  v91 = *(archive + 6);
  if (!v91)
  {
    v92 = *(archive + 1);
    if (v92)
    {
      v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
    }

    v91 = sub_276447FD4(v92);
    *(archive + 6) = v91;
  }

  objc_msgSend_saveToArchive_archiver_(specularColor, v71, v72, v73, v74, v91, archiverCopy);
  *&v96 = self->_intensity;
  v97 = *(archive + 4) | 0x100;
  *(archive + 4) = v97;
  *(archive + 22) = LODWORD(v96);
  attenuation = self->_attenuation;
  if (!attenuation)
  {
    v99 = MEMORY[0x277D81150];
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v96, v94, v95, "[TSCH3DLight(PersistenceAdditions) saveToLightArchive:archiver:]");
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v106, v107, v108, v109, v100, v105, 232, 0, "invalid nil value for '%{public}s'", "_attenuation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112, v113);
    attenuation = self->_attenuation;
    v97 = *(archive + 4);
  }

  *(archive + 4) = v97 | 0x10;
  v114 = *(archive + 7);
  if (!v114)
  {
    v115 = *(archive + 1);
    if (v115)
    {
      v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
    }

    v114 = sub_276447FD4(v115);
    *(archive + 7) = v114;
  }

  objc_msgSend_saveToArchive_archiver_(attenuation, v93, v96, v94, v95, v114, archiverCopy);
  v116 = *(archive + 4);
  *(archive + 23) = self->_coordinateSpace;
  enabled = self->_enabled;
  *(archive + 4) = v116 | 0x600;
  *(archive + 96) = enabled;
}

@end