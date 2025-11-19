@interface TSDPDFImageProvider
- (BOOL)i_hasFlushableContent;
- (BOOL)isValid;
- (CGPDFDocument)CGPDFDocument;
- (CGPDFDocument)p_load;
- (CGSize)naturalSize;
- (int64_t)pageAngle;
- (unint64_t)i_flushableMemoryEstimate;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4;
- (void)flush;
- (void)i_commonInit;
- (void)p_loadIfNecessary;
@end

@implementation TSDPDFImageProvider

- (void)i_commonInit
{
  v15.receiver = self;
  v15.super_class = TSDPDFImageProvider;
  [(TSDImageProvider *)&v15 i_commonInit];
  if (self->_accessQueue)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDPDFImageProvider i_commonInit]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPDFImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 47, 0, "called i_common init twice on same object!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = dispatch_queue_create("com.apple.iWork.TSDPDFImageProvider", 0);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v11;

  v13 = dispatch_semaphore_create(1);
  flushableContentLock = self->_flushableContentLock;
  self->_flushableContentLock = v13;
}

- (void)dealloc
{
  CGPDFDocumentRelease(self->_PDFDocument);
  v3.receiver = self;
  v3.super_class = TSDPDFImageProvider;
  [(TSDImageProvider *)&v3 dealloc];
}

- (CGPDFDocument)CGPDFDocument
{
  objc_msgSend_p_loadIfNecessary(self, a2, v2);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2766A2FE8;
  v8[3] = &unk_27A6CCAC0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(accessQueue, v8);
  v5 = v10[3];
  if (v5)
  {
    CFAutorelease(v5);
    v6 = v10[3];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (int64_t)pageAngle
{
  result = objc_msgSend_CGPDFDocument(self, a2, v2);
  if (result)
  {
    result = CGPDFDocumentGetPage(result, 1uLL);
    if (result)
    {
      return CGPDFPageGetRotationAngle(result);
    }
  }

  return result;
}

- (CGSize)naturalSize
{
  objc_msgSend_p_loadIfNecessary(self, a2, v2);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = "";
  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2766A3110;
  v9[3] = &unk_27A6CCAC0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(accessQueue, v9);
  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)i_hasFlushableContent
{
  dispatch_semaphore_wait(self->_flushableContentLock, 0xFFFFFFFFFFFFFFFFLL);
  hasFlushableContent = self->_hasFlushableContent;
  dispatch_semaphore_signal(self->_flushableContentLock);
  return hasFlushableContent;
}

- (unint64_t)i_flushableMemoryEstimate
{
  if (!objc_msgSend_i_hasFlushableContent(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_imageData(self, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8);

  return v9;
}

- (BOOL)isValid
{
  v3 = objc_msgSend_CGPDFDocument(self, a2, v2);
  if (v3)
  {
    LOBYTE(v3) = CGPDFDocumentGetPage(v3, 1uLL) != 0;
  }

  return v3;
}

- (void)drawImageInContext:(CGContext *)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ((objc_msgSend_isValid(self, a2, a3) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDPDFImageProvider drawImageInContext:rect:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPDFImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 110, 0, "shouldn't be drawing an invalid image provider");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_CGPDFDocument(self, v10, v11);
  if (v19)
  {
    Page = CGPDFDocumentGetPage(v19, 1uLL);
    if (Page)
    {
      v21 = Page;
      CGContextSaveGState(a3);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      MinY = CGRectGetMinY(v31);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      MaxY = CGRectGetMaxY(v32);
      CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
      CGContextScaleCTM(a3, 1.0, -1.0);
      memset(&v30, 0, sizeof(v30));
      v28 = 0.0;
      v29 = 0.0;
      TSDComputeBoxTransformAndSizeForPDFPage(v21, &v30, &v28);
      if ((TSUSizeIsEmpty() & 1) == 0 && (TSUSizeHasNaNComponents() & 1) == 0)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = v30;
        v25 = 0u;
        TSDComputeDrawTransformForPDFPage(&v24, &v25, v28, v29, x, y, width, height);
        *&v24.a = v25;
        *&v24.c = v26;
        *&v24.tx = v27;
        CGContextConcatCTM(a3, &v24);
        CGContextClipToRectSafe();
        CGContextDrawPDFPage(a3, v21);
      }

      CGContextRestoreGState(a3);
    }
  }
}

- (void)flush
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766A34A0;
  block[3] = &unk_27A6CC658;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)p_loadIfNecessary
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2766A35B4;
  block[3] = &unk_27A6CC658;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (CGPDFDocument)p_load
{
  v4 = objc_msgSend_imageData(self, a2, v2);
  v7 = objc_msgSend_newCGDataProvider(v4, v5, v6);

  if (!v7)
  {
    return 0;
  }

  v8 = CGPDFDocumentCreateWithProvider(v7);
  v9 = v8;
  if (v8)
  {
    Page = CGPDFDocumentGetPage(v8, 1uLL);
    if (Page)
    {
      v11 = Page;
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      v41 = CGPDFPageGetBoxRect(v11, kCGPDFCropBox);
      v16 = v41.origin.x;
      v17 = v41.origin.y;
      v18 = v41.size.width;
      v19 = v41.size.height;
      v45 = CGPDFPageGetBoxRect(v11, kCGPDFArtBox);
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v46 = CGRectIntersection(v42, v45);
      v43.origin.x = v16;
      v43.origin.y = v17;
      v43.size.width = v18;
      v43.size.height = v19;
      v44 = CGRectIntersection(v43, v46);
      v20 = v44.size.width;
      v21 = v44.size.height;
      RotationAngle = CGPDFPageGetRotationAngle(v11);
      if (RotationAngle == 270 || RotationAngle == 90)
      {
        v24 = v21;
      }

      else
      {
        v24 = v20;
        v20 = v21;
      }

      v25 = fmax(v24, 0.01);
      v26 = fmax(v20, 0.01);
      if (v25 != v24 || v26 != v20)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSDPDFImageProvider p_load]");
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPDFImageProvider.m");
        v38.width = v24;
        v38.height = v20;
        v32 = NSStringFromCGSize(v38);
        v39.width = v25;
        v39.height = v26;
        v33 = NSStringFromCGSize(v39);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v31, 218, 0, "PDF image had zero-width or height size; was %@, capped to %@", v32, v33);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
      }

      self->_naturalSize.width = v25;
      self->_naturalSize.height = v26;
    }

    else
    {
      CGPDFDocumentRelease(v9);
      v9 = 0;
    }
  }

  CGDataProviderRelease(v7);
  return v9;
}

@end