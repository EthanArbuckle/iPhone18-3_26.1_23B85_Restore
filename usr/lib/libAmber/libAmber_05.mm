void sub_2969A33CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  amber::JSONInputStream::~JSONInputStream(&a10);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(&a37);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxFileCreationAttributesSerializeJSON(uint64_t a1, amber::Stream *a2)
{
  v12[0] = &unk_2A1DE1AD8;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12[1] = &unk_2A1DE1008;
  v17 = 0;
  v18 = -1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  if ((amber::fromAmberObject(v12, a1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxFileCreationAttributesSerializeJSON", 0x250, 0, "invalid object", v3);
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    amber::JSONOutputStream::JSONOutputStream(v11, a2, 1);
    if ((amber::KnoxFileCreationAttributes::jsonSerialize(v12, v11, 0, v4, v5, v6, v7) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxFileCreationAttributesSerializeJSON", 0x254, 0, "JSON serializate AmberKnoxFileCreationAttributes", v8);
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = 0;
    }

    amber::JSONOutputStream::~JSONOutputStream(v11);
  }

  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(v12);
  return v9;
}

void sub_2969A3538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes((v2 - 240));
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxContextFileCreate(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, const char *a7)
{
  v82 = *MEMORY[0x29EDCA608];
  v49[0] = &unk_2A1DE1AD8;
  v49[1] = &unk_2A1DE1008;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v55 = -1;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  amber::ProxyBuffer::ProxyBuffer(v46, a3, a4, a4, a5, a6, a7);
  v30[0] = &unk_2A1DE0CE8;
  v30[1] = &unk_2A1DE1008;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36 = -1;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v64[0] = &unk_2A1DDFDD8;
  v64[1] = &unk_2A1DDFE08;
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
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  if ((amber::fromAmberObject(v49, a2) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxContextFileCreate", 0x267, 0, "invalid AmberKnoxFileCreationAttributes", v11);
LABEL_8:
    v20 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  amber::Buffer::constBuf(v46, v11, v63);
  amber::ConstMemoryView::view(v63, v47, v48 - v47, v12, v29);
  if ((amber::KnoxContext::fileCreate(a1, v49, v29, HIWORD(a6) & 1, v30, v64, v13) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxContextFileCreate", 0x268, 0, "file creation failed", v18);
    goto LABEL_8;
  }

  if ((amber::toAmberObject(v30, a5, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxContextFileCreate", 0x269, 0, "invalid KnoxPointer", v19);
    goto LABEL_8;
  }

  v20 = 0;
LABEL_9:
  amber::KnoxPointer::~KnoxPointer(v30);
  amber::Buffer::~Buffer(v46, v21, v22, v23, v24, v25, v26);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(v49);
  v27 = *MEMORY[0x29EDCA608];
  return v20;
}

void sub_2969A386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  amber::KnoxPointer::~KnoxPointer(&a13);
  amber::Buffer::~Buffer(&a43, v57, v58, v59, v60, v61, v62);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(&a56);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxContextFileDownload(amber::KnoxContext *a1, const char *a2, amber::Buffer *this, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = HIWORD(a4) & 1;
  amber::Buffer::resize(this, 0, this, a4, a5, a6, a7);
  v12 = amber::KnoxContext::fileDownload(a1, a2, this, v10);
  if ((v12 & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxContextFileDownload", 0x27A, 0, "file download failed", v11);
  }

  return v12;
}

void amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(void **this)
{
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE1AD8;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  this[1] = &unk_2A1DE1008;
  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  amber::JSONCodable::~JSONCodable((this + 1));

  amber::JSONCodable::~JSONCodable(this);
}

void *amber::ConstMemoryView::ConstMemoryView(void *this, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &off_2A1DDFC68;
  this[1] = a2;
  this[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return this;
}

{
  *this = &off_2A1DDFC68;
  this[1] = a2;
  this[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return this;
}

uint64_t amber::ProxyBuffer::ProxyBuffer(uint64_t this, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 < 0 || a2 && !a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = off_2A1DDFD48;
  *(this + 32) = &off_2A1DDFDA8;
  *(this + 40) = a3;
  *(this + 48) = a2;
  *(this + 56) = &off_2A1DDFC68;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = a4;
  *(this + 96) = 0;
  *(this + 98) = 0;
  *this = &unk_2A1DE08A8;
  return this;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t amber::NBDURL::createWithString(amber::NBDURL *this, const char *a2)
{
  v3 = strlen(this);
  if (!this)
  {
    goto LABEL_22;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 1, 0xF93785E2uLL);
  if (!v5)
  {
    v18 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v18, "malloc", v19);
LABEL_22:
    v20 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "createWithString", 0x92, *v20, "malloc", v21);
    v6 = 0;
    goto LABEL_23;
  }

  v6 = v5;
  memcpy(v5, this, v4 + 1);
  v7 = 0;
  if (!v4)
  {
    *v6 = 0;
    goto LABEL_25;
  }

  v8 = 0;
  do
  {
    v9 = v8 + 1;
    v10 = v6[v8];
    if (v10 == 37)
    {
      v11 = v8 + 3;
      if (v8 + 3 > v4)
      {
        goto LABEL_20;
      }

      v12 = v6[v9];
      v13 = v12 - 48;
      if ((v12 - 48) >= 0xA)
      {
        if ((v12 - 97) > 5)
        {
          if ((v12 - 71) < 0xFAu)
          {
            goto LABEL_20;
          }

          v13 = v12 - 55;
        }

        else
        {
          v13 = v12 - 87;
        }
      }

      v14 = v6[v8 + 2];
      v15 = v14 - 48;
      if ((v14 - 48) >= 0xA)
      {
        if ((v14 - 97) > 5)
        {
          if ((v14 - 71) < 0xFAu)
          {
            goto LABEL_20;
          }

          v15 = v14 - 55;
        }

        else
        {
          v15 = v14 - 87;
        }
      }

      LOBYTE(v10) = v15 + 16 * v13;
      v9 = v11;
    }

    v6[v7++] = v10;
    v8 = v9;
  }

  while (v9 < v4);
  v6[v7] = 0;
  if (v7 != -1)
  {
LABEL_25:
    operator new();
  }

LABEL_20:
  v16 = __error();
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "createWithString", 0x96, *v16, "decoding escape codes", v17);
LABEL_23:
  free(v6);
  return 0;
}

uint64_t amber::nbdServerHandshake(amber *this, amber::NetworkEndpoint *a2, _DWORD *a3, unsigned int *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a2;
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
  if ((amber::Buffer::reserve(v42, 0x12uLL, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (v47 = &off_2A1DDFC68, v48 = "NBDMAGICIHAVEOPT", v49 = 16, (amber::BufferProtocol<amber::Buffer>::append(v42, &v47, v10, v11, v12, v13, v14) & 0x80000000) != 0) || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(v42, v8, v15, v16, v17, v18, v14) & 0x80000000) != 0 || (amber::NetworkEndpoint::writeBuffer(this, v42, v19, v20, v21, v22, v14) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerHandshake", 0x106, 0, "send initial server message", v14);
LABEL_9:
    v40 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  amber::Buffer::resize(v42, 0, v23, v24, v25, v26, v14);
  if ((amber::NetworkEndpoint::readBufferToSize(this, v42, 4uLL, v27, v28, v29, v30) & 0x80000000) != 0 || (v50 = 0, v47 = &off_2A1DDFDA8, v48 = &v50, v49 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v42, &v47, 0, v31, v32, v33, v34) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerHandshake", 0x10D, 0, "read handshake flags", v34);
    goto LABEL_9;
  }

  v40 = 0;
  *a3 = bswap32(v50);
LABEL_10:
  amber::Buffer::~Buffer(v42, v35, v36, v37, v38, v39, v34);
  return v40;
}

void sub_2969A471C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::BufferProtocol<amber::Buffer>::appendNetwork16(unint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = __rev16(a2);
  v8[0] = &off_2A1DDFC68;
  v8[1] = &v9;
  v8[2] = 2;
  return amber::BufferProtocol<amber::Buffer>::append(a1, v8, a3, a4, a5, a6, a7);
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::loadNetwork32(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = 0;
  v9[0] = &off_2A1DDFDA8;
  v9[1] = &v10;
  v9[2] = 4;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(a1, v9, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = bswap32(v10);
  return result;
}

uint64_t amber::nbdClientHandshake(amber *this, amber::NetworkEndpoint *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v32[0] = &unk_2A1DDFD28;
  v32[2] = 0;
  v32[3] = 0;
  v32[1] = off_2A1DDFD48;
  v32[5] = 0;
  v32[6] = 0;
  v32[4] = &off_2A1DDFDA8;
  v32[7] = &off_2A1DDFC68;
  v33 = 0u;
  v34 = 0u;
  v35 = 1;
  v36 = 0;
  if ((amber::NetworkEndpoint::readBufferToSize(this, v32, 0x12uLL, a4, a5, a6, a7) & 0x80000000) != 0 || !amber::Buffer::matches(v32, "NBDMAGICIHAVEOPT", 0x10uLL, v11, v12, v13, v14) || (v38 = 0, v37[0] = &off_2A1DDFDA8, v37[1] = &v38, v37[2] = 2, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v32, v37, 0x10uLL, v11, v12, v13, v14) & 0x80000000) != 0))
  {
    v27 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v32, v9, v10, v11, v12, v13, v14);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientHandshake", 0x120, 0, "read handshake flags: %zu", v28, v27);
LABEL_8:
    v26 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  *a2 &= bswap32(v38) >> 16;
  amber::Buffer::resize(v32, 0, v10, v11, v12, v13, v14);
  if ((amber::BufferProtocol<amber::Buffer>::appendNetwork32(v32, *a2, v15, v16, v17, v18, v19) & 0x80000000) != 0 || (amber::NetworkEndpoint::writeBuffer(this, v32, v21, v22, v23, v24, v25) & 0x80000000) != 0)
  {
    v30 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v32, v20, v21, v22, v23, v24, v25);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientHandshake", 0x128, 0, "write handshake flags: %zu", v31, v30);
    goto LABEL_8;
  }

  v26 = 0;
LABEL_9:
  amber::Buffer::~Buffer(v32, v20, v21, v22, v23, v24, v25);
  return v26;
}

void sub_2969A4A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

BOOL amber::Buffer::matches(amber::Buffer *this, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!a3)
  {
    return 1;
  }

  if (*(this + 11) - *(this + 10) < a3)
  {
    return 0;
  }

  amber::Buffer::constBuf(this, a7, v12);
  if (!a2 || (a3 & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v10, &off_2A1DDFC68, a2, a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_12;
  }

  if (v14 < a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./MemoryOperations.hpp", "compare", 0x75, 0, "memory invalid range", v10, &off_2A1DDFC68, a2, a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_12:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return memcmp(__s1, a2, a3) == 0;
}

uint64_t amber::BufferProtocol<amber::Buffer>::appendNetwork32(unint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = bswap32(a2);
  v8[0] = &off_2A1DDFC68;
  v8[1] = &v9;
  v8[2] = 4;
  return amber::BufferProtocol<amber::Buffer>::append(a1, v8, a3, a4, a5, a6, a7);
}

uint64_t amber::nbdClientSendOptionRequest(amber *this, amber::NetworkEndpoint *a2, uint64_t a3, const amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a3;
  v39[0] = &unk_2A1DDFD28;
  v39[2] = 0;
  v39[3] = 0;
  v39[1] = off_2A1DDFD48;
  v39[5] = 0;
  v39[6] = 0;
  v39[4] = &off_2A1DDFDA8;
  v39[7] = &off_2A1DDFC68;
  v40 = 0u;
  v41 = 0u;
  v42 = 1;
  v43 = 0;
  if (a3)
  {
    v11 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, a2, a3, a4, a5, a6, a7);
    if (v11)
    {
      v7 = amber::ConstMemoryViewConvertible<amber::Buffer>::begin(v7, v10, a3, a4, a5, a6, a7);
      if (HIDWORD(v11))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientSendOptionRequest", 0x13E, 0, "payload size overflow", a7);
LABEL_17:
        v34 = 0xFFFFFFFFLL;
        goto LABEL_18;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((amber::Buffer::reserve(v39, v11 + 16, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  v38[0] = &off_2A1DDFC68;
  v38[1] = "IHAVEOPT";
  v38[2] = 8;
  if ((amber::BufferProtocol<amber::Buffer>::append(v39, v38, v18, v19, v20, v21, v17) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v39, a2, v22, v23, v24, v25, v17) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v39, v11, v26, v27, v28, v29, v17) & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if (v11)
  {
    v37[0] = &off_2A1DDFC68;
    v37[1] = v7;
    v37[2] = v11;
    if (!v7)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v17);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if ((amber::BufferProtocol<amber::Buffer>::append(v39, v37, v30, v31, v32, v33, v17) & 0x80000000) != 0)
    {
      goto LABEL_16;
    }
  }

  if ((amber::NetworkEndpoint::writeBuffer(this, v39, v30, v31, v32, v33, v17) & 0x80000000) != 0)
  {
LABEL_16:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientSendOptionRequest", 0x14B, 0, "send option request %u payload %zu B", v17, a2, v11);
    goto LABEL_17;
  }

  v34 = 0;
LABEL_18:
  amber::Buffer::~Buffer(v39, v12, v13, v14, v15, v16, v17);
  return v34;
}

void sub_2969A4EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  __cxa_free_exception(v18);
  amber::Buffer::~Buffer(&a18, v20, v21, v22, v23, v24, v25);
  _Unwind_Resume(a1);
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::begin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(a1, a7, v11);
  amber::ConstMemoryView::view(v11, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v8, v10);
  return v10[1];
}

uint64_t amber::nbdServerReceiveOptionRequest(amber *this, amber::NetworkEndpoint *a2, amber::Buffer *a3, amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v35[0] = &unk_2A1DDFD28;
  v35[2] = 0;
  v35[3] = 0;
  v35[1] = off_2A1DDFD48;
  v35[5] = 0;
  v35[6] = 0;
  v35[4] = &off_2A1DDFDA8;
  v35[7] = &off_2A1DDFC68;
  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  v39 = 0;
  amber::Buffer::resize(a3, 0, a3, a4, a5, a6, a7);
  if ((amber::NetworkEndpoint::readBufferToSize(this, v35, 0x10uLL, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  if (!amber::Buffer::matches(v35, "IHAVEOPT", 8uLL, v14, v15, v16, v17))
  {
    goto LABEL_7;
  }

  v43 = 0;
  v40 = &off_2A1DDFDA8;
  v41 = &v43;
  v42 = 4;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v35, &v40, 8uLL, v18, v19, v20, v17) & 0x80000000) != 0 || (*a2 = bswap32(v43), v43 = 0, v40 = &off_2A1DDFDA8, v41 = &v43, v42 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v35, &v40, 0xCuLL, v21, v22, v23, v17) & 0x80000000) != 0))
  {
LABEL_7:
    v27 = 0;
LABEL_8:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerReceiveOptionRequest", 0x162, 0, "receive option request %u payload_size %u B", v17, *a2, v27);
    v33 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v27 = bswap32(v43);
  if ((amber::NetworkEndpoint::readBufferToSize(this, a3, v27, v24, v25, v26, v17) & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v33 = 0;
LABEL_9:
  amber::Buffer::~Buffer(v35, v28, v29, v30, v31, v32, v17);
  return v33;
}

void sub_2969A5154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdServerSendOptionReply(amber *this, amber::NetworkEndpoint *a2, uint64_t a3, uint64_t a4, const amber::Buffer *a5, uint64_t a6, const char *a7)
{
  v7 = a4;
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
  if (a4)
  {
    v12 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a4, a2, a3, a4, a5, a6, a7);
    if (v12)
    {
      v7 = amber::ConstMemoryViewConvertible<amber::Buffer>::begin(v7, v11, a3, a4, a5, a6, a7);
      if (HIDWORD(v12))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerSendOptionReply", 0x182, 0, "payload size out of range", a7);
LABEL_18:
        v39 = 0xFFFFFFFFLL;
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((amber::Buffer::reserve(v42, v12 + 20, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  v53 = 0xA965550489E80300;
  v47 = &off_2A1DDFDA8;
  v48 = &v53;
  v49 = 8;
  v50 = &off_2A1DDFC68;
  v51 = &v53;
  v52 = 8;
  if ((amber::BufferProtocol<amber::Buffer>::append(v42, &v50, v19, v20, v21, v22, v18) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v42, a2, v23, v24, v25, v26, v18) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v42, a3, v27, v28, v29, v30, v18) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v42, v12, v31, v32, v33, v34, v18) & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (v12)
  {
    v50 = &off_2A1DDFC68;
    v51 = v7;
    v52 = v12;
    if (!v7)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v18);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if ((amber::BufferProtocol<amber::Buffer>::append(v42, &v50, v35, v36, v37, v38, v18) & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  if ((amber::NetworkEndpoint::writeBuffer(this, v42, v35, v36, v37, v38, v18) & 0x80000000) != 0)
  {
LABEL_17:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerSendOptionReply", 0x18B, 0, "send option reply %u, request %u, payload_size %zu B", v18, a3, a2, v12);
    goto LABEL_18;
  }

  v39 = 0;
LABEL_19:
  amber::Buffer::~Buffer(v42, v13, v14, v15, v16, v17, v18);
  return v39;
}

void sub_2969A5454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v13);
  amber::Buffer::~Buffer(&a13, v15, v16, v17, v18, v19, v20);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdServerSendOptionReply_INFO_EXPORT(amber *this, amber::NetworkEndpoint *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  v33[0] = &unk_2A1DDFD28;
  v33[2] = 0;
  v33[3] = 0;
  v33[1] = off_2A1DDFD48;
  v33[5] = 0;
  v33[6] = 0;
  v33[4] = &off_2A1DDFDA8;
  v33[7] = &off_2A1DDFC68;
  v34 = 0u;
  v35 = 0u;
  v36 = 1;
  v37 = 0;
  if ((amber::Buffer::reserve(v33, 0xCuLL, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (v42 = 0, v38 = &off_2A1DDFDA8, v39 = &v42, v40 = 2, v41[0] = &off_2A1DDFC68, v41[1] = &v42, v41[2] = 2, (amber::BufferProtocol<amber::Buffer>::append(v33, v41, v11, v12, v13, v14, v15) & 0x80000000) != 0) || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(v33, a3, v16, v17, v18, v19, v15) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(v33, v7, v20, v21, v22, v23, v15) & 0x80000000) != 0 || (amber::nbdServerSendOptionReply(this, a2, 3, v33, v24, v25, v15) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerSendOptionReply_INFO_EXPORT", 0x1AA, 0, "send INFO EXPORT option reply", v15);
    v31 = 0xFFFFFFFFLL;
  }

  else
  {
    v31 = 0;
  }

  amber::Buffer::~Buffer(v33, v26, v27, v28, v29, v30, v15);
  return v31;
}

uint64_t amber::nbdServerSendOptionReply_INFO_BLOCK_SIZE(amber *this, amber::NetworkEndpoint *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v38[0] = &unk_2A1DDFD28;
  v38[2] = 0;
  v38[3] = 0;
  v38[1] = off_2A1DDFD48;
  v38[5] = 0;
  v38[6] = 0;
  v38[4] = &off_2A1DDFDA8;
  v38[7] = &off_2A1DDFC68;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  v42 = 0;
  if ((amber::Buffer::reserve(v38, 0xEuLL, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (v47 = 768, v43 = &off_2A1DDFDA8, v44 = &v47, v45 = 2, v46[0] = &off_2A1DDFC68, v46[1] = &v47, v46[2] = 2, (amber::BufferProtocol<amber::Buffer>::append(v38, v46, v12, v13, v14, v15, v16) & 0x80000000) != 0) || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v38, v9, v17, v18, v19, v20, v16) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v38, v8, v21, v22, v23, v24, v16) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v38, v7, v25, v26, v27, v28, v16) & 0x80000000) != 0 || (amber::nbdServerSendOptionReply(this, a2, 3, v38, v29, v30, v16) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerSendOptionReply_INFO_BLOCK_SIZE", 0x1C4, 0, "send INFO BLOCK_SIZE option reply", v16);
    v36 = 0xFFFFFFFFLL;
  }

  else
  {
    v36 = 0;
  }

  amber::Buffer::~Buffer(v38, v31, v32, v33, v34, v35, v16);
  return v36;
}

uint64_t amber::nbdClientReceiveOptionReply(amber *this, amber::NetworkEndpoint *a2, unsigned int *a3, amber::Buffer *a4, amber::Buffer *a5, uint64_t a6, const char *a7)
{
  v38[0] = &unk_2A1DDFD28;
  v38[2] = 0;
  v38[3] = 0;
  v38[1] = off_2A1DDFD48;
  v38[5] = 0;
  v38[6] = 0;
  v38[4] = &off_2A1DDFDA8;
  v38[7] = &off_2A1DDFC68;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  v42 = 0;
  amber::Buffer::resize(a4, 0, a3, a4, a5, a6, a7);
  if ((amber::NetworkEndpoint::readBufferToSize(this, v38, 0x14uLL, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  v43 = 0;
  v44 = &off_2A1DDFDA8;
  v45 = &v43;
  v46 = 8;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v38, &v44, 0, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  if (v43 != 0xA965550489E80300)
  {
    goto LABEL_9;
  }

  LODWORD(v43) = 0;
  v44 = &off_2A1DDFDA8;
  v45 = &v43;
  v46 = 4;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v38, &v44, 8uLL, v19, v20, v21, v18) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  *a2 = bswap32(v43);
  LODWORD(v43) = 0;
  v44 = &off_2A1DDFDA8;
  v45 = &v43;
  v46 = 4;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v38, &v44, 0xCuLL, v22, v23, v24, v18) & 0x80000000) != 0 || (*a3 = bswap32(v43), LODWORD(v43) = 0, v44 = &off_2A1DDFDA8, v45 = &v43, v46 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v38, &v44, 0x10uLL, v25, v26, v27, v18) & 0x80000000) != 0) || (amber::NetworkEndpoint::readBufferToSize(this, a4, bswap32(v43), v28, v29, v30, v18) & 0x80000000) != 0)
  {
LABEL_9:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveOptionReply", 0x1F2, 0, "receive option reply", v18);
    v36 = 0xFFFFFFFFLL;
  }

  else
  {
    v36 = 0;
  }

  amber::Buffer::~Buffer(v38, v31, v32, v33, v34, v35, v18);
  return v36;
}

void sub_2969A5B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::loadNetwork64(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFDA8;
  v9[1] = &v10;
  v9[2] = 8;
  v10 = 0;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(a1, v9, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = bswap64(v10);
  return result;
}

uint64_t amber::nbdClientOptionSupported(amber *this, amber::NetworkEndpoint *a2, unsigned int a3, const amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *v27 = 0;
  v28[0] = &unk_2A1DDFD28;
  v28[2] = 0;
  v28[3] = 0;
  v28[1] = off_2A1DDFD48;
  v28[5] = 0;
  v28[6] = 0;
  v28[4] = &off_2A1DDFDA8;
  v28[7] = &off_2A1DDFC68;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  v32 = 0;
  if ((amber::nbdClientSendOptionRequest(this, a2, 0, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionSupported", 0x20B, 0, "send %u option request", v11, a2);
LABEL_12:
    v25 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  if ((amber::nbdClientReceiveOptionReply(this, &v27[1], v27, v28, v9, v10, v11) & 0x80000000) != 0 || v27[1] != a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionSupported", 0x214, 0, "receive %u option reply", v17, a2);
    goto LABEL_12;
  }

  v18 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v28, v12, v13, v14, v15, v16, v17);
  if (v27[0] != -2147483647)
  {
    if (v27[0] == 1)
    {
      if (!v18)
      {
        v25 = 1;
        goto LABEL_13;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionSupported", 0x219, 0, "invalid ACK message", v24);
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionSupported", 0x21D, 0, "unexpected reply: 0x%08x", v24, v27[0]);
    }

    goto LABEL_12;
  }

  v25 = 0;
LABEL_13:
  amber::Buffer::~Buffer(v28, v19, v20, v21, v22, v23, v24);
  return v25;
}

void sub_2969A5D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdClientOptionInfoGo(amber *a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v64[0] = &unk_2A1DDFD28;
  v64[2] = 0;
  v64[3] = 0;
  v64[1] = off_2A1DDFD48;
  v64[5] = 0;
  v64[6] = 0;
  v64[4] = &off_2A1DDFDA8;
  v64[7] = &off_2A1DDFC68;
  v65 = 0u;
  v66 = 0u;
  v67 = 1;
  v68 = 0;
  if (a4)
  {
    v10 = 7;
  }

  else
  {
    v10 = 6;
  }

  if (__s)
  {
    v11 = strlen(__s);
    if (v11 >= 0x101)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x232, 0, "export name too long", a7);
LABEL_38:
      v59 = 0xFFFFFFFFLL;
      goto LABEL_39;
    }

    v18 = v11;
  }

  else
  {
    v18 = 0;
  }

  if ((amber::Buffer::reserve(v64, v18 + 6, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v64, v18, v19, v20, v21, v22, v17) & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v63[0] = &off_2A1DDFC68;
  v63[1] = __s;
  v63[2] = v18;
  if (!__s && v18)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v17);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if ((amber::BufferProtocol<amber::Buffer>::append(v64, v63, v23, v24, v25, v26, v17) & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  LOWORD(v62) = 256;
  v69 = &off_2A1DDFDA8;
  v70 = &v62;
  v71 = 2;
  v72 = &off_2A1DDFC68;
  v73 = &v62;
  v74 = 2;
  if ((amber::BufferProtocol<amber::Buffer>::append(v64, &v72, v27, v28, v29, v30, v17) & 0x80000000) != 0 || (LOWORD(v62) = 768, v69 = &off_2A1DDFDA8, v70 = &v62, v71 = 2, v72 = &off_2A1DDFC68, v73 = &v62, v74 = 2, (amber::BufferProtocol<amber::Buffer>::append(v64, &v72, v31, v32, v33, v34, v17) & 0x80000000) != 0) || (amber::nbdClientSendOptionRequest(a1, v10, v64, v35, v36, v37, v17) & 0x80000000) != 0)
  {
LABEL_37:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x23B, 0, "send INFO/GO option request", v17);
    goto LABEL_38;
  }

  while (1)
  {
    while (1)
    {
      v62 = 0;
      LODWORD(v63[0]) = 0;
      if ((amber::nbdClientReceiveOptionReply(a1, v63, &v62, v64, v15, v16, v17) & 0x80000000) != 0 || LODWORD(v63[0]) != v10)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x247, 0, "receive INFO/GO option reply", v43);
        goto LABEL_38;
      }

      v44 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v64, v38, v39, v40, v41, v42, v43);
      v45 = v44;
      if (v62 != 3)
      {
        break;
      }

      if (v44 < 2 || (LOWORD(v69) = 0, v72 = &off_2A1DDFDA8, v73 = &v69, v74 = 2, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v64, &v72, 0, v14, v15, v16, v17) & 0x80000000) != 0))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x250, 0, "invalid INFO message", v17);
        goto LABEL_38;
      }

      v49 = bswap32(v69) >> 16;
      if (v49 == 3)
      {
        if (v45 != 14)
        {
          goto LABEL_42;
        }

        LODWORD(v69) = 0;
        v72 = &off_2A1DDFDA8;
        v73 = &v69;
        v74 = 4;
        if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v64, &v72, 2uLL, v46, v47, v48, v17) & 0x80000000) != 0 || (*(a3 + 8) = bswap32(v69), LODWORD(v69) = 0, v72 = &off_2A1DDFDA8, v73 = &v69, v74 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v64, &v72, 6uLL, v53, v54, v55, v17) & 0x80000000) != 0) || (*(a3 + 12) = bswap32(v69), (amber::ConstMemoryViewConvertible<amber::Buffer>::loadNetwork32(v64, (a3 + 16), 0xAuLL, v56, v57, v58, v17) & 0x80000000) != 0))
        {
LABEL_42:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x262, 0, "invalid INFO BLOCK_SIZE message", v17);
          goto LABEL_38;
        }
      }

      else if (v49)
      {
        amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x269, 0, "Ignoring server INFO %u (length %zu)", v17, v49, v45);
      }

      else
      {
        if (v45 != 12)
        {
          goto LABEL_45;
        }

        v69 = 0;
        v72 = &off_2A1DDFDA8;
        v73 = &v69;
        v74 = 8;
        if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v64, &v72, 2uLL, v46, v47, v48, v17) & 0x80000000) != 0 || (*a3 = bswap64(v69), LOWORD(v69) = 0, v72 = &off_2A1DDFDA8, v73 = &v69, v74 = 2, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v64, &v72, 0xAuLL, v50, v51, v52, v17) & 0x80000000) != 0))
        {
LABEL_45:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x257, 0, "invalid INFO EXPORT message", v17);
          goto LABEL_38;
        }

        *(a3 + 20) = bswap32(v69) >> 16;
      }
    }

    if (v62 == 1)
    {
      break;
    }

    if ((v62 & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x273, 0, "Server replied with error 0x%08x", v17, v62);
      goto LABEL_38;
    }
  }

  if (v44)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionInfoGo", 0x26F, 0, "invalid ACK message", v17);
    goto LABEL_38;
  }

  v59 = 0;
LABEL_39:
  amber::Buffer::~Buffer(v64, v12, v13, v14, v15, v16, v17);
  return v59;
}

void sub_2969A6418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdClientOptionAbort(amber *this, amber::NetworkEndpoint *a2, uint64_t a3, const amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v18 = 0;
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
  if ((amber::nbdClientSendOptionRequest(this, 2, v19, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::nbdClientReceiveOptionReply(this, (&v18 + 4), &v18, v19, v8, v9, v10) & 0x80000000) != 0 || v18 != 0x200000001)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientOptionAbort", 0x288, 0, "NBD abort request", v10, v18);
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v16 = 0;
  }

  amber::Buffer::~Buffer(v19, v11, v12, v13, v14, v15, v10);
  return v16;
}

void sub_2969A65B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdClientSendSimpleRequest(amber *this, amber::NetworkEndpoint *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, const char *a7, const void *a8)
{
  v9 = a6;
  v12 = a3;
  v13 = a2;
  v51[0] = &unk_2A1DDFD28;
  v51[2] = 0;
  v51[3] = 0;
  v51[1] = off_2A1DDFD48;
  v51[5] = 0;
  v51[6] = 0;
  v51[4] = &off_2A1DDFDA8;
  v51[7] = &off_2A1DDFC68;
  v52 = 0u;
  v53 = 0u;
  v54 = 1;
  v55 = 0;
  if ((amber::Buffer::reserve(v51, 0x1CuLL, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (v60 = 328556581, v56 = &off_2A1DDFDA8, v57 = &v60, v58 = 4, v59[0] = &off_2A1DDFC68, v59[1] = &v60, v59[2] = 4, (amber::BufferProtocol<amber::Buffer>::append(v51, v59, v15, v16, v17, v18, v19) & 0x80000000) != 0) || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(v51, v13, v20, v21, v22, v23, v19) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(v51, v12, v24, v25, v26, v27, v19) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(v51, a4, v28, v29, v30, v31, v19) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(v51, a5, v32, v33, v34, v35, v19) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v51, v9, v36, v37, v38, v39, v19) & 0x80000000) != 0 || (amber::NetworkEndpoint::writeBuffer(this, v51, v40, v41, v42, v43, v19) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientSendSimpleRequest", 0x2A9, 0, "send request", v19);
LABEL_13:
    v49 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (a7)
  {
    amber::ConstMemoryView::ConstMemoryView(v59, a7, v9, v46, v47, v48, v19);
    if (amber::NetworkEndpoint::writeExpected(this, v59) < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientSendSimpleRequest", 0x2AD, 0, "send request payload", v19);
      goto LABEL_13;
    }
  }

  v49 = 0;
LABEL_14:
  amber::Buffer::~Buffer(v51, v44, v45, v46, v47, v48, v19);
  return v49;
}

uint64_t amber::nbdClientSendExtendedRequest(amber *this, amber::NetworkEndpoint *a2, unsigned int a3, unint64_t a4, unint64_t a5, uint64_t a6, const char *a7, amber::Buffer *a8, const amber::ObjectStorePath *a9, unint64_t a10, unint64_t a11)
{
  v12 = a6;
  v16 = a2;
  v93[0] = &unk_2A1DDFD28;
  v93[2] = 0;
  v93[3] = 0;
  v93[1] = off_2A1DDFD48;
  v93[5] = 0;
  v93[6] = 0;
  v93[4] = &off_2A1DDFDA8;
  v93[7] = &off_2A1DDFC68;
  v94 = 0u;
  v95 = 0u;
  v96 = 1;
  v97 = 0;
  v88[0] = &unk_2A1DDFD28;
  v88[2] = 0;
  v88[3] = 0;
  v88[1] = off_2A1DDFD48;
  v88[5] = 0;
  v88[6] = 0;
  v88[4] = &off_2A1DDFDA8;
  v88[7] = &off_2A1DDFC68;
  v89 = 0u;
  v90 = 0u;
  v91 = 1;
  v92 = 0;
  if ((amber::nbdEncodeExtendedHeader(v88, a8, a9, a10, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientSendExtendedRequest", 0x2C7, 0, "encode extended header", v23);
    goto LABEL_17;
  }

  v24 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v88, v18, v19, v20, v21, v22, v23);
  if ((amber::Buffer::reserve(v93, v24 + 32, v25, v26, v27, v28, v29) & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v104 = 1087680105;
  v98 = &off_2A1DDFDA8;
  v99 = &v104;
  v100 = 4;
  v101 = &off_2A1DDFC68;
  v102 = &v104;
  v103 = 4;
  if ((amber::BufferProtocol<amber::Buffer>::append(v93, &v101, v30, v31, v32, v33, v34) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(v93, v16, v35, v36, v37, v38, v34) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(v93, a3, v39, v40, v41, v42, v34) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(v93, a4, v43, v44, v45, v46, v34) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(v93, a5, v47, v48, v49, v50, v34) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v93, v12, v51, v52, v53, v54, v34) & 0x80000000) != 0 || (v60 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v88, v55, v56, v57, v58, v59, v34), (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v93, v60, v61, v62, v63, v64, v65) & 0x80000000) != 0) || (amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v88, v34, &v101), (amber::BufferProtocol<amber::Buffer>::append(v93, &v101, v66, v67, v68, v69, v70) & 0x80000000) != 0) || (amber::NetworkEndpoint::writeBuffer(this, v93, v71, v72, v73, v74, v34) & 0x80000000) != 0)
  {
LABEL_15:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientSendExtendedRequest", 0x2D4, 0, "send request", v34);
LABEL_17:
    v80 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  if (a7)
  {
    v101 = &off_2A1DDFC68;
    v102 = a7;
    v103 = v12;
    if (amber::NetworkEndpoint::writeExpected(this, &v101) < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientSendExtendedRequest", 0x2D8, 0, "send request payload", v34);
      goto LABEL_17;
    }
  }

  v80 = 0;
LABEL_18:
  amber::Buffer::~Buffer(v88, v75, v76, v77, v78, v79, v34);
  amber::Buffer::~Buffer(v93, v81, v82, v83, v84, v85, v86);
  return v80;
}

void sub_2969A6BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(va1, v9, v10, v11, v12, v13, v14);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdEncodeExtendedHeader(amber *this, amber::Buffer *a2, const amber::ObjectStorePath *a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a2 + 8))
  {
    v10 = *(a2 + 78) == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || *(a2 + 148) == 0;
  if (!v11 && (amber::nbdAppend(this, a2, 0, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v13 = "serialize path";
    v14 = 1139;
  }

  else
  {
    if (!(a4 | a3) || (amber::nbdAppend(this, a3, a4, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v13 = "serialize parent request";
    v14 = 1144;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdEncodeExtendedHeader", v14, 0, v13, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::nbdServerReceiveRequest(amber *this, amber::NetworkEndpoint *a2, unsigned __int16 *a3, unsigned __int16 *a4, unint64_t *a5, unint64_t *a6, amber::ObjectStorePath *a7, amber::ObjectStorePath *a8, unint64_t *a9, unint64_t *a10)
{
  v66[0] = &unk_2A1DDFD28;
  v66[1] = off_2A1DDFD48;
  v66[2] = 0;
  v66[5] = 0;
  v66[6] = 0;
  v66[3] = 0;
  v66[4] = &off_2A1DDFDA8;
  v66[7] = &off_2A1DDFC68;
  v67 = 0u;
  v68 = 0u;
  v69 = 1;
  v70 = 0;
  v61[0] = &unk_2A1DDFD28;
  v61[2] = 0;
  v61[3] = 0;
  v61[1] = off_2A1DDFD48;
  v61[5] = 0;
  v61[6] = 0;
  v61[4] = &off_2A1DDFDA8;
  v61[7] = &off_2A1DDFC68;
  v62 = 0u;
  v63 = 0u;
  v64 = 1;
  v65 = 0;
  v60 = 0;
  amber::ObjectStorePath::clear(a7, a2, a3, a4, a5, a6, a7);
  if ((amber::Buffer::reserve(v66, 0x1CuLL, v18, v19, v20, v21, v22) & 0x80000000) != 0 || (amber::NetworkEndpoint::readBufferToSize(this, v66, 0x1CuLL, v25, v26, v27, v28) & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  LODWORD(v71) = 0;
  v72 = &off_2A1DDFDA8;
  v73 = &v71;
  v74 = 4;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v66, &v72, 0, v25, v26, v27, v28) & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  v32 = v71;
  v33 = bswap32(v71);
  if (v33 != 1773065280 && v33 != 627086611)
  {
    goto LABEL_18;
  }

  LOWORD(v71) = 0;
  v72 = &off_2A1DDFDA8;
  v73 = &v71;
  v74 = 2;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v66, &v72, 4uLL, v29, v30, v31, v28) & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  *a2 = bswap32(v71) >> 16;
  LOWORD(v71) = 0;
  v72 = &off_2A1DDFDA8;
  v73 = &v71;
  v74 = 2;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v66, &v72, 6uLL, v34, v35, v36, v28) & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  *a3 = bswap32(v71) >> 16;
  v71 = 0;
  v72 = &off_2A1DDFDA8;
  v73 = &v71;
  v74 = 8;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v66, &v72, 8uLL, v37, v38, v39, v28) & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  *a4 = bswap64(v71);
  v71 = 0;
  v72 = &off_2A1DDFDA8;
  v73 = &v71;
  v74 = 8;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v66, &v72, 0x10uLL, v40, v41, v42, v28) & 0x80000000) != 0 || (*a5 = bswap64(v71), LODWORD(v71) = 0, v72 = &off_2A1DDFDA8, v73 = &v71, v74 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v66, &v72, 0x18uLL, v43, v44, v45, v28) & 0x80000000) != 0))
  {
LABEL_18:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerReceiveRequest", 0x2FB, 0, "receive request", v28);
LABEL_19:
    v52 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  *a6 = bswap32(v71);
  if (v32 == 1087680105 && ((amber::NetworkEndpoint::readBufferToSize(this, v61, 4uLL, v25, v26, v27, v28) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::Buffer>::loadNetwork32(v61, &v60, 0, v46, v47, v48, v28) & 0x80000000) != 0 || v60 > 0xFFFFFFFB || (amber::NetworkEndpoint::readBufferToSize(this, v61, v60 + 4, v49, v50, v51, v28) & 0x80000000) != 0 || (amber::nbdDecodeExtendedHeader(v61, a7, &v72, a8, a9, v60, 4) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerReceiveRequest", 0x307, 0, "receive Amber extended request", v28);
    goto LABEL_19;
  }

  v52 = 0;
LABEL_20:
  amber::Buffer::~Buffer(v61, v23, v24, v25, v26, v27, v28);
  amber::Buffer::~Buffer(v66, v53, v54, v55, v56, v57, v58);
  return v52;
}

void sub_2969A71A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(va1, v9, v10, v11, v12, v13, v14);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdDecodeExtendedHeader(amber *this, const amber::Buffer *a2, amber::ObjectStorePath *a3, int *a4, unint64_t *a5, unint64_t *a6, const char *a7)
{
  v7 = a7;
  amber::ObjectStorePath::clear(a2, a2, a3, a4, a5, a6, a7);
  *a3 = 0;
  *a5 = 0;
  *a4 = 0;
  v20 = a6 + v7;
  if (__CFADD__(v7, a6) || v20 > amber::ConstMemoryViewConvertible<amber::Buffer>::size(this, v14, v15, v16, v17, v18, v19))
  {
    v24 = "invalid range";
    v25 = 1166;
    goto LABEL_4;
  }

  if (v20 > v7)
  {
    v37 = a4;
    do
    {
      v27 = v7 + 4;
      v28 = ((v7 >= 0xFFFFFFFFFFFFFFFCLL) << 63) >> 63 == v7 >= 0xFFFFFFFFFFFFFFFCLL && v20 >= v27;
      if (!v28)
      {
        goto LABEL_51;
      }

      LOWORD(v41) = 0;
      v38 = &off_2A1DDFDA8;
      v39 = &v41;
      v40 = 2;
      if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(this, &v38, v7, v21, v22, v23, v19) & 0x80000000) != 0)
      {
        goto LABEL_51;
      }

      v32 = v41;
      LOWORD(v41) = 0;
      v38 = &off_2A1DDFDA8;
      v39 = &v41;
      v40 = 2;
      if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(this, &v38, v7 + 2, v29, v30, v31, v19) & 0x80000000) != 0 || (v33 = __rev16(v41), v28 = __CFADD__(v7, v33 + 4), v7 += v33 + 4, v28) || v7 > v20)
      {
LABEL_51:
        v24 = "invalid object-store header payload";
        v25 = 1177;
        goto LABEL_4;
      }

      v34 = bswap32(v32) >> 16;
      if (v34 > 4)
      {
        if (v34 > 7)
        {
          if (v34 == 8)
          {
            if (v41 != 2048 || (v38 = &off_2A1DDFDA8, v39 = &v41, v40 = 8, v41 = 0, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(this, &v38, v27, v21, v22, v23, v19) & 0x80000000) != 0))
            {
              v24 = "invalid object-store header field";
              v25 = 1199;
              goto LABEL_4;
            }

            v35 = bswap64(v41);
            v36 = a4;
LABEL_47:
            *v36 = v35;
            continue;
          }

          if (v34 == 9)
          {
            if (v41 != 2048 || (v38 = &off_2A1DDFDA8, v39 = &v41, v40 = 8, v41 = 0, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(this, &v38, v27, v21, v22, v23, v19) & 0x80000000) != 0))
            {
              v24 = "invalid object-store header field";
              v25 = 1202;
              goto LABEL_4;
            }

            v35 = bswap64(v41);
            v36 = a5;
            goto LABEL_47;
          }
        }

        else if (v34 == 5)
        {
          if (v41 != 2048 || (v38 = &off_2A1DDFDA8, v39 = &v41, v40 = 8, v41 = 0, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(this, &v38, v27, v21, v22, v23, v19) & 0x80000000) != 0))
          {
            v24 = "invalid object-store header field";
            v25 = 1186;
            goto LABEL_4;
          }

          *(a2 + 73) = bswap64(v41);
        }

        else if (v34 == 6)
        {
          if (v41)
          {
            v24 = "invalid object-store header field";
            v25 = 1195;
LABEL_4:
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdDecodeExtendedHeader", v25, 0, v24, v19, v37);
            return 0xFFFFFFFFLL;
          }

          *a3 = 1;
        }
      }

      else if (v34 > 2)
      {
        if (v34 == 3)
        {
          if (v41 != 1024 || (LODWORD(v41) = 0, v38 = &off_2A1DDFDA8, v39 = &v41, v40 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(this, &v38, v27, v21, v22, v23, v19) & 0x80000000) != 0))
          {
            v24 = "invalid object-store header field";
            v25 = 1189;
            goto LABEL_4;
          }

          *(a2 + 148) = bswap32(v41);
        }

        else
        {
          if (v41 != 1024 || (LODWORD(v41) = 0, v38 = &off_2A1DDFDA8, v39 = &v41, v40 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(this, &v38, v27, v21, v22, v23, v19) & 0x80000000) != 0))
          {
            v24 = "invalid object-store header field";
            v25 = 1192;
            goto LABEL_4;
          }

          *(a2 + 144) = bswap32(v41);
        }
      }

      else if (v34 == 1)
      {
        if ((amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(this, a2 + 16, v33, v27, v22, v23, v19) & 0x80000000) != 0)
        {
          v24 = "invalid object-store header field";
          v25 = 1180;
          goto LABEL_4;
        }
      }

      else if (v34 == 2 && (amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(this, a2 + 296, v33, v27, v22, v23, v19) & 0x80000000) != 0)
      {
        v24 = "invalid object-store header field";
        v25 = 1183;
        goto LABEL_4;
      }
    }

    while (v7 < v20);
  }

  if (v7 != v20)
  {
    v24 = "extra data after path";
    v25 = 1211;
    goto LABEL_4;
  }

  return 0;
}

uint64_t amber::nbdServerSendStructuredReply(amber *this, amber::NetworkEndpoint *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a5;
  v10 = a3;
  v11 = a2;
  v45[0] = &unk_2A1DDFD28;
  v45[2] = 0;
  v45[3] = 0;
  v45[1] = off_2A1DDFD48;
  v45[5] = 0;
  v45[6] = 0;
  v45[4] = &off_2A1DDFDA8;
  v45[7] = &off_2A1DDFC68;
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  v49 = 0;
  if ((amber::Buffer::reserve(v45, 0x14uLL, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v56 = -281833882;
  v50 = &off_2A1DDFDA8;
  v51 = &v56;
  v52 = 4;
  v53 = &off_2A1DDFC68;
  v54 = &v56;
  v55 = 4;
  if ((amber::BufferProtocol<amber::Buffer>::append(v45, &v53, v13, v14, v15, v16, v17) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(v45, v11, v18, v19, v20, v21, v17) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(v45, v10, v22, v23, v24, v25, v17) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(v45, a4, v26, v27, v28, v29, v17) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v45, v8, v30, v31, v32, v33, v17) & 0x80000000) != 0 || (amber::NetworkEndpoint::writeBuffer(this, v45, v34, v35, v36, v37, v17) & 0x80000000) != 0 || a6 && (v53 = &off_2A1DDFC68, v54 = a6, v55 = v8, amber::NetworkEndpoint::writeExpected(this, &v53) < 0))
  {
LABEL_11:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerSendStructuredReply", 0x32C, 0, "send structured reply", v17);
    v43 = 0xFFFFFFFFLL;
  }

  else
  {
    v43 = 0;
  }

  amber::Buffer::~Buffer(v45, v38, v39, v40, v41, v42, v17);
  return v43;
}

uint64_t amber::nbdServerSendSimpleReply(amber *this, amber::NetworkEndpoint *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a4;
  v10 = a2;
  v36[0] = &unk_2A1DDFD28;
  v36[2] = 0;
  v36[3] = 0;
  v36[1] = off_2A1DDFD48;
  v36[5] = 0;
  v36[6] = 0;
  v36[4] = &off_2A1DDFDA8;
  v36[7] = &off_2A1DDFC68;
  v37 = 0u;
  v38 = 0u;
  v39 = 1;
  v40 = 0;
  if ((amber::Buffer::reserve(v36, 0x10uLL, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  v47 = -1738128281;
  v41 = &off_2A1DDFDA8;
  v42 = &v47;
  v43 = 4;
  v44 = &off_2A1DDFC68;
  v45 = &v47;
  v46 = 4;
  if ((amber::BufferProtocol<amber::Buffer>::append(v36, &v44, v12, v13, v14, v15, v16) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(v36, v10, v17, v18, v19, v20, v16) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(v36, a3, v21, v22, v23, v24, v16) & 0x80000000) != 0 || (amber::NetworkEndpoint::writeBuffer(this, v36, v25, v26, v27, v28, v16) & 0x80000000) != 0 || a5 && (v44 = &off_2A1DDFC68, v45 = a5, v46 = v8, amber::NetworkEndpoint::writeExpected(this, &v44) < 0))
  {
LABEL_9:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdServerSendSimpleReply", 0x352, 0, "send simple reply", v16);
    v34 = 0xFFFFFFFFLL;
  }

  else
  {
    v34 = 0;
  }

  amber::Buffer::~Buffer(v36, v29, v30, v31, v32, v33, v16);
  return v34;
}

uint64_t amber::nbdClientReceiveStructuredReply(amber *this, amber::NetworkEndpoint *a2, unsigned int *a3, unint64_t *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v84 = a4 + a5;
  while (1)
  {
    v93 = 0;
    v92 = 0;
    v87[0] = &unk_2A1DDFD28;
    v87[1] = off_2A1DDFD48;
    v87[2] = 0;
    v87[3] = 0;
    v87[5] = 0;
    v87[6] = 0;
    v87[4] = &off_2A1DDFDA8;
    v87[7] = &off_2A1DDFC68;
    v88 = 0u;
    v89 = 0u;
    v90 = 1;
    v91 = 0;
    if ((amber::NetworkEndpoint::readBufferToSize(this, v87, 0x14uLL, a4, a5, a6, a7) & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    LODWORD(v94) = 0;
    v95 = &off_2A1DDFDA8;
    v96 = &v94;
    v97 = 4;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v87, &v95, 0, v9, v10, v11, v12) & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    if (v94 != -281833882)
    {
      goto LABEL_61;
    }

    LOWORD(v94) = 0;
    v95 = &off_2A1DDFDA8;
    v96 = &v94;
    v97 = 2;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v87, &v95, 4uLL, v13, v14, v15, v12) & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    v19 = v94;
    LOWORD(v94) = 0;
    v95 = &off_2A1DDFDA8;
    v96 = &v94;
    v97 = 2;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v87, &v95, 6uLL, v16, v17, v18, v12) & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    v23 = v94;
    v94 = 0;
    v95 = &off_2A1DDFDA8;
    v96 = &v94;
    v97 = 8;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v87, &v95, 8uLL, v20, v21, v22, v12) & 0x80000000) != 0 || (*a3 = bswap64(v94), LODWORD(v94) = 0, v95 = &off_2A1DDFDA8, v96 = &v94, v97 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v87, &v95, 0x10uLL, v24, v25, v26, v12) & 0x80000000) != 0))
    {
LABEL_61:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x376, 0, "receive structured reply", v12);
      goto LABEL_62;
    }

    v31 = bswap32(v94);
    if (v23 == 256)
    {
      amber::Buffer::resize(v87, 0, v27, v28, v29, v30, v12);
      v36 = v31 >= 8;
      v37 = (v31 - 8);
      if (!v36 || (amber::NetworkEndpoint::readBufferToSize(this, v87, 8uLL, v32, v33, v34, v35) & 0x80000000) != 0 || (v94 = 0, v95 = &off_2A1DDFDA8, v96 = &v94, v97 = 8, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v87, &v95, 0, v38, v39, v40, v35) & 0x80000000) != 0))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x381, 0, "invalid structured reply payload (OFFSET_DATA)", v35);
        goto LABEL_62;
      }

      v46 = bswap64(v94);
      v93 = v46;
      v92 = v37;
      v47 = v46 - a4;
      if (v46 < a4 || ((v36 = __CFADD__(v46, v37), v48 = v46 + v37, !v36) ? (v49 = 0) : (v49 = 1), !a6 ? (v50 = v37 == 0) : (v50 = 1), v50 ? (v51 = 0) : (v51 = 1), (v49 & 1) != 0 || v48 > v84 || v51))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x389, 0, "invalid structured reply segment", v35);
        goto LABEL_62;
      }

      if (a6)
      {
        amber::MutableMemoryView::MutableMemoryView(&v95, (a6 + v47), v37, v43, v44, v45, v35);
        if (amber::NetworkEndpoint::readExpected(this, &v95, v52, v53, v54, v55, v56) < 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x38F, 0, "read structured reply payload", v35);
LABEL_62:
          v81 = 0xFFFFFFFFLL;
          goto LABEL_63;
        }
      }
    }

    else
    {
      amber::Buffer::resize(v87, 0, v27, v28, v29, v30, v12);
      if ((amber::NetworkEndpoint::readBufferToSize(this, v87, v31, v57, v58, v59, v60) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x397, 0, "invalid structured reply payload", v66);
        goto LABEL_62;
      }

      v67 = __rev16(v23);
      if ((v67 - 32769) < 2)
      {
        if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(v87, v61, v62, v63, v64, v65, v66) < 4 || (LODWORD(v94) = 0, v95 = &off_2A1DDFDA8, v96 = &v94, v97 = 4, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(v87, &v95, 0, v68, v69, v70, v35) & 0x80000000) != 0) || (v71 = v94, *a2 = bswap32(v94), !v71))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x3B0, 0, "invalid structured reply payload", v35);
          goto LABEL_62;
        }
      }

      else if (v67 == 2)
      {
        if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(v87, v61, v62, v63, v64, v65, v66) != 12 || (amber::ConstMemoryViewConvertible<amber::Buffer>::loadNetwork64(v87, &v93, 0, v72, v73, v74, v35) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::Buffer>::loadNetwork32(v87, &v92, 8uLL, v75, v76, v77, v35) & 0x80000000) != 0 || v93 < a4 || ((v42 = v92, !__CFADD__(v93, v92)) ? (v78 = 0) : (v78 = 1), !a6 ? (v79 = v92 == 0) : (v79 = 1), v79 ? (v80 = 0) : (v80 = 1), (v78 & 1) != 0 || v93 + v92 > v84 || v80))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x3A7, 0, "invalid structured reply payload (OFFSET_HOLE)", v35);
          goto LABEL_62;
        }

        if (a6)
        {
          amber::zero(void *,unsigned long)::memset_func(a6 + v93 - a4, 0);
        }
      }

      else if (v67)
      {
        amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x3B3, 0, "ignore structured reply command %u", v66, v67);
      }

      else if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(v87, v61, v62, v63, v64, v65, v66))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveStructuredReply", 0x39C, 0, "invalid structured reply payload (NONE)", v35);
        goto LABEL_62;
      }
    }

    if ((v19 & 0x100) != 0)
    {
      break;
    }

    amber::Buffer::~Buffer(v87, v41, v42, v43, v44, v45, v35);
  }

  v81 = 0;
LABEL_63:
  amber::Buffer::~Buffer(v87, v41, v42, v43, v44, v45, v35);
  return v81;
}

void sub_2969A81E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdClientReceiveSimpleReply(amber *this, amber::NetworkEndpoint *a2, unsigned int *a3, unint64_t *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a5;
  v29[0] = &unk_2A1DDFD28;
  v29[2] = 0;
  v29[3] = 0;
  v29[1] = off_2A1DDFD48;
  v29[5] = 0;
  v29[6] = 0;
  v29[4] = &off_2A1DDFDA8;
  v29[7] = &off_2A1DDFC68;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v33 = 0;
  if ((amber::NetworkEndpoint::readBufferToSize(this, v29, 0x10uLL, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  LODWORD(v37) = 0;
  v34 = &off_2A1DDFDA8;
  v35 = &v37;
  v36 = 4;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v29, &v34, 0, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  if (v37 != -1738128281)
  {
    goto LABEL_9;
  }

  LODWORD(v37) = 0;
  v34 = &off_2A1DDFDA8;
  v35 = &v37;
  v36 = 4;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v29, &v34, 4uLL, v16, v17, v18, v15) & 0x80000000) != 0)
  {
    goto LABEL_9;
  }

  *a2 = bswap32(v37);
  v34 = &off_2A1DDFDA8;
  v35 = &v37;
  v36 = 8;
  v37 = 0;
  if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(v29, &v34, 8uLL, v19, v20, v21, v15) & 0x80000000) != 0 || (*a3 = bswap64(v37), a6) && (v34 = &off_2A1DDFDA8, v35 = a6, v36 = v8, amber::NetworkEndpoint::readExpected(this, &v34, v23, v24, v25, v26, v15) < 0))
  {
LABEL_9:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdClientReceiveSimpleReply", 0x3D7, 0, "receive simple reply", v15);
    v27 = 0xFFFFFFFFLL;
  }

  else
  {
    v27 = 0;
  }

  amber::Buffer::~Buffer(v29, v22, v23, v24, v25, v26, v15);
  return v27;
}

void sub_2969A8488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::nbdAppend(amber *this, amber::Buffer *a2, const amber::ObjectStorePath *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a3;
  if ((amber::Buffer::reserveEndCapacity(this, *(a2 + 8) + *(a2 + 78) + 36, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v19 = "malloc";
    v20 = 1002;
    goto LABEL_35;
  }

  if (v7)
  {
    v67 = 1536;
    v64 = &off_2A1DDFC68;
    v65 = &v67;
    v66 = 2;
    if ((amber::BufferProtocol<amber::Buffer>::append(this, &v64, v10, v11, v12, v13, v14) & 0x80000000) != 0 || (v67 = 0, v64 = &off_2A1DDFC68, v65 = &v67, v66 = 2, (amber::BufferProtocol<amber::Buffer>::append(this, &v64, v15, v16, v17, v18, v14) & 0x80000000) != 0))
    {
      v19 = "serialize container_id_copy";
      v20 = 1007;
      goto LABEL_35;
    }
  }

  else if (*(a2 + 8))
  {
    v67 = 256;
    v64 = &off_2A1DDFC68;
    v65 = &v67;
    v66 = 2;
    if ((amber::BufferProtocol<amber::Buffer>::append(this, &v64, v10, v11, v12, v13, v14) & 0x80000000) != 0 || HIWORD(*(a2 + 8)) || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(this, *(a2 + 8), v21, v22, v23, v24, v14) & 0x80000000) != 0 || (v29 = *(a2 + 8), v64 = &off_2A1DDFC68, v65 = (a2 + 36), v66 = v29, (amber::BufferProtocol<amber::Buffer>::append(this, &v64, v25, v26, v27, v28, v14) & 0x80000000) != 0))
    {
      v19 = "serialize container_id";
      v20 = 1017;
      goto LABEL_35;
    }
  }

  if (!*(a2 + 78))
  {
    goto LABEL_20;
  }

  v67 = 512;
  v64 = &off_2A1DDFC68;
  v65 = &v67;
  v66 = 2;
  if ((amber::BufferProtocol<amber::Buffer>::append(this, &v64, v10, v11, v12, v13, v14) & 0x80000000) != 0 || HIWORD(*(a2 + 78)) || (amber::BufferProtocol<amber::Buffer>::appendNetwork16(this, *(a2 + 78), v30, v31, v32, v33, v14) & 0x80000000) != 0 || (v38 = *(a2 + 78), v64 = &off_2A1DDFC68, v65 = (a2 + 316), v66 = v38, (amber::BufferProtocol<amber::Buffer>::append(this, &v64, v34, v35, v36, v37, v14) & 0x80000000) != 0))
  {
    v19 = "serialize storage_id";
    v20 = 1026;
  }

  else
  {
    if (!*(a2 + 148))
    {
      goto LABEL_24;
    }

LABEL_20:
    v67 = 768;
    v64 = &off_2A1DDFC68;
    v65 = &v67;
    v66 = 2;
    if ((amber::BufferProtocol<amber::Buffer>::append(this, &v64, v10, v11, v12, v13, v14) & 0x80000000) != 0 || (v67 = 1024, v64 = &off_2A1DDFC68, v65 = &v67, v66 = 2, (amber::BufferProtocol<amber::Buffer>::append(this, &v64, v39, v40, v41, v42, v14) & 0x80000000) != 0) || (amber::BufferProtocol<amber::Buffer>::appendNetwork32(this, *(a2 + 148), v43, v44, v45, v46, v14) & 0x80000000) != 0)
    {
      v19 = "serialize storage size";
      v20 = 1033;
    }

    else
    {
      if (!*(a2 + 73))
      {
        goto LABEL_28;
      }

LABEL_24:
      v67 = 1280;
      v64 = &off_2A1DDFC68;
      v65 = &v67;
      v66 = 2;
      if ((amber::BufferProtocol<amber::Buffer>::append(this, &v64, v10, v11, v12, v13, v14) & 0x80000000) != 0 || (v67 = 2048, v64 = &off_2A1DDFC68, v65 = &v67, v66 = 2, (amber::BufferProtocol<amber::Buffer>::append(this, &v64, v47, v48, v49, v50, v14) & 0x80000000) != 0) || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(this, *(a2 + 73), v51, v52, v53, v54, v14) & 0x80000000) != 0)
      {
        v19 = "serialize storage offset";
        v20 = 1040;
      }

      else
      {
LABEL_28:
        if (!*(a2 + 144))
        {
          return 0;
        }

        v67 = 1024;
        v64 = &off_2A1DDFC68;
        v65 = &v67;
        v66 = 2;
        if ((amber::BufferProtocol<amber::Buffer>::append(this, &v64, v10, v11, v12, v13, v14) & 0x80000000) == 0)
        {
          v67 = 1024;
          v64 = &off_2A1DDFC68;
          v65 = &v67;
          v66 = 2;
          if ((amber::BufferProtocol<amber::Buffer>::append(this, &v64, v55, v56, v57, v58, v14) & 0x80000000) == 0 && (amber::BufferProtocol<amber::Buffer>::appendNetwork32(this, *(a2 + 144), v59, v60, v61, v62, v14) & 0x80000000) == 0)
          {
            return 0;
          }
        }

        v19 = "serialize storage type";
        v20 = 1047;
      }
    }
  }

LABEL_35:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdAppend", v20, 0, v19, v14);
  return 0xFFFFFFFFLL;
}

uint64_t amber::nbdAppend(amber *this, amber::Buffer *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::Buffer::reserveEndCapacity(this, 24, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v32 = "malloc";
    v33 = 1061;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    v37 = 2048;
    v34 = &off_2A1DDFC68;
    v35 = &v37;
    v36 = 2;
    if ((amber::BufferProtocol<amber::Buffer>::append(this, &v34, v10, v11, v12, v13, v14) & 0x80000000) != 0 || (v37 = 2048, v34 = &off_2A1DDFC68, v35 = &v37, v36 = 2, (amber::BufferProtocol<amber::Buffer>::append(this, &v34, v15, v16, v17, v18, v14) & 0x80000000) != 0) || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(this, a2, v19, v20, v21, v22, v14) & 0x80000000) != 0)
    {
      v32 = "serialize parent request";
      v33 = 1067;
    }

    else
    {
LABEL_9:
      if (!a3)
      {
        return 0;
      }

      v37 = 2304;
      v34 = &off_2A1DDFC68;
      v35 = &v37;
      v36 = 2;
      if ((amber::BufferProtocol<amber::Buffer>::append(this, &v34, v10, v11, v12, v13, v14) & 0x80000000) == 0)
      {
        v37 = 2048;
        v34 = &off_2A1DDFC68;
        v35 = &v37;
        v36 = 2;
        if ((amber::BufferProtocol<amber::Buffer>::append(this, &v34, v23, v24, v25, v26, v14) & 0x80000000) == 0 && (amber::BufferProtocol<amber::Buffer>::appendNetwork64(this, a3, v27, v28, v29, v30, v14) & 0x80000000) == 0)
        {
          return 0;
        }
      }

      v32 = "serialize parent session";
      v33 = 1074;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdAppend", v33, 0, v32, v14);
  return 0xFFFFFFFFLL;
}

uint64_t amber::nbdAppend(amber::Buffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v88 = *MEMORY[0x29EDCA608];
  v69 = &unk_2A1DDFDD8;
  v70 = &unk_2A1DDFE08;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 24))
  {
LABEL_12:
    result = 0;
  }

  else
  {
    v10 = (v7 + 36);
    while (1)
    {
      amber::Buffer::buf(this, a7, &v65);
      amber::MutableMemoryView::operator+(&v65, *(this + 11), v11, &v62);
      if (v64 <= 0x1FF)
      {
        amber::Buffer::constBuf(this, v16, &v65);
        if ((amber::Buffer::reserve(this, v67 + 0x4000, v17, v18, v19, v20, v21) & 0x80000000) != 0)
        {
          break;
        }
      }

      v22 = amber::CryptoBlobBase<256u>::equals((v10 - 10), &v69, v12, v13, v14, v15, v16);
      v23 = *(v10 - 1);
      v65 = &off_2A1DDFC68;
      v66 = v10;
      v67 = v23;
      amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v70, &v65, v24, v25, v26, v27, v28);
      v35 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this, v29, v30, v31, v32, v33, v34);
      v68 = 1792;
      v62 = &off_2A1DDFDA8;
      v63 = &v68;
      v64 = 2;
      v65 = &off_2A1DDFC68;
      v66 = &v68;
      v67 = 2;
      if ((amber::BufferProtocol<amber::Buffer>::append(this, &v65, v36, v37, v38, v39, v40) & 0x80000000) != 0 || (v68 = 0, v62 = &off_2A1DDFDA8, v63 = &v68, v64 = 2, v65 = &off_2A1DDFC68, v66 = &v68, v67 = 2, (amber::BufferProtocol<amber::Buffer>::append(this, &v65, v41, v42, v43, v44, v45) & 0x80000000) != 0) || (amber::nbdAppend(this, (v10 - 18), v22, v46, v47, v48, v45) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdAppend", 0x44E, 0, "serialize path", v45);
        goto LABEL_17;
      }

      v54 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this, v49, v50, v51, v52, v53, v45);
      v58 = v54 - (v35 + 4);
      if (v54 < v35 + 4)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdAppend", 0x450, 0, "invalid state", a7);
        goto LABEL_17;
      }

      if (v58 >> 16 || (v68 = bswap32(v58) >> 16, v62 = &off_2A1DDFDA8, v63 = &v68, v64 = 2, v65 = &off_2A1DDFC68, v66 = &v68, v67 = 2, (amber::MutableMemoryViewConvertible<amber::Buffer>::store(this, &v65, v35 + 2, v55, v56, v57, a7) & 0x80000000) != 0))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdAppend", 0x455, 0, "updating payload size", a7);
        goto LABEL_17;
      }

      v59 = v10 + 282;
      v10 += 300;
      if (v59 == *(a2 + 24))
      {
        goto LABEL_12;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdAppend", 0x443, 0, "malloc", v16);
LABEL_17:
    result = 0xFFFFFFFFLL;
  }

  v61 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::nbdLoad(amber *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v47 = *MEMORY[0x29EDCA608];
  *&v44[564] = &unk_2A1DDFDD8;
  v45[0] = &unk_2A1DDFE08;
  memset(&v45[1], 0, 256);
  v46 = 0;
  v7 = a4 + a3;
  if (__CFADD__(a4, a3) || (v8 = a4, v7 > amber::ConstMemoryViewConvertible<amber::Buffer>::size(a1, a2, a3, a4, a5, a6, a7)))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdLoad", 0x4C8, 0, "invalid range", a7);
    goto LABEL_4;
  }

  while (v8 < v7)
  {
    v16 = (v8 + 4);
    v17 = ((v8 >= 0xFFFFFFFFFFFFFFFCLL) << 63) >> 63 == v8 >= 0xFFFFFFFFFFFFFFFCLL && v7 >= v16;
    if (!v17)
    {
      goto LABEL_28;
    }

    LOWORD(v35[0]) = 0;
    v40 = &off_2A1DDFDA8;
    v41 = v35;
    v42 = 2;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(a1, &v40, v8, v11, v12, v13, a7) & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    v21 = LOWORD(v35[0]);
    LOWORD(v35[0]) = 0;
    v40 = &off_2A1DDFDA8;
    v41 = v35;
    v42 = 2;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(a1, &v40, v8 + 2, v18, v19, v20, a7) & 0x80000000) != 0 || (v22 = (bswap32(LOWORD(v35[0])) >> 16), v17 = __CFADD__(v8, v22 + 4), v8 += v22 + 4, v17) || v8 > v7)
    {
LABEL_28:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdLoad", 0x4D3, 0, "invalid object-store header payload", a7);
      goto LABEL_4;
    }

    if (v21 == 1792)
    {
      amber::ObjectStorePath::ObjectStorePath(&v40);
      v38 = 0;
      if ((amber::nbdDecodeExtendedHeader(a1, &v40, &v38, v35, &v39, v22, v16) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdLoad", 0x4D9, 0, "invalid object-store header field", v27);
        amber::ObjectStorePath::~ObjectStorePath(&v40);
LABEL_4:
        result = 0xFFFFFFFFLL;
        goto LABEL_5;
      }

      if (v38)
      {
        *v35 = &off_2A1DDFC68;
        v36 = &v45[1] + 4;
        v37 = LODWORD(v45[1]);
        amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(v43, v35, v23, v24, v25, v26, v27);
      }

      else
      {
        *v35 = &off_2A1DDFC68;
        v36 = v44;
        v37 = v43[2];
        amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(v45, v35, v23, v24, v25, v26, v27);
      }

      v33 = *(a2 + 24);
      if (v33 >= *(a2 + 32))
      {
        v34 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<amber::ObjectStorePath const&>(a2 + 16, &v40, v28, v29, v30, v31, v32);
      }

      else
      {
        amber::ObjectStorePath::ObjectStorePath(*(a2 + 24), &v40, v28, v29, v30, v31, v32);
        v34 = v33 + 600;
        *(a2 + 24) = v33 + 600;
      }

      *(a2 + 24) = v34;
      amber::ObjectStorePath::~ObjectStorePath(&v40);
    }
  }

  if (v8 != v7)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDProtocolPrimitives.cpp", "nbdLoad", 0x4E6, 0, "extra data after path array", a7);
    goto LABEL_4;
  }

  result = 0;
LABEL_5:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2969A94B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  amber::ObjectStorePath::~ObjectStorePath(va);
  _Unwind_Resume(a1);
}

double amber::NBDServer::NBDServer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *a1 = &unk_2A1DE1B20;
  *(a1 + 8) = &unk_2A1DE1B58;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a5 >> 62;
  *(a1 + 52) = 257;
  *(a1 + 54) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_296A14210;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1018212795;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 100;
  *(a1 + 196) = 10809;
  result = NAN;
  *(a1 + 200) = 0xFFFFFFFF00000000;
  *(a1 + 208) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = -1;
  *(a1 + 248) = 850045863;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  return result;
}

void amber::NBDServer::~NBDServer(amber::NBDServer *this)
{
  *this = &unk_2A1DE1B20;
  *(this + 1) = &unk_2A1DE1B58;
  v2 = 1;
  atomic_compare_exchange_strong(this + 14, &v2, 0);
  if (v2 == 1)
  {
    v3 = *(this + 23);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 23) = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::~__hash_table(this + 352);
  std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::~__hash_table(this + 312);
  std::mutex::~mutex((this + 248));
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex((this + 72));
}

{
  amber::NBDServer::~NBDServer(this);

  JUMPOUT(0x29C25C000);
}

void non-virtual thunk toamber::NBDServer::~NBDServer(amber::NBDServer *this)
{
  amber::NBDServer::~NBDServer((this - 8));
}

{
  amber::NBDServer::~NBDServer((this - 8));

  JUMPOUT(0x29C25C000);
}

uint64_t amber::NBDServer::setSocketPath(uint64_t this, const char *a2)
{
  if (a2)
  {
    JUMPOUT(0x29C25BF00);
  }

  if (*(this + 239) < 0)
  {
    **(this + 216) = 0;
    *(this + 224) = 0;
  }

  else
  {
    *(this + 216) = 0;
    *(this + 239) = 0;
  }

  return this;
}

void amber::NBDServer::logStats(amber::NBDServer *this)
{
  v7 = 0;
  time(&v7);
  v2 = getpid();
  v3 = *(this + 98);
  v4 = ctime(&v7);
  amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "logStats", 0x7F, 0, "* Server stats (pid %u, port %u) %s", v5, v2, v3, v4);
  amber::logValue("requests received", *(this + 49));
  amber::logValue("read requests received", *(this + 53));
  amber::logValue("write requests received", *(this + 54));
  v6 = atomic_load(this + 55);
  amber::logValue("flush requests received", v6);
  amber::logValue("requests answered", *(this + 50));
  amber::logSize("bytes read", *(this + 51), 1u);
  amber::logSize("bytes written", *(this + 52), 1u);
}

uint64_t amber::NBDServer::start(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 14, &v1, 1u);
  if (!v1)
  {
    operator new();
  }

  return 0;
}

uint64_t amber::NBDServer::getAttribute(amber::NBDServer *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "getAttribute", 0xA4, 0, "invalid attribute encoding %u, %u", v16, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 503)
  {
    switch(a2)
    {
      case 0x1F8:
        v17 = *(this + 50);
        break;
      case 0x1F9:
        v17 = *(this + 60);
        break;
      case 0x1FB:
        v17 = *(this + 208);
        break;
      default:
        goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (a2 != 501)
  {
    if (a2 != 502)
    {
      if (a2 == 503)
      {
        v17 = *(this + 48);
        goto LABEL_28;
      }

LABEL_21:
      if ((*(this + 51) & 0x80000000) != 0 || (v21 = atomic_load(this + 14)) == 0)
      {
        v24 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp";
        v25 = "getAttribute";
        v26 = "can't get socket on non running server";
        v27 = 181;
        goto LABEL_34;
      }

      v32 = *(this + 51);
      v33 = &off_2A1DDFC68;
      v34 = &v32;
      v35 = 4;
      *a5 = 4;
      v22 = *(a4 + 2);
      if (v22)
      {
        if (v22 > 3)
        {
          return amber::copy(a4, &v33, v12, v13, v14, v15, v16);
        }

        v30 = 4;
        v31 = *(a4 + 2);
LABEL_31:
        v24 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././BaseObject.hpp";
        v25 = "loadAttribute";
        v26 = "insufficient capacity, expected: %zu, actual: %zu";
        v27 = 19;
LABEL_34:
        amber::log(2, v24, v25, v27, 0, v26, v16, v30, v31);
        return 0xFFFFFFFFLL;
      }

      return 0;
    }

    v17 = *(this + 98);
LABEL_28:
    v32 = v17;
    v33 = &off_2A1DDFC68;
    v34 = &v32;
    v35 = 4;
    *a5 = 4;
    v23 = *(a4 + 2);
    if (v23)
    {
      if (v23 > 3)
      {
        result = 0;
        **(a4 + 1) = v17;
        return result;
      }

      v30 = 4;
      v31 = *(a4 + 2);
      goto LABEL_31;
    }

    return 0;
  }

  v18 = this + 216;
  if (*(this + 239) < 0)
  {
    v18 = *v18;
  }

  v19 = strlen(v18);
  v33 = &off_2A1DDFC68;
  v34 = v18;
  v35 = v19;
  if ((v19 & 0x8000000000000000) != 0 || !v18 && v19)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v16);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *a5 = v19;
  v20 = *(a4 + 2);
  if (v20)
  {
    if (v20 < v19)
    {
      v30 = v19;
      v31 = *(a4 + 2);
      goto LABEL_31;
    }

    memcpy(*(a4 + 1), v18, v19);
  }

  return 0;
}

uint64_t amber::NBDServer::setAttribute(amber::NBDServer *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v16 = "invalid attribute encoding";
    v17 = 197;
    goto LABEL_7;
  }

  if (a2 <= 503)
  {
    switch(a2)
    {
      case 0x1F5:
        if (*(a4 + 2))
        {
          MEMORY[0x29C25BF10](this + 216, *(a4 + 1));
          return 0;
        }

        else
        {
          result = 0;
          if (*(this + 239) < 0)
          {
            **(this + 27) = 0;
            *(this + 28) = 0;
          }

          else
          {
            *(this + 216) = 0;
            *(this + 239) = 0;
          }
        }

        return result;
      case 0x1F6:
        v20 = 0;
        if ((amber::storeAttribute<unsigned int>(&v20, a4, v10, v11, v12, v13, v14) & 0x80000000) == 0 && v20 < 0x10000)
        {
          result = 0;
          *(this + 98) = v20;
          return result;
        }

        v16 = "invalid value";
        v17 = 205;
        goto LABEL_7;
      case 0x1F7:
        v15 = this + 192;
        goto LABEL_13;
    }

    goto LABEL_37;
  }

  if (a2 > 505)
  {
    if (a2 != 506)
    {
      if (a2 == 507)
      {
        v20 = 0;
        if ((amber::storeAttribute<unsigned int>(&v20, a4, v10, v11, v12, v13, v14) & 0x80000000) == 0)
        {
          result = 0;
          *(this + 208) = v20 != 0;
          return result;
        }

        v16 = "invalid value";
        v17 = 237;
        goto LABEL_7;
      }

LABEL_37:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "setAttribute", 0xF7, 0, "invalid server attribute: %u", v14, a2);
      return 0xFFFFFFFFLL;
    }

    if (atomic_load(this + 14))
    {
      v16 = "can't set socket on running server";
      v17 = 227;
    }

    else
    {
      v20 = 0;
      if ((amber::storeAttribute<unsigned int>(&v20, a4, v10, v11, v12, v13, v14) & 0x80000000) == 0)
      {
        if (v20 == -1 || (v20 & 0x80000000) == 0)
        {
          result = 0;
          *(this + 51) = v20;
          return result;
        }

        goto LABEL_37;
      }

      v16 = "invalid value";
      v17 = 229;
    }

LABEL_7:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "setAttribute", v17, 0, v16, v14);
    return 0xFFFFFFFFLL;
  }

  if (a2 == 504)
  {
    v20 = 0;
    if ((amber::storeAttribute<unsigned int>(&v20, a4, v10, v11, v12, v13, v14) & 0x80000000) == 0)
    {
      result = 0;
      *(this + 50) = v20 != 0;
      return result;
    }

    v16 = "invalid value";
    v17 = 220;
    goto LABEL_7;
  }

  v15 = this + 240;
LABEL_13:

  return amber::storeAttribute<unsigned int>(v15, a4, v10, v11, v12, v13, v14);
}

uint64_t amber::NBDServer::connectClient(amber::NBDServer *this, int *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((amber::NetworkEndpoint::openSocketPair(&v5, a2) & 0x80000000) == 0)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "connectClient", 0xFE, 0, "openSocketPair", v2);
  result = 0xFFFFFFFFLL;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::NBDServer::addClient(amber::NBDServer *this, amber::NetworkEndpoint *a2)
{
  v4 = 6;
  do
  {
    std::mutex::lock((this + 248));
    if (*(this + 42) < *(this + 48))
    {
      std::mutex::unlock((this + 248));
      std::mutex::lock((this + 248));
      operator new();
    }

    usleep(0x30D40u);
    std::mutex::unlock((this + 248));
    --v4;
  }

  while (v4);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  return 0xFFFFFFFFLL;
}

void sub_2969AA2C0(_Unwind_Exception *a1)
{
  MEMORY[0x29C25C000](v2, 0x10B3C4099E40865);
  std::mutex::unlock((v1 + 248));
  _Unwind_Resume(a1);
}

void amber::NBDServer::run(amber::NBDServer *this, const char *a2)
{
  v11 = 0;
  if (!*(this + 50))
  {
    if ((*(this + 51) & 0x80000000) == 0)
    {
      operator new();
    }

    v9 = *(this + 239);
    if (v9 < 0)
    {
      if (!*(this + 28))
      {
        goto LABEL_22;
      }

      v10 = *(this + 27);
    }

    else
    {
      v10 = (this + 216);
      if (!v9)
      {
LABEL_22:
        amber::NetworkEndpoint::serverIPOpen(*(this + 98));
      }
    }

    amber::NetworkEndpoint::serverNamedOpen(v10, a2);
  }

  while (atomic_load(this + 14))
  {
    v4 = 0;
    atomic_compare_exchange_strong(&v11, &v4, 1u);
    if (!v4)
    {
      amber::Sem::release((this + 64));
    }

    usleep(0x3D090u);
    std::mutex::lock((this + 248));
    for (i = *(this + 46); i; i = *i)
    {
      v6 = i[2];
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::clear(this + 44);
    std::mutex::unlock((this + 248));
  }

  v8 = 0;
  atomic_compare_exchange_strong(&v11, &v8, 1u);
  if (!v8)
  {
    amber::Sem::release((this + 64));
  }

  *(this + 51) = -1;
}

void amber::NBDClientThread::run(amber::NBDClientThread *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v91[75] = *MEMORY[0x29EDCA608];
  v86[0] = &unk_2A1DDFD28;
  v86[2] = 0;
  v86[3] = 0;
  v86[1] = off_2A1DDFD48;
  v86[5] = 0;
  v86[6] = 0;
  v86[4] = &off_2A1DDFDA8;
  v86[7] = &off_2A1DDFC68;
  v87 = 0u;
  v88 = 0u;
  v89 = 1;
  v90 = 0;
  *v85 = 0;
  v83 = 0;
  *v84 = 0;
  v82 = 0;
  if ((amber::Buffer::reserve(v86, 0x400uLL, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x19C, 0, "buffer alloc", v11);
    goto LABEL_64;
  }

  v12 = *(this + 2);
  if (!v12)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x19E, 0, "invalid state", v11);
    goto LABEL_64;
  }

  if ((amber::nbdServerHandshake(v12, 3, &v82, v8, v9, v10, v11) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x1A6, 0, "server handshake", v13);
    goto LABEL_64;
  }

  if (!atomic_load((*(this + 1) + 56)))
  {
    goto LABEL_64;
  }

  while (1)
  {
    amber::ObjectStorePath::ObjectStorePath(v91);
    v80 = 0;
    v81 = 0;
    if (!amber::ConstMemoryViewConvertible<amber::Buffer>::empty(*(this + 2) + 216, v15, v16, v17, v18, v19, v20))
    {
      break;
    }

    v26 = amber::NetworkEndpoint::selectForReading(*(this + 2), 0x3D090u, v21, v22, v23, v24, v25);
    if (v26 < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x1B5, 0, "endpoint select", v25);
      goto LABEL_63;
    }

    if (v26)
    {
      break;
    }

    v47 = 9;
LABEL_31:
    amber::ObjectStorePath::~ObjectStorePath(v91);
    if (v47 == 9)
    {
      if (atomic_load((*(this + 1) + 56)))
      {
        continue;
      }
    }

    goto LABEL_64;
  }

  if ((*(this + 256) & 1) == 0)
  {
    amber::Buffer::resize(v86, 0, v21, v22, v23, v24, v25);
    LODWORD(v78[0]) = 0;
    if ((amber::nbdServerReceiveOptionRequest(*(this + 2), v78, v86, v38, v39, v40, v41) & 0x80000000) != 0 || (amber::NBDClientThread::processOptionRequest(this, LODWORD(v78[0]), v86, v42, v43, v44, v45) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x1C8, 0, "process option", v45);
      v47 = 4;
    }

    else if (atomic_load(this + 65))
    {
      v47 = 10;
    }

    else
    {
      v47 = 9;
    }

    goto LABEL_31;
  }

  if ((amber::nbdServerReceiveRequest(*(this + 2), &v85[1], v85, v84, &v83, (&v82 + 4), v91, &v81, &v80, v77) & 0x80000000) != 0)
  {
    amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x1DA, 0, "NBD server: client closed connection", v30);
    goto LABEL_63;
  }

  if (v85[0] != 0x8000 && v85[0] >= 2u)
  {
    v32 = 0;
  }

  else
  {
    v32 = HIDWORD(v82);
  }

  if (v85[0] == 2)
  {
    goto LABEL_63;
  }

  if (atomic_load(this + 65))
  {
    goto LABEL_63;
  }

  if (!v32)
  {
    v35 = 0;
    goto LABEL_34;
  }

  v35 = malloc_type_malloc(v32 + 8, 0xF93785E2uLL);
  if (v35)
  {
    v36 = v85[0];
    if (v85[0] == 0x8000 || v85[0] == 1)
    {
      v37 = *(this + 2);
      v78[0] = &off_2A1DDFDA8;
      v78[1] = (v35 + 8);
      v78[2] = v32;
      if (amber::NetworkEndpoint::readExpected(v37, v78, v34, v27, v28, v29, v30) < 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x1F8, 0, "read request payload", v30);
        free(v35);
        goto LABEL_63;
      }

LABEL_34:
      v36 = v85[0];
    }

    atomic_fetch_add_explicit((*(this + 1) + 392), 1uLL, memory_order_relaxed);
    if (v36 <= 4)
    {
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          atomic_fetch_add_explicit((*(this + 1) + 440), 1uLL, memory_order_relaxed);
        }
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          atomic_fetch_add_explicit((*(this + 1) + 432), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((*(this + 1) + 416), HIDWORD(v82), memory_order_relaxed);
        }
      }

      else
      {
        atomic_fetch_add_explicit((*(this + 1) + 424), 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit((*(this + 1) + 408), HIDWORD(v82), memory_order_relaxed);
      }

LABEL_49:
      operator new();
    }

    if (v36 != 0x8000)
    {
      goto LABEL_49;
    }

    v79[0] = &unk_2A1DE0740;
    v79[1] = &unk_2A1DE0780;
    memset(&v79[2], 0, 24);
    amber::ProxyBuffer::ProxyBuffer(v78, v35 + 8, HIDWORD(v82), v27, v28, v29, v30);
    if ((amber::nbdLoad(v78, v79, HIDWORD(v82), 0, v48, v49, v50) & 0x80000000) != 0 || ((*(**(this + 3) + 56))(*(this + 3), v79, 0) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x21A, 0, "invalid serialized object store path array (ignored)", v51);
      v52 = 2147483670;
    }

    else
    {
      v52 = 1;
    }

    free(v35);
    if ((amber::NBDClientThread::sendReplyNoData(this, v52, *v84) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x223, 0, "Sending direct reply", v59);
      v47 = 4;
    }

    else
    {
      v47 = 9;
    }

    amber::Buffer::~Buffer(v78, v54, v55, v56, v57, v58, v59);
    amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(v79);
    goto LABEL_31;
  }

  v60 = __error();
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v60, "malloc", v61);
  v62 = __error();
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "run", 0x1F2, *v62, "malloc", v63);
LABEL_63:
  amber::ObjectStorePath::~ObjectStorePath(v91);
LABEL_64:
  v64 = *(this + 2);
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  *(this + 2) = 0;
  v65 = *(this + 1);
  v66 = *(v65 + 32);
  if (v66)
  {
    v67 = (this + 40);
    if (*(this + 63) < 0)
    {
      v67 = *v67;
    }

    v66(*(v65 + 16), v67);
    v65 = *(this + 1);
  }

  std::mutex::lock((v65 + 248));
  v68 = *(this + 1);
  v91[0] = this;
  std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::__emplace_unique_key_args<amber::NBDClientThread *,amber::NBDClientThread *>((v68 + 352), v91);
  v69 = *(this + 1);
  v91[0] = this;
  std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::__erase_unique<amber::NBDClientThread *>((v69 + 312), v91);
  std::mutex::unlock((v65 + 248));
  amber::Buffer::~Buffer(v86, v70, v71, v72, v73, v74, v75);
  v76 = *MEMORY[0x29EDCA608];
}

void sub_2969AAF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  amber::ObjectStorePath::~ObjectStorePath(&a50);
  amber::Buffer::~Buffer(&a37, v51, v52, v53, v54, v55, v56);
  _Unwind_Resume(a1);
}

uint64_t amber::NBDClientThread::processOptionRequest(amber::NBDClientThread *this, amber::NetworkEndpoint *a2, const amber::Buffer *a3, uint64_t a4, const amber::Buffer *a5, uint64_t a6, const char *a7)
{
  v10 = 2147483649;
  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        if (!amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, a2, a3, a4, a5, a6, a7))
        {
          v68 = *(this + 2);
          if (*(*(this + 1) + 52) == 1)
          {
            v69 = amber::nbdServerSendOptionReply_ACK(v68, 8, v66, v67, a5, a6, a7);
          }

          else
          {
            v69 = amber::nbdServerSendOptionReply(v68, 8, 2147483649, 0, a5, a6, a7);
          }

          if ((v69 & 0x80000000) == 0)
          {
            result = 0;
            *(this + 64) = *(*(this + 1) + 52);
            return result;
          }

          v12 = "send ACK/UNSUP";
          v13 = 744;
          goto LABEL_75;
        }

        break;
      case 0x10000:
        if (!amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, a2, a3, a4, a5, a6, a7))
        {
          v77 = *(this + 2);
          if (*(*(this + 1) + 53) == 1)
          {
            v78 = amber::nbdServerSendOptionReply_ACK(v77, 0x10000, v71, v72, a5, a6, a7);
          }

          else
          {
            v78 = amber::nbdServerSendOptionReply(v77, 0x10000, 2147483649, 0, a5, a6, a7);
          }

          if ((v78 & 0x80000000) == 0)
          {
            result = 0;
            *(this + 65) = *(*(this + 1) + 53);
            return result;
          }

          v12 = "send ACK/UNSUP";
          v13 = 755;
          goto LABEL_75;
        }

        break;
      case 0x20000:
        if (!amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, a2, a3, a4, a5, a6, a7))
        {
          v16 = *(this + 2);
          if (*(*(this + 1) + 54) == 1)
          {
            v17 = amber::nbdServerSendOptionReply_ACK(v16, 0x20000, v14, v15, a5, a6, a7);
          }

          else
          {
            v17 = amber::nbdServerSendOptionReply(v16, 0x20000, 2147483649, 0, a5, a6, a7);
          }

          if ((v17 & 0x80000000) == 0)
          {
            result = 0;
            *(this + 66) = *(*(this + 1) + 54);
            return result;
          }

          v12 = "send ACK/UNSUP";
          v13 = 766;
          goto LABEL_75;
        }

        break;
      default:
        goto LABEL_56;
    }

    goto LABEL_55;
  }

  if ((a2 - 6) < 2)
  {
    v80 = 0;
    v81 = &off_2A1DDFDA8;
    v82 = &v80;
    v83 = 4;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(a3, &v81, 0, a4, a5, a6, a7) & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    v24 = bswap32(v80);
    v25 = v24 + 6;
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, v18, v19, v20, v21, v22, v23) < v25 || (LOWORD(v80) = 0, v81 = &off_2A1DDFDA8, v82 = &v80, v83 = 2, (amber::ConstMemoryViewConvertible<amber::Buffer>::load(a3, &v81, v24 + 4, v26, v27, v28, v23) & 0x80000000) != 0) || (v34 = v80, LODWORD(v35) = __rev16(v80), amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, v29, v30, v31, v32, v33, v23) != v25 + 2 * v35))
    {
LABEL_47:
      v65 = 666;
    }

    else
    {
      v10 = 2147483654;
      v41 = amber::ConstMemoryViewConvertible<amber::Buffer>::begin(a3, v36, v37, v38, v39, v40, v23) + 4;
      *(v41 + v24) = 0;
      v42 = *(this + 1);
      v43 = *(v42 + 24);
      if (!v43 || (v44 = v43(*(v42 + 16), v41)) == 0)
      {
LABEL_56:
        if ((amber::nbdServerSendOptionReply(*(this + 2), a2, v10, 0, a5, a6, a7) & 0x80000000) != 0)
        {
          do
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processOptionRequest", 0x30F, 0, "option processing", v73);
          }

          while ((amber::nbdServerSendOptionReply(*(this + 2), a2, v10, 0, v74, v75, v76) & 0x80000000) != 0);
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      v45 = v44;
      MEMORY[0x29C25BF00](this + 40, v41);
      AttributeUInt32 = amber::BaseObject::getAttributeUInt32(v45, 204);
      if (AttributeUInt32 == -1)
      {
        v47 = 1;
      }

      else
      {
        v47 = AttributeUInt32;
      }

      if (*(*(this + 1) + 240) == -1)
      {
        LODWORD(v48) = 512;
      }

      else
      {
        LODWORD(v48) = *(*(this + 1) + 240);
      }

      if (amber::BaseObject::getAttributeUInt32(v45, 205) != -1)
      {
        LODWORD(v48) = amber::BaseObject::getAttributeUInt32(v45, 205);
      }

      if (v47 <= v48)
      {
        v48 = v48;
      }

      else
      {
        v48 = v47;
      }

      if (v48 <= 0xA00000)
      {
        v52 = 10485760;
      }

      else
      {
        v52 = v48;
      }

      v79 = v52;
      if (!v34)
      {
LABEL_43:
        AttributeUInt64 = amber::BaseObject::getAttributeUInt64(v45, 201);
        v55 = amber::BaseObject::getAttributeUInt32(v45, 202);
        v56 = amber::featureSetToNBD(v55);
        if ((amber::nbdServerSendOptionReply_INFO_EXPORT(*(this + 2), a2, AttributeUInt64, v56 & 0xFFFFFE9F | 0x100, v57, v58, v59) & 0x80000000) != 0)
        {
          v12 = "send INFO_EXPORT";
          v13 = 725;
          goto LABEL_75;
        }

        if ((amber::nbdServerSendOptionReply_ACK(*(this + 2), a2, v60, v61, v62, v63, v11) & 0x80000000) != 0)
        {
          v12 = "send ACK";
          v13 = 726;
          goto LABEL_75;
        }

        if (a2 == 7)
        {
          result = 0;
          *(this + 3) = v45;
          *(this + 256) = 1;
          return result;
        }

        return 0;
      }

      if (v35 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v35;
      }

      while (1)
      {
        LOWORD(v80) = 0;
        v81 = &off_2A1DDFDA8;
        v82 = &v80;
        v83 = 2;
        if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(a3, &v81, v25, v49, v50, v51, v11) & 0x80000000) != 0)
        {
          break;
        }

        if (v80 == 768)
        {
          if ((amber::nbdServerSendOptionReply_INFO_BLOCK_SIZE(*(this + 2), a2, v47, v48, v79, v53, v23) & 0x80000000) != 0)
          {
            v12 = "send INFO BLOCK_SIZE";
            v13 = 705;
            goto LABEL_75;
          }
        }

        else
        {
          amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processOptionRequest", 0x2C4, 0, "INFO request not supported: %u", v23, __rev16(v80));
        }

        LODWORD(v25) = v25 + 2;
        if (!--v35)
        {
          goto LABEL_43;
        }
      }

      v65 = 697;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processOptionRequest", v65, 0, "invalid payload", v23);
LABEL_55:
    v10 = 2147483651;
    goto LABEL_56;
  }

  if (a2 == 2)
  {
    if ((amber::nbdServerSendOptionReply_ACK(*(this + 2), 2, a3, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      v70 = 0;
      result = 0;
      atomic_compare_exchange_strong(this + 65, &v70, 1u);
      return result;
    }

    v12 = "send ACK";
    v13 = 645;
    goto LABEL_75;
  }

  if (a2 != 3)
  {
    goto LABEL_56;
  }

  if ((amber::nbdServerSendOptionReply_ACK(*(this + 2), 3, a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    return 0;
  }

  v12 = "send ACK";
  v13 = 655;
LABEL_75:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processOptionRequest", v13, 0, v12, v11);
  return 0xFFFFFFFFLL;
}

uint64_t amber::NBDClientThread::sendReplyNoData(std::mutex *this, uint64_t a2, unint64_t a3)
{
  std::mutex::lock(this + 3);
  v11 = *&this->__m_.__opaque[8];
  if (!v11)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "sendReplyNoData", 0x31D, 0, "endpoint disconnected", v10);
    goto LABEL_6;
  }

  if ((a2 & 0x80000000) == 0 && a2 != 1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "sendReplyNoData", 0x323, 0, "unexpected reply command: %u", v10, a2);
LABEL_6:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if (LOBYTE(this[1].__m_.__sig) != 1)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v15 = (a2 & 0x7FFFFFFF);
      if ((a2 & 0x7FFFFFFF) == 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "sendReplyNoData", 0x350, 0, "invalid error code", v10);
        goto LABEL_6;
      }
    }

    else
    {
      v15 = 0;
    }

    if ((amber::nbdServerSendSimpleReply(v11, v15, a3, 0, 0, v9, v10) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "sendReplyNoData", 0x359, 0, "simple reply", v45);
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  if ((a2 & 0x80000000) == 0)
  {
    if (a2 == 1 && (amber::nbdServerSendStructuredReply(v11, 1, 0, a3, 0, 0, v10) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "sendReplyNoData", 0x344, 0, "sending structured none reply", v14);
      goto LABEL_6;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_7;
  }

  v46[0] = &unk_2A1DDFD28;
  v46[2] = 0;
  v46[3] = 0;
  v46[1] = off_2A1DDFD48;
  v46[5] = 0;
  v46[6] = 0;
  v46[4] = &off_2A1DDFDA8;
  v46[7] = &off_2A1DDFC68;
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  v50 = 0;
  if ((amber::Buffer::reserve(v46, 6uLL, v6, v7, v8, v9, v10) & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  if ((amber::BufferProtocol<amber::Buffer>::appendNetwork32(v46, a2 & 0x7FFFFFFF, v16, v17, v18, v19, v20) & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  v55 = 0;
  v51 = &off_2A1DDFDA8;
  v52 = &v55;
  v53 = 2;
  v54[0] = &off_2A1DDFC68;
  v54[1] = &v55;
  v54[2] = 2;
  if ((amber::BufferProtocol<amber::Buffer>::append(v46, v54, v21, v22, v23, v24, v20) & 0x80000000) != 0 || (v30 = *&this->__m_.__opaque[8], v31 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v46, v25, v26, v27, v28, v29, v20), v38 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v46, v32, v33, v34, v35, v36, v37), (amber::nbdServerSendStructuredReply(v30, 1, 32769, a3, v31, v38, v39) & 0x80000000) != 0))
  {
LABEL_24:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "sendReplyNoData", 0x339, 0, "sending structured error reply", v20);
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
  }

  amber::Buffer::~Buffer(v46, v40, v41, v42, v43, v44, v20);
LABEL_7:
  std::mutex::unlock(this + 3);
  return v12;
}

void amber::BlockDeviceEvent::link(amber::BlockDeviceEvent *this, amber::BlockDeviceRequest *a2, uint64_t a3)
{
  amber::BlockDeviceEvent::BlockDeviceEvent(v6, 0x10u);
  if (v6[0])
  {
    amber::BlockDeviceEvent::setRequestLinkAttributes(v6, this, a2, a3);
    amber::BlockDeviceEvent::send(v6);
  }

  amber::BlockDeviceEvent::~BlockDeviceEvent(v6);
}

uint64_t amber::featureSetToNBD(amber *this)
{
  if ((this & 2) != 0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 0xF995 | (8 * ((this & 4) != 0)) & 0x9D | (32 * ((this & 8) != 0)) & 0xBD | (((this & 0x20) != 0) << 6) | (((this >> 6) & 1) << 9) & 0xFBFD | (((this >> 4) & 1) << 10) | (2 * (this & 1));
}

uint64_t amber::NBDClientThread::processDeviceReply(std::mutex *this, amber::BlockDeviceRequest *a2)
{
  v3 = *(a2 + 7);
  v4 = *(a2 + 14);
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = (v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::lock(this + 3);
  v14 = *&this->__m_.__opaque[8];
  if (!v14)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processDeviceReply", 0x371, 0, "endpoint disconnected", v13);
    goto LABEL_39;
  }

  if (LOBYTE(this[1].__m_.__sig) != 1)
  {
    if ((v3 & 0x80000000) != 0)
    {
      if (v4 <= 5)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processDeviceReply", 0x3B2, 0, "truncated ERROR payload", v13);
        goto LABEL_39;
      }

      v16 = (v3 & 0x7FFFFFFF);
      if ((v3 & 0x7FFFFFFF) == 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processDeviceReply", 0x3B4, 0, "invalid error code", v13);
        goto LABEL_39;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v3 == 2 && v16 == 0;
    if (v17)
    {
      v18 = v4;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v7;
    }

    else
    {
      v19 = 0;
    }

    if ((amber::nbdServerSendSimpleReply(v14, v16, v5, v18, v19, v12, v13) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processDeviceReply", 0x3C4, 0, "simple reply", v20);
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  if ((v3 & 0x80000000) != 0)
  {
    v60[0] = &unk_2A1DDFD28;
    v60[2] = 0;
    v60[3] = 0;
    v60[1] = off_2A1DDFD48;
    v60[5] = 0;
    v60[6] = 0;
    v60[4] = &off_2A1DDFDA8;
    v60[7] = &off_2A1DDFC68;
    v61 = 0u;
    v62 = 0u;
    v63 = 1;
    v64 = 0;
    if ((amber::Buffer::reserve(v60, 6uLL, v9, v10, v11, v12, v13) & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

    if ((amber::BufferProtocol<amber::Buffer>::appendNetwork32(v60, v3 & 0x7FFFFFFF, v21, v22, v23, v24, v25) & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

    v69 = 0;
    v65 = &off_2A1DDFDA8;
    v66 = &v69;
    v67 = 2;
    v68[0] = &off_2A1DDFC68;
    v68[1] = &v69;
    v68[2] = 2;
    if ((amber::BufferProtocol<amber::Buffer>::append(v60, v68, v26, v27, v28, v29, v25) & 0x80000000) != 0 || (v35 = *&this->__m_.__opaque[8], v36 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v60, v30, v31, v32, v33, v34, v25), v43 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v60, v37, v38, v39, v40, v41, v42), (amber::nbdServerSendStructuredReply(v35, 1, 32769, v5, v36, v43, v44) & 0x80000000) != 0))
    {
LABEL_32:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processDeviceReply", 0x38B, 0, "sending structured error reply", v25);
      amber::Buffer::~Buffer(v60, v50, v51, v52, v53, v54, v55);
      goto LABEL_39;
    }

    amber::Buffer::~Buffer(v60, v45, v46, v47, v48, v49, v25);
    goto LABEL_34;
  }

  if (v3 == 2)
  {
    *v8 = bswap64(v6);
    if ((amber::nbdServerSendStructuredReply(v14, 1, 1, v5, v4 + 8, v8, v13) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processDeviceReply", 0x3A2, 0, "sending structured data reply", v56);
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  if (v3 != 1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processDeviceReply", 0x3A6, 0, "unexpected reply command: %u", v13, v3);
    goto LABEL_39;
  }

  if ((amber::nbdServerSendStructuredReply(v14, 1, 0, v5, 0, 0, v13) & 0x80000000) == 0)
  {
LABEL_34:
    v57 = 0;
    atomic_fetch_add_explicit((*this->__m_.__opaque + 400), 1uLL, memory_order_relaxed);
    goto LABEL_40;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServer.cpp", "processDeviceReply", 0x396, 0, "sending structured none reply", v15);
LABEL_39:
  v57 = 1;
LABEL_40:
  free(v8);
  amber::Sem::release(this[1].__m_.__opaque);
  if (v57)
  {
    v58 = 0;
    atomic_compare_exchange_strong(&this[4].__m_.__sig + 1, &v58, 1u);
  }

  std::mutex::unlock(this + 3);
  return (v57 << 31 >> 31);
}

uint64_t AmberNBDServerDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberNBDServerStop(uint64_t a1)
{
  v1 = 1;
  atomic_compare_exchange_strong((a1 + 56), &v1, 0);
  if (v1 == 1)
  {
    v3 = *(a1 + 184);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(a1 + 184) = 0;
  }

  return 0;
}

void amber::NBDClientThread::~NBDClientThread(amber::NBDClientThread *this)
{
  amber::NBDClientThread::~NBDClientThread(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE1B80;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::mutex::~mutex(this + 3);
  std::condition_variable::~condition_variable(this + 3);
  std::mutex::~mutex((this + 80));
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

void amber::NBDClientThread::NBDClientThread(amber::NBDClientThread *this, amber::NBDServer *a2, amber::NetworkEndpoint *a3)
{
  *this = &unk_2A1DE1B80;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 51) = 0u;
  *(this + 72) = xmmword_296A14210;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 1018212795;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 24) = 850045863;
  *(this + 23) = 0;
  *(this + 65) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 241) = 0u;
  operator new();
}

void sub_2969AC0E8(_Unwind_Exception *a1)
{
  v5 = v4;
  MEMORY[0x29C25C000](v5, 0xA1C409BE6959DLL);
  std::mutex::~mutex(v3);
  std::condition_variable::~condition_variable(v2);
  std::mutex::~mutex((v1 + 80));
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::__emplace_unique_key_args<amber::NBDClientThread *,amber::NBDClientThread * const&>(void *a1, void *a2)
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

void *std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::__emplace_unique_key_args<amber::NBDClientThread *,amber::NBDClientThread *>(void *a1, void *a2)
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

uint64_t *std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::__erase_unique<amber::NBDClientThread *>(void *a1, void *a2)
{
  result = std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::find<amber::NBDClientThread *>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<amber::NBDClientThread *,std::hash<amber::NBDClientThread *>,std::equal_to<amber::NBDClientThread *>,std::allocator<amber::NBDClientThread *>>::find<amber::NBDClientThread *>(void *a1, void *a2)
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

uint64_t amber::KeyValueBlob::assign(amber::KeyValueBlob *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::BufferProtocol<amber::Buffer>::assign((this + 32), a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v47 = "malloc";
    v48 = 11;
  }

  else
  {
    v15 = (this + 8);
    *(this + 2) = *(this + 1);
    result = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 32, v9, v10, v11, v12, v13, v14);
    if (!result)
    {
      return result;
    }

    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = v19;
      amber::ConstMemoryView::operator+(a2, v19, v17, &v55);
      if (v57 <= 3)
      {
        v47 = "invalid blob";
        v48 = 18;
        goto LABEL_34;
      }

      v54 = *v56;
      v26 = *v56;
      v19 += v26;
      v27 = __CFADD__(v20, v26);
      if (v26 < 5 || v27 || v19 > amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 32, v21, v22, v23, v24, v25, v14))
      {
        v47 = "invalid blob entry";
        v48 = 22;
        goto LABEL_34;
      }

      if (v20 + 4 >= v19)
      {
        goto LABEL_33;
      }

      v32 = 0;
      v33 = v26 - 4;
      while (*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](this + 32, v20 + v32 + 4, v28, v29, v30, v31, v14))
      {
        if (v33 == ++v32)
        {
          goto LABEL_33;
        }
      }

      if (!v32 || v33 == v32)
      {
LABEL_33:
        v47 = "invalid blob entry, key is empty or not 0-terminated";
        v48 = 26;
        goto LABEL_34;
      }

      if (v18 == 0x7FFFFFFF)
      {
        break;
      }

      v35 = *(this + 2);
      v36 = *(this + 3);
      if (v35 >= v36)
      {
        v38 = *v15;
        v39 = v35 - *v15;
        v40 = v39 >> 4;
        v41 = (v39 >> 4) + 1;
        if (v41 >> 60)
        {
          std::vector<DERNode>::__throw_length_error[abi:ne200100]();
        }

        v42 = v36 - v38;
        if (v42 >> 3 > v41)
        {
          v41 = v42 >> 3;
        }

        if (v42 >= 0x7FFFFFFFFFFFFFF0)
        {
          v41 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (v41)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<amber::Range>>(this + 8, v41);
        }

        v43 = 16 * v40;
        *v43 = v20;
        *(v43 + 8) = v54;
        *(v43 + 12) = v32;
        v37 = 16 * v40 + 16;
        v44 = (v43 - 16 * (v39 >> 4));
        memcpy(v44, v38, v39);
        v45 = *(this + 1);
        *(this + 1) = v44;
        *(this + 2) = v37;
        *(this + 3) = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v35 = v20;
        v37 = v35 + 16;
        *(v35 + 8) = v54;
        *(v35 + 12) = v32;
      }

      *(this + 2) = v37;
      ++v18;
      v46 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 32, v34, v28, v29, v30, v31, v14);
      result = 0;
      if (v19 >= v46)
      {
        return result;
      }
    }

    v47 = "too many entries";
    v48 = 27;
  }

LABEL_34:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/KeyValueBlob.cpp", "assign", v48, 0, v47, v14);
  *(this + 2) = *(this + 1);
  amber::Buffer::resize((this + 32), 0, v49, v50, v51, v52, v53);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KeyValueBlob::keyIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 16) - *(a1 + 8);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  v11 = 0;
  v12 = v7 >> 4;
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  while (1)
  {
    amber::ConstMemoryViewConvertible<amber::Buffer>::view(a1 + 32, *(*(a1 + 8) + v10) + 4, *(*(a1 + 8) + v10 + 12), a7, v15);
    if (__n == *(a2 + 8) && !memcmp(v15[1], *a2, __n))
    {
      break;
    }

    ++v11;
    v10 += 16;
    if (v13 == v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v11;
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::view@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X6>, void *a5@<X8>)
{
  amber::Buffer::constBuf(a1, a4, v13);
  amber::ConstMemoryView::view(v13, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v9, v12);
  return amber::ConstMemoryView::view(v12, a2, a3, v10, a5);
}

uint64_t amber::KeyValueBlob::getEntryAtIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((a2 & 0x80000000) != 0 || (v7 = *(a1 + 8), ((*(a1 + 16) - v7) >> 4) <= a2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/KeyValueBlob.cpp", "getEntryAtIndex", 0x47, 0, "invalid index %d", a7, a2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v7 + 16 * a2;
    amber::ConstMemoryViewConvertible<amber::Buffer>::view(a1 + 32, *v10, *(v10 + 8), a7, v18);
    amber::ConstMemoryView::operator+(v18, 4uLL, v11, &v16);
    if (!*(&v17 + 1))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "operator const char *", 0xE3, 0, "memory invalid range", v12);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v13 = *(v10 + 12);
    *a3 = v17;
    a3[1] = v13;
    amber::ConstMemoryView::operator+(v18, (v13 + 5), v12, &v16);
    result = 0;
    *(a4 + 8) = v17;
  }

  return result;
}

uint64_t amber::KeyValueBlob::setEntryAtIndex(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a2;
  v8 = a1[1];
  v9 = a1 + 1;
  v10 = (a1[2] - v8) >> 4;
  if (v10 < a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/KeyValueBlob.cpp", "setEntryAtIndex", 0x57, 0, "invalid index %d", a7, a2);
    return 0xFFFFFFFFLL;
  }

  v12 = *(a3 + 8);
  if (!v12)
  {
    v17 = "empty key";
    v18 = 88;
    goto LABEL_11;
  }

  if (HIDWORD(v12) || (v13 = v12 + 5, v12 >= 0xFFFFFFFB) || (v15 = *(a4 + 16), HIDWORD(v15)) || (v16 = (v13 + v15), v102 = v13 + v15, __CFADD__(v13, v15)))
  {
    v17 = "invalid key/value size";
    v18 = 95;
LABEL_11:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/KeyValueBlob.cpp", "setEntryAtIndex", v18, 0, v17, a7);
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 0x80000000) != 0 || v10 == a2)
  {
    if (v10 == 0x7FFFFFFF)
    {
      v17 = "too many entries";
      v18 = 106;
      goto LABEL_11;
    }

    v22 = amber::ConstMemoryViewConvertible<amber::Buffer>::size((a1 + 4), a2, a3, a4, a5, a6, a7);
    if ((amber::BufferProtocol<amber::Buffer>::appendValue(a1 + 4, 0, v16, v30, v31, v32, v33) & 0x80000000) != 0)
    {
      v17 = "alloc entry";
      v18 = 108;
      goto LABEL_11;
    }

    v34 = a1[2];
    if (v34 >= a1[3])
    {
      v35 = std::vector<amber::KeyValueBlob::entry_t>::__emplace_back_slow_path<>(v9);
    }

    else
    {
      *v34 = 0;
      v34[1] = 0;
      v35 = (v34 + 2);
    }

    a1[2] = v35;
    *(v35 - 16) = v22;
    *(v35 - 8) = v16;
    *(v35 - 4) = *(a3 + 8);
  }

  else
  {
    v21 = v8 + 16 * a2;
    v22 = *v21;
    v23 = *(v21 + 8);
    *(v21 + 8) = v16;
    *(v21 + 12) = v12;
    if (v16 != v23)
    {
      v24 = v22 + v23;
      if (v22 + v23 > amber::ConstMemoryViewConvertible<amber::Buffer>::size((a1 + 4), a2, a3, a4, a5, a6, a7))
      {
        v17 = "inconsistent offsets in blob";
        v18 = 136;
        goto LABEL_11;
      }

      v93 = v22;
      v36 = amber::ConstMemoryViewConvertible<amber::Buffer>::size((a1 + 4), v25, v26, v27, v28, v29, a7);
      amber::Range::createWithOffsetAndLength(v24, v36 - v24, v37, v97);
      if (v16 >= v23)
      {
        v79 = (v16 - v23);
        v80 = amber::ConstMemoryViewConvertible<amber::Buffer>::size((a1 + 4), v38, v39, v40, v41, v42, v43);
        if ((amber::Buffer::resize((a1 + 4), v80 + v79, v81, v82, v83, v84, v85) & 0x80000000) != 0)
        {
          v18 = 158;
          goto LABEL_49;
        }

        v45 = v36 == v24;
        v22 = v93;
        if (!v45)
        {
          amber::MutableMemoryViewConvertible<amber::Buffer>::zMutableMemoryView((a1 + 4), a7, &v99);
          amber::operator+(v97, v79, v86, v96);
          amber::MutableMemoryView::move(&v99, v96, v97, v87, v88, v89, v90);
          if (v7 + 1 < v10)
          {
            v91 = (*v9 + 16 * (v7 + 1));
            v92 = ~v7 + v10;
            do
            {
              *v91 += v79;
              v91 += 2;
              --v92;
            }

            while (v92);
          }
        }
      }

      else
      {
        v44 = (v23 - v16);
        v45 = v36 == v24;
        v22 = v93;
        if (!v45)
        {
          amber::MutableMemoryViewConvertible<amber::Buffer>::zMutableMemoryView((a1 + 4), v43, &v99);
          amber::operator-(v97, v44, v46, v96);
          amber::MutableMemoryView::move(&v99, v96, v97, v47, v48, v49, v50);
          if (v7 + 1 < v10)
          {
            v51 = (*v9 + 16 * (v7 + 1));
            v52 = ~v7 + v10;
            do
            {
              *v51 -= v44;
              v51 += 2;
              --v52;
            }

            while (v52);
          }
        }

        v53 = amber::ConstMemoryViewConvertible<amber::Buffer>::size((a1 + 4), v38, v39, v40, v41, v42, v43);
        if ((amber::Buffer::resize((a1 + 4), v53 - v44, v54, v55, v56, v57, v58) & 0x80000000) != 0)
        {
          v18 = 151;
LABEL_49:
          v17 = "resize blob";
          goto LABEL_11;
        }
      }
    }
  }

  amber::MutableMemoryViewConvertible<amber::Buffer>::view((a1 + 4), v22, v16, a7, &v99);
  v96[0] = &off_2A1DDFDA8;
  v96[1] = &v102;
  v96[2] = 4;
  amber::ConstMemoryView::ConstMemoryView(v97, &v102, 4, v59, v60, v61, v62);
  v64 = __n;
  if (__n > v101)
  {
    goto LABEL_41;
  }

  memcpy(__dst, v97[1], __n);
  __dst = __dst + v64;
  v101 -= v64;
  amber::ConstMemoryView::ConstMemoryView(v94, *a3, *(a3 + 8), v65, v66, v67, v68);
  v69 = v95;
  if (v95 > v101)
  {
    goto LABEL_41;
  }

  memcpy(__dst, v94[1], v95);
  __dst = __dst + v69;
  v101 -= v69;
  if ((amber::set(&v99, 0, 1uLL, v70, v71, v72, v73) & 0x80000000) != 0 || (amber::MutableMemoryView::increment(&v99, 1uLL, v74, v75, v76, v77, v63) & 0x80000000) != 0 || (v78 = *(a4 + 16), v78 > v101) || (memcpy(__dst, *(a4 + 8), *(a4 + 16)), v45 = v101 == v78, __dst = __dst + v78, v101 -= v78, !v45))
  {
LABEL_41:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/KeyValueBlob.cpp", "setEntryAtIndex", 0xB0, 0, "inconsistent entry sizes", v63);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

unint64_t amber::Range::createWithOffsetAndLength@<X0>(unint64_t this@<X0>, uint64_t a2@<X1>, const char *a3@<X6>, unint64_t *a4@<X8>)
{
  v4 = this + a2;
  if (__CFADD__(this, a2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Range.hpp", "createWithOffsetAndLength", 0x1E, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v4 <= this)
  {
    v5 = 0;
  }

  else
  {
    v5 = this;
  }

  if (v4 <= this)
  {
    v4 = 0;
  }

  *a4 = v5;
  a4[1] = v4;
  return this;
}

uint64_t amber::MutableMemoryView::move(amber::MutableMemoryView *this, const amber::Range *a2, const amber::Range *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = v8 - *a3;
  v10 = *(a2 + 1);
  if (v9 != v10 - *a2 || ((v11 = *(this + 2), v8 <= v11) ? (v12 = v10 > v11) : (v12 = 1), v12))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "move", 0x175, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memmove((*(this + 1) + *a2), (*(this + 1) + v7), v9);
  return 0;
}

unint64_t *amber::operator-@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, unint64_t *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (*result == v5)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v6 = v4 >= a2;
    v7 = v4 - a2;
    if (!v6 || (v6 = v5 >= a2, v8 = v5 - a2, !v6))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Range.hpp", "operator-", 0x79, 0, "memory invalid range", a3);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v7 >= v8)
    {
      v7 = 0;
      v8 = 0;
    }

    *a4 = v7;
    a4[1] = v8;
  }

  return result;
}

uint64_t *amber::operator+@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, const char *a3@<X6>, unint64_t *a4@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (*result == v5)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v6 = __CFADD__(v4, a2);
    v7 = v4 + a2;
    if (v6 || (v6 = __CFADD__(v5, a2), v8 = v5 + a2, v6))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Range.hpp", "operator+", 0x84, 0, "memory invalid range", a3);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v7 >= v8)
    {
      v7 = 0;
      v8 = 0;
    }

    *a4 = v7;
    a4[1] = v8;
  }

  return result;
}

uint64_t amber::MutableMemoryView::increment(amber::MutableMemoryView *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 2);
  v8 = v7 >= a2;
  v9 = v7 - a2;
  if (!v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "increment", 0x122, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(this + 1) += a2;
  *(this + 2) = v9;
  return 0;
}

uint64_t amber::KeyValueBlob::removeEntryAtIndex(amber::KeyValueBlob *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a2;
  if ((a2 & 0x80000000) != 0 || (v9 = *(this + 1), v10 = (*(this + 2) - v9) >> 4, v10 <= a2))
  {
    v41 = a2;
    v19 = "invalid index %d";
    v20 = 187;
    goto LABEL_7;
  }

  v11 = *(v9 + 16 * a2 + 8);
  v18 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 32, a2, a3, a4, a5, a6, a7) - v11;
  if (v10 - 1 == v7)
  {
    if ((amber::Buffer::resize((this + 32), v18, v13, v14, v15, v16, v17) & 0x80000000) != 0)
    {
      v19 = "truncate blob";
      v20 = 195;
LABEL_7:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/KeyValueBlob.cpp", "removeEntryAtIndex", v20, 0, v19, a7, v41);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v22 = v7 + 1;
    v23 = *(*(this + 1) + 16 * (v7 + 1));
    v24 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 32, v12, v13, v14, v15, v16, v17) - v23;
    amber::Buffer::buf(this + 32, v25, &v47);
    amber::MutableMemoryView::view(&v47, *(this + 14), *(this + 15) - *(this + 14), v26, &v44);
    v28 = v23 + v24;
    if (__CFADD__(v23, v24))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Range.hpp", "createWithOffsetAndLength", 0x1E, 0, "memory invalid range", v27);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v28 <= v23)
    {
      v29 = 0;
    }

    else
    {
      v29 = v23;
    }

    if (v28 <= v23)
    {
      v28 = 0;
    }

    v47 = v29;
    v48 = v28;
    amber::operator-(&v47, v11, v27, &v42);
    if (v48 - v47 != v43 - v42 || v48 > v46 || v43 > v46)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "move", 0x175, 0, "memory invalid range", v30);
      v39 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v39, "memory invalid range");
      __cxa_throw(v39, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memmove((v45 + v42), (v45 + v47), v48 - v47);
    if ((amber::Buffer::resize((this + 32), v18, v31, v32, v33, v34, v35) & 0x80000000) != 0)
    {
      v19 = "truncate blob";
      v20 = 207;
      goto LABEL_7;
    }

    if (v22 < v10)
    {
      v36 = 16 * v7;
      do
      {
        v37 = (*(this + 1) + v36);
        v38 = v37[3];
        *v37 = v37[2] - v11;
        v37[1] = v38;
        v36 += 16;
        ++v22;
      }

      while (v22 < v10);
    }
  }

  result = 0;
  *(this + 2) -= 16;
  return result;
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::from@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  amber::Buffer::constBuf(a1, a3, v11);
  amber::ConstMemoryView::view(v11, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v7, v10);
  return amber::ConstMemoryView::from(v10, a2, v8, a4);
}

uint64_t amber::set(amber *this, const amber::MutableMemoryView *a2, size_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 2) < a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "set", 0x4A, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memset(*(this + 1), a2, a3);
  return 0;
}

uint64_t std::vector<amber::KeyValueBlob::entry_t>::__emplace_back_slow_path<>(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::Range>>(a1, v5);
  }

  v6 = (16 * v1);
  *v6 = 0;
  v6[1] = 0;
  v7 = 16 * v1 + 16;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy(v6 - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

uint64_t amber::ConstMemoryView::from@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  v4 = *(this + 16);
  if (v4 < a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "from", 0x12A, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = *(this + 8);
  *a4 = &off_2A1DDFC68;
  a4[1] = v5 + a2;
  a4[2] = v4 - a2;
  if ((v4 - a2) < 0 || (v4 != a2 ? (v6 = v5 == 0) : (v6 = 0), v6))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_10;
  }

  return this;
}

void sub_2969ADF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  ContainerUnlockNewData::~ContainerUnlockNewData(&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ContainerUnlockNewData::unlockProc(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v20 = 0;
  v21[0] = 0;
  if ((AmberObjectGetAttribute(a2, 116, 2, 4uLL, &v20, v21, a7) & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (v21[0] != 4 || v20 != 0)
  {
    goto LABEL_17;
  }

  LODWORD(v21[0]) = *a1;
  if ((AmberObjectSetAttribute(a2, 112, 2, v21, 4, v9, v10) & 0x80000000) != 0)
  {
    v16 = "set context";
    v17 = 71;
    goto LABEL_23;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v21[0] = &off_2A1DDFC68;
    v21[1] = a1 + 28;
    v21[2] = v13;
    if (((*(*a2 + 24))(a2, 127, 3, v21) & 0x80000000) != 0)
    {
      v16 = "set context";
      v17 = 76;
      goto LABEL_23;
    }
  }

  v14 = (a1 + 288);
  v15 = *(a1 + 311);
  if (v15 < 0)
  {
    v15 = *(a1 + 296);
    if (!v15)
    {
      goto LABEL_17;
    }

    v14 = *v14;
LABEL_16:
    if ((AmberEncryptionContextAuthDataSetEntry(a2, "com.apple.knox.url", v14, v15) & 0x80000000) != 0)
    {
      v16 = "set context";
      v17 = 82;
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (*(a1 + 311))
  {
    goto LABEL_16;
  }

LABEL_17:
  v18 = *(a1 + 320);
  if (!v18 || (v18(*(a1 + 312), a2) & 0x80000000) == 0)
  {
    return 0;
  }

  v16 = "client context proc";
  v17 = 84;
LABEL_23:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "unlockProc", v17, 0, v16, v12);
  return 0xFFFFFFFFLL;
}

void amber::KnoxAEAUploadStream::~KnoxAEAUploadStream(amber::KnoxAEAUploadStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE1BF8;
  amber::KnoxAEAUploadStream::close(this, a2, a3, a4, a5, a6, a7);
  v8 = *(this + 1);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

{
  amber::KnoxAEAUploadStream::~KnoxAEAUploadStream(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::KnoxAEAUploadStream::commitUpload(amber::KnoxAEAUploadStream *this, amber::KnoxPointer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  v8 = 0;
  v36 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong(this + 6, &v7, 1u);
  if (v7)
  {
    goto LABEL_32;
  }

  v34[0] = &unk_2A1DDFDD8;
  v34[1] = &unk_2A1DDFE08;
  memset(&v34[2], 0, 256);
  v35 = 0;
  memset(&__p, 0, sizeof(__p));
  v11 = *(this + 1);
  if (v11)
  {
    v13 = (*(*v11 + 88))(v11);
    if ((v13 & 0x8000000000000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "commitUpload", 0xA4, 0, "invalid encryption stream size", v12);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    if (((*(**(this + 1) + 32))(*(this + 1)) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "commitUpload", 0xA5, 0, "encryption stream close", v17);
      v14 = 0;
    }

    if ((amber::BaseObject::getAttributeCryptoBlob(*(this + 1), 123, 3, v34, v15, v16, v17) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "commitUpload", 0xA7, 0, "get container ID", a7);
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

  if (!LODWORD(v34[2]) || (v32[0] = &off_2A1DDFC68, v32[1] = &v34[2] + 4, v32[2] = LODWORD(v34[2]), amber::hexBytesToStringEnd(v32, &__p, a3, a4, a5, a6, a7) < 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "commitUpload", 0xAC, 0, "invalid container ID", a7);
    v28 = *(this + 2);
    v24 = this + 16;
    v23 = v28;
    if (!v28)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v25 = *(this + 2);
  v24 = this + 16;
  v23 = v25;
  if (v25)
  {
    if (v14)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((amber::knoxUploadStreamCommit(v23, v13, p_p, "AEA-ARCHIVE-IDENTIFIER-256", a2, v22, a7) & 0x80000000) == 0 && ((*(**v24 + 32))() & 0x80000000) == 0)
      {
        v14 = 1;
        goto LABEL_27;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "commitUpload", 0xB6, 0, "commit upload", v27);
LABEL_26:
      v14 = 0;
      goto LABEL_27;
    }

LABEL_22:
    if ((amber::knoxUploadStreamCancel(v23, v18, v19, v20, v21, v22, a7) & 0x80000000) != 0 || ((*(**v24 + 32))() & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "commitUpload", 0xBD, 0, "cancel upload", v29);
    }

    goto LABEL_26;
  }

LABEL_27:
  if (v14)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_32:
  v30 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_2969AE5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::BaseObject::getAttributeCryptoBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a4 + 16) = 0;
  v11 = (a4 + 20);
  v19 = 0;
  v20[0] = &off_2A1DDFDA8;
  v20[1] = a4 + 20;
  v20[2] = 256;
  amber::MutableMemoryView::operator+(v20, 0, a7, &v21);
  bzero(v22, v23);
  v21 = &off_2A1DDFDA8;
  v22 = v11;
  v23 = 256;
  amber::MutableMemoryView::operator+(&v21, *(a4 + 16), v12, v20);
  if (((*(*a1 + 16))(a1, a2, a3, v20, &v19) & 0x80000000) != 0 || (amber::CryptoBlobBase<256u>::grow(a4, v19, v13, v14, v15, v16, v17) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t amber::KnoxAEAUploadStream::cancelUpload(atomic_uint *this, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = 0;
  result = 0;
  atomic_compare_exchange_strong(this + 6, &v8, 1u);
  if (!v8)
  {
    v10 = *(this + 1);
    if (v10 && ((*(*v10 + 32))(v10) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "cancelUpload", 0xC8, 0, "encryption stream close", a7);
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(this + 2);
    if (v12 && ((amber::knoxUploadStreamCancel(v12, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0 || ((*(**(this + 2) + 32))(*(this + 2)) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "cancelUpload", 0xCB, 0, "upload stream cancel/close", v13);
      v11 = 0;
    }

    if (v11)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t amber::KnoxAEAUploadStream::close(amber::KnoxAEAUploadStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 6))
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "close", 0xD6, 0, "commit/cancel was not called before close", a7);
  amber::KnoxAEAUploadStream::cancelUpload(this, v9, v10, v11, v12, v13, v14);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxAEAUploadStream::write(amber::KnoxAEAUploadStream *this, const amber::ConstMemoryView *a2)
{
  if (atomic_load(this + 6))
  {
    return -1;
  }

  else
  {
    return (*(**(this + 1) + 56))(*(this + 1), a2);
  }
}

uint64_t amber::KnoxAEAUploadStream::size(amber::KnoxAEAUploadStream *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (*(*v1 + 88))();
  }

  else
  {
    return -1;
  }
}

uint64_t amber::KnoxAEAUploadStreamCommit(char **this, amber::Stream *a2, amber::KnoxPointer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  {

    return amber::KnoxAEAUploadStream::commitUpload(v9, a2, v10, v11, v12, v13, a7);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "KnoxAEAUploadStreamCommit", 0xFF, 0, "invalid stream type", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::KnoxAEAUploadStreamCancel(char **this, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  {

    return amber::KnoxAEAUploadStream::cancelUpload(v8, v9, v10, v11, v12, v13, a7);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "KnoxAEAUploadStreamCancel", 0x107, 0, "invalid stream type", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t AmberKnoxAEAUploadStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12[0] = &unk_2A1DE1AD8;
  v12[1] = &unk_2A1DE1008;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v18 = -1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v9 = amber::fromAmberObject(v12, a2);
  if ((v9 & 0x80000000) == 0)
  {
    if (!a8)
    {
      amber::defaultThreadCount(v9);
    }

    amber::KnoxAEAUploadStream::open();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "AmberKnoxAEAUploadStreamOpen", 0x11B, 0, "invalid AmberKnoxFileCreationAttributes", v10);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(v12);
  return 0;
}

void sub_2969AEBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxAEAUploadStreamCommit(char **a1, uint64_t a2, amber::KnoxPointer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v15[0] = &unk_2A1DE0CE8;
  v15[1] = &unk_2A1DE1008;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = -1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  if ((amber::KnoxAEAUploadStreamCommit(a1, v15, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::toAmberObject(v15, a2, v8, v9, v10, v11, v12) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "AmberKnoxAEAUploadStreamCommit", 0x127, 0, "upload commit", v12);
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
  }

  amber::KnoxPointer::~KnoxPointer(v15);
  return v13;
}

uint64_t AmberKnoxAEAUploadStreamCancel(char **a1, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::KnoxAEAUploadStreamCancel(a1, a2, a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEAUploadStream.cpp", "AmberKnoxAEAUploadStreamCancel", 0x12F, 0, "upload cancel", v7);
  return 0xFFFFFFFFLL;
}

uint64_t ContainerUnlockNewData::ContainerUnlockNewData(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = &unk_2A1DDFDD8;
  *(a1 + 16) = &unk_2A1DDFE08;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a4;
  *(a1 + 320) = a5;
  if (a3 && *a3)
  {
    MEMORY[0x29C25BF00](a1 + 288, a3);
  }

  else
  {
    *(a1 + 288) = 0;
    *(a1 + 311) = 0;
  }

  return a1;
}

void sub_2969AEE24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 311) < 0)
  {
    operator delete(*(v1 + 288));
  }

  *(v1 + 28) = 0u;
  v5 = (v1 + 28);
  *(v5 - 20) = v2;
  *(v5 - 12) = v3;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  _Unwind_Resume(exception_object);
}

void ContainerUnlockNewData::~ContainerUnlockNewData(ContainerUnlockNewData *this)
{
  if (*(this + 311) < 0)
  {
    operator delete(*(this + 36));
  }

  *(this + 1) = &unk_2A1DDFDD8;
  *(this + 2) = &unk_2A1DDFE08;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0u;
  *(this + 220) = 0u;
  *(this + 236) = 0u;
  *(this + 252) = 0u;
  *(this + 28) = 0u;
  *(this + 268) = 0u;
}

uint64_t amber::RNG(amber *this, const amber::MutableMemoryView *a2)
{
  result = CCRandomGenerateBytes(*(this + 1), *(this + 2));
  if (result)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "RNG", 0xB4, 0, "generate random bytes", v3);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t amber::HMAC_SHA256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 16) = 0;
  v10 = a1 + 20;
  v22 = &off_2A1DDFDA8;
  v23 = a1 + 20;
  v24 = 256;
  amber::MutableMemoryView::operator+(&v22, 0, a7, &v20);
  bzero(*&v20.ctx[2], *&v20.ctx[4]);
  v12 = *(a2 + 16);
  if (v12)
  {
    CCHmacInit(&v20, 2u, (a2 + 20), v12);
    CCHmacUpdate(&v20, *(a3 + 8), *(a3 + 16));
    v22 = &off_2A1DDFDA8;
    v23 = v10;
    v24 = 256;
    amber::MutableMemoryView::operator+(&v22, *(a1 + 16), v13, v21);
    CCHmacFinal(&v20, v21[1]);
    amber::CryptoBlobBase<256u>::grow(a1, 32, v14, v15, v16, v17, v18);
    amber::zero(void *,unsigned long)::memset_func(&v20, 0, 384);
    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HMAC_SHA256", 0xCA, 0, "invalid MAC key size", v11);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::HMAC_SHA256_Ex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 16) = 0;
  v11 = (a1 + 20);
  v27 = &off_2A1DDFDA8;
  v28 = (a1 + 20);
  v29 = 256;
  amber::MutableMemoryView::operator+(&v27, 0, a7, &ctx);
  bzero(*&ctx.ctx[2], *&ctx.ctx[4]);
  if (*(a2 + 16) == 32)
  {
    CCHmacInit(&ctx, 2u, (a2 + 20), 0x20uLL);
    CCHmacUpdate(&ctx, *(a4 + 8), *(a4 + 16));
    CCHmacUpdate(&ctx, *(a3 + 8), *(a3 + 16));
    data = *(a4 + 16);
    CCHmacUpdate(&ctx, &data, 8uLL);
    v27 = &off_2A1DDFDA8;
    v28 = v11;
    v29 = 256;
    amber::MutableMemoryView::operator+(&v27, *(a1 + 16), v13, &v24);
    CCHmacFinal(&ctx, v25);
    amber::CryptoBlobBase<256u>::grow(a1, 32, v14, v15, v16, v17, v18);
    amber::zero(void *,unsigned long)::memset_func(&ctx, 0, 384);
    if (*(a1 + 16) == 32)
    {
      return 0;
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HMAC_SHA256_Ex", 0x135, 0, "invalid MAC size", v19);
      *(a1 + 16) = 0;
      v24 = &off_2A1DDFDA8;
      v25 = v11;
      v26 = 256;
      amber::MutableMemoryView::operator+(&v24, 0, v20, &v27);
      bzero(v28, v29);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HMAC_SHA256_Ex", 0x105, 0, "invalid MAC key size", v12);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::KDF_HKDF_SHA256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((a2 - 257) < 0xFFFFFFFFFFFFFF00 || *(a3 + 16) == 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "KDF_HKDF_SHA256", 0x16C, 0, "Invalid KDF parameters", a7);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = 0;
  v14 = (a1 + 20);
  v28 = &off_2A1DDFDA8;
  v29 = (a1 + 20);
  v30 = 256;
  amber::MutableMemoryView::operator+(&v28, 0, a7, &v31);
  bzero(v32, v33);
  v15 = *(a5 + 16);
  v16 = *(a4 + 16);
  if (CCKDFParametersCreateHkdf())
  {
    v19 = "CCKDFParametersCreateHkdf";
    v20 = 377;
  }

  else
  {
    v21 = *(a3 + 16);
    v31 = &off_2A1DDFDA8;
    v32 = v14;
    v33 = 256;
    amber::MutableMemoryView::operator+(&v31, *(a1 + 16), v18, &v28);
    if (!CCDeriveKey())
    {
      v26 = 0;
      goto LABEL_12;
    }

    v19 = "CCDeriveKey";
    v20 = 383;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "KDF_HKDF_SHA256", v20, 0, v19, v18);
  v26 = 1;
LABEL_12:
  amber::CryptoBlobBase<256u>::grow(a1, a2, v22, v23, v24, v25, v18);
  if (v26)
  {
    *(a1 + 16) = 0;
    v28 = &off_2A1DDFDA8;
    v29 = v14;
    v30 = 256;
    amber::MutableMemoryView::operator+(&v28, 0, v27, &v31);
    bzero(v32, v33);
  }

  return (v26 << 31 >> 31);
}

uint64_t amber::publicKeyFromPrivateKey_P256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 16);
  if (v7 == 97)
  {
    v9 = *(a2 + 20);
    v8 = a2 + 20;
    if (v9 == 4)
    {
      v20[0] = &off_2A1DDFC68;
      v20[1] = v8;
      v20[2] = v7;
      amber::ConstMemoryView::first(v20, 0x41uLL, a7, v19);
      amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a1 + 8, v19, v11, v12, v13, v14, v15);
      return 0;
    }

    v17 = "invalid private key";
    v18 = 444;
  }

  else
  {
    v17 = "invalid private key size";
    v18 = 443;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "publicKeyFromPrivateKey_P256", v18, 0, v17, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::generateRandomPrivateKey_P256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 16) = 0;
  v8 = a1 + 20;
  v18 = &off_2A1DDFDA8;
  v19 = a1 + 20;
  v20 = 256;
  amber::MutableMemoryView::operator+(&v18, 0, a7, &v21);
  bzero(v22, v23);
  v9 = (32 * *MEMORY[0x29C25C140]()) | 0x10;
  v10 = malloc_type_malloc(v9, 0xF93785E2uLL);
  if (v10)
  {
    ccrng();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "generateRandomPrivateKey_P256", 0x1D8, 0, "amber::RNG lookup", v15);
    amber::zero(void *,unsigned long)::memset_func(v10, 0, v9);
  }

  else
  {
    v11 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v11, "malloc", v12);
    v13 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "generateRandomPrivateKey_P256", 0x1D4, *v13, "malloc", v14);
  }

  free(v10);
  *(a1 + 16) = 0;
  v18 = &off_2A1DDFDA8;
  v19 = v8;
  v20 = 256;
  amber::MutableMemoryView::operator+(&v18, 0, v16, &v21);
  bzero(v22, v23);
  return 0xFFFFFFFFLL;
}

uint64_t amber::DHDeriveSharedSecret_ECDH_P256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 16) = 0;
  v10 = a1 + 20;
  v33 = &off_2A1DDFDA8;
  v34 = a1 + 20;
  v35 = 256;
  amber::MutableMemoryView::operator+(&v33, 0, a7, &v36);
  bzero(v37, v38);
  if (*(a3 + 16) != 97 || *(a2 + 16) != 65)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "DHDeriveSharedSecret_ECDH_P256", 0x21C, 0, "DHDeriveSharedSecret_ECP256 invalid key sizes", v11);
    return 0xFFFFFFFFLL;
  }

  v12 = MEMORY[0x29C25C140]();
  v13 = 24 * *v12 + 16;
  v14 = (32 * *v12) | 0x10;
  v15 = malloc_type_malloc(v13, 0xF93785E2uLL);
  if (!v15)
  {
    v22 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v22, "malloc", v23);
    v24 = malloc_type_malloc(v14, 0xF93785E2uLL);
    if (v24)
    {
      v17 = v24;
      v25 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v26 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v26, "malloc", v27);
    v17 = 0;
    v25 = 1;
LABEL_11:
    v28 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "DHDeriveSharedSecret_ECDH_P256", 0x22D, *v28, "malloc", v29);
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = malloc_type_malloc(v14, 0xF93785E2uLL);
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  v18 = *(a3 + 16);
  if (ccec_x963_import_priv())
  {
    v20 = "importing full key";
    v21 = 560;
  }

  else
  {
    v30 = *(a2 + 16);
    if (ccec_x963_import_pub())
    {
      v20 = "importing pub key";
      v21 = 563;
    }

    else
    {
      ccrng();
      v20 = "amber::RNG lookup";
      v21 = 567;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "DHDeriveSharedSecret_ECDH_P256", v21, 0, v20, v19, 32);
  v25 = 0;
LABEL_17:
  amber::zero(void *,unsigned long)::memset_func(v15, 0, v13);
LABEL_18:
  free(v15);
  if ((v25 & 1) == 0)
  {
    amber::zero(void *,unsigned long)::memset_func(v17, 0, v14);
  }

  free(v17);
  *(a1 + 16) = 0;
  v33 = &off_2A1DDFDA8;
  v34 = v10;
  v35 = 256;
  amber::MutableMemoryView::operator+(&v33, 0, v31, &v36);
  bzero(v37, v38);
  return 0xFFFFFFFFLL;
}

uint64_t amber::DHESender_ECDH_P256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v46 = *MEMORY[0x29EDCA608];
  if (*(a3 + 16) != 65)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "DHESender_ECDH_P256", 0x283, 0, "DHESender_ECP256 invalid key sizes", a7);
LABEL_8:
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v28[0] = &unk_2A1DDFDD8;
  v28[1] = &unk_2A1DDFE08;
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
  v44 = 0u;
  v45 = 0;
  if ((amber::generateRandomPrivateKey_P256(v28, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::publicKeyFromPrivateKey_P256(a2, v28, v10, v11, v12, v13, v14) & 0x80000000) != 0 || (amber::DHDeriveSharedSecret_ECDH_P256(a1, a3, v28, v15, v16, v17, v14) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "DHESender_ECDH_P256", 0x289, 0, "DHESender_ECP256", v14);
    *(a1 + 16) = 0;
    v22 = &off_2A1DDFDA8;
    v23 = a1 + 20;
    v24 = 256;
    amber::MutableMemoryView::operator+(&v22, 0, v19, &v25);
    bzero(v26, v27);
    *(a2 + 16) = 0;
    v22 = &off_2A1DDFDA8;
    v23 = a2 + 20;
    v24 = 256;
    amber::MutableMemoryView::operator+(&v22, 0, v20, &v25);
    bzero(v26, v27);
    goto LABEL_8;
  }

  result = 0;
LABEL_9:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEADEncrypt_None_MAC256_KEY256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a3 + 16) == 32)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v17 = &off_2A1DDFC68;
    v18 = v8;
    v19 = v9;
    if ((v9 & 0x8000000000000000) != 0 || (!v8 ? (v10 = v9 == 0) : (v10 = 1), !v10))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if ((amber::HMAC_SHA256_Ex(a2, a3, &v17, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v12 = "HMAC derivation";
    v13 = 684;
  }

  else
  {
    v12 = "AEAD invalid sizes";
    v13 = 681;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADEncrypt_None_MAC256_KEY256", v13, 0, v12, a7);
  *(a2 + 16) = 0;
  v16[0] = &off_2A1DDFDA8;
  v16[1] = a2 + 20;
  v16[2] = 256;
  amber::MutableMemoryView::operator+(v16, 0, v14, &v17);
  bzero(v18, v19);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEADDecrypt_None_MAC256_KEY256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a3 + 16) == 32 && *(a2 + 16) == 32)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v13[0] = &off_2A1DDFC68;
    v13[1] = v8;
    v13[2] = v7;
    if (v7 < 0 || !v8 && v7)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if ((aebdHMACVerify_SHA256_AuxSize64(a2, a3, v13, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v10 = "HMAC verification";
    v11 = 704;
  }

  else
  {
    v10 = "AEAD invalid sizes";
    v11 = 701;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_None_MAC256_KEY256", v11, 0, v10, a7);
  return 0xFFFFFFFFLL;
}

uint64_t aebdHMACVerify_SHA256_AuxSize64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v32 = *MEMORY[0x29EDCA608];
  v15 = &unk_2A1DDFDD8;
  v16 = &unk_2A1DDFE08;
  memset(v17, 0, sizeof(v17));
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
  LODWORD(v31) = 0;
  if (*(a1 + 16) == 32)
  {
    v11 = 1;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "aebdHMACVerify_SHA256_AuxSize64", 0x14F, 0, "invalid MAC size", a7, v15, v16, *v17, *&v17[1], *&v17[2], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    v11 = 0;
  }

  if (*(a2 + 16) != 32)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "aebdHMACVerify_SHA256_AuxSize64", 0x150, 0, "invalid MAC key size", a7);
    v11 = 0;
  }

  if ((amber::HMAC_SHA256_Ex(&v15, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "aebdHMACVerify_SHA256_AuxSize64", 0x152, 0, "MAC derivation", v12);
    v11 = 0;
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v17 + 4), *(a1 + 20)), vceqq_s64(*(&v17[1] + 4), *(a1 + 36)))))))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "aebdHMACVerify_SHA256_AuxSize64", 0x158, 0, "MAC mismatch", v12);
    v11 = 0;
  }

  if (v11)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEADEncrypt_AES256CTR_MAC256_KEY640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v82 = *MEMORY[0x29EDCA608];
  v79 = &unk_2A1DDFDD8;
  v80[0] = &unk_2A1DDFE08;
  memset(&v80[1], 0, 256);
  v81 = 0;
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
  v57 = &unk_2A1DDFDD8;
  v58[0] = &unk_2A1DDFE08;
  memset(&v58[1], 0, 256);
  v59 = 0;
  v11 = *(a1 + 16);
  dataOut = *(a1 + 8);
  *(a2 + 16) = 0;
  v12 = a2 + 20;
  v51 = &off_2A1DDFDA8;
  v52 = a2 + 20;
  v53 = 256;
  amber::MutableMemoryView::operator+(&v51, 0, a7, &v54);
  bzero(v55, v56);
  if (*(a3 + 16) != 80)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADEncrypt_AES256CTR_MAC256_KEY640", 0x2D9, 0, "AEAD invalid sizes", v13);
    result = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  v54 = &off_2A1DDFC68;
  v55 = (a3 + 20);
  v56 = 80;
  amber::ConstMemoryView::view(&v54, 0, 32, v13, &v51);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v61, &v51, v14, v15, v16, v17, v18);
  v19 = *(a3 + 16);
  v54 = &off_2A1DDFC68;
  v55 = (a3 + 20);
  v56 = v19;
  amber::ConstMemoryView::view(&v54, 32, 32, v20, &v51);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(v80, &v51, v21, v22, v23, v24, v25);
  v26 = *(a3 + 16);
  v54 = &off_2A1DDFC68;
  v55 = (a3 + 20);
  v56 = v26;
  amber::ConstMemoryView::view(&v54, 64, 16, v27, &v51);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(v58, &v51, v28, v29, v30, v31, v32);
  dataOutMoved = 0;
  cryptorRef = 0;
  v34 = CCCryptorCreateWithMode(0, 4u, 0, 0, &v58[1] + 4, &v80[1] + 4, LODWORD(v80[1]), 0, 0, 0, 0, &cryptorRef);
  if (!cryptorRef || v34)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADEncrypt_AES256CTR_MAC256_KEY640", 0x2EF, 0, "Cryptor creation", v33);
LABEL_20:
    v43 = 1;
    goto LABEL_21;
  }

  if (CCCryptorGetOutputLength(cryptorRef, v11, 1) != v11)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADEncrypt_AES256CTR_MAC256_KEY640", 0x2F2, 0, "AEAD can't operate in-place", v35);
    goto LABEL_20;
  }

  if (CCCryptorUpdate(cryptorRef, dataOut, v11, dataOut, v11, &dataOutMoved) || dataOutMoved != v11)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADEncrypt_AES256CTR_MAC256_KEY640", 0x2F6, 0, "Encryption", v36);
    goto LABEL_20;
  }

  if (CCCryptorFinal(cryptorRef, &dataOut[v11], 0, &dataOutMoved) || dataOutMoved)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADEncrypt_AES256CTR_MAC256_KEY640", 0x2F8, 0, "Encryption", v39);
    goto LABEL_20;
  }

  v41 = *(a1 + 8);
  v40 = *(a1 + 16);
  v54 = &off_2A1DDFC68;
  v55 = v41;
  v56 = v40;
  if ((v40 & 0x8000000000000000) != 0 || !v41 && v40)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v39);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if ((amber::HMAC_SHA256_Ex(a2, &v60, &v54, a4, v37, v38, v39) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADEncrypt_AES256CTR_MAC256_KEY640", 0x2FB, 0, "HMAC", v42);
    goto LABEL_20;
  }

  v43 = 0;
LABEL_21:
  CCCryptorRelease(cryptorRef);
  if (v43)
  {
    *(a2 + 16) = 0;
    v51 = &off_2A1DDFDA8;
    v52 = v12;
    v53 = 256;
    amber::MutableMemoryView::operator+(&v51, 0, v45, &v54);
    bzero(v55, v56);
  }

  result = (v43 << 31 >> 31);
LABEL_24:
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEADDecrypt_AES256CTR_MAC256_KEY640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v77 = *MEMORY[0x29EDCA608];
  v74 = &unk_2A1DDFDD8;
  v75[0] = &unk_2A1DDFE08;
  memset(&v75[1], 0, 256);
  v76 = 0;
  v55 = &unk_2A1DDFDD8;
  v56 = &unk_2A1DDFE08;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
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
  v73 = 0;
  v52 = &unk_2A1DDFDD8;
  v53[0] = &unk_2A1DDFE08;
  memset(&v53[1], 0, 256);
  v54 = 0;
  if (*(a3 + 16) == 80)
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    v13 = a3 + 20;
    cryptorRef = &off_2A1DDFC68;
    v50 = a3 + 20;
    v51 = 80;
    amber::ConstMemoryView::view(&cryptorRef, 0, 32, a7, dataOutMoved);
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v56, dataOutMoved, v14, v15, v16, v17, v18);
    v19 = *(a3 + 16);
    cryptorRef = &off_2A1DDFC68;
    v50 = v13;
    v51 = v19;
    amber::ConstMemoryView::view(&cryptorRef, 32, 32, v20, dataOutMoved);
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(v75, dataOutMoved, v21, v22, v23, v24, v25);
    v26 = *(a3 + 16);
    cryptorRef = &off_2A1DDFC68;
    v50 = v13;
    v51 = v26;
    amber::ConstMemoryView::view(&cryptorRef, 64, 16, v27, dataOutMoved);
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(v53, dataOutMoved, v28, v29, v30, v31, v32);
    v37 = *(a1 + 8);
    v36 = *(a1 + 16);
    cryptorRef = &off_2A1DDFC68;
    v50 = v37;
    v51 = v36;
    if (v36 < 0 || !v37 && v36)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v35);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if ((aebdHMACVerify_SHA256_AuxSize64(a2, &v55, &cryptorRef, a4, v33, v34, v35) & 0x80000000) == 0)
    {
      cryptorRef = 0;
      dataOutMoved[0] = 0;
      v40 = CCCryptorCreateWithMode(1u, 4u, 0, 0, &v53[1] + 4, &v75[1] + 4, LODWORD(v75[1]), 0, 0, 0, 0, &cryptorRef);
      if (!cryptorRef || v40)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256CTR_MAC256_KEY640", 0x349, 0, "Cryptor creation", v39);
      }

      else if (CCCryptorGetOutputLength(cryptorRef, v12, 1) == v12)
      {
        if (CCCryptorUpdate(cryptorRef, v11, v12, v11, v12, dataOutMoved) || dataOutMoved[0] != v12)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256CTR_MAC256_KEY640", 0x350, 0, "Encryption", v42);
        }

        else
        {
          if (!CCCryptorFinal(cryptorRef, &v11[v12], 0, dataOutMoved) && !dataOutMoved[0])
          {
            v44 = 0;
LABEL_22:
            CCCryptorRelease(cryptorRef);
            goto LABEL_23;
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256CTR_MAC256_KEY640", 0x352, 0, "Encryption", v43);
        }
      }

      else
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256CTR_MAC256_KEY640", 0x34C, 0, "AEAD can't operate in-place", v41);
      }

      v44 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256CTR_MAC256_KEY640", 0x336, 0, "HMACVerify", v38);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256CTR_MAC256_KEY640", 0x32C, 0, "AEAD invalid sizes", a7);
  }

  v44 = 0xFFFFFFFFLL;
LABEL_23:
  v45 = *MEMORY[0x29EDCA608];
  return v44;
}

uint64_t amber::AEADDecrypt_AES256GCM_MAC128_KEY352(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v63 = *MEMORY[0x29EDCA608];
  v60 = &unk_2A1DDFDD8;
  v61[0] = &unk_2A1DDFE08;
  memset(&v61[1], 0, 256);
  v62 = 0;
  v41 = &unk_2A1DDFDD8;
  v42 = &unk_2A1DDFE08;
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
  v58 = 0u;
  v59 = 0;
  v7 = *(a3 + 16);
  if (v7 == 44 && *(a2 + 16) == 16)
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    v13 = a3 + 20;
    cryptorRef = &off_2A1DDFC68;
    v39 = a3 + 20;
    v40 = v7;
    amber::ConstMemoryView::view(&cryptorRef, 0, 32, a7, v37);
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(v61, v37, v14, v15, v16, v17, v18);
    v19 = *(a3 + 16);
    cryptorRef = &off_2A1DDFC68;
    v39 = v13;
    v40 = v19;
    amber::ConstMemoryView::view(&cryptorRef, 32, 12, v20, v37);
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v42, v37, v21, v22, v23, v24, v25);
    cryptorRef = 0;
    if (CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, &v61[1] + 4, LODWORD(v61[1]), 0, 0, 0, 0, &cryptorRef) || !cryptorRef)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256GCM_MAC128_KEY352", 0x3E6, 0, "Cryptor create", v26);
    }

    else if (CCCryptorGCMSetIV())
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256GCM_MAC128_KEY352", 0x3E9, 0, "Cryptor IV", v27);
    }

    else if (*(a4 + 16) && (v31 = *(a4 + 8), CCCryptorGCMAddAAD()))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256GCM_MAC128_KEY352", 0x3EA, 0, "Cryptor AAD", v32);
    }

    else if (CCCryptorGetOutputLength(cryptorRef, v12, 1) == v12)
    {
      if (MEMORY[0x29C25BB90](cryptorRef, v11, v12, v11))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256GCM_MAC128_KEY352", 0x3F0, 0, "Cryptor decrypt", v34);
      }

      else
      {
        v35 = *(a2 + 16);
        if (!CCCryptorGCMFinalize())
        {
          v28 = 0;
          goto LABEL_10;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256GCM_MAC128_KEY352", 0x3F3, 0, "Cryptor finalize", v36);
      }
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256GCM_MAC128_KEY352", 0x3ED, 0, "AEAD can't operate in-place", v33);
    }

    v28 = 0xFFFFFFFFLL;
LABEL_10:
    CCCryptorRelease(cryptorRef);
    goto LABEL_11;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "AEADDecrypt_AES256GCM_MAC128_KEY352", 0x3D2, 0, "AEAD invalid sizes", a7);
  v28 = 0xFFFFFFFFLL;
LABEL_11:
  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t amber::digest_SHA256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 16) = 0;
  v9 = a1 + 20;
  v20 = &off_2A1DDFDA8;
  v21 = a1 + 20;
  v22 = 256;
  amber::MutableMemoryView::operator+(&v20, 0, a7, &c);
  bzero(*c.hash, *&c.hash[2]);
  CC_SHA256_Init(&c);
  v11 = *(a2 + 16);
  if (v11)
  {
    CC_SHA256_Update(&c, *(a2 + 8), v11);
  }

  v20 = &off_2A1DDFDA8;
  v21 = v9;
  v22 = 256;
  amber::MutableMemoryView::operator+(&v20, *(a1 + 16), v10, v19);
  CC_SHA256_Final(v19[1], &c);
  amber::CryptoBlobBase<256u>::grow(a1, 32, v12, v13, v14, v15, v16);
  return 0;
}

uint64_t amber::digest_MurMurHash64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(a1 + 16) = 0;
  v10 = (a1 + 20);
  v24 = &off_2A1DDFDA8;
  v25 = (a1 + 20);
  v26 = 256;
  amber::MutableMemoryView::operator+(&v24, 0, a7, &__dst);
  bzero(v28, v29);
  v12 = (0xC6A4A7935BD1E995 * v8) ^ 0xE2236FDC26A5F6D2;
  v13 = v9 + v8;
  if (v8 >= 16)
  {
    do
    {
      v12 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v9) ^ ((0xC6A4A7935BD1E995 * *v9) >> 47))) ^ v12)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v9[1]) ^ ((0xC6A4A7935BD1E995 * v9[1]) >> 47))));
      v14 = v9 + 2;
      v15 = v9 + 4;
      v9 += 2;
    }

    while (v15 <= v13);
  }

  else
  {
    v14 = v9;
  }

  if ((v14 + 1) <= v13)
  {
    do
    {
      v16 = v14 + 1;
      v12 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v14) ^ ((0xC6A4A7935BD1E995 * *v14) >> 47))) ^ v12);
      v17 = (v14 + 2) > v13;
      ++v14;
    }

    while (!v17);
  }

  else
  {
    v16 = v14;
  }

  if ((v8 & 7) != 0)
  {
    __dst = 0;
    memcpy(&__dst, v16, v8 & 7);
    v12 = 0xC6A4A7935BD1E995 * (__dst ^ v12);
  }

  __dst = &off_2A1DDFDA8;
  v28 = v10;
  v29 = 256;
  amber::MutableMemoryView::operator+(&__dst, *(a1 + 16), v11, &v24);
  *v25 = (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) >> 47);
  amber::CryptoBlobBase<256u>::grow(a1, 8, v18, v19, v20, v21, v22);
  return 0;
}

uint64_t amber::sign_ECDSA_P256_NoPadding(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 16) = 0;
  v10 = a1 + 20;
  v28 = &off_2A1DDFDA8;
  v29 = a1 + 20;
  v30 = 256;
  amber::MutableMemoryView::operator+(&v28, 0, a7, &v31);
  bzero(v32, v33);
  if (*(a2 + 16) != 97)
  {
    v19 = "invalid private key size";
    v20 = 1229;
LABEL_8:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "sign_ECDSA_P256_NoPadding", v20, 0, v19, v11);
    return 0xFFFFFFFFLL;
  }

  if (*(a3 + 16) != 32)
  {
    v19 = "invalid digest size";
    v20 = 1230;
    goto LABEL_8;
  }

  v12 = (32 * *MEMORY[0x29C25C140]()) | 0x10;
  v27 = 0;
  v13 = malloc_type_malloc(v12, 0xF93785E2uLL);
  if (v13)
  {
    v14 = v13;
    v15 = *(a2 + 16);
    if (ccec_x963_import_priv())
    {
      v17 = "importing private key";
      v18 = 1246;
    }

    else
    {
      v27 = 128;
      ccrng();
      v17 = "amber::RNG lookup";
      v18 = 1251;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "sign_ECDSA_P256_NoPadding", v18, 0, v17, v16, v27);
    amber::zero(void *,unsigned long)::memset_func(v14, 0, v12);
    free(v14);
  }

  else
  {
    v21 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v21, "malloc", v22, 0);
    v23 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "sign_ECDSA_P256_NoPadding", 0x4DB, *v23, "malloc", v24);
  }

  *(a1 + 16) = 0;
  v28 = &off_2A1DDFDA8;
  v29 = v10;
  v30 = 256;
  amber::MutableMemoryView::operator+(&v28, 0, v25, &v31);
  bzero(v32, v33);
  return 0xFFFFFFFFLL;
}

uint64_t amber::sign_ECDSA_P256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::sign_ECDSA_P256_NoPadding(a1, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0 || *(a1 + 16) >= 0x81u)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "sign_ECDSA_P256", 0x50F, 0, "Sign_ECDSA_P256_NoPadding", v8);
    *(a1 + 16) = 0;
    v11 = &off_2A1DDFDA8;
    v12 = a1 + 20;
    v13 = 256;
    amber::MutableMemoryView::operator+(&v11, 0, v10, &v14);
    bzero(v15, v16);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a1 + 16) = 128;
    v11 = &off_2A1DDFDA8;
    v12 = a1 + 20;
    v13 = 256;
    amber::MutableMemoryView::operator+(&v11, 0x80uLL, v8, &v14);
    bzero(v15, v16);
    return 0;
  }
}

uint64_t amber::verifySignature_ECDSA_P256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 16) != 128)
  {
    v16 = "Invalid signature size";
    v17 = 1319;
LABEL_10:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "verifySignature_ECDSA_P256", v17, 0, v16, a7);
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 16) != 65)
  {
    v16 = "Invalid public key size";
    v17 = 1320;
    goto LABEL_10;
  }

  if (*(a3 + 16) != 32)
  {
    v16 = "invalid digest size";
    v17 = 1321;
    goto LABEL_10;
  }

  v10 = 24 * *MEMORY[0x29C25C140]() + 16;
  v11 = malloc_type_malloc(v10, 0xF93785E2uLL);
  if (v11)
  {
    v12 = *(a2 + 16);
    if (ccec_x963_import_pub())
    {
      v14 = "importing public key";
      v15 = 1336;
    }

    else
    {
      v23 = *(a1 + 16);
      if (v23 >= 2 && *(a1 + 20) == 48)
      {
        if (*(a1 + 21) + 2 <= v23)
        {
          v24 = *(a3 + 16);
          ccec_verify();
          v14 = "Signature verification";
          v15 = 1344;
        }

        else
        {
          v14 = "Invalid signature";
          v15 = 1341;
        }
      }

      else
      {
        v14 = "Invalid signature";
        v15 = 1339;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "verifySignature_ECDSA_P256", v15, 0, v14, v13);
    amber::zero(void *,unsigned long)::memset_func(v11, 0, v10);
  }

  else
  {
    v19 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v19, "malloc", v20);
    v21 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "verifySignature_ECDSA_P256", 0x535, *v21, "malloc", v22);
  }

  free(v11);
  return 0xFFFFFFFFLL;
}

uint64_t amber::passwordKDF_Scrypt_KEY256(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 16) = 0;
  v11 = (a1 + 20);
  v39 = &off_2A1DDFDA8;
  v40 = (a1 + 20);
  v41 = 256;
  amber::MutableMemoryView::operator+(&v39, 0, a7, &v42);
  bzero(v43, v44);
  if (*(a2 + 16) >= 0x14u && *(a4 + 16))
  {
    if (a3 < 4)
    {
      v13 = qword_296A15358[a3];
      v37 = 0;
      v38 = 0;
      v36 = off_2A1DDFD48;
      v14 = ccscrypt_storage_size();
      if ((v14 & 0x8000000000000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "passwordKDF_Scrypt_KEY256", 0x58C, 0, "Invalid scrypt parameters", v19);
      }

      else if ((amber::MemorySegment::allocate(&v36, v14, v15, v16, v17, v18, v19) & 0x80000000) != 0)
      {
        v33 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "passwordKDF_Scrypt_KEY256", 0x58D, *v33, "malloc", v34);
      }

      else
      {
        v21 = *(a2 + 16);
        v22 = *(a4 + 16);
        v42 = &off_2A1DDFDA8;
        v43 = v11;
        v44 = 256;
        amber::MutableMemoryView::operator+(&v42, *(a1 + 16), v20, &v39);
        v35 = v40;
        if (!ccscrypt())
        {
          amber::CryptoBlobBase<256u>::grow(a1, 32, v23, v24, v25, v26, v27);
          v31 = 0;
          goto LABEL_15;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "passwordKDF_Scrypt_KEY256", 0x58F, 0, "scrypt", v27, 32, v35);
      }

      *(a1 + 16) = 0;
      v39 = &off_2A1DDFDA8;
      v40 = v11;
      v41 = 256;
      amber::MutableMemoryView::operator+(&v39, 0, v28, &v42);
      bzero(v43, v44);
      v31 = 0xFFFFFFFFLL;
LABEL_15:
      free(v37);
      return v31;
    }

    v29 = "Invalid hardness parameter";
    v30 = 1408;
  }

  else
  {
    v29 = "Invalid password/salt";
    v30 = 1399;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "passwordKDF_Scrypt_KEY256", v30, 0, v29, v12);
  return 0xFFFFFFFFLL;
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append16OSP(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = __rev16(a2);
  v8[0] = &off_2A1DDFC68;
  v8[1] = &v9;
  v8[2] = 2;
  return amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(a1, v8, a3, a4, a5, a6, a7);
}

uint64_t amber::HPKEDecap_ECDH_P256_HKDF_SHA256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v151 = *MEMORY[0x29EDCA608];
  v132 = &unk_2A1DDFDD8;
  v133 = &unk_2A1DDFE08;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0;
  v113 = &unk_2A1DDFDD8;
  v114 = &unk_2A1DDFE08;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0;
  v95[0] = &unk_2A1DDFDD8;
  v95[1] = &unk_2A1DDFE08;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0;
  v92 = &unk_2A1DDFDD8;
  v93[0] = &unk_2A1DDFE08;
  memset(&v93[1], 0, 256);
  v94 = 0;
  v90[0] = &unk_2A1DDFDD8;
  v90[1] = &unk_2A1DDFE08;
  memset(&v90[2], 0, 256);
  v91 = 0;
  v88[0] = &unk_2A1DDFDD8;
  v88[1] = &unk_2A1DDFE08;
  memset(&v88[2], 0, 256);
  v89 = 0;
  if (*(a2 + 16) != 65 || *(a3 + 16) != 97)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEDecap_ECDH_P256_HKDF_SHA256", 0x609, 0, "HPKEDecap invalid input sizes", a7);
LABEL_11:
    *(a1 + 16) = 0;
    v82 = &off_2A1DDFDA8;
    v83 = (a1 + 20);
    v84 = 256;
    amber::MutableMemoryView::operator+(&v82, 0, v79, &v85);
    bzero(v86, v87);
    result = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  if ((amber::publicKeyFromPrivateKey_P256(v88, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEDecap_ECDH_P256_HKDF_SHA256", 0x60C, 0, "invalid recipient key", v13);
    goto LABEL_11;
  }

  if ((amber::DHDeriveSharedSecret_ECDH_P256(v90, a2, a3, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEDecap_ECDH_P256_HKDF_SHA256", 0x60F, 0, "derive shared secret", v18);
    goto LABEL_11;
  }

  v85 = "KEM";
  v86 = 3;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v93, &v85, v14, v15, v16, v17, v18);
  v81 = 4096;
  v82 = &off_2A1DDFDA8;
  v83 = &v81;
  v84 = 2;
  v85 = &off_2A1DDFC68;
  v86 = &v81;
  v87 = 2;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v93, &v85, v19, v20, v21, v22, v23);
  v85 = "HPKE-v1";
  v86 = 7;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v114, &v85, v24, v25, v26, v27, v28);
  v85 = &off_2A1DDFC68;
  v86 = &v93[1] + 4;
  v87 = LODWORD(v93[1]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v114, &v85, v29, v30, v31, v32, v33);
  v85 = "eae_prk";
  v86 = 7;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v114, &v85, v34, v35, v36, v37, v38);
  v85 = &off_2A1DDFC68;
  v86 = &v90[2] + 4;
  v87 = LODWORD(v90[2]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v114, &v85, v39, v40, v41, v42, v43);
  v81 = 0x2000;
  v82 = &off_2A1DDFDA8;
  v83 = &v81;
  v84 = 2;
  v85 = &off_2A1DDFC68;
  v86 = &v81;
  v87 = 2;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v133, &v85, v44, v45, v46, v47, v48);
  v85 = "HPKE-v1";
  v86 = 7;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v133, &v85, v49, v50, v51, v52, v53);
  v85 = &off_2A1DDFC68;
  v86 = &v93[1] + 4;
  v87 = LODWORD(v93[1]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v133, &v85, v54, v55, v56, v57, v58);
  v85 = "shared_secret";
  v86 = 13;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v133, &v85, v59, v60, v61, v62, v63);
  v64 = *(a2 + 16);
  v85 = &off_2A1DDFC68;
  v86 = a2 + 20;
  v87 = v64;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v133, &v85, v65, v66, v67, v68, v69);
  v85 = &off_2A1DDFC68;
  v86 = &v88[2] + 4;
  v87 = LODWORD(v88[2]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v133, &v85, v70, v71, v72, v73, v74);
  if ((amber::KDF_HKDF_SHA256(a1, 32, &v113, &v132, v95, v75, v76) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEDecap_ECDH_P256_HKDF_SHA256", 0x624, 0, "KEM HKDF", v77);
    goto LABEL_11;
  }

  result = 0;
LABEL_12:
  v80 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::HPKEKeySchedule_HKDF_SHA256(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v198 = *MEMORY[0x29EDCA608];
  v179 = &unk_2A1DDFDD8;
  v180 = &unk_2A1DDFE08;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0;
  v176 = &unk_2A1DDFDD8;
  v177[0] = &unk_2A1DDFE08;
  memset(&v177[1], 0, 256);
  v178 = 0;
  v158[0] = &unk_2A1DDFDD8;
  v158[1] = &unk_2A1DDFE08;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0;
  v156[0] = &unk_2A1DDFDD8;
  v156[1] = &unk_2A1DDFE08;
  memset(&v156[2], 0, 256);
  v157 = 0;
  v153 = &unk_2A1DDFDD8;
  v154[0] = &unk_2A1DDFE08;
  memset(&v154[1], 0, 256);
  v155 = 0;
  v151[0] = &unk_2A1DDFDD8;
  v151[1] = &unk_2A1DDFE08;
  memset(&v151[2], 0, 256);
  v152 = 0;
  v149[0] = &unk_2A1DDFDD8;
  v149[1] = &unk_2A1DDFE08;
  memset(&v149[2], 0, 256);
  v150 = 0;
  if (a3 > 0x100 || a4 > 0x100 || *(a6 + 16) != 32)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEKeySchedule_HKDF_SHA256", 0x653, 0, "invalid sizes", a7);
LABEL_12:
    *(a1 + 16) = 0;
    v143 = &off_2A1DDFDA8;
    v144 = (a1 + 20);
    v145 = 256;
    amber::MutableMemoryView::operator+(&v143, 0, v135, &v146);
    bzero(v147, v148);
    *(a2 + 16) = 0;
    v143 = &off_2A1DDFDA8;
    v144 = (a2 + 20);
    v145 = 256;
    amber::MutableMemoryView::operator+(&v143, 0, v136, &v146);
    bzero(v147, v148);
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v147 = 0;
  v148 = 0;
  v146 = &off_2A1DDFC68;
  if ((HPKELabeledExtract_HKDF_SHA256(v151, a5, v158, "psk_id_hash", &v146) & 0x80000000) != 0 || (HPKELabeledExtract_HKDF_SHA256(v149, a5, v158, "info_hash", a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEKeySchedule_HKDF_SHA256", 0x657, 0, "derive psk/info hash", v10, a4);
    goto LABEL_12;
  }

  LOBYTE(v142) = 0;
  v143 = &off_2A1DDFDA8;
  v144 = &v142;
  v145 = 1;
  v146 = &off_2A1DDFC68;
  v147 = &v142;
  v148 = 1;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v154, &v146, v11, v12, v13, v14, v10);
  v146 = &off_2A1DDFC68;
  v147 = &v151[2] + 4;
  v148 = LODWORD(v151[2]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v154, &v146, v15, v16, v17, v18, v19);
  v146 = &off_2A1DDFC68;
  v147 = &v149[2] + 4;
  v148 = LODWORD(v149[2]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v154, &v146, v20, v21, v22, v23, v24);
  v146 = "HPKE-v1";
  v147 = 7;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v180, &v146, v25, v26, v27, v28, v29);
  v30 = *(a5 + 16);
  v146 = &off_2A1DDFC68;
  v147 = a5 + 20;
  v148 = v30;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v180, &v146, v31, v32, v33, v34, v35);
  v146 = "secret";
  v147 = 6;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v180, &v146, v36, v37, v38, v39, v40);
  LODWORD(v177[1]) = 0;
  v143 = &off_2A1DDFDA8;
  v144 = &v177[1] + 2;
  v145 = 256;
  amber::MutableMemoryView::operator+(&v143, 0, v41, &v146);
  bzero(v147, v148);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append16OSP(v177, a3, v42, v43, v44, v45, v46);
  v146 = "HPKE-v1";
  v147 = 7;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v47, v48, v49, v50, v51);
  v52 = *(a5 + 16);
  v146 = &off_2A1DDFC68;
  v147 = a5 + 20;
  v148 = v52;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v53, v54, v55, v56, v57);
  v146 = "key";
  v147 = 3;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v58, v59, v60, v61, v62);
  v146 = &off_2A1DDFC68;
  v147 = &v154[1] + 4;
  v148 = LODWORD(v154[1]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v63, v64, v65, v66, v67);
  if ((amber::KDF_HKDF_SHA256(a1, a3, &v179, &v176, a6, v68, v69) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEKeySchedule_HKDF_SHA256", 0x668, 0, "KeySchedule HKDF", v70);
    goto LABEL_12;
  }

  LODWORD(v177[1]) = 0;
  v143 = &off_2A1DDFDA8;
  v144 = &v177[1] + 2;
  v145 = 256;
  amber::MutableMemoryView::operator+(&v143, 0, v70, &v146);
  bzero(v147, v148);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append16OSP(v177, a4, v71, v72, v73, v74, v75);
  v146 = "HPKE-v1";
  v147 = 7;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v76, v77, v78, v79, v80);
  v81 = *(a5 + 16);
  v146 = &off_2A1DDFC68;
  v147 = a5 + 20;
  v148 = v81;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v82, v83, v84, v85, v86);
  v146 = "base_nonce";
  v147 = 10;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v87, v88, v89, v90, v91);
  v146 = &off_2A1DDFC68;
  v147 = &v154[1] + 4;
  v148 = LODWORD(v154[1]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v92, v93, v94, v95, v96);
  if ((amber::KDF_HKDF_SHA256(v156, a4, &v179, &v176, a6, v97, v98) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEKeySchedule_HKDF_SHA256", 0x670, 0, "KeySchedule HKDF", v103);
    goto LABEL_12;
  }

  v146 = &off_2A1DDFC68;
  v147 = &v156[2] + 4;
  v148 = LODWORD(v156[2]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(a1 + 8, &v146, v99, v100, v101, v102, v103);
  LODWORD(v177[1]) = 0;
  v143 = &off_2A1DDFDA8;
  v144 = &v177[1] + 2;
  v145 = 256;
  amber::MutableMemoryView::operator+(&v143, 0, v104, &v146);
  bzero(v147, v148);
  v142 = 0x2000;
  v143 = &off_2A1DDFDA8;
  v144 = &v142;
  v145 = 2;
  v146 = &off_2A1DDFC68;
  v147 = &v142;
  v148 = 2;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v105, v106, v107, v108, v109);
  v146 = "HPKE-v1";
  v147 = 7;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v110, v111, v112, v113, v114);
  v115 = *(a5 + 16);
  v146 = &off_2A1DDFC68;
  v147 = a5 + 20;
  v148 = v115;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v116, v117, v118, v119, v120);
  v146 = "exp";
  v147 = 3;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v121, v122, v123, v124, v125);
  v146 = &off_2A1DDFC68;
  v147 = &v154[1] + 4;
  v148 = LODWORD(v154[1]);
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v177, &v146, v126, v127, v128, v129, v130);
  if ((amber::KDF_HKDF_SHA256(a2, 32, &v179, &v176, a6, v131, v132) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEKeySchedule_HKDF_SHA256", 0x679, 0, "KeySchedule HKDF", v133);
    goto LABEL_12;
  }

  result = 0;
LABEL_13:
  v137 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HPKELabeledExtract_HKDF_SHA256(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, uint64_t a5)
{
  v81 = *MEMORY[0x29EDCA608];
  v57[2] = 0;
  v57[3] = 0;
  v57[1] = off_2A1DDFD48;
  v57[5] = 0;
  v57[6] = 0;
  v57[4] = &off_2A1DDFDA8;
  v57[7] = &off_2A1DDFC68;
  v58 = 0u;
  v59 = 0u;
  v60 = 257;
  v61 = 0;
  v57[0] = off_2A1DDFC98;
  v10 = *(a2 + 16);
  v11 = strlen(__s);
  if ((amber::Buffer::reserve(v57, v10 + v11 + *(a5 + 16) + 7, v12, v13, v14, v15, v16) & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v55[0] = "HPKE-v1";
  v55[1] = 7;
  if ((amber::BufferProtocol<amber::Buffer>::append(v57, v55, v17, v18, v19, v20, v21) & 0x80000000) != 0 || (v26 = *(a2 + 16), v62 = &off_2A1DDFC68, v63 = (a2 + 20), *&v64 = v26, (amber::BufferProtocol<amber::Buffer>::append(v57, &v62, v22, v23, v24, v25, v21) & 0x80000000) != 0) || (v56[0] = __s, v56[1] = strlen(__s), (amber::BufferProtocol<amber::Buffer>::append(v57, v56, v27, v28, v29, v30, v31) & 0x80000000) != 0) || (amber::BufferProtocol<amber::Buffer>::append(v57, a5, v32, v33, v34, v35, v21) & 0x80000000) != 0)
  {
LABEL_8:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKELabeledExtract_HKDF_SHA256", 0x639, 0, "malloc", v21);
    v48 = 0xFFFFFFFFLL;
  }

  else
  {
    amber::Buffer::constBuf(v57, v21, &v62);
    amber::ConstMemoryView::view(&v62, v59, *(&v59 + 1) - v59, v36, v55);
    if (*(a3 + 16))
    {
      v41 = amber::HMAC_SHA256(a1, a3, v55, v37, v38, v39, v40);
    }

    else
    {
      v62 = &unk_2A1DDFDD8;
      v63 = &unk_2A1DDFE08;
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
      v79 = 0u;
      v80 = 0;
      amber::BufferProtocol<amber::CryptoBlobBase<256u>>::appendValue(&v63, 0, 0x20, v37, v38, v39, v40);
      v41 = amber::HMAC_SHA256(a1, &v62, v55, v51, v52, v53, v54);
    }

    v48 = v41;
  }

  amber::Buffer::~Buffer(v57, v42, v43, v44, v45, v46, v47);
  v49 = *MEMORY[0x29EDCA608];
  return v48;
}

void sub_2969B34D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::HPKEOpen_ECDH_P256_HKDF_SHA256_HKDF_SHA256_AES256GCM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, const char *a7)
{
  v114 = *MEMORY[0x29EDCA608];
  v96[0] = &unk_2A1DDFDD8;
  v96[1] = &unk_2A1DDFE08;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0;
  v78[0] = &unk_2A1DDFDD8;
  v78[1] = &unk_2A1DDFE08;
  v79 = 0u;
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
  v95 = 0;
  v60[0] = &unk_2A1DDFDD8;
  v60[1] = &unk_2A1DDFE08;
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
  v76 = 0u;
  v77 = 0;
  v41 = &unk_2A1DDFDD8;
  v42 = &unk_2A1DDFE08;
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
  v58 = 0u;
  v59 = 0;
  v37 = "HPKE";
  v38 = 4;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v42, &v37, a3, a4, a5, a6, a7);
  v40 = 4096;
  v37 = &off_2A1DDFC68;
  v38 = &v40;
  v39 = 2;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v42, &v37, v13, v14, v15, v16, v17);
  v40 = 256;
  v37 = &off_2A1DDFC68;
  v38 = &v40;
  v39 = 2;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v42, &v37, v18, v19, v20, v21, v22);
  v40 = 512;
  v37 = &off_2A1DDFC68;
  v38 = &v40;
  v39 = 2;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v42, &v37, v23, v24, v25, v26, v27);
  if ((amber::HPKEDecap_ECDH_P256_HKDF_SHA256(v96, a3, a4, v28, v29, v30, v31) & 0x80000000) != 0 || (amber::HPKEKeySchedule_HKDF_SHA256(v78, v60, 0x20uLL, 0xCuLL, &v41, v96, a5) & 0x80000000) != 0 || (amber::AEADDecrypt_AES256GCM_MAC128_KEY352(a1, a2, v78, a6, v33, v34, v32) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoPrimitives.cpp", "HPKEOpen_ECDH_P256_HKDF_SHA256_HKDF_SHA256_AES256GCM", 0x6C0, 0, "HPKE open", v32);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v36 = *MEMORY[0x29EDCA608];
  return result;
}

void amber::CustomBlockDevice::~CustomBlockDevice(amber::CustomBlockDevice *this)
{
  *this = &unk_2A1DE1C98;
  v2 = *(this + 64);
  if (v2)
  {
    v2(*(this + 59));
  }

  *(this + 59) = 0;
  amber::SyncBlockDevice::terminateThreads(this);

  amber::SyncBlockDevice::~SyncBlockDevice(this, v3, v4, v5, v6, v7, v8);
}

{
  amber::CustomBlockDevice::~CustomBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::CustomBlockDevice::setAttribute(amber::CustomBlockDevice *this, uint64_t a2, uint64_t a3, const amber::ConstMemoryView *a4)
{
  v4 = *(this + 61);
  if (v4)
  {
    return v4(*(this + 59), a2, a3, *(a4 + 1), *(a4 + 2));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::CustomBlockDevice::getAttribute(amber::CustomBlockDevice *this, uint64_t a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5)
{
  v5 = *(this + 60);
  if (v5)
  {
    return v5(*(this + 59), a2, a3, *(a4 + 2), *(a4 + 1), a5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::CustomBlockDevice::executeRead(amber::CustomBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(this + 62);
  if (!v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/CustomBlockDevice.cpp", "executeRead", 0x78, 0, "no read callback", a7);
    v20 = -2147483626;
LABEL_7:
    amber::BlockDeviceRequest::sendReply(a3, v20, 0, v16, v17, v18, v19);
    return 0xFFFFFFFFLL;
  }

  if ((v8(*(this + 59), *(a3 + 8), *(a3 + 14), *(a3 + 6)) & 0x80000000) != 0)
  {
    v20 = -2147483643;
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/CustomBlockDevice.cpp", "executeRead", 0x76, 0, "custom read", v12);
    goto LABEL_7;
  }

  v14 = amber::BlockDeviceRequest::sendReply(a3, 2, 0, v9, v10, v11, v12);
  result = 0;
  if (v14 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/CustomBlockDevice.cpp", "executeRead", 0x79, 0, "reply data", v13);
    return 0;
  }

  return result;
}

uint64_t amber::CustomBlockDevice::executeWrite(amber::CustomBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(this + 63);
  if (!v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/CustomBlockDevice.cpp", "executeWrite", 0x85, 0, "no write callback", a7);
    v14 = -2147483626;
LABEL_6:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if ((v8(*(this + 59), *(a3 + 8), *(a3 + 14), *(a3 + 6)) & 0x80000000) != 0)
  {
    v14 = -2147483643;
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/CustomBlockDevice.cpp", "executeWrite", 0x83, 0, "custom write", v12);
    goto LABEL_6;
  }

  v13 = 0;
  v14 = 1;
LABEL_7:
  amber::BlockDeviceRequest::sendReply(a3, v14, 0, v9, v10, v11, v12);
  return v13;
}

void sub_2969B3D28(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969B3D08);
}

void sub_2969B436C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, int a32, char a33, uint64_t a34, char a35)
{
  MEMORY[0x29C25BDA0](&a14);
  amber::Buffer::~Buffer(&a16, v36, v37, v38, v39, v40, v41);
  if (a31 == 1)
  {
    MEMORY[0x29C25BD50](&a29);
  }

  if (a35 == 1)
  {
    MEMORY[0x29C25BD70](&a33);
  }

  _Unwind_Resume(a1);
}

_DWORD *amber::DiskImageBlockDevice::io_ring_completion(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = io_rings_get_cqe();
    if ((v4 & 0x100000000) == 0)
    {
      break;
    }

    *result = v4;
    amber::Sem::release((result + 2));
    amber::Sem::release((a2 + 520));
  }

  return result;
}

uint64_t amber::DiskImageBlockDevice::create(amber::DiskImageBlockDevice *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  if ((diskImageCreateASIFFile(this, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v11 = "creating disk image";
    v12 = 271;
    v13 = 0;
  }

  else
  {
    v10 = open(this, ~(2 * v7) & 2, 420);
    if ((v10 & 0x80000000) == 0)
    {
      amber::DiskImageBlockDevice::open(v10);
    }

    v13 = *__error();
    v15 = this;
    v11 = "opening disk image: %s";
    v12 = 275;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "create", v12, v13, v11, v9, v15);
  return 0;
}

void amber::DiskImageBlockDevice::~DiskImageBlockDevice(amber::DiskImageBlockDevice *this)
{
  *this = &unk_2A1DE1DA0;
  amber::SyncBlockDevice::terminateThreads(this);
  if (*(this + 63))
  {
    if ((*(this + 476) & 1) == 0 && (amber::DiskImageBlockDevice::flushIORing(this, 3) & 0x80000000) != 0)
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "~DiskImageBlockDevice", 0x12F, 0, "io_rings flush failed", v8);
    }

    v9 = *(this + 63);
    if ((io_rings_suspend() & 0x80000000) != 0)
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "~DiskImageBlockDevice", 0x131, 0, "io_rings suspend failed", v10);
    }

    v11 = *(this + 63);
    if (io_rings_cancel() < 0)
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "~DiskImageBlockDevice", 0x132, 0, "io_rings cancel failed", v12);
    }

    v13 = *(this + 128);
    v14 = *(this + 63);
    io_rings_unsubscribe_dest_object();
    v15 = *(this + 63);
    io_rings_release();
  }

  v16 = *(this + 62);
  if (v16)
  {
    diskimage_uio::diskimage::~diskimage(v16);
    MEMORY[0x29C25C000]();
  }

  if (*(this + 472) == 1)
  {
    v17 = *(this + 117);
    if ((v17 & 0x80000000) == 0)
    {
      close(v17);
    }
  }

  *(this + 81) = &unk_2A1DE1AA8;
  amber::Buffer::~Buffer((this + 664), v2, v3, v4, v5, v6, v7);
  std::condition_variable::~condition_variable((this + 592));
  std::mutex::~mutex((this + 528));

  amber::SyncBlockDevice::~SyncBlockDevice(this, v18, v19, v20, v21, v22, v23);
}

{
  amber::DiskImageBlockDevice::~DiskImageBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DiskImageBlockDevice::flushIORing(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v13[0] = xmmword_296A14210;
  memset(&v13[1], 0, 48);
  v14 = 0;
  v15.__cv_.__sig = 1018212795;
  memset(v15.__cv_.__opaque, 0, sizeof(v15.__cv_.__opaque));
  amber::Sem::acquire((a1 + 520));
  v4 = *(a1 + 504);
  v5 = io_rings_sqe_allocate();
  if (!v5)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "flushIORing", 0x24F, 0, "alloc SQE", v6);
LABEL_6:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  *(v5 + 16) = &v12;
  *(v5 + 8) = *(a1 + 512);
  *v5 = 5;
  *(v5 + 24) = a2;
  v7 = *(a1 + 504);
  io_rings_enter();
  amber::Sem::acquire(v13);
  if ((v12 & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "flushIORing", 0x255, 0, "IO ring error %d", v8, v12);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:
  std::condition_variable::~condition_variable(&v15);
  std::mutex::~mutex((v13 + 8));
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2969B4894(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 80));
  std::mutex::~mutex((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t amber::DiskImageBlockDevice::getAttribute(amber::DiskImageBlockDevice *this, amber::BaseObject *a2, unint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v28 = a2;
    v29 = a3;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp";
    v20 = "getAttribute";
    v21 = "invalid attribute encoding %u, %u";
    v22 = 345;
LABEL_10:
    amber::log(2, v19, v20, v22, 0, v21, v16, v28, v29);
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 202)
  {
    if (a2 == 201)
    {
      v27 = *(this + 60);
      v30 = v27;
      v31 = &off_2A1DDFDA8;
      v32 = &v30;
      v33 = 8;
      v34 = &off_2A1DDFC68;
      v35 = &v30;
      v36 = 8;
      *a5 = 8;
      v25 = *(a4 + 2);
      if (v25)
      {
        if (v25 > 7)
        {
          result = 0;
          **(a4 + 1) = v27;
          return result;
        }

        v26 = 8;
        goto LABEL_27;
      }

      return 0;
    }

    if (a2 == 202)
    {
      v18 = *(this + 119);
      goto LABEL_21;
    }
  }

  else
  {
    switch(a2)
    {
      case 0xCB:
        if (*(this + 640) != 1)
        {
          return 0xFFFFFFFFLL;
        }

        LODWORD(v30) = *(this + 122);
        v31 = &off_2A1DDFDA8;
        v32 = &v30;
        v33 = 4;
        v34 = &off_2A1DDFC68;
        v35 = &v30;
        v36 = 4;
        *a5 = 4;
        v24 = *(a4 + 2);
        if (v24)
        {
          if (v24 > 3)
          {
            return amber::copy(a4, &v34, v12, v13, v14, v15, v16);
          }

          v28 = 4;
          v29 = *(a4 + 2);
          goto LABEL_28;
        }

        return 0;
      case 0xCC:
        v18 = *(this + 122);
        goto LABEL_21;
      case 0xCD:
        v17 = *(this + 122);
        do
        {
          v18 = v17;
          v17 *= 2;
        }

        while (v18 < 0x40000);
LABEL_21:
        LODWORD(v30) = v18;
        v31 = &off_2A1DDFDA8;
        v32 = &v30;
        v33 = 4;
        v34 = &off_2A1DDFC68;
        v35 = &v30;
        v36 = 4;
        *a5 = 4;
        v25 = *(a4 + 2);
        if (v25)
        {
          if (v25 > 3)
          {
            result = 0;
            **(a4 + 1) = v18;
            return result;
          }

          v26 = 4;
LABEL_27:
          v28 = v26;
          v29 = v25;
LABEL_28:
          v19 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp";
          v20 = "loadAttribute";
          v21 = "insufficient capacity, expected: %zu, actual: %zu";
          v22 = 19;
          goto LABEL_10;
        }

        return 0;
    }
  }

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v15, v16);
}

uint64_t amber::DiskImageBlockDevice::getBlockState(amber::DiskImageBlockDevice *this, unint64_t a2, unint64_t a3, const amber::MutableMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 640))
  {
    v9 = this + 648;

    return amber::NBitVector<2u>::getValues(v9, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "getBlockState", 0x176, 0, "no block state", a7, v7, v8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::DiskImageBlockDevice::setBlockState(amber::DiskImageBlockDevice *this, unint64_t a2, unint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 640))
  {
    v9 = this + 648;

    return amber::NBitVector<2u>::setValues(v9, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "setBlockState", 0x180, 0, "no block state", a7, v7, v8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::DiskImageBlockDevice::setBlockState(amber::DiskImageBlockDevice *this, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 640))
  {
    v9 = this + 648;

    return amber::NBitVector<2u>::setValues(v9, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "setBlockState", 0x18A, 0, "no block state", a7, v7, v8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::DiskImageBlockDevice::executeRead(amber::DiskImageBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 8);
  v6 = *(a3 + 6);
  v7 = *(a3 + 14);
  v8 = *(this + 122);
  v31[0] = xmmword_296A14210;
  memset(&v31[1], 0, 48);
  v32 = 0;
  v33.__cv_.__sig = 1018212795;
  memset(v33.__cv_.__opaque, 0, sizeof(v33.__cv_.__opaque));
  amber::BlockDeviceEvent::BlockDeviceEvent(v29, 23, a3);
  if (__CFADD__(v6, v7) || v6 + v7 > *(this + 60))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeRead", 0x1A0, 0, "invalid request range offset: %llu length: %u", v9, v6, v7);
    v10 = 0;
    v11 = -2147483626;
    goto LABEL_14;
  }

  amber::BlockDeviceEvent::sendBegin(v29);
  amber::Sem::acquire((this + 520));
  v12 = *(this + 63);
  v13 = io_rings_sqe_allocate();
  if (!v13)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeRead", 0x1A8, 0, "alloc SQE", v14);
LABEL_13:
    v10 = 0;
    v11 = -2147483643;
    goto LABEL_14;
  }

  *(v13 + 8) = *(this + 128);
  *v13 = 1;
  *(v13 + 16) = &v30;
  *(v13 + 24) = v5;
  *(v13 + 32) = v6 / v8;
  *(v13 + 40) = 0;
  v15 = v7 / v8;
  *(v13 + 48) = v15;
  v16 = *(this + 63);
  io_rings_enter();
  amber::Sem::acquire(v31);
  if ((v30 & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeRead", 0x1AE, 0, "IO ring error %d", v17, v30);
    goto LABEL_13;
  }

  if (v30 != v15)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeRead", 0x1AF, 0, "IO ring truncated read %d", v17, v30);
    goto LABEL_13;
  }

  amber::BlockDeviceEvent::sendEnd(v29);
  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v18, v19, v20, v21) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeRead", 0x1B9, 0, "reply data", v22);
  }

  v11 = 0x80000000;
  v10 = 1;
LABEL_14:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v29);
  std::condition_variable::~condition_variable(&v33);
  std::mutex::~mutex((v31 + 8));
  if ((v10 & 1) == 0)
  {
    amber::BlockDeviceRequest::sendReply(a3, v11, 0, v23, v24, v25, v26);
  }

  v27 = *MEMORY[0x29EDCA608];
  return (v10 - 1);
}

void sub_2969B4F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  std::condition_variable::~condition_variable((v4 + 80));
  std::mutex::~mutex((v4 + 16));
  _Unwind_Resume(a1);
}

uint64_t amber::DiskImageBlockDevice::executeWrite(amber::DiskImageBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 8);
  v6 = *(a3 + 6);
  v7 = *(a3 + 14);
  v8 = *(this + 122);
  v30[0] = xmmword_296A14210;
  memset(&v30[1], 0, 48);
  v31 = 0;
  v32.__cv_.__sig = 1018212795;
  memset(v32.__cv_.__opaque, 0, sizeof(v32.__cv_.__opaque));
  amber::BlockDeviceEvent::BlockDeviceEvent(v28, 24, a3);
  if (*(this + 476))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeWrite", 0x1DA, 0, "WRITE on read-only device", v11);
    v12 = -2147483647;
  }

  else
  {
    if (!__CFADD__(v6, v7) && v6 + v7 <= *(this + 60))
    {
      v20 = v7 / v8;
      v21 = v6 / v8;
      if (*(this + 640) == 1 && (amber::NBitVector<2u>::setValues(this + 648, v21, v21 + v20, 2u, v9, v10, v11) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeWrite", 0x1E8, 0, "set block state", v22);
      }

      else
      {
        amber::BlockDeviceEvent::sendBegin(v28);
        amber::Sem::acquire((this + 520));
        v23 = *(this + 63);
        v24 = io_rings_sqe_allocate();
        if (v24)
        {
          *(v24 + 8) = *(this + 128);
          *v24 = 3;
          *(v24 + 16) = &v29;
          *(v24 + 24) = v5;
          *(v24 + 32) = v21;
          *(v24 + 40) = 0;
          *(v24 + 48) = v20;
          v26 = *(this + 63);
          io_rings_enter();
          amber::Sem::acquire(v30);
          if ((v29 & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeWrite", 0x1F4, 0, "IO ring error %d", v27, v29);
          }

          else
          {
            if (v29 == v20)
            {
              amber::BlockDeviceEvent::sendEnd(v28);
              v13 = 0;
              v12 = 1;
              goto LABEL_7;
            }

            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeWrite", 0x1F5, 0, "IO ring truncated write %d", v27, v29);
          }
        }

        else
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeWrite", 0x1EE, 0, "alloc SQE", v25);
        }
      }

      v13 = 0xFFFFFFFFLL;
      v12 = -2147483643;
      goto LABEL_7;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeWrite", 0x1DD, 0, "invalid request range offset: %llu length: %u", v11, v6, v7);
    v12 = -2147483626;
  }

  v13 = 0xFFFFFFFFLL;
LABEL_7:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v28);
  std::condition_variable::~condition_variable(&v32);
  std::mutex::~mutex((v30 + 8));
  amber::BlockDeviceRequest::sendReply(a3, v12, 0, v14, v15, v16, v17);
  v18 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_2969B5284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  std::condition_variable::~condition_variable((v4 + 80));
  std::mutex::~mutex((v4 + 16));
  _Unwind_Resume(a1);
}

uint64_t amber::DiskImageBlockDevice::executeTrim(amber::DiskImageBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 6);
  v6 = *(a3 + 14);
  v7 = *(this + 122);
  v29[0] = xmmword_296A14210;
  memset(&v29[1], 0, 48);
  v30 = 0;
  v31.__cv_.__sig = 1018212795;
  memset(v31.__cv_.__opaque, 0, sizeof(v31.__cv_.__opaque));
  amber::BlockDeviceEvent::BlockDeviceEvent(v27, 25, a3);
  if (*(this + 476))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeTrim", 0x216, 0, "TRIM on read-only device", v10);
    v11 = -2147483647;
  }

  else
  {
    if (!__CFADD__(v5, v6) && v5 + v6 <= *(this + 60))
    {
      v19 = v6 / v7;
      v20 = v5 / v7;
      if (*(this + 640) == 1 && (amber::NBitVector<2u>::setValues(this + 648, v20, v20 + v19, 3u, v8, v9, v10) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeTrim", 0x224, 0, "set block state", v21);
      }

      else
      {
        amber::BlockDeviceEvent::sendBegin(v27);
        amber::Sem::acquire((this + 520));
        v22 = *(this + 63);
        v23 = io_rings_sqe_allocate();
        if (v23)
        {
          *(v23 + 8) = *(this + 128);
          *v23 = 6;
          *(v23 + 16) = &v28;
          *(v23 + 24) = v20;
          *(v23 + 32) = v19;
          v25 = *(this + 63);
          io_rings_enter();
          amber::Sem::acquire(v29);
          if ((v28 & 0x80000000) == 0)
          {
            amber::BlockDeviceEvent::sendEnd(v27);
            v12 = 0;
            v11 = 1;
            goto LABEL_7;
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeTrim", 0x230, 0, "IO ring error %d", v26, v28);
        }

        else
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeTrim", 0x22A, 0, "alloc SQE", v24);
        }
      }

      v12 = 0xFFFFFFFFLL;
      v11 = -2147483643;
      goto LABEL_7;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeTrim", 0x219, 0, "invalid request range offset: %llu length: %u", v10, v5, v6);
    v11 = -2147483626;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_7:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v27);
  std::condition_variable::~condition_variable(&v31);
  std::mutex::~mutex((v29 + 8));
  amber::BlockDeviceRequest::sendReply(a3, v11, 0, v13, v14, v15, v16);
  v17 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_2969B555C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  std::condition_variable::~condition_variable((v4 + 80));
  std::mutex::~mutex((v4 + 16));
  _Unwind_Resume(a1);
}

uint64_t amber::DiskImageBlockDevice::executeFlush(amber::DiskImageBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v8 = amber::DiskImageBlockDevice::flushIORing(this, 2);
  if ((v8 & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DiskImageBlockDevice.cpp", "executeFlush", 0x241, 0, "io_rings flush", v7);
    v9 = -2147483643;
  }

  else
  {
    v9 = 1;
  }

  amber::BlockDeviceRequest::sendReply(a3, v9, 0, v4, v5, v6, v7);
  return v8;
}

void AmberDiskImageBlockDeviceOpenWithFD(amber::DiskImageBlockDevice *this, int a2)
{
  if (!a2)
  {
    amber::defaultThreadCount(this);
  }

  amber::DiskImageBlockDevice::open(this);
}

void sub_2969B5660(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969B5654);
}

uint64_t AmberDiskImageBlockDeviceCreateWithPath(amber::DiskImageBlockDevice *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!a3)
  {
    a3 = amber::defaultThreadCount(this);
  }

  return amber::DiskImageBlockDevice::create(this, a2, a3, a4, a5, a6, a7);
}

void sub_2969B56BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969B56ACLL);
}

void sub_2969B5B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::~Buffer(v8, a2, a3, a4, a5, a6, a7);
  amber::SyncBlockDevice::~SyncBlockDevice(v7, v10, v11, v12, v13, v14, v15);
  _Unwind_Resume(a1);
}

void amber::FileBlockDevice::~FileBlockDevice(amber::FileBlockDevice *this)
{
  *this = &unk_2A1DE1EA8;
  amber::SyncBlockDevice::terminateThreads(this);
  if (*(this + 472) == 1)
  {
    v8 = *(this + 117);
    if ((v8 & 0x80000000) == 0 && fcntl(v8, 51, 0) < 0)
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "~FileBlockDevice", 0xC7, 0, "FULLSYNC reported an error (ignored)", v7);
    }
  }

  amber::Buffer::~Buffer((this + 512), v2, v3, v4, v5, v6, v7);

  amber::SyncBlockDevice::~SyncBlockDevice(this, v9, v10, v11, v12, v13, v14);
}

{
  amber::FileBlockDevice::~FileBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::FileBlockDevice::getAttribute(amber::FileBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "getAttribute", 0xE4, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 203)
  {
    if (a2 == 204)
    {
      v14 = *(this + 126);
    }

    else
    {
      if (a2 != 205)
      {
        goto LABEL_14;
      }

      v16 = *(this + 126);
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
    v14 = *(this + 119);
    goto LABEL_21;
  }

LABEL_14:

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::FileBlockDevice::executeRead(amber::FileBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 6);
  v7 = *(a3 + 14);
  v8 = v7;
  amber::BlockDeviceEvent::BlockDeviceEvent(v27, 21, a3);
  if (__CFADD__(v6, v7) || (v6 + v7) > *(this + 60))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeRead", 0x102, 0, "invalid request range offset: %llu length: %u", v9, v6, v7);
    v14 = -2147483626;
LABEL_4:
    amber::BlockDeviceRequest::sendReply(a3, v14, 0, v10, v11, v12, v13);
    v15 = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  amber::BlockDeviceEvent::sendBegin(v27);
  if (v7)
  {
    v21 = 0;
    while (1)
    {
      v22 = v8 - v21 >= 0x400000 ? 0x400000 : v8 - v21;
      v23 = pread(*(this + 117), (v5 + v21), v22, v6 + v21);
      if (v23 <= 0)
      {
        break;
      }

      v21 += v23;
      if (v21 >= v8)
      {
        goto LABEL_13;
      }
    }

    v25 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeRead", 0x10C, *v25, "disk read", v26);
    v14 = -2147483643;
    goto LABEL_4;
  }

LABEL_13:
  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v17, v18, v19, v20) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeRead", 0x10F, 0, "reply data", v24);
  }

  amber::BlockDeviceEvent::sendEnd(v27);
  v15 = 0;
LABEL_5:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v27);
  return v15;
}

void sub_2969B6078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t amber::FileBlockDevice::executeWrite(amber::FileBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v5 = *(a3 + 6);
  v6 = *(a3 + 14);
  v7 = *(a3 + 8);
  amber::BlockDeviceEvent::BlockDeviceEvent(v21, 22, a3);
  if (*(this + 476))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeWrite", 0x126, 0, "WRITE on read-only device", v8);
    v13 = -2147483647;
    goto LABEL_6;
  }

  if (__CFADD__(v5, v6) || (v5 + v6) > *(this + 60))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeWrite", 0x129, 0, "invalid request range offset: %llu length: %u", v8, v5, v6);
    v13 = -2147483626;
LABEL_6:
    v14 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  amber::BlockDeviceEvent::sendBegin(v21);
  if (v6)
  {
    v16 = 0;
    while (1)
    {
      v17 = pwrite(*(this + 117), (v7 + v16), v6 - v16, v5 + v16);
      if (v17 <= 0)
      {
        break;
      }

      v16 += v17;
      if (v16 >= v6)
      {
        goto LABEL_12;
      }
    }

    v19 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeWrite", 0x13E, *v19, "disk write %u", v20, v6 - v16);
    v13 = -2147483643;
    goto LABEL_6;
  }

LABEL_12:
  if ((*(a3 + 24) & 1) != 0 && (amber::FileBlockDevice::synchronizeSegment(this, v5, v6) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeWrite", 0x144, 0, "sync", v18);
    v14 = 0xFFFFFFFFLL;
    v13 = -2147483643;
  }

  else
  {
    amber::BlockDeviceEvent::sendEnd(v21);
    v14 = 0;
    v13 = 1;
  }

LABEL_7:
  amber::BlockDeviceRequest::sendReply(a3, v13, 0, v9, v10, v11, v12);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v21);
  return v14;
}

void sub_2969B6278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t amber::FileBlockDevice::synchronizeSegment(amber::FileBlockDevice *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 472) == 1)
  {
    if ((fsync(*(this + 117)) & 0x80000000) == 0)
    {
      return 0;
    }

    v8 = *__error();
    v10 = "fsync";
    v11 = 419;
  }

  else
  {
    amber::zero(void *,unsigned long)::memset_func(v12, 0, 24);
    v12[0] = a2;
    v12[1] = a3;
    v7 = ioctl(*(this + 117), 0x80186416uLL, v12);
    result = 0;
    if ((v7 & 0x80000000) == 0)
    {
      return result;
    }

    v8 = *__error();
    v10 = "DKIOCSYNCHRONIZE";
    v11 = 430;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "synchronizeSegment", v11, v8, v10, v9);
  return 0xFFFFFFFFLL;
}

uint64_t amber::FileBlockDevice::executeWriteZeroes(amber::FileBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v5 = *(a3 + 6);
  v6 = *(a3 + 14);
  amber::BlockDeviceEvent::BlockDeviceEvent(v21, 22, a3);
  if (*(this + 476))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeWriteZeroes", 0x155, 0, "WRITE on read-only device", v7);
    v12 = -2147483647;
  }

  else
  {
    if (!__CFADD__(v5, v6) && v5 + v6 <= *(this + 60))
    {
      amber::BlockDeviceEvent::sendBegin(v21);
      if ((amber::FileBlockDevice::zeroSegment(this, v5, v6, v15, v16, v17, v18) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeWriteZeroes", 0x15C, 0, "zero segment", v19);
      }

      else
      {
        if ((*(a3 + 24) & 1) == 0 || (amber::FileBlockDevice::synchronizeSegment(this, v5, v6) & 0x80000000) == 0)
        {
          amber::BlockDeviceEvent::sendEnd(v21);
          v13 = 0;
          v12 = 1;
          goto LABEL_7;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeWriteZeroes", 0x160, 0, "sync", v20);
      }

      v13 = 0xFFFFFFFFLL;
      v12 = -2147483643;
      goto LABEL_7;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeWriteZeroes", 0x158, 0, "invalid request range offset: %llu length: %u", v7, v5, v6);
    v12 = -2147483626;
  }

  v13 = 0xFFFFFFFFLL;
LABEL_7:
  amber::BlockDeviceRequest::sendReply(a3, v12, 0, v8, v9, v10, v11);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v21);
  return v13;
}

void sub_2969B652C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t amber::FileBlockDevice::zeroSegment(amber::FileBlockDevice *this, unint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v26 = a2;
  v8 = a3 + a2;
  v9 = *(this + 62);
  if (!v9)
  {
    while (1)
    {
      v20 = v8 - v26;
      if (v8 <= v26)
      {
        return 0;
      }

      v14 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 512, a2, a3, a4, a5, a6, a7);
      if (v14 >= v20)
      {
        v19 = v20;
      }

      else
      {
        v19 = v14;
      }

      if ((amber::FileBlockDevice::writeZeroes(this, &v26, v19, v15, v16, v17, v18) & 0x80000000) != 0)
      {
        v12 = "Write 0";
        v13 = 488;
        goto LABEL_25;
      }
    }
  }

  if (a2 % v9)
  {
    v10 = v9 + a2 - a2 % v9;
  }

  else
  {
    v10 = a2;
  }

  if (v10 > a2)
  {
    if (v10 - a2 < a3)
    {
      a3 = v10 - a2;
    }

    if ((amber::FileBlockDevice::writeZeroes(this, &v26, a3, a4, a5, a6, a7) & 0x80000000) != 0)
    {
      v12 = "Write 0";
      v13 = 506;
      goto LABEL_25;
    }

    a2 = v26;
  }

  if (a2 == v8)
  {
    return 0;
  }

  v11 = v8 / v9 * v9;
  if (v11 > v10)
  {
    amber::zero(void *,unsigned long)::memset_func(v23, 0, 24);
    v24 = v10;
    v25 = v11 - v10;
    if (fcntl(*(this + 117), 99, v23) < 0)
    {
      v22 = *__error();
      v12 = "punchhole";
      v13 = 518;
      goto LABEL_26;
    }

    v26 = v11;
    a2 = v11;
  }

  if (v8 <= a2 || (amber::FileBlockDevice::writeZeroes(this, &v26, v8 - a2, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    return 0;
  }

  v12 = "Write 0";
  v13 = 529;
LABEL_25:
  v22 = 0;
LABEL_26:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "zeroSegment", v13, v22, v12, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::FileBlockDevice::executeTrim(amber::FileBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 476))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeTrim", 0x174, 0, "TRIM on read-only device", a7);
    v14 = -2147483647;
  }

  else
  {
    v8 = *(a3 + 6);
    v9 = *(a3 + 14);
    if (__CFADD__(v8, v9) || v8 + v9 > *(this + 60))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeTrim", 0x177, 0, "invalid request range offset: %llu length: %u", a7, *(a3 + 6), v9);
      v14 = -2147483626;
    }

    else
    {
      if ((amber::FileBlockDevice::trimSegment(this, v8, v9, a4, a5, a6, a7) & 0x80000000) == 0)
      {
        v15 = 0;
        v14 = 1;
        goto LABEL_7;
      }

      v14 = -2147483643;
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeTrim", 0x17A, 0, "trim", v13);
    }
  }

  v15 = 0xFFFFFFFFLL;
LABEL_7:
  amber::BlockDeviceRequest::sendReply(a3, v14, 0, v10, v11, v12, v13);
  return v15;
}

uint64_t amber::FileBlockDevice::trimSegment(amber::FileBlockDevice *this, unint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 472) == 1)
  {

    return amber::FileBlockDevice::zeroSegment(this, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    amber::zero(void *,unsigned long)::memset_func(v16, 0, 16);
    v16[0] = a2;
    v16[1] = a3;
    amber::zero(void *,unsigned long)::memset_func(&v14, 0, 16);
    v15 = 1;
    v14 = v16;
    v11 = ioctl(*(this + 117), 0x8010641FuLL, &v14);
    result = 0;
    if (v11 < 0)
    {
      v12 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "trimSegment", 0x1C6, *v12, "DKIOCUNMAP", v13);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t amber::FileBlockDevice::executeFlush(amber::FileBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v8 = amber::FileBlockDevice::synchronizeSegment(this, 0, *(this + 60));
  if ((v8 & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeFlush", 0x187, 0, "sync", v7);
    v9 = -2147483643;
  }

  else
  {
    v9 = 1;
  }

  amber::BlockDeviceRequest::sendReply(a3, v9, 0, v4, v5, v6, v7);
  return v8;
}

uint64_t amber::FileBlockDevice::executeResize(amber::FileBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((*(this + 476) & 0x40) != 0)
  {
    v15 = *(a3 + 6);
    if (ftruncate(*(this + 117), v15) < 0)
    {
      v17 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeResize", 0x195, *v17, "ftruncate", v18);
      v19 = *__error();
      if (v19)
      {
        v12 = v19 | 0x80000000;
        goto LABEL_3;
      }
    }

    else
    {
      *(this + 60) = v15;
    }

    v13 = 0;
    v12 = 1;
    goto LABEL_7;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "executeResize", 0x194, 0, "RESIZE not supported", a7);
  v12 = -2147483603;
LABEL_3:
  v13 = 0xFFFFFFFFLL;
LABEL_7:
  amber::BlockDeviceRequest::sendReply(a3, v12, 0, v8, v9, v10, v11);
  return v13;
}

uint64_t amber::FileBlockDevice::writeZeroes(amber::FileBlockDevice *this, off_t *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!a3)
  {
    return 0;
  }

  v9 = *(this + 117);
  v10 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(this + 512, a2, a3, a4, a5, a6, a7);
  v11 = pwrite(v9, v10, a3, *a2);
  if (v11 <= 0)
  {
    v13 = v11;
    v14 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileBlockDevice.cpp", "writeZeroes", 0x1D6, *v14, "disk write: %zu", v15, v13);
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a2 += a3;
  }

  return result;
}

void sub_2969B6BC4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969B6BB0);
}

double amber::MagicStream::MagicStream(amber::MagicStream *this, amber::Stream *a2)
{
  *this = &unk_2A1DE1FB0;
  *(this + 2) = 0;
  *(this + 2) = a2;
  *(this + 3) = &unk_2A1DDFD28;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = off_2A1DDFD48;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &off_2A1DDFDA8;
  *(this + 10) = &off_2A1DDFC68;
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 60) = 1;
  *(this + 122) = 0;
  return result;
}

void amber::MagicStream::~MagicStream(atomic_uint *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  *this = &unk_2A1DE1FB0;
  atomic_compare_exchange_strong(this + 2, &v7, 1u);
  amber::Buffer::~Buffer((this + 6), a2, a3, a4, a5, a6, a7);
}

{
  v7 = 0;
  *this = &unk_2A1DE1FB0;
  atomic_compare_exchange_strong(this + 2, &v7, 1u);
  amber::Buffer::~Buffer((this + 6), a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::MagicStream::close(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  return 0;
}

unint64_t amber::MagicStream::read(amber::MagicStream *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 2))
  {
    return -1;
  }

  v11 = amber::BufferProtocol<amber::Buffer>::readAndConsume(this + 3, a2, a3, a4, a5, a6, a7);
  if ((v11 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v13 = v11;
  v14 = *(this + 2);
  amber::MutableMemoryView::operator+(a2, v11, v12, v16);
  v15 = (*(*v14 + 40))(v14, v16);
  if (v15 < 0)
  {
    return -1;
  }

  else
  {
    return v15 + v13;
  }
}

uint64_t amber::MagicStream::peek(amber::MagicStream *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!atomic_load(this + 2))
  {
    v10 = *(a2 + 2);
    while (1)
    {
      if (v10 <= amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 24, a2, a3, a4, a5, a6, a7))
      {
        return amber::BufferProtocol<amber::Buffer>::read(this + 24, a2, a3, a4, a5, a6, a7);
      }

      v12 = *(this + 2);
      v13 = v10 - amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 24, v11, a3, a4, a5, a6, a7);
      if ((amber::Buffer::reserveEndCapacity((this + 24), v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
      {
        break;
      }

      amber::BufferProtocol<amber::Buffer>::endView(this + 24, v13, a7, v26);
      v19 = (*(*v12 + 40))(v12, v26);
      if (v19 < 0)
      {
        break;
      }

      v24 = v19;
      if ((amber::Buffer::grow((this + 24), v19, v20, v21, v22, v23, a7) & 0x80000000) != 0)
      {
        break;
      }

      if (!v24)
      {
        return amber::BufferProtocol<amber::Buffer>::read(this + 24, a2, a3, a4, a5, a6, a7);
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Streams/./Stream.hpp", "readToBufferEnd", 0x59, 0, "readToBufferEnd", a7);
  }

  return -1;
}

void *amber::BufferProtocol<amber::Buffer>::read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(a2 + 16);
  v10 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a1, a2, a3, a4, a5, a6, a7);
  if (v10 < v9)
  {
    v9 = v10;
  }

  amber::Buffer::constBuf(a1, v11, v18);
  amber::ConstMemoryView::view(v18, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v12, v17);
  if (v17[2] < v9 || *(a2 + 16) < v9)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v13);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(*(a2 + 8), v17[1], v9);
  return v9;
}

void amber::BufferStream::~BufferStream(atomic_uint *this)
{
  amber::BufferStream::~BufferStream(this);

  JUMPOUT(0x29C25C000);
}

{
  v2 = 0;
  *this = &unk_2A1DE2050;
  atomic_compare_exchange_strong(this + 8, &v2, 1u);
  if (!v2 && *(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 1) = 0;
  }
}

uint64_t amber::BufferStream::close(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 8, &v1, 1u);
  if (!v1 && *(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 1) = 0;
  }

  return 0;
}

uint64_t amber::BufferStream::read(amber::BufferStream *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 8))
  {
    return -1;
  }

  add_explicit = atomic_fetch_add_explicit(this + 3, *(a2 + 2), memory_order_relaxed);
  if (add_explicit > amber::ConstMemoryViewConvertible<amber::Buffer>::size(*(this + 1), a2, a3, a4, a5, a6, a7))
  {
    return 0;
  }

  v8 = amber::BufferProtocol<amber::Buffer>::pread(*(this + 1), a2, add_explicit, v12, v13, v14, v15);
  if (v8 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/BufferStream.cpp", "read", 0x1E, 0, "buffer load", v16);
  }

  return v8;
}

uint64_t amber::BufferStream::pread(amber::BufferStream *this, const amber::MutableMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = atomic_load(this + 8);
  v8 = -1;
  if ((a3 & 0x8000000000000000) == 0 && !v7)
  {
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(*(this + 1), a2, a3, a4, a5, a6, a7) >= a3)
    {
      v8 = amber::BufferProtocol<amber::Buffer>::pread(*(this + 1), a2, a3, v12, v13, v14, v15);
      if (v8 < 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/BufferStream.cpp", "pread", 0x29, 0, "buffer load", v16);
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t amber::BufferStream::write(amber::BufferStream *this, const amber::ConstMemoryView *a2)
{
  if (atomic_load(this + 8))
  {
    return -1;
  }

  atomic_fetch_add_explicit(this + 3, *(a2 + 2), memory_order_relaxed);
  return (*(*this + 64))();
}

uint64_t amber::BufferStream::pwrite(amber::BufferStream *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = atomic_load(this + 8);
  v8 = -1;
  if (a3 < 0 || v7)
  {
    return v8;
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "operator const unsigned char *", 0xE3, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_27:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v10 = a3;
  v8 = 0;
  v12 = *(a2 + 1);
  while (1)
  {
    v13 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(*(this + 1), a2, a3, a4, a5, a6, a7);
    v18 = (v10 - v13);
    if (v10 == v13)
    {
      break;
    }

    if (v10 >= v13)
    {
      if ((amber::BufferProtocol<amber::Buffer>::appendValue(*(this + 1), 0, v18, v14, v15, v16, v17) & 0x80000000) != 0)
      {
        v22 = "buffer append zero";
        v23 = 91;
        goto LABEL_24;
      }
    }

    else
    {
      if (v9 >= v13 - v10)
      {
        v19 = v13 - v10;
      }

      else
      {
        v19 = v9;
      }

      v20 = *(this + 1);
      v26 = &off_2A1DDFC68;
      v27 = v12;
      v28 = v19;
      if ((v19 & 0x8000000000000000) != 0 || !v12)
      {
        goto LABEL_26;
      }

      if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(v20, &v26, v10, v14, v15, v16, v17) & 0x80000000) != 0)
      {
        v22 = "buffer store";
        v23 = 81;
        goto LABEL_24;
      }

      v8 += v19;
      v10 += v19;
      v12 += v19;
      v9 -= v19;
    }

    if (!v9)
    {
      return v8;
    }
  }

  v21 = *(this + 1);
  v26 = &off_2A1DDFC68;
  v27 = v12;
  v28 = v9;
  if ((v9 & 0x8000000000000000) != 0 || !v12)
  {
LABEL_26:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v17);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_27;
  }

  if ((amber::BufferProtocol<amber::Buffer>::append(v21, &v26, v18, v14, v15, v16, v17) & 0x80000000) != 0)
  {
    v22 = "buffer append";
    v23 = 73;
LABEL_24:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/BufferStream.cpp", "pwrite", v23, 0, v22, a7);
    return -1;
  }

  else
  {
    v8 += v9;
  }

  return v8;
}

uint64_t amber::BufferStream::seek(amber::BufferStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 8))
  {
    return -1;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      v10 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(*(this + 1), a2, a3, a4, a5, a6, a7);
    }

    else
    {
      if (a3 != 1)
      {
        return -1;
      }

      v10 = atomic_load(this + 3);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = __OFADD__(a2, v10);
  v12 = a2 + v10;
  if (!v11 && (v12 & 0x8000000000000000) == 0 && v12 <= amber::ConstMemoryViewConvertible<amber::Buffer>::size(*(this + 1), a2, a3, a4, a5, a6, a7))
  {
    atomic_store(v12, this + 3);
    return v12;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/BufferStream.cpp", "seek", 0x70, 0, "invalid seek pos", a7);
  return -1;
}

uint64_t amber::BufferStream::truncate(amber::BufferStream *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 8))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return amber::Buffer::resize(*(this + 1), a2, a3, a4, a5, a6, a7);
  }
}

uint64_t amber::BufferStream::size(amber::BufferStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 8))
  {
    return -1;
  }

  else
  {
    return amber::ConstMemoryViewConvertible<amber::Buffer>::size(*(this + 1), a2, a3, a4, a5, a6, a7);
  }
}

uint64_t amber::BufferProtocol<amber::Buffer>::pread(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(a1, a2, a3, a4, a5, a6, a7) < a3)
  {
    return -1;
  }

  v17 = *(a2 + 16);
  v18 = __CFADD__(a3, v17);
  v19 = a3 + v17;
  if (v18)
  {
    v20 = -1;
  }

  else
  {
    v20 = v19;
  }

  v21 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a1, v10, v11, v12, v13, v14, v15);
  if (v21 >= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v16 = v23 - a3;
  amber::ConstMemoryViewConvertible<amber::Buffer>::view(a1, a3, v23 - a3, v22, v27);
  if (__n > *(a2 + 16))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v24);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(*(a2 + 8), v27[1], __n);
  return v16;
}

void amber::BufferStream::BufferStream(amber::BufferStream *this)
{
  *this = &unk_2A1DE2050;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  operator new();
}

void AmberMemoryInputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((a2 & 0x8000000000000000) == 0 && (a1 || !a2))
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x29C25BE90](exception, "memory invalid args");
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void amber::MemoryInputStream::~MemoryInputStream(atomic_uint *this)
{
  v1 = 0;
  *this = &unk_2A1DE20F0;
  atomic_compare_exchange_strong(this + 10, &v1, 1u);
}

{
  v1 = 0;
  *this = &unk_2A1DE20F0;
  atomic_compare_exchange_strong(this + 10, &v1, 1u);
  JUMPOUT(0x29C25C000);
}

uint64_t amber::MemoryInputStream::close(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 10, &v1, 1u);
  return 0;
}

uint64_t amber::MemoryInputStream::read(amber::MemoryInputStream *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 10))
  {
    return -1;
  }

  v10 = *(a2 + 2);
  add_explicit = atomic_fetch_add_explicit(this + 4, v10, memory_order_relaxed);
  v12 = *(this + 3);
  if (add_explicit >= v12)
  {
    return 0;
  }

  v13 = add_explicit + v10;
  if (v13 >= v12)
  {
    v13 = *(this + 3);
  }

  v8 = (v13 - add_explicit);
  amber::ConstMemoryView::operator+(this + 8, add_explicit, a7, v18);
  if (v18[2] < v8 || *(a2 + 2) < v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v14);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(*(a2 + 1), v18[1], v8);
  return v8;
}

size_t amber::MemoryInputStream::pread(amber::MemoryInputStream *this, const amber::MutableMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = atomic_load(this + 10);
  v8 = -1;
  if ((a3 & 0x8000000000000000) == 0 && !v7)
  {
    v10 = *(a2 + 2);
    v14 = __CFADD__(a3, v10);
    v11 = a3 + v10;
    if (!v14)
    {
      v12 = *(this + 3);
      if (v12 <= a3)
      {
        return 0;
      }

      else
      {
        if (v11 >= v12)
        {
          v11 = *(this + 3);
        }

        v8 = v11 - a3;
        amber::ConstMemoryView::operator+(this + 8, a3, a7, v17);
        v14 = v17[2] >= v8 && *(a2 + 2) >= v8;
        if (!v14)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v13);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid range");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        memcpy(*(a2 + 1), v17[1], v8);
      }
    }
  }

  return v8;
}

uint64_t amber::MemoryInputStream::seek(amber::MemoryInputStream *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 10))
  {
    return -1;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      v11 = *(this + 3);
    }

    else
    {
      if (a3 != 1)
      {
        return -1;
      }

      v11 = atomic_load(this + 4);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = __OFADD__(a2, v11);
  v10 = a2 + v11;
  if (v12 || v10 < 0 || v10 > *(this + 3))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/MemoryStream.cpp", "seek", 0x38, 0, "invalid seek pos", a7, v7, v8);
    return -1;
  }

  else
  {
    atomic_store(v10, this + 4);
  }

  return v10;
}

uint64_t amber::MemoryInputStream::size(amber::MemoryInputStream *this)
{
  if (atomic_load(this + 10))
  {
    return -1;
  }

  else
  {
    return *(this + 3);
  }
}

uint64_t amber::Buffer::appendRandom(amber::Buffer *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!a2)
  {
    return 0;
  }

  if (*(this + 98) == 1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Memory/Buffer.cpp", "appendRandom", 6, 0, "memory read-only", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory read-only");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if ((amber::Buffer::reserveEndCapacity(this, a2, a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    amber::BufferProtocol<amber::Buffer>::endView(this, a2, v9, v14);
    if ((amber::RNG(v14, v10) & 0x80000000) == 0)
    {
      result = 0;
      *(this + 11) += a2;
      return result;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Memory/Buffer.cpp", "appendRandom", 0xC, 0, "RNG", v11);
  }

  return 0xFFFFFFFFLL;
}

uint64_t AmberBufferDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberBufferEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::buf(a1, a7, v11);
  amber::MutableMemoryView::operator+(v11, *(a1 + 88), v8, v10);
  return v10[1];
}

uint64_t AmberBufferEndCapacity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::buf(a1, a7, v11);
  amber::MutableMemoryView::operator+(v11, *(a1 + 88), v8, v10);
  return v10[2];
}

unint64_t amber::Stream::readExpected(amber::Stream *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (!v7)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    amber::MutableMemoryView::operator+(a2, v10, a7, v12);
    result = (*(*this + 40))(this, v12);
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (!result)
    {
      return -1;
    }

    v10 += result;
    if (v10 >= v7)
    {
      return v7;
    }
  }

  return result;
}

unint64_t amber::Stream::writeExpected(amber::Stream *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (!v7)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    amber::ConstMemoryView::operator+(a2, v10, a7, v12);
    result = (*(*this + 56))(this, v12);
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (!result)
    {
      return -1;
    }

    v10 += result;
    if (v10 >= v7)
    {
      return v7;
    }
  }

  return result;
}

uint64_t AmberStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 32))(result);
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t AmberStreamRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
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

  return (*(*a1 + 40))(a1, v9);
}

uint64_t AmberStreamPRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
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

  return (*(*a1 + 48))(a1, v9, a4);
}

uint64_t AmberStreamWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFC68;
  v9[1] = a2;
  v9[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return (*(*a1 + 56))(a1, v9);
}

uint64_t AmberStreamPWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFC68;
  v9[1] = a2;
  v9[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return (*(*a1 + 64))(a1, v9, a4);
}

uint64_t AmberStreamSeek(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a3 >= 3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/Stream.cpp", "AmberStreamSeek", 0x52, 0, "invalid origin", a7, v7, v8);
    return -1;
  }

  else
  {
    v9 = *(*a1 + 72);

    return v9();
  }
}

uint64_t AmberStreamPeek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
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

  return (*(*a1 + 112))(a1, v9);
}

void amber::RandomStream::~RandomStream(atomic_uint *this)
{
  v1 = 0;
  *this = &unk_2A1DE2190;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
}

{
  v1 = 0;
  *this = &unk_2A1DE2190;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  JUMPOUT(0x29C25C000);
}

uint64_t amber::RandomStream::close(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  return 0;
}

uint64_t amber::RandomStream::read(amber::RandomStream *this, const amber::MutableMemoryView *a2)
{
  if (atomic_load(this + 2))
  {
    return -1;
  }

  amber::RNG(a2, a2);
  return *(a2 + 2);
}

uint64_t AmberFileStreamOpenWithPath(amber::FileStream *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((a2 & 3) > 1)
  {
    if ((a2 & 3) == 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

LABEL_8:
    v11 = ((a2 >> 1) & 8 | (((a2 >> 2) & 3) << 9) | v10);

    amber::FileStream::open(a1, v11);
  }

  if ((a2 & 3) != 0)
  {
    v10 = 0;
    goto LABEL_8;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/FileStream.cpp", "AmberFileStreamOpenWithPath", 0xE7, 0, "invalid flags", a7, v7, v8);
  return 0;
}

void amber::FileStream::~FileStream(amber::FileStream *this)
{
  amber::FileStream::~FileStream(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE2230;
  amber::FileStream::close(this);
}

uint64_t amber::FileStream::close(amber::FileStream *this)
{
  v2 = *(this + 2);
  if (v2 < 0)
  {
    return 0;
  }

  if (*(this + 1036) == 1)
  {
    v3 = close(v2);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 12) && *(this + 1037) == 1)
  {
    unlink(this + 12);
  }

  *(this + 2) = -1;
  return v3;
}

ssize_t amber::FileStream::read(amber::FileStream *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (!v7)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MutableMemoryView.hpp", "operator unsigned char *", 0xF1, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v8 = read(*(this + 2), *(a2 + 1), v7);
  if (v8 < 0)
  {
    v9 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/FileStream.cpp", "read", 0x2F, *v9, "read", v10);
  }

  return v8;
}

ssize_t amber::FileStream::pread(amber::FileStream *this, const amber::MutableMemoryView *a2, off_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 2);
  if (!v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MutableMemoryView.hpp", "operator unsigned char *", 0xF1, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v9 = pread(*(this + 2), *(a2 + 1), v8, a3);
  if (v9 < 0)
  {
    v10 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/FileStream.cpp", "pread", 0x35, *v10, "pread", v11);
  }

  return v9;
}

ssize_t amber::FileStream::write(amber::FileStream *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (!v7)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "operator const unsigned char *", 0xE3, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v8 = write(*(this + 2), *(a2 + 1), v7);
  if (v8 < 0)
  {
    v9 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/FileStream.cpp", "write", 0x3B, *v9, "write", v10);
  }

  return v8;
}

ssize_t amber::FileStream::pwrite(amber::FileStream *this, const amber::ConstMemoryView *a2, off_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 2);
  if (!v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "operator const unsigned char *", 0xE3, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v9 = pwrite(*(this + 2), *(a2 + 1), v8, a3);
  if (v9 < 0)
  {
    v10 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/FileStream.cpp", "pwrite", 0x41, *v10, "pwrite", v11);
  }

  return v9;
}

off_t amber::FileStream::seek(amber::FileStream *this, off_t a2, int a3)
{
  v3 = lseek(*(this + 2), a2, a3);
  if (v3 < 0)
  {
    v4 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/FileStream.cpp", "seek", 0x47, *v4, "lseek", v5);
  }

  return v3;
}

uint64_t amber::FileStream::truncate(amber::FileStream *this, off_t a2)
{
  if ((ftruncate(*(this + 2), a2) & 0x80000000) == 0)
  {
    return 0;
  }

  v3 = __error();
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/FileStream.cpp", "truncate", 0x4C, *v3, "ftruncate", v4);
  return 0xFFFFFFFFLL;
}

off_t amber::FileStream::size(amber::FileStream *this)
{
  if ((fstat(*(this + 2), &v4) & 0x80000000) == 0)
  {
    return v4.st_size;
  }

  v2 = __error();
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/FileStream.cpp", "size", 0x52, *v2, "fstat", v3);
  return -1;
}

uint64_t amber::FileStream::path(amber::FileStream *this)
{
  v2 = *(this + 12);
  result = this + 12;
  if (!v2)
  {
    return 0;
  }

  return result;
}

void amber::SharedMemoryMessaging::SharedMemoryMessaging(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *a1 = &unk_2A1DE22D0;
  a1[1] = 0;
  a1[2] = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v7 = *(a2 + 16);
  if (v7 < 0x50)
  {
    v25 = "invalid buffer size";
    v26 = 70;
  }

  else
  {
    __s2 = &off_2A1DDFDA8;
    p_s1 = &__s1;
    v31 = 80;
    v9 = *(a2 + 8);
    v38 = &off_2A1DDFC68;
    v39 = v9;
    v40 = v7;
    if ((v7 & 0x8000000000000000) != 0 || !v9)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    __s1 = *v9;
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[4];
    v44 = v9[3];
    v45 = v12;
    v43 = v11;
    v42 = v10;
    v13 = __s1;
    v14 = DWORD2(__s1);
    v15 = HIDWORD(__s1);
    v16 = v10;
    v17 = DWORD1(v10);
    AllocationSize = amber::SharedMemoryMessagingEndpoint::getAllocationSize(__s1, DWORD2(__s1), HIDWORD(__s1));
    v19 = amber::SharedMemoryMessagingEndpoint::getAllocationSize(v13, v16, v17);
    if ((AllocationSize & 0x8000000000000000) != 0 || (v19 & 0x8000000000000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessaging.cpp", "initialize", 0x22, 0, "invalid parameters", v20);
    }

    else
    {
      __s2 = v13;
      p_s1 = __PAIR64__(v15, v14);
      v31 = __PAIR64__(v17, v16);
      v33 = xmmword_296A144F0;
      v21 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
      if (v21 <= 0x4000)
      {
        v22 = 0;
      }

      else
      {
        v22 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
      }

      v34 = (v21 > 0x4000) << 14;
      v35 = v22;
      v23 = (v19 + 0x3FFF + v21) & 0xFFFFFFFFFFFFC000;
      if (v21 < v23)
      {
        v24 = (v19 + 0x3FFF + v21) & 0xFFFFFFFFFFFFC000;
      }

      else
      {
        v21 = 0;
        v24 = 0;
      }

      v36 = v21;
      v37 = v24;
      v32 = v23;
      if (!memcmp(&__s1, &__s2, 0x50uLL) && *(&v42 + 1) <= *(a2 + 16))
      {
        operator new();
      }
    }

    v25 = "parameters mismatch";
    v26 = 79;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessaging.cpp", "SharedMemoryMessaging", v26, 0, v25, a7);
  v28 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x29C25BE90](v28, "invalid parameters");
  __cxa_throw(v28, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}