void sub_297A102F0()
{
  MEMORY[0x2A1C7C4A8]();
  sub_297A04CB8();
  v5 = *MEMORY[0x29EDCA608];
  bzero(v4, 0x4000uLL);
  sub_297A04B18();
  sub_297A086DC();
  if (!v2)
  {
    if (ccder_decode_sequence_tl() && ccder_decode_tl())
    {
      __memcpy_chk();
      if (v1)
      {
        *v1 = 0;
      }

      if (v0)
      {
        *v0 = 0;
      }
    }

    else
    {
      sub_297A04B0C();
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_297A10444()
{
  sub_297A04C30();
  MEMORY[0x2A1C7C4A8]();
  sub_297A04D74();
  v3 = v2;
  v32[1] = *MEMORY[0x29EDCA608];
  sub_297A04AE0();
  *v5 = v4;
  bzero(__src, 0x8000uLL);
  v29 = 0;
  __count = 0x8000;
  v28 = 0;
  if (v1)
  {
    v6 = sub_297A01194();
    if (v6)
    {
      v12 = v6;
      if (v3)
      {
        v13 = v3;
      }

      else
      {
        v13 = "";
      }

      sub_297A0797C(&v29, &v28, 2, v7, v8, v9, v10, v11, v13);
      if (!sub_297A04BCC(v12, 0x50u, v32, v14, v29, v28, v15, v16, __src, &__count))
      {
        v17 = calloc(__count, 1uLL);
        *v1 = v17;
        if (v17)
        {
          memcpy(v17, __src, __count);
          *v0 = __count;
        }
      }
    }

    else
    {
      v19 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v22, v23, v24, v25, v26, v27, ":", 3582, "", "");
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v29);
  v18 = *MEMORY[0x29EDCA608];
  sub_297A04E78();
  sub_297A04C18();
}

uint64_t sub_297A10778()
{
  sub_297A04AE0();
  if (v2 && v1 && !sub_297A09460())
  {
    sub_297A13D4C(off_2A13A4860);
  }

  free(0);
  return v0;
}

uint64_t sub_297A1083C(uint64_t a1, void *a2)
{
  sub_297A04AE0();
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if (!sub_297A09460() && sub_297A13C74(off_2A13A48E0, v9, v9 + v8, &v7))
  {
    if (a2)
    {
      v4 = time(0);
      v2 = 0;
      v5 = v4 - v7;
      if (v4 <= v7)
      {
        v5 = 0;
      }

      *a2 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  free(v9);
  return v2;
}

void sub_297A108E0()
{
  MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v35[1] = *MEMORY[0x29EDCA608];
  sub_297A04C70();
  v35[0] = v2;
  sub_297A04F28(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22, v24, v26, v28, v30);
  if (sub_297A01194())
  {
    if (v1)
    {
      sub_297A04D94();
      if (!sub_297A04A34(v10, 0x8Eu, v35, v11, v12, v13, v14, v15, v21, v23))
      {
        sub_297A15098(v34);
      }
    }
  }

  else
  {
    v17 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v25, v27, v29, v31, v32, v33, ":", 3797, "", "");
  }

  sub_297A04CC4(v34, 0x1000uLL);
  v16 = *MEMORY[0x29EDCA608];
  sub_297A04CDC();
}

uint64_t sub_297A10A24()
{
  v22[1] = *MEMORY[0x29EDCA608];
  sub_297A04B44();
  v22[0] = 266;
  result = (v2 + 6);
  if (v0)
  {
    v4 = v1;
    if (v1)
    {
      v5 = v0;
      v6 = sub_297A01194();
      if (v6)
      {
        v21 = *v4;
        result = sub_297A04B70(v6, 0x68u, v22, 1u, v7, v8, v9, v10, v5, &v21);
        if (!result)
        {
          *v4 = v21;
        }
      }

      else
      {
        v12 = *MEMORY[0x29EDCA620];
        sub_297A04A00();
        fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3823, "", "");
        result = sub_297A04B0C();
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A10B2C()
{
  v23[1] = *MEMORY[0x29EDCA608];
  sub_297A04B44();
  v23[0] = (v2 << 8) | 1;
  result = (v3 + 6);
  if (v5)
  {
    v6 = v1;
    if (v1)
    {
      sub_297A04D34();
      v7 = sub_297A01194();
      if (v7)
      {
        v22 = *v6;
        result = sub_297A04B70(v7, 0x68u, v23, 1u, v8, v9, v10, v11, v0, &v22);
        if (!result)
        {
          *v6 = v22;
        }
      }

      else
      {
        v13 = *MEMORY[0x29EDCA620];
        sub_297A04A00();
        fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 3847, "", "");
        result = sub_297A04B0C();
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A10C64()
{
  sub_297A04F54();
  MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  sub_297A04D84();
  v4 = v3;
  v27 = *MEMORY[0x29EDCA608];
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  bzero(v24, 0x4000uLL);
  v22 = 0x4000;
  v23[0] = 1;
  v23[1] = v4;
  v5 = sub_297A01194();
  if (v5)
  {
    if (!sub_297A04B50(v5, 0x87u, v23, 2u, v6, v7, v8, v9, v24, &v22))
    {
      __memcpy_chk();
      *v2 = 44;
      v10 = calloc(0x2CuLL, 1uLL);
      *v0 = v10;
      if (v10)
      {
        v11 = *v2;
        __memcpy_chk();
      }

      else
      {
        sub_297A04B44();
      }
    }
  }

  else
  {
    sub_297A04C64();
    v13 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 3883, "", "");
  }

  sub_297A04DC8(v24);
  v12 = *MEMORY[0x29EDCA608];
  sub_297A04F40();
}

uint64_t sub_297A10E00()
{
  sub_297A04D74();
  v4 = *MEMORY[0x29EDCA608];
  sub_297A10C64();
  if (v0)
  {
    v3 = v0;
  }

  else
  {
    v3 = 3758604312;
  }

  v1 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_297A10F30()
{
  sub_297A04EFC();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[2] = *MEMORY[0x29EDCA608];
  v34[0] = 2;
  v34[1] = v0;
  bzero(v30, 0xC4uLL);
  bzero(v29, 0x4000uLL);
  v28 = 0x4000;
  v9 = sub_297A01194();
  if (v9)
  {
    if (!sub_297A04A68(v9, 0x87u, v34, 2u, v10, v11, v12, v13, v29, &v28))
    {
      __memcpy_chk();
      v14 = calloc(0x28uLL, 1uLL);
      *v8 = v14;
      if (v14)
      {
        *v6 = 40;
        v15 = *&v30[8];
        v16 = v31;
        v14[4] = v32;
        *v14 = v15;
        *(v14 + 1) = v16;
        v17 = calloc(0x91uLL, 1uLL);
        *v4 = v17;
        if (v17)
        {
          *v2 = 145;
          memcpy(v17, v33, 0x91uLL);
        }
      }
    }
  }

  else
  {
    v19 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v22, v23, v24, v25, v26, v27, ":", 3943, "", "");
  }

  sub_297A04DC8(v29);
  memset_s(v30, 0xC4uLL, 0, 0xC4uLL);
  v18 = *MEMORY[0x29EDCA608];
  sub_297A04EE8();
}

uint64_t sub_297A11148(uint64_t a1)
{
  v2 = sub_297A01C80();
  if (v2)
  {
    return sub_297A04B24(v2, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return sub_297A04B0C();
  }
}

uint64_t sub_297A11190()
{
  v1 = MEMORY[0x2A1C7C4A8]();
  v3 = v2;
  v4 = v1;
  sub_297A04D44(*MEMORY[0x29EDCA608]);
  v5 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  v6 = sub_297A01194();
  if (v6)
  {
    v5 = (v0 + 6);
    if (v4 && v3)
    {
      v11 = sub_297A04A68(v6, 0x96u, 0, 0, v7, v8, v9, v10, __src, &__count);
      if (v11)
      {
        v5 = v11;
      }

      else
      {
        v12 = calloc(__count, 1uLL);
        *v4 = v12;
        if (v12)
        {
          v13 = __count;
          *v3 = __count;
          memcpy(v12, __src, v13);
          v5 = 0;
        }

        else
        {
          v5 = (v0 + 1);
        }
      }
    }
  }

  else
  {
    v16 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 3992, "", "");
    sub_297A04C64();
  }

  sub_297A04DC8(__src);
  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_297A112F4()
{
  sub_297A04C30();
  v19[1] = *MEMORY[0x29EDCA608];
  if (v1 && v0 <= 0x30)
  {
    v2 = sub_297A01194();
    if (v2)
    {
      v3 = v2;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      MEMORY[0x2A1C7C4A8]();
      v6 = v19 - v5;
      bzero(v19 - v5, v4);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v6)
      {
        sub_297A04BE8(v3, 0x72u, 0, 0, v6, v4, v7, v8, 0, 0);
      }

      else
      {
        sub_297A04B44();
      }
    }

    else
    {
      sub_297A04AE0();
      v10 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 4036, "", "");
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  sub_297A04C18();
}

void sub_297A114EC()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v34[1] = *MEMORY[0x29EDCA608];
  v34[0] = v0;
  sub_297A04F28(v0, v1, v2, v3, v4, v5, v6, v7, v20, v21, v22, v24, v26, v28);
  __n = 4096;
  v8 = sub_297A01194();
  if (v8)
  {
    v14 = sub_297A04A34(v8, 0x8Bu, v34, v9, v10, v11, v12, v13, v33, &__n);
    v15 = __n;
    if (!v14)
    {
      sub_297A04C70();
      if (v15 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        sub_297A152EC(v33);
        v15 = __n;
      }
    }
  }

  else
  {
    v17 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v23, v25, v27, v29, v30, v31, ":", 4130, "", "");
    v15 = 4096;
  }

  sub_297A04CC4(v33, v15);
  v16 = *MEMORY[0x29EDCA608];
  sub_297A04CDC();
}

uint64_t sub_297A1163C()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v20[512] = *MEMORY[0x29EDCA608];
  v19 = 4096;
  if (v0)
  {
    v1 = v0;
    v2 = sub_297A01194();
    if (v2)
    {
      v3 = v2;
      bzero(v20, 0x1000uLL);
      result = sub_297A04A68(v3, 0x98u, 0, 0, v4, v5, v6, v7, v20, &v19);
      if (!result)
      {
        if (v19 == 8)
        {
          result = 0;
          *v1 = v20[0];
        }

        else
        {
          result = sub_297A04E28();
        }
      }
    }

    else
    {
      v10 = *MEMORY[0x29EDCA620];
      sub_297A04A00();
      fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 4183, "", "");
      result = sub_297A04B0C();
    }
  }

  else
  {
    result = 4294967285;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A11778()
{
  sub_297A04EFC();
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v29 = *MEMORY[0x29EDCA608];
  v27 = 4096;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v8 = sub_297A01194();
  if (v8)
  {
    v9 = v8;
    bzero(v28, 0x1000uLL);
    if (!sub_297A04A68(v9, 0x9Eu, 0, 0, v10, v11, v12, v13, v28, &v27) && !sub_297A169E0(v28, v27, &v24))
    {
      if (v7)
      {
        *v7 = *(&v26 + 1);
      }

      if (v6)
      {
        *v6 = v26;
      }

      if (v4)
      {
        *v4 = *(&v25 + 1);
      }

      if (v2)
      {
        *v2 = v25;
      }
    }
  }

  else
  {
    v15 = *MEMORY[0x29EDCA620];
    sub_297A04A00();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 4204, "", "");
  }

  v14 = *MEMORY[0x29EDCA608];
  sub_297A04EE8();
}

uint64_t sub_297A118F8(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = sub_297A04DA4();
        if (sub_297A14700(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        sub_297A04DA4();
        if (sub_297A145D8())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        sub_297A04DA4();
        if (sub_297A1443C())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_297A119F4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 128, "", "");
}

uint64_t sub_297A11A5C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 141, "", "");
}

uint64_t sub_297A11AC4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 157, "", "");
}

uint64_t sub_297A11B2C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 173, "", "");
}

uint64_t sub_297A11B94()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 565, "", "");
}

uint64_t sub_297A11BFC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 645, "", "");
}

uint64_t sub_297A11C64()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 662, "", "");
}

uint64_t sub_297A11CCC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 718, "", "");
}

uint64_t sub_297A11D34()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 843, "", "");
}

uint64_t sub_297A11D9C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 860, "", "");
}

uint64_t sub_297A11E04()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1015, "", "");
}

uint64_t sub_297A11E6C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1773, "", "");
}

uint64_t sub_297A11ED4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1791, "", "");
}

uint64_t sub_297A11F3C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1806, "", "");
}

uint64_t sub_297A11FA4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1826, "", "");
}

uint64_t sub_297A1200C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1841, "", "");
}

uint64_t sub_297A12074()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1858, "", "");
}

uint64_t sub_297A120DC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1912, "", "");
}

uint64_t sub_297A12144()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2001, "", "");
}

uint64_t sub_297A121AC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2290, "", "");
}

uint64_t sub_297A12214()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2370, "", "");
}

uint64_t sub_297A1227C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2459, "", "");
}

uint64_t sub_297A122E4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2474, "", "");
}

uint64_t sub_297A1234C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2494, "", "");
}

uint64_t sub_297A123B4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2509, "", "");
}

uint64_t sub_297A1241C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2524, "", "");
}

uint64_t sub_297A12484()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2547, "", "");
}

uint64_t sub_297A124EC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2559, "", "");
}

uint64_t sub_297A12554()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2604, "", "");
}

uint64_t sub_297A125BC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2781, "", "");
}

uint64_t sub_297A12624()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2797, "", "");
}

uint64_t sub_297A1268C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2813, "", "");
}

uint64_t sub_297A126F4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2841, "", "");
}

uint64_t sub_297A1275C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2857, "", "");
}

uint64_t sub_297A127C4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2883, "", "");
}

uint64_t sub_297A1282C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2999, "", "");
}

uint64_t sub_297A12894()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3077, "", "");
}

uint64_t sub_297A128FC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3094, "", "");
}

uint64_t sub_297A12964()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3110, "", "");
}

uint64_t sub_297A129CC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3127, "", "");
}

uint64_t sub_297A12A34()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3225, "", "");
}

uint64_t sub_297A12A9C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3642, "", "");
}

uint64_t sub_297A12B04()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3658, "", "");
}

uint64_t sub_297A12B6C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3672, "", "");
}

uint64_t sub_297A12BD4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3686, "", "");
}

uint64_t sub_297A12C3C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3702, "", "");
}

uint64_t sub_297A12CA4()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3718, "", "");
}

uint64_t sub_297A12D0C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4019, "", "");
}

uint64_t sub_297A12D74()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4066, "", "");
}

uint64_t sub_297A12DDC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4080, "", "");
}

uint64_t sub_297A12E44()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4096, "", "");
}

uint64_t sub_297A12EAC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4112, "", "");
}

uint64_t sub_297A12F14()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4150, "", "");
}

uint64_t sub_297A12F7C()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A04A00();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4166, "", "");
}

uint64_t sub_297A12FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x29EDCA608];
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297A130B0(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v5 = 0;
  sub_297A12FE4(a2, a3, &v5, 3);
  return sub_297A056D8(a1, &v5, 3uLL);
}

uint64_t sub_297A13108(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_297A1320C(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_297A132A0(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  v7 = sub_297A1320C(&__s, v10, a5);
  if (v7)
  {
    v8 = v7;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t sub_297A133B0(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  v60 = *MEMORY[0x29EDCA608];
  HIDWORD(v53) = 0;
  v58 = 0u;
  v59 = 0u;
  __s = 0u;
  v57 = 0u;
  *v54 = 0u;
  v55 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v53) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = sub_297A05A20((a1 + 9), &__s);
        }

        else
        {
          v30 = *(a1 + 5);
          __s = *(a1 + 1);
          v57 = v30;
          v31 = *(a1 + 13);
          v58 = *(a1 + 9);
          v59 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v57;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = sub_297A05D1C(v33, 32, &v58, &unk_2A13A4EA0, 0x20uLL);
            v35 = sub_297A05C4C(v34);
            LODWORD(a1) = sub_297A059A8(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v53) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v52 = v54;
            sub_297A05BE4(v39, v40, &v58);
          }

          sub_297A05C3C();
          LODWORD(a1) = sub_297A00D30(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = sub_297A05C58();
      LODWORD(a1) = sub_297A07A5C(v21, v22);
      if (a1)
      {
        sub_297A05C0C();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = sub_297A00D30(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v53 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v53) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = sub_297A05D1C(v36, 32, (v14 + 2), &unk_2A13A4EA0, a5);
        v38 = sub_297A05C4C(v37);
        LODWORD(a1) = sub_297A059A8(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v53);
        goto LABEL_44;
      }

      v28 = sub_297A05C58();
      LODWORD(a1) = sub_297A07A5C(v28, v29);
      if (a1)
      {
        sub_297A05C0C();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v52 = v54;
          sub_297A05BE4(v48, v49, (v14 + 2));
          v23 = v54;
        }

        else
        {
          v23 = (v14 + 2);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    sub_297A05C1C(a1, a2, a3, a4, a5, a6, a7, a8, v52, v53, v54[0]);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  v50 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_297A136E4(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), char a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  v56 = *MEMORY[0x29EDCA608];
  HIDWORD(v52) = 0;
  memset(__s, 0, sizeof(__s));
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = sub_297A05C58();
            if (!sub_297A01150(v15, v16))
            {
              goto LABEL_40;
            }

            sub_297A05C0C();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v52 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v52) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = sub_297A05D1C(v25, 32, (a1 + 2), &unk_2A13A4EA0, a5);
              v27 = sub_297A05C4C(v26);
              sub_297A059A8(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v52);
              goto LABEL_37;
            }

            v23 = sub_297A05C58();
            if (!sub_297A01150(v23, v24))
            {
              goto LABEL_40;
            }

            sub_297A05C0C();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((a3 & 8) != 0)
            {
              v39 = ccsha256_di();
              sub_297A05BE4(v39, v40, (a1 + 2));
            }

            sub_297A05C3C();
          }

          if (!sub_297A010E4(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }

          goto LABEL_42;
        }

LABEL_40:
        v8 = 4294967285;
        goto LABEL_37;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v52) = 32;
    if (*a7 < 0x20)
    {
      goto LABEL_40;
    }

    *v53 = 0uLL;
    v54 = 0uLL;
    if ((a3 & 4) != 0)
    {
      if (a5 != 64)
      {
        goto LABEL_40;
      }

      sub_297A05C64();
      v28 = ccaes_cbc_decrypt_mode();
      v29 = sub_297A05D1C(v28, 32, v53, &unk_2A13A4EA0, 0x20uLL);
      v30 = sub_297A05C4C(v29);
      v31 = sub_297A059A8(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
    }

    else
    {
      if (a5 != 72)
      {
        goto LABEL_40;
      }

      sub_297A05C64();
      if (a3 < 0)
      {
        goto LABEL_24;
      }

      LODWORD(v52) = 32;
      if ((a3 & 8) != 0)
      {
        v41 = ccsha256_di();
        v51 = __s;
        sub_297A05BE4(v41, v42, v53);
      }

      sub_297A05C3C();
      v31 = sub_297A010E4(v43, v44, v45, v46, v47, 0x28u, a6, v48);
      if (v31)
      {
        sub_297A05C1C(v31, v32, v33, v34, v35, v36, v37, v38, v51, v52, v53[0]);
LABEL_42:
        v8 = 4294967277;
        goto LABEL_37;
      }
    }

    sub_297A05C1C(v31, v32, v33, v34, v35, v36, v37, v38, v51, v52, v53[0]);
    v8 = 0;
    *a7 = 32;
  }

LABEL_37:
  if ((a3 & 8) != 0)
  {
    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  v49 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_297A139C4(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  v7 = cczp_bitlen();
  v8 = calloc(((v7 + 7) >> 2) | 1, 1uLL);
  if (!v8)
  {
    return 4294967279;
  }

  v9 = v8;
  v10 = *a1;
  v11 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

BOOL sub_297A13A54(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x29C278F30](a1, a3, a4, a2))
  {
    return 0;
  }

  v6 = *a1;
  v7 = &a2[3 * **a2];
  return ccn_read_uint() == 0;
}

uint64_t sub_297A13AD0(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297A13B38()
{
  sub_297A067A4();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_297A06830(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_297A13C08(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_297A0668C();
    sub_297A13B38();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_297A13C74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    sub_297A066A0();
    sub_297A13B38();
    return 0;
  }

  return result;
}

uint64_t sub_297A13CEC()
{
  sub_297A067FC();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_297A13D4C(uint64_t result)
{
  if (result)
  {
    sub_297A066A0();
    sub_297A13B38();
    return 0;
  }

  return result;
}

__n128 sub_297A13DE4(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  sub_297A06734(a1);
  if (sub_297A06848())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t sub_297A13E40()
{
  sub_297A067A4();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  sub_297A0671C();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (sub_297A13EEC(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((sub_297A13EEC(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t sub_297A13EEC(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL sub_297A13F68()
{
  sub_297A067FC();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t sub_297A13FB8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_297A06734(a1);
  sub_297A0660C();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_297A0677C(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_297A06630(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_297A06630(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_297A1402C()
{
  sub_297A067A4();
  v3 = v2;
  v13 = *MEMORY[0x29EDCA608];
  v5 = strlen(v4);
  v11 = 0;
  v12 = 0;
  v10[0] = 12;
  v10[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v9 = 0;
    if (sub_297A060EC(v3, v10, 0, &__src, &v9))
    {
      if (v9 == v0)
      {
        memcpy(v1, __src, v0);
        result = 0;
      }

      else
      {
        result = 4294967277;
      }
    }

    else
    {
      result = 4294967293;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A14120(uint64_t a1)
{
  if (a1)
  {
    return sub_297A13B38() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_297A14168(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_297A16718);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_297A14338()
{
  result = sub_297A0683C();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (sub_297A13AD0(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!sub_297A067E4(v8))
          {
            return 4294967279;
          }

          sub_297A066F8();
          if (ccder_blob_encode_body())
          {
            sub_297A06640();
            sub_297A06620();
            sub_297A066D4();
            sub_297A06620();
            if (v9 == v1)
            {
              v10 = sub_297A067CC();
              if (v10)
              {
                return sub_297A065F0(v10);
              }
            }
          }

          sub_297A066B4();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_297A1443C()
{
  result = sub_297A0683C();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = sub_297A067B0();
    if (sub_297A067E4(v6))
    {
      sub_297A066F8();
      v7 = ccder_blob_encode_body();
      if (v7 && (sub_297A06798(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (sub_297A06640(), sub_297A06620(), sub_297A066D4(), sub_297A06620(), v15 == v1) && (v16 = sub_297A067CC()) != 0)
      {
        return sub_297A065F0(v16);
      }

      else
      {
        sub_297A066B4();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_297A14520()
{
  sub_297A067A4();
  v5 = *MEMORY[0x29EDCA608];
  v2 = strlen(v1);
  result = 4294967285;
  if (v0 && v2 <= 0x10)
  {
    __memcpy_chk();
    result = sub_297A1443C();
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A145D8()
{
  result = sub_297A0683C();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = sub_297A067B0();
      v7 = sub_297A067E4(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), sub_297A0666C(), sub_297A0671C(), ccder_blob_encode_tl(), sub_297A0666C(), v10 == v8) && (v11 = sub_297A067CC()) != 0)
        {
          return sub_297A065F0(v11);
        }

        else
        {
          sub_297A066B4();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
    }
  }

  return result;
}

uint64_t sub_297A14700(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v23[1] = *MEMORY[0x29EDCA608];
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v23[0] = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(v23 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), sub_297A06620(), sub_297A0671C(), ccder_blob_encode_tl(), sub_297A06620(), v20 == v17) && sub_297A067CC())
      {
        result = sub_297A06728();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      result = 4294967279;
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A14904()
{
  result = sub_297A0683C();
  if (v0)
  {
    v5 = v3;
    if (v3)
    {
      if (v4)
      {
        strlen(v4);
        v6 = *(v5 + 1);
        ccder_sizeof();
        v7 = sub_297A067B0();
        if (sub_297A067E4(v7))
        {
          sub_297A066F8();
          if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (sub_297A06640(), sub_297A06620(), sub_297A066D4(), sub_297A06620(), v8 == v1) && (v9 = sub_297A067CC()) != 0)
          {
            return sub_297A065F0(v9);
          }

          else
          {
            sub_297A066B4();
            free(v1);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return result;
}

uint64_t sub_297A149F4(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (sub_297A14168(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v7 = a2 + 2 + *(a2 + 1);
      v8 = ccder_sizeof();
      v9 = sub_297A067E4(v8);
      v3 = v9;
      if (v9)
      {
        v15 = v9;
        if (!ccder_blob_encode_body())
        {
          goto LABEL_15;
        }

        v18 = v3;
        v19 = v15;
        v10 = a2 + 2 + *(a2 + 1);
        ccder_blob_encode_body();
        sub_297A0666C();
        v18 = v3;
        v19 = v11;
        sub_297A0671C();
        ccder_blob_encode_tl();
        sub_297A0666C();
        if (v12 != v3)
        {
          goto LABEL_15;
        }

        v13 = sub_297A067CC();
        if (v13)
        {
          v4 = 0;
          v13[1] = v3;
          v13[2] = 0;
          *v13 = *a1;
          *a1 = v13;
          v3 = 0;
        }

        else
        {
LABEL_15:
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t sub_297A14B80(uint64_t a1)
{
  v7 = sub_297A06734(a1);
  if (v2)
  {
    v3 = v2;
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    v6 = *v3;
    v5 = v3[1];
    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v7;
  return 1;
}

uint64_t sub_297A14C28(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v37 = *a1;
  if (a2)
  {
    v7 = *a1;
    sub_297A0660C();
    v8 = ccder_blob_decode_range();
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = v38;
    v16 = (v39 - v38);
    sub_297A0677C(v8, v9, v10, v11, v12, v13, v14, v15, v37, *(&v37 + 1), v38, v39, v40);
LABEL_4:
    sub_297A0660C();
    v17 = ccder_blob_decode_range();
    if (v17)
    {
      sub_297A0677C(v17, v18, v19, v20, v21, v22, v23, v24, v37, *(&v37 + 1), v38, v39, v40);
      if (v34 <= 4)
      {
        v35 = *v33;
        *a3 = v5;
        *(a3 + 8) = v16;
        *(a3 + 16) = v35;
        *(a3 + 20) = v6;
        return sub_297A06630(v25, v26, v27, v28, v29, v30, v31, v32, v37);
      }
    }

    return 0;
  }

  LODWORD(v40) = v4;
  result = sub_297A14D04(&v37, 4, v5, &v40);
  if (result)
  {
    v16 = v40;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_297A14D04(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  sub_297A06734(a1);
  sub_297A0660C();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_297A0677C(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return sub_297A06630(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return sub_297A06630(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_297A14D84(uint64_t a1)
{
  v17 = sub_297A06734(a1);
  if (v2)
  {
    sub_297A06798(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_297A06798(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_297A06630(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_297A14DE0(uint64_t a1)
{
  v17 = sub_297A06734(a1);
  if (v2)
  {
    sub_297A06798(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_297A06798(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_297A06630(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_297A14E40(uint64_t a1, void *a2)
{
  sub_297A06734(a1);
  sub_297A0660C();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_297A0677C(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return sub_297A06630(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t sub_297A14EA8()
{
  sub_297A067A4();
  v1 = v0;
  v3 = v2;
  v18 = 0;
  if (sub_297A14700(&v18, off_2A13A45C8, *v2) || sub_297A14700(&v18, off_2A13A45D0, v3[1]) || sub_297A14700(&v18, off_2A13A45D8, *(v3 + 1)) || sub_297A14700(&v18, off_2A13A45E8, v3[4]) || sub_297A14700(&v18, off_2A13A45F8, v3[5]) || sub_297A14700(&v18, off_2A13A4610, *(v3 + 26)) || sub_297A14700(&v18, off_2A13A4618, *(v3 + 34)) || sub_297A14700(&v18, off_2A13A4320, *(v3 + 42)) || sub_297A14700(&v18, off_2A13A44E8, *(v3 + 46)) || (v4 = sub_297A1443C(), v4) || v1 && (sub_297A14700(&v18, off_2A13A4600, *(v3 + 66)) || sub_297A14700(&v18, off_2A13A4608, *(v3 + 67)) || sub_297A14700(&v18, off_2A13A48E8, *(v3 + 17)) || (v4 = sub_297A14700(&v18, off_2A13A4938, *(v3 + 19)), v4)) || (v5 = sub_297A06740(v4), v5))
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
    sub_297A0670C(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  }

  sub_297A05F44(&v18);
  return v13;
}

uint64_t sub_297A15098(uint64_t a1)
{
  result = sub_297A06810(*MEMORY[0x29EDCA608]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x54uLL, 0, 0x54uLL);
        bzero(v8, 0x228uLL);
        v8[4] = off_2A13A45D0;
        v8[9] = off_2A13A45D8;
        v8[14] = off_2A13A45E8;
        v8[19] = off_2A13A45F8;
        v8[24] = off_2A13A4600;
        v8[29] = off_2A13A4608;
        v8[34] = off_2A13A4610;
        v8[39] = off_2A13A4618;
        v8[44] = off_2A13A4320;
        v8[49] = off_2A13A44E8;
        v8[54] = off_2A13A46E0;
        v9[2] = off_2A13A48E8;
        v9[7] = off_2A13A4938;
        sub_297A065B0();
        sub_297A06868();
        *v5 = sub_297A13CEC();
        *(v5 + 1) = sub_297A13CEC();
        *(v5 + 1) = sub_297A13CEC();
        *(v5 + 4) = sub_297A13CEC();
        *(v5 + 5) = sub_297A13CEC();
        *(v5 + 26) = sub_297A13CEC();
        *(v5 + 34) = sub_297A13CEC();
        *(v5 + 42) = sub_297A13CEC();
        *(v5 + 46) = sub_297A13CEC();
        sub_297A13FB8(v9, 4, v5 + 50, 16);
        v5[66] = sub_297A13CEC();
        v5[67] = sub_297A13CEC();
        *(v5 + 68) = sub_297A13CEC();
        sub_297A13CEC();
        result = sub_297A06728();
        *(v5 + 76) = v6;
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A152EC(uint64_t a1)
{
  result = sub_297A06810(*MEMORY[0x29EDCA608]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        sub_297A06760(v3);
        bzero(v8, 0x98uLL);
        v8[4] = off_2A13A45E8;
        v8[9] = off_2A13A44E8;
        v8[14] = off_2A13A45C8;
        sub_297A065B0();
        if (sub_297A06868())
        {
          *v5 = sub_297A13CEC();
          v5[1] = sub_297A13CEC();
          v5[2] = sub_297A13CEC();
          sub_297A13CEC();
          result = sub_297A06728();
          v5[3] = v6;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A15418(uint64_t a1)
{
  result = sub_297A06810(*MEMORY[0x29EDCA608]);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          sub_297A06760(v3);
          sub_297A06760(v8);
          v13 = 0;
          v11[0] = 0u;
          v12 = 0u;
          v15 = 0u;
          v16 = 0u;
          v11[1] = off_2A13A4890;
          v14 = off_2A13A43C0;
          sub_297A065B0();
          sub_297A13B38();
          if (sub_297A13FB8(v11, 4, v7, 16) && sub_297A13FB8(&v12 + 8, 4, v8, 16))
          {
            result = sub_297A13FB8(&v16, 4, v9, 16) - 1;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A15578(uint64_t a1)
{
  result = sub_297A06810(*MEMORY[0x29EDCA608]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v9, 0x200uLL);
        v9[4] = off_2A13A43C0;
        v10[2] = off_2A13A43A0;
        v11[2] = off_2A13A4398;
        v11[7] = off_2A13A43B8;
        v11[12] = off_2A13A4640;
        v13 = off_2A13A45E8;
        v14 = off_2A13A45F0;
        v15 = off_2A13A44E8;
        v16 = off_2A13A45D8;
        v17 = off_2A13A45E0;
        v18 = off_2A13A47A0;
        v19 = off_2A13A4808;
        sub_297A065B0();
        sub_297A06868();
        *v5 = sub_297A13CEC();
        if (!sub_297A13FB8(v10, 4, v5 + 1, 16) || !sub_297A13FB8(v11, 4, v5 + 5, 16) || (v5[9] = sub_297A13CEC(), v5[10] = sub_297A13CEC(), v5[11] = sub_297A13CEC(), v5[12] = sub_297A13CEC(), v5[15] = sub_297A13CEC(), v5[13] = sub_297A13CEC(), v5[14] = sub_297A13CEC(), !sub_297A06498(&v12)))
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_10;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = sub_297A13CEC();
          if ((v5[9] & 0x800) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
LABEL_9:
          result = 0;
          goto LABEL_10;
        }

        sub_297A13CEC();
        result = sub_297A06728();
        v5[20] = v8;
      }
    }
  }

LABEL_10:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A157F0(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = sub_297A14520();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = sub_297A14520();
      }

      v7 = sub_297A06740(a1);
      if (!v7)
      {
        v3 = 0;
        sub_297A0670C(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_297A05F44(&v18);
  return v3;
}

uint64_t sub_297A158AC(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        sub_297A06678();
        if (sub_297A13B38())
        {
          if (!sub_297A1402C())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!sub_297A1402C())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  sub_297A05F44(&v6);
  return v3;
}

uint64_t sub_297A15984(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], sub_297A1443C()) || a1[2] && (v6 = a1[3], sub_297A1443C()) || a1[4] && (v7 = a1[5], sub_297A1443C()) || a1[6] && (v8 = a1[7], sub_297A1443C()) || a1[8] && (v9 = a1[9], sub_297A1443C()) || a1[10] && (v10 = a1[11], sub_297A1443C()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = sub_297A14168(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_297A0670C(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  sub_297A05F44(&v23);
  return v3;
}

uint64_t sub_297A15AE4(int a1, int a2, void *__s)
{
  v73[29] = *MEMORY[0x29EDCA608];
  if (__s)
  {
    memset_s(__s, 0x60uLL, 0, 0x60uLL);
    bzero(v73, 0xE8uLL);
    v72 = off_2A13A4370;
    v73[4] = off_2A13A4958;
    v73[9] = off_2A13A4950;
    v73[14] = off_2A13A4330;
    v73[19] = off_2A13A4948;
    v73[24] = off_2A13A43A8;
    v66 = xmmword_297A26300;
    v67 = 0;
    v68 = &v72;
    sub_297A065B0();
    sub_297A06868();
    sub_297A065C4();
    v4 = ccder_blob_decode_range();
    if (v4)
    {
      v12 = sub_297A065D8(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v72, v69, v70, v71);
      *(v13 + 24) = v12;
      *__s = v14;
      __s[1] = v15;
    }

    sub_297A065C4();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      v24 = sub_297A065D8(v16, v17, v18, v19, v20, v21, v22, v23, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      v25[4] = v24;
      __s[2] = v26;
      __s[3] = v27;
    }

    sub_297A065C4();
    v28 = ccder_blob_decode_range();
    if (v28)
    {
      v36 = sub_297A065D8(v28, v29, v30, v31, v32, v33, v34, v35, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      *(v37 + 104) = v36;
      __s[4] = v38;
      __s[5] = v39;
    }

    sub_297A065C4();
    v40 = ccder_blob_decode_range();
    if (v40)
    {
      v48 = sub_297A065D8(v40, v41, v42, v43, v44, v45, v46, v47, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      v49[9] = v48;
      __s[6] = v50;
      __s[7] = v51;
    }

    sub_297A065C4();
    v52 = ccder_blob_decode_range();
    if (v52)
    {
      v60 = sub_297A065D8(v52, v53, v54, v55, v56, v57, v58, v59, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      *(v61 + 184) = v60;
      __s[8] = v62;
      __s[9] = v63;
    }

    sub_297A065C4();
    if (ccder_blob_decode_range())
    {
      result = 0;
      __s[10] = v69;
      __s[11] = (v70 - v69);
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 4294967285;
  }

  v65 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297A15CDC(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!sub_297A14520())
      {
        v5 = sub_297A14520();
        if (!v5)
        {
          v6 = sub_297A06740(v5);
          if (!v6)
          {
            v3 = 0;
            sub_297A0670C(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_297A05F44(&v17);
  return v3;
}

uint64_t sub_297A15D8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        sub_297A06760(a3);
        sub_297A06678();
        if (sub_297A13B38())
        {
          sub_297A1402C();
          sub_297A1402C();
          v3 = 0;
        }
      }
    }
  }

  sub_297A05F44(&v5);
  return v3;
}

uint64_t sub_297A15E38(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v5 = *MEMORY[0x29EDCA608];
  if (a1 && a2)
  {
    sub_297A065B0();
    sub_297A13B38();
    v2 = sub_297A13CEC() & 0x1F;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_297A15EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x29EDCA608];
  bzero(v11, 0xE8uLL);
  v10 = off_2A13A4620;
  v11[4] = off_2A13A4628;
  v11[9] = off_2A13A4630;
  v11[14] = off_2A13A4638;
  v11[19] = off_2A13A43A8;
  v12[2] = off_2A13A4940;
  v7 = xmmword_297A26300;
  v8 = 0;
  v9 = &v10;
  sub_297A065B0();
  sub_297A13B38();
  *a3 = sub_297A13CEC();
  *(a3 + 4) = sub_297A13CEC();
  *(a3 + 8) = sub_297A13CEC();
  *(a3 + 12) = sub_297A13CEC();
  v6 = 65;
  if (sub_297A14D04(v12, 4, (a3 + 16), &v6))
  {
    *(a3 + 88) = v6;
    result = sub_297A13FB8(v13, 4, (a3 + 96), 3) - 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_297A16064(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2)
    {
      v2 = off_2A13A4318;
      if (off_2A13A4318)
      {
        sub_297A0668C();
        sub_297A13B38();
        v2 = 0;
      }
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

void *sub_297A16424(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  sub_297A06734(a1);
  sub_297A0660C();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  sub_297A0677C(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return sub_297A06630(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t sub_297A164C4(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = sub_297A06848();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_297A16540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  sub_297A0671C();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_297A1660C(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v51) = a6;
  *(&v51 + 1) = a6 + a7;
  sub_297A0671C();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = sub_297A06830(v12, v13, v14, v15, v16, v17, v18, v19, v46, 0, v51);
  v22 = sub_297A164C4(v20, 0x8000000000000003, v21);
  if (!v22)
  {
    return 4294967277;
  }

  if (a5)
  {
    sub_297A06788();
    *a5 = v30;
  }

  v31 = sub_297A06830(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v52);
  v33 = sub_297A164C4(v31, 0x8000000000000002, v32);
  if (!v33)
  {
    return 4294967277;
  }

  if (a4)
  {
    sub_297A06788();
    *a4 = v41;
  }

  v42 = sub_297A06830(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v53);
  if (!sub_297A164C4(v42, 0x8000000000000001, v43))
  {
    return 4294967277;
  }

  if (a3)
  {
    sub_297A06788();
    *a3 = v44;
  }

  sub_297A065C4();
  if (ccder_blob_decode_range())
  {
    v51 = v56;
    if (a1)
    {
      if (a2)
      {
        *a1 = v54;
        *a2 = (v55 - v54);
      }
    }
  }

  if (v51 == *(&v51 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t sub_297A16718(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t sub_297A16844()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A0681C();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s bad 1%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 627, "", "");
}

uint64_t sub_297A168AC()
{
  v0 = *MEMORY[0x29EDCA620];
  sub_297A0681C();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s fail%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 640, "", "");
}

uint64_t sub_297A16914(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = (a1 + 1);
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = v11 + 4;
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_297A169E0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_297A164C4(&v6, 0x8000000000000005, a3 + 3) || !sub_297A164C4(&v6, 0x8000000000000004, a3 + 5) || !sub_297A164C4(&v6, 0x8000000000000003, a3 + 2) || !sub_297A164C4(&v6, 0x8000000000000002, a3 + 4) || !sub_297A164C4(&v6, 0x8000000000000001, a3 + 1))
  {
    return 4294967277;
  }

  v4 = sub_297A164C4(&v6, 0x8000000000000000, a3);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}