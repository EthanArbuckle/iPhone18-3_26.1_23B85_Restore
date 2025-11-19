@interface TSCH3DDirectionalLightShaderEffect
+ (id)variableDirectionalLightIntensities;
- (id)variableDirectionalLightIntensities;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DDirectionalLightShaderEffect

+ (id)variableDirectionalLightIntensities
{
  if (qword_280A46898 != -1)
  {
    sub_2764A6B0C();
  }

  v3 = qword_280A46890;

  return v3;
}

- (id)variableDirectionalLightIntensities
{
  v2 = objc_opt_class();

  return objc_msgSend_variableDirectionalLightIntensities(v2, v3, v4, v5, v6);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TSCH3DDirectionalLightShaderEffect;
  [(TSCH3DLightShaderEffect *)&v12 uploadData:v6 effectsStates:v7];
  objc_msgSend_uploadLightDirectionalWithUploader_effectsStates_(self, v8, v9, v10, v11, v6, v7);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v89[10] = *MEMORY[0x277D85DE8];
  v85 = a3;
  objc_msgSend_addFunctionString_name_(v85, v4, v5, v6, v7, @"tsch_mediump_mat4 DirectionalLight(\n                  tsch_highp_vec3 lightDirection,\n                  tsch_highp_vec3 eyeSpacePosition3,\n                  tsch_highp_vec3 normal,\n                  tsch_mediump_vec4 lightAmbient,\n                  tsch_mediump_vec4 lightDiffuse,\n                  tsch_mediump_vec4 lightSpecular,\n                  tsch_mediump_vec4 materialShininess,\n                  tsch_mediump_vec4 ambient,\n                  tsch_mediump_vec4 diffuse,\n                  tsch_mediump_vec4 specular)\n{\n  const tsch_mediump_float epsilon = 1.0e-6;\n  tsch_highp_vec3 light = normalize(-lightDirection);\n  tsch_highp_vec3 eye = tsch_vec3(0.0, 0.0, 1.0);\n  tsch_highp_vec3 halfVector = normalize(light + eye);\n  tsch_mediump_float nDotL = max(0.0, dot(normal, light));\n  tsch_mediump_float nDotH = max(epsilon, dot(normal, halfVector));\n  tsch_mediump_float pf = tsch_float(nDotL != 0.0) * pow(nDotH, materialShininess.r * 128.0);\n  ambient = ambient + lightAmbient;\n  diffuse = diffuse + lightDiffuse * nDotL;\n  specular = specular + lightSpecular * pf;\n  tsch_mediump_mat4 intensities = tsch_mat4(ambient, diffuse, specular, tsch_vec4(0.0));\n  return intensities;\n}\n", @"DirectionalLight");
  v13 = objc_msgSend_variables(TSCH3DDirectionalLightUniformArrayShaderVariables, v8, v9, v10, v11);
  if (self->super._lightCount)
  {
    v17 = 0;
    v83 = @"Direction";
    do
    {
      v18 = objc_msgSend_variableAtIndex_name_(v13, v12, v14, v15, v16, v17, @"AmbientColor", v83);
      v23 = objc_msgSend_variableAtIndex_name_(v13, v19, v20, v21, v22, v17, @"DiffuseColor");
      v28 = objc_msgSend_variableAtIndex_name_(v13, v24, v25, v26, v27, v17, @"SpecularColor");
      v33 = objc_msgSend_variableAtIndex_name_(v13, v29, v30, v31, v32, v17, v83);
      v38 = objc_msgSend_variableDirectionalLightIntensities(self, v34, v35, v36, v37);
      v43 = objc_msgSend_variableAtIndex_(v38, v39, v40, v41, v42, v17);

      v89[0] = v33;
      v89[1] = qword_280A46498;
      v89[2] = qword_280A46500;
      v89[3] = v18;
      v89[4] = v23;
      v89[5] = v28;
      v89[6] = qword_280A46680;
      v89[7] = qword_280A46448;
      v89[8] = qword_280A465B8;
      v89[9] = qword_280A46648;
      v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v44, v45, v46, v47, v89, 10);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(v85, v49, v50, v51, v52, v43, @"DirectionalLight(@@, @@, @@, @@, @@, @@, @@, @@, @@, @@)", v48, 0, 2);
      v53 = qword_280A46448;
      v88 = v43;
      v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v54, v55, v56, v57, &v88, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(v85, v59, v60, v61, v62, v53, @"@@[0]", v58, 0, 2);

      v63 = qword_280A465B8;
      v87 = v43;
      v68 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v64, v65, v66, v67, &v87, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(v85, v69, v70, v71, v72, v63, @"@@[1]", v68, 0, 2);

      v73 = qword_280A46648;
      v86 = v43;
      v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v74, v75, v76, v77, &v86, 1);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(v85, v79, v80, v81, v82, v73, @"@@[2]", v78, 0, 2);

      ++v17;
    }

    while (v17 < self->super._lightCount);
  }
}

@end