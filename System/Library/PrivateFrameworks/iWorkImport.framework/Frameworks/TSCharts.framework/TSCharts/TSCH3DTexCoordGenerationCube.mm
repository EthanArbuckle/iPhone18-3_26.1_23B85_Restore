@interface TSCH3DTexCoordGenerationCube
+ (id)generatorWithBBox:(const void *)box;
+ (id)generatorWithBBox:(const void *)box transform:(const void *)transform;
- (TSCH3DTexCoordGenerationCube)initWithBBox:(const void *)box;
- (TSCH3DTexCoordGenerationCube)initWithBBox:(const void *)box transform:(const void *)transform;
- (id).cxx_construct;
- (void)generateFromVertexArray:(const void *)array normalArray:(const void *)normalArray numVertices:(int64_t)vertices destination4D:(void *)d;
@end

@implementation TSCH3DTexCoordGenerationCube

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

- (TSCH3DTexCoordGenerationCube)initWithBBox:(const void *)box transform:(const void *)transform
{
  v6.receiver = self;
  v6.super_class = TSCH3DTexCoordGenerationCube;
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

- (TSCH3DTexCoordGenerationCube)initWithBBox:(const void *)box
{
  v5.receiver = self;
  v5.super_class = TSCH3DTexCoordGenerationCube;
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
  v12 = self->_bbox._max.var2.var0 - var0;
  v95 = *&self->_bbox._min.var0.var0;
  v104 = vsub_f32(*&self->_bbox._max.var0.var0, v95);
  v105 = v12;
  p_transform = &self->super._transform;
  sub_276154554(&self->super._transform, __p);
  *&v14 = __p[0];
  *&v15 = *&v99[4];
  *(&v14 + 1) = __PAIR64__(*v99, __p[1]);
  *(&v15 + 1) = v100;
  *v102 = v14;
  *&v102[16] = v15;
  v103 = v101;
  __p[0] = 0;
  __p[1] = 0;
  *v99 = 0;
  v17 = objc_msgSend_normalDirectionMapper(self, v16, *&v14, *&v15, COERCE_DOUBLE(__PAIR64__(HIDWORD(v100), LODWORD(v101))));
  objc_msgSend_mapFromVertexArray_normalArray_normalMatrix_numVertices_destination_(v17, v18, v19, v20, v21, array, normalArray, v102, vertices, __p);

  v22 = 0;
  v23 = v95.f32[0];
  do
  {
    if (v104.f32[v22] == 0.0)
    {
      v104.i32[v22] = 1065353216;
    }

    ++v22;
  }

  while (v22 != 3);
  if (vertices > 0)
  {
    v24 = 0;
    v25 = v104;
    v26 = array + 8;
    v27 = v105;
    v28 = &off_2764D5000;
    arrayCopy = array;
    v94 = array + 8;
    while (1)
    {
      v29 = (array + 12 * v24);
      v30 = v29[1];
      v31 = v29[2];
      v32 = v29[3] - *v29;
      v33 = v29[4] - v30;
      v34 = v29[5] - v31;
      v35 = ((v33 * v33) + (v32 * v32)) + (v34 * v34);
      v36 = 0.0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = 0.0;
      if (v35 > 0.00000011921)
      {
        v40 = 1.0 / sqrtf(v35);
        v37 = v32 * v40;
        v38 = v33 * v40;
        v39 = v34 * v40;
      }

      v41 = v29[6] - *v29;
      v42 = v29[7] - v30;
      v43 = v29[8] - v31;
      v44 = ((v42 * v42) + (v41 * v41)) + (v43 * v43);
      v45 = 0.0;
      v46 = 0.0;
      if (v44 > 0.00000011921)
      {
        v47 = 1.0 / sqrtf(v44);
        v36 = v41 * v47;
        v45 = v42 * v47;
        v46 = v43 * v47;
      }

      v48 = (v38 * v46) - (v45 * v39);
      v49 = (v39 * v36) - (v46 * v37);
      v50 = (v37 * v45) - (v36 * v38);
      v51 = ((v49 * v49) + (v48 * v48)) + (v50 * v50);
      v52 = 0.0;
      v53 = 0.0;
      v54 = 0.0;
      if (v51 > 0.00000011921)
      {
        v55 = 1.0 / sqrtf(v51);
        v52 = v48 * v55;
        v53 = v49 * v55;
        *&v54 = v50 * v55;
      }

      v56 = ((v53 * *&v102[20]) + (*&v102[8] * v52)) + (v103 * *&v54);
      v57 = COERCE_DOUBLE(vmla_n_f32(vmla_n_f32(vmul_n_f32(*&v102[12], v53), *v102, v52), *&v102[24], *&v54));
      v96 = v57;
      v97 = v56;
      v58 = __p[0];
      if ((v24 / 3) >= __p[1] - __p[0])
      {
        dCopy = d;
        verticesCopy = vertices;
        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, *&v102[24], v54, v57, "[TSCH3DTexCoordGenerationCube generateFromVertexArray:normalArray:numVertices:destination4D:]");
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTexCoordGenerationCube.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v68, v69, v70, v71, v62, v67, 82, 0, "Triangle out of bounds");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
        v58 = __p[0];
        vertices = verticesCopy;
        d = dCopy;
        array = arrayCopy;
        v26 = v94;
        v23 = v95.f32[0];
        v28 = &off_2764D5000;
      }

      v76 = v58[v24 / 3];
      v77 = v24 + 2;
      v78 = &v26[12 * v24];
      v79 = (d + 16 * v24);
      do
      {
        v80 = *(v78 - 2);
        v81 = *(v78 - 1);
        v82 = *v78;
        v83 = p_transform[5];
        v84 = p_transform[1];
        v85 = p_transform[9];
        v86 = p_transform[13];
        v87 = v24;
        v88 = ((p_transform[12] + (((v81 * p_transform[4]) + (*p_transform * v80)) + (p_transform[8] * *v78))) - v23) / v25.f32[0];
        if (v76 == 2)
        {
          v90 = 0.0;
          goto LABEL_23;
        }

        v89 = ((p_transform[14] + (((v81 * p_transform[6]) + (p_transform[2] * v80)) + (p_transform[10] * v82))) - var0) / v27;
        if (v76 == 1)
        {
          v91 = 1.0 - v89;
          *v79 = v88;
          v79[1] = 1.0 - v89;
          *(v79 + 1) = *(v28 + 482);
          if (*(&v96 + v76) >= 0.0)
          {
            goto LABEL_27;
          }

          v92 = (d + 16 * v24 + 4);
          goto LABEL_26;
        }

        if (!v76)
        {
          v90 = 1.0;
          v88 = 1.0 - v89;
LABEL_23:
          *v79 = v88;
          v79[1] = ((v86 + (((v81 * v83) + (v84 * v80)) + (v85 * v82))) - v95.f32[1]) / v25.f32[1];
          v79[2] = 1.0;
          v79[3] = v90;
        }

        if (*(&v96 + v76) >= 0.0)
        {
          goto LABEL_27;
        }

        v91 = *v79;
        v92 = v79;
LABEL_26:
        *v92 = 1.0 - v91;
LABEL_27:
        ++v24;
        v79 += 4;
        v78 += 3;
      }

      while (v87 < v77);
      if (v24 >= vertices)
      {
        if (v58)
        {
          goto LABEL_30;
        }

        return;
      }
    }
  }

  v58 = __p[0];
  if (__p[0])
  {
LABEL_30:
    __p[1] = v58;
    operator delete(v58);
  }
}

- (id).cxx_construct
{
  *(self + 5) = xmmword_2764D5F00;
  *(self + 12) = 0x80000000800000;
  return self;
}

@end