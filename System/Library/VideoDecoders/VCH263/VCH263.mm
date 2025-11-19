uint64_t H263QT_InitSharedGlobals(void **a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = MEM_NewClear(68);
  *a1 = v3;
  if (v3)
  {
    return 0;
  }

  H263QT_KillSharedGlobals(a1);
  return 1;
}

void *H263QT_KillSharedGlobals(void **a1)
{
  result = *a1;
  if (result)
  {
    result = KillSharedTables(result);
    if (!result)
    {
      MEM_Dispose(*a1);
      result = 0;
      *a1 = 0;
    }
  }

  return result;
}

uint64_t COLOR_Y420uToUYVY_scalar(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8, int a9)
{
  if (a8 >= 2)
  {
    v9 = 0;
    v10 = (2 * a5);
    v11 = (a5 + (a5 >> 31)) >> 1;
    v12 = 4 * (a9 >> 1);
    v13 = result + a5 + 1;
    v14 = a4 + 4 * (a9 >> 2);
    do
    {
      if (a7 >= 2)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          *(a4 + 4 * v15) = (*(a2 + v15) << 24) | (*(result + v16) << 16) | (*(a3 + v15) << 8) | *(result + v16 + 1);
          *(v14 + 4 * v15) = (*(a2 + v15) << 24) | (*(v13 + v16 - 1) << 16) | (*(a3 + v15) << 8) | *(v13 + v16);
          v16 += 2;
          ++v15;
        }

        while (v16 < a7 - 1);
      }

      result += v10;
      a2 += v11;
      a3 += v11;
      v9 += 2;
      v14 += v12;
      a4 += v12;
      v13 += v10;
    }

    while (v9 < a8 - 1);
  }

  return result;
}

void VCH263Register()
{
  valuePtr = -10;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = CFNumberCreate(v0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B50], v2);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CE2B70], *MEMORY[0x277CBED10]);
  VTRegisterVideoDecoderWithInfo();
  CFRelease(v2);
  CFRelease(Mutable);
}

uint64_t VCH263VideoDecoder_CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  *a3 = 0;
  return v4;
}

uint64_t VCH263VideoDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = (DerivedStorage + 24);
  if (*(DerivedStorage + 24))
  {
    result = H263QT_KillSharedGlobals((DerivedStorage + 24));
    if (result)
    {
      return result;
    }

    *v2 = 0;
  }

  if (*(v1 + 16))
  {
    result = KillInstanceGlobals((v1 + 16));
    if (result)
    {
      return result;
    }

    *(v1 + 16) = 0;
  }

  MEM_Dispose(*(v1 + 32));
  *(v1 + 32) = 0;
  *v1 = 0;
  v4 = *(v1 + 8);
  result = FigFormatDescriptionRelease();
  *(v1 + 8) = 0;
  return result;
}

uint64_t VCH263VideoDecoder_StartSession(uint64_t a1, uint64_t a2)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 2033463856;
  *DerivedStorage = a2;
  v4 = *(DerivedStorage + 8);
  FigFormatDescriptionRelease();
  v5 = FigFormatDescriptionRetain();
  *(DerivedStorage + 8) = v5;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v5);
  *(DerivedStorage + 40) = Dimensions;
  result = H263QT_InitSharedGlobals((DerivedStorage + 24));
  if (!result)
  {
    result = MEM_NewClear(96);
    *(DerivedStorage + 32) = result;
    if (result)
    {
      v8 = 288;
      v9 = 352;
      v10 = 3;
      if (Dimensions.width <= 176)
      {
        v12 = Dimensions.width > 128 || Dimensions.height > 96;
        v13 = !v12;
        if (v12)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        if (v13)
        {
          v15 = 128;
        }

        else
        {
          v15 = 176;
        }

        if (v13)
        {
          v16 = 96;
        }

        else
        {
          v16 = 144;
        }

        if (Dimensions.height <= 144)
        {
          v10 = v14;
        }

        else
        {
          v10 = 3;
        }

        if (Dimensions.height <= 144)
        {
          v9 = v15;
        }

        else
        {
          v9 = 352;
        }

        if (Dimensions.height <= 144)
        {
          v8 = v16;
        }

        else
        {
          v8 = 288;
        }
      }

      if (InitSharedTables(*(DerivedStorage + 24), 1))
      {
        KillSharedTables(*(DerivedStorage + 24));
      }

      else
      {
        if (!InitInstanceGlobals((DerivedStorage + 16), v9, v8, v10, 1, 132, 0, *(DerivedStorage + 24)))
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v18 = Mutable;
            v19 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            if (v19)
            {
              v20 = v19;
              v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
              if (v21)
              {
                v22 = v21;
                CFArrayAppendValue(v20, v21);
                CFRelease(v22);
                CFDictionaryAddValue(v18, *MEMORY[0x277CC4E30], v20);
                CFRelease(v20);
                addNumberToDictionary(v18, *MEMORY[0x277CC4EC8], Dimensions.width);
                addNumberToDictionary(v18, *MEMORY[0x277CC4DD8], Dimensions.height);
                v23 = -Dimensions.width;
                v24 = -Dimensions.height & 0xF;
                if ((v23 & 0xF) != 0)
                {
                  addNumberToDictionary(v18, *MEMORY[0x277CC4DB8], v23 & 0xF);
                }

                if (v24)
                {
                  addNumberToDictionary(v18, *MEMORY[0x277CC4DA0], v24);
                }

                v25 = *DerivedStorage;
                VTDecoderSessionSetPixelBufferAttributes();
                CFRelease(v18);
                return 0;
              }

              CFRelease(v18);
              v26 = v20;
            }

            else
            {
              v26 = v18;
            }

            CFRelease(v26);
          }

          return 4294954392;
        }

        KillInstanceGlobals((DerivedStorage + 16));
      }

      return 0;
    }
  }

  return result;
}

uint64_t VCH263VideoDecoder_DecodeFrame(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, unsigned int *a5)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v96 = 0;
  blockBufferOut = 0;
  pixelBufferOut = 0;
  v9 = *(DerivedStorage + 16);
  v77 = *(DerivedStorage + 24);
  v10 = *(v9 + 296174);
  v11 = *v10;
  v74 = v10[1];
  memset(v94, 0, 140);
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  *(v10 + 1) = *(DerivedStorage + 40);
  v12 = *(DerivedStorage + 32);
  dataPointerOut = 0;
  CMBlockBufferCreateWithMemoryBlock(0, 0, ((DataLength + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4, 0, 0, 0, DataLength, 1u, &blockBufferOut);
  CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
  CMBlockBufferCopyDataBytes(DataBuffer, 0, DataLength, dataPointerOut);
  CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &v96);
  v13 = *DerivedStorage;
  PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
  v15 = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &pixelBufferOut);
  if (v15)
  {
    v16 = v15;
LABEL_3:
    FigSignalErrorAtGM();
    v17 = *DerivedStorage;
    v18 = *a5;
    goto LABEL_4;
  }

  v75 = v74 + 32;
  v20 = v11 + 32;
  ++*(DerivedStorage + 48);
  v16 = CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  *v12 = v96;
  *(v12 + 88) = DataLength;
  *(v12 + 8) = xmmword_2778F7A40;
  *(v12 + 24) = 2033463856;
  *(v12 + 28) = *(DerivedStorage + 40);
  *(v12 + 36) = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  *(v12 + 40) = CVPixelBufferGetBaseAddress(pixelBufferOut);
  *(v12 + 72) = *(DerivedStorage + 16);
  *(v12 + 80) = v77;
  v21 = *(DerivedStorage + 48);
  *(v12 + 48) = 0;
  *(v12 + 52) = v21;
  *(v12 + 56) = 65538;
  v22 = *(v9 + 66);
  v23 = v9;
  if (v22)
  {
    v24 = *(v9 + 58);
    if (v24)
    {
      v25 = (v20 * v75);
      if (v25 >= 1)
      {
        do
        {
          *v24++ = 0;
          *v22++ = 0;
          --v25;
        }

        while (v25);
      }

      goto LABEL_35;
    }
  }

  v26 = 0;
  v27 = *(v12 + 88);
  if (v27)
  {
    v28 = (8 * v27 + 24) & 0xFFFFFFE0;
  }

  else
  {
    v28 = 0x7FFFFFFF;
  }

  DWORD1(v93) = v28;
  *&v92 = 0;
  LODWORD(v93) = 0;
  DWORD2(v92) = 0;
  v29 = xmmword_2778F7A50;
  v30 = xmmword_2778F7A60;
  v31 = &v94[12];
  v32 = vdupq_n_s64(0x21uLL);
  v33 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v32, v30)), *v29.i8).u8[0])
    {
      *(v31 - 3) = ~(-1 << v26);
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v30)), *&v29).i8[2])
    {
      *(v31 - 2) = ~(-2 << v26);
    }

    if (vuzp1_s16(*&v29, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x21uLL), *&v29))).i32[1])
    {
      *(v31 - 1) = ~(-4 << v26);
      *v31 = ~(-8 << v26);
    }

    v26 += 4;
    v29 = vaddq_s64(v29, v33);
    v30 = vaddq_s64(v30, v33);
    v31 += 4;
  }

  while (v26 != 36);
  *(&v93 + 1) = *v12;
  H263PICT_Setup(&v81, *(v10 + 40));
  if (!H263PICT_decPictureLayer(&v81, &v92))
  {
    if (!BYTE4(v82))
    {
      goto LABEL_35;
    }

    v36 = *(v9 + 66);
    v37 = v20 * v75;
    if (v36)
    {
      if (v37 >= 1)
      {
        bzero(v36, 4 * (v20 * v75));
      }
    }

    else
    {
      v38 = MEM_NewClear(4 * v37);
      *(v23 + 66) = v38;
      if (!v38)
      {
        goto LABEL_24;
      }
    }

    v39 = *(v23 + 58);
    if (v39)
    {
      if (v37 >= 1)
      {
        bzero(v39, 4 * (v20 * v75));
      }

      goto LABEL_35;
    }

    v40 = MEM_NewClear(4 * v37);
    *(v23 + 58) = v40;
    if (v40)
    {
LABEL_35:
      if (v16)
      {
        goto LABEL_3;
      }

      H263DMPR_Decompress(v12);
      v41 = *(v12 + 72);
      if (!*(*(v41 + 296190) + 68))
      {
        v42 = *(v41 + 296174);
        v43 = v42[1];
        v44 = *v42;
        v45 = *(v12 + 28);
        v46 = *(v12 + 32);
        if (v44 >= v45 && v43 >= v46)
        {
          v48 = v44 + 32;
          v49 = v44 + 32;
          v50 = 16 * v49;
          v51 = 4 * v49;
          v52 = *(v12 + 24);
          if (v52 == 2033463856)
          {
            v54 = pixelBufferOut;
            v78 = v50;
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
            v56 = CVPixelBufferGetBaseAddressOfPlane(v54, 1uLL);
            v57 = CVPixelBufferGetBaseAddressOfPlane(v54, 2uLL);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v54, 0);
            v59 = CVPixelBufferGetBytesPerRowOfPlane(v54, 1uLL);
            v60 = v54;
            v61 = v59;
            v62 = CVPixelBufferGetBytesPerRowOfPlane(v60, 2uLL);
            if (v42[3] >= 1)
            {
              v72 = v62;
              v73 = v61;
              v76 = v51;
              v63 = 0;
              v64 = v78 + 16;
              do
              {
                memcpy(BaseAddressOfPlane, (**(v41 + 32) + v64), v42[2]);
                ++v63;
                v65 = v42[3];
                v64 += v48;
                BaseAddressOfPlane += BytesPerRowOfPlane;
              }

              while (v63 < v65);
              if (v65 >= 2)
              {
                v66 = 0;
                v67 = (v48 + (v48 >> 31)) >> 1;
                v68 = v76 + 8;
                do
                {
                  memcpy(v56, (*(*(v41 + 32) + 8) + v68), (v42[2] + (v42[2] >> 31)) >> 1);
                  memcpy(v57, (*(*(v41 + 32) + 16) + v68), (v42[2] + (v42[2] >> 31)) >> 1);
                  ++v66;
                  v57 += v72;
                  v68 += v67;
                  v56 += v73;
                }

                while (v66 < v42[3] / 2);
              }
            }
          }

          else if (v52 == 846624121)
          {
            v53 = *(v12 + 80);
            if (!*(v53 + 64))
            {
              v71 = *(v53 + 24);
              COLOR_Y420uToUYVY_scalar(**(v41 + 32) + v50 + 16, *(*(v41 + 32) + 8) + v51 + 8, *(*(v41 + 32) + 16) + v51 + 8, *(v12 + 40), v48, (v43 + 32), v45, v46, *(v12 + 36));
            }
          }
        }
      }

      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      v69 = *DerivedStorage;
      v70 = *a5;
      goto LABEL_52;
    }
  }

LABEL_24:
  v34 = *DerivedStorage;
  v35 = *a5;
  if (!v16)
  {
LABEL_52:
    v16 = 0;
  }

LABEL_4:
  VTDecoderSessionEmitDecodedFrame();
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  CVPixelBufferRelease(pixelBufferOut);
  return v16;
}

void addNumberToDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

BOOL H263PICT_Init(void *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = MEM_NewClear(176);
  *a1 = v3;
  return v3 == 0;
}

uint64_t H263PICT_Kill(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    MEM_Dispose(v2);
    *a1 = 0;
  }

  return 0;
}

uint64_t H263PICT_Setup(uint64_t a1, int a2)
{
  if (a1)
  {
    *a1 = 1;
    *(a1 + 16) = a2;
    *(a1 + 44) = a2;
    *(a1 + 48) = 1;
    *(a1 + 60) = 0;
    *(a1 + 21) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 17) = 257;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 25) = 0;
    *(a1 + 132) = 0;
    *(a1 + 27) = 264;
    *(a1 + 32) = 0;
  }

  return 0;
}

uint64_t H263PICT_decPictureLayer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 > 0x7FFFFFFE)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 16);
  if (v4 >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2 + 32;
  v7 = *(a2 + 4);
  v8 = v4 + 50;
  do
  {
    *(a2 + 16) = v8 - 28;
    v9 = v7 - 22;
    if (v7 < 0x16)
    {
      v11 = 22 - v7;
      v9 = v7 + 10;
      *(a2 + 4) = v7 + 10;
      v10 = (*a2 << (22 - v7)) & *(a2 + 120);
      if (v8 - 28 <= v2)
      {
        v12 = *(a2 + 24);
        v13 = *(a2 + 8);
        *(a2 + 8) = v13 + 1;
        LODWORD(v12) = bswap32(*(v12 + 4 * v13));
        *a2 = v12;
        v10 |= *(v6 + 4 * v11) & (v12 >> v9);
      }

      else
      {
        ++*(a2 + 8);
        *a2 = 0;
      }
    }

    else
    {
      v10 = (*a2 >> v9) & *(a2 + 120);
    }

    v7 = v9 + 21;
    *(a2 + 4) = v9 + 21;
    v14 = v8 - 49;
    *(a2 + 16) = v8 - 49;
    if (v9 >= 0xC)
    {
      v7 = v9 - 11;
      v15 = *(a2 + 8);
      *(a2 + 4) = v7;
      *(a2 + 8) = v15 - 1;
      if (v2 >= 32 * (v15 - 1))
      {
        *a2 = bswap32(*(*(a2 + 24) + 4 * (v15 - 2)));
      }
    }

    ++v8;
  }

  while (v14 < v2 && v10 != 32);
  if (v10 != 32)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v8 - 29;
  v17 = *(a2 + 4);
  v18 = v17 + 1;
  *(a2 + 16) = v8 - 51;
  if ((v17 + 1) >= 0x21)
  {
    v18 = v17 - 31;
    v19 = *(a2 + 8);
    *(a2 + 4) = v18;
    *(a2 + 8) = v19 - 1;
    if (v2 >= 32 * (v19 - 1))
    {
      *a2 = bswap32(*(*(a2 + 24) + 4 * (v19 - 2)));
    }
  }

  *(a2 + 16) = v16;
  v20 = v18 - 22;
  if (v18 < 0x16)
  {
    v24 = 22 - v18;
    v20 = v18 + 10;
    *(a2 + 4) = v18 + 10;
    v22 = (*a2 << (22 - v18)) & *(a2 + 120);
    if (v16 <= v2)
    {
      v25 = *(a2 + 24);
      v26 = *(a2 + 8);
      *(a2 + 8) = v26 + 1;
      v21 = bswap32(*(v25 + 4 * v26));
      *a2 = v21;
      v22 |= *(v6 + 4 * v24) & (v21 >> v20);
    }

    else
    {
      v21 = 0;
      ++*(a2 + 8);
      *a2 = 0;
    }
  }

  else
  {
    *(a2 + 4) = v20;
    v21 = *a2;
    v22 = (*a2 >> v20) & *(a2 + 120);
  }

  if (v22 != 32)
  {
    return 0xFFFFFFFFLL;
  }

  v27 = *a1;
  *(a1 + 4) = *a1;
  *(a2 + 16) = v8 - 21;
  v28 = v20 - 8;
  if (v20 < 8)
  {
    v30 = 8 - v20;
    v28 = v20 | 0x18;
    *(a2 + 4) = v20 | 0x18;
    v29 = (v21 << (8 - v20)) & *(a2 + 64);
    *a1 = v29;
    if (v8 - 21 > v2)
    {
      v21 = 0;
      ++*(a2 + 8);
      *a2 = 0;
      goto LABEL_31;
    }

    v31 = *(a2 + 24);
    v32 = *(a2 + 8);
    *(a2 + 8) = v32 + 1;
    v21 = bswap32(*(v31 + 4 * v32));
    *a2 = v21;
    v29 |= *(v6 + 4 * v30) & (v21 >> v28);
  }

  else
  {
    v29 = (v21 >> v28) & *(a2 + 64);
  }

  *a1 = v29;
LABEL_31:
  v33 = v29 - v27;
  v34 = v33 >= 0 || v29 <= 0;
  v35 = v33 + 256;
  if (v34)
  {
    v35 = v33;
  }

  *(a1 + 8) = v35;
  *(a2 + 16) = v8 - 19;
  v36 = v28 - 2;
  if (v28 < 2)
  {
    v39 = 2 - v28;
    v36 = v28 | 0x1E;
    *(a2 + 4) = v28 | 0x1E;
    v37 = *(a2 + 40);
    v38 = (v21 << (2 - v28)) & v37;
    if (v8 - 19 <= v2)
    {
      v40 = *(a2 + 24);
      v41 = *(a2 + 8);
      *(a2 + 8) = v41 + 1;
      v21 = bswap32(*(v40 + 4 * v41));
      *a2 = v21;
      v38 |= *(v6 + 4 * v39) & (v21 >> v36);
    }

    else
    {
      v21 = 0;
      ++*(a2 + 8);
      *a2 = 0;
    }
  }

  else
  {
    *(a2 + 4) = v36;
    v37 = *(a2 + 40);
    v38 = (v21 >> v36) & v37;
  }

  if (v38 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 16) = v8 - 16;
  if (v36 <= 2)
  {
    v42 = v36 + 29;
    *(a2 + 4) = v36 + 29;
    if (v8 - 16 <= v2)
    {
      v47 = *(a2 + 24);
      v48 = *(a2 + 8);
      *(a2 + 8) = v48 + 1;
      v21 = bswap32(*(v47 + 4 * v48));
    }

    else
    {
      v21 = 0;
      ++*(a2 + 8);
    }

    *a2 = v21;
    *(a2 + 16) = v8 - 13;
    goto LABEL_51;
  }

  v42 = v36 - 3;
  *(a2 + 16) = v8 - 13;
  if (v36 - 3 >= 3)
  {
LABEL_51:
    v44 = v42 - 3;
    *(a2 + 4) = v42 - 3;
    v49 = (v21 >> (v42 - 3)) & *(a2 + 44);
    goto LABEL_52;
  }

  v43 = 6 - v36;
  v44 = v36 + 26;
  *(a2 + 4) = v44;
  v45 = v21 << v43;
  v46 = v45 & *(a2 + 44);
  *(a1 + 16) = v45 & *(a2 + 44);
  if (v8 - 13 > v2)
  {
    v21 = 0;
    v46 = v46;
    ++*(a2 + 8);
    *a2 = 0;
    goto LABEL_53;
  }

  v54 = *(a2 + 24);
  v55 = *(a2 + 8);
  *(a2 + 8) = v55 + 1;
  v21 = bswap32(*(v54 + 4 * v55));
  v56 = *(v6 + 4 * v43);
  *a2 = v21;
  v49 = v56 & (v21 >> v44) | v46;
LABEL_52:
  v46 = v49;
  *(a1 + 16) = v49;
LABEL_53:
  if (v46 != 7)
  {
    *(a2 + 16) = v8 - 12;
    if (v44)
    {
      *(a2 + 16) = v8 - 11;
      v50 = v44 - 1;
      *(a1 + 17) = (v21 >> v50) & 1;
      if (!v50)
      {
        *(a2 + 4) = 31;
        if (v8 - 11 <= v2)
        {
          v67 = *(a2 + 24);
          v68 = *(a2 + 8);
          *(a2 + 8) = v68 + 1;
          v21 = bswap32(*(v67 + 4 * v68));
          *a2 = v21;
          *(a1 + 18) = (v21 & 0x80000000) != 0;
        }

        else
        {
          v21 = 0;
          *(a1 + 18) = 0;
          *a2 = 0;
          ++*(a2 + 8);
        }

        v63 = 31;
        goto LABEL_77;
      }
    }

    else
    {
      *(a2 + 4) = 31;
      if (v8 - 12 <= v2)
      {
        v61 = *(a2 + 24);
        v62 = *(a2 + 8);
        *(a2 + 8) = v62 + 1;
        v21 = bswap32(*(v61 + 4 * v62));
        *a2 = v21;
        *(a1 + 17) = (v21 & 0x80000000) != 0;
      }

      else
      {
        v21 = 0;
        *(a1 + 17) = 0;
        *a2 = 0;
        ++*(a2 + 8);
      }

      v50 = 31;
    }

    *(a2 + 16) = v8 - 10;
    v63 = v50 - 1;
    *(a1 + 18) = (v21 >> v63) & 1;
    if (!v63)
    {
      *(a2 + 4) = 31;
      if (v8 - 10 <= v2)
      {
        v64 = *(a2 + 24);
        v65 = *(a2 + 8);
        *(a2 + 8) = v65 + 1;
        v21 = bswap32(*(v64 + 4 * v65));
        *a2 = v21;
        *(a1 + 19) = (v21 & 0x80000000) != 0;
      }

      else
      {
        v21 = 0;
        *(a1 + 19) = 0;
        *a2 = 0;
        ++*(a2 + 8);
      }

      v66 = 31;
      goto LABEL_78;
    }

LABEL_77:
    *(a2 + 16) = v8 - 9;
    v66 = v63 - 1;
    *(a1 + 19) = (v21 >> v66) & 1;
    if (!v66)
    {
      *(a2 + 4) = 31;
      if (v8 - 9 <= v2)
      {
        v73 = *(a2 + 24);
        v74 = *(a2 + 8);
        *(a2 + 8) = v74 + 1;
        v21 = bswap32(*(v73 + 4 * v74));
        *a2 = v21;
        *(a1 + 20) = (v21 & 0x80000000) != 0;
      }

      else
      {
        v21 = 0;
        *(a1 + 20) = 0;
        *a2 = 0;
        ++*(a2 + 8);
      }

      v69 = 31;
      goto LABEL_87;
    }

LABEL_78:
    *(a2 + 16) = v8 - 8;
    v69 = v66 - 1;
    *(a1 + 20) = (v21 >> v69) & 1;
    if (!v69)
    {
      *(a2 + 4) = 31;
      if (v8 - 8 <= v2)
      {
        v70 = *(a2 + 24);
        v71 = *(a2 + 8);
        *(a2 + 8) = v71 + 1;
        v21 = bswap32(*(v70 + 4 * v71));
        *a2 = v21;
        *(a1 + 22) = (v21 & 0x80000000) != 0;
      }

      else
      {
        v21 = 0;
        *(a1 + 22) = 0;
        *a2 = 0;
        ++*(a2 + 8);
      }

      v72 = 31;
      goto LABEL_88;
    }

LABEL_87:
    v72 = v69 - 1;
    *(a1 + 22) = (v21 >> (v69 - 1)) & 1;
    *(a2 + 16) = v8 - 3;
    if ((v69 - 1) <= 4)
    {
      v78 = 6 - v69;
      v77 = v69 + 26;
      *(a2 + 4) = v69 + 26;
      v79 = v21 << (6 - v69);
      v80 = v79 & *(a2 + 52);
      *(a1 + 27) = v79 & *(a2 + 52);
      if (v8 - 3 <= v2)
      {
        v81 = *(a2 + 24);
        v82 = *(a2 + 8);
        *(a2 + 8) = v82 + 1;
        v21 = bswap32(*(v81 + 4 * v82));
        *a2 = v21;
        *(a1 + 27) = *(v6 + 4 * v78) & (v21 >> v77) | v80;
      }

      else
      {
        v21 = 0;
        ++*(a2 + 8);
        *a2 = 0;
      }

      v76 = v8 - 2;
      goto LABEL_95;
    }

LABEL_88:
    v75 = *(a2 + 52);
    v76 = v8 - 2;
    *(a2 + 16) = v8 - 2;
    v77 = v72 - 5;
    *(a1 + 27) = (v21 >> v77) & v75;
    if (!v77)
    {
      *(a2 + 4) = 31;
      if (v76 > v2)
      {
        v21 = 0;
        *(a1 + 25) = 0;
        *a2 = 0;
        ++*(a2 + 8);
LABEL_101:
        v52 = 31;
        goto LABEL_102;
      }

      v87 = *(a2 + 24);
      v88 = *(a2 + 8);
      *(a2 + 8) = v88 + 1;
      v21 = bswap32(*(v87 + 4 * v88));
      *a2 = v21;
      *(a1 + 25) = (v21 & 0x80000000) != 0;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_101;
      }

      *(a2 + 16) = v8;
      v52 = 31;
      goto LABEL_97;
    }

LABEL_95:
    v52 = v77 - 1;
    v83 = v21 >> (v77 - 1);
    *(a1 + 25) = v83 & 1;
    if ((v83 & 1) == 0)
    {
LABEL_102:
      v8 = v76;
      goto LABEL_105;
    }

    *(a2 + 16) = v8;
    if (v52 < 2)
    {
      v85 = 3 - v77;
      v52 |= 0x1Eu;
      *(a2 + 4) = v52;
      v86 = (v21 << v85) & v37;
      *(a1 + 26) = v86;
      if (v8 > v2)
      {
        goto LABEL_99;
      }

      v89 = *(a2 + 24);
      v90 = *(a2 + 8);
      *(a2 + 8) = v90 + 1;
      v21 = bswap32(*(v89 + 4 * v90));
      *a2 = v21;
      v84 = *(v6 + 4 * v85) & (v21 >> v52) | v86;
LABEL_104:
      *(a1 + 26) = v84;
      goto LABEL_105;
    }

LABEL_97:
    v52 -= 2;
    *(a2 + 4) = v52;
    v84 = (v21 >> v52) & v37;
    goto LABEL_104;
  }

  *(a1 + 40) = 1;
  if (H263PICT_decPlusHeader(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 16) + 5;
  *(a2 + 16) = v8;
  v51 = *(a2 + 4);
  if (v51 < 5)
  {
    v57 = 5 - v51;
    v52 = v51 + 27;
    *(a2 + 4) = v51 + 27;
    v58 = (*a2 << (5 - v51)) & *(a2 + 52);
    *(a1 + 27) = (*a2 << (5 - v51)) & *(a2 + 52);
    if (v8 <= *(a2 + 20))
    {
      v59 = *(a2 + 24);
      v60 = *(a2 + 8);
      *(a2 + 8) = v60 + 1;
      v21 = bswap32(*(v59 + 4 * v60));
      *a2 = v21;
      v53 = *(v6 + 4 * v57) & (v21 >> v52) | v58;
      goto LABEL_67;
    }

LABEL_99:
    v21 = 0;
    ++*(a2 + 8);
    *a2 = 0;
    goto LABEL_105;
  }

  v52 = v51 - 5;
  v21 = *a2;
  v53 = (*a2 >> v52) & *(a2 + 52);
LABEL_67:
  *(a1 + 27) = v53;
LABEL_105:
  v91 = *(a1 + 40);
  if (v91 && *(a1 + 48) == 1 && *(a1 + 60))
  {
    v92 = *(a1 + 4);
    v93 = *a1 | (*(a1 + 64) << 8);
    *a1 = v93;
    v94 = v93 - v92;
    *(a1 + 8) = v93 - v92;
    if (v93 >= 1 && v94 < 0)
    {
      v95 = v94 + 1024;
LABEL_114:
      *(a1 + 8) = v95;
    }
  }

  else
  {
    v96 = *a1;
    v97 = *a1 - *(a1 + 4);
    *(a1 + 8) = v97;
    if (v96 >= 1 && v97 < 0)
    {
      v95 = v97 + 256;
      goto LABEL_114;
    }
  }

  if (!*(a1 + 22) && !*(a1 + 68))
  {
    goto LABEL_129;
  }

  *(a2 + 16) = v8 + 3;
  v98 = v52 - 3;
  if (v52 < 3)
  {
    v100 = 3 - v52;
    v98 = v52 + 29;
    *(a2 + 4) = v52 + 29;
    v99 = (v21 << (3 - v52)) & *(a2 + 44);
    *(a1 + 28) = v99;
    if (v8 + 3 > *(a2 + 20))
    {
      v21 = 0;
      ++*(a2 + 8);
      *a2 = 0;
      goto LABEL_123;
    }

    v101 = *(a2 + 24);
    v102 = *(a2 + 8);
    *(a2 + 8) = v102 + 1;
    v21 = bswap32(*(v101 + 4 * v102));
    *a2 = v21;
    v99 |= *(v6 + 4 * v100) & (v21 >> v98);
  }

  else
  {
    v99 = (v21 >> v98) & *(a2 + 44);
  }

  *(a1 + 28) = v99;
LABEL_123:
  if (v91 && *(a1 + 48) == 1 && *(a1 + 60))
  {
    *(a1 + 28) = v99 | (8 * *(a1 + 64));
  }

  *(a2 + 16) = v8 + 5;
  v52 = v98 - 2;
  if (v98 < 2)
  {
    v104 = 2 - v98;
    v52 = v98 | 0x1E;
    *(a2 + 4) = v98 | 0x1E;
    v105 = (v21 << (2 - v98)) & *(a2 + 40);
    *(a1 + 32) = v105;
    if (v8 + 5 <= *(a2 + 20))
    {
      v106 = *(a2 + 24);
      v107 = *(a2 + 8);
      *(a2 + 8) = v107 + 1;
      v21 = bswap32(*(v106 + 4 * v107));
      *a2 = v21;
      *(a1 + 32) = *(v6 + 4 * v104) & (v21 >> v52) | v105;
    }

    else
    {
      v21 = 0;
      ++*(a2 + 8);
      *a2 = 0;
    }

    v103 = v8 + 6;
    *(a2 + 16) = v103;
    goto LABEL_136;
  }

  *(a1 + 32) = (v21 >> v52) & *(a2 + 40);
  v8 += 5;
LABEL_129:
  v103 = v8 + 1;
  *(a2 + 16) = v103;
  if (v52)
  {
LABEL_136:
    v108 = v52 - 1;
    *(a2 + 4) = v108;
    v109 = (v21 >> v108) & 1;
    goto LABEL_137;
  }

  *(a2 + 4) = 31;
  if (v103 > *(a2 + 20))
  {
    *a2 = 0;
    ++*(a2 + 8);
    *(a1 + 23) = 0;
    goto LABEL_149;
  }

  v120 = *(a2 + 24);
  v121 = *(a2 + 8);
  *(a2 + 8) = v121 + 1;
  v21 = bswap32(*(v120 + 4 * v121));
  *a2 = v21;
  v109 = v21 >> 31;
  v108 = 31;
LABEL_137:
  *(a1 + 23) = 0;
  if (!v109)
  {
    goto LABEL_149;
  }

  while (1)
  {
    while (1)
    {
      *(a2 + 16) = v103 + 8;
      if (v108 <= 7)
      {
        v114 = 8 - v108;
        v111 = v108 | 0x18;
        *(a2 + 4) = v111;
        v115 = (v21 << v114) & *(a2 + 64);
        *(a1 + 24) = (v21 << v114) & *(a2 + 64);
        if (v103 + 8 <= *(a2 + 20))
        {
          v116 = *(a2 + 24);
          v117 = *(a2 + 8);
          *(a2 + 8) = v117 + 1;
          v21 = bswap32(*(v116 + 4 * v117));
          *a2 = v21;
          *(a1 + 24) = *(v6 + 4 * v114) & (v21 >> v111) | v115;
        }

        else
        {
          v21 = 0;
          ++*(a2 + 8);
          *a2 = 0;
        }

        v103 += 9;
        *(a2 + 16) = v103;
        goto LABEL_147;
      }

      v110 = *(a2 + 64);
      v103 += 9;
      *(a2 + 16) = v103;
      v111 = v108 - 8;
      *(a1 + 24) = (v21 >> v111) & v110;
      if (!v111)
      {
        break;
      }

LABEL_147:
      v108 = v111 - 1;
      *(a2 + 4) = v108;
      if (((v21 >> v108) & 1) == 0)
      {
        goto LABEL_148;
      }
    }

    *(a2 + 4) = 31;
    if (v103 > *(a2 + 20))
    {
      break;
    }

    v112 = *(a2 + 24);
    v113 = *(a2 + 8);
    *(a2 + 8) = v113 + 1;
    v21 = bswap32(*(v112 + 4 * v113));
    *a2 = v21;
    v108 = 31;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_148;
    }
  }

  *a2 = 0;
  ++*(a2 + 8);
LABEL_148:
  *(a1 + 23) = 1;
LABEL_149:
  if (*(a1 + 20))
  {
    v118 = 1;
  }

  else
  {
    v118 = *(a1 + 76) != 0;
  }

  result = 0;
  if (*(a1 + 18))
  {
    v119 = 1;
  }

  else
  {
    v119 = v118;
  }

  *(a1 + 164) = v118;
  *(a1 + 168) = v119;
  return result;
}

uint64_t H263PICT_decPlusHeader(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 48) == 1)
  {
    *(a2 + 16) = v2 + 3;
    v3 = *(a2 + 4);
    if (v3 < 3)
    {
      v8 = 3 - v3;
      v4 = v3 + 29;
      *(a2 + 4) = v4;
      v6 = (*a2 << v8) & *(a2 + 44);
      *(a1 + 44) = v6;
      if ((v2 + 3) > *(a2 + 20))
      {
        v5 = 0;
        ++*(a2 + 8);
        *a2 = 0;
        goto LABEL_9;
      }

      v9 = *(a2 + 24);
      v10 = *(a2 + 8);
      *(a2 + 8) = v10 + 1;
      v5 = bswap32(*(v9 + 4 * v10));
      *a2 = v5;
      v6 |= *(a2 + 4 * v8 + 32) & (v5 >> v4);
    }

    else
    {
      v4 = v3 - 3;
      *(a2 + 4) = v4;
      v5 = *a2;
      v6 = (*a2 >> v4) & *(a2 + 44);
    }

    *(a1 + 44) = v6;
LABEL_9:
    if (v6 > 3)
    {
      return 2;
    }

    *(a2 + 16) = v2 + 4;
    if (v4)
    {
      *(a2 + 16) = v2 + 5;
      v11 = v4 - 1;
      *(a1 + 18) = (v5 >> v11) & 1;
      if (!v11)
      {
        *(a2 + 4) = 31;
        if ((v2 + 5) <= *(a2 + 20))
        {
          v21 = *(a2 + 24);
          v22 = *(a2 + 8);
          *(a2 + 8) = v22 + 1;
          v5 = bswap32(*(v21 + 4 * v22));
          v12 = v5 >> 31;
        }

        else
        {
          v12 = 0;
          v5 = 0;
          ++*(a2 + 8);
        }

        *(a1 + 72) = v12;
        *a2 = v5;
        v16 = 31;
        goto LABEL_26;
      }
    }

    else
    {
      *(a2 + 4) = 31;
      if ((v2 + 4) <= *(a2 + 20))
      {
        v14 = *(a2 + 24);
        v15 = *(a2 + 8);
        *(a2 + 8) = v15 + 1;
        v5 = bswap32(*(v14 + 4 * v15));
        *a2 = v5;
        *(a1 + 18) = (v5 & 0x80000000) != 0;
      }

      else
      {
        v5 = 0;
        *(a1 + 18) = 0;
        *a2 = 0;
        ++*(a2 + 8);
      }

      v11 = 31;
    }

    *(a2 + 16) = v2 + 6;
    v16 = v11 - 1;
    *(a1 + 72) = (v5 >> v16) & 1;
    if (!v16)
    {
      *(a2 + 4) = 31;
      if ((v2 + 6) <= *(a2 + 20))
      {
        v18 = *(a2 + 24);
        v19 = *(a2 + 8);
        *(a2 + 8) = v19 + 1;
        v5 = bswap32(*(v18 + 4 * v19));
        v17 = v5 >> 31;
      }

      else
      {
        v17 = 0;
        v5 = 0;
        ++*(a2 + 8);
      }

      *(a1 + 76) = v17;
      *a2 = v5;
      v2 += 7;
      v20 = 31;
LABEL_28:
      v7 = v20 - 1;
      *(a1 + 96) = (v5 >> v7) & 1;
      goto LABEL_29;
    }

LABEL_26:
    *(a2 + 16) = v2 + 7;
    v20 = v16 - 1;
    *(a1 + 76) = (v5 >> v20) & 1;
    if (!v20)
    {
      *(a2 + 4) = 31;
      if ((v2 + 7) <= *(a2 + 20))
      {
        v31 = *(a2 + 24);
        v32 = *(a2 + 8);
        *(a2 + 8) = v32 + 1;
        LODWORD(v31) = bswap32(*(v31 + 4 * v32));
        *a2 = v31;
        *(a1 + 96) = v31 >> 31;
      }

      else
      {
        *(a1 + 96) = 0;
        *a2 = 0;
        ++*(a2 + 8);
      }

      *(a2 + 16) = v2 + 10;
      v7 = 31;
      goto LABEL_30;
    }

    v2 += 7;
    goto LABEL_28;
  }

  v7 = *(a2 + 4);
LABEL_29:
  v23 = v2 + 3;
  *(a2 + 16) = v23;
  if (v7 >= 3)
  {
LABEL_30:
    v13 = 0;
    *(a2 + 4) = v7 - 3;
    v24 = (*a2 >> (v7 - 3)) & *(a2 + 44);
LABEL_34:
    *(a1 + 17) = v24;
    return v13;
  }

  v25 = 3 - v7;
  v26 = v7 + 29;
  *(a2 + 4) = v7 + 29;
  v27 = (*a2 << (3 - v7)) & *(a2 + 44);
  *(a1 + 17) = v27;
  if (v23 <= *(a2 + 20))
  {
    v13 = 0;
    v28 = *(a2 + 24);
    v29 = *(a2 + 8);
    *(a2 + 8) = v29 + 1;
    LODWORD(v28) = bswap32(*(v28 + 4 * v29));
    *a2 = v28;
    v24 = *(a2 + 4 * v25 + 32) & (v28 >> v26) | v27;
    goto LABEL_34;
  }

  v13 = 0;
  ++*(a2 + 8);
  *a2 = 0;
  return v13;
}

uint64_t InitQuantization(char **a1)
{
  v2 = *a1;
  if (!v2)
  {
    v2 = MEM_NewClear(1442);
    *a1 = v2;
    if (!v2)
    {
      return 1;
    }
  }

  v2[94] = 8;
  *(v2 + 20) = 0;
  *(v2 + 12) = 0;
  *(v2 + 4) = 0;
  *(v2 + 28) = xmmword_2778F7A80;
  v2[134] = 1;
  *(v2 + 66) = 1;
  v3 = C_Function_SizeofSinglepassRateController();
  *(*a1 + 12) = MEM_NewClear(v3);
  (*a1)[104] = 0;
  v4 = C_Function_SizeofFrame();
  v5 = MEM_NewClear(v4);
  result = 0;
  *(*a1 + 106) = v5;
  return result;
}

uint64_t KillQuantization(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(v2 + 96))
    {
      C_Function_Kill(*(v2 + 96));
      v3 = *a1;
      *(v3 + 104) = 0;
      MEM_Dispose(*(v3 + 96));
      v2 = *a1;
    }

    if (*(v2 + 106))
    {
      MEM_Dispose(*(v2 + 106));
      v2 = *a1;
    }

    MEM_Dispose(v2);
    *a1 = 0;
  }

  return 0;
}

uint64_t InitQuantTables(float **a1, int a2)
{
  if (*a1)
  {
    return 0;
  }

  v5 = MEM_NewClear(102912);
  *a1 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = xmmword_2778F7A90;
    v8.i64[0] = 0x400000004;
    v8.i64[1] = 0x400000004;
    do
    {
      *&v5[v6] = vcvtq_f32_u32(v7);
      v7 = vaddq_s32(v7, v8);
      v6 += 4;
    }

    while (v6 != 256);
    v9 = (v5 + 256);
    v10 = (v5 + 17537);
    v11 = (v5 + 9089);
    v12 = 1;
    v13 = 256;
    __asm
    {
      FMOV            V2.2D, #2.0
      FMOV            V3.2D, #1.0
      FMOV            V4.2D, #-1.0
      FMOV            V5.2D, #-0.25
    }

    v22 = vdupq_n_s64(0x4090000000000000uLL);
    __asm { FMOV            V7.2D, #-0.5 }

    v24 = vdupq_n_s64(0x3FE6A09E667F3BCDuLL);
    v25 = 1.0;
    do
    {
      v26 = &v9[4 * v13];
      if (v12)
      {
        v35 = 128;
        v36 = v5;
        v37 = 0x7F00000080;
        do
        {
          v38 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(vmlaq_f64(_Q3, _Q2, vcvtq_f64_f32(vcvt_f32_s32(v37))), v25))), _Q5);
          *(v36 + 256) = vcvt_f32_f64(v38);
          *(v36 + 4480) = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q7, v22, v38)));
          *(v36 + 8704) = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q7, v24, vmulq_f64(v38, v22))));
          v37 = vadd_s32(v37, 0x100000001);
          v36 += 2;
          v35 -= 2;
        }

        while (v35);
        *(v26 + 128) = 0;
        do
        {
          v39 = ((v35 + 1) * 2.0 + 1.0) * v25;
          v40 = v39 * 0.25;
          v41 = v40;
          v5[v35 + 641] = v41;
          *&v11[4 * v35] = (v40 * 1024.0 + 0.5);
          *&v10[4 * v35++] = (v40 * 1024.0 * 0.707106781 + 0.5);
        }

        while (v35 != 127);
      }

      else
      {
        v27 = 0;
        v28 = vdupq_lane_s64(*&v25, 0);
        v29 = 0x7F00000080;
        do
        {
          v30 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(_Q4, vmlaq_f64(_Q3, _Q2, vcvtq_f64_f32(vcvt_f32_s32(v29))), v28))), _Q5);
          *&v5[v27 + 512] = vcvt_f32_f64(v30);
          *&v5[v27 + 8960] = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q7, v22, v30)));
          *&v5[v27 + 17408] = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q7, v24, vmulq_f64(v30, v22))));
          v29 = vadd_s32(v29, 0x100000001);
          v27 += 2;
        }

        while (v27 != 128);
        v31 = 0;
        *(v26 + 128) = 0;
        do
        {
          v32 = v25 * ((v31 + 1) * 2.0 + 1.0) + -1.0;
          v33 = v32 * 0.25;
          v34 = v33;
          v5[v31 + 641] = v34;
          *&v11[4 * v31] = (v33 * 1024.0 + 0.5);
          *&v10[4 * v31++] = (v33 * 1024.0 * 0.707106781 + 0.5);
        }

        while (v31 != 127);
      }

      ++v12;
      v13 += 256;
      v25 = v25 + 1.0;
      v5 += 256;
      v10 += 1024;
      v11 += 1024;
    }

    while (v12 != 32);
    if (a2)
    {
      return 0;
    }

    v42 = 1;
    while (1)
    {
      v43 = *&(*a1)[2 * v42 + 25600];
      if (v43)
      {
        MEM_Dispose(v43);
      }

      if (v42 >= 8)
      {
        v44 = 0x2000;
      }

      else
      {
        v44 = 0x4000;
      }

      *&(*a1)[2 * v42 + 25600] = MEM_NewClear(v44);
      if (!*&(*a1)[2 * v42 + 25600])
      {
        return 1;
      }

      for (i = 0; ; ++i)
      {
        if (i == 4096)
        {
          LOWORD(v46) = 0;
        }

        else
        {
          v47 = i < 0x1000 ? -1 : 1;
          v46 = (((((1 - v42) & 1) - v42 + v47 * (i - 4096)) / (2 * v42)) & ~(((((1 - v42) & 1) - v42 + v47 * (i - 4096)) / (2 * v42)) >> 31)) * v47;
        }

        v48 = *&(*a1)[2 * v42 + 25600];
        if (v42 > 7)
        {
          break;
        }

        *(v48 + 2 * i) = v46;
        if (i == 0x1FFF)
        {
          v49 = 0x2000;
          goto LABEL_39;
        }

LABEL_37:
        ;
      }

      *(v48 + i) = v46;
      if (i != 0x1FFF)
      {
        goto LABEL_37;
      }

      v49 = 4096;
LABEL_39:
      *&(*a1)[2 * v42 + 25664] = *&(*a1)[2 * v42 + 25600] + v49;
      if (++v42 == 32)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t KillQuantTables(void **a1)
{
  if (*a1)
  {
    v2 = 102408;
    v3 = 31;
    do
    {
      v4 = *(*a1 + v2);
      if (v4)
      {
        MEM_Dispose(v4);
        *(*a1 + v2) = 0;
        *(*a1 + v2 + 256) = 0;
      }

      v2 += 8;
      --v3;
    }

    while (v3);
    MEM_Dispose(*a1);
    *a1 = 0;
  }

  return 0;
}

uint64_t SD_Gobble(unsigned int *a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  v6 = a3[1] - *a3 + 1;
  v7 = a3[2];
  v8 = *a1;
  LODWORD(v9) = -1;
  do
  {
    v10 = v9 + 2;
    v11 = a1[(v9 + 2)];
    v9 = (v9 + 1);
  }

  while (v11 > (v8 + v8 * (v7 - *a3) - 1) / v6);
  v12 = v5 + a1[v9] * v6 / v8 - 1;
  a3[1] = v12;
  v13 = a1[v10] * v6 / *a1 + v5;
  *a3 = v13;
  while (1)
  {
    if (v12 < 0x8000)
    {
      goto LABEL_11;
    }

    if (v13 < 0x8000)
    {
      break;
    }

    v14 = -32768;
LABEL_10:
    v7 += v14;
    a3[2] = v7;
    v13 += v14;
    v12 += v14;
LABEL_11:
    *a3 = 2 * v13;
    a3[1] = (2 * v12) | 1;
    v7 = SD_GrabStartCode(a2, a3) | (2 * v7);
    a3[2] = v7;
    v13 = *a3;
    v12 = a3[1];
  }

  if (v12 >> 14 <= 2 && v13 >= 0x4000)
  {
    v14 = -16384;
    goto LABEL_10;
  }

  return v9;
}

uint64_t SD_GrabStartCode(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = v2 + 17;
  v3 = *(a1 + 4);
  if (v3 < 0x11)
  {
    v7 = 17 - v3;
    v4 = v3 + 15;
    *(a1 + 4) = v3 + 15;
    v6 = (*a1 << (17 - v3)) & *(a1 + 100);
    if ((v2 + 17) <= *(a1 + 20))
    {
      v8 = *(a1 + 24);
      v9 = *(a1 + 8);
      *(a1 + 8) = v9 + 1;
      v5 = bswap32(*(v8 + 4 * v9));
      *a1 = v5;
      v6 |= *(a1 + 4 * v7 + 32) & (v5 >> v4);
    }

    else
    {
      v5 = 0;
      ++*(a1 + 8);
      *a1 = 0;
    }
  }

  else
  {
    v4 = v3 - 17;
    v5 = *a1;
    v6 = (*a1 >> (v3 - 17)) & *(a1 + 100);
  }

  v10 = v4 + 17;
  *(a1 + 4) = v4 + 17;
  *(a1 + 16) = v2;
  if (v4 >= 0x10)
  {
    v10 = v4 - 15;
    v11 = *(a1 + 8);
    *(a1 + 4) = v10;
    *(a1 + 8) = v11 - 1;
    if (*(a1 + 20) >= (32 * (v11 - 1)))
    {
      v5 = bswap32(*(*(a1 + 24) + 4 * (v11 - 2)));
      *a1 = v5;
    }
  }

  if (v6 == 1)
  {
    return 0;
  }

  *(a1 + 16) = v2 + 1;
  *(a1 + 4) = v10 - 1;
  v13 = *(a2 + 12);
  v14 = v5 & (1 << (v10 - 1));
  if (v13 < 14)
  {
    v12 = v14 != 0;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13 + 1;
    }
  }

  else if (v14)
  {
    v15 = v2 + 2;
    *(a1 + 16) = v15;
    if (v10 == 1)
    {
      *(a1 + 4) = 31;
      if (v15 <= *(a1 + 20))
      {
        v17 = *(a1 + 24);
        v18 = *(a1 + 8);
        *(a1 + 8) = v18 + 1;
        LODWORD(v17) = bswap32(*(v17 + 4 * v18));
        *a1 = v17;
        v12 = v17 >> 31;
      }

      else
      {
        v12 = 0;
        *a1 = 0;
        ++*(a1 + 8);
      }
    }

    else
    {
      *(a1 + 4) = v10 - 2;
      v12 = (v5 >> (v10 - 2)) & 1;
    }

    v16 = v12 ^ 1;
  }

  else
  {
    v12 = 0;
    v16 = 1;
  }

  *(a2 + 12) = v16;
  return v12;
}

uint64_t SD_Reset(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *a2 = xmmword_2778F7AB0;
  v5 = 16;
  do
  {
    result = SD_GrabStartCode(a1, a2);
    v4 = result | (2 * v4);
    *(a2 + 8) = v4;
    --v5;
  }

  while (v5);
  return result;
}

void FrameComplexity::InvalidateFrameComplexity(FrameComplexity *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {

    free(v4);
  }
}

int32x4_t iRowCol8x8f1S16(__int16 *a1, int16x8_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v156 = *MEMORY[0x277D85DE8];
  if ((a5 & 0x80000000) != 0)
  {
    v11 = 0;
    v12 = &v140;
LABEL_13:
    bzero(v12, (32 * v11 + 256));
    goto LABEL_14;
  }

  v10 = 0;
  v11 = ~a5;
  v12 = &v140;
  do
  {
    v13 = *a1;
    if (v10)
    {
      v14 = *(a7 + 4 * v13);
      v15 = a8;
    }

    else
    {
      if (a4)
      {
        v14 = v13 << 10;
      }

      else
      {
        v14 = *(a8 + 4 * v13) >> 1;
      }

      v15 = a7;
    }

    v16 = *(v15 + 4 * a1[1]);
    v17 = *(v15 + 4 * a1[2]);
    v18 = *(v15 + 4 * a1[3]);
    v19 = *(v15 + 4 * a1[4]);
    v20 = *(v15 + 4 * a1[5]);
    v21 = *(v15 + 4 * a1[6]);
    v22 = *(v15 + 4 * a1[7]);
    v23 = v16 + v20 - (v18 + v22);
    v24 = 2 * (v20 - v22);
    v25 = v18 - v20;
    v26 = (2896 * v22) >> 10;
    v27 = 2 * v25 - v26;
    v28 = (946 * (v26 + 2 * v25)) >> 10;
    v29 = (0x3FFFFFFFE78 * v27) >> 10;
    v30 = (724 * v24) >> 10;
    v31 = v23 - v30;
    LODWORD(v30) = v23 + v30;
    v32 = v30 + v28;
    v33 = v31 + v29;
    LODWORD(v30) = v30 - v28;
    v34 = (1004 * v32) >> 10;
    v35 = (0x3FFFFFFFCADLL * (v31 - v29)) >> 10;
    v36 = v17 - v21;
    v37 = (1448 * v21) >> 10;
    v38 = v36 - v37;
    v39 = (946 * (v36 + v37)) >> 10;
    v40 = (0x3FFFFFFFE78 * v38) >> 10;
    v41 = (724 * v19) >> 10;
    v42 = v14 - v41;
    v43 = v14 + v41;
    LODWORD(v41) = v43 + v39;
    v44 = v42 - v40;
    v12[1].i32[2] = v42 - v40 + v35;
    v12[1].i32[3] = v43 + v39 - v34;
    v45 = (569 * v33) >> 10;
    v46 = (0x3FFFFFFFF38 * v30) >> 10;
    LODWORD(v40) = v42 + v40;
    v47 = v43 - v39;
    v12[1].i32[0] = v47 + v46;
    v12[1].i32[1] = v40 - v45;
    v12->i32[2] = v40 + v45;
    v12->i32[3] = v47 - v46;
    v12->i32[0] = v41 + v34;
    v12->i32[1] = v44 - v35;
    v12 += 2;
    ++v10;
    a1 += 8;
  }

  while (a5 + 1 != v10);
  if (a5 <= 6)
  {
    goto LABEL_13;
  }

LABEL_14:
  v48 = vsubq_s32(vaddq_s32(v143, v151), vaddq_s32(v147, v155));
  v49 = vsubq_s32(vaddq_s32(v142, v150), vaddq_s32(v146, v154));
  v50 = vsubq_s32(v151, v155);
  v51 = vsubq_s32(v150, v154);
  v52 = vaddq_s32(v51, v51);
  v53 = vaddq_s32(v50, v50);
  v54 = vshlq_n_s32(v155, 2uLL);
  v55 = vshlq_n_s32(v154, 2uLL);
  v56 = vsubq_s32(v147, v151);
  v57 = vsubq_s32(v146, v150);
  v58 = vaddq_s32(v57, v57);
  v59 = vaddq_s32(v56, v56);
  v60 = vdupq_n_s32(0x2D4u);
  v61 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v55.i8, *v60.i8), 0xAuLL), vmull_high_s32(v55, v60), 0xAuLL);
  v62 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v54.i8, *v60.i8), 0xAuLL), vmull_high_s32(v54, v60), 0xAuLL);
  v63 = vsubq_s32(v59, v62);
  v64 = vsubq_s32(v58, v61);
  v65 = vaddq_s32(v59, v62);
  v66 = vaddq_s32(v58, v61);
  v67 = vdupq_n_s32(0x3B2u);
  v68 = vmull_high_s32(v65, v67);
  v69 = vmull_s32(*v65.i8, *v67.i8);
  v70 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v66.i8, *v67.i8), 0xAuLL), vmull_high_s32(v66, v67), 0xAuLL);
  v71 = vshrn_high_n_s64(vshrn_n_s64(v69, 0xAuLL), v68, 0xAuLL);
  v72.i64[0] = v64.i32[0];
  v72.i64[1] = v64.i32[1];
  v73 = v72;
  v72.i64[0] = v64.i32[2];
  v72.i64[1] = v64.i32[3];
  v74 = v72;
  v72.i64[0] = v63.i32[0];
  v72.i64[1] = v63.i32[1];
  v63.i64[0] = 0x3FFFFFFFE78 * v63.i32[2];
  v63.i64[1] = 0x3FFFFFFFE78 * v63.i32[3];
  v64.i64[0] = 0x3FFFFFFFE78 * v72.i64[0];
  v64.i64[1] = 0x3FFFFFFFE78 * v72.i64[1];
  v74.i64[0] *= 0x3FFFFFFFE78;
  v74.i64[1] *= 0x3FFFFFFFE78;
  v73.i64[0] *= 0x3FFFFFFFE78;
  v73.i64[1] *= 0x3FFFFFFFE78;
  v75 = vshrn_high_n_s64(vshrn_n_s64(v73, 0xAuLL), v74, 0xAuLL);
  v76 = vshrn_high_n_s64(vshrn_n_s64(v64, 0xAuLL), v63, 0xAuLL);
  v77 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v53.i8, *v60.i8), 0xAuLL), vmull_high_s32(v53, v60), 0xAuLL);
  v78 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v52.i8, *v60.i8), 0xAuLL), vmull_high_s32(v52, v60), 0xAuLL);
  v79 = vsubq_s32(v49, v78);
  v80 = vsubq_s32(v48, v77);
  v81 = vaddq_s32(v49, v78);
  v82 = vaddq_s32(v48, v77);
  v83 = vaddq_s32(v82, v71);
  v84 = vaddq_s32(v81, v70);
  v85 = vaddq_s32(v80, v76);
  v86 = vaddq_s32(v79, v75);
  v87 = vsubq_s32(v82, v71);
  v88 = vsubq_s32(v81, v70);
  v89 = vsubq_s32(v80, v76);
  v90 = vsubq_s32(v79, v75);
  v91 = vdupq_n_s32(0x3ECu);
  v92 = vmull_high_s32(v83, v91);
  v93 = vmull_s32(*v83.i8, *v91.i8);
  v94 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v84.i8, *v91.i8), 0xAuLL), vmull_high_s32(v84, v91), 0xAuLL);
  v95 = vshrn_high_n_s64(vshrn_n_s64(v93, 0xAuLL), v92, 0xAuLL);
  v96 = vdupq_n_s32(0x239u);
  v97 = vmull_high_s32(v85, v96);
  v98 = vmull_s32(*v85.i8, *v96.i8);
  v99 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v86.i8, *v96.i8), 0xAuLL), vmull_high_s32(v86, v96), 0xAuLL);
  v100 = vshrn_high_n_s64(vshrn_n_s64(v98, 0xAuLL), v97, 0xAuLL);
  v72.i64[1] = v88.i32[1];
  v75.i64[0] = 0x3FFFFFFFF38 * v87.i32[2];
  v75.i64[1] = 0x3FFFFFFFF38 * v87.i32[3];
  v101 = 0x3FFFFFFFF38 * v87.i32[1];
  v87.i64[0] = 0x3FFFFFFFF38 * v87.i32[0];
  v87.i64[1] = v101;
  v85.i64[0] = 0x3FFFFFFFF38 * v88.i32[2];
  v85.i64[1] = 0x3FFFFFFFF38 * v88.i32[3];
  v88.i64[0] = 0x3FFFFFFFF38 * v88.i32[0];
  v88.i64[1] = 0x3FFFFFFFF38 * v72.i64[1];
  v102 = vshrn_high_n_s64(vshrn_n_s64(v88, 0xAuLL), v85, 0xAuLL);
  v103 = vshrn_high_n_s64(vshrn_n_s64(v87, 0xAuLL), v75, 0xAuLL);
  v72.i64[0] = v90.i32[0];
  v72.i64[1] = v90.i32[1];
  v75.i64[0] = 0x3FFFFFFFCADLL * v89.i32[2];
  v75.i64[1] = 0x3FFFFFFFCADLL * v89.i32[3];
  v85.i64[0] = 0x3FFFFFFFCADLL * v89.i32[0];
  v85.i64[1] = 0x3FFFFFFFCADLL * v89.i32[1];
  v90.i64[0] = 0x3FFFFFFFCADLL * v90.i32[2];
  v90.i64[1] = 0x3FFFFFFFCADLL * v90.i32[3];
  v89.i64[0] = 0x3FFFFFFFCADLL * v72.i64[0];
  v89.i64[1] = 0x3FFFFFFFCADLL * v72.i64[1];
  v104 = vshrn_high_n_s64(vshrn_n_s64(v89, 0xAuLL), v90, 0xAuLL);
  v105 = vshrn_high_n_s64(vshrn_n_s64(v85, 0xAuLL), v75, 0xAuLL);
  v106 = vsubq_s32(v144, v152);
  v107 = vsubq_s32(v145, v153);
  v108 = vaddq_s32(v153, v153);
  v109 = vaddq_s32(v152, v152);
  v110 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v109.i8, *v60.i8), 0xAuLL), vmull_high_s32(v109, v60), 0xAuLL);
  v111 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v108.i8, *v60.i8), 0xAuLL), vmull_high_s32(v108, v60), 0xAuLL);
  v112 = vsubq_s32(v107, v111);
  v113 = vsubq_s32(v106, v110);
  v114 = vaddq_s32(v107, v111);
  v115 = vaddq_s32(v106, v110);
  v116 = vmull_high_s32(v114, v67);
  v117 = vmull_s32(*v114.i8, *v67.i8);
  v118 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v115.i8, *v67.i8), 0xAuLL), vmull_high_s32(v115, v67), 0xAuLL);
  v119 = vshrn_high_n_s64(vshrn_n_s64(v117, 0xAuLL), v116, 0xAuLL);
  v72.i64[0] = v113.i32[0];
  v72.i64[1] = v113.i32[1];
  v120 = v72;
  v72.i64[0] = v113.i32[2];
  v72.i64[1] = v113.i32[3];
  v121 = v72;
  v72.i64[0] = v112.i32[0];
  v72.i64[1] = v112.i32[1];
  v112.i64[0] = 0x3FFFFFFFE78 * v112.i32[2];
  v112.i64[1] = 0x3FFFFFFFE78 * v112.i32[3];
  v67.i64[0] = 0x3FFFFFFFE78 * v72.i64[0];
  v67.i64[1] = 0x3FFFFFFFE78 * v72.i64[1];
  v121.i64[0] *= 0x3FFFFFFFE78;
  v121.i64[1] *= 0x3FFFFFFFE78;
  v120.i64[0] *= 0x3FFFFFFFE78;
  v120.i64[1] *= 0x3FFFFFFFE78;
  v122 = vshrn_high_n_s64(vshrn_n_s64(v120, 0xAuLL), v121, 0xAuLL);
  v123 = vshrn_high_n_s64(vshrn_n_s64(v67, 0xAuLL), v112, 0xAuLL);
  v124 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v149.i8, *v60.i8), 0xAuLL), vmull_high_s32(v149, v60), 0xAuLL);
  v125 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v148.i8, *v60.i8), 0xAuLL), vmull_high_s32(v148, v60), 0xAuLL);
  v126 = vsubq_s32(v140, v125);
  v127 = vsubq_s32(v141, v124);
  v128 = vaddq_s32(v140, v125);
  v129 = vaddq_s32(v141, v124);
  v124.i64[0] = 0x20000000200;
  v124.i64[1] = 0x20000000200;
  v130 = vaddq_s32(vaddq_s32(v128, v124), v118);
  v131 = vaddq_s32(vaddq_s32(v129, v124), v119);
  v132 = vaddq_s32(vaddq_s32(v126, v124), v122);
  v133 = vaddq_s32(vaddq_s32(v127, v124), v123);
  v134 = vaddq_s32(vsubq_s32(v128, v118), v124);
  v135 = vaddq_s32(vsubq_s32(v129, v119), v124);
  v136 = vaddq_s32(vsubq_s32(v126, v122), v124);
  v137 = vaddq_s32(vsubq_s32(v127, v123), v124);
  a2[6] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v136, v104), 0xAuLL), vaddq_s32(v137, v105), 0xAuLL);
  a2[7] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v130, v94), 0xAuLL), vsubq_s32(v131, v95), 0xAuLL);
  a2[4] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v134, v102), 0xAuLL), vaddq_s32(v135, v103), 0xAuLL);
  a2[5] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v132, v99), 0xAuLL), vsubq_s32(v133, v100), 0xAuLL);
  a2[2] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v132, v99), 0xAuLL), vaddq_s32(v133, v100), 0xAuLL);
  a2[3] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v134, v102), 0xAuLL), vsubq_s32(v135, v103), 0xAuLL);
  result = vsubq_s32(v137, v105);
  *a2 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v130, v94), 0xAuLL), vaddq_s32(v131, v95), 0xAuLL);
  a2[1] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v136, v104), 0xAuLL), result, 0xAuLL);
  v139 = *MEMORY[0x277D85DE8];
  return result;
}

int16x8_t iRowCol4x8f1S16(__int16 *a1, int16x8_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v108 = *MEMORY[0x277D85DE8];
  if ((a5 & 0x80000000) != 0)
  {
    v11 = 0;
    v12 = &v100;
LABEL_13:
    bzero(v12, (32 * v11 + 256));
    goto LABEL_14;
  }

  v10 = 0;
  v11 = ~a5;
  v12 = &v100;
  do
  {
    v13 = *a1;
    if (v10)
    {
      v14 = *(a7 + 4 * v13);
      v15 = a8;
    }

    else
    {
      if (a4)
      {
        v14 = v13 << 10;
      }

      else
      {
        v14 = *(a8 + 4 * v13) >> 1;
      }

      v15 = a7;
    }

    v16 = *(v15 + 4 * a1[1]);
    v17 = *(v15 + 4 * a1[2]);
    v18 = *(v15 + 4 * a1[3]);
    v19 = *(v15 + 4 * a1[4]);
    v20 = *(v15 + 4 * a1[7]);
    v21 = *(v15 + 4 * a1[6]);
    v22 = *(v15 + 4 * a1[5]);
    v23 = v16 - (v18 + v20) + v22;
    v24 = 2 * (v22 - v20);
    v25 = v18 - v22;
    v26 = (2896 * v20) >> 10;
    v27 = 2 * v25 - v26;
    v28 = (946 * (v26 + 2 * v25)) >> 10;
    v29 = (0x3FFFFFFFE78 * v27) >> 10;
    v30 = (724 * v24) >> 10;
    v31 = v23 - v30;
    LODWORD(v30) = v23 + v30;
    v32 = v30 + v28;
    v33 = v31 + v29;
    LODWORD(v30) = v30 - v28;
    v34 = (1004 * v32) >> 10;
    v35 = (0x3FFFFFFFCADLL * (v31 - v29)) >> 10;
    v36 = v17 - v21;
    v37 = (1448 * v21) >> 10;
    v38 = v36 - v37;
    v39 = (946 * (v36 + v37)) >> 10;
    v40 = (0x3FFFFFFFE78 * v38) >> 10;
    v41 = (724 * v19) >> 10;
    v42 = v14 - v41;
    v43 = v14 + v41;
    LODWORD(v41) = v43 + v39;
    v44 = v42 - v40;
    v12[1].i32[2] = v42 - v40 + v35;
    v12[1].i32[3] = v43 + v39 - v34;
    v45 = (569 * v33) >> 10;
    v46 = (0x3FFFFFFFF38 * v30) >> 10;
    LODWORD(v40) = v42 + v40;
    v47 = v43 - v39;
    v12[1].i32[0] = v47 + v46;
    v12[1].i32[1] = v40 - v45;
    v12->i32[2] = v40 + v45;
    v12->i32[3] = v47 - v46;
    v12->i32[0] = v41 + v34;
    v12->i32[1] = v44 - v35;
    v12 += 2;
    ++v10;
    a1 += 8;
  }

  while (a5 + 1 != v10);
  if (a5 <= 6)
  {
    goto LABEL_13;
  }

LABEL_14:
  v48 = vsubq_s32(v102, v106);
  v49 = vsubq_s32(v103, v107);
  v50 = vaddq_s32(v107, v107);
  v51 = vaddq_s32(v106, v106);
  v52.i64[0] = v51.i32[0];
  v52.i64[1] = v51.i32[1];
  v53 = v52;
  v52.i64[0] = v51.i32[2];
  v52.i64[1] = v51.i32[3];
  v54 = v52;
  v52.i64[0] = v50.i32[0];
  v52.i64[1] = v50.i32[1];
  v55 = v52;
  v56 = vdupq_n_s32(0x3B2u);
  v52.i64[0] = v50.i32[2];
  v52.i64[1] = v50.i32[3];
  v57 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v51.i8, *v56.i8), 0xAuLL), vmull_high_s32(v51, v56), 0xAuLL);
  v58 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v50.i8, *v56.i8), 0xAuLL), vmull_high_s32(v50, v56), 0xAuLL);
  v59.i64[0] = 0x3FFFFFFFE78 * v52.i64[0];
  v59.i64[1] = 0x3FFFFFFFE78 * v52.i64[1];
  v55.i64[0] *= 0x3FFFFFFFE78;
  v55.i64[1] *= 0x3FFFFFFFE78;
  v54.i64[0] *= 0x3FFFFFFFE78;
  v54.i64[1] *= 0x3FFFFFFFE78;
  v53.i64[0] *= 0x3FFFFFFFE78;
  v53.i64[1] *= 0x3FFFFFFFE78;
  v60 = vshrn_high_n_s64(vshrn_n_s64(v53, 0xAuLL), v54, 0xAuLL);
  v61 = vshrn_high_n_s64(vshrn_n_s64(v55, 0xAuLL), v59, 0xAuLL);
  v62 = vaddq_s32(v49, v58);
  v63 = vaddq_s32(v48, v57);
  v64 = vaddq_s32(v49, v61);
  v65 = vaddq_s32(v48, v60);
  v66 = vsubq_s32(v49, v58);
  v67 = vsubq_s32(v48, v57);
  v68 = vsubq_s32(v49, v61);
  v69 = vsubq_s32(v48, v60);
  v70 = vdupq_n_s32(0x3ECu);
  v71 = vmull_high_s32(v62, v70);
  v72 = vmull_s32(*v62.i8, *v70.i8);
  v73 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v63.i8, *v70.i8), 0xAuLL), vmull_high_s32(v63, v70), 0xAuLL);
  v74 = vshrn_high_n_s64(vshrn_n_s64(v72, 0xAuLL), v71, 0xAuLL);
  v75 = vdupq_n_s32(0x239u);
  v76 = vmull_high_s32(v64, v75);
  v77 = vmull_s32(*v64.i8, *v75.i8);
  v78 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v65.i8, *v75.i8), 0xAuLL), vmull_high_s32(v65, v75), 0xAuLL);
  v79 = vshrn_high_n_s64(vshrn_n_s64(v77, 0xAuLL), v76, 0xAuLL);
  v62.i64[0] = 0x3FFFFFFFF38 * v66.i32[2];
  v62.i64[1] = 0x3FFFFFFFF38 * v66.i32[3];
  v61.i64[0] = 0x3FFFFFFFF38 * v66.i32[0];
  v61.i64[1] = 0x3FFFFFFFF38 * v66.i32[1];
  v63.i64[0] = 0x3FFFFFFFF38 * v67.i32[2];
  v63.i64[1] = 0x3FFFFFFFF38 * v67.i32[3];
  v76.i64[0] = 0x3FFFFFFFF38 * v67.i32[0];
  v76.i64[1] = 0x3FFFFFFFF38 * v67.i32[1];
  v80 = vshrn_high_n_s64(vshrn_n_s64(v76, 0xAuLL), v63, 0xAuLL);
  v81 = vshrn_high_n_s64(vshrn_n_s64(v61, 0xAuLL), v62, 0xAuLL);
  v52.i64[0] = v69.i32[0];
  v52.i64[1] = v69.i32[1];
  v64.i64[0] = 0x3FFFFFFFCADLL * v68.i32[2];
  v64.i64[1] = 0x3FFFFFFFCADLL * v68.i32[3];
  v63.i64[0] = 0x3FFFFFFFCADLL * v68.i32[0];
  v63.i64[1] = 0x3FFFFFFFCADLL * v68.i32[1];
  v69.i64[0] = 0x3FFFFFFFCADLL * v69.i32[2];
  v69.i64[1] = 0x3FFFFFFFCADLL * v69.i32[3];
  v68.i64[0] = 0x3FFFFFFFCADLL * v52.i64[0];
  v68.i64[1] = 0x3FFFFFFFCADLL * v52.i64[1];
  v82 = vshrn_high_n_s64(vshrn_n_s64(v68, 0xAuLL), v69, 0xAuLL);
  v83 = vshrn_high_n_s64(vshrn_n_s64(v63, 0xAuLL), v64, 0xAuLL);
  v84 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v105.i8, *v56.i8), 0xAuLL), vmull_high_s32(v105, v56), 0xAuLL);
  v85 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v104.i8, *v56.i8), 0xAuLL), vmull_high_s32(v104, v56), 0xAuLL);
  v56.i64[0] = 0x3FFFFFFFE78 * v104.i32[2];
  v56.i64[1] = 0x3FFFFFFFE78 * v104.i32[3];
  v64.i64[0] = 0x3FFFFFFFE78 * v104.i32[0];
  v64.i64[1] = 0x3FFFFFFFE78 * v104.i32[1];
  v63.i64[0] = 0x3FFFFFFFE78 * v105.i32[2];
  v63.i64[1] = 0x3FFFFFFFE78 * v105.i32[3];
  v62.i64[0] = 0x3FFFFFFFE78 * v105.i32[0];
  v62.i64[1] = 0x3FFFFFFFE78 * v105.i32[1];
  v86 = vshrn_high_n_s64(vshrn_n_s64(v62, 0xAuLL), v63, 0xAuLL);
  v87 = vshrn_high_n_s64(vshrn_n_s64(v64, 0xAuLL), v56, 0xAuLL);
  v56.i64[0] = 0x20000000200;
  v56.i64[1] = 0x20000000200;
  v88 = vaddq_s32(v101, v56);
  v89 = vaddq_s32(v100, v56);
  v90 = vaddq_s32(v89, v85);
  v91 = vaddq_s32(v88, v84);
  v92 = vaddq_s32(v89, v87);
  v93 = vaddq_s32(v88, v86);
  v94 = vaddq_s32(vsubq_s32(v100, v85), v56);
  v95 = vaddq_s32(vsubq_s32(v101, v84), v56);
  v96 = vaddq_s32(vsubq_s32(v100, v87), v56);
  v97 = vaddq_s32(vsubq_s32(v101, v86), v56);
  a2[6] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v96, v82), 0xAuLL), vaddq_s32(v97, v83), 0xAuLL);
  a2[7] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v90, v73), 0xAuLL), vsubq_s32(v91, v74), 0xAuLL);
  a2[4] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v94, v80), 0xAuLL), vaddq_s32(v95, v81), 0xAuLL);
  a2[5] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v92, v78), 0xAuLL), vsubq_s32(v93, v79), 0xAuLL);
  a2[2] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v92, v78), 0xAuLL), vaddq_s32(v93, v79), 0xAuLL);
  a2[3] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v94, v80), 0xAuLL), vsubq_s32(v95, v81), 0xAuLL);
  result = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v96, v82), 0xAuLL), vsubq_s32(v97, v83), 0xAuLL);
  *a2 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v90, v73), 0xAuLL), vaddq_s32(v91, v74), 0xAuLL);
  a2[1] = result;
  v99 = *MEMORY[0x277D85DE8];
  return result;
}

int16x8_t iRowCol4x4f1S16(__int16 *a1, int16x8_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = *MEMORY[0x277D85DE8];
  if ((a5 & 0x80000000) != 0)
  {
    v11 = 0;
    v12 = &v86;
LABEL_13:
    bzero(v12, (32 * v11 + 128));
    goto LABEL_14;
  }

  v10 = 0;
  v11 = ~a5;
  v12 = &v86;
  do
  {
    v13 = *a1;
    if (v10)
    {
      v14 = *(a7 + 4 * v13);
      v15 = a8;
    }

    else
    {
      if (a4)
      {
        v14 = v13 << 10;
      }

      else
      {
        v14 = *(a8 + 4 * v13) >> 1;
      }

      v15 = a7;
    }

    v16 = *(v15 + 4 * a1[3]);
    v17 = *(v15 + 4 * a1[2]);
    v18 = *(v15 + 4 * a1[1]) - v16;
    v19 = 2 * v16;
    v20 = (946 * v19) >> 10;
    v21 = (0x3FFFFFFFE78 * v19) >> 10;
    v22 = v18 + v20;
    v23 = v18 + v21;
    LODWORD(v20) = v18 - v20;
    v24 = v18 - v21;
    v25 = (1004 * v22) >> 10;
    v26 = (569 * v23) >> 10;
    v27 = (0x3FFFFFFFF38 * v20) >> 10;
    v28 = (0x3FFFFFFFCADLL * v24) >> 10;
    v29 = (946 * v17) >> 10;
    v30 = (0x3FFFFFFFE78 * v17) >> 10;
    v31 = v14 + v29;
    v32 = v14 - v30;
    v12[1].i32[2] = v14 - v30 + v28;
    v12[1].i32[3] = v14 + v29 - v25;
    LODWORD(v30) = v14 + v30;
    v33 = v14 - v29;
    v12[1].i32[0] = v33 + v27;
    v12[1].i32[1] = v30 - v26;
    v12->i32[2] = v30 + v26;
    v12->i32[3] = v33 - v27;
    v12->i32[0] = v31 + v25;
    v12->i32[1] = v32 - v28;
    v12 += 2;
    ++v10;
    a1 += 8;
  }

  while (a5 + 1 != v10);
  if (a5 <= 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  v34 = vsubq_s32(v88, v92);
  v35 = vsubq_s32(v89, v93);
  v36 = vaddq_s32(v93, v93);
  v37 = vaddq_s32(v92, v92);
  v38.i64[0] = v37.i32[0];
  v38.i64[1] = v37.i32[1];
  v39 = v38;
  v38.i64[0] = v37.i32[2];
  v38.i64[1] = v37.i32[3];
  v40 = v38;
  v38.i64[0] = v36.i32[0];
  v38.i64[1] = v36.i32[1];
  v41 = v38;
  v42 = vdupq_n_s32(0x3B2u);
  v38.i64[0] = v36.i32[2];
  v38.i64[1] = v36.i32[3];
  v43 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v37.i8, *v42.i8), 0xAuLL), vmull_high_s32(v37, v42), 0xAuLL);
  v44 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v36.i8, *v42.i8), 0xAuLL), vmull_high_s32(v36, v42), 0xAuLL);
  v45.i64[0] = 0x3FFFFFFFE78 * v38.i64[0];
  v45.i64[1] = 0x3FFFFFFFE78 * v38.i64[1];
  v41.i64[0] *= 0x3FFFFFFFE78;
  v41.i64[1] *= 0x3FFFFFFFE78;
  v40.i64[0] *= 0x3FFFFFFFE78;
  v40.i64[1] *= 0x3FFFFFFFE78;
  v39.i64[0] *= 0x3FFFFFFFE78;
  v39.i64[1] *= 0x3FFFFFFFE78;
  v46 = vshrn_high_n_s64(vshrn_n_s64(v39, 0xAuLL), v40, 0xAuLL);
  v47 = vshrn_high_n_s64(vshrn_n_s64(v41, 0xAuLL), v45, 0xAuLL);
  v48 = vaddq_s32(v35, v44);
  v49 = vaddq_s32(v34, v43);
  v50 = vaddq_s32(v35, v47);
  v51 = vaddq_s32(v34, v46);
  v52 = vsubq_s32(v35, v44);
  v53 = vsubq_s32(v34, v43);
  v54 = vsubq_s32(v35, v47);
  v55 = vsubq_s32(v34, v46);
  v56 = vdupq_n_s32(0x3ECu);
  v57 = vmull_high_s32(v48, v56);
  v58 = vmull_s32(*v48.i8, *v56.i8);
  v59 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v49.i8, *v56.i8), 0xAuLL), vmull_high_s32(v49, v56), 0xAuLL);
  v60 = vshrn_high_n_s64(vshrn_n_s64(v58, 0xAuLL), v57, 0xAuLL);
  v61 = vdupq_n_s32(0x239u);
  v62 = vmull_high_s32(v50, v61);
  v63 = vmull_s32(*v50.i8, *v61.i8);
  v64 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v51.i8, *v61.i8), 0xAuLL), vmull_high_s32(v51, v61), 0xAuLL);
  v65 = vshrn_high_n_s64(vshrn_n_s64(v63, 0xAuLL), v62, 0xAuLL);
  v48.i64[0] = 0x3FFFFFFFF38 * v52.i32[2];
  v48.i64[1] = 0x3FFFFFFFF38 * v52.i32[3];
  v47.i64[0] = 0x3FFFFFFFF38 * v52.i32[0];
  v47.i64[1] = 0x3FFFFFFFF38 * v52.i32[1];
  v49.i64[0] = 0x3FFFFFFFF38 * v53.i32[2];
  v49.i64[1] = 0x3FFFFFFFF38 * v53.i32[3];
  v62.i64[0] = 0x3FFFFFFFF38 * v53.i32[0];
  v62.i64[1] = 0x3FFFFFFFF38 * v53.i32[1];
  v66 = vshrn_high_n_s64(vshrn_n_s64(v62, 0xAuLL), v49, 0xAuLL);
  v67 = vshrn_high_n_s64(vshrn_n_s64(v47, 0xAuLL), v48, 0xAuLL);
  v38.i64[0] = v55.i32[0];
  v38.i64[1] = v55.i32[1];
  v50.i64[0] = 0x3FFFFFFFCADLL * v54.i32[2];
  v50.i64[1] = 0x3FFFFFFFCADLL * v54.i32[3];
  v49.i64[0] = 0x3FFFFFFFCADLL * v54.i32[0];
  v49.i64[1] = 0x3FFFFFFFCADLL * v54.i32[1];
  v55.i64[0] = 0x3FFFFFFFCADLL * v55.i32[2];
  v55.i64[1] = 0x3FFFFFFFCADLL * v55.i32[3];
  v54.i64[0] = 0x3FFFFFFFCADLL * v38.i64[0];
  v54.i64[1] = 0x3FFFFFFFCADLL * v38.i64[1];
  v68 = vshrn_high_n_s64(vshrn_n_s64(v54, 0xAuLL), v55, 0xAuLL);
  v69 = vshrn_high_n_s64(vshrn_n_s64(v49, 0xAuLL), v50, 0xAuLL);
  v70 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v91.i8, *v42.i8), 0xAuLL), vmull_high_s32(v91, v42), 0xAuLL);
  v71 = vshrn_high_n_s64(vshrn_n_s64(vmull_s32(*v90.i8, *v42.i8), 0xAuLL), vmull_high_s32(v90, v42), 0xAuLL);
  v42.i64[0] = 0x3FFFFFFFE78 * v90.i32[2];
  v42.i64[1] = 0x3FFFFFFFE78 * v90.i32[3];
  v50.i64[0] = 0x3FFFFFFFE78 * v90.i32[0];
  v50.i64[1] = 0x3FFFFFFFE78 * v90.i32[1];
  v49.i64[0] = 0x3FFFFFFFE78 * v91.i32[2];
  v49.i64[1] = 0x3FFFFFFFE78 * v91.i32[3];
  v48.i64[0] = 0x3FFFFFFFE78 * v91.i32[0];
  v48.i64[1] = 0x3FFFFFFFE78 * v91.i32[1];
  v72 = vshrn_high_n_s64(vshrn_n_s64(v48, 0xAuLL), v49, 0xAuLL);
  v73 = vshrn_high_n_s64(vshrn_n_s64(v50, 0xAuLL), v42, 0xAuLL);
  v42.i64[0] = 0x20000000200;
  v42.i64[1] = 0x20000000200;
  v74 = vaddq_s32(v87, v42);
  v75 = vaddq_s32(v86, v42);
  v76 = vaddq_s32(v75, v71);
  v77 = vaddq_s32(v74, v70);
  v78 = vaddq_s32(v75, v73);
  v79 = vaddq_s32(v74, v72);
  v80 = vaddq_s32(vsubq_s32(v86, v71), v42);
  v81 = vaddq_s32(vsubq_s32(v87, v70), v42);
  v82 = vaddq_s32(vsubq_s32(v86, v73), v42);
  v83 = vaddq_s32(vsubq_s32(v87, v72), v42);
  a2[6] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v82, v68), 0xAuLL), vaddq_s32(v83, v69), 0xAuLL);
  a2[7] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v76, v59), 0xAuLL), vsubq_s32(v77, v60), 0xAuLL);
  a2[4] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v80, v66), 0xAuLL), vaddq_s32(v81, v67), 0xAuLL);
  a2[5] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v78, v64), 0xAuLL), vsubq_s32(v79, v65), 0xAuLL);
  a2[2] = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v78, v64), 0xAuLL), vaddq_s32(v79, v65), 0xAuLL);
  a2[3] = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v80, v66), 0xAuLL), vsubq_s32(v81, v67), 0xAuLL);
  result = vshrn_high_n_s32(vshrn_n_s32(vsubq_s32(v82, v68), 0xAuLL), vsubq_s32(v83, v69), 0xAuLL);
  *a2 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v76, v59), 0xAuLL), vaddq_s32(v77, v60), 0xAuLL);
  a2[1] = result;
  v85 = *MEMORY[0x277D85DE8];
  return result;
}

int32x4_t iRowCol1x3fS16(__int16 *a1, int16x8_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  if (a4)
  {
    v7 = v6 << 10;
  }

  else
  {
    v7 = *(a6 + 4 * v6) >> 1;
  }

  v8 = *(a5 + 4 * a1[2]);
  v9 = *(a5 + 4 * a1[1]);
  v10 = (1004 * v9) >> 10;
  v11 = (569 * v9) >> 10;
  v12 = (0x3FFFFFFFF38 * v9) >> 10;
  v13 = (0x3FFFFFFFCADLL * v9) >> 10;
  v14 = (946 * v8) >> 10;
  v15 = (0x3FFFFFFFE78 * v8) >> 10;
  v16 = v7 + v14;
  v17 = v7 + v15;
  LODWORD(v14) = v7 - v14;
  v18 = v7 - v15;
  result.i32[0] = v14 + v12;
  result.i32[1] = v17 - v11;
  result.i32[2] = v18 + v13;
  result.i32[3] = v16 - v10;
  v20.i32[0] = v16 + v10;
  v20.i32[1] = v18 - v13;
  v20.i32[2] = v17 + v11;
  v20.i32[3] = v14 - v12;
  v21 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xAuLL), result, 0xAuLL);
  a2[6] = v21;
  a2[7] = v21;
  a2[4] = v21;
  a2[5] = v21;
  a2[2] = v21;
  a2[3] = v21;
  *a2 = v21;
  a2[1] = v21;
  return result;
}

unint64_t iColRow8x8f1S16(uint64_t a1, _WORD *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v81 = *MEMORY[0x277D85DE8];
  if ((a6 & 0x80000000) != 0)
  {
    v10 = 0;
    v12 = v80;
LABEL_13:
    v46 = v10 - 8;
    do
    {
      *v12 = 0;
      v12[16] = 0;
      v12[32] = 0;
      v12[48] = 0;
      v12[56] = 0;
      v12[40] = 0;
      v12[24] = 0;
      v12[8] = 0;
      ++v12;
    }

    while (!__CFADD__(v46++, 1));
    goto LABEL_16;
  }

  v8 = 0;
  v10 = a6 + 1;
  v11 = a6 + 1;
  v12 = v80;
  do
  {
    v13 = (a1 + 2 * v8);
    v14 = *v13;
    if (v8)
    {
      v15 = *(a7 + 4 * v14);
      v16 = a8;
    }

    else
    {
      if (a4)
      {
        v15 = v14 << 10;
      }

      else
      {
        v15 = *(a8 + 4 * v14) >> 1;
      }

      v16 = a7;
    }

    v17 = v13[40];
    v18 = v13[48];
    v19 = v13[56];
    v20 = *(v16 + 4 * v13[8]);
    v21 = *(v16 + 4 * v13[16]);
    v22 = *(v16 + 4 * v13[24]);
    v23 = *(v16 + 4 * v13[32]);
    v24 = *(v16 + 4 * v17);
    LODWORD(v17) = *(v16 + 4 * v18);
    v25 = *(v16 + 4 * v19);
    v26 = v20 + v24 - (v22 + v25);
    LODWORD(v18) = 2 * (v24 - v25);
    v27 = v22 - v24;
    v28 = (2896 * v25) >> 10;
    v29 = 2 * v27 - v28;
    v30 = (946 * (v28 + 2 * v27)) >> 10;
    v31 = (0x3FFFFFFFE78 * v29) >> 10;
    v32 = (724 * v18) >> 10;
    LODWORD(v18) = v26 - v32;
    v33 = v26 + v32;
    LODWORD(v32) = v33 + v30;
    LODWORD(v19) = v18 + v31;
    LODWORD(v30) = v33 - v30;
    v34 = v18 - v31;
    v35 = (1004 * v32) >> 10;
    v36 = (569 * v19) >> 10;
    v37 = v21 - v17;
    v38 = (1448 * v17) >> 10;
    LODWORD(v18) = v37 - v38;
    v39 = (946 * (v37 + v38)) >> 10;
    v40 = (0x3FFFFFFFE78 * v18) >> 10;
    v41 = (724 * v23) >> 10;
    LODWORD(v18) = v15 - v41;
    v42 = v15 + v41;
    LODWORD(v41) = v42 + v39;
    *v12 = v42 + v39 + v35;
    v12[16] = v18 + v40 + v36;
    v43 = (0x3FFFFFFFF38 * v30) >> 10;
    v44 = (0x3FFFFFFFCADLL * v34) >> 10;
    v45 = v42 - v39;
    v12[32] = v45 + v43;
    v12[48] = v18 - v40 + v44;
    v12[56] = v41 - v35;
    v12[40] = v18 + v40 - v36;
    v12[24] = v45 - v43;
    v12[8] = v18 - v40 - v44;
    ++v12;
    ++v8;
  }

  while (v11 != v8);
  if (a6 <= 6)
  {
    goto LABEL_13;
  }

LABEL_16:
  v48 = 0;
  do
  {
    v49 = *&v80[v48];
    v50 = *&v80[v48 + 12];
    v51 = *&v80[v48 + 20];
    v53 = *&v80[v48 + 24];
    v52 = *&v80[v48 + 28];
    v54 = *&v80[v48 + 4] + v51 - (v50 + v52);
    v55 = 2 * (v51 - v52);
    v56 = v50 - v51;
    v57 = (2896 * v52) >> 10;
    v58 = 2 * v56 - v57;
    v59 = (946 * (v57 + 2 * v56)) >> 10;
    v60 = (0x3FFFFFFFE78 * v58) >> 10;
    v61 = (724 * v55) >> 10;
    v62 = v54 - v61;
    v63 = v54 + v61;
    v64 = v63 - v59;
    result = (1004 * (v63 + v59)) >> 10;
    v66 = (569 * (v62 + v60)) >> 10;
    v67 = (0x3FFFFFFFF38 * v64) >> 10;
    v68 = (0x3FFFFFFFCADLL * (v62 - v60)) >> 10;
    v69 = *&v80[v48 + 8] - v53;
    v70 = (1448 * v53) >> 10;
    v71 = v69 - v70;
    v72 = (946 * (v69 + v70)) >> 10;
    v73 = (0x3FFFFFFFE78 * v71) >> 10;
    v74 = (724 * *&v80[v48 + 16]) >> 10;
    v75 = v49 - v74;
    v76 = v49 + v74;
    LODWORD(v74) = v76 + v72 + 512;
    v77 = v75 + v73 + 512;
    v78 = v76 - v72 + 512;
    LODWORD(v72) = v75 - v73 + 512;
    *a2 = (v74 + result) >> 10;
    a2[2] = (v77 + v66) >> 10;
    a2[4] = (v78 + v67) >> 10;
    a2[6] = (v72 + v68) >> 10;
    a2[7] = (v74 - result) >> 10;
    a2[5] = (v77 - v66) >> 10;
    a2[3] = (v78 - v67) >> 10;
    a2[1] = (v72 - v68) >> 10;
    a2 += 8;
    v48 += 32;
  }

  while (v48 != 256);
  v79 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t iColRow8x4fS16(uint64_t a1, _WORD *a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v71 = *MEMORY[0x277D85DE8];
  if ((a6 & 0x80000000) != 0)
  {
    v10 = 0;
    v12 = v70;
LABEL_13:
    v46 = v10 - 8;
    do
    {
      *v12 = 0;
      v12[16] = 0;
      v12[32] = 0;
      v12[48] = 0;
      v12[56] = 0;
      v12[40] = 0;
      v12[24] = 0;
      v12[8] = 0;
      ++v12;
    }

    while (!__CFADD__(v46++, 1));
    goto LABEL_16;
  }

  v8 = 0;
  v10 = a6 + 1;
  v11 = a6 + 1;
  v12 = v70;
  do
  {
    v13 = (a1 + 2 * v8);
    v14 = *v13;
    if (v8)
    {
      v15 = *(a7 + 4 * v14);
      v16 = a8;
    }

    else
    {
      if (a4)
      {
        v15 = v14 << 10;
      }

      else
      {
        v15 = *(a8 + 4 * v14) >> 1;
      }

      v16 = a7;
    }

    v17 = v13[40];
    v18 = v13[48];
    v19 = v13[56];
    v20 = *(v16 + 4 * v13[8]);
    v21 = *(v16 + 4 * v13[16]);
    v22 = *(v16 + 4 * v13[24]);
    v23 = *(v16 + 4 * v13[32]);
    v24 = *(v16 + 4 * v19);
    LODWORD(v18) = *(v16 + 4 * v18);
    v25 = *(v16 + 4 * v17);
    v26 = v20 - (v22 + v24) + v25;
    LODWORD(v17) = 2 * (v25 - v24);
    v27 = v22 - v25;
    v28 = (2896 * v24) >> 10;
    v29 = 2 * v27 - v28;
    v30 = (946 * (v28 + 2 * v27)) >> 10;
    v31 = (0x3FFFFFFFE78 * v29) >> 10;
    v32 = (724 * v17) >> 10;
    LODWORD(v17) = v26 - v32;
    v33 = v26 + v32;
    LODWORD(v32) = v33 + v30;
    LODWORD(v19) = v17 + v31;
    LODWORD(v30) = v33 - v30;
    v34 = v17 - v31;
    v35 = (1004 * v32) >> 10;
    v36 = (569 * v19) >> 10;
    v37 = v21 - v18;
    v38 = (1448 * v18) >> 10;
    LODWORD(v18) = v37 - v38;
    v39 = (946 * (v37 + v38)) >> 10;
    v40 = (0x3FFFFFFFE78 * v18) >> 10;
    v41 = (724 * v23) >> 10;
    LODWORD(v18) = v15 - v41;
    v42 = v15 + v41;
    LODWORD(v41) = v42 + v39;
    *v12 = v42 + v39 + v35;
    v12[16] = v18 + v40 + v36;
    v43 = (0x3FFFFFFFF38 * v30) >> 10;
    v44 = (0x3FFFFFFFCADLL * v34) >> 10;
    v45 = v42 - v39;
    v12[32] = v45 + v43;
    v12[48] = v18 - v40 + v44;
    v12[56] = v41 - v35;
    v12[40] = v18 + v40 - v36;
    v12[24] = v45 - v43;
    v12[8] = v18 - v40 - v44;
    ++v12;
    ++v8;
  }

  while (v11 != v8);
  if (a6 <= 6)
  {
    goto LABEL_13;
  }

LABEL_16:
  v48 = 0;
  do
  {
    v49 = *&v70[v48];
    v50 = *&v70[v48 + 12];
    v51 = *&v70[v48 + 8];
    v52 = *&v70[v48 + 4] - v50;
    v53 = 2 * v50;
    v54 = (946 * v53) >> 10;
    v55 = (0x3FFFFFFFE78 * v53) >> 10;
    v56 = v52 + v54;
    v57 = v52 + v55;
    LODWORD(v54) = v52 - v54;
    v58 = v52 - v55;
    v59 = (1004 * v56) >> 10;
    v60 = (569 * v57) >> 10;
    v61 = (0x3FFFFFFFF38 * v54) >> 10;
    v62 = (0x3FFFFFFFCADLL * v58) >> 10;
    v63 = (946 * v51) >> 10;
    v64 = (0x3FFFFFFFE78 * v51) >> 10;
    v65 = v49 + 512 + v63;
    v66 = v49 + 512 + v64;
    LODWORD(v63) = v49 - v63 + 512;
    v67 = v49 - v64 + 512;
    *a2 = (v65 + v59) >> 10;
    a2[2] = (v66 + v60) >> 10;
    a2[4] = (v63 + v61) >> 10;
    a2[6] = (v67 + v62) >> 10;
    a2[7] = (v65 - v59) >> 10;
    result = (v66 - v60) >> 10;
    a2[5] = result;
    a2[3] = (v63 - v61) >> 10;
    a2[1] = (v67 - v62) >> 10;
    a2 += 8;
    v48 += 32;
  }

  while (v48 != 256);
  v69 = *MEMORY[0x277D85DE8];
  return result;
}

double iDct8x8fS16(uint64_t a1, _WORD *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 >= a6)
  {
    *&result = iRowCol8x8f1S16(a1, a2, a3, a4, a5, a6, a7, a8).u64[0];
  }

  else
  {
    iColRow8x8f1S16(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

_WORD *IZigZagBlock8x8S16(_WORD *result, _WORD *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[32] = result[10];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[4] = result[14];
  a2[5] = result[15];
  a2[12] = result[16];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[33] = result[19];
  a2[40] = result[20];
  a2[48] = result[21];
  a2[41] = result[22];
  a2[34] = result[23];
  a2[27] = result[24];
  a2[20] = result[25];
  a2[13] = result[26];
  a2[6] = result[27];
  a2[7] = result[28];
  a2[14] = result[29];
  a2[21] = result[30];
  a2[28] = result[31];
  a2[35] = result[32];
  a2[42] = result[33];
  a2[49] = result[34];
  a2[56] = result[35];
  a2[57] = result[36];
  a2[50] = result[37];
  a2[43] = result[38];
  a2[36] = result[39];
  a2[29] = result[40];
  a2[22] = result[41];
  a2[15] = result[42];
  a2[23] = result[43];
  a2[30] = result[44];
  a2[37] = result[45];
  a2[44] = result[46];
  a2[51] = result[47];
  a2[58] = result[48];
  a2[59] = result[49];
  a2[52] = result[50];
  a2[45] = result[51];
  a2[38] = result[52];
  a2[31] = result[53];
  a2[39] = result[54];
  a2[46] = result[55];
  a2[53] = result[56];
  a2[60] = result[57];
  a2[61] = result[58];
  a2[54] = result[59];
  a2[47] = result[60];
  a2[55] = result[61];
  a2[62] = result[62];
  a2[63] = result[63];
  return result;
}

_WORD *IZigZagBlock8x4S16(_WORD *result, _WORD *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[32] = result[10];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[33] = result[19];
  a2[40] = result[20];
  a2[48] = result[21];
  a2[41] = result[22];
  a2[34] = result[23];
  a2[27] = result[24];
  a2[35] = result[32];
  a2[42] = result[33];
  a2[49] = result[34];
  a2[56] = result[35];
  a2[57] = result[36];
  a2[50] = result[37];
  a2[43] = result[38];
  a2[51] = result[47];
  a2[58] = result[48];
  a2[59] = result[49];
  return result;
}

_WORD *IZigZagBlock4x8S16(_WORD *result, _WORD *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[4] = result[14];
  a2[5] = result[15];
  a2[12] = result[16];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[27] = result[24];
  a2[20] = result[25];
  a2[13] = result[26];
  a2[6] = result[27];
  a2[7] = result[28];
  a2[14] = result[29];
  a2[21] = result[30];
  a2[28] = result[31];
  a2[29] = result[40];
  a2[22] = result[41];
  a2[15] = result[42];
  a2[23] = result[43];
  a2[30] = result[44];
  a2[31] = result[53];
  return result;
}

_WORD *IZigZagBlock4x4S16(_WORD *result, _WORD *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[8] = result[2];
  a2[16] = result[3];
  a2[9] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[10] = result[7];
  a2[17] = result[8];
  a2[24] = result[9];
  a2[25] = result[11];
  a2[18] = result[12];
  a2[11] = result[13];
  a2[19] = result[17];
  a2[26] = result[18];
  a2[27] = result[24];
  return result;
}

BOOL COLOR_Init(void ***a1, int a2)
{
  if (*a1)
  {
    return 0;
  }

  v5 = MEM_NewClear(144);
  *a1 = v5;
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  if (a2 == 1)
  {
    if (*v5)
    {
      return 0;
    }

    **a1 = MEM_New(2048);
    v18 = **a1;
    result = v18 == 0;
    if (!v18)
    {
      return 1;
    }

    v19 = 0;
    (*a1)[1] = v18;
    (*a1)[2] = **a1 + 512;
    (*a1)[3] = **a1 + 1024;
    (*a1)[4] = **a1 + 1536;
    v6 = *a1;
    v20 = (*a1)[1];
    v21 = (*a1)[2];
    v22 = (*a1)[3];
    v23 = (*a1)[4];
    v24 = -128;
    do
    {
      v25 = v24;
      v26 = v24 * 1.40199995;
      if (v26 < 0.0)
      {
        v27 = -0.5;
      }

      else
      {
        v27 = 0.5;
      }

      v28 = v27 + v26;
      v29 = v25 * 0.344000012;
      v30 = v28;
      if (v29 < 0.0)
      {
        v31 = -0.5;
      }

      else
      {
        v31 = 0.5;
      }

      v32 = v31 + v29;
      v33 = v32;
      v34 = v25 * 0.713999987;
      if (v34 < 0.0)
      {
        v35 = -0.5;
      }

      else
      {
        v35 = 0.5;
      }

      *&v20[v19] = v30;
      v36 = v35 + v34;
      v37 = v36;
      v38 = v25 * 1.77199996;
      if (v38 < 0.0)
      {
        v39 = -0.5;
      }

      else
      {
        v39 = 0.5;
      }

      *&v21[v19] = v33;
      v40 = v39 + v38;
      *&v22[v19] = v37;
      *&v23[v19] = v40;
      ++v24;
      v19 += 2;
    }

    while (v19 != 512);
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    return result;
  }

  if (!v6[5])
  {
    (*a1)[5] = MEM_New(768);
    v7 = (*a1)[5];
    result = v7 == 0;
    if (v7)
    {
      v8 = 0;
      (*a1)[6] = v7;
      (*a1)[7] = (*a1)[5] + 256;
      (*a1)[8] = (*a1)[5] + 512;
      do
      {
        v9 = v8;
        *((*a1)[6] + v8) = (v9 * 0.299);
        *((*a1)[7] + v8) = (v9 * 0.587);
        *((*a1)[8] + v8++) = (v9 * 0.114);
      }

      while (v8 != 256);
      v6 = *a1;
      goto LABEL_14;
    }

    return 1;
  }

LABEL_14:
  if (v6[9])
  {
    return result;
  }

  (*a1)[9] = MEM_New(10240);
  v10 = (*a1)[9];
  result = v10 == 0;
  if (!v10)
  {
    return 1;
  }

  v11 = 0;
  (*a1)[10] = v10;
  (*a1)[11] = (*a1)[9] + 2048;
  (*a1)[12] = (*a1)[9] + 4096;
  (*a1)[13] = (*a1)[9] + 6144;
  (*a1)[14] = (*a1)[9] + 0x2000;
  v12 = (*a1)[10];
  v13 = (*a1)[11];
  v14 = (*a1)[12];
  v15 = (*a1)[13];
  v16 = (*a1)[14];
  do
  {
    v17 = v11;
    v12[v11] = (v17 * 0.1687);
    v13[v11] = (v17 * 0.3313);
    v14[v11] = vcvts_n_f32_u32(v11, 1uLL);
    v15[v11] = (v17 * 0.4187);
    v16[v11++] = (v17 * 0.0813);
  }

  while (v11 != 1024);
  return result;
}

uint64_t COLOR_Kill(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*v2)
    {
      MEM_Dispose(*v2);
      **a1 = 0;
      v2 = *a1;
    }

    if (v2[5])
    {
      MEM_Dispose(v2[5]);
      (*a1)[5] = 0;
      v2 = *a1;
    }

    if (v2[9])
    {
      MEM_Dispose(v2[9]);
      (*a1)[9] = 0;
      v2 = *a1;
    }

    MEM_Dispose(v2);
    *a1 = 0;
  }

  return 0;
}

uint64_t H263DMPR_Decompress(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 296230);
  v150 = *(v1 + 296222);
  v3 = *(v1 + 296214);
  v4 = *(v1 + 296190);
  v5 = *(v1 + 296174);
  v7 = *v5;
  v6 = *(v5 + 4);
  v8 = (*v5 + 32);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = v6 + 32;
  *(v9 + 24) = v8;
  *(v9 + 28) = v6 + 32;
  *(v10 + 24) = v8;
  *(v10 + 28) = v6 + 32;
  *(v4 + 70) = *(v4 + 68) != 0;
  *(v4 + 68) = *(a1 + 12);
  v12 = *(a1 + 52);
  v13 = *(v4 + 8);
  if (v12 != v13)
  {
    *(v4 + 4) = v13;
    *(v4 + 8) = v12;
    *(v1 + 24) = v10;
    *(v1 + 32) = v9;
  }

  v14 = *(v2 + 12) + *(v2 + 8);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 12) = v14;
  *(v2 + 24) = *a1;
  v15 = *(a1 + 88);
  if (v15)
  {
    v16 = (8 * v15 + 24) & 0xFFFFFFE0;
  }

  else
  {
    v16 = 0x7FFFFFFF;
  }

  *(v2 + 16) = 0;
  *(v2 + 20) = v16;
  if (*(v5 + 20) * *(v5 + 16))
  {
    v17 = 136;
    do
    {
      *(*(v1 + 296206) + v17) = 0;
      v18 = v17 - 135;
      ++v17;
    }

    while (v18 < (*(v5 + 20) * *(v5 + 16)));
  }

  H263PICT_Setup(v3, *(v5 + 40));
  v19 = *(v4 + 8);
  result = H263PICT_decPictureLayer(v3, v2);
  if (!result)
  {
    v21 = *(v3 + 16);
    if (v21 == 7)
    {
      if (*(v3 + 44) != *(v5 + 40))
      {
        return 0;
      }
    }

    else if (*(v5 + 40) != v21)
    {
      return 0;
    }

    if (*(v3 + 19))
    {
      SD_Reset(v2, v1 + 296154);
    }

    v149 = v3;
    if (*(v3 + 17) == 1 && (*(v3 + 18) || *(v3 + 20)))
    {
      v22 = 0;
      v23 = (v8 >> 1);
      v24 = *(v1 + 24);
      v25 = (16 * v8);
      LODWORD(v26) = v7 + 15;
      v27 = 16;
      if (v7 + 15 <= 16)
      {
        v26 = 16;
      }

      else
      {
        v26 = v26;
      }

      do
      {
        v28 = v26 - 15;
        v29 = v25 + 16;
        v30 = v27;
        if (v7 >= 1)
        {
          do
          {
            *(*v24 + v30++) = *(*v24 + v29++);
            --v28;
          }

          while (v28);
        }

        ++v22;
        v27 += v8;
      }

      while (v22 != 16);
      v31 = 0;
      v155 = (8 * v23);
      v32 = 8;
      do
      {
        if (v23 >= 17)
        {
          v33 = (v23 - 8) - 8;
          v34 = v155 + 8;
          v35 = v32;
          do
          {
            *(v24[1] + v35) = *(v24[1] + v34);
            *(v24[2] + v35++) = *(v24[2] + v34++);
            --v33;
          }

          while (v33);
        }

        ++v31;
        v32 += v23;
      }

      while (v31 != 8);
      v36 = (v6 + 15) * v8;
      v37 = v6 + 16;
      v38 = v8 * v37 + 16;
      v39 = v26 - 15;
      v40 = v37;
      do
      {
        if (v7 >= 1)
        {
          v41 = v39;
          v42 = v36 + 16;
          v43 = v38;
          do
          {
            *(*v24 + v43++) = *(*v24 + v42++);
            --v41;
          }

          while (v41);
        }

        ++v40;
        v38 += v8;
      }

      while (v40 < v11);
      v153 = ((v11 >> 1) - 9) * v23;
      v44 = v11 >> 1;
      v45 = v44 - 8;
      v46 = (v44 - 8) * v23 + 8;
      do
      {
        v47 = (v23 - 8) - 8;
        v48 = v153 + 8;
        v49 = v46;
        if (v23 >= 17)
        {
          do
          {
            *(v24[1] + v49) = *(v24[1] + v48);
            *(v24[2] + v49++) = *(v24[2] + v48++);
            --v47;
          }

          while (v47);
        }

        ++v45;
        v46 += v23;
      }

      while (v45 != v44);
      v50 = 0;
      if (v37 <= 17)
      {
        v51 = 17;
      }

      else
      {
        v51 = v37;
      }

      v52 = v51 - 16;
      do
      {
        v53 = v52;
        v54 = 16 * v8;
        if (v6 >= 1)
        {
          do
          {
            *(*v24 + v54 + v50) = *(*v24 + v54 + 16);
            v54 += v8;
            --v53;
          }

          while (v53);
        }

        ++v50;
      }

      while (v50 != 16);
      v55 = 0;
      v151 = (v44 - 8);
      do
      {
        if (v44 >= 17)
        {
          v56 = v151 - 8;
          v57 = 8 * v23;
          do
          {
            *(v24[1] + v57 + v55) = *(v24[1] + v57 + 8);
            *(v24[2] + v57 + v55) = *(v24[2] + v57 + 8);
            v57 += v23;
            --v56;
          }

          while (v56);
        }

        ++v55;
      }

      while (v55 != 8);
      v58 = v7 + 16;
      v59 = 16 * v8 + v58;
      do
      {
        if (v6 >= 1)
        {
          v60 = 17 * v8 - 17;
          v61 = v52;
          v62 = v59;
          do
          {
            *(*v24 + v62) = *(*v24 + v60);
            v62 += v8;
            v60 += v8;
            --v61;
          }

          while (v61);
        }

        ++v58;
        ++v59;
      }

      while (v58 < v8);
      v63 = v23 - 8;
      v64 = -8;
      do
      {
        v65 = v151 - 8;
        v66 = 9 * v23;
        if (v44 >= 17)
        {
          do
          {
            *(v24[1] + v66 + v64) = *(v24[1] + v66 - 9);
            *(v24[2] + v66 + v64) = *(v24[2] + v66 - 9);
            v66 += v23;
            --v65;
          }

          while (v65);
        }

        ++v63;
        ++v64;
      }

      while (v63 != v23);
      v67 = 0;
      v68 = 0;
      LODWORD(v69) = v8 * (v6 + 31);
      v70 = -32 - v7;
      v71 = v7 + 31;
      v72 = v11 * v8 - 1;
      do
      {
        v73 = v69;
        ++v68;
        v74 = 16;
        v75 = v67;
        v76 = v72;
        v77 = v71;
        v69 = v69;
        do
        {
          *(*v24 + v75) = *(*v24 + v25 + 16);
          *(*v24 + v77) = *(*v24 + 17 * v8 - 17);
          *(*v24 + v69) = *(*v24 + v36 + 16);
          *(*v24 + v76) = *(*v24 + v37 * v8 - 17);
          ++v69;
          --v77;
          --v76;
          ++v75;
          --v74;
        }

        while (v74);
        LODWORD(v69) = v73 + v70;
        v71 += v8;
        v72 += v70;
        v67 += v8;
      }

      while (v68 != 16);
      v78 = 0;
      v79 = 0;
      v80 = v155 + 8;
      v81 = 9 * v23 - 9;
      v82 = v153 + 8;
      v83 = v151 * v23 - 9;
      v84 = v23 - 1;
      v85 = v44 * v23 - 1;
      v86 = (v44 - 1) * v23;
      do
      {
        ++v79;
        v87 = 8;
        v88 = v78;
        v89 = v86;
        v90 = v85;
        v91 = v84;
        do
        {
          *(v24[1] + v88) = *(v24[1] + v80);
          *(v24[1] + v91) = *(v24[1] + v81);
          *(v24[1] + v89) = *(v24[1] + v82);
          *(v24[1] + v90) = *(v24[1] + v83);
          *(v24[2] + v88) = *(v24[2] + v80);
          *(v24[2] + v91) = *(v24[2] + v81);
          *(v24[2] + v89) = *(v24[2] + v82);
          *(v24[2] + v90) = *(v24[2] + v83);
          --v91;
          --v90;
          ++v89;
          ++v88;
          --v87;
        }

        while (v87);
        v84 += v23;
        v85 -= v23;
        v86 -= v23;
        v78 += v23;
      }

      while (v79 != 8);
    }

    v92 = *(*(v1 + 296214) + 27);
    v156 = (v1 + 296182);
    v93 = *(v1 + 296182);
    *(v93 + 152) = v92;
    *(v93 + 153) = v92;
    **(v1 + 296190) = (*v3 - *(v4 + 8));
    v94 = *(v5 + 16);
    *(v4 + 20) = 0;
    if ((-1 << v94) == -1)
    {
      return 0;
    }

    v95 = 0;
    v96 = 0;
    v97 = v94 - 1;
    v98 = ~(-1 << v94);
    v99 = v4 + 72;
    v152 = v2 + 32;
    v154 = v1 + 296198;
LABEL_72:
    if (*(v2 + 16) >= *(v2 + 20))
    {
      return 0;
    }

    if (v95)
    {
      v100 = H263DMPR_GOBHeader(v150, v4, *v156, *(v3 + 25), v2, v5);
      v101 = v100;
      *(v150 + 4) = v100;
      v3 = v149;
      if (v100 != 1)
      {
        goto LABEL_78;
      }

      if (*(v149 + 19))
      {
        SD_Reset(v2, v1 + 296154);
      }
    }

    v101 = *(v150 + 4);
LABEL_78:
    if (v101 == 1)
    {
      v102 = *v156;
      v103 = *(v4 + 20);
      if (*(*v156 + 153) - 32 < 0xFFFFFFE1)
      {
        v148 = 0;
LABEL_81:
        dealWithMBOnError(v102, *(*v154 + 32832), *(v1 + 32), *(v1 + 24), v103, *(v5 + 20), *v1 + 32, *(v3 + 17), v99 + 88 * v103, v99 + 44 * ((2 * v103) | 1));
        v104 = v148;
        goto LABEL_91;
      }
    }

    else
    {
      v103 = *(v4 + 20);
    }

    if (v103 < *(v5 + 16) && ((v98 >> v103) & 1) != 0)
    {
      v105 = 2 * v103;
      v106 = (2 * v103) | 1;
      if (*(v3 + 20) && *(v3 + 17))
      {
        result = H263DMPR_GOB_OBMC1(v1, v150, v5, *(*v154 + 32832), v99 + 44 * v105, v99 + 44 * v106, 0);
        if (!result)
        {
          result = H263DMPR_GOB_OBMC2(v1, v5, *(*v154 + 32832), *(v4 + 20));
          if (!result)
          {
            v98 &= ~(1 << *(v4 + 20));
            goto LABEL_142;
          }
        }

        goto LABEL_10;
      }

      v133 = H263DMPR_GOB(v1, v150, v5, *(*v154 + 32832), v99 + 44 * v105, v99 + 44 * v106, 0);
      v103 = *(v4 + 20);
      v98 &= ~(1 << v103);
      if (!v133)
      {
        goto LABEL_142;
      }

      v134 = v133;
      if (v133 != 12)
      {
        v102 = *v156;
        v148 = v134 == -1;
        goto LABEL_81;
      }

      v104 = 0;
    }

    else
    {
      v104 = 0;
      *(v4 + 20) = 0;
    }

LABEL_91:
    v107 = *(v2 + 20);
    if (v107 == 0x7FFFFFFF || (v109 = *(v2 + 16), v109 >= v107) || !v98)
    {
      for (; v98; v98 &= ~(1 << *(v4 + 20)))
      {
        while (v96 <= v97 && ((v98 >> v96) & 1) == 0)
        {
          ++v96;
        }

        v108 = v96;
        if (v96 <= v97)
        {
          v108 = v96;
          do
          {
            if ((v98 >> v108))
            {
              break;
            }

            ++v108;
          }

          while (v108 <= v97);
        }

        *(v4 + 20) = v108;
        dealWithMBOnError(*v156, *(*v154 + 32832), *(v1 + 32), *(v1 + 24), v108, *(v5 + 20), *v1 + 32, *(v3 + 17), v99 + 88 * v108, v99 + 44 * ((2 * v108) | 1));
      }

      goto LABEL_142;
    }

    v110 = *(v2 + 4);
    while (1)
    {
      v111 = v109 + 8;
      *(v2 + 16) = v109 + 8;
      if (v110 <= 7)
      {
        break;
      }

      v112 = v110 - 8;
      v113 = *(v2 + 64);
      v114 = *v2;
      v115 = (*v2 >> (v110 - 8)) & v113;
      v116 = v109 + 16;
      *(v2 + 16) = v109 + 16;
      if (v110 - 8 >= 8)
      {
        goto LABEL_114;
      }

      v117 = 16 - v110;
      v118 = v112 | 0x18;
      *(v2 + 4) = v118;
      v119 = (v114 << (16 - v110)) & v113;
      if (v116 <= v107)
      {
        v123 = *(v2 + 24);
        v124 = *(v2 + 8);
        *(v2 + 8) = v124 + 1;
        v114 = bswap32(*(v123 + 4 * v124));
        *v2 = v114;
        if (*(v152 + 4 * v117) & (v114 >> v118) | v119)
        {
LABEL_115:
          v110 = v118 + 8;
          *(v2 + 4) = v118 + 8;
          *(v2 + 16) = v111;
          if (v118 >= 0x19)
          {
            v110 = v118 - 24;
            goto LABEL_131;
          }

          goto LABEL_133;
        }
      }

      else
      {
        v114 = 0;
        ++*(v2 + 8);
        *v2 = 0;
        if (v119)
        {
          goto LABEL_115;
        }
      }

LABEL_118:
      if (v115)
      {
        v125 = 1;
        do
        {
          v126 = v125++;
        }

        while ((v115 << v126));
        v127 = 16 - v126;
        v110 = v118 + v127;
        *(v2 + 4) = v118 + v127;
        v111 = v116 - v127;
        *(v2 + 16) = v116 - v127;
        if (v118 + v127 >= 0x21)
        {
          v110 -= 32;
          goto LABEL_131;
        }
      }

      else
      {
        *(v2 + 16) = v109 + 17;
        if (v118)
        {
          v128 = v118 - 1;
          *(v2 + 4) = v118 - 1;
          if ((v114 >> (v118 - 1)))
          {
            goto LABEL_157;
          }
        }

        else
        {
          *(v2 + 4) = 31;
          if (v109 + 17 > v107)
          {
            *v2 = 0;
            ++*(v2 + 8);
            v111 = v109 + 1;
            *(v2 + 16) = v109 + 1;
            v128 = 31;
LABEL_130:
            v110 = v128 - 16;
LABEL_131:
            v131 = *(v2 + 8);
            *(v2 + 4) = v110;
            *(v2 + 8) = v131 - 1;
            if (v107 >= 32 * (v131 - 1))
            {
              *v2 = bswap32(*(*(v2 + 24) + 4 * (v131 - 2)));
            }

            goto LABEL_133;
          }

          v129 = *(v2 + 24);
          v130 = *(v2 + 8);
          *(v2 + 8) = v130 + 1;
          v114 = bswap32(*(v129 + 4 * v130));
          *v2 = v114;
          v128 = 31;
          if ((v114 & 0x80000000) != 0)
          {
LABEL_157:
            v135 = v128 + 1;
            *(v2 + 4) = v128 + 1;
            v136 = v109 + 16;
            *(v2 + 16) = v109 + 16;
            if (v128 >= 0x20)
            {
              v135 = v128 - 31;
              v137 = *(v2 + 8);
              *(v2 + 4) = v135;
              *(v2 + 8) = v137 - 1;
              if (v107 >= 32 * (v137 - 1))
              {
                v114 = bswap32(*(*(v2 + 24) + 4 * (v137 - 2)));
                *v2 = v114;
              }
            }

            if (v104)
            {
              do
              {
LABEL_134:
                while (v96 <= v97 && ((v98 >> v96) & 1) == 0)
                {
                  ++v96;
                }

                v132 = v96;
                if (v96 <= v97)
                {
                  v132 = v96;
                  do
                  {
                    if ((v98 >> v132))
                    {
                      break;
                    }

                    ++v132;
                  }

                  while (v132 <= v97);
                }

                *(v4 + 20) = v132;
                dealWithMBOnError(*v156, *(*v154 + 32832), *(v1 + 32), *(v1 + 24), v132, *(v5 + 20), *v1 + 32, *(v3 + 17), v99 + 88 * v132, v99 + 44 * ((2 * v132) | 1));
                v98 &= ~(1 << *(v4 + 20));
              }

              while (v98);
              goto LABEL_142;
            }

            v138 = v109 + 38;
            *(v2 + 16) = v109 + 38;
            v139 = v135 - 22;
            if (v135 < 0x16)
            {
              v141 = 22 - v135;
              v139 = v135 + 10;
              *(v2 + 4) = v135 + 10;
              v140 = (v114 << (22 - v135)) & *(v2 + 120);
              if (v138 <= v107)
              {
                v142 = *(v2 + 24);
                v143 = *(v2 + 8);
                *(v2 + 8) = v143 + 1;
                LODWORD(v142) = bswap32(*(v142 + 4 * v143));
                *v2 = v142;
                v140 |= *(v152 + 4 * v141) & (v142 >> v139);
              }

              else
              {
                ++*(v2 + 8);
                *v2 = 0;
              }
            }

            else
            {
              *(v2 + 4) = v139;
              v140 = (v114 >> v139) & *(v2 + 120);
            }

            if ((v140 & 0x1F) != 0)
            {
              *(v2 + 4) = v139 + 22;
              *(v2 + 16) = v136;
              if (v139 >= 0xB)
              {
                v144 = v139 - 10;
                v145 = *(v2 + 8);
                *(v2 + 4) = v144;
                *(v2 + 8) = v145 - 1;
                if (v107 >= 32 * (v145 - 1))
                {
                  *v2 = bswap32(*(*(v2 + 24) + 4 * (v145 - 2)));
                }
              }
            }

            else
            {
              v146 = v98;
              do
              {
                while (v96 <= v97 && ((v146 >> v96) & 1) == 0)
                {
                  ++v96;
                }

                v147 = v96;
                if (v96 <= v97)
                {
                  v147 = v96;
                  do
                  {
                    if ((v146 >> v147))
                    {
                      break;
                    }

                    ++v147;
                  }

                  while (v147 <= v97);
                }

                *(v4 + 20) = v147;
                dealWithMBOnError(*v156, *(*v154 + 32832), *(v1 + 32), *(v1 + 24), v147, *(v5 + 20), *v1 + 32, *(v149 + 17), v99 + 88 * v147, v99 + 44 * ((2 * v147) | 1));
                v98 = 0;
                v146 &= ~(1 << *(v4 + 20));
              }

              while (v146);
            }

LABEL_142:
            if (v96 <= v97)
            {
              v3 = v149;
              do
              {
                if ((v98 >> v96))
                {
                  break;
                }

                ++v96;
              }

              while (v96 <= v97);
            }

            else
            {
              v3 = v149;
            }

            v95 = v96;
            if (v96 <= v97)
            {
              v95 = v96;
              do
              {
                if ((v98 >> v95))
                {
                  break;
                }

                ++v95;
              }

              while (v95 <= v97);
            }

            *(v4 + 20) = v95;
            if (!v98)
            {
              return 0;
            }

            goto LABEL_72;
          }
        }

        v110 = v128 + 16;
        *(v2 + 4) = v128 + 16;
        v111 = v109 + 1;
        *(v2 + 16) = v109 + 1;
        if (v128 >= 0x11)
        {
          goto LABEL_130;
        }
      }

LABEL_133:
      v109 = v111;
      if (v111 >= v107)
      {
        goto LABEL_134;
      }
    }

    v120 = 8 - v110;
    v112 = v110 | 0x18;
    *(v2 + 4) = v110 | 0x18;
    v113 = *(v2 + 64);
    v115 = (*v2 << (8 - v110)) & v113;
    if (v111 <= v107)
    {
      v121 = *(v2 + 24);
      v122 = *(v2 + 8);
      *(v2 + 8) = v122 + 1;
      v114 = bswap32(*(v121 + 4 * v122));
      *v2 = v114;
      v115 |= *(v152 + 4 * v120) & (v114 >> v112);
    }

    else
    {
      v114 = 0;
      ++*(v2 + 8);
      *v2 = 0;
    }

    v116 = v109 + 16;
    *(v2 + 16) = v109 + 16;
LABEL_114:
    v118 = v112 - 8;
    *(v2 + 4) = v118;
    if (((v114 >> v118) & v113) != 0)
    {
      goto LABEL_115;
    }

    goto LABEL_118;
  }

LABEL_10:
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t H263DMPR_GOBHeader(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 16);
  *(a5 + 16) = v6 + 17;
  v7 = *(a5 + 4);
  if (v7 < 0x11)
  {
    v12 = 17 - v7;
    v8 = v7 + 15;
    *(a5 + 4) = v7 + 15;
    v9 = *(a5 + 100);
    v11 = (*a5 << v12) & v9;
    if ((v6 + 17) <= *(a5 + 20))
    {
      v13 = *(a5 + 24);
      v14 = *(a5 + 8);
      *(a5 + 8) = v14 + 1;
      v10 = bswap32(*(v13 + 4 * v14));
      *a5 = v10;
      v11 |= *(a5 + 4 * v12 + 32) & (v10 >> v8);
    }

    else
    {
      v10 = 0;
      ++*(a5 + 8);
      *a5 = 0;
    }
  }

  else
  {
    v8 = v7 - 17;
    *(a5 + 4) = v7 - 17;
    v9 = *(a5 + 100);
    v10 = *a5;
    v11 = (*a5 >> v8) & v9;
  }

  if (v11 == 1)
  {
    v15 = v6 + 22;
    *(a5 + 16) = v6 + 22;
    v16 = v8 - 5;
    if (v8 < 5)
    {
      v19 = 5 - v8;
      v16 = v8 + 27;
      *(a5 + 4) = v8 + 27;
      v17 = (v10 << (5 - v8)) & *(a5 + 52);
      *a1 = v17;
      if (v15 > *(a5 + 20))
      {
        v10 = 0;
        ++*(a5 + 8);
        *a5 = 0;
        goto LABEL_21;
      }

      v26 = *(a5 + 24);
      v27 = *(a5 + 8);
      *(a5 + 8) = v27 + 1;
      v10 = bswap32(*(v26 + 4 * v27));
      *a5 = v10;
      v17 |= *(a5 + 4 * v19 + 32) & (v10 >> v16);
    }

    else
    {
      *(a5 + 4) = v16;
      v17 = (v10 >> v16) & *(a5 + 52);
    }

    *a1 = v17;
LABEL_21:
    *(a2 + 20) = v17;
    if (*(a6 + 16) > v17)
    {
      if (a4)
      {
        v15 = v6 + 24;
        *(a5 + 16) = v6 + 24;
        if (v16 < 2)
        {
          v16 |= 0x1Eu;
          *(a5 + 4) = v16;
          if (v15 <= *(a5 + 20))
          {
            v45 = *(a5 + 24);
            v46 = *(a5 + 8);
            *(a5 + 8) = v46 + 1;
            v10 = bswap32(*(v45 + 4 * v46));
          }

          else
          {
            v10 = 0;
            ++*(a5 + 8);
          }

          *a5 = v10;
          goto LABEL_54;
        }

        v16 -= 2;
      }

      *(a5 + 16) = v15 + 2;
      if (v16 <= 1)
      {
        v28 = v16 | 0x1E;
        *(a5 + 4) = v16 | 0x1E;
        if (v15 + 2 <= *(a5 + 20))
        {
          v43 = *(a5 + 24);
          v44 = *(a5 + 8);
          *(a5 + 8) = v44 + 1;
          v10 = bswap32(*(v43 + 4 * v44));
        }

        else
        {
          v10 = 0;
          ++*(a5 + 8);
        }

        *a5 = v10;
        *(a5 + 16) = v15 + 7;
        goto LABEL_55;
      }

LABEL_54:
      v28 = v16 - 2;
      v47 = v15 + 7;
      *(a5 + 16) = v47;
      if (v16 - 2 >= 5)
      {
LABEL_55:
        v48 = v28 - 5;
LABEL_66:
        *(a5 + 4) = v48;
        v50 = (v10 >> v48) & *(a5 + 52);
LABEL_67:
        *(a3 + 153) = v50;
LABEL_68:
        *(a3 + 152) = v50;
        return 1;
      }

      v49 = v16 + 25;
      *(a5 + 4) = v16 + 25;
      v50 = (v10 << (7 - v16)) & *(a5 + 52);
      *(a3 + 153) = v50;
      if (v47 <= *(a5 + 20))
      {
        v51 = a5 + 4 * (7 - v16);
LABEL_72:
        v57 = *(a5 + 24);
        v58 = *(a5 + 8);
        *(a5 + 8) = v58 + 1;
        LODWORD(v57) = bswap32(*(v57 + 4 * v58));
        *a5 = v57;
        v50 |= *(v51 + 32) & (v57 >> v49);
        goto LABEL_67;
      }

      goto LABEL_70;
    }

    return 0xFFFFFFFFLL;
  }

  *(a5 + 16) = v6;
  if (v8 >= 0x10)
  {
    v18 = v8 - 15;
    v20 = *(a5 + 8);
    *(a5 + 4) = v18;
    *(a5 + 8) = v20 - 1;
    if (*(a5 + 20) >= (32 * (v20 - 1)))
    {
      v10 = bswap32(*(*(a5 + 24) + 4 * (v20 - 2)));
      *a5 = v10;
    }
  }

  else
  {
    v18 = v8 + 17;
  }

  v21 = v18 & 7;
  v22 = v21 + v6;
  v23 = v18 & 0xFFFFFFF8;
  *(a5 + 4) = v18 & 0xFFFFFFF8;
  *(a5 + 16) = v21 + v6 + 17;
  v24 = (v18 & 0xFFFFFFF8) - 17;
  if (v23 < 0x11)
  {
    v24 = v23 + 15;
    *(a5 + 4) = v23 + 15;
    if ((v22 + 17) > *(a5 + 20))
    {
      ++*(a5 + 8);
      *a5 = 0;
      goto LABEL_32;
    }

    v29 = 17 - v23;
    v30 = (v10 << v29) & v9;
    v31 = *(a5 + 24);
    v32 = *(a5 + 8);
    *(a5 + 8) = v32 + 1;
    v10 = bswap32(*(v31 + 4 * v32));
    *a5 = v10;
    v25 = *(a5 + 4 * v29 + 32) & (v10 >> v24) | v30;
  }

  else
  {
    *(a5 + 4) = v24;
    v25 = (v10 >> v24) & v9;
  }

  if (v25 == 1)
  {
    v33 = v22 + 22;
    *(a5 + 16) = v22 + 22;
    v34 = v24 - 5;
    if (v24 < 5)
    {
      v39 = 5 - v24;
      v34 = v24 + 27;
      *(a5 + 4) = v24 + 27;
      v35 = (v10 << (5 - v24)) & *(a5 + 52);
      *a1 = v35;
      if (v33 > *(a5 + 20))
      {
        v10 = 0;
        ++*(a5 + 8);
        *a5 = 0;
        goto LABEL_42;
      }

      v40 = *(a5 + 24);
      v41 = *(a5 + 8);
      *(a5 + 8) = v41 + 1;
      v10 = bswap32(*(v40 + 4 * v41));
      *a5 = v10;
      v35 |= *(a5 + 4 * v39 + 32) & (v10 >> v34);
    }

    else
    {
      *(a5 + 4) = v34;
      v35 = (v10 >> v34) & *(a5 + 52);
    }

    *a1 = v35;
LABEL_42:
    *(a2 + 20) = v35;
    if (*(a6 + 16) <= v35)
    {
      return 0xFFFFFFFFLL;
    }

    if (a4)
    {
      v33 = v22 + 24;
      *(a5 + 16) = v22 + 24;
      if (v34 < 2)
      {
        v34 |= 0x1Eu;
        *(a5 + 4) = v34;
        if (v33 <= *(a5 + 20))
        {
          v54 = *(a5 + 24);
          v55 = *(a5 + 8);
          *(a5 + 8) = v55 + 1;
          v10 = bswap32(*(v54 + 4 * v55));
        }

        else
        {
          v10 = 0;
          ++*(a5 + 8);
        }

        *a5 = v10;
        goto LABEL_64;
      }

      v34 -= 2;
    }

    *(a5 + 16) = v33 + 2;
    if (v34 <= 1)
    {
      v42 = v34 | 0x1E;
      *(a5 + 4) = v34 | 0x1E;
      if (v33 + 2 <= *(a5 + 20))
      {
        v52 = *(a5 + 24);
        v53 = *(a5 + 8);
        *(a5 + 8) = v53 + 1;
        v10 = bswap32(*(v52 + 4 * v53));
      }

      else
      {
        v10 = 0;
        ++*(a5 + 8);
      }

      *a5 = v10;
      *(a5 + 16) = v33 + 7;
      goto LABEL_65;
    }

LABEL_64:
    v42 = v34 - 2;
    v56 = v33 + 7;
    *(a5 + 16) = v33 + 7;
    if (v34 - 2 < 5)
    {
      v49 = v34 + 25;
      *(a5 + 4) = v34 + 25;
      v50 = (v10 << (7 - v34)) & *(a5 + 52);
      *(a3 + 153) = v50;
      if (v56 <= *(a5 + 20))
      {
        v51 = a5 + 4 * (7 - v34);
        goto LABEL_72;
      }

LABEL_70:
      ++*(a5 + 8);
      *a5 = 0;
      goto LABEL_68;
    }

LABEL_65:
    v48 = v42 - 5;
    goto LABEL_66;
  }

LABEL_32:
  v36 = v21 + v24 + 17;
  *(a5 + 4) = v36;
  *(a5 + 16) = v6;
  if (v36 < 0x21)
  {
    return 0;
  }

  v37 = *(a5 + 8);
  *(a5 + 4) = v21 + v24 - 15;
  *(a5 + 8) = v37 - 1;
  if (*(a5 + 20) < (32 * (v37 - 1)))
  {
    return 0;
  }

  result = 0;
  *a5 = bswap32(*(*(a5 + 24) + 4 * (v37 - 2)));
  return result;
}

uint64_t H263DMPR_GOB_OBMC1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 296182);
  v8 = *v7;
  v9 = *(a1 + 296230);
  v158 = *(*(a1 + 296238) + 40);
  v10 = *(a1 + 296190);
  v164 = *(a1 + 296214);
  v162 = v164[19];
  v150 = *(a1 + 24);
  v151 = *(a1 + 32);
  v11 = *a1;
  *(v10 + 24) = 0;
  if (!*(a3 + 20))
  {
    return 0;
  }

  v14 = a4;
  v15 = a1;
  v16 = (v7 + 258);
  v148 = v8 + 340;
  v149 = v8 + 188;
  v145 = a4 + 5472;
  v144 = a4 + 10944;
  v143 = a4 + 16416;
  v142 = a4 + 21888;
  v139 = a4 + 27360;
  v146 = (v7 + 254);
  v154 = v7 + 330;
  v141 = v7 + 310;
  v147 = (v11 + 32) / 2;
  v136 = (v7 + 202);
  v137 = v9 + 32;
  v135 = (v7 + 226);
  v155 = vdupq_n_s64(2uLL);
  v161 = v7;
  v153 = (v7 + 258);
  v159 = v9;
  while (1)
  {
    if (*(*(v15 + 296214) + 17) == 1)
    {
      if (v162)
      {
        v17 = tabLast[SD_Gobble(cdfCod, v9, (v15 + 296154))];
      }

      else
      {
        v18 = *(v9 + 16) + 1;
        *(v9 + 16) = v18;
        v19 = *(v9 + 4);
        if (v19)
        {
          v20 = *v9;
          v21 = v19 - 1;
          *(v9 + 4) = v21;
          v17 = (v20 >> v21) & 1;
        }

        else
        {
          *(v9 + 4) = 31;
          if (v18 > *(v9 + 20))
          {
            v17 = 0;
            *v9 = 0;
            ++*(v9 + 8);
            *a5 = 0;
            *a6 = 0;
            if (*(*(v15 + 296214) + 17) == 1)
            {
              goto LABEL_20;
            }

LABEL_23:
            v28 = decodeMCBPCINTRA(v9, v158[1]);
            *(v161 + 246) = v28;
            if (v28 == -99)
            {
              return 5;
            }

            goto LABEL_24;
          }

          v22 = *(v9 + 24);
          v23 = *(v9 + 8);
          *(v9 + 8) = v23 + 1;
          LODWORD(v22) = bswap32(*(v22 + 4 * v23));
          *v9 = v22;
          v17 = v22 >> 31;
        }
      }

      *a5 = v17;
      *(a5 + 1) = v17;
      *a6 = v17;
      *(a6 + 1) = v17;
      if (v17 == 1)
      {
        v24 = *(v10 + 20);
        v25 = *(v10 + 24);
        v26 = v14;
        v27 = 12 * (v25 + 1);
        *(v14 + 288 * (v24 + 1) + v27) = 0;
        *(v145 + 288 * (v24 + 1) + v27) = 0;
        *(v144 + 288 * (v24 + 1) + v27) = 0;
        *(v143 + 288 * (v24 + 1) + v27) = 0;
        *(v142 + 288 * (v24 + 1) + v27) = 0;
        *(v139 + 288 * (v24 + 1) + v27) = 0;
        *(v161 + 154) = 0;
LABEL_182:
        v129 = *(v148 + 4 * v25) + *(v149 + 4 * v24);
        Copy8x8(v151[1] + v129, *(v150 + 8) + v129, v147);
        Copy8x8(v151[2] + v129, *(v150 + 16) + v129, v147);
        v16 = v153;
        v14 = v26;
        v9 = v159;
        goto LABEL_183;
      }
    }

    else
    {
      v17 = 0;
      *a5 = 0;
      *a6 = 0;
    }

    if (*(*(v15 + 296214) + 17) == 1)
    {
      if (v162)
      {
        v28 = tabMCBPC[SD_Gobble(cdfMCBPC, v9, (v15 + 296154))];
        *(v161 + 246) = v28;
      }

      else
      {
LABEL_20:
        v28 = decodeMCBPCINTER(v9, v158[2]);
        *(v161 + 246) = v28;
        if (v28 == -99)
        {
          return 5;
        }
      }

      if (v28 == 20)
      {
        goto LABEL_25;
      }

      v29 = (v28 >> 2) & 7;
      goto LABEL_27;
    }

    if (!v162)
    {
      goto LABEL_23;
    }

    v28 = tabIMCBPC[SD_Gobble(cdfIMCBPC, v9, (v15 + 296154))];
    *(v161 + 246) = v28;
LABEL_24:
    if (v28 == 8)
    {
LABEL_25:
      --*(v10 + 24);
      goto LABEL_183;
    }

    v29 = (v28 >> 2) + 3;
LABEL_27:
    *(v14 + 288 * (*(v10 + 20) + 1) + 12 * (*(v10 + 24) + 1) + 2) = v29;
    v30 = v161;
    *(v161 + 154) = v29;
    *(v161 + 246) = v28 & 3;
    v16[1].i32[1] = (v28 >> 1) & 1;
    v16[2].i32[0] = v28 & 1;
    v31 = *&v154[4 * v29];
    if (v164[22])
    {
      if (v162)
      {
        v32 = *&v154[4 * v29];
        v33 = SD_Gobble(cdfMODB, v9, (v15 + 296154));
        v31 = v32;
        v34 = tabModB[v33];
        v16[2].i32[1] = v34;
        if (!v34)
        {
          goto LABEL_53;
        }

        if (v34 == 3)
        {
          v16[3].i32[1] = tabLast[SD_Gobble(cdfYCBPB, v9, (v15 + 296154))];
          v16[4].i32[0] = tabLast[SD_Gobble(cdfYCBPB, v9, (v15 + 296154))];
          v16[4].i32[1] = tabLast[SD_Gobble(cdfYCBPB, v9, (v15 + 296154))];
          v16[5].i32[0] = tabLast[SD_Gobble(cdfYCBPB, v9, (v15 + 296154))];
          v16[5].i32[1] = tabLast[SD_Gobble(cdfUVCBPB, v9, (v15 + 296154))];
          v30 = v161;
          v35 = SD_Gobble(cdfUVCBPB, v9, (v15 + 296154));
          v31 = v32;
          v14 = a4;
          v16[6].i32[0] = tabLast[v35];
LABEL_53:
          v160 = 0;
          v55 = tabCBPY[SD_Gobble(&cdfCBPY[17 * v31], v9, (v15 + 296154))];
          *(v30 + 250) = v55;
          goto LABEL_61;
        }
      }

      else
      {
        v36 = *(v9 + 16);
        *(v9 + 16) = v36 + 1;
        v37 = *(v9 + 4);
        if (v37)
        {
          v38 = *v9;
          v39 = v37 - 1;
          *(v9 + 4) = v39;
          v40 = (v38 >> v39) & 1;
        }

        else
        {
          *(v9 + 4) = 31;
          if ((v36 + 1) > *(v9 + 20))
          {
            v16[2].i32[1] = 0;
            *v9 = 0;
            ++*(v9 + 8);
            goto LABEL_59;
          }

          v41 = *(v9 + 24);
          v42 = *(v9 + 8);
          *(v9 + 8) = v42 + 1;
          v38 = bswap32(*(v41 + 4 * v42));
          *v9 = v38;
          v40 = v38 >> 31;
          v39 = 31;
        }

        v16[2].i32[1] = v40;
        if (!v40)
        {
          goto LABEL_59;
        }

        *(v9 + 16) = v36;
        if (v39 >= 0x20)
        {
          v43 = v39 - 31;
          v44 = *(v9 + 8);
          *(v9 + 4) = v43;
          *(v9 + 8) = v44 - 1;
          if (*(v9 + 20) >= (32 * (v44 - 1)))
          {
            v38 = bswap32(*(*(v9 + 24) + 4 * (v44 - 2)));
            *v9 = v38;
          }
        }

        else
        {
          v43 = v39 + 1;
        }

        *(v9 + 16) = v36 + 2;
        v45 = v43 - 2;
        if (v43 < 2)
        {
          v47 = 2 - v43;
          v48 = v43 | 0x1E;
          *(v9 + 4) = v43 | 0x1E;
          v46 = (v38 << (2 - v43)) & *(v9 + 40);
          v16[2].i32[1] = v46;
          if ((v36 + 2) <= *(v9 + 20))
          {
            v49 = *(v9 + 24);
            v50 = *(v9 + 8);
            *(v9 + 8) = v50 + 1;
            v38 = bswap32(*(v49 + 4 * v50));
            v51 = *(v137 + 4 * v47);
            *v9 = v38;
            v46 |= v51 & (v38 >> v48);
            v16[2].i32[1] = v46;
          }

          else
          {
            v38 = 0;
            ++*(v9 + 8);
            *v9 = 0;
          }

          v45 = 31;
        }

        else
        {
          *(v9 + 4) = v45;
          v46 = (v38 >> v45) & *(v9 + 40);
          v16[2].i32[1] = v46;
        }

        if (v46 == 3)
        {
          v52 = v36 + 8;
          *(v9 + 16) = v36 + 8;
          v53 = v45 - 6;
          if (v45 >= 6)
          {
            *(v9 + 4) = v53;
            v54 = (v38 >> v53) & *(v9 + 56);
            goto LABEL_57;
          }

          v60 = 6 - v45;
          v61 = v45 + 26;
          *(v9 + 4) = v61;
          v54 = (v38 << v60) & *(v9 + 56);
          v16[3].i32[0] = v54;
          if (v52 <= *(v9 + 20))
          {
            v62 = *(v9 + 24);
            v63 = *(v9 + 8);
            *(v9 + 8) = v63 + 1;
            LODWORD(v62) = bswap32(*(v62 + 4 * v63));
            *v9 = v62;
            v54 |= *(v137 + 4 * v60) & (v62 >> v61);
LABEL_57:
            v16[3].i32[0] = v54;
          }

          else
          {
            ++*(v9 + 8);
            *v9 = 0;
          }

          v64.i64[0] = 0x100000001;
          v64.i64[1] = 0x100000001;
          *&v16[3].u8[4] = vandq_s8(vshlq_u32(vdupq_n_s32(v54), xmmword_2778F7B00), v64);
          v16[5].i32[1] = (v54 >> 1) & 1;
          v16[6].i32[0] = v54 & 1;
          goto LABEL_59;
        }
      }

      *(&v16[4] + 4) = 0;
      *(&v16[3] + 4) = 0;
      *(&v16[5] + 4) = 0;
    }

    if (v162)
    {
      goto LABEL_53;
    }

LABEL_59:
    v55 = decodeCBPY(v9, v158[3]);
    *(v161 + 250) = v55;
    if (v55 == -99)
    {
      return 6;
    }

    v160 = 1;
LABEL_61:
    v65 = *(v30 + 154);
    if (*&v154[4 * v65])
    {
      *v146 = (v55 >> 3) & 1;
      *v16 = vand_s8(vshl_u32(vdup_n_s32(v55), -2), 0x100000001);
      v66 = v55 & 1;
    }

    else
    {
      *v146 = (v55 & 8) == 0;
      *v16 = vbic_s8(0x100000001, vshl_u32(vdup_n_s32(v55), -2));
      v66 = (v55 & 1) == 0;
    }

    v16[1].i32[0] = v66;
    *(v30 + 155) = 0;
    if (*&v141[4 * v65])
    {
      if (v160)
      {
        v67 = *(v9 + 16) + 2;
        *(v9 + 16) = v67;
        v68 = *(v9 + 4);
        if (v68 < 2)
        {
          v72 = 2 - v68;
          v73 = v68 | 0x1E;
          *(v9 + 4) = v68 | 0x1E;
          v70 = (*v9 << (2 - v68)) & *(v9 + 40);
          if (v67 <= *(v9 + 20))
          {
            v74 = *(v9 + 24);
            v75 = *(v9 + 8);
            *(v9 + 8) = v75 + 1;
            LODWORD(v74) = bswap32(*(v74 + 4 * v75));
            *v9 = v74;
            v70 |= *(v137 + 4 * v72) & (v74 >> v73);
          }

          else
          {
            ++*(v9 + 8);
            *v9 = 0;
          }
        }

        else
        {
          v69 = v68 - 2;
          *(v9 + 4) = v69;
          v70 = (*v9 >> v69) & *(v9 + 40);
        }

        if (v70 >= 4)
        {
          return 0xFFFFFFFFLL;
        }

        v71 = 0x201FEFFu >> (8 * v70);
      }

      else
      {
        v71 = tabDQuant[SD_Gobble(cdfDQuant, v9, (v15 + 296154))] - 2;
      }

      *(v30 + 155) = v71;
      v76 = *(v30 + 153) + v71;
      *(v30 + 153) = v76;
      if ((v76 - 1) > 0x1Eu)
      {
        return 0xFFFFFFFFLL;
      }

      *(v30 + 152) = v76;
    }

    if (v164[17] != 1)
    {
      goto LABEL_180;
    }

    v77 = *(v30 + 154);
    if (v77 > 4)
    {
      return 0xFFFFFFFFLL;
    }

    v140 = v17;
    if (v77 == 2)
    {
      break;
    }

    if (v77 - 3 > 1 || v164[22])
    {
      if (v160)
      {
        v78 = decodeMVD(v9, v158[4]);
        v79 = decodeMVD(v9, v158[4]);
        result = 7;
        if (v78 == -99 || v79 == -99)
        {
          return result;
        }

        v81 = v161;
      }

      else
      {
        v81 = v30;
        v78 = tabMVD[SD_Gobble(cdfMVD, v9, (v15 + 296154))];
        v79 = tabMVD[SD_Gobble(cdfMVD, v9, (v15 + 296154))];
      }

      v82 = pvx4(v14, 0, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
      v83 = v14;
      v84 = v82;
      v85 = pvy4(v83, 0, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
      v86 = v78 | 0xFFFFFFC0;
      if ((v78 & 0x20) == 0)
      {
        v86 = v78;
      }

      v87 = v79 | 0xFFFFFFC0;
      if ((v79 & 0x20) == 0)
      {
        v87 = v79;
      }

      v88 = v84 + v86;
      *(v81 + 198) = v84 + v86;
      v89 = v85 + v87;
      *(v81 + 222) = v85 + v87;
      if (v164[18])
      {
        if ((v84 + 31) < 0x40)
        {
          LOBYTE(v90) = v88;
          v14 = a4;
          goto LABEL_158;
        }

        v90 = (v88 << 26 >> 31) & 0xFFFFFFC0 | v88 & 0x3F;
        *(v81 + 198) = v90;
        if (v84 > -32)
        {
          v14 = a4;
          if ((v88 & 0x20) == 0)
          {
            goto LABEL_158;
          }

          v111 = 64;
        }

        else
        {
          v14 = a4;
          if (v90 <= 0)
          {
            goto LABEL_158;
          }

          v111 = -64;
        }

        v90 += v111;
        *(v81 + 198) = v90;
LABEL_158:
        if ((v85 + 31) >= 0x40)
        {
          v117 = (v89 << 26 >> 31) & 0xFFFFFFC0 | v89 & 0x3F;
          *(v81 + 222) = v117;
          if (v85 > -32)
          {
            if ((v89 & 0x20) != 0)
            {
              v89 = v117 + 64;
              goto LABEL_166;
            }
          }

          else if (v117 >= 1)
          {
            v89 = v117 - 64;
            goto LABEL_166;
          }

          v89 = (v89 << 26 >> 31) & 0xFFFFFFC0 | v89 & 0x3F;
        }

LABEL_167:
        v118 = *(v10 + 20) + 1;
        v119 = *(v10 + 24) + 1;
        v120 = (v14 + 288 * v118 + 12 * v119);
        *v120 = v90;
        v120[1] = v89;
        v121 = (v145 + 288 * v118 + 12 * v119);
        *v121 = v90;
        v121[1] = v89;
        v122 = (v144 + 288 * v118 + 12 * v119);
        *v122 = v90;
        v122[1] = v89;
        v123 = (v143 + 288 * v118 + 12 * v119);
        *v123 = v90;
        v123[1] = v89;
        v124 = (v142 + 288 * v118 + 12 * v119);
        *v124 = v90;
        v124[1] = v89;
        goto LABEL_168;
      }

      if (v88 >= -32)
      {
        v14 = a4;
        if (v88 < 32)
        {
          goto LABEL_150;
        }

        v91 = -64;
      }

      else
      {
        v91 = 64;
        v14 = a4;
      }

      v88 += v91;
      *(v81 + 198) = v88;
LABEL_150:
      if (v89 > -33)
      {
        if (v89 < 32)
        {
          LOBYTE(v90) = v88;
          goto LABEL_167;
        }

        v89 -= 64;
      }

      else
      {
        v89 += 64;
      }

      LOBYTE(v90) = v88;
LABEL_166:
      *(v81 + 222) = v89;
      goto LABEL_167;
    }

    *(v30 + 206) = 0;
    *(v30 + 198) = 0;
    v112 = 6;
    v113 = v135;
    v114 = xmmword_2778F7A60;
    *(v30 + 214) = 0;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v114)).u8[0])
      {
        *(v113 - 1) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v114)).i32[1])
      {
        *v113 = 0;
      }

      v114 = vaddq_s64(v114, v155);
      v113 += 2;
      v112 -= 2;
    }

    while (v112);
    v115 = *(v10 + 20) + 1;
    v116 = 12 * (*(v10 + 24) + 1);
    *(v14 + 288 * v115 + v116) = 0;
    *(v145 + 288 * v115 + v116) = 0;
    *(v144 + 288 * v115 + v116) = 0;
    *(v143 + 288 * v115 + v116) = 0;
    *(v142 + 288 * v115 + v116) = 0;
    *(v139 + 288 * v115 + v116) = 0;
LABEL_168:
    v15 = a1;
    v16 = v153;
    v125 = v161;
    v17 = v140;
    if (v164[22] && (v153[2].i32[1] & 0xFFFFFFFE) == 2)
    {
      if (v160)
      {
        *(v161 + 218) = decodeMVD(v9, v158[4]);
        v126 = decodeMVD(v9, v158[4]);
        *(v161 + 242) = v126;
        v127 = *(v161 + 218);
        result = 7;
        if (v127 == -99 || v126 == -99)
        {
          return result;
        }

        v15 = a1;
        v16 = v153;
        v125 = v161;
        if ((v127 & 0x20) == 0)
        {
          goto LABEL_177;
        }
      }

      else
      {
        *(v161 + 218) = tabMVD[SD_Gobble(cdfMVD, v9, (a1 + 296154))];
        v126 = tabMVD[SD_Gobble(cdfMVD, v9, (a1 + 296154))];
        *(v161 + 242) = v126;
        v127 = *(v161 + 218);
        if ((v127 & 0x20) == 0)
        {
LABEL_177:
          v9 = v159;
          v17 = v140;
          if ((v126 & 0x20) != 0)
          {
            v126 |= 0xFFFFFFC0;
            *(v125 + 242) = v126;
          }

          v128 = (v139 + 288 * (*(v10 + 20) + 1) + 12 * (*(v10 + 24) + 1));
          *v128 = v127;
          v128[1] = v126;
          goto LABEL_180;
        }
      }

      v127 |= 0xFFFFFFC0;
      *(v125 + 218) = v127;
      goto LABEL_177;
    }

LABEL_180:
    if (v17)
    {
      v26 = v14;
      v24 = *(v10 + 20);
      v25 = *(v10 + 24);
      goto LABEL_182;
    }

    result = H263DMPR_MBS16(v15, v56, v57, v58, v59, a7);
    if (result)
    {
      return result;
    }

    if (!a7)
    {
      DumpDecoded263MB_OBMCS16(v15, v151, v150, v146);
    }

    if (v164[22])
    {
      if (v16[2].i32[1] == 3)
      {
        result = H263DMPR_MB_pbS16(v15, v131, v132, v133, v134, a7);
        if (result)
        {
          return result;
        }
      }
    }

LABEL_183:
    v130 = *(v10 + 24) + 1;
    *(v10 + 24) = v130;
    a5 += 2;
    a6 += 2;
    if (v130 >= *(a3 + 20))
    {
      return 0;
    }
  }

  if (v164[20])
  {
    v92 = -4;
    v93 = 5473;
    v94 = v136;
    while (1)
    {
      if (v160)
      {
        v95 = decodeMVD(v9, v158[4]);
        v96 = decodeMVD(v9, v158[4]);
        result = 7;
        if (v95 == -99 || v96 == -99)
        {
          return result;
        }
      }

      else
      {
        v95 = tabMVD[SD_Gobble(cdfMVD, v9, (a1 + 296154))];
        v96 = tabMVD[SD_Gobble(cdfMVD, v9, (a1 + 296154))];
      }

      v97 = pvx4(v14, v92 + 5, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
      v98 = v14;
      v99 = v97;
      v100 = pvy4(v98, v92 + 5, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
      v101 = v95 | 0xFFFFFFC0;
      if ((v95 & 0x20) == 0)
      {
        v101 = v95;
      }

      v102 = v96 | 0xFFFFFFC0;
      if ((v96 & 0x20) == 0)
      {
        v102 = v96;
      }

      v103 = v99 + v101;
      *v94 = v99 + v101;
      v104 = v100 + v102;
      v94[6] = v100 + v102;
      if (v164[18])
      {
        v9 = v159;
        if ((v99 + 31) < 0x40)
        {
          LOBYTE(v105) = v103;
          v14 = a4;
          goto LABEL_125;
        }

        v105 = (v103 << 26 >> 31) & 0xFFFFFFC0 | v103 & 0x3F;
        *v94 = v105;
        if (v99 > -32)
        {
          v14 = a4;
          if ((v103 & 0x20) != 0)
          {
            v107 = 64;
LABEL_124:
            v105 += v107;
            *v94 = v105;
          }
        }

        else
        {
          v14 = a4;
          if (v105 > 0)
          {
            v107 = -64;
            goto LABEL_124;
          }
        }

LABEL_125:
        if ((v100 + 31) >= 0x40)
        {
          v108 = (v104 << 26 >> 31) & 0xFFFFFFC0 | v104 & 0x3F;
          v94[6] = v108;
          if (v100 > -32)
          {
            if ((v104 & 0x20) != 0)
            {
              v104 = v108 + 64;
              goto LABEL_133;
            }
          }

          else if (v108 >= 1)
          {
            v104 = v108 - 64;
            goto LABEL_133;
          }

          v104 = (v104 << 26 >> 31) & 0xFFFFFFC0 | v104 & 0x3F;
        }

        goto LABEL_134;
      }

      v9 = v159;
      if (v103 < -32)
      {
        break;
      }

      v14 = a4;
      if (v103 >= 32)
      {
        v106 = -64;
        goto LABEL_116;
      }

LABEL_117:
      if (v104 <= -33)
      {
        v104 += 64;
LABEL_121:
        LOBYTE(v105) = v103;
LABEL_133:
        v94[6] = v104;
        goto LABEL_134;
      }

      if (v104 >= 32)
      {
        v104 -= 64;
        goto LABEL_121;
      }

      LOBYTE(v105) = v103;
LABEL_134:
      v109 = (v14 + v93 + 12 * (*(v10 + 24) + 1) + 288 * (*(v10 + 20) + 1));
      *(v109 - 1) = v105;
      *v109 = v104;
      ++v94;
      v93 += 5472;
      if (__CFADD__(v92++, 1))
      {
        goto LABEL_168;
      }
    }

    v106 = 64;
    v14 = a4;
LABEL_116:
    v103 += v106;
    *v94 = v103;
    goto LABEL_117;
  }

  return 0xFFFFFFFFLL;
}

uint64_t H263DMPR_GOB_OBMC2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*(a2 + 20))
  {
    v4 = a4;
    v5 = a3;
    v6 = 0;
    v7 = *a1 + 32;
    v8 = *(a1 + 24);
    v106 = *(a1 + 32);
    v9 = (*(v8 + 28) * *(v8 + 24));
    v10 = v7 * (16 * a4 + 16);
    v112 = *(a1 + 296214);
    v99 = a3 + 5472;
    v123 = *(a1 + 66);
    v107 = a3 + 16416;
    v105 = *(a1 + 58);
    v100 = a3 + 10944;
    v11 = *v8;
    v103 = a3 + 21888;
    v114 = 4 * *a1;
    v116 = 8 * *a1;
    v110 = 12 * *a1;
    v120 = a4 + 1;
    v12 = a3 + 288 * (a4 + 1);
    v104 = v12;
    while (1)
    {
      v122 = v6 + 1;
      v13 = (v12 + 12 * (v6 + 1));
      v14 = *(v13 + 1);
      v121 = v6;
      if (v14 < 2)
      {
        break;
      }

      if (v14 == 2)
      {
        v19 = v10 + 16;
        v20 = (v99 + 288 * v120 + 12 * v122);
        v117 = v123 + 4 * (v10 + 16);
        result = MC_Copy8x8Y_wcc(v123 + 4 * v19, *v8 + v19, v7, *v20, v20[1], &wcc, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v21 = (v99 + 288 * v120 + 12 * v122);
        if (v4)
        {
          v22 = *(v5 + 288 * a4 + 12 * v122 + 2);
          if ((v22 - 3) > 1)
          {
            if (v22 != 2)
            {
              goto LABEL_69;
            }

            v21 = (v107 + 288 * a4 + 12 * v122);
          }

          else
          {
            v21 = (v99 + 288 * v120 + 12 * v122);
            if (!*(v112 + 22))
            {
              goto LABEL_70;
            }

LABEL_69:
            v21 = (v5 + 288 * a4 + 12 * v122);
          }
        }

LABEL_70:
        v109 = (v99 + 288 * v120 + 12 * v122);
        v53 = (v107 + 288 * v120 + 12 * v122);
        v54 = *v53;
        v102 = v53;
        v55 = v53[1];
        v115 = v19;
        result = MC_Copy4x8Y_wtb(v117, *v8 + v19, v7, *v21, v21[1], &wtb, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        result = MC_Copy4x8Y_wtb(v123 + 4 * (v114 + v10 + 144), *v8 + v114 + v10 + 144, v7, v54, v55, &unk_2778F7FC0, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v56 = (v99 + 288 * v120 + 12 * v122);
        if (v121)
        {
          v57 = *(v5 + 288 * v120 + 12 * v121 + 2);
          if ((v57 - 3) > 1)
          {
            if (v57 != 2)
            {
              goto LABEL_78;
            }

            v56 = (v100 + 288 * v120 + 12 * v121);
          }

          else
          {
            v56 = (v99 + 288 * v120 + 12 * v122);
            if (!*(v112 + 22))
            {
              goto LABEL_79;
            }

LABEL_78:
            v56 = (v5 + 288 * v120 + 12 * v121);
          }
        }

LABEL_79:
        v58 = (v100 + 288 * v120 + 12 * v122);
        v59 = *v58;
        v108 = v58;
        v60 = v58[1];
        result = MC_Copy8x4Y_wlr(v117, *v8 + v19, v7, *v56, v56[1], &wlr, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        result = MC_Copy8x4Y_wlr(v123 + 4 * (v10 + 20), *v8 + v10 + 20, v7, v59, v60, &unk_2778F8050, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v61 = v10 + 24;
        v62 = v123 + 4 * (v10 + 24);
        result = MC_Copy8x8Y_wcc(v123 + 4 * v61, *v8 + v61, v7, *v108, v108[1], &wcc, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v63 = (v100 + 288 * v120 + 12 * v122);
        if (a4)
        {
          v64 = *(a3 + 288 * a4 + 12 * v122 + 2);
          if ((v64 - 3) > 1)
          {
            if (v64 != 2)
            {
              goto LABEL_93;
            }

            v63 = (v103 + 288 * a4 + 12 * v122);
          }

          else
          {
            v63 = (v100 + 288 * v120 + 12 * v122);
            if (!*(v112 + 22))
            {
              goto LABEL_94;
            }

LABEL_93:
            v63 = (a3 + 288 * a4 + 12 * v122);
          }
        }

LABEL_94:
        v74 = (v103 + 288 * v120 + 12 * v122);
        v75 = *v74;
        v101 = v74;
        v76 = v74[1];
        result = MC_Copy4x8Y_wtb(v62, *v8 + v61, v7, *v63, v63[1], &wtb, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        result = MC_Copy4x8Y_wtb(v123 + 4 * (v114 + v10 + 152), *v8 + v114 + v10 + 152, v7, v75, v76, &unk_2778F7FC0, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v77 = (v100 + 288 * v120 + 12 * v122);
        if (v122 != *(a2 + 20))
        {
          v78 = *(a3 + 288 * v120 + 12 * (v121 + 2) + 2);
          if ((v78 - 3) > 1)
          {
            if (v78 != 2)
            {
              goto LABEL_102;
            }

            v77 = (v99 + 288 * v120 + 12 * (v121 + 2));
          }

          else
          {
            v77 = (v100 + 288 * v120 + 12 * v122);
            if (!*(v112 + 22))
            {
              goto LABEL_103;
            }

LABEL_102:
            v77 = (a3 + 288 * v120 + 12 * (v121 + 2));
          }
        }

LABEL_103:
        v79 = *v77;
        v80 = v77[1];
        result = MC_Copy8x4Y_wlr(v62, *v8 + v61, v7, *v109, v109[1], &wlr, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        result = MC_Copy8x4Y_wlr(v123 + 4 * (v10 + 28), *v8 + v10 + 28, v7, v79, v80, &unk_2778F8050, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v81 = v116 + v10 + 272;
        v82 = v123 + 4 * v81;
        result = MC_Copy8x8Y_wcc(v82, *v8 + v81, v7, *v102, v102[1], &wcc, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v83 = *v102;
        v84 = v102[1];
        result = MC_Copy4x8Y_wtb(v82, *v8 + v81, v7, *v109, v109[1], &wtb, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        result = MC_Copy4x8Y_wtb(v123 + 4 * (v110 + v10 + 400), *v8 + v110 + v10 + 400, v7, v83, v84, &unk_2778F7FC0, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v85 = (v107 + 288 * v120 + 12 * v122);
        if (v121)
        {
          v86 = *(a3 + 288 * v120 + 12 * v121 + 2);
          if ((v86 - 3) > 1)
          {
            if (v86 != 2)
            {
              goto LABEL_114;
            }

            v85 = (v103 + 288 * v120 + 12 * v121);
          }

          else
          {
            v85 = (v107 + 288 * v120 + 12 * v122);
            if (!*(v112 + 22))
            {
              goto LABEL_115;
            }

LABEL_114:
            v85 = (a3 + 288 * v120 + 12 * v121);
          }
        }

LABEL_115:
        v87 = *v101;
        v88 = v101[1];
        result = MC_Copy8x4Y_wlr(v82, *v8 + v81, v7, *v85, v85[1], &wlr, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v89 = v116 + v10;
        result = MC_Copy8x4Y_wlr(v123 + 4 * (v89 + 276), *v8 + v89 + 276, v7, v87, v88, &unk_2778F8050, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v90 = v89 + 280;
        v91 = v123 + 4 * v90;
        result = MC_Copy8x8Y_wcc(v91, *v8 + v90, v7, *v101, v101[1], &wcc, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v92 = *v101;
        v93 = v101[1];
        result = MC_Copy4x8Y_wtb(v91, *v8 + v90, v7, *v108, v108[1], &wtb, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        result = MC_Copy4x8Y_wtb(v123 + 4 * (v110 + v10 + 408), *v8 + v110 + v10 + 408, v7, v92, v93, &unk_2778F7FC0, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        if (v122 != *(a2 + 20))
        {
          v94 = *(a3 + 288 * v120 + 12 * (v121 + 2) + 2);
          if ((v94 - 3) > 1)
          {
            if (v94 == 2)
            {
              v101 = (v107 + 288 * v120 + 12 * (v121 + 2));
              goto LABEL_127;
            }
          }

          else if (!*(v112 + 22))
          {
            goto LABEL_127;
          }

          v101 = (a3 + 288 * v120 + 12 * (v121 + 2));
        }

LABEL_127:
        v95 = *v101;
        v96 = v101[1];
        result = MC_Copy8x4Y_wlr(v91, *v8 + v90, v7, *v102, v102[1], &wlr, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v97 = v116 + v10 + 284;
        v68 = v123 + 4 * v97;
        v69 = *v8 + v97;
        v70 = v11 + v9;
        v71 = v7;
        v72 = v95;
        v73 = v96;
LABEL_129:
        result = MC_Copy8x4Y_wlr(v68, v69, v71, v72, v73, &unk_2778F8050, v11, v70);
        if (result)
        {
          return result;
        }

        OBMC_average(*v106 + v115, v105 + 4 * v115, v117, v7);
        v4 = a4;
        v5 = a3;
        v6 = v121;
        v12 = v104;
      }

      v98 = v6 + 2;
      ++v6;
      v10 += 16;
      if (v98 > *(a2 + 20))
      {
        return 0;
      }
    }

    v15 = v10 + 16;
    v117 = v123 + 4 * (v10 + 16);
    result = MC_Copy8x8Y_wcc(v123 + 4 * v15, *v8 + v15, v7, *v13, v13[1], &wcc, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v17 = (v12 + 12 * v122);
    if (v4)
    {
      v18 = *(v5 + 288 * a4 + 12 * v122 + 2);
      if ((v18 - 3) <= 1)
      {
        v17 = (v12 + 12 * v122);
        if (!*(v112 + 22))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (v18 != 2)
      {
LABEL_17:
        v17 = (v5 + 288 * a4 + 12 * v122);
        goto LABEL_18;
      }

      v17 = (v107 + 288 * a4 + 12 * v122);
    }

LABEL_18:
    v23 = *v13;
    v24 = v13[1];
    v115 = v15;
    result = MC_Copy4x8Y_wtb(v117, *v8 + v15, v7, *v17, v17[1], &wtb, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    result = MC_Copy4x8Y_wtb(v123 + 4 * (v114 + v10 + 144), *v8 + v114 + v10 + 144, v7, v23, v24, &unk_2778F7FC0, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v25 = v13;
    if (v121)
    {
      v26 = *(v5 + 288 * v120 + 12 * v121 + 2);
      if ((v26 - 3) <= 1)
      {
        v25 = v13;
        if (!*(v112 + 22))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v26 != 2)
      {
LABEL_26:
        v25 = (v5 + 288 * v120 + 12 * v121);
        goto LABEL_27;
      }

      v25 = (v100 + 288 * v120 + 12 * v121);
    }

LABEL_27:
    v27 = *v13;
    v28 = v13[1];
    result = MC_Copy8x4Y_wlr(v117, *v8 + v15, v7, *v25, v25[1], &wlr, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    result = MC_Copy8x4Y_wlr(v123 + 4 * (v10 + 20), *v8 + v10 + 20, v7, v27, v28, &unk_2778F8050, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v29 = v10 + 24;
    v30 = v123 + 4 * (v10 + 24);
    result = MC_Copy8x8Y_wcc(v123 + 4 * v29, *v8 + v29, v7, *v13, v13[1], &wcc, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v31 = v13;
    if (a4)
    {
      v32 = *(a3 + 288 * a4 + 12 * v122 + 2);
      if ((v32 - 3) <= 1)
      {
        v31 = v13;
        if (!*(v112 + 22))
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      if (v32 != 2)
      {
LABEL_36:
        v31 = (a3 + 288 * a4 + 12 * v122);
        goto LABEL_37;
      }

      v31 = (v103 + 288 * a4 + 12 * v122);
    }

LABEL_37:
    v33 = *v13;
    v34 = v13[1];
    result = MC_Copy4x8Y_wtb(v30, *v8 + v29, v7, *v31, v31[1], &wtb, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    result = MC_Copy4x8Y_wtb(v123 + 4 * (v114 + v10 + 152), *v8 + v114 + v10 + 152, v7, v33, v34, &unk_2778F7FC0, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v35 = v13;
    if (v122 != *(a2 + 20))
    {
      v36 = *(a3 + 288 * v120 + 12 * (v121 + 2) + 2);
      if ((v36 - 3) <= 1)
      {
        v35 = v13;
        if (!*(v112 + 22))
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if (v36 != 2)
      {
LABEL_45:
        v35 = (a3 + 288 * v120 + 12 * (v121 + 2));
        goto LABEL_46;
      }

      v35 = (v99 + 288 * v120 + 12 * (v121 + 2));
    }

LABEL_46:
    v37 = *v35;
    v38 = v35[1];
    result = MC_Copy8x4Y_wlr(v30, *v8 + v29, v7, *v13, v13[1], &wlr, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    result = MC_Copy8x4Y_wlr(v123 + 4 * (v10 + 28), *v8 + v10 + 28, v7, v37, v38, &unk_2778F8050, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v39 = v116 + v10 + 272;
    v40 = v123 + 4 * v39;
    result = MC_Copy8x8Y_wcc(v40, *v8 + v39, v7, *v13, v13[1], &wcc, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v41 = *v13;
    v42 = v13[1];
    result = MC_Copy4x8Y_wtb(v40, *v8 + v39, v7, v41, v42, &wtb, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    result = MC_Copy4x8Y_wtb(v123 + 4 * (v110 + v10 + 400), *v8 + v110 + v10 + 400, v7, v41, v42, &unk_2778F7FC0, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v43 = v13;
    if (v121)
    {
      v44 = *(a3 + 288 * v120 + 12 * v121 + 2);
      if ((v44 - 3) <= 1)
      {
        v43 = v13;
        if (!*(v112 + 22))
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      if (v44 != 2)
      {
LABEL_57:
        v43 = (a3 + 288 * v120 + 12 * v121);
        goto LABEL_58;
      }

      v43 = (v103 + 288 * v120 + 12 * v121);
    }

LABEL_58:
    v45 = *v13;
    v46 = v13[1];
    result = MC_Copy8x4Y_wlr(v40, *v8 + v39, v7, *v43, v43[1], &wlr, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v47 = v116 + v10;
    result = MC_Copy8x4Y_wlr(v123 + 4 * (v47 + 276), *v8 + v47 + 276, v7, v45, v46, &unk_2778F8050, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v48 = v47 + 280;
    result = MC_Copy8x8Y_wcc(v123 + 4 * v48, *v8 + v48, v7, *v13, v13[1], &wcc, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v49 = *v13;
    v50 = v13[1];
    result = MC_Copy4x8Y_wtb(v123 + 4 * v48, *v8 + v48, v7, v49, v50, &wtb, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    result = MC_Copy4x8Y_wtb(v123 + 4 * (v110 + v10 + 408), *v8 + v110 + v10 + 408, v7, v49, v50, &unk_2778F7FC0, v11, v11 + v9);
    if (result)
    {
      return result;
    }

    v51 = v13;
    if (v122 == *(a2 + 20))
    {
      goto LABEL_89;
    }

    v52 = *(a3 + 288 * v120 + 12 * (v121 + 2) + 2);
    if ((v52 - 3) > 1)
    {
      if (v52 == 2)
      {
        v51 = (v107 + 288 * v120 + 12 * (v121 + 2));
LABEL_89:
        v65 = *v51;
        v66 = v51[1];
        result = MC_Copy8x4Y_wlr(v123 + 4 * v48, *v8 + v48, v7, *v13, v13[1], &wlr, v11, v11 + v9);
        if (result)
        {
          return result;
        }

        v67 = v116 + v10 + 284;
        v68 = v123 + 4 * v67;
        v69 = *v8 + v67;
        v70 = v11 + v9;
        v71 = v7;
        v72 = v65;
        v73 = v66;
        goto LABEL_129;
      }
    }

    else
    {
      v51 = v13;
      if (!*(v112 + 22))
      {
        goto LABEL_89;
      }
    }

    v51 = (a3 + 288 * v120 + 12 * (v121 + 2));
    goto LABEL_89;
  }

  return 0;
}

uint64_t H263DMPR_GOB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 296182);
  v8 = *v7;
  v9 = *(a1 + 296230);
  v164 = *(*(a1 + 296238) + 40);
  v10 = *(a1 + 296190);
  v178 = *(a1 + 296214);
  v176 = v178[19];
  v145 = *(a1 + 24);
  v146 = *(a1 + 32);
  v11 = *a1;
  *(v10 + 24) = 0;
  if (!*(a3 + 20))
  {
    return 0;
  }

  v14 = a1;
  v15 = 0;
  v16 = (v7 + 258);
  v167 = v8 + 19;
  v166 = v8 + 47;
  v165 = v8 + 85;
  v153 = a4 + 5472;
  v152 = a4 + 10944;
  v151 = a4 + 16416;
  v150 = a4 + 21888;
  v154 = a4 + 27360;
  v155 = (v7 + 254);
  v160 = v7 + 330;
  v140 = v9 + 32;
  v149 = v7 + 310;
  v148 = (a1 + 296206);
  v147 = v10 + 1656;
  v143 = (v11 + 32) / 2;
  v144 = v11 + 32;
  v138 = (v7 + 226);
  v139 = (v7 + 202);
  v161 = vdupq_n_s64(2uLL);
  v163 = v7;
  v174 = v8;
  v177 = v9;
  v169 = (v7 + 258);
  v142 = v10;
  while (1)
  {
    v17 = *(v10 + 20);
    v172 = v166[v17];
    v173 = v8[v17];
    v170 = v165[v15];
    v171 = v167[v15];
    if (*(*(v14 + 296214) + 17) == 1)
    {
      if (v176)
      {
        v18 = tabLast[SD_Gobble(cdfCod, v9, (v14 + 296154))];
      }

      else
      {
        v19 = *(v9 + 16) + 1;
        *(v9 + 16) = v19;
        v20 = *(v9 + 4);
        if (v20)
        {
          v21 = *v9;
          v22 = v20 - 1;
          *(v9 + 4) = v22;
          v18 = (v21 >> v22) & 1;
        }

        else
        {
          *(v9 + 4) = 31;
          if (v19 > *(v9 + 20))
          {
            v168 = 0;
            *v9 = 0;
            ++*(v9 + 8);
            *a5 = 0;
            *a6 = 0;
            if (*(*(v14 + 296214) + 17) != 1)
            {
              goto LABEL_23;
            }

LABEL_20:
            v27 = decodeMCBPCINTER(v9, v164[2]);
            *(v7 + 246) = v27;
            if (v27 == -99)
            {
              return 5;
            }

            goto LABEL_21;
          }

          v23 = *(v9 + 24);
          v24 = *(v9 + 8);
          *(v9 + 8) = v24 + 1;
          LODWORD(v23) = bswap32(*(v23 + 4 * v24));
          *v9 = v23;
          v18 = v23 >> 31;
        }
      }

      *a5 = v18;
      *(a5 + 1) = v18;
      *a6 = v18;
      *(a6 + 1) = v18;
      if (v18 == 1)
      {
        v25 = *(v10 + 20) + 1;
        v26 = 12 * (*(v10 + 24) + 1);
        *(a4 + 288 * v25 + v26) = 0;
        *(v153 + 288 * v25 + v26) = 0;
        *(v152 + 288 * v25 + v26) = 0;
        *(v151 + 288 * v25 + v26) = 0;
        *(v150 + 288 * v25 + v26) = 0;
        *(v154 + 288 * v25 + v26) = 0;
        *(v7 + 154) = 0;
LABEL_185:
        if (!a7)
        {
          v129 = v170 + v172;
          v130 = v174[42] + v171 + v173;
          Copy8x8(*v146 + v130, *v145 + v130, v144);
          v131 = v174[43] + (v171 + v173);
          Copy8x8(*v146 + v131, *v145 + v131, v144);
          v132 = v174[44] + (v171 + v173);
          Copy8x8(*v146 + v132, *v145 + v132, v144);
          v10 = v142;
          v133 = v174[45] + (v171 + v173);
          v9 = v177;
          Copy8x8(*v146 + v133, *v145 + v133, v144);
          Copy8x8(v146[1] + v129, v145[1] + v129, v143);
          v7 = v163;
          v16 = v169;
          Copy8x8(v146[2] + v129, v145[2] + v129, v143);
        }

        goto LABEL_193;
      }
    }

    else
    {
      v18 = 0;
      *a5 = 0;
      *a6 = 0;
    }

    v168 = v18;
    if (*(*(v14 + 296214) + 17) != 1)
    {
      if (v176)
      {
        v27 = tabIMCBPC[SD_Gobble(cdfIMCBPC, v9, (v14 + 296154))];
        *(v7 + 246) = v27;
      }

      else
      {
LABEL_23:
        v27 = decodeMCBPCINTRA(v9, v164[1]);
        *(v7 + 246) = v27;
        if (v27 == -99)
        {
          return 5;
        }
      }

      if (v27 == 8)
      {
        goto LABEL_193;
      }

      v29 = (v27 >> 2) + 3;
      *(v7 + 154) = (v27 >> 2) + 3;
      LOWORD(v28) = ((v27 >> 2) + 3);
      goto LABEL_26;
    }

    if (!v176)
    {
      goto LABEL_20;
    }

    v27 = tabMCBPC[SD_Gobble(cdfMCBPC, v9, (v14 + 296154))];
    *(v7 + 246) = v27;
LABEL_21:
    if (v27 == 20)
    {
      goto LABEL_193;
    }

    v28 = (v27 >> 2) & 7;
    *(v7 + 154) = (v27 >> 2) & 7;
    LOBYTE(v29) = v28;
LABEL_26:
    *(a4 + 288 * (*(v10 + 20) + 1) + 12 * (*(v10 + 24) + 1) + 2) = v28;
    *(v7 + 246) = v27 & 3;
    v16[1].i32[1] = (v27 >> 1) & 1;
    v16[2].i32[0] = v27 & 1;
    v30 = *(v160 + 4 * v29);
    if (v178[22])
    {
      if (v176)
      {
        v31 = tabModB[SD_Gobble(cdfMODB, v177, (v14 + 296154))];
        v16[2].i32[1] = v31;
        if (!v31)
        {
          goto LABEL_52;
        }

        if (v31 == 3)
        {
          v16[3].i32[1] = tabLast[SD_Gobble(cdfYCBPB, v177, (v14 + 296154))];
          v16[4].i32[0] = tabLast[SD_Gobble(cdfYCBPB, v177, (v14 + 296154))];
          v16[4].i32[1] = tabLast[SD_Gobble(cdfYCBPB, v177, (v14 + 296154))];
          v16[5].i32[0] = tabLast[SD_Gobble(cdfYCBPB, v177, (v14 + 296154))];
          v16[5].i32[1] = tabLast[SD_Gobble(cdfUVCBPB, v177, (v14 + 296154))];
          v16[6].i32[0] = tabLast[SD_Gobble(cdfUVCBPB, v177, (v14 + 296154))];
LABEL_52:
          v51 = &cdfCBPY[17 * v30];
          v9 = v177;
          v175 = 0;
          v52 = tabCBPY[SD_Gobble(v51, v177, (v14 + 296154))];
          goto LABEL_59;
        }
      }

      else
      {
        v32 = *(v177 + 16);
        *(v177 + 16) = v32 + 1;
        v33 = *(v177 + 4);
        if (v33)
        {
          v34 = *v177;
          v35 = v33 - 1;
          *(v177 + 4) = v35;
          v36 = (v34 >> v35) & 1;
        }

        else
        {
          *(v177 + 4) = 31;
          if ((v32 + 1) > *(v177 + 20))
          {
            v16[2].i32[1] = 0;
            *v177 = 0;
            ++*(v177 + 8);
            goto LABEL_58;
          }

          v37 = *(v177 + 24);
          v38 = *(v177 + 8);
          *(v177 + 8) = v38 + 1;
          v34 = bswap32(*(v37 + 4 * v38));
          *v177 = v34;
          v36 = v34 >> 31;
          v35 = 31;
        }

        v16[2].i32[1] = v36;
        if (!v36)
        {
          goto LABEL_58;
        }

        *(v177 + 16) = v32;
        if (v35 >= 0x20)
        {
          v39 = v35 - 31;
          v40 = *(v177 + 8);
          *(v177 + 4) = v39;
          *(v177 + 8) = v40 - 1;
          if (*(v177 + 20) >= (32 * (v40 - 1)))
          {
            v34 = bswap32(*(*(v177 + 24) + 4 * (v40 - 2)));
            *v177 = v34;
          }
        }

        else
        {
          v39 = v35 + 1;
        }

        *(v177 + 16) = v32 + 2;
        v41 = v39 - 2;
        if (v39 < 2)
        {
          v43 = 2 - v39;
          v44 = v39 | 0x1E;
          *(v177 + 4) = v39 | 0x1E;
          v42 = (v34 << (2 - v39)) & *(v177 + 40);
          v16[2].i32[1] = v42;
          if ((v32 + 2) <= *(v177 + 20))
          {
            v45 = *(v177 + 24);
            v46 = *(v177 + 8);
            *(v177 + 8) = v46 + 1;
            v34 = bswap32(*(v45 + 4 * v46));
            v47 = *(v140 + 4 * v43);
            *v177 = v34;
            v42 |= v47 & (v34 >> v44);
            v16[2].i32[1] = v42;
          }

          else
          {
            v34 = 0;
            ++*(v177 + 8);
            *v177 = 0;
          }

          v41 = 31;
        }

        else
        {
          *(v177 + 4) = v41;
          v42 = (v34 >> v41) & *(v177 + 40);
          v16[2].i32[1] = v42;
        }

        if (v42 == 3)
        {
          v48 = v32 + 8;
          *(v177 + 16) = v32 + 8;
          v49 = v41 - 6;
          if (v41 >= 6)
          {
            *(v177 + 4) = v49;
            v50 = (v34 >> v49) & *(v177 + 56);
            goto LABEL_56;
          }

          v57 = 6 - v41;
          v58 = v41 + 26;
          *(v177 + 4) = v58;
          v50 = (v34 << v57) & *(v177 + 56);
          v16[3].i32[0] = v50;
          if (v48 <= *(v177 + 20))
          {
            v59 = *(v177 + 24);
            v60 = *(v177 + 8);
            *(v177 + 8) = v60 + 1;
            LODWORD(v59) = bswap32(*(v59 + 4 * v60));
            *v177 = v59;
            v50 |= *(v140 + 4 * v57) & (v59 >> v58);
LABEL_56:
            v16[3].i32[0] = v50;
          }

          else
          {
            ++*(v177 + 8);
            *v177 = 0;
          }

          v61.i64[0] = 0x100000001;
          v61.i64[1] = 0x100000001;
          *&v16[3].u8[4] = vandq_s8(vshlq_u32(vdupq_n_s32(v50), xmmword_2778F7B00), v61);
          v16[5].i32[1] = (v50 >> 1) & 1;
          v16[6].i32[0] = v50 & 1;
          goto LABEL_58;
        }
      }

      *(&v16[4] + 4) = 0;
      *(&v16[3] + 4) = 0;
      *(&v16[5] + 4) = 0;
    }

    if (v176)
    {
      goto LABEL_52;
    }

LABEL_58:
    v9 = v177;
    v52 = decodeCBPY(v177, v164[3]);
    v175 = 1;
LABEL_59:
    *(v7 + 250) = v52;
    if (v52 == -99)
    {
      return 6;
    }

    v62 = *(v7 + 154);
    v63 = vdup_n_s32(v52);
    if (*(v160 + 4 * v62))
    {
      *v155 = (v52 >> 3) & 1;
      *v16 = vand_s8(vshl_u32(v63, -2), 0x100000001);
      v64 = v52 & 1;
    }

    else
    {
      *v155 = (v52 & 8) == 0;
      *v16 = vbic_s8(0x100000001, vshl_u32(v63, -2));
      v64 = (v52 & 1) == 0;
    }

    v16[1].i32[0] = v64;
    *(v7 + 155) = 0;
    if (*(v149 + 4 * v62))
    {
      if (v175)
      {
        v65 = *(v9 + 16) + 2;
        *(v9 + 16) = v65;
        v66 = *(v9 + 4);
        if (v66 < 2)
        {
          v71 = 2 - v66;
          v72 = v66 | 0x1E;
          *(v9 + 4) = v66 | 0x1E;
          v68 = (*v9 << (2 - v66)) & *(v9 + 40);
          if (v65 <= *(v9 + 20))
          {
            v73 = *(v9 + 24);
            v74 = *(v9 + 8);
            *(v9 + 8) = v74 + 1;
            LODWORD(v73) = bswap32(*(v73 + 4 * v74));
            *v9 = v73;
            v68 |= *(v140 + 4 * v71) & (v73 >> v72);
          }

          else
          {
            ++*(v9 + 8);
            *v9 = 0;
          }
        }

        else
        {
          v67 = v66 - 2;
          *(v9 + 4) = v67;
          v68 = (*v9 >> v67) & *(v9 + 40);
        }

        if (v68 >= 4)
        {
          return 0xFFFFFFFFLL;
        }

        v70 = 0x201FEFFu >> (8 * v68);
      }

      else
      {
        v70 = tabDQuant[SD_Gobble(cdfDQuant, v9, (v14 + 296154))] - 2;
      }

      *(v7 + 155) = v70;
      v69 = *(v7 + 153) + v70;
      *(v7 + 153) = v69;
      if ((v69 - 1) > 0x1Eu)
      {
        return 0xFFFFFFFFLL;
      }

      *(v7 + 152) = v69;
    }

    else
    {
      v69 = *(v7 + 153);
    }

    *(*v148 + (*(v10 + 24) + *(a3 + 20) * *(v10 + 20)) + 136) = v69;
    *(v147 + 22 * *(v10 + 20) + *(v10 + 24)) = *(v7 + 153);
    if (v178[17] != 1)
    {
      goto LABEL_184;
    }

    v75 = *(v7 + 154);
    if (v75 > 4)
    {
      return 0xFFFFFFFFLL;
    }

    if (v75 == 2)
    {
      v141 = a6;
      v91 = -4;
      v92 = 5473;
      v93 = v139;
      v158 = a5;
      v159 = v15;
      while (1)
      {
        if (v175)
        {
          v94 = decodeMVD(v9, v164[4]);
          v95 = v9;
          v96 = v94;
          v97 = decodeMVD(v95, v164[4]);
          result = 7;
          if (v96 == -99 || v97 == -99)
          {
            return result;
          }
        }

        else
        {
          v98 = SD_Gobble(cdfMVD, v9, (a1 + 296154));
          v99 = v9;
          v96 = tabMVD[v98];
          v97 = tabMVD[SD_Gobble(cdfMVD, v99, (a1 + 296154))];
        }

        v100 = pvx4(a4, v91 + 5, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
        v101 = pvy4(a4, v91 + 5, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
        v102 = v96 | 0xFFFFFFC0;
        if ((v96 & 0x20) == 0)
        {
          v102 = v96;
        }

        v103 = v97 | 0xFFFFFFC0;
        if ((v97 & 0x20) == 0)
        {
          v103 = v97;
        }

        v104 = v100 + v102;
        *v93 = v100 + v102;
        v105 = v101 + v103;
        v93[6] = v101 + v103;
        if (v178[18])
        {
          v9 = v177;
          v15 = v159;
          if ((v100 + 31) < 0x40)
          {
            LOBYTE(v106) = v104;
            a5 = v158;
            v7 = v163;
            v16 = v169;
            goto LABEL_128;
          }

          v106 = (v104 << 26 >> 31) & 0xFFFFFFC0 | v104 & 0x3F;
          *v93 = v106;
          v108 = v100 <= -32;
          a5 = v158;
          v7 = v163;
          if (v108)
          {
            v16 = v169;
            if (v106 > 0)
            {
              v109 = -64;
              goto LABEL_127;
            }
          }

          else
          {
            v16 = v169;
            if ((v104 & 0x20) != 0)
            {
              v109 = 64;
LABEL_127:
              v106 += v109;
              *v93 = v106;
            }
          }

LABEL_128:
          if ((v101 + 31) >= 0x40)
          {
            v110 = (v105 << 26 >> 31) & 0xFFFFFFC0 | v105 & 0x3F;
            v93[6] = v110;
            if (v101 > -32)
            {
              if ((v105 & 0x20) != 0)
              {
                v105 = v110 + 64;
                goto LABEL_136;
              }
            }

            else if (v110 >= 1)
            {
              v105 = v110 - 64;
              goto LABEL_136;
            }

            v105 = (v105 << 26 >> 31) & 0xFFFFFFC0 | v105 & 0x3F;
          }

          goto LABEL_137;
        }

        v9 = v177;
        v15 = v159;
        if (v104 < -32)
        {
          break;
        }

        a5 = v158;
        v7 = v163;
        v16 = v169;
        if (v104 >= 32)
        {
          v107 = -64;
          goto LABEL_119;
        }

LABEL_120:
        if (v105 <= -33)
        {
          v105 += 64;
LABEL_124:
          LOBYTE(v106) = v104;
LABEL_136:
          v93[6] = v105;
          goto LABEL_137;
        }

        if (v105 >= 32)
        {
          v105 -= 64;
          goto LABEL_124;
        }

        LOBYTE(v106) = v104;
LABEL_137:
        v111 = *(v10 + 20);
        v112 = *(v10 + 24);
        v113 = (a4 + v92 + 12 * (v112 + 1) + 288 * (v111 + 1));
        *(v113 - 1) = v106;
        *v113 = v105;
        ++v93;
        v92 += 5472;
        if (__CFADD__(v91++, 1))
        {
          a6 = v141;
          v14 = a1;
          goto LABEL_171;
        }
      }

      v107 = 64;
      a5 = v158;
      v7 = v163;
      v16 = v169;
LABEL_119:
      v104 += v107;
      *v93 = v104;
      goto LABEL_120;
    }

    if (v75 - 3 > 1 || v178[22])
    {
      break;
    }

    *(v7 + 206) = 0;
    *(v7 + 198) = 0;
    v116 = 6;
    v117 = v138;
    v118 = xmmword_2778F7A60;
    *(v7 + 214) = 0;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v118)).u8[0])
      {
        *(v117 - 1) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v118)).i32[1])
      {
        *v117 = 0;
      }

      v118 = vaddq_s64(v118, v161);
      v117 += 2;
      v116 -= 2;
    }

    while (v116);
    v111 = *(v10 + 20);
    v112 = *(v10 + 24);
    v119 = 12 * (v112 + 1);
    *(a4 + 288 * (v111 + 1) + v119) = 0;
    *(v153 + 288 * (v111 + 1) + v119) = 0;
    *(v152 + 288 * (v111 + 1) + v119) = 0;
    *(v151 + 288 * (v111 + 1) + v119) = 0;
    *(v150 + 288 * (v111 + 1) + v119) = 0;
LABEL_171:
    if (v178[22] && (v16[2].i32[1] & 0xFFFFFFFE) == 2)
    {
      if (v175)
      {
        *(v7 + 218) = decodeMVD(v9, v164[4]);
        v126 = decodeMVD(v9, v164[4]);
        *(v7 + 242) = v126;
        v127 = *(v7 + 218);
        result = 7;
        if (v127 == -99 || v126 == -99)
        {
          return result;
        }

        v14 = a1;
        v9 = v177;
        if ((v127 & 0x20) == 0)
        {
          goto LABEL_181;
        }
      }

      else
      {
        *(v7 + 218) = tabMVD[SD_Gobble(cdfMVD, v9, (v14 + 296154))];
        v126 = tabMVD[SD_Gobble(cdfMVD, v9, (v14 + 296154))];
        *(v7 + 242) = v126;
        v127 = *(v7 + 218);
        if ((v127 & 0x20) == 0)
        {
LABEL_181:
          if ((v126 & 0x20) != 0)
          {
            v126 |= 0xFFFFFFC0;
            *(v7 + 242) = v126;
          }

          v128 = (v154 + 288 * (*(v10 + 20) + 1) + 12 * (*(v10 + 24) + 1));
          *v128 = v127;
          v128[1] = v126;
          goto LABEL_184;
        }
      }

      v127 |= 0xFFFFFFC0;
      *(v7 + 218) = v127;
      goto LABEL_181;
    }

    *(v154 + 288 * (v111 + 1) + 12 * (v112 + 1)) = 0;
LABEL_184:
    if (v168)
    {
      goto LABEL_185;
    }

    result = H263DMPR_MBS16(v14, v53, v54, v55, v56, a7);
    if (result)
    {
      return result;
    }

    if (!a7)
    {
      DumpDecoded263MB3S16(v14, v146, v145, v155);
    }

    if (v178[22])
    {
      if (v16[2].i32[1] == 3)
      {
        result = H263DMPR_MB_pbS16(v14, v134, v135, v136, v137, a7);
        if (result)
        {
          return result;
        }
      }
    }

LABEL_193:
    ++v15;
    a5 += 2;
    a6 += 2;
    *(v10 + 24) = v15;
    v8 = v174;
    if (v15 >= *(a3 + 20))
    {
      return 0;
    }
  }

  if (!v175)
  {
    v81 = SD_Gobble(cdfMVD, v9, (v14 + 296154));
    v82 = v9;
    v78 = tabMVD[v81];
    v79 = tabMVD[SD_Gobble(cdfMVD, v82, (v14 + 296154))];
LABEL_86:
    if (v178[21])
    {
      v83 = pvx4(a4, 0, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
      v84 = pvy4(a4, 0, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
    }

    else
    {
      v83 = pvx(a4, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
      v84 = pvy(a4, *(v10 + 20), *(v10 + 24), *(a2 + 4), *(a3 + 40));
    }

    v85 = v78 | 0xFFFFFFC0;
    if ((v78 & 0x20) == 0)
    {
      v85 = v78;
    }

    v86 = v79 | 0xFFFFFFC0;
    if ((v79 & 0x20) == 0)
    {
      v86 = v79;
    }

    v87 = v83 + v85;
    *(v7 + 198) = v83 + v85;
    v88 = v84 + v86;
    *(v7 + 222) = v84 + v86;
    v14 = a1;
    if (v178[18])
    {
      v9 = v177;
      if ((v83 + 31) < 0x40)
      {
        LOBYTE(v89) = v87;
        v16 = v169;
        goto LABEL_161;
      }

      v89 = (v87 << 26 >> 31) & 0xFFFFFFC0 | v87 & 0x3F;
      *(v7 + 198) = v89;
      if (v83 > -32)
      {
        v16 = v169;
        if ((v87 & 0x20) == 0)
        {
          goto LABEL_161;
        }

        v115 = 64;
      }

      else
      {
        v16 = v169;
        if (v89 <= 0)
        {
          goto LABEL_161;
        }

        v115 = -64;
      }

      v89 += v115;
      *(v7 + 198) = v89;
LABEL_161:
      if ((v84 + 31) >= 0x40)
      {
        v120 = (v88 << 26 >> 31) & 0xFFFFFFC0 | v88 & 0x3F;
        *(v7 + 222) = v120;
        if (v84 > -32)
        {
          if ((v88 & 0x20) != 0)
          {
            v88 = v120 + 64;
            goto LABEL_169;
          }
        }

        else if (v120 >= 1)
        {
          v88 = v120 - 64;
          goto LABEL_169;
        }

        v88 = (v88 << 26 >> 31) & 0xFFFFFFC0 | v88 & 0x3F;
      }

LABEL_170:
      v111 = *(v10 + 20);
      v112 = *(v10 + 24);
      v121 = (a4 + 288 * (v111 + 1) + 12 * (v112 + 1));
      *v121 = v89;
      v121[1] = v88;
      v122 = (v153 + 288 * (v111 + 1) + 12 * (v112 + 1));
      *v122 = v89;
      v122[1] = v88;
      v123 = (v152 + 288 * (v111 + 1) + 12 * (v112 + 1));
      *v123 = v89;
      v123[1] = v88;
      v124 = (v151 + 288 * (v111 + 1) + 12 * (v112 + 1));
      *v124 = v89;
      v124[1] = v88;
      v125 = (v150 + 288 * (v111 + 1) + 12 * (v112 + 1));
      *v125 = v89;
      v125[1] = v88;
      goto LABEL_171;
    }

    v9 = v177;
    if (v87 >= -32)
    {
      v16 = v169;
      if (v87 < 32)
      {
        goto LABEL_153;
      }

      v90 = -64;
    }

    else
    {
      v90 = 64;
      v16 = v169;
    }

    v87 += v90;
    *(v7 + 198) = v87;
LABEL_153:
    if (v88 > -33)
    {
      if (v88 < 32)
      {
        LOBYTE(v89) = v87;
        goto LABEL_170;
      }

      v88 -= 64;
    }

    else
    {
      v88 += 64;
    }

    LOBYTE(v89) = v87;
LABEL_169:
    *(v7 + 222) = v88;
    goto LABEL_170;
  }

  v76 = decodeMVD(v9, v164[4]);
  v77 = v9;
  v78 = v76;
  v79 = decodeMVD(v77, v164[4]);
  result = 7;
  if (v78 != -99 && v79 != -99)
  {
    goto LABEL_86;
  }

  return result;
}

int **dealWithMBOnError(int **result, uint64_t a2, void *a3, void *a4, int a5, int a6, signed int a7, int a8, uint64_t a9, uint64_t a10)
{
  v38 = result;
  if (a6 >= 1)
  {
    v13 = 0;
    v14 = *result;
    v37 = (*result + 47);
    if (a8 == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = 3;
    }

    v36 = v15;
    v35 = a7 / 2;
    v34 = 12 * a6;
    v16 = a2 + 288 * (a5 + 1);
    v17 = a10 + 1;
    v32 = v16 + 5484;
    v33 = v16;
    v31 = v16 + 10957;
    v30 = v16 + 10956;
    v18 = a9 + 1;
    v29 = v16 + 16428;
    v28 = v16 + 21901;
    v27 = v16 + 21900;
    v26 = v16 + 27373;
    v19 = *result;
    do
    {
      v20 = v19[19] + v14[a5];
      v21 = v19[85] + *(v37 + 4 * a5);
      v22 = v33 + v13;
      *(v22 + 12) = 0;
      *(v32 + v13) = 0;
      *(v30 + v13) = 0;
      *(v31 + v13) = 0;
      *(v29 + v13) = 0;
      *(v27 + v13) = 0;
      *(v28 + v13) = 0;
      *(v26 + v13 - 1) = 0;
      *(v38 + 154) = v36;
      *(v22 + 14) = v36;
      Copy8x8(*a3 + v14[42] + v20, *a4 + v14[42] + v20, a7);
      v23 = v14[43] + v20;
      Copy8x8(*a3 + v23, *a4 + v23, a7);
      v24 = v14[44] + v20;
      Copy8x8(*a3 + v24, *a4 + v24, a7);
      v25 = v14[45] + v20;
      Copy8x8(*a3 + v25, *a4 + v25, a7);
      Copy8x8(a3[1] + v21, a4[1] + v21, v35);
      result = Copy8x8(a3[2] + v21, a4[2] + v21, v35);
      *(v18 - 1) = 257;
      *(v17 - 1) = 257;
      ++v19;
      v13 += 12;
      v17 += 2;
      v18 += 2;
    }

    while (v34 != v13);
  }

  return result;
}

uint64_t H263DMPR_MBS16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a6;
  v8 = 0;
  v9 = *(a1 + 296182);
  v10 = *(a1 + 296238);
  v11 = *(a1 + 296230);
  v12 = v9 + 330;
  v13 = *(v9 + 330 + 4 * *(v9 + 154));
  v14 = v9 + 8;
  v79 = v11 + 32;
  v80 = v9 + 254;
  v15 = v10[4];
  v16 = v10[6];
  v84 = v10[5];
  v89 = *(*(a1 + 296214) + 19);
  v83 = (&cdfLast + 12 * v13);
  v82 = (&cdfRun + 260 * v13);
  v81 = (&cdfLevel + 1020 * v13);
  v86 = v16 + 1788;
  v87 = v16 + 1532;
  v74 = v15 + 68608;
  v75 = v9 + 56;
  v73 = v15 + 34816;
  v17 = 0uLL;
  v85 = &cdfTCoef + 1664 * v13;
  v88 = v9 + 8;
  v76 = v9 + 330;
  v77 = v9;
  while (1)
  {
    v18 = *(v14 + 8 * v8);
    *(v18 + 6) = v17;
    *(v18 + 7) = v17;
    *(v18 + 4) = v17;
    *(v18 + 5) = v17;
    *(v18 + 2) = v17;
    *(v18 + 3) = v17;
    *v18 = v17;
    *(v18 + 1) = v17;
    if (*(v12 + 4 * *(v9 + 154)))
    {
      break;
    }

    v22 = 0;
LABEL_17:
    if (!*(v80 + 4 * v8))
    {
      v34 = 0;
      v33 = 0;
      if (!v6)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    }

    LODWORD(v33) = 0;
    LODWORD(v34) = 0;
    v35 = 0;
    do
    {
      if (v89)
      {
        v36 = SD_Gobble(&v85[416 * v35], v11, (a1 + 296154));
        if (v36 == 102)
        {
          v37 = tabLast[SD_Gobble(v83, v11, (a1 + 296154))];
          v38 = tabRun[SD_Gobble(v82, v11, (a1 + 296154))];
          LOBYTE(v39) = ctabLevel[SD_Gobble(v81, v11, (a1 + 296154))];
        }

        else
        {
          v41 = tabTCoef[v36];
          v42 = v41 & 0xF;
          v37 = (v41 >> 12) & 1;
          v38 = (v41 >> 4);
          if (SD_Gobble(cdfSign, v11, (a1 + 296154)))
          {
            v39 = -v42;
          }

          else
          {
            LOBYTE(v39) = v42;
          }
        }

        v35 -= v35 > 2;
LABEL_31:
        v17 = 0uLL;
        goto LABEL_32;
      }

      v40 = decodeTC(v11, *v84);
      if (v40 != 6913)
      {
        if (v40 == 65437)
        {
          return 9;
        }

        v37 = (v40 >> 7) & 1;
        v39 = v40 & 0xF;
        if ((v40 & 0x40) != 0)
        {
          v39 = -v39;
        }

        v38 = v40 >> 8;
        goto LABEL_31;
      }

      v46 = *(v11 + 16);
      *(v11 + 16) = v46 + 1;
      v47 = *(v11 + 4);
      if (v47)
      {
        v48 = *v11;
        v49 = v47 - 1;
        v37 = (*v11 >> (v47 - 1)) & 1;
        *(v11 + 16) = v46 + 7;
        v17 = 0uLL;
        if ((v47 - 1) <= 5)
        {
          v50 = 7 - v47;
          v51 = v47 + 25;
          *(v11 + 4) = v51;
          v38 = (v48 << v50) & *(v11 + 56);
          if ((v46 + 7) <= *(v11 + 20))
          {
            v60 = *(v11 + 24);
            v61 = *(v11 + 8);
            *(v11 + 8) = v61 + 1;
            v48 = bswap32(*(v60 + 4 * v61));
            *v11 = v48;
            v38 |= *(v79 + 4 * v50) & (v48 >> v51);
          }

          else
          {
            v48 = 0;
            ++*(v11 + 8);
            *v11 = 0;
          }

          *(v11 + 16) = v46 + 15;
LABEL_56:
          *(v11 + 4) = v51 - 8;
          v39 = (v48 >> (v51 - 8)) & *(v11 + 64);
          goto LABEL_32;
        }
      }

      else
      {
        *(v11 + 4) = 31;
        v17 = 0uLL;
        if ((v46 + 1) <= *(v11 + 20))
        {
          v52 = *(v11 + 24);
          v53 = *(v11 + 8);
          *(v11 + 8) = v53 + 1;
          v48 = bswap32(*(v52 + 4 * v53));
          v37 = v48 >> 31;
        }

        else
        {
          v48 = 0;
          v37 = 0;
          ++*(v11 + 8);
        }

        *v11 = v48;
        v49 = 31;
      }

      v51 = v49 - 6;
      v38 = (v48 >> (v49 - 6)) & *(v11 + 56);
      v54 = v46 + 15;
      *(v11 + 16) = v46 + 15;
      if ((v49 - 6) >= 8)
      {
        goto LABEL_56;
      }

      v55 = 14 - v49;
      v56 = v51 | 0x18;
      *(v11 + 4) = v56;
      v39 = (v48 << v55) & *(v11 + 64);
      if (v54 <= *(v11 + 20))
      {
        v58 = *(v11 + 24);
        v59 = *(v11 + 8);
        *(v11 + 8) = v59 + 1;
        v57 = bswap32(*(v58 + 4 * v59));
        v39 = *(v79 + 4 * v55) & (v57 >> v56) | v39 & 0xFE;
      }

      else
      {
        v57 = 0;
        ++*(v11 + 8);
      }

      *v11 = v57;
LABEL_32:
      v43 = v38 + v22;
      if (v38 + v22 > 63)
      {
        return 9;
      }

      v44 = *(v87 + 4 * v43);
      if (v44 <= v33)
      {
        v33 = v33;
      }

      else
      {
        v33 = v44;
      }

      v45 = *(v86 + 4 * v43);
      if (v45 <= v34)
      {
        v34 = v34;
      }

      else
      {
        v34 = v45;
      }

      v18 = *(v88 + 8 * v8);
      v22 = v43 + 1;
      v18[v43] = v39;
      ++v35;
    }

    while (!v37);
    v6 = a6;
    v12 = v76;
    v9 = v77;
    if (a6)
    {
      goto LABEL_78;
    }

LABEL_60:
    if (*(v80 + 4 * v8) || *(v12 + 4 * *(v9 + 154)))
    {
      v62 = 152;
      if (v8 < 4)
      {
        v62 = 153;
      }

      v63 = *(v9 + v62);
      if (v22 == 1)
      {
        Mr_LaForgeS16(*v18, v18, *(v12 + 4 * *(v9 + 154)), v63);
      }

      else
      {
        v64 = (v63 << 8) | 0x80;
        v65 = v74 + 4 * v64;
        v66 = v73 + 4 * v64;
        if (v33 > 0 || v34 >= 3)
        {
          v68 = *(v75 + 8 * v8);
          v71 = v65;
          v72 = v66;
          v70 = v63;
          if (v33 > 3 || v34 > 3)
          {
            if (v33 > 3)
            {
              if (v34 > 3)
              {
                IZigZagBlock8x8S16(v18, v68);
                iDct8x8fS16(*(v75 + 8 * v8), *(v88 + 8 * v8), v70, *(v12 + 4 * *(v9 + 154)), v33, v34, v71, v72);
              }

              else
              {
                IZigZagBlock8x4S16(v18, v68);
                iColRow8x4fS16(*(v75 + 8 * v8), *(v88 + 8 * v8), v70, *(v12 + 4 * *(v9 + 154)), v33, v34, v71, v72);
              }
            }

            else
            {
              IZigZagBlock4x8S16(v18, v68);
              iRowCol4x8f1S16(*(v75 + 8 * v8), *(v88 + 8 * v8), v70, *(v12 + 4 * *(v9 + 154)), v33, v34, v71, v72);
            }
          }

          else
          {
            IZigZagBlock4x4S16(v18, v68);
            iRowCol4x4f1S16(*(v75 + 8 * v8), *(v88 + 8 * v8), v70, *(v12 + 4 * *(v9 + 154)), v33, v34, v71, v72);
          }
        }

        else
        {
          v67 = *(v75 + 8 * v8);
          *v67 = *v18;
          v67[1] = v18[1];
          v67[2] = v18[5];
          iRowCol1x3fS16(v67, v18, v63, *(v12 + 4 * *(v9 + 154)), v65, v66);
        }
      }

      v17 = 0uLL;
    }

LABEL_78:
    ++v8;
    v14 = v88;
    if (v8 == 6)
    {
      return 0;
    }
  }

  if (v89)
  {
    v19 = SD_Gobble(cdfIntraDC, v11, (a1 + 296154));
    v17 = 0uLL;
    v20 = tabIntraDC[v19];
    v21 = v20;
    v18 = *(v14 + 8 * v8);
  }

  else
  {
    v23 = *(v11 + 16) + 8;
    *(v11 + 16) = v23;
    v24 = *(v11 + 4);
    if (v24 < 8)
    {
      v26 = 8 - v24;
      v27 = v24 | 0x18;
      *(v11 + 4) = v27;
      v28 = (*v11 << v26) & *(v11 + 64);
      *v18 = (*v11 << v26) & *(v11 + 64);
      if (v23 > *(v11 + 20))
      {
        v21 = v28;
        ++*(v11 + 8);
        *v11 = 0;
        goto LABEL_13;
      }

      v29 = *(v11 + 24);
      v30 = *(v11 + 8);
      *(v11 + 8) = v30 + 1;
      LODWORD(v29) = bswap32(*(v29 + 4 * v30));
      v31 = *(v79 + 4 * v26);
      *v11 = v29;
      v20 = v31 & (v29 >> v27) | v28;
    }

    else
    {
      v25 = v24 - 8;
      *(v11 + 4) = v25;
      v20 = (*v11 >> v25) & *(v11 + 64);
    }

    v21 = v20;
  }

  *v18 = v20;
LABEL_13:
  v32 = v21 - 255;
  if (!v32)
  {
    *v18 = 128;
LABEL_16:
    v22 = 1;
    goto LABEL_17;
  }

  if (v32 >= 0xFFFFFF02)
  {
    goto LABEL_16;
  }

  return 8;
}

uint64_t H263DMPR_MB_pbS16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a6;
  v8 = 0;
  v9 = *(a1 + 296182);
  v10 = *(a1 + 296238);
  v11 = *(a1 + 296230);
  v12 = v9 + 8;
  v13 = v9 + 56;
  v14 = v10[4];
  v15 = v10[6];
  v66 = v10[5];
  v57 = v9;
  v64 = v11 + 32;
  v69 = *(*(a1 + 296214) + 19);
  v16 = v9 + 286;
  v68 = v15 + 1532;
  v67 = v15 + 1788;
  v55 = v14 + 34816;
  v56 = v14 + 68608;
  v17 = 0uLL;
  v58 = v9 + 8;
  v60 = v9 + 56;
  v61 = v9 + 286;
  do
  {
    v18 = *(v12 + 8 * v8);
    v65 = *(v13 + 8 * v8);
    *(v18 + 6) = v17;
    *(v18 + 7) = v17;
    *(v18 + 4) = v17;
    *(v18 + 5) = v17;
    *(v18 + 2) = v17;
    *(v18 + 3) = v17;
    *v18 = v17;
    *(v18 + 1) = v17;
    v19 = *(v16 + 4 * v8);
    if (!v19)
    {
      v22 = 0;
      v21 = 0;
      if (!v6)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

    v62 = v8;
    v20 = 0;
    v21 = 0;
    LODWORD(v22) = 0;
    v23 = 0;
    do
    {
      if (v69)
      {
        v24 = SD_Gobble(&cdfTCoef[104 * v23], v11, (a1 + 296154));
        if (v24 == 102)
        {
          v25 = tabLast[SD_Gobble(cdfLast, v11, (a1 + 296154))];
          v26 = tabRun[SD_Gobble(cdfRun, v11, (a1 + 296154))];
          LOBYTE(v27) = ctabLevel[SD_Gobble(cdfLevel, v11, (a1 + 296154))];
        }

        else
        {
          v29 = tabTCoef[v24];
          v30 = v29 & 0xF;
          v25 = (v29 >> 12) & 1;
          v26 = (v29 >> 4);
          if (SD_Gobble(cdfSign, v11, (a1 + 296154)))
          {
            v27 = -v30;
          }

          else
          {
            LOBYTE(v27) = v30;
          }
        }

        v23 -= v23 > 2;
LABEL_16:
        v17 = 0uLL;
        goto LABEL_17;
      }

      v28 = decodeTC(v11, *v66);
      if (v28 != 6913)
      {
        if (v28 == 65437)
        {
          return 9;
        }

        v25 = (v28 >> 7) & 1;
        v27 = v28 & 0xF;
        if ((v28 & 0x40) != 0)
        {
          v27 = -v27;
        }

        v26 = v28 >> 8;
        goto LABEL_16;
      }

      v33 = *(v11 + 16);
      *(v11 + 16) = v33 + 1;
      v34 = *(v11 + 4);
      if (v34)
      {
        v35 = *v11;
        v36 = v34 - 1;
        v25 = (*v11 >> (v34 - 1)) & 1;
        *(v11 + 16) = v33 + 7;
        v17 = 0uLL;
        if ((v34 - 1) <= 5)
        {
          v37 = 7 - v34;
          v38 = v34 + 25;
          *(v11 + 4) = v38;
          v26 = (v35 << v37) & *(v11 + 56);
          if ((v33 + 7) <= *(v11 + 20))
          {
            v47 = *(v11 + 24);
            v48 = *(v11 + 8);
            *(v11 + 8) = v48 + 1;
            v35 = bswap32(*(v47 + 4 * v48));
            *v11 = v35;
            v26 |= *(v64 + 4 * v37) & (v35 >> v38);
          }

          else
          {
            v35 = 0;
            ++*(v11 + 8);
            *v11 = 0;
          }

          *(v11 + 16) = v33 + 15;
LABEL_40:
          *(v11 + 4) = v38 - 8;
          v27 = (v35 >> (v38 - 8)) & *(v11 + 64);
          goto LABEL_17;
        }
      }

      else
      {
        *(v11 + 4) = 31;
        v17 = 0uLL;
        if ((v33 + 1) <= *(v11 + 20))
        {
          v39 = *(v11 + 24);
          v40 = *(v11 + 8);
          *(v11 + 8) = v40 + 1;
          v35 = bswap32(*(v39 + 4 * v40));
          v25 = v35 >> 31;
        }

        else
        {
          v35 = 0;
          v25 = 0;
          ++*(v11 + 8);
        }

        *v11 = v35;
        v36 = 31;
      }

      v38 = v36 - 6;
      v26 = (v35 >> (v36 - 6)) & *(v11 + 56);
      v41 = v33 + 15;
      *(v11 + 16) = v33 + 15;
      if ((v36 - 6) >= 8)
      {
        goto LABEL_40;
      }

      v42 = 14 - v36;
      v43 = v38 | 0x18;
      *(v11 + 4) = v43;
      v27 = (v35 << v42) & *(v11 + 64);
      if (v41 <= *(v11 + 20))
      {
        v45 = *(v11 + 24);
        v46 = *(v11 + 8);
        *(v11 + 8) = v46 + 1;
        v44 = bswap32(*(v45 + 4 * v46));
        v27 = *(v64 + 4 * v42) & (v44 >> v43) | v27 & 0xFE;
      }

      else
      {
        v44 = 0;
        ++*(v11 + 8);
      }

      *v11 = v44;
LABEL_17:
      v31 = v26 + v20;
      if (v26 + v20 > 63)
      {
        return 9;
      }

      if (*(v68 + 4 * v31) > v21)
      {
        v21 = *(v68 + 4 * v31);
      }

      v32 = *(v67 + 4 * v31);
      if (v32 <= v22)
      {
        v22 = v22;
      }

      else
      {
        v22 = v32;
      }

      v20 = v31 + 1;
      v18[v31] = v27;
      ++v23;
    }

    while (!v25);
    v19 = v31 == 0;
    v6 = a6;
    v16 = v61;
    v8 = v62;
    v12 = v58;
    v13 = v60;
    if (!a6)
    {
LABEL_44:
      if (!*(v16 + 4 * v8))
      {
        goto LABEL_60;
      }

      v49 = 152;
      if (v8 < 4)
      {
        v49 = 153;
      }

      v50 = *(v57 + v49);
      if (v19)
      {
        Mr_LaForgeS16(*v18, v18, 0, v50);
        v17 = 0uLL;
        v16 = v61;
        goto LABEL_60;
      }

      v51 = (v50 << 8) | 0x80;
      if (v21 <= 0 && v22 < 3)
      {
        *v65 = *v18;
        v65[1] = v18[1];
        v65[2] = v18[5];
        iRowCol1x3fS16(v65, v18, v50, 0, v56 + 4 * v51, v55 + 4 * v51);
        goto LABEL_55;
      }

      v63 = *(v57 + v49);
      if (v21 > 3 || v22 > 3)
      {
        v53 = v55 + 4 * v51;
        v54 = v56 + 4 * v51;
        if (v21 > 3)
        {
          IZigZagBlock8x8S16(v18, v65);
          iRowCol8x8f1S16(v65, v18, v63, 0, v21, v22, v54, v53);
        }

        else
        {
          IZigZagBlock4x8S16(v18, v65);
          iRowCol4x8f1S16(v65, v18, v63, 0, v21, v22, v54, v53);
        }

        v13 = v60;
        v16 = v61;
        v17 = 0uLL;
      }

      else
      {
        IZigZagBlock4x4S16(v18, v65);
        iRowCol4x4f1S16(v65, v18, v63, 0, v21, v22, v56 + 4 * v51, v55 + 4 * v51);
LABEL_55:
        v17 = 0uLL;
        v13 = v60;
        v16 = v61;
      }
    }

LABEL_60:
    ++v8;
  }

  while (v8 != 6);
  return 0;
}

uint64_t InitHuffmanTables(uint64_t a1, int a2)
{
  if (*a1)
  {
    return 0;
  }

  v5 = MEM_NewClear(80);
  *a1 = v5;
  if (!v5)
  {
    return 1;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return 0;
    }

    if (!InitDecodeTCTables(v5) && !InitDecodeMCBPCINTERTables((*a1 + 16)) && !InitDecodeCBPYTables((*a1 + 24)) && !InitDecodeMCBPCINTRATables((*a1 + 8)))
    {
      v6 = (*a1 + 32);

      return InitDecodeMVDTables(v6);
    }

    return 1;
  }

  if (InitEncMCBPCINTRATables((v5 + 5)) || InitEncMCBPCINTERTables(*a1 + 48) || InitEncCBPYTables(*a1 + 56) || InitEncMVDTables((*a1 + 64)))
  {
    return 1;
  }

  v7 = (*a1 + 72);

  return InitEncTCTables(v7);
}

uint64_t InitDecodeTCTables(char **a1)
{
  v2 = MEM_NewClear(4608);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = v2 + 2048;
  memset_pattern16(v2, &unk_2778FAE90, 0x800uLL);
  for (i = 0; i != 1024; i += 16)
  {
    *&v4[i] = 0uLL;
  }

  v6 = &word_2778FA77C;
  v7 = &unk_2778FA77E;
  v8 = &word_2778FA780;
  v9 = 360;
  LOWORD(v10) = 1023;
  do
  {
    v12 = v7[3];
    v7 += 3;
    v11 = v12;
    if (v12 < v10)
    {
      v10 = v10;
      v13 = *v6;
      v14 = *v8;
      do
      {
        *&v3[2 * v10] = v13;
        v3[v10-- + 2048] = v14;
      }

      while (v10 > v11);
    }

    v6 += 3;
    v8 += 3;
    LOWORD(v10) = v11;
    v15 = v9 >= 3;
    v9 -= 3;
  }

  while (v9 != 0 && v15);
  v16 = *a1;
  v17 = *a1 + 3072;
  v18 = v16 + 4096;
  memset_pattern16(v17, &unk_2778FAE90, 0x400uLL);
  for (j = 0; j != 512; j += 16)
  {
    *&v18[j] = 0uLL;
  }

  v20 = &word_2778FAA54;
  v21 = &unk_2778FAA56;
  v22 = &word_2778FAA58;
  v23 = 255;
  LOWORD(v24) = 271;
  do
  {
    v26 = v21[3];
    v21 += 3;
    v25 = v26;
    if (v26 < v24)
    {
      v24 = v24;
      v27 = *v20;
      v28 = *v22;
      do
      {
        *(v17 + v24) = v27;
        *(v17 + v24-- + 1024) = v28;
      }

      while (v24 > v25);
    }

    v20 += 3;
    v22 += 3;
    LOWORD(v24) = v25;
    v15 = v23 >= 3;
    v23 -= 3;
  }

  while (v23 != 0 && v15);
  return 0;
}

uint64_t InitDecodeMCBPCINTERTables(void *a1)
{
  v2 = MEM_NewClear(512);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  *&v3 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v3 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  v2[14] = v3;
  v2[15] = v3;
  v2[12] = v3;
  v2[13] = v3;
  v2[10] = v3;
  v2[11] = v3;
  v2[8] = v3;
  v2[9] = v3;
  v2[6] = v3;
  v2[7] = v3;
  v2[4] = v3;
  v2[5] = v3;
  v2[2] = v3;
  v2[3] = v3;
  *v2 = v3;
  v2[1] = v3;
  v2[16] = 0u;
  v2[17] = 0u;
  v2[18] = 0u;
  v2[19] = 0u;
  v2[20] = 0u;
  v2[21] = 0u;
  v2[22] = 0u;
  v2[23] = 0u;
  v2[24] = 0u;
  v2[25] = 0u;
  v2[26] = 0u;
  v2[27] = 0u;
  v2[28] = 0u;
  v2[29] = 0u;
  v4 = &word_2778FAC92;
  v5 = &unk_2778FAC94;
  v6 = &word_2778FAC96;
  v7 = 48;
  LOWORD(v8) = 255;
  v2[30] = 0u;
  v2[31] = 0u;
  do
  {
    v10 = v5[3];
    v5 += 3;
    v9 = v10;
    if (v10 < v8)
    {
      v8 = v8;
      v11 = *v4;
      v12 = *v6;
      do
      {
        v13 = v2 + v8;
        *v13 = v11;
        v13[256] = v12;
        --v8;
      }

      while (v8 > v9);
    }

    v4 += 3;
    v6 += 3;
    LOWORD(v8) = v9;
    v14 = v7 >= 3;
    v7 -= 3;
  }

  while (v7 != 0 && v14);
  return 0;
}

uint64_t InitDecodeCBPYTables(void *a1)
{
  v2 = MEM_NewClear(128);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  *&v3 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v3 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  v2[2] = v3;
  v2[3] = v3;
  *v2 = v3;
  v2[1] = v3;
  v2[4] = 0u;
  v2[5] = 0u;
  v4 = &word_2778FACFA;
  v5 = &unk_2778FACFC;
  v6 = &word_2778FACFE;
  v7 = 48;
  LOWORD(v8) = 63;
  v2[6] = 0u;
  v2[7] = 0u;
  do
  {
    v10 = v5[3];
    v5 += 3;
    v9 = v10;
    if (v10 < v8)
    {
      v8 = v8;
      v11 = *v4;
      v12 = *v6;
      do
      {
        v13 = v2 + v8;
        *v13 = v11;
        v13[64] = v12;
        --v8;
      }

      while (v8 > v9);
    }

    v4 += 3;
    v6 += 3;
    LOWORD(v8) = v9;
    v14 = v7 >= 3;
    v7 -= 3;
  }

  while (v7 != 0 && v14);
  return 0;
}

uint64_t InitDecodeMCBPCINTRATables(void *a1)
{
  v2 = MEM_NewClear(128);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  *&v3 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v3 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  v2[2] = v3;
  v2[3] = v3;
  *v2 = v3;
  v2[1] = v3;
  v2[4] = 0u;
  v2[5] = 0u;
  v4 = &word_2778FAC5A;
  v5 = &unk_2778FAC5C;
  v6 = &word_2778FAC5E;
  v7 = 24;
  LOWORD(v8) = 63;
  v2[6] = 0u;
  v2[7] = 0u;
  do
  {
    v10 = v5[3];
    v5 += 3;
    v9 = v10;
    if (v10 < v8)
    {
      v8 = v8;
      v11 = *v4;
      v12 = *v6;
      do
      {
        v13 = v2 + v8;
        *v13 = v11;
        v13[64] = v12;
        --v8;
      }

      while (v8 > v9);
    }

    v4 += 3;
    v6 += 3;
    LOWORD(v8) = v9;
    v14 = v7 >= 3;
    v7 -= 3;
  }

  while (v7 != 0 && v14);
  return 0;
}

uint64_t InitDecodeMVDTables(char **a1)
{
  v2 = MEM_NewClear(4096);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  memset(v2, 157, 0x800uLL);
  bzero(v3 + 2048, 0x800uLL);
  v4 = &word_2778FAD62;
  v5 = &unk_2778FAD64;
  v6 = &word_2778FAD66;
  v7 = 147;
  LOWORD(v8) = 2047;
  do
  {
    v10 = v5[3];
    v5 += 3;
    v9 = v10;
    if (v10 < v8)
    {
      v8 = v8;
      v11 = *v4;
      v12 = *v6;
      do
      {
        v13 = &v3[v8];
        *v13 = v11;
        v13[2048] = v12;
        --v8;
      }

      while (v8 > v9);
    }

    v4 += 3;
    v6 += 3;
    LOWORD(v8) = v9;
    v14 = v7 >= 3;
    v7 -= 3;
  }

  while (v7 != 0 && v14);
  return 0;
}

BOOL InitEncMCBPCINTRATables(uint64_t a1)
{
  v2 = MEM_NewClear(16);
  *a1 = v2;
  if (v2)
  {
    v2[4] = 1;
    **a1 = 1;
    *(*a1 + 5) = 1;
    *(*a1 + 1) = 1;
    *(*a1 + 6) = 2;
    *(*a1 + 2) = 2;
    *(*a1 + 7) = 3;
    *(*a1 + 3) = 3;
    *(*a1 + 8) = 1;
    *(*a1 + 11) = 3;
    *(*a1 + 10) = 3;
    *(*a1 + 9) = 3;
    *(*a1 + 12) = 4;
    *(*a1 + 15) = 6;
    *(*a1 + 14) = 6;
    *(*a1 + 13) = 6;
  }

  return v2 == 0;
}

BOOL InitEncMCBPCINTERTables(uint64_t a1)
{
  v2 = MEM_NewClear(48);
  *a1 = v2;
  if (v2)
  {
    v2[20] = 1;
    **a1 = 1;
    *(*a1 + 18) = 3;
    *(*a1 + 15) = 3;
    *(*a1 + 14) = 3;
    *(*a1 + 12) = 3;
    *(*a1 + 4) = 3;
    *(*a1 + 1) = 3;
    *(*a1 + 19) = 2;
    *(*a1 + 8) = 2;
    *(*a1 + 2) = 2;
    *(*a1 + 11) = 5;
    *(*a1 + 9) = 5;
    *(*a1 + 7) = 5;
    *(*a1 + 3) = 5;
    *(*a1 + 5) = 7;
    *(*a1 + 6) = 6;
    *(*a1 + 17) = 4;
    *(*a1 + 16) = 4;
    *(*a1 + 13) = 4;
    *(*a1 + 10) = 4;
    *(*a1 + 24) = 1;
    *(*a1 + 25) = 4;
    *(*a1 + 26) = 4;
    *(*a1 + 27) = 6;
    *(*a1 + 28) = 3;
    *(*a1 + 29) = 7;
    *(*a1 + 30) = 7;
    *(*a1 + 31) = 9;
    *(*a1 + 32) = 3;
    *(*a1 + 33) = 7;
    *(*a1 + 34) = 7;
    *(*a1 + 35) = 8;
    *(*a1 + 36) = 5;
    *(*a1 + 37) = 8;
    *(*a1 + 38) = 8;
    *(*a1 + 39) = 7;
    *(*a1 + 40) = 6;
    *(*a1 + 41) = 9;
    *(*a1 + 42) = 9;
    *(*a1 + 43) = 9;
    *(*a1 + 44) = 9;
  }

  return v2 == 0;
}

BOOL InitEncCBPYTables(uint64_t a1)
{
  v2 = MEM_NewClear(32);
  *a1 = v2;
  if (v2)
  {
    *v2 = 3;
    *(*a1 + 1) = 5;
    *(*a1 + 2) = 4;
    *(*a1 + 3) = 9;
    *(*a1 + 4) = 3;
    *(*a1 + 5) = 7;
    *(*a1 + 6) = 2;
    *(*a1 + 7) = 11;
    *(*a1 + 8) = 2;
    *(*a1 + 9) = 3;
    *(*a1 + 10) = 5;
    *(*a1 + 11) = 10;
    *(*a1 + 12) = 4;
    *(*a1 + 13) = 8;
    *(*a1 + 14) = 6;
    *(*a1 + 15) = 3;
    *(*a1 + 16) = 4;
    *(*a1 + 17) = 5;
    *(*a1 + 18) = 5;
    *(*a1 + 19) = 4;
    *(*a1 + 20) = 5;
    *(*a1 + 21) = 4;
    *(*a1 + 22) = 6;
    *(*a1 + 23) = 4;
    *(*a1 + 24) = 5;
    *(*a1 + 25) = 6;
    *(*a1 + 26) = 4;
    *(*a1 + 27) = 4;
    *(*a1 + 28) = 4;
    *(*a1 + 29) = 4;
    *(*a1 + 30) = 4;
    *(*a1 + 31) = 2;
  }

  return v2 == 0;
}

BOOL InitEncMVDTables(void *a1)
{
  v2 = MEM_NewClear(128);
  *a1 = v2;
  if (v2)
  {
    for (i = 0; i != 64; ++i)
    {
      *(*a1 + i) = byte_2778FA4FC[i];
      *(*a1 + i + 64) = byte_2778FA53C[i];
    }
  }

  return v2 == 0;
}

BOOL InitEncTCTables(void *a1)
{
  v2 = MEM_NewClear(67584);
  *a1 = v2;
  if (v2)
  {
    v3 = 0;
    for (i = 0; i != 64; ++i)
    {
      v5 = 256;
      v6 = v3;
      do
      {
        *(*a1 + v6) = 3;
        *(*a1 + v6 + 0x8000) = 7;
        *(*a1 + v6 + 0x4000) = 3;
        *(*a1 + v6++ + 49152) = 7;
        --v5;
      }

      while (v5);
      *(*a1 + 8 * i + 0x10000) = *a1 + (i << 8) + 128;
      *(*a1 + 8 * i + 66048) = *a1 + (i << 8) + 16512;
      *(*a1 + 8 * i + 66560) = *a1 + (i << 8) + 32896;
      *(*a1 + 8 * i + 67072) = *a1 + (i << 8) + 49280;
      v3 += 256;
    }

    v7 = 0;
    do
    {
      v8 = byte_2778FA57C[v7 + 4];
      v9 = byte_2778FA57C[v7];
      v10 = byte_2778FA57C[v7 + 1];
      v11 = byte_2778FA57C[v7 + 2];
      *(*(*a1 + (v9 << 9) + 8 * v10 + 0x10000) + v11) = 2 * v8;
      *(*(*a1 + (v9 << 9) + 8 * v10 + 0x10000) - v11) = (2 * v8) | 1;
      v12 = byte_2778FA57C[v7 + 3];
      *(*(*a1 + (v9 << 9) + 8 * v10 + 66560) + v11) = v12;
      *(*(*a1 + (v9 << 9) + 8 * v10 + 66560) - v11) = v12;
      v13 = v7 >= 0x1F9;
      v7 += 5;
    }

    while (!v13);
  }

  return v2 == 0;
}

uint64_t KillHuffmanTables(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (*v1)
    {
      MEM_Dispose(*v1);
      *v1 = 0;
      v1 = *a1;
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      MEM_Dispose(v3);
      *(v1 + 8) = 0;
      v1 = *a1;
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      MEM_Dispose(v4);
      *(v1 + 16) = 0;
      v1 = *a1;
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      MEM_Dispose(v5);
      *(v1 + 24) = 0;
      v1 = *a1;
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      MEM_Dispose(v6);
      *(v1 + 32) = 0;
      v1 = *a1;
    }

    v7 = *(v1 + 72);
    if (v7)
    {
      MEM_Dispose(v7);
      *(v1 + 72) = 0;
      v1 = *a1;
    }

    v8 = *(v1 + 40);
    if (v8)
    {
      MEM_Dispose(v8);
      *(v1 + 40) = 0;
      v1 = *a1;
    }

    v9 = *(v1 + 48);
    if (v9)
    {
      MEM_Dispose(v9);
      *(v1 + 48) = 0;
      v1 = *a1;
    }

    v10 = *(v1 + 56);
    if (v10)
    {
      MEM_Dispose(v10);
      *(v1 + 56) = 0;
      v1 = *a1;
    }

    v11 = *(v1 + 64);
    if (v11)
    {
      MEM_Dispose(v11);
      *(v1 + 64) = 0;
      v1 = *a1;
    }

    MEM_Dispose(v1);
    *a1 = 0;
  }

  return 0;
}

uint64_t decodeTC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 + 10;
  *(a1 + 16) = v2 + 10;
  v4 = *(a1 + 4);
  if (v4 < 0xA)
  {
    v8 = 10 - v4;
    v5 = v4 + 22;
    *(a1 + 4) = v4 + 22;
    v7 = (*a1 << (10 - v4)) & *(a1 + 72);
    if (v3 <= *(a1 + 20))
    {
      v9 = a1 + 4 * v8;
      v10 = *(a1 + 24);
      v11 = *(a1 + 8);
      *(a1 + 8) = v11 + 1;
      v6 = bswap32(*(v10 + 4 * v11));
      *a1 = v6;
      v7 |= *(v9 + 32) & (v6 >> v5);
    }

    else
    {
      v6 = 0;
      ++*(a1 + 8);
      *a1 = 0;
    }
  }

  else
  {
    v5 = v4 - 10;
    *(a1 + 4) = v4 - 10;
    v6 = *a1;
    v7 = (*a1 >> (v4 - 10)) & *(a1 + 72);
  }

  if (v7 < 34)
  {
    v16 = v2 + 13;
    *(a1 + 16) = v2 + 13;
    v17 = v5 - 3;
    if (v5 < 3)
    {
      v19 = 3 - v5;
      v17 = v5 + 29;
      *(a1 + 4) = v5 + 29;
      v18 = (v6 << (3 - v5)) & *(a1 + 44);
      if (v16 <= *(a1 + 20))
      {
        v20 = a1 + 4 * v19;
        v21 = *(a1 + 24);
        v22 = *(a1 + 8);
        *(a1 + 8) = v22 + 1;
        LODWORD(v21) = bswap32(*(v21 + 4 * v22));
        *a1 = v21;
        v18 |= *(v20 + 32) & (v21 >> v17);
      }

      else
      {
        ++*(a1 + 8);
        *a1 = 0;
      }
    }

    else
    {
      *(a1 + 4) = v17;
      v18 = (v6 >> v17) & *(a1 + 44);
    }

    v23 = (v18 | (8 * v7)) & 0x1FF;
    v24 = v17 + *(a2 + v23 + 4096);
    *(a1 + 4) = v24;
    *(a1 + 16) = v16 - *(a2 + v23 + 4096);
    if (v24 >= 0x21)
    {
      v25 = *(a1 + 8);
      *(a1 + 4) = v24 - 32;
      *(a1 + 8) = v25 - 1;
      if (*(a1 + 20) >= (32 * (v25 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 24) + 4 * (v25 - 2)));
      }
    }

    v15 = (a2 + 2 * v23 + 3072);
  }

  else
  {
    v12 = a2 + v7;
    v13 = v5 + *(v12 + 2048);
    *(a1 + 4) = v13;
    *(a1 + 16) = v3 - *(v12 + 2048);
    if (v13 >= 0x21)
    {
      v14 = *(a1 + 8);
      *(a1 + 4) = v13 - 32;
      *(a1 + 8) = v14 - 1;
      if (*(a1 + 20) >= (32 * (v14 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 24) + 4 * (v14 - 2)));
      }
    }

    v15 = (a2 + 2 * v7);
  }

  return *v15;
}

uint64_t decodeMCBPCINTRA(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 + 6;
  *(a1 + 16) = v2 + 6;
  v4 = *(a1 + 4);
  if (v4 < 6)
  {
    v8 = 6 - v4;
    v5 = v4 + 26;
    *(a1 + 4) = v4 + 26;
    v7 = (*a1 << (6 - v4)) & *(a1 + 56);
    if (v3 <= *(a1 + 20))
    {
      v9 = a1 + 4 * v8;
      v10 = *(a1 + 24);
      v11 = *(a1 + 8);
      *(a1 + 8) = v11 + 1;
      v6 = bswap32(*(v10 + 4 * v11));
      *a1 = v6;
      v7 |= *(v9 + 32) & (v6 >> v5);
    }

    else
    {
      v6 = 0;
      ++*(a1 + 8);
      *a1 = 0;
    }
  }

  else
  {
    v5 = v4 - 6;
    *(a1 + 4) = v4 - 6;
    v6 = *a1;
    v7 = (*a1 >> (v4 - 6)) & *(a1 + 56);
  }

  if (v7 < 1)
  {
    v16 = v2 + 9;
    *(a1 + 16) = v2 + 9;
    v17 = v5 - 3;
    if (v5 < 3)
    {
      v19 = 3 - v5;
      v20 = v5 + 29;
      *(a1 + 4) = v5 + 29;
      v18 = (v6 << (3 - v5)) & *(a1 + 44);
      if (v16 <= *(a1 + 20))
      {
        v21 = *(a1 + 24);
        v22 = *(a1 + 8);
        *(a1 + 8) = v22 + 1;
        LODWORD(v21) = bswap32(*(v21 + 4 * v22));
        *a1 = v21;
        v18 |= *(a1 + 4 * v19 + 32) & (v21 >> v20);
      }

      else
      {
        ++*(a1 + 8);
        *a1 = 0;
      }
    }

    else
    {
      *(a1 + 4) = v17;
      v18 = (v6 >> v17) & *(a1 + 44);
    }

    if (v18 == 1)
    {
      return 8;
    }

    else
    {
      return 4294967197;
    }
  }

  else
  {
    v12 = a2 + v7;
    v13 = v5 + *(v12 + 64);
    *(a1 + 4) = v13;
    *(a1 + 16) = v3 - *(v12 + 64);
    if (v13 >= 0x21)
    {
      v14 = *(a1 + 8);
      *(a1 + 4) = v13 - 32;
      *(a1 + 8) = v14 - 1;
      if (*(a1 + 20) >= (32 * (v14 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 24) + 4 * (v14 - 2)));
      }
    }

    return *(a2 + v7);
  }
}

uint64_t decodeMCBPCINTER(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 + 8;
  *(a1 + 16) = v2 + 8;
  v4 = *(a1 + 4);
  if (v4 < 8)
  {
    v8 = 8 - v4;
    v5 = v4 | 0x18;
    *(a1 + 4) = v4 | 0x18;
    v7 = (*a1 << (8 - v4)) & *(a1 + 64);
    if (v3 <= *(a1 + 20))
    {
      v9 = a1 + 4 * v8;
      v10 = *(a1 + 24);
      v11 = *(a1 + 8);
      *(a1 + 8) = v11 + 1;
      v6 = bswap32(*(v10 + 4 * v11));
      *a1 = v6;
      v7 |= *(v9 + 32) & (v6 >> v5);
    }

    else
    {
      v6 = 0;
      ++*(a1 + 8);
      *a1 = 0;
    }
  }

  else
  {
    v5 = v4 - 8;
    *(a1 + 4) = v4 - 8;
    v6 = *a1;
    v7 = (*a1 >> (v4 - 8)) & *(a1 + 64);
  }

  if (v7 < 3)
  {
    *(a1 + 16) = v2 + 9;
    if (v5)
    {
      *(a1 + 4) = v5 - 1;
      v16 = (v6 >> (v5 - 1)) & 1;
    }

    else
    {
      *(a1 + 4) = 31;
      if ((v2 + 9) <= *(a1 + 20))
      {
        v17 = *(a1 + 24);
        v18 = *(a1 + 8);
        *(a1 + 8) = v18 + 1;
        LODWORD(v17) = bswap32(*(v17 + 4 * v18));
        *a1 = v17;
        v16 = v17 >> 31;
      }

      else
      {
        v16 = 0;
        *a1 = 0;
        ++*(a1 + 8);
      }
    }

    if (v16)
    {
      v19 = 20;
    }

    else
    {
      v19 = -99;
    }

    if (v16)
    {
      v20 = 18;
    }

    else
    {
      v20 = 19;
    }

    if (v16)
    {
      v21 = 7;
    }

    else
    {
      v21 = 17;
    }

    if (v7 != 2)
    {
      v21 = -99;
    }

    if (v7 == 1)
    {
      v21 = v20;
    }

    if (v7)
    {
      return v21;
    }

    else
    {
      return v19;
    }
  }

  else
  {
    v12 = a2 + v7;
    v13 = v5 + *(v12 + 256);
    *(a1 + 4) = v13;
    *(a1 + 16) = v3 - *(v12 + 256);
    if (v13 >= 0x21)
    {
      v14 = *(a1 + 8);
      *(a1 + 4) = v13 - 32;
      *(a1 + 8) = v14 - 1;
      if (*(a1 + 20) >= (32 * (v14 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 24) + 4 * (v14 - 2)));
      }
    }

    return *(a2 + v7);
  }
}

uint64_t decodeCBPY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) + 6;
  *(a1 + 16) = v2;
  v3 = *(a1 + 4);
  if (v3 < 6)
  {
    v6 = 6 - v3;
    v4 = v3 + 26;
    *(a1 + 4) = v3 + 26;
    v5 = (*a1 << (6 - v3)) & *(a1 + 56);
    if (v2 <= *(a1 + 20))
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 8);
      *(a1 + 8) = v8 + 1;
      LODWORD(v7) = bswap32(*(v7 + 4 * v8));
      *a1 = v7;
      v5 |= *(a1 + 4 * v6 + 32) & (v7 >> v4);
    }

    else
    {
      ++*(a1 + 8);
      *a1 = 0;
    }
  }

  else
  {
    v4 = v3 - 6;
    *(a1 + 4) = v3 - 6;
    v5 = (*a1 >> (v3 - 6)) & *(a1 + 56);
  }

  if (v5 < 2)
  {
    return 4294967197;
  }

  v9 = a2 + v5;
  v10 = v4 + *(v9 + 64);
  *(a1 + 4) = v10;
  *(a1 + 16) = v2 - *(v9 + 64);
  if (v10 >= 0x21)
  {
    v11 = *(a1 + 8);
    *(a1 + 4) = v10 - 32;
    *(a1 + 8) = v11 - 1;
    if (*(a1 + 20) >= (32 * (v11 - 1)))
    {
      *a1 = bswap32(*(*(a1 + 24) + 4 * (v11 - 2)));
    }
  }

  return *(a2 + v5);
}

uint64_t decodeMVD(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 + 11;
  *(a1 + 16) = v2 + 11;
  v4 = *(a1 + 4);
  if (v4 < 0xB)
  {
    v8 = 11 - v4;
    v5 = v4 + 21;
    *(a1 + 4) = v4 + 21;
    v7 = (*a1 << (11 - v4)) & *(a1 + 76);
    if (v3 <= *(a1 + 20))
    {
      v9 = a1 + 4 * v8;
      v10 = *(a1 + 24);
      v11 = *(a1 + 8);
      *(a1 + 8) = v11 + 1;
      v6 = bswap32(*(v10 + 4 * v11));
      *a1 = v6;
      v7 |= *(v9 + 32) & (v6 >> v5);
    }

    else
    {
      v6 = 0;
      ++*(a1 + 8);
      *a1 = 0;
    }
  }

  else
  {
    v5 = v4 - 11;
    *(a1 + 4) = v4 - 11;
    v6 = *a1;
    v7 = (*a1 >> (v4 - 11)) & *(a1 + 76);
  }

  if (v7 < 8)
  {
    *(a1 + 16) = v2 + 12;
    if (v5)
    {
      v17 = v5 - 1;
      *(a1 + 4) = v17;
      v18 = (v6 >> v17) & 1;
    }

    else
    {
      *(a1 + 4) = 31;
      if ((v2 + 12) <= *(a1 + 20))
      {
        v19 = *(a1 + 24);
        v20 = *(a1 + 8);
        *(a1 + 8) = v20 + 1;
        v6 = bswap32(*(v19 + 4 * v20));
        *a1 = v6;
        v18 = v6 >> 31;
      }

      else
      {
        v6 = 0;
        v18 = 0;
        *a1 = 0;
        ++*(a1 + 8);
      }

      v17 = 31;
    }

    if (v7 <= 3)
    {
      if (v7 == 1)
      {
        *(a1 + 16) = v2 + 13;
        if (v17)
        {
          *(a1 + 4) = v17 - 1;
          v28 = (v6 >> (v17 - 1)) & 1;
        }

        else
        {
          *(a1 + 4) = 31;
          if ((v2 + 13) <= *(a1 + 20))
          {
            v29 = *(a1 + 24);
            v30 = *(a1 + 8);
            *(a1 + 8) = v30 + 1;
            LODWORD(v29) = bswap32(*(v29 + 4 * v30));
            *a1 = v29;
            v28 = v29 >> 31;
          }

          else
          {
            v28 = 0;
            *a1 = 0;
            ++*(a1 + 8);
          }
        }

        v31 = v28 == 0;
        if (v28)
        {
          v32 = 32;
        }

        else
        {
          v32 = -99;
        }

        if (v31)
        {
          v33 = 31;
        }

        else
        {
          v33 = 33;
        }

        if (v18)
        {
          return v33;
        }

        else
        {
          return v32;
        }
      }

      else
      {
        if (v18)
        {
          v26 = 34;
        }

        else
        {
          v26 = 30;
        }

        if (v18)
        {
          v27 = 35;
        }

        else
        {
          v27 = 29;
        }

        if (v7 != 3)
        {
          v27 = -99;
        }

        if (v7 == 2)
        {
          return v26;
        }

        else
        {
          return v27;
        }
      }
    }

    else
    {
      if (v18)
      {
        v21 = 38;
      }

      else
      {
        v21 = 26;
      }

      if (v18)
      {
        v22 = 39;
      }

      else
      {
        v22 = 25;
      }

      if (v7 != 7)
      {
        v22 = -99;
      }

      if (v7 != 6)
      {
        v21 = v22;
      }

      v23 = v18 == 0;
      if (v18)
      {
        v24 = 36;
      }

      else
      {
        v24 = 28;
      }

      if (v23)
      {
        v25 = 27;
      }

      else
      {
        v25 = 37;
      }

      if (v7 != 5)
      {
        v25 = -99;
      }

      if (v7 != 4)
      {
        v24 = v25;
      }

      if (v7 <= 5)
      {
        return v24;
      }

      else
      {
        return v21;
      }
    }
  }

  else
  {
    v12 = a2 + v7;
    v13 = v5 + *(v12 + 2048);
    *(a1 + 4) = v13;
    *(a1 + 16) = v3 - *(v12 + 2048);
    if (v13 >= 0x21)
    {
      v14 = v13 - 32;
      v15 = *(a1 + 8);
      *(a1 + 4) = v14;
      *(a1 + 8) = v15 - 1;
      if (*(a1 + 20) >= (32 * (v15 - 1)))
      {
        *a1 = bswap32(*(*(a1 + 24) + 4 * (v15 - 2)));
      }
    }

    return *(a2 + v7);
  }
}

uint64_t Mr_LaForgeS16(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (result && !a3)
  {
    if (result >= 0)
    {
      LOWORD(v4) = result;
    }

    else
    {
      v4 = -result;
    }

    v5 = (((2 * v4) | 1) * a4 - ((1 - a4) & 1u) + 4) >> 3;
    if (result >= 0)
    {
      result = v5;
    }

    else
    {
      result = -v5;
    }
  }

  v6 = 0;
  v7 = vdupq_n_s16(result);
  do
  {
    *(a2 + v6) = v7;
    v6 += 16;
  }

  while (v6 != 128);
  return result;
}

uint64_t InitMacroBlockTables(int32x2_t **a1, unsigned int a2)
{
  if (a2 != 128 && a2 != 352 && a2 != 176)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  v5 = MEM_NewClear(432);
  *a1 = v5;
  if (!v5)
  {
    return 1;
  }

  v6 = a2 + 32;
  v7 = xmmword_2778F7A50;
  v8 = xmmword_2778F7A60;
  v9 = xmmword_2778FAEA0;
  v10 = v5 + 1;
  v11 = 20;
  v12 = vdupq_n_s64(0x13uLL);
  v13.i64[0] = 0x1000000010;
  v13.i64[1] = 0x1000000010;
  v14 = vdupq_n_s64(4uLL);
  v15.i64[0] = 0x4000000040;
  v15.i64[1] = 0x4000000040;
  do
  {
    v16 = vaddq_s32(v9, v13);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v8)), *v7.i8).u8[0])
    {
      v10[-1].i32[0] = v16.i32[0] * v6 + 16;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v8)), *&v7).i8[2])
    {
      v10[-1].i32[1] = v16.i32[1] * v6 + 16;
    }

    if (vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v7))).i32[1])
    {
      v10->i32[0] = v16.i32[2] * v6 + 16;
      v10->i32[1] = v16.i32[3] * v6 + 16;
    }

    v7 = vaddq_s64(v7, v14);
    v8 = vaddq_s64(v8, v14);
    v9 = vaddq_s32(v9, v15);
    v10 += 2;
    v11 -= 4;
  }

  while (v11);
  v17 = 0;
  v18 = xmmword_2778F7A50;
  v19 = xmmword_2778F7A60;
  v20 = v5 + 11;
  v21 = vdupq_n_s64(0x17uLL);
  v22 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v21, v19)), *v18.i8).u8[0])
    {
      v20[-2].i32[1] = v17;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x17uLL), *&v19)), *&v18).i8[2])
    {
      v20[-1].i32[0] = v17 + 16;
    }

    if (vuzp1_s16(*&v18, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x17uLL), *&v18))).i32[1])
    {
      v20[-1].i32[1] = v17 + 32;
      v20->i32[0] = v17 + 48;
    }

    v18 = vaddq_s64(v18, v22);
    v19 = vaddq_s64(v19, v22);
    v17 += 64;
    v20 += 2;
  }

  while (v17 != 384);
  v23 = (a2 >> 1) + 16;
  v24 = xmmword_2778F7A50;
  v25 = xmmword_2778F7A60;
  v26 = xmmword_2778FAEB0;
  v27 = v5 + 25;
  v28 = 20;
  v29 = vdupq_n_s64(0x13uLL);
  v30.i64[0] = 0x800000008;
  v30.i64[1] = 0x800000008;
  v31 = vdupq_n_s64(4uLL);
  v32.i64[0] = 0x2000000020;
  v32.i64[1] = 0x2000000020;
  do
  {
    v33 = vaddq_s32(v26, v30);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v29, v25)), *v24.i8).u8[0])
    {
      v27[-2].i32[1] = v33.i32[0] * v23 + 8;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v25)), *&v24).i8[2])
    {
      v27[-1].i32[0] = v33.i32[1] * v23 + 8;
    }

    if (vuzp1_s16(*&v24, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v24))).i32[1])
    {
      v27[-1].i32[1] = v33.i32[2] * v23 + 8;
      v27->i32[0] = v33.i32[3] * v23 + 8;
    }

    v24 = vaddq_s64(v24, v31);
    v25 = vaddq_s64(v25, v31);
    v26 = vaddq_s32(v26, v32);
    v27 += 2;
    v28 -= 4;
  }

  while (v28);
  v34 = 0;
  v35 = xmmword_2778F7A50;
  v36 = xmmword_2778F7A60;
  v37 = v5 + 44;
  v38 = vdupq_n_s64(0x17uLL);
  v39 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v38, v36)), *v35.i8).u8[0])
    {
      v37[-2].i32[1] = v34;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x17uLL), *&v36)), *&v35).i8[2])
    {
      v37[-1].i32[0] = v34 + 8;
    }

    if (vuzp1_s16(*&v35, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x17uLL), *&v35))).i32[1])
    {
      v37[-1].i32[1] = v34 + 16;
      v37->i32[0] = v34 + 24;
    }

    v35 = vaddq_s64(v35, v39);
    v36 = vaddq_s64(v36, v39);
    v34 += 32;
    v37 += 2;
  }

  while (v34 != 192);
  v4 = 0;
  v5[21] = 0x800000000;
  v5[22] = vadd_s32(vdup_n_s32(8 * a2), 0x10800000100);
  return v4;
}

uint64_t InitMacroBlock(uint64_t *a1)
{
  if (*a1)
  {
    return 0;
  }

  v3 = MEM_NewClear(374);
  *a1 = v3;
  if (v3)
  {
    v4 = 104;
    while (1)
    {
      *(*a1 + v4 - 96) = MEM_NewClear(128);
      if (!*(*a1 + v4 - 96))
      {
        break;
      }

      *(*a1 + v4 - 48) = MEM_NewClear(128);
      if (!*(*a1 + v4 - 48))
      {
        break;
      }

      *(*a1 + v4) = MEM_NewClear(128);
      v5 = *a1;
      if (!*(*a1 + v4))
      {
        break;
      }

      v4 += 8;
      if (v4 == 152)
      {
        result = 0;
        *(v5 + 153) = 31;
        *(v5 + 246) = 0;
        *(v5 + 310) = xmmword_2778FAEC0;
        *(v5 + 326) = xmmword_2778FAED0;
        *&v6 = 0x100000001;
        *(&v6 + 1) = 0x100000001;
        *(v5 + 342) = v6;
        *(v5 + 358) = 1;
        *(v5 + 366) = 0;
        return result;
      }
    }
  }

  return 1;
}

uint64_t KillMacroBlock(void **a1)
{
  if (*a1)
  {
    for (i = 104; i != 152; i += 8)
    {
      v3 = *a1;
      v4 = *(*a1 + i - 96);
      if (v4)
      {
        MEM_Dispose(v4);
        *(*a1 + i - 96) = 0;
        v3 = *a1;
      }

      v5 = *&v3[i - 48];
      if (v5)
      {
        MEM_Dispose(v5);
        *(*a1 + i - 48) = 0;
        v3 = *a1;
      }

      v6 = *&v3[i];
      if (v6)
      {
        MEM_Dispose(v6);
        *(*a1 + i) = 0;
      }
    }

    MEM_Dispose(*a1);
    *a1 = 0;
  }

  return 0;
}

uint64_t MC_InvYS16(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = (a6 >> 1) * a4 + (a5 >> 1);
  v7 = v6;
  if ((a6 | a5))
  {
    v20 = a6 & 1;
    if (a5 & 1) == 0 || (a6)
    {
      v33 = a4;
      v34 = a4 + 1;
      v35 = a4 + 2;
      v36 = a4 + 3;
      v37 = a4 + 4;
      v38 = a4 + 5;
      v39 = a4 + 6;
      v40 = a4 + 7;
      v41 = a2 + v6;
      if ((a5 & 1) != 0 || !v20)
      {
        v71 = 0;
        v72 = 0;
        v73 = v7 + v34;
        v74 = v7 + v35;
        v75 = v7 + v36;
        v76 = v7 + v37;
        v77 = v7 + v38;
        v78 = v7 + a4 + 8;
        v79 = v7 + v40;
        v80 = v7 + v39;
        v81 = a2 + v33 + v7;
        v82 = a2 + v73;
        v83 = a2 + v74;
        v84 = a3 + 3;
        v85 = a2 + v75;
        v86 = a2 + v76;
        v87 = a2 + v77;
        v88 = a2 + v78;
        v89 = a2 + v79;
        v90 = a2 + v80;
        do
        {
          v91 = (result + v72);
          v92 = (v84 + v71);
          v93 = (v41 + v71);
          v94 = *(result + v72) + ((*(v41 + v71) + *(v81 + v71) + *(v41 + v71 + 1) + *(v82 + v71) + 2) >> 2);
          if (v94 >= 255)
          {
            v94 = 255;
          }

          *(v92 - 3) = v94 & ~(v94 >> 31);
          v95 = v91[1] + ((v93[1] + *(v82 + v71) + v93[2] + *(v83 + v71) + 2) >> 2);
          if (v95 >= 255)
          {
            v95 = 255;
          }

          *(v92 - 2) = v95 & ~(v95 >> 31);
          v96 = v91[2] + ((v93[2] + *(v83 + v71) + v93[3] + *(v85 + v71) + 2) >> 2);
          if (v96 >= 255)
          {
            v96 = 255;
          }

          *(v92 - 1) = v96 & ~(v96 >> 31);
          v97 = v91[3] + ((v93[3] + *(v85 + v71) + v93[4] + *(v86 + v71) + 2) >> 2);
          if (v97 >= 255)
          {
            v97 = 255;
          }

          *v92 = v97 & ~(v97 >> 31);
          v98 = v91[4] + ((v93[4] + *(v86 + v71) + v93[5] + *(v87 + v71) + 2) >> 2);
          if (v98 >= 255)
          {
            v98 = 255;
          }

          v92[1] = v98 & ~(v98 >> 31);
          v99 = v91[5] + ((v93[5] + *(v87 + v71) + v93[6] + *(v90 + v71) + 2) >> 2);
          if (v99 >= 255)
          {
            v99 = 255;
          }

          v92[2] = v99 & ~(v99 >> 31);
          v100 = v91[6] + ((v93[6] + *(v90 + v71) + v93[7] + *(v89 + v71) + 2) >> 2);
          if (v100 >= 255)
          {
            v100 = 255;
          }

          v92[3] = v100 & ~(v100 >> 31);
          v101 = v91[7] + ((v93[7] + *(v89 + v71) + v93[8] + *(v88 + v71) + 2) >> 2);
          if (v101 >= 255)
          {
            v101 = 255;
          }

          v92[4] = v101 & ~(v101 >> 31);
          v72 += 16;
          v71 += v33;
        }

        while (v72 != 128);
      }

      else
      {
        v42 = 0;
        v43 = 0;
        v44 = v7 + v34;
        v45 = v7 + v35;
        v46 = v7 + v36;
        v47 = v7 + v37;
        v48 = v7 + v38;
        v49 = v7 + v40;
        v50 = v7 + v39;
        v51 = a2 + v33 + v7;
        v52 = a2 + v44;
        v53 = a2 + v45;
        v54 = a3 + 3;
        v55 = a2 + v46;
        v56 = a2 + v47;
        v57 = a2 + v48;
        v58 = a2 + v49;
        v59 = a2 + v50;
        do
        {
          v60 = (result + v43);
          v61 = (v54 + v42);
          v62 = (v41 + v42);
          v63 = *(result + v43) + ((*(v41 + v42) + *(v51 + v42) + 1) >> 1);
          if (v63 >= 255)
          {
            v63 = 255;
          }

          *(v61 - 3) = v63 & ~(v63 >> 31);
          v64 = v60[1] + ((v62[1] + *(v52 + v42) + 1) >> 1);
          if (v64 >= 255)
          {
            v64 = 255;
          }

          *(v61 - 2) = v64 & ~(v64 >> 31);
          v65 = v60[2] + ((v62[2] + *(v53 + v42) + 1) >> 1);
          if (v65 >= 255)
          {
            v65 = 255;
          }

          *(v61 - 1) = v65 & ~(v65 >> 31);
          v66 = v60[3] + ((v62[3] + *(v55 + v42) + 1) >> 1);
          if (v66 >= 255)
          {
            v66 = 255;
          }

          *v61 = v66 & ~(v66 >> 31);
          v67 = v60[4] + ((v62[4] + *(v56 + v42) + 1) >> 1);
          if (v67 >= 255)
          {
            v67 = 255;
          }

          v61[1] = v67 & ~(v67 >> 31);
          v68 = v60[5] + ((v62[5] + *(v57 + v42) + 1) >> 1);
          if (v68 >= 255)
          {
            v68 = 255;
          }

          v61[2] = v68 & ~(v68 >> 31);
          v69 = v60[6] + ((v62[6] + *(v59 + v42) + 1) >> 1);
          if (v69 >= 255)
          {
            v69 = 255;
          }

          v61[3] = v69 & ~(v69 >> 31);
          v70 = v60[7] + ((v62[7] + *(v58 + v42) + 1) >> 1);
          if (v70 >= 255)
          {
            v70 = 255;
          }

          v61[4] = v70 & ~(v70 >> 31);
          v43 += 16;
          v42 += v33;
        }

        while (v43 != 128);
      }
    }

    else
    {
      v21 = 0;
      v22 = (v6 + a2 + 4);
      v23 = (a3 + 4);
      do
      {
        v24 = (result + v21);
        v25 = *(result + v21) + ((*(v22 - 4) + *(v22 - 3) + 1) >> 1);
        if (v25 >= 255)
        {
          v25 = 255;
        }

        *(v23 - 4) = v25 & ~(v25 >> 31);
        v26 = v24[1] + ((*(v22 - 3) + *(v22 - 2) + 1) >> 1);
        if (v26 >= 255)
        {
          v26 = 255;
        }

        *(v23 - 3) = v26 & ~(v26 >> 31);
        v27 = v24[2] + ((*(v22 - 2) + *(v22 - 1) + 1) >> 1);
        if (v27 >= 255)
        {
          v27 = 255;
        }

        *(v23 - 2) = v27 & ~(v27 >> 31);
        v28 = v24[3] + ((*(v22 - 1) + *v22 + 1) >> 1);
        if (v28 >= 255)
        {
          v28 = 255;
        }

        *(v23 - 1) = v28 & ~(v28 >> 31);
        v29 = v24[4] + ((*v22 + v22[1] + 1) >> 1);
        if (v29 >= 255)
        {
          v29 = 255;
        }

        *v23 = v29 & ~(v29 >> 31);
        v30 = v24[5] + ((v22[1] + v22[2] + 1) >> 1);
        if (v30 >= 255)
        {
          v30 = 255;
        }

        v23[1] = v30 & ~(v30 >> 31);
        v31 = v24[6] + ((v22[2] + v22[3] + 1) >> 1);
        if (v31 >= 255)
        {
          v31 = 255;
        }

        v23[2] = v31 & ~(v31 >> 31);
        v32 = v24[7] + ((v22[3] + v22[4] + 1) >> 1);
        if (v32 >= 255)
        {
          v32 = 255;
        }

        v23[3] = v32 & ~(v32 >> 31);
        v21 += 16;
        v22 += a4;
        v23 += a4;
      }

      while (v21 != 128);
    }
  }

  else
  {
    v8 = 0;
    v9 = (v6 + a2 + 3);
    v10 = (a3 + 3);
    do
    {
      v11 = (result + v8);
      v12 = *(v9 - 3) + *(result + v8);
      if (v12 >= 255)
      {
        v12 = 255;
      }

      *(v10 - 3) = v12 & ~(v12 >> 31);
      v13 = *(v9 - 2) + v11[1];
      if (v13 >= 255)
      {
        v13 = 255;
      }

      *(v10 - 2) = v13 & ~(v13 >> 31);
      v14 = *(v9 - 1) + v11[2];
      if (v14 >= 255)
      {
        v14 = 255;
      }

      *(v10 - 1) = v14 & ~(v14 >> 31);
      v15 = *v9 + v11[3];
      if (v15 >= 255)
      {
        v15 = 255;
      }

      *v10 = v15 & ~(v15 >> 31);
      v16 = v9[1] + v11[4];
      if (v16 >= 255)
      {
        v16 = 255;
      }

      v10[1] = v16 & ~(v16 >> 31);
      v17 = v9[2] + v11[5];
      if (v17 >= 255)
      {
        v17 = 255;
      }

      v10[2] = v17 & ~(v17 >> 31);
      v18 = v9[3] + v11[6];
      if (v18 >= 255)
      {
        v18 = 255;
      }

      v10[3] = v18 & ~(v18 >> 31);
      v19 = v9[4] + v11[7];
      if (v19 >= 255)
      {
        v19 = 255;
      }

      v10[4] = v19 & ~(v19 >> 31);
      v8 += 16;
      v9 += a4;
      v10 += a4;
    }

    while (v8 != 128);
  }

  return result;
}