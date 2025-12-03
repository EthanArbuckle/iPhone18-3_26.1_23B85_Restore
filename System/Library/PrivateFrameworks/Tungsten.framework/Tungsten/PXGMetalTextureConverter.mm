@interface PXGMetalTextureConverter
- (CIContext)renderContext;
- (PXGMetalTextureCache)renderTextureCache;
- (PXGMetalTextureConverter)init;
- (PXGMetalTextureConverter)initWithContext:(id)context presentationType:(unsigned __int8)type destinationColorspaceName:(unint64_t)name layoutQueue:(id)queue;
- (PXGMetalTextureConverterDelegate)delegate;
- (__CVMetalTextureCache)videoTextureCache;
- (id)_applyAdjustment:(id)adjustment toMetalTexture:(id)texture options:(id)options;
- (id)_createTextureFromCIImage:(id)image source:(id)source options:(id)options;
- (id)_createTransparentTexture;
- (id)_generateMipmapsForMetalTexture:(id)texture;
- (id)applyAdjustment:(id)adjustment toTexture:(id)texture options:(id)options;
- (id)createAtlasForTextureAtlasManager:(id)manager;
- (id)createPayloadTextureFromPayload:(id)payload;
- (id)createTextureAtlasManagerForImageDataSpec:(id *)spec mipmapped:(BOOL)mipmapped;
- (id)createTextureFromCGImage:(CGImage *)image transform:(float)transform alpha:(id)alpha options:(id *)options error:;
- (id)createTextureFromCVPixelBuffer:(__CVBuffer *)buffer transform:(float)transform alpha:(id)alpha options:(id *)options error:;
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

- (id)createAtlasForTextureAtlasManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    px_descriptionForAssertionMessage = [managerCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureConverter.m" lineNumber:613 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"textureAtlasManager", v22, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureConverter.m" lineNumber:613 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"textureAtlasManager", v22}];
  }

LABEL_3:
  v6 = [PXGMetalTextureAtlas alloc];
  [managerCopy thumbnailSize];
  v8 = v7;
  v10 = v9;
  pixelFormat = [managerCopy pixelFormat];
  capacityPerAtlas = [managerCopy capacityPerAtlas];
  mipmapped = [managerCopy mipmapped];
  colorProgram = [managerCopy colorProgram];
  metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
  layoutQueue = [(PXGMetalTextureConverter *)self layoutQueue];
  v17 = [(PXGMetalTextureAtlas *)v6 initWithThumbnailSize:pixelFormat pixelFormat:capacityPerAtlas capacity:mipmapped mipmapped:colorProgram colorProgram:metalRenderContext context:layoutQueue layoutQueue:v8, v10];

  delegate = [(PXGMetalTextureConverter *)self delegate];
  [delegate metalTextureConverter:self didCreateTexture:v17 options:{0, 0}];

  return v17;
}

- (id)createTextureAtlasManagerForImageDataSpec:(id *)spec mipmapped:(BOOL)mipmapped
{
  mipmappedCopy = mipmapped;
  screenPixelCount = self->_screenPixelCount;
  var2 = spec->var2;
  var3 = spec->var3;
  v10 = var2;
  lowMemoryMode = [(PXGMetalTextureConverter *)self lowMemoryMode];
  LODWORD(v12) = [PXGMetalTextureAtlas maxCapacityForThumbnailSize:spec->var0 pixelFormat:var2, var3];
  PXGColorSpaceNameFromCFStringRef(spec->var1);
  v13 = PXGetColorSpace();
  if (PXGRequiresColorMatching(v13, [(PXGMetalTextureConverter *)self destinationColorSpace]))
  {
    colorProgramLibrary = [(PXGMetalTextureConverter *)self colorProgramLibrary];
    v15 = [colorProgramLibrary colorProgramForSourceColorSpace:v13 flags:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = 0.1;
  if (lowMemoryMode)
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
  var0 = spec->var0;
  requestQueue = [(PXGMetalTextureConverter *)self requestQueue];
  layoutQueue = [(PXGMetalTextureConverter *)self layoutQueue];
  metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
  v23 = [(PXGMetalTextureAtlasManager *)v18 initWithThumbnailSize:var0 pixelFormat:v12 capacityPerAtlas:mipmappedCopy mipmapped:requestQueue requestQueue:layoutQueue layoutQueue:v15 colorProgram:v10 context:var3, metalRenderContext];

  [(PXGMetalTextureAtlasManager *)v23 setTextureConverter:self];

  return v23;
}

- (id)createPayloadTextureFromPayload:(id)payload
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXGMetalCaptureSpriteTexture alloc] initWithPayload:payloadCopy presentationType:[(PXGMetalTextureConverter *)self presentationType]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createTextureFromCIImage:(id)image source:(id)source options:(id)options
{
  var2 = options.var2;
  v6 = *&options.var0;
  v47 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  sourceCopy = source;
  renderTextureCache = [(PXGMetalTextureConverter *)self renderTextureCache];
  [imageCopy extent];
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

  v17 = [renderTextureCache textureWithSize:v16 pixelFormat:v13, v15];

  if (!v17)
  {
    metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
    v17 = PXGCreateMetalTextureToRenderCIImage(imageCopy, metalRenderContext);

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
  renderContext = [(PXGMetalTextureConverter *)self renderContext];
  v42 = 0;
  v21 = [renderContext startTaskToRender:imageCopy toDestination:v19 error:&v42];
  v22 = v42;

  if (v21)
  {
    [sourceCopy orientationTransform];
    v38 = v23;
    [sourceCopy alpha];
    v25 = v24;
    v26 = [PXGMetalImageTexture alloc];
    LODWORD(v27) = 1.0;
    presentationType = [(PXGMetalTextureConverter *)self presentationType];
    *&v29 = v25;
    v30 = [(PXGMetalImageTexture *)v26 initWithTexture:v17 colorProgram:0 isOpaque:v25 >= 1.0 shaderFlags:0 orientationTransform:presentationType alpha:v38 presentationType:v29];
    renderTextureCache2 = [(PXGMetalTextureConverter *)self renderTextureCache];
    [(PXGMetalImageTexture *)v30 setTextureCache:renderTextureCache2];

    v41 = v22;
    v32 = [v21 waitUntilCompletedAndReturnError:&v41];
    v33 = v41;

    if (!v32)
    {
      v34 = PXAssertGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v44 = imageCopy;
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
    v44 = imageCopy;
    v45 = 2112;
    v46 = v33;
    _os_log_error_impl(&dword_21AD38000, v35, OS_LOG_TYPE_ERROR, "Unable to create texture for CIImage %@, error: %@", buf, 0x16u);
  }

  v30 = 0;
LABEL_19:

  if (v30)
  {
    delegate = [(PXGMetalTextureConverter *)self delegate];
    [delegate metalTextureConverter:self didCreateTexture:v30 options:{v40, LODWORD(v39)}];
  }

LABEL_22:

  return v30;
}

- (id)_applyAdjustment:(id)adjustment toMetalTexture:(id)texture options:(id)options
{
  var2 = options.var2;
  v86 = *&options.var0;
  v115[1] = *MEMORY[0x277D85DE8];
  adjustmentCopy = adjustment;
  textureCopy = texture;
  colorProgram = [textureCopy colorProgram];
  sourceColorSpace = [colorProgram sourceColorSpace];
  if (!sourceColorSpace)
  {
    sourceColorSpace = [(PXGMetalTextureConverter *)self destinationColorSpace];
  }

  selfCopy = self;

  chromaTexture = [textureCopy chromaTexture];

  v12 = MEMORY[0x277CBFA58];
  v13 = MEMORY[0x277CBEC38];
  v14 = 0x277CBE000uLL;
  if (chromaTexture)
  {
    v15 = MEMORY[0x277CBF758];
    texture = [textureCopy texture];
    v114 = *v12;
    v17 = v114;
    v115[0] = v13;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:&v114 count:1];
    v19 = [v15 imageWithMTLTexture:texture options:v18];

    v20 = MEMORY[0x277CBF758];
    chromaTexture2 = [textureCopy chromaTexture];
    v112 = v17;
    v113 = v13;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
    v23 = [v20 imageWithMTLTexture:chromaTexture2 options:v22];

    v24 = 0;
    v25 = ([textureCopy shaderFlags] >> 8) & 0xF;
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
    v32 = [MEMORY[0x277CBF758] imageWithYImage:v19 CrCbImage:v23 CrCbScale:(v56 / v57) matrix:v26 fullRange:v24 colorSpace:sourceColorSpace];
    v14 = 0x277CBE000uLL;
    goto LABEL_33;
  }

  v27 = MEMORY[0x277CBEB38];
  v28 = *MEMORY[0x277CBFA58];
  v110[0] = *MEMORY[0x277CBFA40];
  v110[1] = v28;
  v111[0] = sourceColorSpace;
  v111[1] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  v19 = [v27 dictionaryWithDictionary:v29];

  if (([textureCopy shaderFlags] & 3) != 0)
  {
    [v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CBFA60]];
  }

  v30 = MEMORY[0x277CBF758];
  texture2 = [textureCopy texture];
  v32 = [v30 imageWithMTLTexture:texture2 options:v19];

  if (v32)
  {
    v87 = adjustmentCopy;
    if (([textureCopy shaderFlags] & 4) != 0)
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

    if (([textureCopy shaderFlags] & 8) != 0)
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

    if ([textureCopy shaderFlags])
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

    if (([textureCopy shaderFlags] & 2) == 0)
    {
      adjustmentCopy = v87;
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
    adjustmentCopy = v87;
  }

  else
  {
    v23 = PXGTungstenGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      texture3 = [textureCopy texture];
      [texture3 pixelFormat];
      *buf = 136315138;
      Name = MTLPixelFormatGetName();
      _os_log_impl(&dword_21AD38000, v23, OS_LOG_TYPE_DEBUG, "Failed to create CIImage from Metal pixel format: %s", buf, 0xCu);
    }

    v32 = 0;
  }

LABEL_33:

LABEL_34:
  if (v32 || ([textureCopy texture], v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "iosurface"), v68, v70 = MEMORY[0x277CBFA40], v69) && (v71 = MEMORY[0x277CBF758], objc_msgSend(textureCopy, "texture"), v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "iosurface"), v100 = *v70, v101 = sourceColorSpace, objc_msgSend(*(v14 + 2752), "dictionaryWithObjects:forKeys:count:", &v101, &v100, 1), v74 = adjustmentCopy, v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "imageWithIOSurface:options:", v73, v75), v32 = objc_claimAutoreleasedReturnValue(), v75, adjustmentCopy = v74, v72, v32) || objc_msgSend(textureCopy, "sourceCVPixelBuffer") && (v76 = MEMORY[0x277CBF758], v77 = objc_msgSend(textureCopy, "sourceCVPixelBuffer"), v98 = *v70, v99 = sourceColorSpace, objc_msgSend(*(v14 + 2752), "dictionaryWithObjects:forKeys:count:", &v99, &v98, 1), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "imageWithCVPixelBuffer:options:", v77, v78), v32 = objc_claimAutoreleasedReturnValue(), v78, v32) || objc_msgSend(textureCopy, "sourceCGImage") && (v79 = MEMORY[0x277CBF758], v80 = objc_msgSend(textureCopy, "sourceCGImage"), v96 = *v70, v97 = sourceColorSpace, objc_msgSend(*(v14 + 2752), "dictionaryWithObjects:forKeys:count:", &v97, &v96, 1), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "imageWithCGImage:options:", v80, v81), v32 = objc_claimAutoreleasedReturnValue(), v81, v32))
  {
    [v32 extent];
    v60 = [adjustmentCopy applyToImage:v32 targetSize:{v58, v59}];
    if (!v60)
    {
      v61 = PXAssertGetLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        Name = adjustmentCopy;
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
        Name = adjustmentCopy;
        v90 = 2112;
        v91 = v32;
        v92 = 2112;
        v93 = v60;
        _os_log_error_impl(&dword_21AD38000, v62, OS_LOG_TYPE_ERROR, "Empty size from adjustment:%@ to image:%@ adjustedImage:%@", buf, 0x20u);
      }
    }

    if (v60 && ([v60 extent], !PXSizeIsEmpty()))
    {
      v67 = [(PXGMetalTextureConverter *)selfCopy _createTextureFromCIImage:v60 source:textureCopy options:v86, LODWORD(var2)];
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
        Name = adjustmentCopy;
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
      Name = textureCopy;
      _os_log_error_impl(&dword_21AD38000, v32, OS_LOG_TYPE_ERROR, "Unable to create CIImage from texture %@", buf, 0xCu);
    }

    v67 = 0;
  }

  return v67;
}

- (id)_generateMipmapsForMetalTexture:(id)texture
{
  v23 = *MEMORY[0x277D85DE8];
  textureCopy = texture;
  texture = [textureCopy texture];
  if ([texture pixelFormat] > 0x1F3)
  {
    v18 = PXGTungstenGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      pixelFormat = [texture pixelFormat];
      _os_log_impl(&dword_21AD38000, v18, OS_LOG_TYPE_DEBUG, "Cannot generate mipmaps for incompatible pixel format %d", buf, 8u);
    }

    v17 = 0;
  }

  else
  {
    metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
    v7 = [metalRenderContext newMipmappedTextureFromTexture:texture];

    v8 = [PXGMetalImageTexture alloc];
    colorProgram = [textureCopy colorProgram];
    isOpaque = [textureCopy isOpaque];
    shaderFlags = [textureCopy shaderFlags];
    [textureCopy orientationTransform];
    v20 = v12;
    [textureCopy alpha];
    v14 = v13;
    presentationType = [(PXGMetalTextureConverter *)self presentationType];
    LODWORD(v16) = v14;
    v17 = [(PXGMetalImageTexture *)v8 initWithTexture:v7 colorProgram:colorProgram isOpaque:isOpaque shaderFlags:shaderFlags orientationTransform:presentationType alpha:v20 presentationType:v16];
  }

  return v17;
}

- (id)applyAdjustment:(id)adjustment toTexture:(id)texture options:(id)options
{
  var2 = options.var2;
  v6 = *&options.var0;
  adjustmentCopy = adjustment;
  textureCopy = texture;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (adjustmentCopy)
  {
    objc_opt_class();
    [textureCopy pixelSize];
    [textureCopy pixelSize];
    kdebug_trace();
    v11 = [(PXGMetalTextureConverter *)self _applyAdjustment:adjustmentCopy toMetalTexture:textureCopy options:v6, LODWORD(var2)];
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
    v12 = textureCopy;
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

- (id)createTextureFromCVPixelBuffer:(__CVBuffer *)buffer transform:(float)transform alpha:(id)alpha options:(id *)options error:
{
  var2 = alpha.var2;
  v9 = *&alpha.var0;
  v10 = v6;
  v46 = *&transform;
  v55 = *MEMORY[0x277D85DE8];
  v50 = 0;
  metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
  v48 = 0;
  v49 = 0;
  v14 = PXGCreateMetalTexturesFromPixelBuffer(buffer, metalRenderContext, [(PXGMetalTextureConverter *)self videoTextureCache], &v49, &v48, &v50);
  v15 = v49;
  v16 = v48;

  if (v14)
  {
    ColorSpace = CVImageBufferGetColorSpace(buffer);
    if (!ColorSpace)
    {
      v18 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
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
      colorProgramLibrary = [(PXGMetalTextureConverter *)self colorProgramLibrary];
      v20 = [colorProgramLibrary colorProgramForSourceColorSpace:ColorSpace flags:1];

      if (v20)
      {
        goto LABEL_15;
      }

      if (CGColorSpaceUsesITUR_2100TF(ColorSpace))
      {
        v47 = v16;
        v21 = v15;
        optionsCopy2 = options;
        v23 = 1;
        goto LABEL_18;
      }

      v24 = PXAssertGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        bufferCopy3 = ColorSpace;
        v53 = 2112;
        bufferCopy2 = buffer;
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
    presentationType = [(PXGMetalTextureConverter *)self presentationType];
    *&v29 = v10;
    *&v30 = var2;
    v31 = [(PXGMetalImageTexture *)v25 initWithTexture:v15 chromaTexture:v16 colorProgram:v20 isOpaque:v10 >= 1.0 shaderFlags:v27 orientationTransform:presentationType alpha:v46 suppressContentsRect:v29 presentationType:v30];
    [(PXGImageTexture *)v31 setSourceCVPixelBuffer:buffer];

    if (v31)
    {
      delegate = [(PXGMetalTextureConverter *)self delegate];
      [delegate metalTextureConverter:self didCreateTexture:v31 options:v45, LODWORD(var2)];
      v33 = 0;
      goto LABEL_28;
    }
  }

  v47 = v16;
  v21 = v15;
  optionsCopy2 = options;
  v23 = 0;
LABEL_18:
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v35 = MEMORY[0x277CCA9B8];
  v36 = PXGStringForOSType(PixelFormatType);
  v33 = [v35 px_genericErrorWithDebugDescription:{@"Unable to create texture for format:%@ pixelBuffer:%@", v36, buffer}];

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
      bufferCopy3 = v42;
      v53 = 2114;
      bufferCopy2 = buffer;
      _os_log_impl(&dword_21AD38000, v41, OS_LOG_TYPE_FAULT, "Failed to create metal texture for pixel buffer format:%{public}@ pixelBuffer:%{public}@", buf, 0x16u);
    }
  }

  options = optionsCopy2;
  if ((v23 & 1) == 0)
  {
    delegate = PXAssertGetLog();
    v15 = v21;
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      bufferCopy3 = buffer;
      _os_log_error_impl(&dword_21AD38000, delegate, OS_LOG_TYPE_ERROR, "Unable to create texture for video pixelBuffer %@", buf, 0xCu);
    }

    v31 = 0;
    v16 = v47;
LABEL_28:

    if (!options)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v31 = 0;
  v15 = v21;
  v16 = v47;
  if (options)
  {
LABEL_29:
    v43 = v33;
    *options = v33;
  }

LABEL_30:

  return v31;
}

- (id)createTextureFromCGImage:(CGImage *)image transform:(float)transform alpha:(id)alpha options:(id *)options error:
{
  var2 = alpha.var2;
  v11 = *&alpha.var0;
  v12 = v6;
  v69 = *&transform;
  v81 = *MEMORY[0x277D85DE8];
  v74 = 0;
  metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
  device = [metalRenderContext device];
  limits = [device limits];
  LODWORD(v7) = *(limits + 132);
  LODWORD(v8) = *(limits + 136);

  Property = CGImageGetProperty();
  if (Property)
  {
    v19 = Property;
    metalRenderContext2 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v72 = 0;
    v73 = 0;
    PXGCreateMetalTexturesFromIOSurface(v19, metalRenderContext2, &v73, &v72, &v74);
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
    metalRenderContext3 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v70 = 0;
    v71 = 0;
    PXGCreateMetalTexturesFromIOSurface(v24, metalRenderContext3, &v71, &v70, &v74);
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

  metalRenderContext4 = [(PXGMetalTextureConverter *)self metalRenderContext];
  v21 = PXGCreateMetalTextureFromBytesInCGImage(image, metalRenderContext4, &v74);

  if (!v21)
  {
    v27 = v7;
    v28 = v8;
    v29 = PXGTungstenGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      imageCopy = image;
      _os_log_impl(&dword_21AD38000, v29, OS_LOG_TYPE_DEFAULT, "Having to redraw image %{public}@", buf, 0xCu);
    }

    kdebug_trace();
    [(PXGMetalTextureConverter *)self destinationColorSpaceName];
    [(PXGMetalTextureConverter *)self hasExtendedColorTarget];
    v30 = PXGMetalCompatibleImageByRedrawingCGImage(image, v27, v28);
    kdebug_trace();
    metalRenderContext5 = [(PXGMetalTextureConverter *)self metalRenderContext];
    v21 = PXGCreateMetalTextureFromBytesInCGImage(v30, metalRenderContext5, &v74);

    if (!v21)
    {
      v52 = PXAssertGetLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        imageCopy = v30;
        v77 = 2112;
        imageCopy3 = image;
        _os_log_fault_impl(&dword_21AD38000, v52, OS_LOG_TYPE_FAULT, "Failed to create metal texture from redrawn image:%@ sourceImage:%@", buf, 0x16u);
      }

      v53 = [MEMORY[0x277CCA9B8] px_genericErrorWithDebugDescription:{@"Unable to create texture for image:%@", image}];
      v38 = 0;
      v54 = 0;
      if (options)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    image = v30;
  }

LABEL_14:
  AlphaInfo = CGImageGetAlphaInfo(image);
  if (v12 >= 1.0)
  {
    v33 = (AlphaInfo < kCGImageAlphaOnly) & (0x61u >> AlphaInfo);
  }

  else
  {
    v33 = 0;
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (PXGRequiresColorMatching(ColorSpace, [(PXGMetalTextureConverter *)self destinationColorSpace]))
  {
    v68 = v11;
    colorProgramLibrary = [(PXGMetalTextureConverter *)self colorProgramLibrary];
    v36 = [colorProgramLibrary colorProgramForSourceColorSpace:CGImageGetColorSpace(image) flags:v33];

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
        v40 = CGImageGetColorSpace(image);
        *buf = 138543618;
        imageCopy = v40;
        v77 = 2114;
        imageCopy3 = image;
        _os_log_impl(&dword_21AD38000, v39, OS_LOG_TYPE_ERROR, "Unable to convert color space:%{public}@ to color program for image:%{public}@", buf, 0x16u);
      }

      kdebug_trace();
      metalRenderContext6 = [(PXGMetalTextureConverter *)self metalRenderContext];
      device2 = [metalRenderContext6 device];
      limits2 = [device2 limits];
      LODWORD(v44) = *(limits2 + 132);
      LODWORD(v45) = *(limits2 + 136);
      v46 = v44;
      v47 = v45;
      [(PXGMetalTextureConverter *)self destinationColorSpaceName];
      [(PXGMetalTextureConverter *)self hasExtendedColorTarget];
      v48 = PXGMetalCompatibleImageByRedrawingCGImage(image, v46, v47);

      metalRenderContext7 = [(PXGMetalTextureConverter *)self metalRenderContext];
      v38 = PXGCreateMetalTextureFromBytesInCGImage(v48, metalRenderContext7, &v74);

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

        colorProgramLibrary2 = [(PXGMetalTextureConverter *)self colorProgramLibrary];
        v36 = [colorProgramLibrary2 colorProgramForSourceColorSpace:CGImageGetColorSpace(v48) flags:v33 | v37];

        if (!v36)
        {
          v56 = PXAssertGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v66 = CGImageGetColorSpace(v48);
            destinationColorSpace = [(PXGMetalTextureConverter *)self destinationColorSpace];
            *buf = 138412802;
            imageCopy = v66;
            v77 = 2112;
            imageCopy3 = destinationColorSpace;
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
  presentationType = [(PXGMetalTextureConverter *)self presentationType];
  *&v60 = v12;
  *&v61 = var2;
  v54 = [(PXGMetalImageTexture *)v57 initWithTexture:v38 chromaTexture:v22 colorProgram:v36 isOpaque:v37 shaderFlags:v58 orientationTransform:presentationType alpha:v69 suppressContentsRect:v60 presentationType:v61];
  delegate = [(PXGMetalTextureConverter *)self delegate];
  [delegate metalTextureConverter:self didCreateTexture:v54 options:{v11, LODWORD(var2)}];

  v53 = 0;
  if (options)
  {
LABEL_39:
    v63 = v53;
    *options = v53;
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
      metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
      v7 = [(PXGMetalTextureCache *)v5 initWithContext:metalRenderContext];
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
    metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
    device = [metalRenderContext device];
    v11 = *MEMORY[0x277CBF910];
    v12[0] = MEMORY[0x277CBEC28];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v4 contextWithMTLDevice:device options:v7];
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
    metalRenderContext = [(PXGMetalTextureConverter *)self metalRenderContext];
    device = [metalRenderContext device];
    CVMetalTextureCacheCreate(v5, 0, device, 0, p_videoTextureCache);

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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureConverter.m" lineNumber:113 description:{@"%s is not available as initializer", "-[PXGMetalTextureConverter init]"}];

  abort();
}

- (PXGMetalTextureConverter)initWithContext:(id)context presentationType:(unsigned __int8)type destinationColorspaceName:(unint64_t)name layoutQueue:(id)queue
{
  contextCopy = context;
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = PXGMetalTextureConverter;
  v14 = [(PXGMetalTextureConverter *)&v30 init];
  if (v14)
  {
    device = [contextCopy device];

    if (!device)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v14 file:@"PXGMetalTextureConverter.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"context.device != nil"}];
    }

    objc_storeStrong(&v14->_metalRenderContext, context);
    v14->_presentationType = type;
    objc_storeStrong(&v14->_layoutQueue, queue);
    px_mainScreen = [MEMORY[0x277D759A0] px_mainScreen];
    [px_mainScreen nativeBounds];
    px_mainScreen2 = [MEMORY[0x277D759A0] px_mainScreen];
    [px_mainScreen2 nativeScale];
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
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSInteger _PXGScreenPixelCount(void)"];
      [currentHandler2 handleFailureInFunction:v29 file:@"PXGMetalTextureConverter.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"screenPixelCount > 0"}];
    }

    v14->_screenPixelCount = v19;
    v14->_destinationColorSpaceName = name;
    v14->_destinationColorSpace = PXGetColorSpace();
    v14->_hasExtendedColorTarget = PXColorSpaceSupportsExtendedRange();
    v20 = [[PXGColorProgramLibrary alloc] initWithContext:contextCopy destinationColorSpace:[(PXGMetalTextureConverter *)v14 destinationColorSpace]];
    colorProgramLibrary = v14->_colorProgramLibrary;
    v14->_colorProgramLibrary = v20;

    _createTransparentTexture = [(PXGMetalTextureConverter *)v14 _createTransparentTexture];
    transparentTexture = v14->_transparentTexture;
    v14->_transparentTexture = _createTransparentTexture;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    failedPixelFormats = v14->_failedPixelFormats;
    v14->_failedPixelFormats = v24;
  }

  return v14;
}

@end