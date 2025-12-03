@interface TSDImageResamplingOperation
- (CGSize)desiredAlternateSizeIfConvertedToPNG;
- (CGSize)desiredSize;
- (TSDImageResamplingOperation)init;
- (TSDImageResamplingOperation)initWithImageProvider:(id)provider desiredSize:(CGSize)size;
- (id)p_destinationTypeForOriginalFileType:(id)type sourceHasAlpha:(BOOL)alpha prioritizeHighEfficiencyFormat:(BOOL)format;
- (id)p_flexRangeImageWithSDRImage:(id)image hdrImage:(id)hdrImage resampledDisplayName:(id)name;
- (id)p_performHDRGainmapResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions;
- (id)p_performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions prioritizeHighEfficiencyFormat:(BOOL)format;
- (id)performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions;
- (void)setDesiredAlternateSizeIfConvertedToPNG:(CGSize)g;
@end

@implementation TSDImageResamplingOperation

- (TSDImageResamplingOperation)initWithImageProvider:(id)provider desiredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  if (!providerCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDImageResamplingOperation initWithImageProvider:desiredSize:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageResamplingOperation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 47, 0, "Invalid parameter not satisfying: %{public}s", "imageProvider != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v29.receiver = self;
  v29.super_class = TSDImageResamplingOperation;
  v17 = [(TSDImageResamplingOperation *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->mImageProvider, provider);
    v18->mDesiredSize.width = width;
    v18->mDesiredSize.height = height;
    if (TSDPlatformRisksMemoryCrashFromLargeImages())
    {
      if (width * height > TSDMaxPixelAreaForiOSImages())
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDImageResamplingOperation initWithImageProvider:desiredSize:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageResamplingOperation.m");
        v30.width = width;
        v30.height = height;
        v24 = NSStringFromCGSize(v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v23, 52, 0, "Should not be resampling an image to this size %{public}@ on a platform with memory limits!", v24);

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v27);
      }
    }
  }

  return v18;
}

- (TSDImageResamplingOperation)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageResamplingOperation init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageResamplingOperation.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 60, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSDImageResamplingOperation init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)setDesiredAlternateSizeIfConvertedToPNG:(CGSize)g
{
  height = g.height;
  width = g.width;
  objc_msgSend_desiredSize(self, a2, v3);
  if (width <= v9 && (objc_msgSend_desiredSize(self, v7, v8), height <= v10))
  {
    self->mDesiredAlternateSizeIfConvertedToPNG.width = width;
    self->mDesiredAlternateSizeIfConvertedToPNG.height = height;
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDImageResamplingOperation setDesiredAlternateSizeIfConvertedToPNG:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageResamplingOperation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 72, 0, "Should not provide a size that is larger than our default size!");

    v18 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v18, v16, v17);
  }
}

- (id)performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions
{
  objc_opt_class();
  v9 = objc_msgSend_imageProvider(self, v7, v8);
  v10 = TSUDynamicCast();

  if (v10 && objc_msgSend_isValid(v10, v11, v12))
  {
    v14 = objc_msgSend_prefersHDRRendering(v10, v11, v13);
    hasHDRGainMap = objc_msgSend_hasHDRGainMap(v10, v15, v16);
    if (v14)
    {
      v19 = objc_msgSend_currentCapabilities(TSDCapabilities, v11, v17);
      isHDRCapable = objc_msgSend_isHDRCapable(v19, v20, v21);

      if (!isHDRCapable)
      {
        contextOptions &= ~0x40uLL;
        optionsCopy = options & 0xFFFFFFFFFFFFFF5FLL | 0x20;
        goto LABEL_8;
      }
    }

    if ((((options & 0x80) != 0) & hasHDRGainMap) == 1)
    {
      v23 = objc_msgSend_p_performHDRGainmapResampleOperationWithResampleOptions_bitmapContextOptions_(self, v11, options, contextOptions);
      goto LABEL_9;
    }
  }

  optionsCopy = options;
LABEL_8:
  v23 = objc_msgSend_p_performResampleOperationWithResampleOptions_bitmapContextOptions_prioritizeHighEfficiencyFormat_(self, v11, optionsCopy, contextOptions, (options & 0x40) == 0);
LABEL_9:
  v25 = v23;

  return v25;
}

- (id)p_performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions prioritizeHighEfficiencyFormat:(BOOL)format
{
  formatCopy = format;
  optionsCopy = options;
  v282[1] = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_imageProvider(self, a2, options);
  objc_msgSend_naturalSize(v9, v10, v11);
  v13 = v12;
  v15 = v14;

  if ((optionsCopy & 8) != 0)
  {
    objc_msgSend_desiredAlternateSizeIfConvertedToPNG(self, v16, v17);
    if (v19 != *MEMORY[0x277CBF3A8] || v18 != *(MEMORY[0x277CBF3A8] + 8))
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSDImageResamplingOperation p_performResampleOperationWithResampleOptions:bitmapContextOptions:prioritizeHighEfficiencyFormat:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageResamplingOperation.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 124, 0, "Should not specify an alternate size if a precise size is required!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }
  }

  objc_msgSend_desiredSize(self, v16, v17);
  TSUSizeMax();
  v29 = v28;
  v31 = v30;
  if ((optionsCopy & 8) == 0)
  {
    TSUFitOrFillSizeInSize();
    v29 = v32;
    v31 = v33;
  }

  if (optionsCopy)
  {
    v34 = 0.5;
  }

  else
  {
    v34 = 0.699999988;
  }

  objc_opt_class();
  v37 = objc_msgSend_imageProvider(self, v35, v36);
  v38 = TSUDynamicCast();

  if ((optionsCopy & 2) == 0 && !v38)
  {
    v41 = objc_msgSend_imageProvider(self, v39, v40);
    v44 = objc_msgSend_imageData(v41, v42, v43);

    goto LABEL_113;
  }

  contextOptionsCopy = contextOptions;
  v45 = objc_msgSend_CGImageSource(v38, v39, v40);
  isrc = v45;
  if (v45 && (v48 = v45, CGImageSourceGetStatus(v45) == kCGImageStatusComplete))
  {
    v153 = CGImageSourceCopyPropertiesAtIndex(v48, 0, 0);
    if (v153)
    {
      v273 = v153;
      v277 = 1;
      v278 = CFDictionaryGetValue(v153, *MEMORY[0x277CD3368]) == *MEMORY[0x277CBED28];
      goto LABEL_19;
    }

    v277 = 1;
  }

  else
  {
    v277 = 0;
  }

  v273 = 0;
  v278 = objc_msgSend_isOpaque(v38, v46, v47) ^ 1;
LABEL_19:
  v51 = objc_msgSend_displayName(self, v49, v50);
  v54 = objc_msgSend_stringByDeletingPathExtension(v51, v52, v53);

  if (!v54 || !objc_msgSend_length(v54, v55, v56))
  {
    objc_msgSend_imageProvider(self, v55, v56);
    v58 = v57 = v54;
    v61 = objc_msgSend_imageData(v58, v59, v60);
    v64 = objc_msgSend_filename(v61, v62, v63);
    v67 = objc_msgSend_stringByDeletingPathExtension(v64, v65, v66);

    if (v67 && objc_msgSend_length(v67, v68, v69))
    {
      v54 = v67;
    }

    else
    {

      v54 = @"image";
    }
  }

  v70 = objc_msgSend_displayName(self, v55, v56);
  v73 = objc_msgSend_pathExtension(v70, v71, v72);

  if (!v73 || !objc_msgSend_length(v73, v74, v75))
  {
    v76 = objc_msgSend_imageProvider(self, v74, v75);
    objc_msgSend_imageData(v76, v77, v78);
    v80 = v79 = v54;
    v83 = objc_msgSend_filename(v80, v81, v82);
    v86 = objc_msgSend_pathExtension(v83, v84, v85);
    v87 = v73;
    v73 = v86;

    v54 = v79;
  }

  v276 = v38;
  v88 = objc_msgSend_tsu_preferredIdentifierForTagClass_conformingToUTI_(v73, v74, *MEMORY[0x277CE1CC0], 0);
  v90 = objc_msgSend_p_destinationTypeForOriginalFileType_sourceHasAlpha_prioritizeHighEfficiencyFormat_(self, v89, v88, v278, formatCopy);
  v93 = objc_msgSend_identifier(*MEMORY[0x277CE1E10], v91, v92);
  v271 = v73;
  if (objc_msgSend_isEqualToString_(v90, v94, v93))
  {
    objc_msgSend_desiredAlternateSizeIfConvertedToPNG(self, v95, v96);
    v98 = v97;
    v100 = v99;
    v101 = MEMORY[0x277CBF3A8];
    v102 = *MEMORY[0x277CBF3A8];

    if (v98 != v102 || v100 != *(v101 + 8))
    {
      objc_msgSend_desiredAlternateSizeIfConvertedToPNG(self, v103, v104);
      TSUFitOrFillSizeInSize();
      v29 = v105;
      v31 = v106;
    }
  }

  else
  {
  }

  objc_msgSend_tsu_UTIFilenameExtension(v90, v103, v104);
  v269 = v272 = v54;
  v275 = objc_msgSend_stringByAppendingPathExtension_(v54, v107, v269);
  v110 = objc_msgSend_identifier(*MEMORY[0x277CE1D58], v108, v109);
  v270 = v88;
  v112 = objc_msgSend_tsu_conformsToUTI_(v88, v111, v110);

  v115 = objc_msgSend_currentCapabilities(TSDCapabilities, v113, v114);
  v118 = objc_msgSend_isHDRCapable(v115, v116, v117) & v112;

  if ((optionsCopy & 0x18) == 0 && v277 == 1 && !v118 && v29 < v13 && v31 < v15)
  {
    v121 = v90;
    v122 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v123 = MEMORY[0x277CBEC38];
    objc_msgSend_setObject_forKeyedSubscript_(v122, v124, MEMORY[0x277CBEC38], *MEMORY[0x277CD3568]);
    objc_msgSend_setObject_forKeyedSubscript_(v122, v125, v123, *MEMORY[0x277CD3578]);
    if (v29 >= v31)
    {
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v126, v127, v29);
    }

    else
    {
      objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v126, v127, v31);
    }
    v128 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v122, v129, v128, *MEMORY[0x277CD3660]);

    v131 = MEMORY[0x277CD3598];
    if ((optionsCopy & 0x20) == 0)
    {
      v131 = MEMORY[0x277CD3590];
    }

    objc_msgSend_setObject_forKeyedSubscript_(v122, v130, *v131, *MEMORY[0x277CD3580]);
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(isrc, 0, v122);

    v90 = v121;
    if (ThumbnailAtIndex)
    {
      goto LABEL_92;
    }
  }

  v133 = contextOptionsCopy | 2;
  if (!v278)
  {
    v133 = contextOptionsCopy;
  }

  v134 = v133 | (4 * (optionsCopy & 1));
  v135 = objc_msgSend_imageProvider(self, v119, v120);
  v138 = objc_msgSend_prefersHDRRendering(v135, v136, v137);

  if ((((optionsCopy & 0x30) == 16) & v138) != 0)
  {
    v139 = v134 | 0x40;
  }

  else
  {
    v139 = v134;
  }

  TSUCeilSize();
  v143 = v142;
  v145 = v144;
  if (v277)
  {
    if (v118)
    {
      v146 = objc_msgSend_imageProvider(self, v140, v141);
      v149 = objc_msgSend_imageGamut(v146, v147, v148);

      if (v149 == 2)
      {
        v150 = v139;
      }

      else
      {
        v150 = (v139 | 0x20);
      }

      v151 = TSUPQColorSpace();
      v152 = TSDBitmapContextCreateWithColorSpace(v151, v150, v143, v145);
      if (v152)
      {
        goto LABEL_65;
      }
    }

    else if ((optionsCopy & 0x20) == 0 || (objc_msgSend_prefersHDRRendering(v276, v140, v141) & 1) == 0)
    {
      v154 = [TSDImageRenderingConfiguration alloc];
      v157 = objc_msgSend_imageProvider(self, v155, v156);
      v160 = objc_msgSend_prefersHDRRendering(v157, v158, v159);
      inited = objc_msgSend_initWantsHDR_(v154, v161, v160);

      v164 = objc_msgSend_CGImageOfAnySizeWithRenderingConfiguration_(v276, v163, inited);
      v152 = sub_276646E58(v164, v139, v143, v145);

      if (v152)
      {
        goto LABEL_65;
      }
    }
  }

  v165 = objc_msgSend_imageProvider(self, v140, v141);
  v168 = objc_msgSend_imageGamut(v165, v166, v167);

  if (v168 == 2)
  {
    v169 = v139;
  }

  else
  {
    v169 = (v139 | 0x20);
  }

  v152 = TSDBitmapContextCreate(v169, v143, v145);
  if (!v152)
  {
    goto LABEL_102;
  }

LABEL_65:
  if (optionsCopy)
  {
    v171 = kCGInterpolationNone;
  }

  else
  {
    v171 = kCGInterpolationLow;
  }

  CGContextSetInterpolationQuality(v152, v171);
  if (v278)
  {
    v143 = v29;
    v174 = v31;
  }

  else
  {
    v174 = v145;
  }

  if (isrc)
  {
    Type = CGImageSourceGetType(isrc);
    v178 = v13 / v143 >= v15 / v174 ? v13 / v143 : v15 / v174;
    if (objc_msgSend_isValid(v276, v175, v176))
    {
      v179 = objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v172, v173);
      if (CFEqual(Type, v179) && v178 >= 2.0)
      {
        v182 = objc_msgSend_prefersHDRRendering(v276, v180, v181);

        if ((v182 & 1) == 0)
        {
          if (v178 >= 8.0)
          {
            v183 = 8;
          }

          else if (v178 >= 4.0)
          {
            v183 = 4;
          }

          else
          {
            v183 = 2;
          }

          v241 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v172, v173);
          v243 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v242, v183);
          objc_msgSend_setObject_forKeyedSubscript_(v241, v244, v243, @"kCGImageSourceSubsampleFactor");

          v247 = objc_msgSend_currentCapabilities(TSDCapabilities, v245, v246);
          if (objc_msgSend_isHDRCapable(v247, v248, v249))
          {
            v252 = objc_msgSend_prefersHDRRendering(v276, v250, v251);

            if (v252)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v241, v253, *MEMORY[0x277CD3590], *MEMORY[0x277CD3580]);
            }
          }

          else
          {
          }

          ImageAtIndex = CGImageSourceCreateImageAtIndex(isrc, 0, v241);
          TSURectWithSize();
          v256 = v255;
          v258 = v257;
          v260 = v259;
          v262 = v261;
          CGContextSaveGState(v152);
          v284.origin.x = v256;
          v284.origin.y = v258;
          v284.size.width = v260;
          v284.size.height = v262;
          MinY = CGRectGetMinY(v284);
          v285.origin.x = v256;
          v285.origin.y = v258;
          v285.size.width = v260;
          v285.size.height = v262;
          MaxY = CGRectGetMaxY(v285);
          CGContextTranslateCTM(v152, 0.0, MinY + MaxY);
          CGContextScaleCTM(v152, 1.0, -1.0);
          objc_msgSend_orientation(v276, v265, v266);
          TSUImageOrientationTransform();
          CGContextConcatCTM(v152, &transform);
          ColorSpace = CGBitmapContextGetColorSpace(v152);
          if (CGColorSpaceIsPQBased(ColorSpace))
          {
            CGImageGetContentHeadroom();
            CGContextSetEDRTargetHeadroom();
          }

          v286.origin.x = v256;
          v286.origin.y = v258;
          v286.size.width = v260;
          v286.size.height = v262;
          CGContextDrawImage(v152, v286, ImageAtIndex);
          if (ImageAtIndex)
          {
            CFRelease(ImageAtIndex);
          }

          CGContextRestoreGState(v152);

          goto LABEL_91;
        }
      }

      else
      {
      }
    }
  }

  v184 = (optionsCopy & 0x20) == 0 && (objc_msgSend_prefersHDRRendering(self->mImageProvider, v172, v173) & 1) != 0;
  TSDCGContextSetShouldRenderHDRContent(v152, v184);
  v185 = CGBitmapContextGetColorSpace(v152);
  if (CGColorSpaceIsPQBased(v185))
  {
    v188 = [TSDImageRenderingConfiguration alloc];
    v190 = objc_msgSend_initWithCGContext_(v188, v189, v152);
    objc_msgSend_CGImageOfAnySizeWithRenderingConfiguration_(v276, v191, v190);

    CGImageGetContentHeadroom();
    CGContextSetEDRTargetHeadroom();
  }

  v192 = objc_msgSend_imageProvider(self, v186, v187);
  TSURectWithSize();
  objc_msgSend_drawImageInContext_rect_(v192, v193, v152);

LABEL_91:
  ThumbnailAtIndex = CGBitmapContextCreateImage(v152);
  CGContextRelease(v152);
  if (ThumbnailAtIndex)
  {
LABEL_92:
    v194 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v195 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKeyedSubscript_(v195, v196, *MEMORY[0x277CD2D30], *MEMORY[0x277CD2D18]);
    v197 = CGImageDestinationCreateWithData(v194, v90, 1uLL, v195);
    if (v197)
    {
      v200 = v197;
      v279 = v90;
      v201 = *MEMORY[0x277CD2D48];
      v281 = *MEMORY[0x277CD2D48];
      v202 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v198, v199, v34);
      v282[0] = v202;
      v204 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v203, v282, &v281, 1);

      CGImageDestinationSetProperties(v200, v204);
      if (v277)
      {
        Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v208 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v206, v207, v34);
        CFDictionaryAddValue(Mutable, v201, v208);
        v209 = CGImageSourceCopyPropertiesAtIndex(isrc, 0, 0);
        v210 = *MEMORY[0x277CD2F30];
        if (CFDictionaryContainsKey(v209, *MEMORY[0x277CD2F30]))
        {
          Value = CFDictionaryGetValue(v209, v210);
          CFDictionaryAddValue(Mutable, v210, Value);
        }

        v212 = *MEMORY[0x277CD2F28];
        if (CFDictionaryContainsKey(v209, *MEMORY[0x277CD2F28]))
        {
          v213 = CFDictionaryGetValue(v209, v212);
          CFDictionaryAddValue(Mutable, v212, v213);
        }

        CGImageDestinationAddImage(v200, ThumbnailAtIndex, Mutable);
        if (v209)
        {
          CFRelease(v209);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        CGImageDestinationAddImage(v200, ThumbnailAtIndex, 0);
      }

      CGImageDestinationFinalize(v200);
      CFRelease(v200);
      v234 = objc_msgSend_objectContext(self, v232, v233);

      v237 = MEMORY[0x277D80828];
      if (v234)
      {
        v238 = objc_msgSend_objectContext(self, v235, v236);
        v44 = objc_msgSend_dataFromNSData_filename_context_(v237, v239, v194, v275, v238);
      }

      else
      {
        v44 = objc_msgSend_readOnlyDataFromNSData_filename_(MEMORY[0x277D80828], v235, v194, v275);
      }

      v223 = v271;
      v222 = v272;
      v90 = v279;
      v224 = v269;

      v221 = v273;
    }

    else
    {
      v225 = MEMORY[0x277D81150];
      v226 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v198, "[TSDImageResamplingOperation p_performResampleOperationWithResampleOptions:bitmapContextOptions:prioritizeHighEfficiencyFormat:]");
      v228 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v227, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageResamplingOperation.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v225, v229, v226, v228, 369, 0, "invalid nil value for '%{public}s'", "destination");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v230, v231);
      v44 = 0;
      v222 = v272;
      v221 = v273;
      v223 = v73;
      v224 = v269;
    }

    CFRelease(ThumbnailAtIndex);

    goto LABEL_110;
  }

LABEL_102:
  v214 = MEMORY[0x277D81150];
  v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v170, "[TSDImageResamplingOperation p_performResampleOperationWithResampleOptions:bitmapContextOptions:prioritizeHighEfficiencyFormat:]");
  v217 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v216, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageResamplingOperation.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v214, v218, v215, v217, 360, 0, "invalid nil value for '%{public}s'", "resampledImage");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v219, v220);
  v44 = 0;
  v222 = v272;
  v221 = v273;
  v223 = v73;
  v224 = v269;
LABEL_110:
  if (v221)
  {
    CFRelease(v221);
  }

  v38 = v276;
LABEL_113:

  return v44;
}

- (id)p_destinationTypeForOriginalFileType:(id)type sourceHasAlpha:(BOOL)alpha prioritizeHighEfficiencyFormat:(BOOL)format
{
  formatCopy = format;
  typeCopy = type;
  v9 = *MEMORY[0x277CE1DC0];
  v12 = objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v10, v11);
  if (objc_msgSend_tsu_conformsToUTI_(typeCopy, v13, v12))
  {
    v16 = 0;
  }

  else
  {
    v17 = objc_msgSend_highEfficiencyImageTypes(MEMORY[0x277D81200], v14, v15);
    if (objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v18, v17))
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_msgSend_tsu_conformsToUTI_(typeCopy, v19, *MEMORY[0x277D81488]) ^ 1;
    }
  }

  if (alpha || v16)
  {
    v9 = *MEMORY[0x277CE1E10];
  }

  else if (formatCopy && objc_msgSend_prefersHDRRendering(self->mImageProvider, v20, v21))
  {
    objc_msgSend_identifier(*MEMORY[0x277CE1D90], v20, v21);
    goto LABEL_15;
  }

  objc_msgSend_identifier(v9, v20, v21);
  v22 = LABEL_15:;

  return v22;
}

- (id)p_performHDRGainmapResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions
{
  v7 = objc_msgSend_p_performResampleOperationWithResampleOptions_bitmapContextOptions_prioritizeHighEfficiencyFormat_(self, a2, options | 0x20, contextOptions, 1);
  v9 = objc_msgSend_p_performResampleOperationWithResampleOptions_bitmapContextOptions_prioritizeHighEfficiencyFormat_(self, v8, options | 0x10, contextOptions, 1);
  v12 = objc_msgSend_filename(v9, v10, v11);
  v14 = objc_msgSend_p_flexRangeImageWithSDRImage_hdrImage_resampledDisplayName_(self, v13, v7, v9, v12);

  return v14;
}

- (id)p_flexRangeImageWithSDRImage:(id)image hdrImage:(id)hdrImage resampledDisplayName:(id)name
{
  v45[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = MEMORY[0x277CBF758];
  hdrImageCopy = hdrImage;
  v13 = objc_msgSend_NSData(image, v11, v12);
  v15 = objc_msgSend_imageWithData_(v9, v14, v13);

  v44 = *MEMORY[0x277CBFA50];
  v45[0] = MEMORY[0x277CBEC38];
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v45, &v44, 1);
  v18 = MEMORY[0x277CBF758];
  v21 = objc_msgSend_NSData(hdrImageCopy, v19, v20);

  v23 = objc_msgSend_imageWithData_options_(v18, v22, v21, v17);

  v25 = objc_msgSend_contextWithOptions_(MEMORY[0x277CBF740], v24, 0);
  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = v26;
  if (v23)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v26, v27, v23, *MEMORY[0x277CBFA98]);
  }

  v30 = *MEMORY[0x277CBF9C8];
  v31 = objc_msgSend_colorSpace(v15, v27, v28);
  v33 = objc_msgSend_HEIFRepresentationOfImage_format_colorSpace_options_(v25, v32, v15, v30, v31, v29);
  v36 = objc_msgSend_objectContext(self, v34, v35);

  v39 = MEMORY[0x277D80828];
  if (v36)
  {
    v40 = objc_msgSend_objectContext(self, v37, v38);
    v42 = objc_msgSend_dataFromNSData_filename_context_(v39, v41, v33, nameCopy, v40);
  }

  else
  {
    v42 = objc_msgSend_readOnlyDataFromNSData_filename_(MEMORY[0x277D80828], v37, v33, nameCopy);
  }

  return v42;
}

- (CGSize)desiredSize
{
  width = self->mDesiredSize.width;
  height = self->mDesiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)desiredAlternateSizeIfConvertedToPNG
{
  width = self->mDesiredAlternateSizeIfConvertedToPNG.width;
  height = self->mDesiredAlternateSizeIfConvertedToPNG.height;
  result.height = height;
  result.width = width;
  return result;
}

@end