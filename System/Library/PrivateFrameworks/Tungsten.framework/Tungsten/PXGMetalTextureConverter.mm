@interface PXGMetalTextureConverter
- (CIContext)renderContext;
- (PXGMetalTextureCache)renderTextureCache;
- (PXGMetalTextureConverter)init;
- (PXGMetalTextureConverter)initWithContext:(id)a3 presentationType:(unsigned __int8)a4 destinationColorspaceName:(unint64_t)a5 layoutQueue:(id)a6;
- (PXGMetalTextureConverterDelegate)delegate;
- (__CVMetalTextureCache)videoTextureCache;
- (id)_applyAdjustment:(id)a3 toMetalTexture:(id)a4 options:(id)a5;
- (id)_createTextureFromCIImage:(id)a3 source:(id)a4 options:(id)a5;
- (id)_createTransparentTexture;
- (id)_generateMipmapsForMetalTexture:(id)a3;
- (id)applyAdjustment:(id)a3 toTexture:(id)a4 options:(id)a5;
- (id)createAtlasForTextureAtlasManager:(id)a3;
- (id)createPayloadTextureFromPayload:(id)a3;
- (id)createTextureAtlasManagerForImageDataSpec:(id *)a3 mipmapped:(BOOL)a4;
- (id)createTextureFromCGImage:(CGImage *)a3 transform:(float)a4 alpha:(id)a5 options:(id *)a6 error:;
- (id)createTextureFromCVPixelBuffer:(__CVBuffer *)a3 transform:(float)a4 alpha:(id)a5 options:(id *)a6 error:;
- (void)dealloc;
@end

@implementation PXGMetalTextureConverter

- (id)_createTransparentTexture
{
  v3 = PXCreateCGImageWithDrawBlock();
  v4 = [(PXGMetalTextureConverter *)self createTextureFromCGImage:v3 transform:0 alpha:0 options:0 error:COERCE_DOUBLE(1065353216), 0.0];
  CGImageRelease(v3);

  return v4;
}

- (PXGMetalTextureConverterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)createAtlasForTextureAtlasManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v20 = [MEMORY[0x277CCA890] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    v24 = [v5 px_descriptionForAssertionMessage];
    [v20 handleFailureInMethod:a2 object:self file:@"PXGMetalTextureConverter.m" lineNumber:613 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"textureAtlasManager", v22, v24}];
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:self file:@"PXGMetalTextureConverter.m" lineNumber:613 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"textureAtlasManager", v22}];
  }

LABEL_3:
  v6 = [PXGMetalTextureAtlas alloc];
  [v5 thumbnailSize];
  v8 = v7;
  v10 = v9;
  v11 = [v5 pixelFormat];
  v12 = [v5 capacityPerAtlas];
  v13 = [v5 mipmapped];
  v14 = [v5 colorProgram];
  v15 = [(PXGMetalTextureConverter *)self metalRenderContext];
  v16 = [(PXGMetalTextureConverter *)self layoutQueue];
  v17 = [(PXGMetalTextureAtlas *)v6 initWithThumbnailSize:v11 pixelFormat:v12 capacity:v13 mipmapped:v14 colorProgram:v15 context:v16 layoutQueue:v8, v10];

  v18 = [(PXGMetalTextureConverter *)self delegate];
  [v18 metalTextureConverter:self didCreateTexture:v17 options:{0, 0}];

  return v17;
}

- (id)createTextureAtlasManagerForImageDataSpec:(id *)a3 mipmapped:(BOOL)a4
{
  v4 = a4;
  screenPixelCount = self->_screenPixelCount;
  var2 = a3->var2;
  var3 = a3->var3;
  v10 = var2;
  v11 = [(PXGMetalTextureConverter *)self lowMemoryMode];
  LODWORD(v12) = [PXGMetalTextureAtlas maxCapacityForThumbnailSize:a3->var0 pixelFormat:var2, var3];
  PXGColorSpaceNameFromCFStringRef(a3->var1);
  v13 = PXGetColorSpace();
  if (PXGRequiresColorMatching(v13, [(PXGMetalTextureConverter *)self destinationColorSpace]))
  {
    v14 = [(PXGMetalTextureConverter *)self colorProgramLibrary];
    v15 = [v14 colorProgramForSourceColorSpace:v13 flags:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = 0.1;
  if (v11)
  {
    v16 = 0.025;
  }

  v17 = v16 * (screenPixelCount / (var3 * var2));
  if (v17 < 8.0)
  {
    v17 = 8.0;
  }

  if (v12 >= v17)
  {
    v12 = v17;
  }

  else
  {
    v12 = v12;
  }

  v18 = [PXGMetalTextureAtlasManager alloc];
  var0 = a3->var0;
  v20 = [(PXGMetalTextureConverter *)self requestQueue];
  v21 = [(PXGMetalTextureConverter *)self layoutQueue];
  v22 = [(PXGMetalTextureConverter *)self metalRenderContext];
  v23 = [(PXGMetalTextureAtlasManager *)v18 initWithThumbnailSize:var0 pixelFormat:v12 capacityPerAtlas:v4 mipmapped:v20 requestQueue:v21 layoutQueue:v15 colorProgram:v10 context:var3, v22];

  [(PXGMetalTextureAtlasManager *)v23 setTextureConverter:self];

  return v23;
}

- (id)createPayloadTextureFromPayload:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXGMetalCaptureSpriteTexture alloc] initWithPayload:v4 presentationType:[(PXGMetalTextureConverter *)self presentationType]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createTextureFromCIImage:(id)a3 source:(id)a4 options:(id)a5
{
  var2 = a5.var2;
  v6 = *&a5.var0;
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(PXGMetalTextureConverter *)self renderTextureCache];
  [v9 extent];
  v13 = v12;
  v15 = v14;
  if (PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken != -1)
  {
    dispatch_once(&PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken, &__block_literal_global_3102);
  }

  if (PXGDeviceIsKnownToHaveExtendedColorDisplay_hasExtendedColorDisplay)
  {
    v16 = 554;
  }

  else
  {
    v16 = 80;
  }

  v17 = [v11 textureWithSize:v16 pixelFormat:v13, v15];

  if (!v17)
  {
    v18 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v17 = PXGCreateMetalTextureToRenderCIImage(v9, v18);

    if (!v17)
    {
      v30 = 0;
      goto LABEL_22;
    }
  }

  v39 = var2;
  v40 = v6;
  v19 = [objc_alloc(MEMORY[0x277CBF778]) initWithMTLTexture:v17 commandBuffer:0];
  [v19 setFlipped:1];
  [v19 setColorSpace:{-[PXGMetalTextureConverter destinationColorSpace](self, "destinationColorSpace")}];
  v20 = [(PXGMetalTextureConverter *)self renderContext];
  v42 = 0;
  v21 = [v20 startTaskToRender:v9 toDestination:v19 error:&v42];
  v22 = v42;

  if (v21)
  {
    [v10 orientationTransform];
    v38 = v23;
    [v10 alpha];
    v25 = v24;
    v26 = [PXGMetalImageTexture alloc];
    LODWORD(v27) = 1.0;
    v28 = [(PXGMetalTextureConverter *)self presentationType];
    *&v29 = v25;
    v30 = [(PXGMetalImageTexture *)v26 initWithTexture:v17 colorProgram:0 isOpaque:v25 >= 1.0 shaderFlags:0 orientationTransform:v28 alpha:v38 presentationType:v29];
    v31 = [(PXGMetalTextureConverter *)self renderTextureCache];
    [(PXGMetalImageTexture *)v30 setTextureCache:v31];

    v41 = v22;
    v32 = [v21 waitUntilCompletedAndReturnError:&v41];
    v33 = v41;

    if (!v32)
    {
      v34 = PXAssertGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v44 = v9;
        v45 = 2112;
        v46 = v33;
        _os_log_error_impl(&dword_21AD38000, v34, OS_LOG_TYPE_ERROR, "Unable to render texture for CIImage %@, error: %@", buf, 0x16u);
      }
    }

    if (v30)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v33 = v22;
  }

  v35 = PXAssertGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v44 = v9;
    v45 = 2112;
    v46 = v33;
    _os_log_error_impl(&dword_21AD38000, v35, OS_LOG_TYPE_ERROR, "Unable to create texture for CIImage %@, error: %@", buf, 0x16u);
  }

  v30 = 0;
LABEL_19:

  if (v30)
  {
    v36 = [(PXGMetalTextureConverter *)self delegate];
    [v36 metalTextureConverter:self didCreateTexture:v30 options:{v40, LODWORD(v39)}];
  }

LABEL_22:

  return v30;
}

- (id)_applyAdjustment:(id)a3 toMetalTexture:(id)a4 options:(id)a5
{
  var2 = a5.var2;
  v86 = *&a5.var0;
  v115[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 colorProgram];
  v10 = [v9 sourceColorSpace];
  if (!v10)
  {
    v10 = [(PXGMetalTextureConverter *)self destinationColorSpace];
  }

  v84 = self;

  v11 = [v8 chromaTexture];

  v12 = MEMORY[0x277CBFA58];
  v13 = MEMORY[0x277CBEC38];
  v14 = 0x277CBE000uLL;
  if (v11)
  {
    v15 = MEMORY[0x277CBF758];
    v16 = [v8 texture];
    v114 = *v12;
    v17 = v114;
    v115[0] = v13;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:&v114 count:1];
    v19 = [v15 imageWithMTLTexture:v16 options:v18];

    v20 = MEMORY[0x277CBF758];
    v21 = [v8 chromaTexture];
    v112 = v17;
    v113 = v13;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
    v23 = [v20 imageWithMTLTexture:v21 options:v22];

    v24 = 0;
    v25 = ([v8 shaderFlags] >> 8) & 0xF;
    if (v25 > 4)
    {
      if (v25 > 6)
      {
        if (v25 != 7)
        {
          v26 = 0;
          if (v25 != 8)
          {
            goto LABEL_32;
          }

          v24 = 1;
        }

        v26 = 240;
        goto LABEL_32;
      }

      v24 = v25 != 5;
      v26 = 2020;
    }

    else if (v25 > 2)
    {
      v24 = v25 != 3;
      v26 = 709;
    }

    else
    {
      if (v25 == 1)
      {
LABEL_30:
        v26 = 601;
        goto LABEL_32;
      }

      v26 = 0;
      if (v25 == 2)
      {
        v24 = 1;
        goto LABEL_30;
      }
    }

LABEL_32:
    [v19 extent];
    v56 = v55;
    [v23 extent];
    v32 = [MEMORY[0x277CBF758] imageWithYImage:v19 CrCbImage:v23 CrCbScale:(v56 / v57) matrix:v26 fullRange:v24 colorSpace:v10];
    v14 = 0x277CBE000uLL;
    goto LABEL_33;
  }

  v27 = MEMORY[0x277CBEB38];
  v28 = *MEMORY[0x277CBFA58];
  v110[0] = *MEMORY[0x277CBFA40];
  v110[1] = v28;
  v111[0] = v10;
  v111[1] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  v19 = [v27 dictionaryWithDictionary:v29];

  if (([v8 shaderFlags] & 3) != 0)
  {
    [v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CBFA60]];
  }

  v30 = MEMORY[0x277CBF758];
  v31 = [v8 texture];
  v32 = [v30 imageWithMTLTexture:v31 options:v19];

  if (v32)
  {
    v87 = v7;
    if (([v8 shaderFlags] & 4) != 0)
    {
      v108[0] = @"inputRVector";
      v33 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
      v109[0] = v33;
      v108[1] = @"inputGVector";
      v34 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
      v109[1] = v34;
      v108[2] = @"inputBVector";
      v35 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
      v109[2] = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];
      v37 = [v32 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v36];

      v32 = v37;
    }

    if (([v8 shaderFlags] & 8) != 0)
    {
      v106[0] = @"inputRVector";
      v38 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
      v107[0] = v38;
      v106[1] = @"inputGVector";
      v39 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
      v107[1] = v39;
      v106[2] = @"inputBVector";
      v40 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
      v107[2] = v40;
      v106[3] = @"inputAVector";
      v41 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
      v107[3] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:4];
      v43 = [v32 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v42];

      v32 = v43;
    }

    if ([v8 shaderFlags])
    {
      v104[0] = @"inputRVector";
      v44 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
      v105[0] = v44;
      v104[1] = @"inputGVector";
      v45 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0];
      v105[1] = v45;
      v104[2] = @"inputBVector";
      v46 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
      v105[2] = v46;
      v104[3] = @"inputAVector";
      v47 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
      v105[3] = v47;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:4];
      v49 = [v32 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v48];

      v32 = v49;
    }

    if (([v8 shaderFlags] & 2) == 0)
    {
      v7 = v87;
      v14 = 0x277CBE000;
      goto LABEL_34;
    }

    v102[0] = @"inputRVector";
    v23 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v103[0] = v23;
    v102[1] = @"inputGVector";
    v83 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
    v103[1] = v83;
    v102[2] = @"inputBVector";
    v51 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
    v103[2] = v51;
    v102[3] = @"inputAVector";
    v52 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0];
    v103[3] = v52;
    v14 = 0x277CBE000uLL;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:4];
    v54 = [v32 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v53];

    v32 = v54;
    v7 = v87;
  }

  else
  {
    v23 = PXGTungstenGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v50 = [v8 texture];
      [v50 pixelFormat];
      *buf = 136315138;
      Name = MTLPixelFormatGetName();
      _os_log_impl(&dword_21AD38000, v23, OS_LOG_TYPE_DEBUG, "Failed to create CIImage from Metal pixel format: %s", buf, 0xCu);
    }

    v32 = 0;
  }

LABEL_33:

LABEL_34:
  if (v32 || ([v8 texture], v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "iosurface"), v68, v70 = MEMORY[0x277CBFA40], v69) && (v71 = MEMORY[0x277CBF758], objc_msgSend(v8, "texture"), v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "iosurface"), v100 = *v70, v101 = v10, objc_msgSend(*(v14 + 2752), "dictionaryWithObjects:forKeys:count:", &v101, &v100, 1), v74 = v7, v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "imageWithIOSurface:options:", v73, v75), v32 = objc_claimAutoreleasedReturnValue(), v75, v7 = v74, v72, v32) || objc_msgSend(v8, "sourceCVPixelBuffer") && (v76 = MEMORY[0x277CBF758], v77 = objc_msgSend(v8, "sourceCVPixelBuffer"), v98 = *v70, v99 = v10, objc_msgSend(*(v14 + 2752), "dictionaryWithObjects:forKeys:count:", &v99, &v98, 1), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "imageWithCVPixelBuffer:options:", v77, v78), v32 = objc_claimAutoreleasedReturnValue(), v78, v32) || objc_msgSend(v8, "sourceCGImage") && (v79 = MEMORY[0x277CBF758], v80 = objc_msgSend(v8, "sourceCGImage"), v96 = *v70, v97 = v10, objc_msgSend(*(v14 + 2752), "dictionaryWithObjects:forKeys:count:", &v97, &v96, 1), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "imageWithCGImage:options:", v80, v81), v32 = objc_claimAutoreleasedReturnValue(), v81, v32))
  {
    [v32 extent];
    v60 = [v7 applyToImage:v32 targetSize:{v58, v59}];
    if (!v60)
    {
      v61 = PXAssertGetLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        Name = v7;
        v90 = 2112;
        v91 = v32;
        _os_log_error_impl(&dword_21AD38000, v61, OS_LOG_TYPE_ERROR, "Unable to apply adjustment:%@ to image:%@", buf, 0x16u);
      }
    }

    [v60 extent];
    if (PXSizeIsEmpty())
    {
      v62 = PXAssertGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        Name = v7;
        v90 = 2112;
        v91 = v32;
        v92 = 2112;
        v93 = v60;
        _os_log_error_impl(&dword_21AD38000, v62, OS_LOG_TYPE_ERROR, "Empty size from adjustment:%@ to image:%@ adjustedImage:%@", buf, 0x20u);
      }
    }

    if (v60 && ([v60 extent], !PXSizeIsEmpty()))
    {
      v67 = [(PXGMetalTextureConverter *)v84 _createTextureFromCIImage:v60 source:v8 options:v86, LODWORD(var2)];
    }

    else
    {
      v63 = PXGTungstenGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [v60 extent];
        v117.width = v64;
        v117.height = v65;
        v66 = NSStringFromCGSize(v117);
        *buf = 138544130;
        Name = v7;
        v90 = 2114;
        v91 = v32;
        v92 = 2114;
        v93 = v60;
        v94 = 2114;
        v95 = v66;
        _os_log_impl(&dword_21AD38000, v63, OS_LOG_TYPE_ERROR, "Error applying adjustment:%{public}@ to inputImage:%{public}@ adjustedImage:%{public}@ size:%{public}@", buf, 0x2Au);
      }

      v67 = 0;
    }
  }

  else
  {
    v32 = PXAssertGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      Name = v8;
      _os_log_error_impl(&dword_21AD38000, v32, OS_LOG_TYPE_ERROR, "Unable to create CIImage from texture %@", buf, 0xCu);
    }

    v67 = 0;
  }

  return v67;
}

- (id)_generateMipmapsForMetalTexture:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 texture];
  if ([v5 pixelFormat] > 0x1F3)
  {
    v18 = PXGTungstenGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v22 = [v5 pixelFormat];
      _os_log_impl(&dword_21AD38000, v18, OS_LOG_TYPE_DEBUG, "Cannot generate mipmaps for incompatible pixel format %d", buf, 8u);
    }

    v17 = 0;
  }

  else
  {
    v6 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v7 = [v6 newMipmappedTextureFromTexture:v5];

    v8 = [PXGMetalImageTexture alloc];
    v9 = [v4 colorProgram];
    v10 = [v4 isOpaque];
    v11 = [v4 shaderFlags];
    [v4 orientationTransform];
    v20 = v12;
    [v4 alpha];
    v14 = v13;
    v15 = [(PXGMetalTextureConverter *)self presentationType];
    LODWORD(v16) = v14;
    v17 = [(PXGMetalImageTexture *)v8 initWithTexture:v7 colorProgram:v9 isOpaque:v10 shaderFlags:v11 orientationTransform:v15 alpha:v20 presentationType:v16];
  }

  return v17;
}

- (id)applyAdjustment:(id)a3 toTexture:(id)a4 options:(id)a5
{
  var2 = a5.var2;
  v6 = *&a5.var0;
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v9)
  {
    objc_opt_class();
    [v10 pixelSize];
    [v10 pixelSize];
    kdebug_trace();
    v11 = [(PXGMetalTextureConverter *)self _applyAdjustment:v9 toMetalTexture:v10 options:v6, LODWORD(var2)];
    objc_opt_class();
    [v11 pixelSize];
    [v11 pixelSize];
    kdebug_trace();
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  [v13 pixelSize];
  [v13 pixelSize];
  kdebug_trace();
  v14 = [(PXGMetalTextureConverter *)self _generateMipmapsForMetalTexture:v13];
  [v14 pixelSize];
  [v14 pixelSize];
  kdebug_trace();
  if (v14)
  {
    v15 = v14;

    v11 = v15;
  }

LABEL_13:

  return v11;
}

- (id)createTextureFromCVPixelBuffer:(__CVBuffer *)a3 transform:(float)a4 alpha:(id)a5 options:(id *)a6 error:
{
  var2 = a5.var2;
  v9 = *&a5.var0;
  v10 = v6;
  v46 = *&a4;
  v55 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v13 = [(PXGMetalTextureConverter *)self metalRenderContext];
  v48 = 0;
  v49 = 0;
  v14 = PXGCreateMetalTexturesFromPixelBuffer(a3, v13, [(PXGMetalTextureConverter *)self videoTextureCache], &v49, &v48, &v50);
  v15 = v49;
  v16 = v48;

  if (v14)
  {
    ColorSpace = CVImageBufferGetColorSpace(a3);
    if (!ColorSpace)
    {
      v18 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
      ColorSpace = CVImageBufferCreateColorSpaceFromAttachments(v18);
      if (v18)
      {
        CFRelease(v18);
      }

      if (!ColorSpace)
      {
        goto LABEL_14;
      }

      CFAutorelease(ColorSpace);
    }

    if (PXGRequiresColorMatching(ColorSpace, [(PXGMetalTextureConverter *)self destinationColorSpace]))
    {
      v19 = [(PXGMetalTextureConverter *)self colorProgramLibrary];
      v20 = [v19 colorProgramForSourceColorSpace:ColorSpace flags:1];

      if (v20)
      {
        goto LABEL_15;
      }

      if (CGColorSpaceUsesITUR_2100TF(ColorSpace))
      {
        v47 = v16;
        v21 = v15;
        v22 = a6;
        v23 = 1;
        goto LABEL_18;
      }

      v24 = PXAssertGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v52 = ColorSpace;
        v53 = 2112;
        v54 = a3;
        _os_log_error_impl(&dword_21AD38000, v24, OS_LOG_TYPE_ERROR, "Unable to create program for space %@ in %@. Video frames might not be correctly color matched.", buf, 0x16u);
      }
    }

LABEL_14:
    v20 = 0;
LABEL_15:
    v45 = v9;
    v25 = [PXGMetalImageTexture alloc];
    LODWORD(v26) = 1.0;
    v27 = v50;
    v28 = [(PXGMetalTextureConverter *)self presentationType];
    *&v29 = v10;
    *&v30 = var2;
    v31 = [(PXGMetalImageTexture *)v25 initWithTexture:v15 chromaTexture:v16 colorProgram:v20 isOpaque:v10 >= 1.0 shaderFlags:v27 orientationTransform:v28 alpha:v46 suppressContentsRect:v29 presentationType:v30];
    [(PXGImageTexture *)v31 setSourceCVPixelBuffer:a3];

    if (v31)
    {
      v32 = [(PXGMetalTextureConverter *)self delegate];
      [v32 metalTextureConverter:self didCreateTexture:v31 options:v45, LODWORD(var2)];
      v33 = 0;
      goto LABEL_28;
    }
  }

  v47 = v16;
  v21 = v15;
  v22 = a6;
  v23 = 0;
LABEL_18:
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v35 = MEMORY[0x277CCA9B8];
  v36 = PXGStringForOSType(PixelFormatType);
  v33 = [v35 px_genericErrorWithDebugDescription:{@"Unable to create texture for format:%@ pixelBuffer:%@", v36, a3}];

  failedPixelFormats = self->_failedPixelFormats;
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:PixelFormatType];
  LOBYTE(failedPixelFormats) = [(NSMutableSet *)failedPixelFormats containsObject:v38];

  if ((failedPixelFormats & 1) == 0)
  {
    v39 = self->_failedPixelFormats;
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:PixelFormatType];
    [(NSMutableSet *)v39 addObject:v40];

    v41 = PXGTungstenGetLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      v42 = PXGStringForOSType(PixelFormatType);
      *buf = 138543618;
      v52 = v42;
      v53 = 2114;
      v54 = a3;
      _os_log_impl(&dword_21AD38000, v41, OS_LOG_TYPE_FAULT, "Failed to create metal texture for pixel buffer format:%{public}@ pixelBuffer:%{public}@", buf, 0x16u);
    }
  }

  a6 = v22;
  if ((v23 & 1) == 0)
  {
    v32 = PXAssertGetLog();
    v15 = v21;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = a3;
      _os_log_error_impl(&dword_21AD38000, v32, OS_LOG_TYPE_ERROR, "Unable to create texture for video pixelBuffer %@", buf, 0xCu);
    }

    v31 = 0;
    v16 = v47;
LABEL_28:

    if (!a6)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v31 = 0;
  v15 = v21;
  v16 = v47;
  if (a6)
  {
LABEL_29:
    v43 = v33;
    *a6 = v33;
  }

LABEL_30:

  return v31;
}

- (id)createTextureFromCGImage:(CGImage *)a3 transform:(float)a4 alpha:(id)a5 options:(id *)a6 error:
{
  var2 = a5.var2;
  v11 = *&a5.var0;
  v12 = v6;
  v69 = *&a4;
  v81 = *MEMORY[0x277D85DE8];
  v74 = 0;
  v15 = [(PXGMetalTextureConverter *)self metalRenderContext];
  v16 = [v15 device];
  v17 = [v16 limits];
  LODWORD(v7) = *(v17 + 132);
  LODWORD(v8) = *(v17 + 136);

  Property = CGImageGetProperty();
  if (Property)
  {
    v19 = Property;
    v20 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v72 = 0;
    v73 = 0;
    PXGCreateMetalTexturesFromIOSurface(v19, v20, &v73, &v72, &v74);
    v21 = v73;
    v22 = v72;

    if (v21)
    {
      goto LABEL_14;
    }
  }

  else if (CGImageGetImageProvider() && (v23 = CGImageProviderCopyIOSurface()) != 0)
  {
    v24 = v23;
    v25 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v70 = 0;
    v71 = 0;
    PXGCreateMetalTexturesFromIOSurface(v24, v25, &v71, &v70, &v74);
    v21 = v71;
    v22 = v70;

    CFRelease(v24);
    if (v21)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = 0;
  }

  v26 = [(PXGMetalTextureConverter *)self metalRenderContext];
  v21 = PXGCreateMetalTextureFromBytesInCGImage(a3, v26, &v74);

  if (!v21)
  {
    v27 = v7;
    v28 = v8;
    v29 = PXGTungstenGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v76 = a3;
      _os_log_impl(&dword_21AD38000, v29, OS_LOG_TYPE_DEFAULT, "Having to redraw image %{public}@", buf, 0xCu);
    }

    kdebug_trace();
    [(PXGMetalTextureConverter *)self destinationColorSpaceName];
    [(PXGMetalTextureConverter *)self hasExtendedColorTarget];
    v30 = PXGMetalCompatibleImageByRedrawingCGImage(a3, v27, v28);
    kdebug_trace();
    v31 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v21 = PXGCreateMetalTextureFromBytesInCGImage(v30, v31, &v74);

    if (!v21)
    {
      v52 = PXAssertGetLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v76 = v30;
        v77 = 2112;
        v78 = a3;
        _os_log_fault_impl(&dword_21AD38000, v52, OS_LOG_TYPE_FAULT, "Failed to create metal texture from redrawn image:%@ sourceImage:%@", buf, 0x16u);
      }

      v53 = [MEMORY[0x277CCA9B8] px_genericErrorWithDebugDescription:{@"Unable to create texture for image:%@", a3}];
      v38 = 0;
      v54 = 0;
      if (a6)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    a3 = v30;
  }

LABEL_14:
  AlphaInfo = CGImageGetAlphaInfo(a3);
  if (v12 >= 1.0)
  {
    v33 = (AlphaInfo < kCGImageAlphaOnly) & (0x61u >> AlphaInfo);
  }

  else
  {
    v33 = 0;
  }

  ColorSpace = CGImageGetColorSpace(a3);
  if (PXGRequiresColorMatching(ColorSpace, [(PXGMetalTextureConverter *)self destinationColorSpace]))
  {
    v68 = v11;
    v35 = [(PXGMetalTextureConverter *)self colorProgramLibrary];
    v36 = [v35 colorProgramForSourceColorSpace:CGImageGetColorSpace(a3) flags:v33];

    if (v36)
    {
      v37 = v33;
      v38 = v21;
    }

    else
    {
      v39 = PXGTungstenGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = CGImageGetColorSpace(a3);
        *buf = 138543618;
        v76 = v40;
        v77 = 2114;
        v78 = a3;
        _os_log_impl(&dword_21AD38000, v39, OS_LOG_TYPE_ERROR, "Unable to convert color space:%{public}@ to color program for image:%{public}@", buf, 0x16u);
      }

      kdebug_trace();
      v41 = [(PXGMetalTextureConverter *)self metalRenderContext];
      v42 = [v41 device];
      v43 = [v42 limits];
      LODWORD(v44) = *(v43 + 132);
      LODWORD(v45) = *(v43 + 136);
      v46 = v44;
      v47 = v45;
      [(PXGMetalTextureConverter *)self destinationColorSpaceName];
      [(PXGMetalTextureConverter *)self hasExtendedColorTarget];
      v48 = PXGMetalCompatibleImageByRedrawingCGImage(a3, v46, v47);

      v49 = [(PXGMetalTextureConverter *)self metalRenderContext];
      v38 = PXGCreateMetalTextureFromBytesInCGImage(v48, v49, &v74);

      kdebug_trace();
      v50 = CGImageGetColorSpace(v48);
      if (PXGRequiresColorMatching(v50, [(PXGMetalTextureConverter *)self destinationColorSpace]))
      {
        if (v33)
        {
          v51 = CGImageGetAlphaInfo(v48);
          v37 = (v51 < kCGImageAlphaOnly) & (0x61u >> v51);
        }

        else
        {
          v37 = 0;
        }

        v55 = [(PXGMetalTextureConverter *)self colorProgramLibrary];
        v36 = [v55 colorProgramForSourceColorSpace:CGImageGetColorSpace(v48) flags:v33 | v37];

        if (!v36)
        {
          v56 = PXAssertGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v66 = CGImageGetColorSpace(v48);
            v67 = [(PXGMetalTextureConverter *)self destinationColorSpace];
            *buf = 138412802;
            v76 = v66;
            v77 = 2112;
            v78 = v67;
            v79 = 2112;
            v80 = v48;
            _os_log_error_impl(&dword_21AD38000, v56, OS_LOG_TYPE_ERROR, "Unable to color match re-drawn image with colorSpace:%@ destinationColorSpace:%@ image:%@", buf, 0x20u);
          }

          v36 = 0;
        }

        v22 = 0;
      }

      else
      {
        v36 = 0;
        v22 = 0;
        v37 = v33;
      }
    }

    v11 = v68;
  }

  else
  {
    v36 = 0;
    v37 = v33;
    v38 = v21;
  }

  v57 = [PXGMetalImageTexture alloc];
  v58 = v74;
  v59 = [(PXGMetalTextureConverter *)self presentationType];
  *&v60 = v12;
  *&v61 = var2;
  v54 = [(PXGMetalImageTexture *)v57 initWithTexture:v38 chromaTexture:v22 colorProgram:v36 isOpaque:v37 shaderFlags:v58 orientationTransform:v59 alpha:v69 suppressContentsRect:v60 presentationType:v61];
  v62 = [(PXGMetalTextureConverter *)self delegate];
  [v62 metalTextureConverter:self didCreateTexture:v54 options:{v11, LODWORD(var2)}];

  v53 = 0;
  if (a6)
  {
LABEL_39:
    v63 = v53;
    *a6 = v53;
  }

LABEL_40:
  v64 = v54;

  return v64;
}

- (PXGMetalTextureCache)renderTextureCache
{
  renderTextureCache = self->_renderTextureCache;
  if (!renderTextureCache)
  {
    v4 = +[PXTungstenSettings sharedInstance];
    if ([v4 enableRenderTextureCache])
    {
      v5 = [PXGMetalTextureCache alloc];
      v6 = [(PXGMetalTextureConverter *)self metalRenderContext];
      v7 = [(PXGMetalTextureCache *)v5 initWithContext:v6];
      v8 = self->_renderTextureCache;
      self->_renderTextureCache = v7;

      -[PXGMetalTextureCache setCapacity:](self->_renderTextureCache, "setCapacity:", [v4 renderTextureCacheCapacity]);
      [v4 renderTextureCacheAgeLimit];
      [(PXGMetalTextureCache *)self->_renderTextureCache setAgeLimit:?];
      -[PXGMetalTextureCache setSizeLimit:](self->_renderTextureCache, "setSizeLimit:", [v4 renderTextureCacheSizeLimitMB] << 20);
    }

    renderTextureCache = self->_renderTextureCache;
  }

  return renderTextureCache;
}

- (CIContext)renderContext
{
  v12[1] = *MEMORY[0x277D85DE8];
  renderContext = self->_renderContext;
  if (!renderContext)
  {
    v4 = MEMORY[0x277CBF740];
    v5 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v6 = [v5 device];
    v11 = *MEMORY[0x277CBF910];
    v12[0] = MEMORY[0x277CBEC28];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v4 contextWithMTLDevice:v6 options:v7];
    v9 = self->_renderContext;
    self->_renderContext = v8;

    renderContext = self->_renderContext;
  }

  return renderContext;
}

- (__CVMetalTextureCache)videoTextureCache
{
  p_videoTextureCache = &self->_videoTextureCache;
  result = self->_videoTextureCache;
  if (!result)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v7 = [v6 device];
    CVMetalTextureCacheCreate(v5, 0, v7, 0, p_videoTextureCache);

    return self->_videoTextureCache;
  }

  return result;
}

- (void)dealloc
{
  videoTextureCache = self->_videoTextureCache;
  if (videoTextureCache)
  {
    CFRelease(videoTextureCache);
  }

  v4.receiver = self;
  v4.super_class = PXGMetalTextureConverter;
  [(PXGMetalTextureConverter *)&v4 dealloc];
}

- (PXGMetalTextureConverter)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGMetalTextureConverter.m" lineNumber:113 description:{@"%s is not available as initializer", "-[PXGMetalTextureConverter init]"}];

  abort();
}

- (PXGMetalTextureConverter)initWithContext:(id)a3 presentationType:(unsigned __int8)a4 destinationColorspaceName:(unint64_t)a5 layoutQueue:(id)a6
{
  v12 = a3;
  v13 = a6;
  v30.receiver = self;
  v30.super_class = PXGMetalTextureConverter;
  v14 = [(PXGMetalTextureConverter *)&v30 init];
  if (v14)
  {
    v15 = [v12 device];

    if (!v15)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:a2 object:v14 file:@"PXGMetalTextureConverter.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"context.device != nil"}];
    }

    objc_storeStrong(&v14->_metalRenderContext, a3);
    v14->_presentationType = a4;
    objc_storeStrong(&v14->_layoutQueue, a6);
    v16 = [MEMORY[0x277D759A0] px_mainScreen];
    [v16 nativeBounds];
    v17 = [MEMORY[0x277D759A0] px_mainScreen];
    [v17 nativeScale];
    PXSizeScale();

    PXSizeGetArea();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = 2073600;
    }

    if (v19 <= 0)
    {
      v28 = [MEMORY[0x277CCA890] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSInteger _PXGScreenPixelCount(void)"];
      [v28 handleFailureInFunction:v29 file:@"PXGMetalTextureConverter.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"screenPixelCount > 0"}];
    }

    v14->_screenPixelCount = v19;
    v14->_destinationColorSpaceName = a5;
    v14->_destinationColorSpace = PXGetColorSpace();
    v14->_hasExtendedColorTarget = PXColorSpaceSupportsExtendedRange();
    v20 = [[PXGColorProgramLibrary alloc] initWithContext:v12 destinationColorSpace:[(PXGMetalTextureConverter *)v14 destinationColorSpace]];
    colorProgramLibrary = v14->_colorProgramLibrary;
    v14->_colorProgramLibrary = v20;

    v22 = [(PXGMetalTextureConverter *)v14 _createTransparentTexture];
    transparentTexture = v14->_transparentTexture;
    v14->_transparentTexture = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    failedPixelFormats = v14->_failedPixelFormats;
    v14->_failedPixelFormats = v24;
  }

  return v14;
}

@end