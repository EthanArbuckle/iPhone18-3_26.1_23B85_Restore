@interface TSDImageAdjuster
+ (id)p_adjustedImageNameForSourceImageProvider:(id)provider adjustedImageType:(id)type filenameSuffix:(id)suffix;
- (CGImage)newFilteredImageForImage:(CGImage *)image enhancedImage:(CGImage *)enhancedImage;
- (CGImage)p_createImageByToneMappingHDRImageToSDR:(CGImage *)r;
- (CGImage)p_newImageFromCIImage:(id)image underlyingImage:(CGImage *)underlyingImage;
- (TSDImageAdjuster)initWithImageAdjustments:(id)adjustments;
- (id)p_dataForPNGRepresentationOfImage:(CGImage *)image redrawnInHDRColorSpaceWithOrientation:(int64_t)orientation;
- (id)p_dataForSDRCGImage:(CGImage *)image HDRCGImage:(CGImage *)gImage provider:(id)provider filenameSuffix:(id)suffix;
- (void)generateEnhancedAndAdjustedImageDataForSourceImage:(id)image enhancedImageData:(id)data completionHandler:(id)handler;
@end

@implementation TSDImageAdjuster

- (TSDImageAdjuster)initWithImageAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  v9.receiver = self;
  v9.super_class = TSDImageAdjuster;
  v6 = [(TSDImageAdjuster *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageAdjustments, adjustments);
  }

  return v7;
}

+ (id)p_adjustedImageNameForSourceImageProvider:(id)provider adjustedImageType:(id)type filenameSuffix:(id)suffix
{
  typeCopy = type;
  suffixCopy = suffix;
  v11 = objc_msgSend_imageData(provider, v9, v10);
  v14 = objc_msgSend_filename(v11, v12, v13);

  if (!typeCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSDImageAdjuster p_adjustedImageNameForSourceImageProvider:adjustedImageType:filenameSuffix:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageAdjuster.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 50, 0, "invalid nil value for '%{public}s'", "imageType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  if (!v14)
  {
    v14 = @"image.png";
  }

  v24 = objc_msgSend_tsu_UTIFilenameExtension(typeCopy, v15, v16);
  v27 = objc_msgSend_stringByDeletingPathExtension(v14, v25, v26);
  v29 = objc_msgSend_stringByAppendingString_(v27, v28, suffixCopy);

  v31 = objc_msgSend_stringByAppendingPathExtension_(v29, v30, v24);

  return v31;
}

- (void)generateEnhancedAndAdjustedImageDataForSourceImage:(id)image enhancedImageData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  imageCopy = image;
  v12 = objc_msgSend_sharedPool(TSDImageProviderPool, v10, v11);
  v14 = objc_msgSend_temporaryProviderForData_shouldValidate_(v12, v13, imageCopy, 1);

  objc_opt_class();
  v15 = TSUDynamicCast();
  if (v15)
  {
    v72 = v14;
    v16 = [TSDImageRenderingConfiguration alloc];
    inited = objc_msgSend_initWantsHDR_(v16, v17, 0);
    v19 = [TSDImageRenderingConfiguration alloc];
    v21 = objc_msgSend_initWantsHDR_(v19, v20, 1);
    v26 = objc_msgSend_prefersHDRRendering(v15, v22, v23);
    v73 = v21;
    v74 = inited;
    if (v26 && (objc_msgSend_currentCapabilities(TSDCapabilities, v24, v25), v27 = objc_claimAutoreleasedReturnValue(), isHDRCapable = objc_msgSend_isHDRCapable(v27, v28, v29), v27, isHDRCapable))
    {
      v31 = objc_msgSend_CGImageOfLargestSafeSizeWithRenderingConfiguration_(v15, v24, v21);
      if (objc_msgSend_hasHDRGainMap(v15, v32, v33))
      {
        ImageByToneMappingHDRImageToSDR = objc_msgSend_p_createImageByToneMappingHDRImageToSDR_(self, v34, v31);
        v37 = ImageByToneMappingHDRImageToSDR;
        if (ImageByToneMappingHDRImageToSDR)
        {
          CFAutorelease(ImageByToneMappingHDRImageToSDR);
        }

        v71 = 0;
      }

      else
      {
        v71 = 0;
        v37 = 0;
      }
    }

    else
    {
      v71 = v26;
      v37 = objc_msgSend_CGImageOfLargestSafeSizeWithRenderingConfiguration_(v15, v24, inited);
      v31 = 0;
    }

    v76 = 0uLL;
    if (dataCopy)
    {
      v38 = objc_msgSend_sharedPool(TSDImageProviderPool, v34, v35);
      v40 = objc_msgSend_temporaryProviderForData_shouldValidate_(v38, v39, dataCopy, 1);

      objc_opt_class();
      v41 = TSUDynamicCast();
      v44 = v41;
      if (v41)
      {
        if (v31 && objc_msgSend_prefersHDRRendering(v41, v42, v43))
        {
          v45 = objc_msgSend_CGImageOfLargestSafeSizeWithRenderingConfiguration_(v44, v42, v21);
          *&v76 = v45;
          if (objc_msgSend_hasHDRGainMap(v44, v46, v47))
          {
            v49 = objc_msgSend_p_createImageByToneMappingHDRImageToSDR_(self, v48, v45);
            v50 = v49;
            *(&v76 + 1) = v49;
            if (v49)
            {
              CFAutorelease(v49);
            }
          }

          else
          {
            v50 = 0;
          }
        }

        else if (v37)
        {
          v50 = objc_msgSend_CGImageOfLargestSafeSizeWithRenderingConfiguration_(v44, v42, v74);
          v45 = 0;
          *(&v76 + 1) = v50;
        }

        else
        {
          v50 = 0;
          v45 = 0;
        }

        if (v31)
        {
          v51 = v45 == 0;
        }

        else
        {
          v51 = 0;
        }

        LOBYTE(v44) = !v51;
        if (v51)
        {
          v45 = 0;
          *&v76 = 0;
        }

        if (!v37 || v50)
        {
          if (v50)
          {
            CFRetain(v50);
          }
        }

        else
        {
          v52 = MEMORY[0x277D81150];
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSDImageAdjuster generateEnhancedAndAdjustedImageDataForSourceImage:enhancedImageData:completionHandler:]");
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageAdjuster.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v55, v53, v44, 141, 0, "Expected to find enhanced SDR data for an SDR rendition but only found HDR.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
          v50 = 0;
          LOBYTE(v44) = 0;
          *(&v76 + 1) = 0;
        }

        if (v45)
        {
          CFRetain(v45);
        }
      }

      else
      {

        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
      LOBYTE(v44) = 0;
    }

    if (v31)
    {
      v58 = objc_msgSend_newFilteredImageForImage_enhancedImage_(self, v34, v31, &v76);
      if (v58)
      {
        if (!objc_msgSend_hasHDRGainMap(v15, v34, v35))
        {
          v60 = 0;
          v59 = 0;
LABEL_50:
          if (v37)
          {
            v59 = objc_msgSend_newFilteredImageForImage_enhancedImage_(self, v34, v37, &v76 + 8);
          }

LABEL_52:
          if (v59)
          {
            v61 = v59 == v37;
          }

          else
          {
            v61 = 1;
          }

          v62 = v61;
          if (v58 == v31)
          {
            v63 = 1;
          }

          else
          {
            v63 = v60;
          }

          if (v63 == 1 && v62)
          {
            (*(handlerCopy + 2))(handlerCopy, v71, 0, 0);
            v14 = v72;
            v64 = v73;
            v65 = v74;
LABEL_75:
            CGImageRelease(*(&v76 + 1));
            CGImageRelease(v76);
            CGImageRelease(v59);
            CGImageRelease(v58);

            goto LABEL_76;
          }

          v14 = v72;
          v64 = v73;
          v65 = v74;
          if (v44)
          {
            if (!objc_msgSend_enhance(self->_imageAdjustments, v34, v35))
            {
              v67 = 0;
LABEL_71:
              if (__PAIR128__(v59, v58) == v76)
              {
                v69 = v67;
              }

              else
              {
                v69 = objc_msgSend_p_dataForSDRCGImage_HDRCGImage_provider_filenameSuffix_(self, v66, v59, v58, v15, @"-filtered");
              }

              v70 = v69;
              (*(handlerCopy + 2))(handlerCopy, v71, v67, v69);

              goto LABEL_75;
            }
          }

          else if (v76 != 0)
          {
            v68 = objc_msgSend_p_dataForSDRCGImage_HDRCGImage_provider_filenameSuffix_(self, v34, *(&v76 + 1));
LABEL_70:
            v67 = v68;
            goto LABEL_71;
          }

          v68 = dataCopy;
          goto LABEL_70;
        }

        v59 = objc_msgSend_p_createImageByToneMappingHDRImageToSDR_(self, v34, v58);
        v60 = 0;
        v35 = v76;
        if (v76 && !v50)
        {
          v60 = 0;
          *(&v76 + 1) = objc_msgSend_p_createImageByToneMappingHDRImageToSDR_(self, v34, v76);
          if (v59)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

LABEL_49:
        if (v59)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v58 = 0;
    }

    v59 = 0;
    v60 = 1;
    goto LABEL_49;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
LABEL_76:
}

- (CGImage)p_createImageByToneMappingHDRImageToSDR:(CGImage *)r
{
  v4 = objc_alloc(MEMORY[0x277CBF758]);
  v6 = objc_msgSend_initWithCGImage_(v4, v5, r);
  v8 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v7, @"CIToneMapHeadroom");
  objc_msgSend_setValue_forKey_(v8, v9, v6, @"inputImage");
  v10 = MEMORY[0x277CCABB0];
  CGImageGetContentHeadroom();
  v13 = objc_msgSend_numberWithFloat_(v10, v11, v12);
  objc_msgSend_setValue_forKey_(v8, v14, v13, @"inputSourceHeadroom");

  objc_msgSend_setValue_forKey_(v8, v15, &unk_28859C6A8, @"inputTargetHeadroom");
  v16 = objc_alloc_init(MEMORY[0x277CBF740]);
  Width = CGImageGetWidth(r);
  Height = CGImageGetHeight(r);
  v19 = TSUP3ColorSpace();
  v22 = objc_msgSend_outputImage(v8, v20, v21);
  CGImage_fromRect_format_colorSpace = objc_msgSend_createCGImage_fromRect_format_colorSpace_(v16, v23, v22, *MEMORY[0x277CBF9D8], v19, 0.0, 0.0, Width, Height);

  return CGImage_fromRect_format_colorSpace;
}

- (id)p_dataForSDRCGImage:(CGImage *)image HDRCGImage:(CGImage *)gImage provider:(id)provider filenameSuffix:(id)suffix
{
  v120[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  suffixCopy = suffix;
  if (image | gImage)
  {
    v23 = objc_msgSend_contextWithOptions_(MEMORY[0x277CBF740], v11, 0);
    if (image && gImage)
    {
      v24 = objc_msgSend_imageWithCGImage_(MEMORY[0x277CBF758], v21, image);
      v119 = *MEMORY[0x277CD3410];
      v25 = MEMORY[0x277CCABB0];
      objc_msgSend_orientation(providerCopy, v26, v27);
      v28 = CGImagePropertyOrientationValueForTSUImageOrientation();
      v30 = objc_msgSend_numberWithUnsignedInt_(v25, v29, v28);
      v120[0] = v30;
      v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v120, &v119, 1);
      v34 = objc_msgSend_imageBySettingProperties_(v24, v33, v32);

      v36 = objc_msgSend_imageWithCGImage_(MEMORY[0x277CBF758], v35, gImage);
      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v40 = v37;
      if (v36)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v37, v38, v36, *MEMORY[0x277CBFA98]);
      }

      if (objc_msgSend_isOpaque(providerCopy, v38, v39) && (objc_msgSend_imageData(providerCopy, v41, v42), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v43, v44, v45), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend_highEfficiencyImageTypes(MEMORY[0x277D81200], v47, v48), v49 = v40, v50 = v36, v51 = v34, v52 = suffixCopy, v53 = v23, v54 = objc_claimAutoreleasedReturnValue(), v114 = objc_msgSend_tsu_conformsToAnyUTI_(v46, v55, v54), v54, v23 = v53, suffixCopy = v52, v34 = v51, v36 = v50, v40 = v49, v46, v43, (v114 & 1) == 0))
      {
        v56 = objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v41, v42);
        ColorSpace = CGImageGetColorSpace(image);
        v60 = objc_msgSend_JPEGRepresentationOfImage_colorSpace_options_(v23, v97, v34, ColorSpace, v49);
      }

      else
      {
        v56 = objc_msgSend_identifier(*MEMORY[0x277CE1D98], v41, v42);
        v57 = *MEMORY[0x277CBF9C8];
        v58 = CGImageGetColorSpace(image);
        v60 = objc_msgSend_HEIFRepresentationOfImage_format_colorSpace_options_(v23, v59, v34, v57, v58, v40);
      }

      v89 = v60;
    }

    else
    {
      if (!image)
      {
        image = gImage;
      }

      v61 = objc_msgSend_imageData(providerCopy, v21, v22);
      v64 = objc_msgSend_type(v61, v62, v63);
      v67 = objc_msgSend_highEfficiencyImageTypes(MEMORY[0x277D81200], v65, v66);
      v69 = objc_msgSend_tsu_conformsToAnyUTI_(v64, v68, v67);

      if (v69)
      {
        v56 = objc_msgSend_identifier(*MEMORY[0x277CE1D98], v70, v71);
        v73 = objc_msgSend_imageWithCGImage_(MEMORY[0x277CBF758], v72, image);
        v117 = *MEMORY[0x277CD3410];
        v74 = MEMORY[0x277CCABB0];
        objc_msgSend_orientation(providerCopy, v75, v76);
        v77 = CGImagePropertyOrientationValueForTSUImageOrientation();
        v79 = objc_msgSend_numberWithUnsignedInt_(v74, v78, v77);
        v118 = v79;
        v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v80, &v118, &v117, 1);
        v83 = objc_msgSend_imageBySettingProperties_(v73, v82, v81);

        v84 = *MEMORY[0x277CBF9C8];
        v85 = CGImageGetColorSpace(image);
        v115 = *MEMORY[0x277CD2D48];
        v116 = &unk_28859C6B8;
        v87 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, &v116, &v115, 1);
        v89 = objc_msgSend_HEIFRepresentationOfImage_format_colorSpace_options_(v23, v88, v83, v84, v85, v87);
      }

      else
      {
        if (image == gImage)
        {
          v56 = objc_msgSend_identifier(*MEMORY[0x277CE1E10], v70, v71);
          v100 = objc_msgSend_orientation(providerCopy, v98, v99);
          v95 = objc_msgSend_p_dataForPNGRepresentationOfImage_redrawnInHDRColorSpaceWithOrientation_(self, v101, image, v100);
        }

        else
        {
          if (objc_msgSend_isOpaque(providerCopy, v70, v71))
          {
            v56 = objc_msgSend_identifier(*MEMORY[0x277CE1DC0], v91, v92);
            objc_msgSend_orientation(providerCopy, v93, v94);
            CGImageJPEGRepresentationWithOrientation();
          }

          else
          {
            v56 = objc_msgSend_identifier(*MEMORY[0x277CE1E10], v91, v92);
            objc_msgSend_orientation(providerCopy, v102, v103);
            CGImagePNGRepresentationWithOrientation();
          }
          v95 = ;
        }

        v89 = v95;
      }
    }

    v104 = objc_msgSend_p_adjustedImageNameForSourceImageProvider_adjustedImageType_filenameSuffix_(TSDImageAdjuster, v90, providerCopy, v56, suffixCopy);
    v105 = MEMORY[0x277D80828];
    v108 = objc_msgSend_imageData(providerCopy, v106, v107);
    v111 = objc_msgSend_context(v108, v109, v110);
    v20 = objc_msgSend_dataFromNSData_filename_context_(v105, v112, v89, v104, v111);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDImageAdjuster p_dataForSDRCGImage:HDRCGImage:provider:filenameSuffix:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageAdjuster.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 243, 0, "At least one image must be provided");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    v20 = 0;
  }

  return v20;
}

- (CGImage)newFilteredImageForImage:(CGImage *)image enhancedImage:(CGImage *)enhancedImage
{
  v268[1] = *MEMORY[0x277D85DE8];
  if (!image)
  {
    return 0;
  }

  imageCopy = image;
  imageAdjustments = self->_imageAdjustments;
  if (imageAdjustments)
  {
    v8 = objc_msgSend_enhance(imageAdjustments, a2, image);
    v9 = 0;
    if (enhancedImage)
    {
      if (v8)
      {
        v9 = *enhancedImage != 0;
        if (*enhancedImage)
        {
          imageCopy = *enhancedImage;
        }
      }
    }

    v10 = objc_alloc(MEMORY[0x277CBF758]);
    v12 = objc_msgSend_initWithCGImage_(v10, v11, imageCopy);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_enhance(self->_imageAdjustments, v14, v15);
    if (!v9 && v16)
    {
      v267 = *MEMORY[0x277CBFA10];
      v268[0] = MEMORY[0x277CBEC28];
      v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v268, &v267, 1);
      v21 = objc_msgSend_autoAdjustmentFiltersWithOptions_(v12, v20, v19);

      if (v21)
      {
        objc_msgSend_addObjectsFromArray_(v13, v22, v21);
      }

      if (enhancedImage && objc_msgSend_count(v21, v22, v23))
      {
        v249 = v12;
        v24 = v12;
        v260 = 0u;
        v261 = 0u;
        v262 = 0u;
        v263 = 0u;
        v248 = v21;
        v25 = v21;
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v260, v266, 16);
        if (v27)
        {
          v29 = v27;
          v30 = *v261;
          do
          {
            v31 = 0;
            v32 = v24;
            do
            {
              if (*v261 != v30)
              {
                objc_enumerationMutation(v25);
              }

              v33 = *(*(&v260 + 1) + 8 * v31);
              objc_msgSend_setValue_forKey_(v33, v28, v32, @"inputImage", v248);
              v24 = objc_msgSend_valueForKey_(v33, v34, @"outputImage");

              ++v31;
              v32 = v24;
            }

            while (v29 != v31);
            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v260, v266, 16);
          }

          while (v29);
        }

        *enhancedImage = objc_msgSend_p_newImageFromCIImage_underlyingImage_(self, v35, v24, imageCopy);
        v256 = 0u;
        v257 = 0u;
        v258 = 0u;
        v259 = 0u;
        v36 = v25;
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v256, v265, 16);
        if (v38)
        {
          v40 = v38;
          v41 = *v257;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v257 != v41)
              {
                objc_enumerationMutation(v36);
              }

              objc_msgSend_setValue_forKey_(*(*(&v256 + 1) + 8 * i), v39, 0, @"inputImage", v248);
            }

            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v256, v265, 16);
          }

          while (v40);
        }

        v12 = v249;
        v21 = v248;
      }
    }

    objc_msgSend_bottomLevel(self->_imageAdjustments, v17, v18, v248);
    if (v45 != 0.0 || (objc_msgSend_topLevel(self->_imageAdjustments, v43, v44), v47 != 1.0))
    {
      v48 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v43, @"CIColorMatrix");
      objc_msgSend_setDefaults(v48, v49, v50);
      objc_msgSend_bottomLevel(self->_imageAdjustments, v51, v52);
      v54 = v53;
      objc_msgSend_topLevel(self->_imageAdjustments, v55, v56);
      v58 = v57 - v54;
      v59 = 1.0 / v58;
      v60 = -v54 / v58;
      v63 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v61, v62, 1.0 / v58, 0.0, 0.0, 0.0);
      objc_msgSend_setValue_forKey_(v48, v64, v63, @"inputRVector");

      v67 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v65, v66, 0.0, v59, 0.0, 0.0);
      objc_msgSend_setValue_forKey_(v48, v68, v67, @"inputGVector");

      v71 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v69, v70, 0.0, 0.0, v59, 0.0);
      objc_msgSend_setValue_forKey_(v48, v72, v71, @"inputBVector");

      v75 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v73, v74, 0.0, 0.0, 0.0, 1.0);
      objc_msgSend_setValue_forKey_(v48, v76, v75, @"inputAVector");

      v79 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v77, v78, v60, v60, v60, 0.0);
      objc_msgSend_setValue_forKey_(v48, v80, v79, @"inputBiasVector");

      objc_msgSend_addObject_(v13, v81, v48);
    }

    objc_msgSend_gamma(self->_imageAdjustments, v43, v46);
    if (v84 != 0.0)
    {
      v85 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v82, @"CIGammaAdjust");
      objc_msgSend_setDefaults(v85, v86, v87);
      v88 = MEMORY[0x277CCABB0];
      objc_msgSend_gamma(self->_imageAdjustments, v89, v90);
      v92 = pow(v91 / 2.5 + 1.0, 3.0);
      v95 = objc_msgSend_numberWithDouble_(v88, v93, v94, v92);
      objc_msgSend_setValue_forKey_(v85, v96, v95, @"inputPower");

      objc_msgSend_addObject_(v13, v97, v85);
    }

    objc_msgSend_saturation(self->_imageAdjustments, v82, v83);
    if (v100 != 0.0 || (objc_msgSend_contrast(self->_imageAdjustments, v98, v99), v102 != 0.0))
    {
      v103 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v98, @"CIColorControls");
      objc_msgSend_setDefaults(v103, v104, v105);
      v106 = MEMORY[0x277CCABB0];
      objc_msgSend_saturation(self->_imageAdjustments, v107, v108);
      v112 = objc_msgSend_numberWithDouble_(v106, v110, v111, v109 + 1.0);
      objc_msgSend_setValue_forKey_(v103, v113, v112, @"inputSaturation");

      v114 = MEMORY[0x277CCABB0];
      objc_msgSend_contrast(self->_imageAdjustments, v115, v116);
      v118 = exp2(v117 + v117);
      v121 = objc_msgSend_numberWithDouble_(v114, v119, v120, v118);
      objc_msgSend_setValue_forKey_(v103, v122, v121, @"inputContrast");

      objc_msgSend_addObject_(v13, v123, v103);
    }

    objc_msgSend_exposure(self->_imageAdjustments, v98, v101);
    if (v126 != 0.0)
    {
      v127 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v124, @"CIExposureAdjust");
      objc_msgSend_setDefaults(v127, v128, v129);
      v130 = MEMORY[0x277CCABB0];
      objc_msgSend_exposure(self->_imageAdjustments, v131, v132);
      v135 = objc_msgSend_numberWithDouble_(v130, v133, v134);
      objc_msgSend_setValue_forKey_(v127, v136, v135, @"inputEV");

      objc_msgSend_addObject_(v13, v137, v127);
    }

    objc_msgSend_highlights(self->_imageAdjustments, v124, v125);
    if (v140 != 0.0 || (objc_msgSend_shadows(self->_imageAdjustments, v138, v139), v142 != 0.0))
    {
      v143 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v138, @"CIHighlightShadowAdjust");
      objc_msgSend_setDefaults(v143, v144, v145);
      v146 = MEMORY[0x277CCABB0];
      objc_msgSend_highlights(self->_imageAdjustments, v147, v148);
      v152 = objc_msgSend_numberWithDouble_(v146, v150, v151, (1.0 - v149) * 0.6);
      objc_msgSend_setValue_forKey_(v143, v153, v152, @"inputHighlightAmount");

      v154 = MEMORY[0x277CCABB0];
      objc_msgSend_shadows(self->_imageAdjustments, v155, v156);
      v160 = objc_msgSend_numberWithDouble_(v154, v158, v159, v157 * 0.4);
      objc_msgSend_setValue_forKey_(v143, v161, v160, @"inputShadowAmount");

      objc_msgSend_addObject_(v13, v162, v143);
    }

    objc_msgSend_sharpness(self->_imageAdjustments, v138, v141);
    if (v165 != 0.0)
    {
      v166 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v163, @"CIUnsharpMask");
      objc_msgSend_setDefaults(v166, v167, v168);
      v169 = MEMORY[0x277CCABB0];
      objc_msgSend_sharpness(self->_imageAdjustments, v170, v171);
      v175 = objc_msgSend_numberWithDouble_(v169, v173, v174, v172 * 4.0);
      objc_msgSend_setValue_forKey_(v166, v176, v175, @"inputRadius");

      v177 = MEMORY[0x277CCABB0];
      objc_msgSend_sharpness(self->_imageAdjustments, v178, v179);
      v183 = objc_msgSend_numberWithDouble_(v177, v181, v182, v180 * 0.75);
      objc_msgSend_setValue_forKey_(v166, v184, v183, @"inputIntensity");

      objc_msgSend_addObject_(v13, v185, v166);
    }

    objc_msgSend_denoise(self->_imageAdjustments, v163, v164);
    if (v188 != 0.0)
    {
      v189 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v186, @"CINoiseReduction");
      objc_msgSend_setDefaults(v189, v190, v191);
      v192 = MEMORY[0x277CCABB0];
      objc_msgSend_denoise(self->_imageAdjustments, v193, v194);
      v198 = objc_msgSend_numberWithDouble_(v192, v196, v197, v195 * 0.04);
      objc_msgSend_setValue_forKey_(v189, v199, v198, @"inputNoiseLevel");

      v200 = MEMORY[0x277CCABB0];
      objc_msgSend_denoise(self->_imageAdjustments, v201, v202);
      v206 = objc_msgSend_numberWithDouble_(v200, v204, v205, v203 * 0.6);
      objc_msgSend_setValue_forKey_(v189, v207, v206, @"inputSharpness");

      objc_msgSend_addObject_(v13, v208, v189);
    }

    objc_msgSend_temperature(self->_imageAdjustments, v186, v187);
    if (v211 != 0.0 || (objc_msgSend_tint(self->_imageAdjustments, v209, v210), v213 != 0.0))
    {
      v214 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v209, @"CITemperatureAndTint");
      objc_msgSend_setDefaults(v214, v215, v216);
      v219 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v217, v218, 10000.0, 0.0);
      objc_msgSend_setValue_forKey_(v214, v220, v219, @"inputNeutral");

      objc_msgSend_temperature(self->_imageAdjustments, v221, v222);
      v224 = v223 * 3500.0 + 10000.0;
      objc_msgSend_tint(self->_imageAdjustments, v225, v226);
      v230 = objc_msgSend_vectorWithX_Y_(MEMORY[0x277CBF788], v228, v229, v224, v227 * 75.0);
      objc_msgSend_setValue_forKey_(v214, v231, v230, @"inputTargetNeutral");
      objc_msgSend_addObject_(v13, v232, v214);
    }

    if (objc_msgSend_count(v13, v209, v212))
    {
      v250 = v12;
      v251 = imageCopy;
      v233 = v12;
      v252 = 0u;
      v253 = 0u;
      v254 = 0u;
      v255 = 0u;
      v234 = v13;
      v235 = v13;
      v237 = objc_msgSend_countByEnumeratingWithState_objects_count_(v235, v236, &v252, v264, 16);
      if (v237)
      {
        v239 = v237;
        v240 = *v253;
        do
        {
          v241 = 0;
          v242 = v233;
          do
          {
            if (*v253 != v240)
            {
              objc_enumerationMutation(v235);
            }

            v243 = *(*(&v252 + 1) + 8 * v241);
            objc_msgSend_setValue_forKey_(v243, v238, v242, @"inputImage");
            v233 = objc_msgSend_valueForKey_(v243, v244, @"outputImage");

            ++v241;
            v242 = v233;
          }

          while (v239 != v241);
          v239 = objc_msgSend_countByEnumeratingWithState_objects_count_(v235, v238, &v252, v264, 16);
        }

        while (v239);
      }

      v246 = objc_msgSend_p_newImageFromCIImage_underlyingImage_(self, v245, v233, v251);
      v12 = v250;
      v13 = v234;
    }

    else
    {
      v246 = CGImageRetain(imageCopy);
    }

    return v246;
  }

  return CGImageRetain(image);
}

- (CGImage)p_newImageFromCIImage:(id)image underlyingImage:(CGImage *)underlyingImage
{
  imageCopy = image;
  CGImageGetWidth(underlyingImage);
  CGImageGetHeight(underlyingImage);
  v8 = objc_msgSend_colorSpace(imageCopy, v6, v7);
  if (!v8)
  {
    ColorSpace = CGImageGetColorSpace(underlyingImage);
    if (!CGColorSpaceIsPQBased(ColorSpace))
    {
      goto LABEL_5;
    }

    v8 = TSUPQColorSpace();
  }

  ColorSpace = v8;
LABEL_5:
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    ColorSpace = TSUSRGBColorSpace();
  }

  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(MEMORY[0x277CBF740]);
  TSURectWithSize();
  CGImage_fromRect_format_colorSpace = objc_msgSend_createCGImage_fromRect_format_colorSpace_(v11, v12, imageCopy, *MEMORY[0x277CBF9D8], ColorSpace);

  objc_autoreleasePoolPop(v10);
  return CGImage_fromRect_format_colorSpace;
}

- (id)p_dataForPNGRepresentationOfImage:(CGImage *)image redrawnInHDRColorSpaceWithOrientation:(int64_t)orientation
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = TSUHLGColorSpace();
  v6 = CGColorSpaceGetName(v5);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v9 = TSUHLGColorSpace();
  v10 = TSDBitmapContextCreateWithColorSpace(v9, 0x63, Width, Height);
  TSURectWithSize();
  CGContextDrawImage(v10, v23, image);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  v20[0] = *MEMORY[0x277CD3410];
  v12 = MEMORY[0x277CCABB0];
  v13 = CGImagePropertyOrientationValueForTSUImageOrientation();
  v15 = objc_msgSend_numberWithUnsignedInt_(v12, v14, v13);
  v20[1] = *MEMORY[0x277CD3400];
  v21[0] = v15;
  v21[1] = v6;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v21, v20, 2);
  v18 = CGImagePNGRepresentationWithProperties();

  CGImageRelease(Image);

  return v18;
}

@end