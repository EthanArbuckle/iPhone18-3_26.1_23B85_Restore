void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t amber::KnoxUploadAttributes::jsonSerialize(amber::KnoxUploadAttributes *this, const void **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginDict(a2, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  v14 = (this + 8);
  v15 = *(this + 31);
  if (v15 < 0)
  {
    v15 = *(this + 2);
    if (!v15)
    {
      goto LABEL_8;
    }

    v14 = *v14;
LABEL_7:
    v19[0] = v14;
    v19[1] = v15;
    if ((amber::JSONOutputStream::append(a2, "pointer_type", v19, v10, v11, v12, v13) & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (*(this + 31))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (*(this + 4) == *(this + 5) || (amber::JSONOutputStream::appendArray<unsigned long long>(a2, "admin_access_groups", this + 4, v10, v11, v12, v13) & 0x80000000) == 0)
  {
    v16 = (this + 56);
    if (*(this + 7) == *(this + 8) || (amber::JSONOutputStream::appendArray<unsigned long long>(a2, "read_access_groups", v16, v10, v11, v12, v13) & 0x80000000) == 0)
    {
      v17 = *(this + 10);
      if ((v17 < 0 || (amber::JSONOutputStream::append(a2, "expiration", 1, v17, 0, v12, v13) & 0x80000000) == 0) && (amber::JSONOutputStream::end(a2, v9, v16, v17, v11, v12, v13) & 0x80000000) == 0)
      {
        return 0;
      }
    }
  }

LABEL_16:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadAttributes.cpp", "jsonSerialize", 0x5B, 0, "serialize KnoxUploadAttributes", v13);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::appendArray<unsigned long long>(const void **a1, const char *a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v15 = amber::JSONOutputStream::beginArray(a1, a2, a3, a4, a5, a6, a7) >> 31;
  for (i = *a3; i != a3[1]; ++i)
  {
    v17 = *i;
    if (amber::JSONOutputStream::append(a1, 0, 1, v17, 0, v13, v14))
    {
      v15 = -1;
    }
  }

  if (amber::JSONOutputStream::end(a1, v9, v10, v11, v12, v13, v14) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v15;
  }
}

uint64_t amber::fromAmberObject(const void **a1, uint64_t a2)
{
  MEMORY[0x29C25BF00](a1 + 1);
  std::vector<unsigned long long>::reserve(a1 + 4, *(a2 + 2304));
  if (*(a2 + 2304))
  {
    v4 = 0;
    v5 = (a2 + 256);
    do
    {
      std::vector<unsigned long long>::push_back[abi:ne200100](a1 + 4, v5);
      ++v4;
      ++v5;
    }

    while (v4 < *(a2 + 2304));
  }

  std::vector<unsigned long long>::reserve(a1 + 7, *(a2 + 4360));
  if (*(a2 + 4360))
  {
    v6 = 0;
    v7 = (a2 + 2312);
    do
    {
      std::vector<unsigned long long>::push_back[abi:ne200100](a1 + 7, v7);
      ++v6;
      ++v7;
    }

    while (v6 < *(a2 + 4360));
  }

  a1[10] = *(a2 + 4368);
  return 0;
}

void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(result, a2);
    }

    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t AmberKnoxUploadAttributesParseJSON(uint64_t a1, amber::Stream *a2)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = &unk_2A1DE1008;
  v22 = 0;
  v23 = -1;
  amber::JSONInputStream::JSONInputStream(v16, a2);
  if ((amber::KnoxUploadAttributes::jsonParse(&v17, v16, v3, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadAttributes.cpp", "AmberKnoxUploadAttributesParseJSON", 0x85, 0, "JSON parse AmberKnoxUploadAttributes", v12);
  }

  else
  {
    if ((amber::toAmberObject(&v17, a1, v8, v9, v10, v11, v12) & 0x80000000) == 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadAttributes.cpp", "AmberKnoxUploadAttributesParseJSON", 0x86, 0, "invalid object", v13);
  }

  v14 = 0xFFFFFFFFLL;
LABEL_7:
  amber::JSONInputStream::~JSONInputStream(v16);
  v17 = &unk_2A1DE1008;
  if (v21)
  {
    *(&v21 + 1) = v21;
    operator delete(v21);
  }

  if (*(&v19 + 1))
  {
    *&v20 = *(&v19 + 1);
    operator delete(*(&v19 + 1));
  }

  if (SBYTE7(v19) < 0)
  {
    operator delete(v18);
  }

  amber::JSONCodable::~JSONCodable(&v17);
  return v14;
}

void sub_29697A67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  amber::JSONInputStream::~JSONInputStream(&a9);
  amber::KnoxUploadAttributes::~KnoxUploadAttributes((v9 - 120));
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxUploadAttributesSerializeJSON(uint64_t a1, amber::Stream *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v11 = &unk_2A1DE1008;
  v16 = 0;
  v17 = -1;
  amber::fromAmberObject(&v11, a1);
  amber::JSONOutputStream::JSONOutputStream(v10, a2, 1);
  if ((amber::KnoxUploadAttributes::jsonSerialize(&v11, v10, 0, v3, v4, v5, v6) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadAttributes.cpp", "AmberKnoxUploadAttributesSerializeJSON", 0x91, 0, "JSON serializate AmberKnoxUploadAttributes", v7);
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  amber::JSONOutputStream::~JSONOutputStream(v10);
  v11 = &unk_2A1DE1008;
  if (v15)
  {
    *(&v15 + 1) = v15;
    operator delete(v15);
  }

  if (*(&v13 + 1))
  {
    *&v14 = *(&v13 + 1);
    operator delete(*(&v13 + 1));
  }

  if (SBYTE7(v13) < 0)
  {
    operator delete(v12);
  }

  amber::JSONCodable::~JSONCodable(&v11);
  return v8;
}

void sub_29697A844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  amber::JSONOutputStream::~JSONOutputStream(&a9);
  amber::KnoxUploadAttributes::~KnoxUploadAttributes((v9 - 120));
  _Unwind_Resume(a1);
}

void amber::SharedCacheBlockDevice::~SharedCacheBlockDevice(amber::SharedCacheBlockDevice *this)
{
  *this = &unk_2A1DE1050;
  amber::SyncBlockDevice::terminateThreads(this);
  v8 = *(this + 64);
  if (v8)
  {
    amber::SharedBlockCache::unregisterClient(v8, *(this + 132));
  }

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::SharedCacheBlockDevice::~SharedCacheBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedCacheBlockDevice::getAttribute(amber::SharedCacheBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "getAttribute", 0xD8, 0, "invalid attribute encoding %u, %u", v16, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 203)
  {
    switch(a2)
    {
      case 0xC9:
        v21 = *(this + 60);
        v22 = &off_2A1DDFDA8;
        v23 = &v21;
        v24 = 8;
        v25 = &off_2A1DDFC68;
        v26 = &v21;
        v27 = 8;
        *a5 = 8;
        v18 = *(a4 + 2);
        if (v18)
        {
          if (v18 <= 7)
          {
            v19 = 8;
LABEL_27:
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v16, v19, v18);
            return 0xFFFFFFFFLL;
          }

          return amber::copy(a4, &v25, v12, v13, v14, v15, v16);
        }

        return 0;
      case 0xCA:
        v17 = *(this + 117);
        goto LABEL_24;
      case 0xCB:
        v17 = *(this + 122);
        if (!v17)
        {
          return 0xFFFFFFFFLL;
        }

LABEL_24:
        LODWORD(v21) = v17;
        v22 = &off_2A1DDFDA8;
        v23 = &v21;
        v24 = 4;
        v25 = &off_2A1DDFC68;
        v26 = &v21;
        v27 = 4;
        *a5 = 4;
        v18 = *(a4 + 2);
        if (v18)
        {
          if (v18 <= 3)
          {
            v19 = 4;
            goto LABEL_27;
          }

          return amber::copy(a4, &v25, v12, v13, v14, v15, v16);
        }

        return 0;
    }
  }

  else
  {
    if (a2 <= 205)
    {
      if (a2 == 204)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0x40000;
      }

      goto LABEL_24;
    }

    if (a2 == 206)
    {
      v17 = *(this + 118);
      goto LABEL_24;
    }

    if (a2 == 207)
    {
      v17 = *(this + 119);
      goto LABEL_24;
    }
  }

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v15, v16);
}

uint64_t amber::SharedCacheBlockDevice::setAttribute(amber::SharedCacheBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v19 = a2;
    v20 = a3;
    v16 = "invalid attribute encoding %u, %u";
    v17 = 249;
LABEL_9:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "setAttribute", v17, 0, v16, v15, v19, v20);
    return 0xFFFFFFFFLL;
  }

  v21 = 0;
  if (a3 == 2 && (amber::storeAttribute<unsigned int>(&v21, a4, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    v16 = "invalid attribute size";
    v17 = 254;
    goto LABEL_9;
  }

  if (a2 != 207)
  {
    return amber::BlockDevice::setAttribute(this, a2, a3, a4, v13, v14, v15);
  }

  if (!v21 || v21 % *(this + 118))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "setAttribute", 0x105, 0, "invalid max_io_size: %u", v15, v21);
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(this + 119) = v21;
  return result;
}

uint64_t amber::SharedCacheBlockDevice::ReadState::enqueueRequest(amber::SharedCacheBlockDevice::ReadState *this, uint64_t a2, size_t size)
{
  v5 = size;
  if (malloc_type_malloc(size, 0xF93785E2uLL))
  {
    if (*(*(this + 22) + 480) < (v5 + a2))
    {
      v6 = *(*(this + 22) + 480);
    }

    operator new();
  }

  v7 = __error();
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v7, "malloc", v8);
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "enqueueRequest", 0x116, 0, "malloc", v9);
  return 0xFFFFFFFFLL;
}

void sub_29697B28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t amber::SharedCacheBlockDevice::ReadState::processReply(amber::SharedCacheBlockDevice::ReadState *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 14);
  v8 = *(*(this + 22) + 472);
  v9 = v7 % v8;
  v10 = v8 + v7 - v7 % v8;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a2 + 14);
  }

  v12 = *(a2 + 6);
  v13 = v12 + v11;
  if (__CFADD__(v12, v11))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v16 = 0;
  v17 = *(a2 + 8);
  if (v13 <= v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a2 + 6);
  }

  if (v13 <= v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = v12 + v11;
  }

  v57[0] = v18;
  v57[1] = v19;
  v20 = *this;
  v21 = *(this + 1);
  v22 = 0;
  if (*this != v21 && v18 != v19)
  {
    if (v20 <= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = *this;
    }

    if (v19 >= v21)
    {
      v19 = *(this + 1);
    }

    if (v23 >= v19)
    {
      v16 = 0;
    }

    else
    {
      v16 = v23;
    }

    if (v23 >= v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }
  }

  if (*(a2 + 7) == 2)
  {
    if (v7 < v11 && v17 != 0)
    {
      amber::zero(void *,unsigned long)::memset_func(&v17[v7], 0, v11 - v7);
      v20 = *this;
    }

    amber::MutableMemoryView::operator+(this + 152, v16 - v20, a7, v51);
    v26 = *(a2 + 8);
    if (v26)
    {
      v27 = *(a2 + 14);
    }

    else
    {
      v27 = 0;
    }

    v52[0] = &off_2A1DDFDA8;
    v52[1] = v26;
    v52[2] = v27;
    amber::MutableMemoryView::operator+(v52, v16 - v18, v25, &v53);
    v56[0] = &off_2A1DDFC68;
    v56[1] = v54;
    v56[2] = v55;
    if ((v55 & 0x8000000000000000) != 0 || !v54 && v55)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v29);
      v49 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v49, "memory invalid args");
      __cxa_throw(v49, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v30 = (v22 - v16);
    if (v55 < v22 - v16 || v51[2] < v30)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v29);
      v50 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v50, "memory invalid range");
      __cxa_throw(v50, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memcpy(v51[1], v54, v30);
    amber::Range::alignedAndShiftedRight(v57, *(*(this + 22) + 524), v31, v56);
    amber::Buffer::createWithPointer(v11, v11, v17, v32, v33, v34, v35, v51);
    amber::BlockDeviceEvent::BlockDeviceEvent(&v53, 32, a2);
    amber::BlockDeviceEvent::sendBegin(&v53);
    if ((amber::SharedBlockCache::write(*(*(this + 22) + 512), *(*(this + 22) + 528), v56, v51, v36, v37, v38) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "processReply", 0x145, 0, "cache update failed", v39);
      v40 = 0;
      atomic_compare_exchange_strong(this + 80, &v40, 1u);
    }

    else
    {
      amber::BlockDeviceEvent::sendEnd(&v53);
    }

    amber::BlockDeviceEvent::~BlockDeviceEvent(&v53);
    amber::Buffer::~Buffer(v51, v41, v42, v43, v44, v45, v46);
    v17 = 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "processReply", 0x133, 0, "data device read request failed", a7);
    v28 = 0;
    atomic_compare_exchange_strong(this + 80, &v28, 1u);
  }

  free(v17);
  amber::Sem::release((this + 192));
  return 0;
}

void *amber::Range::alignedAndShiftedRight@<X0>(void *this@<X0>, unsigned int a2@<W1>, const char *a3@<X6>, unint64_t *a4@<X8>)
{
  if (a2 >= 0x40)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "alignedAndShiftedRight", 0x60, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v4 = *this >> a2;
  v5 = (this[1] + ~(-1 << a2)) >> a2;
  if (v4 >= v5)
  {
    v4 = 0;
    v5 = 0;
  }

  *a4 = v4;
  a4[1] = v5;
  return this;
}

void amber::Buffer::createWithPointer(amber::Buffer *this@<X0>, amber::Buffer *a2@<X2>, void *a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, uint64_t a8@<X8>)
{
  if (a2 > this)
  {
    __break(1u);
  }

  else
  {
    *a8 = &unk_2A1DDFD28;
    v10 = (a8 + 8);
    *(a8 + 16) = 0;
    v11 = (a8 + 16);
    *(a8 + 8) = off_2A1DDFD48;
    *(a8 + 24) = 0;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0;
    *(a8 + 32) = &off_2A1DDFDA8;
    *(a8 + 56) = &off_2A1DDFC68;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 96) = 1;
    *(a8 + 98) = 0;
    amber::MemorySegment::MemorySegment(&v17, a3, this, a4, a5, a6, a7);
    if (&v17 == v10)
    {
      v13 = v18;
    }

    else
    {
      if (*v11)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemorySegment.hpp", "operator=", 0xD9, 0, "memory invalid state", v12);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid state");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v13 = 0;
      v14 = v18;
      v15 = v19;
      v18 = 0;
      v19 = 0;
      *(a8 + 16) = v14;
      *(a8 + 24) = v15;
    }

    free(v13);
    *(a8 + 80) = 0;
    *(a8 + 88) = a2;
    *(a8 + 96) = 1;
  }
}

void sub_29697B944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  __cxa_free_exception(v12);
  free(a11);
  amber::Buffer::~Buffer(v11, v14, v15, v16, v17, v18, v19);
  _Unwind_Resume(a1);
}

uint64_t amber::SharedCacheBlockDevice::executeRead(amber::SharedCacheBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v66 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 161);
  v50 = 0u;
  v51 = 0u;
  amber::NBitVector<1u>::NBitVector(v52);
  v54 = &off_2A1DDFDA8;
  v55 = 0;
  v56 = 0;
  v57 = this;
  v58 = v5;
  v59[0] = xmmword_296A14210;
  memset(&v59[1], 0, 48);
  v60 = 0;
  v61 = 1018212795;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65[0] = 0;
  v7 = *(a3 + 6);
  v8 = *(a3 + 14);
  v9 = __CFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", v6);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v10 <= v7)
  {
    v7 = 0;
    v10 = 0;
  }

  *&v50 = v7;
  *(&v50 + 1) = v10;
  amber::Range::alignedAndShiftedRight(&v50, *(this + 131), v6, &v49);
  v51 = v49;
  if (*(a3 + 8))
  {
    v11 = *(a3 + 14);
  }

  else
  {
    v11 = 0;
  }

  v55 = *(a3 + 8);
  v56 = v11;
  amber::BlockDeviceEvent::BlockDeviceEvent(&v49, 31, a3);
  if (*(&v50 + 1) > *(this + 60))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "executeRead", 0x164, 0, "invalid request range", v12);
    v17 = -2147483626;
LABEL_43:
    amber::BlockDeviceRequest::sendReply(a3, v17, 0, v13, v14, v15, v16);
    v38 = 0xFFFFFFFFLL;
    goto LABEL_47;
  }

  amber::BlockDeviceEvent::sendBegin(&v49);
  v20 = amber::SharedBlockCache::read(*(this + 64), *(this + 132), &v51, &v54, &v50, v52, v18);
  if ((v20 & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "executeRead", 0x169, 0, "cache read failed", v19);
LABEL_42:
    v17 = -2147483643;
    goto LABEL_43;
  }

  amber::BlockDeviceEvent::sendEnd(&v49);
  atomic_fetch_add_explicit(this + 67, v20, memory_order_relaxed);
  v34 = *(&v51 + 1) - v51 > v20;
  atomic_fetch_add_explicit(this + 68, *(&v51 + 1) - v51 - v20, memory_order_relaxed);
  if (v34)
  {
    v26 = *(&v50 + 1);
    v27 = v50 / *(this + 118) * *(this + 118);
    if (v27 < *(&v50 + 1))
    {
      do
      {
        if (v27 >= v26)
        {
          v29 = v27;
        }

        else
        {
          v28 = 0;
          v29 = v27;
          while (v28 < *(this + 119))
          {
            LODWORD(v30) = *(this + 118);
            if (!v30)
            {
              v30 = 0;
LABEL_30:
              v29 += v30;
              break;
            }

            v31 = 0;
            while (1)
            {
              v32 = (v29 + v31) >> *(this + 131);
              v33 = v32 - v51;
              v34 = v32 >= v51 && *(&v51 + 1) > v32;
              if (v34)
              {
                if (v52[1] <= v33)
                {
                  break;
                }

                v35 = amber::ConstMemoryViewConvertible<amber::Buffer>::operator[](v53, v33 >> 3, v21, v22, v23, v24, v25);
                LODWORD(v30) = *(this + 118);
                if (((v35 >> (v33 & 7)) & 1) == 0)
                {
                  break;
                }
              }

              v31 += *(this + 130);
              if (v31 >= v30)
              {
                v30 = v30;
                goto LABEL_30;
              }
            }

            v29 += v30;
            v28 = (v30 + v28);
            if (v29 >= *(&v50 + 1))
            {
              break;
            }
          }

          if (v28 && (amber::SharedCacheBlockDevice::ReadState::enqueueRequest(&v50, v27, v28) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "executeRead", 0x18D, 0, "enqueue data device request", v25);
            v36 = 0;
            atomic_compare_exchange_strong(v65, &v36, 1u);
          }
        }

        v26 = *(&v50 + 1);
        v27 = v29;
      }

      while (v29 < *(&v50 + 1));
    }

    if (atomic_fetch_add_explicit(&v64 + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
    {
      do
      {
        amber::Sem::acquire(v59);
      }

      while (atomic_fetch_add_explicit(&v64 + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
    }

    atomic_fetch_add_explicit(&v64 + 1, 1uLL, memory_order_relaxed);
    if (atomic_load(v65))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "executeRead", 0x193, 0, "read requests reported errors", v25);
      goto LABEL_42;
    }
  }

  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v22, v23, v24, v25) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SharedCacheBlockDevice.cpp", "executeRead", 0x197, 0, "reply data", v39);
  }

  v38 = 0;
LABEL_47:
  amber::BlockDeviceEvent::~BlockDeviceEvent(&v49);
  std::condition_variable::~condition_variable(&v61);
  std::mutex::~mutex((v59 + 8));
  v52[0] = &unk_2A1DE0AA8;
  amber::Buffer::~Buffer(v53, v40, v41, v42, v43, v44, v45);
  v46 = *MEMORY[0x29EDCA608];
  return v38;
}

void sub_29697BE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  amber::BlockDeviceEvent::~BlockDeviceEvent(&a9);
  amber::SharedCacheBlockDevice::ReadState::~ReadState(&a11);
  _Unwind_Resume(a1);
}

unint64_t *amber::SharedCacheBlockDevice::updateStats(amber::BaseObject **this, unint64_t a2, unint64_t *a3)
{
  AttributeUInt64 = amber::BaseObject::getAttributeUInt64(this[64], 1402);
  v7 = amber::BaseObject::getAttributeUInt64(this[64], 1403);
  AttributeUInt32 = amber::BaseObject::getAttributeUInt32(this[64], 1401);
  if (a2 >= 0xD)
  {
    a3[12] = (v7 + AttributeUInt64) * AttributeUInt32;
    if (a2 >= 0x10)
    {
      v9 = *(this + 131);
      a3[15] = this[67] << v9;
      if (a2 >= 0x12)
      {
        a3[17] = this[68] << v9;
      }
    }
  }

  return amber::BlockDevice::updateStats(this, a2, a3);
}

void sub_29697BFE0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29697BFC4);
}

uint64_t amber::storeAttribute<unsigned int>(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a2 + 16) == 4)
  {
    result = 0;
    *a1 = **(a2 + 8);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "storeAttribute", 0x2E, 0, "attribute size mismatch", a7);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *amber::MemorySegment::MemorySegment(void *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = off_2A1DDFD48;
  this[1] = a2;
  this[2] = a3;
  if ((a2 == 0) == (a3 != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemorySegment.hpp", "MemorySegment", 0xBE, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_6;
  }

  if (a3 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemorySegment.hpp", "MemorySegment", 0xBF, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return this;
}

double amber::NBitVector<1u>::NBitVector(uint64_t a1)
{
  *a1 = &unk_2A1DE0AA8;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_2A1DDFD28;
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
  *(a1 + 112) = 1;
  *(a1 + 114) = 0;
  return result;
}

void amber::SharedCacheBlockDevice::ReadState::~ReadState(amber::SharedCacheBlockDevice::ReadState *this)
{
  std::condition_variable::~condition_variable((this + 264));
  std::mutex::~mutex((this + 200));
  *(this + 4) = &unk_2A1DE0AA8;
  amber::Buffer::~Buffer((this + 48), v2, v3, v4, v5, v6, v7);
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::operator[](uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(a1, a7, v14);
  amber::ConstMemoryView::view(v14, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v9, v13);
  if (v13[2] <= a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "operator[]", 0xE9, 0, "memory invalid range", v10);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return *(v13[1] + a2);
}

uint64_t amber::Logger::instance(amber::Logger *this)
{
  if (atomic_load_explicit(&amber::Logger::instance(void)::logger_flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&amber::Logger::instance(void)::logger_flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<amber::Logger::instance(void)::$_0 &&>>);
  }

  return amber::Logger::instance(void)::logger;
}

uint64_t amber::Logger::setAttribute(amber::Logger *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a2;
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v17 = "invalid attribute encoding";
LABEL_10:
    amber::log(2, v10, v11, v12, 0, v17, v15);
    return 0xFFFFFFFFLL;
  }

  v18 = 0;
  if ((amber::storeAttribute<unsigned int>(&v18, a4, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    v17 = "invalid attribute size";
    goto LABEL_10;
  }

  result = 0xFFFFFFFFLL;
  if (v8 <= 1102)
  {
    if (v8 == 1101)
    {
      result = 0;
      *(this + 4) = v18;
    }

    else if (v8 == 1102)
    {
      result = 0;
      *(this + 3) = v18;
    }
  }

  else
  {
    switch(v8)
    {
      case 1103:
        result = 0;
        *(this + 2) = v18;
        break;
      case 1104:
        result = 0;
        *(this + 5) = v18;
        break;
      case 1105:
        result = 0;
        *(this + 24) = v18 != 0;
        break;
    }
  }

  return result;
}

void amber::log(amber *this, uint64_t a2, const char *a3, const char *a4, int a5, const char *a6, const char *a7, ...)
{
  va_start(va, a7);
  v9 = this;
  v16 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x400uLL);
  if (v9)
  {
    if (a5 >= 1)
    {
      v10 = strerror(a5);
      snprintf(__str, 0x400uLL, "%s: ", v10);
    }

    v11 = strlen(__str);
  }

  else
  {
    v11 = 0;
  }

  v12 = vsnprintf(&__str[v11], 1024 - v11, a6, va);
  v13 = amber::Logger::instance(v12);
  amber::Logger::log(v13, v9, __str);
  v14 = *MEMORY[0x29EDCA608];
}

uint64_t amber::Logger::getAttribute(amber::Logger *this, amber::BaseObject *a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  v9 = a2;
  if (amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    result = 0xFFFFFFFFLL;
    if (v9 <= 1102)
    {
      if (v9 == 1101)
      {
        v16 = *(this + 4);
      }

      else
      {
        if (v9 != 1102)
        {
          return result;
        }

        v16 = *(this + 3);
      }
    }

    else
    {
      switch(v9)
      {
        case 1103:
          v16 = *(this + 2);
          break;
        case 1104:
          v16 = *(this + 5);
          break;
        case 1105:
          v16 = *(this + 24);
          break;
        default:
          return result;
      }
    }

    *a5 = 4;
    v18 = *(a4 + 2);
    if (!v18)
    {
      return 0;
    }

    if (v18 > 3)
    {
      result = 0;
      **(a4 + 1) = v16;
      return result;
    }

    v19 = 4;
    v20 = *(a4 + 2);
    v17 = "insufficient capacity, expected: %zu, actual: %zu";
  }

  else
  {
    v17 = "invalid attribute encoding";
  }

  amber::log(2, v11, v12, v13, 0, v17, v14, v19, v20);
  return 0xFFFFFFFFLL;
}

void amber::Logger::log(amber::Logger *this, int a2, const char *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6 = this + 8;
      v7 = *(this + 24);
      v8 = "ERROR ";
      v9 = "\x1B[1;31mERROR\x1B[0m ";
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_31;
      }

      v6 = this + 20;
      v7 = *(this + 24);
      v8 = "DEBUG ";
      v9 = "\x1B[37mDEBUG\x1B[0m ";
    }
  }

  else
  {
    if (!a2)
    {
      v6 = this + 16;
      v10 = "";
      goto LABEL_13;
    }

    if (a2 != 1)
    {
      goto LABEL_31;
    }

    v6 = this + 12;
    v7 = *(this + 24);
    v8 = "WARNING ";
    v9 = "\x1B[33mWARNING\x1B[0m ";
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

LABEL_13:
  v11 = *v6;
  if ((*v6 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    fprintf(*MEMORY[0x29EDCA610], "%s%s\n", v10, a3);
    if ((v11 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  fprintf(*MEMORY[0x29EDCA620], "%s%s\n", v10, a3);
  if ((v11 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v11 & 4) == 0)
  {
    goto LABEL_31;
  }

LABEL_19:
  v12 = *(this + 4);
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        amber::Logger::log(a3, v12);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      amber::Logger::log(a3, v12);
    }
  }

  else if (a2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = a3;
      v13 = v12;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_28;
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = a3;
    v13 = v12;
    v14 = OS_LOG_TYPE_INFO;
LABEL_28:
    _os_log_impl(&dword_296942000, v13, v14, "%s", buf, 0xCu);
  }

LABEL_31:
  v15 = *MEMORY[0x29EDCA608];
}

void amber::logSize(amber *this, const char *a2, unsigned int a3)
{
  v5 = a3 * a2;
  v6 = v5;
  v17 = *MEMORY[0x29EDCA608];
  v7 = v5 * 8.47032947e-22;
  if (v7 >= 1.0)
  {
    v8 = "ZiB";
  }

  else
  {
    v7 = v6 * 8.67361738e-19;
    if (v6 * 8.67361738e-19 >= 1.0)
    {
      v8 = "EiB";
    }

    else
    {
      v7 = vcvtd_n_f64_u64(v5, 0x32uLL);
      if (v7 >= 1.0)
      {
        v8 = "PiB";
      }

      else
      {
        v7 = vcvtd_n_f64_u64(v5, 0x28uLL);
        if (v7 >= 1.0)
        {
          v8 = "TiB";
        }

        else
        {
          v7 = vcvtd_n_f64_u64(v5, 0x1EuLL);
          if (v7 >= 1.0)
          {
            v8 = "GiB";
          }

          else
          {
            v7 = vcvtd_n_f64_u64(v5, 0x14uLL);
            if (v7 >= 1.0)
            {
              v8 = "MiB";
            }

            else
            {
              v7 = vcvtd_n_f64_u64(v5, 0xAuLL);
              if (v7 >= 1.0)
              {
                v8 = "KiB";
              }

              else
              {
                if (!a2 || a3 == 1)
                {
                  snprintf(__str, 0x1EuLL, "%llu", a2);
                  amber::logString(this, __str, 1);
                  goto LABEL_25;
                }

                v8 = "B";
                v7 = v5;
              }
            }
          }
        }
      }
    }
  }

  v9 = amber::Logger::instance(this);
  std::string::basic_string[abi:ne200100]<0>(&v14, this);
  v10 = "";
  v11 = "\x1B[1m";
  if (*(v9 + 24))
  {
    v10 = "\x1B[0m";
  }

  else
  {
    v11 = "";
  }

  snprintf(__str, 0x3CuLL, " (%s%.2f %s%s)", v11, v7, v8, v10);
  v12 = &v14;
  std::string::append(&v14, __str);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v14.__r_.__value_.__r.__words[0];
  }

  snprintf(v16, 0x1EuLL, "%llu", a2);
  amber::logString(v12, v16, 1);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

LABEL_25:
  v13 = *MEMORY[0x29EDCA608];
}

void amber::logValue(amber *this, const char *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x1EuLL, "%llu", a2);
  amber::logString(this, __str, 1);
  v3 = *MEMORY[0x29EDCA608];
}

void amber::logString(amber *this, const char *a2, const char *a3)
{
  v3 = a3;
  v6 = amber::Logger::instance(this);
  memset(&v13, 0, sizeof(v13));
  if (v3)
  {
    v7 = strlen(a2);
    if (v7 <= 0x13)
    {
      v8 = v7 - 20;
      do
      {
        std::string::push_back(&v13, 32);
        v9 = __CFADD__(v8++, 1);
      }

      while (!v9);
    }

    if (*(v6 + 24) == 1)
    {
      std::string::append(&v13, "\x1B[1m");
    }

    std::string::append(&v13, a2);
    if (*(v6 + 24) == 1)
    {
      std::string::append(&v13, "\x1B[0m");
    }

    std::string::push_back(&v13, 32);
    std::string::append(&v13, this);
  }

  else
  {
    v10 = strlen(this);
    if (v10 <= 0x13)
    {
      v11 = v10 - 20;
      do
      {
        std::string::push_back(&v13, 32);
        v9 = __CFADD__(v11++, 1);
      }

      while (!v9);
    }

    std::string::append(&v13, this);
    std::string::push_back(&v13, 32);
    if (*(v6 + 24) == 1)
    {
      std::string::append(&v13, "\x1B[1m");
    }

    std::string::append(&v13, a2);
    if (*(v6 + 24) == 1)
    {
      std::string::append(&v13, "\x1B[0m");
    }
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v13;
  }

  else
  {
    v12 = v13.__r_.__value_.__r.__words[0];
  }

  amber::Logger::log(v6, 0, v12);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_29697CE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void amber::logMark(amber *this, const char *a2)
{
  v2 = a2;
  v4 = amber::Logger::instance(this);
  memset(&v9, 0, sizeof(v9));
  v5 = *(v4 + 24);
  if (v2)
  {
    if (*(v4 + 24))
    {
      std::string::append(&v9, "\x1B[35m");
    }

    v6 = 18;
    do
    {
      std::string::push_back(&v9, 32);
      --v6;
    }

    while (v6);
    std::string::append(&v9, "-- ");
    std::string::append(&v9, this);
    if (*(v4 + 24) != 1)
    {
      goto LABEL_14;
    }

LABEL_13:
    std::string::append(&v9, "\x1B[0m");
    goto LABEL_14;
  }

  if (*(v4 + 24))
  {
    std::string::append(&v9, "\x1B[1;34m");
  }

  v7 = 20;
  do
  {
    std::string::push_back(&v9, 45);
    --v7;
  }

  while (v7);
  std::string::push_back(&v9, 32);
  std::string::append(&v9, this);
  if (*(v4 + 24))
  {
    goto LABEL_13;
  }

LABEL_14:
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v9;
  }

  else
  {
    v8 = v9.__r_.__value_.__r.__words[0];
  }

  amber::Logger::log(v4, 0, v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29697CFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void amber::logSpeed(amber *this, const char *a2, double a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = 0.0;
  if (a3 > 1.0e-12)
  {
    v3 = a2 / a3;
  }

  v4 = v3 * 9.09494702e-13;
  if (v3 * 9.09494702e-13 >= 1.0)
  {
    v5 = " (TiB/s)";
  }

  else if (v3 * 9.31322575e-10 >= 1.0)
  {
    v5 = " (GiB/s)";
    v4 = v3 * 9.31322575e-10;
  }

  else if (v3 * 0.000000953674316 >= 1.0)
  {
    v5 = " (MiB/s)";
    v4 = v3 * 0.000000953674316;
  }

  else if (v3 * 0.0009765625 < 1.0)
  {
    v5 = " (B/s)";
  }

  else
  {
    v4 = v3 * 0.0009765625;
    v5 = " (KiB/s)";
  }

  std::string::basic_string[abi:ne200100]<0>(&v8, this);
  std::string::append(&v8, v5);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v8;
  }

  else
  {
    v6 = v8.__r_.__value_.__r.__words[0];
  }

  snprintf(__str, 0x1EuLL, "%.3f", v4);
  amber::logString(v6, __str, 1);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void amber::logDeviceStats(amber *this, const unint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*this >= 0x14uLL)
  {
    v2 = 20;
  }

  else
  {
    v2 = *this;
  }

  if (*this >= 2uLL)
  {
    v4 = 1;
    do
    {
      v5 = *(this + v4);
      if (v5)
      {
        v6 = "READ bytes";
        v7 = "requests";
        switch(v4)
        {
          case 1:
            goto LABEL_22;
          case 2:
            v7 = "READ requests";
            goto LABEL_22;
          case 3:
            v7 = "WRITE requests";
            goto LABEL_22;
          case 4:
            v7 = "WRITE_ZEROES requests";
            goto LABEL_22;
          case 5:
            v7 = "FLUSH requests";
            goto LABEL_22;
          case 6:
            v7 = "TRIM requests";
            goto LABEL_22;
          case 7:
            v7 = "RESIZE requests";
LABEL_22:
            snprintf(__str, 0x1EuLL, "%llu", *(this + v4));
            amber::logString(v7, __str, 1);
            break;
          case 8:
            goto LABEL_26;
          case 9:
            v6 = "WRITE bytes";
            goto LABEL_26;
          case 10:
            v6 = "WRITE_ZEROES bytes";
            goto LABEL_26;
          case 11:
            v6 = "TRIM bytes";
            goto LABEL_26;
          case 12:
            v6 = "cache bytes";
            goto LABEL_26;
          case 13:
            v6 = "cache bytes from data device";
            goto LABEL_26;
          case 14:
            v6 = "cache bytes from client (dirty)";
            goto LABEL_26;
          case 15:
            v6 = "cache HIT bytes";
            goto LABEL_26;
          case 16:
            v6 = "cache WAIT bytes";
            goto LABEL_26;
          case 17:
            v6 = "cache MISS bytes";
            goto LABEL_26;
          case 18:
            v6 = "cached DEFER bytes";
            goto LABEL_26;
          case 19:
            v6 = "cache EVICTED bytes";
LABEL_26:
            amber::logSize(v6, v5, 1u);
            break;
          default:
            break;
        }
      }

      ++v4;
    }

    while (v2 != v4);
  }

  v8 = *MEMORY[0x29EDCA608];
}

char *amber::HTTPVerbString(amber *this)
{
  if ((this - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_29EE50118[this - 1];
  }
}

char *amber::compressionAlgorithmString(amber *this)
{
  if (this > 6)
  {
    return 0;
  }

  else
  {
    return off_29EE50148[this];
  }
}

char *amber::blockDeviceRequestCommandString(amber *this)
{
  if ((this - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return off_29EE50180[this - 1];
  }
}

void sub_29697D6BC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v1 + 1168, *v3);
  std::mutex::~mutex((v1 + 1104));
  amber::KnoxUploadAttributes::~KnoxUploadAttributes(v2);
  amber::KnoxContext::~KnoxContext((v1 + 472));
  amber::SyncBlockDevice::~SyncBlockDevice(v1, v5, v6, v7, v8, v9, v10);
  _Unwind_Resume(a1);
}

void amber::KnoxObjectStoreBlockDevice::~KnoxObjectStoreBlockDevice(amber::KnoxObjectStoreBlockDevice *this)
{
  *this = &unk_2A1DE11A0;
  amber::SyncBlockDevice::terminateThreads(this);
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(this + 1168, *(this + 147));
  std::mutex::~mutex((this + 1104));
  *(this + 126) = &unk_2A1DE1008;
  v2 = *(this + 133);
  if (v2)
  {
    *(this + 134) = v2;
    operator delete(v2);
  }

  v3 = *(this + 130);
  if (v3)
  {
    *(this + 131) = v3;
    operator delete(v3);
  }

  if (*(this + 1039) < 0)
  {
    operator delete(*(this + 127));
  }

  amber::JSONCodable::~JSONCodable((this + 1008));
  amber::KnoxContext::~KnoxContext((this + 472));

  amber::SyncBlockDevice::~SyncBlockDevice(this, v4, v5, v6, v7, v8, v9);
}

{
  amber::KnoxObjectStoreBlockDevice::~KnoxObjectStoreBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::KnoxObjectStoreBlockDevice::setAttribute(amber::KnoxObjectStoreBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    if (amber::HTTPContext::isSettableByParentBlockDevice(a2))
    {

      return amber::HTTPContext::setAttribute((this + 472), a2, a3, a4, v12, v13, v14);
    }

    else
    {

      return amber::BlockDevice::setAttribute(this, a2, a3, a4, v12, v13, v14);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "setAttribute", 0xE3, 0, "invalid attribute encoding %u, %u", v11, a2, a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::KnoxObjectStoreBlockDevice::getAttribute(amber::KnoxObjectStoreBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "getAttribute", 0xFD, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if ((a2 - 401) <= 6 && ((1 << (a2 + 111)) & 0x43) != 0)
  {

    return amber::HTTPContext::getAttribute((this + 472), a2, a3, a4, a5, v12, v13);
  }

  if (a2 == 202)
  {
    v15 = *(this + 274);
    *a5 = 4;
    v16 = *(a4 + 2);
    if (!v16)
    {
      return 0;
    }

    if (v16 > 3)
    {
      result = 0;
      **(a4 + 1) = v15;
      return result;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, 4, v16);
    return 0xFFFFFFFFLL;
  }

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::KnoxObjectStoreBlockDevice::loadPrologue(uint64_t a1, uint64_t a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v43 = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = *(a2 + 16);
  v41[0] = &off_2A1DDFC68;
  v41[1] = a2 + 20;
  v41[2] = v9;
  if (amber::hexBytesToStringEnd(v41, &__p, a3, a4, a5, a6, a7) < 0 || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), (amber::KnoxContext::fileDownload((a1 + 472), p_p, a3, 1) & 0x80000000) != 0 || (v17 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(a3, v12, v13, v14, v15, v16, v10), v24 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, v18, v19, v20, v21, v22, v23), (AmberEncryptionContextParseMagic(v17, v24, &v43 + 1, &v43, v25, v26, v27) & 0x80000000) != 0) || (v33 = v43, amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, v28, v29, v30, v31, v32, v10) != v33)))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "loadPrologue", 0x121, 0, "invalid/missing prologue", v10);
    amber::Buffer::resize(a3, 0, v35, v36, v37, v38, v39);
    v34 = 0xFFFFFFFFLL;
  }

  else
  {
    v34 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v34;
}

void sub_29697DC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::KnoxObjectStoreBlockDevice::knoxContainer(uint64_t a1, uint64_t a2, int a3)
{
  std::mutex::lock((a1 + 1104));
  v11 = std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::find<amber::CryptoBlobBase<256u>>(a1 + 1168, a2, v6, v7, v8, v9, v10);
  if (a1 + 1176 == v11)
  {
    memset(&__p, 0, sizeof(__p));
    v18 = *(a2 + 16);
    v24[0] = &off_2A1DDFC68;
    v24[1] = a2 + 20;
    v24[2] = v18;
    amber::hexBytesToStringEnd(v24, &__p, v12, v13, v14, v15, v16);
    if (a3)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      amber::KnoxContainer::openExisting((a1 + 472), p_p, v19);
    }

    v17 = 0;
    v24[0] = a2;
    *(std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>>>::__emplace_unique_key_args<amber::CryptoBlobBase<256u>,std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<256u> const&>,std::tuple<>>(a1 + 1168, a2, &std::piecewise_construct, v24, &v26, v20, v21) + 312) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = *(v11 + 312);
  }

  std::mutex::unlock((a1 + 1104));
  return v17;
}

void sub_29697DD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v18 + 1104));
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxObjectStoreBlockDevice::listContainers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v49 = *MEMORY[0x29EDCA608];
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v8 = (a1 + 1016);
  if (*(a1 + 1039) < 0)
  {
    if (!*(a1 + 1024))
    {
LABEL_37:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "listContainers", 0x158, 0, "no pointer type for container/snapshot queries", a7);
LABEL_39:
      v33 = 0xFFFFFFFFLL;
      goto LABEL_40;
    }

    v8 = *v8;
  }

  else if (!*(a1 + 1039))
  {
    goto LABEL_37;
  }

  if ((amber::KnoxContext::pointerFieldValuesString((a1 + 472), v8, "container-id", &v38) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "listContainers", 0x15A, 0, "get all container-id values", v9);
    goto LABEL_39;
  }

  v10 = v39;
  if (v38 == v39)
  {
    v33 = 0;
  }

  else
  {
    v11 = v47;
    v12 = v38 + 3;
    v13 = 1;
    do
    {
      if (*(v12 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *(v12 - 3), *(v12 - 2));
      }

      else
      {
        v14 = *(v12 - 3);
        v37.__r_.__value_.__r.__words[2] = *(v12 - 1);
        *&v37.__r_.__value_.__l.__data_ = v14;
      }

      v46 = &unk_2A1DDFDD8;
      v47[0] = &unk_2A1DDFE08;
      memset(&v47[1], 0, 256);
      v48 = 0;
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v37;
      }

      else
      {
        v16 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v37.__r_.__value_.__l.__size_;
      }

      v36[0] = v16;
      v36[1] = size;
      LODWORD(v47[1]) = 0;
      v41 = 0;
      v42[0] = &off_2A1DDFDA8;
      v42[1] = &v47[1] + 4;
      v42[2] = 256;
      amber::MutableMemoryView::operator+(v42, 0, v9, &v43);
      bzero(v44, v45);
      v43 = &off_2A1DDFDA8;
      v44 = &v47[1] + 4;
      v45 = 256;
      amber::MutableMemoryView::operator+(&v43, LODWORD(v47[1]), v17, v42);
      v27 = amber::hexStringToBytes(v36, v42, &v41, v18, v19, v20, v21);
      if (v27 < 0 || (amber::CryptoBlobBase<256u>::grow(&v46, v41, v22, v23, v24, v25, v26) & 0x80000000) != 0)
      {
        v27 = -1;
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v37.__r_.__value_.__l.__size_;
      }

      if (v27 == v28)
      {
        v29 = v11;
        v30 = *(a2 + 8);
        if (v30 >= *(a2 + 16))
        {
          v31 = std::vector<amber::CryptoBlobBase<256u>>::__emplace_back_slow_path<amber::CryptoBlobBase<256u> const&>(a2, &v46, v22, v23, v24, v25, v26);
        }

        else
        {
          amber::CryptoBlobBase<256u>::CryptoBlobBase(*(a2 + 8), &v47[1] + 4, LODWORD(v47[1]), v23, v24, v25, v26);
          v31 = v30 + 280;
          *(a2 + 8) = v30 + 280;
        }

        v11 = v29;
        *(a2 + 8) = v31;
      }

      else
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "listContainers", 0x15E, 0, "invalid hex string", v26);
        v13 = 0;
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (v27 != v28)
      {
        break;
      }

      v32 = v12 == v10;
      v12 += 3;
    }

    while (!v32);
    if (v13)
    {
      v33 = 0;
    }

    else
    {
      v33 = 0xFFFFFFFFLL;
    }
  }

LABEL_40:
  v46 = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
  v34 = *MEMORY[0x29EDCA608];
  return v33;
}

void sub_29697E0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27)
{
  a27 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxObjectStoreBlockDevice::listContainerSnapshots(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v41[75] = *MEMORY[0x29EDCA608];
  v31[0] = &unk_2A1DE0D30;
  v31[1] = &unk_2A1DE0D70;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  memset(&v30, 0, sizeof(v30));
  if ((*(a1 + 1039) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 1039))
    {
      goto LABEL_3;
    }

LABEL_15:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0x16E, 0, "no pointer type for container/snapshot queries", a7);
LABEL_19:
    v27 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  if (!*(a1 + 1024))
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!*(a2 + 16))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0x16F, 0, "invalid container id", a7);
    goto LABEL_19;
  }

  std::string::append(&v30, "container-id=");
  v9 = *(a2 + 16);
  v41[0] = &off_2A1DDFC68;
  v41[1] = a2 + 20;
  v41[2] = v9;
  amber::hexBytesToStringEnd(v41, &v30, v10, v11, v12, v13, v14);
  std::string::append(&v30, "&blob-type=prologue");
  v15 = (a1 + 1016);
  if (*(a1 + 1039) < 0)
  {
    v15 = *v15;
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v30;
  }

  else
  {
    v16 = v30.__r_.__value_.__r.__words[0];
  }

  if ((amber::KnoxContext::pointerSearch((a1 + 472), v15, v16) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0x177, 0, "Knox query", v17);
    goto LABEL_19;
  }

  v18 = v32;
  if (v32 != v33)
  {
    amber::ObjectStorePath::ObjectStorePath(v41);
    v19 = (v18 + 96);
    if (*(v18 + 119) < 0)
    {
      v19 = *v19;
    }

    v20 = strlen(v19);
    amber::ProxyBuffer::ProxyBuffer(v37, v19, v20, v21, v22, v23, v24);
    amber::Buffer::constBuf(v37, v25, &v35);
    amber::ConstMemoryView::view(&v35, v38, v39 - v38, v26, &v40);
    amber::JSONInputStream::JSONInputStream(v36, &v40);
  }

  v27 = 0;
LABEL_20:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  amber::ArrayObject<amber::KnoxPointer>::~ArrayObject(v31);
  v28 = *MEMORY[0x29EDCA608];
  return v27;
}

void sub_29697E8D0(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, ...)
{
  va_start(va, a8);
  amber::ObjectStorePath::~ObjectStorePath(&STACK[0x208]);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  amber::ArrayObject<amber::KnoxPointer>::~ArrayObject(va);
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxObjectStoreBlockDevice::beginWriteTransaction(uint64_t a1, uint64_t a2, const amber::KnoxUploadAttributes *a3)
{
  if (!amber::KnoxObjectStoreBlockDevice::knoxContainer(a1, a2, 1))
  {
    std::mutex::lock((a1 + 1104));
    memset(&__p, 0, sizeof(__p));
    v8 = *(a2 + 16);
    v15[0] = &off_2A1DDFC68;
    v15[1] = a2 + 20;
    v15[2] = v8;
    amber::hexBytesToStringEnd(v15, &__p, v9, v10, v11, v12, v13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    amber::KnoxContainer::openNew((a1 + 472), p_p, (a1 + 1008), a3);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "beginWriteTransaction", 0x199, 0, "Knox container API doesn't allow modifying existing containers yet", v6);
  return 0xFFFFFFFFLL;
}

void sub_29697EB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v18 + 1104));
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxObjectStoreBlockDevice::commitWriteTransaction(uint64_t a1, uint64_t a2)
{
  v2 = amber::KnoxObjectStoreBlockDevice::knoxContainer(a1, a2, 0);
  if (v2)
  {
    if ((amber::KnoxContainer::commit(v2) & 0x80000000) == 0)
    {
      return 0;
    }

    v5 = "updating container state";
    v6 = 444;
  }

  else
  {
    v5 = "no active transaction";
    v6 = 438;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "commitWriteTransaction", v6, 0, v5, v3);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxObjectStoreBlockDevice::executeRead(amber::KnoxObjectStoreBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v54[0] = &unk_2A1DDFD28;
  v54[2] = 0;
  v54[3] = 0;
  v54[1] = off_2A1DDFD48;
  v54[5] = 0;
  v54[6] = 0;
  v54[4] = &off_2A1DDFDA8;
  v54[7] = &off_2A1DDFC68;
  v55 = 0u;
  v56 = 0u;
  v57 = 1;
  v58 = 0;
  v5 = *(a3 + 14);
  amber::BlockDeviceEvent::BlockDeviceEvent(v53, 27, a3);
  if (!*(a3 + 30) || !*(a3 + 100) || !*(a3 + 170))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "executeRead", 0x1DC, 0, "request has no storage attributes", v6);
    v20 = 22;
    goto LABEL_11;
  }

  v7 = amber::KnoxObjectStoreBlockDevice::knoxContainer(this, a3 + 104, 1);
  amber::BlockDeviceEvent::sendBegin(v53);
  if (!v7)
  {
    memset(&__p, 0, sizeof(__p));
    v29 = *(a3 + 100);
    v49 = &off_2A1DDFC68;
    v50 = a3 + 404;
    v51 = v29;
    amber::hexBytesToStringEnd(&v49, &__p, v8, v9, v10, v11, v12);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v19 = amber::KnoxContext::fileDownload((this + 472), p_p, v54, 1);
    if (v19 < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "executeRead", 0x1ED, 0, "knox download (file)", v18);
      goto LABEL_19;
    }

LABEL_17:
    v20 = 0;
    goto LABEL_20;
  }

  memset(&__p, 0, sizeof(__p));
  v13 = *(a3 + 100);
  v49 = &off_2A1DDFC68;
  v50 = a3 + 404;
  v51 = v13;
  amber::hexBytesToStringEnd(&v49, &__p, v8, v9, v10, v11, v12);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  v19 = amber::KnoxContainer::fileDownload(v7, v14, v54);
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "executeRead", 0x1E7, 0, "knox download (container)", v18);
LABEL_19:
  v20 = 5;
LABEL_20:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v19 < 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    amber::BlockDeviceEvent::sendEnd(v53);
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(v54, v31, v32, v33, v34, v35, v36) < v5)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "executeRead", 0x1F2, 0, "data size mismatch", v42);
      v20 = 5;
      goto LABEL_11;
    }

    v43 = *(a3 + 8);
    v44 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v54, v37, v38, v39, v40, v41, v42);
    memcpy(v43, v44, v5);
    if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v45, v46, v47, v48) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "executeRead", 0x1F4, 0, "reply data", v18);
    }

    goto LABEL_28;
  }

  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  if (!v20)
  {
    v21 = 0;
    goto LABEL_12;
  }

LABEL_11:
  amber::BlockDeviceRequest::sendReply(a3, v20 | 0x80000000, 0, v15, v16, v17, v18);
  v21 = 0xFFFFFFFFLL;
LABEL_12:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v53);
  amber::Buffer::~Buffer(v54, v22, v23, v24, v25, v26, v27);
  return v21;
}

void sub_29697EF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  amber::BlockDeviceEvent::~BlockDeviceEvent(&a19);
  amber::Buffer::~Buffer(&a21, v22, v23, v24, v25, v26, v27);
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxObjectStoreBlockDevice::executeWrite(amber::KnoxObjectStoreBlockDevice *this, unsigned int a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::ProxyBuffer::ProxyBuffer(v39, a3[8], *(a3 + 14), a4, a5, a6, a7);
  amber::BlockDeviceEvent::BlockDeviceEvent(v38, 28, a3);
  if (*(a3 + 30) && *(a3 + 100) && *(a3 + 170))
  {
    v10 = amber::KnoxObjectStoreBlockDevice::knoxContainer(this, (a3 + 13), 0);
    amber::BlockDeviceEvent::sendBegin(v38);
    if (v10)
    {
      memset(&__p, 0, sizeof(__p));
      v16 = *(a3 + 100);
      v42[0] = &off_2A1DDFC68;
      v42[1] = a3 + 404;
      v42[2] = v16;
      p_p = &__p;
      amber::hexBytesToStringEnd(v42, &__p, v11, v12, v13, v14, v15);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      amber::Buffer::constBuf(v39, v18, v42);
      amber::ConstMemoryView::view(v42, v40, v41 - v40, v19, v36);
      v24 = amber::KnoxContainer::fileUpload(v10, p_p, "AEBD-STORAGE-TAG-256", v36);
      if (v24 < 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "executeWrite", 0x218, 0, "knox upload (container)", v23);
        v25 = 5;
      }

      else
      {
        v25 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v35 = v25;
      if ((v24 & 0x80000000) == 0)
      {
        amber::BlockDeviceEvent::sendEnd(v38);
        v35 = 0;
      }

      if (v24 >= 0)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25 | 0x80000000;
      }

      if (v35)
      {
        v27 = 0xFFFFFFFFLL;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "executeWrite", 0x21C, 0, "write transaction is required", v15);
      v27 = 0xFFFFFFFFLL;
      v26 = -2147483643;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/KnoxObjectStoreBlockDevice.cpp", "executeWrite", 0x20D, 0, "request has no storage attributes", v9);
    v26 = -2147483626;
    v27 = 0xFFFFFFFFLL;
  }

  amber::BlockDeviceRequest::sendReply(a3, v26, 0, v20, v21, v22, v23);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v38);
  amber::Buffer::~Buffer(v39, v28, v29, v30, v31, v32, v33);
  return v27;
}

void sub_29697F1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  amber::BlockDeviceEvent::~BlockDeviceEvent(&a18);
  amber::Buffer::~Buffer(&a20, v21, v22, v23, v24, v25, v26);
  _Unwind_Resume(a1);
}

void sub_29697F2AC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29697F290);
}

uint64_t std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>>>::__emplace_unique_key_args<amber::CryptoBlobBase<256u>,std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<256u> const&>,std::tuple<>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  result = *std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::__find_equal<amber::CryptoBlobBase<256u>>(a1, &v8, a2, a4, a5, a6, a7);
  if (!result)
  {
    std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,amber::KnoxContainer *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<256u> const&>,std::tuple<>>();
  }

  return result;
}

void sub_29697F3F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<amber::CryptoBlobBase<256u>>::__emplace_back_slow_path<amber::CryptoBlobBase<256u> const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 8) - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3) > v8)
  {
    v8 = 0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 16) - *a1) >> 3) >= 0x75075075075075)
  {
    v11 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v11 = v8;
  }

  v24 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::CryptoBlobBase<256u>>>(a1, v11);
  }

  v21 = 0;
  v22 = 280 * v7;
  v23 = 280 * v7;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(280 * v7, a2 + 20, *(a2 + 16), a4, a5, a6, a7);
  *&v23 = 280 * v7 + 280;
  v12 = *(a1 + 8);
  v13 = 280 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::CryptoBlobBase<256u>>,amber::CryptoBlobBase<256u>*>(a1, *a1, v12, v13, v14, v15, v16);
  v17 = *a1;
  *a1 = v13;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<amber::CryptoBlobBase<256u>>::~__split_buffer(&v21);
  return v20;
}

void sub_29697F540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<amber::CryptoBlobBase<256u>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::CryptoBlobBase<256u>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::CryptoBlobBase<256u>>,amber::CryptoBlobBase<256u>*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 != a3)
  {
    v9 = a2;
    v10 = 0;
    v11 = a2 + 20;
    do
    {
      result = amber::CryptoBlobBase<256u>::CryptoBlobBase(a4 + v10, v11, *(v11 - 4), a4, a5, a6, a7);
      v13 = v11 + 260;
      v11 += 280;
      v10 += 280;
    }

    while (v13 != a3);
    if (v9 != a3)
    {
      v14 = v9;
      do
      {
        result = (**v9)(v9);
        v9 += 35;
        v14 += 35;
      }

      while (v9 != a3);
    }
  }

  return result;
}

void sub_29697F660(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::CryptoBlobBase<256u>>,amber::CryptoBlobBase<256u>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<amber::CryptoBlobBase<256u>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 280;
    (**(i - 280))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t amber::HTTPHeadersAppendWithFormat(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  va_copy(v14, va);
  v3 = vsnprintf(0, 0, __format, va);
  v5 = 0;
  if (v3 < 0)
  {
LABEL_6:
    v9 = "vsnprintf";
    v10 = 27;
  }

  else
  {
    v6 = 1;
    while (1)
    {
      if ((v6 & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v14, v5);
        operator new();
      }

      v7 = (v3 + 1);
      v8 = reallocf(v5, v7);
      v5 = v8;
      if (!v8)
      {
        break;
      }

      va_copy(v14, va);
      v3 = vsnprintf(v8, v7, __format, va);
      v6 = 0;
      if (v3 < 0)
      {
        goto LABEL_6;
      }
    }

    v11 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././Memory/./Malloc.hpp", "reallocf", 0x41, *v11, "realloc", v12);
    v9 = "malloc";
    v10 = 32;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "HTTPHeadersAppendWithFormat", v10, 0, v9, v4);
  free(v5);
  return 0xFFFFFFFFLL;
}

void sub_29697F86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29697F900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::HTTPHeadersLookup(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 8);
  if (v7 == a1)
  {
    return 0;
  }

  v8 = v6;
  while (1)
  {
    v9 = *(v7 + 39);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
    }

    else
    {
      v10 = (v7 + 16);
    }

    if (v9 > v8 && !strncasecmp(v10, __s, v8) && v10[v8] == 58)
    {
      break;
    }

    v7 = *(v7 + 8);
    if (v7 == a1)
    {
      return 0;
    }
  }

  v12 = MEMORY[0x29EDCA600];
  while (v9 - 1 != v8)
  {
    v13 = v10[v8 + 1];
    if ((v13 & 0x80000000) != 0)
    {
      v14 = __maskrune(v13, 0x4000uLL);
    }

    else
    {
      v14 = *(v12 + 4 * v13 + 60) & 0x4000;
    }

    ++v8;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  v8 = v9;
LABEL_19:
  MEMORY[0x29C25BF10](a3, &v10[v8], v9 - v8);
  return 1;
}

void amber::HTTPContext::HTTPContext(amber::HTTPSession *this, uint64_t a2, uint64_t (*a3)(uint64_t, amber::HTTPSession *, void), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE12A8;
  *(this + 1) = a5;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = 850045863;
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
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 40) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  if (atomic_load_explicit(&amber::HTTPContext::HTTPContext(void *,int (*)(void *,AmberObject_impl *,unsigned long long),unsigned int,unsigned long long)::backend_init_flag, memory_order_acquire) != -1)
  {
    v14 = &v12;
    v13 = &v14;
    std::__call_once(&amber::HTTPContext::HTTPContext(void *,int (*)(void *,AmberObject_impl *,unsigned long long),unsigned int,unsigned long long)::backend_init_flag, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<amber::HTTPContext::HTTPContext(void *,int (*)(void *,AmberObject_impl *,unsigned long long),unsigned int,unsigned long long)::$_0 &&>>);
  }

  if (a4)
  {
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "HTTPContext", 0x89, 0, "invalid request_pool_size", a7);
    a4 = 1;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  if ((a3(a2, this, 0) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "HTTPContext", 0x8C, 0, "context proc returned an error", v11);
  }

LABEL_9:
  amber::HTTPSession::create(this, a4);
}

void sub_29697FC5C(_Unwind_Exception *a1)
{
  amber::HTTPContext::S3Credentials::~S3Credentials((v1 + 400));
  if (*(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  if (*(v1 + 359) < 0)
  {
    operator delete(*(v1 + 336));
  }

  if (*(v1 + 335) < 0)
  {
    operator delete(*(v1 + 312));
  }

  if (*(v1 + 311) < 0)
  {
    operator delete(*(v1 + 288));
  }

  if (*(v1 + 287) < 0)
  {
    operator delete(*(v1 + 264));
  }

  if (*(v1 + 263) < 0)
  {
    operator delete(*(v1 + 240));
  }

  if (*(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
  }

  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  std::mutex::~mutex(v2);
  _Unwind_Resume(a1);
}

void amber::HTTPContext::~HTTPContext(amber::HTTPContext *this)
{
  *this = &unk_2A1DE12A8;
  v2 = *(this + 66);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  if (*(this + 471) < 0)
  {
    operator delete(*(this + 56));
  }

  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  if (*(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 263) < 0)
  {
    operator delete(*(this + 30));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  std::mutex::~mutex((this + 32));
}

{
  amber::HTTPContext::~HTTPContext(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::HTTPContext::getAttribute(amber::HTTPContext *this, amber::BaseObject *a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  v9 = a2;
  if (amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    switch(v9)
    {
      case 407:
        if (((*(*this + 40))(this) & 0x80000000) != 0)
        {
          amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "getAttribute", 0xC4, 0, "refresh DAW token failed", v18);
        }

        v13 = 336;
        break;
      case 408:
        if (((*(*this + 48))(this) & 0x80000000) != 0)
        {
          amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "getAttribute", 0xBD, 0, "refresh DAW token failed", v17);
        }

        v13 = 368;
        break;
      case 409:
        v12 = *(this + 167);
        if (v12 < 0)
        {
          v12 = *(this + 19);
        }

        if (!v12)
        {
          v25 = *(this + 3);
          if (v25)
          {
            if ((v25(*(this + 2), this, 4) & 0x80000000) != 0)
            {
              v14 = "context proc returned an error";
              v15 = 182;
              goto LABEL_10;
            }
          }
        }

        v13 = 144;
        break;
      default:
        if ((v9 - 413) <= 4 && ((*(*this + 56))(this) & 0x80000000) != 0)
        {
          amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "getAttribute", 0xCF, 0, "refresh S3 credentials failed", v19);
        }

        if ((v9 - 401) > 0x10)
        {
          return 0xFFFFFFFFLL;
        }

        v13 = *&asc_296A14D18[8 * (v9 - 401)];
        break;
    }

    v20 = this + v13;
    std::mutex::lock((this + 32));
    v22 = v20[23];
    if ((v22 & 0x8000000000000000) != 0)
    {
      v22 = *(v20 + 1);
      if (!v22)
      {
LABEL_33:
        v16 = 0xFFFFFFFFLL;
LABEL_36:
        std::mutex::unlock((this + 32));
        return v16;
      }

      v20 = *v20;
    }

    else if (!v20[23])
    {
      goto LABEL_33;
    }

    if ((v22 & 0x8000000000000000) != 0 || !v20)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v21);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    *a5 = v22;
    v23 = *(a4 + 2);
    if (v23)
    {
      if (v23 < v22)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v21, v22, v23);
        goto LABEL_33;
      }

      memcpy(*(a4 + 1), v20, v22);
    }

    v16 = 0;
    goto LABEL_36;
  }

  v14 = "invalid attribute encoding";
  v15 = 168;
LABEL_10:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "getAttribute", v15, 0, v14, v11);
  return 0xFFFFFFFFLL;
}

void sub_296980244(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t amber::HTTPContext::setAttribute(amber::HTTPContext *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a2;
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "setAttribute", 0x110, 0, "invalid attribute encoding", v10);
    return 0xFFFFFFFFLL;
  }

  if ((v8 - 401) > 0x10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = this + *&asc_296A14D18[8 * (v8 - 401)];
  std::mutex::lock((this + 32));
  if (*(a4 + 2))
  {
    v12 = MEMORY[0x29C25BF10](v11, *(a4 + 1));
  }

  else if (v11[23] < 0)
  {
    **v11 = 0;
    *(v11 + 1) = 0;
  }

  else
  {
    *v11 = 0;
    v11[23] = 0;
  }

  if (v8 == 407)
  {
    v14 = amber::realTime(v12);
    v15 = 360;
    goto LABEL_16;
  }

  if (v8 == 408)
  {
    v14 = amber::realTime(v12);
    v15 = 392;
LABEL_16:
    *(this + v15) = v14;
    goto LABEL_17;
  }

  if ((v8 - 413) <= 4)
  {
    v14 = amber::realTime(v12);
    v15 = 520;
    goto LABEL_16;
  }

LABEL_17:
  std::mutex::unlock((this + 32));
  return 0;
}

uint64_t amber::HTTPContext::httpEnqueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = (*(**(a1 + 528) + 16))(*(a1 + 528));
  if (v18)
  {
    v20 = v18;
    if (((*(*v18 + 16))(v18, a2, a3, a4, a5, a6, a7, a8, a9, a10) & 0x80000000) == 0)
    {
      (*(**(a1 + 528) + 32))(*(a1 + 528), v20);
      return 0;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "httpEnqueue", 0x161, 0, "prepare request", v21);
    (*(**(a1 + 528) + 24))(*(a1 + 528), v20);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "httpEnqueue", 0x15C, 0, "HTTPContext: acquire request", v19);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::HTTPContext::httpPerformBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v19 = *MEMORY[0x29EDCA608];
  v14[0] = xmmword_296A14210;
  memset(&v14[1], 0, 48);
  v15 = 0;
  v16.__cv_.__sig = 1018212795;
  memset(v16.__cv_.__opaque, 0, sizeof(v16.__cv_.__opaque));
  v17 = a7;
  v18 = 0;
  v10 = amber::HTTPContext::httpEnqueue(a1, a2, a3, a4, a5, a6, a8, a9, v14, SemAndResponsePtr::httpCompletionProc);
  if (v10 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "httpPerformBase", 0x180, 0, "httpEnqueue", v9);
  }

  else
  {
    amber::Sem::acquire(v14);
  }

  v11 = v18;
  std::condition_variable::~condition_variable(&v16);
  std::mutex::~mutex((v14 + 8));
  v12 = *MEMORY[0x29EDCA608];
  return (((v10 < 0) | v11) << 31 >> 31);
}

void sub_296980648(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 72));
  std::mutex::~mutex((v1 | 8));
  _Unwind_Resume(a1);
}

void SemAndResponsePtr::httpCompletionProc(amber::Sem *this, uint64_t a2)
{
  *(this + 128) = *(a2 + 24);
  v3 = *(this + 15);
  if (v3)
  {
    if (v3 != a2)
    {
      std::list<std::string>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::string,void *>,std::__list_const_iterator<std::string,void *>>(*(this + 15), *(a2 + 8), a2);
    }

    *(v3 + 24) = *(a2 + 24);
  }

  amber::Sem::release(this);
}

uint64_t amber::HTTPContext::refreshDAWTokenIfNeeded(amber::HTTPContext *this)
{
  v3.n128_f64[0] = amber::realTime(this);
  v4 = *(this + 391);
  if (v4 < 0)
  {
    if (!*(this + 47))
    {
      goto LABEL_7;
    }
  }

  else if (!*(this + 391))
  {
    goto LABEL_7;
  }

  if (*(this + 49) + 3600.0 > v3.n128_f64[0])
  {
    return 0;
  }

LABEL_7:
  v6 = *(this + 3);
  if (v6)
  {
    if ((v6(*(this + 2), this, 2, v3) & 0x80000000) != 0)
    {
      v7 = "context proc returned an error";
      v8 = 397;
      goto LABEL_16;
    }

    LOBYTE(v4) = *(this + 391);
  }

  if ((v4 & 0x80) != 0)
  {
    if (*(this + 47))
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 1;
  }

  v7 = "DAW token not set";
  v8 = 398;
LABEL_16:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "refreshDAWTokenIfNeeded", v8, 0, v7, v2, v3.n128_f64[0]);
  return 0xFFFFFFFFLL;
}

uint64_t amber::HTTPContext::refreshWestgateTokenIfNeeded(amber::HTTPContext *this)
{
  v3.n128_f64[0] = amber::realTime(this);
  v4 = *(this + 359);
  if (v4 < 0)
  {
    if (!*(this + 43))
    {
      goto LABEL_7;
    }
  }

  else if (!*(this + 359))
  {
    goto LABEL_7;
  }

  if (*(this + 45) + 3600.0 > v3.n128_f64[0])
  {
    return 0;
  }

LABEL_7:
  v6 = *(this + 3);
  if (v6)
  {
    if ((v6(*(this + 2), this, 1, v3) & 0x80000000) != 0)
    {
      v7 = "context proc returned an error";
      v8 = 415;
      goto LABEL_16;
    }

    LOBYTE(v4) = *(this + 359);
  }

  if ((v4 & 0x80) != 0)
  {
    if (*(this + 43))
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 1;
  }

  v7 = "Westgate token not set";
  v8 = 416;
LABEL_16:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "refreshWestgateTokenIfNeeded", v8, 0, v7, v2, v3.n128_f64[0]);
  return 0xFFFFFFFFLL;
}

uint64_t amber::HTTPContext::refreshS3CredentialsIfNeeded(amber::HTTPContext *this)
{
  v3.n128_f64[0] = amber::realTime(this);
  v4 = *(this + 471);
  if (v4 < 0)
  {
    if (!*(this + 57))
    {
      goto LABEL_11;
    }
  }

  else if (!*(this + 471))
  {
    goto LABEL_11;
  }

  if ((*(this + 495) & 0x8000000000000000) != 0)
  {
    if (!*(this + 60))
    {
      goto LABEL_11;
    }
  }

  else if (!*(this + 495))
  {
    goto LABEL_11;
  }

  if (*(this + 65) + 3600.0 > v3.n128_f64[0])
  {
    return 0;
  }

LABEL_11:
  v6 = *(this + 3);
  if (!v6)
  {
    goto LABEL_14;
  }

  if ((v6(*(this + 2), this, 8, v3) & 0x80000000) == 0)
  {
    LOBYTE(v4) = *(this + 471);
LABEL_14:
    if ((v4 & 0x80) != 0)
    {
      if (!*(this + 57))
      {
        goto LABEL_23;
      }
    }

    else if (!v4)
    {
      goto LABEL_23;
    }

    if ((*(this + 495) & 0x8000000000000000) != 0)
    {
      if (*(this + 60))
      {
        return 1;
      }
    }

    else if (*(this + 495))
    {
      return 1;
    }

LABEL_23:
    v7 = "S3 credentials not set";
    v8 = 425;
    goto LABEL_24;
  }

  v7 = "context proc returned an error";
  v8 = 424;
LABEL_24:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPContext.cpp", "refreshS3CredentialsIfNeeded", v8, 0, v7, v2);
  return 0xFFFFFFFFLL;
}

void amber::HTTPContext::S3Credentials::~S3Credentials(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::list<std::string>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::string,void *>,std::__list_const_iterator<std::string,void *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      std::string::operator=((v6 + 16), (v4 + 16));
      v4 = *(v4 + 8);
      v6 = *(v6 + 8);
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    return std::list<std::string>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::string,void *>,std::__list_const_iterator<std::string,void *>>(a1, a1, v4, a3);
  }

  else
  {

    return std::list<std::string>::erase(a1, v6, a1);
  }
}

uint64_t std::list<std::string>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::string,void *>,std::__list_const_iterator<std::string,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
  }

  return a2;
}

void sub_296980BCC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v3 = v2;
    v2 = *v2;
    std::__list_imp<std::string>::__delete_node[abi:ne200100](v1, v3);
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::list<std::string>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *a2;
    v6[1] = v5;
    *v5 = v6;
    do
    {
      v7 = *(a2 + 8);
      --*(a1 + 16);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, a2);
      a2 = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

BOOL amber::DirectoryObjectStore::compareAccessTime(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a2 + 88);
  v4 = v2 < v3;
  if (v2 == v3)
  {
    return *(a1 + 96) < *(a2 + 96);
  }

  return v4;
}

amber::DirectoryObjectStore *amber::DirectoryObjectStore::DirectoryObjectStore(amber::DirectoryObjectStore *this, int a2, char a3)
{
  *this = &unk_2A1DE1310;
  *(this + 2) = a2;
  *(this + 12) = a3;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 6) = 850045863;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 14) = 1018212795;
  *(this + 13) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  *(this + 22) = 0;
  *(this + 21) = 0;
  v4 = this + 168;
  *(this + 20) = this + 168;
  v5 = (this + 160);
  *(this + 24) = 0;
  v43 = this + 192;
  *(this + 23) = this + 192;
  v6 = (this + 184);
  *(this + 25) = 0;
  *(this + 27) = 0;
  *(this + 26) = this + 216;
  *(this + 232) = 0u;
  v7 = (this + 232);
  *(this + 248) = 0u;
  v8 = (this + 248);
  *(this + 28) = 0;
  v47[0] = &unk_2A1DE1340;
  v47[1] = this;
  if ((amber::DirectoryVisitor::visit(v47, a2) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "DirectoryObjectStore", 0x51, 0, "enumerate containers", v9);
    v34 = *v5;
    if (*v5 != v4)
    {
      do
      {
        v35 = *(v34 + 11);
        if (v35)
        {
          amber::DirectoryObjectStore::Object::~Object(v35);
          MEMORY[0x29C25C000]();
        }

        v36 = *(v34 + 1);
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = *(v34 + 2);
            v13 = *v37 == v34;
            v34 = v37;
          }

          while (!v13);
        }

        v34 = v37;
      }

      while (v37 != v4);
    }

    v38 = *v6;
    if (*v6 != v43)
    {
      do
      {
        v39 = *(v38 + 11);
        if (v39)
        {
          std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v39 + 56, *(v39 + 64));
          *v39 = &unk_2A1DE1390;
          *(v39 + 8) = &unk_2A1DE13C0;
          *(v39 + 20) = 0u;
          *(v39 + 36) = 0u;
          MEMORY[0x29C25C000](v39, 0x10A0C40E76769D1);
        }

        v40 = *(v38 + 1);
        if (v40)
        {
          do
          {
            v41 = v40;
            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          do
          {
            v41 = *(v38 + 2);
            v13 = *v41 == v38;
            v38 = v41;
          }

          while (!v13);
        }

        v38 = v41;
      }

      while (v41 != v43);
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "DirectoryObjectStore", 0x77, 0, "DirectoryObjectStore failed to initialize", v33);
    exception = __cxa_allocate_exception(8uLL);
    *exception = "DirectoryObjectStore::DirectoryObjectStore";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  v10 = *v5;
  if (*v5 != v4)
  {
    do
    {
      atomic_fetch_add_explicit(v7, *(*(v10 + 11) + 80), memory_order_relaxed);
      v11 = *(v10 + 1);
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
          v12 = *(v10 + 2);
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != v4);
  }

  if (*(this + 12))
  {
    __p = 0;
    v45 = 0;
    v46 = 0;
    std::vector<amber::IOSegment *>::reserve(&__p, *(this + 22));
    v14 = *v5;
    if (*v5 == v4)
    {
      v15 = v45;
    }

    else
    {
      v15 = v45;
      do
      {
        v16 = *(v14 + 11);
        if (v15 >= v46)
        {
          v17 = (v15 - __p) >> 3;
          if ((v17 + 1) >> 61)
          {
            std::vector<DERNode>::__throw_length_error[abi:ne200100]();
          }

          v18 = (v46 - __p) >> 2;
          if (v18 <= v17 + 1)
          {
            v18 = v17 + 1;
          }

          if (v46 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<amber::IOSegment *>>(&__p, v19);
          }

          v20 = (8 * v17);
          *v20 = v16;
          v15 = (8 * v17 + 8);
          v21 = v20 - (v45 - __p);
          memcpy(v21, __p, v45 - __p);
          v22 = __p;
          __p = v21;
          v45 = v15;
          v46 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v15 = v16;
          v15 += 8;
        }

        v45 = v15;
        v23 = *(v14 + 1);
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = *(v14 + 2);
            v13 = *v24 == v14;
            v14 = v24;
          }

          while (!v13);
        }

        v14 = v24;
      }

      while (v24 != v4);
    }

    v25 = 126 - 2 * __clz((v15 - __p) >> 3);
    v48 = amber::DirectoryObjectStore::compareAccessTime;
    if (v15 == __p)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,false>(__p, v15, &v48, v26, 1);
    *v8 = 0;
    v8[1] = 0;
    v27 = __p;
    v28 = v45;
    if (__p != v45)
    {
      v29 = (this + 256);
      v30 = __p;
      do
      {
        v31 = *v30++;
        *(v31 + 112) = *v29;
        *(v31 + 104) = 0;
        *v29 = v31;
        *v8 = v31;
        v29 = (v31 + 104);
      }

      while (v30 != v28);
    }

    if (v27)
    {
      v45 = v27;
      operator delete(v27);
    }
  }

  return this;
}

void sub_296981184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::condition_variable *a9, std::mutex *a10, uint64_t a11, uint64_t a12, void **a13, void **a14, void *__p, uint64_t a16)
{
  std::__tree<amber::CryptoBlobBase<32u>>::destroy(a12, *a13);
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(a11, *a14);
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v16, *v17);
  std::condition_variable::~condition_variable(a9);
  std::mutex::~mutex(a10);
  _Unwind_Resume(a1);
}

void amber::DirectoryObjectStore::~DirectoryObjectStore(amber::DirectoryObjectStore *this)
{
  *this = &unk_2A1DE1310;
  v2 = this + 160;
  v3 = *(this + 20);
  v4 = this + 168;
  if (v3 != this + 168)
  {
    do
    {
      v5 = *(v3 + 11);
      if (v5)
      {
        amber::DirectoryObjectStore::Object::~Object(v5);
        MEMORY[0x29C25C000]();
      }

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = *(this + 23);
  if (v9 != (this + 192))
  {
    do
    {
      v10 = *(v9 + 11);
      if (v10)
      {
        std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v10 + 56, *(v10 + 64));
        *v10 = &unk_2A1DE1390;
        *(v10 + 8) = &unk_2A1DE13C0;
        *(v10 + 20) = 0u;
        *(v10 + 36) = 0u;
        MEMORY[0x29C25C000](v10, 0x10A0C40E76769D1);
      }

      v11 = *(v9 + 1);
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
          v12 = *(v9 + 2);
          v8 = *v12 == v9;
          v9 = v12;
        }

        while (!v8);
      }

      v9 = v12;
    }

    while (v12 != (this + 192));
  }

  std::__tree<amber::CryptoBlobBase<32u>>::destroy(this + 208, *(this + 27));
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(this + 184, *(this + 24));
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v2, *(this + 21));
  std::condition_variable::~condition_variable((this + 112));
  std::mutex::~mutex((this + 48));
}

{
  amber::DirectoryObjectStore::~DirectoryObjectStore(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DirectoryObjectStore::load(amber::DirectoryObjectStore *this, const amber::ObjectStorePath *a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  *&v67[36] = *MEMORY[0x29EDCA608];
  v11 = *(a2 + 8);
  v63[0] = &off_2A1DDFC68;
  v63[1] = a2 + 36;
  v64 = v11;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(v65, v63, a3, a4, a5, a6, a7);
  v12 = *(a2 + 78);
  __p.__r_.__value_.__r.__words[0] = &off_2A1DDFC68;
  __p.__r_.__value_.__l.__size_ = a2 + 316;
  __p.__r_.__value_.__r.__words[2] = v12;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(v63, &__p, v13, v14, v15, v16, v17);
  if (*(this + 12) == 1)
  {
    __p.__r_.__value_.__r.__words[0] = this + 24;
    __p.__r_.__value_.__s.__data_[8] = 1;
    amber::RWSem::acquireAsWriter((this + 24));
    v23 = std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::find<amber::CryptoBlobBase<32u>>(this + 160, v63, v18, v19, v20, v21, v22);
    if ((this + 168) != v23)
    {
      v24 = v23[11];
      v25 = *(v24 + 104);
      v26 = *(v24 + 112);
      v27 = (v25 + 112);
      if (!v25)
      {
        v27 = (this + 248);
      }

      *v27 = v26;
      if (v26)
      {
        v28 = (v26 + 104);
      }

      else
      {
        v28 = (this + 256);
      }

      *v28 = v25;
      *(v24 + 104) = 0;
      *(v24 + 112) = 0;
      v29 = *(this + 31);
      if (v29)
      {
        *(v29 + 104) = v24;
      }

      *(v24 + 112) = v29;
      *(this + 31) = v24;
    }

    amber::RWSemLock::~RWSemLock(&__p);
  }

  v60 = (this + 24);
  v61 = 0;
  amber::RWSem::acquireAsReader((this + 24));
  v35 = std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::find<amber::CryptoBlobBase<32u>>(this + 160, v63, v30, v31, v32, v33, v34);
  if ((this + 168) == v35)
  {
    v38 = 0;
  }

  else
  {
    v37 = *(v35[11] + 80);
    if ((v7 & 1) != 0 || v37 == *(a2 + 148))
    {
      memset(&__p, 0, sizeof(__p));
      v59[0] = &off_2A1DDFC68;
      v59[1] = v67;
      v59[2] = v66;
      v58[0] = &off_2A1DDFC68;
      v58[1] = &v64 + 4;
      v58[2] = v64;
      if ((amber::DirectoryObjectStore::getObjectPath(this, v59, v58, *(a2 + 144), &__p, 0) & 0x80000000) != 0 || (amber::Buffer::resize(a3, 0, v39, v40, v41, v42, v43) & 0x80000000) != 0 || (amber::Buffer::reserveEndCapacity(a3, v37, v44, v45, v46, v47, v43) & 0x80000000) != 0 || ((v48 = SHIBYTE(__p.__r_.__value_.__r.__words[2]), v49 = __p.__r_.__value_.__r.__words[0], amber::BufferProtocol<amber::Buffer>::endView(a3, v37, v43, v57), v48 >= 0) ? (p_p = &__p) : (p_p = v49), (amber::DirectoryObjectStore::loadFile(this, p_p, v57) & 0x80000000) != 0 || (amber::Buffer::grow(a3, v37, v51, v52, v53, v54, v43) & 0x80000000) != 0))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "load", 0xA4, 0, "load object", v43);
        v38 = 0xFFFFFFFFLL;
      }

      else
      {
        v38 = 1;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "load", 0x9C, 0, "DirectoryObjectStore size mismatch (load)", v36);
      v38 = 0xFFFFFFFFLL;
    }
  }

  amber::RWSemLock::~RWSemLock(&v60);
  v55 = *MEMORY[0x29EDCA608];
  return v38;
}

void sub_296981714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, amber::RWSem *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  amber::RWSemLock::~RWSemLock(&a19);
  _Unwind_Resume(a1);
}

uint64_t amber::DirectoryObjectStore::getObjectPath(uint64_t a1, amber *a2, amber *a3, unsigned int a4, std::string *this, int a6)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  if ((amber::serializeObjectURIToStringEnd(a2, a3, a4, this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "getObjectPath", 0x19F, 0, "get object path", v13);
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a6)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v15 = this;
      }

      else
      {
        v15 = this->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      v17[0] = v15;
      v17[1] = size;
      amber::DirectoryObjectStore::createDirs(a1, v17, v9, v10, v11, v12, v13);
    }

    return 0;
  }
}

uint64_t amber::DirectoryObjectStore::loadFile(amber::DirectoryObjectStore *this, const char *a2, const amber::MutableMemoryView *a3)
{
  v5 = openat(*(this + 2), a2, 0, 0);
  if (v5 < 0)
  {
    v9 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "loadFile", 0x16D, *v9, "open: %s", v10, a2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
    if (read(v5, *(a3 + 1), *(a3 + 2)) == *(a3 + 2))
    {
      v8 = 0;
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "loadFile", 0x171, 0, "size mismatch", v7);
      v8 = 0xFFFFFFFFLL;
    }

    close(v6);
  }

  return v8;
}

double amber::CryptoBlobBase<32u>::~CryptoBlobBase(uint64_t a1)
{
  *a1 = &unk_2A1DE1390;
  *(a1 + 8) = &unk_2A1DE13C0;
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

uint64_t amber::DirectoryObjectStore::store(amber::DirectoryObjectStore *this, const amber::ObjectStorePath *a2, const amber::ConstMemoryView *a3, char a4)
{
  v36 = *MEMORY[0x29EDCA608];
  v32 = (this + 24);
  v33 = 1;
  amber::RWSem::acquireAsWriter((this + 24));
  __p = 0;
  v30 = 0;
  v31 = 0;
  v8 = *(a2 + 8);
  v34[0] = &off_2A1DDFC68;
  v34[1] = a2 + 36;
  v34[2] = v8;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(v35, v34, v9, v10, v11, v12, v13);
  v14 = *(a2 + 78);
  v28[0] = &off_2A1DDFC68;
  v28[1] = a2 + 316;
  v28[2] = v14;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(v34, v28, v15, v16, v17, v18, v19);
  v25 = *(a3 + 2);
  if (HIDWORD(v25))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "store", 0xB0, 0, "invalid buffer size", v24);
  }

  else
  {
    if ((a4 & 1) != 0 || *(a2 + 148) == v25)
    {
      amber::DirectoryObjectStore::getContainer_Writer(this, v35, v20, v21, v22, v23, v24);
      operator new();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "store", 0xB2, 0, "DirectoryObjectStore size mismatch (store)", v24);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  amber::RWSemLock::~RWSemLock(&v32);
  v26 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_296981C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, amber::RWSem *a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  amber::RWSemLock::~RWSemLock(&a21);
  _Unwind_Resume(a1);
}

uint64_t amber::DirectoryObjectStore::getContainer_Writer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::find<amber::CryptoBlobBase<32u>>(a1 + 184, a2, a3, a4, a5, a6, a7);
  if (a1 + 192 == v8)
  {
    operator new();
  }

  return *(v8 + 88);
}

uint64_t amber::DirectoryObjectStore::storeFile(amber::DirectoryObjectStore *this, const char *a2, const amber::ConstMemoryView *a3)
{
  v5 = openat(*(this + 2), a2, 1537, 420);
  if (v5 < 0)
  {
    v10 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "storeFile", 0x183, *v10, "open: %s", v11, a2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
    if (!*(a3 + 2))
    {
      goto LABEL_6;
    }

    if (fcntl(v5, 48, 1))
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "storeFile", 0x189, 0, "setting F_NOCACHE", v7);
    }

    if (write(v6, *(a3 + 1), *(a3 + 2)) != *(a3 + 2))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "storeFile", 0x18C, 0, "size mismatch", v8);
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_6:
      v9 = 0;
    }

    close(v6);
  }

  return v9;
}

uint64_t amber::DirectoryObjectStore::loadSnapshot(uint64_t a1, amber::JSONCodable *a2, uint64_t a3)
{
  *&v26[36] = *MEMORY[0x29EDCA608];
  v22 = (a1 + 24);
  v23 = 0;
  amber::RWSem::acquireAsReader((a1 + 24));
  memset(&__p, 0, sizeof(__p));
  v6 = *(a3 + 16);
  v19[0] = &off_2A1DDFC68;
  v19[1] = a3 + 20;
  v19[2] = v6;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(v24, v19, v7, v8, v9, v10, v11);
  v20[0] = &off_2A1DDFC68;
  v20[1] = v26;
  v20[2] = v25;
  if ((amber::DirectoryObjectStore::getSnapshotPath(a1, v20, &__p, 0) & 0x80000000) != 0 || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), (amber::JSONCodable::jsonParseFromFileAt(a2, *(a1 + 8), p_p, v12, v13) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "loadSnapshot", 0xD3, 0, "load snapshot", v14);
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v16 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  amber::RWSemLock::~RWSemLock(&v22);
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_29698206C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, amber::RWSem *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  amber::RWSemLock::~RWSemLock(&a22);
  _Unwind_Resume(a1);
}

uint64_t amber::DirectoryObjectStore::getSnapshotPath(uint64_t a1, amber *a2, std::string *this, int a4)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  if ((amber::serializeSnapshotURIToStringEnd(a2, this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "getSnapshotPath", 0x1A8, 0, "get object path", v11);
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a4)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v13 = this;
      }

      else
      {
        v13 = this->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      v15[0] = v13;
      v15[1] = size;
      amber::DirectoryObjectStore::createDirs(a1, v15, v7, v8, v9, v10, v11);
    }

    return 0;
  }
}

uint64_t amber::DirectoryObjectStore::storeSnapshot(amber::DirectoryObjectStore *this, const amber::ObjectStorePath *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v29 = (this + 24);
  v30 = 1;
  amber::RWSem::acquireAsWriter((this + 24));
  v4 = *(a2 + 8);
  v31[0] = &off_2A1DDFC68;
  v31[1] = a2 + 36;
  v32 = v4;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(v33, v31, v5, v6, v7, v8, v9);
  v10 = *(a2 + 78);
  __p.__r_.__value_.__r.__words[0] = &off_2A1DDFC68;
  __p.__r_.__value_.__l.__size_ = a2 + 316;
  __p.__r_.__value_.__r.__words[2] = v10;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(v31, &__p, v11, v12, v13, v14, v15);
  std::__tree<amber::CryptoBlobBase<32u>>::__emplace_unique_key_args<amber::CryptoBlobBase<32u>,amber::CryptoBlobBase<32u> const&>(this + 208, v31, v31, v16, v17, v18, v19);
  memset(&__p, 0, sizeof(__p));
  v27[0] = &off_2A1DDFC68;
  v27[1] = &v32 + 4;
  v27[2] = v32;
  if ((amber::DirectoryObjectStore::getSnapshotPath(this, v27, &__p, 1) & 0x80000000) != 0 || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), (amber::JSONCodable::jsonSerializeToFileAt(a2, *(this + 2), p_p, v20, v21) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "storeSnapshot", 0xE4, 0, "store snapshot", v22);
    v24 = 0xFFFFFFFFLL;
  }

  else
  {
    v24 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  amber::RWSemLock::~RWSemLock(&v29);
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

void sub_296982318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, amber::RWSem *a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  amber::RWSemLock::~RWSemLock(&a19);
  _Unwind_Resume(a1);
}

uint64_t amber::DirectoryObjectStore::writeModifiedObjects(amber::DirectoryObjectStore *this, amber::BlockDevice *a2)
{
  v46[75] = *MEMORY[0x29EDCA608];
  v36 = (this + 24);
  v37 = 1;
  amber::RWSem::acquireAsWriter((this + 24));
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(&v41, 1);
  v8 = *(this + 23);
  v9 = this + 192;
  if (v8 != this + 192)
  {
    v33 = this + 192;
    do
    {
      v10 = *(v8 + 11);
      if (*(v10 + 80) == 1)
      {
        v11 = *(v10 + 56);
        if (v11 != (v10 + 64))
        {
          while (1)
          {
            v12 = v11[4];
            if (*(v12 + 84) == 1)
            {
              break;
            }

            v21 = v11[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v11[2];
                v23 = *v22 == v11;
                v11 = v22;
              }

              while (!v23);
            }

            v11 = v22;
            if (v22 == (v10 + 64))
            {
              goto LABEL_14;
            }
          }

          v13 = *(v10 + 16);
          v35[0] = &off_2A1DDFC68;
          v35[1] = v10 + 20;
          v35[2] = v13;
          amber::CryptoBlobBase<256u>::CryptoBlobBase(v39, v35, v3, v4, v5, v6, v7);
          v14 = *(v12 + 24);
          v34[0] = &off_2A1DDFC68;
          v34[1] = v12 + 28;
          v34[2] = v14;
          amber::CryptoBlobBase<256u>::CryptoBlobBase(v38, v34, v15, v16, v17, v18, v19);
          amber::ObjectStorePath::ObjectStorePath(v40, v39, v38, *(v12 + 64), *(v12 + 72), *(v12 + 80), v20);
          if (malloc_type_malloc(*(v12 + 80), 0xF93785E2uLL))
          {
            operator new();
          }

          v27 = __error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./Malloc.hpp", "malloc", 0x1F, *v27, "malloc", v28);
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "writeModifiedObjects", 0xFB, 0, "malloc", v29);
          amber::ObjectStorePath::~ObjectStorePath(v40);
LABEL_26:
          v30 = 0xFFFFFFFFLL;
          goto LABEL_27;
        }

LABEL_14:
        *(v10 + 80) = 0;
        v9 = v33;
      }

      v24 = *(v8 + 1);
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = *(v8 + 2);
          v23 = *v25 == v8;
          v8 = v25;
        }

        while (!v23);
      }

      v8 = v25;
    }

    while (v25 != v9);
  }

  if (atomic_fetch_add_explicit(v45, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
  {
    do
    {
      amber::Sem::acquire(&v42);
    }

    while (atomic_fetch_add_explicit(v45, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
  }

  atomic_fetch_add_explicit(v45, 1uLL, memory_order_relaxed);
  if (atomic_load(&v41))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "writeModifiedObjects", 0x113, 0, "some data requests failed", v7);
    goto LABEL_26;
  }

  v30 = 0;
LABEL_27:
  amber::ObjectStorePath::~ObjectStorePath(v46);
  std::condition_variable::~condition_variable(&v44);
  std::mutex::~mutex(&v43);
  amber::RWSemLock::~RWSemLock(&v36);
  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

void sub_296982720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  amber::ObjectStorePath::~ObjectStorePath(&STACK[0x290]);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(&STACK[0x4E8]);
  amber::RWSemLock::~RWSemLock(va);
  _Unwind_Resume(a1);
}

uint64_t amber::DirectoryObjectStore::enforceMaxUsage(amber::DirectoryObjectStore *this, unint64_t a2)
{
  if (*(this + 12) == 1 && *(this + 29) >= a2 + (a2 >> 2))
  {
    v13 = (this + 24);
    LOBYTE(v14) = 1;
    amber::RWSem::acquireAsWriter((this + 24));
    v9 = *(this + 29);
    v10 = *(this + 32);
    if (v10)
    {
      do
      {
        v11 = *(this + 29);
        if (v11 <= a2)
        {
          break;
        }

        if ((amber::DirectoryObjectStore::removeObject_Writer(this, v10, v4, v5, v6, v7, v8) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "enforceMaxUsage", 0x127, 0, "removing object from cache", v8, v13, v14);
          amber::RWSemLock::~RWSemLock(&v13);
          return 0xFFFFFFFFLL;
        }

        v10 = *(this + 32);
      }

      while (v10);
    }

    else
    {
      v11 = *(this + 29);
    }

    atomic_fetch_add_explicit(this + 30, v9 - v11, memory_order_relaxed);
    amber::RWSemLock::~RWSemLock(&v13);
  }

  return 0;
}

uint64_t amber::DirectoryObjectStore::removeObject_Writer(amber::DirectoryObjectStore *this, amber::DirectoryObjectStore::Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *&v31[36] = *MEMORY[0x29EDCA608];
  v9 = *(a2 + 16);
  v10 = *a2;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(v29, a2 + 28, *(a2 + 6), a4, a5, a6, a7);
  std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>>>::__erase_unique<amber::CryptoBlobBase<32u>>(this + 20, v29, v11, v12, v13, v14, v15);
  atomic_fetch_add_explicit(this + 29, -*(a2 + 20), memory_order_relaxed);
  if (*(this + 12) == 1)
  {
    v16 = *(a2 + 13);
    v17 = *(a2 + 14);
    v18 = (v16 + 112);
    if (!v16)
    {
      v18 = (this + 248);
    }

    *v18 = v17;
    if (v17)
    {
      v19 = (v17 + 104);
    }

    else
    {
      v19 = (this + 256);
    }

    *v19 = v16;
    *(a2 + 13) = 0;
    *(a2 + 14) = 0;
  }

  amber::DirectoryObjectStore::Object::~Object(a2);
  MEMORY[0x29C25C000]();
  memset(&__p, 0, sizeof(__p));
  v20 = *(v10 + 16);
  v27[0] = &off_2A1DDFC68;
  v27[1] = v10 + 20;
  v27[2] = v20;
  v26[0] = &off_2A1DDFC68;
  v26[1] = v31;
  v26[2] = v30;
  if ((amber::DirectoryObjectStore::getObjectPath(this, v27, v26, v9, &__p, 0) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DirectoryObjectStore.cpp", "removeObject_Writer", 0x151, 0, "get path", v21);
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    unlinkat(*(this + 2), p_p, 0);
    v23 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

void sub_296982A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::DirectoryObjectStore::createDirs(uint64_t a1, __darwin_ino64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a2[1];
  if (v7)
  {
    v8 = *a2;
    *&v31.st_dev = &off_2A1DDFC68;
    v31.st_ino = v8;
    *&v31.st_uid = v7;
    if ((v7 & 0x8000000000000000) != 0 || !v8)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v33 = 0;
    v34 = 0;
    v32 = off_2A1DDFD48;
    if ((amber::MemorySegment::allocate(&v32, v7, a3, a4, a5, a6, a7) & 0x80000000) != 0)
    {
      v29 = __cxa_allocate_exception(8uLL);
      v30 = std::bad_alloc::bad_alloc(v29);
      __cxa_throw(v30, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
    }

    memcpy(v33, v31.st_ino, *&v31.st_uid);
    v15 = v7 - 1;
    if (v7 != 1)
    {
      while (1)
      {
        if (*amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator[](&v32, v15, v10, v11, v12, v13, v14) == 47)
        {
          *amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator[](&v32, v15, v10, v11, v12, v13, v14) = 0;
          v16 = fstatat(*(a1 + 8), v33, &v31, 0);
          *amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator[](&v32, v15, v17, v18, v19, v20, v21) = 47;
          if (!v16)
          {
            break;
          }
        }

        if (!--v15)
        {
          goto LABEL_11;
        }
      }

      ++v15;
    }

LABEL_11:
    if (v15 < v7)
    {
      do
      {
        if (v15 && *amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator[](&v32, v15, v10, v11, v12, v13, v14) == 47)
        {
          *amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator[](&v32, v15, v10, v11, v12, v13, v14) = 0;
          mkdirat(*(a1 + 8), v33, 0x1C0u);
          *amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator[](&v32, v15, v22, v23, v24, v25, v26) = 47;
        }

        ++v15;
      }

      while (v7 != v15);
    }

    free(v33);
  }

  return 0;
}

uint64_t amber::DirectoryObjectStore::listContainers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 184);
  v8 = (a1 + 192);
  if (v7 != (a1 + 192))
  {
    v10 = *(a2 + 8);
    do
    {
      v11 = (v7 + 4);
      if (v10 >= *(a2 + 16))
      {
        v10 = std::vector<amber::CryptoBlobBase<256u>>::__emplace_back_slow_path<amber::CryptoBlobBase<32u> const&>(a2, v11, a3, a4, a5, a6, a7);
      }

      else
      {
        std::vector<amber::CryptoBlobBase<256u>>::__construct_one_at_end[abi:ne200100]<amber::CryptoBlobBase<32u> const&>(a2, v11, a3, a4, a5, a6, a7);
        v10 += 280;
      }

      *(a2 + 8) = v10;
      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != v8);
  }

  return 0;
}

uint64_t amber::DirectoryObjectStore::listSnapshots(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 208);
  v8 = (a1 + 216);
  if (v7 != (a1 + 216))
  {
    v10 = *(a2 + 8);
    do
    {
      v11 = (v7 + 4);
      if (v10 >= *(a2 + 16))
      {
        v10 = std::vector<amber::CryptoBlobBase<256u>>::__emplace_back_slow_path<amber::CryptoBlobBase<32u> const&>(a2, v11, a3, a4, a5, a6, a7);
      }

      else
      {
        std::vector<amber::CryptoBlobBase<256u>>::__construct_one_at_end[abi:ne200100]<amber::CryptoBlobBase<32u> const&>(a2, v11, a3, a4, a5, a6, a7);
        v10 += 280;
      }

      *(a2 + 8) = v10;
      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != v8);
  }

  return 0;
}

unint64_t amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator[](uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::MutableMemoryViewConvertible<amber::MemorySegment>::zMutableMemoryView(a1, a7, v11);
  if (v11[2] <= a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "operator[]", 0xF7, 0, "memory invalid range", v8);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return v11[1] + a2;
}

uint64_t amber::DirectoryObjectStore::Visitor::entry(amber::DirectoryObjectStore::Visitor *this, const char *a2, int a3, const stat *a4)
{
  *&v59[284] = *MEMORY[0x29EDCA608];
  if ((a4->st_mode & 0xF000) == 0x8000)
  {
    amber::ObjectStorePath::ObjectStorePath(v56);
    v54[0] = &unk_2A1DDFDD8;
    v54[1] = &unk_2A1DDFE08;
    memset(&v54[2], 0, 256);
    v55 = 0;
    v49[0] = a2;
    v49[1] = strlen(a2);
    if (amber::parseObjectURI(v49, v56, v7, v8, v9, v10, v11))
    {
      if (!amber::parseSnapshotURI(v49, v54, v12, v13, v14, v15, v16))
      {
        v50 = &off_2A1DDFC68;
        v51 = &v54[2] + 4;
        v52 = LODWORD(v54[2]);
        amber::CryptoBlobBase<32u>::CryptoBlobBase(v53, &v50, v17, v18, v19, v20, v21);
        std::__tree<amber::CryptoBlobBase<32u>>::__emplace_unique_key_args<amber::CryptoBlobBase<32u>,amber::CryptoBlobBase<32u> const&>(*(this + 1) + 208, v53, v53, v22, v23, v24, v25);
      }
    }

    else
    {
      v50 = &off_2A1DDFC68;
      v51 = v58;
      v52 = v57;
      amber::CryptoBlobBase<32u>::CryptoBlobBase(v53, &v50, v12, v13, v14, v15, v16);
      v48[0] = &off_2A1DDFC68;
      v48[1] = v59;
      v48[2] = v58[69];
      amber::CryptoBlobBase<32u>::CryptoBlobBase(&v50, v48, v26, v27, v28, v29, v30);
      v36 = std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::find<amber::CryptoBlobBase<32u>>(*(this + 1) + 184, v53, v31, v32, v33, v34, v35);
      v42 = *(this + 1);
      if (v42 + 192 == v36)
      {
        operator new();
      }

      v43 = *(v36 + 88);
      v44 = std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::find<amber::CryptoBlobBase<32u>>(v42 + 160, &v50, v37, v38, v39, v40, v41);
      if (*(this + 1) + 168 == v44)
      {
        operator new();
      }

      v45 = *(v44 + 88);
      *(v45 + 80) = a4->st_size;
      *(v45 + 88) = a4->st_atimespec;
    }

    amber::ObjectStorePath::~ObjectStorePath(v56);
  }

  v46 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29698324C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x29C25C000](v65, 0x10A0C40EE23DE53);
  amber::ObjectStorePath::~ObjectStorePath(&a65);
  _Unwind_Resume(a1);
}

uint64_t amber::MutableMemoryViewConvertible<amber::MemorySegment>::zMutableMemoryView@<X0>(uint64_t result@<X0>, const char *a2@<X6>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  *a3 = &off_2A1DDFDA8;
  a3[1] = v3;
  a3[2] = v4;
  if (v4 < 0 || (!v3 ? (v5 = v4 == 0) : (v5 = 1), !v5))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

void amber::DirectoryObjectStore::Object::~Object(amber::DirectoryObjectStore::Object *this)
{
  v2 = *this;
  v3 = this;
  std::__tree<amber::DirectoryObjectStore::Object *>::__erase_unique<amber::DirectoryObjectStore::Object *>((v2 + 56), &v3);
  *(this + 1) = &unk_2A1DE1390;
  *(this + 2) = &unk_2A1DE13C0;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
}

uint64_t std::__tree<amber::DirectoryObjectStore::Object *>::__erase_unique<amber::DirectoryObjectStore::Object *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void amber::RWSem::acquireAsWriter(amber::RWSem *this)
{
  v2.__m_ = (this + 24);
  v2.__owns_ = 1;
  std::mutex::lock((this + 24));
  ++*(this + 2);
  while (*(this + 1) > 0 || *this == 1)
  {
    std::condition_variable::wait((this + 88), &v2);
  }

  --*(this + 2);
  *this = 1;
  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void amber::RWSem::acquireAsReader(amber::RWSem *this)
{
  v2.__m_ = (this + 24);
  v2.__owns_ = 1;
  std::mutex::lock((this + 24));
  while (*(this + 2) > 0 || *this == 1)
  {
    std::condition_variable::wait((this + 88), &v2);
  }

  ++*(this + 1);
  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void amber::RWSemLock::~RWSemLock(amber::RWSem **this)
{
  v1 = *(this + 8);
  v2 = *this;
  if (v1 == 1)
  {
    amber::RWSem::releaseAsWriter(v2);
  }

  else
  {
    amber::RWSem::releaseAsReader(v2);
  }
}

void amber::RWSem::releaseAsWriter(amber::RWSem *this)
{
  std::mutex::lock((this + 24));
  *this = 0;
  std::condition_variable::notify_all((this + 88));

  std::mutex::unlock((this + 24));
}

void amber::RWSem::releaseAsReader(amber::RWSem *this)
{
  std::mutex::lock((this + 24));
  v2 = *(this + 1) - 1;
  *(this + 1) = v2;
  if (!v2)
  {
    std::condition_variable::notify_all((this + 88));
  }

  std::mutex::unlock((this + 24));
}

unint64_t amber::DirectoryObjectStore::Object::Object(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *a1 = a2;
  amber::CryptoBlobBase<32u>::CryptoBlobBase(a1 + 8, a3 + 20, *(a3 + 16), a4, a5, a6, a7);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = a1;
  std::__tree<amber::DirectoryObjectStore::Object *>::__emplace_unique_key_args<amber::DirectoryObjectStore::Object *,amber::DirectoryObjectStore::Object *>(a2 + 56, &v10);
  return a1;
}

void sub_29698370C(_Unwind_Exception *a1)
{
  *(v1 + 8) = &unk_2A1DE1390;
  *(v1 + 16) = &unk_2A1DE13C0;
  *(v1 + 28) = 0u;
  *(v1 + 44) = 0u;
  _Unwind_Resume(a1);
}

void *std::__tree<amber::DirectoryObjectStore::Object *>::__emplace_unique_key_args<amber::DirectoryObjectStore::Object *,amber::DirectoryObjectStore::Object *>(uint64_t a1, unint64_t *a2)
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

uint64_t amber::ObjectStorePath::ObjectStorePath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a6;
  v9 = a4;
  *a1 = &unk_2A1DE3CA8;
  *(a1 + 8) = &unk_2A1DE3CE8;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(a1 + 16, a2 + 20, *(a2 + 16), a4, a5, a6, a7);
  amber::CryptoBlobBase<256u>::CryptoBlobBase(a1 + 296, a3 + 20, *(a3 + 16), v12, v13, v14, v15);
  *(a1 + 576) = v9;
  *(a1 + 584) = a5;
  *(a1 + 592) = v7;
  return a1;
}

void sub_2969838D4(_Unwind_Exception *a1)
{
  *(v1 + 36) = 0u;
  *(v1 + 16) = &unk_2A1DDFDD8;
  *(v1 + 24) = &unk_2A1DDFE08;
  *(v1 + 52) = 0u;
  *(v1 + 68) = 0u;
  *(v1 + 84) = 0u;
  *(v1 + 100) = 0u;
  *(v1 + 116) = 0u;
  *(v1 + 132) = 0u;
  *(v1 + 148) = 0u;
  *(v1 + 164) = 0u;
  *(v1 + 180) = 0u;
  *(v1 + 196) = 0u;
  *(v1 + 212) = 0u;
  *(v1 + 228) = 0u;
  *(v1 + 244) = 0u;
  *(v1 + 260) = 0u;
  *(v1 + 276) = 0u;
  amber::JSONCodable::~JSONCodable(v1);
  _Unwind_Resume(a1);
}

uint64_t amber::CryptoBlobBase<32u>::CryptoBlobBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFC68;
  v9[1] = a2;
  v9[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::CryptoBlobBase<32u>::CryptoBlobBase(a1, v9, a3, a4, a5, a6, a7);
}

{
  *a1 = &unk_2A1DE1390;
  *(a1 + 8) = &unk_2A1DE13C0;
  *(a1 + 16) = 0;
  v7 = *(a2 + 16);
  if (v7 >= 0x21)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Crypto/./CryptoBlob.hpp", "CryptoBlobBase", 0x23, 0, "CryptoBlob invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "CryptoBlob invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v9 = (a1 + 20);
  v14[0] = &off_2A1DDFDA8;
  v14[1] = v9;
  v14[2] = 32;
  *(a1 + 16) = v7;
  memcpy(v9, *(a2 + 8), v7);
  amber::MutableMemoryView::operator+(v14, v7, v10, v13);
  bzero(v13[1], v13[2]);
  return a1;
}

double non-virtual thunk toamber::CryptoBlobBase<32u>::~CryptoBlobBase(uint64_t a1)
{
  *(a1 - 8) = &unk_2A1DE1390;
  *a1 = &unk_2A1DE13C0;
  result = 0.0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  return result;
}

void amber::CryptoBlobBase<32u>::~CryptoBlobBase(uint64_t a1)
{
  *a1 = &unk_2A1DE1390;
  *(a1 + 8) = &unk_2A1DE13C0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  JUMPOUT(0x29C25C000);
}

double amber::CryptoBlobBase<32u>::binaryParse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v17[3] = &off_2A1DDFC68;
  *__src = *(a2 + 8);
  v8 = (a1 + 16);
  v22 = &off_2A1DDFDA8;
  v23 = (a1 + 16);
  v24 = 4;
  v9 = __src[1] - 4;
  if (__src[1] < 4)
  {
    goto LABEL_4;
  }

  v12 = __src[0] + 4;
  v11 = *__src[0];
  *v8 = v11;
  __src[0] = v12;
  __src[1] = v9;
  if (v11 > 0x20)
  {
    goto LABEL_4;
  }

  v17[0] = &off_2A1DDFDA8;
  v17[1] = a1 + 20;
  v17[2] = 32;
  amber::MutableMemoryView::first(v17, v11, a7, &v19);
  v13 = __n;
  if (__n <= __src[1])
  {
    memcpy(__dst, __src[0], __n);
    __src[0] = __src[0] + v13;
    __src[1] = __src[1] - v13;
    v19 = &off_2A1DDFDA8;
    __dst = (a1 + 20);
    __n = 32;
    amber::MutableMemoryView::operator+(&v19, *v8, v16, &v22);
    bzero(v23, v24);
    result = *__src;
    *(a2 + 8) = *__src;
  }

  else
  {
LABEL_4:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Crypto/./CryptoBlob.hpp", "binaryParse", 0x72, 0, "invalid/truncated CryptoBlob", a7);
    *(a1 + 16) = 0;
    v19 = &off_2A1DDFDA8;
    __dst = (a1 + 20);
    __n = 32;
    amber::MutableMemoryView::operator+(&v19, 0, v14, &v22);
    bzero(v23, v24);
  }

  return result;
}

uint64_t amber::CryptoBlobBase<32u>::binarySerialize(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, a2, a3, a4, a5, a6, a7);
  v29[0] = &off_2A1DDFC68;
  v29[1] = a1 + 16;
  v29[2] = 4;
  if ((amber::BufferProtocol<amber::Buffer>::append(a2, v29, v10, v11, v12, v13, v14) & 0x80000000) == 0)
  {
    v27[0] = &off_2A1DDFC68;
    v27[1] = a1 + 20;
    v27[2] = 32;
    amber::ConstMemoryView::first(v27, *(a1 + 16), v15, v28);
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, v28, v16, v17, v18, v19, v20) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Crypto/./CryptoBlob.hpp", "binarySerialize", 0x7C, 0, "serialization", v15);
  amber::Buffer::resize(a2, v9, v22, v23, v24, v25, v26);
  return 0xFFFFFFFFLL;
}

void non-virtual thunk toamber::CryptoBlobBase<32u>::~CryptoBlobBase(uint64_t a1)
{
  *(a1 - 8) = &unk_2A1DE1390;
  *a1 = &unk_2A1DE13C0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  JUMPOUT(0x29C25C000);
}

uint64_t std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::find<amber::CryptoBlobBase<32u>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a1 + 8;
  v8 = *(a1 + 8);
  if (!v8)
  {
    return v7;
  }

  v11 = a1 + 8;
  do
  {
    v12 = std::less<amber::CryptoBlobBase<32u>>::operator()[abi:ne200100](a1, v8 + 32, a2, a4, a5, a6, a7);
    if (v12)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    if (!v12)
    {
      v11 = v8;
    }

    v8 = *(v8 + v13);
  }

  while (v8);
  if (v11 == v7 || std::less<amber::CryptoBlobBase<32u>>::operator()[abi:ne200100](a1, a2, v11 + 32, a4, a5, a6, a7))
  {
    return v7;
  }

  return v11;
}

uint64_t std::less<amber::CryptoBlobBase<32u>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 16);
  v11 = *(a3 + 16);
  if (v8 != v11)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "compare", 0x68, 0, "memory invalid range", a7, &off_2A1DDFC68, a3 + 20, v11, &off_2A1DDFC68, a2 + 20, v8);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return memcmp((a2 + 20), (a3 + 20), v8) >> 31;
}

uint64_t std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::__emplace_unique_key_args<amber::CryptoBlobBase<32u>,std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<32u> const&>,std::tuple<>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  result = *std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::__find_equal<amber::CryptoBlobBase<32u>>(a1, &v8, a2, a4, a5, a6, a7);
  if (!result)
  {
    std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<32u> const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::__find_equal<amber::CryptoBlobBase<32u>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  if (v8)
  {
    do
    {
      while (1)
      {
        v12 = v8;
        if (!std::less<amber::CryptoBlobBase<32u>>::operator()[abi:ne200100](a1, a3, (v8 + 4), a4, a5, a6, a7))
        {
          break;
        }

        v8 = *v12;
        v9 = v12;
        if (!*v12)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<amber::CryptoBlobBase<32u>>::operator()[abi:ne200100](a1, (v12 + 4), a3, a4, a5, a6, a7))
      {
        break;
      }

      v9 = v12 + 1;
      v8 = v12[1];
    }

    while (v8);
  }

  else
  {
    v12 = (a1 + 8);
  }

LABEL_9:
  *a2 = v12;
  return v9;
}

void sub_29698429C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>>>::__emplace_unique_key_args<amber::CryptoBlobBase<32u>,std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<32u> const&>,std::tuple<>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  result = *std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::__find_equal<amber::CryptoBlobBase<32u>>(a1, &v8, a2, a4, a5, a6, a7);
  if (!result)
  {
    std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<32u> const&>,std::tuple<>>();
  }

  return result;
}

void sub_2969843C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<amber::CryptoBlobBase<32u>>::__emplace_unique_key_args<amber::CryptoBlobBase<32u>,amber::CryptoBlobBase<32u> const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::__find_equal<amber::CryptoBlobBase<32u>>(a1, &v9, a2, a4, a5, a6, a7);
  if (!v7)
  {
    std::__tree<amber::CryptoBlobBase<32u>>::__construct_node<amber::CryptoBlobBase<32u> const&>();
  }

  return v7;
}

uint64_t std::unique_ptr<std::__tree_node<amber::CryptoBlobBase<32u>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<amber::CryptoBlobBase<32u>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[4])();
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<amber::CryptoBlobBase<32u>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<amber::CryptoBlobBase<32u>>::destroy(a1, *a2);
    std::__tree<amber::CryptoBlobBase<32u>>::destroy(a1, a2[1]);
    (*a2[4])();

    operator delete(a2);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v61 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v61;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,amber::DirectoryObjectStore::Object**>(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v48 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v48)
        {
          v47 = v8[v34];
          v8[v13] = v47;
          v8[v34] = v44;
LABEL_58:
          v44 = v47;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = v8[v26];
          v46 = (*a3)();
          v44 = v8[v13];
          if (v46)
          {
            v47 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v47;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v49 = *v8;
      *v8 = v44;
      v8[v13] = v49;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,amber::DirectoryObjectStore::Object **,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*)>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v50 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,amber::DirectoryObjectStore::Object **,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*)>(v8, a2, a3);
    if ((v51 & 1) == 0)
    {
      goto LABEL_64;
    }

    v52 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(v8, v50, a3);
    v9 = (v50 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(v50 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v50;
      if (v52)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v52)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,false>(v8, v50, a3, -v11, a5 & 1);
      v9 = (v50 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,0>(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v55;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v56 = v9[1].i64[0];
      v57 = v9->i64[1];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v56;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v59 = v9->i64[1];
      v58 = v9[1].i64[0];
      v60 = v9->i64[0];
      v9->i64[1] = v58;
      v9[1].i64[0] = v59;
      result = (*a3)(v58, v60);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v53 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v53 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v62 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v62;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v54 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v54;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v54;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v61 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,amber::DirectoryObjectStore::Object **,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,amber::DirectoryObjectStore::Object **,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (*a3)(a1[1], *a1);
        v16 = (*a3)(*(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v12 = a1[1];
        v11 = a1[2];
        v13 = *a1;
        a1[1] = v11;
        a1[2] = v12;
        v14 = (*a3)(v11, v13);
        break;
      default:
        goto LABEL_17;
    }

    if (v14)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = (*a3)(a1[1], *a1);
  v19 = a1 + 2;
  v20 = (*a3)(a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v25))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if ((*a3)(*v26, *v19))
    {
      v29 = *v26;
      v30 = v27;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          break;
        }

        v30 -= 8;
        if (((*a3)(v29, *(v31 + 1)) & 1) == 0)
        {
          v32 = (a1 + v30 + 24);
          goto LABEL_40;
        }
      }

      v32 = a1;
LABEL_40:
      *v32 = v29;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v19 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**,amber::DirectoryObjectStore::Object**>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(amber::DirectoryObjectStore::Object const*,amber::DirectoryObjectStore::Object const*),amber::DirectoryObjectStore::Object**>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Object *>>>::__erase_unique<amber::CryptoBlobBase<32u>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = std::__tree<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::__map_value_compare<amber::CryptoBlobBase<32u>,std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>,std::less<amber::CryptoBlobBase<32u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<32u>,amber::DirectoryObjectStore::Container *>>>::find<amber::CryptoBlobBase<32u>>(a1, a2, a3, a4, a5, a6, a7);
  if (a1 + 1 == v8)
  {
    return 0;
  }

  v9 = v8;
  std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(a1, v8);
  operator delete(v9);
  return 1;
}

uint64_t std::vector<amber::CryptoBlobBase<256u>>::__construct_one_at_end[abi:ne200100]<amber::CryptoBlobBase<32u> const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  v11[0] = &off_2A1DDFC68;
  v11[1] = a2 + 20;
  v11[2] = v9;
  result = amber::CryptoBlobBase<256u>::CryptoBlobBase(v8, v11, a3, a4, a5, a6, a7);
  *(a1 + 8) = v8 + 280;
  return result;
}

uint64_t std::vector<amber::CryptoBlobBase<256u>>::__emplace_back_slow_path<amber::CryptoBlobBase<32u> const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 8) - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3) > v8)
  {
    v8 = 0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 16) - *a1) >> 3) >= 0x75075075075075)
  {
    v11 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v11 = v8;
  }

  v25 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::CryptoBlobBase<256u>>>(a1, v11);
  }

  v22 = 0;
  v23 = 280 * v7;
  v24 = 280 * v7;
  v12 = *(a2 + 16);
  v26[0] = &off_2A1DDFC68;
  v26[1] = a2 + 20;
  v26[2] = v12;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(280 * v7, v26, a3, a4, a5, a6, a7);
  *&v24 = 280 * v7 + 280;
  v13 = *(a1 + 8);
  v14 = 280 * v7 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::CryptoBlobBase<256u>>,amber::CryptoBlobBase<256u>*>(a1, *a1, v13, v14, v15, v16, v17);
  v18 = *a1;
  *a1 = v14;
  v19 = *(a1 + 16);
  v21 = v24;
  *(a1 + 8) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<amber::CryptoBlobBase<256u>>::~__split_buffer(&v22);
  return v21;
}

void sub_296985A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<amber::CryptoBlobBase<256u>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

amber::HTTPDownloadStream *amber::HTTPDownloadStream::HTTPDownloadStream(amber::HTTPDownloadStream *this, amber::HTTPContext *a2, const char *a3, int a4, int a5)
{
  v8 = amber::ChunkInputStream::ChunkInputStream(this, a4, a5);
  *v8 = &unk_2A1DE1458;
  v8[1] = &unk_2A1DE14F0;
  v8[56] = a2;
  v9 = strlen(a3);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  *(this + 479) = v9;
  v11 = this + 456;
  if (v9)
  {
    memmove(v11, a3, v9);
  }

  v11[v10] = 0;
  amber::ChunkInputStream::startThread(this);
  return this;
}

void sub_296985BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (v7[479] < 0)
  {
    operator delete(*v8);
  }

  amber::ChunkInputStream::~ChunkInputStream(v7, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::HTTPDownloadStream::enqueueChunkRead(amber::HTTPDownloadStream *this, amber::Buffer *a2, unint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, int), const char *a7)
{
  if ((a4 & 0x8000000000000000) == 0 && *(this + 4) >= a3)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPDownloadStream.cpp", "enqueueChunkRead", 0x5A, 0, "invalid offset/size", a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::HTTPDownloadStream::HTTPChunkReadContext::enqueueChunkRead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v7[0] = v7;
  v7[1] = v7;
  v7[2] = 0;
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &off_2A1DDFC68;
  v3 = amber::HTTPContext::httpEnqueue(a2, 1, a3, v7, v6, *(a1 + 8), a1 + 16, 1, a1, amber::HTTPDownloadStream::httpCompletionProc);
  std::__list_imp<std::string>::clear(v7);
  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPDownloadStream.cpp", "enqueueChunkRead", 0x3F, 0, "enqueue range download", v4);
  return 0xFFFFFFFFLL;
}

void sub_296985DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<std::string>::clear(va);
  _Unwind_Resume(a1);
}

void amber::HTTPDownloadStream::httpCompletionProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a2 + 24) == 1)
  {
    v9 = 0;
    atomic_compare_exchange_strong((*a1 + 28), &v9, 1u);
  }

  if ((*(a2 + 28) - 400) <= 0x63)
  {
    amber::Buffer::resize(*(a1 + 8), 0, a3, a4, a5, a6, a7);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10(*(a1 + 32), -*(a2 + 24));
  }

  JUMPOUT(0x29C25C000);
}

void amber::HTTPDownloadStream::~HTTPDownloadStream(amber::HTTPDownloadStream *this)
{
  amber::HTTPDownloadStream::~HTTPDownloadStream(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE1458;
  *(this + 1) = &unk_2A1DE14F0;
  amber::ChunkInputStream::stopThread(this);
  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  amber::ChunkInputStream::~ChunkInputStream(this, v2, v3, v4, v5, v6, v7);
}

void non-virtual thunk toamber::HTTPDownloadStream::~HTTPDownloadStream(amber::HTTPDownloadStream *this)
{
  amber::HTTPDownloadStream::~HTTPDownloadStream((this - 8));
}

{
  amber::HTTPDownloadStream::~HTTPDownloadStream((this - 8));

  JUMPOUT(0x29C25C000);
}

uint64_t amber::KnoxMultipartUpload::create(amber::KnoxMultipartUpload *this, const std::string *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v47[0] = &unk_2A1DDFD28;
  v47[2] = 0;
  v47[3] = 0;
  v47[1] = off_2A1DDFD48;
  v47[5] = 0;
  v47[6] = 0;
  v47[4] = &off_2A1DDFDA8;
  v47[7] = &off_2A1DDFC68;
  v48 = 0u;
  v49 = 0u;
  v50 = 1;
  v51 = 0;
  v42[0] = &unk_2A1DDFD28;
  v42[2] = 0;
  v42[3] = 0;
  v42[1] = off_2A1DDFD48;
  v42[5] = 0;
  v42[6] = 0;
  v42[4] = &off_2A1DDFDA8;
  v42[7] = &off_2A1DDFC68;
  v43 = 0u;
  v44 = 0u;
  v45 = 1;
  v46 = 0;
  if (SHIBYTE(a2[8].__r_.__value_.__r.__words[2]) < 0)
  {
    data = a2[8].__r_.__value_.__l.__data_;
    v10 = a2[8].__r_.__value_.__l.__size_ == 0;
  }

  if (atomic_load(this + 75))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "create", 0x13A, 0, "create while in uploading state", a7);
  }

  else
  {
    *(this + 74) = 0;
    *(this + 8) = 0;
    v36 = &off_2A1DDFDA8;
    __s1 = this + 36;
    v38 = 256;
    amber::MutableMemoryView::operator+(&v36, 0, a7, &v39);
    bzero(v40, v41);
    std::vector<std::string>::clear[abi:ne200100](this + 46);
    size = HIBYTE(a2[4].__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = a2[4].__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v14 = HIBYTE(a2[6].__r_.__value_.__r.__words[2]);
      if ((v14 & 0x80u) != 0)
      {
        v14 = a2[6].__r_.__value_.__l.__size_;
      }

      if (v14 >= 0x10)
      {
        v15 = HIBYTE(a2[7].__r_.__value_.__r.__words[2]);
        if ((v15 & 0x80u) != 0)
        {
          v15 = a2[7].__r_.__value_.__l.__size_;
        }

        if (v15)
        {
          v16 = a2[1].__r_.__value_.__s.__data_[15];
          if (v16 < 0)
          {
            v16 = a2[1].__r_.__value_.__l.__data_;
          }

          if (v16 && a2[1].__r_.__value_.__r.__words[2] != a2[2].__r_.__value_.__r.__words[0] && a2[2].__r_.__value_.__r.__words[2] != a2[3].__r_.__value_.__r.__words[0])
          {
            amber::KnoxPointer::clear(this + 416);
            amber::KnoxUploadAttributes::operator=(this + 424, &a2->__r_.__value_.__l.__size_);
            std::string::operator=((this + 512), a2 + 4);
            std::string::operator=((this + 536), a2 + 5);
            std::string::operator=((this + 568), a2 + 6);
            std::string::operator=((this + 592), a2 + 7);
            *(this + 40) = 0u;
            amber::Buffer::resize(v42, 0, v17, v18, v19, v20, v21);
            amber::JSONOutputStream::JSONOutputStream(&v39, v42);
          }
        }
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "create", 0x152, 0, "incomplete file creation attributes", v12);
  }

  std::vector<std::string>::clear[abi:ne200100](this + 46);
  *(this + 8) = 0;
  v36 = &off_2A1DDFDA8;
  __s1 = this + 36;
  v38 = 256;
  amber::MutableMemoryView::operator+(&v36, 0, v22, &v39);
  bzero(v40, v41);
  *(this + 74) = 0;
  amber::Buffer::~Buffer(v42, v23, v24, v25, v26, v27, v28);
  amber::Buffer::~Buffer(v47, v29, v30, v31, v32, v33, v34);
  return 0xFFFFFFFFLL;
}

void sub_296986C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  amber::JSONInputStream::~JSONInputStream(&a25);
  amber::Buffer::~Buffer(&a58, v60, v61, v62, v63, v64, v65);
  amber::Buffer::~Buffer((v58 - 240), v66, v67, v68, v69, v70, v71);
  _Unwind_Resume(a1);
}

void amber::KnoxMultipartUpload::~KnoxMultipartUpload(amber::KnoxMultipartUpload *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE1530;
  amber::KnoxMultipartUpload::cancel(this, a2, a3, a4, a5, a6, a7);
  amber::KnoxPointer::~KnoxPointer(this + 52);
  std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::destroy(this + 392, *(this + 50));
  v8 = (this + 368);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::mutex::~mutex((this + 304));
  *(this + 2) = &unk_2A1DDFDD8;
  *(this + 3) = &unk_2A1DDFE08;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 36) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
}

{
  amber::KnoxMultipartUpload::~KnoxMultipartUpload(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::KnoxMultipartUpload::cancel(atomic_uint *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong(this + 75, &v8, 0);
  if (v8 == 1)
  {
    amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "cancel", 0x11E, 0, "cancelling multipart upload", a7);
    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    v10 = MEMORY[0x29C25BF00](__p, "files/");
    v11 = *(this + 591);
    if (v11 >= 0)
    {
      v12 = (this + 142);
    }

    else
    {
      v12 = *(this + 71);
    }

    if (v11 >= 0)
    {
      v13 = *(this + 591);
    }

    else
    {
      v13 = *(this + 72);
    }

    std::string::append(v10, v12, v13);
    v14 = *(this + 1);
    if (v21 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v19[1] = 0;
    v19[2] = 0;
    v19[0] = &off_2A1DDFC68;
    v17 = amber::KnoxContext::knoxPerform(v14, 4u, v15, v19, 0);
    if (v17 < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "cancel", 0x126, 0, "Knox cancel failed", v16);
    }

    v7 = (v17 >> 31);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v7;
}

void sub_296986F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::KnoxMultipartUpload::enqueueUpload(amber::KnoxMultipartUpload *this, unint64_t a2, const amber::ConstMemoryView *a3, void *a4, void (*a5)(void *, int), uint64_t a6, const char *a7)
{
  memset(&v16, 0, sizeof(v16));
  if (atomic_load(this + 75))
  {
    std::mutex::lock((this + 304));
    v11 = *(this + 46);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 47) - v11) >> 3) <= a2)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "enqueueUpload", 0x70, 0, "no available upload slots", v10);
    }

    else
    {
      std::string::operator=(&v16, (v11 + 24 * a2));
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v14 = *(this + 46) + 24 * a2;
        if (*(v14 + 23) < 0)
        {
          **v14 = 0;
          *(v14 + 8) = 0;
        }

        else
        {
          *v14 = 0;
          *(v14 + 23) = 0;
        }

        std::mutex::unlock((this + 304));
        operator new();
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "enqueueUpload", 0x72, 0, "part uploaded twice", v12);
    }

    std::mutex::unlock((this + 304));
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "enqueueUpload", 0x6B, 0, "upload while not in uploading state", a7);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return 0xFFFFFFFFLL;
}

void sub_296987260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::KnoxMultipartUpload::httpCompletion(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if ((v4 & 1) == 0)
  {
    std::mutex::lock((a1 + 304));
    memset(&__str, 0, sizeof(__str));
    v8 = *(a1 + 400);
    if (v8)
    {
      v9 = a2[2];
      v10 = a1 + 400;
      do
      {
        v11 = *(v8 + 32);
        v12 = v11 >= v9;
        v13 = v11 < v9;
        if (v12)
        {
          v10 = v8;
        }

        v8 = *(v8 + 8 * v13);
      }

      while (v8);
      if (v10 != a1 + 400 && v9 >= *(v10 + 32))
      {
        goto LABEL_12;
      }
    }

    if (amber::HTTPHeadersLookup(a3, "etag", &__str) == 1)
    {
      v18 = a2 + 2;
      v14 = std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 392, a2 + 2);
      std::string::operator=((v14 + 5), &__str);
      *(a1 + 648) += a2[3];
    }

    else
    {
LABEL_12:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "httpCompletion", 0xA4, 0, "duplicate part index", v7);
      v4 = -1;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::mutex::unlock((a1 + 304));
  }

  v15 = a2[5];
  if (v15)
  {
    v15(a2[4], -(v4 & 1));
  }

  return (*(*a2 + 8))(a2);
}

void sub_29698743C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 304));
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxMultipartUpload::commit(atomic_uint *this, uint64_t a2, const char *a3, const char *a4, amber::KnoxPointer *a5, uint64_t a6, const char *a7)
{
  v30[0] = &unk_2A1DDFD28;
  v30[2] = 0;
  v30[3] = 0;
  v30[1] = off_2A1DDFD48;
  v30[5] = 0;
  v30[6] = 0;
  v30[4] = &off_2A1DDFDA8;
  v30[7] = &off_2A1DDFC68;
  v31 = 0u;
  v32 = 0u;
  v7 = 1;
  v33 = 1;
  v34 = 0;
  v24 = 0;
  v25[0] = &unk_2A1DDFD28;
  v25[2] = 0;
  v25[3] = 0;
  v25[1] = off_2A1DDFD48;
  v25[5] = 0;
  v25[6] = 0;
  v25[4] = &off_2A1DDFDA8;
  v25[7] = &off_2A1DDFC68;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  v29 = 0;
  __p = 0;
  v23 = 0;
  atomic_compare_exchange_strong(this + 75, &v7, 0);
  if (v7 == 1)
  {
    *(this + 80) = a2;
    amber::Buffer::resize(v25, 0, a3, a4, a5, a6, a7);
    amber::JSONOutputStream::JSONOutputStream(v21, v25);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxMultipartUpload.cpp", "commit", 0xBE, 0, "commit while not in uploading state", a7);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  amber::Buffer::~Buffer(v25, v8, v9, v10, v11, v12, v13);
  amber::Buffer::~Buffer(v30, v14, v15, v16, v17, v18, v19);
  return 0xFFFFFFFFLL;
}

void sub_296987BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  amber::Buffer::~Buffer(&a60, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer((v60 - 184), v62, v63, v64, v65, v66, v67);
  _Unwind_Resume(a1);
}

uint64_t amber::JSONOutputStream::appendArray<std::string>(const void **a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v15 = amber::JSONOutputStream::beginArray(a1, a2, a3, a4, a5, a6, a7) >> 31;
  v18 = *a3;
  v16 = a3 + 1;
  v17 = v18;
  if (v18 != v16)
  {
    do
    {
      v19 = *(v17 + 63);
      if (v19 < 0)
      {
        v20 = v17[5];
        v19 = v17[6];
      }

      else
      {
        v20 = v17 + 5;
      }

      v25[0] = v20;
      v25[1] = v19;
      if (amber::JSONOutputStream::append(a1, 0, v25, v11, v12, v13, v14))
      {
        v15 = -1;
      }

      v21 = v17[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v17[2];
          v23 = *v22 == v17;
          v17 = v22;
        }

        while (!v23);
      }

      v17 = v22;
    }

    while (v22 != v16);
  }

  if (amber::JSONOutputStream::end(a1, v9, v10, v11, v12, v13, v14) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v15;
  }
}

uint64_t amber::KnoxPointer::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 16), (a2 + 16));
  if (a1 != a2)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((a1 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
  }

  *(a1 + 88) = *(a2 + 88);
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  *(a1 + 144) = *(a2 + 144);
  std::string::operator=((a1 + 152), (a2 + 152));
  std::string::operator=((a1 + 176), (a2 + 176));
  std::string::operator=((a1 + 200), (a2 + 200));
  *(a1 + 224) = *(a2 + 224);
  return a1;
}

uint64_t amber::KnoxUploadAttributes::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), (a2 + 8));
  if (a1 != a2)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

double amber::KnoxMultipartUpload::KnoxMultipartUpload(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1DE1530;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_2A1DDFDD8;
  *(a1 + 24) = &unk_2A1DDFE08;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 850045863;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = a1 + 400;
  *(a1 + 416) = &unk_2A1DE0CE8;
  *(a1 + 424) = &unk_2A1DE1008;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = -1;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  return result;
}

uint64_t amber::CryptoBlobBase<256u>::resize(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 >= 0x101)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././Crypto/./CryptoBlob.hpp", "resize", 0x55, 0, "CryptoBlob invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "CryptoBlob invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(a1 + 16) = a2;
  v9[0] = &off_2A1DDFDA8;
  v9[1] = a1 + 20;
  v9[2] = 256;
  amber::MutableMemoryView::operator+(v9, a2, a7, v10);
  bzero(v10[1], v10[2]);
  return 0;
}

void amber::SharedMemoryBlockQueues::SharedMemoryBlockQueues(amber::SharedMemoryBlockQueues *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = 0;
  *(this + 2) = 0;
  v8 = (this + 16);
  *(this + 2) = &off_2A1DDFDA8;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  memset(&__dst[3], 0, 304);
  v9 = *(a2 + 2);
  if (v9 < 0x148)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryBlockQueues.cpp", "SharedMemoryBlockQueues", 0x58, 0, "invalid buffer size", a7);
  }

  else
  {
    __s2 = &off_2A1DDFDA8;
    v17 = __dst;
    v18 = 328;
    v11 = *(a2 + 1);
    v38 = &off_2A1DDFC68;
    v39 = v11;
    v40 = v9;
    if ((v9 & 0x8000000000000000) != 0 || !v11)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memcpy(__dst, v11, 0x148uLL);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    if ((amber::SharedMemoryBlockQueues::Parameters::initialize(&__s2, __dst[0], LODWORD(__dst[1]), HIDWORD(__dst[1])) & 0x80000000) == 0 && !memcmp(__dst, &__s2, 0x148uLL) && __dst[2] <= *(a2 + 2))
    {
      *this = __dst[0];
      *(this + 2) = __dst[1];
      amber::MutableMemoryView::view(a2, &__dst[21], v12, &__s2);
      if (&__s2 != v8)
      {
        v13 = v18;
        *(this + 3) = v17;
        *(this + 4) = v13;
      }

      operator new();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryBlockQueues.cpp", "SharedMemoryBlockQueues", 0x61, 0, "parameters mismatch", v12);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x29C25BE90](v14, "invalid parameters");
  __cxa_throw(v14, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void sub_296988698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  __cxa_free_exception(v11);
  v13 = v10[8];
  if (v13)
  {
    v10[9] = v13;
    operator delete(v13);
  }

  v14 = *a10;
  if (*a10)
  {
    v10[6] = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::SharedMemoryBlockQueues::Parameters::initialize(uint64_t a1, uint64_t a2, amber::SharedMemoryFixedSizeQueue *a3, unsigned int a4)
{
  v8 = getpagesize();
  v10 = v8;
  if (v8 < 0x400 || 0x4000 != 0x4000uLL / v8 * v8 || (a2 & 0x3FFF) != 0 || (a2 - 16777217) < 0xFFFFFFFFFF000000 || (a3 - 1048577) < 0xFFF00000 || a4 - 9 < 0xFFFFFFF8 || (AllocationSize = amber::SharedMemoryFixedSizeQueue::getAllocationSize(a3), (AllocationSize & 0x8000000000000000) != 0) || (v13 = AllocationSize, v14 = amber::SharedMemorySemaphore::getAllocationSize(AllocationSize), v14 < 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryBlockQueues.cpp", "initialize", 0x34, 0, "invalid parameters page_size=%zu, block_size=%zu, block_count=%u", v9, v10, a2, a3);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    v15 = a3 * a2;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 12) = a4;
    v16 = a4;
    v17 = (a1 + 48);
    v18 = 384;
    v19 = a4;
    *(a1 + 24) = xmmword_296A14FF0;
    do
    {
      v20 = (v14 + 63 + v18) & 0xFFFFFFFFFFFFFFC0;
      if (v18 < v20)
      {
        v21 = (v14 + 63 + v18) & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = 0;
        v21 = 0;
      }

      *(v17 - 1) = v18;
      *v17 = v21;
      v17 += 2;
      v18 = v20;
      --v19;
    }

    while (v19);
    v22 = (v20 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
    v23 = v22 + v15;
    v24 = v22 >= v22 + v15;
    if (v22 >= v22 + v15)
    {
      v25 = 0;
    }

    else
    {
      v25 = (v20 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
    }

    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    *(a1 + 168) = v25;
    *(a1 + 176) = v26;
    v27 = (v23 + v13 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
    if (v23 >= v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v23;
    }

    if (v23 >= v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = (v23 + v13 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
    }

    *(a1 + 184) = v28;
    *(a1 + 192) = v29;
    v30 = (a1 + 208);
    do
    {
      v31 = v27;
      v27 = (v27 + v13 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
      if (v31 < v27)
      {
        v32 = v27;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      *(v30 - 1) = v31;
      *v30 = v32;
      v30 += 2;
      --v16;
    }

    while (v16);
    result = 0;
    *(a1 + 16) = v27;
  }

  return result;
}

uint64_t amber::SharedMemoryBlockQueues::getAllocationSize(amber::SharedMemoryBlockQueues *this, amber::SharedMemoryFixedSizeQueue *a2, unsigned int a3)
{
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if ((amber::SharedMemoryBlockQueues::Parameters::initialize(v7, this, a2, a3) & 0x80000000) != 0)
  {
    v5 = "invalid parameters\n";
    v6 = 124;
  }

  else
  {
    result = v8;
    if ((v8 & 0x8000000000000000) == 0)
    {
      return result;
    }

    v5 = "invalid size";
    v6 = 125;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryBlockQueues.cpp", "getAllocationSize", v6, 0, v5, v3);
  return -1;
}

uint64_t amber::SharedMemoryBlockQueues::initialize(amber::SharedMemoryBlockQueues *this, const amber::MutableMemoryView *a2, const amber::MutableMemoryView *a3, unsigned int a4)
{
  LODWORD(v4) = a4;
  memset(&__src[3], 0, 304);
  if ((amber::SharedMemoryBlockQueues::Parameters::initialize(__src, a2, a3, a4) & 0x80000000) != 0 || __src[2] > *(this + 2))
  {
    v8 = "invalid parameters\n";
    v9 = 136;
  }

  else
  {
    amber::MutableMemoryView::view(this, &__src[3], v7, &v28);
    bzero(__dst, v30);
    amber::MutableMemoryView::view(this, &__src[3], v11, &v28);
    v31 = &off_2A1DDFDA8;
    v32 = __src;
    v33 = 328;
    v34 = &off_2A1DDFC68;
    v35 = __src;
    v36 = 328;
    if (v30 <= 0x147)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v12);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memcpy(__dst, __src, 0x148uLL);
    amber::MutableMemoryView::view(this, &__src[21], v13, &v28);
    bzero(__dst, v30);
    amber::MutableMemoryView::view(this, &__src[23], v14, &v28);
    if ((amber::SharedMemoryFixedSizeQueue::initialize(&v28, a3) & 0x80000000) != 0)
    {
      v8 = "init internal queue";
      v9 = 142;
    }

    else
    {
      if (!v4)
      {
LABEL_14:
        amber::SharedMemoryBlockQueues::SharedMemoryBlockQueues(&v28, this, v15, v16, v17, v18, v7);
      }

      v19 = &__src[25];
      v4 = v4;
      v20 = v4;
      do
      {
        amber::MutableMemoryView::view(this, v19, v7, &v28);
        if ((amber::SharedMemoryFixedSizeQueue::initialize(&v28, a3) & 0x80000000) != 0)
        {
          v8 = "init internal queue";
          v9 = 145;
          goto LABEL_4;
        }

        v19 = (v19 + 16);
        --v20;
      }

      while (v20);
      v21 = &__src[5];
      while (1)
      {
        amber::MutableMemoryView::view(this, v21, v7, &v28);
        if ((amber::SharedMemorySemaphore::initialize(&v28, 0, v22, v23, v24, v25, v26) & 0x80000000) != 0)
        {
          break;
        }

        v21 = (v21 + 16);
        if (!--v4)
        {
          goto LABEL_14;
        }
      }

      v8 = "init internal semaphore";
      v9 = 149;
    }
  }

LABEL_4:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryBlockQueues.cpp", "initialize", v9, 0, v8, v7);
  return 0xFFFFFFFFLL;
}

void amber::SharedMemoryBlockQueues::releaseAllBlocks(amber::SharedMemoryFixedSizeQueue **this)
{
  if (*(this + 2))
  {
    v2 = 0;
    do
    {
      amber::SharedMemoryFixedSizeQueue::enqueue(this[11], v2);
      v2 = (v2 + 1);
    }

    while (v2 < *(this + 2));
  }
}

void amber::SharedMemoryBlockQueues::~SharedMemoryBlockQueues(amber::SharedMemoryBlockQueues *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    MEMORY[0x29C25C000](v2, 0x1020C40BF36A85DLL);
  }

  v3 = *(this + 5);
  v4 = *(this + 6);
  while (v3 != v4)
  {
    if (*v3)
    {
      MEMORY[0x29C25C000](*v3, 0x1020C40BF36A85DLL);
    }

    ++v3;
  }

  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v5 != v6)
  {
    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = *(this + 8);
  }

  if (v5)
  {
    *(this + 9) = v5;
    operator delete(v5);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }
}

unint64_t amber::SharedMemoryBlockQueues::allocateAllBlocks(unint64_t this)
{
  if (*(this + 8))
  {
    v1 = this;
    v2 = 0;
    do
    {
      this = amber::SharedMemoryFixedSizeQueue::dequeue(*(v1 + 88));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  return this;
}

void amber::SyncBlockDevice::SyncBlockDevice(amber::SyncBlockDevice *this, int a2, uint64_t a3, const char *a4)
{
  v5 = amber::BlockDevice::BlockDevice(this, a3, a4);
  *v5 = &unk_2A1DE1590;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 39) = &unk_2A1DE1748;
  *(v5 + 80) = 0;
  *(v5 + 41) = v5 + 328;
  *(v5 + 42) = v5 + 328;
  *(v5 + 43) = 0;
  *(v5 + 44) = 850045863;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 392) = 0u;
  *(v5 + 51) = 0;
  *(v5 + 52) = 1018212795;
  *(v5 + 424) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 452) = 0u;
  if (!a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "SyncBlockDevice", 0x80, 0, "BlockDevice: invalid thread count (falling back to 1 thread)", v6);
  }

  operator new();
}

void sub_29698910C(_Unwind_Exception *a1)
{
  amber::SharedQueue<unsigned int>::~SharedQueue(v2);
  v4 = *(v1 + 36);
  if (v4)
  {
    *(v1 + 37) = v4;
    operator delete(v4);
  }

  amber::BlockDevice::~BlockDevice(v1);
  _Unwind_Resume(a1);
}

void amber::SyncBlockDevice::~SyncBlockDevice(amber::SyncBlockDevice *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE1590;
  if (!atomic_load(this + 116))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "~SyncBlockDevice", 0x94, 0, "terminateThreads called from base class", a7);
  }

  amber::SyncBlockDevice::terminateThreads(this);
  amber::SharedQueue<unsigned int>::~SharedQueue(this + 312);
  v9 = *(this + 36);
  if (v9)
  {
    *(this + 37) = v9;
    operator delete(v9);
  }

  amber::BlockDevice::~BlockDevice(this);
}

{
  amber::SyncBlockDevice::~SyncBlockDevice(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SyncBlockDevice::terminateThreads(uint64_t this)
{
  v1 = 0;
  atomic_compare_exchange_strong((this + 464), &v1, 1u);
  if (!v1)
  {
    v2 = this;
    v3 = *(this + 280);
    if (v3)
    {
      amber::SyncBlockDeviceIngestThread::~SyncBlockDeviceIngestThread(v3);
      MEMORY[0x29C25C000]();
    }

    *(v2 + 35) = 0;
    amber::SyncBlockDevice::acquireAllProcessingThreads(v2);
    this = amber::SyncBlockDevice::releaseAllProcessingThreads(v2, 0);
    v4 = *(v2 + 36);
    v5 = *(v2 + 37);
    if (v4 != v5)
    {
      do
      {
        this = *v4;
        if (*v4)
        {
          amber::SyncBlockDeviceProcessingThread::~SyncBlockDeviceProcessingThread(this);
          this = MEMORY[0x29C25C000]();
        }

        ++v4;
      }

      while (v4 != v5);
      v4 = *(v2 + 36);
    }

    *(v2 + 37) = v4;
  }

  return this;
}

uint64_t amber::SyncBlockDevice::acquireAllProcessingThreads(amber::SyncBlockDevice *this)
{
  v1 = *(this + 37) - *(this + 36);
  v2 = v1 >> 3;
  if (!(v1 >> 3))
  {
    return 0;
  }

  v4 = 1;
  v5 = v1 >> 3;
  do
  {
    v8 = -1;
    if ((amber::SharedQueue<unsigned int>::removeFirst(this + 312, &v8) & 0x80000000) != 0 || v8 >= v2)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "acquireAllProcessingThreads", 0xFC, 0, "acquire processing thread", v6);
      v4 = 0;
    }

    LODWORD(v5) = v5 - 1;
  }

  while (v5);
  if (v4)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::SyncBlockDevice::releaseAllProcessingThreads(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 296) - *(a1 + 288);
  if ((v2 & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    v6 = (v2 >> 3);
    do
    {
      v7 = *(*(a1 + 288) + 8 * v5);
      *(v7 + 152) = a2;
      amber::Sem::release((v7 + 32));
      ++v5;
    }

    while (v6 != v5);
  }

  return 0;
}

uint64_t amber::SyncBlockDevice::enqueueRequest(amber::SyncBlockDeviceIngestThread **this, amber::BlockDeviceRequest *a2)
{
  amber::BlockDeviceEvent::BlockDeviceEvent(v10, 11, a2);
  amber::BlockDeviceEvent::send(v10);
  amber::SyncBlockDeviceIngestThread::enqueueRequest(this[35], a2, v4, v5, v6, v7, v8);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v10);
  return 0;
}

uint64_t amber::SyncBlockDeviceIngestThread::enqueueRequest(amber::SyncBlockDeviceIngestThread *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!atomic_load(this + 74))
  {
    amber::Sem::acquire((this + 176));
    amber::SharedQueue<amber::BlockDeviceRequest *>::insertLast(this + 24);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "enqueueRequest", 0x34, 0, "enqueueRequest while shutting down", a7);
  return 0xFFFFFFFFLL;
}

amber::BlockDeviceRequest *amber::SyncBlockDevice::runIngest(amber::SyncBlockDevice *this, amber::SyncBlockDeviceIngestThread *a2)
{
  result = amber::SyncBlockDeviceIngestThread::dequeueRequest(a2);
  if (result)
  {
    v5 = result;
    do
    {
      amber::BlockDeviceEvent::BlockDeviceEvent(v21, 12, v5);
      amber::BlockDeviceEvent::send(v21);
      v6 = *(v5 + 5);
      if (v6 > 8)
      {
        if (v6 == 10)
        {
          if ((amber::SyncBlockDevice::acquireAllProcessingThreads(this) & 0x80000000) != 0 || (amber::SyncBlockDevice::releaseAllProcessingThreads(this, 1), (amber::BlockDeviceRequest::sendReply(v5, 1, 0, v16, v17, v18, v19) & 0x80000000) != 0))
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "runIngest", 0xDB, 0, "barrier", v15);
          }

          goto LABEL_24;
        }

        if (v6 == 9)
        {
LABEL_9:
          if ((amber::SyncBlockDevice::acquireAllProcessingThreads(this) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "runIngest", 0xCC, 0, "acquire all threads", v8);
          }

          v9 = **(this + 36);
          *(v9 + 152) = v5;
          amber::Sem::release((v9 + 32));
          v20 = -1;
          if ((amber::SharedQueue<unsigned int>::removeFirst(this + 312, &v20) & 0x80000000) != 0 || v20)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "runIngest", 0xD4, 0, "flush", v10);
          }

          else
          {
            amber::SyncBlockDevice::releaseAllProcessingThreads(this, 1);
          }

          goto LABEL_24;
        }
      }

      else if (v6 == 3 || v6 == 7)
      {
        goto LABEL_9;
      }

      v20 = -1;
      if ((amber::SharedQueue<unsigned int>::removeFirst(this + 312, &v20) & 0x80000000) != 0 || (v12 = v20, v13 = *(this + 36), v20 >= ((*(this + 37) - v13) >> 3)))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "runIngest", 0xE1, 0, "acquire thread", v11);
        v12 = v20;
        v13 = *(this + 36);
      }

      v14 = *(v13 + 8 * v12);
      *(v14 + 152) = v5;
      amber::Sem::release((v14 + 32));
LABEL_24:
      amber::BlockDeviceEvent::~BlockDeviceEvent(v21);
      result = amber::SyncBlockDeviceIngestThread::dequeueRequest(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_296989770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t amber::SyncBlockDeviceIngestThread::dequeueRequest(amber::SyncBlockDeviceIngestThread *this)
{
  v4 = 0;
  if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 24, &v4) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "dequeueRequest", 0x3D, 0, "dequeue", v2);
  }

  amber::Sem::release((this + 176));
  return v4;
}

uint64_t amber::SyncBlockDevice::executeInvalid(amber::SyncBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v4 = *(a3 + 5);
  v5 = amber::blockDeviceRequestCommandString(v4);
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "executeInvalid", 0xEF, 0, "invalid request: %u (%s), length=%u, offset=%llu", v6, v4, v5, *(a3 + 14), *(a3 + 6));
  amber::BlockDeviceRequest::sendReply(a3, -2147483603, 0, v7, v8, v9, v10);
  return 0xFFFFFFFFLL;
}

uint64_t amber::SyncBlockDevice::executePrefetchSequence(amber::SyncBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v4 = *(a3 + 161);
  if ((amber::BlockDevice::executePrefetchSequence(this, *(a3 + 14), 2u) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "executePrefetchSequence", 0x110, 0, "executePrefetchSequence", v8);
    v9 = -2147483626;
  }

  else
  {
    v9 = 1;
  }

  amber::BlockDeviceRequest::sendReply(a3, v9, 0, v5, v6, v7, v8);
  return 0;
}

uint64_t amber::SyncBlockDevice::executeLogStats(amber::SyncBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::BlockDevice::executeLogStats(this, *(a3 + 14) >> 3, *(a3 + 8), *(a3 + 161), a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/SyncBlockDevice.cpp", "executeLogStats", 0x11A, 0, "executeLogStats", v11);
    v12 = -2147483626;
  }

  else
  {
    v12 = 1;
  }

  amber::BlockDeviceRequest::sendReply(a3, v12, 0, v8, v9, v10, v11);
  return 0;
}

uint64_t amber::SyncBlockDevice::executeRequest(amber::SyncBlockDevice *this, uint64_t a2, amber::BlockDeviceRequest *a3)
{
  amber::BlockDeviceEvent::BlockDeviceEvent(v16, 13, a3);
  amber::BlockDeviceEvent::send(v16);
  v12 = *(a3 + 5);
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v13 = (*this + 192);
      }

      else if (v12 == 4)
      {
        v13 = (*this + 184);
      }

      else
      {
        v13 = (*this + 200);
      }

      goto LABEL_23;
    }

    if (v12 == 1)
    {
      v13 = (*this + 160);
      goto LABEL_23;
    }

    if (v12 == 2)
    {
      v13 = (*this + 168);
LABEL_23:
      v14 = (*v13)(this, a2, a3);
      goto LABEL_24;
    }

LABEL_25:
    amber::SyncBlockDevice::executeInvalid(v6, v7, a3);
    v14 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  if (v12 <= 7)
  {
    if (v12 == 6)
    {
      v13 = (*this + 176);
    }

    else
    {
      v13 = (*this + 216);
    }

    goto LABEL_23;
  }

  switch(v12)
  {
    case 8:
      amber::SyncBlockDevice::executeLogStats(this, v7, a3, v8, v9, v10, v11);
      break;
    case 9:
      v13 = (*this + 208);
      goto LABEL_23;
    case 11:
      amber::SyncBlockDevice::executePrefetchSequence(this, v7, a3);
      break;
    default:
      goto LABEL_25;
  }

  v14 = 0;
LABEL_24:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v16);
  return v14;
}

void amber::SyncBlockDeviceProcessingThread::SyncBlockDeviceProcessingThread(amber::SyncBlockDeviceProcessingThread *this, amber::SyncBlockDevice *a2, int a3)
{
  *this = &unk_2A1DE1698;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 6) = a3;
  *(this + 2) = xmmword_296A14210;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 1018212795;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  operator new();
}

void sub_296989E24(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x29C25C000](v4, 0xA1C409BE6959DLL);
  std::condition_variable::~condition_variable(v2);
  std::mutex::~mutex((v1 + 40));
  _Unwind_Resume(a1);
}

void amber::SyncBlockDeviceProcessingThread::~SyncBlockDeviceProcessingThread(amber::SyncBlockDeviceProcessingThread *this)
{
  amber::SyncBlockDeviceProcessingThread::~SyncBlockDeviceProcessingThread(this);

  JUMPOUT(0x29C25C000);
}

{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::condition_variable::~condition_variable((this + 104));
  std::mutex::~mutex((this + 40));
}

void amber::SyncBlockDeviceIngestThread::SyncBlockDeviceIngestThread(amber::SyncBlockDeviceIngestThread *this, amber::SyncBlockDevice *a2)
{
  *this = &unk_2A1DE16D8;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 3) = &unk_2A1DE1718;
  *(this + 8) = 0;
  *(this + 5) = this + 40;
  *(this + 6) = this + 40;
  *(this + 56) = xmmword_296A14210;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 1018212795;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 11) = xmmword_296A15000;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = 0;
  *(this + 31) = 1018212795;
  *(this + 284) = 0u;
  *(this + 17) = 0u;
  *(this + 16) = 0u;
  operator new();
}

void sub_296989FA4(_Unwind_Exception *a1)
{
  v5 = v4;
  MEMORY[0x29C25C000](v5, 0xA1C409BE6959DLL);
  std::condition_variable::~condition_variable(v3);
  std::mutex::~mutex((v1 + 184));
  amber::SharedQueue<amber::BlockDeviceRequest *>::~SharedQueue(v2);
  _Unwind_Resume(a1);
}

void amber::SyncBlockDeviceIngestThread::~SyncBlockDeviceIngestThread(amber::SyncBlockDeviceIngestThread *this)
{
  amber::SyncBlockDeviceIngestThread::~SyncBlockDeviceIngestThread(this);

  JUMPOUT(0x29C25C000);
}

{
  v2 = 0;
  atomic_compare_exchange_strong(this + 74, &v2, 1u);
  if (!v2)
  {
    amber::SharedQueue<amber::BlockDeviceRequest *>::insertLast(this + 24);
  }

  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::condition_variable::~condition_variable((this + 248));
  std::mutex::~mutex((this + 184));
  amber::SharedQueue<amber::BlockDeviceRequest *>::~SharedQueue(this + 24);
}

void amber::SharedQueue<amber::BlockDeviceRequest *>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<amber::BlockDeviceRequest *>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedQueue<amber::BlockDeviceRequest *>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE1718;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

void amber::SharedQueue<unsigned int>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<unsigned int>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedQueue<unsigned int>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE1748;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

uint64_t amber::SharedQueue<unsigned int>::removeFirst(uint64_t a1, _DWORD *a2)
{
  v10.__m_ = (a1 + 40);
  v10.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 8);
  if (v4 <= 0)
  {
    do
    {
      std::condition_variable::wait((a1 + 104), &v10);
      v4 = *(a1 + 8);
    }

    while (v4 < 1);
  }

  *(a1 + 8) = v4 - 1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *a2 = v5[4];
  v8 = *v5;
  v7 = *(v5 + 1);
  *(v8 + 8) = v7;
  *v7 = v8;
  *(a1 + 32) = v6 - 1;
  operator delete(v5);
  if (v10.__owns_)
  {
    std::mutex::unlock(v10.__m_);
  }

  return 0;
}

amber::BlockDevice *amber::BlockDevice::BlockDevice(amber::BlockDevice *this, uint64_t a2, const char *a3)
{
  *this = &unk_2A1DE1778;
  *(this + 1) = a2;
  *(this + 8) = 0;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = &unk_2A1DE0740;
  *(this + 12) = &unk_2A1DE0780;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = "<none>";
  }

  *(this + 62) = 0;
  MEMORY[0x29C25BF00](this + 256, v4);
  amber::BlockDeviceEvent::BlockDeviceEvent(v6, 1, this);
  if (v6[0])
  {
    amber::BlockDeviceEvent::invokeCallback(v6);
  }

  amber::BlockDeviceEvent::~BlockDeviceEvent(v6);
  return this;
}

void sub_29698A560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  amber::BlockDeviceEvent::~BlockDeviceEvent(&a9);
  if (*(v9 + 279) < 0)
  {
    operator delete(*(v9 + 256));
  }

  amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(v11);
  std::mutex::~mutex(v10);
  _Unwind_Resume(a1);
}

amber::BlockDeviceEvent *amber::BlockDeviceEvent::BlockDeviceEvent(amber::BlockDeviceEvent *this, int a2, amber::BlockDevice *a3)
{
  v6 = amber::BlockDeviceEvent::BlockDeviceEvent(this, a2);
  if (*v6)
  {
    v7 = amber::BlockDevice::eventContext(v6);
    if (a2 == 1)
    {
      add_explicit = atomic_fetch_add_explicit((v7 + 24), 1uLL, memory_order_relaxed);
      *(a3 + 30) = add_explicit;
    }

    else
    {
      add_explicit = *(a3 + 30);
    }

    v9 = *this;
    *(*this + 48) = add_explicit;
    v10 = a3 + 256;
    if (*(a3 + 279) < 0)
    {
      v10 = *v10;
    }

    strlcpy((v9 + 56), v10, 0x20uLL);
  }

  return this;
}

void amber::BlockDeviceEvent::send(amber::BlockDeviceEvent *this)
{
  if (*this)
  {
    amber::BlockDeviceEvent::invokeCallback(this);
  }
}

void amber::BlockDevice::~BlockDevice(amber::BlockDevice *this)
{
  *this = &unk_2A1DE1778;
  amber::BlockDeviceEvent::BlockDeviceEvent(v2, 2, this);
  if (v2[0])
  {
    amber::BlockDeviceEvent::invokeCallback(v2);
  }

  amber::BlockDeviceEvent::~BlockDeviceEvent(v2);
  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(this + 88);
  std::mutex::~mutex((this + 24));
}

{
  amber::BlockDevice::~BlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::BlockDevice::updateStatsAndPrefetchSequence(amber::BlockDevice *this, amber::BlockDeviceRequest *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((atomic_fetch_add_explicit(this + 62, 1u, memory_order_relaxed) & 0x7F) == 0)
  {
    amber::BlockDeviceEvent::BlockDeviceEvent(v25, 3, this);
    if (v25[0])
    {
      amber::BlockDeviceEvent::invokeCallback(v25);
    }

    amber::BlockDeviceEvent::~BlockDeviceEvent(v25);
  }

  LODWORD(v4) = *(a2 + 14);
  v5 = *(a2 + 170);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  else
  {
    v4 = v4;
  }

  if (*(a2 + 5) != 8)
  {
    atomic_fetch_add_explicit(this + 19, 1uLL, memory_order_relaxed);
    v6 = *(a2 + 5);
    if (v6 <= 2)
    {
      if (v6 == 1)
      {
        atomic_fetch_add_explicit(this + 20, 1uLL, memory_order_relaxed);
        v7 = (this + 208);
      }

      else
      {
        if (v6 != 2)
        {
          goto LABEL_34;
        }

        atomic_fetch_add_explicit(this + 21, 1uLL, memory_order_relaxed);
        v7 = (this + 216);
      }
    }

    else
    {
      switch(v6)
      {
        case 3:
          atomic_fetch_add_explicit(this + 23, 1uLL, memory_order_relaxed);
LABEL_21:
          if (*(a2 + 5) == 1 && *(this + 16) == 1 && *(this + 17) < *(this + 18))
          {
            std::mutex::lock((this + 24));
            amber::ObjectStorePath::ObjectStorePath(v25, (a2 + 88), v8, v9, v10, v11, v12);
            if (!v26 || !v27)
            {
              v26 = *(a2 + 6);
              v27 = *(a2 + 14);
            }

            v18 = *(this + 14);
            if (v18 >= *(this + 15))
            {
              v19 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<amber::ObjectStorePath const&>(this + 104, v25, v13, v14, v15, v16, v17);
            }

            else
            {
              amber::ObjectStorePath::ObjectStorePath(*(this + 14), v25, v13, v14, v15, v16, v17);
              v19 = v18 + 600;
              *(this + 14) = v18 + 600;
            }

            *(this + 14) = v19;
            v20 = *(this + 17);
            v21 = __CFADD__(v20, v27);
            v22 = v20 + v27;
            *(this + 17) = v22;
            if (v21 || v22 >= *(this + 18))
            {
              *(this + 17) = -1;
            }

            amber::ObjectStorePath::~ObjectStorePath(v25);
            std::mutex::unlock((this + 24));
          }

          goto LABEL_34;
        case 4:
          atomic_fetch_add_explicit(this + 24, 1uLL, memory_order_relaxed);
          v7 = (this + 232);
          break;
        case 6:
          atomic_fetch_add_explicit(this + 22, 1uLL, memory_order_relaxed);
          v7 = (this + 224);
          break;
        default:
          goto LABEL_34;
      }
    }

    atomic_fetch_add_explicit(v7, v4, memory_order_relaxed);
    goto LABEL_21;
  }

LABEL_34:
  v23 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29698A940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  amber::ObjectStorePath::~ObjectStorePath(&a9);
  std::mutex::unlock((v9 + 24));
  _Unwind_Resume(a1);
}

unint64_t *amber::BlockDevice::updateStats(unint64_t *this, unint64_t a2, unint64_t *a3)
{
  if (a2 >= 2)
  {
    v3 = atomic_load(this + 19);
    a3[1] = v3;
    if (a2 != 2)
    {
      v4 = atomic_load(this + 20);
      a3[2] = v4;
      if (a2 >= 4)
      {
        v5 = atomic_load(this + 21);
        a3[3] = v5;
        if (a2 != 4)
        {
          v6 = atomic_load(this + 22);
          a3[4] = v6;
          if (a2 >= 6)
          {
            v7 = atomic_load(this + 23);
            a3[5] = v7;
            if (a2 != 6)
            {
              v8 = atomic_load(this + 24);
              a3[6] = v8;
              if (a2 >= 8)
              {
                v9 = atomic_load(this + 25);
                a3[7] = v9;
                if (a2 != 8)
                {
                  v10 = atomic_load(this + 26);
                  a3[8] = v10;
                  if (a2 >= 0xA)
                  {
                    v11 = atomic_load(this + 27);
                    a3[9] = v11;
                    if (a2 != 10)
                    {
                      v12 = atomic_load(this + 28);
                      a3[10] = v12;
                      if (a2 >= 0xC)
                      {
                        v13 = atomic_load(this + 29);
                        a3[11] = v13;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t amber::BlockDevice::processRequest(amber::BlockDevice *this, amber::BlockDeviceRequest *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  memset(&v7[1], 0, 48);
  v8 = 0;
  v9.__cv_.__sig = 1018212795;
  memset(v9.__cv_.__opaque, 0, sizeof(v9.__cv_.__opaque));
  v6 = *(a2 + 72);
  v7[0] = xmmword_296A14210;
  *(a2 + 9) = &v6;
  *(a2 + 10) = processRequestProc;
  if ((amber::BlockDeviceRequest::enqueue(a2) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "processRequest", 0x9D, 0, "request enqueue", v2);
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    amber::Sem::acquire(v7);
    v3 = 0;
  }

  std::condition_variable::~condition_variable(&v9);
  std::mutex::~mutex((v7 + 8));
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_29698AB5C(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 88));
  std::mutex::~mutex((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t processRequestProc(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = v2(*a1);
  }

  else
  {
    v3 = 0;
  }

  amber::Sem::release((a1 + 2));
  return v3;
}

uint64_t amber::BlockDevice::setAttribute(amber::BlockDevice *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "setAttribute", 0xA9, 0, "invalid attribute encoding", v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::BlockDevice::getAttribute(amber::BlockDevice *this, amber::BaseObject *a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "getAttribute", 0xB3, 0, "invalid attribute encoding", v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::BlockDevice::read(amber::BlockDevice *this, void *a2, unint64_t a3, uint64_t a4)
{
  v12[75] = *MEMORY[0x29EDCA608];
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v9, 0);
  if (!HIDWORD(a3) && (a4 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "read", 0xBA, 0, "invalid request size", v6);
  amber::ObjectStorePath::~ObjectStorePath(v12);
  std::condition_variable::~condition_variable(&v11);
  std::mutex::~mutex(&v10);
  v7 = *MEMORY[0x29EDCA608];
  return -1;
}

void sub_29698AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(va);
  _Unwind_Resume(a1);
}

void amber::BlockDevice::readWithObjectStorePath(amber::BlockDevice *this, void *a2, const amber::ObjectStorePath *a3)
{
  v4 = *MEMORY[0x29EDCA608];
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v3, 0);
  operator new();
}

void sub_29698AFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(va);
  _Unwind_Resume(a1);
}

void amber::BlockDevice::flush(amber::BlockDevice *this)
{
  v2 = *MEMORY[0x29EDCA608];
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v1, 0);
  operator new();
}

void sub_29698B148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(va);
  _Unwind_Resume(a1);
}

void amber::BlockDevice::barrier(amber::BlockDevice *this)
{
  v2 = *MEMORY[0x29EDCA608];
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v1, 0);
  operator new();
}

void sub_29698B2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(va);
  _Unwind_Resume(a1);
}

uint64_t amber::BlockDevice::executeLogStats(amber::BlockDevice *this, unint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 >= 0x14)
  {
    v7 = 20;
  }

  else
  {
    v7 = a2;
  }

  if (a2)
  {
    if (a3)
    {
      amber::zero(void *,unsigned long)::memset_func(a3, 0, 8 * v7);
    }

    *a3 = v7;
    (*(*this + 144))(this, v7, a3);
    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "executeLogStats", 0x114, 0, "invalid max_values", a7);
    return 0xFFFFFFFFLL;
  }
}

void amber::BlockDevice::snapshot(amber::BlockDevice *this, amber::ObjectStorePath *a2)
{
  v3 = *MEMORY[0x29EDCA608];
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v2, 0);
  operator new();
}

void sub_29698B92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(va);
  _Unwind_Resume(a1);
}

uint64_t amber::BlockDevice::loadPrologue(amber::BlockDevice *this, amber::Buffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v44 = 0;
  if ((amber::Buffer::resize(a2, 0x10uLL, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (v15 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(a2, v9, v10, v11, v12, v13, v14), amber::BlockDevice::read(this, v15, 0x10uLL, 0) < 0) || (v21 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(a2, v16, v17, v18, v19, v20, v14), v28 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v22, v23, v24, v25, v26, v27), (AmberEncryptionContextParseMagic(v21, v28, &v44 + 1, &v44, v29, v30, v31) & 0x80000000) != 0) || (amber::Buffer::resize(a2, v44, v32, v33, v34, v35, v14) & 0x80000000) != 0 || (v41 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(a2, v36, v37, v38, v39, v40, v14), v42 = amber::BlockDevice::read(this, v41, v44, 0), result = 0, v42 < 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "loadPrologue", 0x15C, 0, "invalid/missing prologue", v14);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t amber::BlockDevice::loadPrologue(amber::BlockDevice *this, const amber::ObjectStorePath *a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v18 = 0;
  if ((amber::Buffer::resize(a3, *(a2 + 148), a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    v16 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(a3, v10, v11, v12, v13, v14, v15);
    amber::BlockDevice::readWithObjectStorePath(this, v16, a2);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "loadPrologue", 0x168, 0, "invalid/missing prologue", v15);
  return 0xFFFFFFFFLL;
}

uint64_t amber::BlockDevice::setPrefetchSequence(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  v5 = *(a1 + 104);
  v4 = *(a1 + 112);
  if (v4 != v5)
  {
    v6 = v4 - 75;
    v7 = v4 - 75;
    do
    {
      (**v7)(v7);
      v6 -= 75;
      v8 = v7 == v5;
      v7 -= 75;
    }

    while (!v8);
  }

  *(a1 + 112) = v5;
  std::vector<amber::ObjectStorePath>::reserve((a1 + 104), 0x2FC962FC962FC963 * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  *(a1 + 16) = 256;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  v14 = *(a2 + 16);
  if (v14 == *(a2 + 24))
  {
LABEL_12:
    v18 = 0;
  }

  else
  {
    v15 = *(a1 + 112);
    while (1)
    {
      if (v15 >= *(a1 + 120))
      {
        v15 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<amber::ObjectStorePath const&>(a1 + 104, v14, v9, v10, v11, v12, v13);
      }

      else
      {
        amber::ObjectStorePath::ObjectStorePath(v15, v14, v9, v10, v11, v12, v13);
        v15 = (v15 + 600);
        *(a1 + 112) = v15;
      }

      *(a1 + 112) = v15;
      v16 = *(a1 + 136);
      v17 = v14[148];
      *(a1 + 136) = v16 + v17;
      if (__CFADD__(v16, v17))
      {
        break;
      }

      v14 += 150;
      if (v14 == *(a2 + 24))
      {
        goto LABEL_12;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "setPrefetchSequence", 0x17C, 0, "prefetch sequence size overflow", v13);
    v18 = 0xFFFFFFFFLL;
  }

  std::mutex::unlock((a1 + 24));
  return v18;
}

uint64_t amber::BlockDevice::getPrefetchSequence(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 24));
  v5 = a2[2];
  v4 = a2[3];
  if (v4 != v5)
  {
    v6 = v4 - 75;
    v7 = v4 - 75;
    do
    {
      (**v7)(v7);
      v6 -= 75;
      v8 = v7 == v5;
      v7 -= 75;
    }

    while (!v8);
  }

  a2[3] = v5;
  std::vector<amber::ObjectStorePath>::reserve(a2 + 2, 0x2FC962FC962FC963 * ((*(a1 + 112) - *(a1 + 104)) >> 3));
  v14 = *(a1 + 104);
  if (v14 != *(a1 + 112))
  {
    v15 = a2[3];
    do
    {
      if (v15 >= a2[4])
      {
        v15 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<amber::ObjectStorePath const&>((a2 + 2), v14, v9, v10, v11, v12, v13);
      }

      else
      {
        amber::ObjectStorePath::ObjectStorePath(v15, v14, v9, v10, v11, v12, v13);
        v15 = (v15 + 600);
        a2[3] = v15;
      }

      a2[3] = v15;
      v14 = (v14 + 600);
    }

    while (v14 != *(a1 + 112));
  }

  std::mutex::unlock((a1 + 24));
  return 0;
}

uint64_t amber::BlockDevice::recordPrefetchSequence(amber::BlockDevice *this, uint64_t a2)
{
  std::mutex::lock((this + 24));
  v5 = *(this + 13);
  v4 = *(this + 14);
  if (v4 != v5)
  {
    v6 = v4 - 75;
    v7 = v4 - 75;
    do
    {
      (**v7)(v7);
      v6 -= 75;
      v8 = v7 == v5;
      v7 -= 75;
    }

    while (!v8);
  }

  *(this + 14) = v5;
  *(this + 8) = 1;
  *(this + 17) = 0;
  *(this + 18) = a2;
  std::mutex::unlock((this + 24));
  return 0;
}

uint64_t amber::BlockDevice::executePrefetchSequence(amber::BlockDevice *this, uint64_t a2, unsigned int a3)
{
  v22[75] = *MEMORY[0x29EDCA608];
  std::mutex::lock((this + 24));
  if (*(this + 17) == 1)
  {
    amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(&v17, 1);
    if (a2)
    {
      while (1)
      {
        v7 = *(this + 16);
        v8 = *(this + 13);
        if (v7 >= 0x2FC962FC962FC963 * ((*(this + 14) - v8) >> 3))
        {
          break;
        }

        *(this + 16) = v7 + 1;
        v9 = v8 + 600 * v7;
        if (*(v9 + 592))
        {
          while (v21[0] > a3)
          {
            atomic_fetch_add_explicit(v21, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            amber::Sem::acquire(&v18);
          }

          if (!malloc_type_malloc(*(v9 + 592), 0xF93785E2uLL))
          {
            v10 = __error();
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v10, "malloc", v11);
          }

          operator new();
        }
      }
    }

    v12 = 1;
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
    {
      do
      {
        amber::Sem::acquire(&v18);
      }

      while (atomic_fetch_add_explicit(v21, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
    }

    atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
    if (atomic_load(&v17))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "executePrefetchSequence", 0x1D0, 0, "prefetch request failed", v6);
      v12 = 0;
    }

    if (*(this + 16) >= (0x2FC962FC962FC963 * ((*(this + 14) - *(this + 13)) >> 3)))
    {
      *(this + 17) = 0;
    }

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0xFFFFFFFFLL;
    }

    amber::ObjectStorePath::~ObjectStorePath(v22);
    std::condition_variable::~condition_variable(&v20);
    std::mutex::~mutex(&v19);
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock((this + 24));
  v15 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_29698C228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(va);
  std::mutex::unlock((v6 + 24));
  _Unwind_Resume(a1);
}

uint64_t amber::BlockDevice::registerEventCallback(amber::BlockDevice *a1, uint64_t a2)
{
  v4 = amber::BlockDevice::eventContext(a1);
  std::mutex::lock((v4 + 40));
  if (a2 && *(v4 + 8))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "registerEventCallback", 0x1E6, 0, "event callback already registered", v6);
    a2 = 0xFFFFFFFFLL;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 32) = 0;
    atomic_store(0, (v4 + 16));
    atomic_store(0, (v4 + 24));
    if (a2)
    {
      do
      {
        v8[0] = &off_2A1DDFDA8;
        v8[1] = v4 + 32;
        v8[2] = 8;
        amber::RNG(v8, v5);
      }

      while (!*(v4 + 32));
      a2 = 0;
    }
  }

  std::mutex::unlock((v4 + 40));
  return a2;
}

uint64_t amber::BlockDevice::eventContext(amber::BlockDevice *this)
{
  if (atomic_load_explicit(&amber::BlockDevice::eventContext(void)::event_context_flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&amber::BlockDevice::eventContext(void)::event_context_flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<amber::BlockDevice::eventContext(void)::$_0 &&>>);
  }

  return amber::BlockDevice::eventContext(void)::event_context;
}

amber::BlockDeviceEvent *amber::BlockDeviceEvent::BlockDeviceEvent(amber::BlockDeviceEvent *this, int a2)
{
  *this = 0;
  *(this + 4) = 0;
  v4 = amber::BlockDevice::eventContext(this);
  if (*(v4 + 8))
  {
    v5 = v4;
    v6 = malloc_type_malloc(0x80uLL, 0xF93785E2uLL);
    if (v6)
    {
      v7 = v6;
      amber::zero(void *,unsigned long)::memset_func(v6, 0, 128);
      *this = v7;
      *v7 = *(v5 + 32);
      v7[5] = a2;
    }

    else
    {
      v8 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v8, "malloc", v9);
      *this = 0;
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "BlockDeviceEvent", 0x205, 0, "allocating event struct", v10);
    }
  }

  return this;
}

void amber::BlockDeviceEvent::~BlockDeviceEvent(amber::BlockDeviceEvent *this)
{
  v2 = *(this + 8);
  v3 = *this;
  if (v2 != 1 || !v3)
  {
    goto LABEL_5;
  }

  if (*(this + 9))
  {
    v3[14] = 3;
    amber::BlockDeviceEvent::invokeCallback(this);
    *(this + 8) = 0;
    v3 = *this;
LABEL_5:
    free(v3);
    return;
  }

  __break(1u);
}

void *amber::BlockDeviceEvent::setRequestCreateAttributes(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*(a2 + 8) + 240);
  *(v3 + 48) = *(a2 + 1288);
  *(v3 + 56) = v4;
  v5 = *(a2 + 48);
  *(v3 + 64) = *(a2 + 40);
  *(v3 + 72) = v5;
  v6 = *(a2 + 56);
  v7 = *(a2 + 20);
  *(v3 + 80) = v6;
  *(v3 + 84) = v7;
  v8 = *(a2 + 400);
  if (v8 >= 0x20)
  {
    v9 = 32;
  }

  else
  {
    v9 = v8;
  }

  result = memcpy((v3 + 92), (a2 + 404), v9);
  *(v3 + 88) = v9;
  if (v6)
  {
    if (v5)
    {
      return result;
    }

LABEL_8:
    *(v3 + 72) = *(a2 + 672);
    return result;
  }

  *(v3 + 80) = *(a2 + 680);
  if (!v5)
  {
    goto LABEL_8;
  }

  return result;
}

amber::BlockDeviceEvent *amber::BlockDeviceEvent::BlockDeviceEvent(amber::BlockDeviceEvent *this, int a2, amber::BlockDeviceRequest *a3)
{
  v6 = *amber::BlockDeviceEvent::BlockDeviceEvent(this, a2);
  if (v6)
  {
    if (a3)
    {
      v7 = amber::BlockDevice::eventContext(v6);
      if (a2 == 14)
      {
        v8 = *this;
        *(v8 + 48) = *(a3 + 161);
        *(v8 + 56) = *(a3 + 7);
      }

      else if (a2 == 10)
      {
        *(a3 + 161) = atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
        amber::BlockDeviceEvent::setRequestCreateAttributes(this, a3);
      }

      else
      {
        v9 = *this;
        *(v9 + 48) = *(a3 + 161);
        *(v9 + 60) = atomic_fetch_add_explicit(a3 + 324, 1u, memory_order_relaxed);
        *(this + 9) = 1;
      }
    }

    else
    {
      free(v6);
      *this = 0;
    }
  }

  return this;
}

uint64_t **amber::BlockDeviceEvent::setRequestLinkAttributes(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v4[6] = *(a2 + 1288);
  v4[7] = a3;
  if (!a4)
  {
    a4 = *v4;
  }

  v4[8] = a4;
  return result;
}

void amber::BlockDeviceEvent::invokeCallback(amber::BlockDeviceEvent *this)
{
  gettimeofday(&v5, 0);
  *(*this + 8) = v5;
  v2 = amber::uniqueThreadID();
  *(*this + 24) = v2;
  v3 = amber::BlockDevice::eventContext(v2);
  std::mutex::lock((v3 + 40));
  v4 = *(v3 + 8);
  if (v4)
  {
    v4(*v3, *this);
  }

  std::mutex::unlock((v3 + 40));
}

void amber::BlockDeviceEvent::sendBegin(amber::BlockDeviceEvent *this)
{
  if (*this)
  {
    if (*(this + 9))
    {
      *(*this + 56) = 1;
      amber::BlockDeviceEvent::invokeCallback(this);
      *(this + 8) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

void amber::BlockDeviceEvent::sendEnd(amber::BlockDeviceEvent *this)
{
  if (*this)
  {
    if (*(this + 9))
    {
      *(*this + 56) = 2;
      amber::BlockDeviceEvent::invokeCallback(this);
      *(this + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t AmberBlockDeviceClose(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberBlockDeviceGetBlockState(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a3 >= a2)
  {
    if ((a3 - a2) < 0 || a3 != a2 && !a4)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    return (*(*a1 + 32))(a1);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceGetBlockState", 0x29C, 0, "invalid block range", a7);
    return 0xFFFFFFFFLL;
  }
}