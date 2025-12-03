@interface TSAImageRenderingExporterDelegate
- (BOOL)p_imageTypeSupportsHDR:(id)r;
- (CGContext)newCGContextForURL:(id)l;
- (CGContext)newHDRCGContextForURL:(id)l;
- (TSAImageRenderingExporterDelegate)initWithRenderingExporter:(id)exporter;
- (double)viewScale;
- (void)releaseSDRCGContext:(CGContext *)context andHDRContext:(CGContext *)rContext;
@end

@implementation TSAImageRenderingExporterDelegate

- (TSAImageRenderingExporterDelegate)initWithRenderingExporter:(id)exporter
{
  exporterCopy = exporter;
  v13.receiver = self;
  v13.super_class = TSAImageRenderingExporterDelegate;
  v5 = [(TSAImageRenderingExporterDelegate *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mRenderingExporter, exporterCopy);
    v6->mWidth = 0;
    v6->mHeight = 0;
    v6->mScaleToFit = 0;
    v6->mCompressionFactor = 1.0;
    v10 = objc_msgSend_identifier(*MEMORY[0x277CE1E10], v7, v8, v9);
    mImageType = v6->mImageType;
    v6->mImageType = v10;

    v6->mTransferFunction = 0;
  }

  return v6;
}

- (double)viewScale
{
  WeakRetained = objc_loadWeakRetained(&self->mRenderingExporter);
  objc_msgSend_unscaledClipRect(WeakRetained, v4, v5, v6);
  v8 = v7;
  v10 = v9;

  result = 1.0;
  if (self->mScaleToFit)
  {
    result = self->mWidth / v8;
    if (result <= self->mHeight / v10)
    {
      return self->mHeight / v10;
    }
  }

  return result;
}

- (CGContext)newCGContextForURL:(id)l
{
  lCopy = l;
  if (objc_msgSend_currentTransferFunctionRequiresSDRCGContext(self, v6, v7, v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->mRenderingExporter);
    objc_msgSend_unscaledClipRect(WeakRetained, v12, v13, v14);
    v43 = v16;
    recta = v15;

    v17.f64[0] = recta;
    v17.f64[1] = v43;
    rectb = vbslq_s8(vceqzq_s64(*&self->mWidth), vcvtq_u64_f64(v17), *&self->mWidth);
    objc_storeStrong(&self->mURL, l);
    v18 = vcvtq_f64_u64(rectb);
    v19 = v18.f64[1];
    rect = v18.f64[0];
    v20 = TSDBitmapContextCreate();
    v24 = objc_msgSend_backgroundColor(self, v21, v22, v23);

    if (v24)
    {
      v28 = objc_msgSend_backgroundColor(self, v25, v26, v27);
      v32 = objc_msgSend_CGColor(v28, v29, v30, v31);
      CGContextSetFillColorWithColor(v20, v32);

      v47.origin.x = 0.0;
      v47.origin.y = 0.0;
      v47.size.width = rect;
      v47.size.height = v19;
      CGContextFillRect(v20, v47);
    }
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSAImageRenderingExporterDelegate newCGContextForURL:]", v10);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImageRenderingExporterDelegate.m", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 70, 0, "Attempt to create an SDR context for a transfer function that does not need it.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    v20 = 0;
  }

  return v20;
}

- (CGContext)newHDRCGContextForURL:(id)l
{
  lCopy = l;
  v9 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], v6, v7, v8);
  isHDRCapable = objc_msgSend_isHDRCapable(v9, v10, v11, v12);

  if ((isHDRCapable & 1) == 0)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSAImageRenderingExporterDelegate newHDRCGContextForURL:]", v16);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImageRenderingExporterDelegate.m", v44);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 133, 0, "Attempt to create an HDR context on an unsupported platform");
LABEL_7:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    v28 = 0;
    goto LABEL_8;
  }

  if ((objc_msgSend_currentTransferFunctionRequiresHDRCGContext(self, v14, v15, v16) & 1) == 0)
  {
    v47 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSAImageRenderingExporterDelegate newHDRCGContextForURL:]", v18);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImageRenderingExporterDelegate.m", v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v50, v42, v45, 138, 0, "Attempt to create an HDR context for a transfer function that does not need it.");
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->mRenderingExporter);
  objc_msgSend_unscaledClipRect(WeakRetained, v20, v21, v22);
  v55 = v24;
  recta = v23;

  v25.f64[0] = recta;
  v25.f64[1] = v55;
  rectb = vbslq_s8(vceqzq_s64(*&self->mWidth), vcvtq_u64_f64(v25), *&self->mWidth);
  objc_storeStrong(&self->mURL, l);
  v26 = vcvtq_f64_u64(rectb);
  v27 = v26.f64[1];
  rect = v26.f64[0];
  v28 = TSDBitmapContextCreate();
  TSDCGContextSetShouldRenderHDRContent();
  v32 = objc_msgSend_backgroundColor(self, v29, v30, v31);

  if (v32)
  {
    v36 = objc_msgSend_backgroundColor(self, v33, v34, v35);
    v40 = objc_msgSend_CGColor(v36, v37, v38, v39);
    CGContextSetFillColorWithColor(v28, v40);

    v59.origin.x = 0.0;
    v59.origin.y = 0.0;
    v59.size.width = rect;
    v59.size.height = v27;
    CGContextFillRect(v28, v59);
  }

LABEL_8:

  return v28;
}

- (BOOL)p_imageTypeSupportsHDR:(id)r
{
  v3 = *MEMORY[0x277CE1D90];
  rCopy = r;
  v8 = objc_msgSend_identifier(v3, v5, v6, v7);
  v9 = UTTypeConformsTo(rCopy, v8);

  return v9 != 0;
}

- (void)releaseSDRCGContext:(CGContext *)context andHDRContext:(CGContext *)rContext
{
  v163[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], a2, context, rContext);
  isHDRCapable = objc_msgSend_isHDRCapable(v7, v8, v9, v10);

  if (!rContext || (isHDRCapable & 1) != 0)
  {
    v25 = objc_msgSend_imageType(self, v12, v13, v14);
    v28 = objc_msgSend_p_imageTypeSupportsHDR_(self, v26, v25, v27);

    if ((v28 & 1) == 0)
    {
      self->mTransferFunction = 1;
    }

    Image = CGBitmapContextCreateImage(context);
    v30 = CGBitmapContextCreateImage(rContext);
    v34 = v30;
    mTransferFunction = self->mTransferFunction;
    if (mTransferFunction <= 5)
    {
      if (((1 << mTransferFunction) & 0x23) != 0)
      {
        v36 = CGImageDestinationCreateWithURL(self->mURL, self->mImageType, 1uLL, 0);
        v40 = objc_msgSend_imageType(self, v37, v38, v39);
        v41 = UTTypeConformsTo(v40, *MEMORY[0x277CC20C8]);

        if (v41)
        {
          v155 = *MEMORY[0x277CD2D48];
          v45 = MEMORY[0x277CCABB0];
          objc_msgSend_compressionFactor(self, v42, v43, v44);
          v49 = objc_msgSend_numberWithFloat_(v45, v46, v47, v48);
          v156 = v49;
          v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, &v156, &v155, 1);

          CGImageDestinationAddImage(v36, Image, v51);
        }

        else
        {
          CGImageDestinationAddImage(v36, Image, 0);
        }

        CGImageDestinationFinalize(v36);
        CFRelease(v36);
      }

      else if (((1 << mTransferFunction) & 0xC) != 0)
      {
        v152 = v30;
        if ((v28 & 1) == 0)
        {
          v52 = MEMORY[0x277D81150];
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSAImageRenderingExporterDelegate releaseSDRCGContext:andHDRContext:]", v33);
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImageRenderingExporterDelegate.m", v55);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 189, 0, "Attempt to apply a PQ or HLG transfer function to a non-HDR image format.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
        }

        v151 = Image;
        v61 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], v31, v32, v33);
        v65 = objc_msgSend_isHDRCapable(v61, v62, v63, v64);

        if ((v65 & 1) == 0)
        {
          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSAImageRenderingExporterDelegate releaseSDRCGContext:andHDRContext:]", v67);
          v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImageRenderingExporterDelegate.m", v71);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 190, 0, "Attempt to export to HDR capable format on non-HDR capable system");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
        }

        v77 = objc_msgSend_contextWithOptions_(MEMORY[0x277CBF740], v66, 0, v67);
        v79 = objc_msgSend_imageWithCGImage_options_(MEMORY[0x277CBF758], v78, v152, 0);
        v82 = objc_msgSend_imageByApplyingFilter_(v79, v80, @"CIMaximumComponent", v81);
        v162 = *MEMORY[0x277CBFAE8];
        v83 = MEMORY[0x277CBF788];
        objc_msgSend_extent(v82, v84, v85, v86);
        v90 = objc_msgSend_vectorWithCGRect_(v83, v87, v88, v89);
        v163[0] = v90;
        v92 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v91, v163, &v162, 1);
        v94 = objc_msgSend_imageByApplyingFilter_withInputParameters_(v82, v93, @"CIAreaMaximum", v92);

        memset(v161, 0, sizeof(v161));
        v150 = v77;
        objc_msgSend_render_toBitmap_rowBytes_bounds_format_colorSpace_(v77, v95, v94, v161, 32, *MEMORY[0x277CBF9F0], 0, 0.0, 0.0, 1.0, 1.0);
        *&v96 = fmaxf(*v161, 1.0);
        v97 = MEMORY[0x277CBF758];
        v159 = *MEMORY[0x277CBFA48];
        v101 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v98, v99, v100, v96);
        v160 = v101;
        v103 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v102, &v160, &v159, 1);
        v105 = objc_msgSend_imageWithCGImage_options_(v97, v104, v152, v103);

        v106 = TSUPQColorSpace();
        if (self->mTransferFunction == 3)
        {
          v106 = TSUHLGColorSpace();
        }

        Image = v151;
        mURL = self->mURL;
        v154 = 0;
        objc_msgSend_writeHEIF10RepresentationOfImage_toURL_colorSpace_options_error_(v150, v107, v105, mURL, v106, MEMORY[0x277CBEC10], &v154);

        v34 = v152;
      }

      else
      {
        if ((v28 & 1) == 0)
        {
          v109 = MEMORY[0x277D81150];
          v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSAImageRenderingExporterDelegate releaseSDRCGContext:andHDRContext:]", v33);
          v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImageRenderingExporterDelegate.m", v112);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v114, v110, v113, 225, 0, "Attempt to apply a PQ or HLG transfer function to a non-HDR image format.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v115, v116, v117);
        }

        v118 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], v31, v32, v33);
        v122 = objc_msgSend_isHDRCapable(v118, v119, v120, v121);

        if ((v122 & 1) == 0)
        {
          v125 = MEMORY[0x277D81150];
          v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "[TSAImageRenderingExporterDelegate releaseSDRCGContext:andHDRContext:]", v124);
          v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImageRenderingExporterDelegate.m", v128);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v130, v126, v129, 226, 0, "Attempt to export to HDR capable format on non-HDR capable system");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133);
        }

        v134 = objc_msgSend_imageWithCGImage_(MEMORY[0x277CBF758], v123, Image, v124);
        v137 = objc_msgSend_contextWithOptions_(MEMORY[0x277CBF740], v135, 0, v136);
        v140 = objc_msgSend_imageWithCGImage_(MEMORY[0x277CBF758], v138, v34, v139);
        v157 = *MEMORY[0x277CBFA98];
        v158 = v140;
        v142 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v141, &v158, &v157, 1);

        v143 = self->mURL;
        v144 = v34;
        v145 = *MEMORY[0x277CBF9C8];
        ColorSpace = CGImageGetColorSpace(Image);
        v153 = 0;
        v147 = v145;
        v34 = v144;
        objc_msgSend_writeHEIFRepresentationOfImage_toURL_format_colorSpace_options_error_(v137, v148, v134, v143, v147, ColorSpace, v142, &v153);
      }
    }

    CGImageRelease(Image);
    CGImageRelease(v34);
    CGContextRelease(context);
    CGContextRelease(rContext);
    v149 = self->mURL;
    self->mURL = 0;
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSAImageRenderingExporterDelegate releaseSDRCGContext:andHDRContext:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImageRenderingExporterDelegate.m", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 172, 0, "Attempt to release an HDR context on an unsupported platform. You should not have been able to get an HDR context from newHDRContextForURL: to supply here for release.");

    v24 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v24, v21, v22, v23);
  }
}

@end