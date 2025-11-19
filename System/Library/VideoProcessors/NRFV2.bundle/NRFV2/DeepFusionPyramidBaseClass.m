@interface DeepFusionPyramidBaseClass
+ (int)prewarmShaders:(id)a3;
- (DeepFusionPyramidBaseClass)initWithMetalContext:(id)a3;
- (int)_computeScratchBufferSizeForTextures:(unint64_t)a3 requiredSize:(unint64_t *)a4;
- (int)allocateTextures:(id)a3;
- (int)setWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(unint64_t)a5 numLevels:(unint64_t)a6;
- (void)makeTexturesAliasable;
- (void)makeTexturesAliasableWithRange:(_NSRange)a3;
- (void)purgeResources;
@end

@implementation DeepFusionPyramidBaseClass

- (DeepFusionPyramidBaseClass)initWithMetalContext:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = DeepFusionPyramidBaseClass;
  v6 = [(DeepFusionPyramidBaseClass *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, a3);
    v11 = objc_msgSend_sharedInstance(DeepFusionLaplacianPyramidShared, v8, v9, v10);
    v14 = objc_msgSend_getShaders_(v11, v12, *(v7 + 8), v13);
    v15 = *(v7 + 16);
    *(v7 + 16) = v14;

    if (*(v7 + 16))
    {
      *(v7 + 40) = 0u;
      *(v7 + 24) = 0u;
      v16 = *(v7 + 72);
      *(v7 + 72) = 0;

      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v17 = v7;
    }

    else
    {
      sub_2958C8584(v7, &v22);
      v17 = v22;
    }
  }

  else
  {
    v18 = objc_opt_class();
    NSStringFromClass(v18);

    v17 = 0;
  }

  v19 = v17;

  return v19;
}

- (int)setWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(unint64_t)a5 numLevels:(unint64_t)a6
{
  if (a3 + a4)
  {
    self->_width = a3;
    self->_height = a4;
    self->_pixelFormat = a5;
    self->_numLevels = a6;
    v7 = objc_msgSend_device(self->_metal, a2, a3, a4);

    if (v7)
    {
      if (self->_numLevels)
      {
        v11 = objc_msgSend_device(self->_metal, v8, v9, v10);
        self->_minTexAlignment = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v11, v12, self->_pixelFormat, v13);

        v17 = objc_msgSend_device(self->_metal, v14, v15, v16, 0, 0, 0);
        pixelFormat = self->_pixelFormat;
        MTLPixelFormatGetInfoForDevice();

        self->_pixelBytes = 0;
        sub_2958C8698();
        return -12785;
      }

      sub_2958C86FC();
    }

    else
    {
      sub_2958C8760();
    }
  }

  else
  {
    sub_2958C87C4();
  }

  return -12780;
}

- (int)_computeScratchBufferSizeForTextures:(unint64_t)a3 requiredSize:(unint64_t *)a4
{
  if (!a4)
  {
    sub_2958C88F0();
    return -12780;
  }

  *a4 = 0;
  if (!a3)
  {
    sub_2958C888C();
    return -12780;
  }

  v7 = 0;
  for (i = 0; i != a3; ++i)
  {
    v9 = self->_height >> i;
    v7 += objc_msgSend__strideForWidth_(self, a2, self->_width >> i, a4) * v9;
  }

  if (v7)
  {
    result = 0;
    *a4 = v7;
  }

  else
  {
    sub_2958C8828();
    return -12785;
  }

  return result;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [DeepFusionLaplacianPyramidShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, v3, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (void)purgeResources
{
  outputTextures = self->_outputTextures;
  self->_outputTextures = 0;
  MEMORY[0x2A1C71028]();
}

- (int)allocateTextures:(id)a3
{
  v5 = objc_msgSend_allocator(self->_metal, a2, a3, v3);
  v9 = objc_msgSend_newTextureDescriptor(v5, v6, v7, v8);

  if (!v9)
  {
    sub_2958C8AB0(&v67);
    v64 = v67;
    goto LABEL_9;
  }

  if (!self->_pixelFormat)
  {
    sub_2958C8A50();
    goto LABEL_8;
  }

  if (objc_msgSend_count(self->_outputTextures, v10, v11, v12))
  {
    sub_2958C8954();
    goto LABEL_8;
  }

  v16 = objc_msgSend_desc(v9, v13, v14, v15);
  objc_msgSend_setCompressionMode_(v16, v17, 2, v18);

  v22 = objc_msgSend_desc(v9, v19, v20, v21);
  objc_msgSend_setCompressionFootprint_(v22, v23, 0, v24);

  v28 = objc_msgSend_desc(v9, v25, v26, v27);
  objc_msgSend_setUsage_(v28, v29, 7, v30);

  pixelFormat = self->_pixelFormat;
  v35 = objc_msgSend_desc(v9, v32, v33, v34);
  objc_msgSend_setPixelFormat_(v35, v36, pixelFormat, v37);

  if (!self->_numLevels)
  {
LABEL_8:
    v64 = 0;
    goto LABEL_9;
  }

  v41 = 0;
  while (1)
  {
    v42 = self->_width >> v41;
    v43 = objc_msgSend_desc(v9, v38, v39, v40);
    objc_msgSend_setWidth_(v43, v44, v42, v45);

    v46 = self->_height >> v41;
    v50 = objc_msgSend_desc(v9, v47, v48, v49);
    objc_msgSend_setHeight_(v50, v51, v46, v52);

    objc_msgSend_setLabel_(v9, v53, 0, v54);
    v58 = objc_msgSend_allocator(self->_metal, v55, v56, v57);
    v61 = objc_msgSend_newTextureWithDescriptor_(v58, v59, v9, v60);

    if (!v61)
    {
      break;
    }

    objc_msgSend_addObject_(self->_outputTextures, v62, v61, v63);

    if (++v41 >= self->_numLevels)
    {
      goto LABEL_8;
    }
  }

  sub_2958C89B4(&v66);
  v64 = v66;
LABEL_9:

  return v64;
}

- (void)makeTexturesAliasable
{
  objc_msgSend_makeTexturesAliasableWithRange_(self, a2, 0, self->_numLevels);
  outputTextures = self->_outputTextures;

  objc_msgSend_removeAllObjects(outputTextures, v3, v4, v5);
}

- (void)makeTexturesAliasableWithRange:(_NSRange)a3
{
  if (a3.location < a3.location + a3.length)
  {
    length = a3.length;
    location = a3.location;
    do
    {
      v6 = objc_msgSend_objectAtIndexedSubscript_(self->_outputTextures, a2, location, a3.length);
      FigMetalDecRef();

      ++location;
      --length;
    }

    while (length);
  }
}

@end