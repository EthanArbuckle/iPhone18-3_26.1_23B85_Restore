@interface VFXTextureAttachmentDescriptor
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation VFXTextureAttachmentDescriptor

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = objc_msgSend_width(self, v5, v6, v7);
  if (v8 != objc_msgSend_width(equal, v9, v10, v11))
  {
    return 0;
  }

  v15 = objc_msgSend_height(self, v12, v13, v14);
  if (v15 != objc_msgSend_height(equal, v16, v17, v18))
  {
    return 0;
  }

  v22 = objc_msgSend_pixelFormat(self, v19, v20, v21);
  if (v22 != objc_msgSend_pixelFormat(equal, v23, v24, v25))
  {
    return 0;
  }

  v29 = objc_msgSend_arrayLength(self, v26, v27, v28);
  return v29 == objc_msgSend_arrayLength(equal, v30, v31, v32);
}

- (unint64_t)hash
{
  v5 = MEMORY[0x1E696AD98];
  v6 = objc_msgSend_width(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithInteger_(v5, v7, v6, v8);
  v13 = objc_msgSend_hash(v9, v10, v11, v12);
  v14 = MEMORY[0x1E696AD98];
  v18 = objc_msgSend_height(self, v15, v16, v17);
  v21 = objc_msgSend_numberWithInteger_(v14, v19, v18, v20);
  v25 = objc_msgSend_hash(v21, v22, v23, v24) ^ v13;
  v26 = MEMORY[0x1E696AD98];
  v30 = objc_msgSend_pixelFormat(self, v27, v28, v29);
  v33 = objc_msgSend_numberWithUnsignedInteger_(v26, v31, v30, v32);
  v37 = objc_msgSend_hash(v33, v34, v35, v36);
  v38 = MEMORY[0x1E696AD98];
  v42 = objc_msgSend_arrayLength(self, v39, v40, v41);
  v45 = objc_msgSend_numberWithInteger_(v38, v43, v42, v44);
  return v25 ^ v37 ^ objc_msgSend_hash(v45, v46, v47, v48);
}

@end