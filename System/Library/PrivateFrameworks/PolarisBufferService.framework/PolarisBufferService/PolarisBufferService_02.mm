void addCameraBufferDepthProperty(__CFDictionary *a1, const char *a2, int a3)
{
  valuePtr = a3;
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  v7 = CFStringCreateWithCString(v5, a2, 0x8000100u);
  CFDictionarySetValue(a1, v7, v6);
  CFRelease(v7);
  CFRelease(v6);
}

uint64_t cameraStreamWriterGetCamNumber(const char *__s1)
{
  v2 = &dword_279A4D4B8;
  v3 = 53;
  while (strcmp(__s1, *(v2 - 1)))
  {
    v2 += 4;
    if (!--v3)
    {
      cameraStreamWriterGetCamNumber(v5, __s1);
      return *v2;
    }
  }

  return *v2;
}

void cameraStreamWriterGetCameraBufferDepthConfig(const char *a1, int *a2, int *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint8_t a11)
{
  CameraBufferDepthConfigForKey = getCameraBufferDepthConfigForKey(a1);
  v16 = *MEMORY[0x277CBECE8];
  v17 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "cam-depth", 0x8000100u);
  Value = CFDictionaryGetValue(CameraBufferDepthConfigForKey, v17);
  LODWORD(a2) = CFNumberGetValue(Value, kCFNumberIntType, a2);
  CFRelease(v17);
  if (!a2)
  {
    cameraStreamWriterGetCameraBufferDepthConfig(v33, a1);
    goto LABEL_6;
  }

  v19 = CFStringCreateWithCString(v16, "writer-depth", 0x8000100u);
  v20 = CFDictionaryGetValue(CameraBufferDepthConfigForKey, v19);
  v21 = CFNumberGetValue(v20, kCFNumberIntType, a3);
  CFRelease(v19);
  if (!v21)
  {
LABEL_6:
    cameraStreamWriterGetCameraBufferDepthConfig(v33, a1);
    goto LABEL_7;
  }

  v22 = CFStringCreateWithCString(v16, "writer-view-count", 0x8000100u);
  v23 = CFDictionaryGetValue(CameraBufferDepthConfigForKey, v22);
  v24 = CFNumberGetValue(v23, kCFNumberIntType, a4);
  CFRelease(v22);
  if (!v24)
  {
LABEL_7:
    CameraBufferDepthConfig = cameraStreamWriterGetCameraBufferDepthConfig(v33, a1);
    OUTLINED_FUNCTION_3_4(CameraBufferDepthConfig, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11);
  }
}

void OUTLINED_FUNCTION_3_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

uint64_t PSSharedCameraStreamReader::initialize(PSSharedCameraStreamReader *this)
{
  v14[5] = *MEMORY[0x277D85DE8];
  if (*(this + 712) == 1)
  {
    if (!*(this + 86))
    {
      operator new();
    }
  }

  else if (!*(this + 87))
  {
    operator new();
  }

  if (*(this + 199) == 1)
  {
    if (!*(this + 88))
    {
      operator new();
    }

    result = PSSharedCameraStreamReader::initialize(v14, this);
    __break(1u);
  }

  else
  {
    Buffers = PSShbufferGroupReader::getAllReadBuffers(*(this + 85));
    v3 = *(*(this + 85) + 636);
    if (v3)
    {
      v4 = 0;
      v5 = *(this + 196);
      do
      {
        if (v5)
        {
          v6 = *(this + 197);
          v7 = *(this + 198);
          v8 = v5;
          do
          {
            v9 = *(Buffers + 8 * v4);
            v10 = *(v9 + 32 * v6 + 8);
            v11 = *(v9 + 32 * v7 + 8);
            *v10 = v11;
            v10[1] = v11 + 8;
            v10[2] = v11 + 24;
            ++v7;
            ++v6;
            --v8;
          }

          while (v8);
        }

        ++v4;
      }

      while (v4 != v3);
    }

    v12 = *MEMORY[0x277D85DE8];
    return 0;
  }

  return result;
}

void PSSharedCameraStreamReader::countToCapacity(PSSharedCameraStreamReader *this, int a2)
{
  v2 = *(this + 199);
  if (v2)
  {
    if (v2 != 1)
    {
      PSSharedCameraStreamReader::countToCapacity(&v4, this);
      goto LABEL_8;
    }

    if (((a2 - 5) & 1) == 0)
    {
      return;
    }

    PSSharedCameraStreamReader::countToCapacity(&v4);
  }

  if (a2)
  {
LABEL_8:
    v3 = PSSharedCameraStreamReader::countToCapacity(&v4);
    PSSharedCameraStreamReader::~PSSharedCameraStreamReader(v3);
  }
}

void PSSharedCameraStreamReader::~PSSharedCameraStreamReader(PSSharedCameraStreamReader *this)
{
  v14 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CDFF0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "PSSHAREDCAMERASTREAMREADER";
    v12 = 2080;
    v13 = "~PSSharedCameraStreamReader";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye!", &v10, 0x16u);
  }

  v3 = *(this + 91);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 85);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 86);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 87);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 88);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 94);
  if (v8)
  {
    MEMORY[0x25F8CA500](v8, 0x20C4093837F09);
  }

  PSSharedCameraStream::~PSSharedCameraStream(this);
  v9 = *MEMORY[0x277D85DE8];
}

{
  PSSharedCameraStreamReader::~PSSharedCameraStreamReader(this);

  JUMPOUT(0x25F8CA500);
}

PSShbufferGroupReader *PSSharedCameraStreamReader::addReaderInstance(PSSharedCameraStreamReader *this)
{
  result = *(this + 85);
  if (result)
  {
    return PSShbufferGroupReader::addReaderInstance(result);
  }

  return result;
}

uint64_t PSSharedCameraStreamReader::removeReaderInstance(PSSharedCameraStreamReader *this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  result = *(this + 85);
  if (result)
  {
    return PSShbufferGroupReader::removeReaderInstance(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t PSSharedCameraStreamReader::waitAndReadBuffers(PSSharedCameraStreamReader *this, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*this + 56))(this, 0, 0))
  {
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "PSSHAREDCAMERASTREAMREADER";
      v11 = 2080;
      v12 = "waitAndReadBuffers";
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s:%s- shutdown detected\n", &v9, 0x16u);
    }

    v5 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v7 = *(*this + 72);
    v8 = *MEMORY[0x277D85DE8];

    return v7(this, 0, 0, a2);
  }
}

uint64_t PSSharedCameraStreamReader::readBuffersLastN(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t *a6, unsigned int *a7)
{
  if ((PSShbufferGroupReader::acquireSharedLock(*(a1 + 680), 1) & 1) == 0)
  {
    PSSharedCameraStreamReader::readBuffersLastN(v19);
LABEL_7:
    BuffersLastN = PSSharedCameraStreamReader::readBuffersLastN(v19);
    return PSSharedCameraStreamReader::populateCVBuffer(BuffersLastN, v16, v17);
  }

  PSShbufferGroupReader::getReadBuffersLastN(*(a1 + 680), a2, a3, a4, a5, a6, a7, 0, v18);
  if (*a6)
  {
    PSSharedCameraStreamReader::populateCVBuffer(a1, *a6, a4);
  }

  result = PSShbufferGroupReader::releaseSharedLock(*(a1 + 680), 1);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t PSSharedCameraStreamReader::populateCVBuffer(uint64_t result, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = result;
    v6 = 0;
    v7 = *(result + 784);
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = *(a3 + 8 * v6);
        do
        {
          v10 = v9[4 * (v8 + *(v5 + 792)) + 1];
          if (LOBYTE(v10->isa) == 1)
          {
            isa_high = SHIDWORD(v10[2].isa);
            ++*(*(v5 + 728) + 8 * isa_high);
            if (*(v5 + 712) == 1)
            {
              result = PSSharedCVPixelBuffer::getBuffer(*(v5 + 688), isa_high);
            }

            else
            {
              result = (*(**(v5 + 696) + 48))(*(v5 + 696), isa_high);
            }

            if (!result)
            {
              if (PSShbufferGroupReader::releaseSharedLock(*(v5 + 680), 1))
              {
                Key = PSSharedResource::getKey(v5);
                v8 = "populateCVBuffer";
                printf("%s:%s No CVPixelBuffer at %d for key=%s i=%llu read_buffer_count=%llu\n", "PSSHAREDCAMERASTREAMREADER", "populateCVBuffer", isa_high, Key, v6, a2);
                v25 = 0;
                v19 = PSSharedResource::getKey(v5);
                asprintf(&v25, "%s:%s No CVPixelBuffer at %d for key=%s i=%llu read_buffer_count=%llu\n", "PSSHAREDCAMERASTREAMREADER", "populateCVBuffer", isa_high, v19, v6, a2);
                v9 = &_ps_buffer_log;
                v20 = _ps_buffer_log;
                if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
                {
                  v21 = PSSharedResource::getKey(v5);
                  *buf = 136316930;
                  v27 = "populateCVBuffer";
                  v28 = 1024;
                  v29 = 245;
                  v30 = 2080;
                  v31 = "PSSHAREDCAMERASTREAMREADER";
                  v32 = 2080;
                  v33 = "populateCVBuffer";
                  v34 = 1024;
                  v35 = isa_high;
                  v36 = 2080;
                  v37 = v21;
                  v38 = 2048;
                  v39 = v6;
                  v40 = 2048;
                  v41 = a2;
                  _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_FAULT, "%s:%d %s:%s No CVPixelBuffer at %d for key=%s i=%llu read_buffer_count=%llu\n", buf, 0x4Au);
                }

                v22 = OSLogFlushBuffers();
                if (!v22)
                {
                  usleep(0x1E8480u);
                  goto LABEL_32;
                }

LABEL_30:
                v23 = v22;
                v24 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v27 = v8;
                  v28 = 1024;
                  v29 = v23;
                  _os_log_impl(&dword_25EBC5000, v24, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                }

LABEL_32:
                abort_with_reason();
              }

LABEL_29:
              v22 = PSSharedCameraStreamReader::populateCVBuffer(buf);
              goto LABEL_30;
            }

            p_isa = &v9[4 * (v8 + *(v5 + 788)) + 1]->isa;
            p_isa[5] = result;
            v13 = *(v5 + 796);
            if (LODWORD(v10[3].isa) == 1)
            {
              if (v13 != 1)
              {
                goto LABEL_28;
              }

              isa = v10[4].isa;
              if (isa == -1)
              {
                p_isa[3] = 0;
              }

              else
              {
                result = PSSharedIOSurface::getBuffer(*(v5 + 704), isa);
                p_isa[3] = result;
              }
            }

            else
            {
              if (v13)
              {
                PSSharedCameraStreamReader::populateCVBuffer(buf, v5);
LABEL_28:
                PSSharedCameraStreamReader::populateCVBuffer(buf, v5);
                goto LABEL_29;
              }

              v16 = v10[4].isa;
              v15 = v10 + 4;
              if (v16)
              {
                p_isa[4] = v15;
              }

              else
              {
                p_isa[4] = 0;
              }
            }
          }

          v8 = (v8 + 1);
          v7 = *(v5 + 784);
        }

        while (v8 < v7);
      }

      ++v6;
    }

    while (v6 != a2);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSharedCameraStreamReader::readBuffersSinceLast(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t *a7, unsigned int *a8)
{
  if ((PSShbufferGroupReader::acquireSharedLock(*(a1 + 680), 1) & 1) == 0)
  {
    PSSharedCameraStreamReader::readBuffersSinceLast(v18);
LABEL_7:
    BuffersSinceLast = PSSharedCameraStreamReader::readBuffersSinceLast(v18);
    return PSSharedCameraStreamReader::getBackingIOSurfaceForResource(BuffersSinceLast);
  }

  PSShbufferGroupReader::getReadBuffersSinceLast(*(a1 + 680), a2, a3, a4, a5, a6, a7, a8, 0);
  if (*a7)
  {
    PSSharedCameraStreamReader::populateCVBuffer(a1, *a7, a5);
  }

  result = PSShbufferGroupReader::releaseSharedLock(*(a1 + 680), 1);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

IOSurfaceRef PSSharedCameraStreamReader::getBackingIOSurfaceForResource(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*(a2 + 32 * (*(a1 + 792) + a3) + 8) + 20);
  if (*(a1 + 712) == 1)
  {
    Buffer = PSSharedCVPixelBuffer::getBuffer(*(a1 + 688), v3);

    return CVPixelBufferGetIOSurface(Buffer);
  }

  else
  {
    (*(**(a1 + 696) + 48))(*(a1 + 696), v3);

    return CVDataBufferGetIOSurface();
  }
}

BOOL PSSharedCameraStreamReader::isForwardResourceInUse(_DWORD *a1, uint64_t a2)
{
  if (!a1[196])
  {
    return 0;
  }

  v4 = 0;
  do
  {
    (*(*a1 + 120))(a1, a2, v4);
    v5 = IOSurfaceIsInUseForAnyOtherCategory();
    result = v5 != 0;
    if (v5)
    {
      break;
    }

    v4 = (v4 + 1);
  }

  while (v4 < a1[196]);
  return result;
}

uint64_t PSSharedCameraStreamReader::releaseForwardBufferListIndex(PSSharedCameraStreamReader *this, unsigned int a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(this + 186);
  if (v2 <= a2)
  {
    goto LABEL_8;
  }

  _X2 = 0;
  _X3 = 0;
  if ((a2 & 0x40) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << a2;
  }

  __asm { CASPAL          X2, X3, X2, X3, [X11] }

  if ((_X2 & v5) == 0)
  {
    do
    {
      _X4 = _X2 | v5;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X11] }

      _ZF = _X6 == _X2;
      _X2 = _X6;
    }

    while (!_ZF);
LABEL_8:
    result = v2 > a2;
    v15 = *MEMORY[0x277D85DE8];
    return result;
  }

  v26 = 0;
  asprintf(&v26, "Double release. index %d is already released. maxForwardedBufferCount=%d", a2, *(this + 186));
  v18 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v19 = *(this + 186);
    *buf = 136315906;
    v28 = "releaseForwardBufferListIndex";
    v29 = 1024;
    v30 = 447;
    v31 = 1024;
    v32 = a2;
    v33 = 1024;
    v34 = v19;
    _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_FAULT, "%s:%d Double release. index %d is already released. maxForwardedBufferCount=%d", buf, 0x1Eu);
  }

  v20 = OSLogFlushBuffers();
  if (v20)
  {
    v21 = v20;
    v22 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "releaseForwardBufferListIndex";
      v29 = 1024;
      v30 = v21;
      _os_log_impl(&dword_25EBC5000, v22, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v23 = abort_with_reason();
  return PSSharedCameraStreamReader::updateFwdBufferListOnReadBuffers(v23, v24, v25);
}

unsigned int *PSSharedCameraStreamReader::updateFwdBufferListOnReadBuffers(unsigned int *this, unsigned int *a2, void *a3)
{
  if (this[186])
  {
    v5 = this;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(v5 + 94) + 8 * v6);
      if (v8)
      {
        this = (*(*v5 + 128))(v5, v8);
        if (this)
        {
          ++v7;
        }

        else
        {
          (*(*v5 + 112))(v5, v8, 0, a3);
          *(*(v5 + 94) + 8 * *(v8 + 24)) = 0;
          atomic_fetch_add(v5 + 185, 0xFFFFFFFF);
          this = PSSharedCameraStreamReader::releaseForwardBufferListIndex(v5, *(v8 + 24));
        }
      }

      ++v6;
    }

    while (v6 < v5[186]);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return this;
}

BOOL PSSharedCameraStreamReader::addToForwardedBuffersList(uint64_t a1, uint64_t a2)
{
  _X2 = 0;
  _X3 = 0;
  v33 = *MEMORY[0x277D85DE8];
  v6 = 1 << *(a1 + 744);
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  while (1)
  {
    v2 = -__PAIR128__(v2, _X2) >> 64;
    v11 = _X2 & -_X2;
    _ZF = v6 >= 0 && v11 == v6;
    if (_ZF)
    {
      break;
    }

    _X4 = v11 ^ _X2;
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X9] }

    _ZF = _X6 == _X2;
    _X2 = _X6;
    if (_ZF)
    {
      v16 = v11 ^ 1;
      if (v11 != 1)
      {
        v16 = 0;
        v17 = v11;
        v18 = 0;
        do
        {
          *(&v19 + 1) = v18;
          *&v19 = v17;
          v17 = v19 >> 1;
          v20 = v17 ^ 1 | (v18 >> 1);
          v18 >>= 1;
          ++v16;
        }

        while (v20);
      }

      *(a2 + 24) = v16;
      *(*(a1 + 752) + 8 * v16) = a2;
      atomic_fetch_add((a1 + 740), 1u);
      goto LABEL_14;
    }
  }

  v21 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 720);
    v23 = *(a1 + 744);
    v27 = 136315650;
    v28 = v22;
    v29 = 1024;
    v30 = v23;
    v31 = 2080;
    Key = PSSharedResource::getKey(a1);
    _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_ERROR, "Process:%s has reached its max forwarded buffer limit (%d) for key:(%s). Failed to get a free Buffer List index.", &v27, 0x1Cu);
  }

LABEL_14:
  result = v11 != v6 || v6 < 0;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSharedCameraStreamReader::readBuffers(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  *&v28[13] = *MEMORY[0x277D85DE8];
  v23 = 0;
  if ((PSShbufferGroupReader::acquireSharedLock(*(a1 + 680), 1) & 1) == 0)
  {
    PSSharedCameraStreamReader::readBuffers(buf);
LABEL_19:
    PSSharedCameraStreamReader::readBuffers(buf);
  }

  if (*(a1 + 737) == 1)
  {
    v24[0] = 0;
    PSSharedCameraStreamReader::updateFwdBufferListOnReadBuffers(a1, v24, a4);
    v8 = v24[0];
    if (v24[0] == *(a1 + 744))
    {
      v9 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 720);
        Key = PSSharedResource::getKey(a1);
        *buf = 136315650;
        v26 = v10;
        v27 = 1024;
        *v28 = v8;
        v28[2] = 2080;
        *&v28[3] = Key;
        v12 = "Process:%s has reached its max forwarded buffer count (%d) for key:(%s). Failed to acquire read buffer";
        v13 = v9;
        v14 = 28;
LABEL_14:
        _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  v15 = *(a1 + 680);
  if (a3)
  {
    BufferswithFrameID = PSShbufferGroupReader::getReadBufferswithFrameID(v15, &v23, a2, *a3, a4, 0);
  }

  else
  {
    BufferswithFrameID = PSShbufferGroupReader::getReadBuffers(v15, &v23, a2, a4, 0);
  }

  v17 = BufferswithFrameID;
  if (BufferswithFrameID)
  {
    *v24 = BufferswithFrameID;
    PSSharedCameraStreamReader::populateCVBuffer(a1, 1, v24);
    if (*(a1 + 737) == 1 && !PSSharedCameraStreamReader::addToForwardedBuffersList(a1, v17))
    {
      (*(*a1 + 112))(a1, v17, 0, a4);
      v18 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 720);
        v20 = PSSharedResource::getKey(a1);
        *buf = 136315394;
        v26 = v19;
        v27 = 2080;
        *v28 = v20;
        v12 = "Process:%s failed to add to forwarded buffers list for key:(%s)";
        v13 = v18;
        v14 = 22;
        goto LABEL_14;
      }

LABEL_15:
      v17 = 0;
    }
  }

  if ((PSShbufferGroupReader::releaseSharedLock(*(a1 + 680), 1) & 1) == 0)
  {
    goto LABEL_19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t PSSharedCameraStreamReader::_releaseBuffers(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!PSShbufferGroupReader::acquireSharedLock(*(a1 + 680), a3))
  {
    PSSharedCameraStreamReader::_releaseBuffers(buf);
    goto LABEL_24;
  }

  if (!*(a1 + 784))
  {
    v18 = 1;
    goto LABEL_19;
  }

  UseCount = 0;
  v9 = 0;
  while (1)
  {
    v10 = *(*(a2 + 32 * (v9 + *(a1 + 792)) + 8) + 20);
    v11 = *(a1 + 728);
    v12 = *(v11 + 8 * v10) - 1;
    *(v11 + 8 * v10) = v12;
    if (!v12)
    {
      break;
    }

    if (UseCount)
    {
      goto LABEL_11;
    }

LABEL_14:
    if (++v9 >= *(a1 + 784))
    {
      goto LABEL_18;
    }
  }

  if (*(a1 + 712) == 1)
  {
    Buffer = PSSharedCVPixelBuffer::getBuffer(*(a1 + 688), v10);
    IOSurface = CVPixelBufferGetIOSurface(Buffer);
  }

  else
  {
    (*(**(a1 + 696) + 48))(*(a1 + 696));
    IOSurface = CVDataBufferGetIOSurface();
  }

  UseCount = IOSurfaceGetUseCount(IOSurface);
  if (!UseCount)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((*(a1 + 736) & 1) == 0)
  {
    v15 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 720);
      Key = PSSharedResource::getKey(a1);
      *buf = 136315394;
      v23 = v16;
      v24 = 2080;
      v25 = Key;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "Process:%s is holding onto buffers even after releasing for key:(%s)!!!", buf, 0x16u);
    }

    goto LABEL_14;
  }

  UseCount = 1;
LABEL_18:
  v18 = UseCount == 0;
LABEL_19:
  PSShbufferGroupReader::releaseReadBuffers(*(a1 + 680), a2, a4, 0);
  if ((PSShbufferGroupReader::releaseSharedLock(*(a1 + 680), a3) & 1) == 0)
  {
LABEL_24:
    PSSharedCameraStreamReader::_releaseBuffers(buf);
  }

  if (!v18 && *(a1 + 736) == 1)
  {
    v21 = PSSharedCameraStreamReader::_releaseBuffers(buf, a1);
    return PSSharedCameraStreamReader::releaseBuffers(v21);
  }

  else
  {
    v19 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

uint64_t PSSharedCameraStreamReader::releaseBuffers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 737) == 1)
  {
    if (PSShbufferGroupReader::acquireSharedLock(*(a1 + 680), 1))
    {
      if ((*(*a1 + 128))(a1, a2))
      {
        v6 = 0;
      }

      else
      {
        *(*(a1 + 752) + 8 * *(a2 + 24)) = 0;
        atomic_fetch_add((a1 + 740), 0xFFFFFFFF);
        PSSharedCameraStreamReader::releaseForwardBufferListIndex(a1, *(a2 + 24));
        v6 = (*(*a1 + 112))(a1, a2, 0, a3);
      }

      if (PSShbufferGroupReader::releaseSharedLock(*(a1 + 680), 1))
      {
        return v6;
      }
    }

    else
    {
      PSSharedCameraStreamReader::releaseBuffers(v14);
    }

    v9 = PSSharedCameraStreamReader::releaseBuffers(v14);
    return PSSharedCameraStreamReader::releaseBuffersLastN(v9, v10, v11, v12, v13);
  }

  else
  {
    v7 = *(*a1 + 112);

    return v7();
  }
}

uint64_t PSSharedCameraStreamReader::releaseBuffersLastN(uint64_t result, void *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (a3)
  {
    v7 = a3;
    v9 = result;
    v10 = a4;
    do
    {
      result = (*(*v9 + 80))(v9, *a2, a5);
      if (a4)
      {
        *v10 = result;
      }

      ++v10;
      ++a2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t PSSharedCameraStreamReader::getTotalReadBufferCount(PSSharedCameraStreamReader *this)
{
  v1 = 696;
  if (*(this + 712))
  {
    v1 = 688;
  }

  return *(*(this + v1) + 560);
}

uint64_t PSSharedCameraStreamReader::getAllReadBuffers(PSSharedCameraStreamReader *this)
{
  v1 = 696;
  if (*(this + 712))
  {
    v1 = 688;
  }

  return *(*(this + v1) + 552);
}

void OUTLINED_FUNCTION_8_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x30u);
}

uint64_t OUTLINED_FUNCTION_15_0@<X0>(PSSharedResource *this@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  *(v3 - 56) = a3;
  *a2 = 0;

  return PSSharedResource::getKey(this);
}

void PSSharedCameraStreamWriter::Create(PSSharedCameraStreamWriter *this, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = a7 & 0xE;
  v15 = _ps_buffer_log;
  v16 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
  if (v14 != 4)
  {
    if (v14 == 6)
    {
      if (v16)
      {
        v17 = 136316162;
        v18 = "PSSHAREDCAMERASTREAMWRITER";
        v19 = 2080;
        v20 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp";
        v21 = 2080;
        v22 = "Create";
        v23 = 1024;
        v24 = 108;
        v25 = 2080;
        v26 = this;
        _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "%s:%s:%s:%d - Selected ISP Mask for stream: %s", &v17, 0x30u);
      }

      if ((a7 & 0x40) == 0)
      {
        PSSharedCameraISPStreamWriter::Create(this, a2);
      }

      PSSharedCameraPearlStreamWriter::Create(this, a2);
    }

    if (v16)
    {
      v17 = 136316162;
      v18 = "PSSHAREDCAMERASTREAMWRITER";
      v19 = 2080;
      v20 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp";
      v21 = 2080;
      v22 = "Create";
      v23 = 1024;
      v24 = 124;
      v25 = 2080;
      v26 = this;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "%s:%s:%s:%d - Selected Superframe Mask for stream: %s", &v17, 0x30u);
    }

    PSSharedCameraSuperframeStreamWriter::Create(this, a2);
  }

  if (v16)
  {
    v17 = 136316162;
    v18 = "PSSHAREDCAMERASTREAMWRITER";
    v19 = 2080;
    v20 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp";
    v21 = 2080;
    v22 = "Create";
    v23 = 1024;
    v24 = 119;
    v25 = 2080;
    v26 = this;
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "%s:%s:%s:%d - Selected Streaming Codec Mask for stream: %s", &v17, 0x30u);
  }

  PSSharedCameraFifoStreamWriter::Create(this, a2, a3, a4, a5, a6, a7);
}

uint64_t PSSharedCameraStreamWriter::reserve_buffer(PSSharedIOSurface ***this, unsigned int a2, unsigned int *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 780) == 1)
  {
    BackingSurface = PSSharedCVDataBufferWriter::getBackingSurface(this[93], a2);
  }

  else
  {
    BackingSurface = PSSharedCVDataBufferWriter::getBackingSurface(this[94], a2);
  }

  v7 = BackingSurface;
  if (!BackingSurface)
  {
    PSSharedCameraStreamWriter::reserve_buffer();
  }

  if (((*this)[20])(this))
  {
    ParentID = IOSurfaceGetParentID();
  }

  else
  {
    ParentID = IOSurfaceGetID(v7);
  }

  *a3 = ParentID;
  v9 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
  {
    Key = PSSharedResource::getKey(this);
    v11 = *a3;
    v14 = 136315906;
    v15 = "PSSHAREDCAMERASTREAMWRITER";
    v16 = 2080;
    v17 = "reserve_buffer";
    v18 = 2080;
    v19 = Key;
    v20 = 1024;
    v21 = v11;
    _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEFAULT, "%s:%s - (Camera Stream: %s) id:%u", &v14, 0x26u);
  }

  if (*(this + 780) == 1)
  {
    PSSharedCVDataBufferWriter::incBackSurfaceUseCount(this[93], a2);
  }

  else
  {
    PSSharedCVDataBufferWriter::incBackSurfaceUseCount(this[94], a2);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSSharedCameraStreamWriter::initCameraSurfaces(PSSharedCameraStreamWriter *this)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "PSSHAREDCAMERASTREAMWRITER";
    v5 = 2080;
    v6 = "initCameraSurfaces";
    v7 = 2080;
    Key = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s:%s - (Camera Stream: %s) This function should always be overriden. Something has gone terribly wrong\n", &v3, 0x20u);
  }

  abort();
}

uint64_t PSSharedCameraStreamWriter::validateBufferWriter(PSSharedCameraStreamWriter *this, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(this + 174) == a2)
  {
    v2 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v16 = 0;
    Key = PSSharedResource::getKey(this);
    v7 = this;
    asprintf(&v16, "%s:%s - (Camera Stream: %s) The number of installed buffers does not match the expected number of buffers. Expected: %d, Received: %d", "PSSHAREDCAMERASTREAMWRITER", "validateBufferWriter", Key, *(this + 174), a2);
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v9 = PSSharedResource::getKey(v7);
      v10 = *(v7 + 174);
      *buf = 136316674;
      v18 = "validateBufferWriter";
      v19 = 1024;
      v20 = 225;
      v21 = 2080;
      v22 = "PSSHAREDCAMERASTREAMWRITER";
      v23 = 2080;
      v24 = "validateBufferWriter";
      v25 = 2080;
      v26 = v9;
      v27 = 1024;
      v28 = v10;
      v29 = 1024;
      v30 = a2;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s:%s - (Camera Stream: %s) The number of installed buffers does not match the expected number of buffers. Expected: %d, Received: %d", buf, 0x3Cu);
    }

    v11 = OSLogFlushBuffers();
    if (v11)
    {
      v12 = v11;
      v13 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "validateBufferWriter";
        v19 = 1024;
        v20 = v12;
        _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v14 = abort_with_reason();
    return PSSharedCameraStreamWriter::validateCVBufferWriter(v14, v15);
  }
}

uint64_t PSSharedCameraStreamWriter::validateCVBufferWriter(PSSharedCameraStreamWriter *this, int a2)
{
  v2 = this;
  if (*(this + 94))
  {
    PSSharedCameraStreamWriter::validateCVBufferWriter(v6, this);
  }

  else if (!*(this + 93))
  {
    PSSharedCameraStreamWriter::validateBufferWriter(this, a2);
    return 0;
  }

  v4 = PSSharedCameraStreamWriter::validateCVBufferWriter(v6, v2);
  return PSSharedCameraStreamWriter::validateMetadataWriter(v4, v5);
}

uint64_t PSSharedCameraStreamWriter::validateMetadataWriter(PSSharedCameraStreamWriter *this, int a2)
{
  v2 = this;
  v33 = *MEMORY[0x277D85DE8];
  if (*(this + 95))
  {
    PSSharedCameraStreamWriter::validateMetadataWriter(buf, this);
  }

  else if (*(this + 175) == a2)
  {
    v3 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v18 = 0;
  v5 = a2;
  v6 = v2;
  Key = PSSharedResource::getKey(v2);
  v8 = v6;
  v9 = *(v6 + 175);
  v10 = v5;
  asprintf(&v18, "%s:%s - (Camera Stream: %s) The number of installed buffers does not match the expected number of buffers. Expected: %d, Received: %d", "PSSHAREDCAMERASTREAMWRITER", "validateMetadataWriter", Key, v9, v5);
  v11 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v12 = PSSharedResource::getKey(v8);
    v13 = *(v8 + 175);
    *buf = 136316674;
    v20 = "validateMetadataWriter";
    v21 = 1024;
    v22 = 258;
    v23 = 2080;
    v24 = "PSSHAREDCAMERASTREAMWRITER";
    v25 = 2080;
    v26 = "validateMetadataWriter";
    v27 = 2080;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    v31 = 1024;
    v32 = v10;
    _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_FAULT, "%s:%d %s:%s - (Camera Stream: %s) The number of installed buffers does not match the expected number of buffers. Expected: %d, Received: %d", buf, 0x3Cu);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = v14;
    v16 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "validateMetadataWriter";
      v21 = 1024;
      v22 = v15;
      _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v17 = abort_with_reason();
  return PSSharedCameraStreamWriter::getCVBufferWriterIndex(v17);
}

uint64_t PSSharedCameraStreamWriter::installCVPixelBufferBackingSurfaces(PSSharedCameraStreamWriter *this, __IOSurface **a2, int a3)
{
  if (a3)
  {
    return (*(*this + 184))(this, a2);
  }

  else
  {
    return *(this + 192);
  }
}

uint64_t PSSharedCameraStreamWriter::installCVDataBufferBackingSurfaces(PSSharedCameraStreamWriter *this, __IOSurface **a2, int a3)
{
  if (a3)
  {
    return (*(*this + 192))(this, a2);
  }

  else
  {
    return *(this + 192);
  }
}

uint64_t PSSharedCameraStreamWriter::installMetadataSurfaces(PSSharedCameraStreamWriter *this, __IOSurface **a2, int a3)
{
  v4 = *(this + 193);
  if (v4 == 1)
  {
    if (a3)
    {
      v5 = *(*this + 200);

      return v5();
    }

    else
    {
      return *(this + 194);
    }
  }

  else
  {
    v7 = v12;
    v8 = this;
    if (!v4)
    {
      v7 = PSSharedCameraStreamWriter::installMetadataSurfaces(v12, this);
    }

    v9 = PSSharedCameraStreamWriter::installMetadataSurfaces(v7, v8);
    return PSSharedCameraStreamWriter::_installMetadataSurfaces(v9, v10, v11);
  }
}

void PSSharedCameraStreamWriter::_installMetadataSurfaces(PSSharedCameraStreamWriter *this, __IOSurface **a2, int a3)
{
  v6 = *(this + 193);
  if (v6 == 1)
  {
    PSSharedCameraStreamWriter::validateMetadataWriter(this, a3);
    (*(*this + 216))(this);
    operator new();
  }

  v7 = v10;
  v8 = this;
  if (!v6)
  {
    v7 = PSSharedCameraStreamWriter::_installMetadataSurfaces(v10, this);
  }

  v9 = PSSharedCameraStreamWriter::_installMetadataSurfaces(v7, v8);
  MEMORY[0x25F8CA500](v4, v3);
  _Unwind_Resume(v9);
}

uint64_t PSSharedCameraStreamWriter::writeBuffers(PSSharedCameraStreamWriter *this, void *a2, void *a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8[0] = a2;
  v6 = a4;
  result = (*(*this + 120))(this, v8, &v7, &v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSharedCameraStreamWriter::populateInfo()
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = 0;
  asprintf(&v10, "%s:%s - Should not call the parent class on this function ever.", "PSSHAREDCAMERASTREAMWRITER", "populateInfo");
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v12 = "populateInfo";
    v13 = 1024;
    v14 = 422;
    v15 = 2080;
    v16 = "PSSHAREDCAMERASTREAMWRITER";
    v17 = 2080;
    v18 = "populateInfo";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_FAULT, "%s:%d %s:%s - Should not call the parent class on this function ever.", buf, 0x26u);
  }

  v1 = OSLogFlushBuffers();
  if (v1)
  {
    v2 = v1;
    v3 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "populateInfo";
      v13 = 1024;
      v14 = v2;
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v4 = abort_with_reason();
  return PSSharedCameraStreamWriter::writeMultipleBuffers(v4, v5, v6, v7, v8);
}

uint64_t PSSharedCameraStreamWriter::writeMultipleBuffers(PSSharedCameraStreamWriter *this, void **a2, NSObject **a3, const char *a4, __int16 a5)
{
  v60 = *MEMORY[0x277D85DE8];
  if ((PSShbufferGroupReader::acquireSharedLock(*(this + 92), 1) & 1) == 0)
  {
    goto LABEL_59;
  }

  if (!*(this + 94) && (!*(this + 93) || (*(this + 780) & 1) == 0))
  {
    PSSharedCameraStreamWriter::writeMultipleBuffers(buf, this);
LABEL_62:
    PSSharedCameraStreamWriter::writeMultipleBuffers(buf, this);
    goto LABEL_63;
  }

  v41 = a5;
  if (*(this + 193) == 1 && !*(this + 95))
  {
    goto LABEL_62;
  }

  v10 = PSShbufferGroupWriter::getWriteBuffersIndex(*(this + 92));
  ResourceAt = PSShbufferGroupWriter::getResourceAt(*(this + 92), v10);
  v11 = *(this + 85);
  if (v11)
  {
    v12 = 0;
    v13 = ResourceAt + 8;
    do
    {
      v14 = a2[v12];
      v15 = *&a4[8 * v12];
      v16 = *(v13 + 32 * *(this + 90));
      if (v14)
      {
        v17 = a3[v12];
        *(v16 + 8) = v15;
        *v16 = 1;
        if (*(this + 780) == 1)
        {
          IOSurface = CVPixelBufferGetIOSurface(v14);
        }

        else
        {
          IOSurface = CVDataBufferGetIOSurface();
        }

        ID = IOSurfaceGetID(IOSurface);
        if (*(this + 780) == 1)
        {
          BackingSurfaceIndex = PSSharedCVDataBufferWriter::getBackingSurfaceIndex(*(this + 93), ID);
        }

        else
        {
          BackingSurfaceIndex = PSSharedCVDataBufferWriter::getBackingSurfaceIndex(*(this + 94), ID);
        }

        v21 = BackingSurfaceIndex;
        if ((BackingSurfaceIndex & 0x80000000) != 0)
        {
          v43 = 0;
          Key = PSSharedResource::getKey(this);
          asprintf(&v43, "%s:%s:%s:%d - (Camera Stream: %s) Could not find surface with id: %d in the CVBuffer Writer", "PSSHAREDCAMERASTREAMWRITER", "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp", "writeMultipleBuffers", 506, Key, ID);
          v31 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
          {
            v32 = PSSharedResource::getKey(this);
            *buf = 136316930;
            v45 = "writeMultipleBuffers";
            v46 = 1024;
            v47 = 506;
            v48 = 2080;
            v49 = "PSSHAREDCAMERASTREAMWRITER";
            v50 = 2080;
            v51 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp";
            v52 = 2080;
            v53 = "writeMultipleBuffers";
            v54 = 1024;
            v55 = 506;
            v56 = 2080;
            v57 = v32;
            v58 = 1024;
            v59 = ID;
            _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_FAULT, "%s:%d %s:%s:%s:%d - (Camera Stream: %s) Could not find surface with id: %d in the CVBuffer Writer", buf, 0x46u);
          }

          v33 = OSLogFlushBuffers();
          if (v33)
          {
            v34 = v33;
            v35 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v45 = "writeMultipleBuffers";
              v46 = 1024;
              v47 = v34;
              goto LABEL_57;
            }
          }

          else
          {
LABEL_51:
            usleep(0x1E8480u);
          }

LABEL_58:
          abort_with_reason();
LABEL_59:
          PSSharedCameraStreamWriter::writeMultipleBuffers(buf);
LABEL_60:
          PSSharedCameraStreamWriter::writeMultipleBuffers(buf);
        }

        v22 = *(this + 193);
        if (v17)
        {
          if (v22)
          {
            if (v22 != 1)
            {
              goto LABEL_53;
            }

            v23 = IOSurfaceGetID(v17);
            SurfaceIndex = PSSharedIOSurface::getSurfaceIndex(*(this + 95), v23);
            if (SurfaceIndex < 0)
            {
              v43 = 0;
              v36 = PSSharedResource::getKey(this);
              a4 = "writeMultipleBuffers";
              asprintf(&v43, "%s:%s:%s:%d - (Camera Stream: %s) Could not find surface with id: %d in the Metadata IOSurface Writer", "PSSHAREDCAMERASTREAMWRITER", "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp", "writeMultipleBuffers", 538, v36, v23);
              a3 = &_ps_buffer_log;
              v37 = _ps_buffer_log;
              if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
              {
                v38 = PSSharedResource::getKey(this);
                *buf = 136316930;
                v45 = "writeMultipleBuffers";
                v46 = 1024;
                v47 = 538;
                v48 = 2080;
                v49 = "PSSHAREDCAMERASTREAMWRITER";
                v50 = 2080;
                v51 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp";
                v52 = 2080;
                v53 = "writeMultipleBuffers";
                v54 = 1024;
                v55 = 538;
                v56 = 2080;
                v57 = v38;
                v58 = 1024;
                v59 = v23;
                _os_log_impl(&dword_25EBC5000, v37, OS_LOG_TYPE_FAULT, "%s:%d %s:%s:%s:%d - (Camera Stream: %s) Could not find surface with id: %d in the Metadata IOSurface Writer", buf, 0x46u);
              }

              v39 = OSLogFlushBuffers();
              if (!v39)
              {
                goto LABEL_51;
              }

LABEL_55:
              v40 = v39;
              v35 = *a3;
              if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v45 = a4;
                v46 = 1024;
                v47 = v40;
LABEL_57:
                _os_log_impl(&dword_25EBC5000, v35, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
              }

              goto LABEL_58;
            }

            *(v16 + 24) = 1;
            *(v16 + 32) = SurfaceIndex;
          }

          else
          {
            Length = CFDataGetLength(v17);
            *(v16 + 32) = Length;
            if (Length > 0x16000)
            {
              PSSharedCameraStreamWriter::writeMultipleBuffers(buf);
LABEL_53:
              PSSharedCameraStreamWriter::writeMultipleBuffers(buf, this);
LABEL_54:
              v39 = PSSharedCameraStreamWriter::writeMultipleBuffers(buf, this);
              goto LABEL_55;
            }

            v61.length = Length;
            v61.location = 0;
            CFDataGetBytes(v17, v61, (v16 + 40));
            *(v16 + 24) = 0;
          }
        }

        else if (v22)
        {
          if (v22 != 1)
          {
            goto LABEL_54;
          }

          *(v16 + 32) = -1;
        }

        else
        {
          bzero((v16 + 32), 0x16008uLL);
        }

        (*(*this + 176))(this, v16, v21);
        v11 = *(this + 85);
      }

      else
      {
        *v16 = 0;
        *(v16 + 8) = v15;
      }

      ++v12;
      v13 += 32;
    }

    while (v11 > v12);
  }

  if ((v41 & 0x10) != 0)
  {
    v27 = PSShbufferGroupWriter::releaseWriteBuffers(*(this + 92), ResourceAt, 0);
  }

  else
  {
    if ((v41 & 0x100) == 0)
    {
      v26 = 0x7FFFFFFFLL;
      goto LABEL_37;
    }

    v27 = PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(*(this + 92), ResourceAt, 0);
  }

  v26 = v27;
LABEL_37:
  if ((PSShbufferGroupReader::releaseSharedLock(*(this + 92), 1) & 1) == 0)
  {
    goto LABEL_60;
  }

  if (v41)
  {
    if ((v41 & 0x10) != 0)
    {
      if ((v41 & 0x100) != 0)
      {
        PSSharedCameraStreamWriter::writeMultipleBuffers();
      }

      (*(*this + 136))(this, 0);
      goto LABEL_42;
    }

LABEL_63:
    PSSharedCameraStreamWriter::writeMultipleBuffers();
  }

LABEL_42:
  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

void PSSharedCameraStreamWriter::~PSSharedCameraStreamWriter(PSSharedCameraStreamWriter *this)
{
  v11 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CE0A0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "PSSHAREDCAMERASTREAMWRITER";
    v9 = 2080;
    v10 = "~PSSharedCameraStreamWriter";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye!", &v7, 0x16u);
    v2 = _ps_buffer_log;
  }

  v3 = *(this + 92);
  if (v3)
  {
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG) || (v7 = 136315394, v8 = "PSSHAREDCAMERASTREAMWRITER", v9 = 2080, v10 = "~PSSharedCameraStreamWriter", _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye!", &v7, 0x16u), (v3 = *(this + 92)) != 0))
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 92) = 0;
    v2 = _ps_buffer_log;
  }

  v4 = *(this + 93);
  if (v4)
  {
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG) || (v7 = 136315394, v8 = "PSSHAREDCAMERASTREAMWRITER", v9 = 2080, v10 = "~PSSharedCameraStreamWriter", _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye!", &v7, 0x16u), (v4 = *(this + 93)) != 0))
    {
      (*(*v4 + 8))(v4);
    }

    *(this + 93) = 0;
    v2 = _ps_buffer_log;
  }

  v5 = *(this + 94);
  if (v5)
  {
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG) || (v7 = 136315394, v8 = "PSSHAREDCAMERASTREAMWRITER", v9 = 2080, v10 = "~PSSharedCameraStreamWriter", _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye!", &v7, 0x16u), (v5 = *(this + 94)) != 0))
    {
      (*(*v5 + 8))(v5);
    }

    *(this + 94) = 0;
    v2 = _ps_buffer_log;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "PSSHAREDCAMERASTREAMWRITER";
    v9 = 2080;
    v10 = "~PSSharedCameraStreamWriter";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye!", &v7, 0x16u);
  }

  PSSharedCameraStream::~PSSharedCameraStream(this);
  v6 = *MEMORY[0x277D85DE8];
}

{
  PSSharedCameraStreamWriter::~PSSharedCameraStreamWriter(this);

  JUMPOUT(0x25F8CA500);
}

void OUTLINED_FUNCTION_15_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_FAULT, a4, &buf, 0x40u);
}

uint64_t PSSharedCameraSuperframeStreamWriter::initCameraSurfaces(PSShbufferGroupWriter **this)
{
  if (!*(this + 193) || this[95] && (this[94] || this[93]))
  {
    return PSSharedCameraSurfaceStreamWriter::initCameraSurfaces(this);
  }

  else
  {
    return 0;
  }
}

void PSSharedCameraSuperframeStreamWriter::writeMetadata(uint64_t a1, uint64_t a2, IOSurfaceRef buffer)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 772);
  *(a2 + 24) = v5;
  if (!buffer)
  {
    if (v5)
    {
      *(a2 + 32) = -1;
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "PSSHAREDCAMERASTREAMWRITER";
        v20 = 2080;
        *v21 = "writeMetadata";
        *&v21[8] = 2080;
        *&v21[10] = PSSharedResource::getKey(a1);
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s:%s - (Camera Stream - %s) Received a NULL metadata", buf, 0x20u);
      }

      goto LABEL_11;
    }

    buffer = 0;
    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_10:
    PSSharedCameraSurfaceStreamWriter::writeMetadata(a1, a2, buffer);
    goto LABEL_11;
  }

  ID = IOSurfaceGetID(buffer);
  SurfaceIndex = PSSharedIOSurface::getSurfaceIndex(*(a1 + 760), ID);
  if ((SurfaceIndex & 0x80000000) == 0)
  {
    *(a2 + 32) = SurfaceIndex;
LABEL_11:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = 0;
  Key = PSSharedResource::getKey(a1);
  asprintf(&v17, "%s:%s:%s:%d - (Camera Stream: %s) Could not find surface with id: %d in the Metadata IOSurface Writer", "PSSHAREDCAMERASTREAMWRITER", "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraSuperframeStreamWriter.cpp", "writeMetadata", 90, Key, ID);
  v11 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v12 = PSSharedResource::getKey(a1);
    *buf = 136316930;
    v19 = "writeMetadata";
    v20 = 1024;
    *v21 = 90;
    *&v21[4] = 2080;
    *&v21[6] = "PSSHAREDCAMERASTREAMWRITER";
    *&v21[14] = 2080;
    *&v21[16] = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraSuperframeStreamWriter.cpp";
    v22 = 2080;
    v23 = "writeMetadata";
    v24 = 1024;
    v25 = 90;
    v26 = 2080;
    v27 = v12;
    v28 = 1024;
    v29 = ID;
    _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_FAULT, "%s:%d %s:%s:%s:%d - (Camera Stream: %s) Could not find surface with id: %d in the Metadata IOSurface Writer", buf, 0x46u);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = v13;
    v15 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "writeMetadata";
      v20 = 1024;
      *v21 = v14;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = abort_with_reason();
  PSSharedCameraSuperframeStreamWriter::~PSSharedCameraSuperframeStreamWriter(v16);
}

void PSSharedCameraSuperframeStreamWriter::~PSSharedCameraSuperframeStreamWriter(PSSharedCameraSuperframeStreamWriter *this)
{
  PSSharedCameraSurfaceStreamWriter::~PSSharedCameraSurfaceStreamWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedCameraSurfaceStreamWriter::setupStreamPropertiesWithKey(PSSharedCameraSurfaceStreamWriter *this, const char *__s2)
{
  v4 = isCVPixelBufferCameraStreamWriter(__s2);
  StreamIndex = cameraStreamWriterGetStreamIndex(__s2);
  v6 = isCameraStreamWriterWithParentSurface(__s2);
  v7 = shouldDeallocateForCameraStream(__s2);
  if (shouldDecrementUseCountForCameraStream(__s2))
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  *(this + 780) = v4;
  *(this + 196) = StreamIndex;
  *(this + 792) = v6;
  *(this + 197) = v8 | v7;
  *(this + 208) = cameraStreamWriterGetCamNumber(__s2);
  return 0;
}

uint64_t PSSharedCameraSurfaceStreamWriter::writeBuffers(PSSharedCameraSurfaceStreamWriter *this, void *a2, void *a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8[0] = a2;
  v6 = a4;
  result = (*(*this + 120))(this, v8, &v7, &v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSharedCameraSurfaceStreamWriter::initCameraSurfaces(PSShbufferGroupWriter **this)
{
  v39 = *MEMORY[0x277D85DE8];
  PSShbufferGroupWriter::finalizeSetupWithoutUpdatingStatus(this[92]);
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v3 = &cam_sp[67 * *(this + 208) + 3];
    *buf = 136315650;
    v28 = "PSSHAREDCAMERASTREAMWRITER";
    v29 = 2080;
    *v30 = "initCameraSurfaces";
    *&v30[8] = 2080;
    *&v30[10] = v3;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s - Finalized buffer group setup for %s\n", buf, 0x20u);
  }

  v4 = this[85];
  v5 = (*(this + 163) + *(this + 162)) * v4;
  if (v5 % v4)
  {
LABEL_23:
    PSSharedCameraSurfaceStreamWriter::initCameraSurfaces(buf);
  }

  if (v4 > v5)
  {
    goto LABEL_13;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    ResourceAt = PSShbufferGroupWriter::getResourceAt(this[92], v6);
    v9 = this[85];
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = ResourceAt;
    for (i = 0; i < v9; ++i)
    {
      v12 = *(v10 + 32 * this[90] + 32 * i + 8);
      do
      {
        v13 = PSSharedCameraStreamWriter::reserve_buffer(this, v7++, (v12 + 90152));
        v14 = *(this[103] + 57);
        if (v7 >= v14)
        {
          v26 = 0;
          asprintf(&v26, "%s %s Insufficient free surfaces to reserve for %s. Total surfaces available = %d, needed to reserve = %d, able to reserve = %lu", "PSSHAREDCAMERASTREAMWRITER", "initCameraSurfaces", &cam_sp[67 * *(this + 208) + 3], v14, v5, i + this[85] * v6);
          v19 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
          {
            v20 = &cam_sp[67 * *(this + 208) + 3];
            v21 = *(this[103] + 57);
            v22 = i + this[85] * v6;
            *buf = 136316930;
            v28 = "initCameraSurfaces";
            v29 = 1024;
            *v30 = 180;
            *&v30[4] = 2080;
            *&v30[6] = "PSSHAREDCAMERASTREAMWRITER";
            *&v30[14] = 2080;
            *&v30[16] = "initCameraSurfaces";
            v31 = 2080;
            v32 = v20;
            v33 = 1024;
            v34 = v21;
            v35 = 1024;
            v36 = v5;
            v37 = 2048;
            v38 = v22;
            _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_FAULT, "%s:%d %s %s Insufficient free surfaces to reserve for %s. Total surfaces available = %d, needed to reserve = %d, able to reserve = %lu", buf, 0x46u);
          }

          v23 = OSLogFlushBuffers();
          if (v23)
          {
            v24 = v23;
            v25 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v28 = "initCameraSurfaces";
              v29 = 1024;
              *v30 = v24;
              _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
            }
          }

          else
          {
            usleep(0x1E8480u);
          }

          abort_with_reason();
          goto LABEL_23;
        }
      }

      while (v13);
      *(v12 + 16) = 1;
      *(v12 + 20) = v7 - 1;
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 24) = *(this + 193);
      v9 = this[85];
    }

LABEL_12:
    ++v6;
  }

  while (v5 / v9 > v6);
LABEL_13:
  *(this + 165) = 1;
  PSShbufferGroupWriter::finalizeSetupStatus(this[92]);
  v15 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v16 = &cam_sp[67 * *(this + 208) + 3];
    *buf = 136315650;
    v28 = "PSSHAREDCAMERASTREAMWRITER";
    v29 = 2080;
    *v30 = "initCameraSurfaces";
    *&v30[8] = 2080;
    *&v30[10] = v16;
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "%s:%s - Updated buffer group status for camera stream key: %s\n", buf, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(PSSharedCameraSurfaceStreamWriter *this, void **a2, void **a3, unint64_t *a4, __int16 a5)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!*(this + 165))
  {
    v10 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(this + 103) + 232);
      v12 = &cam_sp[67 * *(this + 208) + 3];
      *buf = 136315906;
      v72 = "PSSHAREDCAMERASTREAMWRITER";
      v73 = 2080;
      *v74 = "writeMultipleBuffers";
      *&v74[8] = 1024;
      *&v74[10] = v11;
      *&v74[14] = 2080;
      *&v74[16] = v12;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s:%s - THIS SHOULD NOT HAPPEN! surfaces_installed=%d for %s\n", buf, 0x26u);
    }

    v13 = *(this + 103);
    if (*(v13 + 232) != 1)
    {
      PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(this);
    }

    v14 = (*(this + 102))(v13 + 236, *(v13 + 228), *(this + 196));
    if (!v14)
    {
      PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers();
    }

    v15 = v14;
    (*(*this + 64))(this, v14, *(*(this + 103) + 228));
    free(v15);
  }

  if ((PSShbufferGroupReader::acquireSharedLock(*(this + 92), 1) & 1) == 0)
  {
    PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(buf);
  }

  v67 = a5;
  if (!*(this + 100) || !*(this + 101))
  {
LABEL_90:
    PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(buf);
  }

  if (*(this + 85))
  {
    for (i = 0; *(this + 85) > i; ++i)
    {
      v17 = a2[i];
      if (v17)
      {
        if (*(this + 780) == 1)
        {
          IOSurface = CVPixelBufferGetIOSurface(v17);
        }

        else
        {
          IOSurface = CVDataBufferGetIOSurface();
        }

        v19 = IOSurface;
        if (*(this + 792) == 1)
        {
          ParentID = IOSurfaceGetParentID();
        }

        else
        {
          ParentID = IOSurfaceGetID(IOSurface);
        }

        v21 = ParentID;
        *(*(this + 101) + 4 * i) = ParentID;
        if (*(this + 780) == 1)
        {
          BackingSurfaceIndex = PSSharedCVDataBufferWriter::getBackingSurfaceIndex(*(this + 93), ParentID);
        }

        else
        {
          BackingSurfaceIndex = PSSharedCVDataBufferWriter::getBackingSurfaceIndex(*(this + 94), ParentID);
        }

        *(*(this + 100) + 4 * i) = BackingSurfaceIndex;
        if ((BackingSurfaceIndex & 0x80000000) != 0)
        {
          v58 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            v59 = &cam_sp[67 * *(this + 208)];
            *buf = 136315906;
            v72 = "PSSHAREDCAMERASTREAMWRITER";
            v73 = 2080;
            *v74 = "writeMultipleBuffers";
            *&v74[8] = 2080;
            *&v74[10] = v59 + 3;
            *&v74[18] = 1024;
            *&v74[20] = v21;
            _os_log_impl(&dword_25EBC5000, v58, OS_LOG_TYPE_ERROR, "%s:%s- Could not find Surface for key:%s with parent id: %d\n", buf, 0x26u);
          }

          if (*(*(this + 103) + 228))
          {
            v60 = 0;
            do
            {
              if (*(this + 792) == 1)
              {
                ID = IOSurfaceGetParentID();
              }

              else
              {
                ID = IOSurfaceGetID(v19);
              }

              v62 = IOSurfaceLookup(ID);
              CFRelease(v62);
              ++v60;
            }

            while (v60 < *(*(this + 103) + 228));
          }

          goto LABEL_81;
        }

        if (*(this + 780) == 1)
        {
          BackingSurface = PSSharedCVDataBufferWriter::getBackingSurface(*(this + 93), BackingSurfaceIndex);
        }

        else
        {
          BackingSurface = PSSharedCVDataBufferWriter::getBackingSurface(*(this + 94), BackingSurfaceIndex);
        }

        v24 = BackingSurface;
        if (*(this + 792) != 1)
        {
          goto LABEL_29;
        }

        if (IOSurfaceGetUseCount(BackingSurface) > 0)
        {
          goto LABEL_62;
        }

        if ((*(this + 792) & 1) == 0)
        {
LABEL_29:
          if (IOSurfaceGetUseCount(v24) >= 2)
          {
LABEL_62:
            v52 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
            {
              UseCount = IOSurfaceGetUseCount(v24);
              v54 = *(this + 792);
              v55 = &cam_sp[67 * *(this + 208)];
              *buf = 136316418;
              v72 = "PSSHAREDCAMERASTREAMWRITER";
              v73 = 2080;
              *v74 = "writeMultipleBuffers";
              *&v74[8] = 1024;
              *&v74[10] = UseCount;
              *&v74[14] = 1024;
              *&v74[16] = v54 ^ 1;
              *&v74[20] = 1024;
              *&v74[22] = v54;
              LOWORD(v75[0]) = 2080;
              *(v75 + 2) = v55 + 3;
              _os_log_impl(&dword_25EBC5000, v52, OS_LOG_TYPE_ERROR, "%s:%s- magic 5 am event that is not a zero-buffer copy design error event occured on incoming surface: count=%d (expected %d) hasParentSurface=%d for cam=%s\n", buf, 0x32u);
            }

            PSShbufferGroupReader::releaseSharedLock(*(this + 92), 1);
            if ((v67 & 0x110) != 0)
            {
              v50 = 0x7FFFFFFFLL;
              goto LABEL_72;
            }

LABEL_81:
            abort();
          }
        }
      }
    }
  }

  v68 = PSShbufferGroupWriter::getWriteBuffers(*(this + 92), 0);
  v25 = *(this + 85);
  if (v25)
  {
    v26 = (v68 + 32 * *(this + 90) + 8);
    v27 = a2;
    do
    {
      v29 = *v26;
      v26 += 4;
      v28 = v29;
      v30 = *v27++;
      *v28 = v30 != 0;
      --v25;
    }

    while (v25);
    v31 = 0;
    v32 = v68 + 8;
    do
    {
      *(*(v32 + 32 * *(this + 90)) + 8) = a4[v31];
      if (a2[v31])
      {
        v33 = a3[v31];
      }

      (*(*this + 224))(this);
      ++v31;
      v34 = *(this + 85);
      v32 += 32;
    }

    while (v34 > v31);
    if (v34)
    {
      v35 = 0;
      v36 = v68 + 8;
      while (!a2[v35])
      {
LABEL_57:
        ++v35;
        v36 += 32;
        if (v34 <= v35)
        {
          goto LABEL_58;
        }
      }

      v37 = *(*(this + 100) + 4 * v35);
      v38 = *(*(this + 101) + 4 * v35);
      if (*(this + 780) == 1)
      {
        PSSharedCVDataBufferWriter::incBackSurfaceUseCount(*(this + 93), *(*(this + 100) + 4 * v35));
      }

      else
      {
        PSSharedCVDataBufferWriter::incBackSurfaceUseCount(*(this + 94), *(*(this + 100) + 4 * v35));
      }

      v39 = *(v36 + 32 * *(this + 90));
      v40 = v39[5];
      if ((v40 & 0x80000000) != 0)
      {
        PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers();
      }

      if (*(this + 780) == 1)
      {
        v41 = PSSharedCVDataBufferWriter::decBackSurfaceUseCount(*(this + 93), v39[5]);
      }

      else
      {
        v41 = PSSharedCVDataBufferWriter::decBackSurfaceUseCount(*(this + 94), v39[5]);
      }

      v42 = v41;
      if (v41 < 0)
      {
        PSShbufferGroupReader::releaseSharedLock(*(this + 92), 1);
        v70 = 0;
        asprintf(&v70, "%s:%s- Use_count (%d) < 0. This should not be possible\n", "PSSHAREDCAMERASTREAMWRITER", "writeMultipleBuffers", v42);
        v63 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136316162;
          v72 = "writeMultipleBuffers";
          v73 = 1024;
          *v74 = 442;
          *&v74[4] = 2080;
          *&v74[6] = "PSSHAREDCAMERASTREAMWRITER";
          *&v74[14] = 2080;
          *&v74[16] = "writeMultipleBuffers";
          *&v74[24] = 1024;
          v75[0] = v42;
          _os_log_impl(&dword_25EBC5000, v63, OS_LOG_TYPE_FAULT, "%s:%d %s:%s- Use_count (%d) < 0. This should not be possible\n", buf, 0x2Cu);
        }

        v64 = OSLogFlushBuffers();
        if (v64)
        {
          v65 = v64;
          v66 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v72 = "writeMultipleBuffers";
            v73 = 1024;
            *v74 = v65;
            _os_log_impl(&dword_25EBC5000, v66, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
          }
        }

        else
        {
          usleep(0x1E8480u);
        }

        abort_with_reason();
        goto LABEL_90;
      }

      if (v41)
      {
        v43 = a2;
        v44 = *(this + 780);
        log = _ps_buffer_log;
        v45 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
        if (v44 == 1)
        {
          a2 = v43;
          if (v45)
          {
            PSSharedCVDataBufferWriter::getBackingSurface(*(this + 93), v40);
            v46 = IOSurfaceGetParentID();
            *buf = 136315906;
            v72 = "PSSHAREDCAMERASTREAMWRITER";
            v73 = 2080;
            *v74 = "writeMultipleBuffers";
            *&v74[8] = 1024;
            *&v74[10] = v42;
            *&v74[14] = 1024;
            *&v74[16] = v46;
            v47 = log;
LABEL_55:
            _os_log_impl(&dword_25EBC5000, v47, OS_LOG_TYPE_ERROR, "%s:%s- magic noon event use count:%d parentID:%d\n", buf, 0x22u);
          }
        }

        else
        {
          a2 = v43;
          if (v45)
          {
            v48 = PSSharedCVDataBufferWriter::getBackingSurface(*(this + 94), v40);
            v49 = IOSurfaceGetID(v48);
            *buf = 136315906;
            v72 = "PSSHAREDCAMERASTREAMWRITER";
            v73 = 2080;
            *v74 = "writeMultipleBuffers";
            *&v74[8] = 1024;
            *&v74[10] = v42;
            *&v74[14] = 1024;
            *&v74[16] = v49;
            v47 = log;
            goto LABEL_55;
          }
        }
      }

      v39[22538] = v38;
      v39[4] = 1;
      v39[5] = v37;
      v34 = *(this + 85);
      goto LABEL_57;
    }
  }

LABEL_58:
  if ((v67 & 0x10) != 0)
  {
    v51 = PSShbufferGroupWriter::releaseWriteBuffers(*(this + 92), v68, 0);
  }

  else
  {
    if ((v67 & 0x100) == 0)
    {
      v50 = 0x7FFFFFFFLL;
      goto LABEL_68;
    }

    v51 = PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(*(this + 92), v68, 0);
  }

  v50 = v51;
LABEL_68:
  PSShbufferGroupReader::releaseSharedLock(*(this + 92), 1);
  if (v67)
  {
    if ((v67 & 0x10) == 0)
    {
      PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers();
    }

    if ((v67 & 0x100) != 0)
    {
      PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers();
    }

    (*(*this + 136))(this, 0);
  }

LABEL_72:
  v56 = *MEMORY[0x277D85DE8];
  return v50;
}

void PSSharedCameraSurfaceStreamWriter::~PSSharedCameraSurfaceStreamWriter(PSSharedCameraSurfaceStreamWriter *this)
{
  *this = &unk_2870CE2B8;
  pthread_mutex_lock(*(this + 103));
  v2 = *(this + 103);
  *(v2 + 12 * cam_sp[67 * *(this + 208) + 2] + 88) = 0;
  v3 = *(v2 + 72) - 1;
  *(v2 + 72) = v3;
  if (!v3)
  {
    if (*(v2 + 232))
    {
      PSSharedCameraSurfaceStreamWriter::~PSSharedCameraSurfaceStreamWriter();
    }

    *(v2 + 68) = 0;
    *(v2 + 76) = 0;
    *(v2 + 80) = 0;
  }

  pthread_mutex_unlock(v2);
  free(*(this + 100));
  free(*(this + 101));

  PSSharedCameraStreamWriter::~PSSharedCameraStreamWriter(this);
}

{
  PSSharedCameraSurfaceStreamWriter::~PSSharedCameraSurfaceStreamWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedCameraSurfaceStreamWriter::writeMetadata(PSSharedResource *a1, uint64_t a2, CFDataRef theData)
{
  *(a2 + 24) = 0;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    *(a2 + 32) = Length;
    if (Length > 0x16000)
    {
      PSSharedCameraSurfaceStreamWriter::writeMetadata(&v8, a1);
    }

    v9.length = Length;
    v9.location = 0;
    CFDataGetBytes(theData, v9, (a2 + 40));
  }

  else
  {
    *(a2 + 32) = 0;
  }

  return 0;
}

uint64_t PSSharedCameraSurfaceStreamWriter::start(pthread_mutex_t **this)
{
  v31 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(this[103]);
  v2 = this[103];
  v3 = *&v2[1].__opaque[4] + 1;
  *&v2[1].__opaque[4] = v3;
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = *&v2[3].__opaque[32];
    v6 = &cam_sp[67 * *(this + 208) + 3];
    v21 = 136316162;
    v22 = "PSSHAREDCAMERASTREAMWRITER";
    v23 = 2080;
    v24 = "start";
    v25 = 2080;
    v26 = v6;
    v27 = 1024;
    v28 = v3;
    v29 = 1024;
    v30 = v5;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s:%s: for %s sfl->cams_start_called=%d! sfl->surfaces_installed=%d", &v21, 0x2Cu);
    v2 = this[103];
  }

  if (*&v2[3].__opaque[32] == 1)
  {
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = &cam_sp[67 * *(this + 208) + 3];
      v21 = 136315650;
      v22 = "PSSHAREDCAMERASTREAMWRITER";
      v23 = 2080;
      v24 = "start";
      v25 = 2080;
      v26 = v8;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s:%s - calling child_surfaces_create_fp for %s\n", &v21, 0x20u);
      v2 = this[103];
    }

    v9 = (this[102])(&v2[3].__opaque[36], *&v2[3].__opaque[28], *(this + 196));
    if (!v9)
    {
      PSSharedCameraSurfaceStreamWriter::start();
    }

    v10 = v9;
    pthread_mutex_unlock(this[103]);
    v11 = *(this + 780);
    v12 = _ps_buffer_log;
    v13 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (v11 == 1)
    {
      if (v13)
      {
        v14 = &cam_sp[67 * *(this + 208) + 3];
        v21 = 136315650;
        v22 = "PSSHAREDCAMERASTREAMWRITER";
        v23 = 2080;
        v24 = "start";
        v25 = 2080;
        v26 = v14;
        _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s:%s - Installing CVPixelBufferBackingSurfaces cam(%s) \n", &v21, 0x20u);
      }

      (*&(*this)[2].__opaque[48])(this, v10, *&this[103][3].__opaque[28]);
    }

    else
    {
      if (v13)
      {
        v18 = &cam_sp[67 * *(this + 208) + 3];
        v21 = 136315650;
        v22 = "PSSHAREDCAMERASTREAMWRITER";
        v23 = 2080;
        v24 = "start";
        v25 = 2080;
        v26 = v18;
        _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s:%s - Installing CVDataBufferBackingSurfaces cam(%s) \n", &v21, 0x20u);
      }

      ((*this)[3].__sig)(this, v10, *&this[103][3].__opaque[28]);
    }

    free(v10);
  }

  else
  {
    v15 = *&v2[1].__opaque[4];
    v16 = _ps_buffer_log;
    if (v15 >= 2)
    {
      PSSharedCameraSurfaceStreamWriter::start(_ps_buffer_log, this, v15);
    }

    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v17 = &cam_sp[67 * *(this + 208) + 3];
      v21 = 136315650;
      v22 = "PSSHAREDCAMERASTREAMWRITER";
      v23 = 2080;
      v24 = "start";
      v25 = 2080;
      v26 = v17;
      _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s:%s - Waiting for installCVPixelBufferBackingSurfaces for cam(%s)\n", &v21, 0x20u);
      v2 = this[103];
    }

    pthread_mutex_unlock(v2);
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedCameraSurfaceStreamWriter::stop(pthread_mutex_t **this)
{
  v16 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(this[103]);
  v2 = this[103];
  v3 = *&v2[1].__opaque[4] - 1;
  *&v2[1].__opaque[4] = v3;
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = &cam_sp[67 * *(this + 208)];
    v8 = 136315906;
    v9 = "PSSHAREDCAMERASTREAMWRITER";
    v10 = 2080;
    v11 = "stop";
    v12 = 2080;
    v13 = v5 + 3;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s:%s: for %s sfl->cams_start_called=%d!", &v8, 0x26u);
    v2 = this[103];
    v3 = *&v2[1].__opaque[4];
  }

  if (!v3)
  {
    *&v2[3].__opaque[32] = 0;
  }

  pthread_mutex_unlock(v2);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedCameraSurfaceStreamWriter::init_aperature(PSSharedCameraSurfaceStreamWriter *this)
{
  v1 = this;
  v16 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109890;
    v9[1] = 0;
    v10 = 1024;
    v11 = 1;
    v12 = 2080;
    v13 = "Oct 10 2025";
    v14 = 2080;
    v15 = "21:50:57";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSSharedCameraStreamWriter version - %d.%d built on %s %s\n", v9, 0x22u);
  }

  if (v1 > 0xC8)
  {
    PSSharedCameraSurfaceStreamWriter::init_aperature();
  }

  v3 = 0;
  v4 = &PSSharedCameraSurfaceStreamWriter::sflayouts;
  do
  {
    v5 = (&PSSharedCameraSurfaceStreamWriter::sflayouts + 1040 * v3);
    pthread_mutex_init(v5, 0);
    LODWORD(v5[1].__sig) = v3;
    HIDWORD(v5[1].__sig) = 0;
    v6 = 88;
    *v5[1].__opaque = 0;
    do
    {
      *&v4[v6] = 0;
      v6 += 12;
    }

    while (v6 != 232);
    *&v5[3].__opaque[28] = 0;
    *&v5[3].__opaque[32] = 0;
    *&v5[1].__opaque[8] = 0;
    ++v3;
    v4 += 1040;
  }

  while (v3 != 12);
  PSSharedCameraSurfaceStreamWriter::sfl_initialized = 1;
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedCameraSurfaceStreamWriter::createChildSurfacesFromParentSurfaces(PSSharedCameraSurfaceStreamWriter *this, __IOSurface **a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = &cam_sp[67 * *(this + 208)];
    v8 = *(v7 + 1);
    *buf = 136316162;
    v25 = "PSSHAREDCAMERASTREAMWRITER";
    v26 = 2080;
    v27 = "createChildSurfacesFromParentSurfaces";
    v28 = 1024;
    v29 = a3;
    v30 = 2080;
    *v31 = v7 + 12;
    *&v31[8] = 1024;
    *&v31[10] = v8;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEFAULT, "%s:%s - Creating CVPixelBuffers (%d) for %s sfID=%d\n", buf, 0x2Cu);
  }

  v9 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
  if (!v9)
  {
    PSSharedCameraSurfaceStreamWriter::createChildSurfacesFromParentSurfaces(buf);
    goto LABEL_15;
  }

  v10 = v9;
  if (a3)
  {
    v11 = 0;
    v12 = MEMORY[0x277D85F48];
    do
    {
      ID = IOSurfaceGetID(a2[v11]);
      v10[v11] = ID;
      v14 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(this + 208);
        *buf = 136316162;
        v25 = "PSSHAREDCAMERASTREAMWRITER";
        v26 = 2080;
        v27 = "createChildSurfacesFromParentSurfaces";
        v28 = 1024;
        v29 = v11;
        v30 = 1024;
        *v31 = ID;
        *&v31[4] = 2080;
        *&v31[6] = &cam_sp[67 * v15 + 3];
        _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s:%s - parentSurfacesID[%d]=%d for %s\n", buf, 0x2Cu);
      }

      v16 = a2[v11];
      v17 = *v12;
      if (IOSurfaceSetOwnership())
      {
        v18 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          v19 = cam_sp[67 * *(this + 208) + 1];
          *buf = 136315394;
          v25 = "createChildSurfacesFromParentSurfaces";
          v26 = 1024;
          LODWORD(v27) = v19;
          _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_DEBUG, "%s:Setting ownership of parent surface for SFID=%d failed. Surfaces are probably not marked purgeable.", buf, 0x12u);
        }
      }

      ++v11;
    }

    while (a3 != v11);
  }

  v20 = (*(this + 102))(v10, a3, *(this + 196));
  if (!v20)
  {
LABEL_15:
    PSSharedCameraSurfaceStreamWriter::createChildSurfacesFromParentSurfaces();
  }

  v21 = v20;
  free(v10);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t PSSharedCameraSurfaceStreamWriter::installCVPixelBufferBackingSurfaces(PSSharedCameraSurfaceStreamWriter *this, __IOSurface **a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = &cam_sp[67 * *(this + 208)];
    v7 = v6[1];
    *buf = 136316162;
    v15 = "PSSHAREDCAMERASTREAMWRITER";
    v16 = 2080;
    v17 = "installCVPixelBufferBackingSurfaces";
    v18 = 1024;
    v19 = a3;
    v20 = 2080;
    v21 = v6 + 3;
    v22 = 1024;
    LODWORD(v23) = v7;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEFAULT, "%s:%s - Installing CVPixelBuffers (%d) for %s sfID=%d\n", buf, 0x2Cu);
  }

  v8 = *(this + 103);
  if (a3)
  {
    v9 = *(v8 + 228);
    if (v9 == a3)
    {
      if (!*(this + 94))
      {
        operator new();
      }

      PSSharedCameraSurfaceStreamWriter::installCVPixelBufferBackingSurfaces();
    }

    PSSharedCameraSurfaceStreamWriter::installCVPixelBufferBackingSurfaces(v9, this);
  }

  pthread_mutex_lock(v8);
  v10 = *(this + 103);
  v11 = *(v10 + 232);
  pthread_mutex_unlock(v10);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void PSSharedCameraSurfaceStreamWriter::_installCVPixelBufferBackingSurfaces(PSSharedCameraSurfaceStreamWriter *this, __IOSurface **a2, IOSurfaceID a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = &cam_sp[67 * *(this + 208)];
    v7 = v6[1];
    *buf = 136316674;
    v18 = "PSSHAREDCAMERASTREAMWRITER";
    v19 = 2080;
    v20 = "_installCVPixelBufferBackingSurfaces";
    v21 = 1024;
    v22 = a3;
    v23 = 2080;
    v24 = v6 + 3;
    v25 = 1024;
    v26 = v7;
    v27 = 2080;
    Key = PSSharedResource::getKey(this);
    v29 = 1024;
    v30 = a3;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s:%s - Installing CVPixelBuffers (%d) for %s sfID=%d key=%s num_surfaces=%d\n", buf, 0x3Cu);
  }

  v8 = *(*(this + 103) + 228);
  if (v8 == a3)
  {
    if (!*(this + 94))
    {
      if (a3)
      {
        v9 = a2;
        v10 = this + 16;
        v11 = a3;
        v12 = _ps_buffer_log;
        do
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = *v9;
            ID = IOSurfaceGetID(*v9);
            UseCount = IOSurfaceGetUseCount(v13);
            *buf = 136315906;
            v18 = "_installCVPixelBufferBackingSurfaces";
            v19 = 2080;
            v20 = v10;
            v21 = 1024;
            v22 = ID;
            v23 = 1024;
            LODWORD(v24) = UseCount;
            _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "(%s): key:%s IOSurfaceID:%d IOSurfaceUseCount:%d", buf, 0x22u);
            v12 = _ps_buffer_log;
          }

          ++v9;
          --v11;
        }

        while (v11);
      }

      operator new();
    }

    PSSharedCameraSurfaceStreamWriter::_installCVPixelBufferBackingSurfaces();
  }

  PSSharedCameraSurfaceStreamWriter::_installCVPixelBufferBackingSurfaces(v8, this);
}

void PSSharedCameraSurfaceStreamWriter::installCVPixelBuffer(PSSharedCameraSurfaceStreamWriter *this, __CVBuffer **a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v7 = "PSSHAREDCAMERASTREAMWRITER";
    v8 = 2080;
    v9 = "installCVPixelBuffer";
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s:%s - Installing CVPixelBuffers (%d) \n", buf, 0x1Cu);
  }

  if (*(this + 173) + (*(this + 163) + *(this + 162)) * *(this + 170) == a3)
  {
    if (!*(this + 94))
    {
      operator new();
    }

    PSSharedCameraSurfaceStreamWriter::installCVPixelBuffer();
  }

  PSSharedCameraSurfaceStreamWriter::installCVPixelBuffer();
}

uint64_t PSSharedCameraSurfaceStreamWriter::installCVDataBufferBackingSurfaces(PSSharedCameraSurfaceStreamWriter *this, __IOSurface **a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = &cam_sp[67 * *(this + 208)];
    v7 = v6[1];
    v14 = 136316162;
    v15 = "PSSHAREDCAMERASTREAMWRITER";
    v16 = 2080;
    v17 = "installCVDataBufferBackingSurfaces";
    v18 = 1024;
    *v19 = a3;
    *&v19[4] = 2080;
    *&v19[6] = v6 + 3;
    v20 = 1024;
    LODWORD(v21) = v7;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEFAULT, "%s:%s - Installing CVDataBuffers (%d) for %s sfID=%d\n", &v14, 0x2Cu);
  }

  v8 = *(this + 103);
  if (a3)
  {
    v9 = *(v8 + 228);
    if (v9 == a3)
    {
      if (!*(this + 93))
      {
        operator new();
      }

      PSSharedCameraSurfaceStreamWriter::installCVDataBufferBackingSurfaces();
    }

    PSSharedCameraSurfaceStreamWriter::installCVDataBufferBackingSurfaces(v9, this);
  }

  pthread_mutex_lock(v8);
  v10 = *(this + 103);
  v11 = *(v10 + 232);
  pthread_mutex_unlock(v10);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void PSSharedCameraSurfaceStreamWriter::_installCVDataBufferBackingSurfaces(PSSharedCameraSurfaceStreamWriter *this, __IOSurface **a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = &cam_sp[67 * *(this + 208)];
    v7 = v6[1];
    v9 = 136316162;
    v10 = "PSSHAREDCAMERASTREAMWRITER";
    v11 = 2080;
    v12 = "_installCVDataBufferBackingSurfaces";
    v13 = 1024;
    v14 = a3;
    v15 = 2080;
    v16 = v6 + 3;
    v17 = 1024;
    LODWORD(v18) = v7;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s:%s - Installing CVPixelBuffers (%d) for %s sfID=%d\n", &v9, 0x2Cu);
  }

  v8 = *(*(this + 103) + 228);
  if (v8 == a3)
  {
    if (!*(this + 93))
    {
      operator new();
    }

    PSSharedCameraSurfaceStreamWriter::_installCVDataBufferBackingSurfaces();
  }

  PSSharedCameraSurfaceStreamWriter::_installCVDataBufferBackingSurfaces(v8, this);
}

void PSSharedCameraSurfaceStreamWriter::installCVDataBuffer(PSSharedCameraSurfaceStreamWriter *this, __CVBuffer **a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v8 = "PSSHAREDCAMERASTREAMWRITER";
    v9 = 2080;
    v10 = "installCVDataBuffer";
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s:%s - Installing CVDataBuffers (%d) \n", buf, 0x1Cu);
  }

  v6 = *(*(this + 103) + 228);
  if (v6 == a3)
  {
    if (!*(this + 93))
    {
      operator new();
    }

    PSSharedCameraSurfaceStreamWriter::installCVDataBuffer();
  }

  PSSharedCameraSurfaceStreamWriter::installCVDataBuffer(a3, v6);
}

void OUTLINED_FUNCTION_3_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x1Cu);
}

BOOL OUTLINED_FUNCTION_8_2()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t PSCommsBase::getServerMapLock(PSCommsBase *this)
{
  {
    operator new();
  }

  return PSCommsBase::getServerMapLock(void)::s_serverMapLock;
}

uint64_t PSCommsBase::getServerToPortMap(PSCommsBase *this)
{
  {
    operator new();
  }

  return PSCommsBase::getServerToPortMap(void)::s_serverPortMap;
}

void PSCommsBase::PSCommsBase(PSCommsBase *this, void *(*a2)(void *), void *a3, int a4)
{
  v13 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CE3C8;
  *(this + 8) = a4;
  name = 0;
  *&v10.flags = xmmword_25EC2CCC8;
  v10.reserved[1] = 0;
  if (a4)
  {
    v10.flags = 4112;
  }

  v7 = mach_port_construct(*MEMORY[0x277D85F48], &v10, 0, &name);
  if (v7)
  {
    PSCommsBase::PSCommsBase(&buf, v7);
  }

  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = name;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "CommsBase: created rcv port: %d\n", &buf, 8u);
  }

  *(this + 3) = name;
  *(this + 3) = a2;
  *(this + 4) = a3;
  v9 = *MEMORY[0x277D85DE8];
}

void PSCommsBase::~PSCommsBase(PSCommsBase *this)
{
  *this = &unk_2870CE3C8;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "+CommsBase:~CommsBase: Bye!\n", buf, 2u);
  }

  v3 = MEMORY[0x277D85F48];
  mach_port_deallocate(*MEMORY[0x277D85F48], *(this + 3));
  mach_port_mod_refs(*v3, *(this + 3), 1u, -1);
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "-CommsBase:~CommsBase: Bye!\n", v5, 2u);
  }
}

{
  PSCommsBase::~PSCommsBase(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t ps_comms_client_send_with_reply_port(PSCommsClient *a1, mach_msg_header_t *a2, mach_msg_size_t a3, mach_msg_id_t a4)
{
  if (*(a1 + 8) == 1)
  {
    v9 = ps_comms_client_send_with_reply_port_cold_1(&v11);
    return ps_comms_client_send_to(v9);
  }

  else
  {
    recv_port = PSCommsClient::get_recv_port(a1);
    return PSCommsClient::send_ool_ports_client_to_server(a1, a2, a3, &recv_port, 1u, a4);
  }
}

uint64_t ps_delete_comms_client(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t PSCommsClient::connectServer(PSCommsClient *this, mach_port_t *a2, unsigned int *a3)
{
  v3 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v6 = _ps_buffer_log;
  v7 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "connectServer";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = this;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "%s: %s", &buf, 0x16u);
  }

  ServerMapLock = PSCommsBase::getServerMapLock(v7);
  std::mutex::lock(ServerMapLock);
  v9 = 5;
  if (this && a2)
  {
    v25 = ServerMapLock;
    v10 = std::string::basic_string[abi:ne200100]<0>(&__p, this);
    ServerToPortMap = PSCommsBase::getServerToPortMap(v10);
    v12 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(ServerToPortMap, &__p.__r_.__value_.__l.__data_);
    PSCommsBase::getServerToPortMap(v12);
    if (v12)
    {
      v13 = v12[6] + 1;
      v12[6] = v13;
      v14 = *(v12 + 10);
      *a2 = v14;
      v15 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "connectServer";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = this;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        v28 = v14;
        v29 = 2048;
        *v30 = v13;
        _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "%s: Found server returning existing(%s) at port %d ref_count (%llu)", &buf, 0x26u);
      }
    }

    else
    {
      v16 = 10000;
      while (1)
      {
        v9 = bootstrap_look_up(*MEMORY[0x277D85F18], this, a2);
        v17 = _ps_buffer_log;
        if (!v9)
        {
          break;
        }

        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          v18 = getpid();
          v19 = bootstrap_strerror(v9);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
          *(buf.__r_.__value_.__r.__words + 4) = "connectServer";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = this;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
          v28 = v18;
          v29 = 1024;
          *v30 = v9;
          *&v30[4] = 2080;
          *&v30[6] = v19;
          _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_ERROR, "%s: Cannot find server (%s): bootstrap_look_up() for pid:(%d) failed with code 0x%x %s\n", &buf, 0x2Cu);
        }

        usleep(v16);
        if (2 * v16 >= 0xF4240)
        {
          v16 = 1000000;
        }

        else
        {
          v16 *= 2;
        }

        if ((v3 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v20 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "connectServer";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = this;
        _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEBUG, "%s: Found server (%s) bootstrap port\n", &buf, 0x16u);
      }

      v21 = *a2;
      v22 = PSCommsBase::getServerToPortMap(v20);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __p;
      }

      v28 = v21;
      *&v30[2] = 1;
      v30[10] = 0;
      std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::__emplace_unique_key_args<std::string,std::pair<std::string,server_info_s>>(v22, &buf.__r_.__value_.__l.__data_);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    v9 = 0;
LABEL_25:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ServerMapLock = v25;
  }

  std::mutex::unlock(ServerMapLock);
  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_25EBF8E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(a10);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t PSCommsClient::disconnectServer(PSCommsClient *this, const char *a2, unsigned int *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  v6 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    *buf = 136315394;
    v31 = "disconnectServer";
    v32 = 2080;
    *v33 = this;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s: %s", buf, 0x16u);
  }

  ServerMapLock = PSCommsBase::getServerMapLock(v6);
  std::mutex::lock(ServerMapLock);
  v8 = 4;
  if (!this || !a2 || !*a2)
  {
    goto LABEL_23;
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(__p, this);
  ServerToPortMap = PSCommsBase::getServerToPortMap(v9);
  v11 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(ServerToPortMap, __p);
  PSCommsBase::getServerToPortMap(v11);
  if (!v11)
  {
    v21 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "disconnectServer";
      v32 = 2080;
      *v33 = this;
      _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_ERROR, "%s: Failed to find server name:(%s) in map.", buf, 0x16u);
    }

    v8 = 5;
    goto LABEL_21;
  }

  v12 = v11[6] - 1;
  v11[6] = v12;
  v13 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v14 = *a2;
    *buf = 136315906;
    v31 = "disconnectServer";
    v32 = 2080;
    *v33 = this;
    *&v33[8] = 1024;
    *&v33[10] = v14;
    v34 = 2048;
    v35 = v12;
    _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s: Disconnecting server (%s) at port %d ref_count (%llu)", buf, 0x26u);
    v12 = v11[6];
  }

  if (v12 || (v11[7] & 1) != 0)
  {
LABEL_17:
    v8 = 0;
LABEL_21:
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_23:
    std::mutex::unlock(ServerMapLock);
    v22 = *MEMORY[0x277D85DE8];
    return v8;
  }

  v15 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v31 = "disconnectServer";
    v32 = 2080;
    *v33 = this;
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "%s: Deallocating port for server:(%s)", buf, 0x16u);
  }

  v16 = mach_port_deallocate(*MEMORY[0x277D85F48], *a2);
  v17 = v16;
  if (!v16)
  {
    v18 = _ps_buffer_log;
    v19 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (v19)
    {
      *buf = 136315394;
      v31 = "disconnectServer";
      v32 = 2080;
      *v33 = this;
      _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_DEBUG, "%s: Deleting map entry for server:(%s)", buf, 0x16u);
    }

    v20 = PSCommsBase::getServerToPortMap(v19);
    std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::__erase_unique<std::string>(v20, __p);
    goto LABEL_17;
  }

  v27 = 0;
  v24 = mach_error_string(v16);
  asprintf(&v27, "%s: Could not deallocate server port (%s) with error (%s). Aborting!", "disconnectServer", this, v24);
  v25 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v26 = mach_error_string(v17);
    *buf = 136316162;
    v31 = "disconnectServer";
    v32 = 1024;
    *v33 = 124;
    *&v33[4] = 2080;
    *&v33[6] = "disconnectServer";
    v34 = 2080;
    v35 = this;
    v36 = 2080;
    v37 = v26;
    _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_FAULT, "%s:%d %s: Could not deallocate server port (%s) with error (%s). Aborting!", buf, 0x30u);
  }

  if (OSLogFlushBuffers())
  {
    PSCommsClient::disconnectServer();
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void sub_25EBF9358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v19);
  _Unwind_Resume(a1);
}

uint64_t PSCommsClient::isAck(uint64_t a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2[536];
  if (v4 != 17)
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "isAck";
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "%s: This is not an error response\n", &v9, 0xCu);
      v4 = a2[536];
    }

    result = 8 * (v4 != *(a1 + 2144));
    goto LABEL_7;
  }

  if (a2[537] == *(a1 + 2144))
  {
    result = a2[269];
LABEL_7:
    v7 = *MEMORY[0x277D85DE8];
    return result;
  }

  isAck = PSCommsClient::isAck(&v9);
  return PSCommsClient::hello(isAck);
}

uint64_t PSCommsClient::send(char *a1, mach_msg_header_t *a2, mach_msg_size_t a3, mach_msg_id_t a4, int a5)
{
  v11 = (a1 + 40);
  v10 = *(a1 + 10);
  if (v10 + 1 <= 1)
  {
    if (PSCommsClient::connectServer((a1 + 44), v11, 1))
    {
      v14 = PSCommsClient::send(v20);
      return _sendto(v14, v15, v16, v17, v18, v19);
    }

    v10 = *v11;
  }

  v12 = _sendto(a2, a3, 0, v10, a4, a5);
  if (v12)
  {
    indefinite_sleep_since_server_missing(a1 + 44);
  }

  return v12;
}

uint64_t _sendto(mach_msg_header_t *a1, mach_msg_size_t a2, mach_port_t a3, mach_port_t a4, mach_msg_id_t a5, int a6)
{
  v19 = *MEMORY[0x277D85DE8];
  a1->msgh_remote_port = a4;
  a1->msgh_local_port = a3;
  if (a6)
  {
    v8 = 5395;
  }

  else
  {
    v8 = 4883;
  }

  if (!a3)
  {
    v8 = 19;
  }

  a1->msgh_bits = v8;
  a1->msgh_size = a2;
  a1->msgh_id = a5;
  a1[1].msgh_bits = 0;
  v9 = mach_msg_send(a1);
  v10 = _ps_buffer_log;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315906;
      *v15 = "_sendto";
      *&v15[8] = 1024;
      *v16 = v11;
      *&v16[4] = 1024;
      *v17 = a4;
      *&v17[4] = 1024;
      v18 = a3;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "CommsClient: %s failed to send message to server kern_return_t (0x%x) [see message.h or find a macro to print the error string] dst_port=%#x reply_port=%#x\n", &v14, 0x1Eu);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v14 = 67109888;
      *v15 = a4;
      *&v15[4] = 1024;
      *&v15[6] = a4;
      *v16 = 1024;
      *&v16[2] = a3;
      *v17 = 1024;
      *&v17[2] = a3;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "CommsClient: Message Sent to server %#x(%d) reply_port=%#x(%d)\n", &v14, 0x1Au);
      result = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t indefinite_sleep_since_server_missing(const char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "Cannot communicate with server %s. It may have crashed or is not accepting messages. Sleeping here indefinitely until we get killed!", &v5, 0xCu);
  }

  result = sleep(0xFFFFFFFF);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSCommsClient::send_ool_ports_client_to_server(char *a1, mach_msg_header_t *a2, mach_msg_size_t a3, uint64_t a4, mach_port_name_t a5, mach_msg_id_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = (a1 + 40);
  v13 = *(a1 + 10);
  if (v13 + 1 <= 1)
  {
    if (PSCommsClient::connectServer((a1 + 44), v12, 1))
    {
      v19 = PSCommsClient::send_ool_ports_client_to_server(&v21);
      return PSCommsClient::sendto_ool_ports(v19, v20);
    }

    v13 = *v12;
  }

  a2->msgh_remote_port = v13;
  a2->msgh_local_port = 0;
  a2->msgh_bits = -2147483629;
  a2->msgh_size = a3;
  a2->msgh_id = a6;
  a2[1].msgh_bits = 1;
  *&a2[1].msgh_size = a4;
  a2[1].msgh_local_port = 34799616;
  a2[1].msgh_voucher_port = a5;
  v14 = mach_msg_send(a2);
  v15 = _ps_buffer_log;
  if (v14)
  {
    v16 = v14;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315906;
      v22 = "_send_ool_ports_client_to_server";
      v23 = 1024;
      v24 = v16;
      v25 = 1024;
      v26 = v13;
      v27 = 1024;
      v28 = 0;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "CommsClient: %s failed to send message to server kern_return_t (0x%x) [see message.h or find a macro to print the error string] dst_port=%#x reply_port=%#x\n", &v21, 0x1Eu);
    }

    indefinite_sleep_since_server_missing(a1 + 44);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "CommsClient: Message Sent\n", &v21, 2u);
      result = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSCommsClient::sendto_ool_ports(int a1, mach_msg_header_t *a2, mach_msg_size_t a3, mach_port_t a4, uint64_t a5, mach_port_name_t a6, mach_msg_id_t a7)
{
  v18 = *MEMORY[0x277D85DE8];
  a2->msgh_remote_port = a4;
  a2->msgh_local_port = 0;
  a2->msgh_bits = -2147483630;
  a2->msgh_size = a3;
  a2->msgh_id = a7;
  a2[1].msgh_bits = 1;
  *&a2[1].msgh_size = a5;
  a2[1].msgh_local_port = 34799616;
  a2[1].msgh_voucher_port = a6;
  v8 = mach_msg_send(a2);
  v9 = _ps_buffer_log;
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      *v14 = "_sendto_ool_ports";
      *&v14[8] = 1024;
      *v15 = v10;
      *&v15[4] = 1024;
      *v16 = a4;
      *&v16[4] = 1024;
      v17 = 0;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "CommsClient: %s failed to send message to server kern_return_t (0x%x) [see message.h or find a macro to print the error string] dst_port=%#x reply_port=%#x\n", &v13, 0x1Eu);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v13 = 67109888;
      *v14 = a4;
      *&v14[4] = 1024;
      *&v14[6] = a4;
      *v15 = 1024;
      *&v15[2] = 0;
      *v16 = 1024;
      *&v16[2] = 0;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "CommsClient: Message Sent. dst_port=%#x(%d) reply_port=%#x(%d) \n", &v13, 0x1Au);
      result = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void PSCommsClient::send_wait(uint64_t a1, mach_msg_header_t *a2, mach_msg_size_t a3, mach_msg_header_t *a4, mach_msg_size_t a5, mach_msg_id_t a6)
{
  v12 = (a1 + 40);
  if ((*(a1 + 40) + 1) <= 1)
  {
    if (PSCommsClient::connectServer((a1 + 44), v12, 1))
    {
LABEL_10:
      v14 = PSCommsClient::send_wait(v17);
      _getreply(v14, v15, v16);
      return;
    }

    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "CommsClient: connected to server port\n", v17, 2u);
    }
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    PSCommsClient::send_wait(v17, v12);
    goto LABEL_10;
  }

  if (_sendto(a2, a3, *(a1 + 12), *(a1 + 40), a6, 1))
  {
    indefinite_sleep_since_server_missing((a1 + 44));
  }

  _getreply(a4, a5, *(a1 + 12));
}

void _getreply(mach_msg_header_t *a1, mach_msg_size_t a2, mach_port_name_t msgh_size)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "CommsClient: Waiting for reply...\n", buf, 2u);
  }

  if (mach_msg(a1, 2, 0, a2, msgh_size, 0, 0))
  {
    _getreply(buf);
  }

  else
  {
    msgh_size = a1->msgh_size;
    if (msgh_size <= a2)
    {
      v7 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v17) = msgh_size;
        _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "Client reply received size (%d)\n", buf, 8u);
      }

      v8 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v15 = 0;
  asprintf(&v15, "Client %s received message of size %u, maximum allowed is %d\n", "_getreply", msgh_size, a2);
  v9 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v10 = a1->msgh_size;
    *buf = 136316162;
    v17 = "_getreply";
    v18 = 1024;
    v19 = 296;
    v20 = 2080;
    v21 = "_getreply";
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = a2;
    _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_FAULT, "%s:%d Client %s received message of size %u, maximum allowed is %d\n", buf, 0x28u);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = v11;
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "_getreply";
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v14 = abort_with_reason();
  PSCommsClient::send_wait_ool(v14);
}

uint64_t PSCommsClient::send_wait_ool(uint64_t a1, uint64_t a2, int a3, mach_msg_header_t *a4, mach_msg_size_t a5, uint64_t a6, int a7, int a8)
{
  v16 = (a1 + 40);
  if ((*(a1 + 40) + 1) <= 1)
  {
    if (PSCommsClient::connectServer((a1 + 44), v16, 1))
    {
LABEL_10:
      v19 = PSCommsClient::send_wait_ool(v27);
      return _sendto_ool_data(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    v17 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 0;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEBUG, "CommsClient: connected to server port\n", v27, 2u);
    }
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    PSCommsClient::send_wait_ool(v27, v16);
    goto LABEL_10;
  }

  if (_sendto_ool_data(a2, a3, *(a1 + 12), *(a1 + 40), a6, a7, a8, 1))
  {
    indefinite_sleep_since_server_missing((a1 + 44));
  }

  _getreply(a4, a5, *(a1 + 12));
  return 0;
}

uint64_t _sendto_ool_data(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v8 = a8;
  v33 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a4;
  *(a1 + 12) = a3;
  if (a8)
  {
    v11 = -2147478253;
  }

  else
  {
    v11 = -2147478765;
  }

  if (a8)
  {
    v12 = -2147483630;
  }

  else
  {
    v12 = -2147483629;
  }

  if (!a3)
  {
    v11 = v12;
  }

  *a1 = v11;
  *(a1 + 4) = a2;
  *(a1 + 20) = a7;
  *(a1 + 24) = 1;
  *(a1 + 28) = a5;
  *(a1 + 36) = (*(a1 + 38) << 16) | 0x1000100;
  *(a1 + 40) = a6;
  v13 = mach_msg_send(a1);
  v14 = _ps_buffer_log;
  if (v13)
  {
    v15 = v13;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *v27 = "_sendto_ool_data";
      *&v27[8] = 1024;
      *v28 = v15;
      *&v28[4] = 1024;
      *&v28[6] = a4;
      v29 = 1024;
      v30 = a3;
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_ERROR, "CommsClient: %s failed to send message to server kern_return_t (0x%x) [see message.h or find a macro to print the error string] dst_port=%#x reply_port=%#x\n", buf, 0x1Eu);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "CommsClient: Message Sent\n", buf, 2u);
    }

    if ((v8 & 1) == 0)
    {
      v25 = 0;
      v17 = MEMORY[0x277D85F48];
      MEMORY[0x25F8CA890](*MEMORY[0x277D85F48], a4, 0, &v25);
      v18 = v25;
      if (v25 >= 2)
      {
        v19 = _ps_buffer_log;
        if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 136316162;
        *v27 = "_sendto_ool_data";
        *&v27[8] = 1024;
        *v28 = 482;
        *&v28[4] = 1024;
        *&v28[6] = a4;
        v29 = 1024;
        v30 = a3;
        v31 = 1024;
        v32 = v18;
        _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_ERROR, "CommsClient: %s %d dst_port=%#x reply_port=%#x dst_snd_count=%d > 1.\n", buf, 0x24u);
        if (v25 >= 2)
        {
LABEL_27:
          do
          {
            v20 = mach_port_mod_refs(*v17, a4, 0, -1);
            if (v20)
            {
              v21 = v20;
              v22 = _ps_buffer_log;
              if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
              {
                v23 = mach_error_string(v21);
                *buf = 67109634;
                *v27 = a4;
                *&v27[4] = 1024;
                *&v27[6] = v21;
                *v28 = 2080;
                *&v28[2] = v23;
                _os_log_impl(&dword_25EBC5000, v22, OS_LOG_TYPE_ERROR, "Failure to mach_port_mod_refs MACH_PORT_RIGHT_SEND for port %#x. kr = %#x (%s)", buf, 0x18u);
              }
            }

            --v25;
          }

          while (v25 > 1);
        }
      }
    }

    result = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSCommsClient::send_ool(char *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v13 = (a1 + 40);
  if ((*(a1 + 10) + 1) > 1)
  {
    goto LABEL_5;
  }

  if (!PSCommsClient::connectServer((a1 + 44), v13, 1))
  {
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "CommsClient: connected to server port\n", v17, 2u);
    }

LABEL_5:
    _sendto_ool_data(a2, a3, 0, *v13, a4, a5, a6, a7);
    return 0;
  }

  v16 = PSCommsClient::send_ool(v18);
  return PSCommsClient::sendto_ool(v16);
}

void PSCommsClient::PSCommsClient(PSCommsClient *this, void *(*a2)(void *), void *a3, int a4)
{
  PSCommsBase::PSCommsBase(this, a2, a3, a4);
  *v5 = &unk_2870CE3F8;
  *(v5 + 40) = 0;
  strlcpy((v5 + 44), "com.apple.polaris.daemon_default", 0x80uLL);
  *(this + 10) = 0;
}

void PSCommsClient::PSCommsClient(PSCommsClient *this, void *(*a2)(void *), void *a3, const char *a4, int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  PSCommsBase::PSCommsBase(this, a2, a3, a5);
  *v7 = &unk_2870CE3F8;
  *(v7 + 40) = 0;
  if (strnlen(a4, 0x80uLL) >= 0x80)
  {
    v10 = 0;
    asprintf(&v10, "launchd_name len should be < %u", 128);
    v9 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v12 = "PSCommsClient";
      v13 = 1024;
      v14 = 692;
      v15 = 1024;
      v16 = 128;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_FAULT, "%s:%d launchd_name len should be < %u", buf, 0x18u);
    }

    if (OSLogFlushBuffers())
    {
      PSCommsClient::PSCommsClient();
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }

  else
  {
    strlcpy(this + 44, a4, 0x80uLL);
    *(this + 10) = 0;
    v8 = *MEMORY[0x277D85DE8];
  }
}

void PSCommsClient::~PSCommsClient(PSCommsClient *this)
{
  v14 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CE3F8;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "CommsClient: ~CommsClient: Bye!\n", buf, 2u);
  }

  if ((*(this + 10) + 1) >= 2)
  {
    v4 = this + 44;
    if (PSCommsClient::disconnectServer((this + 44), this + 40, v3))
    {
      v7 = 0;
      asprintf(&v7, "Failed in disconnect server for server name (%s)", this + 44);
      v6 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v9 = "~PSCommsClient";
        v10 = 1024;
        v11 = 706;
        v12 = 2080;
        v13 = v4;
        _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_FAULT, "%s:%d Failed in disconnect server for server name (%s)", buf, 0x1Cu);
      }

      if (OSLogFlushBuffers())
      {
        PSCommsClient::~PSCommsClient();
      }

      else
      {
        usleep(0x1E8480u);
      }

      abort_with_reason();
      __break(1u);
    }
  }

  PSCommsBase::~PSCommsBase(this);
  v5 = *MEMORY[0x277D85DE8];
}

{
  PSCommsClient::~PSCommsClient(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBFA6F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PSCommsClient::reply_to_client(uint64_t a1, int a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a3;
  *(a1 + 12) = 0;
  *a1 = 18;
  *(a1 + 4) = a2;
  *(a1 + 20) = 6;
  v4 = mach_msg_send(a1);
  v5 = _ps_buffer_log;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "_send_to_client_using_move_send_once";
      v11 = 1024;
      v12 = v6;
      v13 = 1024;
      v14 = a3;
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "CommsClient: %s failed to send message to server kern_return_t (0x%x) [see message.h or find a macro to print the error string] dst_port=%#x reply_port=%#x\n", &v9, 0x1Eu);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "CommsClient: Message Sent\n", &v9, 2u);
      result = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void PSCommsClient::destroy_ool_memory(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v9 = *MEMORY[0x277D85DE8];
      return;
    }

    *buf = 136315394;
    v17 = "destroy_ool_memory";
    v18 = 1024;
    v19 = 739;
    v5 = "%s %d Unexpected message passed. msg=NULL\n";
    v6 = v8;
    v7 = 18;
LABEL_11:
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
    goto LABEL_12;
  }

  v1 = *(a1 + 28);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (!MEMORY[0x25F8CAE70](*MEMORY[0x277D85F48], v1, v2))
    {
      goto LABEL_12;
    }

    v4 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315906;
    v17 = "destroy_ool_memory";
    v18 = 1024;
    v19 = 751;
    v20 = 2048;
    v21 = v1;
    v22 = 2048;
    v23 = v2;
    v5 = "%s %d Failed to vm_deallocate addr %p of size:%llu\n";
    v6 = v4;
    v7 = 38;
    goto LABEL_11;
  }

  v15 = 0;
  asprintf(&v15, "Unexpected addr=%p or size=%llu for OOL message\n", v1, v2);
  v10 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v17 = "destroy_ool_memory";
    v18 = 1024;
    v19 = 746;
    v20 = 2048;
    v21 = v1;
    v22 = 2048;
    v23 = v2;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_FAULT, "%s:%d Unexpected addr=%p or size=%llu for OOL message\n", buf, 0x26u);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = v11;
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "destroy_ool_memory";
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v14 = abort_with_reason();
  PSCommsClient::destroy_ool_ports(v14);
}

void PSCommsClient::destroy_ool_ports(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v9 = *MEMORY[0x277D85DE8];
      return;
    }

    *buf = 136315394;
    v17 = "destroy_ool_ports";
    v18 = 1024;
    v19 = 758;
    v5 = "%s %d Unexpected message passed. msg=NULL\n";
    v6 = v8;
    v7 = 18;
LABEL_11:
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
    goto LABEL_12;
  }

  v1 = *(a1 + 28);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (!MEMORY[0x25F8CAE70](*MEMORY[0x277D85F48], v1, 4 * v2))
    {
      goto LABEL_12;
    }

    v4 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315906;
    v17 = "destroy_ool_ports";
    v18 = 1024;
    v19 = 770;
    v20 = 2048;
    v21 = v1;
    v22 = 2048;
    v23 = v2;
    v5 = "%s %d Failed to vm_deallocate ports %p count:%llu\n";
    v6 = v4;
    v7 = 38;
    goto LABEL_11;
  }

  v15 = 0;
  asprintf(&v15, "Unexpected ports=%p or count=%llu for OOL message\n", v1, v2);
  v10 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v17 = "destroy_ool_ports";
    v18 = 1024;
    v19 = 765;
    v20 = 2048;
    v21 = v1;
    v22 = 2048;
    v23 = v2;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_FAULT, "%s:%d Unexpected ports=%p or count=%llu for OOL message\n", buf, 0x26u);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = v11;
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "destroy_ool_ports";
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v14 = abort_with_reason();
  PSCommsClient::get_recv_port(v14);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

const void **std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::__emplace_unique_key_args<std::string,std::pair<std::string,server_info_s>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t ps_comms_register_call_back(PSCommsServer *a1, unsigned int a2, uint64_t a3, uint64_t a4, char *__s1, int a6)
{
  *&v7 = a3;
  *(&v7 + 1) = a4;
  return PSCommsServer::registerCallback(a1, a2, &v7, __s1, 0, 0, a6);
}

uint64_t ps_comms_register_callback_with_entitlements(PSCommsServer *a1, unsigned int a2, uint64_t a3, uint64_t a4, char *__s1, int a6, char *a7, int a8)
{
  *&v9 = a3;
  *(&v9 + 1) = a4;
  return PSCommsServer::registerCallback(a1, a2, &v9, __s1, a6, a7, a8);
}

uint64_t ps_delete_comms_server(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

BOOL checkClientEntitlements(uint64_t a1)
{
  v1 = a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL);
  v6 = *(v1 + 20);
  v7 = *(v1 + 36);
  v2 = xpc_copy_entitlement_for_token();
  v3 = v2;
  if (v2)
  {
    value = xpc_BOOL_get_value(v2);
  }

  else
  {
    value = 0;
  }

  return value;
}

BOOL PSCommsServer::clientEntitlementValidated(PSCommsServer *this, int a2, int a3)
{
  v9 = a2;
  v5 = (this + 4360);
  std::__shared_mutex_base::lock_shared((this + 4360));
  v6 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(this + 540, &v9);
  v7 = v6 && *(v6 + 5) == a3;
  std::__shared_mutex_base::unlock_shared(v5);
  return v7;
}

void sub_25EBFB728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void PSCommsServer::registerValidatedClient(PSCommsServer *this, int a2, int a3)
{
  v6 = a2;
  v5 = (this + 4360);
  std::__shared_mutex_base::lock((this + 4360));
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 540, &v6) + 5) = a3;
  std::__shared_mutex_base::unlock(v5);
}

uint64_t PSCommsServer::port_listener(PSCommsServer *this, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v54 = this + 16;
  v3 = pthread_setname_np(this + 16);
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      buf.msgh_bits = 136315394;
      *&buf.msgh_size = v54;
      LOWORD(buf.msgh_local_port) = 1024;
      *(&buf.msgh_local_port + 2) = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "pthread_setname_np failed with name %s and return code %d", &buf, 0x12u);
    }
  }

  if ((ps_util_is_internal_build() & 1) == 0)
  {
    v6 = os_set_logging_unreliable_for_current_thread();
    if (v6)
    {
      v7 = v6;
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        buf.msgh_bits = 67109120;
        buf.msgh_size = v7;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "os_set_logging_unreliable_for_current_thread failed with return code %d", &buf, 8u);
      }
    }
  }

  v9 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.msgh_bits) = 0;
    _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "Listener thread started\n", &buf, 2u);
  }

  v10 = *(this + 18);
  while (1)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v62.val[0]) = 0;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "Port reading.\n", &v62, 2u);
    }

    v13 = mach_msg(&buf, 50331650, 0, 0x8C0u, *this, 0, 0);
    v14 = v13;
    if (v13)
    {
      *atoken.val = 0;
      v48 = mach_error_string(v13);
      asprintf(&atoken, "%s failed to receive on port with error: (%s)\n", "port_listener", v48);
      v49 = _ps_buffer_log;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        v50 = mach_error_string(v14);
        PSCommsServer::port_listener(v50, &v62, v49);
      }

      PSCommsServer::port_listener(v49, &atoken);
    }

    v15 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v62.val[0] = 67109120;
      v62.val[1] = buf.msgh_size;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "msg received size (%d)\n", &v62, 8u);
    }

    if (*(this + 152) == 1)
    {
      v62 = v67;
      atoken = v67;
      v16 = audit_token_to_pid(&atoken);
      atoken = v62;
      v17 = audit_token_to_pidversion(&atoken);
      if (!PSCommsServer::clientEntitlementValidated(v10, v16, v17))
      {
        if (!checkClientEntitlements(&buf))
        {
          v28 = _ps_buffer_log;
          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          atoken.val[0] = 136315138;
          *&atoken.val[1] = v54;
          p_atoken = &atoken;
          v20 = v28;
          v21 = "Client does not have entitlements for server (%s). Message will be rejected!";
          v22 = 12;
          goto LABEL_40;
        }

        PSCommsServer::registerValidatedClient(v10, v16, v17);
      }
    }

    if ((buf.msgh_bits & 0x80000000) != 0 && v64 != 1)
    {
      v18 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v62.val[0] = 67109376;
      v62.val[1] = buf.msgh_bits & 0x80000000;
      LOWORD(v62.val[2]) = 1024;
      *(&v62.val[2] + 2) = v64;
      p_atoken = &v62;
      v20 = v18;
      v21 = "PSCommsServer: Invalid complex message received! complex=%d desc_count=%d\n";
      v22 = 14;
LABEL_40:
      _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_ERROR, v21, p_atoken, v22);
      goto LABEL_41;
    }

    if (buf.msgh_size >= 0x8C1)
    {
      v23 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v62.val[0] = 67109376;
      v62.val[1] = buf.msgh_size;
      LOWORD(v62.val[2]) = 2048;
      *(&v62.val[2] + 2) = 2240;
      p_atoken = &v62;
      v20 = v23;
      v21 = "Received message of size %d, maximum message length is %lu";
      v22 = 18;
      goto LABEL_40;
    }

    v60 = v67;
    if (buf.msgh_id > 2)
    {
      break;
    }

    if (buf.msgh_id)
    {
      if (buf.msgh_id != 1)
      {
        if (buf.msgh_id != 2)
        {
          goto LABEL_85;
        }

        v29 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v62.val[0]) = 0;
          _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_DEBUG, "PSCommsServer: PLS_MOD_STREAM_SERVER\n", &v62, 2u);
        }

        msgh_id = buf.msgh_id;
        v59 = ps_util_pid_from_mach_msg(&buf);
        p_buf = &buf;
        v30 = v65;
        if ((buf.msgh_bits & 0x80000000) == 0)
        {
          v30 = 0;
        }

        v58 = v30;
        msgh_remote_port = buf.msgh_remote_port;
        v31 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          v62.val[0] = 67109120;
          v62.val[1] = msgh_remote_port;
          _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_DEBUG, "reply port %d\n", &v62, 8u);
        }

        v32 = *(v10 + 4240);
        if (v32)
        {
          (*(v10 + 4248))(v32, &msgh_id);
        }
      }
    }

    else
    {
      v37 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v62.val[0]) = 0;
        _os_log_impl(&dword_25EBC5000, v37, OS_LOG_TYPE_DEBUG, "PSCommsServer: PLS_MOD_RESOURCE_FACTORY\n", &v62, 2u);
      }

      msgh_id = buf.msgh_id;
      v59 = ps_util_pid_from_mach_msg(&buf);
      p_buf = &v66;
      v38 = v65;
      if ((buf.msgh_bits & 0x80000000) == 0)
      {
        v38 = 0;
      }

      v58 = v38;
      msgh_remote_port = buf.msgh_remote_port;
      v39 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v62.val[0] = 67109120;
        v62.val[1] = msgh_remote_port;
        _os_log_impl(&dword_25EBC5000, v39, OS_LOG_TYPE_DEBUG, "reply port %d\n", &v62, 8u);
      }

      v40 = *(v10 + 4208);
      if (v40)
      {
        (*(v10 + 4216))(v40, &msgh_id);
      }
    }

LABEL_41:
    objc_autoreleasePoolPop(v11);
  }

  if (buf.msgh_id <= 4)
  {
    if (buf.msgh_id == 3)
    {
      v41 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v62.val[0]) = 0;
        _os_log_impl(&dword_25EBC5000, v41, OS_LOG_TYPE_DEBUG, "PSCommsServer: PLS_MOD_SYS_GRAPH\n", &v62, 2u);
      }

      msgh_id = buf.msgh_id;
      v59 = ps_util_pid_from_mach_msg(&buf);
      p_buf = &buf;
      v42 = v65;
      if ((buf.msgh_bits & 0x80000000) == 0)
      {
        v42 = 0;
      }

      v58 = v42;
      msgh_remote_port = buf.msgh_remote_port;
      v43 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v62.val[0] = 67109120;
        v62.val[1] = msgh_remote_port;
        _os_log_impl(&dword_25EBC5000, v43, OS_LOG_TYPE_DEBUG, "reply port %d\n", &v62, 8u);
      }

      v44 = *(v10 + 4256);
      if (v44)
      {
        (*(v10 + 4264))(v44, &msgh_id);
      }
    }

    else
    {
      v24 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v62.val[0]) = 0;
        _os_log_impl(&dword_25EBC5000, v24, OS_LOG_TYPE_DEBUG, "PSCommsServer: PLS_MOD_SYSTEM_TRANSITION_SERVICE\n", &v62, 2u);
      }

      msgh_id = buf.msgh_id;
      v59 = ps_util_pid_from_mach_msg(&buf);
      p_buf = &buf;
      v25 = v65;
      if ((buf.msgh_bits & 0x80000000) == 0)
      {
        v25 = 0;
      }

      v58 = v25;
      msgh_remote_port = buf.msgh_remote_port;
      v26 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v62.val[0] = 67109120;
        v62.val[1] = msgh_remote_port;
        _os_log_impl(&dword_25EBC5000, v26, OS_LOG_TYPE_DEBUG, "reply port %d\n", &v62, 8u);
      }

      v27 = *(v10 + 4272);
      if (v27)
      {
        (*(v10 + 4280))(v27, &msgh_id);
      }
    }

    goto LABEL_41;
  }

  if (buf.msgh_id == 5)
  {
    v33 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v62.val[0]) = 0;
      _os_log_impl(&dword_25EBC5000, v33, OS_LOG_TYPE_DEBUG, "PSCommsServer: PLS_MOD_MANIFEST_AGENT_SERVICE\n", &v62, 2u);
    }

    msgh_id = buf.msgh_id;
    v59 = ps_util_pid_from_mach_msg(&buf);
    p_buf = &buf;
    v34 = v65;
    if ((buf.msgh_bits & 0x80000000) == 0)
    {
      v34 = 0;
    }

    v58 = v34;
    msgh_remote_port = buf.msgh_remote_port;
    v35 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v62.val[0] = 67109120;
      v62.val[1] = msgh_remote_port;
      _os_log_impl(&dword_25EBC5000, v35, OS_LOG_TYPE_DEBUG, "reply port %d\n", &v62, 8u);
    }

    v36 = *(v10 + 4288);
    if (v36)
    {
      (*(v10 + 4296))(v36, &msgh_id);
    }

    goto LABEL_41;
  }

  if (buf.msgh_id != 6)
  {
LABEL_85:
    *atoken.val = 0;
    asprintf(&atoken, "PSCommsServer: Unknow message recevied! msgh_id=%#x\n", buf.msgh_id);
    v51 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v62.val[0] = 136315650;
      *&v62.val[1] = "port_listener";
      LOWORD(v62.val[3]) = 1024;
      *(&v62.val[3] + 2) = 222;
      HIWORD(v62.val[4]) = 1024;
      v62.val[5] = buf.msgh_id;
      _os_log_impl(&dword_25EBC5000, v51, OS_LOG_TYPE_FAULT, "%s:%d PSCommsServer: Unknow message recevied! msgh_id=%#x\n", &v62, 0x18u);
    }

    v52 = OSLogFlushBuffers();
    if (v52)
    {
      v53 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v62.val[0] = 136315394;
        *&v62.val[1] = "port_listener";
        LOWORD(v62.val[3]) = 1024;
        *(&v62.val[3] + 2) = v52;
        _os_log_impl(&dword_25EBC5000, v53, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v62, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }

  v45 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v62.val[0]) = 0;
    _os_log_impl(&dword_25EBC5000, v45, OS_LOG_TYPE_DEFAULT, "PLS_MOD_NONE, exiting port_listener thread", &v62, 2u);
  }

  objc_autoreleasePoolPop(v11);
  v46 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSCommsServer::invokeRegisteryCallback(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a1 + 16 * a2;
  result = *(v3 + 4208);
  if (result)
  {
    return (*(v3 + 4216))(result, a3);
  }

  return result;
}

void PSCommsServer::PSCommsServer(PSCommsServer *this)
{
  PSCommsBase::PSCommsBase(this, 0, 0, 0);
  *v2 = &unk_2870CE440;
  *(v2 + 4320) = 0u;
  *(v2 + 4336) = 0u;
  *(v2 + 4352) = 1065353216;
  std::__shared_mutex_base::__shared_mutex_base((v2 + 4360));
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "Welcome to server comms\n", v4, 2u);
  }

  *(this + 10) = 0;
  *(this + 263) = 0u;
  *(this + 264) = 0u;
  *(this + 265) = 0u;
  *(this + 532) = 0;
}

void sub_25EBFC30C(_Unwind_Exception *a1)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v1 + 4320);
  PSCommsBase::~PSCommsBase(v1);
  _Unwind_Resume(a1);
}

uint64_t PSCommsServer::add_cli_info(PSCommsServer *this, char *a2, char *a3, int a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(this + 10);
  if (v4 <= 9)
  {
    v10 = this + 416 * v4;
    v11 = (v10 + 48);
    strlcpy(v10 + 64, a2, 0x80uLL);
    if (a3)
    {
      strlcpy(v11 + 153, a3, 0x100uLL);
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    *(v11 + 152) = v12;
    if (a4)
    {
      options.reserved[1] = 0;
      *&options.flags = xmmword_25EC2CD10;
      v13 = mach_port_construct(*MEMORY[0x277D85F48], &options, 0, v11);
      v14 = v13;
      if (v13)
      {
        __p[0] = 0;
        v33 = mach_error_string(v13);
        asprintf(__p, "%s: mach_port_construct failed. ret=%#x (%s)", "add_cli_info", v14, v33);
        v34 = _ps_buffer_log;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          v35 = mach_error_string(v14);
          PSCommsServer::add_cli_info(v35, buf, v14);
        }

        PSCommsServer::add_cli_info(v34, __p);
      }

      ServerMapLock = PSCommsBase::getServerMapLock(v13);
      std::mutex::lock(ServerMapLock);
      std::string::basic_string[abi:ne200100]<0>(__p, a2);
      v16 = *v11;
      v17 = _ps_buffer_log;
      v18 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
      if (v18)
      {
        v19 = *v11;
        *buf = 136315650;
        *&buf[4] = "add_cli_info";
        *&buf[12] = 2080;
        *&buf[14] = a2;
        *&buf[22] = 1024;
        *&buf[24] = v19;
        _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEBUG, "%s: Adding map entry for server:(%s) port: %d", buf, 0x1Cu);
      }

      ServerToPortMap = PSCommsBase::getServerToPortMap(v18);
      if (SHIBYTE(v37) < 0)
      {
        std::string::__init_copy_ctor_external(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v37;
      }

      *&buf[24] = v16;
      *&v41[2] = 0;
      LOBYTE(v42) = 1;
      std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::__emplace_unique_key_args<std::string,std::pair<std::string,server_info_s>>(ServerToPortMap, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      std::mutex::unlock(ServerMapLock);
    }

    else
    {
      v21 = bootstrap_check_in(*MEMORY[0x277D85F18], a2, v11);
      if (v21)
      {
        v29 = v21;
        *&options.flags = 0;
        v30 = bootstrap_strerror(v21);
        asprintf(&options, "%s: Bootstrap check in did not succeed for server %s. Failed with code 0x%x %s.", "add_cli_info", a2, v29, v30);
        v31 = _ps_buffer_log;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          v32 = bootstrap_strerror(v29);
          *buf = 136316418;
          *&buf[4] = "add_cli_info";
          *&buf[12] = 1024;
          *&buf[14] = 316;
          *&buf[18] = 2080;
          *&buf[20] = "add_cli_info";
          v40 = 2080;
          *v41 = a2;
          *&v41[8] = 1024;
          v42 = v29;
          v43 = 2080;
          v44 = v32;
          _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_FAULT, "%s:%d %s: Bootstrap check in did not succeed for server %s. Failed with code 0x%x %s.", buf, 0x36u);
        }

        PSCommsServer::add_cli_info(v31, &options);
      }

      LODWORD(__p[0]) = 128;
      v22 = MEMORY[0x25F8CA8C0](*MEMORY[0x277D85F48], *v11, 1, __p, 1);
      v23 = v22;
      if (v22)
      {
        *&options.flags = 0;
        v24 = mach_error_string(v22);
        asprintf(&options, "%s: Mach port limit increase to LARGE failed with code 0x%x %s.", "add_cli_info", v23, v24);
        v25 = _ps_buffer_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = mach_error_string(v23);
          PSCommsServer::add_cli_info(v26, buf, v23);
        }

        PSCommsServer::add_cli_info(v25, &options);
      }
    }

    *(v11 + 18) = this;
    ps_util_create_pthread(v11 + 1, PSCommsServer::port_listener, v11, 60);
    v27 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "add_cli_info";
      *&buf[12] = 2080;
      *&buf[14] = a2;
      _os_log_impl(&dword_25EBC5000, v27, OS_LOG_TYPE_DEBUG, "%s Finished creating a new listener thread for %s\n", buf, 0x16u);
    }

    result = *(this + 10);
    *(this + 10) = result + 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSCommsServer::registerCallback(PSCommsServer *a1, unsigned int a2, _OWORD *a3, char *__s1, int a5, char *a6, int a7)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 > 6 || strnlen(__s1, 0x80uLL) > 0x7F)
  {
LABEL_3:
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  if (a5)
  {
    if (a6)
    {
      if (strnlen(a6, 0x100uLL) >= 0x100)
      {
        v15 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315138;
          v20 = a6;
          _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "Provided Entitlement name(%s) too long!!", &v19, 0xCu);
        }

        goto LABEL_3;
      }
    }

    else
    {
      a6 = "com.apple.polaris.client";
    }
  }

  else
  {
    a6 = 0;
  }

  v16 = (a1 + 16 * a2 + 4208);
  if (*v16 || *(a1 + 2 * a2 + 527))
  {
    v17 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = a2;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEFAULT, "Resource factory overwriting callback for target module:%u", &v19, 8u);
    }
  }

  *v16 = *a3;
  result = (PSCommsServer::add_cli_info(a1, __s1, a6, a7) >> 31);
LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void PSCommsServer::~PSCommsServer(PSCommsServer *this)
{
  v45 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CE440;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "CommsServer:~CommsServer: Bye!\n", buf, 2u);
  }

  if (*(this + 10))
  {
    v3 = 0;
    v4 = this + 64;
    v5 = MEMORY[0x277D85F48];
    v6 = this + 64;
    do
    {
      PSCommsClient::PSCommsClient(v43, 0, 0, v6, 1);
      PSCommsClient::send(v43, buf, 0x888u, 6, 1);
      PSCommsClient::~PSCommsClient(v43);
      v7 = pthread_join(*(v6 - 1), 0);
      if (v7)
      {
        v8 = _ps_buffer_log;
        v7 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          *buf = 0;
          _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "CommsServer:~CommsServer: unable to join listener\n", buf, 2u);
        }
      }

      ServerMapLock = PSCommsBase::getServerMapLock(v7);
      std::mutex::lock(ServerMapLock);
      v10 = std::string::basic_string[abi:ne200100]<0>(v43, v6);
      ServerToPortMap = PSCommsBase::getServerToPortMap(v10);
      v12 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(ServerToPortMap, v43);
      PSCommsBase::getServerToPortMap(v12);
      if (v12 && *(v12 + 56) == 1)
      {
        v13 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "~PSCommsServer";
          v37 = 2080;
          *v38 = v4;
          _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s: Deallocating port for server:(%s)", buf, 0x16u);
        }

        v14 = mach_port_deallocate(*v5, *(v6 - 4));
        v15 = v14;
        if (v14)
        {
          v35 = 0;
          v28 = mach_error_string(v14);
          asprintf(&v35, "%s: Could not deallocate server port (%s) with error (%s). Aborting!", "~PSCommsServer", v6, v28);
          v29 = _ps_buffer_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            v30 = mach_error_string(v15);
            *buf = 136316162;
            *&buf[4] = "~PSCommsServer";
            v37 = 1024;
            *v38 = 415;
            *&v38[4] = 2080;
            *&v38[6] = "~PSCommsServer";
            v39 = 2080;
            v40 = v4;
            v41 = 2080;
            v42 = v30;
            _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_FAULT, "%s:%d %s: Could not deallocate server port (%s) with error (%s). Aborting!", buf, 0x30u);
          }

          v31 = OSLogFlushBuffers();
          if (v31)
          {
            PSCommsServer::~PSCommsServer(v31, &v35, buf);
LABEL_34:
            v32 = *buf;
          }

          else
          {
            usleep(0x1E8480u);
            v32 = &v35;
          }

          goto LABEL_35;
        }

        v16 = _ps_buffer_log;
        v17 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
        if (v17)
        {
          *buf = 136315394;
          *&buf[4] = "~PSCommsServer";
          v37 = 2080;
          *v38 = v4;
          _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: Deleting map entry for server:(%s)", buf, 0x16u);
        }

        v18 = PSCommsBase::getServerToPortMap(v17);
        std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::__erase_unique<std::string>(v18, v43);
      }

      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      std::mutex::unlock(ServerMapLock);
      v19 = *(v6 - 4);
      if (v19)
      {
        v34 = 0;
        LODWORD(v35) = 0;
        MEMORY[0x25F8CA890](*v5, v19, 1, &v35);
        MEMORY[0x25F8CA890](*v5, *(v6 - 4), 0, &v34);
        if (v34 > 1 || v35 >= 2)
        {
          v20 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_ERROR, "Mach port reference counters wrong. Mach port deallocation will not succeed. WE ARE LEAKING PORTS!", buf, 2u);
          }
        }

        v21 = mach_port_mod_refs(*v5, *(v6 - 4), 1u, -1);
        v22 = v21;
        if (v21)
        {
          v43[0] = 0;
          v24 = mach_error_string(v21);
          asprintf(v43, "Failure to deallocate port. (%s)", v24);
          v25 = _ps_buffer_log;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            v26 = mach_error_string(v22);
            *buf = 136315650;
            *&buf[4] = "~PSCommsServer";
            v37 = 1024;
            *v38 = 433;
            *&v38[4] = 2080;
            *&v38[6] = v26;
            _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_FAULT, "%s:%d Failure to deallocate port. (%s)", buf, 0x1Cu);
          }

          v27 = OSLogFlushBuffers();
          if (v27)
          {
            PSCommsServer::~PSCommsServer(v27, v43, buf);
            goto LABEL_34;
          }

          usleep(0x1E8480u);
          v32 = v43;
LABEL_35:
          v33 = *v32;
          abort_with_reason();
          __break(1u);
        }
      }

      ++v3;
      v6 += 416;
      v4 += 416;
    }

    while (v3 < *(this + 10));
  }

  std::condition_variable::~condition_variable((this + 4472));
  std::condition_variable::~condition_variable((this + 4424));
  std::mutex::~mutex((this + 4360));
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 4320);
  PSCommsBase::~PSCommsBase(this);
  v23 = *MEMORY[0x277D85DE8];
}

{
  PSCommsServer::~PSCommsServer(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBFCF4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t PSCommsServer::handleClientSend(mach_port_name_t a1, mach_port_name_t name)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((a1 & 0xFFFFFFFE) == 2)
  {
    v4 = mach_port_deallocate(*MEMORY[0x277D85F48], name);
    if (v4)
    {
      v9 = v4;
      v15 = 0;
      v10 = mach_error_string(v4);
      error_value = v9;
      asprintf(&v15, "Failure to mach_port_deallocate for port %#x reply_type=%d. kr=%d %s", name, a1, v9, v10);
      v11 = _ps_buffer_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = mach_error_string(error_value);
        *buf = 136316418;
        v17 = "handleClientSend";
        v18 = 1024;
        v19 = 464;
        v20 = 1024;
        v21 = name;
        v22 = 1024;
        v23 = a1;
        v24 = 1024;
        v25 = error_value;
        v26 = 2080;
        v27 = v12;
        _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_FAULT, "%s:%d Failure to mach_port_deallocate for port %#x reply_type=%d. kr=%d %s", buf, 0x2Eu);
      }

      PSCommsServer::handleClientSend(v11, &v15);
    }

    v5 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v15 = 0;
    asprintf(&v15, "Unexpected reply type %d, dst_port=%#x", a1, name);
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v17 = "handleClientSend";
      v18 = 1024;
      v19 = 473;
      v20 = 1024;
      v21 = a1;
      v22 = 1024;
      v23 = name;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d Unexpected reply type %d, dst_port=%#x", buf, 0x1Eu);
    }

    v8 = OSLogFlushBuffers();
    if (v8)
    {
      v13 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "handleClientSend";
        v18 = 1024;
        v19 = v8;
        _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    __break(1u);
  }

  return result;
}

BOOL PSCommsServer::serverNameExists(PSCommsServer *this, char *a2)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(__p, this);
  ServerToPortMap = PSCommsBase::getServerToPortMap(v2);
  v4 = std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::find<std::string>(ServerToPortMap, __p);
  PSCommsBase::getServerToPortMap(v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4 != 0;
}

void sub_25EBFD290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t result, uint64_t a2, int a3)
{
  *(a2 + 14) = v5;
  *(a2 + 18) = 2080;
  *(a2 + 20) = v3;
  *(a2 + 28) = v4;
  *(a2 + 30) = a3;
  *(a2 + 34) = 2080;
  *(a2 + 36) = result;
  return result;
}

void OUTLINED_FUNCTION_6_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t ps_death_notifier_register_mach_port_for_death_notification(PSBufferService::PSDeathNotifier *a1, unint64_t a2, const char *a3)
{
  v7 = a1;
  Notifier = PSBufferService::PSDeathNotifier::getNotifier(a1);
  return PSBufferService::PSDeathNotifier::registerMachPortForDeathNotification(Notifier, &v7, a2, a3);
}

uint64_t ps_death_notifier_unregister_mach_port_for_death_notification(PSBufferService::PSDeathNotifier *a1)
{
  v3 = a1;
  Notifier = PSBufferService::PSDeathNotifier::getNotifier(a1);
  return PSBufferService::PSDeathNotifier::unregisterMachPortForDeathNotification(Notifier, &v3);
}

uint64_t ps_death_notifier_register_callback_for_death_notification(void (*a1)(unsigned int, unint64_t, const char *, void *), void *a2)
{
  v4 = a2;
  v5 = a1;
  Notifier = PSBufferService::PSDeathNotifier::getNotifier(a1);
  return PSBufferService::PSDeathNotifier::registerCallbackForDeathNotification(Notifier, &v5, &v4);
}

uint64_t ps_death_notifier_unregister_callback_for_death_notification(void (*a1)(unsigned int, unint64_t, const char *, void *))
{
  v3 = a1;
  Notifier = PSBufferService::PSDeathNotifier::getNotifier(a1);
  return PSBufferService::PSDeathNotifier::unregisterCallbackForDeathNotification(Notifier, &v3);
}

uint64_t PSBufferService::PSDeathNotifier::getNotifier(PSBufferService::PSDeathNotifier *this)
{
  if (!PSBufferService::PSDeathNotifier::notifier_)
  {
    operator new();
  }

  return PSBufferService::PSDeathNotifier::notifier_;
}

uint64_t PSBufferService::PSDeathNotifier::deliverCallbackForMachPort(PSBufferService::PSDeathNotifier *this, unsigned int *a2)
{
  pthread_mutex_lock((this + 16));
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>(this + 10, a2);
  if (v4)
  {
    v5 = v4;
    for (i = *(this + 17); i; i = *i)
    {
      v7 = v5[3];
      if (*(v7 + 39) < 0)
      {
        if (*(v7 + 24))
        {
          v8 = *(v7 + 16);
        }

        else
        {
          v8 = 0;
        }
      }

      else if (*(v7 + 39))
      {
        v8 = v7 + 16;
      }

      else
      {
        v8 = 0;
      }

      (*i[3])(*a2, *(v7 + 8), v8, i[3][1]);
    }

    v9 = v5[3];
    if (v9)
    {
      if (*(v9 + 39) < 0)
      {
        operator delete(*(v9 + 16));
      }

      MEMORY[0x25F8CA500](v9, 0x1012C4022DFC6CALL);
    }

    std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::__erase_unique<unsigned int>(this + 10, a2);
  }

  return pthread_mutex_unlock((this + 16));
}

uint64_t PSBufferService::PSDeathNotifier::port_listener(PSBufferService::PSDeathNotifier *this, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  strcpy(v23, "PSDeathNotifier port listener");
  v3 = pthread_setname_np(v23);
  v4 = _ps_buffer_log;
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      buf.msgh_bits = 136315394;
      *&buf.msgh_size = v23;
      LOWORD(buf.msgh_local_port) = 1024;
      *(&buf.msgh_local_port + 2) = v5;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "pthread_setname_np failed with name %s and return code %d", &buf, 0x12u);
      v4 = _ps_buffer_log;
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.msgh_bits) = 0;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "PDN listener thread started\n", &buf, 2u);
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = mach_msg(&buf, 2, 0, 0x38u, *(this + 2), 0, 0);
        if (!v6)
        {
          break;
        }

        v7 = v6;
        v8 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          v9 = mach_error_string(v7);
          *v19 = 136315138;
          *v20 = v9;
          _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "Failed to receive on port: %s", v19, 0xCu);
        }
      }

      msgh_size = buf.msgh_size;
      if (buf.msgh_size < 0x39)
      {
        break;
      }

      v11 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *v19 = 67109376;
        *v20 = msgh_size;
        *&v20[4] = 2048;
        *&v20[6] = 56;
        _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "Received %d, maximum length allowed is %lu", v19, 0x12u);
      }
    }

    if (buf.msgh_id == 72 || buf.msgh_id == 65)
    {
      PSBufferService::PSDeathNotifier::deliverCallbackForMachPort(this, name);
      if (buf.msgh_id == 72)
      {
        if (mach_port_deallocate(*MEMORY[0x277D85F48], name[0]))
        {
          break;
        }
      }
    }
  }

  v18 = 0;
  asprintf(&v18, "Failed to deallocate dead name mach port right!");
  v12 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *v19 = 136315394;
    *v20 = "port_listener";
    *&v20[8] = 1024;
    *&v20[10] = 127;
    _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d Failed to deallocate dead name mach port right!", v19, 0x12u);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = v13;
    v15 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *v20 = "port_listener";
      *&v20[8] = 1024;
      *&v20[10] = v14;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", v19, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = abort_with_reason();
  return PSBufferService::PSDeathNotifier::PSDeathNotifier(v16);
}

PSBufferService::PSDeathNotifier *PSBufferService::PSDeathNotifier::PSDeathNotifier(PSBufferService::PSDeathNotifier *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  if (mach_port_allocate(*MEMORY[0x277D85F48], 1u, this + 2))
  {
    *buf = 0;
    asprintf(buf, "Could not allocate notify port for Death Notifier. Aborting!");
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v19.__sig) = 136315394;
      *(&v19.__sig + 4) = "PSDeathNotifier";
      *&v19.__opaque[4] = 1024;
      *&v19.__opaque[6] = 141;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d Could not allocate notify port for Death Notifier. Aborting!", &v19, 0x12u);
    }

    v5 = OSLogFlushBuffers();
    if (v5)
    {
      PSBufferService::PSDeathNotifier::PSDeathNotifier(v5);
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    goto LABEL_44;
  }

  if (pthread_attr_init(&v19))
  {
    v15 = 0;
    asprintf(&v15, &unk_25EC341ED);
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "thread_creator";
      v17 = 1024;
      v18 = 24;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_FAULT, "%s:%d ", buf, 0x12u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_20;
    }

LABEL_39:
    PSBufferService::PSDeathNotifier::PSDeathNotifier();
LABEL_42:
    v8 = *buf;
    goto LABEL_43;
  }

  if (!pthread_attr_setschedpolicy(&v19, 4))
  {
    if (pthread_attr_getschedparam(&v19, &v15))
    {
      v14 = 0;
      asprintf(&v14, &unk_25EC341ED);
      v9 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "thread_creator";
        v17 = 1024;
        v18 = 34;
        _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_FAULT, "%s:%d ", buf, 0x12u);
      }

      if (!OSLogFlushBuffers())
      {
        goto LABEL_36;
      }
    }

    else
    {
      v15.sched_priority = 60;
      if (pthread_attr_setschedparam(&v19, &v15))
      {
        v14 = 0;
        asprintf(&v14, &unk_25EC341ED);
        v10 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "thread_creator";
          v17 = 1024;
          v18 = 40;
          _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_FAULT, "%s:%d ", buf, 0x12u);
        }

        if (!OSLogFlushBuffers())
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!pthread_attr_setdetachstate(&v19, 1))
        {
          if (!pthread_create(this, &v19, PSBufferService::PSDeathNotifier::port_listener, this))
          {
            pthread_attr_destroy(&v19);
            pthread_mutexattr_init(&v19);
            pthread_mutexattr_settype(&v19, 2);
            pthread_mutex_init((this + 16), &v19);
            pthread_mutexattr_destroy(&v19);
            v2 = *MEMORY[0x277D85DE8];
            return this;
          }

          v14 = 0;
          asprintf(&v14, &unk_25EC341ED);
          v12 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            *&buf[4] = "thread_creator";
            v17 = 1024;
            v18 = 50;
            _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d ", buf, 0x12u);
          }

          if (!OSLogFlushBuffers())
          {
            goto LABEL_36;
          }

          goto LABEL_41;
        }

        v14 = 0;
        asprintf(&v14, &unk_25EC341ED);
        v11 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "thread_creator";
          v17 = 1024;
          v18 = 45;
          _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_FAULT, "%s:%d ", buf, 0x12u);
        }

        if (!OSLogFlushBuffers())
        {
LABEL_36:
          usleep(0x1E8480u);
          v8 = &v14;
          goto LABEL_43;
        }
      }
    }

LABEL_41:
    PSBufferService::PSDeathNotifier::PSDeathNotifier();
    goto LABEL_42;
  }

  v15 = 0;
  asprintf(&v15, &unk_25EC341ED);
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    *&buf[4] = "thread_creator";
    v17 = 1024;
    v18 = 29;
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d ", buf, 0x12u);
  }

  if (OSLogFlushBuffers())
  {
    goto LABEL_39;
  }

LABEL_20:
  usleep(0x1E8480u);
  v8 = &v15;
LABEL_43:
  v13 = *v8;
  result = abort_with_reason();
LABEL_44:
  __break(1u);
  return result;
}

void sub_25EBFE1C0(_Unwind_Exception *a1)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v2);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t PSBufferService::PSDeathNotifier::registerMachPortForDeathNotification(PSBufferService::PSDeathNotifier *this, mach_port_name_t *a2, unint64_t a3, const char *a4)
{
  if (*a2 + 1 < 2)
  {
    return 5;
  }

  pthread_mutex_lock((this + 16));
  if (std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>(this + 10, a2))
  {
    v4 = 3;
  }

  else
  {
    v8 = 0;
    if (!mach_port_request_notification(*MEMORY[0x277D85F48], *a2, 72, 0, *(this + 2), 0x15u, &v8))
    {
      operator new();
    }

    v4 = 1;
  }

  pthread_mutex_unlock((this + 16));
  return v4;
}

uint64_t PSBufferService::PSDeathNotifier::unregisterMachPortForDeathNotification(PSBufferService::PSDeathNotifier *this, unsigned int *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*a2 + 1 >= 2)
  {
    pthread_mutex_lock((this + 16));
    v5 = std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>(this + 10, a2);
    if (v5)
    {
      v6 = v5;
      previous = 0;
      v7 = MEMORY[0x277D85F48];
      if (mach_port_request_notification(*MEMORY[0x277D85F48], *a2, 72, 0, 0, 0x15u, &previous))
      {
        v2 = 2;
      }

      else
      {
        v8 = v6[3];
        if (v8)
        {
          if (*(v8 + 39) < 0)
          {
            operator delete(*(v8 + 16));
          }

          MEMORY[0x25F8CA500](v8, 0x1012C4022DFC6CALL);
        }

        std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::__erase_unique<unsigned int>(this + 10, a2);
        if (previous)
        {
          v9 = mach_port_deallocate(*v7, previous);
          if (v9)
          {
            v10 = v9;
            v11 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
            {
              v12 = previous;
              v13 = mach_error_string(v10);
              *buf = 67109890;
              v18 = v12;
              v19 = 1024;
              v20 = v12;
              v21 = 1024;
              v22 = v10;
              v23 = 2080;
              v24 = v13;
              _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "Failure to mach_port_deallocate for port %#x(%d) when unregistering the port. kr=%d %s", buf, 0x1Eu);
            }
          }
        }

        v2 = 0;
      }
    }

    else
    {
      v2 = 4;
    }

    pthread_mutex_unlock((this + 16));
  }

  else
  {
    v2 = 5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t PSBufferService::PSDeathNotifier::registerCallbackForDeathNotification(PSBufferService::PSDeathNotifier *this, void (**a2)(unsigned int, unint64_t, const char *, void *), void *const *a3)
{
  if (!*a2)
  {
    return 5;
  }

  pthread_mutex_lock((this + 16));
  if (!std::__hash_table<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::__unordered_map_hasher<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::__unordered_map_equal<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::allocator<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>>>::find<void (*)(unsigned int,unsigned long long,char const*,void *)>(this + 15, a2))
  {
    operator new();
  }

  v5 = 3;
  pthread_mutex_unlock((this + 16));
  return v5;
}

uint64_t PSBufferService::PSDeathNotifier::unregisterCallbackForDeathNotification(PSBufferService::PSDeathNotifier *this, void (**a2)(unsigned int, unint64_t, const char *, void *))
{
  if (!*a2)
  {
    return 5;
  }

  pthread_mutex_lock((this + 16));
  if (std::__hash_table<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::__unordered_map_hasher<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::__unordered_map_equal<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::allocator<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>>>::find<void (*)(unsigned int,unsigned long long,char const*,void *)>(this + 15, a2))
  {
    v4 = std::__hash_table<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::__unordered_map_hasher<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::__unordered_map_equal<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::allocator<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>>>::__emplace_unique_key_args<void (*)(unsigned int,unsigned long long,char const*,void *),std::piecewise_construct_t const&,std::tuple<void (* const&)(unsigned int,unsigned long long,char const*,void *)>,std::tuple<>>(this + 15, a2)[3];
    if (v4)
    {
      MEMORY[0x25F8CA500](v4, 0x80C40803F642BLL);
    }

    std::__hash_table<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::__unordered_map_hasher<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::__unordered_map_equal<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::allocator<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>>>::__erase_unique<void (*)(unsigned int,unsigned long long,char const*,void *)>(this + 15, a2);
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  pthread_mutex_unlock((this + 16));
  return v5;
}

PSBufferService::PDNMachPortData *PSBufferService::PDNMachPortData::PDNMachPortData(PSBufferService::PDNMachPortData *this, const unsigned int *a2, uint64_t a3, const char *__s)
{
  *(this + 2) = 0;
  v5 = this + 16;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = *a2;
  *(this + 1) = a3;
  if (__s)
  {
    v7 = strlen(__s);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = v7;
    if (v7)
    {
      memcpy(&__dst, __s, v7);
    }

    *(&__dst + v8) = 0;
    if (*(this + 39) < 0)
    {
      operator delete(*v5);
    }

    *v5 = __dst;
    *(v5 + 2) = v11;
  }

  return this;
}

void sub_25EBFE74C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::__unordered_map_hasher<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::__unordered_map_equal<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::allocator<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>>>::find<void (*)(unsigned int,unsigned long long,char const*,void *)>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::__unordered_map_hasher<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::__unordered_map_equal<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::allocator<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>>>::__emplace_unique_key_args<void (*)(unsigned int,unsigned long long,char const*,void *),std::piecewise_construct_t const&,std::tuple<void (* const&)(unsigned int,unsigned long long,char const*,void *)>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::__unordered_map_hasher<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::__unordered_map_equal<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::allocator<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>>>::__erase_unique<void (*)(unsigned int,unsigned long long,char const*,void *)>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::__unordered_map_hasher<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::__unordered_map_equal<void (*)(unsigned int,unsigned long long,char const*,void *),std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>,std::equal_to<void (*)(unsigned int,unsigned long long,char const*,void *)>,std::hash<void (*)(unsigned int,unsigned long long,char const*,void *)>,true>,std::allocator<std::__hash_value_type<void (*)(unsigned int,unsigned long long,char const*,void *),PSBufferService::PDNCallback *>>>::find<void (*)(unsigned int,unsigned long long,char const*,void *)>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,PSBufferService::PDNMachPortData *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_4_2()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void PSFrameHistoryBufferServiceServer::PSFrameHistoryBufferServiceServer(PSFrameHistoryBufferServiceServer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  *(this + 74) = 1065353216;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 84) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  v2 = dispatch_queue_create("com.apple.polaris.FHSFileDumpQueue", 0);
  v3 = *(this + 41);
  *(this + 41) = v2;

  v4 = dispatch_group_create();
  v5 = *(this + 40);
  *(this + 40) = v4;
}

void PSFrameHistoryBufferServiceServer::~PSFrameHistoryBufferServiceServer(PSFrameHistoryBufferServiceServer *this)
{
  dispatch_group_wait(*(this + 40), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(this + 1);
  if (v2)
  {
    ps_buffer_destroy_serial_data_writer(v2);
    *(this + 1) = 0;
  }

  v3 = *(this + 32);
  if (v3)
  {
    pbs_ringbufferlogger_shared_destroy_log_handle(v3, 0);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 264);
  for (i = 168; i != -24; i -= 48)
  {
    std::deque<unsigned short>::~deque[abi:ne200100]((this + i));
  }
}

uint64_t PSFrameHistoryBufferServiceServer::init(PSFrameHistoryBufferServiceServer *this, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  log_with_entry_and_header_info = pbs_ringbufferlogger_shared_create_log_with_entry_and_header_info("frameHistoryHashRingbuffer", 0, a2);
  *(this + 32) = log_with_entry_and_header_info;
  if (log_with_entry_and_header_info)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(this + 264, 0x80uLL);
    *(this + 44) = ps_util_ns_to_mach_time(0x2540BE400uLL);
    *(this + 4) = 8030824;
    ps_buffer_create_serial_data_writer_with_server();
  }

  v4 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: Failed to create frame history ringbuffer for recording data hash entries", buf, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

void *std::deque<unsigned short>::push_back(void *result, _WORD *a2)
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
    v7 = ((v5 - v6) << 8) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<unsigned short>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v9 & 0x7FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

uint64_t PSFrameHistoryBufferServiceServer::_buildDecodeMap(uint64_t this)
{
  if (*(this + 288) <= 0x600uLL)
  {
    v4[5] = v1;
    v4[6] = v2;
    v3 = *(this + 256);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___ZN33PSFrameHistoryBufferServiceServer15_buildDecodeMapEv_block_invoke;
    v4[3] = &__block_descriptor_40_e49_v20__0I8__pbs_ringbuffer_data_decode_s_Q_512c__12l;
    v4[4] = this;
    return pbs_ringbufferlogger_shared_read_decode_data(v3, v4);
  }

  return this;
}

void *___ZN33PSFrameHistoryBufferServiceServer15_buildDecodeMapEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v4 + 33, a3);
  if (!result)
  {
    v6 = v4[39] + 264 * *(v4[38] + 4);
    *v6 = *a3;
    strlcpy((v6 + 8), (a3 + 8), 0x100uLL);
    ++*(v4[38] + 4);

    return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v4 + 33, a3);
  }

  return result;
}

uint64_t PSFrameHistoryBufferServiceServer::reserveBuffer(PSFrameHistoryBufferServiceServer *this, int a2, uint64_t a3, unsigned int a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = atomic_load(this);
  if ((v5 & 1) == 0)
  {
    v13 = _polarisdLogSharedInstance();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v29 = 136315138;
    v30[0] = "reserveBuffer";
    v14 = "PSFrameHistoryBufferService: Server not initialized but %s called";
    v15 = v13;
    v16 = 12;
    goto LABEL_12;
  }

  PSFrameHistoryBufferServiceServer::_buildDecodeMap(this);
  if (!a4)
  {
    v13 = _polarisdLogSharedInstance();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(v29) = 0;
    v14 = "PSFrameHistoryBufferService: Frequency 0 not supported";
    v15 = v13;
    v16 = 2;
LABEL_12:
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, v14, &v29, v16);
LABEL_13:

    v35 = 20;
    v34 = 0;
    v17 = -536870212;
LABEL_14:
    v31 = v17;
    goto LABEL_15;
  }

  v9 = 0;
  v10 = (this + 64);
  v11 = 116;
  v12 = &dword_25EC2CD90;
  while (*(v12 - 4) < a4)
  {
    v12 += 7;
    ++v9;
    v11 += 400;
    v10 += 6;
    if (v9 == 4)
    {
      v13 = _polarisdLogSharedInstance();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v29 = 67109120;
      LODWORD(v30[0]) = a4;
      v14 = "PSFrameHistoryBufferService: Failed to find buffer idx for frequency %u";
      v15 = v13;
      v16 = 8;
      goto LABEL_12;
    }
  }

  if (!*v10)
  {
    v26 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = 67109376;
      LODWORD(v30[0]) = a4;
      WORD2(v30[0]) = 1024;
      *(v30 + 6) = v9;
      _os_log_impl(&dword_25EBC5000, v26, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: _frequencyBufferQueue is empty for frequency %u & freq_idx %d", &v29, 0xEu);
    }

    v35 = 20;
    v34 = 0;
    v17 = -536870160;
    goto LABEL_14;
  }

  v20 = *(*(*(v10 - 4) + ((*(v10 - 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (*(v10 - 1) & 0x7FF));
  v21 = *v10 - 1;
  ++*(v10 - 1);
  *v10 = v21;
  std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100]((v10 - 5), 1);
  *(*(this + 27) + 4 * v20 + v11) = a2;
  v22 = (_getBufferHeader(this + 224, v9 + (v20 << 16)) + *v12);
  if (*v22 != 205)
  {
LABEL_26:
    v27 = PSFrameHistoryBufferServiceServer::reserveBuffer(&v29);
    return _getBufferHeader(v27, v28);
  }

  v23 = 1;
  while (v23 != 8)
  {
    v24 = v22[v23++];
    if (v24 != 205)
    {
      if ((v23 - 2) <= 6)
      {
        goto LABEL_26;
      }

      break;
    }
  }

  BufferHeader = _getBufferHeader(this + 224, v9 + (v20 << 16));
  atomic_store(0, (BufferHeader + 18));
  atomic_store(0, BufferHeader);
  v35 = 20;
  v34 = 0;
  v31 = 0;
  v32 = v9;
  v33 = v20;
LABEL_15:
  result = ps_comms_reply(&v29, 2192, a3);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _getBufferHeader(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFC) != 0 || HIWORD(a2) >= *(&_frameHistoryBufferPoolDesc + 7 * (a2 & 3) + 1))
  {
    _getBufferHeader(&v7);
    goto LABEL_6;
  }

  result = *(a1 + 8 * (a2 & 3)) + *(&_frameHistoryBufferPoolDesc + 7 * (a2 & 3) + 3) * HIWORD(a2);
  if (*(result + 8) != -1059143458)
  {
LABEL_6:
    BufferHeader = _getBufferHeader(&v7);
    return PSFrameHistoryBufferServiceServer::deleteBuffer(BufferHeader, v4, v5, v6);
  }

  return result;
}

void PSFrameHistoryBufferServiceServer::deleteBuffer(PSFrameHistoryBufferServiceServer *this, int a2, unsigned int a3, unsigned __int16 a4)
{
  *&v21[5] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v4 = atomic_load(this);
  if (v4)
  {
    if (a3 > 3 || (v6 = v19, *(&_frameHistoryBufferPoolDesc + 7 * a3 + 1) <= v19))
    {
      PSFrameHistoryBufferServiceServer::deleteBuffer(buf);
    }

    v9 = *(this + 27) + 400 * a3 + 4 * v19;
    v11 = *(v9 + 116);
    v10 = (v9 + 116);
    if (v11 == a2)
    {
      *v10 = 0;
      v12 = (_getBufferHeader(this + 224, a3 | (v6 << 16)) + *(&_frameHistoryBufferPoolDesc + 7 * a3 + 4));
      if (*v12 != 205)
      {
        goto LABEL_19;
      }

      v13 = 1;
      do
      {
        if (v13 == 8)
        {
          goto LABEL_10;
        }

        v14 = v12[v13++];
      }

      while (v14 == 205);
      if ((v13 - 2) <= 6)
      {
LABEL_19:
        PSFrameHistoryBufferServiceServer::deleteBuffer(buf);
      }

LABEL_10:
      std::deque<unsigned short>::push_back(this + 6 * a3 + 3, &v19);
    }

    else
    {
      v16 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(*(this + 27) + 400 * a3 + 4 * v19 + 116);
        *buf = 67109376;
        v21[0] = v17;
        LOWORD(v21[1]) = 1024;
        *(&v21[1] + 2) = a2;
        _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: buffer pid (%u) does not match msg pid (%u) in deallocate", buf, 0xEu);
      }
    }
  }

  else
  {
    v15 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v21 = "deleteBuffer";
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: Server not initialized but %s called", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void PSFrameHistoryBufferServiceServer::handleDeath(PSFrameHistoryBufferServiceServer *this, int a2)
{
  v2 = atomic_load(this);
  if (v2)
  {
    PSFrameHistoryBufferServiceServer::dumpFrameHistory(this, 0, 1u);
    v5 = 0;
    v6 = 116;
    do
    {
      v7 = *(&_frameHistoryBufferPoolDesc + 7 * v5 + 1);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = *(this + 27) + v6;
          if (*(v9 + 4 * i) == a2)
          {
            *(v9 + 4 * i) = 0;
            v10 = i;
            std::deque<unsigned short>::push_back(this + 6 * v5 + 3, &v10);
          }
        }
      }

      ++v5;
      v6 += 400;
    }

    while (v5 != 4);
  }
}

void PSFrameHistoryBufferServiceServer::dumpFrameHistory(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v96 = *MEMORY[0x277D85DE8];
  if (a3 >= 3)
  {
    PSFrameHistoryBufferServiceServer::dumpFrameHistory(buf);
  }

  if (a3)
  {
    v5 = a3 == 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  v7 = atomic_load(a1);
  if (v7)
  {
    v70 = a2;
    v8 = mach_absolute_time();
    v9 = v8;
    if (a3 == 2 || v8 >= *(a1 + 352) + *(a1 + 344))
    {
      v69 = v6;
      *(a1 + 344) = v8;
      v18 = ps_buffer_get_serial_data_write_buffer_size(*(a1 + 8));
      __dst = malloc_type_malloc(v18, 0x100004077774924uLL);
      v71 = *(a1 + 336);
      *(a1 + 336) = v71 + 1;
      v19 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v71;
        _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEFAULT, "PSFrameHistoryBufferService: Requesting frame history dump (dump_count = %u)", buf, 8u);
      }

      v84 = 0;
      ps_get_times(0, &v84, buf);
      v20 = *(a1 + 216);
      v20[218] = v84;
      v20[217] = 1000000001 * *buf;
      v83 = 37;
      v21 = sysctlbyname("kern.bootsessionuuid", v20 + 219, &v83, 0, 0);
      if (!v21)
      {
        v23 = 1792;
        memcpy(__dst, *(a1 + 216), 0x700uLL);
        v24 = 0;
        v77 = vdupq_n_s64(2uLL);
        do
        {
          v25 = &_frameHistoryBufferPoolDesc + 7 * v24;
          v76 = v25[1];
          if (v76)
          {
            v26 = 0;
            v27 = 0;
            v28 = v25[2];
            v29 = v25[3];
            v72 = (v28 + 1) & 0x1FFFFFFFELL;
            v73 = v28;
            v74 = vdupq_n_s64(v28 - 1);
            do
            {
              v21 = v21 & 0xFFFFFFFF00000000 | v24 | (v26 << 16);
              BufferHeader = _getBufferHeader(a1 + 224, v21);
              v31 = BufferHeader;
              v32 = &__dst[v23];
              v33 = atomic_load((BufferHeader + 18));
              if (v33)
              {
                v34 = atomic_load(BufferHeader);
                memcpy(&__dst[v23], BufferHeader, v29);
                v35 = atomic_load(v31);
                if (v34 != v35)
                {
                  atomic_store(v34, v32);
                  v36 = v34 & 0x1FFFFFFFFFFFFFFFLL;
                  v37 = v35 & 0x1FFFFFFFFFFFFFFFLL;
                  v38 = (v35 & 0x1FFFFFFFFFFFFFFFLL) - (v34 & 0x1FFFFFFFFFFFFFFFLL);
                  if ((v35 & 0x1FFFFFFFFFFFFFFFLL) < (v34 & 0x1FFFFFFFFFFFFFFFLL))
                  {
                    PSFrameHistoryBufferServiceServer::dumpFrameHistory(v87);
                  }

                  v39 = &__dst[v23 + 688];
                  if (v38 >= v73)
                  {
                    if (v73)
                    {
                      v55 = v72;
                      v56 = xmmword_25EC2CD70;
                      do
                      {
                        v57 = vmovn_s64(vcgeq_u64(v74, v56));
                        if (v57.i8[0])
                        {
                          *(v39 - 8) = -1;
                        }

                        if (v57.i8[4])
                        {
                          *v39 = -1;
                        }

                        v56 = vaddq_s64(v56, vdupq_n_s64(2uLL));
                        v39 += 128;
                        v55 -= 2;
                      }

                      while (v55);
                    }
                  }

                  else
                  {
                    v40 = v36 / v73;
                    v41 = v36 % v73;
                    v42 = v36 % v73 + v38;
                    if (v42 <= v73)
                    {
                      if (v42 > v41)
                      {
                        v58 = 0;
                        v59 = v41;
                        v60 = v32 + 608;
                        v61 = v41 + v37 - (v36 + v41);
                        v62 = (v61 + 1) & 0xFFFFFFFFFFFFFFFELL;
                        v63 = vdupq_n_s64(v61 - 1);
                        do
                        {
                          v64 = v59 + v58;
                          v65 = vmovn_s64(vcgeq_u64(v63, vorrq_s8(vdupq_n_s64(v58), xmmword_25EC2CD70)));
                          if (v65.i8[0])
                          {
                            *&v60[64 * v64 + 16] = -1;
                          }

                          if (v65.i8[4])
                          {
                            *&v60[64 * v64 + 80] = -1;
                          }

                          v58 += 2;
                        }

                        while (v62 != v58);
                      }
                    }

                    else
                    {
                      if (v73 > v41)
                      {
                        v43 = 0;
                        v44 = v32 + 608;
                        v45 = (v73 + v73 * v40 + ~v34);
                        v46 = (v45 + 2) & 0x1FFFFFFFELL;
                        v47 = vdupq_n_s64(v45);
                        do
                        {
                          v48 = v41 + v43;
                          v49 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(vdupq_n_s64(v43), xmmword_25EC2CD70)));
                          if (v49.i8[0])
                          {
                            *&v44[64 * v48 + 16] = -1;
                          }

                          if (v49.i8[4])
                          {
                            *&v44[64 * v48 + 80] = -1;
                          }

                          v43 += 2;
                        }

                        while (v46 != v43);
                      }

                      v50 = (v38 - v73 + v41);
                      if (v50 >= 1)
                      {
                        v51 = (v50 + 1) & 0xFFFFFFFE;
                        v52 = vdupq_n_s64(v50 - 1);
                        v53 = xmmword_25EC2CD70;
                        do
                        {
                          v54 = vmovn_s64(vcgeq_u64(v52, v53));
                          if (v54.i8[0])
                          {
                            *(v39 - 8) = -1;
                          }

                          if (v54.i8[4])
                          {
                            *v39 = -1;
                          }

                          v53 = vaddq_s64(v53, v77);
                          v39 += 128;
                          v51 -= 2;
                        }

                        while (v51);
                      }
                    }
                  }
                }
              }

              else
              {
                atomic_store(0, v32 + 18);
              }

              v23 += v29;
              v26 = ++v27;
            }

            while (v76 > v27);
          }

          ++v24;
        }

        while (v24 != 4);
        PSFrameHistoryBufferServiceServer::_buildDecodeMap(a1);
        if (ps_util_is_internal_build())
        {
          v66 = 264 * *(a1 + 288) + 8;
          v67 = malloc_type_malloc(v66, 0x100004077774924uLL);
          memcpy(v67, *(a1 + 304), v66);
        }

        else
        {
          v67 = 0;
          v66 = 0;
        }

        v13 = *(a1 + 320);
        v14 = *(a1 + 328);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___ZN33PSFrameHistoryBufferServiceServer16dumpFrameHistoryEj28ps_frame_history_dump_type_t_block_invoke_12;
        block[3] = &__block_descriptor_69_e5_v8__0l;
        block[4] = __dst;
        block[5] = v67;
        block[6] = v66;
        v79 = v23;
        v80 = v71;
        v82 = v69;
        v81 = v70;
        v15 = block;
        goto LABEL_72;
      }

      v22 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v87 = 67109120;
        *&v87[4] = v21;
        _os_log_impl(&dword_25EBC5000, v22, OS_LOG_TYPE_ERROR, "Polaris Buffer Service: Unable to read boot session UUID string ret=%d", v87, 8u);
      }
    }

    else
    {
      v10 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = ps_util_mach_time_to_ns(*(a1 + 344));
        v12 = ps_util_mach_time_to_ns(*(a1 + 352));
        *buf = 134218496;
        *&buf[4] = v11;
        v89 = 2048;
        v90 = v12;
        v91 = 2048;
        v92 = ps_util_mach_time_to_ns(v9);
        _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: frameDump currently timed out, rejecting request - lastDumpTime (%llu), dumpTimeoutInterval (%llu), currentTime (%llu)", buf, 0x20u);
      }

      if (!a3)
      {
        v13 = *(a1 + 320);
        v14 = *(a1 + 328);
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = ___ZN33PSFrameHistoryBufferServiceServer16dumpFrameHistoryEj28ps_frame_history_dump_type_t_block_invoke;
        v85[3] = &__block_descriptor_36_e5_v8__0l;
        v86 = v70;
        v15 = v85;
LABEL_72:
        dispatch_group_async(v13, v14, v15);
      }
    }
  }

  else
  {
    v17 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "dumpFrameHistory";
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: Server not initialized but %s called", buf, 0xCu);
    }

    if ((a3 | 2) == 2)
    {
      v95 = 20;
      v94 = 2;
      v93 = -536870212;
      ps_comms_reply(buf, 2192, a2);
    }
  }

  v68 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN33PSFrameHistoryBufferServiceServer16dumpFrameHistoryEj28ps_frame_history_dump_type_t_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v7 = 20;
  v6 = 2;
  v5 = -536870184;
  result = ps_comms_reply(v4, 2192, v1);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN33PSFrameHistoryBufferServiceServer16dumpFrameHistoryEj28ps_frame_history_dump_type_t_block_invoke_12(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v41 = *(a1 + 48);
  v42 = *(a1 + 40);
  v43 = *(a1 + 56);
  v44 = *(a1 + 32);
  v45 = *(a1 + 60);
  v48 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/", "/var/mobile/Library/Logs/com.apple.polarisd/frameHistory"];
  if ([v48 fileExistsAtPath:v1])
  {
    v2 = 0;
    goto LABEL_5;
  }

  v58 = 0;
  v3 = [v48 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v58];
  v4 = v58;
  v5 = v4;
  if (v3)
  {
    v2 = v4;
LABEL_5:
    v57 = v2;
    obj = [v48 contentsOfDirectoryAtPath:v1 error:&v57];
    v5 = v57;

    if (v5)
    {
      v6 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = v5;
        _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: failed to get dir contents, err - %@", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_56;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obja = obj;
    v9 = [obja countByEnumeratingWithState:&v53 objects:buf count:16];
    if (v9)
    {
      v10 = *v54;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v54 != v10)
          {
            objc_enumerationMutation(obja);
          }

          v12 = *(*(&v53 + 1) + 8 * i);
          if (([v12 containsString:@"polaris-frame-history-buffer-dump"] & 1) != 0 || objc_msgSend(v12, "containsString:", @"polaris-frame-history-hash-dump"))
          {
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v1, v12];
            [v8 addObject:v13];
          }
        }

        v9 = [obja countByEnumeratingWithState:&v53 objects:buf count:16];
      }

      while (v9);
    }

    v46 = v8;
    v14 = [v46 count];
    v15 = v14;
    if (v14 >= 0xB)
    {
      v16 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v63 = 134283777;
        *&v63[4] = v15;
        *&v63[12] = 1025;
        *&v63[14] = 5;
        _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_ERROR, "Frame History Buffer Service: file_count %{private}llu exceeds expected %{private}d", v63, 0x12u);
      }

      goto LABEL_27;
    }

    if (v14 >= 9)
    {
LABEL_27:
      *v66 = 0;
      v67 = v66;
      v68 = 0x2020000000;
      v69 = 0;
      *v63 = MEMORY[0x277D85DD0];
      *&v63[8] = 3221225472;
      *&v63[16] = ___ZL17bufferServiceDumpPKcmS0_mj_block_invoke;
      v64 = &unk_279A4D848;
      v65 = v66;
      obj = [v46 sortedArrayUsingComparator:v63];

      if (v67[24])
      {
        v18 = _polarisdLogSharedInstance();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v59 = 0;
          _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: failed to sort files based on creation time", v59, 2u);
        }

        v5 = 0;
      }

      else
      {
        v19 = 0;
        v5 = 0;
        v20 = v15 - 8;
        while (1)
        {
          v21 = [obj objectAtIndexedSubscript:v19];
          v52 = v5;
          v22 = [v48 removeItemAtPath:v21 error:&v52];
          v23 = v52;

          v5 = v23;
          if ((v22 & 1) == 0)
          {
            break;
          }

          if (v20 == ++v19)
          {
            _Block_object_dispose(v66, 8);
            goto LABEL_36;
          }
        }

        v18 = _polarisdLogSharedInstance();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v31 = [obj objectAtIndexedSubscript:v19];
          *v59 = 138412546;
          v60 = v31;
          v61 = 2112;
          v62 = v23;
          _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: failed to delete file (%@), err - %@", v59, 0x16u);
        }
      }

      _Block_object_dispose(v66, 8);
      v7 = 0;
      goto LABEL_55;
    }

    v5 = 0;
    obj = v46;
LABEL_36:
    v51 = 0;
    time(&v51);
    v24 = localtime(&v51);
    strftime(v66, 0x20uLL, "%Y-%m-%d-%H%M%S", v24);
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%s_%u_%s", "/var/mobile/Library/Logs/com.apple.polarisd/frameHistory", "polaris-frame-history-buffer-dump", v45, v66];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%s_%u_%s", "/var/mobile/Library/Logs/com.apple.polarisd/frameHistory", "polaris-frame-history-hash-dump", v45, v66];
    v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v44 length:v43 freeWhenDone:0];
    if ([v27 writeToFile:v25 atomically:0])
    {
      v28 = ps_util_is_internal_build() ^ 1;
      if (!v42)
      {
        LOBYTE(v28) = 1;
      }

      if (v28)
      {
        v30 = v25;
        v7 = 1;
LABEL_54:

LABEL_55:
        v6 = v46;
LABEL_56:

        v17 = obj;
        goto LABEL_57;
      }

      v29 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v42 length:v41 freeWhenDone:0];
      if (([v29 writeToFile:v26 atomically:0]& 1) != 0)
      {
        v30 = v25;
        v7 = 1;
LABEL_53:

        goto LABEL_54;
      }

      v32 = _polarisdLogSharedInstance();
      v30 = v25;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v59 = 138412290;
        v60 = v26;
        _os_log_impl(&dword_25EBC5000, v32, OS_LOG_TYPE_ERROR, "Failed to write to hash file %@", v59, 0xCu);
      }
    }

    else
    {
      v29 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *v59 = 138412290;
        v30 = v25;
        v60 = v25;
        _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_ERROR, "Failed to write to data file %@", v59, 0xCu);
      }

      else
      {
        v30 = v25;
      }
    }

    v7 = 0;
    goto LABEL_53;
  }

  v17 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v71 = v1;
    v72 = 2112;
    v73 = v5;
    _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: Failed to create dir (%@), err - %@", buf, 0x16u);
  }

  v7 = 0;
LABEL_57:

  free(*(a1 + 32));
  free(*(a1 + 40));
  v33 = _polarisdLogSharedInstance();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v34)
    {
      goto LABEL_63;
    }

    v35 = *(a1 + 60);
    *buf = 67109120;
    LODWORD(v71) = v35;
    v36 = "PSFrameHistoryBufferService: Successfully dumped frame history (dump_count = %u)";
  }

  else
  {
    if (!v34)
    {
      goto LABEL_63;
    }

    v37 = *(a1 + 60);
    *buf = 67109120;
    LODWORD(v71) = v37;
    v36 = "PSFrameHistoryBufferService: Failed to dump frame history (dump_count = %u)";
  }

  _os_log_impl(&dword_25EBC5000, v33, OS_LOG_TYPE_DEFAULT, v36, buf, 8u);
LABEL_63:

  if (*(a1 + 68) == 1)
  {
    if (v7)
    {
      v38 = 0;
    }

    else
    {
      v38 = -536870212;
    }

    v39 = *(a1 + 64);
    v76 = 20;
    v75 = 2;
    v74 = v38;
    ps_comms_reply(buf, 2192, v39);
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZL17bufferServiceDumpPKcmS0_mj_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (stat([v7 UTF8String], &v17))
  {
    v9 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: Invalid filename provided (%@)", buf, 0xCu);
    }

LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v12 = -1;
    goto LABEL_10;
  }

  v10 = v8;
  if (stat([v8 UTF8String], &v16))
  {
    v11 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "PSFrameHistoryBufferService: Invalid filename provided (%@)", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v15 = v17.st_birthtimespec.tv_sec < v16.st_birthtimespec.tv_sec;
  if (v17.st_birthtimespec.tv_sec == v16.st_birthtimespec.tv_sec)
  {
    v15 = v17.st_birthtimespec.tv_nsec < v16.st_birthtimespec.tv_nsec;
  }

  if (v15)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t std::deque<unsigned short>::~deque[abi:ne200100](void *a1)
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
    v5 = 1024;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 2048;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned short *>::~__split_buffer(a1);
}

void std::deque<unsigned short>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 1024;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 2048;
  }

  a1[4] = v6;
}

uint64_t std::__split_buffer<unsigned short *>::~__split_buffer(uint64_t a1)
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

uint64_t std::deque<unsigned short>::__move_assign(void **a1, uint64_t a2)
{
  std::deque<unsigned short>::clear(a1);
  std::deque<unsigned short>::shrink_to_fit(a1);
  result = std::__split_buffer<unsigned short *>::operator=(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::deque<unsigned short>::shrink_to_fit(void **a1)
{
  if (a1[5])
  {
    std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100](a1, 0);
    std::deque<unsigned short>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  std::__split_buffer<unsigned short *>::shrink_to_fit(a1);
}

uint64_t std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x800)
  {
    a2 = 1;
  }

  if (v2 < 0x1000)
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
    *(a1 + 32) -= 2048;
  }

  return v4 ^ 1u;
}

uint64_t std::deque<unsigned short>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 8) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x800)
  {
    a2 = 1;
  }

  if (v5 < 0x1000)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__split_buffer<unsigned short *>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<unsigned short *>::operator=(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<unsigned short *>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *std::deque<unsigned short>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x800;
  v3 = v1 - 2048;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned short *>::emplace_back<unsigned short *&>(a1, &v10);
}

void sub_25EC01554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned short *>::emplace_back<unsigned short *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result, v11);
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

const void **std::__split_buffer<unsigned short *>::emplace_front<unsigned short *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result, v9);
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

void *std::__split_buffer<unsigned short *>::emplace_back<unsigned short *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result[4], v11);
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

const void **std::__split_buffer<unsigned short *>::emplace_front<unsigned short *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result[4], v9);
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void OUTLINED_FUNCTION_12_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x1Cu);
}

void ps_atomic_ringbuffer_delete_writer(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void ps_atomic_ringbuffer_delete_reader(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t ps_atomic_ringbuffer_writer_relinquish_entry(uint64_t a1, uint64_t a2)
{
  result = 3758097084;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 + 16);
      if (v5 <= *(v4 + 20))
      {
        _X2 = 0;
        _X3 = 0;
        v8 = (v4 + *(v4 + 8) + 16 * v5);
        __asm { CASPAL          X2, X3, X2, X3, [X8] }

        if (*(a2 + 8))
        {
          _ZF = 0;
        }

        else
        {
          _ZF = _X2 == *a2;
        }

        if (!_ZF)
        {
          ps_atomic_ringbuffer_writer_relinquish_entry_cold_1(v20);
LABEL_15:
          v18 = ps_atomic_ringbuffer_writer_relinquish_entry_cold_2(v20);
          return ps_atomic_ringbuffer_reader_relinquish_entry(v18, v19);
        }

        if (_X2 != 2)
        {
          goto LABEL_15;
        }

        _X2 = _X2 & 0xFFFFFFFFFFFFFF00 | 4;
        v15 = *v8;
        do
        {
          _X5 = v8[1];
          __asm { CASPAL          X4, X5, X2, X3, [X8] }

          _ZF = _X4 == v15;
          v15 = _X4;
        }

        while (!_ZF);
        return 0;
      }
    }
  }

  return result;
}

uint64_t ps_atomic_ringbuffer_reader_relinquish_entry(uint64_t a1, uint64_t a2)
{
  result = 3758097084;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 16);
      v5 = *(a2 + 16);
      if (v5 <= *(v4 + 20))
      {
        _X2 = 0;
        _X3 = 0;
        v8 = (v4 + *(v4 + 8) + 16 * v5);
        __asm { CASPAL          X2, X3, X2, X3, [X8] }

        if (*(a2 + 8))
        {
          _ZF = 0;
        }

        else
        {
          _ZF = _X2 == *a2;
        }

        if (!_ZF)
        {
          ps_atomic_ringbuffer_reader_relinquish_entry_cold_1(v19);
LABEL_15:
          v18 = ps_atomic_ringbuffer_reader_relinquish_entry_cold_2(v19);
          return ps_atomic_ringbuffer_write_entries(v18);
        }

        if (_X2 != 8)
        {
          goto LABEL_15;
        }

        _X2 = _X2 & 0xFFFFFFFFFFFFFF00 | 1;
        v15 = *v8;
        do
        {
          _X5 = v8[1];
          __asm { CASPAL          X4, X5, X2, X3, [X8] }

          _ZF = _X4 == v15;
          v15 = _X4;
        }

        while (!_ZF);
        return 0;
      }
    }
  }

  return result;
}

uint64_t ps_atomic_ringbuffer_write_entries(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 3758097084;
  if (a1)
  {
    if (a2)
    {
      LODWORD(v6) = a3;
      if (a3 <= 5)
      {
        v15 = 0;
        memset(v14, 0, sizeof(v14));
        result = ps_atomic_ringbuffer_writer_acquire_entry(a1, v14, &v15);
        if (!result)
        {
          if (v6)
          {
            v7 = *(a1 + 8);
            v6 = v6;
            v8 = (a2 + 8);
            while (1)
            {
              v9 = *(v8 - 1);
              if (!v9)
              {
                return 3758097084;
              }

              v10 = *v8;
              v11 = v8[1];
              if ((v10 + v11) > *(v7 + 24))
              {
                return 3758097084;
              }

              memcpy((v15 + v11), v9, v10);
              v8 += 4;
              if (!--v6)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
LABEL_10:
            result = ps_atomic_ringbuffer_writer_relinquish_entry(a1, v14);
            if (result)
            {
              v12 = ps_atomic_ringbuffer_write_entries_cold_1(v13);
              return ps_atomic_ringbuffer_handle_death(v12);
            }
          }
        }
      }
    }
  }

  return result;
}

void ps_atomic_ringbuffer_handle_death(unsigned int *a1, int a2)
{
  if (!a1)
  {
    ps_atomic_ringbuffer_handle_death_cold_2(v16);
    goto LABEL_17;
  }

  if (a1[7] != 1282145770)
  {
LABEL_17:
    v15 = ps_atomic_ringbuffer_handle_death_cold_1(v16);
    ps_atomic_ringbuffer_print_ring_state(v15);
    return;
  }

  if (a1[5])
  {
    _X2 = 0;
    v3 = 0;
    do
    {
      v4 = (&a1[4 * v3] + a1[2]);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X2, X3, [X10] }

      if ((_X4 >> 8) == a2)
      {
        _ZF = _X4 == 8 || _X4 == 2;
        if (_ZF)
        {
          _X4 = _X4 & 0xFFFFFFFFFFFFFF00 | 1;
          v12 = *v4;
          do
          {
            _X13 = v4[1];
            __asm { CASPAL          X12, X13, X4, X5, [X10] }

            _ZF = _X12 == v12;
            v12 = _X12;
          }

          while (!_ZF);
        }
      }

      ++v3;
    }

    while (v3 < a1[5]);
  }
}

void ps_atomic_ringbuffer_print_ring_state(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ps_atomic_ringbuffer_print_ring_state_cold_2(&v19);
LABEL_16:
    ps_atomic_ringbuffer_print_ring_state_cold_1(&v19);
  }

  if (*(a1 + 28) != 1282145770)
  {
    goto LABEL_16;
  }

  v2 = *(a1 + 8);
  v3 = __PSUtilitiesLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEFAULT, "\n*** Printing Ring State ***\n", &v19, 2u);
  }

  v4 = __PSUtilitiesLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 20);
    v6 = *(a1 + 24);
    v7 = atomic_load(a1);
    v19 = 67109632;
    v20 = v5;
    v21 = 1024;
    *v22 = v6;
    *&v22[4] = 2048;
    *&v22[6] = v7;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEFAULT, "Entry Count: %u, Entry Size: %u, SeqVal: %llu\n", &v19, 0x18u);
  }

  if (*(a1 + 20))
  {
    _X20 = 0;
    v9 = 0;
    do
    {
      _X25 = 0;
      __asm { CASPAL          X24, X25, X20, X21, [X8] }

      v16 = __PSUtilitiesLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 67109888;
        v20 = v9;
        v21 = 2048;
        *v22 = (_X24 >> 40) & 0xFFFFFFFFFFFFFFLL;
        *&v22[8] = 1024;
        *&v22[10] = _X24 >> 8;
        v23 = 1024;
        v24 = _X24;
        _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEFAULT, "Idx: %d, Step: %llu, Pid %u, State: %d\n", &v19, 0x1Eu);
      }

      ++v9;
    }

    while (v9 < *(a1 + 20));
  }

  v17 = __PSUtilitiesLogSharedInstance();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEFAULT, "*** Printing Ring State Done ***\n", &v19, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t ps_ringbuffer_create_inplace(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if ((a1 & 0xF) != 0)
  {
    v3 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v12 = 67109376;
      v13 = 16;
      v14 = 2048;
      v15 = v2;
      v4 = "ring buffer base needs to be aligned to %u, actual=0x%p";
      v5 = v3;
      v6 = 18;
LABEL_10:
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, v4, &v12, v6);
    }
  }

  else if ((a2 & 0xF) != 0)
  {
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v12 = 67109376;
      v13 = 16;
      v14 = 1024;
      LODWORD(v15) = a2;
      v4 = "ring buffer size needs to be a multiple of block size %u, actual=%u";
      v5 = v8;
      v6 = 14;
      goto LABEL_10;
    }
  }

  else
  {
    atomic_store(0, (a1 + 8));
    *a1 = 16;
    if (a2 >> 4 > 0x400)
    {
      *(a1 + 4) = (a2 - 16385) >> 4;
      goto LABEL_12;
    }

    v9 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v12 = 67109120;
      v13 = 16400;
      v4 = "ringbuffer needs to be > %u to fit header and overflow area";
      v5 = v9;
      v6 = 8;
      goto LABEL_10;
    }
  }

  v2 = 0;
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

char *ps_ringbuffer_allocate(unsigned int *a1, unsigned int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if (!a2 || a2 > 0x3FF0)
  {
    return 0;
  }

  v26 = a2 + 31;
  v9 = (a1 + 2);
  v10 = atomic_load(a1 + 1);
  do
  {
    v11 = v10;
    v12 = v10 & 0x3FFFFF;
    v13 = (v10 & 0x3FFFFF) + (v26 >> 4);
    if (v13 >= a1[1])
    {
      v13 = 0;
    }

    v14 = v13 | (v10 + 0x100000000) & 0xFFFFFF00000000;
    v15 = mach_absolute_time();
    atomic_compare_exchange_strong(v9, &v10, v14);
  }

  while (v10 != v11);
  v16 = a1 + *a1;
  _X2 = (v11 << 24) & 0xFF00000000000000 | v15 & 0xFFFFFFFFFFFFFFLL;
  if (a5)
  {
    *a5 = _X2;
    a5[1] = ((a3 & 0xF) << 32) | (v26 >> 4) & 0x3FF | (v12 << 10) | (a4 << 36) | 0xA530000000000000;
  }

  v18 = &v16[16 * v12];
  v19 = *v18;
  do
  {
    _X5 = *(v18 + 1);
    __asm { CASPAL          X4, X5, X2, X3, [X8] }

    _ZF = _X4 == v19;
    v19 = _X4;
  }

  while (!_ZF);
  return v18 + 16;
}

unint64_t ps_ringbuffer_allocate_closed(unsigned int *a1)
{
  v2 = (a1 + 2);
  v3 = atomic_load(a1 + 1);
  do
  {
    v4 = v3;
    v5 = v3 & 0x3FFFFF;
    if ((v3 & 0x3FFFFF) + 1 < a1[1])
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 | (v3 + 0x100000000) & 0xFFFFFF00000000;
    v8 = mach_absolute_time();
    atomic_compare_exchange_strong(v2, &v3, v7);
  }

  while (v3 != v4);
  result = (v4 << 24) & 0xFF00000000000000 | v8 & 0xFFFFFFFFFFFFFFLL;
  v10 = (&a1[4 * v5] + *a1);
  v11 = *v10;
  do
  {
    _X5 = v10[1];
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v11;
    v11 = _X4;
  }

  while (!_ZF);
  return result;
}

BOOL ps_ringbuffer_close_allocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _X4 = a2;
  _X1 = a3;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  return _X0 == a2;
}

BOOL ps_ringbuffer_close_allocation_with_aux(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _X2 = a2;
  _X1 = a3;
  __asm { CASPAL          X0, X1, X2, X3, [X8] }

  return _X0 == a2;
}

char *ps_ringbuffer_get_mem_from_tag(unsigned int *a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (a3 >> 10 >= a1[1] || (a3 & 0x3FF) < 2)
  {
    return 0;
  }

  result = &a1[4 * (a3 >> 10) + 4] + *a1;
  if (a4)
  {
    *a4 = 16 * (a3 & 0x3FF) - 16;
  }

  return result;
}

unint64_t *ps_ringbuffer_static_copy(unint64_t *a1, int a2)
{
  v4 = (*a1 + 16 * *(a1 + 1) + 0x4000);
  v5 = malloc_type_malloc(v4, 0x5400C204uLL);
  if (v5)
  {
    while (1)
    {
      v6 = atomic_load(a1 + 1);
      memcpy(v5, a1, v4);
      v7 = atomic_load(a1 + 1);
      if (!a2)
      {
        break;
      }

      if (v6 == v7)
      {
        atomic_load(a1 + 1);
        return v5;
      }
    }

    if (v6 != v7)
    {
      atomic_store(v7, v5 + 1);
    }
  }

  return v5;
}

uint64_t ps_ringbuffer_find_first_tag(unint64_t *a1)
{
  v1 = atomic_load(a1 + 1);
  v2 = v1 & 0x3FFFFF;
  v3 = v1 & 0x3FFFFF;
  while (1)
  {
    v4 = (&a1[2 * v3] + *a1);
    v6 = *v4;
    v5 = v4[1];
    if ((v5 >> 52 == 2643 || v5 >> 52 == 1452) && v3 == v5 >> 10)
    {
      break;
    }

    if (v3 + 1 < *(a1 + 1))
    {
      ++v3;
    }

    else
    {
      v3 = 0;
    }

    if (v3 == v2)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t ps_ringbuffer_find_next_tag(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v3 = a1 + *a1;
  v4 = atomic_load(a1 + 1);
  v5 = v4 & 0x3FFFFF;
  v6 = (a3 & 0x3FF) + (a3 >> 10);
  v7 = *(a1 + 1);
  if (v6 >= v7)
  {
    v6 = 0;
  }

  v8 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (HIBYTE(a2) + 1);
  v10 = 1;
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v11 = &v3[16 * v6];
    result = *v11;
    v13 = *(v11 + 1);
    v14 = v13 >> 52 == 2643 || v13 >> 52 == 1452;
    v15 = v14;
    v16 = (result & 0xFFFFFFFFFFFFFFLL) >= v8 && v13 >> 10 == v6;
    v17 = v16;
    v18 = v17 && v15;
    if (v10)
    {
      if (v9 == HIBYTE(result) && v18)
      {
        return result;
      }
    }

    else if (v18)
    {
      return result;
    }

    v10 = 0;
    if (v6 + 1 < v7)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6 != v5);
  return 0;
}

BOOL ps_ringbuffer_tag_overwrote_oldtag(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!(a4 | a5))
  {
    return 0;
  }

  v5 = a5 >> 10;
  return a3 >> 10 <= v5 && v5 < ((a3 & 0x3FF) + (a3 >> 10)) % *(a1 + 4);
}

void sub_25EC02A4C(_Unwind_Exception *a1)
{
  MEMORY[0x25F8CA500](v2, 0x10B1C409F8565BELL);
  PSSharedResource::~PSSharedResource(v1);
  _Unwind_Resume(a1);
}

void PSSharedRingBufferReader::~PSSharedRingBufferReader(PSSharedRingBufferReader *this)
{
  v13 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CE488;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "PSSharedRingBufferReader";
    v7 = 2080;
    Key = PSSharedResource::getKey(this);
    v9 = 2080;
    v10 = "~PSSharedRingBufferReader";
    v11 = 1024;
    v12 = 34;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d", &v5, 0x26u);
  }

  v3 = *(this + 69);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PSSharedResource::~PSSharedResource(this);
  v4 = *MEMORY[0x277D85DE8];
}

{
  PSSharedRingBufferReader::~PSSharedRingBufferReader(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EC02BB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ps_destroy_ringbuffer_reader(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_ringbuffer_reader_get_hdr(uint64_t result)
{
  if (result)
  {
    return *(result + 560);
  }

  return result;
}

void PSSharedRingBufferWriter::~PSSharedRingBufferWriter(PSSharedRingBufferWriter *this)
{
  v13 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CE4E0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "PSSharedRingBufferWriter";
    v7 = 2080;
    Key = PSSharedResource::getKey(this);
    v9 = 2080;
    v10 = "~PSSharedRingBufferWriter";
    v11 = 1024;
    v12 = 63;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d", &v5, 0x26u);
  }

  v3 = *(this + 69);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PSSharedResource::~PSSharedResource(this);
  v4 = *MEMORY[0x277D85DE8];
}

{
  PSSharedRingBufferWriter::~PSSharedRingBufferWriter(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EC031D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ps_destroy_ringbuffer_writer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_ringbuffer_writer_get_hdr(uint64_t result)
{
  if (result)
  {
    return *(result + 560);
  }

  return result;
}

uint64_t pbs_ringbufferlogger_decoder_instance()
{
  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  return instantiate_or_destroy_decoder(BOOL)::instance;
}

uint64_t pbs_ringbufferlogger_destroy_decoder_instance()
{
  result = instantiate_or_destroy_decoder(BOOL)::instance;
  if (instantiate_or_destroy_decoder(BOOL)::instance)
  {
    result = (*(*instantiate_or_destroy_decoder(BOOL)::instance + 8))(instantiate_or_destroy_decoder(BOOL)::instance);
  }

  instantiate_or_destroy_decoder(BOOL)::instance = 0;
  return result;
}

void pbs_ringbuffer_declare_format_string(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  v6 = instantiate_or_destroy_decoder(BOOL)::instance;

  PSRingBufferLogDataDecode::registerFormatStringForDecode(v6, a1, a2, a3);
}

void pbs_ringbuffer_declare_data_handler(uint64_t a1, unsigned int a2, const void *a3)
{
  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  v6 = instantiate_or_destroy_decoder(BOOL)::instance;

  PSRingBufferLogDataDecode::registerHandlerForDataDecode(v6, a1, a2, a3);
}

void pbs_ringbuffer_declare_data_string(unint64_t a1, char *a2)
{
  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  v4 = instantiate_or_destroy_decoder(BOOL)::instance;

  PSRingBufferLogDataDecode::registerStringDataForDecode(v4, a1, a2);
}

uint64_t pbs_ringbuffer_dump_log(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  v8 = instantiate_or_destroy_decoder(BOOL)::instance;

  return PSRingBufferLogDataDecode::dumpFromW1R1Buffer(v8, a1, a2, a3, a4);
}

uint64_t pbs_ringbuffer_dump_log_from_file(char *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  v8 = instantiate_or_destroy_decoder(BOOL)::instance;

  return PSRingBufferLogDataDecode::dumpFromW1R1File(v8, a1, a2, a3, a4);
}

uint64_t pbs_ringbuffer_dump_shared_log_from_file(char *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  v8 = instantiate_or_destroy_decoder(BOOL)::instance;

  return PSRingBufferLogDataDecode::dumpFromWnR1File(v8, a1, a2, a3, a4);
}

uint64_t pbs_ringbuffer_dump_shared_log(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
    {
      pbs_ringbufferlogger_decoder_instance_cold_1();
    }

    v8 = instantiate_or_destroy_decoder(BOOL)::instance;

    return PSRingBufferLogDataDecode::dumpFromWnR1Buffer(v8, v7, a2, a3, a4);
  }

  return result;
}

uint64_t pbs_ringbuffer_dump_shared_log_with_decoder(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    return PSRingBufferLogDataDecode::dumpFromWnR1Buffer(a4, result, a2, a3, a5);
  }

  return result;
}

void pbs_ringbuffer_decoder_cleanup_for_pid(unsigned int a1)
{
  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  v2 = instantiate_or_destroy_decoder(BOOL)::instance;

  PSRingBufferLogDataDecode::deregisterStringDataForOverlay(v2, a1);
}

void pbs_ringbuffer_dump_decoder(char *a1, unsigned int a2, uint64_t a3)
{
  if (instantiate_or_destroy_decoder(BOOL)::onceToken != -1)
  {
    pbs_ringbufferlogger_decoder_instance_cold_1();
  }

  v6 = instantiate_or_destroy_decoder(BOOL)::instance;

  PSRingBufferLogDataDecode::dumpDecodeMatrix(v6, a1, a2, a3);
}

uint64_t pbs_ringbufferlogger_is_module_safe_to_write(unsigned int a1)
{
  is_internal_build = ps_util_is_internal_build();
  v3 = 0xF7u >> a1;
  if (a1 > 7)
  {
    LOBYTE(v3) = 0;
  }

  if (is_internal_build)
  {
    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}