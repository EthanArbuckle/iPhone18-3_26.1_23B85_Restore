void sub_2992A2030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  MEMORY[0x29C29BFB0](v29, 0x10A1C40079592F6);
  sub_2992A22DC(&a13);
  _Unwind_Resume(a1);
}

void sub_2992A2124(uint64_t a1, const void *a2, int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_5;
  }

  sub_299240D80((a1 + 104), a2);
  if (a3)
  {
    pthread_attr_init(&v8);
    pthread_attr_setdetachstate(&v8, 1);
    v5 = pthread_create((a1 + 8), &v8, sub_2992A1104, a1);
    pthread_attr_destroy(&v8);
    if (v5)
    {
      *(a1 + 8) = 0;
    }

LABEL_5:
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

  v7 = *MEMORY[0x29EDCA608];

  sub_2992A1150(a1);
}

uint64_t sub_2992A2210(CFArrayRef theArray, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = a2;
  v6 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, *(v4 + 8));
    v8 = *v4;
    v4 += 16;
    Length = CFStringGetLength(v8);
    Value = CFDictionaryGetValue(ValueAtIndex, kMecabraSupplementalLexiconSurfaceKey[0]);
    v11 = CFStringGetLength(Value);
    v12 = CFDictionaryGetValue(ValueAtIndex, kMecabraSupplementalLexiconIdentifiersKey[0]);
    v6 += Length + v11 + 4 * (CFArrayGetCount(v12) & 0x1FFFFFFFFFFFFFFFLL) + 5;
  }

  while (v4 != a3);
  return v6;
}

uint64_t sub_2992A22DC(uint64_t a1)
{
  sub_29921ED28(a1 + 48);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2992A2328(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_2992A2334(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2992A3CC4(a2);
    }

    sub_2992A3B48();
  }

  return result;
}

uint64_t sub_2992A23D4(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, uint64_t a8, uint8x8_t a9)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a4 && (v9 = atomic_load((a1 + 96)), (v9 & 1) != 0) && *(a1 + 16))
  {
    if ((a7 & 0x40) != 0)
    {
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v13 = *(a1 + 24);
      *(&v15 + 1) = a3;
      LODWORD(v16) = 2 * a4;
      *(&v16 + 1) = a6;
      *&v17 = a5;
      *(&v17 + 1) = a8;
      LODWORD(v18) = 1;
      *(&v19 + 1) = v20 + 2;
      BYTE1(v20[0]) = 1;
      v14[0] = v13;
      v14[1] = a2;
      result = sub_2993DD7C4(v13, v14);
    }

    else
    {
      v10 = *(a1 + 24);
      v14[0] = 0;
      if ((a7 & 0x700) != 0)
      {
        sub_2993DB770(v10, *v10, v14, a3, 2 * a4, a6, a5, -1, a9, a3, (a7 >> 7) & 0xE, 0);
      }

      else
      {
        sub_2993228BC(v10, *v10, a3, 2 * a4, a6, v14, a5, a3, a9);
      }

      result = v14[0];
    }
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992A2538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = atomic_load((a1 + 96));
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v14 = 0;
        if ((**v6)(v6, a2, 2 * a3, &v14))
        {
          sub_2992A2634(a1, v14, &v12);
          v11 = 0;
          v8 = v12;
          v9 = v13;
          if (v12 != v13)
          {
            v10 = v12;
            do
            {
              (*(a4 + 16))(a4, v10, &v11);
              if (v11)
              {
                break;
              }

              v10 += 56;
            }

            while (v10 != v9);
          }

          if (v8)
          {
            operator delete(v8);
          }
        }
      }
    }
  }
}

void sub_2992A261C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A2634@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = result + 32;
  if (a2)
  {
    v7 = (*(result + 32) + 2 * a2);
    result = sub_2992A4B54(&v6);
    if (v7 >= *(v6 + 8))
    {
      __assert_rtn("readUniChar", "DynamicDictionary.cpp", 290, "m_ptr < m_data.data() + m_data.size()");
    }

    v5 = *v7;
    v4 = *v7++;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v5)
    {
      sub_2992A4C74(v4);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_2992A285C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A2884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x29EDCA608];
  result = (*(*a2 + 24))(a2);
  if (result)
  {
    v7 = atomic_load((a1 + 96));
    if (v7)
    {
      result = *(a1 + 16);
      if (result)
      {
        v9[0] = &unk_2A1F6ABA0;
        v9[1] = a1;
        v9[2] = a3;
        v9[3] = v9;
        (*(*result + 80))(result, a2, v9);
        result = sub_29922CF08(v9);
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992A2980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29922CF08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A2994(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(result + 112) == 3)
  {
    v2 = result;
    v3 = atomic_load((result + 96));
    if (v3)
    {
      if (*(result + 16))
      {
        result = (*(*a2 + 24))(a2);
        if (result)
        {
          v5 = *(*(*a2 + 48))(a2, 0, 0);
          v6 = *(v2 + 16);
          operator new();
        }
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992A2AEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29922CF08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A2B00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[4] = *MEMORY[0x29EDCA608];
  v7 = a4;
  if (a3)
  {
    v4 = result;
    v5 = atomic_load((result + 96));
    if (v5)
    {
      result = *(result + 16);
      if (result)
      {
        v8[0] = &unk_2A1F6ACA0;
        v8[1] = v4;
        v8[2] = &v7;
        v8[3] = v8;
        (*(*result + 16))(result, a2, 2 * a3, v8);
        result = sub_29922D43C(v8);
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992A2BCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29922D43C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[4] = *MEMORY[0x29EDCA608];
  result = (*(*a2 + 24))(a2);
  if (result)
  {
    v9 = atomic_load((a1 + 96));
    if (v9)
    {
      result = *(a1 + 16);
      if (result)
      {
        v11[0] = &unk_2A1F6AD20;
        v11[1] = a1;
        v11[2] = a3;
        v11[3] = v11;
        (*(*result + 112))(result, a2, v11, a4);
        result = sub_29922CF08(v11);
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992A2CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29922CF08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A2CF8(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(result + 112) == 3)
  {
    v2 = result;
    v3 = atomic_load((result + 96));
    if (v3)
    {
      if (*(result + 16))
      {
        result = (*(*a2 + 24))(a2);
        if (result)
        {
          v5 = *(*(*a2 + 48))(a2, 0, 0);
          v6 = *(v2 + 16);
          operator new();
        }
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992A2E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29922CF08(va);
  _Unwind_Resume(a1);
}

void sub_2992A2E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = *MEMORY[0x29EDCA608];
  v4[0] = &unk_2A1F6ADA0;
  v4[1] = a4;
  v4[3] = v4;
  sub_2992A7888();
}

void sub_2992A2EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992A7808(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A2F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = atomic_load((result + 96));
  if (v5)
  {
    if (*(result + 16))
    {
      v37 = 0;
      v6 = *(result + 40);
      v7 = *(result + 32) + 2;
      v32 = result + 32;
      v33 = v7;
      if (v7 < v6)
      {
        while (1)
        {
          result = sub_2992A4B54(&v32);
          v13 = *(v32 + 8);
          if (v33 >= v13)
          {
            __assert_rtn("readUniChar", "DynamicDictionary.cpp", 290, "m_ptr < m_data.data() + m_data.size()");
          }

          v16 = *v33;
          v14 = v33 + 1;
          v15 = v16;
          ++v33;
          if (v16)
          {
            break;
          }

LABEL_35:
          if (v14 >= v13)
          {
            return result;
          }
        }

        v17 = result;
        v18 = v12;
        v19 = 0;
        while (1)
        {
          result = sub_2992A4C0C(v34, &v32, v17, v18);
          v20 = (a4 - v36) & ~((a4 - v36) >> 63);
          v21 = v36 + a4;
          if (a3 < v36 + a4)
          {
            v21 = a3;
          }

          v22 = v21 - v20;
          if (a2)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          if (!v36)
          {
            goto LABEL_32;
          }

          if (v23 >= v36)
          {
            v24 = (a2 + 2 * v20);
            v25 = &v24[v23];
            v26 = v24;
LABEL_15:
            v27 = v26;
            v28 = v23 - v36 + 1;
            if (v23 - v36 != -1)
            {
              v31 = 2 - 2 * v36 + 2 * v23;
              v27 = v26;
              while (1)
              {
                result = *v27;
                if (result == *v35)
                {
                  break;
                }

                ++v27;
                v31 -= 2;
                if (!v31)
                {
                  goto LABEL_33;
                }
              }
            }

            if (v27 != &v26[v28] && v27 != 0)
            {
              break;
            }
          }

LABEL_33:
          if (++v19 >= v15)
          {
            v14 = v33;
            v13 = *(v32 + 8);
            goto LABEL_35;
          }
        }

        for (i = 0; i != v36; ++i)
        {
          if (v35[i] != v27[i])
          {
            v26 = v27 + 1;
            v23 = v25 - (v27 + 1);
            if (v23 >= v36)
            {
              goto LABEL_15;
            }

            goto LABEL_33;
          }
        }

        if (v27 == v25 || v27 - v24 == -2)
        {
          goto LABEL_33;
        }

LABEL_32:
        result = (*(a5 + 16))(a5, v34, &v37);
        if (v37 == 1)
        {
          return result;
        }

        goto LABEL_33;
      }
    }
  }

  return result;
}

uint64_t sub_2992A3108@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 && (v5 = result, v6 = atomic_load((result + 96)), (v6 & 1) != 0) && (result = *(result + 16)) != 0)
  {
    v7 = 0;
    (**result)(result, a2, 2 * a3, &v7);
    return sub_2992A2634(v5, v7, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

void sub_2992A3198(const __CFString *a1@<X1>, UniChar **a2@<X8>)
{
  sub_299276BDC(a1, &v9);
  v3 = v9;
  v4 = v10;
  if (v9 == v10)
  {
    goto LABEL_15;
  }

  v5 = 0;
  v6 = v9;
  do
  {
    v7 = *v6;
    if (v7 >= 0x41 && v7 <= 0x30F4 && (v7 - 91) >= 0x3046u)
    {
      if (v7 <= 0x30A0)
      {
        if (v7 > 0x5A)
        {
LABEL_11:
          v5 = 1;
          goto LABEL_12;
        }

        v8 = 32;
      }

      else
      {
        v8 = -96;
      }

      *v6 = v8 + v7;
      goto LABEL_11;
    }

LABEL_12:
    ++v6;
  }

  while (v6 != v4);
  if (v5)
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v11;
    return;
  }

LABEL_15:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v3)
  {
    v10 = v3;
    operator delete(v3);
  }
}

void sub_2992A3388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2992A33C0(uint64_t a1)
{
  sub_2992A1008(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992A33FC(uint64_t a1)
{
  sub_2992A1008(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2992A3434(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      sub_2992A3B60(a2);
    }

    sub_2992A3B48();
  }

  return result;
}

void sub_2992A34F8(uint64_t a1, CFStringRef theString, const __CFString *a3, __int16 a4)
{
  Length = CFStringGetLength(theString);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v10 >= v9)
  {
    v12 = *(a1 + 24);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2992A3B48();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_2992A3B60(v16);
    }

    v17 = 24 * v13;
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    v11 = 24 * v13 + 24;
    v18 = *(a1 + 24);
    v19 = *(a1 + 32) - v18;
    v20 = 24 * v13 - v19;
    memcpy((v17 - v19), v18, v19);
    v21 = *(a1 + 24);
    *(a1 + 24) = v20;
    *(a1 + 32) = v11;
    *(a1 + 40) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v10 = 0;
    v10[1] = 0;
    v11 = (v10 + 3);
    v10[2] = 0;
  }

  *(a1 + 32) = v11;
  *(v11 - 8) = *(a1 + 88);
  *(v11 - 16) = 2 * Length;
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  if (v23 >= v24)
  {
    v26 = v23 - v22;
    v27 = (v23 - v22) >> 1;
    if (v27 <= -2)
    {
      goto LABEL_66;
    }

    v28 = v24 - v22;
    if (v28 <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v28;
    }

    v30 = v28 >= 0x7FFFFFFFFFFFFFFELL;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v30)
    {
      v31 = v29;
    }

    if (v31)
    {
      sub_299212A48(a1, v31);
    }

    v32 = (v23 - v22) >> 1;
    v33 = (2 * v27);
    v34 = (2 * v27 - 2 * v32);
    *v33 = 0;
    v25 = v33 + 1;
    memcpy(v34, v22, v26);
    v35 = *a1;
    *a1 = v34;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v35)
    {
      operator delete(v35);
      v22 = *a1;
    }

    else
    {
      v22 = v34;
    }
  }

  else
  {
    *v23 = 0;
    v25 = v23 + 2;
  }

  *(a1 + 8) = v25;
  v36 = *(a1 + 88);
  *(a1 + 88) = v36 + 1;
  *&v22[2 * v36] = Length;
  *(*(a1 + 32) - 24) = sub_2992A3BB8(a1, theString);
  v37 = *(a1 + 88);
  v38 = *a1;
  v39 = *(a1 + 8);
  v40 = *(a1 + 16);
  if (v39 >= v40)
  {
    v43 = v39 - v38;
    v44 = (v39 - v38) >> 1;
    if (v44 <= -2)
    {
      goto LABEL_66;
    }

    v45 = v40 - v38;
    if (v45 <= v44 + 1)
    {
      v46 = v44 + 1;
    }

    else
    {
      v46 = v45;
    }

    if (v45 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v47 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v47 = v46;
    }

    if (v47)
    {
      sub_299212A48(a1, v47);
    }

    v48 = (v39 - v38) >> 1;
    v49 = *a1;
    v50 = (2 * v44);
    v42 = (2 * v44 - 2 * v48);
    *v50 = 0;
    v41 = v50 + 1;
    memcpy(v42, v49, v43);
    v51 = *a1;
    *a1 = v42;
    *(a1 + 8) = v41;
    *(a1 + 16) = 0;
    if (v51)
    {
      operator delete(v51);
      v42 = *a1;
    }
  }

  else
  {
    *v39 = 0;
    v41 = v39 + 1;
    v42 = v38;
  }

  *(a1 + 8) = v41;
  v52 = *(a1 + 88);
  *(a1 + 88) = v52 + 1;
  *&v42[2 * v52] = 1;
  *(a1 + 96) = &v38[2 * v37];
  v53 = CFStringGetLength(a3);
  v54 = *a1;
  v55 = *(a1 + 8);
  v56 = *(a1 + 16);
  if (v55 >= v56)
  {
    v58 = v55 - v54;
    v59 = (v55 - v54) >> 1;
    if (v59 <= -2)
    {
      goto LABEL_66;
    }

    v60 = v56 - v54;
    if (v60 <= v59 + 1)
    {
      v61 = v59 + 1;
    }

    else
    {
      v61 = v60;
    }

    v30 = v60 >= 0x7FFFFFFFFFFFFFFELL;
    v62 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v30)
    {
      v62 = v61;
    }

    if (v62)
    {
      sub_299212A48(a1, v62);
    }

    v63 = (v55 - v54) >> 1;
    v64 = (2 * v59);
    v65 = (2 * v59 - 2 * v63);
    *v64 = 0;
    v57 = v64 + 1;
    memcpy(v65, v54, v58);
    v66 = *a1;
    *a1 = v65;
    *(a1 + 8) = v57;
    *(a1 + 16) = 0;
    if (v66)
    {
      operator delete(v66);
      v54 = *a1;
    }

    else
    {
      v54 = v65;
    }
  }

  else
  {
    *v55 = 0;
    v57 = v55 + 2;
  }

  *(a1 + 8) = v57;
  v67 = *(a1 + 88);
  *(a1 + 88) = v67 + 1;
  *&v54[2 * v67] = v53;
  sub_2992A3BB8(a1, a3);
  v68 = *a1;
  v69 = *(a1 + 8);
  v70 = *(a1 + 16);
  if (v69 < v70)
  {
    *v69 = 0;
    v71 = v69 + 2;
    goto LABEL_65;
  }

  v72 = v69 - v68;
  v73 = (v69 - v68) >> 1;
  if (v73 <= -2)
  {
LABEL_66:
    sub_299212A8C();
  }

  v74 = v70 - v68;
  if (v74 <= v73 + 1)
  {
    v75 = v73 + 1;
  }

  else
  {
    v75 = v74;
  }

  v30 = v74 >= 0x7FFFFFFFFFFFFFFELL;
  v76 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v30)
  {
    v76 = v75;
  }

  if (v76)
  {
    sub_299212A48(a1, v76);
  }

  v77 = (v69 - v68) >> 1;
  v78 = (2 * v73);
  v79 = (2 * v73 - 2 * v77);
  *v78 = 0;
  v71 = v78 + 1;
  memcpy(v79, v68, v72);
  v80 = *a1;
  *a1 = v79;
  *(a1 + 8) = v71;
  *(a1 + 16) = 0;
  if (v80)
  {
    operator delete(v80);
    v68 = *a1;
  }

  else
  {
    v68 = v79;
  }

LABEL_65:
  *(a1 + 8) = v71;
  v81 = *(a1 + 88);
  *(a1 + 88) = v81 + 1;
  *&v68[2 * v81] = a4;
}

void sub_2992A395C(uint64_t a1, CFStringRef theString, __int16 a3)
{
  ++**(a1 + 96);
  Length = CFStringGetLength(theString);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 >= v9)
  {
    v11 = v8 - v7;
    v12 = (v8 - v7) >> 1;
    if (v12 <= -2)
    {
      goto LABEL_28;
    }

    v13 = v9 - v7;
    if (v13 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = v13 >= 0x7FFFFFFFFFFFFFFELL;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_299212A48(a1, v16);
    }

    v17 = (v8 - v7) >> 1;
    v18 = (2 * v12);
    v19 = (2 * v12 - 2 * v17);
    *v18 = 0;
    v10 = v18 + 1;
    memcpy(v19, v7, v11);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
      v7 = *a1;
    }

    else
    {
      v7 = v19;
    }
  }

  else
  {
    *v8 = 0;
    v10 = v8 + 2;
  }

  *(a1 + 8) = v10;
  v21 = *(a1 + 88);
  *(a1 + 88) = v21 + 1;
  *&v7[2 * v21] = Length;
  sub_2992A3BB8(a1, theString);
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  if (v23 < v24)
  {
    *v23 = 0;
    v25 = v23 + 2;
    goto LABEL_27;
  }

  v26 = v23 - v22;
  v27 = (v23 - v22) >> 1;
  if (v27 <= -2)
  {
LABEL_28:
    sub_299212A8C();
  }

  v28 = v24 - v22;
  if (v28 <= v27 + 1)
  {
    v29 = v27 + 1;
  }

  else
  {
    v29 = v28;
  }

  v15 = v28 >= 0x7FFFFFFFFFFFFFFELL;
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v15)
  {
    v30 = v29;
  }

  if (v30)
  {
    sub_299212A48(a1, v30);
  }

  v31 = (v23 - v22) >> 1;
  v32 = (2 * v27);
  v33 = (2 * v27 - 2 * v31);
  *v32 = 0;
  v25 = v32 + 1;
  memcpy(v33, v22, v26);
  v34 = *a1;
  *a1 = v33;
  *(a1 + 8) = v25;
  *(a1 + 16) = 0;
  if (v34)
  {
    operator delete(v34);
    v22 = *a1;
  }

  else
  {
    v22 = v33;
  }

LABEL_27:
  *(a1 + 8) = v25;
  v35 = *(a1 + 88);
  *(a1 + 88) = v35 + 1;
  *&v22[2 * v35] = a3;
}

void sub_2992A3B60(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992A3BB8(uint64_t a1, CFStringRef theString)
{
  v4 = *a1 + 2 * *(a1 + 88);
  Length = CFStringGetLength(theString);
  sub_299217A94(a1, Length + ((*(a1 + 8) - *a1) >> 1));
  v7.location = 0;
  v7.length = Length;
  CFStringGetCharacters(theString, v7, (*a1 + 2 * *(a1 + 88)));
  *(a1 + 88) += Length;
  return v4;
}

void sub_2992A3C3C(void ***a1)
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
        v4 -= 2;
        sub_299219AB4(v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2992A3CC4(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992A3D0C(const void **a1, const void **a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      *v5 = 0;
      v5 += 2;
      *a3 = v6;
      a3[1] = v7;
      a3 += 2;
    }

    while (v5 != a2);
    do
    {
      sub_299219AB4(v4, 0);
      v4 += 2;
    }

    while (v4 != a2);
  }
}

uint64_t sub_2992A3D6C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    sub_299219AB4((i - 16), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992A3DC0(unint64_t a1, const void **a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  while (1)
  {
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          sub_2992A4734(v8, v8 + 16, (a2 - 2));
          return;
        case 4:
          v35 = (a2 - 2);
          sub_2992A4734(v8, v8 + 16, v8 + 32);
          if (!sub_2992A0EC0(v35, v8 + 32))
          {
            return;
          }

          sub_2992A46DC(v8 + 32, v35);
          if (!sub_2992A0EC0(v8 + 32, v8 + 16))
          {
            return;
          }

          sub_2992A46DC(v8 + 16, v8 + 32);
          if (!sub_2992A0EC0(v8 + 16, v8))
          {
            return;
          }

          v34 = v8 + 16;
          v33 = v8;
          goto LABEL_58;
        case 5:

          sub_2992A4800(v8, v8 + 16, v8 + 32, v8 + 48, (a2 - 2));
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v31 = (a2 - 2);
        if (!sub_2992A0EC0(v31, v8))
        {
          return;
        }

        v33 = v8;
        v34 = v31;
LABEL_58:

        sub_2992A46DC(v33, v34);
        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v46 = v10 >> 1;
        v47 = v10 >> 1;
        do
        {
          v48 = v47;
          if (v46 >= v47)
          {
            v49 = (2 * v47) | 1;
            v50 = (v8 + 16 * v49);
            if (2 * v47 + 2 < v9 && sub_2992A0EC0(v8 + 16 * v49, (v50 + 2)))
            {
              v50 += 2;
              v49 = 2 * v48 + 2;
            }

            v51 = v8 + 16 * v48;
            if ((sub_2992A0EC0(v50, v51) & 1) == 0)
            {
              v52 = *v51;
              *v51 = 0;
              v85 = v52;
              v86 = *(v51 + 8);
              do
              {
                v53 = v50;
                v54 = *v50;
                *v50 = 0;
                sub_299219AB4(v51, v54);
                *(v51 + 8) = v50[1];
                if (v46 < v49)
                {
                  break;
                }

                v55 = (2 * v49) | 1;
                v50 = (v8 + 16 * v55);
                v49 = 2 * v49 + 2;
                if (v49 >= v9)
                {
                  v49 = v55;
                }

                else if (sub_2992A0EC0(v8 + 16 * v55, (v50 + 2)))
                {
                  v50 += 2;
                }

                else
                {
                  v49 = v55;
                }

                v51 = v53;
              }

              while (!sub_2992A0EC0(v50, &v85));
              sub_299219AB4(v53, v85);
              v53[1] = v86;
            }
          }

          v47 = v48 - 1;
        }

        while (v48);
        do
        {
          if (v9 >= 2)
          {
            v56 = 0;
            v58 = *v8;
            v57 = *(v8 + 8);
            *v8 = 0;
            v84 = v57;
            v59 = v8;
            do
            {
              v60 = v59 + 16 * v56;
              v61 = v60 + 16;
              v62 = (2 * v56) | 1;
              v63 = 2 * v56 + 2;
              if (v63 < v9)
              {
                v64 = v60 + 32;
                if (sub_2992A0EC0(v60 + 16, v60 + 32))
                {
                  v61 = v64;
                  v62 = v63;
                }
              }

              v65 = *v61;
              *v61 = 0;
              sub_299219AB4(v59, v65);
              *(v59 + 8) = *(v61 + 8);
              v59 = v61;
              v56 = v62;
            }

            while (v62 <= ((v9 - 2) >> 1));
            if (v61 == a2 - 2)
            {
              sub_299219AB4(v61, v58);
              *(v61 + 8) = v84;
            }

            else
            {
              v66 = *(a2 - 2);
              *(a2 - 2) = 0;
              sub_299219AB4(v61, v66);
              *(v61 + 8) = *(a2 - 1);
              sub_299219AB4(a2 - 2, v58);
              *(a2 - 1) = v84;
              v67 = (v61 - v8 + 16) >> 4;
              v68 = v67 < 2;
              v69 = v67 - 2;
              if (!v68)
              {
                v70 = v69 >> 1;
                v71 = (v8 + 16 * (v69 >> 1));
                if (sub_2992A0EC0(v71, v61))
                {
                  v73 = *v61;
                  v72 = *(v61 + 8);
                  *v61 = 0;
                  v85 = v73;
                  v86 = v72;
                  do
                  {
                    v74 = v71;
                    v75 = *v71;
                    *v71 = 0;
                    sub_299219AB4(v61, v75);
                    *(v61 + 8) = v71[1];
                    if (!v70)
                    {
                      break;
                    }

                    v70 = (v70 - 1) >> 1;
                    v71 = (v8 + 16 * v70);
                    v61 = v74;
                  }

                  while ((sub_2992A0EC0(v71, &v85) & 1) != 0);
                  sub_299219AB4(v74, v73);
                  v74[1] = v86;
                }
              }
            }
          }

          a2 -= 2;
          v68 = v9-- > 2;
        }

        while (v68);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = v8 + 16 * (v9 >> 1);
    if (v9 < 0x81)
    {
      sub_2992A4734(v8 + 16 * (v9 >> 1), v8, (a2 - 2));
    }

    else
    {
      sub_2992A4734(v8, v8 + 16 * (v9 >> 1), (a2 - 2));
      sub_2992A4734(v8 + 16, v12 - 16, (a2 - 4));
      sub_2992A4734(v8 + 32, v8 + 16 + 16 * v11, (a2 - 6));
      sub_2992A4734(v12 - 16, v8 + 16 * (v9 >> 1), v8 + 16 + 16 * v11);
      v13 = *v8;
      v14 = *(v8 + 8);
      *v8 = 0;
      v15 = *v12;
      *v12 = 0;
      sub_299219AB4(v8, v15);
      *(v8 + 8) = *(v12 + 8);
      sub_299219AB4(v12, v13);
      *(v12 + 8) = v14;
    }

    --a3;
    if ((a4 & 1) == 0 && (sub_2992A0EC0(v8 - 16, v8) & 1) == 0)
    {
      v25 = *v8;
      v26 = *(v8 + 8);
      *v8 = 0;
      v85 = v25;
      v86 = v26;
      if (sub_2992A0EC0(&v85, (a2 - 2)))
      {
        a1 = v8;
        do
        {
          a1 += 16;
        }

        while ((sub_2992A0EC0(&v85, a1) & 1) == 0);
      }

      else
      {
        v27 = v8 + 16;
        do
        {
          a1 = v27;
          if (v27 >= a2)
          {
            break;
          }

          v28 = sub_2992A0EC0(&v85, v27);
          v27 = a1 + 16;
        }

        while (!v28);
      }

      v29 = a2;
      if (a1 < a2)
      {
        v29 = a2;
        do
        {
          v29 -= 16;
        }

        while ((sub_2992A0EC0(&v85, v29) & 1) != 0);
      }

      while (a1 < v29)
      {
        sub_2992A46DC(a1, v29);
        do
        {
          a1 += 16;
        }

        while (!sub_2992A0EC0(&v85, a1));
        do
        {
          v29 -= 16;
        }

        while ((sub_2992A0EC0(&v85, v29) & 1) != 0);
      }

      if (a1 - 16 != v8)
      {
        v30 = *(a1 - 16);
        *(a1 - 16) = 0;
        sub_299219AB4(v8, v30);
        *(v8 + 8) = *(a1 - 8);
        v25 = v85;
      }

      sub_299219AB4((a1 - 16), v25);
      a4 = 0;
      *(a1 - 8) = v26;
      goto LABEL_1;
    }

    v16 = 0;
    v17 = *v8;
    v18 = *(v8 + 8);
    *v8 = 0;
    v85 = v17;
    v86 = v18;
    do
    {
      v19 = sub_2992A0EC0(v8 + v16 + 16, &v85);
      v16 += 16;
    }

    while ((v19 & 1) != 0);
    v20 = v8 + v16;
    v21 = a2;
    if (v16 == 16)
    {
      v21 = a2;
      do
      {
        if (v20 >= v21)
        {
          break;
        }

        v21 -= 16;
      }

      while ((sub_2992A0EC0(v21, &v85) & 1) == 0);
    }

    else
    {
      do
      {
        v21 -= 16;
      }

      while (!sub_2992A0EC0(v21, &v85));
    }

    a1 = v8 + v16;
    if (v20 < v21)
    {
      v22 = v21;
      do
      {
        sub_2992A46DC(a1, v22);
        do
        {
          a1 += 16;
        }

        while ((sub_2992A0EC0(a1, &v85) & 1) != 0);
        do
        {
          v22 -= 16;
        }

        while (!sub_2992A0EC0(v22, &v85));
      }

      while (a1 < v22);
    }

    if (a1 - 16 != v8)
    {
      v23 = *(a1 - 16);
      *(a1 - 16) = 0;
      sub_299219AB4(v8, v23);
      *(v8 + 8) = *(a1 - 8);
      v17 = v85;
    }

    sub_299219AB4((a1 - 16), v17);
    *(a1 - 8) = v18;
    if (v20 < v21)
    {
      goto LABEL_37;
    }

    v24 = sub_2992A4928(v8, (a1 - 16));
    if (!sub_2992A4928(a1, a2))
    {
      if (v24)
      {
        goto LABEL_1;
      }

LABEL_37:
      sub_2992A3DC0(v8, a1 - 16, a3, a4 & 1);
      a4 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 16);
    if (v24)
    {
      return;
    }
  }

  if (a4)
  {
    if (v8 != a2)
    {
      v36 = v8 + 16;
      if ((v8 + 16) != a2)
      {
        v37 = 0;
        v38 = v8;
        do
        {
          v39 = v36;
          if (sub_2992A0EC0(v36, v38))
          {
            v40 = *v39;
            *v39 = 0;
            v41 = *(v38 + 24);
            v85 = v40;
            v86 = v41;
            v42 = v37;
            while (1)
            {
              v43 = v8 + v42;
              v44 = *(v8 + v42);
              *(v8 + v42) = 0;
              sub_299219AB4((v8 + v42 + 16), v44);
              *(v8 + v42 + 24) = *(v8 + v42 + 8);
              if (!v42)
              {
                break;
              }

              v42 -= 16;
              if ((sub_2992A0EC0(&v85, v43 - 16) & 1) == 0)
              {
                v45 = v8 + v42 + 16;
                goto LABEL_81;
              }
            }

            v45 = v8;
LABEL_81:
            sub_299219AB4(v45, v85);
            *(v45 + 8) = v86;
          }

          v36 = (v39 + 2);
          v37 += 16;
          v38 = v39;
        }

        while (v39 + 2 != a2);
      }
    }
  }

  else if (v8 != a2)
  {
    v76 = v8 + 16;
    if ((v8 + 16) != a2)
    {
      v77 = v8 - 16;
      do
      {
        v78 = v76;
        if (sub_2992A0EC0(v76, v8))
        {
          v79 = *v78;
          *v78 = 0;
          v80 = *(v8 + 24);
          v85 = v79;
          v86 = v80;
          v81 = v77;
          do
          {
            v82 = *(v81 + 16);
            *(v81 + 16) = 0;
            sub_299219AB4((v81 + 32), v82);
            *(v81 + 40) = *(v81 + 24);
            v83 = sub_2992A0EC0(&v85, v81);
            v81 -= 16;
          }

          while ((v83 & 1) != 0);
          sub_299219AB4((v81 + 32), v85);
          *(v81 + 40) = v86;
        }

        v76 = (v78 + 2);
        v77 += 16;
        v8 = v78;
      }

      while (v78 + 2 != a2);
    }
  }
}

void sub_2992A466C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992A46DC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = 0;
  v6 = *a2;
  *a2 = 0;
  sub_299219AB4(a1, v6);
  *(a1 + 8) = *(a2 + 8);
  sub_299219AB4(a2, v4);
  *(a2 + 8) = v5;
}

void sub_2992A4734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2992A0EC0(a2, a1);
  v7 = sub_2992A0EC0(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      sub_2992A46DC(a1, a2);
      if (!sub_2992A0EC0(a3, a2))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    sub_2992A46DC(a2, a3);
    if (!sub_2992A0EC0(a2, a1))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  sub_2992A46DC(v8, v9);
}

void sub_2992A4800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2992A4734(a1, a2, a3);
  if (sub_2992A0EC0(a4, a3))
  {
    sub_2992A46DC(a3, a4);
    if (sub_2992A0EC0(a3, a2))
    {
      sub_2992A46DC(a2, a3);
      if (sub_2992A0EC0(a2, a1))
      {
        sub_2992A46DC(a1, a2);
      }
    }
  }

  if (sub_2992A0EC0(a5, a4))
  {
    sub_2992A46DC(a4, a5);
    if (sub_2992A0EC0(a4, a3))
    {
      sub_2992A46DC(a3, a4);
      if (sub_2992A0EC0(a3, a2))
      {
        sub_2992A46DC(a2, a3);
        if (sub_2992A0EC0(a2, a1))
        {

          sub_2992A46DC(a1, a2);
        }
      }
    }
  }
}

BOOL sub_2992A4928(uint64_t a1, const void **a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2992A4734(a1, a1 + 16, (a2 - 2));
        return 1;
      case 4:
        v18 = (a2 - 2);
        sub_2992A4734(a1, a1 + 16, a1 + 32);
        if (!sub_2992A0EC0(v18, a1 + 32))
        {
          return 1;
        }

        sub_2992A46DC(a1 + 32, v18);
        if (!sub_2992A0EC0(a1 + 32, a1 + 16))
        {
          return 1;
        }

        sub_2992A46DC(a1 + 16, a1 + 32);
        if (!sub_2992A0EC0(a1 + 16, a1))
        {
          return 1;
        }

        v7 = a1 + 16;
        v6 = a1;
        goto LABEL_6;
      case 5:
        sub_2992A4800(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 2));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 2);
      if (sub_2992A0EC0((a2 - 2), a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        sub_2992A46DC(v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 32;
  sub_2992A4734(a1, a1 + 16, a1 + 32);
  v9 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (sub_2992A0EC0(v9, v8))
    {
      v12 = *v9;
      v13 = v9[1];
      *v9 = 0;
      v20 = v12;
      v21 = v13;
      v14 = v10;
      while (1)
      {
        v15 = a1 + v14;
        v16 = *(a1 + v14 + 32);
        *(a1 + v14 + 32) = 0;
        sub_299219AB4((a1 + v14 + 48), v16);
        *(a1 + v14 + 56) = *(a1 + v14 + 40);
        if (v14 == -32)
        {
          break;
        }

        v14 -= 16;
        if ((sub_2992A0EC0(&v20, v15 + 16) & 1) == 0)
        {
          v17 = a1 + v14 + 48;
          goto LABEL_20;
        }
      }

      v17 = a1;
LABEL_20:
      sub_299219AB4(v17, v20);
      *(v17 + 8) = v21;
      if (++v11 == 8)
      {
        return v9 + 2 == a2;
      }
    }

    v8 = v9;
    v10 += 16;
    v9 += 2;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_2992A4B54(void *a1)
{
  v2 = sub_2992A4BC0(a1);
  result = a1[1];
  v4 = result + 2 * v2;
  if (v4 > *(*a1 + 8))
  {
    __assert_rtn("readString", "DynamicDictionary.cpp", 296, "m_ptr + keyLen <= m_data.data() + m_data.size()");
  }

  a1[1] = v4;
  return result;
}

uint64_t sub_2992A4BC0(void *a1)
{
  v1 = a1[1];
  if (v1 >= *(*a1 + 8))
  {
    __assert_rtn("readUniChar", "DynamicDictionary.cpp", 290, "m_ptr < m_data.data() + m_data.size()");
  }

  v2 = *v1;
  a1[1] = v1 + 1;
  return v2;
}

uint64_t sub_2992A4C0C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  *a1 = a3;
  a1[1] = a4;
  a1[2] = sub_2992A4B54(a2);
  a1[3] = v6;
  result = sub_2992A4BC0(a2);
  *(a1 + 16) = result;
  if (result)
  {
    result = sub_2992A4BC0(a2);
    v8 = a2[1];
    a2[1] = v8 + 8 * result;
    a1[5] = v8;
    a1[6] = result;
  }

  return result;
}

void sub_2992A4C74(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992A4CD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2991A6584(result, a4);
  }

  return result;
}

void sub_2992A4D28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992A4D44(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1F6A618;
  a1[1] = a2;
  v5[0] = &unk_2A1F6A6A0;
  v5[3] = v5;
  sub_2992A597C((a1 + 2), v5);
  sub_2992A59FC(v5);
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

BOOL sub_2992A4DEC(uint64_t a1, unsigned __int8 *a2, unsigned int a3, _DWORD *a4, uint8x8_t a5)
{
  v6 = sub_29932273C(*(a1 + 8), a2, a3, a5);
  *a4 = v6;
  return v6 != 0;
}

void ****sub_2992A4E20(void ****result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 && (a3 & 1) == 0)
  {
    v7 = result;
    v13 = 0;
    ((*result)[3])(&v12);
    v11 = 0;
    if (a3)
    {
      v8 = 0;
      do
      {
        ((*v7)[5])(&v10, v7, v12, a2 + v8, 2);
        v9 = v10;
        v10 = 0;
        sub_2992A5AD4(&v12, v9);
        sub_2992A5AD4(&v10, 0);
        if ((((*v7)[4])(v7, v12) & 1) == 0)
        {
          break;
        }

        if (((*v7)[6])(v7, v12, &v11))
        {
          sub_2992A5A7C(a4, &v11, a2, v8 + 2);
          if (v13)
          {
            break;
          }
        }

        v8 = v8 + 2;
      }

      while (v8 < a3);
    }

    return sub_2992A5AD4(&v12, 0);
  }

  return result;
}

void sub_2992A4F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992A5AD4(va, 0);
  _Unwind_Resume(a1);
}

void ****sub_2992A4FB4(void ****result, const void *a2, size_t a3)
{
  v11[4] = *MEMORY[0x29EDCA608];
  if ((a3 & 1) == 0)
  {
    v5 = result;
    ((*result)[3])(&v10);
    ((*v5)[5])(v11, v5, v10, a2, a3);
    v6 = v11[0];
    v11[0] = 0;
    sub_2992A5AD4(&v10, v6);
    sub_2992A5AD4(v11, 0);
    if (((*v5)[4])(v5, v10))
    {
      if (a3 < 0x7FFFFFFFFFFFFFF8)
      {
        if (a3 < 0x17)
        {
          v9 = a3;
          if (a3)
          {
            memcpy(&__dst, a2, a3);
          }

          *(&__dst + a3) = 0;
          operator new();
        }

        operator new();
      }

      sub_2991A11B0();
    }

    result = sub_2992A5AD4(&v10, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992A51F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void ***a16, __int16 a17, char a18, char a19)
{
  sub_29922D43C(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2992A5AD4(&a16, 0);
  _Unwind_Resume(a1);
}

void sub_2992A5314(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  sub_2992A5E4C(&v13, a2);
  for (; a4; --a4)
  {
    v7 = sub_2992B0F2C();
    v8 = *(a1 + 8);
    v9 = *a3;
    (*(**(v7 + 8 * (*v13 & 3)) + 16))(&v11);
    sub_2992B0BA8(&v13, &v11);
    sub_2992A5BA0(&v12);
    v10 = v11;
    v11 = 0;
    if (v10)
    {
      MEMORY[0x29C29BFB0](v10, 0x1010C40E4C6A875);
    }

    if (v13 == 0 || (*v13 & 3) == 0)
    {
      sub_2992A5DE0();
    }

    ++a3;
  }

  operator new();
}

void sub_2992A5460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992A5B54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A549C(void *a1, _DWORD **a2, _DWORD *a3)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v7 = sub_2992B0F2C();
    v8 = a1[1];
    if (v8)
    {
      v9 = *(v7 + 8 * (**a2 & 3));
      v10 = (*(*v9 + 40))(v9, v8, a2);
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
    return v10 != 0;
  }

  return result;
}

void sub_2992A554C(void *a1, _DWORD **a2, uint64_t a3, int a4)
{
  if ((*(*a1 + 32))(a1))
  {
    if (a4)
    {
      if (a4 >= 0)
      {
        v8 = 2 * a4;
      }

      else
      {
        v8 = 0;
      }

      if (v8 >= 0x101)
      {
        v9 = sub_2993652F8(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_29918C000, v9, OS_LOG_TYPE_ERROR, "Search depth is beyond limit. May not return all expected results.", buf, 2u);
        }
      }

      v10 = off_2A1A99FF8;
      if ((*off_2A1A99FF8(&off_2A1A99FF8) & 1) == 0)
      {
        buf[0] = 0;
        v15 = off_2A1A99FE0(&off_2A1A99FE0);
        sub_2992A5FF8(v15, 256);
        _tlv_atexit(sub_2992A5F50, v15);
        *v10(&off_2A1A99FF8) = 1;
      }

      *buf = 0;
      v17 = buf;
      v18 = 0x2000000000;
      v19 = 0;
      sub_2992B0F2C();
      v11 = a1[1];
      v12 = *off_2A1A99FE0(&off_2A1A99FE0);
      v14 = *(v13 + 8 * (**a2 & 3));
      (*(*v14 + 24))(v14);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      *buf = 0;
      v20 = 0;
      if ((*(*a1 + 48))(a1, a2, buf))
      {
        sub_2992A5A7C(a3, buf, 0, 0);
      }
    }
  }
}

void sub_2992A57BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2992A57D4(void *a1)
{
  *a1 = &unk_2A1F6A618;
  v2 = (a1 + 2);
  sub_2992A6078(a1 + 1, 0);
  sub_2992A59FC(v2);
  return a1;
}

void sub_2992A582C(void *a1)
{
  *a1 = &unk_2A1F6A618;
  v1 = (a1 + 2);
  sub_2992A6078(a1 + 1, 0);
  sub_2992A59FC(v1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992A5930(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6A710))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992A597C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_2992A59FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2992A5A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_2991A2240();
  }

  return (*(*v4 + 48))(v4, a2, &v7, &v6);
}

void ****sub_2992A5AD4(void ****result, void ***a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_2992A5BA0(v2 + 1);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      MEMORY[0x29C29BFB0](v3, 0x1010C40E4C6A875);
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void ***sub_2992A5B54(void ***a1)
{
  sub_2992A5BA0(a1 + 1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1010C40E4C6A875);
  }

  return a1;
}

void ***sub_2992A5BA0(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992A5BE8(v2);
    MEMORY[0x29C29BFB0](v3, 0x20C4093837F09);
  }

  return a1;
}

void **sub_2992A5BE8(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_299203738(v2);
  }

  *a1 = 0;
  return a1;
}

__n128 sub_2992A5C9C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6A730;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992A5CD4(void *a1, uint64_t a2, const void **a3, size_t *a4)
{
  v6 = *a4;
  v7 = a1[3];
  v8 = v7 + *a4;
  v9 = a1[1];
  size = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v9->__r_.__value_.__l.__size_;
  }

  v11 = *a3;
  if (size < v8)
  {
    std::string::resize(v9, v7 + *a4, 0);
    v9 = a1[1];
    v7 = a1[3];
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  memcpy(v9 + v7, v11, v6);
  v12 = a1[4];
  v13 = a1[1];
  if (*(v13 + 23) < 0)
  {
    v13 = *v13;
  }

  return sub_2992A5A7C(v12, a2, v13, v8);
}

uint64_t sub_2992A5D94(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6A790))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992A5E4C(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2992B0CBC(a1, a2);
  return a1;
}

void sub_2992A5E78(_Unwind_Exception *a1)
{
  sub_2992A5BA0(v1 + 1);
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x29C29BFB0](v3, 0x1010C40E4C6A875);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992A5EAC@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_2A145F340, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A145F340);
    v2 = a1;
    if (v4)
    {
      qword_2A145F330 = 0;
      *algn_2A145F338 = 0;
      __cxa_atexit(sub_2992A5B54, &qword_2A145F330, &dword_29918C000);
      __cxa_guard_release(&qword_2A145F340);
      v2 = a1;
    }
  }

  return sub_2992A5E4C(v2, &qword_2A145F330);
}

uint64_t sub_2992A5F50(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2992A5F84(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  v12 = a2;
  v7 = off_2A1A99FE0();
  v8 = *(*(a1 + 32) + 8) + 24;
  result = sub_2992A5A7C(v10, &v12, *v7, v9);
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992A5FF8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991A5508(result, a2);
  }

  return result;
}

void sub_2992A605C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2992A6078(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2992A60A8((result + 1), v3);
  }

  return result;
}

uint64_t sub_2992A60A8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2991A2240();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_2992A619C(void *a1)
{
  *a1 = &unk_2A1F6A7B0;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  *a1 = &unk_2A1F6A618;
  sub_2992A6078(a1 + 1, 0);
  sub_2992A59FC((a1 + 2));
  return a1;
}

void sub_2992A6240(void *a1)
{
  *a1 = &unk_2A1F6A7B0;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  *a1 = &unk_2A1F6A618;
  sub_2992A6078(a1 + 1, 0);
  sub_2992A59FC((a1 + 2));

  JUMPOUT(0x29C29BFB0);
}

void sub_2992A6354()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = off_2A1A9A028;
  if ((*off_2A1A9A028(&off_2A1A9A028) & 1) == 0)
  {
    v2 = off_2A1A9A010(&off_2A1A9A010);
    sub_2992A6BEC(v2, 256);
    _tlv_atexit(sub_2992A65C8, v2);
    *v0(&off_2A1A9A028) = 1;
  }

  v1 = off_2A1A9A058;
  if ((*off_2A1A9A058(&off_2A1A9A058) & 1) == 0)
  {
    v3 = off_2A1A9A040(&off_2A1A9A040);
    sub_2992A6C9C(v3, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v3);
    *v1(&off_2A1A9A058) = 1;
  }

  operator new();
}

void sub_2992A65A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void ***);
  v13 = va_arg(va1, void);
  sub_2992A5AD4(va, 0);
  sub_2992A7590(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A65C8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2992A65FC(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

unint64_t sub_2992A6630(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned __int8 a7, _BYTE *a8, float a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17)
{
  v41 = result;
  v49 = *MEMORY[0x29EDCA608];
  v47 = a7;
  if ((*a8 & 1) == 0)
  {
    if (((*(**(result + 48) + 32))(*(result + 48), a4) & 1) == 0)
    {
      __assert_rtn("ambiguousDfsTraverse", "AmbiguousTrieAdapter.hpp", 141, "m_trie->isValid(curCursor)");
    }

    if (a5 && (*(*a2 + 24))(a2) != a12)
    {
      goto LABEL_33;
    }

    LODWORD(v46) = 0;
    if ((a7 & 1) != 0 || (result = (*(**(v41 + 48) + 48))(*(v41 + 48), a4, &v46), result))
    {
      result = sub_2992A6D14(a3, a4, a10, 2 * a11, a13, a14, a12, a8, a9);
    }

    if ((*a8 & 1) == 0)
    {
LABEL_33:
      result = (*(*a2 + 24))(a2);
      if (result > a12)
      {
        result = (*(*a2 + 16))(a2, a12);
        v20 = result;
        v46 = 0;
        if (result)
        {
          v21 = 0;
          HIDWORD(v36) = a17;
          v22 = a9;
          do
          {
            result = (*(*a2 + 72))(a2, a15, a16, a12, v21);
            if (result)
            {
              v45 = (*(*a2 + 32))(a2, a12, v46) + v22;
              v44 = (*(*a2 + 40))(a2, a12, v46) + a12;
              result = (*(*a2 + 48))(a2, a12, v46);
              v24 = result;
              v25 = v23;
              v26 = v44;
              if (v44 != a12 || (v36 & 0x100000000) == 0)
              {
                if (v23)
                {
                  (*(**(v41 + 48) + 40))(&v43);
                  if ((*(**(v41 + 48) + 32))(*(v41 + 48), v43))
                  {
                    v27 = a11;
                    v28 = 2 * a11;
                    v29 = v25;
                    do
                    {
                      v30 = *v24++;
                      *(a10 + v28) = v30;
                      v28 += 2;
                      --v29;
                    }

                    while (v29);
                    v31 = v46;
                    if (a13)
                    {
                      *(a13 + 8 * a14) = v46;
                      v27 = a11;
                    }

                    v32 = v45;
                    LOBYTE(v36) = v26 == a12;
                    sub_2992A6630(v41, a2, a3, v43, a5, a6, v47, a8, v32, a10, v27 + v25, v44, a13, a14 + 1, a12, v31, v36);
                    if (*a8)
                    {
                      result = sub_2992A5AD4(&v43, 0);
                      break;
                    }
                  }

                  result = sub_2992A5AD4(&v43, 0);
                  if (a6)
                  {
                    v33 = v44;
                    result = (*(*a2 + 24))(a2);
                    if (v33 == result)
                    {
                      result = (*(*a2 + 56))(a2, a12, v46);
                      if (result)
                      {
                        v48 = 0;
                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  v34 = v45;
                  LOBYTE(v36) = v44 == a12;
                  result = sub_2992A6630(v41, a2, a3, a4, a5, a6, v47, a8, v34, a10, a11, v44, a13, a14, a15, a16, v36);
                }
              }
            }

            v21 = v46 + 1;
            v46 = v21;
          }

          while (v21 < v20);
        }
      }
    }
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_2992A6BEC(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2992A6C64(result, a2);
  }

  return result;
}

void sub_2992A6C48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992A6C64(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_299212A48(a1, a2);
  }

  sub_2992A3B48();
}

void *sub_2992A6C9C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_29920E024(result, a2);
  }

  return result;
}

void sub_2992A6CF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v16 = a9;
  v14 = a4;
  v15 = a3;
  v12 = a6;
  v13 = a5;
  v11 = a7;
  v9 = *(a1 + 24);
  if (!v9)
  {
    sub_2991A2240();
  }

  return (*(*v9 + 48))(v9, a2, &v16, &v15, &v14, &v13, &v12, &v11, a8);
}

__n128 sub_2992A6E28(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6A870;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_2992A6E94(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6A8E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ****sub_2992A6EE0(uint64_t *a1, __int16 *a2, uint64_t a3, _BYTE *a4)
{
  v9 = *a1;
  v8 = a1[1];
  (*(**(*a1 + 48) + 40))(&v17);
  if (!(*(**(v9 + 48) + 32))(*(v9 + 48), v17))
  {
    return sub_2992A5AD4(&v17, 0);
  }

  if (a3)
  {
    v10 = (*a1[2] + 2 * *a1[3]);
    v11 = a3;
    do
    {
      v12 = *a2++;
      *v10++ = v12;
      --v11;
    }

    while (v11);
  }

  v13 = *a1[4];
  if (v13)
  {
    *(v13 + 8 * *a1[5]) = *a1[6];
  }

  v16 = 0;
  if ((*a1[7] & 1) == 0)
  {
    if (!(*(**(v9 + 48) + 48))(*(v9 + 48), v17, &v16))
    {
      goto LABEL_11;
    }

    v13 = *a1[4];
  }

  v14 = *a1[9];
  sub_2992A6D14(a1[8], v17, *a1[2], 2 * (*a1[3] + a3), v13, *a1[5] + 1, *a1[10], a1[11], v14);
LABEL_11:
  if (*a1[11] == 1)
  {
    *a4 = 1;
  }

  return sub_2992A5AD4(&v17, 0);
}

void sub_2992A7078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992A5AD4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A7094(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2992A7194(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6A900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_2992A71D0(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = *a3;
  v13 = *a5;
  v14 = *a4;
  v11 = *a7;
  v12 = *a6;
  v10 = *a8;
  v8 = *(a1 + 16);
  v9 = *(*(a1 + 8) + 48);
  operator new();
}

void sub_2992A7308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_29922D43C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A731C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6A9F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992A73FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6A980;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2992A744C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *v8;
  v11[0] = *a2;
  v11[1] = v9;
  result = sub_2992A7524(v7, v11, **(a1 + 24), **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2992A74D8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6A9E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992A7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a4;
  v13 = a3;
  v10 = a6;
  v11 = a5;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    sub_2991A2240();
  }

  return (*(*v7 + 48))(v7, a2, &v13, &v12, &v11, &v10, &v9);
}

uint64_t sub_2992A7590(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2992A7610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A1F6AA10;
  v3[1] = a3;
  v3[3] = v3;
  sub_2992A6354();
}

void sub_2992A7694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992A7808(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992A7718(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6AA10;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992A775C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AA80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992A77A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v7 = a5;
  v8 = a4;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_2991A2240();
  }

  return (*(*v5 + 48))(v5, a2, &v9, &v8, &v7);
}

uint64_t sub_2992A7808(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2992A7888()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = off_2A1A9A088;
  if ((*off_2A1A9A088(&off_2A1A9A088) & 1) == 0)
  {
    v2 = off_2A1A9A070(&off_2A1A9A070);
    sub_2992A6BEC(v2, 256);
    _tlv_atexit(sub_2992A65C8, v2);
    *v0(&off_2A1A9A088) = 1;
  }

  v1 = off_2A1A9A0B8;
  if ((*off_2A1A9A0B8(&off_2A1A9A0B8) & 1) == 0)
  {
    v3 = off_2A1A9A0A0(&off_2A1A9A0A0);
    sub_2992A6C9C(v3, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v3);
    *v1(&off_2A1A9A0B8) = 1;
  }

  operator new();
}

void sub_2992A7AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void ***);
  v13 = va_arg(va1, void);
  sub_2992A5AD4(va, 0);
  sub_2992A7590(va1);
  _Unwind_Resume(a1);
}

__n128 sub_2992A7B78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6AAA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992A7BD8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AB80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2992A7C24(void *a1, float a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = a2;
  __p[5] = a6;
  __p[6] = a5;
  __p[3] = a8;
  __p[4] = a7;
  v11 = *a1;
  if ((*(**(*a1 + 48) + 32))(*(*a1 + 48)))
  {
    memset(__p, 0, 24);
    sub_2992A7DFC(__p, a4, a5 + a4, a5);
    v12 = a1[1];
    v13 = *(v11 + 48);
    operator new();
  }

  __assert_rtn("operator()", "AmbiguousTrieAdapter.hpp", 44, "m_trie->isValid(cursor)");
}

void sub_2992A7DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_29922D43C(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992A7DFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_29923F4C4(result, a4);
  }

  return result;
}

void sub_2992A7E54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2992A7F04(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6AB10;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2992A7F54(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v8 = *a3;
  v9 = *a4;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *v11 + *a4;
  v13 = *(v10 + 8) - *v10;
  if (v12 > v13)
  {
    sub_29920BD1C(v10, v12 - v13);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      *(**(a1 + 16) + **(a1 + 8) + i) = *(v8 + i);
    }
  }

  v15 = *(a1 + 40);
  v16 = **(a1 + 32);
  v18[0] = *a2;
  v18[1] = v16;
  result = sub_2992A7524(*(a1 + 24), v18, **(a1 + 16), v12, *v15, **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2992A8048(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AB70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992A8108(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6ABA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2992A8138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  sub_2992A2634(*(a1 + 8), *a2, &v12);
  v9 = v12;
  v10 = v13;
  if (v12 != v13)
  {
    v11 = v12;
    do
    {
      sub_2992A8258(*(*(a1 + 16) + 24), v11, a6, *(a2 + 4));
      if (*a6)
      {
        break;
      }

      v11 += 56;
    }

    while (v11 != v10);
  }

  if (v9)
  {

    operator delete(v9);
  }
}

void sub_2992A81F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A820C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AC00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992A8258(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = a4;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v5, a3);
}

__n128 sub_2992A8330(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6AC20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 26) = 0;
  *(a2 + 30) = 0;
  return result;
}

void sub_2992A8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  sub_2992A2634(*(a1 + 8), *a2, &v11);
  v9 = v11;
  v10 = v12;
  if (v11 != v12)
  {
    do
    {
      if (v9[16] == *(a1 + 24))
      {
        sub_2992A8258(*(*(a1 + 16) + 24), v9, a6, *(a2 + 4));
        if (*a6)
        {
          break;
        }
      }

      v9 += 28;
    }

    while (v9 != v10);
    v9 = v11;
  }

  if (v9)
  {

    operator delete(v9);
  }
}

void sub_2992A843C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A8454(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AC80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992A8514(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6ACA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2992A8544(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  sub_2992A2634(*(a1 + 8), *a2, &v10);
  v7 = v10;
  v8 = v11;
  if (v10 != v11)
  {
    v9 = v10;
    do
    {
      (*(**(a1 + 16) + 16))();
      if (*a5)
      {
        break;
      }

      v9 += 56;
    }

    while (v9 != v8);
  }

  if (v7)
  {

    operator delete(v7);
  }
}

void sub_2992A8600(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A8618(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AD00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992A86D8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6AD20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2992A8708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  sub_2992A2634(*(a1 + 8), *a2, &v12);
  v9 = v12;
  v10 = v13;
  if (v12 != v13)
  {
    v11 = v12;
    do
    {
      sub_2992A8258(*(*(a1 + 16) + 24), v11, a6, *(a2 + 4));
      if (*a6)
      {
        break;
      }

      v11 += 56;
    }

    while (v11 != v10);
  }

  if (v9)
  {

    operator delete(v9);
  }
}

void sub_2992A87C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A87DC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AD80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992A8898(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6ADA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992A88DC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AE00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992A89AC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6AE20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 26) = 0;
  *(a2 + 30) = 0;
  return result;
}

void sub_2992A89EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  sub_2992A2634(*(a1 + 8), *a2, &v11);
  v9 = v11;
  v10 = v12;
  if (v11 != v12)
  {
    do
    {
      if (v9[16] == *(a1 + 24))
      {
        sub_2992A8258(*(*(a1 + 16) + 24), v9, a6, *(a2 + 4));
        if (*a6)
        {
          break;
        }
      }

      v9 += 28;
    }

    while (v9 != v10);
    v9 = v11;
  }

  if (v9)
  {

    operator delete(v9);
  }
}

void sub_2992A8AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A8AD0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AE80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992A8B1C(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 34) = a6;
  Length = CFStringGetLength(theString);
  *(a1 + 8) = Length;
  v9 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
  *a1 = v9;
  v11.length = *(a1 + 8);
  v11.location = 0;
  CFStringGetCharacters(theString, v11, v9);
  return a1;
}

uint64_t sub_2992A8B8C(__int16 a1, int a2, int a3)
{
  if (a3)
  {
    result = 512;
  }

  else
  {
    result = 1;
  }

  if ((a1 & 0x800) != 0)
  {
    v5 = 290;
    return result | v5;
  }

  else
  {
    switch(a2)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 5:
      case 12:
        v5 = 34;
        return result | v5;
      case 4:
        v5 = 66;
        return result | v5;
      case 6:
        v5 = 130;
        return result | v5;
      case 7:
      case 15:
        v5 = 8226;
        return result | v5;
      case 9:
        result = result | 4;
        break;
      case 10:
        result = result | 8;
        break;
      case 11:
        result = result | 0x10;
        break;
      case 14:
        result = result | 0x800;
        break;
      case 16:
        v5 = 16418;
        return result | v5;
      case 17:
        result = result | 0x200000;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2992A8C28(unsigned int *a1, unsigned __int16 *a2, unint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, uint8x8_t a9)
{
  v12 = a3;
  v26 = *MEMORY[0x29EDCA608];
  v24 = a5;
  v23 = 0;
  v18[0] = v25;
  v18[1] = v25;
  if (a3)
  {
    a8 = 0;
  }

  v19 = a8;
  if (a8)
  {
    sub_29929E4A8(v22, a2, a3, &v20, 256, &v21);
  }

  sub_2992A8D1C(a1, *a1, &v23, a2, v12, a4, &v24, a6, a9, a7, 0, 0, v18);
  result = v23;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2992A8D1C(uint64_t a1, uint64_t a2, unint64_t *a3, _BYTE *a4, int a5, unsigned int a6, void *a7, unint64_t a8, uint8x8_t a9, uint64_t a10, int a11, int a12, uint64_t a13)
{
  v19 = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (v19 == 2)
    {
      v22 = (*(a1 + 8) + (a2 - 2));
      if (a5)
      {
        if (a5 == 1 || a6 != 2)
        {
          v23 = *a4;
          if (a6 == 1)
          {
LABEL_96:
            if (v23 != 42)
            {
              if (!(2 * (v23 == 63)))
              {
                goto LABEL_106;
              }

              return sub_2992A99BC(a1, a2, a3, a9, &a4[a6], a5 - a6, a6, a7, a8, a10, a13);
            }

LABEL_101:
            LODWORD(v71) = 0;
            return sub_2992A938C(a1, a2, a3, &a4[a6], a5 - a6, a6, a7, a8, a10, v71, a13);
          }
        }

        else
        {
          if ((a5 & 1) == 0)
          {
            v23 = *a4;
            goto LABEL_96;
          }

          LOBYTE(v23) = *a4;
        }

LABEL_106:
        **(a13 + 8) = v23;
        v54 = *(a13 + 8) + 1;
        *(a13 + 8) = v54;
        v55 = *a4;
        v56 = v22 + 1;
        v57 = v55 >> 5;
        v58 = v22[(v55 >> 5) + 1];
        if ((v58 >> v55))
        {
          v59 = v55 & 0x1F;
          if (v55 >= 0x20)
          {
            v60 = 0;
            do
            {
              v65 = *v56++;
              a9 = vcnt_s8(v65);
              a9.i16[0] = vaddlv_u8(a9);
              v60 += a9.i32[0];
              --v57;
            }

            while (v57);
          }

          else
          {
            v60 = 0;
          }

          a9.i32[0] = v58 & ~(-1 << v59);
          v66 = vcnt_s8(a9);
          v66.i16[0] = vaddlv_u8(v66);
          if (sub_2992A8D1C(a1, v22[v60 + v66.i32[0] + 10], a3))
          {
            return 1;
          }

          v54 = *(a13 + 8);
        }

        v19 = 0;
        v61 = v54 - 1;
LABEL_124:
        *(a13 + 8) = v61;
        return v19;
      }

      goto LABEL_18;
    }

    v22 = (*(a1 + 8) + (a2 - 3));
    if (!a5)
    {
LABEL_18:
      v19 = *v22;
      if (!v19)
      {
        return v19;
      }

      if (*(a13 + 16) && !sub_29929E50C(a13 + 544, a13 + 20, *(a13 + 536), (a13 + 1148), *a13, *(a13 + 8) - *a13))
      {
        return 0;
      }

      if (*a7)
      {
        v19 = 0;
        --*a7;
        return v19;
      }

      if (!a8)
      {
        v19 = 0;
        ++*a3;
        return v19;
      }

      v62 = *v22;
      v63 = *a3;
      v64 = *a3 + 1;
      *a3 = v64;
      *(a10 + 24 * v63 + 8) = v62;
      return v64 >= a8;
    }

    if (a5 == 1 || a6 != 2)
    {
      v24 = *a4;
      if (a6 == 1)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if ((a5 & 1) == 0)
      {
        v24 = *a4;
LABEL_100:
        if (v24 == 42)
        {
          goto LABEL_101;
        }

        if (2 * (v24 == 63))
        {
          return sub_2992A99BC(a1, a2, a3, a9, &a4[a6], a5 - a6, a6, a7, a8, a10, a13);
        }

        goto LABEL_110;
      }

      LOBYTE(v24) = *a4;
    }

LABEL_110:
    *(*(a13 + 8))++ = v24;
    if (!sub_2992A8D1C(a1, v22[*a4 + 1], a3))
    {
      v19 = 0;
      v61 = *(a13 + 8) - 1;
      goto LABEL_124;
    }

    return 1;
  }

  if ((a2 & 3) != 0)
  {
    v20 = (*(a1 + 16) + (a2 - 1));
    if (!a5)
    {
      goto LABEL_130;
    }

    if (a5 == 2 && a6 == 2)
    {
      v21 = *a4;
    }

    else
    {
      if (a5 != 1 || a6 != 1)
      {
        goto LABEL_32;
      }

      v21 = *a4;
    }

    if (v21 == 42)
    {
LABEL_130:
      if (v20[1] && (!*(a13 + 16) || sub_29929E50C(a13 + 544, a13 + 20, *(a13 + 536), (a13 + 1148), *a13, *(a13 + 8) - *a13)))
      {
        if (*a7)
        {
          --*a7;
          goto LABEL_32;
        }

        if (a8)
        {
          v67 = v20[1];
          v68 = *a3;
          v69 = *a3 + 1;
          *a3 = v69;
          *(a10 + 24 * v68 + 8) = v67;
          if (v69 >= a8)
          {
            return 1;
          }
        }

        else
        {
          ++*a3;
        }
      }
    }

LABEL_32:
    if (a12)
    {
      v25 = a6;
    }

    else
    {
      v25 = 0;
    }

    if (a12)
    {
      v26 = -a6;
    }

    else
    {
      v26 = 0;
    }

    v27 = v25 + a5;
    if (v27)
    {
      v28 = *v20;
      if (v28 >= 5)
      {
        v72 = a3;
        v73 = a8;
        v29 = &a4[v26];
        v30 = v20 + v28;
        v31 = (v20 + 2);
        v32 = &v29[v27];
        while (1)
        {
          v33 = *(a13 + 8);
          v34 = v31 + 1;
          v35 = *v31;
          if (a6 == 2)
          {
            if (a11)
            {
              if ((v35 & 1) == 0)
              {
                goto LABEL_93;
              }

              v46 = (v35 - 1) >> 1;
              v47 = (v31 + 2);
              v48 = v29;
              v49 = v27 >> 1;
            }

            else if (v27)
            {
              if ((v35 & 1) == 0 || *v29 != *v34)
              {
                goto LABEL_93;
              }

              if (v27 == 1 && v35 == 1)
              {
                goto LABEL_80;
              }

              v46 = (v35 - 1) >> 1;
              v48 = v29 + 1;
              v47 = (v31 + 2);
              v49 = (v27 - 1) >> 1;
            }

            else
            {
              if (v35)
              {
                goto LABEL_93;
              }

              v46 = v35 >> 1;
              v48 = v29;
              v49 = v27 >> 1;
              v47 = (v31 + 1);
            }

            if (sub_2992A9F64(v48, v49, v47, v46))
            {
              goto LABEL_80;
            }
          }

          else if (a6 == 1)
          {
            v36 = &v34[v35];
            i = v31 + 1;
            v38 = v29;
            if (v35)
            {
              v38 = v29;
              for (i = v34; i < v36; ++i)
              {
                v39 = *v38;
                if (v39 == 42)
                {
                  break;
                }

                if (v39 != 63 && v39 != *i)
                {
                  goto LABEL_93;
                }

                ++v38;
              }
            }

            if (i < v36)
            {
              v41 = 0;
              v42 = 0;
              do
              {
                if (v38 >= v32)
                {
                  goto LABEL_64;
                }

                v43 = *v38;
                if (v43 == 42)
                {
                  if (++v38 == v32)
                  {
                    goto LABEL_80;
                  }

                  v42 = i + 1;
                  v41 = v38;
                  continue;
                }

                if (v43 == 63 || v43 == *i)
                {
                  ++v38;
                  ++i;
                }

                else
                {
LABEL_64:
                  i = v42++;
                  v38 = v41;
                }
              }

              while (i < v36);
            }

            if (v38 < v32)
            {
              v45 = v32 - v38;
              while (*v38 == 42)
              {
                ++v38;
                if (!--v45)
                {
                  v38 = &v29[v27];
                  break;
                }
              }
            }

            if (v38 == v32)
            {
LABEL_80:
              memcpy(v33, v34, v35);
              if (!*(a13 + 16) || sub_29929E50C(a13 + 544, a13 + 20, *(a13 + 536), (a13 + 1148), *a13, v33 + v35 - *a13))
              {
                if (*a7)
                {
                  --*a7;
                }

                else if (v73)
                {
                  v50 = *&v34[v35];
                  v51 = *v72;
                  v52 = *v72 + 1;
                  *v72 = v52;
                  *(a10 + 24 * v51 + 8) = v50;
                  if (v52 >= v73)
                  {
                    return 1;
                  }
                }

                else
                {
                  ++*v72;
                }
              }
            }
          }

LABEL_93:
          v31 = &v34[v35 + 4];
          if (&v34[v35] >= v30)
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return v19;
}

uint64_t sub_2992A938C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a2;
  v14 = 1;
  if (sub_2992A8D1C(a1, a2, a3))
  {
    return v14;
  }

  v16 = a1;
  if ((v12 & 3) == 2)
  {
    v38 = 0;
    v39 = *(v16 + 8) + (v12 - 2);
    v75 = (v39 + 4);
    v71 = v39 + 40;
    v40 = *(a11 + 8);
    v41 = v16;
    while (1)
    {
      *v40 = v38;
      v42 = (*(a11 + 8) + 1);
      *(a11 + 8) = v42;
      v43 = v75[v38 >> 5];
      if ((v43 >> v38))
      {
        v44 = v38 >> 5;
        v45 = v38 & 0x1F;
        if (a6 == 2)
        {
          if (v38 >= 0x20)
          {
            v47 = 0;
            v53 = v75;
            do
            {
              v54 = *v53++;
              v15 = vcnt_s8(v54);
              v15.i16[0] = vaddlv_u8(v15);
              v47 += v15.i32[0];
              --v44;
            }

            while (v44);
          }

          else
          {
            v47 = 0;
          }

          v15.i32[0] = v43 & ~(-1 << v45);
          v15 = vcnt_s8(v15);
          v15.i16[0] = vaddlv_u8(v15);
          v55 = *(v71 + 4 * (v47 + v15.i32[0]));
          if ((v55 & 3u) > 1)
          {
            if ((v55 & 3) == 2)
            {
              v56 = 0;
              v57 = *(v41 + 8) + (v55 - 2);
              v58 = (v57 + 4);
              v73 = v57 + 40;
              while (1)
              {
                *v42 = v56;
                v59 = *(a11 + 8) + 1;
                *(a11 + 8) = v59;
                v60 = v58[v56 >> 5];
                if ((v60 >> v56))
                {
                  if (v56 >= 0x20)
                  {
                    v61 = 0;
                    v62 = v56 >> 5;
                    v63 = v58;
                    do
                    {
                      v64 = *v63++;
                      v15 = vcnt_s8(v64);
                      v15.i16[0] = vaddlv_u8(v15);
                      v61 += v15.i32[0];
                      --v62;
                    }

                    while (v62);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v15.i32[0] = v60 & ~(-1 << (v56 & 0x1F));
                  v65 = vcnt_s8(v15);
                  v65.i16[0] = vaddlv_u8(v65);
                  v66 = *(v73 + 4 * (v61 + v65.i32[0]));
                  if (sub_2992A938C(v41))
                  {
                    return 1;
                  }

                  v59 = *(a11 + 8);
                }

                v42 = (v59 - 1);
                *(a11 + 8) = v59 - 1;
                if (++v56 == 256)
                {
                  goto LABEL_43;
                }
              }
            }

            v67 = 0;
            v68 = *(v41 + 8) + (v55 - 3) + 4;
            while (1)
            {
              *v42 = v67;
              v69 = *(a11 + 8) + 1;
              *(a11 + 8) = v69;
              if ((*(v68 + 4 * v67) & 3) != 0)
              {
                if (sub_2992A938C(v41))
                {
                  return 1;
                }

                v69 = *(a11 + 8);
              }

              v42 = (v69 - 1);
              *(a11 + 8) = v42;
              if (++v67 == 256)
              {
                goto LABEL_43;
              }
            }
          }

          if ((v55 & 3) != 0)
          {
            v14 = 1;
            v52 = v41;
            goto LABEL_42;
          }
        }

        else if (a6 == 1)
        {
          if (v38 >= 0x20)
          {
            v46 = 0;
            v48 = v75;
            do
            {
              v49 = *v48++;
              v15 = vcnt_s8(v49);
              v15.i16[0] = vaddlv_u8(v15);
              v46 += v15.i32[0];
              --v44;
            }

            while (v44);
          }

          else
          {
            v46 = 0;
          }

          v15.i32[0] = v43 & ~(-1 << v45);
          v50 = vcnt_s8(v15);
          v50.i16[0] = vaddlv_u8(v50);
          v51 = *(v71 + 4 * (v46 + v50.i32[0]));
          v14 = 1;
          v52 = v41;
LABEL_42:
          if (sub_2992A938C(v52))
          {
            return v14;
          }
        }
      }

LABEL_43:
      v40 = (*(a11 + 8) - 1);
      *(a11 + 8) = v40;
      if (++v38 == 256)
      {
        return 0;
      }
    }
  }

  if ((v12 & 3) == 3)
  {
    v17 = 0;
    v74 = *(v16 + 8) + (v12 - 3) + 4;
    v18 = *(a11 + 8);
    v19 = v16;
    do
    {
      *v18 = v17;
      v20 = (*(a11 + 8) + 1);
      *(a11 + 8) = v20;
      v21 = *(v74 + 4 * v17);
      v22 = v21 & 3;
      if ((v21 & 3) != 0)
      {
        if (a6 == 2)
        {
          if (v22 == 2)
          {
            v27 = 0;
            v28 = *(v19 + 8) + (v21 - 2);
            v29 = (v28 + 4);
            v72 = v28 + 40;
            while (1)
            {
              *v20 = v27;
              v30 = *(a11 + 8) + 1;
              *(a11 + 8) = v30;
              v31 = v29[v27 >> 5];
              if ((v31 >> v27))
              {
                if (v27 >= 0x20)
                {
                  v32 = 0;
                  v33 = v27 >> 5;
                  v34 = v29;
                  do
                  {
                    v35 = *v34++;
                    v15 = vcnt_s8(v35);
                    v15.i16[0] = vaddlv_u8(v15);
                    v32 += v15.i32[0];
                    --v33;
                  }

                  while (v33);
                }

                else
                {
                  v32 = 0;
                }

                v15.i32[0] = v31 & ~(-1 << (v27 & 0x1F));
                v36 = vcnt_s8(v15);
                v36.i16[0] = vaddlv_u8(v36);
                v37 = *(v72 + 4 * (v32 + v36.i32[0]));
                if (sub_2992A938C(v19))
                {
                  return 1;
                }

                v30 = *(a11 + 8);
              }

              v20 = (v30 - 1);
              *(a11 + 8) = v30 - 1;
              if (++v27 == 256)
              {
                goto LABEL_29;
              }
            }
          }

          if (v22 != 3)
          {
            v14 = 1;
            v23 = v19;
LABEL_28:
            if (sub_2992A938C(v23))
            {
              return v14;
            }

            goto LABEL_29;
          }

          v24 = 0;
          v25 = *(v19 + 8) + (v21 - 3) + 4;
          do
          {
            *v20 = v24;
            v26 = *(a11 + 8) + 1;
            *(a11 + 8) = v26;
            if ((*(v25 + 4 * v24) & 3) != 0)
            {
              if (sub_2992A938C(v19))
              {
                return 1;
              }

              v26 = *(a11 + 8);
            }

            v20 = (v26 - 1);
            *(a11 + 8) = v20;
            ++v24;
          }

          while (v24 != 256);
        }

        else if (a6 == 1)
        {
          v14 = 1;
          v23 = v19;
          goto LABEL_28;
        }
      }

LABEL_29:
      v18 = (*(a11 + 8) - 1);
      *(a11 + 8) = v18;
      ++v17;
    }

    while (v17 != 256);
  }

  return 0;
}

uint64_t sub_2992A99BC(uint64_t a1, int a2, uint64_t a3, uint8x8_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a2 & 3) == 2)
  {
    v36 = 0;
    v37 = *(a1 + 8) + (a2 - 2);
    v68 = v37 + 40;
    v70 = (v37 + 4);
    v38 = *(a11 + 8);
    while (1)
    {
      *v38 = v36;
      v39 = (*(a11 + 8) + 1);
      *(a11 + 8) = v39;
      v40 = v70[v36 >> 5];
      if ((v40 >> v36))
      {
        v41 = v36 >> 5;
        v42 = v36 & 0x1F;
        if (a7 == 2)
        {
          if (v36 >= 0x20)
          {
            v44 = 0;
            v48 = v70;
            do
            {
              v49 = *v48++;
              a4 = vcnt_s8(v49);
              a4.i16[0] = vaddlv_u8(a4);
              v44 += a4.i32[0];
              --v41;
            }

            while (v41);
          }

          else
          {
            v44 = 0;
          }

          a4.i32[0] = v40 & ~(-1 << v42);
          a4 = vcnt_s8(a4);
          a4.i16[0] = vaddlv_u8(a4);
          v50 = *(v68 + 4 * (v44 + a4.i32[0]));
          v51 = *(v68 + 4 * (v44 + a4.i32[0])) & 3;
          if (v51 > 1)
          {
            if (v51 == 2)
            {
              v52 = 0;
              v53 = *(a1 + 8) + (v50 - 2);
              v54 = (v53 + 4);
              v55 = v53 + 40;
              while (1)
              {
                *v39 = v52;
                v56 = *(a11 + 8) + 1;
                *(a11 + 8) = v56;
                v57 = v54[v52 >> 5];
                if ((v57 >> v52))
                {
                  if (v52 >= 0x20)
                  {
                    v58 = 0;
                    v59 = v52 >> 5;
                    v60 = v54;
                    do
                    {
                      v61 = *v60++;
                      a4 = vcnt_s8(v61);
                      a4.i16[0] = vaddlv_u8(a4);
                      v58 += a4.i32[0];
                      --v59;
                    }

                    while (v59);
                  }

                  else
                  {
                    v58 = 0;
                  }

                  a4.i32[0] = v57 & ~(-1 << (v52 & 0x1F));
                  v62 = vcnt_s8(a4);
                  v62.i16[0] = vaddlv_u8(v62);
                  if (sub_2992A8D1C(a1, *(v55 + 4 * (v58 + v62.i32[0])), a3))
                  {
                    return 1;
                  }

                  v56 = *(a11 + 8);
                }

                v39 = (v56 - 1);
                *(a11 + 8) = v56 - 1;
                if (++v52 == 256)
                {
                  goto LABEL_64;
                }
              }
            }

            v63 = 0;
            v64 = *(a1 + 8) + (v50 - 3) + 4;
            while (1)
            {
              *v39 = v63;
              v65 = *(a11 + 8) + 1;
              *(a11 + 8) = v65;
              v66 = *(v64 + 4 * v63);
              if ((v66 & 3) != 0)
              {
                if (sub_2992A8D1C(a1, v66, a3))
                {
                  return 1;
                }

                v65 = *(a11 + 8);
              }

              v39 = (v65 - 1);
              *(a11 + 8) = v39;
              if (++v63 == 256)
              {
                goto LABEL_64;
              }
            }
          }

          if (v51)
          {
            v18 = 1;
            if (sub_2992A8D1C(a1, v50, a3))
            {
              return v18;
            }
          }
        }

        else if (a7 == 1)
        {
          if (v36 >= 0x20)
          {
            v43 = 0;
            v45 = v70;
            do
            {
              v46 = *v45++;
              a4 = vcnt_s8(v46);
              a4.i16[0] = vaddlv_u8(a4);
              v43 += a4.i32[0];
              --v41;
            }

            while (v41);
          }

          else
          {
            v43 = 0;
          }

          a4.i32[0] = v40 & ~(-1 << v42);
          v47 = vcnt_s8(a4);
          v47.i16[0] = vaddlv_u8(v47);
          v18 = 1;
          if (sub_2992A8D1C(a1, *(v68 + 4 * (v43 + v47.i32[0])), a3))
          {
            return v18;
          }
        }
      }

LABEL_64:
      v38 = (*(a11 + 8) - 1);
      *(a11 + 8) = v38;
      if (++v36 == 256)
      {
        return 0;
      }
    }
  }

  if ((a2 & 3) == 3)
  {
    v13 = 0;
    v69 = *(a1 + 8) + (a2 - 3) + 4;
    v14 = *(a11 + 8);
    do
    {
      *v14 = v13;
      v15 = (*(a11 + 8) + 1);
      *(a11 + 8) = v15;
      v16 = *(v69 + 4 * v13);
      v17 = *(v69 + 4 * v13) & 3;
      if ((v16 & 3) != 0)
      {
        if (a7 == 2)
        {
          if (v17 == 2)
          {
            v25 = 0;
            v26 = *(a1 + 8) + (v16 - 2);
            v27 = (v26 + 4);
            v28 = v26 + 40;
            while (1)
            {
              *v15 = v25;
              v29 = *(a11 + 8) + 1;
              *(a11 + 8) = v29;
              v30 = v27[v25 >> 5];
              if ((v30 >> v25))
              {
                if (v25 >= 0x20)
                {
                  v31 = 0;
                  v32 = v25 >> 5;
                  v33 = v27;
                  do
                  {
                    v34 = *v33++;
                    a4 = vcnt_s8(v34);
                    a4.i16[0] = vaddlv_u8(a4);
                    v31 += a4.i32[0];
                    --v32;
                  }

                  while (v32);
                }

                else
                {
                  v31 = 0;
                }

                a4.i32[0] = v30 & ~(-1 << (v25 & 0x1F));
                v35 = vcnt_s8(a4);
                v35.i16[0] = vaddlv_u8(v35);
                if (sub_2992A8D1C(a1, *(v28 + 4 * (v31 + v35.i32[0])), a3))
                {
                  return 1;
                }

                v29 = *(a11 + 8);
              }

              v15 = (v29 - 1);
              *(a11 + 8) = v29 - 1;
              if (++v25 == 256)
              {
                goto LABEL_28;
              }
            }
          }

          if (v17 != 3)
          {
            v18 = 1;
            v19 = a1;
            v20 = a3;
LABEL_27:
            if (sub_2992A8D1C(v19, v16, v20))
            {
              return v18;
            }

            goto LABEL_28;
          }

          v21 = 0;
          v22 = *(a1 + 8) + (v16 - 3) + 4;
          do
          {
            *v15 = v21;
            v23 = *(a11 + 8) + 1;
            *(a11 + 8) = v23;
            v24 = *(v22 + 4 * v21);
            if ((v24 & 3) != 0)
            {
              if (sub_2992A8D1C(a1, v24, a3))
              {
                return 1;
              }

              v23 = *(a11 + 8);
            }

            v15 = (v23 - 1);
            *(a11 + 8) = v15;
            ++v21;
          }

          while (v21 != 256);
        }

        else if (a7 == 1)
        {
          v18 = 1;
          v19 = a1;
          v20 = a3;
          goto LABEL_27;
        }
      }

LABEL_28:
      v14 = (*(a11 + 8) - 1);
      *(a11 + 8) = v14;
      ++v13;
    }

    while (v13 != 256);
  }

  return 0;
}

BOOL sub_2992A9F64(_WORD *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = &a3[a4];
  v5 = a1;
  if (a4 >= 1)
  {
    do
    {
      v6 = *v5;
      if (v6 == 42)
      {
        break;
      }

      if (v6 != 63 && v6 != *a3)
      {
        return 0;
      }

      ++v5;
      ++a3;
    }

    while (a3 < v4);
  }

  v8 = &a1[a2];
  if (a3 < v4)
  {
    v9 = 0;
    v10 = 0;
    while (v5 && v5 < v8)
    {
      v11 = *v5;
      if (v11 == 42)
      {
        if (++v5 == v8)
        {
          return 1;
        }

        v10 = a3 + 1;
        v9 = v5;
      }

      else
      {
        if (v11 != 63 && v11 != *a3)
        {
          break;
        }

        ++v5;
        ++a3;
      }

LABEL_24:
      if (a3 >= v4)
      {
        goto LABEL_25;
      }
    }

    a3 = v10++;
    v5 = v9;
    goto LABEL_24;
  }

LABEL_25:
  if (v5)
  {
    while (v5 < v8 && *v5 == 42)
    {
      ++v5;
    }
  }

  return v5 == v8;
}

uint64_t sub_2992AA054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = 1024;
  v16 = 0;
  v17 = 0;
  v15 = 0x10000;
  v19 = malloc_type_malloc(0x10000uLL, 0x15140D44uLL);
  v18 = 0;
  bzero(v19, 0x10000uLL);
  v21 = 0;
  v22 = 0;
  v20 = 0x10000;
  v24 = malloc_type_malloc(0x10000uLL, 0x15140D44uLL);
  v23 = 0;
  bzero(v24, 0x10000uLL);
  v26 = 0;
  v27 = 0;
  v25 = *(a1 + 40);
  v6 = *(a1 + 8);
  v30 = *(a1 + 56);
  v29 = a1 + 48;
  v31 = v6;
  v28 = 1;
  bzero(v6, v25);
  v7 = sub_2992AA63C(&v15, 1028, 4);
  v8 = (v7 >> 2) | 0x300000000;
  if (v7 == -1)
  {
    v8 = 0;
  }

  v32 = v8;
  if (a2)
  {
    v9 = (a3 + 16);
    while (1)
    {
      v10 = *(v9 - 1);
      if ((v10 - 257) < 0xFFFFFFFFFFFFFF00)
      {
        return 0xFFFFFFFFLL;
      }

      v11 = *(v9 - 2);
      v12 = *v9;
      v9 += 6;
      sub_2992AA1D0(&v15, v32, v11, v10, v12);
      if (!--a2)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v20 = (v22 & 0xFFFFFFFC) + *(v24 + (v22 & 0xFFFFFFFC)) + 4;
    v21 = v20;
    v15 = v16;
    v13 = sub_2992AA378(&v15, a1);
    if (v19)
    {
      free(v19);
    }

    if (v24)
    {
      free(v24);
    }
  }

  return v13;
}

uint64_t sub_2992AA1D0(uint64_t result, int a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  v6 = *(result + 56);
  v7 = 4 * (a2 & 0x3FFFFFFF);
  v8 = (v6 + v7);
  if (!a4)
  {
LABEL_19:
    *v8 = a5;
    return result;
  }

  v9 = a4;
  v11 = result;
  while (1)
  {
    v12 = *a3;
    v13 = v8 + 1;
    v14 = v8[v12 + 1];
    v15 = v8[v12 + 1] & 3;
    result = v14 >> 2;
    if ((v14 & 3) > 1)
    {
      if (v15 != 3)
      {
        return result;
      }

      ++a3;
      LODWORD(v18) = v9 - 1;
      goto LABEL_18;
    }

    if (!v15)
    {
      if (*(v11 + 80) != *(v11 + 72))
      {
        *(v11 + 72) = (*(v11 + 80) & 0xFFFFFFFCLL) + *(*(v11 + 120) + (*(v11 + 80) & 0xFFFFFFFCLL)) + 4;
      }

      v16 = sub_2992AA63C((v11 + 64), *(v11 + 200), 4);
      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = (v16 >> 2) | 0x100000000;
      }

      v13[v12] = HIDWORD(v17) | (4 * v17);
      result = v17;
    }

    v19 = (*(v11 + 120) + 4 * (result & 0x3FFFFFFF));
    v18 = (v9 - 1);
    if (v9 == 1)
    {
      v19[1] = a5;
      v23 = 4;
      goto LABEL_22;
    }

    v20 = *v19;
    if (!v20)
    {
      *v19 = 4;
      v20 = 4;
    }

    ++a3;
    v21 = (v9 + 4);
    v22 = v20 + 4;
    if (v22 + v21 < *(v11 + 200))
    {
      break;
    }

    result = sub_2992AA738(v11);
    v6 = *(v11 + 56);
    *(v6 + v7 + 4 * v12 + 4) = HIDWORD(result) | (4 * result);
LABEL_18:
    v7 = 4 * (result & 0x3FFFFFFF);
    v8 = (v6 + v7);
    v9 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  *(v19 + v22) = v18;
  v24 = v19 + v22 + 1;
  result = memcpy(v24, a3, v18);
  *&v24[v18] = a5;
  v23 = *v19 + v21;
LABEL_22:
  *v19 = v23;
  return result;
}

uint64_t sub_2992AA378(uint64_t a1, uint64_t a2)
{
  v4 = sub_2992AA63C((a1 + 128), 24, 4);
  v5 = sub_2992AA87C(a1, *(a1 + 192), (a1 + 128), 1);
  v6 = *(a1 + 136);
  v7 = sub_2992AA63C((a1 + 128), *(a1 + 72), 4096);
  if (v7 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  memcpy((*(a1 + 184) + v7), *(a1 + 120), *(a1 + 72));
  v9 = *(a1 + 184);
  v10 = &v9[v4];
  v11 = HIDWORD(v5) + 4 * v5;
  *v10 = 1;
  *(v10 + 1) = v11;
  *(v10 + 2) = v6;
  *(v10 + 3) = v8;
  v12 = *(a1 + 72);
  v13 = *(a1 + 200);
  *(v10 + 4) = v12;
  *(v10 + 5) = v13;
  *a2 = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  v14 = *(a1 + 136);
  *(a1 + 128) = v14;
  v15 = *(a1 + 168);
  if (v15)
  {
    v16 = *(a1 + 176);
    v17 = v15();
  }

  else
  {
    v17 = malloc_type_realloc(v9, v14, 0x5BE1FB78uLL);
  }

  v19 = v17;
  result = 0;
  *(a1 + 184) = v19;
  *(a2 + 8) = v19;
  *(a2 + 16) = &v19[v8];
  return result;
}

uint64_t sub_2992AA48C(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t *a4, _DWORD *a5)
{
  v5 = 1;
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        v8 = a4;
        if (a4)
        {
          v37 = 1024;
          v20 = 0;
          v21 = 0;
          v19 = 0x10000;
          v23 = malloc_type_malloc(0x10000uLL, 0x15140D44uLL);
          v22 = 0;
          bzero(v23, 0x10000uLL);
          v25 = 0;
          v26 = 0;
          v24 = 0x10000;
          v28 = malloc_type_malloc(0x10000uLL, 0x15140D44uLL);
          v27 = 0;
          bzero(v28, 0x10000uLL);
          v30 = 0;
          v31 = 0;
          v29 = *(a1 + 40);
          v11 = *(a1 + 8);
          v34 = *(a1 + 56);
          v33 = a1 + 48;
          v35 = v11;
          v32 = 1;
          bzero(v11, v29);
          v12 = sub_2992AA63C(&v19, 1028, 4);
          v13 = (v12 >> 2) | 0x300000000;
          if (v12 == -1)
          {
            v13 = 0;
          }

          v36 = v13;
          while (1)
          {
            v15 = *v8++;
            v14 = v15;
            if ((v15 - 257) <= 0xFFFFFFFFFFFFFEFFLL)
            {
              break;
            }

            v17 = *v7++;
            v16 = v17;
            LODWORD(v17) = *a5++;
            sub_2992AA1D0(&v19, v36, v16, v14, v17);
            if (!--v6)
            {
              v24 = (v26 & 0xFFFFFFFC) + *(v28 + (v26 & 0xFFFFFFFC)) + 4;
              v25 = v24;
              v19 = v20;
              v5 = sub_2992AA378(&v19, a1);
              if (v23)
              {
                free(v23);
              }

              if (v28)
              {
                free(v28);
              }

              return v5;
            }
          }

          if (v23)
          {
            free(v23);
          }

          if (v28)
          {
            free(v28);
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_2992AA63C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = (a3 + a1[1] - 1) & -a3;
  v6 = v5 + a2;
  if (v5 + a2 <= *a1)
  {
LABEL_13:
    a1[1] = v6;
    a1[2] = v5;
    return v5;
  }

  while (1)
  {
    v7 = 2 * v4 ? 2 * v4 : 0x10000;
    if (!*(a1 + 6))
    {
      break;
    }

    v8 = a1[5];
    v9 = a1[7];
    v4 = v7;
    if (!v8)
    {
      v10 = malloc_type_realloc(v9, v7, 0x9B4E535BuLL);
      a1[7] = v10;
      *a1[4] = 1;
      goto LABEL_11;
    }

    a1[7] = v8(v9, v7, a1[6]);
LABEL_12:
    *a1 = v4;
    if (v6 <= v4)
    {
      goto LABEL_13;
    }
  }

  v4 = v7;
  v10 = malloc_type_realloc(a1[7], v7, 0x9B45BB1CuLL);
  a1[7] = v10;
  if (v10)
  {
LABEL_11:
    bzero(&v10[*a1], v4 - *a1);
    goto LABEL_12;
  }

  return -1;
}

uint64_t sub_2992AA738(uint64_t a1)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 200);
  v3 = MEMORY[0x2A1C7C4A8]();
  v5 = (v18 - ((v4 + 19) & 0x1FFFFFFF0));
  v7 = 4 * (v6 & 0x3FFFFFFF);
  v8 = (*(v3 + 120) + v7);
  v9 = *v8;
  *v5 = v9;
  memcpy(v5 + 1, v8 + 1, v9);
  if (*(a1 + 80) == v7)
  {
    bzero(v8, *(a1 + 72) - v7);
    *(a1 + 72) = *(a1 + 80);
  }

  v10 = sub_2992AA63C(a1, 1028, 4);
  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v10 >> 2) | 0x300000000;
  }

  *(*(a1 + 56) + 4 * (v11 & 0x3FFFFFFF)) = v5[1];
  if (v9 >= 5)
  {
    v12 = v5 + v9;
    v13 = (v5 + 2);
    do
    {
      v14 = &v13[*v13 + 1];
      v15 = *v14;
      sub_2992AA1D0(a1, v11);
      v13 = v14 + 4;
    }

    while (v14 < v12);
  }

  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

unint64_t sub_2992AA87C(uint64_t a1, unint64_t a2, unint64_t *a3, int a4)
{
  LODWORD(v4) = a2;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) == 3)
  {
    v8 = 0;
    v9 = (*(a1 + 56) + 4 * (a2 & 0x3FFFFFFF));
    v10 = v9 + 1;
    v11 = 0uLL;
    v12.i64[0] = 0x300000003;
    v12.i64[1] = 0x300000003;
    do
    {
      v11 = vsubq_s32(v11, vtstq_s32(*&v10[v8], v12));
      v8 += 4;
    }

    while (v8 != 256);
    if (a4 || (v13 = vaddvq_s32(v11), v13 >= 0x21))
    {
      v21 = sub_2992AA63C(a3, 1028, 4);
      if (v21 == -1)
      {
        v4 = 0;
      }

      else
      {
        v4 = (v21 >> 2) | 0x300000000;
      }

      v22 = 4 * (v4 & 0x3FFFFFFF);
      *(a3[7] + v22) = *v9;
      v23 = v22 + 4;
      v24 = 256;
      do
      {
        v25 = *v10++;
        v26 = sub_2992AA87C(a1, (v25 >> 2) | ((v25 & 3) << 32), a3, 0);
        *(a3[7] + v23) = HIDWORD(v26) + 4 * v26;
        v23 += 4;
        --v24;
      }

      while (v24);
    }

    else
    {
      v14 = sub_2992AA63C(a3, 4 * v13 + 40, 4);
      v15 = 0;
      if (v14 == -1)
      {
        v4 = 0;
      }

      else
      {
        v4 = (v14 >> 2) | 0x200000000;
      }

      v16 = 4 * (v4 & 0x3FFFFFFF);
      v17 = a3[7] + v16;
      *v17 = *v9;
      *(v17 + 37) = v13;
      do
      {
        v18 = sub_2992AA87C(a1, (v10[v15] >> 2) | ((v10[v15] & 3) << 32), a3, 0);
        if (HIDWORD(v18))
        {
          v19 = a3[7] + v16;
          v20 = *(v19 + 36);
          *(v19 + 36) = v20 + 1;
          *(v19 + 4 * v20 + 40) = HIDWORD(v18) + 4 * v18;
          *(v19 + 4 * (v15 >> 5) + 4) |= 1 << v15;
        }

        ++v15;
      }

      while (v15 != 256);
    }

    v5 = HIDWORD(v4);
  }

  return v4 | (v5 << 32);
}

uint64_t sub_2992AAA44(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = sub_29936C2B8();
  v5 = sub_29936C350(v4, a2, off_2A145F738[0], @"sys.dic");
  v11 = MEMORY[0x29EDCA5F8];
  v12 = 0x40000000;
  v13 = sub_299234CE0;
  v14 = &unk_29EF0DD50;
  v16 = a2;
  v15 = v5;
  sub_299234450(v5, &v11, 0, a1);
  *(a1 + 16) = sub_2993B2710(a2);
  v6 = a2 - 1;
  if ((a2 - 1) > 4)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = dword_29940F294[v6];
    v8 = dword_29940F2A8[v6];
  }

  *(a1 + 24) = v7;
  *(a1 + 28) = v8;
  *(a1 + 32) = 0;
  v11 = &unk_2A1F6AEA0;
  v12 = a1;
  v14 = &v11;
  sub_2992AABC8(a1, v7, &v11);
  sub_2992AB070(&v11);
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2992AAB98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992AB070(va);
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992AABC8(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(**a1 + 40))(*a1) == a2)
  {
    v6 = *(a3 + 24);
    if (v6)
    {
      v7 = *(*v6 + 48);

      return v7();
    }

LABEL_10:
    sub_2991A2240();
  }

  (*(**a1 + 48))(*a1, a2);
  v9 = *(a3 + 24);
  if (!v9)
  {
    goto LABEL_10;
  }

  (*(*v9 + 48))(v9);
  v10 = *(**a1 + 48);

  return v10();
}

void sub_2992AAD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v3 = *(a1 + 28);
  operator new();
}

void sub_2992AAE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992AB070(va);
  _Unwind_Resume(a1);
}

void sub_2992AAE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a4;
  v4 = *(a1 + 24);
  operator new();
}

void sub_2992AAF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992AB070(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992AAFB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6AEA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992AAFE4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  if (*(*v1 + 16) && (v3 = *(v2 + 36), v5 = v2 + 128, v4 = *(v2 + 128), v3 < (*(v5 + 8) - v4) >> 2) && (v6 = *(v4 + 4 * v3)) != 0)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = 15;
  }

  v1[4] = v7;
  return result;
}

uint64_t sub_2992AB024(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AF10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992AB070(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2992AB16C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6AF30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992AB1C8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6AF90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992AB290(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6AFB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992AB2EC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B010))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2992AB338(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    v3 = sub_2992A5BE8(v2);
    MEMORY[0x29C29BFB0](v3, 0x20C4093837F09);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0x1010C40E4C6A875);
  }

  return a1;
}

uint64_t sub_2992AB3A0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 56) == v1)
  {
    return -1;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v1 + 8 * v3);
    if ((*(*v4 + 72))(v4) == 1 || (*(*v4 + 72))(v4) == 7)
    {
      v5 = *(*(a1 + 48) + 8 * v3);
      if ((*(*v5 + 408))(v5) != 2)
      {
        break;
      }
    }

    ++v3;
    v1 = *(a1 + 48);
    if (v3 >= (*(a1 + 56) - v1) >> 3)
    {
      return -1;
    }
  }

  return v3;
}

uint64_t sub_2992AB494(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 56) == v1)
  {
    return -1;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v1 + 8 * v3);
    if ((*(*v4 + 72))(v4) == 1 || (*(*v4 + 72))(v4) == 7)
    {
      v5 = *(*(a1 + 48) + 8 * v3);
      if (!(*(*v5 + 408))(v5))
      {
        break;
      }
    }

    ++v3;
    v1 = *(a1 + 48);
    if (v3 >= (*(a1 + 56) - v1) >> 3)
    {
      return -1;
    }
  }

  return v3;
}

uint64_t sub_2992AB584(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 56) == v1)
  {
    return -1;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v1 + 8 * v3);
    if ((*(*v4 + 72))(v4) == 1 || (*(*v4 + 72))(v4) == 7)
    {
      v5 = *(*(a1 + 48) + 8 * v3);
      if ((*(*v5 + 408))(v5) != 1)
      {
        break;
      }
    }

    ++v3;
    v1 = *(a1 + 48);
    if (v3 >= (*(a1 + 56) - v1) >> 3)
    {
      return -1;
    }
  }

  return v3;
}

uint64_t sub_2992AB678(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3 != v4)
  {
    while ((*(**v3 + 96))() != a2)
    {
      v3 += 8;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = *(a1 + 56);
  }

  if (v3 == v4)
  {
    return -1;
  }

  else
  {
    return (v3 - *(a1 + 48)) >> 3;
  }
}

uint64_t sub_2992AB710(void *a1, uint64_t *a2, int a3, _BYTE *a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v22 = v5;
    if (!sub_29927363C(a1 + 1, &v22))
    {
      v13 = (a1[7] - a1[6]) >> 3;
      v21 = *a2;
      v22 = &v21;
      sub_2992AE238(a1 + 1, &v21)[3] = v13;
      sub_2992AB8D4(a1 + 6, a2);
      return 1;
    }

    if (a3 != 2)
    {
      v22 = *a2;
      if (v22 && (v11 = sub_29927363C(a1 + 1, &v22)) != 0)
      {
        v12 = v11[3];
      }

      else
      {
        v12 = -1;
      }

      v15 = *(a1[6] + 8 * v12);
      v20 = v15;
      if (!a3)
      {
        goto LABEL_14;
      }

      v16 = *(a5 + 24);
      v21 = *a2;
      v22 = v15;
      if (!v16)
      {
        sub_2991A2240();
      }

      if ((*(*v16 + 48))(v16, &v22, &v21))
      {
LABEL_14:
        sub_2992AE1BC(a1 + 1, &v20);
        v21 = *a2;
        v22 = &v21;
        sub_2992AE238(a1 + 1, &v21)[3] = v12;
        v17 = a1[6];
        v18 = *a2;
        *a2 = 0;
        v19 = *(v17 + 8 * v12);
        *(v17 + 8 * v12) = v18;
        if (v19)
        {
          (*(*v19 + 16))(v19);
        }

        if (a4)
        {
          *a4 = 1;
        }
      }
    }
  }

  return 0;
}

uint64_t *sub_2992AB8D4(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_299212A8C();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      sub_29920B86C(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_2992737D8(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t **sub_2992AB9D4(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  sub_2992AF88C(v7, a2);
  sub_2992AE6B0(v3, v4, v7);
  sub_29922D72C(v7);
  result = sub_2992ABA78(a1);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992ABA5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29922D72C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2992ABA78(uint64_t **result)
{
  v3 = result[6];
  if (result[7] != v3)
  {
    v6[7] = v1;
    v6[8] = v2;
    v4 = result;
    v5 = 0;
    do
    {
      v6[0] = v3[v5];
      v6[2] = v6;
      result = sub_2992AE238(v4 + 1, v6);
      result[3] = v5++;
      v3 = v4[6];
    }

    while (v5 < v4[7] - v3);
  }

  return result;
}

uint64_t sub_2992ABB04(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (!*a2)
  {
    return 0;
  }

  v5 = (a1 + 48);
  if (a3 > (*(a1 + 56) - *(a1 + 48)) >> 3)
  {
    return 0;
  }

  v15 = *a2;
  v7 = sub_29927363C((a1 + 8), &v15);
  if (v7)
  {
    v8 = v7[3];
    if (v8 < a3)
    {
      return 0;
    }

    if (v8 != -1)
    {
      v15 = *(*(a1 + 48) + 8 * v8);
      sub_2992AE1BC((a1 + 8), &v15);
      sub_2992AD2F4((*(a1 + 48) + 8 * v8 + 8), *(a1 + 56), (*(a1 + 48) + 8 * v8));
      v11 = v10;
      v12 = *(a1 + 56);
      if (v12 != v10)
      {
        do
        {
          v14 = *--v12;
          v13 = v14;
          *v12 = 0;
          if (v14)
          {
            (*(*v13 + 16))(v13);
          }
        }

        while (v12 != v11);
      }

      *(a1 + 56) = v11;
    }
  }

  sub_2992ABC30(v5, (*(a1 + 48) + 8 * a3), a2);
  sub_2992ABA78(a1);
  return 1;
}

uint64_t *sub_2992ABC30(void *a1, char *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = (&v6[-*a1] >> 3) + 1;
    if (v12 >> 61)
    {
      sub_299212A8C();
    }

    v13 = a2 - v11;
    v14 = v7 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    v40 = a1;
    if (v15)
    {
      sub_29920B86C(a1, v15);
    }

    v18 = (8 * v16);
    v37 = 0;
    v38 = 8 * v16;
    v39 = (8 * v16);
    if (v16)
    {
      v21 = (8 * v16);
    }

    else
    {
      if (v13 < 1)
      {
        if (v11 == v4)
        {
          v28 = 1;
        }

        else
        {
          v28 = v13 >> 2;
        }

        v41 = a1;
        sub_29920B86C(a1, v28);
      }

      v19 = (v13 >> 3) + 1;
      sub_2992AD2F4(0, v18, &v18[-(v19 >> 1)]);
      v21 = v20;
      v18 = (v38 - 8 * (v19 >> 1));
      v38 = v18;
    }

    v29 = *a3;
    *a3 = 0;
    *v21 = v29;
    *&v39 = v21 + 1;
    memcpy(v21 + 1, v4, a1[1] - v4);
    v30 = *a1;
    v31 = v38;
    *&v39 = v39 + a1[1] - v4;
    a1[1] = v4;
    v32 = v4 - v30;
    v33 = (v31 - (v4 - v30));
    memcpy(v33, v30, v32);
    v34 = *a1;
    *a1 = v33;
    v35 = a1[2];
    *(a1 + 1) = v39;
    *&v39 = v34;
    *(&v39 + 1) = v35;
    v37 = v34;
    v38 = v34;
    sub_2992737D8(&v37);
    return v18;
  }

  else if (a2 == v6)
  {
    v17 = *a3;
    *a3 = 0;
    *v6 = v17;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = (v6 - 8);
    if (v6 < 8)
    {
      v10 = a1[1];
    }

    else
    {
      v9 = *v8;
      *v8 = 0;
      *v6 = v9;
      v10 = v6 + 8;
    }

    a1[1] = v10;
    if (v6 != a2 + 8)
    {
      v22 = a2 - v6 + 8;
      v23 = (v6 - 16);
      do
      {
        v24 = *v23;
        *v23 = 0;
        v25 = *v8;
        *v8 = v24;
        if (v25)
        {
          (*(*v25 + 16))(v25);
        }

        --v8;
        --v23;
        v22 += 8;
      }

      while (v22);
    }

    v26 = *a3;
    *a3 = 0;
    v27 = *v4;
    *v4 = v26;
    if (v27)
    {
      (*(*v27 + 16))(v27);
    }
  }

  return v4;
}

uint64_t sub_2992ABF28(void *a1, uint64_t **a2, unint64_t a3)
{
  if (a3 > (a1[7] - a1[6]) >> 3)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = *a2;
  if (*a2 == v4)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v11 = *v5;
    if (!v11 || (v9 = sub_29927363C(a1 + 1, &v11)) == 0 || v9[3] >= v8 + a3)
    {
      v8 += sub_2992ABB04(a1, v5, v8 + a3);
    }

    ++v5;
  }

  while (v5 != v4);
  return v8;
}

void sub_2992ABFE4(uint64_t a1)
{
  v31 = 0uLL;
  v32 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v2 = (a1 + 48);
  if (v3 != v4)
  {
    do
    {
      v5 = *(*v3 + 8);
      v6 = v5 == 0;
      if (v5 <= 0)
      {
        v7 = &v25;
      }

      else
      {
        v7 = &v28;
      }

      if (v6)
      {
        v8 = &v31;
      }

      else
      {
        v8 = v7;
      }

      sub_2992AB8D4(v8, v3++);
    }

    while (v3 != v4);
    v3 = *v2;
  }

  if (v3)
  {
    sub_29921ECBC(v2);
    operator delete(*v2);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  *(a1 + 48) = v31;
  *(a1 + 64) = v32;
  v32 = 0;
  v31 = 0uLL;
  v9 = v28;
  v10 = v29;
  v11 = (v29 - v28) >> 3;
  if (v11 < 1)
  {
    v17 = 0;
    v13 = 0;
  }

  else
  {
    v12 = MEMORY[0x29EDC9418];
    v13 = (v29 - v28) >> 3;
    while (1)
    {
      v14 = operator new(8 * v13, v12);
      if (v14)
      {
        break;
      }

      v15 = v13 >> 1;
      v16 = v13 > 1;
      v13 >>= 1;
      if (!v16)
      {
        v17 = 0;
        v13 = v15;
        goto LABEL_19;
      }
    }

    v17 = v14;
  }

LABEL_19:
  sub_2992AF924(v9, v10, v11, v17, v13);
  if (v17)
  {
    operator delete(v17);
  }

  v18 = v28;
  v19 = v29;
  while (v18 != v19)
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 56) - v20;
    if (*(*v18 + 8) - 1 >= (v21 >> 3))
    {
      v22 = v21 >> 3;
    }

    else
    {
      v22 = *(*v18 + 8) - 1;
    }

    sub_2992ABC30(v2, (v20 + 8 * v22), v18++);
  }

  v23 = v25;
  v24 = v26;
  while (v23 != v24)
  {
    sub_2992AB8D4(v2, v23++);
  }

  sub_2992ABA78(a1);
  v33 = &v25;
  sub_29921EC68(&v33);
  v25 = &v28;
  sub_29921EC68(&v25);
  v28 = &v31;
  sub_29921EC68(&v28);
}

void sub_2992AC1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void ***a18)
{
  a18 = &a9;
  sub_29921EC68(&a18);
  a9 = &a12;
  sub_29921EC68(&a9);
  a12 = &a15;
  sub_29921EC68(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992AC230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = 0;
  *a3 = v7;
  v13 = v7;
  sub_2992AE1BC((a1 + 8), &v13);
  result = sub_2992AD2F4((*(a1 + 48) + 8 * a2 + 8), *(a1 + 56), (*(a1 + 48) + 8 * a2));
  v10 = v9;
  v11 = *(a1 + 56);
  while (v11 != v10)
  {
    v12 = *--v11;
    result = v12;
    *v11 = 0;
    if (v12)
    {
      result = (*(*result + 16))(result);
    }
  }

  *(a1 + 56) = v10;
  return result;
}

void sub_2992AC2E0(_Unwind_Exception *exception_object)
{
  *v2 = 0;
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992AC350(_Unwind_Exception *exception_object)
{
  v2 = v1;
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_2992AC390(uint64_t **a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 126 - 2 * __clz((v5 - v4) >> 3);
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_2992AD380(v4, v5, &v13, v7, 1);
  v9 = *a2;
  v8 = a2[1];
  while (v9 != v8)
  {
    sub_2992AC230(a1, *v9, &v12);
    v10 = v12;
    v12 = 0;
    if (v10)
    {
      (*(*v10 + 16))(v10);
    }

    ++v9;
  }

  return sub_2992ABA78(a1);
}

uint64_t **sub_2992AC44C(uint64_t **result, unint64_t a2)
{
  v4 = result[7] - result[6];
  if (v4)
  {
    v9[5] = v2;
    v10 = v3;
    v6 = result;
    v7 = v4 >> 3;
    while (v7 > a2)
    {
      sub_2992AC230(v6, --v7, v9);
      v8 = v9[0];
      v9[0] = 0;
      if (v8)
      {
        (*(*v8 + 16))(v8);
      }
    }

    return sub_2992ABA78(v6);
  }

  return result;
}

uint64_t **sub_2992AC4F8(uint64_t **result, uint64_t *a2, unint64_t a3)
{
  if (a3 < result[7] - result[6])
  {
    v11[5] = v3;
    v11[6] = v4;
    v7 = result;
    v11[0] = *a2;
    result = sub_29927363C(result + 1, v11);
    if (!result)
    {
      v8 = v7[6];
      v11[0] = v8[a3];
      sub_2992AE1BC(v7 + 1, v11);
      v9 = v8[a3];
      v8[a3] = *a2;
      *a2 = v9;
      v10 = v8[a3];
      v11[0] = &v10;
      result = sub_2992AE238(v7 + 1, &v10);
      result[3] = a3;
    }
  }

  return result;
}

void *sub_2992AC5B4(void *result, unint64_t a2, unint64_t a3)
{
  v3 = (result[7] - result[6]) >> 3;
  if (v3 > a2 && a2 != a3 && v3 > a3)
  {
    v7 = result;
    sub_2992AC230(result, a2, &v8);
    sub_2992ABB04(v7, &v8, a3);
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

void sub_2992AC648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992AC684(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v35[20] = *MEMORY[0x29EDCA608];
  v9 = sub_2993652F8(a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = a3;
    _os_log_debug_impl(&dword_29918C000, v9, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v10 = *(a1 + 48);
  if (*(a1 + 56) != v10)
  {
    v11 = 0;
    v12 = *(MEMORY[0x29EDC9528] + 64);
    v22 = v12;
    v23 = *MEMORY[0x29EDC9528];
    v21 = *(MEMORY[0x29EDC9528] + 72);
    while (1)
    {
      v13 = *(v10 + 8 * v11);
      if (v11 >= 0x10 && !a4)
      {
        goto LABEL_28;
      }

      sub_2991D7954(buf);
      v14 = sub_2991C0E9C(&v27, "#", 1);
      MEMORY[0x29C29BD60](v14, ++v11);
      if ((v34 & 0x10) != 0)
      {
        break;
      }

      if ((v34 & 8) != 0)
      {
        locale = v29[1].__locale_;
        v16 = v29[3].__locale_;
LABEL_14:
        v15 = v16 - locale;
        if ((v16 - locale) >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_2991A11B0();
        }

        if (v15 >= 0x17)
        {
          operator new();
        }

        v25 = v16 - locale;
        if (v15)
        {
          memmove(&__dst, locale, v15);
        }

        goto LABEL_20;
      }

      v15 = 0;
      v25 = 0;
LABEL_20:
      *(&__dst + v15) = 0;
      if (v25 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      (*(*v13 + 528))(v13, a2, p_dst, a5);
      if (v25 < 0)
      {
        operator delete(__dst);
      }

      *buf = v23;
      *&buf[*(v23 - 24)] = v22;
      v27 = v21;
      v28 = MEMORY[0x29EDC9570] + 16;
      if (v32 < 0)
      {
        operator delete(__p);
      }

      v28 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v29);
      std::iostream::~basic_iostream();
      MEMORY[0x29C29BF00](v35);
      v10 = *(a1 + 48);
      if (v11 >= (*(a1 + 56) - v10) >> 3)
      {
        goto LABEL_28;
      }
    }

    v16 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v16 = v30;
    }

    locale = v29[4].__locale_;
    goto LABEL_14;
  }

LABEL_28:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_2992ACA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_2991D7BF8(&a15, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992ACA88(uint64_t **a1, uint64_t *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = (*(**a1 + 96))(*a1);
  v5 = (*(**a2 + 96))();
  if ((atomic_load_explicit(&qword_2A1460898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460898))
  {
    qword_2A14608A0 = &unk_2A1F6B030;
    qword_2A14608B8 = &qword_2A14608A0;
    qword_2A14608C0[0] = &unk_2A1F6B0C0;
    qword_2A14608D8 = qword_2A14608C0;
    qword_2A14608E0[0] = &unk_2A1F6B140;
    qword_2A14608F8 = qword_2A14608E0;
    __cxa_atexit(sub_2992ACF04, &qword_2A14608A0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460898);
  }

  v6 = &qword_2A14608A0;
  v7 = &qword_2A14608B8;
  v8 = 96;
  do
  {
    v9 = *v7;
    if (*v7)
    {
      if (v7 - 3 == v9)
      {
        v29 = v28;
        (*(*v9 + 24))(v9, v28);
        v9 = v29;
      }

      else
      {
        v9 = (*(*v9 + 16))(v9);
        v29 = v9;
      }
    }

    else
    {
      v29 = 0;
    }

    if (sub_2992AE10C(v9, v4, v5))
    {
      sub_2992B047C(v28);
      goto LABEL_14;
    }

    v10 = sub_2992AE10C(v29, v5, v4);
    sub_2992B047C(v28);
    if (v10)
    {
      goto LABEL_16;
    }

    v6 += 4;
    v7 += 4;
    v8 -= 32;
  }

  while (v8);
  v11 = *a1;
  v12 = *a2;
  v26[0] = &unk_2A1F6B1C0;
  v27 = v26;
  v13 = (*(*v11 + 408))(v11);
  v14 = (*(*v12 + 408))(v12);
  if (sub_2992AE164(v27, v13, v14))
  {
    sub_2992B0904(v26);
LABEL_14:
    result = 1;
    goto LABEL_17;
  }

  v16 = sub_2992AE164(v27, v14, v13);
  sub_2992B0904(v26);
  if (v16)
  {
LABEL_16:
    result = 0;
  }

  else
  {
    v18 = (*(**a1 + 112))();
    v19 = (*(**a2 + 112))();
    v20 = **a1;
    if (v18 == v19)
    {
      v21 = (*(v20 + 24))();
      Length = CFStringGetLength(v21);
      v23 = (*(**a2 + 24))();
      v24 = Length < CFStringGetLength(v23);
    }

    else
    {
      v25 = (*(v20 + 112))();
      v24 = v25 < (*(**a2 + 112))();
    }

    result = v24;
  }

LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992ACED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992B0904(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992ACF04(uint64_t a1)
{
  for (i = 64; i != -32; i -= 32)
  {
    sub_2992B047C(a1 + i);
  }

  return a1;
}

BOOL sub_2992ACF40(void *a1, uint64_t *a2)
{
  v4 = (*(**a1 + 408))(*a1);
  v5 = (*(**a2 + 408))();
  if (v4 == 1 && v5 != 1)
  {
    return 0;
  }

  if (v4 != 1 && v5 == 1)
  {
    return 1;
  }

  v8 = *a1;
  v9 = (*(*v8 + 112))(v8);
  v10 = (*(*v8 + 392))(v8);
  if (v10 == -1.79769313e308)
  {
    v11 = -100.0;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_299237120();
  v13 = (v12[1] * v9 - *(v12 + 1) * v11);
  v14 = *a2;
  v15 = (*(*v14 + 112))(v14);
  v16 = (*(*v14 + 392))(v14);
  if (v16 == -1.79769313e308)
  {
    v17 = -100.0;
  }

  else
  {
    v17 = v16;
  }

  v18 = sub_299237120();
  return v13 < (v18[1] * v15 - *(v18 + 1) * v17);
}

BOOL sub_2992AD148(void **a1, void **a2)
{
  v4 = sub_2992AD1F4(*a1);
  v5 = sub_2992AD1F4(*a2);
  if (v4 != v5)
  {
    return v4 < v5;
  }

  v6 = (*(**a1 + 112))();
  return v6 < (*(**a2 + 112))();
}

BOOL sub_2992AD1F4(void *a1)
{
  if ((*(*a1 + 96))(a1))
  {
    return 0;
  }

  v5 = a1[4];
  v4 = a1 + 4;
  v3 = v5;
  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v3 = v4;
  }

  if (v6 < 0)
  {
    v6 = v4[1];
  }

  return *(v3 + v6 - 1) - 12593 < 0x33;
}

uint64_t *sub_2992AD2F4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 16))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

unint64_t sub_2992AD380(unint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
  v8 = vdupq_n_s64(1uLL);
  v9 = xmmword_2993FCC00;
  v10 = vdupq_n_s64(2uLL);
  v190 = v8;
  v189 = v10;
  while (2)
  {
    v11 = v7;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v7 = v11;
          v12 = a2 - v11;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v130 = v11[1];
                v131 = *(a2 - 1);
                if (v130 <= v131)
                {
                  v132 = *(a2 - 1);
                }

                else
                {
                  v132 = v11[1];
                }

                if (v130 >= v131)
                {
                  v130 = *(a2 - 1);
                }

                *(a2 - 1) = v130;
                v11[1] = v132;
                v133 = *(a2 - 1);
                if (v133 <= *v11)
                {
                  v134 = *v11;
                }

                else
                {
                  v134 = *(a2 - 1);
                }

                if (v133 >= *v11)
                {
                  v133 = *v11;
                }

                *(a2 - 1) = v133;
                v136 = *v11;
                v135 = v11[1];
                if (v134 <= v135)
                {
                  v136 = v11[1];
                }

                if (v134 < v135)
                {
                  v135 = v134;
                }

                *v11 = v136;
                v11[1] = v135;
                return result;
              case 4:
                v138 = v11[1];
                v137 = v11[2];
                if (*v11 <= v137)
                {
                  v139 = v11[2];
                }

                else
                {
                  v139 = *v11;
                }

                if (*v11 < v137)
                {
                  v137 = *v11;
                }

                v11[2] = v137;
                *v11 = v139;
                v140 = *(a2 - 1);
                if (v138 <= v140)
                {
                  v141 = *(a2 - 1);
                }

                else
                {
                  v141 = v138;
                }

                if (v138 < v140)
                {
                  v140 = v138;
                }

                *(a2 - 1) = v140;
                v142 = *v11;
                if (*v11 <= v141)
                {
                  v143 = v141;
                }

                else
                {
                  v143 = *v11;
                }

                if (*v11 >= v141)
                {
                  v142 = v141;
                }

                *v11 = v143;
                v11[1] = v142;
                v144 = v11[2];
                v145 = *(a2 - 1);
                if (v144 <= v145)
                {
                  v146 = *(a2 - 1);
                }

                else
                {
                  v146 = v11[2];
                }

                if (v144 >= v145)
                {
                  v144 = *(a2 - 1);
                }

                *(a2 - 1) = v144;
                v147 = v11[1];
                if (v147 <= v146)
                {
                  v148 = v146;
                }

                else
                {
                  v148 = v11[1];
                }

                if (v147 >= v146)
                {
                  v147 = v146;
                }

                v11[1] = v148;
                v11[2] = v147;
                return result;
              case 5:
                v108 = *v11;
                v109 = v11[1];
                if (*v11 <= v109)
                {
                  v110 = v11[1];
                }

                else
                {
                  v110 = *v11;
                }

                if (*v11 >= v109)
                {
                  v108 = v11[1];
                }

                *v11 = v110;
                v11[1] = v108;
                v111 = v11[3];
                v112 = *(a2 - 1);
                if (v111 <= v112)
                {
                  v113 = *(a2 - 1);
                }

                else
                {
                  v113 = v11[3];
                }

                if (v111 >= v112)
                {
                  v111 = *(a2 - 1);
                }

                *(a2 - 1) = v111;
                v11[3] = v113;
                v114 = *(a2 - 1);
                v115 = v11[2];
                if (v114 <= v115)
                {
                  v116 = v11[2];
                }

                else
                {
                  v116 = *(a2 - 1);
                }

                if (v114 >= v115)
                {
                  v114 = v11[2];
                }

                *(a2 - 1) = v114;
                v118 = v11[2];
                v117 = v11[3];
                v119 = v11[1];
                if (v116 <= v117)
                {
                  v118 = v11[3];
                }

                if (v116 < v117)
                {
                  v117 = v116;
                }

                v11[2] = v118;
                v11[3] = v117;
                v120 = *(a2 - 1);
                if (v119 <= v120)
                {
                  v121 = *(a2 - 1);
                }

                else
                {
                  v121 = v119;
                }

                if (v119 < v120)
                {
                  v120 = v119;
                }

                *(a2 - 1) = v120;
                v122 = *v11;
                v124 = v11[2];
                v123 = v11[3];
                if (v123 <= *v11)
                {
                  v125 = *v11;
                }

                else
                {
                  v125 = v11[3];
                }

                if (v123 >= *v11)
                {
                  v123 = *v11;
                }

                if (v125 <= v124)
                {
                  v122 = v11[2];
                }

                if (v125 < v124)
                {
                  v124 = v125;
                }

                if (v123 <= v121)
                {
                  v126 = v121;
                }

                else
                {
                  v126 = v123;
                }

                if (v123 >= v121)
                {
                  v123 = v121;
                }

                if (v126 <= v124)
                {
                  v121 = v124;
                }

                *v11 = v122;
                v11[1] = v121;
                if (v126 >= v124)
                {
                  v127 = v124;
                }

                else
                {
                  v127 = v126;
                }

                v11[2] = v127;
                v11[3] = v123;
                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              v128 = *(a2 - 1);
              v129 = *v11;
              if (v128 > *v11)
              {
                *v11 = v128;
                *(a2 - 1) = v129;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v149 = v11 + 1;
            v151 = v11 == a2 || v149 == a2;
            if (a5)
            {
              if (!v151)
              {
                v152 = 8;
                v153 = v11;
                do
                {
                  v155 = *v153;
                  v154 = v153[1];
                  v153 = v149;
                  if (v154 > v155)
                  {
                    v156 = v152;
                    while (1)
                    {
                      *(v11 + v156) = v155;
                      v157 = v156 - 8;
                      if (v156 == 8)
                      {
                        break;
                      }

                      v155 = *(v11 + v156 - 16);
                      v156 -= 8;
                      if (v154 <= v155)
                      {
                        v158 = (v11 + v157);
                        goto LABEL_285;
                      }
                    }

                    v158 = v11;
LABEL_285:
                    *v158 = v154;
                  }

                  v149 = v153 + 1;
                  v152 += 8;
                }

                while (v153 + 1 != a2);
              }
            }

            else if (!v151)
            {
              do
              {
                v187 = *v7;
                v186 = v7[1];
                v7 = v149;
                if (v186 > v187)
                {
                  do
                  {
                    *v149 = v187;
                    v187 = *(v149 - 2);
                    --v149;
                  }

                  while (v186 > v187);
                  *v149 = v186;
                }

                v149 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v159 = (v12 - 2) >> 1;
              v160 = v159;
              do
              {
                v161 = v160;
                if (v159 >= v160)
                {
                  v162 = (2 * v160) | 1;
                  v163 = &v11[v162];
                  if (2 * v161 + 2 >= v12)
                  {
                    v164 = *v163;
                  }

                  else
                  {
                    v164 = v163[1];
                    v165 = *v163 > v164;
                    if (*v163 < v164)
                    {
                      v164 = *v163;
                    }

                    if (v165)
                    {
                      ++v163;
                      v162 = 2 * v161 + 2;
                    }
                  }

                  v166 = &v11[v161];
                  v167 = *v166;
                  if (v164 <= *v166)
                  {
                    do
                    {
                      *v166 = v164;
                      v166 = v163;
                      if (v159 < v162)
                      {
                        break;
                      }

                      v168 = (2 * v162) | 1;
                      v163 = &v11[v168];
                      v162 = 2 * v162 + 2;
                      if (v162 >= v12)
                      {
                        v164 = *v163;
                        v162 = v168;
                      }

                      else
                      {
                        v164 = *v163;
                        result = v163[1];
                        if (*v163 >= result)
                        {
                          v164 = v163[1];
                        }

                        if (*v163 <= result)
                        {
                          v162 = v168;
                        }

                        else
                        {
                          ++v163;
                        }
                      }
                    }

                    while (v164 <= v167);
                    *v166 = v167;
                  }
                }

                v160 = v161 - 1;
              }

              while (v161);
              do
              {
                v169 = 0;
                v170 = *v11;
                v171 = v11;
                do
                {
                  v172 = &v171[v169];
                  v173 = v172 + 1;
                  v174 = (2 * v169) | 1;
                  v169 = 2 * v169 + 2;
                  if (v169 >= v12)
                  {
                    v175 = *v173;
                    v169 = v174;
                  }

                  else
                  {
                    v177 = v172[2];
                    v176 = v172 + 2;
                    v175 = v177;
                    v178 = *(v176 - 1);
                    v179 = v178 > v177;
                    if (v178 < v177)
                    {
                      v175 = *(v176 - 1);
                    }

                    if (v179)
                    {
                      v173 = v176;
                    }

                    else
                    {
                      v169 = v174;
                    }
                  }

                  *v171 = v175;
                  v171 = v173;
                }

                while (v169 <= ((v12 - 2) >> 1));
                if (v173 == --a2)
                {
                  *v173 = v170;
                }

                else
                {
                  *v173 = *a2;
                  *a2 = v170;
                  v180 = (v173 - v11 + 8) >> 3;
                  v21 = v180 < 2;
                  v181 = v180 - 2;
                  if (!v21)
                  {
                    v182 = v181 >> 1;
                    v183 = &v11[v182];
                    v184 = *v183;
                    v185 = *v173;
                    if (*v183 > *v173)
                    {
                      do
                      {
                        *v173 = v184;
                        v173 = v183;
                        if (!v182)
                        {
                          break;
                        }

                        v182 = (v182 - 1) >> 1;
                        v183 = &v11[v182];
                        v184 = *v183;
                      }

                      while (*v183 > v185);
                      *v173 = v185;
                    }
                  }
                }

                v21 = v12-- <= 2;
              }

              while (!v21);
            }

            return result;
          }

          v13 = v12 >> 1;
          v14 = *(a2 - 1);
          if (v12 < 0x81)
          {
            v48 = *v11;
            if (*v11 <= v14)
            {
              v49 = *(a2 - 1);
            }

            else
            {
              v49 = *v11;
            }

            if (*v11 >= v14)
            {
              v48 = *(a2 - 1);
            }

            *(a2 - 1) = v48;
            *v11 = v49;
            v50 = *(a2 - 1);
            v51 = v11[v13];
            if (v50 <= v51)
            {
              v52 = v11[v13];
            }

            else
            {
              v52 = *(a2 - 1);
            }

            if (v50 >= v51)
            {
              v50 = v11[v13];
            }

            *(a2 - 1) = v50;
            v53 = *v11;
            v54 = v52 > *v11;
            if (v52 > *v11)
            {
              v53 = v11[v13];
            }

            v11[v13] = v53;
            v47 = *v11;
            if (!v54)
            {
              v47 = v52;
            }

            *v11 = v47;
          }

          else
          {
            v15 = &v11[v13];
            v16 = *v15;
            if (*v15 <= v14)
            {
              v17 = *(a2 - 1);
            }

            else
            {
              v17 = *v15;
            }

            if (*v15 >= v14)
            {
              v16 = *(a2 - 1);
            }

            *(a2 - 1) = v16;
            *v15 = v17;
            v18 = *(a2 - 1);
            if (v18 <= *v11)
            {
              v19 = *v11;
            }

            else
            {
              v19 = *(a2 - 1);
            }

            if (v18 >= *v11)
            {
              v18 = *v11;
            }

            *(a2 - 1) = v18;
            v20 = *v15;
            v21 = v19 > *v15;
            if (v19 > *v15)
            {
              v20 = *v11;
            }

            *v11 = v20;
            v23 = *(v15 - 1);
            v22 = *v15;
            if (!v21)
            {
              v22 = v19;
            }

            *v15 = v22;
            v24 = *(a2 - 2);
            if (v23 <= v24)
            {
              v25 = *(a2 - 2);
            }

            else
            {
              v25 = v23;
            }

            if (v23 < v24)
            {
              v24 = v23;
            }

            *(a2 - 2) = v24;
            *(v15 - 1) = v25;
            v26 = *(a2 - 2);
            v27 = v11[1];
            if (v26 <= v27)
            {
              v28 = v11[1];
            }

            else
            {
              v28 = *(a2 - 2);
            }

            if (v26 >= v27)
            {
              v26 = v11[1];
            }

            *(a2 - 2) = v26;
            v29 = *(v15 - 1);
            v30 = v28 > v29;
            if (v28 > v29)
            {
              v29 = v11[1];
            }

            v11[1] = v29;
            v31 = *(v15 - 1);
            if (!v30)
            {
              v31 = v28;
            }

            *(v15 - 1) = v31;
            v32 = v15[1];
            v33 = *(a2 - 3);
            if (v32 <= v33)
            {
              v34 = *(a2 - 3);
            }

            else
            {
              v34 = v15[1];
            }

            if (v32 >= v33)
            {
              v32 = *(a2 - 3);
            }

            *(a2 - 3) = v32;
            v15[1] = v34;
            v35 = *(a2 - 3);
            v36 = v11[2];
            if (v35 <= v36)
            {
              v37 = v11[2];
            }

            else
            {
              v37 = *(a2 - 3);
            }

            if (v35 >= v36)
            {
              v35 = v11[2];
            }

            *(a2 - 3) = v35;
            v38 = v15[1];
            v39 = v37 > v38;
            if (v37 > v38)
            {
              v38 = v11[2];
            }

            v11[2] = v38;
            v41 = *v15;
            v40 = v15[1];
            if (!v39)
            {
              v40 = v37;
            }

            v42 = *(v15 - 1);
            if (v41 <= v40)
            {
              v43 = v40;
            }

            else
            {
              v43 = *v15;
            }

            if (v41 < v40)
            {
              v40 = *v15;
            }

            if (v40 <= v42)
            {
              v44 = *(v15 - 1);
            }

            else
            {
              v44 = v40;
            }

            if (v40 >= v42)
            {
              v40 = *(v15 - 1);
            }

            v15[1] = v40;
            if (v42 <= v43)
            {
              v45 = v43;
            }

            else
            {
              v45 = v42;
            }

            if (v42 > v43)
            {
              v44 = v43;
            }

            *(v15 - 1) = v45;
            *v15 = v44;
            v46 = *v11;
            *v11 = v44;
            *v15 = v46;
            v47 = *v11;
          }

          --a4;
          if ((a5 & 1) == 0 && *(v11 - 1) <= v47)
          {
            if (v47 <= *(a2 - 1))
            {
              v100 = v11 + 1;
              do
              {
                v11 = v100;
                if (v100 >= a2)
                {
                  break;
                }

                ++v100;
              }

              while (v47 <= *v11);
            }

            else
            {
              do
              {
                v99 = v11[1];
                ++v11;
              }

              while (v47 <= v99);
            }

            v101 = a2;
            if (v11 < a2)
            {
              v101 = a2;
              do
              {
                v102 = *--v101;
              }

              while (v47 > v102);
            }

            if (v11 < v101)
            {
              v103 = *v11;
              v104 = *v101;
              do
              {
                *v11 = v104;
                *v101 = v103;
                do
                {
                  v105 = v11[1];
                  ++v11;
                  v103 = v105;
                }

                while (v47 <= v105);
                do
                {
                  v106 = *--v101;
                  v104 = v106;
                }

                while (v47 > v106);
              }

              while (v11 < v101);
            }

            v107 = v11 - 1;
            if (v11 - 1 != v7)
            {
              *v7 = *v107;
            }

            a5 = 0;
            *v107 = v47;
            continue;
          }

          break;
        }

        if (v47 <= *(a2 - 1))
        {
          v57 = v11 + 1;
          do
          {
            v55 = v57;
            if (v57 >= a2)
            {
              break;
            }

            ++v57;
          }

          while (v47 <= *v55);
        }

        else
        {
          v55 = v11;
          do
          {
            v56 = v55[1];
            ++v55;
          }

          while (v47 <= v56);
        }

        v58 = a2;
        if (v55 < a2)
        {
          v58 = a2;
          do
          {
            v59 = *--v58;
          }

          while (v47 > v59);
        }

        v60 = v55;
        if (v55 < v58)
        {
          v61 = *v55;
          *v55 = *v58;
          v60 = v55 + 1;
          *v58 = v61;
        }

        v62 = v58 - 1;
        v63 = (v58 - 1) - v60;
        if (v63 < 1009)
        {
          v64 = 0;
          v77 = v63 >> 3;
          v75 = 1;
LABEL_124:
          v81 = v77 + 1;
          v78 = (v77 + 1) / 2;
          v79 = v81 - v81 / 2;
          goto LABEL_125;
        }

        v64 = 0;
        v65 = 0;
        v66 = vdupq_n_s64(v47);
        do
        {
          if (v65)
          {
            if (v64)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v67 = 0uLL;
            v68 = v9;
            do
            {
              v67 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(v66, *(v60 + v65)), v8), v68), v67);
              v68 = vaddq_s64(v68, v10);
              v65 += 16;
            }

            while (v65 != 512);
            v65 = vorr_s8(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
            if (v64)
            {
LABEL_104:
              if (!v65)
              {
                goto LABEL_115;
              }

              goto LABEL_112;
            }
          }

          v69 = 0uLL;
          v70 = 0x1FFFFFFFFFFFFFFFLL;
          v71 = v9;
          do
          {
            v69 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(vextq_s8(*&v62[v70], *&v62[v70], 8uLL), v66), vdupq_n_s64(1uLL)), v71), v69);
            v71 = vaddq_s64(v71, vdupq_n_s64(2uLL));
            v70 -= 2;
          }

          while (v70 != -65);
          v64 = vorr_s8(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
          if (!v65)
          {
            goto LABEL_115;
          }

LABEL_112:
          if (v64)
          {
            do
            {
              v72 = __clz(__rbit64(v65));
              v65 &= v65 - 1;
              v73 = &v62[-__clz(__rbit64(v64))];
              v74 = v60[v72];
              v60[v72] = *v73;
              *v73 = v74;
              v64 &= v64 - 1;
            }

            while (v64 && v65);
          }

LABEL_115:
          v60 += 64 * (v65 == 0);
          v75 = v64 == 0;
          if (v64)
          {
            v76 = 0;
          }

          else
          {
            v76 = -512;
          }

          v62 = (v62 + v76);
        }

        while (v62 - v60 > 1008);
        v77 = v62 - v60;
        if (!(v64 | v65))
        {
          goto LABEL_124;
        }

        v78 = v77 - 63;
        v79 = 64;
        v80 = 64;
        if (v65)
        {
          if (v64)
          {
            goto LABEL_134;
          }

LABEL_131:
          if (v78 >= 1)
          {
            v83 = 0;
            v64 = 0;
            v84 = v62;
            do
            {
              v85 = *v84--;
              v64 |= (v85 > v47) << v83++;
            }

            while (v78 != v83);
            goto LABEL_134;
          }

          if (v65)
          {
            v93 = 0;
          }

          else
          {
            v93 = v80;
          }

          v11 = &v60[v93];
LABEL_151:
          if (v65)
          {
            v62 -= v78;
            goto LABEL_153;
          }

          goto LABEL_157;
        }

LABEL_125:
        if (v78 < 1)
        {
          v65 = 0;
        }

        else
        {
          v82 = 0;
          v65 = 0;
          do
          {
            v65 |= (v60[v82] <= v47) << v82;
            ++v82;
          }

          while (v78 != v82);
        }

        v80 = v78;
        v78 = v79;
        if (v75)
        {
          goto LABEL_131;
        }

LABEL_134:
        if (v65 && v64)
        {
          do
          {
            v86 = __clz(__rbit64(v65));
            v65 &= v65 - 1;
            v87 = &v62[-__clz(__rbit64(v64))];
            v88 = v60[v86];
            v60[v86] = *v87;
            *v87 = v88;
            v64 &= v64 - 1;
          }

          while (v64 && v65);
        }

        if (v65)
        {
          v89 = 0;
        }

        else
        {
          v89 = v80;
        }

        v11 = &v60[v89];
        if (!v64)
        {
          goto LABEL_151;
        }

        if (v65)
        {
          do
          {
LABEL_153:
            v94 = __clz(v65) ^ 0x3F;
            v95 = &v11[v94];
            if (v62 != v95)
            {
              v96 = *v95;
              *v95 = *v62;
              *v62 = v96;
            }

            v65 &= ~(-1 << v94);
            --v62;
          }

          while (v65);
          v11 = v62 + 1;
        }

        else
        {
          do
          {
            v90 = __clz(v64) ^ 0x3F;
            v91 = &v62[-v90];
            if (v11 != v91)
            {
              v92 = *v91;
              *v91 = *v11;
              *v11 = v92;
            }

            v64 &= ~(-1 << v90);
            ++v11;
          }

          while (v64);
        }

LABEL_157:
        v97 = v11 - 1;
        if (v11 - 1 != v7)
        {
          *v7 = *v97;
        }

        *v97 = v47;
        if (v55 < v58)
        {
LABEL_162:
          result = sub_2992AD380(v7, v11 - 1, a3, a4, a5 & 1);
          v10 = v189;
          v9 = xmmword_2993FCC00;
          v8 = v190;
          a5 = 0;
          continue;
        }

        break;
      }

      v98 = sub_2992ADE78(v7, v11 - 1);
      result = sub_2992ADE78(v11, a2);
      if (!result)
      {
        v9 = xmmword_2993FCC00;
        v8 = v190;
        v10 = v189;
        if (!v98)
        {
          goto LABEL_162;
        }

        continue;
      }

      break;
    }

    a2 = v11 - 1;
    v9 = xmmword_2993FCC00;
    v8 = v190;
    v10 = v189;
    if (!v98)
    {
      continue;
    }

    return result;
  }
}

BOOL sub_2992ADE78(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

uint64_t sub_2992AE10C(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t sub_2992AE164(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t *sub_2992AE1BC(void *a1, void *a2)
{
  result = sub_29927363C(a1, a2);
  if (result)
  {
    sub_2992AE1F4(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2992AE1F4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2992747D0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t **sub_2992AE238(void *a1, void *a2)
{
  v4 = (*(**a2 + 144))();
  v5 = v4;
  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v6 <= v4)
    {
      v9 = v4 % v6;
    }
  }

  else
  {
    v9 = (v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (((*(*v11[2] + 152))(v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2992AE6B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x29EDC9418];
    v8 = (a2 - a1) >> 3;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  sub_2992AE7AC(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_2992AE794(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992AE7AC(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v8 = result;
  if (a4 == 2)
  {
    v9 = *(a3 + 24);
    if (v9)
    {
      v10 = a2 - 1;
      result = (*(*v9 + 48))(v9, a2 - 1, v8);
      if (result)
      {
        v11 = *v8;
        *v8 = *v10;
        *v10 = v11;
      }

      return result;
    }

    goto LABEL_59;
  }

  v12 = a4;
  if (a4 <= 0)
  {
    if (result == a2)
    {
      return result;
    }

    v18 = (result + 8);
    if ((result + 8) == a2)
    {
      return result;
    }

    v19 = 0;
    v20 = result;
    while (1)
    {
      v21 = *(a3 + 24);
      if (!v21)
      {
        break;
      }

      v22 = v18;
      result = (*(*v21 + 48))(v21, v18, v20);
      if (result)
      {
        v23 = *v22;
        *v22 = 0;
        v42 = v23;
        v24 = v19;
        while (1)
        {
          v25 = (v8 + v24);
          v27 = *(v8 + v24);
          v26 = *(v8 + v24 + 8);
          *v25 = 0;
          v25[1] = v27;
          if (v26)
          {
            (*(*v26 + 16))(v26);
          }

          if (!v24)
          {
            break;
          }

          v28 = *(a3 + 24);
          if (!v28)
          {
            sub_2991A2240();
          }

          v29 = (*(*v28 + 48))(v28, &v42, v8 + v24 - 8);
          v24 -= 8;
          if ((v29 & 1) == 0)
          {
            v30 = (v8 + v24 + 8);
            goto LABEL_25;
          }
        }

        v30 = v8;
LABEL_25:
        v31 = v42;
        v42 = 0;
        v32 = *v30;
        *v30 = v31;
        if (v32)
        {
          (*(*v32 + 16))(v32);
        }

        result = v42;
        v42 = 0;
        if (result)
        {
          result = (*(*result + 16))(result);
        }
      }

      v18 = v22 + 1;
      v19 += 8;
      v20 = v22;
      if (v22 + 1 == a2)
      {
        return result;
      }
    }

LABEL_59:
    sub_2991A2240();
  }

  v14 = a5;
  v15 = a4 >> 1;
  v16 = (result + 8 * (a4 >> 1));
  if (a4 <= a6)
  {
    sub_2992AED10(result, (result + 8 * (a4 >> 1)), a3, a4 >> 1, a5);
    v33 = &v14[v15];
    result = sub_2992AED10(&v8[v12 >> 1], a2, a3, v12 - v15, v33);
    v34 = &v14[v12];
    v35 = v33;
    v36 = v14;
    while (v35 != v34)
    {
      v37 = *(a3 + 24);
      if (!v37)
      {
        sub_2991A2240();
      }

      if ((*(*v37 + 48))(v37, v35, v36))
      {
        v38 = *v35;
        *v35 = 0;
        result = *v8;
        *v8 = v38;
        if (result)
        {
          result = (*(*result + 16))(result);
        }

        ++v35;
      }

      else
      {
        v39 = *v36;
        *v36 = 0;
        result = *v8;
        *v8 = v39;
        if (result)
        {
          result = (*(*result + 16))(result);
        }

        ++v36;
      }

      ++v8;
      if (v36 == v33)
      {
        while (v35 != v34)
        {
          v41 = *v35;
          *v35 = 0;
          result = *v8;
          *v8 = v41;
          if (result)
          {
            result = (*(*result + 16))(result);
          }

          ++v35;
          ++v8;
        }

        goto LABEL_52;
      }
    }

    while (v36 != v33)
    {
      v40 = *v36;
      *v36 = 0;
      result = *v8;
      *v8 = v40;
      if (result)
      {
        result = (*(*result + 16))(result);
      }

      ++v36;
      ++v8;
    }

LABEL_52:
    if (v14)
    {
      do
      {
        result = *v14;
        *v14 = 0;
        if (result)
        {
          result = (*(*result + 16))(result);
        }

        ++v14;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    sub_2992AE7AC(result, result + 8 * (a4 >> 1), a3, a4 >> 1, a5, a6);
    v17 = v12 - v15;
    sub_2992AE7AC(v16, a2, a3, v17, v14, a6);

    return sub_2992AF0F8(v8, v16, a2, a3, v15, v17, v14, a6);
  }

  return result;
}

uint64_t sub_2992AED10(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v11 = *(a3 + 24);
      if (!v11)
      {
        sub_2991A2240();
      }

      v12 = a2 - 1;
      result = (*(*v11 + 48))(v11, a2 - 1, v9);
      if (result)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9;
      }

      if (result)
      {
        v14 = v9;
      }

      else
      {
        v14 = v12;
      }

      v15 = *v13;
      *v13 = 0;
      *a5 = v15;
      v16 = *v14;
      *v14 = 0;
      a5[1] = v16;
    }

    else if (a4 == 1)
    {
      v10 = *result;
      *result = 0;
      *a5 = v10;
    }

    else if (a4 > 8)
    {
      v33 = (result + 8 * (a4 >> 1));
      sub_2992AE7AC(result, v33, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_2992AE7AC(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));
      v34 = 0;
      v35 = a5;
      v36 = &v9[a4 >> 1];
      while (v36 != a2)
      {
        v37 = *(a3 + 24);
        if (!v37)
        {
          sub_2991A2240();
        }

        result = (*(*v37 + 48))(v37, v36, v9);
        if (result)
        {
          v38 = *v36;
          *v36++ = 0;
        }

        else
        {
          v38 = *v9;
          *v9++ = 0;
        }

        ++v34;
        *v35++ = v38;
        if (v9 == v33)
        {
          while (v36 != a2)
          {
            v40 = *v36;
            *v36++ = 0;
            *v35++ = v40;
          }

          return result;
        }
      }

      while (v9 != v33)
      {
        v39 = *v9;
        *v9++ = 0;
        *v35++ = v39;
      }
    }

    else if (result != a2)
    {
      v17 = *result;
      *result = 0;
      v18 = (result + 8);
      *a5 = v17;
      if ((result + 8) != a2)
      {
        v19 = 0;
        v20 = 1;
        v21 = a5;
        do
        {
          v22 = *(a3 + 24);
          if (!v22)
          {
LABEL_47:
            sub_2991A2240();
          }

          v23 = v21;
          result = (*(*v22 + 48))(v22, v18, v21++);
          ++v20;
          if (result)
          {
            v24 = *v23;
            *v23 = 0;
            v23[1] = v24;
            v25 = a5;
            if (v23 != a5)
            {
              v26 = v19;
              while (1)
              {
                v27 = *(a3 + 24);
                if (!v27)
                {
                  goto LABEL_47;
                }

                v28 = (a5 + v26 - 8);
                if (!(*(*v27 + 48))(v27, v18, v28))
                {
                  break;
                }

                v29 = *v28;
                *v28 = 0;
                v30 = *(a5 + v26);
                *(a5 + v26) = v29;
                if (v30)
                {
                  (*(*v30 + 16))(v30);
                }

                v26 -= 8;
                if (!v26)
                {
                  v25 = a5;
                  goto LABEL_29;
                }
              }

              v25 = (a5 + v26);
            }

LABEL_29:
            v32 = *v18;
            *v18 = 0;
            result = *v25;
            *v25 = v32;
            if (result)
            {
              result = (*(*result + 16))(result);
            }
          }

          else
          {
            v31 = *v18;
            *v18 = 0;
            *v21 = v31;
          }

          ++v18;
          v19 += 8;
        }

        while (v18 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_2992AF0F8(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v63 = *MEMORY[0x29EDCA608];
  v60 = a6;
  if (a6)
  {
    v11 = result;
    while (a5 > a8 && v60 > a8)
    {
      if (!a5)
      {
        goto LABEL_82;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = *(a4 + 24);
        if (!v14)
        {
          sub_2991A2240();
        }

        result = (*(*v14 + 48))(v14, a2, &v11[v12 / 8]);
        if (result)
        {
          break;
        }

        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          goto LABEL_82;
        }
      }

      v16 = -v13;
      v17 = v60;
      if (-v13 >= v60)
      {
        if (v13 == -1)
        {
          v51 = v11[v12 / 8];
          v11[v12 / 8] = *a2;
          *a2 = v51;
          goto LABEL_82;
        }

        sub_2992AF88C(v61, a4);
        v55 = v16 / 2;
        v22 = &v11[v16 / 2];
        v18 = a2;
        if (a2 != a3)
        {
          v23 = a3 - a2;
          v18 = a2;
          do
          {
            if (!v62)
            {
              sub_2991A2240();
            }

            v24 = &v18[v23 >> 1];
            v25 = (*(*v62 + 48))(v62, v24, &v22[v12 / 8]);
            if (v25)
            {
              v23 += ~(v23 >> 1);
            }

            else
            {
              v23 >>= 1;
            }

            if (v25)
            {
              v18 = v24 + 1;
            }
          }

          while (v23);
        }

        sub_29922D72C(v61);
        v56 = v18 - a2;
        v19 = &v22[v12 / 8];
        v17 = v60;
      }

      else
      {
        v56 = v60 / 2;
        v18 = &a2[v60 / 2];
        v19 = a2;
        if (a2 - v11 != v12)
        {
          v20 = (a2 - v11 - v12) >> 3;
          v19 = &v11[v12 / 8];
          do
          {
            v21 = *(a4 + 24);
            if (!v21)
            {
              sub_2991A2240();
            }

            if ((*(*v21 + 48))(v21, v18, &v19[v20 >> 1]))
            {
              v20 >>= 1;
            }

            else
            {
              v19 += (v20 >> 1) + 1;
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
          v17 = v60;
        }

        v55 = (v19 - v11 - v12) >> 3;
      }

      v26 = v18;
      if (v19 != a2)
      {
        v26 = v19;
        if (a2 != v18)
        {
          v26 = sub_2992AF804(v19, a2, v18);
        }
      }

      a5 = -(v55 + v13);
      v27 = v17;
      v28 = v17 - v56;
      if (v55 + v56 >= v27 - (v55 + v56) - v13)
      {
        result = sub_2992AF0F8(v26, v18, a3, a4, -(v55 + v13), v28, a7, a8);
        v18 = v19;
        v28 = v56;
        a5 = v55;
        a3 = v26;
        v11 = (v11 + v12);
      }

      else
      {
        result = sub_2992AF0F8(&v11[v12 / 8], v19, v26, a4, v55, v56, a7, a8);
        v11 = v26;
      }

      v60 = v28;
      a2 = v18;
      if (!v28)
      {
        goto LABEL_82;
      }
    }

    if (a5 <= v60)
    {
      if (a2 == v11)
      {
        goto LABEL_82;
      }

      v30 = 0;
      v32 = a7;
      v43 = a7;
      v44 = v11;
      do
      {
        v45 = *v44;
        *v44++ = 0;
        *v43++ = v45;
        ++v30;
      }

      while (v44 != a2);
      v46 = v11;
      v47 = a7;
      while (a2 != a3)
      {
        v48 = *(a4 + 24);
        if (!v48)
        {
          sub_2991A2240();
        }

        if ((*(*v48 + 48))(v48, a2, v47))
        {
          v49 = *a2;
          *a2 = 0;
          result = *v11;
          *v11 = v49;
          if (result)
          {
            result = (*(*result + 16))(result);
          }

          ++a2;
        }

        else
        {
          v50 = *v47;
          *v47 = 0;
          result = *v11;
          *v11 = v50;
          if (result)
          {
            result = (*(*result + 16))(result);
          }

          ++v47;
        }

        ++v11;
        ++v46;
        if (v43 == v47)
        {
          goto LABEL_78;
        }
      }

      result = sub_2992AF780(v47, v43, v46);
    }

    else
    {
      if (a2 == a3)
      {
        goto LABEL_82;
      }

      v29 = 0;
      v30 = 0;
      v31 = a3;
      v32 = a7;
      do
      {
        v33 = a2[v29];
        a2[v29] = 0;
        a7[v29] = v33;
        ++v30;
        ++v29;
      }

      while (&a2[v29] != a3);
      v34 = &a7[v29];
      while (a2 != v11)
      {
        v35 = *(a4 + 24);
        if (!v35)
        {
          sub_2991A2240();
        }

        v36 = v31;
        v37 = a2 - 1;
        v38 = v34 - 1;
        v39 = (*(*v35 + 48))(v35, v34 - 1, a2 - 1);
        v40 = v36 - 1;
        if (v39)
        {
          v41 = *v37;
          *v37 = 0;
          result = *v40;
          *v40 = v41;
        }

        else
        {
          v42 = *v38;
          *v38 = 0;
          result = *v40;
          *v40 = v42;
          v37 = a2;
          --v34;
        }

        v31 = v36 - 1;
        if (result)
        {
          result = (*(*result + 16))(result);
        }

        a2 = v37;
        if (v34 == a7)
        {
          goto LABEL_78;
        }
      }

      if (v34 != a7)
      {
        v52 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v53 = *--v34;
          *v34 = 0;
          result = v31[v52];
          v31[v52] = v53;
          if (result)
          {
            result = (*(*result + 16))(result);
          }

          --v52;
        }

        while (v34 != a7);
      }
    }

LABEL_78:
    if (v32)
    {
      do
      {
        result = *a7;
        *a7 = 0;
        if (result)
        {
          result = (*(*result + 16))(result);
        }

        ++a7;
        --v30;
      }

      while (v30);
    }
  }

LABEL_82:
  v54 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992AF704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a13)
  {
    v18 = a13;
    do
    {
      v19 = *v18;
      *v18 = 0;
      if (v19)
      {
        (*(*v19 + 16))(v19);
      }

      ++v18;
      --v16;
    }

    while (v16);
  }

  _Unwind_Resume(exception_object);
}