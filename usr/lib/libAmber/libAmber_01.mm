void sub_2969565B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMetadataPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
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

  v11[3] = v7;
  v11[4] = v8;
  v9 = *(a1 + 16);
  if (v9 > 0xF)
  {
    v11[0] = &off_2A1DDFC68;
    v11[1] = a1 + 20;
    v11[2] = v9;
    amber::hexBytesToStringEnd(v11, a2, a3, a4, a5, a6, a7);
    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxObjectStore.cpp", "getMetadataPath", 0x69, 0, "invalid key size", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::DaemonKnoxObjectStore::openExclusiveMetadataWriteStream(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  std::mutex::lock((a1 + 72));
  if ((getMetadataPath(a2, __p, v4, v5, v6, v7, v8) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxObjectStore.cpp", "openExclusiveMetadataWriteStream", 0x8F, 0, "loadMetadata", v9);
  }

  else
  {
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = openat(*(a1 + 160), v10, 1537, 448);
    if ((v11 & 0x80000000) == 0)
    {
      amber::fileStreamOpenWithFD(v11);
    }

    v12 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxObjectStore.cpp", "openExclusiveMetadataWriteStream", 0x94, *v12, "storeMetadata open", v13);
  }

  std::mutex::unlock((a1 + 72));
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_2969567B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::DaemonKnoxObjectStore::closeExclusiveMetadataStream(amber::DaemonKnoxObjectStore *this, amber::Stream *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (*(*a2 + 32))(a2);
  (*(*a2 + 8))(a2);
  std::mutex::unlock((this + 72));
  return v4;
}

void sub_2969569D0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 648) = v4;
    operator delete(v4);
  }

  amber::NBDURL::~NBDURL((v1 + 472));
  amber::SyncBlockDevice::~SyncBlockDevice(v1, v5, v6, v7, v8, v9, v10);
  _Unwind_Resume(a1);
}

void amber::NBDBlockDevice::~NBDBlockDevice(amber::NBDBlockDevice *this)
{
  *this = &unk_2A1DE0380;
  amber::SyncBlockDevice::terminateThreads(this);
  v8 = *(this + 80);
  v9 = *(this + 81);
  if (v8 != v9)
  {
    do
    {
      if (*v8)
      {
        (*(**v8 + 8))(*v8);
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = *(this + 80);
  }

  if (v8)
  {
    *(this + 81) = v8;
    operator delete(v8);
  }

  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::NBDBlockDevice::~NBDBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

void std::vector<amber::NBDClientEndpoint *>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<amber::NBDClientEndpoint *>::__append(a1, a2 - v3, a3);
  }
}

uint64_t amber::NBDBlockDevice::createEndpoint(amber::NBDBlockDevice *this, uint64_t a2, int (*a3)(void *, int *, unint64_t, char *, unint64_t *))
{
  v4 = 50000;
  v5 = 6;
  while (1)
  {
    v6 = *(this + 73);
    if (!v6)
    {
      amber::nbdConnectToServer((this + 472), 0);
    }

    v7 = amber::nbdConnectToServer(*(this + 72), v6, a3);
    v9 = v7;
    if (v7)
    {
      break;
    }

    usleep(v4);
    v4 *= 2;
    if (!--v5)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "createEndpoint", 0xB7, 0, "could not connect to NBD server", v10);
      return 0;
    }
  }

  if (*(v7 + 16) != *(this + 74) || *(v7 + 36) != *(this + 306) || *(v7 + 38) != *(this + 614))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "createEndpoint", 0xBF, 0, "NBD attributes mismatch", v8);
    (*(*v9 + 8))(v9);
    return 0;
  }

  return v9;
}

uint64_t amber::nbdConnectToServer(amber *this, uint64_t (*a2)(amber *, int *, uint64_t, _BYTE *, uint64_t *), int (*a3)(void *, int *, unint64_t, char *, unint64_t *))
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = 0;
  v6 = -1;
  if ((a2(this, &v6, 256, v8, &v7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "nbdConnectToServer", 0x200, 0, "nbdConnectToServer (proc): connection failed", v3);
  }

  else
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "nbdConnectToServer", 0x201, 0, "invalid fd", v3);
  }

  result = 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void amber::nbdConnectToServer(amber *this, const amber::NBDURL *a2)
{
  if (*(this + 103) < 0)
  {
    v3 = *(this + 10);
    if (*(this + 11))
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
LABEL_11:
      amber::NetworkEndpoint::clientNamedConnect(v3, a2);
    }
  }

  else if (*(this + 103))
  {
    v3 = (this + 80);
    goto LABEL_11;
  }

  v5 = *(this + 55);
  if (v5 < 0)
  {
    v6 = *(this + 4);
    v7 = *(this + 5) == 0;
  }

  else
  {
    v6 = (this + 32);
    v7 = v5 == 0;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  amber::NetworkEndpoint::clientIPConnect(v8, *(this + 2));
}

uint64_t amber::NBDBlockDevice::getAttribute(amber::NBDBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "getAttribute", 0xD6, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 203)
  {
    if (a2 == 204)
    {
      v14 = *(this + 150);
    }

    else
    {
      if (a2 != 205)
      {
        goto LABEL_12;
      }

      v14 = *(this + 151);
    }

LABEL_19:
    LODWORD(v19) = v14;
    v20 = &off_2A1DDFDA8;
    v21 = &v19;
    v22 = 4;
    v23 = &off_2A1DDFC68;
    v24 = &v19;
    v25 = 4;
    *a5 = 4;
    v17 = *(a4 + 2);
    if (v17)
    {
      if (v17 > 3)
      {
        result = 0;
        **(a4 + 1) = v14;
        return result;
      }

      v18 = 4;
LABEL_22:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v13, v18, v17);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  if (a2 == 201)
  {
    v16 = *(this + 74);
    v19 = v16;
    v20 = &off_2A1DDFDA8;
    v21 = &v19;
    v22 = 8;
    v23 = &off_2A1DDFC68;
    v24 = &v19;
    v25 = 8;
    *a5 = 8;
    v17 = *(a4 + 2);
    if (v17)
    {
      if (v17 > 7)
      {
        result = 0;
        **(a4 + 1) = v16;
        return result;
      }

      v18 = 8;
      goto LABEL_22;
    }

    return 0;
  }

  if (a2 == 202)
  {
    v14 = *(this + 158);
    goto LABEL_19;
  }

LABEL_12:

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v12, v13);
}

uint64_t amber::NBDBlockDevice::setPrefetchSequence(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x29EDCA608];
  v51 = 0;
  v50 = 0;
  amber::ObjectStorePath::ObjectStorePath(v52);
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
  if ((*(a1 + 616) & 1) == 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "setPrefetchSequence", 0xF4, 0, "prefetch sequence not supported", v8);
    goto LABEL_6;
  }

  if ((amber::nbdAppend(v45, a2, v4, v5, v6, v7, v8) & 0x80000000) == 0 && !(amber::ConstMemoryViewConvertible<amber::Buffer>::size(v45, v9, v10, v11, v12, v13, v14) >> 32))
  {
    Endpoint = amber::NBDBlockDevice::createEndpoint(a1, v15, v16);
    if (!Endpoint)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "setPrefetchSequence", 0xFC, 0, "connecting to server", v31);
      goto LABEL_6;
    }

    add_explicit = atomic_fetch_add_explicit((a1 + 624), 1uLL, memory_order_relaxed);
    v34 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v45, v26, v27, v28, v29, v30, v31);
    v41 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v45, v35, v36, v37, v38, v39, v40);
    if ((amber::NBDClientEndpoint::sendRequest(Endpoint, 0, 0x8000, add_explicit, 0, v34, v41, v52, 0, 0, v44) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "setPrefetchSequence", 0x107, 0, "NBD request", v42);
    }

    else if ((amber::NBDClientEndpoint::receiveReply(Endpoint, &v50, &v51, 0, 0, 0, v42) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "setPrefetchSequence", 0x110, 0, "NBD reply", v43);
    }

    else
    {
      if (!v50)
      {
        v23 = 0;
        goto LABEL_17;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "setPrefetchSequence", 0x111, 0, "reply error", v43);
    }

    v23 = 0xFFFFFFFFLL;
LABEL_17:
    (*(*Endpoint + 8))(Endpoint);
    goto LABEL_7;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "setPrefetchSequence", 0xF8, 0, "serializing prefetch sequence", v14);
LABEL_6:
  v23 = 0xFFFFFFFFLL;
LABEL_7:
  amber::Buffer::~Buffer(v45, v17, v18, v19, v20, v21, v22);
  amber::ObjectStorePath::~ObjectStorePath(v52);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

void sub_296957470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  amber::Buffer::~Buffer(&a12, a2, a3, a4, a5, a6, a7);
  amber::ObjectStorePath::~ObjectStorePath(&a27);
  _Unwind_Resume(a1);
}

uint64_t amber::NBDBlockDevice::executeCommon(amber::NBDBlockDevice *this, uint64_t a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a2;
  Endpoint = *(*(this + 80) + 8 * a2);
  if (!(a3 | Endpoint))
  {
    LODWORD(v10) = 1;
LABEL_45:
    *(*(this + 80) + 8 * v7) = 0;
    goto LABEL_64;
  }

  v10 = a3;
  v11 = 0;
  HIDWORD(v51) = 200000;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    if (v11)
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "executeCommon", 0x139, 0, "NBDBlockDevice: thread %u retry connection %d", a7, a2, 1);
      if (Endpoint)
      {
        (*(*Endpoint + 8))(Endpoint);
        *(*(this + 80) + 8 * a2) = 0;
      }

      usleep(HIDWORD(v51));
      HIDWORD(v51) *= 2;
    }

    else if (Endpoint)
    {
      goto LABEL_10;
    }

    Endpoint = amber::NBDBlockDevice::createEndpoint(this, a2, a3);
    *(*(this + 80) + 8 * a2) = Endpoint;
    if (!Endpoint)
    {
      v7 = a2;
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "executeCommon", 0x14D, 0, "NBDBlockDevice: thread %u NBD connection failed", a7, a2);
      if (!v10)
      {
        goto LABEL_45;
      }

      if ((amber::BlockDeviceRequest::sendReply(v10, -2147483643, 0, v33, v34, v35, v36) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v32 = 334;
      goto LABEL_57;
    }

LABEL_10:
    if (!v10)
    {
      (*(*Endpoint + 8))(Endpoint);
      LODWORD(v10) = 1;
      v7 = a2;
      goto LABEL_45;
    }

    add_explicit = atomic_fetch_add_explicit(this + 78, 1uLL, memory_order_relaxed);
    if (*(v10 + 24))
    {
      v15 = ((*(this + 316) >> 2) & 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v10 + 6);
    v17 = *(v10 + 14);
    v18 = *(v10 + 5);
    if (v18 <= 3)
    {
      switch(v18)
      {
        case 1:
          v19 = 0;
          v20 = 0;
          break;
        case 2:
          v19 = *(v10 + 8);
          v20 = 1;
          break;
        case 3:
          v19 = 0;
          v17 = 0;
          v16 = 0;
          v20 = 3;
          break;
        default:
          goto LABEL_52;
      }
    }

    else if (v18 > 5)
    {
      if (v18 == 6)
      {
        v19 = 0;
        v20 = 6;
      }

      else
      {
        if (v18 != 7)
        {
LABEL_52:
          if ((amber::BlockDeviceRequest::sendReply(v10, -2147483603, 0, a4, a5, a6, a7) & 0x80000000) == 0)
          {
            LODWORD(v10) = 1;
            goto LABEL_64;
          }

          v32 = 409;
          goto LABEL_57;
        }

        v19 = 0;
        v20 = 8;
      }
    }

    else
    {
      v19 = 0;
      if (v18 == 4)
      {
        v20 = 4;
      }

      else
      {
        v20 = 5;
      }
    }

    amber::BlockDeviceEvent::BlockDeviceEvent(v53, 29, v10);
    amber::BlockDeviceEvent::sendBegin(v53);
    v21 = v53[0];
    if (v53[0])
    {
      v22 = *(v53[0] + 48);
      v21 = *v53[0];
    }

    else
    {
      v22 = 0;
    }

    if ((amber::NBDClientEndpoint::sendRequest(Endpoint, v15, v20, add_explicit, v16, v17, v19, (v10 + 88), v22, v21, v51) & 0x80000000) != 0)
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "executeCommon", 0x1AD, 0, "NBD IO Amber extended request", v23);
      goto LABEL_38;
    }

    amber::BlockDeviceEvent::sendEnd(v53);
    v24 = 0;
    v56 = 0;
    v55 = 0;
    if (*(v10 + 5) == 1)
    {
      v24 = *(v10 + 8);
    }

    amber::BlockDeviceEvent::BlockDeviceEvent(v54, 30, v10);
    amber::BlockDeviceEvent::sendBegin(v54);
    if ((amber::NBDClientEndpoint::receiveReply(Endpoint, &v56, &v55, *(v10 + 6), *(v10 + 14), v24, v25) & 0x80000000) == 0)
    {
      break;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "nbdReceiveAndProcessReply", 0x21C, 0, "NBD reply", v26);
    amber::BlockDeviceEvent::~BlockDeviceEvent(v54);
LABEL_38:
    amber::BlockDeviceEvent::~BlockDeviceEvent(v53);
    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "executeCommon", 0x1CE, 0, "NBDBlockDevice: NBD request failed after multiple attempts", a7);
      if ((amber::BlockDeviceRequest::sendReply(v10, -2147483643, 0, v27, v28, v29, v30) & 0x80000000) == 0)
      {
LABEL_58:
        LODWORD(v10) = 0;
        goto LABEL_64;
      }

      v32 = 463;
LABEL_57:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "executeCommon", v32, 0, "sending error", v31);
      goto LABEL_58;
    }
  }

  amber::BlockDeviceEvent::sendEnd(v54);
  if (v56)
  {
    if ((amber::BlockDeviceRequest::sendReply(v10, v56 | 0x80000000, 0, v37, v38, v39, v40) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "nbdReceiveAndProcessReply", 0x221, 0, "reply error", v41);
      goto LABEL_60;
    }

LABEL_55:
    amber::BlockDeviceEvent::~BlockDeviceEvent(v54);
    LODWORD(v10) = 1;
  }

  else
  {
    if (*(v10 + 5) == 1)
    {
      if ((amber::BlockDeviceRequest::sendReply(v10, 2, 0, v37, v38, v39, v40) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "nbdReceiveAndProcessReply", 0x225, 0, "reply data", v42);
    }

    else
    {
      if ((amber::BlockDeviceRequest::sendReply(v10, 1, 0, v37, v38, v39, v40) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "nbdReceiveAndProcessReply", 0x229, 0, "reply OK", v43);
    }

LABEL_60:
    amber::BlockDeviceEvent::~BlockDeviceEvent(v54);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "executeCommon", 0x1C1, 0, "NBDBlockDevice: NBD receive and process reply", v44);
    if ((amber::BlockDeviceRequest::sendReply(v10, -2147483643, 0, v45, v46, v47, v48) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "executeCommon", 0x1C2, 0, "sending error", v49);
    }

    LODWORD(v10) = 0;
  }

  amber::BlockDeviceEvent::~BlockDeviceEvent(v53);
LABEL_64:
  if (v10)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_296957AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va1);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t AmberNBDBlockDeviceOpen(amber::NBDURL *a1, const char *a2)
{
  v3 = amber::NBDURL::createWithString(a1, a2);
  if (v3)
  {
    amber::nbdConnectToServer(v3, v4);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "AmberNBDBlockDeviceOpen", 0x23C, 0, "invalid NBD URL: %s", v5, a1);
  return 0;
}

void sub_296957CD8(void *a1)
{
  __cxa_begin_catch(a1);
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "AmberNBDBlockDeviceOpen", 0x246, 0, "NBDBlockDevice constructor", v1);
  __cxa_end_catch();
  JUMPOUT(0x296957BF4);
}

uint64_t AmberNBDBlockDeviceOpenWithConnectProc(amber *a1, uint64_t (*a2)(amber *, int *, uint64_t, _BYTE *, uint64_t *), int (*a3)(void *, int *, unint64_t, char *, unint64_t *))
{
  v3 = amber::nbdConnectToServer(a1, a2, a3);
  if (v3)
  {
    *&v6[9] = *(v3 + 25);
    *v6 = *(v3 + 16);
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "AmberNBDBlockDeviceOpenWithConnectProc", 0x263, 0, "connection failed (callback mode)", v4);
  return 0;
}

void sub_296957E34(void *a1)
{
  __cxa_begin_catch(a1);
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/NBDBlockDevice.cpp", "AmberNBDBlockDeviceOpenWithConnectProc", 0x26B, 0, "NBDBlockDevice constructor", v2);
  __cxa_end_catch();
  (*(*v1 + 8))(v1);
  JUMPOUT(0x296957E10);
}

void amber::NBDURL::~NBDURL(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::vector<amber::NBDClientEndpoint *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_296A14570)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amber::IOSegment *>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_296A14570)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void amber::cfSetError(amber *this, __CFError **a2, const char *a3)
{
  userInfoKeys[1] = *MEMORY[0x29EDCA608];
  if (!*this)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    v5 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], a2, 0x8000100u);
    if (v5)
    {
      v6 = v5;
      v7 = *MEMORY[0x29EDB8F58];
      userInfoValues = v5;
      userInfoKeys[0] = v7;
      *this = CFErrorCreateWithUserInfoKeysAndValues(v4, @"com.apple.amber", 1, userInfoKeys, &userInfoValues, 1);
      CFRelease(v6);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t amber::cfGetString(const __CFDictionary *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  cf = 0;
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
  if (!a1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "cfGetString", 0x22, 0, "dict is NULL", a7);
LABEL_11:
    v46 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  if (!a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "cfGetString", 0x23, 0, "key is NULL", a7);
    goto LABEL_11;
  }

  v9 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], a2, 0x8000100u);
  if (!CFDictionaryGetValueIfPresent(a1, v9, &cf))
  {
    v46 = 0;
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v16 = CFGetTypeID(cf);
  if (v16 == CFStringGetTypeID())
  {
    v18 = cf;
    Length = CFStringGetLength(cf);
    if ((amber::Buffer::resize(v51, (4 * Length) | 1, v20, v21, v22, v23, v24) & 0x80000000) != 0)
    {
      v47 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "cfGetString", 0x2A, *v47, "malloc", v48);
    }

    else
    {
      v31 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v51, v25, v26, v27, v28, v29, v30);
      v38 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v51, v32, v33, v34, v35, v36, v37);
      if (CFStringGetCString(v18, v31, v38, 0x8000100u))
      {
        v45 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v51, v39, v40, v41, v42, v43, v44);
        MEMORY[0x29C25BF00](a3, v45);
        v46 = 1;
        if (!v9)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "cfGetString", 0x2B, 0, "CFStringGetCString", v44);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "cfGetString", 0x27, 0, "invalid type", v17);
  }

  v46 = 0xFFFFFFFFLL;
  if (v9)
  {
LABEL_18:
    CFRelease(v9);
  }

LABEL_19:
  amber::Buffer::~Buffer(v51, v10, v11, v12, v13, v14, v15);
  return v46;
}

void sub_2969585C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::cfGetInteger(amber *this, const __CFDictionary *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  value = 0;
  if (!this)
  {
    v13 = "dict is NULL";
    v14 = 59;
LABEL_10:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "cfGetInteger", v14, 0, v13, a7);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    v13 = "key is NULL";
    v14 = 60;
    goto LABEL_10;
  }

  v9 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], a2, 0x8000100u);
  if (!CFDictionaryGetValueIfPresent(this, v9, &value))
  {
    v12 = 0;
    if (!v9)
    {
      return v12;
    }

    goto LABEL_16;
  }

  v10 = CFGetTypeID(value);
  if (v10 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(value, kCFNumberSInt64Type, a3))
    {
      v12 = 1;
      if (!v9)
      {
        return v12;
      }

      goto LABEL_16;
    }

    v15 = "invalid value";
    v16 = 66;
  }

  else
  {
    v15 = "invalid type";
    v16 = 64;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "cfGetInteger", v16, 0, v15, v11);
  v12 = 0xFFFFFFFFLL;
  if (v9)
  {
LABEL_16:
    CFRelease(v9);
  }

  return v12;
}

uint64_t amber::diEncodeString(void (**a1)(uint64_t, uint64_t, char *, size_t), uint64_t a2, uint64_t a3, char *__s)
{
  v8 = strlen(__s);
  if (v8)
  {
    (*a1)(a2, a3, __s, v8);
    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "diEncodeString", 0x50, 0, "empty string", v9);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::diEncodeUInt64(void (**a1)(uint64_t, uint64_t, char *, size_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x28uLL, "%llu", a4);
  result = amber::diEncodeString(a1, a2, a3, __str);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::diEncodeUInt32(void (**a1)(uint64_t, uint64_t, char *, size_t), uint64_t a2, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x28uLL, "%u", a4);
  result = amber::diEncodeString(a1, a2, a3, __str);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::diDecodeString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v6 = (*a1)(a2, a3, &v8);
  if (!v8 || v6 < 0)
  {
    if (v6 == -2)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    MEMORY[0x29C25BF10](a4);
    (*(a1 + 16))(v8);
    return 1;
  }
}

uint64_t amber::diDecodeUInt64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v5 = amber::diDecodeString(a1, a2, a3, __p);
  if (v5 >= 1)
  {
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *a4 = strtoull(v6, 0, 0);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2969589F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::diDecodeUInt32(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v5 = amber::diDecodeString(a1, a2, a3, __p);
  if (v5 >= 1)
  {
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *a4 = strtoul(v6, 0, 0);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_296958A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

amber::DiskImagePlugin *amber::DiskImagePlugin::DiskImagePlugin(amber::DiskImagePlugin *this, unint64_t a2)
{
  *this = &unk_2A1DE0488;
  *(this + 7) = this;
  amber::zero(void *,unsigned long)::memset_func(this + 8, 0, 48);
  *(this + 14) = this;
  amber::zero(void *,unsigned long)::memset_func(this + 64, 0, 48);
  amber::HTTPAuthenticator::HTTPAuthenticator((this + 120), a2);
  *(this + 1) = 0x100000030;
  *(this + 2) = amber::DiskImagePlugin::create_cb_default;
  *(this + 3) = amber::DiskImagePlugin::decode_cb;
  *(this + 4) = amber::DiskImagePlugin::description_cb;
  *(this + 5) = amber::DiskImagePlugin::release_cb;
  *(this + 8) = 0x100000030;
  *(this + 9) = amber::DiskImagePlugin::create_cb_no_nbd;
  *(this + 10) = amber::DiskImagePlugin::decode_cb;
  *(this + 11) = amber::DiskImagePlugin::description_cb;
  *(this + 12) = amber::DiskImagePlugin::release_cb;
  return this;
}

uint64_t amber::DiskImagePlugin::decode_cb(uint64_t a1, uint64_t a2, amber *a3)
{
  amber::DiskImagePlugin::instance(0, 0, a3);
  memset(&v25, 0, sizeof(v25));
  if (amber::diDecodeString(a1, a2, "ImageType", &v25) <= 0)
  {
    v10 = "missing ImageType";
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "decode_cb", 0x158, 0, "missing ImageType", v6);
LABEL_10:
    amber::cfSetError(a3, v10, v9);
    goto LABEL_32;
  }

  if (!std::string::compare(&v25, "amber+knox"))
  {
    __p = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v19[0] = 0;
    v20 = 0;
    if ((amber::diDecodeString(a1, a2, "URL", &__p) & 0x80000000) == 0 && (amber::diDecodeUInt64(a1, a2, "Size", &v21) & 0x80000000) == 0 && (amber::diDecodeUInt32(a1, a2, "IOSize", v19) & 0x80000000) == 0 && (amber::diDecodeUInt32(a1, a2, "NThreads", &v20) & 0x80000000) == 0)
    {
      amber::DiskImagePluginAmberKnoxImage::create();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "decode_cb", 0x164, 0, "DiskImagePluginAmberKnoxImage decode", v11);
    amber::cfSetError(a3, "DiskImagePluginAmberKnoxImage decode", v12);
  }

  else if (!std::string::compare(&v25, "nbd"))
  {
    __p = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v19[0] = 0;
    v20 = 0;
    if ((amber::diDecodeString(a1, a2, "URL", &__p) & 0x80000000) == 0 && (amber::diDecodeUInt64(a1, a2, "Size", &v21) & 0x80000000) == 0 && (amber::diDecodeUInt32(a1, a2, "IOSize", v19) & 0x80000000) == 0 && (amber::diDecodeUInt32(a1, a2, "NThreads", &v20) & 0x80000000) == 0)
    {
      operator new();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "decode_cb", 0x17D, 0, "DiskImagePluginNBDImage decode", v13);
    amber::cfSetError(a3, "DiskImagePluginNBDImage decode", v14);
  }

  else
  {
    if (std::string::compare(&v25, "knox"))
    {
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v25;
      }

      else
      {
        v8 = v25.__r_.__value_.__r.__words[0];
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "decode_cb", 0x19E, 0, "unsupported image type: %s", v7, v8);
      v10 = "unsupported image type";
      goto LABEL_10;
    }

    __p = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v20 = 0;
    *v19 = 0;
    v18 = 0;
    if ((amber::diDecodeString(a1, a2, "URL", &__p) & 0x80000000) == 0 && (amber::diDecodeUInt64(a1, a2, "Size", &v21) & 0x80000000) == 0 && (amber::diDecodeUInt32(a1, a2, "IOSize", &v20) & 0x80000000) == 0 && (amber::diDecodeUInt64(a1, a2, "Seed", v19) & 0x80000000) == 0 && (amber::diDecodeUInt32(a1, a2, "NThreads", &v18) & 0x80000000) == 0)
    {
      operator new();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "decode_cb", 0x193, 0, "DiskImagePluginKnoxImage decode", v15);
    amber::cfSetError(a3, "DiskImagePluginKnoxImage decode", v16);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

LABEL_32:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_2969590A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x29C25C000](v20, 0x10B3C40A1F0CC19);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  _Unwind_Resume(a1);
}

void amber::DiskImagePlugin::release_cb(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 48);
    if (v3 == amber::DiskImagePlugin::instance(0, 0, a3))
    {

      amber::DiskImagePlugin::instance(0xFFFFFFFFLL, 0, v4);
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "release_cb", 0x1B6, 0, "deleting a different plugin!", v5);
      if (v3)
      {
        v6 = *(*v3 + 8);

        v6(v3);
      }
    }
  }
}

void amber::DiskImagePlugin::~DiskImagePlugin(amber::DiskImagePlugin *this)
{
  *this = &unk_2A1DE0488;
  amber::HTTPAuthenticator::~HTTPAuthenticator((this + 120));
}

{
  *this = &unk_2A1DE0488;
  amber::HTTPAuthenticator::~HTTPAuthenticator((this + 120));

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DiskImagePlugin::instance(amber::DiskImagePlugin *this, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = this;
  if (atomic_load_explicit(&amber::pluginContext(void)::context_flag, memory_order_acquire) != -1)
  {
    v17 = &v15;
    v16 = &v17;
    std::__call_once(&amber::pluginContext(void)::context_flag, &v16, std::__call_once_proxy[abi:ne200100]<std::tuple<amber::pluginContext(void)::$_0 &&>>);
  }

  v8 = amber::pluginContext(void)::context;
  if (v7)
  {
    std::mutex::lock(amber::pluginContext(void)::context);
    v10 = *(v8 + 72);
    if (v7 >= 1)
    {
      *(v8 + 72) = v10 + 1;
      if (!v10)
      {
        if (!*(v8 + 64))
        {
          operator new();
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "instance", 0xCB, 0, "invalid state: plugin instance already exists", v9);
      }

      v11 = *(v8 + 64);
      goto LABEL_16;
    }

    v12 = v10 - 1;
    *(v8 + 72) = v12;
    if (!v12)
    {
      v13 = *(v8 + 64);
      if (v13)
      {
        (*(*v13 + 8))(v13);
        v11 = 0;
        *(v8 + 64) = 0;
        goto LABEL_16;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "instance", 0xD3, 0, "invalid state: plugin instance does not exist", v9);
    }

    v11 = 0;
LABEL_16:
    std::mutex::unlock(v8);
    return v11;
  }

  v11 = *(amber::pluginContext(void)::context + 64);
  if (!v11)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "instance", 0xC2, 0, "invalid state: plugin instance does not exist", a7);
    return *(v8 + 64);
  }

  return v11;
}

uint64_t amber::DiskImagePlugin::create(uint64_t a1, amber *a2, unint64_t a3)
{
  v3 = a3;
  v6 = amber::DiskImagePlugin::instance(0, 0, a3);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v55 = 0;
  amber::defaultThreadCount(v6);
  *v53 = 0;
  if (*a1 <= 0xFu)
  {
    v11 = "incompatible struct size";
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "create", 0xF8, 0, "incompatible struct size", v10);
LABEL_5:
    amber::cfSetError(a2, v11, v12);
    goto LABEL_6;
  }

  if (*(a1 + 4))
  {
    v11 = "plugin only supports RO connections";
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "create", 0xFB, 0, "plugin only supports RO connections", v10);
    goto LABEL_5;
  }

  if (amber::cfGetString(*(a1 + 8), "URL", &v56, v7, v8, v9, v10) <= 0)
  {
    v11 = "missing URL";
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "create", 0xFE, 0, "missing URL", v17);
    goto LABEL_5;
  }

  amber::cfGetInteger(*(a1 + 8), "NThreads", v53, v14, v15, v16, v17);
  if (amber::cfGetString(*(a1 + 8), "WestgateToken", __p, v18, v19, v20, v21) >= 1)
  {
    if (v55 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    __dst = v24;
    v51 = strlen(v24);
    amber::BaseObject::setAttributeString(v6 + 120, 805, &__dst, v25, v26, v27, v28);
  }

  v29 = HIBYTE(v58);
  if (v58 < 0)
  {
    v29 = v57;
  }

  if (v29 >= 0xD)
  {
    v30 = v56;
    if (v58 >= 0)
    {
      v30 = &v56;
    }

    v31 = *v30;
    v32 = *(v30 + 5);
    if (v31 == 0x6E6B2B7265626D61 && v32 == 0x2F2F3A786F6E6B2BLL)
    {
      std::string::basic_string[abi:ne200100](&__dst, &v56, 6uLL);
      if (v52 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v49[0] = p_dst;
      v49[1] = strlen(p_dst);
      amber::KnoxURL::createWithString();
    }
  }

  if ((v3 & 0x10) != 0)
  {
    v34 = v56;
    goto LABEL_44;
  }

  v34 = v56;
  if (v29 < 3)
  {
    goto LABEL_45;
  }

  if (v58 >= 0)
  {
    v35 = &v56;
  }

  else
  {
    v35 = v56;
  }

  if (*v35 != 25198 || *(v35 + 2) != 100)
  {
LABEL_44:
    if (v29 > 6)
    {
      if (v58 >= 0)
      {
        v45 = &v56;
      }

      else
      {
        v45 = v34;
      }

      if (*v45 == 2020568683 && *(v45 + 3) == 791624312)
      {
        __dst = v45;
        v51 = strlen(v45);
        amber::KnoxURL::createWithString();
      }

      goto LABEL_55;
    }

LABEL_45:
    if (v58 >= 0)
    {
      v45 = &v56;
    }

    else
    {
      v45 = v34;
    }

LABEL_55:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "create", 0x141, 0, "unsupported image URL: %s", v23, v45);
    v11 = "unsupported image URL";
    goto LABEL_5;
  }

  v38 = amber::NBDURL::createWithString(v35, v22);
  if (v58 >= 0)
  {
    v39 = &v56;
  }

  else
  {
    v39 = v56;
  }

  if (!v38)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "create", 0x11F, 0, "unsupported NBD URL: %s", v37, v39);
    v11 = "unsupported NBD URL";
    goto LABEL_5;
  }

  v40 = AmberNBDBlockDeviceOpen(v39, 1);
  v42 = v40;
  if (v40)
  {
    __dst = 0;
    v49[0] = 0;
    AmberObjectGetAttribute(v40, 201, 1, 8uLL, &__dst, v49, v41);
    LODWORD(v49[0]) = 0;
    __dst = 0;
    AmberObjectGetAttribute(v42, 204, 2, 4uLL, v49, &__dst, v43);
    LODWORD(v49[0]) = 0;
    __dst = 0;
    AmberObjectGetAttribute(v42, 205, 2, 4uLL, v49, &__dst, v44);
    AmberBlockDeviceClose(v42);
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePlugin.cpp", "create", 0x123, 0, "connect to NBD server", v41);
  amber::cfSetError(a2, "connect to NBD server", v48);
  if (*(v38 + 103) < 0)
  {
    operator delete(*(v38 + 80));
  }

  if (*(v38 + 79) < 0)
  {
    operator delete(*(v38 + 56));
  }

  if (*(v38 + 55) < 0)
  {
    operator delete(*(v38 + 32));
  }

  if (*(v38 + 31) < 0)
  {
    operator delete(*(v38 + 8));
  }

  MEMORY[0x29C25C000](v38, 0x1012C40FA7EF726);
LABEL_6:
  AmberBlockDeviceClose(0);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v56);
  }

  return 0;
}

void sub_296959C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::BaseObject::setAttributeString(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *a3;
  v8 = a3[1];
  v12[0] = &off_2A1DDFC68;
  v12[1] = v7;
  v12[2] = v8;
  if (v8 < 0 || (!v7 ? (v9 = v8 == 0) : (v9 = 1), !v9))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/./.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return (*(*a1 + 24))(a1, a2, 6, v12);
}

uint64_t AmberDiskImagePluginCreate(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a1;
  v8 = amber::DiskImagePlugin::instance(1, a1, a3, a4, a5, a6, a7);
  v9 = 64;
  if ((v7 & 0x10) == 0)
  {
    v9 = 8;
  }

  return v8 + v9;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v5 < a3)
    {
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else if (v5 < a3)
  {
LABEL_13:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v5 - a3;
  if (v5 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v6;
  if (v5 != a3)
  {
    memmove(__dst, v3 + a3, v6);
  }

  __dst[v6] = 0;
  return __dst;
}

void amber::MemoryBlockDevice::~MemoryBlockDevice(amber::MemoryBlockDevice *this)
{
  *this = &unk_2A1DE04B8;
  amber::SyncBlockDevice::terminateThreads(this);

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::MemoryBlockDevice::~MemoryBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::MemoryBlockDevice::executeRead(amber::MemoryBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a3 + 6);
  v9 = *(a3 + 14);
  if (__CFADD__(v8, v9) || v8 + v9 > *(this + 60))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryBlockDevice.cpp", "executeRead", 0x75, 0, "invalid request range offset: %llu length: %u", a7, v8, v9);
    amber::BlockDeviceRequest::sendReply(a3, -2147483626, 0, v10, v11, v12, v13);
    return 0xFFFFFFFFLL;
  }

  else
  {
    memcpy(*(a3 + 8), (*(this + 59) + v8), v9);
    v20 = amber::BlockDeviceRequest::sendReply(a3, 2, 0, v15, v16, v17, v18);
    result = 0;
    if (v20 < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryBlockDevice.cpp", "executeRead", 0x79, 0, "reply data", v19);
      return 0;
    }
  }

  return result;
}

uint64_t amber::MemoryBlockDevice::executeWrite(amber::MemoryBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 488))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryBlockDevice.cpp", "executeWrite", 0x8C, 0, "WRITE on read-only device", a7);
    v14 = -2147483647;
    goto LABEL_6;
  }

  v8 = *(a3 + 6);
  v9 = *(a3 + 14);
  if (__CFADD__(v8, v9) || v8 + v9 > *(this + 60))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryBlockDevice.cpp", "executeWrite", 0x8F, 0, "invalid request range offset: %llu length: %u", a7, *(a3 + 6), v9);
    v14 = -2147483626;
LABEL_6:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v17 = *(this + 59);
  if (*(a3 + 5) == 2)
  {
    memcpy((v17 + v8), *(a3 + 8), v9);
  }

  else
  {
    bzero((v17 + v8), *(a3 + 14));
  }

  v15 = 0;
  v14 = 1;
LABEL_7:
  amber::BlockDeviceRequest::sendReply(a3, v14, 0, v10, v11, v12, v13);
  return v15;
}

uint64_t amber::MemoryBlockDevice::getAttribute(amber::MemoryBlockDevice *this, amber::BaseObject *a2, unint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v26 = a2;
    v27 = a3;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/MemoryBlockDevice.cpp";
    v18 = "getAttribute";
    v19 = "invalid attribute encoding %u, %u";
    v20 = 173;
LABEL_9:
    amber::log(2, v17, v18, v20, 0, v19, v13, v26, v27);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 203)
  {
    if (a2 == 204)
    {
      LODWORD(v28) = 1;
      v29 = &off_2A1DDFDA8;
      v30 = &v28;
      v31 = 4;
      v32 = &off_2A1DDFC68;
      v33 = &v28;
      v34 = 4;
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

      LODWORD(v28) = 0x40000;
      v29 = &off_2A1DDFDA8;
      v30 = &v28;
      v31 = 4;
      v32 = &off_2A1DDFC68;
      v33 = &v28;
      v34 = 4;
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
    v25 = *(this + 60);
    v28 = v25;
    v29 = &off_2A1DDFDA8;
    v30 = &v28;
    v31 = 8;
    v32 = &off_2A1DDFC68;
    v33 = &v28;
    v34 = 8;
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
    v14 = *(this + 122);
    LODWORD(v28) = v14;
    v29 = &off_2A1DDFDA8;
    v30 = &v28;
    v31 = 4;
    v32 = &off_2A1DDFC68;
    v33 = &v28;
    v34 = 4;
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

void sub_29695A5E8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29695A5D0);
}

uint64_t amber::NBDServerConfiguration::jsonParse(amber::CommonEntry **this, amber::JSONInputStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v76 = 0;
  v77 = 0;
  v7 = (this + 3);
  if (this[3] == this[4])
  {
    v9 = (this + 6);
    if (this[6] == this[7])
    {
      v68 = -1;
      *__s1 = 0u;
      *__s = 0u;
      amber::zero(void *,unsigned long)::memset_func(&v68, 0, 72);
      if ((amber::JSONInputStream::read(a2, &v68, v15, v16, v17, v18, v19) & 0x80000000) != 0)
      {
LABEL_138:
        v10 = "invalid config file";
        v11 = 830;
        goto LABEL_4;
      }

      v25 = 0;
      while (1)
      {
        v26 = v74;
        if (v74)
        {
          if (v74 != 1 || v25 != 0)
          {
            if (v74 == 1 && v25 != 0 && v68 == 2)
            {
              v25 = 0;
              goto LABEL_88;
            }

            if (v74 == 2 && v25 == 1)
            {
              if (!v77 && !v68)
              {
                operator new();
              }

              v26 = 2;
              if (!v77 || v68 != 2)
              {
                goto LABEL_143;
              }

              v38 = *(v77 + 2);
              if (*(v77 + 3) == v38)
              {
                goto LABEL_146;
              }

              if (*(v38 + 23) < 0)
              {
                if (!v38[1] || (v38 = *v38) == 0)
                {
LABEL_146:
                  v10 = "missing id field for device";
                  v11 = 876;
                  goto LABEL_4;
                }
              }

              else if (!*(v38 + 23))
              {
                goto LABEL_146;
              }

              if ((*(v77 + 10) & 0x80000000) != 0)
              {
                v10 = "missing device type";
                v11 = 877;
                goto LABEL_4;
              }

              if ((amber::NBDServerConfiguration::deviceIndex(this, v38) & 0x8000000000000000) == 0)
              {
                v10 = "duplicate device id";
                v11 = 878;
                goto LABEL_4;
              }

              std::vector<amber::NBDServerConfiguration::DeviceEntry *>::emplace_back<amber::NBDServerConfiguration::DeviceEntry * const&>(v7, &v77);
              v77 = 0;
              goto LABEL_87;
            }

            if (v74 == 2 && v25 == 2)
            {
              if (!v76 && !v68)
              {
                operator new();
              }

              v26 = 2;
              if (!v76 || v68 != 2)
              {
                goto LABEL_143;
              }

              v49 = *(v76 + 2);
              v50 = *(v76 + 3) - v49;
              if (!v50)
              {
                goto LABEL_147;
              }

              if (*(v49 + 23) < 0)
              {
                if (!*(v49 + 8) || !*v49)
                {
LABEL_147:
                  v10 = "missing id field for export";
                  v11 = 895;
                  goto LABEL_4;
                }
              }

              else if (!*(v49 + 23))
              {
                goto LABEL_147;
              }

              if (0xAAAAAAAAAAAAAAABLL * (v50 >> 3) >= 2)
              {
                if ((*(v49 + 47) & 0x80000000) == 0)
                {
                  if (*(v49 + 47))
                  {
                    v57 = (v49 + 24);
                  }

                  else
                  {
                    v57 = 0;
                  }

LABEL_111:
                  if ((amber::NBDServerConfiguration::exportIndex(this, v57) & 0x8000000000000000) == 0)
                  {
                    v10 = "duplicate export name";
                    v11 = 896;
                    goto LABEL_4;
                  }

                  std::vector<amber::NBDServerConfiguration::DeviceEntry *>::emplace_back<amber::NBDServerConfiguration::DeviceEntry * const&>(v9, &v76);
                  v76 = 0;
LABEL_41:
                  v25 = 2;
                  goto LABEL_88;
                }

                if (*(v49 + 32))
                {
                  v57 = *(v49 + 24);
                  goto LABEL_111;
                }
              }

              v57 = 0;
              goto LABEL_111;
            }

            if (v74 == 2 && v25 == 3)
            {
              v33 = lookupString(__s1[0], serverKeyString);
              if ((v33 & 0x80000000) != 0)
              {
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x38A, 0, "invalid global key: %s", a7, __s1[0]);
                goto LABEL_5;
              }

              if (v68 == 3)
              {
                if ((amber::CommonEntry::setString(this[2], v33, __s[1], v34, v35, v36, a7) & 0x80000000) != 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x38D, 0, "invalid server entry: %s", v37, __s1[0]);
                  goto LABEL_5;
                }
              }

              else if (v68 != 4 || v72 < 0)
              {
                if (v68 != 6)
                {
                  goto LABEL_152;
                }

                if ((amber::NBDServerConfiguration::ServerEntry::setIntegerValue(this[2], v33, v73, v34, v35, v36, a7) & 0x80000000) != 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x397, 0, "invalid server entry: %s", v59, __s1[0]);
                  goto LABEL_5;
                }
              }

              else if ((amber::NBDServerConfiguration::ServerEntry::setIntegerValue(this[2], v33, v71, v34, v35, v36, a7) & 0x80000000) != 0)
              {
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x392, 0, "invalid server entry: %s", v56, __s1[0]);
                goto LABEL_5;
              }

              goto LABEL_47;
            }

            if (v74 == 3 && v25 == 1 && v77)
            {
              if (v68 > 6 || ((1 << v68) & 0x58) == 0 || (v39 = lookupString(__s1[0], deviceKeyString), (v39 & 0x80000000) != 0))
              {
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x3A3, 0, "invalid device key: %s", a7, __s1[0]);
                goto LABEL_5;
              }

              v43 = v39;
              v44 = v68;
              if (v68 == 3)
              {
                if (v39 > 0x18 || ((1 << v39) & 0x1A01800) == 0 || (v45 = strlen(__s[1])) == 0)
                {
LABEL_74:
                  if ((amber::NBDServerConfiguration::DeviceEntry::setStringValue(v77, v43, __s[1], v40, v41, v42, a7) & 0x80000000) != 0)
                  {
                    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x3A7, 0, "invalid device entry: %s", v48, __s1[0]);
                    goto LABEL_5;
                  }

                  goto LABEL_87;
                }

                v67 = v45;
                __endptr = 0;
                v46 = strtoull(__s[1], &__endptr, 0);
                if (__endptr)
                {
                  if (__endptr != __s[1])
                  {
                    v47 = __endptr - __s[1] + 1;
                    if (v47 >= v67)
                    {
                      if (v47 != v67)
                      {
                        goto LABEL_137;
                      }

                      v66 = *__endptr;
                      if (v66 <= 0x6A)
                      {
                        if (v66 == 98)
                        {
                          goto LABEL_137;
                        }

                        if (v66 == 103)
                        {
                          v46 <<= 30;
                          goto LABEL_137;
                        }
                      }

                      else
                      {
                        switch(v66)
                        {
                          case 't':
                            v46 <<= 40;
                            goto LABEL_137;
                          case 'm':
                            v46 <<= 20;
                            goto LABEL_137;
                          case 'k':
                            v46 <<= 10;
LABEL_137:
                            v68 = 4;
                            v71 = v46;
                            v72 = v46 != 0;
LABEL_103:
                            if ((amber::NBDServerConfiguration::DeviceEntry::setIntegerValue(v77, v43, v71, v40, v41, v42, a7) & 0x80000000) != 0)
                            {
                              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x3AC, 0, "invalid device entry: %s", v58, __s1[0]);
                              goto LABEL_5;
                            }

LABEL_87:
                            v25 = 1;
                            goto LABEL_88;
                        }
                      }
                    }
                  }
                }

                v44 = v68;
                if (v68 == 3)
                {
                  goto LABEL_74;
                }
              }

              if (v44 == 4 && (v72 & 0x80000000) == 0)
              {
                goto LABEL_103;
              }

              if (v44 == 6)
              {
                if ((amber::NBDServerConfiguration::DeviceEntry::setIntegerValue(v77, v43, v73, v40, v41, v42, a7) & 0x80000000) != 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x3B1, 0, "invalid device entry: %s", v60, __s1[0]);
                  goto LABEL_5;
                }

                goto LABEL_87;
              }

              v26 = v74;
            }

            if (v26 != 3 || v25 != 2 || !v76)
            {
              goto LABEL_143;
            }

            if (v68 > 6 || ((1 << v68) & 0x58) == 0 || (v61 = lookupString(__s1[0], exportKeyString), (v61 & 0x80000000) != 0))
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x3BD, 0, "invalid export key: %s", a7, __s1[0]);
              goto LABEL_5;
            }

            if (v68 != 3)
            {
LABEL_152:
              v26 = v74;
              goto LABEL_143;
            }

            if ((amber::NBDServerConfiguration::ExportEntry::setStringValue(v76, v61, __s[1], v62, v63, v64, a7) & 0x80000000) != 0)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x3C0, 0, "invalid export entry: %s", v65, __s1[0]);
              goto LABEL_5;
            }

            goto LABEL_41;
          }

          v31 = __s1[0];
          if (!__s1[0])
          {
            goto LABEL_142;
          }

          v32 = strcmp(__s1[0], "devices");
          v25 = v68;
          if (v32 || v68 != 1)
          {
            if (strcmp(v31, "exports") || v25 != 1)
            {
              if (strcmp(v31, "server") | v25)
              {
LABEL_142:
                v26 = 1;
LABEL_143:
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", 0x3C5, 0, "invalid config file, line %u, level %d, label %s", a7, v75, v26, __s1[0]);
                goto LABEL_5;
              }

LABEL_47:
              v25 = 3;
              goto LABEL_88;
            }

            goto LABEL_41;
          }
        }

        else if (v68)
        {
          if (v68 == 2)
          {
            if ((amber::NBDServerConfiguration::resolveDevices(this, v20, v21, v22, v23, v24, a7) & 0x80000000) == 0)
            {
              v12 = 0;
              goto LABEL_6;
            }

            v10 = "invalid configuration";
            v11 = 968;
          }

          else
          {
            v10 = "invalid config file, level 0 is not {}";
            v11 = 836;
          }

          goto LABEL_4;
        }

LABEL_88:
        v68 = -1;
        *__s1 = 0u;
        *__s = 0u;
        amber::zero(void *,unsigned long)::memset_func(&v68, 0, 72);
        if ((amber::JSONInputStream::read(a2, &v68, v51, v52, v53, v54, v55) & 0x80000000) != 0)
        {
          goto LABEL_138;
        }
      }
    }
  }

  v10 = "configuration is not empty";
  v11 = 824;
LABEL_4:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "jsonParse", v11, 0, v10, a7);
LABEL_5:
  v12 = 0xFFFFFFFFLL;
LABEL_6:
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  return v12;
}

uint64_t amber::CommonEntry::string(amber::CommonEntry *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *(this + 2);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - v2) >> 3) <= a2)
  {
    return 0;
  }

  v3 = v2 + 24 * a2;
  if (*(v3 + 23) < 0)
  {
    if (*(v3 + 8))
    {
      return *v3;
    }

    return 0;
  }

  if (*(v3 + 23))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t amber::NBDServerConfiguration::deviceIndex(amber::NBDServerConfiguration *this, const char *__s1)
{
  v2 = *(this + 3);
  v3 = *(this + 4) - v2;
  if (v3)
  {
    v5 = 0;
    v6 = v3 >> 3;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v8 = *(v2 + 8 * v5);
      v9 = *(v8 + 16);
      if (*(v8 + 24) != v9)
      {
        if (v9[23] < 0)
        {
          if (*(v9 + 1))
          {
            v9 = *v9;
            if (v9)
            {
LABEL_11:
              if (!strcmp(__s1, v9))
              {
                return v5;
              }
            }
          }
        }

        else if (v9[23])
        {
          goto LABEL_11;
        }
      }

      ++v5;
    }

    while (v7 != v5);
  }

  return -1;
}

uint64_t amber::NBDServerConfiguration::exportIndex(amber::NBDServerConfiguration *this, const char *__s1)
{
  v2 = *(this + 6);
  v3 = *(this + 7) - v2;
  if (v3)
  {
    v5 = 0;
    v6 = v3 >> 3;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    while (1)
    {
      v8 = *(*(v2 + 8 * v5) + 16);
      if (0xAAAAAAAAAAAAAAABLL * ((*(*(v2 + 8 * v5) + 24) - v8) >> 3) < 2)
      {
        break;
      }

      if (*(v8 + 47) < 0)
      {
        if (!*(v8 + 32))
        {
          break;
        }

        v9 = *(v8 + 24);
      }

      else if (*(v8 + 47))
      {
        v9 = (v8 + 24);
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      if (!(__s1 | v9) || __s1 && v9 && !strcmp(__s1, v9))
      {
        return v5;
      }

      if (v7 == ++v5)
      {
        return -1;
      }
    }

    v9 = 0;
    goto LABEL_13;
  }

  return -1;
}

uint64_t lookupString(const char *a1, const char *(*a2)(int))
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2(0);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = 0;
  while (strcmp(a1, v5))
  {
    v6 = (v6 + 1);
    v5 = a2(v6);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

char *serverKeyString(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_29EE4FF18[a1];
  }
}

uint64_t amber::CommonEntry::setString(amber::CommonEntry *this, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(this + 2);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - v9) >> 3) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 && *a3)
  {
    v10 = v9 + 24 * a2;
    v11 = *(v10 + 23);
    if (v11 < 0)
    {
      v11 = *(v10 + 8);
    }

    if (v11)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "setString", 0x1C3, 0, "duplicate key: %d -> %s", a7, a2, a3, v7, v8);
      return 0xFFFFFFFFLL;
    }

    else
    {
      MEMORY[0x29C25BF00]();
      return 0;
    }
  }

  else
  {
    v13 = v9 + 24 * a2;
    result = 0;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
    }
  }

  return result;
}

uint64_t amber::NBDServerConfiguration::ServerEntry::setIntegerValue(amber::NBDServerConfiguration::ServerEntry *this, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 <= 2)
  {
    if (!a2)
    {
      if (a3 < 0x10000)
      {
        v7 = 0;
        *(this + 20) = a3;
        return v7;
      }

      v8 = "value out of range";
      v9 = 494;
      goto LABEL_18;
    }

    if (a2 == 1)
    {
      if (a3 < 4)
      {
        v7 = 0;
        *(this + 11) = a3;
        return v7;
      }

      v8 = "value out of range";
      v9 = 498;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      v7 = HIDWORD(a3);
      if (!HIDWORD(a3))
      {
        *(this + 13) = a3;
        return v7;
      }

      v8 = "value out of range";
      v9 = 506;
      goto LABEL_18;
    }

    if (a2 == 5)
    {
      v7 = HIDWORD(a3);
      if (!HIDWORD(a3))
      {
        *(this + 14) = a3;
        return v7;
      }

      v8 = "value out of range";
      v9 = 510;
      goto LABEL_18;
    }

LABEL_17:
    v8 = "invalid integer/BOOLean key";
    v9 = 513;
    goto LABEL_18;
  }

  if (a3 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v7 = 0;
    *(this + 12) = a3;
    return v7;
  }

  v8 = "value out of range";
  v9 = 502;
LABEL_18:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "setIntegerValue", v9, 0, v8, a7);
  return 0xFFFFFFFFLL;
}

char *deviceKeyString(unsigned int a1)
{
  if (a1 > 0x28)
  {
    return 0;
  }

  else
  {
    return off_29EE4FF48[a1];
  }
}

uint64_t amber::NBDServerConfiguration::DeviceEntry::setStringValue(amber::NBDServerConfiguration::DeviceEntry *this, uint64_t a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 <= 13)
  {
    if ((a2 - 2) >= 9 && a2)
    {
      if (a2 == 1)
      {
        if ((*(this + 10) & 0x80000000) == 0)
        {
          v9 = "duplicate key";
          v10 = 564;
          goto LABEL_32;
        }

        v13 = lookupString(__s, deviceTypeString);
        *(this + 10) = v13;
        if (!strcmp(__s, "raw"))
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        *(this + 10) = v14;
        if (v14 < 0)
        {
          v15 = __s;
          v9 = "invalid device type: %s";
          v10 = 568;
          goto LABEL_32;
        }

        return 0;
      }

LABEL_20:
      v9 = "invalid string key";
      v10 = 614;
      goto LABEL_32;
    }
  }

  else
  {
    if (a2 > 0x28)
    {
LABEL_16:
      if (a2 == 14)
      {
        if ((amber::parseSymmetricKey(this + 968, __s, __s, a4, a5, a6, a7) & 0x80000000) != 0)
        {
          v9 = "parsing symmetric key";
          v10 = 574;
          goto LABEL_32;
        }

        return 0;
      }

      if (a2 == 15)
      {
        if ((amber::loadSymmetricKey(this + 968, __s, __s, a4, a5, a6, a7) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "setStringValue", 0x23B, 0, "loading symmetric key: %s", v12, __s);
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      goto LABEL_20;
    }

    if (((1 << a2) & 0x1FFFE3C0000) == 0)
    {
      if (a2 == 16)
      {
        if ((amber::JSONCodable::jsonParseFromFile((this + 88), __s, __s, a4) & 0x80000000) == 0)
        {
          result = 0;
          *(this + 82) = 1;
          return result;
        }

        v9 = "parsing snapshot";
        v10 = 580;
        goto LABEL_32;
      }

      if (a2 == 17)
      {
        if ((amber::parseSymmetricKey(this + 688, __s, __s, a4, a5, a6, a7) & 0x80000000) != 0)
        {
          v9 = "parsing prologue id";
          v10 = 577;
LABEL_32:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "setStringValue", v10, 0, v9, a7, v15);
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      goto LABEL_16;
    }
  }

  return amber::CommonEntry::setString(this, a2, __s, a4, a5, a6, a7);
}

uint64_t amber::NBDServerConfiguration::DeviceEntry::setIntegerValue(amber::NBDServerConfiguration::DeviceEntry *this, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 <= 20)
  {
    if (a2 <= 11)
    {
      if (a2 == 1)
      {
        if (a3 < 0x11)
        {
          v7 = 0;
          *(this + 10) = a3;
          return v7;
        }

        v8 = "value out of range";
        v9 = 623;
        goto LABEL_24;
      }

      if (a2 == 11)
      {
        v7 = HIDWORD(a3);
        if (!HIDWORD(a3))
        {
          *(this + 11) = a3;
          return v7;
        }

        v8 = "value out of range";
        v9 = 627;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (a2 == 12)
    {
      v7 = HIDWORD(a3);
      if (!HIDWORD(a3))
      {
        *(this + 12) = a3;
        return v7;
      }

      v8 = "value out of range";
      v9 = 631;
      goto LABEL_24;
    }

    if (a2 == 13)
    {
      v7 = 0;
      *(this + 80) = a3 != 0;
      return v7;
    }

LABEL_23:
    v8 = "invalid integer/BOOLean key";
    v9 = 651;
LABEL_24:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "setIntegerValue", v9, 0, v8, a7);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 22)
  {
    if (a2 == 23)
    {
      v7 = 0;
      *(this + 7) = a3;
      return v7;
    }

    if (a2 == 24)
    {
      v7 = 0;
      *(this + 8) = a3;
      return v7;
    }

    goto LABEL_23;
  }

  if (a2 != 21)
  {
    v7 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      *(this + 13) = a3;
      return v7;
    }

    v8 = "value out of range";
    v9 = 648;
    goto LABEL_24;
  }

  v7 = 0;
  *(this + 9) = a3;
  return v7;
}

const char *exportKeyString(int a1)
{
  v1 = "name";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "id";
  }
}

uint64_t amber::NBDServerConfiguration::ExportEntry::setStringValue(amber::NBDServerConfiguration::ExportEntry *this, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 >= 2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "setStringValue", 0x318, 0, "invalid string key", a7, v7, v8);
    return 0xFFFFFFFFLL;
  }

  else
  {

    return amber::CommonEntry::setString(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t amber::NBDServerConfiguration::resolveDevices(amber::NBDServerConfiguration *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(this + 6);
  v7 = *(this + 7);
  if (v8 == v7 || (v10 = *(this + 3), v11 = *(this + 4), v10 == v11))
  {
    v61 = "no exports or no devices";
    v62 = 1473;
    goto LABEL_111;
  }

  v12 = *(this + 9);
  *(this + 10) = v12;
  v13 = v7 - v8;
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = v8;
  v16 = v14;
  do
  {
    v17 = *v15++;
    *(v17 + 40) = -1;
    --v16;
  }

  while (v16);
  v18 = 0;
  if (((v11 - v10) >> 3) <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = (v11 - v10) >> 3;
  }

  *&v20 = -1;
  *(&v20 + 1) = -1;
  do
  {
    v21 = *(v10 + 8 * v18);
    *(v21 + 1296) = -1;
    ++v18;
    *(v21 + 1248) = v20;
    *(v21 + 1264) = v20;
    *(v21 + 1280) = -1;
  }

  while (v19 != v18);
  while (1)
  {
    v22 = *v8;
    v23 = *(*v8 + 16);
    if (*(*v8 + 24) == v23)
    {
      v25 = amber::NBDServerConfiguration::deviceIndex(this, 0);
      *(v22 + 40) = v25;
      if (v25 < 0)
      {
        v63 = 0;
        goto LABEL_110;
      }

      goto LABEL_24;
    }

    if (*(v23 + 23) < 0)
    {
      v24 = v23[1] ? *v23 : 0;
    }

    else
    {
      v24 = *(v23 + 23) ? *(*v8 + 16) : 0;
    }

    v26 = amber::NBDServerConfiguration::deviceIndex(this, v24);
    *(v22 + 40) = v26;
    if (v26 < 0)
    {
      break;
    }

LABEL_24:
    ++v8;
    if (!--v14)
    {
      v66 = v12;
      v67 = (this + 72);
      v27 = 0;
      while (1)
      {
        v28 = *(v10 + 8 * v27);
        v29 = v28[2];
        v30 = v28[3] - v29;
        v31 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
        if (v31 < 7)
        {
          goto LABEL_40;
        }

        v32 = (v29 + 144);
        if (*(v29 + 167) < 0)
        {
          if (!*(v29 + 152))
          {
            goto LABEL_33;
          }

          v32 = *v32;
          if (!v32)
          {
            goto LABEL_33;
          }
        }

        else if (!*(v29 + 167))
        {
          goto LABEL_33;
        }

        v33 = amber::NBDServerConfiguration::deviceIndex(this, v32);
        v28[157] = v33;
        if (v33 < 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "resolveDevices", 0x5DE, 0, "invalid device id: %s", a7, v32);
          return 0xFFFFFFFFLL;
        }

LABEL_33:
        if (v30 == 168)
        {
          goto LABEL_41;
        }

        v34 = (v29 + 168);
        if (*(v29 + 191) < 0)
        {
          if (!*(v29 + 176))
          {
            goto LABEL_40;
          }

          v34 = *v34;
          if (!v34)
          {
            goto LABEL_40;
          }
        }

        else if (!*(v29 + 191))
        {
          goto LABEL_40;
        }

        v35 = amber::NBDServerConfiguration::deviceIndex(this, v34);
        v28[158] = v35;
        if (v35 < 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "resolveDevices", 0x5DF, 0, "invalid device id: %s", a7, v34);
          return 0xFFFFFFFFLL;
        }

LABEL_40:
        if (v31 < 6)
        {
          goto LABEL_68;
        }

LABEL_41:
        v36 = (v29 + 120);
        if (*(v29 + 143) < 0)
        {
          if (!*(v29 + 128))
          {
            goto LABEL_47;
          }

          v36 = *v36;
          if (!v36)
          {
            goto LABEL_47;
          }
        }

        else if (!*(v29 + 143))
        {
          goto LABEL_47;
        }

        v37 = amber::NBDServerConfiguration::deviceIndex(this, v36);
        v28[156] = v37;
        if (v37 < 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "resolveDevices", 0x5E0, 0, "invalid device id: %s", a7, v36);
          return 0xFFFFFFFFLL;
        }

LABEL_47:
        if (v31 < 9)
        {
          goto LABEL_68;
        }

        v38 = (v29 + 192);
        if (*(v29 + 215) < 0)
        {
          if (!*(v29 + 200))
          {
            goto LABEL_54;
          }

          v38 = *v38;
          if (!v38)
          {
            goto LABEL_54;
          }
        }

        else if (!*(v29 + 215))
        {
          goto LABEL_54;
        }

        v39 = amber::NBDServerConfiguration::deviceIndex(this, v38);
        v28[159] = v39;
        if (v39 < 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "resolveDevices", 0x5E1, 0, "invalid device id: %s", a7, v38);
          return 0xFFFFFFFFLL;
        }

LABEL_54:
        if (v30 == 216)
        {
          goto LABEL_68;
        }

        v40 = (v29 + 216);
        if (*(v29 + 239) < 0)
        {
          if (!*(v29 + 224))
          {
            goto LABEL_61;
          }

          v40 = *v40;
          if (!v40)
          {
            goto LABEL_61;
          }
        }

        else if (!*(v29 + 239))
        {
          goto LABEL_61;
        }

        v41 = amber::NBDServerConfiguration::deviceIndex(this, v40);
        v28[160] = v41;
        if (v41 < 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "resolveDevices", 0x5E2, 0, "invalid device id: %s", a7, v40);
          return 0xFFFFFFFFLL;
        }

LABEL_61:
        if (v31 >= 0xB)
        {
          v42 = (v29 + 240);
          if (*(v29 + 263) < 0)
          {
            if (*(v29 + 248))
            {
              v42 = *v42;
              if (v42)
              {
LABEL_67:
                v43 = amber::NBDServerConfiguration::deviceIndex(this, v42);
                v28[161] = v43;
                if (v43 < 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "resolveDevices", 0x5E3, 0, "invalid device id: %s", a7, v42);
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }

          else if (*(v29 + 263))
          {
            goto LABEL_67;
          }
        }

LABEL_68:
        if (v19 == ++v27)
        {
          v44 = v66;
          while (v44 - *v67 < v11 - v10)
          {
            if (v11 != v10)
            {
              v45 = 0;
              v46 = 0;
              do
              {
                v47 = *(v10 + 8 * v46);
                if ((v47[162] & 0x8000000000000000) != 0)
                {
                  v48 = v47[157];
                  if (v48 < 0 || (*(*(v10 + 8 * v48) + 1296) & 0x8000000000000000) == 0)
                  {
                    v49 = v47[158];
                    if (v49 < 0 || (*(*(v10 + 8 * v49) + 1296) & 0x8000000000000000) == 0)
                    {
                      v50 = v47[156];
                      if (v50 < 0 || (*(*(v10 + 8 * v50) + 1296) & 0x8000000000000000) == 0)
                      {
                        v51 = v47[159];
                        if (v51 < 0 || (*(*(v10 + 8 * v51) + 1296) & 0x8000000000000000) == 0)
                        {
                          v52 = v47[160];
                          if ((v52 < 0 || (*(*(v10 + 8 * v52) + 1296) & 0x8000000000000000) == 0) && (v50 < 0 || (*(*(v10 + 8 * v50) + 1296) & 0x8000000000000000) == 0))
                          {
                            v53 = *(this + 9);
                            v54 = v44 - v53;
                            v55 = (v44 - v53) >> 3;
                            v47[162] = v55;
                            v56 = *(this + 11);
                            if (v44 >= v56)
                            {
                              v57 = v55 + 1;
                              if ((v55 + 1) >> 61)
                              {
                                std::vector<DERNode>::__throw_length_error[abi:ne200100]();
                              }

                              v58 = v56 - v53;
                              if (v58 >> 2 > v57)
                              {
                                v57 = v58 >> 2;
                              }

                              if (v58 >= 0x7FFFFFFFFFFFFFF8)
                              {
                                v59 = 0x1FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v59 = v57;
                              }

                              if (v59)
                              {
                                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(v67, v59);
                              }

                              *(8 * v55) = v46;
                              v44 = (8 * v55 + 8);
                              memcpy(0, v53, v54);
                              v60 = *(this + 9);
                              *(this + 9) = 0;
                              *(this + 10) = v44;
                              *(this + 11) = 0;
                              if (v60)
                              {
                                operator delete(v60);
                              }
                            }

                            else
                            {
                              *v44++ = v46;
                            }

                            *(this + 10) = v44;
                            v45 = 1;
                            v10 = *(this + 3);
                            v11 = *(this + 4);
                          }
                        }
                      }
                    }
                  }
                }

                ++v46;
              }

              while (v46 < (v11 - v10) >> 3);
              if (v45)
              {
                continue;
              }
            }

            v61 = "invalid configuration (devices dependencies)";
            v62 = 1530;
            goto LABEL_111;
          }

          return 0;
        }
      }
    }
  }

  if (*(v23 + 23) < 0)
  {
    v63 = v23[1];
    if (v63)
    {
      v63 = *v23;
    }
  }

  else if (*(v23 + 23))
  {
    v63 = v23;
  }

  else
  {
    v63 = 0;
  }

LABEL_110:
  v65 = v63;
  v61 = "invalid device id: %s";
  v62 = 1494;
LABEL_111:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "resolveDevices", v62, 0, v61, a7, v65);
  return 0xFFFFFFFFLL;
}

void amber::NBDServerConfiguration::NBDServerConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A1DE05C0;
  *(a1 + 8) = &unk_2A1DE0600;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  operator new();
}

void sub_29695C20C(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x29C25C000](v4, 0x10A1C408A63C97ALL);
  v6 = v1[9];
  if (v6)
  {
    v1[10] = v6;
    operator delete(v6);
  }

  v7 = v1[6];
  if (v7)
  {
    v1[7] = v7;
    operator delete(v7);
  }

  v8 = v1[3];
  if (v8)
  {
    v1[4] = v8;
    operator delete(v8);
  }

  amber::JSONCodable::~JSONCodable(v2);
  _Unwind_Resume(a1);
}

void amber::NBDServerConfiguration::~NBDServerConfiguration(amber::NBDServerConfiguration *this)
{
  *this = &unk_2A1DE05C0;
  v2 = (this + 8);
  *(this + 1) = &unk_2A1DE0600;
  amber::NBDServerConfiguration::destroyDevices(this);
  v4 = *(this + 6);
  v3 = *(this + 7);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(this + 6);
        v3 = *(this + 7);
      }

      ++v5;
    }

    while (v5 < (v3 - v4) >> 3);
  }

  v8 = *(this + 3);
  v7 = *(this + 4);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 8 * v9);
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v8 = *(this + 3);
        v7 = *(this + 4);
      }

      ++v9;
    }

    while (v9 < (v7 - v8) >> 3);
  }

  v11 = *(this + 2);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 9);
  if (v12)
  {
    *(this + 10) = v12;
    operator delete(v12);
  }

  v13 = *(this + 6);
  if (v13)
  {
    *(this + 7) = v13;
    operator delete(v13);
  }

  v14 = *(this + 3);
  if (v14)
  {
    *(this + 4) = v14;
    operator delete(v14);
  }

  amber::JSONCodable::~JSONCodable(v2);
}

{
  amber::NBDServerConfiguration::~NBDServerConfiguration(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::NBDServerConfiguration::destroyDevices(amber::NBDServerConfiguration *this)
{
  v1 = *(this + 10) - *(this + 9);
  if (v1)
  {
    v3 = v1 >> 3;
    while (1)
    {
      --v3;
      v4 = *(*(this + 3) + 8 * *(*(this + 9) + 8 * v3));
      v5 = *(v4 + 2336);
      if (v5)
      {
        break;
      }

LABEL_57:
      if (!v3)
      {
        return 0;
      }
    }

    v6 = *(v4 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 24) - v6) >> 3) >= 4)
    {
      if ((*(v6 + 95) & 0x80000000) == 0)
      {
        if (*(v6 + 95))
        {
          v7 = v6 + 72;
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_11;
      }

      if (*(v6 + 80))
      {
        v7 = *(v6 + 72);
LABEL_11:
        v8 = (v4 + 40);
        if (*(v4 + 40) != 6 || v7 == 0)
        {
          goto LABEL_34;
        }

        v10 = *(v4 + 1304);
        memset(&v74, 0, 24);
        MEMORY[0x29C25BF00](&v74, v7);
        std::string::append(&v74, ".bitmap");
        v68 = 0;
        *v69 = 0;
        Attribute = AmberObjectGetAttribute(v5, 201, 1, 8uLL, v69, &v68, v11);
        if (v68 != 8 || Attribute < 0)
        {
          v15 = -1;
        }

        else
        {
          v15 = *v69;
        }

        LODWORD(v68) = 0;
        *v69 = 0;
        v16 = AmberObjectGetAttribute(v5, 203, 2, 4uLL, &v68, v69, v13);
        if (*v69 != 4 || v16 < 0)
        {
          v19 = 0xFFFFFFFFLL;
        }

        else
        {
          v19 = v68;
        }

        if (v15 == -1 || v19 == -1)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "persistentFileCacheSaveBitmap", 0x147, 0, "invalid device sizes", v17);
          v21 = 0;
          v22 = 0;
          v23 = 0;
        }

        else
        {
          v34 = v15 / v19;
          v35 = malloc_type_malloc(v15 / v19, 0xF93785E2uLL);
          v67 = v35;
          if (v35)
          {
            v36 = malloc_type_malloc(0x400000uLL, 0xF93785E2uLL);
            __buf = v36;
            if (v36)
            {
              amber::zero(void *,unsigned long)::memset_func(v36, 0, 0x400000);
              if ((AmberBlockDeviceGetBlockState(v5, 0, v15 / v19, v67, 0, v37, v38) & 0x80000000) != 0)
              {
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "persistentFileCacheSaveBitmap", 0x14C, 0, "get block state", v40);
                v22 = v67;
              }

              else
              {
                v63 = v15;
                v22 = v67;
                if (v15 >= v19)
                {
                  __fd = v10;
                  v45 = 0;
                  v66 = 0;
LABEL_67:
                  v46 = 0;
                  v47 = 0;
                  v48 = &v22[v45];
                  while (1)
                  {
                    v49 = v47 + v19;
                    if (v47 + v19 > 0x400000)
                    {
                      v50 = v45 + v46;
                      if (v46)
                      {
                        goto LABEL_74;
                      }

LABEL_77:
                      v50 = v45;
LABEL_78:
                      v45 = v50 + 1;
                      v51 = v50 + 1 >= v34;
                      v22 = v67;
                      if (v51)
                      {
                        goto LABEL_80;
                      }

                      goto LABEL_67;
                    }

                    if ((v48[v46] & 4) != 0)
                    {
                      break;
                    }

                    v50 = ++v46 + v45;
                    v47 += v19;
                    if (v46 + v45 >= v34)
                    {
                      v47 = v49;
                      if (v46)
                      {
                        goto LABEL_74;
                      }

                      goto LABEL_77;
                    }
                  }

                  v50 = v46 + v45;
                  if (!v46)
                  {
                    goto LABEL_77;
                  }

LABEL_74:
                  if (pwrite(__fd, __buf, v47, v45 * v19) == v47)
                  {
                    amber::zero(void *,unsigned long)::memset_func(v67 + v45, 0, v46);
                    v66 += v46;
                    goto LABEL_78;
                  }

                  v58 = __error();
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "persistentFileCacheSaveBitmap", 0x15D, *v58, "zero blocks", v59);
                  v23 = 0;
                  goto LABEL_97;
                }

                v66 = 0;
LABEL_80:
                *v69 = &off_2A1DDFC68;
                v70 = v22;
                v71 = v34;
                if ((v34 & 0x8000000000000000) != 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v40);
                  exception = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x29C25BE90](exception, "memory invalid args");
                  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
                }

                if ((v74.st_gid & 0x80000000) == 0)
                {
                  v52 = &v74;
                }

                else
                {
                  v52 = *&v74.st_dev;
                }

                if ((amber::storeFileContents(v52, v69, v39) & 0x80000000) == 0)
                {
                  if (v63 >= v19)
                  {
                    v56 = 0;
                    v55 = 0;
                    v54 = 0;
                    do
                    {
                      v57 = v22[v56] & 3;
                      if (v57 == 2)
                      {
                        ++v54;
                      }

                      if (v57 == 1)
                      {
                        ++v55;
                      }

                      ++v56;
                    }

                    while (v56 < v34);
                  }

                  else
                  {
                    v54 = 0;
                    v55 = 0;
                  }

                  amber::logSize("blocks in cache", v34, v19);
                  amber::logSize("data blocks", v54, v19);
                  amber::logSize("zero blocks", v55, v19);
                  amber::logSize("non dirty data blocks removed", v66, v19);
                  v23 = 1;
LABEL_97:
                  v22 = v67;
                  goto LABEL_98;
                }

                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "persistentFileCacheSaveBitmap", 0x168, 0, "storing bitmap contents", v53);
              }

              v23 = 0;
LABEL_98:
              v21 = __buf;
              goto LABEL_99;
            }
          }

          v41 = __error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v41, "malloc", v42);
          v43 = __error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "persistentFileCacheSaveBitmap", 0x14B, *v43, "malloc", v44);
          v21 = 0;
          v23 = 0;
          v22 = v67;
        }

LABEL_99:
        free(v21);
        free(v22);
        if (SHIBYTE(v74.st_gid) < 0)
        {
          operator delete(*&v74.st_dev);
          if (!v23)
          {
            goto LABEL_34;
          }
        }

        else if (!v23)
        {
          goto LABEL_34;
        }

        amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "destroyDevices", 0x565, 0, "Saved file cache state to bitmap file", v60);
LABEL_34:
        v24 = *(v4 + 16);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 24) - v24) >> 3) >= 0x15)
        {
          if ((*(v24 + 503) & 0x80000000) == 0)
          {
            if (*(v24 + 503))
            {
              v25 = (v24 + 480);
            }

            else
            {
              v25 = 0;
            }

LABEL_42:
            if (*v8 == 6)
            {
              if (!v25)
              {
LABEL_55:
                AmberBlockDeviceClose(*(v4 + 2336));
                *(v4 + 2336) = 0;
                v33 = *(v4 + 1304);
                if ((v33 & 0x80000000) == 0)
                {
                  close(v33);
                  *(v4 + 1304) = -1;
                }

                goto LABEL_57;
              }
            }

            else if (*v8 != 10 || v25 == 0)
            {
              goto LABEL_55;
            }

            v27 = *(v4 + 2336);
            if (stat(v25, &v74))
            {
              v28 = open(v25, 1537, 420);
              if ((v28 & 0x80000000) != 0)
              {
                v31 = *__error();
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "prefetchSequenceSerialize", 0x19D, v31, "open: %s", v32, v25);
              }

              else
              {
                v29 = v28;
                *v69 = &unk_2A1DE0740;
                v70 = &unk_2A1DE0780;
                v72 = 0;
                v73 = 0;
                v71 = 0;
                if ((amber::BlockDevice::getPrefetchSequence(v27, v69) & 0x80000000) == 0)
                {
                  amber::JSONCodable::jsonSerializeToFile(&v70, v29);
                }

                close(v29);
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "prefetchSequenceSerialize", 0x1A5, 0, "serialize prefetch sequence", v30);
                unlink(v25);
                amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(v69);
              }
            }

            goto LABEL_55;
          }

          if (*(v24 + 488))
          {
            v25 = *(v24 + 480);
            goto LABEL_42;
          }
        }

        v25 = 0;
        goto LABEL_42;
      }
    }

    v8 = (v4 + 40);
    goto LABEL_34;
  }

  return 0;
}

void sub_29695CB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_free_exception(v27);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void non-virtual thunk toamber::NBDServerConfiguration::~NBDServerConfiguration(amber::NBDServerConfiguration *this)
{
  amber::NBDServerConfiguration::~NBDServerConfiguration((this - 8));
}

{
  amber::NBDServerConfiguration::~NBDServerConfiguration((this - 8));

  JUMPOUT(0x29C25C000);
}

uint64_t amber::NBDServerConfiguration::serverFlags(amber::NBDServerConfiguration *this)
{
  v1 = *(*(this + 2) + 44);
  if (v1 < 1)
  {
    return 0;
  }

  if (v1 == 1)
  {
    return 0x4000000000000000;
  }

  if (v1 == 2)
  {
    return 0x8000000000000000;
  }

  return 0xC000000000000000;
}

uint64_t amber::NBDServerConfiguration::serverSocketPath(amber::NBDServerConfiguration *this)
{
  v1 = *(*(this + 2) + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 2) + 24) - v1) >> 3) < 3)
  {
    return 0;
  }

  if (*(v1 + 71) < 0)
  {
    if (*(v1 + 56))
    {
      return *(v1 + 48);
    }

    return 0;
  }

  if (*(v1 + 71))
  {
    return v1 + 48;
  }

  else
  {
    return 0;
  }
}

uint64_t amber::NBDServerConfiguration::createDevices(amber::NBDServerConfiguration *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 9);
  if (*(this + 10) == v7)
  {
    return 0;
  }

  v9 = 0;
  while (2)
  {
    v10 = *(v7 + 8 * v9);
    v12 = *(this + 2);
    v11 = *(this + 3);
    v13 = *(v11 + 8 * v10);
    v14 = *(v12 + 44);
    v15 = 0xC000000000000000;
    if (v14 == 2)
    {
      v15 = 0x8000000000000000;
    }

    v16 = v14 == 1;
    v17 = v14 < 1;
    v18 = 0x4000000000000000;
    if (!v16)
    {
      v18 = v15;
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = *(v12 + 56);
    v21 = *(v13 + 52);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = *(v13 + 40);
    v24 = *(v13 + 80);
    switch(v23)
    {
      case 0u:
        v25 = *(v13 + 16);
        v26 = *(v13 + 24);
        if (0xAAAAAAAAAAAAAAABLL * (v26 - v25) < 4)
        {
          goto LABEL_255;
        }

        v27 = (v25 + 9);
        if (*(v25 + 95) < 0)
        {
          if (!v25[10])
          {
            goto LABEL_255;
          }

          v27 = *v27;
          if (!v27)
          {
            goto LABEL_255;
          }
        }

        else if (!*(v25 + 95))
        {
LABEL_255:
          if (v26 == v25)
          {
            goto LABEL_345;
          }

          if ((*(v25 + 23) & 0x80000000) == 0)
          {
            if (!*(v25 + 23))
            {
              v25 = 0;
            }

            goto LABEL_346;
          }

          if (!v25[1])
          {
LABEL_345:
            v25 = 0;
          }

          else
          {
            v25 = *v25;
          }

LABEL_346:
          v178 = v25;
          v165 = "required path field missing: %s";
          v166 = 1028;
          goto LABEL_389;
        }

        if (*(v13 + 80))
        {
          v99 = open(v27, 0, 0);
        }

        else
        {
          v99 = open(v27, 2, 0);
        }

        *(v13 + 1304) = v99;
        if ((v99 & 0x80000000) == 0)
        {
          AmberFileBlockDeviceOpenWithFD();
        }

        v167 = *__error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x408, v167, "%s", v168, v27);
        return 0xFFFFFFFFLL;
      case 2u:
        v78 = *(v13 + 16);
        v79 = *(v13 + 24);
        if (0xAAAAAAAAAAAAAAABLL * (v79 - v78) < 5)
        {
          goto LABEL_260;
        }

        v80 = (v78 + 12);
        if ((*(v78 + 119) & 0x80000000) == 0)
        {
          if (!*(v78 + 119))
          {
            goto LABEL_260;
          }

LABEL_109:
          v100 = AmberNBDBlockDeviceOpen(v80, v22);
          *(v13 + 2336) = v100;
          if (!v100)
          {
            v165 = "AmberNBDBlockDeviceOpen";
            v166 = 1186;
            goto LABEL_389;
          }

          goto LABEL_206;
        }

        if (v78[13])
        {
          v80 = *v80;
          if (v80)
          {
            goto LABEL_109;
          }
        }

LABEL_260:
        if (v79 == v78)
        {
          goto LABEL_349;
        }

        if (*(v78 + 23) < 0)
        {
          if (v78[1])
          {
            v78 = *v78;
          }

          else
          {
LABEL_349:
            v78 = 0;
          }
        }

        else if (!*(v78 + 23))
        {
          v78 = 0;
        }

        v178 = v78;
        v165 = "missing url for NBD device: %s";
        v166 = 1183;
        goto LABEL_389;
      case 3u:
        v182.st_ino = off_2A1DDFD48;
        *&v182.st_uid = 0;
        *&v182.st_rdev = 0;
        v182.st_atimespec.tv_sec = &off_2A1DDFDA8;
        v182.st_atimespec.tv_nsec = 0;
        v182.st_mtimespec.tv_sec = 0;
        v182.st_mtimespec.tv_nsec = &off_2A1DDFC68;
        memset(&v182.st_ctimespec, 0, 32);
        LOWORD(v182.st_size) = 257;
        BYTE2(v182.st_size) = 0;
        *&v182.st_dev = off_2A1DDFC98;
        v59 = *(v13 + 1256);
        if ((v59 & 0x8000000000000000) == 0)
        {
          v60 = (*(this + 4) - v11) >> 3;
          if (v60 > v59)
          {
            v61 = *(*(v11 + 8 * v59) + 2336);
            if (v61)
            {
              v62 = 0;
              v63 = *(v13 + 1248);
              if ((v63 & 0x8000000000000000) == 0 && v60 > v63)
              {
                v62 = *(*(v11 + 8 * v63) + 2336);
              }

              if (*(v13 + 82) == 1)
              {
                if ((amber::BlockDevice::loadPrologue(v61, (v13 + 88), &v182, a4, a5, a6, a7) & 0x80000000) != 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x44E, 0, "invalid/missing AEBD prologue", v69);
                  goto LABEL_325;
                }
              }

              else if (*(v13 + 704))
              {
                if (((*(*v61 + 136))(v61, v13 + 688, &v182) & 0x80000000) != 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x452, 0, "invalid/missing AEBD prologue", v69);
                  goto LABEL_325;
                }
              }

              else if ((amber::BlockDevice::loadPrologue(v61, &v182, a3, a4, a5, a6, a7) & 0x80000000) != 0)
              {
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x456, 0, "invalid/missing AEBD prologue", v69);
                goto LABEL_325;
              }

              v125 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(&v182, v64, v65, v66, v67, v68, v69);
              v132 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(&v182, v126, v127, v128, v129, v130, v131);
              AmberAEBDBlockDeviceOpenWithPrologue(v61, v62, v125, v132, v13, amber::NBDServerConfiguration::DeviceEntry::unlockEncryptedBlockDeviceProc, v22);
            }
          }
        }

        v156 = *(v13 + 16);
        if (*(v13 + 24) == v156)
        {
          goto LABEL_319;
        }

        if (*(v156 + 23) < 0)
        {
          if (v156[1])
          {
            v156 = *v156;
          }

          else
          {
LABEL_319:
            v156 = 0;
          }
        }

        else if (!*(v156 + 23))
        {
          v156 = 0;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x448, 0, "no storage_device defined: %s", a7, v156);
        goto LABEL_325;
      case 4u:
        v182.st_ino = off_2A1DDFD48;
        *&v182.st_uid = 0;
        *&v182.st_rdev = 0;
        v182.st_atimespec.tv_sec = &off_2A1DDFDA8;
        v182.st_atimespec.tv_nsec = 0;
        v182.st_mtimespec.tv_sec = 0;
        v182.st_mtimespec.tv_nsec = &off_2A1DDFC68;
        memset(&v182.st_ctimespec, 0, 32);
        LOWORD(v182.st_size) = 257;
        BYTE2(v182.st_size) = 0;
        *&v182.st_dev = off_2A1DDFC98;
        v32 = *(v13 + 1256);
        if ((v32 & 0x8000000000000000) == 0 && v32 < (*(this + 4) - v11) >> 3)
        {
          v33 = *(v11 + 8 * v32);
          v34 = *(v33 + 2336);
          if (v34)
          {
            if ((amber::BlockDevice::loadPrologue(*(v33 + 2336), &v182, a3, a4, a5, a6, a7) & 0x80000000) != 0)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x46F, 0, "invalid/missing AEA prologue", v40);
              goto LABEL_325;
            }

            v41 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(&v182, v35, v36, v37, v38, v39, v40);
            v48 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(&v182, v42, v43, v44, v45, v46, v47);
            v49 = AmberAEABlockDeviceOpenWithPrologue(v34, v41, v48, v13, amber::NBDServerConfiguration::DeviceEntry::unlockEncryptedBlockDeviceProc, v22, (v19 | v24));
            *(v13 + 2336) = v49;
            if (!v49)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x478, 0, "AmberAEABlockDeviceOpenWithPrologue", v55);
              goto LABEL_325;
            }

            amber::Buffer::~Buffer(&v182, v50, v51, v52, v53, v54, v55);
LABEL_206:
            v144 = *(v13 + 16);
            if (0xAAAAAAAAAAAAAAABLL * ((*(v13 + 24) - v144) >> 3) >= 0x15)
            {
              v145 = (v144 + 480);
              if (*(v144 + 503) < 0)
              {
                if (!*(v144 + 488))
                {
                  goto LABEL_222;
                }

                v145 = *v145;
                if (!v145)
                {
                  goto LABEL_222;
                }
              }

              else if (!*(v144 + 503))
              {
                goto LABEL_222;
              }

              v146 = *(v13 + 2336);
              if ((stat(v145, &v182) & 0x80000000) == 0 && (v182.st_mode & 0xF000) == 0x8000)
              {
                v151 = open(v145, 0, 0);
                if ((v151 & 0x80000000) == 0)
                {
                  v179[0] = &unk_2A1DE0780;
                  v179[2] = 0;
                  v180[0] = 0;
                  v179[1] = 0;
                  amber::JSONCodable::jsonParseFromFile(v179, v151);
                }

                v152 = __error();
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "prefetchSequenceParse", 0x189, *v152, "open: %s", v153, v145);
              }

              if (*(v13 + 72))
              {
                v154 = *(v13 + 72);
              }

              else
              {
                v154 = 0x80000000;
              }

              if ((AmberBlockDeviceRecordPrefetchSequence(*(v13 + 2336), v154, 0, v147, v148, v149, v150) & 0x80000000) != 0)
              {
                v165 = "AmberBlockDeviceRecordPrefetchSequence";
                v166 = 1355;
                goto LABEL_389;
              }

              amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x54C, 0, "Recording prefetch sequence %llu MiB", a7, v154 >> 20);
            }

LABEL_222:
            ++v9;
            v7 = *(this + 9);
            if (v9 >= (*(this + 10) - v7) >> 3)
            {
              return 0;
            }

            continue;
          }
        }

        v157 = *(v13 + 16);
        if (*(v13 + 24) == v157)
        {
LABEL_323:
          v157 = 0;
          goto LABEL_324;
        }

        if (*(v157 + 23) < 0)
        {
          if (v157[1])
          {
            v157 = *v157;
            goto LABEL_324;
          }

          goto LABEL_323;
        }

        if (!*(v157 + 23))
        {
          v157 = 0;
        }

LABEL_324:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x46C, 0, "no storage_device defined: %s", a7, v157);
LABEL_325:
        amber::Buffer::~Buffer(&v182, v172, v173, v174, v175, v176, v177);
        return 0xFFFFFFFFLL;
      case 5u:
        v81 = *(v13 + 16);
        v82 = *(v13 + 24);
        if (0xAAAAAAAAAAAAAAABLL * (v82 - v81) < 4)
        {
          goto LABEL_250;
        }

        v83 = (v81 + 9);
        if (*(v81 + 95) < 0)
        {
          if (!v81[10])
          {
            goto LABEL_250;
          }

          v83 = *v83;
          if (!v83)
          {
            goto LABEL_250;
          }
        }

        else if (!*(v81 + 95))
        {
LABEL_250:
          if (v82 == v81)
          {
            goto LABEL_341;
          }

          if ((*(v81 + 23) & 0x80000000) == 0)
          {
            if (!*(v81 + 23))
            {
              v81 = 0;
            }

            goto LABEL_342;
          }

          if (!v81[1])
          {
LABEL_341:
            v81 = 0;
          }

          else
          {
            v81 = *v81;
          }

LABEL_342:
          v178 = v81;
          v165 = "required path field missing: %s";
          v166 = 1152;
          goto LABEL_389;
        }

        if (*(v13 + 80))
        {
          v101 = open(v83, 0, 0, v181, v180, v179, &v182.st_mtimespec.tv_nsec, &v182.st_atimespec, &v182.st_ino);
        }

        else
        {
          v101 = open(v83, 2, 0, v181, v180, v179, &v182.st_mtimespec.tv_nsec, &v182.st_atimespec, &v182.st_ino);
        }

        *(v13 + 1304) = v101;
        if ((v101 & 0x80000000) == 0)
        {
          AmberDiskImageBlockDeviceOpenWithFD(v101, v22);
        }

        v169 = *__error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x484, v169, "%s", v170, v83);
        return 0xFFFFFFFFLL;
      case 6u:
        v28 = *(v13 + 1264);
        if ((v28 & 0x8000000000000000) == 0 && *(*(v11 + 8 * v28) + 2336))
        {
          v29 = *(v13 + 16);
          v30 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 24) - v29) >> 3);
          if (v30 < 4)
          {
            goto LABEL_143;
          }

          v31 = (v29 + 72);
          if (*(v29 + 95) < 0)
          {
            if (!*(v29 + 80) || (v31 = *v31) == 0)
            {
LABEL_143:
              if (v30 < 3)
              {
                goto LABEL_179;
              }

              v119 = (v29 + 48);
              if (*(v29 + 71) < 0)
              {
                if (!*(v29 + 56) || (v119 = *v119) == 0)
                {
LABEL_179:
                  if ((amber::getTempDir((v13 + 1308), 0x400uLL) & 0x80000000) != 0)
                  {
                    v165 = "getTempDir";
                    v166 = 1058;
                    goto LABEL_389;
                  }

                  goto LABEL_180;
                }
              }

              else if (!*(v29 + 71))
              {
                goto LABEL_179;
              }

              strlcpy((v13 + 1308), v119, 0x400uLL);
LABEL_180:
              strlcat((v13 + 1308), "/amber_cache_XXXXXX", 0x400uLL);
              *(v13 + 1304) = mkstemp((v13 + 1308));
              if (*(*(this + 2) + 44) >= 1)
              {
                amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x426, 0, "File cache path: %s", v136, v13 + 1308);
              }

LABEL_182:
              if ((*(v13 + 1304) & 0x80000000) == 0)
              {
                v137 = *(v13 + 44);
                v138 = *(v13 + 48);
                AmberFileCacheBlockDeviceOpenWithFD();
              }

              v171 = *__error();
              v165 = "opening cache file";
              v166 = 1064;
              goto LABEL_390;
            }
          }

          else if (!*(v29 + 95))
          {
            goto LABEL_143;
          }

          v117 = open(v31, 2, 0);
          *(v13 + 1304) = v117;
          if (v117 < 0)
          {
            *(v13 + 1304) = open(v31, 1538, 420);
          }

          if (*(*(this + 2) + 44) >= 1)
          {
            amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x41D, 0, "File cache path: %s", v118, v31);
          }

          goto LABEL_182;
        }

        v158 = *(v13 + 16);
        if (*(v13 + 24) == v158)
        {
          goto LABEL_359;
        }

        if (*(v158 + 23) < 0)
        {
          if (v158[1])
          {
            v158 = *v158;
          }

          else
          {
LABEL_359:
            v158 = 0;
          }
        }

        else if (!*(v158 + 23))
        {
          v158 = 0;
        }

        v178 = v158;
        v165 = "no data_device defined: %s";
        v166 = 1044;
        goto LABEL_389;
      case 7u:
        v75 = *(v13 + 1264);
        if ((v75 & 0x8000000000000000) == 0 && *(*(v11 + 8 * v75) + 2336))
        {
          v76 = *(v13 + 56);
          v77 = *(v13 + 48);
          AmberMemoryCacheBlockDeviceOpen();
        }

        v160 = *(v13 + 16);
        if (*(v13 + 24) == v160)
        {
          goto LABEL_367;
        }

        if (*(v160 + 23) < 0)
        {
          if (v160[1])
          {
            v160 = *v160;
          }

          else
          {
LABEL_367:
            v160 = 0;
          }
        }

        else if (!*(v160 + 23))
        {
          v160 = 0;
        }

        v178 = v160;
        v165 = "no data_device defined: %s";
        v166 = 1081;
        goto LABEL_389;
      case 8u:
        v90 = *(v13 + 16);
        v91 = *(v13 + 24);
        if (0xAAAAAAAAAAAAAAABLL * (v91 - v90) < 5)
        {
          goto LABEL_240;
        }

        if (*(v90 + 119) < 0)
        {
          if (!v90[13] || !v90[12])
          {
            goto LABEL_240;
          }
        }

        else if (!*(v90 + 119))
        {
LABEL_240:
          if (v91 == v90)
          {
            goto LABEL_333;
          }

          if ((*(v90 + 23) & 0x80000000) == 0)
          {
            if (!*(v90 + 23))
            {
              v90 = 0;
            }

            goto LABEL_334;
          }

          if (!v90[1])
          {
LABEL_333:
            v90 = 0;
          }

          else
          {
            v90 = *v90;
          }

LABEL_334:
          v178 = v90;
          v165 = "missing URL for HTTP device: %s";
          v166 = 1167;
LABEL_389:
          v171 = 0;
LABEL_390:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", v166, v171, v165, a7, v178);
          return 0xFFFFFFFFLL;
        }

        v104 = *(this + 12);
        v105 = *(this + 13);
        AmberHTTPBlockDeviceOpen();
      case 9u:
        v56 = *(v13 + 16);
        v57 = *(v13 + 24);
        if (0xAAAAAAAAAAAAAAABLL * (v57 - v56) < 4)
        {
          goto LABEL_235;
        }

        v58 = (v56 + 9);
        if (*(v56 + 95) < 0)
        {
          if (!v56[10])
          {
            goto LABEL_235;
          }

          v58 = *v58;
          if (!v58)
          {
            goto LABEL_235;
          }
        }

        else if (!*(v56 + 95))
        {
LABEL_235:
          if (v57 == v56)
          {
            goto LABEL_329;
          }

          if ((*(v56 + 23) & 0x80000000) == 0)
          {
            if (!*(v56 + 23))
            {
              v56 = 0;
            }

            goto LABEL_330;
          }

          if (!v56[1])
          {
LABEL_329:
            v56 = 0;
          }

          else
          {
            v56 = *v56;
          }

LABEL_330:
          v178 = v56;
          v165 = "missing path for directory object store device: %s";
          v166 = 1194;
          goto LABEL_389;
        }

        v98 = open(v58, 0x100000);
        *(v13 + 1304) = v98;
        if ((v98 & 0x80000000) == 0)
        {
          AmberDirectoryObjectStoreBlockDeviceOpenWithFD();
        }

        v163 = *__error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x4AE, v163, "invalid directory: %s", v164, v58);
        return 0xFFFFFFFFLL;
      case 0xAu:
        v84 = *(v13 + 1264);
        if ((v84 & 0x8000000000000000) == 0 && *(*(v11 + 8 * v84) + 2336))
        {
          v85 = *(v13 + 16);
          v86 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 24) - v85) >> 3);
          if (v86 < 4)
          {
            goto LABEL_151;
          }

          v87 = (v85 + 72);
          if (*(v85 + 95) < 0)
          {
            if (!*(v85 + 80) || (v87 = *v87) == 0)
            {
LABEL_151:
              if (v86 < 3)
              {
                goto LABEL_187;
              }

              v121 = (v85 + 48);
              if (*(v85 + 71) < 0)
              {
                if (!*(v85 + 56) || (v121 = *v121) == 0)
                {
LABEL_187:
                  if ((amber::getTempDir((v13 + 1308), 0x400uLL) & 0x80000000) != 0)
                  {
                    v165 = "getTempDir";
                    v166 = 1223;
                    goto LABEL_389;
                  }

                  goto LABEL_188;
                }
              }

              else if (!*(v85 + 71))
              {
                goto LABEL_187;
              }

              strlcpy((v13 + 1308), v121, 0x400uLL);
LABEL_188:
              strlcat((v13 + 1308), "/amber_cache_XXXXXX", 0x400uLL);
              if (!mkdtemp((v13 + 1308)))
              {
                v171 = *__error();
                v165 = "mkdtemp";
                v166 = 1225;
                goto LABEL_390;
              }

              *(v13 + 1304) = open((v13 + 1308), 0x100000);
              if (*(*(this + 2) + 44) >= 1)
              {
                amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x4CC, 0, "Directory cache path: %s", v139, v13 + 1308, v181, v180, v179, &v182.st_mtimespec.tv_nsec, &v182.st_atimespec, &v182.st_ino);
              }

              goto LABEL_191;
            }
          }

          else if (!*(v85 + 95))
          {
            goto LABEL_151;
          }

          *(v13 + 1304) = open(v87, 0x100000);
          if (*(*(this + 2) + 44) >= 1)
          {
            amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x4C2, 0, "Directory cache path: %s", v120, v87, v181, v180, v179, &v182.st_mtimespec.tv_nsec, &v182.st_atimespec, &v182.st_ino);
          }

LABEL_191:
          if ((*(v13 + 1304) & 0x80000000) == 0)
          {
            v140 = *(v13 + 64);
            AmberDirectoryCacheObjectStoreBlockDeviceOpenWithFD();
          }

          v171 = *__error();
          v165 = "opening cache file";
          v166 = 1230;
          goto LABEL_390;
        }

        v159 = *(v13 + 16);
        if (*(v13 + 24) == v159)
        {
          goto LABEL_363;
        }

        if (*(v159 + 23) < 0)
        {
          if (v159[1])
          {
            v159 = *v159;
          }

          else
          {
LABEL_363:
            v159 = 0;
          }
        }

        else if (!*(v159 + 23))
        {
          v159 = 0;
        }

        v178 = v159;
        v165 = "no data_device defined: %s";
        v166 = 1210;
        goto LABEL_389;
      case 0xBu:
        v92 = *(v13 + 16);
        v93 = *(v13 + 24);
        if (0xAAAAAAAAAAAAAAABLL * (v93 - v92) < 0x13)
        {
          goto LABEL_285;
        }

        if (*(v92 + 455) < 0)
        {
          if (v92[55])
          {
            v94 = v92[54];
          }

          else
          {
            v94 = 0;
          }
        }

        else if (*(v92 + 455))
        {
          v94 = v92 + 54;
        }

        else
        {
          v94 = 0;
        }

        if (v93 - v92 == 456)
        {
          goto LABEL_163;
        }

        if ((*(v92 + 479) & 0x80000000) == 0)
        {
          if (*(v92 + 479))
          {
            v133 = v92 + 57;
          }

          else
          {
            v133 = 0;
          }

          if (!v94)
          {
            goto LABEL_285;
          }

LABEL_173:
          if (v133)
          {
            if (v24)
            {
              v134 = *(this + 12);
              v135 = *(this + 13);
              AmberKnoxObjectStoreBlockDeviceOpen();
            }

            if (*(v92 + 23) < 0)
            {
              if (v92[1])
              {
                v92 = *v92;
              }

              else
              {
                v92 = 0;
              }
            }

            else if (!*(v92 + 23))
            {
              v92 = 0;
            }

            v178 = v92;
            v165 = "Knox object store device must be read-only: %s";
            v166 = 1244;
          }

          else
          {
            if (*(v92 + 23) < 0)
            {
              if (v92[1])
              {
                v92 = *v92;
              }

              else
              {
                v92 = 0;
              }
            }

            else if (!*(v92 + 23))
            {
              v92 = 0;
            }

            v178 = v92;
            v165 = "missing knox_space for Knox object store device: %s";
            v166 = 1243;
          }

          goto LABEL_389;
        }

        if (v92[58])
        {
          v133 = v92[57];
          if (v94)
          {
            goto LABEL_173;
          }
        }

        else
        {
LABEL_163:
          v133 = 0;
          if (v94)
          {
            goto LABEL_173;
          }
        }

LABEL_285:
        if (v93 == v92)
        {
          goto LABEL_371;
        }

        if ((*(v92 + 23) & 0x80000000) == 0)
        {
          if (!*(v92 + 23))
          {
            v92 = 0;
          }

          goto LABEL_372;
        }

        if (!v92[1])
        {
LABEL_371:
          v92 = 0;
        }

        else
        {
          v92 = *v92;
        }

LABEL_372:
        v178 = v92;
        v165 = "missing knox_host for Knox object store device: %s";
        v166 = 1242;
        goto LABEL_389;
      case 0xCu:
        v70 = *(v13 + 16);
        v71 = *(v13 + 24);
        if (0xAAAAAAAAAAAAAAABLL * (v71 - v70) < 0x1B)
        {
          goto LABEL_245;
        }

        if (*(v70 + 647) < 0)
        {
          if (!v70[79] || !v70[78])
          {
            goto LABEL_245;
          }
        }

        else if (!*(v70 + 647))
        {
LABEL_245:
          if (v71 == v70)
          {
            goto LABEL_337;
          }

          if ((*(v70 + 23) & 0x80000000) == 0)
          {
            if (!*(v70 + 23))
            {
              v70 = 0;
            }

            goto LABEL_338;
          }

          if (!v70[1])
          {
LABEL_337:
            v70 = 0;
          }

          else
          {
            v70 = *v70;
          }

LABEL_338:
          v178 = v70;
          v165 = "missing uri for S3 object store device: %s";
          v166 = 1263;
          goto LABEL_389;
        }

        if (v71 - v70 != 648 && *(v70 + 671) < 0 && v70[82])
        {
          v122 = v70[81];
        }

        v123 = *(this + 12);
        v124 = *(this + 13);
        AmberS3ObjectStoreBlockDeviceOpen();
      case 0xDu:
        v88 = *(v13 + 16);
        v89 = *(v13 + 24);
        if (0xAAAAAAAAAAAAAAABLL * (v89 - v88) < 5)
        {
          goto LABEL_265;
        }

        if (*(v88 + 119) < 0)
        {
          if (!v88[13] || !v88[12])
          {
            goto LABEL_265;
          }
        }

        else if (!*(v88 + 119))
        {
LABEL_265:
          if (v89 == v88)
          {
            goto LABEL_353;
          }

          if ((*(v88 + 23) & 0x80000000) == 0)
          {
            if (!*(v88 + 23))
            {
              v88 = 0;
            }

            goto LABEL_354;
          }

          if (!v88[1])
          {
LABEL_353:
            v88 = 0;
          }

          else
          {
            v88 = *v88;
          }

LABEL_354:
          v178 = v88;
          v165 = "missing url for HTTP object store device: %s";
          v166 = 1280;
          goto LABEL_389;
        }

        v102 = *(this + 12);
        v103 = *(this + 13);
        AmberHTTPObjectStoreBlockDeviceOpen();
      case 0xEu:
        v72 = *(v13 + 16);
        v73 = *(v13 + 24);
        if ((v24 & 1) == 0)
        {
          if (v73 == v72)
          {
            v162 = 0;
          }

          else if (*(v72 + 23) < 0)
          {
            v162 = *(v72 + 8);
            if (v162)
            {
              v162 = *v72;
            }
          }

          else if (*(v72 + 23))
          {
            v162 = *(v13 + 16);
          }

          else
          {
            v162 = 0;
          }

          v178 = v162;
          v165 = "Permutation device must be read-only: %s";
          v166 = 1294;
          goto LABEL_389;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v73 - v72) >> 3) < 0x1A)
        {
          goto LABEL_130;
        }

        if (*(v72 + 623) < 0)
        {
          if (*(v72 + 608))
          {
            v74 = *(v72 + 600);
          }

          else
          {
LABEL_130:
            v74 = 0;
          }
        }

        else if (*(v72 + 623))
        {
          v74 = (v72 + 600);
        }

        else
        {
          v74 = 0;
        }

        v107 = *(v13 + 1264);
        if ((v107 & 0x8000000000000000) == 0 && *(*(v11 + 8 * v107) + 2336))
        {
          v108 = AmberFileStreamOpenWithPath(v74, 1u, 0, a4, a5, a6, a7);
          v114 = v108;
          if (v108)
          {
            v115 = AmberBlockPermutationCreateWithStream(v108, 0, v109, v110, v111, v112, v113);
            *(v13 + 2344) = v115;
            if (v115)
            {
              AmberStreamClose(v114);
              v116 = *(v13 + 2344);
              AmberPermutationBlockDeviceOpen();
            }
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "createDevices", 0x519, 0, "parsing permutation", v113);
          AmberStreamClose(v114);
          return 0xFFFFFFFFLL;
        }

        if (v73 == v72)
        {
          v161 = 0;
        }

        else if (*(v72 + 23) < 0)
        {
          v161 = *(v72 + 8);
          if (v161)
          {
            v161 = *v72;
          }
        }

        else if (*(v72 + 23))
        {
          v161 = *(v13 + 16);
        }

        else
        {
          v161 = 0;
        }

        v178 = v161;
        v165 = "no data_device defined: %s";
        v166 = 1299;
        goto LABEL_389;
      case 0xFu:
        v95 = *(v13 + 16);
        v96 = *(v13 + 24) - v95;
        v97 = 0xAAAAAAAAAAAAAAABLL * (v96 >> 3);
        if (v97 >= 0x1D)
        {
          if (*(v95 + 695) < 0 && *(v95 + 680))
          {
            v106 = *(v95 + 672);
          }

          if (v97 >= 0x1F && *(v95 + 743) < 0 && *(v95 + 728))
          {
            v141 = *(v95 + 720);
          }

          if (v96 != 696)
          {
            if (*(v95 + 719) < 0 && *(v95 + 704))
            {
              v142 = *(v95 + 696);
            }

            if (v97 >= 0x20 && *(v95 + 767) < 0 && *(v95 + 752))
            {
              v143 = *(v95 + 744);
            }
          }
        }

        AmberRadosBlockDeviceOpen();
      default:
        v178 = deviceTypeString(v23);
        v165 = "unsupported device type: %s";
        v166 = 1336;
        goto LABEL_389;
    }
  }
}

char *deviceTypeString(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return off_29EE50090[a1];
  }
}

uint64_t amber::NBDServerConfiguration::snapshotExports(amber::NBDServerConfiguration *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = *(this + 7) - *(this + 6);
  if (!v1)
  {
    result = 0;
    goto LABEL_23;
  }

  v3 = 0;
  v4 = v1 >> 3;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  do
  {
    v6 = *(*(this + 6) + 8 * v3);
    v7 = *(v6 + 40);
    if (v7 < 0)
    {
      goto LABEL_20;
    }

    v8 = *(this + 3);
    if (v7 >= (*(this + 4) - v8) >> 3)
    {
      goto LABEL_20;
    }

    v9 = *(*(v8 + 8 * v7) + 2336);
    if (!v9)
    {
      goto LABEL_20;
    }

    v11 = v6 + 16;
    v10 = *(v6 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v11 + 8) - v10) >> 3) < 2)
    {
      goto LABEL_15;
    }

    if (*(v10 + 47) < 0)
    {
      if (*(v10 + 32))
      {
        v12 = *(v10 + 24);
        goto LABEL_16;
      }

LABEL_15:
      v12 = 0;
      goto LABEL_16;
    }

    if (*(v10 + 47))
    {
      v12 = (v10 + 24);
    }

    else
    {
      v12 = 0;
    }

LABEL_16:
    if ((amber::BaseObject::getAttributeUInt32(v9, 202) & 0x10000) != 0)
    {
      v14 = "<default>";
      if (*v12)
      {
        v14 = v12;
      }

      amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "snapshotExports", 0x582, 0, "Sending SNAPSHOT command to export %s entry point", v13, v14);
      amber::ObjectStorePath::ObjectStorePath(v17);
      amber::BlockDevice::snapshot(v9, v17);
    }

LABEL_20:
    ++v3;
  }

  while (v5 != v3);
  result = 0;
LABEL_23:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::NBDServerConfiguration::enqueuePrefetchSequence(uint64_t this)
{
  v1 = *(this + 24);
  if (*(this + 32) != v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = *(v1 + 8 * v3);
      v5 = *(v4 + 2336);
      if (v5)
      {
        this = amber::BaseObject::getAttributeUInt32(*(v4 + 2336), 202);
        if ((this & 0x20000) != 0 && *(v4 + 83) == 1)
        {
          amber::BlockDevice::enqueuePrefetchSequence(v5);
        }
      }

      ++v3;
      v1 = *(v2 + 24);
    }

    while (v3 < (*(v2 + 32) - v1) >> 3);
  }

  return this;
}

uint64_t amber::NBDServerConfiguration::exportDevice(amber::NBDServerConfiguration *this, const char *a2)
{
  v3 = amber::NBDServerConfiguration::exportIndex(this, a2);
  if (v3 < 0)
  {
    v7 = 1549;
  }

  else
  {
    v5 = *(*(*(this + 6) + 8 * v3) + 40);
    if ((v5 & 0x8000000000000000) == 0)
    {
      return *(*(*(this + 3) + 8 * v5) + 2336);
    }

    v7 = 1551;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "exportDevice", v7, 0, "unknown export", v4);
  return 0;
}

uint64_t amber::NBDServerConfiguration::logStats(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13[20] = *MEMORY[0x29EDCA608];
  v8 = *(this + 24);
  v7 = *(this + 32);
  if (v7 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v8 + 8 * v9);
      if (*(v10 + 2336))
      {
        break;
      }

      if (++v9 >= ((v7 - v8) >> 3))
      {
        goto LABEL_14;
      }
    }

    v11 = *(v10 + 16);
    if (*(v10 + 24) != v11)
    {
      if ((*(v11 + 23) & 0x80000000) == 0)
      {
        if (!*(v11 + 23))
        {
          v11 = 0;
        }

LABEL_12:
        amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "logStats", 0x619, 0, "%s:", a7, v11);
        amber::BlockDevice::logStats(*(v10 + 2336), 0x14uLL, v13);
      }

      if (v11[1])
      {
        v11 = *v11;
        goto LABEL_12;
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

LABEL_14:
  v12 = *MEMORY[0x29EDCA608];
  return this;
}

amber::NBDServerConfiguration *AmberNBDServerConfigurationDestroy(amber::NBDServerConfiguration *result)
{
  if (result)
  {
    v1 = result;
    if ((amber::NBDServerConfiguration::snapshotExports(result) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "AmberNBDServerConfigurationDestroy", 0x631, 0, "devices snapshot failed", v2);
    }

    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

amber::NBDServerConfiguration::DeviceEntry *amber::NBDServerConfiguration::DeviceEntry::DeviceEntry(amber::NBDServerConfiguration::DeviceEntry *this, amber::NBDServerConfiguration *a2)
{
  v3 = amber::CommonEntry::CommonEntry(this, a2, 0x29uLL);
  *v3 = &unk_2A1DE0668;
  *(v3 + 10) = -1;
  *(v3 + 44) = 0u;
  *(v3 + 60) = 0u;
  *(v3 + 76) = 0;
  amber::ObjectStorePath::ObjectStorePath((v3 + 88));
  *(this + 86) = &unk_2A1DDFDD8;
  *(this + 87) = &unk_2A1DDFE08;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 240) = 0;
  *(this + 121) = &unk_2A1DDFDD8;
  *(this + 122) = &unk_2A1DDFE08;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 310) = 0;
  *(this + 161) = -1;
  *(this + 160) = -1;
  *(this + 159) = -1;
  *(this + 162) = -1;
  *(this + 10) = -1;
  *(this + 326) = -1;
  *(this + 156) = -1;
  *(this + 157) = -1;
  *(this + 158) = -1;
  *(this + 146) = 0u;
  return this;
}

void sub_29695F1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *v10 = &unk_2A1DE06B0;
  a10 = (v10 + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

amber::CommonEntry *amber::CommonEntry::CommonEntry(amber::CommonEntry *this, amber::NBDServerConfiguration *a2, std::vector<std::string>::size_type __sz)
{
  *this = &unk_2A1DE06B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  std::vector<std::string>::resize((this + 16), __sz);
  return this;
}

void sub_29695F23C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void amber::NBDServerConfiguration::DeviceEntry::~DeviceEntry(amber::NBDServerConfiguration::DeviceEntry *this)
{
  amber::NBDServerConfiguration::DeviceEntry::~DeviceEntry(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE0668;
  AmberBlockDeviceClose(*(this + 292));
  AmberBlockPermutationDestroy(*(this + 293));
  v2 = *(this + 326);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  if (*(this + 1308))
  {
    if (*(this + 10) == 10)
    {
      nftw(this + 1308, unlinkProc, 64, 7);
    }

    else
    {
      unlink(this + 1308);
    }
  }

  *(this + 121) = &unk_2A1DDFDD8;
  *(this + 122) = &unk_2A1DDFE08;
  *(this + 988) = 0u;
  *(this + 1004) = 0u;
  *(this + 1020) = 0u;
  *(this + 1036) = 0u;
  *(this + 1052) = 0u;
  *(this + 1068) = 0u;
  *(this + 1084) = 0u;
  *(this + 1100) = 0u;
  *(this + 1116) = 0u;
  *(this + 1132) = 0u;
  *(this + 1148) = 0u;
  *(this + 1164) = 0u;
  *(this + 1180) = 0u;
  *(this + 1196) = 0u;
  *(this + 1212) = 0u;
  *(this + 1228) = 0u;
  *(this + 86) = &unk_2A1DDFDD8;
  *(this + 87) = &unk_2A1DDFE08;
  *(this + 708) = 0u;
  *(this + 724) = 0u;
  *(this + 740) = 0u;
  *(this + 756) = 0u;
  *(this + 772) = 0u;
  *(this + 788) = 0u;
  *(this + 804) = 0u;
  *(this + 820) = 0u;
  *(this + 836) = 0u;
  *(this + 852) = 0u;
  *(this + 868) = 0u;
  *(this + 884) = 0u;
  *(this + 900) = 0u;
  *(this + 916) = 0u;
  *(this + 932) = 0u;
  *(this + 948) = 0u;
  amber::ObjectStorePath::~ObjectStorePath((this + 88));
  *this = &unk_2A1DE06B0;
  v3 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  end = this->__end_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v5 = __sz >= v4;
  v6 = __sz - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::string>::__append(this, v6);
  }

  else if (!v5)
  {
    v7 = &this->__begin_[__sz];
    while (end != v7)
    {
      v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v8 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = v7;
  }
}

void amber::CommonEntry::~CommonEntry(amber::CommonEntry *this)
{
  *this = &unk_2A1DE06B0;
  v1 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2A1DE06B0;
  v2 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x29C25C000](this, 0xA1C40987D6AD5);
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy((v11 - v14), this->__begin_, v14);
    begin = this->__begin_;
    this->__begin_ = v15;
    this->__end_ = v13;
    v17 = this->__end_cap_.__value_;
    this->__end_cap_.__value_ = 0;
    v18.__end_ = begin;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = begin;
    v18.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

BOOL unlinkProc(const std::__fs::filesystem::path *a1, std::error_code *a2, int a3, FTW *a4)
{
  v5 = remove(a1, a2);
  if (v5 & 0x80000000)
  {
    perror(a1);
  }

  return v5;
}

void amber::NBDServerConfiguration::ExportEntry::~ExportEntry(amber::NBDServerConfiguration::ExportEntry *this)
{
  *this = &unk_2A1DE06B0;
  v1 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2A1DE06B0;
  v2 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x29C25C000](this, 0x10A1C40E7EDF326);
}

void amber::NBDServerConfiguration::ServerEntry::~ServerEntry(amber::NBDServerConfiguration::ServerEntry *this)
{
  *this = &unk_2A1DE06B0;
  v1 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2A1DE06B0;
  v2 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x29C25C000](this, 0x10A1C408A63C97ALL);
}

uint64_t amber::NBDServerConfiguration::DeviceEntry::unlockEncryptedBlockDevice(uint64_t a1, amber::BaseObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v28[75] = *MEMORY[0x29EDCA608];
  v27 = 0;
  v28[0] = 0;
  Attribute = AmberObjectGetAttribute(a2, 116, 2, 4uLL, &v27, v28, a7);
  result = 0;
  if ((Attribute & 0x80000000) == 0 && v28[0] == 4 && v27 == 0)
  {
    v27 = 0;
    v28[0] = 0;
    if ((AmberObjectGetAttribute(a2, 101, 2, 4uLL, &v27, v28, v9) & 0x80000000) != 0 || v28[0] != 4 || v27 == -1)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "unlockEncryptedBlockDevice", 0x296, 0, "invalid profile", v13);
      goto LABEL_15;
    }

    if ((v27 - 1) <= 1)
    {
      v14 = *(a1 + 984);
      if (v14)
      {
        goto LABEL_12;
      }

      v16 = *(a1 + 1288);
      if (v16 < 0 || (v17 = *(*(a1 + 8) + 24), v16 >= (*(*(a1 + 8) + 32) - v17) >> 3) || (v18 = *(v17 + 8 * v16), (v19 = *(v18 + 2336)) == 0))
      {
        v21 = *(a1 + 1256);
        if (v21 < 0)
        {
          goto LABEL_34;
        }

        v22 = *(*(a1 + 8) + 24);
        if (v21 >= (*(*(a1 + 8) + 32) - v22) >> 3)
        {
          goto LABEL_34;
        }

        v23 = *(v22 + 8 * v21);
        v19 = *(v23 + 2336);
        if (!v19)
        {
          goto LABEL_34;
        }

        if ((amber::BaseObject::getAttributeUInt32(*(v23 + 2336), 202) & 0x100000) == 0)
        {
          v19 = 0;
        }
      }

      else if ((amber::BaseObject::getAttributeUInt32(*(v18 + 2336), 202) & 0x100000) == 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "unlockEncryptedBlockDevice", 0x2A6, 0, "KMS device doesn't support KMS requests", v20);
        goto LABEL_15;
      }

      v14 = *(a1 + 984);
      if (v19)
      {
        v24 = v14 == 0;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        amber::ObjectStorePath::ObjectStorePath(v28);
        amber::BaseObject::getAttributeObjectStorePath(a2, 126, v28);
        if (((*(*v19 + 72))(v19, v28, a1 + 968, 0) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "unlockEncryptedBlockDevice", 0x2B9, 0, "key retrieval failed", v25);
          amber::ObjectStorePath::~ObjectStorePath(v28);
          goto LABEL_15;
        }

        amber::ObjectStorePath::~ObjectStorePath(v28);
        v14 = *(a1 + 984);
      }

      if (v14)
      {
LABEL_12:
        v28[0] = &off_2A1DDFC68;
        v28[1] = a1 + 988;
        v28[2] = v14;
        if (((*(*a2 + 24))(a2, 127, 3, v28) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "unlockEncryptedBlockDevice", 0x2BE, 0, "set symmetric key", v15);
LABEL_15:
          result = 0xFFFFFFFFLL;
          goto LABEL_35;
        }
      }
    }

LABEL_34:
    result = 0;
  }

LABEL_35:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29695FD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::ObjectStorePath::~ObjectStorePath(va);
  _Unwind_Resume(a1);
}

uint64_t amber::NBDServerConfiguration::DeviceEntry::setupRadosContext(amber::CommonEntry *this, uint64_t a2)
{
  for (i = 0; ; i += 2)
  {
    v5 = &amber::NBDServerConfiguration::DeviceEntry::setupRadosContext(AmberObject_impl *)::kmap[4 * i];
    v6 = v5[1];
    v7 = amber::CommonEntry::string(this, *v5);
    if (v7)
    {
      v8 = v7;
      v9 = strlen(v7);
      if ((AmberObjectSetAttribute(a2, v6, 6, v8, v9, v10, v11) & 0x80000000) != 0)
      {
        break;
      }
    }

    v13 = 0x5555uLL >> i;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/NBDServerConfiguration.cpp", "setupRadosContext", 0x2D7, 0, "set rados context attribute", v12);
  return 0xFFFFFFFFLL;
}

void amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(uint64_t a1)
{
  amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::ArrayObject<amber::ObjectStorePath>::jsonParse(void *a1, amber::JSONInputStream *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v9.n128_f64[0] = amber::ObjectStorePath::ObjectStorePath(v40);
  v11 = a1[2];
  v10 = a1[3];
  if (v10 != v11)
  {
    v12 = v10 - 75;
    v13 = v10 - 75;
    do
    {
      (**v13)(v13, v9);
      v12 -= 75;
      v14 = v13 == v11;
      v13 -= 75;
    }

    while (!v14);
  }

  a1[3] = v11;
  v15 = -1;
  while (1)
  {
    while (1)
    {
      v36 = -1;
      v37 = 0u;
      v38 = 0u;
      if ((amber::JSONInputStream::read(a2, &v36, v4, v5, v6, v7, v8) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././ArrayObject.hpp", "jsonParse", 0x2B, 0, "read token", v8);
        goto LABEL_22;
      }

      if (v15 == -1)
      {
        v15 = v39;
      }

      if (v39 != v15)
      {
        break;
      }

      if (v36 != 1)
      {
        if (v36 == 2)
        {
          v33 = 0;
          goto LABEL_27;
        }

        break;
      }
    }

    if (v39 != v15 + 1)
    {
      break;
    }

    *&v21 = amber::JSONInputStream::unread(a2, &v36, v4, v5, v6, v7, v8).n128_u64[0];
    if (v22 < 0 || (amber::ObjectStorePath::jsonParse(v40, a2, v16, v17, v18, v19, v20) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././ArrayObject.hpp", "jsonParse", 0x37, 0, "invalid o", v20, v21);
      goto LABEL_22;
    }

    v27 = a1[3];
    if (v27 >= a1[4])
    {
      v28 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<amber::ObjectStorePath const&>((a1 + 2), v40, v23, v24, v25, v26, v20);
    }

    else
    {
      amber::ObjectStorePath::ObjectStorePath(a1[3], v40, v23, v24, v25, v26, v20);
      v28 = v27 + 600;
      a1[3] = v27 + 600;
    }

    a1[3] = v28;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././ArrayObject.hpp", "jsonParse", 0x3C, 0, "invalid Array", v8);
LABEL_22:
  v30 = a1[2];
  v29 = a1[3];
  if (v29 != v30)
  {
    v31 = v29 - 75;
    v32 = v29 - 75;
    do
    {
      (**v32)(v32);
      v31 -= 75;
      v14 = v32 == v30;
      v32 -= 75;
    }

    while (!v14);
  }

  a1[3] = v30;
  v33 = 0xFFFFFFFFLL;
LABEL_27:
  amber::ObjectStorePath::~ObjectStorePath(v40);
  v34 = *MEMORY[0x29EDCA608];
  return v33;
}

void sub_2969600F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  amber::ObjectStorePath::~ObjectStorePath(va);
  _Unwind_Resume(a1);
}

uint64_t amber::ArrayObject<amber::ObjectStorePath>::jsonSerialize(uint64_t a1, amber::JSONOutputStream *this, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginArray(this, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v18 = "serialize array";
    v19 = 70;
  }

  else
  {
    v15 = *(a1 + 16);
    if (v15 == *(a1 + 24))
    {
LABEL_6:
      if ((amber::JSONOutputStream::end(this, v9, v10, v11, v12, v13, v14) & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = "serialize array";
      v19 = 75;
    }

    else
    {
      v16 = *(a1 + 16);
      while (((*(*v16 + 24))(v16, this, 0) & 0x80000000) == 0)
      {
        v16 += 600;
        v15 += 600;
        if (v16 == *(a1 + 24))
        {
          goto LABEL_6;
        }
      }

      v18 = "serialize entry";
      v19 = 73;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././ArrayObject.hpp", "jsonSerialize", v19, 0, v18, v14);
  return 0xFFFFFFFFLL;
}

void non-virtual thunk toamber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(uint64_t a1)
{
  amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(a1 - 8);

  JUMPOUT(0x29C25C000);
}

uint64_t std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<amber::ObjectStorePath const&>(uint64_t a1, const amber::ObjectStorePath *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0x2FC962FC962FC963 * ((*(a1 + 8) - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x6D3A06D3A06D3ALL)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F92C5F92C5F92C6 * ((*(a1 + 16) - *a1) >> 3) > v8)
  {
    v8 = 0x5F92C5F92C5F92C6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2FC962FC962FC963 * ((*(a1 + 16) - *a1) >> 3)) >= 0x369D0369D0369DLL)
  {
    v11 = 0x6D3A06D3A06D3ALL;
  }

  else
  {
    v11 = v8;
  }

  v24 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::ObjectStorePath>>(a1, v11);
  }

  v21 = 0;
  v22 = 600 * v7;
  amber::ObjectStorePath::ObjectStorePath((600 * v7), a2, a3, a4, a5, a6, a7);
  v23 = (600 * v7 + 600);
  v12 = *(a1 + 8);
  v13 = 600 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::ObjectStorePath>,amber::ObjectStorePath*>(a1, *a1, v12, v13, v14, v15, v16);
  v17 = *a1;
  *a1 = v13;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<amber::ObjectStorePath>::~__split_buffer(&v21);
  return v20;
}

void sub_2969603C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<amber::ObjectStorePath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

amber::ObjectStorePath *amber::ObjectStorePath::ObjectStorePath(amber::ObjectStorePath *this, const amber::ObjectStorePath *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3CA8;
  *(this + 1) = &unk_2A1DE3CE8;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(this + 16, a2 + 36, *(a2 + 8), a4, a5, a6, a7);
  amber::CryptoBlobBase<256u>::CryptoBlobBase(this + 296, a2 + 316, *(a2 + 78), v9, v10, v11, v12);
  v13 = *(a2 + 36);
  *(this + 148) = *(a2 + 148);
  *(this + 36) = v13;
  return this;
}

void sub_29696047C(_Unwind_Exception *a1)
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

uint64_t amber::CryptoBlobBase<256u>::CryptoBlobBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFC68;
  v9[1] = a2;
  v9[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::CryptoBlobBase<256u>::CryptoBlobBase(a1, v9, a3, a4, a5, a6, a7);
}

{
  *a1 = &unk_2A1DDFDD8;
  *(a1 + 8) = &unk_2A1DDFE08;
  *(a1 + 16) = 0;
  v7 = *(a2 + 16);
  if (v7 >= 0x101)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/NBD/.././Crypto/./CryptoBlob.hpp", "CryptoBlobBase", 0x23, 0, "CryptoBlob invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "CryptoBlob invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v9 = (a1 + 20);
  v14[0] = &off_2A1DDFDA8;
  v14[1] = v9;
  v14[2] = 256;
  *(a1 + 16) = v7;
  memcpy(v9, *(a2 + 8), v7);
  amber::MutableMemoryView::operator+(v14, v7, v10, v13);
  bzero(v13[1], v13[2]);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::ObjectStorePath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x6D3A06D3A06D3BLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

amber::ObjectStorePath *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::ObjectStorePath>,amber::ObjectStorePath*>(int a1, amber::ObjectStorePath *a2, amber::ObjectStorePath *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 != a3)
  {
    v9 = a2;
    v10 = 0;
    v11 = a2;
    do
    {
      result = amber::ObjectStorePath::ObjectStorePath((a4 + v10), v11, a3, a4, a5, a6, a7);
      v11 = (v11 + 600);
      v10 += 600;
    }

    while (v11 != a3);
    if (v9 != a3)
    {
      v13 = v9;
      do
      {
        result = (**v9)(v9);
        v9 = (v9 + 600);
        v13 = (v13 + 600);
      }

      while (v9 != a3);
    }
  }

  return result;
}

void sub_296960814(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::ObjectStorePath>,amber::ObjectStorePath*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<amber::ObjectStorePath>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 600;
    (**(i - 600))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t amber::ArrayObject<amber::ObjectStorePath>::~ArrayObject(uint64_t a1)
{
  *a1 = &unk_2A1DE0740;
  v2 = (a1 + 8);
  *(a1 + 8) = &unk_2A1DE0780;
  v4 = (a1 + 16);
  std::vector<amber::ObjectStorePath>::__destroy_vector::operator()[abi:ne200100](&v4);
  amber::JSONCodable::~JSONCodable(v2);
  return a1;
}

void std::vector<amber::ObjectStorePath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 75;
      v7 = v4 - 75;
      do
      {
        (**v7)(v7);
        v6 -= 75;
        v8 = v7 == v2;
        v7 -= 75;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<amber::NBDServerConfiguration::DeviceEntry *>::emplace_back<amber::NBDServerConfiguration::DeviceEntry * const&>(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amber::IOSegment *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return v6 - 8;
}

amber::DiskImagePluginKnoxImage *amber::DiskImagePluginKnoxImage::DiskImagePluginKnoxImage(amber::DiskImagePluginKnoxImage *this, const char *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = amber::DiskImagePluginImage::DiskImagePluginImage(this);
  *v12 = &unk_2A1DE07E8;
  v13 = v12 + 112;
  v14 = strlen(a2);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  *(this + 135) = v14;
  if (v14)
  {
    memmove(v13, a2, v14);
  }

  *(v13 + v15) = 0;
  *(this + 17) = a3;
  *(this + 36) = a4;
  *(this + 19) = a5;
  *(this + 40) = a6;
  return this;
}

void amber::DiskImagePluginKnoxImage::~DiskImagePluginKnoxImage(void **this)
{
  *this = &unk_2A1DE07E8;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }
}

{
  *this = &unk_2A1DE07E8;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  JUMPOUT(0x29C25C000);
}

void amber::DiskImagePluginKnoxImage::subscriber(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  AmberRandomBlockDeviceOpen();
}

uint64_t amber::DiskImagePluginKnoxImage::encode(uint64_t a1, void (**a2)(uint64_t, uint64_t, char *, size_t), uint64_t a3)
{
  if ((amber::diEncodeString(a2, a3, "ImageType", "knox") & 0x80000000) == 0)
  {
    v7 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v7 = *v7;
    }

    if ((amber::diEncodeString(a2, a3, "URL", v7) & 0x80000000) == 0 && (amber::diEncodeUInt64(a2, a3, "Size", *(a1 + 136)) & 0x80000000) == 0 && (amber::diEncodeUInt32(a2, a3, "IOSize", *(a1 + 144)) & 0x80000000) == 0 && (amber::diEncodeUInt64(a2, a3, "Seed", *(a1 + 152)) & 0x80000000) == 0 && (amber::diEncodeUInt32(a2, a3, "NThreads", *(a1 + 160)) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/DiskImages/DiskImagePluginKnoxImage.cpp", "encode", 0x39, 0, "DiskImagePluginTestImage::encode", v6);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxContainer::metadata(amber::KnoxContainer *this)
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
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  v2 = MEMORY[0x29C25BF00](__p, "containers/");
  v3 = *(this + 39);
  if (v3 >= 0)
  {
    v4 = this + 16;
  }

  else
  {
    v4 = *(this + 2);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 39);
  }

  else
  {
    v5 = *(this + 3);
  }

  std::string::append(v2, v4, v5);
  v6 = *(this + 1);
  if (v21 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v19[1] = 0;
  v19[2] = 0;
  v19[0] = &off_2A1DDFC68;
  v8 = amber::KnoxContext::knoxPerform(v6, 1u, v7, v19, v22);
  v15 = v8;
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    if (v8 < 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    amber::Buffer::constBuf(v22, v14, v19);
    amber::ConstMemoryView::view(v19, v24, *(&v24 + 1) - v24, v16, &v18);
    amber::JSONInputStream::JSONInputStream(__p, &v18);
  }

  operator delete(__p[0]);
  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  amber::Buffer::~Buffer(v22, v9, v10, v11, v12, v13, v14);
  return 0xFFFFFFFFLL;
}

void sub_2969613B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  amber::JSONInputStream::~JSONInputStream(&__p);
  amber::Buffer::~Buffer((v39 - 208), v41, v42, v43, v44, v45, v46);
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContainer::create(std::mutex *this, const amber::KnoxUploadAttributes *a2)
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
  v33 = 1;
  v34 = 0;
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
  memset(&__str, 0, sizeof(__str));
  v23[33] = -1;
  std::mutex::lock(this + 5);
  if (this[6].__m_.__opaque[16] != 1)
  {
    amber::Buffer::resize(v25, 0, v3, v4, v5, v6, v7);
    amber::JSONOutputStream::JSONOutputStream(v23, v25);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "create", 0x97, 0, "invalid container state", v7);
  *&this->__m_.__opaque[48] = 0;
  v22[0] = &off_2A1DDFDA8;
  v22[1] = &this->__m_.__opaque[52];
  v22[2] = 256;
  amber::MutableMemoryView::operator+(v22, 0, v8, v23);
  bzero(v23[1], v23[2]);
  std::mutex::unlock(this + 5);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  amber::Buffer::~Buffer(v25, v9, v10, v11, v12, v13, v14);
  amber::Buffer::~Buffer(v30, v15, v16, v17, v18, v19, v20);
  return 0xFFFFFFFFLL;
}

void sub_296961DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60)
{
  amber::JSONInputStream::~JSONInputStream(&a20);
  std::mutex::unlock(v60 + 5);
  if (a59 < 0)
  {
    operator delete(__p);
  }

  amber::Buffer::~Buffer(&a60, v63, v64, v65, v66, v67, v68);
  amber::Buffer::~Buffer((v61 - 248), v69, v70, v71, v72, v73, v74);
  _Unwind_Resume(a1);
}

amber::KnoxContainer *amber::KnoxContainer::KnoxContainer(amber::KnoxContainer *this, amber::KnoxContext *a2, char *__s)
{
  *this = &unk_2A1DE0860;
  *(this + 1) = a2;
  std::string::basic_string[abi:ne200100]<0>(this + 16, __s);
  *(this + 5) = &unk_2A1DDFDD8;
  *(this + 6) = &unk_2A1DDFE08;
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
  *(this + 78) = 0;
  *(this + 56) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 40) = 850045863;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 47) = 0;
  *(this + 48) = this + 392;
  *(this + 408) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 52) = 0;
  *(this + 53) = this + 432;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 56) = 0;
  return this;
}

void amber::KnoxContainer::~KnoxContainer(amber::KnoxContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE0860;
  if (*(this + 408) == 1)
  {
  }

  v8 = (this + 448);
  std::vector<amber::KnoxContainer::Update>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::destroy(this + 424, *(this + 54));
  std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::destroy(this + 384, *(this + 49));
  std::mutex::~mutex(this + 5);
  *(this + 60) = 0u;
  *(this + 5) = &unk_2A1DDFDD8;
  *(this + 6) = &unk_2A1DDFE08;
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
  *(this + 268) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  amber::KnoxContainer::~KnoxContainer(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::KnoxContainer::fileUpload(amber::KnoxContainer *this, const char *a2, const char *a3, const amber::ConstMemoryView *a4)
{
  memset(&v19, 0, sizeof(v19));
  std::mutex::lock(this + 5);
  if (*(this + 55))
  {
    v9 = *(this + 53);
    v10 = *(v9 + 32);
    std::string::operator=(&v19, (v9 + 40));
    std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::erase(this + 53, v9);
    std::mutex::unlock(this + 5);
    v18[0] = v18;
    v18[1] = v18;
    v18[2] = 0;
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v19.__r_.__value_.__r.__words[0];
    }

    if ((amber::HTTPContext::httpPerformBase(*(this + 1), 2, v11, v18, a4, 0, 0, &amber::HTTPContext::FullRange, 1u) & 0x80000000) == 0)
    {
      std::__list_imp<std::string>::clear(v18);
      std::mutex::lock(this + 5);
      v13 = *(this + 57);
      if (v13 >= *(this + 58))
      {
        v14 = std::vector<amber::KnoxContainer::Update>::__emplace_back_slow_path<>(this + 56);
      }

      else
      {
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v14 = (v13 + 4);
      }

      *(this + 57) = v14;
      v16 = *(a4 + 2);
      *(v14 - 64) = v10;
      *(v14 - 56) = v16;
      MEMORY[0x29C25BF00](v14 - 48, a2);
      MEMORY[0x29C25BF00](v14 - 24, a3);
      std::mutex::unlock(this + 5);
      v15 = 0;
      goto LABEL_13;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "fileUpload", 0x48, 0, "upload failed", v12);
    std::__list_imp<std::string>::clear(v18);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "fileUpload", 0x39, 0, "no available upload slots", v8);
    std::mutex::unlock(this + 5);
  }

  v15 = 0xFFFFFFFFLL;
LABEL_13:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_29696227C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::__list_imp<std::string>::clear(&a11);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContainer::fileDownload(std::mutex *this, char *a2, amber::Buffer *a3)
{
  memset(&v22, 0, sizeof(v22));
  v6 = amber::realTime(this);
  v7 = 0;
  while (1)
  {
    std::mutex::lock(this + 5);
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v9 = std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::find<std::string>(&this[6], __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (this[6].__m_.__opaque == v9)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "fileDownload", 0x65, 0, "invalid file digest", v8);
      std::mutex::unlock(this + 5);
      goto LABEL_21;
    }

    if (*(v9 + 64) + 12000.0 > v6)
    {
      std::string::operator=(&v22, (v9 + 72));
    }

    std::mutex::unlock(this + 5);
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      break;
    }

    if (v7)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "fileDownload", 0x6A, 0, "could not resolve file URL", v10);
      goto LABEL_21;
    }

    v7 = 1;
    if ((amber::KnoxContainer::decryptionComponents(this, 0) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "fileDownload", 0x6B, 0, "decryption-components", v12);
LABEL_21:
      v17 = 0xFFFFFFFFLL;
      goto LABEL_22;
    }
  }

  __p[0] = __p;
  __p[1] = __p;
  v21 = 0;
  v13 = *this->__m_.__opaque;
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v22;
  }

  else
  {
    v14 = v22.__r_.__value_.__r.__words[0];
  }

  v19[1] = 0;
  v19[2] = 0;
  v19[0] = &off_2A1DDFC68;
  v16 = amber::HTTPContext::httpPerformBase(v13, 1, v14, __p, v19, a3, 0, &amber::HTTPContext::FullRange, 1u);
  if (v16 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "fileDownload", 0x73, 0, "download failed", v15);
  }

  std::__list_imp<std::string>::clear(__p);
  v17 = (v16 >> 31);
LABEL_22:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_29696250C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__list_imp<std::string>::clear(&a13);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContainer::decryptionComponents(std::mutex *this, char a2)
{
  v44 = *MEMORY[0x29EDCA608];
  memset(&__str, 0, sizeof(__str));
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = amber::realTime(this);
  v41[0] = xmmword_296A14210;
  memset(&v41[1], 0, 48);
  v42 = 0;
  v43.__cv_.__sig = 1018212795;
  memset(v43.__cv_.__opaque, 0, sizeof(v43.__cv_.__opaque));
  std::mutex::lock(this + 5);
  sig = this[6].__m_.__sig;
  v29 = this;
  opaque = this[6].__m_.__opaque;
  if (sig != this[6].__m_.__opaque)
  {
    v13 = 0;
    do
    {
      std::pair<std::string const,amber::KnoxContainer::File>::pair[abi:ne200100](&v30, sig + 2);
      if ((a2 & 1) != 0 || v31 + 12000.0 <= v4)
      {
        ++v13;
      }

      if (v33 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      v14 = *(sig + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(sig + 2);
          v16 = *v15 == sig;
          sig = v15;
        }

        while (!v16);
      }

      sig = v15;
    }

    while (v15 != opaque);
    if (v13)
    {
      v17 = v29[6].__m_.__sig;
      operator new();
    }
  }

  v18 = v34;
  v19 = v35;
  if (v34 != v35)
  {
    do
    {
      v20 = *v18;
      if (*v18)
      {
        amber::Buffer::~Buffer((v20 + 104), v5, v6, v7, v8, v9, v10);
        amber::Buffer::~Buffer(v20, v21, v22, v23, v24, v25, v26);
        MEMORY[0x29C25C000]();
      }

      ++v18;
    }

    while (v18 != v19);
  }

  std::mutex::unlock(v29 + 5);
  std::condition_variable::~condition_variable(&v43);
  std::mutex::~mutex((v41 + 8));
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  result = 0;
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296963208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::mutex *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  amber::JSONInputStream::~JSONInputStream(&a24);
  std::mutex::unlock(a14 + 5);
  std::condition_variable::~condition_variable((v71 - 168));
  std::mutex::~mutex(((v71 - 240) | 8));
  if (__p)
  {
    a58 = __p;
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContainer::patch(std::mutex *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v36[0] = &unk_2A1DDFD28;
  v36[3] = 0;
  v36[1] = off_2A1DDFD48;
  v36[2] = 0;
  v36[6] = 0;
  v36[4] = &off_2A1DDFDA8;
  v36[5] = 0;
  v36[7] = &off_2A1DDFC68;
  v37 = 0u;
  *v38 = 0u;
  v39 = 1;
  v40 = 0;
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
  std::mutex::lock(this + 5);
  if (this[6].__m_.__opaque[16])
  {
    v3 = *&this[6].__m_.__opaque[32];
    v4 = &this[6].__m_.__opaque[40];
    if (v3 != &this[6].__m_.__opaque[40])
    {
      do
      {
        v29 = *(v3 + 4);
        if (v3[63] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v3 + 5), *(v3 + 6));
        }

        else
        {
          __p = *(v3 + 40);
        }

        v5 = *this[7].__m_.__opaque;
        if (v5 >= *&this[7].__m_.__opaque[8])
        {
          v6 = std::vector<amber::KnoxContainer::Update>::__emplace_back_slow_path<>(&this[7].__m_.__sig);
        }

        else
        {
          v5[2] = 0u;
          v5[3] = 0u;
          v6 = (v5 + 4);
          *v5 = 0u;
          v5[1] = 0u;
        }

        *this[7].__m_.__opaque = v6;
        *(v6 - 64) = v29;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = *(v3 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v3 + 2);
            v9 = *v8 == v3;
            v3 = v8;
          }

          while (!v9);
        }

        v3 = v8;
      }

      while (v8 != v4);
    }

    std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::destroy(&this[6].__m_.__opaque[32], *&this[6].__m_.__opaque[40]);
    *&this[6].__m_.__opaque[40] = 0;
    *&this[6].__m_.__opaque[48] = 0;
    *&this[6].__m_.__opaque[32] = v4;
    amber::Buffer::resize(v31, 0, v10, v11, v12, v13, v14);
    amber::JSONOutputStream::JSONOutputStream(&v29, v31);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "patch", 0x274, 0, "invalid container state", v2);
  std::mutex::unlock(this + 5);
  amber::Buffer::~Buffer(v31, v15, v16, v17, v18, v19, v20);
  amber::Buffer::~Buffer(v36, v21, v22, v23, v24, v25, v26);
  v27 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_296963DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::mutex::unlock(v64 + 5);
  amber::Buffer::~Buffer(&a64, v66, v67, v68, v69, v70, v71);
  amber::Buffer::~Buffer(&STACK[0x220], v72, v73, v74, v75, v76, v77);
  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContainer::getAttribute(amber::KnoxContainer *this, amber::BaseObject *a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  v9 = a2;
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp";
    v15 = "getAttribute";
    v16 = "invalid attribute encoding";
    v17 = 871;
LABEL_8:
    amber::log(2, v14, v15, v17, 0, v16, v11, v23, v24);
    return 0xFFFFFFFFLL;
  }

  if (v9 == 901)
  {
    v19 = (this + 16);
    v20 = *(this + 39);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v20 = *(this + 3);
      if (!v20)
      {
        return 0xFFFFFFFFLL;
      }

      v19 = *v19;
    }

    else if (!*(this + 39))
    {
      return 0xFFFFFFFFLL;
    }

    v26 = &off_2A1DDFC68;
    v27 = v19;
    v28 = v20;
    if ((v20 & 0x8000000000000000) != 0 || !v19)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v11);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    *a5 = v20;
    v21 = *(a4 + 2);
    if (v21)
    {
      if (v21 < v20)
      {
        v23 = v20;
        v24 = *(a4 + 2);
        goto LABEL_20;
      }

      memcpy(*(a4 + 1), v19, v20);
    }

    return 0;
  }

  if (v9 != 902)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(this + 50);
  v25 = v12;
  v26 = &off_2A1DDFC68;
  v27 = &v25;
  v28 = 8;
  *a5 = 8;
  v13 = *(a4 + 2);
  if (!v13)
  {
    return 0;
  }

  if (v13 <= 7)
  {
    v23 = 8;
    v24 = *(a4 + 2);
LABEL_20:
    v14 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././BaseObject.hpp";
    v15 = "loadAttribute";
    v16 = "insufficient capacity, expected: %zu, actual: %zu";
    v17 = 19;
    goto LABEL_8;
  }

  result = 0;
  **(a4 + 1) = v12;
  return result;
}

uint64_t amber::KnoxContainer::setAttribute(amber::KnoxContainer *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "setAttribute", 0x379, 0, "invalid attribute encoding", v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t AmberKnoxContainerOpenNew(amber::KnoxContainer *a1, uint64_t a2, amber::KnoxContext *a3, const amber::KnoxUploadAttributes *a4)
{
  *v9 = &unk_2A1DE1008;
  *v10 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *__p = 0u;
  v14 = 0;
  v15 = -1;
  if ((amber::fromAmberObject(v9, a2) & 0x80000000) == 0)
  {
    amber::KnoxContainer::openNew(a1, a3, v9, a4);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxContainer.cpp", "AmberKnoxContainerOpenNew", 0x389, 0, "invalid upload attributes", v7);
  *v9 = &unk_2A1DE1008;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(v10[0]);
  }

  amber::JSONCodable::~JSONCodable(v9);
  return 0;
}

void sub_29696429C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::KnoxUploadAttributes::~KnoxUploadAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxContainerClose(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberKnoxContainerFileUpload(amber::KnoxContainer *a1, const char *a2, const char *a3, void *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::ProxyBuffer::ProxyBuffer(v21, a4, a5, a4, a5, a6, a7);
  amber::Buffer::constBuf(v21, v10, v24);
  amber::ConstMemoryView::view(v24, v22, v23 - v22, v11, v20);
  v12 = amber::KnoxContainer::fileUpload(a1, a2, a3, v20);
  amber::Buffer::~Buffer(v21, v13, v14, v15, v16, v17, v18);
  return v12;
}

void sub_2969643C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

void std::__list_imp<std::string>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

std::string *std::pair<std::string const,amber::KnoxContainer::File>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
    *&this[1].__r_.__value_.__r.__words[2] = v5;
  }

  return this;
}

void sub_29696450C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void amber::KnoxContainer::Update::~Update(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void amber::KnoxUploadAttributes::~KnoxUploadAttributes(amber::KnoxUploadAttributes *this)
{
  *this = &unk_2A1DE1008;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  amber::JSONCodable::~JSONCodable(this);
}

{
  *this = &unk_2A1DE1008;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  amber::JSONCodable::~JSONCodable(this);
}

{
  *this = &unk_2A1DE1008;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  amber::JSONCodable::~JSONCodable(this);

  JUMPOUT(0x29C25C000);
}

double amber::ProxyBuffer::ProxyBuffer(amber::ProxyBuffer *this, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *&v9 = a2;
  *(&v9 + 1) = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = off_2A1DDFD48;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = &off_2A1DDFDA8;
  *(this + 7) = &off_2A1DDFC68;
  result = *&v9;
  *(this + 4) = v9;
  *(this + 10) = 0;
  *(this + 11) = a3;
  *(this + 48) = 0;
  *(this + 98) = 1;
  *this = &unk_2A1DE08A8;
  return result;
}

void amber::ProxyBuffer::~ProxyBuffer(amber::ProxyBuffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::~Buffer(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

void std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,amber::KnoxContainer::File>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,amber::KnoxContainer::File>,0>(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::vector<amber::KnoxContainer::Update>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
        std::allocator<amber::KnoxContainer::Update>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  operator delete(a2);
  return v3;
}

uint64_t std::vector<amber::KnoxContainer::Update>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = (a1[1] - *a1) >> 6;
  v2 = v1 + 1;
  if ((v1 + 1) >> 58)
  {
    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  v4 = a1[2] - *a1;
  if (v4 >> 5 > v2)
  {
    v2 = v4 >> 5;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFC0)
  {
    v5 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amber::KnoxContainer::Update>>(a1, v5);
  }

  v6 = (v1 << 6);
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  *&v15 = (v1 << 6) + 64;
  v7 = a1[1];
  v8 = (v1 << 6) + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::KnoxContainer::Update>,amber::KnoxContainer::Update*>(a1, *a1, v7, v6 + *a1 - v7);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<amber::KnoxContainer::Update>::~__split_buffer(&v13);
  return v12;
}

void sub_296964A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<amber::KnoxContainer::Update>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::KnoxContainer::Update>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::KnoxContainer::Update>,amber::KnoxContainer::Update*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 16) = v8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<amber::KnoxContainer::Update>::destroy[abi:ne200100](a1, v5);
      v5 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<amber::KnoxContainer::Update>,amber::KnoxContainer::Update*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<amber::KnoxContainer::Update>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 39) < 0)
  {
    v3 = *(a2 + 16);

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<amber::KnoxContainer::Update>,amber::KnoxContainer::Update*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<amber::KnoxContainer::Update>,amber::KnoxContainer::Update*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<amber::KnoxContainer::Update>,amber::KnoxContainer::Update*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 64;
      std::allocator<amber::KnoxContainer::Update>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<amber::KnoxContainer::Update>::~__split_buffer(void **a1)
{
  std::__split_buffer<amber::KnoxContainer::Update>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<amber::KnoxContainer::Update>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    std::allocator<amber::KnoxContainer::Update>::destroy[abi:ne200100](v4, i - 64);
  }
}

uint64_t std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void *std::__tree<std::__value_type<unsigned long long,std::string>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::string>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,amber::KnoxContainer::File>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::KnoxContainer::File>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::KnoxContainer::File>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,amber::KnoxContainer::File>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,amber::KnoxContainer::File>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,amber::KnoxContainer::File>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t amber::SharedBlockCache::create(amber::SharedBlockCache *this, uint64_t a2)
{
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v3 = *__error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "create", 0xAB, v3, "invalid block size: %u", v4, a2);
  }

  else
  {
    if (!fstat(this, &v8) && (v8.st_mode & 0xF000) == 0x4000)
    {
      operator new();
    }

    v5 = *__error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "create", 0xB0, v5, "invalid directory", v6);
  }

  return 0;
}

void std::vector<amber::SharedBlockCache::WriteTask>::resize(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a1[1];
  v9 = (v8 - *a1) >> 7;
  if (a2 <= v9)
  {
    if (a2 < v9)
    {
      v11 = *a1 + (a2 << 7);
      if (v8 != v11)
      {
        do
        {
          v12 = v8 - 128;
          amber::Buffer::~Buffer((v8 - 120), a2, a3, a4, a5, a6, a7);
          v8 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v10 = a2 - v9;

    std::vector<amber::SharedBlockCache::WriteTask>::__append(a1, v10);
  }
}

void amber::SharedBlockCache::~SharedBlockCache(amber::SharedBlockCache *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE08E0;
  *(this + 1) = &unk_2A1DE0918;
  if (*(this + 64))
  {
    amber::SharedBlockCache::terminate(this);
  }

  v8 = *(this + 12);
  v9 = *(this + 13);
  while (v8 != v9)
  {
    if (*v8)
    {
      (*(**v8 + 8))(*v8);
    }

    ++v8;
  }

  v11 = (this + 488);
  std::vector<amber::SharedBlockCache::WriteTask>::__destroy_vector::operator()[abi:ne200100](&v11, a2, a3, a4, a5, a6, a7);
  amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::~SharedQueue(this + 336);
  amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::~SharedQueue(this + 184);
  std::mutex::~mutex((this + 120));
  v10 = *(this + 12);
  if (v10)
  {
    *(this + 13) = v10;
    operator delete(v10);
  }

  v11 = (this + 72);
  std::vector<amber::SharedBlockCache::Client>::__destroy_vector::operator()[abi:ne200100](&v11);
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::destroy(this + 48, *(this + 7));
}

{
  amber::SharedBlockCache::~SharedBlockCache(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

void amber::SharedBlockCache::terminate(amber::SharedBlockCache *this)
{
  v2 = 0;
  v3 = 0;
  do
  {
    amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 184, &v3);
    ++v2;
  }

  while (v2 < (*(this + 62) - *(this + 61)) >> 7);
  *v3 = -1;
  amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::insertLast(this + 336);
}

void non-virtual thunk toamber::SharedBlockCache::~SharedBlockCache(amber::SharedBlockCache *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::SharedBlockCache::~SharedBlockCache((this - 8), a2, a3, a4, a5, a6, a7);
}

{
  amber::SharedBlockCache::~SharedBlockCache((this - 8), a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedBlockCache::getAttribute(amber::SharedBlockCache *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "getAttribute", 0xE5, 0, "invalid attribute encoding %u, %u", v16, a2, a3);
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2 > 1404)
  {
    if (a2 > 1406)
    {
      if (a2 == 1407)
      {
        v39 = *(this + 12);
        v40 = *(this + 13);
        if (v39 == v40)
        {
          goto LABEL_43;
        }

        v20 = 0;
        do
        {
          v41 = *v39++;
          v20 += *(*(v41 + 48) + 24);
        }

        while (v39 != v40);
      }

      else
      {
        if (a2 != 1408)
        {
          return result;
        }

        v28 = *(this + 12);
        v29 = *(this + 13);
        if (v28 == v29)
        {
          goto LABEL_43;
        }

        v20 = 0;
        do
        {
          v30 = *v28++;
          v20 += *(*(v30 + 88) + 24);
        }

        while (v28 != v29);
      }
    }

    else if (a2 == 1405)
    {
      v33 = *(this + 12);
      v34 = *(this + 13);
      if (v33 == v34)
      {
        goto LABEL_43;
      }

      v20 = 0;
      do
      {
        v35 = *v33++;
        v20 += *(v35 + 120);
      }

      while (v33 != v34);
    }

    else
    {
      v22 = *(this + 12);
      v23 = *(this + 13);
      if (v22 == v23)
      {
        goto LABEL_43;
      }

      v20 = 0;
      do
      {
        v24 = *v22++;
        v20 += *(v24 + 128);
      }

      while (v22 != v23);
    }
  }

  else
  {
    if (a2 <= 1402)
    {
      if (a2 == 1401)
      {
        LODWORD(v45) = *(this + 8);
        v42 = &off_2A1DDFC68;
        v43 = &v45;
        v44 = 4;
        *a5 = 4;
        v31 = *(a4 + 2);
        if (v31)
        {
          if (v31 <= 3)
          {
            v32 = 4;
LABEL_47:
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v16, v32, v31);
            return 0xFFFFFFFFLL;
          }

          return amber::copy(a4, &v42, v12, v13, v14, v15, v16);
        }

        return 0;
      }

      if (a2 != 1402)
      {
        return result;
      }

      v18 = *(this + 12);
      v19 = *(this + 13);
      if (v18 != v19)
      {
        v20 = 0;
        do
        {
          v21 = *v18++;
          v20 += *(v21 + 96);
        }

        while (v18 != v19);
        goto LABEL_44;
      }

LABEL_43:
      v20 = 0;
      goto LABEL_44;
    }

    if (a2 == 1403)
    {
      v36 = *(this + 12);
      v37 = *(this + 13);
      if (v36 == v37)
      {
        goto LABEL_43;
      }

      v20 = 0;
      do
      {
        v38 = *v36++;
        v20 += *(v38 + 104);
      }

      while (v36 != v37);
    }

    else
    {
      v25 = *(this + 12);
      v26 = *(this + 13);
      if (v25 == v26)
      {
        goto LABEL_43;
      }

      v20 = 0;
      do
      {
        v27 = *v25++;
        v20 += *(v27 + 112);
      }

      while (v25 != v26);
    }
  }

LABEL_44:
  v45 = v20;
  v42 = &off_2A1DDFC68;
  v43 = &v45;
  v44 = 8;
  *a5 = 8;
  v31 = *(a4 + 2);
  if (!v31)
  {
    return 0;
  }

  if (v31 <= 7)
  {
    v32 = 8;
    goto LABEL_47;
  }

  return amber::copy(a4, &v42, v12, v13, v14, v15, v16);
}

uint64_t amber::SharedBlockCache::barrier(amber::SharedBlockCache *this)
{
  v6 = 0;
  if (*(this + 62) != *(this + 61))
  {
    v2 = 0;
    do
    {
      amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 184, &v6);
      ++v2;
    }

    while (v2 < (*(this + 62) - *(this + 61)) >> 7);
  }

  for (i = 0; i != 128; i += 8)
  {
    result = amber::SharedBlockCache::Shard::barrier(*(*(this + 12) + i));
  }

  if (*(this + 62) != *(this + 61))
  {
    v5 = *(this + 61);
    amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::insertFirst(this + 184);
  }

  return result;
}

uint64_t amber::SharedBlockCache::Shard::barrier(uint64_t this)
{
  v1 = this;
  v2 = *(this + 440);
  v3 = *(this + 448);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = 0;
      this = amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(v1 + 136, &v5);
      ++v4;
      v2 = *(v1 + 440);
      v3 = *(v1 + 448);
    }

    while (v4 < 0xEEEEEEEEEEEEEEEFLL * ((v3 - v2) >> 3));
  }

  if (v3 != v2)
  {
    v5 = v2;
    amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::insertFirst(v1 + 136);
  }

  return this;
}

uint64_t amber::SharedBlockCache::registerClient(amber::SharedBlockCache *this, const char *a2)
{
  v51[35] = *MEMORY[0x29EDCA608];
  std::mutex::lock((this + 120));
  v51[0] = &unk_2A1DDFDD8;
  v51[1] = &unk_2A1DDFE08;
  memset(&v51[2], 0, 260);
  v4 = strlen(a2);
  if (!v4)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "registerClient", 0x12B, 0, "empty tag", v9);
LABEL_28:
    v21 = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v46 = &off_2A1DDFC68;
  v47 = a2;
  v48 = v4;
  if (!a2 || (v4 & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v9);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if ((amber::digest_SHA256(v51, &v46, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "registerClient", 0x12C, 0, "digest tag", v14);
    goto LABEL_28;
  }

  v15 = std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::find<amber::CryptoBlobBase<256u>>(this + 48, v51, v10, v11, v12, v13, v14);
  if ((this + 56) == v15)
  {
    v22 = *(this + 9);
    v23 = *(this + 10);
    if (*(this + 40) == 1)
    {
      if (v23 == v22)
      {
        v22 = *(this + 10);
        goto LABEL_26;
      }

      v21 = 0;
      v24 = 0x8E38E38E38E38E39 * ((v23 - v22) >> 5);
      if (v24 <= 1)
      {
        v24 = 1;
      }

      v25 = *(this + 9);
      while (*v25)
      {
        v25 += 72;
        if (v24 == ++v21)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v26 = 0x8E38E38E38E38E39 * ((v23 - v22) >> 5);
      if (v26 < 0x10000)
      {
        goto LABEL_26;
      }

      v21 = 0;
      v27 = *(this + 9);
      while (*v27)
      {
        v27 += 72;
        if (v26 == ++v21)
        {
          goto LABEL_26;
        }
      }

      amber::SharedBlockCache::clearClient(this, v21, v16, v17, v18, v19, v20);
    }

    if (v21 != -1)
    {
      goto LABEL_34;
    }

    v22 = *(this + 9);
    v23 = *(this + 10);
LABEL_26:
    v21 = 954437177 * ((v23 - v22) >> 5);
    if (v21 >= 0x10000)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "registerClient", 0x151, 0, "max client count reached", v20);
      goto LABEL_28;
    }

    LODWORD(v46) = 0;
    v47 = &unk_2A1DDFDD8;
    v48 = &unk_2A1DDFE08;
    memset(v49, 0, sizeof(v49));
    v50 = 0;
    if (v23 >= *(this + 11))
    {
      v30 = std::vector<amber::SharedBlockCache::Client>::__emplace_back_slow_path<amber::SharedBlockCache::Client const&>(this + 72, &v46, v16, v17, v18, v19, v20);
    }

    else
    {
      *v23 = 0;
      amber::CryptoBlobBase<256u>::CryptoBlobBase((v23 + 8), v49 + 4, 0, v17, v18, v19, v20);
      v30 = (v23 + 288);
      *(this + 10) = v23 + 288;
    }

    *(this + 10) = v30;
LABEL_34:
    v31 = *(this + 9) + 288 * v21;
    *v31 = 1;
    *(v31 + 24) = v51[2];
    v32 = *(&v51[12] + 4);
    v33 = *(&v51[14] + 4);
    v34 = *(&v51[16] + 4);
    *(v31 + 92) = *(&v51[10] + 4);
    *(v31 + 140) = v34;
    *(v31 + 124) = v33;
    *(v31 + 108) = v32;
    v35 = *(&v51[20] + 4);
    v36 = *(&v51[22] + 4);
    v37 = *(&v51[24] + 4);
    *(v31 + 156) = *(&v51[18] + 4);
    *(v31 + 204) = v37;
    *(v31 + 188) = v36;
    *(v31 + 172) = v35;
    v38 = *(&v51[32] + 4);
    v39 = *(&v51[28] + 4);
    v40 = *(&v51[30] + 4);
    *(v31 + 220) = *(&v51[26] + 4);
    *(v31 + 268) = v38;
    *(v31 + 252) = v40;
    *(v31 + 236) = v39;
    v41 = *(&v51[2] + 4);
    v42 = *(&v51[4] + 4);
    v43 = *(&v51[6] + 4);
    *(v31 + 76) = *(&v51[8] + 4);
    *(v31 + 60) = v43;
    *(v31 + 44) = v42;
    *(v31 + 28) = v41;
    v46 = v51;
    *(std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::__emplace_unique_key_args<amber::CryptoBlobBase<256u>,std::piecewise_construct_t const&,std::tuple<amber::CryptoBlobBase<256u> const&>,std::tuple<>>(this + 48, v51, &std::piecewise_construct, &v46, &v45, v19, v20) + 312) = v21;
    goto LABEL_29;
  }

  v21 = v15[78];
  ++*(*(this + 9) + 288 * v21);
LABEL_29:
  std::mutex::unlock((this + 120));
  v28 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t amber::SharedBlockCache::clearClient(amber::SharedBlockCache *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 9);
  if (0x8E38E38E38E38E39 * ((*(this + 10) - v7) >> 5) > a2 && (v9 = a2, *(v7 + 288 * a2) < 1))
  {
    amber::SharedBlockCache::barrier(this);
    v10 = amber::SharedBlockCache::purgeClientData(this, a2);
    if ((v10 & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "clearClient", 0x1D4, 0, "failed to remove client data", v17);
    }

    v18 = 9 * v9;
    std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,unsigned int>>>::__erase_unique<amber::CryptoBlobBase<256u>>(this + 6, *(this + 9) + 32 * v18 + 8, v13, v14, v15, v16, v17);
    v19 = (*(this + 9) + 32 * v18);
    *v19 = 0;
    v19[6] = 0;
    v21[0] = &off_2A1DDFDA8;
    v21[1] = v19 + 7;
    v21[2] = 256;
    amber::MutableMemoryView::operator+(v21, 0, v20, v22);
    bzero(v22[1], v22[2]);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "clearClient", 0x1CE, 0, "invalid/referenced client ID", a7);
    return 0xFFFFFFFFLL;
  }

  return v10;
}

uint64_t amber::SharedBlockCache::unregisterClient(amber::SharedBlockCache *this, unsigned int a2)
{
  std::mutex::lock((this + 120));
  if (a2 != -1)
  {
    v9 = *(this + 9);
    if (0x8E38E38E38E38E39 * ((*(this + 10) - v9) >> 5) <= a2)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "unregisterClient", 0x160, 0, "invalid client id", v8);
      v12 = 0xFFFFFFFFLL;
      goto LABEL_8;
    }

    v10 = 288 * a2;
    v11 = *(v9 + v10) - 1;
    *(v9 + v10) = v11;
    if (!v11 && *(this + 40) == 1)
    {
      amber::SharedBlockCache::clearClient(this, a2, v4, v5, v6, v7, v8);
    }
  }

  v12 = 0;
LABEL_8:
  std::mutex::unlock((this + 120));
  return v12;
}

uint64_t amber::SharedBlockCache::read(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, const char *a7)
{
  v33 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 8);
  if (v7 >= 0x1000000000001)
  {
    v8 = "invalid block range";
    v9 = 364;
LABEL_11:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "read", v9, 0, v8, a7);
    v25 = -1;
    goto LABEL_14;
  }

  if ((amber::NBitVector<1u>::assignZero(a6, v7 - *a3, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v8 = "malloc";
    v9 = 367;
    goto LABEL_11;
  }

  v16 = 0;
  v32.__m_.__sig = 850045863;
  memset(v32.__m_.__opaque, 0, sizeof(v32.__m_.__opaque));
  v29[0] = xmmword_296A14210;
  memset(&v29[1], 0, 48);
  v30 = 0;
  v31.__cv_.__sig = 1018212795;
  memset(v31.__cv_.__opaque, 0, sizeof(v31.__cv_.__opaque));
  v28 = 0;
  do
  {
    amber::SharedBlockCache::Shard::read(*(*(a1 + 96) + v16), a2, a3, a4, a5, a6, &v32, v29, &v28);
    v16 += 8;
  }

  while (v16 != 128);
  v17 = 16;
  do
  {
    amber::Sem::acquire(v29);
    --v17;
  }

  while (v17);
  if (atomic_load(&v28))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "read", 0x178, 0, "read failed", v23);
    v25 = -1;
  }

  else
  {
    v25 = amber::popcount(a6, v18, v19, v20, v21, v22, v23);
  }

  std::condition_variable::~condition_variable(&v31);
  std::mutex::~mutex((v29 + 8));
  std::mutex::~mutex(&v32);
LABEL_14:
  v26 = *MEMORY[0x29EDCA608];
  return v25;
}

void sub_2969668EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::mutex *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::condition_variable::~condition_variable((v26 + 72));
  std::mutex::~mutex((v26 | 8));
  std::mutex::~mutex(&a26);
  _Unwind_Resume(a1);
}

uint64_t amber::NBitVector<1u>::assignZero(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 < 0x100000000000001)
  {
    v9 = (a2 & 0x1FFFFFFFFFFFFF0) + 16;
    if ((a2 & 0xF) == 0)
    {
      v9 = a2;
    }

    if ((amber::BufferProtocol<amber::Buffer>::assignZero((a1 + 16), (v9 >> 3), a3, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 8) = a2;
      return result;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././NBitVector.hpp", "assignZero", 0x133, 0, "invalid block count", a7);
  }

  return 0xFFFFFFFFLL;
}

void amber::SharedBlockCache::Shard::read(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, amber::Sem *a8, atomic_uint *a9)
{
  v20 = 0;
  if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(a1 + 136, &v20) & 0x80000000) == 0)
  {
    v17 = v20;
    *v20 = 1;
    v17[1] = a2;
    *(v17 + 14) = *a3;
    if (v17 + 2 != a4)
    {
      v18 = *(a4 + 16);
      *(v17 + 2) = *(a4 + 8);
      *(v17 + 3) = v18;
    }

    *(v17 + 18) = *a5;
    *(v17 + 5) = 0;
    *(v17 + 6) = 0;
    *(v17 + 11) = a6;
    *(v17 + 12) = a7;
    *(v17 + 13) = a8;
    *(v17 + 14) = a9;
    amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::insertLast(a1 + 288);
  }

  v19 = 0;
  atomic_compare_exchange_strong(a9, &v19, 1u);
  amber::Sem::release(a8);
}

uint64_t amber::popcount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a1 + 16, a2, a3, a4, a5, a6, a7);
  amber::Buffer::constBuf(a1 + 16, v9, &v30);
  amber::ConstMemoryView::view(&v30, *(a1 + 96), *(a1 + 104) - *(a1 + 96), v10, v28);
  if (v8 >= 8)
  {
    v14 = 0;
    v12 = 0;
    do
    {
      v27 = 0;
      v30 = &off_2A1DDFDA8;
      v31 = &v27;
      v32 = 8;
      amber::ConstMemoryView::operator+(v28, v14, v11, v26);
      if (v26[2] < 8uLL || v32 <= 7)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v11);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      *v31 = *v26[1];
      v16 = vcnt_s8(v27);
      v16.i16[0] = vaddlv_u8(v16);
      v12 += v16.u32[0];
      v13 = v14 + 8;
      v17 = v14 + 16;
      v14 += 8;
    }

    while (v17 <= v8);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v18 = v8 - v13;
  if (v8 > v13)
  {
    v19 = v29 - v13;
    if (v29 < v13)
    {
      v19 = 0;
    }

    if (v19 <= v8 + ~v13)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "operator[]", 0xE9, 0, "memory invalid range", v11);
      v25 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v25, "memory invalid range");
      __cxa_throw(v25, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v20 = (v28[1] + v13);
    do
    {
      v21 = *v20++;
      v22 = vcnt_s8(v21);
      v22.i16[0] = vaddlv_u8(v22);
      v12 += v22.u32[0];
      --v18;
    }

    while (v18);
  }

  return v12;
}

uint64_t amber::SharedBlockCache::write(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a3 + 8) < 0x1000000000001uLL)
  {
    v19 = 0;
    if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(a1 + 184, &v19) & 0x80000000) == 0)
    {
      v17 = v19;
      *v19 = a2;
      *(v17 + 7) = *a3;
      amber::Buffer::operator=((v17 + 2), a4, v13, v14, v15, v16, a7);
      amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::insertLast(a1 + 336);
    }

    v7 = "acquire write task";
    v8 = 387;
  }

  else
  {
    v7 = "invalid block range";
    v8 = 383;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "write", v8, 0, v7, a7);
  return 0xFFFFFFFFLL;
}

void amber::SharedBlockCache::run(amber::SharedBlockCache *this)
{
  v28 = *MEMORY[0x29EDCA608];
  if (*(this + 62) != *(this + 61))
  {
    *&v22[0] = *(this + 61);
    amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::insertFirst(this + 184);
  }

  v20 = 0;
  if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 336, &v20) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "run", 0x1A7, 0, "queue", v2);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "run", 0x1BA, 0, "Cache thread terminating with internal error", v16, 0, 850045863);
  }

  else if (*v20 != -1)
  {
    v3 = 0;
    v22[0] = xmmword_296A14210;
    memset(&v22[1], 0, 48);
    v23 = 0;
    v24 = 1018212795;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    v19 = 0;
    do
    {
      v4 = *(*(this + 12) + v3);
      v5 = v20;
      v6 = *v20;
      amber::Buffer::constBuf((v20 + 2), v2, v21);
      amber::ConstMemoryView::view(v21, *(v5 + 11), *(v5 + 12) - *(v5 + 11), v7, v18);
      amber::SharedBlockCache::Shard::write(v4, v6, v5 + 7, v18, v22, &v19);
      v3 += 8;
    }

    while (v3 != 128);
    v8 = 16;
    do
    {
      amber::Sem::acquire(v22);
      --v8;
    }

    while (v8);
    if (atomic_load(&v19))
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "run", 0x1B0, 0, "cache write failed (ignored)", v14);
    }

    amber::Buffer::reset((v20 + 2), v9, v10, v11, v12, v13, v14);
    amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::insertFirst(this + 184);
  }

  v17 = *MEMORY[0x29EDCA608];
}

void sub_29696708C(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 72));
  std::mutex::~mutex((v1 | 8));
  _Unwind_Resume(a1);
}

void amber::SharedBlockCache::Shard::write(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, amber::Sem *a5, atomic_uint *a6)
{
  v14 = 0;
  if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(a1 + 136, &v14) & 0x80000000) == 0)
  {
    v12 = v14;
    *v14 = 2;
    v12[1] = a2;
    *(v12 + 14) = *a3;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 10) = *(a4 + 8);
    *(v12 + 13) = a5;
    *(v12 + 14) = a6;
    amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::insertLast(a1 + 288);
  }

  v13 = 0;
  atomic_compare_exchange_strong(a6, &v13, 1u);
  amber::Sem::release(a5);
}

uint64_t amber::Buffer::reset(amber::Buffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 97) == 1)
  {
    amber::Buffer::buf(this, a7, v10);
    bzero(v10[1], v10[2]);
  }

  if (*(this + 96) == 1)
  {
    v8 = *(this + 2);
    if (v8)
    {
      free(v8);
      *(this + 2) = 0;
      *(this + 3) = 0;
    }
  }

  *(this + 10) = 0;
  *(this + 11) = 0;
  return 0;
}

uint64_t amber::SharedBlockCache::purgeClientData(amber::SharedBlockCache *this, int a2)
{
  v4 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v14.__cv_.__sig = 1018212795;
  v12[0] = xmmword_296A14210;
  memset(&v12[1], 0, 48);
  memset(v14.__cv_.__opaque, 0, sizeof(v14.__cv_.__opaque));
  v11 = 0;
  do
  {
    amber::SharedBlockCache::Shard::remove(*(*(this + 12) + v4), a2, v12, &v11);
    v4 += 8;
  }

  while (v4 != 128);
  v5 = 16;
  do
  {
    amber::Sem::acquire(v12);
    --v5;
  }

  while (v5);
  if (atomic_load(&v11))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "purgeClientData", 0x1C5, 0, "remove failed", v6);
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  std::condition_variable::~condition_variable(&v14);
  std::mutex::~mutex((v12 + 8));
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_296967300(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable((v1 + 72));
  std::mutex::~mutex((v1 | 8));
  _Unwind_Resume(a1);
}

void amber::SharedBlockCache::Shard::remove(uint64_t a1, int a2, amber::Sem *a3, atomic_uint *a4)
{
  v10 = 0;
  if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(a1 + 136, &v10) & 0x80000000) == 0)
  {
    v8 = v10;
    *v10 = 3;
    v8[1] = a2;
    *(v8 + 1) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 13) = a3;
    *(v8 + 14) = a4;
    amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::insertLast(a1 + 288);
  }

  v9 = 0;
  atomic_compare_exchange_strong(a4, &v9, 1u);
  amber::Sem::release(a3);
}

void std::vector<amber::SharedBlockCache::Shard::Command>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<amber::SharedBlockCache::Shard::Command>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 120 * a2;
  }
}

void amber::SharedBlockCache::Shard::~Shard(amber::SharedBlockCache::Shard *this)
{
  *this = &unk_2A1DE0940;
  if (*(this + 58))
  {
    amber::SharedBlockCache::Shard::terminate(this);
  }

  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 20);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) < 0)
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "~Shard", 0x220, 0, "close reported error", v5);
    }

    v6 = this + 56;
    if (*(this + 79) < 0)
    {
      v6 = *v6;
    }

    if (unlinkat(*(this + 3), v6, 0) < 0)
    {
      amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "~Shard", 0x221, 0, "unlink reported error", v7);
    }
  }

  v8 = *(this + 55);
  if (v8)
  {
    *(this + 56) = v8;
    operator delete(v8);
  }

  amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::~SharedQueue(this + 288);
  amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::~SharedQueue(this + 136);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  free(*(this + 4));
}

{
  amber::SharedBlockCache::Shard::~Shard(this);

  JUMPOUT(0x29C25C000);
}

void amber::SharedBlockCache::Shard::terminate(amber::SharedBlockCache::Shard *this)
{
  v2 = 0;
  v4 = 0;
  do
  {
    amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 136, &v4);
    ++v2;
  }

  while (v2 < 0xEEEEEEEEEEEEEEEFLL * ((*(this + 56) - *(this + 55)) >> 3));
  v3 = v4;
  *v4 = 4;
  *(v3 + 1) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 13) = 0;
  *(v3 + 14) = 0;
  amber::SharedQueue<amber::SharedBlockCache::Shard::Command *>::insertLast(this + 288);
}

uint64_t amber::SharedBlockCache::Shard::readSync(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, void *a6, char *a7)
{
  amber::NBitVector<1u>::NBitVector(v79, a6[1], a3, a4, a5, a6, a7);
  v74[0] = &unk_2A1DDFD28;
  v74[2] = 0;
  v74[3] = 0;
  v74[1] = off_2A1DDFD48;
  v74[5] = 0;
  v74[6] = 0;
  v74[4] = &off_2A1DDFDA8;
  v74[7] = &off_2A1DDFC68;
  v75 = 0u;
  v76 = 0u;
  v77 = 1;
  v78 = 0;
  v13 = *a3;
  v12 = a3[1];
  if (*a3 >= v12)
  {
LABEL_36:
    std::mutex::lock(a7);
    amber::addTo(a6, v79, v39, v40, v41, v42, v43);
    std::mutex::unlock(a7);
    v50 = 0;
    goto LABEL_41;
  }

  v14 = a2 << 48;
  while (1)
  {
    v15 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v13 | v14)) ^ ((0xC6A4A7935BD1E995 * (v13 | v14)) >> 47));
    if ((((v15 >> 47) ^ v15) & 0xF) == *(a1 + 8))
    {
      break;
    }

    v16 = v13 + 1;
LABEL_35:
    v13 = v16;
    if (v16 >= v12)
    {
      goto LABEL_36;
    }
  }

  v16 = v13 + 1;
  v81 = v13;
  v82 = (v13 + 1);
  amber::Range::shiftedLeft(&v81, *(a1 + 20), v11, &v72);
  v69 = &off_2A1DDFDA8;
  v70 = 0;
  v71 = 0;
  if (v72 >= *a5 && v73 <= a5[1])
  {
    amber::MutableMemoryView::operator+(a4, v72 - *a5, v21, &v81);
    v24 = 0;
    v70 = v82;
    v71 = v83;
  }

  else
  {
    if ((amber::Buffer::resize(v74, *(a1 + 16), v17, v18, v19, v20, v21) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "readSync", 0x296, 0, "resize aux buffer", v22, a6);
      goto LABEL_40;
    }

    amber::Buffer::buf(v74, v22, &v81);
    amber::MutableMemoryView::view(&v81, v76, *(&v76 + 1) - v76, v23, &v66);
    v70 = v67;
    v71 = v68;
    v24 = 1;
  }

  v25 = amber::BlockCache::read(*(a1 + 48), v13 | v14, &v69);
  if (v25 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "readSync", 0x29D, 0, "mem cache read", v11, a6);
    goto LABEL_40;
  }

  v29 = (a1 + 112);
  if (v25)
  {
    goto LABEL_14;
  }

  v30 = amber::BlockCache::read(*(a1 + 88), v13 | v14, &v69);
  if ((v30 & 0x80000000) == 0)
  {
    v29 = (a1 + 120);
    if (!v30)
    {
      atomic_fetch_add_explicit((a1 + 128), 1uLL, memory_order_relaxed);
LABEL_34:
      v12 = a3[1];
      goto LABEL_35;
    }

LABEL_14:
    atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
    amber::NBitVector<1u>::setValueAtIndex(v79, v13 - *a3, 1, v26, v27, v28, v11);
    if (v24)
    {
      v32 = v72;
      v31 = v73;
      if (v72 != v73)
      {
        v33 = *a5;
        v34 = a5[1];
        if (*a5 != v34)
        {
          if (v72 <= v33)
          {
            v32 = *a5;
          }

          if (v34 < v73)
          {
            v31 = a5[1];
          }

          if (v32 >= v31)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32;
          }

          if (v32 >= v31)
          {
            v31 = 0;
          }

          v36 = v31 - v35;
          if (v31 != v35)
          {
            amber::MutableMemoryView::operator+(a4, v35 - v33, v11, &v81);
            amber::MutableMemoryViewConvertible<amber::Buffer>::operator+(v74, v35 - v72, v37, &v63);
            v66 = &off_2A1DDFC68;
            v67 = v64;
            v68 = v65;
            if ((v65 & 0x8000000000000000) != 0 || !v64 && v65)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v38, a6);
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25BE90](exception, "memory invalid args");
              __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }

            if (v65 < v36 || v83 < v36)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v38, a6);
              v59 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25BE90](v59, "memory invalid range");
              __cxa_throw(v59, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }

            memcpy(v82, v64, v36);
          }
        }
      }
    }

    goto LABEL_34;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/SharedBlockCache.cpp", "readSync", 0x2A7, 0, "file cache read", v11, a6);
LABEL_40:
  v50 = 0xFFFFFFFFLL;
LABEL_41:
  amber::Buffer::~Buffer(v74, v44, v45, v46, v47, v48, v49);
  v79[0] = &unk_2A1DE0AA8;
  amber::Buffer::~Buffer(&v80, v51, v52, v53, v54, v55, v56);
  return v50;
}

void sub_296967B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40)
{
  amber::Buffer::~Buffer(&a25, a2, a3, a4, a5, a6, a7);
  a38 = &unk_2A1DE0AA8;
  amber::Buffer::~Buffer(&a40, v41, v42, v43, v44, v45, v46);
  _Unwind_Resume(a1);
}

void *amber::Range::shiftedLeft@<X0>(void *this@<X0>, unsigned int a2@<W1>, const char *a3@<X6>, unint64_t *a4@<X8>)
{
  if (a2 >= 0x40)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Range.hpp", "shiftedLeft", 0x68, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v4 = *this << a2;
  v5 = this[1] << a2;
  if (v4 >= v5)
  {
    v4 = 0;
    v5 = 0;
  }

  *a4 = v4;
  a4[1] = v5;
  return this;
}

uint64_t amber::NBitVector<1u>::setValueAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 8) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a2 >> 3;
  v9 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](a1 + 16, a2 >> 3, a3, a4, a5, a6, a7) & ~(1 << (a2 & 7)) | ((a3 & 1) << (a2 & 7));
  v15 = amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](a1 + 16, v8, v10, v11, v12, v13, v14);
  result = 0;
  *v15 = v9;
  return result;
}

uint64_t amber::MutableMemoryViewConvertible<amber::Buffer>::operator+@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  amber::Buffer::buf(a1, a3, v11);
  amber::MutableMemoryView::view(v11, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v7, v10);
  return amber::MutableMemoryView::operator+(v10, a2, v8, a4);
}

uint64_t amber::addTo(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1[1] == a2[1])
  {
    v9 = amber::ConstMemoryViewConvertible<amber::Buffer>::size((a1 + 2), a2, a3, a4, a5, a6, a7);
    amber::Buffer::constBuf((a2 + 2), v10, &v31);
    amber::ConstMemoryView::view(&v31, a2[12], a2[13] - a2[12], v11, v30);
    amber::Buffer::buf((a1 + 2), v12, &v31);
    amber::MutableMemoryView::view(&v31, a1[12], a1[13] - a1[12], v13, &v27);
    if (v9 >= 0x10)
    {
      v17 = 0;
      do
      {
        amber::ConstMemoryView::operator+(v30, v17, v14, &v31);
        if (v33 <= 0xF)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "operator unsigned char const * __attribute__((ext_vector_type(16)))", 0xE3, 0, "memory invalid range", v18);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid range");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v26 = *v32;
        amber::MutableMemoryView::operator+(&v27, v17, v18, &v31);
        if (v33 <= 0xF)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "operator unsigned char const * __attribute__((ext_vector_type(16)))", 0xF1, 0, "memory invalid range", v19);
          v23 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v23, "memory invalid range");
          __cxa_throw(v23, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v25 = *v32;
        amber::MutableMemoryView::operator+(&v27, v17, v19, &v31);
        if (v33 <= 0xF)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "operator unsigned char * __attribute__((ext_vector_type(16)))", 0xF1, 0, "memory invalid range", v14);
          v24 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v24, "memory invalid range");
          __cxa_throw(v24, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        *v32 = vorrq_s8(v25, v26);
        v15 = v17 + 16;
        v20 = v17 + 32;
        v17 += 16;
      }

      while (v20 <= v9);
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v9)
    {
      while (v30[2] > v15)
      {
        if (v29 <= v15)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "operator[]", 0xF7, 0, "memory invalid range", v14);
          v21 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v21, "memory invalid range");
          goto LABEL_18;
        }

        *(v28 + v15) |= *(v30[1] + v15);
        if (v9 == ++v15)
        {
          return 0;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "operator[]", 0xE9, 0, "memory invalid range", v14);
      v21 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v21, "memory invalid range");
LABEL_18:
      __cxa_throw(v21, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././NBitVector.hpp", "addTo", 0x262, 0, "size mismatch", a7);
    return 0xFFFFFFFFLL;
  }
}