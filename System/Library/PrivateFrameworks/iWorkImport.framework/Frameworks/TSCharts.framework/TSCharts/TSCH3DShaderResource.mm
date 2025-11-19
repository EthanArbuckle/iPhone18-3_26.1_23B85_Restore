@interface TSCH3DShaderResource
+ (pair<TSCH3D::IteratorRange<const)stringsFromBuffer:(id)a2;
- (IteratorRange<const)resourceStringOfString:(id)a3;
- (TSCH3DShaderProgram)program;
- (TSCH3DShaderResource)initWithCaching:(int)a3;
- (TSCH3DShaderResource)initWithCaching:(int)a3 version:(id)a4;
- (TSCH3DVersion)version;
- (id)get;
- (void)appendShaderResourceString:(IteratorRange<const char *>)a3 toDataBuffer:(id)a4;
@end

@implementation TSCH3DShaderResource

+ (pair<TSCH3D::IteratorRange<const)stringsFromBuffer:(id)a2
{
  v41 = a4;
  if (objc_msgSend_componentByteSize(v41, v5, v6, v7, v8) != 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "+[TSCH3DShaderResource stringsFromBuffer:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderResource.mm");
    v24 = objc_msgSend_componentByteSize(v41, v20, v21, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v25, v26, v27, v28, v14, v19, 45, 0, "expects unsigned char component size from %@ but got %lu", v41, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_data(v41, v9, v10, v11, v12);
  v34 = v33;
  v35 = v33;
  do
  {
    v36 = *v35++;
    ++v34;
  }

  while (v36);
  v37 = v34 - 1;
  v38 = v35 - 1;
  do
  {
    v39 = *v35++;
    ++v37;
  }

  while (v39);
  retstr->var0.var0.var0 = v33;
  retstr->var0.var0.var1 = v38;
  retstr->var1.var0.var0 = v34;
  retstr->var1.var0.var1 = v37;

  return result;
}

- (TSCH3DShaderResource)initWithCaching:(int)a3
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v3, v4, v5, a2);

  return 0;
}

- (TSCH3DShaderResource)initWithCaching:(int)a3 version:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v16.receiver = self;
  v16.super_class = TSCH3DShaderResource;
  v7 = [(TSCH3DResource *)&v16 initWithCaching:v4];
  if (v7)
  {
    v8 = [TSCH3DShaderProgram alloc];
    v13 = objc_msgSend_initWithVersion_(v8, v9, v10, v11, v12, v6);
    program = v7->_program;
    v7->_program = v13;
  }

  return v7;
}

- (TSCH3DVersion)version
{
  v5 = objc_msgSend_program(self, a2, v2, v3, v4);
  v10 = objc_msgSend_version(v5, v6, v7, v8, v9);

  return v10;
}

- (IteratorRange<const)resourceStringOfString:(id)a3
{
  v3 = a3;
  v4 = v3;
  v9 = objc_msgSend_UTF8String(v4, v5, v6, v7, v8);
  v10 = (v9 - 1);
  v11 = v9;
  do
  {
    v12 = *v11++;
    ++v10;
  }

  while (v12);

  v13 = v9;
  v14 = v10;
  result.var0.var1 = v14;
  result.var0.var0 = v13;
  return result;
}

- (void)appendShaderResourceString:(IteratorRange<const char *>)a3 toDataBuffer:(id)a4
{
  var1 = a3.var0.var1;
  var0 = a3.var0.var0;
  v35 = a4;
  if (!v35)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DShaderResource appendShaderResourceString:toDataBuffer:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 76, 0, "invalid nil value for '%{public}s'", "b");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_container(v35, v6, v7, v8, v9);
  sub_27619DF3C(v25, *(v25 + 8), var0, var1, var1 - var0);
  v27 = *(v25 + 8);
  v26 = *(v25 + 16);
  if (v27 >= v26)
  {
    v29 = *v25;
    v30 = &v27[-*v25];
    v31 = (v30 + 1);
    if ((v30 + 1) < 0)
    {
      sub_276161760();
    }

    v32 = v26 - v29;
    if (2 * v32 > v31)
    {
      v31 = 2 * v32;
    }

    if (v32 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v33 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v31;
    }

    if (v33)
    {
      operator new();
    }

    v34 = &v27[-*v25];
    *v30 = 0;
    v28 = v30 + 1;
    memcpy(0, v29, v34);
    *v25 = 0;
    *(v25 + 8) = v30 + 1;
    *(v25 + 16) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v27 = 0;
    v28 = v27 + 1;
  }

  *(v25 + 8) = v28;
}

- (TSCH3DShaderProgram)program
{
  program = self->_program;
  if (!program)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DShaderResource program]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 83, 0, "invalid nil value for '%{public}s'", "_program");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    program = self->_program;
  }

  return program;
}

- (id)get
{
  program = self->_program;
  if (!program)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DShaderResource get]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 88, 0, "invalid nil value for '%{public}s'", "_program");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    program = self->_program;
  }

  v22 = objc_msgSend_vertex(program, a2, v2, v3, v4);
  v27 = objc_msgSend_resourceStringOfString_(self, v23, v24, v25, v26, v22);
  v29 = v28;

  v34 = objc_msgSend_fragment(self->_program, v30, v31, v32, v33);
  v39 = objc_msgSend_resourceStringOfString_(self, v35, v36, v37, v38, v34);
  v41 = v40;

  v46 = objc_msgSend_bufferWithCapacity_(TSCH3DUByteDataBuffer, v42, v43, v44, v45, v29 - (v27 + v39) + v41 + 2);
  objc_msgSend_appendShaderResourceString_toDataBuffer_(self, v47, v48, v49, v50, v27, v29, v46);
  objc_msgSend_appendShaderResourceString_toDataBuffer_(self, v51, v52, v53, v54, v39, v41, v46);

  return v46;
}

@end