@interface TSCH3DDataBuffer
- (DataBufferInfo)bufferInfo;
- (DataBufferLevelData)dataAtLevel:(SEL)level;
- (DataBufferLevelData)dataWithSizeGreaterOrEqualTo:(SEL)to;
- (id)description;
- (tvec2<int>)size2;
- (tvec3<int>)size;
- (unint64_t)componentByteSize;
@end

@implementation TSCH3DDataBuffer

- (id)description
{
  v62 = MEMORY[0x277CCACA8];
  v64.receiver = self;
  v64.super_class = TSCH3DDataBuffer;
  v3 = [(TSCH3DDataBuffer *)&v64 description];
  v8 = objc_msgSend_count(self, v4, v5, v6, v7);
  v13 = objc_msgSend_components(self, v9, v10, v11, v12);
  v18 = objc_msgSend_componentType(self, v14, v15, v16, v17);
  v23 = objc_msgSend_byteSize(self, v19, v20, v21, v22);
  v28 = objc_msgSend_elementByteSize(self, v24, v25, v26, v27);
  v33 = objc_msgSend_componentByteSize(self, v29, v30, v31, v32);
  objc_msgSend_size(self, v34, v35, v36, v37);
  v38 = MEMORY[0x277CCACA8];
  sub_276152FD4("ivec3(%d, %d, %d)", v39, v40, v41, v42, v43, v44, v45, v63);
  if (v66 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v38, v46, v47, v48, v49, &v65);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v38, v46, v47, v48, v49, v65);
  }
  v51 = ;
  if (v66 < 0)
  {
    operator delete(v65);
  }

  hasLevels = objc_msgSend_hasLevels(self, v50, v52, v53, v54);
  v60 = objc_msgSend_stringWithFormat_(v62, v56, v57, v58, v59, @"%@(count %lu, components %lu, type %ld, byteSize %lu, elementByteSize %lu, componentByteSize %lu, dimension(%@), hasLevels %ld)", v3, v8, v13, v18, v23, v28, v33, v51, hasLevels);

  return v60;
}

- (unint64_t)componentByteSize
{
  v7 = objc_msgSend_componentType(self, a2, v2, v3, v4) - 1;
  if (v7 < 3)
  {
    return qword_2764D6768[v7];
  }

  v12 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DDataBuffer componentByteSize]");
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.mm");
  v23 = objc_msgSend_componentType(self, v19, v20, v21, v22);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v24, v25, v26, v27, v13, v18, 52, 0, "invalid component type %ld", v23);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  v32 = MEMORY[0x277D81150];
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCH3DDataBuffer componentByteSize]");
  v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v43, v44, v45, v46, v37, v42, 55, 0, "invalid componentByteSize %ld", -1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  return -1;
}

- (tvec3<int>)size
{
  v6 = v2;
  v7 = objc_msgSend_count(self, a2, v3, v4, v5);
  *v6 = v7;
  *(v6 + 4) = 0x100000001;
  result.var0 = v7;
  result.var1 = *(&v7 + 4);
  result.var2 = v8;
  return result;
}

- (tvec2<int>)size2
{
  v6 = v2;
  v7 = objc_msgSend_size(self, a2, v3, v4, v5);
  if (v41 != 1)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DDataBuffer size2]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.mm");
    v19 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec3(%d, %d, %d)", v20, v21, v22, v23, v24, v25, v26, v40);
    if (v43 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v19, v27, v28, v29, v30, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v19, v27, v28, v29, v30, __p);
    }
    v32 = ;
    if (v43 < 0)
    {
      operator delete(__p);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v31, v33, v34, v35, v13, v18, 73, 0, "cannot get 2D size for 3D textures %@", v32, HIDWORD(v40), v41);

    v7 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  *v6 = v40;
  return v7;
}

- (DataBufferInfo)bufferInfo
{
  retstr->componentType = objc_msgSend_componentType(self, a3, v3, v4, v5);
  retstr->components = objc_msgSend_components(self, v8, v9, v10, v11);
  retstr->count = objc_msgSend_count(self, v12, v13, v14, v15);
  retstr->byteSize = objc_msgSend_byteSize(self, v16, v17, v18, v19);
  retstr->componentByteSize = objc_msgSend_componentByteSize(self, v20, v21, v22, v23);
  result = objc_msgSend_elementByteSize(self, v24, v25, v26, v27);
  retstr->elementByteSize = result;
  return result;
}

- (DataBufferLevelData)dataAtLevel:(SEL)level
{
  if (objc_msgSend_hasLevels(self, level, v4, v5, v6))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DDataBuffer dataAtLevel:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 93, 0, "dataAtLevel: method not properly overriden for providing levels");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (a4)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DDataBuffer dataAtLevel:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DDataBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 94, 0, "invalid level %lu", a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  v44 = objc_msgSend_data(self, v10, v11, v12, v13);
  result = objc_msgSend_size(self, v45, v46, v47, v48);
  retstr->var0 = v44;
  *&retstr->var1.var0.var0 = v50;
  retstr->var1.var2.var0 = v51;
  return result;
}

- (DataBufferLevelData)dataWithSizeGreaterOrEqualTo:(SEL)to
{
  if (objc_msgSend_hasLevels(self, to, v4, v5, v6))
  {
    objc_msgSend_size(self, v9, v10, v11, v12);
    LODWORD(v17) = v20;
    if (v20 <= v21)
    {
      LODWORD(v17) = v21;
    }

    v17 = v17;
    if (v17 <= a4)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      do
      {
        v17 >>= 1;
        ++v18;
      }

      while (v17 > a4);
    }

    return objc_msgSend_dataAtLevel_(self, v13, v14, v15, v16, v18);
  }

  else
  {

    return objc_msgSend_dataAtLevel_(self, v9, v10, v11, v12, 0);
  }
}

@end