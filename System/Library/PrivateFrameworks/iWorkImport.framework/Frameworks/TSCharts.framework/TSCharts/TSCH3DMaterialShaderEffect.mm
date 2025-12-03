@interface TSCH3DMaterialShaderEffect
+ (id)effectWithPool:(id)pool material:(id)material variables:(id)variables;
- (BOOL)isEqual:(id)equal;
- (TSCH3DMaterialShaderEffect)initWithPool:(id)pool material:(id)material variables:(id)variables;
- (id)stateSharingID;
- (void)addVariables:(id)variables;
- (void)updateState:(id)state effectsStates:(id)states;
- (void)uploadData:(id)data effectsStates:(id)states;
@end

@implementation TSCH3DMaterialShaderEffect

+ (id)effectWithPool:(id)pool material:(id)material variables:(id)variables
{
  poolCopy = pool;
  materialCopy = material;
  variablesCopy = variables;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithPool_material_variables_(v11, v12, v13, v14, v15, poolCopy, materialCopy, variablesCopy);

  return v16;
}

- (TSCH3DMaterialShaderEffect)initWithPool:(id)pool material:(id)material variables:(id)variables
{
  poolCopy = pool;
  materialCopy = material;
  variablesCopy = variables;
  v21.receiver = self;
  v21.super_class = TSCH3DMaterialShaderEffect;
  v12 = [(TSCH3DMaterialShaderEffect *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pool, pool);
    objc_storeStrong(&v13->_material, material);
    v18 = objc_msgSend_copy(variablesCopy, v14, v15, v16, v17);
    variables = v13->_variables;
    v13->_variables = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v25.receiver = self;
  v25.super_class = TSCH3DMaterialShaderEffect;
  if ([(TSCH3DShaderEffect *)&v25 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (objc_msgSend_isEqual_(self->_pool, v6, v7, v8, v9, *(v5 + 1)) && (v14 = objc_msgSend_textureCount(self->_material, v10, v11, v12, v13), v14 == objc_msgSend_textureCount(*(v5 + 2), v15, v16, v17, v18)))
    {
      isEqual = objc_msgSend_isEqual_(self->_variables, v19, v20, v21, v22, *(v5 + 3));
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)stateSharingID
{
  v6 = objc_msgSend_texture(self->_variables, a2, v2, v3, v4);

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DMaterialShaderEffect stateSharingID]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMaterialShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 72, 0, "invalid nil value for '%{public}s'", "_variables.texture");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  variables = self->_variables;

  return objc_msgSend_texture(variables, v7, v8, v9, v10);
}

- (void)addVariables:(id)variables
{
  variablesCopy = variables;
  v8 = objc_msgSend_factor(self->_variables, v4, v5, v6, v7);
  objc_msgSend_addUniformVariable_(variablesCopy, v9, v10, v11, v12, v8);

  v17 = objc_msgSend_resourceForMaterial_(self->_pool, v13, v14, v15, v16, self->_material);

  if (v17)
  {
    v22 = objc_msgSend_texture(self->_variables, v18, v19, v20, v21);
    objc_msgSend_addUniformVariable_(variablesCopy, v23, v24, v25, v26, v22);

    v31 = objc_msgSend_texcoords(self->_variables, v27, v28, v29, v30);
    objc_msgSend_addAttributeVariable_(variablesCopy, v32, v33, v34, v35, v31);
  }
}

- (void)updateState:(id)state effectsStates:(id)states
{
  stateCopy = state;
  statesCopy = states;
  v42 = 0;
  material = self->_material;
  if (material)
  {
    objc_msgSend_color(material, v7, v9, v10, v11);
    v13 = *v41;
    v14 = self->_material;
  }

  else
  {
    v14 = 0;
    v13 = 0uLL;
  }

  v43 = v13;
  v16 = objc_msgSend_resourceForMaterial_(self->_pool, v7, *&v13, v10, v11, v14);
  if (v16)
  {
    v20 = objc_msgSend_variableTexture(self->_material, v15, v17, v18, v19);
    *v41 = 0;
    *&v41[8] = 257;
    v41[10] = 0;
    *&v41[12] = 0;
    *&v41[17] = 0;
    v25 = objc_msgSend_texture_resource_attributes_(stateCopy, v21, v22, v23, v24, v20, v16, v41);

    v42 = v25;
  }

  v30 = objc_msgSend_stateSharingID(self, v26, v27, v28, v29);
  v31 = statesCopy;
  v36 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v32, v33, v34, v35, &v42, "{MaterialShaderState=q{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}}");
  objc_msgSend_setValueState_forKey_(v31, v37, v38, v39, v40, v36, v30);
}

- (void)uploadData:(id)data effectsStates:(id)states
{
  dataCopy = data;
  statesCopy = states;
  v12 = objc_msgSend_stateSharingID(self, v8, v9, v10, v11);
  v13 = statesCopy;
  v18 = objc_msgSend_valueStateForKey_(v13, v14, v15, v16, v17, v12);

  if (!v18)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = (anonymous namespace)::MaterialShaderState]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v100 = 0;
  v101[0] = 0;
  v101[1] = 0;
  v38 = objc_msgSend_valueStateForKey_(v13, v19, v20, v21, v22, v12);
  v39 = v38;
  if (v38)
  {
    v40 = v38;
    v45 = objc_msgSend_objCType(v40, v41, v42, v43, v44);
    if (strcmp(v45, "{MaterialShaderState=q{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}}") || (sizep = 0, NSGetSizeAndAlignment(v45, &sizep, 0), sizep != 24))
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = (anonymous namespace)::MaterialShaderState]");
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v57 = v39;
      v62 = objc_msgSend_objCType(v57, v58, v59, v60, v61);
      v63 = v39;
      v68 = objc_msgSend_objCType(v63, v64, v65, v66, v67);
      sizep = 0;
      NSGetSizeAndAlignment(v68, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v69, v70, v71, v72, v51, v56, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v62, sizep, "{MaterialShaderState=q{tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}}", 24);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
    }

    objc_msgSend_getValue_(v39, v46, v47, v48, v49, &v100);
  }

  v81 = objc_msgSend_factor(self->_variables, v77, v78, v79, v80);
  objc_msgSend_uniform_vec4_(dataCopy, v82, v83, v84, v85, v81, v101);

  v90 = objc_msgSend_resourceForMaterial_(self->_pool, v86, v87, v88, v89, self->_material);

  if (v90)
  {
    v95 = objc_msgSend_texture(self->_variables, v91, v92, v93, v94);
    LODWORD(sizep) = v100;
    objc_msgSend_uniform_ivec1_(dataCopy, v96, v97, v98, v99, v95, &sizep);
  }
}

@end