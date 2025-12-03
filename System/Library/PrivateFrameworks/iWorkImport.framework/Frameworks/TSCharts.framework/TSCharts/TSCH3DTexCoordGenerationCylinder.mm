@interface TSCH3DTexCoordGenerationCylinder
+ (id)generatorWithBBox:(const void *)box;
+ (id)generatorWithBBox:(const void *)box transform:(const void *)transform;
- (TSCH3DTexCoordGenerationCylinder)initWithBBox:(const void *)box;
- (TSCH3DTexCoordGenerationCylinder)initWithBBox:(const void *)box transform:(const void *)transform;
- (id).cxx_construct;
- (void)generateFromVertexArray:(const void *)array normalArray:(const void *)normalArray numVertices:(int64_t)vertices destination4D:(void *)d;
@end

@implementation TSCH3DTexCoordGenerationCylinder

+ (id)generatorWithBBox:(const void *)box
{
  v4 = [self alloc];
  v9 = objc_msgSend_initWithBBox_(v4, v5, v6, v7, v8, box);

  return v9;
}

+ (id)generatorWithBBox:(const void *)box transform:(const void *)transform
{
  v6 = [self alloc];
  v11 = objc_msgSend_initWithBBox_transform_(v6, v7, v8, v9, v10, box, transform);

  return v11;
}

- (TSCH3DTexCoordGenerationCylinder)initWithBBox:(const void *)box transform:(const void *)transform
{
  v6.receiver = self;
  v6.super_class = TSCH3DTexCoordGenerationCylinder;
  result = [(TSCH3DTexCoordGeneration *)&v6 initWithTransform:transform];
  if (result)
  {
    result->_bbox._min.var0.var0 = *box;
    result->_bbox._min.var1.var0 = *(box + 1);
    result->_bbox._min.var2.var0 = *(box + 2);
    result->_bbox._max.var0.var0 = *(box + 3);
    result->_bbox._max.var1.var0 = *(box + 4);
    result->_bbox._max.var2.var0 = *(box + 5);
  }

  return result;
}

- (TSCH3DTexCoordGenerationCylinder)initWithBBox:(const void *)box
{
  v5.receiver = self;
  v5.super_class = TSCH3DTexCoordGenerationCylinder;
  result = [(TSCH3DTexCoordGeneration *)&v5 init];
  if (result)
  {
    result->_bbox._min.var0.var0 = *box;
    result->_bbox._min.var1.var0 = *(box + 1);
    result->_bbox._min.var2.var0 = *(box + 2);
    result->_bbox._max.var0.var0 = *(box + 3);
    result->_bbox._max.var1.var0 = *(box + 4);
    result->_bbox._max.var2.var0 = *(box + 5);
  }

  return result;
}

- (void)generateFromVertexArray:(const void *)array normalArray:(const void *)normalArray numVertices:(int64_t)vertices destination4D:(void *)d
{
  var0 = self->_bbox._min.var2.var0;
  v11 = self->_bbox._max.var2.var0 - var0;
  v93 = *&self->_bbox._min.var0.var0;
  v101 = vsub_f32(*&self->_bbox._max.var0.var0, v93);
  v102 = v11;
  p_transform = &self->super._transform;
  sub_276154554(&self->super._transform, &v94);
  v14 = 0;
  *&v15 = v94.i64[0];
  *(&v15 + 1) = __PAIR64__(*v95, v94.u32[2]);
  *&v16 = *&v95[4];
  *(&v16 + 1) = v96;
  v17 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v96), v97));
  v98 = v15;
  v99 = v16;
  v100 = v97;
  do
  {
    LODWORD(v15) = v101.i32[v14];
    if (*&v15 == 0.0)
    {
      v101.i32[v14] = 1065353216;
    }

    ++v14;
  }

  while (v14 != 3);
  v94 = 0uLL;
  *v95 = 0;
  v18 = objc_msgSend_normalDirectionMapper(self, v13, *&v15, *&v16, v17);
  objc_msgSend_mapFromVertexArray_normalArray_normalMatrix_numVertices_destination_(v18, v19, v20, v21, v22, array, normalArray, &v98, vertices, &v94);

  if (vertices <= 0)
  {
    v56 = v94.i64[0];
    if (!v94.i64[0])
    {
      return;
    }

    goto LABEL_25;
  }

  v24 = 0;
  v26 = v101.f32[1];
  v25 = v102;
  v90 = d + 4;
  v27 = v101.f32[0];
  verticesCopy = vertices;
  do
  {
    v28 = (array + 12 * v24);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3] - *v28;
    v32 = v28[4] - v29;
    v33 = v28[5] - v30;
    v34 = ((v32 * v32) + (v31 * v31)) + (v33 * v33);
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    if (v34 > 0.00000011921)
    {
      v39 = 1.0 / sqrtf(v34);
      *&v36 = v31 * v39;
      v37 = v32 * v39;
      v38 = v33 * v39;
    }

    v40 = v28[6] - *v28;
    v41 = v28[7] - v29;
    v42 = v28[8] - v30;
    v43 = ((v41 * v41) + (v40 * v40)) + (v42 * v42);
    v44 = 0.0;
    v45 = 0.0;
    if (v43 > 0.00000011921)
    {
      v46 = 1.0 / sqrtf(v43);
      *&v35 = v40 * v46;
      v44 = v41 * v46;
      v45 = v42 * v46;
    }

    v47 = (v37 * v45) - (v44 * v38);
    v48 = (v38 * *&v35) - (v45 * *&v36);
    v49 = (*&v36 * v44) - (*&v35 * v37);
    v50 = ((v48 * v48) + (v47 * v47)) + (v49 * v49);
    v51 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    if (v50 > 0.00000011921)
    {
      v54 = 1.0 / sqrtf(v50);
      v51 = v47 * v54;
      *&v52 = v48 * v54;
      v53 = v49 * v54;
    }

    LODWORD(v36) = DWORD1(v98);
    LODWORD(v35) = v99;
    v55 = *(&v99 + 3);
    v56 = v94.i64[0];
    if ((v24 / 3) >= v94.i64[1] - v94.i64[0])
    {
      v86 = v99;
      v87 = *(&v99 + 3);
      v88 = DWORD1(v98);
      v89 = LODWORD(v52);
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v35, v36, v52, "[TSCH3DTexCoordGenerationCylinder generateFromVertexArray:normalArray:numVertices:destination4D:]");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordGenerationCylinder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 82, 0, "Triangle out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
      v56 = v94.i64[0];
      LODWORD(v36) = v88;
      LODWORD(v52) = v89;
      LODWORD(v35) = v86;
      v55 = v87;
    }

    v72 = ((*&v52 * *&v35) + (*&v36 * v51)) + (v55 * v53);
    v73 = v56[v24 / 3];
    v74 = v24 + 2;
    v75 = &v90[16 * v24];
    v76 = (array + 12 * v24 + 8);
    do
    {
      v77 = v24;
      v78 = *(v76 - 2);
      v79 = *(v76 - 1);
      v80 = p_transform[12] + (((v79 * p_transform[4]) + (*p_transform * v78)) + (p_transform[8] * *v76));
      v81 = p_transform[14] + (((v79 * p_transform[6]) + (p_transform[2] * v78)) + (p_transform[10] * *v76));
      if (v73 == 1)
      {
        v82 = (v81 - var0) / v25;
        *(v75 - 1) = (v80 - v93.f32[0]) / v27;
        *v75 = v82;
        *(v75 + 4) = 0x3F80000000000000;
        if (v72 > 0.0)
        {
          *v75 = 1.0 - v82;
        }
      }

      else
      {
        v83 = ((p_transform[13] + (((v79 * p_transform[5]) + (p_transform[1] * v78)) + (p_transform[9] * *v76))) - v93.f32[1]) / v26;
        v84 = atan2f(v80 + -0.5, v81) / 6.28318531;
        v85 = v84 + 0.5;
        if (v85 > 1.0)
        {
          v85 = v85 + -1.0;
        }

        *(v75 - 1) = v85;
        *v75 = v83;
        *(v75 + 4) = 1065353216;
      }

      ++v24;
      v75 += 16;
      v76 += 3;
    }

    while (v77 < v74);
  }

  while (v24 < verticesCopy);
  if (v56)
  {
LABEL_25:
    v94.i64[1] = v56;
    operator delete(v56);
  }
}

- (id).cxx_construct
{
  *(self + 5) = xmmword_2764D5F00;
  *(self + 12) = 0x80000000800000;
  return self;
}

@end