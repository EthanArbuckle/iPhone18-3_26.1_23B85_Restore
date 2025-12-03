@interface TSCH3DProjectiveTextureShaderEffect
+ (id)variableShadowBorderFade;
+ (id)variableShadowColor;
- (id)variableShadowBorderFade;
- (id)variableShadowColor;
- (id)variableTexture;
- (void)addVariables:(id)variables;
- (void)injectCommonShaderInto:(id)into context:(id)context;
- (void)uploadData:(id)data effectsStates:(id)states;
@end

@implementation TSCH3DProjectiveTextureShaderEffect

+ (id)variableShadowColor
{
  if (qword_280A46840 != -1)
  {
    sub_2764A6A5C();
  }

  v3 = qword_280A46838;

  return v3;
}

- (id)variableShadowColor
{
  v2 = objc_opt_class();

  return objc_msgSend_variableShadowColor(v2, v3, v4, v5, v6);
}

+ (id)variableShadowBorderFade
{
  if (qword_280A46850 != -1)
  {
    sub_2764A6A70();
  }

  v3 = qword_280A46848;

  return v3;
}

- (id)variableShadowBorderFade
{
  v2 = objc_opt_class();

  return objc_msgSend_variableShadowBorderFade(v2, v3, v4, v5, v6);
}

- (id)variableTexture
{
  v2 = objc_opt_class();

  return objc_msgSend_variableTexture(v2, v3, v4, v5, v6);
}

- (void)addVariables:(id)variables
{
  variablesCopy = variables;
  objc_msgSend_addAttributeVariable_(variablesCopy, v4, v5, v6, v7, qword_280A465D8);
  objc_msgSend_addAttributeVariable_(variablesCopy, v8, v9, v10, v11, qword_280A46620);
  v16 = objc_msgSend_variableTexture(self, v12, v13, v14, v15);
  objc_msgSend_addUniformVariable_(variablesCopy, v17, v18, v19, v20, v16);

  v25 = objc_msgSend_variableShadowColor(self, v21, v22, v23, v24);
  objc_msgSend_addUniformVariable_(variablesCopy, v26, v27, v28, v29, v25);

  v34 = objc_msgSend_variableShadowBorderFade(self, v30, v31, v32, v33);
  objc_msgSend_addUniformVariable_(variablesCopy, v35, v36, v37, v38, v34);
}

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  intoCopy = into;
  contextCopy = context;
  objc_msgSend_addFunctionString_name_(intoCopy, v7, v8, v9, v10, @"tsch_mediump_float shadowFadeValue(tsch_mediump_vec2 tc, tsch_mediump_vec2 borderFade) {\n  tsch_mediump_vec2 factors = clamp(tsch_vec2(1.0)+min(tc - borderFade, (tsch_vec2(1.0)-borderFade) - tc) / borderFade, tsch_vec2(0.0), tsch_vec2(1.0));\n  return factors.x * factors.y;\n}", @"shadowFadeValue");
  v15 = objc_msgSend_variableShadowColor(self, v11, v12, v13, v14);
  v20 = objc_msgSend_variableTexture(self, v16, v17, v18, v19);
  v25 = objc_msgSend_textureFunctionNameForVariable_projective_(contextCopy, v21, v22, v23, v24, v20, 1);

  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, v27, v28, v29, @"tsch_mediump_float blurValue = %@(@@, @@).a", v25);
  v35 = objc_msgSend_variableTexture(self, v31, v32, v33, v34);
  objc_msgSend_addFragmentDeclarationWithFormat_(intoCopy, v36, v37, v38, v39, v30, v35, qword_280A465D8);

  v40 = qword_280A46620;
  v45 = objc_msgSend_variableShadowBorderFade(self, v41, v42, v43, v44);
  objc_msgSend_addFragmentDeclarationWithFormat_(intoCopy, v46, v47, v48, v49, @"tsch_mediump_float fadeValue = shadowFadeValue(@@.xy, @@)", v40, v45);

  objc_msgSend_addFragmentDeclarationWithFormat_(intoCopy, v50, v51, v52, v53, @"tsch_mediump_vec4 finalShadow = @@", v15);
  objc_msgSend_addFragmentDeclaration_(intoCopy, v54, v55, v56, v57, @"finalShadow.a *= fadeValue * blurValue;");
  objc_msgSend_addFragmentOutcome_statement_(intoCopy, v58, v59, v60, v61, qword_280A464B8, @"finalShadow");
  objc_msgSend_addConclusion_statement_(intoCopy, v62, v63, v64, v65, qword_280A46758, @"@@", qword_280A464B8);
}

- (void)uploadData:(id)data effectsStates:(id)states
{
  dataCopy = data;
  statesCopy = states;
  v12 = objc_msgSend_stateSharingID(TSCH3DProjectiveTextureShaderEffect, v8, v9, v10, v11);
  v13 = statesCopy;
  v18 = objc_msgSend_valueStateForKey_(v13, v14, v15, v16, v17, v12);

  if (!v18)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "T TSCH3D::AssertCTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = (anonymous namespace)::ProjectiveTextureShaderEffectState]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 104, 0, "invalid nil value for '%{public}s'", "[states valueStateForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v104[0] = 0;
  v104[1] = 0;
  v105 = -1;
  v106 = 0x3DCCCCCD3D4CCCCDLL;
  v38 = objc_msgSend_valueStateForKey_(v13, v19, 5.2386907e-11, v21, v22, v12);
  v39 = v38;
  if (v38)
  {
    v40 = v38;
    v45 = objc_msgSend_objCType(v40, v41, v42, v43, v44);
    if (strcmp(v45, "{ProjectiveTextureShaderEffectState={tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}q{tvec2<float>=(?=fff)(?=fff)}}") || (sizep = 0, NSGetSizeAndAlignment(v45, &sizep, 0), sizep != 32))
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = (anonymous namespace)::ProjectiveTextureShaderEffectState]");
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v57 = v39;
      v62 = objc_msgSend_objCType(v57, v58, v59, v60, v61);
      v63 = v39;
      v68 = objc_msgSend_objCType(v63, v64, v65, v66, v67);
      sizep = 0;
      NSGetSizeAndAlignment(v68, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v69, v70, v71, v72, v51, v56, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v62, sizep, "{ProjectiveTextureShaderEffectState={tvec4<float>=(?=fff)(?=fff)(?=fff)(?=fff)}q{tvec2<float>=(?=fff)(?=fff)}}", 32);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
    }

    objc_msgSend_getValue_(v39, v46, v47, v48, v49, v104);
  }

  v81 = objc_msgSend_variableShadowColor(self, v77, v78, v79, v80);
  objc_msgSend_uniform_vec4_(dataCopy, v82, v83, v84, v85, v81, v104);

  v90 = objc_msgSend_variableShadowBorderFade(self, v86, v87, v88, v89);
  objc_msgSend_uniform_vec2_(dataCopy, v91, v92, v93, v94, v90, &v106);

  v99 = objc_msgSend_variableTexture(self, v95, v96, v97, v98);
  LODWORD(sizep) = v105;
  objc_msgSend_uniform_ivec1_(dataCopy, v100, v101, v102, v103, v99, &sizep);
}

@end