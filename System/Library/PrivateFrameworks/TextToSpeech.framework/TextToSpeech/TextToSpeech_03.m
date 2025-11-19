void sub_1A9376044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1A9376084(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1A9341F2C(result, a2);
    }

    sub_1A9335A94();
  }

  return result;
}

BOOL ausdk::AUScope::HasElementWithName(ausdk::AUScope *this)
{
  for (i = 0; ; ++i)
  {
    v3 = *(this + 5);
    if (v3)
    {
      LODWORD(v4) = (*(*v3 + 24))(v3);
    }

    else
    {
      v4 = (*(this + 3) - *(this + 2)) >> 3;
    }

    if (i >= v4)
    {
      break;
    }

    v5 = sub_1A933BE1C(this, i);
    if (v5)
    {
      if (*(v5 + 72))
      {
        break;
      }
    }
  }

  return i < v4;
}

void ausdk::AUScope::AddElementNamesToDict(ausdk::AUScope *this, __CFDictionary *a2)
{
  if (ausdk::AUScope::HasElementWithName(this))
  {
    v4 = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    while (1)
    {
      v5 = *(this + 5);
      if (v5)
      {
        LODWORD(v6) = (*(*v5 + 24))(v5);
      }

      else
      {
        v6 = (*(this + 3) - *(this + 2)) >> 3;
      }

      if (v4 >= v6)
      {
        break;
      }

      v7 = sub_1A933BE1C(this, v4);
      v8 = v7;
      if (v7)
      {
        if (*(v7 + 72))
        {
          v9 = CFStringCreateWithFormat(0, 0, @"%u", v4);
          v10 = Mutable;
          value = *(v8 + 72);
          v12 = v9;
          sub_1A9372298(&value);
          CFDictionarySetValue(v10, v9, value);
          sub_1A9345C90(&value);
          sub_1A9345C90(&v12);
        }
      }

      v4 = (v4 + 1);
    }

    v12 = CFStringCreateWithFormat(0, 0, @"%u", *(this + 2));
    CFDictionarySetValue(a2, v12, Mutable);
    sub_1A9345C90(&v12);
    sub_1A9373C3C(&Mutable);
  }
}

void sub_1A9376328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_1A9345C90(va);
  sub_1A9373C3C(va1);
  _Unwind_Resume(a1);
}

void ausdk::AUScope::RestoreElementNames(ausdk::AUScope *this@<X0>, const __CFDictionary *a2@<X1>, const void **a3@<X8>)
{
  v4 = this;
  v31 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(this + 5);
  if (v6)
  {
    LODWORD(v7) = (*(*v6 + 24))(v6);
  }

  else
  {
    v7 = (*(v4 + 3) - *(v4 + 2)) >> 3;
  }

  Count = CFDictionaryGetCount(a2);
  sub_1A9376A3C(keys, Count & ~(Count >> 63));
  CFDictionaryGetKeysAndValues(a2, keys[0], 0);
  if (Count >= 1)
  {
    v9 = 0;
    v26 = v4;
    do
    {
      v27 = 0;
      *buffer = 0u;
      v30 = 0u;
      CFStringGetCString(keys[0][v9], buffer, 32, 0x600u);
      if (sscanf(buffer, "%u", &v27))
      {
        if (v27 < v7)
        {
          Value = CFDictionaryGetValue(a2, keys[0][v9]);
          v11 = Value;
          if (Value)
          {
            v12 = CFGetTypeID(Value);
            if (v12 == CFStringGetTypeID())
            {
              v13 = sub_1A933BE1C(v4, v27);
              if (v13)
              {
                sub_1A936EA38((v13 + 72), v11);
                v15 = a3[1];
                v14 = a3[2];
                if (v15 >= v14)
                {
                  v17 = *a3;
                  v18 = v15 - *a3;
                  v19 = v18 >> 2;
                  v20 = (v18 >> 2) + 1;
                  if (v20 >> 62)
                  {
                    sub_1A9335A94();
                  }

                  v21 = v14 - v17;
                  if (v21 >> 1 > v20)
                  {
                    v20 = v21 >> 1;
                  }

                  v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
                  v23 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v22)
                  {
                    v23 = v20;
                  }

                  if (v23)
                  {
                    sub_1A9338A90(a3, v23);
                  }

                  *(4 * v19) = v27;
                  v16 = 4 * v19 + 4;
                  memcpy(0, v17, v18);
                  v24 = *a3;
                  *a3 = 0;
                  a3[1] = v16;
                  a3[2] = 0;
                  if (v24)
                  {
                    operator delete(v24);
                  }

                  v4 = v26;
                }

                else
                {
                  *v15 = v27;
                  v16 = (v15 + 4);
                }

                a3[1] = v16;
              }
            }
          }
        }
      }

      ++v9;
    }

    while (Count != v9);
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1A93765D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

UInt8 *ausdk::AUScope::SaveState(ausdk::AUScope *this, __CFData *a2)
{
  result = *(this + 5);
  if (result)
  {
    result = (*(*result + 24))(result);
    LODWORD(v5) = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = (*(this + 3) - *(this + 2)) >> 3;
    if (!v5)
    {
      return result;
    }
  }

  v6 = 0;
  do
  {
    v7 = sub_1A933BE1C(this, v6);
    result = (*(*v7 + 16))(v7);
    if (result)
    {
      *bytes = bswap32(*(this + 2));
      CFDataAppendBytes(a2, bytes, 4);
      *v8 = bswap32(v6);
      CFDataAppendBytes(a2, v8, 4);
      result = ausdk::AUElement::SaveState(v7, *(this + 2), a2);
    }

    ++v6;
  }

  while (v5 != v6);
  return result;
}

unsigned int *ausdk::AUScope::RestoreState(ausdk::AUScope *this, const unsigned __int8 *a2)
{
  v3 = a2 + 4;
  v4 = sub_1A933BE1C(this, bswap32(*a2));
  if (!v4)
  {
    return &a2[8 * bswap32(*(a2 + 1)) + 8];
  }

  return ausdk::AUElement::RestoreState(v4, v3);
}

void sub_1A937679C(uint64_t a1)
{
  sub_1A9345C2C(a1);

  JUMPOUT(0x1AC586D00);
}

void sub_1A93767DC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      sub_1A9335A94();
    }

    v8 = v6 >> 2;
    v9 = v4 - *a1;
    if (v9 >> 1 > v7)
    {
      v7 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_1A9338A90(a1, v10);
    }

    __p = 0;
    v12 = 4 * v8;
    v14 = 0;
    bzero((4 * v8), 4 * a2);
    v13 = 4 * v8 + 4 * a2;
    sub_1A9376924(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1A93768EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1A9376924(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = atomic_load(v2);
      *v5++ = v6;
      ++v2;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t sub_1A9376990(uint64_t a1)
{
  sub_1A93769C8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1A93769C8(void *result, void *a2)
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

void *sub_1A9376A3C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1A9376AB4(result, a2);
  }

  return result;
}

void sub_1A9376A98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9376AB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1A9376AF0(a1, a2);
  }

  sub_1A9335A94();
}

void sub_1A9376AF0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1A9335858();
}

char *sub_1A9376B38(uint64_t a1, char *a2, _DWORD *a3)
{
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = (&v5[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1A9335A94();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v28 = a1;
    if (v14)
    {
      sub_1A9341D30(a1, v14);
    }

    __p = 0;
    v25 = 8 * v15;
    v26 = 8 * v15;
    v27 = 0;
    sub_1A9376D10(&__p, a3);
    v3 = sub_1A9376E3C(a1, &__p, v3);
    if (v26 != v25)
    {
      v26 += (v25 - v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = a2 - v5;
    if (a2 == v5)
    {
      *v5 = *a3;
      v16 = atomic_load(a3 + 1);
      *(v5 + 1) = v16;
      *(a1 + 8) = v5 + 8;
    }

    else
    {
      if (v5 < 8)
      {
        v8 = *(a1 + 8);
      }

      else
      {
        v8 = v5 + 8;
        *v5 = *(v5 - 2);
        v9 = atomic_load(v5 - 1);
        *(v5 + 1) = v9;
      }

      *(a1 + 8) = v8;
      if (v5 != a2 + 8)
      {
        v17 = (v5 - 16);
        v18 = (v5 - 4);
        v19 = v7 + 8;
        do
        {
          v20 = v17 + 1;
          v21 = *v17;
          v17 -= 2;
          *(v18 - 1) = v21;
          LODWORD(v20) = atomic_load(v20);
          atomic_store(v20, v18);
          v18 -= 2;
          v19 += 8;
        }

        while (v19);
      }

      *a2 = *a3;
      v22 = atomic_load(a3 + 1);
      atomic_store(v22, a2 + 1);
    }
  }

  return v3;
}

void sub_1A9376CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1A9376D10(void *result, _DWORD *a2)
{
  v2 = result[2];
  v3 = v2;
  if (v2 == result[3])
  {
    v4 = result[1];
    if (v4 <= *result)
    {
      v10 = v2 - *result;
      v9 = v10 == 0;
      v11 = v10 >> 2;
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1A9341D30(result[4], v12);
    }

    v5 = ((v4 - *result) >> 3) + 1;
    v3 = &v4[-2 * (v5 / 2)];
    if (v4 != v2)
    {
      do
      {
        v6 = v4 + 1;
        v7 = *v4;
        v4 += 2;
        v8 = v3 + 1;
        *v3 = v7;
        v3 += 2;
        LODWORD(v6) = atomic_load(v6);
        atomic_store(v6, v8);
      }

      while (v4 != v2);
      v4 = result[1];
    }

    result[1] = &v4[2 * (v5 / -2)];
    result[2] = v3;
  }

  *v3 = *a2;
  v13 = atomic_load(a2 + 1);
  v3[1] = v13;
  result[2] += 8;
  return result;
}

uint64_t sub_1A9376E3C(char **a1, void *a2, char *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v11 = a2[1];
    v10 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = (v7 + 4);
      v9 = *v7;
      v7 += 8;
      *v6 = v9;
      LODWORD(v8) = atomic_load(v8);
      v6[1] = v8;
      v6 += 2;
    }

    while (v7 != v4);
    v10 = a1[1];
    v11 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v10 - a3;
  a1[1] = a3;
  v12 = *a1;
  v13 = (v11 + *a1 - a3);
  if (*a1 != a3)
  {
    v14 = v13;
    do
    {
      v15 = (v12 + 4);
      v16 = *v12;
      v12 += 8;
      *v14 = v16;
      LODWORD(v15) = atomic_load(v15);
      v14[1] = v15;
      v14 += 2;
    }

    while (v12 != a3);
    v12 = *a1;
  }

  a2[1] = v13;
  *a1 = v13;
  a1[1] = v12;
  a2[1] = v12;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void sub_1A937725C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_1A9377294()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB389248);
  sub_1A937731C(v0, qword_1EB389248);
  result = AXTTSLogCommon();
  if (result)
  {
    return sub_1A957BC98();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A937731C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1A9377378()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB389228);
  sub_1A937731C(v0, qword_1EB389228);
  return sub_1A957BC78();
}

uint64_t sub_1A9377418(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1A957BC88();

  return sub_1A937731C(v3, a2);
}

uint64_t sub_1A9377490@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1A957BC88();
  v6 = sub_1A937731C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for TTSLog(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TTSLog(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *sub_1A9377618(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_1A937767C()
{
  result = [objc_allocWithZone(type metadata accessor for SSMLServices()) init];
  qword_1EB391168 = result;
  return result;
}

id SSMLServices.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_1A93776E0()
{
  if (qword_1EB391160 != -1)
  {
    swift_once();
  }

  return &qword_1EB391168;
}

id static SSMLServices.shared.getter()
{
  if (qword_1EB391160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB391168;

  return v0;
}

void static SSMLServices.shared.setter(uint64_t a1)
{
  if (qword_1EB391160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB391168;
  qword_1EB391168 = a1;
}

uint64_t (*static SSMLServices.shared.modify())()
{
  if (qword_1EB391160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1A93779BC@<X0>(void *a1@<X8>)
{
  if (qword_1EB391160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB391168;
  *a1 = qword_1EB391168;

  return v2;
}

void sub_1A9377A48(id *a1)
{
  v1 = qword_1EB391160;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EB391168;
  qword_1EB391168 = v2;
}

uint64_t sub_1A9377AD0(uint64_t a1, uint64_t countAndFlagsBits)
{

  TTSMarkup.SpeechDocument.init(ssml:)(v5);
  if (!v2)
  {
    countAndFlagsBits = TTSMarkupSpeech.asPlainText()()._countAndFlagsBits;
    sub_1A9377B5C(v5);
  }

  return countAndFlagsBits;
}

id SSMLServices.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SSMLServices();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SSMLServices.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SSMLServices();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A9377E18(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a3 || a4 || a5)
  {
    v27 = &type metadata for TTSMarkup.SpeechText;
    v28 = &protocol witness table for TTSMarkup.SpeechText;
    v26[0] = swift_allocObject();

    v10 = TTSMarkup.SpeechText.init(_:)(a1, a2, v26[0] + 16);
    if (a3)
    {
      [a3 floatValue];
      v12 = v11;
      sub_1A93780F4(v26, &type metadata for TTSMarkup.SpeechText);
      LOBYTE(v25[0]) = 0;
      TTSMarkupSpeech.rate(_:)(v12, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, v25);
      sub_1A9378138(v26);
      sub_1A932D070(v25, v26);
    }

    if (a4)
    {
      [a4 floatValue];
      v14 = v13;
      v15 = v27;
      v16 = v28;
      sub_1A93780F4(v26, v27);
      static TTSMarkup.Prosody.Pitch.ttsPitch(_:)(&v24, v14);
      sub_1A93B7BC4(&v24, v15, v16, v25);
      sub_1A9378138(v26);
      sub_1A932D070(v25, v26);
    }

    if (a5)
    {
      [a5 floatValue];
      v18 = v17;
      v19 = v27;
      v20 = v28;
      sub_1A93780F4(v26, v27);
      LOBYTE(v25[0]) = 0;
      TTSMarkupSpeech.volume(_:)(v18, v19, v20, v25);
      sub_1A9378138(v26);
      sub_1A932D070(v25, v26);
    }

    v21 = v27;
    v22 = v28;
    sub_1A93780F4(v26, v27);
    a1 = (v22[8])(v21, v22);
    sub_1A9378138(v26);
  }

  else
  {
  }

  return a1;
}

void *sub_1A93780F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A9378138(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t CoreSynthesizer.Utterance.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CoreSynthesizer.Utterance.voice.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0x118uLL);
  memcpy(a1, (v1 + 32), 0x118uLL);
  return sub_1A937822C(__dst, v4);
}

uint64_t sub_1A937822C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&unk_1EB387BC0, &qword_1A9587E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A937829C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CoreSynthesizer.Utterance.voiceSettings.setter(uint64_t a1)
{
  v3 = *(v1 + 312);

  *(v1 + 312) = a1;
  return result;
}

uint64_t sub_1A93783B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

__n128 CoreSynthesizer.Utterance.init(id:speech:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)@<Q0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a6;
  v14 = *a7;
  v15 = *a8;
  *(a9 + 312) = 0;
  *(a9 + 16) = v13;
  *(a9 + 368) = a5;
  *(a9 + 17) = v14;
  *(a9 + 24) = v15;
  memcpy((a9 + 32), __src, 0x118uLL);
  *(a9 + 376) = a3 != 0;
  if (!a3)
  {
    a2 = sub_1A9469CB0(6);
    a3 = v16;
  }

  *a9 = a2;
  *(a9 + 8) = a3;
  v17 = *(a4 + 16);
  *(a9 + 320) = *a4;
  *(a9 + 336) = v17;
  result = *(a4 + 25);
  *(a9 + 345) = result;
  return result;
}

uint64_t CoreSynthesizer.Utterance.init(id:ssml:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)@<X0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v15 = *a7;
  v16 = *a8;
  v17 = *a10;
  *(a9 + 312) = 0;
  *(a9 + 16) = v15;
  *(a9 + 368) = a6;
  *(a9 + 17) = v16;
  *(a9 + 24) = v17;
  result = memcpy((a9 + 32), __src, 0x118uLL);
  *(a9 + 376) = a3 != 0;
  if (!a3)
  {
    result = sub_1A9469CB0(6);
    a2 = result;
    a3 = v19;
  }

  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 320) = a4;
  *(a9 + 328) = a5;
  *(a9 + 360) = 0;
  return result;
}

uint64_t CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, void (*a8)(uint64_t *__return_ptr)@<X7>, uint64_t a9@<X8>)
{
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  a8(v27);
  v17 = v28;
  v18 = v29;
  sub_1A93780F4(v27, v28);
  TTSMarkupSpeech.ssmlTag.getter(v17, v18);
  v26 = 0;
  sub_1A9379484();
  v19 = sub_1A957C098();
  if ((v19 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v19, v20);
    *&v25[8] = &type metadata for TTSMarkup.SpeechDocument;
    *&v25[16] = &protocol witness table for TTSMarkup.SpeechDocument;
    *&v24 = swift_allocObject();
    TTSMarkup.SpeechDocument.init(_:)(sub_1A93794D8, (v24 + 16));
    sub_1A9378138(v27);
    sub_1A932D070(&v24, v27);
  }

  sub_1A9379534(v27, &v24);
  v25[24] = 2;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    a1 = sub_1A9469CB0(6);
  }

  *a9 = a1;
  *(a9 + 8) = v21;
  *(a9 + 16) = v14;
  *(a9 + 17) = v15;
  *(a9 + 24) = v16;
  memcpy((a9 + 32), a3, 0x118uLL);
  *(a9 + 312) = 0;
  v22 = *v25;
  *(a9 + 320) = v24;
  *(a9 + 336) = v22;
  *(a9 + 345) = *&v25[9];
  *(a9 + 368) = a4;
  *(a9 + 376) = a2 != 0;
  return sub_1A9378138(v27);
}

Swift::String __swiftcall CoreSynthesizer.Utterance.asPlainText()()
{
  sub_1A9378344(v0 + 320, v9);
  if (!v10)
  {
    TTSMarkup.SpeechDocument.init(ssml:)(v8);
    v4 = TTSMarkupSpeech.asPlainText()();
    countAndFlagsBits = v4._countAndFlagsBits;
    object = v4._object;
    sub_1A9377B5C(v8);
LABEL_6:
    v2 = object;
    v1 = countAndFlagsBits;
    goto LABEL_7;
  }

  if (v10 != 1)
  {
    sub_1A932D070(v9, v8);
    sub_1A93780F4(v8, v8[3]);
    v3 = TTSMarkupSpeech.asPlainText()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
    sub_1A9378138(v8);
    goto LABEL_6;
  }

  v2 = *(&v9[0] + 1);
  v1 = *&v9[0];
LABEL_7:
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1A937880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[121] = a3;
  v3[120] = a2;
  v3[119] = a1;
  v4 = sub_1A957BC88();
  v3[122] = v4;
  v5 = *(v4 - 8);
  v3[123] = v5;
  v6 = *(v5 + 64) + 15;
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93788E0, 0, 0);
}

uint64_t sub_1A93788E0()
{
  v1 = [*(v0 + 960) voice];
  *(v0 + 1008) = v1;
  if (v1)
  {
    v2 = *(v0 + 968);
    v3 = [v1 identifier];
    v4 = sub_1A957C0F8();
    v6 = v5;

    *(v0 + 1016) = v6;
    v28 = (*v2 + 360);
    v29 = (*v28 + **v28);
    v7 = (*v28)[1];
    v8 = swift_task_alloc();
    *(v0 + 1024) = v8;
    *v8 = v0;
    v8[1] = sub_1A9378BEC;
    v9 = *(v0 + 968);

    return v29(v0 + 296, v4, v6);
  }

  else
  {
    v11 = *(v0 + 1000);
    v12 = *(v0 + 984);
    v13 = *(v0 + 976);
    v14 = sub_1A9391D1C();
    (*(v12 + 16))(v11, v14, v13);
    v15 = sub_1A957BC68();
    v16 = sub_1A957CA78();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 1000);
    v19 = *(v0 + 984);
    v20 = *(v0 + 976);
    v21 = *(v0 + 968);
    v22 = *(v0 + 960);
    if (v17)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A9324000, v15, v16, "Utterance had no voice!", v23, 2u);
      MEMORY[0x1AC587CD0](v23, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    v24 = *(v0 + 952);
    v24[21] = 0u;
    v24[22] = 0u;
    v24[19] = 0u;
    v24[20] = 0u;
    v24[17] = 0u;
    v24[18] = 0u;
    v24[15] = 0u;
    v24[16] = 0u;
    v24[13] = 0u;
    v24[14] = 0u;
    v24[11] = 0u;
    v24[12] = 0u;
    v24[9] = 0u;
    v24[10] = 0u;
    v24[7] = 0u;
    v24[8] = 0u;
    v24[5] = 0u;
    v24[6] = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    *v24 = 0u;
    *(v24 + 361) = 0u;
    v25 = *(v0 + 1000);
    v26 = *(v0 + 992);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1A9378BEC()
{
  v1 = *(*v0 + 1024);
  v2 = *(*v0 + 1016);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9378D04, 0, 0);
}

uint64_t sub_1A9378D04()
{
  v58 = v0;
  memcpy((v0 + 16), (v0 + 296), 0x118uLL);
  if (sub_1A932D058(v0 + 16) == 1)
  {
    v1 = *(v0 + 1008);
    v2 = *(v0 + 992);
    v3 = *(v0 + 984);
    v4 = *(v0 + 976);
    v5 = sub_1A9391D1C();
    (*(v3 + 16))(v2, v5, v4);
    v6 = v1;
    v7 = sub_1A957BC68();
    v8 = sub_1A957CA78();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1008);
    v11 = *(v0 + 992);
    v12 = *(v0 + 984);
    v13 = *(v0 + 976);
    v14 = *(v0 + 968);
    v15 = *(v0 + 960);
    if (v9)
    {
      v53 = *(v0 + 960);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v54 = v17;
      *v16 = 136315138;
      v18 = [v10 identifier];
      v51 = v13;
      v52 = v11;
      v19 = sub_1A957C0F8();
      v21 = v20;

      v22 = sub_1A937A5C0(v19, v21, &v54);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_1A9324000, v7, v8, "Could not resolve %s", v16, 0xCu);
      sub_1A9378138(v17);
      MEMORY[0x1AC587CD0](v17, -1, -1);
      MEMORY[0x1AC587CD0](v16, -1, -1);

      (*(v12 + 8))(v52, v51);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v29 = *(v0 + 952);
    v29[21] = 0u;
    v29[22] = 0u;
    v29[19] = 0u;
    v29[20] = 0u;
    v29[17] = 0u;
    v29[18] = 0u;
    v29[15] = 0u;
    v29[16] = 0u;
    v29[13] = 0u;
    v29[14] = 0u;
    v29[11] = 0u;
    v29[12] = 0u;
    v29[9] = 0u;
    v29[10] = 0u;
    v29[7] = 0u;
    v29[8] = 0u;
    v29[5] = 0u;
    v29[6] = 0u;
    v29[3] = 0u;
    v29[4] = 0u;
    v29[1] = 0u;
    v29[2] = 0u;
    *v29 = 0u;
    *(v29 + 361) = 0u;
  }

  else
  {
    v23 = [*(v0 + 960) ssmlRepresentation];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1A957C0F8();
      v27 = v26;

      v28 = 0;
    }

    else
    {
      v30 = *(v0 + 960);
      v31 = [v30 speechString];
      v25 = sub_1A957C0F8();
      v27 = v32;

      [v30 rate];
      v34 = v33;
      [v30 pitchMultiplier];
      v36 = v35;
      [v30 volume];
      v55 = 0;
      v56 = 0;
      v57 = 0;
      *(v0 + 872) = v34;
      *(v0 + 876) = 0;
      *(v0 + 880) = v36;
      *(v0 + 884) = 0;
      *(v0 + 888) = v37;
      v28 = 1;
      *(v0 + 892) = 0;
    }

    v38 = *(v0 + 1008);
    v39 = *(v0 + 968);
    v40 = *(v0 + 960);
    v41 = *(v0 + 952);
    *(v0 + 856) = v25;
    *(v0 + 864) = v27;
    *(v0 + 896) = v28;
    sub_1A9378344(v0 + 856, v0 + 904);
    memcpy((v0 + 576), (v0 + 16), 0x118uLL);
    nullsub_23(v0 + 576);
    *(v41 + 312) = 0;
    *(v41 + 16) = 0;
    *(v41 + 368) = 10;
    *(v41 + 24) = 7;
    memcpy((v41 + 32), (v0 + 576), 0x118uLL);
    *(v41 + 376) = 0;
    v42 = sub_1A9469CB0(6);
    v44 = v43;

    sub_1A937AB68(v0 + 856);
    *v41 = v42;
    *(v41 + 8) = v44;
    v45 = *(v0 + 929);
    v46 = *(v0 + 920);
    *(v41 + 320) = *(v0 + 904);
    *(v41 + 336) = v46;
    *(v41 + 345) = v45;
  }

  v47 = *(v0 + 1000);
  v48 = *(v0 + 992);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t CoreSynthesizer.Utterance.Speech.hash(into:)()
{
  sub_1A9378344(v0, v7);
  if (v8 && v8 != 1)
  {
    sub_1A932D070(v7, v4);
    v1 = v5;
    v2 = v6;
    sub_1A93780F4(v4, v5);
    (*(v2 + 64))(v1, v2);
    sub_1A9378138(v4);
  }

  sub_1A957C228();
}

uint64_t CoreSynthesizer.Utterance.Speech.hashValue.getter()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.Speech.hash(into:)();
  return sub_1A957D548();
}

uint64_t sub_1A9379208()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.Speech.hash(into:)();
  return sub_1A957D548();
}

uint64_t sub_1A937924C()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.Speech.hash(into:)();
  return sub_1A957D548();
}

uint64_t sub_1A93792CC()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A9379340()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

BOOL sub_1A93793DC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A937940C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A9379438@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_1A9379484()
{
  result = qword_1EB3867B8;
  if (!qword_1EB3867B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867B8);
  }

  return result;
}

uint64_t sub_1A93794D8@<X0>(uint64_t a1@<X8>)
{
  sub_1A9379534(*(v1 + 16), v4);
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v5, v4);
  sub_1A9378138(v4);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v5, a1);
  return sub_1A9378138(v5);
}

uint64_t sub_1A9379534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1A9379624@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t CoreSynthesizer.Utterance.ssml.getter()
{
  sub_1A9378344(v0 + 320, &v9);
  if (!v11)
  {
    return v9;
  }

  if (v11 == 1)
  {
    MEMORY[0x1EEE9AC00](v10, v1);
    TTSMarkup.SpeechDocument.init(_:)(sub_1A937AE5C, v6);

    v2 = TTSMarkupContainer.ssml.getter(&type metadata for TTSMarkup.SpeechDocument, &protocol witness table for TTSMarkup.SpeechDocument);
    sub_1A9377B5C(v6);
  }

  else
  {
    sub_1A932D070(&v9, v6);
    v3 = v7;
    v4 = v8;
    sub_1A93780F4(v6, v7);
    v2 = (*(v4 + 64))(v3, v4);
    sub_1A9378138(v6);
  }

  return v2;
}

uint64_t CoreSynthesizer.Utterance.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1A957C228();
  v14[0] = *(v1 + 16);
  sub_1A937B334();
  sub_1A957C068();
  v14[0] = *(v1 + 17);
  sub_1A937B388();
  sub_1A957C068();
  MEMORY[0x1AC5863C0](v1[3]);
  memcpy(__dst, v1 + 4, sizeof(__dst));
  memcpy(v14, v1 + 4, sizeof(v14));
  if (sub_1A932D058(v14) != 1)
  {
    memcpy(__src, __dst, sizeof(__src));
    sub_1A957D518();
    memcpy(v11, __dst, sizeof(v11));
    sub_1A937B3DC(v11, v12);
    sub_1A937B438();
    sub_1A957C068();
    memcpy(v12, __src, sizeof(v12));
    sub_1A937B48C(v12);
    v5 = v1[39];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1A957D518();
    goto LABEL_6;
  }

  sub_1A957D518();
  v5 = v1[39];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1A957D518();
  sub_1A937AB98(a1, v5);
LABEL_6:
  sub_1A9378344((v1 + 40), v12);
  if (v12[40] && v12[40] != 1)
  {
    sub_1A932D070(v12, v11);
    v6 = v11[3];
    v7 = v11[4];
    sub_1A93780F4(v11, v11[3]);
    (*(v7 + 64))(v6, v7);
    sub_1A9378138(v11);
  }

  sub_1A957C228();

  MEMORY[0x1AC5863C0](v1[46]);
  v8 = *(v1 + 376);
  return sub_1A957D518();
}

uint64_t CoreSynthesizer.Utterance.hashValue.getter()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A93799F4()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A9379A38()
{
  sub_1A957D4F8();
  CoreSynthesizer.Utterance.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A9379A74@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1A9379A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(*(a4 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(sub_1A957CC58() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(a3 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9379C98, 0, 0);
}

uint64_t sub_1A9379C98()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1A957BFF8();
  (*(v3 + 16))(v2, v4, v7);
  sub_1A957C3C8();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1A957CCB8();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_1A9379F04;
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[4];

    return v28(v26, v25);
  }
}

uint64_t sub_1A9379F04()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1A937A278;
  }

  else
  {
    v5 = sub_1A937A020;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A937A020()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_1A957C578();
  sub_1A957C548();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1A957CCB8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v17 = v0[2];

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    v20 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_1A9379F04;
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[4];

    return v26(v24, v23);
  }
}

uint64_t sub_1A937A278()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t sub_1A937A354(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1A937A490(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A937A490(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1A957D4F8();
  sub_1A957C228();
  v6 = sub_1A957D548();

  return sub_1A937A508(a1, a2, v6);
}

unint64_t sub_1A937A508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A957D3E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1A937A5C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A937A68C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1A937BA14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1A9378138(v11);
  return v7;
}

unint64_t sub_1A937A68C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A937A798(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1A957CF68();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1A937A798(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A937A7E4(a1, a2);
  sub_1A937A914(&unk_1F1CF0B20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1A937A7E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A937AA00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A957CF68();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A957C2B8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A937AA00(v10, 0);
        result = sub_1A957CEC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A937A914(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1A937AA74(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A937AA00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB387C60, &unk_1A9587150);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1A937AA74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB387C60, &unk_1A9587150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A937AB98(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 4 * v13);
    v7 &= v7 - 1;
    v20 = a1[2];
    v21 = a1[3];
    v22 = *(a1 + 8);
    v18 = *a1;
    v19 = a1[1];

    sub_1A957C228();

    sub_1A957D528();
    result = sub_1A957D548();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1AC5863C0](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12TextToSpeech15CoreSynthesizerC9UtteranceV0C0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A9378344(a1, v18);
  if (v19 && v19 != 1)
  {
    sub_1A932D070(v18, v15);
    v5 = v16;
    v6 = v17;
    sub_1A93780F4(v15, v16);
    v4 = (*(v6 + 64))(v5, v6);
    v3 = v7;
    sub_1A9378138(v15);
  }

  else
  {
    v3 = *(&v18[0] + 1);
    v4 = *&v18[0];
  }

  sub_1A9378344(a2, v18);
  if (v19 && v19 != 1)
  {
    sub_1A932D070(v18, v15);
    v9 = v16;
    v10 = v17;
    sub_1A93780F4(v15, v16);
    v11 = (*(v10 + 64))(v9, v10);
    v8 = v12;
    sub_1A9378138(v15);
    if (v4 != v11)
    {
LABEL_12:
      v13 = sub_1A957D3E8();
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(&v18[0] + 1);
    if (v4 != *&v18[0])
    {
      goto LABEL_12;
    }
  }

  if (v3 != v8)
  {
    goto LABEL_12;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

uint64_t sub_1A937AE5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  v6 = *(v1 + 40);
  v7 = *(v1 + 44);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);

  TTSMarkup.SpeechText.init(_:)(v2, v3, v23);
  v17[0] = v23[0];
  v17[1] = v23[1];
  v18 = v24;
  LOBYTE(v20[0]) = v5;
  TTSMarkupSpeech.rate(_:)(v4 | (v5 << 32), &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, v20);

  v10 = v21;
  v11 = v22;
  sub_1A93780F4(v20, v21);
  LOBYTE(v23[0]) = v7;
  TTSMarkupSpeech.pitch(_:)(v6 | (v7 << 32), v10, v11, v17);
  v12 = *(&v18 + 1);
  v13 = v19;
  sub_1A93780F4(v17, *(&v18 + 1));
  LOBYTE(v23[0]) = v9;
  TTSMarkupSpeech.volume(_:)(v8 | (v9 << 32), v12, v13, v16);
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v23, v16);
  sub_1A9378138(v16);
  sub_1A9378138(v17);
  sub_1A9378138(v20);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v23, a1);
  return sub_1A9378138(v23);
}

uint64_t _s12TextToSpeech15CoreSynthesizerC9UtteranceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1A957D3E8() & 1) == 0)
  {
    goto LABEL_16;
  }

  v18[0] = *(a1 + 16);
  v16[0] = *(a2 + 16);
  if (!static TTSSpeechQueue.QueuingBehavior.== infix(_:_:)(v18, v16))
  {
    goto LABEL_16;
  }

  v18[0] = *(a1 + 17);
  v16[0] = *(a2 + 17);
  if ((static TTSSpeechQueue.IsoPrioritizedBehavior.== infix(_:_:)(v18, v16) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_16;
  }

  memcpy(__dst, (a1 + 32), sizeof(__dst));
  memcpy(v20, (a2 + 32), sizeof(v20));
  memcpy(v18, (a1 + 32), 0x118uLL);
  memcpy(&v18[280], (a2 + 32), 0x118uLL);
  memcpy(v21, (a1 + 32), sizeof(v21));
  if (sub_1A932D058(v21) != 1)
  {
    memcpy(v17, (a1 + 32), sizeof(v17));
    memcpy(__src, (a1 + 32), sizeof(__src));
    memcpy(v16, (a2 + 32), 0x118uLL);
    if (sub_1A932D058(v16) != 1)
    {
      memcpy(v14, (a2 + 32), sizeof(v14));
      sub_1A937822C(__dst, v13);
      sub_1A937822C(v20, v13);
      sub_1A937822C(v17, v13);
      sub_1A937B9C0();
      v7 = sub_1A957C098();
      memcpy(v12, v14, sizeof(v12));
      sub_1A937B48C(v12);
      memcpy(v13, __src, sizeof(v13));
      sub_1A937B48C(v13);
      memcpy(v14, (a1 + 32), sizeof(v14));
      sub_1A937B960(v14, &unk_1EB387BC0, &qword_1A9587E30);
      if ((v7 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    memcpy(v14, __src, sizeof(v14));
    sub_1A937822C(__dst, v13);
    sub_1A937822C(v20, v13);
    sub_1A937822C(v17, v13);
    sub_1A937B48C(v14);
LABEL_15:
    memcpy(v16, v18, sizeof(v16));
    sub_1A937B960(v16, &qword_1EB386800, &qword_1A9587148);
    goto LABEL_16;
  }

  memcpy(v16, (a2 + 32), 0x118uLL);
  if (sub_1A932D058(v16) != 1)
  {
    sub_1A937822C(__dst, v17);
    sub_1A937822C(v20, v17);
    goto LABEL_15;
  }

  memcpy(v17, (a1 + 32), sizeof(v17));
  sub_1A937822C(__dst, __src);
  sub_1A937822C(v20, __src);
  sub_1A937B960(v17, &unk_1EB387BC0, &qword_1A9587E30);
LABEL_19:
  v8 = *(a1 + 312);
  v9 = *(a2 + 312);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = *(a2 + 312);

    v11 = sub_1A937A354(v8, v9);

    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v9)
  {
    goto LABEL_16;
  }

  if ((_s12TextToSpeech15CoreSynthesizerC9UtteranceV0C0O2eeoiySbAG_AGtFZ_0(a1 + 320, a2 + 320) & 1) != 0 && *(a1 + 368) == *(a2 + 368))
  {
    v5 = *(a1 + 376) ^ *(a2 + 376) ^ 1;
    return v5 & 1;
  }

LABEL_16:
  v5 = 0;
  return v5 & 1;
}

unint64_t sub_1A937B334()
{
  result = qword_1EB3867C0;
  if (!qword_1EB3867C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867C0);
  }

  return result;
}

unint64_t sub_1A937B388()
{
  result = qword_1EB3867C8;
  if (!qword_1EB3867C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867C8);
  }

  return result;
}

unint64_t sub_1A937B438()
{
  result = qword_1ED96FD58;
  if (!qword_1ED96FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD58);
  }

  return result;
}

unint64_t sub_1A937B4E4()
{
  result = qword_1EB3867D0;
  if (!qword_1EB3867D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867D0);
  }

  return result;
}

unint64_t sub_1A937B53C()
{
  result = qword_1EB3867D8;
  if (!qword_1EB3867D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867D8);
  }

  return result;
}

unint64_t sub_1A937B594()
{
  result = qword_1EB3867E0;
  if (!qword_1EB3867E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867E0);
  }

  return result;
}

unint64_t sub_1A937B5EC()
{
  result = qword_1EB3867E8;
  if (!qword_1EB3867E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867E8);
  }

  return result;
}

unint64_t sub_1A937B644()
{
  result = qword_1EB3867F0;
  if (!qword_1EB3867F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867F0);
  }

  return result;
}

unint64_t sub_1A937B69C()
{
  result = qword_1EB3867F8;
  if (!qword_1EB3867F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3867F8);
  }

  return result;
}

uint64_t sub_1A937B6FC(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t sub_1A937B72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A937B774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 377) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeWithCopy for TTSTaskRunner.TaskConfiguration.FailureBehavior(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A937B83C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A937B878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A937B8C4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t _s9UtteranceV18ReplacementOptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9UtteranceV18ReplacementOptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1A937B960(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1A937829C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A937B9C0()
{
  result = qword_1ED96FD50;
  if (!qword_1ED96FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FD50);
  }

  return result;
}

uint64_t sub_1A937BA14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1A937BA8C()
{
  v0 = sub_1A957C0C8();
  v1 = TTSLocString(v0);

  if (v1)
  {
    v2 = sub_1A957C0F8();
    v4 = v3;

    sub_1A937829C(&qword_1EB386808, &qword_1A9587190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = 30049;
    *(inited + 40) = 0xE200000000000000;
    v22[0] = xmmword_1A9587170;
    v22[1] = xmmword_1A9587180;
    v23 = sub_1A95038D4();
    v24 = v6;
    v25 = 0;
    v7 = sub_1A937BF94(&unk_1F1CF0D20, &qword_1EB386838, &qword_1A95871C0, sub_1A937C310);
    sub_1A937B960(&unk_1F1CF0D40, &qword_1EB386810, &qword_1A9587198);
    v8 = sub_1A937BF94(MEMORY[0x1E69E7CC0], &qword_1EB386830, &qword_1A95871B8, sub_1A937C310);
    sub_1A9504F44(v22, v7, v8, &unk_1F1CF0D70, &unk_1F1CF0DA0, v20);
    v9 = v20[3];
    *(inited + 80) = v20[2];
    *(inited + 96) = v9;
    *(inited + 112) = v20[4];
    *(inited + 128) = v21;
    v10 = v20[1];
    *(inited + 48) = v20[0];
    *(inited + 64) = v10;
    v11 = sub_1A937C104(inited);
    swift_setDeallocating();
    sub_1A937B960(inited + 32, &qword_1EB386818, &qword_1A95871A0);
    sub_1A937829C(&qword_1EB386820, &qword_1A95871A8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A9587160;
    v13 = swift_allocObject();
    *(v13 + 16) = 0x694D797244746577;
    *(v13 + 24) = 0xE900000000000078;
    v14 = sub_1A957C0C8();
    v15 = TTSLocString(v14);

    if (v15)
    {
      v16 = sub_1A957C0F8();
      v18 = v17;

      *(v13 + 32) = v16;
      *(v13 + 40) = v18;
      *(v13 + 48) = 0x42C8000000000000;
      *(v13 + 56) = 1065353216;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v12 + 32) = v13 | 0xC000000000000000;
      v19 = sub_1A93775FC();
      sub_1A950AA6C(v2, v4, v11, v12, 0xD00000000000001DLL, 0x80000001A95C0140, 0, 0, &xmmword_1EB3916F8, v19 & 1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__int128 *sub_1A937BD90()
{
  if (qword_1EB3916F0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB3916F8;
}

uint64_t static TTSAudioEffect.Reverb.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3916F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_1EB391718;
  v2 = xmmword_1EB391738;
  v9[3] = unk_1EB391728;
  v9[4] = xmmword_1EB391738;
  v3 = qword_1EB391748;
  v10 = qword_1EB391748;
  v4 = xmmword_1EB3916F8;
  v5 = unk_1EB391708;
  v9[0] = xmmword_1EB3916F8;
  v9[1] = unk_1EB391708;
  v9[2] = xmmword_1EB391718;
  *(a1 + 48) = unk_1EB391728;
  *(a1 + 64) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v1;
  *(a1 + 80) = v3;
  *a1 = v4;
  return sub_1A937BE84(v9, v8);
}

unint64_t sub_1A937BEE0(unsigned int a1)
{
  v3 = MEMORY[0x1AC586390](*(v1 + 40), a1, 4);

  return sub_1A937BF28(a1, v3);
}

unint64_t sub_1A937BF28(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A937BF94(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void, void, void, void, unint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(a2, a3);
  v7 = sub_1A957D128();
  v8 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v9 = *(a1 + 76);
  v10 = *(a1 + 72);
  v11 = *(a1 + 77);
  result = sub_1A937BEE0(v8);
  if (v13)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v14 = (a1 + 125);
  v15 = v10 | (v9 << 32);
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 4 * result) = v8;
    v16 = v7[7] + 40 * result;
    *v16 = v21;
    *(v16 + 16) = v22;
    *(v16 + 36) = BYTE4(v15);
    *(v16 + 32) = v15;
    *(v16 + 37) = v11 & 1;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    a4(v21, *(&v21 + 1), v22, *(&v22 + 1), v15);
    if (!--v4)
    {
      return v7;
    }

    v8 = *(v14 - 45);
    v21 = *(v14 - 37);
    v22 = *(v14 - 21);
    v15 = *(v14 - 5) | (*(v14 - 1) << 32);
    v11 = *v14;
    result = sub_1A937BEE0(v8);
    v14 += 48;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A937C104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB386828, &qword_1A95871B0);
  v3 = sub_1A957D128();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1A937C2A0(&v27, v26);
  result = sub_1A937A490(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1A937C2A0(&v27, v26);
    result = sub_1A937A490(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A937C2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386818, &qword_1A95871A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

TextToSpeech::SSMLTag_optional __swiftcall SSMLTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A957D158();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SSMLTag.rawValue.getter()
{
  result = 0x6B61657073;
  switch(*v0)
  {
    case 1:
      result = 0x73612D796173;
      break;
    case 2:
      result = 0x79646F736F7270;
      break;
    case 3:
      result = 0x6F69647561;
      break;
    case 4:
      result = 0x656D656E6F6870;
      break;
    case 5:
      result = 112;
      break;
    case 6:
      result = 115;
      break;
    case 7:
      result = 6452595;
      break;
    case 8:
      result = 0x6563696F76;
      break;
    case 9:
      result = 1735287148;
      break;
    case 0xA:
      result = 0x7369736168706D65;
      break;
    case 0xB:
      result = 0x6B61657262;
      break;
    case 0xC:
      result = 1802658157;
      break;
    case 0xD:
      result = 0x6E776F6E6B6E75;
      break;
    case 0xE:
      result = 1668506980;
      break;
    case 0xF:
      result = 0x74786554776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A937C4B0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SSMLTag.rawValue.getter();
  v4 = v3;
  if (v2 == SSMLTag.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A957D3E8();
  }

  return v7 & 1;
}

uint64_t sub_1A937C54C()
{
  v1 = *v0;
  sub_1A957D4F8();
  SSMLTag.rawValue.getter();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A937C5B4()
{
  v2 = *v0;
  SSMLTag.rawValue.getter();
  sub_1A957C228();
}

uint64_t sub_1A937C618()
{
  v1 = *v0;
  sub_1A957D4F8();
  SSMLTag.rawValue.getter();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A937C688@<X0>(uint64_t *a1@<X8>)
{
  result = SSMLTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1A937C708(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A937C764(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A937C7FC;
}

void sub_1A937C7FC(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A937C878@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A937C8CC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A937C97C()
{
  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1A937C9D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1A937CB84()
{
  v1 = (v0 + OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_1A937CBCC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1A937CD08(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t sub_1A937CD5C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = v4 + *a4;
  result = swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1A937CE1C()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A937CE60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A937CF88(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(v8);
  v16 = *a1;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_attributes;
  v18 = MEMORY[0x1E69E7CC0];
  *&v15[v17] = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  *&v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_children] = v18;
  v19 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagStartRange];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagEndRange];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_rawText];
  *v21 = 0;
  v21[1] = 0;
  v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag] = v16;
  v22 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName];
  *v22 = a2;
  v22[1] = a3;
  v23 = &v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range];
  *v23 = a4;
  v23[1] = a5;
  swift_beginAccess();
  *v21 = a6;
  v21[1] = a7;
  *&v15[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset] = a8;
  v27.receiver = v15;
  v27.super_class = v8;
  return objc_msgSendSuper2(&v27, sel_init);
}

void sub_1A937D1D4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B58 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D274()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B60 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D314()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B68 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D3B4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B70 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D454()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B78 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D4F4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B80 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1A937D594()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_1A957C0C8();
  v2 = [v0 regexForString_];

  if (v2)
  {
    qword_1EB3A7B88 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1A937D62C()
{
  if (qword_1EB391780 != -1)
  {
    swift_once();
  }

  return &qword_1EB3A7B88;
}

uint64_t sub_1A937D6F4()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A937D738(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A937D7E8()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A937D83C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A937D8F4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v3 = v2();
  v4 = (*((*v1 & *v0) + 0xA8))();
  v5 = [v4 length];

  result = v2();
  if (!__OFSUB__(v5, result))
  {
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1A937D9B8()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  v3 = (*((*v1 & *v0) + 0xC0))();
  v5 = [v2 substringWithRange_];

  if (!v5)
  {
    __break(1u);
  }
}

uint64_t sub_1A937DA74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A937DAD0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD8);

  return v3(v4);
}

uint64_t sub_1A937DB40(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1A937DB90(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

unint64_t sub_1A937DC44()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 != 1)
  {
    return 0;
  }

  result = (v1)(v4);
  if (result >> 62)
  {
    v8 = result;
    v9 = sub_1A957CE48();
    result = v8;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1AC585DE0](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 32);
LABEL_9:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A937DD88(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1A937DDE8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

id SSMLParser.__allocating_init(ssml:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_elementStack] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_roots] = v2;
  v3 = &v1[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_preamble];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = sub_1A957C0C8();

  *&v1[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml] = v4;
  *&v1[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position] = 0;
  v6.receiver = v1;
  v6.super_class = v0;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SSMLParser.init(ssml:)()
{
  v1 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_elementStack] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_roots] = v1;
  v2 = &v0[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_preamble];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = sub_1A957C0C8();

  *&v0[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml] = v3;
  *&v0[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SSMLParser();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1A937E040()
{
  if (qword_1EB391770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v3 = qword_1EB3A7B78;
  v4 = v2();
  v5 = *((*v1 & *v0) + 0xC0);
  v6 = v5();
  v8 = [v3 firstMatchInString:v4 options:0 range:{v6, v7}];

  if (!v8)
  {
    return v5();
  }

  v9 = [v8 range];

  v10 = *((*v1 & *v0) + 0x90);
  result = v10();
  if (!__OFSUB__(v9, result))
  {
    return v10();
  }

  __break(1u);
  return result;
}

id sub_1A937E20C(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
  v6 = *a2;
  v7 = v5();
  v8 = (*((*v4 & *v2) + 0xC0))();
  v10 = [v6 firstMatchInString:v7 options:0 range:{v8, v9}];

  return v10;
}

void *static SSMLParser.parse(ssml:)()
{
  v1 = type metadata accessor for SSMLParser();
  v2 = objc_allocWithZone(v1);
  v3 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_elementStack] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_roots] = v3;
  v4 = &v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_preamble];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml] = sub_1A957C0C8();
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position] = 0;
  v15.receiver = v2;
  v15.super_class = v1;
  v5 = objc_msgSendSuper2(&v15, sel_init);
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x130))();
  if (v0)
  {
    goto LABEL_2;
  }

  v8 = *((*v6 & *v5) + 0xD0);
  v9 = v8(v7);
  if (v9 >> 62)
  {
    v16 = v9;
    v13 = sub_1A957CE48();

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v10)
    {
LABEL_5:
      v6 = v8(v11);

      return v6;
    }
  }

  v6 = 0x80000001A95C01E0;
  sub_1A938189C();
  swift_allocError();
  *v14 = 0xD000000000000013;
  v14[1] = 0x80000001A95C01E0;
  swift_willThrow();
LABEL_2:

  return v6;
}

void *static SSMLParser.parseRootElement(ssml:)()
{
  v1 = type metadata accessor for SSMLParser();
  v2 = objc_allocWithZone(v1);
  v3 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_elementStack] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_roots] = v3;
  v4 = &v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_preamble];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_ssml] = sub_1A957C0C8();
  *&v2[OBJC_IVAR____TtC12TextToSpeech10SSMLParser_currentUTF16Position] = 0;
  v16.receiver = v2;
  v16.super_class = v1;
  v5 = objc_msgSendSuper2(&v16, sel_init);
  v6 = MEMORY[0x1E69E7D40];
  v7 = v5;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x130))();
  if (!v0)
  {
    v9 = (*((*v6 & *v5) + 0xE8))(v8);
    if (v9)
    {
      v7 = v9;

      return v7;
    }

    sub_1A957CF08();
    v11 = MEMORY[0x1AC585140](0xD000000000000021, 0x80000001A95C0200);
    v12 = (*((*v6 & *v5) + 0xD0))(v11);
    if (v12 >> 62)
    {
      v13 = sub_1A957CE48();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v13;
    v14 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v14);

    MEMORY[0x1AC585140](0xD000000000000013, 0x80000001A95C0230);
    v7 = 0;
    sub_1A938189C();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return v7;
}

void sub_1A937E78C()
{
  v2 = v1;
  v3 = v0;
  v4 = MEMORY[0x1E69E7D40];
  v58 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  if (!v58())
  {
    if (qword_1EB391750 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = *((*v4 & *v0) + 0xA8);
    v6 = qword_1EB3A7B58;
    v7 = v5();
    v8 = (*((*v4 & *v0) + 0xC0))();
    v10 = [v6 firstMatchInString:v7 options:0 range:{v8, v9}];

    if (v10)
    {
      v11 = v5();
      v12 = [v10 range];
      v14 = [v11 substringWithRange_];

      v15 = sub_1A957C0F8();
      v17 = v16;

      (*((*v4 & *v3) + 0xF8))(v15, v17);
      [v10 range];
      v19 = v18;
      v20 = (*((*v4 & *v3) + 0xA0))(v59);
      if (__OFADD__(*v21, v19))
      {
        __break(1u);
        return;
      }

      *v21 += v19;
      v20(v59, 0);
    }
  }

  v57 = *((*v4 & *v3) + 0xC8);
  v22 = v57();
  v23 = &selRef_taskRequestForIdentifier_;
  v24 = [v22 length];

  if (v24 >= 1)
  {
    do
    {
      v30 = v58();
      v31 = *((*v4 & *v3) + 0xA8);
      v32 = v31();
      v33 = v23;
      v34 = [v32 v23[470]];

      if (v30 == v34)
      {
        return;
      }

      if (qword_1EB391780 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v35 = qword_1EB3A7B88;
      v36 = v31();
      v37 = (*((*v4 & *v3) + 0xC0))();
      v39 = [v35 firstMatchInString:v36 options:0 range:{v37, v38}];

      if (v39)
      {

        return;
      }

      v40 = (*((*v4 & *v3) + 0x110))();
      if (v40)
      {

        v27 = (*((*v4 & *v3) + 0x140))();
        if (v2)
        {
          return;
        }
      }

      else
      {
        v25 = (*((*v4 & *v3) + 0x118))();
        v23 = v33;
        if (v25)
        {

          v26 = v2;
          v27 = (*((*v4 & *v3) + 0x148))();
          goto LABEL_11;
        }

        v41 = (*((*v4 & *v3) + 0x128))();
        if (v41)
        {

          v26 = v2;
          v27 = (*((*v4 & *v3) + 0x150))();
LABEL_11:
          v2 = v26;
          if (v26)
          {
            return;
          }

          goto LABEL_12;
        }

        v42 = (*((*v4 & *v3) + 0x120))();
        if (v43)
        {
          v60 = 0;
          v61 = 0xE000000000000000;
          sub_1A957CF08();

          v60 = 0xD000000000000018;
          v61 = 0x80000001A95C0250;
          v45 = (v57)(v44);
          v46 = [v45 description];
          v47 = sub_1A957C0F8();
          v49 = v48;

          MEMORY[0x1AC585140](v47, v49);

          v50 = MEMORY[0x1AC585140](32, 0xE100000000000000);
          v51 = (v57)(v50);
          v52 = [v51 v33 + 1784];

          v62 = v52;
          v53 = sub_1A957D3A8();
          MEMORY[0x1AC585140](v53);

          v54 = v60;
          v55 = v61;
          sub_1A938189C();
          swift_allocError();
          *v56 = v54;
          v56[1] = v55;
          swift_willThrow();
          return;
        }

        v27 = (*((*v4 & *v3) + 0x158))(v42);
        if (v2)
        {
          return;
        }
      }

      v23 = v33;
LABEL_12:
      v28 = (v57)(v27);
      v29 = [v28 v23 + 1784];
    }

    while (v29 > 0);
  }
}

uint64_t sub_1A937EF18(void *a1)
{
  v11 = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  if (qword_1EB391760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB3A7B68;
  v3 = [a1 length];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A93818F0;
  *(v5 + 24) = v4;
  v10[4] = sub_1A9381ACC;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A937F114;
  v10[3] = &unk_1F1CED630;
  v6 = _Block_copy(v10);
  v7 = a1;

  [v2 enumerateMatchesInString:v7 options:0 range:0 usingBlock:{v3, v6}];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

void sub_1A937F114(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

void sub_1A937F188()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  if (!v3)
  {
    sub_1A938189C();
    swift_allocError();
    *v57 = 0xD000000000000014;
    v57[1] = 0x80000001A95C02A0;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = sub_1A957C0C8();
  v78 = [v4 rangeWithName_];
  v74 = v6;

  [v4 range];
  v7 = *((*v2 & *v1) + 0xA8);
  v8 = v7();
  sub_1A957C0F8();

  v9 = sub_1A957CA08();
  rawValue_8 = v10;
  v73 = v9;
  LOBYTE(v8) = v11;

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v13 = (v7)(v12);
    v14 = [v13 substringWithRange_];

    v15 = sub_1A957C0F8();
    v70 = v16;
    rawValue = v15;

    v17 = v7();
    v18 = sub_1A957C0C8();
    v75 = v4;
    v19 = [v4 rangeWithName_];
    v21 = v20;

    v22 = [v17 substringWithRange_];
    if (!v22)
    {
      sub_1A957C0F8();
      v22 = sub_1A957C0C8();
    }

    (v7)(v23);
    v24 = sub_1A957C188();
    v26 = v25;
    v27 = sub_1A957C338();
    v28 = v27;
    v29 = (v24 >> 59) & 1;
    if ((v26 & 0x1000000000000000) == 0)
    {
      LOBYTE(v29) = 1;
    }

    if ((v27 & 0xC) == 4 << v29)
    {
      v28 = sub_1A938156C(v27, v24, v26);
      v69 = v7;
      if ((v26 & 0x1000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v69 = v7;
      if ((v26 & 0x1000000000000000) == 0)
      {
LABEL_9:

        v78 = (v28 >> 16);
        goto LABEL_10;
      }
    }

    v68 = v24 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0x2000000000000000) != 0)
    {
      v68 = HIBYTE(v26) & 0xF;
    }

    if (v68 >= v28 >> 16)
    {
      v78 = sub_1A957C2F8();

LABEL_10:

      v30._countAndFlagsBits = rawValue;
      v30._object = v70;
      SSMLTag.init(rawValue:)(v30);
      if (v76 == 16)
      {
        v31 = 13;
      }

      else
      {
        v31 = v76;
      }

      v32 = type metadata accessor for ParsedSSMLNode();
      v33 = objc_allocWithZone(v32);
      swift_unknownObjectWeakInit();
      v34 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_attributes;
      v35 = MEMORY[0x1E69E7CC0];
      *&v33[v34] = sub_1A9381740(MEMORY[0x1E69E7CC0]);
      *&v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_children] = v35;
      v36 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagStartRange];
      *v36 = 0;
      *(v36 + 1) = 0;
      v36[16] = 1;
      v37 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagEndRange];
      *v37 = 0;
      *(v37 + 1) = 0;
      v37[16] = 1;
      v38 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_rawText];
      *v38 = 0;
      v38[1] = 0;
      v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag] = v31;
      v39 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName];
      *v39 = rawValue;
      v39[1] = v70;
      v40 = &v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range];
      *v40 = v73;
      v40[1] = rawValue_8;
      swift_beginAccess();
      *v38 = 0;
      v38[1] = 0;
      *&v33[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset] = v78;
      v77.receiver = v33;
      v77.super_class = v32;
      v41 = objc_msgSendSuper2(&v77, sel_init);
      v42 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v41) + 0x138))(v73, rawValue_8, 0);
      v43 = (*((*v42 & *v1) + 0x138))(v22);

      v44 = (*((*v42 & *v41) + 0xF0))(v43);
      v45 = (*((*v42 & *v1) + 0x90))(v44);
      v46 = &selRef_needsParameterSync;
      v47 = [v75 range];
      if (__OFADD__(v47, v48))
      {
        __break(1u);
      }

      else
      {
        if (v45 >= v47 + v48)
        {
          sub_1A957CF08();

          v59 = (v69)(v58);
          v60 = [v59 description];
          v61 = sub_1A957C0F8();
          v63 = v62;

          MEMORY[0x1AC585140](v61, v63);

          sub_1A938189C();
          swift_allocError();
          *v64 = 0x7320726573726150;
          v64[1] = 0xEF2064656C6C6174;
          swift_willThrow();

          return;
        }

        v49 = [v75 range];
        v51 = __OFADD__(v49, v50);
        v52 = &v49[v50];
        if (!v51)
        {
          (*((*v42 & *v1) + 0x98))(v52);
          v53 = sub_1A957C0C8();
          [v75 rangeWithName_];
          v55 = v54;

          v56 = *v42 & *v1;
          if (v55 >= 1)
          {
            (*((*v42 & *v1) + 0x160))(v41);

            return;
          }

          v65 = *((*v42 & *v1) + 0x88);
          v46 = v41;
          v1 = v65(&v76);
          v67 = v66;
          MEMORY[0x1AC585360]();
          if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_29:
      sub_1A957C4F8();
LABEL_21:
      sub_1A957C538();
      (v1)(&v76, 0);

      return;
    }
  }

  __break(1u);
}

void sub_1A937F984()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (!v3)
  {
    sub_1A938189C();
    swift_allocError();
    *v34 = 0xD000000000000014;
    v34[1] = 0x80000001A95C02A0;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = (*((*v2 & *v0) + 0x78))();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6)
    {
      goto LABEL_4;
    }

LABEL_28:
    sub_1A957CF08();

    v58 = [v4 description];
    v59 = sub_1A957C0F8();
    v61 = v60;

    MEMORY[0x1AC585140](v59, v61);

    sub_1A938189C();
    swift_allocError();
    *v62 = 0xD000000000000029;
    v62[1] = 0x80000001A95C02E0;
    swift_willThrow();

    return;
  }

  v57 = sub_1A957CE48();

  if (!v57)
  {
    goto LABEL_28;
  }

LABEL_4:
  v8 = (*((*v2 & *v1) + 0x88))(&v66);
  v9 = v7;
  v10 = *v7;
  if (!(*v7 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v10 < 0)
  {
    v63 = *v7;
  }

  if (!sub_1A957CE48())
  {
    goto LABEL_32;
  }

LABEL_6:
  v11 = sub_1A9381678();
  if (v11)
  {
    goto LABEL_10;
  }

  if (*v9 >> 62)
  {
    goto LABEL_35;
  }

  v12 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  while (1)
  {
    v11 = sub_1A93815E8(v14);
LABEL_10:
    v15 = v11;
    v16 = v8(&v66, 0);
    v65 = *((*v2 & *v1) + 0xA8);
    v17 = (v65)(v16);
    v18 = sub_1A957C0C8();
    v68 = v4;
    v19 = [v4 rangeWithName_];
    v21 = v20;

    v22 = [v17 substringWithRange_];
    v23 = sub_1A957C0F8();
    v8 = v24;

    v25 = *((*v2 & *v15) + 0xD0);
    if (v25() == v23 && v26 == v8)
    {
    }

    else
    {
      v28 = sub_1A957D3E8();

      if ((v28 & 1) == 0)
      {
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_1A957CF08();

        v66 = 0xD000000000000017;
        v67 = 0x80000001A95C02C0;
        v30 = (v25)(v29);
        MEMORY[0x1AC585140](v30);

        MEMORY[0x1AC585140](540877088, 0xE400000000000000);
        MEMORY[0x1AC585140](v23, v8);

        v31 = v66;
        v32 = v67;
        sub_1A938189C();
        swift_allocError();
        *v33 = v31;
        v33[1] = v32;
        swift_willThrow();

        goto LABEL_26;
      }
    }

    [v68 range];
    v35 = v65();
    v2 = sub_1A957C0F8();

    v4 = sub_1A957CA08();
    v37 = v36;
    LOBYTE(v35) = v38;

    if (v35)
    {
      goto LABEL_39;
    }

    v40 = MEMORY[0x1E69E7D40];
    if (v37 >> 14 >= (*((*MEMORY[0x1E69E7D40] & *v15) + 0x118))(v39) >> 14)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v64 = sub_1A957CE48();
    v13 = __OFSUB__(v64, 1);
    v14 = v64 - 1;
    if (v13)
    {
      goto LABEL_37;
    }
  }

  (*((*v40 & *v15) + 0x120))();
  (*((*v40 & *v15) + 0x150))(v4, v37, 0);
  v41 = (*((*v40 & *v1) + 0x160))(v15);
  v42 = (*((*v40 & *v1) + 0x90))(v41);
  v4 = &selRef_needsParameterSync;
  v8 = v68;
  v43 = [v68 range];
  if (__OFADD__(v43, v44))
  {
    goto LABEL_34;
  }

  if (v42 >= v43 + v44)
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_1A957CF08();

    v66 = 0x7320726573726150;
    v67 = 0xEF2064656C6C6174;
    v49 = (v65)(v48);
    v50 = [v49 description];
    v51 = sub_1A957C0F8();
    v53 = v52;

    MEMORY[0x1AC585140](v51, v53);

    v54 = v66;
    v55 = v67;
    sub_1A938189C();
    swift_allocError();
    *v56 = v54;
    v56[1] = v55;
    swift_willThrow();
  }

  else
  {
    v45 = [v8 range];
    v13 = __OFADD__(v45, v46);
    v47 = &v45[v46];
    if (v13)
    {
      goto LABEL_38;
    }

    (*((*v40 & *v1) + 0x98))(v47);
  }

LABEL_26:
}

void sub_1A9380140()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (!v3)
  {
    sub_1A938189C();
    swift_allocError();
    *v12 = 0xD000000000000014;
    v12[1] = 0x80000001A95C02A0;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = (*((*v2 & *v0) + 0x90))();
  v6 = [v4 range];
  if (__OFADD__(v6, v7))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= v6 + v7)
    {
      sub_1A957CF08();

      v14 = (*((*v2 & *v1) + 0xA8))(v13);
      v15 = [v14 description];
      v16 = sub_1A957C0F8();
      v18 = v17;

      MEMORY[0x1AC585140](v16, v18);

      sub_1A938189C();
      swift_allocError();
      *v19 = 0x7320726573726150;
      v19[1] = 0xEF2064656C6C6174;
      swift_willThrow();

      return;
    }

    v8 = [v4 range];
    v10 = __OFADD__(v8, v9);
    v11 = &v8[v9];
    if (!v10)
    {
      (*((*v2 & *v1) + 0x98))(v11);

      return;
    }
  }

  __break(1u);
}

int64_t sub_1A93803A4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
  if (v5)
  {
    v6 = 0x80000001A95C02A0;
    sub_1A938189C();
    swift_allocError();
    v8 = 0xD000000000000014;
LABEL_13:
    *v7 = v8;
    v7[1] = v6;
    return swift_willThrow();
  }

  v9 = v3;
  v10 = v4;
  v11 = *((*v2 & *v0) + 0xA8);
  v12 = v11();
  sub_1A957C0F8();

  v51 = sub_1A957CA08();
  v49 = v13;
  LOBYTE(v12) = v14;

  if (v12)
  {
    goto LABEL_20;
  }

  (v11)(result);
  v16 = sub_1A957C188();
  v18 = v17;
  result = sub_1A957C338();
  v19 = result;
  v20 = (v16 >> 59) & 1;
  if ((v18 & 0x1000000000000000) == 0)
  {
    LOBYTE(v20) = 1;
  }

  if ((result & 0xC) == 4 << v20)
  {
    result = sub_1A938156C(result, v16, v18);
    v19 = result;
    if ((v18 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v45 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v45 = HIBYTE(v18) & 0xF;
    }

    if (v45 < v19 >> 16)
    {
      goto LABEL_21;
    }

    v48 = sub_1A957C2F8();

    goto LABEL_9;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:

  v48 = v19 >> 16;
LABEL_9:
  v46 = v11;
  v22 = (v11)(v21);
  v23 = [v22 substringWithRange_];

  v24 = sub_1A957C0F8();
  v47 = v10;
  v26 = v25;

  v27 = type metadata accessor for ParsedSSMLNode();
  v28 = objc_allocWithZone(v27);
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_attributes;
  v30 = MEMORY[0x1E69E7CC0];
  *&v28[v29] = sub_1A9381740(MEMORY[0x1E69E7CC0]);
  *&v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_children] = v30;
  v31 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagStartRange];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 1;
  v32 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagEndRange];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_rawText];
  *v33 = 0;
  v33[1] = 0;
  v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tag] = 15;
  v34 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_tagName];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = &v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_range];
  *v35 = v51;
  v35[1] = v49;
  swift_beginAccess();
  *v33 = v24;
  v33[1] = v26;
  *&v28[OBJC_IVAR____TtC12TextToSpeech14ParsedSSMLNode_utf8StartOffset] = v48;
  v50.receiver = v28;
  v50.super_class = v27;
  v36 = objc_msgSendSuper2(&v50, sel_init);
  v37 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))();

  v38 = (*((*v37 & *v1) + 0x90))();
  result = v9 + v47;
  if (!__OFADD__(v9, v47))
  {
    if (v38 < result)
    {
      return (*((*v37 & *v1) + 0x98))();
    }

    sub_1A957CF08();

    v40 = (v46)(v39);
    v41 = [v40 description];
    v42 = sub_1A957C0F8();
    v44 = v43;

    MEMORY[0x1AC585140](v42, v44);

    v8 = 0x7320726573726150;
    v6 = 0xEF2064656C6C6174;
    sub_1A938189C();
    swift_allocError();
    goto LABEL_13;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1A938089C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v6 = v5();
  if (v6 >> 62)
  {
    v24 = sub_1A957CE48();

    if (v24)
    {
LABEL_3:
      v9 = (v5)(v8);
      if (v9 >> 62)
      {
        v10 = sub_1A957CE48();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        __break(1u);
      }

      else
      {
        v13 = (v5)(v11);
        v10 = v13;
        if ((v13 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_27;
          }

          if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v14 = *(v13 + 8 * v12 + 32);
LABEL_10:
          v15 = v14;

          v16 = (*((*v4 & *a1) + 0xA8))(v15);
          v17 = (v5)(v16);
          if (!(v17 >> 62))
          {
            v10 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

            v12 = v10 - 1;
            if (!__OFSUB__(v10, 1))
            {
              v19 = (v5)(v18);
              v10 = v19;
              if ((v19 & 0xC000000000000001) == 0)
              {
                if ((v12 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                  goto LABEL_32;
                }

                if (v12 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v20 = *(v19 + 8 * v12 + 32);
                  goto LABEL_17;
                }

                __break(1u);
                goto LABEL_34;
              }

LABEL_30:
              v20 = MEMORY[0x1AC585DE0](v12, v10);
LABEL_17:
              v2 = v20;

              v12 = (*((*v4 & *v2) + 0x110))(v28);
              v22 = v21;
              v23 = a1;
              MEMORY[0x1AC585360]();
              if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_18:
                sub_1A957C538();
                (v12)(v28, 0);

                return;
              }

LABEL_32:
              sub_1A957C4F8();
              goto LABEL_18;
            }

            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_27:
          v10 = sub_1A957CE48();
          goto LABEL_12;
        }
      }

      v14 = MEMORY[0x1AC585DE0](v12, v10);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v2 = (*((*v4 & *v2) + 0xE0))(v28);
  v26 = v25;
  v27 = a1;
  MEMORY[0x1AC585360]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_34:
    sub_1A957C4F8();
  }

  sub_1A957C538();
  (v2)(v28, 0);
}

id SSMLParser.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A9380CEC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ParsedSSMLNode.description.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
  if (!v3)
  {
    v2 = (*((*v1 & *v0) + 0xD0))(v2);
  }

  MEMORY[0x1AC585140](v2);

  v4 = MEMORY[0x1AC585140](23358, 0xE200000000000000);
  (*((*v1 & *v0) + 0x118))(v4);
  sub_1A957D058();
  MEMORY[0x1AC585140](3943982, 0xE300000000000000);
  sub_1A957D058();
  MEMORY[0x1AC585140](0, 0xE000000000000000);

  MEMORY[0x1AC585140](93, 0xE100000000000000);
  return 60;
}

uint64_t sub_1A9380FAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3868D0, qword_1A95888F0);
  v40 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A938126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A937A490(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A9380FAC(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1A937A490(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A93813F4();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_1A93813F4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3868D0, qword_1A95888F0);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A938156C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A957C338();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC5851A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1A93815E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1A93816DC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1A9381678()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1A93816DC(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A93816DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1A957CE48();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1A957CF38();
}

unint64_t sub_1A9381740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB3868D0, qword_1A95888F0);
    v3 = sub_1A957D128();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1A937A490(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A938189C()
{
  result = qword_1EB3868B8;
  if (!qword_1EB3868B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3868B8);
  }

  return result;
}

uint64_t sub_1A93818F0(void *a1)
{
  if (a1)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = sub_1A957C0C8();
    v7 = [a1 rangeWithName_];
    v9 = v8;

    if (v7 != sub_1A957AD68() || (v10 = sub_1A957C0C8(), v7 = [a1 rangeWithName_], v9 = v11, v10, result = sub_1A957AD68(), v7 != result))
    {
      v13 = sub_1A957C0C8();
      v14 = [a1 rangeWithName_];
      v16 = v15;

      v17 = [v4 substringWithRange_];
      v18 = sub_1A957C0F8();
      v20 = v19;

      v21 = [v4 substringWithRange_];
      v22 = sub_1A957C0F8();
      v24 = v23;

      v25 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v5;
      *v5 = 0x8000000000000000;
      sub_1A938126C(v22, v24, v18, v20, isUniquelyReferenced_nonNull_native);

      *v5 = v27;
    }
  }

  else
  {

    return sub_1A957AD68();
  }

  return result;
}

uint64_t sub_1A9381ACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1A9381AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A9381B0C(uint64_t a1)
{
  v2 = v1;
  sub_1A93820F4();
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1A957CD28();
  v7 = v6;
  v8 = [v2 description];
  v9 = sub_1A957C0F8();
  v11 = v10;

  MEMORY[0x1AC585140](v9, v11);

  sub_1A937829C(&qword_1EB3868C8, qword_1A95873D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A9587160;
  *(v12 + 56) = v4;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  sub_1A957D4C8();

  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x100))(v13);
  v15 = result;
  if (!(result >> 62))
  {
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  result = sub_1A957CE48();
  v16 = result;
  if (!result)
  {
  }

LABEL_3:
  v17 = __OFADD__(a1, 1);
  v18 = a1 + 1;
  if (v17)
  {
    __break(1u);
  }

  else if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1AC585DE0](i, v15);
      }

      else
      {
        v20 = *(v15 + 8 * i + 32);
      }

      v21 = v20;
      sub_1A9381B0C(v18);
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SSMLTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SSMLTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1A9381EA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A9381EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A9381EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for MatchingFlags()
{
  if (!qword_1EB3868C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB3868C0);
    }
  }
}

unint64_t sub_1A93820F4()
{
  result = qword_1ED96FEC0;
  if (!qword_1ED96FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FEC0);
  }

  return result;
}

uint64_t TTSMarkup.Phoneme.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Phoneme.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  v5 = v3[3];
  v7[2] = v3[2];
  v7[3] = v5;
  return (*(a3 + 56))(v7);
}

{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t sub_1A9382328()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t TTSMarkup.Phoneme.orthographicRange.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return result;
}

unint64_t TTSMarkup.Phoneme.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v51, 0, v51, &v47);
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xE8);
  v7 = v6(v4);
  if (!*(v7 + 16) || (v8 = sub_1A937A490(26736, 0xE200000000000000), (v9 & 1) == 0))
  {

    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v10 = (*(v7 + 56) + 16 * v8);
  v12 = *v10;
  v11 = v10[1];

  v14 = v6(v13);
  if (*(v14 + 16) && (v15 = sub_1A937A490(0x7465626168706C61, 0xE800000000000000), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_1A957D158();

    if (v20 == 1)
    {
      BYTE9(v48) = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  BYTE9(v48) = 0;
LABEL_10:
  *&v49 = v12;
  *(&v49 + 1) = v11;
  v23 = *((*v5 & *a1) + 0x100);
  result = (v23)(v21);
  if (result >> 62)
  {
    v30 = result;
    v31 = sub_1A957CE48();
    result = v30;
    if (v31)
    {
      goto LABEL_12;
    }

LABEL_17:

    v27 = 0;
    v29 = 0;
    goto LABEL_18;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((result & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1AC585DE0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v24 = *(result + 32);
  }

  v25 = v24;

  v27 = (*((*v5 & *v25) + 0x178))(v26);
  v29 = v28;

LABEL_18:
  *&v50 = v27;
  *(&v50 + 1) = v29;
  result = v23();
  v32 = result;
  if (result >> 62)
  {
    result = sub_1A957CE48();
    v33 = result;
    if (result)
    {
      goto LABEL_20;
    }

LABEL_25:

    v37 = 0;
    v39 = 0;
    goto LABEL_26;
  }

  v33 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x1AC585DE0](0, v32);
    goto LABEL_23;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v32 + 32);
LABEL_23:
    v35 = v34;

    v37 = (*((*v5 & *v35) + 0x118))(v36);
    v39 = v38;

LABEL_26:
    *(&v47 + 1) = v37;
    *&v48 = v39;
    BYTE8(v48) = v33 == 0;
    v40 = v49;
    v41 = v50;
    v45[2] = v49;
    v45[3] = v50;
    v43 = v48;
    v45[0] = v47;
    v42 = v47;
    v45[1] = v48;
    a2[2] = v49;
    a2[3] = v41;
    *a2 = v42;
    a2[1] = v43;
    v46[2] = v40;
    v46[3] = v41;
    v46[0] = v42;
    v46[1] = v43;
    sub_1A938339C(v45, &v44);
    return sub_1A93833D4(v46);
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t TTSMarkup.Phoneme.Alphabet.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t TTSMarkup.Phoneme.attributes.getter()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 32) = 0x7465626168706C61;
  *(inited + 16) = xmmword_1A95873F0;
  v6 = 6385769;
  if (v1)
  {
    v6 = 0x61706D61732D78;
  }

  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v6;
  v7 = 0xE700000000000000;
  if (!v1)
  {
    v7 = 0xE300000000000000;
  }

  *(inited + 56) = v7;
  *(inited + 64) = 26736;
  *(inited + 72) = 0xE200000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v2;

  v8 = sub_1A9381740(v5);
  swift_setDeallocating();
  sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
  swift_arrayDestroy();
  return v8;
}

uint64_t TTSMarkup.Phoneme.Alphabet.description.getter()
{
  if (*v0)
  {
    result = 0x61706D61732D78;
  }

  else
  {
    result = 6385769;
  }

  *v0;
  return result;
}

uint64_t sub_1A9382994(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61706D61732D78;
  }

  else
  {
    v4 = 6385769;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x61706D61732D78;
  }

  else
  {
    v6 = 6385769;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();
  }

  return v9 & 1;
}

uint64_t sub_1A9382A34()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9382AB0()
{
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A9382B18()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9382B90@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A957D158();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1A9382BF0(uint64_t *a1@<X8>)
{
  v2 = 6385769;
  if (*v1)
  {
    v2 = 0x61706D61732D78;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A9382C28()
{
  if (*v0)
  {
    result = 0x61706D61732D78;
  }

  else
  {
    result = 6385769;
  }

  *v0;
  return result;
}

uint64_t TTSMarkup.Phoneme.init(alphabet:phonemes:orthography:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  result = SpeechContext.init<each A>(_:)(v13, 0, v13, a6);
  *(a6 + 25) = v11;
  *(a6 + 32) = a2;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  return result;
}

double TTSMarkup.Phoneme.content.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    *(a1 + 24) = &type metadata for TTSMarkup.SpeechText;
    *(a1 + 32) = &protocol witness table for TTSMarkup.SpeechText;
    v5 = swift_allocObject();
    *a1 = v5;

    return TTSMarkup.SpeechText.init(_:)(v3, v2, v5 + 16);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t TTSMarkup.Phoneme.startingTag.getter()
{
  v1 = v0[1];
  v18 = *v0;
  v19 = v1;
  v3 = *v0;
  v2 = v0[1];
  v20 = v0[2];
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v16 = 60;
  v17 = 0xE100000000000000;
  v11 = v3;
  v12 = v2;
  v13 = v0[2];
  TTSMarkupSpeech.ssmlTag.getter(&type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);
  v6 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v6);

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v4;
  v15 = v5;
  v7 = TTSMarkupSpeech.attributeText.getter(&type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);
  MEMORY[0x1AC585140](v7);

  if (v5)
  {
    *(&v12 + 1) = &type metadata for TTSMarkup.SpeechText;
    *&v13 = &protocol witness table for TTSMarkup.SpeechText;
    *&v11 = swift_allocObject();

    TTSMarkup.SpeechText.init(_:)(v4, v5, v11 + 16);
    sub_1A9383404(&v11);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    *&v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1A9383404(&v11);
    v9 = 0xE100000000000000;
    v8 = 47;
  }

  MEMORY[0x1AC585140](v8, v9);

  MEMORY[0x1AC585140](62, 0xE100000000000000);
  return v16;
}

uint64_t TTSMarkup.Phoneme.endingTag.getter()
{
  v1 = *(v0 + 7);
  if (v1)
  {
    v2 = *(v0 + 6);
    *(&v7 + 1) = &type metadata for TTSMarkup.SpeechText;
    *&v8 = &protocol witness table for TTSMarkup.SpeechText;
    *&v6 = swift_allocObject();

    TTSMarkup.SpeechText.init(_:)(v2, v1, v6 + 16);
    sub_1A9383404(&v6);
    v11 = 12092;
    v12 = 0xE200000000000000;
    v3 = v0[1];
    v6 = *v0;
    v7 = v3;
    v8 = v0[2];
    v9 = v2;
    v10 = v1;
    TTSMarkupSpeech.ssmlTag.getter(&type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);
    v4 = SSMLTag.rawValue.getter();
    MEMORY[0x1AC585140](v4);

    MEMORY[0x1AC585140](62, 0xE100000000000000);
    return v11;
  }

  else
  {
    *&v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1A9383404(&v6);
    return 0;
  }
}

uint64_t TTSMarkup.Phoneme.ssml.getter()
{
  v1 = *(v0 + 16);
  v17 = *v0;
  v18 = v1;
  v19 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (v3)
  {
    *(&v12 + 1) = &type metadata for TTSMarkup.SpeechText;
    *&v13 = &protocol witness table for TTSMarkup.SpeechText;
    *&v11 = swift_allocObject();

    TTSMarkup.SpeechText.init(_:)(v2, v3, v11 + 16);
    sub_1A932D070(&v11, v16);
    v4 = *(v0 + 16);
    v11 = *v0;
    v12 = v4;
    v13 = *(v0 + 32);
    v14 = v2;
    v15 = v3;
    v10 = TTSMarkup.Phoneme.startingTag.getter();
    sub_1A93780F4(v16, v16[3]);
    v5 = off_1F1CF7288();
    MEMORY[0x1AC585140](v5);

    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v2;
    v15 = v3;
    v6 = TTSMarkup.Phoneme.endingTag.getter();
    MEMORY[0x1AC585140](v6);

    v7 = v10;
    sub_1A9378138(v16);
  }

  else
  {
    v8 = *(v0 + 16);
    v11 = *v0;
    v12 = v8;
    v13 = *(v0 + 32);
    v14 = v2;
    v15 = 0;
    return TTSMarkup.Phoneme.startingTag.getter();
  }

  return v7;
}

unint64_t sub_1A9383174()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 32) = 0x7465626168706C61;
  *(inited + 16) = xmmword_1A95873F0;
  v6 = 6385769;
  if (v1)
  {
    v6 = 0x61706D61732D78;
  }

  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v6;
  v7 = 0xE700000000000000;
  if (!v1)
  {
    v7 = 0xE300000000000000;
  }

  *(inited + 56) = v7;
  *(inited + 64) = 26736;
  *(inited + 72) = 0xE200000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v2;

  v8 = sub_1A9381740(v5);
  swift_setDeallocating();
  sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1A938328C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_1A93832E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Phoneme.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A9383404(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A9383470()
{
  result = qword_1EB3868F0;
  if (!qword_1EB3868F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3868F0);
  }

  return result;
}

__n128 sub_1A93834C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A93834D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A9383520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7PhonemeV8AlphabetOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7PhonemeV8AlphabetOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TTSAudioBuffer.frameLength.getter()
{
  v1 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTSAudioBuffer.frameLength.setter(int a1)
{
  v3 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A9383854@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 frameLength];
  *a2 = result;
  return result;
}

id TTSAudioBuffer.init(format:frameCapacity:)(void *a1, unsigned int a2)
{
  v3 = sub_1A938451C(a1, a2);

  return v3;
}

uint64_t sub_1A938398C()
{
  v1 = v0;
  v2 = sub_1A957BFB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___TTSAudioBuffer_mutableAudioBufferList;
  v9 = *&v1[OBJC_IVAR___TTSAudioBuffer_mutableAudioBufferList];
  sub_1A957BFC8();
  result = sub_1A957BFA8();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (result)
    {
      v12 = 0;
      do
      {
        v13 = sub_1A957BFD8();
        v15 = v14;
        v13(v17, 0);
        if (v15)
        {
          MEMORY[0x1AC587CD0](v15, -1, -1);
        }

        ++v12;
      }

      while (v11 != v12);
    }

    MEMORY[0x1AC587CD0](*&v1[v8], -1, -1);
    (*(v3 + 8))(v7, v2);
    v16.receiver = v1;
    v16.super_class = TTSAudioBuffer;
    return objc_msgSendSuper2(&v16, sel_dealloc);
  }

  return result;
}

uint64_t TTSAudioBuffer.channelCount.getter()
{
  v1 = [v0 format];
  v2 = [v1 channelCount];

  return v2;
}

Swift::UInt32 __swiftcall TTSAudioBuffer.bufferByteSize(at:)(Swift::Int at)
{
  v2 = sub_1A957BFB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 mutableAudioBufferList];
  sub_1A957BFC8();
  v8 = sub_1A957BFD8();
  v10 = HIDWORD(v9);
  v8(v12, 0);
  (*(v3 + 8))(v7, v2);
  return v10;
}

uint64_t TTSAudioBuffer.floatChannelData(at:)()
{
  v1 = v0;
  v2 = sub_1A957BFB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 mutableAudioBufferList];
  sub_1A957BFC8();
  v8 = sub_1A957BFD8();
  v10 = v9;
  v8(v12, 0);
  if (v10)
  {
    [v1 frameCapacity];
  }

  (*(v3 + 8))(v7, v2);
  return v10;
}

void sub_1A9383E18()
{
  v1 = [v0 format];
  v2 = [v1 avFormat];

  if (v2)
  {
    v3 = [v0 mutableAudioBufferList];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = objc_allocWithZone(MEMORY[0x1E6958438]);
    v11[4] = nullsub_23;
    v11[5] = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A93844C8;
    v11[3] = &unk_1F1CED658;
    v6 = _Block_copy(v11);
    v7 = v0;

    v8 = [v5 initWithPCMFormat:v2 bufferListNoCopy:v3 deallocator:v6];
    _Block_release(v6);

    if (v8)
    {
      [v8 setFrameLength_];
      return;
    }

    v9 = [v7 format];
    v10 = [v9 avFormat];

    if (v10)
    {
      [objc_allocWithZone(MEMORY[0x1E6958438]) initWithPCMFormat:v10 frameCapacity:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall TTSAudioBuffer.init(avBuffer:)(TTSAudioBuffer_optional *__return_ptr retstr, AVAudioPCMBuffer avBuffer)
{
  isa = avBuffer.super.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAVBuffer_];
}

uint64_t TTSAudioBuffer.init(avBuffer:)(void *a1)
{
  v3 = sub_1A957BFB8();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v39 - v10;
  v12 = a1;
  v13 = [v12 format];
  v14 = [v13 streamDescription];

  v49 = *v14;
  v50 = v14[2];
  v15 = *(v14 + 6);
  v47 = *(v14 + 28);
  v48 = *(v14 + 9);
  v16 = objc_allocWithZone(TTSAudioFormat);
  v42 = v49;
  v43 = v50;
  v44 = v15;
  v45 = v47;
  v46 = v48;
  v17 = [v16 initWithStreamDescription_];
  v18 = [v1 initWithFormat:v17 frameCapacity:objc_msgSend(v12, sel_frameCapacity)];
  v19 = [v12 frameLength];
  v20 = OBJC_IVAR___TTSAudioBuffer_frameLength;
  swift_beginAccess();
  *&v18[v20] = v19;

  v21 = [v12 format];
  v22 = [v21 streamDescription];

  LODWORD(v21) = v22[3] & 0x20;
  if (((TTSAudioFormat.isInterleaved.getter() ^ (v21 >> 5)) & 1) == 0)
  {

    return 0;
  }

  [v12 mutableAudioBufferList];

  v23 = *&v18[OBJC_IVAR___TTSAudioBuffer_mutableAudioBufferList];
  sub_1A957BFC8();
  result = sub_1A957BFC8();
  v25 = v19 * v15;
  if ((v25 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A957BFA8();
    if ((result & 0x8000000000000000) == 0)
    {
      v26 = result;
      v39 = v17;
      if (!result)
      {
LABEL_9:

        v35 = v41;
        v36 = *(v40 + 8);
        v36(v8, v41);
        v36(v11, v35);
        return v18;
      }

      v27 = 0;
      v28 = v25;
      while (1)
      {
        v29 = sub_1A957BFD8();
        v31 = v30;
        v29(&v42, 0);
        if (!v31)
        {
          break;
        }

        v32 = sub_1A957BFD8();
        v34 = v33;
        v32(&v42, 0);
        if (!v34)
        {
          break;
        }

        ++v27;
        memcpy(v34, v31, v28);
        if (v26 == v27)
        {
          goto LABEL_9;
        }
      }

      v37 = v41;
      v38 = *(v40 + 8);
      v38(v8, v41);
      v38(v11, v37);
      return 0;
    }
  }

  __break(1u);
  return result;
}

TTSAudioBuffer __swiftcall TTSAudioBuffer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.mutableAudioBufferList = v4;
  result.frameCapacity = v3;
  result.frameLength = HIDWORD(v3);
  result.format = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_1A93844C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_1A938451C(void *a1, unsigned int a2)
{
  v3 = v2;
  v25 = sub_1A957BFB8();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v25, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___TTSAudioBuffer_format] = a1;
  *&v3[OBJC_IVAR___TTSAudioBuffer_frameCapacity] = a2;
  *&v3[OBJC_IVAR___TTSAudioBuffer_frameLength] = 0;
  v11 = a1;
  v12 = [v11 channelCount];
  if (TTSAudioFormat.isInterleaved.getter())
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = swift_slowAlloc();
  v15 = OBJC_IVAR___TTSAudioBuffer_mutableAudioBufferList;
  *&v3[OBJC_IVAR___TTSAudioBuffer_mutableAudioBufferList] = v14;
  *v14 = v13;
  [v11 streamDescription];
  v16 = v27;
  v17 = v28;
  v18 = *&v3[v15];
  sub_1A957BFC8();
  result = TTSAudioFormat.isInterleaved.getter();
  if (result)
  {
    v20 = a2 * v16;
    if ((v20 & 0xFFFFFFFF00000000) == 0)
    {
      v21 = swift_slowAlloc();
      if (v20)
      {
        bzero(v21, v20);
      }

      sub_1A957BFE8();
LABEL_15:
      (*(v6 + 8))(v10, v25);
      v26.receiver = v3;
      v26.super_class = TTSAudioBuffer;
      return objc_msgSendSuper2(&v26, sel_init);
    }

    __break(1u);
  }

  else
  {
    v22 = a2 * (v17 >> 3);
    if ((v22 & 0xFFFFFFFF00000000) == 0)
    {
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          v24 = swift_slowAlloc();
          if (v22)
          {
            bzero(v24, v22);
          }

          sub_1A957BFE8();
        }
      }

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9384770(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for TTSAudioBuffer()
{
  result = qword_1EB391B90[0];
  if (!qword_1EB391B90[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB391B90);
  }

  return result;
}

double sub_1A93847E0(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1A9384810(uint64_t a1)
{
  v2 = sub_1A937829C(&unk_1EB387BC0, &qword_1A9587E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1A9384878(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  nullsub_23(__dst);
  v2 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v6, &v1[v2], sizeof(v6));
  memcpy(&v1[v2], __dst, 0x118uLL);
  v3 = v1;
  sub_1A9384810(v6);

  return v3;
}

Swift::Int __swiftcall TTSAXResource.assetSize()()
{
  v1 = v0 + OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, v1, 0x118uLL);
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else if (*(v1 + 192))
  {
    return 0;
  }

  else
  {
    return *(v1 + 188);
  }

  return result;
}

Swift::String __swiftcall TTSAXResource.localizedName(forLanguage:)(Swift::String forLanguage)
{
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
    sub_1A957C0F8();
  }

  v4 = objc_opt_self();
  v5 = sub_1A957C0C8();

  v6 = sub_1A957C0C8();
  v7 = [v4 localizedName:v5 forLanguage:v6];

  v8 = sub_1A957C0F8();
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall TTSAXResource.nameAndFootprint(forLanguage:)(Swift::String forLanguage)
{
  v2 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  v3 = sub_1A932D058(__dst);
  if (v3 == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v6, __dst, sizeof(v6));
    v3 = CoreSynthesizer.Voice.localizedNameWithFootprint.getter();
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void __swiftcall TTSAXResource.speechVoice()(TTSSpeechVoice *__return_ptr retstr)
{
  v2 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v10, (v1 + v2), sizeof(v10));
  if (sub_1A932D058(v10) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    memcpy(v7, __dst, sizeof(v7));
    sub_1A937B3DC(v7, v8);
    v4 = [v3 init];
    v5 = OBJC_IVAR___TTSAXResource_voice;
    swift_beginAccess();
    memcpy(v8, &v4[v5], sizeof(v8));
    memcpy(&v4[v5], __dst, 0x118uLL);
    v6 = v4;
    sub_1A9384810(v8);
  }
}

uint64_t sub_1A9385024(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, &a1[v5], sizeof(__dst));
  memcpy(__src, &a1[v5], sizeof(__src));
  result = sub_1A932D058(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v11, __src, sizeof(v11));
    v7 = a1;
    v8 = sub_1A937822C(__dst, v12);
    v10 = *a3(v8);
    v9 = CoreSynthesizer.Voice.has(_:)(&v10);

    memcpy(v12, v11, sizeof(v12));
    sub_1A937B48C(v12);
    return v9 & 1;
  }

  return result;
}

uint64_t sub_1A9385124(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(__src, (v1 + v3), sizeof(__src));
  result = sub_1A932D058(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v8, __src, sizeof(v8));
    memcpy(v9, __dst, sizeof(v9));
    v5 = sub_1A937B3DC(v9, v10);
    v7 = *a1(v5);
    v6 = CoreSynthesizer.Voice.has(_:)(&v7);
    memcpy(v10, v8, sizeof(v10));
    sub_1A937B48C(v10);
    return v6 & 1;
  }

  return result;
}

id sub_1A9385214@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canBeDownloaded];
  *a2 = result;
  return result;
}

uint64_t TTSAXResource.contentPath.getter()
{
  v1 = *sub_1A9431E94();
  v2 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v2), sizeof(__dst));
  memcpy(__src, (v0 + v2), sizeof(__src));
  result = sub_1A932D058(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v6, __src, sizeof(v6));
    v4 = *(*v1 + 96);

    sub_1A937822C(__dst, v7);
    v5 = v4(v6);

    memcpy(v7, v6, sizeof(v7));
    sub_1A937B48C(v7);
    return v5;
  }

  return result;
}

uint64_t TTSAXResource.footprint.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return sub_1A9502D6C();
  }

  __break(1u);
  return result;
}

id sub_1A93855D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 footprint];
  *a2 = result;
  return result;
}

uint64_t TTSAXResource.gender.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), 0x118uLL);
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return qword_1A9587570[__dst[57]];
  }

  __break(1u);
  return result;
}

id sub_1A9385718@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gender];
  *a2 = result;
  return result;
}

id sub_1A93857EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDefault];
  *a2 = result;
  return result;
}

id sub_1A938586C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isNoveltyVoice];
  *a2 = result;
  return result;
}

id sub_1A93858EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPersonalVoice];
  *a2 = result;
  return result;
}

uint64_t sub_1A938594C(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = &a1[OBJC_IVAR___TTSAXResource_voice];
  swift_beginAccess();
  memcpy(__dst, v5, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v5 + 8);
    v8 = a1;
    v10 = *a3();
    sub_1A9387410();
    v9 = sub_1A957CD88();

    return v9 & 1;
  }

  return result;
}

uint64_t sub_1A9385A28(uint64_t (*a1)(void))
{
  v3 = (v1 + OBJC_IVAR___TTSAXResource_voice);
  swift_beginAccess();
  memcpy(__dst, v3, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v3[8];
    v6 = *a1();
    sub_1A9387410();
    return sub_1A957CD88() & 1;
  }

  return result;
}

id sub_1A9385AD8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSystemVoice];
  *a2 = result;
  return result;
}

uint64_t _sSo13TTSAXResourceC12TextToSpeechE15primaryLanguageSSyF_0()
{
  v1 = sub_1A957B308();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v12, (v0 + v7), sizeof(v12));
  result = sub_1A932D058(v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v11, v12, sizeof(v11));
    CoreSynthesizer.Voice.primaryLocale.getter(v6);
    v9 = Locale.legacyIdentifier.getter();
    (*(v2 + 8))(v6, v1);
    return v9;
  }

  return result;
}

uint64_t TTSAXResource.languages.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    CoreSynthesizer.Voice.primaryLocales.getter(v7);
    swift_endAccess();
    v3 = v8;
    v4 = v9;
    v5 = sub_1A93780F4(v7, v8);
    v6 = sub_1A9386128(sub_1A93860EC, 0, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
    sub_1A9378138(v7);
    return v6;
  }

  return result;
}

void sub_1A9386014(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 languages];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A957C4C8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1A938607C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_1A957C4B8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLanguages_];
}

uint64_t sub_1A93860EC@<X0>(uint64_t *a1@<X8>)
{
  result = Locale.legacyIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A9386128(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_1A957C978();
  if (!v29)
  {
    return sub_1A957C508();
  }

  v51 = v29;
  v55 = sub_1A957CFE8();
  v42 = sub_1A957CFF8();
  sub_1A957CF98();
  result = sub_1A957C948();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_1A957C9E8();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_1A957CFD8();
      result = sub_1A957C9A8();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1A93865AC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = memcpy(v9, __dst, sizeof(v9));
    a3(v7);
    v8 = sub_1A957C0C8();

    return v8;
  }

  return result;
}

uint64_t sub_1A938667C(uint64_t (*a1)(void *))
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = memcpy(v6, __dst, sizeof(v6));
    return a1(v5);
  }

  return result;
}

void sub_1A9386718(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1A957C0F8();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_1A9386778(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = sub_1A957C0C8();
  [v8 *a5];
}

uint64_t TTSAXResource.name.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = __dst[5];

    return v3;
  }

  return result;
}

id sub_1A9386958@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subtype];
  *a2 = result;
  return result;
}

id TTSAXResource.synthesisProviderVoice.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v3, __dst, sizeof(v3));
    return CoreSynthesizer.Voice.synthesisProviderVoice.getter();
  }

  return result;
}

id sub_1A9386AC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 synthesisProviderVoice];
  *a2 = result;
  return result;
}

uint64_t sub_1A9386B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return a3(result, v7, v8, v9, v10, v11, v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9386BE4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return a1(result, v5, v6, v7, v8, v9, v10);
  }

  __break(1u);
  return result;
}

id sub_1A9386C88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

uint64_t TTSAXResource.voiceId.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = __dst[0];

    return v3;
  }

  return result;
}

void sub_1A9386E08(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A957C0F8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1A9386E78(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_1A957C0C8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t TTSAXResource.voiceType.getter()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), 0x118uLL);
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else if (LOBYTE(__dst[15]))
  {
    if (LOBYTE(__dst[15]) == 2)
    {
      v3 = vorrq_s8(*&__dst[11], *&__dst[13]);
      if (*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | __dst[10])
      {
        v4 = 0;
      }

      else
      {
        v4 = __dst[9] == 1;
      }

      if (v4)
      {
        return 6;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return qword_1A9587588[SLOBYTE(__dst[9])];
  }

  return result;
}

id sub_1A9386FD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 voiceType];
  *a2 = result;
  return result;
}

void __swiftcall TTSAXResource.init()(TTSAXResource *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id TTSAXResource.init()()
{
  v1 = OBJC_IVAR___TTSAXResource_voice;
  sub_1A93847E0(__src);
  memcpy(&v0[v1], __src, 0x118uLL);
  v3.receiver = v0;
  v3.super_class = TTSAXResource;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t _sSo13TTSAXResourceC12TextToSpeechE13localizedName_11forLanguageS2S_SSSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (TTSSpeechUnitTestingMode())
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    v7 = sub_1A957C0C8();
    v8 = [v6 initWithPath_];
  }

  else
  {
    type metadata accessor for CoreSynthesizer();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
  }

  v10 = sub_1A957C0C8();
  v11 = sub_1A957C0C8();
  v12 = sub_1A957C0C8();
  if (a4)
  {
    a4 = sub_1A957C0C8();
  }

  v13 = AXNSLocalizedStringForLocale();

  if (v13)
  {
    a1 = sub_1A957C0F8();
  }

  else
  {
  }

  return a1;
}

unint64_t sub_1A9387410()
{
  result = qword_1ED96FFF0;
  if (!qword_1ED96FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFF0);
  }

  return result;
}

uint64_t sub_1A9387478(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

float sub_1A93875C0(float a1)
{
  v1 = a1 + 1.0;
  if (v1 <= 0.05)
  {
    v1 = 0.05;
  }

  return logf(v1) / 0.057762;
}

uint64_t TransformableString.string.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TransformableString.string.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransformableString.originalString.getter()
{
  v1 = v0[2];
  v2 = v1[2];
  v3 = v1 + 4;
  v4 = v1 + 5;
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v4 = v0 + 1;
    v5 = v0;
  }

  v6 = *v4;
  v7 = *v5;

  return v7;
}

uint64_t TransformableString.withTransformation<A>(_:)(void (*a1)(uint64_t, unint64_t, uint64_t (*)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4), void *))
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v5;
  swift_bridgeObjectRetain_n();

  a1(v4, v3, sub_1A9387B60, v7);

  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    v37 = v1;
    swift_beginAccess();
    v8 = *v6;
    v9 = *(*v6 + 2);
    if (v9)
    {
      v38 = (v5 + 16);

      v10 = &v8[48 * v9];
      do
      {
        if (v9 > *(v8 + 2))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v6 = v38;
          *v38 = v8;
          goto LABEL_34;
        }

        --v9;
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        v14 = *(v10 + 1);
        v10 -= 48;
        sub_1A93883DC(v11, v12, v4, v3);
        sub_1A9389700();
        sub_1A957C1E8();
      }

      while (v9);
      v6 = v38;
      v39 = *(v8 + 2);
      if (!v39)
      {
        goto LABEL_34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A93895A4(v8);
      }

      v15 = 0;
      v16 = 0;
      v17 = (v8 + 40);
      while (v16 < *(v8 + 2))
      {
        v18 = *(v17 - 1);
        v41 = v16;
        v42 = *v17;
        v20 = v17[1];
        v19 = v17[2];
        if ((v19 & 0x1000000000000000) != 0)
        {
          v30 = v17[1];
          v31 = v17[2];
          v21 = sub_1A957C2B8();
          v22 = v18 + v15;
          if (__OFADD__(v18, v15))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if ((v19 & 0x2000000000000000) != 0)
          {
            v21 = HIBYTE(v19) & 0xF;
          }

          else
          {
            v21 = v20 & 0xFFFFFFFFFFFFLL;
          }

          v22 = v18 + v15;
          if (__OFADD__(v18, v15))
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        v23 = v20;
        v6 = (v22 + v21);
        if (__OFADD__(v22, v21))
        {
          goto LABEL_37;
        }

        if (v6 < v22)
        {
          goto LABEL_38;
        }

        v40 = v15;
        v24 = *(v8 + 2);
        swift_bridgeObjectRetain_n();
        if (v41 >= v24)
        {
          goto LABEL_39;
        }

        v25 = v17[2];
        *(v17 - 1) = v18;
        *v17 = v42;
        v17[1] = v23;
        v17[2] = v19;
        v17[3] = v22;
        v17[4] = v6;

        if ((v19 & 0x1000000000000000) != 0)
        {
          v26 = sub_1A957C2B8();
        }

        else
        {

          if ((v19 & 0x2000000000000000) != 0)
          {
            v26 = HIBYTE(v19) & 0xF;
          }

          else
          {
            v26 = v23 & 0xFFFFFFFFFFFFLL;
          }
        }

        v27 = v42 - v18;
        if (__OFSUB__(v42, v18))
        {
          goto LABEL_40;
        }

        v28 = __OFSUB__(v26, v27);
        v29 = v26 - v27;
        if (v28)
        {
          goto LABEL_41;
        }

        v15 = v40 + v29;
        if (__OFADD__(v40, v29))
        {
          goto LABEL_42;
        }

        v16 = v41 + 1;
        v17 += 6;
        if (v39 == v41 + 1)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

LABEL_34:
    swift_endAccess();
    v32 = v37[1];
    *v37 = v4;
    v37[1] = v3;

    v33 = v37[2];
    sub_1A937829C(&qword_1EB386930, &qword_1A95876E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    swift_beginAccess();
    *(inited + 48) = *v6;

    sub_1A938949C(inited);
    v35 = v37[2];
    v37[2] = v33;
  }
}

uint64_t sub_1A9387B60(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v12 = (v10 >> 59) & 1;
  if ((v9 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  if ((a1 & 0xC) == 4 << v12)
  {
    v5 = a2;
    v6 = v9;
    a1 = sub_1A938156C(a1, v10, v9);
    a2 = v5;
    v9 = v6;
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v9 & 0x1000000000000000) == 0)
  {
LABEL_5:
    v5 = (a1 >> 16);
    goto LABEL_6;
  }

  v15 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v9) & 0xF;
  }

  if (v15 < a1 >> 16)
  {
    goto LABEL_40;
  }

  v6 = a2;
  v16 = v9;
  v17 = sub_1A957C2F8();
  v9 = v16;
  v5 = v17;
  a2 = v6;
LABEL_6:
  if ((a2 & 0xC) == v13)
  {
    v13 = v9;
    v18 = sub_1A938156C(a2, v10, v9);
    v9 = v13;
    a2 = v18;
    if ((v13 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v9 & 0x1000000000000000) == 0)
  {
LABEL_8:
    v14 = (a2 >> 16);
    goto LABEL_19;
  }

  v19 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v9) & 0xF;
  }

  if (v19 >= a2 >> 16)
  {
    v14 = sub_1A957C2F8();
LABEL_19:
    if (v14 < v5)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v13 = *(v11 + 16);
      v6 = *(v13 + 16);
      if (v6)
      {
        v20 = (v13 + 40);
        v21 = *(v13 + 16);
        do
        {
          if (v5 != v14)
          {
            v22 = *(v20 - 1);
            v23 = v5 < *v20 && v22 < v14;
            if (v23 && v22 != *v20)
            {
              return 0;
            }
          }

          v20 += 6;
        }

        while (--v21);
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 16) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_33:
        v28 = *(v13 + 16);
        v27 = *(v13 + 24);
        if (v28 >= v27 >> 1)
        {
          v13 = sub_1A9389234((v27 > 1), v28 + 1, 1, v13);
        }

        *(v13 + 16) = v28 + 1;
        v29 = (v13 + 48 * v28);
        *(v29 + 4) = v5;
        *(v29 + 5) = v14;
        *(v29 + 6) = a3;
        *(v29 + 7) = a4;
        *(v29 + 8) = v5;
        *(v29 + 9) = v14;
        *(v11 + 16) = v13;
        swift_endAccess();
        v33 = v13;
        swift_bridgeObjectRetain_n();
        sub_1A9388798(&v33);

        v30 = v33;
        v25 = 1;
        swift_beginAccess();
        v31 = *(v11 + 16);
        *(v11 + 16) = v30;

        return v25;
      }
    }

    v13 = sub_1A9389234(0, v6 + 1, 1, v13);
    *(v11 + 16) = v13;
    goto LABEL_33;
  }

  __break(1u);
LABEL_40:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t TransformableString.translate(_:)(unint64_t a1, unint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = sub_1A9387E88(a1, a2, v3, v4);
  v8 = sub_1A938800C(v6, v7, v5, v3);
  v12 = sub_1A93883DC(v10, v11, v8, v9);

  return v12;
}

unint64_t sub_1A9387E88(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a4 & 0x1000000000000000) == 0 || (a3 & 0x800000000000000) != 0;
  v8 = (v6 << 16) | 0xB;
  v9 = 4 * v6;
  if (v7)
  {
    v10 = (v6 << 16) | 7;
  }

  else
  {
    v10 = (v6 << 16) | 0xB;
  }

  if (v9 >= result >> 14)
  {
    v10 = result;
  }

  v11 = a2 >> 14;
  v12 = v10;
  if (a2 >> 14 < v10 >> 14 || ((v13 = v9 >= v11, v14 = (v9 >= v11) | v7, !v13) ? (v12 = (v6 << 16) | 7) : (v12 = a2), (v14 & 1) != 0))
  {
    v8 = v12;
  }

  v15 = 4 << v7;
  if ((v10 & 0xC) == 4 << v7)
  {
    v18 = v8;
    v19 = a4;
    result = sub_1A938156C(v10, a3, a4);
    v8 = v18;
    a4 = v19;
    v16 = result >> 16;
    if ((v19 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = v10 >> 16;
    if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v6 >= v16)
  {
    v20 = v8;
    v21 = a4;
    result = sub_1A957C2F8();
    a4 = v21;
    v16 = result;
    v8 = v20;
LABEL_20:
    if ((v8 & 0xC) == v15)
    {
      v22 = a4;
      result = sub_1A938156C(v8, a3, a4);
      v17 = result >> 16;
      if ((v22 & 0x1000000000000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = v8 >> 16;
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v6 < v17)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    result = sub_1A957C2F8();
    v17 = result;
LABEL_24:
    if (v17 >= v16)
    {
      return v16;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1A938800C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a3[2])
  {
LABEL_52:
    v49 = a4;

    return v49;
  }

  v5 = a3;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_79:
    result = sub_1A93895B8(v5);
    v5 = result;
  }

  v7 = v5[2];
  v8 = a2;
  if (!v7)
  {
    __break(1u);
    goto LABEL_81;
  }

  v9 = v7 - 1;
  v10 = &v5[3 * v7];
  a4 = v10[1];
  v11 = v10[2];
  v12 = v10[3];
  v5[2] = v9;
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = 0;
LABEL_56:
    result = a1 - v14;
    if (!__OFSUB__(a1, v14))
    {
      if (!__OFSUB__(v8, v14))
      {
        if (v8 - v14 >= result)
        {
          goto LABEL_66;
        }

        goto LABEL_83;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v57 = v5;
  v14 = 0;
  v15 = 0;
  result = 0;
  v5 = 0;
  v16 = (v12 + 40);
  v17 = 1;
  do
  {
    if (v5 >= *(v12 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v18 = *(v16 - 1);
    v19 = *v16;
    v20 = v16[1];
    v21 = v16[2];
    v22 = v16[4];
    if (v22 <= a1)
    {
      if ((v21 & 0x1000000000000000) != 0)
      {
        v51 = a4;
        v52 = result;
        v36 = v11;
        v54 = v12;
        v37 = sub_1A957C2B8();
        v11 = v36;
        v8 = a2;
        a4 = v51;
        v30 = v37;
        result = v52;
        v12 = v54;
        v31 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v30 = v20 & 0xFFFFFFFFFFFFLL;
        if ((v21 & 0x2000000000000000) != 0)
        {
          v30 = HIBYTE(v21) & 0xF;
        }

        v31 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
          goto LABEL_70;
        }
      }

      v28 = __OFSUB__(v30, v31);
      v32 = v30 - v31;
      if (v28)
      {
        goto LABEL_71;
      }

      v28 = __OFADD__(v14, v32);
      v14 += v32;
      if (v28)
      {
        goto LABEL_72;
      }

      goto LABEL_6;
    }

    v23 = v16[3];
    if (v23 >= v8)
    {
      break;
    }

    if (v23 <= a1 && v22 >= v8)
    {
      v46 = v16[2];
      v47 = a4;
      v48 = v11;

      v49 = sub_1A938800C(v18, v19, v57, v47, v48);

      goto LABEL_67;
    }

    if (v23 >= a1)
    {
      if (v17)
      {
        result = a1 - v14;
        if (__OFSUB__(a1, v14))
        {
          goto LABEL_78;
        }
      }

      if (v22 > v8)
      {
        if (v19 < result)
        {
          goto LABEL_87;
        }

        v50 = *v16;
        goto LABEL_66;
      }

      if ((v21 & 0x1000000000000000) != 0)
      {
        v53 = result;
        v56 = v12;
        v42 = a4;
        v43 = v11;
        v44 = sub_1A957C2B8();
        v11 = v43;
        v8 = a2;
        a4 = v42;
        v33 = v44;
        result = v53;
        v12 = v56;
        v34 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v33 = v20 & 0xFFFFFFFFFFFFLL;
        if ((v21 & 0x2000000000000000) != 0)
        {
          v33 = HIBYTE(v21) & 0xF;
        }

        v34 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      v28 = __OFSUB__(v33, v34);
      v35 = v33 - v34;
      if (v28)
      {
        goto LABEL_76;
      }

      v28 = __OFADD__(v15, v35);
      v15 += v35;
      if (v28)
      {
        goto LABEL_77;
      }

      v17 = 0;
    }

    else
    {
      if ((v21 & 0x1000000000000000) != 0)
      {
        v38 = v16[1];
        v39 = v16[2];
        v40 = a4;
        v41 = v11;
        v55 = v12;
        v26 = sub_1A957C2B8();
        v12 = v55;
        v11 = v41;
        v8 = a2;
        a4 = v40;
        v27 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
          goto LABEL_73;
        }
      }

      else
      {
        v25 = v20 & 0xFFFFFFFFFFFFLL;
        if ((v21 & 0x2000000000000000) != 0)
        {
          v26 = HIBYTE(v21) & 0xF;
        }

        else
        {
          v26 = v25;
        }

        v27 = v19 - v18;
        if (__OFSUB__(v19, v18))
        {
          goto LABEL_73;
        }
      }

      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        goto LABEL_74;
      }

      v28 = __OFADD__(v15, v29);
      v15 += v29;
      if (v28)
      {
        goto LABEL_75;
      }

      v17 = 0;
      result = v18;
    }

LABEL_6:
    v5 = (v5 + 1);
    v16 += 6;
  }

  while (v13 != v5);
  if (v17)
  {
    goto LABEL_56;
  }

  v45 = v15 + v14;
  if (__OFADD__(v15, v14))
  {
    goto LABEL_84;
  }

  if (__OFSUB__(v8, v45))
  {
    goto LABEL_85;
  }

  if (v8 - v45 < result)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    return result;
  }

LABEL_66:
  v49 = (sub_1A938800C)();
LABEL_67:

  return v49;
}

uint64_t sub_1A93883DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = result;
    v16 = a4;
    v17 = a3;
    v18 = sub_1A957C2B8();
    a3 = v17;
    a4 = v16;
    v6 = v18;
    result = v15;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a4) & 0xF;
    }
  }

  if (v6 >= result)
  {
    v7 = result;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 & ~(v7 >> 63);
  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 <= v8)
  {
    v9 = v7 & ~(v7 >> 63);
  }

  else
  {
    v9 = v6;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    v12 = a3;
    v13 = a4;
    v14 = MEMORY[0x1AC5851A0](15);
    v11 = MEMORY[0x1AC5851A0](15, v9, v12, v13);
    result = v14;
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v10 = v5;
    }

    if (v7 > v10)
    {
      goto LABEL_23;
    }

    if (v10 < v9)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    result = (v8 << 16) | 4;
    v11 = (v9 << 16) | 4;
  }

  if (v11 >> 14 < result >> 14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t TransformableString.translate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  sub_1A938800C(a1, a2, *(v2 + 16), *v2);
  v5 = v4;

  return v5;
}

TextToSpeech::TransformableString __swiftcall TransformableString.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[1] = stringLiteral._object;
  v1[2] = v2;
  *v1 = stringLiteral._countAndFlagsBits;
  result.string = stringLiteral;
  return result;
}

TextToSpeech::TransformableString __swiftcall TransformableString.init(_:)(Swift::String a1)
{
  *v1 = a1;
  v1[1]._countAndFlagsBits = MEMORY[0x1E69E7CC0];
  result.string = a1;
  return result;
}

uint64_t *sub_1A9388548@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = MEMORY[0x1E69E7CC0];
  a2[1] = result[1];
  a2[2] = v3;
  *a2 = v2;
  return result;
}

unint64_t sub_1A9388564()
{
  result = qword_1EB386920;
  if (!qword_1EB386920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386920);
  }

  return result;
}

unint64_t sub_1A93885C8()
{
  result = qword_1EB386928;
  if (!qword_1EB386928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386928);
  }

  return result;
}

__n128 sub_1A9388634(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A9388648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A9388690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1A93886E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A93886F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A938873C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A9388798(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93895CC(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_1A957D388();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[48 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 3))
          {
            break;
          }

          v14 = *(v13 + 6);
          v15 = *(v13 + 2);
          v16 = *(v13 - 8);
          *(v13 + 24) = *(v13 - 24);
          v17 = *(v13 + 56);
          *(v13 + 40) = v16;
          *(v13 + 56) = *(v13 + 8);
          *(v13 - 3) = v11;
          *(v13 - 1) = v15;
          *v13 = v14;
          *(v13 + 8) = v17;
          v13 -= 48;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 48;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A957C518();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_1A9388908(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A9388908(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A938911C(v7);
      v7 = result;
    }

    v92 = (v7 + 16);
    v93 = *(v7 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v7 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1A9388EE0((*a3 + 48 * *v94), (*a3 + 48 * *v96), (*a3 + 48 * v97), v101);
        if (v4)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6);
      v10 = 48 * v8;
      v11 = (*a3 + 48 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 6;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 48 * v6 - 48;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v10);
            v23 = (v30 + v19);
            v24 = *(v22 + 2);
            v25 = *(v22 + 3);
            v26 = *v22;
            v27 = v22[2];
            v29 = v23[1];
            v28 = v23[2];
            *v22 = *v23;
            v22[1] = v29;
            v22[2] = v28;
            *v23 = v26;
            *(v23 + 2) = v24;
            *(v23 + 3) = v25;
            v23[2] = v27;
          }

          ++v21;
          v19 -= 48;
          v10 += 48;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 16);
    v44 = *(v7 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1A9389130((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v46;
    v47 = v7 + 32;
    v48 = (v7 + 32 + 16 * v45);
    *v48 = v8;
    v48[1] = v6;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 32);
          v51 = *(v7 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v7 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v7 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_1A9388EE0((*a3 + 48 * *v87), (*a3 + 48 * *v89), (*a3 + 48 * v90), v101);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v7 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v7 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v7 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v99;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 48 * v6 - 48;
  v33 = v8 - v6;
LABEL_30:
  v34 = *(v31 + 48 * v6);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = (v36 + 48);
    if (v34 >= *v36)
    {
LABEL_29:
      ++v6;
      v32 += 48;
      --v33;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 72);
    v39 = *(v36 + 56);
    v40 = *(v36 + 80);
    v41 = *(v36 + 16);
    *v37 = *v36;
    *(v36 + 64) = v41;
    v42 = *(v36 + 32);
    *v36 = v34;
    *(v36 + 8) = v39;
    *(v36 + 24) = v38;
    *(v36 + 32) = v40;
    v36 -= 48;
    v37[2] = v42;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}