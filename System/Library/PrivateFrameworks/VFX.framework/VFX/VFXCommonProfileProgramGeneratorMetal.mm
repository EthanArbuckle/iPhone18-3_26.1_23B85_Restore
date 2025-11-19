@interface VFXCommonProfileProgramGeneratorMetal
- (__CFXProgram)_newProgramWithHashCode:(__CFXProgramHashCode *)a3 engineContext:(__CFXEngineContext *)a4 introspectionDataPtr:(void *)a5;
- (id)initAllowingHotReload:(BOOL)a3;
- (id)splitInputOutputStructsIfNeededForSourceCode:(id)a3 generatedFromReplacementStrings:(id)a4 perPixelLighting:(BOOL)a5 clipDistanceCount:(unint64_t)a6 hasBezierCurveDeformer:(BOOL)a7;
- (void)_loadSourceCode;
- (void)collectShaderForProgram:(__CFXProgram *)a3 hashCode:(id)a4 newVertexFunctionName:(id)a5 newFragmentFunctionName:(id)a6 sourceCodeBlock:(id)a7 additionalFileBlock:(id)a8;
- (void)dealloc;
- (void)emptyShaderCache;
@end

@implementation VFXCommonProfileProgramGeneratorMetal

- (void)_loadSourceCode
{
  v219[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1AF28A7E4(@"CFX-Lighting.metal");
  self->_originalLightingSourceCode = v3;
  if (!v3)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4778(v6, v4, v7, v5, v8, v9, v10, v11);
    }
  }

  v12 = MEMORY[0x1E696B098];
  v13 = objc_msgSend_rangeOfString_(self->_originalLightingSourceCode, v4, @"__SurfaceExtraDecl__", v5);
  v15 = objc_msgSend_valueWithRange_(v12, v14, v13, v14);
  v16 = MEMORY[0x1E696B098];
  v19 = objc_msgSend_rangeOfString_(self->_originalLightingSourceCode, v17, @"__LightModifierExtraDecl__", v18);
  v21 = objc_msgSend_valueWithRange_(v16, v20, v19, v20);
  v22 = MEMORY[0x1E696B098];
  v25 = objc_msgSend_rangeOfString_(self->_originalLightingSourceCode, v23, @"__DoLightModifier__", v24);
  v219[0] = v15;
  v219[1] = v21;
  v219[2] = objc_msgSend_valueWithRange_(v22, v26, v25, v26);
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v219, 3);
  self->_lightingInjectionPointRanges = v28;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v208, v218, 16);
  if (v30)
  {
    v34 = v30;
    v35 = *v209;
    do
    {
      v36 = 0;
      do
      {
        if (*v209 != v35)
        {
          objc_enumerationMutation(v28);
        }

        objc_msgSend_rangeValue(*(*(&v208 + 1) + 8 * v36), v31, v32, v33);
        if (!v31)
        {
          v37 = sub_1AF0D5194();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE47F0(v216, &v217, v37);
          }
        }

        ++v36;
      }

      while (v34 != v36);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v208, v218, 16);
    }

    while (v34);
  }

  v38 = sub_1AF28A7E4(@"CFX-CommonProfile.metal");
  self->_originalSourceCode = v38;
  v39 = MEMORY[0x1E696B098];
  v42 = objc_msgSend_rangeOfString_(v38, v40, @"#import vfx_metal", v41);
  v203 = objc_msgSend_valueWithRange_(v39, v43, v42, v43);
  v44 = MEMORY[0x1E696B098];
  v47 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v45, @"#import vfx_util.h", v46);
  v202 = objc_msgSend_valueWithRange_(v44, v48, v47, v48);
  v49 = MEMORY[0x1E696B098];
  v52 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v50, @"#import CFX-PBR.metal", v51);
  v201 = objc_msgSend_valueWithRange_(v49, v53, v52, v53);
  v54 = MEMORY[0x1E696B098];
  v57 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v55, @"#import vfx_shadowmap_util.h", v56);
  v200 = objc_msgSend_valueWithRange_(v54, v58, v57, v58);
  v59 = MEMORY[0x1E696B098];
  v62 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v60, @"#import vfx_tessellation.h", v61);
  v199 = objc_msgSend_valueWithRange_(v59, v63, v62, v63);
  v64 = MEMORY[0x1E696B098];
  v67 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v65, @"__TexcoordDecl__", v66);
  v198 = objc_msgSend_valueWithRange_(v64, v68, v67, v68);
  v69 = MEMORY[0x1E696B098];
  v72 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v70, @"__ExtraVaryingsDecl__", v71);
  v197 = objc_msgSend_valueWithRange_(v69, v73, v72, v73);
  v74 = MEMORY[0x1E696B098];
  v77 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v75, @"__ShaderModifiersDecl__", v76);
  v196 = objc_msgSend_valueWithRange_(v74, v78, v77, v78);
  v79 = MEMORY[0x1E696B098];
  v82 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v80, @"#import CFX-Lighting.metal", v81);
  v195 = objc_msgSend_valueWithRange_(v79, v83, v82, v83);
  v84 = MEMORY[0x1E696B098];
  v87 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v85, @"__OpenSubdivDeclPerGeometry__", v86);
  v194 = objc_msgSend_valueWithRange_(v84, v88, v87, v88);
  v89 = MEMORY[0x1E696B098];
  v92 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v90, @"__OpenSubdivDeclPerPatchType__", v91);
  v193 = objc_msgSend_valueWithRange_(v89, v93, v92, v93);
  v94 = MEMORY[0x1E696B098];
  v97 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v95, @"__OpenSubdivDeclShared__", v96);
  v192 = objc_msgSend_valueWithRange_(v94, v98, v97, v98);
  v99 = MEMORY[0x1E696B098];
  v102 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v100, @"__VertexExtraArguments__", v101);
  v191 = objc_msgSend_valueWithRange_(v99, v103, v102, v103);
  v104 = MEMORY[0x1E696B098];
  v107 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v105, @"__VertexDoVertexOnlyTexcoord__", v106);
  v190 = objc_msgSend_valueWithRange_(v104, v108, v107, v108);
  v109 = MEMORY[0x1E696B098];
  v112 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v110, @"__DoGeometryModifier__", v111);
  v189 = objc_msgSend_valueWithRange_(v109, v113, v112, v113);
  v114 = MEMORY[0x1E696B098];
  v117 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v115, @"__VertexDoLighting__", v116);
  v188 = objc_msgSend_valueWithRange_(v114, v118, v117, v118);
  v119 = MEMORY[0x1E696B098];
  v122 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v120, @"__VertexDoTexcoord__", v121);
  v124 = objc_msgSend_valueWithRange_(v119, v123, v122, v123);
  v125 = MEMORY[0x1E696B098];
  v128 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v126, @"__FragmentExtraArguments__", v127);
  v130 = objc_msgSend_valueWithRange_(v125, v129, v128, v129);
  v131 = MEMORY[0x1E696B098];
  v134 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v132, @"__FragmentDoTexcoord__", v133);
  v136 = objc_msgSend_valueWithRange_(v131, v135, v134, v135);
  v137 = MEMORY[0x1E696B098];
  v140 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v138, @"__DoSurfaceModifier__", v139);
  v142 = objc_msgSend_valueWithRange_(v137, v141, v140, v141);
  v143 = MEMORY[0x1E696B098];
  v146 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v144, @"__LightModifierCopyDecl__", v145);
  v148 = objc_msgSend_valueWithRange_(v143, v147, v146, v147);
  v149 = MEMORY[0x1E696B098];
  v152 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v150, @"__FragmentDoLighting__", v151);
  v154 = objc_msgSend_valueWithRange_(v149, v153, v152, v153);
  v155 = MEMORY[0x1E696B098];
  v158 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v156, @"__DoFragmentModifier__", v157);
  v160 = objc_msgSend_valueWithRange_(v155, v159, v158, v159);
  v163 = objc_msgSend_rangeOfString_(self->_originalSourceCode, v161, @"} commonprofile_io;", v162);
  v165 = &v164[v163];
  v166 = objc_msgSend_rangeOfString_options_range_(self->_originalSourceCode, v164, @"typedef struct {", 4, 0, &v164[v163]);
  self->_commonProfileIORange.location = v166;
  self->_commonProfileIORange.length = &v165[-v166];
  v215[0] = v203;
  v215[1] = v202;
  v215[2] = v201;
  v215[3] = v200;
  v215[4] = v199;
  v215[5] = v198;
  v215[6] = v197;
  v215[7] = v196;
  v215[8] = v195;
  v215[9] = v194;
  v215[10] = v193;
  v215[11] = v192;
  v215[12] = v191;
  v215[13] = v190;
  v215[14] = v189;
  v215[15] = v188;
  v215[16] = v124;
  v215[17] = v130;
  v215[18] = v136;
  v215[19] = v142;
  v215[20] = v148;
  v215[21] = v154;
  v215[22] = v160;
  v168 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v167, v215, 23);
  self->_injectionPointRanges = v168;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v169, &v204, v214, 16);
  if (v170)
  {
    v174 = v170;
    v175 = *v205;
    do
    {
      v176 = 0;
      do
      {
        if (*v205 != v175)
        {
          objc_enumerationMutation(v168);
        }

        objc_msgSend_rangeValue(*(*(&v204 + 1) + 8 * v176), v171, v172, v173);
        if (!v171)
        {
          v177 = sub_1AF0D5194();
          if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE47F0(v212, &v213, v177);
          }
        }

        ++v176;
      }

      while (v174 != v176);
      v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v171, &v204, v214, 16);
    }

    while (v174);
  }

  if (!self->_originalSourceCode)
  {
    v178 = sub_1AF0D5194();
    if (os_log_type_enabled(v178, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4834(v178, v179, v180, v181, v182, v183, v184, v185);
    }
  }

  v186 = self->_lightingInjectionPointRanges;
  v187 = self->_injectionPointRanges;
}

- (void)emptyShaderCache
{
  objc_msgSend__loadSourceCode(self, v3, v4, v5);
  v6.receiver = self;
  v6.super_class = VFXCommonProfileProgramGeneratorMetal;
  [(VFXCommonProfileProgramGenerator *)&v6 emptyShaderCache];
}

- (id)initAllowingHotReload:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = VFXCommonProfileProgramGeneratorMetal;
  v4 = [(VFXCommonProfileProgramGenerator *)&v10 init];
  v8 = v4;
  if (v4)
  {
    v4->_allowHotReload = a3;
    objc_msgSend__loadSourceCode(v4, v5, v6, v7);
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXCommonProfileProgramGeneratorMetal;
  [(VFXCommonProfileProgramGenerator *)&v3 dealloc];
}

- (__CFXProgram)_newProgramWithHashCode:(__CFXProgramHashCode *)a3 engineContext:(__CFXEngineContext *)a4 introspectionDataPtr:(void *)a5
{
  v581 = *MEMORY[0x1E69E9840];
  v544 = 0;
  memset(v543, 0, sizeof(v543));
  v541 = 0u;
  v542 = 0u;
  v539 = 0u;
  v540 = 0u;
  v537 = 0u;
  v538 = 0u;
  v535 = 0u;
  v536 = 0u;
  v533 = 0u;
  v534 = 0u;
  v532 = 0u;
  v530 = a3;
  v7 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 0, a4, a5);
  v531 = v7;
  sub_1AF12E2AC(a4);
  v8 = 0;
  v517 = sub_1AF333168();
  if (v517)
  {
    v8 = objc_msgSend_setWithCapacity_(MEMORY[0x1E695DFA8], v9, 0, v10);
    *&v532 = v8;
  }

  *(&v535 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v9, 0, v10);
  v15 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v11, 0, v12);
  *&v533 = v15;
  for (i = 40; i != 72; i += 8)
  {
    *(&v530 + i) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v13, 0, v14);
  }

  if (sub_1AF13E438(a3))
  {
    v19 = sub_1AF12DDCC(a4);
    if (v19)
    {
      v19 = sub_1AF1CF878(v19);
    }

    v23 = objc_msgSend_headerInludeString(v19, v20, v21, v22);
    if (objc_msgSend_length(v23, v24, v25, v26))
    {
      objc_msgSend_appendString_(v15, v17, v23, v18);
    }
  }

  *&v536 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v17, 0, v18);
  *(&v536 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v27, 0, v28);
  *&v537 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v29, 0, v30);
  *(&v537 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v31, 0, v32);
  *&v538 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v33, 0, v34);
  *&v539 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v35, 0, v36);
  *(&v539 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v37, 0, v38);
  *(&v540 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v39, 0, v40);
  *&v541 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v41, 0, v42);
  *(&v541 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v43, 0, v44);
  *&v542 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v45, 0, v46);
  *(&v542 + 1) = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v47, 0, v48);
  v520 = sub_1AF13E558(a3);
  v49 = sub_1AF13E464(a3, 6u);
  v508 = sub_1AF13E464(a3, 3u);
  v510 = sub_1AF13E4EC(a3);
  v511 = sub_1AF13E504(a3);
  v50 = sub_1AF13E4A8(a3);
  v51 = sub_1AF13E430(a3);
  v52 = v51;
  v53 = v51;
  v54 = sub_1AF13E414(a3);
  v514 = v54;
  v515 = (v54 & 4) != 0 && sub_1AF1305F8(a4, 16);
  v507 = sub_1AF13E458(a3, 1u);
  v525 = v53;
  v509 = v49;
  BYTE3(v543[0]) = v49 & 1 | ((v53 & 0x10) != 0);
  v55 = sub_1AF13E568(a3);
  v56 = sub_1AF13E560(a3);
  if (v55)
  {
    v59 = v56;
    if (!objc_msgSend_objectForKeyedSubscript_(v7, v57, @"USE_POSITION", v58))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v60, &unk_1F25D4378, @"USE_POSITION");
    }

    v62 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v60, v59, v61);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v63, v62, @"USE_MULTIPLE_RENDERING");
    v64 = sub_1AF13E574(a3);
    if (v64 == 2)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v57, &stru_1F2575650, @"USE_VERTEX_AMPLIFICATION");
    }

    else if (v64 == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v57, &stru_1F2575650, @"USE_INSTANCING");
    }

    if (v55 == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v57, &stru_1F2575650, @"USE_LAYERED_RENDERING");
    }

    else if (v55 == 2)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v7, v57, &stru_1F2575650, @"USE_MULTIPLE_VIEWPORTS_RENDERING");
    }
  }

  if (v8)
  {
    objc_msgSend_addObject_(v8, v57, @"USE_MULTIPLE_RENDERING", v58);
    objc_msgSend_addObject_(v8, v65, @"USE_VERTEX_AMPLIFICATION", v66);
    objc_msgSend_addObject_(v8, v67, @"USE_INSTANCING", v68);
    objc_msgSend_addObject_(v8, v69, @"USE_LAYERED_RENDERING", v70);
    objc_msgSend_addObject_(v8, v71, @"USE_MULTIPLE_VIEWPORTS_RENDERING", v72);
  }

  if (sub_1AF13E534(a3))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v73, &stru_1F2575650, @"USE_IBL_TRANSFORM");
  }

  v74 = sub_1AF1F32F0();
  v75 = sub_1AF13E848(a3);
  if (v74 <= v75)
  {
    v76 = v75;
  }

  else
  {
    v76 = v74;
  }

  if ((v55 == 2 || v55 == 1) && v76 <= 0x20001)
  {
    v76 = 131073;
  }

  v521 = a4;
  v77 = sub_1AF12FAD8(a4);
  v78 = 131074;
  memset(&v580[14], 0, 32);
  if (v76 > 0x20002)
  {
    v78 = v76;
  }

  if (!v77)
  {
    v78 = v76;
  }

  v516 = v78;
  memset(v580, 0, 224);
  v529 = a3;
  v79 = sub_1AF13E7BC(a3, 0, v580, 32);
  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  v569 = 0u;
  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  *buf = 0u;
  v565 = 0u;
  v80 = sub_1AF13E7BC(v530, 1u, buf, 32);
  memset(v563, 0, sizeof(v563));
  v81 = sub_1AF13E7BC(v530, 2u, v563, 32);
  *&v540 = 0;
  v82 = sub_1AF13E7BC(v530, 3u, &v540, 1);
  if (v82 >= 2)
  {
    v83 = sub_1AF0D5194();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE48F0();
    }

    v82 = 1;
  }

  if (v79 >= 2)
  {
    v84 = sub_1AF0D5194();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE4924();
    }

    v79 = 1;
  }

  if (v80 >= 2)
  {
    v85 = sub_1AF0D5194();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE4958();
    }

    v80 = 1;
  }

  if (v81 >= 2)
  {
    v86 = sub_1AF0D5194();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE498C();
    }

    v81 = 1;
  }

  sub_1AF1EBF70(v531, v580, v79);
  sub_1AF1EBF70(v531, buf, v80);
  sub_1AF1EBF70(v531, v563, v81);
  sub_1AF1EBF70(v531, &v540, v82);
  sub_1AF1ECF18(&v530, v580, v79);
  sub_1AF1ECF18(&v530, buf, v80);
  sub_1AF1ECF18(&v530, v563, v81);
  sub_1AF1ECF18(&v530, &v540, v82);
  if (v540)
  {
    if (v80)
    {
      v87 = 1;
    }

    else
    {
      if (!v81)
      {
        goto LABEL_61;
      }

      v87 = 2;
    }

    sub_1AF1ECDD4(&v530, v540, v87);
  }

LABEL_61:
  v88 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sub_1AF1ECD04(v88, v580, v79);
  sub_1AF1ECD04(v88, buf, v80);
  sub_1AF1ECD04(v88, v563, v81);
  sub_1AF1ECD04(v88, &v540, v82);
  v547[0] = MEMORY[0x1E69E9820];
  v547[1] = 3221225472;
  v547[2] = sub_1AF1F0F40;
  v547[3] = &unk_1E7A7C500;
  v547[4] = &v530;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v88, v89, v547, v90);

  sub_1AF1EBFF0(v563, v81);
  sub_1AF1EBFF0(buf, v80);
  sub_1AF1EBFF0(v580, v79);
  sub_1AF1EBFF0(&v540, v82);
  if (v79)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v91, &stru_1F2575650, @"USE_GEOMETRY_MODIFIER");
    sub_1AF1F0F74(&v530, 0, v580);
  }

  if (v80)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v91, &stru_1F2575650, @"USE_SURFACE_MODIFIER");
    sub_1AF1F0F74(&v530, 1, buf);
  }

  if (v81)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v91, &stru_1F2575650, @"USE_FRAGMENT_MODIFIER");
    sub_1AF1F0F74(&v530, 2, v563);
  }

  if (v82)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v91, &stru_1F2575650, @"USE_LIGHT_MODIFIER");
    sub_1AF1F0F74(&v530, 3, &v540);
  }

  v93 = v529;
  if (v532)
  {
    objc_msgSend_addObject_(v532, v91, @"USE_GEOMETRY_MODIFIER", v92);
    objc_msgSend_addObject_(v532, v94, @"USE_SURFACE_MODIFIER", v95);
    objc_msgSend_addObject_(v532, v96, @"USE_FRAGMENT_MODIFIER", v97);
    objc_msgSend_addObject_(v532, v98, @"USE_LIGHT_MODIFIER", v99);
    v546[0] = MEMORY[0x1E69E9820];
    v546[1] = 3221225472;
    v546[2] = sub_1AF1F10B4;
    v546[3] = &unk_1E7A7C520;
    v546[4] = &v530;
    sub_1AF1489B4(v546);
    v100 = sub_1AF14A978();
    v545[0] = MEMORY[0x1E69E9820];
    v545[1] = 3221225472;
    v545[2] = sub_1AF1F10C4;
    v545[3] = &unk_1E7A79958;
    v545[4] = &v530;
    sub_1AF28A67C(v100, v545);
  }

  v103 = v520;
  if (objc_msgSend_objectForKeyedSubscript_(v531, v91, @"USE_MODIFIER_FRAMEBUFFER_COLOR0", v92))
  {
    if (sub_1AF1305F8(v521, 2048))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v104, &unk_1F25D4390, @"CFX_SUPPORTS_PROGRAMMABLE_BLENDING");
    }

    else
    {
      v105 = sub_1AF0D5194();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE49C0();
      }
    }
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v101, @"USE_MODIFIER_FRAMEBUFFER_COLOR0", v102);
    objc_msgSend_addObject_(v532, v106, @"CFX_SUPPORTS_PROGRAMMABLE_BLENDING", v107);
  }

  v108 = v52 & 0xF;
  if (objc_msgSend_objectForKeyedSubscript_(v531, v101, @"USE_CLIP_DISTANCE3", v102))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v109, @"4", @"USE_CLIP_DISTANCE_COUNT");
    v513 = 4;
    v113 = 0x1E696A000;
    v114 = v514;
    goto LABEL_87;
  }

  v113 = 0x1E696A000;
  v114 = v514;
  if (objc_msgSend_objectForKeyedSubscript_(v531, v109, @"USE_CLIP_DISTANCE2", v110))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v115, @"3", @"USE_CLIP_DISTANCE_COUNT");
    v117 = 3;
LABEL_86:
    v513 = v117;
    goto LABEL_87;
  }

  if (objc_msgSend_objectForKeyedSubscript_(v531, v115, @"USE_CLIP_DISTANCE1", v116))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v118, @"2", @"USE_CLIP_DISTANCE_COUNT");
    v117 = 2;
    goto LABEL_86;
  }

  if (objc_msgSend_objectForKeyedSubscript_(v531, v118, @"USE_CLIP_DISTANCE0", v119))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v111, @"1", @"USE_CLIP_DISTANCE_COUNT");
    v117 = 1;
    goto LABEL_86;
  }

  v513 = 0;
LABEL_87:
  if (v108 == 3)
  {
    v120 = 0;
    v121 = 1;
    BYTE3(v543[0]) = 1;
  }

  else
  {
    v120 = 0;
    if ((v525 & 0xD) != 0)
    {
      v121 = v50;
    }

    else
    {
      v121 = 0;
    }

    if (v108 == 1 && v121)
    {
      v120 = sub_1AF13E474(v529, 2u);
      v121 = 1;
    }
  }

  if (objc_msgSend_objectForKeyedSubscript_(v531, v111, @"USE_SPECULAR", v112))
  {
    v123 = 1;
  }

  else
  {
    v123 = v120;
  }

  v519 = v121;
  v512 = v123;
  if (v123)
  {
    if (BYTE3(v543[0]))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v122, &unk_1F25D4390, @"USE_VIEW");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v122, &unk_1F25D4378, @"USE_VIEW");
    }

    if (BYTE3(v543[0]))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v124, &unk_1F25D4390, @"USE_SHININESS");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v124, &unk_1F25D4378, @"USE_SHININESS");
    }
  }

  BYTE2(v543[0]) = 0;
  LOWORD(v543[0]) = 0;
  DWORD1(v543[0]) = 0;
  LOBYTE(v544) = 1;
  v126 = sub_1AF13E4B4(v529);
  v127 = @"USE_CONSTANT";
  if (!v108 || v108 == 2)
  {
    goto LABEL_109;
  }

  if (v108 == 4)
  {
    v127 = @"USE_SHADOWONLY";
LABEL_109:
    objc_msgSend_setObject_forKeyedSubscript_(v531, v125, &stru_1F2575650, v127);
  }

  v527 = v108;
  if (!v121)
  {
    goto LABEL_218;
  }

  if (v540)
  {
    v128 = sub_1AF148804(v540);
    if (v128)
    {
      objc_msgSend_appendString_(*(&v539 + 1), v125, v128, v129);
    }
  }

  if (v108 == 3)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v125, &stru_1F2575650, @"USE_PBR");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v130, &unk_1F25D4390, @"USE_VIEW");
  }

  v131 = sub_1AF13E4E4(v529);
  v132 = sub_1AF13E41C(v529);
  if (!v132)
  {
    goto LABEL_208;
  }

  v506 = v126;
  v134 = 0;
  v135 = v132;
  v523 = v132;
  v522 = v131;
  do
  {
    if (((v131 >> v134) & 1) == 0)
    {
      goto LABEL_196;
    }

    v136 = sub_1AF13E424(v530, v134);
    v139 = v136;
    v140 = v136 & 7;
    v141 = (v136 & 0x40000) != 0 ? "true" : "false";
    if ((v136 & 7) == 0)
    {
      goto LABEL_196;
    }

    v142 = ((v136 & 6) == 2) & (v136 >> 3);
    if (v142)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v137, &stru_1F2575650, @"USE_GOBO");
      if (BYTE3(v543[0]))
      {
        v145 = 176;
      }

      else
      {
        v145 = 168;
      }

      objc_msgSend_appendFormat_(*(&v530 + v145), v143, @", texture2d<half> u_goboTexture%d\n", v144, v134);
      objc_msgSend_appendFormat_(*(&v530 + v145), v146, @", sampler u_goboTexture%dSampler\n", v147, v134);
    }

    v148 = (v139 >> 6) & 7;
    if (v140 == 2)
    {
      v149 = ((v139 & 0x10) != 0) | v142 & 1;
    }

    else
    {
      if (v140 == 5)
      {
        if (v148 == 4)
        {
          objc_msgSend_appendFormat_(v542, v137, @", device packed_float2* u_areaPolygonPositions%d\n", v138, v134);
        }
      }

      else if (v140 == 6)
      {
        objc_msgSend_appendFormat_(v542, v137, @", texture2d<half> u_iesTexture%d\n", v138, v134);
      }

      v149 = 1;
    }

    v150 = (v139 >> 9) & 0x1F;
    LOBYTE(v543[0]) |= v149;
    BYTE1(v543[0]) |= (v139 & 0x10) >> 4;
    v151 = DWORD1(v543[0]);
    if (DWORD1(v543[0]) <= v150)
    {
      v151 = (v139 >> 9) & 0x1F;
    }

    DWORD1(v543[0]) = v151;
    if (!sub_1AF13E568(v530))
    {
      v157 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v152, @"%d", v153, v134);
      goto LABEL_149;
    }

    v154 = sub_1AF13E574(v530);
    if (v154 == 1)
    {
      if (BYTE3(v543[0]) == 1)
      {
        v157 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v155, @"USE_MULTIPLE_RENDERING * %d + in.sliceIndex", v156, v134);
      }

      else
      {
        v157 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v155, @"USE_MULTIPLE_RENDERING * %d + out.sliceIndex", v156, v134);
      }

      goto LABEL_149;
    }

    if (v154 == 2)
    {
      v157 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v155, @"USE_MULTIPLE_RENDERING * %d + amplificationID", v156, v134);
LABEL_149:
      v161 = v157;
      goto LABEL_150;
    }

    v160 = sub_1AF0D5194();
    if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE49F4(buf, &buf[1], v160);
    }

    v161 = 0;
LABEL_150:
    if (v140 > 2)
    {
      switch(v140)
      {
        case 3:
          v166 = v142 ^ 1;
          if ((v139 & 0x10) == 0)
          {
            v166 = 1;
          }

          if (v166)
          {
            if (v142)
            {
              v499 = v134;
              v500 = v134;
              objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_spot_gobo(vfx_lights[%@], u_goboTexture%d, u_goboTexture%dSampler);\n", v159, v161);
            }

            else if ((v139 & 0x10) != 0)
            {
              v499 = "u_shadowTexture";
              v500 = ((v139 >> 9) & 0x1F);
              objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_spot_soft_shadows(vfx_lights[%@], %s, u_shadowKernel, %d);\n", v159, v161);
            }

            else
            {
              objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_spot(vfx_lights[%@]);\n", v159, v161);
            }
          }

          else
          {
            v501 = v134;
            v504 = v134;
            v499 = v134;
            v500 = ((v139 >> 9) & 0x1F);
            objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_spot_gobo_soft_shadows(vfx_lights[%@], u_shadowTexture%d, u_shadowKernel, %d, u_goboTexture%d, u_goboTexture%dSampler);\n", v159, v161);
          }

          break;
        case 5:
          objc_msgSend_setObject_forKeyedSubscript_(v531, v158, &stru_1F2575650, @"USE_AREA_LIGHT");
          if (((v139 >> 6) & 7) <= 1)
          {
            v108 = v527;
            v135 = v523;
            v131 = v522;
            if (v148)
            {
              objc_msgSend_appendFormat_(v539, v164, @"\t_lightingContribution.add_area_rectangle(vfx_lights[%@], u_areaLightBakedDataTexture);\n", v165, v161);
            }

            else
            {
              objc_msgSend_appendFormat_(v539, v164, @"\t_lightingContribution.add_area_line(vfx_lights[%@], u_areaLightBakedDataTexture);\n", v165, v161);
            }
          }

          else
          {
            v108 = v527;
            v135 = v523;
            v131 = v522;
            switch(v148)
            {
              case 2:
                objc_msgSend_appendFormat_(v539, v164, @"\t_lightingContribution.add_area_ellipse(vfx_lights[%@], u_areaLightBakedDataTexture);\n", v165, v161);
                break;
              case 3:
                objc_msgSend_appendFormat_(v539, v164, @"\t_lightingContribution.add_area_ellipsoid(vfx_lights[%@], u_areaLightBakedDataTexture);\n", v165, v161);
                break;
              case 4:
                v499 = v134;
                objc_msgSend_appendFormat_(v539, v164, @"\t_lightingContribution.add_area_polygon(vfx_lights[%@], u_areaLightBakedDataTexture, u_areaPolygonPositions%d);\n", v165, v161);
                break;
            }
          }

          goto LABEL_194;
        case 6:
          objc_msgSend_setObject_forKeyedSubscript_(v531, v158, &stru_1F2575650, @"USE_IES_LIGHT");
          if ((v139 & 0x10) != 0)
          {
            v500 = "u_shadowTexture";
            v501 = (v139 >> 9) & 0x1F;
            v499 = v134;
            objc_msgSend_appendFormat_(v539, v162, @"\t_lightingContribution.add_ies_soft_shadows(vfx_lights[%@], u_iesTexture%d, %s, u_shadowKernel, %d);\n", v163, v161);
          }

          else
          {
            v499 = v134;
            objc_msgSend_appendFormat_(v539, v162, @"\t_lightingContribution.add_ies(vfx_lights[%@], u_iesTexture%d);\n", v163, v161);
          }

          break;
        default:
          v167 = sub_1AF0D5194();
          v108 = v527;
          v135 = v523;
          v131 = v522;
          if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE4A34(v580, (v580 + 4), v167);
          }

          goto LABEL_194;
      }

      goto LABEL_192;
    }

    if (v140 == 1)
    {
      v135 = v523;
      if ((v139 & 0x10) != 0 && v544 == 1)
      {
        objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_omni_soft_shadows(vfx_lights[%@], %s, u_shadowKernel, %d);\n", v159, v161, "u_shadowTexture", (v139 >> 9) & 0x1F, v501, v504, v505);
      }

      else
      {
        objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_omni(vfx_lights[%@]);\n", v159, v161, v499, v500, v501, v504, v505);
      }

LABEL_174:
      v108 = v527;
LABEL_193:
      v131 = v522;
      goto LABEL_194;
    }

    if (v142)
    {
      v499 = v134;
      v500 = v134;
      objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_directional_gobo(vfx_lights[%@], u_goboTexture%d, u_goboTexture%dSampler);\n", v159, v161);
LABEL_192:
      v108 = v527;
      v135 = v523;
      goto LABEL_193;
    }

    if ((v139 & 0x10) == 0)
    {
      objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_directional(vfx_lights[%@]);\n", v159, v161);
      goto LABEL_192;
    }

    v135 = v523;
    if (((v139 >> 14) & 7) >= 2)
    {
      v168 = "true";
      if ((v139 & 0x20000) == 0)
      {
        v168 = "false";
      }

      objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_directional_cascaded_shadows(vfx_lights[%@], %s, %d, %s, u_shadowKernel, %d, %s);\n", v159, v161, "u_shadowTexture", (v139 >> 14) & 7, v168, (v139 >> 9) & 0x1F, v141);
      goto LABEL_174;
    }

    v131 = v522;
    if (v150 < 2)
    {
      v499 = "u_shadowTexture";
      objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_directional_hard_shadows(vfx_lights[%@], %s);\n", v159, v161);
    }

    else
    {
      v499 = "u_shadowTexture";
      v500 = ((v139 >> 9) & 0x1F);
      if ((v139 & 0x80000) != 0)
      {
        objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_directional_pcf_grid_shadows(vfx_lights[%@], %s, %d);\n", v159, v161);
      }

      else
      {
        objc_msgSend_appendFormat_(v539, v158, @"\t_lightingContribution.add_directional_soft_shadows(vfx_lights[%@], %s, u_shadowKernel, %d);\n", v159, v161);
      }
    }

    v108 = v527;
LABEL_194:
    if (v532)
    {
      objc_msgSend_addObject_(v532, v164, @"USE_GOBO", v165);
      objc_msgSend_addObject_(v532, v169, @"USE_IES_LIGHT", v170);
      objc_msgSend_addObject_(v532, v171, @"USE_AREA_LIGHT", v172);
    }

LABEL_196:
    ++v134;
  }

  while (v135 != v134);
  v173 = 0;
  v93 = v529;
  v103 = v520;
  v113 = 0x1E696A000uLL;
  v114 = v514;
  v126 = v506;
  while ((sub_1AF13E424(v530, v173) & 0x10) == 0)
  {
    if (v135 == ++v173)
    {
      goto LABEL_208;
    }
  }

  objc_msgSend_appendFormat_(v542, v133, @", depth2d<float> u_shadowTexture\n", v174);
LABEL_208:
  objc_msgSend_setObject_forKeyedSubscript_(v531, v133, @"1", @"CFX_USE_ATLAS_FOR_SHADOW_MAP");
  objc_msgSend_setObject_forKeyedSubscript_(v531, v175, @"uchar", @"CFXLightIndexType");
  objc_msgSend_setObject_forKeyedSubscript_(v531, v176, &stru_1F2575650, @"CFX_USE_TEXTURE_FOR_LIGHT_INDICES");
  v121 = v519;
  if (sub_1AF13E4CC(v93))
  {
    if (sub_1AF1305F8(v521, 256))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v178, &stru_1F2575650, @"CFX_SUPPORT_CUBE_ARRAY");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v531, v178, &stru_1F2575650, @"CFX_USE_REFLECTION_PROBES");
  }

  if (v540)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v177, @"VFXShadingModelCustom", @"LIGHTING_MODEL");
  }

  else
  {
    v179 = sub_1AF165914(v108);
    objc_msgSend_setObject_forKeyedSubscript_(v531, v180, v179, @"LIGHTING_MODEL");
  }

  if ((sub_1AF13E4C0(v93) & 1) != 0 || sub_1AF13E4CC(v93))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v125, &stru_1F2575650, @"USE_CLUSTERED_LIGHTING");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v181, &unk_1F25D4390, @"USE_POSITION");
  }

LABEL_218:
  if (v532)
  {
    objc_msgSend_addObject_(v532, v125, @"USE_PBR", v127);
    objc_msgSend_addObject_(v532, v182, @"USE_CONSTANT", v183);
    objc_msgSend_addObject_(v532, v184, @"USE_SHADOWONLY", v185);
    objc_msgSend_addObject_(v532, v186, @"CFX_USE_TEXTURE_FOR_LIGHT_INDICES", v187);
    objc_msgSend_addObject_(v532, v188, @"CFX_SUPPORT_CUBE_ARRAY", v189);
    objc_msgSend_addObject_(v532, v190, @"CFX_USE_REFLECTION_PROBES", v191);
    objc_msgSend_addObject_(v532, v192, @"LIGHTING_MODEL", v193);
    objc_msgSend_addObject_(v532, v194, @"USE_CLUSTERED_LIGHTING", v195);
  }

  if (v108 == 2 && (v525 & 0x280) != 0)
  {
    BYTE3(v543[0]) = 1;
  }

  if (sub_1AF13E528(v93))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v196, &stru_1F2575650, @"USE_FOG");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v197, &unk_1F25D4390, @"USE_POSITION");
  }

  if ((v121 & ((v103 & 8) >> 3)) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v196, &stru_1F2575650, @"USE_SSAO");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v198, &unk_1F25D4390, @"USE_POSITION");
  }

  if ((v121 & ((v103 & 0x1000) >> 12)) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v196, &stru_1F2575650, @"USE_BENTNORMALS");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v199, &unk_1F25D4390, @"USE_POSITION");
  }

  if (sub_1AF13E474(v93, 0x14u) && sub_1AF13E474(v93, 0x15u) && sub_1AF13E474(v93, 3u))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v200, &stru_1F2575650, @"USE_FRESNEL");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v202, &unk_1F25D4390, @"USE_VIEW");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v203, &unk_1F25D4390, @"USE_NORMAL");
  }

  if ((v121 & ((v525 & 0x40) != 0)) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v200, &stru_1F2575650, @"AVOID_OVERLIGHTING");
  }

  if (v126)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v200, &stru_1F2575650, @"USE_AMBIENT_LIGHTING");
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v200, @"USE_FOG", v201);
    objc_msgSend_addObject_(v532, v204, @"USE_SSAO", v205);
    objc_msgSend_addObject_(v532, v206, @"USE_BENTNORMALS", v207);
    objc_msgSend_addObject_(v532, v208, @"USE_FRESNEL", v209);
    objc_msgSend_addObject_(v532, v210, @"AVOID_OVERLIGHTING", v211);
    objc_msgSend_addObject_(v532, v212, @"USE_AMBIENT_LIGHTING", v213);
  }

  if (v121)
  {
    v214 = sub_1AF13E4D8(v93);
    if (v214)
    {
      v217 = objc_msgSend_numberWithUnsignedChar_(*(v113 + 3480), v215, v214, v216);
      objc_msgSend_setObject_forKeyedSubscript_(v531, v218, v217, @"USE_PROBES_LIGHTING");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v531, v215, &stru_1F2575650, @"USE_LIGHTING");
    if (BYTE3(v543[0]) == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v219, &stru_1F2575650, @"USE_PER_PIXEL_LIGHTING");
      objc_msgSend_setObject_forKeyedSubscript_(v531, v220, &unk_1F25D4390, @"USE_NORMAL");
      if (v512 || (v543[0] & 1) != 0)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v531, v200, &unk_1F25D4390, @"USE_POSITION");
      }

      if (BYTE2(v543[0]) == 1)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v531, v200, &unk_1F25D4390, @"USE_MODULATE");
      }
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v219, &stru_1F2575650, @"USE_PER_VERTEX_LIGHTING");
      if (!objc_msgSend_objectForKeyedSubscript_(v531, v221, @"USE_NORMAL", v222))
      {
        objc_msgSend_setObject_forKeyedSubscript_(v531, v223, &unk_1F25D4378, @"USE_NORMAL");
      }

      if (!objc_msgSend_objectForKeyedSubscript_(v531, v223, @"USE_VIEW", v224))
      {
        objc_msgSend_setObject_forKeyedSubscript_(v531, v225, &unk_1F25D4378, @"USE_VIEW");
      }

      if (!objc_msgSend_objectForKeyedSubscript_(v531, v225, @"USE_POSITION", v226))
      {
        objc_msgSend_setObject_forKeyedSubscript_(v531, v200, &unk_1F25D4378, @"USE_POSITION");
      }
    }
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v200, @"USE_PROBES_LIGHTING", v201);
    objc_msgSend_addObject_(v532, v227, @"USE_LIGHTING", v228);
    objc_msgSend_addObject_(v532, v229, @"USE_PER_PIXEL_LIGHTING", v230);
    objc_msgSend_addObject_(v532, v231, @"USE_PER_VERTEX_LIGHTING", v232);
    objc_msgSend_addObject_(v532, v233, @"USE_MODULATE", v234);
  }

  if (sub_1AF13E51C(v93))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v235, &stru_1F2575650, @"HAS_NORMAL");
  }

  if ((v114 & 2) != 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v235, &stru_1F2575650, @"HAS_VERTEX_COLOR");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v236, &stru_1F2575650, @"USE_VERTEX_COLOR");
  }

  if (sub_1AF13E540(v93))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v237, &stru_1F2575650, @"USE_INSTANCING");
  }

  if (sub_1AF13E54C(v93))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &unk_1F25D4390, @"USE_POSITION");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v240, &stru_1F2575650, @"USE_POINT_RENDERING");
    if ((v103 & 0x20) != 0)
    {
      goto LABEL_264;
    }

LABEL_268:
    if ((v103 & 4) == 0)
    {
      goto LABEL_269;
    }

LABEL_265:
    objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &stru_1F2575650, @"USE_LASTFRAMETRANSFORM");
    if ((v103 & 0x800) == 0)
    {
      goto LABEL_271;
    }

LABEL_270:
    objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &stru_1F2575650, @"USE_MOTIONBLUR");
    goto LABEL_271;
  }

  if ((v103 & 0x20) == 0)
  {
    goto LABEL_268;
  }

LABEL_264:
  objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &stru_1F2575650, @"DISABLE_SPECULAR");
  if ((v103 & 4) != 0)
  {
    goto LABEL_265;
  }

LABEL_269:
  if ((v103 & 0x800) != 0)
  {
    goto LABEL_270;
  }

LABEL_271:
  if (v532)
  {
    objc_msgSend_addObject_(v532, v238, @"HAS_NORMAL", v239);
    objc_msgSend_addObject_(v532, v241, @"HAS_VERTEX_COLOR", v242);
    objc_msgSend_addObject_(v532, v243, @"USE_VERTEX_COLOR", v244);
    objc_msgSend_addObject_(v532, v245, @"USE_INSTANCING", v246);
    objc_msgSend_addObject_(v532, v247, @"USE_POINT_RENDERING", v248);
    objc_msgSend_addObject_(v532, v249, @"DISABLE_LINEAR_RENDERING", v250);
    objc_msgSend_addObject_(v532, v251, @"DISABLE_SPECULAR", v252);
    objc_msgSend_addObject_(v532, v253, @"USE_MOTIONBLUR", v254);
    objc_msgSend_addObject_(v532, v255, @"USE_LASTFRAMETRANSFORM", v256);
  }

  if ((v103 & 0x40) != 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &stru_1F2575650, @"USE_COLOR1_OUTPUT");
    if (v103)
    {
      goto LABEL_289;
    }

LABEL_275:
    if ((v103 & 2) == 0)
    {
      goto LABEL_276;
    }

LABEL_290:
    objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &stru_1F2575650, @"USE_ALBEDO_METALNESS_OUTPUT");
    if ((v103 & 0x80) != 0)
    {
      goto LABEL_291;
    }

LABEL_277:
    if ((v103 & 0x10) == 0)
    {
      goto LABEL_278;
    }

LABEL_292:
    objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &stru_1F2575650, @"USE_OUTLINE");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v276, &stru_1F2575650, @"USE_MODELTRANSFORM");
    if ((v103 & 0x200) != 0)
    {
LABEL_279:
      objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &unk_1F25D4390, @"USE_NORMAL");
      objc_msgSend_setObject_forKeyedSubscript_(v531, v257, &unk_1F25D4390, @"USE_POSITION");
      objc_msgSend_setObject_forKeyedSubscript_(v531, v258, &stru_1F2575650, @"USE_MODELTRANSFORM");
      objc_msgSend_setObject_forKeyedSubscript_(v531, v259, &stru_1F2575650, @"USE_GBUFFER_OUTPUT");
      objc_msgSend_setObject_forKeyedSubscript_(v531, v260, &stru_1F2575650, @"USE_LASTFRAMETRANSFORM");
    }
  }

  else
  {
    if ((v103 & 1) == 0)
    {
      goto LABEL_275;
    }

LABEL_289:
    objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &unk_1F25D4390, @"USE_NORMAL");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v275, &stru_1F2575650, @"USE_NORMAL_ROUGHNESS_OUTPUT");
    if ((v103 & 2) != 0)
    {
      goto LABEL_290;
    }

LABEL_276:
    if ((v103 & 0x80) == 0)
    {
      goto LABEL_277;
    }

LABEL_291:
    objc_msgSend_setObject_forKeyedSubscript_(v531, v238, &stru_1F2575650, @"USE_RADIANCE_AO_OUTPUT");
    if ((v103 & 0x10) != 0)
    {
      goto LABEL_292;
    }

LABEL_278:
    if ((v103 & 0x200) != 0)
    {
      goto LABEL_279;
    }
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v238, @"USE_COLOR1_OUTPUT", v239);
    objc_msgSend_addObject_(v532, v261, @"USE_NORMAL_ROUGHNESS_OUTPUT", v262);
    objc_msgSend_addObject_(v532, v263, @"USE_ALBEDO_METALNESS_OUTPUT", v264);
    objc_msgSend_addObject_(v532, v265, @"USE_RADIANCE_AO_OUTPUT", v266);
    objc_msgSend_addObject_(v532, v267, @"USE_OUTLINE", v268);
    objc_msgSend_addObject_(v532, v269, @"USE_GBUFFER_OUTPUT", v270);
  }

  if (sub_1AF13E464(v93, 7u))
  {
    sub_1AF1F00B0(&v530, 7u, 7, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v531, v271, &stru_1F2575650, @"USE_AMBIENTOCCLUSION_MAP");
  }

  sub_1AF1F00B0(&v530, 1u, 1, 1);
  sub_1AF1F00B0(&v530, 2u, 2, (v512 | v508) & 1);
  sub_1AF1F00B0(&v530, 8u, 8, 1);
  sub_1AF1F00B0(&v530, 0, 0, 1);
  sub_1AF1F00B0(&v530, 5u, 5, 1);
  sub_1AF1F00B0(&v530, 6u, 6, v509);
  if (BYTE8(v532) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v272, &unk_1F25D4390, @"USE_TANGENT");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v273, &unk_1F25D4390, @"USE_BITANGENT");
  }

  sub_1AF1F00B0(&v530, 9u, 9, v108 == 3);
  sub_1AF1F00B0(&v530, 0xAu, 10, v108 == 3);
  if (v108 == 3)
  {
    v274 = sub_1AF13E474(v93, 0xBu);
  }

  else
  {
    v274 = 0;
  }

  sub_1AF1F00B0(&v530, 0xBu, 11, v274);
  sub_1AF1F00B0(&v530, 0xCu, 12, v274);
  sub_1AF1F00B0(&v530, 0xDu, 13, v274);
  if (BYTE8(v532) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v277, &unk_1F25D4390, @"USE_TANGENT");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v278, &unk_1F25D4390, @"USE_BITANGENT");
  }

  if (v108 == 3)
  {
    v279 = sub_1AF13E474(v93, 0xEu);
    if ((v103 & 0x200) != 0)
    {
LABEL_302:
      objc_msgSend_setObject_forKeyedSubscript_(v531, v277, &unk_1F25D4390, @"USE_SUBSURFACE");
      goto LABEL_303;
    }
  }

  else
  {
    v279 = 0;
    if ((v103 & 0x200) != 0)
    {
      goto LABEL_302;
    }
  }

  if (v279)
  {
    goto LABEL_302;
  }

LABEL_303:
  sub_1AF1F00B0(&v530, 0xEu, 14, v279);
  sub_1AF1F00B0(&v530, 0xFu, 15, v279);
  if (v108 == 3)
  {
    v281 = sub_1AF13E474(v93, 0x10u);
    if ((v103 & 0x200) != 0)
    {
LABEL_308:
      objc_msgSend_setObject_forKeyedSubscript_(v531, v280, &unk_1F25D4390, @"USE_TRANSMISSION");
      goto LABEL_309;
    }
  }

  else
  {
    v281 = 0;
    if ((v103 & 0x200) != 0)
    {
      goto LABEL_308;
    }
  }

  if (v281)
  {
    goto LABEL_308;
  }

LABEL_309:
  sub_1AF1F00B0(&v530, 0x10u, 16, v281);
  sub_1AF1F00B0(&v530, 0x11u, 17, v281);
  sub_1AF1F00B0(&v530, 3u, 3, 1);
  if (BYTE8(v532) == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v282, &unk_1F25D4390, @"USE_VIEW");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v283, &unk_1F25D4390, @"USE_NORMAL");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v284, &unk_1F25D4390, @"USE_POSITION");
  }

  v285 = sub_1AF13E474(v93, 4u);
  sub_1AF1F00B0(&v530, 4u, 4, v285);
  if (v108 == 3)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v286, &stru_1F2575650, @"USE_PBR_TRANSPARENCY");
  }

  if ((v525 & 0x7800) == 0x1000 || (v525 & 0x20) != 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v286, &stru_1F2575650, @"USE_DOUBLE_SIDED");
  }

  if ((v510 & 1) == 0)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v286, &stru_1F2575650, @"USE_NODE_OPACITY");
  }

  if (qword_1EB654CC8 != -1)
  {
    sub_1AFDE4A78();
  }

  if ((byte_1EB654CC0 & 1) == 0 && ((v507 & 0x200) != 0 || (sub_1AF13E464(v93, 1u) & 1) == 0))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v286, &stru_1F2575650, @"DIFFUSE_PREMULTIPLIED");
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v286, @"USE_SUBSURFACE", v287);
    objc_msgSend_addObject_(v532, v288, @"USE_TRANSMISSION", v289);
    objc_msgSend_addObject_(v532, v290, @"LOCK_AMBIENT_WITH_DIFFUSE", v291);
    objc_msgSend_addObject_(v532, v292, @"USE_DOUBLE_SIDED", v293);
    objc_msgSend_addObject_(v532, v294, @"USE_TRANSPARENT", v295);
    objc_msgSend_addObject_(v532, v296, @"USE_PBR_TRANSPARENCY", v297);
    objc_msgSend_addObject_(v532, v298, @"USE_PBR_LAMBERTIAN_REFLECTION", v299);
    objc_msgSend_addObject_(v532, v300, @"USE_NODE_OPACITY", v301);
    objc_msgSend_addObject_(v532, v302, @"DIFFUSE_PREMULTIPLIED", v303);
  }

  v304 = sub_1AF13E6AC(v93);
  if (v304 >= 1)
  {
    v307 = v304;
    for (j = 0; j != v307; ++j)
    {
      v309 = sub_1AF13E5F0(v93, j);
      v310 = sub_1AF13E650(v93, j);
      if (v310 != -1)
      {
        v311 = v310;
        objc_msgSend_appendFormat_(*(&v535 + 1), v305, @"    float2 %@Texcoord;\n", v306, v309);
        objc_msgSend_appendFormat_(v538, v312, @"    _surface.%@Texcoord = in.texcoord%d;\n", v313, v309, v311);
      }
    }
  }

  if (v511)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v305, &unk_1F25D4390, @"USE_ALPHA_CUTOFF");
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v305, @"USE_ALPHA_CUTOFF", v306);
  }

  v314 = sub_1AF13E580(v530);
  if (v314)
  {
    if (v314 >= 8)
    {
      v317 = 8;
    }

    else
    {
      v317 = v314;
    }

    if (v314 < 1)
    {
      v319 = 0;
    }

    else
    {
      v318 = 0;
      v319 = 0;
      do
      {
        v320 = sub_1AF13E594(v530, v318);
        objc_msgSend_appendString_(v536, v321, off_1E7A7C560[v318], v322);
        if (HIBYTE(v320) == 255)
        {
          v325 = v320;
          objc_msgSend_appendFormat_(v537, v323, @"out.texcoord%d = _geometry.texcoords[%d].xy;\n", v324, v318, v320, v500);
        }

        else
        {
          v326 = DWORD2(v538);
          ++DWORD2(v538);
          v325 = v320;
          objc_msgSend_appendFormat_(v537, v323, @"out.texcoord%d = (vfx_commonprofile.textureTransforms[%d] * float4(_geometry.texcoords[%d], 0., 1.)).xy;\n", v324, v318, v326, v320);
        }

        if (v325 <= 7)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v531, v315, &stru_1F2575650, off_1E7A7C5A0[v325]);
        }

        if (v319 <= v325 + 1)
        {
          v319 = v325 + 1;
        }

        ++v318;
      }

      while (v317 != v318);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v531, v315, &stru_1F2575650, @"USE_TEXCOORD");
    v93 = v529;
    v113 = 0x1E696A000uLL;
    v114 = v514;
  }

  else
  {
    v319 = 0;
  }

  if (DWORD2(v538))
  {
    v327 = objc_msgSend_numberWithUnsignedInt_(*(v113 + 3480), v315, DWORD2(v538), v316);
    objc_msgSend_setObject_forKeyedSubscript_(v531, v328, v327, @"TEXTURE_TRANSFORM_COUNT");
  }

  v329 = objc_msgSend_numberWithLong_(*(v113 + 3480), v315, v319, v316);
  objc_msgSend_setObject_forKeyedSubscript_(v531, v330, v329, @"kVFXTexcoordCount");
  if (v532)
  {
    objc_msgSend_addObject_(v532, v331, @"USE_TEXCOORD", v332);
    objc_msgSend_addObject_(v532, v333, @"TEXTURE_TRANSFORM_COUNT", v334);
    for (k = 0; k != 8; ++k)
    {
      objc_msgSend_addObject_(v532, v335, off_1E7A7C5A0[k], v336);
    }
  }

  v338 = sub_1AF13E464(v93, 0x12u);
  sub_1AF1F00B0(&v530, 0x12u, 18, v338);
  if (v338)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v339, &unk_1F25D4390, @"USE_NORMAL");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v341, &unk_1F25D4390, @"USE_TANGENT");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v342, &unk_1F25D4390, @"USE_BITANGENT");
  }

  v343 = objc_msgSend_objectForKeyedSubscript_(v531, v339, @"USE_VIEW", v340);
  if (objc_msgSend_intValue(v343, v344, v345, v346) == 2)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v347, &unk_1F25D4390, @"USE_POSITION");
  }

  if (objc_msgSend_objectForKeyedSubscript_(v531, v347, @"USE_NORMAL", v348) && !objc_msgSend_objectForKeyedSubscript_(v531, v349, @"HAS_NORMAL", v350))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v349, &unk_1F25D4390, @"USE_POSITION");
  }

  v353 = @"USE_MODELVIEWTRANSFORM";
  if (!objc_msgSend_objectForKeyedSubscript_(v531, v349, @"USE_POSITION", v350) && !objc_msgSend_objectForKeyedSubscript_(v531, v351, @"USE_INSTANCING", v352))
  {
    v353 = @"USE_MODELVIEWPROJECTIONTRANSFORM";
  }

  objc_msgSend_setObject_forKeyedSubscript_(v531, v351, &stru_1F2575650, v353);
  if (objc_msgSend_objectForKeyedSubscript_(v531, v354, @"USE_NORMAL", v355) || objc_msgSend_objectForKeyedSubscript_(v531, v356, @"USE_TANGENT", v357) || objc_msgSend_objectForKeyedSubscript_(v531, v356, @"USE_BITANGENT", v358))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v356, &stru_1F2575650, @"USE_MODELVIEWTRANSFORM");
  }

  if (sub_1AF13103C(v521))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v359, &stru_1F2575650, @"USE_LATE_LATCHING");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v362, &stru_1F2575650, @"USE_RE_RADIANCE_IRRADIANCE_MAP_SAMPLING");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v363, &stru_1F2575650, @"USE_MODELTRANSFORM");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v364, &stru_1F2575650, @"USE_INVERSEMODELTRANSFORM");
    if (objc_msgSend_objectForKeyedSubscript_(v531, v365, @"USE_NORMALTRANSFORM", v366))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v359, &stru_1F2575650, @"USE_INVERSEMODELVIEWTRANSFORM");
    }
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v359, @"USE_LATE_LATCHING", v361);
    objc_msgSend_addObject_(v532, v367, @"USE_RE_RADIANCE_IRRADIANCE_MAP_SAMPLING", v368);
  }

  if ((v114 & 0x8000000) != 0)
  {
    objc_msgSend_appendString_(*(&v542 + 1), v359, @"interpolant<float2, interpolation::perspective> bezierCurveUV;\n", v361);
    objc_msgSend_appendString_(v542, v369, @", device void const *vfx_bezier_curve_data\n", v370);
    objc_msgSend_appendString_(v542, v371, @", device packed_float3 const *vfx_bezier_curve_controlPoints\n", v372);
    objc_msgSend_setObject_forKeyedSubscript_(v531, v373, &stru_1F2575650, @"NEED_IN_TEXCOORD0");
    objc_msgSend_setObject_forKeyedSubscript_(v531, v374, &stru_1F2575650, @"IS_BEZIER_CURVE");
    v375 = v516;
    if (v516 <= 0x20003)
    {
      v375 = 131075;
    }

    LODWORD(v516) = v375;
    v526 = 1;
  }

  else
  {
    v526 = 0;
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v359, @"IS_BEZIER_CURVE", v361);
    if (v532)
    {
      objc_msgSend_addObject_(v532, v359, @"USE_RE_SYSTEM_TREATMENTS", v361);
      objc_msgSend_addObject_(v532, v376, @"USE_SCREEN_UV", v377);
      objc_msgSend_addObject_(v532, v378, @"VFX_USES_RE_SHADERS", v379);
      objc_msgSend_addObject_(v532, v380, @"USE_CR_WORLD_POSITION", v381);
    }
  }

  if (objc_msgSend_length(v533, v359, v360, v361))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v382, &stru_1F2575650, @"USE_SHADER_MODIFIERS");
  }

  if (objc_msgSend_length(*(&v535 + 1), v382, v383, v384))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v385, &stru_1F2575650, @"USE_SURFACE_EXTRA_DECL");
  }

  if (objc_msgSend_length(*(&v542 + 1), v385, v386, v387))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v388, &stru_1F2575650, @"USE_EXTRA_VARYINGS");
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v388, @"USE_SHADER_MODIFIERS", v389);
    objc_msgSend_addObject_(v532, v390, @"USE_SURFACE_EXTRA_DECL", v391);
    objc_msgSend_addObject_(v532, v392, @"USE_EXTRA_VARYINGS", v393);
  }

  v394 = sub_1AF28A7E4(@"vfx_metal");
  v395 = sub_1AF28A7E4(@"vfx_util.h");
  v396 = sub_1AF28A7E4(@"vfx_shadowmap_util.h");
  if (v527 == 3)
  {
    v397 = sub_1AF28A7E4(@"CFX-PBR.metal");
  }

  else
  {
    v397 = &stru_1F2575650;
  }

  sub_1AF1ED338(&v530, v515, v529);
  if (objc_msgSend_objectForKeyedSubscript_(v531, v398, @"HAS_NORMAL", v399) || objc_msgSend_objectForKeyedSubscript_(v531, v400, @"USE_OPENSUBDIV", v401))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v400, @"1", @"HAS_OR_GENERATES_NORMAL");
  }

  v404 = &stru_1F2575650;
  if (v515)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v400, &stru_1F2575650, @"USE_TESSELLATION");
    v404 = sub_1AF28A7E4(@"vfx_tessellation.h");
    v405 = (v114 >> 3) & 3;
    if (v405 == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v400, &stru_1F2575650, @"TESSELLATION_SMOOTHING_MODE_PN_TRIANGLE");
    }

    else if (v405 == 2)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v531, v400, &stru_1F2575650, @"TESSELLATION_SMOOTHING_MODE_PHONG");
    }
  }

  if (v532)
  {
    sub_1AF174E08(v532, v400, v402, v403);
    objc_msgSend_addObject_(v532, v406, @"HAS_OR_GENERATES_NORMAL", v407);
    objc_msgSend_addObject_(v532, v408, @"USE_TESSELLATION", v409);
  }

  v410 = (v114 >> 27) & 1;
  v562[0] = *(&v535 + 1);
  v562[1] = *(&v540 + 1);
  if (v535)
  {
    v411 = v535;
  }

  else
  {
    v411 = &stru_1F2575650;
  }

  v562[2] = v411;
  v412 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v400, v562, 3);
  v414 = objc_msgSend_vfx_stringByReplacingCharactersInRanges_withStrings_(self->_originalLightingSourceCode, v413, self->_lightingInjectionPointRanges, v412);
  v548[0] = v394;
  v548[1] = v395;
  v548[2] = v397;
  v416 = self;
  v548[3] = v396;
  v548[4] = v404;
  v548[5] = v536;
  v548[6] = *(&v542 + 1);
  v548[7] = v533;
  v548[8] = v414;
  v549 = *(v543 + 8);
  v550 = *(&v543[1] + 1);
  v551 = *(&v541 + 1);
  v552 = *(&v537 + 1);
  v553 = *(&v533 + 1);
  if (BYTE3(v543[0]))
  {
    v417 = &stru_1F2575650;
  }

  else
  {
    v417 = v539;
  }

  if (!v519)
  {
    v417 = &stru_1F2575650;
  }

  v554 = v417;
  v555 = v537;
  v556 = v542;
  v557 = v538;
  v558 = v534;
  v559 = v541;
  if ((v519 & BYTE3(v543[0])) != 0)
  {
    v418 = v539;
  }

  else
  {
    v418 = &stru_1F2575650;
  }

  v560 = v418;
  v561 = *(&v534 + 1);
  v419 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v415, v548, 23);
  v421 = objc_msgSend_vfx_stringByReplacingCharactersInRanges_withStrings_(self->_originalSourceCode, v420, self->_injectionPointRanges, v419);
  hasBezierCurveDeformer = objc_msgSend_splitInputOutputStructsIfNeededForSourceCode_generatedFromReplacementStrings_perPixelLighting_clipDistanceCount_hasBezierCurveDeformer_(self, v422, v421, v419, BYTE3(v543[0]), v513, v410);
  v427 = hasBezierCurveDeformer;
  if (v517)
  {
    v524 = v410;
    v528 = hasBezierCurveDeformer;
    v428 = objc_msgSend_mutableCopy(v419, v424, v425, v426);
    v432 = objc_msgSend_count(self->_injectionPointRanges, v429, v430, v431);
    if (v432)
    {
      v435 = v432;
      v436 = 0;
      while (1)
      {
        v437 = objc_msgSend_objectAtIndexedSubscript_(v416->_injectionPointRanges, v433, v436, v434);
        v441 = objc_msgSend_rangeValue(v437, v438, v439, v440);
        v443 = objc_msgSend_substringWithRange_(v416->_originalSourceCode, v442, v441, v442);
        if (!objc_msgSend_hasPrefix_(v443, v444, @"#import", v445))
        {
          break;
        }

        if ((objc_msgSend_containsString_(v443, v446, @"CFX-Lighting.metal", v448) & 1) == 0)
        {
          v449 = objc_msgSend_objectAtIndexedSubscript_(v419, v433, v436, v434);
          v452 = MEMORY[0x1E696AEC0];
          v502 = v443;
          goto LABEL_426;
        }

LABEL_431:
        if (v435 == ++v436)
        {
          goto LABEL_432;
        }
      }

      if (objc_msgSend_length(*(&v543[1] + 1), v446, v447, v448) && objc_msgSend_containsString_(v443, v453, @"__OpenSubdivDeclShared__", v455))
      {
        v449 = objc_msgSend_objectAtIndexedSubscript_(v419, v453, v436, v455);
        v452 = MEMORY[0x1E696AEC0];
        v502 = @"#generate __OpenSubdivDeclShared__.metal";
LABEL_426:
        v456 = objc_msgSend_stringWithFormat_(v452, v450, @"%@%@\n%@%@\n%@", v451, @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v449, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v502, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n");
      }

      else
      {
        if (!objc_msgSend_length(*&v543[1], v453, v454, v455) || !objc_msgSend_containsString_(v443, v433, @"__OpenSubdivDeclPerPatchType__", v434))
        {
          goto LABEL_431;
        }

        v458 = objc_msgSend_objectAtIndexedSubscript_(v419, v433, v436, v434);
        v459 = MEMORY[0x1E696AEC0];
        v460 = sub_1AF13E588(v529);
        v503 = objc_msgSend_stringWithFormat_(v459, v461, @"#generate __OpenSubdivDeclShared__patchType%d.metal", v462, v460);
        v463 = v459;
        v416 = self;
        v456 = objc_msgSend_stringWithFormat_(v463, v464, @"%@%@\n%@%@\n%@", v465, @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v458, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", v503, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n");
      }

      objc_msgSend_setObject_atIndexedSubscript_(v428, v457, v456, v436);
      goto LABEL_431;
    }

LABEL_432:
    v466 = objc_msgSend_vfx_stringByReplacingCharactersInRanges_withStrings_(v416->_originalSourceCode, v433, v416->_injectionPointRanges, v428);
    v468 = objc_msgSend_splitInputOutputStructsIfNeededForSourceCode_generatedFromReplacementStrings_perPixelLighting_clipDistanceCount_hasBezierCurveDeformer_(v416, v467, v466, v428, BYTE3(v543[0]), v513, v524);

    v113 = 0x1E696A000;
    v427 = v528;
  }

  else
  {
    v468 = 0;
  }

  if (objc_msgSend_length(*(&v541 + 1), v424, v425, v426))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v469, &stru_1F2575650, @"USE_VERTEX_EXTRA_ARGUMENTS");
  }

  if (objc_msgSend_length(v542, v469, v470, v471))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v531, v472, &stru_1F2575650, @"USE_FRAGMENT_EXTRA_ARGUMENTS");
  }

  objc_msgSend_setObject_forKeyedSubscript_(v531, v472, &unk_1F25D4378, @"METAL");
  v473 = sub_1AF12F5E8(v521);
  if ((v520 & 0x400) != 0)
  {
    v476 = objc_msgSend_numberWithUnsignedInt_(*(v113 + 3480), v474, v473, v475);
    objc_msgSend_setObject_forKeyedSubscript_(v531, v477, v476, @"DEBUG_PIXEL");
  }

  if (v532)
  {
    objc_msgSend_addObject_(v532, v474, @"USE_VERTEX_EXTRA_ARGUMENTS", v475);
    objc_msgSend_addObject_(v532, v478, @"USE_FRAGMENT_EXTRA_ARGUMENTS", v479);
    objc_msgSend_addObject_(v532, v480, @"USE_BARYCENTRIC_WIREFRAME", v481);
    objc_msgSend_addObject_(v532, v482, @"USE_ARGUMENT_BUFFERS", v483);
    objc_msgSend_addObject_(v532, v484, @"DEBUG_PIXEL", v485);
  }

  v486 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v474, 0, v475);
  objc_msgSend_appendString_(v486, v487, @"////////////////////////////////////////////////\n", v488);
  objc_msgSend_appendFormat_(v486, v489, @"// CommonProfile Shader v%d\n", v490, 2);
  v495 = objc_msgSend_stringByAppendingString_(v486, v491, v427, v492);
  if (v517)
  {
    v468 = objc_msgSend_stringByAppendingString_(v486, v493, v468, v494);
  }

  v496 = sub_1AF1D5628(@"commonprofile_vert", @"commonprofile_frag", v526, v495, v468, v531, v532, 0, v516, 0);
  v497 = sub_1AF13E494(v529);
  sub_1AF1D52CC(v496, v497);
  return v496;
}

- (id)splitInputOutputStructsIfNeededForSourceCode:(id)a3 generatedFromReplacementStrings:(id)a4 perPixelLighting:(BOOL)a5 clipDistanceCount:(unint64_t)a6 hasBezierCurveDeformer:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v97[4] = *MEMORY[0x1E69E9840];
  if (a6 || a7)
  {
    v11 = self->_commonProfileIORange.length + self->_commonProfileIORange.location;
    v89 = 0;
    v90 = &v89;
    v91 = 0x3010000000;
    v92 = "";
    commonProfileIORange = self->_commonProfileIORange;
    injectionPointRanges = self->_injectionPointRanges;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = sub_1AF1F0898;
    v88[3] = &unk_1E7A7C4E0;
    v88[4] = self;
    v88[5] = a4;
    v88[6] = &v89;
    v88[7] = v11;
    objc_msgSend_enumerateObjectsUsingBlock_(injectionPointRanges, a2, v88, a4);
    v14 = objc_msgSend_substringWithRange_(a3, v13, v90[4], v90[5]);
    v20 = objc_msgSend_length(v14, v15, v16, v17) - 19;
    if (a6)
    {
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"    float clipDistance [[clip_distance]] [%d];\n} commonprofile_io_vert;\n\n", v19, a6);
      v23 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v14, v22, v20, 19, v21);
    }

    else
    {
      v23 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v14, v18, v20, 19, @"} commonprofile_io_vert;");
    }

    v27 = v23;
    if (v7)
    {
      v27 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v23, v24, @"interpolant<float2, interpolation::perspective> bezierCurveUV;\n", @"float2 bezierCurveUV;\n");
    }

    v28 = v90[4];
    v29 = v90[5];
    v30 = objc_msgSend_length(a3, v24, v25, v26);
    v31 = v29 + v28;
    v33 = objc_msgSend_rangeOfString_options_range_(a3, v32, @"vertex commonprofile_io", 0, v29 + v28, v30 - (v29 + v28));
    v35 = v34;
    v38 = objc_msgSend_length(a3, v34, v36, v37);
    v87 = objc_msgSend_rangeOfString_options_range_(a3, v39, @"commonprofile_io out;", 0, v33 + v35, v38 - (v33 + v35));
    v43 = v40;
    if (v9)
    {
      v44 = v40;
      v45 = v27;
      v46 = objc_msgSend_length(a3, v40, v41, v42);
      v48 = objc_msgSend_rangeOfString_options_range_(a3, v47, @"commonprofile_io out;", 0, v31, v46 - v31);
      v50 = v49;
      v97[0] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v49, v90[4], 0);
      v97[1] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v51, v48, v50);
      v97[2] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v52, v33, v35);
      v97[3] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v53, v87, v44);
      v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v54, v97, 4);
      v96[0] = v45;
      v96[1] = @"commonprofile_io_vert out;";
      v96[2] = @"vertex commonprofile_io_vert";
      v96[3] = @"commonprofile_io_vert out;";
      v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v56, v96, 4);
    }

    else
    {
      v59 = objc_msgSend_length(a3, v40, v41, v42);
      v61 = objc_msgSend_rangeOfString_options_range_(a3, v60, @"commonprofile_io out;", 0, v31, v59 - v31);
      v63 = v62;
      v86 = v27;
      v66 = objc_msgSend_length(a3, v62, v64, v65);
      v68 = objc_msgSend_rangeOfString_options_range_(a3, v67, @"commonprofile_io in;", 0, v31, v66 - v31);
      v70 = v69;
      v73 = objc_msgSend_length(a3, v69, v71, v72);
      v75 = objc_msgSend_rangeOfString_options_range_(a3, v74, @"commonprofile_io io", 0, v31, v73 - v31);
      v77 = v76;
      v95[0] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v76, v90[4], 0);
      v95[1] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v78, v61, v63);
      v95[2] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v79, v68, v70);
      v95[3] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v80, v75, v77);
      v95[4] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v81, v33, v35);
      v95[5] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v82, v87, v43);
      v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v83, v95, 6);
      v94[0] = v86;
      v94[1] = @"commonprofile_io_vert out;";
      v94[2] = @"commonprofile_io_vert in;";
      v94[3] = @"commonprofile_io_vert io";
      v94[4] = @"vertex commonprofile_io_vert";
      v94[5] = @"commonprofile_io_vert out;";
      v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v84, v94, 6);
    }

    a3 = objc_msgSend_vfx_stringByReplacingCharactersInRanges_withStrings_(a3, v58, v55, v57);
    _Block_object_dispose(&v89, 8);
  }

  return a3;
}

- (void)collectShaderForProgram:(__CFXProgram *)a3 hashCode:(id)a4 newVertexFunctionName:(id)a5 newFragmentFunctionName:(id)a6 sourceCodeBlock:(id)a7 additionalFileBlock:(id)a8
{
  v168 = *MEMORY[0x1E69E9840];
  v11 = sub_1AF1D5B54(a3);
  v152 = a3;
  v12 = sub_1AF1D5B0C(a3);
  v16 = objc_msgSend_length(v12, v13, v14, v15);
  v20 = objc_msgSend_mutableCopy(v12, v17, v18, v19);
  v21 = a5;
  v22 = v20;
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v20, v23, @"commonprofile_vert", v21, 0, 0, v16);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v22, v24, @"commonprofile_frag", a6, 0, 0, v16);
  v28 = objc_msgSend_length(v22, v25, v26, v27);
  v30 = objc_msgSend_rangeOfString_options_range_(v22, v29, @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", 2, 0, v28);
  v157 = v22;
  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = v30;
    while (1)
    {
      v33 = &v31[v32];
      v34 = v22;
      v35 = objc_msgSend_rangeOfString_options_range_(v22, v31, @"#else // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", 2, &v31[v32], v28 - &v31[v32]);
      v37 = &v36[v35];
      v38 = objc_msgSend_rangeOfString_options_range_(v34, v36, @"#endif // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", 2, &v36[v35], v28 - &v36[v35]);
      v156 = v39;
      v40 = objc_msgSend_substringWithRange_(v34, v39, v37, v38 - v37);
      if (objc_msgSend_hasPrefix_(v40, v41, @"#import", v42))
      {
        break;
      }

      v68 = &stru_1F2575650;
      if (objc_msgSend_hasPrefix_(v40, v43, @"#generate", v44))
      {
        v72 = objc_msgSend_rangeOfString_(v40, v70, @"", v71);
        v75 = objc_msgSend_substringFromIndex_(v40, v73, v72 + 1, v74);
        v78 = objc_msgSend_rangeOfString_(v75, v76, @"", v77);
        v81 = objc_msgSend_substringToIndex_(v75, v79, v78, v80);
        v85 = objc_msgSend_pathExtension(v81, v82, v83, v84);
        if ((objc_msgSend_isEqualToString_(v85, v86, @"h", v87) & 1) == 0)
        {
          v81 = objc_msgSend_stringByAppendingPathExtension_(v81, v88, @"h", v89);
        }

        v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v88, @"_import/%@", v89, v81);
        v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v90, @"#import %@", v91, v65);
        v69 = objc_msgSend_substringWithRange_(v157, v92, v33, v35 - v33);
        goto LABEL_11;
      }

LABEL_12:
      v22 = v157;
      objc_msgSend_replaceCharactersInRange_withString_(v157, v70, v38, v156, &stru_1F2575650);
      objc_msgSend_replaceCharactersInRange_withString_(v157, v93, v37, v38 - v37, v68);
      objc_msgSend_replaceCharactersInRange_withString_(v157, v94, v32, v37 - v32, &stru_1F2575650);
      v28 = objc_msgSend_length(v157, v95, v96, v97);
      v32 = objc_msgSend_rangeOfString_options_range_(v157, v98, @"#if 1 // SHADER_COLLECTION_PREFERS_MONOLITHIC_FILES\n", 2, 0, v28);
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }
    }

    v45 = objc_msgSend_rangeOfString_(v40, v43, @"", v44);
    v48 = objc_msgSend_substringFromIndex_(v40, v46, v45 + 1, v47);
    v51 = objc_msgSend_rangeOfString_(v48, v49, @"", v50);
    v54 = objc_msgSend_substringToIndex_(v48, v52, v51, v53);
    v58 = objc_msgSend_pathExtension(v54, v55, v56, v57);
    isEqualToString = objc_msgSend_isEqualToString_(v58, v59, @"h", v60);
    v64 = v54;
    if ((isEqualToString & 1) == 0)
    {
      v64 = objc_msgSend_stringByAppendingPathExtension_(v54, v61, @"h", v62);
    }

    v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v61, @"_import/%@", v62, v64);
    v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v66, @"#import %@", v67, v65);
    v69 = sub_1AF28A7E4(v54);
LABEL_11:
    (*(a8 + 2))(a8, v69, v65);
    goto LABEL_12;
  }

LABEL_13:
  v99 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend_insertString_atIndex_(v22, v100, @"\n", 0);
  v104 = objc_msgSend_allKeys(v11, v101, v102, v103);
  v107 = objc_msgSend_sortedArrayUsingSelector_(v104, v105, sel_compare_, v106);
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v111 = objc_msgSend_reverseObjectEnumerator(v107, v108, v109, v110);
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v112, &v162, v167, 16);
  if (v113)
  {
    v116 = v113;
    v117 = *v163;
    do
    {
      for (i = 0; i != v116; ++i)
      {
        if (*v163 != v117)
        {
          objc_enumerationMutation(v111);
        }

        v119 = *(*(&v162 + 1) + 8 * i);
        v120 = objc_msgSend_objectForKeyedSubscript_(v11, v114, v119, v115);
        v123 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v121, @"#define %@ %@\n", v122, v119, v120);
        objc_msgSend_insertString_atIndex_(v157, v124, v123, 0);
        if (objc_msgSend_isEqual_(v120, v125, &stru_1F2575650, v126))
        {
          objc_msgSend_appendFormat_(v99, v127, @" -D%@", v128, v119, v151);
        }

        else
        {
          objc_msgSend_appendFormat_(v99, v127, @" -D%@=%@", v128, v119, v120);
        }
      }

      v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v114, &v162, v167, 16);
    }

    while (v116);
  }

  v129 = sub_1AF1D5B9C(v152);
  if (objc_msgSend_count(v129, v130, v131, v132))
  {
    v136 = objc_msgSend_allObjects(v129, v133, v134, v135);
    v139 = objc_msgSend_sortedArrayUsingSelector_(v136, v137, sel_compare_, v138);
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v143 = objc_msgSend_reverseObjectEnumerator(v139, v140, v141, v142);
    v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v144, &v158, v166, 16);
    if (v145)
    {
      v146 = v145;
      v147 = *v159;
      do
      {
        for (j = 0; j != v146; ++j)
        {
          if (*v159 != v147)
          {
            objc_enumerationMutation(v143);
          }

          v149 = *(*(&v158 + 1) + 8 * j);
          if (!objc_msgSend_objectForKeyedSubscript_(v11, v133, v149, v135))
          {
            objc_msgSend_appendFormat_(v99, v133, @" -U%@", v135, v149);
          }
        }

        v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v133, &v158, v166, 16);
      }

      while (v146);
    }
  }

  v150 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v133, @"_unifdef/%@.h", v135, a4);
  (*(a8 + 2))(a8, v99, v150);

  (*(a7 + 2))(a7, v157);
}

@end