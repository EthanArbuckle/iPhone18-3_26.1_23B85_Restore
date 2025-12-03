@interface TSCH3DSphericalEnvironmentShaderEffect
+ (id)effectWithMaterials:(id)materials pool:(id)pool;
- (BOOL)isEqual:(id)equal;
- (TSCH3DSphericalEnvironmentShaderEffect)initWithMaterials:(id)materials pool:(id)pool;
- (id)textureVariablesArray;
- (void)addVariables:(id)variables;
- (void)injectCommonShaderInto:(id)into context:(id)context;
- (void)updateState:(id)state effectsStates:(id)states;
- (void)uploadData:(id)data effectsStates:(id)states;
@end

@implementation TSCH3DSphericalEnvironmentShaderEffect

+ (id)effectWithMaterials:(id)materials pool:(id)pool
{
  materialsCopy = materials;
  poolCopy = pool;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithMaterials_pool_(v8, v9, v10, v11, v12, materialsCopy, poolCopy);

  return v13;
}

- (TSCH3DSphericalEnvironmentShaderEffect)initWithMaterials:(id)materials pool:(id)pool
{
  materialsCopy = materials;
  poolCopy = pool;
  v36.receiver = self;
  v36.super_class = TSCH3DSphericalEnvironmentShaderEffect;
  v9 = [(TSCH3DSphericalEnvironmentShaderEffect *)&v36 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_materials, materials);
    objc_storeStrong(&v10->_pool, pool);
    if (!objc_msgSend_count(v10->_materials, v11, v12, v13, v14))
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DSphericalEnvironmentShaderEffect initWithMaterials:pool:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSphericalEnvironmentShaderEffect.mm");
      v26 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v20, v25, 77, 0, "should not add %@ with no env maps", v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    }
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToArray = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v7, v8, v9, v5))
    {
      isEqualToArray = objc_msgSend_isEqualToArray_(self->_materials, v10, v11, v12, v13, equalCopy->_materials);
    }

    else
    {
      isEqualToArray = 0;
    }
  }

  return isEqualToArray;
}

- (id)textureVariablesArray
{
  if (qword_280A46940 != -1)
  {
    sub_2764A6B70();
  }

  v3 = qword_280A46938;

  return v3;
}

- (void)addVariables:(id)variables
{
  variablesCopy = variables;
  v8 = objc_msgSend_textureVariablesArray(self, v4, v5, v6, v7);
  v14 = objc_msgSend_count(self->_materials, v9, v10, v11, v12);
  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCH3DSphericalEnvironmentShaderEffect addVariables:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSphericalEnvironmentShaderEffect.mm");
    v25 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v26, v27, v28, v29, v19, v24, 112, 0, "should not add %@ with no env maps", v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  if (v14 <= objc_msgSend_count(v8, v13, v15, v16, v17))
  {
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "[TSCH3DSphericalEnvironmentShaderEffect addVariables:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSphericalEnvironmentShaderEffect.mm");
    v49 = objc_msgSend_count(self->_materials, v45, v46, v47, v48);
    v54 = objc_msgSend_count(v8, v50, v51, v52, v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v55, v56, v57, v58, v39, v44, 114, 0, "_materials count %lu exceeds texture variables %zu", v49, v54);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
  }

  v63 = 0;
  do
  {
    v64 = objc_msgSend_objectAtIndexedSubscript_(v8, v34, v35, v36, v37, v63);
    v69 = objc_msgSend_texture(v64, v65, v66, v67, v68);
    objc_msgSend_addUniformVariable_(variablesCopy, v70, v71, v72, v73, v69);

    v78 = objc_msgSend_textureMatrix(v64, v74, v75, v76, v77);
    objc_msgSend_addUniformVariable_(variablesCopy, v79, v80, v81, v82, v78);

    ++v63;
  }

  while (v14 != v63);
LABEL_8:
}

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  intoCopy = into;
  contextCopy = context;
  if (!objc_msgSend_count(self->_materials, v6, v7, v8, v9))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DSphericalEnvironmentShaderEffect injectCommonShaderInto:context:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSphericalEnvironmentShaderEffect.mm");
    v21 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v15, v20, 123, 0, "should not add %@ with no env maps", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  objc_msgSend_addFunctionString_name_(intoCopy, v10, v11, v12, v13, @"tsch_mediump_vec2 SphereMap(tsch_mediump_vec3 normal, tsch_mediump_vec3 ecPosition3)\n{\n   tsch_mediump_vec3 u = normalize(ecPosition3);\n   tsch_mediump_vec3 r = reflect(u, normal);\n   tsch_mediump_float m = 2.0 * sqrt(r.x * r.x + r.y * r.y + (r.z + 1.0) * (r.z + 1.0));\n   return tsch_vec2(r.x / m + 0.5, r.y / m + 0.5);\n}\n", @"SphereMap");
  objc_msgSend_addTemporary_statement_(intoCopy, v30, v31, v32, v33, qword_280A46540, @"tsch_vec4(SphereMap(@@, @@), 0.0, 1.0)", qword_280A46500, qword_280A46498);
  v38 = objc_msgSend_textureVariablesArray(self, v34, v35, v36, v37);
  v44 = objc_msgSend_count(self->_materials, v39, v40, v41, v42);
  if (v44)
  {
    for (i = 0; i != v44; ++i)
    {
      v49 = objc_msgSend_objectAtIndexedSubscript_(self->_materials, v43, v45, v46, v47, i);
      v54 = objc_msgSend_resourceForMaterial_(self->_pool, v50, v51, v52, v53, v49);

      if (v54)
      {
        v59 = objc_msgSend_objectAtIndexedSubscript_(v38, v55, v56, v57, v58, i);
        v64 = objc_msgSend_texture(v59, v60, v61, v62, v63);

        v69 = objc_msgSend_objectAtIndexedSubscript_(v38, v65, v66, v67, v68, i);
        v74 = objc_msgSend_texcoords(v69, v70, v71, v72, v73);

        v79 = objc_msgSend_textureFunctionNameForVariable_projective_(contextCopy, v75, v76, v77, v78, v64, 0);
        v84 = objc_msgSend_objectAtIndexedSubscript_(v38, v80, v81, v82, v83, i);
        v89 = objc_msgSend_textureMatrix(v84, v85, v86, v87, v88);
        objc_msgSend_addTemporary_statement_(intoCopy, v90, v91, v92, v93, v74, @"@@ * @@", v89, qword_280A46540);

        if (objc_msgSend_decalMode(v49, v94, v95, v96, v97))
        {
          v102 = qword_280A46548;
          v103 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v98, v99, v100, v101, @"%@(@@, @@.xy)", v79);
          objc_msgSend_addTemporary_statement_(intoCopy, v104, v105, v106, v107, v102, v103, v64, v74);

          objc_msgSend_addStatement_statement_(intoCopy, v108, v109, v110, v111, qword_280A465D0, qword_280A46548, qword_280A46548, qword_280A465D0);
        }

        else
        {
          v112 = qword_280A465D0;
          v113 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v98, v99, v100, v101, @"@@ * %@(@@, @@.xy)", v79);
          objc_msgSend_addStatement_statement_(intoCopy, v114, v115, v116, v117, v112, v113, qword_280A465D0, v64, v74);
        }
      }
    }
  }
}

- (void)updateState:(id)state effectsStates:(id)states
{
  stateCopy = state;
  v108 = objc_msgSend_stateForStateInfo_createIfNil_(states, v6, v7, v8, v9, self, 1);
  v110 = objc_msgSend_textureVariablesArray(self, v10, v11, v12, v13);
  if (!objc_msgSend_count(self->_materials, v14, v15, v16, v17))
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCH3DSphericalEnvironmentShaderEffect updateState:effectsStates:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSphericalEnvironmentShaderEffect.mm");
    v29 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v30, v31, v32, v33, v23, v28, 164, 0, "should not add %@ with no env maps", v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_msgSend_count(self->_materials, v18, v19, v20, v21);
  if (v38 > objc_msgSend_count(v110, v39, v40, v41, v42))
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DSphericalEnvironmentShaderEffect updateState:effectsStates:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSphericalEnvironmentShaderEffect.mm");
    v58 = objc_msgSend_count(self->_materials, v54, v55, v56, v57);
    v63 = objc_msgSend_count(v110, v59, v60, v61, v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v64, v65, v66, v67, v48, v53, 166, 0, "_materials count %lu exceeds texture variables %zu", v58, v63);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
  }

  v73 = objc_msgSend_count(self->_materials, v43, v44, v45, v46);
  if (v73)
  {
    v77 = 0;
    do
    {
      v78 = objc_msgSend_objectAtIndexedSubscript_(self->_materials, v72, v74, v75, v76, v77);
      v84 = objc_msgSend_resourceForMaterial_(self->_pool, v79, v80, v81, v82, v78);
      if (v84)
      {
        v88 = objc_msgSend_objectAtIndexedSubscript_(v110, v83, v85, v86, v87, v77);
        v93 = objc_msgSend_texture(v88, v89, v90, v91, v92);

        v111 = 0;
        v112 = 257;
        v113 = 0;
        v114[0] = 0;
        *(v114 + 5) = 0;
        v98 = objc_msgSend_texture_resource_attributes_(stateCopy, v94, v95, v96, v97, v93, v84, &v111);
        v103 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v99, v100, v101, v102, v98);
        objc_msgSend_addObject_(v108, v104, v105, v106, v107, v103);
      }

      ++v77;
    }

    while (v73 != v77);
  }
}

- (void)uploadData:(id)data effectsStates:(id)states
{
  dataCopy = data;
  statesCopy = states;
  v144 = objc_msgSend_textureVariablesArray(self, v6, v7, v8, v9);
  if (!objc_msgSend_count(self->_materials, v10, v11, v12, v13))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DSphericalEnvironmentShaderEffect uploadData:effectsStates:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSphericalEnvironmentShaderEffect.mm");
    v25 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v26, v27, v28, v29, v19, v24, 181, 0, "should not add %@ with no env maps", v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v34 = objc_msgSend_count(self->_materials, v14, v15, v16, v17);
  if (v34 > objc_msgSend_count(v144, v35, v36, v37, v38))
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCH3DSphericalEnvironmentShaderEffect uploadData:effectsStates:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSphericalEnvironmentShaderEffect.mm");
    v54 = objc_msgSend_count(self->_materials, v50, v51, v52, v53);
    v59 = objc_msgSend_count(v144, v55, v56, v57, v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v60, v61, v62, v63, v44, v49, 183, 0, "_materials count %lu exceeds texture variables %zu", v54, v59);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
  }

  v142 = objc_msgSend_stateForStateInfo_createIfNil_(statesCopy, v39, v40, v41, v42, self, 1);
  v73 = objc_msgSend_count(self->_materials, v68, v69, v70, v71);
  if (v73)
  {
    for (i = 0; i != v73; ++i)
    {
      v78 = objc_msgSend_objectAtIndexedSubscript_(self->_materials, v72, v74, v75, v76, i);
      v83 = objc_msgSend_resourceForMaterial_(self->_pool, v79, v80, v81, v82, v78);

      if (v83)
      {
        objc_opt_class();
        v88 = objc_msgSend_objectAtIndexedSubscript_(v142, v84, v85, v86, v87, i);
        v89 = TSUCheckedDynamicCast();
        v94 = objc_msgSend_intValue(v89, v90, v91, v92, v93);

        v99 = objc_msgSend_objectAtIndexedSubscript_(v144, v95, v96, v97, v98, i);
        v104 = objc_msgSend_texture(v99, v100, v101, v102, v103);
        v155[0].i32[0] = v94;
        objc_msgSend_uniform_ivec1_(dataCopy, v105, v106, v107, v108, v104, v155);

        objc_opt_class();
        v113 = objc_msgSend_firstTiling(v78, v109, v110, v111, v112);
        v114 = TSUCheckedDynamicCast();

        objc_msgSend_rotation(v114, v115, v116, v117, v118);
        v123 = __sincosf_stret(v119 * 0.5);
        *&v121 = v123.__sinval;
        *&v124 = v123.__sinval * 0.0;
        v125 = (v123.__sinval * 0.0) * -2.0;
        v126 = (v125 * (v123.__sinval * 0.0)) + 1.0;
        v152.f32[0] = v126 + ((*&v121 * -2.0) * *&v121);
        v152.f32[1] = (v123.__sinval * (v123.__cosval + v123.__cosval)) + ((*&v124 + *&v124) * *&v124);
        v152.i64[1] = COERCE_UNSIGNED_INT(((*&v121 * 0.0) * (v123.__cosval * -2.0)) + ((*&v124 + *&v124) * *&v121));
        v153.f32[0] = (v123.__sinval * (v123.__cosval * -2.0)) + ((*&v124 + *&v124) * *&v124);
        v153.f32[1] = v152.f32[0];
        v153.f32[2] = ((*&v121 * 0.0) * (v123.__cosval + v123.__cosval)) + ((*&v124 + *&v124) * *&v121);
        v153.i32[3] = 0;
        *v154 = v153.f32[2];
        *&v154[4] = ((*&v121 * 0.0) * (v123.__cosval * -2.0)) + ((*&v124 + *&v124) * *&v121);
        *&v154[8] = v126 + (v125 * (v123.__sinval * 0.0));
        *&v154[20] = 0;
        *&v154[12] = 0;
        *&v154[28] = 1065353216;
        if (v114)
        {
          *&v121 = v126 + (v125 * (v123.__sinval * 0.0));
          *&v122 = (v123.__sinval * (v123.__cosval * -2.0)) + ((*&v124 + *&v124) * *&v124);
          objc_msgSend_scale(v114, v120, v121, v122, v124);
          v127 = *(&v145 + 1);
          v128 = *&v145;
        }

        else
        {
          v145 = 0;
          v127 = 0.0;
          v128 = 0.0;
        }

        *v146 = v128;
        *&v146[1] = v128 * 0.0;
        *&v146[2] = v128 * 0.0;
        *&v146[3] = v128 * 0.0;
        *&v146[4] = v127 * -0.0;
        *&v146[5] = -v127;
        *&v146[6] = v127 * -0.0;
        *&v146[7] = v127 * -0.0;
        v147 = 0;
        v150 = 0;
        v149 = 0;
        v148 = 1065353216;
        v151 = 1065353216;
        sub_2761558A0(&v152, v146, v155);
        v152 = v155[0];
        v153 = v155[1];
        *v154 = v156;
        *&v154[16] = *v157;
        v131 = objc_msgSend_objectAtIndexedSubscript_(v144, v129, *&v156, v157[0], v130, i);
        v136 = objc_msgSend_textureMatrix(v131, v132, v133, v134, v135);
        objc_msgSend_uniform_mat4_(dataCopy, v137, v138, v139, v140, v136, &v152);
      }
    }
  }
}

@end