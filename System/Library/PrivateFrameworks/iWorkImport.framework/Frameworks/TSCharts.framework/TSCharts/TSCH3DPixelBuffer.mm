@interface TSCH3DPixelBuffer
+ (id)pixelBufferFromFramebuffer:(id)a3 processor:(id)a4 session:(id)a5 sourceRegion:(void *)a6 components:(unint64_t)a7 flipped:(BOOL)a8;
+ (id)pixelBufferWithSize:(void *)a3 components:(unint64_t)a4;
- (BOOL)copyPixelsFromFramebuffer:(id)a3 processor:(id)a4 session:(id)a5 sourceRegion:(void *)a6 targetRegion:(void *)a7 flipped:(BOOL)a8;
- (TSCH3DPixelBuffer)initWithSize:(void *)a3 components:(unint64_t)a4;
- (box<glm::detail::tvec2<int>>)bounds;
- (char)buffer;
- (id)TSUImage;
- (void)copyPixelsFromData:(const void *)a3;
- (void)copyPixelsFromSourceBuffer:(id)a3 sourceRegion:(void *)a4 targetRegion:(void *)a5 flipped:(BOOL)a6;
- (void)data;
- (void)dealloc;
- (void)flip;
@end

@implementation TSCH3DPixelBuffer

+ (id)pixelBufferWithSize:(void *)a3 components:(unint64_t)a4
{
  v6 = [a1 alloc];
  v11 = objc_msgSend_initWithSize_components_(v6, v7, v8, v9, v10, a3, a4);

  return v11;
}

- (TSCH3DPixelBuffer)initWithSize:(void *)a3 components:(unint64_t)a4
{
  v32.receiver = self;
  v32.super_class = TSCH3DPixelBuffer;
  v6 = [(TSCH3DPixelBuffer *)&v32 init];
  v10 = v6;
  if (v6)
  {
    v6->_size.var0.var0 = *a3;
    v6->_size.var1.var0 = *(a3 + 1);
    v6->_components = a4;
    v11 = sub_2761D7D78(a3, a4, 0, 0, v7, v8, v9);
    v10->_bitmapContext = v11;
    if (!v11)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DPixelBuffer initWithSize:components:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 46, 0, "Out of memory/resources when creating pixel buffer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CGContextRelease(bitmapContext);
  }

  v4.receiver = self;
  v4.super_class = TSCH3DPixelBuffer;
  [(TSCH3DPixelBuffer *)&v4 dealloc];
}

- (box<glm::detail::tvec2<int>>)bounds
{
  v6 = v2;
  v7 = objc_msgSend_size(self, a2, v3, v4, v5);
  *v6 = 0;
  v6[1] = v9;
  result._max = v8;
  result._min = v7;
  return result;
}

- (id)TSUImage
{
  bitmapContext = self->_bitmapContext;
  if (!bitmapContext)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DPixelBuffer TSUImage]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 65, 0, "invalid nil value for '%{public}s'", "_bitmapContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    bitmapContext = self->_bitmapContext;
  }

  Image = CGBitmapContextCreateImage(bitmapContext);
  if (Image)
  {
    v27 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v22, v24, v25, v26, Image);
    CGImageRelease(Image);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)data
{
  bitmapContext = self->_bitmapContext;
  if (!bitmapContext)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DPixelBuffer data]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 75, 0, "invalid nil value for '%{public}s'", "_bitmapContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    bitmapContext = self->_bitmapContext;
  }

  return CGBitmapContextGetData(bitmapContext);
}

- (char)buffer
{
  if (!self->_bitmapContext)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DPixelBuffer buffer]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 80, 0, "invalid nil value for '%{public}s'", "_bitmapContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  return objc_msgSend_data(self, a2, v2, v3, v4);
}

- (void)copyPixelsFromData:(const void *)a3
{
  v8 = objc_msgSend_data(self, a2, v3, v4, v5);
  if (v8)
  {
    v9 = self->_components * self->_size.var1.var0 * self->_size.var0.var0;

    memcpy(v8, a3, v9);
  }
}

- (void)copyPixelsFromSourceBuffer:(id)a3 sourceRegion:(void *)a4 targetRegion:(void *)a5 flipped:(BOOL)a6
{
  v124 = a6;
  v9 = a3;
  v120 = v9;
  v127 = objc_msgSend_buffer(v9, v10, v11, v12, v13);
  if (v9)
  {
    objc_msgSend_size(v9, v14, v15, v16, v17);
  }

  else
  {
    v131 = 0;
  }

  v18 = *(a4 + 3);
  v19 = *(a4 + 2);
  v20 = *(a4 + 1);
  v125 = *a4;
  objc_msgSend_size(self, v14, v15, v16, v17);
  v21 = v129;
  v22 = *a5;
  if (v129 < *a5 || (v23 = v130, v130 < v22.i32[1]) || (v24 = *(a5 + 2), v24 < 0) || (v25 = *(a5 + 3), v25 < 0))
  {
    v128 = xmmword_2764D6090;
    v27 = 2;
  }

  else
  {
    v26 = vmax_s32(v22, 0);
    if (v129 >= v24)
    {
      v21 = *(a5 + 2);
    }

    if (v130 >= v25)
    {
      v23 = *(a5 + 3);
    }

    *&v128 = v26;
    *(&v128 + 1) = __PAIR64__(v23, v21);
    v27 = v23 - v26.i32[1];
  }

  if ((sub_276171128(&v128, a5, 0) & 1) == 0)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 100, 0, "Target region not inside pixel buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  v126 = objc_msgSend_buffer(self, v28, v29, v30, v31);
  if (!v127)
  {
    v90 = MEMORY[0x277D81150];
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v97, v98, v99, v100, v91, v96, 104, 0, "invalid nil value for '%{public}s'", "sourceBuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104);
    if (v126)
    {
      goto LABEL_35;
    }

LABEL_34:
    v105 = MEMORY[0x277D81150];
    v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
    v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v108, v109, v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v112, v113, v114, v115, v106, v111, 105, 0, "invalid nil value for '%{public}s'", "targetBuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117, v118, v119);
    goto LABEL_35;
  }

  if (!v126)
  {
    goto LABEL_34;
  }

  if (v18 - v20 >= v27)
  {
    v51 = v27;
  }

  else
  {
    v51 = v18 - v20;
  }

  if (v51 >= 1)
  {
    v52 = v51;
    v121 = (v18 - v20) * (v19 - v125);
    v122 = v19 - v125;
    v53 = *(a5 + 1);
    v123 = *a5;
    v54 = -v53;
    v55 = 0x277CCA000uLL;
    do
    {
      components = self->_components;
      v57 = (v125 + v20 * v131) * components;
      if (v57 < 0 || v57 >= (components * v121))
      {
        v58 = MEMORY[0x277D81150];
        v59 = objc_msgSend_stringWithUTF8String_(*(v55 + 3240), v47, v48, v49, v50, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
        v64 = objc_msgSend_stringWithUTF8String_(*(v55 + 3240), v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 113, 0, "source index out of range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
        v55 = 0x277CCA000uLL;
        components = self->_components;
      }

      v73 = v54 + v130 - 1;
      if (!v124)
      {
        v73 = v53;
      }

      v74 = (v123 + v73 * v129) * components;
      if (v74 < 0 || v74 >= (components * v130 * v129))
      {
        v75 = MEMORY[0x277D81150];
        v76 = objc_msgSend_stringWithUTF8String_(*(v55 + 3240), v47, v48, v49, v50, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
        v81 = objc_msgSend_stringWithUTF8String_(*(v55 + 3240), v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v82, v83, v84, v85, v76, v81, 118, 0, "target index out of range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89);
        v55 = 0x277CCA000;
        components = self->_components;
      }

      memcpy((v126 + v74), (v127 + v57), components * v122);
      ++v53;
      --v54;
      ++v20;
      --v52;
    }

    while (v52);
  }

LABEL_35:
}

- (void)flip
{
  v6 = objc_msgSend_buffer(self, a2, v2, v3, v4);
  if (v6)
  {
    v7 = v6;
    v8 = self->_components * self->_size.var0.var0;
    sub_276171178(__dst, v8);
    var0 = self->_size.var1.var0;
    v10 = __dst[0];
    if ((var0 + 1) >= 3)
    {
      v11 = 0;
      v12 = var0 / 2;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = -v12;
      v14 = v7;
      do
      {
        v15 = &v7[(v11 + self->_size.var1.var0 - 1) * v8];
        memcpy(v10, v15, v8);
        memcpy(v15, v14, v8);
        v10 = __dst[0];
        memcpy(v14, __dst[0], v8);
        --v11;
        v14 += v8;
      }

      while (v13 != v11);
    }

    if (v10)
    {
      __dst[1] = v10;
      operator delete(v10);
    }
  }
}

+ (id)pixelBufferFromFramebuffer:(id)a3 processor:(id)a4 session:(id)a5 sourceRegion:(void *)a6 components:(unint64_t)a7 flipped:(BOOL)a8
{
  v11 = objc_msgSend_pixelBufferFromViewport_components_flipped_forProcessor_session_(a3, a2, v8, v9, v10, a6, a7, a8, a4, a5);

  return v11;
}

- (BOOL)copyPixelsFromFramebuffer:(id)a3 processor:(id)a4 session:(id)a5 sourceRegion:(void *)a6 targetRegion:(void *)a7 flipped:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = objc_opt_class();
  v22 = objc_msgSend_pixelBufferFromFramebuffer_processor_session_sourceRegion_components_flipped_(v17, v18, v19, v20, v21, v14, v15, v16, a6, self->_components, 0);
  v27 = v22;
  if (v22)
  {
    objc_msgSend_bounds(v22, v23, v24, v25, v26);
    objc_msgSend_copyPixelsFromSourceBuffer_sourceRegion_targetRegion_flipped_(self, v28, v29, v30, v31, v27, v48, a7, v8);
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCH3DPixelBuffer(TSCH3DFramebufferSupport) copyPixelsFromFramebuffer:processor:session:sourceRegion:targetRegion:flipped:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 161, 0, "invalid nil value for '%{public}s'", "source");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  return v27 != 0;
}

@end