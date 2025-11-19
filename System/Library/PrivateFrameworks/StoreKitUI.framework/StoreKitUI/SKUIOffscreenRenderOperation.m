@interface SKUIOffscreenRenderOperation
+ (void)preheatOffscreenRenderOperations;
- (SKUIOffscreenRenderOperation)init;
- (UIImage)outputImage;
- (id)createLayerBlock;
- (void)init;
- (void)main;
- (void)setCreateLayerBlock:(id)a3;
@end

@implementation SKUIOffscreenRenderOperation

- (SKUIOffscreenRenderOperation)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIOffscreenRenderOperation init];
  }

  v7.receiver = self;
  v7.super_class = SKUIOffscreenRenderOperation;
  v3 = [(SKUIOffscreenRenderOperation *)&v7 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.StoreKitUI.SKUIOffscreenRenderOperation.accessQueu", MEMORY[0x277D85CD8]);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v4;
  }

  return v3;
}

- (void)main
{
  v134[5] = *MEMORY[0x277D85DE8];
  if (([(SKUIOffscreenRenderOperation *)self isCancelled]& 1) == 0)
  {
    v3 = CACurrentMediaTime();
    v4 = [(SKUIOffscreenRenderOperation *)self createLayerBlock];
    v126 = 0;
    v127 = 0;
    _SKUIOffscreenRenderOperationPopRenderingContext(&v127, &v126);
    v5 = v127;
    v6 = v126;
    v7 = v6;
    if (!v5 || !v6)
    {
      goto LABEL_208;
    }

    v8 = [getEAGLContextClass() currentContext];
    [getEAGLContextClass() setCurrentContext:v7];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v9 = *(MEMORY[0x277CBF398] + 16);
    v125.origin = *MEMORY[0x277CBF398];
    v125.size = v9;
    if (!v4 || ((v4)[2](v4, &v125), v119 = objc_claimAutoreleasedReturnValue(), v119, !v119))
    {
LABEL_207:
      [getEAGLContextClass() setCurrentContext:v8];
      _SKUIOffscreenRenderOperationPushRenderingContext(v5, v7);

LABEL_208:
      v110 = CACurrentMediaTime();
      NSLog(&cfstr_Skuioffscreenr_2.isa, v110 - v3);

      return;
    }

    if (CGRectIsNull(v125))
    {
      [v119 bounds];
      v125.origin.x = v10;
      v125.origin.y = v11;
      v125.size.width = v12;
      v125.size.height = v13;
    }

    [v119 contentsScale];
    v15 = v14;
    [v119 rasterizationScale];
    v17 = v16;
    v118 = [MEMORY[0x277CD9ED0] layer];
    [v118 setContentsScale:v15];
    [v118 addSublayer:v119];
    [v118 convertRect:v119 fromLayer:{*&v125.origin, *&v125.size}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    memset(&v124, 0, sizeof(v124));
    CATransform3DMakeScale(&v124, 1.0, -1.0, 1.0);
    v123 = v124;
    [v118 setTransform:&v123];
    [v5 setLayer:v118];
    [v5 setBounds:{v19, v21, v23, v25}];
    [MEMORY[0x277CD9FF0] commit];
    [MEMORY[0x277CD9FF0] flush];
    if (([(SKUIOffscreenRenderOperation *)self isCancelled]& 1) != 0)
    {
LABEL_206:

      goto LABEL_207;
    }

    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v26 = getkIOSurfaceWidthSymbolLoc_ptr;
    v132 = getkIOSurfaceWidthSymbolLoc_ptr;
    if (!getkIOSurfaceWidthSymbolLoc_ptr)
    {
      *&v123.m11 = MEMORY[0x277D85DD0];
      *&v123.m12 = 3221225472;
      *&v123.m13 = __getkIOSurfaceWidthSymbolLoc_block_invoke;
      *&v123.m14 = &unk_2781FA3E0;
      *&v123.m21 = &v129;
      v27 = IOSurfaceLibrary();
      v28 = dlsym(v27, "kIOSurfaceWidth");
      *(*(*&v123.m21 + 8) + 24) = v28;
      getkIOSurfaceWidthSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
      v26 = v130[3];
    }

    _Block_object_dispose(&v129, 8);
    if (!v26)
    {
      goto LABEL_210;
    }

    v29 = *v26;
    v133[0] = v29;
    v135.origin.x = v19;
    v135.origin.y = v21;
    v135.size.width = v23;
    v135.size.height = v25;
    v116 = [MEMORY[0x277CCABB0] numberWithDouble:v17 * CGRectGetWidth(v135)];
    v134[0] = v116;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v30 = getkIOSurfaceHeightSymbolLoc_ptr;
    v132 = getkIOSurfaceHeightSymbolLoc_ptr;
    if (!getkIOSurfaceHeightSymbolLoc_ptr)
    {
      *&v123.m11 = MEMORY[0x277D85DD0];
      *&v123.m12 = 3221225472;
      *&v123.m13 = __getkIOSurfaceHeightSymbolLoc_block_invoke;
      *&v123.m14 = &unk_2781FA3E0;
      *&v123.m21 = &v129;
      v31 = IOSurfaceLibrary();
      v32 = dlsym(v31, "kIOSurfaceHeight");
      *(*(*&v123.m21 + 8) + 24) = v32;
      getkIOSurfaceHeightSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
      v30 = v130[3];
    }

    _Block_object_dispose(&v129, 8);
    if (!v30)
    {
      goto LABEL_210;
    }

    v112 = *v30;
    v133[1] = v112;
    v136.origin.x = v19;
    v136.origin.y = v21;
    v136.size.width = v23;
    v136.size.height = v25;
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:v17 * CGRectGetHeight(v136)];
    v134[1] = v33;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v34 = getkIOSurfaceBytesPerElementSymbolLoc_ptr;
    v132 = getkIOSurfaceBytesPerElementSymbolLoc_ptr;
    if (!getkIOSurfaceBytesPerElementSymbolLoc_ptr)
    {
      *&v123.m11 = MEMORY[0x277D85DD0];
      *&v123.m12 = 3221225472;
      *&v123.m13 = __getkIOSurfaceBytesPerElementSymbolLoc_block_invoke;
      *&v123.m14 = &unk_2781FA3E0;
      *&v123.m21 = &v129;
      v35 = IOSurfaceLibrary();
      v36 = dlsym(v35, "kIOSurfaceBytesPerElement");
      *(*(*&v123.m21 + 8) + 24) = v36;
      getkIOSurfaceBytesPerElementSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
      v34 = v130[3];
    }

    v113 = v29;
    v37 = v8;
    _Block_object_dispose(&v129, 8);
    if (!v34)
    {
      goto LABEL_210;
    }

    v38 = *v34;
    v133[2] = v38;
    v134[2] = &unk_2828D2C60;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v39 = getkIOSurfacePixelFormatSymbolLoc_ptr;
    v132 = getkIOSurfacePixelFormatSymbolLoc_ptr;
    if (!getkIOSurfacePixelFormatSymbolLoc_ptr)
    {
      *&v123.m11 = MEMORY[0x277D85DD0];
      *&v123.m12 = 3221225472;
      *&v123.m13 = __getkIOSurfacePixelFormatSymbolLoc_block_invoke;
      *&v123.m14 = &unk_2781FA3E0;
      *&v123.m21 = &v129;
      v40 = IOSurfaceLibrary();
      v41 = dlsym(v40, "kIOSurfacePixelFormat");
      *(*(*&v123.m21 + 8) + 24) = v41;
      getkIOSurfacePixelFormatSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
      v39 = v130[3];
    }

    _Block_object_dispose(&v129, 8);
    if (!v39)
    {
      goto LABEL_210;
    }

    v42 = *v39;
    v133[3] = v42;
    v134[3] = &unk_2828D2C78;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v43 = getkIOSurfaceIsGlobalSymbolLoc_ptr;
    v132 = getkIOSurfaceIsGlobalSymbolLoc_ptr;
    if (!getkIOSurfaceIsGlobalSymbolLoc_ptr)
    {
      *&v123.m11 = MEMORY[0x277D85DD0];
      *&v123.m12 = 3221225472;
      *&v123.m13 = __getkIOSurfaceIsGlobalSymbolLoc_block_invoke;
      *&v123.m14 = &unk_2781FA3E0;
      *&v123.m21 = &v129;
      v44 = IOSurfaceLibrary();
      v45 = dlsym(v44, "kIOSurfaceIsGlobal");
      *(*(*&v123.m21 + 8) + 24) = v45;
      getkIOSurfaceIsGlobalSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
      v43 = v130[3];
    }

    _Block_object_dispose(&v129, 8);
    if (!v43)
    {
      goto LABEL_210;
    }

    v46 = *v43;
    v133[4] = v46;
    v134[4] = MEMORY[0x277CBEC28];
    v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:5];
    v8 = v37;

    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v47 = getIOSurfaceCreateSymbolLoc_ptr;
    v132 = getIOSurfaceCreateSymbolLoc_ptr;
    if (!getIOSurfaceCreateSymbolLoc_ptr)
    {
      *&v123.m11 = MEMORY[0x277D85DD0];
      *&v123.m12 = 3221225472;
      *&v123.m13 = __getIOSurfaceCreateSymbolLoc_block_invoke;
      *&v123.m14 = &unk_2781FA3E0;
      *&v123.m21 = &v129;
      v48 = IOSurfaceLibrary();
      v49 = dlsym(v48, "IOSurfaceCreate");
      *(*(*&v123.m21 + 8) + 24) = v49;
      getIOSurfaceCreateSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
      v47 = v130[3];
    }

    _Block_object_dispose(&v129, 8);
    if (!v47)
    {
      goto LABEL_210;
    }

    v50 = v47(v115);
    if (!v50)
    {
      goto LABEL_193;
    }

    v122 = 0;
    v117 = v7;
    HIDWORD(v128) = 0;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v51 = getglGenTexturesSymbolLoc_ptr;
    v132 = getglGenTexturesSymbolLoc_ptr;
    if (!getglGenTexturesSymbolLoc_ptr)
    {
      *&v123.m11 = MEMORY[0x277D85DD0];
      *&v123.m12 = 3221225472;
      *&v123.m13 = __getglGenTexturesSymbolLoc_block_invoke;
      *&v123.m14 = &unk_2781FA3E0;
      *&v123.m21 = &v129;
      v52 = OpenGLESLibrary();
      v53 = dlsym(v52, "glGenTextures");
      *(*(*&v123.m21 + 8) + 24) = v53;
      getglGenTexturesSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
      v51 = v130[3];
    }

    _Block_object_dispose(&v129, 8);
    if (!v51)
    {
      goto LABEL_210;
    }

    v51(1, &v128 + 4);
    Error = _SKUIglGetError();
    if (Error <= 1280)
    {
      if (!Error)
      {
        goto LABEL_43;
      }

      if (Error == 1280)
      {
        v55 = "invalid enum";
        goto LABEL_42;
      }
    }

    else
    {
      switch(Error)
      {
        case 0x501:
          v55 = "invalid value";
          goto LABEL_42;
        case 0x502:
          v55 = "invalid operation";
          goto LABEL_42;
        case 0x505:
          v55 = "out of memory";
LABEL_42:
          NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 248, Error, v55);
LABEL_43:
          _SKUIglBindTexture(HIDWORD(v128));
          v56 = _SKUIglGetError();
          if (v56 <= 1280)
          {
            if (!v56)
            {
              goto LABEL_55;
            }

            if (v56 == 1280)
            {
              v57 = "invalid enum";
              goto LABEL_54;
            }
          }

          else
          {
            switch(v56)
            {
              case 0x501:
                v57 = "invalid value";
                goto LABEL_54;
              case 0x502:
                v57 = "invalid operation";
                goto LABEL_54;
              case 0x505:
                v57 = "out of memory";
LABEL_54:
                NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 252, v56, v57);
LABEL_55:
                v129 = 0;
                v130 = &v129;
                v131 = 0x2020000000;
                v58 = getIOSurfaceGetWidthSymbolLoc_ptr;
                v132 = getIOSurfaceGetWidthSymbolLoc_ptr;
                if (!getIOSurfaceGetWidthSymbolLoc_ptr)
                {
                  *&v123.m11 = MEMORY[0x277D85DD0];
                  *&v123.m12 = 3221225472;
                  *&v123.m13 = __getIOSurfaceGetWidthSymbolLoc_block_invoke;
                  *&v123.m14 = &unk_2781FA3E0;
                  *&v123.m21 = &v129;
                  v59 = IOSurfaceLibrary();
                  v60 = dlsym(v59, "IOSurfaceGetWidth");
                  *(*(*&v123.m21 + 8) + 24) = v60;
                  getIOSurfaceGetWidthSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                  v58 = v130[3];
                }

                _Block_object_dispose(&v129, 8);
                if (!v58)
                {
                  goto LABEL_210;
                }

                v114 = v58(v50);
                v129 = 0;
                v130 = &v129;
                v131 = 0x2020000000;
                v61 = getIOSurfaceGetHeightSymbolLoc_ptr;
                v132 = getIOSurfaceGetHeightSymbolLoc_ptr;
                if (!getIOSurfaceGetHeightSymbolLoc_ptr)
                {
                  *&v123.m11 = MEMORY[0x277D85DD0];
                  *&v123.m12 = 3221225472;
                  *&v123.m13 = __getIOSurfaceGetHeightSymbolLoc_block_invoke;
                  *&v123.m14 = &unk_2781FA3E0;
                  *&v123.m21 = &v129;
                  v62 = IOSurfaceLibrary();
                  v63 = dlsym(v62, "IOSurfaceGetHeight");
                  *(*(*&v123.m21 + 8) + 24) = v63;
                  getIOSurfaceGetHeightSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                  v61 = v130[3];
                }

                _Block_object_dispose(&v129, 8);
                if (!v61)
                {
                  goto LABEL_210;
                }

                v64 = v61(v50);
                BYTE4(v111) = 0;
                LODWORD(v111) = 0;
                [v117 texImageIOSurface:v50 target:3553 internalFormat:6408 width:v114 height:v64 format:32993 type:33639 plane:v111 invert:?];
                v65 = _SKUIglGetError();
                if (v65 <= 1280)
                {
                  if (!v65)
                  {
                    goto LABEL_73;
                  }

                  if (v65 == 1280)
                  {
                    v66 = "invalid enum";
                    goto LABEL_72;
                  }
                }

                else
                {
                  switch(v65)
                  {
                    case 0x501:
                      v66 = "invalid value";
                      goto LABEL_72;
                    case 0x502:
                      v66 = "invalid operation";
                      goto LABEL_72;
                    case 0x505:
                      v66 = "out of memory";
LABEL_72:
                      NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 257, v65, v66);
LABEL_73:
                      _SKUIglTexParameteri(10241, 9728);
                      _SKUIglTexParameteri(10240, 9728);
                      _SKUIglTexParameteri(10242, 33071);
                      _SKUIglTexParameteri(10243, 33071);
                      v67 = _SKUIglGetError();
                      if (v67 <= 1280)
                      {
                        if (!v67)
                        {
                          goto LABEL_85;
                        }

                        if (v67 == 1280)
                        {
                          v68 = "invalid enum";
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        switch(v67)
                        {
                          case 0x501:
                            v68 = "invalid value";
                            goto LABEL_84;
                          case 0x502:
                            v68 = "invalid operation";
                            goto LABEL_84;
                          case 0x505:
                            v68 = "out of memory";
LABEL_84:
                            NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 263, v67, v68);
LABEL_85:
                            _SKUIglBindTexture(0);
                            v69 = _SKUIglGetError();
                            if (v69 <= 1280)
                            {
                              if (!v69)
                              {
                                goto LABEL_97;
                              }

                              if (v69 == 1280)
                              {
                                v70 = "invalid enum";
                                goto LABEL_96;
                              }
                            }

                            else
                            {
                              switch(v69)
                              {
                                case 0x501:
                                  v70 = "invalid value";
                                  goto LABEL_96;
                                case 0x502:
                                  v70 = "invalid operation";
                                  goto LABEL_96;
                                case 0x505:
                                  v70 = "out of memory";
LABEL_96:
                                  NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 266, v69, v70);
LABEL_97:
                                  LODWORD(v128) = 0;
                                  v129 = 0;
                                  v130 = &v129;
                                  v131 = 0x2020000000;
                                  v71 = getglGenFramebuffersSymbolLoc_ptr;
                                  v132 = getglGenFramebuffersSymbolLoc_ptr;
                                  if (!getglGenFramebuffersSymbolLoc_ptr)
                                  {
                                    *&v123.m11 = MEMORY[0x277D85DD0];
                                    *&v123.m12 = 3221225472;
                                    *&v123.m13 = __getglGenFramebuffersSymbolLoc_block_invoke;
                                    *&v123.m14 = &unk_2781FA3E0;
                                    *&v123.m21 = &v129;
                                    v72 = OpenGLESLibrary();
                                    v73 = dlsym(v72, "glGenFramebuffers");
                                    *(*(*&v123.m21 + 8) + 24) = v73;
                                    getglGenFramebuffersSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                                    v71 = v130[3];
                                  }

                                  _Block_object_dispose(&v129, 8);
                                  if (!v71)
                                  {
                                    goto LABEL_210;
                                  }

                                  v71(1, &v128);
                                  _SKUIglBindFramebuffer(v128);
                                  v74 = HIDWORD(v128);
                                  v129 = 0;
                                  v130 = &v129;
                                  v131 = 0x2020000000;
                                  v75 = getglFramebufferTexture2DSymbolLoc_ptr;
                                  v132 = getglFramebufferTexture2DSymbolLoc_ptr;
                                  if (!getglFramebufferTexture2DSymbolLoc_ptr)
                                  {
                                    *&v123.m11 = MEMORY[0x277D85DD0];
                                    *&v123.m12 = 3221225472;
                                    *&v123.m13 = __getglFramebufferTexture2DSymbolLoc_block_invoke;
                                    *&v123.m14 = &unk_2781FA3E0;
                                    *&v123.m21 = &v129;
                                    v76 = OpenGLESLibrary();
                                    v77 = dlsym(v76, "glFramebufferTexture2D");
                                    *(*(*&v123.m21 + 8) + 24) = v77;
                                    getglFramebufferTexture2DSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                                    v75 = v130[3];
                                  }

                                  _Block_object_dispose(&v129, 8);
                                  if (!v75)
                                  {
                                    goto LABEL_210;
                                  }

                                  v75(36160, 36064, 3553, v74, 0);
                                  v78 = _SKUIglGetError();
                                  if (v78 <= 1280)
                                  {
                                    if (!v78)
                                    {
                                      goto LABEL_115;
                                    }

                                    if (v78 == 1280)
                                    {
                                      v79 = "invalid enum";
                                      goto LABEL_114;
                                    }
                                  }

                                  else
                                  {
                                    switch(v78)
                                    {
                                      case 0x501:
                                        v79 = "invalid value";
                                        goto LABEL_114;
                                      case 0x502:
                                        v79 = "invalid operation";
                                        goto LABEL_114;
                                      case 0x505:
                                        v79 = "out of memory";
LABEL_114:
                                        NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 273, v78, v79);
LABEL_115:
                                        v129 = 0;
                                        v130 = &v129;
                                        v131 = 0x2020000000;
                                        v80 = getglViewportSymbolLoc_ptr;
                                        v132 = getglViewportSymbolLoc_ptr;
                                        if (!getglViewportSymbolLoc_ptr)
                                        {
                                          *&v123.m11 = MEMORY[0x277D85DD0];
                                          *&v123.m12 = 3221225472;
                                          *&v123.m13 = __getglViewportSymbolLoc_block_invoke;
                                          *&v123.m14 = &unk_2781FA3E0;
                                          *&v123.m21 = &v129;
                                          v81 = OpenGLESLibrary();
                                          v82 = dlsym(v81, "glViewport");
                                          *(*(*&v123.m21 + 8) + 24) = v82;
                                          getglViewportSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                                          v80 = v130[3];
                                        }

                                        _Block_object_dispose(&v129, 8);
                                        if (!v80)
                                        {
                                          goto LABEL_210;
                                        }

                                        (v80)(0, 0, v114, v64);
                                        v83 = _SKUIglGetError();
                                        if (v83 <= 1280)
                                        {
                                          if (!v83)
                                          {
                                            goto LABEL_130;
                                          }

                                          if (v83 == 1280)
                                          {
                                            v84 = "invalid enum";
                                            goto LABEL_129;
                                          }
                                        }

                                        else
                                        {
                                          switch(v83)
                                          {
                                            case 0x501:
                                              v84 = "invalid value";
                                              goto LABEL_129;
                                            case 0x502:
                                              v84 = "invalid operation";
                                              goto LABEL_129;
                                            case 0x505:
                                              v84 = "out of memory";
LABEL_129:
                                              NSLog(&cfstr_Skuioffscreenr_0.isa, "_SKUIOffscreenRenderOperationBindSurfaceToFramebuffer", 276, v83, v84);
LABEL_130:
                                              v122 = v128;

                                              v129 = 0;
                                              v130 = &v129;
                                              v131 = 0x2020000000;
                                              v85 = getglClearColorSymbolLoc_ptr;
                                              v132 = getglClearColorSymbolLoc_ptr;
                                              if (!getglClearColorSymbolLoc_ptr)
                                              {
                                                *&v123.m11 = MEMORY[0x277D85DD0];
                                                *&v123.m12 = 3221225472;
                                                *&v123.m13 = __getglClearColorSymbolLoc_block_invoke;
                                                *&v123.m14 = &unk_2781FA3E0;
                                                *&v123.m21 = &v129;
                                                v86 = OpenGLESLibrary();
                                                v87 = dlsym(v86, "glClearColor");
                                                *(*(*&v123.m21 + 8) + 24) = v87;
                                                getglClearColorSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                                                v85 = v130[3];
                                              }

                                              _Block_object_dispose(&v129, 8);
                                              if (!v85)
                                              {
                                                goto LABEL_210;
                                              }

                                              v85(0.0, 0.0, 0.0, 0.0);
                                              v129 = 0;
                                              v130 = &v129;
                                              v131 = 0x2020000000;
                                              v88 = getglClearSymbolLoc_ptr;
                                              v132 = getglClearSymbolLoc_ptr;
                                              if (!getglClearSymbolLoc_ptr)
                                              {
                                                *&v123.m11 = MEMORY[0x277D85DD0];
                                                *&v123.m12 = 3221225472;
                                                *&v123.m13 = __getglClearSymbolLoc_block_invoke;
                                                *&v123.m14 = &unk_2781FA3E0;
                                                *&v123.m21 = &v129;
                                                v89 = OpenGLESLibrary();
                                                v90 = dlsym(v89, "glClear");
                                                *(*(*&v123.m21 + 8) + 24) = v90;
                                                getglClearSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                                                v88 = v130[3];
                                              }

                                              _Block_object_dispose(&v129, 8);
                                              if (!v88)
                                              {
                                                goto LABEL_210;
                                              }

                                              v88(0x4000);
                                              [v5 beginFrameAtTime:0 timeStamp:0.0];
                                              v91 = _SKUIglGetError();
                                              if (v91 <= 1280)
                                              {
                                                if (!v91)
                                                {
                                                  goto LABEL_148;
                                                }

                                                if (v91 == 1280)
                                                {
                                                  v92 = "invalid enum";
                                                  goto LABEL_147;
                                                }
                                              }

                                              else
                                              {
                                                switch(v91)
                                                {
                                                  case 0x501:
                                                    v92 = "invalid value";
                                                    goto LABEL_147;
                                                  case 0x502:
                                                    v92 = "invalid operation";
                                                    goto LABEL_147;
                                                  case 0x505:
                                                    v92 = "out of memory";
LABEL_147:
                                                    NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 147, v91, v92);
LABEL_148:
                                                    [v5 render];
                                                    v93 = _SKUIglGetError();
                                                    if (v93 <= 1280)
                                                    {
                                                      if (!v93)
                                                      {
                                                        goto LABEL_160;
                                                      }

                                                      if (v93 == 1280)
                                                      {
                                                        v94 = "invalid enum";
                                                        goto LABEL_159;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      switch(v93)
                                                      {
                                                        case 0x501:
                                                          v94 = "invalid value";
                                                          goto LABEL_159;
                                                        case 0x502:
                                                          v94 = "invalid operation";
                                                          goto LABEL_159;
                                                        case 0x505:
                                                          v94 = "out of memory";
LABEL_159:
                                                          NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 149, v93, v94);
LABEL_160:
                                                          [v5 endFrame];
                                                          v95 = _SKUIglGetError();
                                                          if (v95 <= 1280)
                                                          {
                                                            if (!v95)
                                                            {
                                                              goto LABEL_172;
                                                            }

                                                            if (v95 == 1280)
                                                            {
                                                              v96 = "invalid enum";
                                                              goto LABEL_171;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            switch(v95)
                                                            {
                                                              case 0x501:
                                                                v96 = "invalid value";
                                                                goto LABEL_171;
                                                              case 0x502:
                                                                v96 = "invalid operation";
                                                                goto LABEL_171;
                                                              case 0x505:
                                                                v96 = "out of memory";
LABEL_171:
                                                                NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 151, v95, v96);
LABEL_172:
                                                                [v5 setLayer:0];
                                                                _SKUIglBindFramebuffer(0);
                                                                v129 = 0;
                                                                v130 = &v129;
                                                                v131 = 0x2020000000;
                                                                v97 = getglDeleteFramebuffersSymbolLoc_ptr;
                                                                v132 = getglDeleteFramebuffersSymbolLoc_ptr;
                                                                if (!getglDeleteFramebuffersSymbolLoc_ptr)
                                                                {
                                                                  *&v123.m11 = MEMORY[0x277D85DD0];
                                                                  *&v123.m12 = 3221225472;
                                                                  *&v123.m13 = __getglDeleteFramebuffersSymbolLoc_block_invoke;
                                                                  *&v123.m14 = &unk_2781FA3E0;
                                                                  *&v123.m21 = &v129;
                                                                  v98 = OpenGLESLibrary();
                                                                  v99 = dlsym(v98, "glDeleteFramebuffers");
                                                                  *(*(*&v123.m21 + 8) + 24) = v99;
                                                                  getglDeleteFramebuffersSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                                                                  v97 = v130[3];
                                                                }

                                                                _Block_object_dispose(&v129, 8);
                                                                if (v97)
                                                                {
                                                                  v97(1, &v122);
                                                                  v129 = 0;
                                                                  v130 = &v129;
                                                                  v131 = 0x2020000000;
                                                                  v100 = getglDeleteTexturesSymbolLoc_ptr;
                                                                  v132 = getglDeleteTexturesSymbolLoc_ptr;
                                                                  if (!getglDeleteTexturesSymbolLoc_ptr)
                                                                  {
                                                                    *&v123.m11 = MEMORY[0x277D85DD0];
                                                                    *&v123.m12 = 3221225472;
                                                                    *&v123.m13 = __getglDeleteTexturesSymbolLoc_block_invoke;
                                                                    *&v123.m14 = &unk_2781FA3E0;
                                                                    *&v123.m21 = &v129;
                                                                    v101 = OpenGLESLibrary();
                                                                    v102 = dlsym(v101, "glDeleteTextures");
                                                                    *(*(*&v123.m21 + 8) + 24) = v102;
                                                                    getglDeleteTexturesSymbolLoc_ptr = *(*(*&v123.m21 + 8) + 24);
                                                                    v100 = v130[3];
                                                                  }

                                                                  _Block_object_dispose(&v129, 8);
                                                                  if (v100)
                                                                  {
                                                                    v100(1, &v122 + 4);
                                                                    v103 = _SKUIglGetError();
                                                                    if (v103 <= 1280)
                                                                    {
                                                                      if (!v103)
                                                                      {
LABEL_190:
                                                                        v105 = [objc_alloc(MEMORY[0x277D755B8]) _initWithIOSurface:v50 scale:0 orientation:v17];
                                                                        v106 = v105;
                                                                        if (v105)
                                                                        {
                                                                          accessQueue = self->_accessQueue;
                                                                          block[0] = MEMORY[0x277D85DD0];
                                                                          block[1] = 3221225472;
                                                                          block[2] = __36__SKUIOffscreenRenderOperation_main__block_invoke;
                                                                          block[3] = &unk_2781F80C8;
                                                                          block[4] = self;
                                                                          v121 = v105;
                                                                          dispatch_barrier_async(accessQueue, block);
                                                                        }

                                                                        CFRelease(v50);

LABEL_193:
                                                                        v108 = _SKUIglGetError();
                                                                        if (v108 <= 1280)
                                                                        {
                                                                          if (!v108)
                                                                          {
LABEL_205:

                                                                            goto LABEL_206;
                                                                          }

                                                                          if (v108 == 1280)
                                                                          {
                                                                            v109 = "invalid enum";
                                                                            goto LABEL_204;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          switch(v108)
                                                                          {
                                                                            case 0x501:
                                                                              v109 = "invalid value";
                                                                              goto LABEL_204;
                                                                            case 0x502:
                                                                              v109 = "invalid operation";
                                                                              goto LABEL_204;
                                                                            case 0x505:
                                                                              v109 = "out of memory";
LABEL_204:
                                                                              NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 168, v108, v109);
                                                                              goto LABEL_205;
                                                                          }
                                                                        }

                                                                        v109 = "unknown error";
                                                                        goto LABEL_204;
                                                                      }

                                                                      if (v103 == 1280)
                                                                      {
                                                                        v104 = "invalid enum";
                                                                        goto LABEL_189;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      switch(v103)
                                                                      {
                                                                        case 0x501:
                                                                          v104 = "invalid value";
                                                                          goto LABEL_189;
                                                                        case 0x502:
                                                                          v104 = "invalid operation";
                                                                          goto LABEL_189;
                                                                        case 0x505:
                                                                          v104 = "out of memory";
LABEL_189:
                                                                          NSLog(&cfstr_Skuioffscreenr_0.isa, "[SKUIOffscreenRenderOperation main]", 158, v103, v104);
                                                                          goto LABEL_190;
                                                                      }
                                                                    }

                                                                    v104 = "unknown error";
                                                                    goto LABEL_189;
                                                                  }

                                                                  getCNComposeRecipientViewDidChangeNotification_cold_1();
LABEL_224:
                                                                  __break(1u);
                                                                }

LABEL_210:
                                                                getCNComposeRecipientViewDidChangeNotification_cold_1();
                                                                goto LABEL_224;
                                                            }
                                                          }

                                                          v96 = "unknown error";
                                                          goto LABEL_171;
                                                      }
                                                    }

                                                    v94 = "unknown error";
                                                    goto LABEL_159;
                                                }
                                              }

                                              v92 = "unknown error";
                                              goto LABEL_147;
                                          }
                                        }

                                        v84 = "unknown error";
                                        goto LABEL_129;
                                    }
                                  }

                                  v79 = "unknown error";
                                  goto LABEL_114;
                              }
                            }

                            v70 = "unknown error";
                            goto LABEL_96;
                        }
                      }

                      v68 = "unknown error";
                      goto LABEL_84;
                  }
                }

                v66 = "unknown error";
                goto LABEL_72;
            }
          }

          v57 = "unknown error";
          goto LABEL_54;
      }
    }

    v55 = "unknown error";
    goto LABEL_42;
  }
}

- (id)createLayerBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SKUIOffscreenRenderOperation_createLayerBlock__block_invoke;
  v5[3] = &unk_2781F8608;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__SKUIOffscreenRenderOperation_createLayerBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (UIImage)outputImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__18;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SKUIOffscreenRenderOperation_outputImage__block_invoke;
  v5[3] = &unk_2781F8608;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCreateLayerBlock:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SKUIOffscreenRenderOperation_setCreateLayerBlock___block_invoke;
  v7[3] = &unk_2781F98F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __52__SKUIOffscreenRenderOperation_setCreateLayerBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

+ (void)preheatOffscreenRenderOperations
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIOffscreenRenderOperation preheatOffscreenRenderOperations]";
}

void __64__SKUIOffscreenRenderOperation_preheatOffscreenRenderOperations__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  NSLog(&cfstr_Skuioffscreenr_4.isa, 2);
  v1 = 1;
  v2 = CACurrentMediaTime();
  do
  {
    v3 = v1;
    v14 = 0;
    v15 = 0;
    _SKUIOffscreenRenderOperationPopRenderingContext(&v15, &v14);
    v4 = v15;
    v5 = v14;
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      [v0 addObject:v4];
      [v0 addObject:v5];
    }

    v1 = 0;
  }

  while ((v3 & 1) != 0);
  if ([v0 count] >= 2)
  {
    v7 = 0;
    do
    {
      v8 = [v0 objectAtIndex:v7];
      v9 = [v0 objectAtIndex:v7 + 1];
      _SKUIOffscreenRenderOperationPushRenderingContext(v8, v9);

      v10 = [v0 count];
      v11 = v7 + 3;
      v7 += 2;
    }

    while (v11 < v10);
  }

  v12 = CACurrentMediaTime();
  NSLog(&cfstr_Skuioffscreenr_5.isa, 2, v12 - v2);
  v13 = dispatch_get_global_queue(0, 0);
  dispatch_async(v13, &__block_literal_global_27);
}

void __64__SKUIOffscreenRenderOperation_preheatOffscreenRenderOperations__block_invoke_2()
{
  NSLog(&cfstr_Skuioffscreenr_6.isa);
  v0 = CACurrentMediaTime();
  IOSurfaceLibrary();
  OpenGLESLibrary();
  v1 = CACurrentMediaTime();
  NSLog(&cfstr_Skuioffscreenr_7.isa, v1 - v0);
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIOffscreenRenderOperation init]";
}

@end