@interface PyramidStorage_NRF
+ (id)createTextureAlias:(id)a3;
+ (int)allocatePyramidWithMetalContext:(id)a3 label:(id)a4 width:(unint64_t)a5 height:(unint64_t)a6 isFP16:(BOOL)a7 createLuma:(BOOL)a8 createChroma:(BOOL)a9 startingLevel:(BOOL)a10 testSize:(BOOL)a11 pyramid:(id)a12;
+ (int)allocatePyramidWithWidth:(unsigned __int16)a3 height:(unsigned __int16)a4 allocLevel0:(BOOL)a5 levels:(unsigned __int8)a6 texUsage:(unint64_t)a7 mtlSubAllocatorID:(unsigned int)a8 label:(id)a9 lumaFormat:(unint64_t)a10 chromaFormat:(unint64_t)a11 outPyramid:(id)a12 metal:(id)a13;
+ (int)pyramidMemorySize:(unsigned __int16)a3 height:(unsigned __int16)a4 overlapLevels:(BOOL)a5 allocLevel0:(BOOL)a6 levels:(unsigned __int8)a7 lumaFormat:(unint64_t)a8 chromaFormat:(unint64_t)a9 outSize:(unint64_t *)a10 metal:(id)a11;
+ (void)makePyramidAliasable:(id)a3 metal:(id)a4 releaseBand0:(BOOL)a5;
- (int)setLumaTexture:(id)a3 chromaTexture:(id)a4 level:(int)a5 metal:(id)a6;
- (int)setPixelBuffer:(__CVBuffer *)a3 level:(int)a4 texUsage:(unint64_t)a5 metal:(id)a6 alignDims:(BOOL)a7;
- (int)setPixelBufferFloat16:(__CVBuffer *)a3 chromaBuffer:(__CVBuffer *)a4 level:(int)a5 metal:(id)a6;
- (void)clearLevel:(int)a3;
- (void)dealloc;
- (void)releaseBuffers;
@end

@implementation PyramidStorage_NRF

+ (void)makePyramidAliasable:(id)a3 metal:(id)a4 releaseBand0:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    v8 = !v5;
    if (v10[2] > !v5)
    {
      v9 = &v10[2 * v8 + 124];
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

      while (v10[2] > v8);
    }
  }
}

+ (int)allocatePyramidWithMetalContext:(id)a3 label:(id)a4 width:(unint64_t)a5 height:(unint64_t)a6 isFP16:(BOOL)a7 createLuma:(BOOL)a8 createChroma:(BOOL)a9 startingLevel:(BOOL)a10 testSize:(BOOL)a11 pyramid:(id)a12
{
  v98 = a8;
  v99 = a3;
  v15 = a4;
  v19 = a12;
  if (a5)
  {
    sub_29589724C(&v100);
LABEL_27:
    v24 = 0;
LABEL_29:
    v94 = v100;
    goto LABEL_21;
  }

  if (a6)
  {
    sub_2958972F8(&v100);
    goto LABEL_27;
  }

  v20 = objc_msgSend_allocator(v99, v16, v17, v18);
  v24 = objc_msgSend_newTextureDescriptor(v20, v21, v22, v23);

  if (!v24)
  {
    sub_295897654(&v100);
    goto LABEL_29;
  }

  v28 = a10;
  v29 = objc_msgSend_desc(v24, v25, v26, v27);
  objc_msgSend_setUsage_(v29, v30, 7, v31);

  if (v19[2] <= a10)
  {
    v94 = 0;
  }

  else
  {
    v34 = a6 >> a10;
    v35 = a5 >> a10;
    v36 = v19 + 166;
    v96 = v19;
    v37 = &v19[2 * a10 + 124];
    while (1)
    {
      if (a11)
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

      if (v98)
      {
        objc_msgSend_setLabel_(v24, v32, 0, v33);
        v41 = objc_msgSend_desc(v24, v38, v39, v40);
        objc_msgSend_setWidth_(v41, v42, v35, v43);

        v47 = objc_msgSend_desc(v24, v44, v45, v46);
        objc_msgSend_setHeight_(v47, v48, v34, v49);

        v53 = objc_msgSend_desc(v24, v50, v51, v52);
        objc_msgSend_setPixelFormat_(v53, v54, 25, v55);

        v59 = objc_msgSend_allocator(v99, v56, v57, v58);
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

      if (a9)
      {
        objc_msgSend_setLabel_(v24, v64, 0, v65);
        v70 = objc_msgSend_desc(v24, v67, v68, v69);
        objc_msgSend_setWidth_(v70, v71, v35 >> 1, v72);

        v76 = objc_msgSend_desc(v24, v73, v74, v75);
        objc_msgSend_setHeight_(v76, v77, v34 >> 1, v78);

        v82 = objc_msgSend_desc(v24, v79, v80, v81);
        objc_msgSend_setPixelFormat_(v82, v83, 65, v84);

        v88 = objc_msgSend_allocator(v99, v85, v86, v87);
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
      *(v36 + v28++) = a7;
      ++v37;
      if (v96[2] <= v28)
      {
        v94 = 0;
        goto LABEL_19;
      }
    }

    sub_295897450(&v100);
LABEL_24:
    v94 = v100;
LABEL_19:
    v19 = v96;
  }

LABEL_21:

  return v94;
}

+ (int)pyramidMemorySize:(unsigned __int16)a3 height:(unsigned __int16)a4 overlapLevels:(BOOL)a5 allocLevel0:(BOOL)a6 levels:(unsigned __int8)a7 lumaFormat:(unint64_t)a8 chromaFormat:(unint64_t)a9 outSize:(unint64_t *)a10 metal:(id)a11
{
  v29 = a5;
  v30 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = a11;
  v18 = v15;
  if (!a10)
  {
    sub_295897B08(&v31);
LABEL_29:
    v27 = v31;
    goto LABEL_21;
  }

  if (v14)
  {
    sub_295897700(&v31);
    goto LABEL_29;
  }

  if (v13)
  {
    sub_2958977AC(&v31);
    goto LABEL_29;
  }

  if (!(a9 | a8))
  {
    sub_295897A5C(&v31);
    goto LABEL_29;
  }

  v19 = !v12;
  if (v30 <= !v12)
  {
    sub_295897858(&v31);
    goto LABEL_29;
  }

  if (a8 && !objc_msgSend_getPixelSizeInBytes_(v15, v16, a8, v17))
  {
    sub_295897904(&v31);
    goto LABEL_29;
  }

  if (a9 && !objc_msgSend_getPixelSizeInBytes_(v18, v16, a9, v17))
  {
    sub_2958979B0(&v31);
    goto LABEL_29;
  }

  v20 = 0;
  do
  {
    v21 = v13 >> v19;
    v22 = sub_2958246B8(v14 >> v19, a8, v18) * v21;
    v24 = sub_2958246B8(v14 >> v19 >> 1, a9, v18);
    v23 = v21 >> 1;
    v25 = v24 * v23;
    if (v29)
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
  *a10 = v20;
LABEL_21:

  return v27;
}

+ (int)allocatePyramidWithWidth:(unsigned __int16)a3 height:(unsigned __int16)a4 allocLevel0:(BOOL)a5 levels:(unsigned __int8)a6 texUsage:(unint64_t)a7 mtlSubAllocatorID:(unsigned int)a8 label:(id)a9 lumaFormat:(unint64_t)a10 chromaFormat:(unint64_t)a11 outPyramid:(id)a12 metal:(id)a13
{
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = a9;
  v19 = a12;
  v20 = a13;
  v24 = v20;
  v118 = v17;
  if (v17)
  {
    sub_295897BB4(&v121);
LABEL_37:
    v29 = 0;
    v48 = 0;
    v112 = v121;
    goto LABEL_31;
  }

  if (v16)
  {
    sub_295897C60(&v121);
    goto LABEL_37;
  }

  v114 = v18;
  if (__PAIR128__(a11, a10) == 0)
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

  v25 = !v15;
  if (v14 <= v25)
  {
    sub_295897D0C(&v121);
    goto LABEL_41;
  }

  if (!v19)
  {
    sub_295898068(&v121);
    goto LABEL_41;
  }

  v19[2] = v14;
  v26 = objc_msgSend_allocator(v20, v21, v22, v23);
  v29 = objc_msgSend_newTextureDescriptor_(v26, v27, a8, v28);

  if (!v29)
  {
    sub_295897FBC(&v121);
    goto LABEL_43;
  }

  v33 = objc_msgSend_desc(v29, v30, v31, v32);
  objc_msgSend_setUsage_(v33, v34, a7, v35);

  v39 = objc_msgSend_desc(v29, v36, v37, v38);
  objc_msgSend_setPixelFormat_(v39, v40, a10, v41);

  v45 = objc_msgSend_allocator(v24, v42, v43, v44);
  v48 = objc_msgSend_newTextureDescriptor_(v45, v46, a8, v47);

  if (!v48)
  {
    sub_295897F10(&v121);
    goto LABEL_44;
  }

  v52 = objc_msgSend_desc(v48, v49, v50, v51);
  objc_msgSend_setUsage_(v52, v53, a7, v54);

  v58 = objc_msgSend_desc(v48, v55, v56, v57);
  objc_msgSend_setPixelFormat_(v58, v59, a11, v60);

  if (v19[2] <= v25)
  {
    v112 = 0;
    goto LABEL_31;
  }

  v120 = v48;
  v117 = v24;
  if (a10)
  {
    v61 = 0;
  }

  else
  {
    v61 = a11 == 65;
  }

  v62 = v61;
  v115 = v62;
  v116 = v16;
  v63 = v25 | 0x298;
  v64 = 2 * v25;
  while (1)
  {
    v65 = &v19[v64];
    v66 = *&v19[v64 + 4];
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
    v69 = v16 >> v25;
    v70 = &v19[v64];
    FigMetalDecRef();
    FigMetalDecRef();
    objc_msgSend_desc(v29, v71, v72, v73);
    v75 = v74 = v19;
    objc_msgSend_setWidth_(v75, v76, v68, v77);

    v81 = objc_msgSend_desc(v29, v78, v79, v80);
    objc_msgSend_setHeight_(v81, v82, v69, v83);

    objc_msgSend_setLabel_(v29, v84, 0, v85);
    v89 = objc_msgSend_desc(v120, v86, v87, v88);
    objc_msgSend_setWidth_(v89, v90, v68 >> 1, v91);

    v95 = objc_msgSend_desc(v120, v92, v93, v94);
    objc_msgSend_setHeight_(v95, v96, v69 >> 1, v97);

    objc_msgSend_setLabel_(v120, v98, 0, v99);
    if (a10 == 25)
    {
      *(v74 + v63) = 1;
      v24 = v117;
      v19 = v74;
      v103 = a8;
      objc_msgSend_allocator(v117, v100, v101, v102, v114);
    }

    else
    {
      *(v74 + v63) = v115;
      v24 = v117;
      v19 = v74;
      v103 = a8;
      if (!a10)
      {
        goto LABEL_25;
      }

      objc_msgSend_allocator(v117, v100, v101, v102, v114);
    }
    v104 = ;
    v106 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v104, v105, v29, v103);
    v107 = *(v70 + 42);
    *(v70 + 42) = v106;

    if (!*(v70 + 42))
    {
      sub_295897E64(&v121);
      goto LABEL_34;
    }

LABEL_25:
    if (a11)
    {
      v108 = objc_msgSend_allocator(v24, v100, v101, v102);
      v110 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v108, v109, v120, v103);
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
    v16 = v116;
    if (v19[2] <= v25)
    {
      v112 = 0;
      goto LABEL_29;
    }
  }

  sub_295897DB8(&v121);
LABEL_34:
  v112 = v121;
LABEL_29:
  v18 = v114;
  v48 = v120;
LABEL_31:

  return v112;
}

+ (id)createTextureAlias:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (v4)
    {
      v6 = *(v3 + 2);
      *(v4 + 8) = v6;
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = v3 + 664;
        v10 = v4 + 664;
        do
        {
          objc_storeStrong((v10 + v7 - 328), *&v9[v7 - 328]);
          objc_storeStrong((v10 + v7 - 168), *&v9[v7 - 168]);
          *(v10 + v8) = v9[v8];
          ++v8;
          v7 += 8;
        }

        while (v8 < *(v3 + 2));
      }

      objc_storeStrong(v5 + 82, *(v3 + 82));
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

- (void)clearLevel:(int)a3
{
  levels = self->levels;
  if (levels)
  {
    if (a3 < 0 || levels <= a3)
    {
      sub_2958982B0();
    }

    else
    {
      pixelBuffer = self->pixelBuffer;
      v7 = self->pixelBuffer[a3];
      if (v7)
      {
        CFRelease(v7);
        pixelBuffer[a3] = 0;
      }

      v8 = self->pixelBuffer2[a3];
      if (v8)
      {
        CFRelease(v8);
        self->pixelBuffer2[a3] = 0;
      }

      v9 = &self->super.isa + a3;
      v10 = v9[42];
      v9[42] = 0;

      v11 = v9[62];
      v9[62] = 0;

      if (!a3)
      {
        textureYCbCrBand0 = self->textureYCbCrBand0;
        self->textureYCbCrBand0 = 0;
      }

      self->isFP16[a3] = 0;
    }
  }
}

- (int)setLumaTexture:(id)a3 chromaTexture:(id)a4 level:(int)a5 metal:(id)a6
{
  v10 = a3;
  v14 = a4;
  if (a5 < 0 || self->levels <= a5)
  {
    sub_295898324(&v24);
LABEL_14:
    v22 = v24;
    goto LABEL_9;
  }

  v15 = objc_msgSend_pixelFormat(v10, v11, v12, v13);
  if ((v15 == 25) != (objc_msgSend_pixelFormat(v14, v16, v17, v18) == 65))
  {
    sub_295898528(&v24);
    goto LABEL_14;
  }

  self->isFP16[a5] = v15 == 25;
  v19 = (&self->super.isa + a5);
  objc_storeStrong(v19 + 42, a3);
  if (!v19[42])
  {
    sub_29589847C(&v24);
    goto LABEL_14;
  }

  v20 = (&self->super.isa + a5);
  objc_storeStrong(v20 + 62, a4);
  if (!v20[62])
  {
    sub_2958983D0(&v24);
    goto LABEL_14;
  }

  if (!a5)
  {
    textureYCbCrBand0 = self->textureYCbCrBand0;
    self->textureYCbCrBand0 = 0;
  }

  v22 = 0;
LABEL_9:

  return v22;
}

- (int)setPixelBuffer:(__CVBuffer *)a3 level:(int)a4 texUsage:(unint64_t)a5 metal:(id)a6 alignDims:(BOOL)a7
{
  v7 = a7;
  v13 = a6;
  if (a4 < 0 || self->levels <= a4)
  {
    sub_2958985D4(&v28);
    v26 = v28;
  }

  else
  {
    pixelBuffer = self->pixelBuffer;
    v15 = self->pixelBuffer[a4];
    v16 = a4;
    if (v15)
    {
      CFRelease(v15);
      pixelBuffer[a4] = 0;
    }

    v17 = self->pixelBuffer2[a4];
    if (v17)
    {
      CFRelease(v17);
      self->pixelBuffer2[a4] = 0;
    }

    pixelBuffer[a4] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v18 = 1;
    if (v7)
    {
      v18 = 1 << self->levels;
    }

    v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v13, v12, a3, 10, a5, 0, v18);
    v20 = &self->super.isa + a4;
    v21 = v20[42];
    v20[42] = v19;

    if (v20[42])
    {
      if (v18 <= 1)
      {
        objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v13, v22, a3, 30, a5, 1, 1);
      }

      else
      {
        objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v13, v22, a3, 30, a5, 1, v18 >> 1);
      }
      v23 = ;
      v24 = v20[62];
      v20[62] = v23;

      if (v20[62])
      {
        if (!a4)
        {
          textureYCbCrBand0 = self->textureYCbCrBand0;
          self->textureYCbCrBand0 = 0;
        }

        v26 = 0;
        self->isFP16[v16] = 0;
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

- (int)setPixelBufferFloat16:(__CVBuffer *)a3 chromaBuffer:(__CVBuffer *)a4 level:(int)a5 metal:(id)a6
{
  v11 = a6;
  if (a5 < 0 || self->levels <= a5)
  {
    sub_2958987D8(&v26);
    v24 = v26;
  }

  else
  {
    pixelBuffer = self->pixelBuffer;
    v13 = self->pixelBuffer[a5];
    if (v13)
    {
      CFRelease(v13);
      pixelBuffer[a5] = 0;
    }

    pixelBuffer2 = self->pixelBuffer2;
    v15 = self->pixelBuffer2[a5];
    if (v15)
    {
      CFRelease(v15);
    }

    pixelBuffer[a5] = a3;
    pixelBuffer2[a5] = a4;
    v16 = a4;
    if (a3)
    {
      CFRetain(a3);
      v16 = pixelBuffer2[a5];
    }

    if (v16)
    {
      CFRetain(v16);
    }

    v17 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v11, v10, a3, 25, 7, 0);
    v18 = &self->super.isa + a5;
    v19 = v18[42];
    v18[42] = v17;

    if (v18[42])
    {
      v21 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v11, v20, a4, 65, 7, 0);
      v22 = v18[62];
      v18[62] = v21;

      if (v18[62])
      {
        textureYCbCrBand0 = self->textureYCbCrBand0;
        self->textureYCbCrBand0 = 0;

        v24 = 0;
        self->isFP16[a5] = 1;
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