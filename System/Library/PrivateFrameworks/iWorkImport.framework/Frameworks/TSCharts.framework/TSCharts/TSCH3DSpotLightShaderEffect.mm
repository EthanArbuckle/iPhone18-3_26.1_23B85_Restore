@interface TSCH3DSpotLightShaderEffect
+ (id)variableSpotLightLightIntensities;
- (id)variableSpotLightLightIntensities;
- (void)injectCommonShaderInto:(id)into context:(id)context;
- (void)uploadData:(id)data effectsStates:(id)states;
- (void)uploadSpotLightWithUploader:(id)uploader effectsStates:(id)states;
@end

@implementation TSCH3DSpotLightShaderEffect

+ (id)variableSpotLightLightIntensities
{
  if (qword_280A46888 != -1)
  {
    sub_2764A6AF8();
  }

  v3 = qword_280A46880;

  return v3;
}

- (id)variableSpotLightLightIntensities
{
  v2 = objc_opt_class();

  return objc_msgSend_variableSpotLightLightIntensities(v2, v3, v4, v5, v6);
}

- (void)uploadSpotLightWithUploader:(id)uploader effectsStates:(id)states
{
  uploaderCopy = uploader;
  statesCopy = states;
  v12 = objc_msgSend_stateForStateInfo_createIfNil_(statesCopy, v7, v8, v9, v10, self, 1);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DSpotLightShaderEffect uploadSpotLightWithUploader:effectsStates:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSpotLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 47, 0, "invalid nil value for '%{public}s'", "lights");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v32 = objc_msgSend_count(v12, v11, v13, v14, v15);
  if (v32 != self->super._lightCount)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCH3DSpotLightShaderEffect uploadSpotLightWithUploader:effectsStates:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSpotLight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 49, 0, "light counts mismatch %lu should be %lu", v32, self->super._lightCount);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  if (v32)
  {
    v52 = objc_msgSend_variables(self, v31, v33, v34, v35);
    for (i = 0; i != v32; ++i)
    {
      v57 = v12;
      v59 = objc_msgSend_objectAtIndex_(v12, v51, v53, v54, v55, i);
      if (!v59)
      {
        v63 = MEMORY[0x277D81150];
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v60, v61, v62, "[TSCH3DSpotLightShaderEffect uploadSpotLightWithUploader:effectsStates:]");
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSpotLight.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v71, v72, v73, v64, v69, 54, 0, "invalid nil value for '%{public}s'", "light");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
      }

      objc_msgSend_cutOff(v59, v58, v60, v61, v62);
      v79 = cos(fmax(fmin(v78, 1.57079633), 0.0));
      objc_msgSend_dropOff(v59, v80, v79, v81, v82);
      v84 = *&v83;
      v12 = v57;
      v88 = objc_msgSend_variableAtIndex_name_(v52, v85, v83, v86, v87, i, @"CutOff");
      *&v89 = v79;
      v104 = LODWORD(v89);
      objc_msgSend_uniform_vec1_(uploaderCopy, v90, v89, v91, v92, v88, &v104);

      v97 = objc_msgSend_variableAtIndex_name_(v52, v93, v94, v95, v96, i, @"DropOff");
      *&v98 = fmaxf(fminf(v84, 1.0), 0.0) * 128.0;
      v103 = LODWORD(v98);
      objc_msgSend_uniform_vec1_(uploaderCopy, v99, v98, v100, v101, v97, &v103);
    }
  }
}

- (void)uploadData:(id)data effectsStates:(id)states
{
  dataCopy = data;
  statesCopy = states;
  v20.receiver = self;
  v20.super_class = TSCH3DSpotLightShaderEffect;
  [(TSCH3DLightShaderEffect *)&v20 uploadData:dataCopy effectsStates:statesCopy];
  objc_msgSend_uploadLightPositionablesWithUploader_effectsStates_(self, v8, v9, v10, v11, dataCopy, statesCopy);
  objc_msgSend_uploadLightDirectionalWithUploader_effectsStates_(self, v12, v13, v14, v15, dataCopy, statesCopy);
  objc_msgSend_uploadSpotLightWithUploader_effectsStates_(self, v16, v17, v18, v19, dataCopy, statesCopy);
}

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  v109[14] = *MEMORY[0x277D85DE8];
  intoCopy = into;
  objc_msgSend_addFunctionString_name_(intoCopy, v4, v5, v6, v7, @"tsch_mediump_mat4 SpotLight(\n                  tsch_highp_vec3 lightPosition,\n                  tsch_highp_vec3 lightDirection,\n                  tsch_highp_vec3 eyeSpacePosition3,\n                  tsch_highp_vec3 normal,\n                  tsch_mediump_vec3 attenuations,\n                  tsch_mediump_vec4 lightAmbient,\n                  tsch_mediump_vec4 lightDiffuse,\n                  tsch_mediump_vec4 lightSpecular,\n                  tsch_mediump_vec4 materialShininess,\n                  tsch_mediump_float spotCutOff,\n                  tsch_mediump_float spotExponent,\n                  tsch_mediump_vec4 ambient,\n                  tsch_mediump_vec4 diffuse,\n                  tsch_mediump_vec4 specular)\n{\n  tsch_highp_vec3 light = lightPosition - eyeSpacePosition3;\n  tsch_mediump_float d = length(light);\n  light = normalize(light);\n  tsch_mediump_float att = 1.0;\n  const tsch_mediump_float epsilon = 1.0e-6;\n  tsch_mediump_float spotDot = dot(-light, normalize(lightDirection));\n  tsch_mediump_float spotAtt = tsch_float(spotDot >= spotCutOff) * pow(spotDot, spotExponent);\n  att *= spotAtt;\n  tsch_highp_vec3 eye = tsch_vec3(0.0, 0.0, 1.0);\n  tsch_highp_vec3 halfVector = normalize(light + eye);\n  tsch_mediump_float nDotL = max(0.0, dot(normal, light));\n  tsch_mediump_float nDotH = max(epsilon, dot(normal, halfVector));\n  tsch_mediump_float pf = tsch_float(nDotL != 0.0) * pow(nDotH, materialShininess.r * 128.0);\n  ambient = ambient + lightAmbient * att;\n  diffuse = diffuse + lightDiffuse * nDotL * att;\n  specular = specular + lightSpecular * pf * att;\n  tsch_mediump_mat4 intensities = tsch_mat4(ambient, diffuse, specular, tsch_vec4(0.0));\n  return intensities;\n}\n", @"SpotLight");
  v13 = objc_msgSend_variables(TSCH3DSpotLightUniformArrayShaderVariables, v8, v9, v10, v11);
  if (self->super._lightCount)
  {
    v17 = 0;
    v99 = @"DropOff";
    do
    {
      v104 = objc_msgSend_variableAtIndex_name_(v13, v12, v14, v15, v16, v17, @"AmbientColor", v99);
      v103 = objc_msgSend_variableAtIndex_name_(v13, v18, v19, v20, v21, v17, @"DiffuseColor");
      v102 = objc_msgSend_variableAtIndex_name_(v13, v22, v23, v24, v25, v17, @"SpecularColor");
      v101 = objc_msgSend_variableAtIndex_name_(v13, v26, v27, v28, v29, v17, @"Attenuation");
      v34 = objc_msgSend_variableAtIndex_name_(v13, v30, v31, v32, v33, v17, @"Position");
      v39 = objc_msgSend_variableAtIndex_name_(v13, v35, v36, v37, v38, v17, @"Direction");
      v44 = objc_msgSend_variableAtIndex_name_(v13, v40, v41, v42, v43, v17, @"CutOff");
      v49 = objc_msgSend_variableAtIndex_name_(v13, v45, v46, v47, v48, v17, v99);
      v54 = objc_msgSend_variableSpotLightLightIntensities(self, v50, v51, v52, v53);
      v59 = objc_msgSend_variableAtIndex_(v54, v55, v56, v57, v58, v17);

      v109[0] = v34;
      v109[1] = v39;
      v109[2] = qword_280A46498;
      v109[3] = qword_280A46500;
      v109[4] = v101;
      v109[5] = v104;
      v109[6] = v103;
      v109[7] = v102;
      v109[8] = qword_280A46680;
      v109[9] = v44;
      v109[10] = v49;
      v109[11] = qword_280A46448;
      v109[12] = qword_280A465B8;
      v109[13] = qword_280A46648;
      v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v61, v62, v63, v109, 14);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(intoCopy, v65, v66, v67, v68, v59, @"SpotLight(@@, @@, @@, @@, @@, @@, @@, @@, @@, @@, @@, @@, @@, @@)", v64, 0, 2);
      v69 = qword_280A46448;
      v108 = v59;
      v74 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, v71, v72, v73, &v108, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(intoCopy, v75, v76, v77, v78, v69, @"@@[0]", v74, 0, 2);

      v79 = qword_280A465B8;
      v107 = v59;
      v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v80, v81, v82, v83, &v107, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(intoCopy, v85, v86, v87, v88, v79, @"@@[1]", v84, 0, 2);

      v89 = qword_280A46648;
      v106 = v59;
      v94 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v90, v91, v92, v93, &v106, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(intoCopy, v95, v96, v97, v98, v89, @"@@[2]", v94, 0, 2);

      ++v17;
    }

    while (v17 < self->super._lightCount);
  }
}

@end