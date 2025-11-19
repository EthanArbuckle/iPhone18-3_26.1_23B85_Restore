@interface TSCH3DGeometry
+ (id)geometry;
- (TSCH3DGeometry)init;
- (box<glm::detail::tvec3<float>>)geometryBounds;
- (id).cxx_construct;
- (void)allocateArrays:(int)a3;
- (void)normalArray;
- (void)reset;
- (void)transformArrays:(void *)a3;
- (void)vertexArray;
@end

@implementation TSCH3DGeometry

+ (id)geometry
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DGeometry)init
{
  v7.receiver = self;
  v7.super_class = TSCH3DGeometry;
  v2 = [(TSCH3DGeometry *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_numVertices = 0;
    normalBuffer = v2->_normalBuffer;
    v2->_normalBuffer = 0;

    vertexBuffer = v3->_vertexBuffer;
    v3->_vertexBuffer = 0;
  }

  return v3;
}

- (void)reset
{
  vertexBuffer = self->_vertexBuffer;
  self->_vertexBuffer = 0;

  normalBuffer = self->_normalBuffer;
  self->_normalBuffer = 0;

  self->_numVertices = 0;
}

- (void)vertexArray
{
  vertexBuffer = self->_vertexBuffer;
  if (!vertexBuffer)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DGeometry vertexArray]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 62, 0, "invalid nil value for '%{public}s'", "_vertexBuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    vertexBuffer = self->_vertexBuffer;
  }

  return objc_msgSend_container(vertexBuffer, a2, v2, v3, v4);
}

- (void)normalArray
{
  normalBuffer = self->_normalBuffer;
  if (!normalBuffer)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DGeometry normalArray]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGeometry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 68, 0, "invalid nil value for '%{public}s'", "_normalBuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    normalBuffer = self->_normalBuffer;
  }

  return objc_msgSend_container(normalBuffer, a2, v2, v3, v4);
}

- (void)transformArrays:(void *)a3
{
  numVertices = self->_numVertices;
  if (numVertices)
  {
    *&self->_geometryBounds._min.var0.var0 = xmmword_2764D5F00;
    *&self->_geometryBounds._max.var1.var0 = 0x80000000800000;
    v8 = objc_msgSend_vertexArray(self, a2, 2.84809454e-306, v3, v4);
    v13 = objc_msgSend_normalArray(self, v9, v10, v11, v12);
    v18 = v13;
    v19 = *v8;
    v20 = v8[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v20 - *v8) >> 2) != numVertices || 0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 2) != numVertices)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DGeometry transformArrays:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGeometry.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 90, 0, "size mismatch vertices %lu normals %lu expected %lu", 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 2), 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 2), numVertices);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
      v19 = *v8;
      v20 = v8[1];
    }

    v36 = *(a3 + 1);
    v44 = *a3;
    v45 = v36;
    v37 = *(a3 + 3);
    v46 = *(a3 + 2);
    v47 = v37;
    while (v19 != v20)
    {
      sub_276154744(v19, &v44, v42, v17);
      *v19 = *&v42[0];
      *(v19 + 8) = DWORD2(v42[0]);
      v19 += 12;
    }

    v39 = *v18;
    v38 = v18[1];
    sub_276154554(a3, &v44);
    *&v40 = v44.i64[0];
    *&v41 = *(&v45 + 4);
    *(&v40 + 1) = __PAIR64__(v45, v44.u32[2]);
    *(&v41 + 1) = v46;
    v42[0] = v40;
    v42[1] = v41;
    v43 = DWORD2(v46);
    while (v39 != v38)
    {
      sub_2761F07FC(v42, v39, &v48);
      *v39 = v48;
      *(v39 + 8) = v49;
      v39 += 12;
    }
  }
}

- (void)allocateArrays:(int)a3
{
  if (self->_numVertices != a3)
  {
    v25 = v5;
    v26 = v4;
    v27 = v3;
    vertexBuffer = self->_vertexBuffer;
    v13 = a3;
    if (!vertexBuffer)
    {
      v14 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, a2, v7, v8, v9, a3);
      v15 = self->_vertexBuffer;
      self->_vertexBuffer = v14;

      vertexBuffer = self->_vertexBuffer;
    }

    v16 = objc_msgSend_container(vertexBuffer, a2, v7, v8, v9, v6, v25, v26, v27);
    sub_2761EDA00(v16, v13);
    normalBuffer = self->_normalBuffer;
    if (!normalBuffer)
    {
      v22 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v17, v18, v19, v20, v13);
      v23 = self->_normalBuffer;
      self->_normalBuffer = v22;

      normalBuffer = self->_normalBuffer;
    }

    v24 = objc_msgSend_container(normalBuffer, v17, v18, v19, v20);
    sub_2761EDA00(v24, v13);
    self->_numVertices = a3;
  }
}

- (box<glm::detail::tvec3<float>>)geometryBounds
{
  result = sub_276155178(&self->_geometryBounds._min.var0.var0);
  if (result && self->_numVertices)
  {
    v10 = objc_msgSend_vertexArray(self, v6, v7, v8, v9);
    result = sub_2761ED628(&v11, v10);
    *&self->_geometryBounds._min.var0.var0 = v11;
    *&self->_geometryBounds._max.var1.var0 = v12;
  }

  *&retstr->_min.var0.var0 = *&self->_geometryBounds._min.var0.var0;
  *&retstr->_max.var1.var0 = *&self->_geometryBounds._max.var1.var0;
  return result;
}

- (id).cxx_construct
{
  *(self + 28) = xmmword_2764D5F00;
  *(self + 44) = 0x80000000800000;
  return self;
}

@end