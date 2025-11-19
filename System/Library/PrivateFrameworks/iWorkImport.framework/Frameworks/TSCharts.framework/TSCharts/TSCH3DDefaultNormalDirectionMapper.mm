@interface TSCH3DDefaultNormalDirectionMapper
+ (id)mapperWithNormalBias:(void *)a3;
- (TSCH3DDefaultNormalDirectionMapper)initWithNormalBias:(void *)a3;
- (id).cxx_construct;
- (void)mapFromVertexArray:(const void *)a3 normalArray:(const void *)a4 normalMatrix:(void *)a5 numVertices:(int64_t)a6 destination:(void *)a7;
@end

@implementation TSCH3DDefaultNormalDirectionMapper

+ (id)mapperWithNormalBias:(void *)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithNormalBias_(v4, v5, v6, v7, v8, a3);

  return v9;
}

- (TSCH3DDefaultNormalDirectionMapper)initWithNormalBias:(void *)a3
{
  v5.receiver = self;
  v5.super_class = TSCH3DDefaultNormalDirectionMapper;
  result = [(TSCH3DDefaultNormalDirectionMapper *)&v5 init];
  if (result)
  {
    result->_normalBias.var0.var0 = *a3;
    result->_normalBias.var1.var0 = *(a3 + 1);
    result->_normalBias.var2.var0 = *(a3 + 2);
  }

  return result;
}

- (void)mapFromVertexArray:(const void *)a3 normalArray:(const void *)a4 normalMatrix:(void *)a5 numVertices:(int64_t)a6 destination:(void *)a7
{
  v15 = a6 / 3;
  if (a6 != 3 * (a6 / 3))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v7, v8, v9, "[TSCH3DDefaultNormalDirectionMapper mapFromVertexArray:normalArray:normalMatrix:numVertices:destination:]", a4);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DNormalDirectionMapper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 41, 0, "Only triangles is supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = *(a7 + 1) - *a7;
  if (v15 <= v31)
  {
    if (v15 < v31)
    {
      *(a7 + 1) = *a7 + v15;
    }
  }

  else
  {
    sub_2761FC724(a7, v15 - v31);
  }

  if (a6 >= 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = (a3 + 16);
    do
    {
      v35 = *(v34 - 4);
      v36 = *(v34 - 3);
      v37 = *(v34 - 2);
      v38 = *(v34 - 1) - v35;
      v39 = *v34 - v36;
      v40 = v34[1] - v37;
      v41 = ((v39 * v39) + (v38 * v38)) + (v40 * v40);
      v42 = 0.0;
      v43 = 0.0;
      v44 = 0.0;
      v45 = 0.0;
      if (v41 > 0.00000011921)
      {
        v46 = 1.0 / sqrtf(v41);
        v43 = v38 * v46;
        v44 = v39 * v46;
        v45 = v40 * v46;
      }

      v47 = v34[2] - v35;
      v48 = v34[3] - v36;
      v49 = v34[4] - v37;
      v50 = ((v48 * v48) + (v47 * v47)) + (v49 * v49);
      v51 = 0.0;
      v52 = 0.0;
      if (v50 > 0.00000011921)
      {
        v53 = 1.0 / sqrtf(v50);
        v42 = v47 * v53;
        v51 = v48 * v53;
        v52 = v49 * v53;
      }

      v54 = (v44 * v52) - (v51 * v45);
      v55 = (v45 * v42) - (v52 * v43);
      v56 = (v43 * v51) - (v42 * v44);
      v57 = ((v55 * v55) + (v54 * v54)) + (v56 * v56);
      v58 = 0.0;
      v59 = 0.0;
      v60 = 0.0;
      if (v57 > 0.00000011921)
      {
        v61 = 1.0 / sqrtf(v57);
        v58 = v54 * v61;
        v59 = v55 * v61;
        v60 = v56 * v61;
      }

      v62 = (((v59 * *(a5 + 5)) + (*(a5 + 2) * v58)) + (*(a5 + 8) * v60)) * self->_normalBias.var2.var0;
      v63 = vmul_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(*(a5 + 12), v59), *a5, v58), *(a5 + 24), v60), *&self->_normalBias.var0.var0);
      v64 = vbsl_s8(vcgez_f32(v63), v63, vneg_f32(v63));
      v65 = -v62;
      if (v62 >= 0.0)
      {
        v65 = v62;
      }

      v66 = *v64.i32 <= *&v64.i32[1];
      if (*v64.i32 <= *&v64.i32[1])
      {
        v64.i32[0] = v64.i32[1];
      }

      if (*v64.i32 <= v65)
      {
        v66 = 2;
      }

      *(*a7 + v32) = v66;
      v33 += 3;
      ++v32;
      v34 += 9;
    }

    while (v33 < a6);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  return self;
}

@end