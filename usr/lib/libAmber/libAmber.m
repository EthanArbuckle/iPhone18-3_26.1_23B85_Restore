unint64_t DERTree::parseRec(DERTree *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 1);
  v12 = *v11;
  v13 = v12 & 0x1F;
  if (v13 == 31)
  {
    v14 = 0;
    v13 = 0;
    v15 = 1;
    while (1)
    {
      v16 = v15;
      if (v7 == v15)
      {
        break;
      }

      v17 = v11[v15];
      v18 = v17 & 0x7F;
      if (!(v14 | v18))
      {
        return 0xFFFFFFFFLL;
      }

      v19 = v17;
      v15 = v16 + 1;
      v14 += 7;
      v13 = v18 | (v13 << 7);
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    v14 = 7 * v7 - 7;
    v15 = *(a2 + 2);
LABEL_17:
    if (v16 >= v7)
    {
      return 0xFFFFFFFFLL;
    }

    if (v14 > 32)
    {
      return 4294967294;
    }
  }

  else
  {
    v15 = 1;
  }

  if (v15 >= v7)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = v15 + 1;
  v21 = v11[v15];
  if ((v11[v15] & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v29 = v11[v15];
  if (v29 == 128)
  {
    return 4294967294;
  }

  if (v29 == 255)
  {
LABEL_22:
    v21 = 0;
    goto LABEL_11;
  }

  v30 = v21 & 0x7F;
  if (v20 + (v21 & 0x7F) > v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v30 > 4)
  {
    return 4294967294;
  }

  if ((v21 & 0x7F) == 0)
  {
    goto LABEL_22;
  }

  v37 = v30 - 1;
  if (v7 + ~v15 <= v37)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "operator[]", 0xE9, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v21 = 0;
  v38 = v15 + v37;
  v39 = &v11[v20];
  do
  {
    v40 = *v39++;
    v21 = v40 | (v21 << 8);
    --v30;
  }

  while (v30);
  v20 = v38 + 2;
LABEL_11:
  if (v20 + v21 > v7)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = DERTree::allocNode(this);
  if ((v22 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = v22;
  v25 = *(this + 2);
  v26 = v22;
  v27 = v25 + (v22 << 6);
  *(v27 + 32) = a3;
  *(v27 + 40) = v20 + v21;
  *(v27 + 48) = v20 + a3;
  *(v27 + 56) = v21;
  *v27 = v12 >> 6;
  *(v27 + 4) = v13;
  *(v27 + 8) = (v12 & 0x20) == 0;
  if ((v12 >> 5))
  {
    if (!v21)
    {
      return v24;
    }

    v32 = -1;
    while (1)
    {
      amber::ConstMemoryView::view(a2, v20, v21, v23, v42);
      v33 = DERTree::parseRec(this, v42, v20 + a3);
      if ((v33 & 0x80000000) != 0)
      {
        break;
      }

      v34 = *(this + 2);
      v35 = v34 + (v33 << 6);
      *(v35 + 12) = v24;
      if ((v32 & 0x80000000) != 0)
      {
        *(v34 + (v26 << 6) + 16) = v33;
      }

      else
      {
        *(v34 + (v32 << 6) + 20) = v33;
      }

      v36 = *(v35 + 40);
      v20 += v36;
      v32 = v33;
      v21 -= v36;
      if (!v21)
      {
        return v24;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v28 = *(this + 2);
  if ((v28 & 0x80000000) != 0)
  {
    *(this + 1) = v22;
  }

  else
  {
    *(v25 + (v28 << 6) + 24) = v22;
  }

  *(this + 2) = v22;
  return v24;
}

unint64_t DERTree::allocNode(DERTree *this)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v2 = this + 16;
  v5 = *(v2 + 2);
  v6 = v4 - v3;
  if (v4 >= v5)
  {
    v8 = (v6 >> 6) + 1;
    if (v8 >> 58)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - v3;
    if (v9 >> 5 > v8)
    {
      v8 = v9 >> 5;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DERNode>>(v2, v10);
    }

    v11 = (v6 >> 6 << 6);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    v7 = v11 + 4;
    v12 = *(this + 2);
    v13 = *(this + 3) - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = *(this + 2);
    *(this + 2) = v14;
    *(this + 3) = v7;
    *(this + 4) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    v7 = v4 + 4;
  }

  *(this + 3) = v7;
  bzero(v7 - 4, 0x40uLL);
  *(v7 - 44) = -1;
  *(v7 - 52) = -1;
  return v6 >> 6;
}

uint64_t amber::ConstMemoryView::view@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X6>, void *a5@<X8>)
{
  if (__CFADD__(a2, a3) || (a2 + a3) > *(this + 16))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "view", 0xF0, 0, "memory invalid range", a4);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    goto LABEL_9;
  }

  v5 = *(this + 8);
  *a5 = &off_2A1DDFC68;
  a5[1] = v5 + a2;
  a5[2] = a3;
  if (a3 < 0 || a3 && !v5)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a4);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return this;
}

uint64_t amber::serializePublicKeyECP256ToStringEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v36[2] = 0;
  v36[3] = 0;
  v36[1] = off_2A1DDFD48;
  v36[5] = 0;
  v36[6] = 0;
  v36[4] = &off_2A1DDFDA8;
  v36[7] = &off_2A1DDFC68;
  v37 = 0u;
  v38 = 0u;
  v39 = 257;
  v40 = 0;
  v36[0] = off_2A1DDFC98;
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

  if (*(a1 + 16) != 65 || amber::ConstMemoryViewConvertible<amber::CryptoBlobBase<256u>>::operator[](a1 + 8, 0, a3, a4, a5, a6, a7) != 4)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "serializePublicKeyECP256ToStringEnd", 0x360, 0, "invalid key size/encoding", a7);
LABEL_18:
    v30 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  if ((amber::Buffer::reserveEndCapacity(v36, *(a1 + 16) + 26, v9, v10, v11, v12, a7) & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  v41[0] = &off_2A1DDFC68;
  v41[1] = &amber::serializePublicKeyECP256ToStringEnd(amber::CryptoBlobBase<256u> const&,std::string &)::prefix;
  v41[2] = 26;
  if ((amber::BufferProtocol<amber::Buffer>::append(v36, v41, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  v19 = *(a1 + 16);
  v33 = &off_2A1DDFC68;
  v34 = a1 + 20;
  v35 = v19;
  if ((amber::BufferProtocol<amber::Buffer>::append(v36, &v33, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  std::string::append(a2, "-----BEGIN PUBLIC KEY-----");
  amber::Buffer::constBuf(v36, v20, v41);
  amber::ConstMemoryView::view(v41, v38, *(&v38 + 1) - v38, v21, &v33);
  for (i = v35; i; v35 = i)
  {
    v23 = i >= 0x30 ? 48 : i;
    std::string::append(a2, "\n");
    amber::ConstMemoryView::first(&v33, v23, v24, v41);
    if (amber::base64BytesToStringEnd(v41, a2, v25, v26, v27, v28, v29) < 0)
    {
      goto LABEL_18;
    }

    if (v35 < v23)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", v18);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    i = v35 - v23;
    v34 += v23;
  }

  std::string::append(a2, "\n-----END PUBLIC KEY-----\n");
  v30 = 0;
LABEL_19:
  amber::Buffer::~Buffer(v36, v13, v14, v15, v16, v17, v18);
  return v30;
}

void sub_296943734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::ConstMemoryViewConvertible<amber::CryptoBlobBase<256u>>::operator[](uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 8) <= a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "operator[]", 0xE9, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return *(a1 + 12 + a2);
}

uint64_t amber::Buffer::reserveEndCapacity(amber::Buffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!a2)
  {
    return 0;
  }

  v9 = *(this + 11);
  v10 = v9 + a2;
  if (__CFADD__(v9, a2))
  {
    return 0xFFFFFFFFLL;
  }

  amber::Buffer::buf(this, a7, v27);
  if (v10 > v28 && ((amber::Buffer::pack(this, v12, v13, v14, v15, v16, v17), v19 = *(this + 11), v20 = __CFADD__(v19, a2), v21 = v19 + a2, v20) || (amber::Buffer::buf(this, v18, v27), v21 > v28) && (amber::Buffer::reserve(this, v21, v22, v23, v24, v25, v26) & 0x80000000) != 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t amber::BufferProtocol<amber::Buffer>::append(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::Buffer::reserveEndCapacity(a1, *(a2 + 16), a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    amber::Buffer::buf(a1, v9, v21);
    amber::MutableMemoryView::operator+(v21, a1[11], v10, v20);
    v12 = *(a2 + 16);
    if (v12 > v20[2])
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v11);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memcpy(v20[1], *(a2 + 8), v12);
    if ((amber::Buffer::grow(a1, *(a2 + 16), v13, v14, v15, v16, v17) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./BufferProtocol.hpp", "append", 0x37, 0, "append", v9);
  return 0xFFFFFFFFLL;
}

uint64_t amber::ConstMemoryView::first@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  if (*(this + 16) < a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "first", 0x124, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v4 = *(this + 8);
  *a4 = &off_2A1DDFC68;
  a4[1] = v4;
  a4[2] = a2;
  if ((a2 & 0x8000000000000000) != 0 || a2 && !v4)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_8;
  }

  return this;
}

uint64_t amber::parsePublicKeyECP256WithCertificateChain(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  __p = 0;
  v38 = 0;
  v39 = 0;
  v32[2] = 0;
  v32[3] = 0;
  v32[1] = off_2A1DDFD48;
  v32[5] = 0;
  v32[6] = 0;
  v32[4] = &off_2A1DDFDA8;
  v32[7] = &off_2A1DDFC68;
  v33 = 0u;
  v34 = 0u;
  v35 = 257;
  v36 = 0;
  v32[0] = off_2A1DDFC98;
  *(a1 + 16) = 0;
  v9 = (a1 + 20);
  v40 = &off_2A1DDFDA8;
  v41 = (a1 + 20);
  v42 = 256;
  amber::MutableMemoryView::operator+(&v40, 0, a7, &v43);
  bzero(v44, v45);
  if (a2)
  {
    v14 = strlen(a2);
    v40 = &off_2A1DDFC68;
    v41 = a2;
    v42 = v14;
    if ((v14 & 0x8000000000000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v13);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v40 = &off_2A1DDFC68;
  }

  if ((PEMParse(&v40, &__p, v32, v10, v11, v12, v13) & 0x80000000) == 0)
  {
    if (SHIBYTE(v39) < 0)
    {
      if (v38 != 11)
      {
        goto LABEL_15;
      }

      p_p = __p;
    }

    else
    {
      if (SHIBYTE(v39) != 11)
      {
        goto LABEL_15;
      }

      p_p = &__p;
    }

    v18 = *p_p;
    v19 = *(p_p + 3);
    if (v18 == 0x4349464954524543 && v19 == 0x4554414349464954)
    {
      amber::Buffer::constBuf(v32, v16, &v43);
      amber::ConstMemoryView::view(&v43, v34, *(&v34 + 1) - v34, v29, v31);
      DERTree::parse(v31, v30);
    }
  }

LABEL_15:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "parsePublicKeyECP256WithCertificateChain", 0x393, 0, "invalid cert chain", v16);
  *(a1 + 16) = 0;
  v40 = &off_2A1DDFDA8;
  v41 = v9;
  v42 = 256;
  amber::MutableMemoryView::operator+(&v40, 0, v21, &v43);
  bzero(v44, v45);
  amber::Buffer::~Buffer(v32, v22, v23, v24, v25, v26, v27);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  return 0xFFFFFFFFLL;
}

void sub_296944010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  amber::Buffer::~Buffer(&a12, a2, a3, a4, a5, a6, a7);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t PEMParse(uint64_t a1, uint64_t a2, amber::Buffer *this, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::resize(this, 0, this, a4, a5, a6, a7);
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_45;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = amber::kSpaces;
  while (1)
  {
    v20 = *(a1 + 8);
    v21 = v17;
    while (*(v20 + v21) && *(v20 + v21) != 10)
    {
      if (v15 == ++v21)
      {
        v21 = v15;
        break;
      }
    }

    v23 = v21 - v17;
    v24 = (v20 + v17);
    if (v18 != 1)
    {
      v25 = v23 - 16;
      if (v23 >= 0x10 && (*v24 == 0x4745422D2D2D2D2DLL ? (v26 = *(v24 + 3) == 0x204E494745422D2DLL) : (v26 = 0), v26 && ((v27 = v20 + v21, v28 = *(v27 - 5), v29 = *(v27 - 1), v28 == 757935405) ? (v30 = v29 == 45) : (v30 = 0), v30)))
      {
        v54 = v24 + 11;
        v55 = v25;
        v34 = std::string_view::find_first_not_of[abi:ne200100](&v54, v19, 0);
        if (v34 == -1)
        {
          v36 = v19;
          v39 = 0;
          v38 = 0;
        }

        else
        {
          v35 = v34;
          v36 = v19;
          v37 = std::string_view::find_last_not_of[abi:ne200100](&v54, v19, 0xFFFFFFFFFFFFFFFFLL);
          if (v55 < v35)
          {
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

          v38 = v54 + v35;
          if (v55 - v35 >= v37 - v35 + 1)
          {
            v39 = v37 - v35 + 1;
          }

          else
          {
            v39 = v55 - v35;
          }
        }

        MEMORY[0x29C25BF10](a2, v38, v39);
        v18 = 1;
        v16 = v21;
        v19 = v36;
      }

      else
      {
        if (v21 != v17)
        {
          goto LABEL_45;
        }

        v18 = 0;
      }

      goto LABEL_29;
    }

    if (v23 >= 9)
    {
      v31 = *v24;
      v32 = *(v24 + 8);
      if (v31 == 0x444E452D2D2D2D2DLL && v32 == 32)
      {
        break;
      }
    }

    v18 = 1;
LABEL_29:
    v17 = v21 + 1;
    v15 = *(a1 + 16);
    if (v21 + 1 >= v15)
    {
      goto LABEL_45;
    }
  }

  v51[0] = *(a1 + 8) + v16;
  v51[1] = v17 - v16;
  v53 = 0;
  if ((amber::Buffer::reserveEndCapacity(this, 3 * ((v17 - v16) >> 2) + 6, v10, v11, v12, v13, v14) & 0x80000000) != 0 || (amber::Buffer::buf(this, v14, &v54), amber::MutableMemoryView::operator+(&v54, *(this + 11), v40, v52), v44 = amber::base64StringToBytes(v51, 1, v52, &v53, v41, v42, v43), v44 < 0) || (v49 = v44, (amber::Buffer::grow(this, v53, v45, v46, v47, v48, v14) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Buffer.hpp", "base64StringToBufferEnd", 0x192, 0, "invalid base64 string", v14);
  }

  else if (v49)
  {
    return 0;
  }

LABEL_45:
  amber::Buffer::resize(this, 0, v10, v11, v12, v13, v14);
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

  return 0xFFFFFFFFLL;
}

uint64_t DERTree::valuePtr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!*(a1 + 56))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "operator const unsigned char *", 0xE3, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return *(a1 + 48) + *(a2 + 48);
}

BOOL DERTree::valueEquals(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a2 + 4) != a3)
  {
    return 0;
  }

  v8 = *(a4 + 16);
  if (v8 != *(a2 + 56))
  {
    return 0;
  }

  amber::ConstMemoryView::view(a1 + 40, *(a2 + 48), v8, a7, v12);
  if (__n != *(a4 + 16))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemoryOperations.hpp", "compare", 0x68, 0, "memory invalid range", v9);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return memcmp(v12[1], *(a4 + 8), __n) == 0;
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(a1 + 8) = 0;
  v15[0] = &off_2A1DDFDA8;
  v15[1] = a1 + 12;
  v15[2] = 256;
  amber::MutableMemoryView::operator+(v15, 0, a7, v16);
  bzero(v16[1], v16[2]);
  if (amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(a1, a2, v9, v10, v11, v12, v13))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t amber::loadSymmetricKey(uint64_t a1, amber *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v31[2] = 0;
  v31[3] = 0;
  v31[1] = off_2A1DDFD48;
  v31[5] = 0;
  v31[6] = 0;
  v31[4] = &off_2A1DDFDA8;
  v31[7] = &off_2A1DDFC68;
  v32 = 0u;
  v33 = 0u;
  v34 = 257;
  v35 = 0;
  v31[0] = off_2A1DDFC98;
  *(a1 + 16) = 0;
  v36 = &off_2A1DDFDA8;
  v37 = a1 + 20;
  v38 = 256;
  amber::MutableMemoryView::operator+(&v36, 0, a7, v39);
  bzero(v39[1], v39[2]);
  if ((amber::loadFileContents(a2, v31, v9, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  amber::Buffer::constBuf(v31, v19, v39);
  amber::ConstMemoryView::view(v39, v33, *(&v33 + 1) - v33, v20, &v36);
  v30[0] = v37;
  v30[1] = v38;
  if (parse_key_string(a1, v30, 0))
  {
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(v31, v14, v15, v16, v17, v18, v19) <= 0x100)
    {
      amber::Buffer::constBuf(v31, v21, v39);
      amber::ConstMemoryView::view(v39, v33, *(&v33 + 1) - v33, v22, &v36);
      amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a1 + 8, &v36, v23, v24, v25, v26, v27);
      goto LABEL_5;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "loadSymmetricKey", 0x3BE, 0, "Error parsing symmetric key", v21);
LABEL_7:
    v28 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

LABEL_5:
  v28 = 0;
LABEL_8:
  amber::Buffer::~Buffer(v31, v14, v15, v16, v17, v18, v19);
  return v28;
}

void sub_296944770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t parse_key_string(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[1];
  if (v6 >= 4)
  {
    if (**a2 == 980968808)
    {
      v71 = (*a2 + 4);
      v72 = (v6 - 4);
      v7 = std::string_view::find_first_not_of[abi:ne200100](&v71, amber::kSpaces, 0);
      if (v7 == -1)
      {
        v12 = 0;
        v11 = 0;
      }

      else
      {
        v9 = v7;
        v10 = std::string_view::find_last_not_of[abi:ne200100](&v71, amber::kSpaces, 0xFFFFFFFFFFFFFFFFLL);
        v11 = &v72[-v9];
        if (v72 < v9)
        {
          goto LABEL_50;
        }

        v12 = v71 + v9;
        if (v11 >= v10 - v9 + 1)
        {
          v11 = (v10 - v9 + 1);
        }
      }

      v65 = v12;
      v66 = v11;
      *(a1 + 16) = 0;
      v67 = 0;
      v68 = &off_2A1DDFDA8;
      v69 = a1 + 20;
      v70 = 256;
      amber::MutableMemoryView::operator+(&v68, 0, v8, &v71);
      bzero(v72, v73);
      v71 = &off_2A1DDFDA8;
      v72 = (a1 + 20);
      v73 = 256;
      amber::MutableMemoryView::operator+(&v71, *(a1 + 16), v13, &v68);
      v18 = amber::hexStringToBytes(&v65, &v68, &v67, v14, v15, v16, v17);
      if (v18 < 0 || (v24 = v18, (amber::CryptoBlobBase<256u>::grow(a1, v67, v19, v20, v21, v22, v23) & 0x80000000) != 0))
      {
        v24 = -1;
      }

      if (v24 == v66 && (!a3 || *(a1 + 16) == a3))
      {
        return 0;
      }

      v6 = a2[1];
    }

    v25 = v6 >= 7;
    v26 = (v6 - 7);
    if (v25 && **a2 == 1702060386 && *(*a2 + 3) == 976500325)
    {
      v71 = (*a2 + 7);
      v72 = v26;
      v28 = std::string_view::find_first_not_of[abi:ne200100](&v71, amber::kSpaces, 0);
      if (v28 == -1)
      {
        v33 = 0;
        v32 = 0;
      }

      else
      {
        v30 = v28;
        v31 = std::string_view::find_last_not_of[abi:ne200100](&v71, amber::kSpaces, 0xFFFFFFFFFFFFFFFFLL);
        v32 = &v72[-v30];
        if (v72 < v30)
        {
          goto LABEL_50;
        }

        v33 = v71 + v30;
        if (v32 >= v31 - v30 + 1)
        {
          v32 = (v31 - v30 + 1);
        }
      }

      v65 = v33;
      v66 = v32;
      *(a1 + 16) = 0;
      v67 = 0;
      v68 = &off_2A1DDFDA8;
      v69 = a1 + 20;
      v70 = 256;
      amber::MutableMemoryView::operator+(&v68, 0, v29, &v71);
      bzero(v72, v73);
      v71 = &off_2A1DDFDA8;
      v72 = (a1 + 20);
      v73 = 256;
      amber::MutableMemoryView::operator+(&v71, *(a1 + 16), v34, &v68);
      v38 = amber::base64StringToBytes(&v65, 1, &v68, &v67, v35, v36, v37);
      if (v38 < 0 || (v44 = v38, (amber::CryptoBlobBase<256u>::grow(a1, v67, v39, v40, v41, v42, v43) & 0x80000000) != 0))
      {
        v44 = -1;
      }

      if (v44 == v66 && (!a3 || *(a1 + 16) == a3))
      {
        return 0;
      }
    }
  }

  v45 = std::string_view::find_first_not_of[abi:ne200100](a2, amber::kSpaces, 0);
  if (v45 == -1)
  {
    v51 = 0;
    v50 = 0;
    goto LABEL_41;
  }

  v47 = v45;
  v48 = std::string_view::find_last_not_of[abi:ne200100](a2, amber::kSpaces, 0xFFFFFFFFFFFFFFFFLL);
  v49 = a2[1];
  v50 = v49 - v47;
  if (v49 < v47)
  {
LABEL_50:
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v51 = *a2 + v47;
  if (v50 >= v48 - v47 + 1)
  {
    v50 = v48 - v47 + 1;
  }

LABEL_41:
  v65 = v51;
  v66 = v50;
  *(a1 + 16) = 0;
  v67 = 0;
  v68 = &off_2A1DDFDA8;
  v69 = a1 + 20;
  v70 = 256;
  amber::MutableMemoryView::operator+(&v68, 0, v46, &v71);
  bzero(v72, v73);
  v71 = &off_2A1DDFDA8;
  v72 = (a1 + 20);
  v73 = 256;
  amber::MutableMemoryView::operator+(&v71, *(a1 + 16), v52, &v68);
  v57 = amber::hexStringToBytes(&v65, &v68, &v67, v53, v54, v55, v56);
  if (v57 < 0 || (v63 = v57, (amber::CryptoBlobBase<256u>::grow(a1, v67, v58, v59, v60, v61, v62) & 0x80000000) != 0))
  {
    v63 = -1;
  }

  if (v63 != v66 || a3 && *(a1 + 16) != a3)
  {
    *(a1 + 16) = 0;
    v68 = &off_2A1DDFDA8;
    v69 = a1 + 20;
    v70 = 256;
    amber::MutableMemoryView::operator+(&v68, 0, v62, &v71);
    bzero(v72, v73);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::size(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(a1, a7, v11);
  amber::ConstMemoryView::view(v11, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v8, v10);
  return v10[2];
}

uint64_t amber::parseSymmetricKey(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (__s)
  {
    v11 = __s;
    v12 = strlen(__s);
    if ((v12 & 0x8000000000000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  *(a1 + 16) = 0;
  v13[0] = &off_2A1DDFDA8;
  v13[1] = a1 + 20;
  v13[2] = 256;
  amber::MutableMemoryView::operator+(v13, 0, a7, &v14);
  bzero(v15, v16);
  v14 = v11;
  v15 = v12;
  result = parse_key_string(a1, &v14, 0);
  if (result)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "parseSymmetricKey", 0x3C8, 0, "Error parsing symmetric key", v10);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t amber::experimentalGenerateEphemeralCert_P256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v238 = *MEMORY[0x29EDCA608];
  v195[0] = &unk_2A1DDFD28;
  v195[2] = 0;
  v195[3] = 0;
  v195[1] = off_2A1DDFD48;
  v195[5] = 0;
  v195[6] = 0;
  v195[4] = &off_2A1DDFDA8;
  v195[7] = &off_2A1DDFC68;
  v196 = 0u;
  v197 = 0u;
  v198 = 1;
  v199 = 0;
  v190[0] = &unk_2A1DDFD28;
  v190[2] = 0;
  v190[3] = 0;
  v190[1] = off_2A1DDFD48;
  v190[5] = 0;
  v190[6] = 0;
  v190[4] = &off_2A1DDFDA8;
  v190[7] = &off_2A1DDFC68;
  v191 = 0u;
  v192 = 0u;
  v193 = 1;
  v194 = 0;
  v185[0] = &unk_2A1DDFD28;
  v185[2] = 0;
  v185[3] = 0;
  v185[1] = off_2A1DDFD48;
  v185[5] = 0;
  v185[6] = 0;
  v185[4] = &off_2A1DDFDA8;
  v185[7] = &off_2A1DDFC68;
  v186 = 0u;
  v187 = 0u;
  v188 = 1;
  v189 = 0;
  v236[0] = &unk_2A1DDFDD8;
  v236[1] = &unk_2A1DDFE08;
  memset(&v236[2], 0, 256);
  v237 = 0;
  v218[0] = &unk_2A1DDFDD8;
  v218[1] = &unk_2A1DDFE08;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v235 = 0;
  v216[0] = &unk_2A1DDFDD8;
  v216[1] = &unk_2A1DDFE08;
  memset(&v216[2], 0, 256);
  v217 = 0;
  memset(&__p, 0, sizeof(__p));
  if ((amber::generateRandomPrivateKey_P256(a1, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::publicKeyFromPrivateKey_P256(v236, a1, v9, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x45D, 0, "generate private key", v13);
LABEL_43:
    *(a1 + 16) = 0;
    v172 = &off_2A1DDFDA8;
    v173 = (a1 + 20);
    v174 = 256;
    amber::MutableMemoryView::operator+(&v172, 0, v139, &v201);
    bzero(v202, v203);
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

    v138 = 0xFFFFFFFFLL;
    goto LABEL_47;
  }

  v201 = &off_2A1DDFC68;
  v202 = &amber::experimentalGenerateEphemeralCert_P256(amber::CryptoBlobBase<256u> &,std::string &)::x509v3_der;
  v203 = 5;
  if ((amber::BufferProtocol<amber::Buffer>::append(v195, &v201, v14, v15, v16, v17, v13) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppendEncoded", 0x40A, 0, "malloc", v22);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x46B, 0, "x509 version", v140);
    goto LABEL_43;
  }

  v172 = &unk_2A1DDFD28;
  v174 = 0;
  v175 = 0;
  v173 = off_2A1DDFD48;
  v177 = 0;
  v178 = 0;
  v176 = &off_2A1DDFDA8;
  v179 = &off_2A1DDFC68;
  v180 = 0u;
  v181 = 0u;
  v182 = 1;
  v183 = 0;
  if ((amber::Buffer::appendRandom(&v172, 8uLL, v18, v19, v20, v21, v22) & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  amber::Buffer::constBuf(&v172, v23, &v201);
  amber::ConstMemoryView::view(&v201, v181, *(&v181 + 1) - v181, v24, v171);
  if (!v171[2])
  {
    goto LABEL_41;
  }

  v201 = &unk_2A1DDFD28;
  v204 = 0;
  v202 = off_2A1DDFD48;
  v203 = 0;
  v207 = 0;
  v205 = &off_2A1DDFDA8;
  v206 = 0;
  v208 = &off_2A1DDFC68;
  v209 = 0u;
  v210 = 0u;
  v211 = 1;
  v212 = 0;
  if ((amber::BufferProtocol<amber::Buffer>::appendValue(&v201, 0, (*v171[1] >> 7), v25, v26, v27, v23) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::append(&v201, v171, v28, v29, v30, v31, v32) & 0x80000000) != 0 || (amber::Buffer::constBuf(&v201, v32, &v213), amber::ConstMemoryView::view(&v213, v210, *(&v210 + 1) - v210, v33, v200), (derAppend(v195, 2, v200, v34, v35, v36, v37) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppendInteger", 0x416, 0, "DER INTEGER", v32);
    amber::Buffer::~Buffer(&v201, v141, v142, v143, v144, v145, v146);
LABEL_41:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x472, 0, "serial number", v23);
    v153 = &v172;
LABEL_42:
    amber::Buffer::~Buffer(v153, v147, v148, v149, v150, v151, v152);
    goto LABEL_43;
  }

  amber::Buffer::~Buffer(&v201, v38, v39, v40, v41, v42, v32);
  amber::Buffer::~Buffer(&v172, v43, v44, v45, v46, v47, v48);
  v201 = &off_2A1DDFC68;
  v202 = &amber::experimentalGenerateEphemeralCert_P256(amber::CryptoBlobBase<256u> &,std::string &)::signature_algorithm_der;
  v203 = 12;
  if ((amber::BufferProtocol<amber::Buffer>::append(v195, &v201, v49, v50, v51, v52, v53) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppendEncoded", 0x40A, 0, "malloc", v58);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x476, 0, "signature algorithm", v168);
    goto LABEL_43;
  }

  v201 = &off_2A1DDFC68;
  v202 = &amber::experimentalGenerateEphemeralCert_P256(amber::CryptoBlobBase<256u> &,std::string &)::name_der;
  v203 = 77;
  if ((amber::BufferProtocol<amber::Buffer>::append(v195, &v201, v54, v55, v56, v57, v58) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppendEncoded", 0x40A, 0, "malloc", v59);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x479, 0, "issuer name", v169);
    goto LABEL_43;
  }

  v213 = 0;
  v201 = &unk_2A1DDFD28;
  v204 = 0;
  v202 = off_2A1DDFD48;
  v203 = 0;
  v207 = 0;
  v205 = &off_2A1DDFDA8;
  v206 = 0;
  v208 = &off_2A1DDFC68;
  v209 = 0u;
  v210 = 0u;
  v211 = 1;
  v212 = 0;
  time(&v213);
  if ((derAppendUTCTime(&v201, v213) & 0x80000000) != 0 || (derAppendUTCTime(&v201, v213 + 3600) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(&v201, v60, &v172), (derAppend(v195, 48, &v172, v61, v62, v63, v64) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x483, 0, "validity", v60);
LABEL_52:
    v153 = &v201;
    goto LABEL_42;
  }

  amber::Buffer::~Buffer(&v201, v65, v66, v67, v68, v69, v60);
  v201 = &off_2A1DDFC68;
  v202 = &amber::experimentalGenerateEphemeralCert_P256(amber::CryptoBlobBase<256u> &,std::string &)::name_der;
  v203 = 77;
  if ((amber::BufferProtocol<amber::Buffer>::append(v195, &v201, v70, v71, v72, v73, v74) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppendEncoded", 0x40A, 0, "malloc", v75);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x487, 0, "subject name", v170);
    goto LABEL_43;
  }

  amber::Buffer::Buffer(&v201);
  v172 = &off_2A1DDFC68;
  v173 = &amber::experimentalGenerateEphemeralCert_P256(amber::CryptoBlobBase<256u> &,std::string &)::curve_der;
  v174 = 21;
  if ((derAppendEncoded(&v201, &v172, v76, v77, v78, v79, v80) & 0x80000000) != 0 || (v213 = &off_2A1DDFC68, v214 = &v236[2] + 4, v215 = LODWORD(v236[2]), (derAppendBitString(&v201, &v213, v81, v82, v83, v84, v85) & 0x80000000) != 0) || (amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(&v201, v85, v200), (derAppend(v195, 48, v200, v86, v87, v88, v89) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x48F, 0, "public key info", v85);
    goto LABEL_52;
  }

  amber::Buffer::~Buffer(&v201, v90, v91, v92, v93, v94, v85);
  amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v195, v95, &v201);
  if ((derAppend(v190, 48, &v201, v96, v97, v98, v99) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x493, 0, "cert seq", v100);
    goto LABEL_43;
  }

  amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v190, v100, &v201);
  if ((amber::digest_SHA256(v218, &v201, v101, v102, v103, v104, v105) & 0x80000000) != 0 || (amber::sign_ECDSA_P256_NoPadding(v216, a1, v218, v106, v107, v108, v109) & 0x80000000) != 0 || (v172 = &off_2A1DDFC68, v173 = &amber::experimentalGenerateEphemeralCert_P256(amber::CryptoBlobBase<256u> &,std::string &)::signature_algorithm_der, v174 = 12, (derAppendEncoded(v190, &v172, v110, v111, v112, v113, v109) & 0x80000000) != 0) || (v213 = &off_2A1DDFC68, v214 = &v216[2] + 4, v215 = LODWORD(v216[2]), (derAppendBitString(v190, &v213, v114, v115, v116, v117, v109) & 0x80000000) != 0) || (amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v190, v109, v200), (derAppend(v185, 48, v200, v118, v119, v120, v121) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x49B, 0, "signed cert seq", v109);
    goto LABEL_43;
  }

  amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v185, v109, &v201);
  if (amber::base64BytesToStringEnd(&v201, &__p, v122, v123, v124, v125, v126) < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "experimentalGenerateEphemeralCert_P256", 0x4A0, 0, "cert PEM", v127);
    goto LABEL_43;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, "-----BEGIN CERTIFICATE-----\n");
  if (size)
  {
    for (i = 0; i < size; i += v130)
    {
      if (size - i >= 0x40)
      {
        v130 = 64;
      }

      else
      {
        v130 = size - i;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      std::string::append(a2, p_p + i, v130);
      std::string::append(a2, "\n");
    }
  }

  std::string::append(a2, "-----END CERTIFICATE-----\n");
  v138 = 0;
LABEL_47:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  amber::Buffer::~Buffer(v185, v132, v133, v134, v135, v136, v137);
  amber::Buffer::~Buffer(v190, v154, v155, v156, v157, v158, v159);
  amber::Buffer::~Buffer(v195, v160, v161, v162, v163, v164, v165);
  v166 = *MEMORY[0x29EDCA608];
  return v138;
}

void sub_296945B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  amber::Buffer::~Buffer(&a32, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(&a45, v59, v60, v61, v62, v63, v64);
  amber::Buffer::~Buffer(&a58, v65, v66, v67, v68, v69, v70);
  _Unwind_Resume(a1);
}

uint64_t derAppendEncoded(amber::Buffer *a1, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::BufferProtocol<amber::Buffer>::append(a1, a2, a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppendEncoded", 0x40A, 0, "malloc", v7);
  return 0xFFFFFFFFLL;
}

uint64_t derAppendUTCTime(amber::Buffer *a1, time_t a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v31 = a2;
  amber::zero(void *,unsigned long)::memset_func(&v32, 0, 56);
  gmtime_r(&v31, &v32);
  strftime(__s, 0x64uLL, "%y%m%d%H%M%SZ", &v32);
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
  v24[0] = &off_2A1DDFC68;
  v24[1] = __s;
  v25 = strlen(__s);
  if ((v25 & 0x8000000000000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if ((amber::BufferProtocol<amber::Buffer>::append(v26, v24, v3, v4, v5, v6, v7) & 0x80000000) != 0 || (amber::Buffer::constBuf(v26, v8, v33), amber::ConstMemoryView::view(v33, v28, *(&v28 + 1) - v28, v9, v23), (derAppend(a1, 23, v23, v10, v11, v12, v13) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppendUTCTime", 0x432, 0, "DER UTCTime", v8);
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v19 = 0;
  }

  amber::Buffer::~Buffer(v26, v14, v15, v16, v17, v18, v8);
  v20 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_296945F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  amber::Buffer::~Buffer(&a15, v17, v18, v19, v20, v21, v22);
  _Unwind_Resume(a1);
}

uint64_t derAppendBitString(amber::Buffer *a1, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!*(a2 + 2))
  {
    return 0xFFFFFFFFLL;
  }

  v27[0] = &unk_2A1DDFD28;
  v27[2] = 0;
  v27[3] = 0;
  v27[1] = off_2A1DDFD48;
  v27[5] = 0;
  v27[6] = 0;
  v27[4] = &off_2A1DDFDA8;
  v27[7] = &off_2A1DDFC68;
  v28 = 0u;
  v29 = 0u;
  v30 = 1;
  v31 = 0;
  if ((amber::BufferProtocol<amber::Buffer>::appendValue(v27, 0, 1, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::append(v27, a2, v9, v10, v11, v12, v13) & 0x80000000) != 0 || (amber::Buffer::constBuf(v27, v13, v32), amber::ConstMemoryView::view(v32, v29, *(&v29 + 1) - v29, v14, v26), (derAppend(a1, 3, v26, v15, v16, v17, v18) & 0x80000000) != 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppendBitString", 0x422, 0, "DER BIT STRING", v13);
    v24 = 0xFFFFFFFFLL;
  }

  else
  {
    v24 = 0;
  }

  amber::Buffer::~Buffer(v27, v19, v20, v21, v22, v23, v13);
  return v24;
}

void sub_2969460D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

double amber::CryptoBlobBase<256u>::~CryptoBlobBase(uint64_t a1)
{
  *a1 = &unk_2A1DDFDD8;
  *(a1 + 8) = &unk_2A1DDFE08;
  result = 0.0;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 260) = 0u;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE4FE88, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DERNode>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void amber::SecureBuffer::~SecureBuffer(amber::SecureBuffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::~Buffer(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

void amber::Buffer::~Buffer(amber::Buffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::~Buffer(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DDFD28;
  if (*(this + 97) == 1)
  {
    amber::Buffer::buf(this, a7, v8);
    bzero(v8[1], v8[2]);
  }

  free(*(this + 2));
}

void amber::MemorySegment::~MemorySegment(void **this)
{
  free(this[1]);
}

{
  free(this[1]);

  JUMPOUT(0x29C25C000);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE4FE90, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::append(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 16);
  v9 = *(a1 + 8);
  v10 = __CFADD__(v9, v8);
  v11 = v9 + v8;
  if (!v10 && v11 <= 0x100)
  {
    v23[0] = &off_2A1DDFDA8;
    v23[1] = a1 + 12;
    v23[2] = 256;
    amber::MutableMemoryView::operator+(v23, v9, a7, v22);
    v14 = *(a2 + 16);
    if (v14 > v22[2])
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v13);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memcpy(v22[1], *(a2 + 8), v14);
    if ((amber::CryptoBlobBase<256u>::grow(a1 - 8, *(a2 + 16), v15, v16, v17, v18, v19) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./BufferProtocol.hpp", "append", 0x37, 0, "append", a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::MutableMemoryView::operator+@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  v4 = *(result + 16);
  if (v4 < a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MutableMemoryView.hpp", "operator+", 0x104, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = *(result + 8);
  *a4 = &off_2A1DDFDA8;
  a4[1] = v5 + a2;
  a4[2] = v4 - a2;
  if ((v4 - a2) < 0 || (v4 != a2 ? (v6 = v5 == 0) : (v6 = 0), v6))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_10;
  }

  return result;
}

uint64_t amber::CryptoBlobBase<256u>::grow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a1 + 16);
  v8 = __CFADD__(v7, a2);
  v9 = v7 + a2;
  if (v8 || v9 >= 0x101)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Crypto/./CryptoBlob.hpp", "grow", 0x5D, 0, "CryptoBlob invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "CryptoBlob invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(a1 + 16) = v9;
  return 0;
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::appendValue(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a1 + 8);
  if (!__CFADD__(v8, a3) && a3 + v8 <= 0x100)
  {
    v20[0] = &off_2A1DDFDA8;
    v20[1] = a1 + 12;
    v20[2] = 256;
    amber::MutableMemoryView::operator+(v20, v8, a7, v19);
    if (v19[2] < a3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemoryOperations.hpp", "set", 0x4A, 0, "memory invalid range", v11);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memset(v19[1], a2, a3);
    if ((amber::CryptoBlobBase<256u>::grow(a1 - 8, a3, v12, v13, v14, v15, v16) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./BufferProtocol.hpp", "appendValue", 0x41, 0, "append", a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::ConstMemoryView::load(amber::ConstMemoryView *this, const amber::MutableMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  v8 = __CFADD__(a3, v7);
  v9 = a3 + v7;
  if (v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Range.hpp", "createWithOffsetAndLength", 0x1E, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9 <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  if (v9 <= a3)
  {
    v9 = 0;
  }

  v18[0] = v10;
  v18[1] = v9;
  if (v9 > *(this + 2))
  {
    return 0xFFFFFFFFLL;
  }

  amber::ConstMemoryView::view(this, v18, a7, v16);
  if (__n > *(a2 + 2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v13);
    v15 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v15, "memory invalid range");
    __cxa_throw(v15, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(*(a2 + 1), v16[1], __n);
  return 0;
}

uint64_t amber::ConstMemoryView::view@<X0>(uint64_t this@<X0>, const amber::Range *a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  v4 = *(a2 + 1);
  if (v4 > *(this + 16))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "view", 0xF6, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = *(this + 8);
  v6 = *a2;
  v7 = v5 + *a2;
  *a4 = &off_2A1DDFC68;
  a4[1] = v7;
  a4[2] = v4 - v6;
  if ((v4 - v6) < 0 || (!v5 ? (v8 = v4 == v6) : (v8 = 1), !v8))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_11;
  }

  return this;
}

uint64_t amber::Buffer::buf@<X0>(uint64_t this@<X0>, const char *a2@<X6>, void *a3@<X8>)
{
  if (*(this + 98) == 1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Buffer.hpp", "buf", 0x102, 0, "memory read-only", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory read-only");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (*(this + 96) == 1)
  {
    v3 = this + 8;

    return amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator amber::MutableMemoryView(v3, a2, a3);
  }

  else
  {
    v4 = *(this + 40);
    v5 = *(this + 48);
    *a3 = &off_2A1DDFDA8;
    a3[1] = v4;
    a3[2] = v5;
  }

  return this;
}

uint64_t amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator amber::MutableMemoryView@<X0>(uint64_t result@<X0>, const char *a2@<X6>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  *a3 = &off_2A1DDFDA8;
  a3[1] = v3;
  a3[2] = v4;
  if (v4 < 0 || (!v3 ? (v5 = v4 == 0) : (v5 = 1), !v5))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

BOOL amber::ConstMemoryViewConvertible<amber::Buffer>::empty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(a1, a7, v11);
  amber::ConstMemoryView::view(v11, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v8, v10);
  return v10[2] == 0;
}

uint64_t amber::Buffer::grow(amber::Buffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 11);
  v8 = v7 + a2;
  if (__CFADD__(v7, a2) || (amber::Buffer::buf(this, a7, v12), v8 > v12[2]))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Buffer.hpp", "grow", 0xAD, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(this + 11) = v8;
  return 0;
}

uint64_t amber::Buffer::constBuf@<X0>(uint64_t this@<X0>, const char *a2@<X6>, uint64_t a3@<X8>)
{
  if (*(this + 96) == 1)
  {
    v3 = this + 8;

    return amber::ConstMemoryViewConvertible<amber::MemorySegment>::operator amber::ConstMemoryView(v3, a2, a3);
  }

  else if (*(this + 98) == 1)
  {
    *a3 = &off_2A1DDFC68;
    *(a3 + 8) = *(this + 64);
  }

  else
  {
    v5 = *(this + 40);
    v4 = *(this + 48);
    *a3 = &off_2A1DDFC68;
    *(a3 + 8) = v5;
    *(a3 + 16) = v4;
    if (v4 < 0 || !v5 && v4)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a2);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }
  }

  return this;
}

uint64_t amber::ConstMemoryViewConvertible<amber::MemorySegment>::operator amber::ConstMemoryView@<X0>(uint64_t result@<X0>, const char *a2@<X6>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  *a3 = &off_2A1DDFC68;
  a3[1] = v3;
  a3[2] = v4;
  if (v4 < 0 || (!v3 ? (v5 = v4 == 0) : (v5 = 1), !v5))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

uint64_t amber::Buffer::pack(amber::Buffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 10);
  if (v7)
  {
    if (*(this + 98) == 1)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Buffer.hpp", "pack", 0x92, 0, "memory read-only", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory read-only");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v9 = *(this + 11) - v7;
    amber::Buffer::buf(this, a7, &v17);
    v11 = *(this + 10);
    v12 = *(this + 11);
    if (v11 >= v12)
    {
      v11 = 0;
      v12 = 0;
    }

    if (v12 - v11 != v9 || (v12 <= v19 ? (v13 = v9 > v19) : (v13 = 1), v13))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MutableMemoryView.hpp", "move", 0x175, 0, "memory invalid range", v10);
      v15 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v15, "memory invalid range");
      __cxa_throw(v15, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memmove(__dst, __dst + v11, v9);
    *(this + 10) = 0;
    *(this + 11) = v9;
  }

  return 0;
}

uint64_t amber::Buffer::reserve(amber::Buffer *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::buf(this, a7, &v43);
  if (v45 < a2)
  {
    if ((*(this + 96) & 1) == 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Buffer.hpp", "reserve", 0x5A, 0, "buffer can't be allocated", v13);
      return 0xFFFFFFFFLL;
    }

    v14 = 16;
    v15 = __clz(a2);
    v16 = ((0x3FFFFFFFFFFFFFFFuLL >> v15) + a2) & (0xC000000000000000 >> v15);
    if (a2 >= 0x11)
    {
      v14 = v16;
    }

    if (a2 >= 9)
    {
      v17 = v14;
    }

    else
    {
      v17 = 8;
    }

    if (*(this + 97) == 1)
    {
      v41 = 0;
      v42 = 0;
      v40 = off_2A1DDFD48;
      if ((amber::MemorySegment::allocate(&v40, v17, v9, v10, v11, v12, v13) & 0x80000000) == 0)
      {
        amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator amber::MutableMemoryView(&v40, v18, &v43);
        amber::ConstMemoryViewConvertible<amber::MemorySegment>::operator amber::ConstMemoryView(this + 8, v19, v38);
        if (__n > v45)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v20);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid range");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        memcpy(__dst, v38[1], __n);
        v22 = *(this + 2);
        v23 = *(this + 3);
        *(this + 2) = 0;
        *(this + 3) = 0;
        v43 = off_2A1DDFD48;
        __dst = v22;
        v45 = v23;
        if (&v40 == (this + 8))
        {
          if (v41)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemorySegment.hpp", "operator=", 0xD9, 0, "memory invalid state", v21);
            v37 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25BE90](v37, "memory invalid state");
            __cxa_throw(v37, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }
        }

        else
        {
          v24 = v42;
          *(this + 2) = v41;
          *(this + 3) = v24;
        }

        v41 = v22;
        v42 = v23;
        amber::MutableMemoryViewConvertible<amber::MemorySegment>::operator amber::MutableMemoryView(&v40, v21, &v43);
        bzero(__dst, v45);
        free(v41);
        return 0;
      }

      v29 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Buffer.hpp", "reserve", 0x61, *v29, "malloc", v30);
      free(v41);
      return 0xFFFFFFFFLL;
    }

    if (*(this + 3) != v17)
    {
      v26 = *(this + 2);
      if (v26)
      {
        if (!v17)
        {
          free(v26);
          result = 0;
          *(this + 2) = 0;
          *(this + 3) = 0;
          return result;
        }

        v27 = reallocf(v26, v17);
        if (v27)
        {
          v28 = v27;
          result = 0;
          *(this + 2) = v28;
          *(this + 3) = v17;
          return result;
        }

        v31 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Malloc.hpp", "reallocf", 0x41, *v31, "realloc", v32);
        *(this + 2) = 0;
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemorySegment.hpp", "reallocate", 0x102, 0, "malloc", v33);
        *(this + 3) = 0;
        goto LABEL_29;
      }

      if ((amber::MemorySegment::allocate((this + 8), v17, v9, v10, v11, v12, v13) & 0x80000000) != 0)
      {
LABEL_29:
        v34 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Buffer.hpp", "reserve", 0x68, *v34, "malloc", v35);
        *(this + 10) = 0;
        *(this + 11) = 0;
        return 0xFFFFFFFFLL;
      }
    }
  }

  return 0;
}

void sub_296947574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  __cxa_free_exception(v17);
  free(a17);
  free(a14);
  _Unwind_Resume(a1);
}

uint64_t amber::MemorySegment::allocate(amber::MemorySegment *this, size_t size, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 1))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemorySegment.hpp", "allocate", 0xEA, 0, "memory invalid state", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid state");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (!size)
  {
    return 0;
  }

  v9 = malloc_type_malloc(size, 0xF93785E2uLL);
  if (v9)
  {
    v10 = v9;
    result = 0;
    *(this + 1) = v10;
    *(this + 2) = size;
  }

  else
  {
    v12 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v12, "malloc", v13);
    *(this + 1) = 0;
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemorySegment.hpp", "allocate", 0xED, 0, "malloc", v14);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t amber::Buffer::resize(amber::Buffer *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this, a2, a3, a4, a5, a6, a7);
  if (a2 <= v9)
  {
    if (a2)
    {
      *(this + 11) = *(this + 10) + a2;
    }

    else
    {
      *(this + 10) = 0;
      *(this + 11) = 0;
    }

    return 0;
  }

  else
  {

    return amber::BufferProtocol<amber::Buffer>::appendValue(this, 0, (a2 - v9), v10, v11, v12, v13);
  }
}

uint64_t amber::BufferProtocol<amber::Buffer>::appendValue(unint64_t *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::Buffer::reserveEndCapacity(a1, a3, a3, a4, a5, a6, a7) & 0x80000000) == 0)
  {
    amber::Buffer::buf(a1, v10, v21);
    amber::MutableMemoryView::operator+(v21, a1[11], v11, v20);
    if (v20[2] < a3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MemoryOperations.hpp", "set", 0x4A, 0, "memory invalid range", v12);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    memset(v20[1], a2, a3);
    if ((amber::Buffer::grow(a1, a3, v13, v14, v15, v16, v17) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./BufferProtocol.hpp", "appendValue", 0x41, 0, "append", v10);
  return 0xFFFFFFFFLL;
}

uint64_t std::string_view::find_first_not_of[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = strlen(__s);
  v8 = v6 > a3;
  v9 = v6 - a3;
  if (!v8)
  {
    return -1;
  }

  v10 = v7;
  v11 = (v5 + a3);
  if (v7)
  {
    while (memchr(__s, *v11, v10))
    {
      ++v11;
      if (!--v9)
      {
        return -1;
      }
    }
  }

  return &v11[-v5];
}

unint64_t std::string_view::find_last_not_of[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = strlen(__s);
  if (v6 > a3)
  {
    v8 = a3 + 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 - 1;
  do
  {
    v10 = v9;
    if (v9 == -1)
    {
      break;
    }

    if (!v7)
    {
      break;
    }

    v11 = memchr(__s, *(v5 + v9), v7);
    v9 = v10 - 1;
  }

  while (v11);
  return v10;
}

double amber::Buffer::Buffer(amber::Buffer *this)
{
  *this = &unk_2A1DDFD28;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = off_2A1DDFD48;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = &off_2A1DDFDA8;
  *(this + 7) = &off_2A1DDFC68;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 48) = 1;
  *(this + 98) = 0;
  return result;
}

uint64_t derAppend(amber::Buffer *a1, char a2, const amber::ConstMemoryView *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::Buffer::reserveEndCapacity(a1, *(a3 + 2) + 9, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/CryptoIO.cpp", "derAppend", 0x3E3, 0, "malloc", v14);
  }

  else
  {
    v35 = a2;
    v32 = &off_2A1DDFC68;
    v33 = &v35;
    v34 = 1;
    if ((amber::BufferProtocol<amber::Buffer>::append(a1, &v32, v10, v11, v12, v13, v14) & 0x80000000) == 0)
    {
      v20 = *(a3 + 2);
      if (v20 >= 0x80)
      {
        v27 = 1;
        v28 = 8;
        do
        {
          if (!(v20 >> v28))
          {
            break;
          }

          ++v27;
          v28 += 8;
        }

        while (v27 != 8);
        v35 = v27 | 0x80;
        v32 = &off_2A1DDFC68;
        v33 = &v35;
        v34 = 1;
        if ((amber::BufferProtocol<amber::Buffer>::append(a1, &v32, v15, v16, v17, v18, v19) & 0x80000000) == 0)
        {
          v29 = 8 * v27 - 8;
          while (1)
          {
            v30 = v29 - 8;
            if (v29 == -8)
            {
              break;
            }

            v35 = v20 >> v29;
            v32 = &off_2A1DDFC68;
            v33 = &v35;
            v34 = 1;
            v31 = amber::BufferProtocol<amber::Buffer>::append(a1, &v32, v21, v22, v23, v24, v25);
            v29 = v30;
            if (v31 < 0)
            {
              return 0xFFFFFFFFLL;
            }
          }

          return (amber::BufferProtocol<amber::Buffer>::append(a1, a3, v21, v22, v23, v24, v25) >> 31);
        }
      }

      else
      {
        v35 = *(a3 + 2);
        v32 = &off_2A1DDFC68;
        v33 = &v35;
        v34 = 1;
        if ((amber::BufferProtocol<amber::Buffer>::append(a1, &v32, v15, v16, v17, v18, v19) & 0x80000000) == 0)
        {
          return (amber::BufferProtocol<amber::Buffer>::append(a1, a3, v21, v22, v23, v24, v25) >> 31);
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

double non-virtual thunk toamber::CryptoBlobBase<256u>::~CryptoBlobBase(uint64_t a1)
{
  *(a1 - 8) = &unk_2A1DDFDD8;
  *a1 = &unk_2A1DDFE08;
  result = 0.0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  return result;
}

void amber::CryptoBlobBase<256u>::~CryptoBlobBase(uint64_t a1)
{
  *a1 = &unk_2A1DDFDD8;
  *(a1 + 8) = &unk_2A1DDFE08;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 260) = 0u;
  JUMPOUT(0x29C25C000);
}

double amber::CryptoBlobBase<256u>::binaryParse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
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
  if (v11 > 0x100)
  {
    goto LABEL_4;
  }

  v17[0] = &off_2A1DDFDA8;
  v17[1] = a1 + 20;
  v17[2] = 256;
  amber::MutableMemoryView::first(v17, v11, a7, &v19);
  v13 = __n;
  if (__n <= __src[1])
  {
    memcpy(__dst, __src[0], __n);
    __src[0] = __src[0] + v13;
    __src[1] = __src[1] - v13;
    v19 = &off_2A1DDFDA8;
    __dst = (a1 + 20);
    __n = 256;
    amber::MutableMemoryView::operator+(&v19, *v8, v16, &v22);
    bzero(v23, v24);
    result = *__src;
    *(a2 + 8) = *__src;
  }

  else
  {
LABEL_4:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Crypto/./CryptoBlob.hpp", "binaryParse", 0x72, 0, "invalid/truncated CryptoBlob", a7);
    *(a1 + 16) = 0;
    v19 = &off_2A1DDFDA8;
    __dst = (a1 + 20);
    __n = 256;
    amber::MutableMemoryView::operator+(&v19, 0, v14, &v22);
    bzero(v23, v24);
  }

  return result;
}

uint64_t amber::CryptoBlobBase<256u>::binarySerialize(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, a2, a3, a4, a5, a6, a7);
  v29[0] = &off_2A1DDFC68;
  v29[1] = a1 + 16;
  v29[2] = 4;
  if ((amber::BufferProtocol<amber::Buffer>::append(a2, v29, v10, v11, v12, v13, v14) & 0x80000000) == 0)
  {
    v27[0] = &off_2A1DDFC68;
    v27[1] = a1 + 20;
    v27[2] = 256;
    amber::ConstMemoryView::first(v27, *(a1 + 16), v15, v28);
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, v28, v16, v17, v18, v19, v20) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Crypto/./CryptoBlob.hpp", "binarySerialize", 0x7C, 0, "serialization", v15);
  amber::Buffer::resize(a2, v9, v22, v23, v24, v25, v26);
  return 0xFFFFFFFFLL;
}

void non-virtual thunk toamber::CryptoBlobBase<256u>::~CryptoBlobBase(uint64_t a1)
{
  *(a1 - 8) = &unk_2A1DDFDD8;
  *a1 = &unk_2A1DDFE08;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  JUMPOUT(0x29C25C000);
}

uint64_t amber::MutableMemoryView::first@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  if (*(this + 16) < a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MutableMemoryView.hpp", "first", 0x110, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v4 = *(this + 8);
  *a4 = &off_2A1DDFDA8;
  a4[1] = v4;
  a4[2] = a2;
  if ((a2 & 0x8000000000000000) != 0 || a2 && !v4)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Crypto/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_8;
  }

  return this;
}

xpc_object_t amber::xpcSendMessage(_xpc_session_s *a1, void *a2)
{
  error_out = 0;
  v4 = xpc_session_send_message_with_reply_sync(a1, a2, &error_out);
  if (v4)
  {
    v6 = v4;
    v7 = -9;
    v8 = MEMORY[0x29EDCAA18];
    v9 = MEMORY[0x29EDCA9B8];
    while (MEMORY[0x29C25CB60](v6) == v8)
    {
      if (v6 != v9)
      {
        v13 = "invalid connection";
        v14 = 34;
        goto LABEL_11;
      }

      xpc_release(v9);
      if (__CFADD__(v7++, 1))
      {
        return 0;
      }

      usleep(0x1F4u);
      error_out = 0;
      v6 = xpc_session_send_message_with_reply_sync(a1, a2, &error_out);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    if (!xpc_dictionary_get_BOOL(v6, "Failed"))
    {
      return v6;
    }

    v13 = "request failed";
    v14 = 39;
LABEL_11:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCCommon.cpp", "xpcSendMessage", v14, 0, v13, v10);
    xpc_release(v6);
  }

  else
  {
LABEL_7:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCCommon.cpp", "xpcSendMessage", 0x10, 0, "request failed", v5);
    amber::xpcLogErrorAndRelease(error_out, v12);
  }

  return 0;
}

uint64_t amber::xpcLogErrorAndRelease(uint64_t this, _xpc_rich_error_s *a2)
{
  if (this)
  {
    v2 = this;
    v3 = xpc_rich_error_copy_description(this);
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCCommon.cpp", "xpcLogErrorAndRelease", 0x47, 0, "XPC error: %s", v4, v3);
    xpc_release(v2);
    free(v3);
    return 0xFFFFFFFFLL;
  }

  return this;
}

uint64_t amber::FileCacheBlockDevice::allocateState(amber::FileCacheBlockDevice *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 71);
  v8 = *(this + 70);
  v9 = *(this + 121);
  v10 = (v9 - 1);
  if (__CFADD__(v7 - v8, v10))
  {
    v11 = "invalid size";
    v12 = 258;
LABEL_10:
    v23 = 0;
LABEL_19:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "allocateState", v12, v23, v11, a7);
    return 0xFFFFFFFFLL;
  }

  v14 = (v7 - v8 + v10) >> *(this + 122);
  *(this + 62) = v14;
  v15 = v8 & -v9;
  v16 = (v7 + v9 - 1) & -v9;
  if (v15 >= v16)
  {
    v15 = 0;
    v16 = 0;
  }

  *(this + 72) = v15;
  *(this + 73) = v16;
  v17 = malloc_type_calloc(v14, 1uLL, 0xF7660194uLL);
  if (!v17)
  {
    v24 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "calloc", 0x2D, *v24, "calloc", v25);
    *(this + 63) = 0;
    v23 = *__error();
    v11 = "malloc";
    v12 = 263;
    goto LABEL_19;
  }

  *(this + 63) = v17;
  v18 = *(this + 71) - *(this + 70);
  v19 = *(this + 130);
  v20 = (v19 - 1);
  v21 = __CFADD__(v18, v20);
  v22 = v18 + v20;
  if (v21)
  {
    v11 = "invalid size";
    v12 = 266;
    goto LABEL_10;
  }

  *(this + 66) = v22 / v19;
  std::vector<amber::IOSegment *>::reserve(this + 67, v22 / v19);
  if (*(this + 66))
  {
    operator new();
  }

  if (ftruncate(*(this + 117), *(this + 73)) < 0)
  {
    v23 = *__error();
    v11 = "ftruncate";
    v12 = 273;
    goto LABEL_19;
  }

  if ((*(this + 1) & 0x8000000000000000) != 0)
  {
    amber::log(0, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "allocateState", 0x115, 0, "File cache device", v26);
    amber::logSize("bytes in device", (*(this + 71) - *(this + 70)), 1u);
    amber::logSize("bytes in file", (*(this + 73) - *(this + 72)), 1u);
    amber::logValue("bytes per block", *(this + 121));
    amber::logValue("blocks", *(this + 62));
    amber::logValue("bytes per I/O segment", *(this + 130));
    amber::logValue("I/O segments", *(this + 66));
  }

  return 0;
}

void *std::vector<amber::IOSegment *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<amber::IOSegment *>>(result, a2);
    }

    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void amber::FileCacheBlockDevice::deallocateState(void **this)
{
  free(this[63]);
  this[63] = 0;
  v2 = this[67];
  v3 = this[68] - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    do
    {
      v6 = this[67];
      v7 = v6[v4];
      if (v7)
      {
        v8 = *(v7 + 72);
        if (v8)
        {
          *(v7 + 80) = v8;
          operator delete(v8);
        }

        std::mutex::~mutex((v7 + 8));
        MEMORY[0x29C25C000](v7, 0x1080C407EC19757);
        v6 = this[67];
      }

      v6[v4++] = 0;
    }

    while (v5 != v4);
    v2 = this[67];
  }

  this[68] = v2;
}

uint64_t amber::FileCacheBlockDevice::fileCacheRead(amber::FileCacheBlockDevice *this, unsigned __int8 *a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!a3)
  {
    return 0;
  }

  v7 = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v7 <= a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  if (v7 <= a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4 + a3;
  }

  v11 = *(this + 121);
  v12 = v9 & -v11;
  v13 = (v10 + v11 - 1) & -v11;
  if (v12 >= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (*(this + 72) > v9 || (v12 >= v13 ? (v15 = 0) : (v15 = v12), v10 > *(this + 73)))
  {
    v16 = "invalid range";
    v17 = 314;
    goto LABEL_18;
  }

  if (v15 >= v14)
  {
    return 0;
  }

  while (2)
  {
    v20 = 0;
    v21 = v15;
    v22 = *(this + 122);
    do
    {
      if (v15 >> v22 >= *(this + 62))
      {
LABEL_57:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheRead", 0x14C, 0, "missing data in read pos: %llu", a7, v21);
        return 0xFFFFFFFFLL;
      }

      v23 = *(*(this + 63) + (v15 >> v22)) & 3;
      if (v23 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_57;
        }

        v23 = 0;
      }

      if (v15 == v21)
      {
        v20 = v23;
      }

      else if (v23 != v20)
      {
        break;
      }

      v15 += *(this + 121);
    }

    while (v15 < v14);
    if (v15 == v21)
    {
      v16 = "invalid state";
      v17 = 341;
    }

    else
    {
      if (v21 < v15)
      {
        v24 = v15;
      }

      else
      {
        v21 = 0;
        v24 = 0;
      }

      if (v9 == v10)
      {
        v27 = 0;
        v28 = 0;
      }

      else
      {
        if (v21 <= v9)
        {
          v25 = v9;
        }

        else
        {
          v25 = v21;
        }

        if (v10 >= v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v10;
        }

        if (v25 >= v26)
        {
          v25 = 0;
          v26 = 0;
        }

        if (v21 == v24)
        {
          v27 = 0;
        }

        else
        {
          v27 = v25;
        }

        if (v21 == v24)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }
      }

      v29 = v28 - v27;
      if (v20)
      {
        if (a2)
        {
          amber::zero(void *,unsigned long)::memset_func(&a2[v27 - v9], 0, v29);
        }

LABEL_54:
        result = 0;
        if (v15 < v14)
        {
          continue;
        }

        return result;
      }

      if (pread(*(this + 117), &a2[v27 - v9], v28 - v27, v27) == v29)
      {
        goto LABEL_54;
      }

      v16 = "cache read";
      v17 = 359;
    }

    break;
  }

LABEL_18:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheRead", v17, 0, v16, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::FileCacheBlockDevice::fileCacheWriteAlignedLocked(amber::FileCacheBlockDevice *this, const unsigned __int8 *a2, unsigned int a3, unint64_t a4, int a5, uint64_t a6, const char *a7)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v10 = v8 <= a4 ? 0 : a4;
  v11 = v8 <= a4 ? 0 : a4 + a3;
  v12 = *(this + 130);
  v13 = v10 & -v12;
  v14 = (v11 + v12 - 1) & -v12;
  v15 = v13 >= v14 ? 0 : v10 & -v12;
  if (v13 >= v14 || v14 <= v15)
  {
    return 0;
  }

  v46 = (4 * (a5 != 0)) | 1;
  v20 = a2 - a4;
  v47 = 1;
  v48 = (4 * (a5 != 0)) | 2;
  v43 = v10;
  v44 = (v11 + v12 - 1) & -v12;
  v45 = v11;
  do
  {
    v50 = *(*(this + 67) + 8 * (v15 / v12));
    std::mutex::lock((v50 + 8));
    v21 = v15 + *(this + 130);
    v49 = v15;
    if (v15 >= v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v15;
    }

    if (v15 >= v21)
    {
      i = 0;
    }

    else
    {
      i = v15 + *(this + 130);
    }

    if (v10 != v11 && v22 != i)
    {
      if (v22 <= v10)
      {
        v24 = v10;
      }

      else
      {
        v24 = v22;
      }

      if (v11 >= i)
      {
        v25 = i;
      }

      else
      {
        v25 = v11;
      }

      if (v24 >= v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      if (v24 >= v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      if (v26 >= v27)
      {
LABEL_75:
        v14 = v44;
        v11 = v45;
        goto LABEL_76;
      }

      v28 = v26;
      v51 = i;
      while (1)
      {
        v29 = 0;
        do
        {
          if (!a5)
          {
            v30 = v28 >> *(this + 122);
            if (v30 < *(this + 62) && (*(*(this + 63) + v30) & 3) != 0)
            {
              break;
            }
          }

          if (a2)
          {
            v31 = &a2[v28 - a4];
            v32 = &v31[*(this + 121)];
            v33 = v20 + v28;
            while (v31 < v32 && (v33 & 7) != 0)
            {
              v34 = *v31++;
              ++v33;
              if (v34)
              {
LABEL_52:
                v36 = 0;
                goto LABEL_57;
              }
            }

            while ((v31 + 8) <= v32)
            {
              v35 = *v31;
              v31 += 8;
              if (v35)
              {
                goto LABEL_52;
              }
            }

            do
            {
              v36 = v31 >= v32;
              if (v31 >= v32)
              {
                break;
              }
            }

            while (!*v31++);
          }

          else
          {
            v36 = 1;
          }

LABEL_57:
          if (v28 == v26)
          {
            v29 = v36;
          }

          else if ((v29 ^ v36))
          {
            break;
          }

          v28 += *(this + 121);
        }

        while (v28 < v27);
        if (v28 == v26)
        {
          break;
        }

        if (v29)
        {
          if (v28 > v26)
          {
            i = v51;
            do
            {
              *(*(this + 63) + (v26 >> *(this + 122))) = v46;
              v26 += *(this + 121);
            }

            while (v26 < v28);
            goto LABEL_64;
          }

          goto LABEL_63;
        }

        if (pwrite(*(this + 117), &a2[v26 - a4], v28 - v26, v26) != v28 - v26)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheWriteAlignedLocked", 0x1BB, 0, "writing data to cache", v38);
          v47 = 0;
          v10 = v43;
          v14 = v44;
          v11 = v45;
          i = v51;
          goto LABEL_76;
        }

        for (i = v51; v26 < v28; v26 += *(this + 121))
        {
          *(*(this + 63) + (v26 >> *(this + 122))) = v48;
        }

LABEL_64:
        v26 = v28;
        if (v28 >= v27)
        {
          v10 = v43;
          goto LABEL_75;
        }
      }

      v28 = v26 + *(this + 121);
LABEL_63:
      i = v51;
      goto LABEL_64;
    }

LABEL_76:
    if (!atomic_load(v50))
    {
      if (v22 < i)
      {
        while (v22 < *(this + 73))
        {
          v40 = v22 >> *(this + 122);
          if (v40 >= *(this + 62) || (*(*(this + 63) + v40) & 3) == 0)
          {
            goto LABEL_77;
          }

          v22 += *(this + 121);
          if (v22 >= i)
          {
            break;
          }
        }
      }

      v41 = 0;
      atomic_compare_exchange_strong(v50, &v41, 1u);
      if (!v41)
      {
        amber::IOSegment::lockedRelease(v50);
      }
    }

LABEL_77:
    std::mutex::unlock((v50 + 8));
    if (!v47)
    {
      break;
    }

    v12 = *(this + 130);
    v15 += v12;
  }

  while (v14 > v49 + v12);
  if (v47)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void amber::IOSegment::lockedRelease(amber::IOSegment *this)
{
  v2 = *(this + 9);
  v3 = *(this + 10) - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    do
    {
      amber::Sem::release(*(*(this + 9) + 8 * v4++));
    }

    while (v5 != v4);
    v2 = *(this + 9);
  }

  *(this + 10) = v2;
}

uint64_t amber::FileCacheBlockDevice::fileCacheWrite(amber::FileCacheBlockDevice *this, const unsigned __int8 *a2, unsigned int a3, unint64_t a4, int a5, uint64_t a6, const char *a7)
{
  if (!a3)
  {
    return 0;
  }

  v7 = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v7 <= a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  if (v7 <= a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4 + a3;
  }

  v13 = *(this + 121);
  v14 = -v13;
  v15 = v11 & -v13;
  v16 = v12 + v13 - 1;
  v17 = v16 & v14;
  if (v15 >= (v16 & v14))
  {
    v18 = 0;
  }

  else
  {
    v18 = v16 & v14;
  }

  std::mutex::lock((this + 600));
  if (*(this + 70) > v11 || (v15 >= v17 ? (v22 = 0) : (v22 = v15), v12 > *(this + 71)))
  {
LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  if (v22 >= v18)
  {
    v23 = 0;
    v24 = 0;
    goto LABEL_19;
  }

  v50 = 0;
  while (1)
  {
    v26 = v22;
    v27 = *(this + 121);
    v22 += v27;
    if (v26 >= v22)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v26 >= v22)
    {
      v29 = 0;
    }

    else
    {
      v29 = v22;
    }

    if (v11 <= v28 && v29 <= v12)
    {
      v41 = v18 - v27;
      if (v12 == v18)
      {
        v41 = v17;
      }

      if (v28 >= v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v28;
      }

      if (v28 >= v41)
      {
        v22 = 0;
      }

      else
      {
        v22 = v41;
      }

      if (v22 < v42)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheWrite", 0x22A, 0, "inconsistent state", v21);
        goto LABEL_85;
      }

      if (v42 < v11 || v22 > v12)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheWrite", 0x22B, 0, "inconsistent state", v21);
        goto LABEL_85;
      }

      if (a2)
      {
        v44 = &a2[v42 - v11];
      }

      else
      {
        v44 = 0;
      }

      if ((amber::FileCacheBlockDevice::fileCacheWriteAlignedLocked(this, v44, v22 - v42, v42, a5, v20, v21) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheWrite", 0x230, 0, "write blocks", v21);
        goto LABEL_85;
      }

      goto LABEL_79;
    }

    if (a5)
    {
      break;
    }

LABEL_79:
    if (v22 >= v18)
    {
      v24 = 0;
      goto LABEL_86;
    }
  }

  v31 = v50;
  if (!v50)
  {
    v32 = malloc_type_malloc(v27, 0xF93785E2uLL);
    if (!v32)
    {
      v45 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v45, "malloc", v46);
      v47 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheWrite", 0x204, *v47, "malloc", v48);
      goto LABEL_17;
    }

    v31 = v32;
    LODWORD(v27) = *(this + 121);
  }

  v50 = v31;
  if ((amber::FileCacheBlockDevice::fileCacheRead(this, v31, v27, v28, v19, v20, v21) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheWrite", 0x20A, 0, "read block", v33);
LABEL_85:
    v24 = 0xFFFFFFFFLL;
LABEL_86:
    v23 = v50;
    goto LABEL_19;
  }

  if (v28 <= v11)
  {
    v34 = v11;
  }

  else
  {
    v34 = v28;
  }

  if (v12 >= v29)
  {
    v35 = v29;
  }

  else
  {
    v35 = v12;
  }

  if (v34 >= v35)
  {
    v34 = 0;
    v35 = 0;
  }

  if (v28 == v29)
  {
    v34 = 0;
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  if (v11 == v12)
  {
    v37 = 0;
  }

  else
  {
    v37 = v34;
  }

  if (v11 == v12)
  {
    v36 = 0;
  }

  v38 = v37 - v28;
  v23 = v50;
  if (a2)
  {
    memcpy(&v50[v38], &a2[v37 - v11], v36 - v37);
  }

  else
  {
    bzero(&v50[v38], v36 - v37);
  }

  if ((amber::FileCacheBlockDevice::fileCacheWriteAlignedLocked(this, v50, *(this + 121), v28, 1, v39, v40) & 0x80000000) == 0)
  {
    v22 = v29;
    goto LABEL_79;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheWrite", 0x221, 0, "write block", v21);
LABEL_18:
  v24 = 0xFFFFFFFFLL;
LABEL_19:
  free(v23);
  std::mutex::unlock((this + 600));
  return v24;
}

uint64_t amber::FileCacheBlockDevice::nextDeviceReply(amber::FileCacheBlockDevice *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 8);
  if (*(a2 + 7) != 2)
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 6);
  v9 = (*(this + 130) - 1);
  if ((v8 & v9) == 0)
  {
    v10 = *(a2 + 14);
    v11 = v8 + v10;
    if (__CFADD__(v8, v10))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v11 <= v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a2 + 6);
    }

    if (v11 <= v8)
    {
      v11 = 0;
    }

    if (*(this + 70) > v12 || (v13 = *(this + 71), v11 > v13))
    {
      v14 = "invalid range in reply";
      v15 = 603;
LABEL_13:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "nextDeviceReply", v15, 0, v14, a7);
      goto LABEL_14;
    }

    if ((v9 & v10) != 0 && v11 != v13)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "nextDeviceReply", 0x25D, 0, "non-aligned length in reply: %u", a7, *(a2 + 14));
      goto LABEL_14;
    }

    if ((amber::FileCacheBlockDevice::fileCacheWrite(this, *(a2 + 8), v10, v8, 0, a6, a7) & 0x80000000) != 0)
    {
      v14 = "write data to cache";
      v15 = 615;
      goto LABEL_13;
    }

LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "nextDeviceReply", 0x257, 0, "non-aligned offset in reply: %llu", a7, *(a2 + 6));
LABEL_14:
  v16 = 0xFFFFFFFFLL;
LABEL_20:
  free(v7);
  return v16;
}

uint64_t amber::FileCacheBlockDevice::fileCacheNextDeviceFetch(amber::FileCacheBlockDevice *this, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 66) <= a2)
  {
    v13 = "segment out of range";
    v14 = 628;
  }

  else
  {
    v7 = *(this + 130);
    v8 = v7 * a2;
    v9 = v7 * a2 + v7;
    if (v8 >= v9)
    {
      v8 = 0;
      v9 = 0;
    }

    if (v8 == v9 || (v10 = *(this + 70), v11 = *(this + 71), v10 == v11))
    {
      LODWORD(v9) = 0;
      v12 = 0;
    }

    else
    {
      if (v8 <= v10)
      {
        v8 = *(this + 70);
      }

      if (v11 < v9)
      {
        v9 = *(this + 71);
      }

      if (v8 >= v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

      if (v8 >= v9)
      {
        LODWORD(v9) = 0;
      }
    }

    if (v9 == v12)
    {
      v13 = "segment inconsistency";
      v14 = 634;
    }

    else
    {
      if (malloc_type_malloc((v9 - v12), 0xF93785E2uLL))
      {
        operator new();
      }

      v15 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v15, "malloc", v16);
      v14 = 638;
      v13 = "malloc";
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "fileCacheNextDeviceFetch", v14, 0, v13, a7);
  return 0xFFFFFFFFLL;
}

void sub_29694989C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::BlockDeviceEvent::~BlockDeviceEvent(va);
  _Unwind_Resume(a1);
}

uint64_t amber::FileCacheBlockDevice::ioSegmentDepsInsert(atomic_ullong *a1, unint64_t *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1[66] <= a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "ioSegmentDepsInsert", 0x2A7, 0, "out of range", a7);
    return 0xFFFFFFFFLL;
  }

  if (*a2 != a3)
  {
    v10 = *(a1[67] + 8 * a3);
    if (!atomic_load(v10))
    {
      std::mutex::lock((v10 + 8));
      v19 = atomic_load(v10);
      if (v19)
      {
        v12 = 0;
      }

      else
      {
        atomic_compare_exchange_strong((v10 + 4), &v19, 1u);
        if (v19 || (*(v10 + 96) = atomic_fetch_add_explicit(a1 + 64, 1uLL, memory_order_relaxed), (amber::FileCacheBlockDevice::fileCacheNextDeviceFetch(a1, a3, a4, v15, v16, v17, v18) & 0x80000000) == 0))
        {
          v21 = a2 + 2;
          v23 = *(v10 + 80);
          v22 = *(v10 + 88);
          if (v23 >= v22)
          {
            v25 = *(v10 + 72);
            v26 = (v23 - v25) >> 3;
            if ((v26 + 1) >> 61)
            {
              std::vector<DERNode>::__throw_length_error[abi:ne200100]();
            }

            v27 = v22 - v25;
            v28 = v27 >> 2;
            if (v27 >> 2 <= (v26 + 1))
            {
              v28 = v26 + 1;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v28;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<amber::IOSegment *>>(v10 + 72, v29);
            }

            v30 = (8 * v26);
            *v30 = v21;
            v24 = 8 * v26 + 8;
            v31 = *(v10 + 72);
            v32 = *(v10 + 80) - v31;
            v33 = v30 - v32;
            memcpy(v30 - v32, v31, v32);
            v34 = *(v10 + 72);
            *(v10 + 72) = v33;
            *(v10 + 80) = v24;
            *(v10 + 88) = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v23 = v21;
            v24 = (v23 + 1);
          }

          *(v10 + 80) = v24;
          v35 = a2[1] + 1;
          *a2 = a3;
          a2[1] = v35;
          std::mutex::unlock((v10 + 8));
          return 0;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "ioSegmentDepsInsert", 0x2BA, 0, "segment request", v20);
        v12 = 0xFFFFFFFFLL;
      }

      std::mutex::unlock((v10 + 8));
      return v12;
    }
  }

  return 0;
}

uint64_t amber::FileCacheBlockDevice::executeRead(amber::FileCacheBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v47 = *MEMORY[0x29EDCA608];
  amber::BlockDeviceRequest::range(a3, a7, &v40);
  v9 = *(this + 121);
  v10 = v40 & -v9;
  v11 = (v9 + v41 - 1) & -v9;
  if (v10 >= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v40 & -v9;
  }

  v42 = -1;
  v43 = 0;
  v44 = 0;
  v45.__m_.__sig = 850045863;
  memset(v45.__m_.__opaque, 0, sizeof(v45.__m_.__opaque));
  v46.__cv_.__sig = 1018212795;
  memset(v46.__cv_.__opaque, 0, sizeof(v46.__cv_.__opaque));
  amber::BlockDeviceEvent::BlockDeviceEvent(v39, 21, a3);
  if (*(this + 70) <= v40 && v41 <= *(this + 71))
  {
    v24 = 0;
    v25 = 0;
    while (v10 < v11 && v11 > v12)
    {
      v26 = *(this + 122);
      while (v12 >> v26 < *(this + 62) && (*(*(this + 63) + (v12 >> v26)) & 3) != 0)
      {
        v12 += *(this + 121);
        ++v25;
        if (v11 <= v12)
        {
          goto LABEL_19;
        }
      }

      v27 = *(this + 130);
      v28 = v12 / v27;
      v29 = amber::FileCacheBlockDevice::ioSegmentDepsInsert(this, &v42, v28, *(a3 + 161), v13, v14, v15);
      v12 = v27 + v27 * v28;
      ++v24;
      if (v29 < 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeRead", 0x2E4, 0, "update segment deps", v15);
LABEL_26:
        v20 = -2147483643;
        goto LABEL_7;
      }
    }

LABEL_19:
    while (v43)
    {
      amber::Sem::acquire(&v44);
      --v43;
    }

    amber::BlockDeviceEvent::sendBegin(v39);
    if ((amber::FileCacheBlockDevice::fileCacheRead(this, *(a3 + 8), *(a3 + 14), *(a3 + 6), v30, v31, v32) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeRead", 0x2F7, 0, "cache read", v33);
      goto LABEL_26;
    }

    amber::BlockDeviceEvent::sendEnd(v39);
    if ((amber::BlockDeviceRequest::sendReply(a3, 2, 0, v34, v35, v36, v37) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeRead", 0x2F9, 0, "reply data", v38);
    }

    v21 = 0;
    atomic_fetch_add_explicit(this + 84, v25, memory_order_relaxed);
    atomic_fetch_add_explicit(this + 85, v24, memory_order_relaxed);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeRead", 0x2D6, 0, "invalid request range", v15);
    v20 = -2147483626;
LABEL_7:
    amber::BlockDeviceRequest::sendReply(a3, v20, 0, v16, v17, v18, v19);
    v21 = 0xFFFFFFFFLL;
  }

  amber::BlockDeviceEvent::~BlockDeviceEvent(v39);
  std::condition_variable::~condition_variable(&v46);
  std::mutex::~mutex(&v45);
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_296949DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  amber::BlockDeviceEvent::~BlockDeviceEvent(&a9);
  std::condition_variable::~condition_variable((v9 + 88));
  std::mutex::~mutex((v9 + 24));
  _Unwind_Resume(a1);
}

uint64_t amber::BlockDeviceRequest::range@<X0>(uint64_t this@<X0>, const char *a2@<X6>, unint64_t *a3@<X8>)
{
  v3 = *(this + 48);
  v4 = *(this + 56);
  v5 = __CFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Range.hpp", "createWithOffsetAndLength", 0x16, 0, "memory invalid range", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v6 <= v3)
  {
    v3 = 0;
    v6 = 0;
  }

  *a3 = v3;
  a3[1] = v6;
  return this;
}

uint64_t amber::FileCacheBlockDevice::executeWrite(amber::FileCacheBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v41 = *MEMORY[0x29EDCA608];
  amber::BlockDeviceRequest::range(a3, a7, &v34);
  v9 = 0;
  v10 = *(this + 121);
  v11 = v34 & -v10;
  v12 = (v10 + v35 - 1) & -v10;
  if (v11 >= v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v11 >= v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (*(a3 + 5) == 2)
  {
    v9 = *(a3 + 8);
  }

  v36 = -1;
  v37 = 0;
  v38 = 0;
  v39.__m_.__sig = 850045863;
  memset(v39.__m_.__opaque, 0, sizeof(v39.__m_.__opaque));
  v40.__cv_.__sig = 1018212795;
  memset(v40.__cv_.__opaque, 0, sizeof(v40.__cv_.__opaque));
  amber::BlockDeviceEvent::BlockDeviceEvent(v33, 22, a3);
  if (*(this + 480))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeWrite", 0x313, 0, "WRITE on read-only device", v17);
    v23 = -2147483647;
    goto LABEL_14;
  }

  if (*(this + 70) <= v34)
  {
    v18 = v35;
    if (v35 <= *(this + 71))
    {
      if (v13 < v34)
      {
        v27 = v13 >> *(this + 122);
        if (v27 >= *(this + 62) || (*(*(this + 63) + v27) & 3) == 0)
        {
          if ((amber::FileCacheBlockDevice::ioSegmentDepsInsert(this, &v36, v13 / *(this + 130), *(a3 + 161), v15, v16, v17) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeWrite", 0x326, 0, "update segment deps", v17);
            goto LABEL_32;
          }

          v18 = v35;
        }
      }

      if (v18 < v14 && ((v28 = (v14 - 1) >> *(this + 122), v28 >= *(this + 62)) || (*(*(this + 63) + v28) & 3) == 0) && (amber::FileCacheBlockDevice::ioSegmentDepsInsert(this, &v36, (v14 - 1) / *(this + 130), *(a3 + 161), v15, v16, v17) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeWrite", 0x32B, 0, "update segment deps", v29);
      }

      else
      {
        for (; v37; --v37)
        {
          amber::Sem::acquire(&v38);
        }

        amber::BlockDeviceEvent::sendBegin(v33);
        if ((amber::FileCacheBlockDevice::fileCacheWrite(this, v9, *(a3 + 14), *(a3 + 6), 1, v30, v31) & 0x80000000) == 0)
        {
          amber::BlockDeviceEvent::sendEnd(v33);
          v24 = 0;
          v23 = 1;
          goto LABEL_15;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeWrite", 0x332, 0, "cache write", v32);
      }

LABEL_32:
      v24 = 0xFFFFFFFFLL;
      v23 = -2147483643;
      goto LABEL_15;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeWrite", 0x316, 0, "invalid request range", v17);
  v23 = -2147483626;
LABEL_14:
  v24 = 0xFFFFFFFFLL;
LABEL_15:
  amber::BlockDeviceRequest::sendReply(a3, v23, 0, v19, v20, v21, v22);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v33);
  std::condition_variable::~condition_variable(&v40);
  std::mutex::~mutex(&v39);
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

void sub_29694A1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  amber::BlockDeviceEvent::~BlockDeviceEvent(&a9);
  std::condition_variable::~condition_variable((v9 + 88));
  std::mutex::~mutex((v9 + 24));
  _Unwind_Resume(a1);
}

uint64_t amber::FileCacheBlockDevice::executeFlush(amber::FileCacheBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v8 = fsync(*(this + 117));
  if (v8 < 0)
  {
    v10 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeFlush", 0x343, *v10, "fsync", v11);
    v9 = -2147483643;
  }

  else
  {
    v9 = 1;
  }

  amber::BlockDeviceRequest::sendReply(a3, v9, 0, v4, v5, v6, v7);
  return (v8 >> 31);
}

unint64_t *amber::FileCacheBlockDevice::updateStats(unint64_t *this, unint64_t a2, unint64_t *a3)
{
  v3 = this[62];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = this[63];
    do
    {
      v9 = *v7++;
      v8 = v9;
      if ((v9 & 3) != 0)
      {
        ++v4;
      }

      v11 = v8 & 4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        ++v6;
      }

      v5 += v12;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  if (a2 > 0xC)
  {
    v13 = *(this + 121);
    a3[12] = v4 * v13;
    if (a2 != 13)
    {
      a3[13] = v6 * v13;
      if (a2 >= 0xF)
      {
        a3[14] = v5 * v13;
        if (a2 != 15)
        {
          a3[15] = this[84] * v13;
          if (a2 >= 0x12)
          {
            a3[17] = this[85] * v13;
          }
        }
      }
    }
  }

  return amber::BlockDevice::updateStats(this, a2, a3);
}

uint64_t amber::FileCacheBlockDevice::executeSnapshot(amber::FileCacheBlockDevice *this, unsigned int a2, amber::BlockDeviceRequest *a3)
{
  v213[75] = *MEMORY[0x29EDCA608];
  v4 = *(this + 130);
  v5 = *(this + 121);
  v178[0] = &unk_2A1DDFD28;
  v178[2] = 0;
  v178[3] = 0;
  v178[1] = off_2A1DDFD48;
  v178[5] = 0;
  v178[6] = 0;
  v178[4] = &off_2A1DDFDA8;
  v178[7] = &off_2A1DDFC68;
  v179 = 0u;
  v180 = 0u;
  v181 = 1;
  v182 = 0;
  v173[0] = &unk_2A1DDFD28;
  v173[2] = 0;
  v173[3] = 0;
  v173[1] = off_2A1DDFD48;
  v173[5] = 0;
  v173[6] = 0;
  v173[4] = &off_2A1DDFDA8;
  v173[7] = &off_2A1DDFC68;
  v174 = 0u;
  v175 = 0u;
  v176 = 1;
  v177 = 0;
  amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(&v208, 1);
  amber::ObjectStorePath::ObjectStorePath(v207);
  v202 = -1;
  v203 = 0;
  v204 = 0;
  v205.__m_.__sig = 850045863;
  memset(v205.__m_.__opaque, 0, sizeof(v205.__m_.__opaque));
  v206.__cv_.__sig = 1018212795;
  memset(v206.__cv_.__opaque, 0, sizeof(v206.__cv_.__opaque));
  __src = 0;
  v171 = 0;
  v172 = 0;
  v184[0] = &unk_2A1DDFDD8;
  v184[1] = &unk_2A1DDFE08;
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
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v7 = *(this + 120) & 0x10001;
  v201 = 0;
  if (v7 != 0x10000)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x375, 0, "SNAPSHOT request invalid", v6);
    v17 = -2147483647;
    goto LABEL_94;
  }

  if ((amber::BaseObject::getAttributeUInt32(*(this + 59), 202) & 0x40000) == 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x378, 0, "no block state data device case not supported", v12);
    goto LABEL_93;
  }

  v166 = v4 / v5;
  v18 = *(this + 71) - *(this + 70);
  if (v18)
  {
    v19 = 0;
    while (1)
    {
      v20 = v19 + v4;
      if (v19 + v4 >= v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = v19 + v4;
      }

      amber::Buffer::resize(v178, 0, v8, v9, v10, v11, v12);
      amber::Buffer::resize(v173, 0, v22, v23, v24, v25, v26);
      if ((amber::Buffer::reserveEndCapacity(v178, v166, v27, v28, v29, v30, v31) & 0x80000000) != 0)
      {
        goto LABEL_76;
      }

      amber::Buffer::buf(v178, v12, v183);
      amber::MutableMemoryView::operator+(v183, *(&v180 + 1), v32, v169);
      v33 = v19 / v5;
      v34 = (v5 - 1 + v21) / v5;
      if (((*(*this + 32))(this, v19 / v5, v34, v169, 0) & 0x80000000) != 0 || (v39 = (v34 - v33), (amber::Buffer::grow(v178, v39, v35, v36, v37, v38, v12) & 0x80000000) != 0) || (amber::Buffer::reserveEndCapacity(v173, v166, v40, v41, v42, v43, v12) & 0x80000000) != 0 || (v44 = *(this + 59), amber::Buffer::buf(v173, v12, v183), amber::MutableMemoryView::operator+(v183, *(&v175 + 1), v45, v168), ((*(*v44 + 32))(v44, v19 / v5, v34, v168, 0) & 0x80000000) != 0) || (amber::Buffer::grow(v173, (v34 - v33), v46, v47, v48, v49, v12) & 0x80000000) != 0)
      {
LABEL_76:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x38C, 0, "get block state", v12);
        goto LABEL_93;
      }

      if (v34 != v33)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = v19 / v4;
        do
        {
          if ((*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v178, v50, v8, v9, v10, v11, v12) & 4) != 0)
          {
            v52 |= (*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v178, v50, v54, v55, v56, v57, v58) & 3) == 2;
            v51 = 1;
          }

          else if ((*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, v50, v54, v55, v56, v57, v58) & 3) == 2)
          {
            v52 |= (*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v178, v50, v8, v9, v10, v11, v12) & 3) == 0;
          }

          ++v50;
        }

        while (v50 < v39);
        if (v51)
        {
          v59 = v171;
          if (v171 >= v172)
          {
            v61 = __src;
            v62 = v171 - __src;
            v63 = (v171 - __src) >> 3;
            v64 = v63 + 1;
            if ((v63 + 1) >> 61)
            {
              std::vector<DERNode>::__throw_length_error[abi:ne200100]();
            }

            v65 = v172 - __src;
            if ((v172 - __src) >> 2 > v64)
            {
              v64 = v65 >> 2;
            }

            v66 = v65 >= 0x7FFFFFFFFFFFFFF8;
            v67 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v66)
            {
              v67 = v64;
            }

            if (v67)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&__src, v67);
            }

            v68 = (8 * v63);
            v69 = &v68[-((v171 - __src) >> 3)];
            *v68 = v53;
            v60 = (v68 + 1);
            memcpy(v69, v61, v62);
            v70 = __src;
            __src = v69;
            v171 = v60;
            v172 = 0;
            if (v70)
            {
              operator delete(v70);
            }
          }

          else
          {
            *v171 = v53;
            v60 = v59 + 8;
          }

          v171 = v60;
          if ((v52 & 1) != 0 && (amber::FileCacheBlockDevice::ioSegmentDepsInsert(this, &v202, v53, *(a3 + 161), v10, v11, v12) & 0x80000000) != 0)
          {
            break;
          }
        }
      }

      v18 = *(this + 71) - *(this + 70);
      v19 = v20;
      if (v20 >= v18)
      {
        goto LABEL_38;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x3A7, 0, "update segment deps", v12);
    goto LABEL_93;
  }

LABEL_38:
  while (v203)
  {
    amber::Sem::acquire(&v204);
    --v203;
  }

  if (((*(**(this + 59) + 80))(*(this + 59), v184, (v171 - __src) >> 3, 0) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x3B2, 0, "begin write transaction", v75);
    goto LABEL_93;
  }

  if (__src != v171)
  {
    v76 = *__src * v4;
    if (v76 + v4 >= *(this + 71) - *(this + 70))
    {
      v77 = *(this + 71) - *(this + 70);
    }

    else
    {
      v77 = v76 + v4;
    }

    amber::Buffer::resize(v178, 0, v71, v72, v73, v74, v75);
    amber::Buffer::resize(v173, 0, v78, v79, v80, v81, v82);
    if ((amber::Buffer::reserveEndCapacity(v178, v166, v83, v84, v85, v86, v87) & 0x80000000) != 0)
    {
      goto LABEL_78;
    }

    amber::Buffer::buf(v178, v88, v183);
    amber::MutableMemoryView::operator+(v183, *(&v180 + 1), v89, v169);
    v90 = v76 / v5;
    v91 = (v5 - 1 + v77) / v5;
    if (((*(*this + 32))(this, v76 / v5, v91, v169, 0) & 0x80000000) != 0 || (v96 = (v91 - v90), (amber::Buffer::grow(v178, v96, v92, v93, v94, v95, v88) & 0x80000000) != 0) || (amber::Buffer::reserveEndCapacity(v173, v166, v97, v98, v99, v100, v88) & 0x80000000) != 0 || (v101 = *(this + 59), amber::Buffer::buf(v173, v88, v183), amber::MutableMemoryView::operator+(v183, *(&v175 + 1), v102, v168), ((*(*v101 + 32))(v101, v76 / v5, v91, v168, 0) & 0x80000000) != 0) || (amber::Buffer::grow(v173, (v91 - v90), v103, v104, v105, v106, v88) & 0x80000000) != 0)
    {
LABEL_78:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x3CF, 0, "get block state", v88);
      goto LABEL_93;
    }

    v165 = v77;
    if (v91 != v90)
    {
      v111 = 0;
      v112 = 0;
      while (1)
      {
        if ((*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v178, v111, v107, v108, v109, v110, v88) & 4) != 0)
        {
          if ((*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v178, v111, v113, v114, v115, v116, v117) & 3) == 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x3E1, 0, "invalid cache state", v127);
            goto LABEL_93;
          }

          v128 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v178, v111, v123, v124, v125, v126, v127);
          *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, v111, v129, v130, v131, v132, v133) = v128 & 3;
        }

        else if ((*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, v111, v113, v114, v115, v116, v117) & 3) == 2 && (*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v178, v111, v118, v119, v120, v121, v122) & 3) == 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x3EA, 0, "invalid cache state", v122);
          goto LABEL_93;
        }

        v112 |= (*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, v111++, v118, v119, v120, v121, v122) & 3) == 2;
        if (v111 >= v96)
        {
          goto LABEL_62;
        }
      }
    }

    v112 = 0;
LABEL_62:
    v134 = *(this + 59);
    amber::Buffer::constBuf(v173, v88, v183);
    amber::ConstMemoryView::view(v183, v175, *(&v175 + 1) - v175, v135, v169);
    if (((*(*v134 + 40))(v134, v76 / v5, v91, v169, 0) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x3FB, 0, "update block state", v136);
    }

    else
    {
      v142 = malloc_type_malloc(v4, 0xF93785E2uLL);
      if (v142)
      {
        if ((v112 & 1) == 0 || (amber::FileCacheBlockDevice::fileCacheRead(this, v142, v165 - v76, v76, v139, v140, v141) & 0x80000000) == 0)
        {
          if (v96)
          {
            v143 = 0;
            for (i = 0; i < v96; ++i)
            {
              if ((*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, i, v137, v138, v139, v140, v141) & 3) != 2)
              {
                amber::zero(void *,unsigned long)::memset_func(&v142[v143], 0, v5);
              }

              v143 += v5;
            }
          }

          operator new();
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x404, 0, "load cache segment", v141);
      }

      else
      {
        v147 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v147, "malloc", v148);
        v149 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x3FF, *v149, "malloc", v150);
      }
    }

    goto LABEL_93;
  }

  if (atomic_fetch_add_explicit(v212, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
  {
    do
    {
      amber::Sem::acquire(&v209);
    }

    while (atomic_fetch_add_explicit(v212, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
  }

  atomic_fetch_add_explicit(v212, 1uLL, memory_order_relaxed);
  if (atomic_load(&v208))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x42E, 0, "some write requests failed", v75);
    goto LABEL_93;
  }

  if ((amber::BaseObject::getAttributeUInt32(*(this + 59), 202) & 0x10000) != 0)
  {
    amber::ObjectStorePath::ObjectStorePath(v183);
    amber::BlockDevice::snapshot(*(this + 59), v183);
  }

  if (((*(**(this + 59) + 88))(*(this + 59), v184, 0) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "executeSnapshot", 0x43A, 0, "commit write transaction", v16);
LABEL_93:
    v17 = -2147483643;
    goto LABEL_94;
  }

  if (*(this + 62))
  {
    v146 = 0;
    v17 = 1;
    do
    {
      atomic_fetch_and((*(this + 63) + v146++), 0xFBu);
    }

    while (v146 < *(this + 62));
  }

  else
  {
    v17 = 1;
  }

LABEL_94:
  amber::BlockDeviceRequest::sendReply(a3, v17, 0, v13, v14, v15, v16);
  if (__src)
  {
    v171 = __src;
    operator delete(__src);
  }

  std::condition_variable::~condition_variable(&v206);
  std::mutex::~mutex(&v205);
  amber::ObjectStorePath::~ObjectStorePath(v207);
  amber::ObjectStorePath::~ObjectStorePath(v213);
  std::condition_variable::~condition_variable(&v211);
  std::mutex::~mutex(&v210);
  amber::Buffer::~Buffer(v173, v151, v152, v153, v154, v155, v156);
  amber::Buffer::~Buffer(v178, v157, v158, v159, v160, v161, v162);
  v163 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29694B138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::condition_variable::~condition_variable(&STACK[0x520]);
  std::mutex::~mutex(&STACK[0x4E0]);
  amber::ObjectStorePath::~ObjectStorePath(&STACK[0x550]);
  amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(&STACK[0x7A8]);
  amber::Buffer::~Buffer(&a26, v40, v41, v42, v43, v44, v45);
  amber::Buffer::~Buffer(&a39, v46, v47, v48, v49, v50, v51);
  _Unwind_Resume(a1);
}

unint64_t amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::buf(a1, a7, v14);
  amber::MutableMemoryView::view(v14, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v9, v13);
  if (v13[2] <= a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "operator[]", 0xF7, 0, "memory invalid range", v10);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return v13[1] + a2;
}

uint64_t amber::FileCacheBlockDevice::getAttribute(amber::FileCacheBlockDevice *this, amber::BaseObject *a2, uint64_t a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "getAttribute", 0x459, 0, "invalid attribute encoding %u, %u", v16, a2, a3);
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 203)
  {
    switch(a2)
    {
      case 0xC9:
        v21 = *(this + 71) - *(this + 70);
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
LABEL_25:
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v16, v19, v18);
            return 0xFFFFFFFFLL;
          }

          return amber::copy(a4, &v25, v12, v13, v14, v15, v16);
        }

        return 0;
      case 0xCA:
        v17 = *(this + 120);
        goto LABEL_22;
      case 0xCB:
        v17 = *(this + 121);
        goto LABEL_22;
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

LABEL_22:
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
          goto LABEL_25;
        }

        return amber::copy(a4, &v25, v12, v13, v14, v15, v16);
      }

      return 0;
    }

    if (a2 == 206 || a2 == 207)
    {
      v17 = *(this + 130);
      goto LABEL_22;
    }
  }

  return amber::BlockDevice::getAttribute(this, a2, a3, a4, a5, v15, v16);
}

uint64_t amber::FileCacheBlockDevice::getBlockState(amber::FileCacheBlockDevice *this, unint64_t a2, unint64_t a3, const amber::MutableMemoryView *a4, unint64_t a5, uint64_t a6, const char *a7)
{
  if (a3 >= a2 && *(this + 62) >= a3)
  {
    if (a3 > a2)
    {
      v8 = 0;
      do
      {
        if (*(a4 + 2) <= v8)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "operator[]", 0xF7, 0, "memory invalid range", a7);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid range");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        *(*(a4 + 1) + v8) = *(*(this + 63) + a2 + v8);
        ++v8;
      }

      while (a3 - a2 != v8);
    }

    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "getBlockState", 0x479, 0, "invalid block range", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::FileCacheBlockDevice::setBlockState(amber::FileCacheBlockDevice *this, unint64_t a2, unint64_t a3, const amber::ConstMemoryView *a4, unint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 <= a3 && *(this + 62) >= a3)
  {
    if (a2 < a3)
    {
      v8 = 0;
      do
      {
        if (*(a4 + 2) <= v8)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "operator[]", 0xE9, 0, "memory invalid range", a7);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid range");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        *(*(this + 63) + a2++) = *(*(a4 + 1) + v8++);
      }

      while (a3 != a2);
    }

    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "setBlockState", 0x48C, 0, "invalid block range", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::FileCacheBlockDevice::setBlockState(amber::FileCacheBlockDevice *this, unint64_t a2, unint64_t a3, char a4, unint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 <= a3 && *(this + 62) >= a3)
  {
    if (a2 < a3)
    {
      do
      {
        *(*(this + 63) + a2++) = a4;
      }

      while (a3 != a2);
    }

    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/FileCacheBlockDevice.cpp", "setBlockState", 0x49F, 0, "invalid block range", a7);
    return 0xFFFFFFFFLL;
  }
}

void sub_29694BB78(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 600));
  v9 = *(v1 + 536);
  if (v9)
  {
    *(v1 + 544) = v9;
    operator delete(v9);
  }

  amber::SyncBlockDevice::~SyncBlockDevice(v1, v3, v4, v5, v6, v7, v8);
  _Unwind_Resume(a1);
}

void amber::FileCacheBlockDevice::~FileCacheBlockDevice(amber::FileCacheBlockDevice *this)
{
  *this = &unk_2A1DDFEB0;
  amber::SyncBlockDevice::terminateThreads(this);
  amber::FileCacheBlockDevice::deallocateState(this);
  std::mutex::~mutex((this + 600));
  v8 = *(this + 67);
  if (v8)
  {
    *(this + 68) = v8;
    operator delete(v8);
  }

  amber::SyncBlockDevice::~SyncBlockDevice(this, v2, v3, v4, v5, v6, v7);
}

{
  amber::FileCacheBlockDevice::~FileCacheBlockDevice(this);

  JUMPOUT(0x29C25C000);
}

void sub_29694BD08(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29694BCECLL);
}

void amber::Sem::release(amber::Sem *this)
{
  std::mutex::lock((this + 8));
  if (!(*this)++)
  {
    std::condition_variable::notify_all((this + 72));
  }

  std::mutex::unlock((this + 8));
}

void amber::Sem::acquire(amber::Sem *this)
{
  v3.__m_ = (this + 8);
  v3.__owns_ = 1;
  std::mutex::lock((this + 8));
  if (*this >= 1)
  {
    --*this;
LABEL_5:
    std::mutex::unlock(v3.__m_);
    return;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v3);
  }

  while (*this < 1);
  owns = v3.__owns_;
  --*this;
  if (owns)
  {
    goto LABEL_5;
  }
}

amber::BasicBlockDeviceRequestState *amber::BasicBlockDeviceRequestState::BasicBlockDeviceRequestState(amber::BasicBlockDeviceRequestState *this, char a2)
{
  *this = 0;
  *(this + 8) = xmmword_296A14210;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 1018212795;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = a2;
  amber::ObjectStorePath::ObjectStorePath((this + 144));
  return this;
}

void sub_29694C0B8(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v2);
  std::mutex::~mutex((v1 + 16));
  _Unwind_Resume(a1);
}

double amber::ObjectStorePath::ObjectStorePath(amber::ObjectStorePath *this)
{
  *this = &unk_2A1DE3CA8;
  *(this + 1) = &unk_2A1DE3CE8;
  *(this + 2) = &unk_2A1DDFDD8;
  *(this + 3) = &unk_2A1DDFE08;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 37) = &unk_2A1DDFDD8;
  *(this + 38) = &unk_2A1DDFE08;
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
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 142) = 0;
  *(this + 144) = 0;
  *(this + 73) = 0;
  *(this + 148) = 0;
  return result;
}

uint64_t amber::BaseObject::getAttributeUInt32(amber::BaseObject *this, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v5[0] = &off_2A1DDFDA8;
  v5[1] = &v7;
  v5[2] = 4;
  v2 = (*(*this + 16))(this, a2, 2, v5, &v6);
  if (v6 != 4 || v2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

uint64_t amber::copy(amber *this, const amber::MutableMemoryView *a2, const amber::ConstMemoryView *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  if (v7 > *(this + 2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(*(this + 1), *(a2 + 1), v7);
  return 0;
}

void amber::ObjectStorePath::~ObjectStorePath(amber::ObjectStorePath *this)
{
  *this = &unk_2A1DE3CA8;
  *(this + 1) = &unk_2A1DE3CE8;
  *(this + 37) = &unk_2A1DDFDD8;
  *(this + 38) = &unk_2A1DDFE08;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 444) = 0u;
  *(this + 460) = 0u;
  *(this + 476) = 0u;
  *(this + 492) = 0u;
  *(this + 508) = 0u;
  *(this + 524) = 0u;
  *(this + 540) = 0u;
  *(this + 556) = 0u;
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
  amber::JSONCodable::~JSONCodable(this);
}

{
  amber::ObjectStorePath::~ObjectStorePath(this);

  JUMPOUT(0x29C25C000);
}

void amber::BasicBlockDeviceRequestState::~BasicBlockDeviceRequestState(amber::BasicBlockDeviceRequestState *this)
{
  amber::ObjectStorePath::~ObjectStorePath((this + 144));
  std::condition_variable::~condition_variable((this + 80));
  std::mutex::~mutex((this + 16));
}

uint64_t amber::BaseObject::getAttributeUInt64(amber::BaseObject *this, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v5[0] = &off_2A1DDFDA8;
  v5[1] = &v7;
  v5[2] = 8;
  v2 = (*(*this + 16))(this, a2, 1, v5, &v6);
  if (v6 != 8 || v2 < 0)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::IOSegment *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t amber::MutableMemoryView::view@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X6>, void *a5@<X8>)
{
  if (__CFADD__(a2, a3) || (a2 + a3) > *(this + 16))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "view", 0xFE, 0, "memory invalid range", a4);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    goto LABEL_9;
  }

  v5 = *(this + 8);
  *a5 = &off_2A1DDFDA8;
  a5[1] = v5 + a2;
  a5[2] = a3;
  if (a3 < 0 || a3 && !v5)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a4);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
LABEL_9:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void amber::DaemonProxy::~DaemonProxy(amber::DaemonProxy *this)
{
  *this = &unk_2A1DDFFB8;
  v2 = *(this + 4);
  if (v2)
  {
    amber::DaemonXPCClientConnection::~DaemonXPCClientConnection(v2);
    MEMORY[0x29C25C000]();
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  amber::DaemonProxy::~DaemonProxy(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DaemonProxy::connect(amber::DaemonProxy *this, int *a2, size_t a3, char *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  __source = 0;
  v21 = 0;
  v22 = 0;
  v12 = *(this + 4);
  v13 = this + 8;
  if (*(this + 31) < 0)
  {
    v13 = *v13;
  }

  v15 = amber::DaemonXPCClientConnection::connectToNBDServerWithKnoxURL(v12, v13, &__source, a4, a5, a6, a7);
  if (v15 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonProxy.cpp", "connect", 0x33, 0, "connectToNBDServerWithKnoxURL", v14);
  }

  else
  {
    v16 = SHIBYTE(v22);
    if ((SHIBYTE(v22) & 0x8000000000000000) != 0)
    {
      v16 = v21;
      if (v21 < a3)
      {
        p_source = __source;
        goto LABEL_10;
      }
    }

    else if (SHIBYTE(v22) < a3)
    {
      p_source = &__source;
LABEL_10:
      strlcpy(a4, p_source, a3);
      v18 = 0;
      goto LABEL_13;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonProxy.cpp", "connect", 0x37, 0, "insufficient capacity", v14);
    close(v15);
  }

  v16 = 0;
  v15 = -1;
  v18 = 0xFFFFFFFFLL;
LABEL_13:
  *a2 = v15;
  *a5 = v16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__source);
  }

  return v18;
}

void sub_29694CABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AmberDaemonProxyDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

amber::DaemonProxy *amber::DaemonProxy::DaemonProxy(amber::DaemonProxy *this, const char *__s)
{
  *this = &unk_2A1DDFFB8;
  v4 = this + 8;
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 31) = v5;
  if (v5)
  {
    memmove(v4, __s, v5);
  }

  v4[v6] = 0;
  *(this + 4) = 0;
  return this;
}

uint64_t amber::getTempDir(amber *this, size_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = confstr(65537, this, a2);
  if (!v4)
  {
    if (issetugid())
    {
      v4 = 0;
    }

    else
    {
      v4 = getenv("TMPDIR");
      if (v4)
      {
        v4 = strlcpy(this, v4, a2);
      }
    }
  }

  if (v4 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = strlen(this);
  if (v6)
  {
    do
    {
      v7 = *(this + v6 - 1);
      if (v7 != 47)
      {
        break;
      }

      --v6;
    }

    while (v6);
    if (v7 == 47)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  *(this + v6) = 0;
  return v5;
}

uint64_t amber::appendFileContents(amber *this, amber::Buffer *a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, a2, a3, a4, a5, a6, a7);
  v49 = 0;
  v50 = 0;
  v48 = &off_2A1DDFDA8;
  if (lstat(this, &v51))
  {
    v15 = *__error();
    v44 = this;
    v17 = "%s";
    v18 = 47;
LABEL_3:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "appendFileContents", v18, v15, v17, v16, v44);
LABEL_4:
    amber::Buffer::resize(a2, v9, v19, v20, v21, v22, v23);
    return 0xFFFFFFFFLL;
  }

  st_size = v51.st_size;
  if (v51.st_size)
  {
    if ((amber::Buffer::reserveEndCapacity(a2, v51.st_size, v10, v11, v12, v13, v14) & 0x80000000) != 0)
    {
      v15 = *__error();
      v17 = "malloc";
      v18 = 53;
      goto LABEL_3;
    }

    v26 = open(this, 0);
    if (v26 < 0)
    {
      v39 = *__error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "appendFileContents", 0x3A, v39, "%s", v40, this);
      goto LABEL_4;
    }

    v28 = v26;
    amber::BufferProtocol<amber::Buffer>::endView(a2, st_size, v27, &v45);
    v29 = v46;
    v30 = v47;
    v49 = v46;
    v50 = v47;
    if (v47)
    {
      while (1)
      {
        if (v30 >= 0x40000000)
        {
          v31 = 0x40000000;
        }

        else
        {
          v31 = v30;
        }

        v32 = read(v28, v29, v31);
        if (v32 < 0)
        {
          v41 = *__error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "appendFileContents", 0x45, v41, "%s", v42, this);
          goto LABEL_24;
        }

        if (v32 != v31)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "appendFileContents", 0x46, 0, "truncated file: %s", v37, this);
          goto LABEL_24;
        }

        if ((amber::Buffer::grow(a2, v31, v33, v34, v35, v36, v37) & 0x80000000) != 0)
        {
          break;
        }

        if (v50 < v31)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./MutableMemoryView.hpp", "increment", 0x122, 0, "memory invalid range", v38);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid range");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v29 = &v49[v31];
        v30 = v50 - v31;
        v49 += v31;
        v50 = v30;
        if (!v30)
        {
          goto LABEL_17;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "appendFileContents", 0x47, 0, "malloc", v38);
LABEL_24:
      close(v28);
      goto LABEL_4;
    }

LABEL_17:
    close(v28);
  }

  return 0;
}

uint64_t amber::BufferProtocol<amber::Buffer>::endView@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  amber::Buffer::buf(a1, a3, v11);
  amber::MutableMemoryView::operator+(v11, *(a1 + 88), v7, v10);
  return amber::MutableMemoryView::first(v10, a2, v8, a4);
}

uint64_t amber::loadFileContents(amber *this, amber::Buffer *a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::Buffer::resize(a2, 0, a3, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (amber::appendFileContents(this, a2, v9, v10, v11, v12, v13) >> 31);
  }
}

uint64_t amber::loadFileContents(amber *a1, uint64_t a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
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
  FileContents = amber::loadFileContents(a1, v36, a3, a4, a5, a6, a7);
  if (FileContents < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "loadFileContents", 0x63, 0, "loading file: %s", v14, a1);
  }

  else
  {
    v22 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v36, v9, v10, v11, v12, v13, v14);
    v23 = MEMORY[0x29EDCA600];
    do
    {
      v24 = v22;
      if (!v22)
      {
        break;
      }

      --v22;
      v25 = amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v36, v24 - 1, v17, v18, v19, v20, v21);
      v26 = *v25;
    }

    while (v26 < 0 ? __maskrune(*v25, 0x4000uLL) : *(v23 + 4 * v26 + 60) & 0x4000);
    v28 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v36, v16, v17, v18, v19, v20, v21);
    MEMORY[0x29C25BF10](a2, v28, v24);
  }

  amber::Buffer::~Buffer(v36, v29, v30, v31, v32, v33, v34);
  return (FileContents >> 31);
}

void sub_29694D1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::MutableMemoryViewConvertible<amber::Buffer>::begin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::buf(a1, a7, v11);
  amber::MutableMemoryView::view(v11, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v8, v10);
  return v10[1];
}

uint64_t amber::storeFileContents(amber *this, const char *a2, const amber::ConstMemoryView *a3)
{
  *__buf = *(a2 + 8);
  v4 = open(this, 1537, a3, 420, &off_2A1DDFC68);
  if (v4 < 0)
  {
    v12 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "storeFileContents", 0x78, *v12, "open: %s", v13, this);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
    v6 = __buf[1];
    if (__buf[1])
    {
      v7 = __buf[0];
      while (1)
      {
        if (v6 >= 0x40000000)
        {
          v8 = 0x40000000;
        }

        else
        {
          v8 = v6;
        }

        v9 = write(v5, v7, v8);
        if (v9 < 0)
        {
          v14 = *__error();
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "storeFileContents", 0x81, v14, "%s", v15, this);
          goto LABEL_15;
        }

        if (v9 != v8)
        {
          break;
        }

        if (__buf[1] < v8)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", v10);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid range");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v7 = __buf[0] + v8;
        v6 = __buf[1] - v8;
        __buf[0] = __buf[0] + v8;
        __buf[1] = v6;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "storeFileContents", 0x82, 0, "error writing contents: %s", v10, this);
LABEL_15:
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_11:
      v11 = 0;
    }

    close(v5);
  }

  return v11;
}

uint64_t amber::createDirectory(amber *this, const char *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (this && *this == 47)
  {
    v8 = a2;
    v9 = strlen(this);
    v10 = malloc_type_malloc(v9 + 1, 0xF93785E2uLL);
    if (v10)
    {
      v11 = v10;
      memcpy(v10, this, v9 + 1);
      v12 = strlen(v11);
      Directory_rec = createDirectory_rec(v11, v12, v8);
      free(v11);
      return Directory_rec;
    }

    v18 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/././Memory/./Malloc.hpp", "malloc", 0x1F, *v18, "malloc", v19);
    v17 = *__error();
    v16 = 168;
    v15 = "malloc";
  }

  else
  {
    v15 = "invalid path";
    v16 = 166;
    v17 = 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "createDirectory", v16, v17, v15, a7);
  return 0xFFFFFFFFLL;
}

uint64_t createDirectory_rec(char *a1, unint64_t a2, unsigned __int16 a3)
{
  if (stat(a1, &v10))
  {
    if (a2)
    {
      while (a1[a2] != 47)
      {
        if (!--a2)
        {
          goto LABEL_10;
        }
      }

      a1[a2] = 0;
      if ((createDirectory_rec(a1, a2, a3) & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      a1[a2] = 47;
    }

LABEL_10:
    if ((mkdir(a1, a3) & 0x80000000) == 0)
    {
      return 0;
    }

    v8 = *__error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "createDirectory_rec", 0xA0, v8, "mkdir: %s", v9, a1);
  }

  else
  {
    if ((v10.st_mode & 0xF000) == 0x4000)
    {
      return 0;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "createDirectory_rec", 0x94, 0, "not a directory: %s", v6, a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::DirectoryVisitor::visit(amber::DirectoryVisitor *this, const char *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = open(a2, 0x100000);
  if ((v4 & 0x80000000) != 0)
  {
    v6 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "visit", 0x173, *v6, "invalid path: %s", v7, a2);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v9[0] = 0;
    result = enumerateTree_rec(this, v4, v9, 0, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t enumerateTree_rec(amber::DirectoryVisitor *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x29EDCA608];
  v10 = fdopendir(a2);
  if (!v10)
  {
    v15 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "enumerateTree_rec", 0x10A, *v15, "%d, %s", v16, a2, a3);
    close(a2);
    result = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v11 = v10;
  v39 = 0;
  v12 = (*(*a1 + 16))(a1, a3, a5);
  if (v12 < 0)
  {
    v18 = "user cancelled";
    v19 = 280;
LABEL_7:
    v20 = 0;
    goto LABEL_10;
  }

  if (!v12)
  {
    if (readdir_r(v11, &v40, &v39))
    {
LABEL_9:
      v20 = *__error();
      v18 = "readdir_r";
      v19 = 289;
LABEL_10:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "enumerateTree_rec", v19, v20, v18, v13);
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

    v23 = &a3[a4];
    while (v39)
    {
      d_namlen = v40.d_namlen;
      if ((v40.d_namlen != 1 || v40.d_name[0] != 46) && (v40.d_namlen != 2 || v40.d_name[0] != 46 || v40.d_name[1] != 46))
      {
        if (a4)
        {
          if (v40.d_namlen + a4 >= 0x3FF)
          {
            v18 = "path too long";
            v19 = 317;
            goto LABEL_7;
          }

          v25 = v40.d_namlen + a4 + 1;
          *v23 = 47;
          memcpy(v23 + 1, v40.d_name, d_namlen);
          d_namlen = v25;
        }

        else
        {
          if (v40.d_namlen >= 0x400u)
          {
            v18 = "path too long";
            v19 = 310;
            goto LABEL_7;
          }

          memcpy(a3, v40.d_name, v40.d_namlen);
        }

        a3[d_namlen] = 0;
        v26 = dirfd(v11);
        v27 = fstatat(v26, v40.d_name, &v38, 0);
        if (v27)
        {
          amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "enumerateTree_rec", 0x146, 0, "lstat after readdir failed (errno: %d): %s", v28, v27, a3);
LABEL_32:
          *v23 = 0;
          goto LABEL_33;
        }

        if (!v40.d_type && (v38.st_mode & 0xF000) == 0x4000)
        {
          v40.d_type = 4;
        }

        v29 = (*(*a1 + 32))(a1, a3, (a5 + 1), &v38);
        if (v29 < 0)
        {
          v34 = "user cancelled";
          v35 = 336;
          v36 = 0;
LABEL_48:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "enumerateTree_rec", v35, v36, v34, v30, v37);
          v14 = 0;
          *v23 = 0;
          goto LABEL_12;
        }

        if (v29 || v40.d_type != 4)
        {
          goto LABEL_32;
        }

        v31 = dirfd(v11);
        v32 = openat(v31, v40.d_name, 0x100000);
        if (v32 < 0)
        {
          v36 = *__error();
          v37 = a3;
          v34 = "open: %s";
          v35 = 343;
          goto LABEL_48;
        }

        v33 = enumerateTree_rec(a1, v32, a3, d_namlen, a5 + 1);
        *v23 = 0;
        if (v33 < 0)
        {
          goto LABEL_11;
        }
      }

LABEL_33:
      if (readdir_r(v11, &v40, &v39))
      {
        goto LABEL_9;
      }
    }
  }

  v14 = 1;
LABEL_12:
  closedir(v11);
  if (((*(*a1 + 24))(a1, a3, a5) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "enumerateTree_rec", 0x169, 0, "user cancelled", v21);
    v14 = 0;
  }

  if (v14)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_17:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::DirectoryVisitor::visit(amber::DirectoryVisitor *this, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (fcntl(a2, 50, v7) < 0)
  {
    v4 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Filesystem.cpp", "visit", 0x181, *v4, "F_GETPATH", v5);
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = amber::DirectoryVisitor::visit(this, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void amber::DaemonKnoxImage::create(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 7);
  amber::BaseObject::getAttributeUInt64(v3, 1301);
  v5 = *(v3 + 7);
  *(a2 + 104);
  v6 = *(a2 + 112);
  v7 = *(a2 + 116);
  operator new();
}

void sub_29694E568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  amber::Buffer::~Buffer(&a26, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::DaemonKnoxImage::loadCachedImageMetadata(amber::DaemonKnoxImage *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::DaemonKnoxImageMetadata::clear((this + 920), a2, a3, a4, a5, a6, a7);
  Stream = amber::DaemonKnoxObjectStore::openExclusiveMetadataReadStream(*(this + 79), this + 640);
  if (!Stream)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = Stream;
  amber::JSONInputStream::JSONInputStream(v18, Stream);
  v16 = amber::DaemonKnoxImageMetadata::jsonParse((this + 920), v18, v10, v11, v12, v13, v14);
  if (v16 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxImage.cpp", "loadCachedImageMetadata", 0x110, 0, "parse error", v15);
  }

  else
  {
    (*(*v9 + 32))(v9);
  }

  amber::JSONInputStream::~JSONInputStream(v18);
  amber::DaemonKnoxObjectStore::closeExclusiveMetadataStream(*(this + 79), v9);
  return (v16 >> 31);
}

void sub_29694E6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONInputStream::~JSONInputStream(va);
  _Unwind_Resume(a1);
}

uint64_t amber::DaemonKnoxImage::storeCachedImageMetadata(amber::DaemonKnoxImage *this)
{
  v2 = amber::DaemonKnoxObjectStore::openExclusiveMetadataWriteStream(*(this + 79), this + 640);
  if (v2)
  {
    v4 = v2;
    amber::JSONOutputStream::JSONOutputStream(v12, v2, 1);
    v10 = amber::DaemonKnoxImageMetadata::jsonSerialize((this + 920), v12, 0, v5, v6, v7, v8);
    if (v10 < 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxImage.cpp", "storeCachedImageMetadata", 0x124, 0, "serialization error", v9);
    }

    else
    {
      (*(*v4 + 32))(v4);
    }

    amber::JSONOutputStream::~JSONOutputStream(v12);
    amber::DaemonKnoxObjectStore::closeExclusiveMetadataStream(*(this + 79), v4);
    return (v10 >> 31);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxImage.cpp", "storeCachedImageMetadata", 0x120, 0, "open metadata stream", v3);
    return 0xFFFFFFFFLL;
  }
}

void sub_29694E814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::JSONOutputStream::~JSONOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t amber::DaemonKnoxImage::device(amber::DaemonKnoxImage *this)
{
  result = *(this + 7);
  if (!result)
  {
    result = *(this + 8);
    if (!result)
    {
      return *(this + 9);
    }
  }

  return result;
}

uint64_t amber::DaemonKnoxImage::DaemonKnoxImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *a1 = &unk_2A1DE0020;
  *(a1 + 24) = &unk_2A1DE0060;
  v10 = (a3 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  if (*(a3 + 31) < 0)
  {
    if (*(a3 + 16))
    {
      v11 = *(a3 + 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (*(a3 + 31))
  {
    v11 = a3 + 8;
  }

  else
  {
    v11 = 0;
  }

  if (*(a3 + 55) < 0)
  {
    if (*(a3 + 40))
    {
      v12 = *(a3 + 32);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (*(a3 + 55))
  {
    v12 = a3 + 32;
  }

  else
  {
    v12 = 0;
  }

  amber::KnoxContext::KnoxContext(a1 + 80, v11, v12, a4, a5, 40, 0);
  *(a1 + 616) = a4;
  *(a1 + 624) = a5;
  *(a1 + 632) = a2;
  *(a1 + 640) = &unk_2A1DDFDD8;
  *(a1 + 648) = &unk_2A1DDFE08;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 920) = &unk_2A1DE3200;
  *(a1 + 928) = 0u;
  *(a1 + 944) = &unk_2A1DDFD28;
  *(a1 + 952) = off_2A1DDFD48;
  *(a1 + 960) = 0u;
  *(a1 + 976) = &off_2A1DDFDA8;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = &off_2A1DDFC68;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 1;
  *(a1 + 1042) = 0;
  *(a1 + 1048) = &unk_2A1DDFD28;
  *(a1 + 1056) = off_2A1DDFD48;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = &off_2A1DDFDA8;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = &off_2A1DDFC68;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 1;
  *(a1 + 1146) = 0;
  *(a1 + 1152) = &unk_2A1DDFD28;
  *(a1 + 1160) = off_2A1DDFD48;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = &off_2A1DDFDA8;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = &off_2A1DDFC68;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 1;
  *(a1 + 1250) = 0;
  amber::ObjectStorePath::ObjectStorePath((a1 + 1256));
  amber::ObjectStorePath::ObjectStorePath((a1 + 1856));
  v66[0] = &unk_2A1DDFD28;
  v66[2] = 0;
  v66[3] = 0;
  v66[1] = off_2A1DDFD48;
  v66[5] = 0;
  v66[6] = 0;
  v66[4] = &off_2A1DDFDA8;
  v66[7] = &off_2A1DDFC68;
  v67 = 0u;
  v68 = 0u;
  v69 = 1;
  v70 = 0;
  amber::Buffer::reserve(v66, 0x190uLL, v13, v14, v15, v16, v17);
  v71 = "METADATA:";
  v72 = 9;
  amber::BufferProtocol<amber::Buffer>::append(v66, &v71, v18, v19, v20, v21, v22);
  if (*(a3 + 31) < 0)
  {
    v23 = *v10;
  }

  else if (*(a3 + 31))
  {
    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  v71 = v23;
  v72 = strlen(v23);
  amber::BufferProtocol<amber::Buffer>::append(v66, &v71, v24, v25, v26, v27, v28);
  v71 = ":";
  v72 = 1;
  amber::BufferProtocol<amber::Buffer>::append(v66, &v71, v29, v30, v31, v32, v33);
  if (*(a3 + 55) < 0)
  {
    v34 = *(a3 + 32);
  }

  else if (*(a3 + 55))
  {
    v34 = (a3 + 32);
  }

  else
  {
    v34 = 0;
  }

  v71 = v34;
  v72 = strlen(v34);
  amber::BufferProtocol<amber::Buffer>::append(v66, &v71, v35, v36, v37, v38, v39);
  v71 = ":";
  v72 = 1;
  amber::BufferProtocol<amber::Buffer>::append(v66, &v71, v40, v41, v42, v43, v44);
  if (*(a3 + 79) < 0)
  {
    v45 = *(a3 + 56);
  }

  else if (*(a3 + 79))
  {
    v45 = (a3 + 56);
  }

  else
  {
    v45 = 0;
  }

  v71 = v45;
  v72 = strlen(v45);
  amber::BufferProtocol<amber::Buffer>::append(v66, &v71, v46, v47, v48, v49, v50);
  amber::Buffer::constBuf(v66, v51, &v71);
  amber::ConstMemoryView::view(&v71, v68, *(&v68 + 1) - v68, v52, v65);
  amber::digest_SHA256(a1 + 640, v65, v53, v54, v55, v56, v57);
  amber::Buffer::~Buffer(v66, v58, v59, v60, v61, v62, v63);
  return a1;
}

void sub_29694ED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  amber::ObjectStorePath::~ObjectStorePath((v11 + 1856));
  amber::ObjectStorePath::~ObjectStorePath((v11 + 1256));
  amber::DaemonKnoxImageMetadata::~DaemonKnoxImageMetadata(v14, v16, v17, v18, v19, v20, v21);
  *(v11 + 640) = v12;
  *(v11 + 648) = v13;
  *(v11 + 660) = 0u;
  *(v11 + 676) = 0u;
  *(v11 + 692) = 0u;
  *(v11 + 708) = 0u;
  *(v11 + 724) = 0u;
  *(v11 + 740) = 0u;
  *(v11 + 756) = 0u;
  *(v11 + 772) = 0u;
  *(v11 + 788) = 0u;
  *(v11 + 804) = 0u;
  *(v11 + 820) = 0u;
  *(v11 + 836) = 0u;
  *(v11 + 852) = 0u;
  *(v11 + 868) = 0u;
  *(v11 + 884) = 0u;
  *(v11 + 900) = 0u;
  amber::KnoxContext::~KnoxContext((v11 + 80));
  _Unwind_Resume(a1);
}

uint64_t amber::BufferProtocol<amber::Buffer>::append(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *a2;
  v8 = a2[1];
  v12[0] = &off_2A1DDFC68;
  v12[1] = v7;
  v12[2] = v8;
  if (v8 < 0 || (!v7 ? (v9 = v8 == 0) : (v9 = 1), !v9))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return amber::BufferProtocol<amber::Buffer>::append(a1, v12, a3, a4, a5, a6, a7);
}

void amber::DaemonKnoxImage::~DaemonKnoxImage(amber::DaemonKnoxImage *this)
{
  v2 = 0;
  atomic_compare_exchange_strong(this + 8, &v2, 1u);
  if (!v2)
  {
    v3 = *(this + 5);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  AmberBlockDeviceClose(*(this + 7));
  AmberBlockDeviceClose(*(this + 8));
  AmberBlockDeviceClose(*(this + 9));
  AmberBlockPermutationDestroy(*(this + 6));
  amber::ObjectStorePath::~ObjectStorePath((this + 1856));
  amber::ObjectStorePath::~ObjectStorePath((this + 1256));
  *(this + 115) = &unk_2A1DE3200;
  amber::Buffer::~Buffer((this + 1152), v4, v5, v6, v7, v8, v9);
  amber::Buffer::~Buffer((this + 1048), v10, v11, v12, v13, v14, v15);
  amber::Buffer::~Buffer((this + 944), v16, v17, v18, v19, v20, v21);
  amber::JSONCodable::~JSONCodable((this + 920));
  *(this + 80) = &unk_2A1DDFDD8;
  *(this + 81) = &unk_2A1DDFE08;
  *(this + 660) = 0u;
  *(this + 676) = 0u;
  *(this + 692) = 0u;
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
  amber::KnoxContext::~KnoxContext((this + 80));
}

{
  amber::DaemonKnoxImage::~DaemonKnoxImage(this);

  JUMPOUT(0x29C25C000);
}

void non-virtual thunk toamber::DaemonKnoxImage::~DaemonKnoxImage(amber::DaemonKnoxImage *this)
{
  amber::DaemonKnoxImage::~DaemonKnoxImage((this - 24));
}

{
  amber::DaemonKnoxImage::~DaemonKnoxImage((this - 24));

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DaemonKnoxImage::updateContext(uint64_t a1)
{
  v1 = *(a1 + 624);
  if (v1)
  {
    return v1(*(a1 + 616));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t amber::DaemonKnoxImage::run(uint64_t this)
{
  v1 = *(this + 72);
  if (!atomic_load((this + 32)))
  {
    v3 = this;
    do
    {
      this = usleep(0x30D40u);
      if (atomic_load((v3 + 36)))
      {
        amber::BlockDevice::prefetchSequence(v1);
      }
    }

    while (!atomic_load((v3 + 32)));
  }

  return this;
}

uint64_t amber::DaemonKnoxImage::unlockContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v61 = *MEMORY[0x29EDCA608];
  LODWORD(v59[0]) = 0;
  v57[0] = 0;
  Attribute = AmberObjectGetAttribute(a2, 101, 2, 4uLL, v59, v57, a7);
  v10 = v57[0];
  v11 = v59[0];
  v59[0] = &unk_2A1DDFDD8;
  v59[1] = &unk_2A1DDFE08;
  memset(&v59[2], 0, 256);
  v60 = 0;
  LODWORD(v37) = 0;
  v57[0] = 0;
  if ((AmberObjectGetAttribute(a2, 116, 2, 4uLL, &v37, v57, v12) & 0x80000000) != 0 || v57[0] != 4 || v37)
  {
    v26 = 0;
    result = 0;
    atomic_compare_exchange_strong((a1 + 36), &v26, 1u);
    goto LABEL_24;
  }

  memset(&v55, 0, sizeof(v55));
  __p[0] = 0;
  __p[1] = 0;
  v54 = 0;
  v52 = 0;
  if (Attribute < 0 || v10 != 4 || (v11 - 3) <= 0xFFFFFFFD)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxImage.cpp", "unlockContainer", 0x140, 0, "unsupported encryption profile", v13);
  }

  else
  {
    v37 = 0;
    if ((AmberObjectGetAttribute(a2, 126, 7, 0x220uLL, v57, &v37, v13) & 0x80000000) == 0)
    {
      v40 = &off_2A1DDFC68;
      v41 = v58;
      v42 = v58[64];
      if ((amber::hexBytesToStringEnd(&v40, &v55, v14, v15, v16, v17, v18) & 0x8000000000000000) == 0)
      {
        v19 = (v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v55 : v55.__r_.__value_.__r.__words[0];
        if ((amber::KnoxContext::fileDecryptionComponents((a1 + 80), v19, __p, &v52, v59) & 0x80000000) == 0)
        {
          v37 = &off_2A1DDFC68;
          v38 = &v59[2] + 4;
          v39 = LODWORD(v59[2]);
          if (((*(*a2 + 24))(a2, 127, 3, &v37) & 0x80000000) == 0)
          {
            v40 = &unk_2A1DDFD28;
            v42 = 0;
            v43 = 0;
            v41 = off_2A1DDFD48;
            v45 = 0;
            v46 = 0;
            v44 = &off_2A1DDFDA8;
            v47 = &off_2A1DDFC68;
            v48 = 0u;
            v49 = 0u;
            v50 = 1;
            v51 = 0;
            v37 = "com.apple.aebd.permutation";
            v38 = 26;
            if (amber::encryptionContextAuthDataGetEntry(a2, &v37, &v40) >= 1)
            {
              amber::Buffer::constBuf(&v40, v24, v56);
              amber::ConstMemoryView::view(v56, v49, *(&v49 + 1) - v49, v25, v36);
              amber::JSONInputStream::JSONInputStream(&v37, v36);
            }

            amber::Buffer::resize(&v40, 0, v20, v21, v22, v23, v24);
            v37 = "com.apple.aebd.prefetch-sequence";
            v38 = 32;
            if (amber::encryptionContextAuthDataGetEntry(a2, &v37, &v40) >= 1)
            {
              amber::Buffer::constBuf(&v40, v34, v56);
              amber::ConstMemoryView::view(v56, v49, *(&v49 + 1) - v49, v35, v36);
              amber::JSONInputStream::JSONInputStream(&v37, v36);
            }

            amber::Buffer::~Buffer(&v40, v29, v30, v31, v32, v33, v34);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v55.__r_.__value_.__l.__data_);
            }

            result = 0;
            goto LABEL_24;
          }
        }
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxImage.cpp", "unlockContainer", 0x152, 0, "KKMS request", v18);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  result = 0xFFFFFFFFLL;
LABEL_24:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29694F690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  amber::Buffer::~Buffer(&a40, a2, a3, a4, a5, a6, a7);
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  _Unwind_Resume(a1);
}

void amber::ObjectStorePath::clear(amber::ObjectStorePath *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(this + 8) = 0;
  v9 = &off_2A1DDFDA8;
  v10 = this + 36;
  v11 = 256;
  amber::MutableMemoryView::operator+(&v9, 0, a7, &v12);
  bzero(v13, v14);
  *(this + 78) = 0;
  v9 = &off_2A1DDFDA8;
  v10 = this + 316;
  v11 = 256;
  amber::MutableMemoryView::operator+(&v9, 0, v8, &v12);
  bzero(v13, v14);
  *(this + 144) = 0;
  *(this + 148) = 0;
  *(this + 73) = 0;
}

uint64_t amber::BaseObject::setAttributeUInt64(amber::BaseObject *this, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v4[0] = &off_2A1DDFC68;
  v4[1] = &v5;
  v4[2] = 8;
  return (*(*this + 24))(this, a2, 1, v4);
}

uint64_t amber::BaseObject::setAttributeUInt32(amber::BaseObject *this, uint64_t a2, int a3)
{
  v5 = a3;
  v4[0] = &off_2A1DDFC68;
  v4[1] = &v5;
  v4[2] = 4;
  return (*(*this + 24))(this, a2, 2, v4);
}

void amber::DaemonKnoxImageMetadata::~DaemonKnoxImageMetadata(amber::DaemonKnoxImageMetadata *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE3200;
  v8 = (this + 24);
  amber::Buffer::~Buffer((this + 232), a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer((this + 128), v9, v10, v11, v12, v13, v14);
  amber::Buffer::~Buffer(v8, v15, v16, v17, v18, v19, v20);

  amber::JSONCodable::~JSONCodable(this);
}

{
  *this = &unk_2A1DE3200;
  v8 = (this + 24);
  amber::Buffer::~Buffer((this + 232), a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer((this + 128), v9, v10, v11, v12, v13, v14);
  amber::Buffer::~Buffer(v8, v15, v16, v17, v18, v19, v20);

  amber::JSONCodable::~JSONCodable(this);
}

{
  *this = &unk_2A1DE3200;
  v8 = (this + 24);
  amber::Buffer::~Buffer((this + 232), a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer((this + 128), v9, v10, v11, v12, v13, v14);
  amber::Buffer::~Buffer(v8, v15, v16, v17, v18, v19, v20);
  amber::JSONCodable::~JSONCodable(this);

  JUMPOUT(0x29C25C000);
}

void amber::DaemonXPCClientConnection::connect()
{
  error_out = 0;
  memset(&v0, 0, sizeof(v0));
  std::string::append(&v0, "entitlement[");
  std::string::append(&v0, "com.apple.private.amber.amberd");
  std::string::append(&v0, "] exists");
  operator new();
}

void sub_29694FB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void amber::DaemonXPCClientConnection::processMessage(amber::DaemonXPCClientConnection *this, void *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C25CB60](a2);
  if (v4 == MEMORY[0x29EDCAA00])
  {
    reply = xpc_dictionary_create_reply(a2);
    if (!reply)
    {
      goto LABEL_25;
    }

    v7 = reply;
    v8 = xpc_dictionary_get_string(a2, "Command");
    if (v8 && !strcmp(v8, "GetWestgateToken"))
    {
      string = 0;
      v22 = 0;
      v23 = 0;
      v9 = xpc_dictionary_get_string(a2, "Host");
      v10 = xpc_dictionary_get_string(a2, "Space");
      if (v9 && v10)
      {
        amber::KnoxContext::KnoxContext(v24, v9, v10, *(this + 1), *(this + 2), 1, 0);
        if ((amber::BaseObject::getAttributeString(v24, 407, &string) & 0x80000000) == 0)
        {
          if (SHIBYTE(v23) < 0)
          {
            if (v22)
            {
              p_string = string;
              goto LABEL_18;
            }
          }

          else if (HIBYTE(v23))
          {
            p_string = &string;
LABEL_18:
            xpc_dictionary_set_string(v7, "WestgateToken", p_string);
            v15 = 0;
            goto LABEL_20;
          }
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCClientConnection.cpp", "processMessage", 0x6F, 0, "GetWestgateToken auth callback", v12);
        v15 = 1;
LABEL_20:
        amber::KnoxContext::~KnoxContext(v24);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(string);
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCClientConnection.cpp", "processMessage", 0x6B, 0, "missing host/space in GetWestgateToken", v11);
    }

LABEL_23:
    xpc_dictionary_set_BOOL(v7, "Failed", 1);
LABEL_24:
    v16 = xpc_session_send_message(*this, v7);
    amber::xpcLogErrorAndRelease(v16, v17);
    xpc_release(v7);
    goto LABEL_25;
  }

  if (v4 == MEMORY[0x29EDCAA18])
  {
    v20 = xpc_dictionary_get_string(a2, *MEMORY[0x29EDCA9C8]);
    amber::log(3, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCClientConnection.cpp", "processMessage", 0x57, 0, "DaemonXPCClientConnection: %s", v14, v20);
  }

  else
  {
    name = xpc_type_get_name(v4);
    amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCClientConnection.cpp", "processMessage", 0x58, 0, "DaemonXPCClientConnection: not a dictionary, %s", v5, name);
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_29694FDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  amber::KnoxContext::~KnoxContext(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void amber::DaemonXPCClientConnection::~DaemonXPCClientConnection(xpc_object_t *this)
{
  v2 = *this;
  if (v2)
  {
    xpc_session_cancel(v2);
    xpc_release(*this);
  }
}

uint64_t amber::DaemonXPCClientConnection::connectToNBDServerWithKnoxURL(int a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *MEMORY[0x29EDCA608];
  if (__s && *__s)
  {
    strlen(__s);
    amber::KnoxURL::createWithString();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCClientConnection.cpp", "connectToNBDServerWithKnoxURL", 0x8F, 0, "invalid arguments", a7);
  v7 = *MEMORY[0x29EDCA608];
  return 0xFFFFFFFFLL;
}

void sub_2969502A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

amber::DaemonXPCServer *amber::DaemonXPCServer::DaemonXPCServer(amber::DaemonXPCServer *this, amber::Daemon *a2, const char *__s)
{
  *this = &unk_2A1DE00E0;
  *(this + 1) = a2;
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v7 = this + 16;
  *(this + 39) = v5;
  if (v5)
  {
    memmove(v7, __s, v5);
  }

  v7[v6] = 0;
  *(this + 5) = 850045863;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 15) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 13) = this + 112;
  return this;
}

void amber::DaemonXPCServer::~DaemonXPCServer(amber::DaemonXPCServer *this)
{
  *this = &unk_2A1DE00E0;
  std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,std::string>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,std::string>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,std::string>>>::destroy(this + 104, *(this + 14));
  std::mutex::~mutex((this + 40));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  amber::DaemonXPCServer::~DaemonXPCServer(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DaemonXPCServer::updateContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  AmberObjectSetAttribute(a3, 401, 6, "AmberDaemon-1.0", 15, a6, a7);
  if (!a4)
  {
    return 0;
  }

  if (a4)
  {
    string = 0;
    v25 = 0;
    v26 = 0;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "Command", "GetWestgateToken");
    if (amber::BaseObject::getAttributeString(a3, 403, &string))
    {
      goto LABEL_12;
    }

    if (SHIBYTE(v26) < 0)
    {
      if (!v25)
      {
        goto LABEL_12;
      }

      p_string = string;
    }

    else
    {
      if (!HIBYTE(v26))
      {
        goto LABEL_12;
      }

      p_string = &string;
    }

    xpc_dictionary_set_string(v12, "Host", p_string);
LABEL_12:
    if (amber::BaseObject::getAttributeString(a3, 404, &string))
    {
      goto LABEL_19;
    }

    if (SHIBYTE(v26) < 0)
    {
      if (!v25)
      {
        goto LABEL_19;
      }

      v14 = string;
    }

    else
    {
      if (!HIBYTE(v26))
      {
        goto LABEL_19;
      }

      v14 = &string;
    }

    xpc_dictionary_set_string(v12, "Space", v14);
LABEL_19:
    v15 = amber::xpcSendMessage(*(a2 + 8), v12);
    v17 = v15;
    if (v15)
    {
      v18 = xpc_dictionary_get_string(v15, "WestgateToken");
      v20 = v18;
      if (v18)
      {
        v21 = strlen(v18);
        if ((AmberObjectSetAttribute(a3, 407, 6, v20, v21, v22, v23) & 0x80000000) == 0)
        {
          v10 = 1;
LABEL_26:
          if (SHIBYTE(v26) < 0)
          {
            operator delete(string);
          }

          if (v12)
          {
            xpc_release(v12);
          }

          if (v17)
          {
            xpc_release(v17);
          }

          goto LABEL_32;
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCServer.cpp", "updateContext", 0x2F, 0, "GetWestgateToken failed", v19);
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCServer.cpp", "updateContext", 0x2C, 0, "send message", v16);
    }

    v10 = 0;
    goto LABEL_26;
  }

  v10 = 1;
LABEL_32:
  if (v10)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_296950694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void amber::DaemonXPCServer::processMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x29C25CB60](a3);
  if (a3 != MEMORY[0x29EDCA9C0])
  {
    if (v6 != MEMORY[0x29EDCAA00])
    {
      if (v6 == MEMORY[0x29EDCAA18])
      {
        string = xpc_dictionary_get_string(a3, *MEMORY[0x29EDCA9C8]);
        amber::log(3, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCServer.cpp", "processMessage", 0x41, 0, "DaemonXPCServerConnection: %s", v15, string);
      }

      else
      {
        name = xpc_type_get_name(v6);
        amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCServer.cpp", "processMessage", 0x42, 0, "DaemonXPCServerConnection: not a dictionary, %s", v7, name);
      }

      return;
    }

    reply = xpc_dictionary_create_reply(a3);
    if (!reply)
    {
      return;
    }

    v9 = reply;
    v10 = xpc_dictionary_get_string(a3, "Command");
    if (!v10)
    {
      goto LABEL_22;
    }

    v11 = v10;
    if (!strcmp(v10, "ConnectToNBDServerWithKnoxURL"))
    {
      v16 = xpc_dictionary_get_string(a3, "KnoxURL");
      xpc_dictionary_get_string(a3, "WestgateToken");
      if (v16)
      {
        amber::Daemon::connectToNBDServerWithKnoxURL(*(a1 + 8), v16);
      }

      v14 = 84;
    }

    else if (!strcmp(v11, "StartRecordingTrace"))
    {
      v17 = xpc_dictionary_get_string(a3, "TracePath");
      if (v17)
      {
        amber::Daemon::startRecordingTrace(*(a1 + 8), v17);
      }

      v14 = 106;
    }

    else
    {
      if (strcmp(v11, "StopRecordingTrace"))
      {
LABEL_22:
        xpc_dictionary_set_BOOL(v9, "Failed", 1);
LABEL_23:
        v18 = xpc_session_send_message(*(a2 + 8), v9);
        amber::xpcLogErrorAndRelease(v18, v19);
        xpc_release(v9);
        return;
      }

      if ((amber::Daemon::stopRecordingTrace(*(a1 + 8)) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v13 = "stop recording trace";
      v14 = 114;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCServer.cpp", "processMessage", v14, 0, v13, v12);
    goto LABEL_22;
  }
}

void sub_296950A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::DaemonXPCServer::run(amber::DaemonXPCServer *this)
{
  error_out = 0;
  v2 = this + 16;
  if (*(this + 39) < 0)
  {
    v2 = *v2;
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___ZN5amber15DaemonXPCServer3runEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_14;
  v6[4] = this;
  if (xpc_listener_create(v2, 0, XPC_LISTENER_CREATE_NONE, v6, &error_out))
  {
    dispatch_main();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonXPCServer.cpp", "run", 0xA2, 0, "xpc_listener_create", v3);
  amber::xpcLogErrorAndRelease(error_out, v4);
  return 0xFFFFFFFFLL;
}

uint64_t ___ZN5amber15DaemonXPCServer3runEv_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    *(result + 16) = &unk_2A1DDFDD8;
    *(result + 24) = &unk_2A1DDFE08;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 116) = 0u;
    *(result + 132) = 0u;
    *(result + 148) = 0u;
    *(result + 164) = 0u;
    *(result + 180) = 0u;
    *(result + 196) = 0u;
    *(result + 212) = 0u;
    *(result + 228) = 0u;
    *(result + 36) = 0u;
    *(result + 244) = 0u;
    *(result + 260) = 0u;
    *(result + 276) = 0u;
    JUMPOUT(0x29C25C000);
  }

  return result;
}

uint64_t AmberDaemonRunXPCService(amber::Daemon *a1, const char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = "com.apple.amberd";
  }

  amber::DaemonXPCServer::DaemonXPCServer(v5, a1, v2);
  amber::DaemonXPCServer::run(v5);
  amber::DaemonXPCServer::~DaemonXPCServer(v5);
  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_296950D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amber::DaemonXPCServer::~DaemonXPCServer(va);
  _Unwind_Resume(a1);
}

uint64_t amber::DaemonXPCServer::SessionContext::SessionContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v8 = a1 + 16;
  *(a1 + 16) = &unk_2A1DDFDD8;
  *(a1 + 24) = &unk_2A1DDFE08;
  *(a1 + 32) = 0u;
  v9 = (a1 + 32);
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
  v10 = (a1 + 36);
  v21 = &off_2A1DDFDA8;
  v22 = (a1 + 36);
  v23 = 256;
  amber::MutableMemoryView::operator+(&v21, 0, a7, &v24);
  bzero(v25, v26);
  v24 = &off_2A1DDFDA8;
  v25 = v10;
  v26 = 256;
  amber::MutableMemoryView::operator+(&v24, *v9, v11, &v21);
  if (v23 < 0x20 || (v24 = &off_2A1DDFDA8, v25 = v10, v26 = 256, amber::MutableMemoryView::operator+(&v24, *v9, v12, v20), amber::MutableMemoryView::first(v20, 0x20uLL, v13, &v21), (amber::RNG(&v21, v14) & 0x80000000) != 0) || (amber::CryptoBlobBase<256u>::grow(v8, 32, v15, v16, v17, v18, v12) & 0x80000000) != 0)
  {
    *v9 = 0;
    v21 = &off_2A1DDFDA8;
    v22 = v10;
    v23 = 256;
    amber::MutableMemoryView::operator+(&v21, 0, v12, &v24);
    bzero(v25, v26);
  }

  return a1;
}

void sub_296950F70(_Unwind_Exception *a1)
{
  *v1 = v2;
  *v4 = v3;
  *v5 = 0u;
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
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,std::string>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,std::string>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,std::string>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,std::string>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<amber::CryptoBlobBase<256u>,std::string>,std::__map_value_compare<amber::CryptoBlobBase<256u>,std::__value_type<amber::CryptoBlobBase<256u>,std::string>,std::less<amber::CryptoBlobBase<256u>>,true>,std::allocator<std::__value_type<amber::CryptoBlobBase<256u>,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<amber::CryptoBlobBase<256u> const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

double std::__destroy_at[abi:ne200100]<std::pair<amber::CryptoBlobBase<256u> const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  *a1 = &unk_2A1DDFDD8;
  *(a1 + 8) = &unk_2A1DDFE08;
  result = 0.0;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 260) = 0u;
  return result;
}

uint64_t amber::Daemon::getDefaultDataDir(std::string *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  bzero(v7, 0x400uLL);
  started = sysdir_start_search_path_enumeration(SYSDIR_DIRECTORY_APPLICATION_SUPPORT, SYSDIR_DOMAIN_MASK_SYSTEM);
  if (MEMORY[0x29C25CA50](started, v7) && !glob(v7, 2048, 0, &v6))
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, *v6.gl_pathv);
    globfree(&v6);
    std::string::operator=(a1, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::append(a1, "/");
    std::string::append(a1, "com.apple.amberd");
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2969511A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::Daemon::getExportName(amber::KnoxURL *a1, uint64_t a2, uint64_t a3)
{
  v69 = *MEMORY[0x29EDCA608];
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

  v59[0] = &unk_2A1DDFD28;
  v59[2] = 0;
  v59[3] = 0;
  v59[1] = off_2A1DDFD48;
  v59[5] = 0;
  v59[6] = 0;
  v59[4] = &off_2A1DDFDA8;
  v59[7] = &off_2A1DDFC68;
  v60 = 0u;
  v61 = 0u;
  v62 = 1;
  v63 = 0;
  amber::KnoxURL::KnoxURL(&v48, a1);
  if (v56 < 0)
  {
    *v54 = 0;
    v55 = 0;
  }

  else
  {
    LOBYTE(v54) = 0;
    v56 = 0;
  }

  amber::KnoxURL::update(&v48);
  v65 = "URL:";
  v66 = 4;
  amber::BufferProtocol<amber::Buffer>::append(v59, &v65, v5, v6, v7, v8, v9);
  if (v58 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v65 = p_p;
  v66 = strlen(p_p);
  amber::BufferProtocol<amber::Buffer>::append(v59, &v65, v11, v12, v13, v14, v15);
  if (*(a2 + 16) > 0xFu)
  {
    v65 = "SESSIONID:";
    v66 = 10;
    amber::BufferProtocol<amber::Buffer>::append(v59, &v65, v16, v17, v18, v19, v20);
    v27 = *(a2 + 16);
    v65 = &off_2A1DDFC68;
    v66 = a2 + 20;
    *&v67[0] = v27;
    amber::BufferProtocol<amber::Buffer>::append(v59, &v65, v28, v29, v30, v31, v32);
    v65 = &unk_2A1DDFDD8;
    v66 = &unk_2A1DDFE08;
    memset(v67, 0, sizeof(v67));
    v68 = 0;
    amber::Buffer::constBuf(v59, v33, v64);
    amber::ConstMemoryView::view(v64, v61, *(&v61 + 1) - v61, v34, v47);
    if ((amber::digest_SHA256(&v65, v47, v35, v36, v37, v38, v39) & 0x80000000) == 0)
    {
      v64[0] = &off_2A1DDFC68;
      v64[1] = v67 + 4;
      v64[2] = LODWORD(v67[0]);
      if ((amber::hexBytesToStringEnd(v64, a3, v40, v41, v42, v43, v26) & 0x8000000000000000) == 0)
      {
        v44 = 0;
        goto LABEL_17;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "getExportName", 0x5A, 0, "derive export name", v26);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "getExportName", 0x52, 0, "invalid session_id", v20);
  }

  v44 = 0xFFFFFFFFLL;
LABEL_17:
  if (v58 < 0)
  {
    operator delete(__p);
  }

  if (v56 < 0)
  {
    operator delete(v54);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(v48.__r_.__value_.__l.__size_);
  }

  amber::Buffer::~Buffer(v59, v21, v22, v23, v24, v25, v26);
  v45 = *MEMORY[0x29EDCA608];
  return v44;
}

void sub_296951558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  amber::KnoxURL::~KnoxURL(&a12);
  amber::Buffer::~Buffer(&a33, v34, v35, v36, v37, v38, v39);
  _Unwind_Resume(a1);
}

uint64_t amber::Daemon::connectClient(amber::Daemon *a1, char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v2 = amber::Daemon::acquireCachedImage(a1, a2);
  if (v2)
  {
    v4 = *(*v2 + 24);

    return v4();
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "connectClient", 0x61, 0, "invalid export", v3);
    return 0;
  }
}

uint64_t amber::Daemon::acquireCachedImage(amber::Daemon *this, char *a2)
{
  std::mutex::lock((this + 104));
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(this + 192, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 200) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[7];
    ++*(v5 + 20);
    *(v5 + 16) = 0;
  }

  std::mutex::unlock((this + 104));
  return v5;
}

void sub_2969516C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 104));
  _Unwind_Resume(a1);
}

void amber::Daemon::releaseCachedImage(amber::Daemon *this, char *a2)
{
  std::mutex::lock((this + 104));
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(this + 192, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 200) != v4)
  {
    v5 = v4[7];
    --*(v5 + 20);
    *(v5 + 16) = 0;
  }

  std::mutex::unlock((this + 104));
}

void sub_296951778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v15 + 104));
  _Unwind_Resume(a1);
}

uint64_t amber::Daemon::connectClientProc(amber::Daemon *this, char *a2, const char *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = amber::Daemon::connectClient(this, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2969517F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void amber::Daemon::disconnectClientProc(amber::Daemon *this, char *a2, const char *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  amber::Daemon::releaseCachedImage(this, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296951928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::Daemon::acquireKnoxImage(amber::Daemon *a1, amber::KnoxURL *a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  if ((amber::Daemon::getExportName(a2, a3, __p) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "acquireKnoxImage", 0x1B0, 0, "invalid URL", v5);
  }

  else
  {
    if (v20 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = amber::Daemon::acquireCachedImage(a1, v6);
    if (v7)
    {
      goto LABEL_10;
    }

    v8 = *(a2 + 31);
    if (v8 < 0)
    {
      v9 = *(a2 + 1);
      v10 = *(a2 + 2) == 0;
    }

    else
    {
      v9 = a2 + 8;
      v10 = v8 == 0;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a2 + 55);
    if (v13 < 0)
    {
      v14 = *(a2 + 4);
      v15 = *(a2 + 5) == 0;
    }

    else
    {
      v14 = a2 + 32;
      v15 = v13 == 0;
    }

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = amber::Daemon::acquireKnoxObjectStore(a1, v12, v16);
    if (v17)
    {
      amber::DaemonKnoxImage::create(v17, a2);
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "acquireKnoxImage", 0x1BC, 0, "acquire Knox object store", v18);
  }

  v7 = 0;
LABEL_10:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_296952088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::mutex::unlock(v22);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::Daemon::acquireTestImage(amber::Daemon *a1, amber::KnoxURL *a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if ((amber::Daemon::getExportName(a2, a3, v10) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "acquireTestImage", 0x1DA, 0, "invalid URL", v5);
    v8 = 0;
  }

  else
  {
    if (v11 >= 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = v10[0];
    }

    v8 = amber::Daemon::acquireCachedImage(a1, v6);
    if (!v8)
    {
      amber::DaemonTestImage::create(a1, a2, v7);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return v8;
}

void sub_2969522B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::mutex::unlock((v22 + 104));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void amber::Daemon::releaseImage(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::mutex::lock((a1 + 104));
    --*(a2 + 20);
    *(a2 + 16) = 0;

    std::mutex::unlock((a1 + 104));
  }
}

void amber::Daemon::startRecordingTrace(amber::Daemon *this, amber::BlockDeviceFileEventLogger *a2)
{
  amber::Daemon::stopRecordingTrace(this);
  std::mutex::lock((this + 104));
  AmberBlockDeviceEventRegisterFileLogger(a2, 4);
}

uint64_t amber::Daemon::stopRecordingTrace(amber::Daemon *this)
{
  std::mutex::lock((this + 104));
  v2 = *(this + 28);
  if (v2)
  {
    AmberBlockDeviceEventLoggerClose(v2);
    *(this + 28) = 0;
    amber::log(3, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "stopRecordingTrace", 0xF0, 0, "Daemon: stop recording trace", v3);
  }

  std::mutex::unlock((this + 104));
  return 0;
}

uint64_t amber::Daemon::getAttribute(amber::Daemon *this, amber::BaseObject *a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  v9 = a2;
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "getAttribute", 0xFB, 0, "invalid attribute encoding", v11);
    return 0xFFFFFFFFLL;
  }

  if (v9 == 1302)
  {
    v12 = *(this + 5);
  }

  else
  {
    if (v9 != 1301)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = *(this + 6);
  }

  *a5 = 8;
  v14 = *(a4 + 2);
  if (!v14)
  {
    return 0;
  }

  if (v14 > 7)
  {
    result = 0;
    **(a4 + 1) = v12;
    return result;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v11, 8, v14);
  return 0xFFFFFFFFLL;
}

uint64_t amber::Daemon::setAttribute(amber::Daemon *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = a2;
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    v16 = "invalid attribute encoding";
    v17 = 266;
    goto LABEL_7;
  }

  if (v8 != 1302)
  {
    if (v8 != 1301)
    {
      return 0xFFFFFFFFLL;
    }

    v18 = 0;
    if ((amber::storeAttribute<unsigned long long>(&v18, a4, v10, v11, v12, v13, v14) & 0x80000000) == 0)
    {
      result = 0;
      *(this + 6) = v18;
      return result;
    }

    v16 = "invalid attribute size";
    v17 = 273;
LABEL_7:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "setAttribute", v17, 0, v16, v14);
    return 0xFFFFFFFFLL;
  }

  return amber::storeAttribute<unsigned long long>(this + 5, a4, v10, v11, v12, v13, v14);
}

void amber::Daemon::run(amber::Daemon *this)
{
  if (!atomic_load(this + 22))
  {
    v3 = (this + 200);
    v4 = (this + 176);
    do
    {
      usleep(0xF4240u);
      std::mutex::lock((this + 104));
      v5 = *(this + 24);
      if (v5 != v3)
      {
        do
        {
          v6 = v5[7];
          if (v6[5] > 0 || atomic_fetch_add_explicit(v6 + 4, 1u, memory_order_relaxed) < 0x15)
          {
            v9 = v5[1];
            if (v9)
            {
              do
              {
                v8 = v9;
                v9 = *v9;
              }

              while (v9);
            }

            else
            {
              do
              {
                v8 = v5[2];
                v10 = *v8 == v5;
                v5 = v8;
              }

              while (!v10);
            }
          }

          else
          {
            v7 = (*(*v6 + 16))(v6);
            if (v7)
            {
              --*(v7 + 164);
            }

            v8 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::erase(this + 24, v5);
            (*(*v6 + 8))(v6);
          }

          v5 = v8;
        }

        while (v8 != v3);
      }

      if (!*(this + 26))
      {
        v11 = *(this + 21);
        if (v11 != v4)
        {
          do
          {
            v12 = v11[7];
            if (v12[41] > 0 || atomic_fetch_add_explicit(v12 + 9, 1u, memory_order_relaxed) < 0x3D)
            {
              v14 = v11[1];
              if (v14)
              {
                do
                {
                  v13 = v14;
                  v14 = *v14;
                }

                while (v14);
              }

              else
              {
                do
                {
                  v13 = v11[2];
                  v10 = *v13 == v11;
                  v11 = v13;
                }

                while (!v10);
              }
            }

            else
            {
              v13 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::erase(this + 21, v11);
              (*(*v12 + 8))(v12);
            }

            v11 = v13;
          }

          while (v13 != v4);
        }
      }

      std::mutex::unlock((this + 104));
    }

    while (!atomic_load(this + 22));
  }
}

void amber::Daemon::~Daemon(amber::Daemon *this)
{
  v2 = 0;
  *this = &unk_2A1DE0110;
  *(this + 1) = &unk_2A1DE0148;
  atomic_compare_exchange_strong(this + 22, &v2, 1u);
  if (!v2)
  {
    v3 = *(this + 12);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  AmberNBDServerDestroy(*(this + 27));
  AmberBlockDeviceEventLoggerClose(*(this + 28));
  std::__tree<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>>>::destroy(this + 192, *(this + 25));
  std::__tree<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>>>::destroy(this + 168, *(this + 22));
  std::mutex::~mutex((this + 104));
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }
}

{
  amber::Daemon::~Daemon(this);

  JUMPOUT(0x29C25C000);
}

void non-virtual thunk toamber::Daemon::~Daemon(amber::Daemon *this)
{
  amber::Daemon::~Daemon((this - 8));
}

{
  amber::Daemon::~Daemon((this - 8));

  JUMPOUT(0x29C25C000);
}

uint64_t amber::Daemon::updateKnoxObjectStoreContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 104));
  v7 = *(a1 + 192);
  if (v7 == a1 + 200)
  {
    std::mutex::unlock((a1 + 104));
    if (a4)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "updateKnoxObjectStoreContext", 0x17B, 0, "No Knox image available to provide credentials", v13);
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v7 + 56);
    while (1)
    {
        ;
      }

      v9 = **v8;
      if (v10)
      {
        v11 = v10;
        if (v10[5] >= 1 && *(v10 + 79) == a2)
        {
          break;
        }
      }
    }

    std::mutex::unlock((a1 + 104));

    return amber::DaemonKnoxImage::updateContext(v11);
  }
}

uint64_t amber::Daemon::acquireKnoxObjectStore(amber::Daemon *this, std::string::value_type *__s, const char *a3)
{
  memset(&__p, 0, sizeof(__p));
  if ((amber::DaemonKnoxObjectStore::getCacheName(__s, a3, &__p) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/Daemon.cpp", "acquireKnoxObjectStore", 0x1FA, 0, "invalid URL", v6);
    v8 = 0;
  }

  else
  {
    std::mutex::lock((this + 104));
    v7 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(this + 168, &__p.__r_.__value_.__l.__data_);
    if ((this + 176) == v7)
    {
      std::mutex::unlock((this + 104));
      amber::DaemonKnoxObjectStore::create(this, __s, a3, v10);
    }

    v8 = v7[7];
    ++*(v8 + 164);
    *(v8 + 36) = 0;
    std::mutex::unlock((this + 104));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_296952DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::mutex::unlock((v22 + 104));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void amber::DaemonTestImage::create(amber::DaemonTestImage *this, amber::Daemon *a2, const amber::KnoxURL *a3)
{
  v4 = *(a2 + 24);
  v6 = *(a2 + 10);
  v5 = *(a2 + 11);
  v7 = *(this + 4);
  v8 = *(this + 7);
  AmberRandomBlockDeviceOpen();
}

uint64_t AmberDaemonDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void amber::KnoxURL::~KnoxURL(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
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

double amber::Daemon::Daemon(amber::Daemon *this, uint64_t a2)
{
  *this = &unk_2A1DE0110;
  *(this + 1) = &unk_2A1DE0148;
  *(this + 1) = xmmword_296A14470;
  *(this + 8) = 12;
  *(this + 40) = xmmword_296A14480;
  *(this + 7) = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 850045863;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 22) = 0;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 21) = this + 176;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 24) = this + 200;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  return result;
}

uint64_t amber::storeAttribute<unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a2 + 16) == 8)
  {
    result = 0;
    *a1 = **(a2 + 8);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/.././BaseObject.hpp", "storeAttribute", 0x2E, 0, "attribute size mismatch", a7);
    return 0xFFFFFFFFLL;
  }

  return result;
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

void amber::DaemonTestImage::~DaemonTestImage(amber::DaemonTestImage *this)
{
  AmberBlockDeviceClose(*(this + 3));
}

{
  AmberBlockDeviceClose(*(this + 3));

  JUMPOUT(0x29C25C000);
}

void std::__tree<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,amber::DaemonImage *>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__construct_node<std::pair<std::string const,amber::DaemonImage *>>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_296953968(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,amber::DaemonImage *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,amber::DaemonImage *>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,amber::DaemonKnoxObjectStore *>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,amber::DaemonImage *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonImage *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonImage *>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::__map_value_compare<std::string,std::__value_type<std::string,amber::DaemonKnoxObjectStore *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,amber::DaemonKnoxObjectStore *>>>::__construct_node<std::pair<std::string const,amber::DaemonKnoxObjectStore *>>();
  }

  return result;
}

void sub_296953CF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,amber::DaemonImage *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t amber::compressionStreamOpen(amber *this, amber::Stream *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = amber::parallelCompressionAlgorithmKey(a2, a2, a3, a4, a5, a6, a7);
  if ((a3 - 0x3200000001) >= 0xFFFFFFCE00000FFFLL && v8 != 0)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/CompressionStream.cpp", "compressionStreamOpen", 0x6E, 0, "invalid compression args", v9);
  return 0;
}

amber::CompressionStream *amber::CompressionStream::CompressionStream(amber::CompressionStream *this, amber::Stream *a2, amber *a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &unk_2A1DE01F8;
  *(this + 2) = 0;
  *(this + 2) = a2;
  *(this + 6) = a3;
  v10 = (this + 40);
  *(this + 4) = a4;
  *(this + 5) = &unk_2A1DDFD28;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = off_2A1DDFD48;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = &off_2A1DDFDA8;
  *(this + 12) = &off_2A1DDFC68;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 68) = 1;
  *(this + 138) = 0;
  v11 = (this + 144);
  *(this + 18) = &unk_2A1DDFD28;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = off_2A1DDFD48;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = &off_2A1DDFDA8;
  *(this + 25) = &off_2A1DDFC68;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 120) = 1;
  *(this + 242) = 0;
  if (a4 > 0xFFFFFFFFFFFFFFDFLL || (amber::Buffer::reserveEndCapacity((this + 144), a4 + 28, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::Buffer::reserveEndCapacity(v10, a4, v12, v13, v14, v15, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/CompressionStream.cpp", "CompressionStream", 0xE, 0, "reserve buffers", a7);
    v21 = 0;
    atomic_compare_exchange_strong(this + 2, &v21, 1u);
  }

  qmemcpy(v35, "pbz", sizeof(v35));
  v36 = amber::parallelCompressionAlgorithmKey(a3, v16, v17, v18, v19, v20, a7);
  v34[0] = &off_2A1DDFC68;
  v34[1] = v35;
  v34[2] = 4;
  if ((amber::BufferProtocol<amber::Buffer>::append(v11, v34, v22, v23, v24, v25, v26) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::appendNetwork64(v11, a4, v27, v28, v29, v30, v31) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/CompressionStream.cpp", "CompressionStream", 0x18, 0, "segment buffer append", v31);
    v32 = 0;
    atomic_compare_exchange_strong(this + 2, &v32, 1u);
  }

  return this;
}

void sub_296954090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::~Buffer(v8, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(v7, v10, v11, v12, v13, v14, v15);
  _Unwind_Resume(a1);
}

uint64_t amber::BufferProtocol<amber::Buffer>::appendNetwork64(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = bswap64(a2);
  v8[0] = &off_2A1DDFC68;
  v8[1] = &v9;
  v8[2] = 8;
  return amber::BufferProtocol<amber::Buffer>::append(a1, v8, a3, a4, a5, a6, a7);
}

void amber::CompressionStream::~CompressionStream(atomic_uint *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::CompressionStream::~CompressionStream(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

{
  v8 = 0;
  *this = &unk_2A1DE01F8;
  atomic_compare_exchange_strong(this + 2, &v8, 1u);
  if (!v8)
  {
    amber::CompressionStream::writeSegment(this, a2, a3, a4, a5, a6, a7);
  }

  amber::Buffer::~Buffer((this + 36), a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer((this + 10), v9, v10, v11, v12, v13, v14);
}

uint64_t amber::CompressionStream::close(atomic_uint *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  atomic_compare_exchange_strong(this + 2, &v7, 1u);
  if (v7)
  {
    return 0;
  }

  else
  {
    return amber::CompressionStream::writeSegment(this, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t amber::CompressionStream::write(amber::CompressionStream *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (atomic_load(this + 2))
  {
    return -1;
  }

  v30 = &off_2A1DDFC68;
  v31 = *(a2 + 8);
  if (*(&v31 + 1))
  {
    while (1)
    {
      v11 = *(this + 4);
      v12 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 40, a2, a3, a4, a5, a6, a7);
      if (*(&v31 + 1) >= (v11 - v12))
      {
        v14 = v11 - v12;
      }

      else
      {
        v14 = *(&v31 + 1);
      }

      amber::ConstMemoryView::first(&v30, v14, v13, v29);
      if ((amber::BufferProtocol<amber::Buffer>::append(this + 5, v29, v15, v16, v17, v18, v19) & 0x80000000) != 0)
      {
        v25 = "segment buffer append";
        v26 = 40;
        goto LABEL_15;
      }

      if (*(&v31 + 1) < v14)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", a7);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      *&v31 = v31 + v14;
      *(&v31 + 1) -= v14;
      if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 40, v20, v21, v22, v23, v24, a7) == *(this + 4) && (amber::CompressionStream::writeSegment(this, a2, a3, a4, a5, a6, a7) & 0x80000000) != 0)
      {
        break;
      }

      if (!*(&v31 + 1))
      {
        return *(a2 + 2);
      }
    }

    v25 = "compression failed";
    v26 = 44;
LABEL_15:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/CompressionStream.cpp", "write", v26, 0, v25, a7);
    v27 = 0;
    atomic_compare_exchange_strong(this + 2, &v27, 1u);
    return -1;
  }

  return *(a2 + 2);
}

uint64_t amber::CompressionStream::writeSegment(amber::CompressionStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 40, a2, a3, a4, a5, a6, a7);
  v15 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 144, v9, v10, v11, v12, v13, v14);
  if (v8)
  {
    v21 = v15;
    if ((amber::BufferProtocol<amber::Buffer>::appendNetwork64(this + 18, v8, v16, v17, v18, v19, v20) & 0x80000000) != 0 || (v64 = 0, v67 = &off_2A1DDFDA8, __dst = &v64, v69 = 8, v70 = &off_2A1DDFC68, v71 = &v64, v72 = 8, (amber::BufferProtocol<amber::Buffer>::append(this + 18, &v70, v22, v23, v24, v25, v20) & 0x80000000) != 0))
    {
      v36 = "segment buffer append";
      v37 = 64;
      goto LABEL_25;
    }

    if (!*(this + 6))
    {
      goto LABEL_11;
    }

    amber::Buffer::buf(this + 144, v20, &v70);
    amber::MutableMemoryView::operator+(&v70, *(this + 29), v26, &v67);
    amber::MutableMemoryViewConvertible<amber::Buffer>::first(this + 40, v8, v27, &v64);
    v70 = &off_2A1DDFC68;
    v71 = v65;
    v72 = v66;
    if ((v66 & 0x8000000000000000) != 0 || !v65 && v66)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v28);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v29 = amber::compressionEncode(&v67, &v70, *(this + 6));
    v34 = v29;
    if (v29 < 0 || v29 >= v8 || !v29)
    {
LABEL_11:
      amber::Buffer::buf(this + 144, v20, &v70);
      amber::MutableMemoryView::operator+(&v70, *(this + 29), v35, &v67);
      if (v69 < v8)
      {
        v64 = 0;
LABEL_23:
        v36 = "compression failed";
        v37 = 81;
        goto LABEL_25;
      }

      amber::Buffer::buf(this + 144, v20, &v70);
      amber::MutableMemoryView::operator+(&v70, *(this + 29), v38, &v67);
      amber::MutableMemoryViewConvertible<amber::Buffer>::first(this + 40, v8, v39, &v64);
      v70 = &off_2A1DDFC68;
      v71 = v65;
      v72 = v66;
      if ((v66 & 0x8000000000000000) != 0 || !v65 && v66)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v40);
        v62 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v62, "memory invalid args");
        __cxa_throw(v62, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      if (v66 > v69)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v40);
        v63 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v63, "memory invalid range");
        __cxa_throw(v63, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      memcpy(__dst, v65, v66);
      v34 = v8;
    }

    v64 = bswap64(v34);
    if ((amber::Buffer::grow((this + 144), v34, v30, v31, v32, v33, v20) & 0x80000000) != 0)
    {
      goto LABEL_23;
    }

    v67 = &off_2A1DDFDA8;
    __dst = &v64;
    v69 = 8;
    v70 = &off_2A1DDFC68;
    v71 = &v64;
    v72 = 8;
    if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(this + 144, &v70, v21 + 8, v41, v42, v43, v20) & 0x80000000) != 0)
    {
      goto LABEL_23;
    }
  }

  v44 = *(this + 2);
  amber::Buffer::constBuf(this + 144, v20, &v70);
  amber::ConstMemoryView::view(&v70, *(this + 28), *(this + 29) - *(this + 28), v45, &v67);
  if ((amber::Stream::writeExpected(v44, &v67, v46, v47, v48, v49, v50) & 0x8000000000000000) == 0)
  {
    amber::Buffer::resize((this + 40), 0, v51, v52, v53, v54, v20);
    amber::Buffer::resize((this + 144), 0, v55, v56, v57, v58, v59);
    return 0;
  }

  v36 = "writing compressed data";
  v37 = 85;
LABEL_25:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/CompressionStream.cpp", "writeSegment", v37, 0, v36, v20);
  return 0xFFFFFFFFLL;
}

uint64_t amber::MutableMemoryViewConvertible<amber::Buffer>::first@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  amber::Buffer::buf(a1, a3, v11);
  amber::MutableMemoryView::view(v11, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v7, v10);
  return amber::MutableMemoryView::first(v10, a2, v8, a4);
}

uint64_t amber::MutableMemoryViewConvertible<amber::Buffer>::store(uint64_t a1, const amber::ConstMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::buf(a1, a7, v17);
  amber::MutableMemoryView::view(v17, *(a1 + 80), *(a1 + 88) - *(a1 + 80), v10, v16);
  return amber::MutableMemoryView::store(v16, a2, a3, v11, v12, v13, v14);
}

uint64_t amber::MutableMemoryView::store(amber::MutableMemoryView *this, const amber::ConstMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(a2 + 2);
  v8 = __CFADD__(a3, v7);
  v9 = a3 + v7;
  if (v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Range.hpp", "createWithOffsetAndLength", 0x1E, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9 <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  if (v9 <= a3)
  {
    v9 = 0;
  }

  v18[0] = v10;
  v18[1] = v9;
  if (v9 > *(this + 2))
  {
    return 0xFFFFFFFFLL;
  }

  amber::MutableMemoryView::view(this, v18, a7, v17);
  v14 = *(a2 + 2);
  if (v14 > v17[2])
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v13);
    v16 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v16, "memory invalid range");
    __cxa_throw(v16, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(v17[1], *(a2 + 1), v14);
  return 0;
}

uint64_t amber::MutableMemoryView::view@<X0>(uint64_t this@<X0>, const amber::Range *a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  v4 = *(a2 + 1);
  if (v4 > *(this + 16))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MutableMemoryView.hpp", "view", 0x11C, 0, "memory invalid range", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
LABEL_11:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = *(this + 8);
  v6 = *a2;
  v7 = v5 + *a2;
  *a4 = &off_2A1DDFDA8;
  a4[1] = v7;
  a4[2] = v4 - v6;
  if ((v4 - v6) < 0 || (!v5 ? (v8 = v4 == v6) : (v8 = 1), !v8))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a3);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    goto LABEL_11;
  }

  return this;
}

amber::SharedMemoryFixedSizeQueue *amber::SharedMemoryFixedSizeQueue::SharedMemoryFixedSizeQueue(int8x8_t *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  this[4].i32[0] = 0;
  *this->i8 = 0u;
  *this[2].i8 = 0u;
  memset(v41 + 8, 0, 48);
  v7 = *(a2 + 2);
  if (v7 < 0x48)
  {
    v26 = "invalid buffer size";
    v27 = 75;
    goto LABEL_22;
  }

  __s2 = &off_2A1DDFDA8;
  p_s1 = &__s1;
  v32 = 72;
  v9 = *(a2 + 1);
  v37 = &off_2A1DDFC68;
  v38 = v9;
  v39 = v7;
  if ((v7 & 0x8000000000000000) != 0 || !v9)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  __s1 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  *&v41[3] = *(v9 + 8);
  v41[1] = v12;
  v41[2] = v13;
  v41[0] = v11;
  v14 = __s1;
  v15 = getpagesize();
  if (v15 < 0x400 || !v14 || 0x4000 != 0x4000uLL / v15 * v15)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryFixedSizeQueue.cpp", "initialize", 0x2F, 0, "invalid parameters page_size=%zu, capacity=%u", v16, v15, v14, __s2, p_s1, v32);
LABEL_18:
    v26 = "parameters mismatch";
    v27 = 83;
    goto LABEL_22;
  }

  __s2 = v14;
  v17 = 1;
  do
  {
    v18 = v17;
    v17 *= 2;
  }

  while (v18 < v14);
  v33 = xmmword_296A144F0;
  v34 = xmmword_296A14500;
  v19 = (8 * v18 + 319) & 0xFFFFFFFFFFFFFFC0;
  if (v19 <= 0x100)
  {
    v20 = 0;
  }

  else
  {
    v20 = (8 * v18 + 319) & 0xFFFFFFFFFFFFFFC0;
  }

  v35 = (v19 > 0x100) << 8;
  v36 = v20;
  p_s1 = v18;
  v32 = (8 * v18 + 319) & 0xFFFFFFFFFFFFFFC0;
  if (memcmp(&__s1, &__s2, 0x48uLL) || *&v41[0] > v7)
  {
    goto LABEL_18;
  }

  amber::MutableMemoryView::view(a2, (&v41[1] + 8), a7, &__s2);
  v21 = p_s1 + 4;
  *this = p_s1;
  this[1] = v21;
  amber::MutableMemoryView::view(a2, (&v41[2] + 8), v22, &__s2);
  v23 = *(&__s1 + 8);
  this[2] = p_s1;
  this[3] = v23;
  this[4].i32[0] = __s1;
  if (*&v41[3] - *(&v41[2] + 1) < (8 * *&v23) || (v24 = vcnt_s8(v23), v24.i16[0] = vaddlv_u8(v24), v24.u32[0] != 1))
  {
    v26 = "invalid parameters";
    v27 = 95;
LABEL_22:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryFixedSizeQueue.cpp", "SharedMemoryFixedSizeQueue", v27, 0, v26, a7);
    v29 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](v29, "invalid parameters");
    __cxa_throw(v29, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return this;
}

unint64_t amber::SharedMemoryFixedSizeQueue::getAllocationSize(amber::SharedMemoryFixedSizeQueue *this)
{
  v2 = getpagesize();
  if (v2 < 0x400 || !this || 0x4000 != 0x4000uLL / v2 * v2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryFixedSizeQueue.cpp", "initialize", 0x2F, 0, "invalid parameters page_size=%zu, capacity=%u", v3, v2, this);
    v4 = "invalid parameters\n";
    v5 = 104;
LABEL_3:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryFixedSizeQueue.cpp", "getAllocationSize", v5, 0, v4, v3);
    return -1;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    v7 *= 2;
  }

  while (v8 < this);
  if ((8 * v8 + 319) < 0)
  {
    v4 = "invalid size";
    v5 = 105;
    goto LABEL_3;
  }

  return (8 * v8 + 319) & 0xFFFFFFFFFFFFFFC0;
}

uint64_t amber::SharedMemoryFixedSizeQueue::initialize(amber::SharedMemoryFixedSizeQueue *this, const amber::MutableMemoryView *a2)
{
  v4 = getpagesize();
  if (v4 < 0x400 || !a2 || 0x4000 != 0x4000uLL / v4 * v4)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryFixedSizeQueue.cpp", "initialize", 0x2F, 0, "invalid parameters page_size=%zu, capacity=%u", v5, v4, a2);
LABEL_3:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/SharedMemoryFixedSizeQueue.cpp", "initialize", 0x74, 0, "invalid parameters\n", v5);
    return 0xFFFFFFFFLL;
  }

  *&v22 = a2;
  v7 = 1;
  do
  {
    v8 = v7;
    v7 *= 2;
  }

  while (v8 < a2);
  *&v23[8] = xmmword_296A144F0;
  *&v23[24] = xmmword_296A14500;
  v9 = (8 * v8 + 319) & 0xFFFFFFFFFFFFFFC0;
  if (v9 <= 0x100)
  {
    v10 = 0;
  }

  else
  {
    v10 = (8 * v8 + 319) & 0xFFFFFFFFFFFFFFC0;
  }

  *&v23[40] = (v9 > 0x100) << 8;
  v24 = v10;
  *(&v22 + 1) = v8;
  *v23 = (8 * v8 + 319) & 0xFFFFFFFFFFFFFFC0;
  if (v9 > *(this + 2))
  {
    goto LABEL_3;
  }

  amber::MutableMemoryView::view(this, &v23[8], v5, &v19);
  bzero(v20, v21);
  amber::MutableMemoryView::view(this, &v23[8], v11, &v19);
  if (v21 <= 0x47)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Multithreading/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v12);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v13 = v20;
  v14 = *&v23[32];
  v15 = *&v23[16];
  v16 = *v23;
  *(v20 + 8) = v24;
  v13[2] = v15;
  v13[3] = v14;
  v13[1] = v16;
  *v13 = v22;
  amber::MutableMemoryView::view(this, &v23[24], v12, &v19);
  bzero(v20, v21);
  amber::MutableMemoryView::view(this, &v23[40], v17, &v19);
  memset(v20, 255, v21);
  return 0;
}

void amber::SharedMemoryFixedSizeQueue::enqueue(amber::SharedMemoryFixedSizeQueue *this, uint64_t a2)
{
  while (1)
  {
    do
    {
      v2 = *(this + 2);
      explicit = atomic_load_explicit(*(this + 1), memory_order_acquire);
      v4 = (*(this + 3) - 1) & explicit;
      v5 = atomic_load_explicit((v2 + 8 * v4), memory_order_acquire);
    }

    while (explicit != atomic_load_explicit(*(this + 1), memory_order_acquire));
    if (explicit != *(this + 3) + atomic_load_explicit(*this, memory_order_acquire) && v5 >= 0xFFFFFFFF00000000)
    {
      v7 = v5;
      atomic_compare_exchange_strong((*(this + 2) + 8 * v4), &v7, (v5 + 1) | (a2 << 32));
      atomic_compare_exchange_strong(*(this + 1), &v8, explicit + 1);
      if (v7 == v5)
      {
        break;
      }
    }
  }
}

unint64_t amber::SharedMemoryFixedSizeQueue::dequeue(atomic_ullong *volatile *this)
{
  while (1)
  {
    do
    {
      do
      {
        explicit = atomic_load_explicit(*this, memory_order_acquire);
        v2 = (*(this + 3) - 1) & explicit;
        v3 = atomic_load_explicit((*(this + 2) + 8 * v2), memory_order_acquire);
      }

      while (explicit != atomic_load_explicit(*this, memory_order_acquire));
    }

    while (explicit == atomic_load_explicit(this[1], memory_order_acquire) || HIDWORD(v3) == 0xFFFFFFFF);
    v4 = v3;
    atomic_compare_exchange_strong((*(this + 2) + 8 * v2), &v4, (v3 + 1) | 0xFFFFFFFF00000000);
    if (v4 == v3)
    {
      break;
    }

    atomic_compare_exchange_strong(*this, &v5, explicit + 1);
  }

  atomic_compare_exchange_strong(*this, &v6, explicit + 1);
  return HIDWORD(v3);
}

double amber::DecompressionStream::DecompressionStream(amber::DecompressionStream *this, amber::Stream *a2)
{
  *this = &unk_2A1DE02B0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 40) = 1;
  *(this + 6) = &unk_2A1DDFD28;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = off_2A1DDFD48;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = &off_2A1DDFDA8;
  *(this + 13) = &off_2A1DDFC68;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 72) = 1;
  *(this + 146) = 0;
  *(this + 19) = &unk_2A1DDFD28;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = off_2A1DDFD48;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = &off_2A1DDFDA8;
  *(this + 26) = &off_2A1DDFC68;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 124) = 1;
  *(this + 250) = 0;
  return result;
}

void amber::DecompressionStream::~DecompressionStream(atomic_uint *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  *this = &unk_2A1DE02B0;
  v8 = (this + 12);
  atomic_compare_exchange_strong(this + 2, &v7, 1u);
  amber::Buffer::~Buffer((this + 38), a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(v8, v9, v10, v11, v12, v13, v14);
}

{
  v7 = 0;
  *this = &unk_2A1DE02B0;
  v8 = (this + 12);
  atomic_compare_exchange_strong(this + 2, &v7, 1u);
  amber::Buffer::~Buffer((this + 38), a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(v8, v9, v10, v11, v12, v13, v14);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::DecompressionStream::close(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this + 2, &v1, 1u);
  return 0;
}

uint64_t amber::DecompressionStream::read(amber::DecompressionStream *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!atomic_load(this + 2))
  {
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v31 = &off_2A1DDFDA8;
    v32 = v10;
    v33 = v11;
    if (!v11)
    {
      return 0;
    }

    v8 = 0;
    while (1)
    {
      if (amber::ConstMemoryViewConvertible<amber::Buffer>::empty(this + 48, a2, a3, a4, a5, a6, a7))
      {
        if (atomic_load(this + 3))
        {
          return v8;
        }

        if ((amber::DecompressionStream::readSegment(this, v13, v14, v15, v16, v17, v18) & 0x80000000) != 0)
        {
          break;
        }
      }

      v20 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 48, v13, v14, v15, v16, v17, v18);
      if (v33 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v33;
      }

      amber::MutableMemoryView::first(&v31, v22, v21, v30);
      if (amber::BufferProtocol<amber::Buffer>::readAndConsume(this + 6, v30, v23, v24, v25, v26, v27) != v22)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "read", 0x21, 0, "decompression failed", a7);
        return -1;
      }

      if (v33 < v22)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MutableMemoryView.hpp", "increment", 0x122, 0, "memory invalid range", a7);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v8 += v22;
      v32 += v22;
      v33 -= v22;
      if (!v33)
      {
        return v8;
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "read", 0x1E, 0, "decompression failed", v18);
    v28 = 0;
    atomic_compare_exchange_strong(this + 2, &v28, 1u);
  }

  return -1;
}

uint64_t amber::DecompressionStream::readSegment(amber::DecompressionStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v78 = *MEMORY[0x29EDCA608];
  amber::Buffer::resize((this + 48), 0, a3, a4, a5, a6, a7);
  amber::Buffer::resize((this + 152), 0, v8, v9, v10, v11, v12);
  if (*(this + 40) == 1)
  {
    v18 = *(this + 2);
    v71 = &off_2A1DDFDA8;
    v72 = v74;
    v73 = 12;
    if (amber::Stream::readExpected(v18, &v71, v13, v14, v15, v16, v17) != 12)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "readSegment", 0x33, 0, "truncated container", v24);
      goto LABEL_27;
    }

    if (v74[0] != 112 || v74[1] != 98 || v74[2] != 122 || (v25 = amber::lookupParallelCompressionAlgorithmKey(v74[3], v19, v20, v21, v22, v23, v24), *(this + 6) = v25, v25 == -1))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "readSegment", 0x38, 0, "invalid container header (magic)", v24);
      goto LABEL_27;
    }

    v26 = bswap64(v75);
    *(this + 4) = v26;
    if (v26 - 0x3200000001 <= 0xFFFFFFCE00000FFELL)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "readSegment", 0x3D, 0, "invalid container header (segment size range)", v24);
      goto LABEL_27;
    }

    *(this + 40) = 0;
  }

  v27 = *(this + 2);
  v71 = &off_2A1DDFDA8;
  v72 = &v76;
  v73 = 16;
  result = (*(*v27 + 40))(v27, &v71);
  if (result)
  {
    if (result > 15)
    {
      v34 = v76;
      if (!v76 || (v35 = v77) == 0 || (v36 = bswap64(v76), v36 > *(this + 4)) || (v37 = bswap64(v77), v37 > v36))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "readSegment", 0x50, 0, "invalid block header (sizes)", v33);
        goto LABEL_27;
      }

      v38 = *(this + 2);
      if (v77 == v76)
      {
        if ((amber::Buffer::reserveEndCapacity((this + 48), v36, v29, v30, v31, v32, v33) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(this + 48, v36, v39, &v71), amber::Stream::readExpected(v38, &v71, v40, v41, v42, v43, v44) != v36) || (amber::Buffer::grow((this + 48), v36, v45, v46, v47, v48, v39) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Streams/./Stream.hpp", "readExpectedToBufferEnd", 0x75, 0, "readExpectedToBufferEnd", v39);
          if (v34 != -1)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "readSegment", 0x55, 0, "truncated block", v49);
            goto LABEL_27;
          }
        }
      }

      else
      {
        if ((amber::Buffer::reserveEndCapacity((this + 152), v37, v29, v30, v31, v32, v33) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(this + 152, v37, v51, &v71), amber::Stream::readExpected(v38, &v71, v52, v53, v54, v55, v56) != v37) || (amber::Buffer::grow((this + 152), v37, v57, v58, v59, v60, v51) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Streams/./Stream.hpp", "readExpectedToBufferEnd", 0x75, 0, "readExpectedToBufferEnd", v51);
          if (v35 != -1)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "readSegment", 0x5A, 0, "truncated block", v51);
            goto LABEL_27;
          }
        }

        if ((amber::Buffer::reserveEndCapacity((this + 48), v36, v61, v62, v63, v64, v51) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::zMutableEndView(this + 48, v65, &v71), amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(this + 152, v66, v74), amber::compressionDecode(&v71, v74, *(this + 6)) != v36) || (amber::Buffer::grow((this + 48), v36, v67, v68, v69, v70, v65) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "readSegment", 0x5E, 0, "corrupted block", v65);
          goto LABEL_27;
        }
      }

      result = 0;
      goto LABEL_28;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/DecompressionStream.cpp", "readSegment", 0x45, 0, "truncated block", v33);
LABEL_27:
    result = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  atomic_store(1u, this + 3);
LABEL_28:
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t amber::BufferProtocol<amber::Buffer>::readAndConsume(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(a2 + 16);
  v10 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a1, a2, a3, a4, a5, a6, a7);
  if (v10 < v9)
  {
    v9 = v10;
  }

  amber::Buffer::constBuf(a1, v11, v23);
  amber::ConstMemoryView::view(v23, a1[10], a1[11] - a1[10], v12, v22);
  if (v22[2] < v9 || *(a2 + 16) < v9)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v13);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  memcpy(*(a2 + 8), v22[1], v9);
  if (amber::Buffer::consume(a1, v9, v15, v16, v17, v18, v19) < 0)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

uint64_t amber::Buffer::consume(amber::Buffer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(this + 10);
  v8 = __CFADD__(v7, a2);
  v9 = v7 + a2;
  if (v8 || v9 > *(this + 11))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Streams/.././Memory/./Buffer.hpp", "consume", 0xA5, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(this + 10) = v9;
  return 0;
}

void amber::DaemonKnoxObjectStore::~DaemonKnoxObjectStore(amber::DaemonKnoxObjectStore *this)
{
  *this = &unk_2A1DE0350;
  AmberBlockDeviceClose(*(this + 2));
  AmberBlockDeviceClose(*(this + 3));
  v2 = *(this + 16);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  v3 = *(this + 40);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::mutex::~mutex((this + 72));
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

{
  amber::DaemonKnoxObjectStore::~DaemonKnoxObjectStore(this);

  JUMPOUT(0x29C25C000);
}

void amber::DaemonKnoxObjectStore::create(amber::DaemonKnoxObjectStore *this, amber::Daemon *a2, const char *a3, const char *a4)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v4 = *(this + 7);
  operator new();
}

void sub_2969562B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amber::DaemonKnoxObjectStore::getCacheName(std::string::value_type *__s, const std::string::value_type *a2, std::string *this)
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

  std::string::append(this, __s);
  std::string::append(this, "-");
  std::string::append(this, a2);
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = size;
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v7 = this->__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    v9 = MEMORY[0x29EDCA600];
    do
    {
      v10 = v8->__r_.__value_.__s.__data_[0];
      if ((v10 & 0x80000000) != 0)
      {
        if (__maskrune(v8->__r_.__value_.__s.__data_[0], 0x500uLL))
        {
          goto LABEL_19;
        }
      }

      else if ((*(v9 + 4 * v10 + 60) & 0x500) != 0)
      {
        goto LABEL_19;
      }

      if (v10 - 45 > 0x32 || ((1 << (v10 - 45)) & 0x4000000000003) == 0)
      {
        if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = this;
        }

        else
        {
          v14 = this->__r_.__value_.__r.__words[0];
        }

        std::string::erase(this, v8 - v14, 1uLL);
        goto LABEL_20;
      }

LABEL_19:
      v8 = (v8 + 1);
LABEL_20:
      v12 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v12 & 0x80u) == 0)
      {
        v13 = this;
      }

      else
      {
        v13 = this->__r_.__value_.__r.__words[0];
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = this->__r_.__value_.__l.__size_;
      }
    }

    while (v8 != (v13 + v12));
  }

  return 0;
}

uint64_t amber::DaemonKnoxObjectStore::setWestgateToken(amber::DaemonKnoxObjectStore *this, const char *__s)
{
  v3 = *(this + 3);
  v4 = strlen(__s);

  return AmberObjectSetAttribute(v3, 407, 6, __s, v4, v5, v6);
}

uint64_t amber::DaemonKnoxObjectStore::openExclusiveMetadataReadStream(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  std::mutex::lock((a1 + 72));
  if ((getMetadataPath(a2, __p, v4, v5, v6, v7, v8) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxObjectStore.cpp", "openExclusiveMetadataReadStream", 0x76, 0, "loadMetadata", v9);
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

    v11 = openat(*(a1 + 160), v10, 0);
    if ((v11 & 0x80000000) == 0)
    {
      amber::fileStreamOpenWithFD(v11);
    }

    if (*__error() != 2)
    {
      v12 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Daemon/DaemonKnoxObjectStore.cpp", "openExclusiveMetadataReadStream", 0x7C, *v12, "loadMetadata open", v13);
    }
  }

  std::mutex::unlock((a1 + 72));
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}