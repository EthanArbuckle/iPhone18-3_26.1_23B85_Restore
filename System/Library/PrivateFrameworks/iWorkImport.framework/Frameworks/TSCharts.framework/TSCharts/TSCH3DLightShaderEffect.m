@interface TSCH3DLightShaderEffect
+ (id)effectWithLightCount:(unint64_t)a3;
+ (void)createStateInEffectsStates:(id)a3;
+ (void)updatePackageState:(const void *)a3 effectsStates:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TSCH3DLightShaderEffect)initWithLightCount:(unint64_t)a3;
- (void)addVariables:(id)a3;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
- (void)uploadLightDirectionalWithUploader:(id)a3 effectsStates:(id)a4;
- (void)uploadLightPositionablesWithUploader:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DLightShaderEffect

+ (void)createStateInEffectsStates:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_effectState(TSCH3DLightShaderEffectState, v4, v5, v6, v7);
  objc_msgSend_setState_forStateInfo_(v13, v9, v10, v11, v12, v8, a1);
}

+ (void)updatePackageState:(const void *)a3 effectsStates:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = objc_msgSend_lightClasses(TSCH3DLight, v6, 0.0, v7, v8, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v32, v36, 16);
  if (v15)
  {
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v21 = objc_msgSend_effectClass(*(*(&v32 + 1) + 8 * v20), v14, v16, v17, v18);
        v26 = objc_msgSend_stateForStateInfo_createIfNil_(v5, v22, v23, v24, v25, v21, 0);
        v31 = v26;
        if (v26)
        {
          objc_msgSend_setPackageState_(v26, v27, v28, v29, v30, a3);
        }

        ++v20;
      }

      while (v15 != v20);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v14, v16, v17, v18, &v32, v36, 16);
    }

    while (v15);
  }
}

+ (id)effectWithLightCount:(unint64_t)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithLightCount_(v4, v5, v6, v7, v8, a3);

  return v9;
}

- (TSCH3DLightShaderEffect)initWithLightCount:(unint64_t)a3
{
  if (a3 >= 9)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DLightShaderEffect initWithLightCount:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 58, 0, "%lu exceeds max number of point lights %lu", a3, 8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v24.receiver = self;
  v24.super_class = TSCH3DLightShaderEffect;
  result = [(TSCH3DLightShaderEffect *)&v24 init];
  if (result)
  {
    result->_lightCount = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TSCH3DLightShaderEffect;
  v5 = [(TSCH3DShaderEffect *)&v7 isEqual:v4]&& self->_lightCount == v4[1];

  return v5;
}

- (void)addVariables:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_variables(self, v4, v5, v6, v7);
  objc_msgSend_addUniformsToShaderProgram_size_(v8, v9, v10, v11, v12, v13, self->_lightCount);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v117 = a4;
  v12 = objc_msgSend_stateForStateInfo_createIfNil_(v117, v7, v8, v9, v10, self, 1);
  v118 = v6;
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DLightShaderEffect uploadData:effectsStates:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 88, 0, "invalid nil value for '%{public}s'", "lights");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v32 = objc_msgSend_count(v12, v11, v13, v14, v15);
  if (v32 != self->_lightCount)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCH3DLightShaderEffect uploadData:effectsStates:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 90, 0, "light counts mismatch %lu should be %lu", v32, self->_lightCount);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  if (v32)
  {
    v52 = objc_msgSend_variables(self, v31, v33, v34, v35);
    for (i = 0; i != v32; ++i)
    {
      v58 = objc_msgSend_objectAtIndex_(v12, v51, v53, v54, v55, i);
      if (!v58)
      {
        v62 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v59, v60, v61, "[TSCH3DLightShaderEffect uploadData:effectsStates:]");
        v64 = v12;
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v70, v71, v72, v73, v63, v69, 95, 0, "invalid nil value for '%{public}s'", "light");

        v12 = v64;
        v6 = v118;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
      }

      objc_msgSend_intensity(v58, v57, v59, v60, v61);
      v119 = v78;
      v83 = objc_msgSend_variableAtIndex_name_(v52, v79, v78, v80, v81, i, @"AmbientColor");
      if (v58)
      {
        objc_msgSend_ambientColor(v58, v82, v84, v85, v86);
        v87 = v120;
      }

      else
      {
        v120 = 0uLL;
        v87 = 0uLL;
      }

      v121 = vmulq_n_f32(v87, *&v119);
      objc_msgSend_uniform_vec4_(v6, v82, *v121.i64, v119, v86, v83, &v121);

      v93 = objc_msgSend_variableAtIndex_name_(v52, v88, v89, v90, v91, i, @"DiffuseColor");
      if (v58)
      {
        objc_msgSend_diffuseColor(v58, v92, v94, v95, v96);
        v97 = v120;
      }

      else
      {
        v120 = 0uLL;
        v97 = 0uLL;
      }

      v121 = vmulq_n_f32(v97, *&v119);
      objc_msgSend_uniform_vec4_(v6, v92, *v121.i64, v119, v96, v93, &v121);

      v103 = objc_msgSend_variableAtIndex_name_(v52, v98, v99, v100, v101, i, @"SpecularColor");
      if (v58)
      {
        objc_msgSend_specularColor(v58, v102, v104, v105, v106);
        v107 = v120;
      }

      else
      {
        v120 = 0uLL;
        v107 = 0uLL;
      }

      v121 = vmulq_n_f32(v107, *&v119);
      objc_msgSend_uniform_vec4_(v6, v102, *v121.i64, v119, v106, v103, &v121);

      v113 = objc_msgSend_variableAtIndex_name_(v52, v108, v109, v110, v111, i, @"Attenuation");
      if (v58)
      {
        objc_msgSend_attenuation(v58, v112, v114, v115, v116);
      }

      else
      {
        v121.i32[2] = 0;
        v121.i64[0] = 0;
      }

      objc_msgSend_uniform_vec3_(v6, v112, v114, v115, v116, v113, &v121);
    }
  }
}

- (void)uploadLightPositionablesWithUploader:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v12 = objc_msgSend_stateForStateInfo_createIfNil_(a4, v7, v8, v9, v10, self, 1);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DLightShaderEffect uploadLightPositionablesWithUploader:effectsStates:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 116, 0, "invalid nil value for '%{public}s'", "lights");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v32 = objc_msgSend_count(v12, v11, v13, v14, v15);
  if (v32 != self->_lightCount)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCH3DLightShaderEffect uploadLightPositionablesWithUploader:effectsStates:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 118, 0, "light counts mismatch %lu should be %lu", v32, self->_lightCount);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  if (v32)
  {
    v122 = objc_msgSend_variables(self, v31, v33, v34, v35);
    v56 = objc_msgSend_packageState(v12, v51, v52, v53, v54);
    v60 = 0;
    v121 = v6;
    do
    {
      v61 = v12;
      v63 = objc_msgSend_objectAtIndex_(v12, v55, v57, v58, v59, v60);
      if (!v63)
      {
        v67 = MEMORY[0x277D81150];
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v64, v65, v66, "[TSCH3DLightShaderEffect uploadLightPositionablesWithUploader:effectsStates:]");
        v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 125, 0, "invalid nil value for '%{public}s'", "light");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
      }

      v82 = TSUProtocolCast();
      v87 = v82;
      if (v82)
      {
        v12 = v61;
        objc_msgSend_position(v82, v83, v84, v85, v86, &unk_28857A258);
      }

      else
      {
        v92 = MEMORY[0x277D81150];
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v84, v85, v86, "[TSCH3DLightShaderEffect uploadLightPositionablesWithUploader:effectsStates:]", &unk_28857A258);
        v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v99, v100, v101, v102, v93, v98, 128, 0, "invalid nil value for '%{public}s'", "positionable");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105, v106);
        v126 = 0;
        v125 = 0;
        v6 = v121;
        v12 = v61;
      }

      v107 = objc_msgSend_coordinateSpace(v63, v88, v89, v90, v91);
      v111 = sub_2761B38CC(v56, v107, v108, v109, v110);
      sub_276154744(&v125, v111, &v123, v112);
      v125 = v123;
      v126 = v124;
      v116 = objc_msgSend_variableAtIndex_name_(v122, v113, COERCE_DOUBLE(__PAIR64__(v123.u32[1], v124)), v114, v115, v60, @"Position");
      objc_msgSend_uniform_vec3_(v6, v117, v118, v119, v120, v116, &v125);

      ++v60;
    }

    while (v32 != v60);
  }
}

- (void)uploadLightDirectionalWithUploader:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v12 = objc_msgSend_stateForStateInfo_createIfNil_(a4, v7, v8, v9, v10, self, 1);
  v121 = v6;
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DLightShaderEffect uploadLightDirectionalWithUploader:effectsStates:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 141, 0, "invalid nil value for '%{public}s'", "lights");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v32 = objc_msgSend_count(v12, v11, v13, v14, v15);
  if (v32 != self->_lightCount)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCH3DLightShaderEffect uploadLightDirectionalWithUploader:effectsStates:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 143, 0, "light counts mismatch %lu should be %lu", v32, self->_lightCount);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  if (v32)
  {
    v51 = objc_msgSend_variables(self, v31, v33, v34, v35);
    v57 = objc_msgSend_packageState(v12, v52, v53, v54, v55);
    for (i = 0; i != v32; ++i)
    {
      v62 = v12;
      v64 = objc_msgSend_objectAtIndex_(v12, v56, v58, v59, v60, i);
      if (!v64)
      {
        v68 = MEMORY[0x277D81150];
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v65, v66, v67, "[TSCH3DLightShaderEffect uploadLightDirectionalWithUploader:effectsStates:]");
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 150, 0, "invalid nil value for '%{public}s'", "light");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
      }

      v83 = TSUProtocolCast();
      v88 = v83;
      if (v83)
      {
        objc_msgSend_direction(v83, v84, v85, v86, v87, &unk_28857A2D0);
      }

      else
      {
        v93 = MEMORY[0x277D81150];
        v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v85, v86, v87, "[TSCH3DLightShaderEffect uploadLightDirectionalWithUploader:effectsStates:]", &unk_28857A2D0);
        v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightShaderEffect.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v100, v101, v102, v103, v94, v99, 153, 0, "invalid nil value for '%{public}s'", "directional");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107);
        v123 = 0.0;
        v122 = 0.0;
        v6 = v121;
      }

      v108 = objc_msgSend_coordinateSpace(v64, v89, v90, v91, v92);
      v112 = sub_2761B38CC(v57, v108, v109, v110, v111);
      *&v113 = ((v112[3].f32[0] * *(&v122 + 1)) + (v112[1].f32[0] * *&v122)) + (v112[5].f32[0] * v123);
      v114 = *v112;
      v122 = COERCE_DOUBLE(vmla_n_f32(vmla_n_f32(vmul_n_f32(v112[2], *(&v122 + 1)), *v112, *&v122), v112[4], v123));
      v123 = *&v113;
      v116 = objc_msgSend_variableAtIndex_name_(v51, v115, v113, *&v114, v122, i, @"Direction");
      objc_msgSend_uniform_vec3_(v6, v117, v118, v119, v120, v116, &v122);

      v12 = v62;
    }
  }
}

@end