uint64_t sub_2964A2AB8()
{
  __cxa_atexit(sub_2964A2C4C, &unk_2A1390EE0, &dword_2964A2000);
  sub_2964A2B70(&xmmword_2A1898490, ".");
  __cxa_atexit(sub_2964A2C18, &xmmword_2A1898490, &dword_2964A2000);
  sub_2964A2B70(qword_2A1898478, "..");

  return __cxa_atexit(sub_2964A2C18, qword_2A1898478, &dword_2964A2000);
}

void *sub_2964A2B70(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2964A3C00();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t sub_2964A2C18(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2964A2C4C(uint64_t a1)
{
  if (qword_2A1898470)
  {
    std::locale::~locale(qword_2A1898470);
    operator delete(v2);
  }

  qword_2A1898470 = 0;
  return a1;
}

double sub_2964A2EF8(uint64_t a1)
{
  *a1 = &unk_2A1D534F8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_2964A2F38(uint64_t a1)
{
  *a1 = &unk_2A1D534F8;
  v4 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2964A3B00(v2, v3);
  }

  v5 = (a1 + 8);
  sub_2964A3A00(&v5);
  PB::Base::~Base(a1);
}

void sub_2964A2FA8(uint64_t a1)
{
  sub_2964A2F38(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964A2FE0(uint64_t result, void *a2)
{
  *result = &unk_2A1D534F8;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  if (a2[4])
  {
    operator new();
  }

  v2 = a2[1];
  if (v2 != a2[2])
  {
    v3 = *v2;
    sub_2964A30C8();
  }

  return result;
}

uint64_t sub_2964A3220(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sub_2964A2FE0(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sub_2964A2F38(v7);
  }

  return a1;
}

void *sub_2964A327C(void *result, void *a2)
{
  v2 = result[4];
  result[4] = a2[4];
  a2[4] = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  return result;
}

uint64_t sub_2964A32C0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1D534F8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v8 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = v8;
  *v6 = v5;
  if (v8)
  {
    sub_2964A3B00(v6, v7);
  }

  sub_2964A3AC0(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sub_2964A3358(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964A32C0(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sub_2964A2F38(v7);
  }

  return a1;
}

uint64_t sub_2964A33B4(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "enum_names");
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2964A346C(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 2)
      {
        sub_2964A36A8();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_2964A37F4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 32))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  return result;
}

BOOL sub_2964A3854(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (v5)
    {
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = *(v4 + 23);
      }

      else
      {
        v7 = *(v4 + 8);
      }

      v8 = *(v5 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v5 + 8);
      }

      if (v7 == v8)
      {
        v10 = v6 >= 0 ? *(a1 + 32) : *v4;
        v11 = v9 >= 0 ? *(a2 + 32) : *v5;
        if (!memcmp(v10, v11, v7))
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_16:

  return sub_2964A3904((a1 + 8), a2 + 8);
}

BOOL sub_2964A3904(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_2964B86D8(*v3, *v4);
    if (!result)
    {
      break;
    }

    ++v3;
    ++v4;
  }

  while (v3 != a1[1]);
  return result;
}

unint64_t sub_2964A3984(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = sub_2964A3DE8(&v9, v2);
  }

  else
  {
    v3 = 0;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5++;
      v6 ^= sub_2964B87B8(v7);
    }

    while (v5 != v4);
  }

  return v6 ^ v3;
}

void sub_2964A3A00(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2964A3A54(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_2964A3A54(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_2964A3AC0(void **a1)
{
  if (*a1)
  {
    sub_2964A3A54(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2964A3B00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x29C25AE40);
  }
}

void *sub_2964A3B5C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2964A3C00();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_2964A3C18(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2964A3C74(exception, a1);
  __cxa_throw(exception, off_29EE31DD8, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_2964A3C74(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void sub_2964A3CA8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void sub_2964A3CF4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2964A3CA8();
}

uint64_t sub_2964A3D3C(uint64_t a1)
{
  sub_2964A3D74(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2964A3D74(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

unint64_t sub_2964A3DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_2964A3E28(&v5, a2, v3);
}

unint64_t sub_2964A3E28(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_2964A41D4(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_2964A4128(a2, a3);
  }

  else
  {
    return sub_2964A4030(a2, a3);
  }
}

unint64_t sub_2964A4030(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_2964A4128(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_2964A41D4(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

uint64_t sDumpMetricFile@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a2 + a3;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  v14 = xmmword_2964E0A40;
  v15 = *MEMORY[0x29EDC9750];
  v16 = 0;
  v17 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = 0uLL;
      v8 = 0xFFFFFFFFLL;
      sub_2964A452C(v6);
    }

    v7 = 0uLL;
    v8 = 0xFFFFFFFFLL;
    sub_2964A452C(v6);
  }

  v7 = 0uLL;
  v8 = 0xFFFFFFFFLL;
  v6[0] = a4 != 0;
  sub_2964A443C(&v7, v9, v6, a1, a5);
  return MEMORY[0x29C25A8E0](v9);
}

void sub_2964A4404(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2964A793C((v7 + 8), a3);
  MEMORY[0x29C25A8E0](va);
  _Unwind_Resume(a1);
}

void sub_2964A443C(__n128 *a1@<X0>, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a3;
  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v11[0] = a5;
  v11[1] = 0;
  MetricFileMetadataHelper::MetricFileMetadataHelper(&v12, &v10);
  v14[64] = v7;
  if (*(&v10 + 1))
  {
    sub_2964A5FB4(*(&v10 + 1));
  }

  while ((*(a2 + 36) & 1) == 0)
  {
    v8 = *a1;
    v9 = a1[1].n128_u64[0];
    sub_2964A8278(a2, &v8, v11);
  }

  sub_2964AC558(v14);
  if (v13)
  {
    sub_2964A5FB4(v13);
  }
}

void sub_2964A44F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_2964A5FB4(a14);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964A45F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2964A5FB4(a14);
  }

  sub_2964A793C(v14 + 1, *v14);
  _Unwind_Resume(a1);
}

void sub_2964A4624(void *a1@<X8>)
{
  v1 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_2964A476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A78FC(va);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sDumpMetricLog@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a2 + a3;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  v14 = xmmword_2964E0A40;
  v15 = *MEMORY[0x29EDC9750];
  v16 = 0;
  v17 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = 0uLL;
      v8 = 0xFFFFFFFFLL;
      sub_2964A4A4C(v6);
    }

    v7 = 0uLL;
    v8 = 0xFFFFFFFFLL;
    sub_2964A4A4C(v6);
  }

  v7 = 0uLL;
  v8 = 0xFFFFFFFFLL;
  v6[0] = a4 != 0;
  sub_2964A495C(&v7, v9, v6, a1, a5);
  return MEMORY[0x29C25A8E0](v9);
}

void sub_2964A4924(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2964A793C((v7 + 8), a3);
  MEMORY[0x29C25A8E0](va);
  _Unwind_Resume(a1);
}

void sub_2964A495C(__n128 *a1@<X0>, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a3;
  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v11[0] = a5;
  v11[1] = 0;
  MetricFileMetadataHelper::MetricFileMetadataHelper(&v12, &v10);
  v14[64] = v7;
  if (*(&v10 + 1))
  {
    sub_2964A5FB4(*(&v10 + 1));
  }

  while ((*(a2 + 36) & 1) == 0)
  {
    v8 = *a1;
    v9 = a1[1].n128_u64[0];
    sub_2964A8278(a2, &v8, v11);
  }

  sub_2964AC558(v14);
  if (v13)
  {
    sub_2964A5FB4(v13);
  }
}

void sub_2964A4A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_2964A5FB4(a14);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964A4B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2964A5FB4(a14);
  }

  sub_2964A793C(v14 + 1, *v14);
  _Unwind_Resume(a1);
}

uint64_t sDumpDeviceConfiguration@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a2 + a3;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  v14 = xmmword_2964E0A40;
  v15 = *MEMORY[0x29EDC9750];
  v16 = 0;
  v17 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = 0uLL;
      v8 = 0xFFFFFFFFLL;
      sub_2964A4E18(v6);
    }

    v7 = 0uLL;
    v8 = 0xFFFFFFFFLL;
    sub_2964A4E18(v6);
  }

  v7 = 0uLL;
  v8 = 0xFFFFFFFFLL;
  v6[0] = a4 != 0;
  sub_2964A4CEC(&v7, v9, v6, a1, a5);
  return MEMORY[0x29C25A8E0](v9);
}

void sub_2964A4CB4(_Unwind_Exception *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2964A793C((v7 + 8), a3);
  MEMORY[0x29C25A8E0](va);
  _Unwind_Resume(a1);
}

void sub_2964A4CEC(__n128 *a1@<X0>, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a3;
  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v11[0] = a5;
  v11[1] = 0;
  DeviceConfigMetadataHelper::DeviceConfigMetadataHelper(&v12, &v10);
  v15 = v7;
  MetricFileMetadataHelper::MetricFileMetadataHelper(&v16, &v10);
  if (*(&v10 + 1))
  {
    sub_2964A5FB4(*(&v10 + 1));
  }

  while ((*(a2 + 36) & 1) == 0)
  {
    v8 = *a1;
    v9 = a1[1].n128_u64[0];
    sub_2964B1CAC(a2, &v8, v11);
  }

  sub_2964AC558(&v18);
  if (v17)
  {
    sub_2964A5FB4(v17);
  }

  if (v14)
  {
    sub_2964A5FB4(v14);
  }

  if (v13)
  {
    sub_2964A5FB4(v13);
  }
}

void sub_2964A4DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_2964B318C(v15 + 16);
  if (a14)
  {
    sub_2964A5FB4(a14);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

void sub_2964A4EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2964A5FB4(a14);
  }

  sub_2964A793C(v14 + 1, *v14);
  _Unwind_Resume(a1);
}

void (****sub_2964A4F10(void (****result)(void), unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6))(void)
{
  v9 = result;
  v10 = *a2;
  if (v10 > 4)
  {
    if (*a2 <= 6u)
    {
      if (v10 == 5)
      {
        v23 = *(a2 + 1);

        return sub_2964A689C(result, v23);
      }

      else if (v10 == 6)
      {
        v21 = *(a2 + 1);

        return sub_2964A6A84(result, v21);
      }

      return result;
    }

    if (v10 == 7)
    {
      v30 = *(a2 + 1);

      return sub_2964A6BD4(result, v30);
    }

    if (v10 != 8)
    {
      if (v10 != 9)
      {
        return result;
      }

      v14 = *result;
      v13 = (**v9)[1];
      goto LABEL_61;
    }

    v32 = *result;
    v33 = (**v9)[1];
    if (!a3)
    {
      v33();
      v39 = **(a2 + 1);
      v40 = *(*(a2 + 1) + 8);
      v41 = **(a2 + 1);
      if (v41 != v40)
      {
        while (v41 != v40 - 1)
        {
          v42 = *v41++;
          sub_2964A67C4(v9, v42);
          (***v9)(*v9, 44);
          v40 = *(*(a2 + 1) + 8);
        }

        sub_2964A67C4(v9, *(v40 - 1));
      }

      ((**v9)[1])(*v9, "],subtype:", 12);
      v50 = *(a2 + 1);
      if (*(v50 + 25) == 1)
      {
        sub_2964A67C4(v9, *(v50 + 24));
        v51 = ***v9;

        return v51();
      }

      v13 = (**v9)[1];
      goto LABEL_61;
    }

    v33();
    v34 = (a6 + a5);
    v35 = v9 + 76;
    v36 = *(v9 + 631);
    if ((v36 & 0x80000000) != 0)
    {
      v52 = v9[77];
      if (v52 >= v34)
      {
        v37 = *v9;
LABEL_66:
        v38 = *v35;
        goto LABEL_67;
      }
    }

    else
    {
      if (v34 <= v36)
      {
        v37 = *v9;
        v38 = v9 + 76;
LABEL_67:
        ((*v37)[1])(v37, v38, v34);
        ((**v9)[1])(*v9, "bytes: [", 10);
        v53 = **(a2 + 1);
        v54 = *(*(a2 + 1) + 8);
        v55 = **(a2 + 1);
        if (v55 != v54)
        {
          for (; v55 != v54 - 1; v54 = *(*(a2 + 1) + 8))
          {
            v56 = *v55++;
            sub_2964A67C4(v9, v56);
            ((**v9)[1])(*v9, ", ", 2);
          }

          sub_2964A67C4(v9, *(v54 - 1));
        }

        ((**v9)[1])(*v9, "],\n", 3);
        v57 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v57 = *v35;
        }

        ((**v9)[1])(*v9, v57, v34);
        ((**v9)[1])(*v9, "subtype: ", 11);
        v58 = *(a2 + 1);
        if (*(v58 + 25) == 1)
        {
          sub_2964A67C4(v9, *(v58 + 24));
        }

        else
        {
          ((**v9)[1])(*v9, "null", 4);
        }

        (***v9)(*v9, 10);
        if (*(v9 + 631) < 0)
        {
          v59 = *v35;
        }

        v60 = (**v9)[1];
        goto LABEL_104;
      }

      v52 = *(v9 + 631);
    }

    std::string::resize((v9 + 76), 2 * v52, 32);
    v37 = *v9;
    v38 = v9 + 76;
    if ((*(v9 + 631) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v15 = *result;
      v16 = **v9;
      if (!*(*(a2 + 1) + 16))
      {
        v43 = v16[1];
        goto LABEL_46;
      }

      if (!a3)
      {
        (*v16)();
        v44 = *(a2 + 1);
        v45 = *v44;
        if (v44[2] == 1)
        {
          v46 = *v44;
        }

        else
        {
          v61 = 0;
          do
          {
            (***v9)(*v9, 34);
            sub_2964A6178(v9, v45 + 4, a4);
            ((**v9)[1])(*v9, ":", 2);
            sub_2964A4F10(v9, v45 + 7, 0, a4, a5, a6);
            (***v9)();
            v62 = v45[1];
            if (v62)
            {
              do
              {
                v46 = v62;
                v62 = *v62;
              }

              while (v62);
            }

            else
            {
              do
              {
                v46 = v45[2];
                v63 = *v46 == v45;
                v45 = v46;
              }

              while (!v63);
            }

            ++v61;
            v45 = v46;
          }

          while (v61 < *(*(a2 + 1) + 16) - 1);
        }

        (***v9)(*v9, 34);
        sub_2964A6178(v9, v46 + 4, a4);
        ((**v9)[1])(*v9, ":", 2);
        sub_2964A4F10(v9, v46 + 7, 0, a4, a5, a6);
        goto LABEL_105;
      }

      v16[1]();
      v17 = a6 + a5;
      v18 = v9 + 76;
      v19 = *(v9 + 631);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = v9[77];
        if (v20 < v17)
        {
          goto LABEL_120;
        }
      }

      else if (v17 > v19)
      {
        v20 = *(v9 + 631);
LABEL_120:
        std::string::resize((v9 + 76), 2 * v20, 32);
      }

      v64 = *(a2 + 1);
      v65 = *v64;
      if (v64[2] == 1)
      {
        v66 = *v64;
      }

      else
      {
        v67 = 0;
        do
        {
          v68 = v9 + 76;
          if (*(v9 + 631) < 0)
          {
            v68 = *v18;
          }

          ((**v9)[1])(*v9, v68, (a6 + a5));
          (***v9)();
          sub_2964A6178(v9, v65 + 4, a4);
          ((**v9)[1])(*v9, ": ", 3);
          sub_2964A4F10(v9, v65 + 7, 1, a4, a5, (a6 + a5));
          ((**v9)[1])(*v9, ",\n", 2);
          v69 = v65[1];
          if (v69)
          {
            do
            {
              v66 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v66 = v65[2];
              v63 = *v66 == v65;
              v65 = v66;
            }

            while (!v63);
          }

          ++v67;
          v65 = v66;
        }

        while (v67 < *(*(a2 + 1) + 16) - 1);
      }

      v70 = v9 + 76;
      if (*(v9 + 631) < 0)
      {
        v70 = *v18;
      }

      ((**v9)[1])(*v9, v70, (a6 + a5));
      (***v9)();
      sub_2964A6178(v9, v66 + 4, a4);
      ((**v9)[1])(*v9, ": ", 3);
      sub_2964A4F10(v9, v66 + 7, 1, a4, a5, (a6 + a5));
      (***v9)();
      if (*(v9 + 631) < 0)
      {
        v71 = *v18;
      }

      v60 = (**v9)[1];
LABEL_104:
      v60();
LABEL_105:
      v13 = ***v9;
      goto LABEL_117;
    }

    v22 = *result;
    v13 = (**v9)[1];
LABEL_61:

    return v13();
  }

  switch(v10)
  {
    case 2u:
      v24 = *result;
      v25 = **v9;
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        if (!a3)
        {
          (*v25)();
          v47 = *(a2 + 1);
          for (i = *v47; ; i += 16)
          {
            v49 = v47[1];
            if (i == v49 - 16)
            {
              break;
            }

            sub_2964A4F10(v9, i, 0, a4, a5, a6);
            (***v9)();
            v47 = *(a2 + 1);
          }

          sub_2964A4F10(v9, v49 - 16, 0, a4, a5, a6);
LABEL_116:
          v13 = ***v9;
LABEL_117:

          return v13();
        }

        v25[1]();
        v26 = a6 + a5;
        v27 = v9 + 76;
        v28 = *(v9 + 631);
        if ((v28 & 0x80000000) != 0)
        {
          v29 = v9[77];
          if (v29 < v26)
          {
            goto LABEL_121;
          }
        }

        else if (v26 > v28)
        {
          v29 = *(v9 + 631);
LABEL_121:
          std::string::resize((v9 + 76), 2 * v29, 32);
        }

        v72 = *(a2 + 1);
        v73 = *v72;
        if (*v72 != v72[1] - 16)
        {
          do
          {
            v74 = v9 + 76;
            if (*(v9 + 631) < 0)
            {
              v74 = *v27;
            }

            ((**v9)[1])(*v9, v74, (a6 + a5));
            sub_2964A4F10(v9, v73, 1, a4, a5, (a6 + a5));
            ((**v9)[1])(*v9, ",\n", 2);
            v73 += 16;
          }

          while (v73 != *(*(a2 + 1) + 8) - 16);
        }

        v75 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v75 = *v27;
        }

        ((**v9)[1])(*v9, v75, (a6 + a5));
        sub_2964A4F10(v9, *(*(a2 + 1) + 8) - 16, 1, a4, a5, (a6 + a5));
        (***v9)();
        if (*(v9 + 631) < 0)
        {
          v27 = *v27;
        }

        ((**v9)[1])(*v9, v27, a6);
        goto LABEL_116;
      }

      v43 = v25[1];
LABEL_46:

      return v43();
    case 3u:
      v31 = *result;
      (***v9)();
      sub_2964A6178(v9, *(a2 + 1), a4);
      v13 = ***v9;
      goto LABEL_117;
    case 4u:
      v12 = *result;
      v13 = (**v9)[1];
      a2[8];
      goto LABEL_61;
  }

  return result;
}

void sub_2964A5F10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D53548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25AE40);
}

void sub_2964A5FB4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_2964A6020(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = localeconv();
  *(a1 + 80) = v5;
  thousands_sep = v5->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v5->decimal_point;
  if (v5->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  operator new();
}

void sub_2964A6160(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2964A5FB4(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964A6178(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v3 >> 63;
  v15 = result + 90;
  do
  {
    v16 = *a2;
    if ((v14 & 1) == 0)
    {
      v16 = a2;
    }

    v17 = *(v16 + v9);
    if (v12)
    {
      v13 = *(v16 + v9) & 0x3F | (v13 << 6);
    }

    else
    {
      v13 = (0xFFu >> byte_2964E0BC1[v17]) & v17;
    }

    v12 = byte_2964E0BC1[16 * v12 + 256 + byte_2964E0BC1[v17]];
    if (v12 == 1)
    {
      v19 = *(v7 + 158);
      if ((v19 - 1) < 2)
      {
        v9 -= v10 != 0;
        if (v19 != 1)
        {
LABEL_50:
          v12 = 0;
          v10 = 0;
          v8 = v11;
          goto LABEL_51;
        }

        v20 = v15 + v11;
        if (a3)
        {
          *v20 = 1717990748;
          *(v20 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v20 = -16401;
          *(v20 + 2) = -67;
        }

        goto LABEL_48;
      }

      if (!v19)
      {
        v45 = 3;
        *__str = 0;
        snprintf(__str, 3uLL, "%.2X", v17);
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v38, v9);
        v28 = std::string::insert(&v38, 0, "invalid UTF-8 byte at index ");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v39, ": 0x");
        v31 = *&v30->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (v45 >= 0)
        {
          v32 = __str;
        }

        else
        {
          v32 = *__str;
        }

        if (v45 >= 0)
        {
          v33 = v45;
        }

        else
        {
          v33 = v44;
        }

        v34 = std::string::append(&v40, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v42 = v34->__r_.__value_.__r.__words[2];
        v41 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_2964A6C84(316, &v41, exception);
        __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
      }

      v12 = 1;
    }

    else
    {
      if (!v12)
      {
        if (v13 <= 11)
        {
          switch(v13)
          {
            case 8:
              v18 = 25180;
              goto LABEL_47;
            case 9:
              v18 = 29788;
              goto LABEL_47;
            case 10:
              v18 = 28252;
              goto LABEL_47;
          }
        }

        else if (v13 > 33)
        {
          if (v13 == 34)
          {
            v18 = 8796;
            goto LABEL_47;
          }

          if (v13 == 92)
          {
            v18 = 23644;
            goto LABEL_47;
          }
        }

        else
        {
          if (v13 == 12)
          {
            v18 = 26204;
            goto LABEL_47;
          }

          if (v13 == 13)
          {
            v18 = 29276;
LABEL_47:
            *(v15 + v8) = v18;
            v11 = v8 + 2;
            goto LABEL_48;
          }
        }

        if (v13 > 0x7E)
        {
          v21 = a3;
        }

        else
        {
          v21 = 0;
        }

        if (v13 >= 0x20 && v21 == 0)
        {
          v11 = v8 + 1;
          *(v15 + v8) = *(v16 + v9);
        }

        else if (HIWORD(v13))
        {
          result = snprintf((v15 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v13 >> 10) - 10304), v13 & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v15 + v8), 7uLL, "\\u%04x", v13);
          v11 = v8 + 6;
        }

LABEL_48:
        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v15);
          v12 = 0;
          v11 = 0;
          v10 = 0;
          v8 = 0;
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      if ((a3 & 1) == 0)
      {
        *(v15 + v8++) = *(v16 + v9);
      }

      ++v10;
    }

LABEL_51:
    ++v9;
    v23 = *(a2 + 23);
    v14 = v23 >> 63;
    v24 = a2[1];
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *(a2 + 23);
    }
  }

  while (v9 < v24);
  if (v12)
  {
    v26 = *(v7 + 158);
    switch(v26)
    {
      case 1:
        (*(**v7 + 8))(*v7, v15, v11);
        v25 = *(**v7 + 8);
        break;
      case 2:
        v25 = *(**v7 + 8);
        break;
      case 0:
        v45 = 3;
        *__str = 0;
        v36 = *a2;
        if ((v23 & 0x80000000) == 0)
        {
          v36 = a2;
        }

        snprintf(__str, 3uLL, "%.2X", *(v36 + v24 - 1));
        v37 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        sub_2964A6C84(316, &v41, v37);
        __cxa_throw(v37, &unk_2A1D535F8, sub_2964A6DC8);
      default:
        return result;
    }

LABEL_60:

    return v25();
  }

  if (v8)
  {
    v25 = *(**v7 + 8);
    goto LABEL_60;
  }

  return result;
}

void sub_2964A6704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      if (*(v41 - 89) < 0)
      {
        operator delete(*(v41 - 112));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

uint64_t sub_2964A67C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = *&a00010203040506[2 * (a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = *&a00010203040506[2 * a2];
  return (*(**a1 + 8))();
}

uint64_t sub_2964A689C(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  v3 = a1 + 2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    *v3 = 45;
    v2 = -v2;
    if (v2 >= 0xA)
    {
      v6 = 4;
      v10 = v2;
      while (1)
      {
        if (v10 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_24;
        }

        if (v10 <= 0x3E7)
        {
          break;
        }

        if (v10 >> 4 < 0x271)
        {
          goto LABEL_24;
        }

        v6 += 4;
        v9 = v10 >= 0x186A0;
        v10 /= 0x2710uLL;
        if (!v9)
        {
          v6 -= 3;
          goto LABEL_24;
        }
      }

      --v6;
    }

    else
    {
      v6 = 1;
    }

LABEL_24:
    v7 = v6 + 1;
  }

  else
  {
    if (v2 < 0xA)
    {
      v4 = a1 + 17;
LABEL_32:
      *(v4 - 1) = v2 | 0x30;
      return (*(**a1 + 8))();
    }

    v7 = 4;
    v8 = v2;
    while (1)
    {
      if (v8 <= 0x63)
      {
        v7 -= 2;
        goto LABEL_25;
      }

      if (v8 <= 0x3E7)
      {
        break;
      }

      if (v8 >> 4 < 0x271)
      {
        goto LABEL_25;
      }

      v7 += 4;
      v9 = v8 >= 0x186A0;
      v8 /= 0x2710uLL;
      if (!v9)
      {
        v7 -= 3;
        goto LABEL_25;
      }
    }

    --v7;
  }

LABEL_25:
  v4 = &v3[v7];
  if (v2 < 0x64)
  {
    v11 = v2;
  }

  else
  {
    do
    {
      v11 = v2 / 0x64;
      *(v4 - 1) = *&a00010203040506[2 * (v2 % 0x64) + 200];
      v4 -= 2;
      v12 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v12 > 0x270);
  }

  if (v11 < 0xA)
  {
    LOBYTE(v2) = v11;
    goto LABEL_32;
  }

  *(v4 - 1) = *&a00010203040506[2 * v11 + 200];
  return (*(**a1 + 8))();
}

uint64_t sub_2964A6A84(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  if (a2 < 0xA)
  {
    v3 = a1 + 17;
LABEL_20:
    *(v3 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  v5 = 4;
  v6 = a2;
  while (1)
  {
    if (v6 <= 0x63)
    {
      v5 -= 2;
      goto LABEL_13;
    }

    if (v6 <= 0x3E7)
    {
      break;
    }

    if (v6 >> 4 < 0x271)
    {
      goto LABEL_13;
    }

    v7 = v6 >> 5;
    v6 /= 0x2710uLL;
    v5 += 4;
    if (v7 <= 0xC34)
    {
      v5 -= 3;
      goto LABEL_13;
    }
  }

  --v5;
LABEL_13:
  v3 = a1 + v5 + 16;
  if (a2 < 0x64)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = v2 / 0x64;
      *(v3 - 2) = *&a00010203040506[2 * (v2 % 0x64) + 400];
      v3 -= 2;
      v9 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v9 > 0x270);
  }

  if (v8 < 0xA)
  {
    LOBYTE(v2) = v8;
    goto LABEL_20;
  }

  *(v3 - 2) = *&a00010203040506[2 * v8 + 400];
  return (*(**a1 + 8))();
}

uint64_t sub_2964A6BD4(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    sub_2964A71E8(a1 + 16, a2);
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(**a1 + 8);

  return v4();
}

void sub_2964A6C84(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2964A6FA0(&__p, "type_error");
  sub_2964A6E1C(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_2964A7058(a3, a1, v11);
  *a3 = &unk_2A1D53620;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2964A6D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964A6DC8(std::runtime_error *a1)
{
  a1->__vftable = &unk_2A1D53648;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_2964A6E1C(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ");
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_2964A6F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2964A6FA0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2964A3C00();
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

uint64_t sub_2964A7058(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = &unk_2A1D53648;
  *(a1 + 8) = a2;
  MEMORY[0x29C25AAF0](a1 + 16, a3);
  return a1;
}

void sub_2964A70BC(std::runtime_error *a1)
{
  a1->__vftable = &unk_2A1D53648;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x29C25AE40);
}

void sub_2964A712C(std::runtime_error *a1)
{
  a1->__vftable = &unk_2A1D53648;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_2964A7180(std::runtime_error *a1)
{
  a1->__vftable = &unk_2A1D53648;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964A71E8(_BYTE *a1, double a2)
{
  v2 = a1;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    *a1 = 45;
    v2 = a1 + 1;
  }

  if (a2 == 0.0)
  {
    *v2 = 11824;
    result = (v2 + 3);
    v2[2] = 48;
    return result;
  }

  v12 = 0;
  sub_2964A7408(v2, &v12 + 1, &v12, a2);
  v4 = SHIDWORD(v12);
  v5 = v12 + SHIDWORD(v12);
  if ((v12 & 0x80000000) == 0 && v5 <= 15)
  {
    memset(&v2[SHIDWORD(v12)], 48, v12);
    *&v2[v5] = 12334;
    return &v2[v5 + 2];
  }

  if ((v5 - 16) >= 0xFFFFFFF1)
  {
    v7 = &v2[v5];
    memmove(v7 + 1, v7, SHIDWORD(v12) - v5);
    *v7 = 46;
    return &v2[v4 + 1];
  }

  if (v5 == 0 || v5 >= 0xFFFFFFFD)
  {
    v6 = -v5;
    memmove(&v2[v6 + 2], v2, SHIDWORD(v12));
    *v2 = 11824;
    memset(v2 + 2, 48, v6);
    return &v2[v6 + 2 + v4];
  }

  if (HIDWORD(v12) != 1)
  {
    memmove(v2 + 2, v2 + 1, SHIDWORD(v12) - 1);
    v2[1] = 46;
    v2 += v4;
  }

  v8 = v5 - 1;
  if (v5 >= 1)
  {
    v9 = 43;
  }

  else
  {
    v9 = 45;
  }

  v2[2] = v9;
  v2[1] = 101;
  if (v5 - 1 < 0)
  {
    v8 = 1 - v5;
  }

  if (v8 > 9)
  {
    if (v8 > 0x63)
    {
      v2[3] = v8 / 0x64 + 48;
      v8 %= 0x64u;
      v10 = v2 + 5;
      v2[4] = (v8 / 0xAu) | 0x30;
      LOBYTE(v8) = v8 % 0xAu;
      v11 = 4;
      goto LABEL_25;
    }

    v10 = v2 + 4;
    v2[3] = (v8 / 0xAu) | 0x30;
    LOBYTE(v8) = v8 % 0xAu;
  }

  else
  {
    v10 = v2 + 4;
    v2[3] = 48;
  }

  v11 = 3;
LABEL_25:
  result = &v2[v11 + 2];
  *v10 = v8 | 0x30;
  return result;
}

uint64_t sub_2964A7408(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  sub_2964A7530(v20, a4);
  v27 = v20[1];
  v26 = v20[0];
  v25[0] = v21;
  v25[1] = v22;
  if (-61 - v22 <= 0)
  {
    v7 = 78913 * (-61 - v22) / 0x40000;
  }

  else
  {
    v7 = 78913 * (-61 - v22) / 0x40000 + 1;
  }

  v8 = (&unk_2964E0FB0 + 16 * (((v7 + 307 + (((v7 + 307) >> 28) & 7)) << 16) >> 19));
  v9 = v8[1];
  v23 = *v8;
  v24 = v9;
  v10 = sub_2964A75D8(&v26, &v23);
  v12 = v11;
  v13 = sub_2964A75D8(&v27, &v23);
  v15 = v14;
  v16 = sub_2964A75D8(v25, &v23);
  *a3 = -HIDWORD(v9);
  return sub_2964A7638(a1, a2, a3, v13 + 1, v15, v10, v12, v18, v16 - 1, v17);
}

void sub_2964A7530(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (*&a2 >> 52)
  {
    v5 = (*&a2 >> 52) + 4294966221;
    v3 = 2 * (v2 | 0x10000000000000);
    v4 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
    v6 = (*&a2 >> 52) - 1076;
    if (*&a2 >> 53 && !v2)
    {
      v7 = (*&a2 >> 52) - 53;
      v8 = 0x3FFFFFFFFFFFFFLL;
      v2 = 0x10000000000000;
      goto LABEL_8;
    }

    v2 |= 0x10000000000000uLL;
  }

  else
  {
    v3 = 2 * *&a2;
    v4 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    LODWORD(v5) = -1074;
    v6 = -1075;
  }

  v8 = v3 - 1;
  v7 = v6;
  do
  {
LABEL_8:
    v4 *= 2;
    --v6;
  }

  while ((v4 & 0x8000000000000000) == 0);
  do
  {
    v2 *= 2;
    LODWORD(v5) = v5 - 1;
  }

  while ((v2 & 0x8000000000000000) == 0);
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8 << (v7 - v6);
  *(a1 + 24) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
}

unint64_t sub_2964A75D8(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t sub_2964A7638(uint64_t result, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int a10)
{
  v10 = a9 - a4;
  v11 = a9 - a6;
  v12 = -a10;
  v13 = 1 << -a10;
  v14 = a9 >> -a10;
  v15 = (v13 - 1) & a9;
  if (v14 <= 0x3B9AC9FF)
  {
    if (v14 <= 0x5F5E0FF)
    {
      if (v14 <= 0x98967F)
      {
        if (v14 <= 0xF423F)
        {
          v18 = v14 >> 5;
          v19 = v14 >> 4;
          if (v14 <= 9)
          {
            v20 = 1;
          }

          else
          {
            v20 = 10;
          }

          if (v14 <= 9)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v14 <= 0x63)
          {
            v22 = v20;
          }

          else
          {
            v22 = 100;
          }

          if (v14 <= 0x63)
          {
            v23 = v21;
          }

          else
          {
            v23 = 3;
          }

          if (v14 <= 0x3E7)
          {
            v24 = v22;
          }

          else
          {
            v24 = 1000;
          }

          if (v14 <= 0x3E7)
          {
            v25 = v23;
          }

          else
          {
            v25 = 4;
          }

          if (v19 <= 0x270)
          {
            v26 = v24;
          }

          else
          {
            v26 = 10000;
          }

          if (v19 <= 0x270)
          {
            v27 = v25;
          }

          else
          {
            v27 = 5;
          }

          v28 = v18 > 0xC34;
          if (v18 > 0xC34)
          {
            v16 = 100000;
          }

          else
          {
            v16 = v26;
          }

          if (v28)
          {
            v17 = 6;
          }

          else
          {
            v17 = v27;
          }
        }

        else
        {
          v16 = 1000000;
          v17 = 7;
        }
      }

      else
      {
        v16 = 10000000;
        v17 = 8;
      }
    }

    else
    {
      v16 = 100000000;
      v17 = 9;
    }
  }

  else
  {
    v16 = 1000000000;
    v17 = 10;
  }

  v29 = result - 1;
  v30 = a6 - a9;
  while (v17 > 0)
  {
    v31 = v14 / v16;
    v14 = v14 % v16;
    v32 = *a2;
    *a2 = v32 + 1;
    *(result + v32) = v31 + 48;
    --v17;
    v33 = (v14 << v12) + v15;
    if (v10 >= v33)
    {
      *a3 += v17;
      v34 = v16 << v12;
      v35 = v33 < v11 && v10 - v33 >= v34;
      if (!v35)
      {
        return result;
      }

      v36 = *a2;
      v37 = v11 - v33;
      v38 = v15 + (v14 << v12) + v34;
      v39 = v10 - v38;
      do
      {
        if (v38 >= v11 && v37 <= v30 + v38)
        {
          break;
        }

        --*(v29 + v36);
        if (v38 >= v11)
        {
          break;
        }

        v37 -= v34;
        v38 += v34;
        v35 = v39 >= v34;
        v39 -= v34;
      }

      while (v35);
    }

    else
    {
      v16 /= 0xAu;
    }

    if (v10 >= v33)
    {
      return result;
    }
  }

  v40 = 0;
  do
  {
    v41 = v10;
    v42 = v11;
    v43 = 5 * v15;
    v44 = *a2;
    *a2 = v44 + 1;
    *(result + v44) = ((2 * v43) >> v12) + 48;
    v10 = 10 * v41;
    v11 *= 10;
    --v40;
    v15 = (v13 - 1) & (2 * v43);
  }

  while (10 * v41 < v15);
  *a3 += v40;
  if (v15 < v11 && 10 * v41 - v15 >= v13)
  {
    v45 = *a2;
    v46 = 10 * v42 - v15;
    v47 = v13 + v15;
    v48 = 10 * v41 - v47;
    v49 = -10 * v42;
    do
    {
      if (v47 >= v11 && v46 <= v49 + v47)
      {
        break;
      }

      --*(v29 + v45);
      if (v47 >= v11)
      {
        break;
      }

      v46 -= v13;
      v47 += v13;
      v35 = v48 >= v13;
      v48 -= v13;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_2964A78FC(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  return a1;
}

void sub_2964A793C(uint64_t *a1, int a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (a2 == 1)
  {
    sub_2964A7C84(&v29, *(*a1 + 16));
    v6 = *a1 + 8;
    v7 = **a1;
    if (v7 != v6)
    {
      v8 = v30;
      do
      {
        if (v8 >= v31)
        {
          v8 = sub_2964A8000(&v29, (v7 + 7));
        }

        else
        {
          *v8 = *(v7 + 56);
          *(v8 + 8) = v7[8];
          *(v7 + 56) = 0;
          v7[8] = 0;
          v8 += 16;
        }

        v30 = v8;
        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v6);
    }
  }

  else if (a2 == 2)
  {
    sub_2964A7C84(&v29, (*(*a1 + 8) - **a1) >> 4);
    v4 = **a1;
    v5 = *(*a1 + 8);
    while (v4 != v5)
    {
      sub_2964A7D40(&v29, v4);
      v4 += 16;
    }
  }

  for (i = v30; v29 != v30; i = v30)
  {
    LOBYTE(v27) = *(i - 16);
    v28 = *(i - 8);
    *(i - 16) = 0;
    *(i - 8) = 0;
    v13 = v30 - 16;
    sub_2964A793C(v30 - 8, *(v30 - 16));
    v30 = v13;
    if (v27 == 1)
    {
      v19 = v28;
      v20 = v28 + 1;
      v21 = *v28;
      if (*v28 != v28 + 1)
      {
        do
        {
          if (v13 >= v31)
          {
            v13 = sub_2964A8000(&v29, (v21 + 7));
          }

          else
          {
            *v13 = *(v21 + 56);
            *(v13 + 8) = v21[8];
            *(v21 + 56) = 0;
            v21[8] = 0;
            v13 += 16;
          }

          v30 = v13;
          v22 = v21[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v21[2];
              v11 = *v23 == v21;
              v21 = v23;
            }

            while (!v11);
          }

          v21 = v23;
        }

        while (v23 != v20);
        v19 = v28;
      }

      sub_2964A8118(v19, *(v19 + 8));
      *v19 = v19 + 8;
      *(v19 + 16) = 0;
      *(v19 + 8) = 0;
    }

    else if (v27 == 2)
    {
      v14 = v28;
      v15 = *v28;
      v16 = v28[1];
      if (*v28 != v16)
      {
        do
        {
          sub_2964A7D40(&v29, v15);
          v15 += 16;
        }

        while (v15 != v16);
        v14 = v28;
        v15 = *v28;
        v16 = v28[1];
      }

      if (v16 != v15)
      {
        v17 = v16 - 8;
        do
        {
          v18 = v17 - 8;
          sub_2964A793C(v17, *(v17 - 8));
          v17 -= 16;
        }

        while (v18 != v15);
      }

      v14[1] = v15;
    }

    sub_2964A793C(&v28, v27);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v26 = *v24;
        goto LABEL_51;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_54;
      }

      v24 = *a1;
      v25 = **a1;
      if (v25)
      {
        v24[1] = v25;
        v26 = v25;
LABEL_51:
        operator delete(v26);
        goto LABEL_52;
      }
    }

LABEL_53:
    operator delete(v24);
    goto LABEL_54;
  }

  if (a2 == 1)
  {
    sub_2964A8118(*a1, *(*a1 + 8));
    goto LABEL_52;
  }

  if (a2 == 2)
  {
    v27 = *a1;
    sub_2964A81DC(&v27);
LABEL_52:
    v24 = *a1;
    goto LABEL_53;
  }

LABEL_54:
  v27 = &v29;
  sub_2964A81DC(&v27);
}

void *sub_2964A7C84(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2964A7E84(result, a2);
    }

    sub_2964A3CDC();
  }

  return result;
}

void sub_2964A7D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2964A7D40(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2964A3CDC();
    }

    v9 = v5 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v20 = result;
    if (v10)
    {
      sub_2964A7E84(result, v10);
    }

    v11 = 16 * v7;
    v17 = 0;
    v18 = v11;
    *(&v19 + 1) = 0;
    *v11 = *a2;
    *(v11 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *&v19 = 16 * v7 + 16;
    v12 = *(result + 8);
    v13 = 16 * v7 + *result - v12;
    sub_2964A7ECC(result, *result, v12, v13);
    v14 = *v3;
    *v3 = v13;
    v15 = *(v3 + 16);
    v16 = v19;
    *(v3 + 8) = v19;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v17 = v14;
    v18 = v14;
    result = sub_2964A7FAC(&v17);
    v6 = v16;
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_2964A7E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

void sub_2964A7E84(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2964A3CA8();
}

uint64_t sub_2964A7ECC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      *(a4 + 8) = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    v6 = a2;
    do
    {
      v7 = *v6;
      v6 += 16;
      result = sub_2964A793C(a2 + 8, v7);
      a2 = v6;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t sub_2964A7F44(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_2964A793C(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t sub_2964A7FAC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_2964A793C(v4 + 8, v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2964A8000(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  *&v17 = 16 * v2 + 16;
  v9 = *(a1 + 8);
  v10 = 16 * v2 + *a1 - v9;
  sub_2964A7ECC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_2964A7FAC(&v15);
  return v14;
}

void sub_2964A8104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

void sub_2964A8118(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_2964A8118(a1, *a2);
    sub_2964A8118(a1, *(a2 + 1));
    sub_2964A793C(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_2964A8188(uint64_t a1, uint64_t a2)
{
  sub_2964A793C((a2 + 32), *(a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_2964A81DC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 8;
      do
      {
        v7 = (v6 - 8);
        sub_2964A793C(v6, *(v6 - 8));
        v6 -= 16;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2964A8278(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if ((*(this + 36) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
      goto LABEL_54;
    }

    return;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = awd::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v86 = *a2;
  v87 = a2[1].n128_i64[0];
  MetricFileMetadataHelper::getSubfieldType((a3 + 16), &v86, HIDWORD(v8), &v81);
  v86 = *&v81.__r_.__value_.__l.__data_;
  v87 = v81.__r_.__value_.__r.__words[2];
  BuiltinType = MetadataHelper::getBuiltinType(a3 + 16, &v86);
  v12 = BuiltinType;
  DecodingType = awd::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      v82.__r_.__value_.__r.__words[0] = 0;
      if (v9 > 1u)
      {
        if (v9 == 2)
        {
          if (!v10 && (*(this + 36) & 1) != 0)
          {
            return;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_93;
          }

          v86.n128_u32[0] = 0;
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v86))
          {
            v82.__r_.__value_.__r.__words[0] = v86.n128_u32[0];
            goto LABEL_93;
          }

          if (!v10 && (*(this + 36) & 1) != 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v82) & 1) == 0)
          {
            if (!v10 && (*(this + 36) & 1) != 0)
            {
              return;
            }

            goto LABEL_122;
          }

LABEL_93:
          v29 = v82.__r_.__value_.__r.__words[0];
          switch(v12)
          {
            case 1:
            case 15:
              v33 = awd::protobuf::NumberConverter<(awd::reflect::Type)1>::decode(v82.__r_.__value_.__l.__data_);
              v83 = *a2->n128_u8;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              v31 = sub_2964AA2E8(a3, &v86, v10);
              v86 = 0uLL;
              v87 = 0;
              if (v12 == 11)
              {
                v84 = v83;
                sub_2964AA36C(a3, &v84, v10, v33, &v85);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

              else if (v12 == 12)
              {
                v34 = sub_2964BBDB8(a3, v33 != 0.0);
                MEMORY[0x29C25ABC0](&v86, v34);
              }

              v70 = HIBYTE(v87);
              if (v87 < 0)
              {
                v70 = v86.n128_u64[1];
              }

              if (!v70)
              {
                v85 = v83;
                v71 = sub_2964AA618(a3, &v85, v10);
                (v71)(&v85, a3, v33);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

              goto LABEL_247;
            case 2:
            case 16:
              v30 = awd::protobuf::NumberConverter<(awd::reflect::Type)2>::decode(v82.__r_.__value_.__l.__data_);
              v83 = *a2->n128_u8;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              v31 = sub_2964AA2E8(a3, &v86, v10);
              v86 = 0uLL;
              v87 = 0;
              if (v12 == 11)
              {
                v84 = v83;
                sub_2964AA36C(a3, &v84, v10, v30, &v85);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

              else if (v12 == 12)
              {
                v32 = sub_2964BBDB8(a3, v30 != 0.0);
                MEMORY[0x29C25ABC0](&v86, v32);
              }

              v68 = HIBYTE(v87);
              if (v87 < 0)
              {
                v68 = v86.n128_u64[1];
              }

              if (!v68)
              {
                v85 = v83;
                v69 = sub_2964AA998(a3, &v85, v10);
                (v69)(&v85, a3, v30);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

LABEL_247:
              sub_2964BBD20(a3, v31, &v86);
              goto LABEL_248;
            case 3:
            case 11:
            case 17:
            case 25:
              v85.__r_.__value_.__r.__words[0] = v82.__r_.__value_.__r.__words[0];
              goto LABEL_105;
            case 4:
            case 10:
            case 18:
            case 24:
              v85.__r_.__value_.__r.__words[0] = v82.__r_.__value_.__r.__words[0];
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              sub_2964A9C68(a3, &v85, &v86, v10, v12);
              return;
            case 5:
            case 19:
              v85.__r_.__value_.__r.__words[0] = awd::protobuf::NumberConverter<(awd::reflect::Type)5>::decode(v82.__r_.__value_.__r.__words[0]);
LABEL_105:
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              sub_2964A9FA8(a3, &v85, &v86, v10, v12);
              return;
            case 6:
            case 20:
              LODWORD(v85.__r_.__value_.__l.__data_) = v82.__r_.__value_.__l.__data_;
              goto LABEL_107;
            case 7:
            case 9:
            case 21:
            case 23:
              LODWORD(v85.__r_.__value_.__l.__data_) = v82.__r_.__value_.__l.__data_;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              sub_2964A9E08(a3, &v85, &v86, v10, v12);
              return;
            case 8:
            case 22:
              LODWORD(v85.__r_.__value_.__l.__data_) = awd::protobuf::NumberConverter<(awd::reflect::Type)8>::decode(v82.__r_.__value_.__l.__data_);
LABEL_107:
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              sub_2964AA148(a3, &v85, &v86, v10, v12);
              return;
            case 12:
            case 26:
              v84 = *a2->n128_u8;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              v35 = sub_2964AA2E8(a3, &v86, v10);
              v86 = 0uLL;
              v87 = 0;
              if (v12 != 12)
              {
                goto LABEL_112;
              }

              v36 = sub_2964BBDB8(a3, v29 != 0);
              MEMORY[0x29C25ABC0](&v86, v36);
              v37 = HIBYTE(v87);
              if (v87 < 0)
              {
                v37 = v86.n128_u64[1];
              }

              if (!v37)
              {
LABEL_112:
                v85 = v84;
                v38 = sub_2964AAB5C(a3, &v85, v10);
                (v38)(&v85, a3, v29 != 0);
                if (SHIBYTE(v87) < 0)
                {
                  operator delete(v86.n128_u64[0]);
                }

                v86 = *&v85.__r_.__value_.__l.__data_;
                v87 = v85.__r_.__value_.__r.__words[2];
              }

              sub_2964BBD20(a3, v35, &v86);
LABEL_248:
              if (SHIBYTE(v87) < 0)
              {
                operator delete(v86.n128_u64[0]);
              }

              return;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25AAF0](exception, "This should never happen, no matter what the input!");
              goto LABEL_54;
          }
        }

        v26 = *(this + 1);
        if (v26 < *(this + 2) && (*v26 & 0x8000000000000000) == 0)
        {
          v82.__r_.__value_.__r.__words[0] = *v26;
          *(this + 1) = v26 + 1;
          goto LABEL_93;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v82))
        {
          goto LABEL_93;
        }

        if (!v10 && (*(this + 36) & 1) != 0)
        {
          return;
        }
      }

LABEL_122:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
LABEL_54:
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      LODWORD(v84.__r_.__value_.__l.__data_) = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v84))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v84.__r_.__value_.__l.__data_) = *v24;
        *(this + 1) = v24 + 1;
      }

      v86 = 0uLL;
      v87 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        v85 = *a2->n128_u8;
        sub_2964A9878(a3, &v86, &v85, v10);
      }

      if ((SHIBYTE(v87) & 0x80000000) == 0)
      {
        goto LABEL_220;
      }

      v64 = v86.n128_u64[0];
      goto LABEL_219;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        v86.n128_u64[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v86.n128_u64))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v86.n128_u64[0] = 0;
        if (!sub_2964A9740(this, v86.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v39 = v86.n128_u64[0];
LABEL_224:
      sub_2964A9AD8(a3, v39, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      v86.n128_u32[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v86))
      {
        goto LABEL_51;
      }

      v39 = v86.n128_u32[0];
      goto LABEL_224;
    }

    LODWORD(v85.__r_.__value_.__l.__data_) = 0;
    if (!sub_2964A976C(this, &v85))
    {
      goto LABEL_51;
    }

    sub_2964AC494(&v86, LODWORD(v85.__r_.__value_.__l.__data_));
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v86.n128_u64[0]);
    if (String)
    {
      sub_2964A9B9C(a3, v86.n128_u64[0], v86.n128_u64[1] - v86.n128_u64[0], v10);
    }

LABEL_217:
    v64 = v86.n128_u64[0];
    if (!v86.n128_u64[0])
    {
      goto LABEL_220;
    }

    v86.n128_u64[1] = v86.n128_u64[0];
LABEL_219:
    operator delete(v64);
LABEL_220:
    if ((String & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_51;
      }

      LODWORD(v82.__r_.__value_.__l.__data_) = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v82))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v82.__r_.__value_.__l.__data_) = *v25;
        *(this + 1) = v25 + 1;
      }

      v84.__r_.__value_.__r.__words[0] = this;
      LODWORD(v84.__r_.__value_.__r.__words[1]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      ++*(this + 14);
      v83.__r_.__value_.__r.__words[0] = this;
      v86 = *a2;
      v87 = a2[1].n128_i64[0];
      v85 = v81;
      sub_2964A99B0(a3, this, &v86, v10, &v85);
      sub_2964A9A9C(&v83);
      v65 = *(this + 14);
      v66 = __OFSUB__(v65, 1);
      v67 = v65 - 1;
      if (v67 < 0 == v66)
      {
        *(this + 14) = v67;
      }

      sub_2964AC460(&v84);
      return;
    }

    LODWORD(v84.__r_.__value_.__l.__data_) = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || (data = *v27, (data & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v84))
      {
        goto LABEL_51;
      }

      data = v84.__r_.__value_.__l.__data_;
    }

    else
    {
      LODWORD(v84.__r_.__value_.__l.__data_) = *v27;
      *(this + 1) = v27 + 1;
    }

    sub_2964AC494(&v86, data);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v86.n128_u64[0]);
    if (String)
    {
      v85 = *a2->n128_u8;
      sub_2964A990C(a3, &v86, &v85, v10);
    }

    goto LABEL_217;
  }

  v80 = 0;
  v16 = *(this + 1);
  if (v16 >= *(this + 2) || *v16 < 0)
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
    {
      goto LABEL_51;
    }
  }

  else
  {
    v80 = *v16;
    *(this + 1) = v16 + 1;
  }

  UnpackedType = awd::reflect::getUnpackedType(v14);
  WireTypeForType = awd::reflect::getWireTypeForType(UnpackedType);
  v78 = this;
  v79 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  __p = 0;
  v76 = 0;
  v77 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
        {
          if (v14 > 20)
          {
            if (v14 <= 23)
            {
              if (v14 == 22)
              {
                sub_2964ABF30(&__p, &v86);
                v85 = *a2->n128_u8;
                sub_2964ABD64(a3, &v86, &v85, v10, UnpackedType);
              }

              else
              {
                sub_2964AB62C(&__p, &v86);
                v85 = *a2->n128_u8;
                sub_2964AB460(a3, &v86, &v85, v10, UnpackedType);
              }

LABEL_197:
              v62 = v86.n128_u64[0];
              if (v86.n128_u64[0])
              {
                v86.n128_u64[1] = v86.n128_u64[0];
                goto LABEL_199;
              }

LABEL_200:
              if (__p)
              {
                v76 = __p;
                operator delete(__p);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              return;
            }

            if (v14 == 26)
            {
              sub_2964AB8A0(&__p, &v83);
              v82 = *a2->n128_u8;
              v86 = *a2;
              v87 = a2[1].n128_i64[0];
              v74 = sub_2964AA2E8(a3, &v86, v10);
              v41 = v83.__r_.__value_.__r.__words[0];
              if (v83.__r_.__value_.__l.__size_ > 0x3F || (v83.__r_.__value_.__s.__data_[8] & 0x3F) != 0)
              {
                v73 = v83.__r_.__value_.__s.__data_[8] & 0x3F;
                v48 = 0;
                v49 = 0;
                v50 = v83.__r_.__value_.__r.__words[0] + 8 * (v83.__r_.__value_.__l.__size_ >> 6);
                do
                {
                  v51 = 1 << v49;
                  v86 = 0uLL;
                  v87 = 0;
                  v52 = v49;
                  if (UnpackedType == 11)
                  {
                    v84 = v82;
                    sub_2964AA36C(a3, &v84, v10, (*v41 >> v49) & 1, &v85);
                    if (SHIBYTE(v87) < 0)
                    {
                      operator delete(v86.n128_u64[0]);
                    }

                    v86 = *&v85.__r_.__value_.__l.__data_;
                    v87 = v85.__r_.__value_.__r.__words[2];
                  }

                  else if (UnpackedType == 12)
                  {
                    v53 = sub_2964BBDB8(a3, (*v41 & v51) != 0);
                    MEMORY[0x29C25ABC0](&v86, v53);
                  }

                  v54 = HIBYTE(v87);
                  if (v87 < 0)
                  {
                    v54 = v86.n128_u64[1];
                  }

                  if (!v54)
                  {
                    if (!v48)
                    {
                      v85 = v82;
                      v48 = sub_2964AAB5C(a3, &v85, v10);
                    }

                    (v48)(&v85, a3, (*v41 & v51) != 0);
                    if (SHIBYTE(v87) < 0)
                    {
                      operator delete(v86.n128_u64[0]);
                    }

                    v86 = *&v85.__r_.__value_.__l.__data_;
                    v87 = v85.__r_.__value_.__r.__words[2];
                  }

                  sub_2964BBD20(a3, v74, &v86);
                  if (SHIBYTE(v87) < 0)
                  {
                    operator delete(v86.n128_u64[0]);
                  }

                  v41 += v52 == 63;
                  if (v52 == 63)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 = v52 + 1;
                  }
                }

                while (v41 != v50 || v49 != v73);
                v41 = v83.__r_.__value_.__r.__words[0];
              }

              if (!v41)
              {
                goto LABEL_200;
              }

              goto LABEL_193;
            }

            if (v14 == 25)
            {
LABEL_196:
              sub_2964ABAF0(&__p, &v86);
              v85 = *a2->n128_u8;
              sub_2964AB924(a3, &v86, &v85, v10, UnpackedType);
              goto LABEL_197;
            }

            if (v14 != 24)
            {
LABEL_250:
              v72 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25AAF0](v72, "This should never happen, no matter what the input!");
              __cxa_throw(v72, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }
          }

          else
          {
            if (v14 <= 17)
            {
              switch(v14)
              {
                case 0xF:
                  sub_2964AB324(&__p, &v83.__r_.__value_.__l.__data_);
                  v82 = *a2->n128_u8;
                  v86 = *a2;
                  v87 = a2[1].n128_i64[0];
                  v40 = sub_2964AA2E8(a3, &v86, v10);
                  size = v83.__r_.__value_.__l.__size_;
                  v41 = v83.__r_.__value_.__r.__words[0];
                  if (v83.__r_.__value_.__r.__words[0] == v83.__r_.__value_.__l.__size_)
                  {
LABEL_191:
                    if (!v41)
                    {
                      goto LABEL_200;
                    }

                    v83.__r_.__value_.__l.__size_ = v41;
LABEL_193:
                    v62 = v41;
LABEL_199:
                    operator delete(v62);
                    goto LABEL_200;
                  }

                  v43 = v40;
                  v44 = 0;
                  do
                  {
                    v45 = *v41;
                    v86 = 0uLL;
                    v87 = 0;
                    if (UnpackedType == 11)
                    {
                      v84 = v82;
                      sub_2964AA36C(a3, &v84, v10, v45, &v85);
                      if (SHIBYTE(v87) < 0)
                      {
                        operator delete(v86.n128_u64[0]);
                      }

                      v86 = *&v85.__r_.__value_.__l.__data_;
                      v87 = v85.__r_.__value_.__r.__words[2];
                    }

                    else if (UnpackedType == 12)
                    {
                      v46 = sub_2964BBDB8(a3, v45 != 0.0);
                      MEMORY[0x29C25ABC0](&v86, v46);
                    }

                    v47 = HIBYTE(v87);
                    if (v87 < 0)
                    {
                      v47 = v86.n128_u64[1];
                    }

                    if (!v47)
                    {
                      if (!v44)
                      {
                        v85 = v82;
                        v44 = sub_2964AA618(a3, &v85, v10);
                      }

                      (v44)(&v85, a3, v45);
                      if (SHIBYTE(v87) < 0)
                      {
                        operator delete(v86.n128_u64[0]);
                      }

                      v86 = *&v85.__r_.__value_.__l.__data_;
                      v87 = v85.__r_.__value_.__r.__words[2];
                    }

                    sub_2964BBD20(a3, v43, &v86);
                    if (SHIBYTE(v87) < 0)
                    {
                      operator delete(v86.n128_u64[0]);
                    }

                    ++v41;
                  }

                  while (v41 != size);
                  break;
                case 0x10:
                  sub_2964AB764(&__p, &v83.__r_.__value_.__l.__data_);
                  v82 = *a2->n128_u8;
                  v86 = *a2;
                  v87 = a2[1].n128_i64[0];
                  v55 = sub_2964AA2E8(a3, &v86, v10);
                  v56 = v83.__r_.__value_.__l.__size_;
                  v41 = v83.__r_.__value_.__r.__words[0];
                  if (v83.__r_.__value_.__r.__words[0] == v83.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_191;
                  }

                  v57 = v55;
                  v58 = 0;
                  do
                  {
                    v59 = *v41;
                    v86 = 0uLL;
                    v87 = 0;
                    if (UnpackedType == 11)
                    {
                      v84 = v82;
                      sub_2964AA36C(a3, &v84, v10, v59, &v85);
                      if (SHIBYTE(v87) < 0)
                      {
                        operator delete(v86.n128_u64[0]);
                      }

                      v86 = *&v85.__r_.__value_.__l.__data_;
                      v87 = v85.__r_.__value_.__r.__words[2];
                    }

                    else if (UnpackedType == 12)
                    {
                      v60 = sub_2964BBDB8(a3, v59 != 0.0);
                      MEMORY[0x29C25ABC0](&v86, v60);
                    }

                    v61 = HIBYTE(v87);
                    if (v87 < 0)
                    {
                      v61 = v86.n128_u64[1];
                    }

                    if (!v61)
                    {
                      if (!v58)
                      {
                        v85 = v82;
                        v58 = sub_2964AA998(a3, &v85, v10);
                      }

                      (v58)(&v85, a3, v59);
                      if (SHIBYTE(v87) < 0)
                      {
                        operator delete(v86.n128_u64[0]);
                      }

                      v86 = *&v85.__r_.__value_.__l.__data_;
                      v87 = v85.__r_.__value_.__r.__words[2];
                    }

                    sub_2964BBD20(a3, v57, &v86);
                    if (SHIBYTE(v87) < 0)
                    {
                      operator delete(v86.n128_u64[0]);
                    }

                    v41 = (v41 + 4);
                  }

                  while (v41 != v56);
                  break;
                case 0x11:
                  goto LABEL_196;
                default:
                  goto LABEL_250;
              }

              v41 = v83.__r_.__value_.__r.__words[0];
              goto LABEL_191;
            }

            if (v14 != 18)
            {
              if (v14 == 19)
              {
                sub_2964ABC28(&__p, &v86);
                v85 = *a2->n128_u8;
                sub_2964AB924(a3, &v86, &v85, v10, UnpackedType);
              }

              else
              {
                sub_2964AB62C(&__p, &v86);
                v85 = *a2->n128_u8;
                sub_2964ABD64(a3, &v86, &v85, v10, UnpackedType);
              }

              goto LABEL_197;
            }
          }

          sub_2964AB2A4(&__p, &v86);
          v85 = *a2->n128_u8;
          sub_2964AB0D8(a3, &v86, &v85, v10, UnpackedType);
          goto LABEL_197;
        }

        v86.n128_u64[0] = 0;
        sub_2964A9798(&__p, &v86);
        if (WireTypeForType > 1)
        {
          break;
        }

        if (WireTypeForType)
        {
          if (WireTypeForType == 1)
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76 - 1);
LABEL_31:
            if ((LittleEndian64Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v21 = v76 - 1;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
            goto LABEL_31;
          }

          *v21 = v23;
          *(this + 1) = v22 + 1;
        }
      }

      if (WireTypeForType != 5)
      {
        break;
      }

      v86.n128_u32[0] = 0;
      LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v86);
      *(v76 - 1) = v86.n128_u32[0];
      if ((LittleEndian32Fallback & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  while (WireTypeForType != 2);
LABEL_48:
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
LABEL_51:
  if (v10 || (*(this + 36) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

uint64_t sub_2964A9708(uint64_t a1)
{
  sub_2964AC558(a1 + 56);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  return a1;
}

uint64_t sub_2964A9740(wireless_diagnostics::google::protobuf::io::CodedInputStream *a1, unint64_t *a2)
{
  v2 = *(a1 + 1);
  if (v2 >= *(a1 + 2))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a1, a2);
  }

  v3 = *v2;
  if ((v3 & 0x8000000000000000) != 0)
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a1, a2);
  }

  *a2 = v3;
  *(a1 + 1) = v2 + 1;
  return 1;
}

uint64_t sub_2964A976C(wireless_diagnostics::google::protobuf::io::CodedInputStream *a1, unsigned int *a2)
{
  v2 = *(a1 + 1);
  if (v2 >= *(a1 + 2))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a1, a2);
  }

  v3 = *v2;
  if ((v3 & 0x80000000) != 0)
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a1, a2);
  }

  *a2 = v3;
  *(a1 + 1) = v2 + 1;
  return 1;
}

void sub_2964A9798(const void **a1, void *a2)
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
      sub_2964A3CDC();
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
      sub_2964AB090(a1, v12);
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

void sub_2964A9878(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  v7 = *a3;
  v6 = sub_2964AA2E8(a1, &v7, a4);
  sub_2964BBE1C(a2, &v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  sub_2964BBD20(a1, v6, a2);
}

void sub_2964A990C(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  v6 = sub_2964AA2E8(a1, &__p, a4);
  sub_2964BC084(*(a2 + 8) - *a2, *a2, &__p);
  sub_2964BBD20(a1, v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2964A9994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2964A99B0(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, __int128 *a3, unsigned int a4, __int128 *a5)
{
  v10 = *a3;
  v11 = *(a3 + 2);
  v8 = sub_2964AA2E8(a1, &v10, a4);
  sub_2964BBD0C(a1);
  std::string::append(*a1, v8);
  std::string::append(*a1, " {\n");
  ++*(a1 + 8);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
  {
    do
    {
      v10 = *a5;
      v11 = *(a5 + 2);
      sub_2964A8278(a2);
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) > 0);
  }

  --*(a1 + 8);
  sub_2964BBD0C(a1);
  return std::string::append(*a1, "}\n");
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2964A9A9C(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2964A9AD8(uint64_t a1, unint64_t a2, unsigned int __val)
{
  sub_2964BBDEC(__val, &v7);
  sub_2964BBDDC(a2, &__p);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  sub_2964BBD20(a1, v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_2964A9B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2964A9B9C(uint64_t a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  sub_2964BBDEC(__val, &v9);
  sub_2964BC084(a3, a2, &__p);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  sub_2964BBD20(a1, v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2964A9C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2964A9C68(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2964AA2E8(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AA36C(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2964BBDB8(a1, *a2 != 0);
    MEMORY[0x29C25ABC0](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2964AA45C(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2964BBD20(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964A9DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964A9E08(uint64_t a1, _DWORD *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2964AA2E8(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AA36C(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2964BBDB8(a1, *a2 != 0);
    MEMORY[0x29C25ABC0](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2964AA7DC(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2964BBD20(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964A9F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964A9FA8(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2964AA2E8(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AA36C(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2964BBDB8(a1, *a2 != 0);
    MEMORY[0x29C25ABC0](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2964AAD18(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2964BBD20(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964AA120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AA148(uint64_t a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2964AA2E8(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AA36C(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2964BBDB8(a1, *a2 != 0);
    MEMORY[0x29C25ABC0](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2964AAED4(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2964BBD20(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964AA2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2964AA2E8(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v6, a3, &v8);
  *a2 = v8;
  *(a2 + 2) = v9;
  Field = MetadataHandle::getField(a2);
  if (!Field)
  {
    return &unk_2964E00BE;
  }

  result = *(Field + 8);
  if (!result)
  {
    return &unk_2964E00BE;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

_BYTE *sub_2964AA36C@<X0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v15, a3, &v17);
  *a2 = v17;
  *(a2 + 2) = v18;
  result = MetadataHandle::getEnum(a2);
  if (!result)
  {
    return sub_2964A6FA0(a5, &unk_2964E00BE);
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (v9 == v10)
  {
    return sub_2964A6FA0(a5, &unk_2964E00BE);
  }

  while (1)
  {
    v11 = *v9;
    v12 = (*(*v9 + 32) & 2) != 0 ? 24 : 16;
    if (*(v11 + v12) == a4)
    {
      break;
    }

    if (++v9 == v10)
    {
      return sub_2964A6FA0(a5, &unk_2964E00BE);
    }
  }

  v13 = *(v11 + 8);
  if (*(v13 + 23) < 0)
  {
    return sub_2964A3B5C(a5, *v13, *(v13 + 1));
  }

  v14 = *v13;
  *(a5 + 16) = *(v13 + 2);
  *a5 = v14;
  return result;
}

uint64_t (*sub_2964AA45C(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964AA528;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964AA528;
    if (Field)
    {
      v5 = sub_2964AA528;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964AA528;
        if (v8 <= 0x1F)
        {
          return off_2A1D53660[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964AA544(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964AA5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964AA618(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = j_std::to_string;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = j_std::to_string;
    if (Field)
    {
      v5 = j_std::to_string;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = j_std::to_string;
        if (v8 <= 0x1F)
        {
          return off_2A1D53760[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964AA708(std::string *a1@<X8>, double a2@<D0>)
{
  sub_2964CCE80(a2, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964AA778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964AA7DC(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964AA8A8;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964AA8A8;
    if (Field)
    {
      v5 = sub_2964AA8A8;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964AA8A8;
        if (v8 <= 0x1F)
        {
          return off_2A1D53860[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964AA8C4(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964AA934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964AA998(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = j_std::to_string;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = j_std::to_string;
    if (Field)
    {
      v5 = j_std::to_string;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = j_std::to_string;
        if (v8 <= 0x1F)
        {
          return off_2A1D53960[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964AAA88(std::string *a1@<X8>, float a2@<S0>)
{
  sub_2964CCE80(a2, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964AAAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964AAB5C(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964AAC28;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964AAC28;
    if (Field)
    {
      v5 = sub_2964AAC28;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964AAC28;
        if (v8 <= 0x1F)
        {
          return off_2A1D53A60[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964AAC44(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964AACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964AAD18(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964AADE4;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964AADE4;
    if (Field)
    {
      v5 = sub_2964AADE4;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964AADE4;
        if (v8 <= 0x1F)
        {
          return off_2A1D53B60[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964AAE00(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964AAE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964AAED4(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964AAFA0;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964AAFA0;
    if (Field)
    {
      v5 = sub_2964AAFA0;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964AAFA0;
        if (v8 <= 0x1F)
        {
          return off_2A1D53C60[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964AAFBC(int a1@<W1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964AB02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AB090(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2964A3CA8();
}

void sub_2964AB0D8(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2964AA2E8(a1, __p, a4);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v10;
    v14 = 0;
    do
    {
      v15 = *v11;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      if (a5 == 11)
      {
        v18 = *a3;
        v19 = *(a3 + 2);
        sub_2964AA36C(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2964BBDB8(a1, v15 != 0);
        MEMORY[0x29C25ABC0](__p, v16);
      }

      v17 = HIBYTE(v23);
      if (v23 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
        if (!v14)
        {
          v20 = *a3;
          v21 = *(a3 + 2);
          v14 = sub_2964AA45C(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2964BBD20(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2964AB280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AB2A4(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      sub_2964A9798(a2, &v5);
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2964AB308(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AB324(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = awd::protobuf::NumberConverter<(awd::reflect::Type)1>::decode(*v2);
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          sub_2964A3CDC();
        }

        v13 = v6 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2964AB090(a2, v14);
        }

        *(8 * v11) = v5;
        v8 = 8 * v11 + 8;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      a2[1] = v8;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2964AB440(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AB460(uint64_t a1, unsigned int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2964AA2E8(a1, __p, a4);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v10;
    v14 = 0;
    do
    {
      v15 = *v11;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      if (a5 == 11)
      {
        v18 = *a3;
        v19 = *(a3 + 2);
        sub_2964AA36C(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2964BBDB8(a1, v15 != 0);
        MEMORY[0x29C25ABC0](__p, v16);
      }

      v17 = HIBYTE(v23);
      if (v23 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
        if (!v14)
        {
          v20 = *a3;
          v21 = *(a3 + 2);
          v14 = sub_2964AA7DC(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2964BBD20(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2964AB608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AB62C(int **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          sub_2964A3CDC();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_2964AC06C(a2, v13);
        }

        *(4 * v10) = v6;
        v5 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 4;
      }

      a2[1] = v5;
      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_2964AB744(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AB764(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v5 = awd::protobuf::NumberConverter<(awd::reflect::Type)2>::decode(*v2);
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          sub_2964A3CDC();
        }

        v13 = v6 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2964AC06C(a2, v14);
        }

        *(4 * v11) = v5;
        v8 = 4 * v11 + 4;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      a2[1] = v8;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2964AB880(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964AB8A0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      v5 = *v2 != 0;
      result = sub_2964AC0B4(a2, &v5);
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_2964AB90C(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AB924(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2964AA2E8(a1, __p, a4);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v10;
    v14 = 0;
    do
    {
      v15 = *v11;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      if (a5 == 11)
      {
        v18 = *a3;
        v19 = *(a3 + 2);
        sub_2964AA36C(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2964BBDB8(a1, v15 != 0);
        MEMORY[0x29C25ABC0](__p, v16);
      }

      v17 = HIBYTE(v23);
      if (v23 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
        if (!v14)
        {
          v20 = *a3;
          v21 = *(a3 + 2);
          v14 = sub_2964AAD18(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2964BBD20(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2964ABACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964ABAF0(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          sub_2964A3CDC();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_2964AB090(a2, v13);
        }

        *(8 * v10) = v6;
        v5 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a2[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2964ABC08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964ABC28(unint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = awd::protobuf::NumberConverter<(awd::reflect::Type)5>::decode(*v2);
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          sub_2964A3CDC();
        }

        v13 = v6 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2964AB090(a2, v14);
        }

        *(8 * v11) = v5;
        v8 = 8 * v11 + 8;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      a2[1] = v8;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2964ABD44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964ABD64(uint64_t a1, int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2964AA2E8(a1, __p, a4);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v10;
    v14 = 0;
    do
    {
      v15 = *v11;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      if (a5 == 11)
      {
        v18 = *a3;
        v19 = *(a3 + 2);
        sub_2964AA36C(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2964BBDB8(a1, v15 != 0);
        MEMORY[0x29C25ABC0](__p, v16);
      }

      v17 = HIBYTE(v23);
      if (v23 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
        if (!v14)
        {
          v20 = *a3;
          v21 = *(a3 + 2);
          v14 = sub_2964AAED4(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2964BBD20(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2964ABF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964ABF30(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v5 = awd::protobuf::NumberConverter<(awd::reflect::Type)8>::decode(*v2);
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          sub_2964A3CDC();
        }

        v13 = v6 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2964AC06C(a2, v14);
        }

        *(4 * v11) = v5;
        v8 = 4 * v11 + 4;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 4);
      }

      a2[1] = v8;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2964AC04C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AC06C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2964A3CA8();
}

uint64_t sub_2964AC0B4(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_2964A3CDC();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_2964AC15C(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_2964AC15C(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_2964AC218(&v2, a2);
    }

    sub_2964A3CDC();
  }

  return result;
}

void sub_2964AC200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AC218(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_2964AB090(a1, v2);
  }

  sub_2964A3CDC();
}

void sub_2964AC25C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_2964AC300(&v18, &v16, &v14, &v13);
}

void sub_2964AC300(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_2964AC390(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_2964AC390(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t sub_2964AC460(uint64_t a1)
{
  v2 = *(a1 + 8);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(*a1);
  return a1;
}

void *sub_2964AC494(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2964AC508(result, a2);
  }

  return result;
}

void sub_2964AC4EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AC508(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2964A3CDC();
}

uint64_t sub_2964AC558(uint64_t a1)
{
  sub_2964AC594(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2964AC594(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_2964A5FB4(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2964AC5DC(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t *a3)
{
  v6 = *(this + 1);
  if (v6 < *(this + 2))
  {
    TagFallback = *v6;
    if ((TagFallback & 0x80000000) == 0)
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback)
      {
        goto LABEL_4;
      }

LABEL_14:
      if ((*(this + 36) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
        goto LABEL_54;
      }

      return;
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
  *(this + 8) = TagFallback;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = awd::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v58 = *a2;
  v59 = a2[1].n128_i64[0];
  MetricFileMetadataHelper::getSubfieldType((a3 + 1), &v58, HIDWORD(v8), &v51);
  v58 = *&v51.__r_.__value_.__l.__data_;
  v59 = v51.__r_.__value_.__r.__words[2];
  BuiltinType = MetadataHelper::getBuiltinType((a3 + 1), &v58);
  v12 = BuiltinType;
  DecodingType = awd::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType > 13)
  {
    if ((DecodingType - 15) >= 0xC)
    {
      if (DecodingType != 14)
      {
        if (DecodingType == 27)
        {
          LODWORD(__p) = 0;
          v25 = *(this + 1);
          if (v25 >= *(this + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__p))
            {
              goto LABEL_51;
            }
          }

          else
          {
            LODWORD(__p) = *v25;
            *(this + 1) = v25 + 1;
          }

          v54.__r_.__value_.__r.__words[0] = this;
          LODWORD(v54.__r_.__value_.__r.__words[1]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          ++*(this + 14);
          v52.n128_u64[0] = this;
          v58 = *a2;
          v59 = a2[1].n128_i64[0];
          v55 = v51;
          sub_2964AEF60(a3, this, &v58, v10);
        }

LABEL_51:
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }

      LODWORD(v54.__r_.__value_.__l.__data_) = 0;
      v27 = *(this + 1);
      if (v27 >= *(this + 2) || (data = *v27, (data & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
        {
          goto LABEL_51;
        }

        data = v54.__r_.__value_.__l.__data_;
      }

      else
      {
        LODWORD(v54.__r_.__value_.__l.__data_) = *v27;
        *(this + 1) = v27 + 1;
      }

      sub_2964AC494(&v58, data);
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v58.n128_u64[0]);
      if (Raw)
      {
        v55 = *a2->n128_u8;
        sub_2964AEE28(a3, &v58, &v55, v10);
      }

      goto LABEL_137;
    }

    v50 = 0;
    v16 = *(this + 1);
    if (v16 >= *(this + 2) || *v16 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v50 = *v16;
      *(this + 1) = v16 + 1;
    }

    UnpackedType = awd::reflect::getUnpackedType(v14);
    WireTypeForType = awd::reflect::getWireTypeForType(UnpackedType);
    v48 = this;
    v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    __p = 0;
    v46 = 0;
    v47 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            if (v14 > 20)
            {
              if (v14 <= 23)
              {
                if (v14 != 21)
                {
                  if (v14 != 22)
                  {
                    sub_2964AB62C(&__p, &v58);
                    v55 = *a2->n128_u8;
                    sub_2964AFE08(a3, &v58, &v55, v10);
                  }

                  sub_2964ABF30(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964B01A0(a3, &v58, &v55, v10);
                }

                sub_2964AB62C(&__p, &v58);
                v55 = *a2->n128_u8;
                sub_2964AFE08(a3, &v58, &v55, v10);
              }

              switch(v14)
              {
                case 0x1A:
                  sub_2964AB8A0(&__p, &v54);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2964AFA4C(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x19:
                  sub_2964ABAF0(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964AFFD4(a3, &v58, &v55, v10);
                case 0x18:
                  sub_2964AB2A4(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964AFC3C(a3, &v58, &v55, v10);
              }
            }

            else
            {
              if (v14 > 17)
              {
                if (v14 != 18)
                {
                  if (v14 != 19)
                  {
                    sub_2964AB62C(&__p, &v58);
                    v55 = *a2->n128_u8;
                    sub_2964B01A0(a3, &v58, &v55, v10);
                  }

                  sub_2964ABC28(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964AFFD4(a3, &v58, &v55, v10);
                }

                sub_2964AB2A4(&__p, &v58);
                v55 = *a2->n128_u8;
                sub_2964AFC3C(a3, &v58, &v55, v10);
              }

              switch(v14)
              {
                case 0xF:
                  sub_2964AB324(&__p, &v54.__r_.__value_.__l.__data_);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2964AFA4C(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x10:
                  sub_2964AB764(&__p, &v54.__r_.__value_.__l.__data_);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2964AFA4C(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x11:
                  sub_2964ABAF0(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964AFFD4(a3, &v58, &v55, v10);
              }
            }

            v44 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25AAF0](v44, "This should never happen, no matter what the input!");
            __cxa_throw(v44, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          v58.n128_u64[0] = 0;
          sub_2964A9798(&__p, &v58);
          if (WireTypeForType <= 1)
          {
            break;
          }

          if (WireTypeForType == 5)
          {
            v58.n128_u32[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58);
            *(v46 - 1) = v58.n128_u32[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else if (WireTypeForType == 2)
          {
LABEL_48:
            if (__p)
            {
              v46 = __p;
              operator delete(__p);
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            goto LABEL_51;
          }
        }

        if (!WireTypeForType)
        {
          break;
        }

        if (WireTypeForType == 1)
        {
          LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v46 - 1);
LABEL_31:
          if ((LittleEndian64Fallback & 1) == 0)
          {
            goto LABEL_48;
          }
        }
      }

      v21 = v46 - 1;
      v22 = *(this + 1);
      if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
      {
        LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
        goto LABEL_31;
      }

      *v21 = v23;
      *(this + 1) = v22 + 1;
    }
  }

  if ((DecodingType - 1) >= 0xC)
  {
    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      LODWORD(v54.__r_.__value_.__l.__data_) = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v54.__r_.__value_.__l.__data_) = *v24;
        *(this + 1) = v24 + 1;
      }

      v58 = 0uLL;
      v59 = 0;
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (Raw)
      {
        v55 = *a2->n128_u8;
        sub_2964AED2C(a3, &v58, &v55, v10);
      }

      if ((SHIBYTE(v59) & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v40 = v58.n128_u64[0];
      goto LABEL_139;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        v58.n128_u64[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58.n128_u64))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v58.n128_u64[0] = 0;
        if (!sub_2964A9740(this, v58.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v38 = v58.n128_u64[0];
LABEL_144:
      sub_2964AF0CC(a3, v38, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      v58.n128_u32[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58))
      {
        goto LABEL_51;
      }

      v38 = v58.n128_u32[0];
      goto LABEL_144;
    }

    LODWORD(v55.__r_.__value_.__l.__data_) = 0;
    if (!sub_2964A976C(this, &v55))
    {
      goto LABEL_51;
    }

    sub_2964AC494(&v58, LODWORD(v55.__r_.__value_.__l.__data_));
    Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v58.n128_u64[0]);
    if (Raw)
    {
      sub_2964AF184(a3, v58.n128_u64[0], v58.n128_u64[1] - v58.n128_u64[0], v10);
    }

LABEL_137:
    v40 = v58.n128_u64[0];
    if (!v58.n128_u64[0])
    {
      goto LABEL_140;
    }

    v58.n128_u64[1] = v58.n128_u64[0];
LABEL_139:
    operator delete(v40);
LABEL_140:
    if ((Raw & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  __p = 0;
  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    else
    {
      if (v9 != 5)
      {
        goto LABEL_94;
      }

      v58.n128_u32[0] = 0;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58))
      {
        __p = v58.n128_u32[0];
        goto LABEL_94;
      }

      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
LABEL_54:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (!v9)
  {
    v26 = *(this + 1);
    if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &__p) & 1) == 0)
      {
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }
    }

    else
    {
      __p = *v26;
      *(this + 1) = v26 + 1;
    }

LABEL_94:
    v29 = __p;
    switch(v12)
    {
      case 1:
      case 15:
        v32 = awd::protobuf::NumberConverter<(awd::reflect::Type)1>::decode(__p);
        v54 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v31 = sub_2964AFA4C(a3, &v58, v10);
        v52.n128_u8[0] = 7;
        v52.n128_f64[1] = v32;
        if (v12 == 11)
        {
          v55 = v54;
          sub_2964AFAD0(a3, &v55, v10, v32, &v58);
          v42 = HIBYTE(v59);
          if (v59 < 0)
          {
            v42 = v58.n128_u64[1];
          }

          if (v42)
          {
            v55.__r_.__value_.__l.__size_ = 0;
            v55.__r_.__value_.__s.__data_[0] = 3;
            operator new();
          }

          if (v59 < 0)
          {
            operator delete(v58.n128_u64[0]);
          }
        }

        else if (v12 == 12)
        {
          v52.n128_u8[0] = 4;
          v55.__r_.__value_.__s.__data_[0] = 7;
          v52.n128_u64[1] = v32 != 0.0;
          *&v55.__r_.__value_.__l.__size_ = v32;
          sub_2964A793C(&v55.__r_.__value_.__l.__size_, 7);
        }

        goto LABEL_161;
      case 2:
      case 16:
        v30 = awd::protobuf::NumberConverter<(awd::reflect::Type)2>::decode(__p);
        v54 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v31 = sub_2964AFA4C(a3, &v58, v10);
        v52.n128_u8[0] = 7;
        v52.n128_f64[1] = v30;
        if (v12 == 11)
        {
          v55 = v54;
          sub_2964AFAD0(a3, &v55, v10, v30, &v58);
          v41 = HIBYTE(v59);
          if (v59 < 0)
          {
            v41 = v58.n128_u64[1];
          }

          if (v41)
          {
            v55.__r_.__value_.__l.__size_ = 0;
            v55.__r_.__value_.__s.__data_[0] = 3;
            operator new();
          }

          if (v59 < 0)
          {
            operator delete(v58.n128_u64[0]);
          }
        }

        else if (v12 == 12)
        {
          v52.n128_u8[0] = 4;
          v55.__r_.__value_.__s.__data_[0] = 7;
          v52.n128_u64[1] = v30 != 0.0;
          *&v55.__r_.__value_.__l.__size_ = v30;
          sub_2964A793C(&v55.__r_.__value_.__l.__size_, 7);
        }

LABEL_161:
        v58 = *&v54.__r_.__value_.__l.__data_;
        v59 = v54.__r_.__value_.__r.__words[2];
        v43 = sub_2964AFBC0(a3, &v58, v10);
        sub_2964C5080(a3, v31, &v52, v43);
        v36 = v52.n128_u8[0];
        p_size = &v52.n128_i64[1];
        goto LABEL_162;
      case 3:
      case 11:
      case 17:
      case 25:
        goto LABEL_105;
      case 4:
      case 10:
      case 18:
      case 24:
        v55.__r_.__value_.__r.__words[0] = __p;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2964AF2BC(a3, &v55, &v58, v10, v12);
        return;
      case 5:
      case 19:
        v29 = awd::protobuf::NumberConverter<(awd::reflect::Type)5>::decode(__p);
LABEL_105:
        v55.__r_.__value_.__r.__words[0] = v29;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2964AF684(a3, &v55, &v58, v10, v12);
        return;
      case 6:
      case 20:
        LODWORD(v55.__r_.__value_.__l.__data_) = __p;
        goto LABEL_107;
      case 7:
      case 9:
      case 21:
      case 23:
        LODWORD(v55.__r_.__value_.__l.__data_) = __p;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2964AF4A0(a3, &v55, &v58, v10, v12);
        return;
      case 8:
      case 22:
        LODWORD(v55.__r_.__value_.__l.__data_) = awd::protobuf::NumberConverter<(awd::reflect::Type)8>::decode(__p);
LABEL_107:
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2964AF868(a3, &v55, &v58, v10, v12);
        return;
      case 12:
      case 26:
        v33 = __p != 0;
        v55 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v34 = sub_2964AFA4C(a3, &v58, v10);
        v54.__r_.__value_.__s.__data_[0] = 4;
        v54.__r_.__value_.__l.__size_ = v33;
        if (v12 == 12)
        {
          v54.__r_.__value_.__s.__data_[0] = 4;
          v52.n128_u8[0] = 4;
          v52.n128_u64[1] = v33;
          sub_2964A793C(&v52.n128_i64[1], 4);
        }

        v58 = *&v55.__r_.__value_.__l.__data_;
        v59 = v55.__r_.__value_.__r.__words[2];
        v35 = sub_2964AFBC0(a3, &v58, v10);
        sub_2964C5080(a3, v34, &v54, v35);
        v36 = v54.__r_.__value_.__s.__data_[0];
        p_size = &v54.__r_.__value_.__l.__size_;
LABEL_162:
        sub_2964A793C(p_size, v36);
        return;
      default:
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25AAF0](exception, "This should never happen, no matter what the input!");
        goto LABEL_54;
    }
  }

  if (v9 != 1 || (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__p) & 1) != 0)
  {
    goto LABEL_94;
  }

  if (v10 || (*(this + 36) & 1) == 0)
  {
LABEL_53:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void sub_2964AD8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  sub_2964A793C((v26 + 8), a21);
  _Unwind_Resume(a1);
}

uint64_t sub_2964ADAB8(uint64_t a1)
{
  sub_2964AC558(a1 + 48);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  return a1;
}

void sub_2964ADAF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v9 = 32 * a3;
    v10 = (a2 + 16);
    while (1)
    {
      v11 = *v10;
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *sub_2964ADDBC(v11, 0) != 3)
      {
        break;
      }

      v10 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (a5 != 1)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_2964A6FA0(&v15, "cannot create object from initializer list");
        sub_2964A6C84(301, &v15, exception);
        __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15 = a2;
        sub_2964ADD40();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

uint64_t sub_2964ADDBC(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v8, v5);
    v6 = std::string::insert(&v8, 0, "cannot use operator[] with a numeric argument with ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(305, &v9, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_2964ADE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

const char *sub_2964ADEEC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_29EE31DE8[v1];
  }
}

uint64_t sub_2964ADF14(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  if (v3 <= 4)
  {
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v7 = *(a2 + 1);
        sub_2964ADFE0();
      }

      if (v3 == 2)
      {
        v4 = *(a2 + 1);
        sub_2964AE7AC();
      }

      return a1;
    }

    if (v3 == 3)
    {
      v8 = *(a2 + 1);
      sub_2964AE968();
    }

    v6 = a2[8];
LABEL_14:
    *(a1 + 8) = v6;
    return a1;
  }

  if (v3 < 8)
  {
    v6 = *(a2 + 1);
    goto LABEL_14;
  }

  if (v3 == 8)
  {
    v5 = *(a2 + 1);
    sub_2964AE9E4();
  }

  return a1;
}

void *sub_2964AE03C(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_2964AE094(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_2964AE094(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_2964AE11C(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_2964AE11C(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_2964AE1A0(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_2964AE344();
  }

  return result;
}

uint64_t sub_2964AE1A0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_2964AE430(a1, a5, (a2 + 32)))
  {
    if (!sub_2964AE430(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_2964AE430(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_2964AE430(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_2964AE49C(a1, a3, a5);
}

void sub_2964AE3BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2964AE74C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_2964AE3D8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_2964AE5B0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL sub_2964AE430(uint64_t a1, const void **a2, const void **a3)
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

uint64_t sub_2964AE49C(uint64_t a1, uint64_t *a2, const void **a3)
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
        if (!sub_2964AE430(a1, a3, (v4 + 32)))
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

      if (!sub_2964AE430(a1, (v8 + 32), a3))
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

char *sub_2964AE538(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_2964A3B5C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_2964ADF14(__dst + 24, a2 + 24);
  return __dst;
}

void sub_2964AE594(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2964AE5B0(uint64_t *result, uint64_t *a2)
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

void sub_2964AE74C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_2964A8188(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_2964AE818(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2964AE8A0(result, a4);
  }

  return result;
}

void sub_2964AE880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2964A81DC(&a9);
  _Unwind_Resume(a1);
}

void sub_2964AE8A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2964A7E84(a1, a2);
  }

  sub_2964A3CDC();
}

uint64_t sub_2964AE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_2964ADF14(a4, v5);
      v5 += 16;
      a4 = v7 + 16;
      v7 += 16;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t sub_2964AEA54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2964AC508(result, a4);
  }

  return result;
}

void sub_2964AEAB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964AEAD0(uint64_t a1, const void **a2)
{
  v2 = *sub_2964AE49C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2964AEB98(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2964AE8A0(result, a4);
  }

  return result;
}

void sub_2964AEC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2964A81DC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2964AEC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_2964AECAC(a4, v5);
      v5 += 32;
      a4 = v7 + 16;
      v7 += 16;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t sub_2964AECAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  if (v3 == 1)
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    sub_2964ADF14(v8, v4);
    v5 = v8[0];
    v6 = v9;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  v8[0] = 0;
  v9 = 0;
  sub_2964A793C(&v9, 0);
  return a1;
}

void sub_2964AED2C(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_2964AFA4C(a1, &v5, a4);
  v4 = 3;
  operator new();
}

void sub_2964AEE28(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  sub_2964AFA4C(a1, &__p, a4);
  sub_2964BC084(*(a2 + 8) - *a2, *a2, &__p);
  v6 = 0;
  v5 = 3;
  operator new();
}

void sub_2964AEF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964AEF60(uint64_t *a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v7 = *a3;
  v8 = *(a3 + 2);
  sub_2964AFA4C(a1, &v7, a4);
  v5 = *a1;
  sub_2964ADAF0(v6, 0, 0, 0, 1);
}

void sub_2964AF070(_Unwind_Exception *a1, unsigned __int8 a2, ...)
{
  va_start(va, a2);
  sub_2964A793C(va, a2);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2964AF090(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2964AF0CC(uint64_t *a1, uint64_t a2, unsigned int __val)
{
  std::to_string(&v8, __val);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  v6[0] = 6;
  v7 = a2;
  sub_2964C5080(a1, v5, v6, 1);
  sub_2964A793C(&v7, v6[0]);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2964AF15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_2964A793C((v17 + 8), a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2964AF184(int a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  std::to_string(&v9, __val);
  sub_2964BC084(a3, a2, &__p);
  v8 = 0;
  v7 = 3;
  operator new();
}

void sub_2964AF274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2964A793C((v22 + 8), a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_2964AF2BC(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AFAD0(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 6;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964AF46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964AF4A0(uint64_t *a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AFAD0(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 6;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964AF650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964AF684(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AFAD0(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 5;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964AF834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964AF868(uint64_t *a1, int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AFAD0(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 5;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964AFA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

char *sub_2964AFA4C(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 8), &v6, a3, &v8);
  *a2 = v8;
  *(a2 + 2) = v9;
  Field = MetadataHandle::getField(a2);
  if (!Field)
  {
    return &unk_2964E00BE;
  }

  result = *(Field + 8);
  if (!result)
  {
    return &unk_2964E00BE;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

_BYTE *sub_2964AFAD0@<X0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 8), &v15, a3, &v17);
  *a2 = v17;
  *(a2 + 2) = v18;
  result = MetadataHandle::getEnum(a2);
  if (!result)
  {
    return sub_2964A6FA0(a5, &unk_2964E00BE);
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (v9 == v10)
  {
    return sub_2964A6FA0(a5, &unk_2964E00BE);
  }

  while (1)
  {
    v11 = *v9;
    v12 = (*(*v9 + 32) & 2) != 0 ? 24 : 16;
    if (*(v11 + v12) == a4)
    {
      break;
    }

    if (++v9 == v10)
    {
      return sub_2964A6FA0(a5, &unk_2964E00BE);
    }
  }

  v13 = *(v11 + 8);
  if (*(v13 + 23) < 0)
  {
    return sub_2964A3B5C(a5, *v13, *(v13 + 1));
  }

  v14 = *v13;
  *(a5 + 16) = *(v13 + 2);
  *a5 = v14;
  return result;
}

uint64_t sub_2964AFBC0(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a1 + 8), &v7, a3, &v9);
  *a2 = v9;
  *(a2 + 2) = v10;
  Field = MetadataHandle::getField(a2);
  if (Field && (*(Field + 52) & 0x400) != 0)
  {
    v5 = *(Field + 50);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_2964AFC3C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964AFA4C(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964AFE08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964AFA4C(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964AFFD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964AFA4C(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964B01A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964AFA4C(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

uint64_t sub_2964B036C(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2964B0854(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 4;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964B04B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_2964B0514(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    if (v2[1] < v2[2])
    {
      sub_2964B0968(v2);
    }

    sub_2964B09E8(v2);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = sub_2964ADEEC(a1);
  sub_2964A6FA0(&v7, v4);
  v5 = std::string::insert(&v7, 0, "cannot use emplace_back() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v9 = v5->__r_.__value_.__r.__words[2];
  v8 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_2964A6C84(311, &v8, exception);
  __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
}

void sub_2964B064C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964B06AC(uint64_t a1, uint64_t *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2964B0B28(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 6;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964B07F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964B0854(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2964A7ECC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2964A7FAC(&v16);
  return v15;
}

void sub_2964B0954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

void sub_2964B0968(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 8) = 0;
  *v1 = 3;
  operator new();
}

void sub_2964B09E8(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v8 = a1;
    if (v4)
    {
      sub_2964A7E84(a1, v4);
    }

    v5 = 16 * v1;
    v6 = v5;
    v7 = v5;
    *(v5 + 8) = 0;
    *v5 = 3;
    operator new();
  }

  sub_2964A3CDC();
}

void sub_2964B0B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B0B28(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2964A7ECC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2964A7FAC(&v16);
  return v15;
}

void sub_2964B0C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B0C3C(uint64_t a1, uint64_t *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2964B0DE4(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 7;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964B0D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964B0DE4(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2964A7ECC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2964A7FAC(&v16);
  return v15;
}

void sub_2964B0EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B0EF8(uint64_t a1, unsigned int *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2964B10A0(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 6;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964B1040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964B10A0(uint64_t a1, unsigned int *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2964A7ECC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2964A7FAC(&v16);
  return v15;
}

void sub_2964B11A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B11B4(uint64_t a1, float *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2964B1360(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 7;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964B1300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964B1360(uint64_t a1, float *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2964A7ECC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2964A7FAC(&v16);
  return v15;
}

void sub_2964B1464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B1478(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2964B1620(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 4;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964B15C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964B1620(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2964A7ECC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2964A7FAC(&v16);
  return v15;
}

void sub_2964B1720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B1734(uint64_t a1, uint64_t *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2964B18DC(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 5;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964B187C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964B18DC(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2964A7ECC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2964A7FAC(&v16);
  return v15;
}

void sub_2964B19DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B19F0(uint64_t a1, int *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2964B1B98(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 5;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964B1B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964B1B98(uint64_t a1, int *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2964A3CDC();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2964A7E84(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2964A7ECC(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2964A7FAC(&v16);
  return v15;
}

void sub_2964B1C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964A7FAC(va);
  _Unwind_Resume(a1);
}

void sub_2964B1CAC(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if ((*(this + 36) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
      goto LABEL_54;
    }

    return;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = awd::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v87 = *a2;
  v88 = a2[1].n128_i64[0];
  DeviceConfigMetadataHelper::getSubfieldType(a3 + 16, &v87, HIDWORD(v8), &v81);
  v87 = v81;
  v88 = v82;
  BuiltinType = MetadataHelper::getBuiltinType(a3 + 16, &v87);
  v12 = BuiltinType;
  DecodingType = awd::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      v83.__r_.__value_.__r.__words[0] = 0;
      if (v9 > 1u)
      {
        if (v9 == 2)
        {
          if (!v10 && (*(this + 36) & 1) != 0)
          {
            return;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_93;
          }

          v87.n128_u32[0] = 0;
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87))
          {
            v83.__r_.__value_.__r.__words[0] = v87.n128_u32[0];
            goto LABEL_93;
          }

          if (!v10 && (*(this + 36) & 1) != 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v83) & 1) == 0)
          {
            if (!v10 && (*(this + 36) & 1) != 0)
            {
              return;
            }

            goto LABEL_122;
          }

LABEL_93:
          v29 = v83.__r_.__value_.__r.__words[0];
          switch(v12)
          {
            case 1:
            case 15:
              v33 = awd::protobuf::NumberConverter<(awd::reflect::Type)1>::decode(v83.__r_.__value_.__l.__data_);
              v84 = *a2->n128_u8;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              v31 = sub_2964B3C38(a3, &v87, v10);
              v87 = 0uLL;
              v88 = 0;
              if (v12 == 11)
              {
                v85 = v84;
                sub_2964B3CBC(a3, &v85, v10, v33, &v86);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

              else if (v12 == 12)
              {
                v34 = sub_2964BBDB8(a3, v33 != 0.0);
                MEMORY[0x29C25ABC0](&v87, v34);
              }

              v70 = HIBYTE(v88);
              if (v88 < 0)
              {
                v70 = v87.n128_u64[1];
              }

              if (!v70)
              {
                v86 = v84;
                v71 = sub_2964B3F68(a3, &v86, v10);
                (v71)(&v86, a3, v33);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

              goto LABEL_247;
            case 2:
            case 16:
              v30 = awd::protobuf::NumberConverter<(awd::reflect::Type)2>::decode(v83.__r_.__value_.__l.__data_);
              v84 = *a2->n128_u8;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              v31 = sub_2964B3C38(a3, &v87, v10);
              v87 = 0uLL;
              v88 = 0;
              if (v12 == 11)
              {
                v85 = v84;
                sub_2964B3CBC(a3, &v85, v10, v30, &v86);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

              else if (v12 == 12)
              {
                v32 = sub_2964BBDB8(a3, v30 != 0.0);
                MEMORY[0x29C25ABC0](&v87, v32);
              }

              v68 = HIBYTE(v88);
              if (v88 < 0)
              {
                v68 = v87.n128_u64[1];
              }

              if (!v68)
              {
                v86 = v84;
                v69 = sub_2964B42E8(a3, &v86, v10);
                (v69)(&v86, a3, v30);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

LABEL_247:
              sub_2964BBD20(a3, v31, &v87);
              goto LABEL_248;
            case 3:
            case 11:
            case 17:
            case 25:
              v86.__r_.__value_.__r.__words[0] = v83.__r_.__value_.__r.__words[0];
              goto LABEL_105;
            case 4:
            case 10:
            case 18:
            case 24:
              v86.__r_.__value_.__r.__words[0] = v83.__r_.__value_.__r.__words[0];
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              sub_2964B35B8(a3, &v86, &v87, v10, v12);
              return;
            case 5:
            case 19:
              v86.__r_.__value_.__r.__words[0] = awd::protobuf::NumberConverter<(awd::reflect::Type)5>::decode(v83.__r_.__value_.__r.__words[0]);
LABEL_105:
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              sub_2964B38F8(a3, &v86, &v87, v10, v12);
              return;
            case 6:
            case 20:
              LODWORD(v86.__r_.__value_.__l.__data_) = v83.__r_.__value_.__l.__data_;
              goto LABEL_107;
            case 7:
            case 9:
            case 21:
            case 23:
              LODWORD(v86.__r_.__value_.__l.__data_) = v83.__r_.__value_.__l.__data_;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              sub_2964B3758(a3, &v86, &v87, v10, v12);
              return;
            case 8:
            case 22:
              LODWORD(v86.__r_.__value_.__l.__data_) = awd::protobuf::NumberConverter<(awd::reflect::Type)8>::decode(v83.__r_.__value_.__l.__data_);
LABEL_107:
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              sub_2964B3A98(a3, &v86, &v87, v10, v12);
              return;
            case 12:
            case 26:
              v85 = *a2->n128_u8;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              v35 = sub_2964B3C38(a3, &v87, v10);
              v87 = 0uLL;
              v88 = 0;
              if (v12 != 12)
              {
                goto LABEL_112;
              }

              v36 = sub_2964BBDB8(a3, v29 != 0);
              MEMORY[0x29C25ABC0](&v87, v36);
              v37 = HIBYTE(v88);
              if (v88 < 0)
              {
                v37 = v87.n128_u64[1];
              }

              if (!v37)
              {
LABEL_112:
                v86 = v85;
                v38 = sub_2964B44AC(a3, &v86, v10);
                (v38)(&v86, a3, v29 != 0);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

              sub_2964BBD20(a3, v35, &v87);
LABEL_248:
              if (SHIBYTE(v88) < 0)
              {
                operator delete(v87.n128_u64[0]);
              }

              return;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25AAF0](exception, "This should never happen, no matter what the input!");
              goto LABEL_54;
          }
        }

        v26 = *(this + 1);
        if (v26 < *(this + 2) && (*v26 & 0x8000000000000000) == 0)
        {
          v83.__r_.__value_.__r.__words[0] = *v26;
          *(this + 1) = v26 + 1;
          goto LABEL_93;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v83))
        {
          goto LABEL_93;
        }

        if (!v10 && (*(this + 36) & 1) != 0)
        {
          return;
        }
      }

LABEL_122:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
LABEL_54:
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      LODWORD(v85.__r_.__value_.__l.__data_) = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v85))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v85.__r_.__value_.__l.__data_) = *v24;
        *(this + 1) = v24 + 1;
      }

      v87 = 0uLL;
      v88 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        v86 = *a2->n128_u8;
        sub_2964B31C8(a3, &v87, &v86, v10);
      }

      if ((SHIBYTE(v88) & 0x80000000) == 0)
      {
        goto LABEL_220;
      }

      v64 = v87.n128_u64[0];
      goto LABEL_219;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        v87.n128_u64[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v87.n128_u64))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v87.n128_u64[0] = 0;
        if (!sub_2964A9740(this, v87.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v39 = v87.n128_u64[0];
LABEL_224:
      sub_2964B3428(a3, v39, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      v87.n128_u32[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87))
      {
        goto LABEL_51;
      }

      v39 = v87.n128_u32[0];
      goto LABEL_224;
    }

    LODWORD(v86.__r_.__value_.__l.__data_) = 0;
    if (!sub_2964A976C(this, &v86))
    {
      goto LABEL_51;
    }

    sub_2964AC494(&v87, LODWORD(v86.__r_.__value_.__l.__data_));
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v87.n128_u64[0]);
    if (String)
    {
      sub_2964B34EC(a3, v87.n128_u64[0], v87.n128_u64[1] - v87.n128_u64[0], v10);
    }

LABEL_217:
    v64 = v87.n128_u64[0];
    if (!v87.n128_u64[0])
    {
      goto LABEL_220;
    }

    v87.n128_u64[1] = v87.n128_u64[0];
LABEL_219:
    operator delete(v64);
LABEL_220:
    if ((String & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_51;
      }

      LODWORD(v83.__r_.__value_.__l.__data_) = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v83.__r_.__value_.__l.__data_) = *v25;
        *(this + 1) = v25 + 1;
      }

      v85.__r_.__value_.__r.__words[0] = this;
      LODWORD(v85.__r_.__value_.__r.__words[1]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      ++*(this + 14);
      v84.__r_.__value_.__r.__words[0] = this;
      v87 = *a2;
      v88 = a2[1].n128_i64[0];
      *&v86.__r_.__value_.__l.__data_ = v81;
      v86.__r_.__value_.__r.__words[2] = v82;
      sub_2964B3300(a3, this, &v87, v10, &v86);
      sub_2964B33EC(&v84);
      v65 = *(this + 14);
      v66 = __OFSUB__(v65, 1);
      v67 = v65 - 1;
      if (v67 < 0 == v66)
      {
        *(this + 14) = v67;
      }

      sub_2964AC460(&v85);
      return;
    }

    LODWORD(v85.__r_.__value_.__l.__data_) = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || (data = *v27, (data & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v85))
      {
        goto LABEL_51;
      }

      data = v85.__r_.__value_.__l.__data_;
    }

    else
    {
      LODWORD(v85.__r_.__value_.__l.__data_) = *v27;
      *(this + 1) = v27 + 1;
    }

    sub_2964AC494(&v87, data);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v87.n128_u64[0]);
    if (String)
    {
      v86 = *a2->n128_u8;
      sub_2964B325C(a3, &v87, &v86, v10);
    }

    goto LABEL_217;
  }

  v80 = 0;
  v16 = *(this + 1);
  if (v16 >= *(this + 2) || *v16 < 0)
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
    {
      goto LABEL_51;
    }
  }

  else
  {
    v80 = *v16;
    *(this + 1) = v16 + 1;
  }

  UnpackedType = awd::reflect::getUnpackedType(v14);
  WireTypeForType = awd::reflect::getWireTypeForType(UnpackedType);
  v78 = this;
  v79 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  __p = 0;
  v76 = 0;
  v77 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
        {
          if (v14 > 20)
          {
            if (v14 <= 23)
            {
              if (v14 == 22)
              {
                sub_2964ABF30(&__p, &v87);
                v86 = *a2->n128_u8;
                sub_2964B4F44(a3, &v87, &v86, v10, UnpackedType);
              }

              else
              {
                sub_2964AB62C(&__p, &v87);
                v86 = *a2->n128_u8;
                sub_2964B4BAC(a3, &v87, &v86, v10, UnpackedType);
              }

LABEL_197:
              v62 = v87.n128_u64[0];
              if (v87.n128_u64[0])
              {
                v87.n128_u64[1] = v87.n128_u64[0];
                goto LABEL_199;
              }

LABEL_200:
              if (__p)
              {
                v76 = __p;
                operator delete(__p);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              return;
            }

            if (v14 == 26)
            {
              sub_2964AB8A0(&__p, &v84);
              v83 = *a2->n128_u8;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              v74 = sub_2964B3C38(a3, &v87, v10);
              v41 = v84.__r_.__value_.__r.__words[0];
              if (v84.__r_.__value_.__l.__size_ > 0x3F || (v84.__r_.__value_.__s.__data_[8] & 0x3F) != 0)
              {
                v73 = v84.__r_.__value_.__s.__data_[8] & 0x3F;
                v48 = 0;
                v49 = 0;
                v50 = v84.__r_.__value_.__r.__words[0] + 8 * (v84.__r_.__value_.__l.__size_ >> 6);
                do
                {
                  v51 = 1 << v49;
                  v87 = 0uLL;
                  v88 = 0;
                  v52 = v49;
                  if (UnpackedType == 11)
                  {
                    v85 = v83;
                    sub_2964B3CBC(a3, &v85, v10, (*v41 >> v49) & 1, &v86);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(v87.n128_u64[0]);
                    }

                    v87 = *&v86.__r_.__value_.__l.__data_;
                    v88 = v86.__r_.__value_.__r.__words[2];
                  }

                  else if (UnpackedType == 12)
                  {
                    v53 = sub_2964BBDB8(a3, (*v41 & v51) != 0);
                    MEMORY[0x29C25ABC0](&v87, v53);
                  }

                  v54 = HIBYTE(v88);
                  if (v88 < 0)
                  {
                    v54 = v87.n128_u64[1];
                  }

                  if (!v54)
                  {
                    if (!v48)
                    {
                      v86 = v83;
                      v48 = sub_2964B44AC(a3, &v86, v10);
                    }

                    (v48)(&v86, a3, (*v41 & v51) != 0);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(v87.n128_u64[0]);
                    }

                    v87 = *&v86.__r_.__value_.__l.__data_;
                    v88 = v86.__r_.__value_.__r.__words[2];
                  }

                  sub_2964BBD20(a3, v74, &v87);
                  if (SHIBYTE(v88) < 0)
                  {
                    operator delete(v87.n128_u64[0]);
                  }

                  v41 += v52 == 63;
                  if (v52 == 63)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 = v52 + 1;
                  }
                }

                while (v41 != v50 || v49 != v73);
                v41 = v84.__r_.__value_.__r.__words[0];
              }

              if (!v41)
              {
                goto LABEL_200;
              }

              goto LABEL_193;
            }

            if (v14 == 25)
            {
LABEL_196:
              sub_2964ABAF0(&__p, &v87);
              v86 = *a2->n128_u8;
              sub_2964B4D78(a3, &v87, &v86, v10, UnpackedType);
              goto LABEL_197;
            }

            if (v14 != 24)
            {
LABEL_250:
              v72 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25AAF0](v72, "This should never happen, no matter what the input!");
              __cxa_throw(v72, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }
          }

          else
          {
            if (v14 <= 17)
            {
              switch(v14)
              {
                case 0xF:
                  sub_2964AB324(&__p, &v84.__r_.__value_.__l.__data_);
                  v83 = *a2->n128_u8;
                  v87 = *a2;
                  v88 = a2[1].n128_i64[0];
                  v40 = sub_2964B3C38(a3, &v87, v10);
                  size = v84.__r_.__value_.__l.__size_;
                  v41 = v84.__r_.__value_.__r.__words[0];
                  if (v84.__r_.__value_.__r.__words[0] == v84.__r_.__value_.__l.__size_)
                  {
LABEL_191:
                    if (!v41)
                    {
                      goto LABEL_200;
                    }

                    v84.__r_.__value_.__l.__size_ = v41;
LABEL_193:
                    v62 = v41;
LABEL_199:
                    operator delete(v62);
                    goto LABEL_200;
                  }

                  v43 = v40;
                  v44 = 0;
                  do
                  {
                    v45 = *v41;
                    v87 = 0uLL;
                    v88 = 0;
                    if (UnpackedType == 11)
                    {
                      v85 = v83;
                      sub_2964B3CBC(a3, &v85, v10, v45, &v86);
                      if (SHIBYTE(v88) < 0)
                      {
                        operator delete(v87.n128_u64[0]);
                      }

                      v87 = *&v86.__r_.__value_.__l.__data_;
                      v88 = v86.__r_.__value_.__r.__words[2];
                    }

                    else if (UnpackedType == 12)
                    {
                      v46 = sub_2964BBDB8(a3, v45 != 0.0);
                      MEMORY[0x29C25ABC0](&v87, v46);
                    }

                    v47 = HIBYTE(v88);
                    if (v88 < 0)
                    {
                      v47 = v87.n128_u64[1];
                    }

                    if (!v47)
                    {
                      if (!v44)
                      {
                        v86 = v83;
                        v44 = sub_2964B3F68(a3, &v86, v10);
                      }

                      (v44)(&v86, a3, v45);
                      if (SHIBYTE(v88) < 0)
                      {
                        operator delete(v87.n128_u64[0]);
                      }

                      v87 = *&v86.__r_.__value_.__l.__data_;
                      v88 = v86.__r_.__value_.__r.__words[2];
                    }

                    sub_2964BBD20(a3, v43, &v87);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(v87.n128_u64[0]);
                    }

                    ++v41;
                  }

                  while (v41 != size);
                  break;
                case 0x10:
                  sub_2964AB764(&__p, &v84.__r_.__value_.__l.__data_);
                  v83 = *a2->n128_u8;
                  v87 = *a2;
                  v88 = a2[1].n128_i64[0];
                  v55 = sub_2964B3C38(a3, &v87, v10);
                  v56 = v84.__r_.__value_.__l.__size_;
                  v41 = v84.__r_.__value_.__r.__words[0];
                  if (v84.__r_.__value_.__r.__words[0] == v84.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_191;
                  }

                  v57 = v55;
                  v58 = 0;
                  do
                  {
                    v59 = *v41;
                    v87 = 0uLL;
                    v88 = 0;
                    if (UnpackedType == 11)
                    {
                      v85 = v83;
                      sub_2964B3CBC(a3, &v85, v10, v59, &v86);
                      if (SHIBYTE(v88) < 0)
                      {
                        operator delete(v87.n128_u64[0]);
                      }

                      v87 = *&v86.__r_.__value_.__l.__data_;
                      v88 = v86.__r_.__value_.__r.__words[2];
                    }

                    else if (UnpackedType == 12)
                    {
                      v60 = sub_2964BBDB8(a3, v59 != 0.0);
                      MEMORY[0x29C25ABC0](&v87, v60);
                    }

                    v61 = HIBYTE(v88);
                    if (v88 < 0)
                    {
                      v61 = v87.n128_u64[1];
                    }

                    if (!v61)
                    {
                      if (!v58)
                      {
                        v86 = v83;
                        v58 = sub_2964B42E8(a3, &v86, v10);
                      }

                      (v58)(&v86, a3, v59);
                      if (SHIBYTE(v88) < 0)
                      {
                        operator delete(v87.n128_u64[0]);
                      }

                      v87 = *&v86.__r_.__value_.__l.__data_;
                      v88 = v86.__r_.__value_.__r.__words[2];
                    }

                    sub_2964BBD20(a3, v57, &v87);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(v87.n128_u64[0]);
                    }

                    v41 = (v41 + 4);
                  }

                  while (v41 != v56);
                  break;
                case 0x11:
                  goto LABEL_196;
                default:
                  goto LABEL_250;
              }

              v41 = v84.__r_.__value_.__r.__words[0];
              goto LABEL_191;
            }

            if (v14 != 18)
            {
              if (v14 == 19)
              {
                sub_2964ABC28(&__p, &v87);
                v86 = *a2->n128_u8;
                sub_2964B4D78(a3, &v87, &v86, v10, UnpackedType);
              }

              else
              {
                sub_2964AB62C(&__p, &v87);
                v86 = *a2->n128_u8;
                sub_2964B4F44(a3, &v87, &v86, v10, UnpackedType);
              }

              goto LABEL_197;
            }
          }

          sub_2964AB2A4(&__p, &v87);
          v86 = *a2->n128_u8;
          sub_2964B49E0(a3, &v87, &v86, v10, UnpackedType);
          goto LABEL_197;
        }

        v87.n128_u64[0] = 0;
        sub_2964A9798(&__p, &v87);
        if (WireTypeForType > 1)
        {
          break;
        }

        if (WireTypeForType)
        {
          if (WireTypeForType == 1)
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76 - 1);
LABEL_31:
            if ((LittleEndian64Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v21 = v76 - 1;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
            goto LABEL_31;
          }

          *v21 = v23;
          *(this + 1) = v22 + 1;
        }
      }

      if (WireTypeForType != 5)
      {
        break;
      }

      v87.n128_u32[0] = 0;
      LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87);
      *(v76 - 1) = v87.n128_u32[0];
      if ((LittleEndian32Fallback & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  while (WireTypeForType != 2);
LABEL_48:
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
LABEL_51:
  if (v10 || (*(this + 36) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}