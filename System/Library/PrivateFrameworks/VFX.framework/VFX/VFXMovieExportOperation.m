@interface VFXMovieExportOperation
- (CGImage)_copySnapshot:(CGSize)a3;
- (VFXMovieExportOperation)initWithRenderer:(id)a3 size:(CGSize)a4 attributes:(id)a5 outputURL:(id)a6;
- (void)_finishedExport;
- (void)appendImage:(CGImage *)a3 withPresentationTime:(id *)a4 usingAdaptor:(id)a5;
- (void)dealloc;
- (void)main;
- (void)renderAndAppendWithPresentationTime:(id *)a3 usingAdaptor:(id)a4 metalTextureCache:(__CVMetalTextureCache *)a5 cvQueue:(id)a6 completionBlock:(id)a7;
@end

@implementation VFXMovieExportOperation

- (VFXMovieExportOperation)initWithRenderer:(id)a3 size:(CGSize)a4 attributes:(id)a5 outputURL:(id)a6
{
  height = a4.height;
  width = a4.width;
  v166[3] = *MEMORY[0x1E69E9840];
  v164.receiver = self;
  v164.super_class = VFXMovieExportOperation;
  v11 = [(VFXMovieExportOperation *)&v164 init];
  v14 = v11;
  if (v11)
  {
    objc_msgSend_setAntialiasingMode_(v11, v12, 2, v13);
    v20 = objc_msgSend_mutableCopy(a5, v15, v16, v17);
    if (!v20)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    objc_msgSend_removeObjectForKey_(v20, v18, @"kExportPointOfViewAttribute", v19);
    v23 = objc_msgSend_valueForKey_(v20, v21, @"rate", v22);
    objc_msgSend_floatValue(v23, v24, v25, v26);
    v14->_rate = v27;
    objc_msgSend_removeObjectForKey_(v20, v28, @"rate", v29);
    if (v14->_rate == 0.0)
    {
      v14->_rate = 0.033333;
    }

    v32 = objc_msgSend_valueForKey_(v20, v30, @"VFXExportMovieFrameRate", v31);
    v36 = objc_msgSend_intValue(v32, v33, v34, v35);
    objc_msgSend_removeObjectForKey_(v20, v37, @"VFXExportMovieFrameRate", v38);
    if (v36)
    {
      v14->_rate = 1.0 / v36;
    }

    v41 = objc_msgSend_valueForKey_(v20, v39, @"VFXExportMovieMirrored", v40);
    v14->_mirrored = objc_msgSend_BOOLValue(v41, v42, v43, v44);
    objc_msgSend_removeObjectForKey_(v20, v45, @"VFXExportMovieMirrored", v46);
    v49 = objc_msgSend_valueForKey_(v20, v47, @"VFXExportMovieSupersamplingFactor", v48);
    objc_msgSend_floatValue(v49, v50, v51, v52);
    v14->_supersampling = v53;
    objc_msgSend_removeObjectForKey_(v20, v54, @"VFXExportMovieSupersamplingFactor", v55);
    if (v14->_supersampling == 0.0)
    {
      v14->_supersampling = 1.0;
    }

    objc_msgSend_removeObjectForKey_(v20, v56, @"QTAddImageCodecType", v57);
    objc_msgSend_removeObjectForKey_(v20, v58, @"QTMovieRateAttribute", v59);
    v60 = *MEMORY[0x1E6987CB0];
    v63 = objc_msgSend_objectForKey_(v20, v61, *MEMORY[0x1E6987CB0], v62);
    v66 = *MEMORY[0x1E6987CA0];
    if (!v63)
    {
      objc_msgSend_setValue_forKey_(v20, v64, *MEMORY[0x1E6987CA0], v60);
    }

    if (objc_msgSend_valueForKey_(v20, v64, v60, v65) == v66)
    {
      v69 = *MEMORY[0x1E6987DB8];
      v165[0] = *MEMORY[0x1E6987C60];
      v165[1] = v69;
      v70 = *MEMORY[0x1E6987DB0];
      v166[0] = &unk_1F25D44E0;
      v166[1] = v70;
      v165[2] = *MEMORY[0x1E6987D80];
      v166[2] = &unk_1F25D44F8;
      v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v67, v166, v165, 3);
      objc_msgSend_setValue_forKey_(v20, v72, v71, *MEMORY[0x1E6987D30]);
    }

    v73 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v67, width, v68);
    objc_msgSend_setValue_forKey_(v20, v74, v73, *MEMORY[0x1E6987E08]);
    v77 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v75, height, v76);
    objc_msgSend_setValue_forKey_(v20, v78, v77, *MEMORY[0x1E6987D70]);
    v79 = objc_alloc(MEMORY[0x1E6987EE0]);
    v14->_assetWriterInput = objc_msgSend_initWithMediaType_outputSettings_(v79, v80, *MEMORY[0x1E6987608], v20);
    v84 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v81, v82, v83);
    objc_msgSend_setExpectsMediaDataInRealTime_(v14->_assetWriterInput, v85, 0, v86);
    v89 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v87, 1111970369, v88);
    objc_msgSend_setObject_forKey_(v84, v90, v89, *MEMORY[0x1E6966130]);
    v93 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v91, width, v92);
    objc_msgSend_setObject_forKey_(v84, v94, v93, *MEMORY[0x1E6966208]);
    v97 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v95, height, v96);
    objc_msgSend_setObject_forKey_(v84, v98, v97, *MEMORY[0x1E69660B8]);
    v102 = objc_msgSend_device(a3, v99, v100, v101);
    v104 = MEMORY[0x1E6966030];
    if (v102)
    {
      v104 = MEMORY[0x1E6966100];
    }

    objc_msgSend_setObject_forKey_(v84, v103, MEMORY[0x1E695E118], *v104);
    v105 = objc_alloc(MEMORY[0x1E6987F08]);
    v14->_avAdaptor = objc_msgSend_initWithAssetWriterInput_sourcePixelBufferAttributes_(v105, v106, v14->_assetWriterInput, v84);
    v163 = 0;
    v110 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v107, v108, v109);
    objc_msgSend_removeItemAtURL_error_(v110, v111, a6, 0);
    v112 = objc_alloc(MEMORY[0x1E6987ED8]);
    v114 = objc_msgSend_initWithURL_fileType_error_(v112, v113, a6, *MEMORY[0x1E69874C0], &v163);
    v14->_assetWriter = v114;
    if (objc_msgSend_status(v114, v115, v116, v117) == 3)
    {
      v120 = sub_1AF0D5194();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFACB0(a6, &v163, v120);
      }

      return 0;
    }

    else
    {
      objc_msgSend_addInput_(v14->_assetWriter, v118, v14->_assetWriterInput, v119);
      objc_msgSend_startWriting(v14->_assetWriter, v121, v122, v123);
      assetWriter = v14->_assetWriter;
      v162[0] = 0;
      v162[1] = 0x100000001;
      v162[2] = 0;
      objc_msgSend_startSessionAtSourceTime_(assetWriter, v125, v162, v126);
      objc_msgSend_setRenderer_(v14, v127, a3, v128);
      objc_msgSend_setSize_(v14, v129, v130, v131, width, height);
      objc_msgSend_setAttributes_(v14, v132, v20, v133);
      v137 = objc_msgSend_world(a3, v134, v135, v136);
      objc_msgSend_startTime(v137, v138, v139, v140);
      objc_msgSend_setStartTime_(v14, v141, v142, v143);
      v147 = objc_msgSend_world(a3, v144, v145, v146);
      objc_msgSend_endTime(v147, v148, v149, v150);
      objc_msgSend_setEndTime_(v14, v151, v152, v153);
      objc_msgSend_setOutputURL_(v14, v154, a6, v155);
      v158 = objc_msgSend_objectForKey_(a5, v156, @"kExportPointOfViewAttribute", v157);
      objc_msgSend_setPointOfView_(v14, v159, v158, v160);
    }
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMovieExportOperation;
  [(_VFXExportOperation *)&v3 dealloc];
}

- (CGImage)_copySnapshot:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v11 = objc_msgSend_renderer(self, a2, v3, v4);
  systemTime = self->super._systemTime;
  if (systemTime == 0.0)
  {
    v13 = CACurrentMediaTime();
  }

  else
  {
    v13 = systemTime + self->_rate;
  }

  self->super._systemTime = v13;
  objc_msgSend_updateAtTime_(v11, v8, v9, v10);
  v17 = objc_msgSend_snapshotWithSize_(v11, v14, v15, v16, width, height);
  v21 = objc_msgSend_CGImage(v17, v18, v19, v20);

  return CGImageRetain(v21);
}

- (void)_finishedExport
{
  if (!objc_msgSend_error(self, a2, v2, v3))
  {
    objc_msgSend_setSucceded_(self, v5, 1, v7);
  }

  v8 = objc_msgSend_delegate(self, v5, v6, v7);
  objc_msgSend_didEndSelector(self, v9, v10, v11);
  if (objc_opt_respondsToSelector())
  {
    v15 = objc_msgSend_didEndSelector(self, v12, v13, v14);
    v19 = objc_msgSend_userInfo(self, v16, v17, v18);

    [v8 v15];
  }
}

- (void)appendImage:(CGImage *)a3 withPresentationTime:(id *)a4 usingAdaptor:(id)a5
{
  pixelBufferOut = 0;
  v10 = objc_msgSend_pixelBufferPool(a5, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v11, &pixelBufferOut))
    {
      sub_1AFDFAD3C(a2, self, v14, v15);
    }

    ColorSpace = CGImageGetColorSpace(a3);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v19 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, ColorSpace, 0x2006u);
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = Width;
    v26.size.height = Height;
    CGContextClearRect(v19, v26);
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    v27.size.width = Width;
    v27.size.height = Height;
    CGContextDrawImage(v19, v27, a3);
    CGContextFlush(v19);
    CFRelease(v19);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v23 = *&a4->var0;
    var3 = a4->var3;
    if ((objc_msgSend_appendPixelBuffer_withPresentationTime_(a5, v20, pixelBufferOut, &v23) & 1) == 0)
    {
      v21 = sub_1AF0D5194();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFAD8C();
      }
    }

    CFRelease(pixelBufferOut);
  }

  else
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFADC0();
    }
  }
}

- (void)renderAndAppendWithPresentationTime:(id *)a3 usingAdaptor:(id)a4 metalTextureCache:(__CVMetalTextureCache *)a5 cvQueue:(id)a6 completionBlock:(id)a7
{
  pixelBufferOut = 0;
  v14 = objc_msgSend_pixelBufferPool(a4, a2, a3, a4);
  if (v14)
  {
    v204 = a7;
    v15 = *MEMORY[0x1E695E480];
    if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v14, &pixelBufferOut))
    {
      sub_1AFDFADF4(a2, self, v16, v17);
    }

    textureOut = 0;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBufferOut, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, 0);
    CVMetalTextureCacheCreateTextureFromImage(v15, a5, pixelBufferOut, 0, MTLPixelFormatBGRA8Unorm_sRGB, WidthOfPlane, HeightOfPlane, 0, &textureOut);
    v23 = objc_msgSend_renderPassDescriptor(MEMORY[0x1E6974128], v20, v21, v22);
    v27 = objc_msgSend_colorAttachments(v23, v24, v25, v26);
    v30 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 0, v29);
    objc_msgSend_setLoadAction_(v30, v31, 2, v32);
    v36 = objc_msgSend_renderer(self, v33, v34, v35);
    v40 = objc_msgSend_world(v36, v37, v38, v39);
    v44 = objc_msgSend_background(v40, v41, v42, v43);
    v48 = objc_msgSend_contents(v44, v45, v46, v47);
    objc_opt_class();
    v52 = 1.0;
    v53 = 1.0;
    v54 = 1.0;
    v55 = 1.0;
    if (objc_opt_isKindOfClass())
    {
      v210 = 0.0;
      v211 = 0.0;
      v208 = 0.0;
      v209 = 0.0;
      objc_msgSend_getRed_green_blue_alpha_(v48, v49, &v211, &v210, &v209, &v208);
      v53 = v210;
      v52 = v211;
      v55 = v208;
      v54 = v209;
    }

    v56 = objc_msgSend_colorAttachments(v23, v49, v50, v51);
    v59 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, 0, v58);
    objc_msgSend_setClearColor_(v59, v60, v61, v62, v52, v53, v54, v55);
    v64 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x1E69741C0], v63, 81, WidthOfPlane, HeightOfPlane, 0);
    v68 = objc_msgSend_renderer(self, v65, v66, v67);
    v72 = objc_msgSend_device(v68, v69, v70, v71);
    if (j__objc_msgSend_supportsMemorylessRenderTargets(v72, v73, v74, v75))
    {
      objc_msgSend_setStorageMode_(v64, v76, 3, v77);
    }

    else
    {
      objc_msgSend_setStorageMode_(v64, v76, 2, v77);
    }

    objc_msgSend_setUsage_(v64, v78, 5, v79);
    if (objc_msgSend_antialiasingMode(self, v80, v81, v82))
    {
      v86 = objc_msgSend_antialiasingMode(self, v83, v84, v85);
      objc_msgSend_setSampleCount_(v64, v87, 1 << v86, v88);
      objc_msgSend_setTextureType_(v64, v89, 4, v90);
      v94 = objc_msgSend_renderer(self, v91, v92, v93);
      v98 = objc_msgSend_device(v94, v95, v96, v97);
      v101 = objc_msgSend_newTextureWithDescriptor_(v98, v99, v64, v100);
      v105 = objc_msgSend_colorAttachments(v23, v102, v103, v104);
      v108 = objc_msgSend_objectAtIndexedSubscript_(v105, v106, 0, v107);
      objc_msgSend_setTexture_(v108, v109, v101, v110);
      Texture = CVMetalTextureGetTexture(textureOut);
      v115 = objc_msgSend_colorAttachments(v23, v112, v113, v114);
      v118 = objc_msgSend_objectAtIndexedSubscript_(v115, v116, 0, v117);
      objc_msgSend_setResolveTexture_(v118, v119, Texture, v120);
      v124 = objc_msgSend_colorAttachments(v23, v121, v122, v123);
      v127 = objc_msgSend_objectAtIndexedSubscript_(v124, v125, 0, v126);
      objc_msgSend_setStoreAction_(v127, v128, 2, v129);
    }

    else
    {
      v134 = CVMetalTextureGetTexture(textureOut);
      v138 = objc_msgSend_colorAttachments(v23, v135, v136, v137);
      v141 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, 0, v140);
      objc_msgSend_setTexture_(v141, v142, v134, v143);
    }

    v144 = objc_msgSend_renderer(self, v130, v131, v132);
    v148 = objc_msgSend_commandQueue(v144, v145, v146, v147);
    v152 = objc_msgSend_commandBuffer(v148, v149, v150, v151);
    objc_msgSend_lock(VFXTransaction, v153, v154, v155);
    v159 = objc_msgSend_renderer(self, v156, v157, v158);
    v163 = objc_msgSend_world(v159, v160, v161, v162);
    objc_msgSend_lock(v163, v164, v165, v166);
    systemTime = self->super._systemTime;
    if (systemTime == 0.0)
    {
      v171 = CACurrentMediaTime();
    }

    else
    {
      v171 = systemTime + self->_rate;
    }

    self->super._systemTime = v171;
    objc_msgSend_startTime(v163, v167, v168, v169);
    v173 = v172 + (a3->var0 / a3->var1);
    v177 = objc_msgSend_clock(v163, v174, v175, v176);
    objc_msgSend_setTime_(v177, v178, v179, v180, v173);
    v184 = objc_msgSend_renderer(self, v181, v182, v183);
    objc_msgSend_updateAtTime_(v184, v185, v186, v187, self->super._systemTime);
    v191 = objc_msgSend_renderer(self, v188, v189, v190);
    objc_msgSend_renderWithViewport_commandBuffer_passDescriptor_(v191, v192, v152, v23, 0.0, 0.0, WidthOfPlane, HeightOfPlane);
    objc_msgSend_unlock(v163, v193, v194, v195);
    objc_msgSend_unlock(VFXTransaction, v196, v197, v198);
    v205[0] = MEMORY[0x1E69E9820];
    v205[1] = 3221225472;
    v205[2] = sub_1AF36F308;
    v205[3] = &unk_1E7A7F940;
    v205[4] = a6;
    v205[5] = self;
    v206 = *&a3->var0;
    var3 = a3->var3;
    v205[8] = pixelBufferOut;
    v205[9] = textureOut;
    v205[10] = a5;
    v205[6] = a4;
    v205[7] = v204;
    objc_msgSend_addCompletedHandler_(v152, v199, v205, v200);
    objc_msgSend_commit(v152, v201, v202, v203);
  }

  else
  {
    v133 = sub_1AF0D5194();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFADC0();
    }
  }
}

- (void)main
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (!objc_msgSend_renderer(self, v4, v5, v6))
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFAE44(v10);
    }
  }

  objc_msgSend_startTime(self, v7, v8, v9);
  v12 = v11;
  objc_msgSend_endTime(self, v13, v14, v15);
  v17 = v16;
  v18 = v12;
  rate = self->_rate;
  v20 = dispatch_queue_create("serial assetwriter input queue", 0);
  v21 = dispatch_semaphore_create(0);
  v22 = dispatch_semaphore_create(0);
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v82 = v18;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x2020000000;
  v80[3] = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v79 = 0;
  v26 = objc_msgSend_renderer(self, v23, v24, v25);
  v30 = objc_msgSend_device(v26, v27, v28, v29);
  v34 = v30 != 0;
  cacheOut = 0;
  if (v30)
  {
    v35 = objc_msgSend_renderer(self, v31, v32, v33);
    v39 = objc_msgSend_device(v35, v36, v37, v38);
    CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, v39, 0, &cacheOut);
    v43 = objc_msgSend__copySnapshot_(self, v40, v41, v42, 1.0, 1.0);
    CFRelease(v43);
  }

  v44 = objc_msgSend_currentProgress(MEMORY[0x1E696AE38], v31, v32, v33);
  if (v44)
  {
    v47 = v17;
    v44 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v45, vcvtps_s32_f32((v47 - v18) / rate), v46);
  }

  assetWriterInput = self->_assetWriterInput;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_1AF36F81C;
  v72[3] = &unk_1E7A7F990;
  v72[4] = v44;
  v72[5] = self;
  v73 = rate;
  v74 = v17;
  v76 = v34;
  v72[8] = v81;
  v72[9] = v78;
  v72[10] = v80;
  v72[11] = cacheOut;
  v75 = v18;
  v72[6] = v20;
  v72[7] = v21;
  objc_msgSend_requestMediaDataWhenReadyOnQueue_usingBlock_(assetWriterInput, v45, v20, v72);
  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  assetWriter = self->_assetWriter;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = sub_1AF36FB50;
  v71[3] = &unk_1E7A7A770;
  v71[4] = v22;
  objc_msgSend_finishWritingWithCompletionHandler_(assetWriter, v50, v71, v51);
  dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v21);
  dispatch_release(v22);
  dispatch_release(v20);
  if (cacheOut)
  {
    CFRelease(cacheOut);
  }

  if (objc_msgSend_error(self->_assetWriter, v52, v53, v54))
  {
    v59 = objc_msgSend_error(self->_assetWriter, v55, v56, v57);
    objc_msgSend_setError_(self, v60, v59, v61);
    v62 = sub_1AF0D5194();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_msgSend_error(self->_assetWriter, v55, v56, v57);
      v67 = objc_msgSend_localizedDescription(v63, v64, v65, v66);
      sub_1AFDFAEC8(v67, buf, v62);
    }
  }

  LODWORD(v58) = 1.0;
  objc_msgSend_setProgress_(self, v55, v56, v57, v58);
  _Block_object_dispose(v78, 8);
  _Block_object_dispose(v80, 8);
  _Block_object_dispose(v81, 8);
  objc_autoreleasePoolPop(v3);
  objc_msgSend__finishedExport(self, v68, v69, v70);
}

@end