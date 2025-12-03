@interface VFXMeshSource
+ (id)_meshSourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride;
+ (id)_modelSourceWithSource:(id)source vertexFormat:(unint64_t)format;
+ (id)dataByConvertingDoublesToFloats:(const double *)floats count:(int64_t)count;
+ (id)dataWithPointArray:(const CGPoint *)array count:(int64_t)count bytesPerComponent:(int64_t *)component;
+ (id)dataWithVector3Array:(id)array count:(SEL)count bytesPerComponent:;
+ (id)geometrySourceWithColorData:(id)data colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0;
+ (id)meshSourceWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride;
+ (id)meshSourceWithColorComponents:(const float *)components count:(int64_t)count hasAlpha:(BOOL)alpha colorSpace:(CGColorSpace *)space;
+ (id)meshSourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0;
+ (id)meshSourceWithMDLVertexAttribute:(id)attribute mesh:(id)mesh;
+ (id)meshSourceWithMeshSourceRef:(__CFXMeshSource *)ref;
+ (id)meshSourceWithNormals:(id)normals count:(SEL)count;
+ (id)meshSourceWithTextureCoordinates:(const CGPoint *)coordinates count:(int64_t)count;
+ (id)meshSourceWithVertices:(id)vertices count:(SEL)count;
- (NSData)data;
- (NSString)description;
- (VFXMeshSource)initWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride;
- (VFXMeshSource)initWithCoder:(id)coder;
- (VFXMeshSource)initWithData:(id)data semantic:(id)semantic colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)self0 dataStride:(int64_t)self1;
- (VFXMeshSource)initWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride;
- (VFXMeshSource)initWithMeshSource:(__CFXMeshSource *)source;
- (VFXWorld)world;
- (__CFXMeshSource)meshSource;
- (__CFXWorld)worldRef;
- (id)_uninterleaveData:(id)data count:(unint64_t)count srcOffset:(unint64_t)offset srcStride:(unint64_t)stride dstStride:(unint64_t)dstStride;
- (id)dataByConvertingColorData:(id)data colorSpace:(CGColorSpace *)space newColorSpace:(CGColorSpace *)colorSpace vectorCount:(int64_t)count componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0 newDataOffset:(int64_t *)self1 newDataStride:(int64_t *)self2;
- (id)mkSemantic;
- (void)_clearCFXCache;
- (void)_printData;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeWorldReference:(id)reference;
- (void)setMkSemantic:(id)semantic;
- (void)setWorld:(id)world;
@end

@implementation VFXMeshSource

+ (id)meshSourceWithMeshSourceRef:(__CFXMeshSource *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithMeshSource_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

- (VFXMeshSource)initWithMeshSource:(__CFXMeshSource *)source
{
  v12.receiver = self;
  v12.super_class = VFXMeshSource;
  v4 = [(VFXMeshSource *)&v12 init];
  if (source)
  {
    v4->_meshSource = CFRetain(source);
    v4->_data = sub_1AF1AE6E8(source);
    v10 = 0u;
    v11 = 0u;
    sub_1AF1AE1A8(source, &v10);
    v5 = sub_1AF1AE3D8(source);
    v6 = sub_1AF2E4E18(v5);
    v7 = v11;
    v4->_semantic = &v6->isa;
    v4->_vectorCount = v7;
    v4->_componentType = BYTE7(v11);
    v4->_componentCount = BYTE8(v11);
    v4->_mkSemantic = sub_1AF1AF854(source);
    sub_1AF16CDFC(source, v4);
    v8 = sub_1AF1AF080(source);
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

+ (id)dataByConvertingDoublesToFloats:(const double *)floats count:(int64_t)count
{
  countCopy = count;
  v6 = 4 * count;
  v7 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
  v9 = v7;
  if (countCopy >= 1)
  {
    v10 = v7;
    do
    {
      v11 = *floats++;
      v12 = v11;
      *v10++ = v12;
      --countCopy;
    }

    while (countCopy);
  }

  v13 = MEMORY[0x1E695DEF0];

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v13, v8, v9, v6, 1);
}

+ (id)dataWithVector3Array:(id)array count:(SEL)count bytesPerComponent:
{
  if (v4)
  {
    *v4 = 4;
  }

  return objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], count, v2, 16 * v3);
}

+ (id)dataWithPointArray:(const CGPoint *)array count:(int64_t)count bytesPerComponent:(int64_t *)component
{
  countCopy = count;
  if (component)
  {
    *component = 4;
  }

  v7 = 8 * count;
  v8 = malloc_type_malloc(8 * count, 0x100004052888210uLL);
  v10 = v8;
  if (countCopy >= 1)
  {
    v11 = v8;
    do
    {
      v12 = *array++;
      *v11++ = vcvt_f32_f64(v12);
      --countCopy;
    }

    while (countCopy);
  }

  v13 = MEMORY[0x1E695DEF0];

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v13, v9, v10, v7, 1);
}

- (VFXMeshSource)initWithData:(id)data semantic:(id)semantic colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)self0 dataStride:(int64_t)self1
{
  componentsCopy = components;
  dataCopy = data;
  offsetCopy = offset;
  strideCopy = stride;
  if ((sub_1AF2E54B8(semantic, a2, data, semantic) & 1) == 0)
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
    componentCopy = component;
    if (component == 8)
    {
      if (offsetCopy || strideCopy && 8 * vector != strideCopy)
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
      v29 = objc_msgSend_bytes(dataCopy, v26, v27, v28);
      dataCopy = objc_msgSend_dataByConvertingDoublesToFloats_count_(v25, v30, v29, vector * count);
      strideCopy = 4 * vector;
      stride = 4 * vector;
      componentCopy = 4;
    }

    if (space && objc_msgSend_isEqualToString_(semantic, v20, @"kGeometrySourceSemanticColor", v21))
    {
      dataCopy = objc_msgSend_dataByConvertingColorData_colorSpace_newColorSpace_vectorCount_componentsPerVector_bytesPerComponent_dataOffset_dataStride_newDataOffset_newDataStride_(self, v31, dataCopy, space, &self->_colorSpace, count, vector, componentCopy, offsetCopy, strideCopy, &offset, &stride);
    }

    self->_data = dataCopy;
    self->_semantic = objc_msgSend_copy(semantic, v32, v33, v34);
    self->_vectorCount = count;
    self->_componentType = sub_1AF288ADC(componentCopy, 1, componentsCopy);
    self->_componentCount = vector;
    strideCopy2 = stride;
    if (!stride)
    {
      strideCopy2 = componentCopy * vector;
    }

    self->_dataOffset = offset;
    self->_dataStride = strideCopy2;
  }

  return self;
}

- (VFXMeshSource)initWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  componentCountCopy = componentCount;
  typeCopy = type;
  if (sub_1AF2E54B8(semantic, a2, data, semantic))
  {
    v23.receiver = self;
    v23.super_class = VFXMeshSource;
    v16 = [(VFXMeshSource *)&v23 init];
    if (v16)
    {
      strideCopy = stride;
      v16->_data = data;
      v16->_semantic = objc_msgSend_copy(semantic, v18, v19, v20);
      v16->_vectorCount = count;
      v16->_componentType = typeCopy;
      v16->_componentCount = componentCountCopy;
      v16->_dataOffset = offset;
      if (!stride)
      {
        strideCopy = sub_1AF288070(typeCopy) * v16->_componentCount;
      }

      v16->_dataStride = strideCopy;
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

- (VFXMeshSource)initWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  if (sub_1AF2E54B8(semantic, a2, buffer, format))
  {
    v22.receiver = self;
    v22.super_class = VFXMeshSource;
    v15 = [(VFXMeshSource *)&v22 init];
    if (v15)
    {
      v15->_mtlBuffer = buffer;
      v15->_semantic = objc_msgSend_copy(semantic, v16, v17, v18);
      v15->_vectorCount = count;
      v15->_mtlVertexFormat = format;
      v19 = sub_1AF1F1980(format);
      v15->_componentType = sub_1AF28844C(v19);
      v15->_componentCount = sub_1AF2884B4(v19);
      v15->_dataOffset = offset;
      if (!stride)
      {
        stride = sub_1AF288070(v19);
      }

      v15->_dataStride = stride;
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

+ (id)meshSourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0
{
  componentsCopy = components;
  v16 = [self alloc];
  v18 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v16, v17, data, semantic, 0, count, componentsCopy, vector, component, offset, stride);

  return v18;
}

+ (id)_meshSourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  typeCopy = type;
  v15 = [self alloc];
  v17 = objc_msgSend_initWithData_semantic_vectorCount_componentType_componentCount_dataOffset_dataStride_(v15, v16, data, semantic, count, typeCopy, componentCount, offset, stride);

  return v17;
}

+ (id)meshSourceWithVertices:(id)vertices count:(SEL)count
{
  v4 = v3;
  v9 = 0;
  v6 = objc_msgSend_dataWithVector3Array_count_bytesPerComponent_(vertices, count, v2, v3, &v9);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(vertices, v7, v6, @"kGeometrySourceSemanticPosition", v4, 1, 3, v9, 0, 16);
}

+ (id)meshSourceWithNormals:(id)normals count:(SEL)count
{
  v4 = v3;
  v9 = 0;
  v6 = objc_msgSend_dataWithVector3Array_count_bytesPerComponent_(normals, count, v2, v3, &v9);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(normals, v7, v6, @"kGeometrySourceSemanticNormal", v4, 1, 3, v9, 0, 16);
}

+ (id)meshSourceWithTextureCoordinates:(const CGPoint *)coordinates count:(int64_t)count
{
  v9 = 0;
  v6 = objc_msgSend_dataWithPointArray_count_bytesPerComponent_(self, a2, coordinates, count, &v9);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(self, v7, v6, @"kGeometrySourceSemanticTexcoord", count, 1, 2, v9, 0, 0);
}

- (id)dataByConvertingColorData:(id)data colorSpace:(CGColorSpace *)space newColorSpace:(CGColorSpace *)colorSpace vectorCount:(int64_t)count componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0 newDataOffset:(int64_t *)self1 newDataStride:(int64_t *)self2
{
  dataStrideCopy2 = dataStride;
  offsetCopy2 = offset;
  sub_1AF16425C();
  ColorSpace = CGColorTransformGetColorSpace();
  v20 = *colorSpace;
  if (*colorSpace != ColorSpace)
  {
    if (v20)
    {
      CFRelease(v20);
      *colorSpace = 0;
    }

    if (ColorSpace)
    {
      v21 = CFRetain(ColorSpace);
    }

    else
    {
      v21 = 0;
    }

    *colorSpace = v21;
  }

  if (CFEqual(space, ColorSpace))
  {
    goto LABEL_19;
  }

  v36 = 3 * component;
  v25 = component * vector;
  if (stride)
  {
    strideCopy = stride;
  }

  else
  {
    strideCopy = component * vector;
  }

  dataCopy = data;
  v27 = objc_msgSend_bytes(data, v22, v23, v24) + offset;
  v38 = v25 * count;
  v28 = malloc_type_malloc(v25 * count, 0x100004077774924uLL);
  if (!CGColorTransformConvertData())
  {
    free(v28);
    dataStrideCopy2 = dataStride;
    offsetCopy2 = offset;
    data = dataCopy;
LABEL_19:
    *dataOffset = offsetCopy2;
    *dataStrideCopy2 = stride;
    return data;
  }

  *dataOffset = 0;
  *dataStride = v25;
  if (vector == 4)
  {
    v30 = v28;
    if (count >= 1)
    {
      v31 = &v28[v36];
      v32 = (v27 + v36);
      do
      {
        memcpy(v31, v32, component);
        v31 += v25;
        v32 += strideCopy;
        --count;
      }

      while (count);
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

+ (id)meshSourceWithColorComponents:(const float *)components count:(int64_t)count hasAlpha:(BOOL)alpha colorSpace:(CGColorSpace *)space
{
  alphaCopy = alpha;
  sub_1AF16425C();
  ColorSpace = CGColorTransformGetColorSpace();
  if (!space)
  {
    space = sub_1AF164420();
  }

  if (alphaCopy)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  if (CFEqual(space, ColorSpace))
  {
    v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v13, components, 4 * v12 * count);
  }

  else
  {
    selfCopy = self;
    v15 = malloc_type_malloc(4 * v12 * count, 0x100004052888210uLL);
    v28 = 4 * v12;
    v27 = 4 * v12;
    if (CGColorTransformConvertData())
    {
      if (count >= 1 && alphaCopy)
      {
        v17 = v15 + 3;
        v18 = components + 3;
        countCopy = count;
        do
        {
          v20 = *v18;
          v18 += 4;
          *v17 = v20;
          v17 += 4;
          --countCopy;
        }

        while (countCopy);
      }

      v21 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v16, v15, 4 * v12 * count, 1, v27, v15, 96, v28);
    }

    else
    {
      free(v15);
      v21 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v22, components, 4 * v12 * count, v27, v15, 96, v28);
    }

    v14 = v21;
    self = selfCopy;
  }

  v23 = [self alloc];
  v25 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v23, v24, v14, @"kGeometrySourceSemanticColor", ColorSpace, count, 1, v12, 4, 0, 4 * v12);

  return v25;
}

+ (id)geometrySourceWithColorData:(id)data colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0
{
  componentsCopy = components;
  v16 = [self alloc];
  v18 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v16, v17, data, @"kGeometrySourceSemanticColor", space, count, componentsCopy, vector, component, offset, stride);

  return v18;
}

+ (id)meshSourceWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  if (format)
  {
    v14 = [self alloc];
    v16 = objc_msgSend_initWithBuffer_vertexFormat_semantic_vertexCount_dataOffset_dataStride_(v14, v15, buffer, format, semantic, count, offset, stride);

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

+ (id)_modelSourceWithSource:(id)source vertexFormat:(unint64_t)format
{
  if (!source)
  {
    return 0;
  }

  if (!format)
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF62C4();
    }

    return 0;
  }

  v6 = sub_1AF1F1980(format);
  v10 = objc_msgSend_meshSource(source, v7, v8, v9);
  v11 = sub_1AF1AF184(v10, v6, 0);
  if (!v11)
  {
    NSLog(&cfstr_Modelsourcewit.isa);
    return 0;
  }

  v12 = v11;
  v13 = [self alloc];
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

- (void)setMkSemantic:(id)semantic
{
  if (objc_msgSend_isEqualToString_(semantic, a2, *MEMORY[0x1E6974AE0], v3))
  {
    v8 = 0;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v6, *MEMORY[0x1E6974B28], v7))
  {
    v8 = 1;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v9, *MEMORY[0x1E6974B38], v10))
  {
    v8 = 2;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v11, *MEMORY[0x1E6974B18], v12))
  {
    v8 = 3;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v13, @"aoCoord", v14))
  {
    v8 = 4;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v15, *MEMORY[0x1E6974AF8], v16))
  {
    v8 = 5;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v17, *MEMORY[0x1E6974B20], v18))
  {
    v8 = 6;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v19, *MEMORY[0x1E6974B30], v20))
  {
    v8 = 7;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v21, *MEMORY[0x1E6974AE8], v22))
  {
    v8 = 8;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v23, @"lightmapCoord", v24))
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

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
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

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
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

    self->_world = world;
    if (world)
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

- (id)_uninterleaveData:(id)data count:(unint64_t)count srcOffset:(unint64_t)offset srcStride:(unint64_t)stride dstStride:(unint64_t)dstStride
{
  countCopy = count;
  v12 = dstStride * count;
  v13 = objc_msgSend_dataWithCapacity_(MEMORY[0x1E695DF88], a2, dstStride * count, count);
  objc_msgSend_setLength_(v13, v14, v12, v15);
  v19 = objc_msgSend_mutableBytes(v13, v16, v17, v18);
  v23 = objc_msgSend_bytes(data, v20, v21, v22);
  if (countCopy)
  {
    v24 = (v23 + offset);
    do
    {
      memcpy(v19, v24, dstStride);
      v24 += stride;
      v19 += dstStride;
      --countCopy;
    }

    while (countCopy);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  LOWORD(v6) = self->_componentType;
  dataOffset = self->_dataOffset;
  dataStride = self->_dataStride;
  v9 = objc_msgSend_data(self, a2, coder, v3);
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
      objc_msgSend_encodeObject_forKey_(coder, v74, v73, @"cdata");
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

      objc_msgSend_encodeObject_forKey_(coder, v28, v13, @"data");
    }
  }

  semantic = self->_semantic;
  if (semantic)
  {
    objc_msgSend_encodeObject_forKey_(coder, v10, semantic, @"semantic");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_vectorCount, @"vectorCount");
  v86 = 0;
  v87 = 0;
  v85 = 0;
  if (sub_1AF288A0C(v6, &v87, &v86, &v85))
  {
    objc_msgSend_encodeBool_forKey_(coder, v76, v85, @"floatComponents");
    objc_msgSend_encodeInteger_forKey_(coder, v77, v87, @"bytesPerComponent");
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(coder, v76, v6, @"componentType");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v78, self->_componentCount, @"componentsPerVector");
  objc_msgSend_encodeInteger_forKey_(coder, v79, dataOffset, @"dataOffset");
  objc_msgSend_encodeInteger_forKey_(coder, v80, dataStride, @"dataStride");
  objc_msgSend_encodeInt_forKey_(coder, v81, self->_mkSemantic, @"mkSemantic");
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    v83 = CGColorSpaceCopyPropertyList(colorSpace);
    objc_msgSend_encodeObject_forKey_(coder, v84, v83, @"colorSpace");
    CFRelease(v83);
  }
}

- (VFXMeshSource)initWithCoder:(id)coder
{
  v98.receiver = self;
  v98.super_class = VFXMeshSource;
  v7 = [(VFXMeshSource *)&v98 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v12, v11, @"semantic");
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
    v7->_vectorCount = objc_msgSend_decodeIntegerForKey_(coder, v19, @"vectorCount", v20);
    v7->_dataOffset = objc_msgSend_decodeIntegerForKey_(coder, v21, @"dataOffset", v22);
    v7->_dataStride = objc_msgSend_decodeIntegerForKey_(coder, v23, @"dataStride", v24);
    v7->_componentCount = objc_msgSend_decodeIntegerForKey_(coder, v25, @"componentsPerVector", v26);
    v29 = objc_msgSend_decodeIntegerForKey_(coder, v27, @"componentType", v28);
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
      v37 = objc_msgSend_decodeBoolForKey_(coder, v30, @"floatComponents", v31);
      v40 = objc_msgSend_decodeIntegerForKey_(coder, v38, @"bytesPerComponent", v39);
      v7->_componentType = sub_1AF288ADC(v40, 1, v37);
    }

    v41 = objc_opt_class();
    v43 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v42, v41, @"cdata");
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
      v68 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v73, v72, @"data");
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

    v7->_mkSemantic = objc_msgSend_decodeIntForKey_(coder, v82, @"mkSemantic", v83);
    v88 = objc_msgSend_decodePropertyListForKey_(coder, v86, @"colorSpace", v87);
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

+ (id)meshSourceWithMDLVertexAttribute:(id)attribute mesh:(id)mesh
{
  v6 = objc_msgSend_vertexDescriptor(mesh, a2, attribute, mesh);
  v13 = (objc_msgSend_format(attribute, v7, v8, v9) >> 16) & 0xF;
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

  v17 = objc_msgSend_name(attribute, v10, v11, v12);
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
  v32 = objc_msgSend_bufferIndex(attribute, v29, v30, v31);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v28, v33, v32, v34);
  v39 = objc_msgSend_stride(v35, v36, v37, v38);
  v43 = objc_msgSend_format(attribute, v40, v41, v42);
  v47 = objc_msgSend_offset(attribute, v44, v45, v46);
  v51 = objc_msgSend_name(attribute, v48, v49, v50);
  if (objc_msgSend_containsString_(v51, v52, *v24, v53) && objc_msgSend_format(attribute, v54, v55, v56) == 65540)
  {
    v57 = objc_msgSend_vertexBuffers(mesh, v54, v55, v56);
    v61 = objc_msgSend_bufferIndex(attribute, v58, v59, v60);
    v64 = objc_msgSend_objectAtIndexedSubscript_(v57, v62, v61, v63);
    v68 = objc_msgSend_map(v64, v65, v66, v67);
    v72 = objc_msgSend_bytes(v68, v69, v70, v71);
    v76 = objc_msgSend_vertexBuffers(mesh, v73, v74, v75);
    v80 = objc_msgSend_bufferIndex(attribute, v77, v78, v79);
    v83 = objc_msgSend_objectAtIndexedSubscript_(v76, v81, v80, v82);
    v87 = objc_msgSend_length(v83, v84, v85, v86);
    if (objc_msgSend_format(attribute, v88, v89, v90) == 786436)
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
      if (objc_msgSend_format(attribute, v91, v92, v93) != 786435)
      {
        if (objc_msgSend_format(attribute, v91, v148, v149) == 65539)
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
          if (objc_msgSend_format(attribute, v153, v154, v155) != 65540)
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
    v98 = objc_msgSend_vertexBuffers(mesh, v54, v55, v56);
    v102 = objc_msgSend_bufferIndex(attribute, v99, v100, v101);
    v105 = objc_msgSend_objectAtIndexedSubscript_(v98, v103, v102, v104);
    v109 = objc_msgSend_map(v105, v106, v107, v108);
    v113 = objc_msgSend_bytes(v109, v110, v111, v112);
    v117 = objc_msgSend_vertexBuffers(mesh, v114, v115, v116);
    v121 = objc_msgSend_bufferIndex(attribute, v118, v119, v120);
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
    v140 = objc_msgSend_format(attribute, v137, v138, v139);
    v144 = objc_msgSend_bytes(v133, v141, v142, v143);
    sub_1AF2F07B4(v140, v144, v47, v39, v134);
  }

  v145 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v137, v133, v27, v134, v14, v97, v15, v47, v39);
  objc_msgSend_setMkSemantic_(v145, v146, v26, v147);
  return v145;
}

@end