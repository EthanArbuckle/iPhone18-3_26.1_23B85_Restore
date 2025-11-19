uint64_t amber::SharedMemoryMessaging::getAllocationSize(amber::SharedMemoryMessaging *this, amber::SharedMemoryFixedSizeQueue *a2, unsigned int a3, amber::SharedMemoryFixedSizeQueue *a4, unsigned int a5)
{
  AllocationSize = amber::SharedMemoryMessagingEndpoint::getAllocationSize(this, a2, a3);
  v9 = amber::SharedMemoryMessagingEndpoint::getAllocationSize(this, a4, a5);
  if ((AllocationSize & 0x8000000000000000) != 0 || (v9 & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessaging.cpp", "initialize", 0x22, 0, "invalid parameters", v10);
    v13 = "invalid parameters\n";
    v14 = 111;
  }

  else
  {
    v11 = v9 + 0x3FFF + ((AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000);
    if (v11 >= 0)
    {
      return v11 & 0x7FFFFFFFFFFFC000;
    }

    v13 = "invalid size";
    v14 = 112;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessaging.cpp", "getAllocationSize", v14, 0, v13, v10);
  return -1;
}

uint64_t amber::SharedMemoryMessaging::initialize(amber::SharedMemoryMessaging *this, const amber::MutableMemoryView *a2, amber::SharedMemoryFixedSizeQueue *a3, unsigned int a4, amber::SharedMemoryFixedSizeQueue *a5, unsigned int a6)
{
  AllocationSize = amber::SharedMemoryMessagingEndpoint::getAllocationSize(a2, a3, a4);
  v13 = amber::SharedMemoryMessagingEndpoint::getAllocationSize(a2, a5, a6);
  if ((AllocationSize & 0x8000000000000000) != 0 || (v13 & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessaging.cpp", "initialize", 0x22, 0, "invalid parameters", v14);
LABEL_15:
    v26 = "invalid parameters\n";
    v27 = 128;
    goto LABEL_16;
  }

  *&v33 = a2;
  *(&v33 + 1) = __PAIR64__(a4, a3);
  *&v34 = __PAIR64__(a6, a5);
  v35 = xmmword_296A144F0;
  v15 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
  if (v15 <= 0x4000)
  {
    v16 = 0;
  }

  else
  {
    v16 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
  }

  *&v36 = (v15 > 0x4000) << 14;
  *(&v36 + 1) = v16;
  v17 = (v13 + 0x3FFF + v15) & 0xFFFFFFFFFFFFC000;
  if (v15 < v17)
  {
    v18 = (v13 + 0x3FFF + v15) & 0xFFFFFFFFFFFFC000;
  }

  else
  {
    v15 = 0;
    v18 = 0;
  }

  *&v37 = v15;
  *(&v37 + 1) = v18;
  *(&v34 + 1) = v17;
  if (v17 > *(this + 2))
  {
    goto LABEL_15;
  }

  amber::MutableMemoryView::view(this, &v35, v14, &v30);
  bzero(v31, v32);
  amber::MutableMemoryView::view(this, &v35, v19, &v30);
  v29[0] = &off_2A1DDFC68;
  v29[1] = &v33;
  v29[2] = 80;
  if (v32 <= 0x4F)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v20);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v21 = v31;
  v22 = v37;
  v24 = v34;
  v23 = v35;
  *(v31 + 3) = v36;
  v21[4] = v22;
  v21[1] = v24;
  v21[2] = v23;
  *v21 = v33;
  amber::MutableMemoryView::view(this, &v36, v20, &v30);
  if ((amber::SharedMemoryMessagingEndpoint::initialize(&v30, a2, a3, a4) & 0x80000000) == 0)
  {
    amber::MutableMemoryView::view(this, &v37, v14, v29);
    if ((amber::SharedMemoryMessagingEndpoint::initialize(v29, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  v26 = "init internal queues";
  v27 = 135;
LABEL_16:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessaging.cpp", "initialize", v27, 0, v26, v14);
  return 0xFFFFFFFFLL;
}

void amber::SharedMemoryMessaging::~SharedMemoryMessaging(amber::SharedMemoryMessaging *this)
{
  *this = &unk_2A1DE22D0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  amber::SharedMemoryMessaging::~SharedMemoryMessaging(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::S3ObjectStoreBlockDevice::S3ObjectStoreBlockDevice(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = amber::BlockDevice::BlockDevice(a1, a7, "S3ObjectStoreBlockDevice");
  *v14 = &unk_2A1DE2300;
  *(v14 + 70) = 0;
  amber::S3Context::S3Context(v14 + 288, a3, a4, a5, a6, a7);
  v15 = strlen(a2);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  v17 = (a1 + 1152);
  if (v15 >= 0x17)
  {
    operator new();
  }

  *(a1 + 1175) = v15;
  v18 = (a1 + 1152);
  if (v15)
  {
    memmove(v18, a2, v15);
  }

  *(v18 + v16) = 0;
  *(a1 + 1176) = xmmword_296A15470;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0;
  *(a1 + 1248) = 1018212795;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0;
  if (a7)
  {
    v19 = 655361;
  }

  else
  {
    v19 = 720896;
  }

  *(a1 + 280) = v19;
  while (1)
  {
    v20 = *(a1 + 1175);
    if (v20 < 0)
    {
      break;
    }

    if (!*(a1 + 1175) || *(a1 + 1151 + v20) != 47)
    {
      goto LABEL_19;
    }

    v21 = v20 - 1;
    *(a1 + 1175) = v20 - 1;
    v22 = a1 + 1152;
LABEL_18:
    *(v22 + v21) = 0;
  }

  v23 = *(a1 + 1160);
  if (v23)
  {
    v22 = *v17;
    if (*(*v17 + v23 - 1) == 47)
    {
      v21 = v23 - 1;
      *(a1 + 1160) = v21;
      goto LABEL_18;
    }
  }

LABEL_19:
  std::string::push_back((a1 + 1152), 47);
  return a1;
}

void sub_2969BA290(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 1248));
  std::mutex::~mutex((v1 + 1184));
  if (*(v1 + 1175) < 0)
  {
    operator delete(*v2);
  }

  amber::S3Context::~S3Context((v1 + 288));
  amber::BlockDevice::~BlockDevice(v1);
  _Unwind_Resume(a1);
}

void amber::S3ObjectStoreBlockDevice::~S3ObjectStoreBlockDevice(amber::S3ObjectStoreBlockDevice *this)
{
  v2 = 32;
  do
  {
    amber::Sem::acquire((this + 1176));
    --v2;
  }

  while (v2);
  std::condition_variable::~condition_variable(this + 26);
  std::mutex::~mutex((this + 1184));
  if (*(this + 1175) < 0)
  {
    operator delete(*(this + 144));
  }

  amber::S3Context::~S3Context((this + 288));

  amber::BlockDevice::~BlockDevice(this);
}

{
  amber::S3ObjectStoreBlockDevice::~S3ObjectStoreBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::S3ObjectStoreBlockDevice::setAttribute(amber::S3ObjectStoreBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    if (amber::HTTPContext::isSettableByParentBlockDevice(a2))
    {

      return amber::HTTPContext::setAttribute((this + 288), a2, a3, a4, v12, v13, v14);
    }

    else
    {

      return amber::BlockDevice::setAttribute(this, a2, a3, a4, v12, v13, v14);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "setAttribute", 0x82, 0, "invalid attribute encoding %u, %u", v11, a2, a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::S3ObjectStoreBlockDevice::getAttribute(amber::S3ObjectStoreBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "getAttribute", 0x95, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 == 202)
  {
    v14 = *(this + 70);
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

uint64_t amber::S3ObjectStoreBlockDevice::loadPrologue(uint64_t a1, uint64_t a2)
{
  v25[75] = *MEMORY[0x29EDCA608];
  if (*(a1 + 1175) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *(a1 + 1152), *(a1 + 1160));
  }

  else
  {
    v23 = *(a1 + 1152);
  }

  v4 = *(a2 + 16);
  v25[0] = &off_2A1DDFC68;
  v25[1] = a2 + 20;
  v25[2] = v4;
  amber::serializeSnapshotURIToStringEnd(v25, &v23);
  v18[0] = &unk_2A1DDFD28;
  v18[2] = 0;
  v18[3] = 0;
  v18[1] = off_2A1DDFD48;
  v18[5] = 0;
  v18[6] = 0;
  v18[4] = &off_2A1DDFDA8;
  v18[7] = &off_2A1DDFC68;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  v22 = 0;
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v23;
  }

  else
  {
    v5 = v23.__r_.__value_.__r.__words[0];
  }

  if ((amber::S3Context::getObject((a1 + 288), v5, v18) & 0x80000000) == 0)
  {
    amber::ObjectStorePath::ObjectStorePath(v25);
    amber::Buffer::constBuf(v18, v7, v24);
    amber::ConstMemoryView::view(v24, v20, *(&v20 + 1) - v20, v8, v17);
    amber::JSONCodable::jsonParseFromBuffer(v25, v17);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "loadPrologue", 0xA8, 0, "invalid snapshot storage_id", v6);
  amber::Buffer::~Buffer(v18, v9, v10, v11, v12, v13, v14);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_2969BA854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  amber::ObjectStorePath::~ObjectStorePath(&a34);
  amber::Buffer::~Buffer(&a12, v35, v36, v37, v38, v39, v40);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::S3ObjectStoreBlockDevice::listContainers(uint64_t a1, uint64_t a2)
{
  v41[35] = *MEMORY[0x29EDCA608];
  v34 = &v34;
  v35 = &v34;
  v36 = 0;
  memset(&v33, 0, sizeof(v33));
  v4 = (a1 + 1152);
  if (*(a1 + 1175) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(a1 + 1152), *(a1 + 1160));
  }

  else
  {
    *&v32.__r_.__value_.__l.__data_ = *v4;
    v32.__r_.__value_.__r.__words[2] = *(a1 + 1168);
  }

  std::string::push_back(&v33, 120);
  std::string::push_back(&v33, 47);
  if (*(a1 + 1175) < 0)
  {
    v4 = *v4;
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v33;
  }

  else
  {
    v5 = v33.__r_.__value_.__r.__words[0];
  }

  if ((amber::S3Context::listObjects(a1 + 288, v4, v5) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "listContainers", 0xB5, 0, "list snapshots", v6);
    v28 = 0xFFFFFFFFLL;
  }

  else
  {
    std::list<std::string>::__sort<std::__less<void,void>>(v35, &v34, v36, v37);
    v41[0] = &unk_2A1DDFDD8;
    v41[1] = &unk_2A1DDFE08;
    memset(&v41[2], 0, 260);
    for (i = v35; i != &v34; i = *(i + 8))
    {
      amber::ObjectStorePath::ObjectStorePath(v37);
      v13 = (i + 16);
      v14 = *(i + 39);
      if (v14 < 0)
      {
        v15 = *(i + 16);
        v14 = *(i + 24);
      }

      else
      {
        v15 = i + 16;
      }

      v31[0] = v15;
      v31[1] = v14;
      if ((amber::parseObjectURI(v31, v37, v8, v9, v10, v11, v12) & 0x80000000) != 0 || !v39)
      {
        if (*(i + 39) < 0)
        {
          v13 = *v13;
        }

        amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "listContainers", 0xC0, 0, "skip unexpected URI: %s", v20, v13);
      }

      else if (!amber::CryptoBlobBase<256u>::equals(v38, v41, v16, v17, v18, v19, v20))
      {
        v26 = *(a2 + 8);
        if (v26 >= *(a2 + 16))
        {
          v27 = std::vector<amber::CryptoBlobBase<256u>>::__emplace_back_slow_path<amber::CryptoBlobBase<256u> const&>(a2, v38, v21, v22, v23, v24, v25);
        }

        else
        {
          amber::CryptoBlobBase<256u>::CryptoBlobBase(*(a2 + 8), v40, v39, v22, v23, v24, v25);
          v27 = v26 + 280;
          *(a2 + 8) = v26 + 280;
        }

        *(a2 + 8) = v27;
        LODWORD(v41[2]) = v39;
        *(&v41[26] + 4) = v40[12];
        *(&v41[28] + 4) = v40[13];
        *(&v41[30] + 4) = v40[14];
        *(&v41[32] + 4) = v40[15];
        *(&v41[18] + 4) = v40[8];
        *(&v41[20] + 4) = v40[9];
        *(&v41[22] + 4) = v40[10];
        *(&v41[24] + 4) = v40[11];
        *(&v41[10] + 4) = v40[4];
        *(&v41[12] + 4) = v40[5];
        *(&v41[14] + 4) = v40[6];
        *(&v41[16] + 4) = v40[7];
        *(&v41[2] + 4) = v40[0];
        *(&v41[4] + 4) = v40[1];
        *(&v41[6] + 4) = v40[2];
        *(&v41[8] + 4) = v40[3];
      }

      amber::ObjectStorePath::~ObjectStorePath(v37);
    }

    v28 = 0;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  std::__list_imp<std::string>::clear(&v34);
  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

void sub_2969BAC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  std::__list_imp<std::string>::clear(&a26);
  _Unwind_Resume(a1);
}

uint64_t amber::S3ObjectStoreBlockDevice::listContainerSnapshots(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = *MEMORY[0x29EDCA608];
  v52 = &v52;
  v53 = &v52;
  v54 = 0;
  v6 = (a1 + 1152);
  if (*(a1 + 1175) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(a1 + 1152), *(a1 + 1160));
  }

  else
  {
    *&v51.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = *(a1 + 1168);
  }

  amber::ObjectStorePath::ObjectStorePath(v64);
  memset(&__p, 0, sizeof(__p));
  v7 = *(a2 + 16);
  v8 = *(a2 + 260);
  v66[14] = *(a2 + 244);
  v66[15] = v8;
  v66[12] = *(a2 + 212);
  v66[13] = *(a2 + 228);
  v66[8] = *(a2 + 148);
  v66[9] = *(a2 + 164);
  v66[10] = *(a2 + 180);
  v66[11] = *(a2 + 196);
  v66[4] = *(a2 + 84);
  v66[5] = *(a2 + 100);
  v66[6] = *(a2 + 116);
  v66[7] = *(a2 + 132);
  v66[0] = *(a2 + 20);
  v66[1] = *(a2 + 36);
  v66[2] = *(a2 + 52);
  v66[3] = *(a2 + 68);
  v65 = v7;
  v68[65] = 1;
  v59[0] = &off_2A1DDFC68;
  v59[1] = v66;
  v60 = v7;
  v56 = &off_2A1DDFC68;
  v57 = v68;
  v58 = v67;
  amber::serializeObjectURIToStringEnd(v59, &v56, 1u, &__p);
  v9 = v6;
  if (*(a1 + 1175) < 0)
  {
    v9 = v6->__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((amber::S3Context::listObjects(a1 + 288, v9, p_p) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0xD6, 0, "list prologues", v11);
    goto LABEL_39;
  }

  v12 = v53;
  if (v53 == &v52)
  {
LABEL_37:
    v35 = 0;
    goto LABEL_40;
  }

  v40 = v43;
  v38 = a3;
  v39 = &v44;
  while (1)
  {
    amber::ObjectStorePath::ObjectStorePath(v59);
    v18 = v12 + 2;
    v19 = *(v12 + 39);
    if ((v19 & 0x8000000000000000) != 0)
    {
      v20 = v12[2];
      v19 = v12[3];
    }

    else
    {
      v20 = (v12 + 2);
    }

    v56 = v20;
    v57 = v19;
    if ((amber::parseObjectURI(&v56, v59, v13, v14, v15, v16, v17) & 0x80000000) != 0 || !v61 || !v62)
    {
      if (*(v12 + 39) < 0)
      {
        v18 = *v18;
      }

      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0xE0, 0, "skip unexpected URI: %s", v25, v18, v38, v39, v40);
      goto LABEL_24;
    }

    if (amber::CryptoBlobBase<256u>::equals(&v60, a2, v21, v22, v23, v24, v25))
    {
      break;
    }

LABEL_24:
    amber::ObjectStorePath::~ObjectStorePath(v59);
    v12 = v12[1];
    if (v12 == &v52)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + 1175) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(a1 + 1152), *(a1 + 1160));
  }

  else
  {
    v49 = *v6;
  }

  v56 = &off_2A1DDFC68;
  v57 = &v63;
  v58 = v62;
  amber::serializeSnapshotURIToStringEnd(&v56, &v49);
  v42[0] = &unk_2A1DDFD28;
  v42[1] = off_2A1DDFD48;
  v42[2] = 0;
  v42[3] = 0;
  v43[0] = &off_2A1DDFDA8;
  v43[1] = 0;
  v43[2] = 0;
  v44 = &off_2A1DDFC68;
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  v48 = 0;
  amber::ObjectStorePath::ObjectStorePath(&v56);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v49;
  }

  else
  {
    v26 = v49.__r_.__value_.__r.__words[0];
  }

  if ((amber::S3Context::getObject((a1 + 288), v26, v42) & 0x80000000) == 0)
  {
    amber::Buffer::constBuf(v42, v27, v55);
    amber::ConstMemoryView::view(v55, v46, *(&v46 + 1) - v46, v28, v41);
    amber::JSONCodable::jsonParseFromBuffer(&v56, v41);
  }

  if (*(v12 + 39) < 0)
  {
    v18 = *v18;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0xEA, 0, "invalid/missing snapshot %s", v27, v18);
  amber::ObjectStorePath::~ObjectStorePath(&v56);
  amber::Buffer::~Buffer(v42, v29, v30, v31, v32, v33, v34);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  amber::ObjectStorePath::~ObjectStorePath(v59);
LABEL_39:
  v35 = 0xFFFFFFFFLL;
LABEL_40:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  amber::ObjectStorePath::~ObjectStorePath(v64);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  std::__list_imp<std::string>::clear(&v52);
  v36 = *MEMORY[0x29EDCA608];
  return v35;
}

void sub_2969BB1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  *(a10 + 24) = v56;
  amber::ObjectStorePath::~ObjectStorePath(&a56);
  amber::Buffer::~Buffer(&a18, v58, v59, v60, v61, v62, v63);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  amber::ObjectStorePath::~ObjectStorePath(&STACK[0x388]);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  amber::ObjectStorePath::~ObjectStorePath(&STACK[0x5E0]);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  std::__list_imp<std::string>::clear(&a50);
  _Unwind_Resume(a1);
}

uint64_t amber::S3ObjectStoreBlockDevice::loadObject(amber::S3ObjectStoreBlockDevice *this, const amber::ObjectStorePath *a2, amber::Buffer *a3)
{
  if (*(this + 1175) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 144), *(this + 145));
  }

  else
  {
    __p = *(this + 48);
  }

  v6 = *(a2 + 8);
  v13[0] = &off_2A1DDFC68;
  v13[1] = a2 + 36;
  v13[2] = v6;
  v7 = *(a2 + 78);
  v12[0] = &off_2A1DDFC68;
  v12[1] = a2 + 316;
  v12[2] = v7;
  amber::serializeObjectURIToStringEnd(v13, v12, *(a2 + 144), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  Object = amber::S3Context::getObject((this + 288), p_p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return Object;
}

void sub_2969BB3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::S3ObjectStoreBlockDevice::storeObject(amber::S3ObjectStoreBlockDevice *this, const amber::ObjectStorePath *a2, const amber::ConstMemoryView *a3)
{
  if (*(this + 1175) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 144), *(this + 145));
  }

  else
  {
    __p = *(this + 48);
  }

  v6 = *(a2 + 8);
  v13[0] = &off_2A1DDFC68;
  v13[1] = a2 + 36;
  v13[2] = v6;
  v7 = *(a2 + 78);
  v12[0] = &off_2A1DDFC68;
  v12[1] = a2 + 316;
  v12[2] = v7;
  amber::serializeObjectURIToStringEnd(v13, v12, *(a2 + 144), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v9 = amber::S3Context::putObject((this + 288), p_p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_2969BB51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::S3ObjectStoreBlockDevice::enqueueRequest(amber::S3ObjectStoreBlockDevice *this, amber::BlockDeviceRequest *a2)
{
  amber::BlockDeviceEvent::BlockDeviceEvent(v29, 11, a2);
  amber::BlockDeviceEvent::send(v29);
  v9 = *(a2 + 5);
  if (v9 > 8)
  {
    switch(v9)
    {
      case 11:
        v17 = *(a2 + 161);
        if ((amber::BlockDevice::executePrefetchSequence(this, *(a2 + 14), 2u) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "enqueueRequest", 0x11B, 0, "executePrefetchSequence", v13);
          v14 = -2147483626;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_29;
      case 10:
        v22 = 32;
        do
        {
          amber::Sem::acquire((this + 1176));
          --v22;
        }

        while (v22);
        amber::BlockDeviceRequest::sendReply(a2, 1, 0, v23, v24, v25, v26);
        if (a2)
        {
          (*(*a2 + 8))(a2);
        }

        v27 = 32;
        do
        {
          amber::Sem::release((this + 1176));
          --v27;
        }

        while (v27);
        break;
      case 9:
        v15 = 32;
        do
        {
          amber::Sem::acquire((this + 1176));
          --v15;
        }

        while (v15);
        amber::S3ObjectStoreBlockDevice::snapshot(this, a2);
        v16 = 32;
        do
        {
          amber::Sem::release((this + 1176));
          --v16;
        }

        while (v16);
        break;
      default:
        goto LABEL_18;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        amber::S3ObjectStoreBlockDevice::enqueueRead(this, a2, v4, v5, v6, v7, v8);
        break;
      case 2:
        amber::S3ObjectStoreBlockDevice::enqueueWrite(this, a2, v4, v5, v6, v7, v8);
        break;
      case 8:
        if ((amber::BlockDevice::executeLogStats(this, *(a2 + 14) >> 3, *(a2 + 8), *(a2 + 161), v6, v7, v8) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "enqueueRequest", 0x113, 0, "executeLogStats", v13);
          v14 = -2147483626;
        }

        else
        {
          v14 = 1;
        }

LABEL_29:
        amber::BlockDeviceRequest::sendReply(a2, v14, 0, v10, v11, v12, v13);
        goto LABEL_30;
      default:
LABEL_18:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "enqueueRequest", 0x13E, 0, "invalid command: %u", v8, *(a2 + 5));
        amber::BlockDeviceRequest::sendReply(a2, -2147483626, 0, v18, v19, v20, v21);
LABEL_30:
        (*(*a2 + 8))(a2);
        break;
    }
  }

  amber::BlockDeviceEvent::~BlockDeviceEvent(v29);
  return 0;
}

void sub_2969BB7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t amber::S3ObjectStoreBlockDevice::enqueueRead(amber::S3ObjectStoreBlockDevice *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 30);
  if (v8)
  {
    v9 = *(a2 + 100);
    if (v9)
    {
      if (*(a2 + 170))
      {
        if (*(this + 1175) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(this + 144), *(this + 145));
          v8 = *(a2 + 30);
          v9 = *(a2 + 100);
        }

        else
        {
          __p = *(this + 48);
        }

        v17[0] = &off_2A1DDFC68;
        v17[1] = a2 + 124;
        v17[2] = v8;
        v16[0] = &off_2A1DDFC68;
        v16[1] = a2 + 404;
        v16[2] = v9;
        amber::serializeObjectURIToStringEnd(v17, v16, *(a2 + 166), &__p);
        operator new();
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "enqueueRead", 0x14B, 0, "request has no storage attributes", a7);
  amber::BlockDeviceRequest::sendReply(a2, -2147483626, 0, v10, v11, v12, v13);
  (*(*a2 + 8))(a2);
  return 0;
}

void sub_2969BBA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::S3ObjectStoreBlockDevice::enqueueWrite(amber::S3ObjectStoreBlockDevice *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 30);
  if (v8)
  {
    v9 = *(a2 + 100);
    if (v9)
    {
      if (*(a2 + 170))
      {
        if (*(this + 1175) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(this + 144), *(this + 145));
          v8 = *(a2 + 30);
          v9 = *(a2 + 100);
        }

        else
        {
          __p = *(this + 48);
        }

        v17[0] = &off_2A1DDFC68;
        v17[1] = a2 + 124;
        v17[2] = v8;
        v16[0] = &off_2A1DDFC68;
        v16[1] = a2 + 404;
        v16[2] = v9;
        amber::serializeObjectURIToStringEnd(v17, v16, *(a2 + 166), &__p);
        operator new();
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "enqueueWrite", 0x15E, 0, "request has no storage attributes", a7);
  amber::BlockDeviceRequest::sendReply(a2, -2147483626, 0, v10, v11, v12, v13);
  (*(*a2 + 8))(a2);
  return 0;
}

void sub_2969BBCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void amber::S3ObjectStoreBlockDevice::snapshot(std::string *this, amber::BlockDeviceRequest *a2)
{
  v16[0] = &unk_2A1DDFD28;
  v16[2] = 0;
  v16[3] = 0;
  v16[1] = off_2A1DDFD48;
  v16[5] = 0;
  v16[6] = 0;
  v16[4] = &off_2A1DDFDA8;
  v16[7] = &off_2A1DDFC68;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v20 = 0;
  if (SHIBYTE(this[48].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, this[48].__r_.__value_.__l.__data_, this[48].__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = this[48];
  }

  v3 = *(a2 + 250);
  v21[0] = &off_2A1DDFC68;
  v21[1] = a2 + 1004;
  v21[2] = v3;
  amber::serializeSnapshotURIToStringEnd(v21, &v15);
  if (*(a2 + 180) && *(a2 + 250) && *(a2 + 320))
  {
    amber::JSONCodable::jsonSerializeToBuffer((a2 + 688), v16);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/S3ObjectStoreBlockDevice.cpp", "snapshot", 0x179, 0, "request doesn't have a container snapshot", v4);
  amber::BlockDeviceRequest::sendReply(a2, -2147483626, 0, v5, v6, v7, v8);
  (*(*a2 + 8))(a2);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  amber::Buffer::~Buffer(v16, v9, v10, v11, v12, v13, v14);
}

void sub_2969BBF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  amber::Buffer::~Buffer(&a20, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::S3ObjectStoreBlockDevice::S3RequestCompletionProc(amber::S3ObjectStoreBlockDevice::S3RequestArg *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  amber::S3ObjectStoreBlockDevice::S3RequestArg::~S3RequestArg(a1);
  MEMORY[0x29C25C000]();
  if (*(a2 + 24))
  {
    result = amber::BlockDeviceRequest::sendReply(v3, -2147483643, 0, v4, v5, v6, v7);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    if (*(v3 + 5) == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    amber::BlockDeviceRequest::sendReply(v3, v9, 0, v4, v5, v6, v7);
  }

  v10 = *(*v3 + 8);

  return v10(v3);
}

uint64_t amber::S3ObjectStoreBlockDevice::S3RequestCancel(amber::S3ObjectStoreBlockDevice *this, amber::S3ObjectStoreBlockDevice::S3RequestArg *a2)
{
  v2 = *(a2 + 1);
  amber::S3ObjectStoreBlockDevice::S3RequestArg::~S3RequestArg(a2);
  MEMORY[0x29C25C000]();
  result = amber::BlockDeviceRequest::sendReply(v2, -2147483634, 0, v3, v4, v5, v6);
  if (v2)
  {
    v8 = *(*v2 + 8);

    return v8(v2);
  }

  return result;
}

void sub_2969BC194(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969BC178);
}

uint64_t amber::S3ObjectStoreBlockDevice::S3RequestArg::S3RequestArg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = off_2A1DDFD48;
  v5 = *(a4 + 8);
  v6 = *(a4 + 16);
  *(a1 + 48) = &off_2A1DDFDA8;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = &off_2A1DDFC68;
  *(a1 + 111) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 16) = &unk_2A1DE08A8;
  amber::Sem::acquire((a2 + 1176));
  return a1;
}

amber::S3ObjectStoreBlockDevice::S3RequestArg *amber::S3ObjectStoreBlockDevice::S3RequestArg::S3RequestArg(amber::S3ObjectStoreBlockDevice::S3RequestArg *this, amber::S3ObjectStoreBlockDevice *a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = a2;
  *(this + 1) = a3;
  amber::ProxyBuffer::ProxyBuffer((this + 16), 0, 0, a4, a5, a6, a7);
  amber::Sem::acquire((*this + 1176));
  return this;
}

void sub_2969BC84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x29C25C000](v19, 0x10B3C4085670863);
  *(v15 + 648) = v17;
  *(v15 + 656) = v18;
  *(v15 + 668) = 0u;
  *(v15 + 684) = 0u;
  *(v15 + 700) = 0u;
  *(v15 + 716) = 0u;
  *(v15 + 732) = 0u;
  *(v15 + 748) = 0u;
  *(v15 + 764) = 0u;
  *(v15 + 780) = 0u;
  *(v15 + 796) = 0u;
  *(v15 + 812) = 0u;
  *(v15 + 828) = 0u;
  *(v15 + 844) = 0u;
  *(v15 + 860) = 0u;
  *(v15 + 876) = 0u;
  *(v15 + 892) = 0u;
  *(v15 + 908) = 0u;
  if (*(v15 + 639) < 0)
  {
    operator delete(*(v15 + 616));
  }

  std::mutex::~mutex((v15 + 552));
  if (*(v15 + 535) < 0)
  {
    operator delete(*v16);
  }

  if (*(v15 + 495) < 0)
  {
    operator delete(*v20);
  }

  amber::SyncBlockDevice::~SyncBlockDevice(v15, v22, v23, v24, v25, v26, v27);
  _Unwind_Resume(a1);
}

uint64_t amber::HTTPBlockDevice::getPayloadURL(uint64_t a1, std::string *this, void *a3)
{
  if (*(a1 + 508))
  {
    std::mutex::lock((a1 + 552));
    v7 = amber::realTime(v6);
    if ((*(a1 + 639) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 624))
      {
LABEL_8:
        v9 = (a1 + 512);
        if (*(a1 + 535) < 0)
        {
          v9 = *v9;
        }

        if ((amber::KnoxContext::fileDecryptionComponents(*(a1 + 536), v9, a1 + 616, a1 + 640, a1 + 648) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPBlockDevice.cpp", "getPayloadURL", 0xFE, 0, "get Knox payload URL", v10);
          v8 = 0xFFFFFFFFLL;
          goto LABEL_14;
        }

        *(a1 + 928) = v7;
LABEL_12:
        std::string::operator=(this, (a1 + 616));
        v8 = 0;
        *a3 = *(a1 + 640);
LABEL_14:
        std::mutex::unlock((a1 + 552));
        return v8;
      }
    }

    else if (!*(a1 + 639))
    {
      goto LABEL_8;
    }

    if (v7 < *(a1 + 928) + 3600.0)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  std::string::operator=(this, (a1 + 472));
  v8 = 0;
  *a3 = -1;
  return v8;
}

void amber::HTTPBlockDevice::~HTTPBlockDevice(amber::HTTPBlockDevice *this)
{
  *this = &unk_2A1DE23C8;
  amber::SyncBlockDevice::terminateThreads(this);
  v2 = *(this + 67);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 68);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 81) = &unk_2A1DDFDD8;
  *(this + 82) = &unk_2A1DDFE08;
  *(this + 668) = 0u;
  *(this + 684) = 0u;
  *(this + 700) = 0u;
  *(this + 716) = 0u;
  *(this + 732) = 0u;
  *(this + 748) = 0u;
  *(this + 764) = 0u;
  *(this + 780) = 0u;
  *(this + 796) = 0u;
  *(this + 812) = 0u;
  *(this + 828) = 0u;
  *(this + 844) = 0u;
  *(this + 860) = 0u;
  *(this + 876) = 0u;
  *(this + 892) = 0u;
  *(this + 908) = 0u;
  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  std::mutex::~mutex((this + 552));
  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  amber::SyncBlockDevice::~SyncBlockDevice(this, v4, v5, v6, v7, v8, v9);
}

{
  amber::HTTPBlockDevice::~HTTPBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::HTTPBlockDevice::setAttribute(amber::HTTPBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    if (amber::HTTPContext::isSettableByParentBlockDevice(a2) && ((v15 = *(this + 67)) != 0 || (v15 = *(this + 68)) != 0))
    {
      v16 = *(*v15 + 24);

      return v16();
    }

    else
    {

      return amber::BlockDevice::setAttribute(this, a2, a3, a4, v12, v13, v14);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPBlockDevice.cpp", "setAttribute", 0x97, 0, "invalid attribute encoding %u, %u", v11, a2, a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::HTTPBlockDevice::getAttribute(amber::HTTPBlockDevice *this, amber::BaseObject *a2, unint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v26 = a2;
    v27 = a3;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPBlockDevice.cpp";
    v18 = "getAttribute";
    v19 = "invalid attribute encoding %u, %u";
    v20 = 171;
LABEL_9:
    amber::log(2, v17, v18, v20, 0, v19, v13, v26, v27);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 203)
  {
    if (a2 == 204)
    {
      *a5 = 4;
      v22 = *(a4 + 2);
      if (!v22)
      {
        return 0;
      }

      if (v22 > 3)
      {
        result = 0;
        v23 = *(a4 + 1);
        v24 = 1;
        goto LABEL_31;
      }
    }

    else
    {
      if (a2 != 205)
      {
        goto LABEL_16;
      }

      *a5 = 4;
      v22 = *(a4 + 2);
      if (!v22)
      {
        return 0;
      }

      if (v22 > 3)
      {
        result = 0;
        v23 = *(a4 + 1);
        v24 = 0x40000;
LABEL_31:
        *v23 = v24;
        return result;
      }
    }

    v26 = 4;
    v27 = v22;
    goto LABEL_26;
  }

  if (a2 == 201)
  {
    v25 = *(this + 62);
    *a5 = 8;
    v15 = *(a4 + 2);
    if (v15)
    {
      if (v15 > 7)
      {
        result = 0;
        **(a4 + 1) = v25;
        return result;
      }

      v16 = 8;
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 == 202)
  {
    v14 = *(this + 126);
    *a5 = 4;
    v15 = *(a4 + 2);
    if (v15)
    {
      if (v15 > 3)
      {
        result = 0;
        **(a4 + 1) = v14;
        return result;
      }

      v16 = 4;
LABEL_22:
      v26 = v16;
      v27 = v15;
LABEL_26:
      v17 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp";
      v18 = "loadAttribute";
      v19 = "insufficient capacity, expected: %zu, actual: %zu";
      v20 = 19;
      goto LABEL_9;
    }

    return 0;
  }

LABEL_16:

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::HTTPBlockDevice::executeRead(amber::HTTPBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  memset(&v42, 0, sizeof(v42));
  v8 = *(a3 + 8);
  v40[0] = v40;
  v40[1] = v40;
  v40[2] = 0;
  v9 = *(a3 + 6);
  v10 = *(a3 + 14);
  v11 = v9 + v10;
  if (__CFADD__(v9, v10))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v11 <= v9)
  {
    v9 = 0;
    v11 = 0;
  }

  v39[0] = v9;
  v39[1] = v11;
  amber::ProxyBuffer::ProxyBuffer(v38, v10, v8, 0, a5, a6, a7);
  v37[0] = v37;
  v37[1] = v37;
  v37[2] = 0;
  v13 = *(this + 67);
  if (!v13)
  {
    v13 = *(this + 68);
  }

  amber::BlockDeviceEvent::BlockDeviceEvent(v36, 26, a3);
  if ((amber::HTTPBlockDevice::getPayloadURL(this, &v42, &v41) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPBlockDevice.cpp", "executeRead", 0xD0, 0, "payload url", v14);
LABEL_16:
    amber::BlockDeviceRequest::sendReply(a3, -2147483643, 0, v23, v24, v25, v26);
    v22 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  amber::BlockDeviceEvent::sendBegin(v36);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v42;
  }

  else
  {
    v15 = v42.__r_.__value_.__r.__words[0];
  }

  v35[1] = 0;
  v35[2] = 0;
  v35[0] = &off_2A1DDFC68;
  if ((amber::HTTPContext::httpPerformBase(v13, 1, v15, v40, v35, v38, 0, v39, 1u) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPBlockDevice.cpp", "executeRead", 0xD2, 0, "http GET", v16);
    goto LABEL_16;
  }

  amber::BlockDeviceEvent::sendEnd(v36);
  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v17, v18, v19, v20) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPBlockDevice.cpp", "executeRead", 0xD4, 0, "reply data", v21);
  }

  v22 = 0;
LABEL_17:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v36);
  std::__list_imp<std::string>::clear(v37);
  amber::Buffer::~Buffer(v38, v27, v28, v29, v30, v31, v32);
  std::__list_imp<std::string>::clear(v40);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return v22;
}

void sub_2969BD280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  std::__list_imp<std::string>::clear(va1);
  amber::Buffer::~Buffer(va2, v8, v9, v10, v11, v12, v13);
  std::__list_imp<std::string>::clear((v6 - 88));
  if (*(v6 - 33) < 0)
  {
    operator delete(*(v6 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t amber::HTTPBlockDevice::getEncryptionKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 536))
  {
    v7 = *(a1 + 664);
    if (v7)
    {
      v11[0] = &off_2A1DDFC68;
      v11[1] = a1 + 668;
      v11[2] = v7;
      amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a3 + 8, v11, a3, a4, a5, a6, a7);
      return 0;
    }

    v9 = "No Knox key";
    v10 = 235;
  }

  else
  {
    v9 = "No Knox context";
    v10 = 234;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPBlockDevice.cpp", "getEncryptionKey", v10, 0, v9, a7);
  return 0xFFFFFFFFLL;
}

void sub_2969BD46C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969BD454);
}

amber::CacheEntry *amber::CacheEntry::CacheEntry(amber::CacheEntry *this, amber::MemoryCacheBlockDevice *a2)
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(this + 24) = v3;
  *(this + 8) = v3;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 9) = 0;
  *this = a2;
  v4 = malloc_type_malloc(*(a2 + 122), 0xF93785E2uLL);
  if (!v4)
  {
    v5 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v5, "malloc", v6);
  }

  *(this + 5) = v4;
  return this;
}

void amber::CacheEntry::requestData(amber::CacheEntry *this, uint64_t a2)
{
  v2 = *this;
  v3 = *(*this + 488);
  *(this + 1) = a2;
  *(this + 2) = v3 * a2;
  v4 = v3 * a2 + v3;
  v5 = *(v2 + 496);
  if (v5 >= v4)
  {
    v5 = v4;
  }

  *(this + 3) = v5;
  operator new();
}

void sub_2969BD6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

void amber::CacheEntry::replyProc(void *a1, uint64_t a2)
{
  *(a2 + 28);
  v2 = a1[1];
  amber::SharedQueue<amber::CacheMessage>::insertLast(*a1 + 536);
}

void sub_2969BDA60(_Unwind_Exception *a1)
{
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v3);
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v1 + 728, *(v1 + 92));
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(v1 + 704, *(v1 + 89));
  amber::SharedQueue<amber::CacheMessage>::~SharedQueue(v2);
  amber::SyncBlockDevice::~SyncBlockDevice(v1, v5, v6, v7, v8, v9, v10);
  _Unwind_Resume(a1);
}

void amber::MemoryCacheBlockDevice::~MemoryCacheBlockDevice(amber::MemoryCacheBlockDevice *this)
{
  *this = &unk_2A1DE24D0;
  *(this + 59) = &unk_2A1DE25C8;
  amber::SyncBlockDevice::terminateThreads(this);
  amber::SharedQueue<amber::CacheMessage>::insertLast(this + 536);
}

{
  amber::MemoryCacheBlockDevice::~MemoryCacheBlockDevice(this);
}

void non-virtual thunk toamber::MemoryCacheBlockDevice::~MemoryCacheBlockDevice(amber::MemoryCacheBlockDevice *this)
{
  amber::MemoryCacheBlockDevice::~MemoryCacheBlockDevice((this - 472));
}

{
  amber::MemoryCacheBlockDevice::~MemoryCacheBlockDevice((this - 472));
}

uint64_t amber::MemoryCacheBlockDevice::getAttribute(amber::MemoryCacheBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryCacheBlockDevice.cpp", "getAttribute", 0x1B5, 0, "invalid attribute encoding %u, %u", v16, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 203)
  {
    switch(a2)
    {
      case 0xC9:
        v21 = *(this + 62);
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
LABEL_26:
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v16, v19, v18);
            return 0xFFFFFFFFLL;
          }

          return amber::copy(a4, &v25, v12, v13, v14, v15, v16);
        }

        return 0;
      case 0xCA:
        v17 = *(this + 132);
        goto LABEL_23;
      case 0xCB:
        v17 = *(this + 126);
        if (!v17)
        {
          return 0xFFFFFFFFLL;
        }

LABEL_23:
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
            goto LABEL_26;
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

      goto LABEL_23;
    }

    if (a2 == 206 || a2 == 207)
    {
      v17 = *(this + 122);
      goto LABEL_23;
    }
  }

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v15, v16);
}

uint64_t amber::MemoryCacheBlockDevice::executeRead(amber::MemoryCacheBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v36 = *MEMORY[0x29EDCA608];
  v8 = *(a3 + 6);
  v9 = *(a3 + 14);
  v10 = *(a3 + 8);
  v25[0] = 0;
  v33[0] = xmmword_296A14210;
  memset(&v33[1], 0, 48);
  v34 = 0;
  v35.__cv_.__sig = 1018212795;
  memset(v35.__cv_.__opaque, 0, sizeof(v35.__cv_.__opaque));
  v11 = v8 + v9;
  if (__CFADD__(v8, v9) || v11 > *(this + 62))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryCacheBlockDevice.cpp", "executeRead", 0x1E2, 0, "invalid request range", a7);
    v16 = -2147483626;
LABEL_4:
    amber::BlockDeviceRequest::sendReply(a3, v16, 0, v12, v13, v14, v15);
    v17 = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  if (v8 < v11)
  {
    v20 = *(this + 122);
    v21 = *(a3 + 161);
    v25[1] = 1;
    if (v11 >= v20 + v8 / v20 * v20)
    {
      v22 = v20 + v8 / v20 * v20;
    }

    else
    {
      v22 = v8 + v9;
    }

    v26 = v8 / v20;
    v27 = v8;
    v28 = v22 - v8;
    v29 = v10;
    v30 = v25;
    v31 = v33;
    v32 = v21;
    amber::SharedQueue<amber::CacheMessage>::insertLast(this + 536);
  }

  if (atomic_load(v25))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryCacheBlockDevice.cpp", "executeRead", 0x1F5, 0, "some read requests failed", a7);
    v16 = -2147483643;
    goto LABEL_4;
  }

  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryCacheBlockDevice.cpp", "executeRead", 0x1F8, 0, "reply data", v24);
  }

  v17 = 0;
LABEL_5:
  std::condition_variable::~condition_variable(&v35);
  std::mutex::~mutex((v33 + 8));
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

void sub_2969BE184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::condition_variable::~condition_variable(&a28);
  std::mutex::~mutex(&a20);
  _Unwind_Resume(a1);
}

unint64_t *amber::MemoryCacheBlockDevice::updateStats(unint64_t *this, unint64_t a2, unint64_t *a3)
{
  if (a2 >= 0xD)
  {
    a3[12] = this[90] * *(this + 122);
    if (a2 >= 0x10)
    {
      v3 = atomic_load(this + 99);
      a3[15] = v3 * *(this + 122);
      if (a2 != 16)
      {
        v4 = atomic_load(this + 100);
        a3[16] = v4 * *(this + 122);
        if (a2 >= 0x12)
        {
          v5 = atomic_load(this + 101);
          a3[17] = v5 * *(this + 122);
          if (a2 != 18)
          {
            v6 = atomic_load(this + 102);
            a3[18] = v6 * *(this + 122);
            if (a2 >= 0x14)
            {
              v7 = atomic_load(this + 103);
              a3[19] = v7 * *(this + 122);
            }
          }
        }
      }
    }
  }

  return amber::BlockDevice::updateStats(this, a2, a3);
}

uint64_t amber::MemoryCacheBlockDevice::setPrefetchSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = 0;
  v32[1] = 0;
  v30 = 0;
  v31 = v32;
  v5 = *(a1 + 496);
  v27[0] = &unk_2A1DE0740;
  v27[1] = &unk_2A1DE0780;
  v28 = 0;
  v29 = 0;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 592);
      if (v9)
      {
        v10 = *(v6 + 584);
        v11 = v10 + v9;
        if (v10 < v11)
        {
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0;
        }

        v13 = *(a1 + 488);
        v14 = v10 & -v13;
        v15 = (v13 + v12 - 1) & -v13;
        if (v14 >= v15)
        {
          v14 = 0;
          v15 = 0;
        }

        if (v14 != v15 && v5 != 0)
        {
          if (v5 < v15)
          {
            v15 = v5;
          }

          if (v14 >= v15)
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          if (v14 >= v15)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15;
          }

          while (v17 < v18)
          {
            v19 = v32[0];
            if (!v32[0])
            {
              goto LABEL_33;
            }

            v20 = v32;
            do
            {
              v21 = v19[4];
              v22 = v21 >= v17;
              v23 = v21 < v17;
              if (v22)
              {
                v20 = v19;
              }

              v19 = v19[v23];
            }

            while (v19);
            if (v20 == v32 || v17 < v20[4])
            {
LABEL_33:
              if (v8 >= v30)
              {
                v8 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<>(&v28);
              }

              else
              {
                bzero(v8, 0x258uLL);
                amber::ObjectStorePath::ObjectStorePath(v8);
                v8 += 600;
              }

              v29 = v8;
              *(v8 - 2) = v17;
              v13 = *(a1 + 488);
              v24 = v18 - v17;
              if (v18 - v17 >= v13)
              {
                v24 = *(a1 + 488);
              }

              *(v8 - 2) = v24;
            }

            v17 += v13;
          }
        }
      }

      v6 += 600;
    }

    while (v6 != v7);
  }

  v25 = (*(**(a1 + 512) + 56))(*(a1 + 512), v27, a3);
  amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(v27);
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(&v31, v32[0]);
  return v25;
}

void sub_2969BE46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(&a9);
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

void amber::MemoryCacheBlockDevice::run(amber::MemoryCacheBlockDevice *this)
{
  v38 = this + 752;
  v2 = (this + 712);
  while (1)
  {
    *v39 = 0;
    *&v39[8] = xmmword_296A154C0;
    *&v39[24] = 0;
    __dst[1] = 0;
    v41[0] = 0;
    __dst[0] = 0;
    v41[1] = -1;
    v3 = *(this + 96);
    if (!v3 || *(this + 90) >= *(this + 87) && !*(this + 93))
    {
      break;
    }

    v4 = *(this + 95);
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[4];
    *__dst = v4[3];
    *v41 = v7;
    *v39 = v5;
    *&v39[16] = v6;
    v9 = *v4;
    v8 = *(v4 + 1);
    *(v9 + 8) = v8;
    *v8 = v9;
    *(this + 96) = v3 - 1;
    operator delete(v4);
    v16 = 1;
LABEL_8:
    if (*v39 > 2)
    {
      if (*v39 != 3)
      {
        if (*v39 == 4)
        {
          return;
        }

        goto LABEL_50;
      }

      v24 = *v2;
      if (!*v2)
      {
        goto LABEL_60;
      }

      v25 = v2;
      do
      {
        v26 = v24[4];
        v20 = v26 >= *&v39[8];
        v27 = v26 < *&v39[8];
        if (v20)
        {
          v25 = v24;
        }

        v24 = v24[v27];
      }

      while (v24);
      if (v25 == v2 || *&v39[8] < v25[4])
      {
LABEL_60:
        v36 = "invalid state";
        v37 = 691;
        goto LABEL_62;
      }

      v28 = v25[5];
      std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(this + 88, v25);
      operator delete(v25);
      v29 = *(v28 + 64);
      if (v29 == v28 + 56)
      {
        std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear((v28 + 56));
        goto LABEL_54;
      }

      do
      {
        v30 = 0;
        atomic_compare_exchange_strong(*(v29 + 56), &v30, 1u);
        amber::Sem::release(*(v29 + 64));
        v29 = *(v29 + 8);
      }

      while (v29 != v28 + 56);
      std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear((v28 + 56));
      if (v28)
      {
LABEL_54:
        free(*(v28 + 40));
        std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear((v28 + 56));
        MEMORY[0x29C25C000](v28, 0x1030C40CD122F1BLL);
      }
    }

    else
    {
      if (*v39 == 1)
      {
        if ((v16 & 1) == 0)
        {
          atomic_fetch_add_explicit(this + 98, 1uLL, memory_order_relaxed);
        }

        v31 = *v2;
        if (!*v2)
        {
          goto LABEL_45;
        }

        v32 = v2;
        do
        {
          v33 = *(v31 + 32);
          v20 = v33 >= *&v39[8];
          v34 = v33 < *&v39[8];
          if (v20)
          {
            v32 = v31;
          }

          v31 = *(v31 + 8 * v34);
        }

        while (v31);
        if (v32 == v2 || *&v39[8] < v32[4])
        {
LABEL_45:
          if (*(this + 90) < *(this + 87))
          {
            atomic_fetch_add_explicit(this + 101, 1uLL, memory_order_relaxed);
            operator new();
          }

          if (*(this + 93))
          {
            atomic_fetch_add_explicit(this + 101, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(this + 103, 1uLL, memory_order_relaxed);
            v35 = amber::MemoryCacheBlockDevice::evictCacheEntry(this, v10, v11, v12, v13, v14, v15);
            v42 = &v39[8];
            std::__tree<std::__value_type<unsigned long long,amber::CacheEntry *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,amber::CacheEntry *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,amber::CacheEntry *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 704, &v39[8])[5] = v35;
            amber::CacheEntry::requestData(v35, *&v39[8]);
          }

          atomic_fetch_add_explicit(this + 102, 1uLL, memory_order_relaxed);
          operator new();
        }

        v22 = v32[5];
        if (*(v22 + 48) != 1)
        {
          atomic_fetch_add_explicit(this + 101, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(this + 100, 1uLL, memory_order_relaxed);
          operator new();
        }

        atomic_fetch_add_explicit(this + 99, 1uLL, memory_order_relaxed);
        memcpy(__dst[0], (*(v22 + 40) + *&v39[16] - *(v22 + 16)), *&v39[24]);
        amber::Sem::release(v41[0]);
        goto LABEL_48;
      }

      if (*v39 == 2)
      {
        v17 = *v2;
        if (!*v2)
        {
          goto LABEL_59;
        }

        v18 = v2;
        do
        {
          v19 = *(v17 + 32);
          v20 = v19 >= *&v39[8];
          v21 = v19 < *&v39[8];
          if (v20)
          {
            v18 = v17;
          }

          v17 = *(v17 + 8 * v21);
        }

        while (v17);
        if (v18 == v2 || *&v39[8] < v18[4])
        {
LABEL_59:
          v36 = "invalid state";
          v37 = 675;
          goto LABEL_62;
        }

        v22 = v18[5];
        *(v22 + 48) = 1;
        for (i = *(v22 + 64); i != v22 + 56; i = *(i + 8))
        {
          memcpy(*(i + 48), (*(v22 + 40) + *(i + 32) - *(v22 + 16)), *(i + 40));
          amber::Sem::release(*(i + 64));
        }

        std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear((v22 + 56));
LABEL_48:
        amber::MemoryCacheBlockDevice::updateTimestamp(this, v22);
      }

      else
      {
LABEL_50:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryCacheBlockDevice.cpp", "run", 0x2BE, 0, "invalid command: %d", v15, *v39, v38);
      }
    }
  }

  if ((amber::SharedQueue<amber::CacheMessage>::removeFirst(this + 536, v39) & 0x80000000) == 0)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v36 = "cache dequeue";
  v37 = 585;
LABEL_62:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryCacheBlockDevice.cpp", "run", v37, 0, v36, v15);
}

void *amber::MemoryCacheBlockDevice::updateTimestamp(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 736);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = (a1 + 736);
    do
    {
      v7 = v4[4];
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v6 != (a1 + 736) && v5 >= v6[4])
    {
      std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer((a1 + 728), v6);
      operator delete(v6);
    }
  }

  v10 = *(a1 + 776);
  *(a1 + 776) = v10 + 1;
  *(a2 + 32) = v10;
  v12[0] = v10;
  v12[2] = v12;
  result = std::__tree<std::__value_type<unsigned long long,amber::CacheEntry *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,amber::CacheEntry *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,amber::CacheEntry *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 728, v12);
  result[5] = a2;
  return result;
}

uint64_t amber::MemoryCacheBlockDevice::evictCacheEntry(amber::MemoryCacheBlockDevice *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 91);
  if (v7 == (this + 736))
  {
    v16 = 738;
  }

  else
  {
    v9 = v7[5];
    std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(this + 91, v7);
    operator delete(v7);
    v10 = *(this + 89);
    if (v10)
    {
      v11 = *(v9 + 8);
      v12 = (this + 712);
      do
      {
        v13 = v10[4];
        v14 = v13 >= v11;
        v15 = v13 < v11;
        if (v14)
        {
          v12 = v10;
        }

        v10 = v10[v15];
      }

      while (v10);
      if (v12 != (this + 712) && v11 >= v12[4] && v12[5] == v9)
      {
        std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(this + 88, v12);
        operator delete(v12);
        *&v18 = -1;
        *(&v18 + 1) = -1;
        *(v9 + 8) = v18;
        *(v9 + 24) = v18;
        *(v9 + 48) = 0;
        return v9;
      }
    }

    v16 = 744;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryCacheBlockDevice.cpp", "evictCacheEntry", v16, 0, "invalid state", a7);
  return 0;
}

void sub_2969BECD0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969BECB8);
}

void amber::SharedQueue<amber::CacheMessage>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<amber::CacheMessage>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedQueue<amber::CacheMessage>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE2628;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

uint64_t std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<>(uint64_t a1)
{
  v1 = 0x2FC962FC962FC963 * ((*(a1 + 8) - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x6D3A06D3A06D3ALL)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F92C5F92C5F92C6 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5F92C5F92C5F92C6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2FC962FC962FC963 * ((*(a1 + 16) - *a1) >> 3)) >= 0x369D0369D0369DLL)
  {
    v4 = 0x6D3A06D3A06D3ALL;
  }

  else
  {
    v4 = v2;
  }

  v17 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::ObjectStorePath>>(a1, v4);
  }

  v14 = 0;
  v15 = 600 * v1;
  bzero((600 * v1), 0x258uLL);
  amber::ObjectStorePath::ObjectStorePath((600 * v1));
  v16 = (600 * v1 + 600);
  v5 = *(a1 + 8);
  v6 = 600 * v1 + *a1 - v5;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::ObjectStorePath>,amber::ObjectStorePath*>(a1, *a1, v5, v15 + *a1 - v5, v7, v8, v9);
  v10 = *a1;
  *a1 = v6;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<amber::ObjectStorePath>::~__split_buffer(&v14);
  return v13;
}

void sub_2969BF040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<amber::ObjectStorePath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t amber::SharedQueue<amber::CacheMessage>::removeFirst(uint64_t a1, _OWORD *a2)
{
  v14.__m_ = (a1 + 40);
  v14.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 8);
  if (v4 <= 0)
  {
    do
    {
      std::condition_variable::wait((a1 + 104), &v14);
      v4 = *(a1 + 8);
    }

    while (v4 < 1);
  }

  *(a1 + 8) = v4 - 1;
  v5 = *(a1 + 24);
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[4];
  a2[2] = v5[3];
  a2[3] = v8;
  *a2 = v6;
  a2[1] = v7;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *v9;
  v11 = v9[1];
  *(v12 + 8) = v11;
  *v11 = v12;
  *(a1 + 32) = v10 - 1;
  operator delete(v9);
  if (v14.__owns_)
  {
    std::mutex::unlock(v14.__m_);
  }

  return 0;
}

void *std::__tree<std::__value_type<unsigned long long,amber::CacheEntry *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,amber::CacheEntry *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,amber::CacheEntry *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t amber::AEADecryptionStream::open(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v14[2] = 0;
  v14[3] = 0;
  v14[1] = off_2A1DDFD48;
  v14[5] = 0;
  v14[6] = 0;
  v14[4] = &off_2A1DDFDA8;
  v14[7] = &off_2A1DDFC68;
  v15 = 0u;
  v16 = 0u;
  v17 = 257;
  v18 = 0;
  v14[0] = off_2A1DDFC98;
  if (a4)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEADecryptionStream.cpp", "open", 0x8B, 0, "AEADecryptionStream: invalid thread count", a7);
  amber::Buffer::~Buffer(v14, v7, v8, v9, v10, v11, v12);
  return 0;
}

void sub_2969BF744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x29C25C000](v5, 0xA1C409BE6959DLL);
  amber::Buffer::~Buffer(va, v7, v8, v9, v10, v11, v12);
  _Unwind_Resume(a1);
}

void amber::AEADecryptionStream::~AEADecryptionStream(amber::AEADecryptionStream *this)
{
  *this = &unk_2A1DE2658;
  *(this + 1) = &unk_2A1DE26E8;
  if ((amber::AEADecryptionStream::close(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEADecryptionStream.cpp", "~AEADecryptionStream", 0xC1, 0, "close() reported errors in destructor", v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 14);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 11);
  v11 = *(this + 12);
  while (v10 != v11)
  {
    if (*v10)
    {
      (*(**v10 + 8))(*v10);
    }

    ++v10;
  }

  v12 = *(this + 2);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  amber::Buffer::~Buffer((this + 352), v2, v3, v4, v5, v6, v7);
  std::mutex::~mutex((this + 272));
  amber::SharedQueue<amber::AEASegmentDecryptionTask *>::~SharedQueue(this + 120);
  v13 = *(this + 11);
  if (v13)
  {
    *(this + 12) = v13;
    operator delete(v13);
  }
}

{
  amber::AEADecryptionStream::~AEADecryptionStream(this);

  JUMPOUT(0x29C25C000);
}

void non-virtual thunk toamber::AEADecryptionStream::~AEADecryptionStream(amber::AEADecryptionStream *this)
{
  amber::AEADecryptionStream::~AEADecryptionStream((this - 8));
}

{
  amber::AEADecryptionStream::~AEADecryptionStream((this - 8));

  JUMPOUT(0x29C25C000);
}

uint64_t amber::AEADecryptionStream::read(amber::AEADecryptionStream *this, const amber::MutableMemoryView *a2)
{
  if (atomic_load(this + 10))
  {
    return -1;
  }

  if (atomic_load(this + 11))
  {
    return -1;
  }

  std::mutex::lock((this + 272));
  v13 = *(a2 + 1);
  v14 = *(a2 + 2);
  v19 = &off_2A1DDFDA8;
  v20 = v13;
  v21 = v14;
  v5 = 0;
  if (!v14)
  {
    goto LABEL_21;
  }

  while (1)
  {
    if (*(this + 43) != -1)
    {
      goto LABEL_11;
    }

    v18 = 0;
    if (*(this + 336))
    {
      goto LABEL_21;
    }

    if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 120, &v18) & 0x80000000) != 0)
    {
LABEL_19:
      v5 = -1;
      goto LABEL_21;
    }

    if (!v18)
    {
      break;
    }

    if ((amber::AEASegmentDecryptionTask::getDecryptedData(v18, this + 43, (this + 352)) & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

LABEL_11:
    v15 = amber::BufferProtocol<amber::Buffer>::readAndConsume(this + 44, &v19, v8, v9, v10, v11, v12);
    if ((v15 & 0x8000000000000000) != 0)
    {
      v5 = v15;
      goto LABEL_21;
    }

    if (v15)
    {
      v16 = v21 - v15;
      if (v21 < v15)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./MutableMemoryView.hpp", "increment", 0x122, 0, "memory invalid range", v12);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v20 += v15;
      v21 -= v15;
      v5 += v15;
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(this + 43) = -1;
      if (!v21)
      {
        goto LABEL_21;
      }
    }
  }

  *(this + 336) = 1;
LABEL_21:
  std::mutex::unlock((this + 272));
  return v5;
}

void sub_2969BFBA0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock((v1 + 272));
  _Unwind_Resume(a1);
}

uint64_t amber::AEASegmentDecryptionTask::getDecryptedData(amber::AEASegmentDecryptionTask *this, unint64_t *a2, amber::SecureBuffer *a3)
{
  amber::Sem::acquire((this + 240));
  v6 = *(this + 232);
  *a2 = *(this + 28);
  amber::Buffer::Buffer(v24, (this + 120));
  v24[0].n128_u64[0] = off_2A1DDFC98;
  amber::Buffer::operator=(this + 120, a3, v7, v8, v9, v10, v11);
  amber::Buffer::operator=(a3, v24, v12, v13, v14, v15, v16);
  amber::Buffer::~Buffer(v24, v17, v18, v19, v20, v21, v22);
  amber::Sem::release((this + 360));
  return -v6;
}

void sub_2969BFC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::AEADecryptionStream::close(amber::AEADecryptionStream *this)
{
  v2 = 0;
  result = 0;
  atomic_compare_exchange_strong(this + 10, &v2, 1u);
  if (!v2)
  {
    v4 = atomic_load(this + 11);
    if (*(this + 4) && (*(this + 336) & 1) == 0)
    {
      while (1)
      {
        v5 = 0;
        if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 120, &v5) & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        if (!v5)
        {
          break;
        }

        if ((amber::AEASegmentDecryptionTask::getDecryptedData(v5, this + 43, (this + 352)) & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        if (*(this + 336) == 1)
        {
          goto LABEL_11;
        }
      }

      *(this + 336) = 1;
    }

LABEL_11:
    if (v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void amber::AEADecryptionStream::run(amber::AEADecryptionStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(this + 12);
  v9 = atomic_load(this + 10);
  v10 = *(this + 10);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    v16 = *(this + 18);
    v17 = 0 / v16;
    if (0 % v16)
    {
LABEL_17:
      v64 = amber::ThreadPool<amber::AEASegmentDecryptionTask>::acquire(*(this + 14), a2, a3, a4, a5, a6, a7);
      if ((amber::AEASegmentDecryptionTask::readEncryptedData(v64, 0, *(this + 3)) & 0x8000000000000000) == 0)
      {
        amber::SharedQueue<amber::AEASegmentDecryptionTask *>::insertLast(this + 120);
      }

      v14 = "reading segment data";
      v15 = 289;
      goto LABEL_22;
    }

    v65 = off_2A1DDFD48;
    v66 = 0;
    v67 = 0;
    v68 = &off_2A1DDFDA8;
    v69 = 0;
    v70 = 0;
    v71 = &off_2A1DDFC68;
    v72 = 0u;
    v73 = 0u;
    v74 = 257;
    v75 = 0;
    v64 = off_2A1DDFC98;
    v18 = *(this + 3);
    v19 = *(this + 14);
    if ((amber::Buffer::reserveEndCapacity(&v64, v19, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(&v64, v19, v20, v76), amber::Stream::readExpected(v18, v76, v21, v22, v23, v24, v25) != v19) || (amber::Buffer::grow(&v64, v19, v26, v27, v28, v29, v20) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Streams/./Stream.hpp", "readExpectedToBufferEnd", 0x75, 0, "readExpectedToBufferEnd", v20);
    }

    else if (v19 == *(this + 14))
    {
      v30 = *(this + 2);
      amber::Buffer::buf(&v64, v20, v76);
      amber::MutableMemoryView::view(v76, v73, *(&v73 + 1) - v73, v31, v63);
      if (((*(*v30 + 48))(v30, v17, v63) & 0x80000000) == 0)
      {
        v37 = v8 + *(this + 14);
        amber::Buffer::~Buffer(&v64, v32, v33, v34, v35, v36, v20);
        goto LABEL_17;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEADecryptionStream.cpp", "run", 0x116, 0, "read/process cluster failed", v20);
    goto LABEL_31;
  }

  if (!v10)
  {
    v12 = *(this + 8);
    v13 = v12 - v8;
    if (v12 > v8)
    {
      if (HIDWORD(v13))
      {
        v14 = "invalid padding size";
        v15 = 301;
LABEL_22:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEADecryptionStream.cpp", "run", v15, 0, v14, a7);
        goto LABEL_32;
      }

      v66 = 0;
      v67 = 0;
      v65 = off_2A1DDFD48;
      v69 = 0;
      v70 = 0;
      v68 = &off_2A1DDFDA8;
      v71 = &off_2A1DDFC68;
      v72 = 0u;
      v73 = 0u;
      v74 = 257;
      v75 = 0;
      v64 = off_2A1DDFC98;
      v44 = *(this + 3);
      if ((amber::Buffer::reserveEndCapacity(&v64, v13, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(&v64, v13, v45, v76), amber::Stream::readExpected(v44, v76, v46, v47, v48, v49, v50) != v13) || (amber::Buffer::grow(&v64, v13, v51, v52, v53, v54, v45) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Streams/./Stream.hpp", "readExpectedToBufferEnd", 0x75, 0, "readExpectedToBufferEnd", v45);
      }

      else
      {
        v55 = *(this + 2);
        amber::Buffer::buf(&v64, v45, v76);
        amber::MutableMemoryView::view(v76, v73, *(&v73 + 1) - v73, v56, v63);
        if (((*(*v55 + 56))(v55, v63) & 0x80000000) == 0)
        {
          amber::Buffer::~Buffer(&v64, v57, v58, v59, v60, v61, v62);
          goto LABEL_32;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEADecryptionStream.cpp", "run", 0x132, 0, "corrupted padding", v62);
LABEL_31:
      amber::Buffer::~Buffer(&v64, v38, v39, v40, v41, v42, v43);
    }
  }

LABEL_32:
  v64 = 0;
  amber::SharedQueue<amber::AEASegmentDecryptionTask *>::insertLast(this + 120);
}

void sub_2969C0268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

char **amber::ThreadPool<amber::AEASegmentDecryptionTask>::acquire(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  result = amber::ThreadPoolBase::acquire((a1 + 8), a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v8 = **result;
  }

  return result;
}

uint64_t amber::AEASegmentDecryptionTask::readEncryptedData(amber::AEASegmentDecryptionTask *this, uint64_t a2, amber::Stream *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  amber::ObjectStorePath::ObjectStorePath(v30);
  amber::Buffer::resize((this + 16), 0, v6, v7, v8, v9, v10);
  *(this + 28) = a2;
  *(this + 232) = 0;
  if (((*(**(this + 1) + 96))(*(this + 1), a2, v30) & 0x80000000) == 0)
  {
    v16 = v31;
    if ((amber::Buffer::reserveEndCapacity((this + 16), v31, v11, v12, v13, v14, v15) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(this + 16, v16, v15, v29), amber::Stream::readExpected(a3, v29, v17, v18, v19, v20, v21) != v16) || (amber::Buffer::grow((this + 16), v16, v22, v23, v24, v25, v15) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Streams/./Stream.hpp", "readExpectedToBufferEnd", 0x75, 0, "readExpectedToBufferEnd", v15);
    }

    else
    {
      v26 = v31;
      if (v16 == v31)
      {
        goto LABEL_9;
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEADecryptionStream.cpp", "readEncryptedData", 0x16, 0, "read segment encrypted data", v15);
  v26 = -1;
LABEL_9:
  amber::ObjectStorePath::~ObjectStorePath(v30);
  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

void sub_2969C0478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  amber::ObjectStorePath::~ObjectStorePath(va);
  _Unwind_Resume(a1);
}

double amber::AEADecryptionStream::AEADecryptionStream(amber::AEADecryptionStream *this)
{
  *this = &unk_2A1DE2658;
  *(this + 1) = &unk_2A1DE26E8;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 44) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  *(this + 15) = &unk_2A1DE2748;
  *(this + 32) = 0;
  *(this + 17) = this + 136;
  *(this + 18) = this + 136;
  *(this + 152) = xmmword_296A14210;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0;
  *(this + 28) = 1018212795;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 34) = 850045863;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 321) = 0u;
  *(this + 43) = -1;
  *(this + 45) = off_2A1DDFD48;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = &off_2A1DDFDA8;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 51) = &off_2A1DDFC68;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 224) = 257;
  *(this + 450) = 0;
  *(this + 44) = off_2A1DDFC98;
  return result;
}

void amber::SharedQueue<amber::AEASegmentDecryptionTask *>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<amber::AEASegmentDecryptionTask *>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

double amber::AEASegmentDecryptionTask::AEASegmentDecryptionTask(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1DE2778;
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
  *(a1 + 224) = -1;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_296A14210;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 1018212795;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 850045863;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = 1018212795;
  *(a1 + 472) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  return result;
}

void amber::AEASegmentDecryptionTask::~AEASegmentDecryptionTask(amber::AEASegmentDecryptionTask *this)
{
  *this = &unk_2A1DE2778;
  v2 = (this + 16);
  std::condition_variable::~condition_variable(this + 9);
  std::mutex::~mutex((this + 368));
  std::condition_variable::~condition_variable((this + 312));
  std::mutex::~mutex((this + 248));
  amber::Buffer::~Buffer((this + 120), v3, v4, v5, v6, v7, v8);
  amber::Buffer::~Buffer(v2, v9, v10, v11, v12, v13, v14);
}

{
  *this = &unk_2A1DE2778;
  v2 = (this + 16);
  std::condition_variable::~condition_variable(this + 9);
  std::mutex::~mutex((this + 368));
  std::condition_variable::~condition_variable((this + 312));
  std::mutex::~mutex((this + 248));
  amber::Buffer::~Buffer((this + 120), v3, v4, v5, v6, v7, v8);
  amber::Buffer::~Buffer(v2, v9, v10, v11, v12, v13, v14);

  JUMPOUT(0x29C25C000);
}

void amber::AEASegmentDecryptionTask::run(amber::AEASegmentDecryptionTask *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(this + 1);
  v9 = *(this + 28);
  amber::Buffer::buf(this + 16, a7, v13);
  amber::MutableMemoryView::view(v13, *(this + 12), *(this + 13) - *(this + 12), v10, v12);
  if (((*(*v8 + 64))(v8, v9, v12, this + 120) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEADecryptionStream.cpp", "run", 0x34, 0, "segment decryption failed", v11);
    *(this + 232) = 1;
  }

  amber::Sem::release((this + 240));
  amber::Sem::acquire((this + 360));
}

uint64_t amber::SharedQueue<amber::AEASegmentDecryptionTask *>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE2748;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

void *amber::ThreadPool<amber::AEASegmentDecryptionTask>::~ThreadPool(void *a1)
{
  *a1 = &unk_2A1DE27B8;
  amber::ThreadPoolBase::~ThreadPoolBase((a1 + 1));
  return a1;
}

void amber::ThreadPool<amber::AEASegmentDecryptionTask>::~ThreadPool(void *a1)
{
  *a1 = &unk_2A1DE27B8;
  amber::ThreadPoolBase::~ThreadPoolBase((a1 + 1));

  JUMPOUT(0x29C25C000);
}

void amber::KnoxUploadStream::~KnoxUploadStream(void **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE27E8;
  if ((amber::KnoxUploadStream::close(this, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadStream.cpp", "~KnoxUploadStream", 0x9C, 0, "KnoxUploadStream close reported errors", v8);
  }

  v9 = this[31];
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  this[31] = 0;
  amber::KnoxPointer::~KnoxPointer(this + 39);
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

  amber::ChunkOutputStream::~ChunkOutputStream(this, v10, v11, v12, v13, v14, v15);
}

{
  amber::KnoxUploadStream::~KnoxUploadStream(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::KnoxUploadStream::close(amber::KnoxUploadStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 4))
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadStream.cpp", "close", 0xA5, 0, "close() called before commit/cancel", a7);
  if ((amber::KnoxUploadStream::cancelUpload(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadStream.cpp", "close", 0xA7, 0, "cancel() failed", v10);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxUploadStream::cancelUpload(atomic_uint *this)
{
  if ((amber::ChunkOutputStream::cancel(this) & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadStream.cpp", "cancelUpload", 0x2C, 0, "ChunkOutputStream cancel failed", v1);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxUploadStream::chunkCommit(amber::KnoxUploadStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(this + 31);
  v9 = this + 264;
  if (*(this + 287) < 0)
  {
    v9 = *v9;
  }

  v10 = this + 288;
  if (*(this + 311) < 0)
  {
    v10 = *v10;
  }

  return amber::KnoxMultipartUpload::commit(v8, *(this + 32), v9, v10, (this + 312), a6, a7);
}

void amber::KnoxUploadStream::partCompletionProc(amber::KnoxUploadStream *this, void *a2)
{
  v2 = a2;
  v4 = *(this + 4);
  if (v4)
  {
    v4(*(this + 3), a2);
  }

  if (v2 < 0)
  {
    v5 = 0;
    atomic_compare_exchange_strong((*this + 20), &v5, 1u);
  }

  JUMPOUT(0x29C25C000);
}

uint64_t amber::knoxUploadStreamCommit(char **this, amber::Stream *a2, const char *a3, const char *a4, amber::KnoxPointer *a5, amber::KnoxPointer *a6, const char *a7)
{
  {

    return amber::KnoxUploadStream::commitUpload(v12, a2, a3, a4, a5);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadStream.cpp", "knoxUploadStreamCommit", 0xEC, 0, "invalid stream type", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::KnoxUploadStream::commitUpload(amber::KnoxUploadStream *this, uint64_t a2, const char *a3, const char *a4, amber::KnoxPointer *a5)
{
  *(this + 32) = a2;
  MEMORY[0x29C25BF00](this + 264, a3);
  MEMORY[0x29C25BF00](this + 288, a4);
  if ((amber::ChunkOutputStream::commit(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadStream.cpp", "commitUpload", 0x21, 0, "ChunkOutputStream commit failed", v8);
    return 0xFFFFFFFFLL;
  }

  else
  {
    amber::KnoxPointer::operator=(a5, this + 312);
    return 0;
  }
}

uint64_t amber::knoxUploadStreamCancel(char **this, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  {

    return amber::KnoxUploadStream::cancelUpload(v8);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadStream.cpp", "knoxUploadStreamCancel", 0xF4, 0, "invalid stream type", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::knoxUploadStreamGetEncryptionKey(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  {
    v14 = v9[31];
    v15 = v14 + 36;
    v16 = *(v14 + 32);
    v18[0] = &off_2A1DDFC68;
    v18[1] = v15;
    v18[2] = v16;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a2 + 8, v18, v10, v11, v12, v13, a7);
    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxUploadStream.cpp", "knoxUploadStreamGetEncryptionKey", 0xFD, 0, "invalid stream type", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::KnoxPageStream::write(amber::KnoxPageStream *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (!v7)
  {
    return 0;
  }

  v9 = *(a2 + 1);
  v10 = *(this + 4);
  if (v10)
  {
    if (v10 < 1)
    {
      v11 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if (*v9 != 91)
    {
      v11 = 0;
      *(this + 4) = -1;
      goto LABEL_27;
    }

    *(this + 4) = 1;
  }

  if (*(this + 20) == 1)
  {
    if (*v9 != 91)
    {
      v18 = "expected '['";
      v19 = 60;
      goto LABEL_33;
    }

    *(this + 20) = 0;
    v11 = 1;
    if (!--v7)
    {
      goto LABEL_34;
    }

    ++v9;
  }

  else
  {
    v11 = 0;
  }

  if (*(this + 21) == 1)
  {
    v13 = *(this + 1);
    v22 = &off_2A1DDFC68;
    v23 = "]";
    v24 = 1;
    if ((*(*v13 + 56))(v13, &v22) != 1)
    {
      v18 = "write ']'";
      v19 = 71;
      goto LABEL_33;
    }

    *(this + 21) = 0;
  }

  v14 = 0;
  v15 = MEMORY[0x29EDCA600];
  while (1)
  {
    v16 = v9[v7 - 1 + v14];
    if ((v16 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v15 + 4 * v16 + 60) & 0x4000) == 0)
    {
      goto LABEL_25;
    }

LABEL_21:
    --v14;
    if (!(v7 + v14))
    {
      v17 = 0;
      v11 += v7;
      return v11 + v17;
    }
  }

  if (__maskrune(v16, 0x4000uLL))
  {
    goto LABEL_21;
  }

LABEL_25:
  v7 += v14;
  v11 -= v14;
  if (v9[v7 - 1] == 93)
  {
    *(this + 21) = 1;
    ++v11;
    if (!--v7)
    {
LABEL_34:
      v17 = 0;
      return v11 + v17;
    }
  }

LABEL_27:
  *(this + 22) = 1;
  v20 = *(this + 1);
  v22 = &off_2A1DDFC68;
  v23 = v9;
  v24 = v7;
  if (v7 < 0 || !v9)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v17 = amber::Stream::writeExpected(v20, &v22, a3, a4, a5, a6, a7);
  if ((v17 & 0x8000000000000000) == 0)
  {
    return v11 + v17;
  }

  v19 = 96;
  v18 = "write";
LABEL_33:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "write", v19, 0, v18, a7);
  return -1;
}

uint64_t amber::KnoxPageStream::endPage(amber::KnoxPageStream *this)
{
  if (*(this + 4) < 1 || *(this + 21) != 1)
  {
    goto LABEL_6;
  }

  if (*(this + 22) != 1 || (v2 = *(this + 1), v5[0] = &off_2A1DDFC68, v5[1] = ",", v5[2] = 1, (*(*v2 + 56))(v2, v5) == 1))
  {
    *(this + 10) = 1;
LABEL_6:
    result = 0;
    *(this + 22) = 0;
    return result;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "endPage", 0x72, 0, "write ','", v3);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxPageStream::endStream(amber::KnoxPageStream *this)
{
  if (*(this + 4) < 1 || *(this + 21) != 1)
  {
    return 0;
  }

  v6[3] = v1;
  v6[4] = v2;
  v3 = *(this + 1);
  v6[0] = &off_2A1DDFC68;
  v6[1] = "]\n";
  v6[2] = 2;
  if ((*(*v3 + 56))(v3, v6) == 2)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "endStream", 0x84, 0, "writing final ']'", v4);
  return 0xFFFFFFFFLL;
}

uint64_t amber::HTTPContext::setHost(uint64_t this, const char *a2)
{
  if (a2 && *a2)
  {
    JUMPOUT(0x29C25BF00);
  }

  if (*(this + 215) < 0)
  {
    **(this + 192) = 0;
    *(this + 200) = 0;
  }

  else
  {
    *(this + 192) = 0;
    *(this + 215) = 0;
  }

  return this;
}

uint64_t amber::HTTPContext::setSpace(uint64_t this, const char *a2)
{
  if (a2 && *a2)
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

void amber::KnoxContext::~KnoxContext(amber::KnoxContext *this)
{
  amber::HTTPContext::~HTTPContext(this);

  JUMPOUT(0x29C25C000);
}

void amber::KnoxContext::parseDecryptionComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  amber::Buffer::constBuf(a1, a7, &v9);
  amber::ConstMemoryView::view(&v9, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v8, &v14);
  amber::JSONInputStream::JSONInputStream(v10, &v14);
}

void sub_2969C1DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  amber::JSONInputStream::~JSONInputStream(va);
  if (*(v14 - 121) < 0)
  {
    operator delete(*(v14 - 144));
  }

  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContext::appendAccessGroups(amber::JSONOutputStream *a1, const char *a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginArray(a1, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v27 = 236;
  }

  else
  {
    v16 = *a3;
    if (*a3 == a3[1])
    {
LABEL_8:
      if ((amber::JSONOutputStream::end(a1, v10, v11, v12, v13, v14, v15) & 0x80000000) == 0)
      {
        return 0;
      }

      v27 = 245;
    }

    else
    {
      while ((amber::JSONOutputStream::beginDict(a1, 0, v11, v12, v13, v14, v15) & 0x80000000) == 0)
      {
        v28[0] = "apple-connect";
        v28[1] = 13;
        if ((amber::JSONOutputStream::append(a1, "method", v28, v17, v18, v19, v15) & 0x80000000) != 0 || (amber::JSONOutputStream::append(a1, "value", 1, *v16, a4, v20, v15) & 0x80000000) != 0 || (amber::JSONOutputStream::end(a1, v21, v22, v23, v24, v25, v15) & 0x80000000) != 0)
        {
          break;
        }

        if (++v16 == a3[1])
        {
          goto LABEL_8;
        }
      }

      v27 = 243;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "appendAccessGroups", v27, 0, "append access groups", v15);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxContext::knoxEnqueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v17[0] = v17;
  v17[1] = v17;
  v17[2] = 0;
  if ((amber::KnoxContext::getRequestURL(a1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "knoxEnqueue", 0x105, 0, "get query url", v13);
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v19 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = amber::HTTPContext::httpEnqueue(a1, a2, v14, v17, a4, a5, &amber::HTTPContext::FullRange, 1, a6, a7);
  }

  std::__list_imp<std::string>::clear(v17);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_2969C205C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::__list_imp<std::string>::clear(&a11);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContext::getRequestURL(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  __p = 0;
  v6 = 0;
  v7 = 0;
  if ((amber::BaseObject::getAttributeString(a1, 407, &__p) & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v3 = HIBYTE(v7);
  if (v7 < 0)
  {
    v3 = v6;
  }

  if (!v3)
  {
LABEL_8:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "getRequestURL", 0x1A8, 0, "No Westgate token", v2);
    goto LABEL_18;
  }

  if (*(a1 + 215) < 0)
  {
    if (!*(a1 + 200) || !*(a1 + 192))
    {
      goto LABEL_17;
    }

LABEL_11:
    if (*(a1 + 239) < 0)
    {
      if (!*(a1 + 224) || !*(a1 + 216))
      {
        goto LABEL_17;
      }
    }

    else if (!*(a1 + 239))
    {
      goto LABEL_17;
    }

    operator new();
  }

  if (*(a1 + 215))
  {
    goto LABEL_11;
  }

LABEL_17:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "getRequestURL", 0x1A9, 0, "invalid host/space", v2);
LABEL_18:
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return 0xFFFFFFFFLL;
}

void sub_2969C2370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  operator delete(v20);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContext::knoxPerform(amber::KnoxContext *this, unsigned int a2, const char *a3, const amber::ConstMemoryView *a4, amber::Buffer *a5)
{
  v22[0] = &unk_2A1DDFD28;
  v22[2] = 0;
  v22[3] = 0;
  v22[1] = off_2A1DDFD48;
  v22[5] = 0;
  v22[6] = 0;
  v22[4] = &off_2A1DDFDA8;
  v22[7] = &off_2A1DDFC68;
  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  v26 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v18[0] = v18;
  v18[1] = v18;
  v18[2] = 0;
  v15[0] = v15;
  v15[1] = v15;
  v15[2] = 0;
  v16 = 0;
  v17 = -1;
  if ((amber::KnoxContext::getRequestURL(this) & 0x80000000) == 0)
  {
    amber::bufferStreamOpen(a5, v6);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "knoxPerform", 0x124, 0, "get query url", v7);
  std::__list_imp<std::string>::clear(v15);
  std::__list_imp<std::string>::clear(v18);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  amber::Buffer::~Buffer(v22, v8, v9, v10, v11, v12, v13);
  return 0xFFFFFFFFLL;
}

void sub_2969C2984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<std::string>::clear(&a21);
  std::__list_imp<std::string>::clear(&a25);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  amber::Buffer::~Buffer(&a34, v35, v36, v37, v38, v39, v40);
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContext::kmsGetKey(amber::KnoxContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  memset(&v18, 0, sizeof(v18));
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  v9 = *(a2 + 312);
  v14[0] = &off_2A1DDFC68;
  v14[1] = a2 + 316;
  v14[2] = v9;
  v15 = 0;
  if (amber::hexBytesToStringEnd(v14, &v18, a3, a4, a5, a6, a7) < 0 || ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v11 = &v18) : (v11 = v18.__r_.__value_.__r.__words[0]), (amber::KnoxContext::fileDecryptionComponents(a1, v11, __p, &v15, a3) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "kmsGetKey", 0x176, 0, "key lookup failed", v10);
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_2969C2B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::KnoxContext::kmsCreateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = &unk_2A1DE1AD8;
  v77 = &unk_2A1DE1008;
  memset(v78, 0, sizeof(v78));
  v79 = 0u;
  v80 = 0;
  v81 = -1;
  memset(v82, 0, sizeof(v82));
  memset(v83, 0, sizeof(v83));
  v60[0] = &unk_2A1DE0CE8;
  v60[1] = &unk_2A1DE1008;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  v66 = -1;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v55[0] = &unk_2A1DDFD28;
  v55[2] = 0;
  v55[3] = 0;
  v55[1] = off_2A1DDFD48;
  v55[5] = 0;
  v55[6] = 0;
  v55[4] = &off_2A1DDFDA8;
  v55[7] = &off_2A1DDFC68;
  v56 = 0u;
  v57 = 0u;
  v58 = 1;
  v59 = 0;
  std::string::operator=(v78, (a2 + 8));
  if (&v77 != a2)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v78[1].__r_.__value_.__r.__words, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v79, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  }

  v81 = *(a2 + 80);
  v13 = *(a3 + 312);
  v84 = &off_2A1DDFC68;
  v85 = a3 + 316;
  v86 = v13;
  amber::hexBytesToStringEnd(&v84, v83, v8, v9, v10, v11, v12);
  MEMORY[0x29C25BF00](&v83[24], "AEBD-STORAGE-TAG-256");
  v14 = *(a3 + 32);
  v84 = &off_2A1DDFC68;
  v85 = a3 + 36;
  v86 = v14;
  amber::hexBytesToStringEnd(&v84, &v82[1], v15, v16, v17, v18, v19);
  std::string::push_back(&v82[1], 95);
  v20 = *(a3 + 312);
  v84 = &off_2A1DDFC68;
  v85 = a3 + 316;
  v86 = v20;
  amber::hexBytesToStringEnd(&v84, &v82[1], v21, v22, v23, v24, v25);
  std::string::append(v82, "{container-id:");
  v26 = *(a3 + 32);
  v84 = &off_2A1DDFC68;
  v85 = a3 + 36;
  v86 = v26;
  amber::hexBytesToStringEnd(&v84, v82, v27, v28, v29, v30, v31);
  std::string::append(v82, ",storage-tag:");
  v32 = *(a3 + 312);
  v84 = &off_2A1DDFC68;
  v85 = a3 + 316;
  v86 = v32;
  amber::hexBytesToStringEnd(&v84, v82, v33, v34, v35, v36, v37);
  std::string::append(v82, "}");
  if ((amber::Buffer::appendRandom(v55, 0x4000uLL, v38, v39, v40, v41, v42) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "kmsCreateKey", 0x195, 0, "generating KMS blob", v43);
    v52 = 0xFFFFFFFFLL;
  }

  else
  {
    amber::Buffer::constBuf(v55, v43, &v84);
    amber::ConstMemoryView::view(&v84, v57, *(&v57 + 1) - v57, v44, v54);
    v52 = amber::KnoxContext::fileCreate(a1, &v76, v54, 0, v60, a4, v45);
  }

  amber::Buffer::~Buffer(v55, v46, v47, v48, v49, v50, v51);
  amber::KnoxPointer::~KnoxPointer(v60);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(&v76);
  return v52;
}

void sub_2969C2FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  amber::Buffer::~Buffer(&a13, a2, a3, a4, a5, a6, a7);
  amber::KnoxPointer::~KnoxPointer(&a26);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(&a56);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxContextDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberKnoxContextPerform(amber::KnoxContext *this, unsigned int a2, char *a3, amber::Buffer *a4, amber::Buffer *a5, uint64_t a6, const char *a7)
{
  v19 = 0uLL;
  v18 = &off_2A1DDFC68;
  if (a5)
  {
    amber::Buffer::resize(a5, 0, a3, a4, a5, a6, a7);
  }

  if (a4)
  {
    amber::Buffer::constBuf(a4, a7, v20);
    amber::ConstMemoryView::view(v20, *(a4 + 10), *(a4 + 11) - *(a4 + 10), v12, &v16);
    v19 = v17;
  }

  v14 = amber::KnoxContext::knoxPerform(this, a2, a3, &v18, a5);
  if (v14 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContext.cpp", "AmberKnoxContextPerform", 0x1E0, 0, "request failed", v13);
  }

  return (v14 >> 31);
}

uint64_t amber::parallelCompressionAlgorithmKey(amber *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (this >= 7)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Compression.cpp", "parallelCompressionAlgorithmKey", 0x1C, 0, "invalid compression algorithm", a7, v7, v8);
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = 0x663462657A782DuLL >> (8 * this);
  }

  return v9;
}

uint64_t amber::lookupParallelCompressionAlgorithmKey(amber *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (this <= 100)
  {
    if (this == 45)
    {
      return 0;
    }

    if (this != 52)
    {
      if (this == 98)
      {
        return 4;
      }

      goto LABEL_14;
    }

    return 5;
  }

  else if (this > 119)
  {
    if (this != 122)
    {
      if (this == 120)
      {
        return 1;
      }

      goto LABEL_14;
    }

    return 2;
  }

  else
  {
    if (this != 101)
    {
      if (this == 102)
      {
        return 6;
      }

LABEL_14:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Compression.cpp", "lookupParallelCompressionAlgorithmKey", 0x2A, 0, "invalid compression algorithm key", a7, v7, v8);
      return 0xFFFFFFFFLL;
    }

    return 3;
  }
}

size_t amber::compressionEncode(amber *this, const amber::MutableMemoryView *a2, const amber::ConstMemoryView *a3)
{
  v3 = *(a2 + 2);
  if (!v3)
  {
    return 0;
  }

  if (a3)
  {
    v6 = compressionAlgorithm(a3);
    if (v6 == 4095)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Compression.cpp", "compressionEncode", 0x47, 0, "invalid compression algorithm", v7);
      return -1;
    }

    result = compression_encode_buffer(*(this + 1), *(this + 2), *(a2 + 1), v3, 0, v6);
    if (!result)
    {
      return -1;
    }
  }

  else
  {
    if (*(this + 2) < v3)
    {
      return -1;
    }

    memcpy(*(this + 1), *(a2 + 1), v3);
    return *(a2 + 2);
  }

  return result;
}

uint64_t compressionAlgorithm(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 4095;
  }

  else
  {
    return dword_296A1565C[a1 - 1];
  }
}

size_t amber::compressionDecode(amber *this, const amber::MutableMemoryView *a2, const amber::ConstMemoryView *a3)
{
  v3 = *(a2 + 2);
  if (!v3)
  {
    return 0;
  }

  if (a3)
  {
    v6 = compressionAlgorithm(a3);
    if (v6 == 4095)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Compression.cpp", "compressionDecode", 0x57, 0, "invalid compression algorithm", v7);
      return -1;
    }

    result = compression_decode_buffer(*(this + 1), *(this + 2), *(a2 + 1), v3, 0, v6);
    if (!result)
    {
      return -1;
    }
  }

  else
  {
    if (*(this + 2) < v3)
    {
      return -1;
    }

    memcpy(*(this + 1), *(a2 + 1), v3);
    return *(a2 + 2);
  }

  return result;
}

uint64_t amber::parseCompressionAlgorithmString(amber *this, const char *a2)
{
  v3 = 0;
  while (1)
  {
    v4 = dword_296A15674[v3];
    v5 = amber::compressionAlgorithmString(v4);
    if (!strcmp(this, v5))
    {
      break;
    }

    if (++v3 == 7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t amber::EncryptedContainer::authDataSize(amber::EncryptedContainer *this)
{
  if ((*(*this + 128))(this, 124))
  {
    return (*(this + 3) - *(this + 2)) >> 4;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptedContainer.cpp", "authDataSize", 0x45, 0, "auth data not available", v2);
  return 0xFFFFFFFFLL;
}

uint64_t amber::EncryptedContainer::authDataGetEntryAtIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*(*a1 + 128))(a1, 124))
  {

    return amber::KeyValueBlob::getEntryAtIndex(a1 + 8, a2, a3, a4, v8, v9, v10);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptedContainer.cpp", "authDataGetEntryAtIndex", 0x4F, 0, "auth data not available", v10);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::EncryptedContainer::authDataGetEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 128))(a1, 124))
  {

    return amber::KeyValueBlob::getEntry(a1 + 8, a2, a3, v6, v7, v8, v9);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptedContainer.cpp", "authDataGetEntry", 0x58, 0, "auth data not available", v9);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::EncryptedContainer::authDataClear(amber::EncryptedContainer *this)
{
  if ((*(*this + 136))(this, 124))
  {
    *(this + 3) = *(this + 2);
    amber::Buffer::resize((this + 40), 0, v2, v3, v4, v5, v6);
    (*(*this + 120))(this);
    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptedContainer.cpp", "authDataClear", 0x5F, 0, "auth data not available", v6);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::EncryptedContainer::authDataSetEntry(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 136))(a1, 124))
  {
    v11 = amber::KeyValueBlob::keyIndex((a1 + 1), a2, v6, v7, v8, v9, v10);
    v15 = amber::KeyValueBlob::setEntryAtIndex(a1 + 1, v11, a2, a3, v12, v13, v14);
    (*(*a1 + 120))(a1);
    return v15;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptedContainer.cpp", "authDataSetEntry", 0x6A, 0, "auth data not available", v10);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::EncryptedContainer::authDataRemoveEntry(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 136))(a1, 124))
  {
    v9 = amber::KeyValueBlob::removeEntry((a1 + 8), a2, v4, v5, v6, v7, v8);
    (*(*a1 + 120))(a1);
    return v9;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptedContainer.cpp", "authDataRemoveEntry", 0x74, 0, "auth data not available", v8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::EncryptedContainer::invokeEncryptionContextProc(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a3(a2, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t amber::encryptionContextAuthDataGetEntry(uint64_t a1, uint64_t a2, amber::Buffer *a3)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &off_2A1DDFC68;
  result = amber::EncryptedContainer::authDataGetEntry(a1, a2, v11);
  if (result >= 1)
  {
    if ((amber::BufferProtocol<amber::Buffer>::assign(a3, v11, v5, v6, v7, v8, v9) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptionContext.cpp", "encryptionContextAuthDataGetEntry", 0xE, 0, "malloc", v10);
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AmberEncryptionContextAuthDataGetEntryAtIndex(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, void *a5, unint64_t a6, char *a7, unsigned __int8 *a8)
{
  if (a2 >> 31)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptionContext.cpp", "AmberEncryptionContextAuthDataGetEntryAtIndex", 0x2D, 0, "invalid index", a7);
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0;
    v21[1] = 0;
    v21[2] = 0;
    v21[0] = &off_2A1DDFC68;
    if ((amber::EncryptedContainer::authDataGetEntryAtIndex(a1, a2, v22, v21) & 0x80000000) == 0 && (amber::cReturnString(a3, a4, a5, v22, v14, v15, v16) & 0x80000000) == 0)
    {
      return (amber::cReturnBytes(a6, a7, a8, v21, v17, v18, v19) >> 31);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t AmberEncryptionContextAuthDataGetEntry(uint64_t a1, char *__s, unint64_t a3, void *a4, unsigned __int8 *a5)
{
  v16[1] = 0;
  v16[2] = 0;
  v16[0] = &off_2A1DDFC68;
  v15[0] = __s;
  v15[1] = strlen(__s);
  Entry = amber::EncryptedContainer::authDataGetEntry(a1, v15, v16);
  if ((Entry & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = Entry;
  if ((amber::cReturnBytes(a3, a4, a5, v16, v10, v11, v12) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v13;
  }
}

uint64_t AmberEncryptionContextAuthDataSetEntry(void *a1, char *__s, uint64_t a3, uint64_t a4)
{
  v11[0] = __s;
  v11[1] = strlen(__s);
  v10[0] = &off_2A1DDFC68;
  v10[1] = a3;
  v10[2] = a4;
  if (a4 < 0 || !a3 && a4)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::EncryptedContainer::authDataSetEntry(a1, v11, v10);
}

uint64_t AmberEncryptionContextAuthDataRemoveEntry(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return amber::EncryptedContainer::authDataRemoveEntry(a1, v4);
}

uint64_t AmberEncryptionContextParseMagic(__int128 *a1, const amber::ConstMemoryView *a2, int *a3, _DWORD *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 <= 0xF)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/EncryptedContainers/EncryptionContext.cpp", "AmberEncryptionContextParseMagic", 0x5F, 0, "truncated magic", a7);
    return 0xFFFFFFFFLL;
  }

  if (*a1 == 1145193793)
  {
    v18 = *a1;
    v15 = &off_2A1DDFC68;
    v16 = &v18;
    v17 = 16;
    v14 = amber::AEBDContainer::prologueSizeWithMagic(&v15, a2, a3, a4, a5, a6, a7);
    if (v14 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = v14;
    result = 0;
    v12 = BYTE4(v18);
    v13 = BYTE4(v18) >= 5u;
  }

  else
  {
    if (*a1 != 826361153)
    {
      return 0xFFFFFFFFLL;
    }

    *&v18 = *a1;
    DWORD2(v18) = *(a1 + 2);
    v15 = &off_2A1DDFC68;
    v16 = &v18;
    v17 = 12;
    v9 = amber::AEAContainer::prologueSizeWithMagic(&v15, a2, a3, a4, a5, a6, a7);
    if (v9 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = v9;
    result = 0;
    v12 = BYTE4(v18);
    v13 = BYTE4(v18) >= 6u;
  }

  if (v13)
  {
    v12 = -1;
  }

  *a3 = v12;
  *a4 = v10;
  return result;
}

void amber::KnoxAEADownloadStream::open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = &unk_2A1DDFDD8;
  v7 = &unk_2A1DDFE08;
  v8 = 0u;
  v9 = 0u;
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
  v24 = 0;
  v25 = a5;
  v26 = a6;
  operator new();
}

void sub_2969C4144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ContainerUnlockExistingData::unlockProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v16 = 0;
  v17[0] = 0;
  if ((AmberObjectGetAttribute(a2, 116, 2, 4uLL, &v16, v17, a7) & 0x80000000) == 0 && (v17[0] == 4 ? (v9 = v16 == 0) : (v9 = 0), v9 && (v10 = *(a1 + 16), v10) && (v17[0] = &off_2A1DDFC68, v17[1] = a1 + 20, v17[2] = v10, ((*(*a2 + 24))(a2, 127, 3, v17) & 0x80000000) != 0)))
  {
    v14 = "set context";
    v15 = 56;
  }

  else
  {
    v12 = *(a1 + 288);
    if (!v12 || (v12(*(a1 + 280), a2) & 0x80000000) == 0)
    {
      return 0;
    }

    v14 = "client context proc";
    v15 = 58;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEADownloadStream.cpp", "unlockProc", v15, 0, v14, v11);
  return 0xFFFFFFFFLL;
}

void amber::KnoxAEADownloadStream::~KnoxAEADownloadStream(atomic_uint *this)
{
  *this = &unk_2A1DE2A70;
  if ((amber::KnoxAEADownloadStream::close(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxAEADownloadStream.cpp", "~KnoxAEADownloadStream", 0x66, 0, "close() reported errors in destructor", v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  amber::KnoxAEADownloadStream::~KnoxAEADownloadStream(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::KnoxAEADownloadStream::close(atomic_uint *this)
{
  v2 = 0;
  result = 0;
  atomic_compare_exchange_strong(this + 6, &v2, 1u);
  if (!v2)
  {
    v4 = *(this + 1);
    if (v4)
    {
      v5 = (*(*v4 + 32))(v4) >= 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(this + 2);
    if (v6 && (*(*v6 + 32))(v6) < 0)
    {
      v5 = 0;
    }

    if (v5)
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

void AmberKnoxAEADownloadStreamOpen(amber *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a7)
  {
    amber::defaultThreadCount(a1);
  }

  amber::KnoxAEADownloadStream::open(a1, a2, a3, a4, a5, a6);
}

uint64_t amber::DiskImageIORingsSubscriber::DiskImageIORingsSubscriber(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 56) = a1;
  amber::zero(void *,unsigned long)::memset_func();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  *(a1 + 88) = 850045863;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v8 = dispatch_queue_create("com.apple.diplugin.amber", MEMORY[0x29EDCA580]);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = v8;
  *(a1 + 200) = 0;
  v9 = 1;
  atomic_compare_exchange_strong((a1 + 200), &v9, 0);
  *a1 = amber::DiskImageIORingsSubscriber::add_sqe_cb;
  *(a1 + 8) = amber::DiskImageIORingsSubscriber::execute_cb;
  *(a1 + 16) = amber::DiskImageIORingsSubscriber::is_async_cb;
  *(a1 + 24) = amber::DiskImageIORingsSubscriber::suspend_cb;
  *(a1 + 32) = amber::DiskImageIORingsSubscriber::resume_cb;
  *(a1 + 40) = amber::DiskImageIORingsSubscriber::cancel_cb;
  *(a1 + 48) = amber::DiskImageIORingsSubscriber::release_cb;
  return a1;
}

uint64_t amber::DiskImageIORingsSubscriber::add_sqe_cb(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = 0;
  }

  std::mutex::lock((v3 + 88));
  v5 = *(v3 + 160);
  v4 = *(v3 + 168);
  if (v5 >= v4)
  {
    v7 = *(v3 + 152);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<io_rings_sqe_t const*>>(v3 + 152, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(v3 + 152);
    v14 = *(v3 + 160) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(v3 + 152);
    *(v3 + 152) = v15;
    *(v3 + 160) = v6;
    *(v3 + 168) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(v3 + 160) = v6;
  std::mutex::unlock((v3 + 88));
  return 0;
}

void amber::DiskImageIORingsSubscriber::execute_cb(uint64_t a1)
{
  if (a1)
  {
    a1 = *(a1 + 56);
  }

  if (!atomic_load((a1 + 200)))
  {
    amber::DiskImageIORingsSubscriber::execute(a1);
  }
}

amber::BlockDevice *amber::DiskImageIORingsSubscriber::suspend_cb(amber::BlockDevice *result)
{
  if (result)
  {
    v1 = *(result + 7);
  }

  else
  {
    v1 = 0;
  }

  v2 = 0;
  atomic_compare_exchange_strong(v1 + 50, &v2, 1u);
  if (!v2)
  {
    amber::DiskImageIORingsSubscriber::execute(v1);

    return amber::DiskImageIORingsSubscriber::wait(v1);
  }

  return result;
}

void amber::DiskImageIORingsSubscriber::resume_cb(uint64_t a1)
{
  if (a1)
  {
    a1 = *(a1 + 56);
  }

  v1 = 1;
  atomic_compare_exchange_strong((a1 + 200), &v1, 0);
  if (v1 == 1)
  {
    amber::DiskImageIORingsSubscriber::execute(a1);
  }
}

uint64_t amber::DiskImageIORingsSubscriber::cancel_cb(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 56);
  }

  else
  {
    v1 = 0;
  }

  amber::DiskImageIORingsSubscriber::execute(v1);
  amber::DiskImageIORingsSubscriber::wait(v1);
  result = AmberBlockDeviceClose(v1[9]);
  v1[9] = 0;
  return result;
}

amber::DiskImageIORingsSubscriber *amber::DiskImageIORingsSubscriber::release_cb(amber::DiskImageIORingsSubscriber *result)
{
  if (result)
  {
    result = *(result + 7);
    if (result)
    {
      amber::DiskImageIORingsSubscriber::~DiskImageIORingsSubscriber(result);

      JUMPOUT(0x29C25C000);
    }
  }

  return result;
}

void amber::DiskImageIORingsSubscriber::~DiskImageIORingsSubscriber(amber::DiskImageIORingsSubscriber *this)
{
  AmberBlockDeviceClose(*(this + 9));
  dispatch_release(*(this + 22));
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((this + 88));
}

void amber::DiskImageIORingsSubscriber::execute(amber::DiskImageIORingsSubscriber *this)
{
  std::mutex::lock((this + 88));
  v2 = *(this + 19);
  v3 = *(this + 20);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  std::mutex::unlock((this + 88));
  atomic_fetch_add(this + 24, v3 - v2);
  if (v3 != v2)
  {
    v4 = MEMORY[0x29EDCA5F8];
    v5 = v2;
    do
    {
      v6 = *v5++;
      v7 = *(this + 22);
      v8[0] = v4;
      v8[1] = 0x40000000;
      v8[2] = ___ZN5amber26DiskImageIORingsSubscriber7executeEv_block_invoke;
      v8[3] = &__block_descriptor_tmp_1;
      v8[4] = this;
      v8[5] = v6;
      dispatch_async(v7, v8);
    }

    while (v5 != v3);
  }

  if (v2)
  {
    operator delete(v2);
  }
}

amber::BlockDevice *amber::DiskImageIORingsSubscriber::wait(amber::DiskImageIORingsSubscriber *this)
{
  result = *(this + 9);
  if (result)
  {
    amber::BlockDevice::barrier(result);
  }

  v3 = atomic_load(this + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      result = usleep(0x4E20u);
      v5 = atomic_load(this + 24);
      if (v5 < 1)
      {
        break;
      }
    }

    while (v4++ < 0x18F);
  }

  return result;
}

uint64_t ___ZN5amber26DiskImageIORingsSubscriber7executeEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v28[75] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 32);
  if (**(a1 + 40) == 2 && *(v8 + 72))
  {
    amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v25, 0);
    v10 = *(a1 + 40);
    v11 = *(v8 + 80);
    v12 = *(v10 + 48) * v11;
    if (HIDWORD(v12))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImageIORingsSubscriber.cpp", "execute_block_invoke", 0x9A, 0, "invalid length", v9);
LABEL_11:
      amber::ObjectStorePath::~ObjectStorePath(v28);
      std::condition_variable::~condition_variable(&v27);
      std::mutex::~mutex(&v26);
      goto LABEL_12;
    }

    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    if (v13[1] >= v12)
    {
      v19 = *v13;
    }

    else if (!malloc_type_malloc(*(v10 + 48) * v11, 0xF93785E2uLL))
    {
      v15 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/./.././Memory/./Malloc.hpp", "malloc", 0x1F, *v15, "malloc", v16);
      v17 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImageIORingsSubscriber.cpp", "execute_block_invoke", 0x9E, *v17, "malloc", v18);
      goto LABEL_11;
    }

    v20 = *(v8 + 72);
    atomic_fetch_add_explicit((v8 + 184), 1uLL, memory_order_relaxed);
    AmberBlockDeviceRequestCreate();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImageIORingsSubscriber.cpp", "execute_block_invoke", 0xC3, 0, "operation not supported", a7);
LABEL_12:
  v21 = *(v8 + 64);
  v22 = *(a1 + 40);
  result = io_rings_return_status();
  atomic_fetch_add((v8 + 192), 0xFFFFFFFFFFFFFFFFLL);
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2969C4D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<io_rings_sqe_t const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t amber::JSONCodable::jsonParseFromFile(amber::JSONCodable *this, amber *a2, uint64_t a3, unsigned __int16 a4)
{
  v6 = amber::fileStreamOpenWithPath(a2, 0, 0, a4);
  if (v6)
  {
    v8 = v6;
    amber::JSONInputStream::JSONInputStream(v11, v6);
    v9 = (*(*this + 16))(this, v11);
    amber::JSONInputStream::~JSONInputStream(v11);
    (*(*v8 + 8))(v8);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONCodable.cpp", "jsonParseFromFile", 8, 0, "open: %s", v7, a2);
    return 0xFFFFFFFFLL;
  }

  return v9;
}

void sub_2969C4EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONInputStream::~JSONInputStream(va);
  _Unwind_Resume(a1);
}

void sub_2969C4F9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONInputStream::~JSONInputStream(va);
  _Unwind_Resume(a1);
}

uint64_t amber::JSONCodable::jsonParseFromFileAt(amber::JSONCodable *this, amber *a2, const char *a3, uint64_t a4, unsigned __int16 a5)
{
  v7 = amber::fileStreamOpenWithPathAt(a2, a3, 0, 0, a5);
  if (v7)
  {
    v9 = v7;
    amber::JSONInputStream::JSONInputStream(v12, v7);
    v10 = (*(*this + 16))(this, v12);
    amber::JSONInputStream::~JSONInputStream(v12);
    (*(*v9 + 8))(v9);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONCodable.cpp", "jsonParseFromFileAt", 0x22, 0, "open: %s", v8, a3);
    return 0xFFFFFFFFLL;
  }

  return v10;
}

void sub_2969C50A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONInputStream::~JSONInputStream(va);
  _Unwind_Resume(a1);
}

void sub_2969C5124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONInputStream::~JSONInputStream(va);
  _Unwind_Resume(a1);
}

void sub_2969C51AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t amber::JSONCodable::jsonSerializeToFile(amber::JSONCodable *this, amber *a2, uint64_t a3, unsigned __int16 a4)
{
  v6 = amber::fileStreamOpenWithPath(a2, 0x601, 420, a4);
  if (v6)
  {
    v8 = v6;
    amber::JSONOutputStream::JSONOutputStream(v11, v6, 1);
    v9 = (*(*this + 24))(this, v11, 0);
    amber::JSONOutputStream::~JSONOutputStream(v11);
    (*(*v8 + 8))(v8);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONCodable.cpp", "jsonSerializeToFile", 0x3B, 0, "open: %s", v7, a2);
    return 0xFFFFFFFFLL;
  }

  return v9;
}

void sub_2969C52B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  _Unwind_Resume(a1);
}

void sub_2969C53B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t amber::JSONCodable::jsonSerializeToFileAt(amber::JSONCodable *this, amber *a2, const char *a3, uint64_t a4, unsigned __int16 a5)
{
  v7 = amber::fileStreamOpenWithPathAt(a2, a3, 0x601, 420, a5);
  if (v7)
  {
    v9 = v7;
    amber::JSONOutputStream::JSONOutputStream(v12, v7, 1);
    v10 = (*(*this + 24))(this, v12, 0);
    amber::JSONOutputStream::~JSONOutputStream(v12);
    (*(*v9 + 8))(v9);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONCodable.cpp", "jsonSerializeToFileAt", 0x55, 0, "open: %s", v8, a3);
    return 0xFFFFFFFFLL;
  }

  return v10;
}

void sub_2969C54C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  _Unwind_Resume(a1);
}

void *amber::SharedMemorySemaphore::SharedMemorySemaphore(void *this, const amber::MutableMemoryView *a2)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1DE2B20;
  if (*(a2 + 2) <= 0x3FuLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "insufficient allocation");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v2 = *(a2 + 1);
  this[1] = v2;
  this[2] = v2 + 8;
  return this;
}

uint64_t amber::SharedMemorySemaphore::initialize(amber::SharedMemorySemaphore *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 2) > 0x3FuLL)
  {
    amber::SharedMemorySemaphore::SharedMemorySemaphore(v10, this);
    result = 0;
    v9 = v10[2];
    *v10[1] = 0;
    atomic_store(a2, v9);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemorySync.cpp", "initialize", 0x75, 0, "insufficient allocation", a7);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void amber::SharedMemorySemaphore::acquire(atomic_ullong *volatile *this)
{
  v1 = 1;
  atomic_compare_exchange_strong(this[2], &v1, 0);
  if (v1 != 1)
  {
    do
    {
      v3 = v1;
      if (!v1)
      {
        v4 = *(this + 1);
        if ((os_sync_wait_on_address_with_timeout() & 0x80000000) != 0 && *__error() != 60 && *__error() != 4 && *__error() != 14)
        {
          v5 = *__error();
          v6 = __error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemorySync.cpp", "acquire", 0x86, v5, "futex_wait (%d)", v7, *v6);
        }

        v3 = 1;
      }

      v1 = v3;
      atomic_compare_exchange_strong(this[2], &v1, v3 - 1);
    }

    while (v1 != v3);
  }
}

void amber::SharedMemorySemaphore::release(atomic_ullong *volatile *this)
{
  atomic_fetch_add_explicit(this[2], 1uLL, memory_order_release);
  v1 = *(this + 1);
  if ((os_sync_wake_by_address_all() & 0x80000000) != 0 && *__error() != 2)
  {
    v2 = *__error();
    v3 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemorySync.cpp", "release", 0x91, v2, "futex_wake_all (%d)", v4, *v3);
  }
}

double amber::XMLInputStream::XMLInputStream(amber::XMLInputStream *this, amber::Stream *a2, char a3)
{
  *this = &unk_2A1DE2B50;
  *(this + 1) = a2;
  *(this + 16) = 0;
  *(this + 17) = a3;
  *(this + 4) = this + 32;
  *(this + 5) = this + 32;
  *(this + 6) = 0;
  *(this + 7) = &unk_2A1DDFD28;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = off_2A1DDFD48;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = &off_2A1DDFDA8;
  *(this + 14) = &off_2A1DDFC68;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 1;
  *(this + 154) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 10) = 0u;
  *(this + 26) = &unk_2A1DDFD28;
  *(this + 27) = off_2A1DDFD48;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = &off_2A1DDFDA8;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = &off_2A1DDFC68;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 152) = 1;
  *(this + 306) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = 0;
  *(this + 336) = 0;
  *(this + 86) = -1;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = &off_2A1DDFC68;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *&result = 0x100000000;
  *(this + 20) = 0x100000000;
  return result;
}

void amber::XMLInputStream::XMLInputStream(amber::XMLInputStream *this, const amber::Buffer *a2, BOOL a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(a2, a7, v11);
  amber::ConstMemoryView::view(v11, *(a2 + 10), *(a2 + 11) - *(a2 + 10), v8, v10);
  amber::memoryInputStreamOpen(v10, v9);
}

void amber::XMLInputStream::~XMLInputStream(amber::XMLInputStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE2B50;
  if (*(this + 16) == 1)
  {
    v8 = *(this + 1);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
  }

  amber::Buffer::~Buffer((this + 208), a2, a3, a4, a5, a6, a7);
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  amber::Buffer::~Buffer((this + 56), v9, v10, v11, v12, v13, v14);
  std::__list_imp<std::string>::clear(this + 4);
}

{
  amber::XMLInputStream::~XMLInputStream(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::XMLInputStream::read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 20);
  if (v7 == 16 || v7 == -1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0x58, 0, "unexpected read call", a7);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 336) == 1)
  {
    v9 = 0;
    v13 = *(a1 + 360);
    *a2 = *(a1 + 344);
    *(a2 + 16) = v13;
    *(a2 + 40) = *(a1 + 384);
    *(a2 + 56) = *(a1 + 400);
    *(a1 + 336) = 0;
    return v9;
  }

  v109 = 0;
  memset(&__p, 0, sizeof(__p));
  v107 = 0;
  v108 = (a1 + 312);
  v14 = (a1 + 160);
  memset(&v113, 0, sizeof(v113));
  while (2)
  {
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::empty(a1 + 56, a2, a3, a4, a5, a6, a7))
    {
      v20 = *(a1 + 8);
      if ((amber::Buffer::reserveEndCapacity((a1 + 56), 0x10000, v15, v16, v17, v18, v19) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(a1 + 56, 0x10000uLL, v19, &v115), v25 = (*(*v20 + 40))(v20, &v115), v25 < 0) || (amber::Buffer::grow((a1 + 56), v25, v21, v22, v23, v24, v19) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/.././Streams/./Stream.hpp", "readToBufferEnd", 0x59, 0, "readToBufferEnd", v19);
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0x69, 0, "read error: %zd", v102, -1);
        goto LABEL_271;
      }

      if (!v25)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0x6A, 0, "EOF reached", v19);
        goto LABEL_271;
      }
    }

    __c = 0;
    v115 = &off_2A1DDFDA8;
    p_c = &__c;
    v117 = 1;
    if (amber::BufferProtocol<amber::Buffer>::readAndConsume((a1 + 56), &v115, v15, v16, v17, v18, v19) < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0x6E, 0, "read from buffer", a7);
      goto LABEL_271;
    }

    switch(*(a1 + 20))
    {
      case 0:
        if (__c < 0)
        {
          v26 = __maskrune(__c, 0x4000uLL);
        }

        else
        {
          v26 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
        }

        if (v26)
        {
          goto LABEL_128;
        }

        v34 = __c;
        v36 = 1;
        if (__c == 60)
        {
          goto LABEL_192;
        }

        goto LABEL_242;
      case 1:
        if (__c == 63)
        {
          v35 = 1;
          v36 = 3;
          goto LABEL_193;
        }

        if ((amber::Buffer::unConsume((a1 + 56), 1uLL, a3, a4, a5, a6, a7) & 0x80000000) == 0)
        {
          v35 = 0;
          v43 = 9;
          goto LABEL_245;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0x86, 0, "invalid buffer state", a7);
        goto LABEL_263;
      case 2:
        v34 = __c;
        if (__c != 62)
        {
          goto LABEL_242;
        }

        v35 = 0;
        v36 = 8;
        goto LABEL_193;
      case 3:
        if (__c < 0)
        {
          v44 = __maskrune(__c, 0x4000uLL);
        }

        else
        {
          v44 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
        }

        if (v44)
        {
          goto LABEL_128;
        }

        v58 = __c;
        if (__c < 0)
        {
          v59 = __maskrune(__c, 0x100uLL);
        }

        else
        {
          v59 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x100;
        }

        if (v59 || v58 == 95 || v58 == 58)
        {
          if (*(a1 + 183) < 0)
          {
            **(a1 + 160) = 0;
            *(a1 + 168) = 0;
          }

          else
          {
            *(a1 + 160) = 0;
            *(a1 + 183) = 0;
          }

          std::string::push_back(v14, __c);
          v35 = 0;
          v43 = 4;
          goto LABEL_245;
        }

        v34 = __c;
        if (v109)
        {
          v35 = 1;
          if (__c == 63)
          {
            v36 = 2;
            goto LABEL_193;
          }

          v109 = 1;
          goto LABEL_130;
        }

        v35 = 0;
        if (__c == 47)
        {
          v36 = 13;
          goto LABEL_193;
        }

        if (__c == 62)
        {
          *(a1 + 20) = 14;
          amber::Buffer::resize((a1 + 208), 0, a3, a4, a5, a6, a7);
          goto LABEL_128;
        }

        v109 = 0;
        goto LABEL_242;
      case 4:
        v29 = __c;
        if (__c < 0)
        {
          v30 = __maskrune(__c, 0x100uLL);
        }

        else
        {
          v30 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x100;
        }

        if (v30 || v29 == 58 || v29 == 95 || ((v29 & 0x80000000) != 0 ? (v72 = 0) : (v72 = (*(MEMORY[0x29EDCA600] + 4 * v29 + 60) >> 10) & 1), (v29 - 45) < 2u || v72))
        {
          v45 = __c;
          p_p = v14;
LABEL_127:
          std::string::push_back(p_p, v45);
          goto LABEL_128;
        }

        if (v107 & 1 | ((v109 & 1) == 0))
        {
          if (__c < 0)
          {
            v95 = __maskrune(__c, 0x4000uLL);
          }

          else
          {
            v95 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
          }

          if (v95)
          {
            v35 = 0;
            v43 = 5;
            goto LABEL_245;
          }

LABEL_95:
          v34 = __c;
          if (__c == 61)
          {
            v36 = 6;
            goto LABEL_192;
          }

LABEL_242:
          v35 = 1;
          goto LABEL_130;
        }

        v97 = *(a1 + 183);
        if (v97 < 0)
        {
          if (*(a1 + 168) != 3)
          {
            goto LABEL_262;
          }

          v98 = v14->__r_.__value_.__r.__words[0];
        }

        else
        {
          v98 = v14;
          if (v97 != 3)
          {
            goto LABEL_262;
          }
        }

        data_low = LOWORD(v98->__r_.__value_.__l.__data_);
        v100 = v98->__r_.__value_.__s.__data_[2];
        if (data_low != 28024 || v100 != 108)
        {
LABEL_262:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0xA0, 0, "expected <?xml in prologue", a7);
          LOBYTE(v107) = 0;
          goto LABEL_263;
        }

        v35 = 0;
        *(a1 + 20) = 3;
        LOBYTE(v107) = 1;
        goto LABEL_129;
      case 5:
        if (__c < 0)
        {
          v48 = __maskrune(__c, 0x4000uLL);
        }

        else
        {
          v48 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
        }

        if (!v48)
        {
          goto LABEL_95;
        }

        goto LABEL_128;
      case 6:
        if (__c < 0)
        {
          v50 = __maskrune(__c, 0x4000uLL);
        }

        else
        {
          v50 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
        }

        if (v50)
        {
          goto LABEL_128;
        }

        v34 = __c;
        if (__c != 39 && __c != 34)
        {
          goto LABEL_242;
        }

        *(a1 + 20) = 7;
        v35 = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          __p.__r_.__value_.__s.__data_[0] = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
        }

        BYTE4(v107) = v34;
        goto LABEL_129;
      case 7:
        v45 = __c;
        if (__c != BYTE4(v107))
        {
          p_p = &__p;
          goto LABEL_127;
        }

        if ((v109 & 1) == 0)
        {
          v103 = 2;
          *(a1 + 20) = 3;
          goto LABEL_277;
        }

        v46 = *(a1 + 183);
        if (*(a1 + 183) < 0)
        {
          v84 = *(a1 + 168);
          if (v84 != 7)
          {
            goto LABEL_203;
          }

          v47 = v14->__r_.__value_.__r.__words[0];
        }

        else
        {
          v47 = v14;
          if (v46 != 7)
          {
            goto LABEL_172;
          }
        }

        data = v47->__r_.__value_.__l.__data_;
        v86 = *(v47->__r_.__value_.__r.__words + 3);
        if (data == 1936876918 && v86 == 1852795251)
        {
          v88 = v14;
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "1.0"))
          {
            goto LABEL_216;
          }

          v46 = *(a1 + 183);
        }

        if ((v46 & 0x80) == 0)
        {
LABEL_172:
          v88 = v14;
          v89 = v14;
          if (v46 != 8)
          {
            goto LABEL_212;
          }

          v90 = 0;
          v89 = v88;
          goto LABEL_205;
        }

        v84 = *(a1 + 168);
LABEL_203:
        v88 = v14;
        v89 = v14->__r_.__value_.__r.__words[0];
        if (v84 != 8)
        {
          goto LABEL_212;
        }

        v90 = 1;
LABEL_205:
        if (v89->__words[0] == 0x676E69646F636E65)
        {
          v93 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          if (!strcasecmp(v93, "utf-8"))
          {
LABEL_216:
            v35 = 0;
            *(a1 + 20) = 3;
            goto LABEL_215;
          }
        }

        v89 = v88;
        if (v90)
        {
          v89 = v88->__r_.__value_.__r.__words[0];
        }

LABEL_212:
        v94 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v94 = __p.__r_.__value_.__r.__words[0];
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0xBA, 0, "invalid attribute in prologue %s: '%s'", a7, v89, v94);
        v35 = 1;
LABEL_215:
        v14 = v88;
        goto LABEL_129;
      case 8:
        if (__c < 0)
        {
          v53 = __maskrune(__c, 0x4000uLL);
        }

        else
        {
          v53 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
        }

        if (v53)
        {
          goto LABEL_128;
        }

        v34 = __c;
        if (__c != 60)
        {
          goto LABEL_242;
        }

        v36 = 9;
        goto LABEL_192;
      case 9:
        if (__c < 0)
        {
          v33 = __maskrune(__c, 0x4000uLL);
        }

        else
        {
          v33 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
        }

        if (v33)
        {
          goto LABEL_128;
        }

        if (__c == 47)
        {
          v36 = 11;
LABEL_192:
          v35 = v109;
LABEL_193:
          *(a1 + 20) = v36;
          v109 = v35;
          continue;
        }

        if (__c == 33)
        {
          *(a1 + 20) = 15;
          v35 = 0;
          if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
          {
            *v113.__r_.__value_.__l.__data_ = 0;
            v113.__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            v113.__r_.__value_.__s.__data_[0] = 0;
            *(&v113.__r_.__value_.__s + 23) = 0;
          }
        }

        else
        {
          v91 = __c;
          if (__c < 0)
          {
            v92 = __maskrune(__c, 0x100uLL);
          }

          else
          {
            v92 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x100;
          }

          if (v92 || v91 == 95 || v91 == 58)
          {
            if (*(a1 + 335) < 0)
            {
              **(a1 + 312) = 0;
              *(a1 + 320) = 0;
            }

            else
            {
              *(a1 + 312) = 0;
              *(a1 + 335) = 0;
            }

            std::string::push_back(v108, __c);
            v35 = 0;
            v43 = 10;
LABEL_245:
            *(a1 + 20) = v43;
          }

          else
          {
LABEL_263:
            v35 = 1;
          }
        }

        goto LABEL_129;
      case 0xA:
        v51 = __c;
        if (__c < 0)
        {
          v52 = __maskrune(__c, 0x100uLL);
        }

        else
        {
          v52 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x100;
        }

        if (v52 || v51 == 58 || v51 == 95)
        {
          goto LABEL_126;
        }

        v73 = (v51 & 0x80000000) == 0 && (*(MEMORY[0x29EDCA600] + 4 * v51 + 60) >> 10) & 1;
        if ((v51 - 45) < 2u || v73)
        {
          goto LABEL_126;
        }

        if ((amber::Buffer::unConsume((a1 + 56), 1uLL, a3, a4, a5, a6, a7) & 0x80000000) == 0)
        {
          std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0xD2, 0, "invalid buffer state", v96);
        goto LABEL_263;
      case 0xB:
        if (__c < 0)
        {
          v28 = __maskrune(__c, 0x4000uLL);
        }

        else
        {
          v28 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
        }

        if (v28)
        {
          goto LABEL_128;
        }

        v55 = __c;
        if (__c < 0)
        {
          v56 = __maskrune(__c, 0x100uLL);
        }

        else
        {
          v56 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x100;
        }

        if (!v56 && v55 != 95 && v55 != 58)
        {
          goto LABEL_263;
        }

        if (*(a1 + 335) < 0)
        {
          **(a1 + 312) = 0;
          *(a1 + 320) = 0;
        }

        else
        {
          *(a1 + 312) = 0;
          *(a1 + 335) = 0;
        }

        std::string::push_back(v108, __c);
        v35 = 0;
        v43 = 12;
        goto LABEL_245;
      case 0xC:
        v31 = __c;
        if (__c < 0)
        {
          v32 = __maskrune(__c, 0x100uLL);
        }

        else
        {
          v32 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x100;
        }

        if (v32 || v31 == 58 || v31 == 95 || ((v31 & 0x80000000) != 0 ? (v57 = 0) : (v57 = (*(MEMORY[0x29EDCA600] + 4 * v31 + 60) >> 10) & 1), (v31 - 45) < 2u || v57))
        {
LABEL_126:
          v45 = __c;
          p_p = v108;
          goto LABEL_127;
        }

        if ((amber::Buffer::unConsume((a1 + 56), 1uLL, a3, a4, a5, a6, a7) & 0x80000000) == 0)
        {
          v35 = 0;
          v43 = 13;
          goto LABEL_245;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0xDE, 0, "invalid buffer state", a7);
        goto LABEL_263;
      case 0xD:
        if (__c < 0)
        {
          v49 = __maskrune(__c, 0x4000uLL);
        }

        else
        {
          v49 = *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
        }

        if (v49)
        {
          goto LABEL_128;
        }

        if (!*(a1 + 48))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0xE3, 0, "element close without open", a7);
          goto LABEL_263;
        }

        v60 = v14;
        v61 = *(a1 + 40);
        v62 = (v61 + 16);
        v63 = *(a1 + 335);
        if (v63 >= 0)
        {
          v64 = *(a1 + 335);
        }

        else
        {
          v64 = *(a1 + 320);
        }

        v65 = *(v61 + 39);
        v66 = v65;
        v67 = *(v61 + 24);
        if ((v65 & 0x80u) == 0)
        {
          v67 = v65;
        }

        if (v64 != v67 || (v63 >= 0 ? (v68 = v108) : (v68 = v108->__r_.__value_.__r.__words[0]), (v69 = *v62, (v65 & 0x80u) == 0) ? (v70 = v62) : (v70 = *v62), memcmp(v68, v70, v64)))
        {
          v71 = v108;
          if (v63 < 0)
          {
            v71 = v108->__r_.__value_.__r.__words[0];
          }

          if (v66 < 0)
          {
            v62 = *v62;
          }

          v14 = v60;
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0xE4, 0, "element close tag mismatch %s != %s", a7, v71, v62);
          goto LABEL_263;
        }

        std::list<std::string>::pop_front(a1 + 32);
        v14 = v60;
        v34 = __c;
        if (__c == 62)
        {
          if (*(a1 + 48))
          {
            v106 = 14;
          }

          else
          {
            v106 = 16;
          }

          *(a1 + 20) = v106;
          amber::Buffer::resize((a1 + 208), 0, a3, a4, a5, a6, a7);
          v103 = 1;
          goto LABEL_277;
        }

        goto LABEL_242;
      case 0xE:
        if (*(a1 + 17) == 1)
        {
          v27 = __c < 0 ? __maskrune(__c, 0x4000uLL) : *(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x4000;
          if (v27 && amber::ConstMemoryViewConvertible<amber::Buffer>::empty(a1 + 208, a2, a3, a4, a5, a6, a7))
          {
            goto LABEL_128;
          }
        }

        if (__c != 60)
        {
          v110 = &off_2A1DDFDA8;
          *&v111 = &__c;
          *(&v111 + 1) = 1;
          v115 = &off_2A1DDFC68;
          p_c = &__c;
          v117 = 1;
          amber::BufferProtocol<amber::Buffer>::append((a1 + 208), &v115, a3, a4, a5, a6, a7);
LABEL_128:
          v35 = 0;
LABEL_129:
          v34 = __c;
LABEL_130:
          if (v34 == 10)
          {
            ++*(a1 + 24);
          }

          if (v35)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/XMLInputStream.cpp", "read", 0x10E, 0, "XML parse error line %d: char %c", a7, *(a1 + 24), v34);
LABEL_271:
            v9 = 0xFFFFFFFFLL;
            *(a1 + 20) = -1;
            goto LABEL_272;
          }

          continue;
        }

        *(a1 + 20) = 9;
        if (*(a1 + 17) == 1)
        {
          v79 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a1 + 208, a2, a3, a4, a5, a6, a7);
          do
          {
            v80 = v79;
            if (!v79)
            {
              break;
            }

            --v79;
            v81 = amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](a1 + 208, v80 - 1, v74, v75, v76, v77, v78);
            v82 = *v81;
          }

          while (v82 < 0 ? __maskrune(*v81, 0x4000uLL) : *(MEMORY[0x29EDCA600] + 4 * v82 + 60) & 0x4000);
          amber::Buffer::resize((a1 + 208), v80, v74, v75, v76, v77, v78);
        }

        if (amber::ConstMemoryViewConvertible<amber::Buffer>::empty(a1 + 208, a2, a3, a4, a5, a6, a7))
        {
          goto LABEL_128;
        }

        v103 = 3;
LABEL_277:
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 56) = 0;
        *a2 = v103;
        *(a2 + 60) = *(a1 + 24);
        *(a2 + 56) = *(a1 + 48) + 1;
        if (v103 > 1)
        {
          if (v103 == 2)
          {
            v104 = (a1 + 184);
            std::string::operator=((a1 + 184), &__p);
            if (*(a1 + 183) < 0)
            {
              v14 = v14->__r_.__value_.__r.__words[0];
            }

            *(a2 + 16) = v14;
            if (*(a1 + 207) < 0)
            {
              v104 = *v104;
            }

            v9 = 0;
            *(a2 + 24) = v104;
          }

          else
          {
            amber::Buffer::constBuf(a1 + 208, a7, &v115);
            amber::ConstMemoryView::view(&v115, *(a1 + 288), *(a1 + 296) - *(a1 + 288), v105, &v110);
            v9 = 0;
            *(a2 + 40) = v111;
          }
        }

        else
        {
          v9 = 0;
        }

LABEL_272:
        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v113.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return v9;
      case 0xF:
        std::string::push_back(&v113, __c);
        size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
        if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v113.__r_.__value_.__l.__size_;
        }

        if (size < 3)
        {
          goto LABEL_128;
        }

        v38 = &v113;
        if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v38 = v113.__r_.__value_.__r.__words[0];
        }

        v39 = v38 + size;
        v40 = *(v39 - 3);
        v41 = *(v39 - 1);
        if (v40 != 11565 || v41 != 62)
        {
          goto LABEL_128;
        }

        v35 = 0;
        v43 = 8;
        goto LABEL_245;
      default:
        goto LABEL_263;
    }
  }
}

void sub_2969C6AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::Buffer::unConsume(amber::Buffer *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 10);
  v8 = v7 >= a2;
  v9 = v7 - a2;
  if (!v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/XML/.././Memory/./Buffer.hpp", "unConsume", 0x85, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(this + 10) = v9;
  return 0;
}

void std::list<std::string>::pop_front(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *v1;
  v3 = *(v1 + 8);
  v4[1] = v3;
  *v3 = v4;
  *(a1 + 16) = v2 - 1;
  std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v1);
}

amber::JSONOutputStream *amber::JSONOutputStream::JSONOutputStream(amber::JSONOutputStream *this, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE2B80;
  *(this + 8) = a3;
  *(this + 2) = a2;
  *(this + 24) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v8 = (this + 56);
  *(this + 7) = &unk_2A1DDFD28;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = off_2A1DDFD48;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = &off_2A1DDFDA8;
  *(this + 14) = &off_2A1DDFC68;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 1;
  *(this + 154) = 0;
  *(this + 20) = &unk_2A1DDFD28;
  *(this + 21) = off_2A1DDFD48;
  *(this + 22) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 23) = 0;
  *(this + 24) = &off_2A1DDFDA8;
  *(this + 27) = &off_2A1DDFC68;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 128) = 1;
  *(this + 258) = 0;
  amber::Buffer::reserve((this + 160), 0x4000uLL, a3, a4, a5, a6, a7);
  amber::Buffer::reserve(v8, 0x40uLL, v9, v10, v11, v12, v13);
  return this;
}

void sub_2969C6DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v11 = v10;
  amber::Buffer::~Buffer(v9, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(v8, v13, v14, v15, v16, v17, v18);
  v19 = *v11;
  if (*v11)
  {
    *(v7 + 40) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void amber::JSONOutputStream::~JSONOutputStream(amber::JSONOutputStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE2B80;
  if (*(this + 4) != *(this + 5))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "~JSONOutputStream", 0x2C, 0, "invalid JSON stream state in Close", a7);
  }

  if ((amber::JSONOutputStream::flush(this, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "~JSONOutputStream", 0x2D, 0, "JSON stream flush failed", v13);
  }

  if (*(this + 24) == 1)
  {
    v14 = *(this + 2);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  amber::Buffer::~Buffer((this + 160), v8, v9, v10, v11, v12, v13);
  amber::Buffer::~Buffer((this + 56), v15, v16, v17, v18, v19, v20);
  v21 = *(this + 4);
  if (v21)
  {
    *(this + 5) = v21;
    operator delete(v21);
  }
}

{
  amber::JSONOutputStream::~JSONOutputStream(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::JSONOutputStream::flush(amber::JSONOutputStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::ConstMemoryViewConvertible<amber::Buffer>::empty(this + 160, a2, a3, a4, a5, a6, a7))
  {
    v9 = *(this + 2);
    amber::Buffer::constBuf(this + 160, v8, v24);
    amber::ConstMemoryView::view(v24, *(this + 30), *(this + 31) - *(this + 30), v10, v23);
    v16 = amber::Stream::writeExpected(v9, v23, v11, v12, v13, v14, v15);
    if ((v16 & 0x8000000000000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "flush", 0x148, 0, "write failed: %zd", v21, v16);
      return 0xFFFFFFFFLL;
    }

    amber::Buffer::resize((this + 160), 0, v17, v18, v19, v20, v21);
  }

  return 0;
}

uint64_t amber::JSONOutputStream::pushLabel(amber::JSONOutputStream *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(this + 4);
  v7 = *(this + 5);
  v9 = v7 - v8;
  if (v7 == v8)
  {
    v14 = "invalid JSON state";
    v15 = 355;
LABEL_13:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "pushLabel", v15, 0, v14, a7);
    return 0xFFFFFFFFLL;
  }

  v11 = *(v7 - 4);
  if (v11)
  {
    a2 = 0;
  }

  if (a2)
  {
    v13 = strlen(a2);
  }

  else
  {
    v13 = 0;
  }

  if ((amber::Buffer::reserveEndCapacity((this + 56), v13 + (v9 >> 1) + 8, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v14 = "aux buffer full";
    v15 = 360;
    goto LABEL_13;
  }

  if ((v11 & 2) != 0)
  {
    if ((amber::Buffer::reserveEndCapacity((this + 56), 1, v16, v17, v18, v19, a7) & 0x80000000) == 0)
    {
      amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, a7, &v55);
      memset(v56, 44, v57);
      amber::Buffer::grow((this + 56), 1, v21, v22, v23, v24, v25);
    }
  }

  else
  {
    *(*(this + 4) + v9 - 4) |= 2u;
  }

  v26 = *(this + 8);
  if (*(this + 8) && (amber::Buffer::reserveEndCapacity((this + 56), *(this + 8), v16, v17, v18, v19, a7) & 0x80000000) == 0)
  {
    amber::BufferProtocol<amber::Buffer>::endView(this + 56, v26, a7, &v55);
    memset(v56, 10, v57);
    amber::Buffer::grow((this + 56), v26, v27, v28, v29, v30, v31);
  }

  if (*(this + 8) == 1 && (amber::Buffer::reserveEndCapacity((this + 56), v9 >> 1, v16, v17, v18, v19, a7) & 0x80000000) == 0)
  {
    amber::BufferProtocol<amber::Buffer>::endView(this + 56, v9 >> 1, a7, &v55);
    memset(v56, 32, v57);
    amber::Buffer::grow((this + 56), v9 >> 1, v32, v33, v34, v35, v36);
  }

  if (a2)
  {
    if ((amber::Buffer::reserveEndCapacity((this + 56), 1, v16, v17, v18, v19, a7) & 0x80000000) == 0)
    {
      amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, v41, &v55);
      memset(v56, 34, v57);
      amber::Buffer::grow((this + 56), 1, v42, v43, v44, v45, v46);
    }

    v55 = &off_2A1DDFC68;
    v56 = a2;
    v57 = v13;
    if ((v13 & 0x8000000000000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v41);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    amber::BufferProtocol<amber::Buffer>::append(this + 7, &v55, v37, v38, v39, v40, v41);
    if (*(this + 8))
    {
      v52 = ": ";
    }

    else
    {
      v52 = ":";
    }

    v53 = 2;
    if (*(this + 8))
    {
      v53 = 3;
    }

    v55 = v52;
    v56 = v53;
    amber::BufferProtocol<amber::Buffer>::append(this + 7, &v55, v47, v48, v49, v50, v51);
  }

  return 0;
}

uint64_t jsonPrintf(amber::Buffer *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, ...)
{
  va_start(va, a7);
  amber::Buffer::buf(a1, a7, v25);
  amber::MutableMemoryView::operator+(v25, *(a1 + 11), v9, v23);
  if (__size > 1)
  {
    amber::Buffer::buf(a1, v10, v25);
    amber::MutableMemoryView::operator+(v25, *(a1 + 11), v13, v23);
    v14 = v23[1];
    amber::Buffer::buf(a1, v15, v25);
    amber::MutableMemoryView::operator+(v25, *(a1 + 11), v16, v23);
    v17 = vsnprintf(v14, __size, a2, va);
    if ((v17 & 0x80000000) != 0)
    {
      v11 = "vsnprintf failed";
      v12 = 23;
    }

    else
    {
      if ((amber::Buffer::grow(a1, v17, v18, v19, v20, v21, v10) & 0x80000000) == 0)
      {
        return 0;
      }

      v11 = "aux full";
      v12 = 24;
    }
  }

  else
  {
    v11 = "aux full";
    v12 = 18;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "jsonPrintf", v12, 0, v11, v10);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::commit(amber::JSONOutputStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(this + 56, a7, v36);
  amber::ConstMemoryView::view(v36, *(this + 17), *(this + 18) - *(this + 17), v8, &v31);
  if (v33)
  {
    while (1)
    {
      amber::Buffer::buf(this + 160, v13, v36);
      amber::MutableMemoryView::operator+(v36, *(this + 31), v14, v34);
      if (!v35 && (amber::JSONOutputStream::flush(this, v15, v16, v17, v18, v19, v20) & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      amber::Buffer::buf(this + 160, v20, v36);
      amber::MutableMemoryView::operator+(v36, *(this + 31), v21, v34);
      if (v33 >= v35)
      {
        v23 = v35;
      }

      else
      {
        v23 = v33;
      }

      amber::ConstMemoryView::first(&v31, v23, v22, v36);
      if ((amber::BufferProtocol<amber::Buffer>::append(this + 20, v36, v24, v25, v26, v27, v28) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "commit", 0x158, 0, "malloc", v13);
        return 0xFFFFFFFFLL;
      }

      if (v33 < v23)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", v13);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v32 += v23;
      v33 -= v23;
      if (!v33)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    amber::Buffer::resize((this + 56), 0, v9, v10, v11, v12, v13);
    return 0;
  }
}

uint64_t amber::JSONOutputStream::append(amber::JSONOutputStream *this, const char *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{
  v8 = a4;
  amber::Buffer::resize((this + 56), 0, a4, a5, a6, a7, a8);
  if ((amber::JSONOutputStream::pushLabel(this, a2, v12, v13, v14, v15, v16) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 56), 32, v17, v18, v19, v20, v21) & 0x80000000) == 0)
  {
    v26 = v8 ? "" : "";
    v42[0] = v26;
    v42[1] = v8;
    if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v42, v22, v23, v24, v25, v21) & 0x80000000) == 0 && (jsonPrintf((this + 56), "%f", v27, v28, v29, v30, v21, *&a3) & 0x80000000) == 0)
    {
      v41[0] = v26;
      v41[1] = v8;
      if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v41, v31, v32, v33, v34, v21) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(this, v35, v36, v37, v38, v39, v21) & 0x80000000) == 0)
      {
        return 0;
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "append", 0x54, 0, "JSON append", v21);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::append(unint64_t *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = a3[1];
  amber::Buffer::resize((a1 + 7), 0, a3, a4, a5, a6, a7);
  if ((amber::JSONOutputStream::pushLabel(a1, a2, v11, v12, v13, v14, v15) & 0x80000000) != 0 || (amber::Buffer::reserveEndCapacity((a1 + 7), 2 * v10 + 2, v16, v17, v18, v19, v20) & 0x80000000) != 0)
  {
    v32 = 94;
  }

  else
  {
    amber::Buffer::buf((a1 + 7), v20, v41);
    amber::MutableMemoryView::operator+(v41, a1[18], v21, &v39);
    v26 = v40;
    *v40 = 34;
    if (v10)
    {
      v27 = 0;
      v22 = 1;
      do
      {
        v28 = *(*a3 + v27);
        v29 = v28 > 0x22 || ((1 << v28) & 0x400003700) == 0;
        if (!v29 || v28 == 92)
        {
          v26[v22++] = 92;
          if (v28 == 10)
          {
            v30 = 110;
          }

          else
          {
            v30 = v28;
          }

          if (v28 == 12)
          {
            v30 = 102;
          }

          if (v28 == 13)
          {
            v30 = 114;
          }

          if (v28 == 9)
          {
            LODWORD(v23) = 116;
          }

          else
          {
            LODWORD(v23) = v28;
          }

          if (v28 == 8)
          {
            v23 = 98;
          }

          else
          {
            v23 = v23;
          }

          if (v28 <= 9)
          {
            LOBYTE(v28) = v23;
          }

          else
          {
            LOBYTE(v28) = v30;
          }
        }

        v31 = v22 + 1;
        v26[v22] = v28;
        ++v27;
        ++v22;
      }

      while (v10 != v27);
    }

    else
    {
      v31 = 1;
    }

    v26[v31] = 34;
    if ((amber::Buffer::grow((a1 + 7), v31 + 1, v22, v31, v23, v24, v25) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(a1, v33, v34, v35, v36, v37, v20) & 0x80000000) == 0)
    {
      return 0;
    }

    v32 = 120;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "append", v32, 0, "JSON append", v20);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::appendDictContents(amber::JSONOutputStream *this, amber::JSONInputStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v19 = -1;
  *v20 = 0u;
  v21 = 0u;
  if ((amber::JSONInputStream::read(a2, &v19, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
LABEL_34:
    v17 = "JSON parse";
    v18 = 144;
    goto LABEL_35;
  }

  v15 = -1;
  while (1)
  {
    if (v15 == -1)
    {
      v15 = v26;
    }

    if (v26 == v15)
    {
      break;
    }

    if (v19 > 3)
    {
      if (v19 > 5)
      {
        if (v19 == 6)
        {
          if ((amber::JSONOutputStream::append(this, v20[0], v24, v11, v12, v13, v14) & 0x80000000) != 0)
          {
            v17 = "JSON parse";
            v18 = 168;
            goto LABEL_35;
          }
        }

        else
        {
          if (v19 != 7)
          {
LABEL_39:
            v17 = "JSON parse";
            v18 = 180;
            goto LABEL_35;
          }

          if ((amber::JSONOutputStream::append(this, v20[0], v10, v11, v12, v13, v14) & 0x80000000) != 0)
          {
            v17 = "JSON parse";
            v18 = 174;
            goto LABEL_35;
          }
        }
      }

      else if (v19 == 4)
      {
        if ((amber::JSONOutputStream::append(this, v20[0], v23, v22, 0, v13, v14) & 0x80000000) != 0)
        {
          v17 = "JSON parse";
          v18 = 165;
          goto LABEL_35;
        }
      }

      else if ((amber::JSONOutputStream::append(this, v20[0], v25, 0, v11, v12, v13, v14) & 0x80000000) != 0)
      {
        v17 = "JSON parse";
        v18 = 177;
        goto LABEL_35;
      }
    }

    else if (v19 > 1)
    {
      if (v19 == 2)
      {
        if ((amber::JSONOutputStream::end(this, v9, v10, v11, v12, v13, v14) & 0x80000000) != 0)
        {
          v17 = "JSON parse";
          v18 = 162;
          goto LABEL_35;
        }
      }

      else if ((amber::JSONOutputStream::append(this, v20[0], &v20[1], v11, v12, v13, v14) & 0x80000000) != 0)
      {
        v17 = "JSON parse";
        v18 = 171;
        goto LABEL_35;
      }
    }

    else if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_39;
      }

      if ((amber::JSONOutputStream::beginArray(this, v20[0], v10, v11, v12, v13, v14) & 0x80000000) != 0)
      {
        v17 = "JSON parse";
        v18 = 159;
        goto LABEL_35;
      }
    }

    else if ((amber::JSONOutputStream::beginDict(this, v20[0], v10, v11, v12, v13, v14) & 0x80000000) != 0)
    {
      v17 = "JSON parse";
      v18 = 156;
      goto LABEL_35;
    }

LABEL_7:
    v19 = -1;
    *v20 = 0u;
    v21 = 0u;
    if ((amber::JSONInputStream::read(a2, &v19, v10, v11, v12, v13, v14) & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

  if (!v19)
  {
    goto LABEL_7;
  }

  if (v19 == 2)
  {
    return 0;
  }

  v17 = "invalid JSON dict";
  v18 = 150;
LABEL_35:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "appendDictContents", v18, 0, v17, v14);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::beginDict(const void **this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::resize((this + 7), 0, a3, a4, a5, a6, a7);
  if (this[4] == this[5])
  {
    if ((amber::Buffer::reserveEndCapacity((this + 7), 8, v9, v10, v11, v12, v13) & 0x80000000) != 0 || (amber::Buffer::reserveEndCapacity((this + 7), 1, v35, v36, v37, v38, v18) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView((this + 7), 1uLL, v18, &v50), memset(v51, 123, v52), (amber::Buffer::grow((this + 7), 1, v39, v40, v41, v42, v43) & 0x80000000) != 0) || (amber::JSONOutputStream::commit(this, v44, v45, v46, v47, v48, v18) & 0x80000000) != 0)
    {
      v33 = "opening root dict";
      v34 = 260;
      goto LABEL_14;
    }

LABEL_12:
    LODWORD(v50) = 0;
    std::vector<unsigned int>::push_back[abi:ne200100](this + 4, &v50);
    return 0;
  }

  if ((amber::JSONOutputStream::pushLabel(this, a2, v9, v10, v11, v12, v13) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 7), 8, v14, v15, v16, v17, v18) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 7), 1, v19, v20, v21, v22, v18) & 0x80000000) == 0)
  {
    amber::BufferProtocol<amber::Buffer>::endView((this + 7), 1uLL, v18, &v50);
    memset(v51, 123, v52);
    if ((amber::Buffer::grow((this + 7), 1, v23, v24, v25, v26, v27) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(this, v28, v29, v30, v31, v32, v18) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  v33 = "JSON append";
  v34 = 268;
LABEL_14:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "beginDict", v34, 0, v33, v18);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::beginArray(const void **this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::resize((this + 7), 0, a3, a4, a5, a6, a7);
  if (a2 || this[4] != this[5])
  {
    if ((amber::JSONOutputStream::pushLabel(this, a2, v9, v10, v11, v12, v13) & 0x80000000) != 0 || (amber::Buffer::reserveEndCapacity((this + 7), 8, v30, v31, v32, v33, v18) & 0x80000000) != 0 || (amber::Buffer::reserveEndCapacity((this + 7), 1, v34, v35, v36, v37, v18) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView((this + 7), 1uLL, v18, &v49), memset(v50, 91, v51), (amber::Buffer::grow((this + 7), 1, v38, v39, v40, v41, v42) & 0x80000000) != 0) || (amber::JSONOutputStream::commit(this, v43, v44, v45, v46, v47, v18) & 0x80000000) != 0)
    {
      v29 = 293;
      goto LABEL_15;
    }

LABEL_13:
    LODWORD(v49) = 1;
    std::vector<unsigned int>::push_back[abi:ne200100](this + 4, &v49);
    return 0;
  }

  if ((amber::Buffer::reserveEndCapacity((this + 7), 8, v9, v10, v11, v12, v13) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 7), 1, v14, v15, v16, v17, v18) & 0x80000000) == 0)
  {
    amber::BufferProtocol<amber::Buffer>::endView((this + 7), 1uLL, v18, &v49);
    memset(v50, 91, v51);
    if ((amber::Buffer::grow((this + 7), 1, v19, v20, v21, v22, v23) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(this, v24, v25, v26, v27, v28, v18) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  v29 = 285;
LABEL_15:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "beginArray", v29, 0, "JSON append", v18);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::end(amber::JSONOutputStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 4);
  v8 = *(this + 5);
  if (v7 == v8)
  {
    v45 = "invalid JSON state";
    v46 = 302;
  }

  else
  {
    v12 = *(v8 - 4);
    v10 = v8 - 4;
    v11 = v12;
    *(this + 5) = v10;
    amber::Buffer::resize((this + 56), 0, a3, a4, a5, a6, a7);
    if ((amber::Buffer::reserveEndCapacity((this + 56), ((v10 - v7) >> 1) + 8, v13, v14, v15, v16, v17) & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    v22 = *(this + 8);
    if (*(this + 8))
    {
      if ((amber::Buffer::reserveEndCapacity((this + 56), *(this + 8), v18, v19, v20, v21, a7) & 0x80000000) != 0)
      {
        goto LABEL_25;
      }

      amber::BufferProtocol<amber::Buffer>::endView(this + 56, v22, a7, &v58);
      memset(v59, 10, v60);
      if ((amber::Buffer::grow((this + 56), v22, v23, v24, v25, v26, v27) & 0x80000000) != 0)
      {
        goto LABEL_25;
      }

      if (v10 != v7 && (*(this + 8) & 1) != 0)
      {
        if ((amber::Buffer::reserveEndCapacity((this + 56), (v10 - v7) >> 1, v18, v19, v20, v21, a7) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }

        amber::BufferProtocol<amber::Buffer>::endView(this + 56, (v10 - v7) >> 1, a7, &v58);
        memset(v59, 32, v60);
        if ((amber::Buffer::grow((this + 56), (v10 - v7) >> 1, v28, v29, v30, v31, v32) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }
    }

    if ((amber::Buffer::reserveEndCapacity((this + 56), 1, v18, v19, v20, v21, a7) & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, a7, &v58);
    v33 = (v11 & 1) != 0 ? 93 : 125;
    memset(v59, v33, v60);
    if ((amber::Buffer::grow((this + 56), 1, v34, v35, v36, v37, v38) & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    if (v10 != v7)
    {
      if ((amber::JSONOutputStream::commit(this, v39, v40, v41, v42, v43, a7) & 0x80000000) == 0)
      {
        return 0;
      }

      goto LABEL_25;
    }

    if ((v47 = *(this + 8), *(this + 8)) && ((amber::Buffer::reserveEndCapacity((this + 56), *(this + 8), v40, v41, v42, v43, a7) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(this + 56, v47, a7, &v58), memset(v59, 10, v60), (amber::Buffer::grow((this + 56), v47, v48, v49, v50, v51, v52) & 0x80000000) != 0)) || (amber::JSONOutputStream::commit(this, v39, v40, v41, v42, v43, a7) & 0x80000000) != 0)
    {
LABEL_25:
      v45 = "JSON append";
      v46 = 316;
      goto LABEL_26;
    }

    if ((amber::JSONOutputStream::flush(this, v53, v54, v55, v56, v57, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v45 = "JSON flush";
    v46 = 319;
  }

LABEL_26:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "end", v46, 0, v45, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::appendJSON(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::resize((a1 + 56), 0, a3, a4, a5, a6, a7);
  if ((amber::JSONOutputStream::pushLabel(a1, a2, v10, v11, v12, v13, v14) & 0x80000000) == 0 && (amber::BufferProtocol<amber::Buffer>::append((a1 + 56), a3, v15, v16, v17, v18, v19) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(a1, v20, v21, v22, v23, v24, v19) & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "appendJSON", 0xC2, 0, "JSON append", v19);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::appendHex(amber::JSONOutputStream *this, const char *a2, const amber::ConstMemoryView *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  v11 = *(a3 + 2);
  amber::Buffer::resize((this + 56), 0, a3, a4, a5, a6, a7);
  if ((amber::JSONOutputStream::pushLabel(this, a2, v12, v13, v14, v15, v16) & 0x80000000) == 0)
  {
    v22 = 8;
    if (v7)
    {
      v22 = 12;
    }

    if ((amber::Buffer::reserveEndCapacity((this + 56), v22 + 2 * v11, v17, v18, v19, v20, v21) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 56), 1, v23, v24, v25, v26, v21) & 0x80000000) == 0)
    {
      amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, v21, &v65);
      memset(v66, 34, v67);
      if ((amber::Buffer::grow((this + 56), 1, v27, v28, v29, v30, v31) & 0x80000000) == 0)
      {
        v36 = "";
        if (v7)
        {
          v36 = "hex:";
        }

        v37 = 4;
        if (!v7)
        {
          v37 = 0;
        }

        v63[0] = v36;
        v63[1] = v37;
        if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v63, v32, v33, v34, v35, v21) & 0x80000000) == 0)
        {
          amber::Buffer::buf(this + 56, v21, &v65);
          amber::MutableMemoryView::operator+(&v65, *(this + 18), v38, v64);
          v39 = v64[2];
          amber::Buffer::buf(this + 56, v40, &v65);
          amber::MutableMemoryView::operator+(&v65, *(this + 18), v41, v64);
          v43 = amber::hexBytesToString(a3, v39, v64[1], v42);
          if ((v43 & 0x8000000000000000) == 0 && (amber::Buffer::grow((this + 56), v43, v44, v45, v46, v47, v21) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 56), 1, v48, v49, v50, v51, v21) & 0x80000000) == 0)
          {
            amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, v21, &v65);
            memset(v66, 34, v67);
            if ((amber::Buffer::grow((this + 56), 1, v52, v53, v54, v55, v56) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(this, v57, v58, v59, v60, v61, v21) & 0x80000000) == 0)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "appendHex", 0xD3, 0, "JSON append", v21);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::appendBase64(amber::JSONOutputStream *this, const char *a2, const amber::ConstMemoryView *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  v11 = *(a3 + 2);
  amber::Buffer::resize((this + 56), 0, a3, a4, a5, a6, a7);
  if ((amber::JSONOutputStream::pushLabel(this, a2, v12, v13, v14, v15, v16) & 0x80000000) == 0)
  {
    v22 = 8;
    if (v7)
    {
      v22 = 15;
    }

    if ((amber::Buffer::reserveEndCapacity((this + 56), v22 + 4 * v11 / 3uLL, v17, v18, v19, v20, v21) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 56), 1, v23, v24, v25, v26, v21) & 0x80000000) == 0)
    {
      amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, v21, &v68);
      memset(v69, 34, v70);
      if ((amber::Buffer::grow((this + 56), 1, v27, v28, v29, v30, v31) & 0x80000000) == 0)
      {
        v36 = "";
        if (v7)
        {
          v36 = "base64:";
        }

        v37 = 7;
        if (!v7)
        {
          v37 = 0;
        }

        v66[0] = v36;
        v66[1] = v37;
        if ((amber::BufferProtocol<amber::Buffer>::append(this + 7, v66, v32, v33, v34, v35, v21) & 0x80000000) == 0)
        {
          amber::Buffer::buf(this + 56, v21, &v68);
          amber::MutableMemoryView::operator+(&v68, *(this + 18), v38, v67);
          v39 = v67[2];
          amber::Buffer::buf(this + 56, v40, &v68);
          amber::MutableMemoryView::operator+(&v68, *(this + 18), v41, v67);
          v46 = amber::base64BytesToString(a3, v39, v67[1], v42, v43, v44, v45);
          if ((v46 & 0x8000000000000000) == 0 && (amber::Buffer::grow((this + 56), v46, v47, v48, v49, v50, v21) & 0x80000000) == 0 && (amber::Buffer::reserveEndCapacity((this + 56), 1, v51, v52, v53, v54, v21) & 0x80000000) == 0)
          {
            amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, v21, &v68);
            memset(v69, 34, v70);
            if ((amber::Buffer::grow((this + 56), 1, v55, v56, v57, v58, v59) & 0x80000000) == 0 && (amber::JSONOutputStream::commit(this, v60, v61, v62, v63, v64, v21) & 0x80000000) == 0)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "appendBase64", 0xE4, 0, "JSON append", v21);
  return 0xFFFFFFFFLL;
}

uint64_t amber::JSONOutputStream::appendTime(amber::JSONOutputStream *this, const char *a2, time_t a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v49 = a3;
  amber::zero(void *,unsigned long)::memset_func(&v50, 0, 56);
  gmtime_r(&v49, &v50);
  v5 = strftime(v54, 0x64uLL, "%FT%TZ", &v50);
  if ((amber::JSONOutputStream::pushLabel(this, a2, v6, v7, v8, v9, v10) & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  if ((amber::Buffer::reserveEndCapacity((this + 56), 100, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  if ((amber::Buffer::reserveEndCapacity((this + 56), 1, v16, v17, v18, v19, v15) & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, v15, &v51);
  memset(v52, 34, v53);
  if ((amber::Buffer::grow((this + 56), 1, v20, v21, v22, v23, v24) & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  v46 = &off_2A1DDFC68;
  v47 = v54;
  v48 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v15, v46, v47, v48);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (amber::BufferProtocol<amber::Buffer>::append(this + 7, &v46, v25, v26, v27, v28, v15) || (amber::Buffer::reserveEndCapacity((this + 56), 1, v29, v30, v31, v32, v15) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(this + 56, 1uLL, v15, &v51), memset(v52, 34, v53), (amber::Buffer::grow((this + 56), 1, v35, v36, v37, v38, v39) & 0x80000000) != 0) || (amber::JSONOutputStream::commit(this, v40, v41, v42, v43, v44, v15) & 0x80000000) != 0)
  {
LABEL_7:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONOutputStream.cpp", "appendTime", 0xF6, 0, "JSON append", v15, v46, v47, v48);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t amber::HTTPObjectStoreBlockDevice::HTTPObjectStoreBlockDevice(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = amber::BlockDevice::BlockDevice(a1, a6, "HTTPObjectStoreBlockDevice");
  *v12 = &unk_2A1DE2BB0;
  *(v12 + 70) = 0;
  amber::HTTPContext::HTTPContext(v12 + 288, a3, a4, a5, a6);
  v13 = strlen(a2);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  v15 = (a1 + 824);
  if (v13 >= 0x17)
  {
    operator new();
  }

  *(a1 + 847) = v13;
  v16 = (a1 + 824);
  if (v13)
  {
    memmove(v16, a2, v13);
  }

  *(v16 + v14) = 0;
  *(a1 + 848) = xmmword_296A15470;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 920) = 1018212795;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 280) = 655361;
  while (1)
  {
    v17 = *(a1 + 847);
    if (v17 < 0)
    {
      break;
    }

    if (!*(a1 + 847) || *(a1 + 823 + v17) != 47)
    {
      goto LABEL_16;
    }

    v18 = v17 - 1;
    *(a1 + 847) = v17 - 1;
    v19 = a1 + 824;
LABEL_15:
    *(v19 + v18) = 0;
  }

  v20 = *(a1 + 832);
  if (v20)
  {
    v19 = *v15;
    if (*(*v15 + v20 - 1) == 47)
    {
      v18 = v20 - 1;
      *(a1 + 832) = v18;
      goto LABEL_15;
    }
  }

LABEL_16:
  std::string::push_back((a1 + 824), 47);
  return a1;
}

void sub_2969C8DAC(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 920));
  std::mutex::~mutex((v1 + 856));
  if (*(v1 + 847) < 0)
  {
    operator delete(*v2);
  }

  amber::HTTPContext::~HTTPContext((v1 + 288));
  amber::BlockDevice::~BlockDevice(v1);
  _Unwind_Resume(a1);
}

void amber::HTTPObjectStoreBlockDevice::~HTTPObjectStoreBlockDevice(amber::HTTPObjectStoreBlockDevice *this)
{
  v2 = 32;
  do
  {
    amber::Sem::acquire((this + 848));
    --v2;
  }

  while (v2);
  std::condition_variable::~condition_variable((this + 920));
  std::mutex::~mutex((this + 856));
  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  amber::HTTPContext::~HTTPContext((this + 288));

  amber::BlockDevice::~BlockDevice(this);
}

{
  amber::HTTPObjectStoreBlockDevice::~HTTPObjectStoreBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::HTTPObjectStoreBlockDevice::setAttribute(amber::HTTPObjectStoreBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    if (amber::HTTPContext::isSettableByParentBlockDevice(a2))
    {

      return amber::HTTPContext::setAttribute((this + 288), a2, a3, a4, v12, v13, v14);
    }

    else
    {

      return amber::BlockDevice::setAttribute(this, a2, a3, a4, v12, v13, v14);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPObjectStoreBlockDevice.cpp", "setAttribute", 0x77, 0, "invalid attribute encoding %u, %u", v11, a2, a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::HTTPObjectStoreBlockDevice::getAttribute(amber::HTTPObjectStoreBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPObjectStoreBlockDevice.cpp", "getAttribute", 0x8A, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 == 202)
  {
    v14 = *(this + 70);
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

uint64_t amber::HTTPObjectStoreBlockDevice::loadPrologue(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (*(a1 + 847) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *(a1 + 824), *(a1 + 832));
  }

  else
  {
    v27 = *(a1 + 824);
  }

  v4 = *(a2 + 16);
  v29 = &off_2A1DDFC68;
  v30 = (a2 + 20);
  v31 = v4;
  amber::serializeSnapshotURIToStringEnd(&v29, &v27);
  v22[0] = &unk_2A1DDFD28;
  v22[2] = 0;
  v22[3] = 0;
  v22[1] = off_2A1DDFD48;
  v22[5] = 0;
  v22[6] = 0;
  v22[4] = &off_2A1DDFDA8;
  v22[7] = &off_2A1DDFC68;
  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  v26 = 0;
  v19[0] = v19;
  v19[1] = v19;
  v19[2] = 0;
  v20 = 0;
  v21 = -1;
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v27;
  }

  else
  {
    v5 = v27.__r_.__value_.__r.__words[0];
  }

  v29 = &v29;
  v30 = &v29;
  v31 = 0;
  v28[1] = 0;
  v28[2] = 0;
  v28[0] = &off_2A1DDFC68;
  v6 = amber::HTTPContext::httpPerformBase(a1 + 288, 1, v5, &v29, v28, v22, v19, &amber::HTTPContext::FullRange, 1u);
  std::__list_imp<std::string>::clear(&v29);
  if ((v6 & 0x80000000) == 0)
  {
    amber::ObjectStorePath::ObjectStorePath(&v29);
    amber::Buffer::constBuf(v22, v8, v28);
    amber::ConstMemoryView::view(v28, v24, *(&v24 + 1) - v24, v9, v18);
    amber::JSONCodable::jsonParseFromBuffer(&v29, v18);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPObjectStoreBlockDevice.cpp", "loadPrologue", 0xA0, 0, "invalid snapshot storage_id", v7);
  std::__list_imp<std::string>::clear(v19);
  amber::Buffer::~Buffer(v22, v10, v11, v12, v13, v14, v15);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v16 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_2969C93EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  amber::ObjectStorePath::~ObjectStorePath(&a40);
  std::__list_imp<std::string>::clear(&a14);
  amber::Buffer::~Buffer(&a18, v41, v42, v43, v44, v45, v46);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::HTTPObjectStoreBlockDevice::enqueueRequest(amber::HTTPObjectStoreBlockDevice *this, amber::BlockDeviceRequest *a2)
{
  amber::BlockDeviceEvent::BlockDeviceEvent(v27, 11, a2);
  amber::BlockDeviceEvent::send(v27);
  v9 = *(a2 + 5);
  if (v9 > 9)
  {
    if (v9 == 11)
    {
      v25 = *(a2 + 161);
      if ((amber::BlockDevice::executePrefetchSequence(this, *(a2 + 14), 2u) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPObjectStoreBlockDevice.cpp", "enqueueRequest", 0xCD, 0, "executePrefetchSequence", v13);
        v14 = -2147483626;
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_21;
    }

    if (v9 != 10)
    {
LABEL_15:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPObjectStoreBlockDevice.cpp", "enqueueRequest", 0xE4, 0, "invalid command: %u", v8, *(a2 + 5));
      amber::BlockDeviceRequest::sendReply(a2, -2147483626, 0, v21, v22, v23, v24);
LABEL_22:
      (*(*a2 + 8))(a2);
      goto LABEL_23;
    }

    v15 = 32;
    do
    {
      amber::Sem::acquire((this + 848));
      --v15;
    }

    while (v15);
    amber::BlockDeviceRequest::sendReply(a2, 1, 0, v16, v17, v18, v19);
    if (a2)
    {
      (*(*a2 + 8))(a2);
    }

    v20 = 32;
    do
    {
      amber::Sem::release((this + 848));
      --v20;
    }

    while (v20);
  }

  else
  {
    if (v9 != 1)
    {
      if (v9 == 8)
      {
        if ((amber::BlockDevice::executeLogStats(this, *(a2 + 14) >> 3, *(a2 + 8), *(a2 + 161), v6, v7, v8) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPObjectStoreBlockDevice.cpp", "enqueueRequest", 0xC5, 0, "executeLogStats", v13);
          v14 = -2147483626;
        }

        else
        {
          v14 = 1;
        }

LABEL_21:
        amber::BlockDeviceRequest::sendReply(a2, v14, 0, v10, v11, v12, v13);
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    amber::HTTPObjectStoreBlockDevice::enqueueRead(this, a2, v4, v5, v6, v7, v8);
  }

LABEL_23:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v27);
  return 0;
}

void sub_2969C9740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t amber::HTTPObjectStoreBlockDevice::enqueueRead(amber::HTTPObjectStoreBlockDevice *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 30);
  if (v8)
  {
    v9 = *(a2 + 100);
    if (v9)
    {
      if (*(a2 + 170))
      {
        if (*(this + 847) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, *(this + 103), *(this + 104));
          v8 = *(a2 + 30);
          v9 = *(a2 + 100);
        }

        else
        {
          v15 = *(this + 824);
        }

        v17[0] = &off_2A1DDFC68;
        v17[1] = a2 + 124;
        v17[2] = v8;
        v16[0] = &off_2A1DDFC68;
        v16[1] = a2 + 404;
        v16[2] = v9;
        amber::serializeObjectURIToStringEnd(v17, v16, *(a2 + 166), &v15);
        operator new();
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/HTTPObjectStoreBlockDevice.cpp", "enqueueRead", 0xF1, 0, "request has no storage attributes", a7);
  amber::BlockDeviceRequest::sendReply(a2, -2147483626, 0, v10, v11, v12, v13);
  (*(*a2 + 8))(a2);
  return 0;
}

void sub_2969C99F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::HTTPObjectStoreBlockDevice::HTTPRequestCompletionProc(amber::HTTPObjectStoreBlockDevice::HTTPRequestArg *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  amber::HTTPObjectStoreBlockDevice::HTTPRequestArg::~HTTPRequestArg(a1);
  MEMORY[0x29C25C000]();
  if (*(a2 + 24))
  {
    result = amber::BlockDeviceRequest::sendReply(v3, -2147483643, 0, v4, v5, v6, v7);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    if (*(v3 + 5) == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    amber::BlockDeviceRequest::sendReply(v3, v9, 0, v4, v5, v6, v7);
  }

  v10 = *(*v3 + 8);

  return v10(v3);
}

uint64_t amber::HTTPObjectStoreBlockDevice::HTTPRequestCancel(amber::HTTPObjectStoreBlockDevice *this, amber::HTTPObjectStoreBlockDevice::HTTPRequestArg *a2)
{
  v2 = *(a2 + 1);
  amber::HTTPObjectStoreBlockDevice::HTTPRequestArg::~HTTPRequestArg(a2);
  MEMORY[0x29C25C000]();
  result = amber::BlockDeviceRequest::sendReply(v2, -2147483634, 0, v3, v4, v5, v6);
  if (v2)
  {
    v8 = *(*v2 + 8);

    return v8(v2);
  }

  return result;
}

void sub_2969C9C20(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969C9C08);
}

uint64_t amber::HTTPObjectStoreBlockDevice::HTTPRequestArg::HTTPRequestArg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = off_2A1DDFD48;
  v5 = *(a4 + 8);
  v6 = *(a4 + 16);
  *(a1 + 48) = &off_2A1DDFDA8;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = &off_2A1DDFC68;
  *(a1 + 111) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 16) = &unk_2A1DE08A8;
  amber::Sem::acquire((a2 + 848));
  return a1;
}

uint64_t AmberRuntimeVersion()
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  MEMORY[0x29C25BF00](&__p, "30.1");
  if (v11 >= 0)
  {
    v0 = HIBYTE(v11);
  }

  else
  {
    v0 = v10;
  }

  if (!v0)
  {
    goto LABEL_32;
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  p_p = __p;
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  do
  {
    v6 = *p_p;
    if ((v6 & 0x8000000000000000) == 0 && (*(MEMORY[0x29EDCA600] + 4 * v6 + 60) & 0x400) != 0)
    {
      if (++v2 > 6)
      {
        goto LABEL_32;
      }

      v1 = v6 + 10 * v1 - 48;
    }

    else
    {
      if (*p_p != 46)
      {
        break;
      }

      if (!v2)
      {
        goto LABEL_32;
      }

      if (v3 == 2)
      {
        if (v1 > 0xFF)
        {
          goto LABEL_32;
        }
      }

      else if (v3 == 1)
      {
        if (v1 > 0xFF)
        {
          goto LABEL_32;
        }

        v1 <<= 8;
      }

      else
      {
        if (v3 || HIWORD(v1))
        {
          goto LABEL_32;
        }

        v1 <<= 16;
      }

      v2 = 0;
      v4 |= v1;
      ++v3;
      v1 = 0;
    }

    ++p_p;
    --v0;
  }

  while (v0);
  if (!v2)
  {
    goto LABEL_32;
  }

  if (v3 == 2)
  {
    if (v1 > 0xFF)
    {
      goto LABEL_32;
    }

LABEL_35:
    v7 = v1 | v4;
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      return v7;
    }

    goto LABEL_33;
  }

  if (v3 == 1)
  {
    if (v1 > 0xFF)
    {
      goto LABEL_32;
    }

    v1 <<= 8;
    goto LABEL_35;
  }

  if (!v3 && !HIWORD(v1))
  {
    v1 <<= 16;
    goto LABEL_35;
  }

LABEL_32:
  v7 = 1966080;
  if (SHIBYTE(v11) < 0)
  {
LABEL_33:
    operator delete(__p);
  }

  return v7;
}

void sub_2969C9EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void amber::PermutationBlockDevice::~PermutationBlockDevice(amber::PermutationBlockDevice *this)
{
  *this = &unk_2A1DE2C78;
  amber::SyncBlockDevice::terminateThreads(this);

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::PermutationBlockDevice::~PermutationBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::PermutationBlockDevice::getAttribute(amber::PermutationBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "getAttribute", 0x89, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 202)
  {
    if (a2 == 203 || a2 == 204 || a2 == 205)
    {
      v14 = *(this + 120);
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  if (a2 != 201)
  {
    if (a2 == 202)
    {
      v14 = *(this + 128);
LABEL_11:
      LODWORD(v19) = v14;
      v20 = &off_2A1DDFDA8;
      v21 = &v19;
      v22 = 4;
      v23 = &off_2A1DDFC68;
      v24 = &v19;
      v25 = 4;
      *a5 = 4;
      v15 = *(a4 + 2);
      if (v15)
      {
        if (v15 <= 3)
        {
          v16 = 4;
LABEL_14:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, v16, v15);
          return 0xFFFFFFFFLL;
        }

        result = 0;
        **(a4 + 1) = v14;
        return result;
      }

      return 0;
    }

LABEL_21:

    return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
  }

  v18 = *(this + 59);
  v19 = v18;
  v20 = &off_2A1DDFDA8;
  v21 = &v19;
  v22 = 8;
  v23 = &off_2A1DDFC68;
  v24 = &v19;
  v25 = 8;
  *a5 = 8;
  v15 = *(a4 + 2);
  if (!v15)
  {
    return 0;
  }

  if (v15 <= 7)
  {
    v16 = 8;
    goto LABEL_14;
  }

  result = 0;
  **(a4 + 1) = v18;
  return result;
}

uint64_t amber::PermutationBlockDevice::getBlockState(amber::PermutationBlockDevice *this, uint64_t a2, unint64_t a3, const amber::MutableMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = *(this + 120);
  v11 = v10 * a2;
  v12 = v10 * a3;
  if (v11 >= v12)
  {
    v11 = 0;
    v12 = 0;
  }

  v28[0] = v11;
  v28[1] = v12;
  __p = 0;
  v26 = 0;
  v27 = 0;
  if ((amber::BlockPermutation::appendMappedRange(*(this + 63), v28, &__p, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "getBlockState", 0xA7, 0, "mapping range", v13);
  }

  else
  {
    v14 = __p;
    v15 = v26;
    if (__p == v26)
    {
      v16 = 0;
LABEL_12:
      if (v16 + a2 == a3)
      {
        v21 = 0;
        goto LABEL_18;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "getBlockState", 0xB4, 0, "block count mismatch", v13);
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v17 = *(this + 120);
        v18 = *v14 / v17;
        v19 = v14[1] / v17;
        if (v16 + a2 + v19 - v18 > a3)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "getBlockState", 0xAF, 0, "block count mismatch", v13);
          goto LABEL_17;
        }

        v20 = *(this + 62);
        amber::MutableMemoryView::operator+(a4, v16, v13, v24);
        if (((*(*v20 + 32))(v20, v18, v19, v24, 0) & 0x80000000) != 0)
        {
          break;
        }

        v16 += v19 - v18;
        v14 += 2;
        if (v14 == v15)
        {
          goto LABEL_12;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "getBlockState", 0xB1, 0, "getting base device block state", v13);
    }
  }

LABEL_17:
  v21 = 0xFFFFFFFFLL;
LABEL_18:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2969CA5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::PermutationBlockDevice::setBlockState(amber::PermutationBlockDevice *this, uint64_t a2, unint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = *(this + 120);
  v11 = v10 * a2;
  v12 = v10 * a3;
  if (v11 >= v12)
  {
    v11 = 0;
    v12 = 0;
  }

  v28[0] = v11;
  v28[1] = v12;
  __p = 0;
  v26 = 0;
  v27 = 0;
  if ((amber::BlockPermutation::appendMappedRange(*(this + 63), v28, &__p, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setBlockState", 0xC0, 0, "mapping range", v13);
  }

  else
  {
    v14 = __p;
    v15 = v26;
    if (__p == v26)
    {
      v16 = 0;
LABEL_12:
      if (v16 + a2 == a3)
      {
        v21 = 0;
        goto LABEL_18;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setBlockState", 0xCD, 0, "block count mismatch", v13);
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v17 = *(this + 120);
        v18 = *v14 / v17;
        v19 = v14[1] / v17;
        if (v16 + a2 + v19 - v18 > a3)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setBlockState", 0xC8, 0, "block count mismatch", v13);
          goto LABEL_17;
        }

        v20 = *(this + 62);
        amber::ConstMemoryView::operator+(a4, v16, v13, v24);
        if (((*(*v20 + 40))(v20, v18, v19, v24, 0) & 0x80000000) != 0)
        {
          break;
        }

        v16 += v19 - v18;
        v14 += 2;
        if (v14 == v15)
        {
          goto LABEL_12;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setBlockState", 0xCA, 0, "setting base device block state", v13);
    }
  }

LABEL_17:
  v21 = 0xFFFFFFFFLL;
LABEL_18:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2969CA81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::PermutationBlockDevice::setBlockState(amber::PermutationBlockDevice *this, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = *(this + 120);
  v11 = v10 * a2;
  v12 = v10 * a3;
  if (v11 >= v12)
  {
    v11 = 0;
    v12 = 0;
  }

  v23[0] = v11;
  v23[1] = v12;
  __p = 0;
  v21 = 0;
  v22 = 0;
  if ((amber::BlockPermutation::appendMappedRange(*(this + 63), v23, &__p, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setBlockState", 0xD9, 0, "mapping range", v13);
  }

  else
  {
    v14 = __p;
    v15 = v21;
    if (__p == v21)
    {
      v16 = 0;
LABEL_12:
      if (v16 + a2 == a3)
      {
        v18 = 0;
        goto LABEL_18;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setBlockState", 0xE6, 0, "block count mismatch", v13);
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v17 = v14[1] / *(this + 120) - *v14 / *(this + 120);
        if (v16 + a2 + v17 > a3)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setBlockState", 0xE1, 0, "block count mismatch", v13);
          goto LABEL_17;
        }

        if (((*(**(this + 62) + 48))(*(this + 62)) & 0x80000000) != 0)
        {
          break;
        }

        v16 += v17;
        v14 += 2;
        if (v14 == v15)
        {
          goto LABEL_12;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setBlockState", 0xE3, 0, "setting base device block state", v13);
    }
  }

LABEL_17:
  v18 = 0xFFFFFFFFLL;
LABEL_18:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_2969CAA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::PermutationBlockDevice::executeCommon(amber::PermutationBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v38[75] = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 6);
  v6 = v5 + *(a3 + 14);
  if (v5 >= v6)
  {
    v5 = 0;
    v6 = 0;
  }

  v32[0] = v5;
  v32[1] = v6;
  v7 = *(a3 + 8);
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(&v33, 0);
  __p = 0;
  v30 = 0;
  v31 = 0;
  if ((amber::BlockPermutation::appendMappedRange(*(this + 63), v32, &__p, v8, v9, v10, v11) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "executeCommon", 0xF2, 0, "invalid range", v15);
    v23 = -2147483626;
    goto LABEL_11;
  }

  if (__p != v30)
  {
    v16 = *(__p + 2);
    v17 = *__p;
    operator new();
  }

  if (atomic_fetch_add_explicit(v37, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
  {
    do
    {
      amber::Sem::acquire(&v34);
    }

    while (atomic_fetch_add_explicit(v37, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
  }

  atomic_fetch_add_explicit(v37, 1uLL, memory_order_relaxed);
  if (atomic_load(&v33))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "executeCommon", 0x10D, 0, "requests reported errors", v15);
    v23 = -2147483643;
LABEL_11:
    amber::BlockDeviceRequest::sendReply(a3, v23, 0, v19, v20, v21, v22);
    v24 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  if (*(a3 + 5) == 1)
  {
    if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v12, v13, v14, v15) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "executeCommon", 0x112, 0, "reply data", v27);
    }
  }

  else if ((amber::BlockDeviceRequest::sendReply(a3, 1, 0, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "executeCommon", 0x116, 0, "reply OK", v28);
  }

  v24 = 0;
LABEL_12:
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  amber::ObjectStorePath::~ObjectStorePath(v38);
  std::condition_variable::~condition_variable(&v36);
  std::mutex::~mutex(&v35);
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

void sub_2969CADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(&a18);
  _Unwind_Resume(a1);
}

uint64_t amber::PermutationBlockDevice::executeFlush(amber::BlockDevice **this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (this[64])
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "executeFlush", 0x127, 0, "FLUSH on read-only device", a7);
    v14 = -2147483647;
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    if ((amber::BaseObject::getAttributeUInt32(this[62], 202) & 2) != 0)
    {
      amber::BlockDevice::flush(this[62]);
    }

    v13 = 0;
    v14 = 1;
  }

  amber::BlockDeviceRequest::sendReply(a3, v14, 0, v9, v10, v11, v12);
  return v13;
}

uint64_t amber::PermutationBlockDevice::setPrefetchSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v11[0] = &unk_2A1DE0740;
  v11[1] = &unk_2A1DE0780;
  memset(&v11[2], 0, 24);
  if ((amber::appendToRangeVector(a2, &v15) & 0x80000000) != 0 || (amber::BlockPermutation::appendMappedRanges(*(a1 + 504), &v15, &__p, v5, v6, v7, v8) & 0x80000000) != 0 || (amber::appendFromRangeVector(v11, &__p) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/PermutationBlockDevice.cpp", "setPrefetchSequence", 0x13C, 0, "applying permutation", v8);
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = (*(**(a1 + 496) + 56))(*(a1 + 496), v11, a3);
  }

  amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(v11);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v9;
}

void sub_2969CB04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(&a10);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    *(v16 - 32) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_2969CB104(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969CB0ECLL);
}

amber::DiskImagePluginImage *amber::DiskImagePluginImage::DiskImagePluginImage(amber::DiskImagePluginImage *this)
{
  *this = &unk_2A1DE2D80;
  *(this + 13) = this;
  amber::zero(void *,unsigned long)::memset_func(this + 8, 0, 96);
  *(this + 1) = 96;
  *(this + 2) = amber::DiskImagePluginImage::get_block_size_cb;
  *(this + 3) = amber::DiskImagePluginImage::get_number_of_blocks_cb;
  *(this + 4) = amber::DiskImagePluginImage::is_writable_cb;
  *(this + 5) = amber::DiskImagePluginImage::get_preferred_alignment_cb;
  *(this + 6) = amber::DiskImagePluginImage::get_preferred_size_cb;
  *(this + 12) = amber::DiskImagePluginImage::copy_uuid_cb;
  *(this + 8) = amber::DiskImagePluginImage::get_subscriber_cb;
  *(this + 9) = amber::DiskImagePluginImage::encode_cb;
  *(this + 10) = amber::DiskImagePluginImage::release_cb;
  return this;
}

void amber::DiskImagePluginImage::encode_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a2;
  v5[1] = a3;
  if (((*(**(a1 + 96) + 56))(*(a1 + 96), v5, a4) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePluginImage.cpp", "encode_cb", 0x4A, 0, "image encode", v4);
  }
}

void *amber::DiskImagePluginImage::release_cb(void *result)
{
  if (result)
  {
    result = result[12];
    if (result)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void amber::WKMSContext::~WKMSContext(amber::WKMSContext *this)
{
  amber::HTTPContext::~HTTPContext(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::WKMSContext::keyFetch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v110 = *MEMORY[0x29EDCA608];
  v52[1] = 0;
  v52[0] = 0;
  v53 = 0;
  memset(&v51, 0, sizeof(v51));
  v46[0] = &unk_2A1DDFD28;
  v46[3] = 0;
  v46[1] = off_2A1DDFD48;
  v46[2] = 0;
  v46[6] = 0;
  v46[4] = &off_2A1DDFDA8;
  v46[5] = 0;
  v46[7] = &off_2A1DDFC68;
  v47 = 0u;
  *v48 = 0u;
  v49 = 1;
  v50 = 0;
  v41[0] = &unk_2A1DDFD28;
  v41[2] = 0;
  v41[3] = 0;
  v41[1] = off_2A1DDFD48;
  v41[5] = 0;
  v41[6] = 0;
  v41[4] = &off_2A1DDFDA8;
  v41[7] = &off_2A1DDFC68;
  v42 = 0u;
  v43 = 0u;
  v44 = 1;
  v45 = 0;
  v40[0] = v40;
  v40[1] = v40;
  v40[2] = 0;
  v37[0] = v37;
  v37[1] = v37;
  v37[2] = 0;
  v38 = 0;
  v39 = -1;
  v92[0] = &unk_2A1DDFDD8;
  v92[1] = &unk_2A1DDFE08;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
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
  v109 = 0;
  v73 = &unk_2A1DDFDD8;
  v74 = &unk_2A1DDFE08;
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
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  v54 = &unk_2A1DDFDD8;
  v55 = &unk_2A1DDFE08;
  v56 = 0u;
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
  v72 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  if ((amber::experimentalGenerateEphemeralCert_P256(v92, __p, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/WKMS/WKMSContext.cpp", "keyFetch", 0x22, 0, "ephemeral cert", v9);
  }

  else
  {
    if ((amber::BaseObject::getAttributeString(a1, 408, v52) & 0x80000000) == 0)
    {
      v11 = v52;
      if (v53 < 0)
      {
        v11 = v52[0];
      }

      if ((amber::HTTPHeadersAppendWithFormat(v40, "Authorization: Bearer %s", v11) & 0x80000000) == 0)
      {
        v31 = 0;
        __s1 = 0;
        v33 = 0;
        amber::Buffer::resize(v46, 0, v12, v13, v14, v15, v10);
        amber::JSONOutputStream::JSONOutputStream(v34, v46);
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/WKMS/WKMSContext.cpp", "keyFetch", 0x29, 0, "HTTP headers", v10);
  }

  *(a3 + 16) = 0;
  v31 = &off_2A1DDFDA8;
  __s1 = (a3 + 20);
  v33 = 256;
  amber::MutableMemoryView::operator+(&v31, 0, v16, v34);
  bzero(v34[1], v34[2]);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  std::__list_imp<std::string>::clear(v37);
  std::__list_imp<std::string>::clear(v40);
  amber::Buffer::~Buffer(v41, v17, v18, v19, v20, v21, v22);
  amber::Buffer::~Buffer(v46, v23, v24, v25, v26, v27, v28);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  v29 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_2969CC180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  amber::JSONInputStream::~JSONInputStream(&a23);
  if (a61 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<std::string>::clear(&a62);
  std::__list_imp<std::string>::clear(&a66);
  amber::Buffer::~Buffer(&a69, v70, v71, v72, v73, v74, v75);
  amber::Buffer::~Buffer(&STACK[0x230], v76, v77, v78, v79, v80, v81);
  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::clear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 8) = 0;
  v8[0] = &off_2A1DDFDA8;
  v8[1] = a1 + 12;
  v8[2] = 256;
  amber::MutableMemoryView::operator+(v8, 0, a7, v9);
  bzero(v9[1], v9[2]);
  return 0;
}

void amber::WKMSContext::keyGenerate(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v112 = *MEMORY[0x29EDCA608];
  v34 = 0;
  v33 = 0;
  v35 = 0;
  memset(&v32, 0, sizeof(v32));
  v20 = &unk_2A1DDFD28;
  v23 = 0;
  v21 = off_2A1DDFD48;
  v22 = 0;
  v26 = 0;
  v24 = &off_2A1DDFDA8;
  v25 = 0;
  v27 = &off_2A1DDFC68;
  v28 = 0u;
  v29 = 0u;
  v30 = 1;
  v31 = 0;
  v15[3] = &unk_2A1DDFD28;
  v15[5] = 0;
  v15[6] = 0;
  v15[4] = off_2A1DDFD48;
  v15[9] = 0;
  v15[7] = &off_2A1DDFDA8;
  v15[8] = 0;
  v15[10] = &off_2A1DDFC68;
  v16 = 0u;
  v17 = 0u;
  v18 = 1;
  v19 = 0;
  v15[0] = v15;
  v15[1] = v15;
  v15[2] = 0;
  v12[0] = v12;
  v12[1] = v12;
  v12[2] = 0;
  v13 = 0;
  v14 = -1;
  v93 = &unk_2A1DDFDD8;
  v94 = &unk_2A1DDFE08;
  v95 = 0u;
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
  v111 = 0;
  v74 = &unk_2A1DDFDD8;
  v75 = &unk_2A1DDFE08;
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
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
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
  v36 = &unk_2A1DDFDD8;
  v37 = &unk_2A1DDFE08;
  v38 = 0u;
  v39 = 0u;
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
  v54 = 0;
  memset(&v11[33], 0, 48);
  v8 = *a3;
  v7 = a3[1];
  v10[0] = &off_2A1DDFC68;
  v10[1] = v8;
  v10[2] = v7;
  if ((v7 & 0x8000000000000000) == 0 && (v8 || !v7))
  {
    amber::JSONInputStream::JSONInputStream(v11, v10);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/WKMS/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x29C25BE90](exception, "memory invalid args");
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void sub_2969CCFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  amber::JSONInputStream::~JSONInputStream(&a23);
  if (a61 < 0)
  {
    operator delete(__p);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  std::__list_imp<std::string>::clear(&a68);
  std::__list_imp<std::string>::clear(&a72);
  amber::Buffer::~Buffer(&a73, v74, v75, v76, v77, v78, v79);
  amber::Buffer::~Buffer(&STACK[0x248], v80, v81, v82, v83, v84, v85);
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  _Unwind_Resume(a1);
}

uint64_t AmberWKMSContextDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberWKMSContextKeyFetch(uint64_t a1, char *__s, uint64_t a3)
{
  v10[0] = __s;
  v10[1] = strlen(__s);
  return amber::WKMSContext::keyFetch(a1, v10, a3, v5, v6, v7, v8);
}

void AmberWKMSContextKeyGenerate(uint64_t a1, char *__s, const char *a3, uint64_t a4, uint64_t a5)
{
  memset(__p, 0, sizeof(__p));
  v12[0] = __s;
  v12[1] = strlen(__s);
  v10[0] = a3;
  v10[1] = strlen(a3);
  amber::WKMSContext::keyGenerate(a1, v12, v10, __p, a5, v8, v9);
}

void sub_2969CD3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_free_exception(v17);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2969CD5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::~Buffer(v10, a2, a3, a4, a5, a6, a7);
  *(v7 + 512) = v8;
  *(v7 + 520) = v9;
  *(v7 + 532) = 0u;
  *(v7 + 548) = 0u;
  *(v7 + 564) = 0u;
  *(v7 + 580) = 0u;
  *(v7 + 596) = 0u;
  *(v7 + 612) = 0u;
  *(v7 + 628) = 0u;
  *(v7 + 644) = 0u;
  *(v7 + 660) = 0u;
  *(v7 + 676) = 0u;
  *(v7 + 692) = 0u;
  *(v7 + 708) = 0u;
  *(v7 + 724) = 0u;
  *(v7 + 740) = 0u;
  *(v7 + 756) = 0u;
  *(v7 + 772) = 0u;
  amber::SyncBlockDevice::~SyncBlockDevice(v7, v12, v13, v14, v15, v16, v17);
  _Unwind_Resume(a1);
}

uint64_t amber::AEBDBlockDevice::createContainerAndUnlockWithPrologue(uint64_t a1, amber::AEBDContainer *a2, const amber::ConstMemoryView *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, const char *a7)
{
  v44[77] = *MEMORY[0x29EDCA608];
  if (*(a1 + 792))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "createContainerAndUnlockWithPrologue", 0x18E, 0, "device already has a container", a7);
LABEL_31:
    result = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  if (*(a2 + 5))
  {
    v8 = "invalid prologue size";
    v9 = 404;
LABEL_27:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "createContainerAndUnlockWithPrologue", v9, 0, v8, a7);
LABEL_28:
    v31 = *(a1 + 792);
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    *(a1 + 792) = 0;
    goto LABEL_31;
  }

  v10 = *(a1 + 472);
  v11 = *(a1 + 480);
  v12 = *(a1 + 484);
  v13 = amber::AEBDContainer::createAndUnlockWithPrologue(a2, a3, a4, a4, a5, a6, a7);
  *(a1 + 792) = v13;
  if (!v13)
  {
    v8 = "container unlock failed";
    v9 = 406;
    goto LABEL_27;
  }

  if ((amber::AEBDBlockDevice::postUnlockCommon(a1) & 0x80000000) != 0)
  {
    v8 = "container attribute mismatch";
    v9 = 407;
    goto LABEL_27;
  }

  if (v10 && v10 != *(a1 + 472))
  {
    v8 = "deferred size mismatch";
    v9 = 410;
    goto LABEL_27;
  }

  if (v11 && v11 != *(a1 + 480))
  {
    v8 = "deferred IO size mismatch";
    v9 = 411;
    goto LABEL_27;
  }

  if (v12 && v12 != *(a1 + 484))
  {
    v8 = "deferred block size mismatch";
    v9 = 412;
    goto LABEL_27;
  }

  AttributeUInt32 = amber::BaseObject::getAttributeUInt32(*(a1 + 792), 119);
  if (AttributeUInt32 == -1)
  {
    v8 = "invalid cluster count";
    v9 = 417;
    goto LABEL_27;
  }

  v15 = AttributeUInt32;
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(v42, 0);
  amber::SecureBuffer::SecureBuffer(v39);
  v16 = amber::BaseObject::getAttributeUInt32(*(a1 + 792), 121);
  amber::Buffer::resize(v39, v16 * v15, v17, v18, v19, v20, v21);
  if (v15)
  {
    v28 = amber::ObjectStorePath::ObjectStorePath(v40);
    if (((*(**(a1 + 792) + 88))(*(a1 + 792), 0, v40, v28) & 0x80000000) == 0 && v41 == v16)
    {
      operator new();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "createContainerAndUnlockWithPrologue", 0x1B0, 0, "invalid cluster id", v29);
    amber::ObjectStorePath::~ObjectStorePath(v40);
    amber::Buffer::~Buffer(v39, v33, v34, v35, v36, v37, v38);
    amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(v42);
    goto LABEL_28;
  }

  if (atomic_fetch_add_explicit(v44, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
  {
    do
    {
      amber::Sem::acquire(&v43);
    }

    while (atomic_fetch_add_explicit(v44, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
  }

  atomic_fetch_add_explicit(v44, 1uLL, memory_order_relaxed);
  amber::Buffer::~Buffer(v39, v22, v23, v24, v25, v26, v27);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(v42);
  result = 0;
LABEL_32:
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2969CDC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  amber::ObjectStorePath::~ObjectStorePath(va1);
  amber::Buffer::~Buffer(va, v5, v6, v7, v8, v9, v10);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(&STACK[0x2D8]);
  _Unwind_Resume(a1);
}

uint64_t amber::AEBDBlockDevice::createContainerAndUnlockWithProfile(uint64_t a1, amber::AEBDContainer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!*(a1 + 792))
  {
    amber::AEBDContainer::createAndUnlockWithProfile(a2);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "createContainerAndUnlockWithProfile", 0x176, 0, "device already has a container", a7);
  return 0xFFFFFFFFLL;
}

void amber::AEBDBlockDevice::~AEBDBlockDevice(amber::AEBDBlockDevice *this)
{
  *this = &unk_2A1DE2E38;
  amber::SyncBlockDevice::terminateThreads(this);
  v8 = *(this + 99);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  amber::Buffer::~Buffer((this + 816), v2, v3, v4, v5, v6, v7);
  *(this + 64) = &unk_2A1DDFDD8;
  *(this + 65) = &unk_2A1DDFE08;
  *(this + 532) = 0u;
  *(this + 548) = 0u;
  *(this + 564) = 0u;
  *(this + 580) = 0u;
  *(this + 596) = 0u;
  *(this + 612) = 0u;
  *(this + 628) = 0u;
  *(this + 644) = 0u;
  *(this + 660) = 0u;
  *(this + 676) = 0u;
  *(this + 692) = 0u;
  *(this + 708) = 0u;
  *(this + 724) = 0u;
  *(this + 740) = 0u;
  *(this + 756) = 0u;
  *(this + 772) = 0u;

  amber::SyncBlockDevice::~SyncBlockDevice(this, v9, v10, v11, v12, v13, v14);
}

{
  amber::AEBDBlockDevice::~AEBDBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

amber::BaseObject *amber::AEBDBlockDevice::postUnlockCommon(amber::BaseObject **this)
{
  AttributeUInt64 = amber::BaseObject::getAttributeUInt64(this[99], 105);
  this[59] = AttributeUInt64;
  if (AttributeUInt64 == -1)
  {
    v12 = "invalid size";
    v13 = 346;
  }

  else
  {
    AttributeUInt32 = amber::BaseObject::getAttributeUInt32(this[99], 122);
    *(this + 120) = AttributeUInt32;
    if (AttributeUInt32 == -1)
    {
      v12 = "invalid segment size";
      v13 = 347;
    }

    else
    {
      v5 = amber::BaseObject::getAttributeUInt32(this[99], 109);
      *(this + 121) = v5;
      if (v5 == -1)
      {
        v12 = "invalid block size";
        v13 = 348;
      }

      else if ((amber::BaseObject::getAttributeCryptoBlob(this[99], 123, 3, (this + 64), v6, v7, v3) & 0x80000000) != 0)
      {
        v12 = "get container id";
        v13 = 349;
      }

      else
      {
        result = this[63];
        if (!result)
        {
          return result;
        }

        v9 = amber::BaseObject::getAttributeUInt64(result, 201);
        v10 = amber::BaseObject::getAttributeUInt32(this[63], 204);
        v11 = amber::BaseObject::getAttributeUInt32(this[63], 203);
        if (v9 == this[59])
        {
          if (v10 == -1 || *(this + 120) == v10)
          {
            if (v11 == -1 || *(this + 121) == v11)
            {
              return 0;
            }

            v12 = "next block size mismatch";
            v13 = 361;
          }

          else
          {
            v12 = "next IO size mismatch";
            v13 = 360;
          }
        }

        else
        {
          v12 = "next/storage size mismatch";
          v13 = 358;
        }
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "postUnlockCommon", v13, 0, v12, v3);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDBlockDevice::ReadDataState::processReply(atomic_uint *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 7);
  v9 = *(a2 + 5);
  v89 = *(a2 + 6);
  v90 = *(a2 + 14);
  v10 = *(a2 + 8);
  v11 = *this;
  v12 = *(*this + 480);
  v13 = (v9 & 0x7FFFFFFFFFFFFFFFLL) * v12;
  v14 = v13 + v12;
  if (v14 >= *(*this + 472))
  {
    v15 = *(*this + 472);
  }

  else
  {
    v15 = v14;
  }

  v97[0] = &unk_2A1DDFD28;
  v97[2] = 0;
  v97[3] = 0;
  v97[1] = off_2A1DDFD48;
  v97[5] = 0;
  v97[6] = 0;
  v97[4] = &off_2A1DDFDA8;
  v97[7] = &off_2A1DDFC68;
  v98 = 0u;
  v99 = 0u;
  v100 = 1;
  v101 = 0;
  v92[2] = 0;
  v92[3] = 0;
  v92[1] = off_2A1DDFD48;
  v92[5] = 0;
  v92[6] = 0;
  v92[4] = &off_2A1DDFDA8;
  v92[7] = &off_2A1DDFC68;
  v93 = 0u;
  v94 = 0u;
  v95 = 257;
  v96 = 0;
  v92[0] = off_2A1DDFC98;
  if (v13 >= v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  if (v13 >= v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  if (*(this + 1) > v16 || v17 > *(this + 2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "processReply", 0x1ED, 0, "requested range doesn't match", a7);
LABEL_13:
    v18 = 0;
    atomic_compare_exchange_strong(this + 8, &v18, 1u);
    goto LABEL_14;
  }

  AttributeUInt32 = amber::BaseObject::getAttributeUInt32(*(v11 + 792), 109);
  if (AttributeUInt32 == -1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "processReply", 0x1F1, 0, "invalid container", v38);
    goto LABEL_13;
  }

  v88 = v13 / AttributeUInt32;
  v85 = AttributeUInt32;
  v87 = v15 / AttributeUInt32;
  v39 = v13 == v88 * AttributeUInt32 && v15 == v87 * AttributeUInt32;
  if (!v39 || (v86 = v87 - v88, (amber::Buffer::reserve(v97, v87 - v88, v34, v35, v36, v37, v38) & 0x80000000) != 0) || (v40 = *(*this + 792), amber::Buffer::buf(v97, v38, v102), amber::MutableMemoryView::operator+(v102, *(&v99 + 1), v41, v91), (amber::AEBDContainer::getBlockState(v40, v88, v87, v91, v42, v43, v44) & 0x80000000) != 0) || (amber::Buffer::grow(v97, v86, v45, v46, v47, v48, v38) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "processReply", 0x1FA, 0, "get block state", v38);
    goto LABEL_13;
  }

  if (v8 != 2)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "processReply", 0x22F, 0, "received an error from next/storage length: %u offset: %llu", v38, v90, v89);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
    if (v87 != v88)
    {
      v80 = 0;
      v81 = *(this + 3) + v13 - *(this + 1);
      do
      {
        v82 = v80 + 1;
        if (!*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v97, v80, v49, v50, v51, v52, v38))
        {
          v83 = 1;
          while (v82 < v86 && !*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v97, v82, v49, v50, v51, v52, v38))
          {
            ++v83;
            ++v82;
          }

          memcpy((v81 + v80 * v85), &v10[v80 * v85], v83 * v85);
        }

        v80 = v82;
      }

      while (v82 < v86);
    }
  }

  else
  {
    amber::BlockDeviceEvent::BlockDeviceEvent(v91, 20, a2);
    amber::BlockDeviceEvent::sendBegin(v91);
    v54 = *(*this + 792);
    v102[0] = &off_2A1DDFDA8;
    v102[1] = v10;
    v102[2] = v90;
    if (v90 && !v10)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", v53);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (((*(*v54 + 64))(v54, v9 & 0x7FFFFFFFFFFFFFFFLL, v102, v92) & 0x80000000) != 0 || amber::ConstMemoryViewConvertible<amber::Buffer>::size(v92, v55, v56, v57, v58, v59, v60) != v17 - v16)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "processReply", 0x20D, 0, "segment decryption failed", v60);
      amber::BlockDeviceEvent::~BlockDeviceEvent(v91);
      goto LABEL_13;
    }

    amber::BlockDeviceEvent::sendEnd(v91);
    v61 = *(this + 3);
    v62 = *(this + 1);
    v69 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v92, v63, v64, v65, v66, v67, v68);
    if (v87 != v88)
    {
      v75 = v69;
      v76 = 0;
      v77 = v61 + v13 - v62;
      do
      {
        v78 = v76 + 1;
        if (*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v97, v76, v70, v71, v72, v73, v74) == 2)
        {
          v79 = 1;
          while (v78 < v86 && *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v97, v78, v70, v71, v72, v73, v74) == 2)
          {
            ++v79;
            ++v78;
          }

          memcpy((v77 + v76 * v85), (v75 + v76 * v85), v79 * v85);
        }

        v76 = v78;
      }

      while (v78 < v86);
    }

    amber::BlockDeviceEvent::~BlockDeviceEvent(v91);
  }

LABEL_14:
  free(v10);
  amber::Sem::release((this + 10));
  amber::Buffer::~Buffer(v92, v19, v20, v21, v22, v23, v24);
  amber::Buffer::~Buffer(v97, v25, v26, v27, v28, v29, v30);
  return 0;
}

void sub_2969CE8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  __cxa_free_exception(v34);
  amber::BlockDeviceEvent::~BlockDeviceEvent(&a18);
  amber::Buffer::~Buffer(&a21, v36, v37, v38, v39, v40, v41);
  amber::Buffer::~Buffer(&a34, v42, v43, v44, v45, v46, v47);
  _Unwind_Resume(a1);
}

uint64_t amber::AEBDBlockDevice::setAttribute(amber::AEBDBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "setAttribute", 0x242, 0, "invalid attribute encoding %u, %u", v15, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (atomic_load(this + 200))
  {
    goto LABEL_3;
  }

  if (a2 == 204)
  {
    v18 = this + 480;
    goto LABEL_15;
  }

  if (a2 == 203)
  {
    v18 = this + 484;
LABEL_15:

    return amber::storeAttribute<unsigned int>(v18, a4, v11, v12, v13, v14, v15);
  }

  if (a2 != 201)
  {
LABEL_3:

    return amber::BlockDevice::setAttribute(this, a2, a3, a4, v13, v14, v15);
  }

  return amber::storeAttribute<unsigned long long>(this + 59, a4, v11, v12, v13, v14, v15);
}

uint64_t amber::AEBDBlockDevice::getAttribute(amber::AEBDBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "getAttribute", 0x25D, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 202)
  {
    if (a2 == 201)
    {
      v19 = *(this + 59);
      *a5 = 8;
      v16 = *(a4 + 2);
      if (v16)
      {
        if (v16 > 7)
        {
          result = 0;
          **(a4 + 1) = v19;
          return result;
        }

        v17 = 8;
        goto LABEL_18;
      }

      return 0;
    }

    if (a2 != 202)
    {
      goto LABEL_26;
    }

    v14 = *(this + 122);
LABEL_15:
    *a5 = 4;
    v16 = *(a4 + 2);
    if (v16)
    {
      if (v16 > 3)
      {
        result = 0;
        **(a4 + 1) = v14;
        return result;
      }

      v17 = 4;
LABEL_18:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, v17, v16);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  switch(a2)
  {
    case 0xCD:
      v15 = *(this + 120);
      do
      {
        v14 = v15;
        v15 *= 2;
      }

      while (v14 < 0x40000);
      goto LABEL_15;
    case 0xCC:
      v14 = *(this + 120);
      goto LABEL_15;
    case 0xCB:
      v14 = *(this + 121);
      goto LABEL_15;
  }

LABEL_26:

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::AEBDBlockDevice::getBlockState(amber::AEBDBlockDevice *this, unint64_t a2, unint64_t a3, const amber::MutableMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 >= a3)
  {
    return 0;
  }

  if (atomic_load(this + 200))
  {
    if ((amber::AEBDContainer::getBlockState(*(this + 99), a2, a3, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v11 = "get container block state";
    v12 = 649;
  }

  else
  {
    v11 = "AEBD container is not unlocked";
    v12 = 639;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "getBlockState", v12, 0, v11, a7, v7, v8);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDBlockDevice::setBlockState(amber::AEBDContainer **this, unint64_t a2, unint64_t a3, const amber::ConstMemoryView *a4)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v20 = v7;
  v21 = v6;
  v22 = v5;
  v23 = v4;
  if ((amber::AEBDBlockDevice::ensureUnlocked(this) & 0x80000000) != 0)
  {
    v18 = "AEBD container is not unlocked";
    v19 = 667;
  }

  else
  {
    if ((amber::AEBDContainer::setBlockState(this[99], a2, a3, a4, v14, v15, v16) & 0x80000000) == 0)
    {
      return 0;
    }

    v18 = "set container block state";
    v19 = 680;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "setBlockState", v19, 0, v18, v16, v20, v21, v22, v23, v8, v9);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDBlockDevice::ensureUnlocked(amber::AEBDBlockDevice *this)
{
  v2 = (this + 808);
  v5 = this;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = &v5;
    v6 = &v7;
    std::__call_once(v2, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<amber::AEBDBlockDevice::ensureUnlocked(void)::{lambda(void)#1} &&>>);
  }

  if (atomic_load(this + 200))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::AEBDBlockDevice::setBlockState(amber::AEBDContainer **this, unint64_t a2, unint64_t a3, unsigned int a4)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v20 = v7;
  v21 = v6;
  v22 = v5;
  v23 = v4;
  if ((amber::AEBDBlockDevice::ensureUnlocked(this) & 0x80000000) != 0)
  {
    v18 = "AEBD container is not unlocked";
    v19 = 698;
  }

  else
  {
    if ((amber::AEBDContainer::setBlockState(this[99], a2, a3, a4, v14, v15, v16) & 0x80000000) == 0)
    {
      return 0;
    }

    v18 = "set container block state";
    v19 = 712;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "setBlockState", v19, 0, v18, v16, v20, v21, v22, v23, v8, v9);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDBlockDevice::executeRead(amber::AEBDContainer **this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v59 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 8);
  v6 = *(a3 + 6);
  v7 = *(a3 + 14);
  v8 = (v6 + v7);
  v9 = *(a3 + 6);
  if (v6 >= v6 + v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a3 + 6);
  }

  if (v6 >= v6 + v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v6 + v7;
  }

  v12 = v10 >= v11;
  if (v10 >= v11)
  {
    v10 = 0;
  }

  v49 = this;
  v50 = v10;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v51 = v13;
  v52 = v5;
  v53 = 0;
  v54[0] = xmmword_296A14210;
  memset(&v54[1], 0, 48);
  v55 = 0;
  v56 = 1018212795;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  if ((amber::AEBDBlockDevice::ensureUnlocked(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeRead", 0x2DD, 0, "AEBD container is not unlocked", v17);
LABEL_20:
    v24 = -2147483643;
    goto LABEL_21;
  }

  if (__CFADD__(v6, v7) || (v18 = *(this + 120), v6 % v18) || (v19 = this[59], v8 > v19) || v8 != v19 && v8 % v18)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeRead", 0x2E0, 0, "invalid request range offset: %llu length: %u", v17, v6, v7);
    v24 = -2147483626;
LABEL_21:
    amber::BlockDeviceRequest::sendReply(a3, v24, 0, v20, v21, v22, v23);
    v25 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  if (v5)
  {
    amber::zero(void *,unsigned long)::memset_func(v5, 0, v7);
  }

  if (v6 < v8)
  {
    v28 = *(this + 120);
    while (1)
    {
      v29 = v6 / v28;
      if ((*(*this[99] + 112))(this[99], v6 / v28))
      {
        v31 = amber::ObjectStorePath::ObjectStorePath(v47);
        if (((*(*this[99] + 96))(this[99], v29, v47, v31) & 0x80000000) != 0 || size > *(this + 120))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeRead", 0x2ED, 0, "get segment storage attributes", v32);
        }

        else
        {
          if (malloc_type_malloc(size, 0xF93785E2uLL))
          {
            operator new();
          }

          v39 = __error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v39, "malloc", v40);
          v41 = __error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeRead", 0x2F0, *v41, "malloc", v42);
        }

        v24 = -2147483643;
        amber::ObjectStorePath::~ObjectStorePath(v47);
        goto LABEL_21;
      }

      if ((v9 & 0x10000) == 0 && this[63] && amber::AEBDContainer::segmentHasPassThrough(this[99], v29, v30, v14, v15, v16, v17))
      {
        break;
      }

      v28 = *(this + 120);
      v6 += v28;
      if (v6 >= v8)
      {
        goto LABEL_40;
      }
    }

    v33 = *(this + 120);
    if (this[59] < v6 + v33)
    {
      v34 = this[59];
    }

    if (malloc_type_malloc(v33, 0xF93785E2uLL))
    {
      operator new();
    }

    v43 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v43, "malloc", v44);
    v45 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeRead", 0x316, *v45, "malloc", v46);
    goto LABEL_20;
  }

LABEL_40:
  if (v58[6]-- >= 1)
  {
    do
    {
      amber::Sem::acquire(v54);
      v36 = v58[6]--;
    }

    while (v36 > 0);
  }

  if (atomic_load(&v53))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeRead", 0x334, 0, "storage/next device requests reported errors", v17);
    goto LABEL_20;
  }

  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v14, v15, v16, v17) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeRead", 0x347, 0, "reply data", v38);
  }

  v25 = 0;
LABEL_22:
  std::condition_variable::~condition_variable(&v56);
  std::mutex::~mutex((v54 + 8));
  v26 = *MEMORY[0x29EDCA608];
  return v25;
}

void sub_2969CF5A4(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 112));
  std::mutex::~mutex((v1 + 48));
  _Unwind_Resume(a1);
}

uint64_t amber::AEBDBlockDevice::executeWrite(amber::AEBDBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v55[75] = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 8);
  v6 = *(a3 + 6);
  v7 = *(a3 + 14);
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(&v50, 1);
  if ((amber::AEBDBlockDevice::ensureUnlocked(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeWrite", 0x35D, 0, "AEBD container is not unlocked", v11);
  }

  else
  {
    if (*(this + 488))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeWrite", 0x360, 0, "WRITE on read-only device", v11);
      v15 = 0;
      v16 = -2147483647;
      goto LABEL_12;
    }

    if (__CFADD__(v6, v7) || (v12 = *(this + 120), v6 % v12) || (v13 = v6 + v7, v14 = *(this + 59), v6 + v7 > v14) || v6 + v7 != v14 && v13 % v12)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeWrite", 0x363, 0, "invalid request range offset: %llu length: %u", v11, v6, v7);
      v15 = 0;
      v16 = -2147483626;
LABEL_12:
      v17 = 0xFFFFFFFFLL;
      goto LABEL_13;
    }

    if (v6 < v13)
    {
      v20 = v6;
      while (1)
      {
        v21 = *(this + 59) >= v20 + v12 ? v20 + v12 : *(this + 59);
        v22 = amber::ObjectStorePath::ObjectStorePath(v48);
        v23 = v20 / v12;
        if ((*(**(this + 99) + 112))(*(this + 99), v20 / v12, v22))
        {
          break;
        }

        amber::ObjectStorePath::~ObjectStorePath(v48);
        v12 = *(this + 120);
        v20 += v12;
        if (v20 >= v13)
        {
          goto LABEL_34;
        }
      }

      v15 = malloc_type_malloc(*(this + 120), 0xF93785E2uLL);
      if (v15)
      {
        amber::ProxyBuffer::ProxyBuffer(v47, *(this + 120), v15, 0, v24, v25, v26);
        v30 = *(this + 99);
        v46[0] = &off_2A1DDFC68;
        v46[1] = v5 + v20 - v6;
        v46[2] = v21 - v20;
        if (v5)
        {
          v31 = 1;
        }

        else
        {
          v31 = v21 == v20;
        }

        v32 = v31;
        if (((v21 - v20) & 0x8000000000000000) != 0 || (v32 & 1) == 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v29);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid args");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        if ((amber::AEBDContainer::encryptSegment(v30, v23, v46, v47, v27, v28, v29) & 0x80000000) == 0 && ((*(**(this + 99) + 96))(*(this + 99), v23, v48) & 0x80000000) == 0 && v49 <= *(this + 120))
        {
          operator new();
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeWrite", 0x382, 0, "encrypt segment", v33);
        v16 = -2147483643;
        amber::Buffer::~Buffer(v47, v35, v36, v37, v38, v39, v40);
        amber::ObjectStorePath::~ObjectStorePath(v48);
      }

      else
      {
        v41 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v41, "malloc", v42);
        v43 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeWrite", 0x37A, *v43, "malloc", v44);
        v16 = -2147483643;
        amber::ObjectStorePath::~ObjectStorePath(v48);
        v15 = 0;
      }

      goto LABEL_12;
    }

LABEL_34:
    if (atomic_fetch_add_explicit(v54, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
    {
      do
      {
        amber::Sem::acquire(&v51);
      }

      while (atomic_fetch_add_explicit(v54, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
    }

    v16 = 1;
    atomic_fetch_add_explicit(v54, 1uLL, memory_order_relaxed);
    if (!atomic_load(&v50))
    {
      v17 = 0;
      v15 = 0;
      goto LABEL_13;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/AEBDBlockDevice.cpp", "executeWrite", 0x3A5, 0, "storage device requests reported errors", v11);
  }

  v15 = 0;
  v17 = 0xFFFFFFFFLL;
  v16 = -2147483643;
LABEL_13:
  amber::BlockDeviceRequest::sendReply(a3, v16, 0, v8, v9, v10, v11);
  free(v15);
  amber::ObjectStorePath::~ObjectStorePath(v55);
  std::condition_variable::~condition_variable(&v53);
  std::mutex::~mutex(&v52);
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}