uint64_t ProResFrameReceiver::ChangeBackgroundPolicy(uint64_t this, int a2)
{
  if (*(this + 64) != a2)
  {
    *(this + 64) = a2;
  }

  return this;
}

uint64_t stitchCallback(unsigned __int8 *a1, size_t offsetIntoDestination, size_t dataLength, CMBlockBufferRef *a4)
{
  v4 = CMBlockBufferReplaceDataBytes(a1, *a4, offsetIntoDestination, dataLength);
  if (v4 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    stitchCallback();
  }

  return v4;
}

uint64_t ProResFrameReceiver::EmitPendingFrames(ProResFrameReceiver *this)
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = *(this + 48);
  v2 = *(this + 25) + 32 * (v1 % *(this + 33));
  v3 = 1;
  if (*v2 == 1)
  {
    v5 = (this + 312);
    v6 = MEMORY[0x29EDCA988];
    while (*(v2 + 4) == v1)
    {
      v7 = *(v2 + 16);
      v8 = *(v2 + 8);
      if (v7 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = *v5;
        v10 = *(v8 + 56);
        *buf = 67109890;
        v22 = v9;
        v23 = 2080;
        v24 = "EmitPendingFrames";
        v25 = 1024;
        v26 = v7;
        v27 = 1024;
        v28 = v10;
        _os_log_impl(&dword_2952FC000, v6, OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Emit to client status=0x%x for subFrameId=%d \n", buf, 0x1Eu);
      }

      v11 = *(v2 + 24);
      if (*(v8 + 4) > 3)
      {
        ProResFrameReceiver::EmitEncodedFrame(this, v8, v11, v1);
        v15 = *(v2 + 24);
        if (v15)
        {
          CFRelease(v15);
        }

        v16 = *(v8 + 72);
        if (v16)
        {
          CVPixelBufferRelease(v16);
        }

        v17 = *(v8 + 80);
        if (v17)
        {
          CFRelease(v17);
        }
      }

      else
      {
        ProResFrameReceiver::EmitDecodedFrame(this, v8, v11, v1, v7, 0);
        v12 = *(v2 + 24);
        if (v12)
        {
          CVPixelBufferRelease(v12);
        }

        v13 = *(v8 + 40);
        if (v13)
        {
          CFRelease(v13);
        }

        v14 = *(this + 5);
        VTDecoderSessionCleanUpAfterDecode();
      }

      ++*(this + 48);
      pthread_mutex_lock(*(this + 13));
      bzero(v8, 0x320uLL);
      **(this + 12) = 1;
      pthread_cond_signal(*(this + 14));
      pthread_mutex_unlock(*(this + 13));
      atomic_fetch_add(*(this + 9), 0xFFFFFFFF);
      pthread_mutex_lock(*(this + 10));
      if (!atomic_load(*(this + 9)))
      {
        pthread_cond_signal(*(this + 11));
      }

      pthread_mutex_unlock(*(this + 10));
      *v2 = 0u;
      *(v2 + 16) = 0u;
      v1 = *(this + 48);
      v2 = *(this + 25) + 32 * (v1 % *(this + 33));
      if ((*v2 & 1) == 0)
      {
        v3 = 1;
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::EmitPendingFrames(v5);
    }

    v3 = 0;
  }

LABEL_26:
  v19 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t ProResFrameReceiver::EmitDecodedFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6)
  {
    v10 = *(a1 + 316);
    v11 = *(a1 + 312);
    v12 = *(a1 + 56);
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);
    kdebug_trace();
  }

  if (*(a1 + 40) == 1)
  {
    v23 = *(a1 + 144);
    if (v23)
    {
      v24 = *(a1 + 160);
      if (v24)
      {
        v25 = *(a2 + 24);
        v26 = *MEMORY[0x29EDB9398];
        v27 = *(MEMORY[0x29EDB9398] + 16);
        v24(v23, *(a2 + 16), a5);
      }
    }
  }

  else
  {
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    VTDecoderSessionEmitDecodedFrame();
  }

  if (a6)
  {
    v17 = *(a1 + 316);
    v18 = *(a1 + 312);
    v19 = *(a1 + 56);
    v20 = *(v19 + 32);
    v21 = *(v19 + 40);
    kdebug_trace();
  }

  return 1;
}

uint64_t ProResFrameReceiver::EmitEncodedFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *(a1 + 312);
  v7 = *(a1 + 56);
  v8 = *(v7 + 32);
  v9 = a4;
  v10 = *(a1 + 316) | 0x1300000000;
  v11 = *(v7 + 40) | a4;
  kdebug_trace();
  if (*(a1 + 48) == 2)
  {
    if (*(a1 + 168))
    {
      v20 = *(a1 + 184);
      if (v20)
      {
        v21 = *(a2 + 16);
        v22 = *(a2 + 24);
        v20();
      }
    }
  }

  else
  {
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    VTEncoderSessionEmitEncodedFrame();
  }

  v14 = *(a1 + 312);
  v15 = *(a1 + 56);
  v16 = *(v15 + 32);
  v17 = *(a1 + 316) | 0x1400000000;
  v18 = *(v15 + 40) | v9;

  return kdebug_trace();
}

uint64_t alphaScalingTask(int *a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[4];
  v7 = *(a1 + 3);
  v6 = *(a1 + 4);
  v8 = a1[2] & 7;
  v9 = *(a1 + 5);
  v10 = *a1 + 32;
  v11 = a1[3] & 0xFFFFFFFE;
  do
  {
    if (v4 >= 0x20)
    {
      v12 = v10;
      v13 = 32;
      do
      {
        v14 = vrsraq_n_u16(v12[-1], v12[-1], 8uLL);
        v15 = vrsraq_n_u16(*v12, *v12, 8uLL);
        v16 = vrsraq_n_u16(v12[1], v12[1], 8uLL);
        v12[-2] = vrsraq_n_u16(v12[-2], v12[-2], 8uLL);
        v12[-1] = v14;
        *v12 = v15;
        v12[1] = v16;
        v12 += 4;
        v13 += 32;
      }

      while (v13 <= v4);
    }

    if ((v4 & 0x10) != 0)
    {
      v17 = (v3 + 2 * (v4 & 0xFFFFFFE0));
      v18 = vrsraq_n_u16(v17[1], v17[1], 8uLL);
      *v17 = vrsraq_n_u16(*v17, *v17, 8uLL);
      v17[1] = v18;
      if ((v4 & 8) == 0)
      {
LABEL_7:
        if (!v8)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    *(v3 + 2 * (v4 & 0xFFFFFFF0)) = vrsraq_n_u16(*(v3 + 2 * (v4 & 0xFFFFFFF0)), *(v3 + 2 * (v4 & 0xFFFFFFF0)), 8uLL);
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = v4 & 0xFFFFFFF8;
    v20 = 2 * (v4 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      *(v3 + v20) += HIBYTE(*(v3 + v20));
      v20 += 2;
      ++v19;
    }

    while (v4 > v19);
LABEL_13:
    v3 += v11;
    ++v2;
    v10 += v11;
  }

  while (v2 != 16);
  pthread_mutex_lock(v9);
  v21 = *v7 + 1;
  *v7 = v21;
  if (v21 == v5)
  {
    pthread_cond_signal(v6);
  }

  pthread_mutex_unlock(v9);
  MEMORY[0x29C24C730](a1, 0x1030C4096A05FA2);
  return 0;
}

double getDoubleEncodeFrameRatio(unsigned int a1, unsigned int a2)
{
  if (!a2)
  {
    return 0.0;
  }

  *&result = a1 / a2;
  return result;
}

uint64_t parseHWErrorCode(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, BOOL a5, int a6)
{
  if (a6)
  {
    return 4294954385;
  }

  else
  {
    return 4294954384;
  }
}

uint64_t ProResFrameReceiver::SWSwapBRRaw(ProResFrameReceiver *this, CVPixelBufferRef pixelBuffer, int a3)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a3 == 1651520304)
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    convert32BGRAtoRGB(BaseAddress, Width, Height, BytesPerRow);
  }

  else if (a3 == 1651521076)
  {
    v6 = CVPixelBufferGetWidth(pixelBuffer);
    v7 = CVPixelBufferGetHeight(pixelBuffer);
    v8 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    swizzle64BGRAtoRGBA(BaseAddress, v6, v7, v8);
  }

  return CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
}

uint64_t ProResFrameReceiver::PerformAlphaUpscaling(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  extraRowsOnTop = 0;
  extraColumnsOnLeft = 0;
  if (*(a3 + 33) == 2)
  {
    if (*(a3 + 24) == 2)
    {
      v3 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResFrameReceiver::PerformAlphaUpscaling(a1);
      }
    }

    else
    {
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      CVPixelBufferGetWidthOfPlane(pixelBuffer, 2uLL);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 2uLL);
      CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 2uLL);
      CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 2uLL);
      CVPixelBufferGetExtendedPixels(pixelBuffer, &extraColumnsOnLeft, 0, &extraRowsOnTop, 0);
      if (!*(a1 + 136))
      {
        operator new();
      }

      pthread_cond_init(&v19, 0);
      pthread_mutex_init(&v18, 0);
      if ((HeightOfPlane + 15) >= 0x10)
      {
        operator new();
      }

      pthread_mutex_lock(&v18);
      gettimeofday(&v10, 0);
      v11.tv_sec = v10.tv_sec + 3;
      v11.tv_nsec = 1000 * v10.tv_usec;
      if ((HeightOfPlane + 15) >> 4)
      {
          ;
        }

        pthread_mutex_unlock(&v18);
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v6 = *(a1 + 312);
          *buf = 67109378;
          v15 = v6;
          v16 = 2080;
          v17 = "PerformAlphaUpscaling";
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: threadpool couldn't complete AlphaScalingTask", buf, 0x12u);
        }
      }

      else
      {
        pthread_mutex_unlock(&v18);
      }

      pthread_cond_destroy(&v19);
      pthread_mutex_destroy(&v18);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      v3 = 0;
    }
  }

  else
  {
    v3 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::PerformAlphaUpscaling(a1);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t ProResFrameReceiver::QueueOutOfOrderFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 200) + 32 * (a4 % *(a1 + 132));
  if (*v7)
  {
    v9 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 312);
      v13[0] = 67109634;
      v13[1] = v10;
      v14 = 2080;
      v15 = "QueueOutOfOrderFrame";
      v16 = 1024;
      v17 = a4;
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Spot isn't empty for frame %d, do you need to increase size?", v13, 0x18u);
    }
  }

  else
  {
    v9 = 0;
    *(v7 + 8) = a2;
    *(v7 + 16) = a6;
    *(v7 + 4) = a4;
    *v7 = 1;
    *(v7 + 24) = a3;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void ProResFrameReceiver::DoubleEncodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v4 = *(a2 + 216);
  v6 = 134610945;
  v5 = a2 + 216;
  *a4 = (v4 & 1) == 0;
  *(a2 + 706) = 0;
  operator new();
}

uint64_t ProResFrameReceiver::P1ParseFrame(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a1 + 316);
  v11 = *(a1 + 312);
  v12 = **a2;
  kdebug_trace();
  v13 = *(a1 + 264);
  if ((v13 - 2) < 2)
  {
    v20 = 0;
    v21 = 0;
    getEncodeStatsPtrs((a3 + 344), a4 + 2, &v21, &v20, a4, a4 + 1);
    ProResHWAnalyzer::parseHWStats(*(a1 + 232), *(a1 + 216), v21, v20, *a4, *(a1 + 284), *(a3 + 284), *(a3 + 288), *(a3 + 240), *(a3 + 564));
LABEL_5:
    v15 = 0;
    goto LABEL_8;
  }

  if (v13 == 1)
  {
    v14 = *(a2 + 10);
    ProResHWAnalyzer::parseProResFrame(*(a1 + 232), a5, *(a1 + 216), 1);
    goto LABEL_5;
  }

  v15 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::P1ParseFrame((a1 + 312));
  }

LABEL_8:
  v16 = *(a1 + 316);
  v17 = *(a1 + 312);
  v18 = **a2;
  kdebug_trace();
  return v15;
}

uint64_t ProResFrameReceiver::P1AnalyzeFrame(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, __int16 *a6)
{
  v55[0] = a5;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  if (a5 > 0xF)
  {
    v16 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = ProResHWAnalyzer::analyzeProResFrame(*(a1 + 232), *(a1 + 216), &v46, v55);
      if (*(a2 + 8) == 1)
      {
        v13 = *(a2 + 11);
        if (v13 <= *(a2 + 10))
        {
          v13 = *(a2 + 10);
        }

        if (v55[0] <= v13)
        {
          v14 = 127 - 127 * **(a1 + 216) / v12;
          if (v14 >= 0x28)
          {
            LOWORD(v14) = 40;
          }

          *a6 = *a6 & 0x80FF | (v14 << 8);
        }
      }

      if (v12 == v11 || v12 < *(*a2 + 476))
      {
        break;
      }

      ++v55[0];
      v11 = v12;
    }

    while (v55[0] < 0x10u);
    v16 = ((v51 - *(&v50 + 1)) >> 2) + ((*(&v46 + 1) - v46) >> 2) + ((v48 - *(&v47 + 1)) >> 2) + ((*(&v52 + 1) - v52) >> 2);
  }

  *(a1 + 280) = v16;
  if (*(a3 + 8))
  {
    v17 = *(a1 + 292);
    if (*(a3 + 176) != (v16 != 0))
    {
      ++v17;
    }

    *(a1 + 292) = v17;
  }

  if (v16 || *(a3 + 176) == 1)
  {
    v42 = a4;
    v18 = 0;
    v19 = 0;
    v20 = v43;
    do
    {
      v21 = v18;
      v22 = &v46 + 9 * v19 + 1;
      v23 = 3;
      do
      {
        *v20 = 0;
        v20[1] = 0;
        v20[2] = 0;
        std::vector<std::pair<unsigned short,unsigned short>>::__init_with_size[abi:ne200100]<std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>*>(v20, *(v22 - 1), *v22, (*v22 - *(v22 - 1)) >> 2);
        v22 += 3;
        v20 += 3;
        --v23;
      }

      while (v23);
      v18 = 1;
      v20 = &v44;
      v19 = 1;
    }

    while ((v21 & 1) == 0);
    ProResFrameReceiver::P1FixSlicesQp(a1, a2, a3, v42, v43, v55[0]);
    v24 = &v45;
    v25 = -144;
    do
    {
      v26 = *(v24 - 1);
      if (v26)
      {
        *v24 = v26;
        operator delete(v26);
      }

      v24 -= 3;
      v25 += 24;
    }

    while (v25);
    v27 = 0;
  }

  else if ((*(a1 + 264) - 1) > 2)
  {
    v27 = 0;
    v35 = *a2;
    v36 = vshr_n_u32(vadd_s32(*(*a2 + 68), 0xF0000000FLL), 4uLL);
    v37 = 8 * *(*(a1 + 216) + 40) * v36.i32[1] + 8;
    v38 = *(*a2 + 472) - v37;
    if (v38 <= 1)
    {
      v38 = 1;
    }

    v39 = 8 * (v38 / (v36.i32[1] * v36.i32[0]));
    v40 = v35[119] - v37;
    if (v39 >= 0x10000)
    {
      v39 = 0x3FFF;
    }

    if (v40 <= 1)
    {
      v40 = 1;
    }

    v41 = 8 * (v40 / (v36.i32[1] * v36.i32[0]));
    if (v41 >= 0x10000)
    {
      v41 = 0x3FFF;
    }

    v35[51] = v41;
    v35[52] = v39;
  }

  else
  {
    v31 = *a6;
    *a6 &= ~2u;
    if (*(a2 + 8) == 1)
    {
      *a6 = v31 & 0xFFFC | 1;
      pthread_mutex_lock(*(a1 + 248));
      **(a1 + 240) = *a6;
      pthread_cond_signal(*(a1 + 256));
      pthread_mutex_unlock(*(a1 + 248));
    }

    v32 = *(a1 + 316);
    v33 = *(a1 + 312);
    v34 = **a2;
    kdebug_trace();
    v27 = 1;
  }

  for (i = 0; i != -144; i -= 24)
  {
    v29 = *(&v53 + i + 8);
    if (v29)
    {
      *&v55[i - 9] = v29;
      operator delete(v29);
    }
  }

  return v27;
}

void sub_295315D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 0;
  while (1)
  {
    v31 = *(&a29 + v30 + 120);
    if (v31)
    {
      *(&a29 + v30 + 128) = v31;
      operator delete(v31);
    }

    v30 -= 24;
    if (v30 == -144)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t ProResFrameReceiver::P2Encode(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = **a2 + 1;
  *v5 = v6;
  *(v5 + 4) = v6;
  v7 = *(a1 + 264);
  if (v7 == 3)
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_7;
  }

  v5[48] = *(a3 + 28) >> 2;
  v5[50] *= 3;
  if (v7 == 1)
  {
    v8 = 0;
    v9 = 0;
LABEL_7:
    v5[12] = v8;
    *(*a2 + 11) = v9;
    atomic_fetch_add(*(a1 + 72), 1u);
    v10 = *(a1 + 316);
    v11 = *(a1 + 312);
    v12 = **a2;
    kdebug_trace();
    v13 = IOConnectCallStructMethod(*(a1 + 32), 3u, *a2, 0x200uLL, 0, 0);
    v14 = *(a1 + 316);
    v15 = *(a1 + 312);
    v16 = **a2;
    kdebug_trace();
    ++*(a1 + 288);
    if (!v13)
    {
      return 0;
    }

    v17 = 3758097084;
    atomic_fetch_add(*(a1 + 72), 0xFFFFFFFF);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::P2Encode((a1 + 312));
    }

    return v17;
  }

  if (v7 == 2)
  {
    v9 = 0;
    v8 = 1;
    goto LABEL_7;
  }

  v17 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::P2Encode(a1);
  }

  return v17;
}

uint64_t ProResFrameReceiver::P2PrepareFrame(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  if (a2[9] == 2 || !*(a1 + 280))
  {
    v18 = 0;
    v19 = (a5 + (*(a3 + 28) >> 2));
    *a6 = (*v19 << 24) | (v19[1] << 16) | (v19[2] << 8) | v19[3];
  }

  else
  {
    v26 = 0;
    v12 = *(*a2 + 476);
    v13 = *(a1 + 316);
    v14 = *(a1 + 312);
    v15 = **a2;
    kdebug_trace();
    v16 = *(a1 + 264);
    if (v16 == 2)
    {
      v24 = 0;
      v25 = 0;
      getEncodeStatsPtrs((a3 + 344), a4 + 2, &v25, &v24, a4, a4 + 1);
      ProResHWAnalyzer::parseHWStats(*(a1 + 232), *(a1 + 224), v25, v24, *a4, *(a1 + 284), *(a3 + 284), *(a3 + 288), *(a3 + 240), *(a3 + 564));
      goto LABEL_8;
    }

    if (v16 == 1)
    {
      v17 = a2[10];
      ProResHWAnalyzer::parseProResFrame(*(a1 + 232), a5 + (*(a3 + 28) >> 2), *(a1 + 224), 0);
LABEL_8:
      *a6 = ProResHWAnalyzer::getSliceToFix(*(a1 + 232), v12 + 156, *(a1 + 216), *(a1 + 224), *(a1 + 272), &v26);
      v20 = *(a1 + 316);
      v21 = *(a1 + 312);
      v22 = **a2;
      kdebug_trace();
      return 0;
    }

    v18 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::P2PrepareFrame((a1 + 312));
    }
  }

  return v18;
}

uint64_t ProResFrameReceiver::CopyBitstreamToBlockBuffer(uint64_t a1, uint64_t a2, uint64_t a3, char *sourceBytes, uint64_t a5, int a6)
{
  v42 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 264);
  if ((v10 - 1) >= 2)
  {
    if (v10 == 3)
    {
      v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, *(a3 + 40));
      if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResFrameReceiver::CopyBitstreamToBlockBuffer(a1);
      }
    }

    else
    {
      v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, *(a3 + 40));
      if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResFrameReceiver::CopyBitstreamToBlockBuffer(a1);
      }

      v16 = *(a3 + 8);
      if (v16)
      {
        v17 = CMBlockBufferReplaceDataBytes(*(a2 + 184), *a3, *(a3 + 40), v16);
        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            v27 = *(a1 + 312);
            v28 = *(a3 + 40);
            v29 = *(a3 + 8);
            v30 = 67110402;
            v31 = v27;
            v32 = 1024;
            v33 = 1475;
            v34 = 2080;
            v35 = "CopyBitstreamToBlockBuffer";
            v36 = 1024;
            v37 = v18;
            v38 = 2048;
            v39 = v28;
            v40 = 2048;
            v41 = v29;
            _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR: AppleProResHW (0x%x): %d: %s(): failed Non DoubleEnc metadata extension CMBlockBufferReplaceDataBytes (0x%x) offset=%lu length=%zu\n", &v30, 0x32u);
          }
        }

        *sourceBytes = BYTE3(*(a3 + 16));
        sourceBytes[1] = BYTE2(*(a3 + 16));
        sourceBytes[2] = BYTE1(*(a3 + 16));
        sourceBytes[3] = *(a3 + 16);
        v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, 4uLL);
        if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          ProResFrameReceiver::CopyBitstreamToBlockBuffer(a1);
        }
      }
    }
  }

  else if (a6)
  {
    v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, *(a3 + 40));
    if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::CopyBitstreamToBlockBuffer(a1);
    }
  }

  else if (*(a1 + 280))
  {
    v12 = *(a1 + 316);
    v13 = *(a1 + 312);
    kdebug_trace();
    v11 = ProResHWAnalyzer::stitchProResFrame(*(a1 + 232), *(a1 + 216), sourceBytes, *(a1 + 224), &sourceBytes[*(a2 + 28) >> 2], (a3 + 40), stitchCallback, a3);
    if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::CopyBitstreamToBlockBuffer((a1 + 312));
    }

    v14 = *(a1 + 316);
    v15 = *(a1 + 312);
    kdebug_trace();
  }

  else
  {
    v11 = CMBlockBufferReplaceDataBytes(&sourceBytes[*(a2 + 28) >> 2], *a3, 0, *(a3 + 40));
    if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::CopyBitstreamToBlockBuffer(a1);
    }
  }

  v19 = *(a3 + 32);
  if (v19)
  {
    v20 = CMBlockBufferFillDataBytes(0, *a3, *(a3 + 16), v19);
    if (v20)
    {
      v21 = v20;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 312);
        v25 = *(a3 + 16);
        v26 = *(a3 + 32);
        v30 = 67110402;
        v31 = v24;
        v32 = 1024;
        v33 = 1494;
        v34 = 2080;
        v35 = "CopyBitstreamToBlockBuffer";
        v36 = 1024;
        v37 = v21;
        v38 = 2048;
        v39 = v25;
        v40 = 2048;
        v41 = v26;
        _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR: AppleProResHW (0x%x): %d: %s(): failed adding stuffing value(0x0) CMBlockBufferFillDataBytes (0x%x) offset=%zu length=%zu\n", &v30, 0x32u);
      }
    }

    *sourceBytes = BYTE3(*(a3 + 24));
    sourceBytes[1] = BYTE2(*(a3 + 24));
    sourceBytes[2] = BYTE1(*(a3 + 24));
    sourceBytes[3] = *(a3 + 24);
    v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, 4uLL);
    if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::CopyBitstreamToBlockBuffer(a1);
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return v11;
}

void ProResFrameReceiver::P1FixSlicesQp(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, SliceList *this, int a6)
{
  SliceList::sort(this, *(a1 + 272), *(*(a1 + 232) + 28) == 1);
  v11 = *(a1 + 264);
  if (v11 == 3)
  {
    v16 = *(*a2 + 476);
    v17 = **(a1 + 216);
    memcpy(*(a4 + 8), *a4, *(a1 + 284));
    if (*(a1 + 284))
    {
      v18 = 0;
      v19 = v16 + 156;
      do
      {
        v20 = *(a1 + 272);
        v21 = *(v20 + 2 * v18);
        EstimatedSizeForSlice = ProResHWAnalyzer::getEstimatedSizeForSlice(*(a1 + 232), *(a4 + 16), *(v20 + 2 * v18), *(a3 + 412), a6);
        v23 = *(a1 + 216);
        *(*(v23 + 352) + 2 * v21) = EstimatedSizeForSlice;
        v24 = EstimatedSizeForSlice - *(*(v23 + 56) + 2 * v21);
        if (v24 >= 1)
        {
          v17 += v24;
          if (v17 > v19)
          {
            break;
          }

          *(*(a4 + 8) + v21) = a6;
        }

        ++v18;
      }

      while (v18 < *(a1 + 284));
    }
  }

  else
  {
    if (v11 == 2 && *(a1 + 284))
    {
      v12 = 0;
      do
      {
        v13 = *(a1 + 272);
        v14 = *(v13 + 2 * v12);
        *(*(*(a1 + 216) + 352) + 2 * v14) = ProResHWAnalyzer::getEstimatedSizeForSlice(*(a1 + 232), *(a4 + 16), *(v13 + 2 * v12++), *(a3 + 412), a6);
      }

      while (v12 < *(a1 + 284));
    }

    *(*a2 + 196) = a6;
  }

  v15 = *a2;
  *(v15 + 20) = 1;
  *(v15 + 10) = 0;
  *(v15 + 52) = 0;
  *(a3 + 176) = 0;
}

uint64_t ProResFrameReceiver::ProcessFrameDone(ProResFrameReceiver *this, uint64_t a2, unsigned int a3, int a4, int a5, UInt8 *a6, int a7)
{
  v101 = *MEMORY[0x29EDCA608];
  sbuf = 0;
  v9 = *(*(this + 7) + 16) + 800 * a3;
  v11 = *(v9 + 56);
  v10 = *(v9 + 60);
  v72 = v10;
  v73 = v11 + 1;
  v12 = (v9 + 8);
  if (a2 >> (*(this + 66) != 0) != *(v9 + 8))
  {
    v25 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::ProcessFrameDone(this);
    }

    goto LABEL_143;
  }

  if (*(v9 + 4) <= 3 && v11 > v10)
  {
    v25 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::ProcessFrameDone(this);
    }

    goto LABEL_143;
  }

  if (v73 == v10)
  {
    v18 = *(this + 79);
    v19 = *(this + 78);
    kdebug_trace();
  }

  if ((a4 & 0xFFFFFFFB) - 1 <= 1)
  {
    *(this + 296) = 1;
  }

  if (a4 == 6 && a5 == 55 && !a7)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v20 = *(this + 78);
      v21 = *v12;
      buf = 67109890;
      v89 = v20;
      v90 = 2080;
      *v91 = "ProcessFrameDone";
      *&v91[8] = 1024;
      *&v91[10] = v21;
      v92 = 1024;
      v93 = 55;
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Bad RecDecoderHW error, frame %d HWErrorCode=0x%x", &buf, 0x1Eu);
    }

    a4 = 2;
  }

  if (*(v9 + 4) <= 3)
  {
    v22 = *(v9 + 56);
    if (v22 + 1 != *(v9 + 60))
    {
      v29 = *a6;
      cf = *(v9 + 40);
      if (v22)
      {
        v29 += *(this + 77);
      }

      v30 = 0;
      v26 = 0;
      *(this + 77) = v29;
      if (a4 && a4 != 6)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v41 = *(this + 78);
          buf = 67109634;
          v89 = v41;
          v90 = 2080;
          *v91 = "ProcessFrameDone";
          *&v91[8] = 1024;
          *&v91[10] = v22;
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): DecoderHW error in subFrameId=%d\n", &buf, 0x18u);
        }

        v30 = 0;
        v26 = 0;
        v23 = 0;
        v25 = 0;
        *(this + 130) = 1;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      goto LABEL_128;
    }

    v23 = *(v9 + 48);
    cf = *(v9 + 40);
    if ((a4 == 6 || !a4) && *(this + 130) != 1)
    {
      if (!v23)
      {
        goto LABEL_113;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(v23);
      v35 = APR_ImgFmt_4CC(PixelFormatType);
      v36 = v35;
      v37 = *a6;
      v38 = (this + 308);
      if (*(v9 + 56))
      {
        v37 += *v38;
      }

      *v38 = v37;
      v39 = *(v9 + 32);
      if ((v39 & 0x100000000) != 0)
      {
        if (v37 == v39)
        {
          *(v9 + 24) |= 0x10000u;
        }
      }

      else
      {
        if (a7 && *(v35 + 33))
        {
          CVBufferSetAttachment(v23, *MEMORY[0x29EDB9538], *MEMORY[0x29EDB8F00], kCVAttachmentMode_ShouldPropagate);
        }

        v40 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, this + 308);
        CVBufferSetAttachment(v23, @"ProResHW_CheckValue", v40, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v40);
      }

      if (*(v9 + 65) == 1 && (PixelFormatType == 1651521076 || PixelFormatType == 1651520304))
      {
        ProResFrameReceiver::SWSwapBRRaw(v35, v23, PixelFormatType);
      }

      if (*(v9 + 64) == 1)
      {
        v25 = ProResFrameReceiver::PerformAlphaUpscaling(this, v23, v36);
        if (v25)
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            ProResFrameReceiver::ProcessFrameDone(this);
          }

          goto LABEL_119;
        }
      }

      else
      {
LABEL_113:
        v25 = 0;
      }

LABEL_114:
      if (*(this + 48) == a2 || *(this + 208) != 1)
      {
        if (v25 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v54 = *(this + 78);
          v55 = *(v9 + 56);
          buf = 67109890;
          v89 = v54;
          v90 = 2080;
          *v91 = "ProcessFrameDone";
          *&v91[8] = 1024;
          *&v91[10] = v25;
          v92 = 1024;
          v93 = v55;
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Emit to client status=0x%x for subFrameId=%d \n", &buf, 0x1Eu);
        }

        ProResFrameReceiver::EmitDecodedFrame(this, v9, v23, a2, v25, v73 == v72);
        ++*(this + 48);
        if (*(this + 208) == 1 && (ProResFrameReceiver::EmitPendingFrames(this) & 1) == 0)
        {
          v25 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            ProResFrameReceiver::ProcessFrameDone(this);
          }
        }

        v26 = 0;
        v30 = 1;
        goto LABEL_128;
      }

      v25 = ProResFrameReceiver::QueueOutOfOrderFrame(this, v9, v23, a2, 0, v25);
      if (!v25)
      {
        goto LABEL_143;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResFrameReceiver::ProcessFrameDone(this);
      }

LABEL_119:
      v30 = 0;
      v26 = 0;
LABEL_128:
      if (sbuf)
      {
        CFRelease(sbuf);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v23)
      {
        CVPixelBufferRelease(v23);
      }

      if (v30)
      {
        v56 = *(this + 5);
        VTDecoderSessionCleanUpAfterDecode();
      }

      if (*(v9 + 4) >= 4)
      {
        freeEncodeStatsBuffers(v9 + 344, 0);
      }

      pthread_mutex_lock(*(this + 13));
      bzero(v9, 0x320uLL);
      **(this + 12) = 1;
      pthread_cond_signal(*(this + 14));
      pthread_mutex_unlock(*(this + 13));
      if (v26)
      {
        CFRelease(v26);
      }

      atomic_fetch_add(*(this + 9), 0xFFFFFFFF);
      pthread_mutex_lock(*(this + 10));
      if (!atomic_load(*(this + 9)))
      {
        pthread_cond_signal(*(this + 11));
      }

      pthread_mutex_unlock(*(this + 10));
      goto LABEL_143;
    }

    if (a4 == 4)
    {
      v24 = -536870173;
    }

    else
    {
      v24 = -12911;
    }

    if (a4 == 3)
    {
      v25 = 3758097110;
    }

    else
    {
      v25 = v24;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v65 = *(this + 78);
      buf = 67110402;
      v89 = v65;
      v90 = 1024;
      *v91 = 2068;
      *&v91[4] = 2080;
      *&v91[6] = "ProcessFrameDone";
      v92 = 1024;
      v93 = a4;
      v94 = 1024;
      v95 = a5;
      v96 = 1024;
      v97 = v25;
      _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR: AppleProResHW (0x%x): %d: %s(): failed decoding proresStatus=%d HWErrorCode=0x%x convertedForEmit=0x%x\n", &buf, 0x2Au);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else if (!v23)
    {
LABEL_30:
      v23 = 0;
      *(this + 130) = 0;
      goto LABEL_114;
    }

    CVPixelBufferRelease(v23);
    goto LABEL_30;
  }

  v98 = 0;
  v99 = 0;
  v100 = 0;
  v23 = *(v9 + 72);
  cf = *(v9 + 80);
  *(this + 129) &= a7 != 0;
  if (!a4 || a4 == 5)
  {
    v26 = IOSurfaceLookup(*(v9 + 104));
    BaseAddress = IOSurfaceGetBaseAddress(v26);
    v28 = _byteswap_ulong(*BaseAddress);
    v75 = (*BaseAddress << 24) | (*(BaseAddress + 1) << 16) | (*(BaseAddress + 2) << 8) | *(BaseAddress + 3);
    if (*(v9 + 176))
    {
      v75 = 148;
      if (v28)
      {
LABEL_163:
        ProResFrameReceiver::ProcessFrameDone(this, (v9 + 8));
        snprintf(&dataBuffer, 0xB4uLL, "ERROR: AppleProResHW (0x%x): %s(): F# %d: FrameParse error, the bitstream is corrupted, crashing system\n", *(this + 78), "ProcessFrameDone", *v12);
        v69 = _os_crash();
        ProResFrameReceiver::ProcessFrameDone(v69);
      }
    }

    else
    {
      v32 = parseFrameHeader(&buf, BaseAddress + 4, a7 != 0, *(this + 79), *(this + 78));
      if (v32)
      {
        if (v32 != -536870191)
        {
          goto LABEL_163;
        }

        *(this + 297) = 1;
      }
    }

    if (*(v9 + 132))
    {
      if (*(this + 66))
      {
        v74 = 1;
        goto LABEL_74;
      }

      freeEncodeStatsBuffers(v9 + 112, 0);
      *(v9 + 376) = 0u;
      *(v9 + 392) = 0u;
      *(v9 + 344) = 0u;
      *(v9 + 360) = 0u;
      v33 = 20;
    }

    else
    {
      v33 = 4;
    }

    length = v33;
    v42 = *(this + 66);
    v74 = 1;
    if (v42)
    {
LABEL_74:
      ProResFrameReceiver::DoubleEncodeFrame(this, v9, BaseAddress, &v74);
    }

    v44 = *(this + 79);
    v45 = *(this + 78);
    kdebug_trace();
    dataBuffer = 0;
    *(&v87 + 1) = v75;
    v46 = (*(v9 + 192) - *(v9 + 184) + v75);
    v84 = *(v9 + 192) - *(v9 + 184);
    v85 = v46;
    v47 = *(v9 + 208);
    if (v46 > v47)
    {
      *(this + 76) = ((&v46[-v47] / v47) * 100.0) + *(this + 76);
      ++*(this + 75);
    }

    v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
    v86 = v48;
    *&v87 = v48 - v46;
    if (*(this + 6) == 2)
    {
      CMBlockBuffer = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x29EDB8ED8], 0, v48, *MEMORY[0x29EDB8ED8], 0, 0, v48, 1u, &dataBuffer);
    }

    else
    {
      CMBlockBuffer = VTEncoderSessionCreateCMBlockBuffer();
    }

    v25 = CMBlockBuffer;
    if (CMBlockBuffer)
    {
      goto LABEL_84;
    }

    v25 = ProResFrameReceiver::CopyBitstreamToBlockBuffer(this, v9, &dataBuffer, BaseAddress, a2, v74);
    if (v25)
    {
LABEL_83:
      CFRelease(dataBuffer);
LABEL_84:
      if (sbuf)
      {
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
        ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
        setDataForProperty(ValueAtIndex, @"ProResHW_CheckValue", a6, length);
      }

      v52 = *(this + 79);
      v53 = *(this + 78);
      kdebug_trace();
      goto LABEL_87;
    }

    v62 = *(v9 + 4);
    if (!a7 || v62 == 4)
    {
      v63 = *MEMORY[0x29EDB8ED8];
      v64 = dataBuffer;
      if (v62 == 4)
      {
        goto LABEL_156;
      }
    }

    else
    {
      if (*(this + 129) == 1)
      {
        v63 = *MEMORY[0x29EDB8ED8];
        v64 = dataBuffer;
LABEL_156:
        v67 = (v9 + 88);
LABEL_160:
        v25 = CMSampleBufferCreateReady(v63, v64, *v67, 1, 1, (v9 + 728), 1, &v86, &sbuf);
        if (v25 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v68 = *(this + 78);
          *v77 = 67109634;
          v78 = v68;
          v79 = 2080;
          v80 = "ProcessFrameDone";
          v81 = 1024;
          v82 = v25;
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: CMSampleBufferCreateReady failed 0x%0x\n", v77, 0x18u);
        }

        goto LABEL_83;
      }

      v63 = *MEMORY[0x29EDB8ED8];
      v64 = dataBuffer;
      if (*(this + 128))
      {
        v67 = (v9 + 88);
        goto LABEL_160;
      }
    }

    v67 = (v9 + 96);
    goto LABEL_160;
  }

  if (a4 == 4)
  {
    v31 = -536870173;
  }

  else
  {
    v31 = -12912;
  }

  if (a4 == 3)
  {
    v25 = 3758097110;
  }

  else
  {
    v25 = v31;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v66 = *(this + 78);
    LODWORD(dataBuffer) = 67110402;
    HIDWORD(dataBuffer) = v66;
    v84 = 0x820000008880400;
    v85 = "ProcessFrameDone";
    LOWORD(v86) = 1024;
    *(&v86 + 2) = a4;
    HIWORD(v86) = 1024;
    LODWORD(v87) = a5;
    WORD2(v87) = 1024;
    *(&v87 + 6) = v25;
    _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR: AppleProResHW (0x%x): %d: %s(): failed encoding: proresStatus=%d HWErrorCode=0x%x convertedForEmit=0x%x\n", &dataBuffer, 0x2Au);
  }

  v26 = 0;
LABEL_87:
  if (*(this + 48) == a2 || *(this + 208) != 1 || *(this + 66))
  {
    ProResFrameReceiver::EmitEncodedFrame(this, v9, sbuf, a2);
    ++*(this + 48);
    if (*(this + 208) != 1 || *(this + 66) || (ProResFrameReceiver::EmitPendingFrames(this) & 1) != 0)
    {
      v43 = 0;
      goto LABEL_94;
    }

    v25 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::ProcessFrameDone(this);
    }

LABEL_75:
    v43 = 3;
    goto LABEL_94;
  }

  v25 = ProResFrameReceiver::QueueOutOfOrderFrame(this, v9, sbuf, a2, 0, v25);
  if (v25)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::ProcessFrameDone(this);
    }

    goto LABEL_75;
  }

  v43 = 2;
LABEL_94:
  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  v30 = 0;
  if (v43 > 2 || !v43)
  {
    goto LABEL_128;
  }

LABEL_143:
  if (v73 == v72)
  {
    v58 = *(this + 79);
    v59 = *(this + 78);
    kdebug_trace();
  }

  v60 = *MEMORY[0x29EDCA608];
  return v25;
}

void sub_29531755C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 152);
  if (v3)
  {
    *(v1 + 160) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DestroyProResFrameReceiver(CFTypeRef *a1, pthread_attr_t *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
      ProResFrameReceiver::~ProResFrameReceiver(a1);
      MEMORY[0x29C24C730]();
      CFRunLoopStop(v4);
      CFRelease(v4);
      v5 = 0;
    }

    else
    {
      v5 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v8[0] = 67109378;
        v8[1] = -1;
        v9 = 2080;
        v10 = "DestroyProResFrameReceiver";
        _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: runLoopRef NULL\n", v8, 0x12u);
      }
    }

    if (a2)
    {
      pthread_attr_destroy(a2);
    }
  }

  else
  {
    v5 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      DestroyProResFrameReceiver_cold_1();
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t CreateProResFrameReceiver(void *a1, uint64_t a2, pthread_attr_t *a3, pthread_t *a4, int a5, unsigned int a6)
{
  v21 = *MEMORY[0x29EDCA608];
  v14[0] = 0;
  v15 = 0;
  v16 = a2;
  v17 = a5;
  v20 = a6;
  pthread_mutex_init(&v18, 0);
  pthread_cond_init(&v19, 0);
  pthread_attr_init(a3);
  pthread_attr_setdetachstate(a3, 2);
  if (pthread_attr_setschedpolicy(a3, 2))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      CreateProResFrameReceiver_cold_1(&v20);
    }
  }

  else if (pthread_attr_getschedparam(a3, &v13))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      CreateProResFrameReceiver_cold_2(&v20);
    }
  }

  else
  {
    v13.sched_priority = 53;
    if (pthread_attr_setschedparam(a3, &v13))
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        CreateProResFrameReceiver_cold_3(&v20);
      }
    }

    else
    {
      pthread_create(a4, a3, ProResFrameReceiverEntry, v14);
      pthread_mutex_lock(&v18);
      if ((v14[0] & 1) == 0)
      {
        do
        {
          pthread_cond_wait(&v19, &v18);
        }

        while (!v14[0]);
      }

      pthread_mutex_unlock(&v18);
      v12 = v15;
      *a1 = v15;
      if (v12)
      {
        v9 = 0;
        goto LABEL_11;
      }
    }
  }

  pthread_attr_destroy(a3);
  v9 = 3758097084;
LABEL_11:
  pthread_cond_destroy(&v19);
  pthread_mutex_destroy(&v18);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t std::vector<std::pair<unsigned short,unsigned short>>::__init_with_size[abi:ne200100]<std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned short,unsigned short>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_295317A04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned short,unsigned short>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

uint64_t OUTLINED_FUNCTION_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 312);
  return result;
}

char *getResolutionTier(int a1, int a2, char *a3)
{
  v3 = a2 * a1;
  if ((a2 * a1) > 0xE1000)
  {
    if (v3 >> 10 > 0x7E8)
    {
      if (v3 > 0x1FE000)
      {
        if (v3 >= 0x240001)
        {
          if (v3 >= 0x7E9000)
          {
            if (v3 == 8294400)
            {
              a3[2] = 0;
              v6 = 19252;
            }

            else
            {
              if (v3 < 0x1FA4001)
              {
                v4 = 4929596;
                goto LABEL_11;
              }

              if (v3 >= 0x21C0001)
              {
                v4 = 4929598;
                goto LABEL_11;
              }

              a3[2] = 0;
              v6 = 19256;
            }

            *a3 = v6;
            return a3;
          }

          v4 = 4928572;
        }

        else
        {
          a3[4] = 0;
          v4 = 1261583676;
        }
      }

      else
      {
        *(a3 + 2) = 112;
        v4 = 808988721;
      }
    }

    else
    {
      *(a3 + 3) = 7352376;
      v4 = 942682428;
    }
  }

  else
  {
    *(a3 + 3) = 7352370;
    v4 = 842480956;
  }

LABEL_11:
  *a3 = v4;
  return a3;
}

void reportEncodeSessionInfo(int a1, int a2, int a3, int a4, int a5, char a6, char a7, int a8, int a9, int a10, int a11, char a12, int a13, int a14, char a15, char a16, uint64_t a17)
{
  v19 = a3;
  v20 = a5;
  v21 = a1;
  v22 = a2;
  v29 = a7;
  v23 = a4;
  v24 = a13;
  v30 = a6;
  v31 = a15;
  v32 = a16;
  if (*(a17 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a17, *(a17 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *a17;
    __p.__r_.__value_.__r.__words[2] = *(a17 + 16);
  }

  v25 = a10;
  v26 = a11;
  v33 = a12;
  v27 = a8;
  v28 = a9;
  analytics_send_event_lazy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_295317CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___Z23reportEncodeSessionInfojjjjjhbjjjjbjjbbNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  string[0] = HIBYTE(v3);
  string[1] = BYTE2(v3);
  string[2] = BYTE1(v3);
  string[3] = v3;
  string[4] = 0;
  v8[0] = HIBYTE(v4);
  v8[1] = BYTE2(v4);
  v8[2] = BYTE1(v4);
  v8[3] = v4;
  v8[4] = 0;
  xpc_dictionary_set_string(v2, "sessionType", "ProResEncoder");
  xpc_dictionary_set_string(v2, "codecType", string);
  getResolutionTier(*(a1 + 64), *(a1 + 68), v10);
  xpc_dictionary_set_string(v2, "resolution", v10);
  xpc_dictionary_set_uint64(v2, "bitDepth", *(a1 + 72));
  xpc_dictionary_set_BOOL(v2, "doubleEncode", *(a1 + 96));
  xpc_dictionary_set_string(v2, "pixelFormat", v8);
  xpc_dictionary_set_uint64(v2, "framesProcessed", *(a1 + 76));
  xpc_dictionary_set_uint64(v2, "frameRateCode", *(a1 + 97));
  xpc_dictionary_set_BOOL(v2, "hardwareError", *(a1 + 98));
  xpc_dictionary_set_BOOL(v2, "nonCompliant", *(a1 + 99));
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v2, "realTime_maximizePowerEfficiency", v5);
  xpc_dictionary_set_uint64(v2, "percentFramesOverTarget", *(a1 + 80));
  xpc_dictionary_set_uint64(v2, "avgTargetOvershootPercent", *(a1 + 84));
  if (*(a1 + 96) == 1)
  {
    xpc_dictionary_set_BOOL(v2, "logCapture", *(a1 + 100));
    xpc_dictionary_set_uint64(v2, "DEFramePercentage", *(a1 + 88));
    xpc_dictionary_set_uint64(v2, "SkipP2Toggled", *(a1 + 92));
  }

  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void reportDecodeSessionInfo(int a1, int a2, int a3, int a4, int a5, char a6, int a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a2;
  v16 = a5;
  v17 = a7;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  if (*(a11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a11, *(a11 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *a11;
    __p.__r_.__value_.__r.__words[2] = *(a11 + 16);
  }

  analytics_send_event_lazy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_295318028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___Z23reportDecodeSessionInfojjjjjhjjbbNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  string[0] = HIBYTE(v3);
  string[1] = BYTE2(v3);
  string[2] = BYTE1(v3);
  string[3] = v3;
  string[4] = 0;
  v8[0] = HIBYTE(v4);
  v8[1] = BYTE2(v4);
  v8[2] = BYTE1(v4);
  v8[3] = v4;
  v8[4] = 0;
  xpc_dictionary_set_string(v2, "sessionType", "ProResDecoder");
  xpc_dictionary_set_string(v2, "codecType", string);
  getResolutionTier(*(a1 + 64), *(a1 + 68), v10);
  xpc_dictionary_set_string(v2, "resolution", v10);
  xpc_dictionary_set_uint64(v2, "bitDepth", *(a1 + 72));
  xpc_dictionary_set_string(v2, "pixelFormat", v8);
  xpc_dictionary_set_uint64(v2, "framesProcessed", *(a1 + 76));
  xpc_dictionary_set_uint64(v2, "frameRateCode", *(a1 + 80));
  xpc_dictionary_set_BOOL(v2, "hardwareError", *(a1 + 81));
  xpc_dictionary_set_BOOL(v2, "nonCompliant", *(a1 + 82));
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v2, "realTime_maximizePowerEfficiency", v5);
  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

void ProResEncoderRegister()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v1 = Mutable;
  if (Mutable)
  {
    v2 = *MEMORY[0x29EDB8F00];
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD1E0], *MEMORY[0x29EDB8F00]);
    CFDictionarySetValue(v1, *MEMORY[0x29EDBD1E8], v2);
    if (AppleProResHW_CheckPlatform())
    {
LABEL_12:

      CFRelease(v1);
      return;
    }

    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.4444xq");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.4444");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.422hq");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.422");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.422lt");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.422proxy");
  }

  else
  {
    if (AppleProResHW_CheckPlatform())
    {
      return;
    }

    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
  }

  VTRegisterVideoEncoderWithInfo();
  if (checkPlatformForProResRAWSupport())
  {
    if (v1)
    {
      CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.raw");
      VTRegisterVideoEncoderWithInfo();
      CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.rawhq");
    }

    else
    {
      VTRegisterVideoEncoderWithInfo();
    }

    VTRegisterVideoEncoderWithInfo();
  }

  if (v1)
  {
    goto LABEL_12;
  }
}

uint64_t worker(void *a1)
{
  while (1)
  {
    pthread_mutex_lock(*a1);
    while (!*(*(a1 + 4) + 40))
    {
      v2 = atomic_load(*(a1 + 1));
      if (v2)
      {
        break;
      }

      pthread_cond_wait(*(a1 + 2), *a1);
    }

    v3 = atomic_load(*(a1 + 1));
    if (v3)
    {
      break;
    }

    v4 = *(a1 + 4);
    v5 = *(*(v4->i64[1] + ((v4[2].i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4[2].i64[0] & 0x1FF));
    v4[2] = vaddq_s64(v4[2], xmmword_295393A30);
    std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](v4, 1);
    pthread_cond_signal(*(a1 + 3));
    pthread_mutex_unlock(*a1);
    (*v5)(*(v5 + 8));
    MEMORY[0x29C24C730](v5, 0x80C40803F642BLL);
  }

  pthread_mutex_unlock(*a1);
  return 0;
}

void ThreadPool::ThreadPool(ThreadPool *this, int a2, int a3)
{
  v6 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = a2;
  *(this + 13) = a3;
  pthread_mutex_init(this + 1, 0);
  pthread_cond_init((this + 128), 0);
  pthread_cond_init((this + 176), 0);
  pthread_attr_init(&v5);
  pthread_attr_setdetachstate(&v5, 1);
  atomic_store(0, this + 224);
  v4 = *(this + 13);
  operator new[]();
}

void ThreadPool::~ThreadPool(ThreadPool *this)
{
  atomic_store(1u, this + 224);
  pthread_mutex_lock(this + 1);
  while (1)
  {
    v2 = *(this + 5);
    if (!v2)
    {
      break;
    }

    v3 = *(this + 4);
    v4 = *(*(*(this + 1) + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF));
    if (v4)
    {
      MEMORY[0x29C24C730](v4, 0x80C40803F642BLL);
      v3 = *(this + 4);
      v2 = *(this + 5);
    }

    *(this + 4) = v3 + 1;
    *(this + 5) = v2 - 1;
    std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](this, 1);
  }

  pthread_cond_broadcast((this + 128));
  pthread_mutex_unlock(this + 1);
  if (*(this + 13))
  {
    v5 = 0;
    do
    {
      pthread_join(*(*(this + 7) + 8 * v5++), 0);
    }

    while (v5 < *(this + 13));
  }

  v6 = *(this + 7);
  if (v6)
  {
    MEMORY[0x29C24C710](v6, 0x20C8093837F09);
  }

  v7 = *(this + 29);
  if (v7)
  {
    MEMORY[0x29C24C730](v7, 0x20C40769AC3DALL);
  }

  pthread_cond_destroy((this + 128));
  pthread_mutex_destroy(this + 1);

  std::deque<void *>::~deque[abi:ne200100](this);
}

uint64_t ThreadPool::getTaskQueueSize(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 1);
  v2 = *&this->__opaque[32];
  pthread_mutex_unlock(this + 1);
  return v2;
}

uint64_t std::deque<void *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<void **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<void **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void *std::deque<void *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<void *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<void *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<void **>::emplace_back<void **&>(a1, &v10);
}

void sub_295318CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<void **>::emplace_back<void **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<void **>::emplace_front<void **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<void **>::emplace_back<void **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<void **>::emplace_front<void **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void interchange_compression::compressor::compress()
{
  __assert_rtn("get", "interchange_header.h", 100, "fields[field_id(s, comp)].init");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 577, "mode_offset != 0");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 618, "mode[c] <= dq_max_mode[fmt_id]");
}

{
  __assert_rtn("sanity_check_quantized_delta", "interchange_lossy.h", 245, "error < (1ull << (lossy_parameters[format].max_qp[lossy_level+1][c]))");
}

{
  __assert_rtn("sanity_check_quantized_delta", "interchange_lossy.h", 248, "(pixel_value < (1ull<<comp_width)-1) || sanity_decoded_comp == pixel_value");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 753, "round_qdelta_down == round_qdelta_down_rtl");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 721, "bucket_width == 1");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 855, "pixel_packed <= legal_pixel_size");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 795, "(comp_width[c] != 2) || (comp_width[c] == 2 && dquad_pixel_oob) || (comp_width[c] == 2 && value == dquad[p][c])");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 802, "fallback_packed_bits == dquad_footprint_bits");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 863, "compressed_block.size_bits() == dquad_footprint_bits");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 536, "lossy_level >= 0 && lossy_level <= 2");
}

{
  __assert_rtn("compress", "interchange_compressor.h", 549, "packed_size_padded == compressed_size_padded");
}

{
  __assert_rtn("compress", "interchange_compressor.h", 454, "height > 0 && height <= SB_HEIGHT");
}

{
  __assert_rtn("compress", "interchange_compressor.h", 453, "width > 0 && width <= SB_WIDTH");
}

void interchange_compression::decompressor::decompress()
{
  __assert_rtn("decompress", "interchange_decompressor.h", 210, "lossy_level == 0");
}

{
  __assert_rtn("decompress", "interchange_decompressor.h", 201, "lossy_level == 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 900, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 910, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1012, "pixel_unpacked <= legal_pixel_size");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1062, "delta_quant <= ((1ull << delta_bits[c]) - 1)");
}

{
  __assert_rtn("skip", "interchange_bit_pack.h", 102, "read_ptr <= size_bits()");
}

void interchange_compression::compressor::compressor()
{
  __assert_rtn("set_format", "interchange_header.h", 201, "header_layout_table[id].format == id");
}

{
  __assert_rtn("compressor", "interchange_compressor.h", 153, "check_valid_lossy_level(lossy_level, format)");
}

{
  __assert_rtn("compressor", "interchange_compressor.h", 154, "lossy_level == 0 || comp_type < COMP_TYPE_INVALID");
}

{
  __assert_rtn("compressor", "interchange_compressor.h", 152, "alternative_decorrelation == 0 || _format == FMT_8_8_8_8");
}

void bit_pack::pack()
{
  __assert_rtn("pack", "interchange_bit_pack.h", 64, "0");
}

{
  __assert_rtn("pack", "interchange_bit_pack.h", 62, "!read_only");
}

void interchange_compression::header::get_size()
{
  __assert_rtn("get_size", "interchange_header.h", 129, "fields[field_id(BITS, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 128, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 123, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 138, "0");
}

{
  __assert_rtn("get_size", "interchange_header.h", 134, "fields[field_id(MODE, comp)].init");
}

void interchange_compression::derive_sharing()
{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 356, "start_level[3] <= 0");
}

{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 269, "mode[3] == 0 || mode[3] == 1");
}

void interchange_compression::decompressor::decompressor()
{
  __assert_rtn("decompressor", "interchange_decompressor.h", 38, "check_valid_lossy_level(lossy_level, format)");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 39, "lossy_level == 0 || comp_type < COMP_TYPE_INVALID");
}

void AppleProResHW_CheckPlatform()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void GetMaxCompressionSizeExcludingAlpha()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void GetCompressedFrameSize()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void GetEmptySpotInFrameInfoArray()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void createConnection()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void checkFrameHeader(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = *(a2 + 10);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x24u);
  v7 = *MEMORY[0x29EDCA608];
}

void checkFrameHeader()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void parseFrameHeader()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void createEncodeStatsBuffers()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CreateInstance_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CreateInstance_cold_2(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CreateInstance_cold_3()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CreateInstance_cold_4()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void createFormatDescriptionExtensions(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_Invalidate()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CopyProperty()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_SetProperty()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_SetProperty(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CompleteFrames(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CompleteFrames()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_StartSession(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x30u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_EncodeFrame(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x24u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Eu);
  v8 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_EncodeFrame()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CopySupportedPropertyDictionary()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_GetInInfoSizes()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CalculateRawBitRates(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResEncoder_CheckEncodeCmd()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
  v5 = *MEMORY[0x29EDCA608];
}

{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::InitializeDoubleEncode(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::FrameDone()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::Setup(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void stitchCallback()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
  v5 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::EmitPendingFrames(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x24u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::PerformAlphaUpscaling(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
  v8 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
  v8 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::DoubleEncodeFrame(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  v9 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::DoubleEncodeFrame(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::P1ParseFrame(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::P2Encode(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::P2Encode(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::P2PrepareFrame(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::CopyBitstreamToBlockBuffer(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Eu);
  v8 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Eu);
  v8 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Eu);
  v8 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Eu);
  v8 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::CopyBitstreamToBlockBuffer(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Eu);
  v8 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::ProcessFrameDone(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  v9 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  v9 = *MEMORY[0x29EDCA608];
}

{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiver::ProcessFrameDone(uint64_t a1, unsigned int *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 312);
    v5 = *a2;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v6, v7, v8, v9, v10, v11);
  }

  v12 = *MEMORY[0x29EDCA608];
}

void DestroyProResFrameReceiver_cold_1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void CreateProResFrameReceiver_cold_1(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void CreateProResFrameReceiver_cold_2(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void CreateProResFrameReceiver_cold_3(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

void ProResFrameReceiverEntry(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x29EDCA608];
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}