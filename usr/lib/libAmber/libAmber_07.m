void sub_2969CFC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  amber::Buffer::~Buffer(&a14, a2, a3, a4, a5, a6, a7);
  amber::ObjectStorePath::~ObjectStorePath(&a27);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(&STACK[0x2E8]);
  _Unwind_Resume(a1);
}

uint64_t amber::AEBDBlockDevice::executeFlush(amber::BlockDevice **this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  if ((amber::AEBDBlockDevice::ensureUnlocked(this) & 0x80000000) != 0)
  {
    v11 = -2147483643;
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeFlush", 0x3B6, 0, "AEBD container is not unlocked", v5);
LABEL_8:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  if (this[61])
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeFlush", 0x3B9, 0, "FLUSH on read-only device", v5);
    v11 = -2147483647;
    goto LABEL_8;
  }

  if ((amber::BaseObject::getAttributeUInt32(this[62], 202) & 2) != 0)
  {
    amber::BlockDevice::flush(this[62]);
  }

  v10 = 0;
  v11 = 1;
LABEL_9:
  amber::BlockDeviceRequest::sendReply(a3, v11, 0, v6, v7, v8, v9);
  return v10;
}

uint64_t amber::AEBDBlockDevice::executeSnapshot(amber::BaseObject **this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v149[75] = *MEMORY[0x29EDCA608];
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v146, 1);
  amber::ObjectStorePath::ObjectStorePath(v108);
  if ((amber::AEBDBlockDevice::ensureUnlocked(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeSnapshot", 0x3D6, 0, "AEBD container is not unlocked", v4);
    v13 = 0;
  }

  else
  {
    AttributeUInt32 = amber::BaseObject::getAttributeUInt32(this[99], 119);
    v6 = amber::BaseObject::getAttributeUInt32(this[99], 121);
    size = amber::BaseObject::getAttributeUInt32(this[99], 120);
    if (AttributeUInt32)
    {
      v7 = 0;
      while (1)
      {
        v13 = malloc_type_malloc(v6, 0xF93785E2uLL);
        if (!v13)
        {
          v57 = __error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v57, "malloc", v58);
          v59 = __error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeSnapshot", 0x3E4, *v59, "malloc", v60);
          goto LABEL_25;
        }

        if (amber::AEBDContainer::clusterIsModified(this[99], v7, v8, v9, v10, v11, v12))
        {
          break;
        }

        if (AttributeUInt32 == ++v7)
        {
          goto LABEL_15;
        }
      }

      amber::ObjectStorePath::ObjectStorePath(v70);
      amber::ProxyBuffer::ProxyBuffer(v69, v6, v13, 0, v14, v15, v16);
      if ((amber::AEBDContainer::encryptCluster(this[99], v7, v69, v17, v18, v19, v20) & 0x80000000) == 0 && ((*(*this[99] + 88))(this[99], v7, v70) & 0x80000000) == 0 && v107 == v6 && amber::ConstMemoryViewConvertible<amber::Buffer>::size(v69, v22, v23, v24, v25, v26, v21) == v6)
      {
        operator new();
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeSnapshot", 0x3ED, 0, "encrypt cluster", v21);
      amber::Buffer::~Buffer(v69, v27, v28, v29, v30, v31, v32);
      amber::ObjectStorePath::~ObjectStorePath(v70);
    }

    else
    {
LABEL_15:
      v13 = malloc_type_malloc(size, 0xF93785E2uLL);
      if (v13)
      {
        amber::ObjectStorePath::ObjectStorePath(v70);
        amber::ProxyBuffer::ProxyBuffer(v69, size, v13, 0, v37, v38, v39);
        if ((amber::AEBDContainer::getEncryptedPrologue(this[99], v69, v40, v41, v42, v43, v44) & 0x80000000) == 0 && ((*(*this[99] + 80))(this[99], v70) & 0x80000000) == 0 && v107 == size && !v106 && amber::ConstMemoryViewConvertible<amber::Buffer>::size(v69, v46, v47, v48, v49, v50, v45) == size)
        {
          v124 = v86;
          v125 = v87;
          v122 = v84;
          v123 = v85;
          v118 = v80;
          v119 = v81;
          v120 = v82;
          v121 = v83;
          v114 = v76;
          v115 = v77;
          v116 = v78;
          v117 = v79;
          v110 = v72;
          v111 = v73;
          v112 = v74;
          v113 = v75;
          v109 = v71;
          v126 = v88;
          v139 = v101;
          v140 = v102;
          v141 = v103;
          v142 = v104;
          v135 = v97;
          v136 = v98;
          v137 = v99;
          v138 = v100;
          v131 = v93;
          v132 = v94;
          v133 = v95;
          v134 = v96;
          v127 = v89;
          v128 = v90;
          v129 = v91;
          v130 = v92;
          v143 = v105;
          v144 = v106;
          v145 = v107;
          operator new();
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeSnapshot", 0x417, 0, "encrypt cluster", v45);
        amber::Buffer::~Buffer(v69, v51, v52, v53, v54, v55, v56);
        amber::ObjectStorePath::~ObjectStorePath(v70);
      }

      else
      {
        v61 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v61, "malloc", v62);
        v63 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeSnapshot", 0x40E, *v63, "malloc", v64);
LABEL_25:
        v13 = 0;
      }
    }
  }

  amber::BlockDeviceRequest::sendReply(a3, -2147483643, 0, v33, v34, v35, v36);
  free(v13);
  amber::ObjectStorePath::~ObjectStorePath(v108);
  amber::ObjectStorePath::~ObjectStorePath(v149);
  std::condition_variable::~condition_variable(&v148);
  std::mutex::~mutex(&v147);
  v65 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_2969D0628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  amber::Buffer::~Buffer(&a13, a2, a3, a4, a5, a6, a7);
  amber::ObjectStorePath::~ObjectStorePath(&a26);
  amber::ObjectStorePath::~ObjectStorePath(&STACK[0x2E0]);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(&STACK[0x538]);
  _Unwind_Resume(a1);
}

uint64_t amber::AEBDBlockDevice::beginWriteTransaction(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((amber::AEBDBlockDevice::ensureUnlocked(a1) & 0x80000000) != 0)
  {
    v9 = "AEBD container is not unlocked";
    v10 = 1120;
    goto LABEL_8;
  }

  AttributeUInt32 = amber::BaseObject::getAttributeUInt32(*(a1 + 792), 119);
  if (AttributeUInt32 >= a3)
  {
    AttributeUInt32 = a3;
  }

  v7 = __CFADD__(a3, AttributeUInt32);
  v8 = a3 + AttributeUInt32;
  if (v7 || ((v8 == -1) << 63) >> 63 != (v8 == -1))
  {
    v9 = "invalid object count";
    v10 = 1132;
LABEL_8:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "beginWriteTransaction", v10, 0, v9, v5);
    return 0xFFFFFFFFLL;
  }

  v12 = *(**(a1 + 496) + 80);

  return v12();
}

uint64_t amber::AEBDBlockDevice::commitWriteTransaction(amber::AEBDBlockDevice *a1)
{
  if ((amber::AEBDBlockDevice::ensureUnlocked(a1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "commitWriteTransaction", 0x473, 0, "AEBD container is not unlocked", v2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v3 = *(**(a1 + 62) + 88);

    return v3();
  }
}

void AmberAEBDBlockDeviceOpenWithPrologue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = amber::ObjectStorePath::ObjectStorePath(v14);
  if ((a4 & 0x8000000000000000) == 0 && (a3 || !a4))
  {
    if (!a7)
    {
      amber::defaultThreadCount(v10);
    }

    amber::AEBDBlockDevice::openWithPrologue();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v11, v12);
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x29C25BE90](exception, "memory invalid args");
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void sub_2969D09FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2969D0950);
  }

  _Unwind_Resume(exception_object);
}

void sub_2969D0A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  amber::ObjectStorePath::~ObjectStorePath(va);
  JUMPOUT(0x2969D0A14);
}

void AmberAEBDBlockDeviceDeferredOpenWithPrologue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = amber::ObjectStorePath::ObjectStorePath(v14);
  if ((a4 & 0x8000000000000000) == 0 && (a3 || !a4))
  {
    if (!a7)
    {
      amber::defaultThreadCount(v10);
    }

    amber::AEBDBlockDevice::openDeferredWithPrologue();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v11, v12);
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x29C25BE90](exception, "memory invalid args");
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void sub_2969D0BB4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2969D0B08);
  }

  _Unwind_Resume(exception_object);
}

void sub_2969D0BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  amber::ObjectStorePath::~ObjectStorePath(va);
  JUMPOUT(0x2969D0BCCLL);
}

void AmberAEBDBlockDeviceOpenWithProfile(amber *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    amber::defaultThreadCount(a1);
  }

  amber::AEBDBlockDevice::openWithProfile();
}

void sub_2969D0C70(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969D0C5CLL);
}

uint64_t ***std::__call_once_proxy[abi:ne200100]<std::tuple<amber::AEBDBlockDevice::ensureUnlocked(void)::{lambda(void)#1} &&>>(uint64_t ***result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  v8 = ***result;
  atomic_compare_exchange_strong((v8 + 800), &v7, 1u);
  if (!v7)
  {
    amber::Buffer::constBuf(v8 + 816, a7, v21);
    amber::ConstMemoryView::view(v21, *(v8 + 896), *(v8 + 904) - *(v8 + 896), v9, v20);
    if ((amber::AEBDBlockDevice::createContainerAndUnlockWithPrologue(v8, v20, *(v8 + 920), *(v8 + 928), v10, v11, v12) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "operator()", 0xAA, 0, "creating container", v18);
      v19 = 1;
      atomic_compare_exchange_strong((v8 + 800), &v19, 0);
    }

    result = amber::Buffer::reset((v8 + 816), v13, v14, v15, v16, v17, v18);
    *(v8 + 920) = 0;
    *(v8 + 928) = 0;
  }

  return result;
}

uint64_t amber::ChunkInputStream::ChunkInputStream(uint64_t this, int a2, int a3)
{
  *this = &unk_2A1DE2F40;
  *(this + 8) = &unk_2A1DE2FD8;
  *(this + 16) = a2;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = &unk_2A1DE3038;
  *(this + 72) = 0;
  *(this + 80) = this + 80;
  *(this + 88) = this + 80;
  *(this + 96) = xmmword_296A14210;
  *(this + 112) = 0u;
  *(this + 128) = 0u;
  *(this + 144) = 0u;
  *(this + 160) = 0;
  *(this + 168) = 1018212795;
  *(this + 176) = 0u;
  *(this + 192) = 0u;
  *(this + 208) = 0;
  *(this + 216) = &unk_2A1DE3038;
  *(this + 224) = 0;
  *(this + 232) = this + 232;
  *(this + 240) = this + 232;
  *(this + 248) = xmmword_296A14210;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0;
  *(this + 320) = 1018212795;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0;
  *(this + 368) = 850045863;
  *(this + 440) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 417) = 0u;
  if (a3)
  {
    operator new();
  }

  return this;
}

void sub_2969D0FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::~mutex((v9 + 368));
  amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::~SharedQueue(a9);
  amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::~SharedQueue(v10);
  v12 = *(v9 + 40);
  if (v12)
  {
    *(v9 + 48) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void amber::ChunkInputStream::~ChunkInputStream(amber::ChunkInputStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  *this = &unk_2A1DE2F40;
  *(this + 1) = &unk_2A1DE2FD8;
  atomic_compare_exchange_strong(this + 6, &v7, 1u);
  if (v7)
  {
    v9 = *(this + 5);
    for (i = *(this + 6); v9 != i; ++v9)
    {
      v11 = *v9;
      if (*v9)
      {
        amber::Buffer::~Buffer((v11 + 8), a2, a3, a4, a5, a6, a7);
        MEMORY[0x29C25C000](v11, 0x10F0C409CBF82F3);
      }
    }

    std::mutex::~mutex((this + 368));
    amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::~SharedQueue(this + 216);
    amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::~SharedQueue(this + 64);
    v12 = *(this + 5);
    if (v12)
    {
      *(this + 6) = v12;
      operator delete(v12);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkInputStream.cpp", "~ChunkInputStream", 0x41, 0, "stopThread() was not called in derived class, forcing crash to avoid deadlock", a7);
    __break(1u);
  }
}

void amber::ChunkInputStream::startThread(amber::ChunkInputStream *this)
{
  std::mutex::lock((this + 368));
  v2 = 0;
  atomic_compare_exchange_strong(this + 5, &v2, 1u);
  if (!v2)
  {
    operator new();
  }

  std::mutex::unlock((this + 368));
}

void sub_2969D11C4(_Unwind_Exception *a1)
{
  MEMORY[0x29C25C000](v2, 0xA1C409BE6959DLL);
  std::mutex::unlock((v1 + 368));
  _Unwind_Resume(a1);
}

uint64_t amber::ChunkInputStream::stopThread(amber::ChunkInputStream *this)
{
  std::mutex::lock((this + 368));
  v7 = 0;
  v8 = atomic_load(this + 7);
  atomic_compare_exchange_strong(this + 6, &v7, 1u);
  if (v7)
  {
    v11 = v8 != 0;
  }

  else
  {
    v9 = v8 == 0;
    if ((*(this + 432) & 1) == 0)
    {
      v10 = *(this + 55);
      while (1)
      {
        if (v10)
        {
          amber::Buffer::resize((v10 + 8), 0, v2, v3, v4, v5, v6);
          *(v10 + 112) = -1;
          amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::insertLast(this + 64);
        }

        if (amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 216, this + 55) < 0)
        {
          v9 = 0;
        }

        v10 = *(this + 55);
        if (!v10)
        {
          break;
        }

        if (*(this + 432))
        {
          goto LABEL_13;
        }
      }

      *(this + 432) = 1;
    }

LABEL_13:
    v12 = *(this + 4);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    *(this + 4) = 0;
    v11 = !v9;
  }

  v13 = (v11 << 31 >> 31);
  std::mutex::unlock((this + 368));
  return v13;
}

uint64_t amber::ChunkInputStream::read(amber::ChunkInputStream *this, const amber::MutableMemoryView *a2)
{
  std::mutex::lock((this + 368));
  v8 = atomic_load(this + 6);
  if (v8 || (v9 = atomic_load(this + 7)) != 0)
  {
LABEL_3:
    v10 = -1;
  }

  else
  {
    v12 = *(a2 + 2);
    if (!v12)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MutableMemoryView.hpp", "operator unsigned char *", 0xF1, 0, "memory invalid range", v7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v10 = 0;
    v13 = *(a2 + 1);
    while (1)
    {
      v14 = *(this + 55);
      if (!v14)
      {
        if (*(this + 432))
        {
          goto LABEL_4;
        }

        if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 216, this + 55) & 0x80000000) != 0)
        {
          goto LABEL_3;
        }

        v14 = *(this + 55);
        if (!v14)
        {
          break;
        }
      }

      v15 = amber::ChunkInputStream::ChunkReadContext::read(v14, v13, v12, v4, v5, v6, v7);
      if (v15 < 0)
      {
        v10 = v15;
        goto LABEL_4;
      }

      if (!v15)
      {
        v17 = *(this + 55);
        amber::Buffer::resize((v17 + 8), 0, v16, v4, v5, v6, v7);
        *(v17 + 112) = -1;
        amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::insertLast(this + 64);
      }

      v13 += v15;
      v12 -= v15;
      v10 += v15;
      if (!v12)
      {
        goto LABEL_4;
      }
    }

    *(this + 432) = 1;
  }

LABEL_4:
  std::mutex::unlock((this + 368));
  return v10;
}

void sub_2969D1494(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock((v1 + 368));
  _Unwind_Resume(a1);
}

uint64_t amber::ChunkInputStream::ChunkReadContext::read(amber::ChunkInputStream::ChunkReadContext *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFDA8;
  v9[1] = a2;
  v9[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::BufferProtocol<amber::Buffer>::readAndConsume(this + 1, v9, a3, a4, a5, a6, a7);
}

void amber::ChunkInputStream::run(amber::ChunkInputStream *this)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v4 = v2 - v3;
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = v4 >> 3;
  while (1)
  {
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v9 = atomic_load(this + 6);
      v8 = v9 != 0;
    }

    v24 = 0;
    if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 64, &v24) & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    v16 = v24;
    if (*(v24 + 112) != -1)
    {
      break;
    }

    if (v8)
    {
      --v7;
      v6 = 1;
LABEL_13:
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = *(this + 4);
      amber::Buffer::resize((v24 + 8), 0, v11, v12, v13, v14, v15);
      *(v16 + 112) = v5;
      if (((*(*this + 120))(this, v24 + 8, *(this + 4), v5 * v20, v24, amber::ChunkInputStream::ChunkReadContext::completionProc) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkInputStream.cpp", "run", 0xB7, 0, "enqueue failed", v21);
LABEL_19:
        v22 = 0;
        atomic_compare_exchange_strong(this + 7, &v22, 1u);
LABEL_20:
        v27 = 0;
        amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::insertLast(this + 216);
      }

      v6 = 0;
      ++v5;
      if (!v7)
      {
        goto LABEL_20;
      }
    }
  }

  v17 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v24 + 8, v10, v11, v12, v13, v14, v15) < *(this + 4);
  v18 = v24;
  v23 = *(v24 + 112);
  v27 = &v23;
  v6 = v17 || v8;
  std::__tree<std::__value_type<unsigned long long,amber::CacheEntry *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,amber::CacheEntry *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,amber::CacheEntry *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v25, &v23)[5] = v18;
  v19 = v25;
  if (v25 != v26 && !v25[4])
  {
    v24 = v25[5];
    std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(&v25, v25);
    operator delete(v19);
    amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::insertLast(this + 216);
  }

  goto LABEL_13;
}

amber::ChunkInputStream::ChunkReadContext *amber::ChunkInputStream::ChunkReadContext::ChunkReadContext(amber::ChunkInputStream::ChunkReadContext *this, amber::ChunkInputStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = a2;
  *(this + 1) = &unk_2A1DDFD28;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = off_2A1DDFD48;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = &off_2A1DDFDA8;
  *(this + 8) = &off_2A1DDFC68;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 52) = 1;
  *(this + 106) = 0;
  *(this + 14) = -1;
  if ((amber::Buffer::reserve((this + 8), a3, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkInputStream.cpp", "ChunkReadContext", 0xF, 0, "malloc", v8);
  }

  return this;
}

void amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedQueue<amber::ChunkInputStream::ChunkReadContext *>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE3038;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

amber::ChunkOutputStream *amber::ChunkOutputStream::ChunkOutputStream(amber::ChunkOutputStream *this, int a2, unsigned int a3)
{
  *this = &unk_2A1DE3068;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 2) = 0;
  amber::Sem::Sem((this + 24), a3);
  *(this + 18) = 850045863;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  return this;
}

void amber::ChunkOutputStream::~ChunkOutputStream(amber::ChunkOutputStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3068;
  if ((amber::ChunkOutputStream::close(this, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "~ChunkOutputStream", 0x56, 0, "close() failed in destructor; call close() itself before destroying the stream to catch any errors", v13);
  }

  v14 = *(this + 28);
  v15 = *(this + 29) - v14;
  if (v15)
  {
    v16 = 0;
    v17 = v15 >> 3;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v19 = *(*(this + 28) + 8 * v16);
      if (v19)
      {
        amber::Buffer::~Buffer((v19 + 40), v8, v9, v10, v11, v12, v13);
        std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v19 + 16, *(v19 + 24));
        MEMORY[0x29C25C000](v19, 0x10F0C40B2B78ADBLL);
      }

      ++v16;
    }

    while (v18 != v16);
    v14 = *(this + 28);
  }

  if (v14)
  {
    *(this + 29) = v14;
    operator delete(v14);
  }

  std::mutex::~mutex((this + 144));
  std::condition_variable::~condition_variable(this + 2);
  std::mutex::~mutex((this + 32));
}

uint64_t amber::ChunkOutputStream::close(amber::ChunkOutputStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = atomic_load(this + 5);
  if (atomic_load(this + 4))
  {
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "close", 0x67, 0, "close() called before commit/cancel", a7);
    if (((*(*this + 128))(this) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "close", 0x69, 0, "cancel() failed", v11);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::ChunkOutputStream::pwrite(amber::ChunkOutputStream *this, const amber::ConstMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 4))
  {
    v8 = "write on a finalized stream";
    v9 = 117;
LABEL_3:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "pwrite", v9, 0, v8, a7);
    return -1;
  }

  v12 = *(a2 + 2);
  if (!v12)
  {
    return 0;
  }

  v13 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v8 = "invalid range";
    v9 = 120;
    goto LABEL_3;
  }

  v15 = v12 + a3;
  v16 = *(a2 + 1);
  std::mutex::lock((this + 144));
  v20 = *(this + 26);
  if (v20 <= v15)
  {
    v20 = v15;
  }

  *(this + 26) = v20;
  if (v15 <= v13)
  {
    v10 = 0;
    goto LABEL_36;
  }

  v10 = 0;
  while (1)
  {
    v21 = v13;
    v22 = *(this + 2);
    v23 = v13 / v22;
    v24 = v13 / v22 * v22;
    v25 = v24 + v22;
    if (v24 + v22 >= v15)
    {
      v13 = v15;
    }

    else
    {
      v13 = v24 + v22;
    }

    v26 = *(this + 28);
    if (v23 >= (*(this + 29) - v26) >> 3)
    {
      v36[0] = 0;
      std::vector<amber::NBDClientEndpoint *>::resize(this + 28, v23 + 1, v36);
      v26 = *(this + 28);
    }

    v27 = *(v26 + 8 * v23);
    if (!v27)
    {
      operator new();
    }

    if ((amber::ChunkOutputStream::ChunkWriteContext::write(v27, v16, v21, v13, v17, v18, v19) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "pwrite", 0x95, 0, "overlapping write", v19);
      goto LABEL_35;
    }

    if (v27[4] == 1)
    {
      v28 = v27[2];
      v29 = v27 + 3;
      if (v28 != v27 + 3 && v28[4] == v24)
      {
        v30 = *v29;
        if (*v29)
        {
          do
          {
            v31 = v30;
            v30 = v30[1];
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v29[2];
            v32 = *v31 == v29;
            v29 = v31;
          }

          while (v32);
        }

        if (v31[5] == v25)
        {
          break;
        }
      }
    }

LABEL_29:
    v16 += v13 - v21;
    v10 += v13 - v21;
    if (v25 >= v15)
    {
      goto LABEL_36;
    }
  }

  amber::Sem::acquire((this + 24));
  amber::Buffer::constBuf((v27 + 5), v33, v36);
  amber::ConstMemoryView::view(v36, v27[15], v27[16] - v27[15], v34, v35);
  if (((*(*this + 136))(this, v35, *v27, v27, amber::ChunkOutputStream::ChunkWriteContext::completionProc) & 0x80000000) == 0)
  {
    *(v27 + 8) = 1;
    goto LABEL_29;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "pwrite", 0x9B, 0, "enqueueChunkWrite", v19);
LABEL_35:
  v10 = -1;
LABEL_36:
  std::mutex::unlock((this + 144));
  return v10;
}

uint64_t amber::ChunkOutputStream::ChunkWriteContext::write(amber::ChunkOutputStream::ChunkWriteContext *this, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 8) == 1)
  {
    v7 = "writing to enqueued chunk";
    v8 = 22;
LABEL_3:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "write", v8, 0, v7, a7);
    return 0xFFFFFFFFLL;
  }

  if (a4 != a3)
  {
    if (a4 <= a3)
    {
      v14 = 0;
    }

    else
    {
      v14 = a3;
    }

    if (a4 <= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    if (v14 == v15)
    {
      goto LABEL_12;
    }

    v35 = v14;
    v36 = v15;
    v21 = std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(this + 16, &v35);
    if (a2)
    {
      v22 = v21;
      if (*(this + 2) == v21)
      {
        goto LABEL_30;
      }

      v23 = *v21;
      if (*v21)
      {
        do
        {
          v24 = v23;
          v23 = *(v23 + 8);
        }

        while (v23);
      }

      else
      {
        v25 = v21;
        do
        {
          v24 = v25[2];
          v26 = *v24 == v25;
          v25 = v24;
        }

        while (v26);
      }

      v27 = v24[5];
      v28 = v21[4];
      if (v27 > v28)
      {
        goto LABEL_39;
      }

      if (v27 != v28)
      {
LABEL_30:
        v24 = v21;
      }

      else
      {
        v24[5] = v21[5];
        std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(this + 2, v21);
        operator delete(v22);
      }

      v29 = v24[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        v31 = v24;
        do
        {
          v30 = v31[2];
          v26 = *v30 == v31;
          v31 = v30;
        }

        while (!v26);
      }

      if (v30 == (this + 24))
      {
        goto LABEL_12;
      }

      v32 = v24[5];
      v33 = v30[4];
      if (v32 <= v33)
      {
        if (v32 == v33)
        {
          v24[5] = v30[5];
          std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(this + 2, v30);
          operator delete(v30);
        }

LABEL_12:
        v16 = a4 - *this;
        if (v16 > amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 40, a2, a3, a4, a5, a6, a7) && (amber::Buffer::resize((this + 40), a4 - *this, v17, v18, v19, v20, a7) & 0x80000000) != 0)
        {
          v7 = "malloc";
          v8 = 29;
          goto LABEL_3;
        }

        v35 = &off_2A1DDFC68;
        v36 = a2;
        v37 = a4 - a3;
        if ((a4 - a3) < 0 || !a2)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid args");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(this + 40, &v35, a3 - *this, v18, v19, v20, a7) & 0x80000000) != 0)
        {
          v7 = "invalid range";
          v8 = 32;
          goto LABEL_3;
        }

        return 0;
      }
    }

LABEL_39:
    v7 = "duplicate write range";
    v8 = 25;
    goto LABEL_3;
  }

  return 0;
}

void amber::ChunkOutputStream::ChunkWriteContext::completionProc(amber::ChunkOutputStream::ChunkWriteContext *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(this + 9) = 1;
  amber::Buffer::reset((this + 40), a2, a3, a4, a5, a6, a7);
  v8 = *(this + 18);

  amber::Sem::release(v8);
}

uint64_t amber::ChunkOutputStream::commit(amber::ChunkOutputStream *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 4, &v1, 1u);
  if (v1)
  {
    return 0;
  }

  std::mutex::lock((this + 144));
  v4 = *(this + 29) - *(this + 28);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = (v4 >> 3) - 1;
    if ((v4 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 >> 3;
    }

    v9 = 1;
    while (1)
    {
      v10 = *(*(this + 28) + 8 * v5);
      if ((v10[1] & 1) == 0)
      {
        break;
      }

LABEL_25:
      if (++v5 == v8)
      {
        goto LABEL_29;
      }
    }

    if (v5 == v7)
    {
      v11 = *(this + 2);
      v12 = v6 * v11;
      if (*(this + 26) < (v6 * v11))
      {
        v12 = *(this + 26);
      }

      if (v10[4] == 1)
      {
        v13 = v7 * v11;
        v14 = v10[2];
        v15 = v10 + 3;
        if (v14 == v10 + 3)
        {
          if (v13 == -1)
          {
            v19 = -1;
            goto LABEL_21;
          }
        }

        else if (v14[4] == v13)
        {
          v16 = *v15;
          if (*v15)
          {
            do
            {
              v17 = v16;
              v16 = v16[1];
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v15[2];
              v18 = *v17 == v15;
              v15 = v17;
            }

            while (v18);
          }

          v19 = v17[5];
LABEL_21:
          if (v19 == v12)
          {
            amber::Sem::acquire((this + 24));
            amber::Buffer::constBuf((v10 + 5), v20, v32);
            amber::ConstMemoryView::view(v32, v10[15], v10[16] - v10[15], v21, v31);
            if (!(*(*this + 136))(this, v31, *v10, v10, amber::ChunkOutputStream::ChunkWriteContext::completionProc))
            {
              *(v10 + 8) = 1;
              goto LABEL_25;
            }

            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "commit", 0xC3, 0, "enqueueChunkWrite", v3);
          }
        }
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "commit", 0xC6, 0, "invalid chunk state offset: %llu", v3, *v10);
    v9 = 0;
    goto LABEL_25;
  }

  v9 = 1;
LABEL_29:
  std::mutex::unlock((this + 144));
  for (i = *(this + 3); i; --i)
  {
    amber::Sem::acquire((this + 24));
  }

  std::mutex::lock((this + 144));
  v24 = *(this + 29) - *(this + 28);
  if (v24)
  {
    v25 = 0;
    v26 = v24 >> 3;
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    do
    {
      v28 = *(*(this + 28) + 8 * v25);
      if (!v28 || *(v28 + 8) != 1 || (*(v28 + 9) & 1) == 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "commit", 0xD6, 0, "invalid chunk state offset: %llu", v23, *v28);
        v9 = 0;
      }

      ++v25;
    }

    while (v27 != v25);
  }

  std::mutex::unlock((this + 144));
  if (v9)
  {
    if (((*(*this + 144))(this) & 0x80000000) == 0)
    {
      return 0;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "commit", 0xDD, 0, "chunkCommit reported errors", v29);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::ChunkOutputStream::cancel(atomic_uint *this)
{
  v2 = 0;
  result = 0;
  atomic_compare_exchange_strong(this + 4, &v2, 1u);
  if (!v2)
  {
    for (i = this[3]; i; --i)
    {
      amber::Sem::acquire((this + 6));
    }

    v6 = (*(*this + 152))(this);
    if (v6 < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/ChunkOutputStream.cpp", "cancel", 0xED, 0, "chunkCancel reported errors", v5);
    }

    return (v6 >> 31);
  }

  return result;
}

double amber::Sem::Sem(amber::Sem *this, uint64_t a2)
{
  *this = a2;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 1018212795;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Sem invalid value";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  return result;
}

void sub_2969D2820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::condition_variable *a9, std::mutex *a10)
{
  std::condition_variable::~condition_variable(a9);
  std::mutex::~mutex(a10);
  _Unwind_Resume(a1);
}

double amber::ChunkOutputStream::ChunkWriteContext::ChunkWriteContext(amber::ChunkOutputStream::ChunkWriteContext *this, uint64_t a2, amber::Sem *a3)
{
  *this = a2;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 4) = 0;
  *(this + 5) = &unk_2A1DDFD28;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = off_2A1DDFD48;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = &off_2A1DDFDA8;
  *(this + 12) = &off_2A1DDFC68;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 68) = 1;
  *(this + 138) = 0;
  *(this + 18) = a3;
  return result;
}

void *std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

amber::DiskImagePluginNBDImage *amber::DiskImagePluginNBDImage::DiskImagePluginNBDImage(amber::DiskImagePluginNBDImage *this, const char *a2, uint64_t a3, int a4, int a5)
{
  v10 = amber::DiskImagePluginImage::DiskImagePluginImage(this);
  *v10 = &unk_2A1DE3130;
  v11 = v10 + 112;
  v12 = strlen(a2);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(this + 135) = v12;
  if (v12)
  {
    memmove(v11, a2, v12);
  }

  *(v11 + v13) = 0;
  *(this + 17) = a3;
  *(this + 36) = a4;
  *(this + 37) = a5;
  return this;
}

void amber::DiskImagePluginNBDImage::~DiskImagePluginNBDImage(void **this)
{
  *this = &unk_2A1DE3130;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }
}

{
  *this = &unk_2A1DE3130;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DiskImagePluginNBDImage::subscriber(uint64_t a1)
{
  v2 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v2 = *v2;
  }

  if (AmberNBDBlockDeviceOpen(v2, *(a1 + 148)))
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePluginNBDImage.cpp", "subscriber", 0x21, 0, "connect to NBD server", v3);
  AmberBlockDeviceClose(0);
  return 0;
}

uint64_t amber::DiskImagePluginNBDImage::encode(uint64_t a1, void (**a2)(uint64_t, uint64_t, char *, size_t), uint64_t a3)
{
  if ((amber::diEncodeString(a2, a3, "ImageType", "nbd") & 0x80000000) == 0)
  {
    v7 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v7 = *v7;
    }

    if ((amber::diEncodeString(a2, a3, "URL", v7) & 0x80000000) == 0 && (amber::diEncodeUInt64(a2, a3, "Size", *(a1 + 136)) & 0x80000000) == 0 && (amber::diEncodeUInt32(a2, a3, "IOSize", *(a1 + 144)) & 0x80000000) == 0 && (amber::diEncodeUInt32(a2, a3, "NThreads", *(a1 + 148)) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePluginNBDImage.cpp", "encode", 0x37, 0, "DiskImagePluginNBDImage::encode", v6);
  return 0xFFFFFFFFLL;
}

void amber::DiskImagePluginAmberKnoxImage::create()
{
  operator new();
}

{
  operator new();
}

void amber::DiskImagePluginAmberKnoxImage::~DiskImagePluginAmberKnoxImage(amber::DiskImagePluginAmberKnoxImage *this)
{
  AmberDaemonProxyDestroy(*(this + 19));
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }
}

{
  amber::DiskImagePluginAmberKnoxImage::~DiskImagePluginAmberKnoxImage(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DiskImagePluginAmberKnoxImage::subscriber(uint64_t a1)
{
  if (AmberNBDBlockDeviceOpenWithConnectProc(*(a1 + 152), AmberDaemonProxyConnectNBD, *(a1 + 148)))
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePluginAmberKnoxImage.cpp", "subscriber", 0x47, 0, "connect to daemon", v1);
  AmberBlockDeviceClose(0);
  return 0;
}

uint64_t amber::DiskImagePluginAmberKnoxImage::encode(uint64_t a1, void (**a2)(uint64_t, uint64_t, char *, size_t), uint64_t a3)
{
  if ((amber::diEncodeString(a2, a3, "ImageType", "amber+knox") & 0x80000000) == 0)
  {
    v7 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v7 = *v7;
    }

    if ((amber::diEncodeString(a2, a3, "URL", v7) & 0x80000000) == 0 && (amber::diEncodeUInt64(a2, a3, "Size", *(a1 + 136)) & 0x80000000) == 0 && (amber::diEncodeUInt32(a2, a3, "IOSize", *(a1 + 144)) & 0x80000000) == 0 && (amber::diEncodeUInt32(a2, a3, "NThreads", *(a1 + 148)) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePluginAmberKnoxImage.cpp", "encode", 0x5D, 0, "DiskImagePluginAmberKnoxImage::encode", v6);
  return 0xFFFFFFFFLL;
}

amber::DiskImagePluginAmberKnoxImage *amber::DiskImagePluginAmberKnoxImage::DiskImagePluginAmberKnoxImage(amber::DiskImagePluginAmberKnoxImage *this, const char *a2, uint64_t a3, int a4, int a5)
{
  v10 = amber::DiskImagePluginImage::DiskImagePluginImage(this);
  *v10 = &unk_2A1DE3198;
  v11 = v10 + 112;
  v12 = strlen(a2);
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  *(this + 135) = v12;
  if (v12)
  {
    memmove(v11, a2, v12);
  }

  *(v11 + v13) = 0;
  *(this + 17) = a3;
  *(this + 36) = a4;
  *(this + 37) = a5;
  *(this + 19) = 0;
  return this;
}

uint64_t diskImageCreateASIFFile(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((a2 & 0x1FF) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImageCreateASIF.mm", "diskImageCreateASIFFile", 0xC, 0, "invalid image size: %llu", a7, a2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:a1 isDirectory:0 relativeToURL:0];
    if (v10)
    {
      v19 = 0;
      v11 = [objc_alloc(MEMORY[0x29EDC1010]) initWithURL:v10 numBlocks:a2 >> 9 error:&v19];
      v13 = v19;
      if (v11)
      {
        v18 = v13;
        v14 = [MEMORY[0x29EDC1018] createBlankWithParams:v11 error:&v18];
        v15 = v18;

        if (v14)
        {
          v8 = 0;
        }

        else
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImageCreateASIF.mm", "diskImageCreateASIFFile", 0x11, 0, "disk image creation failed", v16);
          v8 = 0xFFFFFFFFLL;
        }

        v13 = v15;
      }

      else
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImageCreateASIF.mm", "diskImageCreateASIFFile", 0x10, 0, "setup image creation parameters", v12);
        v8 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImageCreateASIF.mm", "diskImageCreateASIFFile", 0xE, 0, "creating path URL", v9);
      v8 = 0xFFFFFFFFLL;
    }
  }

  return v8;
}

amber::S3Configuration *amber::S3Configuration::S3Configuration(amber::S3Configuration *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *this = this + 8;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  amber::S3Configuration::clear(this);
  return this;
}

void sub_2969D3634(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v3, v1[7]);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v2, v1[4]);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v1, v1[1]);
  _Unwind_Resume(a1);
}

void amber::S3Configuration::clear(amber::S3Configuration *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this, *(this + 1));
  *this = v2;
  *(this + 2) = 0;
  *v2 = 0;
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 24, *(this + 4));
  *(this + 3) = this + 32;
  *(this + 4) = 0;
  v3 = *(this + 7);
  *(this + 5) = 0;
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 48, v3);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = this + 56;
  v12 = 0;
  v13 = 0;
  v11 = &v12;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v14 = __p;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v5 = (v4 + 64);
  v6 = (v4 + 56);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4 + 56, *(v4 + 64));
  v7 = v12;
  *(v5 - 1) = v11;
  *v5 = v7;
  v8 = v13;
  v5[1] = v13;
  if (v8)
  {
    v7[2] = v5;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
    v7 = 0;
  }

  else
  {
    *v6 = v5;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
    v7 = v12;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v11, v7);
}

void sub_2969D3780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t amber::S3Configuration::parse(amber::S3Configuration *this, amber::Stream *a2)
{
  v31[0] = &unk_2A1DDFD28;
  v31[2] = 0;
  v31[3] = 0;
  v31[1] = off_2A1DDFD48;
  v31[5] = 0;
  v31[6] = 0;
  v31[4] = &off_2A1DDFDA8;
  v31[7] = &off_2A1DDFC68;
  v32 = 0u;
  v33 = 0u;
  v34 = 1;
  v35 = 0;
  v4 = (*(*a2 + 88))(a2);
  if (v4 > 0 && (amber::Buffer::reserve(v31, v4, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x29, 0, "malloc", v9);
  }

  else
  {
    while ((amber::Buffer::reserveEndCapacity(v31, 0x8000, v5, v6, v7, v8, v9) & 0x80000000) == 0)
    {
      amber::BufferProtocol<amber::Buffer>::endView(v31, 0x8000uLL, v9, v36);
      v14 = (*(*a2 + 40))(a2, v36);
      if (v14 < 0 || (amber::Buffer::grow(v31, v14, v10, v11, v12, v13, v9) & 0x80000000) != 0)
      {
        break;
      }

      if (!v14)
      {
        amber::Buffer::constBuf(v31, v9, v36);
        amber::ConstMemoryView::view(v36, v33, *(&v33 + 1) - v33, v15, v30);
        v27 = amber::S3Configuration::parse(this, v30, v16, v17, v18, v19, v20);
        goto LABEL_11;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/.././Streams/./Stream.hpp", "readToBufferEnd", 0x59, 0, "readToBufferEnd", v9);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x2F, 0, "stream read", v28);
  }

  v27 = 0xFFFFFFFFLL;
LABEL_11:
  amber::Buffer::~Buffer(v31, v21, v22, v23, v24, v25, v26);
  return v27;
}

void sub_2969D39E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::S3Configuration::parse(amber::S3Configuration *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v132 = &off_2A1DDFC68;
  v133 = *(a2 + 8);
  memset(&v131, 0, sizeof(v131));
  __p = 0;
  v129 = 0;
  v130 = 0;
  v7 = *(&v133 + 1);
  if (!*(&v133 + 1))
  {
LABEL_195:
    v116 = 0;
    goto LABEL_215;
  }

  v8 = 0;
  v9 = 0;
  v10 = &amber::kSpaces;
  v11 = MEMORY[0x29EDCA600];
  while (1)
  {
    if (*v133 == 10)
    {
      v12 = 1;
    }

    else
    {
      v13 = 1;
      while (1)
      {
        v14 = v13;
        if (v7 == v13)
        {
          break;
        }

        v15 = *(v133 + v13++);
        if (v15 == 10)
        {
          v16 = v14;
          goto LABEL_10;
        }
      }

      v16 = v7;
LABEL_10:
      if (v14 >= v7)
      {
        v12 = v16;
      }

      else
      {
        v12 = v16 + 1;
      }
    }

    amber::ConstMemoryView::first(&v132, v12, a7, &v127);
    v125 = *&v127.__r_.__value_.__r.__words[1];
    v17 = std::string_view::find_first_not_of[abi:ne200100](&v125, v10, 0);
    if (v17 == -1)
    {
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v18 = v17;
      v19 = std::string_view::find_last_not_of[abi:ne200100](&v125, v10, 0xFFFFFFFFFFFFFFFFLL);
      v20 = *(&v125 + 1) - v18;
      if (*(&v125 + 1) < v18)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v21 = v19 - v18;
      v22 = v19 - v18 + 1;
      v23 = (v125 + v18);
      if (v20 >= v22)
      {
        v24 = v21 + 1;
      }

      else
      {
        v24 = v20;
      }
    }

    v7 = *(&v133 + 1) - v12;
    if (*(&v133 + 1) < v12)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    ++v8;
    *&v133 = v133 + v12;
    *(&v133 + 1) -= v12;
    if (!v24)
    {
      goto LABEL_150;
    }

    v25 = *v23;
    if (v25 == 35)
    {
      goto LABEL_150;
    }

    v26 = v24 - 1;
    if (v24 == 1 || v25 != 91 || *(v23 + v24 - 1) != 93)
    {
      if (!v9)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x86, 0, "%zu: expected a section definition", a7, v8);
        goto LABEL_214;
      }

      v27 = v10;
      v28 = memchr(v23, 61, v24);
      if (!v28 || (v30 = v28 - v23, v28 - v23 == -1))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x8B, 0, "%zu: expected key = [value]", v29, v8);
        goto LABEL_214;
      }

      v31 = v30 - 1;
      if (v24 < v30 - 1)
      {
        v31 = v24;
      }

      v127.__r_.__value_.__r.__words[0] = v23;
      v127.__r_.__value_.__l.__size_ = v31;
      v32 = std::string_view::find_first_not_of[abi:ne200100](&v127, v27, 0);
      if (v32 == -1)
      {
        v36 = 0;
        v35 = 0;
      }

      else
      {
        v33 = v32;
        v34 = std::string_view::find_last_not_of[abi:ne200100](&v127, v27, 0xFFFFFFFFFFFFFFFFLL);
        if (v127.__r_.__value_.__l.__size_ < v33)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v35 = (v127.__r_.__value_.__r.__words[0] + v33);
        if (v127.__r_.__value_.__l.__size_ - v33 >= v34 - v33 + 1)
        {
          v36 = v34 - v33 + 1;
        }

        else
        {
          v36 = v127.__r_.__value_.__l.__size_ - v33;
        }
      }

      if (v24 <= v30)
      {
LABEL_221:
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v127.__r_.__value_.__r.__words[0] = v23 + v30 + 1;
      v127.__r_.__value_.__l.__size_ = v24 - (v30 + 1);
      v37 = std::string_view::find_first_not_of[abi:ne200100](&v127, v27, 0);
      if (v37 == -1)
      {
        v45 = 0;
        v44 = 0;
        if (!v36)
        {
          goto LABEL_196;
        }
      }

      else
      {
        v39 = v37;
        v40 = std::string_view::find_last_not_of[abi:ne200100](&v127, v27, 0xFFFFFFFFFFFFFFFFLL);
        v41 = v127.__r_.__value_.__l.__size_ - v39;
        if (v127.__r_.__value_.__l.__size_ < v39)
        {
          goto LABEL_221;
        }

        v42 = v40 - v39;
        v43 = v40 - v39 + 1;
        v44 = v127.__r_.__value_.__r.__words[0] + v39;
        if (v41 >= v43)
        {
          v45 = v42 + 1;
        }

        else
        {
          v45 = v41;
        }

        if (!v36)
        {
LABEL_196:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x8E, 0, "%zu: invalid key", v38, v8);
          goto LABEL_214;
        }
      }

      for (i = 0; i != v36; ++i)
      {
        v47 = v35[i];
        if ((v47 & 0x80000000) != 0)
        {
          v48 = __maskrune(v47, 0x500uLL);
        }

        else
        {
          v48 = *(v11 + 4 * v47 + 60) & 0x500;
        }

        if (!v48)
        {
          v49 = v35[i] - 45;
          v50 = v49 > 0x32;
          v51 = (1 << v49) & 0x4000000082001;
          if (v50 || v51 == 0)
          {
            goto LABEL_196;
          }
        }
      }

      if (v45)
      {
        v10 = v27;
        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v127, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
        }

        else
        {
          v127 = v131;
        }

        std::string::append(&v127, v35, v36);
        v53 = 48;
        if (v9 != 3)
        {
          v53 = 0;
        }

        if (v9 == 2)
        {
          v53 = 24;
        }

        v54 = this + v53;
        if ((this + v53 + 8) == std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(this + v53, &__p))
        {
          *(&v125 + 1) = 0;
          v126 = 0;
          *&v125 = &v125 + 8;
          p_p = &__p;
          v55 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v54, &__p);
          v56 = (v55 + 64);
          v57 = (v55 + 56);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v55 + 56, *(v55 + 64));
          v58 = *(&v125 + 1);
          *(v56 - 1) = v125;
          *v56 = v58;
          v59 = v126;
          v56[1] = v126;
          if (v59)
          {
            v58[2] = v56;
            *&v125 = &v125 + 8;
            *(&v125 + 1) = 0;
            v126 = 0;
            v58 = 0;
          }

          else
          {
            *v57 = v56;
          }

          v10 = v27;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v125, v58);
        }

        *&v125 = &__p;
        v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v54, &__p);
        *&v125 = &v127;
        v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v76 + 56, &v127.__r_.__value_.__l.__data_);
        MEMORY[0x29C25BF10](v77 + 56, v44, v45);
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        MEMORY[0x29C25BF10](&v131, v35, v36);
        v10 = v27;
        std::string::append(&v131, ".");
      }

      goto LABEL_149;
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      *v131.__r_.__value_.__l.__data_ = 0;
      v131.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v131.__r_.__value_.__s.__data_[0] = 0;
      *(&v131.__r_.__value_.__s + 23) = 0;
    }

    if (SHIBYTE(v130) < 0)
    {
      *__p = 0;
      v129 = 0;
    }

    else
    {
      LOBYTE(__p) = 0;
      HIBYTE(v130) = 0;
    }

    if (v24 != 9)
    {
      break;
    }

    if (*v23 != 0x746C75616665645BLL || *(v23 + 8) != 93)
    {
      if (*v23 == 0x656C69666F72705BLL && *(v23 + 8) == 32)
      {
        goto LABEL_118;
      }

      goto LABEL_86;
    }

    MEMORY[0x29C25BF00](&__p, "");
LABEL_148:
    v9 = 1;
LABEL_149:
    v7 = *(&v133 + 1);
LABEL_150:
    if (!v7)
    {
      goto LABEL_195;
    }
  }

  if (v24 < 9)
  {
LABEL_86:
    if (v26 >= v24 - 2)
    {
      v26 = v24 - 2;
    }

    v127.__r_.__value_.__r.__words[0] = v23 + 1;
    v127.__r_.__value_.__l.__size_ = v26;
    v62 = std::string_view::find_first_not_of[abi:ne200100](&v127, v10, 0);
    if (v62 == -1)
    {
      v66 = 0;
      v65 = 0;
    }

    else
    {
      v63 = v62;
      v64 = std::string_view::find_last_not_of[abi:ne200100](&v127, v10, 0xFFFFFFFFFFFFFFFFLL);
      if (v127.__r_.__value_.__l.__size_ < v63)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v65 = v127.__r_.__value_.__r.__words[0] + v63;
      if (v127.__r_.__value_.__l.__size_ - v63 >= v64 - v63 + 1)
      {
        v66 = v64 - v63 + 1;
      }

      else
      {
        v66 = v127.__r_.__value_.__l.__size_ - v63;
      }
    }

    MEMORY[0x29C25BF10](&__p, v65, v66);
    v84 = HIBYTE(v130);
    v85 = &__p;
    if (v130 < 0)
    {
      v85 = __p;
      v84 = v129;
    }

    v127.__r_.__value_.__r.__words[0] = v85;
    v127.__r_.__value_.__l.__size_ = v84;
    if ((isIdentifier(&v127) & 1) == 0)
    {
      v119 = &__p;
      if (v130 < 0)
      {
        v119 = __p;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x7E, 0, "%zu: invalid profile name: %s", a7, v8, v119);
      goto LABEL_214;
    }

    goto LABEL_148;
  }

  if (*v23 == 0x656C69666F72705BLL && *(v23 + 8) == 32)
  {
LABEL_118:
    v78 = v24 - 10;
    if (v24 - 9 < v24 - 10)
    {
      v78 = v24 - 9;
    }

    v127.__r_.__value_.__r.__words[0] = v23 + 9;
    v127.__r_.__value_.__l.__size_ = v78;
    v79 = std::string_view::find_first_not_of[abi:ne200100](&v127, v10, 0);
    if (v79 == -1)
    {
      v83 = 0;
      v82 = 0;
    }

    else
    {
      v80 = v79;
      v81 = std::string_view::find_last_not_of[abi:ne200100](&v127, v10, 0xFFFFFFFFFFFFFFFFLL);
      if (v127.__r_.__value_.__l.__size_ < v80)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      v82 = v127.__r_.__value_.__r.__words[0] + v80;
      if (v127.__r_.__value_.__l.__size_ - v80 >= v81 - v80 + 1)
      {
        v83 = v81 - v80 + 1;
      }

      else
      {
        v83 = v127.__r_.__value_.__l.__size_ - v80;
      }
    }

    MEMORY[0x29C25BF10](&__p, v82, v83);
    v86 = HIBYTE(v130);
    if (v130 >= 0)
    {
      v87 = HIBYTE(v130);
    }

    else
    {
      v87 = v129;
    }

    if (v87)
    {
      if (v130 >= 0)
      {
        v88 = &__p;
      }

      else
      {
        v88 = __p;
      }

      while (1)
      {
        v89 = *v88;
        if (!((v89 & 0x80000000) != 0 ? __maskrune(v89, 0x500uLL) : *(v11 + 4 * v89 + 60) & 0x500))
        {
          v91 = *v88 - 45;
          v50 = v91 > 0x32;
          v92 = (1 << v91) & 0x4000000082001;
          if (v50 || v92 == 0)
          {
            break;
          }
        }

        ++v88;
        if (!--v87)
        {
          goto LABEL_148;
        }
      }

      v86 = HIBYTE(v130);
    }

    v117 = v86 < 0;
    v118 = &__p;
    if (v117)
    {
      v118 = __p;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x66, 0, "%zu: invalid profile name: %s", a7, v8, v118);
    goto LABEL_214;
  }

  if (*v23 != 0x656369767265735BLL || *(v23 + 4) != 8307)
  {
    if (v24 >= 0xD && *v23 == 0x7365732D6F73735BLL && *(v23 + 5) == 0x206E6F6973736573)
    {
      v70 = v24 - 14;
      if (v24 - 13 < v24 - 14)
      {
        v70 = v24 - 13;
      }

      v127.__r_.__value_.__r.__words[0] = v23 + 13;
      v127.__r_.__value_.__l.__size_ = v70;
      v71 = std::string_view::find_first_not_of[abi:ne200100](&v127, v10, 0);
      if (v71 == -1)
      {
        v75 = 0;
        v74 = 0;
      }

      else
      {
        v72 = v71;
        v73 = std::string_view::find_last_not_of[abi:ne200100](&v127, v10, 0xFFFFFFFFFFFFFFFFLL);
        if (v127.__r_.__value_.__l.__size_ < v72)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v74 = v127.__r_.__value_.__r.__words[0] + v72;
        if (v127.__r_.__value_.__l.__size_ - v72 >= v73 - v72 + 1)
        {
          v75 = v73 - v72 + 1;
        }

        else
        {
          v75 = v127.__r_.__value_.__l.__size_ - v72;
        }
      }

      MEMORY[0x29C25BF10](&__p, v74, v75);
      v108 = HIBYTE(v130);
      if (v130 >= 0)
      {
        v109 = HIBYTE(v130);
      }

      else
      {
        v109 = v129;
      }

      if (v109)
      {
        if (v130 >= 0)
        {
          v110 = &__p;
        }

        else
        {
          v110 = __p;
        }

        while (1)
        {
          v111 = *v110;
          if (!((v111 & 0x80000000) != 0 ? __maskrune(v111, 0x500uLL) : *(v11 + 4 * v111 + 60) & 0x500))
          {
            v113 = *v110 - 45;
            v50 = v113 > 0x32;
            v114 = (1 << v113) & 0x4000000082001;
            if (v50 || v114 == 0)
            {
              break;
            }
          }

          ++v110;
          v9 = 3;
          if (!--v109)
          {
            goto LABEL_149;
          }
        }

        v108 = HIBYTE(v130);
      }

      v117 = v108 < 0;
      v121 = &__p;
      if (v117)
      {
        v121 = __p;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x76, 0, "%zu: invalid sso session name: %s", a7, v8, v121);
      goto LABEL_214;
    }

    goto LABEL_86;
  }

  v94 = v24 - 11;
  if (v24 - 10 < v24 - 11)
  {
    v94 = v24 - 10;
  }

  v127.__r_.__value_.__r.__words[0] = v23 + 10;
  v127.__r_.__value_.__l.__size_ = v94;
  v95 = std::string_view::find_first_not_of[abi:ne200100](&v127, v10, 0);
  if (v95 == -1)
  {
    v99 = 0;
    v98 = 0;
  }

  else
  {
    v96 = v95;
    v97 = std::string_view::find_last_not_of[abi:ne200100](&v127, v10, 0xFFFFFFFFFFFFFFFFLL);
    if (v127.__r_.__value_.__l.__size_ < v96)
    {
      std::__throw_out_of_range[abi:ne200100]("string_view::substr");
    }

    v98 = v127.__r_.__value_.__r.__words[0] + v96;
    if (v127.__r_.__value_.__l.__size_ - v96 >= v97 - v96 + 1)
    {
      v99 = v97 - v96 + 1;
    }

    else
    {
      v99 = v127.__r_.__value_.__l.__size_ - v96;
    }
  }

  MEMORY[0x29C25BF10](&__p, v98, v99);
  v100 = HIBYTE(v130);
  if (v130 >= 0)
  {
    v101 = HIBYTE(v130);
  }

  else
  {
    v101 = v129;
  }

  if (v101)
  {
    if (v130 >= 0)
    {
      v102 = &__p;
    }

    else
    {
      v102 = __p;
    }

    while (1)
    {
      v103 = *v102;
      if (!((v103 & 0x80000000) != 0 ? __maskrune(v103, 0x500uLL) : *(v11 + 4 * v103 + 60) & 0x500))
      {
        v105 = *v102 - 45;
        v50 = v105 > 0x32;
        v106 = (1 << v105) & 0x4000000082001;
        if (v50 || v106 == 0)
        {
          break;
        }
      }

      ++v102;
      v9 = 2;
      if (!--v101)
      {
        goto LABEL_149;
      }
    }

    v100 = HIBYTE(v130);
  }

  v117 = v100 < 0;
  v120 = &__p;
  if (v117)
  {
    v120 = __p;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "parse", 0x6E, 0, "%zu: invalid service name: %s", a7, v8, v120);
LABEL_214:
  v116 = 0xFFFFFFFFLL;
LABEL_215:
  if (SHIBYTE(v130) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  return v116;
}

void sub_2969D4680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t isIdentifier(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = *a1;
    v3 = MEMORY[0x29EDCA600];
    while (1)
    {
      v4 = *v2;
      if ((v4 & 0x80000000) != 0)
      {
        if (!__maskrune(v4, 0x500uLL))
        {
LABEL_7:
          v5 = *v2 - 45;
          v6 = v5 > 0x32;
          v7 = (1 << v5) & 0x4000000082001;
          if (v6 || v7 == 0)
          {
            return 0;
          }
        }
      }

      else if ((*(v3 + 4 * v4 + 60) & 0x500) == 0)
      {
        goto LABEL_7;
      }

      ++v2;
      if (!--v1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t amber::S3Configuration::resolveProfile(uint64_t a1, char *a2, uint64_t **a3)
{
  std::string::basic_string[abi:ne200100]<0>(v41, a2);
  v7 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a1, v41);
  if (a1 + 8 == v7)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "resolveProfile", 0xAB, 0, "unknown profile: %s", v6, a2);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v8 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (a1 + 8 != v8)
    {
      v9 = *(v8 + 56);
      if (v9 != (v8 + 64))
      {
        do
        {
          __p.__r_.__value_.__r.__words[0] = (v9 + 4);
          v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v9 + 4);
          std::string::operator=((v10 + 56), (v9 + 7));
          v11 = v9[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v9[2];
              v13 = *v12 == v9;
              v9 = v12;
            }

            while (!v13);
          }

          v9 = v12;
        }

        while (v12 != (v8 + 64));
      }
    }

    v14 = *(v7 + 56);
    if (v14 != (v7 + 64))
    {
      do
      {
        __p.__r_.__value_.__r.__words[0] = (v14 + 4);
        v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v14 + 4);
        std::string::operator=((v15 + 56), (v14 + 7));
        v16 = v14[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v14[2];
            v13 = *v17 == v14;
            v14 = v17;
          }

          while (!v13);
        }

        v14 = v17;
      }

      while (v17 != (v7 + 64));
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "services");
    v18 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a3, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (a3 + 1 == v18)
    {
      goto LABEL_61;
    }

    if (*(v18 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v18 + 56), *(v18 + 64));
    }

    else
    {
      __p = *(v18 + 56);
    }

    std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(a3, v18);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v18 + 32);
    operator delete(v18);
    v19 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a1 + 24, &__p.__r_.__value_.__l.__data_);
    v21 = v19;
    if (a1 + 32 == v19)
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "resolveProfile", 0xBD, 0, "profile is referencing unknown services entry: %s", v20, p_p);
    }

    else
    {
      v22 = *(v19 + 56);
      v23 = (v19 + 64);
      if (v22 != (v19 + 64))
      {
        do
        {
          v43 = v22 + 4;
          v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v22 + 4);
          std::string::operator=((v24 + 56), (v22 + 7));
          v25 = v22[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v22[2];
              v13 = *v26 == v22;
              v22 = v26;
            }

            while (!v13);
          }

          v22 = v26;
        }

        while (v26 != v23);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (a1 + 32 != v21)
    {
LABEL_61:
      std::string::basic_string[abi:ne200100]<0>(&__p, "sso_session");
      v28 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a3, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (a3 + 1 == v28)
      {
        goto LABEL_62;
      }

      if (*(v28 + 79) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v28 + 56), *(v28 + 64));
      }

      else
      {
        __p = *(v28 + 56);
      }

      std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(a3, v28);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v28 + 32);
      operator delete(v28);
      v29 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a1 + 48, &__p.__r_.__value_.__l.__data_);
      v31 = v29;
      if (a1 + 56 == v29)
      {
        v37 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = __p.__r_.__value_.__r.__words[0];
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "resolveProfile", 0xC8, 0, "profile is referencing unknown sso session entry: %s", v30, v37);
      }

      else
      {
        v32 = *(v29 + 56);
        v33 = (v29 + 64);
        if (v32 != (v29 + 64))
        {
          do
          {
            v43 = v32 + 4;
            v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v32 + 4);
            std::string::operator=((v34 + 56), (v32 + 7));
            v35 = v32[1];
            if (v35)
            {
              do
              {
                v36 = v35;
                v35 = *v35;
              }

              while (v35);
            }

            else
            {
              do
              {
                v36 = v32[2];
                v13 = *v36 == v32;
                v32 = v36;
              }

              while (!v13);
            }

            v32 = v36;
          }

          while (v36 != v33);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (a1 + 56 != v31)
      {
LABEL_62:
        v38 = 0;
        goto LABEL_64;
      }
    }
  }

  v38 = 0xFFFFFFFFLL;
LABEL_64:
  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  return v38;
}

void sub_2969D4CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::S3Configuration::load(amber::S3Configuration *this)
{
  memset(&v22, 0, sizeof(v22));
  amber::S3Configuration::clear(this);
  v22.__r_.__value_.__s.__data_[0] = 0;
  v2 = getenv("AWS_CONFIG_FILE");
  if (v2)
  {
    MEMORY[0x29C25BF00](&v22, v2);
  }

  else
  {
    v3 = getenv("HOME");
    if (v3)
    {
      MEMORY[0x29C25BF00](&v22, v3);
      std::string::append(&v22, "/.aws/config");
    }
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v22.__r_.__value_.__l.__size_)
    {
      goto LABEL_21;
    }

    v4 = v22.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v22.__r_.__value_.__s + 23))
    {
LABEL_22:
      v22.__r_.__value_.__s.__data_[0] = 0;
      *(&v22.__r_.__value_.__s + 23) = 0;
      goto LABEL_24;
    }

    v4 = &v22;
  }

  if (!stat(v4, &v23) && (v23.st_mode & 0xF000) == 0x8000)
  {
    v6 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
    v7 = amber::fileStreamOpenWithPath(v6, 0, 0, v5);
    if (v7)
    {
      v9 = amber::S3Configuration::parse(this, v7);
      if (v9 < 0)
      {
        v10 = &v22;
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = v22.__r_.__value_.__r.__words[0];
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "load", 0xE5, 0, "parsing %s", v8, v10);
      }

      (*(*v7 + 8))(v7);
      if (v9 < 0)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_21:
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  *v22.__r_.__value_.__l.__data_ = 0;
  v22.__r_.__value_.__l.__size_ = 0;
LABEL_24:
  v11 = getenv("AWS_SHARED_CREDENTIALS_FILE");
  if (v11)
  {
    MEMORY[0x29C25BF00](&v22, v11);
  }

  else
  {
    v12 = getenv("HOME");
    if (v12)
    {
      MEMORY[0x29C25BF00](&v22, v12);
      std::string::append(&v22, "/.aws/credentials");
    }
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v22.__r_.__value_.__l.__size_)
    {
      v13 = v22.__r_.__value_.__r.__words[0];
      goto LABEL_33;
    }

LABEL_44:
    v20 = 0;
    goto LABEL_45;
  }

  if (!*(&v22.__r_.__value_.__s + 23))
  {
    goto LABEL_44;
  }

  v13 = &v22;
LABEL_33:
  if (stat(v13, &v23) || (v23.st_mode & 0xF000) != 0x8000)
  {
    goto LABEL_44;
  }

  v15 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
  v16 = amber::fileStreamOpenWithPath(v15, 0, 0, v14);
  if (!v16)
  {
    goto LABEL_44;
  }

  v18 = amber::S3Configuration::parse(this, v16);
  if (v18 < 0)
  {
    v19 = &v22;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v22.__r_.__value_.__r.__words[0];
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/S3/S3Configuration.cpp", "load", 0xF8, 0, "parsing %s", v17, v19);
  }

  (*(*v16 + 8))(v16);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_48:
  v20 = 0xFFFFFFFFLL;
LABEL_45:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v20;
}

void sub_2969D5020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t amber::DaemonKnoxImageMetadata::clear(amber::DaemonKnoxImageMetadata *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  return amber::Buffer::resize((this + 24), 0, a3, a4, a5, a6, a7);
}

uint64_t amber::DaemonKnoxImageMetadata::jsonParse(amber::DaemonKnoxImageMetadata *this, amber::JSONInputStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  v9 = (this + 8);
  amber::Buffer::resize((this + 24), 0, a3, a4, a5, a6, a7);
  v75 = -1;
  *__s1 = 0u;
  v77 = 0u;
  if ((amber::JSONInputStream::read(a2, &v75, v10, v11, v12, v13, v14) & 0x80000000) == 0)
  {
    v20 = -1;
    do
    {
      if (v20 == -1)
      {
        v20 = v80;
      }

      if (v80 == v20)
      {
        if (!v75)
        {
          goto LABEL_38;
        }

        if (v75 == 2)
        {
          return 0;
        }
      }

      if (v80 != v20 + 1)
      {
        goto LABEL_40;
      }

      if (v75 == 3)
      {
        v24 = __s1[0];
        if (!__s1[0])
        {
          goto LABEL_40;
        }

        if (!strcmp(__s1[0], "prologue"))
        {
          v83 = 0;
          if ((amber::Buffer::reserveEndCapacity((v9 + 2), 3 * (v77 >> 2) + 6, v25, v26, v27, v28, v29) & 0x80000000) != 0 || (amber::Buffer::buf((v9 + 2), v19, v84), amber::MutableMemoryView::operator+(v84, *(this + 14), v50, v82), amber::base64StringToBytes(&__s1[1], 1, v82, &v83, v51, v52, v53) < 0) || (amber::Buffer::grow((v9 + 2), v83, v54, v55, v56, v57, v19) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/.././Memory/./Buffer.hpp", "base64StringToBufferEnd", 0x192, 0, "invalid base64 string", v19);
            v66 = "invalid base64 data";
            v67 = 59;
            goto LABEL_41;
          }
        }

        else if (!strcmp(v24, "permutation"))
        {
          v83 = 0;
          if ((amber::Buffer::reserveEndCapacity((this + 128), 3 * (v77 >> 2) + 6, v30, v31, v32, v33, v34) & 0x80000000) != 0 || (amber::Buffer::buf(this + 128, v19, v84), amber::MutableMemoryView::operator+(v84, *(this + 27), v58, v82), amber::base64StringToBytes(&__s1[1], 1, v82, &v83, v59, v60, v61) < 0) || (amber::Buffer::grow((this + 128), v83, v62, v63, v64, v65, v19) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/.././Memory/./Buffer.hpp", "base64StringToBufferEnd", 0x192, 0, "invalid base64 string", v19);
            v66 = "invalid base64 data";
            v67 = 65;
            goto LABEL_41;
          }
        }

        else
        {
          if (strcmp(v24, "prefetch_sequence"))
          {
            goto LABEL_40;
          }

          v83 = 0;
          if ((amber::Buffer::reserveEndCapacity((this + 232), 3 * (v77 >> 2) + 6, v35, v36, v37, v38, v19) & 0x80000000) != 0 || (amber::Buffer::buf(this + 232, v19, v84), amber::MutableMemoryView::operator+(v84, *(this + 40), v39, v82), amber::base64StringToBytes(&__s1[1], 1, v82, &v83, v40, v41, v42) < 0) || (amber::Buffer::grow((this + 232), v83, v43, v44, v45, v46, v19) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/.././Memory/./Buffer.hpp", "base64StringToBufferEnd", 0x192, 0, "invalid base64 string", v19);
            v66 = "invalid base64 data";
            v67 = 71;
            goto LABEL_41;
          }
        }
      }

      else
      {
        if (v75 != 4 || (v21 = __s1[0]) == 0)
        {
LABEL_40:
          v74 = v81;
          v66 = "invalid DaemonKnoxImageMetadata line %d";
          v67 = 76;
          goto LABEL_41;
        }

        v22 = strcmp(__s1[0], "size");
        v23 = v79;
        if (v22 || v79 < 1)
        {
          v47 = strcmp(v21, "io_size");
          v48 = v78;
          v49 = HIDWORD(v78);
          if (v47 || v23 < 1 || v49)
          {
            if (strcmp(v21, "block_size") || v23 < 1 || v49)
            {
              goto LABEL_40;
            }

            *(this + 5) = v48;
          }

          else
          {
            *(this + 4) = v78;
          }
        }

        else
        {
          *v9 = v78;
        }
      }

LABEL_38:
      v75 = -1;
      *__s1 = 0u;
      v77 = 0u;
    }

    while ((amber::JSONInputStream::read(a2, &v75, v15, v16, v17, v18, v19) & 0x80000000) == 0);
  }

  v66 = "read token";
  v67 = 22;
LABEL_41:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxImageMetadata.cpp", "jsonParse", v67, 0, v66, v19, v74);
  *v9 = 0;
  v9[1] = 0;
  amber::Buffer::resize((v9 + 2), 0, v68, v69, v70, v71, v72);
  return 0xFFFFFFFFLL;
}

uint64_t amber::DaemonKnoxImageMetadata::jsonSerialize(amber::DaemonKnoxImageMetadata *this, const void **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginDict(a2, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((amber::JSONOutputStream::append(a2, "size", 1, *(this + 1), 0, v9, v10) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((amber::JSONOutputStream::append(a2, "io_size", 1, *(this + 4), 0, v11, v12) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((amber::JSONOutputStream::append(a2, "block_size", 1, *(this + 5), 0, v13, v14) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v27 = amber::ConstMemoryViewConvertible<amber::Buffer>::empty(this + 24, v15, v16, v17, v18, v19, v20);
  if (!v27)
  {
    amber::Buffer::constBuf(this + 24, v26, v57);
    amber::ConstMemoryView::view(v57, *(this + 13), *(this + 14) - *(this + 13), v28, v56);
    if ((amber::JSONOutputStream::appendBase64(a2, "prologue", v56, 0, v29, v30, v31) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (amber::ConstMemoryViewConvertible<amber::Buffer>::empty(this + 128, v21, v22, v23, v24, v25, v26) || (amber::Buffer::constBuf(this + 128, v37, v57), amber::ConstMemoryView::view(v57, *(this + 26), *(this + 27) - *(this + 26), v38, v55), (amber::JSONOutputStream::appendBase64(a2, "permutation", v55, 0, v39, v40, v41) & 0x80000000) == 0))
  {
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::empty(this + 232, v32, v33, v34, v35, v36, v37) || (amber::Buffer::constBuf(this + 232, v47, v57), amber::ConstMemoryView::view(v57, *(this + 39), *(this + 40) - *(this + 39), v48, v54), (amber::JSONOutputStream::appendBase64(a2, "prefetch_sequence", v54, 0, v49, v50, v51) & 0x80000000) == 0))
    {
      v52 = amber::JSONOutputStream::end(a2, v42, v43, v44, v45, v46, v47) >> 31;
      if (v27)
      {
        goto LABEL_12;
      }

LABEL_15:
      if ((v52 & 1) == 0)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  v52 = 1;
  if (!v27)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (!v52)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

double amber::AEBDCrypto::init(amber::AEBDCrypto *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (this)
  {
    amber::zero(void *,unsigned long)::memset_func(this, 0, 160);
  }

  if (a2 >= 5)
  {
    v10 = "Invalid profile";
    v11 = 22;
    goto LABEL_7;
  }

  if (a3)
  {
    v10 = "Invalid profile_param";
    v11 = 28;
LABEL_7:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDCrypto.cpp", "init", v11, 0, v10, a7);
    return result;
  }

  *this = a2;
  *(this + 1) = 0;
  *(this + 8) = amber::KDF_HKDF_SHA256;
  *(this + 9) = amber::HMAC_SHA256;
  *(this + 7) = amber::RNG;
  *(this + 10) = amber::digest_SHA256;
  *(this + 1) = 32;
  *&result = 0x2000000020;
  *(this + 12) = 0x2000000020;
  *(this + 12) = 32;
  *(this + 5) = 32;
  if (a2 - 1 < 2)
  {
    *(this + 2) = 80;
    *(this + 11) = amber::AEADEncrypt_AES256CTR_MAC256_KEY640;
    *(this + 12) = amber::AEADDecrypt_AES256CTR_MAC256_KEY640;
  }

  else
  {
    if (a2 - 3 >= 2)
    {
      *(this + 2) = 32;
      *(this + 11) = amber::AEADEncrypt_None_MAC256_KEY256;
      *(this + 12) = amber::AEADDecrypt_None_MAC256_KEY256;
      *(this + 13) = 32;
LABEL_16:
      *(this + 16) = amber::digest_SHA256;
      *(this + 17) = amber::sign_ECDSA_P256;
      *(this + 18) = amber::verifySignature_ECDSA_P256;
      *&result = 0x4100000061;
      *(this + 2) = xmmword_296A15970;
      *(this + 19) = amber::publicKeyFromPrivateKey_P256;
      return result;
    }

    *(this + 2) = 80;
    *(this + 11) = amber::AEADEncrypt_AES256CTR_MAC256_KEY640;
    *(this + 12) = amber::AEADDecrypt_AES256CTR_MAC256_KEY640;
    *(this + 13) = amber::DHESender_ECDH_P256;
    *(this + 14) = amber::DHERecipient_ECDH_P256;
    *&result = 0x4100000061;
    *(this + 3) = 0x4100000061;
    *(this + 15) = amber::publicKeyFromPrivateKey_P256;
    *(this + 13) = 65;
  }

  if (a2 == 4 || a2 == 2)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t amber::AEBDCrypto::RNGBytes(amber::AEBDCrypto *this, const amber::MutableMemoryView *a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::AEBDCrypto::RNGBlob(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a2 + 16) = 0;
  v10 = a2 + 20;
  v21 = &off_2A1DDFDA8;
  v22 = a2 + 20;
  v23 = 256;
  amber::MutableMemoryView::operator+(&v21, 0, a7, &v24);
  bzero(v25, v26);
  v12 = *(a2 + 16);
  v13 = __CFADD__(v12, a3);
  v14 = v12 + a3;
  if (!v13 && v14 <= 0x100)
  {
    v15 = *(a1 + 56);
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::endView(a2 + 8, a3, v11, &v24);
    if ((v15(&v24) & 0x80000000) == 0 && (amber::CryptoBlobBase<256u>::grow(a2, a3, v16, v17, v18, v19, v11) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  *(a2 + 16) = 0;
  v21 = &off_2A1DDFDA8;
  v22 = v10;
  v23 = 256;
  amber::MutableMemoryView::operator+(&v21, 0, v11, &v24);
  bzero(v25, v26);
  return 0xFFFFFFFFLL;
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::endView@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  v9[0] = &off_2A1DDFDA8;
  v9[1] = a1 + 12;
  v9[2] = 256;
  amber::MutableMemoryView::operator+(v9, *(a1 + 8), a3, v8);
  return amber::MutableMemoryView::first(v8, a2, v6, a4);
}

uint64_t amber::AEBDCrypto::KDF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(a3 + 16) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  v13[5] = v3;
  v13[6] = v4;
  v10 = v5(a2, *(a1 + 4));
  if ((v10 & 0x80000000) == 0 && *(a2 + 16) == *(a1 + 4))
  {
    return 0;
  }

  *(a2 + 16) = 0;
  v12[0] = &off_2A1DDFDA8;
  v12[1] = a2 + 20;
  v12[2] = 256;
  amber::MutableMemoryView::operator+(v12, 0, v11, v13);
  bzero(v13[1], v13[2]);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDCrypto::HMAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = *(a4 + 16) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0xFFFFFFFFLL;
  }

  v13[5] = v4;
  v13[6] = v5;
  if (*(a3 + 16) == *(a1 + 4))
  {
    if ((v6(a2, a3, a4) & 0x80000000) == 0 && *(a2 + 16) == *(a1 + 16))
    {
      return 0;
    }

    *(a2 + 16) = 0;
    v12[0] = &off_2A1DDFDA8;
    v12[1] = a2 + 20;
    v12[2] = 256;
    amber::MutableMemoryView::operator+(v12, 0, v11, v13);
    bzero(v13[1], v13[2]);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDCrypto::AEADKDF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 64);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a3 + 16) == *(a1 + 4) && *(a5 + 16) == *(a1 + 12))
  {
    if ((v5(a2, *(a1 + 8)) & 0x80000000) == 0 && *(a2 + 16) == *(a1 + 8))
    {
      return 0;
    }

    *(a2 + 16) = 0;
    v10[0] = &off_2A1DDFDA8;
    v10[1] = a2 + 20;
    v10[2] = 256;
    amber::MutableMemoryView::operator+(v10, 0, v8, v11);
    bzero(v11[1], v11[2]);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDCrypto::AEADEncrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v5(a2, a3, a4, a5) & 0x80000000) == 0 && *(a3 + 16) == *(a1 + 16))
  {
    return 0;
  }

  *(a3 + 16) = 0;
  v10[0] = &off_2A1DDFDA8;
  v10[1] = a3 + 20;
  v10[2] = 256;
  amber::MutableMemoryView::operator+(v10, 0, v8, v11);
  bzero(v11[1], v11[2]);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDCrypto::AEADDecrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 96);
  if (v5 && *(a3 + 16) == *(a1 + 16))
  {
    return v5(a2, a3, a4, a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::AEBDCrypto::SegmentDigest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3(a2, a3) & 0x80000000) == 0 && *(a2 + 16) == *(a1 + 20))
  {
    return 0;
  }

  *(a2 + 16) = 0;
  v8[0] = &off_2A1DDFDA8;
  v8[1] = a2 + 20;
  v8[2] = 256;
  amber::MutableMemoryView::operator+(v8, 0, v6, v9);
  bzero(v9[1], v9[2]);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDCrypto::DSDigest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3(a2, a3) & 0x80000000) == 0 && *(a2 + 16) == *(a1 + 40))
  {
    return 0;
  }

  *(a2 + 16) = 0;
  v8[0] = &off_2A1DDFDA8;
  v8[1] = a2 + 20;
  v8[2] = 256;
  amber::MutableMemoryView::operator+(v8, 0, v6, v9);
  bzero(v9[1], v9[2]);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDCrypto::DSVerify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 144);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::AEBDCrypto::DeriveMainKeyCommon(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v79 = *MEMORY[0x29EDCA608];
  v60 = &unk_2A1DDFDD8;
  v61 = &unk_2A1DDFE08;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0;
  if (*(a5 + 16) == a1[1])
  {
    if (*(a9 + 16) == a1[3])
    {
      v11 = a1[7];
      if (*(a6 + 16) == v11)
      {
        if (*(a7 + 16) == v11)
        {
          if (*(a8 + 16) == a1[9])
          {
            if (*(a4 + 16) == a1[12])
            {
              amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v61, "AEBDMAIK", a3, a4, a5, a6, a7);
              v18 = *(a3 + 16);
              v57 = &off_2A1DDFC68;
              v58 = a3 + 20;
              v59 = v18;
              amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v61, &v57, v19, v20, v21, v22, v23);
              v24 = *(a4 + 16);
              v57 = &off_2A1DDFC68;
              v58 = a4 + 20;
              v59 = v24;
              amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v61, &v57, v25, v26, v27, v28, v29);
              v30 = *(a6 + 16);
              v57 = &off_2A1DDFC68;
              v58 = a6 + 20;
              v59 = v30;
              amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v61, &v57, v31, v32, v33, v34, v35);
              v36 = *(a7 + 16);
              v57 = &off_2A1DDFC68;
              v58 = a7 + 20;
              v59 = v36;
              amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v61, &v57, v37, v38, v39, v40, v41);
              v42 = *(a8 + 16);
              v57 = &off_2A1DDFC68;
              v58 = a8 + 20;
              v59 = v42;
              amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v61, &v57, v43, v44, v45, v46, v47);
              v48 = amber::AEBDCrypto::KDF(a1, a2, a5);
              if (*(a2 + 16) == a1[1])
              {
                v54 = v48;
              }

              else
              {
                v54 = 4294966276;
              }

              if (v54)
              {
                amber::CryptoBlobBase<256u>::resize(a2, 0, v49, v50, v51, v52, v53);
              }
            }

            else
            {
              v54 = 4294966290;
            }
          }

          else
          {
            v54 = 4294966291;
          }
        }

        else
        {
          v54 = 4294966292;
        }
      }

      else
      {
        v54 = 4294966293;
      }
    }

    else
    {
      v54 = 4294966294;
    }
  }

  else
  {
    v54 = 4294966295;
  }

  v55 = *MEMORY[0x29EDCA608];
  return v54;
}

uint64_t amber::AEBDCrypto::DeriveMainKeySymmetric(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = *MEMORY[0x29EDCA608];
  v27[0] = &unk_2A1DDFDD8;
  v27[1] = &unk_2A1DDFE08;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v9[0] = &unk_2A1DDFDD8;
  v9[1] = &unk_2A1DDFE08;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  result = amber::AEBDCrypto::DeriveMainKeyCommon(a1, a2, a3, a4, a5, v27, v9, a6, a7);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveMainKeyDHESender(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x29EDCA608];
  v19[0] = &unk_2A1DDFDD8;
  v19[1] = &unk_2A1DDFE08;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v8 = *(a1 + 104);
  if (v8)
  {
    if (*(a6 + 16) == *(a1 + 28))
    {
      if ((v8(v19, a5, a6) & 0x80000000) != 0)
      {
        result = 4294967293;
      }

      else if (*(a5 + 16) == *(a1 + 28))
      {
        if (v20 == *(a1 + 4))
        {
          result = amber::AEBDCrypto::DeriveMainKeyCommon(a1, a2, a3, a4, v19, a5, a6, a7, a8);
        }

        else
        {
          result = 4294967291;
        }
      }

      else
      {
        result = 4294967292;
      }
    }

    else
    {
      result = 4294967294;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveMainKeyDHERecipient(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t (*a8)(const char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t *), uint64_t a9, uint64_t a10)
{
  v39 = *MEMORY[0x29EDCA608];
  v37[0] = &unk_2A1DDFDD8;
  v37[1] = &unk_2A1DDFE08;
  memset(&v37[2], 0, 256);
  v38 = 0;
  v32 = 0;
  if (a8)
  {
    v12 = a1[7];
    v13 = *(a5 + 16);
    if (v13 == v12)
    {
      v15 = *(a6 + 16);
      if (v15 == v12)
      {
        v20 = *a1;
        if (v20 >= 5)
        {
          v20 = -1;
        }

        v31 = v20;
        v34 = &off_2A1DDFDA8;
        v35 = &v37[2] + 4;
        v36 = 256;
        amber::MutableMemoryView::operator+(&v34, 0, a7, v33);
        v30 = v33[2];
        v34 = &off_2A1DDFDA8;
        v35 = &v37[2] + 4;
        v36 = 256;
        amber::MutableMemoryView::operator+(&v34, LODWORD(v37[2]), v21, v33);
        if ((a8(a7, v31, a5 + 20, v13, a6 + 20, v15, v30, v33[1], &v32) & 0x80000000) != 0)
        {
          result = 4294967292;
        }

        else
        {
          amber::CryptoBlobBase<256u>::grow(v37, v32, v22, v23, v24, v25, v26);
          if (LODWORD(v37[2]) == a1[1])
          {
            result = amber::AEBDCrypto::DeriveMainKeyCommon(a1, a2, a3, a4, v37, a5, a6, a9, a10);
          }

          else
          {
            result = 4294967291;
          }
        }
      }

      else
      {
        result = 4294967293;
      }
    }

    else
    {
      result = 4294967294;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DerivePrologueKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13 = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v12, "AEBDPROK", a3, a4, a5, a6, a7);
  result = amber::AEBDCrypto::KDF(a1, a2, a3);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::CryptoBlobBase<256u>::CryptoBlobBase(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (__s)
  {
    v10 = &off_2A1DDFC68;
    v11 = __s;
    v12 = strlen(__s);
    if ((v12 & 0x8000000000000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = &off_2A1DDFC68;
  }

  return amber::CryptoBlobBase<256u>::CryptoBlobBase(a1, &v10, a3, a4, a5, a6, a7);
}

uint64_t amber::AEBDCrypto::DeriveClusterKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  v39[34] = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v38, "AEBDCLUK", a3, a4, a5, a6, a7);
  v18 = v7;
  v19 = &off_2A1DDFC68;
  v20 = &v18;
  *&v21 = 4;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v39, &v19, v11, v12, v13, v14, v15);
  v19 = &unk_2A1DDFDD8;
  v20 = &unk_2A1DDFE08;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  result = amber::AEBDCrypto::KDF(a1, a2, a3);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveSignatureKeyWithPrologueKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13 = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v12, "AEBDSIGK", a3, a4, a5, a6, a7);
  result = amber::AEBDCrypto::KDF(a1, a2, a3);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveSignatureKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v35 = *MEMORY[0x29EDCA608];
  v17[0] = &unk_2A1DDFDD8;
  v17[1] = &unk_2A1DDFE08;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  if ((amber::AEBDCrypto::DerivePrologueKeyWithMainKey(a1, v17, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::AEBDCrypto::DeriveSignatureKeyWithPrologueKey(a1, a2, v17, v9, v10, v11, v12) & 0x80000000) != 0)
  {
    *(a2 + 16) = 0;
    v15[0] = &off_2A1DDFDA8;
    v15[1] = a2 + 20;
    v15[2] = 256;
    amber::MutableMemoryView::operator+(v15, 0, v12, v16);
    bzero(v16[1], v16[2]);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveSegmentKeyWithClusterKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  v39[34] = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v38, "AEBDSEGK", a3, a4, a5, a6, a7);
  v18 = v7;
  v19 = &off_2A1DDFC68;
  v20 = &v18;
  *&v21 = 4;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v39, &v19, v11, v12, v13, v14, v15);
  v19 = &unk_2A1DDFDD8;
  v20 = &unk_2A1DDFE08;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  result = amber::AEBDCrypto::KDF(a1, a2, a3);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveRootAEADKeyWithPrologueKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13[35] = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v13, "AEBDROEK", a3, a4, a5, a6, a7);
  result = amber::AEBDCrypto::AEADKDF(a1, a2, a3, v13, a4);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveClusterAEADKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v36[35] = *MEMORY[0x29EDCA608];
  v18[0] = &unk_2A1DDFDD8;
  v18[1] = &unk_2A1DDFE08;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  if ((amber::AEBDCrypto::DeriveClusterKeyWithMainKey(a1, v18, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::CryptoBlobBase<256u>::CryptoBlobBase(v36, "AEBDCLEK", v10, v11, v12, v13, v14), (amber::AEBDCrypto::AEADKDF(a1, a2, v18, v36, a5) & 0x80000000) != 0))
  {
    *(a2 + 16) = 0;
    v17[0] = &off_2A1DDFDA8;
    v17[1] = a2 + 20;
    v17[2] = 256;
    amber::MutableMemoryView::operator+(v17, 0, v14, v36);
    bzero(v36[1], v36[2]);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveSegmentAEADKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v57[35] = *MEMORY[0x29EDCA608];
  v39[0] = &unk_2A1DDFDD8;
  v39[1] = &unk_2A1DDFE08;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v21[0] = &unk_2A1DDFDD8;
  v21[1] = &unk_2A1DDFE08;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  if ((amber::AEBDCrypto::DeriveClusterKeyWithMainKey(a1, v39, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::AEBDCrypto::DeriveSegmentKeyWithClusterKey(a1, v21, v39, a5, v11, v12, v13) & 0x80000000) != 0 || (amber::CryptoBlobBase<256u>::CryptoBlobBase(v57, "AEBDSEEK", v14, v15, v16, v17, v13), (amber::AEBDCrypto::AEADKDF(a1, a2, v21, v57, a6) & 0x80000000) != 0))
  {
    *(a2 + 16) = 0;
    v20[0] = &off_2A1DDFDA8;
    v20[1] = a2 + 20;
    v20[2] = 256;
    amber::MutableMemoryView::operator+(v20, 0, v13, v57);
    bzero(v57[1], v57[2]);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveSignatureAEADKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v57[35] = *MEMORY[0x29EDCA608];
  v39[0] = &unk_2A1DDFDD8;
  v39[1] = &unk_2A1DDFE08;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v21[0] = &unk_2A1DDFDD8;
  v21[1] = &unk_2A1DDFE08;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  if ((amber::AEBDCrypto::DerivePrologueKeyWithMainKey(a1, v39, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::AEBDCrypto::DeriveSignatureKeyWithPrologueKey(a1, v21, v39, v10, v11, v12, v13) & 0x80000000) != 0 || (amber::CryptoBlobBase<256u>::CryptoBlobBase(v57, "AEBDSIEK", v14, v15, v16, v17, v13), (amber::AEBDCrypto::AEADKDF(a1, a2, v21, v57, a4) & 0x80000000) != 0))
  {
    *(a2 + 16) = 0;
    v20[0] = &off_2A1DDFDA8;
    v20[1] = a2 + 20;
    v20[2] = 256;
    amber::MutableMemoryView::operator+(v20, 0, v13, v57);
    bzero(v57[1], v57[2]);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveKMSStorageKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v12[35] = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v12, "AEBDKMSK", a3, a4, a5, a6, a7);
  result = amber::AEBDCrypto::KDF(a1, a2, a3);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DerivePrologueStorageKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v78 = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v77, "AEBDPRSK", a3, a4, a5, a6, a7);
  v59[0] = &unk_2A1DDFDD8;
  v59[1] = &unk_2A1DDFE08;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v41[0] = &unk_2A1DDFDD8;
  v41[1] = &unk_2A1DDFE08;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  if ((amber::AEBDCrypto::DerivePrologueKeyWithMainKey(a1, v59, a3, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  v22 = &unk_2A1DDFDD8;
  v23 = &unk_2A1DDFE08;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  if ((amber::AEBDCrypto::KDF(a1, v41, v59) & 0x80000000) != 0 || (v16 = *(a4 + 16), v19 = &off_2A1DDFC68, v20 = a4 + 20, v21 = v16, (amber::AEBDCrypto::HMAC(a1, a2, v41, &v19) & 0x80000000) != 0))
  {
LABEL_5:
    *(a2 + 16) = 0;
    v19 = &off_2A1DDFDA8;
    v20 = a2 + 20;
    v21 = 256;
    amber::MutableMemoryView::operator+(&v19, 0, v15, &v22);
    bzero(v23, v24);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveClusterStorageKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v78 = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v77, "AEBDCLSK", a3, a4, a5, a6, a7);
  v59[0] = &unk_2A1DDFDD8;
  v59[1] = &unk_2A1DDFE08;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v41[0] = &unk_2A1DDFDD8;
  v41[1] = &unk_2A1DDFE08;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  if ((amber::AEBDCrypto::DeriveClusterKeyWithMainKey(a1, v59, a3, a4, v12, v13, v14) & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

  v22 = &unk_2A1DDFDD8;
  v23 = &unk_2A1DDFE08;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  if ((amber::AEBDCrypto::KDF(a1, v41, v59) & 0x80000000) != 0 || (v16 = *(a5 + 16), v19 = &off_2A1DDFC68, v20 = a5 + 20, v21 = v16, (amber::AEBDCrypto::HMAC(a1, a2, v41, &v19) & 0x80000000) != 0))
  {
LABEL_5:
    *(a2 + 16) = 0;
    v19 = &off_2A1DDFDA8;
    v20 = a2 + 20;
    v21 = 256;
    amber::MutableMemoryView::operator+(&v19, 0, v15, &v22);
    bzero(v23, v24);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEBDCrypto::DeriveSegmentStorageKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v99 = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v98, "AEBDSESK", a3, a4, a5, a6, a7);
  v80[0] = &unk_2A1DDFDD8;
  v80[1] = &unk_2A1DDFE08;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0;
  v62[0] = &unk_2A1DDFDD8;
  v62[1] = &unk_2A1DDFE08;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0;
  v44[0] = &unk_2A1DDFDD8;
  v44[1] = &unk_2A1DDFE08;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  if ((amber::AEBDCrypto::DeriveClusterKeyWithMainKey(a1, v80, a3, a4, v13, v14, v15) & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  if ((amber::AEBDCrypto::DeriveSegmentKeyWithClusterKey(a1, v62, v80, a5, v16, v17, v18) & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  v25 = &unk_2A1DDFDD8;
  v26 = &unk_2A1DDFE08;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  if ((amber::AEBDCrypto::KDF(a1, v44, v62) & 0x80000000) != 0 || (v19 = *(a6 + 16), v22 = &off_2A1DDFC68, v23 = a6 + 20, v24 = v19, (amber::AEBDCrypto::HMAC(a1, a2, v44, &v22) & 0x80000000) != 0))
  {
LABEL_6:
    *(a2 + 16) = 0;
    v22 = &off_2A1DDFDA8;
    v23 = a2 + 20;
    v24 = 256;
    amber::MutableMemoryView::operator+(&v22, 0, v18, &v25);
    bzero(v26, v27);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEABlockDevice::openWithPrologue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!*(a2 + 20))
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "openWithPrologue", 0x80, 0, "invalid AEA prologue", a7);
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2969D8960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  free(a11);
  amber::ObjectStorePath::~ObjectStorePath(&a16);
  _Unwind_Resume(a1);
}

void amber::AEABlockDevice::~AEABlockDevice(amber::AEABlockDevice *this)
{
  *this = &unk_2A1DE3248;
  amber::SyncBlockDevice::terminateThreads(this);
  v8 = *(this + 61);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::AEABlockDevice::~AEABlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::AEABlockDevice::ReadDataState::processReply(atomic_uint *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 7);
  v9 = *(*this + 480);
  v10 = *(a2 + 5) & 0x7FFFFFFFFFFFFFFFLL;
  v11 = v10 * v9;
  v12 = v10 * v9 + v9;
  v13 = *(*this + 472);
  if (v12 < v13)
  {
    v13 = v12;
  }

  v55[2] = 0;
  v55[3] = 0;
  v55[1] = off_2A1DDFD48;
  v55[5] = 0;
  v55[6] = 0;
  v55[4] = &off_2A1DDFDA8;
  v55[7] = &off_2A1DDFC68;
  v56 = 0u;
  v57 = 0u;
  v58 = 257;
  v59 = 0;
  v55[0] = off_2A1DDFC98;
  v14 = *(a2 + 8);
  if (v11 >= v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  if (v11 >= v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  if (*(this + 1) > v15 || v16 > *(this + 2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "processReply", 0xBF, 0, "requested range doesn't match", a7);
LABEL_12:
    v17 = 0;
    atomic_compare_exchange_strong(this + 8, &v17, 1u);
    goto LABEL_13;
  }

  v25 = *(a2 + 14);
  if (v8 != 2)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "processReply", 0xD6, 0, "received an error from next/storage length: %u offset: %llu", a7, *(a2 + 14), *(a2 + 6));
    goto LABEL_12;
  }

  amber::BlockDeviceEvent::BlockDeviceEvent(v54, 20, a2);
  amber::BlockDeviceEvent::sendBegin(v54);
  v27 = *(*this + 488);
  v60[0] = &off_2A1DDFDA8;
  v60[1] = v14;
  v60[2] = v25;
  if (v25 && !v14)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", v26);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (((*(*v27 + 64))(v27, v10, v60, v55) & 0x80000000) != 0 || amber::ConstMemoryViewConvertible<amber::Buffer>::size(v55, v28, v29, v30, v31, v32, v33) != v16 - v15)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "processReply", 0xCD, 0, "segment decryption failed", v33);
    amber::BlockDeviceEvent::~BlockDeviceEvent(v54);
    goto LABEL_12;
  }

  amber::BlockDeviceEvent::sendEnd(v54);
  v34 = *(this + 3);
  v35 = *(this + 1);
  v42 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v55, v36, v37, v38, v39, v40, v41);
  v51 = &off_2A1DDFDA8;
  __dst = (v34 + v11 - v35);
  v53 = v42;
  if (v42 < 0 || !v34 && v42)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", v43);
    v47 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v47, "memory invalid args");
    __cxa_throw(v47, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  amber::Buffer::constBuf(v55, v43, v60);
  amber::ConstMemoryView::view(v60, v57, *(&v57 + 1) - v57, v44, v49);
  if (__n > v53)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v45);
    v48 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v48, "memory invalid range");
    __cxa_throw(v48, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(__dst, v49[1], __n);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v54);
LABEL_13:
  free(v14);
  amber::Sem::release((this + 10));
  amber::Buffer::~Buffer(v55, v18, v19, v20, v21, v22, v23);
  return 0;
}

void sub_2969D8EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  __cxa_free_exception(v19);
  amber::BlockDeviceEvent::~BlockDeviceEvent(&a17);
  amber::Buffer::~Buffer(&a19, v21, v22, v23, v24, v25, v26);
  _Unwind_Resume(a1);
}

uint64_t amber::AEABlockDevice::getAttribute(amber::AEABlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "getAttribute", 0xEA, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 202)
  {
    if (a2 == 201)
    {
      v20 = *(this + 59);
      *a5 = 8;
      v15 = *(a4 + 2);
      if (v15)
      {
        if (v15 > 7)
        {
          result = 0;
          **(a4 + 1) = v20;
          return result;
        }

        v18 = 8;
        goto LABEL_20;
      }

      return 0;
    }

    if (a2 != 202)
    {
      goto LABEL_28;
    }

    v16 = *(this + 121);
LABEL_17:
    *a5 = 4;
    v15 = *(a4 + 2);
    if (v15)
    {
      if (v15 > 3)
      {
        goto LABEL_23;
      }

LABEL_19:
      v18 = 4;
LABEL_20:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, v18, v15);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  switch(a2)
  {
    case 0xCD:
      v17 = *(this + 120);
      do
      {
        v16 = v17;
        v17 *= 2;
      }

      while (v16 < 0x40000);
      goto LABEL_17;
    case 0xCC:
      v16 = *(this + 120);
      goto LABEL_17;
    case 0xCB:
      AttributeUInt32 = amber::BaseObject::getAttributeUInt32(*(this + 61), 109);
      *a5 = 4;
      v15 = *(a4 + 2);
      if (v15)
      {
        if (v15 > 3)
        {
          v16 = AttributeUInt32;
LABEL_23:
          result = 0;
          **(a4 + 1) = v16;
          return result;
        }

        goto LABEL_19;
      }

      return 0;
  }

LABEL_28:

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::AEABlockDevice::executeRead(amber::AEABlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v52 = *MEMORY[0x29EDCA608];
  v8 = *(a3 + 6);
  v9 = *(a3 + 14);
  if (__CFADD__(v8, v9))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v11 = *(a3 + 8);
  v12 = v8 + v9;
  if (v8 + v9 <= v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  if (v8 + v9 <= v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8 + v9;
  }

  v15 = v13 >= v14;
  if (v13 >= v14)
  {
    v13 = 0;
  }

  v42 = this;
  v43 = v13;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v44 = v16;
  v45 = v11;
  v46 = 0;
  v47[0] = xmmword_296A14210;
  memset(&v47[1], 0, 48);
  v48 = 0;
  v49 = 1018212795;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v17 = *(this + 120);
  if (v8 % v17 || (v18 = *(this + 59), v12 > v18) || v12 != v18 && v12 % v17)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "executeRead", 0x10E, 0, "invalid request range offset: %llu length: %u", a7, v8, v9);
    v23 = -2147483626;
LABEL_18:
    amber::BlockDeviceRequest::sendReply(a3, v23, 0, v19, v20, v21, v22);
    v24 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  if (v11)
  {
    amber::zero(void *,unsigned long)::memset_func(v11, 0);
  }

  if (v12 > v8)
  {
    v27 = *(this + 120);
    while (1)
    {
      v28 = v8 / v27;
      if ((*(**(this + 61) + 112))(*(this + 61), v8 / v27))
      {
        break;
      }

      v27 = *(this + 120);
      v8 += v27;
      if (v8 >= v12)
      {
        goto LABEL_30;
      }
    }

    v29 = amber::ObjectStorePath::ObjectStorePath(v40);
    if (((*(**(this + 61) + 96))(*(this + 61), v28, v40, v29) & 0x80000000) != 0 || size > *(this + 120))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "executeRead", 0x11B, 0, "get segment storage attributes", v30);
    }

    else
    {
      if (malloc_type_malloc(size, 0xF93785E2uLL))
      {
        operator new();
      }

      v35 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v35, "malloc", v36);
      v37 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "executeRead", 0x11E, *v37, "malloc", v38);
    }

    v23 = -2147483643;
    amber::ObjectStorePath::~ObjectStorePath(v40);
    goto LABEL_18;
  }

LABEL_30:
  if (v51[6]-- >= 1)
  {
    do
    {
      amber::Sem::acquire(v47);
      v32 = v51[6]--;
    }

    while (v32 > 0);
  }

  if (atomic_load(&v46))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "executeRead", 0x13E, 0, "storage/next device requests reported errors", a7);
    v23 = -2147483643;
    goto LABEL_18;
  }

  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEABlockDevice.cpp", "executeRead", 0x145, 0, "reply data", v34);
  }

  v24 = 0;
LABEL_19:
  std::condition_variable::~condition_variable(&v49);
  std::mutex::~mutex((v47 + 8));
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

void sub_2969D96C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  amber::ObjectStorePath::~ObjectStorePath(va);
  std::condition_variable::~condition_variable((v5 + 112));
  std::mutex::~mutex((v5 + 48));
  _Unwind_Resume(a1);
}

uint64_t AmberAEABlockDeviceOpenWithPrologue(amber *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13[0] = &off_2A1DDFC68;
  v13[1] = a2;
  v13[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (!a6)
  {
    a6 = amber::defaultThreadCount(a1);
  }

  return amber::AEABlockDevice::openWithPrologue(a1, v13, a4, a5, a6, a7, a7);
}

void sub_2969D9874(void *a1)
{
  __cxa_free_exception(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969D97FCLL);
}

amber::HTTPAuthenticator *amber::HTTPAuthenticator::HTTPAuthenticator(amber::HTTPAuthenticator *this, uint64_t a2)
{
  *this = &unk_2A1DE3350;
  *(this + 1) = a2;
  std::string::basic_string[abi:ne200100]<0>(this + 16, "Not A Ninja/Amber");
  *(this + 40) = 0u;
  *(this + 88) = 0u;
  *(this + 136) = 0u;
  *(this + 20) = 850045863;
  *(this + 19) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  *(this + 232) = 0u;
  *(this + 28) = this + 232;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0;
  *(this + 36) = 850045863;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 43) = 0;
  *(this + 44) = this + 360;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0;
  *(this + 52) = 850045863;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 59) = 0;
  *(this + 60) = this + 488;
  *(this + 536) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 488) = 0u;
  *(this + 68) = this + 552;
  *(this + 600) = 0;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 552) = 0u;
  *(this + 76) = this + 616;
  *(this + 664) = 0;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 616) = 0u;
  *(this + 84) = this + 680;
  *(this + 728) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 680) = 0u;
  *(this + 92) = this + 744;
  *(this + 792) = 0;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 744) = 0u;
  v3 = getenv("KNOX_DAW_TOKEN");
  if (v3 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 352, v3, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0xA, 0, "parse env DAW token", v4);
  }

  v5 = getenv("KNOX_WESTGATE_TOKEN");
  if (v5 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 224, v5, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0xB, 0, "parse env Westgate token", v6);
  }

  v7 = getenv("AMBER_USER_AGENT");
  if (v7)
  {
    if (*v7)
    {
      MEMORY[0x29C25BF00](this + 16, v7);
    }

    else if (*(this + 39) < 0)
    {
      **(this + 2) = 0;
      *(this + 3) = 0;
    }

    else
    {
      *(this + 16) = 0;
      *(this + 39) = 0;
    }
  }

  v8 = getenv("AMBER_PROXY");
  if (v8)
  {
    if (*v8)
    {
      MEMORY[0x29C25BF00](this + 40, v8);
    }

    else if (*(this + 63) < 0)
    {
      **(this + 5) = 0;
      *(this + 6) = 0;
    }

    else
    {
      *(this + 40) = 0;
      *(this + 63) = 0;
    }
  }

  v9 = getenv("AMBER_APPLECONNECT_ACCOUNT");
  if (v9)
  {
    if (*v9)
    {
      MEMORY[0x29C25BF00](this + 88, v9);
    }

    else if (*(this + 111) < 0)
    {
      **(this + 11) = 0;
      *(this + 12) = 0;
    }

    else
    {
      *(this + 88) = 0;
      *(this + 111) = 0;
    }
  }

  v10 = getenv("AMBER_KEYTAB_FILE");
  if (v10)
  {
    if (*v10)
    {
      MEMORY[0x29C25BF00](this + 64, v10);
    }

    else if (*(this + 87) < 0)
    {
      **(this + 8) = 0;
      *(this + 9) = 0;
    }

    else
    {
      *(this + 64) = 0;
      *(this + 87) = 0;
    }
  }

  v11 = getenv("AMBER_DAW_TOKEN");
  if (v11 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 352, v11, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x12, 0, "parse env DAW token", v12);
  }

  v13 = getenv("AMBER_WESTGATE_TOKEN");
  if (v13 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 224, v13, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x13, 0, "parse env Westgate token", v14);
  }

  v15 = getenv("AMBER_DAW_TOKEN_FILE");
  if (v15)
  {
    v20 = v15;
    if ((amber::HTTPAuthenticatorValue<std::string>::parseFromFile(this + 352, v15, 1, v16, v17, v18, v19) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x14, 0, "loading DAW token: %s", v21, v20);
    }
  }

  v22 = getenv("AMBER_WESTGATE_TOKEN_FILE");
  if (v22)
  {
    v27 = v22;
    if ((amber::HTTPAuthenticatorValue<std::string>::parseFromFile(this + 224, v22, 1, v23, v24, v25, v26) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x15, 0, "loading Westgate token: %s", v28, v27);
    }
  }

  v29 = getenv("AMBER_SSL_CLIENT_CERT_NAME");
  if (v29)
  {
    if (*v29)
    {
      MEMORY[0x29C25BF00](this + 112, v29);
    }

    else if (*(this + 135) < 0)
    {
      **(this + 14) = 0;
      *(this + 15) = 0;
    }

    else
    {
      *(this + 112) = 0;
      *(this + 135) = 0;
    }
  }

  v30 = getenv("AMBER_SSL_CLIENT_KEY_NAME");
  if (v30)
  {
    if (*v30)
    {
      MEMORY[0x29C25BF00](this + 136, v30);
    }

    else if (*(this + 159) < 0)
    {
      **(this + 17) = 0;
      *(this + 18) = 0;
    }

    else
    {
      *(this + 136) = 0;
      *(this + 159) = 0;
    }
  }

  v31 = getenv("AMBER_S3_ENDPOINT");
  if (v31 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 480, v31, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x18, 0, "parse env S3 endpoint", v32);
  }

  v33 = getenv("AMBER_S3_REGION");
  if (v33 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 544, v33, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x19, 0, "parse env S3 region", v34);
  }

  v35 = getenv("AMBER_S3_ACCESS_KEY_ID");
  if (v35 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 544, v35, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x1A, 0, "parse env S3 access key id", v36);
  }

  v37 = getenv("AMBER_S3_SECRET_ACCESS_KEY");
  if (v37 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 544, v37, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x1B, 0, "parse env S3 secret access key", v38);
  }

  v39 = getenv("AMBER_S3_SESSION_TOKEN");
  if (v39 && (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + 544, v39, 1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "HTTPAuthenticator", 0x1C, 0, "parse env S3 session token", v40);
  }

  return this;
}

void sub_2969D9F00(_Unwind_Exception *a1)
{
  amber::HTTPAuthenticatorValue<std::string>::~HTTPAuthenticatorValue(v2 + 696);
  amber::HTTPAuthenticatorValue<std::string>::~HTTPAuthenticatorValue(v2 + 632);
  amber::HTTPAuthenticatorValue<std::string>::~HTTPAuthenticatorValue(v2 + 568);
  amber::HTTPAuthenticatorValue<std::string>::~HTTPAuthenticatorValue(v2 + 504);
  amber::HTTPAuthenticatorValue<std::string>::~HTTPAuthenticatorValue(v2 + 440);
  std::mutex::~mutex((v2 + 376));
  amber::HTTPAuthenticatorValue<std::string>::~HTTPAuthenticatorValue(v2 + 312);
  std::mutex::~mutex((v2 + 248));
  amber::HTTPAuthenticatorValue<std::string>::~HTTPAuthenticatorValue(v6);
  std::mutex::~mutex(v5);
  if (*(v1 + 159) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

uint64_t amber::HTTPAuthenticatorValue<std::string>::parseFromString(uint64_t a1, char *__s, char a3)
{
  while (1)
  {
    v6 = strlen(__s);
    v7 = strchr(__s, 59);
    v8 = v7;
    if (v7)
    {
      v6 = v7 - __s;
    }

    if (v6)
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      memset(&__p, 0, sizeof(__p));
      v9 = strchr(__s, 58);
      if (v9 && (v10 = v9 - __s, v9 - __s < v6))
      {
        MEMORY[0x29C25BF10](v15, __s, v10);
        MEMORY[0x29C25BF10](&__p, &__s[v10 + 1], v6 + ~v10);
      }

      else
      {
        MEMORY[0x29C25BF10](&__p, __s, v6);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        amber::HTTPAuthenticatorValue<std::string>::setValue(a1, v15, &__p, a3);
      }

      else
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././HTTP/./HTTPAuthenticator.hpp", "parseFromString", 0x4A, 0, "empty value", v11);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15[0]);
      }

      if (!size)
      {
        break;
      }
    }

    __s = v8 + 1;
    if (!v8)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_2969DA168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::HTTPAuthenticatorValue<std::string>::parseFromFile(uint64_t a1, amber *a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a3;
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if ((amber::loadFileContents(a2, __p, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././HTTP/./HTTPAuthenticator.hpp", "parseFromFile", 0x58, 0, "loading file", v9);
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v14 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = amber::HTTPAuthenticatorValue<std::string>::parseFromString(a1, v10, v7);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2969DA248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::HTTPAuthenticatorValue<std::string>::~HTTPAuthenticatorValue(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a1 + 8));
  return a1;
}

void amber::HTTPAuthenticator::~HTTPAuthenticator(amber::HTTPAuthenticator *this)
{
  *this = &unk_2A1DE3350;
  if (*(this + 783) < 0)
  {
    operator delete(*(this + 95));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 736, *(this + 93));
  if (*(this + 719) < 0)
  {
    operator delete(*(this + 87));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 672, *(this + 85));
  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 608, *(this + 77));
  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 544, *(this + 69));
  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 480, *(this + 61));
  std::mutex::~mutex((this + 416));
  if (*(this + 399) < 0)
  {
    operator delete(*(this + 47));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 352, *(this + 45));
  std::mutex::~mutex((this + 288));
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 224, *(this + 29));
  std::mutex::~mutex((this + 160));
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  amber::HTTPAuthenticator::~HTTPAuthenticator(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::HTTPAuthenticator::updateContext(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v6 = *v6;
  }

  v7 = strlen(v6);
  if ((AmberObjectSetAttribute(a2, 401, 6, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v11 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_10;
    }

    v11 = *v11;
LABEL_9:
    v12 = strlen(v11);
    if ((AmberObjectSetAttribute(a2, 402, 6, v11, v12, v13, v14) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v16 = "setting context attributes";
    v17 = 57;
    goto LABEL_13;
  }

  if (*(a1 + 63))
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((a3 & 2) == 0)
  {
    v15 = 1;
    goto LABEL_32;
  }

  if ((amber::HTTPAuthenticator::refreshDAWTokenIfNeeded(a1, a2) & 0x80000000) != 0)
  {
    v16 = "refreshDAWTokenIfNeeded";
    v17 = 62;
    goto LABEL_13;
  }

  __p = 0;
  v72 = 0;
  v73 = 0;
  if ((amber::BaseObject::getAttributeString(a2, 405, &__p) & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v20 = HIBYTE(v73);
  if (v73 < 0)
  {
    v20 = v72;
  }

  if (!v20)
  {
LABEL_27:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "updateContext", 0x42, 0, "context has no appid", v19);
  }

  else
  {
    v21 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 352, &__p);
    if (*(v21 + 23) >= 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = *v21;
    }

    v23 = strlen(v22);
    if ((AmberObjectSetAttribute(a2, 408, 6, v22, v23, v24, v25) & 0x80000000) == 0)
    {
      v27 = 1;
      v15 = 1;
      goto LABEL_29;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "updateContext", 0x4A, 0, "setting context attributes", v26);
  }

  v27 = 0;
  v15 = 0;
LABEL_29:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_32:
  if ((a3 & 1) == 0)
  {
    goto LABEL_49;
  }

  if ((amber::HTTPAuthenticator::refreshWestgateTokenIfNeeded(a1, a2) & 0x80000000) != 0)
  {
    v16 = "refreshWestgateTokenIfNeeded";
    v17 = 80;
    goto LABEL_13;
  }

  __p = 0;
  v72 = 0;
  v73 = 0;
  if ((amber::BaseObject::getAttributeString(a2, 403, &__p) & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  v29 = HIBYTE(v73);
  if (v73 < 0)
  {
    v29 = v72;
  }

  if (!v29)
  {
LABEL_44:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "updateContext", 0x54, 0, "context has no host", v28);
  }

  else
  {
    v30 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 224, &__p);
    if (*(v30 + 23) >= 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = *v30;
    }

    v32 = strlen(v31);
    if ((AmberObjectSetAttribute(a2, 407, 6, v31, v32, v33, v34) & 0x80000000) == 0)
    {
      v36 = 1;
      goto LABEL_46;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "updateContext", 0x5C, 0, "setting context attributes", v35);
  }

  v36 = 0;
  v15 = 0;
LABEL_46:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
  }

  if (v36)
  {
LABEL_49:
    if ((a3 & 4) == 0)
    {
      goto LABEL_63;
    }

    v37 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      if (!*(a1 + 120))
      {
LABEL_57:
        v41 = (a1 + 136);
        if ((*(a1 + 159) & 0x80000000) == 0)
        {
          if (!*(a1 + 159))
          {
            goto LABEL_63;
          }

LABEL_62:
          v42 = strlen(v41);
          if ((AmberObjectSetAttribute(a2, 410, 6, v41, v42, v43, v44) & 0x80000000) != 0)
          {
            v16 = "setting context attributes";
            v17 = 107;
            goto LABEL_13;
          }

          goto LABEL_63;
        }

        if (*(a1 + 144))
        {
          v41 = *v41;
          goto LABEL_62;
        }

LABEL_63:
        if ((a3 & 8) == 0)
        {
          goto LABEL_14;
        }

        if ((amber::HTTPAuthenticator::refreshS3CredentialsIfNeeded(a1, a2) & 0x80000000) == 0)
        {
          __p = 0;
          v72 = 0;
          v73 = 0;
          if ((amber::BaseObject::getAttributeString(a2, 412, &__p) & 0x80000000) != 0)
          {
            if (SHIBYTE(v73) < 0)
            {
              *__p = 0;
              v72 = 0;
            }

            else
            {
              LOBYTE(__p) = 0;
              HIBYTE(v73) = 0;
            }
          }

          v45 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 480, &__p);
          if (*(v45 + 23) >= 0)
          {
            v46 = v45;
          }

          else
          {
            v46 = *v45;
          }

          v47 = strlen(v46);
          if ((AmberObjectSetAttribute(a2, 414, 6, v46, v47, v48, v49) & 0x80000000) != 0)
          {
            goto LABEL_94;
          }

          v51 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 544, &__p);
          v52 = *(v51 + 23) >= 0 ? v51 : *v51;
          v53 = strlen(v52);
          if ((AmberObjectSetAttribute(a2, 413, 6, v52, v53, v54, v55) & 0x80000000) != 0)
          {
            goto LABEL_94;
          }

          v56 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 608, &__p);
          v57 = *(v56 + 23) >= 0 ? v56 : *v56;
          v58 = strlen(v57);
          if ((AmberObjectSetAttribute(a2, 415, 6, v57, v58, v59, v60) & 0x80000000) != 0 || ((v61 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 672, &__p), *(v61 + 23) >= 0) ? (v62 = v61) : (v62 = *v61), (v63 = strlen(v62), (AmberObjectSetAttribute(a2, 416, 6, v62, v63, v64, v65) & 0x80000000) != 0) || ((v66 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 736, &__p), *(v66 + 23) >= 0) ? (v67 = v66) : (v67 = *v66), v68 = strlen(v67), (AmberObjectSetAttribute(a2, 417, 6, v67, v68, v69, v70) & 0x80000000) != 0)))
          {
LABEL_94:
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "updateContext", 0x7C, 0, "setting context attributes", v50);
            v15 = 0;
          }

          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_14;
        }

        v16 = "refreshS3CredentialsIfNeeded";
        v17 = 114;
LABEL_13:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "updateContext", v17, 0, v16, v10);
        v15 = 0;
        goto LABEL_14;
      }

      v37 = *v37;
    }

    else if (!*(a1 + 135))
    {
      goto LABEL_57;
    }

    v38 = strlen(v37);
    if ((AmberObjectSetAttribute(a2, 409, 6, v37, v38, v39, v40) & 0x80000000) != 0)
    {
      v16 = "setting context attributes";
      v17 = 102;
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_14:
  if (v15)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_2969DAA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::HTTPAuthenticator::refreshDAWTokenIfNeeded(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 288));
  v5 = amber::realTime(v4);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  __p = 0;
  v37 = 0;
  v38 = 0;
  if ((amber::BaseObject::getAttributeString(a2, 405, &v39) & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v7 = HIBYTE(v41);
  if (v41 < 0)
  {
    v7 = v40;
  }

  if (!v7)
  {
LABEL_12:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshDAWTokenIfNeeded", 0x92, 0, "context has no appid", v6);
LABEL_14:
    v16 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  if ((amber::BaseObject::getAttributeString(a2, 406, &__p) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v9 = HIBYTE(v38);
  if (v38 < 0)
  {
    v9 = v37;
  }

  if (!v9)
  {
LABEL_13:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshDAWTokenIfNeeded", 0x94, 0, "context has no realm", v8);
    goto LABEL_14;
  }

  if (!amber::HTTPAuthenticatorValue<std::string>::empty(a1 + 352, &v39) && ((*(amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 352, &v39) + 32) & 1) != 0 || *(amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 352, &v39) + 24) + 3600.0 >= v5))
  {
    v16 = 0;
    goto LABEL_15;
  }

  amber::HTTPContext::HTTPContext(v42, 0, 0, 1, 0);
  v14 = *(a1 + 39);
  if (v14 < 0)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
  }

  else
  {
    v15 = (a1 + 16);
  }

  v33 = v15;
  v34 = v14;
  amber::BaseObject::setAttributeString(v42, 401, &v33, v10, v11, v12, v13);
  v23 = (a1 + 40);
  v24 = *(a1 + 63);
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 63))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    v23 = *v23;
LABEL_29:
    v33 = v23;
    v34 = v24;
    amber::BaseObject::setAttributeString(v42, 402, &v33, v19, v20, v21, v22);
  }

LABEL_30:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (v38 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v41 >= 0)
  {
    v26 = &v39;
  }

  else
  {
    v26 = v39;
  }

  if (*(a1 + 111) < 0)
  {
    if (*(a1 + 96))
    {
      v27 = *(a1 + 88);
    }

    else
    {
      v27 = 0;
    }
  }

  else if (*(a1 + 111))
  {
    v27 = a1 + 88;
  }

  else
  {
    v27 = 0;
  }

  if (*(a1 + 87) < 0)
  {
    if (*(a1 + 72))
    {
      v28 = *(a1 + 64);
    }

    else
    {
      v28 = 0;
    }
  }

  else if (*(a1 + 87))
  {
    v28 = a1 + 64;
  }

  else
  {
    v28 = 0;
  }

  DAWToken = amber::getDAWToken(p_p, v26, v27, v28, &v33, *(a1 + 8), v22);
  if (DAWToken < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshDAWTokenIfNeeded", 0xA7, 0, "requesting DAW token", v29);
  }

  else
  {
    if (v35 >= 0)
    {
      v31 = &v33;
    }

    else
    {
      v31 = v33;
    }

    std::string::basic_string[abi:ne200100]<0>(&v32, v31);
    amber::HTTPAuthenticatorValue<std::string>::setValue(a1 + 352, &v39, &v32, 0);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  amber::HTTPContext::~HTTPContext(v42);
  v16 = (DAWToken >> 31);
LABEL_15:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  std::mutex::unlock((a1 + 288));
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_2969DADF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  amber::HTTPContext::~HTTPContext(&a33);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::mutex::unlock((v33 + 288));
  _Unwind_Resume(a1);
}

uint64_t amber::HTTPAuthenticator::refreshWestgateTokenIfNeeded(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 160));
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v5 = amber::realTime(v4);
  if ((amber::BaseObject::getAttributeString(a2, 403, &v54) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  v7 = HIBYTE(v56);
  if (v56 < 0)
  {
    v7 = v55;
  }

  if (!v7)
  {
LABEL_9:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshWestgateTokenIfNeeded", 0xBD, 0, "context has no host", v6);
    LODWORD(v9) = 0;
    goto LABEL_42;
  }

  if (!amber::HTTPAuthenticatorValue<std::string>::empty(a1 + 224, &v54) && ((*(amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 224, &v54) + 32) & 1) != 0 || *(amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 224, &v54) + 24) + 3600.0 >= v5))
  {
LABEL_41:
    LODWORD(v9) = 1;
LABEL_42:
    if (v9)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }

    goto LABEL_45;
  }

  if (SHIBYTE(v56) < 0)
  {
    if (v55 != 9)
    {
      goto LABEL_19;
    }

    v8 = v54;
  }

  else
  {
    if (SHIBYTE(v56) != 9)
    {
      goto LABEL_19;
    }

    v8 = &v54;
  }

  v10 = *v8;
  v11 = v8[8];
  if (v10 == 0x736F686C61636F6CLL && v11 == 116)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "WGTKN1TESTTOKEN");
    amber::HTTPAuthenticatorValue<std::string>::setValue(a1 + 224, &v54, &__str, 0);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_41;
  }

LABEL_19:
  v51 = 0;
  v52 = 0;
  v53 = 0;
  __p = 0;
  v49 = 0;
  v50 = 0;
  if ((amber::BaseObject::getAttributeString(a2, 405, &v51) & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v14 = HIBYTE(v53);
  if (v53 < 0)
  {
    v14 = v52;
  }

  if (!v14)
  {
LABEL_30:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshWestgateTokenIfNeeded", 0xCE, 0, "context has no appid", v13);
    goto LABEL_32;
  }

  if ((amber::BaseObject::getAttributeString(a2, 406, &__p) & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v16 = HIBYTE(v50);
  if (v50 < 0)
  {
    v16 = v49;
  }

  if (!v16)
  {
LABEL_31:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshWestgateTokenIfNeeded", 0xD0, 0, "context has no realm", v15);
    goto LABEL_32;
  }

  if ((amber::HTTPAuthenticator::refreshDAWTokenIfNeeded(a1, a2) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshWestgateTokenIfNeeded", 0xD3, 0, "refreshDAWTokenIfNeeded", v17);
    goto LABEL_32;
  }

  if (amber::HTTPAuthenticatorValue<std::string>::empty(a1 + 352, &v51))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshWestgateTokenIfNeeded", 0xD4, 0, "no DAW token for host", v18);
LABEL_32:
    v9 = 0;
    v19 = 4;
    goto LABEL_33;
  }

  amber::HTTPContext::HTTPContext(&__str, 0, 0, 1, 0);
  v26 = *(a1 + 39);
  if (v26 < 0)
  {
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
  }

  else
  {
    v27 = (a1 + 16);
  }

  v45 = v27;
  v46 = v26;
  amber::BaseObject::setAttributeString(&__str, 401, &v45, v22, v23, v24, v25);
  v32 = (a1 + 40);
  v33 = *(a1 + 63);
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 63))
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v33 = *(a1 + 48);
  if (v33)
  {
    v32 = *v32;
LABEL_57:
    v45 = v32;
    v46 = v33;
    amber::BaseObject::setAttributeString(&__str, 402, &v45, v28, v29, v30, v31);
  }

LABEL_58:
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v34 = SHIBYTE(v56);
  v35 = v54;
  v36 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 352, &v51);
  if (v34 >= 0)
  {
    v40 = &v54;
  }

  else
  {
    v40 = v35;
  }

  if (*(v36 + 23) >= 0)
  {
    v41 = v36;
  }

  else
  {
    v41 = *v36;
  }

  if ((amber::getWestgateToken(&__str, v40, v41, &v45, v37, v38, v39) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshWestgateTokenIfNeeded", 0xE2, 0, "requesting Westgate token", v42);
    v9 = 0;
    v19 = 4;
  }

  else
  {
    if (v47 >= 0)
    {
      v43 = &v45;
    }

    else
    {
      v43 = v45;
    }

    std::string::basic_string[abi:ne200100]<0>(&v44, v43);
    amber::HTTPAuthenticatorValue<std::string>::setValue(a1 + 224, &v54, &v44, 0);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    v19 = 0;
    v9 = 1;
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }

  amber::HTTPContext::~HTTPContext(&__str);
LABEL_33:
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
  }

  if ((v19 | 4) == 4)
  {
    goto LABEL_42;
  }

LABEL_45:
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v54);
  }

  std::mutex::unlock((a1 + 160));
  v20 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2969DB31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  amber::HTTPContext::~HTTPContext(&a40);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  std::mutex::unlock((v45 + 160));
  _Unwind_Resume(a1);
}

uint64_t amber::HTTPAuthenticator::refreshS3CredentialsIfNeeded(uint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 416));
  v5 = amber::realTime(v4);
  v86 = 0;
  v87 = 0;
  v88 = 0;
  if ((amber::BaseObject::getAttributeString(a2, 412, &v86) & 0x80000000) != 0)
  {
    if (SHIBYTE(v88) < 0)
    {
      *v86 = 0;
      v87 = 0;
    }

    else
    {
      LOBYTE(v86) = 0;
      HIBYTE(v88) = 0;
    }
  }

  if (!amber::HTTPAuthenticatorValue<std::string>::empty(a1 + 672, &v86) && ((*(amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 672, &v86) + 32) & 1) != 0 || *(amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 672, &v86) + 24) + 3600.0 >= v5))
  {
    v15 = 1;
LABEL_59:
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0xFFFFFFFFLL;
    }

    goto LABEL_62;
  }

  v84 = 0u;
  memset(&v85, 0, sizeof(v85));
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  amber::S3Configuration::S3Configuration(v75);
  v74[0] = 0;
  v74[1] = 0;
  v73 = v74;
  memset(&v72, 0, sizeof(v72));
  memset(&v71, 0, sizeof(v71));
  memset(&v70, 0, sizeof(v70));
  memset(&v69, 0, sizeof(v69));
  if ((amber::S3Configuration::load(v75) & 0x80000000) != 0 || (v88 >= 0 ? (v7 = &v86) : (v7 = v86), (amber::S3Configuration::resolveProfile(v75, v7, &v73) & 0x80000000) != 0))
  {
    v16 = &v86;
    if (v88 < 0)
    {
      v16 = v86;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x105, 0, "resolve S3 configuration for profile: %s", v6, v16);
    goto LABEL_39;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "s3.endpoint_url");
  v8 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v74 == v8)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "endpoint_url");
    v8 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v74 == v8)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x108, 0, "no endpoint", v9);
      goto LABEL_39;
    }
  }

  std::string::operator=(&v79, (v8 + 56));
  std::string::basic_string[abi:ne200100]<0>(__p, "s3.region");
  v10 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v74 == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "region");
    v10 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v74 == v10)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x109, 0, "no region", v11);
      goto LABEL_39;
    }
  }

  std::string::operator=((&v80 + 8), (v10 + 56));
  std::string::basic_string[abi:ne200100]<0>(__p, "aws_access_key_id");
  v12 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v74 != v12)
  {
    std::string::operator=(&v82, (v12 + 56));
    std::string::basic_string[abi:ne200100]<0>(__p, "aws_secret_access_key");
    v13 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v74 != v13)
    {
      std::string::operator=((&v83 + 8), (v13 + 56));
      std::string::basic_string[abi:ne200100]<0>(__p, "aws_session_token");
      v14 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v74 != v14)
      {
        std::string::operator=(&v85, (v14 + 56));
      }

      goto LABEL_92;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "apple_cloud_role");
  v21 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v74 == v21)
  {
    goto LABEL_85;
  }

  std::string::operator=(&v70, (v21 + 56));
  std::string::basic_string[abi:ne200100]<0>(__p, "apple_cloud_account");
  v22 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v74 == v22)
  {
    goto LABEL_85;
  }

  std::string::operator=(&v69, (v22 + 56));
  std::string::basic_string[abi:ne200100]<0>(__p, "sts.endpoint_url");
  v23 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v74 == v23)
  {
LABEL_85:
    std::string::basic_string[abi:ne200100]<0>(__p, "credential_process");
    v31 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(&v73, &__p[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v74 == v31)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x145, 0, "Could not resolve S3 credentials", v30);
    }

    else
    {
      std::string::operator=(&v72, (v31 + 56));
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v72;
      }

      else
      {
        v32 = v72.__r_.__value_.__r.__words[0];
      }

      if ((amber::runS3CredentialProcess(v32, &v82, &v83 + 8, &v85) & 0x80000000) == 0)
      {
LABEL_92:
        v15 = 1;
        if ((SBYTE7(v80) & 0x80u) == 0)
        {
          v34 = &v79;
        }

        else
        {
          v34 = v79;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v34);
        amber::HTTPAuthenticatorValue<std::string>::setValue(a1 + 480, &v86, __p, 0);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (v81 >= 0)
        {
          v35 = &v80 + 8;
        }

        else
        {
          v35 = *(&v80 + 1);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v35);
        amber::HTTPAuthenticatorValue<std::string>::setValue(a1 + 544, &v86, __p, 0);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((SBYTE7(v83) & 0x80u) == 0)
        {
          v36 = &v82;
        }

        else
        {
          v36 = v82;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v36);
        amber::HTTPAuthenticatorValue<std::string>::setValue(a1 + 608, &v86, __p, 0);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (v84 >= 0)
        {
          v37 = &v83 + 8;
        }

        else
        {
          v37 = *(&v83 + 1);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v37);
        amber::HTTPAuthenticatorValue<std::string>::setValue(a1 + 672, &v86, __p, 0);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v85;
        }

        else
        {
          v38 = v85.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v38);
        amber::HTTPAuthenticatorValue<std::string>::setValue(a1 + 736, &v86, __p, 0);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v17 = 0;
        goto LABEL_40;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x13F, 0, "S3 credential process", v33);
    }

LABEL_39:
    v15 = 0;
    v17 = 4;
    goto LABEL_40;
  }

  std::string::operator=(&v71, (v23 + 56));
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  if ((amber::BaseObject::getAttributeString(a2, 405, &v66) & 0x80000000) != 0)
  {
    goto LABEL_122;
  }

  v25 = HIBYTE(v68);
  if (v68 < 0)
  {
    v25 = v67;
  }

  if (!v25)
  {
LABEL_122:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x11E, 0, "context has no appid", v24);
    goto LABEL_124;
  }

  if ((amber::BaseObject::getAttributeString(a2, 406, &v63) & 0x80000000) != 0)
  {
    goto LABEL_123;
  }

  v27 = HIBYTE(v65);
  if (v65 < 0)
  {
    v27 = v64;
  }

  if (!v27)
  {
LABEL_123:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x120, 0, "context has no realm", v26);
    goto LABEL_124;
  }

  if ((amber::HTTPAuthenticator::refreshDAWTokenIfNeeded(a1, a2) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x128, 0, "refreshDAWTokenIfNeeded", v28);
    goto LABEL_124;
  }

  if (!amber::HTTPAuthenticatorValue<std::string>::empty(a1 + 352, &v66))
  {
    amber::HTTPContext::HTTPContext(__p, 0, 0, 1, 0);
    v43 = *(a1 + 39);
    if (v43 < 0)
    {
      v44 = *(a1 + 16);
      v43 = *(a1 + 24);
    }

    else
    {
      v44 = (a1 + 16);
    }

    v60 = v44;
    v61 = v43;
    amber::BaseObject::setAttributeString(__p, 401, &v60, v39, v40, v41, v42);
    v49 = (a1 + 40);
    v50 = *(a1 + 63);
    if (v50 < 0)
    {
      v50 = *(a1 + 48);
      if (!v50)
      {
LABEL_140:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v51 = amber::HTTPAuthenticatorValue<std::string>::vref(a1 + 352, &v66);
        if (*(v51 + 23) >= 0)
        {
          v52 = v51;
        }

        else
        {
          v52 = *v51;
        }

        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v69;
        }

        else
        {
          v53 = v69.__r_.__value_.__r.__words[0];
        }

        if ((amber::getIAMToken(__p, &kIAMServiceEndpoint, v52, v53) & 0x80000000) == 0)
        {
          if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = &v71;
          }

          else
          {
            v55 = v71.__r_.__value_.__r.__words[0];
          }

          if (v62 >= 0)
          {
            v56 = &v60;
          }

          else
          {
            v56 = v60;
          }

          if (v81 >= 0)
          {
            v57 = &v80 + 8;
          }

          else
          {
            v57 = *(&v80 + 1);
          }

          if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = &v69;
          }

          else
          {
            v58 = v69.__r_.__value_.__r.__words[0];
          }

          if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = &v70;
          }

          else
          {
            v59 = v70.__r_.__value_.__r.__words[0];
          }

          amber::getSTSCredentials(__p, v55, v56, v57, v58, v59);
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x133, 0, "obtaining S3 credentials", v54);
        v15 = 0;
        v17 = 4;
        if (SHIBYTE(v62) < 0)
        {
          operator delete(v60);
        }

        amber::HTTPContext::~HTTPContext(__p);
        goto LABEL_125;
      }

      v49 = *v49;
    }

    else if (!*(a1 + 63))
    {
      goto LABEL_140;
    }

    v60 = v49;
    v61 = v50;
    amber::BaseObject::setAttributeString(__p, 402, &v60, v45, v46, v47, v48);
    goto LABEL_140;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "refreshS3CredentialsIfNeeded", 0x129, 0, "no DAW token for host", v29);
LABEL_124:
  v15 = 0;
  v17 = 4;
LABEL_125:
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v66);
  }

LABEL_40:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v73, v74[0]);
  v18 = v75;
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v78, v78[1]);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v77, v77[1]);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v75, v76);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84) < 0)
  {
    operator delete(*(&v83 + 1));
  }

  if (SBYTE7(v83) < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(*(&v80 + 1));
  }

  if (SBYTE7(v80) < 0)
  {
    operator delete(v79);
  }

  if ((v17 | 4) == 4)
  {
    goto LABEL_59;
  }

LABEL_62:
  if (SHIBYTE(v88) < 0)
  {
    operator delete(v86);
  }

  std::mutex::unlock((a1 + 416));
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

void sub_2969DBED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  amber::HTTPContext::~HTTPContext(&a74);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a52, a53);
  amber::S3Configuration::~S3Configuration(&a55);
  amber::HTTPContext::S3Credentials::~S3Credentials(&a64);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  std::mutex::unlock((v74 + 416));
  _Unwind_Resume(a1);
}

BOOL amber::HTTPAuthenticatorValue<std::string>::empty(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a1, a2);
  if (a1 + 8 != v3)
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v4 = v3 == std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a1, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2969DC0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void amber::HTTPAuthenticatorValue<std::string>::setValue(uint64_t a1, uint64_t a2, std::string *__str, char a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  v11 = 0;
  *__p = 0u;
  v10 = 0u;
  v7 = std::string::operator=(__p, __str);
  v11 = a4;
  *(&v10 + 1) = amber::realTime(v7);
  v13 = &v12;
  v8 = std::__tree<std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v12.__r_.__value_.__l.__data_);
  std::string::operator=((v8 + 56), __p);
  *(v8 + 80) = *(&v10 + 1);
  *(v8 + 88) = v11;
  if (SBYTE7(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_2969DC1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::getWestgateToken(uint64_t a1, const std::string::value_type *a2, const std::string::value_type *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v19[0] = &unk_2A1DDFD28;
  v19[2] = 0;
  v19[3] = 0;
  v19[1] = off_2A1DDFD48;
  v19[5] = 0;
  v19[6] = 0;
  v19[4] = &off_2A1DDFDA8;
  v19[7] = &off_2A1DDFC68;
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  v23 = 0;
  v18[0] = v18;
  v18[1] = v18;
  v18[2] = 0;
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  if (a2 && a3 && *a2 && *a3)
  {
    std::string::append(&v17, "https://");
    std::string::append(&v17, a2);
    std::string::append(&v17, "/westgate/token");
    std::string::append(&v16, "Authorization: Bearer ");
    std::string::append(&v16, a3);
    std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "getWestgateToken", 0x22C, 0, "host and DAW token required", a7);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  std::__list_imp<std::string>::clear(v18);
  amber::Buffer::~Buffer(v19, v9, v10, v11, v12, v13, v14);
  return 0xFFFFFFFFLL;
}

void sub_2969DC614(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  if (*(v1 - 177) < 0)
  {
    operator delete(*(v1 - 200));
  }

  std::__list_imp<std::string>::clear((v1 - 176));
  amber::Buffer::~Buffer((v1 - 152), v3, v4, v5, v6, v7, v8);
  _Unwind_Resume(a1);
}

uint64_t amber::getIAMToken(uint64_t a1, char *a2, const char *a3, const char *a4)
{
  v34[0] = v34;
  v34[1] = v34;
  v34[2] = 0;
  amber::HTTPHeadersAppendWithFormat(v34, "Iam-Http-User-Ds-Auth: %s", a3);
  amber::HTTPHeadersAppendWithFormat(v34, "Iam-Account-Id: %s", a4);
  v7 = std::string::basic_string[abi:ne200100]<0>(&v31, a2);
  if ((v33 & 0x8000000000000000) != 0)
  {
    if (!v32)
    {
      goto LABEL_9;
    }

    v9 = v31;
    if (*(v31 + v32 - 1) != 47)
    {
      goto LABEL_9;
    }

    v8 = --v32;
  }

  else
  {
    if (!v33 || *(&v31 + v33 - 1) != 47)
    {
      goto LABEL_9;
    }

    v8 = --v33;
    v9 = &v31;
  }

  *(v9 + v8) = 0;
LABEL_9:
  std::string::append(v7, "/api/v1/iam/security/token");
  v26[0] = &unk_2A1DDFD28;
  v26[2] = 0;
  v26[3] = 0;
  v26[1] = off_2A1DDFD48;
  v26[5] = 0;
  v26[6] = 0;
  v26[4] = &off_2A1DDFDA8;
  v26[7] = &off_2A1DDFC68;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;
  v30 = 0;
  v23[0] = v23;
  v23[1] = v23;
  v23[2] = 0;
  v24 = 0;
  v25 = -1;
  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  v22[1] = 0;
  v22[2] = 0;
  v22[0] = &off_2A1DDFC68;
  if ((amber::HTTPContext::httpPerformBase(a1, 1, v10, v34, v22, v26, v23, &amber::HTTPContext::FullRange, 1u) & 0x80000000) == 0)
  {
    amber::Buffer::constBuf(v26, v11, &v20);
    amber::ConstMemoryView::view(&v20, v28, *(&v28 + 1) - v28, v12, v21);
    amber::JSONInputStream::JSONInputStream(v22, v21);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "getIAMToken", 0x268, 0, "IAMAPIToken request failed", v11);
  std::__list_imp<std::string>::clear(v23);
  amber::Buffer::~Buffer(v26, v13, v14, v15, v16, v17, v18);
  if (v33 < 0)
  {
    operator delete(v31);
  }

  std::__list_imp<std::string>::clear(v34);
  return 0xFFFFFFFFLL;
}

void sub_2969DCA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  amber::JSONInputStream::~JSONInputStream(va);
  std::__list_imp<std::string>::clear((v15 - 232));
  amber::Buffer::~Buffer((v15 - 200), v17, v18, v19, v20, v21, v22);
  if (*(v15 - 73) < 0)
  {
    operator delete(*(v15 - 96));
  }

  std::__list_imp<std::string>::clear((v15 - 72));
  _Unwind_Resume(a1);
}

void amber::getSTSCredentials(uint64_t a1, char *a2, const char *a3, const std::string::value_type *a4, const std::string::value_type *a5, const std::string::value_type *a6)
{
  v50 = *MEMORY[0x29EDCA608];
  memset(&v48, 0, sizeof(v48));
  memset(&v47, 0, sizeof(v47));
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  memset(&v45, 0, sizeof(v45));
  v10 = std::string::append(&v48, "aprn:apple:apple-cloud:");
  v11 = std::string::append(v10, a4);
  v12 = std::string::append(v11, ":");
  v13 = std::string::append(v12, a5);
  v14 = std::string::append(v13, ":object-store.data-role:");
  std::string::append(v14, a6);
  v15 = std::string::append(&v47, "awstieredobjstore-");
  std::string::append(v15, a6);
  std::string::append(&v45, "Action=AssumeRoleWithWebIdentity");
  std::string::append(&v45, "&DurationSeconds=3600");
  std::string::append(&v45, "&WebIdentityToken=");
  v16 = strlen(a3);
  v17 = MEMORY[0x29EDCA600];
  if (v16)
  {
    v18 = v16;
    do
    {
      v19 = *a3;
      if ((v19 & 0x80000000) != 0)
      {
        v20 = __maskrune(*a3, 0x500uLL);
      }

      else
      {
        v20 = *(v17 + 4 * v19 + 60) & 0x500;
      }

      if (v20 || v19 - 45 < 2 || v19 == 126 || v19 == 95)
      {
        std::string::push_back(&v45, v19);
      }

      else
      {
        snprintf(__str, 8uLL, "%%%02X", v19);
        std::string::append(&v45, __str);
      }

      ++a3;
      --v18;
    }

    while (v18);
  }

  std::string::append(&v45, "&RoleArn=");
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v48;
  }

  else
  {
    v21 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v48.__r_.__value_.__l.__size_;
  }

  for (; size; --size)
  {
    v23 = v21->__r_.__value_.__s.__data_[0];
    if ((v23 & 0x80000000) != 0)
    {
      v24 = __maskrune(v21->__r_.__value_.__s.__data_[0], 0x500uLL);
    }

    else
    {
      v24 = *(v17 + 4 * v23 + 60) & 0x500;
    }

    if (v24 || v23 - 45 < 2 || v23 == 126 || v23 == 95)
    {
      std::string::push_back(&v45, v23);
    }

    else
    {
      snprintf(__str, 8uLL, "%%%02X", v23);
      std::string::append(&v45, __str);
    }

    v21 = (v21 + 1);
  }

  std::string::append(&v45, "&RoleSessionName=");
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v47;
  }

  else
  {
    v25 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v47.__r_.__value_.__l.__size_;
  }

  for (; v26; --v26)
  {
    v27 = v25->__r_.__value_.__s.__data_[0];
    if ((v27 & 0x80000000) != 0)
    {
      v28 = __maskrune(v25->__r_.__value_.__s.__data_[0], 0x500uLL);
    }

    else
    {
      v28 = *(v17 + 4 * v27 + 60) & 0x500;
    }

    if (v28 || v27 - 45 < 2 || v27 == 126 || v27 == 95)
    {
      std::string::push_back(&v45, v27);
    }

    else
    {
      snprintf(__str, 8uLL, "%%%02X", v27);
      std::string::append(&v45, __str);
    }

    v25 = (v25 + 1);
  }

  std::string::append(&v45, "&ProviderId=cloud");
  std::string::append(&v45, "&Version=2011-06-15");
  v33 = &unk_2A1DDFD28;
  v35 = 0;
  v36 = 0;
  v34 = off_2A1DDFD48;
  v38 = 0;
  v39 = 0;
  v37 = &off_2A1DDFDA8;
  v40 = &off_2A1DDFC68;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  v44 = 0;
  v30[0] = v30;
  v30[1] = v30;
  v30[2] = 0;
  v31 = 0;
  v32 = -1;
  v29[0] = v29;
  v29[1] = v29;
  v29[2] = 0;
  amber::HTTPHeadersAppend(v29, "Content-Type: application/x-www-form-urlencoded");
}

void sub_2969DD4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  std::__list_imp<std::string>::clear(&a22);
  std::__list_imp<std::string>::clear(&a25);
  amber::Buffer::~Buffer(&a29, v66, v67, v68, v69, v70, v71);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::runS3CredentialProcess(amber *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v16 = &unk_2A1DDFD28;
  v18 = 0;
  v19 = 0;
  v17 = off_2A1DDFD48;
  v21 = 0;
  v22 = 0;
  v20 = &off_2A1DDFDA8;
  v23 = &off_2A1DDFC68;
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  v27 = 0;
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  if (*(a4 + 23) < 0)
  {
    **a4 = 0;
    *(a4 + 8) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 23) = 0;
  }

  if ((amber::captureCommandOutput(a1, v16, 1) & 0x80000000) == 0)
  {
    amber::Buffer::constBuf(v16, v4, &v13);
    amber::ConstMemoryView::view(&v13, v25, *(&v25 + 1) - v25, v5, v14);
    amber::JSONInputStream::JSONInputStream(v15, v14);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "runS3CredentialProcess", 0x2E2, 0, "running credential_process", v4);
  amber::Buffer::~Buffer(v16, v6, v7, v8, v9, v10, v11);
  return 0xFFFFFFFFLL;
}

void sub_2969DD8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  amber::JSONInputStream::~JSONInputStream(va);
  amber::Buffer::~Buffer((v13 - 184), v15, v16, v17, v18, v19, v20);
  _Unwind_Resume(a1);
}

uint64_t amber::HTTPAuthenticator::getAttribute(amber::HTTPAuthenticator *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "getAttribute", 0x15F, 0, "invalid attribute encoding %u, %u", v12, a2, a3);
    return 0xFFFFFFFFLL;
  }

  __p = 0;
  v24 = 0;
  v25 = 0;
  if (a2 > 806)
  {
    if (a2 > 809)
    {
      switch(a2)
      {
        case 0x32A:
          v15 = 608;
          break;
        case 0x32B:
          v15 = 672;
          break;
        case 0x32C:
          v15 = 736;
          break;
        default:
          goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 807)
      {
        v13 = 136;
        goto LABEL_25;
      }

      if (a2 == 808)
      {
        v15 = 480;
      }

      else
      {
        v15 = 544;
      }
    }

LABEL_38:
    amber::HTTPAuthenticatorValue<std::string>::serialize((this + v15), &__p);
    goto LABEL_39;
  }

  if (a2 > 803)
  {
    if (a2 == 804)
    {
      v15 = 352;
    }

    else
    {
      if (a2 != 805)
      {
        v13 = 112;
        goto LABEL_25;
      }

      v15 = 224;
    }

    goto LABEL_38;
  }

  switch(a2)
  {
    case 0x321:
      v13 = 16;
      goto LABEL_25;
    case 0x322:
      v13 = 40;
LABEL_25:
      p_p = (this + v13);
      v17 = *(this + v13 + 23);
      if ((v17 & 0x8000000000000000) != 0)
      {
        v17 = p_p[1];
        if (!v17)
        {
LABEL_49:
          v14 = 0xFFFFFFFFLL;
          goto LABEL_52;
        }

        p_p = *p_p;
      }

      else if (!*(this + v13 + 23))
      {
        goto LABEL_49;
      }

      v26 = &off_2A1DDFC68;
      v27 = p_p;
      v28 = v17;
      if ((v17 & 0x8000000000000000) != 0 || !p_p)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v12);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid args");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      *a5 = v17;
      v18 = *(a4 + 2);
      if (v18)
      {
        if (v18 < v17)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v12, v17, v18);
          goto LABEL_49;
        }

        goto LABEL_50;
      }

      goto LABEL_51;
    case 0x323:
      v13 = 88;
      goto LABEL_25;
  }

LABEL_39:
  v17 = SHIBYTE(v25);
  if ((SHIBYTE(v25) & 0x8000000000000000) != 0)
  {
    v17 = v24;
    if (!v24)
    {
      goto LABEL_49;
    }

    p_p = __p;
  }

  else
  {
    if (!HIBYTE(v25))
    {
      goto LABEL_49;
    }

    p_p = &__p;
  }

  v26 = &off_2A1DDFC68;
  v27 = p_p;
  v28 = v17;
  if ((v17 & 0x8000000000000000) != 0 || !p_p)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v12);
    v21 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v21, "memory invalid args");
    __cxa_throw(v21, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *a5 = v17;
  v19 = *(a4 + 2);
  if (v19)
  {
    if (v19 < v17)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v12, v17, v19);
      goto LABEL_49;
    }

LABEL_50:
    memcpy(*(a4 + 1), p_p, v17);
  }

LABEL_51:
  v14 = 0;
LABEL_52:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_2969DDC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void amber::HTTPAuthenticatorValue<std::string>::serialize(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v3 = (a1 + 1);
  v4 = *a1;
  if (*a1 != a1 + 1)
  {
    v5 = 1;
    do
    {
      std::pair<std::string const,amber::HTTPAuthenticatorValue<std::string>::Value>::pair[abi:ne200100](&v13, v4 + 2);
      if ((v5 & 1) == 0)
      {
        std::string::append(a2, ";");
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v13.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v13;
        }

        else
        {
          v7 = v13.__r_.__value_.__r.__words[0];
        }

        std::string::append(a2, v7, size);
        std::string::append(a2, ":");
      }

      if ((v15 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v15 & 0x80u) == 0)
      {
        v9 = v15;
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(a2, v8, v9);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      v10 = *(v4 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v5 = 0;
      v4 = v11;
    }

    while (v11 != v3);
  }
}

uint64_t amber::HTTPAuthenticator::setAttribute(amber::HTTPAuthenticator *this, amber::BaseObject *a2, uint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticator.cpp", "setAttribute", 0x183, 0, "invalid attribute encoding %u, %u", v11, a2, a3);
    return 0xFFFFFFFFLL;
  }

  v12 = 0xFFFFFFFFLL;
  if (a2 > 806)
  {
    if (a2 > 809)
    {
      switch(a2)
      {
        case 0x32A:
          v14 = 608;
          break;
        case 0x32B:
          v14 = 672;
          break;
        case 0x32C:
          v14 = 736;
          break;
        default:
          return v12;
      }
    }

    else
    {
      if (a2 == 807)
      {
        v13 = 136;
LABEL_25:
        v15 = this + v13;
        if (*(a4 + 2))
        {
          MEMORY[0x29C25BF10](v15, *(a4 + 1));
          return 0;
        }

        else
        {
          v12 = 0;
          if (v15[23] < 0)
          {
            **v15 = 0;
            *(v15 + 1) = 0;
          }

          else
          {
            *v15 = 0;
            v15[23] = 0;
          }
        }

        return v12;
      }

      if (a2 == 808)
      {
        v14 = 480;
      }

      else
      {
        v14 = 544;
      }
    }
  }

  else
  {
    if (a2 <= 803)
    {
      switch(a2)
      {
        case 0x321:
          v13 = 16;
          break;
        case 0x322:
          v13 = 40;
          break;
        case 0x323:
          v13 = 88;
          break;
        default:
          return v12;
      }

      goto LABEL_25;
    }

    if (a2 == 804)
    {
      v14 = 352;
    }

    else
    {
      if (a2 != 805)
      {
        v13 = 112;
        goto LABEL_25;
      }

      v14 = 224;
    }
  }

  v16 = *(a4 + 2);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = *(a4 + 1);
  if (v16 >= 0x17)
  {
    operator new();
  }

  v21 = v16;
  if (v16)
  {
    memmove(&__dst, v17, v16);
  }

  *(&__dst + v16) = 0;
  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v12 = (amber::HTTPAuthenticatorValue<std::string>::parseFromString(this + v14, p_dst, 1) >> 31);
  if (v21 < 0)
  {
    operator delete(__dst);
  }

  return v12;
}

void sub_2969DE078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2969DE0DC(void *a1)
{
  MEMORY[0x29C25C000](v1, 0x10B3C4058937A67);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969DE0CCLL);
}

uint64_t AmberHTTPAuthenticatorDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::pair<std::string const,amber::HTTPAuthenticatorValue<std::string>::Value>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void amber::S3Configuration::~S3Configuration(amber::S3Configuration *this)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 48, *(this + 7));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 24, *(this + 4));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this, *(this + 1));
}

uint64_t amber::HTTPAuthenticatorValue<std::string>::vref(uint64_t a1, const void **a2)
{
  v2 = a1;
  v3 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(a1, a2);
  v4 = v3;
  if (v2 + 8 == v3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    v5 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(v2, __p);
    if (v4 != v5)
    {
      v2 = v5 + 32;
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v2 = v3 + 32;
  }

  return v2 + 24;
}

void sub_2969DE248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::HTTPAuthenticatorValue<std::string>::Value>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

std::string *std::pair<std::string const,amber::HTTPAuthenticatorValue<std::string>::Value>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 6);
  this[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
  this[2].__r_.__value_.__r.__words[0] = v6;
  return this;
}

void sub_2969DE440(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void amber::DirectoryCacheObjectStoreBlockDevice::~DirectoryCacheObjectStoreBlockDevice(amber::DirectoryCacheObjectStoreBlockDevice *this)
{
  *this = &unk_2A1DE3398;
  amber::SyncBlockDevice::terminateThreads(this);
  v8 = *(this + 62);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::DirectoryCacheObjectStoreBlockDevice::~DirectoryCacheObjectStoreBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DirectoryCacheObjectStoreBlockDevice::getAttribute(amber::DirectoryCacheObjectStoreBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryCacheObjectStoreBlockDevice.cpp", "getAttribute", 0x96, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 == 202)
  {
    v14 = *(this + 126);
    *a5 = 4;
    v15 = *(a4 + 2);
    if (!v15)
    {
      return 0;
    }

    if (v15 > 3)
    {
      result = 0;
      **(a4 + 1) = v14;
      return result;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, 4, v15);
    return 0xFFFFFFFFLL;
  }

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::DirectoryCacheObjectStoreBlockDevice::executeRead(amber::DirectoryCacheObjectStoreBlockDevice *this, unsigned int a2, void **a3)
{
  v38[75] = *MEMORY[0x29EDCA608];
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v35, 0);
  if (!*(a3 + 30) || ((v8 = *(a3 + 170), *(a3 + 100)) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryCacheObjectStoreBlockDevice.cpp", "executeRead", 0xB1, 0, "request has no storage attributes", v7);
    v14 = -2147483626;
LABEL_8:
    amber::BlockDeviceRequest::sendReply(a3, v14, 0, v10, v11, v12, v13);
    v15 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  amber::ProxyBuffer::ProxyBuffer(&v34, *(a3 + 170), a3[8], 0, v5, v6, v7);
  amber::BlockDeviceEvent::BlockDeviceEvent(v33, 21, a3);
  amber::BlockDeviceEvent::sendBegin(v33);
  v21 = amber::DirectoryObjectStore::load(*(this + 62), (a3 + 11), &v34, 0, v18, v19, v20);
  amber::BlockDeviceEvent::sendEnd(v33);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v33);
  amber::Buffer::~Buffer(&v34, v22, v23, v24, v25, v26, v27);
  if (v21 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryCacheObjectStoreBlockDevice.cpp", "executeRead", 0xBB, 0, "loading object", v31);
    v14 = -2147483643;
    goto LABEL_8;
  }

  if (!v21)
  {
    atomic_fetch_add_explicit(this + 65, v8, memory_order_relaxed);
    operator new();
  }

  atomic_fetch_add_explicit(this + 64, v8, memory_order_relaxed);
  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v28, v29, v30, v31) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryCacheObjectStoreBlockDevice.cpp", "executeRead", 0xE7, 0, "reply data", v32);
  }

  v15 = 0;
LABEL_9:
  amber::ObjectStorePath::~ObjectStorePath(v38);
  std::condition_variable::~condition_variable(&v37);
  std::mutex::~mutex(&v36);
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_2969DEDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  amber::BlockDeviceEvent::~BlockDeviceEvent(&a12);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(&a27);
  _Unwind_Resume(a1);
}

uint64_t amber::DirectoryCacheObjectStoreBlockDevice::executeWrite(amber::DirectoryCacheObjectStoreBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v5 = amber::BlockDeviceEvent::BlockDeviceEvent(v21, 22, a3);
  if (*(this + 504))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryCacheObjectStoreBlockDevice.cpp", "executeWrite", 0xFA, 0, "WRITE on read-only device", v6);
    v14 = -2147483647;
LABEL_9:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  if (!*(a3 + 30) || !*(a3 + 100) || !*(a3 + 170))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryCacheObjectStoreBlockDevice.cpp", "executeWrite", 0xFC, 0, "request has no storage attributes", v6);
    v14 = -2147483626;
    goto LABEL_9;
  }

  amber::BlockDeviceEvent::sendBegin(v5);
  v7 = *(this + 62);
  v8 = *(a3 + 8);
  if (v8)
  {
    v9 = *(a3 + 14);
  }

  else
  {
    v9 = 0;
  }

  v18 = *(a3 + 8);
  v19 = v9;
  v20[0] = &off_2A1DDFC68;
  v20[1] = v8;
  v20[2] = v9;
  if ((amber::DirectoryObjectStore::store(v7, (a3 + 88), v20, 0) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryCacheObjectStoreBlockDevice.cpp", "executeWrite", 0xFE, 0, "storing object (write)", v17, &off_2A1DDFDA8, v18, v19);
    v15 = 0xFFFFFFFFLL;
    v14 = -2147483643;
  }

  else
  {
    amber::BlockDeviceEvent::sendEnd(v21);
    v15 = 0;
    v14 = 1;
  }

LABEL_10:
  amber::BlockDeviceRequest::sendReply(a3, v14, 0, v10, v11, v12, v13);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v21);
  return v15;
}

uint64_t amber::DirectoryCacheObjectStoreBlockDevice::executeSnapshot(amber::DirectoryObjectStore **this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v20[75] = *MEMORY[0x29EDCA608];
  if (!*(a3 + 180) || !*(a3 + 250) || !*(a3 + 320))
  {
    v15 = -2147483643;
    v16 = "request doesn't have a container snapshot";
    v17 = 298;
LABEL_11:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryCacheObjectStoreBlockDevice.cpp", "executeSnapshot", v17, 0, v16, a7);
    v14 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  if ((amber::DirectoryObjectStore::storeSnapshot(this[62], (a3 + 688)) & 0x80000000) != 0)
  {
    v15 = -2147483643;
    v16 = "storing snapshot";
    v17 = 303;
    goto LABEL_11;
  }

  if ((amber::BaseObject::getAttributeUInt32(this[60], 202) & 1) == 0 && (amber::DirectoryObjectStore::writeModifiedObjects(this[62], this[60]) & 0x80000000) != 0)
  {
    v15 = -2147483643;
    v16 = "writing modified objects";
    v17 = 308;
    goto LABEL_11;
  }

  if ((amber::BaseObject::getAttributeUInt32(this[60], 202) & 0x10000) != 0)
  {
    amber::ObjectStorePath::ObjectStorePath(v20, (a3 + 688), v9, v10, v11, v12, v13);
    amber::BlockDevice::snapshot(this[60], v20);
  }

  v14 = 0;
  v15 = 1;
LABEL_12:
  amber::BlockDeviceRequest::sendReply(a3, v15, 0, v10, v11, v12, v13);
  v18 = *MEMORY[0x29EDCA608];
  return v14;
}

unint64_t *amber::DirectoryCacheObjectStoreBlockDevice::updateStats(unint64_t *this, unint64_t a2, unint64_t *a3)
{
  if (a2 >= 0xD)
  {
    v3 = this[62];
    a3[12] = *(v3 + 232);
    if (a2 >= 0x14)
    {
      a3[19] = *(v3 + 240);
      a3[15] = this[64];
LABEL_4:
      a3[17] = this[65];
      return amber::BlockDevice::updateStats(this, a2, a3);
    }

    if (a2 >= 0x10)
    {
      a3[15] = this[64];
      if (a2 >= 0x12)
      {
        goto LABEL_4;
      }
    }
  }

  return amber::BlockDevice::updateStats(this, a2, a3);
}

void sub_2969DF45C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969DF444);
}

void amber::RandomBlockDevice::~RandomBlockDevice(amber::RandomBlockDevice *this)
{
  *this = &unk_2A1DE34A0;
  amber::SyncBlockDevice::terminateThreads(this);

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::RandomBlockDevice::~RandomBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::RandomBlockDevice::getAttribute(amber::RandomBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RandomBlockDevice.cpp", "getAttribute", 0x6E, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 203)
  {
    if (a2 == 204)
    {
      v14 = *(this + 122);
    }

    else
    {
      if (a2 != 205)
      {
        goto LABEL_14;
      }

      v16 = *(this + 122);
      do
      {
        v14 = v16;
        v16 *= 2;
      }

      while (v14 < 0x40000);
    }

LABEL_21:
    LODWORD(v20) = v14;
    v21 = &off_2A1DDFDA8;
    v22 = &v20;
    v23 = 4;
    v24 = &off_2A1DDFC68;
    v25 = &v20;
    v26 = 4;
    *a5 = 4;
    v18 = *(a4 + 2);
    if (v18)
    {
      if (v18 > 3)
      {
        result = 0;
        **(a4 + 1) = v14;
        return result;
      }

      v19 = 4;
LABEL_24:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, v19, v18);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  if (a2 == 201)
  {
    v17 = *(this + 60);
    v20 = v17;
    v21 = &off_2A1DDFDA8;
    v22 = &v20;
    v23 = 8;
    v24 = &off_2A1DDFC68;
    v25 = &v20;
    v26 = 8;
    *a5 = 8;
    v18 = *(a4 + 2);
    if (v18)
    {
      if (v18 > 7)
      {
        result = 0;
        **(a4 + 1) = v17;
        return result;
      }

      v19 = 8;
      goto LABEL_24;
    }

    return 0;
  }

  if (a2 == 202)
  {
    v14 = *(this + 117);
    goto LABEL_21;
  }

LABEL_14:

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::RandomBlockDevice::executeRead(amber::RandomBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v54 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 6);
  v8 = *(a3 + 14);
  v9 = v7 + v8;
  if (__CFADD__(v7, v8))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v10 = a3;
  v12 = *(a3 + 8);
  v13 = *(this + 122);
  v34[0] = &unk_2A1DDFDD8;
  v34[1] = &unk_2A1DDFE08;
  if (v9 <= v7)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  if (v9 <= v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = v7 + v8;
  }

  v35 = 0u;
  v36 = 0u;
  v16 = v14 & -v13;
  v17 = (v15 + v13 - 1) & -v13;
  v37 = 0u;
  v38 = 0u;
  if (v16 >= v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v14 & -v13;
  }

  if (v16 >= v17)
  {
    v17 = 0;
  }

  v39 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  v42 = 0uLL;
  v43 = 0uLL;
  v44 = 0uLL;
  v45 = 0uLL;
  v46 = 0uLL;
  v47 = 0uLL;
  v48 = 0uLL;
  v49 = 0uLL;
  v50 = 0uLL;
  v51 = 0;
  v52 = *(this + 59);
  v53 = 0;
  if ((v14 != v15 || v18 != v17) && (v14 != v18 || v15 != v17))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RandomBlockDevice.cpp", "executeRead", 0x91, 0, "invalid request range offset: %llu length: %u", a7, v7, v8);
    v29 = -2147483626;
LABEL_31:
    amber::BlockDeviceRequest::sendReply(v10, v29, 0, v25, v26, v27, v28);
    result = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  if (v14 < v15)
  {
    v19 = v14;
    while (1)
    {
      v53 = v19;
      v33[0] = &off_2A1DDFC68;
      v33[1] = &v52;
      v33[2] = 16;
      if ((amber::digest_MurMurHash64(v34, v33, a3, a4, a5, a6, a7) & 0x80000000) != 0)
      {
        break;
      }

      if (*(this + 122))
      {
        v20 = 0;
        v21 = *(&v35 + 4);
        do
        {
          v21 = 0x5851F42D4C957F2DLL * v21 + 0x14057B7EF767814FLL;
          *(v12 + v19 - v14 + v20) = v21;
          v20 += 8;
          v22 = *(this + 122);
        }

        while (v20 < v22);
      }

      else
      {
        v22 = 0;
      }

      v19 += v22;
      if (v19 >= v15)
      {
        goto LABEL_26;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RandomBlockDevice.cpp", "executeRead", 0x98, 0, "hash failed", a7);
    v29 = -2147483643;
    v10 = a3;
    goto LABEL_31;
  }

LABEL_26:
  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/RandomBlockDevice.cpp", "executeRead", 0xA3, 0, "reply data", v23);
  }

  result = 0;
LABEL_32:
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2969DFD10(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969DFCF8);
}

uint64_t amber::AEAEncryptionStream::open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, const char *a7)
{
  if (a6)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAEncryptionStream.cpp", "open", 0xA0, 0, "AEAEncryptionStream: invalid thread count", a7);
  return 0;
}

void amber::AEAEncryptionStream::~AEAEncryptionStream(atomic_uint *this)
{
  if ((amber::AEAEncryptionStream::close(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAEncryptionStream.cpp", "~AEAEncryptionStream", 0xD2, 0, "close() reported failure in destructor", v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  v5 = *(this + 10);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  amber::SharedQueue<amber::AEASegmentEncryptionTask *>::~SharedQueue((this + 26));
  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }
}

{
  amber::AEAEncryptionStream::~AEAEncryptionStream(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::AEAEncryptionStream::close(atomic_uint *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v18[2] = 0;
  v18[3] = 0;
  v18[1] = off_2A1DDFD48;
  v18[5] = 0;
  v18[6] = 0;
  v18[4] = &off_2A1DDFDA8;
  v18[7] = &off_2A1DDFC68;
  v19 = 0u;
  v20 = 0u;
  v21 = 257;
  v22 = 0;
  v18[0] = off_2A1DDFC98;
  amber::ObjectStorePath::ObjectStorePath(v24);
  v7 = 0;
  atomic_compare_exchange_strong(this + 10, &v7, 1u);
  if (!v7)
  {
    v8 = *(this + 7);
    if (v8)
    {
      amber::ThreadPoolBase::release(*(this + 12) + 8, v8, v2, v3, v4, v5, v6);
      amber::SharedQueue<amber::AEASegmentEncryptionTask *>::insertLast((this + 26));
    }

    v9 = *(this + 12);
    if (v9)
    {
      amber::ThreadPoolBase::finish((v9 + 8));
    }

    v23 = 0;
    amber::SharedQueue<amber::AEASegmentEncryptionTask *>::insertLast((this + 26));
  }

  amber::ObjectStorePath::~ObjectStorePath(v24);
  amber::Buffer::~Buffer(v18, v10, v11, v12, v13, v14, v15);
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2969E07E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  amber::ObjectStorePath::~ObjectStorePath(&a29);
  amber::Buffer::~Buffer(&a13, v30, v31, v32, v33, v34, v35);
  _Unwind_Resume(a1);
}

void non-virtual thunk toamber::AEAEncryptionStream::~AEAEncryptionStream(atomic_uint *this)
{
  amber::AEAEncryptionStream::~AEAEncryptionStream(this - 2);
}

{
  amber::AEAEncryptionStream::~AEAEncryptionStream(this - 2);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::AEAEncryptionStream::write(amber::AEAEncryptionStream *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 10))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAEncryptionStream.cpp", "write", 0x128, 0, "write after close", a7);
    return -1;
  }

  *v42 = *(a2 + 8);
  v10 = v42[1];
  if (!v42[1])
  {
    v8 = 0;
LABEL_18:
    *(this + 4) += v8;
    return v8;
  }

  v8 = 0;
  while (1)
  {
    v11 = *(this + 7);
    if (v11)
    {
      goto LABEL_9;
    }

    v12 = amber::ThreadPool<amber::AEASegmentEncryptionTask>::acquire(*(this + 12), a2, a3, a4, a5, a6, a7);
    *(this + 7) = v12;
    if (!v12)
    {
      break;
    }

    v18 = v12;
    v19 = *(this + 8);
    *(this + 8) = v19 + 1;
    v12[29] = v19;
    *(v12 + 224) = 0;
    amber::Buffer::resize((v12 + 2), 0, v13, v14, v15, v16, v17);
    amber::Buffer::resize((v18 + 15), 0, v20, v21, v22, v23, v24);
    v10 = v42[1];
    v11 = *(this + 7);
LABEL_9:
    v25 = *(this + 12);
    v26 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v11 + 16, a2, a3, a4, a5, a6, a7);
    if (v25 - v26 < v10)
    {
      v10 = v25 - v26;
    }

    if (amber::AEASegmentEncryptionTask::write(*(this + 7), v42[0], v10, v27, v28, v29, v30) < 0)
    {
      v38 = "insert segment data";
      v39 = 312;
      goto LABEL_22;
    }

    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(*(this + 7) + 16, v31, v32, v33, v34, v35, v17) >= *(this + 12))
    {
      amber::ThreadPoolBase::release(*(this + 12) + 8, *(this + 7), a3, a4, a5, a6, a7);
      amber::SharedQueue<amber::AEASegmentEncryptionTask *>::insertLast(this + 104);
    }

    if (v42[1] < v10)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v36 = v42[0] + v10;
    v8 += v10;
    v10 = v42[1] - v10;
    v42[0] = v36;
    v42[1] = v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  v38 = "invalid task";
  v39 = 306;
LABEL_22:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAEncryptionStream.cpp", "write", v39, 0, v38, v17);
  v40 = 0;
  atomic_compare_exchange_strong(this + 11, &v40, 1u);
  return -1;
}

char **amber::ThreadPool<amber::AEASegmentEncryptionTask>::acquire(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  result = amber::ThreadPoolBase::acquire((a1 + 8), a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v8 = **result;
  }

  return result;
}

uint64_t amber::AEASegmentEncryptionTask::write(amber::AEASegmentEncryptionTask *this, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10[0] = &off_2A1DDFC68;
  v10[1] = a2;
  v10[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (amber::BufferProtocol<amber::Buffer>::append(this + 2, v10, a3, a4, a5, a6, a7) < 0)
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

uint64_t amber::AEAEncryptionStream::getAttribute(amber::AEAEncryptionStream *this, int a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5)
{
  if ((a2 - 100) <= 0x63 && (v5 = *(this + 2)) != 0)
  {
    return (*(*v5 + 16))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void amber::AEAEncryptionStream::run(amber::AEAEncryptionStream *this)
{
  v97 = *MEMORY[0x29EDCA608];
  v2 = off_2A1DDFD48;
  v3 = &off_2A1DDFDA8;
  v4 = &off_2A1DDFC68;
  v5 = off_2A1DDFC98;
  v49 = 1;
  do
  {
    v57 = -1;
    v56 = 0;
    v51[2] = 0;
    v51[3] = 0;
    v51[5] = 0;
    v51[6] = 0;
    v51[4] = v3;
    v51[7] = v4;
    v52 = 0u;
    v53 = 0u;
    v54 = 257;
    v55 = 0;
    v51[0] = v5;
    v51[1] = v2;
    v79[0] = &unk_2A1DDFDD8;
    v79[1] = &unk_2A1DDFE08;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0;
    v61[0] = &unk_2A1DDFDD8;
    v61[1] = &unk_2A1DDFE08;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
    v59[0] = 0;
    if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 104, v59) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAEncryptionStream.cpp", "run", 0x176, 0, "dequeue task", v11);
      v49 = 0;
LABEL_12:
      v46 = 0;
      goto LABEL_13;
    }

    if (!v59[0])
    {
      goto LABEL_12;
    }

    EncryptedData = amber::AEASegmentEncryptionTask::getEncryptedData(v59[0], &v57, &v56, v51, v79, v61);
    v13 = v5;
    v14 = v4;
    v15 = v3;
    v16 = v2;
    *v23.i64 = amber::ObjectStorePath::ObjectStorePath(v59);
    if (EncryptedData < 0)
    {
      goto LABEL_9;
    }

    v24 = this;
    v25 = *(this + 2);
    v26 = v57;
    v27 = v56;
    v28 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v51, v17, v18, v19, v20, v21, v22);
    v23 = amber::AEAContainer::encryptSegmentUpdate(v25, v26, v27, v28, v79, v61, v29);
    this = v24;
    if (v30 < 0)
    {
      goto LABEL_9;
    }

    this = v24;
    if (((*(**(v24 + 2) + 96))(*(v24 + 2), v57, v59, v23) & 0x80000000) != 0 || (v36 = v60, this = v24, amber::ConstMemoryViewConvertible<amber::Buffer>::size(v51, v31, v32, v33, v34, v35, v22) != v36) || (v37 = *(v24 + 3), amber::Buffer::constBuf(v51, v22, v58), amber::ConstMemoryView::view(v58, v53, *(&v53 + 1) - v53, v38, v50), v39 = (*(*v37 + 64))(v37, v50, v59[73]), this = v24, v39 != amber::ConstMemoryViewConvertible<amber::Buffer>::size(v51, v40, v41, v42, v43, v44, v45)))
    {
LABEL_9:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAEncryptionStream.cpp", "run", 0x186, 0, "segment update and write", v22, *v23.i64);
      v49 = 0;
    }

    amber::ObjectStorePath::~ObjectStorePath(v59);
    v46 = 1;
    v2 = v16;
    v3 = v15;
    v4 = v14;
    v5 = v13;
LABEL_13:
    amber::Buffer::~Buffer(v51, v6, v7, v8, v9, v10, v11);
  }

  while ((v46 & 1) != 0);
  v47 = v49;
  if (!v49)
  {
    atomic_compare_exchange_strong(this + 11, &v47, 1u);
  }

  v48 = *MEMORY[0x29EDCA608];
}

void sub_2969E10C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  amber::ObjectStorePath::~ObjectStorePath(&a36);
  amber::Buffer::~Buffer(&a18, v37, v38, v39, v40, v41, v42);
  _Unwind_Resume(a1);
}

uint64_t amber::AEASegmentEncryptionTask::getEncryptedData(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  amber::Sem::acquire((a1 + 800));
  v12 = *(a1 + 224);
  *a2 = *(a1 + 232);
  *a3 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a1 + 16, v13, v14, v15, v16, v17, v18);
  amber::Buffer::Buffer(&v48, (a1 + 120));
  v48.n128_u64[0] = off_2A1DDFC98;
  amber::Buffer::operator=(a1 + 120, a4, v19, v20, v21, v22, v23);
  amber::Buffer::operator=(a4, &v48, v24, v25, v26, v27, v28);
  amber::Buffer::~Buffer(&v48, v29, v30, v31, v32, v33, v34);
  v35 = *(a1 + 256);
  v48.n128_u64[0] = &off_2A1DDFC68;
  v48.n128_u64[1] = a1 + 260;
  v49 = v35;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a5 + 8, &v48, v36, v37, v38, v39, v40);
  v41 = *(a1 + 536);
  v48.n128_u64[0] = &off_2A1DDFC68;
  v48.n128_u64[1] = a1 + 540;
  v49 = v41;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a6 + 8, &v48, v42, v43, v44, v45, v46);
  amber::Sem::release((a1 + 920));
  return -v12;
}

void sub_2969E1238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

void amber::SharedQueue<amber::AEASegmentEncryptionTask *>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<amber::AEASegmentEncryptionTask *>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

double amber::AEASegmentEncryptionTask::AEASegmentEncryptionTask(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1DE36C8;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = off_2A1DDFD48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = &off_2A1DDFDA8;
  *(a1 + 72) = &off_2A1DDFC68;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 257;
  *(a1 + 114) = 0;
  *(a1 + 16) = off_2A1DDFC98;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = off_2A1DDFD48;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = &off_2A1DDFDA8;
  *(a1 + 176) = &off_2A1DDFC68;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 257;
  *(a1 + 218) = 0;
  *(a1 + 120) = off_2A1DDFC98;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2A1DDFDD8;
  *(a1 + 248) = &unk_2A1DDFE08;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 520) = &unk_2A1DDFDD8;
  *(a1 + 528) = &unk_2A1DDFE08;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 800) = xmmword_296A14210;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 872) = 1018212795;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 850045863;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 992) = 1018212795;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0;
  return result;
}

void amber::AEASegmentEncryptionTask::~AEASegmentEncryptionTask(amber::AEASegmentEncryptionTask *this)
{
  amber::AEASegmentEncryptionTask::~AEASegmentEncryptionTask(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE36C8;
  std::condition_variable::~condition_variable((this + 992));
  std::mutex::~mutex((this + 928));
  std::condition_variable::~condition_variable((this + 872));
  std::mutex::~mutex((this + 808));
  *(this + 65) = &unk_2A1DDFDD8;
  *(this + 66) = &unk_2A1DDFE08;
  *(this + 540) = 0u;
  *(this + 556) = 0u;
  *(this + 572) = 0u;
  *(this + 588) = 0u;
  *(this + 604) = 0u;
  *(this + 620) = 0u;
  *(this + 636) = 0u;
  *(this + 652) = 0u;
  *(this + 668) = 0u;
  *(this + 684) = 0u;
  *(this + 700) = 0u;
  *(this + 716) = 0u;
  *(this + 732) = 0u;
  *(this + 748) = 0u;
  *(this + 764) = 0u;
  *(this + 780) = 0u;
  *(this + 30) = &unk_2A1DDFDD8;
  *(this + 31) = &unk_2A1DDFE08;
  *(this + 484) = 0u;
  *(this + 500) = 0u;
  *(this + 452) = 0u;
  *(this + 468) = 0u;
  *(this + 420) = 0u;
  *(this + 436) = 0u;
  *(this + 388) = 0u;
  *(this + 404) = 0u;
  *(this + 356) = 0u;
  *(this + 372) = 0u;
  *(this + 324) = 0u;
  *(this + 340) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  amber::Buffer::~Buffer((this + 120), v2, v3, v4, v5, v6, v7);
  amber::Buffer::~Buffer((this + 16), v8, v9, v10, v11, v12, v13);
}

void amber::AEASegmentEncryptionTask::run(amber::AEASegmentEncryptionTask *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(this + 1);
  v9 = *(this + 29);
  amber::Buffer::constBuf(this + 16, a7, v14);
  amber::ConstMemoryView::view(v14, *(this + 12), *(this + 13) - *(this + 12), v10, v13);
  if ((amber::AEAContainer::encryptSegmentProcess(v8, v9, v13, (this + 120), this + 240, this + 520, v11) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAEncryptionStream.cpp", "run", 0x40, 0, "segment encryption failed", v12);
    *(this + 224) = 1;
  }

  amber::Sem::release((this + 800));
  amber::Sem::acquire((this + 920));
}

uint64_t amber::SharedQueue<amber::AEASegmentEncryptionTask *>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE3698;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

void *amber::ThreadPool<amber::AEASegmentEncryptionTask>::~ThreadPool(void *a1)
{
  *a1 = &unk_2A1DE3708;
  amber::ThreadPoolBase::~ThreadPoolBase((a1 + 1));
  return a1;
}

void amber::ThreadPool<amber::AEASegmentEncryptionTask>::~ThreadPool(void *a1)
{
  *a1 = &unk_2A1DE3708;
  amber::ThreadPoolBase::~ThreadPoolBase((a1 + 1));

  JUMPOUT(0x29C25C000);
}

amber::NetworkEndpoint *amber::NetworkEndpoint::NetworkEndpoint(amber::NetworkEndpoint *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3738;
  *(this + 2) = -1;
  *(this + 6) = 256;
  *(this + 27) = &unk_2A1DDFD28;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = off_2A1DDFD48;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = &off_2A1DDFDA8;
  *(this + 34) = &off_2A1DDFC68;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 156) = 1;
  *(this + 314) = 0;
  *(this + 14) = 0;
  amber::Buffer::reserve((this + 216), 0x10000uLL, a3, a4, a5, a6, a7);
  return this;
}

amber::NetworkEndpoint *amber::NetworkEndpoint::NetworkEndpoint(amber::NetworkEndpoint *this, int a2, const char *__source, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3738;
  *(this + 2) = a2;
  *(this + 6) = 256;
  v8 = (this + 216);
  *(this + 27) = &unk_2A1DDFD28;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = off_2A1DDFD48;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = &off_2A1DDFDA8;
  *(this + 34) = &off_2A1DDFC68;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 156) = 1;
  *(this + 314) = 0;
  if (__source)
  {
    strlcpy(this + 14, __source, 0xC8uLL);
  }

  else
  {
    *(this + 14) = 0;
  }

  amber::Buffer::reserve(v8, 0x10000uLL, __source, a4, a5, a6, a7);
  return this;
}

void amber::NetworkEndpoint::~NetworkEndpoint(amber::NetworkEndpoint *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3738;
  v8 = *(this + 2);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
    if (*(this + 14))
    {
      if (*(this + 13) == 1)
      {
        unlink(this + 14);
      }
    }
  }

  amber::Buffer::~Buffer((this + 216), a2, a3, a4, a5, a6, a7);
}

{
  amber::NetworkEndpoint::~NetworkEndpoint(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

void amber::NetworkEndpoint::serverIPOpen(amber::NetworkEndpoint *this)
{
  v2 = *MEMORY[0x29EDCA608];
  amber::zero(void *,unsigned long)::memset_func(&v1, 0, 112);
  operator new();
}

uint64_t openSocket(int a1)
{
  v1 = socket(a1, 1, 0);
  v2 = v1;
  if ((v1 & 0x80000000) != 0)
  {
    v4 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "openSocket", 0xA5, *v4, "socket", v5);
  }

  else if ((setSocketOptions(v1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "openSocket", 0xA6, 0, "set socket options", v3);
    close(v2);
    return 0xFFFFFFFFLL;
  }

  return v2;
}

void amber::NetworkEndpoint::serverNamedOpen(amber::NetworkEndpoint *this, const char *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  amber::zero(void *,unsigned long)::memset_func(&v2, 0, 112);
  operator new();
}

void amber::NetworkEndpoint::serverAccept(amber::NetworkEndpoint *this)
{
  v2 = *MEMORY[0x29EDCA608];
  amber::zero(void *,unsigned long)::memset_func(&v1, 0, 112);
  operator new();
}

void amber::NetworkEndpoint::clientIPConnect(amber::NetworkEndpoint *this, const char *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  amber::zero(void *,unsigned long)::memset_func(&v2, 0, 112);
  operator new();
}

void amber::NetworkEndpoint::clientNamedConnect(amber::NetworkEndpoint *this, const char *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  amber::zero(void *,unsigned long)::memset_func(&v2, 0, 112);
  operator new();
}

uint64_t amber::NetworkEndpoint::openSocketPair(amber::NetworkEndpoint *this, int *a2)
{
  *this = -1;
  if (socketpair(1, 1, 0, this) < 0)
  {
    v7 = *__error();
    v5 = "socketpair";
    v6 = 372;
  }

  else
  {
    if ((setSocketOptions(*this) & 0x80000000) == 0 && (setSocketOptions(*(this + 1)) & 0x80000000) == 0)
    {
      return 0;
    }

    v5 = "set socket options";
    v6 = 375;
    v7 = 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "openSocketPair", v6, v7, v5, v3);
  if ((*this & 0x80000000) == 0)
  {
    close(*this);
  }

  v8 = *(this + 1);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  *this = -1;
  return 0xFFFFFFFFLL;
}

uint64_t setSocketOptions(int a1)
{
  v8 = xmmword_296A15B60;
  v7 = 1;
  if (setsockopt(a1, 0xFFFF, 4130, &v7, 4u) < 0)
  {
    v3 = *__error();
    v5 = "setsockopt SO_NOSIGPIPE";
    v6 = 130;
  }

  else if (setsockopt(a1, 0xFFFF, 4101, &v8, 0x10u) < 0)
  {
    v3 = *__error();
    v5 = "setsockopt SO_SNDTIMEO";
    v6 = 132;
  }

  else if (setsockopt(a1, 0xFFFF, 4102, &v8, 0x10u) < 0)
  {
    v3 = *__error();
    v5 = "setsockopt SO_RCVTIMEO";
    v6 = 133;
  }

  else if (setsockopt(a1, 0xFFFF, 4, &v7, 4u) < 0)
  {
    v3 = *__error();
    v5 = "setsockopt SO_REUSEADDR";
    v6 = 134;
  }

  else if (setsockopt(a1, 0xFFFF, 512, &v7, 4u) < 0)
  {
    v3 = *__error();
    v5 = "setsockopt SO_REUSEPORT";
    v6 = 135;
  }

  else if (setsockopt(a1, 0xFFFF, 8, &v7, 4u) < 0)
  {
    v3 = *__error();
    v5 = "setsockopt SO_KEEPALIVE";
    v6 = 136;
  }

  else
  {
    v7 = 0x20000;
    if (setsockopt(a1, 0xFFFF, 4097, &v7, 4u) < 0)
    {
      v3 = *__error();
      v5 = "setsockopt SO_SNDBUF";
      v6 = 140;
    }

    else
    {
      if ((setsockopt(a1, 0xFFFF, 4098, &v7, 4u) & 0x80000000) == 0)
      {
        return 0;
      }

      v3 = *__error();
      v5 = "setsockopt SO_RCVBUF";
      v6 = 141;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "setSocketOptions", v6, v3, v5, v4);
  return 0xFFFFFFFFLL;
}

uint64_t amber::NetworkEndpoint::selectForReading(amber::NetworkEndpoint *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 2);
  if ((v7 & 0x80000000) != 0)
  {
    v13 = "no file descriptor";
    v14 = 395;
    v15 = 0;
LABEL_13:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "selectForReading", v14, v15, v13, a7, v17.tv_sec);
    return 0xFFFFFFFFLL;
  }

  memset(&v18, 0, sizeof(v18));
  if (__darwin_check_fd_set_overflow(v7, &v18, 0))
  {
    *(v18.fds_bits + ((v7 >> 3) & 0x1FFFFFFC)) |= 1 << v7;
  }

  amber::zero(void *,unsigned long)::memset_func(&v17, 0, 16);
  if (a2 >= 0xF4240)
  {
    v17.tv_sec = a2 / 0xF4240uLL;
    a2 %= 0xF4240u;
  }

  v17.tv_usec = a2;
  v10 = select(*(this + 2) + 1, &v18, 0, 0, &v17);
  if ((v10 & 0x80000000) != 0)
  {
    v15 = *__error();
    v13 = "select";
    v14 = 412;
    goto LABEL_13;
  }

  v11 = v10;
  if (v10)
  {
    v12 = *(this + 2);
    if (!__darwin_check_fd_set_overflow(v12, &v18, 0) || ((*(v18.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t amber::NetworkEndpoint::selectForWriting(amber::NetworkEndpoint *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 2);
  if ((v7 & 0x80000000) != 0)
  {
    v13 = "no file descriptor";
    v14 = 425;
    v15 = 0;
LABEL_13:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "selectForWriting", v14, v15, v13, a7, v17.tv_sec);
    return 0xFFFFFFFFLL;
  }

  memset(&v18, 0, sizeof(v18));
  if (__darwin_check_fd_set_overflow(v7, &v18, 0))
  {
    *(v18.fds_bits + ((v7 >> 3) & 0x1FFFFFFC)) |= 1 << v7;
  }

  amber::zero(void *,unsigned long)::memset_func(&v17, 0, 16);
  if (a2 >= 0xF4240)
  {
    v17.tv_sec = a2 / 0xF4240uLL;
    a2 %= 0xF4240u;
  }

  v17.tv_usec = a2;
  v10 = select(*(this + 2) + 1, 0, &v18, 0, &v17);
  if ((v10 & 0x80000000) != 0)
  {
    v15 = *__error();
    v13 = "select";
    v14 = 442;
    goto LABEL_13;
  }

  v11 = v10;
  if (v10)
  {
    v12 = *(this + 2);
    if (!__darwin_check_fd_set_overflow(v12, &v18, 0) || ((*(v18.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t amber::NetworkEndpoint::read(amber::NetworkEndpoint *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (!v7)
  {
    return 0;
  }

  if (amber::ConstMemoryViewConvertible<amber::Buffer>::empty(this + 216, a2, a3, a4, a5, a6, a7))
  {
    amber::Buffer::buf(this + 216, v15, v38);
    amber::MutableMemoryView::operator+(v38, *(this + 38), v16, v36);
    if (v7 < v37)
    {
      amber::Buffer::buf(this + 216, v15, v38);
      amber::MutableMemoryView::operator+(v38, *(this + 38), v17, v36);
      v18 = v37;
      amber::Buffer::buf(this + 216, v19, v38);
      amber::MutableMemoryView::operator+(v38, *(this + 38), v20, v36);
      v21 = read(*(this + 2), v36[1], v18);
      if (v21 < 0)
      {
        v33 = *__error();
        v35 = 464;
        goto LABEL_17;
      }

      if (!v21)
      {
        *(this + 12) = 1;
      }

      if ((amber::Buffer::grow((this + 216), v21, v22, v23, v24, v25, v26) & 0x80000000) != 0)
      {
        v34 = "buffer grow";
        v35 = 466;
        v33 = 0;
        goto LABEL_18;
      }
    }
  }

  if (!amber::ConstMemoryViewConvertible<amber::Buffer>::empty(this + 216, v10, v11, v12, v13, v14, v15))
  {
    result = amber::BufferProtocol<amber::Buffer>::readAndConsume(this + 27, a2, v27, v28, v29, v30, v31);
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v33 = *__error();
    v34 = "read from buffer";
    v35 = 476;
    goto LABEL_18;
  }

  result = read(*(this + 2), *(a2 + 1), v7);
  if (result < 0)
  {
    v33 = *__error();
    v35 = 485;
LABEL_17:
    v34 = "read";
LABEL_18:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "read", v35, v33, v34, v15);
    return -1;
  }

  if (!result)
  {
    *(this + 12) = 1;
  }

  return result;
}