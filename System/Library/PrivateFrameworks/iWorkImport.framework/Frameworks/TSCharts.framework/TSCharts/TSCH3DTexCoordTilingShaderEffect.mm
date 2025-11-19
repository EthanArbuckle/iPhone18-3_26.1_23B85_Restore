@interface TSCH3DTexCoordTilingShaderEffect
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)effect;
+ (void)initialize;
- (id)transformedTexcoordBuffer:(id)a3 effectsStates:(id)a4;
- (void)addVariables:(id)a3;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DTexCoordTilingShaderEffect

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DTexCoordTilingShaderEffect;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)effect
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2761ACD6C;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A46930 != -1)
  {
    dispatch_once(&qword_280A46930, block);
  }

  v2 = qword_280A46928;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DTexCoordTilingShaderEffect allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 53, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

+ (void)initialize
{
  for (i = 0; i != 3; ++i)
  {
    v3 = [TSCH3DShaderVariable alloc];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, v5, v6, v7, @"DiffuseTexCoordOffset%lu", i);
    isSpecial_generic = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v3, v9, v10, v11, v12, v8, @"vec2", @"mediump", 0, 3, 0, 0);
    v14 = qword_280A468F8[i];
    qword_280A468F8[i] = isSpecial_generic;

    v15 = [TSCH3DShaderVariable alloc];
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, v17, v18, v19, @"DiffuseTexCoordScale%lu", i);
    v25 = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v15, v21, v22, v23, v24, v20, @"vec2", @"mediump", 0, 3, 0, 0);
    v26 = qword_280A46910[i];
    qword_280A46910[i] = v25;
  }
}

- (void)addVariables:(id)a3
{
  v57 = a3;
  if (!qword_280A468F8[0])
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCH3DTexCoordTilingShaderEffect addVariables:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 61, 0, "Uniforms not initialized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  for (i = 0; i != 3; ++i)
  {
    if (!qword_280A468F8[i])
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCH3DTexCoordTilingShaderEffect addVariables:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 63, 0, "Uniform not initialized");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    }

    if (!qword_280A46910[i])
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCH3DTexCoordTilingShaderEffect addVariables:]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 64, 0, "Uniform not initialized");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    }

    objc_msgSend_addUniformVariable_(v57, v3, v4, v5, v6, qword_280A468F8[i]);
    objc_msgSend_addUniformVariable_(v57, v53, v54, v55, v56, qword_280A46910[i]);
  }
}

- (id)transformedTexcoordBuffer:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!v6)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DTexCoordTilingShaderEffect transformedTexcoordBuffer:effectsStates:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 110, 0, "invalid nil value for '%{public}s'", "texcoords");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (!v8)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DTexCoordTilingShaderEffect transformedTexcoordBuffer:effectsStates:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordTilingShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 111, 0, "invalid nil value for '%{public}s'", "effectsStates");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  v42 = objc_msgSend_stateSharingID(self, v7, v9, v10, v11);
  sub_2761AD5AC(v8, v42, &v74);

  v43 = sub_2761654D0(v6);
  v48 = objc_msgSend_count(v6, v44, v45, v46, v47);
  v53 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec2DataBuffer, v49, v50, v51, v52, v48);
  v58 = objc_msgSend_container(v53, v54, v55, v56, v57);
  v59 = *v43;
  if (v43[1] != *v43)
  {
    v60 = v58;
    v61 = 0;
    v62 = 0;
    v63 = *(v58 + 8);
    do
    {
      v64 = (v59 + v61);
      v65 = v64[1].f32[0];
      v66 = v64[1].f32[1];
      v67 = v65 * v66;
      v68 = v65;
      v69 = v66;
      v70 = (1.0 - v68) * v69;
      *&v68 = (1.0 - v69) * v68;
      v71 = vadd_f32(vadd_f32(vmul_n_f32(vadd_f32(*(&v74 + 8), vmul_f32(*v64, *&v74)), v67), vmul_n_f32(vadd_f32(v76, vmul_f32(*v64, v75)), v70)), vmul_n_f32(vadd_f32(v78, vmul_f32(*v64, v77)), *&v68));
      v73 = v71;
      if (v63 >= v60[2])
      {
        v63 = sub_2761ADBFC(v60, &v73);
      }

      else
      {
        *v63 = v71.i32[0];
        v63[1] = v73.i32[1];
        v63 += 2;
      }

      v60[1] = v63;
      ++v62;
      v59 = *v43;
      v61 += 16;
    }

    while (v62 < (v43[1] - *v43) >> 4);
  }

  return v53;
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v12 = a3;
  objc_msgSend_addFunctionString_name_(v12, v4, v5, v6, v7, @"tsch_mediump_vec2 OffsetAndScaleTexCoord(\n      tsch_mediump_vec4 tc,\n      tsch_mediump_vec2 offset0, tsch_mediump_vec2 scale0,\n      tsch_mediump_vec2 offset1, tsch_mediump_vec2 scale1,\n      tsch_mediump_vec2 offset2, tsch_mediump_vec2 scale2)\n{\n  tsch_mediump_float b0 = tc[2];\n  tsch_mediump_float b1 = tc[3];\n  tsch_mediump_float f0 = b0*b1;\n  tsch_mediump_float f1 = (1.0-b0)*b1;\n  tsch_mediump_float f2 = (1.0-b1)*b0;\n  tsch_mediump_vec2 tc0 = f0*(offset0 + tsch_vec2(tc.xy) * scale0);\n  tsch_mediump_vec2 tc1 = f1*(offset1 + tsch_vec2(tc.xy) * scale1);\n  tsch_mediump_vec2 tc2 = f2*(offset2 + tsch_vec2(tc.xy) * scale2);\n  return tc0 + tc1 + tc2;\n}\n", @"OffsetAndScaleTexCoord");
  objc_msgSend_addDeclaration_statement_(v12, v8, v9, v10, v11, qword_280A465D8, qword_280A468F8[0], qword_280A46910[0], unk_280A46900, *algn_280A46918, qword_280A46908, qword_280A46920);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_stateSharingID(self, v8, v9, v10, v11);
  sub_2761AD5AC(v7, v12, v32);

  v16 = 0;
  do
  {
    v17 = qword_280A46910[v16];
    v18 = sub_2761AD7AC(v32, v16, v13, v14, v15);
    objc_msgSend_uniform_vec2_(v6, v19, v20, v21, v22, v17, v18);
    v23 = qword_280A468F8[v16];
    v27 = sub_2761AD6D0(v32, v16, v24, v25, v26);
    objc_msgSend_uniform_vec2_(v6, v28, v29, v30, v31, v23, v27);
    ++v16;
  }

  while (v16 != 3);
}

@end