uint64_t sub_277585548(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  v6 = *(a1 + 60);
  v7 = *(a1 + 56);
  if ((*(*(a1 + 264) + 24) & 1) == 0)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    v9 = *(a1 + 16);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    if (v6 >= 1)
    {
      v11 = BytesPerRowOfPlane;
      v12 = *(a1 + 40);
      v13 = &BaseAddressOfPlane[a3 + BytesPerRowOfPlane * (a3 >> 32)];
      v14 = v6;
      do
      {
        memcpy(v13, v9, v7);
        v13 += v11;
        v9 += v12;
        --v14;
      }

      while (v14);
    }
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    v19 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
    v20 = v15 == 1;
    v21 = v15 == 1 ? v6 + 1 : v6;
    v22 = v21 >> v20;
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = *(a1 + 48);
      v25 = SHIDWORD(a3) >> v20;
      v26 = v15 != 3;
      if (v15 == 3)
      {
        v27 = v7;
      }

      else
      {
        v27 = v7 + 1;
      }

      v28 = v19 * v25;
      v29 = v27 >> v26;
      v30 = v16 + 2 * (a3 >> v26) + v28 + 32;
      do
      {
        if (v29 >= 1)
        {
          v31 = v30;
          v32 = 16;
          do
          {
            v36.val[0] = *(v17 + v32 - 16);
            v37.val[0] = *(v17 + v32);
            v36.val[1] = *(v18 + v32 - 16);
            v37.val[1] = *(v18 + v32);
            v33 = v31 - 32;
            vst2q_s8(v33, v36);
            vst2q_s8(v31, v37);
            v34 = v32 + 16;
            v32 += 32;
            v31 += 64;
          }

          while (v34 < v29);
        }

        v17 += v24;
        v18 += v24;
        ++v23;
        v30 += v19;
      }

      while (v23 != v22);
    }
  }

  return 0;
}

void sub_2775856E0(uint64_t a1)
{
  v2 = a1 + 36864;
  if (*(a1 + 24))
  {
    sub_2775858B8();
  }

  while (*(v2 + 232))
  {
    v3[0] = 0;
    v3[1] = 0;
    sub_277585FCC(a1, v3);
  }
}

void sub_277585798(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2775857B0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2775857B0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

const void **sub_27758581C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_277585850(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_277585884(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_277585F98(_Unwind_Exception *a1)
{
  sub_2775857B0(v1);
  sub_2775857B0(v1);
  _Unwind_Resume(a1);
}

void sub_277585FCC(uint64_t a1, uint64_t **a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v27 = 0;
  v2 = *a2;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a1 + 36864;
  v5 = v2[13];
  v6 = *(*(a1 + 37088) + 16);
  if (v6 != *v5)
  {
    fprintf(*MEMORY[0x277D85DF8], "Expecting %p, got %p\n", v6, *v5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(v4 + 224) + 16);
      v8 = *v5;
      *buf = 134218240;
      *&buf[4] = v7;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Expecting %p, got %p", buf, 0x16u);
    }

LABEL_5:
    sub_277586318(&v26);
    return;
  }

  v10 = *(v5 + 6);
  v11 = v2[33];
  *buf = 0;
  if (*a1 && (*(v11 + 24) & 1) == 0)
  {
    std::mutex::lock((a1 + 36936));
    if (*(v4 + 176) == 1 && sub_277584E40(a1 + 37000, v2) || (*(v4 + 136) = *(v2 + 7), v14 = *v2, *(v4 + 152) = *(*v2 + 33) != 0, *(v4 + 153) = *(v14 + 421) != 0, (PixelBuffer = sub_277586AF8(a1)) == 0))
    {
      PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
      PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, buf);
    }

    else
    {
      fwrite("Failed to create buffer pools\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create buffer pools", v28, 2u);
      }
    }

    std::mutex::unlock((a1 + 36936));
    v12 = *buf;
    v2 = *a2;
  }

  else
  {
    v12 = 0;
    PixelBuffer = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = sub_277586458;
  block[3] = &unk_288664220;
  block[4] = a1;
  block[5] = v12;
  v16 = a2[1];
  block[6] = v2;
  v22 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v5;
  v24 = v10 & 1;
  v25 = PixelBuffer;
  if (v10)
  {
    dispatch_group_wait(*(v4 + 192), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_group_async(*(v4 + 192), *(v4 + 184), block);
  }

  else
  {
    dispatch_sync(*(v4 + 184), block);
  }

  v17 = *(v4 + 224);
  v19 = *v17;
  v18 = v17[1];
  *(v19 + 8) = v18;
  *v18 = v19;
  --*(v4 + 232);
  operator delete(v17);
  v20 = *(v4 + 248);
  *(a1 + 37104) = 0u;
  if (v20)
  {
    sub_2775857B0(v20);
  }

  if (v22)
  {
    sub_2775857B0(v22);
  }
}

void sub_277586318(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *a1 + 36864;
  fprintf(*MEMORY[0x277D85DF8], "Failed to pull picture for frame %p, dropping\n", *(*(*a1 + 37088) + 16));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = *(*(v2 + 224) + 16);
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to pull picture for frame %p, dropping", buf, 0xCu);
  }

  if (*(v1 + 8))
  {
    VTTileDecoderSessionEmitDecodedTile();
  }

  else
  {
    VTDecoderSessionEmitDecodedFrame();
  }

  v4 = *(v2 + 224);
  v5 = *(v2 + 232);
  v7 = *v4;
  v6 = v4[1];
  *(v7 + 8) = v6;
  *v6 = v7;
  *(v2 + 232) = v5 - 1;
  operator delete(v4);
}

const void **sub_277586458(void *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  cf = v2;
  if (!*(v3 + 8))
  {
    v13 = a1[6];
    v14 = v13[33];
    if (*(*&v14 + 24) == 1)
    {
      if ((*(*&v14 + 25) & 1) == 0 && !sub_27758C584(v3 + 32, v13, **&v14))
      {
        *(*&v14 + 25) = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v34 = **&v14;
      cf = v34;
      if (v34)
      {
        CFRetain(v34);
      }
    }

    else if (v2)
    {
      sub_27758C584(v3 + 32, v13, v2);
    }

    if (*(*&v14 + 24) != 1)
    {
      goto LABEL_42;
    }

    if (*(*&v14 + 27) == 1)
    {
      v35 = *(*&v14 + 32);
      if (v35 == 1)
      {
LABEL_42:
        VTDecoderSessionEmitDecodedFrame();
        return sub_277584EB0(&cf);
      }

      CVPixelBufferUnlockBaseAddress(**&v14, v35);
    }

    *(*&v14 + 32) = 1;
    CVPixelBufferLockBaseAddress(**&v14, 1uLL);
    *(*&v14 + 27) = 1;
    goto LABEL_42;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(*(v3 + 16));
  v5 = a1[6];
  v6 = a1[8];
  v7 = *(v6 + 8);
  v8 = v5[8].u32[0];
  v9 = (v5[8].i32[1] - 8) >> 1;
  v10 = v8 > 3 || v9 > 2;
  if (!v10 && (v15 = Dimensions, v16 = *(v6 + 16), v17 = *(v6 + 28), v18 = v5[33], v19 = CVPixelBufferGetPixelFormatType(*(v6 + 8)), (v20 = &a800l800l010l01[24 * v8 + 8 * v9], v19 == *v20) || v19 == *(v20 + 1)))
  {
    Width = CVPixelBufferGetWidth(v7);
    Height = CVPixelBufferGetHeight(v7);
    extraColumnsOnRight = 0;
    extraColumnsOnLeft = 0;
    extraRowsOnBottom = 0;
    extraRowsOnTop = 0;
    CVPixelBufferGetExtendedPixels(v7, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
    if (extraColumnsOnLeft | extraRowsOnTop)
    {
      fwrite("Extended pixels top/left not supported\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Extended pixels top/left not supported", buf, 2u);
      }
    }

    else
    {
      v23 = v5[7].i32[0];
      if (v23 + v16 <= extraColumnsOnRight + Width && (v36 = v5[7].i32[1], v36 + (v16 >> 32) <= extraRowsOnBottom + Height) && __PAIR64__(v36, v23) == v15)
      {
        if (*(*&v18 + 26) == 1)
        {
          sub_2775897E0(v3 + 72, v5, v7, v16);
        }

        else
        {
          sub_27758C82C(v3 + 32, v5, v7, v16);
        }
      }

      else if (v17)
      {
        v24 = (v3 + 56);
        if (*(v3 + 56) || !VTPixelTransferSessionCreate(0, (v3 + 56)))
        {
          v56.origin.x = v16;
          v56.origin.y = SHIDWORD(v16);
          v56.size.width = v15.width;
          v56.size.height = v15.height;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v56);
          VTSessionSetProperty(*v24, *MEMORY[0x277CE2868], DictionaryRepresentation);
          VTSessionSetProperty(*v24, *MEMORY[0x277CE28C8], *MEMORY[0x277CBED10]);
          pixelBufferOut = 0;
          v25 = v5[7].i32[0];
          v26 = v5[7].i32[1];
          PixelFormatType = CVPixelBufferGetPixelFormatType(v7);
          CVPixelBufferCreate(0, v25, v26, PixelFormatType, 0, &pixelBufferOut);
          v28 = 0;
          v29 = pixelBufferOut;
          v30 = *MEMORY[0x277CC4CC0];
          *buf = *MEMORY[0x277CC4C00];
          v48 = v30;
          v31 = *MEMORY[0x277CC4B78];
          v49 = *MEMORY[0x277CC4D10];
          *v50 = v31;
          do
          {
            v32 = *&buf[v28];
            v33 = CVBufferCopyAttachment(v7, v32, 0);
            if (v33)
            {
              CVBufferSetAttachment(v29, v32, v33, kCVAttachmentMode_ShouldPropagate);
              CFRelease(v33);
            }

            v28 += 8;
          }

          while (v28 != 32);
          if (!sub_27758C82C(v3 + 32, v5, pixelBufferOut, 0))
          {
            VTPixelTransferSessionTransferImage(*v24, pixelBufferOut, v7);
          }

          sub_277584EB0(&pixelBufferOut);
          sub_2775885F0(&DictionaryRepresentation);
        }
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "Copying tile of size %dx%d to imagebuffer of size %zux%zu at offset %dx%d is outside bounds\n", v23, v5[7].i32[1], Width, Height, v16, HIDWORD(v16));
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v37 = v5[7].i32[0];
          v38 = v5[7].i32[1];
          *buf = 67110400;
          *&buf[4] = v37;
          LOWORD(v48) = 1024;
          *(&v48 + 2) = v38;
          HIWORD(v48) = 2048;
          v49 = Width;
          *v50 = 2048;
          *&v50[2] = Height;
          v51 = 1024;
          v52 = v16;
          v53 = 1024;
          v54 = HIDWORD(v16);
          _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Copying tile of size %dx%d to imagebuffer of size %zux%zu at offset %dx%d is outside bounds", buf, 0x2Eu);
        }
      }
    }
  }

  else
  {
    v11 = *MEMORY[0x277D85DF8];
    v12 = CVPixelBufferGetPixelFormatType(v7);
    fprintf(v11, "Copy to pixelformat %d not supported\n", v12);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = CVPixelBufferGetPixelFormatType(v7);
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Copy to pixelformat %d not supported", buf, 8u);
    }
  }

  VTTileDecoderSessionEmitDecodedTile();
  return sub_277584EB0(&cf);
}

void sub_277586A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  sub_2775885F0(va1);
  sub_277584EB0(va);
  _Unwind_Resume(a1);
}

void sub_277586ACC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_2775857B0(v1);
  }
}

uint64_t sub_277586ADC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_277586AF8(uint64_t a1)
{
  values[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 36864;
  v4 = (a1 + 37032);
  v3 = *(a1 + 37032);
  if (v3)
  {
    CFRelease(v3);
    *v4 = 0;
  }

  poolOut = v4;
  v5 = *(a1 + 37024);
  if (v5)
  {
    CFRelease(v5);
    v6 = *v4;
    *(a1 + 37024) = *v4;
    if (v6)
    {
      CFRetain(v6);
    }
  }

  else
  {
    *(a1 + 37024) = 0;
  }

  *(v2 + 176) = 0;
  v7 = *(v2 + 144);
  v107 = v7 == 1;
  v108 = v7 != 3;
  v117 = *(v2 + 148);
  v8 = *(v2 + 136);
  v9 = *(v2 + 140);
  v10 = MEMORY[0x277CBF138];
  v11 = MEMORY[0x277CBF150];
  theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  pixelBufferAttributes = CFDictionaryCreateMutable(0, 0, v10, v11);
  v12 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = *(v2 + 144);
  v106 = v7;
  if (v13 <= 3)
  {
    v14 = (*(v2 + 148) - 8) >> 1;
    if (v14 <= 2)
    {
      v12 = *&a800l800l010l01[24 * v13 + 8 * v14 + 4 * *(v2 + 152)];
    }
  }

  *valuePtr = v12;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  key = *MEMORY[0x277CC4E30];
  if (v15)
  {
    CFDictionaryAddValue(theDict, key, v15);
    CFRelease(v15);
  }

  *valuePtr = 64;
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  v114 = *MEMORY[0x277CC4E38];
  if (v16)
  {
    CFDictionaryAddValue(theDict, v114, v16);
    CFRelease(v16);
  }

  *valuePtr = 64;
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  v113 = *MEMORY[0x277CC4D60];
  if (v17)
  {
    CFDictionaryAddValue(theDict, v113, v17);
    CFRelease(v17);
  }

  v18 = ((v9 + 1) & 0xFFFFFFFE) - v9;
  v19 = ((v8 + (0x40u >> (v117 != 8)) - 1) & -(0x40u >> (v117 != 8))) - v8;
  if (v117 == 8 || *(a1 + 8))
  {
    if (v19 <= (((v8 + 127) & 0xFFFFFF80) - v8))
    {
      v19 = ((v8 + 127) & 0xFFFFFF80) - v8;
    }

    if (v18 <= (((v9 + 127) & 0xFFFFFF80) - v9))
    {
      v18 = ((v9 + 127) & 0xFFFFFF80) - v9;
    }

    v119 = 0;
    *valuePtr = CFNumberCreate(0, kCFNumberSInt32Type, &v119);
    values[0] = *valuePtr;
    v118 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    CFDictionaryAddValue(theDict, *MEMORY[0x277CC4D78], v118);
    sub_277587BC0(&v118);
    sub_277587BF4(valuePtr);
  }

  if (*a1 || *(v2 + 153) == 1)
  {
    if (qword_280A713D0 != -1)
    {
      dispatch_once(&qword_280A713D0, &unk_2886640C0);
    }

    if (byte_280A713D8 == 1)
    {
      *valuePtr = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v20 = *MEMORY[0x277CC4DE8];
      CFDictionaryAddValue(theDict, *MEMORY[0x277CC4DE8], *valuePtr);
      CFDictionaryAddValue(pixelBufferAttributes, v20, *valuePtr);
      CFDictionaryAddValue(Mutable, v20, *valuePtr);
      sub_277587C28(valuePtr);
    }
  }

  v109 = ((v9 + 127) & 0xFFFFFF80) - v9;
  v110 = ((v8 + 127) & 0xFFFFFF80) - v8;
  if (v19 <= 32)
  {
    v21 = 32;
  }

  else
  {
    v21 = v19;
  }

  if (*(v2 + 153))
  {
    v19 = v21;
  }

  v22 = theDict;
  *valuePtr = v19;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  v115 = *MEMORY[0x277CC4DB8];
  if (v23)
  {
    CFDictionaryAddValue(v22, v115, v23);
    CFRelease(v23);
  }

  v24 = theDict;
  *valuePtr = v18;
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  v112 = *MEMORY[0x277CC4DA0];
  if (v25)
  {
    CFDictionaryAddValue(v24, v112, v25);
    CFRelease(v25);
  }

  v26 = MEMORY[0x277CC4DD8];
  if (*a1)
  {
    v27 = theDict;
    *valuePtr = *(v2 + 136);
    v28 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    v29 = *MEMORY[0x277CC4EC8];
    if (v28)
    {
      CFDictionaryAddValue(v27, *MEMORY[0x277CC4EC8], v28);
      CFRelease(v28);
    }

    v30 = theDict;
    *valuePtr = *(v2 + 140);
    v31 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v31)
    {
      CFDictionaryAddValue(v30, *v26, v31);
      CFRelease(v31);
    }

    if (*(v2 + 148) == 10)
    {
      v32 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v33 = 0;
      *valuePtr = v32;
      v34 = *(v2 + 144);
      v35 = *(v2 + 148);
      if (v34 <= 3)
      {
        v36 = (v35 - 8) >> 1;
        if (v36 <= 2)
        {
          v33 = *&a024p02fp0vtp0f[24 * v34 + 48 + 8 * v36 + 4 * *(v2 + 152)];
        }
      }

      v37 = 0;
      if (v34 <= 3 && v35 >= 10)
      {
        v37 = *&a800l800l010l01[16 * v34 + 96 + 8 * (v35 > 0xA) + 4 * *(v2 + 152)];
      }

      v38 = *(v2 + 153);
      if (sub_27758C528(v38, v33))
      {
        LODWORD(v118) = v33;
        v39 = CFNumberCreate(0, kCFNumberSInt32Type, &v118);
        if (v39)
        {
          CFArrayAppendValue(v32, v39);
          CFRelease(v39);
        }

        v38 = *(v2 + 153);
      }

      if (sub_27758C528(v38, v37))
      {
        v40 = *valuePtr;
        LODWORD(v118) = v37;
        v41 = CFNumberCreate(0, kCFNumberSInt32Type, &v118);
        if (v41)
        {
          CFArrayAppendValue(v40, v41);
          CFRelease(v41);
        }

        v42 = *(v2 + 136) % 48;
        if (v42)
        {
          v43 = 48 - v42;
          v44 = theDict;
          if (48 - v42 <= v19)
          {
            v43 = v19;
          }

          LODWORD(v118) = v43;
          v45 = CFNumberCreate(0, kCFNumberSInt32Type, &v118);
          if (v45)
          {
            CFDictionarySetValue(v44, v115, v45);
            CFRelease(v45);
          }
        }
      }

      v46 = *valuePtr;
      LODWORD(v118) = v12;
      v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v118);
      if (v47)
      {
        CFArrayAppendValue(v46, v47);
        CFRelease(v47);
      }

      CFDictionarySetValue(theDict, key, *valuePtr);
      sub_277587C5C(valuePtr);
    }

    v48 = VTDecoderSessionSetPixelBufferAttributes();
    if (v48)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = theDict;
        _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "VTDecoderSessionSetPixelBufferAttributes failed for: %@", valuePtr, 0xCu);
      }

      goto LABEL_142;
    }
  }

  else
  {
    if (!*(a1 + 8))
    {
      fwrite("No active session!\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *valuePtr = 0;
        _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No active session!", valuePtr, 2u);
      }

      v48 = 4294954393;
      goto LABEL_142;
    }

    v49 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v118 = v49;
    *valuePtr = 0xFFFF;
    v50 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v50)
    {
      CFDictionaryAddValue(v49, *MEMORY[0x277CE2AB0], v50);
      CFRelease(v50);
    }

    v51 = v118;
    *valuePtr = 0xFFFF;
    v52 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v52)
    {
      CFDictionaryAddValue(v51, *MEMORY[0x277CE2AB8], v52);
      CFRelease(v52);
    }

    v53 = v118;
    *valuePtr = 1;
    v54 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v54)
    {
      CFDictionaryAddValue(v53, *MEMORY[0x277CE2AD0], v54);
      CFRelease(v54);
    }

    v55 = v118;
    *valuePtr = 1;
    v56 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v56)
    {
      CFDictionaryAddValue(v55, *MEMORY[0x277CE2AD8], v56);
      CFRelease(v56);
    }

    v57 = v118;
    *valuePtr = 1;
    v58 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v58)
    {
      CFDictionaryAddValue(v57, *MEMORY[0x277CE2AF0], v58);
      CFRelease(v58);
    }

    v59 = v118;
    *valuePtr = 1;
    v60 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v60)
    {
      CFDictionaryAddValue(v59, *MEMORY[0x277CE2AE8], v60);
      CFRelease(v60);
    }

    v61 = v118;
    *valuePtr = 0x7FFFFFFF;
    v62 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v62)
    {
      CFDictionaryAddValue(v61, *MEMORY[0x277CE2AA8], v62);
      CFRelease(v62);
    }

    v63 = v118;
    *valuePtr = 0x7FFFFFFF;
    v64 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v64)
    {
      CFDictionaryAddValue(v63, *MEMORY[0x277CE2A98], v64);
      CFRelease(v64);
    }

    v65 = v118;
    *valuePtr = 0x7FFFFFFFFFFFFFFFLL;
    v66 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
    if (v66)
    {
      CFDictionaryAddValue(v65, *MEMORY[0x277CE2AA0], v66);
      CFRelease(v66);
    }

    v67 = v118;
    *valuePtr = 64;
    v68 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v68)
    {
      CFDictionaryAddValue(v67, *MEMORY[0x277CE2AE0], v68);
      CFRelease(v68);
    }

    CFDictionaryAddValue(v118, *MEMORY[0x277CE2A90], *MEMORY[0x277CBED10]);
    if ((*(v2 + 177) & 1) == 0)
    {
      v48 = VTTileDecoderSessionSetTileDecodeRequirements();
      if (v48)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 138412546;
          *&valuePtr[4] = theDict;
          v124 = 2112;
          v125 = v118;
          _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "VTTileDecoderSessionSetTileDecodeRequirements failed for: (%@ %@)", valuePtr, 0x16u);
        }

        sub_277587C28(&v118);
        goto LABEL_142;
      }
    }

    sub_277587C28(&v118);
    v29 = *MEMORY[0x277CC4EC8];
  }

  if (v117 == 8)
  {
    v69 = 1278226488;
  }

  else
  {
    v69 = 1278226742;
  }

  v70 = pixelBufferAttributes;
  *valuePtr = *(v2 + 136);
  v71 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v71)
  {
    CFDictionaryAddValue(v70, v29, v71);
    CFRelease(v71);
  }

  v72 = pixelBufferAttributes;
  *valuePtr = *(v2 + 140);
  v73 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  v74 = *v26;
  if (v73)
  {
    CFDictionaryAddValue(v72, *v26, v73);
    CFRelease(v73);
  }

  v75 = pixelBufferAttributes;
  *valuePtr = v69;
  v76 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v76)
  {
    CFDictionaryAddValue(v75, key, v76);
    CFRelease(v76);
  }

  v77 = pixelBufferAttributes;
  *valuePtr = 64;
  v78 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v78)
  {
    CFDictionaryAddValue(v77, v114, v78);
    CFRelease(v78);
  }

  v79 = pixelBufferAttributes;
  *valuePtr = 64;
  v80 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v80)
  {
    CFDictionaryAddValue(v79, v113, v80);
    CFRelease(v80);
  }

  v81 = pixelBufferAttributes;
  *valuePtr = v110;
  v82 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v82)
  {
    CFDictionaryAddValue(v81, v115, v82);
    CFRelease(v82);
  }

  v83 = pixelBufferAttributes;
  *valuePtr = v109;
  v84 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v84)
  {
    CFDictionaryAddValue(v83, v112, v84);
    CFRelease(v84);
  }

  v85 = pixelBufferAttributes;
  v86 = *(a1 + 37024);
  if (v86)
  {
    CFRelease(v86);
    *(a1 + 37024) = 0;
  }

  v48 = CVPixelBufferPoolCreate(0, 0, v85, (a1 + 37024));
  if (v48)
  {
    fwrite("Failed to create luma DPB pool\n", 0x1FuLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_142;
    }

    *valuePtr = 0;
    v87 = MEMORY[0x277D86220];
    v88 = "Failed to create luma DPB pool";
LABEL_117:
    _os_log_impl(&dword_27754B000, v87, OS_LOG_TYPE_ERROR, v88, valuePtr, 2u);
    goto LABEL_142;
  }

  if (!v106)
  {
    goto LABEL_141;
  }

  v89 = Mutable;
  *valuePtr = (*(v2 + 136) + v108) >> v108;
  v90 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v90)
  {
    CFDictionaryAddValue(v89, v29, v90);
    CFRelease(v90);
  }

  v91 = Mutable;
  *valuePtr = (*(v2 + 140) + v107) >> v107;
  v92 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v92)
  {
    CFDictionaryAddValue(v91, v74, v92);
    CFRelease(v92);
  }

  v93 = Mutable;
  *valuePtr = v69;
  v94 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v94)
  {
    CFDictionaryAddValue(v93, key, v94);
    CFRelease(v94);
  }

  v95 = Mutable;
  *valuePtr = 64;
  v96 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v96)
  {
    CFDictionaryAddValue(v95, v114, v96);
    CFRelease(v96);
  }

  v97 = Mutable;
  *valuePtr = 64;
  v98 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v98)
  {
    CFDictionaryAddValue(v97, v113, v98);
    CFRelease(v98);
  }

  v99 = Mutable;
  *valuePtr = v110 >> v108;
  v100 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v100)
  {
    CFDictionaryAddValue(v99, v115, v100);
    CFRelease(v100);
  }

  v101 = Mutable;
  *valuePtr = v109 >> v107;
  v102 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
  if (v102)
  {
    CFDictionaryAddValue(v101, v112, v102);
    CFRelease(v102);
  }

  v103 = Mutable;
  v104 = poolOut;
  if (*poolOut)
  {
    CFRelease(*poolOut);
    v104 = poolOut;
    *poolOut = 0;
  }

  v48 = CVPixelBufferPoolCreate(0, 0, v103, v104);
  if (!v48)
  {
LABEL_141:
    v48 = 0;
    *(v2 + 176) = 1;
    goto LABEL_142;
  }

  fwrite("Failed to create chroma DPB pool\n", 0x21uLL, 1uLL, *MEMORY[0x277D85DF8]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *valuePtr = 0;
    v87 = MEMORY[0x277D86220];
    v88 = "Failed to create chroma DPB pool";
    goto LABEL_117;
  }

LABEL_142:
  sub_277587C28(&Mutable);
  sub_277587C28(&pixelBufferAttributes);
  sub_277587C28(&theDict);
  return v48;
}

void sub_277587B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va3, a14);
  va_start(va2, a14);
  va_start(va1, a14);
  va_start(va, a14);
  v15 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v17 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v19 = va_arg(va3, const void *);
  sub_277587C5C(va3);
  sub_277587C28(va);
  sub_277587C28(va1);
  sub_277587C28(va2);
  _Unwind_Resume(a1);
}

const void **sub_277587BC0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_277587BF4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_277587C28(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_277587C5C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_277587C90()
{
  v0 = MEMORY[0x277CBF138];
  v1 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = CFDictionaryCreateMutable(0, 0, v0, v1);
  CFDictionarySetValue(v6, *MEMORY[0x277CC4DE8], Mutable);
  pixelBufferOut = 0;
  v2 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x80uLL, 0x80uLL, 0x4C303038u, v6, &pixelBufferOut);
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
    v3 = pixelBufferOut != 0;
  }

  else
  {
    v3 = 0;
  }

  byte_280A713D8 = v2 == 0 && v3;
  sub_277587C28(&v6);
  return sub_277587C28(&Mutable);
}

void sub_277587D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_277587C28(va);
  sub_277587C28(va1);
  _Unwind_Resume(a1);
}

void sub_277587DC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2886640F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CADDA0);
}

uint64_t *sub_277587E34(void *a1)
{
  v2 = a1[33];
  a1[33] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return sub_277587E6C(&v2);
}

uint64_t *sub_277587E6C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    for (i = 0; i != 3; ++i)
    {
      if (*(v2 + i + 27) == 1)
      {
        CVPixelBufferUnlockBaseAddress(*(v2 + 8 * i), *(v2 + 8 * i + 32));
        *(v2 + i + 27) = 0;
      }
    }

    for (j = 16; j != -8; j -= 8)
    {
      sub_277584EB0((v2 + j));
    }

    MEMORY[0x277CADDA0](v2, 0x1020C4061E6B045);
  }

  return a1;
}

uint64_t sub_277587F0C(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2 + 36864;
  std::mutex::lock((a2 + 36936));
  if (*(v4 + 176) == 1 && sub_277584E40(a2 + 37000, a1) || (*(v4 + 136) = *(a1 + 7), v5 = *a1, *(v4 + 152) = *(*a1 + 33) != 0, *(v4 + 153) = *(v5 + 421) != 0, v6 = sub_277586AF8(a2), !v6))
  {
    operator new();
  }

  fwrite("Failed to create buffer pools\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create buffer pools", buf, 2u);
  }

  std::mutex::unlock((a2 + 36936));
  return v6;
}

void sub_277588428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_277587E6C(va);
  std::mutex::unlock((v4 + v5));
  _Unwind_Resume(a1);
}

const void **sub_277588464()
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *keys = 0u;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *values = 0u;
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = v1;
  if (v1)
  {
    v2 = *MEMORY[0x277CE26B8];
    keys[0] = *MEMORY[0x277CE26F8];
    keys[1] = v2;
    values[0] = v1;
    values[1] = v1;
    *&v13 = *MEMORY[0x277CE2700];
    *&v7 = v1;
    qword_280B9A800 = CFDictionaryCreate(v0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  else
  {
    fwrite("CFDictionaryCreate failed\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CFDictionaryCreate failed", v4, 2u);
    }
  }

  return sub_2775885F0(&v5);
}

void sub_2775885DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2775885F0(va);
  _Unwind_Resume(a1);
}

const void **sub_2775885F0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_277588624(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1 + 36864;
  *(a1 + 37016) = *a1 == 0;
  Extension = CMFormatDescriptionGetExtension(*(a1 + 16), *MEMORY[0x277CC0318]);
  if (Extension)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(Extension))
    {
      *(v2 + 152) = CFBooleanGetValue(Extension) != 0;
    }
  }

  *(v2 + 136) = CMVideoFormatDescriptionGetDimensions(*(a1 + 16));
  v5 = sub_2775889CC(*(a1 + 16));
  if (!v5)
  {
    fwrite("No av1C found\n", 0xEuLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 4294954387;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "No av1C found";
LABEL_13:
    v12 = 2;
    goto LABEL_14;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v6);
  v9 = Length;
  if (Length <= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "av1C too small (%zu bytes)\n", Length);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v24 = v9;
      v10 = MEMORY[0x277D86220];
      v11 = "av1C too small (%zu bytes)";
      v12 = 12;
LABEL_14:
      _os_log_impl(&dword_27754B000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
    }

    return 4294954387;
  }

  v13 = *BytePtr;
  if ((v13 & 0x80000000) == 0)
  {
    fwrite("av1C marker invalid\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 4294954387;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "av1C marker invalid";
    goto LABEL_13;
  }

  if ((v13 & 0x7F) != 1)
  {
    fwrite("Unsupported av1C version\n", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = MEMORY[0x277D86220];
      v18 = "Unsupported av1C version";
      v19 = 2;
      goto LABEL_22;
    }

    return 4294954386;
  }

  v15 = BytePtr[1];
  if (v15 >= 0x60)
  {
    v16 = v15 >> 5;
    fprintf(*MEMORY[0x277D85DF8], "Unsupported profile %d\n", v15 >> 5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v24) = v16;
      v17 = MEMORY[0x277D86220];
      v18 = "Unsupported profile %d";
      v19 = 8;
LABEL_22:
      _os_log_impl(&dword_27754B000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
      return 4294954386;
    }

    return 4294954386;
  }

  v20 = BytePtr[2];
  if ((v20 & 0x40) != 0)
  {
    v21 = 10;
  }

  else
  {
    v21 = 8;
  }

  if ((BytePtr[2] & 0x20) != 0)
  {
    v21 = 12;
  }

  *(v2 + 148) = v21;
  if ((v20 & 0x10) != 0)
  {
    *(v2 + 144) = 0;
  }

  else
  {
    if ((v20 & 4) != 0)
    {
      v22 = 1;
    }

    else if ((v20 & 8) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    *(v2 + 144) = v22;
  }

  if (Length != 4 && !sub_2775AF124(buf, BytePtr + 4, Length - 4))
  {
    if (!Extension)
    {
      *(v2 + 152) = v25 != 0;
    }

    *(v2 + 153) = v26 != 0;
  }

  return sub_277586AF8(a1);
}

const __CFDictionary *sub_2775889CC(const opaqueCMFormatDescription *a1)
{
  result = CMFormatDescriptionGetExtension(a1, *MEMORY[0x277CC03B0]);
  if (result)
  {
    v2 = result;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      result = CFDictionaryGetValue(v2, @"av1C");
      if (result)
      {
        v4 = result;
        v5 = CFArrayGetTypeID();
        if (v5 != CFGetTypeID(v4) || (result = CFArrayGetValueAtIndex(v4, 0), (v4 = result) != 0))
        {
          v6 = CFDataGetTypeID();
          if (v6 == CFGetTypeID(v4))
          {
            return v4;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void **sub_277588A7C(const void **a1, const void **a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

uint64_t sub_277588AC0(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1 + 36864;
  *(a1 + 37048) = dispatch_queue_create("com.apple.av1decoder.emit", 0);
  v5 = dispatch_group_create();
  *(v4 + 192) = v5;
  if (*(v4 + 184))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    fwrite("Error allocating dispatch queue\n", 0x20uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error allocating dispatch queue", &v9, 2u);
    }

    return 4294954392;
  }

  else
  {
    v16 = 0u;
    v12 = 0u;
    v11 = 0u;
    v9 = xmmword_2775ED400;
    v13 = 0;
    v14 = sub_2775E9DEC;
    v10 = 0x100000000;
    v15 = xmmword_2775ED410;
    v8 = *(v4 + 200);
    if (!v8)
    {
      sub_27758CE9C();
      v8 = dword_280B623E0;
      *(v4 + 200) = dword_280B623E0;
    }

    DWORD1(v9) = v8;
    HIDWORD(v9) = 0;
    if ((a2 & 1) == 0)
    {
      DWORD2(v9) = 1;
    }

    if (*(v4 + 205) == 1)
    {
      LODWORD(v9) = 17;
    }

    *(&v11 + 1) = a1;
    *&v12 = sub_277587F0C;
    *(&v12 + 1) = sub_277587E34;
    return sub_2775EB494((a1 + 24), &v9);
  }
}

void sub_2775891C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2775891F8(va);
  _Unwind_Resume(a1);
}

const void **sub_2775891F8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_27758922C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_277584EB0((a2 + 8));

    JUMPOUT(0x277CADDA0);
  }
}

uint64_t sub_277589288(uint64_t a1, CMAttachmentBearerRef target, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = CMGetAttachment(target, *MEMORY[0x277CC0718], 0);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v7))
      {
        sub_2775856E0(a1);
        sub_2775DA270(*(a1 + 24));
      }
    }
  }

  v23 = 0;
  valuePtr = -1;
  v22 = 0;
  v9 = CMGetAttachment(target, *MEMORY[0x277CD6360], 0);
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v12 = CMGetAttachment(target, @"IncompleteSample", 0);
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v13, kCFNumberSInt32Type, &v22);
    }
  }

  v15 = CMGetAttachment(target, *MEMORY[0x277CD6368], 0);
  if (v15 && (v16 = v15, v17 = CFGetTypeID(v15), v17 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v16, kCFNumberSInt32Type, &v23);
    v18 = v23;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == *(a1 + 37072))
  {
    goto LABEL_16;
  }

  sub_2775856E0(a1);
  v18 = v23;
  if (v23 <= 0x1F)
  {
    v21 = *(a1 + 24);
    if (*(v21 + 63052) != v23)
    {
      sub_2775DA270(*(a1 + 24));
      *(v21 + 63052) = v18;
      v18 = v23;
    }

LABEL_16:
    result = 0;
    *(a1 + 37072) = v18;
    v20 = *a3;
    v20[28] = v22 != 0;
    v20[29] = valuePtr;
    v20[30] = v18;
    return result;
  }

  fprintf(*MEMORY[0x277D85DF8], "Invalid operating point %d\n", v23);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v26 = v23;
    _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invalid operating point %d", buf, 8u);
  }

  return 4294967274;
}

uint64_t *sub_27758950C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_277584EB0((v2 + 8));
    MEMORY[0x277CADDA0](v2, 0x10A0C40D7D40F56);
  }

  return a1;
}

void sub_27758955C(char *a1, uint64_t a2)
{
  if (*(a2 + 39))
  {
    v4 = 1;
  }

  else
  {
    v4 = (*(a2 + 4) >> 1) & 1;
  }

  if (*(a2 + 60))
  {
    v5 = 2;
  }

  else
  {
    v5 = *(a2 + 4) & 2;
  }

  if (*(a2 + 10))
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_16:
    bzero(a1 + 11972, 0x2EC4uLL);
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_17:
    bzero(a1 + 23944, 0x2EC4uLL);
    goto LABEL_10;
  }

  bzero(a1, 0x2EC4uLL);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (*(a2 + 10) || v5 | v4)
  {
    v6 = *&a1[8 * ((*(a2 + 4) & 0x30000) == 0) + 36720 + (*(a2 + 4) & 0x30)];

    v6(a2, a1, 0);
  }
}

__n128 sub_27758965C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = 0x100A00001;
  v3 = (2 * (*(v2 + 36) & 1)) | 1;
  *(a1 + 4) = v3;
  v4 = v3 & 0xFFFFFFF3 | (4 * (*(v2 + 88) & 3));
  *(a1 + 4) = v4;
  v5 = v4 & 0xFFFFFFCF | (16 * (*(v2 + 92) & 3));
  *(a1 + 4) = v5;
  v6 = (v5 & 0xFFFFFF3F | ((*(v2 + 176) & 3) << 6)) ^ 0x80;
  *(a1 + 4) = v6;
  v7 = v6 & 0xFFFFFCFF | ((*(v2 + 184) & 3) << 8);
  *(a1 + 4) = v7;
  v8 = v7 & 0xFFFFFBFF | ((*(v2 + 212) & 1) << 10);
  *(a1 + 4) = v8;
  v9 = v8 & 0xFFFFF7FF | ((*(v2 + 216) & 1) << 11);
  *(a1 + 4) = v9;
  v10 = v9 & 0xFFFFEFFF | ((*(*a2 + 24) == 0) << 12);
  *(a1 + 4) = v10;
  v11 = v10 & 0xFFFF1FFF | ((*(a2 + 68) & 7) << 13);
  *(a1 + 4) = v11;
  v12 = v11 & 0xFFFEFFFF | ((*(a2 + 64) < 3) << 16);
  *(a1 + 4) = v12;
  *(a1 + 4) = v12 & 0xFFFDFFFF | ((*(a2 + 64) < 2) << 17);
  v13 = *(v2 + 4);
  *(a1 + 8) = *v2;
  *(a1 + 10) = v13;
  v14 = *(v2 + 44);
  *(a1 + 39) = *(v2 + 40);
  *(a1 + 60) = v14;
  v15 = (a1 + 25);
  v16 = (v2 + 9);
  v17 = 14;
  do
  {
    *(v15 - 14) = *(v16 - 1);
    v18 = *v16;
    v16 += 2;
    *v15++ = v18;
    --v17;
  }

  while (v17);
  v19 = (a1 + 40);
  v20 = (v2 + 69);
  v21 = 10;
  do
  {
    *v19 = *(v20 - 21);
    v19[10] = *(v20 - 20);
    v19[21] = *(v20 - 1);
    v22 = *v20;
    v20 += 2;
    v19[31] = v22;
    ++v19;
    --v21;
  }

  while (v21);
  v23 = *(v2 + 96);
  *(a1 + 97) = *(v2 + 112);
  *(a1 + 81) = v23;
  v24 = *(v2 + 120);
  *(a1 + 114) = *(v2 + 129);
  *(a1 + 105) = v24;
  result = *(v2 + 148);
  *(a1 + 139) = *(v2 + 157);
  *(a1 + 130) = result;
  v26 = *(v2 + 192);
  *(a1 + 155) = *(v2 + 188);
  v27 = *(v2 + 200);
  *(a1 + 156) = *(v2 + 196);
  v29 = *(v2 + 204);
  v28 = *(v2 + 208);
  *(a1 + 158) = v29;
  *(a1 + 160) = v26;
  *(a1 + 161) = v27;
  *(a1 + 162) = v28;
  return result;
}

uint64_t sub_2775897E0(uint64_t a1, int32x2_t *a2, __CVBuffer *a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  sub_27758965C(v29, a2);
  CVPixelBufferLockBaseAddress(a3, 0);
  sub_27758955C(a1, v29);
  v8 = 0;
  v9 = a1 + 35916;
  do
  {
    (*(a1 + 36792))(v29, v9, v8++);
    v9 += 256;
  }

  while (v8 != 3);
  v10 = vadd_s32(a2[7], 0x1F0000001FLL);
  v11 = *&vsra_n_s32(0xF0000000FLL, v10, 5uLL) & 0xFFFFFFF0FFFFFFF0;
  *(a1 + 36712) = v11;
  v12 = SHIDWORD(v11) * v11;
  v13 = *(a1 + 36696);
  v14 = *(a1 + 36688);
  v15 = (v13 - v14) >> 2;
  if (v12 <= v15)
  {
    if (v12 >= v15)
    {
      goto LABEL_17;
    }

    v20 = v14 + 4 * v12;
  }

  else
  {
    v16 = v12 - v15;
    v17 = *(a1 + 36704);
    if (v16 > (v17 - v13) >> 2)
    {
      if (!(v12 >> 62))
      {
        v18 = v17 - v14;
        if (v18 >> 1 > v12)
        {
          v12 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v12;
        }

        if (!(v19 >> 62))
        {
          operator new();
        }

        sub_277589A80();
      }

      sub_277589A70();
    }

    bzero(*(a1 + 36696), 4 * v16);
    v20 = v13 + 4 * v16;
  }

  *(a1 + 36696) = v20;
LABEL_17:
  v21 = vshr_n_s32(v10, 5uLL);
  (*(a1 + 36800))(*(a1 + 36688), *(a1 + 36712), v21.u32[0], v21.u32[1], *v7);
  v22 = (a2[8].i32[1] - 8) >> 1;
  if (v22 >= 2)
  {
    v22 = 2;
  }

  v23 = a1 + 16 * (v22 & ~(v22 >> 31)) + 36808;
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = (a1 + (v25 >> 1));
  if (v25)
  {
    v24 = *(*v26 + v24);
  }

  v24(v26, a2, a3, a4);
  return CVPixelBufferUnlockBaseAddress(a3, 0);
}

void sub_277589A80()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_277589AB4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_277589B08(exception);
  __cxa_throw(exception, off_27A716DC0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_277589B08(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_277589B44(int *a1, uint64_t a2, CVPixelBufferRef pixelBuffer, uint64_t a4)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 56);
  v10 = *(a2 + 60);
  v11 = *(a2 + 64);
  v86 = v11 == 1;
  v96 = v11;
  v97 = v11 != 3;
  v124 = v97;
  v125 = v86;
  v116 = *(a2 + 48);
  v119 = *(a2 + 40);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v13 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  result = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  v16 = v8;
  if (v8[54])
  {
    v95 = 3760;
    if (*(*a2 + 24))
    {
      v17 = 3840;
    }

    else
    {
      v17 = 3760;
    }

    v103 = v17;
    v115 = 256;
  }

  else
  {
    v115 = 0;
    v103 = 4095;
    v95 = 4095;
  }

  v18 = *(a2 + 68) - 8;
  v123 = -(128 << v18);
  v122 = (256 << v18) + ~(128 << v18);
  v19 = v8[10] > 0 || v8[9] != 0;
  v74 = ((v10 + 31) >> 5);
  v121[0] = v19;
  v80 = a2;
  v20 = v8[11] > 0 || v8[9] != 0;
  v121[1] = v20;
  v120[0] = &v124;
  v120[1] = &v125;
  v120[2] = a1;
  v120[3] = &v123;
  v120[4] = &v122;
  if (v74 >= 1)
  {
    v85 = v13 >> 1;
    v76 = BaseAddressOfPlane + 2 * (BytesPerRowOfPlane >> 1) * (a4 >> 32) + 2 * a4;
    v77 = 0;
    v93 = a1 + 0x2000;
    v83 = ((v9 + 31) >> 5);
    v78 = 0x20u >> v97;
    v70 = 0x20u >> v86;
    v84 = v116 >> 1;
    v113 = a1 + 8979;
    v102 = v8 + 49;
    v101 = v8 + 47;
    v100 = v8 + 51;
    v92 = 2 * (BytesPerRowOfPlane >> 1);
    v72 = v119 >> 1 << 6;
    v73 = BytesPerRowOfPlane >> 1 << 6;
    v69 = result + 2 * (v13 >> 1) * (SHIDWORD(a4) >> v86) + 4 * (a4 >> v97);
    v71 = *(a2 + 16);
    v75 = v71;
    v87 = v119 >> 1;
    v91 = 2 * (v119 >> 1);
    v114 = v8;
    do
    {
      if (v83 >= 1)
      {
        v110 = 0;
        v21 = 0;
        v22 = *(v80 + 60) - 32 * v77;
        v82 = v16[53];
        if (v77 != 0 && v82 != 0)
        {
          v23 = 2;
        }

        else
        {
          v23 = 0;
        }

        LODWORD(v119) = v23;
        v98 = *(v80 + 60) - 32 * v77;
        if (v22 >= 0x20)
        {
          v24 = 32;
        }

        else
        {
          v24 = v22;
        }

        v111 = v24;
        v108 = v75;
        v106 = v76;
        do
        {
          v104 = v21;
          if (v82)
          {
            v25 = v21 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            v26 = 0;
          }

          else
          {
            v26 = 2;
          }

          if (v98 >= 1)
          {
            v27 = 0;
            v28 = *(v80 + 56);
            v29 = v106;
            v117 = v28 - 32 * v21;
            v30 = *(*(v93 + 490) + 4 * *(v93 + 493) * v77 + 4 * v21);
            v31 = v28 + v110;
            if (v31 >= 32)
            {
              v31 = 32;
            }

            if (v31 <= 1)
            {
              v32 = 1;
            }

            else
            {
              v32 = v31;
            }

            v33 = v108;
            do
            {
              if (v117 >= 1)
              {
                v34 = 0;
                v35 = v16[1];
                do
                {
                  v36 = *(v33 + 2 * v34);
                  if (v35 >= 1)
                  {
                    v13 = v13 & 0xFFFFFFFF00000000 | v30;
                    result = sub_27758B374(v120, 0, v13, v34, v27, v26, v119);
                    if ((v36 >> 4) == 255)
                    {
                      v37 = *(v93 + 3403);
                    }

                    else
                    {
                      v37 = *(v113 + (v36 >> 4)) + (((*(v113 + (v36 >> 4) + 1) - *(v113 + (v36 >> 4))) * (v36 & 0xF) + 8) >> 4);
                    }

                    v16 = v114;
                    v38 = v114[22];
                    v39 = 1 << (v38 - 1);
                    if (!v38)
                    {
                      v39 = 0;
                    }

                    v40 = ((v39 + v37 * result) >> v38) + v36;
                    v41 = v95;
                    if (v40 < v95)
                    {
                      v41 = v40;
                    }

                    if (v40 <= v115)
                    {
                      LOWORD(v36) = v115;
                    }

                    else
                    {
                      LOWORD(v36) = v41;
                    }
                  }

                  *(v29 + 2 * v34++) = 16 * v36;
                }

                while (v32 != v34);
              }

              ++v27;
              v29 += v92;
              v33 += v91;
            }

            while (v27 != v111);
          }

          v21 = v104 + 1;
          v110 -= 32;
          v106 += 64;
          v108 += 64;
        }

        while (v104 + 1 != v83);
        if (v96)
        {
          v42 = 0;
          v44 = *(v80 + 24);
          v43 = *(v80 + 32);
          v79 = *(v80 + 56);
          if (v98 >= 32)
          {
            v45 = 32;
          }

          else
          {
            v45 = v98;
          }

          v90 = ((v45 + v86) >> v86);
          v46 = 2u >> v86;
          if (v77 == 0 || v82 == 0)
          {
            v46 = 0;
          }

          v105 = v46;
          do
          {
            v47 = v79 - 32 * v42;
            if (v47 >= 32)
            {
              v47 = 32;
            }

            v94 = v47;
            v81 = v42;
            if (v82)
            {
              v48 = v42 == 0;
            }

            else
            {
              v48 = 1;
            }

            v49 = 2u >> v97;
            if (v48)
            {
              v49 = 0;
            }

            v109 = v49;
            if (v90 >= 1)
            {
              v112 = 0;
              v13 = v42 * v78;
              v88 = v71 + ((v77 * v87) << 6) + (v42 << 6);
              v89 = v69 + 2 * v85 * v77 * v70 + 4 * v42 * v78;
              v99 = ((v94 + v97) >> v97);
              v107 = *(*(v93 + 490) + 4 * *(v93 + 493) * v77 + 4 * v42);
              do
              {
                if (v99 >= 1)
                {
                  v50 = 0;
                  v51 = v112 * v84;
                  do
                  {
                    v52 = (v88 + 2 * v87 * (v112 << v86) + 2 * (v50 << v97));
                    v118 = *v52;
                    if (v96 != 3 && ((2 * v50) | 1) < v94)
                    {
                      v118 = (v118 + v52[1] + 1) >> 1;
                    }

                    v53 = 0;
                    v54 = v89 + 2 * v112 * v85 + 4 * v50;
                    do
                    {
                      v55 = v53;
                      if (v53)
                      {
                        v56 = v43;
                      }

                      else
                      {
                        v56 = v44;
                      }

                      v57 = *(v56 + 2 * v84 * v77 * v70 + 2 * v13 + 2 * v51 + 2 * v50);
                      if (v121[v53])
                      {
                        v58 = v118;
                        if (!v16[9])
                        {
                          v59 = ((v102[v53] * v118 + v101[v53] * v57) >> 6) + 16 * v100[v53];
                          if (v59 >= 0xFFF)
                          {
                            v60 = 4095;
                          }

                          else
                          {
                            v60 = ((v102[v53] * v118 + v101[v53] * v57) >> 6) + 16 * v100[v53];
                          }

                          if (v59 <= 0)
                          {
                            v58 = 0;
                          }

                          else
                          {
                            v58 = v60;
                          }
                        }

                        ++v53;
                        v119 = v119 & 0xFFFFFFFF00000000 | v107;
                        v61 = v50;
                        result = sub_27758B374(v120, v55 + 1, v119, v50, v112, v109, v105);
                        v62 = &v113[64 * v53];
                        v63 = v58 >> 4;
                        if (v63 == 255)
                        {
                          v64 = *(v62 + 255);
                        }

                        else
                        {
                          v64 = *(v62 + v63) + (((*(v62 + v63 + 1) - *(v62 + v63)) * (v58 & 0xF) + 8) >> 4);
                        }

                        v16 = v114;
                        v65 = v114[22];
                        v66 = 1 << (v65 - 1);
                        if (!v65)
                        {
                          v66 = 0;
                        }

                        v67 = ((v66 + v64 * result) >> v65) + v57;
                        v68 = v103;
                        if (v67 < v103)
                        {
                          v68 = v67;
                        }

                        if (v67 <= v115)
                        {
                          LOWORD(v57) = v115;
                        }

                        else
                        {
                          LOWORD(v57) = v68;
                        }

                        v51 = v112 * v84;
                        v50 = v61;
                      }

                      else
                      {
                        ++v53;
                      }

                      *(v54 + 2 * v55) = 16 * v57;
                    }

                    while (!v55);
                    ++v50;
                  }

                  while (v50 != v99);
                }

                ++v112;
              }

              while (v112 != v90);
            }

            v42 = v81 + 1;
          }

          while (v81 + 1 != v83);
        }
      }

      v76 += v73;
      ++v77;
      v75 += v72;
    }

    while (v77 != v74);
  }

  return result;
}

uint64_t sub_27758A390(int *a1, uint64_t a2, CVPixelBufferRef pixelBuffer, uint64_t a4)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 56);
  v10 = *(a2 + 60);
  v11 = *(a2 + 64);
  v86 = v11 == 1;
  v96 = v11;
  v97 = v11 != 3;
  v124 = v97;
  v125 = v86;
  v116 = *(a2 + 48);
  v119 = *(a2 + 40);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v13 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  result = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  v16 = v8;
  if (v8[54])
  {
    v95 = 940;
    if (*(*a2 + 24))
    {
      v17 = 960;
    }

    else
    {
      v17 = 940;
    }

    v103 = v17;
    v115 = 64;
  }

  else
  {
    v115 = 0;
    v103 = 1023;
    v95 = 1023;
  }

  v18 = *(a2 + 68) - 8;
  v123 = -(128 << v18);
  v122 = (256 << v18) + ~(128 << v18);
  v19 = v8[10] > 0 || v8[9] != 0;
  v74 = ((v10 + 31) >> 5);
  v121[0] = v19;
  v80 = a2;
  v20 = v8[11] > 0 || v8[9] != 0;
  v121[1] = v20;
  v120[0] = &v124;
  v120[1] = &v125;
  v120[2] = a1;
  v120[3] = &v123;
  v120[4] = &v122;
  if (v74 >= 1)
  {
    v85 = v13 >> 1;
    v76 = BaseAddressOfPlane + 2 * (BytesPerRowOfPlane >> 1) * (a4 >> 32) + 2 * a4;
    v77 = 0;
    v93 = a1 + 0x2000;
    v83 = ((v9 + 31) >> 5);
    v78 = 0x20u >> v97;
    v70 = 0x20u >> v86;
    v84 = v116 >> 1;
    v113 = a1 + 8979;
    v102 = v8 + 49;
    v101 = v8 + 47;
    v100 = v8 + 51;
    v92 = 2 * (BytesPerRowOfPlane >> 1);
    v72 = v119 >> 1 << 6;
    v73 = BytesPerRowOfPlane >> 1 << 6;
    v69 = result + 2 * (v13 >> 1) * (SHIDWORD(a4) >> v86) + 4 * (a4 >> v97);
    v71 = *(a2 + 16);
    v75 = v71;
    v87 = v119 >> 1;
    v91 = 2 * (v119 >> 1);
    v114 = v8;
    do
    {
      if (v83 >= 1)
      {
        v110 = 0;
        v21 = 0;
        v22 = *(v80 + 60) - 32 * v77;
        v82 = v16[53];
        if (v77 != 0 && v82 != 0)
        {
          v23 = 2;
        }

        else
        {
          v23 = 0;
        }

        LODWORD(v119) = v23;
        v98 = *(v80 + 60) - 32 * v77;
        if (v22 >= 0x20)
        {
          v24 = 32;
        }

        else
        {
          v24 = v22;
        }

        v111 = v24;
        v108 = v75;
        v106 = v76;
        do
        {
          v104 = v21;
          if (v82)
          {
            v25 = v21 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            v26 = 0;
          }

          else
          {
            v26 = 2;
          }

          if (v98 >= 1)
          {
            v27 = 0;
            v28 = *(v80 + 56);
            v29 = v106;
            v117 = v28 - 32 * v21;
            v30 = *(*(v93 + 490) + 4 * *(v93 + 493) * v77 + 4 * v21);
            v31 = v28 + v110;
            if (v31 >= 32)
            {
              v31 = 32;
            }

            if (v31 <= 1)
            {
              v32 = 1;
            }

            else
            {
              v32 = v31;
            }

            v33 = v108;
            do
            {
              if (v117 >= 1)
              {
                v34 = 0;
                v35 = v16[1];
                do
                {
                  v36 = *(v33 + 2 * v34);
                  if (v35 >= 1)
                  {
                    v13 = v13 & 0xFFFFFFFF00000000 | v30;
                    result = sub_27758B374(v120, 0, v13, v34, v27, v26, v119);
                    if ((v36 >> 2) == 255)
                    {
                      v37 = *(v93 + 3403);
                    }

                    else
                    {
                      v37 = *(v113 + (v36 >> 2)) + (((*(v113 + (v36 >> 2) + 1) - *(v113 + (v36 >> 2))) * (v36 & 3) + 2) >> 2);
                    }

                    v16 = v114;
                    v38 = v114[22];
                    v39 = 1 << (v38 - 1);
                    if (!v38)
                    {
                      v39 = 0;
                    }

                    v40 = ((v39 + v37 * result) >> v38) + v36;
                    v41 = v95;
                    if (v40 < v95)
                    {
                      v41 = v40;
                    }

                    if (v40 <= v115)
                    {
                      LOWORD(v36) = v115;
                    }

                    else
                    {
                      LOWORD(v36) = v41;
                    }
                  }

                  *(v29 + 2 * v34++) = v36 << 6;
                }

                while (v32 != v34);
              }

              ++v27;
              v29 += v92;
              v33 += v91;
            }

            while (v27 != v111);
          }

          v21 = v104 + 1;
          v110 -= 32;
          v106 += 64;
          v108 += 64;
        }

        while (v104 + 1 != v83);
        if (v96)
        {
          v42 = 0;
          v44 = *(v80 + 24);
          v43 = *(v80 + 32);
          v79 = *(v80 + 56);
          if (v98 >= 32)
          {
            v45 = 32;
          }

          else
          {
            v45 = v98;
          }

          v90 = ((v45 + v86) >> v86);
          v46 = 2u >> v86;
          if (v77 == 0 || v82 == 0)
          {
            v46 = 0;
          }

          v105 = v46;
          do
          {
            v47 = v79 - 32 * v42;
            if (v47 >= 32)
            {
              v47 = 32;
            }

            v94 = v47;
            v81 = v42;
            if (v82)
            {
              v48 = v42 == 0;
            }

            else
            {
              v48 = 1;
            }

            v49 = 2u >> v97;
            if (v48)
            {
              v49 = 0;
            }

            v109 = v49;
            if (v90 >= 1)
            {
              v112 = 0;
              v13 = v42 * v78;
              v88 = v71 + ((v77 * v87) << 6) + (v42 << 6);
              v89 = v69 + 2 * v85 * v77 * v70 + 4 * v42 * v78;
              v99 = ((v94 + v97) >> v97);
              v107 = *(*(v93 + 490) + 4 * *(v93 + 493) * v77 + 4 * v42);
              do
              {
                if (v99 >= 1)
                {
                  v50 = 0;
                  v51 = v112 * v84;
                  do
                  {
                    v52 = (v88 + 2 * v87 * (v112 << v86) + 2 * (v50 << v97));
                    v118 = *v52;
                    if (v96 != 3 && ((2 * v50) | 1) < v94)
                    {
                      v118 = (v118 + v52[1] + 1) >> 1;
                    }

                    v53 = 0;
                    v54 = v89 + 2 * v112 * v85 + 4 * v50;
                    do
                    {
                      v55 = v53;
                      if (v53)
                      {
                        v56 = v43;
                      }

                      else
                      {
                        v56 = v44;
                      }

                      v57 = *(v56 + 2 * v84 * v77 * v70 + 2 * v13 + 2 * v51 + 2 * v50);
                      if (v121[v53])
                      {
                        v58 = v118;
                        if (!v16[9])
                        {
                          v59 = ((v102[v53] * v118 + v101[v53] * v57) >> 6) + 4 * v100[v53];
                          if (v59 >= 0x3FF)
                          {
                            v60 = 1023;
                          }

                          else
                          {
                            v60 = ((v102[v53] * v118 + v101[v53] * v57) >> 6) + 4 * v100[v53];
                          }

                          if (v59 <= 0)
                          {
                            v58 = 0;
                          }

                          else
                          {
                            v58 = v60;
                          }
                        }

                        ++v53;
                        v119 = v119 & 0xFFFFFFFF00000000 | v107;
                        v61 = v50;
                        result = sub_27758B374(v120, v55 + 1, v119, v50, v112, v109, v105);
                        v62 = &v113[64 * v53];
                        v63 = v58 >> 2;
                        if (v63 == 255)
                        {
                          v64 = *(v62 + 255);
                        }

                        else
                        {
                          v64 = *(v62 + v63) + (((*(v62 + v63 + 1) - *(v62 + v63)) * (v58 & 3) + 2) >> 2);
                        }

                        v16 = v114;
                        v65 = v114[22];
                        v66 = 1 << (v65 - 1);
                        if (!v65)
                        {
                          v66 = 0;
                        }

                        v67 = ((v66 + v64 * result) >> v65) + v57;
                        v68 = v103;
                        if (v67 < v103)
                        {
                          v68 = v67;
                        }

                        if (v67 <= v115)
                        {
                          LOWORD(v57) = v115;
                        }

                        else
                        {
                          LOWORD(v57) = v68;
                        }

                        v51 = v112 * v84;
                        v50 = v61;
                      }

                      else
                      {
                        ++v53;
                      }

                      *(v54 + 2 * v55) = v57 << 6;
                    }

                    while (!v55);
                    ++v50;
                  }

                  while (v50 != v99);
                }

                ++v112;
              }

              while (v112 != v90);
            }

            v42 = v81 + 1;
          }

          while (v81 + 1 != v83);
        }
      }

      v76 += v73;
      ++v77;
      v75 += v72;
    }

    while (v77 != v74);
  }

  return result;
}

uint64_t sub_27758ABDC(int *a1, uint64_t a2, CVPixelBufferRef pixelBuffer, uint64_t a4)
{
  v5 = pixelBuffer;
  v6 = a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 56);
  v10 = *(a2 + 60);
  v11 = *(a2 + 64);
  v78 = v11 == 1;
  v84 = v11;
  v85 = v11 != 3;
  v109 = v85;
  v110 = v78;
  v81 = *(a2 + 40);
  v76 = *(a2 + 48);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v77 = CVPixelBufferGetBytesPerRowOfPlane(v5, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v5, 0);
  result = CVPixelBufferGetBaseAddressOfPlane(v5, 1uLL);
  v14 = v8;
  if (v8[54])
  {
    v83 = 235;
    if (*(*v6 + 24))
    {
      v15 = 240;
    }

    else
    {
      v15 = 235;
    }

    v91 = v15;
    v101 = 16;
  }

  else
  {
    v101 = 0;
    v91 = 255;
    v83 = 255;
  }

  v16 = *(v6 + 68) - 8;
  v108 = -(128 << v16);
  v107 = (256 << v16) + ~(128 << v16);
  v17 = v8[10] > 0 || v8[9] != 0;
  v65 = ((v10 + 31) >> 5);
  v106[0] = v17;
  v18 = v8[11] > 0 || v8[9] != 0;
  v106[1] = v18;
  v105[0] = &v109;
  v105[1] = &v110;
  v105[2] = a1;
  v105[3] = &v108;
  v105[4] = &v107;
  if (v65 >= 1)
  {
    v75 = 0;
    v66 = BaseAddressOfPlane + BytesPerRowOfPlane * (a4 >> 32) + a4;
    v67 = 0;
    v64 = result + v77 * (SHIDWORD(a4) >> v78) + 2 * (a4 >> v85);
    v71 = a1 + 0x2000;
    v73 = ((v9 + 31) >> 5);
    v68 = 0x20u >> v85;
    v63 = 0x20u >> v78;
    v100 = a1 + 8979;
    v89 = v8 + 47;
    v90 = v8 + 49;
    v88 = v8 + 51;
    v74 = v6;
    do
    {
      if (v73 >= 1)
      {
        v96 = 0;
        v19 = 0;
        v20 = *(v6 + 16);
        v69 = v20 + v81 * 32 * v75;
        v94 = v20 + v67;
        v92 = v66;
        do
        {
          LODWORD(v21) = *(v6 + 60) - 32 * v75;
          v86 = v19;
          if (v19 != 0 && v14[53] != 0)
          {
            v22 = 2;
          }

          else
          {
            v22 = 0;
          }

          LODWORD(v104) = v22;
          if (v75 != 0 && v14[53] != 0)
          {
            v23 = 2;
          }

          else
          {
            v23 = 0;
          }

          if (v21 >= 1)
          {
            v24 = 0;
            if (v21 >= 0x20)
            {
              v21 = 32;
            }

            else
            {
              v21 = v21;
            }

            v102 = v21;
            v25 = *(v74 + 56);
            v98 = v25 - 32 * v19;
            v26 = *(*(v71 + 490) + 4 * *(v71 + 493) * v75 + 4 * v19);
            v27 = v25 + v96;
            if (v27 >= 32)
            {
              v27 = 32;
            }

            if (v27 <= 1)
            {
              v28 = 1;
            }

            else
            {
              v28 = v27;
            }

            v30 = v92;
            v29 = v94;
            do
            {
              if (v98 >= 1)
              {
                for (i = 0; i != v28; ++i)
                {
                  v32 = *(v29 + i);
                  if (v14[1] >= 1)
                  {
                    v5 = v5 & 0xFFFFFFFF00000000 | v26;
                    v33 = v14;
                    result = sub_27758B374(v105, 0, v5, i, v24, v104, v23);
                    v14 = v33;
                    v34 = v33[22];
                    v35 = 1 << (v34 - 1);
                    if (!v34)
                    {
                      v35 = 0;
                    }

                    v36 = ((v35 + result * *(v100 + v32)) >> v34) + v32;
                    v37 = v83;
                    if (v36 < v83)
                    {
                      v37 = v36;
                    }

                    if (v36 <= v101)
                    {
                      LOBYTE(v32) = v101;
                    }

                    else
                    {
                      LOBYTE(v32) = v37;
                    }
                  }

                  *(v30 + i) = v32;
                }
              }

              ++v24;
              v30 += BytesPerRowOfPlane;
              v29 += v81;
            }

            while (v24 != v102);
          }

          v19 = v86 + 1;
          v96 -= 32;
          v92 += 32;
          v94 += 32;
          v6 = v74;
        }

        while (v86 + 1 != v73);
        if (v84)
        {
          v38 = 0;
          v39 = *(v74 + 24);
          v40 = *(v74 + 32);
          v70 = 32 * v75;
          do
          {
            v41 = *(v6 + 60);
            v42 = *(v6 + 56) - 32 * v38;
            if (v42 >= 32)
            {
              v42 = 32;
            }

            v82 = v42;
            v43 = v41 - v70;
            if (v41 - v70 >= 32)
            {
              v43 = 32;
            }

            v72 = v38;
            v44 = 2u >> v85;
            if (v38 == 0 || v14[53] == 0)
            {
              v44 = 0;
            }

            v97 = v44;
            v45 = 2u >> v78;
            if (v75 == 0 || v14[53] == 0)
            {
              v45 = 0;
            }

            v95 = v45;
            v79 = ((v43 + v78) >> v78);
            if ((v43 + v78) >> v78 >= 1)
            {
              v99 = 0;
              v87 = ((v82 + v85) >> v85);
              v93 = *(*(v71 + 490) + 4 * *(v71 + 493) * v75 + 4 * v38);
              do
              {
                if (v87 >= 1)
                {
                  v46 = 0;
                  v5 = v76 * v75 * v63 + v72 * v68 + v99 * v76;
                  do
                  {
                    v47 = (v69 + 32 * v72 + v81 * (v99 << v78) + (v46 << v85));
                    v103 = *v47;
                    v48 = 2 * v46;
                    if (v84 != 3 && (v48 | 1) < v82)
                    {
                      v103 = (v103 + v47[1] + 1) >> 1;
                    }

                    v49 = 0;
                    v50 = v64 + v77 * v75 * v63 + 2 * v72 * v68 + v99 * v77 + v48;
                    do
                    {
                      v51 = v49;
                      if (v49)
                      {
                        v52 = v40;
                      }

                      else
                      {
                        v52 = v39;
                      }

                      v53 = *(v52 + v5 + v46);
                      if (v106[v49])
                      {
                        v54 = v39;
                        v55 = v103;
                        v56 = v14;
                        if (!v14[9])
                        {
                          v57 = v88[v49] + ((v90[v49] * v103 + v89[v49] * v53) >> 6);
                          if (v57 >= 0xFF)
                          {
                            v58 = 255;
                          }

                          else
                          {
                            v58 = v88[v49] + ((v90[v49] * v103 + v89[v49] * v53) >> 6);
                          }

                          if (v57 <= 0)
                          {
                            v55 = 0;
                          }

                          else
                          {
                            v55 = v58;
                          }
                        }

                        ++v49;
                        v104 = v104 & 0xFFFFFFFF00000000 | v93;
                        result = sub_27758B374(v105, v51 + 1, v104, v46, v99, v97, v95);
                        v59 = v56[22];
                        v60 = 1 << (v59 - 1);
                        if (!v59)
                        {
                          v60 = 0;
                        }

                        v61 = ((v60 + result * *(&v100[64 * v49] + v55)) >> v59) + v53;
                        v62 = v91;
                        if (v61 < v91)
                        {
                          v62 = v61;
                        }

                        if (v61 <= v101)
                        {
                          LOBYTE(v53) = v101;
                        }

                        else
                        {
                          LOBYTE(v53) = v62;
                        }

                        v14 = v56;
                        v39 = v54;
                      }

                      else
                      {
                        ++v49;
                      }

                      *(v50 + v51) = v53;
                    }

                    while (!v51);
                    ++v46;
                  }

                  while (v46 != v87);
                }

                ++v99;
              }

              while (v99 != v79);
            }

            v38 = v72 + 1;
            v6 = v74;
          }

          while (v72 + 1 != v73);
        }
      }

      v66 += 32 * BytesPerRowOfPlane;
      v67 += 32 * v81;
      ++v75;
    }

    while (v75 != v65);
  }

  return result;
}

uint64_t sub_27758B374(int **a1, int a2, unint64_t a3, int a4, int a5, int a6, int a7)
{
  v7 = a3 >> 8;
  v8 = a1[2];
  if (a2)
  {
    v9 = **a1;
    v10 = *a1[1];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = 0x20u >> v9;
  v12 = &unk_2775EDA06 + 2 * v9;
  v13 = a3 >> 4;
  v14 = a3 & 0xF;
  v15 = v13 + 6;
  v16 = 2 * v13 + 9;
  if (v9)
  {
    v16 = v15;
  }

  v17 = v14 + 6;
  v18 = 2 * v14 + 9;
  if (!v10)
  {
    v17 = v18;
  }

  v20 = *(&v8[2993 * a2 + 41 * v17 + 41 * a5] + v16 + a4);
  if (a5 >= a7)
  {
    if (a4 < a6)
    {
      v58 = v11 + a4;
      v59 = BYTE1(a3) >> 4;
      v60 = BYTE1(a3) & 0xF;
      v61 = v59 + 6;
      v62 = 2 * v59 + 9;
      if (v9)
      {
        v63 = v61;
      }

      else
      {
        v63 = v62;
      }

      v64 = v60 + 6;
      v65 = 2 * v60 + 9;
      if (v10)
      {
        v65 = v64;
      }

      v66 = *(&v8[2993 * a2 + 41 * v65 + 41 * a5] + v58 + v63);
      v67 = v12[a4];
      if (!a4)
      {
        ++v12;
      }

      v68 = *v12 * v20;
      v69 = *a1[3];
      v70 = (v68 + v67 * v66 + 16) >> 5;
      if (v70 >= *a1[4])
      {
        v71 = *a1[4];
      }

      else
      {
        v71 = v70;
      }

      if (v70 <= v69)
      {
        return v69;
      }

      else
      {
        return v71;
      }
    }
  }

  else
  {
    v21 = &unk_2775EDA06 + 2 * v10;
    v22 = (0x20u >> v10) + a5;
    v23 = (a3 >> 20) & 0xF;
    v24 = WORD1(a3) & 0xF;
    v25 = v23 + 6;
    v26 = 2 * v23 + 9;
    if (v9)
    {
      v26 = v25;
    }

    v27 = v24 + 6;
    v28 = 2 * v24 + 9;
    if (v10)
    {
      v28 = v27;
    }

    v29 = *(&v8[2993 * a2 + 41 * v28 + 41 * v22] + v26 + a4);
    if (a4 >= a6)
    {
      v53 = *a1[3];
      v54 = *a1[4];
    }

    else
    {
      v30 = v11 + a4;
      v31 = a3 >> 28;
      v32 = BYTE3(a3) & 0xF;
      v33 = v31 + 6;
      v34 = 2 * v31 + 9;
      v35 = v9 == 0;
      if (v9)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      v37 = v32 + 6;
      v38 = 2 * v32 + 9;
      v39 = v7 >> 4;
      v40 = v39 + 6;
      v41 = 2 * v39 + 9;
      if (!v35)
      {
        v41 = v40;
      }

      v42 = v10 == 0;
      if (v10)
      {
        v43 = v37;
      }

      else
      {
        v43 = v38;
      }

      v44 = &v8[2993 * a2];
      v45 = *(&v44[41 * v43 + 41 * v22] + v36 + v30);
      v46 = v7 & 0xF;
      v47 = v46 + 6;
      v48 = 2 * v46 + 9;
      if (!v42)
      {
        v48 = v47;
      }

      v49 = *(&v44[41 * v48 + 41 * a5] + v41 + v30);
      v50 = v12[a4];
      if (a4)
      {
        v51 = v12;
      }

      else
      {
        v51 = v12 + 1;
      }

      v52 = *v51;
      v53 = *a1[3];
      v54 = *a1[4];
      v55 = (v52 * v29 + v50 * v45 + 16) >> 5;
      if (v55 >= v54)
      {
        v29 = *a1[4];
      }

      else
      {
        v29 = v55;
      }

      if (v55 <= v53)
      {
        v29 = *a1[3];
      }

      v56 = (v52 * v20 + v50 * v49 + 16) >> 5;
      if (v56 >= v54)
      {
        v57 = *a1[4];
      }

      else
      {
        v57 = v56;
      }

      if (v56 <= v53)
      {
        LODWORD(v20) = *a1[3];
      }

      else
      {
        LODWORD(v20) = v57;
      }
    }

    v72 = v21[a5];
    if (!a5)
    {
      ++v21;
    }

    v73 = (v20 * *v21 + v29 * v72 + 16) >> 5;
    if (v73 < v54)
    {
      v54 = v73;
    }

    if (v73 <= v53)
    {
      return v53;
    }

    else
    {
      return v54;
    }
  }

  return v20;
}

uint64_t sub_27758B62C(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  if (a4 >= 1)
  {
    v5 = 0;
    v6 = ~a2;
    v7 = -a2;
    v8 = 4 * a2;
    v9 = result - 4 * a2;
    while (a3 < 1)
    {
LABEL_12:
      result += v8;
      ++v5;
      v9 += v8;
      if (v5 == a4)
      {
        return result;
      }
    }

    v10 = 0;
    v11 = (9472 * v5 - 19968) & 0xFF00 ^ a5 ^ (105 - 83 * v5);
    v12 = v6;
    while (1)
    {
      *(result + v10) = 0;
      v11 = (v11 >> 1) & 0xFFFF7FFF | ((((v11 ^ (v11 >> 3) ^ (v11 >> 12)) ^ (v11 >> 1)) & 1) << 15);
      *(result + v10) = BYTE1(v11);
      if (v10)
      {
        *(result + v10 + 1) = *(result + v10 - 4);
        if (v5)
        {
          *(result + v10 + 2) = *(v9 + v10);
          v13 = v12;
          v14 = 3;
LABEL_10:
          *(result + v14 + v10) = *(result + 4 * v13);
        }
      }

      else if (v5)
      {
        v13 = v7;
        v14 = 2;
        goto LABEL_10;
      }

      v10 += 4;
      ++v12;
      if (4 * a3 == v10)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

double sub_27758B71C(_BYTE *a1, _OWORD *a2, int a3)
{
  if (a1[10] >= 0xEu)
  {
    v4 = 14;
  }

  else
  {
    v4 = a1[10];
  }

  v5 = a1 + 11;
  v6 = a1 + 25;
  if (a3 && (a1[4] & 2) == 0)
  {
    if (a3 != 1)
    {
      if (a1[60] >= 0xAu)
      {
        v4 = 10;
      }

      else
      {
        v4 = a1[60];
      }

      if (a1[60])
      {
        v5 = a1 + 61;
        v6 = a1 + 71;
        if (v4)
        {
          goto LABEL_13;
        }
      }

LABEL_87:
      result = 0.0;
      a2[14] = 0u;
      a2[15] = 0u;
      a2[12] = 0u;
      a2[13] = 0u;
      a2[10] = 0u;
      a2[11] = 0u;
      a2[8] = 0u;
      a2[9] = 0u;
      a2[6] = 0u;
      a2[7] = 0u;
      a2[4] = 0u;
      a2[5] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    }

    if (a1[39] >= 0xAu)
    {
      v4 = 10;
    }

    else
    {
      v4 = a1[39];
    }

    if (!a1[39])
    {
      goto LABEL_87;
    }

    v5 = a1 + 40;
    v6 = a1 + 50;
  }

  if (!v4)
  {
    goto LABEL_87;
  }

LABEL_13:
  v7 = *v5;
  if (*v5)
  {
    v8 = *v6;
    v9 = (v7 + 15) & 0x1F0;
    v10 = vdupq_n_s64(v7 - 1);
    v11 = xmmword_2775ED420;
    v12 = xmmword_2775ED430;
    v13 = xmmword_2775ED440;
    v14 = xmmword_2775ED450;
    v15 = xmmword_2775ED460;
    v16 = xmmword_2775ED470;
    v17 = xmmword_2775ED480;
    v18 = xmmword_2775ED490;
    v19 = a2 + 7;
    v20 = vdupq_n_s64(0x10uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v10, v18));
      if (vuzp1_s8(vuzp1_s16(v21, *v10.i8), *v10.i8).u8[0])
      {
        *(v19 - 7) = v8;
      }

      if (vuzp1_s8(vuzp1_s16(v21, *&v10), *&v10).i8[1])
      {
        *(v19 - 6) = v8;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v17))), *&v10).i8[2])
      {
        *(v19 - 5) = v8;
        *(v19 - 4) = v8;
      }

      v22 = vmovn_s64(vcgeq_u64(v10, v16));
      if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i32[1])
      {
        *(v19 - 3) = v8;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i8[5])
      {
        *(v19 - 2) = v8;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v15)))).i8[6])
      {
        *(v19 - 1) = v8;
        *v19 = v8;
      }

      v23 = vmovn_s64(vcgeq_u64(v10, v14));
      if (vuzp1_s8(vuzp1_s16(v23, *v10.i8), *v10.i8).u8[0])
      {
        v19[1] = v8;
      }

      if (vuzp1_s8(vuzp1_s16(v23, *&v10), *&v10).i8[1])
      {
        v19[2] = v8;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))), *&v10).i8[2])
      {
        v19[3] = v8;
        v19[4] = v8;
      }

      v24 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i32[1])
      {
        v19[5] = v8;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i8[5])
      {
        v19[6] = v8;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11)))).i8[6])
      {
        v19[7] = v8;
        v19[8] = v8;
      }

      v16 = vaddq_s64(v16, v20);
      v17 = vaddq_s64(v17, v20);
      v18 = vaddq_s64(v18, v20);
      v15 = vaddq_s64(v15, v20);
      v14 = vaddq_s64(v14, v20);
      v13 = vaddq_s64(v13, v20);
      v12 = vaddq_s64(v12, v20);
      v19 += 16;
      v11 = vaddq_s64(v11, v20);
      v9 -= 16;
    }

    while (v9);
  }

  v25 = v4 - 1;
  if (v4 == 1)
  {
    v26 = v7;
  }

  else
  {
    v27 = 0;
    if (v25 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v25;
    }

    v29 = vdupq_n_s64(0x10uLL);
    do
    {
      v30 = v27 + 1;
      v26 = v5[v27 + 1];
      v31 = v26 - v7;
      if ((v26 - v7) >= 1)
      {
        v32 = 0;
        v33 = v6[v27];
        if (v31 >= 256 - v7)
        {
          v31 = 256 - v7;
        }

        if (v31 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v31;
        }

        v35 = vdupq_n_s64(v34 - 1);
        v36 = (v6[v30] - v33) * (((v31 >> 1) | 0x10000) / v31);
        v37 = a2 + v7 + 7;
        v38 = (v34 + 15) & 0x3F0;
        v39 = xmmword_2775ED490;
        v40 = xmmword_2775ED480;
        v41 = xmmword_2775ED470;
        v42 = xmmword_2775ED460;
        v43 = xmmword_2775ED450;
        v44 = xmmword_2775ED440;
        v45 = xmmword_2775ED430;
        v46 = xmmword_2775ED420;
        do
        {
          v47 = vmovn_s64(vcgeq_u64(v35, v39));
          if (vuzp1_s8(vuzp1_s16(v47, 14), 14).u8[0])
          {
            *(v37 - 7) = v33 + ((v36 * v32 + 0x8000) >> 16);
          }

          if (vuzp1_s8(vuzp1_s16(v47, 14), 14).i8[1])
          {
            *(v37 - 6) = v33 + ((v36 * (v32 | 1) + 0x8000) >> 16);
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v35, *&v40))), 14).i8[2])
          {
            *(v37 - 5) = v33 + ((v36 * (v32 | 2) + 0x8000) >> 16);
            *(v37 - 4) = v33 + ((v36 * (v32 | 3) + 0x8000) >> 16);
          }

          v48 = vmovn_s64(vcgeq_u64(v35, v41));
          if (vuzp1_s8(14, vuzp1_s16(v48, 14)).i32[1])
          {
            *(v37 - 3) = v33 + ((v36 * (v32 | 4) + 0x8000) >> 16);
          }

          if (vuzp1_s8(14, vuzp1_s16(v48, 14)).i8[5])
          {
            *(v37 - 2) = v33 + ((v36 * (v32 | 5) + 0x8000) >> 16);
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v35, *&v42)))).i8[6])
          {
            *(v37 - 1) = v33 + ((v36 * (v32 | 6) + 0x8000) >> 16);
            *v37 = v33 + ((v36 * (v32 | 7) + 0x8000) >> 16);
          }

          v49 = vmovn_s64(vcgeq_u64(v35, v43));
          if (vuzp1_s8(vuzp1_s16(v49, 14), 14).u8[0])
          {
            v37[1] = v33 + ((v36 * (v32 | 8) + 0x8000) >> 16);
          }

          if (vuzp1_s8(vuzp1_s16(v49, 14), 14).i8[1])
          {
            v37[2] = v33 + ((v36 * (v32 | 9) + 0x8000) >> 16);
          }

          if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgeq_u64(v35, *&v44))), 14).i8[2])
          {
            v37[3] = v33 + ((v36 * (v32 | 0xA) + 0x8000) >> 16);
            v37[4] = v33 + ((v36 * (v32 | 0xB) + 0x8000) >> 16);
          }

          v50 = vmovn_s64(vcgeq_u64(v35, v45));
          if (vuzp1_s8(14, vuzp1_s16(v50, 14)).i32[1])
          {
            v37[5] = v33 + ((v36 * (v32 | 0xC) + 0x8000) >> 16);
          }

          if (vuzp1_s8(14, vuzp1_s16(v50, 14)).i8[5])
          {
            v37[6] = v33 + ((v36 * (v32 | 0xD) + 0x8000) >> 16);
          }

          if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgeq_u64(v35, *&v46)))).i8[6])
          {
            v37[7] = v33 + ((v36 * (v32 | 0xE) + 0x8000) >> 16);
            v37[8] = v33 + ((v36 * (v32 | 0xF) + 0x8000) >> 16);
          }

          v41 = vaddq_s64(v41, v29);
          v32 += 16;
          v40 = vaddq_s64(v40, v29);
          v39 = vaddq_s64(v39, v29);
          v42 = vaddq_s64(v42, v29);
          v43 = vaddq_s64(v43, v29);
          v44 = vaddq_s64(v44, v29);
          v45 = vaddq_s64(v45, v29);
          v37 += 16;
          v46 = vaddq_s64(v46, v29);
          v38 -= 16;
        }

        while (v38);
      }

      v27 = v30;
      LODWORD(v7) = v26;
    }

    while (v30 != v28);
  }

  v51 = a2 + v26;
  v52 = v6[v25];

  memset(v51, v52, 256 - v26);
  return result;
}

uint64_t sub_27758BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a1 + 4);
  v5 = (v4 >> 17) & 1;
  v6 = (a2 + 1494);
  do
  {
    v7 = (a3 + v3);
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[3];
    v7[2] = v6[2];
    v7[3] = v10;
    *v7 = v8;
    v7[1] = v9;
    v11 = v6[4];
    v12 = v6[5];
    v13 = v6[7];
    v7[6] = v6[6];
    v7[7] = v13;
    v7[4] = v11;
    v7[5] = v12;
    v3 += 128;
    v6 = (v6 + 164);
  }

  while (v3 != 0x2000);
  v14 = 0;
  v15 = (v4 >> 16) & 1;
  v16 = 1476;
  if (v5)
  {
    v16 = 984;
  }

  v17 = 0x40uLL >> (BYTE2(v4) & 1);
  v18 = 0x40uLL >> v5;
  v19 = 18;
  if (v15)
  {
    v19 = 12;
  }

  v20 = (a3 + 0x2000);
  v21 = v16 + a2 + v19;
  v22 = (v21 + 11972);
  v23 = (v21 + 23944);
  do
  {
    v24 = v23;
    v25 = v20;
    v26 = v22;
    v27 = v17;
    do
    {
      v28 = *v26++;
      *v25 = v28;
      v30 = *v24++;
      result = v30;
      v25[1] = v30;
      v25 += 2;
      --v27;
    }

    while (v27);
    ++v14;
    v22 += 82;
    v20 += 128;
    v23 += 82;
  }

  while (v14 != v18);
  return result;
}

uint64_t sub_27758BE34(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 39);
  v4 = *(result + 4);
  v5 = *(result + 60);
  v106 = (v5 | *(result + 4) & 2) == 0;
  v107 = (v3 | *(result + 4) & 2) == 0;
  v6 = v4 >> 13;
  v7 = ((v4 >> 8) & 3) - v6;
  v8 = v7 + 4;
  v105 = v4 & 0x10000;
  if ((v4 & 0x10000) != 0)
  {
    v9 = 44;
  }

  else
  {
    v9 = 82;
  }

  v10 = *(result + 8);
  v104 = v4 & 0x20000;
  v11 = 38;
  if ((v4 & 0x20000) == 0)
  {
    v11 = 73;
  }

  v109 = v11;
  v125 = -(128 << v6);
  v124 = (256 << v6) + ~(128 << v6);
  v12 = v4 >> 6;
  v123 = (v4 >> 6) + 6;
  v13 = (v4 >> 4) & 3;
  v111 = v9;
  v128 = *(result + 10);
  if (*(result + 10))
  {
    v121 = *(result + 60);
    v14 = 0;
    if (v7 == -4)
    {
      v15 = 0;
    }

    else
    {
      v15 = 1 << (v7 + 3);
    }

    v16 = a2 - 166 * ((v4 >> 4) & 3) + 498;
    v17 = 4;
    v18 = 3;
    v126 = *(result + 8);
    do
    {
      if (v18 >= v14)
      {
        v19 = v14;
        v20 = a2 + 164 * v14;
        do
        {
          for (i = 0; i != 164; i += 2)
          {
            v10 = (v10 >> 1) & 0xFFFF7FFF | ((((v10 ^ (v10 >> 3) ^ (v10 >> 12)) ^ (v10 >> 1)) & 1) << 15);
            *(v20 + i) = (v15 + word_277600AC0[v10 >> 5]) >> v8;
          }

          ++v19;
          v20 += 164;
        }

        while (v17 != v19);
        v14 = v17;
      }

      v22 = a2 + 164 * v18;
      v23 = v16;
      for (j = 3; j != 79; ++j)
      {
        v25 = 0;
        LODWORD(v26) = 0;
        v27 = v23;
        v28 = -v13;
        do
        {
          v29 = v28;
          if (v28 | -v13)
          {
            v26 = v26;
            v30 = v27;
            v31 = -v13;
            do
            {
              v32 = *v30++;
              v25 += v32 * *(result + 81 + v26++);
              if (v31 >= v13)
              {
                break;
              }

              ++v31;
            }

            while (v31 | v29);
          }

          v28 = v29 + 1;
          v27 += 82;
        }

        while (v29);
        v33 = ((v25 + (32 << v12)) >> v123) + *(v22 + 2 * j);
        v34 = v124;
        if (v33 < v124)
        {
          v34 = ((v25 + (32 << v12)) >> v123) + *(v22 + 2 * j);
        }

        if (v33 <= v125)
        {
          v35 = v125;
        }

        else
        {
          v35 = v34;
        }

        *(v22 + 2 * j) = v35;
        v23 += 2;
      }

      ++v18;
      ++v17;
      v16 += 164;
    }

    while (v18 != 73);
    v9 = v111;
    v10 = v126;
    v5 = v121;
    if (a3)
    {
      v36 = 0;
      v37 = a2 + 1494;
      v38 = a3;
      do
      {
        for (k = 0; k != 128; k += 2)
        {
          *(v38 + k) = *(v37 + k);
        }

        ++v36;
        v38 += 128;
        v37 += 164;
      }

      while (v36 != 64);
    }
  }

  if (v3)
  {
    v40 = 1;
    if (v5)
    {
LABEL_38:
      v41 = 2;
      goto LABEL_41;
    }
  }

  else
  {
    v40 = (*(result + 4) >> 1) & 1;
    if (v5)
    {
      goto LABEL_38;
    }
  }

  v41 = *(result + 4) & 2;
LABEL_41:
  if (v41 | v40)
  {
    v42 = 0;
    v43 = v10 ^ 0xB524;
    v44 = v10 ^ 0x49D8;
    v45 = v4;
    v46 = v4 >> 4;
    if (v7 == -4)
    {
      v47 = 0;
    }

    else
    {
      v47 = 1 << (v7 + 3);
    }

    v119 = a2 + 11972;
    v118 = a2 + 23944;
    v48 = 41;
    if (!v105)
    {
      v48 = 79;
    }

    v117 = v48;
    v116 = 32 << v12;
    v50 = 1 << (BYTE2(v105) + (v104 >> 17) - 1);
    if (!((v105 >> 16) + (v104 >> 17)))
    {
      v50 = 0;
    }

    v127 = v50;
    v49 = -v13;
    v51 = -v13;
    v52 = (2 * v13) | 1;
    v110 = v104 >> 17;
    v53 = (2 * (v46 & 3)) | 1;
    v54 = a2 - 166 * ((v45 >> 4) & 3);
    v55 = v54 + 24442;
    v56 = v54 + 12470;
    v57 = 4;
    v58 = 3;
    v108 = a2;
    do
    {
      v113 = v57;
      if (v58 >= v42)
      {
        v59 = v42;
        v60 = (v118 + 164 * v42);
        v61 = (v119 + 164 * v42);
        do
        {
          v62 = v61;
          v63 = v60;
          v64 = v9;
          do
          {
            if (!v107)
            {
              v43 = (v43 >> 1) & 0xFFFF7FFF | ((((v43 ^ (v43 >> 3) ^ (v43 >> 12)) ^ (v43 >> 1)) & 1) << 15);
              *v62 = (v47 + word_277600AC0[v43 >> 5]) >> v8;
            }

            if (!v106)
            {
              v44 = (v44 >> 1) & 0xFFFF7FFF | ((((v44 ^ (v44 >> 3) ^ (v44 >> 12)) ^ (v44 >> 1)) & 1) << 15);
              *v63 = (v47 + word_277600AC0[v44 >> 5]) >> v8;
            }

            ++v63;
            ++v62;
            --v64;
          }

          while (v64);
          ++v59;
          v60 += 82;
          v61 += 82;
        }

        while (v57 != v59);
        v112 = v57;
      }

      else
      {
        v112 = v42;
      }

      v120 = a2 + 164 * (((v58 - 3) << v110) + 3);
      v122 = v58;
      v114 = v56;
      v115 = v55;
      v65 = v56;
      v66 = v55;
      for (m = 3; m != v117; ++m)
      {
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v71 = v65;
        v72 = v66;
        v73 = v49;
        do
        {
          v74 = 0;
          v75 = v73;
          v76 = v68;
          v77 = result + v68;
          v68 += v52;
          while (1)
          {
            v78 = *(v77 + v74 + 105);
            v79 = *(v77 + v74 + 130);
            if (!((v51 + v74) | v75))
            {
              break;
            }

            v70 += *(v71 + 2 * v74) * v78;
            v69 += *(v72 + 2 * v74++) * v79;
            if (v53 == v74)
            {
              goto LABEL_73;
            }
          }

          v68 = v76 + v74;
          if (v128)
          {
            v80 = 0;
            v81 = 0;
            v82 = (v120 + 2 * (((m - 3) << SBYTE2(v105)) + 3));
            do
            {
              v83 = v82;
              v84 = (v105 >> 16) + 1;
              do
              {
                v85 = *v83++;
                v81 += v85;
                --v84;
              }

              while (v84);
              ++v80;
              v82 += 82;
            }

            while (v80 != (v104 >> 17) + 1);
            v86 = (v81 + v127) >> (BYTE2(v105) + (v104 >> 17));
            v70 += v86 * v78;
            v69 += v86 * v79;
          }

LABEL_73:
          v73 = v75 + 1;
          v72 += 164;
          v71 += 164;
        }

        while (v75);
        v87 = v119 + 164 * v122;
        v88 = ((v70 + v116) >> v123) + *(v87 + 2 * m);
        if (v88 >= v124)
        {
          v89 = v124;
        }

        else
        {
          v89 = ((v70 + v116) >> v123) + *(v87 + 2 * m);
        }

        if (v88 <= v125)
        {
          v90 = v125;
        }

        else
        {
          v90 = v89;
        }

        *(v87 + 2 * m) = v90;
        v91 = v118 + 164 * v122;
        v92 = ((v69 + v116) >> v123) + *(v91 + 2 * m);
        if (v92 >= v124)
        {
          v93 = v124;
        }

        else
        {
          v93 = ((v69 + v116) >> v123) + *(v91 + 2 * m);
        }

        if (v92 <= v125)
        {
          v94 = v125;
        }

        else
        {
          v94 = v93;
        }

        *(v91 + 2 * m) = v94;
        v66 += 2;
        v65 += 2;
      }

      v58 = v122 + 1;
      v57 = (v113 + 1);
      v55 = v115 + 164;
      v56 = v114 + 164;
      a2 = v108;
      v9 = v111;
      v42 = v112;
    }

    while (v122 + 1 != v109);
    result = a3;
    if (a3)
    {
      v95 = 0;
      if (v104)
      {
        v96 = 984;
      }

      else
      {
        v96 = 1476;
      }

      if (v105)
      {
        v97 = 12;
      }

      else
      {
        v97 = 18;
      }

      v98 = v96 + v97 + v108;
      v99 = v98 + 23944;
      v100 = v98 + 11972;
      do
      {
        v101 = 0;
        do
        {
          v102 = result + 2 * v101;
          *(v102 + 0x2000) = *(v100 + 2 * v101);
          *(v102 + 0x4000) = *(v99 + 2 * v101++);
        }

        while (0x40u >> SBYTE2(v105) != v101);
        ++v95;
        result += 128;
        v99 += 164;
        v100 += 164;
      }

      while (v95 != 0x40u >> v110);
    }
  }

  return result;
}

BOOL sub_27758C528(char a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  return (sub_277584BA4(a2) & 1) == 0 && (!sub_277584AC8(a2) || (a1 & 1) == 0);
}

uint64_t sub_27758C584(uint64_t a1, int32x2_t *a2, CVPixelBufferRef pixelBuffer)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v7 = a2[33];
  if (*(*&v7 + 24) == 1 && !a2[8].i32[0])
  {
    return 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  if (!v9)
  {
LABEL_10:
    objc_autoreleasePoolPop(v8);
    goto LABEL_11;
  }

  v10 = v9;
  if ([v10 metalIsSupported] & 1) == 0 || !CVPixelBufferGetIOSurface(pixelBuffer) || (v11 = objc_msgSend(v10, "maximumTextureDimension"), CVPixelBufferGetWidth(pixelBuffer) > v11) || CVPixelBufferGetHeight(pixelBuffer) > v11 || (v12 = CVPixelBufferGetPixelFormatType(pixelBuffer), (sub_277584AC8(v12)) || objc_msgSend(v10, "broken444") && (sub_277584CD8(v12))
  {

    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v8);
  for (i = 0; i != 3; ++i)
  {
    v15 = *(*&v7 + 8 * i);
    if (v15)
    {
      if (*(*&v7 + i + 27) == 1)
      {
        v16 = *(*&v7 + 8 * i + 32);
        if (v16 != 1)
        {
          CVPixelBufferUnlockBaseAddress(v15, v16);
          *(*&v7 + i + 27) = 0;
        }
      }
    }
  }

  v17 = *(*&v7 + 26);
  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  if (v17 != 1)
  {
    if (v19)
    {
      v20 = [v19 copyPicture:a2 toPixelBuffer:pixelBuffer];
      goto LABEL_29;
    }

LABEL_30:
    v21 = -12911;
    goto LABEL_31;
  }

  if (!v19)
  {
    goto LABEL_30;
  }

  v20 = [v19 applyFilmGrain:a1 + 40 forPicture:a2 toPixelBuffer:pixelBuffer];
LABEL_29:
  v21 = v20;
LABEL_31:
  objc_autoreleasePoolPop(v18);
  for (j = 0; j != 3; ++j)
  {
    v23 = *(*&v7 + 8 * j);
    if (!v23)
    {
      continue;
    }

    v24 = *&v7 + 8 * j;
    if (*(*&v7 + j + 27) == 1)
    {
      v25 = *(v24 + 32);
      if (v25 == 1)
      {
        continue;
      }

      CVPixelBufferUnlockBaseAddress(v23, v25);
      v23 = *(*&v7 + 8 * j);
    }

    *(v24 + 32) = 1;
    CVPixelBufferLockBaseAddress(v23, 1uLL);
    *(*&v7 + j + 27) = 1;
  }

  if (!v21)
  {
    return 0;
  }

  v26 = pixelBuffer;
  if (atomic_load_explicit((a1 + 36896), memory_order_acquire) != -1)
  {
    v28 = &v26;
    v27 = &v28;
    std::__call_once((a1 + 36896), &v27, sub_27758C8DC);
  }

  if (sub_277584BA4(PixelFormatType))
  {
    return 4294954385;
  }

LABEL_11:
  if (*(*&v7 + 26) == 1)
  {
    sub_2775897E0(a1 + 40, a2, pixelBuffer, 0);
    return 0;
  }

  return sub_27758C82C(a1, a2, pixelBuffer, 0);
}

uint64_t sub_27758C82C(uint64_t a1, uint64_t a2, CVPixelBufferRef pixelBuffer, uint64_t a4)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  if (*(a2 + 68) == 8)
  {
    v9 = (*a1)(a2, pixelBuffer, a4);
  }

  else if (sub_277584AC8(PixelFormatType))
  {
    v9 = (*(a1 + 16))(a2, pixelBuffer);
  }

  else
  {
    v9 = (*(a1 + 8))(a2, pixelBuffer, a4);
  }

  v10 = v9;
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return v10;
}

void sub_27758C8DC(uint64_t ***a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = ***a1;
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to copy via metal to %@", &v3, 0xCu);
  }
}

uint64_t sub_27758C988(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 56);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v7 = *(a1 + 16);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  if (v4 >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 40);
    v11 = (v7 + 4);
    do
    {
      if (v5 >= 1)
      {
        v12 = &BaseAddressOfPlane[BytesPerRowOfPlane * v9];
        v13 = v11;
        v14 = 1;
        do
        {
          v15 = *(v13 - 2) | (*(v13 - 1) << 10);
          v16 = *v13;
          v13 += 3;
          *v12++ = v15 | (v16 << 20);
          v17 = v14 + 2;
          v14 += 3;
        }

        while (v17 < v5);
      }

      ++v9;
      v11 = (v11 + v10);
    }

    while (v9 != v4);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v22 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    v23 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
    v24 = v18 == 1 ? v4 + 1 : v4;
    v25 = (v24 >> (v18 == 1));
    if (v25 >= 1)
    {
      v26 = 0;
      if (v18 == 3)
      {
        v27 = v5;
      }

      else
      {
        v27 = v5 + 1;
      }

      v28 = v27 >> (v18 != 3);
      v29 = 2 * (v21 >> 1);
      do
      {
        if (v28 >= 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = &v22[v23 * v26];
          do
          {
            v33 = *(v20 + v30 + 2) | (*(v19 + v30 + 4) << 10) | (*(v20 + v30 + 4) << 20);
            *v32 = *(v19 + v30) | (*(v20 + v30) << 10) | (*(v19 + v30 + 2) << 20);
            v32[1] = v33;
            v32 += 2;
            v31 += 3;
            v30 += 6;
          }

          while (v31 < v28);
        }

        ++v26;
        v19 += v29;
        v20 += v29;
      }

      while (v26 != v25);
    }
  }

  return 0;
}

uint64_t sub_27758CB20(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  v6 = 16 - *(a1 + 68);
  v7 = *(a1 + 56);
  v8 = *(a1 + 60);
  if ((*(*(a1 + 264) + 24) & 1) == 0)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    v10 = *(a1 + 16);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    if (v8 >= 1)
    {
      v12 = 0;
      v13 = BaseAddressOfPlane + 2 * a3 + 2 * (BytesPerRowOfPlane >> 1) * (a3 >> 32);
      v14 = 2 * (*(a1 + 40) >> 1);
      do
      {
        if (v7 >= 1)
        {
          v15 = 0;
          do
          {
            *(v13 + v15) = *(v10 + v15) << v6;
            v15 += 2;
          }

          while (2 * v7 != v15);
        }

        ++v12;
        v13 += 2 * (BytesPerRowOfPlane >> 1);
        v10 += v14;
      }

      while (v12 != v8);
    }
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    v20 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
    v21 = v16 == 1;
    v22 = v16 == 1 ? v8 + 1 : v8;
    v23 = v22 >> v21;
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = v20 >> 1;
      v26 = SHIDWORD(a3) >> v21;
      v27 = v16 != 3;
      if (v16 == 3)
      {
        v28 = v7;
      }

      else
      {
        v28 = v7 + 1;
      }

      v29 = v28 >> v27;
      v30 = 2 * (*(a1 + 48) >> 1);
      v31 = v17 + 4 * (a3 >> v27) + 2 * v25 * v26 + 2;
      v32 = 2 * v25;
      do
      {
        if (v29 >= 1)
        {
          v33 = 0;
          v34 = v31;
          do
          {
            *(v34 - 1) = *(v18 + v33) << v6;
            *v34 = *(v19 + v33) << v6;
            v34 += 2;
            v33 += 2;
          }

          while (2 * v29 != v33);
        }

        ++v24;
        v19 += v30;
        v18 += v30;
        v31 += v32;
      }

      while (v24 != v23);
    }
  }

  return 0;
}

uint64_t sub_27758CCF8(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  v6 = 8 - *(a1 + 68);
  v7 = *(a1 + 56);
  v8 = *(a1 + 60);
  if ((*(*(a1 + 264) + 24) & 1) == 0)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    v10 = *(a1 + 16);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    if (v8 >= 1)
    {
      v12 = 0;
      v13 = *(a1 + 40);
      v14 = BaseAddressOfPlane + a3 + BytesPerRowOfPlane * (a3 >> 32);
      do
      {
        if (v7 >= 1)
        {
          for (i = 0; i != v7; ++i)
          {
            *(v14 + i) = *(v10 + i) << v6;
          }
        }

        v14 += BytesPerRowOfPlane;
        v10 += v13;
        ++v12;
      }

      while (v12 != v8);
    }
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    v20 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
    v21 = v16 == 1;
    v22 = v16 == 1 ? v8 + 1 : v8;
    v23 = v22 >> v21;
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = *(a1 + 48);
      v26 = SHIDWORD(a3) >> v21;
      v27 = v16 != 3;
      if (v16 == 3)
      {
        v28 = v7;
      }

      else
      {
        v28 = v7 + 1;
      }

      v29 = (v28 >> v27);
      v30 = v17 + 2 * (a3 >> v27) + v20 * v26 + 1;
      do
      {
        if (v29 >= 1)
        {
          v31 = 0;
          v32 = v30;
          do
          {
            *(v32 - 1) = *(v18 + v31) << v6;
            *v32 = *(v19 + v31) << v6;
            v32 += 2;
            ++v31;
          }

          while (v29 != v31);
        }

        v18 += v25;
        v19 += v25;
        ++v24;
        v30 += v20;
      }

      while (v24 != v23);
    }
  }

  return 0;
}

void sub_27758CE9C()
{
  if (atomic_load_explicit(qword_280B9A820, memory_order_acquire) != -1)
  {
    v3[1] = v0;
    v3[2] = v1;
    v2 = v3;
    v3[0] = sub_27758CF10;
    std::__call_once(qword_280B9A820, &v2, sub_27758CF04);
  }
}

uint64_t sub_27758CF10()
{
  v3 = 0;
  v1 = 0;
  v2 = 8;
  sysctlbyname("hw.cachelinesize", &v1, &v2, 0, 0);
  v2 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v3, &v2, 0, 0) && v2 == 4)
  {
    dword_280B623E0 = v3;
  }

  v2 = 4;
  sysctlbyname("hw.logicalcpu", &v3, &v2, 0, 0);
  v2 = 4;
  sysctlbyname("hw.perflevel0.physicalcpu", &v3, &v2, 0, 0);
  v2 = 4;
  result = sysctlbyname("hw.perflevel1.physicalcpu", &v3, &v2, 0, 0);
  dword_280B9A85C |= 2u;
  return result;
}

double sub_27758D010(_BYTE *a1, _OWORD *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[10] >= 0xEu)
  {
    v3 = 14;
  }

  else
  {
    v3 = a1[10];
  }

  v4 = a1 + 11;
  v5 = a1 + 25;
  if (a3 && (a1[4] & 2) == 0)
  {
    if (a3 != 1)
    {
      if (a1[60] >= 0xAu)
      {
        v3 = 10;
      }

      else
      {
        v3 = a1[60];
      }

      v4 = a1 + 61;
      v5 = a1 + 71;
      if (v3)
      {
        goto LABEL_12;
      }

LABEL_38:
      *&v29 = 0;
      a2[14] = 0u;
      a2[15] = 0u;
      a2[12] = 0u;
      a2[13] = 0u;
      a2[10] = 0u;
      a2[11] = 0u;
      a2[8] = 0u;
      a2[9] = 0u;
      a2[6] = 0u;
      a2[7] = 0u;
      a2[4] = 0u;
      a2[5] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
      return *&v29;
    }

    if (a1[39] >= 0xAu)
    {
      v3 = 10;
    }

    else
    {
      v3 = a1[39];
    }

    v4 = a1 + 40;
    v5 = a1 + 50;
  }

  if (!v3)
  {
    goto LABEL_38;
  }

LABEL_12:
  v6 = *v4;
  if (*v4)
  {
    v7 = vld1q_dup_s8(v5);
    v8 = v33;
    v9 = *v4;
    do
    {
      *v8 = v7;
      v8 = (v8 + 1);
      --v9;
    }

    while (v9);
  }

  v10 = v3 - 1;
  if (v3 == 1)
  {
    v11 = v6;
  }

  else
  {
    v12 = 0;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    v14.i64[0] = 0x800000008;
    v14.i64[1] = 0x800000008;
    do
    {
      v15 = v12 + 1;
      v11 = v4[v12 + 1];
      LODWORD(v16) = v11 - v6;
      if ((v11 - v6) >= 1)
      {
        v17 = 0;
        if (v16 >= (256 - v6))
        {
          v16 = 256 - v6;
        }

        else
        {
          v16 = v16;
        }

        v18 = v5[v12];
        v19 = vdupq_n_s32((v5[v15] - v18) * (((v16 >> 1) | 0x10000) / v16));
        v20 = vdupq_n_s16(v18);
        v21 = &v33[v6];
        v22 = xmmword_2775ED4B0;
        v23 = xmmword_2775ED4A0;
        do
        {
          *&v21[v17] = vmovn_s16(vaddq_s16(vraddhn_high_s32(vraddhn_s32(vmulq_s32(v22, v19), 0), vmulq_s32(v23, v19), 0), v20));
          v22 = vaddq_s32(v22, v14);
          v23 = vaddq_s32(v23, v14);
          v17 += 8;
        }

        while (v17 < v16);
      }

      v12 = v15;
      v6 = v11;
    }

    while (v15 != v13);
  }

  v24 = &v5[v10];
  v25 = vld1q_dup_s8(v24);
  for (i = v11; i != 256; ++i)
  {
    *&v33[i] = v25;
  }

  v27 = 0;
  do
  {
    v28 = &a2[v27];
    v29 = *&v33[v27 * 16];
    v30 = *&v33[v27 * 16 + 16];
    *v28 = v29;
    v28[1] = v30;
    v31 = v27 >= 14;
    v27 += 2;
  }

  while (!v31);
  return *&v29;
}

uint64_t sub_27758D240(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 4);
  v5 = 12;
  if ((v4 & 0x10000) == 0)
  {
    v5 = 18;
  }

  v6 = (v4 & 0x20000) == 0;
  v7 = 984;
  if (v6)
  {
    v7 = 1476;
  }

  v8 = v7 + v5 + a2;
  v9 = v8 + 23944;
  v10 = v8 + 11972;
  v11 = (a3 + 0x2000);
  do
  {
    v12 = 0;
    v13 = -8;
    do
    {
      *(a3 + v12) = *(a2 + v12 + 1494);
      v14.val[0] = *(v10 + v12);
      v14.val[1] = *(v9 + v12);
      vst2q_s16(v11, v14);
      v11 += 16;
      v13 += 8;
      v12 += 16;
    }

    while (v13 < 0x38);
    a3 += v12;
    ++v3;
    v9 += 164;
    v10 += 164;
    a2 += 164;
  }

  while (v3 != 64);
  return result;
}

unint64_t sub_27758D2D8(unint64_t result, uint64_t a2, _OWORD *a3)
{
  v5 = *(result + 39);
  v6 = *(result + 4);
  v7 = (v5 | v6 & 2) == 0;
  v8 = *(result + 60);
  v9 = (v8 | v6 & 2) == 0;
  v10 = v6 >> 13;
  v11 = ((v6 >> 8) & 3) - v10;
  v12 = v11 + 4;
  if ((v6 & 0x10000) != 0)
  {
    v13 = 44;
  }

  else
  {
    v13 = 82;
  }

  v14 = *(result + 8);
  v15 = v14 ^ 0xB524;
  v16 = v14 ^ 0x49D8;
  v17 = -(128 << v10);
  v18 = (256 << v10) + ~(128 << v10);
  v19 = v6 >> 6;
  v20 = *(result + 105);
  v21 = vmovl_s8(*v20.i8);
  v107.val[0] = vmovl_high_s8(v20);
  v107.val[1] = vmovl_s8(*(result + 121));
  v22 = v21;
  v22.i16[7] = 0;
  v23 = vqtbl2q_s8(*v21.i8, xmmword_2775ED4C0);
  v24 = 0xFFFF191817161514;
  v25 = vqtbl2q_s8(v107, xmmword_2775ED4D0);
  v26 = vextq_s8(v107.val[1], 0, 0xAuLL).u64[0];
  v27 = *(result + 130);
  v28 = vmovl_s8(*v27.i8);
  v108.val[0] = vmovl_high_s8(v27);
  v108.val[1] = vmovl_s8(*(result + 146));
  v29 = v28;
  v29.i16[7] = 0;
  v30 = vqtbl2q_s8(*v28.i8, xmmword_2775ED4C0);
  v31 = vqtbl2q_s8(v108, xmmword_2775ED4D0);
  v32.i64[0] = vextq_s8(v108.val[1], 0, 0xAuLL).u64[0];
  if (*(result + 10))
  {
    v33 = 0;
    v34 = v19 + 6;
    v109.val[1] = vmovl_s8(*(result + 97));
    v35 = vextq_s8(v109.val[1], 0, 0xAuLL).u64[0];
    v36 = vdup_n_s16(*(result + 129));
    v36.i16[1] = *(result + 154);
    v37 = *(result + 81);
    v109.val[0] = vmovl_high_s8(v37);
    v38 = vqtbl2q_s8(v109, xmmword_2775ED4D0);
    v39 = vmovl_s8(*v37.i8);
    v40 = vqtbl2q_s8(*v39.i8, xmmword_2775ED4C0);
    v41 = v39;
    v41.i16[7] = 0;
    v42 = 1 << (v11 + 3);
    if (v11 == -4)
    {
      v42 = 0;
    }

    v43 = a2 + 11972;
    v44 = a2 + 23944;
    v45 = vdupq_n_s32(-6 - v19);
    v46 = 32 << v19;
    v47 = vdup_n_s16(v18);
    v48 = vdup_n_s16(v17);
    v49 = a2 + 24442;
    v50 = a2 + 12470;
    v51 = a2 + 12300;
    v106 = a3 - 48;
    v52 = 4;
    v53 = 3;
    v104 = a2 + 23944;
    v105 = a2 + 11972;
    v103 = a2;
    do
    {
      if (v53 >= v33)
      {
        v54 = v33;
        v55 = v104 + 164 * v33;
        v56 = v105 + 164 * v54;
        v57 = v103 + 164 * v54;
        do
        {
          for (i = 0; i != 164; i += 2)
          {
            v14 = (v14 >> 1) & 0xFFFF7FFF | ((((v14 ^ (v14 >> 3) ^ (v14 >> 12)) ^ (v14 >> 1)) & 1) << 15);
            *(v57 + i) = (v42 + word_277600AC0[v14 >> 5]) >> v12;
            if (!v7)
            {
              v15 = (v15 >> 1) & 0xFFFF7FFF | ((((v15 ^ (v15 >> 3) ^ (v15 >> 12)) ^ (v15 >> 1)) & 1) << 15);
              *(v56 + i) = (v42 + word_277600AC0[v15 >> 5]) >> v12;
            }

            if (!v9)
            {
              v16 = (v16 >> 1) & 0xFFFF7FFF | ((((v16 ^ (v16 >> 3) ^ (v16 >> 12)) ^ (v16 >> 1)) & 1) << 15);
              *(v55 + i) = (v42 + word_277600AC0[v16 >> 5]) >> v12;
            }
          }

          ++v54;
          v55 += 164;
          v56 += 164;
          v57 += 164;
        }

        while (v52 != v54);
        v33 = v52;
      }

      v59 = 0;
      v60 = *(v103 + 164 * v53);
      v61.i64[0] = *(v105 + 164 * v53);
      v61.i64[1] = *(v104 + 164 * v53);
      do
      {
        v62 = (a2 + v59);
        v63 = ((vaddvq_s32(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*(a2 + v59), *v39.i8), *(a2 + v59), v41), *(a2 + v59 + 164), *v40.i8), *(a2 + v59 + 164), v40), *(a2 + v59 + 328), *v38.i8), *(a2 + v59 + 328), v38), v60, v35)) + v46) >> v34) + *(a2 + v59 + 498);
        if (v63 >= v18)
        {
          v64 = v18;
        }

        else
        {
          v64 = v63;
        }

        if (v63 <= v17)
        {
          v65 = v17;
        }

        else
        {
          v65 = v64;
        }

        v62[62].i16[1] = v65;
        v66 = vpaddq_s32(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*(v43 + v59), *v21.i8), *(v43 + v59), v22), *(v43 + v59 + 164), *v23.i8), *(v43 + v59 + 164), v23), *(v51 + v59), *v25.i8), *(v51 + v59), v25), *v61.i8, v26), vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*(v44 + v59), *v28.i8), *(v44 + v59), v29), *(v51 + v59 + 11808), *v30.i8), *(v51 + v59 + 11808), v30), v62[3034], *v31.i8), *v62[3034].i8, v31), *&vextq_s8(v61, v61, 8uLL), *v32.i8));
        *&v3 = vmax_s16(vmin_s16(vqadd_s16(vqmovn_s32(vrshlq_s32(vmlal_s16(vpaddq_s32(v66, v66), vdup_n_s16(v65), v36), v45)), vzip1_s16(*(v50 + v59), *(v49 + v59))), v47), v48);
        v60 = vext_s8(v60, v60, 2uLL);
        v60.i16[2] = v65;
        *(v50 + v59) = v3;
        *(v49 + v59) = WORD1(v3);
        v61 = vqtbl2q_s8(*(&v3 - 1), xmmword_2775ED4E0);
        v59 += 2;
      }

      while (v59 != 152);
      if (a3 && v53 >= 9)
      {
        v67 = -16;
        v68 = v106;
        v69 = a2;
        do
        {
          *v68 = *(v69 + 510);
          v68[1] = *(v69 + 526);
          v68[512] = *(v69 + 12482);
          v68[513] = *(v69 + 12498);
          v68[1024] = *(v69 + 24454);
          v68[1025] = *(v69 + 24470);
          v67 += 16;
          v69 += 32;
          v68 += 2;
        }

        while (v67 < 0x30);
      }

      ++v53;
      ++v52;
      v49 += 164;
      v50 += 164;
      a2 += 164;
      v44 += 164;
      v51 += 164;
      v43 += 164;
      result = (v106 + 8);
      v106 += 8;
    }

    while (v53 != 73);
  }

  else if (v8 | v5)
  {
    v70 = a2;
    v71 = 0;
    v72 = (a2 + 24470);
    v73 = (a2 + 12482);
    v32.i64[1] = v32.i64[0];
    LODWORD(result) = 1 << (v11 + 3);
    if (v11 == -4)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    v74 = a2 + 11972;
    v75 = a2 + 23944;
    v76 = vdupq_n_s32(-6 - v19);
    v77 = vdup_n_s16(v18);
    v78 = vdup_n_s16(v17);
    v79 = a2 + 24442;
    v80 = a2 + 12470;
    v81 = a2 + 12300;
    v82 = 4;
    v83 = 3;
    v84 = a3;
    v85 = a2 + 23944;
    v86 = a2 + 11972;
    do
    {
      if (v83 >= v71)
      {
        v87 = v71;
        v88 = (v75 + 164 * v71);
        v89 = (v74 + 164 * v87);
        do
        {
          v90 = v89;
          v91 = v88;
          v92 = v13;
          do
          {
            if (!v7)
            {
              v15 = (v15 >> 1) & 0xFFFF7FFF | ((((v15 ^ (v15 >> 3) ^ (v15 >> 12)) ^ (v15 >> 1)) & 1) << 15);
              *v90 = (result + word_277600AC0[v15 >> 5]) >> v12;
            }

            if (!v9)
            {
              v16 = (v16 >> 1) & 0xFFFF7FFF | ((((v16 ^ (v16 >> 3) ^ (v16 >> 12)) ^ (v16 >> 1)) & 1) << 15);
              *v91 = (result + word_277600AC0[v16 >> 5]) >> v12;
            }

            ++v91;
            ++v90;
            --v92;
          }

          while (v92);
          ++v87;
          v88 += 82;
          v89 += 82;
        }

        while (v82 != v87);
        v71 = v82;
      }

      v93 = 0;
      v94.i64[0] = *(v74 + 164 * v83);
      v94.i64[1] = *(v75 + 164 * v83);
      do
      {
        v95 = vpaddq_s32(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*(v86 + v93), *v21.i8), *(v86 + v93), v22), *(v86 + v93 + 164), *v23.i8), *(v86 + v93 + 164), v23), *(v81 + v93), *v25.i8), *(v81 + v93), v25), *v94.i8, v26), vmlal_high_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*(v85 + v93), *v28.i8), *(v85 + v93), v29), *(v81 + v93 + 11808), *v30.i8), *(v81 + v93 + 11808), v30), *(v70 + v93 + 24272), *v31.i8), *(v70 + v93 + 24272), v31), v94, v32));
        v96 = vmax_s16(vmin_s16(vqadd_s16(vqmovn_s32(vrshlq_s32(vpaddq_s32(v95, v95), v76)), vzip1_s16(*(v80 + v93), *(v79 + v93))), v77), v78);
        *(v80 + v93) = v96.i16[0];
        *(v79 + v93) = v96.i16[1];
        v94 = vqtbl2q_s8(*(&v24 - 3), xmmword_2775ED4E0);
        v93 += 2;
      }

      while (v93 != 152);
      if (a3 && v83 >= 9)
      {
        v97 = -16;
        v98 = v72;
        v99 = v84;
        v100 = v73;
        do
        {
          v99[464] = *v100;
          v99[465] = v100[1];
          v99[976] = *(v98 - 1);
          v97 += 16;
          v101 = *v98;
          v98 += 2;
          v99[977] = v101;
          v100 += 2;
          v99 += 2;
        }

        while (v97 < 0x30);
      }

      ++v83;
      ++v82;
      v79 += 164;
      v80 += 164;
      v70 += 164;
      v86 += 164;
      v85 += 164;
      v81 += 164;
      v73 = (v73 + 164);
      v84 += 8;
      v72 = (v72 + 164);
    }

    while (v83 != 73);
  }

  return result;
}

uint64_t sub_27758DA24(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 39);
  v5 = *(result + 4);
  v6 = (v4 | v5 & 2) == 0;
  v7 = *(result + 60);
  v8 = (v7 | v5 & 2) == 0;
  v9 = v5 >> 13;
  v10 = ((v5 >> 8) & 3) - v9;
  v11 = v10 + 4;
  v12 = 44;
  if ((v5 & 0x10000) == 0)
  {
    v12 = 82;
  }

  v13 = *(result + 8);
  v14 = v5 & 0x20000;
  v15 = 6;
  if ((v5 & 0x20000) == 0)
  {
    v15 = 9;
  }

  v16 = -(128 << v9);
  v17 = (256 << v9) + ~(128 << v9);
  v18 = v5 >> 6;
  v19 = *(result + 10);
  v20 = *(result + 105);
  v21 = *(result + 121);
  v22 = *(result + 130);
  v23 = *(result + 146);
  v24 = *(result + 154);
  v25 = *(result + 129);
  v118 = a3;
  if (*(result + 10))
  {
    v122 = *(result + 154);
    v26 = 0;
    v27 = (a2 + 328);
    v124.val[1] = vmovl_s8(*(result + 97));
    v28 = vextq_s8(v124.val[1], 0, 0xAuLL).u64[0];
    v29 = *(result + 81);
    v124.val[0] = vmovl_high_s8(v29);
    v30 = vqtbl2q_s8(v124, xmmword_2775ED4D0);
    v31 = vmovl_s8(*v29.i8);
    v32 = vqtbl2q_s8(*v31.i8, xmmword_2775ED4C0);
    v33 = v31;
    v34 = 1 << (v10 + 3);
    if (v10 == -4)
    {
      v35 = 0;
    }

    else
    {
      v35 = 1 << (v10 + 3);
    }

    v36 = (a2 + 510);
    v37 = (a3 - 768);
    v33.i16[7] = 0;
    v38 = 4;
    v39 = 3;
    v40 = v13;
    do
    {
      if (v39 >= v26)
      {
        v41 = v26;
        v42 = a2 + 164 * v26;
        do
        {
          for (i = 0; i != 164; i += 2)
          {
            v40 = (v40 >> 1) & 0xFFFF7FFF | (((v40 ^ (v40 >> 3) ^ (v40 >> 12) ^ (v40 >> 1)) & 1) << 15);
            *(v42 + i) = (v35 + word_277600AC0[v40 >> 5]) >> v11;
          }

          ++v41;
          v42 += 164;
        }

        while (v38 != v41);
        v26 = v38;
      }

      v44 = *(a2 + 164 * v39);
      v45 = v27;
      v46 = 76;
      do
      {
        v47 = ((vaddvq_s32(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(v45[-41], *v31.i8), *v45[-41].i8, v33), *(v45 - 164), *v32.i8), *&v45[-21].u8[4], v32), *v45, *v30.i8), *v45->i8, v30), v44, v28)) + (32 << v18)) >> (v18 + 6)) + v45[21].i16[1];
        if (v47 >= v17)
        {
          v48 = v17;
        }

        else
        {
          v48 = v47;
        }

        if (v47 <= v16)
        {
          v49 = v16;
        }

        else
        {
          v49 = v48;
        }

        v45[21].i16[1] = v49;
        v44 = vext_s8(v44, v44, 2uLL);
        v44.i16[2] = v49;
        v45 = (v45 + 2);
        --v46;
      }

      while (v46);
      if (v118 && v39 >= 9)
      {
        v50 = -16;
        v51 = v37;
        v52 = v36;
        do
        {
          *v51 = *v52;
          v51[1] = v52[1];
          v50 += 16;
          v52 += 2;
          v51 += 2;
        }

        while (v50 < 0x30);
      }

      ++v39;
      ++v38;
      v27 = (v27 + 164);
      v36 = (v36 + 164);
      v37 += 8;
    }

    while (v39 != 73);
    a3 = v118;
    v24 = v122;
  }

  else
  {
    if (!(v7 | v4))
    {
      return result;
    }

    v34 = 1 << (v10 + 3);
  }

  v53 = 0;
  v54 = v13 ^ 0xB524;
  v55 = v13 ^ 0x49D8;
  v56 = vmovl_s8(*v20.i8);
  v125.val[0] = vmovl_high_s8(v20);
  v125.val[1] = vmovl_s8(v21);
  v57 = v56;
  v57.i16[7] = 0;
  v58 = vqtbl2q_s8(*v56.i8, xmmword_2775ED4C0);
  v59 = vqtbl2q_s8(v125, xmmword_2775ED4D0);
  v60 = vextq_s8(v125.val[1], 0, 0xAuLL).u64[0];
  v61 = vmovl_s8(*v22.i8);
  v126.val[0] = vmovl_high_s8(v22);
  v126.val[1] = vmovl_s8(v23);
  v62 = v61;
  v62.i16[7] = 0;
  v63 = vqtbl2q_s8(*v61.i8, xmmword_2775ED4C0);
  v64 = vqtbl2q_s8(v126, xmmword_2775ED4D0);
  v65.i64[0] = vextq_s8(v126.val[1], 0, 0xAuLL).u64[0];
  v65.i64[1] = v65.i64[0];
  v66 = vdup_n_s16(v25);
  v66.i16[1] = v24;
  if (v10 == -4)
  {
    v67 = 0;
  }

  else
  {
    v67 = v34;
  }

  v68 = 11972;
  v69 = a2 + 11972;
  v70 = 23944;
  v71 = a2 + 23944;
  v72 = vdupq_n_s32(-6 - v18);
  v73 = vdup_n_s16(v17);
  v74 = vdup_n_s16(v16);
  v116 = a3 + 0x2000;
  v115 = a3 + 0x4000;
  v75 = 73;
  if ((v14 >> 17))
  {
    v75 = 38;
  }

  v117 = v75;
  v76 = 4;
  v77 = 3;
  v78 = 24442;
  v79 = 12470;
  v80 = 24272;
  v81 = 12300;
  do
  {
    v123 = v78;
    if (v77 >= v53)
    {
      v82 = v70;
      v83 = v53;
      v84 = (v71 + 164 * v53);
      v85 = (v69 + 164 * v53);
      do
      {
        v86 = v85;
        v87 = v84;
        v88 = v12;
        do
        {
          if (!v6)
          {
            v54 = (v54 >> 1) & 0xFFFF7FFF | ((((v54 ^ (v54 >> 3) ^ (v54 >> 12)) ^ (v54 >> 1)) & 1) << 15);
            *v86 = (v67 + word_277600AC0[v54 >> 5]) >> v11;
          }

          if (!v8)
          {
            v55 = (v55 >> 1) & 0xFFFF7FFF | ((((v55 ^ (v55 >> 3) ^ (v55 >> 12)) ^ (v55 >> 1)) & 1) << 15);
            *v87 = (v67 + word_277600AC0[v55 >> 5]) >> v11;
          }

          ++v87;
          ++v86;
          --v88;
        }

        while (v88);
        ++v83;
        v84 += 82;
        v85 += 82;
      }

      while (v76 != v83);
      v119 = v76;
      v70 = v82;
      v78 = v123;
    }

    else
    {
      v119 = v53;
    }

    v92.i64[0] = *(v69 + 164 * v77);
    v89 = (v77 - 3) << (v14 >> 17);
    v90 = v89 + 3;
    v91 = 164 * (v89 + 4) + 6;
    v92.i64[1] = *(v71 + 164 * v77);
    v93 = 164 * v90 + 6;
    v94 = v81;
    v120 = v70;
    v121 = v68;
    v95 = v68;
    v96 = v80;
    v97 = v79;
    result = 38;
    do
    {
      v98 = *(a2 + v94 + 11808);
      v99 = *(a2 + v96);
      v100 = vpaddq_s32(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*(a2 + v95), *v56.i8), *(a2 + v95), v57), *(a2 + v95 + 164), *v58.i8), *(a2 + v95 + 164), v58), *(a2 + v94), *v59.i8), *(a2 + v94), v59), *v92.i8, v60), vmlal_high_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*(a2 + v70), *v61.i8), *(a2 + v70), v62), *v98.i8, *v63.i8), v98, v63), *v99.i8, *v64.i8), v99, v64), v92, v65));
      v101 = vpaddq_s32(v100, v100);
      if (v19)
      {
        v98.i32[0] = *(a2 + v93);
        if (v14)
        {
          v99.i32[0] = *(a2 + v91);
          v104 = vdup_lane_s32(vadd_s16(*v99.i8, *v98.i8), 0);
          v103 = vrshr_n_s16(vpadd_s16(v104, v104), 2uLL);
        }

        else
        {
          v102 = vdup_lane_s32(*v98.i8, 0);
          v103 = vrshr_n_s16(vpadd_s16(v102, v102), 1uLL);
        }

        v101 = vmlal_lane_s16(v101, v66, v103, 0);
      }

      v105 = (a2 + v78);
      *&v3 = vmax_s16(vmin_s16(vqadd_s16(vqmovn_s32(vrshlq_s32(v101, v72)), vzip1_s16(*(a2 + v97), *(a2 + v78))), v73), v74);
      *(a2 + v97) = v3;
      v78 += 2;
      *v105 = WORD1(v3);
      v97 += 2;
      v91 += 4;
      v93 += 4;
      v96 += 2;
      v92 = vqtbl2q_s8(*(&v3 - 1), xmmword_2775ED4E0);
      v95 += 2;
      v70 += 2;
      v94 += 2;
      --result;
    }

    while (result);
    if (v118)
    {
      result = v77 - v15;
      if (v77 >= v15)
      {
        v106 = 0;
        v107 = v116 + (result << 7);
        v108 = 1;
        result = v115 + (result << 7);
        do
        {
          v109 = v69 + 164 * v77;
          v110 = 2 * v106;
          *(v107 + v110) = *(v109 + (v110 | 0xC));
          v111 = *(v109 + (v110 | 0x1C));
          v112 = v110 | 0x10;
          *(v107 + v112) = v111;
          v113 = v108;
          v114 = v71 + 164 * v77;
          *(result + v110) = *(v114 + (v110 | 0xC));
          *(result + v112) = *(v114 + (v110 | 0x1C));
          v106 = 16;
          v108 = 0;
        }

        while ((v113 & 1) != 0);
      }
    }

    ++v77;
    v76 = (v76 + 1);
    v78 = v123 + 164;
    v79 += 164;
    v80 += 164;
    v68 = v121 + 164;
    v53 = v119;
    v70 = v120 + 164;
    v81 += 164;
  }

  while (v77 != v117);
  return result;
}

unsigned __int8 *sub_27758E074(unsigned __int8 *result, uint64_t a2, _OWORD *a3)
{
  v4 = result[39];
  v5 = *(result + 1);
  v6 = (v4 | v5 & 2) == 0;
  v7 = result[60];
  v8 = (v7 | v5 & 2) == 0;
  v9 = v5 >> 13;
  v10 = ((v5 >> 8) & 3) - v9;
  v11 = v10 + 4;
  if ((v5 & 0x10000) != 0)
  {
    v12 = 44;
  }

  else
  {
    v12 = 82;
  }

  v13 = *(result + 4);
  v14 = v13 ^ 0xB524;
  v15 = v13 ^ 0x49D8;
  v16 = -(128 << v9);
  v17 = (256 << v9) + ~(128 << v9);
  v18 = vdupq_n_s32(-6 - (v5 >> 6));
  v19 = *(result + 105);
  v20 = vmovl_s8(*v19.i8);
  v21 = vmovl_high_s8(v19);
  v22 = *(result + 130);
  v23 = vmovl_s8(*v22.i8);
  v24 = vmovl_high_s8(v22);
  v25 = vzip2_s32(*v21.i8, *v24.i8);
  if (result[10])
  {
    v26 = 0;
    v27 = *(result + 81);
    v28 = vmovl_s8(*v27.i8);
    v29 = vmovl_high_s8(v27);
    v30 = vextq_s8(v29, v29, 4uLL).u64[0];
    v31 = 1 << (v10 + 3);
    if (v10 == -4)
    {
      v31 = 0;
    }

    v144 = a2 + 11972;
    v143 = a2 + 23944;
    v32 = vdup_n_s16(v17);
    v33 = vdup_n_s16(v16);
    v34 = a2 + 498;
    v35 = (a2 + 24442);
    v36 = a2 + 12470;
    v37 = a3 - 48;
    v38 = 4;
    v39 = 3;
    v40 = a2;
    v142 = a3;
    do
    {
      v146 = v40;
      v147 = v37;
      if (v39 >= v26)
      {
        v41 = v34;
        v42 = v26;
        v43 = v143 + 164 * v26;
        v44 = v144 + 164 * v26;
        v45 = a2 + 164 * v26;
        do
        {
          for (i = 0; i != 164; i += 2)
          {
            v13 = (v13 >> 1) & 0xFFFF7FFF | ((((v13 ^ (v13 >> 3) ^ (v13 >> 12)) ^ (v13 >> 1)) & 1) << 15);
            *(v45 + i) = (v31 + word_277600AC0[v13 >> 5]) >> v11;
            if (!v6)
            {
              v14 = (v14 >> 1) & 0xFFFF7FFF | ((((v14 ^ (v14 >> 3) ^ (v14 >> 12)) ^ (v14 >> 1)) & 1) << 15);
              *(v44 + i) = (v31 + word_277600AC0[v14 >> 5]) >> v11;
            }

            if (!v8)
            {
              v15 = (v15 >> 1) & 0xFFFF7FFF | ((((v15 ^ (v15 >> 3) ^ (v15 >> 12)) ^ (v15 >> 1)) & 1) << 15);
              *(v43 + i) = (v31 + word_277600AC0[v15 >> 5]) >> v11;
            }
          }

          ++v42;
          v43 += 164;
          v44 += 164;
          v45 += 164;
        }

        while (v38 != v42);
        v145 = v38;
        v34 = v41;
      }

      else
      {
        v145 = v26;
      }

      v47 = a2 + 164 * v39;
      v48.i64[0] = *(v47 + 2);
      v49 = v144 + 164 * v39;
      v53.i64[0] = *(v49 + 2);
      v50 = v143 + 164 * v39;
      v51 = v47 - 328;
      v52 = v47 - 164;
      v53.i32[1] = *(v50 + 2);
      v54 = v49 - 328;
      v55 = v49 - 164;
      v56 = v50 - 328;
      v57 = v50 - 164;
      v58 = v36;
      result = v35;
      v148 = v34;
      v59 = v34;
      v60 = 3;
      do
      {
        v61 = 0;
        v62 = 2 * (v60 - 2);
        v150.val[0] = *(v51 + v62);
        v150.val[1] = *(v52 + v62);
        v63 = vqtbl2q_s8(v150, xmmword_2775ED4F0);
        v64 = vqtbl2q_s8(v150, xmmword_2775ED500);
        v65 = vqtbl2q_s8(v150, xmmword_2775ED510);
        v66 = vqtbl2q_s8(v150, xmmword_2775ED520);
        v67 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v63.i8, *v28.i8, 1), *v150.val[0].i8, *v28.i8, 0), *v64.i8, *v28.i8, 2), *v65.i8, *v28.i8, 3), *v66.i8, v28, 4), *v150.val[1].i8, v28, 5), v63, v28, 6), v64, v28, 7), v65, *v29.i8, 0), v66, *v29.i8, 1);
        do
        {
          v68 = vmull_s16(*v48.i8, v30);
          v69 = (v59 + v61);
          v70 = vld1_dup_s16(v69);
          *v68.i8 = vmax_s16(vmin_s16(vqadd_s16(vqmovn_s32(vrshlq_s32(vaddq_s32(vpaddq_s32(v68, v68), v67), v18)), v70), v32), v33);
          *(v59 + v61) = v68.i16[0];
          v48.i64[1] = v68.i64[0];
          *v48.i8 = vqtbl1_s8(v48, 151520002);
          v67 = vextq_s8(v67, v67, 4uLL);
          v61 += 2;
        }

        while (v61 != 8);
        v71 = 0;
        v151.val[0] = *(v54 + v62);
        v151.val[1] = *(v55 + v62);
        v72 = vqtbl2q_s8(v151, xmmword_2775ED4F0);
        v73 = vqtbl2q_s8(v151, xmmword_2775ED500);
        v74 = vqtbl2q_s8(v151, xmmword_2775ED510);
        v75 = vqtbl2q_s8(v151, xmmword_2775ED520);
        v76 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v20.i8, 1), *v151.val[0].i8, *v20.i8, 0), *v73.i8, *v20.i8, 2), *v74.i8, *v20.i8, 3), *v75.i8, v20, 4), *v151.val[1].i8, v20, 5), v72, v20, 6), v73, v20, 7), v74, *v21.i8, 0), v75, *v21.i8, 1);
        v151.val[0] = *(v56 + v62);
        v151.val[1] = *(v57 + v62);
        v77 = vqtbl2q_s8(v151, xmmword_2775ED4F0);
        v78 = vqtbl2q_s8(v151, xmmword_2775ED500);
        v79 = vqtbl2q_s8(v151, xmmword_2775ED510);
        v80 = vqtbl2q_s8(v151, xmmword_2775ED520);
        v81 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v77.i8, *v23.i8, 1), *v151.val[0].i8, *v23.i8, 0), *v78.i8, *v23.i8, 2), *v79.i8, *v23.i8, 3), *v80.i8, v23, 4), *v151.val[1].i8, v23, 5), v77, v23, 6), v78, v23, 7), v79, *v24.i8, 0), v80, *v24.i8, 1);
        v151.val[0].i64[0] = *(a2 + 164 * v39 + 2 * v60);
        v82 = vmlal_laneq_s16(v76, *v151.val[0].i8, v21, 4);
        v83 = vmlal_laneq_s16(v81, *v151.val[0].i8, v24, 4);
        v84 = vzip2q_s32(v82, v83);
        v85 = vzip1q_s32(v82, v83);
        do
        {
          v86 = vmull_s16(*v53.i8, v25);
          v87 = (v58 + v71);
          v88 = vld1_dup_s16(v87);
          v88.i16[1] = *&result[v71];
          *v86.i8 = vmax_s16(vmin_s16(vqadd_s16(vqmovn_s32(vrshlq_s32(vaddq_s32(vpaddq_s32(v86, v86), v85), v18)), v88), v32), v33);
          *(v58 + v71) = v86.i16[0];
          *&result[v71] = v86.i16[1];
          v53.i64[1] = v86.i64[0];
          *v53.i8 = vqtbl1_s8(v53, 0xB0A070609080302);
          v85 = vextq_s8(v85, v84, 8uLL);
          v84 = vextq_s8(v84, v84, 8uLL);
          v71 += 2;
        }

        while (v71 != 8);
        v59 += 8;
        result += 8;
        v58 += 8;
        v89 = v60 >= 0x4B;
        v60 += 4;
      }

      while (!v89);
      if (v142 && v39 >= 9)
      {
        v90 = -16;
        result = v147;
        v91 = v146;
        do
        {
          *result = *(v91 + 510);
          *(result + 1) = *(v91 + 526);
          *(result + 512) = *(v91 + 12482);
          *(result + 513) = *(v91 + 12498);
          *(result + 1024) = *(v91 + 24454);
          *(result + 1025) = *(v91 + 24470);
          v90 += 16;
          v91 += 32;
          result += 32;
        }

        while (v90 < 0x30);
      }

      ++v39;
      v38 = (v38 + 1);
      v34 = v148 + 164;
      v35 = (v35 + 164);
      v36 += 164;
      v40 = v146 + 164;
      v37 = v147 + 8;
      v26 = v145;
    }

    while (v39 != 73);
  }

  else if (v4 | v7)
  {
    v92 = 0;
    v93 = (a2 + 24470);
    v94 = (a2 + 12482);
    v95 = 1 << (v10 + 3);
    if (!v11)
    {
      v95 = 0;
    }

    v96 = a2 + 11972;
    result = (a2 + 23944);
    v97 = vdup_n_s16(v17);
    v98 = vdup_n_s16(v16);
    v99 = a2 + 24442;
    v100 = a2 + 12470;
    v101 = 4;
    v102 = 3;
    v103 = a3;
    do
    {
      if (v102 >= v92)
      {
        v104 = v92;
        v105 = &result[164 * v92];
        v106 = (v96 + 164 * v104);
        do
        {
          v107 = v106;
          v108 = v105;
          v109 = v12;
          do
          {
            if (!v6)
            {
              v14 = (v14 >> 1) & 0xFFFF7FFF | ((((v14 ^ (v14 >> 3) ^ (v14 >> 12)) ^ (v14 >> 1)) & 1) << 15);
              *v107 = (v95 + word_277600AC0[v14 >> 5]) >> v11;
            }

            if (!v8)
            {
              v15 = (v15 >> 1) & 0xFFFF7FFF | ((((v15 ^ (v15 >> 3) ^ (v15 >> 12)) ^ (v15 >> 1)) & 1) << 15);
              *v108 = (v95 + word_277600AC0[v15 >> 5]) >> v11;
            }

            v108 += 2;
            ++v107;
            --v109;
          }

          while (v109);
          ++v104;
          v105 += 164;
          v106 += 82;
        }

        while (v101 != v104);
        v92 = v101;
      }

      v110 = v96 + 164 * v102;
      v112.i64[0] = *(v110 + 2);
      v111 = &result[164 * v102];
      v112.i32[1] = *(v111 + 2);
      v113 = v110 - 328;
      v114 = v110 - 164;
      v115 = v111 - 328;
      v116 = v111 - 164;
      v117 = v100;
      v118 = v99;
      v119 = 3;
      do
      {
        v120 = 0;
        v121 = 2 * v119 - 4;
        v149.val[0] = *(v113 + v121);
        v149.val[1] = *(v114 + v121);
        v122 = vqtbl2q_s8(v149, xmmword_2775ED4F0);
        v123 = vqtbl2q_s8(v149, xmmword_2775ED500);
        v124 = vqtbl2q_s8(v149, xmmword_2775ED510);
        v125 = vqtbl2q_s8(v149, xmmword_2775ED520);
        v126 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v122.i8, *v20.i8, 1), *v149.val[0].i8, *v20.i8, 0), *v123.i8, *v20.i8, 2), *v124.i8, *v20.i8, 3), *v125.i8, v20, 4), *v149.val[1].i8, v20, 5), v122, v20, 6), v123, v20, 7), v124, *v21.i8, 0), v125, *v21.i8, 1);
        v149.val[0] = *&v115[v121];
        v149.val[1] = *&v116[v121];
        v127 = vqtbl2q_s8(v149, xmmword_2775ED4F0);
        v128 = vqtbl2q_s8(v149, xmmword_2775ED500);
        v129 = vqtbl2q_s8(v149, xmmword_2775ED510);
        v130 = vqtbl2q_s8(v149, xmmword_2775ED520);
        v131 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v127.i8, *v23.i8, 1), *v149.val[0].i8, *v23.i8, 0), *v128.i8, *v23.i8, 2), *v129.i8, *v23.i8, 3), *v130.i8, v23, 4), *v149.val[1].i8, v23, 5), v127, v23, 6), v128, v23, 7), v129, *v24.i8, 0), v130, *v24.i8, 1);
        v132 = vzip2q_s32(v126, v131);
        v133 = vzip1q_s32(v126, v131);
        do
        {
          v134 = vmull_s16(*v112.i8, v25);
          v135 = (v117 + v120);
          v136 = vld1_dup_s16(v135);
          v136.i16[1] = *(v118 + v120);
          *v134.i8 = vmax_s16(vmin_s16(vqadd_s16(vqmovn_s32(vrshlq_s32(vaddq_s32(vpaddq_s32(v134, v134), v133), v18)), v136), v97), v98);
          *(v117 + v120) = v134.i16[0];
          *(v118 + v120) = v134.i16[1];
          v112.i64[1] = v134.i64[0];
          *v112.i8 = vqtbl1_s8(v112, 0xB0A070609080302);
          v133 = vextq_s8(v133, v132, 8uLL);
          v132 = vextq_s8(v132, v132, 8uLL);
          v120 += 2;
        }

        while (v120 != 8);
        v118 += 8;
        v117 += 8;
        v89 = v119 >= 0x4B;
        v119 += 4;
      }

      while (!v89);
      if (a3 && v102 >= 9)
      {
        v137 = -16;
        v138 = v93;
        v139 = v103;
        v140 = v94;
        do
        {
          v139[464] = *v140;
          v139[465] = v140[1];
          v139[976] = *(v138 - 1);
          v137 += 16;
          v141 = *v138;
          v138 += 2;
          v139[977] = v141;
          v140 += 2;
          v139 += 2;
        }

        while (v137 < 0x30);
      }

      ++v102;
      ++v101;
      v99 += 164;
      v100 += 164;
      v94 = (v94 + 164);
      v103 += 8;
      v93 = (v93 + 164);
    }

    while (v102 != 73);
  }

  return result;
}

uint64_t sub_27758E898(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 39);
  v4 = *(result + 4);
  v5 = (v3 | v4 & 2) == 0;
  v6 = *(result + 60);
  v7 = (v6 | v4 & 2) == 0;
  v8 = v4 >> 13;
  v9 = ((v4 >> 8) & 3) - v8;
  v10 = v9 + 4;
  v11 = 44;
  if ((v4 & 0x10000) == 0)
  {
    v11 = 82;
  }

  v131 = v11;
  v12 = *(result + 8);
  v138 = v4 & 0x20000;
  v13 = 6;
  if ((v4 & 0x20000) == 0)
  {
    v13 = 9;
  }

  v132 = v13;
  v14 = -(128 << v8);
  v15 = (256 << v8) + ~(128 << v8);
  v16 = vdupq_n_s32(-6 - (v4 >> 6));
  v17 = *(result + 10);
  v18 = *(result + 105);
  v19 = *(result + 130);
  if (*(result + 10))
  {
    v20 = 0;
    v21 = (a2 + 510);
    v22 = *(result + 81);
    v23 = vmovl_s8(*v22.i8);
    v24 = vmovl_high_s8(v22);
    v25 = vextq_s8(v24, v24, 4uLL).u64[0];
    v26 = 1 << (v9 + 3);
    if (v9 == -4)
    {
      v27 = 0;
    }

    else
    {
      v27 = 1 << (v9 + 3);
    }

    v28 = vdup_n_s16(v15);
    v29 = vdup_n_s16(v14);
    v30 = a2 + 498;
    v31 = (a3 - 768);
    v32 = 4;
    v33 = 3;
    v34 = v12;
    do
    {
      if (v33 >= v20)
      {
        v35 = v20;
        v36 = a2 + 164 * v20;
        do
        {
          for (i = 0; i != 164; i += 2)
          {
            v34 = (v34 >> 1) & 0xFFFF7FFF | ((((v34 ^ (v34 >> 3) ^ (v34 >> 12)) ^ (v34 >> 1)) & 1) << 15);
            *(v36 + i) = (v27 + word_277600AC0[v34 >> 5]) >> v10;
          }

          ++v35;
          v36 += 164;
        }

        while (v32 != v35);
        v20 = v32;
      }

      v38 = a2 + 164 * v33;
      v39.i64[0] = *(v38 + 2);
      v40 = v38 - 328;
      v41 = v38 - 164;
      v42 = v30;
      v43 = 3;
      do
      {
        v44 = 0;
        v45 = 2 * v43 - 4;
        v139.val[0] = *(v40 + v45);
        v139.val[1] = *(v41 + v45);
        v46 = vqtbl2q_s8(v139, xmmword_2775ED4F0);
        v47 = vqtbl2q_s8(v139, xmmword_2775ED500);
        v48 = vqtbl2q_s8(v139, xmmword_2775ED510);
        v49 = vqtbl2q_s8(v139, xmmword_2775ED520);
        v50 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v46.i8, *v23.i8, 1), *v139.val[0].i8, *v23.i8, 0), *v47.i8, *v23.i8, 2), *v48.i8, *v23.i8, 3), *v49.i8, v23, 4), *v139.val[1].i8, v23, 5), v46, v23, 6), v47, v23, 7), v48, *v24.i8, 0), v49, *v24.i8, 1);
        do
        {
          v51 = vmull_s16(*v39.i8, v25);
          v52 = (v42 + v44);
          v53 = vld1_dup_s16(v52);
          *v51.i8 = vmax_s16(vmin_s16(vqadd_s16(vqmovn_s32(vrshlq_s32(vaddq_s32(vpaddq_s32(v51, v51), v50), v16)), v53), v28), v29);
          *(v42 + v44) = v51.i16[0];
          v39.i64[1] = v51.i64[0];
          *v39.i8 = vqtbl1_s8(v39, 151520002);
          v50 = vextq_s8(v50, v50, 4uLL);
          v44 += 2;
        }

        while (v44 != 8);
        v42 += 8;
        v54 = v43 >= 0x4B;
        v43 += 4;
      }

      while (!v54);
      if (a3 && v33 >= 9)
      {
        v55 = -16;
        v56 = v31;
        v57 = v21;
        do
        {
          *v56 = *v57;
          v56[1] = v57[1];
          v55 += 16;
          v57 += 2;
          v56 += 2;
        }

        while (v55 < 0x30);
      }

      ++v33;
      ++v32;
      v30 += 164;
      v21 = (v21 + 164);
      v31 += 8;
    }

    while (v33 != 73);
  }

  else
  {
    if (!(v3 | v6))
    {
      return result;
    }

    v26 = 1 << (v9 + 3);
    v28 = vdup_n_s16(v15);
    v29 = vdup_n_s16(v14);
  }

  v58 = 0;
  v59 = (a2 + 24442);
  v60 = (a2 + 12470);
  result = v12 ^ 0xB524;
  v61 = v12 ^ 0x49D8;
  v62 = vmovl_s8(*v18.i8);
  v63 = vmovl_high_s8(v18);
  v64 = vmovl_s8(*v19.i8);
  v65 = vmovl_high_s8(v19);
  v66 = vzip2_s32(*v63.i8, *v65.i8);
  if (!v10)
  {
    v26 = 0;
  }

  v67 = a2 + 11972;
  v68 = a2 + 23944;
  v130 = a3 + 0x2000;
  v129 = a3 + 0x4000;
  if ((v138 >> 17))
  {
    v69 = 38;
  }

  else
  {
    v69 = 73;
  }

  v133 = v69;
  v70 = 3;
  v71 = 4;
  do
  {
    if (v70 >= v58)
    {
      v72 = v58;
      v73 = (v68 + 164 * v58);
      v74 = (v67 + 164 * v58);
      do
      {
        v75 = v74;
        v76 = v73;
        v77 = v131;
        do
        {
          if (!v5)
          {
            result = (result >> 1) & 0xFFFF7FFF | ((((result ^ (result >> 3) ^ (result >> 12)) ^ (result >> 1)) & 1) << 15);
            *v75 = (v26 + word_277600AC0[result >> 5]) >> v10;
          }

          if (!v7)
          {
            v61 = (v61 >> 1) & 0xFFFF7FFF | ((((v61 ^ (v61 >> 3) ^ (v61 >> 12)) ^ (v61 >> 1)) & 1) << 15);
            *v76 = (v26 + word_277600AC0[v61 >> 5]) >> v10;
          }

          ++v76;
          ++v75;
          --v77;
        }

        while (v77);
        ++v72;
        v73 += 82;
        v74 += 82;
      }

      while (v71 != v72);
      v58 = v71;
    }

    v135 = v58;
    v136 = v60;
    v78 = v67 + 164 * v70;
    v80.i64[0] = *(v78 + 2);
    v79 = v68 + 164 * v70;
    v80.i32[1] = *(v79 + 2);
    v81 = v78 - 328;
    v82 = v78 - 164;
    v83 = v79 - 328;
    v84 = v79 - 164;
    v85 = (v70 - 3) << (v138 >> 17);
    v86 = v85 + 3;
    v87 = v85 + 4;
    v88 = v60;
    v137 = v59;
    v89 = v59;
    v90 = 38;
    v91 = 3;
    do
    {
      v92 = v90 - 4;
      if (v90 >= 4)
      {
        v93 = 4;
      }

      else
      {
        v93 = v90;
      }

      v94 = 2 * v91 - 4;
      v140.val[0] = *(v81 + v94);
      v140.val[1] = *(v82 + v94);
      v95 = vqtbl2q_s8(v140, xmmword_2775ED4F0);
      v96 = vqtbl2q_s8(v140, xmmword_2775ED500);
      v97 = vqtbl2q_s8(v140, xmmword_2775ED510);
      v98 = vqtbl2q_s8(v140, xmmword_2775ED520);
      v99 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v62.i8, 1), *v140.val[0].i8, *v62.i8, 0), *v96.i8, *v62.i8, 2), *v97.i8, *v62.i8, 3), *v98.i8, v62, 4), *v140.val[1].i8, v62, 5), v95, v62, 6), v96, v62, 7), v97, *v63.i8, 0), v98, *v63.i8, 1);
      v140.val[1] = *(v83 + v94);
      v100 = *(v84 + v94);
      v101 = vqtbl2q_s8(*(&v140 + 16), xmmword_2775ED4F0);
      v102 = vqtbl2q_s8(*(&v140 + 16), xmmword_2775ED500);
      v103 = vqtbl2q_s8(*(&v140 + 16), xmmword_2775ED510);
      v104 = vqtbl2q_s8(*(&v140 + 16), xmmword_2775ED520);
      v105 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v64.i8, 1), *v140.val[1].i8, *v64.i8, 0), *v102.i8, *v64.i8, 2), *v103.i8, *v64.i8, 3), *v104.i8, v64, 4), *&v100, v64, 5), v101, v64, 6), v102, v64, 7), v103, *v65.i8, 0), v104, *v65.i8, 1);
      if (v17)
      {
        v106 = 2 * (2 * v91 - 3);
        v107 = *(a2 + 164 * v86 + v106);
        if (v138)
        {
          v109 = vaddq_s16(*(a2 + 164 * v87 + v106), v107);
          v108 = vrshrq_n_s16(vpaddq_s16(v109, v109), 2uLL).u64[0];
        }

        else
        {
          v108 = vrshrq_n_s16(vpaddq_s16(v107, v107), 1uLL).u64[0];
        }

        v99 = vmlal_laneq_s16(v99, v108, v63, 4);
        v105 = vmlal_laneq_s16(v105, v108, v65, 4);
      }

      v110 = vzip2q_s32(v99, v105);
      v111 = vzip1q_s32(v99, v105);
      v112 = v88;
      v113 = v89;
      v114 = v88;
      v115 = v89;
      do
      {
        v116 = vmull_s16(*v80.i8, v66);
        v117 = vld1_dup_s16(v114++);
        v117.i16[1] = *v115++;
        *v116.i8 = vmax_s16(vmin_s16(vqadd_s16(vqmovn_s32(vrshlq_s32(vaddq_s32(vpaddq_s32(v116, v116), v111), v16)), v117), v28), v29);
        *v112 = v116.i16[0];
        *v113 = v116.i16[1];
        v80.i64[1] = v116.i64[0];
        *v80.i8 = vqtbl1_s8(v80, 0xB0A070609080302);
        v111 = vextq_s8(v111, v110, 8uLL);
        v110 = vextq_s8(v110, v110, 8uLL);
        v112 = v114;
        v113 = v115;
        --v93;
      }

      while (v93);
      v89 += 4;
      v88 += 4;
      v90 = v92;
      v54 = v91 >= 0x25;
      v91 += 4;
    }

    while (!v54);
    if (a3)
    {
      v118 = v70 - v132;
      if (v70 >= v132)
      {
        v119 = 0;
        v120 = v130 + (v118 << 7);
        v121 = 1;
        v122 = v129 + (v118 << 7);
        do
        {
          v123 = v67 + 164 * v70;
          v124 = 2 * v119;
          *(v120 + v124) = *(v123 + (v124 | 0xC));
          v125 = *(v123 + (v124 | 0x1C));
          v126 = v124 | 0x10;
          *(v120 + v126) = v125;
          v127 = v121;
          v128 = v68 + 164 * v70;
          *(v122 + v124) = *(v128 + (v124 | 0xC));
          *(v122 + v126) = *(v128 + (v124 | 0x1C));
          v119 = 16;
          v121 = 0;
        }

        while ((v127 & 1) != 0);
      }
    }

    ++v70;
    v71 = (v71 + 1);
    v59 = v137 + 82;
    v60 = v136 + 82;
    v58 = v135;
  }

  while (v70 != v133);
  return result;
}

uint64_t sub_27758EF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v4) = 0;
  v128[78] = *MEMORY[0x277D85DE8];
  v5 = (a2 + 348);
  v6 = *(a1 + 4);
  v7 = (*(a1 + 39) | v6 & 2) == 0;
  v125 = *(a1 + 60);
  v8 = v6 >> 13;
  v9 = ((v6 >> 8) & 3) - v8;
  v11 = v9 + 4;
  v10 = v9 == -4;
  v12 = *(a1 + 8);
  v13 = v12 ^ 0xB524;
  v14 = -(128 << v8);
  v15 = (256 << v8) + ~(128 << v8);
  v16 = (v6 >> 6) + 6;
  v17 = *(a1 + 81);
  v18 = vmovl_s8(v17).u64[0];
  v19 = v17.i8[3];
  v20 = 1 << (v9 + 3);
  if (v10)
  {
    v20 = 0;
  }

  v21 = 32 << (v6 >> 6);
  v22 = a2 + 498;
  v23 = (a2 + 510);
  v24 = (a3 - 768);
  v25 = 4;
  v26 = 3;
  v123 = *(a1 + 8);
  do
  {
    if (v26 >= v4)
    {
      v4 = v4;
      v27 = a2 + 164 * v4;
      do
      {
        for (i = 0; i != 164; i += 2)
        {
          v12 = (v12 >> 1) & 0xFFFF7FFF | (((v12 ^ (v12 >> 3) ^ (v12 >> 12) ^ (v12 >> 1)) & 1) << 15);
          *(v27 + i) = (v20 + word_277600AC0[v12 >> 5]) >> v11;
        }

        ++v4;
        v27 += 164;
      }

      while (v25 != v4);
      LODWORD(v4) = v25;
    }

    v29 = *(a2 + 164 * v26 - 160);
    v30 = -5;
    v31 = v5;
    v32 = v128;
    do
    {
      v33 = *v31++;
      v34 = vextq_s8(v29, v33, 2uLL);
      v35 = vextq_s8(v29, v33, 4uLL);
      v32[-1] = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v18, 1), *v29.i8, v18, 0), *v35.i8, v18, 2);
      *v32 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v34, v18, 1), v29, v18, 0), v35, v18, 2);
      v30 += 8;
      v32 += 2;
      v29 = v33;
    }

    while (v30 < 0x47);
    v36 = 0;
    v37 = *(a2 + 164 * v26 + 4);
    do
    {
      v38 = ((v21 + v37 * v19 + v127[v36]) >> v16) + *(v22 + 2 * v36);
      if (v38 >= v15)
      {
        v37 = v15;
      }

      else
      {
        v37 = ((v21 + v37 * v19 + v127[v36]) >> v16) + *(v22 + 2 * v36);
      }

      if (v38 <= v14)
      {
        v37 = v14;
      }

      *(v22 + 2 * v36++) = v37;
    }

    while (v36 != 76);
    if (a3 && v26 >= 9)
    {
      v39 = -16;
      v40 = v24;
      v41 = v23;
      do
      {
        *v40 = *v41;
        v40[1] = v41[1];
        v39 += 16;
        v41 += 2;
        v40 += 2;
      }

      while (v39 < 0x30);
    }

    ++v26;
    ++v25;
    v5 = (v5 + 164);
    v22 += 164;
    v23 = (v23 + 164);
    v24 += 8;
  }

  while (v26 != 73);
  v42 = (v125 | v6 & 2) == 0;
  v43 = v123 ^ 0x49D8;
  v10 = (v6 & 0x10000) == 0;
  v44 = 44;
  if (v10)
  {
    v44 = 82;
  }

  v124 = v44;
  v45 = *(a1 + 4);
  v46 = v45 & 0x10000;
  v47 = 38;
  if ((v45 & 0x20000) == 0)
  {
    v47 = 73;
  }

  v113 = v47;
  v114 = 0;
  if ((v45 & 0x20000) != 0)
  {
    v48 = 6;
  }

  else
  {
    v48 = 9;
  }

  v49 = *(a1 + 10);
  v50 = *(a1 + 105);
  v51 = vmovl_s8(v50);
  v52 = *(a1 + 130);
  result = v50.i8[3];
  v54 = v52.i8[3];
  v55 = vmovl_s8(v52);
  v120 = a2 + 11972;
  v119 = a2 + 23944;
  v122 = v45 & 0x10000;
  if (v46)
  {
    v56 = 41;
  }

  else
  {
    v56 = 79;
  }

  v126 = v45 & 0x20000;
  v112 = (v45 & 0x20000) >> 17;
  v57 = (v45 >> 16) & 1;
  v58 = 0x40uLL >> (BYTE2(v45) & 1);
  v59 = 12;
  if (!v46)
  {
    v59 = 18;
  }

  v111 = v58;
  v60 = v59 + a2;
  v61 = (v60 + 12464);
  v62 = (v60 + 24452);
  v110 = v48;
  v63 = a3 - (v48 << 7) + 8576;
  v64 = 4;
  v65 = 3;
  v66 = a2;
  do
  {
    v115 = v63;
    v116 = v62;
    v117 = v61;
    v121 = v65;
    if (v65 >= v114)
    {
      v67 = v114;
      v68 = (v119 + 164 * v114);
      v69 = (v120 + 164 * v114);
      do
      {
        v70 = v69;
        v71 = v68;
        v72 = v124;
        do
        {
          if (!v7)
          {
            v13 = (v13 >> 1) & 0xFFFF7FFF | (((v13 ^ (v13 >> 3) ^ (v13 >> 12) ^ (v13 >> 1)) & 1) << 15);
            *v70 = (v20 + word_277600AC0[v13 >> 5]) >> v11;
          }

          if (!v42)
          {
            v43 = (v43 >> 1) & 0xFFFF7FFF | ((((v43 ^ (v43 >> 3) ^ (v43 >> 12)) ^ (v43 >> 1)) & 1) << 15);
            *v71 = (v20 + word_277600AC0[v43 >> 5]) >> v11;
          }

          ++v71;
          ++v70;
          --v72;
        }

        while (v72);
        ++v67;
        v68 += 82;
        v69 += 82;
      }

      while (v64 != v67);
      v114 = v64;
      v65 = v121;
    }

    v73 = 164 * v65 - 164;
    v74 = *(v120 + v73 + 4);
    v75 = *(v119 + v73 + 4);
    v76 = (v65 - 3) << v112;
    v77 = v76 + 3;
    v78 = v76 + 4;
    v79 = v127;
    v80 = v66;
    for (j = 3; j < v56; j += 8)
    {
      v82 = v74;
      v83 = v75;
      v74 = *(v80 + 12320);
      v84 = vextq_s8(v82, v74, 2uLL);
      v85 = vextq_s8(v82, v74, 4uLL);
      v86 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v84.i8, *v51.i8, 1), *v82.i8, *v51.i8, 0), *v85.i8, *v51.i8, 2);
      v87 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v84, *v51.i8, 1), v82, *v51.i8, 0), v85, *v51.i8, 2);
      v75 = *(v80 + 24292);
      v88 = vextq_s8(v83, v75, 2uLL);
      v89 = vextq_s8(v83, v75, 4uLL);
      v90 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v88.i8, *v55.i8, 1), *v83.i8, *v55.i8, 0), *v89.i8, *v55.i8, 2);
      v91 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v88, *v55.i8, 1), v83, *v55.i8, 0), v89, *v55.i8, 2);
      if (v49)
      {
        v92 = (j - 3) << v57;
        v93 = 2 * (v92 + 3);
        v94 = *(a2 + 164 * v77 + v93);
        if (v126)
        {
          v94 = vrshrq_n_s16(vpaddq_s16(vaddq_s16(*(a2 + 164 * v78 + v93), v94), vaddq_s16(*(a2 + 164 * v78 + 2 * v92 + 22), *(a2 + 164 * v77 + 2 * v92 + 22))), 2uLL);
        }

        else if (v122)
        {
          v94 = vrshrq_n_s16(vpaddq_s16(v94, *(a2 + 164 * v77 + 2 * v92 + 22)), 1uLL);
        }

        v86 = vmlal_laneq_s16(v86, *v94.i8, v51, 4);
        v87 = vmlal_high_laneq_s16(v87, v94, v51, 4);
        v90 = vmlal_laneq_s16(v90, *v94.i8, v55, 4);
        v91 = vmlal_high_laneq_s16(v91, v94, v55, 4);
      }

      *v79 = v86;
      v79[1] = v87;
      v79[20] = v90;
      v79[21] = v91;
      v80 += 16;
      v79 += 2;
    }

    v95 = *(v120 + 164 * v121 + 4);
    v96 = *(v119 + 164 * v121 + 4);
    v97 = v127;
    v98 = 12470;
    v99 = 24442;
    v100 = v56 - 3;
    do
    {
      v102 = ((v21 + v95 * result + *v97) >> v16) + *(v66 + v98);
      if (v102 >= v15)
      {
        v95 = v15;
      }

      else
      {
        v95 = ((v21 + v95 * result + *v97) >> v16) + *(v66 + v98);
      }

      if (v102 <= v14)
      {
        v95 = v14;
      }

      v101 = v97[80];
      v103 = ((v21 + v96 * v54 + v101) >> v16) + *(v66 + v99);
      if (v103 >= v15)
      {
        v104 = v15;
      }

      else
      {
        v104 = ((v21 + v96 * v54 + v101) >> v16) + *(v66 + v99);
      }

      if (v103 <= v14)
      {
        v96 = v14;
      }

      else
      {
        v96 = v104;
      }

      *(v66 + v98) = v95;
      *(v66 + v99) = v96;
      v99 += 2;
      v98 += 2;
      ++v97;
      --v100;
    }

    while (v100);
    if (a3 && v121 >= v110)
    {
      v105 = 0;
      v106 = v115;
      v107 = v116;
      v108 = v117;
      do
      {
        *v106 = *v108;
        v106[1] = v108[1];
        v106[512] = *(v107 - 1);
        v105 += 16;
        v109 = *v107;
        v107 += 2;
        v106[513] = v109;
        v108 += 2;
        v106 += 2;
      }

      while (v105 < v111);
    }

    v65 = v121 + 1;
    ++v64;
    v66 += 164;
    v61 = (v117 + 164);
    v62 = (v116 + 164);
    v63 = (v115 + 8);
  }

  while (v121 + 1 != v113);
  return result;
}

int16x8_t *sub_27758F5DC(int16x8_t *result, uint64_t a2, int16x8_t *a3, double a4, int16x4_t a5, int16x4_t a6)
{
  v6 = result[2].u8[7];
  v7 = result->u32[1];
  v8 = (v6 | v7 & 2) == 0;
  v9 = result[3].u8[12];
  v10 = (v9 | v7 & 2) == 0;
  v11 = v7 >> 13;
  v12 = ((v7 >> 8) & 3) - v11;
  v13 = v12 + 4;
  if ((v7 & 0x10000) != 0)
  {
    v14 = 44;
  }

  else
  {
    v14 = 82;
  }

  v15 = result->u16[4];
  v16 = v15 ^ 0xB524;
  v17 = v15 ^ 0x49D8;
  v18 = -(128 << v11);
  v19 = (256 << v11) + ~(128 << v11);
  if (result->i8[10])
  {
    v20 = 0;
    LODWORD(v21) = 0;
    v22 = vdupq_n_s32(-6 - (v7 >> 6));
    a5.i32[0] = result[8].i8[2];
    a6.i32[0] = result[6].i8[9];
    v23 = 1 << (v12 + 3);
    if (v12 == -4)
    {
      v23 = 0;
    }

    v24 = vdupq_n_s16(v19);
    v25 = vdupq_n_s16(v18);
    LODWORD(result) = 10;
    v26 = a2;
    v27 = a3;
    do
    {
      if (v20 + 9 >= v21)
      {
        v21 = v21;
        v28 = a2 + 23944 + 164 * v21;
        v29 = a2 + 11972 + 164 * v21;
        v30 = a2 + 164 * v21;
        do
        {
          for (i = 0; i != 164; i += 2)
          {
            v15 = (v15 >> 1) & 0xFFFF7FFF | ((((v15 ^ (v15 >> 3) ^ (v15 >> 12)) ^ (v15 >> 1)) & 1) << 15);
            *(v30 + i) = (v23 + word_277600AC0[v15 >> 5]) >> v13;
            if (!v8)
            {
              v16 = (v16 >> 1) & 0xFFFF7FFF | ((((v16 ^ (v16 >> 3) ^ (v16 >> 12)) ^ (v16 >> 1)) & 1) << 15);
              *(v29 + i) = (v23 + word_277600AC0[v16 >> 5]) >> v13;
            }

            if (!v10)
            {
              v17 = (v17 >> 1) & 0xFFFF7FFF | ((((v17 ^ (v17 >> 3) ^ (v17 >> 12)) ^ (v17 >> 1)) & 1) << 15);
              *(v28 + i) = (v23 + word_277600AC0[v17 >> 5]) >> v13;
            }
          }

          ++v21;
          v28 += 164;
          v29 += 164;
          v30 += 164;
        }

        while (result != v21);
        LODWORD(v21) = result;
      }

      v32 = -8;
      v33 = v26;
      v34 = v27;
      do
      {
        v35 = vmaxq_s16(vminq_s16(*(v33 + 1494), v24), v25);
        *(v33 + 1494) = v35;
        v36 = vmaxq_s16(vminq_s16(vqaddq_s16(*(v33 + 13466), vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*v35.i8, a6, 0), v22)), vrshlq_s32(vmull_high_lane_s16(v35, a6, 0), v22))), v24), v25);
        v37 = vmaxq_s16(vminq_s16(vqaddq_s16(*(v33 + 25438), vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*v35.i8, a5, 0), v22)), vrshlq_s32(vmull_high_lane_s16(v35, a5, 0), v22))), v24), v25);
        *(v33 + 13466) = v36;
        *(v33 + 25438) = v37;
        if (a3)
        {
          v34[512] = v36;
          v34[1024] = v37;
          *v34 = v35;
        }

        v32 += 8;
        ++v34;
        v33 += 16;
      }

      while (v32 < 0x38);
      ++v20;
      result = (result + 1);
      v27 += 8;
      v26 += 164;
    }

    while (v20 != 64);
  }

  else if (v6 | v9)
  {
    v38 = 0;
    LODWORD(v39) = 0;
    v40 = (a2 + 25438);
    v41 = (a2 + 13466);
    v42 = 1 << (v12 + 3);
    v43 = vdupq_n_s16(v19);
    if (!v13)
    {
      v42 = 0;
    }

    v44 = vdupq_n_s16(v18);
    result = a3 + 512;
    v45 = a2 + 23944;
    v46 = a2 + 11972;
    v47 = 10;
    do
    {
      if (v38 + 9 >= v39)
      {
        v39 = v39;
        v48 = (v45 + 164 * v39);
        v49 = (v46 + 164 * v39);
        do
        {
          v50 = v49;
          v51 = v48;
          v52 = v14;
          do
          {
            if (!v8)
            {
              v16 = (v16 >> 1) & 0xFFFF7FFF | ((((v16 ^ (v16 >> 3) ^ (v16 >> 12)) ^ (v16 >> 1)) & 1) << 15);
              *v50 = (v42 + word_277600AC0[v16 >> 5]) >> v13;
            }

            if (!v10)
            {
              v17 = (v17 >> 1) & 0xFFFF7FFF | ((((v17 ^ (v17 >> 3) ^ (v17 >> 12)) ^ (v17 >> 1)) & 1) << 15);
              *v51 = (v42 + word_277600AC0[v17 >> 5]) >> v13;
            }

            ++v51;
            ++v50;
            --v52;
          }

          while (v52);
          ++v39;
          v48 += 82;
          v49 += 82;
        }

        while (v47 != v39);
        LODWORD(v39) = v47;
      }

      v53 = -8;
      v54 = v41;
      v55 = v40;
      v56 = result;
      do
      {
        v57 = vmaxq_s16(vminq_s16(*v54, v43), v44);
        v58 = vmaxq_s16(vminq_s16(*v55, v43), v44);
        *v54 = v57;
        *v55 = v58;
        if (a3)
        {
          *v56 = v57;
          v56[512] = v58;
        }

        v53 += 8;
        ++v56;
        ++v55;
        ++v54;
      }

      while (v53 < 0x38);
      ++v38;
      ++v47;
      result += 8;
      v40 = (v40 + 164);
      v41 = (v41 + 164);
    }

    while (v38 != 64);
  }

  return result;
}

uint64_t sub_27758FA00(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, __n128 a7, int16x4_t a8)
{
  v8 = *(result + 39);
  v9 = *(result + 4);
  v10 = (v8 | *(result + 4) & 2) == 0;
  v11 = *(result + 60);
  v12 = (v11 | *(result + 4) & 2) == 0;
  v13 = v9 >> 13;
  v14 = ((v9 >> 8) & 3) - v13;
  v15 = v14 + 4;
  if ((v9 & 0x10000) != 0)
  {
    v16 = 44;
  }

  else
  {
    v16 = 82;
  }

  v17 = *(result + 8);
  v18 = v9 & 0x20000;
  if ((v9 & 0x20000) != 0)
  {
    v19 = 6;
  }

  else
  {
    v19 = 9;
  }

  v20 = -(128 << v13);
  v21 = (256 << v13) + ~(128 << v13);
  v22 = *(result + 10);
  v23 = *(result + 105);
  v24 = *(result + 130);
  if (*(result + 10))
  {
    v25 = 0;
    LODWORD(v26) = 0;
    v27 = 1 << (v14 + 3);
    if (v14 == -4)
    {
      v28 = 0;
    }

    else
    {
      v28 = 1 << (v14 + 3);
    }

    v29 = vdupq_n_s16(v21);
    v30 = (a3 + 16);
    v31 = vdupq_n_s16(v20);
    v32 = (a2 + 1510);
    v33 = 10;
    v34 = v17;
    do
    {
      if (v25 + 9 >= v26)
      {
        v26 = v26;
        v35 = a2 + 164 * v26;
        do
        {
          for (i = 0; i != 164; i += 2)
          {
            v34 = (v34 >> 1) & 0xFFFF7FFF | ((((v34 ^ (v34 >> 3) ^ (v34 >> 12)) ^ (v34 >> 1)) & 1) << 15);
            *(v35 + i) = (v28 + word_277600AC0[v34 >> 5]) >> v15;
          }

          ++v26;
          v35 += 164;
        }

        while (v33 != v26);
        LODWORD(v26) = v33;
      }

      v37 = -16;
      v38 = v32;
      v39 = v30;
      do
      {
        v40 = vmaxq_s16(vminq_s16(v38[-1], v29), v31);
        a7 = vmaxq_s16(vminq_s16(*v38, v29), v31);
        v38[-1] = v40;
        *v38 = a7;
        if (a3)
        {
          v39[-1] = v40;
          *v39 = a7;
        }

        v37 += 16;
        v39 += 2;
        v38 += 2;
      }

      while (v37 < 0x30);
      ++v25;
      ++v33;
      v30 += 8;
      v32 = (v32 + 164);
    }

    while (v25 != 64);
  }

  else
  {
    if (!(v8 | v11))
    {
      return result;
    }

    v27 = 1 << (v14 + 3);
    v29 = vdupq_n_s16(v21);
    v31 = vdupq_n_s16(v20);
  }

  v41 = 0;
  LODWORD(v42) = 0;
  v43 = v17 ^ 0xB524;
  result = v17 ^ 0x49D8;
  v44 = (v9 >> 17) & 1;
  v45 = vdupq_n_s32(-6 - (v9 >> 6));
  a7.n128_u32[0] = v23;
  a8.i32[0] = v24;
  v46 = 0x40uLL >> ((v9 & 0x20000) != 0);
  if (v15)
  {
    v47 = v27;
  }

  else
  {
    v47 = 0;
  }

  v48 = (a3 + 0x2000);
  v69 = a2 + 23944;
  v68 = a2 + 11972;
  v49 = a2 + 164 * v19;
  v50 = a2 + 34;
  v51 = v19;
  do
  {
    ++v51;
    if (v41 + v19 >= v42)
    {
      v42 = v42;
      v52 = (v69 + 164 * v42);
      v53 = (v68 + 164 * v42);
      do
      {
        v54 = v53;
        v55 = v52;
        v56 = v16;
        do
        {
          if (!v10)
          {
            v43 = (v43 >> 1) & 0xFFFF7FFF | (((v43 ^ (v43 >> 3) ^ (v43 >> 12) ^ (v43 >> 1)) & 1) << 15);
            *v54 = (v47 + word_277600AC0[v43 >> 5]) >> v15;
          }

          if (!v12)
          {
            result = (result >> 1) & 0xFFFF7FFF | ((((result ^ (result >> 3) ^ (result >> 12)) ^ (result >> 1)) & 1) << 15);
            *v55 = (v47 + word_277600AC0[result >> 5]) >> v15;
          }

          ++v55;
          ++v54;
          --v56;
        }

        while (v56);
        ++v42;
        v52 += 82;
        v53 += 82;
      }

      while (v41 + v19 + 1 != v42);
      LODWORD(v42) = v51;
    }

    v57 = (v50 + 164 * ((v41 << v44) + 9));
    v58 = (v50 + 164 * ((v41 << v44) + 10));
    v59 = -8;
    v60 = v48;
    v61 = v49;
    do
    {
      v62 = *(v61 + 11984);
      v63 = *(v61 + 23956);
      if (v22)
      {
        v64 = v57[-1];
        if (v18)
        {
          v65 = vrshrq_n_s16(vpaddq_s16(vaddq_s16(v58[-1], v64), vaddq_s16(*v58, *v57)), 2uLL);
        }

        else
        {
          v65 = vrshrq_n_s16(vpaddq_s16(v64, *v57), 1uLL);
        }

        v62 = vqaddq_s16(v62, vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*v65.i8, a7.n128_u64[0], 0), v45)), vrshlq_s32(vmull_high_lane_s16(v65, a7.n128_u64[0], 0), v45)));
        v63 = vqaddq_s16(v63, vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*v65.i8, a8, 0), v45)), vrshlq_s32(vmull_high_lane_s16(v65, a8, 0), v45)));
      }

      v66 = vmaxq_s16(vminq_s16(v62, v29), v31);
      v67 = vmaxq_s16(vminq_s16(v63, v29), v31);
      *(v61 + 11984) = v66;
      *(v61 + 23956) = v67;
      if (a3)
      {
        *v60 = v66;
        v60[512] = v67;
      }

      v59 += 8;
      v61 += 16;
      ++v60;
      v57 += 2;
      v58 += 2;
    }

    while (v59 < 0x18);
    ++v41;
    v49 += 164;
    v48 += 8;
  }

  while (v41 != v46);
  return result;
}

const void **sub_27758FF24(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

id sub_277590BFC(uint64_t a1, size_t planeIndex)
{
  v2 = planeIndex;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = planeIndex;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(**a1, planeIndex);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(**a1, v4);
  v7 = sub_277590D84(**a1, v2);
  v12 = *MEMORY[0x277CC4D50];
  v13[0] = &unk_2886648C0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  image = 0;
  if (CVMetalTextureCacheCreateTextureFromImage(0, *(**(a1 + 8) + 8 * (v2 != 0) + 88), **a1, v8, v7, WidthOfPlane, HeightOfPlane, v4, &image))
  {
    v9 = 0;
  }

  else
  {
    v9 = CVMetalTextureGetTexture(image);
  }

  sub_277584EB0(&image);

  return v9;
}

void sub_277590D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_277584EB0(va);

  _Unwind_Resume(a1);
}

uint64_t sub_277590D84(__CVBuffer *a1, int a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v4 = sub_2775846D4(PixelFormatType);
  if (v4 == 8)
  {
    if (a2)
    {
      return 30;
    }

    else
    {
      return 10;
    }
  }

  else
  {
    v6 = v4;
    v7 = sub_277584BA4(PixelFormatType);
    v8 = 578;
    if (!a2)
    {
      v8 = 576;
    }

    v9 = 605;
    if (!a2)
    {
      v9 = 603;
    }

    if (v6 != 10)
    {
      v8 = 0;
    }

    if (v6 == 12)
    {
      v8 = v9;
    }

    v10 = 588;
    if (a2)
    {
      v10 = 589;
    }

    if (v6 != 10)
    {
      v10 = 0;
    }

    if (v7)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }
}

void sub_277591454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_277584EB0(va);

  _Unwind_Resume(a1);
}

void sub_277591610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_277584EB0(va);

  _Unwind_Resume(a1);
}

uint64_t AV1Decoder_CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    v5 = v4;
    fwrite("FigDerivedObjectCreate failed\n", 0x1EuLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "FigDerivedObjectCreate failed", buf, 2u);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = operator new(0x9100uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v8 = v7;
      bzero(v7, 0x9100uLL);
      v9 = objc_autoreleasePoolPush();
      v10 = objc_opt_new();
      *buf = v10;
      v11 = *(v8 + 8);
      if (v11)
      {
        CFRelease(v11);
      }

      *(v8 + 8) = v10;
      *buf = 0;
      sub_27758581C(buf);
      objc_autoreleasePoolPop(v9);
      *(v8 + 4595) = 0;
      *(v8 + 4596) = 0;
      *(v8 + 4597) = 0;
      *(v8 + 36792) = 0u;
      v12 = v8 + 36792;
      *(v8 + 36808) = 0u;
      *(v8 + 36824) = 0u;
      *(v8 + 36840) = 0u;
      *(v8 + 36856) = 0u;
      v13 = 4;
      *(v8 + 4609) = 0;
      do
      {
        memset_pattern16(v12, &off_288664250, 0x10uLL);
        v12 += 16;
        --v13;
      }

      while (v13);
      *(v8 + 4607) = sub_27758BD58;
      *(v8 + 4608) = sub_27758B71C;
      *(v8 + 4609) = sub_27758B62C;
      *(v8 + 4610) = sub_27758ABDC;
      *(v8 + 4611) = 0;
      *(v8 + 4612) = sub_27758A390;
      *(v8 + 4613) = 0;
      *(v8 + 4614) = sub_277589B44;
      *(v8 + 4615) = 0;
      sub_27758CE9C();
      if (dword_280B9A85C >= 2)
      {
        *(v8 + 4599) = sub_27758FA00;
        *(v8 + 4600) = sub_27758F5DC;
        *(v8 + 36808) = vdupq_n_s64(sub_27758EF34);
        *(v8 + 4603) = sub_27758E898;
        *(v8 + 4604) = sub_27758E074;
        *(v8 + 4605) = sub_27758DA24;
        *(v8 + 4606) = sub_27758D2D8;
        *(v8 + 4607) = sub_27758D240;
        *(v8 + 4608) = sub_27758D010;
      }

      *(v8 + 4616) = 0;
      *(v8 + 4) = sub_27758CCF8;
      *(v8 + 5) = sub_27758CB20;
      *(v8 + 6) = sub_27758C988;
      sub_27758CE9C();
      if (dword_280B9A85C >= 2)
      {
        *(v8 + 4) = sub_277585548;
        *(v8 + 5) = sub_277585154;
        *(v8 + 6) = sub_277584EF8;
      }

      v5 = 0;
      *(v8 + 4617) = 850045863;
      *(v8 + 2309) = 0u;
      *(v8 + 2310) = 0u;
      *(v8 + 2311) = 0u;
      *(v8 + 2312) = 0u;
      *(v8 + 4626) = 1;
      *(v8 + 18508) = 0;
      *(v8 + 18520) = 0;
      *(v8 + 2314) = 0u;
      *(v8 + 37048) = 0u;
      *(v8 + 9266) = 0;
      *(v8 + 18534) = 1;
      *(v8 + 9268) = 0;
      *(v8 + 4635) = v8 + 37080;
      *(v8 + 4636) = v8 + 37080;
      *(v8 + 37096) = 0u;
      *(v8 + 4639) = 0;
      *DerivedStorage = v8;
    }

    else
    {
      *DerivedStorage = 0;
      v5 = 4294954392;
    }

    *a3 = 0;
  }

  return v5;
}

void sub_2775927B4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_27758581C(v1 + 8);
  sub_277585850(v1 + 7);
  sub_277585884(v1 + 2);
  MEMORY[0x277CADD90](v1, MEMORY[0x277D826F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_277592808()
{
  VTVideoDecoderGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 4294954393;
  }

  sub_2775856E0(v0);
  return 0;
}

uint64_t sub_27759283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __CVBuffer *a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v17 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  v11 = *CMBaseObjectGetDerivedStorage();
  if (!v11)
  {
    return 4294954393;
  }

  *a9 = 0;
  if (!*(v11 + 8))
  {
    fwrite("No tile session\n", 0x10uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No tile session", buf, 2u);
    }

    return 4294954393;
  }

  *(v11 + 37041) = 1;
  if (a5 <= CVPixelBufferGetWidth(a6) >> 1)
  {
    CVPixelBufferGetHeight(a6);
  }

  if (*(v11 + 24) || !sub_277588AC0(v11, 0) && *(v11 + 24))
  {
    operator new();
  }

  fprintf(*MEMORY[0x277D85DF8], "Error %d %s\n", 0, "opening decoder");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    *&buf[4] = 0;
    v15 = 2080;
    v16 = "opening decoder";
    _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error %d %s", buf, 0x12u);
  }

  VTTileDecoderSessionEmitDecodedTile();
  return 0;
}

void sub_277592BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x277CADDA0](v4, v5);
  sub_27758950C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_277592C44(uint64_t a1, uint64_t a2)
{
  VTVideoDecoderGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();
  if (!v3)
  {
    return 4294954393;
  }

  *(v3 + 8) = a2;
  v5 = FigFormatDescriptionRetain();
  sub_277588A7C((v3 + 16), &v5);
  sub_277585884(&v5);
  return sub_277588624(v3);
}

uint64_t sub_277592CBC()
{
  VTVideoDecoderGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();
  if (!v0)
  {
    return 4294954393;
  }

  sub_2775856E0(v0);
  return 0;
}

const opaqueCMFormatDescription *sub_277592CF0(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  VTVideoDecoderGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    result = *(v3 + 16);
    if (!result)
    {
      return result;
    }

    Dimensions = CMVideoFormatDescriptionGetDimensions(result);
    if (Dimensions == CMVideoFormatDescriptionGetDimensions(a2))
    {
      v6 = sub_2775889CC(*(v3 + 16));
      v7 = sub_2775889CC(a2);
      if (v6 && v7 != 0)
      {
        v9 = v7;
        BytePtr = CFDataGetBytePtr(v6);
        v11 = CFDataGetBytePtr(v9);
        Length = CFDataGetLength(v6);
        v13 = CFDataGetLength(v9);
        v14 = !BytePtr || v11 == 0;
        v15 = !v14 && Length == v13;
        if (v15 && !memcmp(BytePtr, v11, Length))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_277592DC8(uint64_t a1, void *a2)
{
  VTVideoDecoderGetCMBaseObject();
  if (!*CMBaseObjectGetDerivedStorage())
  {
    return 4294954393;
  }

  if (atomic_load_explicit(qword_280B9A808, memory_order_acquire) != -1)
  {
    *buf = &v5;
    v6 = buf;
    std::__call_once(qword_280B9A808, &v6, sub_277588464);
  }

  if (qword_280B9A800)
  {
    if (a2)
    {
      v3 = CFRetain(qword_280B9A800);
      result = 0;
      *a2 = v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fwrite("Failed to create support properties dict\n", 0x29uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create support properties dict", buf, 2u);
    }

    return 4294954392;
  }

  return result;
}

uint64_t sub_277592EDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  v7 = *CMBaseObjectGetDerivedStorage();
  if (!v7)
  {
    return 4294954393;
  }

  *a5 = 0;
  if (!*v7)
  {
    fwrite("No active session\n", 0x12uLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No active session", buf, 2u);
    }

    return 4294954393;
  }

  if (v7[3] || !sub_277588AC0(v7, (~a4 & 9) == 0) && v7[3])
  {
    operator new();
  }

  fprintf(*MEMORY[0x277D85DF8], "Error %d %s\n", 0, "opening decoder");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    *&buf[4] = 0;
    v11 = 2080;
    v12 = "opening decoder";
    _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error %d %s", buf, 0x12u);
  }

  VTDecoderSessionEmitDecodedFrame();
  return 0;
}

void sub_277593220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x277CADDA0](v4, v5);
  sub_27758950C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_277593264(uint64_t a1, uint64_t a2)
{
  VTVideoDecoderGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();
  if (!v3)
  {
    return 4294954393;
  }

  *v3 = a2;
  v5 = FigFormatDescriptionRetain();
  sub_277588A7C((v3 + 16), &v5);
  sub_277585884(&v5);
  return sub_277588624(v3);
}

uint64_t sub_2775932E0(uint64_t a1, const void *a2, const void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *CMBaseObjectGetDerivedStorage();
  if (!v5)
  {
    return 4294954393;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SetProperty %@ %@", &v16, 0x16u);
  }

  v6 = v5 + 36864;
  if (CFEqual(a2, *MEMORY[0x277CE26F8]))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v16 = 0;
        v8 = CFGetTypeID(a3);
        if (v8 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, &v16);
          if (v16 >= 1)
          {
            *(v6 + 200) = v16;
          }
        }
      }
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26B8]))
  {
    if (a3)
    {
      v10 = CFBooleanGetTypeID();
      if (v10 == CFGetTypeID(a3))
      {
        v11 = CFGetTypeID(a3);
        v12 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(a3) != 0;
        result = 0;
        *(v6 + 204) = v12;
        return result;
      }
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2700]))
  {
    if (!a3)
    {
      return 0;
    }

    v13 = CFBooleanGetTypeID();
    if (v13 != CFGetTypeID(a3))
    {
      return 0;
    }

    v14 = CFGetTypeID(a3);
    v15 = v14 == CFBooleanGetTypeID() && CFBooleanGetValue(a3) != 0;
    result = 0;
    *(v6 + 205) = v15;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = a2;
      _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unrecognised property key %@", &v16, 0xCu);
    }

    return 4294954396;
  }

  return result;
}

uint64_t sub_277593560(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = *CMBaseObjectGetDerivedStorage();
  if (!v7)
  {
    return 4294954393;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26F8]))
  {
    v8 = CFNumberCreate(a3, kCFNumberSInt32Type, v7 + 37064);
    result = 0;
LABEL_13:
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26B8]))
  {
    result = 0;
    v10 = v7[37068];
LABEL_9:
    if (v10)
    {
      v11 = MEMORY[0x277CBED28];
    }

    else
    {
      v11 = MEMORY[0x277CBED10];
    }

    v8 = *v11;
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CE2700]))
  {
    result = 0;
    v10 = v7[37069];
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = a2;
    _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unrecognised property key %@", &v12, 0xCu);
  }

  return 4294954396;
}

__CFString *sub_2775936D0(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AV1Decoder %p>", a1);
  return Mutable;
}

uint64_t sub_27759372C()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *DerivedStorage;
  if (*DerivedStorage)
  {
    sub_2775856E0(*DerivedStorage);
    v3 = (v2 + 36760);
    if (*(v2 + 24))
    {
      sub_2775EBAC8((v2 + 24), 1);
    }

    v4 = *(v2 + 37056);
    if (v4)
    {
      dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(*(v2 + 37056));
    }

    v5 = *(v2 + 37048);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(v2 + 37112);
    if (v6)
    {
      sub_2775857B0(v6);
    }

    if (*(v2 + 37096))
    {
      v7 = *(v2 + 37088);
      v8 = *(*(v2 + 37080) + 8);
      v9 = *v7;
      *(v9 + 8) = v8;
      *v8 = v9;
      *(v2 + 37096) = 0;
      if (v7 != (v2 + 37080))
      {
        do
        {
          v10 = v7[1];
          operator delete(v7);
          v7 = v10;
        }

        while (v10 != (v2 + 37080));
      }
    }

    for (i = 0; i != -16; i -= 8)
    {
      v12 = *(v2 + 37032 + i);
      if (v12)
      {
        CFRelease(v12);
      }
    }

    std::mutex::~mutex((v2 + 36936));
    v13 = *v3;
    if (*v3)
    {
      *(v2 + 36768) = v13;
      operator delete(v13);
    }

    sub_27758581C((v2 + 64));
    sub_277585850((v2 + 56));
    sub_277585884((v2 + 16));
    MEMORY[0x277CADDA0](v2, 0x10E0C4090BA85D9);
  }

  *v1 = 0;
  return 0;
}

void AV1RegisterDecoder()
{
  if (atomic_load_explicit(&qword_280B9A868, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&qword_280B9A868, &v3, sub_2775938E4);
  }
}

const void **sub_2775938E4()
{
  keys[2] = *MEMORY[0x277D85DE8];
  v3 = 0;
  keys[0] = *MEMORY[0x277CE2B70];
  keys[1] = @"CMClassImplementationID";
  values[0] = *MEMORY[0x277CBED10];
  values[1] = @"com.apple.videotoolbox.videodecoder.av1.sw";
  v0 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = 0;
  v3 = v0;
  sub_2775885F0(&v2);
  VTRegisterVideoDecoderWithInfo();
  return sub_2775885F0(&v3);
}

void sub_2775939C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2775885F0(va);
  _Unwind_Resume(a1);
}

char *sub_2775939E0(char *result, uint64_t a2, _DWORD *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3[1] | *a3;
  if (*a3)
  {
    v11 = result;
    v12 = a6 + 64;
    v13 = 1;
    v16 = -4 * a5;
    do
    {
      if ((v13 & v6) != 0)
      {
        v14 = *a4;
        if (*a4 || (v14 = a4[v16], a4[v16]))
        {
          if ((a3[1] & v13) != 0)
          {
            v15 = 6;
          }

          else
          {
            v15 = 4;
          }

          result = sub_277593AB8(v11, *(a6 + v14), *(v12 + v14), v14 >> 4, 1, a2, v15);
        }
      }

      v13 *= 2;
      v11 += 4;
      a4 += 4;
    }

    while (v6 > v13 - 1);
  }

  return result;
}

char *sub_277593AB8(char *result, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = -2 * a6;
  v8 = -3 * a6;
  v9 = 3 * a6;
  v10 = -a6;
  v11 = 2 * a6;
  v110 = 5 * a6;
  v109 = -5 * a6;
  v12 = 4;
  v105 = 6 * a6;
  v106 = -4 * a6;
  v104 = -7 * a6;
  v13 = a6;
  v107 = -6 * a6;
  v108 = 4 * a6;
  v100 = 3 * a6;
  v102 = 2 * a6;
  do
  {
    v14 = result[v7];
    v15 = result[v10];
    v16 = *result;
    v17 = result[v13];
    if (v14 - v15 >= 0)
    {
      v18 = v14 - v15;
    }

    else
    {
      v18 = v15 - v14;
    }

    if (v18 > a3)
    {
      goto LABEL_9;
    }

    v19 = v17 - v16;
    if (v17 - v16 < 0)
    {
      v19 = v16 - v17;
    }

    if (v19 <= a3)
    {
      v21 = v15 - v16;
      if (v15 - v16 < 0)
      {
        v21 = v16 - v15;
      }

      v22 = v14 - v17;
      if (v14 - v17 < 0)
      {
        v22 = v17 - v14;
      }

      v20 = ((v22 >> 1) + 2 * v21) <= a2;
    }

    else
    {
LABEL_9:
      v20 = 0;
    }

    if (a7 < 5)
    {
      v23 = 0;
      v29 = 0;
      v24 = 0;
      goto LABEL_35;
    }

    v23 = result[v8];
    v24 = result[v11];
    v25 = v23 - v14;
    if (v23 - v14 < 0)
    {
      v25 = v14 - v23;
    }

    v26 = v24 - v17;
    if (v24 - v17 < 0)
    {
      v26 = v17 - v24;
    }

    v27 = v26 <= a3;
    v28 = v25 <= a3 && v27;
    v20 &= v28;
    if (a7 < 7)
    {
      v29 = 0;
LABEL_35:
      v30 = 0;
      if (!v20)
      {
        goto LABEL_148;
      }

      goto LABEL_36;
    }

    v29 = result[v106];
    v30 = result[v9];
    v31 = v29 - v23;
    if (v29 - v23 < 0)
    {
      v31 = v23 - v29;
    }

    v32 = v30 - v24;
    if (v30 - v24 < 0)
    {
      v32 = v24 - v30;
    }

    v33 = v32 <= a3;
    v34 = v31 <= a3 && v33;
    if ((v34 & v20) == 0)
    {
      goto LABEL_148;
    }

LABEL_36:
    if (a7 >= 16)
    {
      v35 = result[v104];
      v40 = result[v107];
      v41 = result[v109];
      v39 = result[v108];
      v38 = result[v110];
      v37 = result[v105];
      v42 = v35 - v15;
      if (v35 - v15 < 0)
      {
        v42 = v15 - v35;
      }

      if (v42 > 1)
      {
        goto LABEL_57;
      }

      v43 = v40 - v15;
      if (v40 - v15 < 0)
      {
        v43 = v15 - v40;
      }

      if (v43 > 1)
      {
        goto LABEL_57;
      }

      v44 = v41 - v15;
      if (v41 - v15 < 0)
      {
        v44 = v15 - v41;
      }

      if (v44 > 1)
      {
        goto LABEL_57;
      }

      v45 = v39 - v16;
      if (v39 - v16 < 0)
      {
        v45 = v16 - v39;
      }

      if (v45 > 1)
      {
        goto LABEL_57;
      }

      v46 = v38 - v16;
      if (v38 - v16 < 0)
      {
        v46 = v16 - v38;
      }

      if (v46 > 1)
      {
LABEL_57:
        v36 = 0;
      }

      else
      {
        v47 = v37 - v16;
        if (v37 - v16 < 0)
        {
          v47 = v16 - v37;
        }

        v36 = v47 < 2;
      }

LABEL_58:
      v48 = v23 - v15;
      if (v23 - v15 < 0)
      {
        v48 = v15 - v23;
      }

      if ((v48 | v18) > 1)
      {
        goto LABEL_67;
      }

      v49 = v17 - v16;
      if (v17 - v16 < 0)
      {
        v49 = v16 - v17;
      }

      if (v49 > 1)
      {
LABEL_67:
        v51 = 0;
      }

      else
      {
        v50 = v24 - v16;
        if (v24 - v16 < 0)
        {
          v50 = v16 - v24;
        }

        v51 = v50 < 2;
      }

      if (a7 < 8)
      {
        if (a7 == 6 && v51)
        {
          v57 = 2 * v15 + 4;
          v58 = v57 + 2 * v14;
          result[v7] = (v58 + v16 + 3 * v23) >> 3;
          result[v10] = (v58 + 2 * v16 + v17 + v23) >> 3;
          *result = (v57 + v14 + 2 * v16 + 2 * v17 + v24) >> 3;
          v59 = (v15 + 2 * v16 + 2 * v17 + v24 + 2 * v24 + 4) >> 3;
LABEL_147:
          result[v13] = v59;
          goto LABEL_148;
        }
      }

      else
      {
        v52 = v10;
        v53 = v7;
        v54 = v29 - v15;
        if (v29 - v15 < 0)
        {
          v54 = v15 - v29;
        }

        if (v54 > 1)
        {
          v56 = 0;
        }

        else
        {
          v55 = v30 - v16;
          if (v30 - v16 < 0)
          {
            v55 = v16 - v30;
          }

          v56 = v55 < 2;
        }

        v60 = v56 && v51;
        if (a7 >= 16 && (v60 & v36) != 0)
        {
          v101 = v16 + v15 + 8;
          v61 = v101 + v14 + v23;
          result[v107] = (v61 + v29 - v35 + 8 * v35 + 2 * v40 + 2 * v41) >> 4;
          result[v109] = (v61 + v17 + 2 * v29 + 5 * v35 + 2 * v40 + 2 * v41) >> 4;
          v62 = v13;
          v63 = v14 + 8;
          v64 = v14 + 8 + v15;
          v65 = v64 + v16 + v17;
          result[v106] = (v65 + 2 * v23 + 2 * v29 + v24 + 4 * v35 + v40 + 2 * v41) >> 4;
          v66 = 2 * v14 + 8;
          v67 = v8;
          result[v8] = (v66 + v15 + v16 + v17 + 2 * v23 + 2 * v29 + v24 + v30 + 3 * v35 + v40 + v41) >> 4;
          v68 = v66 + 2 * v15;
          v69 = v39 + v40 + v41;
          v70 = v53;
          result[v53] = (v68 + v16 + v17 + v29 + 2 * v23 + v24 + v30 + 2 * v35 + v69) >> 4;
          v10 = v52;
          result[v52] = (v68 + 2 * v16 + v17 + v23 + v29 + v24 + v30 + v35 + v38 + v69) >> 4;
          v9 = v100;
          *result = (v63 + 2 * v15 + 2 * v16 + 2 * v17 + v23 + v29 + v24 + v30 + v37 + v38 + v39 + v40 + v41) >> 4;
          v13 = v62;
          result[v62] = (v64 + 2 * v16 + 2 * v17 + v23 + v29 + 2 * v24 + v30 + v38 + 2 * v37 + v39 + v41) >> 4;
          v7 = v70;
          v8 = v67;
          v11 = v102;
          result[v102] = (v64 + v16 + 2 * v17 + v23 + v29 + 2 * v24 + 2 * v30 + v37 + v38 + 2 * v37 + v39) >> 4;
          result[v100] = (v65 + v23 + 2 * v24 + 2 * v30 + v38 + 4 * v37 + 2 * v39) >> 4;
          result[v108] = (v65 + v24 + 2 * v30 + v37 + 4 * v37 + 2 * v38 + 2 * v39) >> 4;
          result[v110] = (v101 + v17 + v24 + v30 + v37 + 4 * v37 + 2 * v37 + 2 * v38 + 2 * v39) >> 4;
          goto LABEL_148;
        }

        v7 = v53;
        v10 = v52;
        v11 = v102;
        if (v60)
        {
          v71 = v15 + 4 + v16 + v17;
          v72 = v15 + 4 + v14;
          result[v8] = (v72 + v16 + 2 * v23 + 3 * v29) >> 3;
          result[v7] = (v71 + v23 + 2 * (v29 + v14)) >> 3;
          result[v10] = (v14 + 2 * v15 + v16 + v17 + v23 + v29 + v24 + 4) >> 3;
          *result = (v72 + 2 * v16 + v17 + v23 + v24 + v30) >> 3;
          v9 = v100;
          result[v13] = (v72 + v16 + 2 * v17 + v24 + 2 * v30) >> 3;
          result[v102] = (v71 + 2 * v24 + v30 + 2 * v30) >> 3;
          goto LABEL_148;
        }
      }

      goto LABEL_84;
    }

    if (a7 >= 6)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      goto LABEL_58;
    }

LABEL_84:
    if (v18 <= a4)
    {
      v73 = v17 - v16;
      if (v17 - v16 < 0)
      {
        v73 = v16 - v17;
      }

      if (v73 <= a4)
      {
        v84 = 3 * (v16 - v15);
        if (v84 >= 127)
        {
          v84 = 127;
        }

        if (v84 <= -128)
        {
          v84 = -128;
        }

        if (v84 >= 123)
        {
          v85 = 123;
        }

        else
        {
          v85 = v84;
        }

        v86 = v85 + 4;
        v87 = v86 >> 3;
        if (v84 >= 124)
        {
          v84 = 124;
        }

        v88 = v15 + ((v84 + 3) >> 3);
        if (v88 >= 0xFF)
        {
          v89 = -1;
        }

        else
        {
          v89 = v88;
        }

        if (v88 >= 0)
        {
          v90 = v89;
        }

        else
        {
          v90 = 0;
        }

        result[v10] = v90;
        v91 = v16 - (v86 >> 3);
        if (v91 >= 0xFF)
        {
          v92 = -1;
        }

        else
        {
          v92 = v16 - (v86 >> 3);
        }

        if (v91 >= 0)
        {
          v93 = v92;
        }

        else
        {
          v93 = 0;
        }

        *result = v93;
        v94 = v87 + 1;
        v95 = v14 + ((v87 + 1) >> 1);
        if (v95 >= 0xFF)
        {
          v96 = -1;
        }

        else
        {
          v96 = v14 + ((v87 + 1) >> 1);
        }

        if (v95 >= 0)
        {
          v97 = v96;
        }

        else
        {
          v97 = 0;
        }

        result[v7] = v97;
        v98 = v17 - (v94 >> 1);
        if (v98 >= 0xFF)
        {
          v99 = -1;
        }

        else
        {
          v99 = v98;
        }

        if (v98 >= 0)
        {
          LOBYTE(v59) = v99;
        }

        else
        {
          LOBYTE(v59) = 0;
        }

        goto LABEL_147;
      }
    }

    v74 = v14 - v17;
    if (v14 - v17 >= 127)
    {
      v74 = 127;
    }

    if (v74 <= -128)
    {
      v74 = -128;
    }

    v75 = v74 + 3 * (v16 - v15);
    if (v75 >= 127)
    {
      v75 = 127;
    }

    if (v75 <= -128)
    {
      v75 = -128;
    }

    if (v75 >= 123)
    {
      v76 = 123;
    }

    else
    {
      v76 = v75;
    }

    v77 = v76 + 4;
    if (v75 >= 124)
    {
      v75 = 124;
    }

    v78 = v15 + ((v75 + 3) >> 3);
    if (v78 >= 0xFF)
    {
      v79 = -1;
    }

    else
    {
      v79 = v78;
    }

    if (v78 >= 0)
    {
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    result[v10] = v80;
    v81 = v16 - (v77 >> 3);
    if (v81 >= 0xFF)
    {
      v82 = -1;
    }

    else
    {
      v82 = v16 - (v77 >> 3);
    }

    if (v81 >= 0)
    {
      v83 = v82;
    }

    else
    {
      v83 = 0;
    }

    *result = v83;
LABEL_148:
    result += a5;
    --v12;
  }

  while (v12);
  return result;
}

char *sub_277594274(char *result, uint64_t a2, _DWORD *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3[1] | *a3;
  if (*a3)
  {
    v11 = result;
    v12 = a6 + 64;
    v13 = 4 * a2;
    v14 = 4 * a5;
    v15 = 1;
    do
    {
      if ((v15 & v6) != 0)
      {
        v16 = *a4;
        if (*a4 || (v16 = *(a4 - 4), *(a4 - 4)))
        {
          if ((a3[1] & v15) != 0)
          {
            v17 = 6;
          }

          else
          {
            v17 = 4;
          }

          result = sub_277593AB8(v11, *(a6 + v16), *(v12 + v16), v16 >> 4, a2, 1, v17);
        }
      }

      v15 *= 2;
      v11 += v13;
      a4 += v14;
    }

    while (v6 > v15 - 1);
  }

  return result;
}

char *sub_277594340(char *result, uint64_t a2, _DWORD *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3[1] | *a3 | a3[2];
  if (v6)
  {
    v11 = result;
    v12 = a6 + 64;
    v13 = 1;
    v14 = -4 * a5;
    do
    {
      if ((v13 & v6) != 0)
      {
        v15 = *a4;
        if (*a4 || (v15 = a4[v14], a4[v14]))
        {
          if ((a3[2] & v13) != 0)
          {
            v16 = 2;
          }

          else
          {
            v16 = (a3[1] & v13) != 0;
          }

          result = sub_277593AB8(v11, *(a6 + v15), *(v12 + v15), v15 >> 4, 1, a2, 4 << v16);
        }
      }

      v13 *= 2;
      v11 += 4;
      a4 += 4;
    }

    while (v6 > v13 - 1);
  }

  return result;
}

char *sub_277594424(char *result, uint64_t a2, _DWORD *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v6 = a3[1] | *a3 | a3[2];
  if (v6)
  {
    v11 = result;
    v12 = a6 + 64;
    v13 = 4 * a2;
    v14 = 4 * a5;
    v15 = 1;
    do
    {
      if ((v15 & v6) != 0)
      {
        v16 = *a4;
        if (*a4 || (v16 = *(a4 - 4), *(a4 - 4)))
        {
          if ((a3[2] & v15) != 0)
          {
            v17 = 2;
          }

          else
          {
            v17 = (a3[1] & v15) != 0;
          }

          result = sub_277593AB8(v11, *(a6 + v16), *(v12 + v16), v16 >> 4, a2, 1, 4 << v17);
        }
      }

      v15 *= 2;
      v11 += v13;
      a4 += v14;
    }

    while (v6 > v15 - 1);
  }

  return result;
}

uint64_t sub_27759450C(int a1, int a2, int a3, unsigned int a4, int a5, int a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int *a12, int a13, int a14, int a15, _BYTE *a16)
{
  v16 = a7;
  v18 = a1;
  v19 = a11;
  if (a11 - 1 >= 8)
  {
    if (a11)
    {
      v22 = a11 == 12;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v19 = byte_2775F0E30[4 * a11 + 2 * a2 + a4];
    }
  }

  else
  {
    v20 = 3 * *a12 + byte_2775F0E28[a11 - 1];
    *a12 = v20;
    if (v20 > 90)
    {
      if (v20 >= 0xB4)
      {
        if (v20 == 180 || a2 == 0)
        {
          v19 = 2;
        }

        else
        {
          v19 = 8;
        }
      }

      else
      {
        v19 = 7u;
      }
    }

    else if (v20 == 90 || a4 == 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = 6;
    }
  }

  v24 = byte_2775F0E64[v19];
  if (a4)
  {
    if (byte_2775F0E64[v19] & 6) != 0 || (v25 = 0, v26 = 0, !a2) && (byte_2775F0E64[v19])
    {
      if (a10)
      {
        v25 = a10 + 4 * a1;
      }

      else
      {
        v25 = a8 - a9;
      }

      if (a10)
      {
        v26 = (a10 + 4 * a1);
      }

      else
      {
        v26 = (a8 - a9);
      }
    }
  }

  else
  {
    v26 = 0;
    v25 = a8;
  }

  v69 = v25;
  v27 = a16;
  v73 = a4;
  __src = v26;
  if (byte_2775F0E64[v19])
  {
    v28 = 4 * a14;
    v29 = &a16[-v28];
    if (a2)
    {
      v30 = 4 * (a6 - a3);
      if (v28 >= v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v28;
      }

      if (v31 >= 1)
      {
        v32 = (a8 - 1);
        v33 = v28 - 1;
        v34 = v31;
        do
        {
          v29[v33--] = *v32;
          v32 += a9;
          --v34;
        }

        while (v34);
      }

      if (v30 < v28)
      {
        v67 = a3;
        v37 = a8;
        memset(&a16[-v28], a16[-v31], v28 - v31);
        a3 = v67;
        a8 = v37;
        v16 = a7;
        v18 = a1;
        v27 = a16;
        a4 = v73;
      }

      if ((v24 & 0x10) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v68 = a3;
      v38 = a8;
      if (a4)
      {
        v39 = *v26;
      }

      else
      {
        v39 = 129;
      }

      memset(&a16[-4 * a14], v39, 4 * a14);
      a4 = v73;
      v27 = a16;
      a8 = v38;
      v16 = a7;
      a3 = v68;
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_63;
      }
    }

    if (a2 && (v16 & 8) != 0 && (v40 = a6 - (a14 + a3), a6 > a14 + a3))
    {
      v41 = 4 * v40;
      if (v28 >= 4 * v40)
      {
        v42 = v41;
      }

      else
      {
        v42 = v28;
      }

      if (v42 >= 1)
      {
        v43 = &v27[~v28];
        v44 = (a8 + a9 * v28 - 1);
        v45 = v42;
        do
        {
          *v43-- = *v44;
          v44 += a9;
          --v45;
        }

        while (v45);
      }

      if (v41 >= v28)
      {
        goto LABEL_63;
      }

      v46 = &v29[-v28];
      v47 = v28 - v42;
      v48 = v29[-v42];
    }

    else
    {
      v46 = &v29[-v28];
      v48 = *v29;
      v47 = 4 * a14;
    }

    v49 = a8;
    memset(v46, v48, v47);
    a8 = v49;
    v27 = a16;
    a4 = v73;
  }

LABEL_63:
  v50 = a2;
  if ((v24 & 2) == 0)
  {
    goto LABEL_85;
  }

  v51 = 4 * a13;
  v52 = v27 + 1;
  if (!a4)
  {
    if (v50)
    {
      v58 = *(a8 - 1);
    }

    else
    {
      v58 = 127;
    }

    v57 = v51;
    v56 = v27 + 1;
    goto LABEL_74;
  }

  v53 = 4 * (a5 - v18);
  if (v51 >= v53)
  {
    v54 = 4 * (a5 - v18);
  }

  else
  {
    v54 = 4 * a13;
  }

  v55 = v54;
  memcpy(v27 + 1, __src, v54);
  if (v53 < v51)
  {
    v56 = &v52[v55];
    v57 = v51 - v55;
    v58 = v52[v55 - 1];
LABEL_74:
    memset(v56, v58, v57);
  }

  a4 = v73;
  v27 = a16;
  if ((v24 & 8) != 0)
  {
    if (v73 && (v16 & 1) != 0 && (v59 = a5 - (a13 + v18), a5 > a13 + v18))
    {
      v60 = 4 * v59;
      if (v51 >= 4 * v59)
      {
        v61 = 4 * v59;
      }

      else
      {
        v61 = 4 * a13;
      }

      v62 = v61;
      memcpy(&v52[v51], &__src[v51], v61);
      a4 = v73;
      v27 = a16;
      if (v60 < v51)
      {
        memset(&v52[v51 + v62], v52[v62 - 1 + v51], v51 - v62);
        v27 = a16;
        a4 = v73;
      }
    }

    else
    {
      memset(&v52[v51], v52[v51 - 1], v51);
      a4 = v73;
      v27 = a16;
    }
  }

LABEL_85:
  if ((v24 & 4) == 0)
  {
    return v19;
  }

  if (v50)
  {
    v63 = (v69 - 1);
  }

  else
  {
    v63 = __src;
    if (!a4)
    {
      v64 = 128;
      goto LABEL_90;
    }
  }

  v64 = *v63;
LABEL_90:
  *v27 = v64;
  if (v19 == 7 && a14 + a13 >= 6 && a15)
  {
    *v27 = (5 * (v27[1] + *(v27 - 1)) + 6 * v64 + 8) >> 4;
  }

  return v19;
}

int *sub_277594950(int *result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *result;
  v6 = result[a2];
  if (a5)
  {
    v7 = (181 * v5 + 128) >> 8;
    v8 = (1567 * v6 + 2048) >> 12;
    v9 = (3784 * v6 + 2048) >> 12;
    v10 = 2 * a2;
    v11 = 3 * a2;
    v12 = v7;
  }

  else
  {
    v10 = 2 * a2;
    v13 = result[2 * a2];
    v11 = 3 * a2;
    v14 = result[3 * a2];
    v12 = (181 * (v13 + v5) + 128) >> 8;
    v7 = (181 * (v5 - v13) + 128) >> 8;
    v8 = ((312 * v14 + 1567 * v6 + 2048) >> 12) - v14;
    v9 = v6 + ((1567 * v14 - 312 * v6 + 2048) >> 12);
  }

  if (v12 + v9 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v12 + v9;
  }

  if (v12 + v9 >= a3)
  {
    v16 = v15;
  }

  else
  {
    v16 = a3;
  }

  *result = v16;
  if (v7 + v8 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v7 + v8;
  }

  if (v7 + v8 >= a3)
  {
    v18 = v17;
  }

  else
  {
    v18 = a3;
  }

  result[a2] = v18;
  v19 = v7 - v8;
  if (v19 >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = v19;
  }

  if (v19 >= a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = a3;
  }

  result[v10] = v21;
  if (v12 - v9 >= a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = v12 - v9;
  }

  if (v12 - v9 >= a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = a3;
  }

  result[v11] = v23;
  return result;
}

uint64_t sub_277594A6C(int *a1, uint64_t a2, int a3, int a4, int a5)
{
  sub_277594950(a1, 2 * a2, a3, a4, a5);
  v10 = a1[a2];
  v11 = a1[3 * a2];
  if (a5)
  {
    v12 = (799 * v10 + 2048) >> 12;
    v13 = (4017 * v10 + 2048) >> 12;
    v14 = vshr_n_s32(vmla_s32(0x80000000800, vdup_n_s32(v11), 0xFFFFF71C00000D4ELL), 0xCuLL);
    v15 = 5 * a2;
    v16 = 7 * a2;
  }

  else
  {
    v15 = 5 * a2;
    v17 = &a1[5 * a2];
    v16 = 7 * a2;
    v18 = a1[7 * a2];
    v12 = ((79 * v18 + 799 * v10 + 2048) >> 12) - v18;
    v19 = vld1_dup_f32(v17);
    v14 = vshr_n_s32(vadd_s32(vmla_s32(vmul_s32(v19, 0x6A700000472), vdup_n_s32(v11), 0xFFFFFB8E000006A7), 0x40000000400), 0xBuLL);
    v13 = v10 + ((799 * v18 - 79 * v10 + 2048) >> 12);
  }

  if (v12 + v14.i32[1] >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = v12 + v14.i32[1];
  }

  if (v12 + v14.i32[1] >= a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = a3;
  }

  v22 = v12 - v14.i32[1];
  if (v22 >= a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = v22;
  }

  if (v22 < a3)
  {
    v23 = a3;
  }

  if (v14.i32[0] + v13 >= a4)
  {
    v24 = a4;
  }

  else
  {
    v24 = v14.i32[0] + v13;
  }

  if (v14.i32[0] + v13 >= a3)
  {
    v25 = v24;
  }

  else
  {
    v25 = a3;
  }

  v26 = v13 - v14.i32[0];
  if (v26 >= a4)
  {
    v27 = a4;
  }

  else
  {
    v27 = v26;
  }

  if (v26 >= a3)
  {
    v28 = v27;
  }

  else
  {
    v28 = a3;
  }

  v29 = 181 * (v28 - v23) + 128;
  v30 = 181 * (v23 + v28) + 128;
  v31 = *a1;
  v32 = a1[2 * a2];
  result = 16 * a2;
  v34 = a1[4 * a2];
  v35 = a1[6 * a2];
  v36 = *a1 + v25;
  if (v36 >= a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = *a1 + v25;
  }

  if (v36 >= a3)
  {
    v38 = v37;
  }

  else
  {
    v38 = a3;
  }

  *a1 = v38;
  v39 = v32 + (v30 >> 8);
  if (v39 >= a4)
  {
    v40 = a4;
  }

  else
  {
    v40 = v32 + (v30 >> 8);
  }

  if (v39 >= a3)
  {
    v41 = v40;
  }

  else
  {
    v41 = a3;
  }

  a1[a2] = v41;
  v42 = v34 + (v29 >> 8);
  if (v42 >= a4)
  {
    v43 = a4;
  }

  else
  {
    v43 = v34 + (v29 >> 8);
  }

  if (v42 >= a3)
  {
    v44 = v43;
  }

  else
  {
    v44 = a3;
  }

  a1[2 * a2] = v44;
  if (v35 + v21 >= a4)
  {
    v45 = a4;
  }

  else
  {
    v45 = v35 + v21;
  }

  if (v35 + v21 >= a3)
  {
    v46 = v45;
  }

  else
  {
    v46 = a3;
  }

  a1[3 * a2] = v46;
  v47 = v35 - v21;
  if (v35 - v21 >= a4)
  {
    v48 = a4;
  }

  else
  {
    v48 = v35 - v21;
  }

  if (v47 >= a3)
  {
    v49 = v48;
  }

  else
  {
    v49 = a3;
  }

  a1[4 * a2] = v49;
  v50 = v34 - (v29 >> 8);
  if (v50 >= a4)
  {
    v51 = a4;
  }

  else
  {
    v51 = v34 - (v29 >> 8);
  }

  if (v50 >= a3)
  {
    v52 = v51;
  }

  else
  {
    v52 = a3;
  }

  a1[v15] = v52;
  v53 = v32 - (v30 >> 8);
  if (v53 >= a4)
  {
    v54 = a4;
  }

  else
  {
    v54 = v32 - (v30 >> 8);
  }

  if (v53 >= a3)
  {
    v55 = v54;
  }

  else
  {
    v55 = a3;
  }

  a1[6 * a2] = v55;
  if (v31 - v25 >= a4)
  {
    v56 = a4;
  }

  else
  {
    v56 = v31 - v25;
  }

  if (v31 - v25 >= a3)
  {
    v57 = v56;
  }

  else
  {
    v57 = a3;
  }

  a1[v16] = v57;
  return result;
}

uint64_t sub_277594CDC(int *a1, uint64_t a2, int a3, int a4, int a5)
{
  sub_277594A6C(a1, 2 * a2, a3, a4, a5);
  v12 = a1[a2];
  v13 = a1[3 * a2];
  v14 = a1[5 * a2];
  v15 = a1[7 * a2];
  if (a5)
  {
    v16 = vshr_n_s32(vmla_s32(0x80000000800, vdup_n_s32(v15), 0xFFFFF5DA00000C5ELL), 0xCuLL);
    v17 = vshr_n_s32(vmla_s32(0x80000000800, vdup_n_s32(v13), 0xFFFFFB5B00000F50), 0xCuLL);
    v18 = vshr_n_s32(vmla_s32(0x80000000800, vdup_n_s32(v14), 0x78B00000E1CLL), 0xCuLL);
    v19 = vshr_n_s32(vmla_s32(0x80000000800, vdup_n_s32(v12), 0x19100000FECLL), 0xCuLL);
    v105 = 9 * a2;
    v106 = 11 * a2;
    v107 = 13 * a2;
    v108 = 15 * a2;
  }

  else
  {
    v105 = 9 * a2;
    v106 = 11 * a2;
    v20 = &a1[9 * a2];
    v107 = 13 * a2;
    v108 = 15 * a2;
    v10.i32[0] = a1[a2];
    v11.i32[0] = a1[5 * a2];
    v21 = vld1_dup_f32(v20);
    v16 = vshr_n_s32(vadd_s32(vmla_s32(vmul_s32(v21, 0x62F00000513), vdup_n_s32(v15), 0xFFFFFAED0000062FLL), 0x40000000400), 0xBuLL);
    v22 = vadd_s32(vmla_s32(vmul_s32(vdup_n_s32(a1[15 * a2]), 0x1400000191), vdup_n_s32(v12), 0x191FFFFFFECLL), 0x80000000800);
    v23 = vadd_s32(vmla_s32(vmul_s32(vdup_n_s32(a1[11 * a2]), 0x1E40000078BLL), vdup_n_s32(v14), 0x78BFFFFFE1CLL), 0x80000000800);
    v24.i32[0] = v11.i32[0];
    v24.i32[1] = a1[11 * a2];
    v17 = vsra_n_s32(__PAIR64__(a1[13 * a2], v13), vadd_s32(vmla_s32(vmul_s32(vdup_n_s32(a1[13 * a2]), 0xFFFFFF50000004A5), vdup_n_s32(v13), 0xFFFFFB5BFFFFFF50), 0x80000000800), 0xCuLL);
    v18.i32[0] = vsra_n_s32(v11, v23, 0xCuLL).u32[0];
    v18.i32[1] = vsub_s32(vshr_n_s32(v23, 0xCuLL), v24).i32[1];
    v25.i32[0] = v10.i32[0];
    v25.i32[1] = a1[15 * a2];
    v19.i32[0] = vsra_n_s32(v10, v22, 0xCuLL).u32[0];
    v19.i32[1] = vsub_s32(vshr_n_s32(v22, 0xCuLL), v25).i32[1];
  }

  v26 = vadd_s32(v17, v18);
  v27 = vdup_n_s32(a3);
  v28 = vdup_n_s32(a4);
  v29 = vbsl_s8(vcgt_s32(v27, v26), v27, vmin_s32(v26, v28));
  v30 = vadd_s32(v19, v16);
  v31 = vbsl_s8(vcgt_s32(v27, v30), v27, vmin_s32(v30, v28));
  v32 = vadd_s32(v31, v29);
  if (v32.i32[1] >= a4)
  {
    v33 = a4;
  }

  else
  {
    v33 = v32.i32[1];
  }

  if (v32.i32[1] >= a3)
  {
    v34 = v33;
  }

  else
  {
    v34 = a3;
  }

  v35 = vsub_s32(v31, v29);
  v36 = vbsl_s8(vcgt_s32(v27, v35), v27, vmin_s32(v35, v28));
  v37 = vrev64_s32(vsub_s32(v17, v18));
  v38 = vbsl_s8(vcgt_s32(v27, v37), v27, vmin_s32(v37, v28));
  v39 = vsub_s32(v19, v16);
  v40 = vbsl_s8(vcgt_s32(v27, v39), v27, vmin_s32(v39, v28));
  v41 = vadd_s32(vmla_lane_s32(vmul_lane_s32(0x1380000061FLL, v40, 1), 0x61FFFFFFEC8, v40, 0), 0x80000000800);
  v42 = vsub_s32(vshr_n_s32(v41, 0xCuLL), v40);
  v43.i32[0] = vsra_n_s32(v40, v41, 0xCuLL).u32[0];
  v43.i32[1] = v42.i32[1];
  v44 = vsub_s32(vshr_n_s32(vadd_s32(vmla_lane_s32(vmul_n_s32(0xFFFFF9E100000138, v38.i32[0]), 0x1380000061FLL, v38, 1), 0x80000000800), 0xCuLL), v38);
  v45 = vadd_s32(v43, v44);
  if (v45.i32[1] >= a4)
  {
    v46 = a4;
  }

  else
  {
    v46 = v45.i32[1];
  }

  if (v45.i32[1] >= a3)
  {
    v47 = v46;
  }

  else
  {
    v47 = a3;
  }

  v48 = vsub_s32(v43, v44);
  v49 = vbsl_s8(vcgt_s32(v27, v48), v27, vmin_s32(v48, v28));
  if (v45.i32[0] >= a4)
  {
    LODWORD(result) = a4;
  }

  else
  {
    LODWORD(result) = v45.i32[0];
  }

  if (v45.i32[0] >= a3)
  {
    result = result;
  }

  else
  {
    result = a3;
  }

  if (v32.i32[0] >= a4)
  {
    v51 = a4;
  }

  else
  {
    v51 = v32.i32[0];
  }

  if (v32.i32[0] >= a3)
  {
    v52 = v51;
  }

  else
  {
    v52 = a3;
  }

  v53 = 181 * (v49.i32[0] - v49.i32[1]) + 128;
  v54 = 181 * (v49.i32[0] + v49.i32[1]) + 128;
  v55 = 181 * (v36.i32[0] - v36.i32[1]) + 128;
  v56 = 181 * (v36.i32[1] + v36.i32[0]) + 128;
  v57 = a1[2 * a2];
  v58 = a1[4 * a2];
  v59 = *a1;
  v60 = a1[6 * a2];
  v61 = v52 + *a1;
  if (v61 >= a4)
  {
    v62 = a4;
  }

  else
  {
    v62 = v52 + *a1;
  }

  if (v61 >= a3)
  {
    v63 = v62;
  }

  else
  {
    v63 = a3;
  }

  v64 = a1[8 * a2];
  v65 = a1[10 * a2];
  v66 = a1[12 * a2];
  v67 = a1[14 * a2];
  *a1 = v63;
  if (result + v57 >= a4)
  {
    v68 = a4;
  }

  else
  {
    v68 = result + v57;
  }

  if (result + v57 < a3)
  {
    v68 = a3;
  }

  a1[a2] = v68;
  v69 = v58 + (v54 >> 8);
  if (v69 >= a4)
  {
    v70 = a4;
  }

  else
  {
    v70 = v58 + (v54 >> 8);
  }

  if (v69 >= a3)
  {
    v71 = v70;
  }

  else
  {
    v71 = a3;
  }

  a1[2 * a2] = v71;
  v72 = v60 + (v56 >> 8);
  if (v72 >= a4)
  {
    v73 = a4;
  }

  else
  {
    v73 = v60 + (v56 >> 8);
  }

  if (v72 >= a3)
  {
    v74 = v73;
  }

  else
  {
    v74 = a3;
  }

  a1[3 * a2] = v74;
  v75 = v64 + (v55 >> 8);
  if (v75 >= a4)
  {
    v76 = a4;
  }

  else
  {
    v76 = v64 + (v55 >> 8);
  }

  if (v75 >= a3)
  {
    v77 = v76;
  }

  else
  {
    v77 = a3;
  }

  a1[4 * a2] = v77;
  v78 = v65 + (v53 >> 8);
  if (v78 >= a4)
  {
    v79 = a4;
  }

  else
  {
    v79 = v65 + (v53 >> 8);
  }

  if (v78 >= a3)
  {
    v80 = v79;
  }

  else
  {
    v80 = a3;
  }

  a1[5 * a2] = v80;
  if (v47 + v66 >= a4)
  {
    v81 = a4;
  }

  else
  {
    v81 = v47 + v66;
  }

  if (v47 + v66 >= a3)
  {
    v82 = v81;
  }

  else
  {
    v82 = a3;
  }

  a1[6 * a2] = v82;
  if (v67 + v34 >= a4)
  {
    v83 = a4;
  }

  else
  {
    v83 = v67 + v34;
  }

  if (v67 + v34 >= a3)
  {
    v84 = v83;
  }

  else
  {
    v84 = a3;
  }

  a1[7 * a2] = v84;
  if (v67 - v34 >= a4)
  {
    v85 = a4;
  }

  else
  {
    v85 = v67 - v34;
  }

  if (v67 - v34 >= a3)
  {
    v86 = v85;
  }

  else
  {
    v86 = a3;
  }

  a1[8 * a2] = v86;
  if (v66 - v47 >= a4)
  {
    v87 = a4;
  }

  else
  {
    v87 = v66 - v47;
  }

  if (v66 - v47 >= a3)
  {
    v88 = v87;
  }

  else
  {
    v88 = a3;
  }

  a1[v105] = v88;
  v89 = v65 - (v53 >> 8);
  if (v89 >= a4)
  {
    v90 = a4;
  }

  else
  {
    v90 = v65 - (v53 >> 8);
  }

  if (v89 >= a3)
  {
    v91 = v90;
  }

  else
  {
    v91 = a3;
  }

  a1[10 * a2] = v91;
  v92 = v64 - (v55 >> 8);
  if (v92 >= a4)
  {
    v93 = a4;
  }

  else
  {
    v93 = v64 - (v55 >> 8);
  }

  if (v92 >= a3)
  {
    v94 = v93;
  }

  else
  {
    v94 = a3;
  }

  a1[v106] = v94;
  v95 = v60 - (v56 >> 8);
  if (v95 >= a4)
  {
    v96 = a4;
  }

  else
  {
    v96 = v60 - (v56 >> 8);
  }

  if (v95 >= a3)
  {
    v97 = v96;
  }

  else
  {
    v97 = a3;
  }

  a1[12 * a2] = v97;
  v98 = v58 - (v54 >> 8);
  if (v98 >= a4)
  {
    v99 = a4;
  }

  else
  {
    v99 = v58 - (v54 >> 8);
  }

  if (v98 >= a3)
  {
    v100 = v99;
  }

  else
  {
    v100 = a3;
  }

  a1[v107] = v100;
  if (v57 - result >= a4)
  {
    v101 = a4;
  }

  else
  {
    v101 = v57 - result;
  }

  if (v57 - result >= a3)
  {
    v102 = v101;
  }

  else
  {
    v102 = a3;
  }

  a1[14 * a2] = v102;
  if (v59 - v52 >= a4)
  {
    v103 = a4;
  }

  else
  {
    v103 = v59 - v52;
  }

  if (v59 - v52 >= a3)
  {
    v104 = v103;
  }

  else
  {
    v104 = a3;
  }

  a1[v108] = v104;
  return result;
}