uint64_t sprintf08da(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 < 0x5F5E100)
  {
    if (a4)
    {
      *a3 = 45;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *MEMORY[0x29EDCA608];

    return digit8(a1, a2, a3, v6, 0);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t sprintf_09d(uint64_t a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf08da(a1, -a2, v4, 1);
  }

  else
  {
    result = sprintf09da(a1, a2, v4, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf09da(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3B9ACA00)
  {
    if (a4)
    {
      *a3 = 45;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *MEMORY[0x29EDCA608];

    return digit9(a1, a2, a3, v6, 0);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, 0, a4, 0);
  }
}

uint64_t digit10(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = a2 + 294967296;
  if (a2 > 0xEE6B27FF)
  {
    v6 = 52;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v5 - 2000000000;
  if (v5 > 0x773593FF)
  {
    v8 = v6 | 2;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  if (v7 <= 0x3B9AC9FF)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = a4 + 1;
  a3[a4] = v9;
  if (a5 == 10)
  {
    a3[(a4 + 1)] = 46;
    v10 = a4 + 2;
  }

  if (v7 <= 0x3B9AC9FF)
  {
    v11 = v7;
  }

  else
  {
    v11 = v7 - 1000000000;
  }

  v12 = *MEMORY[0x29EDCA608];

  return digit9(a1, v11, a3, v10, a5);
}

void *sprintf1da(void *result, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2 < 0xA)
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    a3[a4] = a2 | 0x30;
    a3[(a4 + 1)] = 0;
    v7 = *a3;
    if (*a3)
    {
      v8 = *result;
      v9 = a3 + 1;
      do
      {
        *result = v8 + 1;
        *v8 = v7;
        v8 = *result;
        if (*result >= result[3])
        {
          v8 = result[2];
          *result = v8;
        }

        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    v11 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(result, a2, a3, a4, a5, 0);
  }

  return result;
}

void *sprintf_2d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf1da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf2da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf2da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x64)
  {
    if (a2 < 0xA)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf1da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit2(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_3d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf2da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf3da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf3da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3E8)
  {
    if (a2 < 0x64)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf2da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit3(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_4d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf3da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf4da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf4da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 >> 4 < 0x271)
  {
    if (a2 < 0x3E8)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf3da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit4(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_5d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf4da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf5da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf5da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 >> 5 < 0xC35)
  {
    if (a2 >> 4 < 0x271)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf4da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit5(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_6d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf5da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf6da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf6da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0xF4240)
  {
    if (a2 >> 5 < 0xC35)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf5da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit6(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_7d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf6da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf7da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf7da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x989680)
  {
    if (a2 < 0xF4240)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf6da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit7(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_8d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf7da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf8da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf8da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x5F5E100)
  {
    if (a2 < 0x989680)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf7da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit8(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

void *sprintf_9d(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    result = sprintf8da(a1, -a2, v4, 0, 1);
  }

  else
  {
    result = sprintf9da(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sprintf9da(void *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3B9ACA00)
  {
    if (a2 < 0x5F5E100)
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf8da(a1, a2, a3, v10, a5);
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit9(a1, a2, a3, a4, 0);
    }
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 0);
  }
}

uint64_t sprintf_10d(void *a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v3 = 0;
    v4 = 1;
LABEL_6:
    result = sprintf9da(a1, a2, v6, v3, v4);
    goto LABEL_7;
  }

  if (a2 < 0x3B9ACA00)
  {
    v6[0] = 32;
    v3 = 1;
    v4 = 0;
    goto LABEL_6;
  }

  result = digit10(a1, a2, v6, 0, 0);
LABEL_7:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_10u(void *a1, unsigned int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3B9ACA00)
  {
    v4[0] = 32;
    result = sprintf9da(a1, a2, v4, 1u, 0);
  }

  else
  {
    result = digit10(a1, a2, v4, 0, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_2f(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v4 = -a2;
    if (a2 > 0xFFFFFFF6)
    {
      v6[0] = 45;
      result = digit2(a1, v4, v6, 1, 2);
    }

    else
    {
      result = nzet(a1, v4, v6, 0, 1, 2);
    }
  }

  else
  {
    result = sprintf_2fa(a1, a2, v6, 0, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_3f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFFFFF9C)
    {
      if (a3 == 3)
      {
        v7[0] = 45;
        result = digit3(a1, v5, v7, 1, 3);
      }

      else
      {
        result = sprintf_2fa(a1, v5, v7, 0, 1);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_3fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_4f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFFFFC18)
    {
      if (a3 == 4)
      {
        v7[0] = 45;
        result = digit4(a1, v5, v7, 1, 4);
      }

      else
      {
        result = sprintf_3fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_4fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_5f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFFFD8F0)
    {
      if (a3 == 5)
      {
        v7[0] = 45;
        result = digit5(a1, v5, v7, 1, 5);
      }

      else
      {
        result = sprintf_4fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_5fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_6f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFFE7960)
    {
      if (a3 == 6)
      {
        v7[0] = 45;
        result = digit6(a1, v5, v7, 1, 6);
      }

      else
      {
        result = sprintf_5fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_6fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_7f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFFF0BDC0)
    {
      if (a3 == 7)
      {
        v7[0] = 45;
        result = digit7(a1, v5, v7, 1, 7);
      }

      else
      {
        result = sprintf_6fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_7fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_8f(uint64_t a1, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v5 = -a2;
    if (a2 > 0xFF676980)
    {
      if (a3 == 8)
      {
        v7[0] = 45;
        result = digit8(a1, v5, v7, 1, 8);
      }

      else
      {
        result = sprintf_7fa(a1, v5, v7, 0, 1, a3);
      }
    }

    else
    {
      result = nzet(a1, v5, v7, 0, 1, a3);
    }
  }

  else
  {
    result = sprintf_8fa(a1, a2, v7, 0, 0, a3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_9f(uint64_t a1, unsigned int a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xFA0A1F00)
    {
      a2 = -a2;
      v3 = 1;
      goto LABEL_6;
    }

    if (a3 == 9)
    {
      v9[0] = 45;
      a2 = -a2;
      v5 = 1;
      goto LABEL_11;
    }

    a2 = -a2;
    v6 = 0;
    v7 = 1;
LABEL_14:
    result = sprintf_8fa(a1, a2, v9, v6, v7, a3);
    goto LABEL_15;
  }

  if (a2 < 0x5F5E100)
  {
    if (a3 == 9)
    {
      v5 = 0;
LABEL_11:
      result = digit9(a1, a2, v9, v5, 9);
      goto LABEL_15;
    }

    v9[0] = 32;
    v6 = 1;
    v7 = 0;
    goto LABEL_14;
  }

  v3 = 0;
LABEL_6:
  result = nzet(a1, a2, v9, 0, v3, a3);
LABEL_15:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_10f9(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xC4653600)
    {
      a2 = -a2;
      v2 = 1;
      goto LABEL_6;
    }

    v6[0] = 45;
    a2 = -a2;
    v4 = 1;
LABEL_9:
    result = digit10(a1, a2, v6, v4, 10);
    goto LABEL_10;
  }

  if (a2 < 0x3B9ACA00)
  {
    v4 = 0;
    goto LABEL_9;
  }

  v2 = 0;
LABEL_6:
  result = nzet(a1, a2, v6, 0, v2, 10);
LABEL_10:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_1x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x10)
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2];
    v3 = &v8;
    v8 = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nzxt(uint64_t result, unint64_t a2, _BYTE *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >> 28)
  {
    v3 = hexTABLE[a2 >> 28];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 24) & 0xF];
    a3[2] = hexTABLE[(a2 >> 20) & 0xF];
    a3[3] = hexTABLE[(a2 >> 16) & 0xF];
    a3[4] = hexTABLE[a2 >> 12];
    a3[5] = hexTABLE[(a2 >> 8) & 0xF];
    a3[6] = hexTABLE[a2 >> 4];
    a3[7] = hexTABLE[a2 & 0xF];
    v4 = 8;
  }

  else if (BYTE3(a2))
  {
    v3 = hexTABLE[a2 >> 24];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 20) & 0xF];
    a3[2] = hexTABLE[(a2 >> 16) & 0xF];
    a3[3] = hexTABLE[a2 >> 12];
    a3[4] = hexTABLE[(a2 >> 8) & 0xF];
    a3[5] = hexTABLE[a2 >> 4];
    a3[6] = hexTABLE[a2 & 0xF];
    v4 = 7;
  }

  else if (a2 >= 0x100000)
  {
    v3 = hexTABLE[a2 >> 20];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 16) & 0xF];
    a3[2] = hexTABLE[a2 >> 12];
    a3[3] = hexTABLE[(a2 >> 8) & 0xF];
    a3[4] = hexTABLE[a2 >> 4];
    a3[5] = hexTABLE[a2 & 0xF];
    v4 = 6;
  }

  else if (a2 >= 0x10000)
  {
    v3 = hexTABLE[a2 >> 16];
    *a3 = v3;
    a3[1] = hexTABLE[a2 >> 12];
    a3[2] = hexTABLE[(a2 >> 8) & 0xF];
    a3[3] = hexTABLE[a2 >> 4];
    a3[4] = hexTABLE[a2 & 0xF];
    v4 = 5;
  }

  else if (a2 >= 0x1000)
  {
    v3 = hexTABLE[a2 >> 12];
    *a3 = v3;
    a3[1] = hexTABLE[(a2 >> 8) & 0xF];
    a3[2] = hexTABLE[a2 >> 4];
    a3[3] = hexTABLE[a2 & 0xF];
    v4 = 4;
  }

  else if (a2 >= 0x100)
  {
    v3 = hexTABLE[a2 >> 8];
    *a3 = v3;
    a3[1] = hexTABLE[a2 >> 4];
    a3[2] = hexTABLE[a2 & 0xF];
    v4 = 3;
  }

  else if (a2 >= 0x10)
  {
    v3 = hexTABLE[a2 >> 4];
    *a3 = v3;
    a3[1] = hexTABLE[a2 & 0xF];
    v4 = 2;
  }

  else
  {
    v3 = hexTABLE[a2];
    *a3 = v3;
    v4 = 1;
  }

  a3[v4] = 0;
  if (v3)
  {
    v5 = *result;
    v6 = a3 + 1;
    do
    {
      *result = v5 + 1;
      *v5 = v3;
      v5 = *result;
      if (*result >= *(result + 24))
      {
        v5 = *(result + 16);
        *result = v5;
      }

      v7 = *v6++;
      LOBYTE(v3) = v7;
    }

    while (v7);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_02x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x100)
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2 >> 4];
    v3 = v8;
    v8[0] = hexTABLE[a2 & 0xF];
    v8[1] = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_03x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x1000)
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2 >> 8];
    v3 = v8;
    v8[0] = hexTABLE[a2 >> 4];
    v8[1] = hexTABLE[a2 & 0xF];
    v8[2] = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_04x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x10000)
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2 >> 12];
    v3 = v8;
    v8[0] = hexTABLE[(a2 >> 8) & 0xF];
    v8[1] = hexTABLE[a2 >> 4];
    v8[2] = hexTABLE[a2 & 0xF];
    v8[3] = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

char **sprintf_06x(char **result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (BYTE3(a2))
  {
    result = nzxt(result, a2, &v7);
  }

  else
  {
    v2 = hexTABLE[a2 >> 20];
    v8[0] = hexTABLE[(a2 >> 16) & 0xF];
    v8[1] = hexTABLE[a2 >> 12];
    v3 = v8;
    v8[2] = hexTABLE[(a2 >> 8) & 0xF];
    v8[3] = hexTABLE[a2 >> 4];
    v8[4] = hexTABLE[a2 & 0xF];
    v8[5] = 0;
    v4 = *result;
    do
    {
      *result = v4 + 1;
      *v4 = v2;
      v4 = *result;
      if (*result >= result[3])
      {
        v4 = result[2];
        *result = v4;
      }

      v5 = *v3++;
      v2 = v5;
    }

    while (v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_08x(uint64_t result, unint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  LOBYTE(v2) = hexTABLE[a2 >> 28];
  v8[1] = hexTABLE[(a2 >> 24) & 0xF];
  v8[2] = hexTABLE[(a2 >> 20) & 0xF];
  v3 = hexTABLE[a2 >> 12];
  v8[3] = hexTABLE[(a2 >> 16) & 0xF];
  v8[4] = v3;
  v8[5] = hexTABLE[(a2 >> 8) & 0xF];
  v4 = hexTABLE[a2 & 0xF];
  v8[6] = hexTABLE[a2 >> 4];
  v8[7] = v4;
  v8[8] = 0;
  v5 = *result;
  v6 = 1;
  do
  {
    *result = v5 + 1;
    *v5 = v2;
    v5 = *result;
    if (*result >= *(result + 24))
    {
      v5 = *(result + 16);
      *result = v5;
    }

    v2 = v8[v6++];
  }

  while (v2);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t digit9(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 800000000;
  if (a2 > 0x2FAF07FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x17D783FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 400000000;
  }

  v8 = v5 - 200000000;
  if (v5 > 0xBEBC1FF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x5F5E0FF)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 9)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x5F5E0FF)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 100000000;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit8(a1, v12, a3, v11, a5);
}

uint64_t digit8(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 80000000;
  if (a2 > 0x4C4B3FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x26259FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 40000000;
  }

  v8 = v5 - 20000000;
  if (v5 > 0x1312CFF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x98967F)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 8)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x98967F)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 10000000;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit7(a1, v12, a3, v11, a5);
}

uint64_t digit7(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 8000000;
  if (a2 > 0x7A11FF)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x3D08FF)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 4000000;
  }

  v8 = v5 - 2000000;
  if (v5 > 0x1E847F)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0xF423F)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 7)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0xF423F)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 1000000;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit6(a1, v12, a3, v11, a5);
}

uint64_t digit6(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a2 - 800000;
  if (a2 >> 8 > 0xC34)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  v8 = v5 >> 7;
  if (v5 >> 7 > 0xC34)
  {
    v5 -= 400000;
  }

  if (v8 <= 0xC34)
  {
    v7 = v6;
  }

  v9 = v5 - 200000;
  if (v5 >> 6 > 0xC34)
  {
    v10 = v7 | 2;
  }

  else
  {
    v9 = v5;
    v10 = v7;
  }

  if (v9 >> 5 <= 0xC34)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = a4 + 1;
  a3[a4] = v11;
  if (a5 == 6)
  {
    a3[(a4 + 1)] = 46;
    v12 = a4 + 2;
  }

  if (v9 >> 5 <= 0xC34)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 - 100000;
  }

  v14 = *MEMORY[0x29EDCA608];

  return digit5(a1, v13, a3, v12, a5);
}

uint64_t digit5(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a2 - 80000;
  if (a2 >> 7 > 0x270)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  v8 = v5 >> 6;
  if (v5 >> 6 > 0x270)
  {
    v5 -= 40000;
  }

  if (v8 <= 0x270)
  {
    v7 = v6;
  }

  v9 = v5 - 20000;
  if (v5 >> 5 > 0x270)
  {
    v10 = v7 | 2;
  }

  else
  {
    v9 = v5;
    v10 = v7;
  }

  if (v9 >> 4 <= 0x270)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = a4 + 1;
  a3[a4] = v11;
  if (a5 == 5)
  {
    a3[(a4 + 1)] = 46;
    v12 = a4 + 2;
  }

  if (v9 >> 4 <= 0x270)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 - 10000;
  }

  v14 = *MEMORY[0x29EDCA608];

  return digit4(a1, v13, a3, v12, a5);
}

uint64_t digit4(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 8000;
  if (a2 >> 6 > 0x7C)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0xF9F)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 4000;
  }

  v8 = v5 - 2000;
  if (v5 > 0x7CF)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x3E7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 4)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x3E7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 1000;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit3(a1, v12, a3, v11, a5);
}

uint64_t digit3(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = a2 - 800;
  if (a2 > 0x31F)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  v7 = v6 | 4;
  if (v5 <= 0x18F)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 400;
  }

  v8 = v5 - 200;
  if (v5 > 0xC7)
  {
    v9 = v7 | 2;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  if (v8 <= 0x63)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a4 + 1;
  a3[a4] = v10;
  if (a5 == 3)
  {
    a3[(a4 + 1)] = 46;
    v11 = a4 + 2;
  }

  if (v8 <= 0x63)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 - 100;
  }

  v13 = *MEMORY[0x29EDCA608];

  return digit2(a1, v12, a3, v11, a5);
}

uint64_t digit2(uint64_t result, unsigned int a2, _BYTE *a3, int a4, int a5)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a2 - 80;
  if (a2 > 0x4F)
  {
    v6 = 56;
  }

  else
  {
    v5 = a2;
    v6 = 48;
  }

  if (v5 > 0x27)
  {
    v5 -= 40;
    v6 |= 4u;
  }

  v7 = v6 | 2;
  if (v5 <= 0x13)
  {
    v7 = v6;
  }

  else
  {
    v5 -= 20;
  }

  v8 = v5 - 10;
  if (v5 > 9)
  {
    v9 = v7 + 1;
  }

  else
  {
    v8 = v5;
    v9 = v7;
  }

  a3[a4] = v9;
  if (a5 == 2)
  {
    v10 = a4 + 2;
    a3[(a4 + 1)] = 46;
    v11 = v8 + 48;
  }

  else
  {
    v10 = a4 + 2;
    a3[(a4 + 1)] = v8 + 48;
    if (a5 != 1)
    {
      goto LABEL_17;
    }

    v11 = 46;
  }

  a3[v10] = v11;
  v10 = a4 + 3;
LABEL_17:
  a3[v10] = 0;
  v12 = *a3;
  if (*a3)
  {
    v13 = *result;
    v14 = a3 + 1;
    do
    {
      *result = v13 + 1;
      *v13 = v12;
      v13 = *result;
      if (*result >= *(result + 24))
      {
        v13 = *(result + 16);
        *result = v13;
      }

      v15 = *v14++;
      v12 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nzet(uint64_t a1, unsigned int a2, _BYTE *a3, int a4, int a5, int a6)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3B9ACA00)
  {
    if (a2 < 0x5F5E100)
    {
      if (a2 < 0x989680)
      {
        if (a2 < 0xF4240)
        {
          if (a2 >> 5 < 0xC35)
          {
            if (a2 >> 4 < 0x271)
            {
              if (a2 < 0x3E8)
              {
                if (a2 < 0x64)
                {
                  if (a5)
                  {
                    a3[a4] = 45;
                    LOBYTE(a4) = a4 + 1;
                  }

                  v15 = *MEMORY[0x29EDCA608];

                  return digit2(a1, a2, a3, a4, a6);
                }

                else
                {
                  if (a5)
                  {
                    a3[a4] = 45;
                    LOBYTE(a4) = a4 + 1;
                  }

                  v14 = *MEMORY[0x29EDCA608];

                  return digit3(a1, a2, a3, a4, a6);
                }
              }

              else
              {
                if (a5)
                {
                  a3[a4] = 45;
                  LOBYTE(a4) = a4 + 1;
                }

                v13 = *MEMORY[0x29EDCA608];

                return digit4(a1, a2, a3, a4, a6);
              }
            }

            else
            {
              if (a5)
              {
                a3[a4] = 45;
                LOBYTE(a4) = a4 + 1;
              }

              v12 = *MEMORY[0x29EDCA608];

              return digit5(a1, a2, a3, a4, a6);
            }
          }

          else
          {
            if (a5)
            {
              a3[a4] = 45;
              LOBYTE(a4) = a4 + 1;
            }

            v11 = *MEMORY[0x29EDCA608];

            return digit6(a1, a2, a3, a4, a6);
          }
        }

        else
        {
          if (a5)
          {
            a3[a4] = 45;
            LOBYTE(a4) = a4 + 1;
          }

          v10 = *MEMORY[0x29EDCA608];

          return digit7(a1, a2, a3, a4, a6);
        }
      }

      else
      {
        if (a5)
        {
          a3[a4] = 45;
          LOBYTE(a4) = a4 + 1;
        }

        v9 = *MEMORY[0x29EDCA608];

        return digit8(a1, a2, a3, a4, a6);
      }
    }

    else
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit9(a1, a2, a3, a4, a6);
    }
  }

  else
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    v6 = *MEMORY[0x29EDCA608];

    return digit10(a1, a2, a3, a4, a6);
  }
}

uint64_t sprintf_2fa(uint64_t a1, signed int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 < 10)
  {
    if (a5)
    {
      a3[a4] = 45;
      LOBYTE(a4) = a4 + 1;
    }

    v8 = *MEMORY[0x29EDCA608];

    return digit2(a1, a2, a3, a4, 2);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, 2);
  }
}

uint64_t sprintf_3fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 100)
  {
    if (a6 == 3)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit3(a1, a2, a3, a4, 3);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_2fa(a1, a2, a3, v10, a5);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_4fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 1000)
  {
    if (a6 == 4)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit4(a1, a2, a3, a4, 4);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_3fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_5fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 10000)
  {
    if (a6 == 5)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit5(a1, a2, a3, a4, 5);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_4fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_6fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 100000)
  {
    if (a6 == 6)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit6(a1, a2, a3, a4, 6);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_5fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_7fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 1000000)
  {
    if (a6 == 7)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit7(a1, a2, a3, a4, 7);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_6fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sprintf_8fa(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 < 10000000)
  {
    if (a6 == 8)
    {
      if (a5)
      {
        a3[a4] = 45;
        LOBYTE(a4) = a4 + 1;
      }

      v8 = *MEMORY[0x29EDCA608];

      return digit8(a1, a2, a3, a4, 8);
    }

    else
    {
      a3[a4] = 32;
      v9 = *MEMORY[0x29EDCA608];
      v10 = (a4 + 1);

      return sprintf_7fa(a1, a2, a3, v10, a5, a6);
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];

    return nzet(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t asn1PE_SatelliteInfo(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 1, 31, (a2[1] - *a2) >> 3);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_14:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_15;
  }

  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        LODWORD(v11) = *(a1 + 16);
        goto LABEL_13;
      }

      v11 = Asn1Coder::EncodeInteger(a1, 0, 63, *(v8 + v9));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_13;
      }

      v11 = Asn1Coder::EncodeInteger(a1, 0, 255, *(v8 + v9 + 4));
      if (v11)
      {
        break;
      }

      ++v10;
      v8 = *a2;
      v9 += 8;
      if (v10 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_9;
      }
    }

    v5 = v11;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
LABEL_13:
    SuplAsn1Logger::TraceError(v11, v12, v13);
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_14;
  }

LABEL_9:
  v5 = 0;
LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_NavigationModel(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_13:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_14;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 1023, *(a2 + 1));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 167, *(a2 + 4));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 31, *(a2 + 5));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 10, *(a2 + 6));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (!*a2)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v7 = asn1PE_SatelliteInfo(a1, a2 + 1);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

LABEL_14:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_RequestedAssistData(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_23:
    SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_24:
    v8 = *MEMORY[0x29EDCA608];
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 1));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 2));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 3));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 4));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 5));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 6));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 7));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 8));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 9));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_23;
  }

  if (!*a2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v10 = *MEMORY[0x29EDCA608];

  return asn1PE_NavigationModel(a1, a2 + 2);
}

uint64_t asn1PE_SUPLPOSINIT(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_13:
    SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_14:
    v8 = *MEMORY[0x29EDCA608];
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[3]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_13;
  }

  v7 = asn1PE_SETCapabilities(a1, a2 + 4);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (*a2)
  {
    v7 = asn1PE_RequestedAssistData(a1, a2 + 4);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  v7 = asn1PE_LocationId(a1, a2 + 80);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_13;
  }

  if (a2[1])
  {
    v7 = asn1PE_Position(a1, a2 + 224);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (a2[2])
  {
    v7 = asn1PE_SUPLPOS(a1, a2 + 648);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (!a2[3])
  {
    v4 = 0;
    goto LABEL_14;
  }

  v10 = *MEMORY[0x29EDCA608];

  return asn1PE_Ver(a1, a2 + 145);
}

uint64_t GncS00_04HandleInitInd()
{
  v11 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS00_04HandleInitInd");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
  }

  GncS04_00InitClientInstance(IsLoggingAllowed, v1, v2, v3, v4, v5);
  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS00_06HandleDeInitInd()
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_DEINIT_IND\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncS00_06HandleDeInitInd");
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  GncS04_99DeInitFGClientInstance();
  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncS00_03DefaultMessage(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FSM:MID,%x,Srce,%u,Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncS00_03DefaultMessage", 520, *(a1 + 1), *a1, a1[1]);
      v4 = 2;
LABEL_6:
      LbsOsaTrace_WriteLog(8u, __str, v3, v4, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncS00_03DefaultMessage", 517);
    v4 = 0;
    goto LABEL_6;
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void GncS00_01Init(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncS00_01Init", 77, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_INIT_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS00_01Init");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(130, 130, 8521731, v1);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void GncS00_02DeInit(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncS00_02DeInit", 98, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_DEINIT_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS00_02DeInit");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(130, 130, 8521987, v1);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void GncS00_07DestMissingHandler(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncS00_07DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 4);
  if (v4 <= 8521219)
  {
    if (v4 != 8520195 && v4 != 8520963)
    {
LABEL_16:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncS00_07DestMissingHandler", *(a1 + 4));
        LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v4 == 8521220)
  {
LABEL_12:
    v6 = *(a1 + 24);
    if (v6)
    {
      free(v6);
    }

    *(a1 + 24) = 0;
    goto LABEL_15;
  }

  if (v4 != 8521475)
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  *(a1 + 16) = 0;
LABEL_15:
  v7 = *MEMORY[0x29EDCA608];
}

uint64_t FN_SA_FPE_To_Nav_Soln(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 22) = *(a1 + 22);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 28) = *(a1 + 28);
  *(a2 + 36) = *(a1 + 36);
  v5 = *(a1 + 88);
  v6 = *(a1 + 72);
  v7 = *(a1 + 56);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = v7;
  *(a2 + 72) = v6;
  *(a2 + 88) = v5;
  v8 = *(a1 + 104);
  v9 = *(a1 + 120);
  v10 = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 136) = v10;
  *(a2 + 120) = v9;
  *(a2 + 104) = v8;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = *(a1 + 176);
  v11 = *(a1 + 192);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 192) = v11;
  v12 = *(a1 + 216);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 216) = v12;
  *(a2 + 240) = *(a1 + 240);
  *(a2 + 256) = *(a1 + 256);
  v13 = *(a1 + 264);
  v14 = *(a1 + 296);
  *(a2 + 280) = *(a1 + 280);
  *(a2 + 296) = v14;
  *(a2 + 264) = v13;
  *(a2 + 312) = *(a1 + 312);
  *(a2 + 328) = *(a1 + 328);
  *(a2 + 344) = *(a1 + 344);
  *(a2 + 360) = *(a1 + 360);
  *(a2 + 376) = *(a1 + 376);
  *(a2 + 392) = *(a1 + 392);
  *(a2 + 408) = *(a1 + 408);
  *(a2 + 424) = *(a1 + 424);
  *(a2 + 440) = *(a1 + 440);
  *(a2 + 456) = *(a1 + 456);
  *(a2 + 472) = *(a1 + 472);
  *(a2 + 488) = *(a1 + 488);
  *(a2 + 504) = *(a1 + 504);
  *(a2 + 520) = *(a1 + 520);
  *(a2 + 536) = *(a1 + 536);
  *(a2 + 552) = *(a1 + 552);
  memcpy((a2 + 560), (a1 + 560), 0x180uLL);
  v15 = *(a1 + 944);
  *(a2 + 960) = *(a1 + 960);
  *(a2 + 944) = v15;
  v16 = *(a1 + 984);
  *(a2 + 968) = *(a1 + 968);
  *(a2 + 984) = v16;
  v17 = *(a1 + 1008);
  *(a2 + 992) = *(a1 + 992);
  *(a2 + 1008) = v17;
  v18 = *MEMORY[0x29EDCA608];
  return 1;
}

double Fused_Nav_SA_FPE_Init(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(__src, 0, sizeof(__src));
  memset(v7, 0, sizeof(v7));
  memset(&v6[79], 0, 48);
  memset(v6, 0, 315);
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  v9 = 0;
  memset(v10, 0, 14);
  *a1 = 0u;
  *(a1 + 14) = *(&v10[1] + 2);
  *(a1 + 22) = 0;
  *(a1 + 24) = 0;
  memcpy((a1 + 25), __src, 0x120uLL);
  *(a1 + 313) = 0u;
  *(a1 + 329) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 361) = 0u;
  *(a1 + 377) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 409) = 0u;
  *(a1 + 425) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 457) = 0u;
  *(a1 + 473) = 0u;
  *(a1 + 489) = 0u;
  *(a1 + 505) = 0u;
  *(a1 + 521) = 0u;
  *(a1 + 537) = 0u;
  *(a1 + 553) = 0;
  memcpy((a1 + 554), v7, 0x198uLL);
  *(a1 + 962) = *&v6[85];
  *(a1 + 978) = *&v6[89];
  *(a1 + 986) = *&v6[79];
  *(a1 + 1002) = *&v6[83];
  *(a1 + 1010) = *&v6[72];
  *(a1 + 1021) = *(&v6[74] + 3);
  *(a1 + 1037) = 0;
  *(a1 + 1038) = 0;
  *(a1 + 1040) = 0;
  memcpy((a1 + 1041), v6, 0x120uLL);
  *(a1 + 1329) = 0u;
  *(a1 + 1345) = 0u;
  *(a1 + 1361) = 0u;
  *(a1 + 1377) = 0u;
  *(a1 + 1393) = 0u;
  *(a1 + 1409) = 0u;
  *(a1 + 1425) = 0u;
  *(a1 + 1441) = 0u;
  *(a1 + 1457) = 0u;
  *(a1 + 1473) = 0u;
  *(a1 + 1489) = 0u;
  *(a1 + 1505) = 0u;
  *(a1 + 1521) = 0u;
  *(a1 + 1537) = 0u;
  *(a1 + 1553) = 0u;
  *(a1 + 1569) = 0;
  memcpy((a1 + 1570), v5, 0x198uLL);
  *(a1 + 1978) = *(&v4[1] + 8);
  *(a1 + 1994) = *(&v4[2] + 1);
  *(a1 + 2002) = v4[0];
  *(a1 + 2018) = *&v4[1];
  result = 0.0;
  *(a1 + 2026) = 0u;
  *(a1 + 2042) = 0u;
  *(a1 + 2058) = 0u;
  *(a1 + 2074) = 0u;
  *(a1 + 2090) = 0u;
  *(a1 + 2106) = 0u;
  *(a1 + 2122) = 0u;
  *(a1 + 2138) = 0u;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t FN_Fuse_With_SA_FPE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v84 = *MEMORY[0x29EDCA608];
  v81 = a1 + 1044;
  v8 = *(a2 + 2136);
  v9 = v8 % 5;
  *(a2 + 2136) = v8 + 1;
  *(a2 + v9 + 2088) = *(a1 + 1040);
  v10 = a2 + 2048;
  *(a2 + 2048 + 8 * v9) = sqrt(*(a1 + 1152) * *(a1 + 1152) + *(a1 + 1160) * *(a1 + 1160));
  v11 = a2 + 2096;
  *(a2 + 2096 + 8 * v9) = sqrt(*(a1 + 136) * *(a1 + 136) + *(a1 + 144) * *(a1 + 144));
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    v14 = a2 + 8 * v6;
    if (*(a2 + v6 + 2088) == 1)
    {
      v13 = v13 + *(v14 + 2048);
      ++v7;
    }

    v12 = v12 + *(v14 + 2096);
    ++v6;
  }

  while (v6 != 5);
  v15 = v13 / v7;
  if (v7)
  {
    v16 = v15;
  }

  else
  {
    v16 = -999.0;
  }

  v17 = v12 / 5.0;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v19 = *(g_TCU + 8);
    }

    else
    {
      v19 = 0.0;
    }

    v20 = *(a2 + 2096);
    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Horizontal Errors: GNSS: calc=%f curr=%f (%f,%f,%f,%f,%f), FPE: calc=%f curr=%f ((%f,%f,%f,%f,%f) valid=(%d,%d,%d,%d,%d)", "FN_Fuse_With_SA_FPE", 297, v18, v19, v17, *(v11 + 8 * v9), *(a2 + 2096), *(a2 + 2104), *(a2 + 2112), *(a2 + 2120), *(a2 + 2128), v16, *(v10 + 8 * v9), *(a2 + 2048), *(a2 + 2056), *(a2 + 2064), *(a2 + 2072), *(a2 + 2080), *(a2 + 2088), *(a2 + 2089), *(a2 + 2090), *(a2 + 2091), *(a2 + 2092));
  }

  *(a1 + 2040) = v17;
  *(a1 + 2048) = v16;
  v21 = v16 > v17 * 4.0 && v16 > 35.0;
  v83 = v21;
  v22 = *(a1 + 1052);
  v23 = v22 == 0;
  v24 = **(a3 + 40);
  if (*(a2 + 2144) >= v24)
  {
    v26 = *(a1 + 4);
    v25 = *(a2 + 2140);
  }

  else
  {
    *(a2 + 2144) = v24;
    v25 = *(a1 + 4);
    *(a2 + 2140) = v25;
    v26 = v25;
  }

  v27 = v26 - v25;
  v28 = 40000;
  if (v27 > 599999)
  {
    v30 = 0;
    v82 = 0;
  }

  else
  {
    v29 = **(a3 + 232) - 1;
    v30 = v29 < 5;
    if (v29 >= 5)
    {
      v28 = 40000;
    }

    else
    {
      v28 = 60000;
    }

    v82 = v29 < 5;
  }

  v31 = *(a1 + 1040);
  if (v31 == 1)
  {
    if (v22)
    {
      if (*(a2 + 2032) != 1)
      {
        goto LABEL_37;
      }

      v32 = 40;
    }

    else
    {
      v32 = 0;
    }

    *(a2 + 2148) = v32;
LABEL_37:
    if (*(a2 + 2152))
    {
      v39 = *(a2 + 2148);
      if (v39 > 0x27 || *(a1 + 28) != 5)
      {
LABEL_43:
        *(a2 + 2152) = 1;
        v33 = (a2 + 2032);
        if (*(a2 + 2032))
        {
          v40 = v26 - *(a2 + 2036);
          v34 = v40 >= v28;
          v41 = *(v11 + 8 * v9);
          v35 = &unk_2A14BE000;
          if (v41 > 2000.0)
          {
            goto LABEL_49;
          }

          v42 = v40 >= v28 && (v83 || v22 == 0);
          v43 = v82;
          if (v22)
          {
            v43 = 0;
          }

          if (!v42 && !v43)
          {
LABEL_49:
            ++*(a2 + 2040);
            goto LABEL_74;
          }

          goto LABEL_31;
        }

        v44 = v82;
        if (v22)
        {
          v44 = 0;
        }

        if (v44)
        {
          *(a2 + 2036) = v26;
          v45 = v26;
          goto LABEL_55;
        }

LABEL_54:
        v45 = *(a2 + 2036);
LABEL_55:
        if (v26 - v45 < v28 || v39 <= 0x1E) && (*(a2 + 2153))
        {
          v34 = 0;
          if (!v31)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v34 = 1;
          if (!v31)
          {
            goto LABEL_68;
          }
        }

        if (v34 && !v83 && v22 || *(v11 + 8 * v9) > 2000.0)
        {
          *(a2 + 2032) = 1;
          *(a2 + 2040) = 0;
          *(a2 + 2036) = *(a1 + 1020);
          *(a2 + 2153) = 0;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v46 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v35 = &unk_2A14BE000;
            if (g_TCU)
            {
              v47 = *(g_TCU + 8);
            }

            else
            {
              v47 = 0.0;
            }

            LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: eventsLog = {time:%f, type:'%s', mssg:'%s'}", "FN_Fuse_With_SA_FPE", 443, v46, v47, *(a1 + 1024), "SelectionEvt", "Changed to FPE");
            goto LABEL_74;
          }

LABEL_69:
          v35 = &unk_2A14BE000;
          goto LABEL_74;
        }

LABEL_68:
        ++*(a2 + 2040);
        goto LABEL_69;
      }

      ++v39;
    }

    else
    {
      v39 = 40;
    }

    *(a2 + 2148) = v39;
    goto LABEL_43;
  }

  *(a2 + 2148) = 0;
  *(a2 + 2152) = v31;
  v33 = (a2 + 2032);
  if (*(a2 + 2032) != 1)
  {
    v39 = 0;
    goto LABEL_54;
  }

  v34 = v26 - *(a2 + 2036) >= v28;
  v35 = &unk_2A14BE000;
LABEL_31:
  *(a2 + 2032) = 0;
  *(a2 + 2040) = 0;
  *(a2 + 2036) = v26;
  *(a2 + 2153) = v23;
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v37 = v35[328];
    if (v37)
    {
      v38 = *(v37 + 8);
    }

    else
    {
      v38 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: eventsLog = {time:%f, type:'%s', mssg:'%s'}", "FN_Fuse_With_SA_FPE", 399, v36, v38, *(a1 + 8), "SelectionEvt", "Changed to GNSS");
  }

LABEL_74:
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v48 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v49 = v35[328];
    if (v49)
    {
      v50 = *(v49 + 8);
    }

    else
    {
      v50 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Selection parameters: FpeValid=%d GnssValid=%d isSwitchAllowed=%d isGnssBetter=%d isSolConfNone:=%d isBenign:=%d GnssPosFixType=%d FpeQboostSvContCnt=%d", "FN_Fuse_With_SA_FPE", 452, v48, v50, *(a1 + 1040), *(a1 + 24), v34, v83, v22 == 0, v82, *(a1 + 28), *(a2 + 2148));
  }

  *(a1 + 2035) = v30;
  *(a1 + 2033) = v83;
  *(a1 + 2034) = v23;
  *(a1 + 2032) = v34;
  if (*v33 == 1)
  {
    *(a2 + 24) = *(a1 + 1040);
    *(a2 + 28) = *v81;
    *(a2 + 36) = *(a1 + 1052);
    v51 = *(a1 + 1056);
    v52 = *(a1 + 1072);
    v53 = *(a1 + 1088);
    *(a2 + 88) = *(a1 + 1104);
    *(a2 + 72) = v53;
    *(a2 + 56) = v52;
    *(a2 + 40) = v51;
    v54 = *(a1 + 1120);
    v55 = *(a1 + 1136);
    v56 = *(a1 + 1152);
    *(a2 + 152) = *(a1 + 1168);
    *(a2 + 136) = v56;
    *(a2 + 120) = v55;
    *(a2 + 104) = v54;
    *(a2 + 160) = *(v81 + 132);
    *(a2 + 176) = *(v81 + 148);
    v57 = *(a1 + 1208);
    *(a2 + 208) = *(a1 + 1224);
    *(a2 + 192) = v57;
    v58 = *(a1 + 1232);
    *(a2 + 232) = *(a1 + 1248);
    *(a2 + 216) = v58;
    *(a2 + 240) = *(v81 + 212);
    *(a2 + 256) = *(a1 + 1272);
    *(a2 + 320) = *(a1 + 1336);
    *(a2 + 336) = *(a1 + 1352);
    *(a2 + 352) = *(a1 + 1368);
    *(a2 + 368) = *(a1 + 1384);
    *(a2 + 384) = *(a1 + 1400);
    *(a2 + 400) = *(a1 + 1416);
    *(a2 + 416) = *(a1 + 1432);
    *(a2 + 432) = *(a1 + 1448);
    *(a2 + 448) = *(a1 + 1464);
    *(a2 + 464) = *(a1 + 1480);
    *(a2 + 480) = *(a1 + 1496);
    *(a2 + 496) = *(a1 + 1512);
    *(a2 + 512) = *(a1 + 1528);
    *(a2 + 528) = *(a1 + 1544);
    *(a2 + 544) = *(a1 + 1560);
    *(a2 + 316) = *(a1 + 1332);
    *(a2 + 332) = *(a1 + 1348);
    *(a2 + 348) = *(a1 + 1364);
    *(a2 + 364) = *(a1 + 1380);
    *(a2 + 380) = *(a1 + 1396);
    *(a2 + 396) = *(a1 + 1412);
    *(a2 + 412) = *(a1 + 1428);
    *(a2 + 428) = *(a1 + 1444);
    *(a2 + 444) = *(a1 + 1460);
    *(a2 + 460) = *(a1 + 1476);
    *(a2 + 476) = *(a1 + 1492);
    *(a2 + 492) = *(a1 + 1508);
    *(a2 + 508) = *(a1 + 1524);
    *(a2 + 524) = *(a1 + 1540);
    *(a2 + 540) = *(a1 + 1556);
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      mach_continuous_time();
      v59 = v35[328];
      if (v59)
      {
        v60 = *(v59 + 8);
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f publish FPE solution");
    }
  }

  else if ((g_FPE_LogSeverity & 8) != 0)
  {
    mach_continuous_time();
    v61 = v35[328];
    if (v61)
    {
      v62 = *(v61 + 8);
    }

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f publish GNSS solution");
  }

  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v63 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v64 = v35[328];
    v65 = v64 ? *(v64 + 8) : 0.0;
    v66 = *(a2 + 8);
    v67 = *(a2 + 200);
    v68 = *(a2 + 216);
    v69 = *(a2 + 232);
    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: SEL = {estPos:[%f %.12f %.12f %f], estVel:[%.12f %.12f %f], estHeading:%f, valid:%u}", "FN_Fuse_With_SA_FPE", 543, v63, v65, v66, *(a2 + 192), v67, *(a2 + 208), v68, *(a2 + 224), v69, *(a2 + 256), *(a2 + 24));
    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v70 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v71 = v35[328];
      v72 = v71 ? *(v71 + 8) : 0.0;
      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: sel_syncedFields = {sel:%u, isSwitchAllowed:%u, isGnssBetter:%u, isSolConfNone:%u, isBenign:%u, fusedError:%f, gnssError:%f}", "FN_Fuse_With_SA_FPE", 548, v70, v72, *v33, v34, v83, v22 == 0, v82, v16, v17);
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        v73 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v74 = v35[328];
        if (v74)
        {
          v75 = *(v74 + 8);
        }

        else
        {
          v75 = 0.0;
        }

        v76 = *(a1 + 8);
        v77 = *(a1 + 200);
        v78 = *(a1 + 240);
        LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f $LCMSG: KFSOL = {estPos:[%f %.12f %.12f %f], valid:%u, speed:%f, heading:%f, posConf:%u}", "FN_Fuse_With_SA_FPE", 554, v73, v75, v76, *(a1 + 192), v77, *(a1 + 208), *(a1 + 24), v78, *(a1 + 256), *(a1 + 36));
      }
    }
  }

  v79 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t send_position_response(unsigned int *a1, int a2, char a3, char a4)
{
  v111 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 68, "send_position_response");
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 5, 1);
  }

  T_GNSS_POSITION_s::T_GNSS_POSITION_s(&__s);
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 68, "ConvertPositionResult");
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

  memset_s(&__s, 0x70uLL, 0, 0x70uLL);
  v12 = 0;
  if (a3)
  {
    __s = 5;
    v12 = 1;
  }

  if (a1)
  {
    if (a1[5] != 1)
    {
      LOBYTE(v16) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Not Enough Satellites\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 73, "ConvertPositionResult");
        LbsOsaTrace_WriteLog(0x13u, __str, v20, 4, 1);
        LOBYTE(v16) = 0;
      }

      goto LABEL_109;
    }

    __s = 0;
    v13 = a1[21];
    if (v13 == -1)
    {
      v13 = 0;
    }

    else if (!a2)
    {
      v13 %= 0xDBBA00u;
    }

    v89 = v13;
    v21 = a1[6];
    if (v21 == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }

    if (v21 == 2)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v91 = v23;
    v90 = *(a1 + 88);
    v24 = a1[23];
    v103 = 4;
    v104 = v24;
    v105 = *(a1 + 48);
    v106 = *(a1 + 98);
    v107 = 1;
    v25 = a1[26];
    if (v25 - 1 <= 0x3F)
    {
      if (((1 << (v25 - 1)) & 0x800000008000808ALL) != 0)
      {
        goto LABEL_27;
      }

      if (v25 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v42 = mach_continuous_time();
          v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time Id received is GPS\n", (*&g_MacClockTicksToMsRelation * v42), "PSP", 73, "ConvertTimeRequested");
          v29 = 1;
          LbsOsaTrace_WriteLog(0x13u, __str, v43, 4, 1);
        }

        else
        {
          v29 = 1;
        }

LABEL_31:
        v108 = v29;
        v109 |= 1u;
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssMask,%u\n", (*&g_MacClockTicksToMsRelation * v30), "PSP", 73, "ConvertPositionResult", *(a1 + 5));
          LbsOsaTrace_WriteLog(0x13u, __str, v31, 4, 1);
        }

        v16 = *(a1 + 5) & 1 | (2 * ((*(a1 + 5) >> 7) & 1));
        v32 = a1[7];
        if (v32 <= 3)
        {
          switch(v32)
          {
            case 0:
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v44 = mach_continuous_time();
                v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape type,%u\n", (*&g_MacClockTicksToMsRelation * v44), "PSP", 69, "ConvertPositionResult", 515, a1[7]);
                LbsOsaTrace_WriteLog(0x13u, __str, v45, 0, 1);
              }

              if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
              {
                goto LABEL_109;
              }

              bzero(__str, 0x410uLL);
              v46 = mach_continuous_time();
              v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v46), "PSP", 68, "ConvertPositionResult");
              v48 = 5;
              goto LABEL_108;
            case 1:
              if (a1[8] == 2)
              {
                v65 = a1[9] | 0x800000;
              }

              else
              {
                v65 = a1[9];
              }

              v66 = a1[10];
              if (!((v66 + 0x800000) >> 24) && !HIBYTE(v65))
              {
                v92 = 0;
                v93 = (v65 & 0xFF800000) != 0;
                v94 = v65 & 0x7FFFFF;
                v95 = v66;
                goto LABEL_109;
              }

              goto LABEL_105;
            case 2:
              if (a1[8] == 2)
              {
                v36 = a1[9] | 0x800000;
              }

              else
              {
                v36 = a1[9];
              }

              v37 = a1[10];
              if (!((v37 + 0x800000) >> 24) && !HIBYTE(v36))
              {
                v38 = *(a1 + 46);
                if ((v38 & 0x80000000) == 0)
                {
                  v92 = 1;
                  v93 = (v36 & 0xFF800000) != 0;
                  v94 = v36 & 0x7FFFFF;
                  v95 = v37;
                  v96 = v38;
                  v102 = *(a1 + 57);
                  goto LABEL_109;
                }
              }

              goto LABEL_105;
          }
        }

        else if (v32 > 15)
        {
          if (v32 == 16)
          {
            if (a1[8] == 2)
            {
              v57 = a1[9] | 0x800000;
            }

            else
            {
              v57 = a1[9];
            }

            v58 = *(a1 + 22);
            if (a1[13] == 2)
            {
              v58 |= 0x8000u;
            }

            v59 = a1[10];
            if (!((v59 + 0x800000) >> 24) && !HIBYTE(v57))
            {
              v60 = *(a1 + 46);
              if ((v60 & 0x80000000) == 0)
              {
                v61 = *(a1 + 47);
                if ((v61 & 0x80000000) == 0)
                {
                  v62 = *(a1 + 48);
                  if (v62 <= 0xB3)
                  {
                    v63 = *(a1 + 56);
                    if ((v63 & 0x80000000) == 0)
                    {
                      v64 = *(a1 + 57);
                      if (v64 < 0x65)
                      {
                        v92 = 9;
                        v93 = (v57 & 0xFF800000) != 0;
                        v99 = v58 < 0;
                        v94 = v57 & 0x7FFFFF;
                        v95 = v59;
                        v100 = v58 & 0x7FFF;
                        v96 = v60;
                        v97 = v61;
                        v98 = v62;
                        v101 = v63;
                        v102 = v64;
                        goto LABEL_109;
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_105;
          }

          if (v32 == 32)
          {
            if (a1[8] == 2)
            {
              v39 = a1[9] | 0x800000;
            }

            else
            {
              v39 = a1[9];
            }

            v40 = a1[10];
            if (!((v40 + 0x800000) >> 24) && !HIBYTE(v39))
            {
              v41 = *(a1 + 57);
              if (v41 < 0x65)
              {
                v92 = 10;
                v93 = (v39 & 0xFF800000) != 0;
                v94 = v39 & 0x7FFFFF;
                v95 = v40;
                v102 = v41;
                goto LABEL_109;
              }
            }

            goto LABEL_105;
          }
        }

        else
        {
          if (v32 == 4)
          {
            if (a1[8] == 2)
            {
              v51 = a1[9] | 0x800000;
            }

            else
            {
              v51 = a1[9];
            }

            v52 = a1[10];
            if (!((v52 + 0x800000) >> 24) && !HIBYTE(v51))
            {
              v53 = *(a1 + 46);
              if ((v53 & 0x80000000) == 0)
              {
                v54 = *(a1 + 47);
                if ((v54 & 0x80000000) == 0)
                {
                  v55 = *(a1 + 48);
                  if (v55 <= 0xB3)
                  {
                    v56 = *(a1 + 57);
                    if (v56 < 0x65)
                    {
                      v92 = 3;
                      v93 = (v51 & 0xFF800000) != 0;
                      v94 = v51 & 0x7FFFFF;
                      v95 = v52;
                      v96 = v53;
                      v97 = v54;
                      v98 = v55;
                      v102 = v56;
                      goto LABEL_109;
                    }
                  }
                }
              }
            }

            goto LABEL_105;
          }

          if (v32 == 8)
          {
            if (a1[8] == 2)
            {
              v33 = a1[9] | 0x800000;
            }

            else
            {
              v33 = a1[9];
            }

            v34 = a1[10];
            if (!((v34 + 0x800000) >> 24) && !HIBYTE(v33))
            {
              v92 = 8;
              v35 = *(a1 + 22);
              if (a1[13] == 2)
              {
                v35 |= 0x8000u;
              }

              v93 = (v33 & 0xFF800000) != 0;
              v99 = v35 < 0;
              v94 = v33 & 0x7FFFFF;
              v95 = v34;
              v100 = v35 & 0x7FFF;
              goto LABEL_109;
            }

LABEL_105:
            if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
            {
              goto LABEL_109;
            }

            bzero(__str, 0x410uLL);
            v67 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v79 = a1[10];
            v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx latitude,%u,longitude,%d\n", v67);
            goto LABEL_107;
          }
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          goto LABEL_109;
        }

        bzero(__str, 0x410uLL);
        v49 = mach_continuous_time();
        v78 = a1[7];
        v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape type,%u\n", (*&g_MacClockTicksToMsRelation * v49));
LABEL_107:
        v47 = v50;
        v48 = 0;
LABEL_108:
        LbsOsaTrace_WriteLog(0x13u, __str, v47, v48, 1);
LABEL_109:
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v68 = mach_continuous_time();
          v69 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v68), "PSP", 68, "ConvertPositionResult");
          LbsOsaTrace_WriteLog(0x13u, __str, v69, 5, 1);
        }

        goto LABEL_111;
      }
    }

    if (v25)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_30;
      }

      bzero(__str, 0x410uLL);
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v27 = 515;
      goto LABEL_29;
    }

LABEL_27:
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
LABEL_30:
      v29 = 5;
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v27 = 770;
LABEL_29:
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Time Id,%u\n", v26, "PSP", 69, "ConvertTimeRequested", v27, v25);
    LbsOsaTrace_WriteLog(0x13u, __str, v28, 0, 1);
    goto LABEL_30;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 69, "ConvertPositionResult", 513);
    LbsOsaTrace_WriteLog(0x13u, __str, v15, 0, 1);
  }

  LOBYTE(v16) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 68, "ConvertPositionResult");
    LbsOsaTrace_WriteLog(0x13u, __str, v18, 5, 1);
    LOBYTE(v16) = 0;
  }

LABEL_111:
  v85 = 255;
  v83 = 0;
  v84 = 0;
  v86 = &p_s;
  p_s = &__s;
  v81 = v12;
  v82 = v16;
  result = *a1;
  v87 = *a1;
  v71 = a1[5];
  if (*(a1 + 4))
  {
    if (v71 == 1)
    {
      v72 = 30;
    }

    else if (v71 == 9)
    {
      v72 = 3;
    }

    else if (__s == 5)
    {
      v72 = 19;
    }

    else
    {
      v72 = 31;
    }

    SendStatusReport(result, v72, a1, 0, 0, 255);
    if (a2 == 2)
    {
      SuplLppExecutePosRsp(&v85);
    }

    else if (a2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v73 = mach_continuous_time();
        v74 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol\n", (*&g_MacClockTicksToMsRelation * v73), "PSP", 69, "send_position_response", 770);
        LbsOsaTrace_WriteLog(0x13u, __str, v74, 0, 1);
      }
    }

    else
    {
      if (a4)
      {
        HIBYTE(v85) = 2;
      }

      SuplRrlpExecutePosRsp(&v85);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v75 = mach_continuous_time();
      v76 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v75), "PSP", 68, "send_position_response");
      result = LbsOsaTrace_WriteLog(0x13u, __str, v76, 5, 1);
    }
  }

  else if (v71 == 1)
  {
    result = SendStatusReport(result, 30, a1, 0, 0, 255);
  }

  v77 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SendStatusReport(int a1, int a2, __int128 *a3, __int128 *a4, __int128 *a5, int a6)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,statusCode,%u,reqHorizAcc,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 73, "SendStatusReport", a1, a2, a6);
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 4, 1);
  }

  result = GNS_PospStatusReport(a1, a2, a3, a4, a5, a6);
  if (result != 1)
  {
    v15 = result;
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS_PospStatusReport call failed result,%u\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "SendStatusReport", 770, v15);
      result = LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t send_assistance_req(int *a1, int a2)
{
  v58 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "send_assistance_req");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_75;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_74;
  }

  v48 = 0x8000000080000000;
  v49 = 0xFFFF00007FFFFFFFLL;
  v50 = 255;
  v53 = -1;
  v54 = -1;
  v51 = -1;
  v52 = -1;
  v55 = 0u;
  v56 = 0u;
  session_info = gps_find_session_info(*a1);
  v7 = *(a1 + 1);
  if (v7)
  {
    if (v7[1] == 1)
    {
      v8 = 32;
      WORD2(v49) = 32;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if (*v7 == 1)
    {
      v8 |= 0x40u;
      WORD2(v49) = v8;
      v9 = 1;
    }

    if (v7[2] == 1)
    {
      v8 |= 4u;
      WORD2(v49) = v8;
      v9 = 1;
    }

    if (v7[3] == 1)
    {
      v11 = *(a1 + 2);
      if (v11)
      {
        if (*v11 == 1)
        {
          if (*(v11 + 8) == 1)
          {
            v8 |= 0x80u;
            WORD2(v49) = v8;
          }

          if (*(v11 + 4) == 1)
          {
            v8 |= 2u;
            WORD2(v49) = v8;
          }

          if (*(v11 + 5) == 1)
          {
            v8 |= 0x100u;
            WORD2(v49) = v8;
          }

          if (*(v11 + 6) == 1)
          {
            v8 |= 1u;
            WORD2(v49) = v8;
          }

          if (*(v11 + 7) == 1)
          {
            v8 |= 8u;
            WORD2(v49) = v8;
          }

          if (*(v11 + 9) == 1)
          {
            WORD2(v49) = v8 | 1;
          }
        }

        v12 = *(v11 + 16);
        if (v12)
        {
          HIWORD(v49) = v12 & 0x3FF;
        }

        if (session_info)
        {
          if (*(session_info + 8) == 2)
          {
            HIWORD(v49) = v12;
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "ConvertGnssAidReqToSdlAidReq", 2052, *a1);
          LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
        }

        v15 = *(a1 + 2);
        LOBYTE(v50) = v15[18];
        v16 = v15[20];
        if (v16 >= 0x40)
        {
          v17 = 64;
        }

        else
        {
          v17 = v15[20];
        }

        HIBYTE(v50) = v17;
        LOBYTE(v51) = v15[19];
        if (v16 - 1 <= 0x3E)
        {
          v18 = 0;
          v19 = &v56;
          do
          {
            v20 = *(a1 + 2);
            *(v19 - 16) = *(v20 + v18 + 21);
            v21 = *(v20 + 2 * v18 + 86);
            if (v21 > 0xFF)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v22 = mach_continuous_time();
                v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_Iode,%u\n", (*&g_MacClockTicksToMsRelation * v22), "PSP", 69, "ConvertGnssAidReqToSdlAidReq", 772, *(*(a1 + 2) + 2 * v18 + 86));
                LbsOsaTrace_WriteLog(0x13u, __str, v23, 0, 1);
              }
            }

            else
            {
              *v19 = v21;
            }

            ++v18;
            v19 = (v19 + 1);
          }

          while (v18 < v17);
        }

        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v24 = *(a1 + 2);
  if (v24)
  {
    free(v24);
  }

  *(a1 + 2) = 0;
  v25 = *(a1 + 1);
  if (v25)
  {
    free(v25);
  }

  *(a1 + 1) = 0;
  v45 = 511;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v46 = &v41;
  v26 = gps_find_session_info(*a1);
  if (!v26)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_75;
    }

    bzero(__str, 0x410uLL);
    v32 = mach_continuous_time();
    v39 = *a1;
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v32));
    goto LABEL_74;
  }

  if (v9)
  {
    v27 = v26;
    v28 = *(v26 + 20);
    if (v28 == 1)
    {
      SendStatusReport(*a1, 20, 0, 0, 0, 255);
      v28 = *(v27 + 20);
    }

    if (v28 == 2)
    {
      SendStatusReport(*a1, 21, 0, 0, 0, 255);
      v28 = *(v27 + 20);
    }

    if (v28 == 3 && LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Assistance cannot be requested in StandAlone\n", (*&g_MacClockTicksToMsRelation * v29), "PSP", 87, "send_assistance_req", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v30, 2, 1);
    }

    v31 = &v48;
  }

  else
  {
    v31 = 0;
  }

  v41 = v31;
  LOBYTE(v42) = v9;
  v47 = *a1;
  if (a2 == 2)
  {
    SuplLppExecutePosRsp(&v45);
    goto LABEL_75;
  }

  if (a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_75;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol\n");
    goto LABEL_74;
  }

  SuplRrlpExecutePosRsp(&v45);
  v33 = gps_find_session_info(*a1);
  if (v33)
  {
    *(v33 + 16) = 0;
    goto LABEL_75;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v34 = mach_continuous_time();
    v40 = *a1;
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionId,%u\n", (*&g_MacClockTicksToMsRelation * v34));
LABEL_74:
    LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
  }

LABEL_75:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v36 = mach_continuous_time();
    v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "PSP", 68, "send_assistance_req");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v37, 5, 1);
  }

  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t send_api_status(int *a1, int a2, int a3, char a4)
{
  v45 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%u,API,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 73, "send_api_status", a1[2], a1[1]);
      LbsOsaTrace_WriteLog(0x13u, __str, v9, 4, 1);
    }

    v10 = a1[2];
    if (v10 > 0xB)
    {
      goto LABEL_35;
    }

    v11 = 1;
    if (((1 << v10) & 0xCC5) != 0)
    {
      v11 = 0;
      v12 = 1;
      v13 = 1;
      goto LABEL_7;
    }

    if (v10 == 1)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
LABEL_35:
      v11 = 0;
      v12 = 0;
      v13 = 4;
    }

LABEL_7:
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SDL status,%u\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 77, "ConvertGnsStatusToSdlStatus", v13);
      result = LbsOsaTrace_WriteLog(0x13u, __str, v16, 3, 1);
    }

    if (a1[1] == 1)
    {
      v17 = a1[2];
      if (v17 == 9)
      {
        v21 = *a1;
        v22 = 3;
        goto LABEL_21;
      }

      if (v17 != 3)
      {
        goto LABEL_22;
      }

      session_info = gps_find_session_info(*a1);
      if (!session_info)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
        if (!result)
        {
          goto LABEL_34;
        }

        bzero(__str, 0x410uLL);
        v31 = mach_continuous_time();
        v34 = *a1;
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v31));
        goto LABEL_17;
      }

      v19 = session_info;
      v20 = *(session_info + 20);
      if ((v20 - 2) < 2)
      {
        v21 = *a1;
        v22 = 23;
LABEL_21:
        result = SendStatusReport(v21, v22, 0, 0, 0, 255);
        goto LABEL_22;
      }

      if (v20 == 1)
      {
        v21 = *a1;
        v22 = 22;
        goto LABEL_21;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx locationinfo,%d\n", (*&g_MacClockTicksToMsRelation * v32), "PSP", 69, "send_api_status", 770, *(v19 + 20));
        result = LbsOsaTrace_WriteLog(0x13u, __str, v33, 0, 1);
      }
    }

LABEL_22:
    if (v11)
    {
      goto LABEL_34;
    }

    if (a1[1] != 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handling for API,%d is not needed\n", (*&g_MacClockTicksToMsRelation * v28), "PSP", 87, "send_api_status", 770, a1[1]);
        v25 = 2;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v26 = a3 & v12;
    if ((a3 & v12) != 0)
    {
      v27 = 5;
    }

    else
    {
      v27 = v13;
    }

    v41[0] = -1;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v37 = v26;
    v43 = *a1;
    T_GNSS_POSITION_s::T_GNSS_POSITION_s(v35);
    if (a4)
    {
      v30 = 2;
    }

    else
    {
      if ((a4 & 4) == 0)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Positioning method\n");
          goto LABEL_17;
        }

        goto LABEL_34;
      }

      v30 = 0;
    }

    v35[0] = v27;
    v41[1] = v30;
    v36 = v35;
    v42 = &v36;
    if (a2 == 2)
    {
      result = SuplLppExecutePosRsp(v41);
      goto LABEL_34;
    }

    if (!a2)
    {
      result = SuplRrlpExecutePosRsp(v41);
      goto LABEL_34;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_34;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol\n");
    goto LABEL_17;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_17:
    v24 = v23;
    v25 = 0;
LABEL_33:
    result = LbsOsaTrace_WriteLog(0x13u, __str, v24, v25, 1);
  }

LABEL_34:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t send_wlan_meas(uint64_t a1)
{
  v56 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "send_wlan_meas");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (a1)
  {
    v4 = 0;
    v45 = 2;
    v46 = 0;
    v47 = 0;
    v48 = -1;
    v49 = 0xFFFF7FFFFFFFFFFFLL;
    v50 = -1;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v41 = 0;
    v42 = 0;
    v38 = 1791;
    v39 = &v41;
    v43 = &v45;
    v44 = 1;
    v54 = 1;
    v5 = *(a1 + 24);
    if (v5 <= 6)
    {
      if (v5 == 1)
      {
        v54 = 0;
LABEL_38:
        v20 = *(a1 + 28);
        v21 = operator new[](40 * v20, MEMORY[0x29EDC9418]);
        if (!v21)
        {
          v47 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v36 = mach_continuous_time();
            v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WLAN meas list allocation failed\n", (*&g_MacClockTicksToMsRelation * v36), "PSP", 69, "send_wlan_meas", 1537);
            LbsOsaTrace_WriteLog(0x13u, __str, v37, 0, 1);
          }

LABEL_33:
          result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v18 = mach_continuous_time();
            v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 68, "send_wlan_meas");
            v9 = 5;
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        if (v20)
        {
          v22 = v21;
          do
          {
            *(v22 + 3) = 0;
            *v22 = 0;
            *(v22 + 4) = 0x7FFF;
            v22[10] = 0;
            *(v22 + 2) = -1;
            *(v22 + 6) = 0;
            *(v22 + 14) = 255;
            v22[32] = 0;
            *(v22 + 34) = 0xFFFF;
            v22 += 40;
          }

          while (v22 != &v21[40 * v20]);
          v23 = 0;
          v24 = 0;
          v47 = v21;
          v25 = (a1 + 32);
          do
          {
            v26 = a1 + 32 + 48 * v24;
            v27 = v25;
            v28 = v23;
            v29 = 6;
            do
            {
              v30 = *v27++;
              v47[v28++] = v30;
              --v29;
            }

            while (v29);
            v31 = *(v26 + 40);
            v32 = v47;
            v33 = v46;
            if (v31 != 0x7FFF)
            {
              v34 = &v47[40 * v46];
              v34[6] = 1;
              *(v34 + 4) = v31;
            }

            v35 = &v32[40 * v33];
            v35[32] = 1;
            *(v35 + 17) = *(v26 + 42);
            if (*(v26 + 44) == 1)
            {
              *&v32[40 * v33 + 36] = 257;
            }

            v46 = v33 + 1;
            if ((v33 + 1) > 0x3Fu)
            {
              break;
            }

            ++v24;
            v23 += 40;
            v25 += 48;
          }

          while (v24 < *(a1 + 28));
        }

        else
        {
          v47 = v21;
        }

LABEL_20:
        v45 = 0;
        wlan_session_info = find_wlan_session_info();
        v40 = wlan_session_info;
        session_info = gps_find_session_info(wlan_session_info);
        if (!session_info)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 69, "send_wlan_meas", 2052, wlan_session_info);
            LbsOsaTrace_WriteLog(0x13u, __str, v15, 0, 1);
          }

          if (v47)
          {
            MEMORY[0x29C29EAF0](v47, 0x1000C80556990FFLL);
            v47 = 0;
          }

          result = MEMORY[0x29C29EB20](a1, 0x1000C400624F575);
          goto LABEL_36;
        }

        *(session_info + 188) = 0;
        if (posp_IsTimerActive(wlan_session_info, 1))
        {
          posp_StopTimer(wlan_session_info, 1);
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NoTmrActive\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 87, "send_wlan_meas", 2052);
          LbsOsaTrace_WriteLog(0x13u, __str, v17, 2, 1);
        }

        SuplLppExecutePosRsp(&v38);
        if (v47)
        {
          MEMORY[0x29C29EAF0](v47, 0x1000C80556990FFLL);
          v47 = 0;
        }

        MEMORY[0x29C29EB20](a1, 0x1000C400624F575);
        goto LABEL_33;
      }

      if (v5 != 2)
      {
        goto LABEL_13;
      }
    }

    else if (v5 == 7 || v5 == 11)
    {
      v4 = 1;
    }

    else if (v5 != 14)
    {
LABEL_13:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unexpected status,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "send_wlan_meas", 770, *(a1 + 24));
        LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
      }

      v53 = 0;
      if (*(a1 + 24) == 1)
      {
        goto LABEL_38;
      }

LABEL_19:
      v52 = 257;
      goto LABEL_20;
    }

    v53 = v4;
    goto LABEL_19;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "send_wlan_meas", 513);
    v9 = 0;
LABEL_35:
    result = LbsOsaTrace_WriteLog(0x13u, __str, v8, v9, 1);
  }

LABEL_36:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NV_Ram_Init(uint64_t result, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  p_NV = result;
  v4 = *(result + 4);
  if (v4 != 22944 || *(result + 22936) != 14)
  {
    v5 = 0;
    *(result + 8) = 0xFFFFFFFFLL;
    *(result + 40) = 0xFFFFFFFFLL;
    *(result + 64) = 0xFFFFFFFFLL;
    *(result + 128) = 0xFFFFFFFFLL;
    *(result + 152) = 0xFFFFFFFFLL;
    *(result + 19200) = 0xFFFFFFFFLL;
    *(result + 80) = 0xFFFFFFFFLL;
    *(result + 19160) = 0xFFFFFFFFLL;
    *(result + 7600) = 0xFFFFFFFFLL;
    *(result + 12856) = 0xFFFFFFFFLL;
    *(result + 5816) = 0xFFFFFFFFLL;
    do
    {
      *(result + 1976 + v5) = 0xFFFFFFFFLL;
      v5 += 120;
    }

    while (v5 != 3840);
    for (i = 0; i != 1200; i += 120)
    {
      *(result + 6400 + i) = 0xFFFFFFFFLL;
    }

    for (j = 0; j != 1728; j += 72)
    {
      *(result + 20392 + j) = 0xFFFFFFFFLL;
    }

    for (k = 0; k != 3456; k += 96)
    {
      *(result + 9400 + k) = 0xFFFFFFFFLL;
    }

    v9 = (result + 15128);
    v10 = xmmword_299728F20;
    v11 = 38;
    v12 = vdupq_n_s64(0x25uLL);
    v13 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v12, v10)).u8[0])
      {
        *(v9 - 14) = 0xFFFFFFFFLL;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), *&v10)).i32[1])
      {
        *v9 = 0xFFFFFFFFLL;
      }

      v10 = vaddq_s64(v10, v13);
      v9 += 28;
      v11 -= 2;
    }

    while (v11);
    for (m = 184; m != 1976; m += 56)
    {
      *(result + m) = 0xFFFFFFFFLL;
    }

    for (n = 0; n != 560; n += 56)
    {
      *(result + 5840 + n) = 0xFFFFFFFFLL;
    }

    for (ii = 0; ii != 1152; ii += 48)
    {
      *(result + 19240 + ii) = 0xFFFFFFFFLL;
    }

    for (jj = 0; jj != 1728; jj += 48)
    {
      *(result + 7672 + jj) = 0xFFFFFFFFLL;
    }

    v18 = (result + 13000);
    v19 = xmmword_299728F20;
    v20 = 38;
    v21 = vdupq_n_s64(0x25uLL);
    v22 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v21, v19)).u8[0])
      {
        *(v18 - 7) = 0xFFFFFFFFLL;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x25uLL), *&v19)).i32[1])
      {
        *v18 = 0xFFFFFFFFLL;
      }

      v19 = vaddq_s64(v19, v22);
      v18 += 14;
      v20 -= 2;
    }

    while (v20);
    do
    {
      *(result + 22120 + v20) = 0xFFFFFFFFLL;
      v20 += 32;
    }

    while (v20 != 320);
    *(result + 7648) = 0xFFFFFFFFLL;
    *(result + 12912) = 0xFFFFFFFFLL;
    EvCrt_nd("NV_Ram_Init: Invalid NV", 4, a3, *v19.i64, v4, 22944, *(result + 22936), 14);
    result = p_NV;
  }

  v23 = 0;
  *(result + 4) = 22944;
  *(result + 22936) = 14;
  p_NV_Sect = a2;
  *a2 = xmmword_299761210;
  *(a2 + 16) = xmmword_299761220;
  *(a2 + 32) = xmmword_299761230;
  *(a2 + 48) = xmmword_299761240;
  *(a2 + 64) = xmmword_299761250;
  *(a2 + 80) = 1470649960;
  LODWORD(v24) = 42;
  *(a2 + 192) = 42;
  do
  {
    if (v24 - 1 == v23)
    {
      v25 = *(a2 + 2 * v23);
      LOWORD(v26) = *(result + 4) - v25;
    }

    else
    {
      v27 = (a2 + 2 * v23);
      v25 = *v27;
      LOWORD(v26) = v27[1] - v25;
    }

    if (v26)
    {
      v28 = 0;
      v29 = (result + v25);
      v26 = v26;
      do
      {
        v30 = *v29++;
        v28 += v30;
        --v26;
      }

      while (v26);
    }

    else
    {
      v28 = 0;
    }

    *(a2 + 128 + v23++) = v28;
    v24 = *(a2 + 192);
  }

  while (v23 < v24);
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GPS_Eph(int a1, _OWORD *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x1F)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 120 * (a1 - 1);
  v5 = v4 + 1976;
  v6 = v4 + 1984;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 112);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 40);
    a2[1] = *(v5 + 24);
    a2[2] = v10;
    *a2 = v9;
    v11 = *(v5 + 56);
    v12 = *(v5 + 72);
    v13 = *(v5 + 88);
    *(a2 + 92) = *(v5 + 100);
    a2[4] = v12;
    a2[5] = v13;
    a2[3] = v11;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_QZSS_Eph(int a1, _OWORD *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1 - 193) > 9)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 120 * (a1 - 193);
  v5 = v4 + 6400;
  v6 = v4 + 6408;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 112);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 40);
    a2[1] = *(v5 + 24);
    a2[2] = v10;
    *a2 = v9;
    v11 = *(v5 + 56);
    v12 = *(v5 + 72);
    v13 = *(v5 + 88);
    *(a2 + 92) = *(v5 + 100);
    a2[4] = v12;
    a2[5] = v13;
    a2[3] = v11;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GLON_Eph(int a1, _OWORD *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x17)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 72 * (a1 - 1);
  v5 = v4 + 20392;
  v6 = v4 + 20400;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 64);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    v11 = *(v5 + 56);
    a2[2] = *(v5 + 40);
    a2[3] = v11;
    *a2 = v9;
    a2[1] = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GAL_Eph(int a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x23)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 96 * (a1 - 1);
  v5 = v4 + 9400;
  v6 = v4 + 9408;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 88);
  if (*v5 == v3)
  {
    v9 = *(v5 + 24);
    *a2 = *(v5 + 8);
    *(a2 + 16) = v9;
    v10 = *(v5 + 40);
    v11 = *(v5 + 56);
    v12 = *(v5 + 72);
    *(a2 + 80) = *(v5 + 88);
    *(a2 + 48) = v11;
    *(a2 + 64) = v12;
    *(a2 + 32) = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_BDS_Eph(int a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x24)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 112 * (a1 - 1);
  v5 = v4 + 15016;
  v6 = v4 + 15024;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 104);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 40);
    *(a2 + 16) = *(v5 + 24);
    *(a2 + 32) = v10;
    *a2 = v9;
    v11 = *(v5 + 56);
    v12 = *(v5 + 72);
    v13 = *(v5 + 88);
    *(a2 + 96) = *(v5 + 104);
    *(a2 + 64) = v12;
    *(a2 + 80) = v13;
    *(a2 + 48) = v11;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GPS_Alm(int a1, _OWORD *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x1F)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 1);
  v5 = 55665;
  do
  {
    v6 = *(v4 + 192 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 += v6;
    ++v2;
  }

  while (v2 != 48);
  if (*(v4 + 184) == v3)
  {
    v7 = *(v4 + 192);
    v8 = *(v4 + 208);
    *(a2 + 28) = *(v4 + 220);
    *a2 = v7;
    a2[1] = v8;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_QZSS_Alm(int a1, _OWORD *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1 - 193) > 9)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 193);
  v5 = v4 + 5840;
  v6 = v4 + 5848;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 48);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *(a2 + 28) = *(v5 + 36);
    *a2 = v9;
    a2[1] = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GLON_Alm(int a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x17)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 48 * (a1 - 1);
  v5 = v4 + 19240;
  v6 = v4 + 19248;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 40);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *(a2 + 32) = *(v5 + 40);
    *a2 = v9;
    *(a2 + 16) = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_GAL_Alm(int a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x23)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 48 * (a1 - 1);
  v5 = v4 + 7672;
  v6 = v4 + 7680;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 40);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *(a2 + 32) = *(v5 + 40);
    *a2 = v9;
    *(a2 + 16) = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_BDS_Alm(int a1, _OWORD *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) > 0x24)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  v4 = p_NV + 56 * (a1 - 1);
  v5 = v4 + 12944;
  v6 = v4 + 12952;
  v7 = 55665;
  do
  {
    v8 = *(v6 + v2) ^ BYTE1(v7);
    v7 = 52845 * (v7 + v8) + 22719;
    v3 += v8;
    ++v2;
  }

  while (v2 != 48);
  if (*v5 == v3)
  {
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *(a2 + 28) = *(v5 + 36);
    *a2 = v9;
    a2[1] = v10;
    result = 1;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_Clk_Drift(int *a1, double *a2)
{
  v2 = 0;
  v3 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v4 = p_NV;
  v5 = 55665;
  do
  {
    v6 = *(p_NV + 48 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 += v6;
    ++v2;
  }

  while (v2 != 16);
  if (*(p_NV + 40) == v3 && ((v7 = *(p_NV + 48), (*a1 = v7) == 0) || (v7 - 619315200) <= 0x49D3FFFF))
  {
    *a2 = *(v4 + 56);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_ApxTime(uint64_t a1, _WORD *a2, void *a3, _DWORD *a4)
{
  v7 = 0;
  v8 = 0;
  v21[3] = *MEMORY[0x29EDCA608];
  v20 = 0.0;
  v9 = p_NV;
  v10 = 55665;
  do
  {
    v11 = *(p_NV + 16 + v7) ^ BYTE1(v10);
    v10 = 52845 * (v10 + v11) + 22719;
    v8 += v11;
    ++v7;
  }

  while (v7 != 24);
  if (*(p_NV + 8) != v8)
  {
    API_Get_UTC_Cor(1, &v20);
    *(v9 + 8) = 0xFFFFFFFFLL;
    *(v9 + 24) = 0;
    *(v9 + 28) = 0;
    v12 = -0.5;
    if (v20 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v20 + v12;
    if (v20 + v12 <= 2147483650.0)
    {
      if (v13 >= -2147483650.0)
      {
        v14 = v13;
      }

      else
      {
        LOWORD(v14) = 0;
      }
    }

    else
    {
      LOWORD(v14) = -1;
    }

    *(v9 + 30) = v14;
    *(v9 + 16) = 134217472;
  }

  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  EvLog("GN_GPS_Read_UTC:  Failed");
  API_Get_UTC_Cor(1, &v20);
  *(v9 + 8) = 0xFFFFFFFFLL;
  *(v9 + 24) = 0;
  *(v9 + 28) = 0;
  *(v9 + 16) = 134217472;
  v15 = -0.5;
  if (v20 > 0.0)
  {
    v15 = 0.5;
  }

  v16 = v20 + v15;
  if (v20 + v15 <= 2147483650.0)
  {
    if (v16 >= -2147483650.0)
    {
      v17 = v16;
    }

    else
    {
      LOWORD(v17) = 0;
    }
  }

  else
  {
    LOWORD(v17) = -1;
  }

  *(v9 + 30) = v17;
  memset(v21, 0, 24);
  Debug_Log_ApxTime(v21);
  v18 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Core_Save_Clk_Drift(int a1, int a2, double a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = p_NV;
  if (a1 && (!a2 || (a2 - 619315200) <= 0x49D3FFFF))
  {
    v5 = 0;
    LODWORD(v6) = 0;
    *(p_NV + 48) = a2;
    *(v3 + 56) = a3;
    v7 = 55665;
    do
    {
      v8 = *(v3 + 48 + v5) ^ BYTE1(v7);
      v7 = 52845 * (v7 + v8) + 22719;
      v6 = (v6 + v8);
      ++v5;
    }

    while (v5 != 16);
    *(v3 + 40) = v6;
    result = 1;
  }

  else
  {
    result = 0;
    *(p_NV + 40) = 0xFFFFFFFFLL;
    *(v3 + 56) = 0;
    *(v3 + 48) = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Save_ApxTime(unsigned int a1, int a2, __int16 a3, int a4, double a5)
{
  v40[1] = *MEMORY[0x29EDCA608];
  v40[0] = 0.0;
  v5 = p_NV;
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != 1)
  {
    v18 = 0xFFFFFFFFLL;
LABEL_39:
    *(v5 + 8) = v18;
    goto LABEL_40;
  }

  API_Get_UTC_Cor(1, v40);
  v11 = 0;
  v12 = 0;
  v13 = 55665;
  do
  {
    v14 = *(v5 + 16 + v11) ^ BYTE1(v13);
    v13 = 52845 * (v13 + v14) + 22719;
    v12 += v14;
    ++v11;
  }

  while (v11 != 24);
  if (*(v5 + 8) != v12)
  {
    *(v5 + 8) = 0xFFFFFFFFLL;
    *(v5 + 24) = 0;
    *(v5 + 28) = 0;
    v15 = -0.5;
    if (v40[0] > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v40[0] + v15;
    if (v40[0] + v15 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        LOWORD(v17) = 0;
      }
    }

    else
    {
      LOWORD(v17) = -1;
    }

    *(v5 + 30) = v17;
    *(v5 + 16) = 134217472;
  }

  if (a4)
  {
    v19 = *(v5 + 20);
    if (v19)
    {
      *(v5 + 16) += (a4 - v19) / 50000;
    }
  }

  v20 = TOW_stat_ms[a2];
  if (v20 <= *(v5 + 16))
  {
    GPS_To_UTC_Time(&v33, &v34, &v35, &v36, &v37, &v38, v39, a3, a5, v40[0]);
    v21 = 0;
    LODWORD(v18) = 0;
    v22 = -0.5;
    if (a5 * 1000.0 <= 0.0)
    {
      v23 = -0.5;
    }

    else
    {
      v23 = 0.5;
    }

    v24 = a5 * 1000.0 + v23;
    if (v24 >= -2147483650.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x80000000;
    }

    if (v24 > 2147483650.0)
    {
      v25 = 0x7FFFFFFF;
    }

    *(v5 + 24) = v25;
    *(v5 + 28) = a3;
    if (v40[0] > 0.0)
    {
      v22 = 0.5;
    }

    v26 = v40[0] + v22;
    *(v5 + 16) = v20;
    v27 = v26;
    if (v26 < -2147483650.0)
    {
      LOWORD(v27) = 0;
    }

    if (v26 <= 2147483650.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = -1;
    }

    *(v5 + 30) = v28;
    *(v5 + 20) = a4;
    v29 = 55665;
    do
    {
      v30 = *(v5 + 16 + v21) ^ BYTE1(v29);
      v29 = 52845 * (v29 + v30) + 22719;
      v18 = (v18 + v30);
      ++v21;
    }

    while (v21 != 24);
    goto LABEL_39;
  }

  v6 = 0;
LABEL_40:
  v31 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t Core_Save_GPS_Eph(unsigned int a1, char a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = p_NV;
  v4 = p_NV + 120 * a1 + 1856;
  if (a2)
  {
    *v4 = 0xFFFFFFFFLL;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 100) = 0u;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a3;
    v10 = a3[1];
    *(p_NV + 120 * a1 + 1896) = a3[2];
    *(v4 + 24) = v10;
    *(v4 + 8) = v9;
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
    *(v4 + 100) = *(a3 + 92);
    *(v4 + 88) = v13;
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    v14 = v3 + 120 * a1 + 1864;
    v15 = 55665;
    do
    {
      v16 = *(v14 + v7) ^ BYTE1(v15);
      v15 = 52845 * (v15 + v16) + 22719;
      v8 = (v8 + v16);
      ++v7;
    }

    while (v7 != 112);
    *v4 = v8;
    if (Is_GPS_BinEph_Real(a3))
    {
      EE_Set_GPS_BinEph(a1, a3);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t Core_Save_QZSS_Eph(unsigned int a1, char a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = p_NV;
  v4 = p_NV + 120 * a1 - 16760;
  if (a2)
  {
    *v4 = 0xFFFFFFFFLL;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 100) = 0u;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a3;
    v10 = a3[1];
    *(p_NV + 120 * a1 - 16720) = a3[2];
    *(v4 + 24) = v10;
    *(v4 + 8) = v9;
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
    *(v4 + 100) = *(a3 + 92);
    *(v4 + 88) = v13;
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    v14 = v3 + 120 * a1 - 16752;
    v15 = 55665;
    do
    {
      v16 = *(v14 + v7) ^ BYTE1(v15);
      v15 = 52845 * (v15 + v16) + 22719;
      v8 = (v8 + v16);
      ++v7;
    }

    while (v7 != 112);
    *v4 = v8;
    if (Is_GPS_BinEph_Real(a3))
    {
      EE_Set_GPS_BinEph(a1, a3);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t Core_Save_GAL_Eph(unsigned int a1, char a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = p_NV;
  v4 = p_NV + 96 * a1 + 9304;
  if (a2)
  {
    *v4 = 0xFFFFFFFFLL;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 87) = 0;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a3;
    *(p_NV + 96 * a1 + 9328) = *(a3 + 16);
    *(v4 + 8) = v9;
    v10 = *(a3 + 32);
    v11 = *(a3 + 48);
    v12 = *(a3 + 64);
    *(v4 + 88) = *(a3 + 80);
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    *(v4 + 40) = v10;
    v13 = v3 + 96 * a1 + 9312;
    v14 = 55665;
    do
    {
      v15 = *(v13 + v7) ^ BYTE1(v14);
      v14 = 52845 * (v14 + v15) + 22719;
      v8 = (v8 + v15);
      ++v7;
    }

    while (v7 != 88);
    *v4 = v8;
    if (Is_GAL_IntEph_Real(a3))
    {
      EE_Set_GAL_IntEph(a1, a3);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t Core_Save_BDS_Eph(unsigned int a1, char a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = p_NV;
  v4 = p_NV + 112 * a1 + 14904;
  if (a2)
  {
    *v4 = 0xFFFFFFFFLL;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a3;
    v10 = *(a3 + 16);
    *(p_NV + 112 * a1 + 14944) = *(a3 + 32);
    *(v4 + 24) = v10;
    *(v4 + 8) = v9;
    v11 = *(a3 + 48);
    v12 = *(a3 + 64);
    v13 = *(a3 + 80);
    *(v4 + 104) = *(a3 + 96);
    *(v4 + 88) = v13;
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    v14 = v3 + 112 * a1 + 14912;
    v15 = 55665;
    do
    {
      v16 = *(v14 + v7) ^ BYTE1(v15);
      v15 = 52845 * (v15 + v16) + 22719;
      v8 = (v8 + v16);
      ++v7;
    }

    while (v7 != 104);
    *v4 = v8;
    if (Is_BDS_IntEph_Real(a3))
    {
      EE_Set_BDS_IntEph(a1, a3);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL Core_Load_SBAS_Apx(int a1, int *a2, int *a3)
{
  v3 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v4 = p_NV + 22128;
  v5 = 1;
  while (1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 55665;
    v9 = p_NV + 22120 + 32 * v3;
    do
    {
      v10 = *(v4 + v6) ^ BYTE1(v8);
      v8 = 52845 * (v8 + v10) + 22719;
      v7 += v10;
      ++v6;
    }

    while (v6 != 24);
    if (*v9 == v7 && *(v9 + 12) == a1)
    {
      break;
    }

    v5 = v3 < 9;
    v4 += 32;
    if (++v3 == 10)
    {
      v5 = 0;
      goto LABEL_9;
    }
  }

  *a2 = *(v9 + 8);
  v11 = *(v9 + 16);
  a3[2] = *(v9 + 24);
  *a3 = v11;
LABEL_9:
  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Core_Save_SBAS_Apx(int a1, char a2, int a3, int *a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = p_NV + 22120;
  if (a2)
  {
    v5 = 0;
    v6 = p_NV + 22128;
    while (1)
    {
      v7 = 0;
      v8 = 0;
      v9 = 55665;
      v10 = v4 + 32 * v5;
      do
      {
        v11 = *(v6 + v7) ^ BYTE1(v9);
        v9 = 52845 * (v9 + v11) + 22719;
        v8 += v11;
        ++v7;
      }

      while (v7 != 24);
      if (*v10 == v8 && *(v10 + 12) == a1)
      {
        break;
      }

      ++v5;
      v6 += 32;
      if (v5 == 10)
      {
        goto LABEL_22;
      }
    }

    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *v10 = 0xFFFFFFFFLL;
    goto LABEL_27;
  }

  v12 = 0;
  v13 = (p_NV + 22128);
  v14 = -1;
  while (1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 55665;
    v18 = v4 + 32 * v12;
    do
    {
      v19 = v13[v15] ^ BYTE1(v17);
      v17 = 52845 * (v17 + v19) + 22719;
      v16 += v19;
      ++v15;
    }

    while (v15 != 24);
    if (*v18 == v16)
    {
      break;
    }

    v14 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    ++v12;
    v13 += 32;
    if (v12 == 10)
    {
LABEL_22:
      result = 0;
      goto LABEL_28;
    }
  }

  v20 = *(v18 + 12);
  if ((v20 - 159) < 0xFFFFFFD9 || v20 == a1)
  {
    v14 = v12;
  }

  if (v14 < 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  LODWORD(v23) = 0;
  *(v18 + 8) = a3;
  *(v18 + 12) = a1;
  v24 = *a4;
  *(v18 + 24) = a4[2];
  *(v18 + 16) = v24;
  v25 = 55665;
  v26 = 24;
  do
  {
    v27 = *v13++;
    v28 = v27 ^ BYTE1(v25);
    v25 = 52845 * (v25 + v28) + 22719;
    v23 = (v23 + v28);
    --v26;
  }

  while (v26);
  *v18 = v23;
LABEL_27:
  result = 1;
LABEL_28:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Core_Load_TTick_Cal(int a1, int a2, int a3, unsigned int *a4, unsigned __int8 *a5)
{
  v5 = 0;
  v6 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v7 = p_NV;
  v8 = p_NV + 20480;
  v9 = p_NV + 22856;
  *a4 = *(p_NV + 22856) - a3;
  *a5 = -1;
  v10 = 55665;
  do
  {
    v11 = *(v9 + v5) ^ BYTE1(v10);
    v10 = 52845 * (v10 + v11) + 22719;
    v6 += v11;
    ++v5;
  }

  while (v5 != 16);
  if (*(v7 + 22848) != v6)
  {
    goto LABEL_13;
  }

  v12 = *a4;
  if ((*a4 & 0x80000000) != 0)
  {
    v12 = -v12;
  }

  if (v12 > 0x1388)
  {
    goto LABEL_13;
  }

  v13 = 0;
  v14 = a1 - *(v8 + 2380);
  if (v14 < 14400000)
  {
    v15 = a2 - *(v8 + 2384);
    if (v15 < 14400000)
    {
      v16 = v14 - v15;
      if (v14 - v15 < 0)
      {
        v16 = v15 - v14;
      }

      if (v16 <= 0x1388)
      {
        *a5 = ((1172812403 * v14) >> 46) + (1172812403 * v14 < 0);
        v13 = 1;
        goto LABEL_14;
      }

LABEL_13:
      v13 = 0;
    }
  }

LABEL_14:
  v17 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t Core_Save_Inhib_EE(BOOL *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v33 = *MEMORY[0x29EDCA608];
  v4 = p_NV;
  v5 = 1;
  do
  {
    if (a1[v2])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v3 |= v6;
    v5 *= 2;
    ++v2;
  }

  while (v2 != 32);
  v7 = 0;
  v8 = 0;
  *(p_NV + 22880) = v3;
  v9 = 1;
  do
  {
    if (a1[v7 + 32])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 |= v10;
    v9 *= 2;
    ++v7;
  }

  while (v7 != 24);
  v11 = 0;
  v12 = 0;
  v4[2861] = v8;
  v13 = 1;
  do
  {
    if (a1[v11 + 129])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v12 |= v14;
    v13 *= 2;
    ++v11;
  }

  while (v11 != 10);
  v15 = 0;
  v16 = 0;
  v4[2862] = v12;
  v17 = 1;
  do
  {
    if (a1[v15 + 139])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v16 |= v18;
    v17 *= 2;
    ++v15;
  }

  while (v15 != 39);
  v19 = 0;
  v20 = 0;
  v4[2863] = v16;
  v21 = 1;
  do
  {
    if (a1[v19 + 92])
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v20 |= v22;
    v21 *= 2;
    ++v19;
  }

  while (v19 != 37);
  v23 = 0;
  v24 = 0;
  v4[2864] = v20;
  v25 = 1;
  do
  {
    if (a1[v23 + 56])
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v24 |= v26;
    v25 *= 2;
    ++v23;
  }

  while (v23 != 36);
  v4[2865] = v24;
  v4[2866] = a2;
  EvLog_v("Core_Save_Inhib_EE: Time 0x%X G %x R %x Q %x S %X B %X E %X", a2, v3, v8, v12, v16, v20, v24);
  v27 = 0;
  LODWORD(v28) = 0;
  v29 = 55665;
  do
  {
    v30 = *(v4 + v27 + 22880) ^ BYTE1(v29);
    v29 = 52845 * (v29 + v30) + 22719;
    v28 = (v28 + v30);
    ++v27;
  }

  while (v27 != 56);
  v4[2859] = v28;
  v31 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL Core_Load_Inhib_EE(BOOL *a1, uint64_t *a2)
{
  v2 = 0;
  LODWORD(v3) = 0;
  v29 = *MEMORY[0x29EDCA608];
  v4 = p_NV;
  v5 = 55665;
  do
  {
    v6 = *(p_NV + 22880 + v2) ^ BYTE1(v5);
    v5 = 52845 * (v5 + v6) + 22719;
    v3 = (v3 + v6);
    ++v2;
  }

  while (v2 != 56);
  v7 = *(p_NV + 22872);
  if (v7 == v3)
  {
    v8 = 0;
    v9 = *(p_NV + 22880);
    v10 = 1;
    do
    {
      if ((v10 & v9) != 0)
      {
        a1[v8] = 1;
      }

      v10 *= 2;
      ++v8;
    }

    while (v8 != 32);
    v11 = 0;
    v12 = *(v4 + 22888);
    v13 = 1;
    do
    {
      if ((v13 & v12) != 0)
      {
        a1[v11 + 32] = 1;
      }

      v13 *= 2;
      ++v11;
    }

    while (v11 != 24);
    v14 = 0;
    v15 = *(v4 + 22896);
    v16 = 1;
    do
    {
      if ((v16 & v15) != 0)
      {
        a1[v14 + 129] = 1;
      }

      v16 *= 2;
      ++v14;
    }

    while (v14 != 10);
    v17 = 0;
    v18 = *(v4 + 22904);
    v19 = 1;
    do
    {
      if ((v19 & v18) != 0)
      {
        a1[v17 + 139] = 1;
      }

      v19 *= 2;
      ++v17;
    }

    while (v17 != 39);
    v20 = 0;
    v21 = *(v4 + 22912);
    v22 = 1;
    do
    {
      if ((v22 & v21) != 0)
      {
        a1[v20 + 92] = 1;
      }

      v22 *= 2;
      ++v20;
    }

    while (v20 != 37);
    v23 = 0;
    v24 = *(v4 + 22920);
    v25 = 1;
    do
    {
      if ((v25 & v24) != 0)
      {
        a1[v23 + 56] = 1;
      }

      v25 *= 2;
      ++v23;
    }

    while (v23 != 36);
    v26 = *(v4 + 22928);
    *a2 = v26;
    EvLog_v("Core_Load_Inhib_EE: Time 0x%X G %x R %x Q %x S %X B %X E %X", v26, *(v4 + 22880), *(v4 + 22888), *(v4 + 22896), *(v4 + 22904), *(v4 + 22912), *(v4 + 22920));
  }

  result = v7 == v3;
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_GPS_Clear_NV_Data(unsigned __int8 *a1, char *a2)
{
  result = 0;
  v158 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_118;
  }

  v4 = a2;
  if (!a2)
  {
    goto LABEL_118;
  }

  v5 = 0;
  v6 = *(&xmmword_2A1926A40 + 1);
  v8 = qword_2A1926950;
  v7 = unk_2A1926958;
  v9 = qword_2A1926930;
  v10 = qword_2A1926938;
  v11 = v157;
  p_src = &__src;
  v155 = &v158;
  v153[1] = &__src;
  __src = 10;
  v12 = 42;
  memset(v157, 0, sizeof(v157));
  do
  {
    v153[0] = v11 + 1;
    *v11 = v12;
    v11 = v153[0];
    if (v153[0] >= v155)
    {
      v11 = p_src;
      v153[0] = p_src;
    }

    v12 = asc_2997BC75C[++v5];
  }

  while (v5 != 8);
  v153[0] = v11 + 1;
  *v11 = 10;
  if (v153[0] >= v155)
  {
    v153[0] = p_src;
  }

  v13 = mach_continuous_time();
  sprintf_10u(v153, (*&g_MacClockTicksToMsRelation * v13));
  v14 = v153[0]++;
  v15 = 32;
  *v14 = 32;
  if (v153[0] >= v155)
  {
    v16 = p_src;
  }

  else
  {
    v16 = v153[0];
  }

  v17 = 1u;
  do
  {
    v153[0] = v16 + 1;
    *v16 = v15;
    v16 = v153[0];
    if (v153[0] >= v155)
    {
      v16 = p_src;
      v153[0] = p_src;
    }

    v15 = a0GnGpsClearNvD[v17++];
  }

  while (v17 != 31);
  if (!strcmp("VHOT", v4) || !strcmp("HOT", v4))
  {
    v152 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v33 = 0;
    goto LABEL_52;
  }

  if (!strcmp("HOST", v4))
  {
    v152 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v33 = 1;
    goto LABEL_52;
  }

  v151 = v9;
  if (!strcmp("WARM", v4))
  {
    v24 = 0;
    v19 = 0;
    v20 = 0;
    v26 = 0;
    v27 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v33 = 0;
    goto LABEL_124;
  }

  if (!strcmp("COLD", v4))
  {
    v32 = 0;
    v26 = 0;
    v19 = 0;
    *(v6 + 8) = 0;
    v30 = 1;
    v31 = 1;
    v27 = 1;
    v25 = 1;
    v20 = 1;
LABEL_122:
    v24 = 1;
LABEL_123:
    *(v6 + 10) = 0;
    *(v6 + 297) = 0;
    *(v8 + 4) = 0;
    v80 = vdupq_n_s64(0x4163125300000000uLL);
    *(v8 + 800) = v80;
    *(v8 + 816) = v80;
    *(v8 + 832) = 0x4163125300000000;
    *(v8 + 896) = v80;
    *(v8 + 912) = 0;
    *(v7 + 4) = 0;
    *(v7 + 800) = v80;
    *(v7 + 816) = v80;
    *(v7 + 832) = 0x4163125300000000;
    *(v7 + 896) = v80;
    *(v7 + 912) = 0;
    g_GN_GNSS_Nav_Data = 0;
    v33 = 1;
    if ((v25 & 1) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_124;
  }

  if (!strcmp("FACT", v4))
  {
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v27 = 1;
    v26 = 1;
    v25 = 1;
    v20 = 1;
    v19 = 1;
    goto LABEL_122;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = v4[v18];
    if (v29 > 0x48)
    {
      if (v4[v18] > 0x53u)
      {
        switch(v29)
        {
          case 'T':
            v27 = 1;
            break;
          case 'U':
            v22 = 1;
            break;
          case 'V':
            v20 = 1;
            break;
          default:
            goto LABEL_165;
        }
      }

      else if (v29 == 73 || v29 == 75)
      {
        v23 = 1;
      }

      else
      {
        if (v29 != 80)
        {
          goto LABEL_165;
        }

        v28 = 1;
      }

      goto LABEL_47;
    }

    if (v4[v18] > 0x44u)
    {
      switch(v29)
      {
        case 'E':
          v25 = 1;
          break;
        case 'F':
          v26 = 1;
          break;
        case 'H':
          v21 = 1;
          break;
        default:
          goto LABEL_165;
      }

      goto LABEL_47;
    }

    if (v29 == 65)
    {
      v24 = 1;
      goto LABEL_47;
    }

    if (v29 != 67)
    {
      break;
    }

    v19 = 1;
LABEL_47:
    if (++v18 == 16)
    {
      goto LABEL_48;
    }
  }

  if (v4[v18])
  {
LABEL_165:
    v122 = 70;
    v123 = 1u;
    do
    {
      v153[0] = v16 + 1;
      *v16 = v122;
      v16 = v153[0];
      if (v153[0] >= v155)
      {
        v16 = p_src;
        v153[0] = p_src;
      }

      v122 = aFailedInvalidI[v123++];
    }

    while (v123 != 27);
    v124 = *v4;
    if (*v4)
    {
      v125 = (v4 + 1);
      do
      {
        v153[0] = v16 + 1;
        *v16 = v124;
        v16 = v153[0];
        if (v153[0] >= v155)
        {
          v16 = p_src;
          v153[0] = p_src;
        }

        v126 = *v125++;
        v124 = v126;
      }

      while (v126);
    }

    v127 = 34;
    v128 = 1u;
    do
    {
      v153[0] = v16 + 1;
      *v16 = v127;
      v16 = v153[0];
      if (v153[0] >= v155)
      {
        v16 = p_src;
        v153[0] = p_src;
      }

      v127 = asc_2997BC7A3[v128++];
    }

    while (v128 != 4);
    v129 = *(&xmmword_2A1926A70 + 1);
    v130 = v16 - p_src;
    v131 = *(*(&xmmword_2A1926A70 + 1) + 24);
    v132 = **(&xmmword_2A1926A70 + 1);
    v133 = &__src;
    do
    {
      v134 = v131 - v132;
      if (v130 >= v134)
      {
        v135 = v134;
      }

      else
      {
        v135 = v130;
      }

      memcpy(v132, v133, v135);
      v132 = (*v129 + v135);
      *v129 = v132;
      v131 = v129[3];
      if (v132 >= v131)
      {
        v132 = v129[2];
        *v129 = v132;
      }

      v133 += v135;
      v64 = __OFSUB__(v130, v135);
      v130 -= v135;
    }

    while (!((v130 < 0) ^ v64 | (v130 == 0)));
    v136 = xmmword_2A1926A70;
    v137 = LODWORD(v153[0]) - p_src;
    v138 = *(xmmword_2A1926A70 + 24);
    v139 = *xmmword_2A1926A70;
    v140 = &__src;
    do
    {
      v141 = v138 - v139;
      if (v137 >= v141)
      {
        v142 = v141;
      }

      else
      {
        v142 = v137;
      }

      memcpy(v139, v140, v142);
      v139 = (*v136 + v142);
      *v136 = v139;
      v138 = v136[3];
      if (v139 >= v138)
      {
        v139 = v136[2];
        *v136 = v139;
      }

      v140 += v142;
      v64 = __OFSUB__(v137, v142);
      v137 -= v142;
    }

    while (!((v137 < 0) ^ v64 | (v137 == 0)));
    v143 = xmmword_2A1926A80;
    v144 = LODWORD(v153[0]) - p_src;
    v145 = *(xmmword_2A1926A80 + 24);
    v146 = *xmmword_2A1926A80;
    v147 = &__src;
    do
    {
      v148 = v145 - v146;
      if (v144 >= v148)
      {
        v149 = v148;
      }

      else
      {
        v149 = v144;
      }

      memcpy(v146, v147, v149);
      v146 = (*v143 + v149);
      *v143 = v146;
      v145 = v143[3];
      if (v146 >= v145)
      {
        v146 = v143[2];
        *v143 = v146;
      }

      v147 += v149;
      v64 = __OFSUB__(v144, v149);
      v144 -= v149;
    }

    while (!((v144 < 0) ^ v64 | (v144 == 0)));
    GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
    GNSS_Event_Log_Ctl(xmmword_2A1926A70);
    GNSS_Event_Log_Ctl(xmmword_2A1926A80);
    result = 0;
    goto LABEL_118;
  }

LABEL_48:
  v30 = v24 & v21;
  v31 = v24 & v22;
  v32 = v24 & v23;
  if (v28)
  {
    goto LABEL_123;
  }

  v33 = 0;
  if ((v25 & 1) == 0)
  {
LABEL_155:
    v35 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_156;
    }

LABEL_135:
    v101 = (v10 + 7016);
    v102 = 184;
    do
    {
      v103 = &a1[v102];
      *(v103 + 12) = 0;
      *(v103 + 1) = 0uLL;
      *(v103 + 2) = 0uLL;
      *v103 = 0uLL;
      *(v101 + 28) = 0uLL;
      v102 += 56;
      *v101 = 0uLL;
      v101[1] = 0uLL;
      v101 = (v101 + 44);
    }

    while (v102 != 1976);
    v104 = 0;
    *(v6 + 63) = 0u;
    *(v6 + 47) = 0u;
    v105 = a1 + 5840;
    do
    {
      *(v105 + 12) = 0;
      *(v105 + 1) = 0uLL;
      *(v105 + 2) = 0uLL;
      *v105 = 0uLL;
      v105 += 56;
      v106 = (v10 + 10768 + v104);
      *(v106 + 28) = 0uLL;
      v104 += 44;
      *v106 = 0uLL;
      v106[1] = 0uLL;
    }

    while (v104 != 440);
    v107 = 0;
    *(v6 + 97) = 0;
    *(v6 + 89) = 0;
    v108 = a1 + 19240;
    do
    {
      *(v108 + 28) = 0uLL;
      *v108 = 0uLL;
      *(v108 + 1) = 0uLL;
      v108 += 48;
      v109 = v10 + 15352 + v107;
      *(v109 + 32) = 0;
      v107 += 36;
      *v109 = 0uLL;
      *(v109 + 16) = 0uLL;
    }

    while (v107 != 864);
    v110 = 0;
    *(v6 + 131) = 0;
    *(v6 + 123) = 0;
    *(v6 + 139) = 0;
    v111 = v10 + 23072;
    do
    {
      v112 = &a1[v110 + 7672];
      *(v112 + 28) = 0uLL;
      *v112 = 0uLL;
      *(v112 + 1) = 0uLL;
      *(v111 + 31) = 0;
      v110 += 48;
      *v111 = 0uLL;
      *(v111 + 16) = 0uLL;
      v111 += 36;
    }

    while (v110 != 1728);
    v113 = 0;
    *(v6 + 218) = 0;
    *(v6 + 202) = 0u;
    *(v6 + 186) = 0u;
    v114 = a1 + 12944;
    do
    {
      *(v114 + 12) = 0;
      *(v114 + 1) = 0uLL;
      *(v114 + 2) = 0uLL;
      *v114 = 0uLL;
      v114 += 56;
      v115 = (v10 + 31920 + v113);
      *(v115 + 28) = 0uLL;
      v113 += 44;
      *v115 = 0uLL;
      v115[1] = 0uLL;
    }

    while (v113 != 1628);
    v116 = 0;
    *(v6 + 289) = 0;
    *(v6 + 260) = 0u;
    *(v6 + 276) = 0u;
    do
    {
      v117 = &a1[v116 + 22120];
      *v117 = 0;
      *(v117 + 1) = 0;
      *(v117 + 6) = 0;
      *(v117 + 2) = 0;
      v116 += 32;
    }

    while (v116 != 320);
    *(v6 + 148) = 0;
    *(v10 + 37876) = 0;
    *(v10 + 37844) = 0u;
    *(v10 + 37860) = 0u;
    *(v10 + 37812) = 0u;
    *(v10 + 37828) = 0u;
    *(v10 + 37780) = 0u;
    *(v10 + 37796) = 0u;
    *(v10 + 37748) = 0u;
    *(v10 + 37764) = 0u;
    *(v10 + 37716) = 0u;
    *(v10 + 37732) = 0u;
    *(v10 + 37700) = 0u;
    v152 = 1;
    if ((v32 & 1) == 0)
    {
      goto LABEL_148;
    }

LABEL_157:
    *(a1 + 18) = 0;
    *(a1 + 8) = 0u;
    *(v6 + 13) = 0;
    *(v10 + 8424) = 0u;
    v38 = 1;
    if ((v31 & 1) == 0)
    {
      goto LABEL_158;
    }

LABEL_149:
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(v6 + 14) = 0;
    *(a1 + 4808) = 0;
    *(a1 + 1201) = 0u;
    *(a1 + 1200) = 0u;
    *(v6 + 147) = 0;
    *(a1 + 3234) = 0;
    *(a1 + 1616) = 0;
    *(a1 + 807) = 0u;
    *(v6 + 222) = 0;
    *(a1 + 958) = 0;
    *(a1 + 478) = 0u;
    *(v6 + 149) = 0;
    *(v10 + 8440) = 0u;
    *(v10 + 8456) = 0;
    *(v10 + 16216) = 0;
    *(v10 + 16224) = 0u;
    *(v10 + 16240) = 0;
    *(v10 + 24368) = 0;
    *(v10 + 24374) = 0;
    v118 = v10 + 33548;
    *(v10 + 33548) = 0u;
    v39 = 1;
    *(v118 + 16) = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_150;
    }

LABEL_159:
    *(a1 + 108) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 19160) = 0u;
    *(a1 + 19176) = 0u;
    *(a1 + 4798) = 0;
    *(a1 + 5816) = 0u;
    *(a1 + 5830) = 0;
    *(a1 + 475) = 0u;
    *(a1 + 476) = 0u;
    *(a1 + 477) = 0u;
    *(a1 + 12856) = 0u;
    *(a1 + 12872) = 0u;
    *(a1 + 12888) = 0u;
    a1[12904] = 0;
    v40 = 1;
    *(v6 + 297) = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_160;
    }

LABEL_151:
    *(a1 + 22838) = 0;
    *(a1 + 22808) = 0u;
    *(a1 + 22824) = 0u;
    *(a1 + 22776) = 0u;
    *(a1 + 22792) = 0u;
    *(a1 + 22744) = 0u;
    *(a1 + 22760) = 0u;
    *(a1 + 22712) = 0u;
    *(a1 + 22728) = 0u;
    *(a1 + 22680) = 0u;
    *(a1 + 22696) = 0u;
    *(a1 + 22648) = 0u;
    *(a1 + 22664) = 0u;
    *(a1 + 22616) = 0u;
    *(a1 + 22632) = 0u;
    *(a1 + 22584) = 0u;
    *(a1 + 22600) = 0u;
    *(a1 + 22552) = 0u;
    *(a1 + 22568) = 0u;
    *(a1 + 22520) = 0u;
    *(a1 + 22536) = 0u;
    *(a1 + 22488) = 0u;
    *(a1 + 22504) = 0u;
    *(a1 + 22456) = 0u;
    *(a1 + 22472) = 0u;
    v34 = 1;
    *(a1 + 22440) = 0u;
    if ((v26 & 1) == 0)
    {
      goto LABEL_152;
    }

LABEL_161:
    *(a1 + 9) = 0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(v6 + 8) = 0;
    v36 = 1;
    if ((v27 & 1) == 0)
    {
      goto LABEL_162;
    }

LABEL_153:
    v150 = v19;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *(a1 + 8) = 0;
    *(a1 + 3) = 0;
    *(v6 + 148) = 0;
    *(v6 + 297) = 0;
    *(v6 + 1) = 0;
    *(v6 + 5) = 0;
    v119 = v33;
    v120 = v4;
    v121 = v38;
    mach_continuous_time();
    v38 = v121;
    v4 = v120;
    v33 = v119;
    *v151 = 0;
    *(v151 + 4) = 0;
    *(v151 + 64) = 0;
    v37 = 1;
    *(v151 + 60) = 0;
    if (v150)
    {
      goto LABEL_163;
    }

    goto LABEL_52;
  }

LABEL_124:
  v81 = 0;
  v82 = v10;
  do
  {
    v83 = &a1[v81 + 1976];
    *(v83 + 28) = 0;
    *(v83 + 5) = 0uLL;
    *(v83 + 6) = 0uLL;
    *(v83 + 3) = 0uLL;
    *(v83 + 4) = 0uLL;
    *(v83 + 1) = 0uLL;
    *(v83 + 2) = 0uLL;
    *v83 = 0uLL;
    *(v82 + 196) = 0uLL;
    *(v82 + 184) = 0uLL;
    *(v82 + 168) = 0uLL;
    *(v82 + 152) = 0uLL;
    *(v82 + 136) = 0uLL;
    *(v82 + 120) = 0uLL;
    *(v82 + 104) = 0uLL;
    v84 = v82 + 3560;
    *(v82 + 3560) = 0uLL;
    *(v82 + 3576) = 0uLL;
    *(v82 + 3592) = 0uLL;
    *(v82 + 3608) = 0uLL;
    *(v82 + 3624) = 0uLL;
    *(v82 + 3640) = 0uLL;
    v81 += 120;
    v82 += 108;
    *(v84 + 92) = 0uLL;
  }

  while (v81 != 3840);
  v85 = 0;
  *(v6 + 31) = 0u;
  *(v6 + 15) = 0u;
  v86 = (v10 + 8608);
  do
  {
    v87 = &a1[v85 + 6400];
    *(v87 + 28) = 0;
    *(v87 + 5) = 0uLL;
    *(v87 + 6) = 0uLL;
    *(v87 + 3) = 0uLL;
    *(v87 + 4) = 0uLL;
    *(v87 + 1) = 0uLL;
    *(v87 + 2) = 0uLL;
    *v87 = 0uLL;
    *(v86 + 92) = 0uLL;
    v86[4] = 0uLL;
    v86[5] = 0uLL;
    v86[2] = 0uLL;
    v86[3] = 0uLL;
    *v86 = 0uLL;
    v86[1] = 0uLL;
    v88 = v86 + 1080;
    *(v86 + 1080) = 0uLL;
    *(v86 + 1096) = 0uLL;
    *(v86 + 1112) = 0uLL;
    *(v86 + 1128) = 0uLL;
    *(v86 + 1144) = 0uLL;
    *(v86 + 1160) = 0uLL;
    v85 += 120;
    v86 = (v86 + 108);
    *(v88 + 92) = 0uLL;
  }

  while (v85 != 1200);
  v89 = 0;
  *(v6 + 87) = 0;
  *(v6 + 79) = 0;
  v90 = (v10 + 11224);
  v91 = (v10 + 12760);
  do
  {
    v92 = &a1[v89 + 20392];
    *(v92 + 8) = 0;
    *(v92 + 2) = 0uLL;
    *(v92 + 3) = 0uLL;
    *v92 = 0uLL;
    *(v92 + 1) = 0uLL;
    *(v90 + 46) = 0uLL;
    v90[1] = 0uLL;
    v90[2] = 0uLL;
    *v90 = 0uLL;
    v90 += 4;
    *(v91 + 92) = 0uLL;
    v91[4] = 0uLL;
    v91[5] = 0uLL;
    v91[2] = 0uLL;
    v91[3] = 0uLL;
    v89 += 72;
    *v91 = 0uLL;
    v91[1] = 0uLL;
    v91 = (v91 + 108);
  }

  while (v89 != 1728);
  v93 = 0;
  *(v6 + 107) = 0;
  *(v6 + 99) = 0;
  *(v6 + 115) = 0;
  v94 = v10 + 16736;
  do
  {
    v95 = &a1[v93 + 9400];
    *(v95 + 4) = 0uLL;
    *(v95 + 5) = 0uLL;
    *(v95 + 2) = 0uLL;
    *(v95 + 3) = 0uLL;
    *v95 = 0uLL;
    *(v95 + 1) = 0uLL;
    *(v94 + 79) = 0;
    *(v94 + 48) = 0uLL;
    *(v94 + 64) = 0uLL;
    *(v94 + 16) = 0uLL;
    *(v94 + 32) = 0uLL;
    *v94 = 0uLL;
    v96 = v94 + 3168;
    *(v94 + 3168) = 0uLL;
    *(v94 + 3184) = 0uLL;
    *(v94 + 3200) = 0uLL;
    *(v94 + 3216) = 0uLL;
    *(v94 + 3232) = 0uLL;
    v93 += 96;
    v94 += 88;
    *(v96 + 79) = 0;
  }

  while (v93 != 3456);
  *(v6 + 182) = 0;
  *(v6 + 166) = 0u;
  *(v6 + 150) = 0u;
  v97 = a1 + 15016;
  v98 = v10 + 28220;
  v99 = 37;
  do
  {
    *(v97 + 92) = 0uLL;
    *(v97 + 4) = 0uLL;
    *(v97 + 5) = 0uLL;
    *(v97 + 2) = 0uLL;
    *(v97 + 3) = 0uLL;
    *v97 = 0uLL;
    *(v97 + 1) = 0uLL;
    v97 += 112;
    v100 = v98 - 3700;
    *(v100 + 96) = 0;
    *(v100 + 64) = 0uLL;
    *(v100 + 80) = 0uLL;
    *(v100 + 32) = 0uLL;
    *(v100 + 48) = 0uLL;
    *v98 = 0uLL;
    *(v98 + 16) = 0uLL;
    *(v98 + 32) = 0uLL;
    *(v98 + 48) = 0uLL;
    *(v98 + 64) = 0uLL;
    *(v98 + 80) = 0uLL;
    *(v98 + 96) = 0;
    v98 += 100;
    *v100 = 0uLL;
    *(v100 + 16) = 0uLL;
    --v99;
  }

  while (v99);
  *(v6 + 252) = 0;
  *(v6 + 239) = 0u;
  *(v6 + 223) = 0u;
  *(v6 + 148) = 0;
  *(v10 + 38928) = 0u;
  *(v10 + 38912) = 0u;
  *(v10 + 38896) = 0u;
  *(v10 + 38880) = 0u;
  *(v10 + 38864) = 0u;
  *(v10 + 38848) = 0u;
  *(v10 + 38832) = 0u;
  *(v10 + 38816) = 0u;
  *(v10 + 38800) = 0u;
  *(v10 + 38784) = 0u;
  *(v10 + 38768) = 0u;
  *(v10 + 38944) = 0;
  *(v10 + 39124) = 0u;
  *(v10 + 39140) = 0u;
  *(v10 + 39156) = 0u;
  *(v10 + 39172) = 0u;
  *(v10 + 39188) = 0u;
  *(v10 + 39204) = 0u;
  *(v10 + 39220) = 0u;
  *(v10 + 39236) = 0u;
  *(v10 + 39252) = 0u;
  *(v10 + 39268) = 0u;
  *(v10 + 39284) = 0u;
  *(v10 + 39300) = 0;
  *(v10 + 37696) = 0;
  *(v10 + 37680) = 0u;
  *(v10 + 37664) = 0u;
  *(v10 + 37648) = 0u;
  *(v10 + 37632) = 0u;
  *(v10 + 37616) = 0u;
  *(v10 + 37600) = 0u;
  *(v10 + 37584) = 0u;
  *(v10 + 37568) = 0u;
  *(v10 + 37552) = 0u;
  *(v10 + 37536) = 0u;
  *(v10 + 37520) = 0u;
  *(v10 + 37504) = 0u;
  *(v10 + 37488) = 0u;
  *(v10 + 37472) = 0u;
  *(v10 + 37456) = 0u;
  *(v10 + 37440) = 0u;
  *(v10 + 37424) = 0u;
  *(v10 + 37408) = 0u;
  *(v10 + 37392) = 0u;
  *(v10 + 37376) = 0u;
  *(v10 + 37360) = 0u;
  v35 = 1;
  *(v10 + 37344) = 0u;
  if (v24)
  {
    goto LABEL_135;
  }

LABEL_156:
  v152 = 0;
  if (v32)
  {
    goto LABEL_157;
  }

LABEL_148:
  v38 = 0;
  if (v31)
  {
    goto LABEL_149;
  }

LABEL_158:
  v39 = 0;
  if (v30)
  {
    goto LABEL_159;
  }

LABEL_150:
  v40 = 0;
  if (v20)
  {
    goto LABEL_151;
  }

LABEL_160:
  v34 = 0;
  if (v26)
  {
    goto LABEL_161;
  }

LABEL_152:
  v36 = 0;
  if (v27)
  {
    goto LABEL_153;
  }

LABEL_162:
  v37 = 0;
  if (v19)
  {
LABEL_163:
    *(a1 + 1428) = 0u;
    *(a1 + 5716) = 0;
  }

LABEL_52:
  if (g_GncPStateInfo != 8)
  {
    v41 = v35;
    v42 = a1;
    v43 = v33;
    v44 = v38;
    GncP07_08WriteNVStore(0x59A0uLL, v42);
    v38 = v44;
    v35 = v41;
    v33 = v43;
  }

  if (((v34 | v36 | v40 | v39 | v38 | v152 | v35 | v37 | v33) & 1) == 0)
  {
    goto LABEL_74;
  }

  if (g_GN_GPS_Data_p_list <= 5)
  {
    if ((g_GN_GPS_Data_p_list - 1) < 3)
    {
      goto LABEL_74;
    }

    if (g_GN_GPS_Data_p_list == 4)
    {
LABEL_71:
      v45 = 1;
      goto LABEL_73;
    }

    if (g_GN_GPS_Data_p_list == 5)
    {
      goto LABEL_69;
    }

    goto LABEL_120;
  }

  if (g_GN_GPS_Data_p_list > 8)
  {
    if (g_GN_GPS_Data_p_list == 9)
    {
      goto LABEL_72;
    }

    if (g_GN_GPS_Data_p_list == 10 || g_GN_GPS_Data_p_list == 11)
    {
      goto LABEL_69;
    }

LABEL_120:
    EvCrt_Illegal_Default("GN_GPS_Clear_NV_Data", 0xCE4u);
    goto LABEL_74;
  }

  if (g_GN_GPS_Data_p_list == 6)
  {
LABEL_72:
    v45 = 3;
    goto LABEL_73;
  }

  if (g_GN_GPS_Data_p_list == 7)
  {
    goto LABEL_71;
  }

  if (g_GN_GPS_Data_p_list != 8)
  {
    goto LABEL_120;
  }

LABEL_69:
  v45 = 2;
LABEL_73:
  LODWORD(g_GN_GPS_Data_p_list) = v45;
LABEL_74:
  v46 = 73;
  v47 = v153[0];
  v48 = 1u;
  do
  {
    v153[0] = v47 + 1;
    *v47 = v46;
    v47 = v153[0];
    if (v153[0] >= v155)
    {
      v47 = p_src;
      v153[0] = p_src;
    }

    v46 = aItems[v48++];
  }

  while (v48 != 10);
  v49 = *v4;
  if (*v4)
  {
    v50 = (v4 + 1);
    do
    {
      v153[0] = v47 + 1;
      *v47 = v49;
      v47 = v153[0];
      if (v153[0] >= v155)
      {
        v47 = p_src;
        v153[0] = p_src;
      }

      v51 = *v50++;
      v49 = v51;
    }

    while (v51);
  }

  v52 = 0;
  v53 = 34;
  do
  {
    v153[0] = v47 + 1;
    *v47 = v53;
    v47 = v153[0];
    if (v153[0] >= v155)
    {
      v47 = p_src;
      v153[0] = p_src;
    }

    v53 = asc_2997BC7C6[++v52];
  }

  while (v52 != 2);
  v54 = 0;
  v55 = 42;
  do
  {
    v153[0] = v47 + 1;
    *v47 = v55;
    v47 = v153[0];
    if (v153[0] >= v155)
    {
      v47 = p_src;
      v153[0] = p_src;
    }

    v55 = asc_2997BC75C[++v54];
  }

  while (v54 != 8);
  v153[0] = v47 + 1;
  *v47 = 10;
  v56 = v153[0];
  if (v153[0] >= v155)
  {
    v153[0] = p_src;
    v56 = p_src;
  }

  v57 = *(&xmmword_2A1926A70 + 1);
  v58 = v56 - p_src;
  v59 = *(*(&xmmword_2A1926A70 + 1) + 24);
  v60 = **(&xmmword_2A1926A70 + 1);
  v61 = &__src;
  do
  {
    v62 = v59 - v60;
    if (v58 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v58;
    }

    memcpy(v60, v61, v63);
    v60 = (*v57 + v63);
    *v57 = v60;
    v59 = v57[3];
    if (v60 >= v59)
    {
      v60 = v57[2];
      *v57 = v60;
    }

    v61 += v63;
    v64 = __OFSUB__(v58, v63);
    v58 -= v63;
  }

  while (!((v58 < 0) ^ v64 | (v58 == 0)));
  v65 = xmmword_2A1926A70;
  v66 = LODWORD(v153[0]) - p_src;
  v67 = *(xmmword_2A1926A70 + 24);
  v68 = *xmmword_2A1926A70;
  v69 = &__src;
  do
  {
    v70 = v67 - v68;
    if (v66 >= v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = v66;
    }

    memcpy(v68, v69, v71);
    v68 = (*v65 + v71);
    *v65 = v68;
    v67 = v65[3];
    if (v68 >= v67)
    {
      v68 = v65[2];
      *v65 = v68;
    }

    v69 += v71;
    v64 = __OFSUB__(v66, v71);
    v66 -= v71;
  }

  while (!((v66 < 0) ^ v64 | (v66 == 0)));
  v72 = xmmword_2A1926A80;
  v73 = LODWORD(v153[0]) - p_src;
  v74 = *(xmmword_2A1926A80 + 24);
  v75 = *xmmword_2A1926A80;
  v76 = &__src;
  do
  {
    v77 = v74 - v75;
    if (v73 >= v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = v73;
    }

    memcpy(v75, v76, v78);
    v75 = (*v72 + v78);
    *v72 = v75;
    v74 = v72[3];
    if (v75 >= v74)
    {
      v75 = v72[2];
      *v72 = v75;
    }

    v76 += v78;
    v64 = __OFSUB__(v73, v78);
    v73 -= v78;
  }

  while (!((v73 < 0) ^ v64 | (v73 == 0)));
  GNSS_Event_Log_Ctl(*(&xmmword_2A1926A70 + 1));
  GNSS_Nav_Debug_Ctl(xmmword_2A1926A70);
  GNSS_GNB_Debug_Ctl(xmmword_2A1926A80);
  result = 1;
LABEL_118:
  v79 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Horz_Meas_Update(unsigned int a1, double *a2, double *a3, unsigned int a4, double *a5, _BOOL8 a6, _WORD *a7)
{
  v40[33] = *MEMORY[0x29EDCA608];
  if (*(a5 + 1) >= 1 && (*(a5 + 16) = 0, *a5 == 1))
  {
    v36 = 0.0;
    v11 = a5[8];
    v40[0] = 0.0;
    sinval = 0.0;
    cosval = 1.0;
    if (!R8_EQ(a5 + 8, v40))
    {
      v14 = __sincos_stret(v11);
      cosval = v14.__cosval;
      v40[0] = 1.57079633;
      if (R8_EQ(a5 + 8, v40))
      {
        cosval = 0.0;
        sinval = 1.0;
      }

      else
      {
        sinval = v14.__sinval;
      }
    }

    v15 = *a2;
    v16 = __sincos_stret(*a2);
    v17 = 0;
    v18 = 1.0 / sqrt(v16.__sinval * v16.__sinval * -0.00669437999 + 1.0);
    v19 = a2[2];
    v20 = v16.__cosval * (v19 + v18 * 6378137.0);
    if (v20 < 1.0)
    {
      v20 = 1.0;
    }

    v21 = a5[4];
    a5[11] = (v15 - a5[3]) * (v19 + v18 * (v18 * v18) * 6335439.33);
    a5[12] = (a2[1] - v21) * v20;
    v22 = 1;
    v23 = a5 + 6;
    do
    {
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      v24 = a3[2];
      v25 = a3[1];
      *(v37 + a1) = sinval * a3[3] + cosval * *a3;
      v26 = a3[5];
      *(v37 + a1 + 1) = sinval * a3[4] + cosval * v25;
      v27 = v22;
      *(&v37[1] + a1) = sinval * v26 + cosval * v24;
      *(v37 + a4) = sinval * a5[12] + cosval * a5[11];
      umeas(a6, a4, v23[v17], v37, v40, v39, &v36, a5[13]);
      v28 = v36;
      if (v36 <= 0.0)
      {
        *a5 = 0;
        *(a5 + 16) = 1;
        ++*a7;
      }

      else
      {
        v28 = v23[v17] * (v36 * (v40[a4] * v40[a4]));
      }

      v22 = 0;
      a5[v17 + 14] = v28;
      v29 = -sinval;
      v17 = 1;
      sinval = cosval;
      cosval = v29;
    }

    while ((v27 & 1) != 0);
    v30 = *a5;
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x29EDCA608];
  return v30 & 1;
}

void NK_Final_Check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, double a7, double a8)
{
  v426 = *MEMORY[0x29EDCA608];
  v12 = a2 + 22920;
  *(a2 + 31296) = *(a2 + 800);
  v13 = *(a2 + 816);
  *(a2 + 31320) = *(a2 + 912);
  *(a2 + 31312) = v13;
  *(a2 + 31336) = *(a2 + 928);
  v14 = *(a2 + 24777);
  v15 = v14 - *(a2 + 24778);
  v17 = v14 > 1 && v15 == 2;
  v18 = v14 - v17;
  v398 = *(a2 + 22992) == 1 && (*(a2 + 23000) - 3) < 2;
  if (*(a2 + 964) > 1)
  {
    v25 = a1;
    v26 = *(a1 + 11032);
    v19 = v18;
    if (v26 >= 0x3D)
    {
      if (v26 < 0x12D)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      *(a2 + 964) = v27;
      v19 = v18;
    }
  }

  else
  {
    v19 = v14 - v17;
    if (v18 <= 3)
    {
      v20 = 0;
      v21 = 0;
      v22 = a2 + 3056;
      do
      {
        if (*(v22 + v20 - 96) == 1)
        {
          v23 = *(v22 + 4 * v20);
          if ((v23 - 1) >= 0x1D)
          {
            if (v23)
            {
              v24 = v18;
              EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
              v18 = v24;
            }

            else
            {
              ++v21;
            }
          }
        }

        ++v20;
      }

      while (v20 != 48);
      v29 = v21 > 1 && v15 == 2;
      v19 = v21 - v29;
    }

    v25 = a1;
    if (v19 >= 4 && (*(a1 + 232) & 1) != 0)
    {
      goto LABEL_37;
    }

    if (*(v12 + 72) == 1 && *(v12 + 76) == 1)
    {
      v30 = !v398;
      if (*(a2 + 23040) > 900000000.0)
      {
        v30 = 1;
      }

      if ((v30 & 1) == 0)
      {
LABEL_37:
        *(a2 + 964) = 2;
        *(a1 + 235) = 0;
      }
    }
  }

  v372 = v18;
  v379 = v19;
  if ((*(v25 + 128) & 1) == 0)
  {
    v31 = 0;
    while (*(a2 + 24136 + v31) <= 1.0e18)
    {
      v31 += 8;
      if (v31 == 88)
      {
        goto LABEL_46;
      }
    }

    *(v25 + 128) = 1;
    *(v25 + 132) = 80;
  }

LABEL_46:
  v32 = *&ClkBiasOrigVar[*(a2 + 640)];
  *(a2 + 25600) = v32;
  v33 = (a2 + 24136);
  *(v12 + 2672) = 0;
  *(a2 + 25608) = 0;
  *(v12 + 2676) = 255;
  *&v420 = 0;
  v388 = (a2 + 736);
  if (R8_EQ((a2 + 736), &v420) || (v34 = *v33, *v33 >= v32))
  {
    v35 = 0;
    v36 = 0.0;
  }

  else
  {
    v35 = 1;
    *(v12 + 2672) = 1;
    v36 = *(a2 + 736);
    *(a2 + 25608) = v36;
    *(v12 + 2676) = 0;
    *(a2 + 25600) = v34;
    v32 = v34;
  }

  *&v420 = 0;
  if (!R8_EQ((a2 + 744), &v420))
  {
    v37 = *(a2 + 24144);
    if (v37 < v32)
    {
      v35 = 2;
      *(v12 + 2672) = 2;
      v36 = *(a2 + 744);
      *(a2 + 25608) = v36;
      *(v12 + 2676) = 1;
      *(a2 + 25600) = v37;
      v32 = v37;
    }
  }

  *&v420 = 0;
  if (R8_EQ((a2 + 752), &v420) || (v39 = *(a2 + 24152), v39 >= v32))
  {
    if (!v35)
    {
      v40 = a1;
      goto LABEL_105;
    }

    *&v420 = 0;
    v40 = a1;
    if (R8_EQ((a2 + 25608), &v420))
    {
      goto LABEL_105;
    }

    if (v35 == 1)
    {
      v42 = 0.0;
      goto LABEL_68;
    }

    v35 = 2;
    v41 = 1;
  }

  else
  {
    *(v12 + 2672) = 4;
    v36 = *(a2 + 752);
    *(a2 + 25608) = v36;
    *(v12 + 2676) = 2;
    *(a2 + 25600) = v39;
    *&v420 = 0;
    v40 = a1;
    if (R8_EQ((a2 + 25608), &v420))
    {
      goto LABEL_105;
    }

    v41 = 0;
    v35 = 4;
  }

  *&v420 = 0;
  v42 = 0.0;
  if (!R8_EQ(v388, &v420))
  {
    v42 = vabdd_f64(v36, *v388);
  }

  if (v41)
  {
    v43 = 0.0;
    v35 = 2;
    v40 = a1;
    goto LABEL_76;
  }

  v40 = a1;
LABEL_68:
  *&v420 = 0;
  v43 = 0.0;
  if (!R8_EQ((a2 + 744), &v420))
  {
    v43 = vabdd_f64(v36, *(a2 + 744));
  }

  if (v35 == 4)
  {
    *&v420 = 0;
    if (R8_EQ(v388, &v420) || (v418[0] = 0.0, R8_EQ((a2 + 744), v418)))
    {
      *&v420 = 0;
      if (R8_EQ(v388, &v420))
      {
        *&v420 = 0;
        if (R8_EQ((a2 + 744), &v420))
        {
          goto LABEL_105;
        }

        goto LABEL_82;
      }

      goto LABEL_88;
    }

    v46 = v42 > v43;
    v47 = 2;
LABEL_97:
    if (v46)
    {
      v48 = v47;
    }

    else
    {
      v48 = 1;
    }

    if (v46)
    {
      v49 = 1;
    }

    else
    {
      v49 = v47;
    }

    goto LABEL_103;
  }

LABEL_76:
  *&v420 = 0;
  v44 = 0.0;
  if (!R8_EQ((a2 + 752), &v420))
  {
    v44 = vabdd_f64(v36, *(a2 + 752));
  }

  if (v35 == 2)
  {
    *&v420 = 0;
    if (R8_EQ(v388, &v420) || (v418[0] = 0.0, R8_EQ((a2 + 752), v418)))
    {
      *&v420 = 0;
      if (R8_EQ(v388, &v420))
      {
        goto LABEL_86;
      }

LABEL_88:
      v45 = 1;
      goto LABEL_104;
    }

    v46 = v42 > v44;
    v47 = 4;
    goto LABEL_97;
  }

  *&v420 = 0;
  if (!R8_EQ((a2 + 744), &v420))
  {
    v418[0] = 0.0;
    if (!R8_EQ((a2 + 752), v418))
    {
      if (v43 <= v44)
      {
        v48 = 2;
      }

      else
      {
        v48 = 4;
      }

      if (v43 <= v44)
      {
        v49 = 4;
      }

      else
      {
        v49 = 2;
      }

LABEL_103:
      NK_Final_Check_ClkBias(v48, v40, a2);
      v45 = v49;
      goto LABEL_104;
    }
  }

  *&v420 = 0;
  if (!R8_EQ((a2 + 744), &v420))
  {
LABEL_82:
    v45 = 2;
    goto LABEL_104;
  }

LABEL_86:
  *&v420 = 0;
  if (R8_EQ((a2 + 752), &v420))
  {
    goto LABEL_105;
  }

  v45 = 4;
LABEL_104:
  NK_Final_Check_ClkBias(v45, v40, a2);
LABEL_105:
  v50 = *(a2 + 760);
  v375 = (a2 + 744);
  if (fabs(v50) <= 0.000006)
  {
    if (*v12 == 1)
    {
      v52 = (*(a2 + 22944) + v50 * -299792458.0) * (*(a2 + 22944) + v50 * -299792458.0);
      v53 = *(a2 + 22960);
      if (v52 / v53 > 25.0)
      {
        if (*(v12 + 2229) < 4u || *(a2 + 977) < 0x1Au || *(v12 + 2249) != 1 || *(a2 + 24160) >= v53 || *(a2 + 964) < 2)
        {
          *(a2 + 760) = a7;
          v389 = 1;
          *(v40 + 128) = 1;
          v51 = 71;
          goto LABEL_107;
        }

        *v12 = 0;
        *(p_NA + 8) = 0;
        EvCrt_v("NK_Final_Check: Ext ClkD is ignored in favor of PE estimated ClkD.");
      }
    }

    v389 = 0;
    goto LABEL_117;
  }

  *(a2 + 760) = a7;
  v389 = 1;
  *(v40 + 128) = 1;
  v51 = 81;
LABEL_107:
  *(v40 + 132) = v51;
LABEL_117:
  v403 = 1.0e12;
  v404 = 0x426D1A94A2000000;
  v54 = 0.0;
  v55 = 0.0;
  v56 = 0.0;
  if ((v398 & *(v12 + 72)) == 1)
  {
    v57 = *(a2 + 23064);
    v55 = 0.0;
    if (v57 < 100000000.0)
    {
      v58 = cos(*(a2 + 23056));
      v59 = *(a2 + 23072);
      v60 = v58 * v58 * (v57 - v59);
      v61 = v59 + v60;
      v62 = 1.0;
      if (v61 < 1.0)
      {
        v61 = 1.0;
      }

      v63 = v57 - v60;
      if (v63 >= 1.0)
      {
        v62 = v63;
      }

      v64 = v61 + 1000000.0;
      v65 = v62 + 1000000.0;
      v403 = v62 + 1000000.0;
      v404 = *&v64;
      v66 = *(a2 + 800) - *(a2 + 23016);
      if (v66 >= 1.57079633)
      {
        v67 = 3.14159265;
      }

      else
      {
        if (v66 >= -1.57079633)
        {
          goto LABEL_128;
        }

        v67 = -3.14159265;
      }

      v66 = v67 - v66;
LABEL_128:
      v68 = v66 * 6378137.0 * (v66 * 6378137.0);
      v69 = *(a2 + 808) - *(a2 + 23024);
      if (v69 >= 3.14159265)
      {
        v70 = -6.28318531;
      }

      else
      {
        if (v69 >= -3.14159265)
        {
LABEL_133:
          v55 = v68 / v64;
          v56 = v69 * 6378137.0 * *(a2 + 904) * (v69 * 6378137.0 * *(a2 + 904)) / v65;
          goto LABEL_134;
        }

        v70 = 6.28318531;
      }

      v69 = v69 + v70;
      goto LABEL_133;
    }
  }

LABEL_134:
  if (*(v12 + 200) == 1)
  {
    v71 = *(a2 + 23160);
    v72 = !v398;
    if (v71 >= 250000.0)
    {
      v72 = 1;
    }

    if ((v72 & 1) == 0)
    {
      v73 = *(a2 + 816) - *(a2 + 23144);
      v54 = v73 * v73 / (v71 + 100.0);
    }
  }

  v74 = *(a2 + 816) - *(a2 + 824);
  v75 = fmax(v55, v56) > 49.0;
  if (v54 > 64.0)
  {
    v75 = 1;
  }

  v373 = v74 - 60001;
  if ((v74 - 60001) < 0xFFFF0DCF)
  {
    v75 = 1;
  }

  v393 = v75;
  if (v75)
  {
    EvLog_v("NKFC: KF Reset 83:  Position problem !  SVNum %d  LLH %f %f %d m   PosTest %f %f %f", *(v12 + 1857), *(a2 + 800) * 57.2957795, *(a2 + 808) * 57.2957795, v74, v55, v56, v54);
    if (*(a2 + 960) == 1 && (v398 & *(v12 + 72)) == 1)
    {
      v76 = *(a2 + 23064);
      if (v76 < 100000000.0)
      {
        *(a2 + 800) = *(v12 + 96);
        *(a2 + 24176) = v76;
        *(a2 + 24184) = v76;
        *(a2 + 24264) = v76;
        *(a2 + 24272) = v76;
        v77 = sqrt(v76);
        *(a2 + 24352) = v77;
        *(a2 + 24360) = v77;
      }
    }

    if (*(v12 + 200) == 1)
    {
      v78 = *(a2 + 23144);
      v74 = v78 - *(a2 + 824);
      v79 = *(a2 + 23160);
      v80 = sqrt(v79);
    }

    else
    {
      v74 = 0;
      v78 = *(a2 + 824);
      v80 = 1000.0;
      v79 = 1000000.0;
    }

    *(a2 + 816) = v78;
    *(a2 + 24192) = v79;
    *(a2 + 24280) = v79;
    *(a2 + 24368) = v80;
    v81 = 1;
    *(v40 + 128) = 1;
    *(v40 + 132) = 83;
  }

  else
  {
    v81 = *(v40 + 128);
  }

  v385 = *(a2 + 944);
  v406 = 0u;
  v407 = 0u;
  memset(v408, 0, sizeof(v408));
  v409 = 0u;
  v410 = 0.0;
  v82 = a8 * 99930819.3 * (a8 * 99930819.3);
  v83 = &loc_299728000;
  v387 = a3;
  v374 = (a2 + 752);
  if ((*v12 & 1) == 0)
  {
    v84 = (a2 + 24160);
LABEL_159:
    if (v81)
    {
      v376 = 0;
      v381 = 0;
      *v84 = v82;
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  v84 = (a2 + 24160);
  if (*(v12 + 4) != 1)
  {
    goto LABEL_159;
  }

  v85 = *(a2 + 22960);
  v86 = v85 + 225.0;
  v87 = *(a2 + 22944);
  v88 = (v87 - *(a2 + 760) * 299792458.0) * (v87 - *(a2 + 760) * 299792458.0);
  v89 = v88 / (v85 + 225.0);
  v90 = v85 + v88 * 0.1;
  if (v81)
  {
    if (v89 > 11.0)
    {
      *(a2 + 24160) = v86;
      EvCrt_v("NK_Final_Check: Clock drift check failed", v90);
      v83 = &loc_299728000;
      v381 = 0;
      *(a2 + 760) = v87 / 299792458.0;
      v376 = 1;
      goto LABEL_168;
    }

    if (v89 > 1.0)
    {
LABEL_165:
      v376 = 0;
      v381 = 0;
      *v84 = v90;
      goto LABEL_168;
    }
  }

  else
  {
    if (v89 > 16.0)
    {
      *(a2 + 24160) = v86;
      *(&v407 + 1) = v85 + 225.0;
      EvCrt_v("NK_Final_Check: Clock drift check failed", v90);
      v83 = &loc_299728000;
      *(a2 + 760) = v87 / 299792458.0;
      *(v40 + 168) = 4;
      v376 = 1;
      v381 = 1;
      goto LABEL_168;
    }

    if (*v84 > v90)
    {
      goto LABEL_165;
    }
  }

LABEL_167:
  v376 = 0;
  v381 = 0;
LABEL_168:
  v91 = *(v40 + 128);
  if ((*v12 & 1) == 0)
  {
    if (*(v40 + 128))
    {
      goto LABEL_191;
    }

    if (*v84 > v82 + v82)
    {
      if (*(a2 + 964) <= 1)
      {
        v91 = 1;
        *(v40 + 128) = 1;
        v92 = 72;
LABEL_184:
        *(v40 + 132) = v92;
        v95 = 1;
LABEL_192:
        v382 = v95;
        goto LABEL_193;
      }

      *(a2 + 760) = a7;
      *(a2 + 24160) = v82;
      *(&v407 + 1) = v82;
      *(v40 + 168) = 5;
      v381 = 1;
    }

LABEL_176:
    v93 = *(v40 + 20);
    if (v93 > 8)
    {
      v94 = 1000000000.0;
    }

    else
    {
      v94 = dbl_2997612F0[v93];
    }

    if (*(a2 + 24200) <= v94 && *(a2 + 24208) <= v94 && *(a2 + 24216) <= v94)
    {
      v91 = 0;
    }

    else
    {
      if (*(a2 + 964) < 2)
      {
        v91 = 1;
        *(v40 + 128) = 1;
        v92 = 73;
        goto LABEL_184;
      }

      v96 = &v409;
      v97 = 3;
      v98 = a2;
      do
      {
        v98[86] = 0;
        v98[114] = 0;
        v99 = 0x4197D78400000000;
        v98[89] = 0;
        if (v93 <= 8)
        {
          v99 = *&dbl_299761338[v93];
        }

        *v96++ = v99;
        v98[3025] = v99;
        ++v98;
        --v97;
      }

      while (v97);
      v91 = 0;
      *(a2 + 952) = 0;
      *(a2 + 936) = 0u;
      *(v40 + 168) = 6;
      v381 = 1;
    }

LABEL_191:
    v95 = v393;
    goto LABEL_192;
  }

  v382 = v393;
  if (!*(v40 + 128))
  {
    goto LABEL_176;
  }

LABEL_193:
  if (v74 <= -501)
  {
    v100 = (v74 * v74) / *(a2 + 24192) / 9.0;
    if (v100 > 1.2)
    {
      v101 = 0;
      v102 = v100 + -1.0;
      v103 = a2 + 24176;
      do
      {
        v104 = *(v103 + v101 * 8);
        v418[v101] = v102 * v104;
        *(v103 + v101 * 8) = v104 + v102 * v104;
        ++v101;
      }

      while (v101 != 3);
      if (v74 > -1001)
      {
        *(a2 + 24400) = *(v40 + 7280) + (*(a2 + 24400) - *(v40 + 7280)) * v100;
        v105 = (v40 + 7256);
        v106 = (a2 + 24352);
        v107 = 3;
        do
        {
          v108 = *v105++;
          v109 = *(v106 - 22) + v108;
          *(v106 - 11) = v109;
          *v106++ = sqrt(v109);
          --v107;
        }

        while (v107);
        if (!v91)
        {
          v425 = 0;
          v423 = 0u;
          v424 = 0u;
          v421 = 0u;
          v422 = 0u;
          v420 = 0u;
          v110 = v418[0];
          if (v418[0] <= v418[1])
          {
            v110 = v418[1];
          }

          if (v110 <= v418[2])
          {
            v111 = v418[2];
          }

          else
          {
            v111 = v110;
          }

          for (i = 5; i != 8; ++i)
          {
            *(&v420 + i) = 0x3FF0000000000000;
            if (v111 > 0.0)
            {
              v113 = v83;
              rnk1_core((a1 + 872), i, v111, &v420, v419);
              v83 = v113;
            }

            *(&v420 + i) = 0;
          }

          LOBYTE(v91) = *(a1 + 128);
        }
      }

      else
      {
        *(a2 + 816) = *(a2 + 824);
        if (*(a2 + 964) > 1)
        {
          if (v91)
          {
            LOBYTE(v393) = 1;
          }

          else
          {
            *(v408 + 8) = *(a2 + 24176);
            *(&v408[1] + 1) = *(a2 + 24192);
            *(v40 + 168) = 7;
            LOBYTE(v393) = 1;
            v381 = 1;
          }
        }

        else
        {
          LOBYTE(v91) = 1;
          *(v40 + 128) = 1;
          *(v40 + 132) = 74;
          LOBYTE(v393) = 1;
          v382 = 1;
        }
      }
    }
  }

  v396 = a2 + 800;
  if (*(a2 + 960))
  {
    v114 = 4.0e10;
  }

  else
  {
    v114 = 1.0e16;
  }

  if (*(v12 + 200))
  {
    v115 = (a2 + 24192);
    if (*(v12 + 204) == 1 && v398)
    {
      v116 = *(a2 + 23160);
      v117 = v116 * 2.25 + 5625.0;
      v118 = *(a2 + 23144);
      v119 = (v118 - *(a2 + 816)) * (v118 - *(a2 + 816));
      v120 = v119 / v117;
      v121 = v116 + v119 * v83[25];
      if (v91)
      {
        if (v120 > 11.0)
        {
          v122 = v83;
          *(a2 + 816) = v118;
          v123 = (a2 + 24192);
LABEL_226:
          *v123 = v117;
          EvCrt_v("NK_Final_Check: Vertical position check failed");
          *v115 = *v115 / 2.25;
          if (v91)
          {
            v391 = 0;
          }

          else
          {
            *(&v408[1] + 1) = *(&v408[1] + 1) / 2.25;
            v391 = 1;
          }

          LOBYTE(v393) = 1;
          v124 = a1;
          v83 = v122;
          goto LABEL_235;
        }

        if (v120 > 1.0)
        {
LABEL_231:
          v391 = 0;
          *v115 = v121;
          goto LABEL_234;
        }
      }

      else
      {
        if (v120 > 16.0)
        {
          v122 = v83;
          v123 = &v408[1] + 1;
          *(a2 + 816) = v118;
          *(a2 + 24192) = v117;
          goto LABEL_226;
        }

        if (*v115 > v121)
        {
          goto LABEL_231;
        }
      }

LABEL_233:
      v391 = 0;
      goto LABEL_234;
    }
  }

  else
  {
    v115 = (a2 + 24192);
  }

  if ((v91 & 1) == 0)
  {
    goto LABEL_233;
  }

  v391 = 0;
  *v115 = v114;
LABEL_234:
  v124 = a1;
LABEL_235:
  v125 = 0;
  v126 = (a2 + 23016);
  v127 = &v404;
  v128 = 1;
  v129 = v83[25];
  do
  {
    v130 = v128;
    v131 = *(v12 + 72);
    if ((v130 & 1) == 0)
    {
      if (*(v12 + 72))
      {
        v132 = *(v124 + 128);
        v140 = 8 * v125 + 40;
        v134 = (v33 + v140);
        if (*(v12 + 76) == 1 && v398)
        {
          v135 = *v127;
          v136 = v126[v125];
          v137 = (&v406 + v140);
          v139 = (v396 + 8 * v125);
          v138 = cos(*v126) * 6378137.0;
          if (v138 <= 0.0)
          {
            v146 = (v136 - *v139) * (v136 - *v139);
            v144 = v146 / v135;
            v145 = v135 + v146 * v129;
            if (v132)
            {
LABEL_247:
              if (v144 > 11.0)
              {
                *v139 = v136;
                *v134 = v135;
LABEL_258:
                v33 = (a2 + 24136);
                EvCrt_d("NK_Final_Check: Horizontal position check failed", v125);
                LOBYTE(v393) = 1;
                v124 = a1;
                goto LABEL_263;
              }

              v147 = v144 <= 1.0;
LABEL_261:
              v124 = a1;
              v33 = (a2 + 24136);
              if (!v147)
              {
                *v134 = v145;
              }

              goto LABEL_263;
            }

LABEL_256:
            if (v144 > 16.0)
            {
              *v139 = v136;
              *v134 = v135;
              v391 = 1;
              *v137 = v135;
              goto LABEL_258;
            }

            v147 = *v134 <= v145;
            goto LABEL_261;
          }

LABEL_243:
          v141 = v136 - *v139;
          v142 = -6.28318531;
          if (v141 >= 3.14159265 || (v142 = 6.28318531, v141 < -3.14159265))
          {
            v141 = v141 + v142;
          }

          v143 = v138 * v141 * (v138 * v141);
          v144 = v143 / v135;
          v145 = v135 + v143 * v129;
          if (v132)
          {
            goto LABEL_247;
          }

          goto LABEL_256;
        }

LABEL_253:
        if (!v132)
        {
          goto LABEL_263;
        }
      }

      else
      {
        if ((*(v124 + 128) & 1) == 0)
        {
          break;
        }

LABEL_252:
        v134 = &v33[v125 + 5];
      }

      *v134 = v114;
      goto LABEL_263;
    }

    v132 = *(v124 + 128);
    if (*(v12 + 72))
    {
      v133 = 8 * v125 + 40;
      v134 = (v33 + v133);
      if (*(v12 + 76) != 1 || !v398)
      {
        goto LABEL_253;
      }

      v135 = *v127;
      v136 = v126[v125];
      v137 = (&v406 + v133);
      v138 = 6378137.0;
      v139 = (v396 + 8 * v125);
      goto LABEL_243;
    }

    if (v132)
    {
      goto LABEL_252;
    }

LABEL_263:
    v128 = 0;
    v127 = &v403;
    v125 = 1;
  }

  while ((v130 & 1) != 0);
  if (v391)
  {
    *(v124 + 168) = 8;
    v148 = 1;
    v149 = v389;
    v151 = 4.0e10;
    v150 = v385;
    goto LABEL_268;
  }

  v149 = v389;
  v151 = 4.0e10;
  v150 = v385;
  if (v381)
  {
    v148 = v382;
LABEL_268:
    if (*(v408 + 1) > 0.0 || *&v408[1] > 0.0 || *(&v408[1] + 1) > 0.0)
    {
      v153 = 0;
      v154 = 0.0;
      do
      {
        if (*(v408 + v153 + 8) > v154)
        {
          v154 = *(v408 + v153 + 8);
        }

        if (*(a2 + 24176 + v153) > v154)
        {
          v154 = *(a2 + 24176 + v153);
        }

        v153 += 8;
      }

      while (v153 != 24);
      *(v408 + 1) = v154;
      *&v408[1] = v154;
      v152 = 1;
      *(&v408[1] + 1) = v154;
    }

    else
    {
      v152 = 1;
    }
  }

  else
  {
    v152 = 0;
    v148 = v382;
  }

  if (v393)
  {
    Geo2ECEF(v396, &WGS84_Datum, (a2 + 664));
    if (*(v124 + 128) == 1)
    {
      *(a2 + 688) = 0u;
      *(a2 + 704) = 0u;
      *(a2 + 912) = 0u;
      *(a2 + 928) = 0u;
      *(a2 + 944) = 0u;
      v155 = 1;
      goto LABEL_285;
    }

    v155 = 1;
LABEL_293:
    if (*(v124 + 236))
    {
      goto LABEL_294;
    }

    *(v124 + 236) = 1;
    if ((v152 & 1) == 0)
    {
      goto LABEL_325;
    }

    goto LABEL_297;
  }

  if (*(v124 + 128))
  {
    v155 = 0;
LABEL_285:
    v156 = *(v124 + 20);
    if (v156 > 8)
    {
      v157 = 0x4197D78400000000;
    }

    else
    {
      v157 = *&dbl_299761338[v156];
    }

    *(a2 + 24216) = v157;
    *(a2 + 24208) = v157;
    *(a2 + 24200) = v157;
    v158 = (a2 + 24312);
    v159 = 11;
    do
    {
      v160 = *(v158 - 22);
      *(v158 - 11) = v160;
      *v158++ = sqrt(v160);
      --v159;
    }

    while (v159);
    goto LABEL_293;
  }

  v155 = 0;
  if (v376)
  {
    goto LABEL_293;
  }

LABEL_294:
  if (v152)
  {
LABEL_297:
    v161 = *(v124 + 20);
    if (v161 > 8)
    {
      v162 = 100000000.0;
    }

    else
    {
      v162 = dbl_299761338[v161];
    }

    *&v420 = 0;
    if (R8_EQ(v408 + 1, &v420))
    {
      Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, (a2 + 832), &v420);
      Comp_ErrorEllipse(*&v420, *(&v420 + 1), v163, v418, &v418[1], &v418[2]);
      v164 = v418[0] * v418[0];
      if (*&v421 > v418[0] * v418[0])
      {
        v164 = *&v421;
      }

      v151 = v164 + v164;
    }

    *&v420 = 0;
    if (R8_EQ(&v409, &v420))
    {
      v165 = *(a2 + 24200);
      if (*(a2 + 24208) > v165)
      {
        v165 = *(a2 + 24208);
      }

      if (*(a2 + 24216) > v165)
      {
        v165 = *(a2 + 24216);
      }

      v162 = v165 * 1.2;
    }

    v166 = a1 + 872;
    bzero((a1 + 872), 0x210uLL);
    v167 = 0;
    while (1)
    {
      v168 = *(&v406 + v167);
      if (v168 <= 0.0)
      {
        if (v167 == 4)
        {
          v169 = *(a2 + 24168);
          if (v169 >= 400.0)
          {
            v170 = v169 * 1.2;
          }

          else
          {
            v170 = v169 * 1.1;
          }

          *(a1 + 984) = v170;
          goto LABEL_320;
        }

        if ((v167 - 5) <= 2)
        {
          *(v166 + 8 * (((v167 + 2 + (v167 + 2) * v167) >> 1) - 1)) = v151;
          goto LABEL_320;
        }

        if (v167 >= 8)
        {
          *(v166 + 8 * (((v167 + 2 + (v167 + 2) * v167) >> 1) - 1)) = v162;
          goto LABEL_320;
        }

        v168 = v33[v167] * 1.2;
      }

      *(v166 + 8 * (((v167 + 2 + (v167 + 2) * v167) >> 1) - 1)) = v168;
LABEL_320:
      if (++v167 == 11)
      {
        v149 = v389;
        break;
      }
    }
  }

LABEL_325:
  v399 = v149 | v148;
  if ((v149 | v148) != 1)
  {
    goto LABEL_395;
  }

  v171 = *(a1 + 235);
  v172 = v171 + 1;
  *(a1 + 235) = v171 + 1;
  if (*(a1 + 11028) == 1)
  {
    *(a1 + 11028) = 0;
  }

  v173 = *(a2 + 964);
  if ((v173 > 1 || !*(a1 + 11048)) && ((v171 + 1) == 120 || (v171 + 1) >= 0xB4u))
  {
    if (*(a2 + 12) >= 10)
    {
      *(a2 + 12) = 9;
    }

    v179 = 0;
    *(a1 + 6712) = 0u;
    *(a1 + 6728) = 0u;
    *(a1 + 6696) = 0u;
    *(a2 + 972) = 2;
    *(a4 + 412) = 1;
    *&v180 = 0x101010101010101;
    *(&v180 + 1) = 0x101010101010101;
    *(a4 + 380) = v180;
    *(a4 + 396) = v180;
    *(a4 + 364) = v180;
    v181 = vld1q_dup_f32(a2);
    do
    {
      *(a4 + 416 + v179) = v181;
      v179 += 16;
    }

    while (v179 != 192);
    EvCrt_v("ChanReset ALL : NKFC1 %d %d %d ", *(a1 + 235), v148, v149);
    v182 = ++*(a1 + 235);
    if (v182 >= 0xB4)
    {
      *(a2 + 960) = 0;
      *(a1 + 11048) = 0;
      *(a1 + 235) = 0;
      *(a1 + 232) = 256;
      *(a2 + 964) = 0;
      *(a2 + 16) = 0;
      *v388 = 0.0;
      *(a2 + 744) = 0;
      if (*(a2 + 12) >= 6)
      {
        *(a2 + 12) = 5;
      }
    }

    goto LABEL_395;
  }

  if (*(a4 + 4) || v373 >= 0xFFFF0DCF && (*(a1 + 233) & 1) == 0)
  {
    goto LABEL_395;
  }

  if (*(a2 + 12) >= 10)
  {
    *(a2 + 12) = 9;
  }

  if (v173 < 2)
  {
    if ((v148 & 1) == 0)
    {
      if ((v171 + 1) <= 9u)
      {
        *(a1 + 235) = 10;
      }

      *(a2 + 960) = 0;
      *(a1 + 232) = 0;
    }

    goto LABEL_395;
  }

  v384 = v155;
  if ((v171 + 1) > 5u)
  {
    v175 = 0;
    v178 = a1;
LABEL_365:
    if ((*(v178 + 28) & 1) == 0 && *(a2 + 960) != 1)
    {
      v383 = v175;
      v177 = 100;
      goto LABEL_377;
    }

    *(v178 + 6712) = 0u;
    *(v178 + 6728) = 0u;
    *(v178 + 6696) = 0u;
    v183 = -48;
    v184 = a5;
    do
    {
      v185 = *(v184 + 76);
      if (Is_Legal(v185) && *(v184 + 412) >= 4)
      {
        *(a4 + 8 + GNSS_Id_To_Num_Prn_Idx(v185)) = 1;
        *(a4 + 186 + GNSS_Id_To_Num_Prn_Idx(*(v184 + 76))) = v183 + 48;
      }

      v184 += 4;
      v226 = __CFADD__(v183++, 1);
    }

    while (!v226);
    v186 = 0;
    *(a4 + 412) = 1;
    *&v187 = 0x101010101010101;
    *(&v187 + 1) = 0x101010101010101;
    *(a4 + 380) = v187;
    *(a4 + 396) = v187;
    *(a4 + 364) = v187;
    v188 = vld1q_dup_f32(a2);
    do
    {
      *(a4 + 416 + v186) = v188;
      v186 += 16;
    }

    while (v186 != 192);
    EvCrt_v("ChanReset ALL : NKFC2 %d %d %d ", *(a1 + 235), v373 < 0xFFFF0DCF, *(a1 + 28));
    *(a2 + 972) = 2;
    *(a1 + 235) = 0;
    *(a2 + 964) = 0;
    v149 = v389;
    v155 = v384;
    goto LABEL_395;
  }

  if ((v171 + 1) == 5)
  {
    v172 = 4;
  }

  if (!*(a2 + 960))
  {
    v172 = v171;
  }

  v174 = *(v12 + 2444) >> 4;
  v226 = v174 >= 0xC35;
  v175 = v174 < 0xC35;
  v176 = &BN_Tolerance;
  if (v226)
  {
    v176 = &unk_2997612E5;
  }

  if (v172 <= 2u)
  {
    v175 = 0;
  }

  v177 = v176[v172];
  v178 = a1;
  if (v177 == 100)
  {
    goto LABEL_365;
  }

  v383 = v175;
LABEL_377:
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v193 = (a5 + 76);
  v394 = v178 + 6696;
  v386 = a4 + 186;
  v390 = a4 + 416;
  v392 = a4 + 8;
  do
  {
    if (*(a2 + 2960 + v189) == 1)
    {
      v194 = *(a5 + v189 + 604);
      if (v194 <= v191 || v191 == 0)
      {
        v192 = v189;
        v191 = *(a5 + v189 + 604);
      }

      if (v194 < v177)
      {
        v196 = *v193;
        v197 = Is_Legal(*v193);
        v190 = 1;
        if (v197)
        {
          v198 = GNSS_Id_To_Num_Prn_Idx(v196);
          *(v394 + v189) = 0;
          *(v392 + v198) = 1;
          *(v386 + v198) = v189;
          *(a4 + v189 + 365) |= 1u;
          *(v390 + 4 * v189) = *a2;
          EvCrt_v("ChanReset %d : NKFC3 %d %d %d   %d < %d", v189, v193[2], *v193, v198, v194, v177);
          v190 = 1;
        }
      }
    }

    ++v189;
    v193 += 4;
  }

  while (v189 != 48);
  if (v383 && (v199 = v191, v191 >= v177))
  {
    v200 = (a5 + 76 + 4 * v192);
    v201 = *v200;
    v149 = v389;
    v155 = v384;
    if (Is_Legal(*v200))
    {
      v202 = GNSS_Id_To_Num_Prn_Idx(v201);
      *(v394 + v192) = 0;
      *(v392 + v202) = 1;
      *(v386 + v202) = v192;
      *(a4 + 365 + v192) |= 1u;
      *(v390 + 4 * v192) = *a2;
      EvCrt_v("ChanReset %d : NKFC4 %d %d %d   %d   %d >= %d", v192, v200[2], *v200, v202, 1, v199, v177);
    }
  }

  else
  {
    v149 = v389;
    v155 = v384;
    if ((v190 & 1) == 0)
    {
      goto LABEL_395;
    }
  }

  *(a2 + 972) = 1;
LABEL_395:
  v204 = a2 + 24576;
  v203 = v387;
  v205 = a1;
  if (*(a2 + 24588) < 4 || *(a2 + 24592) < 4 || *a6 != 2)
  {
    goto LABEL_411;
  }

  v206 = *(a1 + 128);
  if ((v206 & 1) == 0)
  {
    v207 = *(a2 + 24200) + *(a2 + 24208);
    v209 = *(a1 + 20);
    v208 = *(a1 + 24);
    if (v207 >= 2.56)
    {
      if (v209 == 4 && v207 * 9.0 + v150 * v150 < 169.0)
      {
        goto LABEL_406;
      }

      if (v150 <= 26.0)
      {
        goto LABEL_411;
      }
    }

    else if (v150 <= 13.0)
    {
      if (v150 <= 3.0)
      {
        if (v150 < 1.5)
        {
          v210 = 2;
LABEL_409:
          if (v210 != v209)
          {
            *(a1 + 20) = v210;
            *&v420 = __PAIR64__(v208, v210);
            NK_Set_Dynamics(&v420, a1 + 32);
            v211 = *(a2 + 760);
            NK_Set_XO_PN(v387, a1 + 32);
          }
        }

LABEL_411:
        v206 = *(a1 + 128);
        goto LABEL_412;
      }

LABEL_406:
      v210 = 3;
      goto LABEL_409;
    }

    v210 = 4;
    goto LABEL_409;
  }

LABEL_412:
  if (!v206 && (*(a2 + 24352) >= 3000.0 || *(a2 + 24360) >= 3000.0 || *(a2 + 24368) >= 3000.0))
  {
    *(a1 + 233) = 1;
  }

  if (v155)
  {
    Geo2ECEF(v396, &WGS84_Datum, (a2 + 664));
    v206 = *(a1 + 128);
  }

  if (!v206)
  {
    v214 = *(&v409 + 1);
    v213 = v410;
    v215 = *&v409;
    v216 = (a2 + 24224);
    v217 = -11;
    v218 = &v406;
    do
    {
      v219 = *v218;
      if (*v218 > 0.0)
      {
        v220 = v217 + 11;
        if (v217 + 11 <= 4)
        {
          if (v220 <= 2)
          {
            v219 = v219 + *(a1 + 7248);
          }

          else if (v217 == -8)
          {
            v219 = v219 + *(a2 + 656) * 0.01;
          }

          *v216 = v219;
        }

        else if (v220 > 7)
        {
          if (v217 == -3)
          {
            *(a2 + 24288) = v215 + *(a2 + 656) * 0.0001;
          }

          else if (v217 == -2)
          {
            *(a2 + 24296) = v214 + *(a2 + 656) * 0.0001;
          }

          else
          {
            *(a2 + 24304) = v213 + *(a2 + 656) * 0.0001;
          }
        }

        else if (v217 == -6)
        {
          *(a2 + 24400) = *(a1 + 7280);
          *(a2 + 24264) = *(a2 + 24176) + *(a1 + 7256);
        }

        else if (v217 == -5)
        {
          *(a2 + 24272) = *(a2 + 24184) + *(a1 + 7264);
        }

        else
        {
          *(a2 + 24280) = *(a2 + 24192) + *(a1 + 7272);
        }

        v216[11] = sqrt(*v216);
      }

      ++v216;
      ++v218;
      v226 = __CFADD__(v217++, 1);
    }

    while (!v226);
  }

  if ((*(a2 + 960) & 1) == 0 && *(v12 + 72) == 1 && *(v12 + 200) == 1 && ((*(v12 + 76) - 1) < 2 || *(a1 + 232) == 1))
  {
    *(a2 + 960) = 1;
  }

  v212 = *(a2 + 24352);
  if (v212 <= *(a2 + 24360))
  {
    v212 = *(a2 + 24360);
  }

  if (v212 <= *(a2 + 24368))
  {
    v212 = *(a2 + 24368);
  }

  if (*(a1 + 235))
  {
    if (v206)
    {
      goto LABEL_522;
    }

    if (*(a1 + 11028) >= 4u && v212 <= 0xC7 && (*(a2 + 25171) & 1) != 0 && v372 >= 5)
    {
      *(a1 + 235) = 0;
    }
  }

  else if (v206)
  {
    goto LABEL_522;
  }

  v221 = *(a2 + 964);
  if (v221 > 2)
  {
    v222 = 1;
  }

  else
  {
    v222 = v155;
  }

  if (v222)
  {
    goto LABEL_523;
  }

  if ((*(a1 + 233) & 1) != 0 || *(a2 + 12) < 7 || *(a2 + 25171) != 1 || !v372)
  {
    goto LABEL_522;
  }

  v223 = *(a1 + 11028);
  if ((v212 > 0x63 || v223 <= 3) && (v212 > 0x45 || v223 <= 2))
  {
    v226 = v212 <= 0x27 && v223 >= 2;
    if (!v226)
    {
      goto LABEL_522;
    }
  }

  v227 = 0;
  v228 = 0;
  v395 = 0;
  v229 = 0;
  v230 = 0;
  v231 = a2 + 3056;
  while (2)
  {
    v232 = *(v231 + 4 * v227);
    if ((v232 - 1) >= 0x1D)
    {
      if (v232)
      {
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 0xA6u);
        goto LABEL_484;
      }

      if (*(v231 + v227 - 96) == 1 && *(v231 + v227 - 3007) == 1)
      {
        v233 = *(a5 + 604 + v227);
        if (v233 > 0x21)
        {
          ++v230;
        }

        if (v233 > 0x17)
        {
          ++v229;
        }

        v46 = v233 > 0xA;
        v234 = v395;
        if (v46)
        {
          v234 = v395 + 1;
        }

        v395 = v234;
      }
    }

    else
    {
LABEL_484:
      ++v228;
    }

    if (++v227 != 48)
    {
      continue;
    }

    break;
  }

  v205 = a1;
  v204 = a2 + 24576;
  v203 = v387;
  v149 = v389;
  if (v228 > 2)
  {
    goto LABEL_522;
  }

  if (*(v12 + 72) != 1)
  {
    goto LABEL_509;
  }

  v235 = *(v12 + 76);
  if (v235 == 2)
  {
    if (*(a2 + 23064) <= 900000000.0)
    {
      v237 = 1;
      goto LABEL_510;
    }

    goto LABEL_509;
  }

  if (v235 != 1 || (v236 = *(a2 + 23064), v236 > 8100000000.0))
  {
LABEL_509:
    v237 = 0;
    goto LABEL_510;
  }

  if (v236 > 900000000.0)
  {
    v237 = 1;
  }

  else
  {
    v237 = 2;
  }

  if (v236 <= 9000000.0)
  {
    ++v237;
  }

LABEL_510:
  v238 = *(a2 + 22848) == 1 && *(a2 + 22852) == 1 && *(a2 + 22880) <= 900000000.0 || *(a2 + 12) > 9;
  v239 = v237 - v228 + v238;
  v240 = v239 + v230;
  v241 = v239 + v229;
  v242 = v239 + v395;
  if (v240 > 3 || v241 > 4 || v242 > 5)
  {
    v221 = 3;
    goto LABEL_536;
  }

LABEL_522:
  v221 = *(a2 + 964);
LABEL_523:
  if (v221 <= 2)
  {
    if (*(v205 + 128) == 1 && *(v205 + 11048))
    {
      *(v205 + 11048) = 0;
    }

    if (v221 == 1 && *(v205 + 235) > 2u)
    {
      goto LABEL_535;
    }

    v245 = v221 != 2 && v379 > 3;
    v246 = v399;
    if (!v245)
    {
      v246 = 0;
    }

    if (v246)
    {
LABEL_535:
      v221 = 0;
      goto LABEL_536;
    }

    if (!v221 && v379 >= 3)
    {
      if (*(v205 + 235) > 2u)
      {
        v221 = 0;
      }

      else
      {
        v221 = 1;
LABEL_536:
        *(a2 + 964) = v221;
      }
    }
  }

  if (v203[265] != -1)
  {
    if (v221 || *(v205 + 11032) < 0x258u)
    {
      if (v221 == 1 && v150 > 50.0)
      {
        v248 = "NK_Final_Check: Reverting to 'Sky Search' Windows due to low position confidence, and apparent high user speed";
LABEL_548:
        *(a2 + 960) = 0;
        EvCrt_v(v248);
      }
    }

    else if (*(v12 + 72) != 1 || (v247 = *(v12 + 76), v247 != 1) && (v247 != 2 || *(a2 + 23040) >= 2500000000.0))
    {
      v248 = "NK_Final_Check: Reverting to 'Sky Search' Windows due to No Fix within 10 min";
      goto LABEL_548;
    }
  }

  if (*(v204 + 12) >= 4 && *(a2 + 964) >= 1 && *(a2 + 24752) <= 100.0)
  {
    v203[267] = 0;
  }

  v249 = v203[265];
  if (v249)
  {
    v250 = v203[267];
    if (v250)
    {
      v251 = *(a2 + 4);
      if (v251 < v250)
      {
        EvCrt_nd("NK_Final_Check: OS ms Time seems to have gone backwards", 2, v38, *(a2 + 4), v250);
        goto LABEL_560;
      }

      if (v251 - v250 >= v249)
      {
        EvCrt_v("NK_Final_Check: Reverting to 'Sky Search' Windows due to No Fix within %d s", v249 / 0x3E8);
        *(a2 + 960) = 0;
        if ((*(a2 + 16) & 1) == 0)
        {
          *(a2 + 12) = 0;
          *(a2 + 24136) = 0x42D7309374811100;
          *(a2 + 24312) = 0x4163125300000000;
          v252 = vdupq_n_s64(0x42D7309374811100uLL);
          *(a2 + 24224) = v252;
          *(a2 + 24144) = v252;
          *(a2 + 24240) = 0x42D7309374811100;
          *(a2 + 24320) = vdupq_n_s64(0x4163125300000000uLL);
          *(a2 + 24168) = 0x42D7309374811100;
          *(a2 + 24256) = 0x42D7309374811100;
          *(a2 + 24344) = 0x4163125300000000;
        }

LABEL_560:
        v203[267] = 0;
      }
    }
  }

  if (*(a2 + 16) == 1 && *(v205 + 11048) && *(v205 + 11032) >= 0x3Du && *(a2 + 24320) > 40000.0 && *(a2 + 24328) > 40000.0 && *(a2 + 24312) > 40000.0)
  {
    *(a2 + 16) = 0;
  }

  if (v149 && !*(a2 + 964))
  {
    *(v205 + 232) = 0;
  }

  if ((*(v204 + 12) < 4 || *(a2 + 964) < 1 || *(a2 + 24752) > 400.0) && *(v205 + 11032))
  {
    if (!v203[279])
    {
      v203[279] = *(a5 + 4);
    }
  }

  else
  {
    v203[279] = 0;
  }

  memcpy((v205 + 344), (v205 + 872), 0x210uLL);
  if (*(a2 + 25824) > 150.0)
  {
    goto LABEL_759;
  }

  if (!*(a2 + 26008))
  {
    goto LABEL_759;
  }

  v253 = *(a2 + 26024);
  if (v253 < 2)
  {
    goto LABEL_759;
  }

  if ((*(v205 + 11161) & 1) == 0)
  {
    v254 = *(v205 + 11152) <= 17.0 ? 3000 : 5000;
    if (*a2 - *(v205 + 11248) < v254)
    {
      v255 = 11240;
      goto LABEL_593;
    }
  }

  if (*(v205 + 11188) < 2)
  {
    v256 = (a2 + 952);
  }

  else
  {
    v255 = 11192;
LABEL_593:
    v256 = (v205 + v255);
  }

  v257 = *v256;
  v258 = *v256 * 0.0174532925;
  ECEF2FSD_RotM((a2 + 832), v258, v411);
  v259 = a2 + 664;
  v260 = 4;
  v261 = 16;
  v262 = a2;
  do
  {
    *(&v416 + v261) = *(v262 + 680) - *(v262 + 25736);
    --v260;
    v261 -= 8;
    v262 -= 8;
  }

  while (v260 > 1);
  v263 = 0;
  v264 = v416;
  v265 = v417;
  v266 = &v411[2];
  do
  {
    v267 = *(v266 - 1) * *(&v264 + 1) + *(v266 - 2) * *&v264;
    v268 = *v266;
    v266 += 3;
    *(&v413 + v263) = v267 + v268 * v265;
    v263 += 8;
  }

  while (v263 != 24);
  v269 = v257;
  v270 = *(v205 + 140);
  if (v270 >= *(v205 + 144))
  {
    v270 = *(v205 + 144);
  }

  if (v270 >= *(v205 + 148))
  {
    v270 = *(v205 + 148);
  }

  v271 = v270 > 0xA;
  v272 = *(v205 + 11032) <= *(v205 + 16) && *(a2 + 968) == 1;
  v273 = v413;
  v274 = v414;
  EvLog_v("Lsq pos diff:  %3d (%d %3d %3d %3d)  %d%d  %d %f   F %4d %6d %8d    S %4d %6d %8d    D %4d %6d %8d    T %2d %3d   L %2d %f ", v257, *(v205 + 11188), *(v205 + 11240), *(v205 + 11192), *(a2 + 952), v271, v272, *(v205 + 11116), *(v205 + 11128), v413, *(a2 + 25976), *(v205 + 11480), v414, *(a2 + 25976), *(v205 + 11480), v415, *(a2 + 25984), *(v205 + 11488), *(v205 + 11636), *(v205 + 11640), v253, *(a2 + 26016));
  v275 = *(v205 + 140);
  if (v275 >= *(v205 + 144))
  {
    v275 = *(v205 + 144);
  }

  if (v275 >= *(v205 + 148))
  {
    v275 = *(v205 + 148);
  }

  if (v275 < 0xB || *(v205 + 11032) > *(v205 + 16) || *(a2 + 968) != 1)
  {
    goto LABEL_638;
  }

  if ((*(v205 + 11161) & 1) == 0)
  {
    if (v273 >= -5.0 || *(v205 + 11116) == 3)
    {
      goto LABEL_638;
    }

    v276 = 3;
    v277 = 8;
LABEL_620:
    v278 = 0;
    v279 = *(a1 + 11636);
    if (v279 + 1 < v277)
    {
      v280 = v279 + 1;
    }

    else
    {
      v280 = v277;
    }

    *(a1 + 11636) = v280;
    if (v273 < -25.0 && v280 >= v276)
    {
      v281 = *(a2 + 25976) / *(a1 + 11480);
      v282 = 0.0;
      v283 = 1.0;
      if (v281 < 1.0)
      {
        v282 = 1.0;
        if (v281 > 0.00000011920929)
        {
          NK_Get_Smooth_Excl_Weight(v281 * 0.5, 0.0, 1.0);
          v282 = v284;
          v280 = *(a1 + 11636);
        }
      }

      v285 = v277 - v280;
      if (v285)
      {
        NK_Get_Smooth_Excl_Weight(v285, 0.0, v277);
        v283 = v286;
      }

      if (v282 * v283 > 0.00000011920929)
      {
        *v412 = *(a2 + 25976) / (v282 * v283);
        *&v412[8] = vdupq_n_s64(0x412E848000000000uLL);
        *(a1 + 1400) = 0u;
        *(a1 + 1416) = 0u;
        *(a1 + 1432) = 0u;
        *(a1 + 1448) = 0u;
        *(a1 + 1464) = 0u;
        *(a1 + 1480) = 0;
        NK_Body_Frame_Meas(5u, &v416, v412, (a2 + 832), v258, 0xBu, (a1 + 872));
        v287 = 0;
        v288 = *(a1 + 1400);
        v289 = *(a1 + 1408);
        v290 = *(a1 + 1416);
        v416 = *(a1 + 1440);
        v417 = *(a1 + 1456);
        v291 = v416;
        v292 = v417;
        v293 = &v411[2];
        do
        {
          v294 = *(v293 - 1) * *(&v291 + 1) + *(v293 - 2) * *&v291;
          v295 = *v293;
          v293 += 3;
          *(&v413 + v287) = v294 + v295 * v292;
          v287 += 8;
        }

        while (v287 != 24);
        v296 = 0;
        v414 = 0.0;
        v415 = 0.0;
        v297 = v413;
        do
        {
          *(&v416 + v296 * 8) = v411[v296 + 3] * 0.0 + v411[v296] * v297 + v411[v296 + 6] * 0.0;
          ++v296;
        }

        while (v296 != 3);
        *(a1 + 1440) = v416;
        *(a1 + 1456) = v417;
        v205 = a1;
        EvLog_v("Lsq pos meas: F  %2d %f %3d   %f %f   %6d %6d   Wt %f %f   ECEF %f %f %f", *(a1 + 11636), *(a1 + 11128), v269, v273, v297, *(a2 + 25976), *(a1 + 11480), v282, v283, *&v416, *(&v416 + 1), v417);
        NK_Correct_State((a1 + 1400), (a2 + 25166), (a2 + 624));
        v298 = 0;
        *(a1 + 10472) = v288 + *(a1 + 10472);
        *(a1 + 8280) = v289 + *(a1 + 8280);
        *(a1 + 8296) = v290 + *(a1 + 8296);
        v278 = 1;
        v274 = 0.0;
        do
        {
          *(a1 + 10480 + v298) = *(a1 + 10480 + v298) + *(&v416 + v298);
          v298 += 8;
        }

        while (v298 != 24);
        v273 = v297;
        goto LABEL_639;
      }

      v278 = 0;
    }

    v205 = a1;
    goto LABEL_639;
  }

  if (v273 < -5.0)
  {
    v276 = 18;
    v277 = 48;
    goto LABEL_620;
  }

LABEL_638:
  v278 = 0;
  *(v205 + 11636) = 0;
LABEL_639:
  v299 = *(v205 + 140);
  if (v299 >= *(v205 + 144))
  {
    v299 = *(v205 + 144);
  }

  if (v299 >= *(v205 + 148))
  {
    v299 = *(v205 + 148);
  }

  if (v299 < 0xB || *(v205 + 11032) > *(v205 + 16) || *(a2 + 968) != 1)
  {
    goto LABEL_649;
  }

  if (*(v205 + 11161))
  {
    v300 = 120;
    goto LABEL_656;
  }

  if (*(v205 + 11116) == 3)
  {
LABEL_649:
    *(v205 + 11640) = 0;
    if (v278)
    {
      goto LABEL_650;
    }

LABEL_685:
    v310 = 0;
    goto LABEL_686;
  }

  v300 = 20;
LABEL_656:
  v311 = a1;
  v312 = *(a1 + 11640);
  v313 = v312 > 0;
  if (v274 < 0.0)
  {
    v314 = -1;
  }

  else
  {
    v313 = v312 < 0;
    v314 = 1;
  }

  if (v313)
  {
    v312 = 0;
  }

  v315 = v312 + v314;
  *(a1 + 11640) = v315;
  v316 = v300;
  if (v315 > v300)
  {
LABEL_665:
    *(v311 + 11640) = v316;
    v315 = v316;
    goto LABEL_666;
  }

  if ((v315 + v300) < 0 != __OFADD__(v315, v300))
  {
    v316 = -v300;
    v311 = a1;
    goto LABEL_665;
  }

LABEL_666:
  if (v315 >= 0)
  {
    v317 = v315;
  }

  else
  {
    v317 = -v315;
  }

  if (fabs(v274) <= 10.0 || v317 < v300 >> 2)
  {
    goto LABEL_684;
  }

  v318 = *(a2 + 25976) / *(a1 + 11480);
  v319 = 0.0;
  v320 = 1.0;
  if (v318 < 1.0)
  {
    v319 = 1.0;
    if (v318 > 0.00000011920929)
    {
      NK_Get_Smooth_Excl_Weight(v318 * 0.5, 0.0, 1.0);
      v319 = v321;
    }
  }

  if (v300 != v317)
  {
    NK_Get_Smooth_Excl_Weight((v300 - v317), 0.0, v300);
    v320 = v322;
  }

  if (v319 * v320 <= 0.00000011920929)
  {
LABEL_684:
    v205 = a1;
    if (v278)
    {
      goto LABEL_650;
    }

    goto LABEL_685;
  }

  *v412 = 0x412E848000000000;
  *&v412[8] = *(a2 + 25976) / (v319 * v320);
  *&v412[16] = 0x412E848000000000;
  v205 = a1;
  *(a1 + 1480) = 0;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1400) = 0u;
  NK_Body_Frame_Meas(5u, &v416, v412, (a2 + 832), v258, 0xBu, (a1 + 872));
  v323 = 0;
  v324 = *(a1 + 1400);
  v325 = *(a1 + 1408);
  v326 = *(a1 + 1416);
  v416 = *(a1 + 1440);
  v417 = *(a1 + 1456);
  v327 = v416;
  v328 = v417;
  v329 = &v411[2];
  do
  {
    v330 = *(v329 - 1) * *(&v327 + 1) + *(v329 - 2) * *&v327;
    v331 = *v329;
    v329 += 3;
    *(&v413 + v323) = v330 + v331 * v328;
    v323 += 8;
  }

  while (v323 != 24);
  v332 = 0;
  v413 = 0.0;
  v415 = 0.0;
  v333 = v414;
  do
  {
    *(&v416 + v332 * 8) = v411[v332 + 3] * v333 + v411[v332] * 0.0 + v411[v332 + 6] * 0.0;
    ++v332;
  }

  while (v332 != 3);
  *(a1 + 1440) = v416;
  *(a1 + 1456) = v417;
  EvLog_v("Lsq pos meas: S  %2d %f %3d   %f %f   %6d %6d   Wt %f %f   ECEF %f %f %f", *(a1 + 11640), *(a1 + 11128), v269, v274, v333, *(a2 + 25976), *(a1 + 11480), v319, v320, *&v416, *(&v416 + 1), v417);
  NK_Correct_State((a1 + 1400), (a2 + 25166), (a2 + 624));
  v334 = 0;
  *(a1 + 10472) = v324 + *(a1 + 10472);
  *(a1 + 8280) = v325 + *(a1 + 8280);
  *(a1 + 8296) = v326 + *(a1 + 8296);
  do
  {
    *(a1 + 10480 + v334) = *(a1 + 10480 + v334) + *(&v416 + v334);
    v334 += 8;
  }

  while (v334 != 24);
LABEL_650:
  v301 = 4;
  v302 = 16;
  v303 = a2;
  do
  {
    *(&v416 + v302) = *(v303 + 680) - *(v303 + 25736);
    --v301;
    v302 -= 8;
    v303 -= 8;
  }

  while (v301 > 1);
  v304 = 0;
  v305 = v416;
  v306 = v417;
  v307 = &v411[2];
  do
  {
    v308 = *(v307 - 1) * *(&v305 + 1) + *(v307 - 2) * *&v305;
    v309 = *v307;
    v307 += 3;
    *(&v413 + v304) = v308 + v309 * v306;
    v304 += 8;
  }

  while (v304 != 24);
  v310 = 1;
  v273 = v413;
  v274 = v414;
LABEL_686:
  if ((*(v205 + 11116) & 0xFFFFFFFE) == 2)
  {
    v335 = 3.5;
  }

  else
  {
    v335 = 2.0;
  }

  v336 = v335 * *(a2 + 25976);
  v337 = 9.9980001e13;
  if (v274 * v274 + v273 * v273 <= v336 * v336 || v336 >= *(v205 + 11480))
  {
    v341 = 0;
  }

  else
  {
    *v412 = vdupq_n_s64(0x4049000000000000uLL);
    *&v412[16] = 0x408F400000000000;
    *(v205 + 1480) = 0;
    *(v205 + 1400) = 0u;
    *(v205 + 1416) = 0u;
    *(v205 + 1432) = 0u;
    *(v205 + 1448) = 0u;
    *(v205 + 1464) = 0u;
    NK_Body_Frame_Meas(5u, &v416, v412, (a2 + 832), v258, 0xBu, (v205 + 872));
    v338 = *(v205 + 1400);
    v400 = *(v205 + 1408);
    v416 = *(v205 + 1440);
    v417 = *(v205 + 1456);
    EvLog_v("Lsq pos adj:  H  %4d %4d %4d   ARP  %6d %6d", v273, v274, v415, *(a2 + 25976), *(v205 + 11480));
    for (j = 0; j != 24; j += 8)
    {
      *(v259 + j) = *(v259 + j) - *(&v416 + j);
    }

    v340 = 0;
    *v388 = *v388 + v338 * -0.00000000333564095;
    *v375 = vmlaq_f64(*v375, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v400);
    v205 = a1;
    *(a1 + 10472) = v338 + *(a1 + 10472);
    *(a1 + 8280) = v400.f64[0] + *(a1 + 8280);
    *(a1 + 8296) = v400.f64[1] + *(a1 + 8296);
    do
    {
      *(a1 + 10480 + v340) = *(a1 + 10480 + v340) + *(&v416 + v340);
      v340 += 8;
    }

    while (v340 != 24);
    ++*(a1 + 236);
    v310 = 1;
    v337 = 50.0;
    v341 = 1;
  }

  v342 = v415;
  v343 = v335 * *(a2 + 25984);
  if (v342 * v342 > v343 * v343 && v343 < *(v205 + 11488))
  {
    *v412 = vdupq_n_s64(0x408F400000000000uLL);
    *&v412[16] = 0x4049000000000000;
    *(v205 + 1480) = 0;
    *(v205 + 1400) = 0u;
    *(v205 + 1416) = 0u;
    *(v205 + 1432) = 0u;
    *(v205 + 1448) = 0u;
    *(v205 + 1464) = 0u;
    NK_Body_Frame_Meas(5u, &v416, v412, (a2 + 832), v258, 0xBu, (v205 + 872));
    v344 = *(v205 + 1400);
    v401 = *(v205 + 1408);
    v416 = *(v205 + 1440);
    v417 = *(v205 + 1456);
    EvLog_v("Lsq pos adj:  V  %4d %4d %4d   ARP  %6d %6d", v273, v274, v342, *(a2 + 25984), *(v205 + 11488));
    for (k = 0; k != 24; k += 8)
    {
      *(v259 + k) = *(v259 + k) - *(&v416 + k);
    }

    v346 = 0;
    *v388 = *v388 + v344 * -0.00000000333564095;
    *v375 = vmlaq_f64(*v375, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v401);
    v205 = a1;
    *(a1 + 10472) = v344 + *(a1 + 10472);
    *(a1 + 8280) = v401.f64[0] + *(a1 + 8280);
    *(a1 + 8296) = v401.f64[1] + *(a1 + 8296);
    do
    {
      *(a1 + 10480 + v346) = *(a1 + 10480 + v346) + *(&v416 + v346);
      v346 += 8;
    }

    while (v346 != 24);
    ++*(a1 + 236);
  }

  if (!v341)
  {
    goto LABEL_757;
  }

  *(v205 + 1480) = 0;
  *(v205 + 1448) = 0u;
  *(v205 + 1464) = 0u;
  *(v205 + 1416) = 0u;
  *(v205 + 1432) = 0u;
  *(v205 + 1400) = 0u;
  *&v420 = 0;
  if (R8_EQ(v388, &v420))
  {
    goto LABEL_718;
  }

  v347 = *(a2 + 736);
  v348 = (a2 + 25664);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25664), &v420))
  {
    v350 = *(a2 + 25872) * *(a2 + 25872);
    if (v350 >= v337)
    {
      v350 = v337;
    }

LABEL_717:
    v352 = *v348;
    v405 = 0.0;
    memset(&v418[1], 0, 256);
    v418[0] = 1.0;
    v418[11] = v347 * 299792458.0 - v352;
    umeas(v205 + 872, 0xBu, v350, v418, &v420, v419, &v405, 1.0e20);
    goto LABEL_718;
  }

  v348 = (a2 + 25680);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25680), &v420))
  {
    v349 = *(a2 + 25880);
LABEL_714:
    v351 = v349 * v349;
    if (v351 >= v337)
    {
      v351 = v337;
    }

    v350 = v351 + 25.0;
    goto LABEL_717;
  }

  v348 = (a2 + 25696);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25696), &v420))
  {
    v349 = *(a2 + 25888);
    goto LABEL_714;
  }

LABEL_718:
  *&v420 = 0;
  if (R8_EQ(v375->f64, &v420))
  {
    goto LABEL_731;
  }

  v353 = *(a2 + 744);
  v354 = (a2 + 25680);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25680), &v420))
  {
    v356 = *(a2 + 25880) * *(a2 + 25880);
    if (v356 >= v337)
    {
      v356 = v337;
    }

LABEL_730:
    v358 = *v354;
    v405 = 0.0;
    memset(&v418[12], 0, 168);
    v418[0] = 0.0;
    memset(&v418[2], 0, 72);
    v418[1] = 1.0;
    v418[11] = v353 * 299792458.0 - v358;
    umeas(v205 + 872, 0xBu, v356, v418, &v420, v419, &v405, 1.0e20);
    goto LABEL_731;
  }

  v354 = (a2 + 25664);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25664), &v420))
  {
    v355 = *(a2 + 25872);
LABEL_727:
    v357 = v355 * v355;
    if (v357 >= v337)
    {
      v357 = v337;
    }

    v356 = v357 + 25.0;
    goto LABEL_730;
  }

  v354 = (a2 + 25696);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25696), &v420))
  {
    v355 = *(a2 + 25888);
    goto LABEL_727;
  }

LABEL_731:
  *&v420 = 0;
  if (R8_EQ(v374, &v420))
  {
    goto LABEL_744;
  }

  v359 = *(a2 + 752);
  v360 = (a2 + 25696);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25696), &v420))
  {
    v362 = *(a2 + 25888) * *(a2 + 25888);
    if (v362 >= v337)
    {
      v362 = v337;
    }

LABEL_743:
    v364 = *v360;
    v405 = 0.0;
    memset(&v418[12], 0, 168);
    memset(v418, 0, 88);
    v418[2] = 1.0;
    v418[11] = v359 * 299792458.0 - v364;
    umeas(v205 + 872, 0xBu, v362, v418, &v420, v419, &v405, 1.0e20);
    goto LABEL_744;
  }

  v360 = (a2 + 25664);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25664), &v420))
  {
    v361 = *(a2 + 25872);
LABEL_740:
    v363 = v361 * v361;
    if (v363 >= v337)
    {
      v363 = v337;
    }

    v362 = v363 + 25.0;
    goto LABEL_743;
  }

  v360 = (a2 + 25680);
  *&v420 = 0;
  if (!R8_EQ((a2 + 25680), &v420))
  {
    v361 = *(a2 + 25880);
    goto LABEL_740;
  }

LABEL_744:
  v365 = *(v205 + 1400);
  v402 = *(v205 + 1408);
  v416 = *(v205 + 1440);
  v417 = *(v205 + 1456);
  *&v420 = 0;
  if (R8_EQ(v388, &v420))
  {
    v366 = 0;
  }

  else
  {
    v366 = (*(a2 + 25664) - *(a2 + 736));
  }

  *&v420 = 0;
  if (R8_EQ(v375->f64, &v420))
  {
    v367 = 0;
  }

  else
  {
    v367 = (*(a2 + 25680) - *(a2 + 744));
  }

  *&v420 = 0;
  if (R8_EQ(v374, &v420))
  {
    v368 = 0;
  }

  else
  {
    v368 = (*(a2 + 25696) - *(a2 + 752));
  }

  EvLog_v("Lsq Clk adj:  C  %4d %4d %4d   ARP  %6d %6d", v366, v367, v368, *(a2 + 25992), *(a1 + 11496));
  for (m = 0; m != 24; m += 8)
  {
    *(v259 + m) = *(v259 + m) - *(&v416 + m);
  }

  v370 = 0;
  *v388 = *v388 + v365 * -0.00000000333564095;
  *v375 = vmlaq_f64(*v375, vdupq_n_s64(0xBE2CA726EB25F9DBLL), v402);
  *(a1 + 10472) = v365 + *(a1 + 10472);
  *(a1 + 8280) = v402.f64[0] + *(a1 + 8280);
  *(a1 + 8296) = v402.f64[1] + *(a1 + 8296);
  do
  {
    *(a1 + 10480 + v370) = *(a1 + 10480 + v370) + *(&v416 + v370);
    v370 += 8;
  }

  while (v370 != 24);
LABEL_757:
  if (v310)
  {
    ECEF2Geo(a2 + 664, &WGS84_Datum, v396);
  }

LABEL_759:
  v371 = *MEMORY[0x29EDCA608];
}