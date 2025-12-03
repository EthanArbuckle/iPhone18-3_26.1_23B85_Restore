@interface PyramidStorage_NRF
+ (id)createTextureAlias:(id)alias;
+ (int)allocatePyramidWithMetalContext:(id)context label:(id)label width:(unint64_t)width height:(unint64_t)height isFP16:(BOOL)p16 createLuma:(BOOL)luma createChroma:(BOOL)chroma startingLevel:(BOOL)self0 testSize:(BOOL)self1 pyramid:(id)self2;
+ (int)allocatePyramidWithWidth:(unsigned __int16)width height:(unsigned __int16)height allocLevel0:(BOOL)level0 levels:(unsigned __int8)levels texUsage:(unint64_t)usage mtlSubAllocatorID:(unsigned int)d label:(id)label lumaFormat:(unint64_t)self0 chromaFormat:(unint64_t)self1 outPyramid:(id)self2 metal:(id)self3;
+ (int)pyramidMemorySize:(unsigned __int16)size height:(unsigned __int16)height overlapLevels:(BOOL)levels allocLevel0:(BOOL)level0 levels:(unsigned __int8)a7 lumaFormat:(unint64_t)format chromaFormat:(unint64_t)chromaFormat outSize:(unint64_t *)self0 metal:(id)self1;
+ (void)makePyramidAliasable:(id)aliasable metal:(id)metal releaseBand0:(BOOL)band0;
- (int)setLumaTexture:(id)texture chromaTexture:(id)chromaTexture level:(int)level metal:(id)metal;
- (int)setPixelBuffer:(__CVBuffer *)buffer level:(int)level texUsage:(unint64_t)usage metal:(id)metal alignDims:(BOOL)dims;
- (int)setPixelBufferFloat16:(__CVBuffer *)float16 chromaBuffer:(__CVBuffer *)buffer level:(int)level metal:(id)metal;
- (void)clearLevel:(int)level;
- (void)dealloc;
- (void)releaseBuffers;
@end

@implementation PyramidStorage_NRF

+ (void)makePyramidAliasable:(id)aliasable metal:(id)metal releaseBand0:(BOOL)band0
{
  band0Copy = band0;
  aliasableCopy = aliasable;
  metalCopy = metal;
  if (aliasableCopy)
  {
    v8 = !band0Copy;
    if (aliasableCopy[2] > !band0Copy)
    {
      v9 = &aliasableCopy[2 * v8 + 124];
      do
      {
        if (*(v9 - 20))
        {
          FigMetalDecRef();
        }

        if (*v9)
        {
          FigMetalDecRef();
        }

        ++v9;
        ++v8;
      }

      while (aliasableCopy[2] > v8);
    }
  }
}

+ (int)allocatePyramidWithMetalContext:(id)context label:(id)label width:(unint64_t)width height:(unint64_t)height isFP16:(BOOL)p16 createLuma:(BOOL)luma createChroma:(BOOL)chroma startingLevel:(BOOL)self0 testSize:(BOOL)self1 pyramid:(id)self2
{
  lumaCopy = luma;
  contextCopy = context;
  labelCopy = label;
  pyramidCopy = pyramid;
  if (width)
  {
    sub_29589724C(&v100);
LABEL_27:
    v24 = 0;
LABEL_29:
    v94 = v100;
    goto LABEL_21;
  }

  if (height)
  {
    sub_2958972F8(&v100);
    goto LABEL_27;
  }

  v20 = objc_msgSend_allocator(contextCopy, v16, v17, v18);
  v24 = objc_msgSend_newTextureDescriptor(v20, v21, v22, v23);

  if (!v24)
  {
    sub_295897654(&v100);
    goto LABEL_29;
  }

  levelCopy = level;
  v29 = objc_msgSend_desc(v24, v25, v26, v27);
  objc_msgSend_setUsage_(v29, v30, 7, v31);

  if (pyramidCopy[2] <= level)
  {
    v94 = 0;
  }

  else
  {
    v34 = height >> level;
    v35 = width >> level;
    v36 = pyramidCopy + 166;
    v96 = pyramidCopy;
    v37 = &pyramidCopy[2 * level + 124];
    while (1)
    {
      if (size)
      {
        if (v35)
        {
          sub_2958973A4(&v100);
          goto LABEL_24;
        }

        if (v34)
        {
          break;
        }
      }

      if (lumaCopy)
      {
        objc_msgSend_setLabel_(v24, v32, 0, v33);
        v41 = objc_msgSend_desc(v24, v38, v39, v40);
        objc_msgSend_setWidth_(v41, v42, v35, v43);

        v47 = objc_msgSend_desc(v24, v44, v45, v46);
        objc_msgSend_setHeight_(v47, v48, v34, v49);

        v53 = objc_msgSend_desc(v24, v50, v51, v52);
        objc_msgSend_setPixelFormat_(v53, v54, 25, v55);

        v59 = objc_msgSend_allocator(contextCopy, v56, v57, v58);
        v62 = objc_msgSend_newTextureWithDescriptor_(v59, v60, v24, v61);
        v63 = *(v37 - 20);
        *(v37 - 20) = v62;

        if (!*(v37 - 20))
        {
          sub_2958975A8(&v100);
          goto LABEL_24;
        }
      }

      else
      {
        v66 = *(v37 - 20);
        *(v37 - 20) = 0;
      }

      if (chroma)
      {
        objc_msgSend_setLabel_(v24, v64, 0, v65);
        v70 = objc_msgSend_desc(v24, v67, v68, v69);
        objc_msgSend_setWidth_(v70, v71, v35 >> 1, v72);

        v76 = objc_msgSend_desc(v24, v73, v74, v75);
        objc_msgSend_setHeight_(v76, v77, v34 >> 1, v78);

        v82 = objc_msgSend_desc(v24, v79, v80, v81);
        objc_msgSend_setPixelFormat_(v82, v83, 65, v84);

        v88 = objc_msgSend_allocator(contextCopy, v85, v86, v87);
        v91 = objc_msgSend_newTextureWithDescriptor_(v88, v89, v24, v90);
        v92 = *v37;
        *v37 = v91;

        if (!*v37)
        {
          sub_2958974FC(&v100);
          goto LABEL_24;
        }
      }

      else
      {
        v93 = *v37;
        *v37 = 0;
      }

      v34 >>= 1;
      v35 >>= 1;
      *(v36 + levelCopy++) = p16;
      ++v37;
      if (v96[2] <= levelCopy)
      {
        v94 = 0;
        goto LABEL_19;
      }
    }

    sub_295897450(&v100);
LABEL_24:
    v94 = v100;
LABEL_19:
    pyramidCopy = v96;
  }

LABEL_21:

  return v94;
}

+ (int)pyramidMemorySize:(unsigned __int16)size height:(unsigned __int16)height overlapLevels:(BOOL)levels allocLevel0:(BOOL)level0 levels:(unsigned __int8)a7 lumaFormat:(unint64_t)format chromaFormat:(unint64_t)chromaFormat outSize:(unint64_t *)self0 metal:(id)self1
{
  levelsCopy = levels;
  v30 = a7;
  level0Copy = level0;
  heightCopy = height;
  sizeCopy = size;
  metalCopy = metal;
  v18 = metalCopy;
  if (!outSize)
  {
    sub_295897B08(&v31);
LABEL_29:
    v27 = v31;
    goto LABEL_21;
  }

  if (sizeCopy)
  {
    sub_295897700(&v31);
    goto LABEL_29;
  }

  if (heightCopy)
  {
    sub_2958977AC(&v31);
    goto LABEL_29;
  }

  if (!(chromaFormat | format))
  {
    sub_295897A5C(&v31);
    goto LABEL_29;
  }

  v19 = !level0Copy;
  if (v30 <= !level0Copy)
  {
    sub_295897858(&v31);
    goto LABEL_29;
  }

  if (format && !objc_msgSend_getPixelSizeInBytes_(metalCopy, v16, format, v17))
  {
    sub_295897904(&v31);
    goto LABEL_29;
  }

  if (chromaFormat && !objc_msgSend_getPixelSizeInBytes_(v18, v16, chromaFormat, v17))
  {
    sub_2958979B0(&v31);
    goto LABEL_29;
  }

  v20 = 0;
  do
  {
    v21 = heightCopy >> v19;
    v22 = sub_2958246B8(sizeCopy >> v19, format, v18) * v21;
    v24 = sub_2958246B8(sizeCopy >> v19 >> 1, chromaFormat, v18);
    v23 = v21 >> 1;
    v25 = v24 * v23;
    if (levelsCopy)
    {
      if (v20 <= v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = v20;
      }

      if (v26 <= v25)
      {
        v20 = v24 * v23;
      }

      else
      {
        v20 = v26;
      }
    }

    else
    {
      v20 += v22 + v25;
    }

    ++v19;
  }

  while (v30 != v19);
  v27 = 0;
  *outSize = v20;
LABEL_21:

  return v27;
}

+ (int)allocatePyramidWithWidth:(unsigned __int16)width height:(unsigned __int16)height allocLevel0:(BOOL)level0 levels:(unsigned __int8)levels texUsage:(unint64_t)usage mtlSubAllocatorID:(unsigned int)d label:(id)label lumaFormat:(unint64_t)self0 chromaFormat:(unint64_t)self1 outPyramid:(id)self2 metal:(id)self3
{
  levelsCopy = levels;
  level0Copy = level0;
  heightCopy = height;
  widthCopy = width;
  labelCopy = label;
  pyramidCopy = pyramid;
  metalCopy = metal;
  v24 = metalCopy;
  v118 = widthCopy;
  if (widthCopy)
  {
    sub_295897BB4(&v121);
LABEL_37:
    v29 = 0;
    v48 = 0;
    v112 = v121;
    goto LABEL_31;
  }

  if (heightCopy)
  {
    sub_295897C60(&v121);
    goto LABEL_37;
  }

  v114 = labelCopy;
  if (__PAIR128__(chromaFormat, format) == 0)
  {
    sub_295898114(&v121);
LABEL_41:
    v29 = 0;
LABEL_43:
    v48 = 0;
LABEL_44:
    v112 = v121;
    goto LABEL_31;
  }

  v25 = !level0Copy;
  if (levelsCopy <= v25)
  {
    sub_295897D0C(&v121);
    goto LABEL_41;
  }

  if (!pyramidCopy)
  {
    sub_295898068(&v121);
    goto LABEL_41;
  }

  pyramidCopy[2] = levelsCopy;
  v26 = objc_msgSend_allocator(metalCopy, v21, v22, v23);
  v29 = objc_msgSend_newTextureDescriptor_(v26, v27, d, v28);

  if (!v29)
  {
    sub_295897FBC(&v121);
    goto LABEL_43;
  }

  v33 = objc_msgSend_desc(v29, v30, v31, v32);
  objc_msgSend_setUsage_(v33, v34, usage, v35);

  v39 = objc_msgSend_desc(v29, v36, v37, v38);
  objc_msgSend_setPixelFormat_(v39, v40, format, v41);

  v45 = objc_msgSend_allocator(v24, v42, v43, v44);
  v48 = objc_msgSend_newTextureDescriptor_(v45, v46, d, v47);

  if (!v48)
  {
    sub_295897F10(&v121);
    goto LABEL_44;
  }

  v52 = objc_msgSend_desc(v48, v49, v50, v51);
  objc_msgSend_setUsage_(v52, v53, usage, v54);

  v58 = objc_msgSend_desc(v48, v55, v56, v57);
  objc_msgSend_setPixelFormat_(v58, v59, chromaFormat, v60);

  if (pyramidCopy[2] <= v25)
  {
    v112 = 0;
    goto LABEL_31;
  }

  v120 = v48;
  v117 = v24;
  if (format)
  {
    v61 = 0;
  }

  else
  {
    v61 = chromaFormat == 65;
  }

  v62 = v61;
  v115 = v62;
  v116 = heightCopy;
  v63 = v25 | 0x298;
  v64 = 2 * v25;
  while (1)
  {
    v65 = &pyramidCopy[v64];
    v66 = *&pyramidCopy[v64 + 4];
    if (v66)
    {
      CFRelease(v66);
      *(v65 + 2) = 0;
    }

    v67 = *(v65 + 22);
    if (v67)
    {
      CFRelease(v67);
      *(v65 + 22) = 0;
    }

    v68 = v118 >> v25;
    v69 = heightCopy >> v25;
    v70 = &pyramidCopy[v64];
    FigMetalDecRef();
    FigMetalDecRef();
    objc_msgSend_desc(v29, v71, v72, v73);
    v75 = v74 = pyramidCopy;
    objc_msgSend_setWidth_(v75, v76, v68, v77);

    v81 = objc_msgSend_desc(v29, v78, v79, v80);
    objc_msgSend_setHeight_(v81, v82, v69, v83);

    objc_msgSend_setLabel_(v29, v84, 0, v85);
    v89 = objc_msgSend_desc(v120, v86, v87, v88);
    objc_msgSend_setWidth_(v89, v90, v68 >> 1, v91);

    v95 = objc_msgSend_desc(v120, v92, v93, v94);
    objc_msgSend_setHeight_(v95, v96, v69 >> 1, v97);

    objc_msgSend_setLabel_(v120, v98, 0, v99);
    if (format == 25)
    {
      *(v74 + v63) = 1;
      v24 = v117;
      pyramidCopy = v74;
      dCopy2 = d;
      objc_msgSend_allocator(v117, v100, v101, v102, v114);
    }

    else
    {
      *(v74 + v63) = v115;
      v24 = v117;
      pyramidCopy = v74;
      dCopy2 = d;
      if (!format)
      {
        goto LABEL_25;
      }

      objc_msgSend_allocator(v117, v100, v101, v102, v114);
    }
    v104 = ;
    v106 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v104, v105, v29, dCopy2);
    v107 = *(v70 + 42);
    *(v70 + 42) = v106;

    if (!*(v70 + 42))
    {
      sub_295897E64(&v121);
      goto LABEL_34;
    }

LABEL_25:
    if (chromaFormat)
    {
      v108 = objc_msgSend_allocator(v24, v100, v101, v102);
      v110 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v108, v109, v120, dCopy2);
      v111 = *(v70 + 62);
      *(v70 + 62) = v110;

      if (!*(v70 + 62))
      {
        break;
      }
    }

    LODWORD(v25) = v25 + 1;
    ++v63;
    v64 += 2;
    heightCopy = v116;
    if (pyramidCopy[2] <= v25)
    {
      v112 = 0;
      goto LABEL_29;
    }
  }

  sub_295897DB8(&v121);
LABEL_34:
  v112 = v121;
LABEL_29:
  labelCopy = v114;
  v48 = v120;
LABEL_31:

  return v112;
}

+ (id)createTextureAlias:(id)alias
{
  aliasCopy = alias;
  if (aliasCopy)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (v4)
    {
      v6 = *(aliasCopy + 2);
      *(v4 + 8) = v6;
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = aliasCopy + 664;
        v10 = v4 + 664;
        do
        {
          objc_storeStrong((v10 + v7 - 328), *&v9[v7 - 328]);
          objc_storeStrong((v10 + v7 - 168), *&v9[v7 - 168]);
          *(v10 + v8) = v9[v8];
          ++v8;
          v7 += 8;
        }

        while (v8 < *(aliasCopy + 2));
      }

      objc_storeStrong(v5 + 82, *(aliasCopy + 82));
    }

    else
    {
      sub_2958981C0();
    }
  }

  else
  {
    sub_295898238();
    v5 = 0;
  }

  return v5;
}

- (void)clearLevel:(int)level
{
  levels = self->levels;
  if (levels)
  {
    if (level < 0 || levels <= level)
    {
      sub_2958982B0();
    }

    else
    {
      pixelBuffer = self->pixelBuffer;
      v7 = self->pixelBuffer[level];
      if (v7)
      {
        CFRelease(v7);
        pixelBuffer[level] = 0;
      }

      v8 = self->pixelBuffer2[level];
      if (v8)
      {
        CFRelease(v8);
        self->pixelBuffer2[level] = 0;
      }

      v9 = &self->super.isa + level;
      v10 = v9[42];
      v9[42] = 0;

      v11 = v9[62];
      v9[62] = 0;

      if (!level)
      {
        textureYCbCrBand0 = self->textureYCbCrBand0;
        self->textureYCbCrBand0 = 0;
      }

      self->isFP16[level] = 0;
    }
  }
}

- (int)setLumaTexture:(id)texture chromaTexture:(id)chromaTexture level:(int)level metal:(id)metal
{
  textureCopy = texture;
  chromaTextureCopy = chromaTexture;
  if (level < 0 || self->levels <= level)
  {
    sub_295898324(&v24);
LABEL_14:
    v22 = v24;
    goto LABEL_9;
  }

  v15 = objc_msgSend_pixelFormat(textureCopy, v11, v12, v13);
  if ((v15 == 25) != (objc_msgSend_pixelFormat(chromaTextureCopy, v16, v17, v18) == 65))
  {
    sub_295898528(&v24);
    goto LABEL_14;
  }

  self->isFP16[level] = v15 == 25;
  v19 = (&self->super.isa + level);
  objc_storeStrong(v19 + 42, texture);
  if (!v19[42])
  {
    sub_29589847C(&v24);
    goto LABEL_14;
  }

  v20 = (&self->super.isa + level);
  objc_storeStrong(v20 + 62, chromaTexture);
  if (!v20[62])
  {
    sub_2958983D0(&v24);
    goto LABEL_14;
  }

  if (!level)
  {
    textureYCbCrBand0 = self->textureYCbCrBand0;
    self->textureYCbCrBand0 = 0;
  }

  v22 = 0;
LABEL_9:

  return v22;
}

- (int)setPixelBuffer:(__CVBuffer *)buffer level:(int)level texUsage:(unint64_t)usage metal:(id)metal alignDims:(BOOL)dims
{
  dimsCopy = dims;
  metalCopy = metal;
  if (level < 0 || self->levels <= level)
  {
    sub_2958985D4(&v28);
    v26 = v28;
  }

  else
  {
    pixelBuffer = self->pixelBuffer;
    v15 = self->pixelBuffer[level];
    levelCopy = level;
    if (v15)
    {
      CFRelease(v15);
      pixelBuffer[level] = 0;
    }

    v17 = self->pixelBuffer2[level];
    if (v17)
    {
      CFRelease(v17);
      self->pixelBuffer2[level] = 0;
    }

    pixelBuffer[level] = buffer;
    if (buffer)
    {
      CFRetain(buffer);
    }

    v18 = 1;
    if (dimsCopy)
    {
      v18 = 1 << self->levels;
    }

    v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(metalCopy, v12, buffer, 10, usage, 0, v18);
    v20 = &self->super.isa + level;
    v21 = v20[42];
    v20[42] = v19;

    if (v20[42])
    {
      if (v18 <= 1)
      {
        objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(metalCopy, v22, buffer, 30, usage, 1, 1);
      }

      else
      {
        objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(metalCopy, v22, buffer, 30, usage, 1, v18 >> 1);
      }
      v23 = ;
      v24 = v20[62];
      v20[62] = v23;

      if (v20[62])
      {
        if (!level)
        {
          textureYCbCrBand0 = self->textureYCbCrBand0;
          self->textureYCbCrBand0 = 0;
        }

        v26 = 0;
        self->isFP16[levelCopy] = 0;
      }

      else
      {
        sub_295898680(&v29);
        v26 = v29;
      }
    }

    else
    {
      sub_29589872C(&v30);
      v26 = v30;
    }
  }

  return v26;
}

- (int)setPixelBufferFloat16:(__CVBuffer *)float16 chromaBuffer:(__CVBuffer *)buffer level:(int)level metal:(id)metal
{
  metalCopy = metal;
  if (level < 0 || self->levels <= level)
  {
    sub_2958987D8(&v26);
    v24 = v26;
  }

  else
  {
    pixelBuffer = self->pixelBuffer;
    v13 = self->pixelBuffer[level];
    if (v13)
    {
      CFRelease(v13);
      pixelBuffer[level] = 0;
    }

    pixelBuffer2 = self->pixelBuffer2;
    v15 = self->pixelBuffer2[level];
    if (v15)
    {
      CFRelease(v15);
    }

    pixelBuffer[level] = float16;
    pixelBuffer2[level] = buffer;
    bufferCopy = buffer;
    if (float16)
    {
      CFRetain(float16);
      bufferCopy = pixelBuffer2[level];
    }

    if (bufferCopy)
    {
      CFRetain(bufferCopy);
    }

    v17 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalCopy, v10, float16, 25, 7, 0);
    v18 = &self->super.isa + level;
    v19 = v18[42];
    v18[42] = v17;

    if (v18[42])
    {
      v21 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalCopy, v20, buffer, 65, 7, 0);
      v22 = v18[62];
      v18[62] = v21;

      if (v18[62])
      {
        textureYCbCrBand0 = self->textureYCbCrBand0;
        self->textureYCbCrBand0 = 0;

        v24 = 0;
        self->isFP16[level] = 1;
      }

      else
      {
        sub_295898884(&v27);
        v24 = v27;
      }
    }

    else
    {
      sub_295898930(&v28);
      v24 = v28;
    }
  }

  return v24;
}

- (void)releaseBuffers
{
  if (self->levels >= 1)
  {
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    v8 = 0;
    do
    {
      objc_msgSend_clearLevel_(self, a2, v8, v2, v9, v10, v11, v12);
      v8 = (v8 + 1);
    }

    while (v8 < self->levels);
  }
}

- (void)dealloc
{
  objc_msgSend_releaseBuffers(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = PyramidStorage_NRF;
  [(PyramidStorage_NRF *)&v5 dealloc];
}

@end