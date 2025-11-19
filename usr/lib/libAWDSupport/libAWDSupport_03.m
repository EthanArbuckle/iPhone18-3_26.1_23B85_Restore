void sub_2964CD958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CD9D0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (a1 < 1000)
  {
    sub_2964CD0C8("%lldus", a2, a1);
  }

  else
  {
    sub_2964CD644(((a1 / 0xF4240) - 60 * (a1 / 0x3938700)) | (0x3E800000000 * (a1 % 0xF4240)), (((a1 / 0x3938700) - 60 * (a1 / 0xD693A400)) << 32) | (a1 / 0xD693A400), &__p);
    sub_2964CD0C8("%lldus (%s)", a2, v2);
    if (v5 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2964CDADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CDAF8(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (a1 < 1000)
  {
    sub_2964CD0C8("%lldms", a2, a1);
  }

  else
  {
    sub_2964CD644(((a1 / 0x3E8) - 60 * (a1 / 0xEA60)) | (0xF424000000000 * (a1 % 0x3E8)), (a1 / 0x36EE80) | (((a1 / 0xEA60) - 60 * (a1 / 0x36EE80)) << 32), &__p);
    sub_2964CD0C8("%lldms (%s)", a2, v2);
    if (v5 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2964CDC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CDC20(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (a1 < 60)
  {
    sub_2964CD0C8("%llds", a2, a1);
  }

  else
  {
    sub_2964CD644(a1 % 0x3C, (a1 / 0xE10) | (((a1 / 0x3C) - 60 * (a1 / 0xE10)) << 32), &__p);
    sub_2964CD0C8("%llds (%s)", a2, v2);
    if (v5 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2964CDCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CDD0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (a1 < 60)
  {
    sub_2964CD0C8("%ldm", a2, a1);
  }

  else
  {
    sub_2964CD644(0, (a1 / 0x3CuLL) | ((a1 % 0x3CuLL) << 32), &__p);
    sub_2964CD0C8("%ldm (%s)", a2, v2);
    if (v5 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2964CDDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964CDE08(uint64_t result)
{
  *result = &unk_2A1D54A78;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_2964CDE30(PB::Base *this)
{
  *this = &unk_2A1D54A78;
  v4 = *(this + 3);
  v2 = (this + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2964A3B00(v2, v3);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    sub_2964A3B00(this + 16, v5);
  }

  PB::Base::~Base(this);
}

void sub_2964CDEA8(PB::Base *a1)
{
  sub_2964CDE30(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964CDEE0(uint64_t result, uint64_t a2)
{
  *(result + 16) = 0;
  *result = &unk_2A1D54A78;
  *(result + 24) = 0;
  *(result + 32) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    v2 = *(a2 + 8);
    *(result + 32) |= 1u;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_2964CE034(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964CDEE0(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sub_2964CDE30(v7);
  }

  return a1;
}

uint64_t sub_2964CE0A8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v2;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v5 = *(result + 8);
  v4 = *(result + 16);
  v6 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_2964CE0DC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1D54A78;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  v5 = (a1 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  v7 = *v5;
  *v5 = v6;
  if (v7)
  {
    sub_2964A3B00(v5, v7);
  }

  v8 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = *v4;
  *v4 = v8;
  if (v9)
  {
    sub_2964A3B00(v4, v9);
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_2964CE180(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964CE0DC(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    sub_2964CDE30(v7);
  }

  return a1;
}

uint64_t sub_2964CE1F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 32))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "build_time");
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2964CE284(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_52;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              v28 = 0;
              *(this + 24) = 1;
              goto LABEL_47;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_43:
              v28 = 0;
              goto LABEL_47;
            }
          }

          if (*(this + 24))
          {
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_43;
            }
          }
        }

LABEL_47:
        *(a1 + 8) = v28;
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_52:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_2964CE5A4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 24))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 32))
  {
    v4 = *(v3 + 8);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

BOOL sub_2964CE620(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

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

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? *(a1 + 24) : *v4;
    v11 = v9 >= 0 ? *(a2 + 24) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = *(v13 + 23);
  if (v15 >= 0)
  {
    v16 = *(v13 + 23);
  }

  else
  {
    v16 = *(v13 + 8);
  }

  v17 = *(v14 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v14 + 8);
  }

  if (v16 != v17)
  {
    return 0;
  }

  v19 = v15 >= 0 ? *(a1 + 16) : *v13;
  v20 = v18 >= 0 ? *(a2 + 16) : *v14;
  if (memcmp(v19, v20, v16))
  {
    return 0;
  }

LABEL_37:
  result = (*(a2 + 32) & 1) == 0;
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

unint64_t sub_2964CE748(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = sub_2964A3DE8(&v8, v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_2964A3DE8(&v9, v4);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 32))
  {
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = 0;
  }

  return v5 ^ v3 ^ v6;
}

void sGetMetricName(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  MetricFileMetadataHelper::MetricFileMetadataHelper(v11, a1);
  v8 = 0uLL;
  v9 = 0xFFFFFFFFLL;
  MetricFileMetadataHelper::getSubfieldType(v11, &v8, a2, v10);
  Field = MetadataHandle::getField(v10);
  if (Field && (v6 = *(Field + 8)) != 0)
  {
    if (*(v6 + 23) < 0)
    {
      sub_2964A3B5C(a3, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      *(a3 + 16) = *(v6 + 2);
      *a3 = v7;
    }
  }

  else
  {
    *(a3 + 23) = 7;
    strcpy(a3, "unknown");
  }

  sub_2964AC558(&v13);
  if (v12)
  {
    sub_2964A5FB4(v12);
  }
}

void sub_2964CE894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2964C4550(va);
  _Unwind_Resume(a1);
}

void sResolveMetricNames(AwdMetadataLoader **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 24))
  {
    AwdMetadataLoader::getMetricIndex(&v36, *a1);
    if (v36)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = *(v36 + 8);
        v6 = *(v36 + 16);
        v33 = v6 - v5;
        do
        {
          if (v6 != v5)
          {
            v7 = *(v4 + 39);
            if (v7 >= 0)
            {
              v8 = *(v4 + 39);
            }

            else
            {
              v8 = v4[3];
            }

            __str = (v4 + 2);
            if (v7 >= 0)
            {
              v9 = v4 + 2;
            }

            else
            {
              v9 = v4[2];
            }

            v10 = v5;
            v11 = v5;
            v12 = v33;
            do
            {
              v13 = v12 >> 1;
              v14 = &v11[v12 >> 1];
              v15 = *(*v14 + 8);
              if (v15)
              {
                v16 = *(v15 + 23);
                if (v16 >= 0)
                {
                  v17 = *(v15 + 23);
                }

                else
                {
                  v17 = *(v15 + 8);
                }

                if (v16 >= 0)
                {
                  v18 = *(*v14 + 8);
                }

                else
                {
                  v18 = *v15;
                }

                if (v8 >= v17)
                {
                  v19 = v17;
                }

                else
                {
                  v19 = v8;
                }

                v20 = memcmp(v18, v9, v19);
                v21 = v17 < v8;
                if (v20)
                {
                  v21 = v20 < 0;
                }

                if (v21)
                {
                  v11 = v14 + 1;
                  v13 = v12 + ~v13;
                }
              }

              v12 = v13;
            }

            while (v13);
            v5 = v10;
            if (v11 != v6)
            {
              v22 = *v11;
              v23 = *(*v11 + 8);
              v24 = *(v23 + 23);
              if (v24 >= 0)
              {
                v25 = *(v23 + 23);
              }

              else
              {
                v25 = *(v23 + 8);
              }

              v26 = *(v4 + 39);
              v27 = v26;
              if ((v26 & 0x80u) != 0)
              {
                v26 = v4[3];
              }

              if (v25 == v26)
              {
                if (v24 >= 0)
                {
                  v28 = *(*v11 + 8);
                }

                else
                {
                  v28 = *v23;
                }

                v29 = __str->__r_.__value_.__r.__words[0];
                if (v27 >= 0)
                {
                  v30 = v4 + 2;
                }

                else
                {
                  v30 = __str->__r_.__value_.__r.__words[0];
                }

                if (!memcmp(v28, v30, v25))
                {
                  v35 = *(v22 + 16);
                  v38 = &v35;
                  v31 = sub_2964CEB40(a3, &v35);
                  std::string::operator=(v31 + 1, __str);
                }
              }
            }
          }

          v4 = *v4;
        }

        while (v4);
      }
    }

    if (v37)
    {
      sub_2964A5FB4(v37);
    }
  }
}

uint64_t sub_2964CEAB8(uint64_t a1)
{
  sub_2964CEAF4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2964CEAF4(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_2964CEB40(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2964CED98(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_2964CEEDC(a1, a3, a2);
  *v4 = &unk_2A1D54AC8;
  v4[5] = 0;
  v5 = v4 + 5;
  v6 = operator new(0x50uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = v6;
  atomic_fetch_add(v6, 1u);
  v8 = *v5;
  *v5 = v6;
  sub_2964D07BC(&v8);
  return a1;
}

void sub_2964CEEA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_2964D07BC(&a10);
  __cxa_end_catch();
  JUMPOUT(0x2964CEE88);
}

void sub_2964CEEC0(_Unwind_Exception *a1)
{
  sub_2964D07BC(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2964CEEDC(uint64_t a1, uint64_t a2, const char *a3)
{
  sub_2964CFD7C(a3, a2, &v7);
  std::runtime_error::runtime_error(a1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2A1D54B20;
  v5 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v5;
  return a1;
}

void sub_2964CEF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2964CF060(a1, a3, a2);
  *v4 = &unk_2A1D54AC8;
  v4[5] = 0;
  v5 = v4 + 5;
  v6 = operator new(0x50uLL);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = v6;
  atomic_fetch_add(v6, 1u);
  v8 = *v5;
  *v5 = v6;
  sub_2964D07BC(&v8);
  return a1;
}

void sub_2964CF024(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_2964D07BC(&a10);
  __cxa_end_catch();
  JUMPOUT(0x2964CF00CLL);
}

void sub_2964CF044(_Unwind_Exception *a1)
{
  sub_2964D07BC(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2964CF060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  sub_2964CFD7C(v5, a2, &v8);
  std::runtime_error::runtime_error(a1, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2A1D54B20;
  v6 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v6;
  return a1;
}

void sub_2964CF0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2964CEEDC(a1, a4, a2);
  *v6 = &unk_2A1D54AC8;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = v8 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_2964A3B5C(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  sub_2964D07BC(&v11);
  return a1;
}

void sub_2964CF1DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_2964D07BC(&a10);
  __cxa_end_catch();
  JUMPOUT(0x2964CF1C4);
}

void sub_2964CF214(_Unwind_Exception *a1)
{
  sub_2964D07BC(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2964CF060(a1, a4, a2);
  *v6 = &unk_2A1D54AC8;
  v6[5] = 0;
  v7 = v6 + 5;
  v8 = operator new(0x50uLL);
  *v8 = 0;
  v9 = v8 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_2964A3B5C(v9, *a3, *(a3 + 8));
  }

  else
  {
    *v9 = *a3;
    *(v8 + 3) = *(a3 + 16);
  }

  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 2) = 0u;
  v11 = v8;
  atomic_fetch_add(v8, 1u);
  v11 = *v7;
  *v7 = v8;
  sub_2964D07BC(&v11);
  return a1;
}

void sub_2964CF300(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_2964D07BC(&a10);
  __cxa_end_catch();
  JUMPOUT(0x2964CF2E8);
}

void sub_2964CF338(_Unwind_Exception *a1)
{
  sub_2964D07BC(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, const char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v8 = sub_2964CEEDC(a1, a5, a2);
  *v8 = &unk_2A1D54AC8;
  v8[5] = 0;
  v9 = v8 + 5;
  v10 = operator new(0x50uLL);
  sub_2964D053C(v10, a3, a4);
  v12 = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *v9;
  *v9 = v10;
  sub_2964D07BC(&v12);
  return a1;
}

void sub_2964CF408(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_2964D07BC(&a10);
  __cxa_end_catch();
  JUMPOUT(0x2964CF3ECLL);
}

void sub_2964CF440(_Unwind_Exception *a1)
{
  sub_2964D07BC(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::filesystem::filesystem_error::filesystem_error(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v8 = sub_2964CF060(a1, a5, a2);
  *v8 = &unk_2A1D54AC8;
  v8[5] = 0;
  v9 = v8 + 5;
  v10 = operator new(0x50uLL);
  sub_2964D053C(v10, a3, a4);
  v12 = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *v9;
  *v9 = v10;
  sub_2964D07BC(&v12);
  return a1;
}

void sub_2964CF510(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  __cxa_begin_catch(a1);
  a10 = *v10;
  *v10 = 0;
  sub_2964D07BC(&a10);
  __cxa_end_catch();
  JUMPOUT(0x2964CF4F4);
}

void sub_2964CF548(_Unwind_Exception *a1)
{
  sub_2964D07BC(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

std::runtime_error *boost::filesystem::filesystem_error::filesystem_error(std::runtime_error *a1, uint64_t a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1D54B20;
  v4 = *(a2 + 16);
  result[2].__vftable = *(a2 + 32);
  result[1] = v4;
  result->__vftable = &unk_2A1D54AC8;
  v5 = *(a2 + 40);
  result[2].__imp_.__imp_ = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  return result;
}

uint64_t boost::filesystem::filesystem_error::operator=(uint64_t a1, uint64_t a2)
{
  std::runtime_error::operator=(a1, a2);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 40);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
    v5 = v7;
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = v5;
  sub_2964D07BC(&v7);
  return a1;
}

void boost::filesystem::filesystem_error::~filesystem_error(boost::filesystem::filesystem_error *this)
{
  *this = &unk_2A1D54AC8;
  sub_2964D07BC(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = &unk_2A1D54AC8;
  sub_2964D07BC(this + 5);

  std::runtime_error::~runtime_error(this);
}

{
  *this = &unk_2A1D54AC8;
  sub_2964D07BC(this + 5);
  std::runtime_error::~runtime_error(this);

  operator delete(v2);
}

const char *boost::filesystem::filesystem_error::what(std::runtime_error *this)
{
  imp = this[2].__imp_.__imp_;
  if (imp)
  {
    if ((imp[79] & 0x8000000000000000) != 0)
    {
      if (*(imp + 8))
      {
        goto LABEL_28;
      }
    }

    else if (imp[79])
    {
      goto LABEL_28;
    }

    v3 = std::runtime_error::what(this);
    sub_2964D06A8((this[2].__imp_.__imp_ + 56), v3);
    imp = this[2].__imp_.__imp_;
    if ((imp[31] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 2))
      {
        goto LABEL_17;
      }
    }

    else if (!imp[31])
    {
      goto LABEL_17;
    }

    std::string::append((imp + 56), ": ", 3uLL);
    v4 = this[2].__imp_.__imp_;
    v7 = *(v4 + 1);
    v5 = v4 + 8;
    v6 = v7;
    v8 = v5[23];
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 1);
    }

    std::string::append(v5 + 2, v9, v10);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
LABEL_17:
    if ((imp[55] & 0x8000000000000000) != 0)
    {
      if (!*(imp + 5))
      {
        goto LABEL_28;
      }
    }

    else if (!imp[55])
    {
LABEL_28:
      result = imp + 56;
      if (imp[79] < 0)
      {
        return *result;
      }

      return result;
    }

    std::string::append((imp + 56), ", ", 3uLL);
    v11 = this[2].__imp_.__imp_;
    v14 = *(v11 + 4);
    v12 = v11 + 32;
    v13 = v14;
    v15 = v12[23];
    if (v15 >= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 1);
    }

    std::string::append(v12 + 1, v16, v17);
    std::string::append((this[2].__imp_.__imp_ + 56), "", 1uLL);
    imp = this[2].__imp_.__imp_;
    goto LABEL_28;
  }

  return std::runtime_error::what(this);
}

uint64_t *boost::filesystem::filesystem_error::get_empty_path(boost::filesystem::filesystem_error *this)
{
  if ((atomic_load_explicit(&qword_2A1390EA0, memory_order_acquire) & 1) == 0)
  {
    sub_2964DA784();
  }

  return &qword_2A1390EA8;
}

uint64_t sub_2964CF930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v11[0] = 0;
    if ((qword_2A1A8F430 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v8 = a1 != 0;
    }

    else
    {
      v8 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v9 = 2;
    LODWORD(v11[0]) = a1;
    if (v8)
    {
      v9 = 3;
    }

    v11[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v11[2] = v9;
    boost::filesystem::filesystem_error::filesystem_error(exception, a3, v11);
    __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
  }

  if ((qword_2A1A8F430 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v6 = 2;
  if (result)
  {
    v6 = 3;
  }

  *a2 = a1;
  *(a2 + 4) = 0;
  *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_2964CFA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v13[0] = 0;
    if ((qword_2A1A8F430 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v9 = a1 != 0;
    }

    else
    {
      v9 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v10 = 2;
    LODWORD(v13[0]) = a1;
    if (v9)
    {
      v10 = 3;
    }

    v13[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v13[2] = v10;
    boost::filesystem::filesystem_error::filesystem_error(exception, a4, a2, v13);
    __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
  }

  if ((qword_2A1A8F430 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_2964CFC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v15[0] = 0;
    if ((qword_2A1A8F430 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
    {
      v10 = a1 != 0;
    }

    else
    {
      v10 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
    }

    v11 = 2;
    LODWORD(v15[0]) = a1;
    if (v10)
    {
      v11 = 3;
    }

    v15[1] = &boost::system::detail::system_cat_holder<void>::instance;
    v15[2] = v11;
    boost::filesystem::filesystem_error::filesystem_error(exception, a5, a2, a3, v15);
    __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
  }

  if ((qword_2A1A8F430 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
  {
    result = a1 != 0;
  }

  else
  {
    result = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, a1);
  }

  v8 = 2;
  if (result)
  {
    v8 = 3;
  }

  *a4 = a1;
  *(a4 + 4) = 0;
  *(a4 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
  *(a4 + 16) = v8;
  return result;
}

void sub_2964CFD7C(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v6 = strlen(a1);
    std::string::append(a3, a1, v6);
    std::string::append(a3, ": ", 2uLL);
  }

  sub_2964CFE8C(a2, &__p);
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

  std::string::append(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2964CFE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CFE64(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

std::string *sub_2964CFE8C@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_2964CFFE0(a1, a2);
  std::string::append(a2, " [", 2uLL);
  sub_2964D0030(a1, &__p);
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 16) >= 4uLL)
  {
    std::string::append(a2, " at ", 4uLL);
    v6 = *(a1 + 16);
    if (v6 <= 3)
    {
      v7 = off_29EE31F68;
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_2964D01FC(v7, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "]", 1uLL);
}

void sub_2964CFFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2964CFFE0@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    if (v2 == 1)
    {
      return std::error_code::message(a2, a1);
    }

    v4 = *(a1 + 1);
  }

  else
  {
    v4 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  return (*(*v4 + 4))(v4, *a1);
}

std::string *sub_2964D0030@<X0>(int *a1@<X0>, std::string *a2@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2964A2B70(a2, "std:");
      v5 = (*(**(a1 + 1) + 16))(*(a1 + 1));
      v6 = strlen(v5);
      std::string::append(a2, v5, v6);
      sub_2964D0510(__s, 0x20uLL, ":%d", v7, v8, v9, v10, v11, *a1);
      v12 = strlen(__s);
      result = std::string::append(a2, __s, v12);
      goto LABEL_9;
    }

    v14 = *(a1 + 1);
  }

  else
  {
    v14 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  v15 = (**v14)(v14);
  sub_2964A2B70(a2, v15);
  v21 = *a1;
  if (*(a1 + 2) == 1)
  {
    v21 += 1000 * (*(a1 + 1) % 0x1FFFF7uLL);
  }

  sub_2964D0510(__s, 0x20uLL, ":%d", v16, v17, v18, v19, v20, v21);
  v22 = strlen(__s);
  result = std::string::append(a2, __s, v22);
LABEL_9:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2964D01DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D01FC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 16))
  {
    sub_2964A2B70(a2, *a1);
    sprintf(__s, ":%ld", *(a1 + 16));
    v4 = strlen(__s);
    std::string::append(a2, __s, v4);
    if (*(a1 + 20))
    {
      sprintf(__s, ":%ld", *(a1 + 20));
      v5 = strlen(__s);
      std::string::append(a2, __s, v5);
    }

    std::string::append(a2, " in function '", 0xEuLL);
    v6 = *(a1 + 8);
    v7 = strlen(v6);
    std::string::append(a2, v6, v7);
    std::string::push_back(a2, 39);
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = *MEMORY[0x29EDCA608];

    sub_2964A2B70(a2, "(unknown source location)");
  }
}

void sub_2964D034C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964D0368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != (*(*a1 + 8))(a1))
  {
    return 0;
  }

  v5 = *(a3 + 8);
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    v9 = *(v5 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  if (!v5)
  {
    v9 = *(v4 + 8);
    return v9 == 0xB2AB117A257EDFD0;
  }

  v6 = *(v5 + 8);
  v7 = v5 == v4;
  if (v6)
  {
    return *(v4 + 8) == v6;
  }

  else
  {
    return v7;
  }
}

BOOL sub_2964D0440(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    if (*(a3 + 8) == 0xB2AB117A257EDFD2)
    {
      return *a1 + 1000 * (*(a1 + 8) % 0x1FFFF7uLL) == a2;
    }

    return 0;
  }

  if (!v3)
  {
    return !a2 && *(a3 + 8) == 0xB2AB117A257EDFD1;
  }

  if (*a1 != a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = v6 == a3;
  if (v7)
  {
    return *(a3 + 8) == v7;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_2964D053C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_2964A3B5C((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_2964A3B5C((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2964D05D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2964D05EC(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_2964D06A8(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_2964D05EC(a1, __s, v4);
}

void *sub_2964D0708@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_2964A2B70(a2, v4);
}

const char *sub_2964D0754(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t *sub_2964D07BC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

double sub_2964D0830@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  if (*(a1 + 24))
  {
    v5 = *(a1 + 28) == 0xFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 36);
    if ((v6 & 0xFFFFFFFB) == 0 || v7 == 0xFFFF)
    {
      sub_2964D37C8(a1, a2, &v10);
      *(a1 + 24) = v10;
      goto LABEL_14;
    }

    *(a1 + 24) = v6;
    *(a1 + 28) = v7;
  }

  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

LABEL_14:
  result = *(a1 + 24);
  *a3 = result;
  return result;
}

int *sub_2964D08B4@<X0>(int *result@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  v3 = result;
  v5 = result[8];
  v6 = result[9];
  if (v5)
  {
    v7 = v6 == 0xFFFF;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    result = sub_2964D3A88(result, a2, v8);
    v5 = v8[0];
    v6 = v8[1];
    v3[8] = v8[0];
    v3[9] = v6;
  }

  else if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = result[8];
    v6 = result[9];
  }

  *a3 = v5;
  a3[1] = v6;
  return result;
}

DIR *sub_2964D0930@<X0>(DIR **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  result = *a1;
  if (*a1 && (*a1 = 0, result = closedir(result), result))
  {
    v7 = *__error();

    return sub_2964D09C4(a3, v7, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void *sub_2964D09C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a3[1] >> 1 == 0x595588BD12BF6FE8)
  {
    v6 = a2 != 0;
  }

  else
  {
    v6 = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  *a1 = v4;
  if (v6)
  {
    v7 = 3;
  }

  a1[1] = a3;
  a1[2] = v7;
  return a1;
}

atomic_uint **sub_2964D0A64(uint64_t *a1, uint64_t a2, char a3, void *a4)
{
  v34[3] = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    if (a4)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v34[0] = 0;
      v9 = operator new(0x40uLL, MEMORY[0x29EDC9418]);
      if (v9)
      {
        *v9 = 0;
        v9[1] = 0;
        *(v9 + 8) = 0;
        *(v9 + 1) = 0u;
        *(v9 + 36) = 0xFFFFLL;
        *(v9 + 11) = 0xFFFF;
        v9[6] = 0;
        v9[7] = 0;
        v31 = v9;
        atomic_fetch_add(v9, 1u);
        v10 = v9;
        v11 = v34[0];
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v31 = v11;
      v34[0] = v10;
      sub_2964D2AB8(&v31);
      v13 = v34[0];
      if (!v34[0])
      {
        sub_2964DA7FC(a4);
        goto LABEL_40;
      }
    }

    else
    {
      v34[0] = 0;
      v12 = operator new(0x40uLL);
      *v12 = 0;
      v12[1] = 0;
      *(v12 + 8) = 0;
      *(v12 + 1) = 0u;
      *(v12 + 36) = 0xFFFFLL;
      *(v12 + 11) = 0xFFFF;
      v12[6] = 0;
      v12[7] = 0;
      v31 = v12;
      atomic_fetch_add(v12, 1u);
      v31 = v34[0];
      v34[0] = v12;
      sub_2964D2AB8(&v31);
      v13 = v34[0];
    }

    memset(&v34[1], 0, 15);
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = opendir(v14);
    *(v13 + 6) = v15;
    if (v15)
    {
      v16 = 1;
      v17 = 46;
    }

    else
    {
      v18 = *__error();
      v31 = 0;
      if (qword_2A1A8F430 >> 1 == 0x595588BD12BF6FE8)
      {
        v19 = v18 != 0;
      }

      else
      {
        v19 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v18);
      }

      v20 = 2;
      LODWORD(v31) = v18;
      if (v19)
      {
        v20 = 3;
      }

      v32 = &boost::system::detail::system_cat_holder<void>::instance;
      v33 = v20;
      if (v20)
      {
        __str.__r_.__value_.__r.__words[0] = 13;
        __str.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
        v24 = sub_2964D1E48(&v31, &__str);
        if ((a3 & 1) == 0 || (v24 & 1) == 0)
        {
          v25 = v31;
          if (v33 == 1)
          {
            v25 = v31 + 1000 * (v32 % 0x1FFFF7);
          }

          if (v25)
          {
            sub_2964CFA9C(v25, a2, a4, "boost::filesystem::directory_iterator::construct");
          }

          else if (a4)
          {
            *a4 = 0;
            a4[1] = 0;
            a4[2] = 0;
          }
        }

        goto LABEL_40;
      }

      v17 = 0;
      v16 = 0;
    }

    v21 = v34[0];
    if (*(v34[0] + 6))
    {
      v22 = *a1;
      *a1 = v34[0];
      v34[0] = v22;
      __p.__r_.__value_.__r.__words[0] = v17;
      __p.__r_.__value_.__l.__size_ = v34[1];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v34[1] + 7);
      *(&__p.__r_.__value_.__s + 23) = v16;
      if (*(a2 + 23) < 0)
      {
        sub_2964A3B5C(&__str, *a2, *(a2 + 8));
      }

      else
      {
        __str = *a2;
      }

      sub_2964D7680(&__str, &__p);
      std::string::operator=((v21 + 2), &__str);
      *&v23 = 0xFFFF00000000;
      *(&v23 + 1) = 0xFFFF00000000;
      *(v21 + 2) = v23;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v15)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_32:
        sub_2964D0F70(a1, a4);
      }
    }

LABEL_40:
    result = sub_2964D2AB8(v34);
    v27 = *MEMORY[0x29EDCA608];
    return result;
  }

  v28 = *MEMORY[0x29EDCA608];

  return sub_2964CFA9C(2, a2, a4, "boost::filesystem::directory_iterator::construct");
}

void sub_2964D0E74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, atomic_uint *a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v19)
    {
      if (qword_2A1A8F448 >> 1 == 0x595588BD12BF6FE8 || (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, 12))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *v19 = 12;
      v19[1] = &boost::system::detail::generic_cat_holder<void>::instance;
      v19[2] = v23;
      a19 = *v20;
      *v20 = 0;
      sub_2964D2AB8(&a19);
      __cxa_end_catch();
      JUMPOUT(0x2964D0D8CLL);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x2964D0E64);
}

void sub_2964D0F5C(void *a1, int a2)
{
  if (a2)
  {
    sub_2964A2F24(a1);
  }

  JUMPOUT(0x2964D0E6CLL);
}

void sub_2964D0F70(uint64_t *a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  memset(&__src, 0, sizeof(__src));
  v27 = 0;
  v28 = 0;
  v4 = *a1;
  v5 = *(*a1 + 48);
  while (1)
  {
    *v21 = 0;
    *__error() = 0;
    if (sysconf(91) < 0)
    {
      *__error() = 0;
      v8 = readdir(v5);
      *v21 = v8;
      if (v8)
      {
LABEL_14:
        sub_2964D06A8(&__src, v8->d_name);
        memset(&__p, 0, sizeof(__p));
        v27 = 0;
        v28 = 0;
        goto LABEL_15;
      }

      v7 = *__error();
      if (v7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = *(v4 + 56);
      if (!v6)
      {
        v14 = sub_2964D2834();
        v15 = malloc(v14 + 25);
        *(v4 + 56) = v15;
        if (!v15)
        {
          v7 = 12;
LABEL_31:
          *&__p.__r_.__value_.__l.__data_ = 0uLL;
          if (qword_2A1A8F430 >> 1 == 0x595588BD12BF6FE8 || (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v7))
          {
            v9 = 3;
          }

          else
          {
            v9 = 2;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = v7;
          __p.__r_.__value_.__l.__size_ = &boost::system::detail::system_cat_holder<void>::instance;
          __p.__r_.__value_.__r.__words[2] = v9;
          goto LABEL_9;
        }

        v6 = v15;
        bzero(v15, v14 + 25);
      }

      v7 = readdir_r(v5, v6, v21);
      if (v7)
      {
        goto LABEL_31;
      }
    }

    v8 = *v21;
    if (*v21)
    {
      goto LABEL_14;
    }

    sub_2964D0930((v4 + 48), (v4 + 56), &__p);
    LODWORD(v7) = __p.__r_.__value_.__l.__data_;
    v9 = __p.__r_.__value_.__r.__words[2];
LABEL_9:
    v27 = *(__p.__r_.__value_.__r.__words + 4);
    v28 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
    if ((v9 & 1) != 0 && (v9 != 1 || v7))
    {
      v24 = *a1;
      v19 = v24;
      *a1 = 0;
      sub_2964D1424((v19 + 8), &__p);
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        *v21 = v7;
        *&v21[4] = v27;
        v22 = v28;
        v23 = v9;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::directory_iterator::operator++", &__p, v21);
        __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
      }

      *a2 = v7;
      *(a2 + 4) = v27;
      *(a2 + 12) = v28;
      *(a2 + 16) = v9;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      p_p = &v24;
      goto LABEL_42;
    }

LABEL_15:
    v4 = *a1;
    v5 = *(*a1 + 48);
    if (!v5)
    {
      __p.__r_.__value_.__r.__words[0] = *a1;
      *a1 = 0;
      p_p = &__p;
LABEL_42:
      sub_2964D2AB8(p_p);
      goto LABEL_46;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_src = &__src;
    }

    else
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    if (p_src->__r_.__value_.__s.__data_[0] != 46)
    {
      break;
    }

    v11 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
    v12 = v11->__r_.__value_.__s.__data_[1];
    if (v12)
    {
      if (v12 != 46)
      {
        break;
      }

      v13 = (__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__src : __src.__r_.__value_.__r.__words[0];
      if (v13->__r_.__value_.__s.__data_[2])
      {
        break;
      }
    }
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2964A3B5C(&__p, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __src;
  }

  sub_2964D7F88((v4 + 8));
  sub_2964D7680(v4 + 8, &__p);
  *&v17 = 0xFFFF00000000;
  *(&v17 + 1) = 0xFFFF00000000;
  *(v4 + 32) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_2964D1408(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2964A2F24(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_2964D1424@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_2964D7FE0(a1);

  return sub_2964D28E8(a2, v3, v3 + v4, v4);
}

atomic_uint **sub_2964D1478(void ***a1, uint64_t a2, int a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  v16 = 0;
  sub_2964D0A64(&v16, a2, a3, a4);
  if (!a4 || (v7 = a4[2], (v7 & 1) == 0) || v7 == 1 && !*a4)
  {
    v17 = 0;
    if (v16 && *(v16 + 6))
    {
      sub_2964D2AB8(&v17);
      v15 = 0;
      if (a4)
      {
        v8 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
        if (v8)
        {
          *v8 = 0;
          v8[2] = 0;
          v8[3] = 0;
          v8[1] = 0;
          *(v8 + 8) = a3;
          v17 = v8;
          atomic_fetch_add(v8, 1u);
          v9 = v8;
          v10 = v15;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        v17 = v10;
        v15 = v9;
        sub_2964D2AFC(&v17);
        v12 = v15;
        if (!v15)
        {
          sub_2964DA7FC(a4);
          goto LABEL_18;
        }
      }

      else
      {
        v11 = operator new(0x28uLL);
        *v11 = 0;
        v11[2] = 0;
        v11[3] = 0;
        v11[1] = 0;
        *(v11 + 8) = a3;
        v17 = v11;
        atomic_fetch_add(v11, 1u);
        v17 = v15;
        v15 = v11;
        sub_2964D2AFC(&v17);
        v12 = v15;
      }

      sub_2964D167C(v12 + 1, &v16);
      v13 = *a1;
      *a1 = v15;
      v15 = v13;
LABEL_18:
      sub_2964D2AFC(&v15);
      return sub_2964D2AB8(&v16);
    }

    sub_2964D2AB8(&v17);
  }

  return sub_2964D2AB8(&v16);
}

void sub_2964D15F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  sub_2964D2AFC(va);
  sub_2964D2AB8(va1);
  _Unwind_Resume(a1);
}

void *sub_2964D167C(void *result, void *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2964A3CDC();
    }

    v8 = v4 - *result;
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

    v13[4] = result;
    if (v10)
    {
      v11 = sub_2964D2A30(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[8 * v7];
    v13[0] = v11;
    v13[1] = v12;
    *v12 = *a2;
    *a2 = 0;
    v13[2] = v12 + 8;
    v13[3] = &v11[8 * v10];
    sub_2964D2988(v3, v13);
    v6 = *(v3 + 8);
    result = sub_2964D2A68(v13);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    result[1] = v6;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_2964D175C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2964D2A68(va);
  _Unwind_Resume(a1);
}

double sub_2964D1770(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  while (1)
  {
    v7 = *(v4 + 16);
    v8 = sub_2964D2AB8((v7 - 8));
    *(v4 + 16) = v8;
    if (*(v4 + 8) == v8)
    {
      *&v13 = *a1;
      *a1 = 0;
      sub_2964D2AFC(&v13);
      return result;
    }

    v5 = (v7 - 16);
    v13 = 0uLL;
    v14 = 0;
    sub_2964D0F70(v5, &v13);
    if ((v14 & 1) != 0 && (v14 != 1 || v13 != 0))
    {
      break;
    }

    *&v11 = 0;
    if (*v5 && *(*v5 + 48))
    {
      sub_2964D2AB8(&v11);
      return result;
    }

    sub_2964D2AB8(&v11);
  }

  if ((*(v4 + 32) & 8) == 0 || (sub_2964D18E8(v4), *(v4 + 8) == *(v4 + 16)))
  {
    *&v11 = *a1;
    *a1 = 0;
    sub_2964D2AFC(&v11);
  }

  if (!a2)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v11 = v13;
    v12 = v14;
    boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::recursive_directory_iterator::pop", &v11);
    __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
  }

  result = *&v13;
  *a2 = v13;
  a2[2] = v14;
  return result;
}

atomic_uint **sub_2964D18E8(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    result = sub_2964D2AB8((i - 8));
    *(a1 + 16) = result;
    if (*(a1 + 8) == result)
    {
      break;
    }

    v4 = (i - 16);
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    sub_2964D0F70(v4, v7);
    if ((v8 & 1) != 0 && (v8 != 1 || LODWORD(v7[0]) != 0))
    {
      continue;
    }

    v6 = 0;
    if (*v4 && *(*v4 + 48))
    {
      return sub_2964D2AB8(&v6);
    }

    sub_2964D2AB8(&v6);
  }

  return result;
}

double sub_2964D1988(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v20 = 0uLL;
  v21 = 0;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) != 0)
  {
    *(v4 + 32) = v5 & 0xFFFFFFEF;
    goto LABEL_19;
  }

  if ((*(v4 + 32) & 6) == 2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  sub_2964D08B4((*(*(v4 + 16) - 8) + 8), &v20, &v18);
  v6 = v18;
  if ((v21 & 1) == 0 || (v11 = 1, v21 == 1) && !v20)
  {
    if ((*(v4 + 32) & 2) != 0 || v18 != 4)
    {
LABEL_6:
      sub_2964D0830(*(*(v4 + 16) - 8) + 8, &v20, &v23);
      if ((v21 & 1) != 0 && (v21 != 1 || v20))
      {
        *&v18 = 2;
        *(&v18 + 1) = &boost::system::detail::generic_cat_holder<void>::instance;
        if (sub_2964D1E48(&v20, &v18) && v6 == 4 && (~*(v4 + 32) & 6) == 0)
        {
          v20 = 0uLL;
          v11 = 1;
          v21 = 0;
          goto LABEL_20;
        }
      }

      else if (v23 == 3)
      {
        v7 = *(v4 + 16);
        if ((((v7 - *(v4 + 8)) >> 3) - 1) >= 0x7FFFFFFF)
        {
          sub_2964DA900(&v20, &v21);
          v11 = 0;
          goto LABEL_20;
        }

        v8 = *(v7 - 8);
        v9 = *(v4 + 32);
        *&v18 = 0;
        sub_2964D0A64(&v18, v8 + 8, v9, &v20);
        if ((v21 & 1) == 0 || v21 == 1 && !v20)
        {
          v22 = 0;
          if (v18 && *(v18 + 48))
          {
            sub_2964D2AB8(&v22);
            sub_2964D167C((v4 + 8), &v18);
LABEL_17:
            sub_2964D2AB8(&v18);
            return result;
          }

          sub_2964D2AB8(&v22);
        }

        sub_2964D2AB8(&v18);
      }
    }

LABEL_19:
    v11 = 1;
  }

LABEL_20:
  if ((v21 & 1) != 0 && (v21 != 1 || v20))
  {
LABEL_44:
    if ((*(v4 + 32) & 8) != 0)
    {
      if ((v11 & 1) == 0)
      {
        v19 = 0;
        v18 = 0uLL;
        v16 = (*(v4 + 16) - 8);
        sub_2964D0F70(v16, &v18);
        if ((v19 & 1) == 0 || v19 == 1 && !v18)
        {
          v23 = 0;
          if (*v16 && *(*v16 + 48))
          {
            sub_2964D2AB8(&v23);
LABEL_55:
            if (!a2)
            {
              exception = __cxa_allocate_exception(0x30uLL);
              v18 = v20;
              v19 = v21;
              boost::filesystem::filesystem_error::filesystem_error(exception, "filesystem::recursive_directory_iterator increment error", &v18);
              __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
            }

            result = *&v20;
            *a2 = v20;
            a2[2] = v21;
            return result;
          }

          sub_2964D2AB8(&v23);
        }
      }

      sub_2964D18E8(v4);
      if (*(v4 + 8) != *(v4 + 16))
      {
        goto LABEL_55;
      }
    }

    *&v18 = *a1;
    *a1 = 0;
    sub_2964D2AFC(&v18);
    goto LABEL_55;
  }

  v13 = *(v4 + 8);
  v12 = *(v4 + 16);
  while (v13 != v12)
  {
    v14 = v12 - 1;
    sub_2964D0F70(v12 - 1, &v20);
    if ((v21 & 1) != 0 && (v21 != 1 || v20 != 0))
    {
      goto LABEL_44;
    }

    *&v18 = 0;
    if (*v14 && *(*v14 + 6))
    {
      goto LABEL_17;
    }

    sub_2964D2AB8(&v18);
    v12 = sub_2964D2AB8((*(v4 + 16) - 8));
    *(v4 + 16) = v12;
    v13 = *(v4 + 8);
  }

  *&v18 = *a1;
  *a1 = 0;
  sub_2964D2AFC(&v18);
  return result;
}

void sub_2964D1D1C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, uint64_t a10, uint64_t a11, uint64_t a12, _UNKNOWN **a13, atomic_uint *a14)
{
  sub_2964D2AB8(&a9);
  if (a2 == 2)
  {
    sub_2964DA988(a1, &a9);
    a12 = 12;
    a13 = &boost::system::detail::generic_cat_holder<void>::instance;
    a14 = a9;
    __cxa_end_catch();
    JUMPOUT(0x2964D1AA8);
  }

  sub_2964A2F24(a1);
}

void *sub_2964D1D94@<X0>(int __errnum@<W1>, void *a2@<X8>)
{
  v3 = strerror(__errnum);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "Unknown error";
  }

  return sub_2964A2B70(a2, v4);
}

const char *sub_2964D1DE0(int a1, int __errnum, char *a3, uint64_t a4)
{
  v4 = a3;
  if (a4)
  {
    v5 = a3;
    v6 = a4 - 1;
    if (a4 != 1)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        return "Unknown error";
      }

      strncpy(v4, v7, v6);
      v5 = &v4[v6];
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t sub_2964D1E48(uint64_t *a1, unsigned int *a2)
{
  v4 = a1[2];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = sub_2964D1FBC(a1);
      v7 = v6;
      v16[0] = v5;
      v16[1] = v6;
      v14 = sub_2964D20E4(a2);
      v15 = v8;
      if (((*(*v7 + 32))(v7, v5, &v14) & 1) == 0)
      {
        return (*(*v15 + 40))(v15, v16, v14);
      }

      return 1;
    }

    v10 = a1[1];
  }

  else
  {
    v10 = &boost::system::detail::system_cat_holder<void>::instance;
  }

  if ((*(*v10 + 2))(v10, *a1, a2))
  {
    return 1;
  }

  if (*(a2 + 1))
  {
    v11 = *(a2 + 1);
  }

  else
  {
    v11 = &boost::system::detail::generic_cat_holder<void>::instance;
  }

  v12 = *a2;
  v13 = *(*v11 + 3);

  return v13();
}

unint64_t sub_2964D1FBC(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = *a1;
      v2 = a1[1];
      v4 = *a1 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v3) = *a1;
      v5 = a1[1];
      v6 = *(v5 + 8);
      if (v6 == 0xB2AB117A257EDFD1)
      {
        std::system_category();
      }

      else if (v6 == 0xB2AB117A257EDFD0)
      {
        std::generic_category();
      }

      else if (!atomic_load_explicit((v5 + 16), memory_order_acquire))
      {
        v7 = operator new(0x10uLL);
        v8 = 0;
        *v7 = &unk_2A1D54C18;
        v7[1] = v5;
        atomic_compare_exchange_strong((v5 + 16), &v8, v7);
        if (v8)
        {
          (*(*v7 + 8))(v7);
          v4 = 0;
          return v4 | v3;
        }
      }

      v4 = 0;
    }
  }

  else
  {
    std::system_category();
    v4 = 0;
    LODWORD(v3) = 0;
  }

  return v4 | v3;
}

uint64_t sub_2964D20E4(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = *a1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 8);
  if (v3 == 0xB2AB117A257EDFD1)
  {
    std::system_category();
    return v2;
  }

  if (v3 != 0xB2AB117A257EDFD0)
  {
    if (!atomic_load_explicit((v1 + 16), memory_order_acquire))
    {
      v5 = operator new(0x10uLL);
      v6 = 0;
      *v5 = &unk_2A1D54C18;
      v5[1] = v1;
      atomic_compare_exchange_strong((v1 + 16), &v6, v5);
      if (v6)
      {
        (*(*v5 + 8))(v5);
      }
    }
  }

  else
  {
LABEL_4:
    std::generic_category();
  }

  return v2;
}

void sub_2964D21D4(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete(v1);
}

uint64_t sub_2964D2224(uint64_t a1)
{
  v3[0] = (*(**(a1 + 8) + 8))(*(a1 + 8));
  v3[1] = v1;
  return sub_2964D20E4(v3);
}

uint64_t sub_2964D2278(void *a1, uint64_t a2, int *a3)
{
  v6 = *(a3 + 1);
  if (v6 == a1)
  {
    v8 = a1[1];
    v18 = *a3;
    v19 = v8;
    return (*(*v8 + 2))(v8, a2, &v18);
  }

  explicit = std::generic_category();
  if (v6 == explicit)
  {
    goto LABEL_13;
  }

  if (qword_2A1A8F448 != 0xB2AB117A257EDFD0)
  {
    if (qword_2A1A8F448 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(&qword_2A1A8F450, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v9 = 0;
        *explicit = &unk_2A1D54C18;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(&qword_2A1A8F450, &v9, explicit);
        if (v9)
        {
          (*(*explicit + 8))(explicit);
          explicit = v9;
        }
      }
    }
  }

  if (v6 == explicit)
  {
LABEL_13:
    v18 = *a3;
    v19 = &boost::system::detail::generic_cat_holder<void>::instance;
    goto LABEL_14;
  }

  v10 = *(a3 + 1);
  v11 = **v10;
  v12 = __dynamic_cast(v10, MEMORY[0x29EDC9448], &unk_2A1D54C50, 0);
  if (v12)
  {
    v13 = v12[1];
    v18 = *a3;
    v19 = v13;
LABEL_14:
    v8 = a1[1];
    return (*(*v8 + 2))(v8, a2, &v18);
  }

  v15 = (*(*a1 + 24))(a1, a2);
  return *(a3 + 1) == v16 && *a3 == v15;
}

uint64_t sub_2964D247C(void *a1, unsigned int *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  if (v6 == a1)
  {
    v10 = *a2;
    v11 = a1[1];
    v32 = 0;
    if (v11[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v12 = v10 != 0;
      v13 = v11;
    }

    else
    {
      v12 = (*(*v11 + 48))(v11, v10);
      v13 = a1[1];
    }

    v14 = v12 == 0;
    v15 = 2;
    if (!v14)
    {
      v15 = 3;
    }

    LODWORD(v32) = v10;
    v33 = v11;
    v34 = v15;
    return (*(*v13 + 24))(v13, &v32, a3);
  }

  explicit = std::generic_category();
  v8 = qword_2A1A8F448;
  if (v6 == explicit)
  {
    goto LABEL_20;
  }

  v9 = explicit;
  if (qword_2A1A8F448 != 0xB2AB117A257EDFD0)
  {
    if (qword_2A1A8F448 == 0xB2AB117A257EDFD1)
    {
      explicit = std::system_category();
    }

    else
    {
      explicit = atomic_load_explicit(&qword_2A1A8F450, memory_order_acquire);
      if (!explicit)
      {
        explicit = operator new(0x10uLL);
        v16 = 0;
        *explicit = &unk_2A1D54C18;
        explicit[1] = &boost::system::detail::generic_cat_holder<void>::instance;
        atomic_compare_exchange_strong(&qword_2A1A8F450, &v16, explicit);
        if (v16)
        {
          (*(*explicit + 8))(explicit);
          explicit = v16;
        }
      }
    }
  }

  if (v6 == explicit)
  {
    v8 = qword_2A1A8F448;
LABEL_20:
    v23 = *a2;
    v32 = 0;
    if (v8 >> 1 == 0x595588BD12BF6FE8)
    {
      v24 = v23 != 0;
    }

    else
    {
      v24 = (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, v23);
    }

    v25 = 2;
    if (v24)
    {
      v25 = 3;
    }

    LODWORD(v32) = v23;
    v33 = &boost::system::detail::generic_cat_holder<void>::instance;
    v34 = v25;
    goto LABEL_36;
  }

  v17 = *(a2 + 1);
  v18 = **v17;
  v19 = __dynamic_cast(v17, MEMORY[0x29EDC9448], &unk_2A1D54C50, 0);
  if (v19)
  {
    v20 = *a2;
    v21 = v19[1];
    v32 = 0;
    if (v21[1] >> 1 == 0x595588BD12BF6FE8)
    {
      v22 = v20 != 0;
    }

    else
    {
      v22 = (*(*v21 + 48))(v21, v20);
    }

    v31 = 2;
    if (v22)
    {
      v31 = 3;
    }

    LODWORD(v32) = v20;
    v33 = v21;
    v34 = v31;
LABEL_36:
    v13 = a1[1];
    return (*(*v13 + 24))(v13, &v32, a3);
  }

  v26 = a1[1];
  v27 = v26 == &boost::system::detail::generic_cat_holder<void>::instance;
  v28 = v26[1] == qword_2A1A8F448;
  if (!qword_2A1A8F448)
  {
    v28 = v27;
  }

  if (!v28)
  {
    return 0;
  }

  v29 = *(*v9 + 40);

  return v29(v9, a2, a3);
}

uint64_t sub_2964D2834()
{
  if ((atomic_load_explicit(&qword_2A1390E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1390E98))
  {
    qword_2A1390E90 = sub_2964D28A8();
    __cxa_guard_release(&qword_2A1390E98);
  }

  return qword_2A1390E90;
}

uint64_t sub_2964D28A8()
{
  *__error() = 0;
  v0 = pathconf("/", 5);
  if (v0 <= 0x400)
  {
    v1 = 1024;
  }

  else
  {
    v1 = v0;
  }

  if (v0 >= 0)
  {
    return v1;
  }

  else
  {
    return 1024;
  }
}

void *sub_2964D28E8(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2964A3C00();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

atomic_uint **sub_2964D2988(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = sub_2964D2AB8(result) + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void *sub_2964D2A30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_2964A3CA8();
  }

  return operator new(8 * a2);
}

uint64_t sub_2964D2A68(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_2964D2AB8((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint **sub_2964D2AB8(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = sub_2964CBD58(v2);
    operator delete(v3);
  }

  return a1;
}

void ***sub_2964D2AFC(void ***a1)
{
  v2 = *a1;
  if (*a1 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v4 = v2 + 1;
    sub_2964D2B58(&v4);
    operator delete(v2);
  }

  return a1;
}

void sub_2964D2B58(void ***a1)
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
        v4 = sub_2964D2AB8(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2964D2BFC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  sub_2964D8310(a1);
  if (v8)
  {
    if (*(a1 + 23) < 0)
    {
      v9 = *a1;
      v10 = *(a1 + 8);

      sub_2964A3B5C(a4, v9, v10);
    }

    else
    {
      *a4 = *a1;
      *(a4 + 16) = *(a1 + 16);
    }

    return;
  }

  if (*(a2 + 23) < 0)
  {
    sub_2964A3B5C(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  sub_2964D8310(a2);
  if (v11)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    sub_2964D4A14(0, &v22);
    sub_2964D2BFC(&__p, a2, &v22, 0);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    goto LABEL_13;
  }

  sub_2964D4A14(a3, &__p);
  v13 = a3[2];
  if ((v13 & 1) != 0 && (v13 != 1 || *a3))
  {
    memset(&v22, 0, sizeof(v22));
  }

  else
  {
    sub_2964D2BFC(&v22, a2, &__p, a3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  __dst = v22;
  v21 = a3[2];
  if ((v21 & 1) == 0 || v21 == 1 && !*a3)
  {
LABEL_13:
    v12 = *(a1 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a1 + 8);
    }

    if (v12)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if (sub_2964D8278(a1))
      {
        sub_2964D2FE0(a1, &__p);
      }

      else
      {
        sub_2964D2FE0(&__dst, &__p);
      }

      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = __p;
      sub_2964D8310(a1);
      if (v14)
      {
        sub_2964D3034(a1, &__p);
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

        std::string::append(a4, p_p, size);
      }

      else
      {
        sub_2964D3034(&__dst, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &__p;
        }

        else
        {
          v17 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a4, v17, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_2964D3088(&__dst, &__p);
        sub_2964D7680(a4, &__p);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_2964D3088(a1, &__p);
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = __p.__r_.__value_.__l.__size_;
      }

      if (v19)
      {
        sub_2964D7680(a4, &__p);
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v20 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a4 = __dst;
      memset(&__dst, 0, sizeof(__dst));
    }

    goto LABEL_65;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_65:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2964D2F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2964D2FE0@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_2964D8278(a1);

  return sub_2964D28E8(a2, v3, v3 + v4, v4);
}

void *sub_2964D3034@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = sub_2964D8310(a1);
  if (v2[23] < 0)
  {
    v2 = *v2;
  }

  return sub_2964D28E8(a2, &v2[v4], &v2[v4 + v5], v5);
}

void *sub_2964D3088@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = sub_2964D8368(a1);
  if (v2[23] < 0)
  {
    v2 = *v2;
  }

  return sub_2964D28E8(a2, &v2[v4], &v2[v4 + v5], v5);
}

void sub_2964D30DC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, size_t a4@<X8>)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    sub_2964A3B5C(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  sub_2964D8310(a1);
  if (!v8)
  {
    sub_2964D2BFC(a1, a2, a3, &v32);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = v32;
    if (a3)
    {
      v24 = a3[2];
      if ((v24 & 1) != 0 && (v24 != 1 || *a3))
      {
LABEL_107:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        goto LABEL_108;
      }
    }
  }

  memset(&v37, 0, sizeof(v37));
  sub_2964D37C8(&__dst, &v37, &v36);
  if (v36 == 1)
  {
    if (qword_2A1A8F448 >> 1 == 0x595588BD12BF6FE8 || (v9 = 2, (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, 2)))
    {
      v9 = 3;
    }

    v37.__r_.__value_.__r.__words[0] = 2;
    v37.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v37.__r_.__value_.__r.__words[2] = v9;
    goto LABEL_105;
  }

  if ((v37.__r_.__value_.__s.__data_[16] & 1) != 0 && (v37.__r_.__value_.__r.__words[2] != 1 || LODWORD(v37.__r_.__value_.__l.__data_)))
  {
    goto LABEL_105;
  }

  sub_2964D3A34(&__dst, &__p);
  v10 = sub_2964D863C();
  v11 = sub_2964D87A8();
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v12 = 40;
  while (2)
  {
    sub_2964D7C4C(&__dst, &v32);
    sub_2964D7D64(&__dst, &v28);
    while (1)
    {
      if (v33 == v30 && v34 == v31)
      {
        v21 = 6;
        goto LABEL_77;
      }

      if (!sub_2964D7D80(&v32, v10))
      {
        goto LABEL_75;
      }

      if (!sub_2964D7D80(&v32, v11))
      {
        if (sub_2964D7D80(a4, &__p))
        {
          sub_2964D7F88(a4);
        }

        goto LABEL_75;
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v32.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_32;
        }

        v14 = v32.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) != 1)
        {
          goto LABEL_32;
        }

        v14 = &v32;
      }

      if (v14->__r_.__value_.__s.__data_[0] == 47)
      {
        std::string::push_back(a4, 47);
        goto LABEL_75;
      }

LABEL_32:
      sub_2964D7680(a4, &v32);
      sub_2964D8310(a4);
      if (v15)
      {
        sub_2964D3A88(a4, a3, &__str);
        if (a3)
        {
          v16 = a3[2];
          if ((v16 & 1) != 0 && (v16 != 1 || *a3))
          {
            v21 = 2;
            goto LABEL_77;
          }
        }

        if (LODWORD(__str.__r_.__value_.__l.__data_) == 4)
        {
          break;
        }
      }

LABEL_75:
      sub_2964D97EC(&v32);
    }

    if (v12)
    {
      sub_2964D3D04(a4, a3, &__str);
      if (a3)
      {
        v17 = a3[2];
        if ((v17 & 1) != 0 && (v17 != 1 || *a3))
        {
          v20 = 0;
          v21 = 2;
          goto LABEL_72;
        }
      }

      sub_2964D7F88(a4);
      sub_2964D8310(&__str);
      if (v18)
      {
        while (1)
        {
          sub_2964D97EC(&v32);
          if (v33 == v30 && v34 == v31)
          {
            break;
          }

          if (sub_2964D7D80(&v32, v10))
          {
            sub_2964D7680(&__str, &v32);
          }
        }

        std::string::operator=(&__dst, &__str);
        sub_2964D3A34(&__dst, &v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v20 = 0;
        __p = v26;
        goto LABEL_71;
      }

      sub_2964D80C0(&__str);
      if (sub_2964D7D80(&__str, v10))
      {
        if (*(a4 + 23) < 0)
        {
          sub_2964A3B5C(&v26, *a4, *(a4 + 8));
        }

        else
        {
          v26 = *a4;
        }

        sub_2964D7680(&v26, &__str);
        sub_2964D97EC(&v32);
        while (v33 != v30 || v34 != v31)
        {
          if (sub_2964D7D80(&v32, v10))
          {
            sub_2964D7680(&v26, &v32);
          }

          sub_2964D97EC(&v32);
        }

        std::string::operator=(&__dst, &v26);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        v20 = 0;
LABEL_71:
        v21 = 15;
      }

      else
      {
        v21 = 8;
        v20 = 1;
      }

LABEL_72:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      --v12;
      if ((v20 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    if ((qword_2A1A8F448 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, 62))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v12 = 0;
    v37.__r_.__value_.__r.__words[0] = 62;
    v37.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v21 = 3;
    v37.__r_.__value_.__r.__words[2] = v23;
LABEL_77:
    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v21 == 15)
    {
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

      continue;
    }

    break;
  }

  if (v21 == 6)
  {
    v21 = 1;
  }

  else if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v21 == 3)
  {
LABEL_105:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v32 = v37;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::canonical", &__dst, &v32);
      __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
    }

    *a3 = v37;
    goto LABEL_107;
  }

  if (v21 == 2)
  {
    goto LABEL_107;
  }

LABEL_108:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2964D36E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  _Unwind_Resume(exception_object);
}

int *sub_2964D37C8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v23);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_2A1A8F430 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v22[0] = 0;
        if (qword_2A1A8F430 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22[0]) = v7;
        if (v20)
        {
          v21 = 3;
        }

        v22[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v22[2] = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::status", v4, v22);
        __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v23.st_mode - 4096) >> 12;
    if (v8 > 4)
    {
      if (v8 == 5)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 5;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 2;
      if (v8 == 11)
      {
        v11 = 8;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 11)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 7;
    }

    else
    {
      if (!v8)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_50;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_50:
  *a3 = v16;
  a3[1] = v15;
  return result;
}

void *sub_2964D3A34@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    v3 = *a1;
  }

  v4 = sub_2964D82B0(a1);

  return sub_2964D28E8(a2, v3, v3 + v4, v4);
}

int *sub_2964D3A88@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v4 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = lstat(a1, &v23);
  if (result)
  {
    result = __error();
    v7 = *result;
    if (a2)
    {
      if (qword_2A1A8F430 >> 1 == 0x595588BD12BF6FE8)
      {
        result = (v7 != 0);
      }

      else
      {
        result = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v7);
      }

      v17 = 2;
      if (result)
      {
        v17 = 3;
      }

      *a2 = v7;
      *(a2 + 4) = 0;
      *(a2 + 8) = &boost::system::detail::system_cat_holder<void>::instance;
      *(a2 + 16) = v17;
      if (v7 == 20)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xFFFF;
      }

      v16 = v7 == 2 || v7 == 20;
      if (v7 == 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = v18;
      }
    }

    else
    {
      if (v7 != 2 && v7 != 20)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v22[0] = 0;
        if (qword_2A1A8F430 >> 1 == 0x595588BD12BF6FE8)
        {
          v20 = v7 != 0;
        }

        else
        {
          v20 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v7);
        }

        v21 = 2;
        LODWORD(v22[0]) = v7;
        if (v20)
        {
          v21 = 3;
        }

        v22[1] = &boost::system::detail::system_cat_holder<void>::instance;
        v22[2] = v21;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::symlink_status", v4, v22);
        __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
      }

      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v8 = (v23.st_mode - 4096) >> 12;
    if (v8 <= 4)
    {
      if (!v8)
      {
        v15 = v23.st_mode & 0xFFF;
        v16 = 7;
        goto LABEL_57;
      }

      v9 = v23.st_mode & 0xFFF;
      v10 = 6;
      if (v8 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 10;
      }

      if (v8 == 3)
      {
        v12 = v23.st_mode & 0xFFF;
      }

      else
      {
        v12 = 0xFFFF;
      }

      v13 = v8 == 1;
    }

    else
    {
      v9 = v23.st_mode & 0xFFF;
      if ((v23.st_mode - 4096) >> 12 > 8)
      {
        v10 = 4;
        if (v8 == 11)
        {
          v11 = 8;
        }

        else
        {
          v11 = 10;
        }

        if (v8 == 11)
        {
          v12 = v23.st_mode & 0xFFF;
        }

        else
        {
          v12 = 0xFFFF;
        }

        v13 = v8 == 9;
      }

      else
      {
        v10 = 5;
        if (v8 == 7)
        {
          v11 = 2;
        }

        else
        {
          v11 = 10;
        }

        if (v8 == 7)
        {
          v12 = v23.st_mode & 0xFFF;
        }

        else
        {
          v12 = 0xFFFF;
        }

        v13 = v8 == 5;
      }
    }

    if (v13)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_57:
  *a3 = v16;
  a3[1] = v15;
  return result;
}

void sub_2964D3D04(uint64_t a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = readlink(v6, v25, 0x400uLL);
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_24:
    v15 = *__error();
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v22 = 0;
      if (qword_2A1A8F430 >> 1 == 0x595588BD12BF6FE8)
      {
        v18 = v15 != 0;
      }

      else
      {
        v18 = (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, v15);
      }

      v19 = 2;
      LODWORD(v22) = v15;
      if (v18)
      {
        v19 = 3;
      }

      v23 = &boost::system::detail::system_cat_holder<void>::instance;
      v24 = v19;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::read_symlink", a1, &v22);
      __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
    }

    v16 = *MEMORY[0x29EDCA608];

    sub_2964D58EC(a2, v15, &boost::system::detail::system_cat_holder<void>::instance);
  }

  else if (v7 >= 0x400)
  {
    v9 = 2048;
    while (1)
    {
      v10 = operator new[](v9);
      v11 = readlink(v6, v10, v9);
      if ((v11 & 0x8000000000000000) != 0)
      {
        operator delete[](v10);
        goto LABEL_24;
      }

      if (v11 < v9)
      {
        break;
      }

      operator delete[](v10);
      v12 = v9 > 0x4000;
      v9 *= 2;
      if (v12)
      {
        if (!a2)
        {
          v20 = __cxa_allocate_exception(0x30uLL);
          v22 = 0;
          if ((qword_2A1A8F430 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, 63))
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          LODWORD(v22) = 63;
          v23 = &boost::system::detail::system_cat_holder<void>::instance;
          v24 = v21;
          boost::filesystem::filesystem_error::filesystem_error(v20, "boost::filesystem::read_symlink", a1, &v22);
          __cxa_throw(v20, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
        }

        if ((qword_2A1A8F430 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (*(boost::system::detail::system_cat_holder<void>::instance + 6))(&boost::system::detail::system_cat_holder<void>::instance, 63))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        *a2 = 63;
        a2[1] = &boost::system::detail::system_cat_holder<void>::instance;
        a2[2] = v13;
        goto LABEL_8;
      }
    }

    sub_2964D71A8(a3, v10, &v10[v11], v11);
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    v14 = *MEMORY[0x29EDCA608];

    operator delete[](v10);
  }

  else
  {
    sub_2964D71A8(a3, v25, &v25[v7], v7);
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

LABEL_8:
    v8 = *MEMORY[0x29EDCA608];
  }
}

void sub_2964D40C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D4114(const char *a1, uint64_t a2, int a3, std::string *a4)
{
  v7 = a1;
  if ((a3 & 0x1600) != 0)
  {
    sub_2964D3A88(a1, a4, &v30);
  }

  else
  {
    sub_2964D37C8(a1, a4, &v30);
  }

  if (a4)
  {
    v8 = a4->__r_.__value_.__r.__words[2];
    if ((v8 & 1) != 0 && (v8 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
    {
      return;
    }
  }

  if (LODWORD(v30.__r_.__value_.__l.__data_) <= 1)
  {
    v9 = 2;
    goto LABEL_14;
  }

  if (LODWORD(v30.__r_.__value_.__l.__data_) == 2)
  {
    if ((a3 & 0x800) != 0)
    {
      return;
    }

    if ((a3 & 0x1000) != 0)
    {
      memset(&v30, 0, sizeof(v30));
      sub_2964D8310(v7);
      if (v12)
      {
        goto LABEL_132;
      }

      sub_2964D4A14(a4, &__dst);
      if (a4 && (v13 = a4->__r_.__value_.__r.__words[2], (v13 & 1) != 0) && (v13 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
      {
        v24 = 0;
      }

      else
      {
        sub_2964D1424(v7, &__p);
        sub_2964D2BFC(&__p, &__dst, a4, &v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (a4 && (v14 = a4->__r_.__value_.__r.__words[2], (v14 & 1) != 0) && (v14 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
        {
          v24 = 0;
        }

        else
        {
          sub_2964D1424(a2, &__p);
          sub_2964D8310(&__p);
          if (!v15)
          {
            sub_2964D2BFC(&__p, &__dst, a4, &v26);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v26;
            if (a4)
            {
              v25 = a4->__r_.__value_.__r.__words[2];
              if ((v25 & 1) != 0 && (v25 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
              {
                goto LABEL_120;
              }
            }
          }

          sub_2964D4B70(&v28, &__p, a4, &v26);
          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          v30 = v26;
          if (a4 && (v16 = a4->__r_.__value_.__r.__words[2], (v16 & 1) != 0) && (v16 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
          {
LABEL_120:
            v24 = 0;
          }

          else
          {
            v17 = sub_2964D863C();
            if (sub_2964D7D80(&v30, v17))
            {
              sub_2964D6F5C(v7, &v26);
              sub_2964D7680(&v30, &v26);
              if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v26.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              sub_2964D6F5C(v7, &v26);
              if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v30.__r_.__value_.__l.__data_);
              }

              v30 = v26;
            }

            v24 = 1;
            v7 = &v30;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v24)
      {
LABEL_132:
        sub_2964D4DB0(v7, a2, a4);
      }

      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v23 = v30.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((a3 & 0x2000) != 0)
      {

        sub_2964D4E50(v7, a2, a4);
        return;
      }

      memset(&v30, 0, sizeof(v30));
      if ((a3 & 0x400) != 0)
      {
        sub_2964D3A88(a2, &v30, &__dst);
      }

      else
      {
        sub_2964D37C8(a2, &v30, &__dst);
      }

      if (LODWORD(__dst.__r_.__value_.__l.__data_) != 3)
      {
        if (LODWORD(__dst.__r_.__value_.__l.__data_))
        {
          sub_2964D4EF4(v7, a2, a3, a4);
          return;
        }

        if (!a4)
        {
          goto LABEL_35;
        }

        goto LABEL_84;
      }

      sub_2964D6F5C(v7, &v28);
      sub_2964D5200(a2, &v28, &__dst);
      sub_2964D4EF4(v7, &__dst, a3, a4);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v23 = v28.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    return;
  }

  if (LODWORD(v30.__r_.__value_.__l.__data_) == 3)
  {
    memset(&v30, 0, sizeof(v30));
    if ((a3 & 0x1000) != 0)
    {
      if (qword_2A1A8F448 >> 1 == 0x595588BD12BF6FE8 || (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, 21))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v30.__r_.__value_.__r.__words[0] = 21;
      v30.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
      v30.__r_.__value_.__r.__words[2] = v10;
      if (!a4)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        __dst = v30;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::copy", v7, a2, &__dst);
LABEL_137:
        __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
      }

      goto LABEL_84;
    }

    if ((a3 & 0x400) != 0)
    {
      sub_2964D3A88(a2, &v30, &__dst);
    }

    else
    {
      sub_2964D37C8(a2, &v30, &__dst);
    }

    if (LODWORD(__dst.__r_.__value_.__l.__data_) == 1)
    {
      sub_2964D5274(a2, v7, a4);
      if (a4)
      {
        v18 = a4->__r_.__value_.__r.__words[2];
        if ((v18 & 1) != 0 && (v18 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
        {
          return;
        }
      }
    }

    else if (!LODWORD(__dst.__r_.__value_.__l.__data_))
    {
      if (!a4)
      {
LABEL_35:
        exception = __cxa_allocate_exception(0x30uLL);
        __dst = v30;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::copy", v7, a2, &__dst);
        goto LABEL_137;
      }

LABEL_84:
      *a4 = v30;
      return;
    }

    if (!a3 || (a3 & 0x100) != 0)
    {
      __p.__r_.__value_.__r.__words[0] = 0;
      sub_2964D0A64(&__p, v7, 0, a4);
      if (!a4 || (v19 = a4->__r_.__value_.__r.__words[2], (v19 & 1) == 0) || v19 == 1 && !LODWORD(a4->__r_.__value_.__l.__data_))
      {
        v26.__r_.__value_.__r.__words[0] = 0;
        v20 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          do
          {
            if (!v20 || !*(v20 + 48))
            {
              break;
            }

            sub_2964D6F5C((v20 + 8), &v28);
            if (*(a2 + 23) < 0)
            {
              sub_2964A3B5C(&__dst, *a2, *(a2 + 8));
            }

            else
            {
              __dst = *a2;
            }

            sub_2964D7680(&__dst, &v28);
            sub_2964D4114(v20 + 8, &__dst, a3 | 0x4000u, a4);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }

            if (a4)
            {
              v21 = a4->__r_.__value_.__r.__words[2];
              if ((v21 & 1) != 0 && (v21 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
              {
                break;
              }
            }

            sub_2964D0F70(&__p, a4);
            if (a4)
            {
              v22 = a4->__r_.__value_.__r.__words[2];
              if ((v22 & 1) != 0 && (v22 != 1 || LODWORD(a4->__r_.__value_.__l.__data_)))
              {
                break;
              }
            }

            v20 = __p.__r_.__value_.__r.__words[0];
          }

          while (__p.__r_.__value_.__r.__words[0] != v26.__r_.__value_.__r.__words[0]);
        }

        sub_2964D2AB8(&v26);
      }

      sub_2964D2AB8(&__p);
    }

    return;
  }

  if (LODWORD(v30.__r_.__value_.__l.__data_) != 4)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x400) != 0)
  {
    return;
  }

  if ((a3 & 0x200) == 0)
  {
LABEL_12:
    v9 = 78;
LABEL_14:

    sub_2964CFC08(v9, v7, a2, a4, "boost::filesystem::copy");
    return;
  }

  sub_2964D4980(v7, a2, a4);
}

void sub_2964D4840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D4980(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2964D3D04(a1, a3, &__p);
  if (!a3 || (v5 = a3[2], (v5 & 1) == 0) || v5 == 1 && !*a3)
  {
    sub_2964D4DB0(&__p, a2, a3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2964D49F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D4A14(void *a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = getcwd(v10, 0x400uLL);
  if (v4)
  {
    sub_2964D06A8(a2, v4);
    if (a1)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }
  }

  else if (!sub_2964D5AC4(a1))
  {
    v6 = 2048;
    while (1)
    {
      v7 = operator new[](v6);
      if (getcwd(v7, v6))
      {
        break;
      }

      v8 = sub_2964D5AC4(a1);
      operator delete[](v7);
      if (v8)
      {
        goto LABEL_4;
      }

      v9 = v6 > 0x4000;
      v6 *= 2;
      if (v9)
      {
        sub_2964CF930(63, a1, "boost::filesystem::current_path");
        goto LABEL_4;
      }
    }

    sub_2964D06A8(a2, v7);
    if (a1)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    operator delete[](v7);
  }

LABEL_4:
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2964D4B38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D4B70(_BYTE *a1@<X0>, _BYTE *a2@<X1>, std::string *a3@<X2>, void *a4@<X8>)
{
  if (a3)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  memset(&v15, 0, sizeof(v15));
  memset(&__p, 0, sizeof(__p));
  sub_2964D8310(a1);
  if (v8)
  {
    sub_2964D8310(a2);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  sub_2964D4A14(&v15, &v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v13;
  if ((v15.__r_.__value_.__s.__data_[16] & 1) == 0 || v15.__r_.__value_.__r.__words[2] == 1 && !LODWORD(v15.__r_.__value_.__l.__data_))
  {
LABEL_10:
    sub_2964D630C(a2, &__p, &v15, &v12);
    if ((v15.__r_.__value_.__s.__data_[16] & 1) != 0 && (v15.__r_.__value_.__r.__words[2] != 1 || LODWORD(v15.__r_.__value_.__l.__data_)))
    {
      sub_2964DA9FC(&v12);
    }

    else
    {
      sub_2964D630C(a1, &__p, &v15, &v11);
      if ((v15.__r_.__value_.__s.__data_[16] & 1) == 0 || v15.__r_.__value_.__r.__words[2] == 1 && !LODWORD(v15.__r_.__value_.__l.__data_))
      {
        sub_2964D8AA8(&v11, &v12, a4);
        if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v11.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }

        goto LABEL_20;
      }

      sub_2964DAA28(&v11, &v12);
    }
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    v13 = v15;
    boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::relative", a1, a2, &v13);
    __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
  }

  *a3 = v15;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
LABEL_20:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2964D4D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_free_exception(v30);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2964D4DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  result = symlink(a1, a2);
  if ((result & 0x80000000) != 0)
  {
    v7 = *__error();

    return sub_2964CFC08(v7, v5, v4, a3, "boost::filesystem::create_symlink");
  }

  return result;
}

uint64_t sub_2964D4E50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  result = link(a1, a2);
  if (result && (result = *__error(), result))
  {

    return sub_2964CFC08(result, v5, v4, a3, "boost::filesystem::create_hard_link");
  }

  else if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_2964D4EF4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  v25 = -1;
  v26 = -1;
  while (1)
  {
    v8 = *(a1 + 23) >= 0 ? a1 : *a1;
    v9 = open(v8, 0x1000000);
    v26 = v9;
    if ((v9 & 0x80000000) == 0)
    {
      break;
    }

    v10 = *__error();
    if (v10 != 4)
    {
      goto LABEL_33;
    }
  }

  if (fstat(v9, &v24))
  {
LABEL_60:
    v10 = *__error();
    goto LABEL_33;
  }

  st_mode = v24.st_mode;
  if ((v24.st_mode & 0xF000) != 0x8000)
  {
LABEL_61:
    v10 = 78;
    goto LABEL_33;
  }

  if ((a3 & 4) != 0)
  {
    while (1)
    {
      v12 = *(a2 + 23) >= 0 ? a2 : *a2;
      v13 = open(v12, 16777217, st_mode | 0x80u);
      v25 = v13;
      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      v10 = *__error();
      if (v10 != 4)
      {
        if (v10 != 2)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }
    }

    v18 = 1;
LABEL_37:
    if (fstat(v13, &v23))
    {
      goto LABEL_60;
    }

    v19 = v23.st_mode;
    if ((v23.st_mode & 0xF000) != 0x8000)
    {
      goto LABEL_61;
    }

    if (v24.st_dev != v23.st_dev || v24.st_ino != v23.st_ino)
    {
      if (v18)
      {
        if (v24.st_mtimespec.tv_sec < v23.st_mtimespec.tv_sec || v24.st_mtimespec.tv_sec == v23.st_mtimespec.tv_sec && v24.st_mtimespec.tv_nsec <= v23.st_mtimespec.tv_nsec)
        {
          goto LABEL_34;
        }

        if (ftruncate(v25, 0))
        {
          goto LABEL_60;
        }
      }

      v10 = sub_2964D6FB4();
      if (v10)
      {
        goto LABEL_33;
      }

      if (v19 == st_mode || !fchmod(v25, st_mode))
      {
        if ((a3 & 0x18) != 0)
        {
          v20 = v25;
          if ((a3 & 0x10) != 0)
          {
            while (fcntl(v20, 51) < 0)
            {
              v10 = *__error();
              if (v10 != 4)
              {
LABEL_56:
                if (v10)
                {
                  goto LABEL_33;
                }

                break;
              }
            }
          }

          else
          {
            while (fcntl(v20, 51) < 0)
            {
              v10 = *__error();
              if (v10 != 4)
              {
                goto LABEL_56;
              }
            }
          }
        }

        v21 = close(v25);
        v25 = -1;
        if ((v21 & 0x80000000) == 0 || (v10 = *__error(), (v10 & 0xFFFFFFDF) == 4))
        {
          v17 = 1;
          goto LABEL_59;
        }

        goto LABEL_33;
      }

      goto LABEL_60;
    }

LABEL_32:
    v10 = 17;
LABEL_33:
    sub_2964CFC08(v10, a1, a2, a4, "boost::filesystem::copy_file");
    goto LABEL_34;
  }

LABEL_19:
  if ((a3 & 4) != 0 || (a3 & 3) == 2)
  {
    v15 = 16778753;
  }

  else
  {
    v15 = 16780801;
  }

  do
  {
    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    v13 = open(v16, v15, st_mode | 0x80u);
    v25 = v13;
    if ((v13 & 0x80000000) == 0)
    {
      v18 = 0;
      goto LABEL_37;
    }

    v10 = *__error();
  }

  while (v10 == 4);
  if (v10 != 17)
  {
    goto LABEL_33;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v17 = 0;
LABEL_59:
  sub_2964D5380(&v25);
  sub_2964D5380(&v26);
  return v17;
}

void sub_2964D51C8(_Unwind_Exception *a1)
{
  sub_2964D5380((v1 - 72));
  sub_2964D5380((v1 - 68));
  _Unwind_Resume(a1);
}

void sub_2964D5200(uint64_t a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_2964A3B5C(a3, *a1, *(a1 + 8));
  }

  else
  {
    *a3 = *a1;
    *(a3 + 16) = *(a1 + 16);
  }

  sub_2964D7680(a3, a2);
}

void sub_2964D5258(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964D5274(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (a2)
  {
    v6 = a2;
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
    }

    if (stat(v6, &v12) < 0)
    {
      v8 = *__error();
      goto LABEL_17;
    }

    st_mode = v12.st_mode;
    if ((v12.st_mode & 0xF000) != 0x4000)
    {
      v8 = 20;
LABEL_17:
      sub_2964CFC08(v8, a1, a2, a3, "boost::filesystem::create_directory");
      return 0;
    }
  }

  else
  {
    st_mode = 511;
  }

  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (mkdir(v9, st_mode))
  {
    v10 = *__error();
    memset(&v12, 0, 24);
    sub_2964D37C8(a1, &v12, &v13);
    if (v13 != 3)
    {
      sub_2964CFA9C(v10, a1, a3, "boost::filesystem::create_directory");
    }

    return 0;
  }

  return 1;
}

int *sub_2964D5380(int *a1)
{
  v2 = *a1;
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return a1;
}

uint64_t sub_2964D53B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    sub_2964D7D64(a1, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_2964A3B5C(&__dst, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v28;
    }

    v27 = v29;
    if (*(a1 + 23) < 0)
    {
      sub_2964A3B5C(&v25, *a1, *(a1 + 8));
    }

    else
    {
      v25 = *a1;
    }

    v6 = sub_2964D863C();
    v7 = sub_2964D87A8();
    v23 = 0uLL;
    v24 = 0;
    sub_2964D6F5C(&v25, __p);
    while (1)
    {
      sub_2964D8368(&v25);
      if (!v8)
      {
LABEL_28:
        v10 = 1;
        goto LABEL_29;
      }

      v9 = HIBYTE(v22);
      if (v22 < 0)
      {
        v9 = __p[1];
      }

      if (v9 && sub_2964D7D80(__p, v6) && sub_2964D7D80(__p, v7))
      {
        sub_2964D37C8(&v25, &v23, &v20);
        if (v20 == 3)
        {
          goto LABEL_28;
        }

        if (!v20)
        {
          break;
        }
      }

      sub_2964D9CAC(&__dst);
      sub_2964D7F88(&v25);
      sub_2964D6F5C(&v25, &v18);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v18;
      v22 = v19;
    }

    if (!a2)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      v18 = v23;
      v19 = v24;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::create_directories", a1, &v25, &v18);
      __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
    }

    v10 = 0;
    *a2 = v23;
    a2[2] = v24;
LABEL_29:
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
      if (!v10)
      {
LABEL_51:
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        return v10 & 1;
      }
    }

    else if (!v10)
    {
      goto LABEL_51;
    }

    LOBYTE(v10) = 0;
    while (v27 != v29 || *(&v27 + 1) != *(&v29 + 1))
    {
      sub_2964D7680(&v25, &__dst);
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (sub_2964D7D80(&__dst, v6))
        {
          if (sub_2964D7D80(&__dst, v7))
          {
            LOBYTE(v10) = sub_2964D5274(&v25, 0, &v23);
            if ((v24 & 1) != 0 && (v24 != 1 || v23))
            {
              if (!a2)
              {
                v16 = __cxa_allocate_exception(0x30uLL);
                *__p = v23;
                v22 = v24;
                boost::filesystem::filesystem_error::filesystem_error(v16, "boost::filesystem::create_directories", a1, &v25, __p);
                __cxa_throw(v16, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
              }

              LOBYTE(v10) = 0;
              *a2 = v23;
              a2[2] = v24;
              goto LABEL_51;
            }
          }
        }
      }

      sub_2964D97EC(&__dst);
    }

    goto LABEL_51;
  }

  if (!a2)
  {
    v14 = __cxa_allocate_exception(0x30uLL);
    v28.__r_.__value_.__r.__words[0] = 0;
    if ((qword_2A1A8F448 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, 22))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    LODWORD(v28.__r_.__value_.__l.__data_) = 22;
    v28.__r_.__value_.__l.__size_ = &boost::system::detail::generic_cat_holder<void>::instance;
    v28.__r_.__value_.__r.__words[2] = v15;
    boost::filesystem::filesystem_error::filesystem_error(v14, "boost::filesystem::create_directories", a1, &v28);
    __cxa_throw(v14, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
  }

  if ((qword_2A1A8F448 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0 || (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, 22))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  LOBYTE(v10) = 0;
  *a2 = 22;
  a2[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a2[2] = v5;
  return v10 & 1;
}

void sub_2964D5838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964D58EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (a3[1] >> 1 == 0x595588BD12BF6FE8)
  {
    result = a2 != 0;
  }

  else
  {
    result = (*(*a3 + 48))(a3, a2);
  }

  v7 = 2;
  if (result)
  {
    v7 = 3;
  }

  *a1 = v4;
  *(a1 + 4) = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_2964D5984(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v9) < 0 || (*(a2 + 23) >= 0 ? (v6 = a2) : (v6 = *a2), result = mkdir(v6, v9.st_mode), (result & 0x80000000) != 0))
  {
    v8 = __error();
    return sub_2964CFC08(*v8, v5, a2, a3, "boost::filesystem::copy_directory");
  }

  return result;
}

uint64_t sub_2964D5A24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  result = symlink(a1, a2);
  if ((result & 0x80000000) != 0)
  {
    v7 = *__error();

    return sub_2964CFC08(v7, v5, v4, a3, "boost::filesystem::create_directory_symlink");
  }

  return result;
}

BOOL sub_2964D5AC4(void *a1)
{
  v2 = *__error();
  if (v2 == 34)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    sub_2964CF930(v3, a1, "boost::filesystem::current_path");
  }

  else if (a1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return v3 != 0;
}

uint64_t sub_2964D5B24(uint64_t a1, void *a2)
{
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  result = chdir(a1);
  if (result && (result = *__error(), result))
  {

    return sub_2964CFA9C(result, v3, a2, "boost::filesystem::current_path");
  }

  else if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

BOOL sub_2964D5BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = stat(v6, &v15);
  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = stat(v8, &v14);
  if (!(v9 | v7))
  {
    return v14.st_dev == v15.st_dev && v14.st_ino == v15.st_ino;
  }

  if (v9)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = __error();
    sub_2964CFC08(*v13, a1, a2, a3, "boost::filesystem::equivalent");
  }

  return 0;
}

off_t sub_2964D5C70(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v5) < 0)
  {
    sub_2964DAA68();
    return -1;
  }

  if ((v5.st_mode & 0xF000) != 0x8000)
  {
    sub_2964CFA9C(78, v3, a2, "boost::filesystem::file_size");
    return -1;
  }

  return v5.st_size;
}

uint64_t sub_2964D5D08(const char *a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if ((stat(a1, &v3) & 0x80000000) == 0)
  {
    return v3.st_nlink;
  }

  sub_2964DAA98();
  return -1;
}

void sub_2964D5D74(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1390EC0, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_2964DAAC8();
    a1 = v4;
  }

  v3 = *&byte_2A1390EC8[8];
  if (byte_2A1390EC8[23] >= 0)
  {
    v3 = byte_2A1390EC8[23];
  }

  if (v3)
  {
    if (a1)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }
  }

  else
  {
    sub_2964D4A14(a1, &v5);
    if (byte_2A1390EC8[23] < 0)
    {
      operator delete(*byte_2A1390EC8);
    }

    *byte_2A1390EC8 = v5;
  }

  if (byte_2A1390EC8[23] < 0)
  {
    sub_2964A3B5C(a2, *byte_2A1390EC8, *&byte_2A1390EC8[8]);
  }

  else
  {
    *a2 = *byte_2A1390EC8;
    *(a2 + 16) = *&byte_2A1390EC8[16];
  }
}

BOOL sub_2964D5E54(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v6) < 0)
  {
    sub_2964DAB40();
    return 0;
  }

  else if ((v6.st_mode & 0xF000) == 0x4000)
  {
    v8 = 0;
    sub_2964D0A64(&v8, v3, 0, a2);
    v7 = 0;
    if (v8)
    {
      v4 = *(v8 + 6) == 0;
    }

    else
    {
      v4 = 1;
    }

    sub_2964D2AB8(&v7);
    sub_2964D2AB8(&v8);
  }

  else
  {
    return v6.st_size == 0;
  }

  return v4;
}

__darwin_time_t sub_2964D5F3C(const char *a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if ((stat(a1, &v3) & 0x80000000) == 0)
  {
    return v3.st_birthtimespec.tv_sec;
  }

  sub_2964DAB70();
  return 0x8000000000000000;
}

__darwin_time_t sub_2964D5FA8(const char *a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if ((stat(a1, &v3) & 0x80000000) == 0)
  {
    return v3.st_mtimespec.tv_sec;
  }

  sub_2964DABA0();
  return 0x8000000000000000;
}

uint64_t sub_2964D6014(const char *a1, time_t a2, void *a3)
{
  v4 = a1;
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v8) < 0)
  {
    return sub_2964DABA0();
  }

  v7.actime = v8.st_atimespec.tv_sec;
  v7.modtime = a2;
  if (v4[23] >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *v4;
  }

  result = utime(v5, &v7);
  if ((result & 0x80000000) != 0)
  {
    return sub_2964DABA0();
  }

  return result;
}

int *sub_2964D60B8(int *result, unsigned int a2, uint64_t a3)
{
  if ((~a2 & 0x3000) != 0)
  {
    v4 = a2;
    v5 = result;
    v16 = 0uLL;
    v17 = 0;
    if ((a2 & 0x4000) != 0)
    {
      result = sub_2964D3A88(result, &v16, &v14);
    }

    else
    {
      result = sub_2964D37C8(result, &v16, &v14);
    }

    if ((v17 & 1) != 0 && (v17 != 1 || v16))
    {
      if (a3)
      {
        *a3 = v16;
        v8 = v17;
LABEL_25:
        *(a3 + 16) = v8;
        return result;
      }

      exception = __cxa_allocate_exception(0x30uLL);
      v12 = v16;
      v13 = v17;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::permissions", v5, &v12);
LABEL_34:
      __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
    }

    if ((v4 & 0x1000) != 0)
    {
      v4 |= v15;
    }

    else if ((v4 & 0x2000) != 0)
    {
      v4 = v15 & ~v4;
    }

    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    result = fchmodat(-2, v6, v4 & 0xFFF, (v4 >> 9) & 0x20);
    if (result)
    {
      v7 = *__error();
      if (a3)
      {
        if ((qword_2A1A8F448 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
        {
          result = (v7 != 0);
        }

        else
        {
          result = (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, v7);
        }

        v8 = 2;
        if (result)
        {
          v8 = 3;
        }

        *a3 = v7;
        *(a3 + 4) = 0;
        *(a3 + 8) = &boost::system::detail::generic_cat_holder<void>::instance;
        goto LABEL_25;
      }

      exception = __cxa_allocate_exception(0x30uLL);
      *&v12 = 0;
      if ((qword_2A1A8F448 & 0xFFFFFFFFFFFFFFFELL) == 0xB2AB117A257EDFD0)
      {
        v10 = v7 != 0;
      }

      else
      {
        v10 = (*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, v7);
      }

      v11 = 2;
      LODWORD(v12) = v7;
      if (v10)
      {
        v11 = 3;
      }

      *(&v12 + 1) = &boost::system::detail::generic_cat_holder<void>::instance;
      v13 = v11;
      boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::permissions", v5, &v12);
      goto LABEL_34;
    }
  }

  return result;
}

void sub_2964D630C(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X2>, std::string *a4@<X8>)
{
  p_p = a1;
  memset(&v24, 0, sizeof(v24));
  sub_2964D7D64(a1, &v22);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2964A3B5C(&__dst, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v22;
  }

  v21 = v23;
  if (SHIBYTE(p_p->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2964A3B5C(&__p, p_p->__r_.__value_.__l.__data_, p_p->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *p_p;
  }

  while (1)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_13;
    }

    sub_2964D37C8(&__p, &v24, &v17);
    if (LODWORD(v17.__r_.__value_.__l.__data_) != 1)
    {
      break;
    }

    sub_2964D7F88(&__p);
    sub_2964D9CAC(&__dst);
  }

  if (LODWORD(v17.__r_.__value_.__l.__data_))
  {
LABEL_13:
    v9 = sub_2964D863C();
    v10 = sub_2964D87A8();
    v11 = 0;
    memset(&v18, 0, sizeof(v18));
    while (v21 != v23 || *(&v21 + 1) != *(&v23 + 1))
    {
      sub_2964D7680(&v18, &__dst);
      v11 = v11 || !sub_2964D7D80(&__dst, v9) || !sub_2964D7D80(&__dst, v10);
      sub_2964D97EC(&__dst);
    }

    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    if (!v13)
    {
      goto LABEL_37;
    }

    sub_2964D30DC(&__p, a2, &v24, &v17);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v17;
    if ((v24.__r_.__value_.__s.__data_[16] & 1) != 0 && (v24.__r_.__value_.__r.__words[2] != 1 || LODWORD(v24.__r_.__value_.__l.__data_)))
    {
      if (!a3)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v17 = v24;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::weakly_canonical", &__p, &v17);
        __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
      }

      *a3 = v24;
    }

    else
    {
      v14 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v18.__r_.__value_.__l.__size_;
      }

      if (v14)
      {
        sub_2964D7680(&__p, &v18);
        if (v11)
        {
          p_p = &__p;
LABEL_37:
          sub_2964D91F8(p_p, a4);
          goto LABEL_40;
        }
      }

      *a4 = __p;
      a4 = &__p;
    }

    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
LABEL_40:
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    goto LABEL_42;
  }

  if (!a3)
  {
    v15 = __cxa_allocate_exception(0x30uLL);
    v18 = v24;
    boost::filesystem::filesystem_error::filesystem_error(v15, "boost::filesystem::weakly_canonical", &__p, &v18);
    __cxa_throw(v15, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
  }

  *a3 = v24;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  a4->__r_.__value_.__r.__words[0] = 0;
LABEL_42:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_2964D666C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  __cxa_free_exception(v41);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

double sub_2964D670C(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v11 = 0uLL;
  v12 = 0;
  sub_2964D3A88(a1, &v11, &v9);
  if (v9 != 1)
  {
    if (v9 == 3)
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      if (rmdir(v6))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9)
      {
        if (*(a1 + 23) >= 0)
        {
          v5 = a1;
        }

        else
        {
          v5 = *a1;
        }

        if (!unlink(v5))
        {
          return result;
        }

LABEL_15:
        v7 = *__error();
        if (v7 != 2 && v7 != 20)
        {
          sub_2964CFA9C(v7, a1, a2, "boost::filesystem::remove");
        }

        return result;
      }

      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v9 = v11;
        v10 = v12;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::remove", a1, &v9);
        __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
      }

      result = *&v11;
      *a2 = v11;
      a2[2] = v12;
    }
  }

  return result;
}

uint64_t sub_2964D6868(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return sub_2964D6878(a1, a2);
}

uint64_t sub_2964D6878(uint64_t a1, void *a2)
{
  v22 = 0uLL;
  v23 = 0;
  sub_2964D3A88(a1, &v22, &v20);
  result = 0;
  v5 = v20;
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!a2)
      {
        exception = __cxa_allocate_exception(0x30uLL);
        v20 = v22;
        v21 = v23;
        boost::filesystem::filesystem_error::filesystem_error(exception, "boost::filesystem::remove_all", a1, &v20);
        __cxa_throw(exception, &unk_2A1D54AF8, boost::filesystem::filesystem_error::~filesystem_error);
      }

      *a2 = v22;
      a2[2] = v23;
      return -1;
    }

    if (v20 == 3)
    {
      *&v22 = 0;
      sub_2964D0A64(&v22, a1, 0, a2);
      if (a2)
      {
        v6 = a2[2];
        if ((v6 & 1) != 0 && (v6 != 1 || *a2))
        {
          sub_2964D2AB8(&v22);
          return -1;
        }
      }

      *&v20 = 0;
      v7 = v22;
      if (v22)
      {
        v8 = 0;
        v9 = 0;
        while (v7 && *(v7 + 48) || v9 && *(v9 + 48))
        {
          v8 += sub_2964D6878(v7 + 8, a2);
          if (a2 && (v10 = a2[2], (v10 & 1) != 0) && (v10 != 1 || *a2) || (sub_2964D0F70(&v22, a2), a2) && (v11 = a2[2], (v11 & 1) != 0) && (v11 != 1 || *a2))
          {
            v12 = 0;
            goto LABEL_29;
          }

          v9 = v20;
          v7 = v22;
          if (v22 == v20)
          {
            break;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      v12 = 1;
LABEL_29:
      sub_2964D2AB8(&v20);
      sub_2964D2AB8(&v22);
      if ((v12 & 1) == 0)
      {
        return -1;
      }
    }

    else
    {
      v8 = 0;
    }

    if (v5 == 1)
    {
      goto LABEL_39;
    }

    if (v5 == 3)
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (rmdir(v13))
      {
LABEL_36:
        v14 = __error();
        v15 = 0;
        v16 = *v14;
        if (v16 == 2 || v16 == 20)
        {
LABEL_40:
          if (a2)
          {
LABEL_41:
            v17 = a2[2];
            if ((v17 & 1) != 0 && (v17 != 1 || *a2))
            {
              return -1;
            }
          }

          return v15 + v8;
        }

        sub_2964CFA9C(v16, a1, a2, "boost::filesystem::remove");
LABEL_39:
        v15 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if (*(a1 + 23) >= 0)
      {
        v18 = a1;
      }

      else
      {
        v18 = *a1;
      }

      if (unlink(v18))
      {
        goto LABEL_36;
      }
    }

    v15 = 1;
    if (a2)
    {
      goto LABEL_41;
    }

    return v15 + v8;
  }

  return result;
}

void sub_2964D6B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  rename(a1, a2, a3);
  if (v6 && (v7 = *__error(), v7))
  {

    sub_2964CFC08(v7, v5, v4, a3, "boost::filesystem::rename");
  }

  else if (a3)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t sub_2964D6BC8(uint64_t a1, off_t a2, void *a3)
{
  v4 = a1;
  if (a2 < 0)
  {
    result = 27;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    result = truncate(a1, a2);
    if (!result || (result = *__error(), !result))
    {
      if (a3)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      return result;
    }
  }

  return sub_2964CFA9C(result, v4, a3, "boost::filesystem::resize_file");
}

uint64_t sub_2964D6C5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v11 = *MEMORY[0x29EDCA608];
  a3[1] = -1;
  a3[2] = -1;
  *a3 = -1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  result = statfs(a1, &v10);
  if (result && (result = *__error(), result))
  {
    result = sub_2964CFA9C(result, v4, a2, "boost::filesystem::space");
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    f_bsize = v10.f_bsize;
    v8 = v10.f_bfree * v10.f_bsize;
    *a3 = v10.f_blocks * v10.f_bsize;
    a3[1] = v8;
    a3[2] = v10.f_bavail * f_bsize;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2964D6D44(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  v4 = getenv("TMPDIR");
  if (!v4)
  {
    v4 = getenv("TMP");
    if (!v4)
    {
      v4 = getenv("TEMP");
      if (!v4)
      {
        v4 = getenv("TEMPDIR");
      }
    }
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "/tmp";
  }

  sub_2964A2B70(__p, v5);
  v6 = HIBYTE(v10);
  if (v10 < 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
    goto LABEL_20;
  }

  sub_2964D37C8(__p, a1, &v8);
  if (!a1 || (v7 = a1[2], (v7 & 1) == 0) || v7 == 1 && !*a1)
  {
    if (v8 == 3)
    {
LABEL_18:
      *a2 = *__p;
      *(a2 + 16) = v10;
      return;
    }

LABEL_20:
    sub_2964CFA9C(20, __p, a1, "boost::filesystem::temp_directory_path");
    goto LABEL_18;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964D6E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D6E88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    sub_2964D8310(a1);
    if (!v6)
    {
      sub_2964D4A14(0, &v10);
      sub_2964D7680(&v10, a1);
      *a2 = *&v10.__r_.__value_.__l.__data_;
      v7 = v10.__r_.__value_.__r.__words[2];
      goto LABEL_12;
    }

    v5 = *(a1 + 23);
  }

  if ((v5 & 0x80) == 0)
  {
    *a2 = *a1;
    v7 = *(a1 + 16);
LABEL_12:
    *(a2 + 16) = v7;
    return;
  }

  v8 = *a1;
  v9 = *(a1 + 8);

  sub_2964A3B5C(a2, v8, v9);
}

void sub_2964D6F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2964D6F5C@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = sub_2964D8648(a1);
  v5 = v2[23];
  if (v5 < 0)
  {
    v6 = v2;
    v2 = *v2;
    v5 = *(v6 + 1);
  }

  return sub_2964D28E8(a2, &v2[v5 - v4], &v2[v5], v4);
}

ssize_t sub_2964D6FB4()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v4 = v3;
  v5 = v0;
  v16 = *MEMORY[0x29EDCA608];
  if (v1 == -1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v1 + 1;
  }

  if (v6 <= v2)
  {
    v6 = v2;
  }

  if (v6 <= 0x2000)
  {
    v6 = 0x2000;
  }

  if (v6 >= 0x40000)
  {
    LODWORD(v6) = 0x40000;
  }

  v7 = (v6 - 1) | ((v6 - 1) >> 1) | (((v6 - 1) | ((v6 - 1) >> 1)) >> 2);
  v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
  v9 = (v8 | HIWORD(v8)) + 1;
  v10 = operator new[](v9, MEMORY[0x29EDC9418]);
  if (v10)
  {
    v11 = v10;
    v12 = sub_2964D70F0(v5, v4, v10, v9);
    operator delete[](v11);
  }

  else
  {
    v12 = sub_2964D70F0(v5, v4, v15, 0x2000uLL);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

ssize_t sub_2964D70F0(int a1, int a2, char *a3, size_t a4)
{
  result = read(a1, a3, a4);
  if (result)
  {
    v9 = result;
    do
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        v10 = 0;
        while (1)
        {
          v11 = write(a2, &a3[v10], v9 - v10);
          if (v11 < 0)
          {
            result = *__error();
            if (result != 4)
            {
              return result;
            }
          }

          else
          {
            v10 += v11;
          }

          if (v10 >= v9)
          {
            goto LABEL_12;
          }
        }
      }

      result = *__error();
      if (result != 4)
      {
        break;
      }

LABEL_12:
      result = read(a1, a3, a4);
      v9 = result;
    }

    while (result);
  }

  return result;
}

void sub_2964D71A8(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t sub_2964D7274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2964CFA9C(a1, v5, v4, a4);
}

int *sub_2964D728C()
{

  return __error();
}

void sub_2964D72A4(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  v4 = *(a2 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    if (a1 == a2)
    {
      if (v2 < 0)
      {
        sub_2964A3B5C(__p, *a2, v4);
      }

      else
      {
        *__p = *a2;
        v12 = *(a2 + 16);
      }

      sub_2964D72A4(a1, __p);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v8 = *a2;
      if ((v2 & 0x80u) == 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if (*v9 != 47)
      {
        sub_2964D73AC(a1);
        v2 = *(a2 + 23);
        v8 = *a2;
        v4 = *(a2 + 8);
        v3 = *(a2 + 23);
      }

      if (v3 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = v8;
      }

      if (v3 >= 0)
      {
        v4 = v2;
      }

      std::string::append(a1, v10, v4);
    }
  }
}

void sub_2964D7390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964D73AC(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return 0;
    }

    v2 = a1 + v1;
LABEL_6:
    if (*(v2 - 1) != 47)
    {
      std::string::push_back(a1, 47);
      return v1;
    }

    return 0;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1 + v1;
    goto LABEL_6;
  }

  return v1;
}

void sub_2964D740C(std::string *this, std::string *__src, std::string *a3)
{
  if (__src == a3)
  {
    return;
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = this->__r_.__value_.__r.__words[0];
    if (this->__r_.__value_.__r.__words[0] <= __src)
    {
      size = this->__r_.__value_.__l.__size_;
LABEL_7:
      if ((v7 + size) > __src)
      {
        sub_2964D28E8(__dst, __src, a3, a3 - __src);
        sub_2964D72A4(this, __dst);
        sub_2964DA9FC(__dst);
        return;
      }
    }
  }

  else if (this <= __src)
  {
    v7 = this;
    goto LABEL_7;
  }

  if (__src->__r_.__value_.__s.__data_[0] != 47)
  {
    sub_2964D73AC(this);
  }

  sub_2964D7508(this, __src, a3);
}

void sub_2964D74EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2964D7508(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_2964D28E8(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_2964D7664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D7680(uint64_t a1, const std::string *a2)
{
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = a2;
    if (a1 == a2)
    {
      if (v3 < 0)
      {
        sub_2964A3B5C(__n, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        *__n = *&a2->__r_.__value_.__l.__data_;
        v15 = a2->__r_.__value_.__r.__words[2];
      }

      sub_2964D7680(a1, __n);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__n[0]);
      }
    }

    else
    {
      if (v3 >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2->__r_.__value_.__r.__words[0];
      }

      __n[0] = 0;
      if (sub_2964D7844(v6, size, __n) < size)
      {
LABEL_25:
        std::string::operator=(a1, v5);
        return;
      }

      v16 = 0;
      v7 = *(a1 + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v8 = *a1;
        v7 = *(a1 + 8);
      }

      else
      {
        v8 = a1;
      }

      sub_2964D7844(v8, v7, &v16);
      v9 = __n[0];
      if (__n[0])
      {
        if (__n[0] != v16)
        {
          goto LABEL_25;
        }

        v10 = a1;
        if (*(a1 + 23) < 0)
        {
          v10 = *a1;
        }

        v11 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
        v12 = v5->__r_.__value_.__r.__words[0];
        v13 = v11 >= 0 ? v5 : v5->__r_.__value_.__r.__words[0];
        if (memcmp(v10, v13, __n[0]))
        {
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v11) = *(&v5->__r_.__value_.__s + 23);
        v12 = v5->__r_.__value_.__r.__words[0];
      }

      if ((v11 & 0x80u) != 0)
      {
        v5 = v12;
      }

      if (v5->__r_.__value_.__s.__data_[v9] != 47)
      {
        sub_2964D73AC(a1);
      }

      std::string::append(a1, v5 + v9, size - v9);
    }
  }

  else if (sub_2964D8648(a1))
  {

    std::string::push_back(a1, 47);
  }
}

void sub_2964D7828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2964D7844(_BYTE *__s, size_t a2, size_t *a3)
{
  *a3 = 0;
  if (a2 && *__s == 47)
  {
    if (a2 == 1 || __s[1] != 47)
    {
      return 0;
    }

    v4 = a2 - 2;
    if (a2 != 2)
    {
      v5 = __s + 2;
      if (__s[2] == 47)
      {
        return 0;
      }

      v7 = memchr(v5, 47, v4);
      v8 = v7 - v5;
      if (!v7)
      {
        v8 = v4;
      }

      a2 = v8 + 2;
    }

    *a3 = a2;
  }

  return a2;
}

void sub_2964D78E0(unint64_t a1, std::string *__src, std::string *a3)
{
  if (__src != a3)
  {
    v6 = *(a1 + 23);
    if (v6 < 0)
    {
      v7 = *a1;
      if (*a1 <= __src)
      {
        v6 = *(a1 + 8);
LABEL_11:
        if (&v7[v6] > __src)
        {
          sub_2964D28E8(&__n, __src, a3, a3 - __src);
          sub_2964D7680(a1, &__n);
          sub_2964DA9FC(&__n);
          return;
        }
      }
    }

    else if (a1 <= __src)
    {
      v7 = a1;
      goto LABEL_11;
    }

    __n.__r_.__value_.__r.__words[0] = 0;
    if (sub_2964D7844(__src, a3 - __src, &__n) < a3 - __src)
    {
      goto LABEL_21;
    }

    v13 = 0;
    v8 = *(a1 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = *a1;
      v8 = *(a1 + 8);
    }

    else
    {
      v9 = a1;
    }

    sub_2964D7844(v9, v8, &v13);
    v10 = __n.__r_.__value_.__r.__words[0];
    if (!__n.__r_.__value_.__r.__words[0])
    {
      goto LABEL_22;
    }

    if (__n.__r_.__value_.__r.__words[0] != v13)
    {
      goto LABEL_21;
    }

    v11 = a1;
    if (*(a1 + 23) < 0)
    {
      v11 = *a1;
    }

    if (!memcmp(v11, __src, __n.__r_.__value_.__r.__words[0]))
    {
LABEL_22:
      if (__src->__r_.__value_.__s.__data_[v10] != 47)
      {
        sub_2964D73AC(a1);
      }

      sub_2964D7508(a1, (__src + v10), a3);
    }

    else
    {
LABEL_21:
      sub_2964D71A8(a1, __src, a3, a3 - __src);
    }

    return;
  }

  if (sub_2964D8648(a1))
  {

    std::string::push_back(a1, 47);
  }
}

void sub_2964D7A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964D7A90(size_t a1, size_t a2)
{
  sub_2964D7C4C(a1, &v11);
  memset(v10, 0, 24);
  v10[3] = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
  }

  v10[4] = v4;
  sub_2964D7C4C(a2, &__p);
  memset(v8, 0, 24);
  v8[3] = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  v8[4] = v5;
  v6 = sub_2964D7B48(&v11, v10, &__p, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v6;
}

uint64_t sub_2964D7B48(std::string *a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  data = a1[1].__r_.__value_.__l.__data_;
  size = a1[1].__r_.__value_.__l.__size_;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (data == v8 && size == v9)
  {
LABEL_16:
    v8 = data;
    v9 = size;
  }

  else if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    while ((sub_2964D955C(a1, &a3->__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      if ((sub_2964D955C(a3, &a1->__r_.__value_.__l.__data_) & 0x80) != 0)
      {
        return 1;
      }

      sub_2964D9594(a1);
      sub_2964D9594(a3);
      data = a1[1].__r_.__value_.__l.__data_;
      size = a1[1].__r_.__value_.__l.__size_;
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (data == v8 && size == v9)
      {
        goto LABEL_16;
      }

      if (a3[1].__r_.__value_.__r.__words[0] == *(a4 + 24) && a3[1].__r_.__value_.__l.__size_ == *(a4 + 32))
      {
        goto LABEL_17;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_17:
  if (data != v8 || size != v9)
  {
    return 1;
  }

  if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

size_t sub_2964D7C4C@<X0>(size_t result@<X0>, std::string *a2@<X8>)
{
  v2 = result;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2[1].__r_.__value_.__r.__words[0] = result;
  v4 = *(result + 23);
  v5 = *(result + 8);
  if (v4 >= 0)
  {
    v6 = *(result + 23);
  }

  else
  {
    v6 = *(result + 8);
  }

  a2[1].__r_.__value_.__l.__size_ = 0;
  if (v4 < 0)
  {
    if (!v5)
    {
      return result;
    }

    v14.__r_.__value_.__r.__words[0] = 0;
    result = *result;
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    v14.__r_.__value_.__r.__words[0] = 0;
  }

  result = sub_2964D7844(result, v6, &v14);
  v7 = v14.__r_.__value_.__r.__words[0];
  if (v14.__r_.__value_.__r.__words[0])
  {
    goto LABEL_10;
  }

  v8 = result;
  if (result < v6)
  {
    a2[1].__r_.__value_.__l.__size_ = result;
    v7 = 1;
    goto LABEL_13;
  }

  v9 = *(v2 + 23);
  v10 = v9 < 0;
  if (v9 >= 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = *v2;
  }

  if (v10)
  {
    v7 = *(v2 + 8);
  }

  else
  {
    v7 = *(v2 + 23);
  }

  if (!v7)
  {
LABEL_25:
    if (!v7)
    {
      return result;
    }

LABEL_10:
    v8 = 0;
LABEL_13:
    result = std::string::basic_string(&v14, v2, v8, v7, &v15);
    *a2 = v14;
    return result;
  }

  v12 = 0;
  while (*(v11 + v12) != 47)
  {
    if (v7 == ++v12)
    {
      goto LABEL_25;
    }
  }

  if (v12 == -1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 != v12)
  {
    v7 = v13;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2964D7D64@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = result;
  v2 = *(result + 23);
  if (v2 < 0)
  {
    v2 = *(result + 8);
  }

  a2[4] = v2;
  return result;
}

uint64_t sub_2964D7D80(size_t a1, size_t a2)
{
  sub_2964D7C4C(a1, &v11);
  memset(v10, 0, 24);
  v10[3] = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
  }

  v10[4] = v4;
  sub_2964D7C4C(a2, &__p);
  memset(v8, 0, 24);
  v8[3] = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  v8[4] = v5;
  v6 = sub_2964D7E38(&v11, v10, &__p, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v6;
}

uint64_t sub_2964D7E38(std::string *a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  data = a1[1].__r_.__value_.__l.__data_;
  size = a1[1].__r_.__value_.__l.__size_;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (data == v8 && size == v9)
  {
LABEL_16:
    v8 = data;
    v9 = size;
  }

  else if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    while ((sub_2964D955C(a1, &a3->__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      if ((sub_2964D955C(a3, &a1->__r_.__value_.__l.__data_) & 0x80) != 0)
      {
        return 1;
      }

      sub_2964D97EC(a1);
      sub_2964D97EC(a3);
      data = a1[1].__r_.__value_.__l.__data_;
      size = a1[1].__r_.__value_.__l.__size_;
      v8 = *(a2 + 24);
      v9 = *(a2 + 32);
      if (data == v8 && size == v9)
      {
        goto LABEL_16;
      }

      if (a3[1].__r_.__value_.__r.__words[0] == *(a4 + 24) && a3[1].__r_.__value_.__l.__size_ == *(a4 + 32))
      {
        goto LABEL_17;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_17:
  if (data != v8 || size != v9)
  {
    return 1;
  }

  if (a3[1].__r_.__value_.__r.__words[0] != *(a4 + 24) || a3[1].__r_.__value_.__l.__size_ != *(a4 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

std::string *sub_2964D7F3C(std::string *result, std::string::size_type a2)
{
  if (a2)
  {
    v2 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
    v3 = v2 < 0 ? result->__r_.__value_.__l.__size_ : SHIBYTE(result->__r_.__value_.__r.__words[2]);
    if (v3 > a2)
    {
      v4 = a2 + 1;
      if ((v2 & 0x80000000) != 0)
      {
        v5 = *(result->__r_.__value_.__r.__words[0] + v4);
      }

      else
      {
        v5 = result->__r_.__value_.__s.__data_[v4];
      }

      if (v5 == 47)
      {
        return std::string::erase(result, a2, 1uLL);
      }
    }
  }

  return result;
}

std::string *sub_2964D7F88(std::string *a1)
{
  v2 = sub_2964D7FE0(a1);
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 < 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    v4 = a1->__r_.__value_.__r.__words[0] + a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v4 = a1 + v3;
    v5 = a1;
  }

  std::string::erase(a1, v2, v4 - (v5 + v2));
  return a1;
}

size_t sub_2964D7FE0(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v17 = 0;
  v3 = sub_2964D7844(a1, v2, &v17);
  v4 = v1[23];
  v5 = *v1;
  if (v2 >= v17)
  {
    v6 = v17;
  }

  else
  {
    v6 = v2;
  }

  if (v4 >= 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = *v1;
  }

  v8 = v7 - 1;
  v9 = v2;
  while (v9 > v17)
  {
    v10 = v9 - 1;
    v11 = v8[v9--];
    if (v11 == 47)
    {
      v6 = v10 + 1;
      break;
    }
  }

  if (v6 >= v17)
  {
    v12 = v17;
  }

  else
  {
    v12 = v6;
  }

  if (v4 >= 0)
  {
    v13 = v1;
  }

  else
  {
    v13 = *v1;
  }

  v14 = v13 - 1;
  v15 = v6;
  while (v15 > v17)
  {
    if (v14[v15] != 47)
    {
      return v15;
    }

    if (v3 == --v15)
    {
      if (v2 == v6)
      {
        return v3;
      }

      else
      {
        return v3 + 1;
      }
    }
  }

  if (v2 == v6)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

std::string *sub_2964D80C0(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (!size)
    {
      return this;
    }
  }

  else
  {
    if (!*(&this->__r_.__value_.__s + 23))
    {
      return this;
    }

    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  v4 = size - 1;
  if ((v2 & 0x80000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    if (*(this->__r_.__value_.__r.__words[0] + v4) == 47)
    {
      v5 = (v6 + this->__r_.__value_.__l.__size_);
      goto LABEL_10;
    }
  }

  else if (this->__r_.__value_.__s.__data_[v4] == 47)
  {
    v5 = this + v2;
    v6 = this;
LABEL_10:
    std::string::erase(this, &v5[~v6], 1uLL);
  }

  return this;
}

std::string *sub_2964D814C(std::string *a1, uint64_t a2)
{
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  sub_2964D8960(a1, &__p);
  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  v6 = size - v5;
  v7 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v6 <= v7)
    {
      *(&a1->__r_.__value_.__s + 23) = v6;
      v8 = a1;
      goto LABEL_10;
    }

LABEL_27:
    sub_2964DA080();
  }

  if (a1->__r_.__value_.__l.__size_ < v6)
  {
    goto LABEL_27;
  }

  v8 = a1->__r_.__value_.__r.__words[0];
  a1->__r_.__value_.__l.__size_ = v6;
LABEL_10:
  v8->__r_.__value_.__s.__data_[v6] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = *(a2 + 23);
  if (v9 < 0)
  {
    if (!*(a2 + 8))
    {
      return a1;
    }

    v10 = *a2;
  }

  else
  {
    v10 = a2;
    if (!*(a2 + 23))
    {
      return a1;
    }
  }

  if (*v10 != 46)
  {
    std::string::push_back(a1, 46);
    LOBYTE(v9) = *(a2 + 23);
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(a2 + 8);
  }

  std::string::append(a1, v11, v12);
  return a1;
}

void sub_2964D825C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2964D8278(_BYTE *a1)
{
  v4 = 0;
  v1 = a1[23];
  if ((v1 & 0x8000000000000000) != 0)
  {
    v2 = a1;
    a1 = *a1;
    v1 = *(v2 + 1);
  }

  sub_2964D7844(a1, v1, &v4);
  return v4;
}

size_t sub_2964D82B0(_BYTE *a1)
{
  v1 = a1;
  v6 = 0;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v3 = sub_2964D7844(a1, v2, &v6);
  v4 = v1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v1 + 1);
  }

  if (v3 < v4)
  {
    return v3 + 1;
  }

  else
  {
    return v6;
  }
}

size_t sub_2964D8310(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  result = sub_2964D7844(a1, v2, &v5);
  if ((v1[23] & 0x8000000000000000) != 0)
  {
    v4 = *(v1 + 1);
  }

  return result;
}

size_t sub_2964D8368(_BYTE *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v3 = sub_2964D7844(a1, v2, &v11);
  result = v11;
  v5 = v1[23];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *(v1 + 1);
    if (v3 >= v6)
    {
LABEL_16:
      v10 = *(v1 + 1);
      return result;
    }
  }

  else
  {
    v6 = v1[23];
    if (v3 >= v5)
    {
      return result;
    }
  }

  v7 = v3 + 1;
  if (v6 <= v3 + 1)
  {
    result = v3 + 1;
  }

  else
  {
    result = v6;
  }

  while (v7 < v6)
  {
    v8 = v1;
    if ((v5 & 0x80000000) != 0)
    {
      v8 = *v1;
    }

    v9 = v8[v7++];
    if (v9 != 47)
    {
      result = v7 - 1;
      break;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

void *sub_2964D841C@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v4 = *(v2 + 1);
  }

  v27 = 0;
  result = sub_2964D7844(a1, v4, &v27);
  if (result >= v4)
  {
    LOBYTE(v6) = v2[23];
  }

  else
  {
    v6 = v2[23];
    v7 = v2;
    if (v6 < 0)
    {
      v7 = *v2;
    }

    if (v7[v4 - 1] == 47)
    {
      v8 = *v2;
      if (v6 >= 0)
      {
        v8 = v2;
      }

      v9 = v8 - 2;
      v10 = v4;
      while (1)
      {
        v11 = (v10 - 1);
        if (v10 - 1 <= result)
        {
          break;
        }

        v12 = v9[v10--];
        if (v12 != 47)
        {
          if (result != v11)
          {
            goto LABEL_16;
          }

          break;
        }
      }

      v4 = 1;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

LABEL_16:
  if (v27 == v4)
  {
    result = 0;
    if ((v6 & 0x80) == 0)
    {
LABEL_19:

      return sub_2964D28E8(a2, result + v2, result + v2 + v4, v4);
    }

LABEL_18:
    v2 = *v2;
    goto LABEL_19;
  }

  v13 = *v2;
  if (v4 >= v27)
  {
    v14 = v27;
  }

  else
  {
    v14 = v4;
  }

  if ((v6 & 0x80u) == 0)
  {
    v15 = v2;
  }

  else
  {
    v15 = *v2;
  }

  v16 = v15 - 1;
  v17 = v4;
  while (v17 > v27)
  {
    v18 = v17 - 1;
    v19 = v16[v17--];
    if (v19 == 47)
    {
      v14 = v18 + 1;
      break;
    }
  }

  v4 -= v14;
  if (v4)
  {
LABEL_47:
    result = v14;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v14 <= v27)
  {
    goto LABEL_46;
  }

  v20 = (v14 - 1);
  v21 = (v6 & 0x80u) == 0 ? v2 : *v2;
  if (*(v20 + v21) != 47)
  {
    goto LABEL_46;
  }

  if (v20 >= result)
  {
    v20 = result;
  }

  v22 = v21 - 2;
  v23 = v14;
  while (1)
  {
    v24 = (v23 - 1);
    if (v23 - 1 <= result)
    {
      break;
    }

    v25 = v22[v23--];
    if (v25 != 47)
    {
      goto LABEL_45;
    }
  }

  v24 = v20;
LABEL_45:
  if (v24 == result)
  {
LABEL_46:
    v4 = 0;
    goto LABEL_47;
  }

  if (byte_2A18984A7 < 0)
  {
    v26 = xmmword_2A1898490;

    return sub_2964A3B5C(a2, v26, *(&v26 + 1));
  }

  else
  {
    *a2 = xmmword_2A1898490;
    a2[2] = unk_2A18984A0;
  }

  return result;
}

size_t sub_2964D8648(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v10 = 0;
  sub_2964D7844(a1, v2, &v10);
  if (v2 >= v10)
  {
    v3 = v10;
  }

  else
  {
    v3 = v2;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  v5 = v4 - 1;
  v6 = v2;
  while (v6 > v10)
  {
    v7 = v6 - 1;
    v8 = v5[v6--];
    if (v8 == 47)
    {
      v3 = v7 + 1;
      return v2 - v3;
    }
  }

  return v2 - v3;
}

std::string *sub_2964D86DC@<X0>(_BYTE *a1@<X0>, size_t a2@<X8>)
{
  sub_2964D841C(a1, a2);
  result = sub_2964D7D80(a2, &xmmword_2A1898490);
  if (result)
  {
    result = sub_2964D7D80(a2, qword_2A1898478);
    if (result)
    {
      v4 = *(a2 + 23);
      v5 = (v4 & 0x80u) == 0 ? a2 : *a2;
      v6 = (v4 & 0x80u) == 0 ? *(a2 + 23) : *(a2 + 8);
      if (v6)
      {
        v7 = v6 + v5;
        v8 = v5 - 1;
        while (v6)
        {
          v9 = *(v8 + v6);
          --v7;
          --v6;
          if (v9 == 46)
          {
            if (v6 != -1)
            {
              v10 = v4;
              v11 = a2 + v4;
              if (v10 < 0)
              {
                v11 = *a2 + *(a2 + 8);
              }

              return std::string::erase(a2, v6, v11 - v7);
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

void sub_2964D878C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2964D87B4@<X0>(_BYTE *a1@<X0>, size_t a2@<X8>)
{
  sub_2964D6F5C(a1, a2);
  result = sub_2964D7D80(a2, &xmmword_2A1898490);
  if (result)
  {
    result = sub_2964D7D80(a2, qword_2A1898478);
    if (result)
    {
      v4 = *(a2 + 23);
      v5 = (v4 & 0x80u) == 0 ? a2 : *a2;
      v6 = (v4 & 0x80u) == 0 ? *(a2 + 23) : *(a2 + 8);
      if (v6)
      {
        v7 = v6 + v5;
        v8 = v5 - 1;
        while (v6)
        {
          v9 = *(v8 + v6);
          --v7;
          --v6;
          if (v9 == 46)
          {
            if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v10 = v4;
              v11 = a2 + v4;
              if (v10 < 0)
              {
                v11 = *a2 + *(a2 + 8);
              }

              return std::string::erase(a2, v6, v11 - v7);
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

void sub_2964D8868(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D8884(_BYTE *a1@<X0>, void *a2@<X8>)
{
  sub_2964D841C(a1, __p);
  if (sub_2964D7D80(__p, &xmmword_2A1898490) && sub_2964D7D80(__p, qword_2A1898478))
  {
    v3 = v9;
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) != 0)
    {
      v3 = __p[1];
    }

    if (v3)
    {
      v5 = v4 + v3;
      v6 = ~v3;
      while (v6 != -1)
      {
        v7 = *--v5;
        ++v6;
        if (v7 == 46)
        {
          if (!v6)
          {
            break;
          }

          sub_2964A2B70(a2, v5);
          goto LABEL_15;
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_15:
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964D8944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D8960(_BYTE *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v4 = *(v2 + 1);
  }

  v17 = 0;
  sub_2964D7844(a1, v4, &v17);
  v5 = v2[23];
  v6 = *v2;
  if (v4 >= v17)
  {
    v7 = v17;
  }

  else
  {
    v7 = v4;
  }

  if (v5 >= 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = *v2;
  }

  v9 = v8 - 1;
  v10 = v4;
  while (v10 > v17)
  {
    v11 = v10 - 1;
    v12 = v9[v10--];
    if (v12 == 47)
    {
      v7 = v11 + 1;
      break;
    }
  }

  v13 = v4 - v7;
  if (v4 != v7)
  {
    v14 = v5 >= 0 ? v2 : *v2;
    if (v14[v7] != 46 || v13 != 1 && (v13 != 2 || v14[v7 + 1] != 46))
    {
      v15 = 0;
      while (v4 + v15 > v7)
      {
        v16 = v14[v4 - 1 + v15--];
        if (v16 == 46)
        {
          if (v4 + v15 > v7)
          {
            sub_2964D71A8(a2, &v14[v4 + v15], &v14[v4], -v15);
          }

          return;
        }
      }
    }
  }
}

void sub_2964D8A8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D8AA8(size_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2964D7C4C(a1, &v29);
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 8);
  }

  sub_2964D7C4C(a2, &v27);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2964A3B5C(&__dst, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v29;
  }

  v22 = v30;
  v9 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2964A3B5C(&__p, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v27;
  }

  v20 = v28;
  while (v22 != __PAIR128__(v6, a1))
  {
    v10 = v20 == a2 && *(&v20 + 1) == v7;
    if (v10 || sub_2964D7D80(&__dst, &__p))
    {
      break;
    }

    sub_2964D97EC(&__dst);
    sub_2964D97EC(&__p);
  }

  sub_2964DA128(&v23, &__dst, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v24 == v30 && v26 == v28)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_67;
  }

  if (v24 == __PAIR128__(v6, a1) && v26 == __PAIR128__(v7, a2))
  {
    if ((byte_2A18984A7 & 0x80000000) == 0)
    {
      *a3 = xmmword_2A1898490;
      v11 = unk_2A18984A0;
LABEL_65:
      *(a3 + 16) = v11;
      goto LABEL_67;
    }

LABEL_66:
    sub_2964A3B5C(a3, xmmword_2A1898490, *(&xmmword_2A1898490 + 1));
    goto LABEL_67;
  }

  v12 = 0;
  while (v26 != a2 || *(&v26 + 1) != v7)
  {
    if (sub_2964D7D80(&v25, qword_2A1898478))
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      if (size && sub_2964D7D80(&v25, &xmmword_2A1898490))
      {
        ++v12;
      }
    }

    else
    {
      --v12;
    }

    sub_2964D97EC(&v25);
  }

  if (v12 < 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_67;
  }

  if (v12)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    v15 = v12 + 1;
    *(a3 + 16) = 0;
    do
    {
      sub_2964D7680(a3, qword_2A1898478);
      --v15;
    }

    while (v15 > 1);
  }

  else
  {
    if (v24 == a1 && *(&v24 + 1) == v6)
    {
      goto LABEL_63;
    }

    v18 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v23.__r_.__value_.__l.__size_;
    }

    if (!v18)
    {
LABEL_63:
      if ((byte_2A18984A7 & 0x80000000) == 0)
      {
        *a3 = xmmword_2A1898490;
        v11 = unk_2A18984A0;
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  while (v24 != a1 || *(&v24 + 1) != v6)
  {
    sub_2964D7680(a3, &v23);
    sub_2964D97EC(&v23);
  }

LABEL_67:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_71:
      if ((v8 & 0x80000000) == 0)
      {
        return;
      }

LABEL_75:
      operator delete(v29.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
  if (v8 < 0)
  {
    goto LABEL_75;
  }
}

void sub_2964D8E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_2964D8F04(&a30);
  if (v30 < 0)
  {
    operator delete(*(v31 - 176));
  }

  if (a11 < 0)
  {
    operator delete(*(v31 - 136));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2964D8F04(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2964D8F48(void *__s@<X0>, uint64_t a2@<X8>)
{
  v2 = __s;
  v4 = *(__s + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v2 = *__s;
    v4 = __s[1];
  }

  v26 = 0;
  v5 = sub_2964D7844(v2, v4, &v26);
  v6 = v26;
  sub_2964D28E8(a2, v2, &v2[v26], v26);
  if (v5 < v4)
  {
    std::string::push_back(a2, 47);
    v6 = v5 + 1;
  }

  if (v6 >= v4)
  {
    return;
  }

  v7 = v6;
  while (v2[v7] == 47)
  {
    if (v4 == ++v7)
    {
      return;
    }
  }

  while (1)
  {
    v13 = &v2[v7];
    v14 = v4 - v7;
    v15 = memchr(&v2[v7], 47, v4 - v7);
    if (v15)
    {
      v14 = v15 - v13;
    }

    if (v14 != 2)
    {
      if (v14 == 1 && *v13 == 46)
      {
        v16 = 1;
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (*v13 == 46 && v13[1] == 46)
    {
      v17 = *(a2 + 23);
      if ((v17 & 0x8000000000000000) != 0)
      {
        v18 = *(a2 + 8);
        if (v18 <= v6)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v18 = *(a2 + 23);
        if (v6 >= v17)
        {
          goto LABEL_56;
        }
      }

      v12 = *a2;
      if (v18 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v18;
      }

      if ((v17 & 0x80000000) == 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      v20 = v19 - 1;
      v21 = v18;
      while (v21 > v6)
      {
        v22 = v21 - 1;
        v23 = *(v20 + v21--);
        if (v23 == 47)
        {
          v9 = v22 + 1;
          break;
        }
      }

      if (v18 - v9 != 2 || ((v17 & 0x80000000) == 0 ? (v24 = a2) : (v24 = *a2), *(v24 + v9) != 46 || *(v24 + v9 + 1) != 46))
      {
        if (v9 > v6)
        {
          v8 = (v17 & 0x80000000) == 0 ? a2 : *a2;
          if (*(v8 + v9 - 1) == 47)
          {
            --v9;
          }
        }

        v10 = (v17 & 0x80000000) != 0;
        if ((v17 & 0x80000000) == 0)
        {
          v11 = a2 + v17;
        }

        else
        {
          v11 = v12 + *(a2 + 8);
        }

        if (!v10)
        {
          v12 = a2;
        }

        std::string::erase(a2, v9, v11 - (v9 + v12));
        goto LABEL_57;
      }
    }

LABEL_56:
    sub_2964D73AC(a2);
    std::string::append(a2, &v2[v7], v14);
LABEL_57:
    v16 = 0;
LABEL_58:
    v7 += v14;
    if (v7 == v4)
    {
      break;
    }

    if (v7 < v4)
    {
      while (v2[v7] == 47)
      {
        if (++v7 >= v4)
        {
          goto LABEL_62;
        }
      }
    }

    if (v7 == v4)
    {
      goto LABEL_62;
    }
  }

  v25 = *(a2 + 23);
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a2 + 8);
  }

  if (((v25 != 0) & ~v16) == 0)
  {
LABEL_62:
    sub_2964D73AC(a2);
    std::string::push_back(a2, 46);
  }
}

void sub_2964D91D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964D91F8(void *__s@<X0>, uint64_t a2@<X8>)
{
  v2 = __s;
  v4 = *(__s + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v2 = *__s;
    v4 = __s[1];
  }

  v32 = 0;
  v5 = sub_2964D7844(v2, v4, &v32);
  v6 = v32;
  sub_2964D28E8(a2, v2, &v2[v32], v32);
  if (v5 < v4)
  {
    std::string::push_back(a2, 47);
    v6 = v5 + 1;
  }

  if (v6 >= v4)
  {
    return;
  }

  v7 = v6;
  while (v2[v7] == 47)
  {
    if (v4 == ++v7)
    {
      return;
    }
  }

  do
  {
    v13 = &v2[v7];
    v14 = v4 - v7;
    v15 = memchr(&v2[v7], 47, v4 - v7);
    if (v15)
    {
      v14 = v15 - v13;
    }

    v7 += v14;
    if (v14 == 2)
    {
      if (*v13 != 46 || v13[1] != 46)
      {
        goto LABEL_57;
      }

      v16 = *(a2 + 23);
      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = *(a2 + 8);
        if (v17 <= v6)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = *(a2 + 23);
        if (v6 >= v16)
        {
          goto LABEL_57;
        }
      }

      v12 = *a2;
      if (v17 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v17;
      }

      if ((v16 & 0x80000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = v18 - 1;
      v20 = v17;
      while (v20 > v6)
      {
        v21 = v20 - 1;
        v22 = *(v19 + v20--);
        if (v22 == 47)
        {
          v9 = v21 + 1;
          break;
        }
      }

      if (v17 - v9 != 2 || ((v16 & 0x80000000) == 0 ? (v23 = a2) : (v23 = *a2), *(v23 + v9) != 46 || *(v23 + v9 + 1) != 46))
      {
        if (v9 > v6)
        {
          v8 = (v16 & 0x80000000) == 0 ? a2 : *a2;
          if (*(v8 + v9 - 1) == 47)
          {
            --v9;
          }
        }

        v10 = (v16 & 0x80000000) != 0;
        if ((v16 & 0x80000000) == 0)
        {
          v11 = a2 + v16;
        }

        else
        {
          v11 = v12 + *(a2 + 8);
        }

        if (!v10)
        {
          v12 = a2;
        }

        std::string::erase(a2, v9, v11 - (v9 + v12));
LABEL_58:
        if (v7 == v4)
        {
          goto LABEL_79;
        }

        goto LABEL_10;
      }

LABEL_57:
      sub_2964D73AC(a2);
      std::string::append(a2, v13, v14);
      goto LABEL_58;
    }

    if (v14 != 1 || *v13 != 46)
    {
      goto LABEL_57;
    }

    if (v7 == v4)
    {
      break;
    }

LABEL_10:
    if (v7 < v4)
    {
      while (v2[v7] == 47)
      {
        if (++v7 >= v4)
        {
          goto LABEL_60;
        }
      }
    }
  }

  while (v7 != v4);
LABEL_60:
  v24 = *(a2 + 23);
  v25 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    v26 = *(a2 + 8);
    if (!v26)
    {
      goto LABEL_79;
    }

    if (v26 == 1)
    {
      goto LABEL_78;
    }

LABEL_66:
    v27 = v26 - 1;
    if ((v25 & 0x80) != 0)
    {
      if (*(*a2 + v27) != 46)
      {
        goto LABEL_78;
      }

      v28 = *(a2 + 8);
    }

    else
    {
      if (*(a2 + v27) != 46)
      {
        goto LABEL_78;
      }

      v28 = *(a2 + 23);
    }

    v29 = v28 - 2;
    if ((v25 & 0x80) != 0)
    {
      v30 = *a2;
      if (*(*a2 + v29) != 46)
      {
        goto LABEL_78;
      }

      v24 = *(a2 + 8);
      if (v24 == 2)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (*(a2 + v29) != 46)
      {
        goto LABEL_78;
      }

      if (v25 == 2)
      {
        goto LABEL_79;
      }

      v30 = a2;
    }

    if (*(v24 + v30 - 3) != 47)
    {
      goto LABEL_78;
    }
  }

  else if (*(a2 + 23))
  {
    if (v25 != 1)
    {
      v26 = *(a2 + 23);
      goto LABEL_66;
    }

LABEL_78:
    sub_2964D73AC(a2);
  }

LABEL_79:
  v31 = *(a2 + 23);
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(a2 + 8);
  }

  if (!v31)
  {
    std::string::push_back(a2, 46);
  }
}

void sub_2964D9530(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964D955C(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_2964DA1D8(a1, v2, v5, v6);
}

void sub_2964D9594(std::string *this)
{
  v1 = this;
  data = this[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(data + 1);
  }

  v4 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v6 = v1[1].__r_.__value_.__l.__size_ + v1->__r_.__value_.__l.__size_;
    v1[1].__r_.__value_.__l.__size_ = v6;
    if (v6 >= v3)
    {
      *v1->__r_.__value_.__l.__data_ = 0;
      v1->__r_.__value_.__l.__size_ = 0;
      return;
    }
  }

  else
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v6 = v1[1].__r_.__value_.__l.__size_ + v4;
    v1[1].__r_.__value_.__l.__size_ = v6;
    if (v6 >= v3)
    {
      v1->__r_.__value_.__s.__data_[0] = 0;
      *(&v1->__r_.__value_.__s + 23) = 0;
      return;
    }
  }

  v7 = data;
  if (data[23] < 0)
  {
    v7 = *data;
  }

  if (v7[v6] == 47)
  {
    v21 = 0;
    if (data[23] < 0)
    {
      data = *data;
    }

    v8 = sub_2964D7844(data, v3, &v21);
    v6 = *p_size;
    if (*p_size == v8)
    {
      v9 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
      if (v9 < 0)
      {
        if (v1->__r_.__value_.__l.__size_ == v21)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
          goto LABEL_19;
        }
      }

      else if (v21 == v9)
      {
        *(&v1->__r_.__value_.__s + 23) = 1;
LABEL_19:
        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }
    }

    data = v1[1].__r_.__value_.__l.__data_;
    if (v6 == v3)
    {
LABEL_25:
      if (v3 - 1 >= v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = v3 - 1;
      }

      if (data[23] >= 0)
      {
        v12 = data;
      }

      else
      {
        v12 = *data;
      }

      v13 = v12 - 2;
      v14 = v3;
      while (1)
      {
        v15 = v14 - 1;
        if (v14 - 1 <= v8)
        {
          break;
        }

        v16 = v13[v14--];
        if (v16 != 47)
        {
          goto LABEL_36;
        }
      }

      v15 = v11;
LABEL_36:
      v6 = v3;
      if (v15 != v8)
      {
        v1[1].__r_.__value_.__l.__size_ = v3 - 1;
        std::string::operator=(v1, &xmmword_2A1898490);
        return;
      }
    }

    else
    {
      while (1)
      {
        v10 = data;
        if (data[23] < 0)
        {
          v10 = *data;
        }

        if (v10[v6] != 47)
        {
          break;
        }

        *p_size = ++v6;
        if (v3 == v6)
        {
          goto LABEL_25;
        }
      }
    }
  }

  v17 = data[23];
  if (v17 < 0)
  {
    v18 = *data;
    v19 = *(data + 1);
  }

  else
  {
    v18 = data;
    v19 = data[23];
  }

  if (v19 <= v6)
  {
    goto LABEL_47;
  }

  v20 = v6;
  while (v18[v20] != 47)
  {
    if (v19 == ++v20)
    {
      goto LABEL_47;
    }
  }

  if (v19 == v20 || v20 == -1)
  {
LABEL_47:
    v20 = v3;
  }

  if ((v17 & 0x80000000) != 0)
  {
    data = *data;
  }

  sub_2964D71A8(v1, &data[v6], &data[v20], v20 - v6);
}

void sub_2964D97EC(std::string *this)
{
  v1 = this;
  data = this[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if (v3 < 0)
  {
    v4 = *(data + 1);
  }

  else
  {
    v4 = data[23];
  }

  v5 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    if (v1->__r_.__value_.__l.__size_)
    {
      goto LABEL_13;
    }
  }

  else if (*(&v1->__r_.__value_.__s + 23))
  {
    goto LABEL_13;
  }

  size = v1[1].__r_.__value_.__l.__size_;
  if (size + 1 == v4)
  {
    v7 = data;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = *data;
    }

    if (v7[size] == 47)
    {
      v1[1].__r_.__value_.__l.__size_ = v4;
      return;
    }
  }

LABEL_13:
  if ((v5 & 0x80000000) != 0)
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v9 = v1[1].__r_.__value_.__l.__size_ + v1->__r_.__value_.__l.__size_;
    v1[1].__r_.__value_.__l.__size_ = v9;
    if (v9 >= v4)
    {
LABEL_63:
      *v1->__r_.__value_.__l.__data_ = 0;
      v1->__r_.__value_.__l.__size_ = 0;
      return;
    }
  }

  else
  {
    p_size = &v1[1].__r_.__value_.__l.__size_;
    v9 = v1[1].__r_.__value_.__l.__size_ + v5;
    v1[1].__r_.__value_.__l.__size_ = v9;
    if (v9 >= v4)
    {
LABEL_15:
      v1->__r_.__value_.__s.__data_[0] = 0;
      *(&v1->__r_.__value_.__s + 23) = 0;
      return;
    }
  }

  v10 = data;
  if (data[23] < 0)
  {
    v10 = *data;
  }

  if (v10[v9] == 47)
  {
    v24 = 0;
    if (data[23] < 0)
    {
      data = *data;
    }

    v11 = sub_2964D7844(data, v4, &v24);
    v9 = *p_size;
    if (*p_size == v11)
    {
      v12 = SHIBYTE(v1->__r_.__value_.__r.__words[2]);
      if (v12 < 0)
      {
        if (v1->__r_.__value_.__l.__size_ == v24)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
          goto LABEL_28;
        }
      }

      else if (v24 == v12)
      {
        *(&v1->__r_.__value_.__s + 23) = 1;
LABEL_28:
        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }
    }

    for (data = v1[1].__r_.__value_.__l.__data_; v4 != v9; *p_size = ++v9)
    {
      v13 = data;
      if (data[23] < 0)
      {
        v13 = *data;
      }

      if (v13[v9] != 47)
      {
        goto LABEL_46;
      }
    }

    v14 = v4 - 1 >= v11 ? v11 : v4 - 1;
    v15 = data[23] >= 0 ? data : *data;
    v16 = v15 - 2;
    v17 = v4;
    while (1)
    {
      v18 = v17 - 1;
      if (v17 - 1 <= v11)
      {
        break;
      }

      v19 = v16[v17--];
      if (v19 != 47)
      {
        goto LABEL_45;
      }
    }

    v18 = v14;
LABEL_45:
    v9 = v4;
    if (v18 != v11)
    {
      v1[1].__r_.__value_.__l.__size_ = v4 - 1;
      if ((SHIBYTE(v1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_63;
    }
  }

LABEL_46:
  v20 = data[23];
  if (v20 < 0)
  {
    v21 = *data;
    v22 = *(data + 1);
  }

  else
  {
    v21 = data;
    v22 = data[23];
  }

  if (v22 <= v9)
  {
    goto LABEL_56;
  }

  v23 = v9;
  while (v21[v23] != 47)
  {
    if (v22 == ++v23)
    {
      goto LABEL_56;
    }
  }

  if (v22 == v23 || v23 == -1)
  {
LABEL_56:
    v23 = v4;
  }

  if ((v20 & 0x80000000) != 0)
  {
    data = *data;
  }

  sub_2964D71A8(v1, &data[v9], &data[v23], v23 - v9);
}

void sub_2964D9A84(std::string *a1)
{
  v1 = a1;
  data = a1[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = data;
    data = *data;
    v3 = *(v4 + 1);
  }

  v31 = 0;
  v5 = sub_2964D7844(data, v3, &v31);
  size = v1[1].__r_.__value_.__l.__size_;
  if (v5 >= v3 || size != v5)
  {
    if (v3 >= 2 && size == v3)
    {
      v9 = v1[1].__r_.__value_.__l.__data_;
      v10 = v3 - 1;
      v11 = v9;
      if (*(v9 + 23) < 0)
      {
        v11 = *v9;
      }

      if (*(v11 + v10) == 47)
      {
        if (v10 >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = v3 - 1;
        }

        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v13 = v9 - 2;
        while (1)
        {
          v14 = v3 - 1;
          if (v3 - 1 <= v5)
          {
            break;
          }

          v15 = *(v13 + v3--);
          if (v15 != 47)
          {
            goto LABEL_25;
          }
        }

        v14 = v12;
LABEL_25:
        if (v14 != v5)
        {
          v1[1].__r_.__value_.__l.__size_ = v10;

          std::string::operator=(v1, &xmmword_2A1898490);
          return;
        }
      }
    }

    v16 = v31;
    v17 = size + 1;
    while (1)
    {
      v18 = v17 - 1;
      if (v17 - 1 <= v31)
      {
        break;
      }

      if (v17 - v5 == 2)
      {
        v1[1].__r_.__value_.__l.__size_ = v5;
        if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v1->__r_.__value_.__s + 23) = 1;
        }

        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }

      v19 = v1[1].__r_.__value_.__l.__data_;
      v20 = v19;
      if (*(v19 + 23) < 0)
      {
        v20 = *v19;
      }

      v21 = *(v20 + v17-- - 2);
      if (v21 != 47)
      {
        v22 = *v19;
        if (*(v19 + 23) >= 0)
        {
          v22 = v1[1].__r_.__value_.__l.__data_;
        }

        v23 = v18 - 1;
        v24 = v18;
        while (1)
        {
          v25 = v24;
          if (v23 + 1 <= v31)
          {
            break;
          }

          v26 = *(v22 + v23--);
          --v24;
          if (v26 == 47)
          {
            v27 = v23 + 2;
            goto LABEL_47;
          }
        }

        v27 = v31;
LABEL_47:
        v1[1].__r_.__value_.__l.__size_ = v27;
        if (*(v19 + 23) < 0)
        {
          v19 = *v19;
        }

        if (v16 <= v25)
        {
          v16 = v25;
        }

        v29 = v18 - v16;
        v28 = v19 + v27;
        v30 = v19 + v18;
        goto LABEL_41;
      }
    }
  }

  v1[1].__r_.__value_.__l.__size_ = 0;
  v28 = v1[1].__r_.__value_.__l.__data_;
  if (v28[23] < 0)
  {
    v28 = *v28;
  }

  v29 = v31;
  v30 = &v28[v31];
LABEL_41:

  sub_2964D71A8(v1, v28, v30, v29);
}

void sub_2964D9CAC(std::string *a1)
{
  v1 = a1;
  data = a1[1].__r_.__value_.__l.__data_;
  v3 = data[23];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = data;
    data = *data;
    v3 = *(v4 + 1);
  }

  v31 = 0;
  v5 = sub_2964D7844(data, v3, &v31);
  size = v1[1].__r_.__value_.__l.__size_;
  if (v5 >= v3 || size != v5)
  {
    if (v3 >= 2 && size == v3)
    {
      v9 = v1[1].__r_.__value_.__l.__data_;
      v10 = v3 - 1;
      v11 = v9;
      if (v9[23] < 0)
      {
        v11 = *v9;
      }

      if (v11[v10] == 47)
      {
        if (v10 >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = v3 - 1;
        }

        if (v9[23] < 0)
        {
          v9 = *v9;
        }

        v13 = v9 - 2;
        while (1)
        {
          v14 = v3 - 1;
          if (v3 - 1 <= v5)
          {
            break;
          }

          v15 = v13[v3--];
          if (v15 != 47)
          {
            goto LABEL_25;
          }
        }

        v14 = v12;
LABEL_25:
        if (v14 != v5)
        {
          v1[1].__r_.__value_.__l.__size_ = v10;
          if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
          {
            *v1->__r_.__value_.__l.__data_ = 0;
            v1->__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            v1->__r_.__value_.__s.__data_[0] = 0;
            *(&v1->__r_.__value_.__s + 23) = 0;
          }

          return;
        }
      }
    }

    v16 = v31;
    v17 = size + 1;
    while (1)
    {
      v18 = v17 - 1;
      if (v17 - 1 <= v31)
      {
        break;
      }

      if (v17 - v5 == 2)
      {
        v1[1].__r_.__value_.__l.__size_ = v5;
        if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
        {
          v1->__r_.__value_.__l.__size_ = 1;
          v1 = v1->__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v1->__r_.__value_.__s + 23) = 1;
        }

        LOWORD(v1->__r_.__value_.__l.__data_) = 47;
        return;
      }

      v19 = v1[1].__r_.__value_.__l.__data_;
      v20 = v19;
      if (v19[23] < 0)
      {
        v20 = *v19;
      }

      v21 = v20[v17-- - 2];
      if (v21 != 47)
      {
        v22 = *v19;
        if (v19[23] >= 0)
        {
          v22 = v1[1].__r_.__value_.__l.__data_;
        }

        v23 = v18 - 1;
        v24 = v18;
        while (1)
        {
          v25 = v24;
          if (v23 + 1 <= v31)
          {
            break;
          }

          v26 = v22[v23--];
          --v24;
          if (v26 == 47)
          {
            v27 = v23 + 2;
            goto LABEL_47;
          }
        }

        v27 = v31;
LABEL_47:
        v1[1].__r_.__value_.__l.__size_ = v27;
        if (v19[23] < 0)
        {
          v19 = *v19;
        }

        if (v16 <= v25)
        {
          v16 = v25;
        }

        v29 = v18 - v16;
        v28 = &v19[v27];
        v30 = &v19[v18];
        goto LABEL_41;
      }
    }
  }

  v1[1].__r_.__value_.__l.__size_ = 0;
  v28 = v1[1].__r_.__value_.__l.__data_;
  if (v28[23] < 0)
  {
    v28 = *v28;
  }

  v29 = v31;
  v30 = &v28[v31];
LABEL_41:

  sub_2964D71A8(v1, v28, v30, v29);
}

const std::locale::facet *sub_2964D9ECC()
{
  explicit = atomic_load_explicit(&qword_2A1898470, memory_order_acquire);
  if (!explicit)
  {
    explicit = operator new(8uLL);
    sub_2964D9FF0(explicit);
    v3 = 0;
    atomic_compare_exchange_strong(&qword_2A1898470, &v3, explicit);
    if (v3)
    {
      std::locale::~locale(explicit);
      operator delete(v4);
      explicit = v3;
    }
  }

  v1 = MEMORY[0x29EDC93E0];

  return std::locale::use_facet(explicit, v1);
}

void sub_2964D9F68(const std::locale *a1@<X0>, std::locale *a2@<X8>)
{
  v4 = operator new(8uLL);
  v5 = atomic_exchange(&qword_2A1898470, std::locale::locale(v4, a1));
  if (v5)
  {
    std::locale::locale(a2, v5);
    std::locale::~locale(v5);

    operator delete(v6);
  }

  else
  {

    sub_2964D9FF0(a2);
  }
}

void sub_2964D9FF0(std::locale *a1@<X8>)
{
  MEMORY[0x29C25AD00](&v4);
  v2 = operator new(0x18uLL);
  sub_2964DA238(v2, 0);
  v3 = std::locale::id::__get(MEMORY[0x29EDC93E0]);
  std::locale::__install_ctor(a1, &v4, v2, v3);
  std::locale::~locale(&v4);
}

void sub_2964DA05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  operator delete(v10);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void sub_2964DA098(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2964DA0F4(exception, a1);
  __cxa_throw(exception, off_29EE31DE0, MEMORY[0x29EDC9350]);
}

std::logic_error *sub_2964DA0F4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

char *sub_2964DA128(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_2964A3B5C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v6;
  }

  *(__dst + 24) = *(a2 + 24);
  if (*(a3 + 23) < 0)
  {
    sub_2964A3B5C(__dst + 40, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(__dst + 7) = *(a3 + 2);
    *(__dst + 40) = v7;
  }

  *(__dst + 4) = *(a3 + 24);
  return __dst;
}

void sub_2964DA1BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964DA1D8(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

std::codecvt<wchar_t, char, mbstate_t> *sub_2964DA238(std::codecvt<wchar_t, char, mbstate_t> *a1, size_t a2)
{
  result = std::codecvt<wchar_t,char,__mbstate_t>::codecvt(a1, a2);
  result->__vftable = &unk_2A1D54C78;
  return result;
}

void boost::filesystem::detail::utf8_codecvt_facet::~utf8_codecvt_facet(std::codecvt<wchar_t, char, mbstate_t> *this)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(this);

  operator delete(v1);
}

uint64_t sub_2964DA29C(uint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4, char **a5, unsigned int *a6, unsigned int *a7, unsigned int **a8)
{
  if (a3 == a4 || a6 == a7)
  {
LABEL_30:
    *a5 = a3;
    *a8 = a6;
    return a3 != a4;
  }

  else
  {
    while (*a3 >= -64)
    {
      v8 = *a3;
      if (v8 >= 0xFE)
      {
        break;
      }

      if ((v8 & 0x80) != 0)
      {
        if ((v8 & 0xE0) == 0xC0)
        {
          v9 = 1;
        }

        else if ((v8 & 0xF0) == 0xE0)
        {
          v9 = 2;
        }

        else
        {
          if ((v8 & 0xFC) == 0xF8)
          {
            v10 = 4;
          }

          else
          {
            v10 = 5;
          }

          if ((v8 & 0xF8) == 0xF0)
          {
            v9 = 3;
          }

          else
          {
            v9 = v10;
          }
        }

        v8 -= dword_2964E19A0[v9];
        if (++a3 != a4)
        {
          v11 = v9;
          v12 = 1;
          while (*a3 < -64)
          {
            v8 = *a3++ + (v8 << 6) - 128;
            v13 = v11 == v12;
            v14 = v11 != v12++;
            if (v13 || a3 == a4)
            {
              goto LABEL_27;
            }
          }

          break;
        }

        v12 = 1;
        v14 = 1;
LABEL_27:
        if (a3 == a4 && v14)
        {
          *a5 = &a3[-v12];
          *a8 = a6;
          return 1;
        }
      }

      else
      {
        ++a3;
      }

      *a6++ = v8;
      if (a3 == a4 || a6 == a7)
      {
        goto LABEL_30;
      }
    }

    *a5 = a3;
    *a8 = a6;
    return 2;
  }
}

BOOL sub_2964DA3D4(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int **a5, _BYTE *a6, _BYTE *a7, void *a8)
{
  if (a3 == a4 || a6 == a7)
  {
LABEL_31:
    *a5 = a3;
    *a8 = a6;
    return a3 != a4;
  }

  else
  {
    while (1)
    {
      v8 = *a3;
      if (*a3 >= 128)
      {
        if (v8 >= 0x800)
        {
          if (v8 >= 0x10000)
          {
            if (v8 >> 26)
            {
              v9 = 5;
            }

            else
            {
              v9 = 4;
            }

            if (v8 < 0x200000)
            {
              v9 = 3;
            }
          }

          else
          {
            v9 = 2;
          }
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }

      *a6++ = v8 / (1 << (6 * v9)) + LOBYTE(dword_2964E19A0[v9]);
      v10 = v9 != 0;
      if (!v9 || a6 == a7)
      {
        v19 = 1;
      }

      else
      {
        v11 = 6 * v9 - 6;
        v12 = -1;
        do
        {
          v13 = *a3 / (1 << v11);
          v14 = v13 & 0x3F;
          v16 = -v13;
          v15 = v16 < 0;
          v17 = v16 & 0x3F;
          if (v15)
          {
            LOBYTE(v18) = v14;
          }

          else
          {
            v18 = -v17;
          }

          *a6++ = v18 ^ 0x80;
          v10 = v11 != 0;
          --v12;
          if (!v11)
          {
            break;
          }

          v11 -= 6;
        }

        while (a6 != a7);
        v19 = -v12;
      }

      if (a6 == a7 && v10)
      {
        break;
      }

      if (++a3 == a4 || a6 == a7)
      {
        goto LABEL_31;
      }
    }

    *a5 = a3;
    *a8 = &a6[-v19];
    return 1;
  }
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::get_cont_octet_out_count(unsigned int a1)
{
  if (a1 >> 26)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x200000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 >= 0x10000)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (a1 >= 0x800)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a1 >= 128)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::filesystem::detail::utf8_codecvt_facet::do_length(boost::filesystem::detail::utf8_codecvt_facet *this, __mbstate_t *a2, const char *a3, const char *a4, unint64_t a5)
{
  LODWORD(v5) = a3;
  if (a5)
  {
    LODWORD(v5) = a3;
    if (a3 < a4)
    {
      v6 = 1;
      v5 = a3;
      do
      {
        v7 = *v5;
        if (v7 < 0)
        {
          if ((v7 & 0xE0) == 0xC0)
          {
            v8 = 2;
          }

          else if ((v7 & 0xF0) == 0xE0)
          {
            v8 = 3;
          }

          else
          {
            v9 = v7 & 0xF8;
            if ((v7 & 0xFC) == 0xF8)
            {
              v8 = 5;
            }

            else
            {
              v8 = 6;
            }

            if (v9 == 240)
            {
              v8 = 4;
            }
          }
        }

        else
        {
          v8 = 1;
        }

        if (&a4[-v5] < v8)
        {
          break;
        }

        v5 += v8;
        if (v6 >= a5)
        {
          break;
        }

        ++v6;
      }

      while (v5 < a4);
    }
  }

  return (v5 - a3);
}

uint64_t sub_2964DA5F0(char a1)
{
  if ((a1 & 0xFC) == 0xF8)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if ((a1 & 0xF8) == 0xF0)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0xF0) == 0xE0)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 0xE0) == 0xC0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (a1 < 0)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

void sub_2964DA784()
{
  if (__cxa_guard_acquire(&qword_2A1390EA0))
  {
    qword_2A1390EB0 = 0;
    unk_2A1390EB8 = 0;
    qword_2A1390EA8 = 0;
    __cxa_atexit(sub_2964A2C18, &qword_2A1390EA8, &dword_2964A2000);

    __cxa_guard_release(&qword_2A1390EA0);
  }
}

void sub_2964DA7FC(void *a1)
{
  sub_2964D2BDC();
  if (v2 || ((*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, 12) & 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = 12;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a1[2] = v3;
}

uint64_t sub_2964DA878(void *a1, char a2, uint64_t *a3)
{
  __cxa_begin_catch(a1);
  if (a2)
  {
    return 1;
  }

  sub_2964D2BDC();
  if (v7 || ((*(*v6 + 48))(v6, 12) & 1) != 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  result = 0;
  *a3 = v8;
  return result;
}

void sub_2964DA900(void *a1, uint64_t *a2)
{
  sub_2964D2BDC();
  if (v4 || ((*(boost::system::detail::generic_cat_holder<void>::instance + 6))(&boost::system::detail::generic_cat_holder<void>::instance, 84) & 1) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *a1 = 84;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  *a2 = v5;
}

void sub_2964DA988(void *a1, uint64_t *a2)
{
  __cxa_begin_catch(a1);
  sub_2964D2BDC();
  if (v4 || ((*(*v3 + 48))(v3, 12) & 1) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void sub_2964DA9FC(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_2964DAA28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_2964DAAC8()
{
  if (__cxa_guard_acquire(&qword_2A1390EC0))
  {
    unk_2A1390ED8 = 0;
    xmmword_2A1390EC8 = 0uLL;
    __cxa_atexit(sub_2964A2C18, &xmmword_2A1390EC8, &dword_2964A2000);

    __cxa_guard_release(&qword_2A1390EC0);
  }
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x2A1C68DB8](this, a2);
}

{
  return MEMORY[0x2A1C68DC0](this, a2);
}

{
  return MEMORY[0x2A1C68DC8](this, a2);
}

{
  return MEMORY[0x2A1C68DD0](this, a2);
}

{
  return MEMORY[0x2A1C68DD8](this, a2);
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x2A1C68E30](this);
}

{
  return MEMORY[0x2A1C68E38](this);
}

{
  return MEMORY[0x2A1C68E48](this);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2A1C6FBB8](this);
}

{
  MEMORY[0x2A1C6FBC0](this);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2A1C70290](retstr, __val);
}

{
  return MEMORY[0x2A1C702A0](retstr, __val);
}

void operator delete[](void *__p)
{
    ;
  }
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

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}