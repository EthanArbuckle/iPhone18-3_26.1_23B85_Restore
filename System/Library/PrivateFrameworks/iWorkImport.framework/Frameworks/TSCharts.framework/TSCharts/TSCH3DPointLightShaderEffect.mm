@interface TSCH3DPointLightShaderEffect
+ (id)variableLightIntensities;
- (id)variableLightIntensities;
- (void)injectCommonShaderInto:(id)into context:(id)context;
- (void)uploadData:(id)data effectsStates:(id)states;
@end

@implementation TSCH3DPointLightShaderEffect

+ (id)variableLightIntensities
{
  if (qword_280A468A8 != -1)
  {
    sub_2764A6B20();
  }

  v3 = qword_280A468A0;

  return v3;
}

- (id)variableLightIntensities
{
  v2 = objc_opt_class();

  return objc_msgSend_variableLightIntensities(v2, v3, v4, v5, v6);
}

- (void)uploadData:(id)data effectsStates:(id)states
{
  dataCopy = data;
  statesCopy = states;
  v12.receiver = self;
  v12.super_class = TSCH3DPointLightShaderEffect;
  [(TSCH3DLightShaderEffect *)&v12 uploadData:dataCopy effectsStates:statesCopy];
  objc_msgSend_uploadLightPositionablesWithUploader_effectsStates_(self, v8, v9, v10, v11, dataCopy, statesCopy);
}

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  v93[11] = *MEMORY[0x277D85DE8];
  intoCopy = into;
  objc_msgSend_addFunctionString_name_(intoCopy, v4, v5, v6, v7, @"tsch_mediump_mat4 PointLight(\n                  tsch_highp_vec3 lightPosition,\n                  tsch_highp_vec3 eyeSpacePosition3,\n                  tsch_highp_vec3 normal,\n                  tsch_mediump_vec3 attenuations,\n                  tsch_mediump_vec4 lightAmbient,\n                  tsch_mediump_vec4 lightDiffuse,\n                  tsch_mediump_vec4 lightSpecular,\n                  tsch_mediump_vec4 materialShininess,\n                  tsch_mediump_vec4 ambient,\n                  tsch_mediump_vec4 diffuse,\n                  tsch_mediump_vec4 specular)\n{\n  tsch_highp_vec3 light = lightPosition - eyeSpacePosition3;\n  tsch_mediump_float d = length(light);\n  light = normalize(light);\n  tsch_mediump_float att = 1.0;\n  const tsch_mediump_float epsilon = 1.0e-6;\n  tsch_mediump_vec3 eye = tsch_vec3(0.0, 0.0, 1.0);\n  tsch_mediump_vec3 halfVector = normalize(light + eye);\n  tsch_mediump_float nDotL = max(0.0, dot(normal, light));\n  tsch_mediump_float nDotH = max(epsilon, dot(normal, halfVector));\n  tsch_mediump_float pf = tsch_float(nDotL != 0.0) * pow(nDotH, materialShininess.r * 128.0);\n  ambient = ambient + lightAmbient * att;\n  diffuse = diffuse + lightDiffuse * nDotL * att;\n  specular = specular + lightSpecular * pf * att;\n  tsch_mediump_mat4 intensities = tsch_mat4(ambient, diffuse, specular, tsch_vec4(0.0));\n  return intensities;\n}\n", @"PointLight");
  v87 = objc_msgSend_variables(TSCH3DPointLightUniformArrayShaderVariables, v8, v9, v10, v11);
  if (self->super._lightCount)
  {
    v16 = 0;
    do
    {
      v17 = objc_msgSend_variableAtIndex_name_(v87, v12, v13, v14, v15, v16, @"AmbientColor");
      v22 = objc_msgSend_variableAtIndex_name_(v87, v18, v19, v20, v21, v16, @"DiffuseColor");
      v27 = objc_msgSend_variableAtIndex_name_(v87, v23, v24, v25, v26, v16, @"SpecularColor");
      v32 = objc_msgSend_variableAtIndex_name_(v87, v28, v29, v30, v31, v16, @"Attenuation");
      v37 = objc_msgSend_variableAtIndex_name_(v87, v33, v34, v35, v36, v16, @"Position");
      v42 = objc_msgSend_variableLightIntensities(self, v38, v39, v40, v41);
      v47 = objc_msgSend_variableAtIndex_(v42, v43, v44, v45, v46, v16);

      v93[0] = v37;
      v93[1] = qword_280A46498;
      v93[2] = qword_280A46500;
      v93[3] = v32;
      v93[4] = v17;
      v93[5] = v22;
      v93[6] = v27;
      v93[7] = qword_280A46680;
      v93[8] = qword_280A46448;
      v93[9] = qword_280A465B8;
      v93[10] = qword_280A46648;
      v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v49, v50, v51, v93, 11);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(intoCopy, v53, v54, v55, v56, v47, @"PointLight(@@, @@, @@, @@, @@, @@, @@, @@, @@, @@, @@)", v52, 0, 2);
      v57 = qword_280A46448;
      v92 = v47;
      v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v58, v59, v60, v61, &v92, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(intoCopy, v63, v64, v65, v66, v57, @"@@[0]", v62, 0, 2);

      v67 = qword_280A465B8;
      v91 = v47;
      v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v68, v69, v70, v71, &v91, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(intoCopy, v73, v74, v75, v76, v67, @"@@[1]", v72, 0, 2);

      v77 = qword_280A46648;
      v90 = v47;
      v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v78, v79, v80, v81, &v90, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(intoCopy, v83, v84, v85, v86, v77, @"@@[2]", v82, 0, 2);

      ++v16;
    }

    while (v16 < self->super._lightCount);
  }
}

@end