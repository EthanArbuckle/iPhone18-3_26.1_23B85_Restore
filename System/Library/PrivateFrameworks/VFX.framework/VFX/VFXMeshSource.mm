@interface VFXMeshSource
+ (id)_meshSourceWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 componentType:(signed __int16)a6 componentCount:(unint64_t)a7 dataOffset:(int64_t)a8 dataStride:(int64_t)a9;
+ (id)_modelSourceWithSource:(id)a3 vertexFormat:(unint64_t)a4;
+ (id)dataByConvertingDoublesToFloats:(const double *)a3 count:(int64_t)a4;
+ (id)dataWithPointArray:(const CGPoint *)a3 count:(int64_t)a4 bytesPerComponent:(int64_t *)a5;
+ (id)dataWithVector3Array:(id)a1 count:(SEL)a2 bytesPerComponent:;
+ (id)geometrySourceWithColorData:(id)a3 colorSpace:(CGColorSpace *)a4 vectorCount:(int64_t)a5 floatComponents:(BOOL)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10;
+ (id)meshSourceWithBuffer:(id)a3 vertexFormat:(unint64_t)a4 semantic:(id)a5 vertexCount:(int64_t)a6 dataOffset:(int64_t)a7 dataStride:(int64_t)a8;
+ (id)meshSourceWithColorComponents:(const float *)a3 count:(int64_t)a4 hasAlpha:(BOOL)a5 colorSpace:(CGColorSpace *)a6;
+ (id)meshSourceWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 floatComponents:(BOOL)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10;
+ (id)meshSourceWithMDLVertexAttribute:(id)a3 mesh:(id)a4;
+ (id)meshSourceWithMeshSourceRef:(__CFXMeshSource *)a3;
+ (id)meshSourceWithNormals:(id)a1 count:(SEL)a2;
+ (id)meshSourceWithTextureCoordinates:(const CGPoint *)a3 count:(int64_t)a4;
+ (id)meshSourceWithVertices:(id)a1 count:(SEL)a2;
- (NSData)data;
- (NSString)description;
- (VFXMeshSource)initWithBuffer:(id)a3 vertexFormat:(unint64_t)a4 semantic:(id)a5 vertexCount:(int64_t)a6 dataOffset:(int64_t)a7 dataStride:(int64_t)a8;
- (VFXMeshSource)initWithCoder:(id)a3;
- (VFXMeshSource)initWithData:(id)a3 semantic:(id)a4 colorSpace:(CGColorSpace *)a5 vectorCount:(int64_t)a6 floatComponents:(BOOL)a7 componentsPerVector:(int64_t)a8 bytesPerComponent:(int64_t)a9 dataOffset:(int64_t)a10 dataStride:(int64_t)a11;
- (VFXMeshSource)initWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 componentType:(signed __int16)a6 componentCount:(unint64_t)a7 dataOffset:(int64_t)a8 dataStride:(int64_t)a9;
- (VFXMeshSource)initWithMeshSource:(__CFXMeshSource *)a3;
- (VFXWorld)world;
- (__CFXMeshSource)meshSource;
- (__CFXWorld)worldRef;
- (id)_uninterleaveData:(id)a3 count:(unint64_t)a4 srcOffset:(unint64_t)a5 srcStride:(unint64_t)a6 dstStride:(unint64_t)a7;
- (id)dataByConvertingColorData:(id)a3 colorSpace:(CGColorSpace *)a4 newColorSpace:(CGColorSpace *)a5 vectorCount:(int64_t)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10 newDataOffset:(int64_t *)a11 newDataStride:(int64_t *)a12;
- (id)mkSemantic;
- (void)_clearCFXCache;
- (void)_printData;
- (void)addWorldReference:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeWorldReference:(id)a3;
- (void)setMkSemantic:(id)a3;
- (void)setWorld:(id)a3;
@end

@implementation VFXMeshSource

+ (id)meshSourceWithMeshSourceRef:(__CFXMeshSource *)a3
{
  result = sub_1AF16CDEC(a3);
  if (!result)
  {
    v6 = [a1 alloc];
    v9 = objc_msgSend_initWithMeshSource_(v6, v7, a3, v8);

    return v9;
  }

  return result;
}

- (VFXMeshSource)initWithMeshSource:(__CFXMeshSource *)a3
{
  v12.receiver = self;
  v12.super_class = VFXMeshSource;
  v4 = [(VFXMeshSource *)&v12 init];
  if (a3)
  {
    v4->_meshSource = CFRetain(a3);
    v4->_data = sub_1AF1AE6E8(a3);
    v10 = 0u;
    v11 = 0u;
    sub_1AF1AE1A8(a3, &v10);
    v5 = sub_1AF1AE3D8(a3);
    v6 = sub_1AF2E4E18(v5);
    v7 = v11;
    v4->_semantic = &v6->isa;
    v4->_vectorCount = v7;
    v4->_componentType = BYTE7(v11);
    v4->_componentCount = BYTE8(v11);
    v4->_mkSemantic = sub_1AF1AF854(a3);
    sub_1AF16CDFC(a3, v4);
    v8 = sub_1AF1AF080(a3);
    v4->_dataOffset = sub_1AF1CB564(v8);
    v4->_dataStride = sub_1AF121B74(v8);
  }

  return v4;
}

- (void)dealloc
{
  meshSource = self->_meshSource;
  if (meshSource)
  {
    sub_1AF16CDFC(meshSource, 0);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v4, self->_meshSource, v5);
  }

  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    CFRelease(colorSpace);
    self->_colorSpace = 0;
  }

  v7.receiver = self;
  v7.super_class = VFXMeshSource;
  [(VFXMeshSource *)&v7 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_semantic(self, v6, v7, v8);
  v13 = objc_msgSend_vectorCount(self, v10, v11, v12);
  v14 = sub_1AF2883D8(self->_componentType);
  v18 = objc_msgSend_componentsPerVector(self, v15, v16, v17);
  return objc_msgSend_stringWithFormat_(v3, v19, @"<%@: %p | semantic=%@ vectors=%d %@x%d>", v20, v5, self, v9, v13, v14, v18);
}

+ (id)dataByConvertingDoublesToFloats:(const double *)a3 count:(int64_t)a4
{
  v4 = a4;
  v6 = 4 * a4;
  v7 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  v9 = v7;
  if (v4 >= 1)
  {
    v10 = v7;
    do
    {
      v11 = *a3++;
      v12 = v11;
      *v10++ = v12;
      --v4;
    }

    while (v4);
  }

  v13 = MEMORY[0x1E695DEF0];

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v13, v8, v9, v6, 1);
}

+ (id)dataWithVector3Array:(id)a1 count:(SEL)a2 bytesPerComponent:
{
  if (v4)
  {
    *v4 = 4;
  }

  return objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, v2, 16 * v3);
}

+ (id)dataWithPointArray:(const CGPoint *)a3 count:(int64_t)a4 bytesPerComponent:(int64_t *)a5
{
  v5 = a4;
  if (a5)
  {
    *a5 = 4;
  }

  v7 = 8 * a4;
  v8 = malloc_type_malloc(8 * a4, 0x100004052888210uLL);
  v10 = v8;
  if (v5 >= 1)
  {
    v11 = v8;
    do
    {
      v12 = *a3++;
      *v11++ = vcvt_f32_f64(v12);
      --v5;
    }

    while (v5);
  }

  v13 = MEMORY[0x1E695DEF0];

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v13, v9, v10, v7, 1);
}

- (VFXMeshSource)initWithData:(id)a3 semantic:(id)a4 colorSpace:(CGColorSpace *)a5 vectorCount:(int64_t)a6 floatComponents:(BOOL)a7 componentsPerVector:(int64_t)a8 bytesPerComponent:(int64_t)a9 dataOffset:(int64_t)a10 dataStride:(int64_t)a11
{
  v12 = a7;
  v16 = a3;
  v18 = a10;
  v19 = a11;
  if ((sub_1AF2E54B8(a4, a2, a3, a4) & 1) == 0)
  {
    v24 = sub_1AF0D5194();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6228();
    }

    goto LABEL_11;
  }

  v37.receiver = self;
  v37.super_class = VFXMeshSource;
  self = [(VFXMeshSource *)&v37 init];
  if (self)
  {
    v22 = a9;
    if (a9 == 8)
    {
      if (v18 || v19 && 8 * a8 != v19)
      {
        v23 = sub_1AF0D5194();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF625C();
        }

LABEL_11:

        return 0;
      }

      v25 = objc_opt_class();
      v29 = objc_msgSend_bytes(v16, v26, v27, v28);
      v16 = objc_msgSend_dataByConvertingDoublesToFloats_count_(v25, v30, v29, a8 * a6);
      v19 = 4 * a8;
      a11 = 4 * a8;
      v22 = 4;
    }

    if (a5 && objc_msgSend_isEqualToString_(a4, v20, @"kGeometrySourceSemanticColor", v21))
    {
      v16 = objc_msgSend_dataByConvertingColorData_colorSpace_newColorSpace_vectorCount_componentsPerVector_bytesPerComponent_dataOffset_dataStride_newDataOffset_newDataStride_(self, v31, v16, a5, &self->_colorSpace, a6, a8, v22, v18, v19, &a10, &a11);
    }

    self->_data = v16;
    self->_semantic = objc_msgSend_copy(a4, v32, v33, v34);
    self->_vectorCount = a6;
    self->_componentType = sub_1AF288ADC(v22, 1, v12);
    self->_componentCount = a8;
    v35 = a11;
    if (!a11)
    {
      v35 = v22 * a8;
    }

    self->_dataOffset = a10;
    self->_dataStride = v35;
  }

  return self;
}

- (VFXMeshSource)initWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 componentType:(signed __int16)a6 componentCount:(unint64_t)a7 dataOffset:(int64_t)a8 dataStride:(int64_t)a9
{
  v10 = a7;
  v11 = a6;
  if (sub_1AF2E54B8(a4, a2, a3, a4))
  {
    v23.receiver = self;
    v23.super_class = VFXMeshSource;
    v16 = [(VFXMeshSource *)&v23 init];
    if (v16)
    {
      v17 = a9;
      v16->_data = a3;
      v16->_semantic = objc_msgSend_copy(a4, v18, v19, v20);
      v16->_vectorCount = a5;
      v16->_componentType = v11;
      v16->_componentCount = v10;
      v16->_dataOffset = a8;
      if (!a9)
      {
        v17 = sub_1AF288070(v11) * v16->_componentCount;
      }

      v16->_dataStride = v17;
    }
  }

  else
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6228();
    }

    return 0;
  }

  return v16;
}

- (VFXMeshSource)initWithBuffer:(id)a3 vertexFormat:(unint64_t)a4 semantic:(id)a5 vertexCount:(int64_t)a6 dataOffset:(int64_t)a7 dataStride:(int64_t)a8
{
  if (sub_1AF2E54B8(a5, a2, a3, a4))
  {
    v22.receiver = self;
    v22.super_class = VFXMeshSource;
    v15 = [(VFXMeshSource *)&v22 init];
    if (v15)
    {
      v15->_mtlBuffer = a3;
      v15->_semantic = objc_msgSend_copy(a5, v16, v17, v18);
      v15->_vectorCount = a6;
      v15->_mtlVertexFormat = a4;
      v19 = sub_1AF1F1980(a4);
      v15->_componentType = sub_1AF28844C(v19);
      v15->_componentCount = sub_1AF2884B4(v19);
      v15->_dataOffset = a7;
      if (!a8)
      {
        a8 = sub_1AF288070(v19);
      }

      v15->_dataStride = a8;
    }
  }

  else
  {
    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6228();
    }

    return 0;
  }

  return v15;
}

+ (id)meshSourceWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 floatComponents:(BOOL)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10
{
  v12 = a6;
  v16 = [a1 alloc];
  v18 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v16, v17, a3, a4, 0, a5, v12, a7, a8, a9, a10);

  return v18;
}

+ (id)_meshSourceWithData:(id)a3 semantic:(id)a4 vectorCount:(int64_t)a5 componentType:(signed __int16)a6 componentCount:(unint64_t)a7 dataOffset:(int64_t)a8 dataStride:(int64_t)a9
{
  v11 = a6;
  v15 = [a1 alloc];
  v17 = objc_msgSend_initWithData_semantic_vectorCount_componentType_componentCount_dataOffset_dataStride_(v15, v16, a3, a4, a5, v11, a7, a8, a9);

  return v17;
}

+ (id)meshSourceWithVertices:(id)a1 count:(SEL)a2
{
  v4 = v3;
  v9 = 0;
  v6 = objc_msgSend_dataWithVector3Array_count_bytesPerComponent_(a1, a2, v2, v3, &v9);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(a1, v7, v6, @"kGeometrySourceSemanticPosition", v4, 1, 3, v9, 0, 16);
}

+ (id)meshSourceWithNormals:(id)a1 count:(SEL)a2
{
  v4 = v3;
  v9 = 0;
  v6 = objc_msgSend_dataWithVector3Array_count_bytesPerComponent_(a1, a2, v2, v3, &v9);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(a1, v7, v6, @"kGeometrySourceSemanticNormal", v4, 1, 3, v9, 0, 16);
}

+ (id)meshSourceWithTextureCoordinates:(const CGPoint *)a3 count:(int64_t)a4
{
  v9 = 0;
  v6 = objc_msgSend_dataWithPointArray_count_bytesPerComponent_(a1, a2, a3, a4, &v9);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(a1, v7, v6, @"kGeometrySourceSemanticTexcoord", a4, 1, 2, v9, 0, 0);
}

- (id)dataByConvertingColorData:(id)a3 colorSpace:(CGColorSpace *)a4 newColorSpace:(CGColorSpace *)a5 vectorCount:(int64_t)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10 newDataOffset:(int64_t *)a11 newDataStride:(int64_t *)a12
{
  v17 = a12;
  v18 = a9;
  sub_1AF16425C();
  ColorSpace = CGColorTransformGetColorSpace();
  v20 = *a5;
  if (*a5 != ColorSpace)
  {
    if (v20)
    {
      CFRelease(v20);
      *a5 = 0;
    }

    if (ColorSpace)
    {
      v21 = CFRetain(ColorSpace);
    }

    else
    {
      v21 = 0;
    }

    *a5 = v21;
  }

  if (CFEqual(a4, ColorSpace))
  {
    goto LABEL_19;
  }

  v36 = 3 * a8;
  v25 = a8 * a7;
  if (a10)
  {
    v26 = a10;
  }

  else
  {
    v26 = a8 * a7;
  }

  v37 = a3;
  v27 = objc_msgSend_bytes(a3, v22, v23, v24) + a9;
  v38 = v25 * a6;
  v28 = malloc_type_malloc(v25 * a6, 0x100004077774924uLL);
  if (!CGColorTransformConvertData())
  {
    free(v28);
    v17 = a12;
    v18 = a9;
    a3 = v37;
LABEL_19:
    *a11 = v18;
    *v17 = a10;
    return a3;
  }

  *a11 = 0;
  *a12 = v25;
  if (a7 == 4)
  {
    v30 = v28;
    if (a6 >= 1)
    {
      v31 = &v28[v36];
      v32 = (v27 + v36);
      do
      {
        memcpy(v31, v32, a8);
        v31 += v25;
        v32 += v26;
        --a6;
      }

      while (a6);
    }

    v33 = MEMORY[0x1E695DEF0];
    v34 = v30;
  }

  else
  {
    v33 = MEMORY[0x1E695DEF0];
    v34 = v28;
  }

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v33, v29, v34, v38, 1);
}

+ (id)meshSourceWithColorComponents:(const float *)a3 count:(int64_t)a4 hasAlpha:(BOOL)a5 colorSpace:(CGColorSpace *)a6
{
  v7 = a5;
  sub_1AF16425C();
  ColorSpace = CGColorTransformGetColorSpace();
  if (!a6)
  {
    a6 = sub_1AF164420();
  }

  if (v7)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  if (CFEqual(a6, ColorSpace))
  {
    v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v13, a3, 4 * v12 * a4);
  }

  else
  {
    v29 = a1;
    v15 = malloc_type_malloc(4 * v12 * a4, 0x100004052888210uLL);
    v28 = 4 * v12;
    v27 = 4 * v12;
    if (CGColorTransformConvertData())
    {
      if (a4 >= 1 && v7)
      {
        v17 = v15 + 3;
        v18 = a3 + 3;
        v19 = a4;
        do
        {
          v20 = *v18;
          v18 += 4;
          *v17 = v20;
          v17 += 4;
          --v19;
        }

        while (v19);
      }

      v21 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v16, v15, 4 * v12 * a4, 1, v27, v15, 96, v28);
    }

    else
    {
      free(v15);
      v21 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v22, a3, 4 * v12 * a4, v27, v15, 96, v28);
    }

    v14 = v21;
    a1 = v29;
  }

  v23 = [a1 alloc];
  v25 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v23, v24, v14, @"kGeometrySourceSemanticColor", ColorSpace, a4, 1, v12, 4, 0, 4 * v12);

  return v25;
}

+ (id)geometrySourceWithColorData:(id)a3 colorSpace:(CGColorSpace *)a4 vectorCount:(int64_t)a5 floatComponents:(BOOL)a6 componentsPerVector:(int64_t)a7 bytesPerComponent:(int64_t)a8 dataOffset:(int64_t)a9 dataStride:(int64_t)a10
{
  v12 = a6;
  v16 = [a1 alloc];
  v18 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v16, v17, a3, @"kGeometrySourceSemanticColor", a4, a5, v12, a7, a8, a9, a10);

  return v18;
}

+ (id)meshSourceWithBuffer:(id)a3 vertexFormat:(unint64_t)a4 semantic:(id)a5 vertexCount:(int64_t)a6 dataOffset:(int64_t)a7 dataStride:(int64_t)a8
{
  if (a4)
  {
    v14 = [a1 alloc];
    v16 = objc_msgSend_initWithBuffer_vertexFormat_semantic_vertexCount_dataOffset_dataStride_(v14, v15, a3, a4, a5, a6, a7, a8);

    return v16;
  }

  else
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6290();
    }

    return 0;
  }
}

+ (id)_modelSourceWithSource:(id)a3 vertexFormat:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF62C4();
    }

    return 0;
  }

  v6 = sub_1AF1F1980(a4);
  v10 = objc_msgSend_meshSource(a3, v7, v8, v9);
  v11 = sub_1AF1AF184(v10, v6, 0);
  if (!v11)
  {
    NSLog(&cfstr_Modelsourcewit.isa);
    return 0;
  }

  v12 = v11;
  v13 = [a1 alloc];
  v16 = objc_msgSend_initWithMeshSource_(v13, v14, v12, v15);

  return v16;
}

- (id)mkSemantic
{
  mkSemantic = self->_mkSemantic;
  if (mkSemantic > 9)
  {
    v3 = MEMORY[0x1E6974AF8];
  }

  else
  {
    v3 = qword_1E7A7E9F0[mkSemantic];
  }

  return *v3;
}

- (void)setMkSemantic:(id)a3
{
  if (objc_msgSend_isEqualToString_(a3, a2, *MEMORY[0x1E6974AE0], v3))
  {
    v8 = 0;
  }

  else if (objc_msgSend_isEqualToString_(a3, v6, *MEMORY[0x1E6974B28], v7))
  {
    v8 = 1;
  }

  else if (objc_msgSend_isEqualToString_(a3, v9, *MEMORY[0x1E6974B38], v10))
  {
    v8 = 2;
  }

  else if (objc_msgSend_isEqualToString_(a3, v11, *MEMORY[0x1E6974B18], v12))
  {
    v8 = 3;
  }

  else if (objc_msgSend_isEqualToString_(a3, v13, @"aoCoord", v14))
  {
    v8 = 4;
  }

  else if (objc_msgSend_isEqualToString_(a3, v15, *MEMORY[0x1E6974AF8], v16))
  {
    v8 = 5;
  }

  else if (objc_msgSend_isEqualToString_(a3, v17, *MEMORY[0x1E6974B20], v18))
  {
    v8 = 6;
  }

  else if (objc_msgSend_isEqualToString_(a3, v19, *MEMORY[0x1E6974B30], v20))
  {
    v8 = 7;
  }

  else if (objc_msgSend_isEqualToString_(a3, v21, *MEMORY[0x1E6974AE8], v22))
  {
    v8 = 8;
  }

  else if (objc_msgSend_isEqualToString_(a3, v23, @"lightmapCoord", v24))
  {
    v8 = 9;
  }

  else
  {
    v8 = 0;
  }

  self->_mkSemantic = v8;
  meshSource = self->_meshSource;
  if (meshSource)
  {

    sub_1AF1AF89C(meshSource, v8);
  }
}

- (NSData)data
{
  result = self->_data;
  if (!result)
  {
    result = self->_mtlBuffer;
    if (result)
    {
      v6 = MEMORY[0x1E695DEF0];
      v7 = objc_msgSend_contents(result, a2, v2, v3);
      v12 = objc_msgSend_length(self->_mtlBuffer, v8, v9, v10);

      return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v6, v11, v7, v12, 0);
    }
  }

  return result;
}

- (void)_printData
{
  v4 = objc_msgSend_meshSource(self, a2, v2, v3);
  v5 = sub_1AF1AE6EC(v4);

  sub_1AF1AF380(v4, v5);
}

- (void)_clearCFXCache
{
  if (self->_data)
  {
    meshSource = self->_meshSource;
    if (meshSource)
    {
      if (!sub_1AF1B72E0(meshSource, a2, v2, v3))
      {
        v6 = self->_meshSource;
        if (v6)
        {
          sub_1AF16CDFC(v6, 0);
          v7 = self->_meshSource;
          if (v7)
          {
            CFRelease(v7);
            self->_meshSource = 0;
          }
        }
      }
    }
  }
}

- (void)addWorldReference:(id)a3
{
  world = self->_world;
  if (world == a3)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, a3, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)a3
{
  p_world = &self->_world;
  if (!a3 || self->_world == a3)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v7 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v7;
      if (!v7)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v8);
      }
    }
  }
}

- (void)setWorld:(id)a3
{
  world = self->_world;
  if (world != a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2E64B0;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = a3;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E6510;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF1C3FAC(v4);
}

- (__CFXMeshSource)meshSource
{
  if (!self->_meshSource)
  {
    if (self->_componentType)
    {
      mtlBuffer = self->_mtlBuffer;
      v7 = sub_1AF2E4E38(self->_semantic, a2, v2, v3);
      if (mtlBuffer)
      {
        v8 = sub_1AF1F2F0C(v7, self->_mtlBuffer, self->_mtlVertexFormat, self->_vectorCount, self->_dataStride, self->_dataOffset);
      }

      else
      {
        v8 = sub_1AF1ADC58(v7, self->_data, self->_componentType, self->_componentCount, self->_vectorCount, self->_dataStride, self->_dataOffset);
      }

      self->_meshSource = v8;
      sub_1AF1AF89C(v8, self->_mkSemantic);
      meshSource = self->_meshSource;
      if (meshSource)
      {
        sub_1AF16CDFC(meshSource, self);
      }
    }

    else
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF62F8();
      }
    }
  }

  return self->_meshSource;
}

- (id)_uninterleaveData:(id)a3 count:(unint64_t)a4 srcOffset:(unint64_t)a5 srcStride:(unint64_t)a6 dstStride:(unint64_t)a7
{
  v10 = a4;
  v12 = a7 * a4;
  v13 = objc_msgSend_dataWithCapacity_(MEMORY[0x1E695DF88], a2, a7 * a4, a4);
  objc_msgSend_setLength_(v13, v14, v12, v15);
  v19 = objc_msgSend_mutableBytes(v13, v16, v17, v18);
  v23 = objc_msgSend_bytes(a3, v20, v21, v22);
  if (v10)
  {
    v24 = (v23 + a5);
    do
    {
      memcpy(v19, v24, a7);
      v24 += a6;
      v19 += a7;
      --v10;
    }

    while (v10);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  LOWORD(v6) = self->_componentType;
  dataOffset = self->_dataOffset;
  dataStride = self->_dataStride;
  v9 = objc_msgSend_data(self, a2, a3, v3);
  if (v9)
  {
    v13 = v9;
    if (self->_encodeDataAsHalf)
    {
      componentType = self->_componentType;
      if (componentType != sub_1AF28844C(componentType))
      {
        v15 = sub_1AF0D5194();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF632C(v15, v16, v17, v18, v19, v20, v21, v22);
        }
      }

      if (self->_componentType == 14)
      {
        v23 = v13;
        sub_1AF288070(14);
      }

      else
      {
        if (self->_componentCount - 2 >= 3)
        {
          v30 = sub_1AF0D5194();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF63A4(v30, v31, v32, v33, v34, v35, v36, v37);
          }
        }

        v38 = sub_1AF1AF184(self->_meshSource, *&asc_1AFF8173E[2 * self->_componentCount - 4], 0);
        if (!v38)
        {
          v39 = sub_1AF0D5194();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF641C(v39, v40, v41, v42, v43, v44, v45, v46);
          }
        }

        v47 = sub_1AF1AF080(v38);
        v48 = sub_1AF1CAED8(v47);
        v6 = sub_1AF28844C(v48);
        dataStride = sub_1AF121B74(v47);
        dataOffset = sub_1AF1CB564(v47);
        if (v6 != 14)
        {
          v49 = sub_1AF0D5194();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF6494(v49, v50, v51, v52, v53, v54, v55, v56);
          }
        }

        sub_1AF288070(v6);
        v23 = sub_1AF1AE6E8(v38);
        CFRelease(v38);
      }

      v87 = vImageEncodeVectorOptionsCreate();
      vImageEncodeVectorOptionsSetQuantization();
      v86 = 0;
      objc_msgSend_bytes(v23, v57, v58, v59);
      objc_msgSend_length(v23, v60, v61, v62);
      v63 = vImageEncodeVectorHalf();

      if (!v63)
      {
        v64 = sub_1AF0D5194();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF650C(v64, v65, v66, v67, v68, v69, v70, v71);
        }
      }

      vImageEncodeVectorOptionsFree();
      v73 = objc_msgSend_dataWithBytesNoCopy_length_(MEMORY[0x1E695DEF0], v72, v86, v63);
      objc_msgSend_encodeObject_forKey_(a3, v74, v73, @"cdata");
    }

    else
    {
      v24 = objc_msgSend_bytesPerComponent(self, v10, v11, v12);
      v29 = objc_msgSend_componentsPerVector(self, v25, v26, v27) * v24;
      if (v29 < self->_dataStride)
      {
        v13 = objc_msgSend__uninterleaveData_count_srcOffset_srcStride_dstStride_(self, v28, v13, self->_vectorCount, self->_dataOffset);
        dataOffset = 0;
        dataStride = v29;
      }

      objc_msgSend_encodeObject_forKey_(a3, v28, v13, @"data");
    }
  }

  semantic = self->_semantic;
  if (semantic)
  {
    objc_msgSend_encodeObject_forKey_(a3, v10, semantic, @"semantic");
  }

  objc_msgSend_encodeInteger_forKey_(a3, v10, self->_vectorCount, @"vectorCount");
  v86 = 0;
  v87 = 0;
  v85 = 0;
  if (sub_1AF288A0C(v6, &v87, &v86, &v85))
  {
    objc_msgSend_encodeBool_forKey_(a3, v76, v85, @"floatComponents");
    objc_msgSend_encodeInteger_forKey_(a3, v77, v87, @"bytesPerComponent");
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(a3, v76, v6, @"componentType");
  }

  objc_msgSend_encodeInteger_forKey_(a3, v78, self->_componentCount, @"componentsPerVector");
  objc_msgSend_encodeInteger_forKey_(a3, v79, dataOffset, @"dataOffset");
  objc_msgSend_encodeInteger_forKey_(a3, v80, dataStride, @"dataStride");
  objc_msgSend_encodeInt_forKey_(a3, v81, self->_mkSemantic, @"mkSemantic");
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    v83 = CGColorSpaceCopyPropertyList(colorSpace);
    objc_msgSend_encodeObject_forKey_(a3, v84, v83, @"colorSpace");
    CFRelease(v83);
  }
}

- (VFXMeshSource)initWithCoder:(id)a3
{
  v98.receiver = self;
  v98.super_class = VFXMeshSource;
  v7 = [(VFXMeshSource *)&v98 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(a3, v12, v11, @"semantic");
    if (objc_msgSend_isEqualToString_(v13, v14, @"kGeometrySourceSemanticVertex", v15))
    {
      v13 = @"kGeometrySourceSemanticPosition";
    }

    if ((sub_1AF2E54B8(v13, v16, v17, v18) & 1) == 0)
    {
      v33 = sub_1AF0D5194();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF6228();
      }

      goto LABEL_12;
    }

    v7->_semantic = v13;
    v7->_vectorCount = objc_msgSend_decodeIntegerForKey_(a3, v19, @"vectorCount", v20);
    v7->_dataOffset = objc_msgSend_decodeIntegerForKey_(a3, v21, @"dataOffset", v22);
    v7->_dataStride = objc_msgSend_decodeIntegerForKey_(a3, v23, @"dataStride", v24);
    v7->_componentCount = objc_msgSend_decodeIntegerForKey_(a3, v25, @"componentsPerVector", v26);
    v29 = objc_msgSend_decodeIntegerForKey_(a3, v27, @"componentType", v28);
    v7->_componentType = v29;
    if (v29)
    {
      if (v29 < 0 || (v29 & 0x7FFEu) >= 0x2EuLL)
      {
        v32 = sub_1AF0D5194();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF6584();
        }

        goto LABEL_13;
      }
    }

    else
    {
      v37 = objc_msgSend_decodeBoolForKey_(a3, v30, @"floatComponents", v31);
      v40 = objc_msgSend_decodeIntegerForKey_(a3, v38, @"bytesPerComponent", v39);
      v7->_componentType = sub_1AF288ADC(v40, 1, v37);
    }

    v41 = objc_opt_class();
    v43 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v42, v41, @"cdata");
    v7->_encodeDataAsHalf = v43 != 0;
    if (v43)
    {
      v44 = v43;
      componentType = v7->_componentType;
      v46 = sub_1AF28844C(componentType);
      v47 = componentType != v46;
      if (componentType != v46)
      {
        v48 = sub_1AF0D5194();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF65B8();
        }
      }

      if (v7->_componentType != 14)
      {
        v49 = sub_1AF0D5194();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF65EC();
        }

        v47 = 1;
      }

      if (v7->_componentCount - 2 >= 3)
      {
        v85 = sub_1AF0D5194();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF6620();
        }

        goto LABEL_12;
      }

      if (v47)
      {
LABEL_12:
        objc_msgSend_setImmediateMode_(VFXTransaction, v34, v8, v35);
LABEL_13:

        return 0;
      }

      sub_1AF288070(v7->_componentType);
      v50 = v7->_dataStride * v7->_vectorCount;
      v51 = malloc_type_malloc(v50, 0x26F14FD4uLL);
      objc_msgSend_bytes(v44, v52, v53, v54);
      objc_msgSend_length(v44, v55, v56, v57);
      if (vImageDecodeVectorHalf() != v50)
      {
        v58 = sub_1AF0D5194();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF6654(v58, v59, v60, v61, v62, v63, v64, v65);
        }
      }

      v66 = objc_alloc(MEMORY[0x1E695DEF0]);
      v68 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v66, v67, v51, v50, 1);
    }

    else
    {
      v72 = objc_opt_class();
      v68 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v73, v72, @"data");
    }

    v7->_data = v68;
    v74 = objc_msgSend_bytesPerComponent(v7, v69, v70, v71);
    v78 = objc_msgSend_componentsPerVector(v7, v75, v76, v77);
    if (objc_msgSend_length(v7->_data, v79, v80, v81) < (v7->_dataOffset + v78 * v74 + (v7->_vectorCount - 1) * v7->_dataStride))
    {
      v84 = sub_1AF0D5194();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF66CC();
      }

      goto LABEL_12;
    }

    v7->_mkSemantic = objc_msgSend_decodeIntForKey_(a3, v82, @"mkSemantic", v83);
    v88 = objc_msgSend_decodePropertyListForKey_(a3, v86, @"colorSpace", v87);
    if (v88)
    {
      v91 = CGColorSpaceCreateWithPropertyList(v88);
      if (v91)
      {
        v92 = v91;
        data = v7->_data;
        vectorCount = v7->_vectorCount;
        componentCount = v7->_componentCount;
        v96 = sub_1AF288518(v7->_componentType);
        v7->_data = objc_msgSend_dataByConvertingColorData_colorSpace_newColorSpace_vectorCount_componentsPerVector_bytesPerComponent_dataOffset_dataStride_newDataOffset_newDataStride_(v7, v97, data, v92, &v7->_colorSpace, vectorCount, componentCount, v96, v7->_dataOffset, v7->_dataStride, &v7->_dataOffset, &v7->_dataStride);
        CFRelease(v92);
      }
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v89, v8, v90);
  }

  return v7;
}

+ (id)meshSourceWithMDLVertexAttribute:(id)a3 mesh:(id)a4
{
  v6 = objc_msgSend_vertexDescriptor(a4, a2, a3, a4);
  v13 = (objc_msgSend_format(a3, v7, v8, v9) >> 16) & 0xF;
  if (v13 >= 5)
  {
    v14 = 0;
    v15 = 2;
    if (v13 >= 9)
    {
      v16 = v13 - 11;
      if (v16)
      {
        v14 = v16 < 0xFFFFFFFE;
        v15 = 4;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  v17 = objc_msgSend_name(a3, v10, v11, v12);
  v20 = objc_msgSend_containsString_(v17, v18, *MEMORY[0x1E6974B28], v19);
  v24 = MEMORY[0x1E6974AF8];
  if (v20)
  {
    v25 = VFXMeshSourceSemanticPosition;
  }

  else
  {
    if ((objc_msgSend_containsString_(v17, v21, *MEMORY[0x1E6974B18], v23) & 1) == 0)
    {
      if (objc_msgSend_containsString_(v17, v21, *MEMORY[0x1E6974B38], v23))
      {
        v25 = VFXMeshSourceSemanticTexcoord;
        goto LABEL_14;
      }

      if (objc_msgSend_containsString_(v17, v21, *MEMORY[0x1E6974B30], v23))
      {
        v25 = VFXMeshSourceSemanticTangent;
        goto LABEL_14;
      }

      v26 = @"aoCoord";
      if (objc_msgSend_isEqualToString_(v17, v21, @"aoCoord", v23) & 1) != 0 || (v26 = @"lightmapCoord", (objc_msgSend_isEqualToString_(v17, v21, @"lightmapCoord", v23)))
      {
        v25 = VFXMeshSourceSemanticTexcoord;
        goto LABEL_15;
      }

      if (objc_msgSend_containsString_(v17, v21, *v24, v23) & 1) != 0 || (objc_msgSend_containsString_(v17, v21, *MEMORY[0x1E6974B20], v23))
      {
        v25 = VFXMeshSourceSemanticColor;
        goto LABEL_14;
      }

      v172 = sub_1AF0D5194();
      if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF6934(v17, v172);
      }
    }

    v25 = VFXMeshSourceSemanticNormal;
  }

LABEL_14:
  v26 = @"unknown";
LABEL_15:
  v27 = *v25;
  v28 = objc_msgSend_layouts(v6, v21, v22, v23);
  v32 = objc_msgSend_bufferIndex(a3, v29, v30, v31);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v28, v33, v32, v34);
  v39 = objc_msgSend_stride(v35, v36, v37, v38);
  v43 = objc_msgSend_format(a3, v40, v41, v42);
  v47 = objc_msgSend_offset(a3, v44, v45, v46);
  v51 = objc_msgSend_name(a3, v48, v49, v50);
  if (objc_msgSend_containsString_(v51, v52, *v24, v53) && objc_msgSend_format(a3, v54, v55, v56) == 65540)
  {
    v57 = objc_msgSend_vertexBuffers(a4, v54, v55, v56);
    v61 = objc_msgSend_bufferIndex(a3, v58, v59, v60);
    v64 = objc_msgSend_objectAtIndexedSubscript_(v57, v62, v61, v63);
    v68 = objc_msgSend_map(v64, v65, v66, v67);
    v72 = objc_msgSend_bytes(v68, v69, v70, v71);
    v76 = objc_msgSend_vertexBuffers(a4, v73, v74, v75);
    v80 = objc_msgSend_bufferIndex(a3, v77, v78, v79);
    v83 = objc_msgSend_objectAtIndexedSubscript_(v76, v81, v80, v82);
    v87 = objc_msgSend_length(v83, v84, v85, v86);
    if (objc_msgSend_format(a3, v88, v89, v90) == 786436)
    {
      __p = 0;
      v174 = 0;
      v175 = 0;
      if (v87 >= 0x10)
      {
        v94 = 4 * (v87 >> 4);
        sub_1AF2F8E14(&__p, v94);
        v95 = 0;
        v96 = (v72 + 8);
        do
        {
          *(__p + v95) = (*(v96 - 2) * 255.0);
          *(__p + v95 + 1) = (*(v96 - 1) * 255.0);
          *(__p + v95 + 2) = (*v96 * 255.0);
          *(__p + v95 + 3) = (v96[1] * 255.0);
          v95 += 4;
          v96 += 4;
        }

        while (v94 != v95);
      }
    }

    else
    {
      if (objc_msgSend_format(a3, v91, v92, v93) != 786435)
      {
        if (objc_msgSend_format(a3, v91, v148, v149) == 65539)
        {
          v156 = v87 / 3;
          __p = 0;
          v174 = 0;
          v175 = 0;
          sub_1AF121C28(&__p, 4 * (v87 / 3));
          v159 = __p;
          if (v87 >= 3)
          {
            v160 = (__p + 8);
            v161 = (v72 + 2);
            do
            {
              LOBYTE(v158) = *(v161 - 2);
              *&v162 = LODWORD(v158) / 255.0;
              *(v160 - 2) = *&v162;
              LOBYTE(v162) = *(v161 - 1);
              *&v163 = v162 / 255.0;
              *(v160 - 1) = *&v163;
              LOBYTE(v163) = *v161;
              v158 = v163 / 255.0;
              *v160 = v158;
              v160[1] = 1.0;
              v160 += 4;
              v161 += 3;
              --v156;
            }

            while (v156);
          }
        }

        else
        {
          if (objc_msgSend_format(a3, v153, v154, v155) != 65540)
          {
            return 0;
          }

          __p = 0;
          v174 = 0;
          v175 = 0;
          sub_1AF121C28(&__p, v87 & 0xFFFFFFFFFFFFFFFCLL);
          v159 = __p;
          if (v87 >= 4)
          {
            v165 = v87 >> 2;
            v166 = (v72 + 3);
            v167 = (__p + 8);
            do
            {
              LOBYTE(v164) = *(v166 - 3);
              *&v168 = LODWORD(v164) / 255.0;
              *(v167 - 2) = *&v168;
              LOBYTE(v168) = *(v166 - 2);
              *&v169 = v168 / 255.0;
              *(v167 - 1) = *&v169;
              LOBYTE(v169) = *(v166 - 1);
              *&v170 = v169 / 255.0;
              *v167 = *&v170;
              LOBYTE(v170) = *v166;
              v164 = v170 / 255.0;
              v167[1] = v164;
              v166 += 4;
              v167 += 4;
              --v165;
            }

            while (v165);
          }
        }

        v133 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v157, v159, v174 - v159);
        if (__p)
        {
          v174 = __p;
          operator delete(__p);
        }

        v47 = 0;
        v14 = 1;
        v39 = 16;
        v97 = 4;
        v15 = 4;
        goto LABEL_23;
      }

      __p = 0;
      v174 = 0;
      v175 = 0;
      if (v87 >= 0xC)
      {
        v150 = 4 * (v87 / 0xC);
        sub_1AF2F8E14(&__p, v150);
        v151 = 0;
        v152 = (v72 + 4);
        do
        {
          *(__p + v151) = (*(v152 - 1) * 255.0);
          *(__p + v151 + 1) = (*v152 * 255.0);
          *(__p + v151 + 2) = (v152[1] * 255.0);
          *(__p + v151 + 3) = -1;
          v151 += 4;
          v152 += 3;
        }

        while (v150 != v151);
      }
    }

    v133 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v91, __p, v174 - __p);
    if (__p)
    {
      v174 = __p;
      operator delete(__p);
    }

    v47 = 0;
    v14 = 0;
    v15 = 1;
    v97 = 4;
    v39 = 4;
  }

  else
  {
    v97 = v43 & 7;
    v98 = objc_msgSend_vertexBuffers(a4, v54, v55, v56);
    v102 = objc_msgSend_bufferIndex(a3, v99, v100, v101);
    v105 = objc_msgSend_objectAtIndexedSubscript_(v98, v103, v102, v104);
    v109 = objc_msgSend_map(v105, v106, v107, v108);
    v113 = objc_msgSend_bytes(v109, v110, v111, v112);
    v117 = objc_msgSend_vertexBuffers(a4, v114, v115, v116);
    v121 = objc_msgSend_bufferIndex(a3, v118, v119, v120);
    v124 = objc_msgSend_objectAtIndexedSubscript_(v117, v122, v121, v123);
    v128 = objc_msgSend_length(v124, v125, v126, v127);
    v133 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v129, v113, v128);
  }

LABEL_23:
  if (!v133)
  {
    return 0;
  }

  v134 = objc_msgSend_length(v133, v130, v131, v132) / v39;
  if (objc_msgSend_isEqualToString_(v27, v135, @"kGeometrySourceSemanticTexcoord", v136))
  {
    v140 = objc_msgSend_format(a3, v137, v138, v139);
    v144 = objc_msgSend_bytes(v133, v141, v142, v143);
    sub_1AF2F07B4(v140, v144, v47, v39, v134);
  }

  v145 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v137, v133, v27, v134, v14, v97, v15, v47, v39);
  objc_msgSend_setMkSemantic_(v145, v146, v26, v147);
  return v145;
}

@end