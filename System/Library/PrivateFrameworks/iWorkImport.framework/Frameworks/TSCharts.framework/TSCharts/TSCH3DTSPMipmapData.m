@interface TSCH3DTSPMipmapData
+ (TSCH3DTSPMipmapData)dataWithTSPData:(id)a3;
- (TSCH3DTSPMipmapData)initWithTSPData:(id)a3;
- (id)databuffer;
@end

@implementation TSCH3DTSPMipmapData

+ (TSCH3DTSPMipmapData)dataWithTSPData:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithTSPData_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DTSPMipmapData)initWithTSPData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DTSPMipmapData;
  v6 = [(TSCH3DTSPMipmapData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (id)databuffer
{
  data = self->_data;
  if (!data)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DTSPMipmapData databuffer]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPMipmapData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 41, 0, "invalid nil value for '%{public}s'", "_data");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    data = self->_data;
  }

  v22 = objc_msgSend_NSData(data, a2, v2, v3, v4);
  v27 = objc_msgSend_mipmapsFromData_(TSCH3DMipmaps, v23, v24, v25, v26, v22);
  v32 = v27;
  if (v27)
  {
    v67[0] = objc_msgSend_width(v27, v28, v29, v30, v31);
    v67[1] = objc_msgSend_height(v32, v33, v34, v35, v36);
    v68 = objc_msgSend_components(v32, v37, v38, v39, v40);
    v69 = 1;
    v45 = objc_msgSend_data(v32, v41, v42, v43, v44);
    v50 = objc_msgSend_bufferWithCapacityDimension_data_(TSCH3DNSData2DDataBuffer, v46, v47, v48, v49, v67, v45);
  }

  else
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCH3DTSPMipmapData databuffer]");
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPMipmapData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v58, v59, v60, v61, v52, v57, 44, 0, "invalid nil value for '%{public}s'", "mipmaps");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
    v50 = 0;
  }

  return v50;
}

@end