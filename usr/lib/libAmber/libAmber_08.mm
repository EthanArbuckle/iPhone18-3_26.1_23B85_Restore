ssize_t amber::NetworkEndpoint::write(amber::NetworkEndpoint *this, const amber::ConstMemoryView *a2)
{
  result = write(*(this + 2), *(a2 + 1), *(a2 + 2));
  if (result < 0)
  {
    if (*__error() == 35 || *__error() == 35)
    {
      return 0;
    }

    else
    {
      v3 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "write", 0x1F1, *v3, "write", v4);
      return -1;
    }
  }

  return result;
}

uint64_t amber::NetworkEndpoint::readExpected(amber::NetworkEndpoint *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v18 = &off_2A1DDFDA8;
  v19 = v7;
  v20 = v8;
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    if (!amber::ConstMemoryViewConvertible<amber::Buffer>::empty(this + 216, a2, a3, a4, a5, a6, a7))
    {
      goto LABEL_7;
    }

    if (*(this + 12) == 1)
    {
      break;
    }

    v11 = amber::NetworkEndpoint::selectForReading(this, 0xC350u, a3, a4, a5, a6, a7);
    if (v11 < 0)
    {
      v14 = "select";
      v15 = 519;
      goto LABEL_18;
    }

    if (v11)
    {
LABEL_7:
      v12 = amber::NetworkEndpoint::read(this, &v18, a3, a4, a5, a6, a7);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v10 = -1;
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "readExpected", 0x20B, 0, "NetworkEndpoint::read: %zd", a7, -1, v18);
        return v10;
      }

      v13 = v20 - v12;
      if (v20 < v12)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "increment", 0x122, 0, "memory invalid range", a7);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v19 += v12;
      v20 -= v12;
      v10 += v12;
      if (!v13)
      {
        return v10;
      }
    }

    else if (!v20)
    {
      return v10;
    }
  }

  if (!v10)
  {
    return -1;
  }

  v14 = "truncated read";
  v15 = 515;
LABEL_18:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "readExpected", v15, 0, v14, a7);
  return -1;
}

uint64_t amber::NetworkEndpoint::writeExpected(amber::NetworkEndpoint *this, const amber::ConstMemoryView *a2)
{
  v14 = &off_2A1DDFC68;
  v15 = *(a2 + 8);
  if (!*(&v15 + 1))
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    while (1)
    {
      v4 = amber::NetworkEndpoint::write(this, &v14);
      if (!v4)
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        v3 = -1;
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "writeExpected", 0x21F, 0, "NetworkEndpoint::write: %zd", v9, -1, v14);
        return v3;
      }

      v10 = *(&v15 + 1) - v4;
      if (*(&v15 + 1) < v4)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", v9);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      *&v15 = v15 + v4;
      *(&v15 + 1) -= v4;
      v3 += v4;
      if (!v10)
      {
        return v3;
      }
    }

    if ((amber::NetworkEndpoint::selectForWriting(this, 0xC350u, v5, v6, v7, v8, v9) & 0x80000000) != 0)
    {
      break;
    }

    if (!*(&v15 + 1))
    {
      return v3;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "writeExpected", 0x21C, 0, "select", v11);
  return -1;
}

uint64_t amber::NetworkEndpoint::writeBuffer(amber::NetworkEndpoint *this, const amber::Buffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::ConstMemoryViewConvertible<amber::Buffer>::empty(a2, a2, a3, a4, a5, a6, a7))
  {
    return 0;
  }

  amber::Buffer::constBuf(a2, v9, v21);
  amber::ConstMemoryView::view(v21, *(a2 + 10), *(a2 + 11) - *(a2 + 10), v10, v20);
  if ((amber::NetworkEndpoint::writeExpected(this, v20) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v18 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v11, v12, v13, v14, v15, v16);
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "writeBuffer", 0x22A, 0, "NetworkEndpoint::writeExpected: %zu", v19, v18);
  return 0xFFFFFFFFLL;
}

uint64_t amber::NetworkEndpoint::readBufferToSize(amber::NetworkEndpoint *this, amber::Buffer *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, a2, a3, a4, a5, a6, a7);
  v16 = a3 - v10;
  if (a3 <= v10)
  {
    return 0;
  }

  v17 = v10;
  if ((amber::Buffer::reserveEndCapacity(a2, v16, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    v31 = "buffer ensureEndCapacity";
    v32 = 563;
  }

  else
  {
    amber::BufferProtocol<amber::Buffer>::endView(a2, v16, v18, v33);
    Expected = amber::NetworkEndpoint::readExpected(this, v33, v19, v20, v21, v22, v23);
    if (Expected < 0)
    {
      if (v17)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "readBufferToSize", 0x237, 0, "NetworkEndpoint::readExpected: needed %zu to reach %zu", v29, v16, a3);
      }

      return 0xFFFFFFFFLL;
    }

    if ((amber::Buffer::grow(a2, Expected, v25, v26, v27, v28, v29) & 0x80000000) == 0)
    {
      return 0;
    }

    v31 = "buffer grow";
    v32 = 570;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Network.cpp", "readBufferToSize", v32, 0, v31, v18);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEAContainer::createAndUnlockWithPrologue(amber::AEAContainer *a1, const amber::ConstMemoryView *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::AEAContainer::createWithPrologue(a1, a2, a3, a4, a5, a6, a7);
  v11 = v9;
  if (v9)
  {
    if ((amber::EncryptedContainer::invokeEncryptionContextProc(v9, a2, a3) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "createAndUnlockWithPrologue", 0xAE, 0, "user callback error", v12);
LABEL_10:
      (*(*v11 + 8))(v11);
      return 0;
    }

    if (((*(*v11 + 40))(v11) & 0x80000000) != 0)
    {
      v14 = "invalid unlock credentials";
      v15 = 177;
      goto LABEL_9;
    }

    if ((amber::EncryptedContainer::invokeEncryptionContextProc(v11, a2, a3) & 0x80000000) != 0)
    {
      v14 = "user callback error";
      v15 = 180;
LABEL_9:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "createAndUnlockWithPrologue", v15, 0, v14, v13);
      goto LABEL_10;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "createAndUnlockWithPrologue", 0xAB, 0, "invalid profile", v10);
  }

  return v11;
}

uint64_t amber::AEAContainer::createWithPrologue(amber::AEAContainer *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13 = &off_2A1DDFC68;
  v14 = *(this + 8);
  v8 = amber::AEAContainer::prologueSizeWithMagic(this, a2, a3, a4, a5, a6, a7);
  v10 = *(this + 2);
  if (v8 == v10 && v10 < 0xFFFFFFFF)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "createWithPrologue", 0xC5, 0, "invalid prologue", v9);
  return 0;
}

void sub_2969E3F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::AEAContainer::prologueSizeWithMagic(amber::AEAContainer *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 2) <= 0xBuLL)
  {
    v7 = "truncated AEA magic";
    v8 = 313;
LABEL_20:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "prologueSizeWithMagic", v8, 0, v7, a7);
    return -1;
  }

  v22 = &off_2A1DDFDA8;
  v23 = v20;
  v24 = 12;
  v9 = *(this + 1);
  v10 = *v9;
  v21 = *(v9 + 2);
  *v20 = v10;
  if (v10 != 826361153 || (amber::AEACrypto::init(&v22, v20[4], v20[7], a4, a5, a6, a7) & 0x80000000) != 0)
  {
    v7 = "invalid magic";
    v8 = 321;
    goto LABEL_20;
  }

  if (v20[4] - 3 > 1)
  {
    if (v20[4])
    {
      v11 = 0;
    }

    else
    {
      v11 = HIDWORD(v23);
    }
  }

  else
  {
    v11 = v26;
  }

  v12 = v21 + 12;
  if (v21 >= 0xFFFFFFF4)
  {
    goto LABEL_19;
  }

  v13 = __CFADD__(v12, v27);
  v14 = v12 + v27;
  if (v13 || (v13 = __CFADD__(v14, v11), v15 = v14 + v11, v13) || (v16 = v15 + HIDWORD(v24), __CFADD__(v15, HIDWORD(v24))) || (v13 = __CFADD__(v16, v25), v17 = v16 + v25, v13) || v17 > 0xFFFFFFCF || (v18 = v17 + 48, result = v18 + v25, __CFADD__(v18, v25)))
  {
LABEL_19:
    v7 = "invalid container parameters, prologue size out of range";
    v8 = 347;
    goto LABEL_20;
  }

  return result;
}

uint64_t amber::copy(amber *this, const amber::MutableMemoryView *a2, const amber::ConstMemoryView *a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a2 + 2) < a3 || *(this + 2) < a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(*(this + 1), *(a2 + 1), a3);
  return 0;
}

uint64_t amber::AEAContainer::updateWithEncryptedCluster(amber::AEAContainer *this, uint64_t a2, const amber::MutableMemoryView *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v98 = *MEMORY[0x29EDCA608];
  v7 = (this + 1996);
  if ((*(this + 4432) & 1) == 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithEncryptedCluster", 0x165, 0, "container is not unlocked", a7);
    v14 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

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
  v10 = *(a3 + 2);
  if (v10 == *(this + 492) && (v11 = (*(this + 490) + 8), v12 = *(this + 502), v13 = v12 * v11, v10 >= v13))
  {
    v17 = a2;
    if (*(this + 496) <= a2)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithEncryptedCluster", 0x177, 0, "invalid cluster index", a7);
    }

    else
    {
      if ((amber::AEACrypto::DeriveClusterAEADKeyWithMainKey(this + 144, v80, this + 4120, a2, a5, a6, a7) & 0x80000000) != 0)
      {
        goto LABEL_38;
      }

      amber::MutableMemoryView::first(a3, v12 * v11, v18, &v77);
      amber::MutableMemoryView::operator+(a3, v12 * v11, v19, &v71);
      v74 = &off_2A1DDFC68;
      v75 = v72;
      v76 = v73;
      if ((v73 & 0x8000000000000000) != 0 || !v72 && v73)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v20);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid args");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      if ((amber::AEACrypto::AEADDecrypt(this + 144, &v77, this + 2440, v80, &v74) & 0x80000000) != 0)
      {
LABEL_38:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithEncryptedCluster", 0x183, 0, "decrypt cluster", v18);
      }

      else
      {
        v21 = *(this + 490);
        v22 = *(this + 42);
        amber::MutableMemoryView::view(a3, v12 * v11, v22, v18, &v74);
        v77 = &off_2A1DDFC68;
        __dst = v75;
        v79 = v76;
        if ((v76 & 0x8000000000000000) != 0 || !v75 && v76)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v27);
          v57 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v57, "memory invalid args");
          __cxa_throw(v57, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(this + 2448, &v77, v23, v24, v25, v26, v27);
        v58 = v12 * v11;
        v61 = *(this + 42) + v13;
        v29 = *(*(this + 255) + 8 * v17) + *(this + 492);
        if (*(this + 502))
        {
          v59 = v11;
          v30 = 0;
          v31 = 0;
          v32 = v12 * v17;
          v33 = 8 * v32;
          v34 = v32 * v21;
          v35 = v32 * v22;
          while (1)
          {
            v60 = v29;
            *(*(this + 258) + v33) = v29;
            v77 = &off_2A1DDFDA8;
            __dst = &v69;
            v79 = 8;
            amber::MutableMemoryView::view(a3, v31, 8, v28, &v71);
            v74 = &off_2A1DDFC68;
            v75 = v72;
            v76 = v73;
            if ((v73 & 0x8000000000000000) != 0 || !v72 && v73)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v36);
              v52 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25BE90](v52, "memory invalid args");
              __cxa_throw(v52, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }

            if (v73 > v79)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v36);
              v55 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25BE90](v55, "memory invalid range");
              __cxa_throw(v55, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }

            memcpy(__dst, v72, v73);
            if (v69 > *(this + 501))
            {
              break;
            }

            v41 = v70;
            if (v70 > v69)
            {
              break;
            }

            v74 = &off_2A1DDFDA8;
            v75 = &v69;
            v76 = 8;
            v77 = &off_2A1DDFC68;
            __dst = &v69;
            v79 = 8;
            if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(this + 2296, &v77, v33, v37, v38, v39, v40) & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            amber::MutableMemoryView::view(a3, v31 + 8, *(this + 490), v28, &v66);
            v71 = &off_2A1DDFC68;
            v72 = v67;
            v73 = v68;
            if ((v68 & 0x8000000000000000) != 0 || !v67 && v68)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v45);
              v53 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25BE90](v53, "memory invalid args");
              __cxa_throw(v53, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }

            if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(this + 2088, &v71, v34, v42, v43, v44, v45) & 0x80000000) != 0)
            {
              goto LABEL_44;
            }

            amber::MutableMemoryView::view(a3, v61, *(this + 42), v28, &v62);
            v65[0] = &off_2A1DDFC68;
            v65[1] = v63;
            v65[2] = v64;
            if (v64 < 0 || !v63 && v64)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v49);
              v54 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25BE90](v54, "memory invalid args");
              __cxa_throw(v54, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }

            if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(this + 2192, v65, v35, v46, v47, v48, v49) & 0x80000000) != 0)
            {
LABEL_44:
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithEncryptedCluster", 0x1A6, 0, "copy segment data", v28);
              goto LABEL_5;
            }

            v29 = v60 + v41;
            v31 += v59;
            v50 = *(this + 42);
            v61 += v50;
            v33 += 8;
            v34 += *(this + 490);
            v35 += v50;
            if (++v30 >= *(this + 502))
            {
              goto LABEL_40;
            }
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithEncryptedCluster", 0x19D, 0, "invalid segment sizes", v40);
        }

        else
        {
          v31 = 0;
LABEL_40:
          if (v31 == v58 && v61 == *(this + 492) && v29 <= *v7)
          {
            v51 = v17 + 1;
            if (v17 + 1 >= *(this + 496))
            {
              v14 = 0;
            }

            else
            {
              v14 = 0;
              *(*(this + 255) + 8 * v51) = v29;
            }

            goto LABEL_6;
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithEncryptedCluster", 0x1B1, 0, "cluster size mismatch", v28);
        }
      }
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithEncryptedCluster", 0x176, 0, "invalid cluster size", a7);
  }

LABEL_5:
  v14 = 0xFFFFFFFFLL;
LABEL_6:
  bzero(*(a3 + 1), *(a3 + 2));
LABEL_8:
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t amber::AEAContainer::updateWithPadding(amber::AEAContainer *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v64 = *MEMORY[0x29EDCA608];
  v7 = (this + 1996);
  if (*(this + 4432))
  {
    v46[0] = &unk_2A1DDFDD8;
    v46[1] = &unk_2A1DDFE08;
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
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
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
    v10 = *(this + 247);
    if (v10)
    {
      v11 = v10 - 1;
      v23 = &off_2A1DDFDA8;
      v24 = &v26;
      v25 = 8;
      if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(this + 2296, &v23, 8 * (v10 - 1), a4, a5, a6, a7) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithPadding", 0x1CB, 0, "invalid container state", a7);
        goto LABEL_18;
      }

      v10 = *(*(this + 258) + 8 * v11) + v27;
      v12 = *v7;
      if (v10 > *v7)
      {
LABEL_16:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithPadding", 0x1D5, 0, "padding HMAC", a7);
LABEL_18:
        v13 = 0xFFFFFFFFLL;
        goto LABEL_19;
      }
    }

    else
    {
      v12 = *v7;
    }

    if (*(a2 + 2) == v12 - v10 && (amber::AEACrypto::DerivePaddingKey(this + 144, v46, this + 4120, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
      v23 = &off_2A1DDFC68;
      v24 = v15;
      v25 = v14;
      if (v14 < 0 || !v15 && v14)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid args");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      if ((amber::AEACrypto::HMAC(this + 144, v28, v46, &v23) & 0x80000000) == 0 && amber::CryptoBlobBase<256u>::equals(v28, this + 2440, v16, v17, v18, v19, a7))
      {
        v13 = 0;
LABEL_19:
        bzero(*(a2 + 1), *(a2 + 2));
        goto LABEL_20;
      }
    }

    goto LABEL_16;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateWithPadding", 0x1BF, 0, "container is not unlocked", a7);
  v13 = 0xFFFFFFFFLL;
LABEL_20:
  v20 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t amber::AEAContainer::decryptSegment(amber::AEAContainer *this, unint64_t a2, const amber::MutableMemoryView *a3, amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v139 = *MEMORY[0x29EDCA608];
  if (*(this + 4432))
  {
    v121[0] = &unk_2A1DDFDD8;
    v121[1] = &unk_2A1DDFE08;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0;
    v103[0] = &unk_2A1DDFDD8;
    v103[1] = &unk_2A1DDFE08;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0;
    v85[0] = &unk_2A1DDFDD8;
    v85[1] = &unk_2A1DDFE08;
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
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0;
    v67[0] = &unk_2A1DDFDD8;
    v67[1] = &unk_2A1DDFE08;
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
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0;
    amber::Buffer::resize(a4, 0, a3, a4, a5, a6, a7);
    if (*(this + 247) <= a2)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x1F1, 0, "invalid segment index", v14);
      goto LABEL_25;
    }

    v15 = *(this + 502);
    v62 = &off_2A1DDFDA8;
    v63 = &v65;
    v64 = 8;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(this + 2296, &v62, 8 * a2, v11, v12, v13, v14) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(this + 2192, v121, *(this + 42), *(this + 42) * a2, v16, v17, v18) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(this + 2088, v103, *(this + 490), *(this + 490) * a2, v19, v20, v18) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x1F9, 0, "loading segment data", v18);
      goto LABEL_25;
    }

    if (*(a3 + 2) != v66 || v66 > v65 || v65 > *(this + 501) || (amber::Buffer::reserve(a4, v65, v21, v22, v23, v24, v18) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x200, 0, "compressed/encrypted/segment sizes mismatch, insufficient capacity", v18);
      goto LABEL_25;
    }

    if (*(this + 2012) == 45 && v65 != v66)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x203, 0, "segment sizes mismatch for no compresion", v18);
      goto LABEL_25;
    }

    if ((amber::AEACrypto::DeriveSegmentAEADKeyWithMainKey(this + 144, v67, this + 4120, a2 / v15, (a2 % v15), v25, v18) & 0x80000000) != 0 || (v63 = 0, v64 = 0, v62 = &off_2A1DDFC68, (amber::AEACrypto::AEADDecrypt(this + 144, a3, v121, v67, &v62) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x210, 0, "segment decrypt", v26);
      goto LABEL_25;
    }

    if (*(this + 2012) == 45 || v65 == v66)
    {
      amber::MutableMemoryView::first(a3, v65, v26, v61);
      amber::MutableMemoryView::operator amber::ConstMemoryView(v61, v38, &v62);
      if ((amber::BufferProtocol<amber::Buffer>::assign(a4, &v62, v39, v40, v41, v42, v43) & 0x80000000) != 0)
      {
        v45 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x217, *v45, "malloc", v46);
        goto LABEL_25;
      }

      goto LABEL_46;
    }

    amber::BufferProtocol<amber::Buffer>::zMutableEndView(a4, v26, &v62);
    amber::MutableMemoryView::operator amber::ConstMemoryView(a3, v27, v61);
    v28 = *(this + 2012);
    if (v28 <= 0x64)
    {
      switch(v28)
      {
        case '-':
          v29 = 0;
          goto LABEL_44;
        case '4':
          v29 = 5;
          goto LABEL_44;
        case 'b':
          v29 = 4;
          goto LABEL_44;
      }
    }

    else if (*(this + 2012) > 0x77u)
    {
      if (v28 == 122)
      {
        v29 = 2;
        goto LABEL_44;
      }

      if (v28 == 120)
      {
        v29 = 1;
        goto LABEL_44;
      }
    }

    else
    {
      if (v28 == 101)
      {
        v29 = 3;
        goto LABEL_44;
      }

      if (v28 == 102)
      {
        v29 = 6;
LABEL_44:
        v47 = amber::compressionDecode(&v62, v61, v29);
        if (v47 != v65 || (amber::Buffer::grow(a4, v47, v48, v49, v50, v51, v44) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x21D, 0, "decompression failed", v44);
          goto LABEL_25;
        }

LABEL_46:
        amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(a4, v44, &v62);
        if ((amber::AEAContainer::segmentDigest(this, v85, &v62, v52, v53, v54, v55) & 0x80000000) == 0 && amber::CryptoBlobBase<256u>::equals(v85, v103, v56, v57, v58, v59, v60))
        {
          v30 = 0;
          goto LABEL_26;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x223, 0, "segment digest mismatch", v60);
LABEL_25:
        amber::Buffer::resize(a4, 0, v31, v32, v33, v34, v35);
        v30 = 0xFFFFFFFFLL;
LABEL_26:
        bzero(*(a3 + 1), *(a3 + 2));
        goto LABEL_27;
      }
    }

    v29 = 0xFFFFFFFFLL;
    goto LABEL_44;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "decryptSegment", 0x1E2, 0, "container is not unlocked", a7);
  v30 = 0xFFFFFFFFLL;
LABEL_27:
  v36 = *MEMORY[0x29EDCA608];
  return v30;
}

uint64_t amber::AEAContainer::segmentDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(a1 + 1952);
  if (v9)
  {

    return v9(a2, a3);
  }

  else
  {
    v12[3] = v7;
    v12[4] = v8;
    *(a2 + 16) = 0;
    v11[0] = &off_2A1DDFDA8;
    v11[1] = a2 + 20;
    v11[2] = 256;
    amber::MutableMemoryView::operator+(v11, 0, a7, v12);
    bzero(v12[1], v12[2]);
    return 0;
  }
}

uint64_t amber::AEAContainer::unlockNew(amber::AEAContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v63 = *MEMORY[0x29EDCA608];
  v59 = &off_2A1DDFC68;
  v60 = this + 320;
  v61 = 12;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v62, &v59, a3, a4, a5, a6, a7);
  if ((*(this + 4432) & 1) != 0 || *(this + 4433) == 1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x231, 0, "invalid container state", v12);
LABEL_4:
    *(this + 1034) = 0;
    v56 = &off_2A1DDFDA8;
    v57 = this + 4140;
    v58 = 256;
    amber::MutableMemoryView::operator+(&v56, 0, v13, &v59);
    bzero(v60, v61);
    v20 = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  if ((amber::AEACrypto::RNGSalt(this + 144, this + 336, v8, v9, v10, v11, v12) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x235, 0, "gen salt", v30);
    goto LABEL_4;
  }

  v31 = *(this + 324);
  if (v31 > 2)
  {
    if (v31 - 3 < 2)
    {
      if (*(this + 754) || *(this + 894) != *(this + 46) || *(this + 824) != *(this + 44))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x262, 0, "invalid encryption credentials", v30);
        goto LABEL_4;
      }

      if ((amber::AEACrypto::DeriveMainKeyDHESender(this + 144, this + 4120, v62, this + 616, this + 3280, this + 3560, this + 336) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x26B, 0, "derive main key", v33);
        goto LABEL_4;
      }

      goto LABEL_36;
    }

    if (v31 == 5)
    {
      if (*(this + 684) < 0x14u || *(this + 894) != *(this + 46) || *(this + 824) != *(this + 44))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x272, 0, "invalid encryption credentials", v30);
        goto LABEL_4;
      }

      if ((amber::AEACrypto::DeriveMainKeyPassword(this + 144, this + 4120, v62, this + 2720, this + 3560, this + 336, v30) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x27A, 0, "derive main key", v36);
        goto LABEL_4;
      }

      goto LABEL_36;
    }

LABEL_39:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x27C, 0, "invalid profile: %u", v30, *(this + 324));
    goto LABEL_4;
  }

  if (v31 - 1 >= 2)
  {
    if (!*(this + 324))
    {
      if ((amber::AEACrypto::RNGBlob(this + 144, this + 616, *(this + 39), v27, v28, v29, v30) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x23C, 0, "gen key", v34);
        goto LABEL_4;
      }

      if (*(this + 158) != *(this + 50) || *(this + 754) || *(this + 894) != *(this + 46) || *(this + 824) != *(this + 44))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x242, 0, "invalid encryption credentials", v34);
        goto LABEL_4;
      }

      if ((amber::AEACrypto::DeriveMainKeySymmetric(this + 144, this + 4120, v62, this + 616, this + 3560, this + 336) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x24A, 0, "derive main key", v35);
        goto LABEL_4;
      }

      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (*(this + 754) != *(this + 39) || *(this + 894) != *(this + 46) || *(this + 824) != *(this + 44))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x252, 0, "invalid encryption credentials", v30);
    goto LABEL_4;
  }

  if ((amber::AEACrypto::DeriveMainKeySymmetric(this + 144, this + 4120, v62, this + 3000, this + 3560, this + 336) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockNew", 0x25A, 0, "derive main key", v32);
    goto LABEL_4;
  }

LABEL_36:
  v37 = *(this + 502);
  v38 = *(this + 496);
  v59 = -1;
  std::vector<unsigned long long>::resize(this + 255, v38, &v59);
  v39 = v38 * v37;
  v59 = -1;
  std::vector<unsigned long long>::resize(this + 258, v39, &v59);
  amber::Buffer::resize((this + 2088), v39 * *(this + 490), v40, v41, v42, v43, v44);
  amber::Buffer::resize((this + 2192), v39 * *(this + 42), v45, v46, v47, v48, v49);
  amber::Buffer::resize((this + 2296), 8 * v39, v50, v51, v52, v53, v54);
  if (*(this + 247))
  {
    v55 = *(this + 486);
    **(this + 255) = v55;
    **(this + 258) = (*(this + 492) + v55);
  }

  v20 = 0;
  *(this + 4432) = 1;
  *(this + 300) = 0;
  *(this + 604) = 0;
  *(this + 1218) = 0;
  *(this + 1996) = 0;
LABEL_5:
  amber::Buffer::reset((this + 896), v14, v15, v16, v17, v18, v19);
  *(this + 350) = 0;
  v56 = &off_2A1DDFDA8;
  v57 = this + 1404;
  v58 = 256;
  amber::MutableMemoryView::operator+(&v56, 0, v21, &v59);
  bzero(v60, v61);
  *(this + 754) = 0;
  v56 = &off_2A1DDFDA8;
  v57 = this + 3020;
  v58 = 256;
  amber::MutableMemoryView::operator+(&v56, 0, v22, &v59);
  bzero(v60, v61);
  *(this + 824) = 0;
  v56 = &off_2A1DDFDA8;
  v57 = this + 3300;
  v58 = 256;
  amber::MutableMemoryView::operator+(&v56, 0, v23, &v59);
  bzero(v60, v61);
  *(this + 420) = 0;
  v56 = &off_2A1DDFDA8;
  v57 = this + 1684;
  v58 = 256;
  amber::MutableMemoryView::operator+(&v56, 0, v24, &v59);
  bzero(v60, v61);
  amber::zero(void *,unsigned long)::memset_func(this + 4416, 0, 16);
  v25 = *MEMORY[0x29EDCA608];
  return v20;
}

void std::vector<unsigned long long>::resize(void *a1, unint64_t a2, uint64_t *a3)
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
    std::vector<unsigned long long>::__append(a1, a2 - v3, a3);
  }
}

uint64_t amber::AEAContainer::unlockExisting(amber::AEAContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v149 = *MEMORY[0x29EDCA608];
  v129 = &off_2A1DDFC68;
  v130 = this + 320;
  *&v131 = 12;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v148, &v129, a3, a4, a5, a6, a7);
  if ((*(this + 4432) & 1) != 0 || (*(this + 4433) & 1) == 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2AD, 0, "invalid container state", v8);
    goto LABEL_11;
  }

  v9 = *(this + 324);
  if (v9 > 2)
  {
    if (v9 - 3 < 2)
    {
      if (*(this + 754) || *(this + 894) != *(this + 46) || *(this + 158) != *(this + 50) || *(this + 824) != *(this + 44) || (v8 = *(this + 553)) == 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2D8, 0, "invalid encryption credentials", v8);
        goto LABEL_11;
      }

      if ((amber::AEACrypto::DeriveMainKeyDHERecipient(this + 144, this + 4120, v148, this + 616, this + 3280, *(this + 552), v8, this + 3560, this + 336) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2E3, 0, "derive main key", v15);
        goto LABEL_11;
      }

      goto LABEL_35;
    }

    if (v9 == 5)
    {
      if (*(this + 684) < 0x14u || *(this + 894) != *(this + 46) || *(this + 824) != *(this + 44))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2EA, 0, "invalid encryption credentials", v8);
        goto LABEL_11;
      }

      if ((amber::AEACrypto::DeriveMainKeyPassword(this + 144, this + 4120, v148, this + 2720, this + 3560, this + 336, v8) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2F2, 0, "derive main key", v15);
        goto LABEL_11;
      }

      goto LABEL_35;
    }

LABEL_44:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2F4, 0, "invalid profile: %u", v8, *(this + 324));
    goto LABEL_11;
  }

  if (v9 - 1 >= 2)
  {
    if (!*(this + 324))
    {
      if (*(this + 158) != *(this + 50) || *(this + 754) || *(this + 894) != *(this + 46) || *(this + 824) != *(this + 44))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2B6, 0, "invalid encryption credentials", v8);
        goto LABEL_11;
      }

      if ((amber::AEACrypto::DeriveMainKeySymmetric(this + 144, this + 4120, v148, this + 616, this + 3560, this + 336) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2BE, 0, "derive main key", v15);
        goto LABEL_11;
      }

      goto LABEL_35;
    }

    goto LABEL_44;
  }

  if (*(this + 754) != *(this + 39) || *(this + 894) != *(this + 46) || *(this + 824) != *(this + 44))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2C6, 0, "invalid encryption credentials", v8);
    goto LABEL_11;
  }

  if ((amber::AEACrypto::DeriveMainKeySymmetric(this + 144, this + 4120, v148, this + 3000, this + 3560, this + 336) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2CE, 0, "derive main key", v15);
    goto LABEL_11;
  }

LABEL_35:
  v35 = *(this + 324);
  v36 = 1;
  if (v35 > 4 || ((1 << v35) & 0x15) == 0)
  {
LABEL_50:
    v129 = &unk_2A1DDFDD8;
    v130 = &unk_2A1DDFE08;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
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
    v147 = 0;
    amber::SecureBuffer::SecureBuffer(&v110);
    v57 = *(this + 614);
    v107 = &off_2A1DDFC68;
    v108[0] = this + 2460;
    v108[1] = v57;
    if ((amber::BufferProtocol<amber::Buffer>::append(&v110, &v107, v58, v59, v60, v61, v62) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::operator amber::ConstMemoryView(this + 8, v63, v106), (amber::BufferProtocol<amber::Buffer>::append(&v110, v106, v64, v65, v66, v67, v68) & 0x80000000) != 0) || (amber::AEACrypto::DeriveRootHeaderAEADKey(this + 144, &v129, this + 4120, v69, v70, v71, v63) & 0x80000000) != 0 || (amber::MutableMemoryViewConvertible<amber::Buffer>::zMutableMemoryView(this + 896, v63, v105), amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(&v110, v72, v104), (amber::AEACrypto::AEADDecrypt(this + 144, v105, this + 1664, &v129, v104) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x31F, 0, "root header decryption", v63);
    }

    else
    {
      v107 = &off_2A1DDFDA8;
      v108[0] = this + 1988;
      v108[1] = 48;
      amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(this + 896, v63, v106);
      v77 = amber::copy(&v107, v106, 0x30, v73, v74, v75, v76);
      if (amber::AEAContainer::rootHeaderIsValid(v77, this + 1988) && ((*(*this + 120))(this) & 0x80000000) == 0)
      {
        v84 = 1;
        goto LABEL_59;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x325, 0, "invalid root header", v78);
    }

    v84 = 0;
    v36 = 0;
LABEL_59:
    amber::Buffer::~Buffer(&v110, v79, v80, v81, v82, v83, v78);
    if (v84)
    {
      v85 = *(this + 502);
      v86 = *(this + 496);
      v129 = -1;
      std::vector<unsigned long long>::resize(this + 255, v86, &v129);
      v87 = v86 * v85;
      v129 = -1;
      std::vector<unsigned long long>::resize(this + 258, v87, &v129);
      amber::Buffer::resize((this + 2088), v87 * *(this + 490), v88, v89, v90, v91, v92);
      amber::Buffer::resize((this + 2192), v87 * *(this + 42), v93, v94, v95, v96, v97);
      amber::Buffer::resize((this + 2296), 8 * v87, v98, v99, v100, v101, v102);
      if (*(this + 496))
      {
        **(this + 255) = *(this + 486);
      }

      v103 = *(this + 324);
      if (v103 <= 4 && ((1 << v103) & 0x15) != 0 && (amber::AEACrypto::DeriveSignatureKey(this + 144, this + 3840, this + 4120, v19, v20, v21, v16) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x342, 0, "derive signature key", v16);
        goto LABEL_11;
      }

      *(this + 4432) = 1;
    }

    goto LABEL_66;
  }

  v129 = &unk_2A1DDFDD8;
  v130 = &unk_2A1DDFE08;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
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
  v147 = 0;
  v110 = &unk_2A1DDFDD8;
  v111 = &unk_2A1DDFE08;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
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
  v128 = 0;
  v107 = &unk_2A1DDFDD8;
  v108[0] = &unk_2A1DDFE08;
  memset(&v108[1], 0, 256);
  v109 = 0;
  if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 1000, v10, v11, v12, v13, v14, v15) == *(this + 51) && *(this + 350) == *(this + 47))
  {
    amber::MutableMemoryViewConvertible<amber::Buffer>::first(this + 1000, *(this + 48), v37, v105);
    amber::MutableMemoryView::operator amber::ConstMemoryView(v105, v38, v106);
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(v108, v106, v39, v40, v41, v42, v43);
    if (!*(this + 324))
    {
      goto LABEL_42;
    }

    amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 1000, *(this + 48), *(this + 42), v44, v105);
    amber::MutableMemoryView::operator amber::ConstMemoryView(v105, v45, v106);
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v111, v106, v46, v47, v48, v49, v50);
    if ((amber::AEACrypto::DeriveSignatureAEADKeyWithMainKey(this + 144, &v129, this + 4120, v51, v52, v53, v54) & 0x80000000) != 0 || (v106[0] = &off_2A1DDFDA8, v106[1] = &v108[1] + 4, v106[2] = LODWORD(v108[1]), v105[1] = 0, v105[2] = 0, v105[0] = &off_2A1DDFC68, (amber::AEACrypto::AEADDecrypt(this + 144, v106, &v110, &v129, v105) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x30A, 0, "signature decryption failed", v55);
    }

    else
    {
LABEL_42:
      if ((amber::AEACrypto::DSVerify(this + 144, &v107, this + 3560, this + 1384) & 0x80000000) == 0)
      {
        v56 = 1;
        v36 = 1;
        goto LABEL_49;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x30F, 0, "signature verification failed", v16);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "unlockExisting", 0x2FF, 0, "invalid encrypted signature blob size", v37);
  }

  v56 = 0;
  v36 = 0;
LABEL_49:
  if (v56)
  {
    goto LABEL_50;
  }

LABEL_66:
  if (v36)
  {
    v22 = 0;
    goto LABEL_12;
  }

LABEL_11:
  *(this + 1034) = 0;
  v110 = &off_2A1DDFDA8;
  v111 = this + 4140;
  *&v112 = 256;
  amber::MutableMemoryView::operator+(&v110, 0, v16, &v129);
  bzero(v130, v131);
  v22 = 0xFFFFFFFFLL;
LABEL_12:
  amber::Buffer::reset((this + 896), v17, v18, v19, v20, v21, v16);
  amber::Buffer::reset((this + 1000), v23, v24, v25, v26, v27, v28);
  *(this + 350) = 0;
  v110 = &off_2A1DDFDA8;
  v111 = this + 1404;
  *&v112 = 256;
  amber::MutableMemoryView::operator+(&v110, 0, v29, &v129);
  bzero(v130, v131);
  *(this + 754) = 0;
  v110 = &off_2A1DDFDA8;
  v111 = this + 3020;
  *&v112 = 256;
  amber::MutableMemoryView::operator+(&v110, 0, v30, &v129);
  bzero(v130, v131);
  *(this + 824) = 0;
  v110 = &off_2A1DDFDA8;
  v111 = this + 3300;
  *&v112 = 256;
  amber::MutableMemoryView::operator+(&v110, 0, v31, &v129);
  bzero(v130, v131);
  *(this + 420) = 0;
  v110 = &off_2A1DDFDA8;
  v111 = this + 1684;
  *&v112 = 256;
  amber::MutableMemoryView::operator+(&v110, 0, v32, &v129);
  bzero(v130, v131);
  amber::zero(void *,unsigned long)::memset_func(this + 4416, 0, 16);
  v33 = *MEMORY[0x29EDCA608];
  return v22;
}

BOOL amber::AEAContainer::rootHeaderIsValid(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) - 268435457) >= 0xF0003FFF && (*(a2 + 20) - 262145) >= 0xFFFC001F && ((v3 = *(a2 + 24), (v3 - 45) <= 0x39) ? (v4 = ((1 << (v3 - 45)) & 0x320000000000081) == 0) : (v4 = 1), !v4 || v3 == 122 || v3 == 120))
  {
    return *(a2 + 25) < 3u;
  }

  else
  {
    return 0;
  }
}

uint64_t amber::AEAContainer::encryptPadding(amber::AEAContainer *this, amber::Buffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v63 = *MEMORY[0x29EDCA608];
  v7 = (this + 1988);
  if ((*(this + 4432) & 1) == 0)
  {
    v8 = "container is not unlocked";
    v9 = 857;
    goto LABEL_5;
  }

  if (*(this + 4433) == 1)
  {
    v8 = "container is read-only";
    v9 = 858;
LABEL_5:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", v9, 0, v8, a7);
    goto LABEL_11;
  }

  v11 = *(this + 1996);
  v45[0] = &unk_2A1DDFDD8;
  v45[1] = &unk_2A1DDFE08;
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
  v61 = 0u;
  v62 = 0;
  v12 = *(this + 300);
  if (v12 != *(this + 247) || *(this + 604) || (*(this + 2436) & 1) != 0 || (*(this + 2437) & 1) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x368, 0, "invalid state", a7);
  }

  else
  {
    if (v12)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v43[0] = &off_2A1DDFDA8;
        v43[1] = v44;
        v43[2] = 8;
        if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(this + 2296, v43, v16, a4, a5, a6, a7) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x36E, 0, "invalid segment count", a7);
          goto LABEL_11;
        }

        ++v18;
        v19 = *(this + 300);
        if (v18 != v19 && v44[0] != *(this + 501))
        {
          break;
        }

        if (v44[1] > v44[0])
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x370, 0, "invalid segment sizes", a7);
          goto LABEL_11;
        }

        v17 += v44[0];
        v16 += 8;
        if (v18 >= v19)
        {
          goto LABEL_22;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x36F, 0, "truncated internal segment", a7);
      goto LABEL_11;
    }

    v17 = 0;
LABEL_22:
    if (v17 == *(this + 301) && v17 == *v7)
    {
      v20 = paddedContainerSize(v11);
      if (v20 == -1)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x377, 0, "invalid size", v25);
      }

      else
      {
        v26 = v20;
        v27 = v20 - v11;
        if (!((v20 - v11) >> 32))
        {
          amber::Buffer::resize(a2, 0, v21, v22, v23, v24, v25);
          if (v26 == v11)
          {
            if ((amber::AEACrypto::RNGBlob(this + 144, this + 2440, *(this + 42), v29, v30, v31, v32) & 0x80000000) != 0)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x38B, 0, "padding HMAC", v33);
              goto LABEL_11;
            }
          }

          else
          {
            if ((amber::Buffer::reserve(a2, v27, v28, v29, v30, v31, v32) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(a2, v27, v34, v43), (amber::AEACrypto::RNGBytes((this + 144), v43) & 0x80000000) != 0) || (amber::Buffer::grow(a2, v27, v35, v36, v37, v38, v34) & 0x80000000) != 0)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x381, 0, "container padding", v34);
              goto LABEL_11;
            }

            if ((amber::AEACrypto::DerivePaddingKey(this + 144, v45, this + 4120, v39, v40, v41, v34) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(a2, v42, v43), (amber::AEACrypto::HMAC(this + 144, this + 2440, v45, v43) & 0x80000000) != 0))
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x386, 0, "padding HMAC", v42);
              goto LABEL_11;
            }
          }

          result = 0;
          *(this + 303) = v11;
          *(this + 608) = v27;
          v7[1] = v26;
          *(this + 2436) = 1;
          *(this + 604) = *(this + 496);
          goto LABEL_12;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x378, 0, "padding size out of range", v25);
      }
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPadding", 0x373, 0, "data size mismatch", a7);
    }
  }

LABEL_11:
  result = 0xFFFFFFFFLL;
LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t paddedContainerSize(unint64_t result)
{
  if (result >= 8)
  {
    v1 = __clz(result);
    v2 = __clz(v1 ^ 0x3F) - v1;
    if (v2 >= -31)
    {
      v3 = 1 << (v2 + 31);
      if (((v3 - 1) & result) != 0)
      {
        v4 = v3 - ((v3 - 1) & result);
        v5 = __CFADD__(result, v4);
        v6 = result + v4;
        if (v5)
        {
          return -1;
        }

        else
        {
          return v6;
        }
      }
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t amber::AEAContainer::encryptPrologue(amber::AEAContainer *this, amber::Buffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v193 = *MEMORY[0x29EDCA608];
  if ((*(this + 4432) & 1) == 0)
  {
    v7 = "container is not unlocked";
    v8 = 925;
    goto LABEL_5;
  }

  if (*(this + 4433) != 1)
  {
    v175[0] = &unk_2A1DDFDD8;
    v175[1] = &unk_2A1DDFE08;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
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
    v192 = 0;
    v173[0] = &unk_2A1DDFDD8;
    v173[1] = &unk_2A1DDFE08;
    memset(&v173[2], 0, 256);
    v174 = 0;
    v138[2] = 0;
    v138[3] = 0;
    v138[1] = off_2A1DDFD48;
    v138[5] = 0;
    v138[6] = 0;
    v138[4] = &off_2A1DDFDA8;
    v138[7] = &off_2A1DDFC68;
    v139 = 0u;
    v140 = 0u;
    v141 = 257;
    v142 = 0;
    v138[0] = off_2A1DDFC98;
    if (*(this + 300) != *(this + 247) || *(this + 604) || *(this + 2436) != 1 || *(this + 2437) == 1)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x3AD, 0, "invalid state", a7);
      goto LABEL_11;
    }

    amber::Buffer::resize(a2, 0, a3, a4, a5, a6, a7);
    if ((amber::Buffer::reserve(a2, *(this + 486), v20, v21, v22, v23, v24) & 0x80000000) != 0)
    {
      v129 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x3B1, *v129, "malloc", v130);
      goto LABEL_11;
    }

    v165 = &off_2A1DDFDA8;
    v166 = this + 320;
    v167[0] = 12;
    amber::MutableMemoryView::operator amber::ConstMemoryView(&v165, v25, &v169);
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v169, v26, v27, v28, v29, v30) & 0x80000000) != 0)
    {
      goto LABEL_48;
    }

    amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::operator amber::ConstMemoryView(this + 8, v31, &v162);
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v162, v32, v33, v34, v35, v36) & 0x80000000) != 0)
    {
      goto LABEL_48;
    }

    v45 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v37, v38, v39, v40, v41, v31);
    if (v45 >= *(this + 486))
    {
      goto LABEL_48;
    }

    if ((amber::BufferProtocol<amber::Buffer>::appendValue(a2, 0, *(this + 51), v42, v43, v44, v31) & 0x80000000) != 0)
    {
      goto LABEL_48;
    }

    v50 = *(this + 158);
    v143 = &off_2A1DDFC68;
    v144 = this + 636;
    *&v145 = v50;
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v143, v46, v47, v48, v49, v31) & 0x80000000) != 0)
    {
      goto LABEL_48;
    }

    v55 = *(this + 88);
    v135 = &off_2A1DDFC68;
    v136 = this + 356;
    v137 = v55;
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v135, v51, v52, v53, v54, v31) & 0x80000000) != 0)
    {
      goto LABEL_48;
    }

    v64 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v56, v57, v58, v59, v60, v31);
    if (v64 >= *(this + 486))
    {
      goto LABEL_48;
    }

    if ((amber::BufferProtocol<amber::Buffer>::appendValue(a2, 0, *(this + 42), v61, v62, v63, v31) & 0x80000000) != 0)
    {
      goto LABEL_48;
    }

    v131 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v65, v66, v67, v68, v69, v31);
    if (v131 >= *(this + 486))
    {
      goto LABEL_48;
    }

    v133[0] = &off_2A1DDFDA8;
    v133[1] = this + 1988;
    v133[2] = 48;
    amber::MutableMemoryView::operator amber::ConstMemoryView(v133, v31, v134);
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, v134, v70, v71, v72, v73, v74) & 0x80000000) != 0 || (v79 = *(this + 614), v132[0] = &off_2A1DDFC68, v132[1] = this + 2460, v132[2] = v79, (amber::BufferProtocol<amber::Buffer>::append(a2, v132, v75, v76, v77, v78, v31) & 0x80000000) != 0) || amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v80, v81, v82, v83, v84, v31) != *(this + 486))
    {
LABEL_48:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x3C0, 0, "assemble prologue elements", v31);
      goto LABEL_11;
    }

    v89 = *(this + 614);
    v169 = &off_2A1DDFC68;
    v170 = this + 2460;
    *v171 = v89;
    if ((amber::BufferProtocol<amber::Buffer>::append(v138, &v169, v85, v86, v87, v88, v31) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::operator amber::ConstMemoryView(this + 8, v16, &v165), (amber::BufferProtocol<amber::Buffer>::append(v138, &v165, v90, v91, v92, v93, v94) & 0x80000000) != 0) || (amber::AEACrypto::DeriveRootHeaderAEADKey(this + 144, v175, this + 4120, v95, v96, v97, v16) & 0x80000000) != 0 || (amber::MutableMemoryViewConvertible<amber::Buffer>::view(a2, v131, 48, v16, &v162), amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v138, v98, &v143), (amber::AEACrypto::AEADEncrypt(this + 144, &v162, v173, v175, &v143) & 0x80000000) != 0) || (v135 = &off_2A1DDFC68, v136 = &v173[2] + 4, v137 = LODWORD(v173[2]), (amber::MutableMemoryViewConvertible<amber::Buffer>::store(a2, &v135, v64, v99, v100, v101, v16) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x3CC, 0, "root header encryption", v16);
      goto LABEL_11;
    }

    v102 = *(this + 324);
    v103 = 1;
    if (v102 > 4 || ((1 << v102) & 0x15) == 0 || !*(this + 551))
    {
      goto LABEL_54;
    }

    v133[0] = 0;
    v169 = &unk_2A1DDFDD8;
    v170 = &unk_2A1DDFE08;
    memset(v171, 0, sizeof(v171));
    v172 = 0;
    v165 = &unk_2A1DDFDD8;
    v166 = &unk_2A1DDFE08;
    memset(v167, 0, sizeof(v167));
    v168 = 0;
    v162 = &unk_2A1DDFDD8;
    v163[0] = &unk_2A1DDFE08;
    memset(&v163[1], 0, 256);
    v164 = 0;
    v143 = &unk_2A1DDFDD8;
    v144 = &unk_2A1DDFE08;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0;
    amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(a2, v16, &v135);
    if ((amber::AEACrypto::DSDigest(this + 144, &v169, &v135) & 0x80000000) != 0 || ((v110 = *(this + 551), v111 = *(this + 550), v112 = *(this + 324), v113 = v171[0], v114 = *(this + 894), v115 = amber::BufferProtocol<amber::CryptoBlobBase<256u>>::end(v163, v104, v105, v106, v107, v108, v109), v112 >= 5) ? (v116 = 0xFFFFFFFFLL) : (v116 = v112), (v110(v111, v116, &v171[1], v113, this + 3580, v114, 256, v115, v133) & 0x80000000) != 0 || v133[0] != *(this + 48) || (amber::CryptoBlobBase<256u>::grow(&v162, v133[0], v117, v118, v119, v120, v109) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x3E5, 0, "signing failed %zu", v109, v133[0]);
    }

    else if ((amber::AEACrypto::DeriveSignatureAEADKeyWithMainKey(this + 144, &v143, this + 4120, v121, v122, v123, v109) & 0x80000000) != 0 || (v135 = &off_2A1DDFDA8, v136 = &v163[1] + 4, v137 = LODWORD(v163[1]), v134[1] = 0, v134[2] = 0, v134[0] = &off_2A1DDFC68, (amber::AEACrypto::AEADEncrypt(this + 144, &v135, &v165, &v143, v134) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x3EE, 0, "signature encryption failed", v124);
    }

    else
    {
      v135 = &off_2A1DDFC68;
      v136 = &v163[1] + 4;
      v137 = LODWORD(v163[1]);
      if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(a2, &v135, v45, v125, v126, v127, v124) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x3F4, 0, "prologue signature update", v16);
      }

      else
      {
        if (!*(this + 324) || (v135 = &off_2A1DDFC68, v136 = v167 + 4, v137 = LODWORD(v167[0]), (amber::MutableMemoryViewConvertible<amber::Buffer>::store(a2, &v135, v45 + LODWORD(v163[1]), v13, v14, v15, v16) & 0x80000000) == 0))
        {
          v103 = 1;
          v128 = 1;
          goto LABEL_53;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x3FB, 0, "prologue signature update", v16);
      }
    }

    v103 = 0;
    v128 = 0;
LABEL_53:
    if ((v128 & 1) == 0)
    {
LABEL_56:
      if (v103)
      {
        v9 = 0;
        goto LABEL_12;
      }

LABEL_11:
      amber::Buffer::resize(a2, 0, v12, v13, v14, v15, v16);
      v9 = 0xFFFFFFFFLL;
LABEL_12:
      amber::Buffer::~Buffer(v138, v17, v12, v13, v14, v15, v16);
      goto LABEL_13;
    }

LABEL_54:
    amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(a2, v16, &v169);
    if ((amber::AEACrypto::ContainerIDDigest(this + 144, this + 1104, &v169) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", 0x401, 0, "container ID", v16);
      goto LABEL_11;
    }

    *(this + 2437) = 1;
    goto LABEL_56;
  }

  v7 = "container is read-only";
  v8 = 926;
LABEL_5:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptPrologue", v8, 0, v7, a7);
  v9 = 0xFFFFFFFFLL;
LABEL_13:
  v18 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2969E7AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::AEAContainer::encryptCluster(amber::AEAContainer *this, uint64_t a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v113 = *MEMORY[0x29EDCA608];
  if ((*(this + 4432) & 1) == 0)
  {
    v7 = "container is not unlocked";
    v8 = 1040;
    goto LABEL_5;
  }

  if (*(this + 4433) == 1)
  {
    v7 = "container is read-only";
    v8 = 1041;
LABEL_5:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptCluster", v8, 0, v7, a7);
    goto LABEL_13;
  }

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
  if (*(this + 300) == *(this + 247) && *(this + 496) > a2 && *(this + 604) == a2 + 1 && *(this + 2436) == 1 && *(this + 2437) != 1)
  {
    amber::Buffer::resize(a3, 0, a3, a4, a5, a6, a7);
    if ((amber::Buffer::reserve(a3, *(this + 492), v19, v20, v21, v22, v23) & 0x80000000) != 0)
    {
      v68 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptCluster", 0x421, *v68, "malloc", v69);
    }

    else
    {
      v30 = *(this + 502);
      if (v30)
      {
        v31 = 0;
        while (1)
        {
          v76 = &unk_2A1DDFDD8;
          v77 = &unk_2A1DDFE08;
          v32 = v31 + v30 * a2;
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
          v92 = 0u;
          v93 = 0u;
          v94 = 0;
          v72 = &off_2A1DDFDA8;
          v73 = &v75;
          v74 = 8;
          if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(this + 2296, &v72, 8 * v32, v26, v27, v28, v29) & 0x80000000) != 0)
          {
            break;
          }

          if ((amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(this + 2088, &v76, *(this + 490), *(this + 490) * v32, v33, v34, v29) & 0x80000000) != 0)
          {
            break;
          }

          v70[3] = &off_2A1DDFDA8;
          v70[4] = &v75;
          v70[5] = 8;
          v71[0] = &off_2A1DDFC68;
          v71[1] = &v75;
          v71[2] = 8;
          if ((amber::BufferProtocol<amber::Buffer>::append(a3, v71, v35, v36, v37, v38, v29) & 0x80000000) != 0)
          {
            break;
          }

          v70[0] = &off_2A1DDFC68;
          v70[1] = &v78 + 4;
          v70[2] = v78;
          if ((amber::BufferProtocol<amber::Buffer>::append(a3, v70, v39, v40, v41, v42, v29) & 0x80000000) != 0)
          {
            break;
          }

          ++v31;
          v30 = *(this + 502);
          if (v31 >= v30)
          {
            goto LABEL_23;
          }
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptCluster", 0x42D, 0, "assemble cluster data", v29);
      }

      else
      {
LABEL_23:
        v43 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, v24, v25, v26, v27, v28, v29);
        v44 = *(this + 614);
        v76 = &off_2A1DDFC68;
        v77 = this + 2460;
        *&v78 = v44;
        if ((amber::BufferProtocol<amber::Buffer>::append(a3, &v76, v45, v46, v47, v48, v49) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptCluster", 0x433, 0, "assemble cluster data", v55);
        }

        else
        {
          v56 = *(this + 502);
          if (v56)
          {
            v57 = 0;
            while (1)
            {
              v76 = &unk_2A1DDFDD8;
              v77 = &unk_2A1DDFE08;
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
              v92 = 0u;
              v93 = 0u;
              v58 = *(this + 42);
              v94 = 0;
              if ((amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(this + 2192, &v76, v58, v58 * (v57 + v56 * a2), v53, v54, v55) & 0x80000000) != 0)
              {
                break;
              }

              v72 = &off_2A1DDFC68;
              v73 = &v78 + 4;
              v74 = v78;
              if ((amber::BufferProtocol<amber::Buffer>::append(a3, &v72, v59, v60, v61, v62, v55) & 0x80000000) != 0)
              {
                break;
              }

              ++v57;
              v56 = *(this + 502);
              if (v57 >= v56)
              {
                goto LABEL_29;
              }
            }

            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptCluster", 0x43C, 0, "assemble cluster data", v55);
          }

          else
          {
LABEL_29:
            if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, v50, v51, v52, v53, v54, v55) == *(this + 492))
            {
              if ((amber::AEACrypto::DeriveClusterAEADKeyWithMainKey(this + 144, v95, this + 4120, a2, v63, v64, v65) & 0x80000000) == 0)
              {
                amber::MutableMemoryViewConvertible<amber::Buffer>::first(a3, v43, v66, &v76);
                amber::ConstMemoryViewConvertible<amber::Buffer>::from(a3, v43, v67, &v72);
                if ((amber::AEACrypto::AEADEncrypt(this + 144, &v76, this + 2440, v95, &v72) & 0x80000000) == 0)
                {
                  result = 0;
                  --*(this + 604);
                  goto LABEL_14;
                }
              }

              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptCluster", 0x44C, 0, "encrypt cluster", v66);
            }

            else
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptCluster", 0x440, 0, "cluster size mismatch", v65);
            }
          }
        }
      }
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptCluster", 0x41D, 0, "invalid state", a7);
  }

  amber::Buffer::resize(a3, 0, v12, v13, v14, v15, v16);
LABEL_13:
  result = 0xFFFFFFFFLL;
LABEL_14:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEAContainer::encryptSegmentProcess(uint64_t a1, unint64_t a2, const amber::MutableMemoryView *a3, amber::Buffer *this, uint64_t a5, uint64_t a6, const char *a7)
{
  v73 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 4432) & 1) == 0)
  {
    v7 = "container is not unlocked";
    v8 = 1118;
    goto LABEL_5;
  }

  if (*(a1 + 4433) != 1)
  {
    v55[0] = &unk_2A1DDFDD8;
    v55[1] = &unk_2A1DDFE08;
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
    if (*(a1 + 1976) <= a2)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegmentProcess", 0x468, 0, "invalid segment index", a7);
      goto LABEL_10;
    }

    if (*(a3 + 2) > *(a1 + 2004))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegmentProcess", 0x469, 0, "invalid raw segment size", a7);
LABEL_10:
      amber::Buffer::resize(this, 0, v13, v14, v15, v16, v17);
      goto LABEL_11;
    }

    v22 = *(a1 + 2008);
    amber::Buffer::resize(this, 0, a3, this, a5, a6, a7);
    if ((amber::Buffer::reserve(this, *(a1 + 2004), v23, v24, v25, v26, v27) & 0x80000000) != 0)
    {
      v43 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegmentProcess", 0x46D, *v43, "malloc", v44);
      goto LABEL_10;
    }

    if ((amber::AEAContainer::segmentDigest(a1, a5, a3, v28, v29, v30, v31) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegmentProcess", 0x471, 0, "computing segment digest", v32);
      goto LABEL_10;
    }

    if (*(a1 + 2012) == 45)
    {
      goto LABEL_16;
    }

    amber::BufferProtocol<amber::Buffer>::zMutableEndView(this, v32, v54);
    v45 = *(a1 + 2012);
    if (v45 <= 0x64)
    {
      switch(v45)
      {
        case '-':
          v46 = 0;
          goto LABEL_36;
        case '4':
          v46 = 5;
          goto LABEL_36;
        case 'b':
          v46 = 4;
          goto LABEL_36;
      }
    }

    else if (*(a1 + 2012) > 0x77u)
    {
      if (v45 == 122)
      {
        v46 = 2;
        goto LABEL_36;
      }

      if (v45 == 120)
      {
        v46 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      if (v45 == 101)
      {
        v46 = 3;
        goto LABEL_36;
      }

      if (v45 == 102)
      {
        v46 = 6;
LABEL_36:
        v47 = amber::compressionEncode(v54, a3, v46);
        if (!HIDWORD(v47))
        {
          v42 = v47;
          if (v47)
          {
            if (*(a3 + 2) > v47)
            {
LABEL_39:
              if ((amber::Buffer::grow(this, v42, v38, v39, v40, v41, v32) & 0x80000000) != 0)
              {
                v51 = __error();
                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegmentProcess", 0x47F, *v51, "malloc", v52);
              }

              else
              {
                if ((amber::AEACrypto::DeriveSegmentAEADKeyWithMainKey(a1 + 144, v55, a1 + 4120, a2 / v22, (a2 % v22), v48, v49) & 0x80000000) == 0)
                {
                  amber::MutableMemoryViewConvertible<amber::Buffer>::zMutableMemoryView(this, v50, v54);
                  v53[1] = 0;
                  v53[2] = 0;
                  v53[0] = &off_2A1DDFC68;
                  if ((amber::AEACrypto::AEADEncrypt(a1 + 144, v54, a6, v55, v53) & 0x80000000) == 0)
                  {
                    result = 0;
                    goto LABEL_12;
                  }
                }

                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegmentProcess", 0x487, 0, "segment encryption", v50);
              }

              goto LABEL_10;
            }
          }
        }

LABEL_16:
        amber::BufferProtocol<amber::Buffer>::zMutableEndView(this, v32, v54);
        amber::copy(v54, a3, v33, v34, v35, v36, v37);
        v42 = *(a3 + 4);
        goto LABEL_39;
      }
    }

    v46 = 0xFFFFFFFFLL;
    goto LABEL_36;
  }

  v7 = "container is read-only";
  v8 = 1119;
LABEL_5:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegmentProcess", v8, 0, v7, a7);
LABEL_11:
  result = 0xFFFFFFFFLL;
LABEL_12:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

int64x2_t amber::AEAContainer::encryptSegmentUpdate(int64x2_t *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = (a1[124].u64 + 4);
  if ((a1[277].i8[0] & 1) == 0)
  {
    v8 = "container is not unlocked";
    v9 = 1174;
    goto LABEL_13;
  }

  if (a1[277].i8[1] == 1)
  {
    v8 = "container is read-only";
    v9 = 1175;
LABEL_13:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegmentUpdate", v9, 0, v8, a7);
    return result;
  }

  if (a1[150].i64[0] != a2 || a1[123].i64[1] <= a2)
  {
    v8 = "invalid segment index";
    v9 = 1184;
    goto LABEL_13;
  }

  v12 = a4;
  if (a4 > a3 || a1[125].i32[1] < a3 || (v14 = a1[150].i64[1], v15 = __CFADD__(v14, a3), v16 = v14 + a3, v15) || v16 > *v7)
  {
    v8 = "invalid segment sizes";
    v9 = 1189;
    goto LABEL_13;
  }

  if (*(a5 + 16) != a1[122].i32[2] || *(a6 + 16) != a1[10].i32[2])
  {
    v8 = "invalid segment hmac/digest sizes";
    v9 = 1192;
    goto LABEL_13;
  }

  v20 = a1[125].u32[2];
  if (a2)
  {
    v42[0] = &off_2A1DDFDA8;
    v42[1] = v41;
    v42[2] = 8;
    v21 = 8 * a2;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(&a1[143].i64[1], v42, 8 * a2 - 8, a4, a5, a6, a7) & 0x80000000) != 0 || LODWORD(v41[0]) != a1[125].i32[1])
    {
      v8 = "invalid segment sizes (prev)";
      v9 = 1199;
      goto LABEL_13;
    }
  }

  else
  {
    v21 = 0;
  }

  v43[0] = a3;
  v43[1] = v12;
  v41[0] = &off_2A1DDFDA8;
  v41[1] = v43;
  v41[2] = 8;
  amber::MutableMemoryView::operator amber::ConstMemoryView(v41, a7, v42);
  if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(&a1[143].i64[1], v42, v21, v22, v23, v24, v25) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v29 = *(a6 + 16);
  v40[0] = &off_2A1DDFC68;
  v40[1] = a6 + 20;
  v40[2] = v29;
  if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(a1[137].i64, v40, a1[10].u32[2] * a2, v26, v27, v28, a7) & 0x80000000) != 0 || (v33 = *(a5 + 16), v39[0] = &off_2A1DDFC68, v39[1] = a5 + 20, v39[2] = v33, (amber::MutableMemoryViewConvertible<amber::Buffer>::store(&a1[130].i64[1], v39, a1[122].u32[2] * a2, v30, v31, v32, a7) & 0x80000000) != 0))
  {
LABEL_29:
    v8 = "storing segment data";
    v9 = 1208;
    goto LABEL_13;
  }

  v34 = a2 + 1;
  v35 = a1[129].i64[0];
  if (a2 + 1 >= a1[123].i64[1])
  {
    v36 = v12;
  }

  else
  {
    v36 = v12;
    v37 = *(v35 + 8 * a2) + v12;
    *(v35 + 8 * v34) = v37;
    if ((a2 % v20) + 1 == a1[125].i32[2])
    {
      *(a1[127].i64[1] + 8 * ((a2 / v20) + 1)) = v37;
      *(v35 + 8 * v34) += a1[123].u32[0];
    }
  }

  v38.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v38.i64[1] = a3;
  result = vaddq_s64(a1[150], v38);
  a1[150] = result;
  v7[1] = *(v35 + 8 * a2) + v36;
  return result;
}

uint64_t amber::AEAContainer::encryptSegment(int64x2_t *this, unint64_t a2, const amber::ConstMemoryView *a3, amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v59 = *MEMORY[0x29EDCA608];
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
  v23[0] = &unk_2A1DDFDD8;
  v23[1] = &unk_2A1DDFE08;
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
  if ((amber::AEAContainer::encryptSegmentProcess(this, a2, a3, a4, v41, v23, a7) & 0x80000000) != 0 || (v17 = *(a3 + 2), v18 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a4, v11, v12, v13, v14, v15, v16), amber::AEAContainer::encryptSegmentUpdate(this, a2, v17, v18, v41, v23, v19), v20 < 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "encryptSegment", 0x4D8, 0, "segment encryption process + update", v16);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEAContainer::prologueObjectStorePath(amber::AEAContainer *this, amber::ObjectStorePath *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 4432))
  {
    *(a2 + 8) = 0;
    v11 = &off_2A1DDFDA8;
    v12 = a2 + 36;
    v13 = 256;
    amber::MutableMemoryView::operator+(&v11, 0, a7, &v14);
    bzero(v15, v16);
    *(a2 + 78) = 0;
    v11 = &off_2A1DDFDA8;
    v12 = a2 + 316;
    v13 = 256;
    amber::MutableMemoryView::operator+(&v11, 0, v9, &v14);
    bzero(v15, v16);
    result = 0;
    *(a2 + 144) = 1;
    *(a2 + 148) = *(this + 486);
    *(a2 + 73) = 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "prologueObjectStorePath", 0x513, 0, "container is not unlocked", a7);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t amber::AEAContainer::clusterObjectStorePath(amber::AEAContainer *this, unsigned int a2, amber::ObjectStorePath *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 4432) == 1 && *(this + 496) > a2)
  {
    v8 = *(*(this + 255) + 8 * a2);
    if (v8 != -1)
    {
      *(a3 + 8) = 0;
      v14 = &off_2A1DDFDA8;
      v15 = a3 + 36;
      v16 = 256;
      amber::MutableMemoryView::operator+(&v14, 0, a7, &v17);
      bzero(v18, v19);
      *(a3 + 78) = 0;
      v14 = &off_2A1DDFDA8;
      v15 = a3 + 316;
      v16 = 256;
      amber::MutableMemoryView::operator+(&v14, 0, v10, &v17);
      bzero(v18, v19);
      result = 0;
      *(a3 + 144) = 2;
      *(a3 + 148) = *(this + 492);
      *(a3 + 73) = v8;
      return result;
    }

    v12 = "cluster offset not available";
    v13 = 1314;
  }

  else
  {
    v12 = "cluster index out of range";
    v13 = 1312;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "clusterObjectStorePath", v13, 0, v12, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEAContainer::segmentObjectStorePath(amber::AEAContainer *this, unint64_t a2, amber::ObjectStorePath *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 4432) == 1 && *(this + 247) > a2)
  {
    v20 = &off_2A1DDFDA8;
    v21 = &v15;
    v22 = 8;
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load(this + 2296, &v20, 8 * a2, a4, a5, a6, a7) & 0x80000000) != 0)
    {
      v13 = "segment index out of range";
      v14 = 1331;
    }

    else
    {
      v10 = *(*(this + 258) + 8 * a2);
      if (v10 != -1)
      {
        *(a3 + 8) = 0;
        v17 = &off_2A1DDFDA8;
        v18 = a3 + 36;
        v19 = 256;
        amber::MutableMemoryView::operator+(&v17, 0, a7, &v20);
        bzero(v21, v22);
        *(a3 + 78) = 0;
        v17 = &off_2A1DDFDA8;
        v18 = a3 + 316;
        v19 = 256;
        amber::MutableMemoryView::operator+(&v17, 0, v11, &v20);
        bzero(v21, v22);
        result = 0;
        *(a3 + 144) = 3;
        *(a3 + 148) = v16;
        *(a3 + 73) = v10;
        return result;
      }

      v13 = "segment offset not available";
      v14 = 1333;
    }
  }

  else
  {
    v13 = "segment index out of range";
    v14 = 1327;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "segmentObjectStorePath", v14, 0, v13, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEAContainer::paddingObjectStorePath(amber::AEAContainer *this, amber::ObjectStorePath *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 4432))
  {
    *(a2 + 8) = 0;
    v11 = &off_2A1DDFDA8;
    v12 = a2 + 36;
    v13 = 256;
    amber::MutableMemoryView::operator+(&v11, 0, a7, &v14);
    bzero(v15, v16);
    *(a2 + 78) = 0;
    v11 = &off_2A1DDFDA8;
    v12 = a2 + 316;
    v13 = 256;
    amber::MutableMemoryView::operator+(&v11, 0, v9, &v14);
    bzero(v15, v16);
    result = 0;
    *(a2 + 144) = 5;
    *(a2 + 148) = *(this + 608);
    *(a2 + 73) = *(this + 303);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "paddingObjectStorePath", 0x541, 0, "container is not unlocked", a7);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t amber::AEAContainer::getAttribute(amber::AEAContainer *this, amber::BaseObject *a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v31 = a2;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp";
    v20 = "getAttribute";
    v21 = "invalid attribute encoding: %u";
    v22 = 1362;
LABEL_8:
    amber::log(2, v19, v20, v22, 0, v21, v12, v31, v32);
    return 0xFFFFFFFFLL;
  }

  if ((*(*this + 128))(this, a2))
  {
    v17 = 1;
    v18 = -1;
    switch(a2)
    {
      case 101:
        if (*(this + 324) >= 6u)
        {
          v17 = -1;
        }

        else
        {
          v17 = *(this + 324);
        }

        goto LABEL_36;
      case 102:
        v17 = *(this + 327);
        goto LABEL_36;
      case 105:
        v18 = *(this + 1988);
        goto LABEL_35;
      case 106:
        v18 = amber::AEAContainer::maxStorageSize(this);
        goto LABEL_35;
      case 111:
        v17 = *(this + 502);
        goto LABEL_36;
      case 112:
        v25 = *(this + 2012);
        if (v25 <= 0x64)
        {
          switch(v25)
          {
            case '-':
              v17 = 0;
              break;
            case '4':
              v17 = 5;
              break;
            case 'b':
              v17 = 4;
              break;
            default:
LABEL_35:
              v17 = -1;
              break;
          }
        }

        else
        {
          if (*(this + 2012) <= 0x77u)
          {
            if (v25 != 101)
            {
              if (v25 == 102)
              {
                v17 = 6;
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            v17 = 3;
            goto LABEL_36;
          }

          if (v25 == 122)
          {
            v17 = 2;
          }

          else if (v25 != 120)
          {
            goto LABEL_35;
          }
        }

LABEL_36:
        if (a3 == 2)
        {
          LODWORD(v33) = v17;
          v34 = &off_2A1DDFDA8;
          v35 = &v33;
          v36 = 4;
          v37 = &off_2A1DDFC68;
          v38 = &v33;
          v39 = 4;
          *a5 = 4;
          v23 = *(a4 + 2);
          if (!v23)
          {
            return v23;
          }

          if (v23 > 3)
          {
            v23 = 0;
            **(a4 + 1) = v17;
            return v23;
          }

          v30 = 4;
        }

        else
        {
          if (a3 != 1)
          {
            return 0xFFFFFFFFLL;
          }

          v33 = v18;
          v34 = &off_2A1DDFDA8;
          v35 = &v33;
          v36 = 8;
          v37 = &off_2A1DDFC68;
          v38 = &v33;
          v39 = 8;
          *a5 = 8;
          v23 = *(a4 + 2);
          if (!v23)
          {
            return v23;
          }

          if (v23 > 7)
          {
            v23 = 0;
            **(a4 + 1) = v18;
            return v23;
          }

          v30 = 8;
        }

        v31 = v30;
        v32 = v23;
LABEL_45:
        v19 = "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././BaseObject.hpp";
        v20 = "loadAttribute";
        v21 = "insufficient capacity, expected: %zu, actual: %zu";
        v22 = 19;
        goto LABEL_8;
      case 113:
        goto LABEL_36;
      case 115:
        v26 = *(this + 2013);
        if (v26 >= 3)
        {
          goto LABEL_35;
        }

        v17 = dword_296A15BE4[v26];
        goto LABEL_36;
      case 116:
        v17 = *(this + 4432);
        goto LABEL_36;
      case 118:
        v18 = *(this + 247);
        goto LABEL_35;
      case 119:
        v17 = *(this + 496);
        goto LABEL_36;
      case 120:
        v17 = *(this + 486);
        goto LABEL_36;
      case 121:
        v17 = *(this + 492);
        goto LABEL_36;
      case 122:
        v17 = *(this + 501);
        goto LABEL_36;
      case 123:
        v27 = this + 1124;
        v28 = *(this + 280);
        goto LABEL_29;
      case 129:
        v27 = this + 3860;
        v28 = *(this + 964);
LABEL_29:
        v37 = &off_2A1DDFC68;
        v38 = v27;
        v39 = v28;
        *a5 = v28;
        v29 = *(a4 + 2);
        if (!v29)
        {
          return 0;
        }

        if (v29 < v28)
        {
          v31 = v28;
          v32 = *(a4 + 2);
          goto LABEL_45;
        }

        return amber::copy(a4, &v37, v13, v14, v15, v16, v12);
      case 134:
        v18 = *(this + 1996);
        goto LABEL_35;
      default:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "getAttribute", 0x56F, 0, "invalid attribute: %u", v12, a2);
        return 0xFFFFFFFFLL;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::AEAContainer::setAttribute(amber::AEAContainer *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "setAttribute", 0x583, 0, "invalid attribute encoding: %u", v11, a2);
    return 0xFFFFFFFFLL;
  }

  if (((*(*this + 136))(this, a2) & 1) == 0)
  {
    v42 = a2;
    v17 = "attribute is not accessible (set): %u";
    v18 = 1412;
    goto LABEL_9;
  }

  v45 = -1;
  v44 = -1;
  if (a3 == 2)
  {
    if ((amber::storeAttribute<unsigned int>(&v44, a4, v12, v13, v14, v15, v16) & 0x80000000) != 0)
    {
      v17 = "invalid attribute size";
      v18 = 1424;
      goto LABEL_9;
    }
  }

  else if (a3 == 1 && (amber::storeAttribute<unsigned long long>(&v45, a4, v12, v13, v14, v15, v16) & 0x80000000) != 0)
  {
    v17 = "invalid attribute size";
    v18 = 1419;
LABEL_9:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "setAttribute", v18, 0, v17, v16, v42);
    return 0xFFFFFFFFLL;
  }

  v20 = (this + 1988);
  if (a2 > 127)
  {
    if (a2 <= 130)
    {
      if (a2 == 128)
      {
        if ((*(a4 + 2) - 257) < 0xFFFFFFFFFFFFFF13 || (amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(this + 2728, a4, v12, v13, v14, v15, v16) & 0x80000000) != 0)
        {
          v17 = "invalid password size";
          v18 = 1493;
          goto LABEL_9;
        }
      }

      else if (a2 == 129)
      {
        if ((amber::storeAttributeCryptoBlob(this + 3840, a4, *(this + 39), v13, v14, v15, v16) & 0x80000000) != 0)
        {
          v17 = "invalid signature key size";
          v18 = 1502;
          goto LABEL_9;
        }
      }

      else if ((amber::storeAttributeCryptoBlob(this + 3560, a4, *(this + 46), v13, v14, v15, v16) & 0x80000000) != 0)
      {
        v17 = "invalid signing public key size";
        v18 = 1496;
        goto LABEL_9;
      }

      goto LABEL_58;
    }

    switch(a2)
    {
      case 0x83:
        if ((amber::storeAttributeCryptoBlob(this + 3280, a4, *(this + 44), v13, v14, v15, v16) & 0x80000000) != 0)
        {
          v17 = "invalid recipient public key size";
          v18 = 1499;
          goto LABEL_9;
        }

        goto LABEL_58;
      case 0x84:
        if (*(a4 + 2) != 16)
        {
          v17 = "invalid signing callback size";
          v18 = 1505;
          goto LABEL_9;
        }

        v21 = 4400;
        goto LABEL_45;
      case 0x85:
        if (*(a4 + 2) != 16)
        {
          v17 = "invalid dh callback size";
          v18 = 1509;
          goto LABEL_9;
        }

        v21 = 4416;
LABEL_45:
        v43[0] = &off_2A1DDFDA8;
        v43[1] = this + v21;
        v43[2] = 16;
        amber::copy(v43, a4, v12, v13, v14, v15, v16);
        goto LABEL_58;
    }

LABEL_53:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "setAttribute", 0x5EA, 0, "invalid Attribute: %u", v16, a2);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 111)
  {
    switch(a2)
    {
      case 'p':
        if (v44 >= 7)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "setAttribute", 0x5C9, 0, "Invalid compression algorithm %u: %u", v16, 112, v44);
          return 0xFFFFFFFFLL;
        }

        *(this + 2012) = 0x663462657A782DuLL >> (8 * v44);
LABEL_58:
        if ((*(this + 4433) & 1) == 0 && ((*(*this + 120))(this) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "setAttribute", 0x5EF, 0, "invalid attribute: %u", v23, a2);
          return 0xFFFFFFFFLL;
        }

        return 0;
      case 'z':
        if (v44 - 268435457 <= 0xF0003FFE)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "setAttribute", 0x5B0, 0, "Attribute value out of range %u: %u", v16, 122, v44);
          return 0xFFFFFFFFLL;
        }

        *(this + 501) = v44;
        goto LABEL_58;
      case '\x7F':
        if ((amber::storeAttributeCryptoBlob(this + 3000, a4, *(this + 39), v13, v14, v15, v16) & 0x80000000) != 0)
        {
          v17 = "invalid symmetric key size";
          v18 = 1488;
          goto LABEL_9;
        }

        goto LABEL_58;
    }

    goto LABEL_53;
  }

  if (a2 != 105)
  {
    if (a2 == 111)
    {
      if (v44 - 262145 <= 0xFFFC001E)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "setAttribute", 0x5B6, 0, "Attribute value out of range %u: %u", v16, 111, v44);
        return 0xFFFFFFFFLL;
      }

      *(this + 502) = v44;
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  if ((*(this + 4432) & 1) == 0)
  {
    v22 = v45;
    goto LABEL_55;
  }

  v22 = v45;
  if (*(this + 2436))
  {
LABEL_55:
    *v20 = v22;
    goto LABEL_58;
  }

  if (v45 < *(this + 301) || v45 > *v20)
  {
    v17 = "size update out of range";
    v18 = 1432;
    goto LABEL_9;
  }

  *v20 = v45;
  if (((*(*this + 120))(this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "setAttribute", 0x59C, 0, "invalid attribute: %u", v24, 105);
    return 0xFFFFFFFFLL;
  }

  v25 = *(this + 496);
  v26 = v25 * *(this + 502);
  v43[0] = -1;
  std::vector<unsigned long long>::resize(this + 255, v25, v43);
  v43[0] = -1;
  std::vector<unsigned long long>::resize(this + 258, v26, v43);
  amber::Buffer::resize((this + 2088), v26 * *(this + 490), v27, v28, v29, v30, v31);
  amber::Buffer::resize((this + 2192), v26 * *(this + 42), v32, v33, v34, v35, v36);
  amber::Buffer::resize((this + 2296), 8 * v26, v37, v38, v39, v40, v41);
  return 0;
}

uint64_t amber::AEAContainer::updateComputedValues(amber::AEAContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::size(this + 8, a2, a3, a4, a5, a6, a7) >> 32)
  {
    v14 = "invalid auth data";
    v15 = 1528;
  }

  else
  {
    *(this + 82) = amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::size(this + 8, v8, v9, v10, v11, v12, v13);
    v35 = &off_2A1DDFDA8;
    v36 = this + 320;
    v37 = 12;
    v38[0] = &off_2A1DDFC68;
    v38[1] = this + 320;
    v38[2] = 12;
    v22 = amber::AEAContainer::prologueSizeWithMagic(v38, v16, v17, v18, v19, v20, v21);
    if (v22 < 0)
    {
      v14 = "invalid container attributes";
      v15 = 1531;
    }

    else
    {
      *(this + 486) = v22;
      *(this + 244) = 0;
      *(this + 490) = 0;
      v23 = *(this + 2013);
      v24 = amber::digest_MurMurHash64;
      v25 = 8;
      if (*(this + 2013))
      {
        if (v23 == 1)
        {
          v26 = 16;
        }

        else
        {
          if (v23 != 2)
          {
            v14 = "invalid checksum mode";
            v15 = 1548;
            goto LABEL_17;
          }

          v26 = 40;
          v25 = 32;
          v24 = amber::digest_SHA256;
        }

        *(this + 244) = v24;
        *(this + 490) = v25;
        v25 = v26;
      }

      v27 = *(this + 42);
      v28 = v25 + v27;
      *(this + 491) = v25 + v27;
      if (__CFADD__(v25, v27) || (v29 = *(this + 502), v30 = v29 * v28, *(this + 492) = v30, (v30 & 0xFFFFFFFF00000000) != 0) || (*(this + 492) = v30 + v27, __CFADD__(v30, v27)))
      {
        v14 = "cluster size overflow";
        v15 = 1558;
      }

      else
      {
        v32 = *(this + 501);
        if (v32 && v29)
        {
          v33 = (v32 + *(this + 1988) - 1) / v32;
          *(this + 247) = v33;
          v34 = (v29 + v33 - 1) / v29;
          if (!HIDWORD(v34))
          {
            result = 0;
            *(this + 496) = v34;
            return result;
          }

          v14 = "cluster count overflow";
          v15 = 1567;
        }

        else
        {
          v14 = "invalid root header values, division by 0";
          v15 = 1562;
        }
      }
    }
  }

LABEL_17:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "updateComputedValues", v15, 0, v14, v13, v35, v36, v37);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEAContainer::canGetAttribute(amber::AEAContainer *this, int a2)
{
  v2 = 1;
  if (a2 <= 117)
  {
    if (a2 > 110)
    {
      if ((a2 - 111) >= 2 && a2 != 115)
      {
        if (a2 != 116)
        {
          goto LABEL_24;
        }

        return v2 & 1;
      }
    }

    else
    {
      if ((a2 - 101) < 2)
      {
        return v2 & 1;
      }

      if ((a2 - 105) >= 2)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_17;
  }

  if (a2 < 123)
  {
LABEL_17:
    if ((*(this + 4432) & 1) == 0)
    {
      v2 = *(this + 4433) ^ 1;
      return v2 & 1;
    }

    goto LABEL_18;
  }

  if (a2 > 128)
  {
    if (a2 == 129)
    {
      v2 = *(this + 4432);
      return v2 & 1;
    }

    if (a2 != 134)
    {
LABEL_24:
      v2 = 0;
      return v2 & 1;
    }

    goto LABEL_17;
  }

  if (a2 == 123)
  {
    if ((*(this + 4433) & 1) == 0)
    {
      v2 = *(this + 2437);
      return v2 & 1;
    }

LABEL_18:
    v2 = 1;
    return v2 & 1;
  }

  if (a2 != 124)
  {
    goto LABEL_24;
  }

  return v2 & 1;
}

uint64_t amber::AEAContainer::canSetAttribute(amber::AEAContainer *this, int a2)
{
  v2 = 0;
  v3 = a2 - 105;
  if ((a2 - 105) <= 0x1C)
  {
    if (((1 << v3) & 0x1FC00000) != 0)
    {
      v4 = *(this + 4432);
LABEL_8:
      v2 = v4 ^ 1;
      return v2 & 1;
    }

    if (((1 << v3) & 0xA00C0) != 0)
    {
      if ((*(this + 4432) & 1) == 0)
      {
        v4 = *(this + 4433);
        goto LABEL_8;
      }
    }

    else
    {
      if (a2 != 105)
      {
        return v2 & 1;
      }

      if ((*(this + 4433) & 1) == 0)
      {
        if (*(this + 4432) != 1)
        {
          v2 = 1;
          return v2 & 1;
        }

        v4 = *(this + 2436);
        goto LABEL_8;
      }
    }

    v2 = 0;
  }

  return v2 & 1;
}

void amber::aeaEncrypt(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 16);
  v3 = 0x100000;
  do
  {
    v4 = v3;
    if (v3 >> 25)
    {
      break;
    }

    v3 *= 2;
  }

  while (v2 > v4 << 10);
  v5 = 32;
  do
  {
    if (v5 > 0xFF)
    {
      break;
    }

    v6 = v5 * v4;
    v5 *= 2;
  }

  while (v2 > v6);
  amber::AEAContainer::createWithProfile(1);
}

void sub_2969EA734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  amber::Buffer::~Buffer(&a23, a2, a3, a4, a5, a6, a7);
  amber::ObjectStorePath::~ObjectStorePath(&a36);
  _Unwind_Resume(a1);
}

uint64_t amber::aeaDecrypt(uint64_t a1, uint64_t a2, amber::Buffer *this, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v93 = *MEMORY[0x29EDCA608];
  amber::Buffer::resize(this, 0, this, a4, a5, a6, a7);
  amber::Buffer::constBuf(a2, v10, &v88);
  amber::ConstMemoryView::view(&v88, *(a2 + 80), *(a2 + 88) - *(a2 + 80), v11, &v85);
  v24 = amber::AEAContainer::prologueSizeWithMagic(&v85, v12, v13, v14, v15, v16, v17);
  if (HIDWORD(v24) || amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v18, v19, v20, v21, v22, v23) < v24)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "aeaDecrypt", 0x6EB, 0, "invalid AEA container", v23);
LABEL_4:
    result = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  amber::MutableMemoryViewConvertible<amber::Buffer>::first(a2, v24, v23, &v85);
  v88 = &off_2A1DDFC68;
  v89 = v86;
  v90 = v87;
  if ((v87 & 0x8000000000000000) != 0 || !v86 && v87)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v32);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v33 = amber::AEAContainer::createWithPrologue(&v88, v27, v28, v29, v30, v31, v32);
  v35 = v33;
  if (!v33)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "aeaDecrypt", 0x6F0, 0, "invalid AEA container prologue", v34);
    goto LABEL_4;
  }

  v36 = *(a1 + 16);
  v88 = &off_2A1DDFC68;
  v89 = (a1 + 20);
  v90 = v36;
  if (((*(*v33 + 24))(v33, 127, 3, &v88) & 0x80000000) != 0 || ((*(*v35 + 40))(v35) & 0x80000000) != 0 || (AttributeUInt64 = amber::BaseObject::getAttributeUInt64(v35, 134), AttributeUInt64 == -1) || (v39 = amber::BaseObject::getAttributeUInt64(v35, 105), v39 == -1) || (AttributeUInt32 = amber::BaseObject::getAttributeUInt32(v35, 122), AttributeUInt32 == -1) || (v83 = amber::BaseObject::getAttributeUInt64(v35, 118), v83 == -1) || (v41 = amber::BaseObject::getAttributeUInt32(v35, 119), v41 == -1) || amber::BaseObject::getAttributeUInt32(v35, 111) == -1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "aeaDecrypt", 0x6F9, 0, "unlock AEA container", v37);
  }

  else
  {
    amber::MutableMemoryViewConvertible<amber::Buffer>::first(a2, v24, v37, &v88);
    bzero(v89, v90);
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v42, v43, v44, v45, v46, v47) == AttributeUInt64)
    {
      if ((amber::BufferProtocol<amber::Buffer>::assignZero(this, v39, v48, v49, v50, v51, v52) & 0x80000000) != 0)
      {
        v60 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "aeaDecrypt", 0x702, *v60, "malloc", v61);
      }

      else if (v41)
      {
        v54 = 0;
        v81 = 0;
        while (1)
        {
          v55 = amber::ObjectStorePath::ObjectStorePath(&v88);
          if (((*(*v35 + 88))(v35, v54, &v88, v55) & 0x80000000) != 0)
          {
            break;
          }

          v57 = v91 + v92;
          if (__CFADD__(v91, v92))
          {
            break;
          }

          if (v57 > AttributeUInt64)
          {
            break;
          }

          amber::MutableMemoryViewConvertible<amber::Buffer>::view(a2, v91, v92, v56, &v85);
          if (((*(*v35 + 48))(v35, v54, &v85) & 0x80000000) != 0)
          {
            break;
          }

          v58 = v81;
          if (v81 <= v57)
          {
            v58 = v57;
          }

          v81 = v58;
          amber::ObjectStorePath::~ObjectStorePath(&v88);
          v54 = (v54 + 1);
          if (v41 == v54)
          {
            goto LABEL_40;
          }
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "aeaDecrypt", 0x70D, 0, "decrypt cluster", v56);
        amber::ObjectStorePath::~ObjectStorePath(&v88);
      }

      else
      {
        v81 = 0;
LABEL_40:
        if (v83)
        {
          v82 = 0;
          v62 = 0;
          v63 = 0;
          v64 = AttributeUInt32;
          v59 = 1;
          v80 = AttributeUInt32;
          while (1)
          {
            v65 = v39 >= v64 ? v64 : v39;
            amber::ObjectStorePath::ObjectStorePath(&v88);
            v66 = (v65 + v82);
            amber::MutableMemoryViewConvertible<amber::Buffer>::view(this, v62, v66, v67, v84);
            amber::Buffer::Buffer(&v85, v84, 0, v66, 0);
            v85 = &unk_2A1DE08A8;
            if (((*(*v35 + 96))(v35, v63, &v88) & 0x80000000) != 0 || (v69 = v91 + v92, __CFADD__(v91, v92)) || v69 > AttributeUInt64 || (amber::MutableMemoryViewConvertible<amber::Buffer>::view(a2, v91, v92, v68, v84), ((*(*v35 + 64))(v35, v63, v84, &v85) & 0x80000000) != 0))
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "aeaDecrypt", 0x71D, 0, "decrypt segment", v68);
              v59 = 0;
              v76 = 1;
            }

            else
            {
              v75 = v69;
              v76 = 0;
              v77 = v81;
              if (v81 <= v75)
              {
                v77 = v75;
              }

              v81 = v77;
            }

            amber::Buffer::~Buffer(&v85, v70, v71, v72, v73, v74, v68);
            amber::ObjectStorePath::~ObjectStorePath(&v88);
            if (v76)
            {
              goto LABEL_32;
            }

            ++v63;
            v62 += v80;
            v64 += v80;
            v82 -= v80;
            if (v83 == v63)
            {
              goto LABEL_57;
            }
          }
        }

        v59 = 1;
LABEL_57:
        v78 = AttributeUInt64 - v81;
        if (AttributeUInt64 <= v81)
        {
          goto LABEL_32;
        }

        if (!HIDWORD(v78))
        {
          amber::MutableMemoryViewConvertible<amber::Buffer>::view(a2, v81, v78, v53, &v88);
          if (((*(*v35 + 56))(v35, &v88) & 0x80000000) == 0)
          {
            goto LABEL_32;
          }
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "aeaDecrypt", 0x727, 0, "authenticate padding", v53);
      }
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEAContainer.cpp", "aeaDecrypt", 0x6FF, 0, "container size mismatch", v52);
    }
  }

  v59 = 0;
LABEL_32:
  (*(*v35 + 8))(v35);
  if (v59)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_5:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void amber::AEAContainer::~AEAContainer(amber::AEAContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::AEAContainer::~AEAContainer(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE3768;
  *(this + 515) = &unk_2A1DDFDD8;
  *(this + 516) = &unk_2A1DDFE08;
  *(this + 4140) = 0u;
  *(this + 4156) = 0u;
  *(this + 4172) = 0u;
  *(this + 4188) = 0u;
  *(this + 4204) = 0u;
  *(this + 4220) = 0u;
  *(this + 4236) = 0u;
  *(this + 4252) = 0u;
  *(this + 4268) = 0u;
  *(this + 4284) = 0u;
  *(this + 4300) = 0u;
  *(this + 4316) = 0u;
  *(this + 4332) = 0u;
  *(this + 4348) = 0u;
  *(this + 4364) = 0u;
  *(this + 4380) = 0u;
  *(this + 480) = &unk_2A1DDFDD8;
  *(this + 481) = &unk_2A1DDFE08;
  *(this + 3860) = 0u;
  *(this + 3876) = 0u;
  *(this + 3892) = 0u;
  *(this + 3908) = 0u;
  *(this + 3924) = 0u;
  *(this + 3940) = 0u;
  *(this + 3956) = 0u;
  *(this + 3972) = 0u;
  *(this + 3988) = 0u;
  *(this + 4004) = 0u;
  *(this + 4020) = 0u;
  *(this + 4036) = 0u;
  *(this + 4052) = 0u;
  *(this + 4068) = 0u;
  *(this + 4084) = 0u;
  *(this + 4100) = 0u;
  *(this + 445) = &unk_2A1DDFDD8;
  *(this + 446) = &unk_2A1DDFE08;
  *(this + 3804) = 0u;
  *(this + 3820) = 0u;
  *(this + 3772) = 0u;
  *(this + 3788) = 0u;
  *(this + 3740) = 0u;
  *(this + 3756) = 0u;
  *(this + 3708) = 0u;
  *(this + 3724) = 0u;
  *(this + 3676) = 0u;
  *(this + 3692) = 0u;
  *(this + 3644) = 0u;
  *(this + 3660) = 0u;
  *(this + 3612) = 0u;
  *(this + 3628) = 0u;
  *(this + 3580) = 0u;
  *(this + 3596) = 0u;
  *(this + 410) = &unk_2A1DDFDD8;
  *(this + 411) = &unk_2A1DDFE08;
  *(this + 3524) = 0u;
  *(this + 3540) = 0u;
  *(this + 3492) = 0u;
  *(this + 3508) = 0u;
  *(this + 3460) = 0u;
  *(this + 3476) = 0u;
  *(this + 3428) = 0u;
  *(this + 3444) = 0u;
  *(this + 3396) = 0u;
  *(this + 3412) = 0u;
  *(this + 3364) = 0u;
  *(this + 3380) = 0u;
  *(this + 3332) = 0u;
  *(this + 3348) = 0u;
  *(this + 3300) = 0u;
  *(this + 3316) = 0u;
  *(this + 375) = &unk_2A1DDFDD8;
  *(this + 376) = &unk_2A1DDFE08;
  *(this + 3244) = 0u;
  *(this + 3260) = 0u;
  *(this + 3212) = 0u;
  *(this + 3228) = 0u;
  *(this + 3180) = 0u;
  *(this + 3196) = 0u;
  *(this + 3148) = 0u;
  *(this + 3164) = 0u;
  *(this + 3116) = 0u;
  *(this + 3132) = 0u;
  *(this + 3084) = 0u;
  *(this + 3100) = 0u;
  *(this + 3052) = 0u;
  *(this + 3068) = 0u;
  *(this + 3020) = 0u;
  *(this + 3036) = 0u;
  *(this + 340) = &unk_2A1DDFDD8;
  *(this + 341) = &unk_2A1DDFE08;
  *(this + 2964) = 0u;
  *(this + 2980) = 0u;
  *(this + 2932) = 0u;
  *(this + 2948) = 0u;
  *(this + 2900) = 0u;
  *(this + 2916) = 0u;
  *(this + 2868) = 0u;
  *(this + 2884) = 0u;
  *(this + 2836) = 0u;
  *(this + 2852) = 0u;
  *(this + 2804) = 0u;
  *(this + 2820) = 0u;
  *(this + 2772) = 0u;
  *(this + 2788) = 0u;
  *(this + 2740) = 0u;
  *(this + 2756) = 0u;
  *(this + 305) = &unk_2A1DDFDD8;
  *(this + 306) = &unk_2A1DDFE08;
  *(this + 2684) = 0u;
  *(this + 2700) = 0u;
  *(this + 2652) = 0u;
  *(this + 2668) = 0u;
  *(this + 2620) = 0u;
  *(this + 2636) = 0u;
  *(this + 2588) = 0u;
  *(this + 2604) = 0u;
  *(this + 2556) = 0u;
  *(this + 2572) = 0u;
  *(this + 2524) = 0u;
  *(this + 2540) = 0u;
  *(this + 2492) = 0u;
  *(this + 2508) = 0u;
  *(this + 2460) = 0u;
  *(this + 2476) = 0u;
  amber::Buffer::~Buffer((this + 2296), a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer((this + 2192), v8, v9, v10, v11, v12, v13);
  amber::Buffer::~Buffer((this + 2088), v14, v15, v16, v17, v18, v19);
  v26 = *(this + 258);
  if (v26)
  {
    *(this + 259) = v26;
    operator delete(v26);
  }

  v27 = *(this + 255);
  if (v27)
  {
    *(this + 256) = v27;
    operator delete(v27);
  }

  *(this + 208) = &unk_2A1DDFDD8;
  *(this + 209) = &unk_2A1DDFE08;
  *(this + 1684) = 0u;
  *(this + 1700) = 0u;
  *(this + 1716) = 0u;
  *(this + 1732) = 0u;
  *(this + 1748) = 0u;
  *(this + 1764) = 0u;
  *(this + 1780) = 0u;
  *(this + 1796) = 0u;
  *(this + 1812) = 0u;
  *(this + 1828) = 0u;
  *(this + 1844) = 0u;
  *(this + 1860) = 0u;
  *(this + 1876) = 0u;
  *(this + 1892) = 0u;
  *(this + 1908) = 0u;
  *(this + 1924) = 0u;
  *(this + 173) = &unk_2A1DDFDD8;
  *(this + 174) = &unk_2A1DDFE08;
  *(this + 1404) = 0u;
  *(this + 1420) = 0u;
  *(this + 1436) = 0u;
  *(this + 1452) = 0u;
  *(this + 1468) = 0u;
  *(this + 1484) = 0u;
  *(this + 1500) = 0u;
  *(this + 1516) = 0u;
  *(this + 1532) = 0u;
  *(this + 1548) = 0u;
  *(this + 1564) = 0u;
  *(this + 1580) = 0u;
  *(this + 1596) = 0u;
  *(this + 1612) = 0u;
  *(this + 1628) = 0u;
  *(this + 1644) = 0u;
  *(this + 138) = &unk_2A1DDFDD8;
  *(this + 139) = &unk_2A1DDFE08;
  *(this + 1348) = 0u;
  *(this + 1364) = 0u;
  *(this + 1316) = 0u;
  *(this + 1332) = 0u;
  *(this + 1284) = 0u;
  *(this + 1300) = 0u;
  *(this + 1252) = 0u;
  *(this + 1268) = 0u;
  *(this + 1220) = 0u;
  *(this + 1236) = 0u;
  *(this + 1188) = 0u;
  *(this + 1204) = 0u;
  *(this + 1156) = 0u;
  *(this + 1172) = 0u;
  *(this + 1124) = 0u;
  *(this + 1140) = 0u;
  amber::Buffer::~Buffer((this + 1000), v20, v21, v22, v23, v24, v25);
  amber::Buffer::~Buffer((this + 896), v28, v29, v30, v31, v32, v33);
  *(this + 77) = &unk_2A1DDFDD8;
  *(this + 78) = &unk_2A1DDFE08;
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
  *(this + 796) = 0u;
  *(this + 812) = 0u;
  *(this + 828) = 0u;
  *(this + 844) = 0u;
  *(this + 860) = 0u;
  *(this + 876) = 0u;
  *(this + 42) = &unk_2A1DDFDD8;
  *(this + 43) = &unk_2A1DDFE08;
  *(this + 580) = 0u;
  *(this + 596) = 0u;
  *(this + 548) = 0u;
  *(this + 564) = 0u;
  *(this + 516) = 0u;
  *(this + 532) = 0u;
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
  *this = &unk_2A1DE29B8;
  amber::KeyValueBlob::~KeyValueBlob((this + 8), v34, v35, v36, v37, v38, v39);
}

amber::AEAContainer *amber::AEAContainer::AEAContainer(amber::AEAContainer *this)
{
  *this = &unk_2A1DE29B8;
  amber::KeyValueBlob::KeyValueBlob((this + 8));
  *this = &unk_2A1DE3768;
  *(this + 42) = &unk_2A1DDFDD8;
  *(this + 43) = &unk_2A1DDFE08;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 152) = 0;
  *(this + 77) = &unk_2A1DDFDD8;
  *(this + 78) = &unk_2A1DDFE08;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 222) = 0;
  *(this + 113) = off_2A1DDFD48;
  *(this + 57) = 0u;
  *(this + 116) = &off_2A1DDFDA8;
  *(this + 936) = 0u;
  *(this + 119) = &off_2A1DDFC68;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 496) = 257;
  *(this + 994) = 0;
  *(this + 112) = off_2A1DDFC98;
  *(this + 126) = off_2A1DDFD48;
  *(this + 1016) = 0u;
  *(this + 129) = &off_2A1DDFDA8;
  *(this + 65) = 0u;
  *(this + 132) = &off_2A1DDFC68;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 548) = 257;
  *(this + 1098) = 0;
  *(this + 125) = off_2A1DDFC98;
  *(this + 138) = &unk_2A1DDFDD8;
  *(this + 139) = &unk_2A1DDFE08;
  *(this + 70) = 0u;
  *(this + 71) = 0u;
  *(this + 72) = 0u;
  *(this + 73) = 0u;
  *(this + 74) = 0u;
  *(this + 75) = 0u;
  *(this + 76) = 0u;
  *(this + 77) = 0u;
  *(this + 78) = 0u;
  *(this + 79) = 0u;
  *(this + 80) = 0u;
  *(this + 81) = 0u;
  *(this + 82) = 0u;
  *(this + 83) = 0u;
  *(this + 84) = 0u;
  *(this + 85) = 0u;
  *(this + 344) = 0;
  *(this + 173) = &unk_2A1DDFDD8;
  *(this + 174) = &unk_2A1DDFE08;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 1432) = 0u;
  *(this + 1448) = 0u;
  *(this + 1464) = 0u;
  *(this + 1480) = 0u;
  *(this + 1496) = 0u;
  *(this + 1512) = 0u;
  *(this + 1528) = 0u;
  *(this + 1544) = 0u;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 1592) = 0u;
  *(this + 1608) = 0u;
  *(this + 1624) = 0u;
  *(this + 1640) = 0u;
  *(this + 414) = 0;
  *(this + 208) = &unk_2A1DDFDD8;
  *(this + 209) = &unk_2A1DDFE08;
  *(this + 105) = 0u;
  *(this + 106) = 0u;
  *(this + 107) = 0u;
  *(this + 108) = 0u;
  *(this + 109) = 0u;
  *(this + 110) = 0u;
  *(this + 111) = 0u;
  *(this + 112) = 0u;
  *(this + 113) = 0u;
  *(this + 114) = 0u;
  *(this + 115) = 0u;
  *(this + 116) = 0u;
  *(this + 117) = 0u;
  *(this + 118) = 0u;
  *(this + 119) = 0u;
  *(this + 120) = 0u;
  *(this + 484) = 0;
  *(this + 244) = 0;
  *(this + 2040) = 0u;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 262) = off_2A1DDFD48;
  *(this + 2104) = 0u;
  *(this + 265) = &off_2A1DDFDA8;
  *(this + 133) = 0u;
  *(this + 268) = &off_2A1DDFC68;
  *(this + 2152) = 0u;
  *(this + 2168) = 0u;
  *(this + 1092) = 257;
  *(this + 2186) = 0;
  *(this + 261) = off_2A1DDFC98;
  *(this + 275) = off_2A1DDFD48;
  *(this + 138) = 0u;
  *(this + 278) = &off_2A1DDFDA8;
  *(this + 2232) = 0u;
  *(this + 281) = &off_2A1DDFC68;
  *(this + 141) = 0u;
  *(this + 142) = 0u;
  *(this + 1144) = 257;
  *(this + 2290) = 0;
  *(this + 274) = off_2A1DDFC98;
  *(this + 288) = off_2A1DDFD48;
  *(this + 2312) = 0u;
  *(this + 291) = &off_2A1DDFDA8;
  *(this + 146) = 0u;
  *(this + 294) = &off_2A1DDFC68;
  *(this + 2360) = 0u;
  *(this + 2376) = 0u;
  *(this + 1196) = 257;
  *(this + 2394) = 0;
  *(this + 287) = off_2A1DDFC98;
  *(this + 150) = 0u;
  *(this + 604) = 0;
  *(this + 2430) = 0;
  *(this + 303) = 0;
  *(this + 305) = &unk_2A1DDFDD8;
  *(this + 306) = &unk_2A1DDFE08;
  *(this + 2456) = 0u;
  *(this + 2472) = 0u;
  *(this + 2488) = 0u;
  *(this + 2504) = 0u;
  *(this + 2520) = 0u;
  *(this + 2536) = 0u;
  *(this + 2552) = 0u;
  *(this + 2568) = 0u;
  *(this + 2584) = 0u;
  *(this + 2600) = 0u;
  *(this + 2616) = 0u;
  *(this + 2632) = 0u;
  *(this + 2648) = 0u;
  *(this + 2664) = 0u;
  *(this + 2680) = 0u;
  *(this + 2696) = 0u;
  *(this + 678) = 0;
  *(this + 340) = &unk_2A1DDFDD8;
  *(this + 341) = &unk_2A1DDFE08;
  *(this + 171) = 0u;
  *(this + 172) = 0u;
  *(this + 173) = 0u;
  *(this + 174) = 0u;
  *(this + 175) = 0u;
  *(this + 176) = 0u;
  *(this + 177) = 0u;
  *(this + 178) = 0u;
  *(this + 179) = 0u;
  *(this + 180) = 0u;
  *(this + 181) = 0u;
  *(this + 182) = 0u;
  *(this + 183) = 0u;
  *(this + 184) = 0u;
  *(this + 185) = 0u;
  *(this + 186) = 0u;
  *(this + 748) = 0;
  *(this + 375) = &unk_2A1DDFDD8;
  *(this + 376) = &unk_2A1DDFE08;
  *(this + 3016) = 0u;
  *(this + 3032) = 0u;
  *(this + 3048) = 0u;
  *(this + 3064) = 0u;
  *(this + 3080) = 0u;
  *(this + 3096) = 0u;
  *(this + 3112) = 0u;
  *(this + 3128) = 0u;
  *(this + 3144) = 0u;
  *(this + 3160) = 0u;
  *(this + 3176) = 0u;
  *(this + 3192) = 0u;
  *(this + 3208) = 0u;
  *(this + 3224) = 0u;
  *(this + 3240) = 0u;
  *(this + 3256) = 0u;
  *(this + 818) = 0;
  *(this + 410) = &unk_2A1DDFDD8;
  *(this + 411) = &unk_2A1DDFE08;
  *(this + 206) = 0u;
  *(this + 207) = 0u;
  *(this + 208) = 0u;
  *(this + 209) = 0u;
  *(this + 210) = 0u;
  *(this + 211) = 0u;
  *(this + 212) = 0u;
  *(this + 213) = 0u;
  *(this + 214) = 0u;
  *(this + 215) = 0u;
  *(this + 216) = 0u;
  *(this + 217) = 0u;
  *(this + 218) = 0u;
  *(this + 219) = 0u;
  *(this + 220) = 0u;
  *(this + 221) = 0u;
  *(this + 888) = 0;
  *(this + 445) = &unk_2A1DDFDD8;
  *(this + 446) = &unk_2A1DDFE08;
  *(this + 3576) = 0u;
  *(this + 3592) = 0u;
  *(this + 3608) = 0u;
  *(this + 3624) = 0u;
  *(this + 3640) = 0u;
  *(this + 3656) = 0u;
  *(this + 3672) = 0u;
  *(this + 3688) = 0u;
  *(this + 3704) = 0u;
  *(this + 3720) = 0u;
  *(this + 3736) = 0u;
  *(this + 3752) = 0u;
  *(this + 3768) = 0u;
  *(this + 3784) = 0u;
  *(this + 3800) = 0u;
  *(this + 3816) = 0u;
  *(this + 958) = 0;
  *(this + 480) = &unk_2A1DDFDD8;
  *(this + 481) = &unk_2A1DDFE08;
  *(this + 241) = 0u;
  *(this + 242) = 0u;
  *(this + 243) = 0u;
  *(this + 244) = 0u;
  *(this + 245) = 0u;
  *(this + 246) = 0u;
  *(this + 247) = 0u;
  *(this + 248) = 0u;
  *(this + 249) = 0u;
  *(this + 250) = 0u;
  *(this + 251) = 0u;
  *(this + 252) = 0u;
  *(this + 253) = 0u;
  *(this + 254) = 0u;
  *(this + 255) = 0u;
  *(this + 256) = 0u;
  *(this + 1028) = 0;
  *(this + 515) = &unk_2A1DDFDD8;
  *(this + 516) = &unk_2A1DDFE08;
  *(this + 4136) = 0u;
  *(this + 4152) = 0u;
  *(this + 4168) = 0u;
  *(this + 4184) = 0u;
  *(this + 4200) = 0u;
  *(this + 4216) = 0u;
  *(this + 4232) = 0u;
  *(this + 4248) = 0u;
  *(this + 4264) = 0u;
  *(this + 4280) = 0u;
  *(this + 4296) = 0u;
  *(this + 4312) = 0u;
  *(this + 4328) = 0u;
  *(this + 4344) = 0u;
  *(this + 4360) = 0u;
  *(this + 4376) = 0u;
  *(this + 1098) = 0;
  *(this + 2216) = 0;
  return this;
}

uint64_t amber::Buffer::Buffer(uint64_t this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, char a5)
{
  *this = &unk_2A1DDFD28;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = off_2A1DDFD48;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *(this + 32) = &off_2A1DDFDA8;
  *(this + 40) = v5;
  *(this + 48) = v6;
  *(this + 56) = &off_2A1DDFC68;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = a3;
  *(this + 88) = a4;
  *(this + 96) = 0;
  *(this + 97) = a5;
  *(this + 98) = 0;
  return this;
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v11);
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

unint64_t amber::NSURLHTTPRequest::readInputData(amber::NSURLHTTPRequest *this, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 6) >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = *(this + 6);
  }

  v19 = &off_2A1DDFDA8;
  __dst = a2;
  v21 = a3;
  if ((a3 & 0x8000000000000000) != 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  amber::ConstMemoryView::first(this + 32, v7, a7, v17);
  if (__n > v21)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v9);
    v16 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v16, "memory invalid range");
LABEL_13:
    __cxa_throw(v16, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(__dst, v17[1], __n);
  v11 = *(this + 6);
  v12 = v11 >= v7;
  v13 = v11 - v7;
  if (!v12)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", v10);
    v16 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v16, "memory invalid range");
    goto LABEL_13;
  }

  *(this + 5) += v7;
  *(this + 6) = v13;
  return v7;
}

void sub_2969EC54C(void *a1)
{
  MEMORY[0x29C25C000](v1, 0x10E1C40C36AA96ELL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969EC538);
}

amber::NSURLHTTPSession *amber::NSURLHTTPSession::NSURLHTTPSession(amber::NSURLHTTPSession *this, const amber::HTTPContext *a2, unsigned int a3)
{
  *this = &unk_2A1DE3820;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 3) = 0;
  v5 = (this + 24);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = &unk_2A1DE38D0;
  *(this + 14) = 0;
  *(this + 8) = this + 64;
  *(this + 9) = this + 64;
  *(this + 5) = xmmword_296A14210;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 1018212795;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 188) = 0u;
  v6 = [[AmberDylibNSURLSession alloc] initWithAmberSession:this];
  if (!v6)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "NSURLHTTPSession", 0x11B, 0, "creating session", v7);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "NSURLHTTPSession", 0x12B, 0, "NSURLHTTPSession failed to initialize", v10);
    exception = __cxa_allocate_exception(8uLL);
    *exception = "NSURLHTTPSession::NSURLHTTPSession";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  v8 = v6;
  *(this + 1) = v8;
  v12 = 0;
  std::vector<amber::NBDClientEndpoint *>::resize(v5, a3, &v12);
  if (a3)
  {
    operator new();
  }

  return this;
}

void sub_2969EC7C8(_Unwind_Exception *a1)
{
  amber::SharedQueue<amber::NSURLHTTPRequest *>::~SharedQueue(v3);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void amber::NSURLHTTPSession::~NSURLHTTPSession(id *this)
{
  *this = &unk_2A1DE3820;
  amber::NSURLHTTPSession::invalidateAndCancel(this);

  this[1] = 0;
  v2 = this[3];
  v3 = this[4];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  amber::SharedQueue<amber::NSURLHTTPRequest *>::~SharedQueue((this + 6));
  v4 = this[3];
  if (v4)
  {
    this[4] = v4;
    operator delete(v4);
  }
}

{
  amber::NSURLHTTPSession::~NSURLHTTPSession(this);

  JUMPOUT(0x29C25C000);
}

void amber::NSURLHTTPSession::invalidateAndCancel(amber::NSURLHTTPSession *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 50, &v1, 1u);
  if (!v1)
  {
    v3 = *(this + 1);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 session];
      [v5 invalidateAndCancel];
    }

    if (*(this + 4) != *(this + 3))
    {
      v6 = 0;
      do
      {
        v7 = 0;
        amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 48, &v7);
        ++v6;
      }

      while (v6 < (*(this + 4) - *(this + 3)) >> 3);
    }
  }
}

uint64_t amber::NSURLHTTPSession::acquire(amber::NSURLHTTPSession *this)
{
  if (atomic_load(this + 50))
  {
    return 0;
  }

  v6[1] = v1;
  v6[2] = v2;
  v6[0] = 0;
  if ((amber::SharedQueue<amber::SharedBlockCache::WriteTask *>::removeFirst(this + 48, v6) & 0x80000000) == 0)
  {
    return v6[0];
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "acquire", 0x144, 0, "acquire request", v5);
  return 0;
}

void amber::NSURLHTTPSession::release(uint64_t a1, char **lpsrc, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (lpsrc)
  {
    v8 = **lpsrc;
    if (v9)
    {
      if (v9[2])
      {
        amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "release", 0x152, 0, "invalid request state", a7);
      }

      amber::SharedQueue<amber::NSURLHTTPRequest *>::insertFirst(a1 + 48);
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "release", 0x151, 0, "invalid request", a7);
}

void amber::NSURLHTTPSession::enqueue(uint64_t a1, char **lpsrc, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  {
    v14 = v9;
    if ((amber::NSURLHTTPSession::createAndResumeTask(a1, v9, v10, v11, v12, v13, a7) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "enqueue", 0x160, 0, "enqueue request", v15);
      v14[80] = 1;
      *(v14 + 21) = 901;
      v16 = *(v14 + 14);
      if (v16)
      {
        v16(*(v14 + 13), v14 + 56);
      }

      v17 = *(v14 + 2);
      if (v17)
      {

        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
        *(v14 + 5) = 0;
        *(v14 + 6) = 0;
        *(v14 + 13) = 0;
        *(v14 + 14) = 0;
      }

      amber::SharedQueue<amber::NSURLHTTPRequest *>::insertFirst(a1 + 48);
    }
  }

  else
  {

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "enqueue", 0x15D, 0, "invalid request", a7);
  }
}

uint64_t amber::NSURLHTTPSession::createAndResumeTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 120) <= 0)
  {
    v16 = "no more attempts allowed";
    v17 = 383;
LABEL_8:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "createAndResumeTask", v17, 0, v16, a7);
    return 0xFFFFFFFFLL;
  }

  if (!*(a2 + 16))
  {
    v16 = "invalid request";
    v17 = 384;
    goto LABEL_8;
  }

  --*(a2 + 120);
  v10 = *(a1 + 8);
  v11 = [v10 session];
  v12 = *(a2 + 16);
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = ___ZN5amber16NSURLHTTPSession19createAndResumeTaskEPNS_16NSURLHTTPRequestE_block_invoke;
  v19[3] = &__block_descriptor_48_e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
  v19[4] = a1;
  v19[5] = a2;
  v13 = [v11 dataTaskWithRequest:v12 completionHandler:v19];

  if (v13)
  {
    [v13 resume];
    v15 = 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "createAndResumeTask", 0x186, 0, "dataTaskWithRequest", v14);
    v15 = 0xFFFFFFFFLL;
  }

  return v15;
}

void amber::NSURLHTTPSession::complete(amber::NSURLHTTPSession *this, amber::NSURLHTTPRequest *a2, NSData *a3, NSHTTPURLResponse *a4, NSError *a5)
{
  v36 = *MEMORY[0x29EDCA608];
  v34 = a2;
  v28 = a3;
  v25 = a4;
  v8 = [(NSHTTPURLResponse *)v25 statusCode];
  v29 = [(NSHTTPURLResponse *)v25 allHeaderFields];
  if (!a5)
  {
    v9 = 0;
    if (v8 < 400 || v8 == 416)
    {
LABEL_11:
      v26 = v9;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v12 = v29;
      v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v13)
      {
        v14 = *v31;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v12 valueForKey:v16];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v16;
                v19 = [v16 UTF8String];
                v20 = v17;
                amber::HTTPHeadersAppendWithFormat(a2 + 56, "%s: %s", v19, [v17 UTF8String]);
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v13);
      }

      if ((amber::NSURLHTTPRequest::appendOutputData(a2, v28, v8) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "complete", 0x1BE, 0, "appendOutputData", v21);
        v26 = 1;
      }

      *(a2 + 80) = v26;
      *(a2 + 21) = v8;
      v22 = *(a2 + 14);
      if (v22)
      {
        v22(*(a2 + 13), a2 + 56);
      }

      v23 = *(a2 + 2);
      if (v23)
      {

        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
        *(a2 + 5) = 0;
        *(a2 + 6) = 0;
        *(a2 + 13) = 0;
        *(a2 + 14) = 0;
      }

      amber::SharedQueue<amber::NSURLHTTPRequest *>::insertFirst(this + 48);
    }
  }

  if (*(a2 + 30) < 1 || v8 != 408 && v8 != 503 && v8 != 429)
  {
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  usleep((*(a2 + 16) * 1000000.0));
  *(a2 + 16) = *(a2 + 16) + *(a2 + 16);
  amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "complete", 0x1AF, 0, "Retrying HTTP request", v10);
  if (amber::NSURLHTTPSession::createAndResumeTask(this, a2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "complete", 0x1B1, 0, "retry task", v11);
    goto LABEL_10;
  }

  v24 = *MEMORY[0x29EDCA608];
}

uint64_t amber::NSURLHTTPRequest::appendOutputData(amber::NSURLHTTPRequest *this, NSData *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (!*(this + 3))
  {
    goto LABEL_18;
  }

  v7 = *(this + 11);
  v8 = *(this + 12);
  v9 = [(NSData *)v5 length];
  v15 = v9;
  v16 = v8 - v7;
  if (v7 || v16 != -1)
  {
    if (a3 == 200)
    {
      amber::log(3, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "appendOutputData", 0x279, 0, "HTTP server returned 200 for a range request", v14);
      v18 = v15 - v7;
      if (v15 >= v8)
      {
        v18 = v8 - v7;
      }

      if (v15 >= v7)
      {
        v17 = v7;
      }

      else
      {
        v17 = 0;
      }

      if (v15 >= v7)
      {
        v15 = v18;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v17 = 0;
      if (v9 >= v16)
      {
        v15 = v8 - v7;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((amber::Buffer::reserveEndCapacity(*(this + 3), v15, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "appendOutputData", 0x285, 0, "malloc", v19);
LABEL_21:
    v28 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  v20 = *(this + 3);
  amber::Buffer::buf(v20, v19, v31);
  amber::MutableMemoryView::operator+(v31, *(v20 + 88), v21, v30);
  [(NSData *)v6 getBytes:v30[1] range:v17, v15];
  if ((amber::Buffer::grow(*(this + 3), v15, v22, v23, v24, v25, v26) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "appendOutputData", 0x287, 0, "malloc", v27);
    goto LABEL_21;
  }

LABEL_18:
  v28 = 0;
LABEL_22:

  return v28;
}

void amber::NSURLHTTPRequest::~NSURLHTTPRequest(amber::NSURLHTTPRequest *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3868;
  if (*(this + 2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "~NSURLHTTPRequest", 0x1D6, 0, "deleting in-flight request", a7);
  }

  std::__list_imp<std::string>::clear(this + 7);
}

{
  amber::NSURLHTTPRequest::~NSURLHTTPRequest(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::NSURLHTTPRequest::prepare(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10)
{
  v60 = &v60;
  v61 = &v60;
  v62 = 0;
  v11 = *a7;
  v10 = a7[1];
  if (*a7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == -1;
  }

  v13 = !v12;
  v14 = a1 + 16;
  if (!*(a1 + 16))
  {
    v19 = [AmberDylibNSURLRequest alloc];
    v20 = MEMORY[0x29EDB8E70];
    v21 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a3];
    v22 = [v20 URLWithString:v21];
    v23 = [(AmberDylibNSURLRequest *)v19 initWithURL:v22 amberRequest:a1];

    if (!v23)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x1F8, 0, "creating request", v24);
      v30 = *v14;
      if (*v14)
      {
LABEL_23:

        *v14 = 0;
        *(v14 + 8) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        v15 = 0xFFFFFFFFLL;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        goto LABEL_24;
      }

LABEL_20:
      v15 = 0xFFFFFFFFLL;
LABEL_24:

      goto LABEL_25;
    }

    if (a2 - 1 >= 6)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x202, 0, "invalid HTTP verb", v24);
      goto LABEL_22;
    }

    [(AmberDylibNSURLRequest *)v23 setHTTPMethod:off_29EE50250[a2 - 1]];
    *(a1 + 40) = *(a5 + 8);
    if (*(a5 + 16))
    {
      v25 = [[AmberDylibNSURLInputStream alloc] initWithAmberRequest:a1];
      [(AmberDylibNSURLRequest *)v23 setHTTPBodyStream:v25];

      if ((amber::HTTPHeadersAppendWithFormat(&v60, "Content-Length: %zu", *(a5 + 16)) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x20B, 0, "Content-Length header", v26);
        goto LABEL_22;
      }
    }

    if (v13 && (amber::HTTPHeadersAppendWithFormat(&v60, "Range: bytes=%llu-%llu", v11, v10 - 1) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x214, 0, "Range header", v27);
      goto LABEL_22;
    }

    v28 = *(*(a1 + 8) + 16);
    v29 = (v28 + 96);
    if (*(v28 + 119) < 0)
    {
      if (*(v28 + 104))
      {
        v29 = *v29;
      }

      else
      {
        v29 = 0;
      }
    }

    else if (!*(v28 + 119))
    {
      v29 = 0;
    }

    if (!v29)
    {
      v29 = "Not A Ninja 2.0";
    }

    if ((amber::HTTPHeadersAppendWithFormat(&v60, "User-Agent: %s", v29) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x219, 0, "User-Agent header", v32);
      goto LABEL_22;
    }

    v33 = *(*(a1 + 8) + 16);
    v34 = (v33 + 288);
    if (*(v33 + 311) < 0)
    {
      if (!*(v33 + 296))
      {
        goto LABEL_41;
      }

      v34 = *v34;
      if (!v34)
      {
        goto LABEL_41;
      }
    }

    else if (!*(v33 + 311))
    {
      goto LABEL_41;
    }

    if ((amber::HTTPHeadersAppendWithFormat(&v60, "Authorization: %s", v34) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x21E, 0, "Authorization header", v35);
      goto LABEL_22;
    }

LABEL_41:
    std::list<std::string>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::string,void *>,std::__list_const_iterator<std::string,void *>>(&v60, &v60, *(a4 + 8), a4);
    if (((*(**(*(a1 + 8) + 16) + 32))(*(*(a1 + 8) + 16), a2, a3, a5, &v60) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x224, 0, "Failed to sign request", v36);
    }

    else
    {
      v37 = v61;
      if (v61 == &v60)
      {
LABEL_65:
        *(a1 + 24) = a6;
        *(a1 + 88) = *a7;
        if (a8)
        {
          v53 = 4;
        }

        else
        {
          v53 = 0;
        }

        *(a1 + 120) = v53;
        *(a1 + 128) = 0x3FD0000000000000;
        *(a1 + 104) = a9;
        *(a1 + 112) = a10;
        *(a1 + 80) = 0;
        *(a1 + 84) = -1;
        std::__list_imp<std::string>::clear((a1 + 56));
        v15 = 0;
        *(a1 + 16) = v23;
        goto LABEL_24;
      }

      v38 = MEMORY[0x29EDCA600];
      while (1)
      {
        v39 = v37 + 2;
        v40 = std::string::find((v37 + 2), 58, 0);
        if (v40 == -1)
        {
          break;
        }

        v42 = v40;
        std::string::basic_string(&v59, (v37 + 2), 0, v40, &v63);
        v43 = v42 + 1;
        while (1)
        {
          v44 = v43;
          v45 = *(v37 + 39);
          v46 = v45 < 0 ? v37[3] : *(v37 + 39);
          ++v43;
          if (v44 + 1 >= v46)
          {
            break;
          }

          v47 = v37 + 2;
          if ((v45 & 0x80000000) != 0)
          {
            v47 = *v39;
          }

          v48 = *(v47 + v44);
          if ((v48 & 0x80000000) != 0)
          {
            v49 = __maskrune(v48, 0x4000uLL);
          }

          else
          {
            v49 = *(v38 + 4 * v48 + 60) & 0x4000;
          }

          if (!v49)
          {
            LOBYTE(v45) = *(v37 + 39);
            break;
          }
        }

        if ((v45 & 0x80) != 0)
        {
          v39 = *v39;
        }

        v50 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v39 + v44];
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v59;
        }

        else
        {
          v51 = v59.__r_.__value_.__r.__words[0];
        }

        v52 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v51];
        [(AmberDylibNSURLRequest *)v23 setValue:v50 forHTTPHeaderField:v52];

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        v37 = v37[1];
        if (v37 == &v60)
        {
          goto LABEL_65;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x246, 0, "invalid header", v41);
    }

LABEL_22:
    v30 = v23;
    *v14 = v30;
    if (v30)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/NSURLSessionHTTPBackend.mm", "prepare", 0x1F2, 0, "inconsistent state", a7);
  v15 = 0xFFFFFFFFLL;
LABEL_25:
  std::__list_imp<std::string>::clear(&v60);
  return v15;
}

void amber::SharedQueue<amber::NSURLHTTPRequest *>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<amber::NSURLHTTPRequest *>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedQueue<amber::NSURLHTTPRequest *>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE38D0;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

uint64_t AmberCryptoBlobDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void AmberCryptoBlobClear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 16) = 0;
  v7[0] = &off_2A1DDFDA8;
  v7[1] = a1 + 20;
  v7[2] = 256;
  amber::MutableMemoryView::operator+(v7, 0, a7, v8);
  bzero(v8[1], v8[2]);
}

uint64_t AmberCryptoBlobAppend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 16);
  v8 = 0xFFFFFFFFLL;
  v9 = __CFADD__(v7, a3);
  v10 = v7 + a3;
  if (!v9 && v10 <= 0x100)
  {
    v13[0] = &off_2A1DDFC68;
    v13[1] = a2;
    v13[2] = a3;
    if (a3 < 0 || !a2 && a3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(a1 + 8, v13, a3, a4, a5, a6, a7);
    return 0;
  }

  return v8;
}

uint64_t AmberCryptoBlobEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFDA8;
  v9[1] = a1 + 20;
  v9[2] = 256;
  amber::MutableMemoryView::operator+(v9, *(a1 + 16), a7, v8);
  return v8[1];
}

uint64_t AmberCryptoBlobGrow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 16);
  v8 = 0xFFFFFFFFLL;
  v9 = __CFADD__(v7, a2);
  v10 = v7 + a2;
  if (!v9 && v10 <= 0x100)
  {
    amber::CryptoBlobBase<256u>::resize(a1, v10, a3, a4, a5, a6, a7);
    return 0;
  }

  return v8;
}

uint64_t AmberDigest_PSHA256(amber *a1, uint64_t a2, unint64_t a3, int a4)
{
  v4 = a4;
  v23[0] = &unk_2A1DDFD28;
  v23[2] = 0;
  v23[3] = 0;
  v23[1] = off_2A1DDFD48;
  v23[5] = 0;
  v23[6] = 0;
  v23[4] = &off_2A1DDFDA8;
  v23[7] = &off_2A1DDFC68;
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  v27 = 0;
  if (!a4)
  {
    v4 = amber::defaultThreadCount(a1);
  }

  v7 = (*(*a1 + 88))(a1);
  if (v7 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoBlob.cpp", "AmberDigest_PSHA256", 0x8D, 0, "invalid input stream", v12);
  }

  else
  {
    v21 = a3 + v7 - 1;
    if (!((v21 / a3) >> 59) && (amber::Buffer::resize(v23, 32 * (v21 / a3), v8, v9, v10, v11, v12) & 0x80000000) == 0)
    {
      if (v4)
      {
        operator new();
      }

      operator new();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoBlob.cpp", "AmberDigest_PSHA256", 0x92, 0, "invalid input stream size", v12, v21);
  }

  *(a2 + 16) = 0;
  v28[0] = &off_2A1DDFDA8;
  v28[1] = a2 + 20;
  v28[2] = 256;
  amber::MutableMemoryView::operator+(v28, 0, v13, v29);
  bzero(v29[1], v29[2]);
  amber::Buffer::~Buffer(v23, v14, v15, v16, v17, v18, v19);
  return 0xFFFFFFFFLL;
}

void sub_2969EE584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  amber::Buffer::~Buffer(&a15, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

double ParallelSHA256Task::ParallelSHA256Task(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_2A1DE3900;
  *(a1 + 8) = 0;
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
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  *(a1 + 136) = a5;
  *(a1 + 144) = a4;
  *(a1 + 152) = a6;
  return result;
}

char **amber::ThreadPool<ParallelSHA256Task>::acquire(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  result = amber::ThreadPoolBase::acquire((a1 + 8), a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v8 = **result;
  }

  return result;
}

uint64_t AmberDeriveKey_HKDF_SHA256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v56 = *MEMORY[0x29EDCA608];
  v37 = &unk_2A1DDFDD8;
  v38 = &unk_2A1DDFE08;
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
  v54 = 0u;
  v55 = 0;
  v18 = &unk_2A1DDFDD8;
  v19 = &unk_2A1DDFE08;
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
  if (a4)
  {
    v11 = *(a4 + 16);
    v15 = &off_2A1DDFC68;
    v16 = a4 + 20;
    v17 = v11;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v38, &v15, a3, a4, a5, a6, a7);
  }

  if (a5)
  {
    v12 = *(a5 + 16);
    v15 = &off_2A1DDFC68;
    v16 = a5 + 20;
    v17 = v12;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v19, &v15, a3, a4, a5, a6, a7);
  }

  result = amber::KDF_HKDF_SHA256(a2, a3, a1, &v37, &v18, a6, a7);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void ParallelSHA256Task::~ParallelSHA256Task(ParallelSHA256Task *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3900;
  amber::Buffer::~Buffer((this + 16), a2, a3, a4, a5, a6, a7);
}

{
  *this = &unk_2A1DE3900;
  amber::Buffer::~Buffer((this + 16), a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

uint64_t ParallelSHA256Task::run(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = this;
  v57 = *MEMORY[0x29EDCA608];
  v9 = *(this + 136);
  v8 = *(this + 144);
  v10 = v8 * *(this + 8);
  if (v10 >= v9)
  {
    goto LABEL_11;
  }

  v11 = v10 + v8;
  if (v9 < v11)
  {
    v11 = *(this + 136);
  }

  v12 = v11 - v10;
  amber::Buffer::resize((this + 16), 0, a3, a4, a5, a6, a7);
  v42[0] = &unk_2A1DDFDD8;
  v42[1] = &unk_2A1DDFE08;
  memset(&v42[2], 0, 48);
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
  this = amber::Buffer::reserveEndCapacity((v7 + 16), v12, v13, v14, v15, v16, v17);
  if ((this & 0x80000000) != 0 || (v19 = *(v7 + 120), amber::BufferProtocol<amber::Buffer>::endView(v7 + 16, v12, v18, v40), this = (*(*v19 + 48))(v19, v40, v10), this != v12) || (this = amber::Buffer::grow((v7 + 16), v12, v20, v21, v22, v23, v24), (this & 0x80000000) != 0) || (amber::Buffer::constBuf(v7 + 16, v25, v41), amber::ConstMemoryView::view(v41, *(v7 + 96), *(v7 + 104) - *(v7 + 96), v26, v39), this = amber::digest_SHA256(v42, v39, v27, v28, v29, v30, v31), (this & 0x80000000) != 0) || LODWORD(v42[2]) != 32)
  {
LABEL_11:
    v36 = 0;
    atomic_compare_exchange_strong(*(v7 + 152), &v36, 1u);
  }

  else
  {
    v33 = *(v7 + 128);
    v34 = (v33 + 32 * *(v7 + 8));
    v41[0] = &off_2A1DDFDA8;
    v41[1] = v34;
    v41[2] = 32;
    if (!v33)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", v32);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v35 = *(&v42[4] + 4);
    *v34 = *(&v42[2] + 4);
    v34[1] = v35;
  }

  v37 = *MEMORY[0x29EDCA608];
  return this;
}

void *amber::ThreadPool<ParallelSHA256Task>::~ThreadPool(void *a1)
{
  *a1 = &unk_2A1DE3940;
  amber::ThreadPoolBase::~ThreadPoolBase((a1 + 1));
  return a1;
}

void amber::ThreadPool<ParallelSHA256Task>::~ThreadPool(void *a1)
{
  *a1 = &unk_2A1DE3940;
  amber::ThreadPoolBase::~ThreadPoolBase((a1 + 1));

  JUMPOUT(0x29C25C000);
}

time_t amber::JSONInputStream::Token::parseTime(const char **this)
{
  if (*this == 3)
  {
    amber::zero(void *,unsigned long)::memset_func(&v3, 0, 56);
    if (strptime(this[4], "%FT%TZ", &v3))
    {
      return timegm(&v3);
    }
  }

  else if (*this == 4)
  {
    return this[5];
  }

  return -1;
}

amber::JSONInputStream *amber::JSONInputStream::JSONInputStream(amber::JSONInputStream *this, amber::Stream *a2)
{
  *this = &unk_2A1DE3970;
  *(this + 1) = a2;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 121) = 0u;
  *(this + 36) = -1;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 7) = 0x10000;
  v3 = malloc_type_malloc(0x10000uLL, 0xF93785E2uLL);
  if (!v3)
  {
    v5 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v5, "malloc", v6);
    *(this + 10) = 0;
    v7 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONInputStream.cpp", "JSONInputStream", 0x33, *v7, "malloc", v8);
    free(*(this + 10));
    *(this + 10) = 0;
    if (*(this + 16) == 1)
    {
      v9 = *(this + 1);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(this + 1) = 0;
    }

    exception = __cxa_allocate_exception(8uLL);
    *exception = "JSONInputStream::JSONInputStream";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  *(this + 10) = v3;
  *(this + 20) = 0x100000000;
  return this;
}

void sub_2969EEF04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void amber::JSONInputStream::~JSONInputStream(void **this)
{
  *this = &unk_2A1DE3970;
  free(this[10]);
  if (*(this + 16) == 1)
  {
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v3 = this[4];
  if (v3)
  {
    this[5] = v3;
    operator delete(v3);
  }
}

{
  amber::JSONInputStream::~JSONInputStream(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::JSONInputStream::read(amber::JSONInputStream *this, amber::JSONInputStream::Token *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 5);
  if (v7 == 9 || v7 == -1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONInputStream.cpp", "read", 0x4E, 0, "unexpected read call", a7);
    return 0xFFFFFFFFLL;
  }

  if (*(this + 136) == 1)
  {
    result = 0;
    *a2 = *(this + 9);
    v12 = *(this + 10);
    v13 = *(this + 11);
    v14 = *(this + 12);
    *(a2 + 8) = *(this + 26);
    *(a2 + 2) = v13;
    *(a2 + 3) = v14;
    *(a2 + 1) = v12;
    *(this + 136) = 0;
    return result;
  }

  if (*(this + 111) < 0)
  {
    **(this + 11) = 0;
    *(this + 12) = 0;
  }

  else
  {
    *(this + 88) = 0;
    *(this + 111) = 0;
  }

  v15 = (this + 88);
  if (*(this + 135) < 0)
  {
    **(this + 14) = 0;
    *(this + 15) = 0;
  }

  else
  {
    *(this + 112) = 0;
    *(this + 135) = 0;
  }

  v16 = this + 112;
  v17 = MEMORY[0x29EDCA600];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v18 = *(this + 9);
        v19 = *(this + 10);
        if (v18 >= *(this + 8))
        {
          v20 = *(this + 1);
          v21 = *(this + 7);
          v55[0] = &off_2A1DDFDA8;
          v55[1] = v19;
          v55[2] = v21;
          if (v21 < 0 || (!v19 ? (v22 = v21 == 0) : (v22 = 1), !v22))
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25BE90](exception, "memory invalid args");
            __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          v23 = (*(*v20 + 40))(v20, v55);
          if (v23 < 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONInputStream.cpp", "read", 0x5D, 0, "read error: %zd", a7, v23);
            goto LABEL_149;
          }

          if (!v23)
          {
            v42 = "EOF reached";
            v43 = 94;
            goto LABEL_148;
          }

          v18 = 0;
          *(this + 8) = v23;
          *(this + 9) = 0;
          v19 = *(this + 10);
        }

        v24 = 0;
        *(this + 9) = v18 + 1;
        v25 = *(v19 + v18);
        v26 = *(v19 + v18);
        v27 = *(this + 5);
        if (v27 > 3)
        {
          break;
        }

        if (v27 > 1)
        {
          if (v27 == 2)
          {
            if (((v26 - 98) >> 1) | ((v26 - 98) << 7)) < 0xAu && ((0x341u >> (((v26 - 98) >> 1) | ((v26 - 98) << 7))))
            {
              v26 = byte_296A15CFB[(((v26 - 98) >> 1) | ((v26 - 98) << 7))];
            }

            else if (v25 == 102)
            {
              v26 = 12;
            }

            std::string::push_back((this + 112), v26);
            v24 = 1;
            *(this + 5) = 1;
            goto LABEL_65;
          }

          if (v25 < 0 || (*(v17 + 4 * v25 + 60) & 0x400) == 0)
          {
            v44 = 0;
            *(this + 5) = 5;
            *(this + 9) = v18;
            v45 = 4;
            goto LABEL_156;
          }

          goto LABEL_43;
        }

        if (v27)
        {
          if (v27 != 1)
          {
            goto LABEL_65;
          }

          if (v25 != 92)
          {
            if (v25 == 34)
            {
              v44 = 0;
              *(this + 5) = 5;
              v45 = 3;
              goto LABEL_156;
            }

LABEL_43:
            v28 = (this + 112);
LABEL_63:
            std::string::push_back(v28, v25);
LABEL_64:
            v24 = 1;
            goto LABEL_65;
          }

          v31 = 2;
          goto LABEL_119;
        }

        if (*(this + 135) < 0)
        {
          **(this + 14) = 0;
          *(this + 15) = 0;
          if ((v25 & 0x80000000) == 0)
          {
LABEL_50:
            if ((*(v17 + 4 * v25 + 60) & 0x4000) != 0)
            {
              goto LABEL_64;
            }

            goto LABEL_93;
          }
        }

        else
        {
          *(this + 112) = 0;
          *(this + 135) = 0;
          if ((v25 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }
        }

        if (__maskrune(v25, 0x4000uLL))
        {
          goto LABEL_64;
        }

LABEL_93:
        if (v25 == 45 || v25 == 43)
        {
LABEL_129:
          std::string::push_back((this + 112), v25);
          *(this + 5) = 3;
          goto LABEL_64;
        }

        if (v25 != 34)
        {
          if ((v25 & 0x80000000) == 0 && (*(v17 + 4 * v25 + 60) & 0x400) != 0)
          {
            goto LABEL_129;
          }

          if (v25 == 123)
          {
            LODWORD(v55[0]) = 0;
            std::vector<unsigned int>::push_back[abi:ne200100](this + 4, v55);
            v45 = 0;
            *(this + 5) = 6;
            v44 = 1;
            goto LABEL_156;
          }

          if (v25 == 91)
          {
            v44 = 1;
            LODWORD(v55[0]) = 1;
            std::vector<unsigned int>::push_back[abi:ne200100](this + 4, v55);
            *(this + 5) = 0;
            v45 = 1;
            goto LABEL_156;
          }

          if ((v25 - 97) > 0x19)
          {
            v32 = *(this + 4);
            v33 = *(this + 5);
            if (v32 != v33)
            {
              v38 = (*(v33 - 4) & 1) == 0 || v25 != 93;
              v39 = (*(v33 - 4) & 1) == 0 && v25 == 125;
              if (!v38 || v39)
              {
                goto LABEL_141;
              }

              goto LABEL_122;
            }

            v42 = "invalid JSON state";
            v43 = 138;
LABEL_148:
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONInputStream.cpp", "read", v43, 0, v42, a7);
LABEL_149:
            result = 0xFFFFFFFFLL;
            *(this + 5) = -1;
            return result;
          }

          std::string::push_back((this + 112), v25);
          v31 = 4;
          goto LABEL_119;
        }

        *(this + 5) = 1;
      }

      if (v27 <= 5)
      {
        break;
      }

      switch(v27)
      {
        case 6:
          if (*(this + 111) < 0)
          {
            **(this + 11) = 0;
            *(this + 12) = 0;
            if (v25 < 0)
            {
LABEL_98:
              if (__maskrune(v25, 0x4000uLL))
              {
                goto LABEL_64;
              }

              goto LABEL_99;
            }
          }

          else
          {
            *(this + 88) = 0;
            *(this + 111) = 0;
            if (v25 < 0)
            {
              goto LABEL_98;
            }
          }

          if ((*(v17 + 4 * v25 + 60) & 0x4000) != 0)
          {
            goto LABEL_64;
          }

LABEL_99:
          if (v25 != 34)
          {
            if (v25 == 125)
            {
              v32 = *(this + 4);
              v33 = *(this + 5);
              if (v33 != v32)
              {
                LOBYTE(v34) = *(v33 - 4);
LABEL_103:
                if ((v34 & 1) == 0)
                {
                  goto LABEL_141;
                }
              }

LABEL_145:
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONInputStream.cpp", "read", 0x10E, 0, "invalid char %c line %d", a7, v25, *(this + 6));
              goto LABEL_149;
            }

LABEL_122:
            v24 = 0;
            goto LABEL_65;
          }

          v31 = 7;
LABEL_119:
          *(this + 5) = v31;
          break;
        case 7:
          v28 = (this + 88);
          if (v25 != 34)
          {
            goto LABEL_63;
          }

          std::string::push_back(v28, 0);
          *(this + 5) = 8;
          break;
        case 8:
          if (v25 < 0)
          {
            if (!__maskrune(v25, 0x4000uLL))
            {
              goto LABEL_106;
            }

            goto LABEL_64;
          }

          if ((*(v17 + 4 * v25 + 60) & 0x4000) != 0)
          {
            goto LABEL_64;
          }

LABEL_106:
          if (v25 != 58)
          {
            goto LABEL_122;
          }

          *(this + 5) = 0;
          break;
        default:
LABEL_65:
          if (v26 == 10)
          {
            ++*(this + 6);
            v25 = 10;
            if (!v24)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v25 = v26;
            if (!v24)
            {
              goto LABEL_145;
            }
          }

          break;
      }
    }

    if (v27 != 4)
    {
      break;
    }

    if ((v25 - 97) > 0x19)
    {
      *(this + 5) = 5;
      *(this + 9) = v18;
      v29 = *(this + 135);
      if ((v29 & 0x80) != 0)
      {
        v35 = *(this + 15);
        if (v35 == 4)
        {
          if (**v16 == 1702195828)
          {
            goto LABEL_152;
          }
        }

        else if (v35 == 5 && **v16 == 1936482662 && *(*v16 + 4) == 101)
        {
LABEL_152:
          v44 = 0;
          v45 = 6;
          goto LABEL_156;
        }

        if (*(this + 15) != 4)
        {
          goto LABEL_122;
        }

        v37 = *v16;
      }

      else
      {
        if (v29 != 4)
        {
          if (v29 == 5 && *v16 == 1936482662 && *(this + 116) == 101)
          {
            goto LABEL_152;
          }

          goto LABEL_122;
        }

        v37 = (this + 112);
        if (*v16 == 1702195828)
        {
          goto LABEL_152;
        }
      }

      if (*v37 == 1819047278)
      {
        v44 = 0;
        v45 = 7;
        goto LABEL_156;
      }

      goto LABEL_122;
    }

    std::string::push_back((this + 112), v25);
  }

  if (v25 < 0)
  {
    if (__maskrune(v25, 0x4000uLL))
    {
      goto LABEL_64;
    }
  }

  else if ((*(v17 + 4 * v25 + 60) & 0x4000) != 0)
  {
    goto LABEL_64;
  }

  v32 = *(this + 4);
  v33 = *(this + 5);
  if (v32 == v33)
  {
    v42 = "invalid JSON state";
    v43 = 205;
    goto LABEL_148;
  }

  v34 = *(v33 - 4);
  if (v25 == 125)
  {
    goto LABEL_103;
  }

  if (v25 != 93)
  {
    if (v25 != 44)
    {
      goto LABEL_122;
    }

    if (v34)
    {
      v31 = 0;
    }

    else
    {
      v31 = 6;
    }

    goto LABEL_119;
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_145;
  }

LABEL_141:
  v44 = 0;
  v40 = v33 - 4;
  *(this + 5) = v40;
  if (v32 == v40)
  {
    v41 = 9;
  }

  else
  {
    v41 = 5;
  }

  *(this + 5) = v41;
  v45 = 2;
LABEL_156:
  amber::zero(void *,unsigned long)::memset_func(a2, 0, 72);
  *a2 = v45;
  if (*(this + 111) < 0)
  {
    v46 = *(this + 12);
    if (v46)
    {
      v46 = *v15;
    }
  }

  else if (*(this + 111))
  {
    v46 = this + 88;
  }

  else
  {
    v46 = 0;
  }

  *(a2 + 1) = v46;
  v47 = (*(this + 5) - *(this + 4)) >> 2;
  *(a2 + 16) = v47;
  *(a2 + 17) = *(this + 6);
  if (v44)
  {
    *(a2 + 16) = v47 - 1;
  }

  switch(v45)
  {
    case 6:
      v52 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(this + 14, "true");
      result = 0;
      *(a2 + 52) = v52;
      break;
    case 4:
      if (*(this + 135) < 0)
      {
        v16 = *v16;
      }

      if (*v16 == 45)
      {
        v50 = strtoull(v16 + 1, 0, 10);
        result = 0;
        *(a2 + 5) = v50;
        v51 = -1;
      }

      else
      {
        v53 = strtoull(v16, 0, 0);
        result = 0;
        *(a2 + 5) = v53;
        v51 = v53 != 0;
      }

      *(a2 + 12) = v51;
      break;
    case 3:
      v48 = *(this + 135);
      if (v48 < 0)
      {
        v49 = *(this + 14);
        v48 = *(this + 15);
      }

      else
      {
        v49 = this + 112;
      }

      *(a2 + 2) = v49;
      *(a2 + 3) = v48;
      if (*(this + 135) < 0)
      {
        v16 = *v16;
      }

      result = 0;
      *(a2 + 4) = v16;
      break;
    default:
      return 0;
  }

  return result;
}

__n128 amber::JSONInputStream::unread(__n128 *this, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (this[8].n128_u8[8] == 1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/JSON/JSONInputStream.cpp", "unread", 0x136, 0, "multiple unread", a7, v7, v8);
  }

  else
  {
    this[9] = *a2;
    result = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    this[13].n128_u64[0] = a2[4].n128_u64[0];
    this[11] = v10;
    this[12] = v11;
    this[10] = result;
    this[8].n128_u8[8] = 1;
  }

  return result;
}

void amber::JSONInputStream::captureDict()
{
  v1[0] = &unk_2A1DDFD28;
  v1[2] = 0;
  v1[3] = 0;
  v1[1] = off_2A1DDFD48;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = &off_2A1DDFDA8;
  v1[7] = &off_2A1DDFC68;
  v2 = 0u;
  v3 = 0u;
  v4 = 1;
  v5 = 0;
  amber::JSONOutputStream::JSONOutputStream(&v0, v1);
}

uint64_t amber::ThreadPoolBase::ThreadPoolBase(uint64_t result, int a2)
{
  *result = &unk_2A1DE39A0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = &unk_2A1DE1748;
  *(result + 40) = 0;
  *(result + 48) = result + 48;
  *(result + 56) = result + 48;
  *(result + 64) = xmmword_296A14210;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0;
  *(result + 136) = 1018212795;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0;
  *(result + 184) = -1;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_2969EFDC4(_Unwind_Exception *a1)
{
  amber::SharedQueue<unsigned int>::~SharedQueue(v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void amber::ThreadPoolBase::~ThreadPoolBase(amber::ThreadPoolBase *this)
{
  *this = &unk_2A1DE39A0;
  amber::ThreadPoolBase::syncAllThreads(this, -1);
  v2 = *(this + 2) - *(this + 1);
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
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
      v6 = *(this + 1);
      v7 = *(v6 + 8 * v3);
      *(v6 + 8 * v3) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v3;
    }

    while (v5 != v3);
  }

  amber::SharedQueue<unsigned int>::~SharedQueue(this + 32);
  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

{
  amber::ThreadPoolBase::~ThreadPoolBase(this);

  JUMPOUT(0x29C25C000);
}

void amber::ThreadPoolBase::syncAllThreads(amber::ThreadPoolBase *this, int a2)
{
  v4 = *(this + 2) - *(this + 1);
  if (v4)
  {
    v12 = v2;
    v13 = v3;
    v7 = v4 >> 3;
    if ((v4 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 >> 3;
    }

    do
    {
      v11 = -1;
      if ((amber::SharedQueue<unsigned int>::removeFirst(this + 32, &v11) & 0x80000000) != 0 || v7 <= v11)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/ThreadPool.cpp", "syncAllThreads", 0x82, 0, "acquire all threads", v9);
        return;
      }

      --v8;
    }

    while (v8);
    do
    {
      v10 = *(*(this + 1) + 8 * v8);
      *(v10 + 160) = a2;
      amber::Sem::release((v10 + 40));
      ++v8;
    }

    while (v7 != v8);
  }
}

uint64_t amber::ThreadPoolBase::acquire(amber::ThreadPoolBase *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = (this + 184);
  if (*(this + 46) == -1)
  {
    if ((amber::SharedQueue<unsigned int>::removeFirst(this + 32, v7) & 0x80000000) != 0 || (v11 = *(this + 46), v12 = *(this + 1), v11 >= (*(this + 2) - v12) >> 3))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/ThreadPool.cpp", "acquire", 0x69, 0, "no available thread", v10);
      result = 0;
      *v7 = -1;
    }

    else
    {
      return *(*(v12 + 8 * v11) + 24);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/ThreadPool.cpp", "acquire", 0x67, 0, "invalid call to acquire", a7);
    return 0;
  }

  return result;
}

void amber::ThreadPoolBase::release(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a1 + 184);
  v9 = *(a1 + 8);
  if (v8 < (*(a1 + 16) - v9) >> 3 && (v10 = *(v9 + 8 * v8), *(v10 + 24) == a2))
  {
    *(v10 + 160) = 1;
    amber::Sem::release((v10 + 40));
    *(a1 + 184) = -1;
  }

  else
  {

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/ThreadPool.cpp", "release", 0x71, 0, "invalid call to release", a7);
  }
}

void amber::ThreadPoolBase::ThreadPoolTask::ThreadPoolTask(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = &unk_2A1DE39D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 40) = xmmword_296A14210;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1018212795;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  operator new();
}

void sub_2969F01FC(_Unwind_Exception *a1)
{
  MEMORY[0x29C25C000](v3, 0xA1C409BE6959DLL);
  std::condition_variable::~condition_variable(v2);
  std::mutex::~mutex((v1 + 48));
  _Unwind_Resume(a1);
}

void amber::ThreadPoolBase::ThreadPoolTask::~ThreadPoolTask(amber::ThreadPoolBase::ThreadPoolTask *this)
{
  amber::ThreadPoolBase::ThreadPoolTask::~ThreadPoolTask(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE39D0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::condition_variable::~condition_variable((this + 112));
  std::mutex::~mutex((this + 48));
}

void amber::SharedMemoryMessagingEndpoint::SharedMemoryMessagingEndpoint(amber::SharedMemoryMessagingEndpoint *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3A10;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  memset(v34 + 8, 0, 32);
  v7 = *(a2 + 2);
  if (v7 < 0x38)
  {
    v20 = "invalid buffer size";
    v21 = 78;
  }

  else
  {
    v24 = &off_2A1DDFDA8;
    p_s1 = &__s1;
    v26 = 56;
    v9 = *(a2 + 1);
    v30 = &off_2A1DDFC68;
    v31 = v9;
    v32 = v7;
    if ((v7 & 0x8000000000000000) != 0 || !v9)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7, v24, p_s1, v26);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    *&v34[2] = *(v9 + 6);
    v34[0] = v11;
    v34[1] = v12;
    __s1 = v10;
    v13 = v10;
    v14 = DWORD2(v10);
    v15 = HIDWORD(v10);
    AllocationSize = amber::SharedMemoryBlockQueues::getAllocationSize(v10, DWORD2(v10), HIDWORD(v10));
    if (AllocationSize < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "initialize", 0x1D, 0, "invalid parameters", v17, v24, p_s1, v26);
    }

    else
    {
      v24 = v13;
      p_s1 = __PAIR64__(v15, v14);
      v27 = xmmword_296A15D50;
      v18 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
      if (v18 <= 0x4000)
      {
        v19 = 0;
      }

      else
      {
        v19 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
      }

      v28 = (v18 > 0x4000) << 14;
      v29 = v19;
      v26 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
      if (!memcmp(&__s1, &v24, 0x38uLL) && *&v34[0] <= *(a2 + 2))
      {
        operator new();
      }
    }

    v20 = "parameters mismatch";
    v21 = 87;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "SharedMemoryMessagingEndpoint", v21, 0, v20, a7, v24, p_s1);
  v23 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x29C25BE90](v23, "invalid parameters");
  __cxa_throw(v23, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

unint64_t amber::SharedMemoryMessagingEndpoint::getAllocationSize(amber::SharedMemoryMessagingEndpoint *this, amber::SharedMemoryFixedSizeQueue *a2, unsigned int a3)
{
  AllocationSize = amber::SharedMemoryBlockQueues::getAllocationSize(this, a2, a3);
  if (AllocationSize < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "initialize", 0x1D, 0, "invalid parameters", v4);
    v6 = "invalid parameters\n";
    v7 = 110;
  }

  else
  {
    if (AllocationSize + 0x7FFF >= 0)
    {
      return (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
    }

    v6 = "invalid size";
    v7 = 111;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "getAllocationSize", v7, 0, v6, v4);
  return -1;
}

uint64_t amber::SharedMemoryMessagingEndpoint::initialize(amber::SharedMemoryMessagingEndpoint *this, const amber::MutableMemoryView *a2, amber::SharedMemoryFixedSizeQueue *a3, unsigned int a4)
{
  AllocationSize = amber::SharedMemoryBlockQueues::getAllocationSize(a2, a3, a4);
  if (AllocationSize < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "initialize", 0x1D, 0, "invalid parameters", v9);
LABEL_10:
    v19 = "invalid parameters\n";
    v20 = 122;
    goto LABEL_11;
  }

  *&v31 = a2;
  *(&v31 + 1) = __PAIR64__(a4, a3);
  *&v32[8] = xmmword_296A15D50;
  v10 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
  if (v10 <= 0x4000)
  {
    v11 = 0;
  }

  else
  {
    v11 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
  }

  *&v32[24] = (v10 > 0x4000) << 14;
  v33 = v11;
  *v32 = (AllocationSize + 0x7FFF) & 0xFFFFFFFFFFFFC000;
  if (v10 > *(this + 2))
  {
    goto LABEL_10;
  }

  amber::MutableMemoryView::view(this, &v32[8], v9, &v28);
  bzero(v29, v30);
  amber::MutableMemoryView::view(this, &v32[8], v12, &v28);
  v22 = &off_2A1DDFDA8;
  v23 = &v31;
  v24 = 56;
  v25 = &off_2A1DDFC68;
  v26 = &v31;
  v27 = 56;
  if (v30 <= 0x37)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v13, &off_2A1DDFDA8, &v31, 56, &off_2A1DDFC68, &v31, 56);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v14 = v29;
  v15 = v31;
  v16 = *v32;
  v17 = *&v32[16];
  *(v29 + 6) = v33;
  v14[1] = v16;
  v14[2] = v17;
  *v14 = v15;
  amber::MutableMemoryView::view(this, &v32[24], v13, &v28);
  if ((amber::SharedMemoryBlockQueues::initialize(&v28, a2, a3, a4) & 0x80000000) == 0)
  {
    return 0;
  }

  v19 = "init internal queues";
  v20 = 127;
LABEL_11:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "initialize", v20, 0, v19, v9, v22, v23, v24, v25, v26, v27);
  return 0xFFFFFFFFLL;
}

void amber::SharedMemoryMessagingEndpoint::~SharedMemoryMessagingEndpoint(amber::SharedMemoryMessagingEndpoint *this)
{
  *this = &unk_2A1DE3A10;
  v1 = *(this + 1);
  if (v1)
  {
    amber::SharedMemoryBlockQueues::~SharedMemoryBlockQueues(v1);
    MEMORY[0x29C25C000]();
  }
}

{
  amber::SharedMemoryMessagingEndpoint::~SharedMemoryMessagingEndpoint(this);

  JUMPOUT(0x29C25C000);
}

void sub_2969F0C7C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 9);
  if (v4)
  {
    *(v1 + 10) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 7) = v5;
    operator delete(v5);
  }

  amber::SharedMemoryMessagingEndpoint::~SharedMemoryMessagingEndpoint(v1);
  _Unwind_Resume(a1);
}

void amber::SharedMemoryMessagingReceiverEndpoint::~SharedMemoryMessagingReceiverEndpoint(amber::SharedMemoryMessagingReceiverEndpoint *this)
{
  *this = &unk_2A1DE3A30;
  amber::SharedMemoryBlockQueues::allocateAllBlocks(*(this + 1));
  v2 = *(*(this + 1) + 40);
  if (((*(*(this + 1) + 48) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      amber::SharedMemoryFixedSizeQueue::enqueue(*(v2 + 8 * v3), 4294967280);
      amber::SharedMemorySemaphore::release(*(*(*(this + 1) + 64) + 8 * v3++));
      v2 = *(*(this + 1) + 40);
    }

    while (v3 < ((*(*(this + 1) + 48) - v2) >> 3));
  }

  v4 = *(this + 6);
  v5 = *(this + 7);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = *(this + 9);
  if (v6 != *(this + 10))
  {
    amber::SharedQueue<unsigned int>::insertLast(*v6 + 24);
  }

  amber::SharedMemoryBlockQueues::releaseAllBlocks(*(this + 1));
  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  amber::SharedMemoryMessagingEndpoint::~SharedMemoryMessagingEndpoint(this);
}

{
  amber::SharedMemoryMessagingReceiverEndpoint::~SharedMemoryMessagingReceiverEndpoint(this);

  JUMPOUT(0x29C25C000);
}

double amber::SharedMemoryMessagingSender::SharedMemoryMessagingSender(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1DE3A50;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = &off_2A1DDFDA8;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  add_explicit = atomic_fetch_add_explicit((a2 + 16), 1uLL, memory_order_relaxed);
  *(a1 + 16) = add_explicit;
  *(a1 + 24) = add_explicit % ((*(*(a2 + 8) + 48) - *(*(a2 + 8) + 40)) >> 3);
  return result;
}

void amber::SharedMemoryMessagingSender::~SharedMemoryMessagingSender(amber::SharedMemoryMessagingSender *this)
{
  *this = &unk_2A1DE3A50;
  if (*(this + 7) != 3)
  {
    v1 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "~SharedMemoryMessagingSender", 0x14E, *v1, "invalid message state in sender destructor", v2);
  }
}

{
  amber::SharedMemoryMessagingSender::~SharedMemoryMessagingSender(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedMemoryMessagingSender::sendMessageBegin(amber::SharedMemoryMessagingSender *this, const amber::ConstMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 7))
  {
    v7 = "invalid sender state";
    v8 = 345;
LABEL_7:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "sendMessageBegin", v8, 0, v7, a7);
    return 0xFFFFFFFFLL;
  }

  v10 = *(a2 + 2);
  if (!v10 || (v12 = *(this + 1), v10 > *(v12 + 24)) || *(v12 + 32) < a3)
  {
    v7 = "invalid message size";
    v8 = 351;
    goto LABEL_7;
  }

  v15 = **(v12 + 8);
  v16 = v15 - v10;
  if (v16 - 32 >= a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = (~v16 + a3 + v15 - 16 + 32) / (v15 - 16) + 1;
  }

  *(this + 9) = v17;
  amber::zero(void *,unsigned long)::memset_func(v33, 0, 32);
  v18 = *(this + 2);
  v20 = *(this + 8);
  v19 = *(this + 9);
  *(this + 8) = v20 + 1;
  v33[0] = v18;
  v33[1] = v20 | (v19 << 32);
  v33[2] = *(a2 + 2);
  v33[3] = a3;
  *(this + 10) = a3;
  amber::SharedMemoryMessagingSender::allocateBlock(this);
  v32[0] = &off_2A1DDFC68;
  v32[1] = v33;
  v32[2] = 32;
  amber::SharedMemoryMessagingSender::appendToBlock(this, v32, v21, v22, v23, v24, v25);
  amber::SharedMemoryMessagingSender::appendToBlock(this, a2, v26, v27, v28, v29, v30);
  amber::SharedMemorySemaphore::release(*(*(*(*(this + 1) + 8) + 64) + 8 * *(this + 6)));
  if (*(this + 10))
  {
    result = 0;
    v31 = 1;
  }

  else
  {
    amber::SharedMemoryMessagingSender::sendBlock(this);
    result = 0;
    v31 = 2;
  }

  *(this + 7) = v31;
  return result;
}

uint64_t amber::SharedMemoryMessagingSender::allocateBlock(amber::SharedMemoryMessagingSender *this)
{
  v2 = amber::SharedMemoryFixedSizeQueue::dequeue(*(*(*(this + 1) + 8) + 88));
  *(this + 8) = v2;
  result = amber::MutableMemoryView::view(*(*(this + 1) + 8) + 16, **(*(this + 1) + 8) * v2, **(*(this + 1) + 8), v3, v6);
  if (v6 != (this + 40))
  {
    v5 = v6[2];
    *(this + 6) = v6[1];
    *(this + 7) = v5;
  }

  return result;
}

void *amber::SharedMemoryMessagingSender::appendToBlock(amber::SharedMemoryMessagingSender *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (v7 > *(this + 7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = memcpy(*(this + 6), *(a2 + 1), v7);
  v12 = *(a2 + 2);
  v13 = *(this + 7);
  v14 = v13 >= v12;
  v15 = v13 - v12;
  if (!v14)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MutableMemoryView.hpp", "increment", 0x122, 0, "memory invalid range", v11);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    goto LABEL_6;
  }

  *(this + 6) += v12;
  *(this + 7) = v15;
  return result;
}

void amber::SharedMemoryMessagingSender::sendBlock(amber::SharedMemoryMessagingSender *this)
{
  v1 = *(this + 8);
  if (v1 != -1)
  {
    amber::SharedMemoryFixedSizeQueue::enqueue(*(*(*(*(this + 1) + 8) + 40) + 8 * *(this + 6)), v1);
    *(this + 8) = -1;
    *(this + 6) = 0;
    *(this + 7) = 0;
  }
}

uint64_t amber::SharedMemoryMessagingSender::sendMessagePayload(amber::SharedMemoryMessagingSender *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v29 = &off_2A1DDFC68;
  v30 = *(a2 + 8);
  if (*(this + 7) != 1)
  {
    v9 = "invalid request state";
    v10 = 392;
    goto LABEL_5;
  }

  v8 = *(this + 10);
  if (*(a2 + 2) > v8)
  {
    v9 = "invalid payload size";
    v10 = 393;
LABEL_5:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "sendMessagePayload", v10, 0, v9, a7);
    return 0xFFFFFFFFLL;
  }

  v12 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    do
    {
      while (1)
      {
        if (*(this + 8) == -1)
        {
          amber::SharedMemoryMessagingSender::allocateBlock(this);
          v14 = *(this + 8);
          v13 = *(this + 9);
          *(this + 8) = v14 + 1;
          v28[0] = *(this + 2);
          v28[1] = v14 | (v13 << 32);
          v27[0] = &off_2A1DDFC68;
          v27[1] = v28;
          v27[2] = 16;
          amber::SharedMemoryMessagingSender::appendToBlock(this, v27, v15, v16, v17, v18, v19);
          v12 = *(&v30 + 1);
        }

        v20 = v12 >= *(this + 7) ? *(this + 7) : v12;
        amber::ConstMemoryView::first(&v29, v20, a7, v27);
        amber::SharedMemoryMessagingSender::appendToBlock(this, v27, v21, v22, v23, v24, v25);
        v12 = *(&v30 + 1) - v20;
        if (*(&v30 + 1) < v20)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", a7);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid range");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        *&v30 = v30 + v20;
        *(&v30 + 1) -= v20;
        *(this + 10) -= v20;
        if (!*(this + 7))
        {
          break;
        }

        if (!v12)
        {
          goto LABEL_17;
        }
      }

      amber::SharedMemoryMessagingSender::sendBlock(this);
      v12 = *(&v30 + 1);
    }

    while (*(&v30 + 1));
LABEL_17:
    v8 = *(this + 10);
  }

  if (v8)
  {
    return 0;
  }

  amber::SharedMemoryMessagingSender::sendBlock(this);
  result = 0;
  *(this + 7) = 2;
  return result;
}

uint64_t amber::SharedMemoryMessagingSender::sendMessageEnd(amber::SharedMemoryMessagingSender *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 7);
  if (v7 == 2)
  {
    amber::SharedMemoryMessagingSender::sendBlock(this);
    *(this + 7) = 3;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "sendMessageEnd", 0x1AC, 0, "invalid request state", a7);
  }

  if (v7 == 2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::SharedMemoryMessagingReceiver::SharedMemoryMessagingReceiver(uint64_t result, uint64_t a2)
{
  *result = &unk_2A1DE3A70;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t amber::SharedMemoryMessagingReceiver::processBlock(amber::SharedMemoryMessagingReceiver *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::MutableMemoryView::view(*(*(this + 1) + 8) + 16, **(*(this + 1) + 8) * a2, **(*(this + 1) + 8), a7, &v33);
  v9 = *(this + 4);
  if (v9)
  {
    if (v35 > 0xF)
    {
      LODWORD(v10) = *(v34 + 8);
      v11 = 16;
      goto LABEL_4;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MutableMemoryView.hpp", "operator const amber::SharedMemoryMessagingEndpoint::BaseBlockHeader *", 0xF1, 0, "memory invalid range", v8);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_36:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v35 <= 0x1F)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MutableMemoryView.hpp", "operator const amber::SharedMemoryMessagingEndpoint::FirstBlockHeader *", 0xF1, 0, "memory invalid range", v8);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    goto LABEL_36;
  }

  v19 = v34;
  v10 = *(v34 + 8);
  v20 = *(v34 + 24);
  *(this + 4) = HIDWORD(v10);
  *(this + 5) = v20;
  v21 = *(v19 + 16);
  v11 = v21 + 32;
  if (v21 >= 0xFFFFFFFFFFFFFFE0 || v11 >= **(*(this + 1) + 8))
  {
    v17 = "invalid block message size";
    v18 = 492;
    goto LABEL_27;
  }

  amber::MutableMemoryView::view(&v33, 32, v21, v8, &v27);
  v30 = &off_2A1DDFC68;
  v31 = v28;
  v32 = v29;
  if (v29 < 0 || !v28 && v29)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v22);
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v25, "memory invalid args");
    __cxa_throw(v25, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  (*(*this + 16))(this, &v30, *(v19 + 24));
  if (*(this + 5))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *(this + 4) = v9;
LABEL_4:
  v12 = v10;
  v13 = *(this + 3);
  *(this + 3) = v13 + 1;
  if (v10 != v13 || v10 >= *(this + 4))
  {
    v17 = "invalid block index";
    v18 = 508;
    goto LABEL_27;
  }

  if (v9 == 1)
  {
    if (*(this + 5) >= **(*(this + 1) + 8) - v11)
    {
      v14 = **(*(this + 1) + 8) - v11;
    }

    else
    {
      v14 = *(this + 5);
    }

    amber::MutableMemoryView::view(&v33, v11, v14, v8, &v27);
    v30 = &off_2A1DDFC68;
    v31 = v28;
    v32 = v29;
    if (v29 < 0 || !v28 && v29)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v15);
      v26 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v26, "memory invalid args");
      __cxa_throw(v26, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    (*(*this + 24))(this, &v30);
    v16 = *(this + 5) - v14;
    *(this + 5) = v16;
    if (!v16)
    {
      *(this + 4) = 2;
LABEL_30:
      if (v12 < *(this + 4))
      {
        (*(*this + 32))(this);
        v9 = 3;
        *(this + 4) = 3;
        return v9 == 3;
      }

      v17 = "invalid state";
      v18 = 522;
LABEL_27:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "processBlock", v18, 0, v17, v8);
      return 0xFFFFFFFFLL;
    }

    v9 = *(this + 4);
  }

  if (v9 == 2)
  {
    goto LABEL_30;
  }

  return v9 == 3;
}

void amber::SharedMemoryMessagingReceiverEndpoint::BlockReceiverThread::BlockReceiverThread(amber::SharedMemoryMessagingReceiverEndpoint::BlockReceiverThread *this, amber::SharedMemoryMessagingReceiverEndpoint *a2, int a3)
{
  *this = &unk_2A1DE3AF0;
  *(this + 1) = a2;
  *(this + 4) = a3;
  *(this + 3) = 0;
  operator new();
}

void amber::SharedMemoryMessagingReceiverEndpoint::BlockReceiverThread::~BlockReceiverThread(amber::SharedMemoryMessagingReceiverEndpoint::BlockReceiverThread *this)
{
  *this = &unk_2A1DE3AF0;
  v1 = *(this + 3);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_2A1DE3AF0;
  v1 = *(this + 3);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C25C000);
}

unint64_t amber::SharedMemoryMessagingReceiverEndpoint::BlockReceiverThread::run(amber::SharedMemoryMessagingReceiverEndpoint::BlockReceiverThread *this)
{
  v2 = 0;
  while (1)
  {
    if (v2 <= 0)
    {
      amber::SharedMemorySemaphore::acquire(*(*(*(*(this + 1) + 8) + 64) + 8 * *(this + 4)));
      ++v2;
    }

    result = amber::SharedMemoryFixedSizeQueue::dequeue(*(*(*(*(this + 1) + 8) + 40) + 8 * *(this + 4)));
    if (result == -16)
    {
      break;
    }

    v5 = result;
    amber::MutableMemoryView::view(*(*(this + 1) + 8) + 16, **(*(this + 1) + 8) * result, **(*(this + 1) + 8), v4, &v9);
    if (v11 <= 0xF)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MutableMemoryView.hpp", "operator const amber::SharedMemoryMessagingEndpoint::BaseBlockHeader *", 0xF1, 0, "memory invalid range", v6);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v10[1] < HIDWORD(v10[1]))
    {
      v7 = *(*(*(this + 1) + 72) + 8 * (*v10 % ((*(*(this + 1) + 80) - *(*(this + 1) + 72)) >> 3)));
      v12 = v5;
      amber::SharedQueue<unsigned int>::insertLast(v7 + 24);
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "run", 0xFE, 0, "invalid block count/index", v6);
    amber::SharedMemoryFixedSizeQueue::enqueue(*(*(*(this + 1) + 8) + 88), v5);
  }

  return result;
}

void amber::SharedMemoryMessagingReceiverEndpoint::MessageReceiverThread::MessageReceiverThread(amber::SharedMemoryMessagingReceiverEndpoint::MessageReceiverThread *this, amber::SharedMemoryMessagingReceiverEndpoint *a2)
{
  *this = &unk_2A1DE3B30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = &unk_2A1DE1748;
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
  operator new();
}

void sub_2969F1F90(_Unwind_Exception *a1)
{
  MEMORY[0x29C25C000](v2, 0xA1C409BE6959DLL);
  amber::SharedQueue<unsigned int>::~SharedQueue(v1);
  _Unwind_Resume(a1);
}

void amber::SharedMemoryMessagingReceiverEndpoint::MessageReceiverThread::~MessageReceiverThread(amber::SharedMemoryMessagingReceiverEndpoint::MessageReceiverThread *this)
{
  amber::SharedMemoryMessagingReceiverEndpoint::MessageReceiverThread::~MessageReceiverThread(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE3B30;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  amber::SharedQueue<unsigned int>::~SharedQueue(this + 24);
}

uint64_t amber::SharedMemoryMessagingReceiverEndpoint::MessageReceiverThread::run(amber::SharedMemoryMessagingReceiverEndpoint::MessageReceiverThread *this)
{
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  while (1)
  {
    v25 = -1;
    amber::SharedQueue<unsigned int>::removeFirst(this + 24, &v25);
    if (v25 == -16)
    {
      return std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::~__hash_table(v26);
    }

    amber::MutableMemoryView::view(*(*(this + 1) + 8) + 16, **(*(this + 1) + 8) * v25, **(*(this + 1) + 8), v2, &v19);
    v22 = &off_2A1DDFC68;
    v23 = v20;
    v24 = v21;
    if ((v21 & 0x8000000000000000) != 0 || !v20 && v21)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v3, v18);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v21 <= 0xF)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "operator const amber::SharedMemoryMessagingEndpoint::BaseBlockHeader *", 0xE3, 0, "memory invalid range", v3);
      v17 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v17, "memory invalid range");
      __cxa_throw(v17, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v18 = *v20;
    if (*(v20 + 8))
    {
      v4 = std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(v26, &v18);
      if (!v4)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "run", 0xB5, 0, "request_id not tracked", v9, v18);
        goto LABEL_15;
      }

      v10 = v4[3];
    }

    else
    {
      if (std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(v26, &v18))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "run", 0xAD, 0, "request_id already exists", v13, v18);
        goto LABEL_15;
      }

      v10 = (*(**(*(this + 1) + 40) + 16))(*(*(this + 1) + 40));
      if (!v10)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "run", 0xAF, 0, "receiver factory rejected incoming request", v14, v18);
LABEL_15:
        v10 = 0;
LABEL_16:
        v12 = -1;
        goto LABEL_17;
      }

      v19 = &v18;
      std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingReceiver *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingReceiver *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingReceiver *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingReceiver *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v26, &v18)[3] = v10;
    }

    v12 = amber::SharedMemoryMessagingReceiver::processBlock(v10, v25, v5, v6, v7, v8, v9);
    if (v12 < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryMessagingEndpoint.cpp", "run", 0xB9, 0, "block processing failed", v11, v18);
      goto LABEL_16;
    }

LABEL_17:
    amber::SharedMemoryFixedSizeQueue::enqueue(*(*(*(this + 1) + 8) + 88), v25);
    if (v12)
    {
      if (v10)
      {
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__erase_unique<unsigned long long>(v26, &v18);
        (*(*v10 + 8))(v10);
      }
    }
  }
}

void sub_2969F2348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingReceiver *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingReceiver *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingReceiver *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingReceiver *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

pthread_t *amber::Thread::Thread(pthread_t *a1, _opaque_pthread_t *a2, size_t a3)
{
  *a1 = &unk_2A1DE3B70;
  a1[1] = a2;
  __relative_priority = 0;
  __qos_class = QOS_CLASS_DEFAULT;
  v5 = malloc_type_malloc(0x40uLL, 0xF93785E2uLL);
  if (!v5)
  {
    v9 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v9, "malloc", v10);
    v11 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/Thread.cpp", "Thread", 0x1F, *v11, "malloc", v12);
    goto LABEL_16;
  }

  v6 = v5;
  amber::zero(void *,unsigned long)::memset_func(v5, 0, 64);
  if (pthread_attr_init(v6))
  {
    v13 = *__error();
    v15 = "pthread_attr_init";
    v16 = 33;
LABEL_15:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/Thread.cpp", "Thread", v16, v13, v15, v14);
    pthread_attr_destroy(v6);
    free(v6);
LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Thread::Thread";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  if (a3 && pthread_attr_setstacksize(v6, a3))
  {
    v13 = *__error();
    v15 = "pthread_attr_setstacksize";
    v16 = 37;
    goto LABEL_15;
  }

  v7 = pthread_self();
  if (pthread_get_qos_class_np(v7, &__qos_class, &__relative_priority))
  {
    v13 = *__error();
    v15 = "pthread_get_qos_class_np";
    v16 = 41;
    goto LABEL_15;
  }

  if (pthread_attr_set_qos_class_np(v6, __qos_class, __relative_priority))
  {
    v13 = *__error();
    v15 = "pthread_attr_set_qos_class_np";
    v16 = 42;
    goto LABEL_15;
  }

  if (pthread_create(a1 + 2, v6, amber::Thread::threadWrapperProc, a1))
  {
    v13 = *__error();
    v15 = "pthread_create";
    v16 = 46;
    goto LABEL_15;
  }

  pthread_attr_destroy(v6);
  free(v6);
  return a1;
}

void amber::Thread::~Thread(pthread_t *this)
{
  *this = &unk_2A1DE3B70;
  v5 = 0;
  if (pthread_join(this[2], &v5))
  {
    v3 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/Thread.cpp", "~Thread", 0x40, *v3, "pthread_join", v4);
  }

  if (v5 != this)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/Thread.cpp", "~Thread", 0x41, 0, "invalid thread", v2);
  }
}

{
  amber::Thread::~Thread(this);

  JUMPOUT(0x29C25C000);
}

void amber::DirectoryObjectStoreBlockDevice::~DirectoryObjectStoreBlockDevice(amber::DirectoryObjectStoreBlockDevice *this)
{
  *this = &unk_2A1DE3BA0;
  amber::SyncBlockDevice::terminateThreads(this);
  v8 = *(this + 59);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::DirectoryObjectStoreBlockDevice::~DirectoryObjectStoreBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DirectoryObjectStoreBlockDevice::getAttribute(amber::DirectoryObjectStoreBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "getAttribute", 0x76, 0, "invalid attribute encoding %u, %u", v13, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 == 202)
  {
    v14 = *(this + 120);
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

uint64_t amber::DirectoryObjectStoreBlockDevice::loadPrologue(uint64_t *a1, uint64_t a2, amber::Buffer *a3)
{
  v13[75] = *MEMORY[0x29EDCA608];
  amber::ObjectStorePath::ObjectStorePath(v13);
  if ((amber::DirectoryObjectStore::loadSnapshot(a1[59], v13, a2) & 0x80000000) != 0 || (amber::BlockDevice::loadPrologue(a1, v13, a3, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "loadPrologue", 0x8D, 0, "load snapshot", v9);
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
  }

  amber::ObjectStorePath::~ObjectStorePath(v13);
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t amber::DirectoryObjectStoreBlockDevice::listContainers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::DirectoryObjectStore::listContainers(*(a1 + 472), a2, a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "listContainers", 0x94, 0, "list containers", v7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::DirectoryObjectStoreBlockDevice::listContainerSnapshots(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v31[73] = *MEMORY[0x29EDCA608];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (!*(a2 + 16))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0xA0, 0, "invalid container id", a7);
LABEL_15:
    v24 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  if ((amber::DirectoryObjectStore::listSnapshots(*(a1 + 472), &v27, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0xA1, 0, "list snapshots", v10);
    goto LABEL_15;
  }

  v11 = v27;
  if (v27 != v28)
  {
    while (1)
    {
      amber::ObjectStorePath::ObjectStorePath(v30);
      if ((amber::DirectoryObjectStore::loadSnapshot(*(a1 + 472), v30, v11) & 0x80000000) != 0)
      {
        break;
      }

      if (amber::CryptoBlobBase<256u>::equals(v31, a2, v12, v13, v14, v15, v16))
      {
        v22 = *(a3 + 24);
        if (v22 >= *(a3 + 32))
        {
          v23 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<amber::ObjectStorePath const&>(a3 + 16, v30, v17, v18, v19, v20, v21);
        }

        else
        {
          amber::ObjectStorePath::ObjectStorePath(*(a3 + 24), v30, v17, v18, v19, v20, v21);
          v23 = v22 + 600;
          *(a3 + 24) = v22 + 600;
        }

        *(a3 + 24) = v23;
      }

      amber::ObjectStorePath::~ObjectStorePath(v30);
      v11 += 280;
      if (v11 == v28)
      {
        goto LABEL_11;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "listContainerSnapshots", 0xA8, 0, "loading snapshot", v16);
    amber::ObjectStorePath::~ObjectStorePath(v30);
    goto LABEL_15;
  }

LABEL_11:
  v24 = 0;
LABEL_16:
  v30[0] = &v27;
  std::vector<amber::CryptoBlobBase<256u>>::__destroy_vector::operator()[abi:ne200100](v30);
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

void sub_2969F31B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  amber::ObjectStorePath::~ObjectStorePath(&a13);
  a13 = &a10;
  std::vector<amber::CryptoBlobBase<256u>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t amber::DirectoryObjectStoreBlockDevice::executeRead(amber::DirectoryObjectStore **this, unsigned int a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::ProxyBuffer::ProxyBuffer(v33, *(a3 + 14), a3[8], 0, a5, a6, a7);
  amber::BlockDeviceEvent::BlockDeviceEvent(v32, 21, a3);
  if (!*(a3 + 30) || !*(a3 + 100) || !*(a3 + 170))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "executeRead", 0xCC, 0, "request has no storage attributes", v9);
    v24 = -2147483626;
LABEL_9:
    amber::BlockDeviceRequest::sendReply(a3, v24, 0, v20, v21, v22, v23);
    v19 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  amber::BlockDeviceEvent::sendBegin(v32);
  if ((amber::DirectoryObjectStore::load(this[59], (a3 + 11), v33, 0, v10, v11, v12) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "executeRead", 0xCE, 0, "loading object", v13);
    v24 = -2147483643;
    goto LABEL_9;
  }

  amber::BlockDeviceEvent::sendEnd(v32);
  if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v14, v15, v16, v17) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "executeRead", 0xD0, 0, "reply data", v18);
  }

  v19 = 0;
LABEL_10:
  amber::BlockDeviceEvent::~BlockDeviceEvent(v32);
  amber::Buffer::~Buffer(v33, v25, v26, v27, v28, v29, v30);
  return v19;
}

void sub_2969F33B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  amber::Buffer::~Buffer(va1, v3, v4, v5, v6, v7, v8);
  _Unwind_Resume(a1);
}

uint64_t amber::DirectoryObjectStoreBlockDevice::executeWrite(amber::DirectoryObjectStoreBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v5 = amber::BlockDeviceEvent::BlockDeviceEvent(v21, 22, a3);
  if (*(this + 480))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "executeWrite", 0xE2, 0, "WRITE on read-only device", v6);
    v14 = -2147483647;
LABEL_9:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  if (!*(a3 + 30) || !*(a3 + 100) || !*(a3 + 170))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "executeWrite", 0xE4, 0, "request has no storage attributes", v6);
    v14 = -2147483626;
    goto LABEL_9;
  }

  amber::BlockDeviceEvent::sendBegin(v5);
  v7 = *(this + 59);
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
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "executeWrite", 0xE6, 0, "storing object", v17, &off_2A1DDFDA8, v18, v19);
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

uint64_t amber::DirectoryObjectStoreBlockDevice::executeSnapshot(amber::DirectoryObjectStore **this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!*(a3 + 180) || !*(a3 + 250) || !*(a3 + 320))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "executeSnapshot", 0xF8, 0, "request has no container snapshot", a7);
    v13 = -2147483626;
LABEL_7:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if ((amber::DirectoryObjectStore::storeSnapshot(this[59], (a3 + 688)) & 0x80000000) != 0)
  {
    v13 = -2147483643;
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/DirectoryObjectStoreBlockDevice.cpp", "executeSnapshot", 0xF9, 0, "storing container snapshot", v11);
    goto LABEL_7;
  }

  v12 = 0;
  v13 = 1;
LABEL_8:
  amber::BlockDeviceRequest::sendReply(a3, v13, 0, v8, v9, v10, v11);
  return v12;
}

void sub_2969F36E8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2969F36D4);
}

uint64_t amber::fromAmberObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(a2 + 256);
  v17 = &off_2A1DDFC68;
  v18 = a2;
  v19 = v9;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a1 + 24, &v17, a3, a4, a5, a6, a7);
  v10 = *(a2 + 516);
  v17 = &off_2A1DDFC68;
  v18 = a2 + 260;
  v19 = v10;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a1 + 304, &v17, v11, v12, v13, v14, v15);
  *(a1 + 576) = *(a2 + 520);
  *(a1 + 584) = *(a2 + 528);
  *(a1 + 592) = *(a2 + 536);
  return 0;
}

uint64_t amber::ObjectStorePath::jsonParse(amber::ObjectStorePath *this, amber::JSONInputStream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::ObjectStorePath::clear(this, a2, a3, a4, a5, a6, a7);
  v53 = -1;
  *__s1 = 0u;
  *v55 = 0u;
  if ((amber::JSONInputStream::read(a2, &v53, v9, v10, v11, v12, v13) & 0x80000000) == 0)
  {
    v19 = 0;
    v20 = -1;
    do
    {
      if (v20 == -1)
      {
        v20 = v58;
      }

      if (v58 == v20)
      {
        if (!v53)
        {
          goto LABEL_54;
        }

        if (v53 == 2)
        {
          return 0;
        }
      }

      v21 = v20 + 1;
      if (v58 != v20 + 1 && ((v58 == v20 + 2) & v19) != 1)
      {
        goto LABEL_54;
      }

      if (v53 == 4)
      {
        v26 = __s1[0];
        if (__s1[0])
        {
          if (!strcmp(__s1[0], "storage_size"))
          {
            if (v57 < 0 || HIDWORD(v56))
            {
              v51 = "invalid storage_size";
              v52 = 80;
              goto LABEL_63;
            }

            *(this + 148) = v56;
          }

          else if (!strcmp(v26, "storage_offset"))
          {
            if (v57 < 0)
            {
              v51 = "invalid storage_offset";
              v52 = 87;
              goto LABEL_63;
            }

            *(this + 73) = v56;
          }
        }
      }

      else
      {
        if (v53 != 3)
        {
          if (v58 == v21 && v53 == 0)
          {
            if (__s1[0] && !strcmp(__s1[0], "storage_attributes"))
            {
              v19 = 1;
            }
          }

          else if (v58 == v21 && v53 == 2)
          {
            v19 = 0;
          }

          goto LABEL_54;
        }

        v22 = __s1[0];
        if (__s1[0])
        {
          if (!strcmp(__s1[0], "container_id"))
          {
            *(this + 8) = 0;
            v59 = 0;
            v60 = &off_2A1DDFDA8;
            v61 = this + 36;
            v62 = 256;
            amber::MutableMemoryView::operator+(&v60, 0, v23, &v63);
            bzero(v64, v65);
            v63 = &off_2A1DDFDA8;
            v64 = this + 36;
            v65 = 256;
            amber::MutableMemoryView::operator+(&v63, *(this + 8), v36, &v60);
            v41 = amber::hexStringToBytes(&__s1[1], &v60, &v59, v37, v38, v39, v40);
            if (v41 < 0 || (v42 = v41, (amber::CryptoBlobBase<256u>::grow(this + 16, v59, v14, v15, v16, v17, v18) & 0x80000000) != 0))
            {
              v42 = -1;
            }

            if (v42 != v55[0])
            {
              v51 = "invalid container_id";
              v52 = 57;
              goto LABEL_63;
            }
          }

          else if (!strcmp(v22, "storage_tag") || !strcmp(v22, "storage_id"))
          {
            *(this + 78) = 0;
            v59 = 0;
            v60 = &off_2A1DDFDA8;
            v61 = this + 316;
            v62 = 256;
            amber::MutableMemoryView::operator+(&v60, 0, v24, &v63);
            bzero(v64, v65);
            v63 = &off_2A1DDFDA8;
            v64 = this + 316;
            v65 = 256;
            amber::MutableMemoryView::operator+(&v63, *(this + 78), v29, &v60);
            v34 = amber::hexStringToBytes(&__s1[1], &v60, &v59, v30, v31, v32, v33);
            if (v34 < 0 || (v35 = v34, (amber::CryptoBlobBase<256u>::grow(this + 296, v59, v14, v15, v16, v17, v18) & 0x80000000) != 0))
            {
              v35 = -1;
            }

            if (v35 != v55[0])
            {
              v51 = "invalid storage_id";
              v52 = 63;
              goto LABEL_63;
            }
          }

          else if (!strcmp(v22, "storage_type"))
          {
            v25 = v55[1];
            if (!strcmp(v55[1], "prologue"))
            {
              v43 = 1;
LABEL_61:
              *(this + 144) = v43;
              goto LABEL_54;
            }

            if (!strcmp(v25, "cluster"))
            {
              v43 = 2;
              goto LABEL_61;
            }

            if (!strcmp(v25, "segment"))
            {
              v43 = 3;
              goto LABEL_61;
            }

            if (!strcmp(v25, "kms"))
            {
              v43 = 4;
              goto LABEL_61;
            }

            if (!strcmp(v25, "padding"))
            {
              v43 = 5;
              goto LABEL_61;
            }

            *(this + 144) = 0;
          }
        }
      }

LABEL_54:
      v53 = -1;
      *__s1 = 0u;
      *v55 = 0u;
    }

    while ((amber::JSONInputStream::read(a2, &v53, v14, v15, v16, v17, v18) & 0x80000000) == 0);
  }

  v51 = "read token";
  v52 = 43;
LABEL_63:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "jsonParse", v52, 0, v51, v18);
  amber::ObjectStorePath::clear(this, v44, v45, v46, v47, v48, v49);
  return 0xFFFFFFFFLL;
}

uint64_t amber::ObjectStorePath::jsonSerialize(amber::ObjectStorePath *this, const void **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginDict(a2, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v15 = *(this + 8);
  if (v15)
  {
    v23[0] = &off_2A1DDFC68;
    v23[1] = this + 36;
    v23[2] = v15;
    if ((amber::JSONOutputStream::appendHex(a2, "container_id", v23, 0, v12, v13, v14) & 0x80000000) != 0)
    {
      goto LABEL_29;
    }
  }

  v16 = *(this + 78);
  if (!v16 || (v22[0] = &off_2A1DDFC68, v22[1] = this + 316, v22[2] = v16, (amber::JSONOutputStream::appendHex(a2, "storage_id", v22, 0, v12, v13, v14) & 0x80000000) == 0))
  {
    v17 = *(this + 144);
    if (v17 == 1)
    {
      v24 = "prologue";
      v25 = 8;
      if ((amber::JSONOutputStream::append(a2, "storage_type", &v24, v11, v12, v13, v14) & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v17 = *(this + 144);
    }

    if (v17 == 2)
    {
      v24 = "cluster";
      v25 = 7;
      if ((amber::JSONOutputStream::append(a2, "storage_type", &v24, v11, v12, v13, v14) & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v17 = *(this + 144);
    }

    if (v17 == 3)
    {
      v24 = "segment";
      v25 = 7;
      if ((amber::JSONOutputStream::append(a2, "storage_type", &v24, v11, v12, v13, v14) & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v17 = *(this + 144);
    }

    if (v17 == 4)
    {
      v24 = "kms";
      v25 = 3;
      if ((amber::JSONOutputStream::append(a2, "storage_type", &v24, v11, v12, v13, v14) & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      v17 = *(this + 144);
    }

    if (v17 != 5 || (v24 = "padding", v25 = 7, (amber::JSONOutputStream::append(a2, "storage_type", &v24, v11, v12, v13, v14) & 0x80000000) == 0))
    {
      v18 = *(this + 148);
      if (!v18 || (amber::JSONOutputStream::append(a2, "storage_size", 1, v18, 0, v13, v14) & 0x80000000) == 0)
      {
        v19 = *(this + 73);
        if (!v19 || (amber::JSONOutputStream::append(a2, "storage_offset", 1, v19, 0, v13, v14) & 0x80000000) == 0)
        {
          v20 = amber::JSONOutputStream::end(a2, v9, v10, v19, v12, v13, v14) >> 31;
          if (!v15)
          {
            goto LABEL_25;
          }

LABEL_28:
          if ((v20 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_29;
        }
      }
    }
  }

LABEL_27:
  v20 = 1;
  if (v15)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v20)
  {
    return 0;
  }

LABEL_29:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "jsonSerialize", 0x80, 0, "serialize object storage attributes", v14);
  return 0xFFFFFFFFLL;
}

uint64_t amber::ObjectStorePath::binarySerialize(amber::ObjectStorePath *this, amber::Buffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, a2, a3, a4, a5, a6, a7);
  if ((amber::CryptoBlobBase<256u>::binarySerialize(this + 16, a2, v10, v11, v12, v13, v14) & 0x80000000) == 0 && (amber::CryptoBlobBase<256u>::binarySerialize(this + 296, a2, v15, v16, v17, v18, v19) & 0x80000000) == 0)
  {
    v40[0] = &off_2A1DDFC68;
    v40[1] = this + 576;
    v40[2] = 4;
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, v40, v20, v21, v22, v23, v19) & 0x80000000) == 0)
    {
      v39[0] = &off_2A1DDFC68;
      v39[1] = this + 584;
      v39[2] = 8;
      if ((amber::BufferProtocol<amber::Buffer>::append(a2, v39, v24, v25, v26, v27, v19) & 0x80000000) == 0)
      {
        v38[0] = &off_2A1DDFC68;
        v38[1] = this + 592;
        v38[2] = 4;
        if ((amber::BufferProtocol<amber::Buffer>::append(a2, v38, v28, v29, v30, v31, v19) & 0x80000000) == 0)
        {
          return 0;
        }
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "binarySerialize", 0x8C, 0, "serialization", v19);
  amber::Buffer::resize(a2, v9, v33, v34, v35, v36, v37);
  return 0xFFFFFFFFLL;
}

double amber::ObjectStorePath::binaryParse(amber::ObjectStorePath *this, amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v30 = &off_2A1DDFC68;
  v31 = *(a2 + 8);
  v14 = amber::CryptoBlobBase<256u>::binaryParse(this + 16, &v30, a3, a4, a5, a6, a7);
  if (v15 < 0)
  {
    goto LABEL_6;
  }

  v14 = amber::CryptoBlobBase<256u>::binaryParse(this + 296, &v30, v9, v10, v11, v12, v13);
  if (v16 < 0)
  {
    goto LABEL_6;
  }

  v27 = &off_2A1DDFDA8;
  v28 = this + 576;
  v29 = 4;
  v17 = *(&v31 + 1);
  if (*(&v31 + 1) <= 3uLL)
  {
    goto LABEL_6;
  }

  v18 = v31;
  v19 = v31 + 4;
  *(this + 144) = *v31;
  *&v31 = v19;
  *(&v31 + 1) = v17 - 4;
  if ((v17 - 4) <= 7 || (*(this + 73) = *(v18 + 4), *&v31 = v18 + 12, *(&v31 + 1) = v17 - 12, (v17 - 12) <= 3))
  {
LABEL_6:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "binaryParse", 0x98, 0, "invalid/truncated ObjectStorePath", v13, v14, v27, v28, v29);
    amber::ObjectStorePath::clear(this, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    *(this + 148) = *(v18 + 12);
    *&v31 = v18 + 16;
    *(&v31 + 1) = v17 - 16;
    *&result = v18 + 16;
    *(a2 + 8) = v31;
  }

  return result;
}

uint64_t amber::appendFromRangeVector(uint64_t a1, unint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = v2[1];
      if (*v2 < v6)
      {
        v7 = *(a1 + 24);
        do
        {
          if (v6 - v5 >= 0xFFFFFFFF)
          {
            v8 = 0xFFFFFFFFLL;
          }

          else
          {
            v8 = v6 - v5;
          }

          if (v7 >= *(a1 + 32))
          {
            v7 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<>(a1 + 16);
          }

          else
          {
            bzero(v7, 0x258uLL);
            amber::ObjectStorePath::ObjectStorePath(v7);
            v7 += 600;
            *(a1 + 24) = v7;
          }

          *(a1 + 24) = v7;
          *(v7 - 2) = v5;
          *(v7 - 2) = v8;
          v5 += v8;
        }

        while (v5 < v6);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  return 0;
}

uint64_t amber::appendToRangeVector(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 != v3)
  {
    v5 = -1;
    v6 = -1;
    do
    {
      v7 = *(v2 + 592);
      if (v7)
      {
        v8 = *(v2 + 584);
        v9 = v8 + v7;
        if (v8 == v6)
        {
          v6 = v8 + v7;
        }

        else
        {
          if (v5 < v6)
          {
            v15.i64[0] = v5;
            v15.i64[1] = v6;
            v10 = *(a2 + 8);
            if (v10 >= *(a2 + 16))
            {
              v11 = std::vector<amber::Range>::__emplace_back_slow_path<amber::Range>(a2, &v15);
            }

            else
            {
              *v10 = v5;
              v10[1] = v6;
              v11 = (v10 + 2);
            }

            *(a2 + 8) = v11;
          }

          v6 = v9;
          v5 = v8;
        }
      }

      v2 += 600;
    }

    while (v2 != v3);
    if (v5 < v6)
    {
      v15.i64[0] = v5;
      v15.i64[1] = v6;
      v12 = *(a2 + 8);
      if (v12 >= *(a2 + 16))
      {
        v13 = std::vector<amber::Range>::__emplace_back_slow_path<amber::Range>(a2, &v15);
      }

      else
      {
        *v12 = v5;
        v12[1] = v6;
        v13 = (v12 + 2);
      }

      *(a2 + 8) = v13;
    }
  }

  return 0;
}

void amber::serializeSplitHexDigitsURI(amber *a1, std::string::value_type a2, std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  std::string::reserve(this, size + 2 * *(a1 + 2) + 8);
  std::string::push_back(this, a2);
  std::string::push_back(this, 47);
  if (*(a1 + 2) > 6uLL)
  {
    memset(&__str, 0, sizeof(__str));
    amber::ConstMemoryView::first(a1, 6uLL, v11, &v41);
    amber::hexBytesToStringEnd(&v41, &__str, v12, v13, v14, v15, v16);
    std::string::basic_string(&v41, &__str, 0, 3uLL, &v40);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v41;
    }

    else
    {
      v17 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v41.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(this, v17, v18);
    v20 = std::string::append(v19, "/");
    std::string::basic_string(&v40, &__str, 3uLL, 3uLL, &v39);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v40;
    }

    else
    {
      v21 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v40.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(v20, v21, v22);
    v24 = std::string::append(v23, "/");
    std::string::basic_string(&v39, &__str, 6uLL, 3uLL, &__p);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v39;
    }

    else
    {
      v25 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v39.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(v24, v25, v26);
    v28 = std::string::append(v27, "/");
    std::string::basic_string(&__p, &__str, 9uLL, 3uLL, &v43);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = __p.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(v28, p_p, v30);
    std::string::append(v31, "/");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    amber::ConstMemoryView::operator+(a1, 6uLL, v32, &v41);
    amber::hexBytesToStringEnd(&v41, this, v33, v34, v35, v36, v37);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    amber::hexBytesToStringEnd(a1, this, v7, v8, v9, v10, v11);
  }
}

void sub_2969F4888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::serializeObjectURIToStringEnd(amber *a1, amber *a2, unsigned int a3, std::string *this)
{
  v7 = 0x7A7A7A7A787AuLL >> (8 * a3);
  if (a3 >= 6)
  {
    LOBYTE(v7) = 122;
  }

  amber::serializeSplitHexDigitsURI(a1, v7 & 0xFE, this);
  if (*(a2 + 2))
  {
    if (a3 >= 6)
    {
      v8 = 111;
    }

    else
    {
      v8 = 0x786B6775706FuLL >> (8 * a3);
    }

    std::string::push_back(this, 47);
    amber::serializeSplitHexDigitsURI(a2, v8 & 0x7F, this);
  }

  return 0;
}

uint64_t amber::parseSnapshotURI(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v16 = 0;
  v7 = a1[1];
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = *a1;
  v10 = -1;
  do
  {
    v11 = *(v9 + v8);
    if (v11 != 47 && ((v11 & 0x80) != 0 || (*(MEMORY[0x29EDCA600] + 4 * v11 + 60) & 0x10000) == 0))
    {
      v10 = v8;
    }

    ++v8;
  }

  while (v7 != v8);
  if (v10 == -1 || v10 && *(v9 + v10 - 1) != 47 || v10 + 1 < v7 && *(v9 + v10 + 1) != 47)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v7 >= v10;
  v13 = (v7 - v10);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v15[0] = (v9 + v10);
  v15[1] = v13;
  if ((amber::parseSplitHexDigitsURI(v15, &v16, a2, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v16 == 115)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::parseSplitHexDigitsURI(char **a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  memset(&v34, 0, sizeof(v34));
  *a2 = 0;
  *(a3 + 16) = 0;
  v10 = (a3 + 20);
  v36 = &off_2A1DDFDA8;
  v37 = (a3 + 20);
  v38 = 256;
  amber::MutableMemoryView::operator+(&v36, 0, a7, &v39);
  bzero(v40, v41);
  std::string::reserve(&v34, a1[1]);
  v12 = a1[1];
  if (v12)
  {
    v13 = *a1;
    v14 = 1;
    v15 = MEMORY[0x29EDCA600];
    do
    {
      v16 = *v13;
      if (v16 != 47)
      {
        if (v14)
        {
          v14 = 0;
          *a2 = v16;
        }

        else
        {
          if ((v16 & 0x80000000) != 0 || (*(v15 + 4 * v16 + 60) & 0x10000) == 0)
          {
            v31 = 0xFFFFFFFFLL;
            if ((*(&v34.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              goto LABEL_21;
            }

            return v31;
          }

          std::string::push_back(&v34, v16);
          v14 = 0;
        }
      }

      ++v13;
      --v12;
    }

    while (v12);
  }

  size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  v18 = &v34;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v34.__r_.__value_.__l.__size_;
    v18 = v34.__r_.__value_.__r.__words[0];
  }

  v33[0] = v18;
  v33[1] = size;
  *(a3 + 16) = 0;
  v35 = 0;
  v36 = &off_2A1DDFDA8;
  v37 = v10;
  v38 = 256;
  amber::MutableMemoryView::operator+(&v36, 0, v11, &v39);
  bzero(v40, v41);
  v39 = &off_2A1DDFDA8;
  v40 = v10;
  v41 = 256;
  amber::MutableMemoryView::operator+(&v39, *(a3 + 16), v19, &v36);
  v29 = amber::hexStringToBytes(v33, &v36, &v35, v20, v21, v22, v23);
  if (v29 < 0 || (amber::CryptoBlobBase<256u>::grow(a3, v35, v24, v25, v26, v27, v28) & 0x80000000) != 0)
  {
    v29 = -1;
  }

  v30 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v34.__r_.__value_.__l.__size_;
  }

  if (v29 == v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0xFFFFFFFFLL;
  }

  if ((*(&v34.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_21:
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  return v31;
}

void sub_2969F4CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::parseObjectURI(uint64_t *a1, amber::ObjectStorePath *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v38 = 0;
  amber::ObjectStorePath::clear(this, this, a3, a4, a5, a6, a7);
  v13 = a1[1];
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = 0;
  v15 = *a1;
  v16 = -1;
  v17 = MEMORY[0x29EDCA600];
  do
  {
    v18 = *(v15 + v14);
    if (v18 != 47 && ((v18 & 0x80) != 0 || (*(MEMORY[0x29EDCA600] + 4 * v18 + 60) & 0x10000) == 0))
    {
      v16 = v14;
    }

    ++v14;
  }

  while (v13 != v14);
  if (v16 == -1 || v16 && *(v15 + v16 - 1) != 47 || v16 + 1 < v13 && *(v15 + v16 + 1) != 47)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v13 >= v16;
  v20 = v13 - v16;
  if (!v19)
  {
    goto LABEL_57;
  }

  v36 = (v15 + v16);
  v37 = v20;
  if ((amber::parseSplitHexDigitsURI(&v36, &v38, this + 296, v9, v10, v11, v12) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v38 > 0x6Fu)
  {
    switch(v38)
    {
      case 'p':
        v26 = 1;
        break;
      case 'x':
        v26 = 5;
        break;
      case 'u':
        v26 = 2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v38)
    {
      case 'g':
        v26 = 3;
        break;
      case 'k':
        v26 = 4;
        break;
      case 'o':
        v26 = 0;
        break;
      default:
        return result;
    }
  }

  *(this + 144) = v26;
  v27 = a1[1];
  if (v27 >= v16)
  {
    v27 = v16;
  }

  if (!v27)
  {
    return 0xFFFFFFFFLL;
  }

  v28 = 0;
  v29 = *a1;
  v30 = -1;
  do
  {
    v31 = *(v29 + v28);
    if (v31 != 47 && ((v31 & 0x80) != 0 || (*(v17 + 4 * v31 + 60) & 0x10000) == 0))
    {
      v30 = v28;
    }

    ++v28;
  }

  while (v27 != v28);
  if (v30 == -1 || v30 && *(v29 + v30 - 1) != 47 || v30 + 1 < v27 && *(v29 + v30 + 1) != 47)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v27 >= v30;
  v32 = v27 - v30;
  if (!v19)
  {
LABEL_57:
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v36 = (v29 + v30);
  v37 = v32;
  if ((amber::parseSplitHexDigitsURI(&v36, &v38, this + 16, v21, v22, v23, v24) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v33 = *(this + 144);
  if (v33 != 1 && v38 != 122)
  {
    return 0xFFFFFFFFLL;
  }

  v35 = v33 == 1 && v38 != 120;
  return (v35 << 31 >> 31);
}

uint64_t AmberObjectStorePathArrayDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t AmberObjectStorePathArrayGetEntryAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 16);
  if (0x2FC962FC962FC963 * ((*(a1 + 24) - v7) >> 3) <= a2)
  {
    v9 = "index out of range";
    v10 = 364;
  }

  else
  {
    if ((amber::toAmberObject(v7 + 600 * a2, a3, a3, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v9 = "invalid ObjectStorePath";
    v10 = 365;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "AmberObjectStorePathArrayGetEntryAtIndex", v10, 0, v9, a7);
  return 0xFFFFFFFFLL;
}

uint64_t AmberObjectStorePathArrayAppendEntry(uint64_t a1, uint64_t a2)
{
  v18[75] = *MEMORY[0x29EDCA608];
  amber::ObjectStorePath::ObjectStorePath(v18);
  amber::fromAmberObject(v18, a2, v4, v5, v6, v7, v8);
  v14 = *(a1 + 24);
  if (v14 >= *(a1 + 32))
  {
    v15 = std::vector<amber::ObjectStorePath>::__emplace_back_slow_path<amber::ObjectStorePath const&>(a1 + 16, v18, v9, v10, v11, v12, v13);
  }

  else
  {
    amber::ObjectStorePath::ObjectStorePath(*(a1 + 24), v18, v9, v10, v11, v12, v13);
    v15 = v14 + 600;
    *(a1 + 24) = v14 + 600;
  }

  *(a1 + 24) = v15;
  amber::ObjectStorePath::~ObjectStorePath(v18);
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2969F5118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;
  *(v9 + 24) = v11;
  amber::ObjectStorePath::~ObjectStorePath(&a9);
  _Unwind_Resume(a1);
}

uint64_t AmberObjectStorePathParseJSON(uint64_t a1, amber::Stream *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  amber::ObjectStorePath::ObjectStorePath(v19);
  amber::JSONInputStream::JSONInputStream(v18, a2);
  if ((amber::ObjectStorePath::jsonParse(v19, v18, v4, v5, v6, v7, v8) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "AmberObjectStorePathParseJSON", 0x182, 0, "JSON parse AmberObjectStorePath", v13);
LABEL_6:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if ((amber::toAmberObject(v19, a1, v9, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "AmberObjectStorePathParseJSON", 0x183, 0, "invalid object", v14);
    goto LABEL_6;
  }

  v15 = 0;
LABEL_7:
  amber::JSONInputStream::~JSONInputStream(v18);
  amber::ObjectStorePath::~ObjectStorePath(v19);
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_2969F5250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  amber::JSONInputStream::~JSONInputStream(&a10);
  amber::ObjectStorePath::~ObjectStorePath(&a37);
  _Unwind_Resume(a1);
}

uint64_t AmberObjectStorePathSerializeJSON(uint64_t a1, amber::Stream *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  amber::ObjectStorePath::ObjectStorePath(v18);
  amber::fromAmberObject(v18, a1, v4, v5, v6, v7, v8);
  amber::JSONOutputStream::JSONOutputStream(v17, a2, 1);
  if ((amber::ObjectStorePath::jsonSerialize(v18, v17, 0, v9, v10, v11, v12) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "AmberObjectStorePathSerializeJSON", 0x18E, 0, "JSON serialization", v13);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
  }

  amber::JSONOutputStream::~JSONOutputStream(v17);
  amber::ObjectStorePath::~ObjectStorePath(v18);
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

void sub_2969F5364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  amber::JSONOutputStream::~JSONOutputStream(&a10);
  amber::ObjectStorePath::~ObjectStorePath(&a43);
  _Unwind_Resume(a1);
}

void sub_2969F54C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONInputStream::~JSONInputStream(va);
  _Unwind_Resume(a1);
}

uint64_t AmberObjectStorePathArraySerializeJSON(uint64_t a1, amber::Stream *a2)
{
  amber::JSONOutputStream::JSONOutputStream(v6, a2, 1);
  if (((*(*a1 + 40))(a1, v6, 0) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/ObjectStorePath.cpp", "AmberObjectStorePathArraySerializeJSON", 0x1A4, 0, "JSON serialization", v3);
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  amber::JSONOutputStream::~JSONOutputStream(v6);
  return v4;
}

void sub_2969F5580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  _Unwind_Resume(a1);
}

void non-virtual thunk toamber::ObjectStorePath::~ObjectStorePath(amber::ObjectStorePath *this)
{
  amber::ObjectStorePath::~ObjectStorePath((this - 8));
}

{
  amber::ObjectStorePath::~ObjectStorePath((this - 8));

  JUMPOUT(0x29C25C000);
}

uint64_t amber::AEACrypto::init(amber::AEACrypto *this, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (this)
  {
    amber::zero(void *,unsigned long)::memset_func(this, 0, 176);
  }

  if (a2 >= 6)
  {
    v10 = "Invalid profile";
    v11 = 23;
    goto LABEL_8;
  }

  if (a2 == 5 && a3 >= 4)
  {
    v10 = "Invalid profile_param";
    v11 = 29;
LABEL_8:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/AEACrypto.cpp", "init", v11, 0, v10, a7);
    return 0xFFFFFFFFLL;
  }

  if (a2 != 5 && a3)
  {
    v10 = "Invalid profile_param";
    v11 = 31;
    goto LABEL_8;
  }

  *this = a2;
  *(this + 1) = a3;
  *(this + 1) = a2 | (a3 << 24);
  *(this + 9) = amber::KDF_HKDF_SHA256;
  *(this + 11) = amber::HMAC_SHA256;
  *(this + 8) = amber::RNG;
  *(this + 21) = amber::digest_SHA256;
  *(this + 3) = 32;
  *(this + 20) = 0x2000000020;
  *(this + 13) = 32;
  if (a2 > 2)
  {
    if ((a2 - 3) >= 2)
    {
      result = 0;
      *(this + 4) = 80;
      *(this + 12) = amber::AEADEncrypt_AES256CTR_MAC256_KEY640;
      *(this + 13) = amber::AEADDecrypt_AES256CTR_MAC256_KEY640;
      *(this + 10) = amber::passwordKDF_Scrypt_KEY256;
      *(this + 8) = a3;
      return result;
    }

    *(this + 4) = 80;
    *(this + 12) = amber::AEADEncrypt_AES256CTR_MAC256_KEY640;
    *(this + 13) = amber::AEADDecrypt_AES256CTR_MAC256_KEY640;
    *(this + 14) = amber::DHESender_ECDH_P256;
    *(this + 15) = amber::DHERecipient_ECDH_P256;
    *(this + 28) = 0x4100000061;
    *(this + 16) = amber::publicKeyFromPrivateKey_P256;
    *(this + 14) = 65;
    goto LABEL_17;
  }

  if ((a2 - 1) < 2)
  {
    *(this + 4) = 80;
    *(this + 12) = amber::AEADEncrypt_AES256CTR_MAC256_KEY640;
    *(this + 13) = amber::AEADDecrypt_AES256CTR_MAC256_KEY640;
LABEL_17:
    if (a2 != 4 && a2 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  *(this + 4) = 32;
  *(this + 12) = amber::AEADEncrypt_None_MAC256_KEY256;
  *(this + 13) = amber::AEADDecrypt_None_MAC256_KEY256;
  *(this + 14) = 32;
LABEL_21:
  result = 0;
  *(this + 17) = amber::digest_SHA256;
  *(this + 18) = amber::sign_ECDSA_P256;
  *(this + 19) = amber::verifySignature_ECDSA_P256;
  *(this + 36) = xmmword_296A15970;
  *(this + 20) = amber::publicKeyFromPrivateKey_P256;
  if (a2)
  {
    v13 = 160;
  }

  else
  {
    v13 = 128;
  }

  *(this + 15) = v13;
  return result;
}

uint64_t amber::AEACrypto::RNGBytes(amber::AEACrypto *this, const amber::MutableMemoryView *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::AEACrypto::RNGBlob(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a2 + 16) = 0;
  v18[0] = &off_2A1DDFDA8;
  v18[1] = a2 + 20;
  v18[2] = 256;
  amber::MutableMemoryView::operator+(v18, 0, a7, v19);
  bzero(v19[1], v19[2]);
  if (a3 > 0x100)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 64);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::endView(a2 + 8, a3, v10, v19);
  if ((v11(v19) & 0x80000000) != 0)
  {
    return 4294967294;
  }

  amber::CryptoBlobBase<256u>::grow(a2, a3, v12, v13, v14, v15, v16);
  return 0;
}

uint64_t amber::AEACrypto::HMAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a4 + 16) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a3 + 16) != *(a1 + 12))
  {
    return 0xFFFFFFFFLL;
  }

  result = v4(a2, a3, a4);
  if (!result)
  {
    if (*(a2 + 16) == *(a1 + 24))
    {
      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t amber::AEACrypto::AEADKDF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 72);
  if (v3 && *(a3 + 16) == *(a1 + 12))
  {
    v8 = &unk_2A1DDFDD8;
    v9 = &unk_2A1DDFE08;
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
    result = v3(a2, *(a1 + 16));
    if (!result)
    {
      if (*(a2 + 16) == *(a1 + 16))
      {
        result = 0;
      }

      else
      {
        result = 4294967294;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::AEADEncrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 96);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  result = v5(a2, a3, a4, a5);
  if (!result)
  {
    if (*(a3 + 16) == *(a1 + 24))
    {
      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t amber::AEACrypto::AEADDecrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a3 + 16) == *(a1 + 24))
  {
    return v5(a2, a3, a4, a5);
  }

  return 4294967294;
}

uint64_t amber::AEACrypto::DSDigest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 136);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = v3(a2, a3);
  if (!result)
  {
    if (*(a2 + 16) == *(a1 + 44))
    {
      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t amber::AEACrypto::DSVerify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 152);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::AEACrypto::ContainerIDDigest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::AEACrypto::DeriveMainKeyCommon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = *MEMORY[0x29EDCA608];
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
  if (*(a4 + 16) == *(a1 + 12))
  {
    if (*(a8 + 16) == *(a1 + 20))
    {
      v11 = *(a1 + 32);
      if (*(a5 + 16) == v11)
      {
        if (*(a6 + 16) == v11)
        {
          if (*(a7 + 16) == *(a1 + 40))
          {
            amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v55, "AEA_AMK", a3, a4, a5, a6, a7);
            v53 = *(a1 + 4);
            v50 = &off_2A1DDFC68;
            v51 = &v53;
            v52 = 4;
            amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v55, &v50, v16, v17, v18, v19, v20);
            v21 = *(a5 + 16);
            v50 = &off_2A1DDFC68;
            v51 = (a5 + 20);
            v52 = v21;
            amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v55, &v50, v22, v23, v24, v25, v26);
            v27 = *(a6 + 16);
            v50 = &off_2A1DDFC68;
            v51 = (a6 + 20);
            v52 = v27;
            amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v55, &v50, v28, v29, v30, v31, v32);
            v33 = *(a7 + 16);
            v50 = &off_2A1DDFC68;
            v51 = (a7 + 20);
            v52 = v33;
            amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v55, &v50, v34, v35, v36, v37, v38);
            v44 = *(a1 + 72);
            v45 = *(a1 + 12);
            v46 = -1;
            if (v44)
            {
              if (*(a4 + 16))
              {
                v46 = v44(a2, v45, a4, &v54, a8);
                LODWORD(v45) = *(a1 + 12);
                if (!v46)
                {
                  if (*(a2 + 16) == v45)
                  {
                    v46 = 0;
                  }

                  else
                  {
                    v46 = -2;
                  }
                }
              }
            }

            if (*(a2 + 16) == v45)
            {
              v47 = v46;
            }

            else
            {
              v47 = 4294966276;
            }

            if (v47)
            {
              amber::CryptoBlobBase<256u>::resize(a2, 0, v39, v40, v41, v42, v43);
            }
          }

          else
          {
            v47 = 4294966291;
          }
        }

        else
        {
          v47 = 4294966292;
        }
      }

      else
      {
        v47 = 4294966293;
      }
    }

    else
    {
      v47 = 4294966294;
    }
  }

  else
  {
    v47 = 4294966295;
  }

  v48 = *MEMORY[0x29EDCA608];
  return v47;
}

uint64_t amber::AEACrypto::DeriveMainKeySymmetric(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x29EDCA608];
  v8[0] = &unk_2A1DDFDD8;
  v8[1] = &unk_2A1DDFE08;
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
  v24 = 0u;
  v25 = 0;
  result = amber::AEACrypto::DeriveMainKeyCommon(a1, a2, a3, a4, v8, v8, a5, a6);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveMainKeyPassword(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v118 = *MEMORY[0x29EDCA608];
  v116[0] = &unk_2A1DDFDD8;
  v116[1] = &unk_2A1DDFE08;
  memset(&v116[2], 0, 256);
  v117 = 0;
  v97 = &unk_2A1DDFDD8;
  v98 = &unk_2A1DDFE08;
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
  v113 = 0u;
  v114 = 0u;
  v115 = 0;
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
  if (*(a1 + 80) && *(a1 + 72))
  {
    if (*(a4 + 16) >= 0x14u)
    {
      v38 = "AEA_SCRYPT";
      v39 = 10;
      amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(&v98, &v38, a3, a4, a5, a6, a7);
      if (((*(a1 + 72))(v116, (2 * *(a1 + 20)), a6, &v97, v79) & 0x80000000) != 0)
      {
        result = 4294967292;
      }

      else
      {
        v15 = *(a1 + 20);
        v38 = &off_2A1DDFDA8;
        v39 = &v116[2] + 4;
        v40 = LODWORD(v116[2]);
        amber::MutableMemoryView::first(&v38, v15, v14, &v32);
        v35 = &off_2A1DDFC68;
        v36 = v33;
        v37 = v34;
        if (v34 < 0 || !v33 && v34)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v20);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid args");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v61, &v35, v16, v17, v18, v19, v20);
        v21 = *(a1 + 20);
        v38 = &off_2A1DDFDA8;
        v39 = &v116[2] + 4;
        v40 = LODWORD(v116[2]);
        amber::MutableMemoryView::view(&v38, v21, v21, v22, &v32);
        v35 = &off_2A1DDFC68;
        v36 = v33;
        v37 = v34;
        if (v34 < 0 || !v33 && v34)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEA/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v27);
          v31 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v31, "memory invalid args");
          __cxa_throw(v31, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v42, &v35, v23, v24, v25, v26, v27);
        LODWORD(v116[2]) = 0;
        v35 = &off_2A1DDFDA8;
        v36 = &v116[2] + 4;
        v37 = 256;
        amber::MutableMemoryView::operator+(&v35, 0, v28, &v38);
        bzero(v39, v40);
        if (((*(a1 + 80))(v116, a4, *(a1 + 8), &v60) & 0x80000000) != 0)
        {
          result = 4294967291;
        }

        else
        {
          result = amber::AEACrypto::DeriveMainKeyCommon(a1, a2, v29, v116, v79, v79, a5, &v41);
        }
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

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveMainKeyDHESender(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v7 = *(a1 + 112);
  if (v7)
  {
    if (*(a5 + 16) == *(a1 + 32))
    {
      if ((v7(v17, a4, a5) & 0x80000000) != 0)
      {
        result = 4294967293;
      }

      else if (*(a4 + 16) == *(a1 + 32))
      {
        if (v18 == *(a1 + 12))
        {
          result = amber::AEACrypto::DeriveMainKeyCommon(a1, a2, v14, v17, a4, a5, a6, a7);
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

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveMainKeyDHERecipient(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9)
{
  v33 = *MEMORY[0x29EDCA608];
  v31[0] = &unk_2A1DDFDD8;
  v31[1] = &unk_2A1DDFE08;
  memset(&v31[2], 0, 256);
  v32 = 0;
  v28 = 0;
  if (a7)
  {
    v11 = *(a1 + 8);
    v12 = *(a4 + 16);
    if (v12 == v11)
    {
      v14 = *(a5 + 16);
      if (v14 == v11)
      {
        if (*a1 >= 6u)
        {
          v19 = 0xFFFFFFFFLL;
        }

        else
        {
          v19 = *a1;
        }

        v30[0] = &off_2A1DDFDA8;
        v30[1] = &v31[2] + 4;
        v30[2] = 256;
        amber::MutableMemoryView::operator+(v30, 0, a7, v29);
        if (((a7)(a6, v19, a4 + 20, v12, a5 + 20, v14, 256, v29[1], &v28) & 0x80000000) != 0)
        {
          result = 4294967292;
        }

        else
        {
          amber::CryptoBlobBase<256u>::grow(v31, v28, v20, v21, v22, v23, v24);
          if (LODWORD(v31[2]) == *(a1 + 3))
          {
            result = amber::AEACrypto::DeriveMainKeyCommon(a1, a2, v25, v31, a4, a5, a8, a9);
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

  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveSignatureKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v32 = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v31, "AEA_SEK", a3, a4, a5, a6, a7);
  v13[0] = &unk_2A1DDFDD8;
  v13[1] = &unk_2A1DDFE08;
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
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  result = 0xFFFFFFFFLL;
  v11 = *(a1 + 72);
  if (v11)
  {
    if (*(a3 + 16))
    {
      result = v11(a2, *(a1 + 12), a3, v31, v13);
      if (!result)
      {
        if (*(a2 + 16) == *(a1 + 12))
        {
          result = 0;
        }

        else
        {
          result = 4294967294;
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveClusterKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  v40[34] = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v39, "AEA_CK", a3, a4, a5, a6, a7);
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
  v20 = v7;
  v19[0] = &off_2A1DDFC68;
  v19[1] = &v20;
  v19[2] = 4;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v40, v19, v11, v12, v13, v14, v15);
  v16 = *(a1 + 72);
  result = 0xFFFFFFFFLL;
  if (v16)
  {
    if (*(a3 + 16))
    {
      result = v16(a2, *(a1 + 12), a3, v39, v21);
      if (!result)
      {
        if (*(a2 + 16) == *(a1 + 12))
        {
          result = 0;
        }

        else
        {
          result = 4294967294;
        }
      }
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DerivePaddingKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v32 = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v31, "AEA_PAK", a3, a4, a5, a6, a7);
  v13[0] = &unk_2A1DDFDD8;
  v13[1] = &unk_2A1DDFE08;
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
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  result = 0xFFFFFFFFLL;
  v11 = *(a1 + 72);
  if (v11)
  {
    if (*(a3 + 16))
    {
      result = v11(a2, *(a1 + 12), a3, v31, v13);
      if (!result)
      {
        if (*(a2 + 16) == *(a1 + 12))
        {
          result = 0;
        }

        else
        {
          result = 4294967294;
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveRootHeaderAEADKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v12[35] = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v12, "AEA_RHEK", a3, a4, a5, a6, a7);
  result = amber::AEACrypto::AEADKDF(a1, a2, a3);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveClusterAEADKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v35[35] = *MEMORY[0x29EDCA608];
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
  if ((amber::AEACrypto::DeriveClusterKey(a1, v17, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::CryptoBlobBase<256u>::CryptoBlobBase(v35, "AEA_CHEK", v9, v10, v11, v12, v13), (amber::AEACrypto::AEADKDF(a1, a2, v17) & 0x80000000) != 0))
  {
    *(a2 + 16) = 0;
    v16[0] = &off_2A1DDFDA8;
    v16[1] = a2 + 20;
    v16[2] = 256;
    amber::MutableMemoryView::operator+(v16, 0, v13, v35);
    bzero(v35[1], v35[2]);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveSegmentAEADKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4;
  v21[34] = *MEMORY[0x29EDCA608];
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v20, "AEA_SK", a3, a4, a5, a6, a7);
  v19 = v7;
  v18[0] = &off_2A1DDFC68;
  v18[1] = &v19;
  v18[2] = 4;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(v21, v18, v11, v12, v13, v14, v15);
  result = amber::AEACrypto::AEADKDF(a1, a2, a3);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::AEACrypto::DeriveSegmentAEADKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
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
  if ((amber::AEACrypto::DeriveClusterKey(a1, v17, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::AEACrypto::DeriveSegmentAEADKey(a1, a2, v17, a5, v10, v11, v12) & 0x80000000) != 0)
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

uint64_t amber::AEACrypto::DeriveSignatureAEADKeyWithMainKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v54[35] = *MEMORY[0x29EDCA608];
  v35 = &unk_2A1DDFDD8;
  v36 = &unk_2A1DDFE08;
  v37 = 0u;
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
  v53 = 0;
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
  if ((amber::AEACrypto::DeriveSignatureKey(a1, v17, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::CryptoBlobBase<256u>::CryptoBlobBase(v54, "AEA_SEK2", v9, v10, v11, v12, v13), (amber::AEACrypto::AEADKDF(a1, a2, v17) & 0x80000000) != 0))
  {
    *(a2 + 16) = 0;
    v16[0] = &off_2A1DDFDA8;
    v16[1] = a2 + 20;
    v16[2] = 256;
    amber::MutableMemoryView::operator+(v16, 0, v13, v54);
    bzero(v54[1], v54[2]);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL amber::BaseObject::attributeEncodingIsValid(amber::BaseObject *this, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (this <= 500)
  {
    if (this <= 129)
    {
      if (this <= 116)
      {
        if ((this - 109) >= 8 && (this - 101) >= 4)
        {
          if ((this - 105) >= 4)
          {
            goto LABEL_64;
          }

          return a2 == 1;
        }

        return a2 == 2;
      }

      if (this > 122)
      {
        if ((this - 127) < 3 || (this - 123) < 2)
        {
          return a2 == 3;
        }

        if ((this - 125) < 2)
        {
          return a2 == 7;
        }

LABEL_64:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BaseObject.cpp", "attributeEncodingIsValid", 0x8E, 0, "missing case in encodingIsValid: attr: %u", a7, this);
        return 0;
      }

      if ((this - 119) < 4)
      {
        return a2 == 2;
      }

      if ((this - 117) >= 2)
      {
        goto LABEL_64;
      }

      return a2 == 1;
    }

    if (this > 400)
    {
      if ((this - 401) >= 0x11)
      {
        goto LABEL_64;
      }

      return a2 == 6;
    }

    if (this > 200)
    {
      if ((this - 202) < 6)
      {
        return a2 == 2;
      }

      if (this != 201)
      {
        goto LABEL_64;
      }

      return a2 == 1;
    }

    if ((this - 130) < 2)
    {
      return a2 == 4;
    }

    if ((this - 132) >= 2)
    {
      if (this != 134)
      {
        goto LABEL_64;
      }

      return a2 == 1;
    }

    return a2 == 5;
  }

  if (this > 900)
  {
    if (this > 1300)
    {
      if ((this - 1402) >= 7 && (this - 1301) >= 2)
      {
        if (this != 1401)
        {
          goto LABEL_64;
        }

        return a2 == 2;
      }

      return a2 == 1;
    }

    if (this > 1200)
    {
      if ((this - 1201) >= 9)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (this > 1001)
      {
        if ((this - 1101) >= 5 && this != 1002)
        {
          goto LABEL_64;
        }

        return a2 == 2;
      }

      if (this != 901)
      {
        if (this != 902 && this != 1001)
        {
          goto LABEL_64;
        }

        return a2 == 1;
      }
    }

    return a2 == 6;
  }

  if (this > 708)
  {
    if ((this - 801) >= 0xC)
    {
      if ((this - 709) < 2)
      {
        return a2 == 7;
      }

      if (this != 711)
      {
        goto LABEL_64;
      }

      return a2 == 5;
    }

    return a2 == 6;
  }

  if (this <= 700)
  {
    if ((this - 502) < 6)
    {
      return a2 == 2;
    }

    if (this != 501)
    {
      goto LABEL_64;
    }

    return a2 == 6;
  }

  if (this < 705)
  {
    return a2 == 2;
  }

  if ((this - 705) >= 2)
  {
    if (this == 707)
    {
      return a2 == 2;
    }

    if (this == 708)
    {
      return a2 == 8;
    }

    goto LABEL_64;
  }

  return a2 == 1;
}

uint64_t amber::BaseObject::getAttributeObjectStorePath(amber::BaseObject *this, uint64_t a2, amber::ObjectStorePath *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v12[0] = &off_2A1DDFDA8;
  v12[1] = v14;
  v12[2] = 544;
  v13 = 0;
  if (((*(*this + 16))(this, a2, 7, v12, &v13) & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  if (v13 != 544)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BaseObject.cpp", "getAttributeObjectStorePath", 0x97, 0, "invalid attribute size", v8);
LABEL_7:
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if ((amber::fromAmberObject(a3, v14, v4, v5, v6, v7, v8) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BaseObject.cpp", "getAttributeObjectStorePath", 0x98, 0, "invalid attribute data", v9);
    goto LABEL_7;
  }

  result = 0;
LABEL_8:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::BaseObject::getAttributeString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  size = 0;
  v18 = 0;
  v19 = 0;
  v17 = off_2A1DDFD48;
  v23 = 0;
  v24 = 0;
  v22 = &off_2A1DDFDA8;
  if (((*(*a1 + 16))(a1, a2, 6, &v22, &size) & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  if ((amber::MemorySegment::allocate(&v17, size, v6, v7, v8, v9, v10) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BaseObject.cpp", "getAttributeString", 0xA5, 0, "malloc", v11);
LABEL_14:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v22 = &off_2A1DDFDA8;
  v23 = v18;
  v24 = v19;
  if (v19 < 0 || !v18 && v19)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", v11);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (((*(*a1 + 16))(a1, a2, 6, &v22, &v20) & 0x80000000) != 0 || v20 != size)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BaseObject.cpp", "getAttributeString", 0xAA, 0, "string attribute size mismatch", v12);
    goto LABEL_14;
  }

  v22 = &off_2A1DDFC68;
  v23 = v18;
  v24 = v19;
  if (v19 < 0 || !v18 && v19)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v12);
    v16 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v16, "memory invalid args");
    __cxa_throw(v16, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  MEMORY[0x29C25BF10](a3);
  v13 = 0;
LABEL_15:
  free(v18);
  return v13;
}

void sub_2969F7AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  __cxa_free_exception(v10);
  free(a10);
  _Unwind_Resume(a1);
}

uint64_t AmberObjectGetAttribute(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, const char *a7)
{
  v15 = &off_2A1DDFDA8;
  v16 = a5;
  v17 = a4;
  if ((a4 & 0x8000000000000000) != 0 || (v9 = a3, a4) && !a5)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = (*(*a1 + 16))(a1, a2, a3, &v15, a6);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    if (v9 == 6)
    {
      if (a4)
      {
        v12 = *a6;
        if (*a6 >= a4)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BaseObject.cpp", "AmberObjectGetAttribute", 0xC4, 0, "insufficient capacity for terminating 0", v11);
          return 0xFFFFFFFFLL;
        }

        else
        {
          if (v17 <= v12)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "operator[]", 0xF7, 0, "memory invalid range", v11);
            v14 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25BE90](v14, "memory invalid range");
            __cxa_throw(v14, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          result = 0;
          *(v16 + v12) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t AmberObjectSetAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFC68;
  v9[1] = a4;
  v9[2] = a5;
  if (a5 < 0 || !a4 && a5)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return (*(*a1 + 24))(a1, a2, a3, v9);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::ObjectStorePath>,amber::ObjectStorePath*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 600;
  v4 = (a1 - 600);
  do
  {
    result = (**v4)(v4);
    v3 -= 600;
    v6 = v4 == a2;
    v4 -= 75;
  }

  while (!v6);
  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::SharedBlockCache::Client>,amber::SharedBlockCache::Client*>(uint64_t a1, void *a2)
{
  v3 = a1 - 280;
  v4 = (a1 - 280);
  do
  {
    *v4 = &unk_2A1DDFDD8;
    v4[1] = &unk_2A1DDFE08;
    bzero(v4 + 20, 0x100uLL);
    v5 = v4 - 1;
    v4 -= 36;
    v3 -= 288;
  }

  while (v5 != a2);
}

void amber::Logger::log(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_296942000, a2, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_296942000, a2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<amber::CryptoBlobBase<256u>>,amber::CryptoBlobBase<256u>*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 280;
  v4 = (a1 - 280);
  do
  {
    result = (**v4)(v4);
    v3 -= 280;
    v6 = v4 == a2;
    v4 -= 35;
  }

  while (!v6);
  return result;
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

void operator new()
{
    ;
  }
}