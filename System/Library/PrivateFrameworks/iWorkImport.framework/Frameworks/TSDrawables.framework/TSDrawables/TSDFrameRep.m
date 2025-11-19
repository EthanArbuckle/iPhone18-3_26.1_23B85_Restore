@interface TSDFrameRep
- (BOOL)p_shouldRenderForRectWithCoverage:(CGRect)a3;
- (BOOL)p_shouldRenderForRectWithoutCoverage:(CGRect)a3;
- (BOOL)p_willRenderForRect:(CGRect)a3;
- (CGImage)newFrameForMask:(BOOL)a3 size:(CGSize)a4 forCALayer:(BOOL)a5 viewScale:(double)a6;
- (CGImage)p_newRenderedFrameForMask:(BOOL)a3 size:(CGSize)a4 forCALayer:(BOOL)a5 viewScale:(double)a6;
- (TSDFrameRep)init;
- (TSDFrameRep)initWithTSDFrame:(id)a3;
- (void)applyMaskForRectWithCoverage:(CGRect)a3 toContext:(CGContext *)a4;
- (void)blendMaskBeforeRenderingImageInContext:(CGContext *)a3;
- (void)dealloc;
- (void)frameRect:(CGRect)a3 inContext:(CGContext *)a4 withTotalScale:(double)a5;
- (void)p_drawFrameIntoRect:(CGRect)a3 inContext:(CGContext *)a4 withImages:(id)a5 atViewScale:(double)a6 isMask:(BOOL)a7;
- (void)p_drawTiles:(id)a3 inContext:(CGContext *)a4 rect:(CGRect)a5 start:(double)a6 end:(double)a7 vertical:(BOOL)a8;
@end

@implementation TSDFrameRep

- (TSDFrameRep)initWithTSDFrame:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDFrameRep initWithTSDFrame:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 59, 0, "invalid nil value for '%{public}s'", "frame");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v82.receiver = self;
  v82.super_class = TSDFrameRep;
  v14 = [(TSDFrameRep *)&v82 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_frame, a3);
    v20 = objc_msgSend_frameSpec(v15->_frame, v16, v17);
    if (!v20)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSDFrameRep initWithTSDFrame:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 65, 0, "invalid nil value for '%{public}s'", "frameSpec");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    objc_msgSend_i_addInterestInProviders(v20, v18, v19);
    if (objc_msgSend_i_hasImages(v20, v28, v29))
    {
      v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v30, v31);
      v34 = 0;
      while (1)
      {
        v35 = objc_msgSend_i_providerForIndex_mask_(v20, v32, v34, 0);
        if (!v35)
        {
          break;
        }

        v37 = v35;
        objc_msgSend_addObject_(v33, v36, v35);
        objc_msgSend_addInterest(v37, v38, v39);

        v34 = (v34 + 1);
        if (v34 == 8)
        {
          goto LABEL_12;
        }
      }

      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSDFrameRep initWithTSDFrame:]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameRep.m");
      v47 = objc_msgSend_frameName(v20, v45, v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v42, v44, 72, 0, "Missing image provider for index %i of frame %{public}@", v34, v47);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
      v15->_missingImageProviders = 1;
LABEL_12:
      v51 = objc_msgSend_copy(v33, v32, v40);
      images = v15->_images;
      v15->_images = v51;
    }

    if (objc_msgSend_i_hasMask(v20, v30, v31))
    {
      if (v15->_missingImageProviders)
      {
        masks = v15->_masks;
        v15->_masks = MEMORY[0x277CBEBF8];
      }

      else
      {
        masks = objc_msgSend_array(MEMORY[0x277CBEB18], v53, v54);
        v57 = 0;
        while (1)
        {
          v58 = objc_msgSend_i_providerForIndex_mask_(v20, v56, v57, 1);
          if (!v58)
          {
            break;
          }

          v60 = v58;
          objc_msgSend_addObject_(masks, v59, v58);
          objc_msgSend_addInterest(v60, v61, v62);

          v57 = (v57 + 1);
          if (v57 == 8)
          {
            goto LABEL_21;
          }
        }

        v64 = MEMORY[0x277D81150];
        v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[TSDFrameRep initWithTSDFrame:]");
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameRep.m");
        v70 = objc_msgSend_frameName(v20, v68, v69);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v71, v65, v67, 92, 0, "Missing mask provider for index %i of frame %{public}@", v57, v70);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
        v15->_missingImageProviders = 1;
LABEL_21:
        v74 = objc_msgSend_copy(masks, v56, v63);
        v75 = v15->_masks;
        v15->_masks = v74;
      }
    }

    if (objc_msgSend_i_hasAdornment(v20, v53, v54))
    {
      v77 = objc_msgSend_i_providerForIndex_mask_(v20, v76, 8, 0);
      adornment = v15->_adornment;
      v15->_adornment = v77;

      objc_msgSend_addInterest(v15->_adornment, v79, v80);
    }
  }

  return v15;
}

- (TSDFrameRep)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFrameRep init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameRep.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 121, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDFrameRep init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)dealloc
{
  objc_msgSend_makeObjectsPerformSelector_(self->_images, a2, sel_removeInterest);
  objc_msgSend_makeObjectsPerformSelector_(self->_masks, v3, sel_removeInterest);
  objc_msgSend_removeInterest(self->_adornment, v4, v5);
  v8 = objc_msgSend_frameSpec(self->_frame, v6, v7);
  objc_msgSend_i_removeInterestInProviders(v8, v9, v10);

  v11.receiver = self;
  v11.super_class = TSDFrameRep;
  [(TSDFrameRep *)&v11 dealloc];
}

- (void)frameRect:(CGRect)a3 inContext:(CGContext *)a4 withTotalScale:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_msgSend_p_willRenderForRect_(self, a2, a4))
  {
    objc_msgSend_coverageRectWithoutAdornment_(self->_frame, v12, v13, x, y, width, height);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    CGContextSaveGState(a4);
    if ((TSDCGContextIsPDFContext(a4) & 1) != 0 || TSDCGContextIsPrintContext(a4))
    {
      a5 = 1.0 * a5;
    }

    if (self->_images)
    {
      if (a5 >= 1.0)
      {
        v24 = objc_msgSend_newFrameForMask_size_forCALayer_viewScale_(self, v22, 0, 0, v19, v21, a5);
      }

      else
      {
        v24 = objc_msgSend_newFrameForMask_size_forCALayer_viewScale_(self, v22, 0, 0, v19, v21, 1.0);
      }

      if (v24)
      {
        v26 = v24;
        v39.origin.x = v15;
        v39.origin.y = v17;
        v39.size.width = v19;
        v39.size.height = v21;
        CGContextDrawImage(a4, v39, v24);
        CGImageRelease(v26);
      }

      else
      {
        objc_msgSend_p_drawFrameIntoRect_inContext_withImages_atViewScale_isMask_(self, v25, a4, self->_images, 0, v15, v17, v19, v21, 1.0);
      }
    }

    if (self->_adornment)
    {
      objc_msgSend_i_adornmentRectForRect_(self->_frame, v22, v23, v15, v17, v19, v21);
      v27 = v40.origin.x;
      v28 = v40.origin.y;
      v29 = v40.size.width;
      v30 = v40.size.height;
      MaxY = CGRectGetMaxY(v40);
      CGContextTranslateCTM(a4, 0.0, MaxY);
      CGContextScaleCTM(a4, 1.0, -1.0);
      v41.origin.x = v27;
      v41.origin.y = v28;
      v41.size.width = v29;
      v41.size.height = v30;
      MinY = CGRectGetMinY(v41);
      CGContextTranslateCTM(a4, 0.0, -MinY);
      v33 = [TSDImageRenderingConfiguration alloc];
      v35 = objc_msgSend_initWithCGContext_(v33, v34, a4);
      v37 = objc_msgSend_CGImageForSize_withRenderingConfiguration_(self->_adornment, v36, v35, v29, v30);
      v42.origin.x = v27;
      v42.origin.y = v28;
      v42.size.width = v29;
      v42.size.height = v30;
      CGContextDrawImage(a4, v42, v37);
    }

    CGContextRestoreGState(a4);
  }
}

- (void)applyMaskForRectWithCoverage:(CGRect)a3 toContext:(CGContext *)a4
{
  if (self->_masks)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    if (objc_msgSend_p_shouldRenderForRectWithCoverage_(self, a2, a4))
    {
      v10 = TSDCGContextAssociatedScreenScale(a4);
      v12 = objc_msgSend_newFrameForMask_size_forCALayer_viewScale_(self, v11, 1, 0, width, height, v10);
      if (v12)
      {
        v14 = v12;
        v16.origin.x = x;
        v16.origin.y = y;
        v16.size.width = width;
        v16.size.height = height;
        CGContextClipToMask(a4, v16, v12);

        CGImageRelease(v14);
      }

      else
      {
        objc_msgSend_p_drawFrameIntoRect_inContext_withImages_atViewScale_isMask_(self, v13, a4, self->_masks, 1, x, y, width, height, 1.0);
        self->_shouldEnableBlendMode = 1;
      }
    }
  }
}

- (void)blendMaskBeforeRenderingImageInContext:(CGContext *)a3
{
  if (self->_shouldEnableBlendMode)
  {
    self->_shouldEnableBlendMode = 0;
    CGContextSetBlendMode(a3, kCGBlendModeSourceIn);
  }
}

- (BOOL)p_willRenderForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  shouldRender = objc_msgSend_p_shouldRender(self, a2, v3);
  if (shouldRender)
  {
    frame = self->_frame;

    LOBYTE(shouldRender) = objc_msgSend_i_willRenderForRect_(frame, v10, v11, x, y, width, height);
  }

  return shouldRender;
}

- (BOOL)p_shouldRenderForRectWithoutCoverage:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  result = 0;
  if (objc_msgSend_p_shouldRender(self, a2, v3))
  {
    frame = self->_frame;
    objc_msgSend_coverageRectWithoutAdornment_(frame, v9, v10, x, y, width, height);
    if (objc_msgSend_shouldRenderForSizeIncludingCoverage_(frame, v12, v13, v14, v15))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)p_shouldRenderForRectWithCoverage:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  return objc_msgSend_p_shouldRender(self, a2, v3, a3.origin.x, a3.origin.y) && (objc_msgSend_shouldRenderForSizeIncludingCoverage_(self->_frame, v7, v8, width, height) & 1) != 0;
}

- (CGImage)newFrameForMask:(BOOL)a3 size:(CGSize)a4 forCALayer:(BOOL)a5 viewScale:(double)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v12 = objc_msgSend_sharedFrameImageCache(TSDFrameImageCache, a2, a3);
  v15 = objc_msgSend_newCachedImageForFrame_size_viewScale_forCALayer_mask_(v12, v13, self->_frame, v7, v10, width, height, a6);
  if (!v15)
  {
    v16 = objc_msgSend_p_newRenderedFrameForMask_size_forCALayer_viewScale_(self, v14, v10, v7, width, height, a6);
    if (v16)
    {
      v18 = v16;
      v15 = objc_msgSend_setCachedImage_forFrame_size_viewScale_forCALayer_mask_(v12, v17, v16, self->_frame, v7, v10, width, height, a6);
      CGImageRelease(v18);
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (CGImage)p_newRenderedFrameForMask:(BOOL)a3 size:(CGSize)a4 forCALayer:(BOOL)a5 viewScale:(double)a6
{
  v7 = a5;
  v8 = a3;
  TSUMultiplySizeScalar();
  v12 = v11 < 4096.0 && v10 < 4096.0;
  if (!v12 || self->_missingImageProviders)
  {
    return 0;
  }

  TSURound();
  v15 = v14;
  TSURound();
  v17 = v16;
  v18 = 16;
  if (v8)
  {
    v18 = 24;
  }

  v19 = *(&self->super.isa + v18);
  AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow();
  if (v8)
  {
    v21 = TSUDeviceGrayColorSpace();
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], AlignedBytesPerRow * v17);
    CFDataSetLength(Mutable, AlignedBytesPerRow * v17);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v24 = 0;
  }

  else
  {
    v24 = 8194;
    v21 = TSUDeviceRGBColorSpace();
    Mutable = 0;
    MutableBytePtr = 0;
  }

  v25 = CGBitmapContextCreate(MutableBytePtr, v15, v17, 8uLL, AlignedBytesPerRow, v21, v24);
  TSDSetCGContextInfo(v25, 0, 0, 0, 0, 1.0);
  if (v25)
  {
    if (v7)
    {
      CGContextTranslateCTM(v25, 0.0, v17);
      CGContextScaleCTM(v25, 1.0, -1.0);
    }

    if (v8)
    {
      CGContextSetGrayFillColor(v25, 1.0, 1.0);
      v27 = v15;
      v28 = v17;
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.width = v15;
      v35.size.height = v17;
      CGContextFillRect(v25, v35);
    }

    else
    {
      v28 = v17;
      v27 = v15;
    }

    objc_msgSend_p_drawFrameIntoRect_inContext_withImages_atViewScale_isMask_(self, v26, v25, v19, v8, 0.0, 0.0, v27 / a6, v28 / a6, a6);
    if (v8)
    {
      CGContextRelease(v25);
      v29 = CGDataProviderCreateWithCFData(Mutable);
      v13 = CGImageMaskCreate(v15, v17, 8uLL, 8uLL, AlignedBytesPerRow, v29, 0, 1);
      CGDataProviderRelease(v29);
      if (v7)
      {
        v30 = TSDBitmapContextCreate(3, v27, v28);
        v31 = *MEMORY[0x277CBF348];
        v32 = *(MEMORY[0x277CBF348] + 8);
        v36.origin.x = *MEMORY[0x277CBF348];
        v36.origin.y = v32;
        v36.size.width = v27;
        v36.size.height = v28;
        CGContextClipToMask(v30, v36, v13);
        CGContextSetRGBFillColor(v30, 1.0, 1.0, 1.0, 1.0);
        v37.origin.x = v31;
        v37.origin.y = v32;
        v37.size.width = v27;
        v37.size.height = v28;
        CGContextFillRect(v30, v37);
        Image = CGBitmapContextCreateImage(v30);
        CGContextRelease(v30);
        CGImageRelease(v13);
        v13 = Image;
      }
    }

    else
    {
      v13 = CGBitmapContextCreateImage(v25);
      CGContextRelease(v25);
    }
  }

  else
  {
    v13 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

- (void)p_drawFrameIntoRect:(CGRect)a3 inContext:(CGContext *)a4 withImages:(id)a5 atViewScale:(double)a6 isMask:(BOOL)a7
{
  v7 = a7;
  TSURoundedRect();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a5;
  v129.origin.x = v12;
  v129.origin.y = v14;
  v129.size.width = v16;
  v129.size.height = v18;
  MinX = CGRectGetMinX(v129);
  v130.origin.x = v12;
  v130.origin.y = v14;
  v130.size.width = v16;
  v130.size.height = v18;
  CGRectGetMaxX(v130);
  v131.origin.x = v12;
  v131.origin.y = v14;
  v131.size.width = v16;
  v131.size.height = v18;
  MinY = CGRectGetMinY(v131);
  v132.origin.x = v12;
  v132.origin.y = v14;
  v132.size.width = v16;
  v132.size.height = v18;
  CGRectGetMaxY(v132);
  objc_msgSend_i_leftWidth(self->_frame, v21, v22);
  TSURound();
  v126 = v23;
  objc_msgSend_i_topHeight(self->_frame, v24, v25);
  TSURound();
  v127 = v26;
  objc_msgSend_i_rightWidth(self->_frame, v27, v28);
  TSURound();
  objc_msgSend_i_bottomHeight(self->_frame, v29, v30);
  TSURound();
  objc_msgSend_i_leftWidth(self->_frame, v31, v32);
  objc_msgSend_i_rightWidth(self->_frame, v33, v34);
  objc_msgSend_i_topHeight(self->_frame, v35, v36);
  v37 = MinY;
  objc_msgSend_i_bottomHeight(self->_frame, v38, v39);
  TSURound();
  v41 = v40;
  TSURound();
  v43 = v42;
  TSURound();
  v45 = v44;
  TSURound();
  v49 = v41 + 1.0;
  if (v41 != v43)
  {
    v49 = v43;
  }

  v123 = v49;
  v124 = v41;
  if (v45 == v48)
  {
    v50 = v45 + 1.0;
  }

  else
  {
    v50 = v48;
  }

  objc_msgSend_assetScale(self->_frame, v46, v47);
  v52 = objc_msgSend_objectAtIndex_(v19, v51, 0);
  objc_msgSend_drawImageInContext_rect_(v52, v53, a4, MinX, v37, v126, v127);

  TSURoundedSize();
  v55 = v54;
  v57 = v56;
  v59 = objc_msgSend_objectAtIndex_(v19, v58, 6);
  objc_msgSend_drawImageInContext_rect_(v59, v60, a4, MinX, v50, v55, v57);

  TSURoundedSize();
  v62 = v61;
  v64 = v63;
  v66 = objc_msgSend_objectAtIndex_(v19, v65, 2);
  objc_msgSend_drawImageInContext_rect_(v66, v67, a4, v123, v37, v62, v64);

  TSURoundedSize();
  v69 = v68;
  v71 = v70;
  v73 = objc_msgSend_objectAtIndex_(v19, v72, 4);
  objc_msgSend_drawImageInContext_rect_(v73, v74, a4, v123, v50, v69, v71);

  v76 = objc_msgSend_objectAtIndex_(v19, v75, 7);
  objc_msgSend_dpiAdjustedFillSize(v76, v77, v78);

  TSURoundedSize();
  v80 = v79;
  v82 = v81;
  v84 = objc_msgSend_objectAtIndex_(v19, v83, 7);
  objc_msgSend_p_drawTiles_inContext_rect_start_end_vertical_(self, v85, v84, a4, 1, MinX, v45, v80, v82, v45, v50);

  v87 = objc_msgSend_objectAtIndex_(v19, v86, 3);
  objc_msgSend_dpiAdjustedFillSize(v87, v88, v89);

  TSURoundedSize();
  v91 = v90;
  v93 = v92;
  v95 = objc_msgSend_objectAtIndex_(v19, v94, 3);
  objc_msgSend_p_drawTiles_inContext_rect_start_end_vertical_(self, v96, v95, a4, 1, v123, v45, v91, v93, v45, v50);

  v98 = objc_msgSend_objectAtIndex_(v19, v97, 1);
  objc_msgSend_dpiAdjustedFillSize(v98, v99, v100);

  TSURoundedSize();
  v102 = v101;
  v104 = v103;
  v106 = objc_msgSend_objectAtIndex_(v19, v105, 1);
  objc_msgSend_p_drawTiles_inContext_rect_start_end_vertical_(self, v107, v106, a4, 0, v124, v37, v102, v104, v124, v123);

  v109 = objc_msgSend_objectAtIndex_(v19, v108, 5);
  objc_msgSend_dpiAdjustedFillSize(v109, v110, v111);

  TSURoundedSize();
  v113 = v112;
  v115 = v114;
  v117 = objc_msgSend_objectAtIndex_(v19, v116, 5);

  objc_msgSend_p_drawTiles_inContext_rect_start_end_vertical_(self, v118, v117, a4, 0, v124, v50, v113, v115, v124, v123);
  if (v7)
  {
    CGContextSetGrayFillColor(a4, 0.0, 1.0);
    v121 = v124;
    v122 = v45;

    v119 = v123 - v124;
    v120 = v50 - v45;
    CGContextFillRect(a4, *&v121);
  }
}

- (void)p_drawTiles:(id)a3 inContext:(CGContext *)a4 rect:(CGRect)a5 start:(double)a6 end:(double)a7 vertical:(BOOL)a8
{
  v8 = a8;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v49 = a3;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v52 = CGRectIntegral(v51);
  MaxX = v52.origin.x;
  MaxY = v52.origin.y;
  v19 = v52.size.width;
  v20 = v52.size.height;
  if (!CGRectIsEmpty(v52))
  {
    v23 = a7 - a6;
    if (v8)
    {
      v24 = v19;
    }

    else
    {
      v24 = a7 - a6;
    }

    if (v8)
    {
      v25 = a7 - a6;
    }

    else
    {
      v25 = v20;
    }

    v26 = objc_msgSend_frameSpec(self->_frame, v21, v22);
    v29 = objc_msgSend_i_tilingMode(v26, v27, v28);

    if (v29 == 2)
    {
      objc_msgSend_drawImageInContext_rect_(v49, v30, a4, MaxX, MaxY, v24, v25);
    }

    else
    {
      if (v8)
      {
        v32 = v20;
      }

      else
      {
        v32 = v19;
      }

      v33 = v23 / v32;
      v34 = vcvtps_s32_f32(v33);
      v35 = objc_msgSend_frameSpec(self->_frame, v30, v31);
      v38 = objc_msgSend_i_tilingMode(v35, v36, v37);

      if (v38 == 1)
      {
        if (v34 >= 1)
        {
          v39 = v23 / v34;
          do
          {
            a6 = v39 + a6;
            TSURound();
            v41 = v40;
            v42 = MaxX;
            v43 = MaxY;
            v44 = v19;
            v45 = v20;
            if (v8)
            {
              v20 = v41 - CGRectGetMinY(*&v42);
              objc_msgSend_drawImageInContext_rect_(v49, v46, a4, MaxX, MaxY, v19, v20);
              v53.origin.x = MaxX;
              v53.origin.y = MaxY;
              v53.size.width = v19;
              v53.size.height = v20;
              MaxY = CGRectGetMaxY(v53);
            }

            else
            {
              v19 = v41 - CGRectGetMinX(*&v42);
              objc_msgSend_drawImageInContext_rect_(v49, v47, a4, MaxX, MaxY, v19, v20);
              v54.origin.x = MaxX;
              v54.origin.y = MaxY;
              v54.size.width = v19;
              v54.size.height = v20;
              MaxX = CGRectGetMaxX(v54);
            }

            --v34;
          }

          while (v34);
        }
      }

      else
      {
        CGContextSaveGState(a4);
        CGContextClipToRectSafe();
        if (v34 >= 1)
        {
          do
          {
            objc_msgSend_drawImageInContext_rect_(v49, v48, a4, MaxX, MaxY, v19, v20);
            if (v8)
            {
              MaxY = v20 + MaxY;
            }

            else
            {
              MaxX = v19 + MaxX;
            }

            --v34;
          }

          while (v34);
        }

        CGContextRestoreGState(a4);
      }
    }
  }
}

@end