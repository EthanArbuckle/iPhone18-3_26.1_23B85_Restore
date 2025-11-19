size_t sub_277481528(size_t result)
{
  v1 = **result;
  v2 = dword_280B9A880;
  if (BYTE1((**v1)[2]._seek) == 1 && dword_280B9A880 >= 6)
  {
    result = fprintf(*v1[1], "%10s ", "Time stamp");
    v2 = dword_280B9A880;
  }

  if (v2 < 6)
  {
    goto LABEL_49;
  }

  result = fprintf(*v1[1], "%10s%15s%5s", "Frame", "Dimension", "Type");
  v2 = dword_280B9A880;
  if (dword_280B9A880 > 6)
  {
    result = fprintf(*v1[1], "%5s %18s", "SC", "Complexities");
    v2 = dword_280B9A880;
  }

  if (v2 < 6)
  {
    goto LABEL_49;
  }

  result = fprintf(*v1[1], "%8s%11s%5s%8s    ", "QP", "Bytes", "Dlay", "FPS");
  v2 = dword_280B9A880;
  v4 = **v1;
  if (BYTE1(v4->_read) == 1 && dword_280B9A880 >= 6)
  {
    result = fwrite("           PSNR         ", 0x18uLL, 1uLL, *v1[1]);
    v4 = **v1;
    v2 = dword_280B9A880;
  }

  if (LOBYTE(v4->_read) == 1 && v2 >= 6)
  {
    result = fprintf(*v1[1], "%15s%s%15s", &unk_277543CEE, "MD5", &unk_277543CEE);
    v4 = **v1;
    v2 = dword_280B9A880;
  }

  if (BYTE1(v4[2]._seek) == 1 && v2 >= 6)
  {
    result = fprintf(*v1[1], " %-9s%12s  ", "force", "Bits");
    v4 = **v1;
    v2 = dword_280B9A880;
  }

  if (BYTE2(v4[1]._close) == 1 && v2 >= 6)
  {
    result = fwrite(" Enc Time", 9uLL, 1uLL, *v1[1]);
    v2 = dword_280B9A880;
  }

  if (v2 < 6)
  {
    goto LABEL_49;
  }

  result = fwrite(" Ref POCs", 9uLL, 1uLL, *v1[1]);
  v2 = dword_280B9A880;
  if (dword_280B9A880 > 6)
  {
    if (!LOBYTE((**v1)[1]._lbfsize))
    {
      goto LABEL_37;
    }

    result = fwrite("    BitErrRatio", 0xFuLL, 1uLL, *v1[1]);
    v2 = dword_280B9A880;
    if (dword_280B9A880 < 6 || (result = fwrite("    PrevRcFrameBitRatio", 0x17uLL, 1uLL, *v1[1]), v2 = dword_280B9A880, dword_280B9A880 < 6))
    {
LABEL_49:
      v10 = **v1;
      goto LABEL_50;
    }

    result = fwrite("    WAvgRcFrameBitRatio", 0x17uLL, 1uLL, *v1[1]);
    v2 = dword_280B9A880;
  }

  if (v2 < 6)
  {
    goto LABEL_49;
  }

LABEL_37:
  result = fputc(10, *v1[1]);
  v2 = dword_280B9A880;
  if (BYTE1((**v1)[2]._seek) == 1 && dword_280B9A880 >= 6)
  {
    result = fprintf(*v1[1], "%10s ", "(seconds)");
    v2 = dword_280B9A880;
  }

  if (v2 < 6)
  {
    goto LABEL_49;
  }

  result = fprintf(*v1[1], "%6s (%6s) %4sx%-4s%4s%4s", "Src #", "POC", "W", "H", &unk_277543CEE, &unk_277543CEE);
  v2 = dword_280B9A880;
  if (dword_280B9A880 > 6)
  {
    result = fprintf(*v1[1], "%5s %-18s", &unk_277543CEE, "Frm/Intra/Inter");
    v2 = dword_280B9A880;
  }

  if (v2 < 6)
  {
    goto LABEL_49;
  }

  result = fprintf(*v1[1], "%7s%12s%6s/%5s", "Frm/  avg", "(ms)", "cur", "targ");
  v2 = dword_280B9A880;
  v10 = **v1;
  if (BYTE1(v10->_read) == 1 && dword_280B9A880 >= 6)
  {
    result = fprintf(*v1[1], " %5s/%5s/%5s/%5s", "Y", "Cb", "Cr", "comp");
    v10 = **v1;
    v2 = dword_280B9A880;
  }

LABEL_50:
  if (BYTE1(v10[2]._seek) != 1)
  {
LABEL_58:
    if (BYTE2(v10[1]._close) == 1 && v2 >= 6)
    {
      result = fwrite("     (ms)", 9uLL, 1uLL, *v1[1]);
      v2 = dword_280B9A880;
    }

    if (v2 >= 6)
    {
      v13 = *v1[1];

      return fputc(10, v13);
    }

    return result;
  }

  if (LOBYTE(v10->_read) == 1 && v2 >= 6)
  {
    result = fprintf(*v1[1], " %14s%3s%15s", &unk_277543CEE, &unk_277543CEE, &unk_277543CEE);
    v2 = dword_280B9A880;
  }

  if (v2 >= 6)
  {
    result = fprintf(*v1[1], " %3s/%5s %3s %4s/%4s", "IDR", "Rfrsh", "LTR", "FEC", "Hdr");
    v2 = dword_280B9A880;
    v10 = **v1;
    goto LABEL_58;
  }

  return result;
}

void sub_277481AA4(char *a1, uint64_t a2, int a3, int a4, __int16 *a5, int a6)
{
  sub_277481E04(v58, a6 * a4);
  sub_277481E04(__p, ((a6 & 0xFFFFFFFE) + a4));
  v11 = (a6 >> 1);
  v54 = a2;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v12 = (v11 + 1);
  v13 = a4 * v11;
  v14 = a1;
  do
  {
    memcpy(v58[0] + v13, v14, a4);
    v14 += a2;
    v13 += a4;
    --v12;
  }

  while (v12);
  if (a6 < 2)
  {
LABEL_8:
    v53 = 0;
  }

  else
  {
    v15 = 0;
    v16 = &a1[a2 * v11];
    v17 = -a2;
    v18 = (a6 >> 1);
    do
    {
      memcpy(v58[0] + v15, v16, a4);
      v16 += v17;
      v15 += a4;
      --v18;
    }

    while (v18);
    v53 = 1;
  }

  if (a3 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = v11;
    v22 = v11 + a4;
    v52 = ~v11 + a3;
    v51 = v11 + 1;
    v23 = a6;
    v24 = (2 * v11) | 1u;
    do
    {
      if (a4 >= 1)
      {
        v25 = 0;
        v26 = v58[0];
        v27 = __p[0] + v21;
        do
        {
          if (a6 < 1)
          {
            v33 = 0;
          }

          else
          {
            v28 = 0;
            v29 = a5;
            v30 = v20;
            v31 = v23;
            do
            {
              v32 = *v29++;
              v28 += v26[v25 + v30 % a6 * a4] * v32;
              ++v30;
              --v31;
            }

            while (v31);
            v33 = v28 >> 7;
          }

          if (v33 >= 255)
          {
            v33 = 255;
          }

          v27[v25++] = v33 & ~(v33 >> 31);
        }

        while (v25 != a4);
      }

      if (v53)
      {
        v34 = 0;
        v35 = a6 - 1;
        v36 = v22 - 2;
        v37 = v22;
        v38 = v11;
        do
        {
          *(__p[0] + v34) = *(__p[0] + v35);
          *(__p[0] + v37) = *(__p[0] + v36);
          ++v34;
          ++v37;
          --v36;
          --v35;
          --v38;
        }

        while (v38);
      }

      if (a4 >= 1)
      {
        v39 = __p[0];
        v40 = v21;
        do
        {
          v41 = 0;
          if ((v11 & 0x80000000) == 0)
          {
            v42 = a5;
            v43 = v39;
            v44 = v24;
            do
            {
              v46 = *v42++;
              v45 = v46;
              v47 = *v43++;
              v41 += v47 * v45;
              --v44;
            }

            while (v44);
            v41 >>= 7;
          }

          if (v41 >= 255)
          {
            v41 = 255;
          }

          a1[v19 * v54 + v40 - v21] = v41 & ~(v41 >> 31);
          ++v40;
          ++v39;
        }

        while (v40 < v22);
      }

      v48 = v51 + v19;
      if (v19 >= v52)
      {
        v48 = 2 * a3 - 3 - (v11 + v19);
      }

      v56 = v19;
      v49 = v11;
      v50 = v24;
      memcpy(v58[0] + v20 * a4, &a1[v48 * v54], a4);
      v24 = v50;
      v11 = v49;
      v20 = (v20 + 1) % a6;
      v19 = v56 + 1;
      v23 = a6;
    }

    while (v56 + 1 != a3);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }
}

void sub_277481DE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_277481E04(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2773C0914();
  }

  return result;
}

void sub_277481E7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_277481E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 < 0 && v3 < 0)
  {
    return *(a1 + 16) > *(a2 + 16);
  }

  v6 = v3 < 0 || v2 < v3;
  return v2 >= 0 && v6;
}

void sub_277481ED4(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 128), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 128));
  if (*(a1 + 80))
  {
    v2 = *(a1 + 72);
    v3 = *(*(a1 + 64) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 80) = 0;
    if (v2 != (a1 + 64))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 64));
    }
  }

  std::mutex::~mutex(a1);
}

void sub_277481F64(void *a1, int a2, int a3)
{
  v6 = operator new(0xC0uLL, 0x40uLL, MEMORY[0x277D826F0]);
  if (v6)
  {
    v7 = v6;
    *v6 = 850045863;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 7) = 0;
    *(v6 + 8) = v6 + 64;
    *(v6 + 9) = v6 + 64;
    *(v6 + 5) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 28) = 0;
    *(v6 + 36) = a2;
    v6[148] = 0;
    *(v6 + 17) = dispatch_get_global_queue(a3, 0);
    v7[16] = dispatch_group_create();
    v8 = a1;
    v9 = v7;
  }

  else
  {
    v8 = a1;
    v9 = 0;
  }

  sub_277482024(v8, v9);
}

void sub_277482024(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_2774820A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2774820B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2774820B8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_277481ED4(v2);
    MEMORY[0x277CAD360]();
  }

  return a1;
}

uint64_t sub_2774820F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_277481ED4(result);

    JUMPOUT(0x277CAD360);
  }

  return result;
}

void sub_277482130(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_2774821E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2773CC26C(v2);
  }

  return a1;
}

uint64_t *sub_277482334(uint64_t **a1, uint64_t **a2, unint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      if ((*a4)((*a2 + 2), (a1 + 2)))
      {
        v10 = *v8;
        v9 = v8[1];
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v4;
        v11[1] = v8;
        *v8 = v11;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v13 = a3 >> 1;
      v14 = (a3 >> 1) + 1;
      v15 = a1;
      do
      {
        v15 = v15[1];
        --v14;
      }

      while (v14 > 1);
      v16 = sub_277482334(a1, v15, a3 >> 1, a4);
      v4 = sub_277482334(v15, a2, a3 - v13, a4);
      if ((*a4)((v4 + 2), (v16 + 2)))
      {
          ;
        }

        v19 = *i;
        v20 = *(*i + 8);
        v21 = *v4;
        v21[1] = v20;
        *v20 = v21;
        v22 = *v16;
        v18 = v16[1];
        v22[1] = v4;
        *v4 = v22;
        *v16 = v19;
        v19[1] = v16;
      }

      else
      {
        v18 = v16[1];
        i = v4;
        v4 = v16;
      }

      if (v18 != i && i != a2)
      {
        v23 = i;
        do
        {
          if ((*a4)((i + 2), (v18 + 2)))
          {
              ;
            }

            v25 = *j;
            v26 = *(*j + 8);
            v27 = *i;
            *(v27 + 8) = v26;
            *v26 = v27;
            if (v23 == i)
            {
              v23 = j;
            }

            v29 = *v18;
            v28 = v18[1];
            *(v29 + 8) = i;
            *i = v29;
            *v18 = v25;
            *(v25 + 8) = v18;
            v18 = v28;
            i = j;
          }

          else
          {
            v18 = v18[1];
          }
        }

        while (v18 != v23 && i != a2);
      }
    }
  }

  return v4;
}

void sub_27748252C(std::mutex *this)
{
  while (1)
  {
    std::mutex::lock(this);
    v2 = *&this[1].__m_.__opaque[32];
    if (v2 <= 0)
    {
      v3 = *&this[1].__m_.__opaque[8];
      if (!v3)
      {
        break;
      }

      v4 = *this[1].__m_.__opaque;
      v5 = v4[4];
      *&this[1].__m_.__opaque[16] = *(v4 + 1);
      *&this[1].__m_.__opaque[32] = v5;
      v7 = *v4;
      v6 = v4[1];
      *(v7 + 8) = v6;
      *v6 = v7;
      *&this[1].__m_.__opaque[8] = v3 - 1;
      operator delete(v4);
      v2 = *&this[1].__m_.__opaque[32];
      if (v2 < 1)
      {
        break;
      }
    }

    v8 = (v2 - 1);
    *&this[1].__m_.__opaque[32] = v8;
    v9 = *&this[1].__m_.__opaque[24];
    if (!v9)
    {
      break;
    }

    v10 = *&this[1].__m_.__opaque[16];
    std::mutex::unlock(this);
    v9(v10, v8);
  }

  --*&this[1].__m_.__opaque[40];

  std::mutex::unlock(this);
}

uint64_t sub_2774825F4(uint64_t a1, const std::string *a2)
{
  *(a1 + 176) = 0;
  v4 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v5 = a1 + 16;
  v6 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v7 = a1 + 24;
  v8 = MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 24);
  v10 = *(MEMORY[0x277D82818] + 16);
  *a1 = v10;
  *(a1 + *(v10 - 24)) = v9;
  *(a1 + 8) = 0;
  v11 = (a1 + *(*a1 - 24));
  std::ios_base::init(v11, (a1 + 24));
  v12 = MEMORY[0x277D82890] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v8[5];
  v14 = v8[4];
  *(a1 + 16) = v14;
  *(v5 + *(v14 - 24)) = v13;
  v15 = v8[1];
  *a1 = v15;
  *(a1 + *(v15 - 24)) = v8[6];
  *a1 = v12;
  *(a1 + 128) = v4;
  v16 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v6;
  *(a1 + 24) = v16;
  MEMORY[0x277CAD2B0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::string::operator=((a1 + 88), a2);
  sub_2773CCBD4(v7);
  return a1;
}

void *sub_27748292C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x277CAD190](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_277482A90(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x277482A50);
  }

  __cxa_rethrow();
}

uint64_t *sub_277482B20(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x277CAD190](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

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

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_277482D64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x277482D24);
  }

  __cxa_rethrow();
}

uint64_t sub_277482E14(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x277CAD300](a1 + 128);
  return a1;
}

void sub_277482F68(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v10 = v4 + 72 * a2;
      while (v3 != v10)
      {
        if (*(v3 - 41) < 0)
        {
          operator delete(*(v3 - 64));
        }

        v3 -= 72;
      }

      a1[1] = v10;
    }
  }

  else
  {
    v7 = a1[2];
    if (0x8E38E38E38E38E39 * ((v7 - v3) >> 3) < v6)
    {
      if (a2 <= 0x38E38E38E38E38ELL)
      {
        v8 = 0x1C71C71C71C71C72 * ((v7 - v4) >> 3);
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (0x8E38E38E38E38E39 * ((v7 - v4) >> 3) >= 0x1C71C71C71C71C7)
        {
          v9 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v9 = v8;
        }

        sub_27748391C(v9);
      }

      sub_2773C0914();
    }

    v11 = v3 + 72 * v6;
    v12 = 72 * a2 - 8 * ((v3 - *a1) >> 3);
    do
    {
      sub_2774835BC(v3);
      v3 += 72;
      v12 -= 72;
    }

    while (v12);
    a1[1] = v11;
  }
}

void sub_277483184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2774838BC(va1);
  sub_277483978(va);
  _Unwind_Resume(a1);
}

void sub_2774831B8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 5;
    if ((v6 + 1) >> 59)
    {
      sub_2773C0914();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 4;
    if (v7 >> 4 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v22 = a1;
    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      sub_2773C5248();
    }

    v10 = 32 * v6;
    v19 = 0;
    v20 = v10;
    v21 = (32 * v6);
    *v10 = *a2;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 8) = 0;
    sub_2774836B0(32 * v6 + 8, *(a2 + 8), *(a2 + 16), 0x8E38E38E38E38E39 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    *&v21 = v21 + 32;
    v12 = *a1;
    v11 = a1[1];
    v13 = v20 + *a1 - v11;
    if (*a1 != v11)
    {
      v14 = *a1;
      v15 = v20 + *a1 - v11;
      do
      {
        *v15 = *v14;
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 8) = 0;
        *(v15 + 8) = *(v14 + 8);
        *(v15 + 24) = *(v14 + 24);
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *(v14 + 24) = 0;
        v14 += 32;
        v15 += 32;
      }

      while (v14 != v11);
      do
      {
        v23 = (v12 + 8);
        sub_2774687C8(&v23);
        v12 += 32;
      }

      while (v12 != v11);
    }

    v16 = *a1;
    *a1 = v13;
    v17 = a1[2];
    v18 = v21;
    *(a1 + 1) = v21;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v19 = v16;
    v20 = v16;
    sub_2774837B8(&v19);
    v5 = v18;
  }

  else
  {
    *v4 = *a2;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 8) = 0;
    sub_2774836B0(v4 + 8, *(a2 + 8), *(a2 + 16), 0x8E38E38E38E38E39 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    v5 = v4 + 32;
    a1[1] = v4 + 32;
  }

  a1[1] = v5;
}

void sub_2774833A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2774837B8(va);
  _Unwind_Resume(a1);
}

void *sub_2774833C0(void *a1, _BYTE *a2)
{
  MEMORY[0x277CAD190](&v8, a1, 0);
  if (v8 == 1)
  {
    v4 = *(a1 + *(*a1 - 24) + 40);
    v5 = v4[3];
    if (v5 == v4[4])
    {
      LODWORD(v4) = (*(*v4 + 80))(v4);
      if (v4 == -1)
      {
        v6 = 6;
        goto LABEL_6;
      }
    }

    else
    {
      v4[3] = v5 + 1;
      LOBYTE(v4) = *v5;
    }

    v6 = 0;
    *a2 = v4;
LABEL_6:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v6);
  }

  return a1;
}

void sub_2774834A4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x277483464);
  }

  __cxa_rethrow();
}

void sub_277483530(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2774835BC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = -1;
  std::string::erase((a1 + 8), 0, 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 32) = 257;
  *(a1 + 34) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = -1;
  *(a1 + 68) = -1;
  return a1;
}

void sub_277483630(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27748364C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2774836B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x38E38E38E38E38FLL)
    {
      sub_27748391C(a4);
    }

    sub_2773C0914();
  }
}

uint64_t sub_2774837B8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v5 = (i - 24);
    sub_2774687C8(&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_27748381C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2774835BC(a1);
  *v4 = *a2;
  std::string::operator=((v4 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

void sub_2774838A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2774838BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 41) < 0)
      {
        operator delete(*(v3 - 64));
      }

      v3 -= 72;
    }
  }

  return a1;
}

void sub_27748391C(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_2773C5248();
}

uint64_t sub_277483978(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 72;
      *(a1 + 16) = v2 - 72;
      if (*(v2 - 41) < 0)
      {
        operator delete(*(v2 - 64));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2774839DC(uint64_t a1, int a2, int a3, char *__str)
{
  if (!__str)
  {
    goto LABEL_28;
  }

  v6 = &unk_27A7167D0;
  v7 = 0xEDB2D39755161F73;
  while (1)
  {
    v8 = 0xCBF29CE484222325;
    if (*__str)
    {
      v9 = __str + 1;
      v10 = *__str;
      v8 = 0xCBF29CE484222325;
      do
      {
        v8 = 0x100000001B3 * (v8 ^ v10);
        v11 = *v9++;
        v10 = v11;
      }

      while (v11);
    }

    if (v8 <= 1)
    {
      v8 = 1;
    }

    if (v7 == v8)
    {
      break;
    }

    v12 = *(v6 + 3);
    v6 += 24;
    v7 = v12;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  v13 = *(v6 + 4);
  if (v13 != -1)
  {
    goto LABEL_15;
  }

LABEL_12:
  __endptr = 0;
  v14 = strtol(__str, &__endptr, 10);
  if (__endptr == __str)
  {
    v13 = -1;
  }

  else
  {
    v13 = v14;
  }

LABEL_15:
  v15 = *(a1 + 96);
  v16 = v15 == 3 || v13 == -1;
  if (!v16 && v15 != v13 && dword_280B9A880 >= 4)
  {
    fwrite("Multiple usage modes specified, this might not result in the options you expect!\n", 0x51uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(28, "Multiple usage modes specified, this might not result in the options you expect!\n");
  }

  if (v13 <= 33)
  {
    if (v13 <= 1)
    {
      if (!v13)
      {
        sub_277484038(a1);
        return 0;
      }

      if (v13 != 1)
      {
        goto LABEL_45;
      }

      *(a1 + 96) = 1;
      v19 = 0;
      sub_27744140C(a1, 0x571BB01944827A3EuLL, "tuh", "0:0", 0xFFFFFFFFLL, &v19);
      result = 0;
      *(a1 + 202) = 1;
      *(a1 + 192) = 1;
      *(a1 + 112) = 0x402E000000000000;
      *(a1 + 87) = 257;
      *(a1 + 234) = 0;
      *(a1 + 236) = 1;
      *(a1 + 232) = 0;
      *(a1 + 135) = 512;
      *(a1 + 148) = 0;
      *(a1 + 496) = 258;
      *(a1 + 504) = 6;
      *(a1 + 500) = 1;
      *(a1 + 529) = 4;
      *(a1 + 72) = 0x100000000;
      *(a1 + 525) = 257;
      *(a1 + 533) = 16843009;
      *(a1 + 80) = 2;
      *(a1 + 84) = 2;
      *(a1 + 538) = 65793;
      *(a1 + 549) = 1;
      *(a1 + 213) = 1;
      *(a1 + 222) = 1;
      *(a1 + 548) = 1;
      *(a1 + 230) = 1;
      *(a1 + 237) = 7;
      *(a1 + 564) = 1;
      *(a1 + 233) = 0;
    }

    else
    {
      if (v13 != 2)
      {
        if (v13 != 3)
        {
          if (v13 == 33)
          {
            *(a1 + 96) = 33;
            v21 = 0;
            sub_27744140C(a1, 0x89E9C01960F4C582, "ref", "1:0:2:1", 0xFFFFFFFFLL, &v21);
            result = 0;
            *(a1 + 132) = 5;
            *(a1 + 136) = 3;
            *(a1 + 212) = 0;
            *(a1 + 234) = 1;
            *(a1 + 223) = 1;
            *(a1 + 239) = 1;
            *(a1 + 92) = 1;
            *(a1 + 90) = 1;
            return result;
          }

          goto LABEL_45;
        }

LABEL_28:
        result = 0;
        *(a1 + 96) = 3;
        *(a1 + 238) = 1;
        *(a1 + 525) = 256;
        *(a1 + 539) = 0;
        *(a1 + 549) = 0;
        *(a1 + 564) = 0;
        *(a1 + 533) = 0;
        return result;
      }

      result = 0;
      *(a1 + 96) = 2;
      *(a1 + 533) = 16843009;
      *(a1 + 496) = 3;
      *(a1 + 84) = 2;
      *(a1 + 538) = 1;
      *(a1 + 204) = 0;
      *(a1 + 232) = 0;
      *(a1 + 135) = 0;
      *(a1 + 504) = 6;
      *(a1 + 500) = 1;
      *(a1 + 529) = 0;
      *(a1 + 541) = 0;
      *(a1 + 238) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 3;
    }

    *(a1 + 220) = 0;
    return result;
  }

  if (v13 <= 35)
  {
    sub_2774840DC(a1);
    if (v13 == 34)
    {
      result = 0;
      *(a1 + 96) = 34;
      *(a1 + 552) = 1;
      *(a1 + 541) = 0;
      *(a1 + 544) = 2;
      *(a1 + 554) = 3;
      *(a1 + 556) = 0x40000000;
      *(a1 + 227) = 0;
    }

    else
    {
      v22 = 0;
      sub_27744140C(a1, 0x571BB01944827A3EuLL, "tuh", "0:0", 0xFFFFFFFFLL, &v22);
      result = 0;
      *(a1 + 72) = 0;
      *(a1 + 227) = 0;
      *(a1 + 554) = 3;
      *(a1 + 556) = 0x40000000;
      *(a1 + 544) = 5;
      *(a1 + 96) = 35;
    }

    return result;
  }

  switch(v13)
  {
    case '$':
      sub_2774840DC(a1);
      v23 = 0;
      sub_27744140C(a1, 0x571BB01944827A3EuLL, "tuh", "1:0", 0xFFFFFFFFLL, &v23);
      result = 0;
      *(a1 + 504) = 6;
      *(a1 + 508) = 6;
      *(a1 + 72) = 4;
      *(a1 + 548) = 1;
      *(a1 + 96) = 36;
      *(a1 + 132) = 5;
      *(a1 + 136) = 2;
      *(a1 + 223) = 0;
      *(a1 + 239) = 0;
      *(a1 + 90) = 0;
      *(a1 + 550) = 0;
      *(a1 + 528) = 0;
      *(a1 + 530) = 0;
      *(a1 + 532) = 0;
      *(a1 + 94) = 0;
      return result;
    case '%':
      *(a1 + 205) = 1;
      *(a1 + 96) = 34;
      v24 = 0;
      sub_27744140C(a1, 0x89E9C01960F4C582, "ref", "1:0:2:1", 0xFFFFFFFFLL, &v24);
      v25 = 0;
      sub_27744140C(a1, 0x571BB01944827A3EuLL, "tuh", "1:1", 0xFFFFFFFFLL, &v25);
      result = 0;
      *(a1 + 132) = 5;
      *(a1 + 234) = 1;
      *(a1 + 504) = 5;
      *(a1 + 212) = 771;
      *(a1 + 236) = 2;
      *(a1 + 89) = 1;
      *(a1 + 148) = 0;
      *(a1 + 92) = 1;
      *(a1 + 238) = 1;
      *(a1 + 527) = 0;
      *(a1 + 136) = 2;
      *(a1 + 224) = 1;
      return result;
    case '(':
      sub_277484038(a1);
      v20 = 0;
      sub_27744140C(a1, 0x89E9C01960F4C582, "ref", "0:0:0:0", 0xFFFFFFFFLL, &v20);
      result = 0;
      *(a1 + 96) = 40;
      *(a1 + 192) = 0;
      *(a1 + 69) = 1;
      *(a1 + 136) = 3;
      *(a1 + 224) = 0;
      *(a1 + 496) = 2;
      return result;
  }

LABEL_45:
  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Usage %s is un-supported\n", __str);
    syslog(27, "Usage %s is un-supported\n", __str);
  }

  return 4294954394;
}

uint64_t sub_277484038(uint64_t a1)
{
  sub_2774840DC(a1);
  *(a1 + 96) = 0;
  *(a1 + 192) = *(a1 + 188) != 0;
  *(a1 + 212) = 771;
  *(a1 + 94) = 0;
  *(a1 + 223) = 256;
  *(a1 + 239) = 0;
  *(a1 + 90) = 0;
  *(a1 + 136) = 2;
  *(a1 + 576) = 257;
  *(a1 + 176) = 0;
  v3 = 0;
  return sub_27744140C(a1, 0x571BB01944827A3EuLL, "tuh", "1:1", 0xFFFFFFFFLL, &v3);
}

double sub_2774840DC(uint64_t a1)
{
  v3 = 0;
  sub_27744140C(a1, 0x89E9C01960F4C582, "ref", "1:0:2:1", 0xFFFFFFFFLL, &v3);
  v4 = 0;
  sub_27744140C(a1, 0x571BB01944827A3EuLL, "tuh", "1:1", 0xFFFFFFFFLL, &v4);
  *(a1 + 132) = 5;
  *(a1 + 136) = 3;
  *(a1 + 212) = 0;
  *(a1 + 234) = 1;
  *(a1 + 236) = 2;
  *(a1 + 89) = 1;
  *(a1 + 148) = 0;
  *(a1 + 94) = 0;
  *(a1 + 496) = 33685764;
  *(a1 + 504) = 5;
  *(a1 + 508) = 5;
  v5 = 0;
  sub_27744140C(a1, 0x8A24307B54A0265uLL, "cu", "3:6", 0xFFFFFFFFLL, &v5);
  *(a1 + 542) = 1;
  *(a1 + 238) = 2;
  *(a1 + 205) = 1;
  *(a1 + 550) = 258;
  *&result = 17498368;
  *(a1 + 527) = 17498368;
  *(a1 + 532) = 1;
  *(a1 + 92) = 1;
  *(a1 + 136) = 2;
  *(a1 + 224) = 1;
  return result;
}

uint64_t sub_27748421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 7776);
  *(a1 + 7776) = 0;
  if (v6)
  {
    sub_277468854(v6);
  }

  if (a4)
  {
    operator new();
  }

  return 0;
}

void sub_2774845F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_2773FCCB4(&a54);
  MEMORY[0x277CAD300](&STACK[0x2F8]);
  _Unwind_Resume(a1);
}

uint64_t sub_277484654(uint64_t a1, int a2, int a3, char *__s1)
{
  v6 = *(a1 + 7776);
  *(a1 + 7776) = 0;
  if (v6)
  {
    sub_277468854(v6);
  }

  if (!__s1)
  {
    return 0;
  }

  result = strcmp(__s1, "flat");
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_2774847A0(uint64_t a1, int a2, int a3, char *a4)
{
  *(a1 + 464) = 0;
  if (!a4)
  {
    return 0;
  }

  if (sscanf(a4, "%u:%hu:%hu", a1 + 472, a1 + 476, a1 + 478) != 3)
  {
    return 4294954394;
  }

  result = 0;
  *(a1 + 464) = 1;
  return result;
}

uint64_t sub_27748481C(uint64_t a1, int a2, int a3, char *a4)
{
  *(a1 + 420) = 0;
  if (!a4)
  {
    return 0;
  }

  if (sscanf(a4, "%hu:%hu:%hu:%hu:%hu:%hu:%hu:%hu:%u:%u", a1 + 428, a1 + 434, a1 + 430, a1 + 436, a1 + 432, a1 + 438, a1 + 440, a1 + 442, a1 + 444, a1 + 448) != 10)
  {
    return 4294954394;
  }

  result = 0;
  *(a1 + 420) = 1;
  return result;
}

uint64_t sub_2774848C0(uint64_t a1, int a2, int a3, char *__s1)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 240);
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  *__s = 0u;
  v48 = 0u;
  if (!__s1)
  {
    return 0;
  }

  v6 = (a1 + 108 * v4 + 596);
  *(a1 + 592) = 1;
  v7 = strdup(__s1);
  v8 = 0;
  __stringp = v7;
  while (1)
  {
    v9 = strsep(&__stringp, ", \t");
    if (!v9)
    {
      break;
    }

    if (*v9)
    {
      __s[v8++] = v9;
      if (v8 == 57)
      {
        goto LABEL_8;
      }
    }
  }

  __s[v8] = 0;
LABEL_8:
  v45 = 0;
  while (v9)
  {
    if (*v9)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Too many parameters to ref-struct\n", 0x22uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Too many parameters to ref-struct\n");
      }

      goto LABEL_24;
    }

    v9 = strsep(&__stringp, ", \t");
  }

  v11 = __s[0];
  v10 = sub_2774852A4(__s[0], v6);
  if (v10)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid frame_idx_in_gop '%s'\n", v11);
      syslog(27, "Invalid frame_idx_in_gop '%s'\n", v11);
    }

    goto LABEL_16;
  }

  v14 = __s[1];
  if (!__s[1] || strlen(__s[1]) >= 2)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid frame_type '%s'\n", __s[1]);
      syslog(27, "Invalid frame_type '%s'\n", v14);
    }

LABEL_24:
    v12 = 0;
    v10 = 0;
    goto LABEL_25;
  }

  v6[1] = *__s[1];
  v16 = v48;
  v10 = sub_2774852A4(v48, v6 + 3);
  if (v10)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid poc '%s'\n", v16);
      syslog(27, "Invalid poc '%s'\n", v16);
    }

    goto LABEL_16;
  }

  v17 = *(&v48 + 1);
  v10 = sub_277485324(*(&v48 + 1), v6 + 4);
  if (v10)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid qp_offset '%s'\n", v17);
      syslog(27, "Invalid qp_offset '%s'\n", v17);
    }

    goto LABEL_16;
  }

  v18 = v49;
  v10 = sub_277485324(v49, v6 + 2);
  if (v10)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid hbf_layer_id '%s'\n", v18);
      syslog(27, "Invalid hbf_layer_id '%s'\n", v18);
    }

    goto LABEL_16;
  }

  v19 = *(&v49 + 1);
  v10 = sub_2774852A4(*(&v49 + 1), v6 + 5);
  if (v10 || v6[5] >= 0x11u)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid number_ref_all '%s'\n", v19);
      syslog(27, "Invalid number_ref_all '%s'\n", v19);
    }

LABEL_43:
    v12 = 0;
LABEL_25:
    v13 = 4294954394;
    if (!v7)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v20 = *&v50[0];
  v10 = sub_2774852A4(*&v50[0], v6 + 6);
  if (v10 || v6[6] > v6[5])
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid number_ref_active '%s'\n", v20);
      syslog(27, "Invalid number_ref_active '%s'\n", v20);
    }

    goto LABEL_43;
  }

  if (v6[5])
  {
    v21 = v6 + 8;
    v22 = v50 + 1;
    v23 = 7;
    do
    {
      v24 = *v22;
      v10 = sub_2774853A8(*v22, v21);
      if (v10)
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "Invalid ref.ref_frames[%d] '%s'\n", v23 - 7, v24);
          syslog(27, "Invalid ref.ref_frames[%d] '%s'\n", v23 - 7, v24);
        }

        goto LABEL_16;
      }

      ++v23;
      ++v22;
      ++v21;
    }

    while (v23 - 7 < v6[5]);
    if (!v6[5])
    {
      goto LABEL_58;
    }

    v25 = 0;
    while (1)
    {
      v26 = *v22;
      v10 = sub_2774852A4(*v22, &v6[v25 + 72]);
      if (v10)
      {
        break;
      }

      ++v25;
      ++v22;
      if (v25 >= v6[5])
      {
        LODWORD(v23) = v23 + v25;
        goto LABEL_58;
      }
    }

    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid ref.ref_used[%d] '%s'\n", v25, v26);
      syslog(27, "Invalid ref.ref_used[%d] '%s'\n", v25, v26);
    }

LABEL_16:
    v12 = 0;
    v13 = v10;
    if (!v7)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  LODWORD(v23) = 7;
LABEL_58:
  v27 = __s[v23];
  v10 = sub_27748542C(v27, &v45);
  v28 = v45;
  if (v10)
  {
    v29 = 1;
  }

  else
  {
    v29 = v45 >= 3;
  }

  if (v29)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid rps scheme '%s'\n", v27);
      syslog(27, "Invalid rps scheme '%s'\n", v27);
    }

    goto LABEL_43;
  }

  LODWORD(v30) = v23 + 1;
  v6[88] = v45 != 0;
  if (v28)
  {
    v31 = __s[v30];
    v10 = sub_277485324(v31, v6 + 89);
    if (v10)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Invalid delta_rps '%s'\n", v31);
        syslog(27, "Invalid delta_rps '%s'\n", v31);
      }

      goto LABEL_16;
    }

    v32 = v23;
    v33 = __s[(v23 + 2)];
    v10 = sub_2774852A4(v33, v6 + 90);
    if (v10 || v6[90] > 0x10u)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Invalid num_ref_predict '%s'\n", v33);
        syslog(27, "Invalid num_ref_predict '%s'\n", v33);
      }

      goto LABEL_43;
    }

    if (v6[90])
    {
      v34 = 0;
      v35 = v6 + 91;
      v30 = v32 + 3;
      while (1)
      {
        v36 = __s[v30];
        v10 = sub_2774852A4(v36, &v35[v34]);
        if (v10)
        {
          break;
        }

        if (v35[v34] >= 3u)
        {
          v10 = 0;
          break;
        }

        ++v34;
        ++v30;
        if (v34 >= v6[90])
        {
          goto LABEL_84;
        }
      }

      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Invalid ref.predict_flag[%d] '%s'\n", v34, v36);
        syslog(27, "Invalid ref.predict_flag[%d] '%s'\n", v34, v36);
      }

      goto LABEL_43;
    }

    LODWORD(v30) = v23 + 3;
  }

LABEL_84:
  v37 = __s[v30];
  v38 = dword_280B9A880;
  if (v37)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Trailing parameters in reference structure, starting with '%s'\n", __s[v30]);
      syslog(27, "Trailing parameters in reference structure, starting with '%s'\n", v37);
    }

    goto LABEL_24;
  }

  v39 = MEMORY[0x277D85E08];
  if (dword_280B9A880 >= 6)
  {
    fprintf(*MEMORY[0x277D85E08], "ref-struct: %d %c %d %d %d %d %d ", *v6, v6[1], v6[3], v6[4], v6[2], v6[5], v6[6]);
    v38 = dword_280B9A880;
  }

  v40 = v6[5];
  if (v6[5])
  {
    v41 = 0;
    do
    {
      if (v38 >= 6)
      {
        fprintf(*v39, " %d", *&v6[4 * v41 + 8]);
        v38 = dword_280B9A880;
        v40 = v6[5];
      }

      ++v41;
    }

    while (v41 < v40);
    if (v40)
    {
      for (i = 0; i < v40; ++i)
      {
        if (v38 >= 6)
        {
          fprintf(*v39, " %d", v6[i + 72]);
          v38 = dword_280B9A880;
          v40 = v6[5];
        }
      }
    }
  }

  if (v38 <= 5)
  {
    if ((v6[88] & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_104;
  }

  fprintf(*v39, " %d", v6[88]);
  v38 = dword_280B9A880;
  if (v6[88])
  {
    if (dword_280B9A880 >= 6)
    {
      fprintf(*v39, " %d %d", v6[89], v6[90]);
      v38 = dword_280B9A880;
    }

LABEL_104:
    v43 = v6[90];
    if (v6[90])
    {
      v44 = 0;
      do
      {
        if (v38 >= 6)
        {
          fprintf(*v39, " %d", v6[v44 + 91]);
          v38 = dword_280B9A880;
          v43 = v6[90];
        }

        ++v44;
      }

      while (v44 < v43);
    }
  }

  if (v38 >= 6)
  {
    fputc(10, *v39);
  }

LABEL_111:
  v10 = 0;
  ++*(a1 + 240);
  v13 = 4294954394;
  v12 = 1;
  if (v7)
  {
LABEL_26:
    free(v7);
  }

LABEL_27:
  if (v12)
  {
    return v10;
  }

  return v13;
}

void sub_27748523C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2774852A4(const char *a1, _BYTE *a2)
{
  __endptr = 0;
  if (!a1 || !*a1)
  {
    return 4294954394;
  }

  v3 = strtoimax(a1, &__endptr, 0);
  v4 = v3;
  if (!__endptr)
  {
    if (v3 <= 0xFF)
    {
LABEL_9:
      result = 0;
      *a2 = v4;
      return result;
    }

    return 4294954394;
  }

  result = 4294954394;
  if (!*__endptr && v4 <= 0xFF)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_277485324(const char *a1, _BYTE *a2)
{
  __endptr = 0;
  if (!a1 || !*a1)
  {
    return 4294954394;
  }

  v3 = strtoimax(a1, &__endptr, 0);
  v4 = v3;
  if (!__endptr)
  {
    if (v3 == v3)
    {
LABEL_9:
      result = 0;
      *a2 = v4;
      return result;
    }

    return 4294954394;
  }

  result = 4294954394;
  if (!*__endptr && (v4 - 128) >= 0xFFFFFFFFFFFFFF00)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2774853A8(const char *a1, _DWORD *a2)
{
  __endptr = 0;
  if (a1 && *a1)
  {
    v3 = strtoimax(a1, &__endptr, 0);
    v4 = v3;
    if (__endptr)
    {
      if (*__endptr)
      {
        v5 = 0;
      }

      else
      {
        v5 = (v3 - 0x80000000) >= 0xFFFFFFFF00000000;
      }

      if (!v5)
      {
        return 4294954394;
      }

LABEL_11:
      result = 0;
      *a2 = v4;
      return result;
    }

    if (v3 == v3)
    {
      goto LABEL_11;
    }
  }

  return 4294954394;
}

uint64_t sub_27748542C(const char *a1, _DWORD *a2)
{
  __endptr = 0;
  if (a1 && *a1)
  {
    v3 = strtoimax(a1, &__endptr, 0);
    v4 = v3;
    if (__endptr)
    {
      if (*__endptr)
      {
        v5 = 0;
      }

      else
      {
        v5 = HIDWORD(v3) == 0;
      }

      if (!v5)
      {
        return 4294954394;
      }

LABEL_11:
      result = 0;
      *a2 = v4;
      return result;
    }

    if (!HIDWORD(v3))
    {
      goto LABEL_11;
    }
  }

  return 4294954394;
}

uint64_t sub_2774854A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  *(a1 + 7512) = 0;
  *(a1 + 280) = 0;
  if (a4)
  {
    v10 = 0;
    if (*(a1 + 244) >= 1)
    {
      v5 = a4;
      v6 = 0;
      for (i = (a1 + 248); !sub_2774855A0(v5, i, &v10, 0) && (*v10 == 58 || v6 >= *(a1 + 244) - 1); ++i)
      {
        *(a1 + 7512) += *i;
        if (*i > *(a1 + 280))
        {
          *(a1 + 280) = *i;
        }

        ++v6;
        v5 += 2;
        if (v6 >= *(a1 + 244))
        {
          return 0;
        }
      }
    }

    return 4294954394;
  }

  else
  {
    result = 0;
    *(a1 + 252) = 0;
    v9 = (a1 + 252);
    *(v9 - 1) = 1;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x100000000;
  }

  return result;
}

uint64_t sub_2774855A0(const char *a1, _DWORD *a2, char **a3, int a4)
{
  *__error() = 0;
  v8 = strtol(a1, a3, 10);
  if (v8)
  {
    result = 4294954394;
    if (v8 < a4 || v8 > 0x7FFFFFFF)
    {
      return result;
    }

LABEL_7:
    result = 0;
    *a2 = v8;
    return result;
  }

  v10 = __error();
  result = 4294954394;
  if (a4 <= 0 && !*v10)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_277485634(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a2 != 0x81C3B0CF315BC925)
  {
    if (a2 != 0x8C49EF6ED9F28EA0)
    {
      return 4294954394;
    }

    v7 = 291;
    v8 = 290;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(a1 + v8) = 0;
    *(a1 + v7) = 0;
    goto LABEL_11;
  }

  v7 = 293;
  v8 = 292;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v12 = 0;
  if (sub_2774857B0(a4, (a1 + v8), &v12, 8, 14))
  {
    return 4294954394;
  }

  if (!*v12)
  {
    *(a1 + v7) = *(a1 + v8);
    goto LABEL_11;
  }

  if (*v12 != 58 || sub_2774857B0(a4, (a1 + v7), &v12, 8, 14))
  {
    return 4294954394;
  }

LABEL_11:
  if (a2 == 0x81C3B0CF315BC925)
  {
    return 0;
  }

  v9 = *(a1 + 290);
  v10 = *(a1 + 291);
  if (v9 == v10 && (*(a1 + 290) | 2) == 0xA)
  {
    return 0;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Bit depths %d/%d not supported; luma and chroma must match and be 8 or 10\n", v9, v10);
    syslog(27, "Bit depths %d/%d not supported; luma and chroma must match and be 8 or 10\n", *(a1 + 290), *(a1 + 291));
  }

  return 4294954386;
}

uint64_t sub_2774857B0(const char *a1, _BYTE *a2, char **a3, int a4, int a5)
{
  *__error() = 0;
  v10 = strtol(a1, a3, 10);
  if (v10)
  {
    result = 4294954394;
    if (v10 < a4)
    {
      return result;
    }

    goto LABEL_6;
  }

  v12 = __error();
  result = 4294954394;
  if (a4 <= 0 && !*v12)
  {
LABEL_6:
    if (v10 <= a5)
    {
      result = 0;
      *a2 = v10;
    }
  }

  return result;
}

uint64_t sub_277485850(_BYTE *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a4)
  {
    v6 = 0;
    if (sub_2774857B0(a4, a1 + 168, &v6, 0, 127) || *v6 != 58 || sub_2774857B0(v6 + 1, a1 + 169, &v6, 0, 127) || *v6 != 58 || sub_2774857B0(v6 + 1, a1 + 170, &v6, 0, 127) || *v6 != 58 || sub_2774857B0(v6 + 1, a1 + 171, &v6, 0, 127) || *v6)
    {
      return 4294954394;
    }
  }

  else
  {
    *(a1 + 42) = 16842753;
  }

  return 0;
}

uint64_t sub_277485944(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (!a4)
  {
    return 4294954394;
  }

  v11 = 0;
  v12 = 0;
  if (sub_2774855A0(a4, &v12 + 1, &v11, 0x80000000))
  {
    return 4294954394;
  }

  v7 = *v11;
  if (v7 == 47)
  {
    if (sub_2774855A0(v11 + 1, &v12, &v11, 0x80000000) || *v11)
    {
      return 4294954394;
    }

    v9 = v12;
    v10 = HIDWORD(v12);
    *(a1 + 568) = v12;
    v8 = v10 / v9;
  }

  else if (v7 == 46)
  {
    *__error() = 0;
    v8 = strtod(a4, 0);
    if (*__error() || v8 < 2.22507386e-308 || v8 > 1.79769313e308)
    {
      return 4294954394;
    }
  }

  else
  {
    if (*v11)
    {
      return 4294954394;
    }

    v8 = SHIDWORD(v12);
  }

  result = 0;
  *(a1 + 112) = v8;
  return result;
}

uint64_t sub_277485A5C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (a4)
  {
    v6 = 0;
    if (sub_277485AE0(a4, (a1 + 106), &v6) || *v6 != 120 || sub_277485AE0(v6 + 1, (a1 + 108), &v6) || *v6)
    {
      return 4294954394;
    }
  }

  else
  {
    *(a1 + 106) = 0;
  }

  return 0;
}

uint64_t sub_277485AE0(const char *a1, _WORD *a2, char **a3)
{
  *__error() = 0;
  v6 = strtol(a1, a3, 10);
  if (v6)
  {
    v7 = v6;
    if ((v6 - 0x8000) >= 0xFFFFFFFFFFFF8001)
    {
      result = 0;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __error();
  }

  return 4294954394;
}

uint64_t sub_277485B54(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v13 = 0;
  if (a4)
  {
    v14 = 0;
    if (sub_2774855A0(a4, &v13 + 1, &v14, 0x80000000) || *v14 != 58 || sub_2774855A0(v14 + 1, &v13, &v14, 0x80000000) || *v14)
    {
      return 4294954394;
    }
  }

  result = 0;
  if (a2 <= 0x8C84307B56AD1A1)
  {
    if (a2 == 0x3DC4253E192FDEDLL)
    {
      result = 0;
      *(a1 + 452) = a4 != 0;
      v12 = v13;
      *(a1 + 460) = WORD2(v13);
      *(a1 + 462) = v12;
    }

    else if (a2 == 0x8A24307B54A0265)
    {
      result = 0;
      v9 = v13;
      *(a1 + 177) = BYTE4(v13);
      *(a1 + 178) = v9;
    }
  }

  else
  {
    switch(a2)
    {
      case 0x8C84307B56AD1A2:
        result = 0;
        v10 = v13;
        *(a1 + 179) = BYTE4(v13);
        *(a1 + 180) = v10;
        break;
      case 0x4179B3C137C3CEB0:
        result = 0;
        v11 = v13;
        *(a1 + 412) = HIDWORD(v13);
        *(a1 + 416) = v11;
        break;
      case 0x571BB01944827A3ELL:
        result = 0;
        v8 = v13;
        *(a1 + 181) = BYTE4(v13);
        *(a1 + 182) = v8;
        break;
    }
  }

  return result;
}

void *sub_277485CEC(void *result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < a4)
  {
    v7 = a3;
    v9 = *(a2 + 416);
    v10 = (a6 + a3 * a5 - 5);
    v11 = (*(a2 + 400) + ((v9 * (a3 - 3) - 8) << *(a2 + 531)));
    v12 = -3 - result;
    v13 = result - 2;
    v14 = result + 7;
    v15.i64[0] = 0xA000A000A000ALL;
    v15.i64[1] = 0xA000A000A000ALL;
    v16.i64[0] = 0xA000A000A000ALL;
    v16.i64[1] = 0xA000A000A000ALL;
    do
    {
      v17 = (v11 + v9);
      if (*(a2 + 520) < -7)
      {
        LODWORD(v18) = 0;
      }

      else
      {
        v18 = 0;
        v19 = vaddq_s16(vmlaq_s16(vnegq_s16(vaddl_u8(*(v11 + 7 * v9), *v11)), vaddl_u8(*(v11 + 5 * v9), *(v11 + 2 * v9)), v15), vshlq_n_s16(vaddq_s16(vaddl_u8(*(v11 + 6 * v9), *v17), vmlal_u8(vmull_u8(*(v11 + 4 * v9), 0xA0A0A0A0A0A0A0ALL), *(v11 + 3 * v9), 0xA0A0A0A0A0A0A0ALL)), 2uLL));
        do
        {
          v20 = v18;
          v18 += 8;
          v21 = (&v11[v18 / 8] + v9);
          v22 = *v21;
          v23 = (v21 + v9);
          v24 = vaddq_s16(vmlaq_s16(vnegq_s16(vaddl_u8(*(v23 + v9 + v9 + v9 + v9 + v9), v11[v18 / 8])), vaddl_u8(*(v23 + v9 + v9 + v9), *v23), v15), vshlq_n_s16(vaddq_s16(vaddl_u8(*(v23 + v9 + v9 + v9 + v9), v22), vmlal_u8(vmull_u8(*(v23 + v9 + v9), 0xA0A0A0A0A0A0A0ALL), *(v23 + v9), 0xA0A0A0A0A0A0A0ALL)), 2uLL));
          v25 = vextq_s8(v19, v24, 2uLL);
          v26 = vextq_s8(v19, v24, 4uLL);
          v27 = vextq_s8(v19, v24, 6uLL);
          v28 = vextq_s8(v19, v24, 8uLL);
          v29 = vextq_s8(v19, v24, 0xAuLL);
          v30 = vextq_s8(v19, v24, 0xCuLL);
          v31 = vextq_s8(v19, v24, 0xEuLL);
          *&v10[v20] = vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vaddq_s32(vsubq_s32(vmlal_s16(vmull_s16(*v29.i8, 0xA000A000A000ALL), *v26.i8, 0xA000A000A000ALL), vaddl_s16(*v31.i8, *v19.i8)), vshlq_n_s32(vaddq_s32(vaddl_s16(*v30.i8, *v25.i8), vmlal_s16(vmull_s16(*v28.i8, 0xA000A000A000ALL), *v27.i8, 0xA000A000A000ALL)), 2uLL)), 6uLL), vaddq_s32(vsubq_s32(vmlal_high_s16(vmull_high_s16(v29, v15), v26, v15), vaddl_high_s16(v31, v19)), vshlq_n_s32(vaddq_s32(vaddl_high_s16(v30, v25), vmlal_high_s16(vmull_high_s16(v28, v16), v27, v16)), 2uLL)), 6uLL), 6uLL);
          v19 = v24;
        }

        while (v20 < *(a2 + 520));
      }

      memset(&v10[v12 + 5], *v10, v13);
      result = memset(&v10[v18], v10[v18 - 1], v14 - v18 + *(a2 + 520));
      ++v7;
      v10 += a5;
      v11 = v17;
      v15.i64[0] = 0xA000A000A000ALL;
      v15.i64[1] = 0xA000A000A000ALL;
      v16.i64[0] = 0xA000A000A000ALL;
      v16.i64[1] = 0xA000A000A000ALL;
    }

    while (v7 != a4);
  }

  return result;
}

void *sub_277485FA4(void *result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < a4)
  {
    v7 = a3;
    v9 = *(a2 + 416);
    v10 = (a6 + a3 * a5);
    v11 = *(a2 + 400) + ((v9 * (a3 - 3)) << *(a2 + 531));
    v12 = result + 3;
    v13 = result + 2;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    do
    {
      if (*(a2 + 520) < 1)
      {
        LODWORD(v15) = 0;
      }

      else
      {
        v15 = 0;
        do
        {
          v16 = (v11 + v15 + v9);
          v17 = *v16;
          v18 = (v16 + v9);
          v19 = *v18;
          v20 = (v18 + v9);
          *&v10[v15] = vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vnegq_s16(vaddl_u8(*(v20 + v9 + v9 + v9 + v9), *(v11 + v15))), vaddl_u8(*(v20 + v9 + v9), v19), v14), vshlq_n_s16(vaddq_s16(vaddl_u8(*(v20 + v9 + v9 + v9), v17), vmlal_u8(vmull_u8(*(v20 + v9), 0xA0A0A0A0A0A0A0ALL), *v20, 0xA0A0A0A0A0A0A0ALL)), 2uLL)), 6uLL);
          v15 += 8;
        }

        while (v15 < *(a2 + 520));
      }

      memset(&v10[-v12], *v10, v12);
      result = memset(&v10[v15], v10[v15 - 1], v13 - v15 + *(a2 + 520));
      ++v7;
      v11 += v9;
      v10 += a5;
      v14.i64[0] = 0xA000A000A000ALL;
      v14.i64[1] = 0xA000A000A000ALL;
    }

    while (v7 != a4);
  }

  return result;
}

void *sub_277486130(void *result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < a4)
  {
    v7 = a3;
    v9 = *(a2 + 416);
    v10 = (a6 + a3 * a5 - 5);
    v11 = (*(a2 + 400) + ((v9 * a3 - 8) << *(a2 + 531)));
    v12 = -3 - result;
    v13 = result - 2;
    v14 = result + 7;
    v15.i64[0] = 0xA000A000A000ALL;
    v15.i64[1] = 0xA000A000A000ALL;
    do
    {
      if (*(a2 + 520) < -7)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = 0;
        v17 = *v11;
        do
        {
          v18 = v16;
          v19 = v11[v16 / 8 + 1];
          *&v10[v16] = vqrshrun_n_s16(vaddq_s16(vmlaq_s16(vnegq_s16(vaddl_u8(vext_s8(v17, v19, 7uLL), v17)), vaddl_u8(vext_s8(v17, v19, 5uLL), vext_s8(v17, v19, 2uLL)), v15), vshlq_n_s16(vaddq_s16(vaddl_u8(vext_s8(v17, v19, 6uLL), vext_s8(v17, v19, 1uLL)), vmlal_u8(vmull_u8(vext_s8(v17, v19, 4uLL), 0xA0A0A0A0A0A0A0ALL), vext_s8(v17, v19, 3uLL), 0xA0A0A0A0A0A0A0ALL)), 2uLL)), 6uLL);
          v16 += 8;
          v17 = v19;
        }

        while (v18 < *(a2 + 520));
      }

      memset(&v10[v12 + 5], *v10, v13);
      result = memset(&v10[v16], v10[v16 - 1], v14 - v16 + *(a2 + 520));
      ++v7;
      v11 = (v11 + v9);
      v10 += a5;
      v15.i64[0] = 0xA000A000A000ALL;
      v15.i64[1] = 0xA000A000A000ALL;
    }

    while (v7 != a4);
  }

  return result;
}

uint64_t *sub_2774862B8(uint64_t *result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < a4)
  {
    v6 = *(a2 + 416);
    v7 = *(a2 + 520);
    v8 = a3 * a5;
    v9 = a6 + 2 * v8;
    v10 = (v9 - 10);
    v11 = 2 * v6;
    v12 = result - 2;
    v13 = result + v7 + 7;
    v14 = vdupq_n_s64(result - 2 - 1);
    v15 = 2 * a5;
    v16 = *(a2 + 400) + ((v6 * a3 - 8) << *(a2 + 531)) - 6 * v6;
    v17 = a6 - 2 * result + 2 * v8 + 2;
    v18.i64[0] = 0xA000A000A000ALL;
    v18.i64[1] = 0xA000A000A000ALL;
    v19.i64[0] = 0x28002800280028;
    v19.i64[1] = 0x28002800280028;
    v20.i64[0] = 0xFC00FC00FC00FC00;
    v20.i64[1] = 0xFC00FC00FC00FC00;
    result = &qword_27750D000;
    do
    {
      if (v7 < -7)
      {
        v86 = 0;
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v21 = 0;
        v22 = -8;
        do
        {
          v23 = *(v16 + v21);
          v24 = *(v16 + v21 + 16);
          v25 = vextq_s8(v23, v24, 2uLL);
          v26 = vextq_s8(v23, v24, 4uLL);
          v27 = vextq_s8(v23, v24, 6uLL);
          v28 = vextq_s8(v23, v24, 8uLL);
          v29 = v22;
          v30 = vextq_s8(v23, v24, 0xAuLL);
          v31 = vextq_s8(v23, v24, 0xCuLL);
          v32 = vaddq_s16(vextq_s8(v23, v24, 0xEuLL), v23);
          v33 = vaddq_s16(v31, v25);
          v34 = vaddq_s16(v30, v26);
          v35 = vaddq_s16(v28, v27);
          v36 = vmlaq_s16(vshlq_n_s16(v33, 2uLL), v34, v18);
          v37 = vaddw_s16(vsubw_s16(vmull_s16(*v35.i8, 0x28002800280028), *v32.i8), *v36.i8);
          v38 = vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v35, v19), v32), v36);
          *v36.i8 = vqshrn_n_s32(v37, 2uLL);
          v39 = (v16 + v21 + v11);
          v40 = v39[1];
          v41 = vaddq_s16(vextq_s8(*v39, v40, 0xEuLL), *v39);
          v42 = vaddq_s16(vextq_s8(*v39, v40, 8uLL), vextq_s8(*v39, v40, 6uLL));
          v43 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vextq_s8(*v39, v40, 0xCuLL), vextq_s8(*v39, v40, 2uLL)), 2uLL), vaddq_s16(vextq_s8(*v39, v40, 0xAuLL), vextq_s8(*v39, v40, 4uLL)), v18);
          v44 = vaddw_s16(vsubw_s16(vmull_s16(*v42.i8, 0x28002800280028), *v41.i8), *v43.i8);
          v45 = vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v42, v19), v41), v43);
          *v41.i8 = vqshrn_n_s32(v44, 2uLL);
          v46 = (v39 + v11);
          v47 = v46[1];
          v48 = vaddq_s16(vextq_s8(*v46, v47, 0xEuLL), *v46);
          v49 = vaddq_s16(vextq_s8(*v46, v47, 8uLL), vextq_s8(*v46, v47, 6uLL));
          v50 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vextq_s8(*v46, v47, 0xCuLL), vextq_s8(*v46, v47, 2uLL)), 2uLL), vaddq_s16(vextq_s8(*v46, v47, 0xAuLL), vextq_s8(*v46, v47, 4uLL)), v18);
          v51 = vaddw_s16(vsubw_s16(vmull_s16(*v49.i8, 0x28002800280028), *v48.i8), *v50.i8);
          v52 = vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v49, v19), v48), v50);
          *v50.i8 = vqshrn_n_s32(v51, 2uLL);
          v53 = (v46 + v11);
          v54 = v53[1];
          v55 = vaddq_s16(vextq_s8(*v53, v54, 0xEuLL), *v53);
          v56 = vaddq_s16(vextq_s8(*v53, v54, 8uLL), vextq_s8(*v53, v54, 6uLL));
          v57 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vextq_s8(*v53, v54, 0xCuLL), vextq_s8(*v53, v54, 2uLL)), 2uLL), vaddq_s16(vextq_s8(*v53, v54, 0xAuLL), vextq_s8(*v53, v54, 4uLL)), v18);
          v58 = vaddw_s16(vsubw_s16(vmull_s16(*v56.i8, 0x28002800280028), *v55.i8), *v57.i8);
          v59 = vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v56, v19), v55), v57);
          *v57.i8 = vqshrn_n_s32(v58, 2uLL);
          v60 = (v53 + v11);
          v61 = v60[1];
          v62 = vaddq_s16(vextq_s8(*v60, v61, 0xEuLL), *v60);
          v63 = vaddq_s16(vextq_s8(*v60, v61, 8uLL), vextq_s8(*v60, v61, 6uLL));
          v64 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vextq_s8(*v60, v61, 0xCuLL), vextq_s8(*v60, v61, 2uLL)), 2uLL), vaddq_s16(vextq_s8(*v60, v61, 0xAuLL), vextq_s8(*v60, v61, 4uLL)), v18);
          v65 = vaddw_s16(vsubw_s16(vmull_s16(*v63.i8, 0x28002800280028), *v62.i8), *v64.i8);
          v66 = vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v63, v19), v62), v64);
          *v64.i8 = vqshrn_n_s32(v65, 2uLL);
          v67 = (v60 + v11);
          v68 = v67[1];
          v69 = vaddq_s16(vextq_s8(*v67, v68, 0xEuLL), *v67);
          v70 = vaddq_s16(vextq_s8(*v67, v68, 8uLL), vextq_s8(*v67, v68, 6uLL));
          v71 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vextq_s8(*v67, v68, 0xCuLL), vextq_s8(*v67, v68, 2uLL)), 2uLL), vaddq_s16(vextq_s8(*v67, v68, 0xAuLL), vextq_s8(*v67, v68, 4uLL)), v18);
          v72 = vaddw_s16(vsubw_s16(vmull_s16(*v70.i8, 0x28002800280028), *v69.i8), *v71.i8);
          v73 = vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v70, v19), v69), v71);
          *v71.i8 = vqshrn_n_s32(v72, 2uLL);
          v74 = (v67 + v11);
          v75 = v74[1];
          v76 = vaddq_s16(vextq_s8(*v74, v75, 0xEuLL), *v74);
          v77 = vaddq_s16(vextq_s8(*v74, v75, 8uLL), vextq_s8(*v74, v75, 6uLL));
          v78 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vextq_s8(*v74, v75, 0xCuLL), vextq_s8(*v74, v75, 2uLL)), 2uLL), vaddq_s16(vextq_s8(*v74, v75, 0xAuLL), vextq_s8(*v74, v75, 4uLL)), v18);
          v79 = vaddw_s16(vsubw_s16(vmull_s16(*v77.i8, 0x28002800280028), *v76.i8), *v78.i8);
          v80 = vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v77, v19), v76), v78);
          *v78.i8 = vqshrn_n_s32(v79, 2uLL);
          v81 = (v74 + v11);
          v82 = v81[1];
          v83 = vaddq_s16(vextq_s8(*v81, v82, 0xEuLL), *v81);
          v84 = vaddq_s16(vextq_s8(*v81, v82, 8uLL), vextq_s8(*v81, v82, 6uLL));
          v85 = vmlaq_s16(vshlq_n_s16(vaddq_s16(vextq_s8(*v81, v82, 0xCuLL), vextq_s8(*v81, v82, 2uLL)), 2uLL), vaddq_s16(vextq_s8(*v81, v82, 0xAuLL), vextq_s8(*v81, v82, 4uLL)), v18);
          *&v10[v21 / 2] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vsubw_s16(vaddq_s32(vsubw_s16(vmlal_s16(vmull_s16(*v64.i8, 0x28002800280028), *v57.i8, 0x28002800280028), *v36.i8), vaddq_s32(vmlal_s16(vmull_s16(*v71.i8, 0xA000A000A000ALL), *v50.i8, 0xA000A000A000ALL), vshlq_n_s32(vaddl_s16(*v78.i8, *v41.i8), 2uLL))), vqshrn_n_s32(vaddw_s16(vsubw_s16(vmull_s16(*v84.i8, 0x28002800280028), *v83.i8), *v85.i8), 2uLL)), 0xAuLL), vsubw_s16(vaddq_s32(vsubw_s16(vmlal_s16(vmull_s16(vqshrn_n_s32(v66, 2uLL), 0x28002800280028), vqshrn_n_s32(v59, 2uLL), 0x28002800280028), vqshrn_n_s32(v38, 2uLL)), vaddq_s32(vmlal_s16(vmull_s16(vqshrn_n_s32(v73, 2uLL), 0xA000A000A000ALL), vqshrn_n_s32(v52, 2uLL), 0xA000A000A000ALL), vshlq_n_s32(vaddl_s16(vqshrn_n_s32(v80, 2uLL), vqshrn_n_s32(v45, 2uLL)), 2uLL))), vqshrn_n_s32(vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v84, v19), v83), v85), 2uLL)), 0xAuLL), v20);
          v22 = v29 + 8;
          v21 += 16;
        }

        while (v29 + 8 < v7);
        v86 = v29 + 16;
        if (v12)
        {
LABEL_9:
          v87 = *v10;
          v88 = xmmword_27750D2F0;
          v89 = xmmword_27750D300;
          v90 = xmmword_27750D310;
          v91 = v17;
          v92 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
          v93 = xmmword_27750D320;
          do
          {
            v94 = vmovn_s64(vcgeq_u64(v14, v93));
            if (vuzp1_s8(vuzp1_s16(v94, *v14.i8), *v14.i8).u8[0])
            {
              *(v91 - 4) = v87;
            }

            if (vuzp1_s8(vuzp1_s16(v94, *&v14), *&v14).i8[1])
            {
              *(v91 - 3) = v87;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v90))), *&v14).i8[2])
            {
              *(v91 - 2) = v87;
              *(v91 - 1) = v87;
            }

            v95 = vmovn_s64(vcgeq_u64(v14, v89));
            if (vuzp1_s8(*&v14, vuzp1_s16(v95, *&v14)).i32[1])
            {
              *v91 = v87;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v95, *&v14)).i8[5])
            {
              v91[1] = v87;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v88)))).i8[6])
            {
              v91[2] = v87;
              v91[3] = v87;
            }

            v96 = vdupq_n_s64(8uLL);
            v89 = vaddq_s64(v89, v96);
            v90 = vaddq_s64(v90, v96);
            v93 = vaddq_s64(v93, v96);
            v88 = vaddq_s64(v88, v96);
            v91 += 8;
            v92 -= 8;
          }

          while (v92);
        }
      }

      v97 = v13 - v86;
      if (v13 != v86)
      {
        v98 = v10[v86 - 1];
        v99 = v86;
        v100 = vdupq_n_s64(v97 - 1);
        v101 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
        v102 = xmmword_27750D2F0;
        v103 = xmmword_27750D300;
        v104 = xmmword_27750D310;
        v105 = xmmword_27750D320;
        v106 = (v9 + 2 * v99);
        do
        {
          v107 = vmovn_s64(vcgeq_u64(v100, v105));
          if (vuzp1_s8(vuzp1_s16(v107, *v14.i8), *v14.i8).u8[0])
          {
            *(v106 - 5) = v98;
          }

          if (vuzp1_s8(vuzp1_s16(v107, *&v14), *&v14).i8[1])
          {
            *(v106 - 4) = v98;
          }

          if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v100, *&v104))), *&v14).i8[2])
          {
            *(v106 - 3) = v98;
            *(v106 - 2) = v98;
          }

          v108 = vmovn_s64(vcgeq_u64(v100, v103));
          if (vuzp1_s8(*&v14, vuzp1_s16(v108, *&v14)).i32[1])
          {
            *(v106 - 1) = v98;
          }

          if (vuzp1_s8(*&v14, vuzp1_s16(v108, *&v14)).i8[5])
          {
            *v106 = v98;
          }

          if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v100, *&v102)))).i8[6])
          {
            v106[1] = v98;
            v106[2] = v98;
          }

          v109 = vdupq_n_s64(8uLL);
          v103 = vaddq_s64(v103, v109);
          v104 = vaddq_s64(v104, v109);
          v105 = vaddq_s64(v105, v109);
          v102 = vaddq_s64(v102, v109);
          v106 += 8;
          v101 -= 8;
        }

        while (v101);
      }

      ++a3;
      v10 = (v10 + v15);
      v16 += v11;
      v17 += v15;
      v9 += v15;
    }

    while (a3 != a4);
  }

  return result;
}

uint64_t sub_277486924(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < a4)
  {
    v6 = *(a2 + 416);
    v7 = *(a2 + 520);
    v8 = a3 * a5;
    v9 = (a6 + 2 * v8);
    v10 = 2 * v8;
    v11 = *(a2 + 400) + ((v6 * (a3 - 3)) << *(a2 + 531));
    v12 = result + 3;
    v13 = result + 2;
    v14 = vdupq_n_s64(result + 3 - 1);
    v15 = vdupq_n_s64(result + 2 - 1);
    v16 = 2 * a5;
    v17 = 2 * v6;
    result = v10 - 2 * (result + 3) + a6 + 8;
    v18 = v10 + 2 * v7 + a6 + 8;
    v19.i64[0] = 0xA000A000A000ALL;
    v19.i64[1] = 0xA000A000A000ALL;
    v20.i64[0] = 0x28002800280028;
    v20.i64[1] = 0x28002800280028;
    v21.i64[0] = 0xFC00FC00FC00FC00;
    v21.i64[1] = 0xFC00FC00FC00FC00;
    v22 = vdupq_n_s64(8uLL);
    do
    {
      if (v7 >= 1)
      {
        v23 = 0;
        for (i = 0; i < v7; i += 8)
        {
          v25 = (v11 + v23 * 2 + v17);
          v26 = *v25;
          v27 = (v25 + v17);
          v28 = *v27;
          v29 = (v27 + v17);
          v30 = *v29;
          v31 = (v29 + v17);
          v32 = *v31;
          v33 = (v31 + v17);
          v34 = *v33;
          v35 = (v33 + v17);
          v36 = vaddq_s16(*(v35 + v17), *(v11 + v23 * 2));
          v37 = vaddq_s16(v32, v30);
          v38 = vmlaq_s16(vshlq_n_s16(vaddq_s16(*v35, v26), 2uLL), vaddq_s16(v34, v28), v19);
          *&v9[v23] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vsubw_s16(vmull_s16(*v37.i8, 0x28002800280028), *v36.i8), *v38.i8), 6uLL), vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v37, v20), v36), v38), 6uLL), v21);
          v23 += 8;
        }
      }

      if (!v12)
      {
        goto LABEL_22;
      }

      v39 = result;
      v40 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = *v9;
      v42 = xmmword_27750D320;
      v43 = xmmword_27750D310;
      v44 = xmmword_27750D300;
      v45 = xmmword_27750D2F0;
      do
      {
        v46 = vmovn_s64(vcgeq_u64(v14, v42));
        if (vuzp1_s8(vuzp1_s16(v46, *v14.i8), *v14.i8).u8[0])
        {
          *(v39 - 4) = v41;
        }

        if (vuzp1_s8(vuzp1_s16(v46, *&v14), *&v14).i8[1])
        {
          *(v39 - 3) = v41;
        }

        if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v43))), *&v14).i8[2])
        {
          *(v39 - 2) = v41;
          *(v39 - 1) = v41;
        }

        v47 = vmovn_s64(vcgeq_u64(v14, v44));
        if (vuzp1_s8(*&v14, vuzp1_s16(v47, *&v14)).i32[1])
        {
          *v39 = v41;
        }

        if (vuzp1_s8(*&v14, vuzp1_s16(v47, *&v14)).i8[5])
        {
          v39[1] = v41;
        }

        if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v45)))).i8[6])
        {
          v39[2] = v41;
          v39[3] = v41;
        }

        v48 = vdupq_n_s64(8uLL);
        v44 = vaddq_s64(v44, v48);
        v43 = vaddq_s64(v43, v48);
        v42 = vaddq_s64(v42, v48);
        v45 = vaddq_s64(v45, v48);
        v39 += 8;
        v40 -= 8;
      }

      while (v40);
      if (v13)
      {
LABEL_22:
        v49 = v9[v7 - 1];
        v50 = v18;
        v51 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
        v52 = xmmword_27750D320;
        v53 = xmmword_27750D310;
        v54 = xmmword_27750D300;
        v55 = xmmword_27750D2F0;
        do
        {
          v56 = vmovn_s64(vcgeq_u64(v15, v52));
          if (vuzp1_s8(vuzp1_s16(v56, *v14.i8), *v14.i8).u8[0])
          {
            *(v50 - 4) = v49;
          }

          if (vuzp1_s8(vuzp1_s16(v56, *&v14), *&v14).i8[1])
          {
            *(v50 - 3) = v49;
          }

          if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v15, *&v53))), *&v14).i8[2])
          {
            *(v50 - 2) = v49;
            *(v50 - 1) = v49;
          }

          v57 = vmovn_s64(vcgeq_u64(v15, v54));
          if (vuzp1_s8(*&v14, vuzp1_s16(v57, *&v14)).i32[1])
          {
            *v50 = v49;
          }

          if (vuzp1_s8(*&v14, vuzp1_s16(v57, *&v14)).i8[5])
          {
            v50[1] = v49;
          }

          if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v15, *&v55)))).i8[6])
          {
            v50[2] = v49;
            v50[3] = v49;
          }

          v54 = vaddq_s64(v54, v22);
          v53 = vaddq_s64(v53, v22);
          v52 = vaddq_s64(v52, v22);
          v50 += 8;
          v55 = vaddq_s64(v55, v22);
          v51 -= 8;
        }

        while (v51);
      }

      ++a3;
      v9 = (v9 + v16);
      v11 += v17;
      result += v16;
      v18 += v16;
    }

    while (a3 != a4);
  }

  return result;
}

uint64_t sub_277486CAC(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < a4)
  {
    v6 = *(a2 + 416);
    v7 = *(a2 + 520);
    v8 = a3 * a5;
    v9 = a6 + 2 * v8;
    v10 = (v9 - 10);
    v11 = (*(a2 + 400) + ((v6 * a3 - 8) << *(a2 + 531)));
    v12 = result - 2;
    v13 = result + v7 + 7;
    v14 = vdupq_n_s64(result - 2 - 1);
    v15 = 2 * a5;
    v16 = 2 * v6;
    v17 = a6 - 2 * result + 2 * v8 + 2;
    v18.i64[0] = 0xA000A000A000ALL;
    v18.i64[1] = 0xA000A000A000ALL;
    v19.i64[0] = 0x28002800280028;
    v19.i64[1] = 0x28002800280028;
    v20.i64[0] = 0xFC00FC00FC00FC00;
    v20.i64[1] = 0xFC00FC00FC00FC00;
    result = 8;
    v21 = vdupq_n_s64(8uLL);
    do
    {
      if (v7 < -7)
      {
        v36 = 0;
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v22 = 0;
        v23 = *v11;
        for (i = -8; i < v7; i += 8)
        {
          v25 = i;
          v26 = v11[v22 / 8 + 1];
          v27 = vextq_s8(v23, v26, 2uLL);
          v28 = vextq_s8(v23, v26, 4uLL);
          v29 = vextq_s8(v23, v26, 6uLL);
          v30 = vextq_s8(v23, v26, 8uLL);
          v31 = vextq_s8(v23, v26, 0xAuLL);
          v32 = vextq_s8(v23, v26, 0xCuLL);
          v33 = vaddq_s16(vextq_s8(v23, v26, 0xEuLL), v23);
          v34 = vaddq_s16(v30, v29);
          v35 = vmlaq_s16(vshlq_n_s16(vaddq_s16(v32, v27), 2uLL), vaddq_s16(v31, v28), v18);
          *&v10[v22] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vsubw_s16(vmull_s16(*v34.i8, 0x28002800280028), *v33.i8), *v35.i8), 6uLL), vaddw_high_s16(vsubw_high_s16(vmull_high_s16(v34, v19), v33), v35), 6uLL), v20);
          v22 += 8;
          v23 = v26;
        }

        v36 = v25 + 16;
        if (v12)
        {
LABEL_9:
          v37 = v17;
          v38 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
          v39 = *v10;
          v40 = xmmword_27750D320;
          v41 = xmmword_27750D310;
          v42 = xmmword_27750D300;
          v43 = xmmword_27750D2F0;
          do
          {
            v44 = vmovn_s64(vcgeq_u64(v14, v40));
            if (vuzp1_s8(vuzp1_s16(v44, *v14.i8), *v14.i8).u8[0])
            {
              *(v37 - 4) = v39;
            }

            if (vuzp1_s8(vuzp1_s16(v44, *&v14), *&v14).i8[1])
            {
              *(v37 - 3) = v39;
            }

            if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v41))), *&v14).i8[2])
            {
              *(v37 - 2) = v39;
              *(v37 - 1) = v39;
            }

            v45 = vmovn_s64(vcgeq_u64(v14, v42));
            if (vuzp1_s8(*&v14, vuzp1_s16(v45, *&v14)).i32[1])
            {
              *v37 = v39;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(v45, *&v14)).i8[5])
            {
              v37[1] = v39;
            }

            if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v43)))).i8[6])
            {
              v37[2] = v39;
              v37[3] = v39;
            }

            v46 = vdupq_n_s64(8uLL);
            v42 = vaddq_s64(v42, v46);
            v41 = vaddq_s64(v41, v46);
            v40 = vaddq_s64(v40, v46);
            v43 = vaddq_s64(v43, v46);
            v37 += 8;
            v38 -= 8;
          }

          while (v38);
        }
      }

      v47 = v13 - v36;
      if (v13 != v36)
      {
        v48 = v10[v36 - 1];
        v49 = v36;
        v50 = vdupq_n_s64(v47 - 1);
        v51 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
        v52 = xmmword_27750D320;
        v53 = xmmword_27750D310;
        v54 = xmmword_27750D300;
        v55 = xmmword_27750D2F0;
        v56 = (v9 + 2 * v49);
        do
        {
          v57 = vmovn_s64(vcgeq_u64(v50, v52));
          if (vuzp1_s8(vuzp1_s16(v57, *v14.i8), *v14.i8).u8[0])
          {
            *(v56 - 5) = v48;
          }

          if (vuzp1_s8(vuzp1_s16(v57, *&v14), *&v14).i8[1])
          {
            *(v56 - 4) = v48;
          }

          if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v50, *&v53))), *&v14).i8[2])
          {
            *(v56 - 3) = v48;
            *(v56 - 2) = v48;
          }

          v58 = vmovn_s64(vcgeq_u64(v50, v54));
          if (vuzp1_s8(*&v14, vuzp1_s16(v58, *&v14)).i32[1])
          {
            *(v56 - 1) = v48;
          }

          if (vuzp1_s8(*&v14, vuzp1_s16(v58, *&v14)).i8[5])
          {
            *v56 = v48;
          }

          if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v50, *&v55)))).i8[6])
          {
            v56[1] = v48;
            v56[2] = v48;
          }

          v54 = vaddq_s64(v54, v21);
          v53 = vaddq_s64(v53, v21);
          v52 = vaddq_s64(v52, v21);
          v56 += 8;
          v55 = vaddq_s64(v55, v21);
          v51 -= 8;
        }

        while (v51);
      }

      ++a3;
      v11 = (v11 + v16);
      v10 = (v10 + v15);
      v17 += v15;
      v9 += v15;
    }

    while (a3 != a4);
  }

  return result;
}

uint64_t sub_277487028(uint64_t a1, int a2)
{
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v2 = *(a1 + 8);
  *(a1 + 40) = *(v2 + 400);
  *(a1 + 72) = *(v2 + 416);
  *(a1 + 104) = a2;
  v3 = *(v2 + 528);
  if (v3 != *(v2 + 529))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Bitdepth mismatch not supported\n", 0x20uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Bitdepth mismatch not supported\n");
    }

    return 4294954386;
  }

  if (v3 == 10)
  {
    v15 = (a1 + 16);
    v14 = *(a1 + 16);
    *(a1 + 108) = 1;
    v16 = a2 + 3;
    v17 = a2 + a2 + 3 + 2;
    v18 = ((v17 + *(v2 + 520) + 7) & 0xFFFFFFF8);
    v19 = (a2 + 10) & 0xFFFFFFF8;
    v20 = v18 * (*(v2 + 524) + v17);
    v21 = 2 * (3 * v20 + (v19 | 5));
    v22 = *(a1 + 24) - v14;
    if (v21 <= v22)
    {
      if (v21 < v22)
      {
        *(a1 + 24) = v14 + v21;
      }
    }

    else
    {
      sub_2773C07DC((a1 + 16), v21 - v22);
      v14 = *v15;
    }

    result = 0;
    v27 = v14 + 2 * v19 + 2 * v18 * v16;
    v28 = v27 + 2 * v20 + 10;
    *(a1 + 48) = v28;
    *(a1 + 56) = v27;
    *(a1 + 64) = v28 + 2 * v20;
    *(a1 + 88) = v18;
    *(a1 + 96) = v18;
    *(a1 + 80) = v18;
    *(a1 + 136) = sub_277487314;
    *(a1 + 112) = sub_277486CAC;
    *(a1 + 120) = sub_277486924;
    v26 = sub_2774862B8;
    goto LABEL_19;
  }

  if (v3 != 8)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Bit depth %d not supported\n", v3);
      syslog(27, "Bit depth %d not supported\n");
    }

    return 4294954386;
  }

  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  *(a1 + 108) = 0;
  v7 = a2 + 3;
  v8 = a2 + a2 + 3 + 2;
  v9 = ((v8 + *(v2 + 520) + 15) & 0xFFFFFFF0);
  v10 = (a2 + 18) & 0xFFFFFFF0;
  v11 = v9 * (*(v2 + 524) + v8);
  v12 = 3 * v11 + (v10 | 0xD);
  v13 = *(a1 + 24) - v5;
  if (v12 <= v13)
  {
    if (v12 < v13)
    {
      *(a1 + 24) = v5 + v12;
    }
  }

  else
  {
    sub_2773C07DC((a1 + 16), v12 - v13);
    v5 = *v6;
  }

  result = 0;
  v24 = v5 + v10 + v9 * v7;
  v25 = v24 + v11 + 13;
  *(a1 + 48) = v25;
  *(a1 + 56) = v24;
  *(a1 + 64) = v25 + v11;
  *(a1 + 88) = v9;
  *(a1 + 96) = v9;
  *(a1 + 80) = v9;
  *(a1 + 136) = sub_2774873B0;
  *(a1 + 112) = sub_277486130;
  *(a1 + 120) = sub_277485FA4;
  v26 = sub_277485CEC;
LABEL_19:
  *(a1 + 128) = v26;
  return result;
}

void *sub_277487314(void *result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 1)
  {
    v6 = (a6 + 2 * (-3 - result) + 2 * a3 * a5);
    v7 = 2 * (a2 + 2 * result + 5);
    v8 = (a4 + 1) - 1;
    v9 = (a5 * (2 * a3 + 2) - 2 * result + a6 - 6);
    v10 = 2 * a5;
    do
    {
      result = memcpy(v9, v6, v7);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

void *sub_2774873B0(void *result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 1)
  {
    v7 = (a6 + -3 - result + a3 * a5);
    v8 = a2 + 2 * result + 5;
    v9 = (a4 + 1) - 1;
    v10 = (a5 + a5 * a3 - result + a6 - 3);
    do
    {
      result = memcpy(v10, v7, v8);
      v10 += a5;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_277487440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  (*(a1 + 112))(*(a1 + 104), *(a1 + 8), a2, a3, *(a1 + 80), *(a1 + 48));
  v6 = *(*(a1 + 8) + 524);
  if (v6 <= v3)
  {
    v7 = (v6 + 3);
  }

  else
  {
    v7 = (v3 - 4);
  }

  (*(a1 + 120))(*(a1 + 104));
  result = (*(a1 + 128))(*(a1 + 104), *(a1 + 8), (v4 - 4), v7, *(a1 + 96), *(a1 + 64));
  if (!v4)
  {
    (*(a1 + 136))(*(a1 + 104), *(*(a1 + 8) + 520), 0, (*(a1 + 104) + 3), -*(a1 + 80), *(a1 + 48));
    (*(a1 + 136))(*(a1 + 104), *(*(a1 + 8) + 520), 4, (*(a1 + 104) - 1), -*(a1 + 88), *(a1 + 56));
    result = (*(a1 + 136))(*(a1 + 104), *(*(a1 + 8) + 520), 4, (*(a1 + 104) - 1), -*(a1 + 96), *(a1 + 64));
  }

  v9 = *(a1 + 8);
  v10 = *(v9 + 524);
  if (v7 == v10 + 3)
  {
    (*(a1 + 136))(*(a1 + 104), *(v9 + 520), (v10 - 1), (*(a1 + 104) + 2), *(a1 + 80), *(a1 + 48));
    (*(a1 + 136))(*(a1 + 104), *(*(a1 + 8) + 520), (*(*(a1 + 8) + 524) + 2), (*(a1 + 104) - 1), *(a1 + 88), *(a1 + 56));
    v11 = *(a1 + 136);

    return v11();
  }

  return result;
}

uint64_t sub_277487604(_DWORD *a1, int a2, int a3, int a4, int a5, __CVBuffer *a6, __CVBuffer *a7)
{
  result = sub_277487660(a1, a2, a3, a4, a5, a6, a7);
  if (!result)
  {
    v11 = sub_277487814(a1, a6, a7);
    CVBufferPropagateAttachments(a6, a7);
    return v11;
  }

  return result;
}

uint64_t sub_277487660(_DWORD *a1, int a2, int a3, int a4, int a5, CVPixelBufferRef pixelBuffer, __CVBuffer *a7)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if ((PixelFormatType & 0xFFFFFFEF) != 0x34323066)
  {
    if (dword_280B9A880 >= 3)
    {
      v15 = *MEMORY[0x277D85DF8];
      v16 = "LanczosScaling only supports 4:2:0 biplanar\n";
      v17 = "LanczosScaling only supports 4:2:0 biplanar\n";
      v18 = 44;
LABEL_17:
      fwrite(v17, v18, 1uLL, v15);
      syslog(27, v16);
    }

    return 4294954394;
  }

  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a7))
  {
    if (dword_280B9A880 >= 3)
    {
      v15 = *MEMORY[0x277D85DF8];
      v16 = "Pixel format mismatch between src and dst!\n";
      v17 = "Pixel format mismatch between src and dst!\n";
      v18 = 43;
      goto LABEL_17;
    }

    return 4294954394;
  }

  if (a2 < 16 || a3 < 16 || a4 < 16 || a5 < 16 || CVPixelBufferGetWidth(pixelBuffer) < a2 || CVPixelBufferGetHeight(pixelBuffer) < a3 || CVPixelBufferGetWidth(a7) < a4 || CVPixelBufferGetHeight(a7) < a5)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Invalid scaling dimensions %dx%d -> %dx%d\n", a2, a3, a4, a5);
      syslog(27, "Invalid scaling dimensions %dx%d -> %dx%d\n");
    }

    return 4294954394;
  }

  result = 0;
  a1[18] = a2;
  a1[19] = a3;
  a1[20] = a4;
  a1[21] = a5;
  return result;
}

uint64_t sub_277487814(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v6 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  if (!v6)
  {
    v7 = CVPixelBufferLockBaseAddress(a3, 0);
    if (v7)
    {
      v6 = v7;
      v8 = pixelBuffer;
      v9 = 1;
    }

    else
    {
      *(a1 + 8) = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
      *(a1 + 16) = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
      *(a1 + 24) = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
      *(a1 + 32) = BaseAddressOfPlane;
      if (*(a1 + 8) && *(a1 + 16) && *(a1 + 24) && BaseAddressOfPlane)
      {
        *(a1 + 40) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
        *(a1 + 48) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
        *(a1 + 56) = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        *(a1 + 64) = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
        v11 = *(a1 + 8);
        v12 = *(a1 + 24);
        if (v11 == v12 || *(a1 + 16) == *(a1 + 32))
        {
          if (dword_280B9A880 >= 3)
          {
            fwrite("source and dst buffer cannot be the same so far!", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
            syslog(27, "source and dst buffer cannot be the same so far!");
          }

          v6 = 0xFFFFFFFFLL;
        }

        else
        {
          v13 = *(a1 + 80);
          v14 = *(a1 + 72);
          v15 = 8 * v13 / v14;
          if (v15 >= 8)
          {
            v15 = 8;
          }

          if (v15 <= 1)
          {
            v15 = 1;
          }

          v16 = a1 + ((v15 - 1) << 8);
          v17 = v16 + 144;
          v18 = v16 + 2192;
          sub_2774CDE64(0, v11, *(a1 + 40), v14, *(a1 + 76), v12, *(a1 + 56), v13, *(a1 + 84), v16 + 144, v16 + 2192, *(a1 + 4240), *(a1 + 112), *(a1 + 128));
          sub_2774CDE64(1, *(a1 + 16), *(a1 + 48), *(a1 + 72), *(a1 + 76) >> 1, *(a1 + 32), *(a1 + 64), *(a1 + 80), *(a1 + 84) >> 1, v17, v18, *(a1 + 4240), *(a1 + 112), *(a1 + 136));
          v6 = 0;
        }
      }

      else
      {
        if (dword_280B9A880 >= 3)
        {
          fwrite("NULL plane!\n", 0xCuLL, 1uLL, *MEMORY[0x277D85DF8]);
          syslog(27, "NULL plane!\n");
        }

        v6 = 4294954394;
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      v8 = a3;
      v9 = 0;
    }

    CVPixelBufferUnlockBaseAddress(v8, v9);
  }

  return v6;
}

uint64_t sub_277487A98(uint64_t a1, int a2, int a3, int a4, int a5, __CVBuffer *a6, __CVBuffer *a7)
{
  v10 = sub_277487660(a1, a2, a3, a4, a5, a6, a7);
  if (!v10)
  {
    if (*(a1 + 4244) == 1 && (*(a1 + 4248) || !IOSurfaceAcceleratorCreate()) && (IOSurface = CVPixelBufferGetIOSurface(a6), v12 = CVPixelBufferGetIOSurface(a7), IOSurface) && v12 && !IOSurfaceAcceleratorTransformSurface())
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_277487814(a1, a6, a7);
    }

    CVBufferPropagateAttachments(a6, a7);
  }

  return v10;
}

uint64_t sub_277487B94(uint64_t a1, char a2)
{
  *(a1 + 4240) = 6;
  *(a1 + 88) = sub_2774A6C64;
  *(a1 + 96) = sub_2774A6C1C;
  *(a1 + 104) = sub_2774A6BB4;
  *(a1 + 112) = sub_2774CDDE8;
  *(a1 + 120) = sub_2773BEBF8;
  *(a1 + 128) = sub_2773BEE2C;
  *(a1 + 136) = sub_2773BEF60;
  sub_2774CD9D4(4u, 6, (a1 + 144));
  sub_2774CD9D4(8u, *(a1 + 4240), (a1 + 2192));
  *(a1 + 4244) = a2;
  return 0;
}

void sub_277487C5C(void *a1)
{
  sub_277487C94(a1);

  JUMPOUT(0x277CAD370);
}

void *sub_277487C94(void *a1)
{
  *a1 = &unk_288662A70;
  v2 = a1[531];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_277487CE8(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_277487D3C(int a1, int a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 14848);
  v5 = *(*(v4 + 16) + 2113) - a3;
  v6 = *(v4 + 5320);
  v11 = a1;
  v9 = v5;
  v10 = a2;
  v7 = *(v6 + 536);
  if (!v7)
  {
    sub_2773FE240();
  }

  return (*(*v7 + 48))(v7, &v11, &v10, &v9);
}

uint64_t sub_277487DB0(int a1, int a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 976);
  v5 = *(v4 + 4);
  v6 = 1 << (*(*(*(a4 + 14848) + 16) + 2113) - a3);
  v7 = *(a4 + 20) - a2;
  if (v6 < v7)
  {
    v7 = 1 << (*(*(*(a4 + 14848) + 16) + 2113) - a3);
  }

  v8 = (v7 >> v5);
  if (v8 < 1)
  {
    return 51;
  }

  v9 = 0;
  v10 = *(v4 + 5136);
  v11 = *(v4 + 8);
  v12 = (v10 + v11 * (a2 >> v5) + (a1 >> v5));
  if (v6 >= *(a4 + 16) - a1)
  {
    v6 = *(a4 + 16) - a1;
  }

  v13 = (v6 >> v5);
  result = 51;
  do
  {
    v15 = v12;
    v16 = v13;
    if (v13 >= 1)
    {
      do
      {
        v18 = *v15++;
        v17 = v18;
        if (result >= v18)
        {
          result = v17;
        }

        else
        {
          result = result;
        }

        --v16;
      }

      while (v16);
    }

    ++v9;
    v12 += v11;
  }

  while (v9 != v8);
  return result;
}

uint64_t sub_277487E64(int a1, int a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 14848);
  v6 = *(a4 + 976);
  v7 = v6[1214];
  v8 = *(v5 + 653);
  if (!v7)
  {
    return *(v5 + 653);
  }

  v12 = *(v5 + 4768);
  v13 = *(*(v5 + 16) + 2113) - a3;
  v46 = *(v12 + 124);
  v45 = *(v5 + 5320);
  v44 = *(*(v45 + 40) + 2096);
  v14 = sub_2774A5864(v6, a1, a2, v13, *(a4 + 16), *(a4 + 20), *(v12 + 133));
  v15 = *(a4 + 976);
  if (*(v15 + 17) == 1)
  {
    v8 = sub_2774A5EF0(*(a4 + 976), a1, a2, v13) + v8;
  }

  v16 = sub_2774A5FC0(a1, a2, a3, v8, v14, v7, *(v5 + 4768), v15);
  v17 = *(a4 + 14848);
  v18 = *(v17 + 5248);
  if (v18)
  {
    v19 = *(*(v17 + 16) + 2113) - a3;
    v20 = *(v17 + 5256);
    v21 = *(v17 + 5260);
    v22 = __clz(__rbit32(v20));
    v23 = a2 >> v22;
    v24 = a1 >> v22;
    if (1 << v19 <= v20)
    {
      v28 = *(v18 + v24 + v23 * v21);
      goto LABEL_22;
    }

    v25 = 1 << (v19 - (v22 & 0x1F));
    v26 = *(a4 + 20) / v20;
    if (v25 + v23 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25 + v23;
    }

    if (v23 < v27)
    {
      v28 = 0;
      v29 = v25 + v24;
      if (v29 >= v21)
      {
        v29 = v21;
      }

      v30 = v23;
      v31 = (v18 + v24 + v21 * v23);
      do
      {
        v32 = v31;
        v33 = v29 - v24;
        if (v24 < v29)
        {
          do
          {
            v35 = *v32++;
            v34 = v35;
            if (v28 >= v35)
            {
              v28 = v34;
            }

            --v33;
          }

          while (v33);
        }

        ++v30;
        v31 += v21;
      }

      while (v30 != v27);
      goto LABEL_22;
    }
  }

  v28 = 0;
LABEL_22:
  v37 = v16 + v28;
  if (v46)
  {
    v38 = *(*(v5 + 16) + 2097);
    v39 = v37 + *(*(*(v45 + 576) + 10784) + *(*(*(a4 + 976) + 8 * v13 + 5352) + 4 * ((*(a4 + 16) + (1 << v13) - 1) >> v13) * (a2 >> v13) + 4 * (a1 >> v13)));
    if (v39 >= 51)
    {
      v40 = 51;
    }

    else
    {
      v40 = v37 + *(*(*(v45 + 576) + 10784) + *(*(*(a4 + 976) + 8 * v13 + 5352) + 4 * ((*(a4 + 16) + (1 << v13) - 1) >> v13) * (a2 >> v13) + 4 * (a1 >> v13)));
    }

    if ((v39 + v38 < 0) ^ __OFADD__(v39, v38) | (v39 + v38 == 0))
    {
      v37 = -v38;
    }

    else
    {
      v37 = v40;
    }
  }

  else if (*(*(v5 + 4768) + 127) == 1 && v13 == 4)
  {
    v42 = *(*(v5 + 16) + 2097);
    v37 = sub_2774A5C50(*(a4 + 976), a1, a2, v37, *(a4 + 16), v44, v42, -v42);
  }

  v43 = *(v5 + 5428);
  if (v43 >= v37)
  {
    return v37;
  }

  else
  {
    return v43;
  }
}

uint64_t sub_277488108(uint64_t result, int a2, int a3, int a4, unsigned __int8 *a5, unsigned int a6, int a7, int a8, int a9, char *__dst)
{
  v10 = result;
  if (!a8)
  {
    v29 = vdupq_n_s64(((8 << a9) | 2) - 1);
    v30 = 128 << *(*(result + 14856) + 223);
    v31 = (8 << a9) + 8;
    v32 = xmmword_27750D2F0;
    v33 = xmmword_27750D300;
    v34 = xmmword_27750D310;
    v35 = xmmword_27750D320;
    v36 = __dst + 4;
    do
    {
      v37 = vmovn_s64(vcgeq_u64(v29, v35));
      if (vuzp1_s8(vuzp1_s16(v37, *v29.i8), *v29.i8).u8[0])
      {
        *(v36 - 4) = v30;
      }

      if (vuzp1_s8(vuzp1_s16(v37, *&v29), *&v29).i8[1])
      {
        *(v36 - 3) = v30;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v34))), *&v29).i8[2])
      {
        *(v36 - 2) = v30;
        *(v36 - 1) = v30;
      }

      v38 = vmovn_s64(vcgeq_u64(v29, v33));
      if (vuzp1_s8(*&v29, vuzp1_s16(v38, *&v29)).i32[1])
      {
        *v36 = v30;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v38, *&v29)).i8[5])
      {
        v36[1] = v30;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v32)))).i8[6])
      {
        v36[2] = v30;
        v36[3] = v30;
      }

      v39 = vdupq_n_s64(8uLL);
      v33 = vaddq_s64(v33, v39);
      v34 = vaddq_s64(v34, v39);
      v35 = vaddq_s64(v35, v39);
      v32 = vaddq_s64(v32, v39);
      v36 += 8;
      v31 -= 8;
    }

    while (v31);
    return result;
  }

  v14 = result + 24524;
  v213 = a4;
  if ((*(result + 24793) & 1) == 0 && (*v14 == a2 || *(result + 24528) == a3))
  {
    result = sub_277489098(result, 1u);
    a4 = v213;
  }

  v15 = 4 << a9;
  v16 = 2 << (a9 + 1);
  v17 = *(v10 + 16);
  v18 = ((v16 + a2 - v17) >> 1);
  v19 = ((v16 + a3 - *(v10 + 20)) >> 1);
  v212 = a8 & 0x1E000;
  v20 = v18 > 0 && (a8 & 0x1E000) != 0;
  v21 = (a8 & 0xF) != 0;
  v22 = v19 > 0 && (a8 & 0xF) != 0;
  if (v20 || v22)
  {
    v23 = *v14;
    if (v20)
    {
      v24 = *(v10 + 24528);
      v25 = a3 - v24;
      if (a3 != v24)
      {
        v26 = v17 - 2;
        v27 = a3 - 1;
        if (*(v10 + 8) == 1 && *(a5 + 2) == a3)
        {
          v28 = (v10 + 24552);
        }

        else
        {
          v40 = v26 - v23;
          v41 = v27 - v24;
          v42 = *(*(v10 + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_39:
            v45 = -1;
          }

          else
          {
            v43 = v42 - a4;
            while ((a2 - v23) >> v43 != v40 >> v43 || v25 >> v43 != v41 >> v43)
            {
              v44 = v43++ < v42;
              if (!v44)
              {
                goto LABEL_39;
              }
            }

            v45 = v42 - v43;
            if (v42 - v43 < a4)
            {
              ++v45;
            }
          }

          result = (v42 - v45);
          v28 = (v10 + 32 * v45 + 8 * ((v40 >> result) & 1 | (2 * ((v41 >> result) & 1))) + 24552);
        }

        v46 = *v28;
        v47 = (**(*(v46 + 136) + 72) + (*(*(v46 + 136) + 80) - *(v46 + 4) + v26 + 2 * *(*(v46 + 136) + 1) * ((v27 - *(v46 + 8)) >> 1)) * *(*(*(v46 + 136) + 72) + 16));
        v50 = *v47;
        v48 = v47 + 4;
        v49 = v50;
        v51 = (v18 + 3) & 0xFFFFFFFC;
        v52 = vdupq_n_s64(v18 - 1);
        v53 = xmmword_27750D310;
        v54 = xmmword_27750D320;
        v55 = vdupq_n_s64(4uLL);
        do
        {
          v56 = vmovn_s64(vcgeq_u64(v52, v54));
          if (vuzp1_s16(v56, *v52.i8).u8[0])
          {
            *(v48 - 3) = v49;
          }

          if (vuzp1_s16(v56, *&v52).i8[2])
          {
            *(v48 - 2) = v49;
          }

          if (vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, *&v53))).i32[1])
          {
            *(v48 - 1) = v49;
            *v48 = v49;
          }

          v53 = vaddq_s64(v53, v55);
          v54 = vaddq_s64(v54, v55);
          v48 += 4;
          v51 -= 4;
        }

        while (v51);
      }
    }

    if (a2 == v23)
    {
      v22 = 0;
    }

    if (v22)
    {
      v57 = a2 - 2;
      v58 = *(v10 + 20) - 1;
      if (*(v10 + 8) == 1 && *(a5 + 1) == a2)
      {
        v59 = v10 + 24552;
      }

      else
      {
        v60 = *(v10 + 24528);
        v61 = v57 - *v14;
        v62 = v58 - v60;
        v63 = *(*(v10 + 14856) + 2113);
        if (a4 < 0)
        {
LABEL_62:
          v66 = -1;
        }

        else
        {
          v64 = a3 - v60;
          v65 = v63 - a4;
          while (1)
          {
            if ((a2 - *v14) >> v65 == v61 >> v65)
            {
              result = (v64 >> v65);
              if (result == v62 >> v65)
              {
                break;
              }
            }

            result = (v65 + 1);
            v44 = v65++ < v63;
            if (!v44)
            {
              goto LABEL_62;
            }
          }

          v66 = v63 - v65;
          if (v63 - v65 < a4)
          {
            ++v66;
          }
        }

        v59 = v10 + 32 * v66 + 8 * ((v61 >> (v63 - v66)) & 1 | (2 * ((v62 >> (v63 - v66)) & 1))) + 24552;
      }

      v67 = *v59;
      v68 = *(*v59 + 136);
      v69 = *(v68 + 1);
      v70 = (**(v68 + 72) + (*(v68 + 80) - *(v67 + 4) + v57 + 2 * v69 * ((v58 - *(v67 + 8)) >> 1)) * *(*(v68 + 72) + 16));
      v71 = *v70;
      v72 = vdupq_n_s64(v19 - 1);
      v73 = (v19 + 3) & 0xFFFFFFFC;
      v74 = xmmword_27750D310;
      v75 = xmmword_27750D320;
      v76 = vdupq_n_s64(4uLL);
      do
      {
        v77 = vmovn_s64(vcgeq_u64(v72, v75));
        if (vuzp1_s16(v77, *v72.i8).u8[0])
        {
          v70[v69] = v71;
        }

        if (vuzp1_s16(v77, *&v72).i8[2])
        {
          v70[2 * v69] = v71;
        }

        if (vuzp1_s16(*&v72, vmovn_s64(vcgeq_u64(v72, *&v74))).i32[1])
        {
          v70[3 * v69] = v71;
          v70[4 * v69] = v71;
        }

        v74 = vaddq_s64(v74, v76);
        v75 = vaddq_s64(v75, v76);
        v70 += 4 * v69;
        v73 -= 4;
      }

      while (v73);
    }
  }

  v78 = &__dst[2 * v15];
  v79 = *(v10 + 14856);
  v210 = *(v79 + 2117);
  v214 = *(v10 + 24768);
  v217 = *(v10 + 24528);
  v219 = a3 - v217;
  v208 = *v14;
  v80 = a2 - *v14;
  if (a2 == *v14)
  {
    v211 = (a8 & 0xF0) != 0;
    if ((a8 & 0xF0) != 0)
    {
      result = memcpy(__dst, (v214 + 2 * v219), 2 * (2 << a9));
    }

    if ((a8 & 0xF) != 0)
    {
      result = memcpy(&__dst[2 * (2 << a9)], (v214 + 2 * v219 + 2 * (2 << a9)), 2 * (2 << a9));
      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    v87 = a5;
    a4 = v213;
  }

  else
  {
    if ((a8 & 0xF) != 0)
    {
      v81 = a2 - 2;
      v82 = 2 << a9;
      v83 = (2 << a9) + a3;
      v84 = *(a5 + 1);
      if (*(v10 + 8) == 1 && v84 == a2)
      {
        v85 = 0;
        v86 = *(v10 + 24552);
      }

      else
      {
        if (v84 > v81 || (v88 = *a5, v84 + v88 <= v81) || (v89 = *(a5 + 2), v89 > v83) || (v90 = v89 + v88, v86 = a5, v90 <= v83))
        {
          v91 = v81 - v208;
          v92 = v83 - v217;
          v93 = *(v79 + 2113);
          if (a4 < 0)
          {
LABEL_94:
            v95 = -1;
          }

          else
          {
            v94 = v93 - a4;
            while (1)
            {
              result = (v91 >> v94);
              if (v80 >> v94 == result)
              {
                result = (v92 >> v94);
                if (v219 >> v94 == result)
                {
                  break;
                }
              }

              v44 = v94++ < v93;
              if (!v44)
              {
                goto LABEL_94;
              }
            }

            v95 = v93 - v94;
            if (v95 < a4)
            {
              ++v95;
            }
          }

          v86 = *(v10 + 32 * v95 + 8 * ((v91 >> (v93 - v95)) & 1 | (2 * ((v92 >> (v93 - v95)) & 1))) + 24552);
        }

        v85 = a6;
        if (v86 != a5)
        {
          v85 = 0;
        }
      }

      if (v82 < v15)
      {
        v97 = *(v86 + 17);
        v96 = v86 + 136;
        v98 = *&v96[8 * v85];
        v99 = *(v98 + 72);
        result = *v99;
        v100 = *(v98 + 80) + v81 - *(v96 - 33) + 2 * *(v98 + 1) * ((v83 - *(v96 - 32)) >> 1);
        v101 = 4 * *(v97 + 1);
        v102 = v82;
        v103 = (*v99 + v100 * *(v99 + 16) + 2);
        v104 = &__dst[2 * v82 + 2];
        do
        {
          *(v104 - 1) = *(v103 - 1);
          *v104 = *v103;
          v104 += 4;
          v102 += 2;
          v103 = (v103 + v101);
        }

        while (v102 < v15);
      }
    }

    if ((a8 & 0xF0) != 0)
    {
      v105 = a2 - 2;
      v87 = a5;
      v106 = *(a5 + 1);
      if (*(v10 + 8) == 1 && v106 == a2)
      {
        v116 = 0;
        v111 = *(v10 + 24552);
      }

      else
      {
        if (v106 > v105 || (v108 = *a5, v106 + v108 <= v105) || (v109 = *(a5 + 2), v109 > a3) || (v110 = v109 + v108, v111 = a5, v110 <= a3))
        {
          v112 = v105 - v208;
          v113 = *(v79 + 2113);
          if (a4 < 0)
          {
LABEL_116:
            v115 = -1;
          }

          else
          {
            v114 = v113 - a4;
            while (v80 >> v114 != v112 >> v114)
            {
              v44 = v114++ < v113;
              if (!v44)
              {
                goto LABEL_116;
              }
            }

            v115 = v113 - v114;
            if (v115 < a4)
            {
              ++v115;
            }
          }

          v111 = *(v10 + 32 * v115 + 8 * ((v112 >> (v113 - v115)) & 1 | (2 * ((v219 >> (v113 - v115)) & 1))) + 24552);
        }

        if (v111 == a5)
        {
          v116 = a6;
        }

        else
        {
          v116 = 0;
        }
      }

      v117 = (2 << a9);
      if (v117 >= 1)
      {
        v118 = 0;
        v120 = *(v111 + 17);
        v119 = v111 + 136;
        v121 = *&v119[8 * v116];
        v122 = *(v121 + 80) + v105 - *(v119 - 33) + 2 * *(v121 + 1) * ((a3 - *(v119 - 32)) >> 1);
        v123 = 4 * *(v120 + 1);
        v124 = (**(v121 + 72) + v122 * *(*(v121 + 72) + 16) + 2);
        do
        {
          v125 = &__dst[2 * v118];
          *v125 = *(v124 - 1);
          *(v125 + 1) = *v124;
          v118 += 2;
          v124 = (v124 + v123);
        }

        while (v118 < v117);
      }

      v211 = 1;
    }

    else
    {
      v211 = 0;
      v87 = a5;
    }
  }

  v216 = a8;
  v126 = a8 & 0x1E00;
  v127 = v87;
  v209 = v126;
  if (a3 == v217)
  {
    if (v126)
    {
      v128 = v21;
      result = memcpy(v78, (v214 + 4 * v210 + 2 * v80), 2 * (2 << a9));
      v87 = v127;
      v21 = v128;
      v14 = v10 + 24524;
    }

    v129 = v212;
    if (!v212)
    {
      goto LABEL_174;
    }

    v130 = v21;
    v131 = 2 << a9;
    v132 = (v214 + 4 * v210 + 2 * v80 + 2 * v131);
  }

  else
  {
    if (v126)
    {
      v133 = a3 - 1;
      if (*(v10 + 8) == 1 && *(v87 + 2) == a3)
      {
        v134 = v21;
        v135 = 0;
        v136 = *(v10 + 24552);
      }

      else
      {
        v137 = *(v87 + 1);
        if (v137 > a2 || (v138 = *v87, v137 + v138 <= a2) || (v139 = *(v87 + 2), v139 >= a3) || (v140 = v139 + v138, v136 = v87, v140 < a3))
        {
          v141 = *(v10 + 24528);
          v142 = v133 - v141;
          v143 = *(*(v10 + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_146:
            v146 = -1;
          }

          else
          {
            v144 = a3 - v141;
            v145 = v143 - a4;
            while (v144 >> v145 != v142 >> v145)
            {
              v44 = v145++ < v143;
              if (!v44)
              {
                goto LABEL_146;
              }
            }

            v146 = v143 - v145;
            if (v143 - v145 < a4)
            {
              ++v146;
            }
          }

          v136 = *(v10 + 32 * v146 + 8 * (((a2 - *v14) >> (v143 - v146)) & 1 | (2 * ((v142 >> (v143 - v146)) & 1))) + 24552);
        }

        v134 = v21;
        v135 = a6;
        if (v136 != v87)
        {
          v135 = 0;
        }
      }

      v147 = *(v136 + 1);
      v148 = v133 - *(v136 + 2);
      v149 = *&v136[8 * v135 + 136];
      result = memcpy(v78, (**(v149 + 72) + (*(v149 + 80) - v147 + a2 + 2 * *(v149 + 1) * (v148 >> 1)) * *(*(v149 + 72) + 16)), 2 * (2 << a9));
      a4 = v213;
      v21 = v134;
      v14 = v10 + 24524;
      v87 = v127;
    }

    v129 = v212;
    if (!v212)
    {
      goto LABEL_174;
    }

    LODWORD(v131) = 2 << a9;
    v150 = (2 << a9) + a2;
    v151 = a3 - 1;
    if (*(v10 + 8) == 1 && *(v87 + 2) == a3)
    {
      v152 = 0;
      v153 = *(v10 + 24552);
    }

    else
    {
      v154 = *(v87 + 1);
      if (v154 > v150 || (v155 = *v87, v154 + v155 <= v150) || (v156 = *(v87 + 2), v156 >= a3) || (v157 = v156 + v155, v153 = v87, v157 < a3))
      {
        v158 = *(v14 + 4);
        v159 = v150 - *v14;
        v160 = v151 - v158;
        v161 = *(*(v10 + 14856) + 2113);
        if (a4 < 0)
        {
LABEL_166:
          v164 = -1;
        }

        else
        {
          v162 = a3 - v158;
          v163 = v161 - a4;
          while ((a2 - *v14) >> v163 != v159 >> v163 || v162 >> v163 != v160 >> v163)
          {
            v44 = v163++ < v161;
            if (!v44)
            {
              goto LABEL_166;
            }
          }

          v164 = v161 - v163;
          if (v161 - v163 < a4)
          {
            ++v164;
          }
        }

        v153 = *(v10 + 32 * v164 + 8 * ((v159 >> (v161 - v164)) & 1 | (2 * ((v160 >> (v161 - v164)) & 1))) + 24552);
      }

      v152 = a6;
      if (v153 != v87)
      {
        v152 = 0;
      }
    }

    v130 = v21;
    v165 = *(v153 + 1);
    v166 = v151 - *(v153 + 2);
    v167 = *&v153[8 * v152 + 136];
    v132 = (**(v167 + 72) + (*(v167 + 80) - v165 + v150 + 2 * *(v167 + 1) * (v166 >> 1)) * *(*(v167 + 72) + 16));
    v131 = v131;
  }

  result = memcpy(&v78[2 * v131], v132, 2 * v131);
  v129 = 1;
  v21 = v130;
  v14 = v10 + 24524;
  v87 = v127;
LABEL_174:
  if ((v216 & 0x100) != 0)
  {
    if (a2 == v208 || a3 == v217)
    {
      v173 = v80 + 2 * v210;
      if (v80 <= 0)
      {
        v173 = 0;
      }

      v174 = v214 + 2 * v219 + 2 * v173;
      *(__dst - 2) = *(v174 - 4);
      v175 = (v174 - 2);
    }

    else
    {
      v168 = a2 - 2;
      v169 = a3 - 1;
      v170 = *(v87 + 1);
      if (*(v10 + 8) == 1 && (v170 == a2 || *(v87 + 2) == a3))
      {
        v171 = 0;
        v172 = *(v10 + 24552);
      }

      else
      {
        if (v170 > v168 || (v176 = *v87, v170 + v176 <= v168) || (v177 = *(v87 + 2), v177 >= a3) || (v178 = v177 + v176, v172 = v87, v178 < a3))
        {
          v179 = *(v14 + 4);
          v180 = v168 - *v14;
          v181 = v169 - v179;
          v182 = *(*(v10 + 14856) + 2113);
          if (v213 < 0)
          {
LABEL_193:
            v185 = -1;
          }

          else
          {
            v183 = a3 - v179;
            v184 = v182 - v213;
            while (1)
            {
              if ((a2 - *v14) >> v184 == v180 >> v184)
              {
                result = (v183 >> v184);
                if (result == v181 >> v184)
                {
                  break;
                }
              }

              result = (v184 + 1);
              v44 = v184++ < v182;
              if (!v44)
              {
                goto LABEL_193;
              }
            }

            v185 = v182 - v184;
            if (v182 - v184 < v213)
            {
              ++v185;
            }
          }

          v172 = *(v10 + 32 * v185 + 8 * ((v180 >> (v182 - v185)) & 1 | (2 * ((v181 >> (v182 - v185)) & 1))) + 24552);
        }

        v171 = a6;
        if (v172 != v87)
        {
          v171 = 0;
        }
      }

      v186 = *(v172 + 2);
      v187 = *(v172 + 1);
      v188 = *&v172[8 * v171 + 136];
      v189 = (**(v188 + 72) + (*(v188 + 80) + v168 - v187 + 2 * *(v188 + 1) * ((v169 - v186) >> 1)) * *(*(v188 + 72) + 16));
      v190 = *v189;
      v175 = v189 + 1;
      *(__dst - 2) = v190;
    }

    *(__dst - 1) = *v175;
  }

  v191 = 1 << a9;
  if (!v21)
  {
    if (v211)
    {
      v192 = &__dst[2 * (2 << a9) - 4];
    }

    else if ((v216 & 0x100) != 0)
    {
      v192 = __dst - 4;
    }

    else
    {
      v192 = v78;
      if (!v209)
      {
        v192 = &v78[2 * (2 << a9)];
      }
    }

    if (v191 < 2 << a9)
    {
      v193 = (2 << a9) - v191;
      v194 = 2 * v191;
      do
      {
        *&__dst[2 * v194] = *v192;
        *&__dst[2 * v194 + 2] = *(v192 + 1);
        v194 += 2;
        --v193;
      }

      while (v193);
    }
  }

  v195 = a9 == 31 || v211;
  if ((v195 & 1) == 0)
  {
    v196 = 0;
    if (v191 <= 1)
    {
      v197 = 1;
    }

    else
    {
      v197 = v191;
    }

    v198 = *&__dst[2 * (2 << a9)];
    v199 = 1;
    do
    {
      *&__dst[v196 >> 31] = v198;
      *&__dst[2 * v199] = *&__dst[2 * ((2 << a9) | 1)];
      v199 += 2;
      v196 += 0x200000000;
      --v197;
    }

    while (v197);
  }

  if ((v216 & 0x100) == 0)
  {
    *(__dst - 1) = *__dst;
  }

  if (a9 != 31 && !v209)
  {
    v200 = 0;
    if (v191 <= 1)
    {
      v201 = 1;
    }

    else
    {
      v201 = v191;
    }

    v202 = 1;
    do
    {
      *&v78[v200 >> 31] = *(__dst - 2);
      *&v78[2 * v202] = *(__dst - 1);
      v202 += 2;
      v200 += 0x200000000;
      --v201;
    }

    while (v201);
  }

  if ((v129 & 1) == 0)
  {
    v203 = 2 << a9;
    if (v191 < 2 << a9)
    {
      v204 = v203;
      v205 = &v78[2 * v203];
      v206 = 2 * v191;
      v207 = v204 - v191;
      do
      {
        *&v78[2 * v206] = *(v205 - 2);
        *&v78[2 * v206 + 2] = *(v205 - 1);
        v206 += 2;
        --v207;
      }

      while (v207);
    }
  }

  *(v14 + 271) = 1;
  return result;
}

uint64_t sub_277489098(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 20480);
  v5 = *(*(a1 + 14856) + 2113);
  v6 = v5 - a2;
  (*(&off_288662140[2 * *(*(*(a1 + 14848) + 8) + 531)] + a2))((*(a1 + 24524) >> a2), (*(a1 + 24528) >> a2), (2 << (v5 - a2)), (*(a1 + 24532) & 0xF) != 0, (*(a1 + 24532) & 0x1E000) != 0);
  (*(&off_288662140[2 * *(*(*(a1 + 14848) + 8) + 531)] + a2))((v4[1011] >> a2), (v4[1012] >> a2), (1 << v6), (v4[1013] & 0xF0) != 0, (v4[1013] & 0x1E00) != 0);
  v7 = *(a1 + 14848);
  v8 = v7 + 8 * a2;
  v9 = *(v7 + 8);
  result = (*(v8 + 2280))(v6, v4[1013], *(v9 + 8 * a2 + 416) >> a2, *(v9 + 8 * a2 + 400) + (((v4[1011] & (-1 << a2)) + *(v9 + 8 * a2 + 416) * (v4[1012] >> a2)) << *(v9 + 531)), *(a1 + 8 * a2 + 24760));
  *(a1 + a2 + 24792) = 1;
  return result;
}

uint64_t sub_2774891DC(uint64_t result, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, _WORD *a9)
{
  v10 = result;
  if (a7)
  {
    v13 = (result + 24524);
    v14 = 2 << a8;
    v180 = a7;
    v181 = a5;
    if ((*(result + 24792) & 1) == 0 && (*v13 == a2 || *(result + 24528) == a3))
    {
      sub_277489098(result, 0);
      a5 = v181;
      a7 = v180;
    }

    v15 = 1 << a8;
    v16 = v14;
    v17 = &a9[v14];
    v177 = a4;
    v18 = a4;
    v19 = a7;
    result = sub_27748A06C(v10, a2, a3, v18, a5, a8, a7, 0);
    v20 = a3;
    v21 = *(v10 + 14856);
    v172 = *(v21 + 2117);
    v176 = *(v10 + 24760);
    v178 = *(v10 + 24528);
    v22 = a3 - v178;
    v175 = *v13;
    v23 = a2 - *v13;
    v179 = (v10 + 24524);
    if (a2 == *v13)
    {
      v173 = (v19 & 0xF0) != 0;
      if ((v19 & 0xF0) != 0)
      {
        result = memcpy(a9, (v176 + 2 * v22), 2 * v15);
        v22 = a3 - v178;
        v20 = a3;
        v19 = v180;
      }

      v24 = v16;
      if ((v19 & 0xF) != 0)
      {
        result = memcpy(&a9[v15], (v176 + 2 * v22 + 2 * v15), 2 * v15);
        v22 = a3 - v178;
        v20 = a3;
        v19 = v180;
        v174 = 1;
      }

      else
      {
        v174 = 0;
      }

      v37 = v17;
      v38 = v24;
      v39 = v181;
    }

    else
    {
      v174 = (v19 & 0xF) != 0;
      v36 = v16;
      v37 = v17;
      v38 = v36;
      v39 = v181;
      if ((v19 & 0xF) != 0)
      {
        v40 = a2 - 1;
        v41 = v15 + a3;
        v42 = *(v181 + 1);
        if (v42 >= a2 || (v43 = *v181, v42 + v43 < a2) || (v50 = *(v181 + 2), v50 > v41) || v50 + v43 <= v41)
        {
          v44 = v40 - v175;
          v45 = v41 - v178;
          v46 = *(v21 + 2113);
          if (v177 < 0)
          {
LABEL_34:
            v49 = -1;
          }

          else
          {
            v47 = v46 - v177;
            while (v23 >> v47 != v44 >> v47 || v22 >> v47 != v45 >> v47)
            {
              v48 = v47++ < v46;
              if (!v48)
              {
                goto LABEL_34;
              }
            }

            v53 = v46 - v47;
            if (v53 >= v177)
            {
              v49 = v53;
            }

            else
            {
              v49 = v53 + 1;
            }
          }

          v51 = 0;
          v52 = *(v10 + 32 * v49 + 8 * ((v44 >> (v46 - v49)) & 1 | (2 * ((v45 >> (v46 - v49)) & 1))) + 24552);
          v42 = *(v52 + 1);
          v50 = *(v52 + 2);
        }

        else
        {
          v51 = a6 != 3;
          v52 = v181;
        }

        if (v15 < v38)
        {
          v54 = **(v52 + 17);
          v55 = *&v52[8 * v51 + 136];
          result = (v41 - v50);
          v56 = v38 - v15;
          v57 = &a9[v15];
          v58 = (**(v55 + 7) + (*(v55 + 8) + *v55 * result + v40 - v42) * *(*(v55 + 7) + 16));
          do
          {
            *v57++ = *v58;
            v58 += v54;
            --v56;
          }

          while (v56);
        }
      }

      if ((v19 & 0xF0) != 0)
      {
        v59 = a2 - 1;
        v60 = *(v181 + 1);
        if (v60 >= a2 || (v61 = *v181, v60 + v61 < a2) || (v69 = *(v181 + 2), v69 > a3) || v69 + v61 <= a3)
        {
          v62 = v59 - v175;
          v63 = *(v21 + 2113);
          if (v177 < 0)
          {
LABEL_54:
            v65 = -1;
          }

          else
          {
            v64 = v63 - v177;
            while (v23 >> v64 != v62 >> v64)
            {
              v48 = v64++ < v63;
              if (!v48)
              {
                goto LABEL_54;
              }
            }

            v66 = v63 - v64;
            if (v66 >= v177)
            {
              v65 = v66;
            }

            else
            {
              v65 = v66 + 1;
            }
          }

          v67 = 0;
          v68 = *(v10 + 32 * v65 + 8 * ((v62 >> (v63 - v65)) & 1 | (2 * ((v22 >> (v63 - v65)) & 1))) + 24552);
          v60 = *(v68 + 1);
          v69 = *(v68 + 2);
        }

        else
        {
          v67 = a6 != 3;
          v68 = v181;
        }

        if (a8 != 31)
        {
          v70 = **(v68 + 17);
          v71 = *&v68[8 * v67 + 136];
          v72 = (**(v71 + 7) + (*(v71 + 8) + v59 - v60 + *v71 * (a3 - v69)) * *(*(v71 + 7) + 16));
          if (v15 <= 1)
          {
            v73 = 1;
          }

          else
          {
            v73 = v15;
          }

          v74 = a9;
          do
          {
            *v74++ = *v72;
            v72 += v70;
            --v73;
          }

          while (v73);
        }

        v173 = 1;
      }

      else
      {
        v173 = 0;
      }
    }

    v75 = v19 & 0x1E00;
    if (v20 == v178)
    {
      if ((v19 & 0x1E00) != 0)
      {
        result = memcpy(v37, (v176 + 4 * v172 + 2 * v23), 2 * v15);
        v39 = v181;
        v19 = v180;
      }

      if ((v19 & 0x1E000) == 0)
      {
        v90 = 0;
        goto LABEL_112;
      }

      v76 = v15;
      v77 = (v176 + 4 * v172 + 2 * v23 + 2 * v15);
    }

    else
    {
      if ((v19 & 0x1E00) != 0)
      {
        v78 = v20 - 1;
        v79 = *(v39 + 1);
        if (v79 > a2 || (v80 = *v39, v79 + v80 <= a2) || (v81 = *(v39 + 2), v81 >= v20) || v81 + v80 < v20)
        {
          v84 = *(v10 + 24528);
          v85 = v78 - v84;
          v86 = *(*(v10 + 14856) + 2113);
          if (v177 < 0)
          {
LABEL_82:
            v89 = -1;
          }

          else
          {
            v87 = v20 - v84;
            v88 = v86 - v177;
            while (v87 >> v88 != v85 >> v88)
            {
              v48 = v88++ < v86;
              if (!v48)
              {
                goto LABEL_82;
              }
            }

            if (v86 - v88 >= v177)
            {
              v89 = v86 - v88;
            }

            else
            {
              v89 = v86 - v88 + 1;
            }
          }

          v82 = 0;
          v83 = *(v10 + 32 * v89 + 8 * (((a2 - *v179) >> (v86 - v89)) & 1 | (2 * ((v85 >> (v86 - v89)) & 1))) + 24552);
          v79 = *(v83 + 1);
          v81 = *(v83 + 2);
        }

        else
        {
          v82 = a6 != 3;
          v83 = v39;
        }

        v91 = v78 - v81;
        v92 = *&v83[8 * v82 + 136];
        result = memcpy(v37, (**(v92 + 7) + (*(v92 + 8) + a2 - v79 + *v92 * v91) * *(*(v92 + 7) + 16)), 2 * v15);
        v19 = v180;
        v39 = v181;
        v20 = a3;
        v22 = a3 - v178;
      }

      if ((v19 & 0x1E000) == 0)
      {
        v90 = 0;
        if ((v19 & 0x100) != 0)
        {
          goto LABEL_113;
        }

        goto LABEL_135;
      }

      v93 = v15 + a2;
      v94 = v20 - 1;
      v95 = *(v39 + 1);
      if (v95 > v15 + a2 || (v96 = *v39, v95 + v96 <= v93) || (v97 = *(v39 + 2), v97 >= v20) || v97 + v96 < v20)
      {
        v100 = *(v10 + 24528);
        v101 = v93 - *v179;
        v102 = v94 - v100;
        v103 = *(*(v10 + 14856) + 2113);
        if (v177 < 0)
        {
LABEL_100:
          v106 = -1;
        }

        else
        {
          v104 = v20 - v100;
          v105 = v103 - v177;
          while ((a2 - *v179) >> v105 != v101 >> v105 || v104 >> v105 != v102 >> v105)
          {
            v48 = v105++ < v103;
            if (!v48)
            {
              goto LABEL_100;
            }
          }

          if (v103 - v105 >= v177)
          {
            v106 = v103 - v105;
          }

          else
          {
            v106 = v103 - v105 + 1;
          }
        }

        v98 = 0;
        v99 = *(v10 + 32 * v106 + 8 * ((v101 >> (v103 - v106)) & 1 | (2 * ((v102 >> (v103 - v106)) & 1))) + 24552);
        v95 = *(v99 + 1);
        v97 = *(v99 + 2);
      }

      else
      {
        v98 = a6 != 3;
        v99 = v39;
      }

      v107 = v93 - v95;
      v108 = *&v99[8 * v98 + 136];
      v77 = (**(v108 + 7) + (*(v108 + 8) + v107 + *v108 * (v94 - v97)) * *(*(v108 + 7) + 16));
      v76 = v15;
    }

    result = memcpy(&v37[2 * v76], v77, 2 * v76);
    v90 = 1;
    LOWORD(v19) = v180;
    v39 = v181;
LABEL_112:
    v20 = a3;
    v22 = a3 - v178;
    if ((v19 & 0x100) != 0)
    {
LABEL_113:
      if (a2 == v175 || v20 == v178)
      {
        v120 = v23 + 2 * v172;
        if (v23 <= 0)
        {
          v120 = 0;
        }

        v121 = (v176 + 2 * v22 + 2 * v120 - 2);
      }

      else
      {
        v109 = a2 - 1;
        v110 = v20 - 1;
        v111 = *(v39 + 1);
        if (v111 >= a2 || (v112 = *v39, v111 + v112 < a2) || (v122 = *(v39 + 2), v122 >= v20) || v122 + v112 < v20)
        {
          v113 = *(v10 + 24528);
          v114 = v109 - *v179;
          v115 = v110 - v113;
          v116 = *(*(v10 + 14856) + 2113);
          if (v177 < 0)
          {
LABEL_122:
            v119 = -1;
          }

          else
          {
            v117 = v20 - v113;
            v118 = v116 - v177;
            while (1)
            {
              result = (v114 >> v118);
              if ((a2 - *v179) >> v118 == result)
              {
                result = (v115 >> v118);
                if (v117 >> v118 == result)
                {
                  break;
                }
              }

              v48 = v118++ < v116;
              if (!v48)
              {
                goto LABEL_122;
              }
            }

            if (v116 - v118 >= v177)
            {
              v119 = v116 - v118;
            }

            else
            {
              v119 = v116 - v118 + 1;
            }
          }

          v123 = 0;
          v39 = *(v10 + 32 * v119 + 8 * ((v114 >> (v116 - v119)) & 1 | (2 * ((v115 >> (v116 - v119)) & 1))) + 24552);
          v111 = *(v39 + 1);
          v122 = *(v39 + 2);
        }

        else
        {
          v123 = a6 != 3;
        }

        v124 = v109 - v111;
        v125 = *&v39[8 * v123 + 136];
        v121 = (**(v125 + 7) + (*(v125 + 8) + v124 + *v125 * (v110 - v122)) * *(*(v125 + 7) + 16));
      }

      *(a9 - 1) = *v121;
    }

LABEL_135:
    if (!v174)
    {
      if (v173)
      {
        v126 = &a9[v15 - 1];
      }

      else if ((v19 & 0x100) != 0)
      {
        v126 = (a9 - 1);
      }

      else
      {
        v126 = v37;
        if (!v75)
        {
          v126 = &v37[2 * v15];
        }
      }

      v127 = *v126;
      v128 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v129 = vdupq_n_s64(v15 - 1);
      v130 = &a9[v15 + 4];
      v131 = xmmword_27750D2F0;
      v132 = xmmword_27750D300;
      v133 = xmmword_27750D310;
      v134 = xmmword_27750D320;
      v135 = vdupq_n_s64(8uLL);
      do
      {
        v136 = vmovn_s64(vcgeq_u64(v129, v134));
        if (vuzp1_s8(vuzp1_s16(v136, *v129.i8), *v129.i8).u8[0])
        {
          *(v130 - 4) = v127;
        }

        if (vuzp1_s8(vuzp1_s16(v136, *&v129), *&v129).i8[1])
        {
          *(v130 - 3) = v127;
        }

        if (vuzp1_s8(vuzp1_s16(*&v129, vmovn_s64(vcgeq_u64(v129, *&v133))), *&v129).i8[2])
        {
          *(v130 - 2) = v127;
          *(v130 - 1) = v127;
        }

        v137 = vmovn_s64(vcgeq_u64(v129, v132));
        if (vuzp1_s8(*&v129, vuzp1_s16(v137, *&v129)).i32[1])
        {
          *v130 = v127;
        }

        if (vuzp1_s8(*&v129, vuzp1_s16(v137, *&v129)).i8[5])
        {
          v130[1] = v127;
        }

        if (vuzp1_s8(*&v129, vuzp1_s16(*&v129, vmovn_s64(vcgeq_u64(v129, *&v131)))).i8[6])
        {
          v130[2] = v127;
          v130[3] = v127;
        }

        v132 = vaddq_s64(v132, v135);
        v133 = vaddq_s64(v133, v135);
        v134 = vaddq_s64(v134, v135);
        v130 += 8;
        v131 = vaddq_s64(v131, v135);
        v128 -= 8;
      }

      while (v128);
    }

    if (!v173)
    {
      v138 = a9[v15];
      v139 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v140 = vdupq_n_s64(v15 - 1);
      v141 = xmmword_27750D2F0;
      v142 = xmmword_27750D300;
      v143 = xmmword_27750D310;
      v144 = xmmword_27750D320;
      v145 = a9 + 4;
      v146 = vdupq_n_s64(8uLL);
      do
      {
        v147 = vmovn_s64(vcgeq_u64(v140, v144));
        if (vuzp1_s8(vuzp1_s16(v147, *v140.i8), *v140.i8).u8[0])
        {
          *(v145 - 4) = v138;
        }

        if (vuzp1_s8(vuzp1_s16(v147, *&v140), *&v140).i8[1])
        {
          *(v145 - 3) = v138;
        }

        if (vuzp1_s8(vuzp1_s16(*&v140, vmovn_s64(vcgeq_u64(v140, *&v143))), *&v140).i8[2])
        {
          *(v145 - 2) = v138;
          *(v145 - 1) = v138;
        }

        v148 = vmovn_s64(vcgeq_u64(v140, v142));
        if (vuzp1_s8(*&v140, vuzp1_s16(v148, *&v140)).i32[1])
        {
          *v145 = v138;
        }

        if (vuzp1_s8(*&v140, vuzp1_s16(v148, *&v140)).i8[5])
        {
          v145[1] = v138;
        }

        if (vuzp1_s8(*&v140, vuzp1_s16(*&v140, vmovn_s64(vcgeq_u64(v140, *&v141)))).i8[6])
        {
          v145[2] = v138;
          v145[3] = v138;
        }

        v142 = vaddq_s64(v142, v146);
        v143 = vaddq_s64(v143, v146);
        v144 = vaddq_s64(v144, v146);
        v145 += 8;
        v141 = vaddq_s64(v141, v146);
        v139 -= 8;
      }

      while (v139);
    }

    if ((v19 & 0x100) == 0)
    {
      *(a9 - 1) = *a9;
    }

    if (!v75)
    {
      v149 = *(a9 - 1);
      v150 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v151 = vdupq_n_s64(v15 - 1);
      v152 = &a9[v38 + 4];
      v153 = xmmword_27750D2F0;
      v154 = xmmword_27750D300;
      v155 = xmmword_27750D310;
      v156 = xmmword_27750D320;
      v157 = vdupq_n_s64(8uLL);
      do
      {
        v158 = vmovn_s64(vcgeq_u64(v151, v156));
        if (vuzp1_s8(vuzp1_s16(v158, *v151.i8), *v151.i8).u8[0])
        {
          *(v152 - 4) = v149;
        }

        if (vuzp1_s8(vuzp1_s16(v158, *&v151), *&v151).i8[1])
        {
          *(v152 - 3) = v149;
        }

        if (vuzp1_s8(vuzp1_s16(*&v151, vmovn_s64(vcgeq_u64(v151, *&v155))), *&v151).i8[2])
        {
          *(v152 - 2) = v149;
          *(v152 - 1) = v149;
        }

        v159 = vmovn_s64(vcgeq_u64(v151, v154));
        if (vuzp1_s8(*&v151, vuzp1_s16(v159, *&v151)).i32[1])
        {
          *v152 = v149;
        }

        if (vuzp1_s8(*&v151, vuzp1_s16(v159, *&v151)).i8[5])
        {
          v152[1] = v149;
        }

        if (vuzp1_s8(*&v151, vuzp1_s16(*&v151, vmovn_s64(vcgeq_u64(v151, *&v153)))).i8[6])
        {
          v152[2] = v149;
          v152[3] = v149;
        }

        v154 = vaddq_s64(v154, v157);
        v155 = vaddq_s64(v155, v157);
        v156 = vaddq_s64(v156, v157);
        v152 += 8;
        v153 = vaddq_s64(v153, v157);
        v150 -= 8;
      }

      while (v150);
    }

    if ((v90 & 1) == 0)
    {
      v160 = *&v37[2 * v15 - 2];
      v161 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v162 = vdupq_n_s64(v15 - 1);
      v163 = &a9[v38 + 4 + v15];
      v164 = xmmword_27750D2F0;
      v165 = xmmword_27750D300;
      v166 = xmmword_27750D310;
      v167 = xmmword_27750D320;
      v168 = vdupq_n_s64(8uLL);
      do
      {
        v169 = vmovn_s64(vcgeq_u64(v162, v167));
        if (vuzp1_s8(vuzp1_s16(v169, *v162.i8), *v162.i8).u8[0])
        {
          *(v163 - 4) = v160;
        }

        if (vuzp1_s8(vuzp1_s16(v169, *&v162), *&v162).i8[1])
        {
          *(v163 - 3) = v160;
        }

        if (vuzp1_s8(vuzp1_s16(*&v162, vmovn_s64(vcgeq_u64(v162, *&v166))), *&v162).i8[2])
        {
          *(v163 - 2) = v160;
          *(v163 - 1) = v160;
        }

        v170 = vmovn_s64(vcgeq_u64(v162, v165));
        if (vuzp1_s8(*&v162, vuzp1_s16(v170, *&v162)).i32[1])
        {
          *v163 = v160;
        }

        if (vuzp1_s8(*&v162, vuzp1_s16(v170, *&v162)).i8[5])
        {
          v163[1] = v160;
        }

        if (vuzp1_s8(*&v162, vuzp1_s16(*&v162, vmovn_s64(vcgeq_u64(v162, *&v164)))).i8[6])
        {
          v163[2] = v160;
          v163[3] = v160;
        }

        v165 = vaddq_s64(v165, v168);
        v166 = vaddq_s64(v166, v168);
        v167 = vaddq_s64(v167, v168);
        v163 += 8;
        v164 = vaddq_s64(v164, v168);
        v161 -= 8;
      }

      while (v161);
    }

    *(v10 + 24794) = 1;
    return result;
  }

  v25 = 128 << *(*(result + 14856) + 222);
  v26 = vdupq_n_s64(((4 << a8) | 1) - 1);
  v27 = ((4 << a8) + 8) & 0xFFFFFFFFFFFFFFF8;
  v28 = xmmword_27750D2F0;
  v29 = xmmword_27750D300;
  v30 = xmmword_27750D310;
  v31 = xmmword_27750D320;
  v32 = a9 + 3;
  v33 = vdupq_n_s64(8uLL);
  do
  {
    v34 = vmovn_s64(vcgeq_u64(v26, v31));
    if (vuzp1_s8(vuzp1_s16(v34, *v26.i8), *v26.i8).u8[0])
    {
      *(v32 - 4) = v25;
    }

    if (vuzp1_s8(vuzp1_s16(v34, *&v26), *&v26).i8[1])
    {
      *(v32 - 3) = v25;
    }

    if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v30))), *&v26).i8[2])
    {
      *(v32 - 2) = v25;
      *(v32 - 1) = v25;
    }

    v35 = vmovn_s64(vcgeq_u64(v26, v29));
    if (vuzp1_s8(*&v26, vuzp1_s16(v35, *&v26)).i32[1])
    {
      *v32 = v25;
    }

    if (vuzp1_s8(*&v26, vuzp1_s16(v35, *&v26)).i8[5])
    {
      v32[1] = v25;
    }

    if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v28)))).i8[6])
    {
      v32[2] = v25;
      v32[3] = v25;
    }

    v29 = vaddq_s64(v29, v33);
    v30 = vaddq_s64(v30, v33);
    v31 = vaddq_s64(v31, v33);
    v32 += 8;
    v28 = vaddq_s64(v28, v33);
    v27 -= 8;
  }

  while (v27);
  return result;
}

uint64_t sub_27748A06C(uint64_t result, int a2, int a3, int a4, uint64_t a5, char a6, int a7, unsigned int a8)
{
  v9 = *(result + 16);
  v8 = *(result + 20);
  v10 = (((2 << a6) + a2 - v9) >> a8);
  v11 = (((2 << a6) + a3 - v8) >> a8);
  v12 = (a7 & 0x1E000) == 0 || v10 <= 0;
  v13 = !v12;
  v15 = (a7 & 0xF) != 0 && v11 > 0;
  if ((v13 & 1) != 0 || v15)
  {
    v16 = *(result + 24524);
    if (v13)
    {
      v17 = *(result + 24528);
      v18 = a3 - v17;
      if (a3 != v17)
      {
        v19 = v9 + (-1 << a8);
        v20 = a3 - 1;
        if (a8 && *(result + 8) == 1 && *(a5 + 8) == a3)
        {
          v21 = (result + 24552);
        }

        else
        {
          v22 = v19 - v16;
          v23 = v20 - v17;
          v24 = *(*(result + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_26:
            v26 = -1;
          }

          else
          {
            v25 = v24 - a4;
            while ((a2 - v16) >> v25 != v22 >> v25 || v18 >> v25 != v23 >> v25)
            {
              v12 = v25++ < v24;
              if (!v12)
              {
                goto LABEL_26;
              }
            }

            v26 = v24 - v25;
            if (v24 - v25 < a4)
            {
              ++v26;
            }
          }

          v21 = (result + 32 * v26 + 8 * ((v22 >> (v24 - v26)) & 1 | (2 * ((v23 >> (v24 - v26)) & 1))) + 24552);
        }

        v27 = *v21;
        v28 = *(v27 + 4);
        v29 = v20 - *(v27 + 8);
        v30 = *(v27 + 136);
        v31 = (**(v30 + 16 * a8 + 56) + (*(v30 + 16 * a8 + 64) - v28 + v19 + (*(v30 + a8) << a8) * (v29 >> a8)) * *(*(v30 + 16 * a8 + 56) + 16));
        v34 = *v31;
        v32 = v31 + 4;
        v33 = v34;
        v35 = vdupq_n_s64(v10 - 1);
        v36 = (v10 + 7) & 0xFFFFFFF8;
        v37 = xmmword_27750D2F0;
        v38 = xmmword_27750D300;
        v39 = xmmword_27750D310;
        v40 = xmmword_27750D320;
        v41 = vdupq_n_s64(8uLL);
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v35, v40));
          if (vuzp1_s8(vuzp1_s16(v42, *v35.i8), *v35.i8).u8[0])
          {
            *(v32 - 3) = v33;
          }

          if (vuzp1_s8(vuzp1_s16(v42, *&v35), *&v35).i8[1])
          {
            *(v32 - 2) = v33;
          }

          if (vuzp1_s8(vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, *&v39))), *&v35).i8[2])
          {
            *(v32 - 1) = v33;
            *v32 = v33;
          }

          v43 = vmovn_s64(vcgeq_u64(v35, v38));
          if (vuzp1_s8(*&v35, vuzp1_s16(v43, *&v35)).i32[1])
          {
            v32[1] = v33;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(v43, *&v35)).i8[5])
          {
            v32[2] = v33;
          }

          if (vuzp1_s8(*&v35, vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, *&v37)))).i8[6])
          {
            v32[3] = v33;
            v32[4] = v33;
          }

          v38 = vaddq_s64(v38, v41);
          v39 = vaddq_s64(v39, v41);
          v40 = vaddq_s64(v40, v41);
          v32 += 8;
          v37 = vaddq_s64(v37, v41);
          v36 -= 8;
        }

        while (v36);
      }
    }

    v44 = a2 - v16;
    if (a2 == v16)
    {
      v15 = 0;
    }

    if (v15)
    {
      v45 = (-1 << a8) + a2;
      v46 = v8 - 1;
      if (a8 && *(result + 8) == 1 && *(a5 + 4) == a2)
      {
        v47 = (result + 24552);
      }

      else
      {
        v48 = *(result + 24528);
        v49 = v45 - v16;
        v50 = v46 - v48;
        v51 = *(*(result + 14856) + 2113);
        if (a4 < 0)
        {
LABEL_56:
          v54 = -1;
        }

        else
        {
          v52 = a3 - v48;
          v53 = v51 - a4;
          while (v44 >> v53 != v49 >> v53 || v52 >> v53 != v50 >> v53)
          {
            v12 = v53++ < v51;
            if (!v12)
            {
              goto LABEL_56;
            }
          }

          v54 = v51 - v53;
          if (v51 - v53 < a4)
          {
            ++v54;
          }
        }

        v47 = (result + 32 * v54 + 8 * ((v49 >> (v51 - v54)) & 1 | (2 * ((v50 >> (v51 - v54)) & 1))) + 24552);
      }

      v55 = *v47;
      v56 = *(v55 + 136);
      v57 = *(v56 + a8) << a8;
      v58 = (**(v56 + 16 * a8 + 56) + (*(v56 + 16 * a8 + 64) - *(v55 + 4) + v45 + v57 * ((v46 - *(v55 + 8)) >> a8)) * *(*(v56 + 16 * a8 + 56) + 16));
      v59 = v57 >> a8;
      v60 = *v58;
      v61 = (v11 + 7) & 0xFFFFFFF8;
      v62 = vdupq_n_s64(v11 - 1);
      v63 = 8 * (v57 >> a8);
      v64 = 7 * (v57 >> a8);
      result = 4 * v59;
      v65 = xmmword_27750D2F0;
      v66 = xmmword_27750D300;
      v67 = xmmword_27750D310;
      v68 = xmmword_27750D320;
      v69 = vdupq_n_s64(8uLL);
      do
      {
        v70 = vmovn_s64(vcgeq_u64(v62, v68));
        if (vuzp1_s8(vuzp1_s16(v70, *v62.i8), *v62.i8).u8[0])
        {
          v58[v59] = v60;
        }

        if (vuzp1_s8(vuzp1_s16(v70, *&v62), *&v62).i8[1])
        {
          v58[2 * v59] = v60;
        }

        if (vuzp1_s8(vuzp1_s16(*&v62, vmovn_s64(vcgeq_u64(v62, *&v67))), *&v62).i8[2])
        {
          v58[3 * v59] = v60;
          v58[4 * v59] = v60;
        }

        v71 = vmovn_s64(vcgeq_u64(v62, v66));
        if (vuzp1_s8(*&v62, vuzp1_s16(v71, *&v62)).i32[1])
        {
          v58[5 * v59] = v60;
        }

        if (vuzp1_s8(*&v62, vuzp1_s16(v71, *&v62)).i8[5])
        {
          v58[6 * v59] = v60;
        }

        if (vuzp1_s8(*&v62, vuzp1_s16(*&v62, vmovn_s64(vcgeq_u64(v62, *&v65)))).i8[6])
        {
          v58[v64] = v60;
          v58[v63] = v60;
        }

        v66 = vaddq_s64(v66, v69);
        v67 = vaddq_s64(v67, v69);
        v68 = vaddq_s64(v68, v69);
        v58 = (v58 + v63 * 2);
        v65 = vaddq_s64(v65, v69);
        v61 -= 8;
      }

      while (v61);
    }
  }

  return result;
}

uint64_t sub_27748A54C(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      if (result >= 1)
      {
        v7 = 0;
        do
        {
          *(a6 + 2 * v7) = *(a4 + 2 * v7);
          v7 += 2;
        }

        while (v7 < result);
      }

      a6 += 2 * a5;
      a4 += 2 * a3;
    }
  }

  return result;
}

void *sub_27748A59C(void *result, int a2, uint64_t a3, char *__src, uint64_t a5, char *__dst)
{
  if (a2)
  {
    v8 = 2 * a5;
    v9 = 2 * a3;
    v10 = 2 * result;
    v11 = a2;
    do
    {
      --v11;
      result = memcpy(__dst, __src, v10);
      __dst += v8;
      __src += v9;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_27748A608(uint64_t a1, int a2, int a3, int a4, unsigned __int8 *a5, unsigned int a6, uint64_t a7, int a8, int a9, _WORD *a10)
{
  if (!a8)
  {
    v24 = 128 << *(*(a1 + 14856) + 223);

    return memset(a10 - 1, v24, (8 << a9) | 2);
  }

  v15 = (a1 + 24524);
  v16 = 4 << a9;
  if ((*(a1 + 24793) & 1) == 0 && (*v15 == a2 || *(a1 + 24528) == a3))
  {
    sub_277489098(a1, 1u);
  }

  v17 = a10 + v16;
  result = sub_27748A06C(a1, a2, a3, a4, a5, a9 + 1, a8, 1u);
  v19 = a3;
  v20 = *(a1 + 14856);
  v141 = *(v20 + 2117);
  v21 = *v15;
  v145 = *(a1 + 24768);
  v146 = (a1 + 24524);
  v144 = a2 - v21;
  v22 = *(a1 + 24528);
  v147 = a3 - v22;
  v140 = v21;
  if (v21 == a2)
  {
    v23 = (a8 & 0xF0) != 0;
    if ((a8 & 0xF0) != 0)
    {
      result = memcpy(a10, (v145 + v147), 2 << a9);
      v19 = a3;
    }

    if ((a8 & 0xF) != 0)
    {
      result = memcpy(a10 + (2 << a9), (v145 + v147 + (2 << a9)), 2 << a9);
      v19 = a3;
      v143 = 1;
    }

    else
    {
      v143 = 0;
    }
  }

  else
  {
    v143 = (a8 & 0xF) != 0;
    if ((a8 & 0xF) != 0)
    {
      v25 = a2 - 2;
      LODWORD(v26) = 2 << a9;
      v27 = (2 << a9) + a3;
      v28 = *(a5 + 1);
      if (*(a1 + 8) == 1 && v28 == a2)
      {
        v29 = 0;
        v30 = *(a1 + 24552);
      }

      else
      {
        result = a6;
        if (v28 > v25 || (v31 = *a5, v28 + v31 <= v25) || (v32 = *(a5 + 2), v32 > v27) || (v33 = v32 + v31, v30 = a5, v33 <= v27))
        {
          v34 = v25 - v140;
          v35 = v27 - v22;
          v36 = *(v20 + 2113);
          if (a4 < 0)
          {
LABEL_28:
            v39 = -1;
          }

          else
          {
            v37 = v36 - a4;
            while (v144 >> v37 != v34 >> v37 || v147 >> v37 != v35 >> v37)
            {
              v38 = v37++ < v36;
              if (!v38)
              {
                goto LABEL_28;
              }
            }

            v39 = v36 - v37;
            if (v39 < a4)
            {
              ++v39;
            }
          }

          v30 = *(a1 + 32 * v39 + 8 * ((v34 >> (v36 - v39)) & 1 | (2 * ((v35 >> (v36 - v39)) & 1))) + 24552);
        }

        if (v30 == a5)
        {
          v29 = a6;
        }

        else
        {
          v29 = 0;
        }
      }

      if (v26 < v16)
      {
        v40 = 2 * *(*(v30 + 17) + 1);
        v41 = *&v30[8 * v29 + 136];
        result = *(v30 + 1);
        v26 = v26;
        v42 = (**(v41 + 72) + (*(v41 + 80) + v25 - result + 2 * *(v41 + 1) * ((v27 - *(v30 + 2)) >> 1)) * *(*(v41 + 72) + 16) + 1);
        do
        {
          v43 = a10 + v26;
          *v43 = *(v42 - 1);
          v43[1] = *v42;
          v26 += 2;
          v42 += v40;
        }

        while (v26 < v16);
      }
    }

    if ((a8 & 0xF0) != 0)
    {
      v44 = a2 - 2;
      v45 = *(a5 + 1);
      if (*(a1 + 8) == 1 && v45 == a2)
      {
        v54 = 0;
        v49 = *(a1 + 24552);
      }

      else
      {
        if (v45 > v44 || (v47 = *a5, v45 + v47 <= v44) || (v48 = *(a5 + 2), v48 > a3) || (v49 = a5, v48 + v47 <= a3))
        {
          v50 = v44 - *v146;
          v51 = *(*(a1 + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_51:
            v53 = -1;
          }

          else
          {
            v52 = v51 - a4;
            while ((a2 - *v146) >> v52 != v50 >> v52)
            {
              v38 = v52++ < v51;
              if (!v38)
              {
                goto LABEL_51;
              }
            }

            v53 = v51 - v52;
            if (v51 - v52 < a4)
            {
              ++v53;
            }
          }

          v49 = *(a1 + 32 * v53 + 8 * ((v50 >> (v51 - v53)) & 1 | (2 * (((a3 - *(a1 + 24528)) >> (v51 - v53)) & 1))) + 24552);
        }

        if (v49 == a5)
        {
          v54 = a6;
        }

        else
        {
          v54 = 0;
        }
      }

      v55 = (2 << a9);
      if (v55 >= 1)
      {
        v56 = 0;
        v57 = 2 * *(*(v49 + 17) + 1);
        v58 = *&v49[8 * v54 + 136];
        v59 = (**(v58 + 72) + (*(v58 + 80) + v44 - *(v49 + 1) + 2 * *(v58 + 1) * ((a3 - *(v49 + 2)) >> 1)) * *(*(v58 + 72) + 16) + 1);
        do
        {
          v60 = &a10[v56 / 2];
          *v60 = *(v59 - 1);
          v60[1] = *v59;
          v56 += 2;
          v59 += v57;
        }

        while (v56 < v55);
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v22 == v19)
  {
    if ((a8 & 0x1E00) != 0)
    {
      result = memcpy(v17, (v145 + 2 * v141 + v144), 2 << a9);
    }

    if ((a8 & 0x1E000) == 0)
    {
      v77 = 0;
LABEL_111:
      v19 = a3;
      goto LABEL_112;
    }

    v61 = 2 << a9;
    v62 = (v145 + 2 * v141 + v144 + v61);
    v63 = &v17[v61];
LABEL_110:
    result = memcpy(v63, v62, v61);
    v77 = 1;
    goto LABEL_111;
  }

  if ((a8 & 0x1E00) != 0)
  {
    v64 = v19 - 1;
    if (*(a1 + 8) == 1 && *(a5 + 2) == v19)
    {
      v65 = 0;
      v66 = *(a1 + 24552);
    }

    else
    {
      v67 = *(a5 + 1);
      if (v67 > a2 || (v68 = *a5, v67 + v68 <= a2) || (v69 = *(a5 + 2), v69 >= v19) || (v70 = v69 + v68, v66 = a5, v70 < v19))
      {
        v71 = *(a1 + 24528);
        v72 = v64 - v71;
        v73 = *(*(a1 + 14856) + 2113);
        if (a4 < 0)
        {
LABEL_81:
          v76 = -1;
        }

        else
        {
          v74 = v19 - v71;
          v75 = v73 - a4;
          while (v74 >> v75 != v72 >> v75)
          {
            v38 = v75++ < v73;
            if (!v38)
            {
              goto LABEL_81;
            }
          }

          v76 = v73 - v75;
          if (v73 - v75 < a4)
          {
            ++v76;
          }
        }

        v66 = *(a1 + 32 * v76 + 8 * (((a2 - *v146) >> (v73 - v76)) & 1 | (2 * ((v72 >> (v73 - v76)) & 1))) + 24552);
      }

      v65 = a6;
      if (v66 != a5)
      {
        v65 = 0;
      }
    }

    v78 = *(v66 + 1);
    v79 = v64 - *(v66 + 2);
    v80 = *&v66[8 * v65 + 136];
    result = memcpy(v17, (**(v80 + 72) + (*(v80 + 80) - v78 + a2 + 2 * *(v80 + 1) * (v79 >> 1)) * *(*(v80 + 72) + 16)), 2 << a9);
    v19 = a3;
  }

  if ((a8 & 0x1E000) != 0)
  {
    v81 = 2 << a9;
    v82 = (2 << a9) + a2;
    v83 = v19 - 1;
    if (*(a1 + 8) == 1 && *(a5 + 2) == v19)
    {
      v84 = 0;
      v85 = *(a1 + 24552);
    }

    else
    {
      v86 = *(a5 + 1);
      if (v86 > v82 || (v87 = *a5, v86 + v87 <= v82) || (v88 = *(a5 + 2), v88 >= v19) || (v89 = v88 + v87, v85 = a5, v89 < v19))
      {
        v90 = *(a1 + 24528);
        v91 = v82 - *v146;
        v92 = v83 - v90;
        v93 = *(*(a1 + 14856) + 2113);
        if (a4 < 0)
        {
LABEL_102:
          v96 = -1;
        }

        else
        {
          v94 = v19 - v90;
          v95 = v93 - a4;
          while ((a2 - *v146) >> v95 != v91 >> v95 || v94 >> v95 != v92 >> v95)
          {
            v38 = v95++ < v93;
            if (!v38)
            {
              goto LABEL_102;
            }
          }

          v96 = v93 - v95;
          if (v93 - v95 < a4)
          {
            ++v96;
          }
        }

        v85 = *(a1 + 32 * v96 + 8 * ((v91 >> (v93 - v96)) & 1 | (2 * ((v92 >> (v93 - v96)) & 1))) + 24552);
      }

      v84 = a6;
      if (v85 != a5)
      {
        v84 = 0;
      }
    }

    v97 = *(v85 + 1);
    v98 = v83 - *(v85 + 2);
    v99 = *&v85[8 * v84 + 136];
    v62 = (**(v99 + 72) + (*(v99 + 80) - v97 + v82 + 2 * *(v99 + 1) * (v98 >> 1)) * *(*(v99 + 72) + 16));
    v61 = v81;
    v63 = &v17[v81];
    goto LABEL_110;
  }

  v77 = 0;
LABEL_112:
  if ((a8 & 0x100) != 0)
  {
    if (v140 == a2 || v22 == v19)
    {
      v105 = v144 + 2 * v141;
      if (v144 <= 0)
      {
        v105 = 0;
      }

      v106 = v145 + v147 + v105;
      *(a10 - 2) = *(v106 - 2);
      v107 = (v106 - 1);
    }

    else
    {
      v100 = a2 - 2;
      v101 = v19 - 1;
      v102 = *(a5 + 1);
      if (*(a1 + 8) == 1 && (v102 == a2 || *(a5 + 2) == v19))
      {
        v103 = 0;
        v104 = *(a1 + 24552);
      }

      else
      {
        if (v102 > v100 || (v108 = *a5, v102 + v108 <= v100) || (v109 = *(a5 + 2), v109 >= v19) || (v110 = v109 + v108, v104 = a5, v110 < v19))
        {
          v111 = *(a1 + 24528);
          v112 = v100 - *v146;
          v113 = v101 - v111;
          v114 = *(*(a1 + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_131:
            v117 = -1;
          }

          else
          {
            v115 = v19 - v111;
            v116 = v114 - a4;
            while (1)
            {
              if ((a2 - *v146) >> v116 == v112 >> v116)
              {
                result = (v115 >> v116);
                if (result == v113 >> v116)
                {
                  break;
                }
              }

              result = (v116 + 1);
              v38 = v116++ < v114;
              if (!v38)
              {
                goto LABEL_131;
              }
            }

            v117 = v114 - v116;
            if (v114 - v116 < a4)
            {
              ++v117;
            }
          }

          v104 = *(a1 + 32 * v117 + 8 * ((v112 >> (v114 - v117)) & 1 | (2 * ((v113 >> (v114 - v117)) & 1))) + 24552);
        }

        v103 = a6;
        if (v104 != a5)
        {
          v103 = 0;
        }
      }

      v118 = *(v104 + 2);
      v119 = *(v104 + 1);
      v120 = *&v104[8 * v103 + 136];
      v121 = (**(v120 + 72) + (*(v120 + 80) + v100 - v119 + 2 * *(v120 + 1) * ((v101 - v118) >> 1)) * *(*(v120 + 72) + 16));
      v122 = *v121;
      v107 = v121 + 1;
      *(a10 - 2) = v122;
    }

    *(a10 - 1) = *v107;
  }

  v123 = 1 << a9;
  if (!v143)
  {
    if (v23)
    {
      v124 = a10 + (2 << a9) - 2;
    }

    else if ((a8 & 0x100) != 0)
    {
      v124 = (a10 - 1);
    }

    else
    {
      v124 = v17;
      if ((a8 & 0x1E00) == 0)
      {
        v124 = &v17[2 << a9];
      }
    }

    if (v123 < 2 << a9)
    {
      v125 = (2 << a9) - v123;
      v126 = v123;
      do
      {
        LOBYTE(a10[v126]) = *v124;
        HIBYTE(a10[v126++]) = v124[1];
        --v125;
      }

      while (v125);
    }
  }

  v127 = a9 == 31 || v23;
  if ((v127 & 1) == 0)
  {
    v128 = 0;
    if (v123 <= 1)
    {
      v129 = 1;
    }

    else
    {
      v129 = v123;
    }

    v130 = *(a10 + (2 << a9));
    v131 = 1;
    do
    {
      *(a10 + (v128 >> 32)) = v130;
      *(a10 + v131) = *(a10 + ((2 << a9) | 1));
      v131 += 2;
      v128 += 0x200000000;
      --v129;
    }

    while (v129);
  }

  if ((a8 & 0x100) == 0)
  {
    *(a10 - 1) = *a10;
  }

  if (a9 != 31 && (a8 & 0x1E00) == 0)
  {
    v132 = 0;
    if (v123 <= 1)
    {
      v133 = 1;
    }

    else
    {
      v133 = v123;
    }

    v134 = 1;
    do
    {
      v17[v132 >> 32] = *(a10 - 2);
      v17[v134] = *(a10 - 1);
      v134 += 2;
      v132 += 0x200000000;
      --v133;
    }

    while (v133);
  }

  if ((v77 & 1) == 0)
  {
    v135 = 2 << a9;
    if (v123 < 2 << a9)
    {
      v136 = v135;
      v137 = &v17[v135];
      v138 = 2 * v123;
      v139 = v136 - v123;
      do
      {
        v17[v138] = *(v137 - 2);
        v17[v138 + 1] = *(v137 - 1);
        v138 += 2;
        --v139;
      }

      while (v139);
    }
  }

  *(a1 + 24795) = 1;
  return result;
}

uint64_t sub_27748B130(uint64_t result, int a2, int a3, int a4, unsigned __int8 *a5, int a6, int a7, int a8, _BYTE *a9)
{
  v10 = result;
  if (a7)
  {
    v14 = (result + 24524);
    v15 = 2 << a8;
    v16 = 2 << a8;
    v166 = a4;
    if ((*(result + 24792) & 1) == 0 && (*v14 == a2 || *(result + 24528) == a3))
    {
      result = sub_277489098(result, 0);
      a4 = v166;
    }

    v17 = *(v10 + 16);
    v18 = (v16 + a2 - v17);
    v19 = (v16 + a3 - *(v10 + 20));
    v161 = a7 & 0x1E000;
    v20 = (a7 & 0x1E000) != 0;
    if (v18 <= 0)
    {
      v20 = 0;
    }

    v163 = (a7 & 0xF) != 0;
    v21 = v19 > 0 && (a7 & 0xF) != 0;
    if (v20 || v21)
    {
      v22 = *v14;
      if (v20)
      {
        v23 = *(v10 + 24528);
        v24 = a3 - v23;
        if (a3 != v23)
        {
          v25 = v17 - 1;
          v26 = a3 - 1;
          v27 = v25 - v22;
          v28 = v26 - v23;
          v29 = *(*(v10 + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_20:
            v32 = -1;
          }

          else
          {
            v30 = v29 - a4;
            while ((a2 - v22) >> v30 != v27 >> v30 || v24 >> v30 != v28 >> v30)
            {
              v31 = v30++ < v29;
              if (!v31)
              {
                goto LABEL_20;
              }
            }

            v32 = v29 - v30;
            if (v29 - v30 < a4)
            {
              ++v32;
            }
          }

          v34 = *(v10 + 32 * v32 + 8 * ((v27 >> (v29 - v32)) & 1 | (2 * ((v28 >> (v29 - v32)) & 1))) + 24552);
          v35 = (**(*(v34 + 136) + 56) + (*(*(v34 + 136) + 64) - *(v34 + 4) + v25 + **(v34 + 136) * (v26 - *(v34 + 8))) * *(*(*(v34 + 136) + 56) + 16));
          result = memset(v35 + 1, *v35, v18);
          a4 = v166;
        }
      }

      if (a2 != v22 && v21)
      {
        v37 = *(v10 + 20) - 1;
        v38 = *(v10 + 24528);
        v39 = a2 - 1 - *v14;
        v40 = v37 - v38;
        v41 = *(*(v10 + 14856) + 2113);
        if (a4 < 0)
        {
LABEL_36:
          v44 = -1;
        }

        else
        {
          v42 = a3 - v38;
          v43 = v41 - a4;
          while ((a2 - *v14) >> v43 != v39 >> v43 || v42 >> v43 != v40 >> v43)
          {
            v31 = v43++ < v41;
            if (!v31)
            {
              goto LABEL_36;
            }
          }

          v44 = v41 - v43;
          if (v41 - v43 < a4)
          {
            ++v44;
          }
        }

        v45 = *(v10 + 32 * v44 + 8 * ((v39 >> (v41 - v44)) & 1 | (2 * ((v40 >> (v41 - v44)) & 1))) + 24552);
        v46 = *(v45 + 136);
        v47 = *v46;
        v48 = (**(v46 + 7) + (*(v46 + 8) - *(v45 + 4) + a2 - 1 + (v37 - *(v45 + 8)) * v47) * *(*(v46 + 7) + 16));
        v49 = *v48;
        v50 = (v19 + 15) & 0xFFFFFFF0;
        v51 = vdupq_n_s64(v19 - 1);
        result = 8 * v47;
        v52 = xmmword_27750D600;
        v53 = xmmword_27750D610;
        v54 = xmmword_27750D620;
        v55 = xmmword_27750D630;
        v56 = xmmword_27750D2F0;
        v57 = xmmword_27750D300;
        v58 = xmmword_27750D310;
        v59 = xmmword_27750D320;
        v60 = vdupq_n_s64(0x10uLL);
        do
        {
          v61 = vmovn_s64(vcgeq_u64(v51, v59));
          if (vuzp1_s8(vuzp1_s16(v61, *v51.i8), *v51.i8).u8[0])
          {
            v48[v47] = v49;
          }

          if (vuzp1_s8(vuzp1_s16(v61, *&v51), *&v51).i8[1])
          {
            v48[2 * v47] = v49;
          }

          if (vuzp1_s8(vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v58))), *&v51).i8[2])
          {
            v48[3 * v47] = v49;
            v48[4 * v47] = v49;
          }

          v62 = vmovn_s64(vcgeq_u64(v51, v57));
          if (vuzp1_s8(*&v51, vuzp1_s16(v62, *&v51)).i32[1])
          {
            v48[5 * v47] = v49;
          }

          if (vuzp1_s8(*&v51, vuzp1_s16(v62, *&v51)).i8[5])
          {
            v48[6 * v47] = v49;
          }

          if (vuzp1_s8(*&v51, vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v56)))).i8[6])
          {
            v48[7 * v47] = v49;
            v48[8 * v47] = v49;
          }

          v63 = vmovn_s64(vcgeq_u64(v51, v55));
          if (vuzp1_s8(vuzp1_s16(v63, *v51.i8), *v51.i8).u8[0])
          {
            v48[9 * v47] = v49;
          }

          if (vuzp1_s8(vuzp1_s16(v63, *&v51), *&v51).i8[1])
          {
            v48[10 * v47] = v49;
          }

          if (vuzp1_s8(vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v54))), *&v51).i8[2])
          {
            v48[11 * v47] = v49;
            v48[12 * v47] = v49;
          }

          v64 = vmovn_s64(vcgeq_u64(v51, v53));
          if (vuzp1_s8(*&v51, vuzp1_s16(v64, *&v51)).i32[1])
          {
            v48[13 * v47] = v49;
          }

          if (vuzp1_s8(*&v51, vuzp1_s16(v64, *&v51)).i8[5])
          {
            v48[14 * v47] = v49;
          }

          if (vuzp1_s8(*&v51, vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v52)))).i8[6])
          {
            v48[15 * v47] = v49;
            v48[16 * v47] = v49;
          }

          v57 = vaddq_s64(v57, v60);
          v58 = vaddq_s64(v58, v60);
          v59 = vaddq_s64(v59, v60);
          v56 = vaddq_s64(v56, v60);
          v55 = vaddq_s64(v55, v60);
          v54 = vaddq_s64(v54, v60);
          v53 = vaddq_s64(v53, v60);
          v48 += 16 * v47;
          v52 = vaddq_s64(v52, v60);
          v50 -= 16;
        }

        while (v50);
      }
    }

    v65 = 1 << a8;
    v66 = &a9[v15];
    v67 = *(v10 + 14856);
    v159 = *(v67 + 2117);
    v68 = *v14;
    v162 = *(v10 + 24760);
    v69 = a2 - v68;
    v165 = *(v10 + 24528);
    v168 = a3 - v165;
    v158 = *v14;
    v167 = (v10 + 24524);
    if (v68 == a2)
    {
      v160 = (a7 & 0xF0) != 0;
      if ((a7 & 0xF0) != 0)
      {
        result = memcpy(a9, (v162 + v168), v65);
        a4 = v166;
      }

      if ((a7 & 0xF) != 0)
      {
        result = memcpy(&a9[v65], (v162 + v168 + v65), v65);
        a4 = v166;
        v163 = 1;
      }

      else
      {
        v163 = 0;
      }

      v70 = a5;
    }

    else
    {
      v70 = a5;
      if ((a7 & 0xF) != 0)
      {
        v71 = a2 - 1;
        v72 = v65 + a3;
        v73 = *(a5 + 1);
        if (v73 >= a2 || (v74 = *a5, v73 + v74 < a2) || (v80 = *(a5 + 2), v80 > v72) || v80 + v74 <= v72)
        {
          v75 = v71 - v158;
          v76 = v72 - v165;
          v77 = *(v67 + 2113);
          if (a4 < 0)
          {
LABEL_78:
            v79 = -1;
          }

          else
          {
            v78 = v77 - a4;
            while (v69 >> v78 != v75 >> v78 || v168 >> v78 != v76 >> v78)
            {
              v31 = v78++ < v77;
              if (!v31)
              {
                goto LABEL_78;
              }
            }

            v83 = v77 - v78;
            if (v83 >= a4)
            {
              v79 = v83;
            }

            else
            {
              v79 = v83 + 1;
            }
          }

          v81 = 0;
          v82 = *(v10 + 32 * v79 + 8 * ((v75 >> (v77 - v79)) & 1 | (2 * ((v76 >> (v77 - v79)) & 1))) + 24552);
          v73 = *(v82 + 1);
          v80 = *(v82 + 2);
        }

        else
        {
          v81 = a6 != 3;
          v82 = a5;
        }

        if (v65 < v16)
        {
          v84 = **(v82 + 17);
          v85 = *&v82[8 * v81 + 136];
          v86 = (**(v85 + 7) + (*(v85 + 8) + v71 - v73 + *v85 * (v72 - v80)) * *(*(v85 + 7) + 16));
          v87 = v16 - v65;
          v88 = &a9[v65];
          do
          {
            *v88++ = *v86;
            v86 += v84;
            --v87;
          }

          while (v87);
        }
      }

      if ((a7 & 0xF0) != 0)
      {
        v89 = a2 - 1;
        v90 = *(a5 + 1);
        if (v90 >= a2 || (v91 = *a5, v90 + v91 < a2) || (v98 = *(a5 + 2), v98 > a3) || v98 + v91 <= a3)
        {
          v92 = v89 - *v14;
          v93 = *(*(v10 + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_98:
            v95 = -1;
          }

          else
          {
            v94 = v93 - a4;
            while ((a2 - *v14) >> v94 != v92 >> v94)
            {
              v31 = v94++ < v93;
              if (!v31)
              {
                goto LABEL_98;
              }
            }

            if (v93 - v94 >= a4)
            {
              v95 = v93 - v94;
            }

            else
            {
              v95 = v93 - v94 + 1;
            }
          }

          v96 = 0;
          v97 = *(v10 + 32 * v95 + 8 * ((v92 >> (v93 - v95)) & 1 | (2 * (((a3 - *(v10 + 24528)) >> (v93 - v95)) & 1))) + 24552);
          v90 = *(v97 + 1);
          v98 = *(v97 + 2);
        }

        else
        {
          v96 = a6 != 3;
          v97 = a5;
        }

        if (a8 != 31)
        {
          v99 = **(v97 + 17);
          v100 = *&v97[8 * v96 + 136];
          v101 = (**(v100 + 7) + (*(v100 + 8) + v89 - v90 + *v100 * (a3 - v98)) * *(*(v100 + 7) + 16));
          if (v65 <= 1)
          {
            v102 = 1;
          }

          else
          {
            v102 = v65;
          }

          v103 = a9;
          do
          {
            *v103++ = *v101;
            v101 += v99;
            --v102;
          }

          while (v102);
        }

        v160 = 1;
      }

      else
      {
        v160 = 0;
      }
    }

    if (v165 == a3)
    {
      if ((a7 & 0x1E00) != 0)
      {
        result = memcpy(v66, (v162 + 2 * v159 + v69), v65);
      }

      if (v161)
      {
        v104 = v65;
        v105 = (v162 + 2 * v159 + v69 + v65);
        goto LABEL_154;
      }
    }

    else
    {
      if ((a7 & 0x1E00) != 0)
      {
        v106 = a3 - 1;
        v107 = *(v70 + 1);
        if (v107 > a2 || (v108 = *v70, v107 + v108 <= a2) || (v109 = *(v70 + 2), v109 >= a3) || v109 + v108 < a3)
        {
          v112 = *(v10 + 24528);
          v113 = v106 - v112;
          v114 = *(*(v10 + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_126:
            v117 = -1;
          }

          else
          {
            v115 = a3 - v112;
            v116 = v114 - a4;
            while (v115 >> v116 != v113 >> v116)
            {
              v31 = v116++ < v114;
              if (!v31)
              {
                goto LABEL_126;
              }
            }

            if (v114 - v116 >= a4)
            {
              v117 = v114 - v116;
            }

            else
            {
              v117 = v114 - v116 + 1;
            }
          }

          v110 = 0;
          v111 = *(v10 + 32 * v117 + 8 * (((a2 - *v167) >> (v114 - v117)) & 1 | (2 * ((v113 >> (v114 - v117)) & 1))) + 24552);
          v107 = *(v111 + 1);
          v109 = *(v111 + 2);
        }

        else
        {
          v110 = a6 != 3;
          v111 = v70;
        }

        v118 = v106 - v109;
        v119 = *&v111[8 * v110 + 136];
        result = memcpy(v66, (**(v119 + 7) + (*(v119 + 8) + a2 - v107 + *v119 * v118) * *(*(v119 + 7) + 16)), v65);
        a4 = v166;
        v70 = a5;
      }

      if (v161)
      {
        v120 = v65 + a2;
        v121 = a3 - 1;
        v122 = *(v70 + 1);
        if (v122 > v65 + a2 || (v123 = *v70, v122 + v123 <= v120) || (v124 = *(v70 + 2), v124 >= a3) || v124 + v123 < a3)
        {
          v129 = *(v10 + 24528);
          v130 = v120 - *v167;
          v131 = v121 - v129;
          v132 = *(*(v10 + 14856) + 2113);
          if (a4 < 0)
          {
LABEL_145:
            v135 = -1;
          }

          else
          {
            v133 = a3 - v129;
            v134 = v132 - a4;
            while ((a2 - *v167) >> v134 != v130 >> v134 || v133 >> v134 != v131 >> v134)
            {
              v31 = v134++ < v132;
              if (!v31)
              {
                goto LABEL_145;
              }
            }

            if (v132 - v134 >= a4)
            {
              v135 = v132 - v134;
            }

            else
            {
              v135 = v132 - v134 + 1;
            }
          }

          v125 = 0;
          v126 = *(v10 + 32 * v135 + 8 * ((v130 >> (v132 - v135)) & 1 | (2 * ((v131 >> (v132 - v135)) & 1))) + 24552);
          v122 = *(v126 + 1);
          v124 = *(v126 + 2);
        }

        else
        {
          v125 = a6 != 3;
          v126 = v70;
        }

        v136 = v120 - v122;
        v137 = *&v126[8 * v125 + 136];
        v105 = (**(v137 + 7) + (*(v137 + 8) + v136 + *v137 * (v121 - v124)) * *(*(v137 + 7) + 16));
        v104 = v65;
LABEL_154:
        v127 = v66;
        result = memcpy(&v66[v65], v105, v104);
        v128 = 1;
        if ((a7 & 0x100) == 0)
        {
          goto LABEL_177;
        }

LABEL_155:
        if (v158 == a2 || v165 == a3)
        {
          v150 = v69 + 2 * v159;
          if (v69 <= 0)
          {
            v150 = 0;
          }

          v151 = (v162 + v168 + v150 - 1);
        }

        else
        {
          v138 = a2 - 1;
          v139 = a3 - 1;
          v140 = a5;
          v141 = *(a5 + 1);
          if (v141 >= a2 || (v142 = *a5, v141 + v142 < a2) || (v152 = *(a5 + 2), v152 >= a3) || v152 + v142 < a3)
          {
            v143 = *(v10 + 24528);
            v144 = v138 - *v167;
            v145 = v139 - v143;
            v146 = *(*(v10 + 14856) + 2113);
            result = v166;
            if ((v166 & 0x80000000) != 0)
            {
LABEL_164:
              v149 = -1;
            }

            else
            {
              v147 = a3 - v143;
              v148 = v146 - v166;
              while ((a2 - *v167) >> v148 != v144 >> v148 || v147 >> v148 != v145 >> v148)
              {
                v31 = v148++ < v146;
                if (!v31)
                {
                  goto LABEL_164;
                }
              }

              if (v146 - v148 >= v166)
              {
                v149 = v146 - v148;
              }

              else
              {
                v149 = v146 - v148 + 1;
              }
            }

            v153 = 0;
            v140 = *(v10 + 32 * v149 + 8 * ((v144 >> (v146 - v149)) & 1 | (2 * ((v145 >> (v146 - v149)) & 1))) + 24552);
            v141 = *(v140 + 1);
            v152 = *(v140 + 2);
          }

          else
          {
            v153 = a6 != 3;
          }

          v154 = v138 - v141;
          v155 = *&v140[8 * v153 + 136];
          v151 = (**(v155 + 7) + (*(v155 + 8) + v154 + *v155 * (v139 - v152)) * *(*(v155 + 7) + 16));
        }

        *(a9 - 1) = *v151;
LABEL_177:
        if (v163)
        {
          if (v160)
          {
            goto LABEL_179;
          }
        }

        else
        {
          if (v160)
          {
            v156 = &a9[v65 - 1];
          }

          else if ((a7 & 0x100) != 0)
          {
            v156 = a9 - 1;
          }

          else
          {
            v156 = v127;
            if ((a7 & 0x1E00) == 0)
            {
              v156 = &v127[v65];
            }
          }

          result = memset(&a9[v65], *v156, v65);
          if (v160)
          {
LABEL_179:
            if ((a7 & 0x100) == 0)
            {
              goto LABEL_180;
            }

            goto LABEL_191;
          }
        }

        result = memset(a9, a9[v65], v65);
        if ((a7 & 0x100) == 0)
        {
LABEL_180:
          *(a9 - 1) = *a9;
          if ((a7 & 0x1E00) == 0)
          {
            goto LABEL_181;
          }

          goto LABEL_192;
        }

LABEL_191:
        if ((a7 & 0x1E00) == 0)
        {
LABEL_181:
          result = memset(v127, *(a9 - 1), v65);
          if (v128)
          {
            goto LABEL_194;
          }

          goto LABEL_193;
        }

LABEL_192:
        if (v128)
        {
LABEL_194:
          *(v10 + 24794) = 1;
          return result;
        }

LABEL_193:
        result = memset(&v127[v65], v127[v65 - 1], v65);
        goto LABEL_194;
      }
    }

    v127 = v66;
    v128 = 0;
    if ((a7 & 0x100) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_155;
  }

  v33 = 128 << *(*(result + 14856) + 222);

  return memset(a9 - 1, v33, (4 << a8) | 1);
}

uint64_t sub_27748BE80(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      if (result >= 1)
      {
        v7 = 0;
        do
        {
          *(a6 + v7) = *(a4 + v7);
          v7 += 2;
        }

        while (v7 < result);
      }

      a4 += a3;
      a6 += a5;
    }
  }

  return result;
}

void *sub_27748BEC8(void *result, int a2, uint64_t a3, char *__src, uint64_t a5, char *__dst)
{
  if (a2)
  {
    v10 = result;
    v11 = a2;
    do
    {
      --v11;
      result = memcpy(__dst, __src, v10);
      __dst += a5;
      __src += a3;
    }

    while (v11);
  }

  return result;
}

void sub_27748BF34(uint64_t a1, unsigned __int8 *a2, int a3, int a4, char a5, __int16 a6)
{
  v10 = a3 - *(a1 + 24524);
  v11 = a4 - *(a1 + 24528);
  *(a2 + 1) = a3;
  *(a2 + 2) = a4;
  bzero(*(a2 + 11), 2 * (*a2 >> 3) * (*a2 >> 3));
  **(a2 + 11) = **(a2 + 11) & 0xFFFC | a5 & 3;
  **(a2 + 11) = **(a2 + 11) & 0x1FF | (a6 << 9);
  sub_27748C084(a2, *(*(a1 + 14848) + 58) < 2u);
  v12 = *(*(a1 + 14856) + 2117);
  v13 = v10 + v11 * v12;
  v14 = *(a1 + 25008) + v13;
  *(a2 + 3) = *(a1 + 25000);
  *(a2 + 4) = v14;
  v15 = *(a1 + 25040) + v13;
  *(a2 + 7) = *(a1 + 25032);
  *(a2 + 8) = v15;
  v16 = v10 + (v11 >> 1) * v12;
  v17 = *(a1 + 25024) + v16;
  *(a2 + 5) = *(a1 + 25016);
  *(a2 + 6) = v17;
  v18 = *(a1 + 25056) + v16;
  *(a2 + 9) = *(a1 + 25048);
  *(a2 + 10) = v18;
  v19 = *a2;
  **(a2 + 17) = v19;
  if (1 << *(*(a1 + 14856) + 2116) <= (v19 >> 1))
  {
    v20 = v19 >> 1;
  }

  else
  {
    v20 = 1 << *(*(a1 + 14856) + 2116);
  }

  *(*(a2 + 17) + 1) = v20;
  *(a2 + 48) = 0;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = -1;
  *(a2 + 98) = 2;
  *(a2 + 56) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = -1;
  *(a2 + 114) = 0;
}

void sub_27748C084(void **a1, int a2)
{
  bzero(a1[12], 16 * (*a1 >> 2) * (*a1 >> 2));
  if (a2)
  {
    LODWORD(v4) = *a1;
    if (v4 >= 4)
    {
      v5 = 0;
      v6 = a1[12];
      do
      {
        if (v4 >= 4)
        {
          v8 = 0;
          v9 = v6 + 8;
          do
          {
            *v9 = -1;
            v9 += 8;
            ++v8;
            v4 = *a1;
          }

          while (v8 < v4 >> 2);
          v7 = v4 >> 2;
        }

        else
        {
          LODWORD(v7) = 0;
        }

        v6 += 16 * v7;
        ++v5;
      }

      while (v5 < v7);
    }
  }
}

void sub_27748C11C(uint64_t a1, unsigned __int8 *a2, int a3, int a4, char a5, char a6, __int16 a7)
{
  sub_27748BF34(a1, a2, a3, a4, a5, a7);
  **(a2 + 11) = **(a2 + 11) & 0xFFF3 | (4 * (a6 & 3));
  v9 = *a2;
  if (v9 >= 8)
  {
    v10 = 0;
    v11 = *(a2 + 11);
    v12 = v9 >> 3;
    v13 = v11;
    do
    {
      v14 = v13;
      v15 = v12;
      do
      {
        *v14++ = *v11;
        --v15;
      }

      while (v15);
      ++v10;
      v13 += v12;
    }

    while (v10 != v12);
  }
}

void *sub_27748C1A8(void *result, _WORD *a2, char a3, char a4, int a5, uint64_t a6, __int16 a7)
{
  v7 = 0;
  if (a5)
  {
    v8 = 128;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFF8C | a3 & 3 | (16 * (a4 & 7)) | *a2 & 0x10C | (a7 << 9);
  *a2 = v9;
  if (*(result[1858] + 19) == 1)
  {
    if (*(result[121] + 70))
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }
  }

  *a2 = v7 | v9 & 0xFEFF;
  v10 = *(result[1857] + 2117) >> a3;
  if (v10 >= 8)
  {
    v11 = 0;
    v12 = v10 >> 3;
    v13 = a2;
    do
    {
      v14 = v13;
      v15 = v12;
      do
      {
        *v14++ = *a2;
        --v15;
      }

      while (v15);
      ++v11;
      v13 += a6;
    }

    while (v11 != v12);
  }

  return result;
}

void *sub_27748C258(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, int a5, int a6)
{
  result = sub_27748C3F8(a2, a3, a4, a5, a6);
  v13 = a6 >> 2;
  if (a6 >> 2 >= 1)
  {
    v14 = (*(a2 + 12) + 16 * (*a2 >> 2) * ((a5 - *(a2 + 2)) >> 2) + 16 * ((a4 - *(a2 + 1)) >> 2));
    v15 = (*(a3 + 12) + 16 * (*a3 >> 2) * ((a5 - *(a3 + 2)) >> 2) + 16 * ((a4 - *(a3 + 1)) >> 2));
    v16 = 16 * v13;
    do
    {
      result = memcpy(v14, v15, v16);
      v14 += (4 * *a2) & 0x3F0;
      v15 += (4 * *a3) & 0x3F0;
      --v13;
    }

    while (v13);
  }

  if ((*(a1 + 27684) & 1) == 0)
  {
    result = sub_27748C4CC(*(a1 + 29752), *(a2 + 17), *(a3 + 17), a4 - *(a2 + 1), a5 - *(a2 + 2), a4 - *(a3 + 1), a5 - *(a3 + 2), **(a3 + 17));
    if ((*(a1 + 8) & 1) == 0)
    {
      v17 = *(a2 + 17);
      v18 = *(a3 + 17);
      v19 = a4 - *(a2 + 1);
      v20 = a5 - *(a2 + 2);
      v21 = a4 - *(a3 + 1);
      v22 = a5 - *(a3 + 2);
      v23 = *(v18 + 1);
      v24 = *(a1 + 29752);

      return sub_27748C6BC(v24, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  return result;
}

unsigned __int8 *sub_27748C3F8(unsigned __int8 *result, unsigned __int8 *a2, int a3, int a4, int a5)
{
  v5 = a5 >> 3;
  if (a5 >> 3 >= 1)
  {
    v7 = result;
    v8 = (*(a2 + 11) + 2 * (*a2 >> 3) * ((a4 - *(a2 + 2)) >> 3) + 2 * ((a3 - *(a2 + 1)) >> 3));
    v9 = (*(result + 11) + 2 * (*result >> 3) * ((a4 - *(result + 2)) >> 3) + 2 * ((a3 - *(result + 1)) >> 3));
    v10 = (2 * v5);
    do
    {
      result = memcpy(v9, v8, v10);
      v9 += (*v7 >> 2) & 0x3E;
      v8 += (*a2 >> 2) & 0x3E;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *sub_27748C4CC(uint64_t (*a1)(uint64_t, uint64_t), void **a2, const void **a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v8 = a8;
  result = a1(a8, a8);
  v16 = *a2;
  v17 = *a3;
  v18 = v8 >> 2;
  if (v16 == v8 && v17 == v16)
  {
    memcpy(a2[1], a3[1], (v18 * v18));
    v19 = a2[4];
    v20 = a3[4];

    return memcpy(v19, v20, (2 * v8 * v8));
  }

  else
  {
    if (v8 >= 4)
    {
      v21 = a6;
      v22 = v16 >> 2;
      v23 = v17 >> 2;
      v24 = v18;
      v35 = v21;
      v36 = a7;
      v25 = a3[1] + (v17 >> 2) * (a7 >> 2) + (v21 >> 2);
      v37 = a5;
      v26 = a2[1] + (v16 >> 2) * (a5 >> 2) + (a4 >> 2);
      v27 = v18;
      do
      {
        --v27;
        result = memcpy(v26, v25, v24);
        v26 += v22;
        v25 += v23;
      }

      while (v27);
      v16 = *a2;
      LODWORD(v17) = *a3;
      a7 = v36;
      a5 = v37;
      a6 = v35;
    }

    if (v8)
    {
      v28 = v8;
      v29 = a6;
      v30 = 2 * v16;
      v31 = 2 * v17;
      v32 = 2 * v8;
      v33 = a3[4] + 2 * v17 * a7 + 2 * v29;
      v34 = a2[4] + 2 * v16 * a5 + 2 * a4;
      do
      {
        --v28;
        result = memcpy(v34, v33, v32);
        v34 += v30;
        v33 += v31;
      }

      while (v28);
    }
  }

  return result;
}

void *sub_27748C6BC(uint64_t (*a1)(void, uint64_t), void **a2, const void **a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v8 = a8;
  v15 = 2 * a8;
  result = a1((2 * a8), a8);
  v17 = *a2;
  if (v17 == v8 && *a3 == v17)
  {
    memcpy(a2[2], a3[2], (v8 >> 2) * (v8 >> 2));
    memcpy(a2[3], a3[3], (v8 >> 2) * (v8 >> 2));
    v18 = v15 * v8;
    memcpy(a2[5], a3[5], v18);
    v19 = a2[6];
    v20 = a3[6];

    return memcpy(v19, v20, v18);
  }

  else
  {
    v21 = *(a2 + 1);
    v22 = *(a3 + 1);
    if (v8 >= 4)
    {
      v52 = a5;
      v23 = a5 >> 3;
      v24 = v21 >> 2;
      v54 = a4;
      v56 = a6;
      v25 = a4 >> 3;
      v26 = v22 >> 2;
      v27 = a6 >> 3;
      v49 = a7 >> 3;
      v50 = v25;
      v28 = a3[2] + (v22 >> 2) * v49 + v27;
      v51 = v23;
      v29 = a2[2] + v24 * v23 + v25;
      v30 = v8 >> 2;
      do
      {
        --v30;
        memcpy(v29, v28, v8 >> 2);
        v29 += v24;
        v28 += v26;
      }

      while (v30);
      v31 = *(a2 + 1) >> 2;
      v32 = *(a3 + 1) >> 2;
      v33 = a3[3] + v32 * v49 + v27;
      v34 = a2[3] + v31 * v51 + v50;
      v35 = v8 >> 2;
      do
      {
        --v35;
        result = memcpy(v34, v33, v8 >> 2);
        v34 += v31;
        v33 += v32;
      }

      while (v35);
      LODWORD(v21) = *(a2 + 1);
      LODWORD(v22) = *(a3 + 1);
      a4 = v54;
      a6 = v56;
      a5 = v52;
    }

    if (v8)
    {
      v36 = v8;
      v37 = a7 >> 1;
      v38 = 2 * v21;
      v39 = a6 >> 1;
      v40 = 2 * v22;
      v41 = 2 * v8;
      v53 = v37;
      v55 = a4 >> 1;
      v57 = a5 >> 1;
      v42 = a3[5] + 2 * v22 * v37 + 2 * v39;
      v43 = v36;
      v44 = a2[5] + 2 * v21 * v57 + 2 * v55;
      do
      {
        --v43;
        memcpy(v44, v42, v41);
        v44 += v38;
        v42 += v40;
      }

      while (v43);
      v45 = 2 * *(a2 + 1);
      v46 = 2 * *(a3 + 1);
      v47 = a3[6] + 2 * *(a3 + 1) * v53 + 2 * v39;
      v48 = a2[6] + 2 * *(a2 + 1) * v57 + 2 * v55;
      do
      {
        --v36;
        result = memcpy(v48, v47, v41);
        v48 += v45;
        v47 += v46;
      }

      while (v36);
    }
  }

  return result;
}

int *sub_27748C9C8(int *result, int a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 3069);
  v5 = *(*(result + 1856) + 8);
  v6 = *(v5 + 768);
  v7 = *(v5 + 848);
  v8 = result[6131];
  v9 = result[6132];
  if ((v9 | v8) < 0 || *(v5 + 520) <= v8 || *(v5 + 524) <= v9)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = (*(v5 + 800) + 2 * v6 * (v9 >> 3) + 2 * (v8 >> 3));
    v11 = (*(v5 + 880) + 16 * v7 * (v9 >> 2) + 16 * (v8 >> 2));
  }

  v12 = v4[1];
  v13 = v8 + v12;
  if (result[4] < v8 + v12)
  {
    v13 = result[4];
  }

  v14 = v9 + v12;
  if (result[5] < v14)
  {
    v14 = result[5];
  }

  v15 = (v14 - v9 + 7) >> 3;
  if (v15 >= 1)
  {
    v28 = v7;
    v16 = v8 - *(v4 + 1);
    v17 = v9 - *(v4 + 2);
    v18 = *v4;
    v19 = (*(v4 + 12) + 16 * (v18 >> 2) * (v17 >> 2) + 16 * (v16 >> 2));
    v20 = (v13 - v8 + 7) >> 3;
    v27 = 2 * v20;
    v21 = 2 * v15;
    v22 = (*(v4 + 11) + 2 * (v18 >> 3) * (v17 >> 3) + 2 * (v16 >> 3));
    v23 = 2 * v20;
    v24 = 2 * v6;
    do
    {
      memcpy(v10, v22, v23);
      v22 += (*v4 >> 2) & 0x3E;
      v10 += v24;
      --v15;
    }

    while (v15);
    v2 = a2;
    do
    {
      result = memcpy(v11, v19, 16 * v27);
      v19 += (4 * *v4) & 0x3F0;
      v11 += 16 * v28;
      --v21;
    }

    while (v21);
  }

  if (v2)
  {
    v25 = 0;
    v26 = 1;
    do
    {
      result = (*(v3 + 3719))(v4[1], v4[1] >> v25);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v26 = 0;
      v25 = 1;
    }

    while (*(*(v3 + 1857) + 201));
  }

  return result;
}

uint64_t sub_27748CC54(unsigned int a1, int a2, int a3, unsigned __int8 a4)
{
  if (a3)
  {
    v4 = 122880;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | (((a1 & 0xF0) != 0) << 8) | a1 | 0x1E00;
  v6 = a1 & 0xFFFE0000 | 0x1FF0;
  if (a2 != 3)
  {
    v6 = a1;
  }

  if (a2 != 2)
  {
    v5 = v6;
  }

  if ((((a1 & 0xF0) != 0) & a4) != 0)
  {
    v7 = 15;
  }

  else
  {
    v7 = 0;
  }

  if ((((a1 & 0x1E00) != 0) & a3) != 0)
  {
    v8 = 122880;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v7 | a1;
  v10 = a1 & 0xFFFFFF00 | (((a1 & 0x1E00) != 0) << 8) | 0xF0;
  if (a2 != 1)
  {
    v10 = a1;
  }

  if (a2)
  {
    v9 = v10;
  }

  if (a2 <= 1)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_27748CCE8(uint64_t a1, int a2, int a3)
{
  v3 = a2 - 1;
  if (((a2 - 1) | a3) < 0 || (v4 = *(a1 + 8), *(v4 + 520) < a2) || *(v4 + 524) <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 880) + 16 * *(v4 + 848) * (a3 >> 2) + 16 * (v3 >> 2);
  }

  v6 = a3 - 1;
  if (((a3 - 1) | a2) < 0 || (v7 = *(a1 + 8), *(v7 + 520) <= a2) || *(v7 + 524) < a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + 880) + 16 * *(v7 + 848) * (v6 >> 2) + 16 * (a2 >> 2);
  }

  if ((v6 | v3) < 0 || (v9 = *(a1 + 8), *(v9 + 520) < a2) || *(v9 + 524) < a3)
  {
    v10 = 0;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(v9 + 880) + 16 * *(v9 + 848) * (v6 >> 2) + 16 * (v3 >> 2);
    if (v5)
    {
LABEL_14:
      v11 = *(v5 + 10) == 1;
      if (v8)
      {
        goto LABEL_15;
      }

LABEL_20:
      v12 = 1;
      if (v10)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  v11 = 1;
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = *(v8 + 10) == 1;
  if (v10)
  {
LABEL_16:
    v13 = *(v10 + 10) == 1;
    goto LABEL_22;
  }

LABEL_21:
  v13 = 1;
LABEL_22:
  v14 = v12 || v13;
  if (v11)
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_27748CE28(uint64_t result, int a2, int a3, unsigned __int8 *a4, int a5, int a6, uint64_t *a7, uint64_t *a8)
{
  v8 = *(result + 14856);
  v9 = 1 << (*(v8 + 2112) - 1);
  v10 = a5 + a2;
  v11 = a6 + a3;
  v12 = a6 + a3 - 1;
  v13 = *(a4 + 1);
  if (a2 == v13)
  {
    v14 = *(a4 + 2);
    *a7 = *(a4 + 15) + 16 * ((v11 - v14) >> 2);
    v15 = *(a4 + 15) + 16 * ((v12 - v14) >> 2);
  }

  else
  {
    if ((word_27754911C[(((*(v8 + 2117) - 1) & v12) - *(v8 + 2117) + 64) >> 2] >> (((*(v8 + 2117) - 1) & a2) >> 2)))
    {
      v16 = ~v13 + a2;
      v14 = *(a4 + 2);
      v17 = (v11 - v14) >> 2;
      v18 = *a4 >> 2;
      v19 = v16 >> 2;
      v20 = v16 >> 2;
      v21 = *(a4 + 12) + 16 * v18 * v17 + 16 * v19;
    }

    else
    {
      v21 = 0;
      v14 = *(a4 + 2);
      v18 = *a4 >> 2;
      v20 = (~v13 + a2) >> 2;
    }

    *a7 = v21;
    v15 = *(a4 + 12) + 16 * v18 * ((v12 - v14) >> 2) + 16 * v20;
  }

  v22 = v10 - v9;
  a7[1] = v15;
  if (v14 == a3)
  {
    *a8 = *(a4 + 16) + 16 * ((v10 - v13) >> 2);
    a8[1] = *(a4 + 16) + 16 * ((v22 - v13) >> 2);
    v23 = *(a4 + 16) + 16 * ((a2 - v13) >> 2) - 16;
  }

  else
  {
    v24 = *(*(result + 14856) + 2117);
    v25 = (((v24 - 1) & (v10 - 1)) - v24 + 64) >> 2;
    v26 = word_27753C384[((v24 - 1) & a3) >> 2];
    v27 = *a4;
    if ((v26 >> v25))
    {
      v28 = v10 - v13;
      v29 = ~v14 + a3;
      v30 = v29 >> 2;
      v31 = v29 >> 2;
      v32 = (v27 >> 2) * v30;
      v33 = *(a4 + 12) + 16 * v32 + 16 * (v28 >> 2);
    }

    else
    {
      v33 = 0;
      v34 = ~v14 + a3;
      v35 = v34 >> 2;
      v31 = v34 >> 2;
      v32 = (v27 >> 2) * v35;
    }

    *a8 = v33;
    a8[1] = *(a4 + 12) + 16 * v32 + 16 * ((v22 - v13) >> 2);
    if (a2 == v13)
    {
      v23 = *(a4 + 15) + 16 * v31;
    }

    else
    {
      v23 = *(a4 + 12) + 16 * v32 + 16 * ((a2 - v13 - v9) >> 2);
    }
  }

  a8[2] = v23;
  return result;
}

uint64_t sub_27748D050(uint64_t a1, int a2, int a3, unsigned int a4, int a5, int a6, int a7, int *a8)
{
  if (*(a1 + 824) == 1)
  {
    return sub_27748D0BC(a1, a2, a3, *(a1 + 872), a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 14848);

  return sub_2774DAD24(v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_27748D0BC(uint64_t a1, int a2, int a3, unsigned __int8 *a4, unsigned int a5, int a6, int a7, int a8, int *a9)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v18[1] = 0;
  memset(v17, 0, sizeof(v17));
  sub_27748CE28(a1, a2, a3, a4, a7, a8, v18, v17);
  return sub_2773F93C8(*(a1 + 14848), a2, a3, a5, a6, a7, a8, a9, v18, v17, 1);
}

uint64_t sub_27748D1A4(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, int a6, uint64_t a7)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v15[1] = 0;
  memset(v14, 0, sizeof(v14));
  sub_27748CE28(a1, a2, a3, a4, a5, a6, v15, v14);
  return sub_2773F9A08(*(a1 + 14848), a2, a3, a5, a6, a7, 5u, v15, v14, 1);
}

uint64_t sub_27748D270(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5, unsigned __int8 **a6, unsigned int a7, int *a8, char *a9, int a10)
{
  v12 = a3;
  v562 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 14856);
  v15 = *(v14 + 2113) - a4;
  v16 = 1 << v15;
  v530 = *(v14 + 2113) - a4;
  v17 = v15 - 1;
  v18 = 1;
  if (((1 << v15) + a2) <= *(a1 + 16))
  {
    v18 = v16 + a3 > *(a1 + 20);
  }

  v529 = a1 + 20480;
  v535 = 1 << v17;
  v542 = (a4 + 1);
  v539 = *(v14 + 2112);
  sub_27748BF34(a1, *a5, a2, a3, a4, a10);
  sub_27748BF34(a1, *a6, a2, v12, a4, a10);
  v19 = a2;
  *(*a6 + 115) = a10;
  v536 = a5;
  v20 = *a5;
  v543 = a10;
  *(v20 + 115) = a10;
  v534 = a6;
  v546 = v12;
  v527 = v16;
  v528 = v18;
  if (a4 >= 1)
  {
    v21 = *(v529 + 4044);
    v22 = a2 - v21;
    v23 = *(v529 + 4048);
    v24 = v12 - v23;
    v25 = *v20;
    v26 = v25 >> 3;
    v27 = v25 >> 2;
    v532 = *v20;
    if (a2 == v21)
    {
      memcpy(*(v20 + 13), (*(a1 + 24800) + 2 * (v24 >> 3)), 2 * v26);
      memcpy(*(v20 + 15), (*(a1 + 24816) + 16 * (v24 >> 2)), 16 * v27 + 32);
      if (v12 == v23)
      {
        v28 = *(a1 + 24824);
      }

      else
      {
        v28 = *(a1 + 24816) + 16 * (v24 >> 2);
      }

      v44 = *(v20 + 16);
      v45 = *(v28 - 16);
      *(v44 - 10) = *(v28 - 10);
      *(v44 - 16) = v45;
      v19 = a2;
    }

    else
    {
      v29 = a2 - 1;
      v30 = a2 - 1 - v21;
      v31 = *(*(a1 + 14856) + 2113);
      v32 = v31 - a4;
      while (v22 >> v32 != v30 >> v32)
      {
        v99 = v32++ < v31;
        if (!v99)
        {
          v33 = -1;
          goto LABEL_13;
        }
      }

      v33 = v31 - v32;
      if (v33 < a4)
      {
        ++v33;
      }

LABEL_13:
      v34 = *(a1 + 32 * v33 + 8 * ((v30 >> (v31 - v33)) & 1 | (2 * ((v24 >> (v31 - v33)) & 1))) + 24552);
      v35 = *v34;
      if (v25 >= 8)
      {
        v36 = 0;
        v37 = (*(v34 + 11) + 2 * (v35 >> 3) * ((v12 - *(v34 + 2)) >> 3) + 2 * ((v29 - *(v34 + 1)) >> 3));
        do
        {
          *(*(v20 + 13) + v36) = *v37;
          LODWORD(v35) = *v34;
          v37 += v35 >> 3;
          v36 += 2;
        }

        while (2 * (v25 >> 3) != v36);
      }

      v38 = (*(v34 + 12) + 16 * (v35 >> 2) * ((v12 - *(v34 + 2)) >> 2) + 16 * ((v29 - *(v34 + 1)) >> 2));
      if (v25 >= 4)
      {
        v39 = 0;
        do
        {
          v40 = (*(v20 + 15) + v39);
          v41 = *v38;
          *(v40 + 6) = *(v38 + 6);
          *v40 = v41;
          v38 = (v38 + ((4 * *v34) & 0x3F0));
          v39 += 16;
        }

        while (16 * v27 != v39);
      }

      if ((a7 & 0xF) != 0)
      {
        v42 = (*(v20 + 15) + 16 * v27);
        v43 = *v38;
        *(v42 + 6) = *(v38 + 6);
        *v42 = v43;
      }

      else
      {
        v46 = (*(v20 + 15) + 16 * v27);
        v47 = *(a1 + 24536);
        *(v46 + 6) = *(a1 + 24542);
        *v46 = v47;
      }
    }

    v48 = (2 * v26);
    if (v12 == v23)
    {
      memcpy(*(v20 + 14), (*(a1 + 24808) + 2 * (v22 >> 3)), v48);
      memcpy(*(v20 + 16), (*(a1 + 24824) + 16 * (v22 >> 2)), (16 * v27 + 32));
      v19 = a2;
      v253 = a2 == v21;
      a6 = v534;
      v16 = v527;
      v18 = v528;
      if (!v253)
      {
        v49 = *(a1 + 24824) + 16 * (v22 >> 2);
        v50 = *(v20 + 16);
        v51 = *(v49 - 16);
        *(v50 - 10) = *(v49 - 10);
        *(v50 - 16) = v51;
      }
    }

    else
    {
      v52 = v12 - 1;
      v53 = *(v529 + 4048);
      v54 = v12 - v53;
      v55 = v12 - 1 - v53;
      v56 = *(*(a1 + 14856) + 2113);
      v57 = v56 - a4;
      v18 = v528;
      while (v54 >> v57 != v55 >> v57)
      {
        v99 = v57++ < v56;
        if (!v99)
        {
          v58 = -1;
          goto LABEL_33;
        }
      }

      v58 = v56 - v57;
      if (v56 - v57 < a4)
      {
        ++v58;
      }

LABEL_33:
      v59 = a1 + 24552;
      v60 = *(a1 + 24552 + 32 * v58 + 8 * (((v19 - *(v529 + 4044)) >> (v56 - v58)) & 1 | (2 * ((v55 >> (v56 - v58)) & 1))));
      memcpy(*(v20 + 14), (*(v60 + 11) + 2 * (*v60 >> 3) * ((v52 - *(v60 + 2)) >> 3) + 2 * ((v19 - *(v60 + 1)) >> 3)), v48);
      v61 = v27;
      memcpy(*(v20 + 16), (*(v60 + 12) + 16 * (*v60 >> 2) * ((v52 - *(v60 + 2)) >> 2) + 16 * ((a2 - *(v60 + 1)) >> 2)), 16 * v27);
      v19 = a2;
      v253 = a2 == v21;
      a6 = v534;
      v16 = v527;
      if (!v253)
      {
        v62 = *(v529 + 4044);
        v63 = a2 - v62;
        v64 = *(v529 + 4048);
        v65 = v546 - v64;
        v66 = a2 - 1 - v62;
        v67 = v52 - v64;
        v68 = *(*(a1 + 14856) + 2113);
        v69 = v68 - a4;
        while (v63 >> v69 != v66 >> v69 || v65 >> v69 != v67 >> v69)
        {
          v99 = v69++ < v68;
          if (!v99)
          {
            v70 = -1;
            goto LABEL_41;
          }
        }

        v70 = v68 - v69;
        if (v68 - v69 < a4)
        {
          ++v70;
        }

LABEL_41:
        v71 = *(v59 + 32 * v70 + 8 * ((v66 >> (v68 - v70)) & 1 | (2 * ((v67 >> (v68 - v70)) & 1))));
        v72 = (*(v71 + 12) + 16 * (*v71 >> 2) * ((v52 - *(v71 + 2)) >> 2) + 16 * ((a2 - 1 - *(v71 + 1)) >> 2));
        v73 = *(v20 + 16);
        v74 = *v72;
        *(v73 - 10) = *(v72 + 6);
        *(v73 - 16) = v74;
      }

      if ((a7 & 0x1E000) != 0)
      {
        v75 = *(v529 + 4044);
        v76 = a2 - v75;
        v77 = *(v529 + 4048);
        v78 = v546 - v77;
        v79 = v532 + a2 - v75;
        v80 = v52 - v77;
        v81 = *(*(a1 + 14856) + 2113);
        v82 = v81 - a4;
        while (v76 >> v82 != v79 >> v82 || v78 >> v82 != v80 >> v82)
        {
          v99 = v82++ < v81;
          if (!v99)
          {
            v83 = -1;
            goto LABEL_51;
          }
        }

        v83 = v81 - v82;
        if (v81 - v82 < a4)
        {
          ++v83;
        }

LABEL_51:
        v87 = *(v59 + 32 * v83 + 8 * ((v79 >> (v81 - v83)) & 1 | (2 * ((v80 >> (v81 - v83)) & 1))));
        v88 = (*(v87 + 12) + 16 * (*v87 >> 2) * ((v52 - *(v87 + 2)) >> 2) + 16 * ((v532 + a2 - *(v87 + 1)) >> 2));
        v86 = *v88;
        v85 = *(v88 + 6);
        v84 = (*(v20 + 16) + 16 * v61);
      }

      else
      {
        v84 = (*(v20 + 16) + 16 * v61);
        v85 = *(a1 + 24542);
        v86 = *(a1 + 24536);
      }

      *(v84 + 6) = v85;
      *v84 = v86;
      v12 = v546;
    }
  }

  for (i = 0; i != 16; i += 4)
  {
    v90 = &v551[i + 1];
    *(v90 + 38) = 0;
    v90[16] = 0;
    v90[17] = 0;
    v90[18] = -1;
    *(v90 + 78) = 0;
  }

  v531 = 0;
  DWORD2(v556) = 0;
  v555 = 0uLL;
  *&v556 = -1;
  WORD6(v556) = 2;
  DWORD2(v558) = 0;
  v557 = 0uLL;
  *&v558 = -1;
  WORD6(v558) = 0;
  v549 = *a8;
  v526 = *a9;
  v548 = *a9;
  v91 = *(a1 + 14864);
  if (*(v91 + 12))
  {
    v92 = *(v91 + 1636);
    LODWORD(v531) = v530 >= v92;
    HIDWORD(v531) = v530 == v92;
  }

  v93 = *(a1 + 968);
  v533 = *(v93 + 537);
  v94 = 1 << v17;
  if (!v18)
  {
    v98 = *(a1 + 220);
    v99 = v530 <= v539 || *(a1 + 224) <= a4;
    v97 = !v99;
    v96 = v98 <= a4;
    if (v98 <= a4)
    {
      v95 = 1;
      if (!v97)
      {
        goto LABEL_81;
      }

      if (*(v93 + 534) != 1)
      {
        v96 = 1;
        v97 = 1;
        v95 = 1;
        goto LABEL_81;
      }

      v100 = *(a1 + 14856);
      v101 = v100[2113] - a4;
      if (v101 <= v100[2112])
      {
        v108 = 0;
      }

      else if (*(*(a1 + 14848) + 58) == 2)
      {
        v102 = *(a1 + 24) + v100[2097];
        v103 = word_277533394[2 * (6 - v101) + 1] + v102 * word_277533394[2 * (6 - v101)];
        v104 = (&unk_2775333A0 + 4 * (6 - v101));
        v105 = *v104;
        v106 = v104[1];
        v107 = sub_2774A5790(*(*(a1 + 976) + 184), *(*(a1 + 976) + 4960), v19, v12, v101, *(a1 + 16), *(a1 + 20));
        if (v103 <= v107 * v107)
        {
          if (v107 * v107 > ((v106 + v102 * v105) & ~((v106 + v102 * v105) >> 31)))
          {
            v108 = 1;
          }

          else
          {
            v108 = 2;
          }
        }

        else
        {
          v108 = 0;
        }

        v19 = a2;
        v18 = v528;
      }

      else
      {
        v108 = 2;
      }

      v96 = v108 != 1;
      v97 = v108 != 0;
    }

    v95 = v96;
    goto LABEL_81;
  }

  v95 = 0;
  v96 = 1;
  v97 = 1;
LABEL_81:
  v109 = sub_27745E990(a1 + 1600, v19, v12, v16);
  v110 = v109;
  if (!v95 || !v97 || !v109 || (v111 = *(a1 + 968), *(v111 + 532) != 1))
  {
    v525 = !v96;
    if (!v95)
    {
      v113 = 0;
      v112 = a2;
      goto LABEL_98;
    }

    v111 = *(a1 + 968);
    goto LABEL_95;
  }

  if (!*(v109 + 128))
  {
    v525 = 0;
LABEL_95:
    v112 = a2;
LABEL_96:
    v97 = (*(v111 + 96) != 36) & v97;
    v113 = 1;
    goto LABEL_98;
  }

  v112 = a2;
  if (*(v109 + 136) != 1 || !*(v109 + 8))
  {
    v525 = 0;
    goto LABEL_96;
  }

  v113 = 0;
  v114 = *(v109 + 112) + (*(v109 + 112) >> 4);
  v115 = *(*(v109 + 88) + 16);
  v116 = v114 >= v115;
  v117 = v114 < v115 && !v18;
  v525 = v117;
  if (v116)
  {
    v525 = 0;
    goto LABEL_96;
  }

  v97 = 1;
LABEL_98:
  v523 = a1 + 27648;
  *(a1 + 27648 + 4 * a4) = -1;
  *(a1 + 812) = 0;
  v540 = v109;
  if (!v18 && *(a1 + 813) == 1)
  {
    v118 = sub_2774BCFE4(*(a1 + 992), v112, v12, v16);
    if (v118 == 1)
    {
      v119 = *(a1 + 224);
      v97 = v119 > a4;
      v113 = v119 <= a4;
      v112 = a2;
      v110 = v540;
    }

    else
    {
      v112 = a2;
      v110 = v540;
      if (!v118)
      {
        v97 = 0;
        v113 = 1;
        *(a1 + 812) = 1;
      }
    }
  }

  v120 = a4;
  if (v533)
  {
    v121 = a1 + 32 * a4;
    *(v121 + 32) = 0u;
    *(v121 + 48) = 0u;
    if (v113)
    {
      v122 = 0x80;
    }

    else
    {
      v122 = 0;
    }

    *(v121 + 58) = v122;
  }

  if (v531)
  {
    v123 = (*(a1 + 984))(v112, v12, a4, a1);
    v112 = a2;
    v124 = (a2 - *(*a6 + 1)) >> 3;
    v125 = *(*a6 + 11) + 2 * (**a6 >> 3) * ((v12 - *(*a6 + 2)) >> 3);
    v543 = v123;
    *(v125 + 2 * v124) = (v123 << 9) | *(v125 + 2 * v124) & 0x1FF;
    v126 = (a2 - *(*v536 + 1)) >> 3;
    v127 = *(*v536 + 11) + 2 * (**v536 >> 3) * ((v12 - *(*v536 + 2)) >> 3);
    *(v127 + 2 * v126) = (v123 << 9) | *(v127 + 2 * v126) & 0x1FF;
    v128 = *(a1 + 12);
    if (v128 == 5 || v128 == 3)
    {
      v129 = v123;
      *(*a6 + 115) = v123;
      *(*v536 + 115) = v123;
      if (!a4)
      {
        *(a1 + 28) = v123;
      }
    }

    else
    {
      v129 = v123;
      if (v128 < 2)
      {
LABEL_118:
        v526 = 1;
        v110 = v540;
        goto LABEL_119;
      }
    }

    sub_2774BF164(a1 + 1000, v129, *(*(a1 + 14856) + 2097));
    v112 = a2;
    goto LABEL_118;
  }

LABEL_119:
  v130 = *a6;
  *(v130 + 3) = v543;
  v131 = *v536;
  *(v131 + 3) = v543;
  v132 = *a8;
  *(v130 + 4) = *a8;
  *(v131 + 4) = v132;
  v133 = *a8;
  *(v130 + 5) = *a8;
  *(v131 + 5) = v133;
  v134 = *(a1 + 14848);
  if (*(v134 + 5264) & v113 & v97)
  {
    LODWORD(v559) = *(*(v134 + 5320) + 648);
    *(&v559 + 4) = __PAIR64__(v543, a4);
    v135 = *(a1 + 976);
    v136 = *(v135 + 4744);
    v137 = v136 >> 3;
    v138 = 1 << (*(*(*(v135 + 2240) + 40) + 2113) - a4 - 3);
    v139 = (*(v135 + 4748) - v546) >> 3;
    if (v139 >= v138)
    {
      v140 = v138;
    }

    else
    {
      v140 = v139;
    }

    v141 = (v136 - v112) >> 3;
    if (v141 >= v138)
    {
      v142 = v138;
    }

    else
    {
      v142 = v141;
    }

    v143 = *(v135 + 4960) + 4 * (v136 >> 3) * (v546 >> 3) + 4 * (v112 >> 3);
    v144 = (*(v135 + 184))(v143, v137, v142, v140);
    v145 = v140 * v142;
    v146 = (v140 * v142) >> 1;
    v147 = (v144 + (v145 >> 1)) / v145;
    if (((v142 | v140) & 3) != 0)
    {
      if (v140 < 1)
      {
        v149 = 0;
        v156 = 0;
        v157 = a2;
      }

      else
      {
        v148 = 0;
        v149 = 0;
        v150 = 4 * v137;
        v151 = v143;
        do
        {
          v152 = v151;
          v153 = v142;
          if (v141 >= 1)
          {
            do
            {
              v154 = *v152++;
              v149 += v154;
              --v153;
            }

            while (v153);
          }

          ++v148;
          v151 = (v151 + v150);
        }

        while (v148 != v140);
        v155 = 0;
        v156 = 0;
        v157 = a2;
        do
        {
          v158 = v143;
          v159 = v142;
          if (v141 >= 1)
          {
            do
            {
              v160 = *v158++;
              v156 += (v160 * v160);
              --v159;
            }

            while (v159);
          }

          ++v155;
          v143 += v150;
        }

        while (v155 != v140);
      }

      v163 = v156 - (v149 * v149 + (v145 >> 1)) / v145;
      v164 = v546;
    }

    else
    {
      v161 = v137;
      v162 = (v144 + (v145 >> 1)) / v145;
      v163 = (*(v135 + 176))(v143, v161, v142, v140);
      v146 = v145 >> 1;
      v147 = v162;
      v164 = v546;
      v157 = a2;
    }

    HIDWORD(v559) = v147;
    LODWORD(v560) = ((sqrt(v163) + v146) / v145);
    v165 = *(a1 + 976);
    v166 = *(*(*(v165 + 2240) + 40) + 2113) - a4;
    v167 = *(v165 + 5496);
    if (v167 > v166)
    {
      LOBYTE(v166) = *(v165 + 5496);
    }

    if (v167 <= 3)
    {
      v168 = 3;
    }

    else
    {
      v168 = *(v165 + 5496);
    }

    v169 = v168 - 3;
    v170 = 1 << (v166 - v167);
    v171 = (*(v165 + 4748) - v164) >> v167;
    if (v171 >= v170)
    {
      v172 = v170;
    }

    else
    {
      v172 = v171;
    }

    v173 = (*(v165 + 4744) - v157) >> v167;
    if (v173 >= v170)
    {
      v174 = v170;
    }

    else
    {
      v174 = v173;
    }

    v175 = *(v165 + 5408) + 4 * *(v165 + 5456) * (v164 >> v167) + 4 * (v157 >> v167);
    v176 = (v172 << v169) * (v174 << v169);
    v177 = ((*(v165 + 184))(v175) + (v176 >> 1)) / v176;
    if (((v174 | v172) & 3) != 0)
    {
      if (v172 < 1)
      {
        v179 = 0;
        v186 = 0;
        v187 = a2;
      }

      else
      {
        v178 = 0;
        v179 = 0;
        v180 = 4 * *(v165 + 5456);
        v181 = v175;
        do
        {
          v182 = v181;
          v183 = v174;
          if (v173 >= 1)
          {
            do
            {
              v184 = *v182++;
              v179 += v184;
              --v183;
            }

            while (v183);
          }

          ++v178;
          v181 = (v181 + v180);
        }

        while (v178 != v172);
        v185 = 0;
        v186 = 0;
        v187 = a2;
        do
        {
          v188 = v175;
          v189 = v174;
          if (v173 >= 1)
          {
            do
            {
              v190 = *v188++;
              v186 += (v190 * v190);
              --v189;
            }

            while (v189);
          }

          ++v185;
          v175 += v180;
        }

        while (v185 != v172);
      }

      v192 = v186 - (v179 * v179 + ((v172 * v174) >> 1)) / (v172 * v174);
      v193 = v546;
    }

    else
    {
      v191 = v177;
      v192 = (*(v165 + 176))(v175, *(v165 + 5456), v174, v172);
      v177 = v191;
      v193 = v546;
      v187 = a2;
    }

    DWORD1(v560) = v177;
    DWORD2(v560) = ((sqrt(v192) + (v176 >> 1)) / v176);
    v194 = *(a1 + 976);
    v195 = *(*(*(v194 + 2240) + 40) + 2113) - a4;
    v196 = *(v194 + 5496);
    if (v196 > v195)
    {
      LOBYTE(v195) = *(v194 + 5496);
    }

    if (v196 <= 3)
    {
      v197 = 3;
    }

    else
    {
      v197 = *(v194 + 5496);
    }

    v198 = v197 - 3;
    v199 = 1 << (v195 - v196);
    v200 = (*(v194 + 4748) - v193) >> v196;
    if (v200 >= v199)
    {
      v201 = v199;
    }

    else
    {
      v201 = v200;
    }

    v202 = (*(v194 + 4744) - v187) >> v196;
    if (v202 >= v199)
    {
      v203 = v199;
    }

    else
    {
      v203 = v202;
    }

    v204 = *(v194 + 5472) + 4 * *(v194 + 5456) * (v193 >> v196) + 4 * (v187 >> v196);
    v205 = (v201 << v198) * (v203 << v198);
    v206 = ((*(v194 + 184))(v204) + (v205 >> 1)) / v205;
    if (((v203 | v201) & 3) != 0)
    {
      if (v201 < 1)
      {
        v208 = 0;
        v215 = 0;
      }

      else
      {
        v207 = 0;
        v208 = 0;
        v209 = 4 * *(v194 + 5456);
        v210 = v204;
        do
        {
          v211 = v210;
          v212 = v203;
          if (v202 >= 1)
          {
            do
            {
              v213 = *v211++;
              v208 += v213;
              --v212;
            }

            while (v212);
          }

          ++v207;
          v210 = (v210 + v209);
        }

        while (v207 != v201);
        v214 = 0;
        v215 = 0;
        do
        {
          v216 = v204;
          v217 = v203;
          if (v202 >= 1)
          {
            do
            {
              v218 = *v216++;
              v215 += (v218 * v218);
              --v217;
            }

            while (v217);
          }

          ++v214;
          v204 += v209;
        }

        while (v214 != v201);
      }

      v220 = v215 - (v208 * v208 + ((v201 * v203) >> 1)) / (v201 * v203);
    }

    else
    {
      v219 = v206;
      v220 = (*(v194 + 176))(v204, *(v194 + 5456), v203, v201);
      v206 = v219;
    }

    v120 = a4;
    HIDWORD(v560) = v206;
    v561 = ((sqrt(v220) + (v205 >> 1)) / v205);
    v134 = *(a1 + 14848);
    v221 = *(*(*(v134 + 5320) + 576) + 336);
    v222 = *(*(*(v134 + 5320) + 576) + 344);
    v223 = v222 - v221;
    a6 = v534;
    v94 = 1 << v17;
    if (v222 == v221)
    {
      v226 = 0.0;
    }

    else
    {
      v224 = 0;
      v225 = v223 >> 5;
      if (v225 <= 1)
      {
        v225 = 1;
      }

      v226 = 0.0;
      do
      {
        v227 = *(v221 + 32 * v224 + 8);
        if (*(v227 + 56))
        {
          v228 = *(v221 + 32 * v224 + 8);
        }

        else
        {
          v228 = *(v221 + 32 * v224 + 8);
          do
          {
            if (v228[5] <= *(&v559 + *v228))
            {
              v229 = 33;
            }

            else
            {
              v229 = 32;
            }

            if (*(v228 + v229))
            {
              v230 = 60;
            }

            else
            {
              v230 = 64;
            }

            v228 = (v227 + 72 * *(v228 + v230));
          }

          while (*(v228 + 56) != 1);
        }

        v226 = v226 + v228[6];
        ++v224;
      }

      while (v224 != v225);
    }

    v231 = 1.0 / (exp(-v226) + 1.0);
    v97 = v231 > 0.25;
    v113 = v231 <= 0.25 || v231 < 0.85;
    v112 = a2;
    v110 = v540;
  }

  v232 = 0;
  *(a1 + 27668 + 4 * v120) = 0;
  v233 = (a1 + v120);
  v233[27664] = 0;
  v234 = *(a1 + 204);
  v233[27685] = 0;
  v233[205] = v234;
  *(a1 + 212) = 0;
  if (*(v134 + 5432) == 1 && v113)
  {
    if (v543 > *(v134 + 653))
    {
      goto LABEL_241;
    }

    v235 = *(a1 + 976);
    v236 = *(*(v134 + 16) + 2113) - a4;
    v237 = *(*(*(v235 + 2240) + 40) + 2096);
    if (v236 == 34)
    {
      v238 = 0;
    }

    else
    {
      v239 = 0;
      v238 = 0;
      v240 = 1 << (v236 - 3);
      v241 = *(v235 + 4744) >> 3;
      v242 = *(v235 + 4864) + 4 * v241 * (v546 >> 3) + 4 * (v112 >> 3);
      if (v240 <= 1)
      {
        v240 = 1;
      }

      v243 = 4 * v241;
      do
      {
        v244 = 0;
        do
        {
          v238 += *(v242 + v244);
          v244 += 4;
        }

        while (4 * v240 != v244);
        ++v239;
        v242 += v243;
      }

      while (v239 != v240);
    }

    if (v237 == 10)
    {
      LOBYTE(v236) = v236 + 1;
    }

    v245 = *(*(v134 + 5320) + 4 * ((v238 + (1 << (2 * v236 - 1))) >> (2 * v236) >> 4) + 152);
    if (v245 > 0x1F)
    {
LABEL_241:
      v232 = 0;
    }

    else
    {
      v246 = dword_277533314[v245];
      v247 = v246 + 3;
      v248 = v543 - (v246 + 3);
      v249 = v246 - 3 - v543;
      v232 = v246 - 3 < v543 && v543 <= v246 + 3;
      v250 = v246 + 6;
      v251 = v543 >= v246 - 6 && v246 - 3 > v543;
      v252 = v543 > v250 || v543 <= v247;
      *(a1 + 212) = v232;
      v253 = v252 && !v251;
      if (!v253)
      {
        if (v251)
        {
          v248 = v249;
        }

        v232 = v248 + 1;
        *(a1 + 212) = v248 + 1;
      }
    }
  }

  v519 = *(a1 + 4);
  if (v113)
  {
    if (*(a1 + 197))
    {
      v254 = 257;
    }

    else
    {
      if (*(*(a1 + 14856) + 2113) - a4 != 3 || *(v134 + 58) > 1u)
      {
        goto LABEL_254;
      }

      v256 = *(v523 + 4 * v120);
      if ((*(*(a1 + 968) + 227) & 1) == 0)
      {
        v256 &= 0xFFFFFFF9;
        *(a1 + 27668 + 4 * v120) |= 6u;
      }

      v254 = v256 & 0xFFFFFFF7;
    }

    *(v523 + 4 * v120) = v254;
LABEL_254:
    if (*(v134 + 58) <= 1u)
    {
      if ((*(a1 + 812) & 1) != 0 || *(*(v134 + 4768) + 96) == 36)
      {
        *(v523 + 4 * v120) = 256;
      }

      sub_277499248(a1, v112, v546, a4, v536, a6, a7, 0);
      v112 = a2;
      v110 = v540;
    }

    if (*(a1 + 196))
    {
      v255 = v546;
    }

    else
    {
      v255 = v546;
      if (*(*(*a6 + 12) + 16 * (**a6 >> 2) * ((v546 - *(*a6 + 2)) >> 2) + 16 * ((v112 - *(*a6 + 1)) >> 2) + 10) == 2)
      {
        v97 = 0;
      }
    }

    v258 = *(a1 + 968);
    v259 = *(v258 + 500);
    if ((*(v258 + 530) & 1) != 0 && (v110 ? (v260 = v97) : (v260 = 0), v260 == 1))
    {
      v97 = 1;
      if (*(v110 + 136))
      {
        v520 = 0;
        v524 = 1;
        goto LABEL_294;
      }
    }

    else if (v259)
    {
      v520 = 0;
      v524 = 1;
      if (v110)
      {
        goto LABEL_294;
      }

LABEL_293:
      v276 = sub_27745E990(a1 + 1600, v112, v255, v16);
      v112 = a2;
      v110 = v276;
      goto LABEL_294;
    }

    if (*(a1 + 12) >= 2)
    {
      sub_2774BF164(a1 + 1000, v543, *(*(a1 + 14856) + 2097));
      v112 = a2;
    }

    v257 = sub_2774937D4(a1, v112, v255, a4, a7, v536, a6, 0);
    v112 = a2;
    v110 = v540;
LABEL_277:
    v520 = *(*a6 + 4);
    if (v533)
    {
      v262 = a1 + 32 * v120;
      v261 = *a6;
      v263 = *(v262 + 58) & 0xE7 | (8 * (*(*(v261 + 12) + 16 * (*v261 >> 2) * ((v255 - *(v261 + 2)) >> 2) + 16 * ((v112 - *(v261 + 1)) >> 2) + 10) & 3));
      *(v262 + 58) = v263;
      *(v262 + 58) = v263 & 0xF8 | (*(*(*a6 + 11) + 2 * (**a6 >> 3) * ((v255 - *(*a6 + 2)) >> 3) + 2 * ((v112 - *(*a6 + 1)) >> 3)) >> 4) & 7;
      *(v262 + 40) = *&(*a6)[32 * (v519 > 2) + 184];
      v264 = *(a1 + 14848);
      v265 = *(v264 + 16);
      v266 = *(v265 + 2113);
      v267 = (*(v264 + 5400) + 32 * ((((*(v265 + 2117) - 1) & v112) >> (v266 - a4)) + (((*(v265 + 2117) - 1) & v255) >> (v266 - a4)) * byte_27753344C[v120] + *(v264 + 5408) * ((v112 >> v266) + (v255 >> v266) * *(v265 + 2120)) + byte_277533448[v120]));
      v268 = *(v262 + 48);
      *v267 = *(v262 + 32);
      v267[1] = v268;
    }

    if (!v97)
    {
      goto LABEL_292;
    }

    v269 = *a6;
    v270 = *(*a6 + 12);
    v271 = *(v270 + 10);
    v272 = *(a1 + 968);
    v273 = v272[529];
    if (v271 == 2 || (v273 & 1) == 0)
    {
      v275 = (v271 == 2) & v273;
      goto LABEL_288;
    }

    if ((v272[527] & 1) == 0)
    {
      goto LABEL_287;
    }

    v275 = 0;
    if (v271 == 3 && (v269[232] & 1) != 0)
    {
      if (*(v270 + 11))
      {
LABEL_287:
        v275 = 0;
        goto LABEL_288;
      }

      v275 = (**(v269 + 11) & 0x70) == 0;
    }

LABEL_288:
    v97 = v275 ^ 1;
    if ((v257 & (v275 ^ 1)) == 1)
    {
      if (v271 < 2)
      {
        v524 = 0;
        v97 = 1;
        if (v110)
        {
          goto LABEL_294;
        }
      }

      else
      {
        v524 = 0;
        v97 = (v272[554] & 2) == 0;
        if (v110)
        {
          goto LABEL_294;
        }
      }

      goto LABEL_293;
    }

LABEL_292:
    v524 = 0;
    if (v110)
    {
      goto LABEL_294;
    }

    goto LABEL_293;
  }

  if ((*(*(a1 + 968) + 500) & 1) == 0)
  {
    v257 = 0;
    v255 = v546;
    goto LABEL_277;
  }

  v520 = 0;
  v524 = 1;
  v255 = v546;
  if (!v110)
  {
    goto LABEL_293;
  }

LABEL_294:
  if ((v113 & v97) == 1 && *(*(a1 + 968) + 531) == 1 && v110)
  {
    if (*(v110 + 128) && (*(v110 + 136) & 1) == 0 && *(*(v110 + 88) + 16) + (*(*(v110 + 88) + 16) >> 2) < *(v110 + 112))
    {
      v277 = 0;
      LOBYTE(v113) = 1;
LABEL_318:
      v294 = v543;
      goto LABEL_472;
    }
  }

  else if (!v97)
  {
    v277 = 0;
    goto LABEL_318;
  }

  v518 = v232;
  v521 = v113;
  if (HIDWORD(v531))
  {
    v548 = 1;
  }

  v278 = v94 + v112;
  v279 = v94 + v255;
  v541 = a1 + 1024;
  v517 = a1 + 32 * v542;
  v280 = v517 + 24552;
  v281 = 1;
  v282 = -4;
  do
  {
    v283 = v282 + 4;
    v284 = *(a1 + 16);
    if ((((v282 + 4) & 1) << v17) + v112 >= v284)
    {
      v281 = 0;
    }

    else
    {
      v285 = (v283 >> 1 << v17) + v255;
      v286 = *(a1 + 20);
      if (v285 >= v286)
      {
        v281 = 0;
      }

      else
      {
        v287 = sub_27748CC54(a7, v283, v278 < v284, v279 < v286);
        v288 = sub_27748D270(a1, (((v282 + 4) & 1) << v17) + v112, v285, v542, a1 + 8 * v542 + 24680, v280, v287, &v549, &v548, v543);
        v112 = a2;
        v281 &= v288;
        v289 = *v280;
        v555 = vaddq_s64(v555, *(*v280 + 168));
        DWORD2(v556) += *(v289 + 192);
        *&v556 = ((*(v541 + 2 * SWORD6(v556)) * DWORD2(v556)) >> (8 * (WORD6(v556) == 0))) + v555.i64[0];
        v557 = vaddq_s64(v557, *(v289 + 200));
        DWORD2(v558) += *(v289 + 224);
        *&v558 = ((*(v541 + 2 * SWORD6(v558)) * DWORD2(v558)) >> (8 * (WORD6(v558) == 0))) + v557.i64[0];
      }

      LODWORD(v255) = v546;
    }

    v280 += 8;
    v116 = __CFADD__(v282++, 1);
  }

  while (!v116);
  v290 = *(a1 + 968);
  v291 = *(v290 + 550);
  v113 = v521;
  if (((*(v290 + 550) != 0) & v525 & v281) != 0)
  {
    a6 = v534;
    if (*(a1 + 12) < 2)
    {
      v292 = 1 << v17;
      v293 = v528;
      v232 = v518;
    }

    else
    {
      sub_2774BF164(a1 + 1000, v543, *(*(a1 + 14856) + 2097));
      v290 = *(a1 + 968);
      v291 = *(v290 + 550);
      v292 = 1 << v17;
      v293 = v528;
      v232 = v518;
      if (!*(v290 + 550))
      {
        v255 = v546;
        v112 = a2;
        goto LABEL_405;
      }

      v112 = a2;
    }

    if (*(*(a1 + 14848) + 58) > 1u || (v295 = *(*(a1 + 14856) + 2113) - a4, v295 <= *(v290 + 177)))
    {
      v255 = v546;
    }

    else
    {
      v296 = 0;
      v559 = 0u;
      v560 = 0u;
      LOBYTE(v297) = 1;
      v298 = 1;
      do
      {
        v299 = *(*(v517 + 24552 + v296) + 96);
        *(&v559 + v296) = v299;
        LODWORD(v299) = *(v299 + 10);
        v297 = v297 & (v299 == 2);
        v298 &= v299 > 1;
        v296 += 8;
      }

      while (v296 != 32);
      if (v298)
      {
        v515 = v559;
        v300 = *(v559 + 11);
        v301 = *(v560 + 11);
        if (((v301 ^ v300) & 0x40) == 0 && (v302 = *(v559 + 8) >> 4, v302 == *(v560 + 8) >> 4) && (v302 == 15 || *v559 == *v560) && (v303 = *(v559 + 9) >> 4, v303 == *(v560 + 9) >> 4))
        {
          v304 = v303 == 15 || *(v559 + 4) == *(v560 + 4);
        }

        else
        {
          v304 = 0;
        }

        v305 = *(*(&v559 + 1) + 11);
        v306 = *(*(&v560 + 1) + 11);
        if (((v306 ^ v305) & 0x40) == 0 && (v307 = *(*(&v559 + 1) + 8) >> 4, v307 == *(*(&v560 + 1) + 8) >> 4) && (v307 == 15 || **(&v559 + 1) == **(&v560 + 1)) && (v308 = *(*(&v559 + 1) + 9) >> 4, v308 == *(*(&v560 + 1) + 9) >> 4))
        {
          v309 = v308 == 15 || *(*(&v559 + 1) + 4) == *(*(&v560 + 1) + 4);
        }

        else
        {
          v309 = 0;
        }

        if (((v305 ^ v300) & 0x40) == 0 && (v310 = *(v559 + 8) >> 4, v310 == *(*(&v559 + 1) + 8) >> 4) && (v310 == 15 || *v559 == **(&v559 + 1)) && (v311 = *(v559 + 9) >> 4, v311 == *(*(&v559 + 1) + 9) >> 4))
        {
          v312 = v311 == 15 || *(v559 + 4) == *(*(&v559 + 1) + 4);
        }

        else
        {
          v312 = 0;
        }

        v313 = 1 << v295;
        if (((v306 ^ v301) & 0x40) == 0 && (v314 = *(v560 + 8) >> 4, v314 == *(*(&v560 + 1) + 8) >> 4) && (v314 == 15 || *v560 == **(&v560 + 1)) && (v315 = *(v560 + 9) >> 4, v315 == *(*(&v560 + 1) + 9) >> 4))
        {
          v316 = v315 == 15 || *(v560 + 4) == *(*(&v560 + 1) + 4);
          v514 = v316;
        }

        else
        {
          v514 = 0;
        }

        v508 = v560;
        v509 = *(&v559 + 1);
        v510 = v304 && v309;
        v511 = v312;
        v516 = v313;
        if (v304 && v309 && v312)
        {
          v507 = v309;
          v512 = v304;
          if (sub_2774976DC(a1, v112, v546, v313, v313, v297, v559, v536))
          {
            v317 = sub_277497B24(a1, v112, v546, a4, a7, 0, v536, v534);
          }

          else
          {
            v317 = 0;
          }

          v293 = v528;
          v232 = v518;
          v313 = v516;
          v304 = v512;
          v309 = v507;
        }

        else
        {
          v317 = 0;
        }

        v318 = v317;
        v513 = v317;
        if (!v317)
        {
          v318 = 0;
          if (v304 || v309)
          {
            v318 = 0;
            if (v511 || v514)
            {
              v319 = sub_2774976DC(a1, v112, v546, v313, v313, v297, *(&v559 | (8 * (v309 & v514))), v536);
              v317 = 0;
              v313 = v516;
              LODWORD(v112) = a2;
              v318 = 0;
              if (v319)
              {
                v320 = sub_277497B24(a1, a2, v546, a4, a7, 0, v536, v534);
                v317 = 0;
                v313 = v516;
                LODWORD(v112) = a2;
                v318 = v320;
              }
            }
          }
        }

        v321 = v313 >> 1;
        if (v291 == 1)
        {
          v322 = v318;
        }

        else
        {
          v322 = 0;
        }

        if ((v322 & 1) == 0 && ((v297 ^ 1) & 1) == 0)
        {
          v323 = sub_277497F84(a1, v112, v546, a4, v536, v534, v313, v516, a7, 1);
          v317 = v513;
          v313 = v516;
          v318 |= v323;
        }

        v113 = v521;
        if (v291 == 1)
        {
          v324 = v318;
        }

        else
        {
          v324 = 0;
        }

        if (((v317 | v324) & 1) == 0 && v511 && v514)
        {
          if (sub_2774976DC(a1, a2, v546, v313, v321, 0, v515, v536))
          {
            if (sub_2774976DC(a1, a2, v321 + v546, v516, v321, 0, v508, v536))
            {
              v318 |= sub_277497B24(a1, a2, v546, a4, a7, 1, v536, v534);
            }

            v293 = v528;
            v113 = v521;
            v232 = v518;
            v313 = v516;
            v317 = v513;
          }

          else
          {
            v293 = v528;
            v113 = v521;
            v232 = v518;
            v313 = v516;
            v317 = v513;
          }
        }

        if (v291 == 1)
        {
          v325 = v318;
        }

        else
        {
          v325 = 0;
        }

        v255 = v546;
        if (((v325 | v510 ^ 1 | v317) & 1) == 0 && sub_2774976DC(a1, a2, v546, v321, v313, 0, v515, v536) && sub_2774976DC(a1, v321 + a2, v546, v321, v516, 0, v509, v536))
        {
          v112 = a2;
          v113 = v521;
          if (((v318 | sub_277497B24(a1, a2, v546, a4, a7, 2, v536, v534)) & 1) == 0)
          {
            goto LABEL_405;
          }

          goto LABEL_404;
        }

        v112 = a2;
        if (v318)
        {
LABEL_404:
          sub_277498474(a1, v112, v546, a4, a7, v536, v534, 0);
          v112 = a2;
          v113 = 1;
        }
      }

      else
      {
        v255 = v546;
        v113 = v521;
      }
    }
  }

  else
  {
    a6 = v534;
    v255 = v546;
    v292 = 1 << v17;
    v293 = v528;
    v232 = v518;
  }

LABEL_405:
  v326 = *(a1 + 12);
  if (v326 >= 2)
  {
    sub_2774BF164(a1 + 1000, v543, *(*(a1 + 14856) + 2097));
    v112 = a2;
    v327 = 0;
    v328 = *(a1 + 16);
    v329 = &v552;
    do
    {
      if ((((v327 & 1) << v17) + a2) < v328 && ((v327 >> 1 << v17) + v255) < *(a1 + 20))
      {
        v330 = *(v517 + 24552 + 8 * v327);
        *(v330 + 184) = ((*(v541 + 2 * *(v330 + 196)) * *(v330 + 192)) >> (8 * (*(v330 + 196) == 0))) + *(v330 + 168);
        v331 = (v330 + 200);
        *(v330 + 216) = ((*(v541 + 2 * *(v330 + 228)) * *(v330 + 224)) >> (8 * (*(v330 + 228) == 0))) + *(v330 + 200);
        v332 = *(a1 + 12);
        if (v332 == 5)
        {
          if ((*(a1 + 27684) & 1) == 0)
          {
            v335 = *(v330 + 216);
            *v329 = *v331;
            v329[1] = v335;
          }
        }

        else if (v332 == 3)
        {
          if (v113)
          {
            v333 = *(v330 + 216);
            *v329 = *v331;
            v329[1] = v333;
            v334 = *(v330 + 230) - v543;
            if (v334)
            {
              if (v334 >= 16)
              {
                v334 = 16;
              }

              if (v334 <= -15)
              {
                v334 = -15;
              }

              v329->i64[0] = (v329->i64[0] * word_277533D88[v334 + 15] + 128) >> 8;
            }
          }

          v329[1].i16[7] = v543;
          *(v330 + 230) = v543;
        }
      }

      ++v327;
      v329 += 2;
    }

    while (v327 != 4);
    *&v556 = ((*(v541 + 2 * SWORD6(v556)) * DWORD2(v556)) >> (8 * (WORD6(v556) == 0))) + v555.i64[0];
    *&v558 = ((*(v541 + 2 * SWORD6(v558)) * DWORD2(v558)) >> (8 * (WORD6(v558) == 0))) + v557.i64[0];
    v326 = *(a1 + 12);
  }

  if ((v326 == 5 || v326 == 3) && v113 && (*(a1 + 27684) & 1) == 0)
  {
    v336 = v552.i64[0];
    v337 = DWORD2(v553);
    v338 = v554;
    v339 = 3;
    do
    {
      v336 += *(v338 - 3);
      v340 = *v338;
      v338 += 8;
      v337 += v340;
      --v339;
    }

    while (v339);
    v552.i64[0] = v336;
    DWORD2(v553) = v337;
  }

  if (!v293 && v530 > *(*(a1 + 14856) + 2112))
  {
    sub_277490C94(a1, v112, v255, *a6, 1, 0, 0, 0, 0);
    v112 = a2;
    v341 = ++DWORD2(v556);
    v342 = *(a1 + 944);
    v343 = *(*(a1 + 14856) + 2112);
    if ((a2 - (1 << v343)) < 0)
    {
      v345 = 0;
    }

    else
    {
      if (*(a1 + 824) == 1)
      {
        v344 = *(*(a1 + 872) + 104);
      }

      else
      {
        v344 = (*(*(*(a1 + 14848) + 8) + 800) + 2 * *(*(*(a1 + 14848) + 8) + 768) * (v255 >> 3) + 2 * ((a2 - (1 << v343)) >> 3));
      }

      v345 = (*v344 & 3) > a4;
    }

    v346 = v255 - (1 << v343);
    if (v346 < 0)
    {
      v352 = 0;
    }

    else
    {
      if (*(a1 + 824) == 1)
      {
        v347 = v343 == 31;
        v348 = 112;
        if (v347)
        {
          v348 = 104;
        }

        v349 = *(*(a1 + 872) + v348);
        v350 = -536870912;
        if (!v347)
        {
          v350 = 0;
        }

        v351 = (v349 + v350);
      }

      else
      {
        v351 = (*(*(*(a1 + 14848) + 8) + 800) + 2 * *(*(*(a1 + 14848) + 8) + 768) * (v346 >> 3) + 2 * (a2 >> 3));
      }

      v352 = (*v351 & 3) > a4;
    }

    v353 = v342 + v352 + v345;
    v354 = *(v342 + 16);
    v355 = *(v353 + 50);
    if (v355)
    {
      v356 = v354 - byte_27750DDF3[(v354 & 0xC0) + (v355 >> 1)];
    }

    else
    {
      v356 = byte_27750DDF3[(v354 & 0xC0) + (v355 >> 1)];
    }

    v357 = __clz(v356);
    v358 = v354 - (v356 << (v357 - 55)) + ((v357 - 55) << 8);
    DWORD2(v553) += v358;
    DWORD2(v558) += v358;
    *&v556 = ((*(v541 + 2 * SWORD6(v556)) * v341) >> (8 * (WORD6(v556) == 0))) + v555.i64[0];
    *&v558 = ((*(v541 + 2 * SWORD6(v558)) * DWORD2(v558)) >> (8 * (WORD6(v558) == 0))) + v557.i64[0];
  }

  if (!HIDWORD(v531))
  {
    v277 = 1;
    v294 = v543;
    v120 = a4;
    goto LABEL_472;
  }

  v522 = v113;
  v359 = 0;
  v360 = *(a1 + 16);
  v277 = 1;
  do
  {
    if ((((v359 & 1) << v17) + v112) < v360)
    {
      v361 = (v359 >> 1 << v17) + v255;
      if (v361 < *(a1 + 20))
      {
        v362 = *(v517 + 24552 + 8 * v359);
        v363 = sub_27749323C(((v359 & 1) << v17) + v112, v361, v292, v362, 0);
        if ((v363 & 1) == 0 && (*(a1 + 8) & 1) == 0)
        {
          if (sub_27749323C(((v359 & 1) << v17) + v112, v361, v292, v362, 1u))
          {
            a6 = v534;
            v255 = v546;
            v112 = a2;
            goto LABEL_471;
          }

          v363 = sub_27749323C(((v359 & 1) << v17) + v112, v361, v292, v362, 2u);
        }

        v255 = v546;
        v112 = a2;
        if ((v363 & 1) == 0)
        {
          goto LABEL_461;
        }

        v277 = 1;
        a6 = v534;
LABEL_471:
        v294 = v543;
        v120 = a4;
        v232 = v518;
        goto LABEL_472;
      }
    }

LABEL_461:
    ++v359;
  }

  while (v359 != 4);
  a6 = v534;
  v364 = sub_277493580(a1, v112, v255, a4, *v534, *a8, 1);
  v112 = a2;
  v365 = v364;
  v366 = 0;
  v549 = v364;
  v294 = v543;
  v232 = v518;
  do
  {
    v367 = ((v366 & 1) << v17) + v112;
    if (v367 < *(a1 + 16))
    {
      v368 = (v366 >> 1 << v17) + v255;
      if (v368 < *(a1 + 20))
      {
        sub_277491F2C(*(*(a1 + 14856) + 2117), v367, v368, v542, *(v517 + 24552 + 8 * v366), v365);
        v112 = a2;
      }
    }

    ++v366;
  }

  while (v366 != 4);
  v277 = 1;
  v120 = a4;
  LOBYTE(v113) = v522;
LABEL_472:
  *(a1 + 212) = v232;
  if (v524)
  {
    if (!(v525 & 1 | !v113))
    {
      if (*(a1 + 12) >= 2)
      {
        sub_2774BF164(a1 + 1000, v294, *(*(a1 + 14856) + 2097));
        v112 = a2;
      }

      if (v277)
      {
        v369 = &v555 + 2 * (v519 > 2);
      }

      else
      {
        v369 = 0;
      }

      sub_2774937D4(a1, v112, v255, a4, a7, v536, a6, v369);
      v112 = a2;
    }

    v520 = *(*a6 + 4);
    if (v533)
    {
      v371 = a1 + 32 * v120;
      v370 = *a6;
      v372 = *(v371 + 58) & 0xE7 | (8 * (*(*(v370 + 12) + 16 * (*v370 >> 2) * ((v255 - *(v370 + 2)) >> 2) + 16 * ((v112 - *(v370 + 1)) >> 2) + 10) & 3));
      *(v371 + 58) = v372;
      *(v371 + 58) = v372 & 0xF8 | (*(*(*a6 + 11) + 2 * (**a6 >> 3) * ((v255 - *(*a6 + 2)) >> 3) + 2 * ((v112 - *(*a6 + 1)) >> 3)) >> 4) & 7;
      *(v371 + 40) = *&(*a6)[32 * (v519 > 2) + 184];
      v373 = *(a1 + 14848);
      v374 = *(v373 + 16);
      v375 = *(v374 + 2113);
      v376 = (*(v373 + 5400) + 32 * ((((*(v374 + 2117) - 1) & v112) >> (v375 - a4)) + (((*(v374 + 2117) - 1) & v255) >> (v375 - a4)) * byte_27753344C[v120] + *(v373 + 5408) * ((v112 >> v375) + (v255 >> v375) * *(v374 + 2120)) + byte_277533448[v120]));
      v377 = *(v371 + 48);
      *v376 = *(v371 + 32);
      v376[1] = v377;
    }
  }

  if (!v113)
  {
    for (j = 0; j != 4; ++j)
    {
      v394 = ((j & 1) << v17) + v112;
      if (v394 < *(a1 + 16))
      {
        v395 = (j >> 1 << v17) + v255;
        if (v395 < *(a1 + 20))
        {
          sub_27748C258(a1, *a6, *(a1 + 32 * v542 + 24552 + 8 * j), v394, v395, v535);
          LODWORD(v112) = a2;
        }
      }
    }

    v396 = *a6;
    v397 = v556;
    *(v396 + 168) = v555;
    *(v396 + 184) = v397;
    v398 = *a6;
    v399 = v558;
    *(v398 + 200) = v557;
    *(v398 + 216) = v399;
    if ((*(a1 + 27684) & 1) == 0)
    {
      goto LABEL_640;
    }

    return 0;
  }

  v378 = *(a1 + 200);
  v379 = v277 ^ 1;
  if (v378 != 1)
  {
    v379 = 1;
  }

  if ((v379 & 1) == 0)
  {
    v380 = *(*(a1 + 14856) + 222);
    v381 = 500 << v380;
    v382 = 1 << (v530 - 3);
    if ((*(a1 + 20) - v255) >> 3 >= v382)
    {
      v383 = 1 << (v530 - 3);
    }

    else
    {
      v383 = (*(a1 + 20) - v255) >> 3;
    }

    if (v383 < 1)
    {
      v385 = 0;
    }

    else
    {
      v384 = 0;
      v385 = 0;
      v386 = *(a1 + 16);
      v387 = v386 >> 3;
      v388 = *(*(a1 + 976) + 4912) + 4 * v387 * (v255 >> 3) + 4 * (v112 >> 3);
      v389 = (v386 - v112) >> 3;
      if (v389 < v382)
      {
        v382 = v389;
      }

      v390 = 4 * v382;
      v391 = 4 * v387;
      do
      {
        if (v389 >= 1)
        {
          v392 = 0;
          do
          {
            if (*(v388 + v392) > v385)
            {
              v385 = *(v388 + v392);
            }

            v392 += 4;
          }

          while (v390 != v392);
        }

        ++v384;
        v388 += v391;
      }

      while (v384 != v383);
    }

    if (v385 > v381)
    {
      v430 = v381 + (v381 >> 1);
      if (v385 < 400 << v380)
      {
        v431 = 2;
      }

      else
      {
        v431 = 3;
      }

      if (v385 >= v430)
      {
        v429 = v431;
      }

      else
      {
        v429 = 3;
      }

      goto LABEL_544;
    }

LABEL_543:
    v429 = -1;
    goto LABEL_544;
  }

  if (v378 != 2)
  {
    goto LABEL_543;
  }

  v401 = 0;
  v402 = *(*(a1 + 14856) + 2113) - a4;
  v403 = 1;
  v404 = 1 << (*(*(a1 + 14856) + 2113) - a4);
  LODWORD(v559) = 0;
  v551[0] = 0;
  v550 = 0;
  v405 = *(a1 + 976);
  v406 = *(v405 + 4);
  v407 = v404 + v112;
  if (*(a1 + 16) < v404 + v112)
  {
    v407 = *(a1 + 16);
  }

  v408 = v407 >> v406;
  v409 = v404 + v255;
  if (*(a1 + 20) < v409)
  {
    v409 = *(a1 + 20);
  }

  v410 = v409 >> v406;
  v411 = (v405 + 5232);
  v412 = v255 >> v406;
  v413 = *(v405 + 8);
  v414 = &v559;
  v415 = v551;
  do
  {
    v416 = v403;
    v417 = v401 + v412;
    if (v401 + v412 < v410)
    {
      v418 = (v112 >> v406) + (v401 ^ 1);
      v419 = v411[3 * v401] + 2 * v413 * (v417 << v406 >> v406);
      v420 = v418;
      v421 = v408 - v418;
      do
      {
        if (v420 < v408)
        {
          v422 = *v414;
          v423 = *v415;
          v424 = v420;
          do
          {
            v425 = *(v419 + 2 * v424);
            if (v425 < 0)
            {
              v425 = -v425;
            }

            if (v425 > 5)
            {
              ++v422;
            }

            ++v424;
          }

          while (v408 != v424);
          *v414 = v422;
          *v415 = v421 + v423;
        }

        ++v417;
        v419 += 2 * v413;
      }

      while (v417 < v410);
    }

    v403 = 0;
    v414 = v551 + 1;
    v415 = &v550;
    v401 = 1;
  }

  while ((v416 & 1) != 0);
  if ((HIDWORD(v551[0]) + v559 < 0) ^ __OFADD__(HIDWORD(v551[0]), v559) | (HIDWORD(v551[0]) + v559 == 0))
  {
    if (v402 != v406)
    {
      goto LABEL_606;
    }

    v442 = v413 * (v255 >> v402);
    v443 = v112 >> v402;
    v444 = *(*v411 + 2 * v442 + 2 * v443);
    if (v444 < 0)
    {
      v444 = -v444;
    }

    if (v444 > 5)
    {
      goto LABEL_561;
    }

    v445 = *(*(v405 + 5256) + 2 * v442 + 2 * v443);
    if (v445 < 0)
    {
      v445 = -v445;
    }

    if (v445 >= 6)
    {
LABEL_561:
      v429 = 4;
    }

    else
    {
LABEL_606:
      v429 = 0;
    }
  }

  else
  {
    if (v559 <= SHIDWORD(v551[0]))
    {
      v426 = HIDWORD(v551[0]);
    }

    else
    {
      v426 = v559;
    }

    v427 = 8 * v426;
    if (v427 >= SLODWORD(v551[0]) >> 1)
    {
      v428 = 2;
    }

    else
    {
      v428 = 3;
    }

    if (v427 >= SLODWORD(v551[0]))
    {
      v429 = 1;
    }

    else
    {
      v429 = v428;
    }
  }

LABEL_544:
  v432 = *a6;
  v433 = v112 - *(*a6 + 1);
  v434 = v546 - *(*a6 + 2);
  v435 = **a6;
  v436 = *(*a6 + 12) + 16 * (v435 >> 2) * (v434 >> 2) + 16 * (v433 >> 2);
  if (*(a1 + 27684))
  {
    LODWORD(v437) = 0;
    goto LABEL_570;
  }

  v438 = *(v432[11] + (v435 >> 3) * (v434 >> 3) + (v433 >> 3));
  v437 = *(a1 + 192);
  if (*(a1 + 4) == 2 && *(v436 + 10) >= 2u)
  {
    if (*(*(a1 + 968) + 549) == 1)
    {
      v439 = v432[23] >= v556 + (v556 >> 3) ? v277 : 0;
      if (v439)
      {
        v440 = 0;
        *(v432 + 56) = 0;
        v432[25] = 0;
        v432[26] = 0;
        v432[27] = -1;
        *(v432 + 114) = 0;
        v432 = *v534;
        v441 = 1;
        goto LABEL_576;
      }
    }

    v446 = v432;
    v447 = v436;
    sub_27749464C(a1, v112, v546, a4, *v536, v446, a7, v558);
    v436 = v447;
    v112 = a2;
    v432 = *v534;
    v520 = *(*v534 + 4);
  }

  if (v526)
  {
    v448 = v436;
    v449 = sub_27749323C(v112, v546, v527, v432, 0);
    if (v449 & 1) != 0 || (*(a1 + 8))
    {
      if (!v449)
      {
        goto LABEL_568;
      }
    }

    else if ((sub_27749323C(a2, v546, v527, v432, 1u) & 1) == 0 && (sub_27749323C(a2, v546, v527, v432, 2u) & 1) == 0)
    {
LABEL_568:
      v441 = 1;
      v526 = 1;
      v112 = a2;
      v436 = v448;
      goto LABEL_571;
    }

    v520 = v438 >> 9;
    v462 = (v438 >> 9) - *a8;
    if (v462)
    {
      if (v462 < 0)
      {
        v462 = *a8 - (v438 >> 9);
      }

      v463 = 63 - 2 * __clz(v462);
    }

    else
    {
      v463 = 1;
    }

    v112 = a2;
    v436 = v448;
    v441 = 0;
    v526 = 0;
    v464 = *(v432 + 48) + v463;
    *(v432 + 48) = v464;
    v465 = *(v432 + 56) + (v463 << 8);
    *(v432 + 56) = v465;
    v432[23] = v432[21] + ((*(a1 + 1024 + 2 * *(v432 + 98)) * v464) >> (8 * (*(v432 + 98) == 0)));
    v466 = *(v432 + 114);
    v253 = v466 == 0;
    v467 = *(a1 + 1024 + 2 * v466);
    v468 = v253;
    v432[27] = v432[25] + ((v467 * v465) >> (8 * v468));
  }

  else
  {
    v526 = 0;
LABEL_570:
    v441 = 1;
  }

LABEL_571:
  v437 = v437;
  v450 = v277 ^ 1;
  v440 = 1;
  if (*(a1 + 200) < 1)
  {
    v450 = 1;
  }

  if ((v450 & 1) != 0 || v429 < 0)
  {
LABEL_576:
    v452 = 0;
    v451 = v432[4 * v437 + 23];
  }

  else
  {
    v451 = v432[4 * v437 + 23];
    v452 = v451 >> v429;
  }

  v453 = *(a1 + 12);
  if (v440 && v453 >= 3 && (*(a1 + 27684) & 1) == 0)
  {
    v455 = *(a1 + 28) + *(*(a1 + 14856) + 2097);
    if (v455 >= 0x3F)
    {
      v456 = 63;
    }

    else
    {
      v456 = *(a1 + 28) + *(*(a1 + 14856) + 2097);
    }

    if (v455 <= 0)
    {
      v457 = 0;
    }

    else
    {
      v457 = v456;
    }

    v458 = dword_2775347BC[70 * *(a1 + 1178) + v457];
    *(a1 + 1160) = v458;
    *(a1 + 1024) = v458;
    v454 = ((*(a1 + 1024 + 2 * SWORD6(v553)) * DWORD2(v553)) >> (8 * (WORD6(v553) == 0))) + v552.i64[0];
    *&v553 = v454;
  }

  else
  {
    v454 = *(&v555 + 4 * v437 + 2);
    if (!v440)
    {
      goto LABEL_625;
    }
  }

  if (v453 == 5)
  {
    if (*(a1 + 27684))
    {
      v453 = 5;
      goto LABEL_625;
    }

    v459 = v432[26];
    v460 = v432[25] - v459;
    if (v277)
    {
      v544 = v436;
      v461 = *(a1 + 28);
      if (*(*(a1 + 14856) + 2096) == 8)
      {
        sub_277494ECC(a1, v432, v461, a4, v112, v546);
      }

      else
      {
        sub_277495228(a1, v432, v461, a4, v112, v546);
      }

      v432 = *v534;
      v451 = (*v534)[25] + ((*(a1 + 2 * *(*v534 + 114) + 1024) * *(*v534 + 56)) >> (8 * (*(*v534 + 114) == 0)));
      (*v534)[27] = v451;
      v112 = a2;
      v436 = v544;
    }

    else
    {
      v451 = v432[27];
    }

    v469 = v294 - *(a1 + 28);
    if (v469)
    {
      v470 = v469 + 15;
      if ((v469 + 15) >= 0x1F)
      {
        v470 = 31;
      }

      if (v469 <= -15)
      {
        v470 = 0;
      }

      v460 = (v460 * word_277533E08[v470] + 128) >> 8;
    }

    v432[25] = (&v459[v460] & ~(&v459[v460] >> 63));
    v432[26] = v459;
    v453 = *(a1 + 12);
  }

  if (v453 >= 3 && (*(a1 + 27684) & 1) == 0)
  {
    v471 = v294 + *(*(a1 + 14856) + 2097);
    if (v471 >= 0x3F)
    {
      v472 = 63;
    }

    else
    {
      v472 = v294 + *(*(a1 + 14856) + 2097);
    }

    if (v471 <= 0)
    {
      v473 = 0;
    }

    else
    {
      v473 = v472;
    }

    v474 = dword_2775347BC[70 * *(a1 + 1178) + v473];
    *(a1 + 1160) = v474;
    *(a1 + 1024) = v474;
  }

LABEL_625:
  if (v277)
  {
    v475 = v451 + v452 < v454 ? v440 : 0;
    if (v475 != 1)
    {
      if (v453 == 3)
      {
        v557 = v552;
        v558 = v553;
      }

      v479 = (a1 + 32 * v542);
      v480 = v535;
      sub_27748C258(a1, v432, v479[3069], v112, v546, v535);
      sub_27748C258(a1, *v534, v479[3070], v480 + v112, v546, v480);
      sub_27748C258(a1, *v534, v479[3071], v112, v480 + v546, v480);
      sub_27748C258(a1, *v534, v479[3072], v480 + v112, v480 + v546, v480);
      v481 = *v534;
      v482 = v556;
      *(v481 + 21) = v555;
      *(v481 + 23) = v482;
      v483 = *v534;
      v484 = v557;
      *(v483 + 27) = v558;
      *(v483 + 25) = v484;
      if (*(a1 + 12) == 5)
      {
        v485 = *v534;
        *(v485 + 99) = HIWORD(v553);
        *(v485 + 115) = v554[3];
      }

      if ((*(a1 + 27684) & 1) == 0)
      {
LABEL_640:
        result = 0;
        *a8 = v549;
        *a9 = v548;
        return result;
      }

      return 0;
    }
  }

  if ((*(a1 + 27684) & 1) == 0)
  {
    if ((v441 & v526) == 1)
    {
      v476 = v436;
      v477 = sub_277493580(a1, v112, v546, a4, v432, *a8, 1);
      sub_277491F2C(*(*(a1 + 14856) + 2117), a2, v546, a4, v432, v477);
      v436 = v476;
      v112 = a2;
      v478 = v520;
      if (v531)
      {
        v478 = v477;
      }
    }

    else
    {
      v478 = v520;
    }

    if (*(a1 + 4) <= 1 && *(v436 + 10) >= 2u)
    {
      sub_27749559C(a1, v112, v546, a4, *v534, 0, 0, 1, 0);
      LODWORD(v112) = a2;
    }

    *a8 = v478;
    *a9 = v526;
    v453 = *(a1 + 12);
  }

  if (v453 == 5)
  {
    v486 = (v527 >> 3);
    if (v486 >= 1)
    {
      v487 = 0;
      v488 = (v112 - *(v529 + 4044)) >> 3;
      v489 = vdupq_n_s64(v486 - 1);
      v490 = *(*v534 + 3);
      v491 = v546 - *(v529 + 4048);
      v492 = vdupq_n_s64(0x10uLL);
      do
      {
        v493 = (v486 + 15) & 0xFFFFFFF0;
        v494 = xmmword_27750D320;
        v495 = xmmword_27750D310;
        v496 = xmmword_27750D300;
        v497 = xmmword_27750D2F0;
        v498 = xmmword_27750D630;
        v499 = xmmword_27750D620;
        v500 = xmmword_27750D610;
        v501 = xmmword_27750D600;
        v502 = (a1 + 763 + (v488 + (v491 & 0xFFFFFFF8)));
        do
        {
          v503 = vmovn_s64(vcgeq_u64(v489, v494));
          if (vuzp1_s8(vuzp1_s16(v503, *v489.i8), *v489.i8).u8[0])
          {
            *(v502 - 15) = v490;
          }

          if (vuzp1_s8(vuzp1_s16(v503, *&v489), *&v489).i8[1])
          {
            *(v502 - 14) = v490;
          }

          if (vuzp1_s8(vuzp1_s16(*&v489, vmovn_s64(vcgeq_u64(v489, *&v495))), *&v489).i8[2])
          {
            *(v502 - 13) = v490;
            *(v502 - 12) = v490;
          }

          v504 = vmovn_s64(vcgeq_u64(v489, v496));
          if (vuzp1_s8(*&v489, vuzp1_s16(v504, *&v489)).i32[1])
          {
            *(v502 - 11) = v490;
          }

          if (vuzp1_s8(*&v489, vuzp1_s16(v504, *&v489)).i8[5])
          {
            *(v502 - 10) = v490;
          }

          if (vuzp1_s8(*&v489, vuzp1_s16(*&v489, vmovn_s64(vcgeq_u64(v489, *&v497)))).i8[6])
          {
            *(v502 - 9) = v490;
            *(v502 - 8) = v490;
          }

          v505 = vmovn_s64(vcgeq_u64(v489, v498));
          if (vuzp1_s8(vuzp1_s16(v505, *v489.i8), *v489.i8).u8[0])
          {
            *(v502 - 7) = v490;
          }

          if (vuzp1_s8(vuzp1_s16(v505, *&v489), *&v489).i8[1])
          {
            *(v502 - 6) = v490;
          }

          if (vuzp1_s8(vuzp1_s16(*&v489, vmovn_s64(vcgeq_u64(v489, *&v499))), *&v489).i8[2])
          {
            *(v502 - 5) = v490;
            *(v502 - 4) = v490;
          }

          v506 = vmovn_s64(vcgeq_u64(v489, v500));
          if (vuzp1_s8(*&v489, vuzp1_s16(v506, *&v489)).i32[1])
          {
            *(v502 - 3) = v490;
          }

          if (vuzp1_s8(*&v489, vuzp1_s16(v506, *&v489)).i8[5])
          {
            *(v502 - 2) = v490;
          }

          if (vuzp1_s8(*&v489, vuzp1_s16(*&v489, vmovn_s64(vcgeq_u64(v489, *&v501)))).i8[6])
          {
            *(v502 - 1) = v490;
            *v502 = v490;
          }

          v496 = vaddq_s64(v496, v492);
          v495 = vaddq_s64(v495, v492);
          v494 = vaddq_s64(v494, v492);
          v497 = vaddq_s64(v497, v492);
          v498 = vaddq_s64(v498, v492);
          v499 = vaddq_s64(v499, v492);
          v500 = vaddq_s64(v500, v492);
          v502 += 16;
          v501 = vaddq_s64(v501, v492);
          v493 -= 16;
        }

        while (v493);
        ++v487;
        v491 += 8;
      }

      while (v487 != v486);
    }
  }

  return 1;
}