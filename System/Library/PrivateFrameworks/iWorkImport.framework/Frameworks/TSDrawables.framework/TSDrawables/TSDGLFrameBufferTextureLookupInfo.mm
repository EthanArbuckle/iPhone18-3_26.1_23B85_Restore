@interface TSDGLFrameBufferTextureLookupInfo
+ (id)invalidTextureLookupInfo;
+ (id)textureLookupInfoWithAttachment:(unsigned int)a3 indexOnAttachment:(int64_t)a4 textureName:(unsigned int)a5 textureSize:(CGSize)a6 name:(id)a7 target:(unsigned int)a8;
- (CGSize)textureSize;
- (NSString)name;
- (TSDGLFrameBufferTextureLookupInfo)initWithAttachment:(unsigned int)a3 indexOnAttachment:(int64_t)a4 textureName:(unsigned int)a5 textureSize:(CGSize)a6 name:(id)a7 target:(unsigned int)a8 valid:(BOOL)a9;
- (id)description;
- (int64_t)indexOnAttachment;
- (unsigned)attachment;
- (unsigned)target;
- (unsigned)textureName;
- (void)dealloc;
@end

@implementation TSDGLFrameBufferTextureLookupInfo

- (TSDGLFrameBufferTextureLookupInfo)initWithAttachment:(unsigned int)a3 indexOnAttachment:(int64_t)a4 textureName:(unsigned int)a5 textureSize:(CGSize)a6 name:(id)a7 target:(unsigned int)a8 valid:(BOOL)a9
{
  height = a6.height;
  width = a6.width;
  v22.receiver = self;
  v22.super_class = TSDGLFrameBufferTextureLookupInfo;
  v17 = [(TSDGLFrameBufferTextureLookupInfo *)&v22 init];
  v20 = v17;
  if (v17)
  {
    v17->_indexOnAttachment = a4;
    v17->_attachment = a3;
    v17->_textureName = a5;
    v17->_textureSize.width = width;
    v17->_textureSize.height = height;
    v17->_name = objc_msgSend_copy(a7, v18, v19);
    v20->_target = a8;
    v20->_valid = a9;
  }

  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDGLFrameBufferTextureLookupInfo;
  [(TSDGLFrameBufferTextureLookupInfo *)&v3 dealloc];
}

+ (id)textureLookupInfoWithAttachment:(unsigned int)a3 indexOnAttachment:(int64_t)a4 textureName:(unsigned int)a5 textureSize:(CGSize)a6 name:(id)a7 target:(unsigned int)a8
{
  v8 = *&a8;
  height = a6.height;
  width = a6.width;
  v12 = *&a5;
  v14 = *&a3;
  v15 = objc_alloc(objc_opt_class());
  v17 = objc_msgSend_initWithAttachment_indexOnAttachment_textureName_textureSize_name_target_valid_(v15, v16, v14, a4, v12, a7, v8, 1, width, height);

  return v17;
}

+ (id)invalidTextureLookupInfo
{
  v2 = objc_alloc(objc_opt_class());
  v4 = objc_msgSend_initWithAttachment_indexOnAttachment_textureName_textureSize_name_target_valid_(v2, v3, 0, 0, 0, &stru_28857D120, 3553, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));

  return v4;
}

- (unsigned)attachment
{
  if ((objc_msgSend_isValid(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGLFrameBufferTextureLookupInfo attachment]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 366, 0, "Should not try to access attachment for an invalid lookup info.");
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  return self->_attachment;
}

- (int64_t)indexOnAttachment
{
  if ((objc_msgSend_isValid(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGLFrameBufferTextureLookupInfo indexOnAttachment]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 371, 0, "Should not try to access indexOnAttachment for an invalid lookup info.");
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  return self->_indexOnAttachment;
}

- (unsigned)textureName
{
  if ((objc_msgSend_isValid(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGLFrameBufferTextureLookupInfo textureName]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 376, 0, "Should not try to access textureName for an invalid lookup info.");
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  return self->_textureName;
}

- (CGSize)textureSize
{
  if ((objc_msgSend_isValid(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGLFrameBufferTextureLookupInfo textureSize]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 381, 0, "Should not try to access textureSize for an invalid lookup info.");
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  width = self->_textureSize.width;
  height = self->_textureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSString)name
{
  if ((objc_msgSend_isValid(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGLFrameBufferTextureLookupInfo name]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 386, 0, "Should not try to access name for an invalid lookup info.");
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  return self->_name;
}

- (unsigned)target
{
  if ((objc_msgSend_isValid(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGLFrameBufferTextureLookupInfo target]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 391, 0, "Should not try to access target for an invalid lookup info.");
    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  return self->_target;
}

- (id)description
{
  v3 = objc_msgSend_descriptionWithObject_(MEMORY[0x277D811A8], a2, self);
  v6 = objc_msgSend_attachment(self, v4, v5);
  objc_msgSend_addField_format_(v3, v7, @"attachmentIndex", @"%d", (v6 - 36064));
  v10 = objc_msgSend_indexOnAttachment(self, v8, v9);
  objc_msgSend_addField_format_(v3, v11, @"indexOnAttachment", @"%d", v10);
  v14 = objc_msgSend_name(self, v12, v13);
  objc_msgSend_addField_value_(v3, v15, @"name", v14);
  v18 = objc_msgSend_textureName(self, v16, v17);
  objc_msgSend_addField_format_(v3, v19, @"textureName", @"%d", v18);
  objc_msgSend_textureSize(self, v20, v21);
  v22 = NSStringFromCGSize(v36);
  objc_msgSend_addField_format_(v3, v23, @"textureSize", @"%@", v22);
  v26 = objc_msgSend_target(self, v24, v25);
  objc_msgSend_addField_format_(v3, v27, @"target", @"%d", v26);
  isValid = objc_msgSend_isValid(self, v28, v29);
  objc_msgSend_addField_format_(v3, v31, @"valid", @"%d", isValid);

  return objc_msgSend_descriptionString(v3, v32, v33);
}

@end