void sub_29AA10CB4(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA10D28(uint64_t a1)
{
  v1 = sub_29AA118A8(a1);

  operator delete(v1);
}

void sub_29AA10D50(uint64_t a1, uint64_t a2)
{
  sub_29A08AF9C(a1 + 32, 3 * a2);

  sub_29A08AF9C(a1 + 56, a2 + 1);
}

uint64_t sub_29AA10D98(void *a1, void *a2, void *a3)
{
  sub_29A5DB8D8(v40, (*a2 + 24 * *a3), 8);
  v39 = 0;
  MEMORY[0x29C2C1DF0](v40, &v39);
  ++*a3;
  v6 = a1[5] - a1[4];
  v7 = v39;
  v8 = v39 + (v6 >> 3);
  sub_29A00BF50(a1 + 4, v8);
  v31 = v8;
  v32 = a1;
  if (v6 >> 3 < v8)
  {
    v9 = *MEMORY[0x29EDC9530];
    v10 = *(MEMORY[0x29EDC9530] + 24);
    v11 = 8 * (v6 >> 3);
    do
    {
      sub_29A5DB8D8(v34, (*a2 + 24 * *a3), 8);
      v33 = 0;
      MEMORY[0x29C2C1DA0](v34, &v33);
      *(a1[4] + v11) = v33;
      ++*a3;
      v34[0] = v9;
      *(v34 + *(v9 - 24)) = v10;
      v35 = MEMORY[0x29EDC9570] + 16;
      if (v37 < 0)
      {
        operator delete(v36[7].__locale_);
      }

      v35 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v36);
      std::istream::~istream();
      MEMORY[0x29C2C4390](&v38);
      v11 += 8;
      --v7;
    }

    while (v7);
  }

  v13 = a1[8];
  v12 = a1[9];
  if (v13 >= v12)
  {
    v15 = a1[7];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
    v21 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v20)
    {
      v21 = v18;
    }

    if (v21)
    {
      v22 = sub_29A00C9BC((a1 + 7), v21);
      v21 = v23;
      v15 = a1[7];
      v16 = a1[8] - v15;
      v24 = v16 >> 3;
    }

    else
    {
      v22 = 0;
      v24 = v17;
    }

    v25 = &v22[8 * v17];
    v26 = &v22[8 * v21];
    v27 = &v25[-v24];
    *v25 = v31;
    v14 = v25 + 1;
    memcpy(v27, v15, v16);
    v28 = v32[7];
    v32[7] = v27;
    v32[8] = v14;
    v32[9] = v26;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v13 = v31;
    v14 = v13 + 8;
  }

  v29 = MEMORY[0x29EDC9530];
  v32[8] = v14;
  v40[0] = *v29;
  *(v40 + *(v40[0] - 24)) = v29[3];
  v41 = MEMORY[0x29EDC9570] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v42);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v44);
}

void sub_29AA1118C(void *a1)
{
  std::istream::read();
  v2 = (a1[5] - a1[4]) >> 3;
  sub_29A00BF50(a1 + 4, v2);
  v4 = a1[8];
  v3 = a1[9];
  if (v4 >= v3)
  {
    v6 = a1[7];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v3 - v6;
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
      v13 = sub_29A00C9BC((a1 + 7), v12);
      v12 = v14;
      v6 = a1[7];
      v7 = a1[8] - v6;
      v15 = v7 >> 3;
    }

    else
    {
      v13 = 0;
      v15 = (v4 - v6) >> 3;
    }

    v16 = &v13[8 * v8];
    v17 = &v13[8 * v12];
    v18 = &v16[-v15];
    *v16 = v2;
    v5 = v16 + 1;
    memcpy(v18, v6, v7);
    v19 = a1[7];
    a1[7] = v18;
    a1[8] = v5;
    a1[9] = v17;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = v2;
    v5 = v4 + 1;
  }

  a1[8] = v5;
}

double sub_29AA112C4(uint64_t a1)
{
  v32 = 0.0;
  std::istream::read();
  v2 = *(a1 + 80);
  v3 = 0.0;
  switch(v2)
  {
    case 2:
      *&v3 = bswap32(0) >> 16;
      break;
    case 4:
      *&v3 = bswap32(0);
      break;
    case 8:
      v4 = 0;
      v33 = 0.0;
      v5 = 7;
      do
      {
        v6 = *(&v33 + v5);
        *(&v33 + v5) = *(&v33 + v4);
        *(&v33 + v4++) = v6;
        --v5;
      }

      while (v4 != 4);
      v3 = v33;
      break;
    default:
      goto LABEL_10;
  }

  v32 = v3;
LABEL_10:
  v7 = *(a1 + 40) - *(a1 + 32);
  v8 = *&v3 + (v7 >> 3);
  sub_29A00BF50((a1 + 32), v8);
  if (v32 != 0.0)
  {
    std::istream::read();
  }

  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v11 >= v10)
  {
    v13 = *(a1 + 56);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      v20 = sub_29A00C9BC(a1 + 56, v19);
      v19 = v21;
      v13 = *(a1 + 56);
      v14 = *(a1 + 64) - v13;
      v22 = v14 >> 3;
    }

    else
    {
      v20 = 0;
      v22 = (v11 - v13) >> 3;
    }

    v23 = &v20[8 * v15];
    v24 = &v20[8 * v19];
    v25 = &v23[-v22];
    *v23 = v8;
    v12 = v23 + 1;
    memcpy(v25, v13, v14);
    v26 = *(a1 + 56);
    *(a1 + 56) = v25;
    *(a1 + 64) = v12;
    *(a1 + 72) = v24;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v11 = v8;
    v12 = v11 + 1;
  }

  v27 = v7 >> 3;
  *(a1 + 64) = v12;
  if (v7 >> 3 < v8)
  {
    v28 = *(a1 + 32);
    do
    {
      v29 = 0;
      v33 = *(v28 + 8 * v27);
      v30 = 7;
      do
      {
        v31 = *(&v33 + v30);
        *(&v33 + v30) = *(&v33 + v29);
        *(&v33 + v29++) = v31;
        --v30;
      }

      while (v29 != 4);
      result = v33;
      *(v28 + 8 * v27++) = v33;
    }

    while (v27 != v8);
  }

  return result;
}

void sub_29AA114C4(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property list uchar ", 20);
  sub_29A008E78(__p, "double");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA11594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA115B0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = MEMORY[0x29C2C1F00](a2);
  *(a2 + *(*a2 - 24) + 16) = 17;
  if (v6 > v5)
  {
    do
    {
      v9 = sub_29A00911C(a2, " ", 1);
      result = MEMORY[0x29C2C1EB0](v9, *(*(a1 + 32) + 8 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_29AA116A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 56) + 8 * a3 + 8) - *(*(a1 + 56) + 8 * a3) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::ostream::write();
  return std::ostream::write();
}

uint64_t sub_29AA1176C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      v8 = 0;
      v12 = *(*(a1 + 32) + 8 * v4);
      v9 = 7;
      do
      {
        v10 = *(&v12 + v9);
        *(&v12 + v9) = *(&v12 + v8);
        *(&v12 + v8++) = v10;
        --v9;
      }

      while (v8 != 4);
      result = std::ostream::write();
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_29AA118A8(uint64_t a1)
{
  *a1 = &unk_2A206ED48;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_29AA11934(void *a1, __int128 *a2)
{
  v3 = sub_29AA076B4(a1, a2);
  *v3 = &unk_2A206EDD0;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  sub_29A008E78(v9, "double");
  if ((v10 & 0x80000000) == 0)
  {
    if (v10 != 7)
    {
      return a1;
    }

    if (LODWORD(v9[0]) != 1852534389 || *(v9 + 3) != 1853321070)
    {
      return a1;
    }

LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Attempted property type does not match any type defined by the .ply format.");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v9[1] != 7)
  {
    operator delete(v9[0]);
    return a1;
  }

  v6 = *v9[0] != 1852534389 || *(v9[0] + 3) != 1853321070;
  operator delete(v9[0]);
  if (!v6)
  {
    goto LABEL_17;
  }

  return a1;
}

void sub_29AA11A58(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  *v1 = &unk_2A206E5F0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA11ABC(uint64_t a1)
{
  v1 = sub_29AA1212C(a1);

  operator delete(v1);
}

uint64_t sub_29AA11AEC(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = sub_29A00C9BC((a1 + 4), v15);
      v15 = v17;
      v9 = a1[4];
      v10 = a1[5] - v9;
      v18 = v10 >> 3;
    }

    else
    {
      v16 = 0;
      v18 = (v7 - v9) >> 3;
    }

    v19 = &v16[8 * v11];
    v20 = &v16[8 * v15];
    v21 = &v19[-8 * v18];
    *v19 = 0;
    v8 = v19 + 8;
    memcpy(v21, v9, v10);
    v22 = a1[4];
    a1[4] = v21;
    a1[5] = v8;
    a1[6] = v20;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 8;
  }

  a1[5] = v8;
  sub_29A5DB8D8(v25, (*a2 + 24 * *a3), 8);
  v24 = 0;
  MEMORY[0x29C2C1DA0](v25, &v24);
  *(a1[5] - 8) = v24;
  ++*a3;
  v25[0] = *MEMORY[0x29EDC9530];
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x29EDC9530] + 24);
  v26 = MEMORY[0x29EDC9570] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v27);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](&v29);
}

void sub_29AA11D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A5DBA5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA11D34(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v9 = v2 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    v10 = v9 >= 0x7FFFFFFFFFFFFFF8;
    v11 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_29A00C9BC((a1 + 4), v11);
      v11 = v13;
      v5 = a1[4];
      v6 = a1[5] - v5;
      v14 = v6 >> 3;
    }

    else
    {
      v12 = 0;
      v14 = (v3 - v5) >> 3;
    }

    v15 = &v12[8 * v7];
    v16 = &v12[8 * v11];
    v17 = &v15[-8 * v14];
    *v15 = 0;
    v4 = v15 + 8;
    memcpy(v17, v5, v6);
    v18 = a1[4];
    a1[4] = v17;
    a1[5] = v4;
    a1[6] = v16;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  a1[5] = v4;

  return std::istream::read();
}

double sub_29AA11E30(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v9 = v2 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    v10 = v9 >= 0x7FFFFFFFFFFFFFF8;
    v11 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_29A00C9BC((a1 + 4), v11);
      v11 = v13;
      v5 = a1[4];
      v6 = a1[5] - v5;
      v14 = v6 >> 3;
    }

    else
    {
      v12 = 0;
      v14 = (v3 - v5) >> 3;
    }

    v15 = &v12[8 * v7];
    v16 = &v12[8 * v11];
    v17 = &v15[-8 * v14];
    *v15 = 0;
    v4 = v15 + 8;
    memcpy(v17, v5, v6);
    v18 = a1[4];
    a1[4] = v17;
    a1[5] = v4;
    a1[6] = v16;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  a1[5] = v4;
  std::istream::read();
  v19 = 0;
  v20 = a1[5];
  v24 = *(v20 - 8);
  v21 = 7;
  do
  {
    v22 = *(&v24 + v21);
    *(&v24 + v21) = *(&v24 + v19);
    *(&v24 + v19++) = v22;
    --v21;
  }

  while (v19 != 4);
  result = v24;
  *(v20 - 8) = v24;
  return result;
}

void sub_29AA11F68(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "property ", 9);
  sub_29A008E78(__p, "double");
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_29A00911C(v3, v4, v5);
  v7 = sub_29A00911C(v6, " ", 1);
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  v8 = v10;
  v11 = *(v9 + 23);
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  v14 = sub_29A00911C(v7, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA12038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA1209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v7 = *(*(a1 + 32) + 8 * a3);
  v4 = 7;
  do
  {
    v5 = *(&v7 + v4);
    *(&v7 + v4) = *(&v7 + v3);
    *(&v7 + v3++) = v5;
    --v4;
  }

  while (v3 != 4);
  return std::ostream::write();
}

uint64_t sub_29AA1212C(uint64_t a1)
{
  *a1 = &unk_2A206EDD0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_2A206E5F0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29AA121A8(void ***a1)
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
        v4 -= 56;
        sub_29AA0724C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType *sub_29AA12230(atomic_ullong *a1)
{
  result = sub_29AA12278();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType::~UsdPlyFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType *sub_29AA12278()
{
  v0 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType::UsdPlyFileFormatTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AA122BC()
{
  if ((atomic_load_explicit(&qword_2A14F8DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8DF8))
  {
    v1 = operator new(8uLL);
    *v1 = 0;
    qword_2A14F8DF0 = v1;
    __cxa_guard_release(&qword_2A14F8DF8);
  }

  return qword_2A14F8DF0;
}

uint64_t *sub_29AA12398(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29AA123F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA12410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_29A9E5D10(a4);
}

uint64_t adobe::usd::importPly(uint64_t a1, uint64_t *a2, adobe::usd::UsdData *a3)
{
  v276[1] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (sub_29AA020CC(0))
      {
        v8 = v4;
        if (*(v4 + 23) < 0)
        {
          v8 = *v4;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Comment: %s\n", v6, v7, v8);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  v267 = 0;
  v266 = 0;
  v268 = 0;
  v264 = 0;
  v263 = 0;
  v265 = 0;
  v261 = 0;
  v260 = 0;
  v262 = 0;
  v258 = 0;
  v257 = 0;
  v259 = 0;
  v255 = 0;
  v254 = 0;
  v256 = 0;
  v252 = 0;
  v251 = 0;
  v253 = 0;
  v249 = 0;
  v248 = 0;
  v250 = 0;
  v246 = 0;
  v245 = 0;
  v247 = 0;
  memset(v244, 0, 360);
  v242 = 0;
  v241 = 0;
  v243 = 0;
  v239 = 0;
  v238 = 0;
  v240 = 0;
  v236 = 0;
  v235 = 0;
  v237 = 0;
  v233 = 0;
  v232 = 0;
  v234 = 0;
  v230 = 0;
  v229 = 0;
  v231 = 0;
  v227 = 0;
  v226 = 0;
  v228 = 0;
  v224 = 0;
  v223 = 0;
  v225 = 0;
  v221 = 0;
  v220 = 0;
  v222 = 0;
  v218 = 0;
  v217 = 0;
  v219 = 0;
  v215 = 0;
  v214 = 0;
  v216 = 0;
  v212 = 0;
  v211 = 0;
  v213 = 0;
  bzero(v210, 0x438uLL);
  v11 = adobe::usd::UsdData::addMesh(a3, v9, v10);
  v13 = v12;
  *v208 = v11;
  v209 = v12;
  if (*a1 == 1)
  {
    v178 = (v12 + 866);
    v14 = 1;
    *(v12 + 866) = 1;
  }

  else
  {
    sub_29A008E78(__p, "face");
    v14 = sub_29AA1515C(a2, __p) ^ 1;
    v178 = (v13 + 866);
    *(v13 + 866) = v14;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      v14 = *v178;
    }
  }

  *(v13 + 867) = v14;
  v195 = a1;
  sub_29A008E78(__p, "vertex");
  v15 = sub_29AA151F4(a2, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "x");
  v201 = sub_29AA15328(&v266, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "y");
  v199 = sub_29AA15328(&v263, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "z");
  v197 = sub_29AA15328(&v260, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "nx");
  v16 = sub_29AA15328(&v257, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "ny");
  v189 = sub_29AA15328(&v254, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "nz");
  v188 = sub_29AA15328(&v251, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v191 = v16;
  sub_29A008E78(__p, "texture_u");
  v192 = sub_29AA15328(&v248, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "texture_v");
  v190 = sub_29AA15328(&v245, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "red");
  v187 = sub_29AA15664(v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "green");
  v185 = sub_29AA15664(v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "blue");
  v184 = sub_29AA15664(v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "alpha");
  v17 = sub_29AA15664(v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "f_dc_0");
  if (sub_29AA15864(v15, __p))
  {
    sub_29A008E78(&v207, "f_dc_1");
    if (sub_29AA15864(v15, &v207.__r_.__value_.__l.__data_))
    {
      sub_29A008E78(&v206, "f_dc_2");
      v18 = sub_29AA15864(v15, &v206.__r_.__value_.__l.__data_);
      if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v206.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v18 = 0;
    }

    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v18)
    {
      goto LABEL_47;
    }

LABEL_54:
    v186 = 0;
    v19 = 0;
    v176 = 0;
    *(v13 + 867) = 0;
    goto LABEL_55;
  }

  if (!v18)
  {
    goto LABEL_54;
  }

LABEL_47:
  sub_29A008E78(__p, "f_dc_0");
  v176 = sub_29AA15328(&v241, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "f_dc_1");
  v19 = sub_29AA15328(&v238, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "f_dc_2");
  v186 = sub_29AA15328(&v235, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_55:
  if (*(v13 + 867) != 1)
  {
    goto LABEL_73;
  }

  sub_29A008E78(__p, "scale_0");
  if (sub_29AA15864(v15, __p))
  {
    sub_29A008E78(&v207, "scale_1");
    if (sub_29AA15864(v15, &v207.__r_.__value_.__l.__data_))
    {
      sub_29A008E78(&v206, "scale_2");
      v20 = sub_29AA15864(v15, &v206.__r_.__value_.__l.__data_);
      if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v206.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v20 = 0;
    }

    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v20 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v20)
    {
      goto LABEL_66;
    }

LABEL_73:
    v179 = 0;
    v180 = 0;
    v181 = 0;
    *(v13 + 867) = 0;
    goto LABEL_74;
  }

  if (!v20)
  {
    goto LABEL_73;
  }

LABEL_66:
  sub_29A008E78(__p, "scale_0");
  v181 = sub_29AA15328(&v229, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "scale_1");
  v180 = sub_29AA15328(&v226, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "scale_2");
  v179 = sub_29AA15328(&v223, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_74:
  if (*(v13 + 867) != 1)
  {
    goto LABEL_98;
  }

  sub_29A008E78(__p, "rot_0");
  if (sub_29AA15864(v15, __p))
  {
    sub_29A008E78(&v207, "rot_1");
    if (sub_29AA15864(v15, &v207.__r_.__value_.__l.__data_))
    {
      sub_29A008E78(&v206, "rot_2");
      if (sub_29AA15864(v15, &v206.__r_.__value_.__l.__data_))
      {
        sub_29A008E78(v204, "rot_3");
        v21 = sub_29AA15864(v15, v204);
        if (v205 < 0)
        {
          operator delete(v204[0]);
        }
      }

      else
      {
        v21 = 0;
      }

      if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v206.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v21 = 0;
    }

    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v21 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v21)
    {
      goto LABEL_89;
    }

LABEL_98:
    v193 = 0;
    v194 = 0;
    v23 = 0;
    v22 = 0;
    *(v13 + 867) = 0;
    goto LABEL_99;
  }

  if (!v21)
  {
    goto LABEL_98;
  }

LABEL_89:
  sub_29A008E78(__p, "rot_0");
  v22 = sub_29AA15328(&v220, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "rot_1");
  v23 = sub_29AA15328(&v217, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "rot_2");
  v194 = sub_29AA15328(&v214, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "rot_3");
  v193 = sub_29AA15328(&v211, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_99:
  if (*(v13 + 867) == 1)
  {
    sub_29A008E78(__p, "opacity");
    v24 = sub_29AA15864(v15, __p);
    v25 = v24;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (v25)
      {
LABEL_102:
        sub_29A008E78(__p, "opacity");
        v26 = sub_29AA15328(&v232, v15, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_106;
      }
    }

    else if (v24)
    {
      goto LABEL_102;
    }
  }

  v26 = 0;
  *(v13 + 867) = 0;
LABEL_106:
  if (*(v13 + 867) == 1)
  {
    v27 = 0;
    v182 = 1;
    v28 = v210;
    while (1)
    {
      sub_29A008E78(&v207, "f_rest_");
      std::to_string(&v206, v27);
      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v206;
      }

      else
      {
        v29 = v206.__r_.__value_.__r.__words[0];
      }

      if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v206.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v206.__r_.__value_.__l.__size_;
      }

      v31 = std::string::append(&v207, v29, size);
      v32 = *&v31->__r_.__value_.__l.__data_;
      __p[2] = v31->__r_.__value_.__r.__words[2];
      *__p = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v206.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v207.__r_.__value_.__l.__data_);
      }

      if (sub_29AA15864(v15, __p))
      {
        v244[v27] = sub_29AA15328(v28, v15, __p);
        v33 = 1;
      }

      else
      {
        v33 = 0;
        v182 = 0;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v33 & 1) == 0 || *(v13 + 867) != 1)
      {
        break;
      }

      v28 += 3;
      v34 = v27++ > 0x2B;
      a1 = v195;
      if (v34)
      {
        goto LABEL_130;
      }
    }

    a1 = v195;
  }

  else
  {
    v182 = 0;
  }

LABEL_130:
  if (sub_29AA020CC(0))
  {
    if (*v178)
    {
      v37 = "true";
    }

    else
    {
      v37 = "false";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Importing as points: %s, width: %f\n", v35, v36, v37, *(a1 + 48));
  }

  v38 = v201[1] - *v201;
  LODWORD(__p[1]) = 0;
  __p[0] = 0;
  v207.__r_.__value_.__r.__words[0] = __p;
  sub_29A193304((v13 + 136), v38, &v207);
  if (*(v13 + 136))
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = (*v201)[v42];
      sub_29A1935CC(v13 + 136);
      *(*(v13 + 168) + v41) = v43;
      v44 = (*v199)[v42];
      sub_29A1935CC(v13 + 136);
      *(*(v13 + 168) + v41 + 4) = v44;
      v45 = (*v197)[v42];
      sub_29A1935CC(v13 + 136);
      *(*(v13 + 168) + v41 + 8) = v45;
      ++v42;
      v41 += 12;
    }

    while (v42 < *(v13 + 136));
  }

  if (v191)
  {
    v46 = v191[1] - *v191;
    if (v46)
    {
      LODWORD(__p[1]) = 0;
      __p[0] = 0;
      v207.__r_.__value_.__r.__words[0] = __p;
      sub_29A193304((v13 + 224), v46 >> 2, &v207);
      if (*(v13 + 224))
      {
        v47 = 0;
        v48 = 0;
        do
        {
          v49 = (*v191)[v48];
          sub_29A1935CC(v13 + 224);
          *(*(v13 + 256) + v47) = v49;
          v50 = (*v189)[v48];
          sub_29A1935CC(v13 + 224);
          *(*(v13 + 256) + v47 + 4) = v50;
          v51 = (*v188)[v48];
          sub_29A1935CC(v13 + 224);
          *(*(v13 + 256) + v47 + 8) = v51;
          ++v48;
          v47 += 12;
        }

        while (v48 < *(v13 + 224));
      }

      v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v52)
      {
        v52 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      sub_29A166F2C((v13 + 216), v52 + 154);
    }
  }

  if (v192)
  {
    v53 = v192[1] - *v192;
    if (v53)
    {
      v207.__r_.__value_.__r.__words[0] = 0;
      __p[0] = &v207;
      sub_29A190CF4((v13 + 416), v53 >> 2, __p);
      if (*(v13 + 416))
      {
        v54 = 0;
        v55 = 0;
        do
        {
          v56 = (*v192)[v55];
          sub_29A190F50(v13 + 416);
          *(*(v13 + 448) + v54) = v56;
          v57 = (*v190)[v55];
          sub_29A190F50(v13 + 416);
          *(*(v13 + 448) + v54 + 4) = v57;
          ++v55;
          v54 += 8;
        }

        while (v55 < *(v13 + 416));
      }

      v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v58)
      {
        v58 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      sub_29A166F2C((v13 + 408), v58 + 154);
    }
  }

  if (*(v13 + 867) != 1 || v176[1] == *v176)
  {
    if (v187 && *(v187 + 1) != *v187)
    {
      adobe::usd::UsdData::addColorSet(a3, v208[0], v39);
      v76 = v75;
      v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v77)
      {
        v77 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      sub_29A166F2C(v76, v77 + 154);
      v78 = *(v187 + 1) - *v187;
      LODWORD(__p[1]) = 0;
      __p[0] = 0;
      v207.__r_.__value_.__r.__words[0] = __p;
      sub_29A193304(v76 + 1, v78, &v207);
      if (v76[1])
      {
        v79 = 0;
        v80 = 0;
        do
        {
          v81 = *(*v187 + v80);
          sub_29A1935CC((v76 + 1));
          *(v76[5] + v79) = v81 / 255.0;
          v82 = *(*v185 + v80);
          sub_29A1935CC((v76 + 1));
          *(v76[5] + v79 + 4) = v82 / 255.0;
          v83 = *(*v184 + v80);
          sub_29A1935CC((v76 + 1));
          *v40.i32 = v83 / 255.0;
          *(v76[5] + v79 + 8) = v40.i32[0];
          ++v80;
          v79 += 12;
        }

        while (v80 < v76[1]);
      }
    }
  }

  else
  {
    adobe::usd::UsdData::addColorSet(a3, v208[0], v39);
    v60 = v59;
    v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v61)
    {
      v61 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29A166F2C(v60, v61 + 154);
    v62 = v176[1] - *v176;
    LODWORD(__p[1]) = 0;
    __p[0] = 0;
    v207.__r_.__value_.__r.__words[0] = __p;
    sub_29A193304(v60 + 1, v62, &v207);
    if (v60[1])
    {
      v63 = 0;
      v64 = 0;
      do
      {
        v65 = (*v176)[v64];
        sub_29A1935CC((v60 + 1));
        v66 = (v65 * 0.28209) + 0.5;
        if (v66 <= 1.0)
        {
          v67 = (v65 * 0.28209) + 0.5;
        }

        else
        {
          v67 = 1.0;
        }

        if (v66 >= 0.0)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        *(v60[5] + v63) = v68;
        v69 = (*v19)[v64];
        sub_29A1935CC((v60 + 1));
        v70 = (v69 * 0.28209) + 0.5;
        if (v70 <= 1.0)
        {
          v71 = (v69 * 0.28209) + 0.5;
        }

        else
        {
          v71 = 1.0;
        }

        if (v70 >= 0.0)
        {
          v72 = v71;
        }

        else
        {
          v72 = 0.0;
        }

        *(v60[5] + v63 + 4) = v72;
        v73 = (*v186)[v64];
        sub_29A1935CC((v60 + 1));
        *v40.i32 = (v73 * 0.28209) + 0.5;
        if (*v40.i32 <= 1.0)
        {
          v74 = (v73 * 0.28209) + 0.5;
        }

        else
        {
          v74 = 1.0;
        }

        if (*v40.i32 >= 0.0)
        {
          *v40.i32 = v74;
        }

        else
        {
          *v40.i32 = 0.0;
        }

        *(v60[5] + v63 + 8) = v40.i32[0];
        ++v64;
        v63 += 12;
      }

      while (v64 < v60[1]);
    }
  }

  if (*(v13 + 867) != 1 || v26[1] == *v26)
  {
    if (v17 && *(v17 + 1) != *v17)
    {
      adobe::usd::UsdData::addOpacitySet(a3, v208[0], v39);
      v92 = v91;
      v93 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v93)
      {
        v93 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      sub_29A166F2C(v92, v93 + 154);
      v94 = *(v17 + 1) - *v17;
      LODWORD(v207.__r_.__value_.__l.__data_) = 0;
      __p[0] = &v207;
      sub_29A18E224(v92 + 1, v94, __p, v95);
      if (v92[1])
      {
        v96 = 0;
        do
        {
          v97 = *(*v17 + v96);
          sub_29A18E624((v92 + 1));
          *v40.i32 = v97 / 255.0;
          *(v92[5] + 4 * v96++) = v40.i32[0];
        }

        while (v96 < v92[1]);
      }
    }
  }

  else
  {
    adobe::usd::UsdData::addOpacitySet(a3, v208[0], v39);
    v85 = v84;
    v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v86)
    {
      v86 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29A166F2C(v85, v86 + 154);
    v87 = v26[1] - *v26;
    LODWORD(v207.__r_.__value_.__l.__data_) = 0;
    __p[0] = &v207;
    sub_29A18E224(v85 + 1, v87, __p, v88);
    if (v85[1])
    {
      v89 = 0;
      do
      {
        v90 = 0.0;
        if ((LODWORD((*v26)[v89]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v90 = 1.0 / (expf(-(*v26)[v89]) + 1.0);
        }

        sub_29A18E624((v85 + 1));
        *(v85[5] + 4 * v89++) = v90;
      }

      while (v89 < v85[1]);
    }
  }

  if (*v178 == 1)
  {
    if (*(v13 + 867) == 1 && (v98 = v181[1] - *v181) != 0)
    {
      LODWORD(v207.__r_.__value_.__l.__data_) = 0;
      __p[0] = &v207;
      sub_29A18E224((v13 + 176), v98 >> 2, __p, v40);
      v99 = v181[1] - *v181;
      LODWORD(__p[1]) = 0;
      __p[0] = 0;
      v207.__r_.__value_.__r.__words[0] = __p;
      sub_29A193304((v13 + 576), v99, &v207);
      if (*(v13 + 176))
      {
        v100 = 0;
        v101 = 0;
        do
        {
          v102 = expf((*v181)[v101]);
          v103 = expf((*v180)[v101]);
          v104 = expf((*v179)[v101]);
          sub_29A18E624(v13 + 176);
          v105 = sqrtf(((v102 * v102) + (v103 * v103)) + (v104 * v104));
          *(*(v13 + 208) + 4 * v101) = v105;
          sub_29A1935CC(v13 + 576);
          v106 = 1.0 / v105;
          v107 = v106 * v102;
          v108 = v106 * v103;
          *&v106 = v106 * v104;
          v109 = *(v13 + 608) + v100;
          *v109 = v107;
          *(v109 + 4) = v108;
          *(v109 + 8) = LODWORD(v106);
          ++v101;
          v100 += 12;
        }

        while (v101 < *(v13 + 176));
      }
    }

    else
    {
      v110 = *(v13 + 136);
      LODWORD(v207.__r_.__value_.__l.__data_) = 0;
      __p[0] = &v207;
      sub_29A18E224((v13 + 176), v110, __p, v40);
      if (*(v13 + 176))
      {
        v111 = 0;
        do
        {
          v112 = *(v195 + 48);
          sub_29A18E624(v13 + 176);
          *(*(v13 + 208) + 4 * v111++) = v112;
        }

        while (v111 < *(v13 + 176));
      }
    }
  }

  if ((*v178 & 1) == 0)
  {
    sub_29AA15900(a2);
  }

  if (*(v13 + 867) == 1)
  {
    v113 = v22[1] - *v22;
    v207.__r_.__value_.__r.__words[0] = __p;
    sub_29A199818((v13 + 712), v113, &v207);
    if (v22[1] != *v22)
    {
      v114 = 0;
      v115 = 0;
      do
      {
        sub_29A199A70(v13 + 712);
        *(*(v13 + 744) + v114 + 12) = (*v22)[v115];
        sub_29A199A70(v13 + 712);
        v116 = (*(v13 + 744) + v114);
        v117 = (*v194)[v115];
        v118 = (*v193)[v115];
        *v116 = (*v23)[v115];
        v116[1] = v117;
        v116[2] = v118;
        sub_29A199A70(v13 + 712);
        *__p = *(*(v13 + 744) + v114);
        pxrInternal__aapl__pxrReserved__::GfQuatf::Normalize(__p, 1.0e-10);
        v202 = *__p;
        sub_29A199A70(v13 + 712);
        *(*(v13 + 744) + 16 * v115++) = v202;
        v114 += 16;
      }

      while (v115 < v22[1] - *v22);
    }

    if (v182)
    {
      v119 = *(v13 + 136);
      *(v13 + 704) = 15;
      v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      if (!v120)
      {
        v120 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
      }

      sub_29A166F2C((v13 + 616), v120 + 154);
      LODWORD(__p[1]) = 0;
      __p[0] = 0;
      v207.__r_.__value_.__r.__words[0] = __p;
      sub_29A193304((v13 + 624), 15 * v119, &v207);
      if (v119)
      {
        for (i = 0; i != v119; ++i)
        {
          v122 = 0;
          v123 = v244;
          do
          {
            v124 = 0;
            v125 = v123;
            do
            {
              v126 = *v125;
              v125 += 15;
              *(__p + v124) = *(*v126 + 4 * i);
              v124 += 4;
            }

            while (v124 != 12);
            sub_29A1935CC(v13 + 624);
            v127 = *(v13 + 656) + 12 * (15 * i + v122);
            *v127 = __p[0];
            *(v127 + 8) = __p[1];
            ++v122;
            ++v123;
          }

          while (v122 != 15);
        }
      }
    }
  }

  adobe::usd::UsdData::addNode(a3, 0xFFFFFFFF, v39);
  sub_29A00D250((v128 + 432), v208);
  v130 = v195;
  *(a3 + 1) = 0x3FF0000000000000;
  if (*(v195 + 1) != 1)
  {
    goto LABEL_263;
  }

  sub_29A0CD6B0(__p, "\\bZ-axis up\\b", 0);
  sub_29A0CD6B0(v270, "\\bBlender\\b", 0);
  sub_29A0CD6B0(&v274, "\\bArtec\\b", 0);
  sub_29A0CD6B0(v275, "\\bRhinoceros\\b", 0);
  memset(&v207, 0, sizeof(v207));
  sub_29AA17030(&v207, __p, v276, 4uLL);
  for (j = 0; j != -32; j -= 8)
  {
    locale = v275[j + 6].__locale_;
    if (locale)
    {
      sub_29A014BEC(locale);
    }

    std::locale::~locale(&v275[j]);
  }

  v133 = *a2;
  v134 = a2[1];
  if (*a2 == v134)
  {
    goto LABEL_259;
  }

  LOBYTE(v135) = 0;
  do
  {
    while (1)
    {
      if (v135)
      {
        LOBYTE(v135) = 1;
        goto LABEL_251;
      }

      v137 = v207.__r_.__value_.__l.__size_;
      v136 = v207.__r_.__value_.__r.__words[0];
      if (v207.__r_.__value_.__r.__words[0] != v207.__r_.__value_.__l.__size_)
      {
        break;
      }

      LOBYTE(v135) = 0;
      v133 += 24;
      if (v133 == v134)
      {
        goto LABEL_259;
      }
    }

    do
    {
      __p[6] = 0;
      __p[7] = 0;
      LOBYTE(v270[0].__locale_) = 0;
      v270[1].__locale_ = 0;
      v270[2].__locale_ = 0;
      v271 = 0;
      v272 = 0;
      v273 = 0;
      memset(__p, 0, 41);
      v138 = *(v133 + 23);
      if ((v138 & 0x80u) == 0)
      {
        v139 = v133;
      }

      else
      {
        v139 = *v133;
      }

      if ((v138 & 0x80u) != 0)
      {
        v138 = *(v133 + 8);
      }

      v135 = sub_29A0D5434(v136, v139, v139 + v138, __p, 0);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v136 += 64;
      if (v136 == v137)
      {
        v140 = 1;
      }

      else
      {
        v140 = v135;
      }
    }

    while (v140 != 1);
LABEL_251:
    v133 += 24;
  }

  while (v133 != v134);
  if (v135)
  {
    v141 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    v130 = v195;
    if (!v141)
    {
      v141 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    v142 = (v141 + 1360);
    goto LABEL_262;
  }

LABEL_259:
  v143 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  v130 = v195;
  if (!v143)
  {
    v143 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  v142 = (v143 + 1352);
LABEL_262:
  sub_29A166F2C(a3, v142);
  __p[0] = &v207;
  sub_29AA17244(__p);
LABEL_263:
  v144 = 1;
  if (*(v13 + 867) == 1 && *(v130 + 8) >= 6uLL)
  {
    if (*(v13 + 136))
    {
      v145 = 0;
      v146 = 0;
      v147 = 3.4028e38;
      v148 = -3.4028e38;
      LODWORD(v129) = -8388609;
      v196 = v129;
      v198 = v129;
      LODWORD(v129) = 2139095039;
      v200 = v129;
      v203 = v129;
      do
      {
        sub_29A1935CC(v13 + 136);
        v149 = *(v13 + 168);
        v150 = v203;
        if (*&v203 >= *(v149 + v145))
        {
          LODWORD(v150) = *(v149 + v145);
        }

        v203 = v150;
        sub_29A1935CC(v13 + 136);
        v151 = *(v13 + 168) + v145;
        v152 = v200;
        if (*&v200 >= *(v151 + 4))
        {
          LODWORD(v152) = *(v151 + 4);
        }

        v200 = v152;
        sub_29A1935CC(v13 + 136);
        v153 = *(v13 + 168) + v145;
        if (v147 >= *(v153 + 8))
        {
          v147 = *(v153 + 8);
        }

        sub_29A1935CC(v13 + 136);
        v154 = *(v13 + 168);
        v155 = v198;
        if (*(v154 + v145) >= *&v198)
        {
          LODWORD(v155) = *(v154 + v145);
        }

        v198 = v155;
        sub_29A1935CC(v13 + 136);
        v156 = *(*(v13 + 168) + v145 + 4);
        sub_29A1935CC(v13 + 136);
        v157 = v196;
        if (v156 >= *&v196)
        {
          *&v157 = v156;
        }

        v196 = v157;
        if (*(*(v13 + 168) + v145 + 8) >= v148)
        {
          v148 = *(*(v13 + 168) + v145 + 8);
        }

        ++v146;
        v145 += 12;
      }

      while (v146 < *(v13 + 136));
      if (*&v198 >= *&v203 && *&v157 >= *&v200 && v148 >= v147)
      {
        LODWORD(__p[1]) = 0;
        __p[0] = 0;
        v207.__r_.__value_.__r.__words[0] = __p;
        sub_29A193304((v13 + 1024), 2uLL, &v207);
        v160 = *(v130 + 40);
        v161 = *v160;
        v162 = v160[1].f32[0];
        sub_29A1935CC(v13 + 1024);
        if (v162 >= v147)
        {
          v163 = v162;
        }

        else
        {
          v163 = v147;
        }

        v164 = *(v13 + 1056);
        *v164 = vbsl_s8(vcgt_f32(__PAIR64__(v200, v203), v161), __PAIR64__(v200, v203), v161);
        *(v164 + 8) = v163;
        v165 = *(v130 + 40);
        v166 = *(v165 + 12);
        v167 = *(v165 + 20);
        sub_29A1935CC(v13 + 1024);
        if (v148 >= v167)
        {
          v168 = v167;
        }

        else
        {
          v168 = v148;
        }

        v169 = *(v13 + 1056);
        *(v169 + 12) = vbsl_s8(vcgt_f32(v166, __PAIR64__(v196, v198)), __PAIR64__(v196, v198), v166);
        *(v169 + 20) = v168;
        v170 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        if (!v170)
        {
          v170 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
        }

        sub_29A166F2C((v13 + 1016), v170 + 17);
        v144 = 1;
        goto LABEL_300;
      }
    }

    else
    {
      v147 = 3.4028e38;
      v148 = -3.4028e38;
      LODWORD(v196) = -8388609;
      LODWORD(v198) = -8388609;
      LODWORD(v200) = 2139095039;
      LODWORD(v203) = 2139095039;
    }

    if (sub_29AA020CC(0))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid bounding box: (%f, %f, %f) - (%f, %f, %f)\n", v171, v172, *&v203, *&v200, v147, *&v198, *&v196, v148);
    }

    v144 = 0;
  }

LABEL_300:
  v173 = 270;
  do
  {
    v174 = v207.__r_.__value_.__r.__words[v173 / 2 + 2];
    if (v174)
    {
      *&v208[v173] = v174;
      operator delete(v174);
    }

    v173 -= 6;
  }

  while (v173 * 4);
  if (v211)
  {
    v212 = v211;
    operator delete(v211);
  }

  if (v214)
  {
    v215 = v214;
    operator delete(v214);
  }

  if (v217)
  {
    v218 = v217;
    operator delete(v217);
  }

  if (v220)
  {
    v221 = v220;
    operator delete(v220);
  }

  if (v223)
  {
    v224 = v223;
    operator delete(v223);
  }

  if (v226)
  {
    v227 = v226;
    operator delete(v226);
  }

  if (v229)
  {
    v230 = v229;
    operator delete(v229);
  }

  if (v232)
  {
    v233 = v232;
    operator delete(v232);
  }

  if (v235)
  {
    v236 = v235;
    operator delete(v235);
  }

  if (v238)
  {
    v239 = v238;
    operator delete(v238);
  }

  if (v241)
  {
    v242 = v241;
    operator delete(v241);
  }

  if (v245)
  {
    v246 = v245;
    operator delete(v245);
  }

  if (v248)
  {
    v249 = v248;
    operator delete(v248);
  }

  if (v251)
  {
    v252 = v251;
    operator delete(v251);
  }

  if (v254)
  {
    v255 = v254;
    operator delete(v254);
  }

  if (v257)
  {
    v258 = v257;
    operator delete(v257);
  }

  if (v260)
  {
    v261 = v260;
    operator delete(v260);
  }

  if (v263)
  {
    v264 = v263;
    operator delete(v263);
  }

  if (v266)
  {
    v267 = v266;
    operator delete(v266);
  }

  return v144;
}

void sub_29AA14114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  STACK[0x900] = &a54;
  sub_29AA17244(&STACK[0x900]);
  v55 = 1080;
  while (1)
  {
    v56 = *&v57[v55 - 24];
    if (v56)
    {
      *&v57[v55 - 16] = v56;
      operator delete(v56);
    }

    v55 -= 24;
    if (!v55)
    {
      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v82)
      {
        v83 = v82;
        operator delete(v82);
      }

      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }

      if (v88)
      {
        v89 = v88;
        operator delete(v88);
      }

      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA1411C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (v70 == 1)
  {
    v64 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      v65 = (*(*v64 + 16))(v64);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find vertex element %s\n", v66, v67, v65);
    }

    *(v62 + 867) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29AA12F94);
  }

  v68 = 1080;
  while (1)
  {
    v69 = *&v71[v68 - 24];
    if (v69)
    {
      *&v71[v68 - 16] = v69;
      operator delete(v69);
    }

    v68 -= 24;
    if (!v68)
    {
      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v82)
      {
        v83 = v82;
        operator delete(v82);
      }

      if (v84)
      {
        v85 = v84;
        operator delete(v84);
      }

      if (v86)
      {
        v87 = v86;
        operator delete(v86);
      }

      if (v88)
      {
        v89 = v88;
        operator delete(v88);
      }

      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      if (v102)
      {
        v103 = v102;
        operator delete(v102);
      }

      if (v104)
      {
        v105 = v104;
        operator delete(v104);
      }

      if (v106)
      {
        v107 = v106;
        operator delete(v106);
      }

      if (v108)
      {
        v109 = v108;
        operator delete(v108);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA14690()
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  JUMPOUT(0x29AA146C4);
}

void sub_29AA14738(void *a1)
{
  __cxa_end_catch();
  if (v7 == 1)
  {
    v3 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      v4 = (*(*v3 + 16))(v3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find vertex element %s\n", v5, v6, v4);
    }

    *(v1 + 867) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29AA12F94);
  }

  JUMPOUT(0x29AA14F40);
}

void sub_29AA147A8(void *a1, int a2)
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      (*(*v4 + 16))(v4);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid color data: %s\n", v5, v6);
    }

    __cxa_end_catch();
    JUMPOUT(0x29AA128CCLL);
  }

  if (v11 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      v8 = (*(*v7 + 16))(v7);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find vertex element %s\n", v9, v10, v8);
    }

    *(v2 + 867) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29AA12F94);
  }

  JUMPOUT(0x29AA14F40);
}

void sub_29AA147F8(void *a1, int a2)
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      (*(*v4 + 16))(v4);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid alpha color data: %s\n", v5, v6);
    }

    __cxa_end_catch();
    JUMPOUT(0x29AA128FCLL);
  }

  if (v11 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      v8 = (*(*v7 + 16))(v7);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find vertex element %s\n", v9, v10, v8);
    }

    *(v2 + 867) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29AA12F94);
  }

  JUMPOUT(0x29AA14F40);
}

void sub_29AA148D8(void *a1, int a2)
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      (*(*v3 + 16))(v3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid color data: %s\n", v4, v5);
    }

    __cxa_end_catch();
    JUMPOUT(0x29AA128CCLL);
  }

  JUMPOUT(0x29AA149D4);
}

void sub_29AA14904()
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  JUMPOUT(0x29AA1494CLL);
}

void sub_29AA14A00(void *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      (*(*v2 + 16))(v2);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid uv data: %s\n", v3);
    }

    __cxa_end_catch();
    JUMPOUT(0x29AA1283CLL);
  }

  JUMPOUT(0x29AA14AECLL);
}

void sub_29AA14A0C(void *a1, int a2)
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      (*(*v4 + 16))(v4);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid normal data: %s\n", v5, v6);
    }

    __cxa_end_catch();
    JUMPOUT(0x29AA127D0);
  }

  if (v11 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      v8 = (*(*v7 + 16))(v7);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find vertex element %s\n", v9, v10, v8);
    }

    *(v2 + 867) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29AA12F94);
  }

  JUMPOUT(0x29AA14F40);
}

void sub_29AA14A2C()
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  JUMPOUT(0x29AA14A64);
}

void sub_29AA14B20(void *a1, int a2)
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      (*(*v3 + 16))(v3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid normal data: %s\n", v4, v5);
    }

    __cxa_end_catch();
    JUMPOUT(0x29AA127D0);
  }

  JUMPOUT(0x29AA14C0CLL);
}

void sub_29AA14B54()
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  JUMPOUT(0x29AA14B80);
}

void sub_29AA14C44(void *a1, int a2)
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      (*(*v4 + 16))(v4);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid position data: %s\n", v5, v6);
    }

    __cxa_end_catch();
    JUMPOUT(0x29AA13E90);
  }

  if (v11 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      v8 = (*(*v7 + 16))(v7);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find vertex element %s\n", v9, v10, v8);
    }

    *(v2 + 867) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29AA12F94);
  }

  JUMPOUT(0x29AA14F40);
}

void sub_29AA14D80(void *a1)
{
  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (v7 == 1)
  {
    v3 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      v4 = (*(*v3 + 16))(v3);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find vertex element %s\n", v5, v6, v4);
    }

    *(v1 + 867) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29AA12F94);
  }

  JUMPOUT(0x29AA14F40);
}

void sub_29AA14DEC(_Unwind_Exception *a1)
{
  do
  {
    v1 -= 8;
    sub_29A0CD654(v1);
  }

  while (v1 != &STACK[0x900]);
  v3 = 1080;
  while (1)
  {
    v4 = *&v5[v3 - 24];
    if (v4)
    {
      *&v5[v3 - 16] = v4;
      operator delete(v4);
    }

    v3 -= 24;
    if (!v3)
    {
      if (v6)
      {
        v7 = v6;
        operator delete(v6);
      }

      if (v8)
      {
        v9 = v8;
        operator delete(v8);
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      if (v12)
      {
        v13 = v12;
        operator delete(v12);
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA14E2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    JUMPOUT(0x29AA14E5CLL);
  }

  if (v67 == 1)
  {
    v63 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      v64 = (*(*v63 + 16))(v63);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Could not find vertex element %s\n", v65, v66, v64);
    }

    *(v62 + 867) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29AA12F94);
  }

  JUMPOUT(0x29AA14F40);
}

void sub_29AA14EE0(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v2 = 1080;
  while (1)
  {
    v3 = *&v4[v2 - 24];
    if (v3)
    {
      *&v4[v2 - 16] = v3;
      operator delete(v3);
    }

    v2 -= 24;
    if (!v2)
    {
      if (v5)
      {
        v6 = v5;
        operator delete(v5);
      }

      if (v7)
      {
        v8 = v7;
        operator delete(v7);
      }

      if (v9)
      {
        v10 = v9;
        operator delete(v9);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA14F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v54 = STACK[0x900];
  if (STACK[0x900])
  {
    STACK[0x908] = v54;
    operator delete(v54);
  }

  STACK[0x900] = &a54;
  sub_29AA17244(&STACK[0x900]);
  JUMPOUT(0x29AA14F40);
}

void sub_29AA1509C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54)
{
  a54 = &STACK[0x900];
  sub_29A0C25EC(&a54);
  if (a2 == 1)
  {
    v59 = __cxa_begin_catch(a1);
    if (sub_29AA020CC(0))
    {
      (*(*v59 + 16))(v59);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Invalid index data: %s\n", v60, v61);
    }

    if (sub_29AA020CC(0))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Creating triangulation indices\n", v62, v63);
    }

    adobe::usd::createTriangulationIndices(v56);
  }

  v54 = 1080;
  while (1)
  {
    v55 = *&v64[v54 - 24];
    if (v55)
    {
      *&v64[v54 - 16] = v55;
      operator delete(v55);
    }

    v54 -= 24;
    if (!v54)
    {
      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v77)
      {
        v78 = v77;
        operator delete(v77);
      }

      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      if (v81)
      {
        v82 = v81;
        operator delete(v81);
      }

      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      if (v85)
      {
        v86 = v85;
        operator delete(v85);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      if (v97)
      {
        v98 = v97;
        operator delete(v97);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA15134(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v1 = 1080;
  while (1)
  {
    v2 = *&v4[v1 - 24];
    if (v2)
    {
      *&v4[v1 - 16] = v2;
      operator delete(v2);
    }

    v1 -= 24;
    if (!v1)
    {
      if (v5)
      {
        v6 = v5;
        operator delete(v5);
      }

      if (v7)
      {
        v8 = v7;
        operator delete(v7);
      }

      if (v9)
      {
        v10 = v9;
        operator delete(v9);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA1514C(void *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  JUMPOUT(0x29AA15094);
}

uint64_t sub_29AA1515C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 == v3)
  {
    return 0;
  }

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

  while (1)
  {
    v7 = *(v2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v2 + 8);
    }

    if (v7 == v5)
    {
      v9 = v8 >= 0 ? v2 : *v2;
      if (!memcmp(v9, v6, v5))
      {
        break;
      }
    }

    v2 += 56;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_29AA151F4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 == v3)
  {
LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x29C2C1830](exception, v12);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

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

  while (1)
  {
    v7 = *(v2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v2 + 8);
    }

    if (v7 == v5)
    {
      v9 = v8 >= 0 ? v2 : *v2;
      if (!memcmp(v9, v6, v5))
      {
        return v2;
      }
    }

    v2 += 56;
    if (v2 == v3)
    {
      goto LABEL_16;
    }
  }
}

void sub_29AA152F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

float **sub_29AA15328(float **a1, uint64_t a2, uint64_t a3)
{
  v6 = *sub_29AA15BB4(a2, a3);
  if (v6)
  {
    v7 = __dynamic_cast(v6, &unk_2A206E5B8, &unk_2A206ED20, 0);
    if (v7)
    {
      return (v7 + 32);
    }
  }

  v8 = *sub_29AA15BB4(a2, a3);
  if (v8 && (v9 = __dynamic_cast(v8, &unk_2A206E5B8, &unk_2A206E7D0, 0)) != 0)
  {
    v10 = v9;
    sub_29A0A171C(a1, (v9[5] - v9[4]) >> 1);
    adobe::usd::float16ToFloat32(v10[4], *a1, ((v10[5] - v10[4]) >> 1));
  }

  else
  {
    v11 = *sub_29AA15BB4(a2, a3);
    if (!v11 || (v12 = __dynamic_cast(v11, &unk_2A206E5B8, &unk_2A206EE30, 0)) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v22 = std::string::append(&v31, " does not have property ");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v25 = a3;
      }

      else
      {
        v25 = *a3;
      }

      if (v24 >= 0)
      {
        v26 = *(a3 + 23);
      }

      else
      {
        v26 = *(a3 + 8);
      }

      v27 = std::string::append(&v32, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&v33, " with the specific type.");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v35 = v29->__r_.__value_.__r.__words[2];
      v34 = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C2C1830](exception, &v34);
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v13 = v12;
    sub_29A0A171C(a1, (v12[5] - v12[4]) >> 3);
    v14 = v13[4];
    v15 = v13[5] - v14;
    if (v15)
    {
      v16 = v15 >> 3;
      v17 = *a1;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      do
      {
        v18 = *v14++;
        v19 = v18;
        *v17++ = v19;
        --v16;
      }

      while (v16);
    }
  }

  return a1;
}

void sub_29AA155CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

char *sub_29AA15664(uint64_t a1, uint64_t a2)
{
  v3 = *sub_29AA15BB4(a1, a2);
  if (!v3 || (v4 = __dynamic_cast(v3, &unk_2A206E5B8, &unk_2A206E6C0, 0)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v7 = std::string::append(&v16, " does not have property ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::string::append(&v17, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v18, " with the specific type.");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v20 = v14->__r_.__value_.__r.__words[2];
    v19 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2C1830](exception, &v19);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return v4 + 32;
}

void sub_29AA157CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

uint64_t sub_29AA15864(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 == v3)
  {
    return 0;
  }

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

  while (1)
  {
    v7 = *v2;
    v8 = *(*v2 + 31);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(*v2 + 16);
    }

    if (v8 == v5)
    {
      v12 = *(v7 + 8);
      v10 = v7 + 8;
      v11 = v12;
      v13 = (v9 >= 0 ? v10 : v11);
      if (!memcmp(v13, v6, v5))
      {
        break;
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_29AA15900(uint64_t a1)
{
  *&v17 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "face");
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_29A280C48(&v11, __p, v16, 1uLL);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = v11;
  for (i = v12; v2 != i; v2 += 3)
  {
    sub_29A008E78(__p, "vertex_indices");
    sub_29A008E78(v16, "vertex_index");
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_29A280C48(&v8, __p, &v17, 2uLL);
    for (j = 0; j != -6; j -= 3)
    {
      if (SHIBYTE(v16[j + 2]) < 0)
      {
        operator delete(v16[j]);
      }
    }

    v5 = v8;
    if (v8 != v9)
    {
      v6 = sub_29AA151F4(a1, v2);
      sub_29AA15D98(v6, v5);
    }

    __p[0] = &v8;
    sub_29A012C90(__p);
  }

  __p[0] = &v11;
  sub_29A012C90(__p);
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "PLY parser: could not find face vertex indices attribute under any common name.");
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void sub_29AA15B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v24 = &a24;
  v25 = -48;
  v26 = &a24;
  while (1)
  {
    v27 = *v26;
    v26 -= 24;
    if (v27 < 0)
    {
      operator delete(*(v24 - 23));
    }

    v24 = v26;
    v25 += 24;
    if (!v25)
    {
      v30 = &v29;
      sub_29A012C90(&v30);
      _Unwind_Resume(v28);
    }
  }
}

void sub_29AA15B80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v23 = &v22;
  sub_29A012C90(&v23);
  _Unwind_Resume(v21);
}

uint64_t *sub_29AA15BB4(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 == v4)
  {
LABEL_16:
    v15 = a2;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v17 = std::string::append(&v25, " does not have property ");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = *(v15 + 23);
    if (v19 >= 0)
    {
      v20 = v15;
    }

    else
    {
      v20 = *v15;
    }

    if (v19 >= 0)
    {
      v21 = *(v15 + 23);
    }

    else
    {
      v21 = v15[1];
    }

    v22 = std::string::append(&v26, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v28 = v22->__r_.__value_.__r.__words[2];
    v27 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2C1830](exception, &v27);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (1)
  {
    v8 = *v3;
    v9 = *(*v3 + 31);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(*v3 + 16);
    }

    if (v9 == v6)
    {
      v13 = *(v8 + 8);
      v11 = v8 + 8;
      v12 = v13;
      v14 = (v10 >= 0 ? v11 : v12);
      if (!memcmp(v14, v7, v6))
      {
        return v3;
      }
    }

    if (++v3 == v4)
    {
      goto LABEL_16;
    }
  }
}

void sub_29AA15D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void sub_29AA15D98(uint64_t a1, const void **a2)
{
  v2 = a1;
  v3 = sub_29AA15BB4(a1, a2);
  sub_29AA15E90(v2, *v3);
}

void sub_29AA15DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    sub_29AA16010(v17, *v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA15E90(int a1, void *lpsrc)
{
  if (lpsrc)
  {
    v4 = __dynamic_cast(lpsrc, &unk_2A206E5B8, &unk_2A206EE48, 0);
    if (v4)
    {
      v5 = v4;
      memset(v9, 0, sizeof(v9));
      sub_29A08AF9C(v9, (v4[5] - v4[4]) >> 3);
      v6 = v5[4];
      v7 = v5[5];
      while (v6 != v7)
      {
        v8 = *v6;
        sub_29A018094(v9, &v8);
        ++v6;
      }

      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }
  }

  sub_29AA1625C(a1, lpsrc);
}

void sub_29AA15FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA16010(int a1, void *lpsrc)
{
  if (lpsrc)
  {
    v4 = __dynamic_cast(lpsrc, &unk_2A206E5B8, &unk_2A206EE60, 0);
    if (v4)
    {
      v5 = v4;
      memset(v9, 0, sizeof(v9));
      sub_29A08AF9C(v9, (v4[5] - v4[4]) >> 3);
      v6 = v5[4];
      v7 = v5[5];
      while (v6 != v7)
      {
        v8 = *v6;
        sub_29A018094(v9, &v8);
        ++v6;
      }

      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }
  }

  sub_29AA16998(a1, lpsrc);
}

void sub_29AA16158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA16190@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = ((a2[1] - *a2) >> 3) - 1;
  result = sub_29AA163DC(a3, v6);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    while (v6 != v9)
    {
      v10 = (*a2 + 8 * v9++);
      v11 = v8 + 24;
      result = sub_29A36E4AC((*a3 + v8), *(*a3 + v8), (*a1 + 8 * *v10), (*a1 + 8 * v10[1]), (8 * v10[1] - 8 * *v10) >> 3);
      v8 = v11;
    }
  }

  return result;
}

void sub_29AA16244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0C25EC(va);
  _Unwind_Resume(a1);
}

void sub_29AA1625C(int a1, void *lpsrc)
{
  if (lpsrc)
  {
    v4 = __dynamic_cast(lpsrc, &unk_2A206E5B8, &unk_2A206E858, 0);
    if (v4)
    {
      v5 = v4;
      memset(v9, 0, sizeof(v9));
      sub_29A08AF9C(v9, (v4[5] - v4[4]) >> 2);
      v6 = v5[4];
      v7 = v5[5];
      while (v6 != v7)
      {
        v8 = *v6;
        sub_29A018094(v9, &v8);
        ++v6;
      }

      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }
  }

  sub_29AA16480(a1, lpsrc);
}

void sub_29AA163A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA163DC(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A012BFC(a1, a2);
    v4 = a1[1];
    v5 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v4, v5);
    a1[1] = &v4[v5];
  }

  return a1;
}

void sub_29AA16480(int a1, void *lpsrc)
{
  if (lpsrc)
  {
    v4 = __dynamic_cast(lpsrc, &unk_2A206E5B8, &unk_2A206E748, 0);
    if (v4)
    {
      v5 = v4;
      memset(v9, 0, sizeof(v9));
      sub_29A08AF9C(v9, (v4[5] - v4[4]) >> 1);
      v6 = v5[4];
      v7 = v5[5];
      while (v6 != v7)
      {
        v8 = *v6;
        sub_29A018094(v9, &v8);
        ++v6;
      }

      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }
  }

  sub_29AA16600(a1, lpsrc);
}

void sub_29AA165C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA16600(int a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_2A206E5B8, &unk_2A206E5C8, 0);
    if (v3)
    {
      v4 = v3;
      v31 = 0uLL;
      v32 = 0;
      sub_29A08AF9C(&v31, v3[5] - v3[4]);
      v5 = v4[4];
      v6 = v4[5];
      while (v5 != v6)
      {
        v27.__r_.__value_.__r.__words[0] = *v5;
        sub_29A018094(&v31, &v27);
        ++v5;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  v8 = std::string::append(&v24, " cannot be coerced to requested type list ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_29A008E78(v22, "unknown");
  if ((v23 & 0x80u) == 0)
  {
    v10 = v22;
  }

  else
  {
    v10 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v11 = v23;
  }

  else
  {
    v11 = v22[1];
  }

  v12 = std::string::append(&v25, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v26, ". Has type list ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(*lpsrc + 88))(v20, lpsrc);
  if ((v21 & 0x80u) == 0)
  {
    v16 = v20;
  }

  else
  {
    v16 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v17 = v21;
  }

  else
  {
    v17 = v20[1];
  }

  v18 = std::string::append(&v27, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32 = v18->__r_.__value_.__r.__words[2];
  v31 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x29C2C1830](exception, &v31);
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void sub_29AA16878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 57) < 0)
  {
    operator delete(*(v42 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v41 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_18;
  }

  __cxa_free_exception(v40);
  goto LABEL_18;
}

void sub_29AA16998(int a1, void *lpsrc)
{
  if (lpsrc)
  {
    v4 = __dynamic_cast(lpsrc, &unk_2A206E5B8, &unk_2A206EB88, 0);
    if (v4)
    {
      v5 = v4;
      memset(v9, 0, sizeof(v9));
      sub_29A08AF9C(v9, (v4[5] - v4[4]) >> 2);
      v6 = v5[4];
      v7 = v5[5];
      while (v6 != v7)
      {
        v8 = *v6;
        sub_29A018094(v9, &v8);
        ++v6;
      }

      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }
  }

  sub_29AA16B18(a1, lpsrc);
}

void sub_29AA16AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA16B18(int a1, void *lpsrc)
{
  if (lpsrc)
  {
    v4 = __dynamic_cast(lpsrc, &unk_2A206E5B8, &unk_2A206EA78, 0);
    if (v4)
    {
      v5 = v4;
      memset(v9, 0, sizeof(v9));
      sub_29A08AF9C(v9, (v4[5] - v4[4]) >> 1);
      v6 = v5[4];
      v7 = v5[5];
      while (v6 != v7)
      {
        v8 = *v6;
        sub_29A018094(v9, &v8);
        ++v6;
      }

      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }
  }

  sub_29AA16C98(a1, lpsrc);
}

void sub_29AA16C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA16C98(int a1, void *lpsrc)
{
  if (lpsrc)
  {
    v3 = __dynamic_cast(lpsrc, &unk_2A206E5B8, &unk_2A206E968, 0);
    if (v3)
    {
      v4 = v3;
      v31 = 0uLL;
      v32 = 0;
      sub_29A08AF9C(&v31, v3[5] - v3[4]);
      v5 = v4[4];
      v6 = v4[5];
      while (v5 != v6)
      {
        v27.__r_.__value_.__r.__words[0] = *v5;
        sub_29A018094(&v31, &v27);
        ++v5;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  v8 = std::string::append(&v24, " cannot be coerced to requested type list ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_29A008E78(v22, "unknown");
  if ((v23 & 0x80u) == 0)
  {
    v10 = v22;
  }

  else
  {
    v10 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v11 = v23;
  }

  else
  {
    v11 = v22[1];
  }

  v12 = std::string::append(&v25, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v26, ". Has type list ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  (*(*lpsrc + 88))(v20, lpsrc);
  if ((v21 & 0x80u) == 0)
  {
    v16 = v20;
  }

  else
  {
    v16 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v17 = v21;
  }

  else
  {
    v17 = v20[1];
  }

  v18 = std::string::append(&v27, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32 = v18->__r_.__value_.__r.__words[2];
  v31 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x29C2C1830](exception, &v31);
  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void sub_29AA16F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 57) < 0)
  {
    operator delete(*(v42 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v41 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_18;
  }

  __cxa_free_exception(v40);
  goto LABEL_18;
}

std::locale *sub_29AA17030(std::locale *result, std::locale *a2, std::locale *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A1BF94C(result, a4);
    result = sub_29AA170B8(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AA17098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AA17244(&a9);
  _Unwind_Resume(a1);
}

std::locale *sub_29AA170B8(uint64_t a1, std::locale *a2, std::locale *a3, std::locale *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a1;
    do
    {
      sub_29AA1714C(v7, v4, v6);
      v6 += 8;
      v4 = v12 + 8;
      v12 += 8;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29AA171A8(v9);
  return v4;
}

std::locale *sub_29AA1714C(int a1, std::locale *this, std::locale *a3)
{
  result = std::locale::locale(this, a3);
  *&result[1].__locale_ = *&a3[1].__locale_;
  *&result[3].__locale_ = *&a3[3].__locale_;
  locale = a3[6].__locale_;
  result[5].__locale_ = a3[5].__locale_;
  result[6].__locale_ = locale;
  if (locale)
  {
    atomic_fetch_add_explicit(locale + 1, 1uLL, memory_order_relaxed);
  }

  result[7].__locale_ = a3[7].__locale_;
  return result;
}

uint64_t sub_29AA171A8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29AA171F4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_29AA171F4(uint64_t a1, uint64_t a2, std::locale *a3, uint64_t a4, std::locale *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      locale = v6[-2].__locale_;
      if (locale)
      {
        sub_29A014BEC(locale);
      }

      v6 -= 8;
      std::locale::~locale(v6);
    }

    while (v6 != a5);
  }
}

void sub_29AA17244(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AA17298(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29AA17298(uint64_t a1, std::locale *a2)
{
  for (i = *(a1 + 8); i != a2; std::locale::~locale(i))
  {
    locale = i[-2].__locale_;
    if (locale)
    {
      sub_29A014BEC(locale);
    }

    i -= 8;
  }

  *(a1 + 8) = a2;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::getAssetsPathToken(pxrInternal__aapl__pxrReserved__::UsdObjFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467E0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467D8, "objAssetsPath", 0);
    __cxa_guard_release(&qword_2A17467E0);
  }

  return &qword_2A17467D8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::getPhongToken(pxrInternal__aapl__pxrReserved__::UsdObjFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467F0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467E8, "objPhong", 0);
    __cxa_guard_release(&qword_2A17467F0);
  }

  return &qword_2A17467E8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::getOriginalColorSpaceToken(pxrInternal__aapl__pxrReserved__::UsdObjFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A1746800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746800))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467F8, "objOriginalColorSpace", 0);
    __cxa_guard_release(&qword_2A1746800);
  }

  return &qword_2A17467F8;
}

void pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType::~UsdObjFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType::UsdObjFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "obj", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "1.0.8", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "usd", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA1764C(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::UsdObjFileFormat(pxrInternal__aapl__pxrReserved__::UsdObjFileFormat *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens);
  if (!v2)
  {
    v2 = sub_29AA19944(&pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens);
  if (!v3)
  {
    v3 = sub_29AA19944(&pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29AA19944(&pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens);
  if (!v5)
  {
    v5 = sub_29AA19944(&pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens);
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(this, v2, v3 + 1, v4 + 2, EmptyString);
}

void sub_29AA17810(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(v2);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29AA17830(int a1)
{
  v2 = sub_29AA199D0();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AA199D0();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F295CB8[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::~UsdObjFileFormat(pxrInternal__aapl__pxrReserved__::UsdObjFileFormat *this)
{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);

  operator delete(v2);
}

void non-virtual thunk topxrInternal__aapl__pxrReserved__::UsdObjFileFormat::~UsdObjFileFormat(pxrInternal__aapl__pxrReserved__::UsdObjFileFormat *this)
{
  v1 = (this - 112);
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(this);

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);
}

{
  v1 = (this - 112);
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(this);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);

  operator delete(v2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::InitData@<X0>(__int128 **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x88uLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  *(v4 + 16) = 0;
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(v4);
  v4[3] = 0u;
  v4[4] = 0u;
  *(v4 + 20) = 1065353216;
  *(v4 + 88) = 0;
  *v4 = &unk_2A206F008;
  *(v4 + 16) = 0;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  *(v4 + 12) = 0;
  *(v4 + 120) = 0;
  v36 = v4;
  sub_29B293C98(&v36);
  v5 = *a1;
  if (*a1 != (a1 + 1))
  {
    do
    {
      sub_29A0196C4(__dst, v5 + 2);
      if (sub_29AA17830(0))
      {
        if (v33 >= 0)
        {
          v8 = __dst;
        }

        else
        {
          v8 = __dst[0];
        }

        if (v35 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("FileFormatArg: %s = %s\n", v6, v7, v8, p_p);
      }

      if (v35 < 0)
      {
        operator delete(__p);
      }

      if (v33 < 0)
      {
        operator delete(__dst[0]);
      }

      v10 = *(v5 + 1);
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
          v11 = *(v5 + 2);
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != a1 + 1);
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v13)
  {
    v13 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v14 = *(v13 + 99) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = (v14 + 16);
    if (*(v14 + 39) < 0)
    {
      v15 = *v15;
    }
  }

  else
  {
    v15 = "";
  }

  sub_29A008E78(__dst, v15);
  v16 = sub_29AA17E1C(&v36);
  sub_29A008E78(v30, usdObj::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v16 + 88), v30);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::getAssetsPathToken(v17);
  v18 = qword_2A17467D8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467D8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v19 = (v18 + 16);
    if (*(v18 + 39) < 0)
    {
      v19 = *v19;
    }
  }

  else
  {
    v19 = "";
  }

  sub_29A008E78(__dst, v19);
  v20 = sub_29AA17E1C(&v36);
  sub_29A008E78(v30, usdObj::DEBUG_TAG);
  adobe::usd::argReadString(a1, __dst, v20 + 4, v30);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::getPhongToken(v21);
  v22 = qword_2A17467E8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467E8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v23 = (v22 + 16);
    if (*(v22 + 39) < 0)
    {
      v23 = *v23;
    }
  }

  else
  {
    v23 = "";
  }

  sub_29A008E78(__dst, v23);
  v24 = sub_29AA17E1C(&v36);
  sub_29A008E78(v30, usdObj::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v24 + 120), v30);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::getOriginalColorSpaceToken(v25);
  v26 = qword_2A17467F8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467F8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v27 = (v26 + 16);
    if (*(v26 + 39) < 0)
    {
      v27 = *v27;
    }
  }

  else
  {
    v27 = "";
  }

  sub_29A008E78(__dst, v27);
  v28 = sub_29AA17E1C(&v36);
  sub_29A008E78(v30, usdObj::DEBUG_TAG);
  adobe::usd::argReadString(a1, __dst, (v28 + 128), v30);
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v33 < 0)
  {
    operator delete(__dst[0]);
  }

  *a2 = v36;
  v36 = 0;
  return sub_29AA19A4C(&v36);
}

void sub_29AA17D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_29AA19A4C((v22 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_29AA17E1C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::ComposeFieldsForFileFormatArguments(pxrInternal__aapl__pxrReserved__::UsdObjFileFormat *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatContext *a3, int a4)
{
  pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::getAssetsPathToken(a1);
  sub_29A008E78(&__p, usdObj::DEBUG_TAG);
  adobe::usd::argComposeString(a3, a4, &qword_2A17467D8);
}

void sub_29AA17F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::Read(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3)
{
  mach_absolute_time();
  if (sub_29AA17830(0))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read: %s\n", v6, v7, v8);
  }

  sub_29A008E78(&__p, usdObj::DEBUG_TAG);
  adobe::usd::getFileExtension(a3, &__p, &v40);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p);
  }

  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
  (*(*a1 + 40))(&v39, a1, FileFormatArguments);
  v10 = v39;
  if (v39)
  {
  }

  *&__p = v10;
  sub_29B293C98(&__p);
  sub_29AA19AAC(&v38, &__p);
  sub_29AA19A7C(&__p);
  v15 = 0;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v17 = 0;
  v18 = 0x4038000000000000;
  v19 = v20;
  v20[0] = 0;
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
  v20[1] = 0;
  v37 = 0;
  __p = 0u;
  sub_29AA1855C(&v38);
}

{
  mach_absolute_time();
  if (sub_29AA17830(0))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read: %s\n", v6, v7, v8);
  }

  sub_29A008E78(&__p, usdObj::DEBUG_TAG);
  adobe::usd::getFileExtension(a3, &__p, &v40);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p);
  }

  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
  (*(*a1 + 40))(&v39, a1, FileFormatArguments);
  v10 = v39;
  if (v39)
  {
  }

  *&__p = v10;
  sub_29B293C98(&__p);
  sub_29AA19AAC(&v38, &__p);
  sub_29AA19A7C(&__p);
  v15 = 0;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v17 = 0;
  v18 = 0x4038000000000000;
  v19 = v20;
  v20[0] = 0;
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
  v20[1] = 0;
  v37 = 0;
  __p = 0u;
  sub_29AA1855C(&v38);
}

void sub_29AA1846C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_29AA19334(&a27);
  sub_29A9E5D10(&a51);
  v58 = *(v56 - 104);
  if (v58 && atomic_fetch_add_explicit(v58 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v58 + 8))(v58);
  }

  sub_29A32BD28((v56 - 96));
  if (*(v56 - 65) < 0)
  {
    operator delete(*(v56 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_29AA1855C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2BBF14();
}

void sub_29AA18A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_29AA19334(&a27);
  sub_29A9E5D10(&a51);
  v58 = *(v56 - 104);
  if (v58 && atomic_fetch_add_explicit(v58 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v58 + 8))(v58);
  }

  sub_29A32BD28((v56 - 96));
  if (*(v56 - 65) < 0)
  {
    operator delete(*(v56 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::ReadFromString(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, char *a3)
{
  v6 = mach_absolute_time();
  FileFormatArguments = pxrInternal__aapl__pxrReserved__::SdfLayer::GetFileFormatArguments(a2);
  (*(*a1 + 40))(&v65, a1, FileFormatArguments);
  v42 = 0;
  v43 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v44 = 0;
  v45 = 0x4038000000000000;
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
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
  v63 = 0u;
  v64 = 0;
  LOBYTE(v28[0]) = 0;
  v29[0] = 0;
  v29[1] = 0;
  v28[1] = v29;
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
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (a3[23] >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v26 = 0;
  sub_29A008E78(&v19, v8);
  v9 = adobe::usd::readObj(v28, &v19);
  v10 = v9;
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_15:
    v19.__r_.__value_.__r.__words[0] = "usdObj/fileFormat.cpp";
    v19.__r_.__value_.__l.__size_ = "ReadFromString";
    v19.__r_.__value_.__r.__words[2] = 201;
    v20 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::ReadFromString(SdfLayer *, const std::string &) const";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "Error reading OBJ from string\n");
LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((adobe::usd::importObj(&v27, v28, v40) & 1) == 0)
  {
    v19.__r_.__value_.__r.__words[0] = "usdObj/fileFormat.cpp";
    v19.__r_.__value_.__l.__size_ = "ReadFromString";
    v19.__r_.__value_.__r.__words[2] = 202;
    v20 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::ReadFromString(SdfLayer *, const std::string &) const";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "Error translating OBJ to USD\n");
    goto LABEL_19;
  }

  sub_29A008E78(&v19, "obj");
  sub_29A008E78(&__p, usdObj::DEBUG_TAG);
  v11 = adobe::usd::writeLayer(&v22, v40, a2, &v65, &v19, &__p, pxrInternal__aapl__pxrReserved__::SdfFileFormat::_SetLayerData);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if ((v11 & 1) == 0)
  {
LABEL_18:
    v19.__r_.__value_.__r.__words[0] = "usdObj/fileFormat.cpp";
    v19.__r_.__value_.__l.__size_ = "ReadFromString";
    v19.__r_.__value_.__r.__words[2] = 204;
    v20 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::ReadFromString(SdfLayer *, const std::string &) const";
    v21 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v19, 3, "Error writing to the USD stage\n");
    goto LABEL_19;
  }

LABEL_11:
  v12 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v13 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v12 - v6));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Total time: %ld\n", v14, v15, v13 / 1000000);
  }

  v16 = 1;
LABEL_20:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  sub_29AA19334(v28);
  sub_29A9E5D10(v40);
  sub_29A32BD28(&v65);
  return v16;
}

void sub_29AA18E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_29AA19334(&a34);
  sub_29A9E5D10(&a58);
  sub_29A32BD28((v58 - 56));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::WriteToString()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v0)
  {
    v0 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v0, v1);
  sub_29A1DA734(v1);
}

void sub_29AA18FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdObjFileFormat::WriteToStream()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v0)
  {
    v0 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v0, v1);
  sub_29A1DA734(v1);
}

void sub_29AA19068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA19080()
{
  v2 = nullsub_1468;
  return sub_29AA190DC(v0);
}

uint64_t sub_29AA190DC(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A206EFC8;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AA19168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA1918C(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase::~Sdf_FileFormatFactoryBase(a1);

  operator delete(v1);
}

void sub_29AA19240(pxrInternal__aapl__pxrReserved__::SdfData *this)
{
  *this = &unk_2A206F008;
  v2 = *(this + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  pxrInternal__aapl__pxrReserved__::SdfData::~SdfData(this);
}

void sub_29AA192B8(pxrInternal__aapl__pxrReserved__::SdfData *this)
{
  *this = &unk_2A206F008;
  v2 = *(this + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  pxrInternal__aapl__pxrReserved__::SdfData::~SdfData(this);

  operator delete(v3);
}

uint64_t sub_29AA19334(uint64_t a1)
{
  v2 = *(a1 + 184);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 176);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = (a1 + 152);
  sub_29A012C90(&v5);
  v5 = (a1 + 128);
  sub_29A012C90(&v5);
  v5 = (a1 + 104);
  sub_29AA193FC(&v5);
  v5 = (a1 + 80);
  sub_29A8CE034(&v5);
  v5 = (a1 + 56);
  sub_29AA194DC(&v5);
  v5 = (a1 + 32);
  sub_29AA19694(&v5);
  sub_29A019EE8(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_29AA193FC(void ***a1)
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
        v4 -= 56;
        sub_29AA19484(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AA19484(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    *(a2 + 40) = v3;
    operator delete(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void sub_29AA194DC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_29AA19560(v4 - 1832);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29AA19560(uint64_t a1)
{
  if (*(a1 + 1759) < 0)
  {
    operator delete(*(a1 + 1736));
  }

  if (*(a1 + 1655) < 0)
  {
    operator delete(*(a1 + 1632));
  }

  if (*(a1 + 1551) < 0)
  {
    operator delete(*(a1 + 1528));
  }

  if (*(a1 + 1447) < 0)
  {
    operator delete(*(a1 + 1424));
  }

  if (*(a1 + 1303) < 0)
  {
    operator delete(*(a1 + 1280));
  }

  if (*(a1 + 1199) < 0)
  {
    operator delete(*(a1 + 1176));
  }

  if (*(a1 + 1087) < 0)
  {
    operator delete(*(a1 + 1064));
  }

  if (*(a1 + 983) < 0)
  {
    operator delete(*(a1 + 960));
  }

  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  if (*(a1 + 775) < 0)
  {
    operator delete(*(a1 + 752));
  }

  if (*(a1 + 671) < 0)
  {
    operator delete(*(a1 + 648));
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29AA19694(void ***a1)
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
        v4 -= 48;
        sub_29AA1971C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29AA1971C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  sub_29AA19764(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_29AA19764(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      sub_29AA197E8(v3 - 416);
    }

    v1[1] = v2;

    operator delete(v2);
  }
}

void sub_29AA197E8(uint64_t a1)
{
  v1 = (a1 + 384);
  sub_29AA198A0(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AA198A0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29AA198F4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29AA198F4(uint64_t result, uint64_t a2)
{
  if (*(result + 8) != a2)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  *(result + 8) = a2;
  return result;
}

pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType *sub_29AA19944(atomic_ullong *a1)
{
  result = sub_29AA1998C();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType::~UsdObjFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType *sub_29AA1998C()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdObjFileFormatTokens_StaticTokenType::UsdObjFileFormatTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AA199D0()
{
  if ((atomic_load_explicit(&qword_2A14F8E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8E10))
  {
    v1 = operator new(8uLL);
    *v1 = 0;
    qword_2A14F8E08 = v1;
    __cxa_guard_release(&qword_2A14F8E10);
  }

  return qword_2A14F8E08;
}

uint64_t *sub_29AA19AAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29AA19B0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

void adobe::usd::warnFromIntermediateAndCalculateLine(uint64_t a1, unint64_t a2, char *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v20 = "usdObj/obj.cpp";
    v21 = "warnFromIntermediateAndCalculateLine";
    v22 = 136;
    v23 = "void adobe::usd::warnFromIntermediateAndCalculateLine(const ObjIntermediate &, const char *)";
    v24 = 0;
    v7 = "Error parsing OBJ: error calculating line number of empty data";
    goto LABEL_8;
  }

  v4 = *(a1 + 8);
  v5 = &v4[v3];
  if (v4 > a2 || v5 <= a2)
  {
    v20 = "usdObj/obj.cpp";
    v21 = "warnFromIntermediateAndCalculateLine";
    v22 = 144;
    v23 = "void adobe::usd::warnFromIntermediateAndCalculateLine(const ObjIntermediate &, const char *)";
    v24 = 0;
    v7 = "Error parsing OBJ: error calculating line number of invalid character";
LABEL_8:
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v20, v7, a3);
    return;
  }

  if (v3 < 1)
  {
    v9 = 1;
    v10 = *(a1 + 8);
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 1;
  v10 = *(a1 + 8);
  v11 = v10;
  while (1)
  {
    v8 |= v11 >= a2;
    v12 = *v11;
    if (v12 == 13 || v12 == 10)
    {
      break;
    }

    v4 = v11 + 1;
LABEL_22:
    v11 = v4;
    if (v4 >= v5)
    {
      goto LABEL_26;
    }
  }

  if ((v8 & 1) == 0)
  {
    ++v9;
    v4 = v11 + 1;
    if ((v11 + 1) < v5 && v12 == 13)
    {
      v14 = v11[1];
      v15 = v11 + 2;
      if (v14 == 10)
      {
        v4 = v15;
      }
    }

    v10 = v4;
    goto LABEL_22;
  }

  v4 = v11;
LABEL_26:
  sub_29A02887C(__p, v10, v4 - v10);
  v20 = "usdObj/obj.cpp";
  v21 = "warnFromIntermediateAndCalculateLine";
  v22 = 192;
  v23 = "void adobe::usd::warnFromIntermediateAndCalculateLine(const ObjIntermediate &, const char *)";
  v24 = 0;
  if (v19 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v20, "Error parsing OBJ: Failed parsing line %zu:\n%s", v16, v9, v17);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29AA19CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::readFileContents(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = pxrInternal__aapl__pxrReserved__::ArchOpenFile(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  fseek(v3, 0, 2);
  v6 = MEMORY[0x29C2C4BE0](v4);
  if (v6 < 0)
  {
    v13[0] = "usdObj/obj.cpp";
    v13[1] = "readFileContents";
    v13[2] = 206;
    v13[3] = "BOOL adobe::usd::readFileContents(const std::string &, std::vector<char> &)";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "Unable to read file %s", v5);
    return 0;
  }

  fseek(v4, 0, 0);
  v7 = (v6 + 1);
  v8 = *a2;
  v9 = a2[1] - *a2;
  if (v7 <= v9)
  {
    if (v7 < v9)
    {
      a2[1] = &v8[v7];
    }
  }

  else
  {
    sub_29A1B2C78(a2, v7 - v9);
    v8 = *a2;
  }

  v11 = v6 & 0x7FFFFFFF;
  v10 = 1;
  fread(v8, v11, 1uLL, v4);
  (*a2)[v11] = 0;
  fclose(v4);
  return v10;
}

const char ***adobe::usd::nextLine(const char ***this, const char **a2, const char *a3)
{
  v3 = *this;
  if (*this < a2)
  {
    while (*v3 != 10)
    {
      v3 = (v3 + 1);
      *this = v3;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }
  }

  *this = (v3 + 1);
  return this;
}

uint64_t adobe::usd::countLineLen(adobe::usd *this, adobe::usd *a2, const char *a3)
{
  if (this >= a2)
  {
    return 0;
  }

  v3 = this;
  result = 0;
  v5 = (a2 - v3);
  while (*v3 != 10)
  {
    ++v3;
    result = (result + 1);
    if (v3 == a2)
    {
      return v5;
    }
  }

  return result;
}

BOOL adobe::usd::skipWhitespace(const char ***this, const char **a2, const char *a3)
{
  v3 = *this;
  if (*this >= a2)
  {
    return 1;
  }

  while (1)
  {
    v4 = *v3;
    if (v4 != 32)
    {
      break;
    }

    v3 = (v3 + 1);
    *this = v3;
    if (v3 == a2)
    {
      return 1;
    }
  }

  return v4 <= 0xD && ((1 << v4) & 0x2401) != 0;
}

uint64_t adobe::usd::nextFloat(const char ***this, const char **a2, float *a3, float *a4)
{
  v5 = *this;
  if (v5 >= a2 || *v5 == 10)
  {
    return 0;
  }

  while (*v5 == 32)
  {
    v5 = (v5 + 1);
    *this = v5;
    if (v5 == a2)
    {
      v5 = a2;
      break;
    }
  }

  v6 = v5;
  if (v5 < a2)
  {
    v7 = (a2 - v5);
    v6 = v5;
    while (1)
    {
      v8 = *v6;
      v9 = v8 > 0x20;
      v10 = (1 << v8) & 0x100002401;
      if (!v9 && v10 != 0)
      {
        break;
      }

      ++v6;
      if (!--v7)
      {
        v6 = a2;
        break;
      }
    }
  }

  sub_29AA23E54(v5, v6, a3, 0x2E00000005);
  if (v12)
  {
    return 0;
  }

  *this = v6;
  return 1;
}

uint64_t adobe::usd::nextFloat2(const char ***a1, const char **a2, float *a3, float *a4)
{
  result = adobe::usd::nextFloat(a1, a2, a3, a4);
  if (result)
  {

    return adobe::usd::nextFloat(a1, a2, a3 + 1, v8);
  }

  return result;
}

uint64_t adobe::usd::nextFloat3(const char ***a1, const char **a2, float *a3, float *a4)
{
  if (!adobe::usd::nextFloat(a1, a2, a3, a4) || !adobe::usd::nextFloat(a1, a2, a3 + 1, v7))
  {
    return 0;
  }

  return adobe::usd::nextFloat(a1, a2, a3 + 2, v8);
}

float adobe::usd::nextInteger(const char ***this, const char **a2, char *a3, float *a4)
{
  *v6 = 0.0;
  if (adobe::usd::nextFloat(this, a2, v6, a4))
  {
    result = *v6;
    *a3 = *v6;
  }

  return result;
}

void adobe::usd::nextText(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = *a1;
  if (*a1 < a2)
  {
    do
    {
      if (*v3 != 32)
      {
        goto LABEL_5;
      }

      *a1 = ++v3;
    }

    while (v3 != a2);
    v3 = a2;
  }

LABEL_5:
  if (v3 < a2)
  {
    v4 = a2 - v3;
    v5 = v3;
    do
    {
      v6 = *v5;
      v7 = v6 > 0x20;
      v8 = (1 << v6) & 0x100002401;
      if (!v7 && v8 != 0)
      {
        break;
      }

      ++v5;
      --v4;
    }

    while (v4);
  }

  JUMPOUT(0x29C2C1A70);
}

std::string *adobe::usd::nextConcatenatedText(std::string *result, const std::string::value_type *a2, std::string *this)
{
  v5 = result;
  v6 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0] < a2)
  {
    while (*v6 == 32)
    {
      result->__r_.__value_.__r.__words[0] = ++v6;
      if (v6 == a2)
      {
        v6 = a2;
        break;
      }
    }
  }

  if (v6 < a2)
  {
    do
    {
      v7 = *v6;
      v8 = v7 > 0xD;
      v9 = (1 << v7) & 0x2401;
      if (!v8 && v9 != 0)
      {
        break;
      }

      v11 = v6;
      if (v6 < a2)
      {
        v12 = a2 - v6;
        v11 = v6;
        while (1)
        {
          v13 = *v11;
          v8 = v13 > 0x20;
          v14 = (1 << v13) & 0x100002401;
          if (!v8 && v14 != 0)
          {
            break;
          }

          ++v11;
          if (!--v12)
          {
            v11 = a2;
            break;
          }
        }
      }

      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::append(this, "_");
        v6 = v5->__r_.__value_.__r.__words[0];
      }

      result = std::string::append(this, v6, v11 - v6);
      v5->__r_.__value_.__r.__words[0] = v11;
      if (v11 < a2)
      {
        v17 = a2 - v11;
        do
        {
          if (*v11 != 32)
          {
            break;
          }

          v5->__r_.__value_.__r.__words[0] = ++v11;
          --v17;
        }

        while (v17);
      }

      v6 = v11;
    }

    while (v11 < a2);
  }

  return result;
}

uint64_t adobe::usd::nextFilename(unint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 < a2)
  {
    while (1)
    {
      v6 = *v5;
      if (v6 != 32 && v6 != 9)
      {
        break;
      }

      *a1 = ++v5;
      if (v5 == a2)
      {
        v5 = a2;
        break;
      }
    }
  }

  v8 = v5;
  if (v5 < a2)
  {
    v9 = a2 - v5;
    v8 = v5;
    while (1)
    {
      v10 = *v8;
      v11 = v10 > 0x2E;
      v12 = (1 << v10) & 0x400000002401;
      if (!v11 && v12 != 0)
      {
        break;
      }

      ++v8;
      if (!--v9)
      {
        v8 = a2;
        break;
      }
    }
  }

  if (v8 < a2)
  {
    v14 = a2 - v8;
    v15 = &v8[v14];
    while (1)
    {
      v16 = *v8;
      v11 = v16 > 0x20;
      v17 = (1 << v16) & 0x100002401;
      if (!v11 && v17 != 0)
      {
        break;
      }

      ++v8;
      if (!--v14)
      {
        v8 = v15;
        break;
      }
    }
  }

  result = MEMORY[0x29C2C1A70](a3, v5, v8 - v5);
  *a1 = v8;
  return result;
}

uint64_t adobe::usd::nextSpacedText(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 < a2)
  {
    while (*v5 == 32)
    {
      *a1 = ++v5;
      if (v5 == a2)
      {
        v5 = a2;
        break;
      }
    }
  }

  v6 = v5;
  if (v5 < a2)
  {
    v7 = a2 - v5;
    v8 = &v5[v7];
    v6 = v5;
    while (1)
    {
      v9 = *v6;
      v10 = v9 > 0xD;
      v11 = (1 << v9) & 0x2401;
      if (!v10 && v11 != 0)
      {
        break;
      }

      ++v6;
      if (!--v7)
      {
        v6 = v8;
        break;
      }
    }
  }

  result = MEMORY[0x29C2C1A70](a3, v5, v6 - v5);
  *a1 = v6;
  return result;
}

void sub_29AA1A560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA1A6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::checkWord(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  if (v3 + v4 < a2)
  {
    if (!v4)
    {
LABEL_14:
      *a1 = v3;
      return 1;
    }

    v7 = 0;
    while (1)
    {
      v8 = __tolower(*(v3 + v7));
      v9 = *(a3 + 23);
      v10 = (v9 & 0x80u) == 0 ? a3 : *a3;
      if (v8 != *(v10 + v7))
      {
        break;
      }

      ++v7;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a3 + 8);
      }

      if (v7 >= v9)
      {
        v3 += v7;
        goto LABEL_14;
      }
    }
  }

  return 0;
}

const char **adobe::usd::nextIndex(const char ***this, const char **a2, BOOL *a3, BOOL *a4, int *a5)
{
  result = *this;
  if (result < a2 && *result == 47)
  {
    result = (result + 1);
    *this = result;
  }

  if (result < a2)
  {
    v8 = (a2 - result);
    v9 = (result + 1);
    while (1)
    {
      v10 = *(v9 - 1);
      if (v10 <= 0x2F)
      {
        if (((1 << v10) & 0x800100002001) != 0)
        {
          v12 = (v9 - 1);
          v11 = v9 < a2 && *v9 == 13;
          a2 = v12;
          goto LABEL_18;
        }

        if (v10 == 10)
        {
          a2 = (v9 - 1);
LABEL_17:
          v11 = 1;
          goto LABEL_18;
        }
      }

      v9 = (v9 + 1);
      if (!--v8)
      {
        goto LABEL_17;
      }
    }
  }

  v11 = 1;
  a2 = result;
LABEL_18:
  *a3 = v11;
  if (result != a2)
  {
    __endptr = 0;
    result = strtol(result, &__endptr, 10);
    *a4 = result;
    if (result)
    {
      *this = __endptr;
    }
  }

  return result;
}

void adobe::usd::addEntry(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 504);
  v8 = *(v7 - 40);
  if (v8 != a2 || v8 == 8)
  {
    v14 = v5;
    v15 = v6;
    LODWORD(v10) = a2;
    *(&v10 + 1) = 1;
    v11 = a3;
    v12 = a4;
    v13 = a5;
    sub_29A1B33FC(a1 + 496, &v10);
  }

  else
  {
    ++*(v7 - 32);
  }
}

void adobe::usd::splitObjIntermediates(uint64_t *a1, int a2, uint64_t *a3)
{
  v6 = a2;
  sub_29AA1A9A4(a3, a2);
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a1;
    v10 = a1[1] - *a1;
    v11 = *a3;
    v12 = v10 / v6;
    do
    {
      if (v10 >= v8 + v12)
      {
        v13 = v8 + v12;
      }

      else
      {
        v13 = v10;
      }

      if (v8 + v12 < v10)
      {
        while (1)
        {
          v14 = *(v9 + v13++);
          if (v14 == 10)
          {
            break;
          }

          if (v13 >= v10)
          {
            v13 = v10;
            break;
          }
        }
      }

      v15 = v11 + 528 * v7;
      *v15 = v7;
      *(v15 + 8) = v9;
      *(v15 + 16) = v10;
      *(v15 + 24) = v9 + v8;
      *(v15 + 32) = v9 + v13;
      ++v7;
      v8 = v13;
    }

    while (v7 != a2);
  }
}

void sub_29AA1A9A4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xF83E0F83E0F83E1 * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29AA25AFC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 528 * a2;
    if (v3 != v7)
    {
      sub_29AA2396C(v3 - 528);
    }

    a1[1] = v7;
  }
}

void adobe::usd::readObjIntermediate(uint64_t a1)
{
  v61 = 0;
  *__p = 0u;
  v60 = 0u;
  sub_29A1B33FC(a1 + 496, __p);
  v58 = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v57 = v4;
  if (v4 >= v5 - 2)
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v50 = 0;
  while (1)
  {
    *v55 = 0;
    *v56 = 0;
    *v54 = 0;
    v8 = *v4;
    v9 = v4[1];
    if (v8 == 118 && v9 == 32)
    {
      v57 = v4 + 2;
      Float = adobe::usd::nextFloat(&v57, v5, &v56[4], v2);
      v12 = adobe::usd::nextFloat(&v57, v5, v56, v11);
      v14 = adobe::usd::nextFloat(&v57, v5, &v55[4], v13);
      v16 = adobe::usd::nextFloat(&v57, v5, v55, v15);
      v18 = adobe::usd::nextFloat(&v57, v5, &v54[4], v17);
      v20 = adobe::usd::nextFloat(&v57, v5, v54, v19);
      v22 = Float & v12 & v14;
      if (v22 == 1 && v16 && v18 && v20)
      {
        __p[0] = __PAIR64__(*v56, *&v56[4]);
        LODWORD(__p[1]) = *&v55[4];
        sub_29AA261EC((a1 + 72), __p);
        __p[0] = __PAIR64__(*&v54[4], *v55);
        LODWORD(__p[1]) = *v54;
        v23 = (a1 + 112);
      }

      else
      {
        if (!v22)
        {
          goto LABEL_101;
        }

        __p[0] = __PAIR64__(*v56, *&v56[4]);
        LODWORD(__p[1]) = *&v55[4];
        v23 = (a1 + 72);
      }

      sub_29AA261EC(v23, __p);
      ++v6;
      goto LABEL_24;
    }

    if (v8 == 118 && v9 == 116)
    {
      v57 = v4 + 3;
      if (!adobe::usd::nextFloat(&v57, v5, &v56[4], v2) || !adobe::usd::nextFloat(&v57, v5, v56, v24))
      {
        goto LABEL_101;
      }

      ++v7;
      __p[0] = __PAIR64__(*v56, *&v56[4]);
      sub_29AA262A4((a1 + 152), __p);
      goto LABEL_24;
    }

    if (v8 != 118 || v9 != 110)
    {
      break;
    }

    v57 = v4 + 3;
    if (!adobe::usd::nextFloat(&v57, v5, &v56[4], v2) || !adobe::usd::nextFloat(&v57, v5, v56, v25) || !adobe::usd::nextFloat(&v57, v5, &v55[4], v26))
    {
      goto LABEL_101;
    }

    ++v50;
    __p[0] = __PAIR64__(*v56, *&v56[4]);
    LODWORD(__p[1]) = *&v55[4];
    sub_29AA261EC((a1 + 192), __p);
LABEL_24:
    v27 = v57;
    if (v57 < v5 && *v57 != 10)
    {
      v28 = v57 + 1;
      while (v28 != v5)
      {
        v29 = *v28++;
        if (v29 == 10)
        {
          v27 = v28 - 1;
          goto LABEL_46;
        }
      }

      v27 = v5;
    }

LABEL_46:
    v4 = v27 + 1;
    v57 = v4;
    if (v4 >= v5 - 2)
    {
      return;
    }
  }

  if (v8 == 102 && v9 == 32)
  {
    v57 = v4 + 2;
    LODWORD(__str) = *(a1 + 272);
    v58 = 0;
    do
    {
      *v52 = 0;
      *v51 = 0;
      v30 = v57;
      if (v57 >= v5)
      {
        break;
      }

      while (1)
      {
        v31 = *v30;
        if (v31 != 32)
        {
          break;
        }

        if (++v30 == v5)
        {
          v30 = v5;
LABEL_71:
          v57 = v30;
          goto LABEL_72;
        }
      }

      v32 = v31 > 0xD;
      v33 = (1 << v31) & 0x2401;
      if (!v32 && v33 != 0)
      {
        goto LABEL_71;
      }

      v57 = v30;
      adobe::usd::nextIndex(&v57, v5, &v58, &v52[4], v3);
      adobe::usd::nextIndex(&v57, v5, &v58, v52, v35);
      adobe::usd::nextIndex(&v57, v5, &v58, v51, v36);
      if (!*&v52[4])
      {
        goto LABEL_101;
      }

      __p[0] = __PAIR64__(*v52, *&v52[4]);
      LODWORD(__p[1]) = *v51;
      sub_29AA2634C((a1 + 272), __p);
    }

    while (v58 != 1);
LABEL_72:
    HIDWORD(__str) = *(a1 + 272);
    sub_29AA26404((a1 + 312), &__str);
    v40 = v6;
    v41 = v7;
    v42 = v50;
    v38 = a1;
    v39 = 7;
    goto LABEL_73;
  }

  if (v8 == 117 && v9 == 115)
  {
    sub_29A008E78(__p, "usemtl");
    v37 = adobe::usd::checkWord(&v57, v5, __p);
    if (SBYTE7(v60) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_101;
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v60 = 0;
    sub_29A091654((a1 + 400), __p);
    if (SBYTE7(v60) < 0)
    {
      operator delete(__p[0]);
    }

    adobe::usd::nextSpacedText(&v57, v5, *(a1 + 408) - 24);
    v38 = a1;
    v39 = 10;
LABEL_56:
    v40 = 0;
    v41 = 0;
    v42 = 0;
LABEL_73:
    adobe::usd::addEntry(v38, v39, v40, v41, v42);
    goto LABEL_24;
  }

  if (v8 == 109 && v9 == 116)
  {
    sub_29A008E78(__p, "mtllib");
    v43 = adobe::usd::checkWord(&v57, v5, __p);
    if (SBYTE7(v60) < 0)
    {
      operator delete(__p[0]);
    }

    if (v43)
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v60 = 0;
      adobe::usd::nextFilename(&v57, v5, __p);
      sub_29A070BA0(a1 + 424);
    }

    goto LABEL_101;
  }

  if (v8 != 97 || v9 != 100)
  {
    if (v8 == 115 && v9 == 32)
    {
      goto LABEL_24;
    }

    if (v8 != 103 || v9 != 32)
    {
      if (v8 == 111 && v9 == 32)
      {
        v57 = v4 + 2;
        __p[0] = 0;
        __p[1] = 0;
        *&v60 = 0;
        sub_29A091654((a1 + 352), __p);
        if (SBYTE7(v60) < 0)
        {
          operator delete(__p[0]);
        }

        adobe::usd::nextText(&v57, v5);
      }

      if (v8 == 35 && v9 == 77)
      {
        v45 = 0;
        v46 = v5 - v4;
        while (*v4 != 10)
        {
          ++v4;
          ++v45;
          if (v4 == v5)
          {
            v45 = v46;
            break;
          }
        }

        sub_29A008E78(__p, "#MRGB ");
        if (adobe::usd::checkWord(&v57, v5, __p))
        {
          if (SBYTE7(v60) < 0)
          {
            operator delete(__p[0]);
          }

          v47 = v45 - 7;
          if ((v47 & 7) == 0)
          {
            v48 = v47 >> 3;
            sub_29A8E740C((a1 + 112), v47 >> 3);
            v49 = v57;
            if (v47)
            {
              if (v48 <= 1)
              {
                v48 = 1;
              }

              do
              {
                LOWORD(__str) = *(v49 + 1);
                BYTE2(__str) = 0;
                *&v52[4] = *(v49 + 2);
                v52[6] = 0;
                *v52 = *(v49 + 3);
                v49 += 8;
                v52[2] = 0;
                *__p = strtol(&__str, 0, 16) / 255.0;
                *(__p + 1) = strtol(&v52[4], 0, 16) / 255.0;
                *&__p[1] = strtol(v52, 0, 16) / 255.0;
                sub_29AA1B22C((a1 + 112), __p);
                --v48;
              }

              while (v48);
            }

            v57 = v49;
          }
        }

        else if (SBYTE7(v60) < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_24;
    }

    v57 = v4 + 2;
    __p[0] = 0;
    __p[1] = 0;
    *&v60 = 0;
    sub_29A091654((a1 + 376), __p);
    if (SBYTE7(v60) < 0)
    {
      operator delete(__p[0]);
    }

    adobe::usd::nextConcatenatedText(&v57, v5, (*(a1 + 384) - 24));
    v38 = a1;
    v39 = 8;
    goto LABEL_56;
  }

  sub_29A008E78(__p, "adobe_mdllib");
  v44 = adobe::usd::checkWord(&v57, v5, __p);
  if (SBYTE7(v60) < 0)
  {
    operator delete(__p[0]);
  }

  if (v44)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v60 = 0;
    adobe::usd::nextFilename(&v57, v5, __p);
    sub_29A070BA0(a1 + 448);
  }

LABEL_101:
  *(a1 + 40) = 1;
  adobe::usd::warnFromIntermediateAndCalculateLine(a1, v57, v21);
}

void sub_29AA1B1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA1B22C(uint64_t *a1, uint64_t *a2)
{
  if (!*(a1 + 2))
  {
    v3 = *a1;
    if (a1[3])
    {
      goto LABEL_13;
    }

    v4 = a1[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = a1[4];
    if (v4)
    {
      if (a1[3])
      {
        v6 = a1;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      v8 = *a2;
      v9 = v4 + 12 * v3;
      *(v9 + 8) = *(a2 + 2);
      *v9 = v8;
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B2BBFC0();
  }

  sub_29B2BBF60();
}

void adobe::usd::joinObjIntermediates(uint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = a3[1];
  if (*a3 == v8)
  {
    v43 = 0;
    v45 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v9 += *(v7 + 72);
      v10 += *(v7 + 112);
      v11 += *(v7 + 152);
      v12 += *(v7 + 192);
      v13 += *(v7 + 232);
      v14 += *(v7 + 272);
      v15 += *(v7 + 312);
      v16 = v16 - 858993459 * ((*(v7 + 504) - *(v7 + 496)) >> 3) - 1;
      v7 += 528;
    }

    while (v7 != v8);
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v43 = v15;
    v45 = v16;
  }

  LODWORD(v47[1]) = 0;
  v47[0] = 0;
  *&__dst = v47;
  sub_29A193304(a2 + 9, v17, &__dst);
  LODWORD(v47[1]) = 0;
  v47[0] = 0;
  *&__dst = v47;
  sub_29A193304(a2 + 14, v18, &__dst);
  *&__dst = 0;
  v47[0] = &__dst;
  sub_29A190CF4(a2 + 19, v19, v47);
  LODWORD(v47[1]) = 0;
  v47[0] = 0;
  *&__dst = v47;
  sub_29A193304(a2 + 24, v20, &__dst);
  LODWORD(v47[1]) = 0;
  v47[0] = 0;
  *&__dst = v47;
  sub_29A193304(a2 + 29, v21, &__dst);
  LODWORD(v47[1]) = 0;
  v47[0] = 0;
  *&__dst = v47;
  sub_29A21C418(a2 + 34, v22, &__dst);
  *&__dst = 0;
  v47[0] = &__dst;
  sub_29A21A48C(a2 + 39, v43, v47);
  sub_29AA1B808(a2 + 62, v45);
  v23 = *a3;
  v38 = a3[1];
  if (*a3 != v38)
  {
    LODWORD(v24) = 0;
    LODWORD(v44) = 0;
    LODWORD(v46) = 0;
    LODWORD(v25) = 0;
    LODWORD(v42) = 0;
    do
    {
      v40 = v25;
      v41 = v24;
      v26 = *(v23 + 424);
      v27 = *(v23 + 432);
      while (v26 != v27)
      {
        v50 = 0;
        v48 = 0u;
        *__p = 0u;
        *v47 = 0u;
        sub_29AA1B844(a1 + 13, v47);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (SBYTE7(v48) < 0)
        {
          operator delete(v47[0]);
        }

        std::string::operator=((a1[14] - 56), v26);
        *(a1[14] - 32) = 0;
        ++v26;
      }

      v28 = *(v23 + 448);
      v29 = *(v23 + 456);
      while (v28 != v29)
      {
        v50 = 0;
        v48 = 0u;
        *__p = 0u;
        *v47 = 0u;
        sub_29AA1B844(a1 + 13, v47);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (SBYTE7(v48) < 0)
        {
          operator delete(v47[0]);
        }

        std::string::operator=((a1[14] - 56), v28);
        *(a1[14] - 32) = 1;
        ++v28;
      }

      v30 = *(v23 + 400);
      v31 = *(v23 + 408);
      while (v30 != v31)
      {
        v33 = a1[7];
        v32 = a1[8];
        if (*(v30 + 23) < 0)
        {
          sub_29A008D14(&__dst, *v30, *(v30 + 1));
        }

        else
        {
          v34 = *v30;
          v52 = *(v30 + 2);
          __dst = v34;
        }

        v53 = 1200340205 * ((v32 - v33) >> 3);
        sub_29AA26980(a4, &__dst, &__dst);
        if (v35)
        {
          sub_29AA22610(v47, v30);
          sub_29AA1B908(a1 + 7, v47);
          sub_29AA19560(v47);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(__dst);
        }

        v30 = (v30 + 24);
      }

      sub_29A21C6E0((a2 + 34));
      memcpy((a2[38] + 12 * v42), *(v23 + 304), 12 * *(v23 + 272));
      sub_29A1935CC((a2 + 9));
      memcpy((a2[13] + 12 * v41), *(v23 + 104), 12 * *(v23 + 72));
      sub_29A1935CC((a2 + 14));
      memcpy((a2[18] + 12 * v46), *(v23 + 144), 12 * *(v23 + 112));
      sub_29A190F50((a2 + 19));
      memcpy((a2[23] + 8 * v44), *(v23 + 184), 8 * *(v23 + 152));
      sub_29A1935CC((a2 + 24));
      memcpy((a2[28] + 12 * v40), *(v23 + 224), 12 * *(v23 + 192));
      v24 = *(v23 + 72) + v41;
      v46 = *(v23 + 112) + v46;
      v42 = *(v23 + 272) + v42;
      v44 = *(v23 + 152) + v44;
      v25 = *(v23 + 192) + v40;
      v23 += 528;
    }

    while (v23 != v38);
  }

  if (a2[14] != a2[9])
  {
    if (sub_29AA17830(0))
    {
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Color and vertex count differ, dropping colors\n", v36, v37);
    }

    sub_29A1932B4(a2 + 14);
  }
}

void sub_29AA1B7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (*(v17 - 105) < 0)
  {
    operator delete(*(v17 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA1B808(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29AA264AC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 40 * a2;
  }
}

uint64_t sub_29AA1B844(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AA26620(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29AA1B8C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29AA1B908(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29AA26C90(a1, a2);
  }

  else
  {
    sub_29AA26DD8(a1, a1[1], a2);
    result = v3 + 1832;
  }

  a1[1] = result;
  return result;
}

void adobe::usd::reindexObjIntermediate(uint64_t a1, size_t *a2, void *a3)
{
  v36 = 0;
  v37 = 0;
  v20 = a2 + 9;
  sub_29A0104F4(&v34, a2[9]);
  sub_29A0104F4(&v32, a2[19]);
  sub_29A0104F4(&v30, a2[24]);
  sub_29A011440(v29, *v20);
  sub_29A011440(v28, a2[19]);
  sub_29A011440(v27, a2[24]);
  v25 = 0;
  v26 = 0;
  v23[0] = &v36;
  v23[1] = &v26;
  v23[2] = &v37;
  v23[3] = &v25;
  v23[4] = &v24;
  v24 = 0;
  sub_29A008E78(&__str, "");
  sub_29A008E78(&v21, "");
  v6 = *a3;
  v14 = a3[1];
  if (*a3 != v14)
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    do
    {
      v8 = v6[62];
      v7 = v6[63];
      if (v8 != v7)
      {
        v9 = 0;
        v19 = 0;
        do
        {
          v10 = *v8;
          if (*v8 > 8)
          {
            if (v10 == 10)
            {
              std::string::operator=(&v21, (v6[50] + 24 * v19));
              LODWORD(v19) = v19 + 1;
            }

            else if (v10 == 9)
            {
              sub_29AA1C468(v23);
              memset(__p, 0, sizeof(__p));
              sub_29AA229C4((a1 + 32), __p);
              v38 = &__p[3];
              sub_29AA19764(&v38);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              v11 = (*(a1 + 40) - 48);
              v36 = 0;
              v37 = v11;
              std::string::operator=(v11, (v6[44] + 24 * v9++));
            }
          }

          else
          {
            if (v10 == 7)
            {
              if (!v36)
              {
                if (!v37)
                {
                  sub_29AA1C468(v23);
                  memset(__p, 0, sizeof(__p));
                  sub_29AA229C4((a1 + 32), __p);
                  v38 = &__p[3];
                  sub_29AA19764(&v38);
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v12 = *(a1 + 40) - 48;
                  v36 = 0;
                  v37 = v12;
                }

                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __str.__r_.__value_.__l.__size_;
                }

                bzero(v34, v35 - v34);
                bzero(v32, v33 - v32);
                bzero(v30, v31 - v30);
                if (size)
                {
                  sub_29AA1C468(v23);
                  v61 = 0u;
                  v62 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v53 = 0u;
                  v54 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v45 = 0u;
                  v46 = 0u;
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v42 = 0u;
                  v40 = 0u;
                  memset(__p, 0, sizeof(__p));
                  DWORD2(v62) = -1;
                  sub_29AA22DC0((v37 + 24), __p);
                  sub_29AA197E8(__p);
                }

                sub_29AA1C468(v23);
                v61 = 0u;
                v62 = 0u;
                v59 = 0u;
                v60 = 0u;
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
                v43 = 0u;
                v44 = 0u;
                v41 = 0u;
                v42 = 0u;
                v40 = 0u;
                memset(__p, 0, sizeof(__p));
                DWORD2(v62) = -1;
                sub_29AA22DC0((v37 + 24), __p);
                sub_29AA197E8(__p);
              }

              __p[0] = 0xFFFFFFFFLL;
              memset(&__p[1], 0, 40);
              sub_29AA23624((v36 + 384), __p);
              pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
            }

            if (v10 == 8)
            {
              v36 = 0;
              std::string::operator=(&__str, (v6[47] + 24 * SHIDWORD(v19)));
              ++HIDWORD(v19);
            }
          }

          v8 += 10;
        }

        while (v8 != v7);
      }

      v15 += v6[34];
      v18 += v6[9];
      v17 += v6[19];
      v16 += v6[24];
      v6 += 66;
    }

    while (v6 != v14);
  }

  sub_29AA1C468(v23);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_29AA1C324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a56)
  {
    operator delete(a56);
  }

  if (a59)
  {
    operator delete(a59);
  }

  if (a62)
  {
    operator delete(a62);
  }

  if (a65)
  {
    operator delete(a65);
  }

  if (a68)
  {
    operator delete(a68);
  }

  if (a71)
  {
    operator delete(a71);
  }

  _Unwind_Resume(a1);
}

void sub_29AA1C468(uint64_t **a1)
{
  if (**a1)
  {
    if (*a1[1] && sub_29AA17830(0))
    {
      v4 = *a1[2];
      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = **a1;
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Object %s, group %s: Invalid vertex indices: %lu\n", v2, v3, v4, v5, *a1[1]);
    }

    v6 = **a1;
    v7 = *(v6 + 264);
    if (*a1[3])
    {
      if (sub_29AA17830(0))
      {
        v10 = *a1[2];
        if (*(v10 + 23) < 0)
        {
          v10 = *v10;
        }

        v11 = **a1;
        if (*(v11 + 23) < 0)
        {
          v11 = *v11;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Object %s, group %s: Invalid uv indices: %lu, dropping uvs\n", v8, v9, v10, v11, *a1[3]);
      }

      sub_29A190CA4((**a1 + 104));
      sub_29A19D79C((**a1 + 304));
      v6 = **a1;
    }

    v12 = *(v6 + 304);
    if (v12)
    {
      v13 = v12 == v7;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      if (sub_29AA17830(0))
      {
        v16 = *a1[2];
        if (*(v16 + 23) < 0)
        {
          v16 = *v16;
        }

        v17 = **a1;
        v18 = v17;
        if (*(v17 + 23) < 0)
        {
          v18 = *v17;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Object %s, group %s: %lu UV indices do not match %lu vertex indices, dropping uvs\n", v14, v15, v16, v18, v17[38], v7);
      }

      sub_29A190CA4((**a1 + 104));
      sub_29A19D79C((**a1 + 304));
    }

    if (*a1[4])
    {
      if (sub_29AA17830(0))
      {
        v21 = *a1[2];
        if (*(v21 + 23) < 0)
        {
          v21 = *v21;
        }

        v22 = **a1;
        if (*(v22 + 23) < 0)
        {
          v22 = *v22;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Object %s, group %s: Invalid normal indices: %lu, dropping normals\n", v19, v20, v21, v22, *a1[4]);
      }

      sub_29A1932B4((**a1 + 144));
      sub_29A19D79C((**a1 + 344));
    }

    v23 = *(**a1 + 344);
    if (v23)
    {
      v24 = v23 == v7;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      if (sub_29AA17830(0))
      {
        v27 = *a1[2];
        if (*(v27 + 23) < 0)
        {
          v27 = *v27;
        }

        v28 = **a1;
        v29 = v28;
        if (*(v28 + 23) < 0)
        {
          v29 = *v28;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Object %s, group %s: %lu normal indices do not match %lu vertex indices, dropping normals\n", v25, v26, v27, v29, v28[43], v7);
      }

      sub_29A1932B4((**a1 + 144));
      sub_29A19D79C((**a1 + 344));
    }
  }

  *a1[1] = 0;
  v30 = a1[4];
  *a1[3] = 0;
  *v30 = 0;
}

void adobe::usd::readObjInternal(pxrInternal__aapl__pxrReserved__ *a1, uint64_t *a2, uint64_t a3)
{
  v80 = *MEMORY[0x29EDCA608];
  LODWORD(v41) = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
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
  v74 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  ConcurrencyLimit = pxrInternal__aapl__pxrReserved__::WorkGetConcurrencyLimit(a1);
  PhysicalConcurrencyLimit = pxrInternal__aapl__pxrReserved__::WorkGetPhysicalConcurrencyLimit(ConcurrencyLimit);
  if (sub_29AA17830(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Thread count: %d, Concurrency limit: %d\n", v8, v9, PhysicalConcurrencyLimit, ConcurrencyLimit);
  }

  v10 = mach_absolute_time();
  adobe::usd::splitObjIntermediates(a2, ConcurrencyLimit, &v38);
  v11 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v12 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v11 - v10));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("splitObjIntermediates time: %ld\n", v13, v14, v12 / 1000000);
  }

  v15 = mach_absolute_time();
  v16 = v38;
  v17 = v39;
  LODWORD(v78[0]) = 0;
  v78[16] = 65539;
  v79 = 55;
  tbb::task_group_context::init(v78, v18, v19, v20);
  v76 = adobe::usd::readObjIntermediate;
  v75[0] = v17;
  v75[1] = v16;
  v75[2] = 1;
  sub_29AA27550(v75, &v76, v77, v78);
  tbb::task_group_context::~task_group_context(v78);
  for (i = v38; i != v39; i += 33)
  {
    if (*(i + 40))
    {
      goto LABEL_15;
    }
  }

  v22 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v23 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v22 - v15));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("readObjIntermediate time: %ld\n", v24, v25, v23 / 1000000);
  }

  v26 = mach_absolute_time();
  memset(v37, 0, sizeof(v37));
  sub_29AA27CE4(v37, v38, v39, 0xF83E0F83E0F83E1 * (v39 - v38));
  adobe::usd::joinObjIntermediates(a1, &v41, v37, a3);
  v78[0] = v37;
  sub_29AA274CC(v78);
  v27 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v28 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v27 - v26));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("joinObjIntermediates time: %ld\n", v29, v30, v28 / 1000000);
  }

  v31 = mach_absolute_time();
  memset(v36, 0, sizeof(v36));
  sub_29AA27CE4(v36, v38, v39, 0xF83E0F83E0F83E1 * (v39 - v38));
  adobe::usd::reindexObjIntermediate(a1, &v41, v36);
  v78[0] = v36;
  sub_29AA274CC(v78);
  v32 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v33 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v32 - v31));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("reindexObjIntermediate time: %ld\n", v34, v35, v33 / 1000000);
  }

LABEL_15:
  v78[0] = &v38;
  sub_29AA274CC(v78);
  sub_29AA2396C(&v41);
}

void sub_29AA1CAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  STACK[0x290] = va;
  sub_29AA274CC(&STACK[0x290]);
  sub_29AA2396C(va1);
}

uint64_t adobe::usd::addImage(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, int a5)
{
  v10 = (a1 + 80);
  v11 = -1171354717 * ((*(a1 + 88) - *(a1 + 80)) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v32 = *(a2 + 16);
  }

  v33 = v11;
  v12 = sub_29AA26980(a3, &__dst, &__dst);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::TfGetBaseName(a2, &v30);
    pxrInternal__aapl__pxrReserved__::TfGetExtension(a2, &v29);
    v28 = 0;
    *__p = 0u;
    v27 = 0u;
    *v24 = 0u;
    v25 = 0u;
    *v23 = 0u;
    sub_29A90FAB0(v10, v23);
    if (__p[1])
    {
      *&v27 = __p[1];
      operator delete(__p[1]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    if (SHIBYTE(v24[0]) < 0)
    {
      operator delete(v23[0]);
    }

    v14 = *(a1 + 88);
    std::string::operator=((v14 - 64), a2);
    pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(&v30, 46, v23);
    v15 = (v14 - 88);
    if (*(v14 - 65) < 0)
    {
      operator delete(*v15);
    }

    v16 = *v23;
    *(v14 - 72) = v24[0];
    *v15 = v16;
    *(v14 - 40) = adobe::usd::getFormat(&v29);
    sub_29A095658((a1 + 8), a2, a2);
    if (a5)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(a4, a2, v21);
      if ((adobe::usd::readFileContents(v21, (v14 - 32)) & 1) == 0)
      {
        v23[0] = "usdObj/obj.cpp";
        v23[1] = "addImage";
        v24[0] = 1141;
        v24[1] = "int adobe::usd::addImage(Obj &, const std::string &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
        LOBYTE(v25) = 0;
        v18 = v21;
        if (v22 < 0)
        {
          v18 = v21[0];
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v23, "Failed to load image file %s", v17, v18);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  v19 = *(v12 + 10);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  return v19;
}

void sub_29AA1CD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 97) < 0)
  {
    operator delete(*(v33 - 120));
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::getMaterial(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = (a1 + 56);
  v6 = 1200340205 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v14 = *(a3 + 2);
  }

  v15 = v6;
  v7 = sub_29AA26980(a2, &__dst, &__dst);
  if (v8)
  {
    sub_29AA22610(v12, a3);
    sub_29AA1B908(v5, v12);
    sub_29AA19560(v12);
  }

  v9 = *(v7 + 10);
  v10 = *v5;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst);
  }

  return v10 + 1832 * v9;
}

void sub_29AA1CE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AA19560(va);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t adobe::usd::readObjMtl(uint64_t a1, int a2, unsigned __int8 **a3, uint64_t a4, unsigned int *a5, unsigned int *a6, char a7)
{
  v74 = a7;
  if ((atomic_load_explicit(&qword_2A1746820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746820))
  {
    sub_29A008E78(qword_2A1746808, "newmtl");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746808, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746820);
  }

  if ((atomic_load_explicit(&qword_2A1746840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746840))
  {
    sub_29A008E78(qword_2A1746828, "ka");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746828, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746840);
  }

  if ((atomic_load_explicit(&qword_2A1746860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746860))
  {
    sub_29A008E78(qword_2A1746848, "kd");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746848, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746860);
  }

  if ((atomic_load_explicit(&qword_2A1746880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746880))
  {
    sub_29A008E78(qword_2A1746868, "ks");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746868, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746880);
  }

  if ((atomic_load_explicit(&qword_2A17468A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17468A0))
  {
    sub_29A008E78(qword_2A1746888, "ke");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746888, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17468A0);
  }

  if ((atomic_load_explicit(&qword_2A17468C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17468C0))
  {
    sub_29A008E78(qword_2A17468A8, "tf");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17468A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17468C0);
  }

  if ((atomic_load_explicit(&qword_2A17468E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17468E0))
  {
    sub_29A008E78(qword_2A17468C8, "illum");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17468C8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17468E0);
  }

  if ((atomic_load_explicit(&qword_2A1746900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746900))
  {
    sub_29A008E78(qword_2A17468E8, "d");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17468E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746900);
  }

  if ((atomic_load_explicit(&qword_2A1746920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746920))
  {
    sub_29A008E78(qword_2A1746908, "ns");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746908, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746920);
  }

  if ((atomic_load_explicit(&qword_2A1746940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746940))
  {
    sub_29A008E78(qword_2A1746928, "sharpness");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746928, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746940);
  }

  if ((atomic_load_explicit(&qword_2A1746960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746960))
  {
    sub_29A008E78(qword_2A1746948, "ni");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746948, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746960);
  }

  if ((atomic_load_explicit(&qword_2A1746980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746980))
  {
    sub_29A008E78(qword_2A1746968, "pm");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746968, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746980);
  }

  if ((atomic_load_explicit(&qword_2A17469A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17469A0))
  {
    sub_29A008E78(qword_2A1746988, "pr");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746988, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17469A0);
  }

  if ((atomic_load_explicit(&qword_2A17469C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17469C0))
  {
    sub_29A008E78(qword_2A17469A8, "map_ka");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17469A8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17469C0);
  }

  if ((atomic_load_explicit(&qword_2A17469E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17469E0))
  {
    sub_29A008E78(qword_2A17469C8, "map_kd");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17469C8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17469E0);
  }

  if ((atomic_load_explicit(&qword_2A1746A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A00))
  {
    sub_29A008E78(qword_2A17469E8, "map_ks");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17469E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A00);
  }

  if ((atomic_load_explicit(&qword_2A1746A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A20))
  {
    sub_29A008E78(qword_2A1746A08, "map_ns");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A20);
  }

  if ((atomic_load_explicit(&qword_2A1746A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A40))
  {
    sub_29A008E78(qword_2A1746A28, "map_ke");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A40);
  }

  if ((atomic_load_explicit(&qword_2A1746A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A60))
  {
    sub_29A008E78(qword_2A1746A48, "map_d");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A60);
  }

  if ((atomic_load_explicit(&qword_2A1746A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746A80))
  {
    sub_29A008E78(qword_2A1746A68, "map_pm");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746A80);
  }

  if ((atomic_load_explicit(&qword_2A1746AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746AA0))
  {
    sub_29A008E78(qword_2A1746A88, "map_pr");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746A88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746AA0);
  }

  if ((atomic_load_explicit(&qword_2A1746AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746AC0))
  {
    sub_29A008E78(qword_2A1746AA8, "norm");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746AA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746AC0);
  }

  if ((atomic_load_explicit(&qword_2A1746AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746AE0))
  {
    sub_29A008E78(qword_2A1746AC8, "map_kn");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746AC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746AE0);
  }

  if ((atomic_load_explicit(&qword_2A1746B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B00))
  {
    sub_29A008E78(qword_2A1746AE8, "decal");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746AE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B00);
  }

  if ((atomic_load_explicit(&qword_2A1746B20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B20))
  {
    sub_29A008E78(qword_2A1746B08, "disp");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B20);
  }

  if ((atomic_load_explicit(&qword_2A1746B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B40))
  {
    sub_29A008E78(qword_2A1746B28, "bump");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B40);
  }

  if ((atomic_load_explicit(&qword_2A1746B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B60))
  {
    sub_29A008E78(qword_2A1746B48, "adobe_map_normal");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B60);
  }

  if ((atomic_load_explicit(&qword_2A1746B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746B80))
  {
    sub_29A008E78(qword_2A1746B68, "adobe_map_roughness");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746B80);
  }

  if ((atomic_load_explicit(&qword_2A1746BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746BA0))
  {
    sub_29A008E78(qword_2A1746B88, "adobe_map_metallic");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746B88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746BA0);
  }

  if ((atomic_load_explicit(&qword_2A1746BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746BC0))
  {
    sub_29A008E78(qword_2A1746BA8, "adobe_map_translucence");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746BA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746BC0);
  }

  if ((atomic_load_explicit(&qword_2A1746BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746BE0))
  {
    sub_29A008E78(qword_2A1746BC8, "adobe_translucence");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746BC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746BE0);
  }

  if ((atomic_load_explicit(&qword_2A1746C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C00))
  {
    sub_29A008E78(qword_2A1746BE8, "adobe_interior_color");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746BE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C00);
  }

  if ((atomic_load_explicit(&qword_2A1746C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C20))
  {
    sub_29A008E78(qword_2A1746C08, "adobe_density");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C20);
  }

  if ((atomic_load_explicit(&qword_2A1746C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C40))
  {
    sub_29A008E78(qword_2A1746C28, "adobe_glow");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C40);
  }

  if ((atomic_load_explicit(&qword_2A1746C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C60))
  {
    sub_29A008E78(qword_2A1746C48, "-blendu");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C60);
  }

  if ((atomic_load_explicit(&qword_2A1746C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746C80))
  {
    sub_29A008E78(qword_2A1746C68, "-blendv");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746C80);
  }

  if ((atomic_load_explicit(&qword_2A1746CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746CA0))
  {
    sub_29A008E78(qword_2A1746C88, "-cc");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746C88, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746CA0);
  }

  if ((atomic_load_explicit(&qword_2A1746CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746CC0))
  {
    sub_29A008E78(qword_2A1746CA8, "-clamp");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746CA8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746CC0);
  }

  if ((atomic_load_explicit(&qword_2A1746CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746CE0))
  {
    sub_29A008E78(qword_2A1746CC8, "-imfchan");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746CC8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746CE0);
  }

  if ((atomic_load_explicit(&qword_2A1746D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D00))
  {
    sub_29A008E78(qword_2A1746CE8, "-mm");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746CE8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D00);
  }

  if ((atomic_load_explicit(&qword_2A1746D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D20))
  {
    sub_29A008E78(qword_2A1746D08, "-o");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746D08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D20);
  }

  if ((atomic_load_explicit(&qword_2A1746D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D40))
  {
    sub_29A008E78(qword_2A1746D28, "-s");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746D28, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D40);
  }

  if ((atomic_load_explicit(&qword_2A1746D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D60))
  {
    sub_29A008E78(qword_2A1746D48, "-t");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746D48, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D60);
  }

  if ((atomic_load_explicit(&qword_2A1746D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746D80))
  {
    sub_29A008E78(qword_2A1746D68, "-texres");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1746D68, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746D80);
  }

  v73 = 1;
  v72[0] = &v73;
  v72[1] = a1;
  v72[2] = a5;
  v72[3] = a6;
  v72[4] = &v74;
  v12 = mach_absolute_time();
  v13 = *(a1 + 104);
  v14 = *a3;
  v15 = a3[1];
  v71 = v14;
  if (v14 < v15 - 2)
  {
    Material = 0;
    do
    {
      if (v14 < v15)
      {
        v17 = v15 - v14;
        while (1)
        {
          v18 = *v14;
          if (v18 != 32 && v18 != 9)
          {
            break;
          }

          ++v14;
          if (!--v17)
          {
            v14 = v15;
            break;
          }
        }
      }

      v71 = v14;
      if (adobe::usd::checkWord(&v71, v15, qword_2A1746808))
      {
        __p = 0uLL;
        v68 = 0;
        adobe::usd::nextSpacedText(&v71, v15, &__p);
        Material = adobe::usd::getMaterial(a1, a4, &__p);
        *Material = 1;
        if (SHIBYTE(v68) < 0)
        {
          operator delete(__p);
        }
      }

      else if (Material && (*(Material + 1) & 1) == 0)
      {
        if (adobe::usd::checkWord(&v71, v15, qword_2A1746828))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 36), v20) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1336;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ka: expected 3 floats", v21, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746848))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 48), v22) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1340;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Kd: expected 3 floats", v23, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746868))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 60), v24) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1344;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ks: expected 3 floats", v25, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746888))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 84), v26) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1348;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ke: expected 3 floats", v27, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A17468A8))
        {
          if ((adobe::usd::nextFloat3(&v71, v15, (Material + 72), v28) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1352;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Tf: expected 3 floats", v29, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A17468C8))
        {
          LODWORD(__p) = 0;
          if (adobe::usd::nextFloat(&v71, v15, &__p, v30))
          {
            *(Material + 32) = *&__p;
          }

          else
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1356;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after illum: expected integer", v31, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A17468E8))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 96), v32) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1360;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after d: expected float", v33, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746908))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 104), v37) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1364;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ns: expected float", v38, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746928))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 108), v39) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1368;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after sharpness: expected float", v40, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746948))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 112), v41) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1372;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Ni: expected float", v42, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746968))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 1164), v43) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1376;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Pm: expected float", v44, v73);
          }
        }

        else if (adobe::usd::checkWord(&v71, v15, qword_2A1746988))
        {
          if ((adobe::usd::nextFloat(&v71, v15, (Material + 1160), v45) & 1) == 0)
          {
            *&__p = "usdObj/obj.cpp";
            *(&__p + 1) = "readObjMtl";
            v68 = 1380;
            v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
            v70 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after Pr: expected float", v46, v73);
          }
        }

        else
        {
          if (adobe::usd::checkWord(&v71, v15, qword_2A17469A8))
          {
            v47 = Material + 120;
            v48 = v15;
            v49 = qword_2A17469A8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A17469C8))
          {
            v47 = Material + 224;
            v48 = v15;
            v49 = qword_2A17469C8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A17469E8))
          {
            v47 = Material + 328;
            v48 = v15;
            v49 = qword_2A17469E8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A08))
          {
            v47 = Material + 432;
            v48 = v15;
            v49 = qword_2A1746A08;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A28))
          {
            v47 = Material + 536;
            v48 = v15;
            v49 = qword_2A1746A28;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A48))
          {
            v47 = Material + 640;
            v48 = v15;
            v49 = qword_2A1746A48;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A88))
          {
            v47 = Material + 1168;
            v48 = v15;
            v49 = qword_2A1746A88;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746A68))
          {
            v47 = Material + 1272;
            v48 = v15;
            v49 = qword_2A1746A68;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746AA8))
          {
            v47 = Material + 744;
            v48 = v15;
            v49 = qword_2A1746AA8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746AC8))
          {
            v47 = Material + 744;
            v48 = v15;
            v49 = qword_2A1746AC8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746AE8))
          {
            v47 = Material + 848;
            v48 = v15;
            v49 = qword_2A1746AE8;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B08))
          {
            v47 = Material + 952;
            v48 = v15;
            v49 = qword_2A1746B08;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B28))
          {
            v47 = Material + 1056;
            v48 = v15;
            v49 = qword_2A1746B28;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B48))
          {
            *a1 = 1;
            v47 = Material + 744;
            v48 = v15;
            v49 = qword_2A1746B48;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B68))
          {
            *a1 = 1;
            v47 = Material + 1168;
            v48 = v15;
            v49 = qword_2A1746B68;
          }

          else if (adobe::usd::checkWord(&v71, v15, qword_2A1746B88))
          {
            *a1 = 1;
            v47 = Material + 1272;
            v48 = v15;
            v49 = qword_2A1746B88;
          }

          else
          {
            if (!adobe::usd::checkWord(&v71, v15, qword_2A1746BA8))
            {
              if (adobe::usd::checkWord(&v71, v15, qword_2A1746BC8))
              {
                *a1 = 1;
                if ((adobe::usd::nextFloat(&v71, v15, (Material + 1404), v50) & 1) == 0)
                {
                  *&__p = "usdObj/obj.cpp";
                  *(&__p + 1) = "readObjMtl";
                  v68 = 1425;
                  v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v70 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after adobe_translucence: expected float", v51, v73);
                }
              }

              else if (adobe::usd::checkWord(&v71, v15, qword_2A1746BE8))
              {
                *a1 = 1;
                if ((adobe::usd::nextFloat3(&v71, v15, (Material + 1376), v52) & 1) == 0)
                {
                  *&__p = "usdObj/obj.cpp";
                  *(&__p + 1) = "readObjMtl";
                  v68 = 1432;
                  v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v70 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after adobe_interior_color: expected 3 floats", v53, v73);
                }
              }

              else if (adobe::usd::checkWord(&v71, v15, qword_2A1746C08))
              {
                *a1 = 1;
                if ((adobe::usd::nextFloat(&v71, v15, (Material + 1408), v54) & 1) == 0)
                {
                  *&__p = "usdObj/obj.cpp";
                  *(&__p + 1) = "readObjMtl";
                  v68 = 1438;
                  v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v70 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after adobe_density: expected float", v55, v73);
                }
              }

              else if (adobe::usd::checkWord(&v71, v15, qword_2A1746C28))
              {
                *a1 = 1;
                if ((adobe::usd::nextFloat(&v71, v15, (Material + 1400), v56) & 1) == 0)
                {
                  *&__p = "usdObj/obj.cpp";
                  *(&__p + 1) = "readObjMtl";
                  v68 = 1443;
                  v69 = "BOOL adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v70 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MTL parsing error on line %d, after adobe_glow: expected float", v57, v73);
                }
              }

              goto LABEL_83;
            }

            *a1 = 1;
            v47 = Material + 1728;
            v48 = v15;
            v49 = qword_2A1746BA8;
          }

          sub_29AA1F03C(v72, &v71, v48, v49, v47);
        }
      }

LABEL_83:
      v34 = v71;
      if (v71 < v15 && *v71 != 10)
      {
        v35 = v71 + 1;
        while (v35 != v15)
        {
          v36 = *v35++;
          if (v36 == 10)
          {
            v34 = v35 - 1;
            goto LABEL_90;
          }
        }

        v34 = v15;
      }

LABEL_90:
      v14 = v34 + 1;
      v71 = v14;
      ++v73;
    }

    while (v14 < v15 - 2);
  }

  v58 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v59 = (v13 + 56 * a2);
    v60 = (v58 - v12);
    if (*(v59 + 23) < 0)
    {
      v59 = *v59;
    }

    v61 = v73;
    v62 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(v60);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read mtl %s (%d lines) in %lu ms\n", v63, v64, v59, v61, v62 / 1000000);
  }

  return 1;
}

void sub_29AA1F03C(unsigned int **a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  if (*a2 < a3)
  {
    v48 = v5;
    v49 = v6;
    do
    {
      v13 = *v7;
      if (v13 <= 0xD && ((1 << v13) & 0x2401) != 0)
      {
        break;
      }

      v15 = v7 + 1;
      while (v13 == 32)
      {
        *a2 = v15;
        if (v15 == a3)
        {
          return;
        }

        v16 = *v15++;
        LOBYTE(v13) = v16;
      }

      if (v13 <= 0xCu)
      {
        if (v13 && v13 != 10)
        {
LABEL_44:
          adobe::usd::nextSpacedText(a2, a3, a5 + 8);
          v34 = adobe::usd::addImage(a1[1], a5 + 8, a1[2], a1[3], *a1[4]);
          *(a5 + 32) = v34;
          *a5 = v34 != -1;
          return;
        }

        return;
      }

      if (v13 == 13)
      {
        return;
      }

      if (v13 != 45)
      {
        goto LABEL_44;
      }

      if (adobe::usd::checkWord(a2, a3, &unk_2A1746C48))
      {
        adobe::usd::nextOnOrOff(a2, a3, (a5 + 36), v17);
      }

      if (adobe::usd::checkWord(a2, a3, &unk_2A1746C68))
      {
        adobe::usd::nextOnOrOff(a2, a3, (a5 + 37), v18);
      }

      if (adobe::usd::checkWord(a2, a3, &unk_2A1746C88))
      {
        adobe::usd::nextOnOrOff(a2, a3, (a5 + 48), v19);
      }

      if (adobe::usd::checkWord(a2, a3, &unk_2A1746CA8))
      {
        adobe::usd::nextOnOrOff(a2, a3, (a5 + 49), v20);
      }

      if (adobe::usd::checkWord(a2, a3, &unk_2A1746CC8))
      {
        adobe::usd::nextChannel(a2, a3);
      }

      if (adobe::usd::checkWord(a2, a3, &unk_2A1746CE8))
      {
        Float = adobe::usd::nextFloat(a2, a3, (a5 + 56), v21);
        v23 = adobe::usd::nextFloat(a2, a3, (a5 + 60), v22);
        if (!Float || (v23 & 1) == 0)
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1268;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v35 = a4;
          }

          else
          {
            v35 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -mm expects 2 floats", v24, **a1, v35);
          return;
        }
      }

      else if (adobe::usd::checkWord(a2, a3, &unk_2A1746D08))
      {
        if ((adobe::usd::nextFloat3(a2, a3, (a5 + 64), v25) & 1) == 0)
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1275;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v36 = a4;
          }

          else
          {
            v36 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -o expects 3 floats", v26, **a1, v36);
          return;
        }
      }

      else if (adobe::usd::checkWord(a2, a3, &unk_2A1746D28))
      {
        if ((adobe::usd::nextFloat3(a2, a3, (a5 + 76), v27) & 1) == 0)
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1282;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v37 = a4;
          }

          else
          {
            v37 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -s expects 3 floats", v28, **a1, v37);
          return;
        }
      }

      else if (adobe::usd::checkWord(a2, a3, &unk_2A1746D48))
      {
        if ((adobe::usd::nextFloat3(a2, a3, (a5 + 88), v29) & 1) == 0)
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1289;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v38 = a4;
          }

          else
          {
            v38 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -t expects 3 floats", v30, **a1, v38);
          return;
        }
      }

      else
      {
        if (!adobe::usd::checkWord(a2, a3, &unk_2A1746D68))
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1306;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v39 = a4;
          }

          else
          {
            v39 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: unrecognized map keyword", v31, **a1, v39);
          return;
        }

        *v42 = 0;
        if (!adobe::usd::nextFloat(a2, a3, v42, v32))
        {
          v43 = "usdObj/obj.cpp";
          v44 = "operator()";
          v45 = 1298;
          v46 = "auto adobe::usd::readObjMtl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)::(anonymous class)::operator()(const char *&, const char *, const std::string &, ObjMap &) const";
          v47 = 0;
          if (*(a4 + 23) >= 0)
          {
            v40 = a4;
          }

          else
          {
            v40 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v43, "MTL parsing error on line %d, for %s: -texres expects float", v33, **a1, v40);
          return;
        }
      }

      v7 = *a2;
    }

    while (*a2 < a3);
  }
}

uint64_t adobe::usd::readObjMdl(uint64_t a1, int a2, char **a3, uint64_t a4, uint64_t a5, const void **a6, char a7)
{
  v109 = a7;
  v105 = a1;
  v106 = a5;
  v107 = a6;
  v108 = &v109;
  v11 = mach_absolute_time();
  v103 = 0;
  v104 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  memset(&v99, 0, sizeof(v99));
  memset(&v98, 0, sizeof(v98));
  memset(&__str, 0, sizeof(__str));
  sub_29A008E78(&__p, *a3);
  sub_29A9EE25C(v92, &__p, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x29EDC93D0];
LABEL_4:
  v15 = v13;
  while (1)
  {
    std::ios_base::getloc((v92 + *(v92[0] - 24)));
    v16 = std::locale::use_facet(&__p, v14);
    v17 = (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&__p);
    v18 = sub_29A0DE07C(v92, &v100, v17);
    if ((*(v18 + *(*v18 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v19 = SHIBYTE(v102);
    if ((SHIBYTE(v102) & 0x8000000000000000) != 0)
    {
      v19 = v101;
      if (v101)
      {
LABEL_11:
        std::string::resize(&v99, v19, 0);
        if (v102 >= 0)
        {
          v20 = HIBYTE(v102);
        }

        else
        {
          v20 = v101;
        }

        std::string::resize(&v98, v20, 0);
        if (v102 >= 0)
        {
          v21 = HIBYTE(v102);
        }

        else
        {
          v21 = v101;
        }

        std::string::resize(&__str, v21, 0);
        v12 = (v12 + 1);
        if (v102 >= 0)
        {
          v22 = &v100;
        }

        else
        {
          v22 = v100;
        }

        v23 = &v99;
        if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v99.__r_.__value_.__r.__words[0];
        }

        if (sscanf(v22, "export material %[^()]", v23) >= 1)
        {
          v24 = std::string::find(&v99, 0, 0);
          std::string::resize(&v99, v24, 0);
          Material = adobe::usd::getMaterial(a1, a4, &v99);
          v13 = 0;
          if (Material)
          {
            sub_29AA22610(&__p, &v99);
            sub_29AA2051C(Material, &__p);
            sub_29AA19560(&__p);
            *Material = 257;
            v13 = Material;
          }

          goto LABEL_4;
        }

        v13 = 0;
        if (!v15)
        {
          goto LABEL_4;
        }

        if (v102 >= 0)
        {
          v26 = &v100;
        }

        else
        {
          v26 = v100;
        }

        if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v98;
        }

        else
        {
          v27 = v98.__r_.__value_.__r.__words[0];
        }

        if (sscanf(v26, "    %s : float(%f)", v27, &v104 + 4) == 2)
        {
          v28 = std::string::find(&v98, 0, 0);
          std::string::resize(&v98, v28, 0);
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v98.__r_.__value_.__l.__size_ == 7 && *v98.__r_.__value_.__l.__data_ == 1667330159 && *(v98.__r_.__value_.__r.__words[0] + 3) == 2037672291)
            {
LABEL_105:
              *(v15 + 347) = HIDWORD(v104);
              goto LABEL_184;
            }

            if (v98.__r_.__value_.__l.__size_ == 8 && *v98.__r_.__value_.__l.__data_ == 0x63696C6C6174656DLL)
            {
              goto LABEL_167;
            }

            if (v98.__r_.__value_.__l.__size_ == 6)
            {
              if (*v98.__r_.__value_.__l.__data_ == 1734960488 && *(v98.__r_.__value_.__r.__words[0] + 4) == 29800)
              {
                goto LABEL_182;
              }
            }

            else if (v98.__r_.__value_.__l.__size_ == 9 && *v98.__r_.__value_.__l.__data_ == 0x73656E6867756F72 && *(v98.__r_.__value_.__r.__words[0] + 8) == 115)
            {
              goto LABEL_183;
            }

            if (v98.__r_.__value_.__l.__size_ == 17)
            {
              if (*v98.__r_.__value_.__l.__data_ == 0x52664F7865646E69 && *(v98.__r_.__value_.__r.__words[0] + 8) == 0x6F69746361726665 && *(v98.__r_.__value_.__r.__words[0] + 16) == 110)
              {
LABEL_137:
                *(v15 + 28) = HIDWORD(v104);
                goto LABEL_184;
              }
            }

            else if (v98.__r_.__value_.__l.__size_ == 11 && *v98.__r_.__value_.__l.__data_ == 0x6353746867696568 && *(v98.__r_.__value_.__r.__words[0] + 3) == 0x656C616353746867)
            {
              goto LABEL_173;
            }

            if (v98.__r_.__value_.__l.__size_ != 4)
            {
              goto LABEL_178;
            }

            v44 = v98.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (HIBYTE(v98.__r_.__value_.__r.__words[2]) > 7u)
            {
              if (HIBYTE(v98.__r_.__value_.__r.__words[2]) <= 0xAu)
              {
                if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 8)
                {
                  if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 9)
                  {
                    goto LABEL_178;
                  }

                  if (v98.__r_.__value_.__r.__words[0] != 0x73656E6867756F72 || v98.__r_.__value_.__s.__data_[8] != 115)
                  {
                    goto LABEL_178;
                  }

LABEL_183:
                  *(v15 + 290) = HIDWORD(v104);
LABEL_184:
                  v13 = v15;
                  goto LABEL_4;
                }

                if (v98.__r_.__value_.__r.__words[0] == 0x63696C6C6174656DLL)
                {
LABEL_167:
                  *(v15 + 291) = HIDWORD(v104);
                  goto LABEL_184;
                }

LABEL_178:
                if (sub_29A0F2648(&v98, "translucence"))
                {
                  *(v15 + 351) = HIDWORD(v104);
                }

                else
                {
                  v70 = sub_29A0F2648(&v98, "density");
                  v13 = v15;
                  if (!v70)
                  {
                    goto LABEL_4;
                  }

                  *(v15 + 352) = HIDWORD(v104);
                }

                goto LABEL_184;
              }

              if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 11)
              {
                if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 17)
                {
                  goto LABEL_178;
                }

                v56 = v98.__r_.__value_.__r.__words[0] == 0x52664F7865646E69 && v98.__r_.__value_.__l.__size_ == 0x6F69746361726665;
                if (!v56 || v98.__r_.__value_.__s.__data_[16] != 110)
                {
                  goto LABEL_178;
                }

                goto LABEL_137;
              }

              if (v98.__r_.__value_.__r.__words[0] != 0x6353746867696568 || *(v98.__r_.__value_.__r.__words + 3) != 0x656C616353746867)
              {
                goto LABEL_178;
              }

LABEL_173:
              *(v15 + 349) = HIDWORD(v104);
              goto LABEL_184;
            }

            if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 4)
            {
              if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 6)
              {
                if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 7)
                {
                  goto LABEL_178;
                }

                if (LODWORD(v98.__r_.__value_.__l.__data_) != 1667330159 || *(v98.__r_.__value_.__r.__words + 3) != 2037672291)
                {
                  goto LABEL_178;
                }

                goto LABEL_105;
              }

              if (LODWORD(v98.__r_.__value_.__l.__data_) != 1734960488 || WORD2(v98.__r_.__value_.__r.__words[0]) != 29800)
              {
                goto LABEL_178;
              }

LABEL_182:
              *(v15 + 348) = HIDWORD(v104);
              goto LABEL_184;
            }

            v44 = &v98;
          }

          if (LODWORD(v44->__r_.__value_.__l.__data_) == 2003790951)
          {
            *(v15 + 350) = HIDWORD(v104);
            goto LABEL_184;
          }

          goto LABEL_178;
        }

        if (v102 >= 0)
        {
          v30 = &v100;
        }

        else
        {
          v30 = v100;
        }

        if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v98;
        }

        else
        {
          v31 = v98.__r_.__value_.__r.__words[0];
        }

        if (sscanf(v30, "    %s : color(%f, %f, %f)", v31, &v104, &v103 + 4, &v103) == 4)
        {
          v32 = std::string::find(&v98, 0, 0);
          std::string::resize(&v98, v32, 0);
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v98.__r_.__value_.__l.__size_ != 9 || (*v98.__r_.__value_.__l.__data_ == 0x6F6C6F4365736162 ? (v50 = *(v98.__r_.__value_.__r.__words[0] + 8) == 114) : (v50 = 0), !v50))
            {
              v13 = v15;
              if (v98.__r_.__value_.__l.__size_ != 13)
              {
                goto LABEL_4;
              }

              v33 = v98.__r_.__value_.__r.__words[0];
              goto LABEL_121;
            }

            goto LABEL_162;
          }

          if (HIBYTE(v98.__r_.__value_.__r.__words[2]) == 9)
          {
            v65 = v98.__r_.__value_.__r.__words[0] == 0x6F6C6F4365736162 && v98.__r_.__value_.__s.__data_[8] == 114;
            v13 = v15;
            if (!v65)
            {
              goto LABEL_4;
            }

LABEL_162:
            v66 = HIDWORD(v103);
            v67 = v103;
            *(v15 + 12) = v104;
            *(v15 + 13) = v66;
            *(v15 + 14) = v67;
            goto LABEL_184;
          }

          v13 = v15;
          if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 13)
          {
            goto LABEL_4;
          }

          v33 = &v98;
LABEL_121:
          v51 = v33->__r_.__value_.__r.__words[0];
          v52 = *(v33->__r_.__value_.__r.__words + 5);
          v53 = v51 == 0x726F697265746E69 && v52 == 0x726F6C6F43726F69;
          v13 = v15;
          if (v53)
          {
            v54 = HIDWORD(v103);
            v55 = v103;
            *(v15 + 344) = v104;
            *(v15 + 345) = v54;
            *(v15 + 346) = v55;
            goto LABEL_184;
          }
        }

        else
        {
          if (v102 >= 0)
          {
            v34 = &v100;
          }

          else
          {
            v34 = v100;
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if (sscanf(v34, "    baseColor : adobe::util::color_texture( texture_2d(%[^]", p_str) == 1)
          {
            v36 = std::string::find(&__str, 0, 0);
            std::string::resize(&__str, v36, 0);
            std::string::operator=((v15 + 116), &__str);
            v37 = adobe::usd::addImage(v105, &__str, v106, v107, *v108);
            *(v15 + 64) = v37;
            *(v15 + 224) = v37 != -1;
            goto LABEL_184;
          }

          if (v102 >= 0)
          {
            v46 = &v100;
          }

          else
          {
            v46 = v100;
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &__str;
          }

          else
          {
            v47 = __str.__r_.__value_.__r.__words[0];
          }

          if (sscanf(v46, "    normal : adobe::util::normal_texture( texture_2d(%[^]", v47) == 1)
          {
            v48 = std::string::find(&__str, 0, 0);
            std::string::resize(&__str, v48, 0);
            std::string::operator=((v15 + 376), &__str);
            v49 = adobe::usd::addImage(v105, &__str, v106, v107, *v108);
            *(v15 + 194) = v49;
            *(v15 + 744) = v49 != -1;
            goto LABEL_184;
          }

          if (v102 >= 0)
          {
            v58 = &v100;
          }

          else
          {
            v58 = v100;
          }

          v59 = &v98;
          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v59 = v98.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &__str;
          }

          else
          {
            v60 = __str.__r_.__value_.__r.__words[0];
          }

          v61 = sscanf(v58, "    %s : adobe::util::float_texture( texture_2d(%[^]", v59, v60);
          v13 = v15;
          if (v61 == 2)
          {
            v62 = std::string::find(&v98, 0, 0);
            std::string::resize(&v98, v62, 0);
            v63 = std::string::find(&__str, 0, 0);
            std::string::resize(&__str, v63, 0);
            if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v98.__r_.__value_.__l.__size_ == 8)
              {
                if (*v98.__r_.__value_.__l.__data_ == 0x63696C6C6174656DLL)
                {
                  goto LABEL_196;
                }
              }

              else if (v98.__r_.__value_.__l.__size_ == 9 && *v98.__r_.__value_.__l.__data_ == 0x73656E6867756F72 && *(v98.__r_.__value_.__r.__words[0] + 8) == 115)
              {
                goto LABEL_214;
              }

              if (v98.__r_.__value_.__l.__size_ == 7)
              {
                v72 = v98.__r_.__value_.__r.__words[0];
                goto LABEL_198;
              }

LABEL_202:
              if (sub_29A0F2648(&v98, "glow"))
              {
                v77 = 812;
              }

              else
              {
                if (!sub_29A0F2648(&v98, "translucence"))
                {
                  __p.__r_.__value_.__r.__words[0] = "usdObj/obj.cpp";
                  __p.__r_.__value_.__l.__size_ = "readObjMdl";
                  __p.__r_.__value_.__r.__words[2] = 1561;
                  v90 = "BOOL adobe::usd::readObjMdl(Obj &, int, const std::vector<char> &, std::unordered_map<std::string, int> &, std::unordered_map<std::string, int> &, const std::string &, BOOL)";
                  v91 = 0;
                  v79 = &v98;
                  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v79 = v98.__r_.__value_.__r.__words[0];
                  }

                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v80 = &__str;
                  }

                  else
                  {
                    v80 = __str.__r_.__value_.__r.__words[0];
                  }

                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Unsupported MDL float_texture '%s' with file '%s'", v78, v79, v80);
                  goto LABEL_184;
                }

                v77 = 864;
              }
            }

            else
            {
              if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 7)
              {
                if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 8)
                {
                  if (HIBYTE(v98.__r_.__value_.__r.__words[2]) != 9)
                  {
                    goto LABEL_202;
                  }

                  if (v98.__r_.__value_.__r.__words[0] != 0x73656E6867756F72 || v98.__r_.__value_.__s.__data_[8] != 115)
                  {
                    goto LABEL_202;
                  }

LABEL_214:
                  std::string::operator=(v15 + 49, &__str);
                  v81 = adobe::usd::addImage(v105, &__str, v106, v107, *v108);
                  *(v15 + 300) = v81;
                  *(v15 + 1168) = v81 != -1;
                  goto LABEL_184;
                }

                if (v98.__r_.__value_.__r.__words[0] == 0x63696C6C6174656DLL)
                {
LABEL_196:
                  std::string::operator=((v15 + 640), &__str);
                  v73 = adobe::usd::addImage(v105, &__str, v106, v107, *v108);
                  *(v15 + 326) = v73;
                  *(v15 + 1272) = v73 != -1;
                  goto LABEL_184;
                }

                goto LABEL_202;
              }

              v72 = &v98;
LABEL_198:
              data = v72->__r_.__value_.__l.__data_;
              v75 = *(v72->__r_.__value_.__r.__words + 3);
              if (data != 1667330159 || v75 != 2037672291)
              {
                goto LABEL_202;
              }

              v77 = 708;
            }

            sub_29AA20B70(&v105, &v15[v77], &__str);
            v13 = v15;
            goto LABEL_4;
          }
        }

        goto LABEL_4;
      }
    }

    else if (HIBYTE(v102))
    {
      goto LABEL_11;
    }

    v12 = (v12 + 1);
  }

  v82 = mach_absolute_time();
  if (sub_29AA17830(0))
  {
    v83 = *(a1 + 104) + 56 * a2;
    if (*(v83 + 23) < 0)
    {
      v83 = *v83;
    }

    v84 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v82 - v11));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read mdl %s (%d lines) in %lu ms\n", v85, v86, v83, v12, v84 / 1000000);
  }

  v92[0] = *MEMORY[0x29EDC9528];
  v87 = *(MEMORY[0x29EDC9528] + 72);
  *(v92 + *(v92[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v92[2] = v87;
  v93 = MEMORY[0x29EDC9570] + 16;
  if (v95 < 0)
  {
    operator delete(v94[7].__locale_);
  }

  v93 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v94);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v96);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(v100);
  }

  return 1;
}