@interface TSCH3DMipmaps
+ (CGSize)mipmapSizeForTexturableSize:(CGSize)a3;
+ (CGSize)optimizedMipmapLevel0Size;
+ (id)mipmapNameFromImageName:(id)a3;
+ (id)mipmapsFromData:(id)a3;
+ (id)mipmapsWithWidth:(int)a3 height:(int)a4 components:(unint64_t)a5 mipmapData:(id)a6;
- (BOOL)valid;
- (BOOL)writeToFile:(id)a3;
- (TSCH3DMipmaps)initWithWidth:(int)a3 height:(int)a4 components:(unint64_t)a5 mipmapData:(id)a6;
- (id)description;
- (id)initFromData:(id)a3;
@end

@implementation TSCH3DMipmaps

+ (id)mipmapNameFromImageName:(id)a3
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_stringByDeletingPathExtension(a3, a2, v3, v4, v5);
  v12 = objc_msgSend_stringWithFormat_(v6, v8, v9, v10, v11, @"%@_mipmaps.plist", v7);

  return v12;
}

+ (CGSize)optimizedMipmapLevel0Size
{
  v2 = 128.0;
  v3 = 128.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)mipmapSizeForTexturableSize:(CGSize)a3
{
  v3 = a3.width / 1.64999998;
  v4 = a3.height / 1.64999998;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)mipmapsWithWidth:(int)a3 height:(int)a4 components:(unint64_t)a5 mipmapData:(id)a6
{
  v7 = *&a4;
  v8 = *&a3;
  v10 = a6;
  v11 = [a1 alloc];
  v16 = objc_msgSend_initWithWidth_height_components_mipmapData_(v11, v12, v13, v14, v15, v8, v7, a5, v10);

  return v16;
}

+ (id)mipmapsFromData:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initFromData_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DMipmaps)initWithWidth:(int)a3 height:(int)a4 components:(unint64_t)a5 mipmapData:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = TSCH3DMipmaps;
  v12 = [(TSCH3DMipmaps *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_width = a3;
    v12->_height = a4;
    v12->_components = a5;
    objc_storeStrong(&v12->_data, a6);
  }

  return v13;
}

- (id)initFromData:(id)a3
{
  v4 = a3;
  v95.receiver = self;
  v95.super_class = TSCH3DMipmaps;
  v6 = [(TSCH3DMipmaps *)&v95 init];
  if (!v6)
  {
    goto LABEL_8;
  }

  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v94 = 0;
  v10 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v5, v7, v8, v9, v4, 0, 0, &v94);
  v11 = v94;
  if (v11)
  {
    v16 = v11;
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DMipmaps initFromData:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMipmaps.m");
    v28 = objc_msgSend_localizedFailureReason(v16, v24, v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v29, v30, v31, v32, v18, v23, 96, 0, "failed to load plist %@ error %@", v4, v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
LABEL_10:
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DMipmaps initFromData:]");
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMipmaps.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v85, v86, v87, v88, v79, v84, 109, 0, "failed to load plist %@, %@", v4, v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
    v77 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  v41 = objc_msgSend_objectForKey_(v10, v37, v38, v39, v40, @"kTSCH3DMipmapsWidthKey");
  v42 = TSUCheckedDynamicCast();
  v6->_width = objc_msgSend_unsignedIntValue(v42, v43, v44, v45, v46);

  objc_opt_class();
  v51 = objc_msgSend_objectForKey_(v10, v47, v48, v49, v50, @"kTSCH3DMipmapsHeightKey");
  v52 = TSUCheckedDynamicCast();
  v6->_height = objc_msgSend_unsignedIntValue(v52, v53, v54, v55, v56);

  objc_opt_class();
  v61 = objc_msgSend_objectForKey_(v10, v57, v58, v59, v60, @"kTSCH3DMipmapsComponentsKey");
  v62 = TSUCheckedDynamicCast();
  v6->_components = objc_msgSend_unsignedIntValue(v62, v63, v64, v65, v66);

  v71 = objc_msgSend_objectForKey_(v10, v67, v68, v69, v70, @"kTSCH3DMipmapsDataKey");
  data = v6->_data;
  v6->_data = v71;

  if ((objc_msgSend_valid(v6, v73, v74, v75, v76) & 1) == 0)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v77 = v6;
LABEL_11:

  return v77;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DMipmaps;
  v4 = [(TSCH3DMipmaps *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(width %ld height %ld components %lu data %@)", v4, self->_width, self->_height, self->_components, self->_data);

  return v9;
}

- (BOOL)valid
{
  if (self->_width && self->_height && self->_components)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)writeToFile:(id)a3
{
  v94[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((objc_msgSend_valid(self, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DMipmaps writeToFile:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMipmaps.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 126, 0, "invalid mipmaps %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (!self->_data)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DMipmaps writeToFile:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMipmaps.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 129, 0, "invalid nil value for '%{public}s'", "_data");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  v93[0] = @"kTSCH3DMipmapsWidthKey";
  v43 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v9, v10, v11, v12, self->_width);
  v94[0] = v43;
  v93[1] = @"kTSCH3DMipmapsHeightKey";
  v48 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v44, v45, v46, v47, self->_height);
  v94[1] = v48;
  v93[2] = @"kTSCH3DMipmapsComponentsKey";
  v53 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v49, v50, v51, v52, self->_components);
  v93[3] = @"kTSCH3DMipmapsDataKey";
  data = self->_data;
  v94[2] = v53;
  v94[3] = data;
  v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, v56, v57, v58, v94, v93, 4);

  v92 = 0;
  v64 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v60, v61, v62, v63, v59, 200, 0, &v92);
  v66 = v92;
  if (v64)
  {
    v70 = objc_msgSend_writeToFile_atomically_(v64, v65, v67, v68, v69, v4, 1);
  }

  else
  {
    v71 = MEMORY[0x277D81150];
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v67, v68, v69, "[TSCH3DMipmaps writeToFile:]");
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMipmaps.m");
    v82 = objc_msgSend_localizedFailureReason(v66, v78, v79, v80, v81);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v83, v84, v85, v86, v72, v77, 146, 0, "%@", v82);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
    v70 = 0;
  }

  return v70;
}

@end