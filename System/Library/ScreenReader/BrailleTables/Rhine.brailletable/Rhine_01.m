uint64_t backward_disabled(unsigned __int8 *a1)
{
  v1 = *(&dword_8 + pBwdLangGlb);
  if (v1 < 0)
  {
    return 1;
  }

  v3 = a1 - 1;
  v4 = (*pBwdLangGlb + 4);
  v5 = v1 + 1;
  while (*(v4 - 2) != &dword_0 + 1 || **(v4 - 4) != *a1 || !no_exception(0, *v4, v3) || !no_exception(1, v4[1], a1 + 1))
  {
    v4 += 8;
    if (!--v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t bwd_fetch_char(char *a1, char *__s1, int a3, int a4)
{
  if (*__s1 == stru_B8.segname[pLangGlb + 3])
  {
    v8 = __s1[1];
    *a1 = v8;
    switch(nLangIDGlb)
    {
      case 12:
        if (v8 != 58)
        {
          if (v8 != 124)
          {
            goto LABEL_26;
          }

          v9 = __s1[2];
          if (!memchr("123", v9, 4uLL) || __s1[3] && memchr("#123456789", __s1[3], 0xBuLL))
          {
            LOBYTE(v8) = 32;
          }

          else
          {
            if (v9 == 51)
            {
              v20 = -77;
            }

            else
            {
              v20 = -71;
            }

            if (v9 == 50)
            {
              LOBYTE(v8) = -78;
            }

            else
            {
              LOBYTE(v8) = v20;
            }
          }

          goto LABEL_25;
        }

        goto LABEL_24;
      case 9:
        if (nSubLangIDGlb != 1)
        {
LABEL_19:
          if (v8 != 40)
          {
            goto LABEL_26;
          }

          break;
        }

        if (v8 <= 48)
        {
          if (v8 == 47)
          {
            LOBYTE(v8) = 36;
          }

          else
          {
            if (v8 != 48)
            {
              goto LABEL_26;
            }

            LOBYTE(v8) = 43;
          }

          goto LABEL_25;
        }

        if (v8 == 124)
        {
          goto LABEL_24;
        }

        if (v8 != 49)
        {
LABEL_26:
          if (memchr("+-*/=.:", v8, 8uLL))
          {
            return 1;
          }

          goto LABEL_27;
        }

        break;
      case 7:
        if (v8 != 33)
        {
          if (v8 == 56)
          {
LABEL_24:
            LOBYTE(v8) = 47;
            goto LABEL_25;
          }

          goto LABEL_19;
        }

        if (__s1[2] != 40)
        {
          LOBYTE(v8) = 33;
          goto LABEL_26;
        }

        break;
      default:
        goto LABEL_26;
    }

    LOBYTE(v8) = 42;
LABEL_25:
    *a1 = v8;
    goto LABEL_26;
  }

LABEL_27:
  if (a4)
  {
    i = 0;
    v11 = *(&dword_10 + pBwdLangGlb);
    do
    {
      if (!strcmp(__s1, *(v11 + 8 * i)))
      {
        LOBYTE(i) = i | 0xC0;
        goto LABEL_82;
      }

      ++i;
    }

    while (i != 64);
  }

  for (i = 30; i != 256; ++i)
  {
    if (strcmp(__s1, *(*(&stru_20.cmd + pLangGlb) + 8 * i)))
    {
      continue;
    }

    if (i <= 0x3Cu)
    {
      if (i == 30)
      {
        if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
        {
          goto LABEL_85;
        }

        goto LABEL_65;
      }

      if (i == 31)
      {
        if (nLangIDGlb == 9 && nSubLangIDGlb == 3)
        {
          goto LABEL_85;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    if (i <= 0x8Au)
    {
      switch(i)
      {
        case 0x3Du:
          if (nLangIDGlb == 12)
          {
            goto LABEL_85;
          }

          goto LABEL_65;
        case 0x5Du:
          goto LABEL_82;
        case 0x82u:
          LOBYTE(i) = -111;
          goto LABEL_82;
      }

      goto LABEL_58;
    }

    if (i > 0x91u)
    {
      switch(i)
      {
        case 0x92u:
          goto LABEL_82;
        case 0x94u:
LABEL_85:
          LOBYTE(i) = 34;
          goto LABEL_82;
        case 0x9Bu:
          LOBYTE(i) = 62;
          goto LABEL_82;
      }

LABEL_58:
      if (memchr("'\x82\x84\x8B\x91\x92\x93\x94\x9B\xAB\xBB", i, 0xDuLL))
      {
        v14 = i > 0x7F;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v12 = 34;
      }

      else
      {
        v12 = i;
      }

      goto LABEL_64;
    }

    if (i != 139)
    {
      goto LABEL_58;
    }

    v12 = 60;
LABEL_64:
    *a1 = v12;
LABEL_65:
    if (!a3)
    {
      return 1;
    }

    v16 = nLangIDGlb != 9 || nSubLangIDGlb != 3;
    result = 1;
    if (nLangIDGlb == 10 || !v16)
    {
      return result;
    }

    a3 = 0;
  }

  if (a4)
  {
    return 0;
  }

  v18 = 0;
  v19 = *(&dword_10 + pBwdLangGlb);
  while (strcmp(__s1, *(v19 + 8 * v18)))
  {
    if (++v18 == 64)
    {
      return 0;
    }
  }

  LOBYTE(i) = v18 | 0xC0;
LABEL_82:
  *a1 = i;
  return 1;
}

BOOL bwd_fetch_ueb_char(_BYTE *a1, char *__s1)
{
  v4 = *(&stru_20.cmd + pLangGlb);
  v5 = 33;
  while (strcmp(__s1, *(v4 + 8 * v5)))
  {
    if (++v5 == 256)
    {
      LOBYTE(v5) = __s1[2];
      result = in(v5, 9);
      if (!result)
      {
        return result;
      }

      break;
    }
  }

  *a1 = v5;
  return 1;
}

uint64_t bwd_rightchar_follows(unsigned __int8 *a1)
{
  v2 = 0;
  v3 = pBwdLangGlb;
  v4 = nLangIDGlb;
  v5 = nLangIDGlb == 9 && nSubLangIDGlb == 3;
  v6 = v5;
  v7 = v6 ^ 1;
  while (1)
  {
    v8 = *a1;
    if (v8 - 46 >= 2)
    {
      if (!*a1)
      {
        return v2 & (v8 < 0x21);
      }
    }

    else if (v8 == a1[1])
    {
      return v2 & (v8 < 0x21);
    }

    if (!no_exception(1, *(&dword_18 + v3), a1) && !no_exception(1, *&stru_20.segname[v3 + 8], a1))
    {
      return v2 & (v8 < 0x21);
    }

    if (v4 == 7)
    {
      v9 = 0;
      v10 = a1;
      while (1)
      {
        do
        {
          v11 = *v10++;
        }

        while (v11 == 173 || v11 == 30);
        if (v11 != asc_26CCE[v9])
        {
          break;
        }

        if (++v9 == 3)
        {
          ++a1;
          v13 = *(&stru_20.vmsize + v3);
          goto LABEL_29;
        }
      }
    }

    v5 = v8 == 39;
    v13 = *(&stru_20.vmsize + v3);
    if (v5)
    {
      v14 = v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0 && no_exception(1, *(&stru_20.vmsize + v3), a1 + 1))
    {
      ++a1;
    }

LABEL_29:
    v2 = 1;
    a1 += no_exception(1, v13, a1) + 1;
  }
}

uint64_t bwd_char(uint64_t result)
{
  if (qword_9D7A8 <= 0)
  {
    v1 = qword_9D7B0;
    v2 = qword_9D7B8;
  }

  else
  {
    v1 = qword_9D7B0;
    v2 = qword_9D7B8;
    if (!--qword_9D7A8)
    {
      if (qword_9D7B0 == qword_9D7B8)
      {
        return result;
      }

      *qword_9D7B0 = 30;
      qword_9D7B0 = ++v1;
    }
  }

  if (v1 != v2)
  {
    *v1 = result;
    qword_9D7B0 = (v1 + 1);
  }

  return result;
}

uint64_t bwd_string(_BYTE *a1)
{
  v2 = a1 + 1;
  v1 = *a1;
  do
  {
    result = bwd_char(v1);
    v4 = *v2++;
    v1 = v4;
  }

  while (v4);
  return result;
}

void bwd_increment_cursor()
{
  if (qword_9D7A8 >= 2)
  {
    ++qword_9D7A8;
  }
}

BOOL bwd_is_number(_BYTE *a1)
{
  if (*a1 != 35)
  {
    return 0;
  }

  v2 = a1[1];
  if (a1[1])
  {
    if (v2 - 107 > 0xFFFFFFF5)
    {
      return 1;
    }

    v3 = 0;
    if (v2 == 39)
    {
      v6 = 1;
      goto LABEL_15;
    }

    if (v2 == 30)
    {
      v4 = a1[2] - 107;
      v3 = 1;
      result = 1;
      if (a1[2] - 107 > 0xFFFFFFF5)
      {
        return result;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (v2 == stru_B8.segname[pLangGlb + 1])
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    if (v2 != stru_B8.segname[pLangGlb + 2])
    {
      goto LABEL_16;
    }
  }

LABEL_15:
  if (a1[2] - 107 > 0xFFFFFFF5)
  {
    return 1;
  }

LABEL_16:
  v7 = nLangIDGlb;
  if (nLangIDGlb != 9)
  {
    if (!v3)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (v2 <= 0x2D && ((1 << v2) & 0x209000000000) != 0 && a1[2] && memchr(",;:/?+=(*)", a1[2], 0xBuLL))
  {
    return 1;
  }

  if (v3)
  {
LABEL_24:
    v8 = a1[2];
    if ((v8 == 39 || v8 == stru_B8.segname[pLangGlb + 1] || v8 == stru_B8.segname[pLangGlb + 2]) && a1[3] - 107 > 0xFFFFFFF5)
    {
      return 1;
    }

    v9 = v3 ^ 1;
    if (v7 != 9)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0 && v8 <= 0x2D && ((1 << v8) & 0x209000000000) != 0 && a1[3] && memchr(",;:/?+=(*)", a1[3], 0xBuLL))
    {
      return 1;
    }
  }

LABEL_35:
  if (((v6 & 1) != 0 || v2 == stru_B8.segname[pLangGlb + 1] || v2 == stru_B8.segname[pLangGlb + 2]) && a1[2] == 30 && a1[3] - 107 > 0xFFFFFFF5)
  {
    return 1;
  }

  if (v7 == 9)
  {
    if (v2 > 0x2D || ((1 << v2) & 0x209000000000) == 0 || a1[2] != 30 || !a1[3] || !memchr(",;:/?+=(*)", a1[3], 0xBuLL))
    {
      goto LABEL_64;
    }

    return 1;
  }

  if (v7 != 7)
  {
    goto LABEL_64;
  }

  if (v2 == 45 && (a1[2] | 2) == 0x2E && a1[3] - 107 > 0xFFFFFFF5 || v3 && a1[2] == 45 && (a1[3] | 2) == 0x2E && a1[4] - 107 > 0xFFFFFFF5)
  {
    return 1;
  }

  if (v2 != 45)
  {
    goto LABEL_64;
  }

  v10 = a1[2];
  if (v10 == 46 || v10 == 44)
  {
    if (a1[3] == 30 && a1[4] - 107 > 0xFFFFFFF5)
    {
      return 1;
    }
  }

  else if (v10 == 30 && (a1[3] | 2) == 0x2E && a1[4] - 107 >= 0xFFFFFFF6)
  {
    return 1;
  }

LABEL_64:
  result = 0;
  if (v7 == 12 || (lFlags & 0x40000000) != 0)
  {
    return result;
  }

  if (!v2)
  {
    if (!v3)
    {
      return 0;
    }

LABEL_75:
    if (a1[2])
    {
      return memchr(",;:/?+=(*)", a1[2], 0xBuLL) != 0;
    }

    return 0;
  }

  v11 = memchr(",;:/?+=(*)", v2, 0xBuLL);
  v12 = v11 == 0;
  result = v11 != 0;
  if (v12)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    goto LABEL_75;
  }

  return result;
}

uint64_t bwd_add_char(uint64_t result)
{
  v1 = qword_9D7B0;
  *qword_9D7B0 = result;
  qword_9D7B0 = v1 + 1;
  return result;
}

unsigned __int8 *bwd_add_string(unsigned __int8 *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  v4 = qword_9D7B0;
  do
  {
    if (v2 == 39)
    {
      LOBYTE(v2) = 46;
    }

    *v4++ = v2;
    v5 = *result++;
    v2 = v5;
  }

  while (v5);
  qword_9D7B0 = v4;
  return result;
}

void bwd_add_list_element()
{
  if (bMemoryOverflow)
  {
    return;
  }

  v0 = qword_9D7F8;
  v1 = malloc_type_malloc(0x38uLL, 0x1030040B94BF364uLL);
  if (!v0)
  {
    qword_9D7F8 = v1;
    if (v1)
    {
      v1[5] = 0;
      goto LABEL_8;
    }

LABEL_12:
    bMemoryOverflow = 1;
    return;
  }

  v2 = qword_9D7E0;
  *(qword_9D7E0 + 48) = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v1[5] = v2;
  v1 = *(v2 + 48);
LABEL_8:
  qword_9D7E0 = v1;
  v1[6] = 0;
  v1[2] = 0;
  v3 = lFlags & 0xFFFFFFFF7FEFFBFFLL;
  v1[4] = lFlags & 0xFFFFFFFF7FEFFBFFLL | 0x80000000;
  if ((byte_9D79C & 1) != 0 || byte_9D804)
  {
    if (nLangIDGlb == 7)
    {
      v4 = 2147516414;
    }

    else
    {
      v4 = 2147549183;
    }

    v1[4] = v3 | v4;
  }
}

uint64_t bwd_set_list_element(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = qword_9D7E0;
  if (qword_9D7E0)
  {
    *qword_9D7E0 = result;
    *(v3 + 8) = a2;
    *(v3 + 24) = a3;
  }

  return result;
}

void bwd_add_space()
{
  v0 = qword_9D7B0;
  if (byte_9D800)
  {
    v1 = 31;
  }

  else
  {
    v1 = 32;
  }

  *qword_9D7B0 = v1;
  qword_9D7B0 = v0 + 1;
}

uint64_t bwd_keep_contraction()
{
  v0 = qword_9D7D0;
  if (qword_9D7B0 - qword_9D7D0 < 2)
  {
    return 1;
  }

  if (nLangIDGlb == 7)
  {
    v2 = *(qword_9D7B0 - 2);
    return v2 == 44 || v2 == 33;
  }

  else
  {
    if (nLangIDGlb == 9 && nSubLangIDGlb != 3)
    {
      v5 = 0;
      while (1)
      {
        do
        {
          v6 = *v0++;
        }

        while (v6 == 173 || v6 == 30);
        if (v6 != asc_210DC[v5])
        {
          break;
        }

        if (++v5 == 2)
        {
          return 1;
        }
      }
    }

    if (nLangIDGlb == 12)
    {
      return no_exception(1, "\tq.\x01[82cklmntvx])\x01[bdlms]=\x01[9aekx]+\x01", (qword_9D7B0 - 2));
    }

    else
    {
      return 0;
    }
  }
}

void bwd_add_seg(uint64_t a1)
{
  v140 = 0;
  v1 = &unk_9D000;
  v2 = (a1 & 0x7000004) == 0 && qword_9D7C8 == a1;
  if (v2)
  {
    return;
  }

  v139 = qword_9D7E8;
  v3 = &unk_9D000;
  if ((qword_9D7C8 & 0x102400) != 0)
  {
    v4 = bwd_keep_contraction();
    v5 = qword_9D7D0;
    if (v4)
    {
      goto LABEL_44;
    }

    v6 = qword_9D7B0;
    v7 = pBwdLangGlb;
    v8 = nLangIDGlb;
    v9 = nLangIDGlb == 9;
    v10 = nSubLangIDGlb == 3 && nLangIDGlb == 9;
    v136 = v10;
    if (nSubLangIDGlb == 3)
    {
      v9 = 0;
    }

    v129 = v9;
    v133 = pLangGlb;
    v11 = *&stru_20.segname[pBwdLangGlb + 16];
    v12 = v139;
    while (1)
    {
      v13 = v6 - 1;
      if (!no_exception(0, v11, v6 - 1) && !no_exception(0, *(&dword_18 + v7), v6 - 1))
      {
LABEL_42:
        v1 = &unk_9D000;
        goto LABEL_44;
      }

      v3[246] = v13;
      v14 = v12 - 1;
      qword_9D7E8 = v12 - 1;
      v15 = &v13[-v5];
      if (v8 == 7)
      {
        if (v15 <= 1)
        {
          goto LABEL_31;
        }

        v16 = 0;
        v17 = v6 - 3;
        while (1)
        {
          do
          {
            v18 = *v17++;
          }

          while (v18 == 173 || v18 == 30);
          if (v18 != asc_26CCE[v16])
          {
            break;
          }

          if (++v16 == 3)
          {
            goto LABEL_30;
          }
        }
      }

      v96 = v15 <= 1;
      v20 = v136;
      if (v96)
      {
        v20 = 0;
      }

      if (v20 && *(v6 - 3) == 39 && no_exception(1, *&stru_20.segname[v7 + 8], v6 - 3))
      {
LABEL_30:
        v13 = v6 - 2;
        qword_9D7B0 = (v6 - 2);
        v14 = v12 - 2;
        qword_9D7E8 = v12 - 2;
      }

LABEL_31:
      if (&v13[-v5] < 1)
      {
        goto LABEL_40;
      }

      v6 = v13 - 1;
      if (no_exception(1, *(&stru_20.vmsize + v7), v13 - 1))
      {
        v21 = *v6;
      }

      else if (!v129 || *v13 != 46 || (v21 = *v6, v21 != 61))
      {
LABEL_40:
        v6 = v13;
        goto LABEL_41;
      }

      if (v21 != *v133[11] && !no_exception(1, *&stru_20.segname[v7 + 8], v13 - 1))
      {
        goto LABEL_40;
      }

      qword_9D7B0 = (v13 - 1);
      qword_9D7E8 = --v14;
LABEL_41:
      v12 = v14;
      v3 = &unk_9D000;
      if (bwd_keep_contraction())
      {
        goto LABEL_42;
      }
    }
  }

  v5 = qword_9D7D0;
LABEL_44:
  v22 = v3[246];
  v23 = &v22[-v5];
  if (v22 <= v5)
  {
    goto LABEL_238;
  }

  *v22 = 0;
  v3[246] = v22 + 1;
  bwd_add_list_element();
  v24 = v1[249];
  if (v24 != 0x2000)
  {
    v27 = qword_9D7E0;
    goto LABEL_235;
  }

  v25 = (dword_9D850 != 0) | byte_9D840;
  if ((dword_9D850 != 0) | byte_9D840 & 1)
  {
    v124 = 0;
    dword_9D850 = 0;
    v24 = 0x100000;
    v26 = &unk_9D000;
    goto LABEL_114;
  }

  v26 = &unk_9D000;
  if ((byte_9D854 & 1) == 0 && !dword_9D7A0)
  {
    v124 = 0;
    v24 = 0x2000;
    goto LABEL_114;
  }

  byte_9D854 = 0;
  if (nLangIDGlb == 7)
  {
    v28 = qword_9D7D0;
    v29 = qword_9D7E0;
    if (qword_9D7E0)
    {
      *qword_9D7E0 = qword_9D7D0;
      v29[1] = v23;
      v29[3] = 32;
    }

    v30 = *v28;
    v31 = **(&stru_20.maxprot + pLangGlb);
    v32 = v30 != v31;
    if (v29 && v30 != v31)
    {
      v29[4] = 0x100000;
    }

    v3[246] = v28;
    word_9D856 = 0;
    LOBYTE(v33) = *v28;
    v34 = v28;
    while (1)
    {
      if (v33 > 0x5Fu)
      {
        if (v33 == 126)
        {
          LOBYTE(v33) = -33;
          goto LABEL_73;
        }

        if (v33 == 96)
        {
          LOBYTE(v33) = -28;
          goto LABEL_73;
        }
      }

      else
      {
        if (v33 == 56)
        {
          LOBYTE(v33) = -4;
          goto LABEL_73;
        }

        if (v33 == 57)
        {
          LOBYTE(v33) = -10;
LABEL_73:
          *v34 = v33;
LABEL_74:
          v36 = v34;
          goto LABEL_75;
        }
      }

      if (**(&stru_20.nsects + pLangGlb) != v33)
      {
        goto LABEL_74;
      }

      v36 = v34 + 1;
      v35 = v34[1];
      if (!v35)
      {
        goto LABEL_74;
      }

      byte_9D855 = v33;
      LOBYTE(word_9D856) = v35;
      *(v26 + 250) = v36;
      if (bwd_fetch_char(&v140, &byte_9D855, 0, 1))
      {
        *v36 = v140;
      }

      LOBYTE(word_9D856) = 0;
      LOBYTE(v33) = *v36;
      v26 = &unk_9D000;
LABEL_75:
      if (**(&stru_20.maxprot + pLangGlb) == v33)
      {
        if (v36[1] != 126)
        {
          v32 = 0;
        }

        goto LABEL_110;
      }

      v37 = v36;
      v38 = *&stru_68.sectname[pLangGlb];
      while (1)
      {
        do
        {
          v39 = *v37++;
        }

        while (v39 == 173 || v39 == 30);
        if (v39 != *v38)
        {
          break;
        }

        if (!*++v38)
        {
          v36 = &v36[strlen(*&stru_68.sectname[pLangGlb]) - 1];
          v32 = 1;
          goto LABEL_86;
        }
      }

      v42 = *(&stru_20.filesize + pLangGlb);
      if (*v42 != v33)
      {
        if (!v33)
        {
          goto LABEL_102;
        }

        if (v33 > 0xDEu || (v33 - 123) >= 0xE6u)
        {
          if (v32)
          {
            LOBYTE(v33) = v33 & 0xDF;
          }

LABEL_108:
          v26 = &unk_9D000;
        }

        else
        {
          v26 = &unk_9D000;
          if (v33 <= 0xBFu && (v33 - 91) <= 0xE5u)
          {
            if (v33 != 48 || v36[1] == 35)
            {
LABEL_102:
              byte_9D855 = v33;
              if (bwd_fetch_char(&v140, &byte_9D855, 0, 0))
              {
                LOBYTE(v33) = v140;
              }

              else
              {
                LOBYTE(v33) = *v36;
              }

              goto LABEL_108;
            }

            LOBYTE(v33) = 48;
          }
        }

        *v28++ = v33;
        v3[246] = v28;
        goto LABEL_110;
      }

      v43 = &v36[strlen(v42)];
      v36 = v43 - 1;
      v44 = *v43;
      if (*v43)
      {
        v45 = v44 > 0xDE || v44 - 123 >= 0xFFFFFFE6;
        v26 = &unk_9D000;
        v32 = 0;
        if (v45)
        {
          *v43 = v44 & 0xDF;
        }
      }

      else
      {
        v32 = 0;
LABEL_86:
        v26 = &unk_9D000;
      }

LABEL_110:
      v34 = v36 + 1;
      *(v26 + 250) = v36 + 1;
      v33 = v36[1];
      v1 = &unk_9D000;
      if (!v33)
      {
        *v28 = 0;
        v22 = v28 + 1;
        v3[246] = v22;
        *(v26 + 250) = v22;
        goto LABEL_238;
      }
    }
  }

  v124 = 1;
  v24 = 1024;
LABEL_114:
  v27 = qword_9D7E0;
  if (v23 < 2 || !bwd_exceptions[0])
  {
    v46 = &v22[-v5];
    if (!qword_9D7E0)
    {
      goto LABEL_212;
    }

    goto LABEL_119;
  }

  if ((~*(qword_9D7E0 + 32) & 0x7FFELL) == 0)
  {
    v46 = &v22[-v5];
    goto LABEL_123;
  }

  v76 = 0;
  v77 = *(v26 + 250);
  v122 = v24;
  v123 = qword_9D7B8;
  v131 = v3[246];
  v78 = 1;
  v79 = v77;
  v46 = v23;
  v128 = v25;
  v126 = v77;
  while (1)
  {
    v80 = &bwd_exceptions[160 * v76];
    v81 = *(v80 + 19);
    if ((v81 & 0x1C000) != 0)
    {
      v82 = *(v80 + 17);
    }

    else
    {
      if (v79 != v77)
      {
        goto LABEL_207;
      }

      v82 = v46;
      if (*(v80 + 17) != v46)
      {
        goto LABEL_207;
      }
    }

    if (v82 <= v23)
    {
      v83 = 0;
      v84 = *v80;
      while (v79[v83] == v84)
      {
        v84 = bwd_exceptions[160 * v76 + 1 + v83++];
        if (!v84)
        {
          if (v82 == v46)
          {
            if ((v81 & 0x2000) != 0)
            {
              v118 = qword_9D7E0;
              if (qword_9D7E0)
              {
                v119 = v80 + 65;
                v120 = *(v80 + 18);
                *qword_9D7E0 = v80 + 65;
                v118[1] = v120;
                v118[3] = 32;
                if ((v81 & 0x600) == 0)
                {
                  if ((v25 & 1) != 0 || (v121 = *v119, *v119) && ((v121 - 223) > 0xFFFFFFE0 || (v121 - 91) >= 0xFFFFFFE6))
                  {
                    v118[4] = 0x100000;
                  }
                }
              }

              v22 = *(v26 + 250);
              goto LABEL_302;
            }
          }

          else
          {
            if ((v81 & 0x4000) == 0 || v79 != v77)
            {
              if (v79[v83])
              {
                if ((v81 & 0x8000) == 0 || v79 <= v77)
                {
                  break;
                }
              }

              else if ((v81 & 0x10000) == 0)
              {
                break;
              }
            }

            v85 = *(v80 + 18);
            v86 = v85 - v82;
            v138 = &v79[v83];
            if (v85 <= v82 || v123 - v131 <= v86)
            {
              v135 = v46;
            }

            else
            {
              v135 = v86 + v46;
              v131 += v86;
              v3[246] = v131;
              v87 = strlen(&v79[v83]);
              memmove(&v79[v85], &v79[v83], v87 + 1);
              v85 = *(v80 + 18);
            }

            memcpy(v79, v80 + 65, v85);
            v77 = v126;
            if ((v80[153] & 6) == 0 && v79 != v126)
            {
              v88 = *v79;
              if (*v79)
              {
                if ((v88 - 223) > 0xFFFFFFE0 || (v88 - 91) >= 0xFFFFFFE6)
                {
                  *v79 = v88 | 0x20;
                }
              }
            }

            v89 = *(v80 + 18);
            v23 -= *(v80 + 17);
            v79 += v89;
            v46 = v135;
            if (v138 > v79)
            {
              v90 = v135 + v89 - v83;
              v131 = v131 + v89 - v83;
              v3[246] = v131;
              v91 = strlen(v138);
              memmove(v79, v138, v91 + 1);
              v77 = v126;
              v46 = v90;
            }

            v78 = 0;
            v26 = &unk_9D000;
            v25 = v128;
          }

          break;
        }
      }
    }

LABEL_207:
    if (++v76 == 100)
    {
      v76 = 0;
      v2 = v78 == 0;
      v92 = v78 != 0;
      if (!v2)
      {
        ++v79;
      }

      v23 -= v92;
      v78 = 1;
      if (v23 <= 1)
      {
        break;
      }
    }
  }

  v27 = qword_9D7E0;
  v1 = &unk_9D000;
  v24 = v122;
  if (!qword_9D7E0)
  {
LABEL_212:
    v47 = nLangIDGlb;
    v75 = 1;
    goto LABEL_214;
  }

LABEL_119:
  if ((v24 & 0x100400) != 0 && v46 <= 1 && ((qword_9D7D8 | a1) & 0xC0) != 0)
  {
    v47 = nLangIDGlb;
    goto LABEL_224;
  }

LABEL_123:
  v48 = *(&dword_8 + pLangGlb);
  v47 = nLangIDGlb;
  if ((v48 & 0x80000000) != 0)
  {
    v75 = 0;
LABEL_214:
    if (v46 >= 2)
    {
      v93 = v27;
      v94 = v46;
      v95 = *(v26 + 250);
      if (v47 == 9 && !no_exception(1, byte_486A4, *(v26 + 250)))
      {
        v46 = v94;
        v27 = v93;
        goto LABEL_225;
      }

      if (bwd_fetch_char(&v140, v95, 0, 1))
      {
        if ((v75 & 1) == 0)
        {
          *v93 = v95;
          v93[1] = 1;
          v93[3] = 32;
        }

        if (v93 != 0 && (v25 & 1) != 0)
        {
          v93[4] = 0x100000;
        }

        *v95 = v140;
        v22 = (v95 + 2);
        qword_9D7D0 = (v95 + 2);
        v3[246] = v95 + 2;
        goto LABEL_238;
      }

      v46 = v94;
      v27 = v93;
    }

LABEL_224:
    if (v47 != 9)
    {
LABEL_234:
      v23 = v46;
LABEL_235:
      v100 = &unk_9D000;
      v46 = v23;
      if (!v27)
      {
LABEL_237:
        v22 = v3[246];
        v100[250] = v22;
        goto LABEL_238;
      }

LABEL_236:
      *v27 = v100[250];
      *(v27 + 8) = v46;
      *(v27 + 24) = v24;
      goto LABEL_237;
    }

LABEL_225:
    if (v139 - qword_9D7E8 >= 1)
    {
      v96 = *qword_9D7E8 != 47 || v46 < 3;
      if (!v96 && *(qword_9D7E8 - 2) == 47)
      {
        if ((v124 & 1) != 0 || (v97 = v46, v98 = v27, v99 = no_exception(0, byte_486AE, (qword_9D7E8 - 1)), v27 = v98, v46 = v97, v99))
        {
          *(v27 + 32) |= 0x2000uLL;
          v100 = &unk_9D000;
          goto LABEL_236;
        }
      }
    }

    goto LABEL_234;
  }

  v49 = 0;
  v50 = *pLangGlb;
  v22 = *(v26 + 250);
  v134 = v46;
  v137 = qword_9D7E8;
  v127 = v25;
  v130 = nSubLangIDGlb;
  v125 = qword_9D7D8;
  v51 = v27;
  v52 = *(&dword_8 + pLangGlb);
  while (1)
  {
    v53 = v50[3];
    if (v53 != v46)
    {
      if (v47 != 9)
      {
        goto LABEL_158;
      }

      v55 = no_exception(1, "\t.[cdjlmnts", &v22[v53]);
      v48 = v52;
      v27 = v51;
      v46 = v134;
      if (!v55)
      {
        goto LABEL_171;
      }

      goto LABEL_131;
    }

    if (v47 != 9)
    {
      break;
    }

LABEL_131:
    if (v53 > 1)
    {
      goto LABEL_136;
    }

    v54 = *v137;
    if ((v127 & (v54 == 35)) == 0)
    {
      goto LABEL_133;
    }

LABEL_171:
    v50 += 5;
    v2 = v49++ == v48;
    if (v2)
    {
      v75 = 0;
      v1 = &unk_9D000;
      v26 = &unk_9D000;
      v25 = v127;
      goto LABEL_214;
    }
  }

  if (v53 <= 1)
  {
    v54 = *v137;
LABEL_133:
    if (v54 == 45)
    {
      v56 = v137[1];
      if (v56 == 32 || v56 == 45)
      {
LABEL_158:
        if (v47 == 7)
        {
          v67 = *(v27 + 32);
          if ((v67 & 2) != 0 && v46 == 1)
          {
            v69 = v50[1];
            if (*v69 == 39)
            {
              v70 = v69 + 1;
              v71 = v22;
              while (1)
              {
                do
                {
                  v72 = *v71++;
                }

                while (v72 == 173 || v72 == 30);
                if (v72 != *v70)
                {
                  break;
                }

                if (!*++v70)
                {
                  v61 = v50[4];
                  goto LABEL_170;
                }
              }
            }
          }
        }

        goto LABEL_171;
      }
    }
  }

LABEL_136:
  if (v130 == 3)
  {
    v57 = *v50[1];
    if (*v50[1])
    {
      if (v57 > 0xDE || v57 - 123 >= 0xFFFFFFE6)
      {
        if ((v125 & 4) != 0)
        {
          v59 = no_exception(1, byte_4869D, **(v27 + 40));
          v48 = v52;
          v27 = v51;
          v46 = v134;
          if (!v59)
          {
            goto LABEL_158;
          }
        }

        v60 = no_exception(1, "\x7F|\x01&\x01", v137);
        v48 = v52;
        v27 = v51;
        v46 = v134;
        if (!v60)
        {
          goto LABEL_158;
        }
      }
    }
  }

  v61 = v50[4];
  if ((v61 & 0x800000) != 0)
  {
    if (v125 > 2)
    {
      goto LABEL_158;
    }

    v68 = *v137;
    if (v68 >= 0x21 && v68 != 160)
    {
      goto LABEL_158;
    }
  }

  v62 = v50[1];
  v63 = v22;
  do
  {
    do
    {
      v64 = *v63++;
    }

    while (v64 == 173 || v64 == 30);
    if (v64 != *v62)
    {
      goto LABEL_158;
    }
  }

  while (*++v62);
  v67 = *(v27 + 32);
LABEL_170:
  if ((v67 & v61 & 0x9000FFFF) != 0)
  {
    goto LABEL_171;
  }

  v112 = v50[2];
  *v27 = *v50;
  *(v27 + 8) = v112;
  v113 = 1024;
  if (v124)
  {
    v113 = 0x100000;
  }

  if (v127)
  {
    v113 = 1049600;
  }

  *(v27 + 24) = 32;
  *(v27 + 32) = v113;
  if (v53 < v46)
  {
    bwd_add_list_element();
    v114 = v50[3];
    v115 = (qword_9D7D0 + v114);
    v1 = &unk_9D000;
    if ((v24 & 0x400) != 0 && v115[1] == 115)
    {
      v116 = qword_9D7E0;
      if (qword_9D7E0)
      {
        v117 = v134 + ~v114;
        *qword_9D7E0 = v115 + 1;
        goto LABEL_296;
      }
    }

    else
    {
      *v115 = 39;
      v116 = qword_9D7E0;
      if (qword_9D7E0)
      {
        v117 = v134 - v50[3];
        *qword_9D7E0 = v115;
LABEL_296:
        *(v116 + 8) = v117;
        *(v116 + 24) = 32;
      }
    }

    v22 = v3[246];
    qword_9D7D0 = v22;
    goto LABEL_238;
  }

LABEL_302:
  v3[246] = v22;
  v1 = &unk_9D000;
LABEL_238:
  v101 = qword_9D7E8;
  v102 = v139 - qword_9D7E8;
  if (v139 - qword_9D7E8 >= 1)
  {
    while (2)
    {
      v103 = pBwdLangGlb;
      v104 = *(&dword_18 + pBwdLangGlb);
      if (v102 == 1 || *v101 != **(&stru_20.maxprot + pLangGlb))
      {
        if (!no_exception(1, v104, v101))
        {
          goto LABEL_246;
        }

        v1[249] = 0x1000000;
      }

      else
      {
        if (no_exception(1, v104, v101 + 1))
        {
          qword_9D7C8 = 0x1000000;
          qword_9D7E8 = ++v101;
          v1 = &unk_9D000;
          goto LABEL_247;
        }

        v1 = &unk_9D000;
LABEL_246:
        v1[249] = 0x4000000;
      }

LABEL_247:
      if (no_exception(1, *(&stru_20.vmsize + v103), v101))
      {
        v105 = v139 - v101 < 2;
      }

      else
      {
        v105 = 1;
      }

      if (v105)
      {
        v106 = &unk_9D000;
      }

      else
      {
        *v22++ = *v101;
        v106 = &unk_9D000;
        qword_9D7B0 = v22;
        v101 = ++qword_9D7E8;
      }

      *v22 = *v101;
      ++qword_9D7E8;
      v107 = qword_9D7D0;
      v22[1] = 0;
      v108 = v22 + 1;
      v106[246] = v108 + 1;
      bwd_add_list_element();
      v109 = qword_9D7E0;
      if (qword_9D7E0)
      {
        v110 = v1[249];
        *qword_9D7E0 = qword_9D7D0;
        v109[1] = &v108[-v107];
        v109[3] = v110;
      }

      v22 = v106[246];
      qword_9D7D0 = v22;
      v101 = qword_9D7E8;
      v102 = v139 - qword_9D7E8;
      if (v139 - qword_9D7E8 <= 0)
      {
        goto LABEL_258;
      }

      continue;
    }
  }

  v109 = qword_9D7E0;
LABEL_258:
  if (qword_9D7A8 >= 1 && v109)
  {
    v109[2] = qword_9D7A8;
    qword_9D7A8 = 0;
  }

  if (v1[249])
  {
    qword_9D7D8 = v1[249];
  }

  v1[249] = a1;
  v111 = 0x4000;
  if (a1 > 127)
  {
    if (a1 >= 0x100000)
    {
      if (a1 == 0x4000000 || a1 == 0x2000000)
      {
        goto LABEL_278;
      }

      if (a1 != 0x100000)
      {
        goto LABEL_272;
      }
    }

    else
    {
      if (a1 == 128)
      {
        goto LABEL_278;
      }

      if (a1 != 1024 && a1 != 0x2000)
      {
LABEL_272:
        if ((qword_9D7D8 & 0x1024C0) != 0)
        {
          v111 = 0x10000;
          goto LABEL_278;
        }

        return;
      }
    }

    v111 = 0x8000;
    goto LABEL_278;
  }

  if (a1 >= 3 && ((a1 - 4) > 0x3C || ((1 << (a1 - 4)) & 0x1000000010000001) == 0))
  {
    goto LABEL_272;
  }

LABEL_278:
  qword_951F8 = v111;
}

BOOL bwd_find_leftchar(uint64_t a1, char *__s2, int a3)
{
  if (a1)
  {
    v5 = a1;
    do
    {
      v6 = *(v5 + 24);
      if (v6 == 0x2000000)
      {
        if (!strcmp(*v5, __s2))
        {
          return 1;
        }
      }

      else if (v6 == 0x4000000 && !strcmp(*v5, __s2))
      {
        break;
      }

      v5 = *(v5 + 40);
    }

    while (v5);
  }

  v7 = (qword_9D7E8 + a3);
  v8 = 1;
  if (!no_exception(1, *(&dword_18 + pBwdLangGlb), v7))
  {
    return *v7 < 0x21u;
  }

  return v8;
}

void bwd_resolve_nospace()
{
  v0 = nLangIDGlb != 9 || nSubLangIDGlb == 3;
  if (!v0 && qword_9D7C8 == 0x2000)
  {
    v1 = qword_9D7D0;
    if (qword_9D7B0 - qword_9D7D0 == 1)
    {
      if ((*qword_9D7D0 | 2) == 0x2B)
      {
LABEL_17:
        v5 = qword_9D7E8;
        v6 = *qword_9D7E8;
        if (!memchr(".,+(=", v6, 6uLL) && (!memchr("/;:", v6, 4uLL) || *(v5 + 1) >= 0x21u))
        {
          bwd_add_seg(1);
          v7 = qword_9D7B0;
          if (byte_9D800)
          {
            v8 = 31;
          }

          else
          {
            v8 = 32;
          }

          *qword_9D7B0 = v8;
          qword_9D7B0 = v7 + 1;
        }
      }
    }

    else if (qword_9D7B0 - qword_9D7D0 == 2)
    {
      v2 = 0;
      while (1)
      {
        do
        {
          v3 = *v1++;
        }

        while (v3 == 173 || v3 == 30);
        if (v3 != asc_210DC[v2])
        {
          break;
        }

        if (++v2 == 2)
        {
          goto LABEL_17;
        }
      }
    }
  }
}

uint64_t bwd_add_rightchars()
{
  v0 = pBwdLangGlb;
  v1 = qword_9D7E8;
  while (1)
  {
    v2 = *(&dword_18 + v0);
    if (!no_exception(1, v2, v1 + 1))
    {
      result = no_exception(1, *&stru_20.segname[v0 + 8], v1 + 1);
      if (!result)
      {
        return result;
      }
    }

    if (v1[1] == 30 && v1[2])
    {
      qword_9D7A8 = 1;
      ++v1;
    }

    qword_9D7E8 = (v1 + 1);
    if (no_exception(1, v2, v1 + 1))
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = 0x4000000;
    }

    bwd_add_seg(v4);
    v5 = qword_9D7B0;
    v6 = qword_9D7B0;
    *qword_9D7B0 = *qword_9D7E8;
    v7 = (v6 + 1);
    qword_9D7B0 = v7;
    v1 = qword_9D7E8;
    if (nLangIDGlb == 7)
    {
      v8 = 0;
      v9 = qword_9D7E8;
      while (1)
      {
        do
        {
          v10 = *v9++;
        }

        while (v10 == 173 || v10 == 30);
        if (v10 != asc_26CCE[v8])
        {
          break;
        }

        if (++v8 == 3)
        {
          v1 = ++qword_9D7E8;
          goto LABEL_25;
        }
      }
    }

    if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && *qword_9D7E8 == 39)
    {
      v12 = (qword_9D7E8 + 1);
      if (no_exception(1, *(&stru_20.vmsize + pBwdLangGlb), (qword_9D7E8 + 1)))
      {
        if (v1[2] >= 0x21u)
        {
          qword_9D7E8 = v12;
          *(v5 + 1) = *v12;
          v7 = (v5 + 2);
          qword_9D7B0 = v5 + 2;
          v1 = qword_9D7E8;
        }
      }
    }

LABEL_25:
    if (v1[1] == 30 && v1[2])
    {
      qword_9D7E8 = (v1 + 1);
      qword_9D7A8 = 1;
      ++v1;
    }

    v0 = pBwdLangGlb;
    if (no_exception(1, *(&stru_20.vmsize + pBwdLangGlb), v1) && v1[1] >= 0x21u)
    {
      qword_9D7C8 = 0x4000000;
      qword_9D7E8 = (v1 + 1);
      *v7 = v1[1];
      qword_9D7B0 = (v7 + 1);
      v1 = qword_9D7E8;
      v13 = qword_9D7E8 + 1;
      v14 = *(qword_9D7E8 + 1);
      v0 = pBwdLangGlb;
      if (v14 != 30)
      {
        goto LABEL_33;
      }

      if (*(qword_9D7E8 + 2))
      {
        ++qword_9D7E8;
        qword_9D7A8 = 1;
        v14 = v1[2];
        v1 = v13;
LABEL_33:
        if (v14 >= 0x21 && !no_exception(1, *(&dword_18 + pBwdLangGlb), v1 + 1) && *(qword_9D7E0 + 24) == 0x4000000 && !strcmp(*qword_9D7E0, qword_9D7D0))
        {
          qword_9D7C8 = 0x2000000;
        }
      }
    }
  }
}

uint64_t bwd_no_locution()
{
  v0 = nLangIDGlb;
  v1 = nLangIDGlb != 9 || nSubLangIDGlb == 3;
  if (!v1)
  {
    if (qword_9D7C8 == 0x2000)
    {
      v23 = *(qword_9D7B0 - 1);
      if (v23 != 45 && v23 != *(&stru_20.filesize + pBwdLangGlb))
      {
        return 1;
      }
    }

    v25 = 0;
    v26 = qword_9D7E8;
    v27 = qword_9D7E8;
    do
    {
      do
      {
        v28 = *v27++;
      }

      while (v28 == 173 || v28 == 30);
      if (v28 != aOC[v25])
      {
        goto LABEL_6;
      }

      ++v25;
    }

    while (v25 != 3);
    v30 = *(qword_9D7E8 + 3);
    if (v30 < 0x21)
    {
      goto LABEL_57;
    }

    if (no_exception(1, "\t[/,:;+(\x01", (qword_9D7E8 + 3)))
    {
      if (v30 == 45 || *(v26 + 4) < 0x21u)
      {
        goto LABEL_57;
      }
    }

    else if (v30 == 45)
    {
LABEL_57:
      bwd_add_seg(0x2000);
      v31 = qword_9D7B0;
      v32 = 79;
      for (i = 1; i != 8; ++i)
      {
        if (v32 == 39)
        {
          LOBYTE(v32) = 46;
        }

        *v31++ = v32;
        v32 = aOClock[i];
      }

      qword_9D7B0 = v31;
      v22 = qword_9D7E8 + 2;
LABEL_62:
      qword_9D7E8 = v22;
      bwd_add_rightchars();
      return 0;
    }

    if (v30 == *(&stru_20.filesize + pBwdLangGlb))
    {
      goto LABEL_57;
    }
  }

LABEL_6:
  if (v0 != 12)
  {
    return 1;
  }

  if (qword_9D7C8 == 0x2000)
  {
    v2 = *(qword_9D7B0 - 1);
    if (v2 != 45 && v2 != *(&stru_20.filesize + pBwdLangGlb))
    {
      return 1;
    }
  }

  result = 1;
  if ((lFlags & 0x4000) == 0 && (byte_9D79C & 1) == 0 && (byte_9D804 & 1) == 0)
  {
    v5 = *(&dword_8 + pLangGlb);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = 0;
      v7 = *pLangGlb;
      v8 = qword_9D7E8;
      v9 = pBwdLangGlb;
      while ((*(v7 + 33) & 0x40) == 0)
      {
LABEL_19:
        v7 += 5;
        v1 = v6++ == v5;
        if (v1)
        {
          return 1;
        }
      }

      v10 = v7[1];
      v11 = v8;
      do
      {
        do
        {
          v12 = *v11++;
        }

        while (v12 == 173 || v12 == 30);
        if (v12 != *v10)
        {
          goto LABEL_19;
        }
      }

      while (*++v10);
      v15 = v7[3];
      v16 = &v15[v8];
      v17 = v15[v8];
      if (v17 >= 0x21)
      {
        if (no_exception(1, "\t[=):;/,+?\x01", &v15[v8]) && no_exception(1, "a+\x01", v16 - 1))
        {
          if (v17 == 45 || v16[1] < 0x21u)
          {
            goto LABEL_38;
          }
        }

        else if (v17 == 45)
        {
          goto LABEL_38;
        }

        if (v17 != *(&stru_20.filesize + v9) || v7[2][*v7 - 1] != 85)
        {
          goto LABEL_19;
        }
      }

LABEL_38:
      bwd_add_seg(0x2000);
      v18 = *v7 + 1;
      v19 = **v7;
      v20 = qword_9D7B0;
      do
      {
        if (v19 == 39)
        {
          LOBYTE(v19) = 46;
        }

        *v20++ = v19;
        v21 = *v18++;
        v19 = v21;
      }

      while (v21);
      qword_9D7B0 = v20;
      v22 = &v7[3][qword_9D7E8 - 1];
      goto LABEL_62;
    }
  }

  return result;
}

unsigned __int8 **bwd_add_abbrev_char(unsigned __int8 **result, int a2)
{
  v2 = **result;
  if (v2 > 0x38)
  {
    switch(v2)
    {
      case '9':
        v3 = a2 == 0;
        v4 = -42;
        v5 = -10;
        break;
        v3 = a2 == 0;
        v4 = -60;
        v5 = -28;
        break;
      case '~':
        v6 = qword_9D7B0;
        v5 = -33;
LABEL_24:
        *v6 = v5;
        v10 = (v6 + 1);
        goto LABEL_25;
      default:
        goto LABEL_16;
    }

LABEL_21:
    if (!v3)
    {
      v5 = v4;
    }

LABEL_23:
    v6 = qword_9D7B0;
    goto LABEL_24;
  }

  if (v2 != 46)
  {
    if (v2 == 52)
    {
      v11 = qword_9D7B0;
      *qword_9D7B0 = 26691;
      v10 = v11 + 2;
LABEL_25:
      qword_9D7B0 = v10;
      goto LABEL_26;
    }

    if (v2 == 56)
    {
      v3 = a2 == 0;
      v4 = -36;
      v5 = -4;
      goto LABEL_21;
    }

LABEL_16:
    v5 = v2 & 0xDF;
    if (!a2)
    {
      v5 = v2;
    }

    goto LABEL_23;
  }

  v7 = qword_9D7B0;
  v8 = qword_9D7B0;
  *qword_9D7B0 = 46;
  qword_9D7B0 = v8 + 1;
  if (((*result)[1] | 0x80) != 0xA0)
  {
    if (byte_9D800)
    {
      v9 = 31;
    }

    else
    {
      v9 = 32;
    }

    *(v7 + 1) = v9;
    v10 = v7 + 2;
    goto LABEL_25;
  }

LABEL_26:
  ++*result;
  return result;
}

unint64_t bwd_generic_abbrev(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    if ((v1 - 123) <= 0xFFFFFFE4 && (v1 & 0xFE) != 0x38)
    {
      break;
    }

    v3 = &a1[v2];
    if (a1[v2 + 1] != 46)
    {
      break;
    }

    v2 += 2;
    v1 = v3[2];
  }

  while (v1);
  if (v2 <= 3)
  {
    return 0;
  }

  else
  {
    return v2 - 1;
  }
}

uint64_t bwd_terminate_abbrev()
{
  v0 = qword_9D7B0;
  v1 = qword_9D7B0;
  *qword_9D7B0 = 46;
  qword_9D7B0 = v1 + 1;
  v2 = *(qword_9D7E8 + 1);
  if (v2 < 0x41 || v2 == 160)
  {
    return bwd_add_rightchars();
  }

  if (byte_9D800)
  {
    v3 = 31;
  }

  else
  {
    v3 = 32;
  }

  *(v0 + 1) = v3;
  qword_9D7B0 = v0 + 2;
  return result;
}

uint64_t bwd_no_abbrev(unsigned __int8 **a1)
{
  v4 = (nSubLangIDGlb != 3 || nLangIDGlb != 9) && dword_9D7A0 == 0;
  if (!v4 || (qword_9D7C8 & 0x1024C0) != 0)
  {
    return 1;
  }

  v27[7] = v1;
  v27[8] = v2;
  v6 = qword_9D7E8;
  v7 = *qword_9D7E8;
  switch(v7)
  {
    case '8':
      v8 = a1 + 31;
      break;
    case '9':
      v8 = a1 + 30;
      break;
      v8 = a1 + 27;
      break;
    default:
      v8 = &a1[hash_map[*qword_9D7E8]];
      break;
  }

  v9 = *v8;
  if (**v8)
  {
    v10 = *(qword_9D7E8 + 1);
    do
    {
      v27[0] = v9;
      v11 = *v9;
      if (v11 == 36)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = *v12;
      v14 = (qword_9D7E8 + 1);
      if (((v10 ^ v13) & 0xFFFFFFDF) != 0)
      {
        v15 = v10;
      }

      else
      {
        do
        {
          if (v13 == 46)
          {
            if ((v14[1] | 0x80) == 0xA0)
            {
              v14 += 2;
            }

            else
            {
              ++v14;
            }
          }

          else
          {
            ++v14;
          }

          v16 = *++v12;
          v13 = v16;
          v15 = *v14;
        }

        while (((v15 ^ v16) & 0xFFFFFFDF) == 0);
      }

      if (v13)
      {
          ;
        }
      }

      else if (v15 == 46)
      {
        bwd_add_seg(32);
        v22 = 0;
        v23 = qword_9D7E8;
        while (1)
        {
          do
          {
            v24 = *v23++;
          }

          while (v24 == 173 || v24 == 30);
          if (v24 != aQf_0[v22])
          {
            break;
          }

          if (++v22 == 3)
          {
            v26 = qword_9D7B0;
            *qword_9D7B0 = 29264;
            *(v26 + 2) = 111;
            qword_9D7B0 = v26 + 3;
            goto LABEL_54;
          }
        }

        bwd_add_abbrev_char(&qword_9D7E8, v11 == 36);
LABEL_54:
        if (v11 == 36)
        {
          v27[0] = ++v9;
        }

        if (*v9)
        {
          do
          {
            bwd_add_abbrev_char(v27, 0);
          }

          while (*v27[0]);
        }

        qword_9D7E8 = v14;
LABEL_59:
        bwd_terminate_abbrev();
        return 0;
      }

      v9 = v12 + 1;
    }

    while (v12[1]);
  }

  v18 = bwd_generic_abbrev(qword_9D7E8);
  if (v18)
  {
    v19 = v18;
    v20 = *(v6 + v18 + 1);
    if (v20 <= 0x40)
    {
      v21 = v20 == 32 && *(v6 + v18 + 2) == **(&stru_20.filesize + pLangGlb);
      bwd_add_seg(32);
      do
      {
        bwd_add_abbrev_char(&qword_9D7E8, v21);
        --v19;
      }

      while (v19);
      goto LABEL_59;
    }
  }

  return 1;
}

uint64_t wh_backward_translate(_BYTE *a1, _BYTE *a2, size_t size, _DWORD *a4)
{
  v4 = size;
  if (a4)
  {
    *a4 = 0;
  }

  result = 87;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  if (a2 == a1)
  {
    return result;
  }

  v7 = (size - 1);
  if (size < 1)
  {
    return result;
  }

  *a2 = 0;
  if (!*a1)
  {
    return 0;
  }

  pExcMapGlb = &brl_set_classbwd;
  qword_9D7C0 = a2;
  v8 = &a2[v7];
  qword_9D7B8 = v8;
  *v8 = 0;
  v9 = &unk_9D000;
  qword_9D7E8 = a1;
  v10 = a2 + 1;
  v11 = &unk_9D000;
  qword_9D7B0 = (a2 + 1);
  v12 = 32;
  v898 = 32;
  LOBYTE(v13) = *a1;
  __src = a2 + 1;
  if (!*a1)
  {
    v15 = a2 + 1;
    goto LABEL_73;
  }

  v893 = a1;
  __dst = a2;
  v14 = 0;
  v15 = a2 + 1;
  do
  {
    if (v10 == v8)
    {
      v10 = v8;
      goto LABEL_70;
    }

    *v10 = v13;
    if (v13 == 35)
    {
      if (*(v10 - 1) == 30)
      {
        *(v10 - 1) = 7715;
        goto LABEL_19;
      }
    }

    else
    {
      if (v13 == 30)
      {
        LOBYTE(v16) = *(v10 - 1);
        if (v16)
        {
          if (memchr("!'><$\x7F", *(v10 - 1), 8uLL))
          {
            *v10 = v16;
            *(v10 - 1) = 30;
          }

          else
          {
            LOBYTE(v16) = 30;
          }

          v9 = &unk_9D000;
LABEL_58:
          if (v16 == v12)
          {
            v28 = v12;
          }

          else
          {
            v28 = 0;
          }

          if (v16 == v12)
          {
            v29 = v14 + 1;
          }

          else
          {
            v29 = v14;
          }

          if (v12 >= 0x21u)
          {
            v27 = v28;
          }

          else
          {
            v27 = v12;
          }

          if (v12 >= 0x21u)
          {
            v14 = v29;
          }

          goto LABEL_69;
        }

LABEL_19:
        LOBYTE(v16) = 30;
        goto LABEL_58;
      }

      if (v13 < 0x21u || v13 - 150 <= 0x17 && ((1 << (v13 + 106)) & 0x800403) != 0)
      {
        LOBYTE(v16) = v13;
        goto LABEL_58;
      }
    }

    v17 = v9[253];
    v18 = *v17;
    if (v18 == 226)
    {
      v20 = v17[1];
      if ((v20 & 0xFC) == 0xA0 && (v23 = v17[2], v21 = v17 + 2, v22 = v23, (v23 & 0xC0) == 0x80))
      {
        v24 = v22 & 0x3F;
        if (b8DotBraille)
        {
          v25 = v24 & 0xFFFFFFFFFFFFFF3FLL | ((v20 & 3) << 6);
        }

        else
        {
          v25 = v24;
        }

        v16 = brl_set_ansi[v25];
        v9[253] = v21;
      }

      else
      {
LABEL_37:
        if (pCharmapGlb)
        {
          v16 = 0;
          while (*(pCharmapGlb + v16) != v13)
          {
            if (++v16 == 256)
            {
              v16 = 0;
              break;
            }
          }
        }

        else
        {
          v16 = v13;
        }

        if (!b8DotBraille)
        {
          v26 = 0;
          while (brl_set_ansi[v26] != v16)
          {
            if (++v26 == 256)
            {
              goto LABEL_50;
            }
          }

          if ((v26 & 0xC0) != 0)
          {
            v16 = brl_set_ansi[v26 & 0x3F];
          }
        }
      }

LABEL_50:
      if (v16 < 33)
      {
        LOBYTE(v16) = 32;
        *v10 = 32;
        v27 = v12;
        if (v12 != 32)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *v10 = v16;
        if (v12 != 32)
        {
          goto LABEL_58;
        }

        v27 = 0;
        if (v16)
        {
          if ((v16 - 58) <= 0xF5u)
          {
            v27 = 0;
            if (v16 != 42)
            {
              v12 = v16;
              if (v16 != 108)
              {
                goto LABEL_58;
              }
            }
          }
        }
      }

LABEL_69:
      v15 = v10 + 1;
      qword_9D7B0 = (v10 + 1);
      a1 = v9[253];
      v12 = v27;
      ++v10;
      goto LABEL_70;
    }

    if (v18 != 239)
    {
      goto LABEL_37;
    }

    if (v17[1] != 187)
    {
      goto LABEL_37;
    }

    v19 = v17[2];
    a1 = v17 + 2;
    if (v19 != 191)
    {
      goto LABEL_37;
    }

LABEL_70:
    v9[253] = a1 + 1;
    v13 = *++a1;
  }

  while (v13);
  LOBYTE(v13) = v14 > 3;
  a1 = v893;
  a2 = __dst;
  v11 = &unk_9D000;
LABEL_73:
  v898 = v12;
  *v15 = 0;
  if (v15 == v8)
  {
    return 111;
  }

  v30 = v15 - a2;
  v31 = v15 - a2 - 1;
  if (v4 < 2 * v31)
  {
    return 111;
  }

  if (((v898 > 0x20u) & v13) != 0 || b8DotBraille)
  {
    memmove(a2, __src, v30);
    if (a4)
    {
      if (v30 >= 2)
      {
        v537 = 0;
        v538 = vdupq_n_s64(v30 - 2);
        v539 = xmmword_277A0;
        v540 = xmmword_277B0;
        v541 = a4 + 2;
        v542 = vdupq_n_s64(4uLL);
        do
        {
          v543 = vmovn_s64(vcgeq_u64(v538, v540));
          if (vuzp1_s16(v543, *v538.i8).u8[0])
          {
            *(v541 - 2) = v537;
          }

          if (vuzp1_s16(v543, *&v538).i8[2])
          {
            *(v541 - 1) = v537 + 1;
          }

          if (vuzp1_s16(*&v538, vmovn_s64(vcgeq_u64(v538, *&v539))).i32[1])
          {
            *v541 = v537 + 2;
            v541[1] = v537 + 3;
          }

          v537 += 4;
          v539 = vaddq_s64(v539, v542);
          v540 = vaddq_s64(v540, v542);
          v541 += 4;
        }

        while (((v30 + 2) & 0xFFFFFFFFFFFFFFFCLL) != v537);
      }

      LODWORD(v544) = v31 - 1;
LABEL_1346:
      result = 0;
      a4[v31] = v544;
      return result;
    }

    return 0;
  }

  v894 = a1;
  __dsta = a2;
  v32 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v33 = &unk_9D000;
  qword_9D838 = v32;
  if (!v32)
  {
    return 8;
  }

  *v32 = 0;
  v32[v7] = 0;
  v34 = &unk_9D000;
  qword_9D7D0 = (v32 + 1);
  v11[246] = v32 + 1;
  v35 = &unk_9D000;
  byte_9D958 = 0;
  byte_9D95C = 0;
  dword_9D7A0 = 0;
  byte_9D854 = 0;
  byte_9D840 = 0;
  dword_9D850 = 0;
  byte_9D804 = 0;
  byte_9D79C = 0;
  bMemoryOverflow = 0;
  qword_9D7E0 = 0;
  qword_9D7F8 = 0;
  qword_951F8 = 0x4000;
  qword_9D7D8 = 0;
  v36 = &unk_9D000;
  qword_9D7A8 = 0;
  byte_9D800 = a4 != 0;
  qword_9D7C8 = (lFlags >> 15) & 0x800;
  m = &unk_9D000;
  qword_9D7E8 = __src;
  v38 = *__src;
  if (!*__src)
  {
    goto LABEL_1347;
  }

  v39 = __src;
  while (2)
  {
    if ((lFlags & 0x4000000) != 0)
    {
      goto LABEL_86;
    }

    switch(v38)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 31:
        v40 = 1;
        goto LABEL_84;
      case 9:
      case 32:
      case 160:
        bwd_add_seg(2);
        v42 = v11[246];
        *v42 = *m[253];
        v11[246] = v42 + 1;
        byte_9D79C = 0;
        byte_9D854 = 0;
        byte_9D95C = 0;
        goto LABEL_88;
      case 30:
        v45 = qword_9D7C8 >= 3 && (qword_9D7C8 & 0x7000004) == 0;
        if (!v45)
        {
          bwd_add_seg(1);
          v46 = v11[246];
          v47 = 30;
          goto LABEL_107;
        }

        v79 = v39[1];
        if (v79 < 0x21 || v79 == 160 || no_exception(1, *(&dword_18 + pBwdLangGlb), v39 + 1) && ((v80 = v39[2], v80 < 0x21) || v80 == 160))
        {
          bwd_add_seg(1);
          v95 = v11[246];
          *v95 = 30;
          v11[246] = v95 + 1;
          bwd_add_rightchars();
        }

        else
        {
          v36[245] = v11[246] - v34[250] + 1;
        }

        goto LABEL_486;
      case 35:
        if (!bwd_is_number(v39))
        {
          bwd_add_seg(0x2000);
          m = &unk_9D000;
          v93 = v11[246];
          *v93 = *qword_9D7E8;
          v94 = v93 + 1;
          v11[246] = v94;
          if (nLangIDGlb == 12 && &v94[-v34[250]] == &dword_0 + 1 && no_exception(1, "\t[=)/?\x01", (qword_9D7E8 + 1)))
          {
            bwd_add_seg(4);
            LOBYTE(v38) = *++qword_9D7E8;
            goto LABEL_86;
          }

          goto LABEL_88;
        }

        bwd_resolve_nospace();
        v56 = qword_9D7C8;
        if ((qword_9D7C8 & 0x102400) == 0)
        {
          goto LABEL_538;
        }

        v57 = qword_9D7E8;
        v58 = (qword_9D7E8 + 1);
        if (*(qword_9D7E8 + 1) == 44 && *(qword_9D7E8 + 2) - 107 >= 0xFFFFFFF6)
        {
          v59 = *(qword_9D7E8 - 1);
          if (!*(qword_9D7E8 - 1) || !memchr("bcdfghjklmnpqrstvwxz", *(qword_9D7E8 - 1), 0x15uLL) && (v59 != 30 || !*(v57 - 2) || !memchr("bcdfghjklmnpqrstvwxz", *(v57 - 2), 0x15uLL)))
          {
            goto LABEL_538;
          }
        }

        if (nLangIDGlb != 7)
        {
          goto LABEL_535;
        }

        if ((byte_9D854 & 1) != 0 || dword_9D7A0)
        {
          goto LABEL_538;
        }

        v60 = *(v57 - 1);
        if (v60 == 115)
        {
          v11 = &unk_9D000;
          v34 = &unk_9D000;
          if (*(v57 - 2) == **(&stru_20.nsects + pLangGlb))
          {
            goto LABEL_538;
          }
        }

        else if (v60 == 46)
        {
          v11 = &unk_9D000;
          v34 = &unk_9D000;
          if (*(v57 - 2) != stru_B8.segname[pLangGlb + 3])
          {
            goto LABEL_538;
          }
        }

        else
        {
          v11 = &unk_9D000;
          v34 = &unk_9D000;
          if (v60 == 30 && (*(v57 - 2) == 46 && *(v57 - 3) != stru_B8.segname[pLangGlb + 3] || *(v57 - 2) == 115 && *(v57 - 3) == **(&stru_20.nsects + pLangGlb)))
          {
            goto LABEL_538;
          }
        }

LABEL_535:
        if (!no_exception(0, "\t-\x01", v57 - 1) && !no_exception(1, "\t-\x01[abcdefghij]-\x01", v58) && !backward_disabled(v57))
        {
          bwd_add_seg(0x2000);
          m = &unk_9D000;
          v293 = v11[246];
          *v293 = *qword_9D7E8;
          v11[246] = v293 + 1;
          v36 = &unk_9D000;
          goto LABEL_1332;
        }

LABEL_538:
        if ((v56 & 0xC0) != 0)
        {
          goto LABEL_539;
        }

        if (nLangIDGlb == 7)
        {
          v231 = *(qword_9D7E8 - 1);
          if (v231 == 46)
          {
            v232 = *(qword_9D7E8 - 2);
          }

          else
          {
            if (v231 != 30 || *(qword_9D7E8 - 2) != 46)
            {
              goto LABEL_559;
            }

            v232 = *(qword_9D7E8 - 3);
          }

          if (v232 != stru_B8.segname[pLangGlb + 3])
          {
LABEL_539:
            if ((lFlags & 0x40000000) == 0 && nLangIDGlb == 7 && (v228 = qword_9D7E8, *(qword_9D7E8 - 1) - 107 >= 0xFFFFFFF6) && *(qword_9D7E8 - 2) - 107 >= 0xFFFFFFF6 && *(qword_9D7E8 - 3) && memchr(",;:/?+=(*)", *(qword_9D7E8 - 3), 0xBuLL) && *(v228 - 4) && memchr(",;:/?+=(*)", *(v228 - 4), 0xBuLL))
            {
              bwd_add_seg(32);
              v229 = v11[246];
              v230 = 46;
            }

            else
            {
              bwd_add_seg(2);
              v229 = v11[246];
              if (byte_9D800)
              {
                v230 = 31;
              }

              else
              {
                v230 = 32;
              }
            }

            *v229 = v230;
            v11[246] = v229 + 1;
          }
        }

LABEL_559:
        bwd_add_seg(64);
        v233 = v11[246];
        *v233 = *qword_9D7E8;
        v234 = v233 + 1;
        v11[246] = v233 + 1;
        v235 = qword_9D7E8;
        v237 = qword_9D7E8 + 1;
        v236 = *(qword_9D7E8 + 1);
        if (v236 == 30)
        {
          ++qword_9D7E8;
          qword_9D7A8 = &v234[-v34[250]];
          v236 = v235[2];
          v235 = v237;
        }

        if (v236 <= 0x2E && ((1 << v236) & 0x608000000000) != 0)
        {
          qword_9D7E8 = (v235 + 1);
          v233[1] = v235[1];
          v234 = v233 + 2;
          v11[246] = v233 + 2;
          v235 = qword_9D7E8;
        }

        v238 = v34[250];
        while (1)
        {
          v239 = v235 + 1;
          v240 = v235[1];
          if (v235[1])
          {
            v241 = v240 != 30 && (v240 - 97) >= 0xA;
            if (!v241)
            {
              goto LABEL_618;
            }
          }

          v242 = pLangGlb;
          if (v240 == stru_B8.segname[pLangGlb + 1] || v240 == stru_B8.segname[pLangGlb + 2])
          {
            v243 = v235[2];
            if (v235[2])
            {
              if (v243 == 30 || (v243 - 97) < 0xA)
              {
                goto LABEL_618;
              }
            }
          }

          v245 = nLangIDGlb;
          if (nLangIDGlb == 7)
          {
            if (v240 != 41)
            {
              goto LABEL_614;
            }

            v246 = *v235;
            if (v246 != 106 && (v246 != 41 || *(v235 - 1) != 106))
            {
              goto LABEL_614;
            }

            goto LABEL_618;
          }

          v247 = nLangIDGlb == 9;
          v248 = nSubLangIDGlb;
          if (nLangIDGlb == 9 && nSubLangIDGlb != 2)
          {
            break;
          }

LABEL_603:
          v252 = v247 && v248 == 3;
          if ((!v252 || v240 != 33 && v240 != 124) && (!v247 || v240 != 124 && v240 != 52 || in(v235[2], 11)))
          {
LABEL_614:
            if (!v240 || v245 == 12 || (lFlags & 0x40000000) != 0 || !memchr(",;:/?+=(*)", v240, 0xBuLL))
            {
              v256 = *(qword_9D7D0 + 1);
              if ((v256 - 107) < 0xFFFFFFF6)
              {
                goto LABEL_634;
              }

              v257 = pBwdLangGlb;
              if (no_exception(1, *(&dword_18 + pBwdLangGlb), v235) && no_exception(1, *&stru_20.segname[v257 + 8], v235 - 1))
              {
                v11 = &unk_9D000;
                qword_9D7B0 = (v234 - 2);
                qword_9D7E8 = (v235 - 1);
                bwd_add_seg(0x4000000);
                v258 = qword_9D7B0;
                *qword_9D7B0 = *qword_9D7E8;
                qword_9D7B0 = v258 + 1;
                ++qword_9D7E8;
                v259 = 0x1000000;
                goto LABEL_649;
              }

              if (*(v235 - 1) - 107 >= 0xFFFFFFF6 && ((v263 = *v235, v263 == 61) || v263 == 44 || v263 == 41 && v256 != 106))
              {
                v11 = &unk_9D000;
                qword_9D7B0 = (v234 - 1);
                v259 = 0x4000000;
LABEL_649:
                bwd_add_seg(v259);
                v264 = qword_9D7B0;
                *qword_9D7B0 = *qword_9D7E8;
                v261 = (v264 + 1);
                v35 = &unk_9D000;
LABEL_650:
                qword_9D7B0 = v261;
              }

              else
              {
LABEL_634:
                v45 = v245 == 7;
                v11 = &unk_9D000;
                v35 = &unk_9D000;
                if (v45 && v240 == stru_B8.segname[v242 + 3] && v235[2] == 42)
                {
                  v260 = v235[3];
                  if (v260 < 0x21 || v260 == 42 && v235[4] <= 0x20u)
                  {
                    qword_9D7E8 = (v235 + 1);
                    bwd_add_seg(32);
                    v261 = qword_9D7B0;
                    v262 = qword_9D7E8;
                    do
                    {
                      qword_9D7E8 = v262 + 1;
                      *v261++ = 39;
                      v262 = qword_9D7E8;
                    }

                    while (*(qword_9D7E8 + 1) == 42);
                    goto LABEL_650;
                  }
                }
              }

              if (nLangIDGlb != 7 || (v265 = qword_9D7E8, v266 = *(qword_9D7E8 + 1), !*(qword_9D7E8 + 1)) || ((v267 = memchr("!'><$\x7F", *(qword_9D7E8 + 1), 8uLL), v266 != 33) ? (v268 = v267 == 0) : (v268 = 1), v268 || v266 == stru_B8.segname[pLangGlb + 3] && *(v265 + 2) == 41 || v266 == **(&stru_20.maxprot + pLangGlb) && (qword_9D7D8 > 2 || !no_exception(1, "arm\x01er\x01f[<8\x01fach\x01st\x01te\x01", (v265 + 2)) || (v269 = *(v265 + 2), !*(v265 + 2)) || v269 <= 0xDE && v269 - 123 < 0xFFFFFFE6)))
              {
                bwd_add_rightchars();
              }

              else
              {
                bwd_add_seg(2);
                v270 = qword_9D7B0;
                if (byte_9D800)
                {
                  v271 = 31;
                }

                else
                {
                  v271 = 32;
                }

                *qword_9D7B0 = v271;
                qword_9D7B0 = v270 + 1;
              }

              m = &unk_9D000;
              goto LABEL_660;
            }
          }

LABEL_618:
          qword_9D7E8 = (v235 + 1);
          v253 = *v239;
          if (v253 == 30)
          {
            qword_9D7A8 = &v234[-v238];
            v254 = 30;
            v255 = &unk_9D000;
          }

          else
          {
            *v234++ = v253;
            v255 = &unk_9D000;
            qword_9D7B0 = v234;
            v239 = qword_9D7E8;
            v254 = *qword_9D7E8;
          }

          if (v254 == stru_B8.segname[pLangGlb + 3] && v239[1] && v239[2] - 107 >= 0xFFFFFFF6)
          {
            qword_9D7E8 = (v239 + 1);
            *v234++ = v239[1];
            v255[246] = v234;
            v235 = qword_9D7E8;
            v254 = *qword_9D7E8;
            if (*qword_9D7E8)
            {
              goto LABEL_625;
            }
          }

          else
          {
            v235 = v239;
            if (v254)
            {
LABEL_625:
              if (memchr(",;:/?+=(*)", v254, 0xBuLL))
              {
                qword_9D7C8 = 128;
              }
            }
          }
        }

        if ((lFlags & 0x40000000) == 0)
        {
          if (!v235[1])
          {
LABEL_597:
            if (v240 == stru_B8.segname[v242 + 3] && v235[2] == 124 && v235[3] - 107 >= 0xFFFFFFF6)
            {
              v251 = v235[4];
              if ((v251 - 107) > 0xF5u || !in(v251, 9))
              {
                goto LABEL_618;
              }
            }

            v247 = 1;
            goto LABEL_603;
          }

          if (memchr("#0-1|4$k'\x7F", v235[1], 0xBuLL))
          {
            goto LABEL_618;
          }
        }

        if ((v240 == 58 || v240 == 45) && v235[2] - 107 >= 0xFFFFFFF6)
        {
          v250 = v235[3];
          if ((v250 - 107) > 0xF5u || !in(v250, 9))
          {
            goto LABEL_618;
          }
        }

        goto LABEL_597;
      case 41:
        v43 = nLangIDGlb != 7 || qword_9D7C8 > 8;
        if (v43)
        {
          if (nLangIDGlb == 12 && qword_9D7C8 == 0x2000)
          {
            v44 = v11[246];
            if (memchr("cklmntvx28", *(v44 - 1), 0xBuLL) && !in(v39[1], 11))
            {
              *v44 = 41;
              v11[246] = v44 + 1;
              goto LABEL_486;
            }
          }

          else if (qword_9D7C8 < 9)
          {
            goto LABEL_480;
          }

          v97 = *(v39 - 1);
          if (v97 == 33 || v97 == 44 || (v98 = v39[1], v99 = 0x4000000, v98 >= 0x21) && v98 != 160)
          {
LABEL_480:
            v99 = 0x2000;
          }

          bwd_add_seg(v99);
          m = &unk_9D000;
LABEL_85:
          LOBYTE(v38) = *m[253];
LABEL_86:
          v41 = v11[246];
          goto LABEL_87;
        }

        v77 = v39[1];
        if (v77 > 0x28)
        {
          if (v77 != 41)
          {
            v78 = &unk_9D000;
            if (v77 != 62)
            {
              goto LABEL_480;
            }

            goto LABEL_445;
          }

          v104 = v39[2];
          if (v104 == 30)
          {
            v77 = v39[3];
            v78 = &unk_9D000;
            if (v77 != 62)
            {
LABEL_159:
              if (v77 != 35)
              {
                goto LABEL_480;
              }
            }
          }

          else
          {
            v78 = &unk_9D000;
            if (v104 != 35)
            {
              goto LABEL_444;
            }
          }
        }

        else
        {
          v78 = &unk_9D000;
          if (v77 != 30)
          {
            goto LABEL_159;
          }

          v103 = v39[2];
          if (v103 != 35)
          {
            if (v103 != 41)
            {
              v11 = &unk_9D000;
              v36 = &unk_9D000;
              v34 = &unk_9D000;
              if (v103 != 62)
              {
                goto LABEL_480;
              }

              goto LABEL_445;
            }

            v104 = v39[3];
            v11 = &unk_9D000;
            v36 = &unk_9D000;
            v34 = &unk_9D000;
            if (v104 != 35)
            {
LABEL_444:
              if (v104 != 62)
              {
                goto LABEL_480;
              }
            }
          }
        }

LABEL_445:
        if ((byte_9D854 & 1) != 0 || v78[488])
        {
          bwd_add_seg(1024);
          v195 = v11[246];
          v198 = 62;
          for (i = 1; i != 6; ++i)
          {
            if (v198 == 39)
            {
              LOBYTE(v198) = 46;
            }

            *v195++ = v198;
            v198 = aArt[i];
          }
        }

        else
        {
          bwd_add_seg(512);
          v195 = v11[246];
          v196 = 36;
          for (j = 1; j != 6; ++j)
          {
            if (v196 == 39)
            {
              LOBYTE(v196) = 46;
            }

            *v195++ = v196;
            v196 = aArt_0[j];
          }
        }

        v11[246] = v195;
        v200 = qword_9D7E8;
        v201 = *(qword_9D7E8 + 1);
        if (v201 == 30)
        {
          ++qword_9D7E8;
          *v195++ = 30;
          v11[246] = v195;
          v200 = qword_9D7E8;
          v201 = *(qword_9D7E8 + 1);
        }

        if (v201 == 41)
        {
          qword_9D7E8 = (v200 + 1);
          v201 = v200[2];
          ++v200;
        }

        if (v201 == 30)
        {
          qword_9D7E8 = (v200 + 1);
          *v195++ = 30;
          v11[246] = v195;
          v200 = qword_9D7E8;
        }

        goto LABEL_474;
      case 45:
        bwd_resolve_nospace();
        v49 = qword_9D7E8;
        v50 = (qword_9D7E8 + 1);
        v51 = *(qword_9D7E8 + 1);
        if (__PAIR64__(*(qword_9D7E8 + 2), v51) == 0x2D0000002DLL)
        {
          bwd_add_seg(2);
          m = &unk_9D000;
          v52 = v11[246];
          *v52 = *qword_9D7E8;
          v48 = v52 + 1;
          v53 = qword_9D7E8;
          v36 = &unk_9D000;
          do
          {
            qword_9D7E8 = v53 + 1;
            *v48++ = *(v53 + 1);
            v53 = qword_9D7E8;
          }

          while (*(qword_9D7E8 + 1) == 45);
          goto LABEL_111;
        }

        v70 = v34;
        v71 = v11[246];
        v72 = v70[250];
        v73 = v71 - v72;
        if (v71 - v72 != 1)
        {
          v74 = nLangIDGlb;
          v75 = qword_9D7C8;
          if (nLangIDGlb == 12 && qword_9D7C8 == 0x2000)
          {
            if (v73 != 3)
            {
LABEL_227:
              if (no_exception(1, byte_486D5, v50))
              {
                bwd_add_seg(4);
                m = &unk_9D000;
                v101 = v11[246];
                *v101 = *qword_9D7E8;
                v11[246] = v101 + 1;
                ++qword_9D7E8;
                bwd_add_seg(32);
LABEL_373:
                v169 = v11[246];
                *v169 = *qword_9D7E8;
                v11[246] = v169 + 1;
LABEL_442:
                v36 = &unk_9D000;
                v33 = &unk_9D000;
LABEL_661:
                v34 = &unk_9D000;
                goto LABEL_88;
              }

              v74 = 12;
              v75 = 0x2000;
LABEL_251:
              v106 = *(v49 - 1);
              if (v106 < 0x21 || (v106 != 36 ? (v107 = v75 == 0x2000000) : (v107 = 1), v107))
              {
                if (v51 < 0x21 || v51 == 160)
                {
                  bwd_add_seg(0x2000);
                  m = &unk_9D000;
                  goto LABEL_373;
                }
              }

              if (v74 == 7)
              {
                v108 = *(&stru_20.cmd + pBwdLangGlb);
                if (no_exception(1, v108, v49 - 1) && (*(v49 - 2) < 0x21u || no_exception(1, v108, v49 - 2)))
                {
                  if (in(v51, 41))
                  {
LABEL_264:
                    qword_9D7C8 = 0x2000000;
                    v109 = 0x2000;
                    goto LABEL_265;
                  }

                  if (!v51)
                  {
                    v112 = 0;
                    goto LABEL_768;
                  }

                  if ((v51 - 123) > 0xE4u || (v51 & 0xFE) == 0x38)
                  {
                    goto LABEL_264;
                  }
                }

                v112 = 0;
                if (v51 == 46)
                {
                  v43 = v106 > 0x20;
                  v11 = &unk_9D000;
                  v34 = &unk_9D000;
                  v35 = &unk_9D000;
                  if (!v43)
                  {
                    bwd_add_seg(0);
                    m = &unk_9D000;
                    ++qword_9D7E8;
                    byte_9D804 = 1;
LABEL_531:
                    v36 = &unk_9D000;
                    v33 = &unk_9D000;
                    goto LABEL_88;
                  }

LABEL_269:
                  if (((v75 & 0x1024E0) == 0 || (v113 = *(v49 - 1), v114 = **(&stru_20.maxprot + pLangGlb), v113 == v114) || v113 == 30 && *(v49 - 2) == v114) && ((v75 & 0x1024E1) != 0 || v51 >= 0x21 && v51 != 160))
                  {
                    if (v73 != 1)
                    {
                      v112 = 1;
                    }

                    if ((v112 & 1) == 0 && *v72 == **(&stru_20.maxprot + pLangGlb) && qword_9D7D8 == 64 && bwd_is_number(v50))
                    {
                      qword_9D7C8 = 0;
                      bwd_add_seg(32);
                      v115 = v11[246];
                      if (byte_9D800)
                      {
                        v116 = 31;
                      }

                      else
                      {
                        v116 = 32;
                      }

                      *v115 = v116;
                      m = &unk_9D000;
                      v115[1] = *qword_9D7E8;
                      v115[2] = v116;
                      v11[246] = v115 + 3;
                    }

                    else
                    {
                      bwd_add_seg(0x2000);
                      m = &unk_9D000;
                      v117 = v11[246];
                      *v117 = *qword_9D7E8;
                      v11[246] = v117 + 1;
                    }
                  }

                  else
                  {
                    bwd_add_seg(4);
                    m = &unk_9D000;
                    v168 = v11[246];
                    *v168 = *qword_9D7E8;
                    v11[246] = v168 + 1;
                    byte_9D79C = 0;
                    byte_9D854 = 0;
                    byte_9D95C = 0;
                  }

                  goto LABEL_531;
                }

LABEL_768:
                v11 = &unk_9D000;
                v34 = &unk_9D000;
                v35 = &unk_9D000;
                goto LABEL_269;
              }

LABEL_268:
              v112 = 1;
              v34 = &unk_9D000;
              goto LABEL_269;
            }

            v76 = "\t*t(\x01";
LABEL_200:
            if (no_exception(1, v76, v72) && no_exception(1, byte_486C1, v50))
            {
              *v71 = *v49;
              v96 = v71 + 1;
LABEL_440:
              v11[246] = v96;
              goto LABEL_441;
            }

            goto LABEL_227;
          }

          goto LABEL_203;
        }

        v88 = qword_9D7D8;
        v89 = *v72 != 45 || qword_9D7D8 == 4;
        if (v89 || !no_exception(1, "-\x01ci\x01l[\xC0\x7B\x01", (qword_9D7E8 + 1)))
        {
          v74 = nLangIDGlb;
          v75 = qword_9D7C8;
          if (nLangIDGlb == 12 && qword_9D7C8 == 0x2000)
          {
            v76 = "\t[.*\x01";
            goto LABEL_200;
          }

LABEL_203:
          if (v74 != 12 && v74 != 7)
          {
            goto LABEL_268;
          }

          goto LABEL_251;
        }

        if (nLangIDGlb == 7)
        {
          if (!v51 || v51 == 30 && !v49[2])
          {
            qword_9D7C8 = 0x2000;
            *v71 = *v49;
            v96 = v71 + 1;
            v11 = &unk_9D000;
            goto LABEL_440;
          }

          qword_9D7C8 = 0;
          if ((v88 - 1) >= 2 && **qword_9D7E0 == 30)
          {
            v90 = *(qword_9D7E0 + 40);
            if (v90)
            {
              if (*(v90 + 24) == 2)
              {
                bwd_add_seg(2);
                v91 = qword_9D7B0;
                if (byte_9D800)
                {
                  v92 = 31;
                }

                else
                {
                  v92 = 32;
                }

                *qword_9D7B0 = v92;
                qword_9D7B0 = v91 + 1;
              }
            }
          }
        }

        else
        {
          qword_9D7C8 = 0;
        }

        bwd_add_seg(4);
        v11 = &unk_9D000;
        v175 = qword_9D7B0;
        *qword_9D7B0 = *qword_9D7E8;
        qword_9D7B0 = v175 + 1;
        if (nLangIDGlb != 7)
        {
          goto LABEL_388;
        }

        v176 = qword_9D7E8;
        if (no_exception(1, *(&dword_18 + pBwdLangGlb), (qword_9D7E8 + 1)))
        {
          goto LABEL_388;
        }

        v276 = *(v176 + 1);
        if (v276 > 0x1F)
        {
          goto LABEL_688;
        }

        if (v276 == 9)
        {
          goto LABEL_388;
        }

        if (v276 != 30)
        {
          goto LABEL_690;
        }

        v276 = *(v176 + 2);
        if (v276 != 9)
        {
LABEL_688:
          if (v276 != 32 && v276 != 160)
          {
LABEL_690:
            bwd_add_seg(2);
            v277 = qword_9D7B0;
            if (byte_9D800)
            {
              v278 = 31;
            }

            else
            {
              v278 = 32;
            }

            *qword_9D7B0 = v278;
            qword_9D7B0 = v277 + 1;
          }
        }

LABEL_388:
        bwd_add_seg(0);
LABEL_441:
        m = &unk_9D000;
        goto LABEL_442;
      case 48:
        if (nLangIDGlb != 7 || qword_9D7C8 > 8)
        {
          goto LABEL_480;
        }

        v55 = v39[1];
        if (v55 > 0x2F)
        {
          if (v55 == 48)
          {
            v55 = v39[2];
            if (v55 == 30)
            {
              v55 = v39[3];
              if (v55 == 62)
              {
                goto LABEL_468;
              }

              goto LABEL_118;
            }

            if (v55 == 35)
            {
              goto LABEL_468;
            }
          }
        }

        else
        {
          if (v55 != 30)
          {
LABEL_118:
            if (v55 != 35)
            {
              goto LABEL_480;
            }

            goto LABEL_468;
          }

          v105 = v39[2];
          if (v105 == 35)
          {
            goto LABEL_468;
          }

          if (v105 != 48)
          {
            v11 = &unk_9D000;
            v36 = &unk_9D000;
            v34 = &unk_9D000;
            if (v105 != 62)
            {
              goto LABEL_480;
            }

LABEL_468:
            bwd_add_seg(32);
            v202 = v11[246];
            *v202 = -89;
            v195 = v202 + 1;
            v11[246] = v202 + 1;
            v200 = qword_9D7E8;
            v203 = *(qword_9D7E8 + 1);
            if (v203 == 30)
            {
              ++qword_9D7E8;
              v202[1] = 30;
              v195 = v202 + 2;
              v11[246] = v202 + 2;
              v200 = qword_9D7E8;
              v203 = *(qword_9D7E8 + 1);
            }

            if (v203 == 48)
            {
              qword_9D7E8 = (v200 + 1);
              *v195++ = -89;
              v11[246] = v195;
              v200 = qword_9D7E8;
              v203 = *(qword_9D7E8 + 1);
            }

            if (v203 == 30)
            {
              qword_9D7E8 = (v200 + 1);
              *v195++ = 30;
              v11[246] = v195;
              v200 = qword_9D7E8;
            }

LABEL_474:
            v204 = v200[2];
            if (v200[2] && ((v204 - 107) > 0xFFFFFFF5 || v204 == 30 && v200[3] - 107 >= 0xFFFFFFF6))
            {
              if (byte_9D800)
              {
                v207 = 31;
              }

              else
              {
                v207 = 32;
              }

              *v195 = v207;
              v11[246] = v195 + 1;
LABEL_486:
              m = &unk_9D000;
            }

            else
            {
              v206 = v200[1];
              v205 = (v200 + 1);
              m = &unk_9D000;
              if (v206 == 35)
              {
                qword_9D7E8 = v205;
              }
            }

            goto LABEL_88;
          }

          v55 = v39[3];
          v11 = &unk_9D000;
          v36 = &unk_9D000;
          v34 = &unk_9D000;
          if (v55 == 35)
          {
            goto LABEL_468;
          }
        }

        if (v55 != 62)
        {
          goto LABEL_480;
        }

        goto LABEL_468;
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 250:
      case 251:
      case 252:
      case 253:
      case 254:
      case 255:
        v40 = 32;
        goto LABEL_84;
      default:
        bwd_resolve_nospace();
        v61 = nLangIDGlb;
        if (nLangIDGlb != 7)
        {
          v81 = nLangIDGlb == 9 && nSubLangIDGlb == 3;
          v82 = &unk_9D000;
          if (v81)
          {
            v83 = qword_9D7E8;
            v84 = *qword_9D7E8;
            if (v84 == 34)
            {
              v85 = *(qword_9D7E8 + 1);
              v86 = ":-01";
              v87 = 5;
            }

            else
            {
              if (v84 != 62)
              {
                goto LABEL_290;
              }

              v85 = *(qword_9D7E8 + 1);
              v86 = ":&01367|";
              v87 = 9;
            }

            if (memchr(v86, v85, v87) && v83[2] && bwd_fetch_ueb_char(&v898, v83))
            {
              bwd_add_seg(0x2000);
              v118 = v11[246];
              *v118 = v898;
              v11[246] = v118 + 1;
              m = &unk_9D000;
              qword_9D7E8 += 2;
              goto LABEL_88;
            }
          }

LABEL_290:
          if (v61 != 9 || nSubLangIDGlb != 1)
          {
            goto LABEL_294;
          }

          goto LABEL_292;
        }

        m = &unk_9D000;
        v62 = qword_9D7E8;
        v63 = *qword_9D7E8;
        if (v63 == **(&stru_20.maxprot + pLangGlb))
        {
          v64 = qword_9D7C8;
          if (*(qword_9D7E8 + 1) == 45 && (qword_9D7C8 == 0x2000 || qword_9D7C8 == 32))
          {
            bwd_add_seg(2);
            v65 = v11[246];
            if (byte_9D800)
            {
              v66 = 31;
            }

            else
            {
              v66 = 32;
            }

            *v65 = v66;
            v11[246] = v65 + 1;
            ++qword_9D7E8;
            bwd_add_seg(32);
            v67 = v11[246];
            *v67 = 45;
            v11[246] = v67 + 1;
            v68 = (qword_9D7E8 + 1);
            v36 = &unk_9D000;
            if (*(qword_9D7E8 + 1) < 0x21u)
            {
              goto LABEL_88;
            }

            v69 = pBwdLangGlb;
            if (no_exception(1, *(&dword_18 + pBwdLangGlb), (qword_9D7E8 + 1)) || no_exception(1, *(&stru_20.cmd + v69), v68) || no_exception(1, *&stru_20.segname[v69 + 8], v68))
            {
              goto LABEL_88;
            }

            goto LABEL_149;
          }
        }

        else
        {
          v64 = qword_9D7C8;
        }

        if (v63 == 39 && v64 == 0x2000)
        {
          if (*(qword_9D7E8 + 1) && memchr("!'><$\x7F", *(qword_9D7E8 + 1), 8uLL))
          {
            if (v11[246] - v34[250] == 1)
            {
              qword_9D7C8 = 32;
            }

            v100 = 2;
            goto LABEL_234;
          }

          goto LABEL_398;
        }

        if (v63 == 46)
        {
          if (v64 >= 3 && v64 != 64)
          {
            goto LABEL_398;
          }

          if (*(qword_9D7E8 + 1) == 35)
          {
            v100 = 32;
LABEL_234:
            bwd_add_seg(v100);
            v102 = v11[246];
            *v102 = *qword_9D7E8;
            v11[246] = v102 + 1;
LABEL_235:
            v36 = &unk_9D000;
            goto LABEL_88;
          }

          if (v64 >= 3)
          {
LABEL_398:
            if (qword_951F8 == 0x4000)
            {
              if (v63 == 34)
              {
                v180 = *(v62 + 1);
                if (v180 == 111)
                {
                  if (*(v62 + 2) == 44)
                  {
                    goto LABEL_675;
                  }
                }

                else if (v180 == 57 && *(v62 + 2) == 46)
                {
LABEL_675:
                  bwd_add_seg(1);
                  v272 = qword_9D7B0;
                  if (*(qword_9D7E8 + 1) == 111)
                  {
                    v273 = 62;
                  }

                  else
                  {
                    v273 = 60;
                  }

                  *qword_9D7B0 = v273;
                  qword_9D7B0 = v272 + 1;
                  v274 = qword_9D7E8;
                  qword_9D7E8 += 2;
                  if (*(v274 + 3) == 35)
                  {
                    if (byte_9D800)
                    {
                      v275 = 31;
                    }

                    else
                    {
                      v275 = 32;
                    }

                    *(v272 + 1) = v275;
                    qword_9D7B0 = v272 + 2;
                    *qword_9D7E8 = 32;
                  }

                  bwd_add_rightchars();
LABEL_376:
                  v11 = &unk_9D000;
LABEL_660:
                  v36 = &unk_9D000;
                  goto LABEL_661;
                }
              }

              v181 = 1;
            }

            else
            {
              v181 = 0;
            }

            goto LABEL_405;
          }
        }

        else
        {
          if (v64 >= 3)
          {
            goto LABEL_394;
          }

          if (!*qword_9D7E8)
          {
            goto LABEL_398;
          }
        }

        v177 = memchr("!'><$\x7F", *qword_9D7E8, 8uLL);
        if (v63 != 39 && v177 && *(v62 + 1) <= 0x20u)
        {
          bwd_add_seg(0);
          goto LABEL_235;
        }

LABEL_394:
        if (v63 != 33)
        {
          goto LABEL_398;
        }

        v178 = *(v62 + 1);
        if (v178 == 123)
        {
          v179 = "!{";
LABEL_703:
          if (bwd_find_leftchar(qword_9D7E0, v179, 2))
          {
            v284 = 0x4000000;
          }

          else
          {
            v284 = 0x2000000;
          }

          bwd_add_seg(v284);
          v11 = &unk_9D000;
          v285 = qword_9D7B0;
          *qword_9D7B0 = *qword_9D7E8++;
          *(v285 + 1) = *qword_9D7E8;
          qword_9D7B0 = v285 + 2;
          v36 = &unk_9D000;
          v34 = &unk_9D000;
          if (*(qword_9D7E8 + 1) != 33 || (v286 = *(qword_9D7E8 + 2), v286 != 61) && v286 != 123)
          {
            bwd_add_rightchars();
          }

          goto LABEL_88;
        }

        if (v178 == 61)
        {
          v179 = "!=";
          goto LABEL_703;
        }

        v181 = qword_951F8 == 0x4000;
LABEL_405:
        if (no_exception(1, "\t''[=()\x01", v62))
        {
          v182 = *(v62 + 2);
          if (v182 == 40)
          {
            v183 = 0x2000000;
          }

          else if (v182 == 61)
          {
            if (bwd_find_leftchar(qword_9D7E0, "'=", 3))
            {
              v183 = 0x4000000;
            }

            else
            {
              v183 = 0x2000000;
            }
          }

          else
          {
            v183 = 0x4000000;
          }

          bwd_add_seg(v183);
          ++qword_9D7E8;
          v11 = &unk_9D000;
          v186 = qword_9D7B0;
          *qword_9D7B0 = *qword_9D7E8++;
          *(v186 + 1) = *qword_9D7E8;
          qword_9D7B0 = v186 + 2;
          bwd_add_rightchars();
          goto LABEL_660;
        }

        v184 = !v181;
        if (v63 != 62)
        {
          v184 = 1;
        }

        v11 = &unk_9D000;
        v36 = &unk_9D000;
        v34 = &unk_9D000;
        v82 = &unk_9D000;
        if ((v184 & 1) == 0)
        {
          v185 = *(v62 + 1);
          if (v185 == 123)
          {
            v33 = &unk_9D000;
            if (strstr((v62 + 2), ">}"))
            {
              goto LABEL_712;
            }
          }

          else
          {
            v33 = &unk_9D000;
            if (v185 == 124 && strstr((v62 + 2), ">|"))
            {
LABEL_712:
              bwd_add_seg(1);
              ++qword_9D7E8;
              v287 = (qword_9D7B0 + 1);
              if (*qword_9D7E8 == 123)
              {
                *qword_9D7B0 = 91;
                while (1)
                {
                  v288 = (qword_9D7E8 + 1);
                  if (!*(qword_9D7E8 + 1))
                  {
                    break;
                  }

                  v289 = 0;
                  ++qword_9D7E8;
                  v290 = v288;
                  while (1)
                  {
                    do
                    {
                      v291 = *v290++;
                    }

                    while (v291 == 173 || v291 == 30);
                    if (v291 != asc_26D85[v289])
                    {
                      break;
                    }

                    if (++v289 == 2)
                    {
                      v354 = 93;
                      goto LABEL_859;
                    }
                  }

                  *v287++ = *v288;
                }
              }

              else
              {
                *qword_9D7B0 = 47;
                while (1)
                {
                  v294 = (qword_9D7E8 + 1);
                  if (!*(qword_9D7E8 + 1))
                  {
                    break;
                  }

                  v295 = 0;
                  ++qword_9D7E8;
                  v296 = v294;
                  while (1)
                  {
                    do
                    {
                      v297 = *v296++;
                    }

                    while (v297 == 173 || v297 == 30);
                    if (v297 != asc_265B8[v295])
                    {
                      break;
                    }

                    if (++v295 == 2)
                    {
                      v354 = 47;
LABEL_859:
                      *v287 = v354;
                      qword_9D7B0 = (v287 + 1);
                      ++qword_9D7E8;
LABEL_860:
                      bwd_add_rightchars();
                      m = &unk_9D000;
                      v11 = &unk_9D000;
                      v36 = &unk_9D000;
                      v33 = &unk_9D000;
                      v34 = &unk_9D000;
                      goto LABEL_88;
                    }
                  }

                  *v287++ = *v294;
                }
              }

              qword_9D7B0 = v287;
              goto LABEL_860;
            }
          }
        }

LABEL_292:
        if ((byte_9D95C & 1) != 0 || v35[2392])
        {
          v143 = qword_9D7E8;
          v144 = *(&stru_68.size + pLangGlb);
          while (1)
          {
            do
            {
              v145 = *v143++;
            }

            while (v145 == 173 || v145 == 30);
            if (v145 != *v144)
            {
              break;
            }

            if (!*++v144)
            {
              bwd_add_seg(0);
              m = &unk_9D000;
              qword_9D7E8 = qword_9D7E8 + strlen(*(&stru_68.size + pLangGlb)) - 1;
              byte_9D95C = 0;
              v35[2392] = 0;
              goto LABEL_88;
            }
          }
        }

LABEL_294:
        v119 = byte_9D854;
        v120 = v82[488];
        if ((byte_9D854 & 1) != 0 || v120)
        {
          v135 = qword_9D7E8;
          v136 = qword_9D7E8;
          v137 = *&stru_68.segname[pLangGlb];
          do
          {
            do
            {
              v138 = *v136++;
            }

            while (v138 == 173 || v138 == 30);
            if (v138 != *v137)
            {
              goto LABEL_296;
            }
          }

          while (*++v137);
          if ((*(&qword_9D7C8 + 1) & 0x1024) != 0 && (v61 == 12 || v61 == 9) && ((v141 = *(qword_9D7E8 + strlen(*&stru_68.segname[pLangGlb])), in(v141, 11)) || in(v141, 41)))
          {
            v142 = qword_9D7B0;
            *qword_9D7B0 = *v135;
            qword_9D7B0 = v142 + 1;
          }

          else
          {
            bwd_add_seg(0);
            qword_9D7E8 = qword_9D7E8 + strlen(*&stru_68.segname[pLangGlb]) - 1;
          }

          dword_9D7A0 = 0;
          m = &unk_9D000;
          goto LABEL_376;
        }

LABEL_296:
        v121 = byte_9D804;
        m = &unk_9D000;
        if (byte_9D804 == 1)
        {
          v122 = 0;
          v123 = qword_9D7E8;
          while (1)
          {
            do
            {
              v124 = *v123++;
            }

            while (v124 == 173 || v124 == 30);
            if (v124 != asc_2671B[v122])
            {
              break;
            }

            if (++v122 == 2)
            {
              bwd_add_seg(0);
              ++qword_9D7E8;
              byte_9D804 = 0;
              goto LABEL_660;
            }
          }
        }

        if (v120)
        {
          v121 = 1;
        }

        if (v61 == 7)
        {
          if (v121)
          {
            v126 = qword_9D7E8;
            if (*qword_9D7E8 == 39 && in(*(qword_9D7E8 + 1), 9) && in(*(v126 - 1), 9))
            {
              bwd_add_seg(32);
              m = &unk_9D000;
              v127 = v11[246];
              *v127 = *qword_9D7E8;
              v11[246] = v127 + 1;
              v36 = &unk_9D000;
              goto LABEL_1331;
            }
          }
        }

        v128 = qword_951F8;
        if (qword_951F8 == 0x4000)
        {
          v129 = qword_9D7E8;
          v130 = qword_9D7E8;
          v131 = *&stru_68.segname[pLangGlb + 16];
          while (1)
          {
            do
            {
              v132 = *v130++;
            }

            while (v132 == 173 || v132 == 30);
            if (v132 != *v131)
            {
              break;
            }

            if (!*++v131)
            {
              m = &unk_9D000;
              qword_9D7E8 = qword_9D7E8 + strlen(*&stru_68.segname[pLangGlb + 16]) - 1;
              byte_9D95C = 0;
              v35 = &unk_9D000;
              byte_9D958 = 1;
              goto LABEL_660;
            }
          }

          v170 = *&stru_68.segname[pLangGlb - 8];
          v171 = qword_9D7E8;
          while (1)
          {
            do
            {
              v172 = *v171++;
            }

            while (v172 == 173 || v172 == 30);
            if (v172 != *v170)
            {
              break;
            }

            if (!*++v170)
            {
              bwd_add_seg(0);
              m = &unk_9D000;
              qword_9D7E8 = qword_9D7E8 + strlen(*&stru_68.segname[pLangGlb - 8]) - 1;
              dword_9D7A0 = 1;
              goto LABEL_1329;
            }
          }

          v148 = v61 == 12;
          if (v61 == 12)
          {
            v191 = 0;
            v192 = qword_9D7E8;
            while (1)
            {
              do
              {
                v193 = *v192++;
              }

              while (v193 == 173 || v193 == 30);
              if (v193 != asc_26D96[v191])
              {
                break;
              }

              if (++v191 == 2)
              {
                bwd_add_seg(0);
                m = &unk_9D000;
                ++qword_9D7E8;
                byte_9D840 = 1;
                dword_9D850 = 1;
                goto LABEL_1329;
              }
            }
          }

          v208 = *&stru_68.sectname[pLangGlb];
          do
          {
            do
            {
              v209 = *v129++;
            }

            while (v209 == 173 || v209 == 30);
            if (v209 != *v208)
            {
              goto LABEL_344;
            }
          }

          while (*++v208);
          bwd_add_seg(0);
          v212 = (qword_9D7E8 + strlen(*&stru_68.sectname[pLangGlb]));
          qword_9D7E8 = (v212 - 1);
          if (!*v212 || v212[1] != *(&stru_20.filesize + pBwdLangGlb) || ((v213 = v212[2] - 100, v43 = v213 > 0x1A, v214 = (1 << v213) & 0x4008001, !v43) ? (v215 = v214 == 0) : (v215 = 1), !v215 && v212[3] < 0x41u))
          {
            byte_9D854 = 1;
            goto LABEL_1328;
          }

          dword_9D850 = 1;
          bwd_add_seg(0x2000);
          m = &unk_9D000;
          ++qword_9D7E8;
          v11 = &unk_9D000;
          v216 = qword_9D7B0;
          *qword_9D7B0 = *qword_9D7E8 & 0xDF;
          qword_9D7B0 = v216 + 1;
          bwd_add_seg(4);
          v110 = *++qword_9D7E8;
LABEL_267:
          v111 = qword_9D7B0;
          *qword_9D7B0 = v110;
          qword_9D7B0 = v111 + 1;
          goto LABEL_1330;
        }

        v148 = v61 == 12;
LABEL_344:
        if (v61 == 7)
        {
          v149 = *(qword_9D7E8 - 1);
          if (v149 < 0x21 || v149 == 61)
          {
            v187 = 0;
            v188 = qword_9D7E8;
            while (1)
            {
              do
              {
                v189 = *v188++;
              }

              while (v189 == 173 || v189 == 30);
              if (v189 != asc_20EBF[v187])
              {
                break;
              }

              if (++v187 == 2)
              {
                if (*(qword_9D7E8 + 2) >= 0x21u)
                {
                  bwd_add_seg(0);
                  m = &unk_9D000;
                  ++qword_9D7E8;
                  byte_9D804 = 1;
                  goto LABEL_1329;
                }

                break;
              }
            }
          }

          if (qword_951F8 != 0x4000)
          {
            goto LABEL_774;
          }

          v150 = 0;
          v151 = qword_9D7E8;
          while (1)
          {
            do
            {
              v152 = *v151++;
            }

            while (v152 == 173 || v152 == 30);
            if (v152 != asc_2671B[v150])
            {
              break;
            }

            if (++v150 == 2)
            {
              if (*(qword_9D7E8 + 2) >= 0x21u)
              {
                bwd_add_seg(0);
                v154 = qword_9D7E8++;
                v155 = *(v154 + 2);
                if (v155 == 46)
                {
                  bwd_add_seg(32);
                  v156 = qword_9D7B0;
                  *qword_9D7B0 = 46;
                  v157 = (v156 + 1);
                  for (k = qword_9D7E8; ; k = qword_9D7E8)
                  {
                    v160 = *(k + 1);
                    v159 = k + 1;
                    if (v160 != 46)
                    {
                      break;
                    }

                    qword_9D7E8 = v159;
                    *v157++ = 46;
                  }

                  v11 = &unk_9D000;
                }

                else
                {
                  if (!in(v155, 5))
                  {
                    byte_9D79C = 1;
                    goto LABEL_1328;
                  }

                  bwd_add_seg(32);
                  v11 = &unk_9D000;
                  v355 = qword_9D7B0;
                  *qword_9D7B0 = 46;
                  v157 = (v355 + 1);
                }

                qword_9D7B0 = v157;
                bwd_add_rightchars();
                goto LABEL_1259;
              }

              break;
            }
          }
        }

        if (qword_951F8 == 0x4000)
        {
          v161 = qword_9D7E8;
          v162 = pLangGlb;
          v163 = *(&stru_68.reloff + pLangGlb);
          v164 = qword_9D7E8;
          while (1)
          {
            do
            {
              v165 = *v161++;
            }

            while (v165 == 173 || v165 == 30);
            if (v165 != *v163)
            {
              break;
            }

            if (!*++v163)
            {
LABEL_521:
              bwd_add_seg(2048);
              v224 = qword_9D7B0;
              v225 = qword_9D7B0;
              *qword_9D7B0 = *qword_9D7E8;
              v226 = (v225 + 1);
              qword_9D7B0 = v226;
              if (strlen(*(&stru_68.reloff + pLangGlb)) >= 2)
              {
                v227 = 1;
                do
                {
                  *(v224 + v227++) = *++qword_9D7E8;
                }

                while (v227 < strlen(*(&stru_68.reloff + pLangGlb)));
                v226 = (v224 + v227);
LABEL_1334:
                qword_9D7B0 = v226;
              }

              v531 = (qword_9D7E8 + 1);
              if (*(qword_9D7E8 + 1))
              {
                ++qword_9D7E8;
                v532 = *&stru_B8.segname[pLangGlb - 8];
                v533 = v531;
                do
                {
                  do
                  {
                    v534 = *v533++;
                  }

                  while (v534 == 173 || v534 == 30);
                  if (v534 != *v532)
                  {
                    *v226++ = *v531;
                    goto LABEL_1334;
                  }
                }

                while (*++v532);
                *v226 = *v531;
                qword_9D7B0 = (v226 + 1);
                if (strlen(*&stru_B8.segname[pLangGlb - 8]) < 2)
                {
                  goto LABEL_1327;
                }

                v315 = 1;
                do
                {
                  v226[v315++] = *++qword_9D7E8;
                }

                while (v315 < strlen(*&stru_B8.segname[pLangGlb - 8]));
                goto LABEL_1326;
              }

              goto LABEL_1327;
            }
          }

          v217 = v61 == 9 && nSubLangIDGlb == 1;
          v218 = v217;
          if (v217)
          {
            v219 = *(&stru_68.flags + pLangGlb);
            v220 = qword_9D7E8;
            while (1)
            {
              do
              {
                v221 = *v220++;
              }

              while (v221 == 173 || v221 == 30);
              if (v221 != *v219)
              {
                break;
              }

              if (!*++v219)
              {
                goto LABEL_521;
              }
            }
          }

          v279 = *(&stru_68.offset + pLangGlb);
          v280 = qword_9D7E8;
          while (1)
          {
            do
            {
              v281 = *v280++;
            }

            while (v281 == 173 || v281 == 30);
            if (v281 != *v279)
            {
              break;
            }

            if (!*++v279)
            {
LABEL_745:
              bwd_add_seg(2048);
              v304 = qword_9D7B0;
              v305 = qword_9D7B0;
              *qword_9D7B0 = *qword_9D7E8;
              v226 = (v305 + 1);
              qword_9D7B0 = v226;
              if (strlen(*(&stru_68.offset + pLangGlb)) >= 2)
              {
                v306 = 1;
                do
                {
                  *(v304 + v306++) = *++qword_9D7E8;
                }

                while (v306 < strlen(*(&stru_68.offset + pLangGlb)));
                v226 = (v304 + v306);
LABEL_749:
                qword_9D7B0 = v226;
              }

              v307 = (qword_9D7E8 + 1);
              v308 = *(qword_9D7E8 + 1);
              v309 = v308 > 0x20 || ((1 << v308) & 0x100000201) == 0;
              if (v309 && v308 != 160)
              {
                ++qword_9D7E8;
                v310 = *&stru_B8.segname[pLangGlb - 8];
                v311 = v307;
                do
                {
                  do
                  {
                    v312 = *v311++;
                  }

                  while (v312 == 173 || v312 == 30);
                  if (v312 != *v310)
                  {
                    *v226++ = *v307;
                    goto LABEL_749;
                  }
                }

                while (*++v310);
                *v226 = *v307;
                qword_9D7B0 = (v226 + 1);
                if (strlen(*&stru_B8.segname[pLangGlb - 8]) < 2)
                {
                  goto LABEL_1327;
                }

                v315 = 1;
                do
                {
                  v226[v315++] = *++qword_9D7E8;
                }

                while (v315 < strlen(*&stru_B8.segname[pLangGlb - 8]));
LABEL_1326:
                qword_9D7B0 = &v226[v315];
              }

LABEL_1327:
              bwd_add_rightchars();
LABEL_1328:
              m = &unk_9D000;
LABEL_1329:
              v11 = &unk_9D000;
              goto LABEL_1330;
            }
          }

          if (v218)
          {
            v299 = *(&stru_68.flags + pLangGlb);
            v300 = qword_9D7E8;
            while (1)
            {
              do
              {
                v301 = *v300++;
              }

              while (v301 == 173 || v301 == 30);
              if (v301 != *v299)
              {
                break;
              }

              if (!*++v299)
              {
                goto LABEL_745;
              }
            }
          }

          v316 = *qword_9D7E8;
          if (v316 == **&stru_68.segname[pLangGlb + 8])
          {
            if (v61 != 7)
            {
              if (v61 != 9 || nSubLangIDGlb != 3)
              {
                if (v61 != 9 || ((v386 = *(qword_9D7E8 + 1), nSubLangIDGlb == 1) ? (v387 = v386 == 107) : (v387 = 0), !v387 ? (v388 = 0) : (v388 = 1), v386 != 61 && (v388 & 1) == 0))
                {
LABEL_941:
                  byte_9D95C = 1;
                  v35 = &unk_9D000;
                  byte_9D958 = 0;
                  m = &unk_9D000;
                  v11 = &unk_9D000;
                  goto LABEL_442;
                }
              }

              goto LABEL_796;
            }

            if (*(qword_9D7E8 + 1) != 108)
            {
              goto LABEL_941;
            }

            goto LABEL_776;
          }
        }

LABEL_774:
        if (v61 == 7)
        {
          v164 = qword_9D7E8;
          v316 = *qword_9D7E8;
LABEL_776:
          if (v316 == 33)
          {
            v320 = v164 + 1;
            v321 = v164[1];
            if (v321 == 46 || v321 == 127)
            {
LABEL_791:
              v325 = v164 + 1;
              m = &unk_9D000;
              v11 = &unk_9D000;
              v36 = &unk_9D000;
              v33 = &unk_9D000;
              v34 = &unk_9D000;
              v35 = &unk_9D000;
              do
              {
                qword_9D7E8 = v325;
                v326 = *v325++;
              }

              while (v326 == 33);
              goto LABEL_88;
            }

            v322 = 0;
            while (1)
            {
              do
              {
                v323 = *v320++;
              }

              while (v323 == 173 || v323 == 30);
              if (v323 != asc_2227B[v322])
              {
                break;
              }

              if (++v322 == 2)
              {
                goto LABEL_791;
              }
            }
          }

          else if (v316 == 39 && v164[1] == 127)
          {
            v317 = v164[2] == 127;
            byte_9D95C = v164[2] != 127;
            v35 = &unk_9D000;
            byte_9D958 = v317;
            v318 = (v164 + 1);
            m = &unk_9D000;
            v11 = &unk_9D000;
            v36 = &unk_9D000;
            v33 = &unk_9D000;
            v34 = &unk_9D000;
            do
            {
              qword_9D7E8 = v318;
              v319 = *++v318;
            }

            while (v319 == 127);
            goto LABEL_88;
          }
        }

        v164 = qword_9D7E8;
        if (qword_951F8 != 0x4000)
        {
          goto LABEL_802;
        }

        v316 = *qword_9D7E8;
        v162 = pLangGlb;
LABEL_796:
        if (v316 == **(&stru_20.filesize + v162))
        {
          if (v61 != 9 || v164[1] != 61 || v164[2] <= 0x20u)
          {
            bwd_add_seg(0);
            dword_9D850 = 1;
            byte_9D840 = 0;
            goto LABEL_1328;
          }

          goto LABEL_818;
        }

        v164 = qword_9D7E8;
LABEL_802:
        if (v61 == 7)
        {
          v327 = 0;
          v328 = v164;
          do
          {
            do
            {
              v329 = *v328++;
            }

            while (v329 == 173 || v329 == 30);
            if (v329 != asc_26D99[v327])
            {
              goto LABEL_818;
            }

            ++v327;
          }

          while (v327 != 2);
          v331 = qword_9D7C8 == 0x2000 && dword_9D850 == 0;
          if (v331 && qword_9D7B0 - qword_9D7D0 >= 1 && *qword_9D7D0 == **(&stru_20.maxprot + pLangGlb))
          {
            memmove(qword_9D7D0, (qword_9D7D0 + 1), --qword_9D7B0 - qword_9D7D0);
          }

          else
          {
            dword_9D850 = 1;
          }

          byte_9D840 = 0;
          byte_9D854 = 0;
          dword_9D7A0 = 0;
          v351 = 0x2000;
          goto LABEL_858;
        }

LABEL_818:
        if (v148)
        {
          v332 = 0;
          v333 = v164;
          while (1)
          {
            do
            {
              v334 = *v333++;
            }

            while (v334 == 173 || v334 == 30);
            if (v334 != asc_26D9C[v332])
            {
              break;
            }

            if (++v332 == 3)
            {
              goto LABEL_826;
            }
          }
        }

        v336 = 0;
        v337 = v164;
        while (1)
        {
          do
          {
            v338 = *v337++;
          }

          while (v338 == 173 || v338 == 30);
          if (v338 != asc_26C6A[v336])
          {
            break;
          }

          if (++v336 == 2)
          {
            if (*(v164 - 1) != 39)
            {
LABEL_844:
              bwd_add_seg(32);
              v344 = qword_9D7B0;
              *qword_9D7B0 = 46;
              v345 = (v344 + 1);
              v346 = qword_9D7E8 + 1;
              for (m = &unk_9D000; *(qword_9D7E8 + 1) == *qword_9D7E8; v346 = qword_9D7E8 + 1)
              {
                qword_9D7E8 = v346;
                *v345++ = 46;
              }

              v11 = &unk_9D000;
              goto LABEL_847;
            }

            break;
          }
        }

        if (v61 == 12 || v61 == 9)
        {
          v340 = 0;
          v341 = v164;
          while (1)
          {
            do
            {
              v342 = *v341++;
            }

            while (v342 == 173 || v342 == 30);
            if (v342 != asc_26AED[v340])
            {
              break;
            }

            if (++v340 == 2)
            {
              goto LABEL_844;
            }
          }
        }

        v347 = qword_9D7C8;
        if (qword_9D7C8 == 0x2000 && v148)
        {
          v349 = *v164;
          if (v349 == *(&stru_20.filesize + pBwdLangGlb))
          {
            v350 = qword_9D7D0;
            if (qword_9D7B0 - qword_9D7D0 == 1 && no_exception(1, "\t[cdjlmnst\x01", qword_9D7D0))
            {
              *v350 &= ~0x20u;
              goto LABEL_868;
            }

            v356 = qword_9D7D0;
            if (qword_9D7B0 - qword_9D7D0 == 2 && no_exception(1, "\t-[cdjlmnst\x01", qword_9D7D0))
            {
              *(v356 + 1) &= ~0x20u;
LABEL_868:
              v109 = 4;
LABEL_265:
              bwd_add_seg(v109);
              m = &unk_9D000;
LABEL_266:
              v110 = *qword_9D7E8;
              v11 = &unk_9D000;
              goto LABEL_267;
            }
          }

          if (no_exception(1, byte_486DE, v164))
          {
            if (v164[1] == 115)
            {
              bwd_add_seg(4);
              LOBYTE(v349) = *qword_9D7E8;
            }

            v11 = &unk_9D000;
            v357 = qword_9D7B0;
            *qword_9D7B0 = v349;
            qword_9D7B0 = v357 + 1;
            m = &unk_9D000;
            ++qword_9D7E8;
            v36 = &unk_9D000;
            v33 = &unk_9D000;
            v34 = &unk_9D000;
            v35 = &unk_9D000;
            if (!bwd_no_abbrev(*&stru_20.segname[pLangGlb + 16]) || !bwd_no_locution())
            {
              goto LABEL_88;
            }

            bwd_add_seg(0);
            if (*qword_9D7E8 == 115)
            {
              v40 = 32;
            }

            else
            {
              v40 = 0x2000;
            }

            goto LABEL_84;
          }
        }

        if (v61 == 7)
        {
          if ((v347 & 0x20C0) != 0)
          {
            if (no_exception(1, "\t[.,][.'$<>\x7F\x01'[.,\x01", v164))
            {
LABEL_890:
              if (*v164 == 39)
              {
                bwd_add_seg(0);
                ++qword_9D7E8;
              }

LABEL_892:
              bwd_add_seg(0x1000000);
              m = &unk_9D000;
              v363 = *qword_9D7E8;
              v353 = qword_9D7B0;
              while (1)
              {
                *v353++ = v363;
                v364 = (qword_9D7E8 + 1);
                if ((*(qword_9D7E8 + 1) | 2) != 0x2E)
                {
                  break;
                }

                ++qword_9D7E8;
                v363 = *v364;
              }

              v11 = &unk_9D000;
LABEL_910:
              qword_9D7B0 = v353;
              goto LABEL_1330;
            }

            v358 = *(v164 - 1);
            if (v358 <= 0x3D && ((1 << v358) & 0x2000420000000000) != 0 && *v164 == 46)
            {
              goto LABEL_892;
            }
          }

          v359 = 0;
          v360 = v164;
          while (1)
          {
            do
            {
              v361 = *v360++;
            }

            while (v361 == 173 || v361 == 30);
            if (v361 != asc_26C6A[v359])
            {
              break;
            }

            if (++v359 == 2)
            {
              goto LABEL_890;
            }
          }
        }

        v365 = nSubLangIDGlb;
        if (v61 == 9 && nSubLangIDGlb != 3 && (v128 == 0x4000 || (v347 & 0x2000003) != 0))
        {
          v389 = 0;
          v390 = v164;
          do
          {
            do
            {
              v391 = *v390++;
            }

            while (v391 == 173 || v391 == 30);
            if (v391 != asc_20ED7[v389])
            {
              goto LABEL_899;
            }

            ++v389;
          }

          while (v389 != 2);
          if (v164[2] != 32)
          {
            v351 = 0x2000000;
            goto LABEL_858;
          }
        }

LABEL_899:
        v366 = 0;
        v367 = v164;
        while (1)
        {
          do
          {
            v368 = *v367++;
          }

          while (v368 == 173 || v368 == 30);
          if (v368 != asc_26C7A[v366])
          {
            break;
          }

          if (++v366 == 3)
          {
            bwd_add_seg(2);
            v370 = qword_9D7B0;
            *qword_9D7B0 = 61;
            v371 = (v370 + 1);
            for (n = qword_9D7E8; ; n = qword_9D7E8)
            {
              v373 = *n;
              v375 = n[1];
              v374 = (n + 1);
              if (v375 != v373)
              {
                break;
              }

              qword_9D7E8 = v374;
              *v371++ = 61;
            }

            goto LABEL_1258;
          }
        }

        v376 = (v347 & 0x2000003) != 0 || v128 == 0x4000;
        v377 = v376;
        if (v376)
        {
          v378 = 0;
          v379 = v164;
          do
          {
            do
            {
              v380 = *v379++;
            }

            while (v380 == 173 || v380 == 30);
            if (v380 != aWh_2[v378])
            {
              goto LABEL_955;
            }

            ++v378;
          }

          while (v378 != 3);
          if ((v382 = v164[3], v382 <= 0x20) && ((1 << v382) & 0x100000201) != 0 || v382 == 160 || v382 <= 0x1F)
          {
            bwd_add_seg(1);
            v11 = &unk_9D000;
            v383 = qword_9D7B0;
            *qword_9D7B0 = 17491;
            *(v383 + 2) = 71;
            v384 = v383 + 3;
            goto LABEL_929;
          }
        }

LABEL_955:
        if (v61 == 7)
        {
          v393 = 0;
          v394 = v164;
          do
          {
            do
            {
              v395 = *v394++;
            }

            while (v395 == 173 || v395 == 30);
            if (v395 != asc_20F28[v393])
            {
              goto LABEL_968;
            }

            ++v393;
          }

          while (v393 != 2);
          bwd_add_seg(32);
          v11 = &unk_9D000;
          v397 = qword_9D7B0;
          if (v347)
          {
            v398 = 124;
          }

          else
          {
            v398 = 45;
          }

LABEL_966:
          *v397 = v398;
          qword_9D7B0 = (v397 + 1);
          m = &unk_9D000;
          v385 = qword_9D7E8 + 1;
LABEL_967:
          qword_9D7E8 = v385;
          goto LABEL_1330;
        }

LABEL_968:
        if (v377)
        {
          v399 = *(v164 - 1);
          if (v399 != 33 && v399 != 44)
          {
            if ((v454 = *v164, v454 != 61) && v454 != 40 || v347 != 0x2000000 && v399 != 45 && v164[1] != 45 && !bwd_rightchar_follows(v164 + 1))
            {
              v455 = !v148;
              if (v454 != 61)
              {
                v455 = 1;
              }

              if ((v455 & 1) != 0 || (v456 = v164[1], (v456 - 46) >= 2) && v456 != 115 || (v457 = v164[2], v457 >= 0x41) && v457 != 115)
              {
                if (no_exception(1, *(&stru_20.cmd + pBwdLangGlb), v164))
                {
                  bwd_add_seg(0x2000000);
                  v458 = qword_9D7B0;
                  v459 = qword_9D7B0;
                  *qword_9D7B0 = *qword_9D7E8;
                  v460 = (v459 + 1);
                  qword_9D7B0 = v460;
                  v461 = qword_9D7E8;
                  v462 = qword_9D7E8 + 1;
                  if (*(qword_9D7E8 + 1) == 30)
                  {
                    ++qword_9D7E8;
                    qword_9D7A8 = 1;
                    v461 = v462;
                  }

                  if (nLangIDGlb == 7)
                  {
                    v463 = 0;
                    v464 = v461;
                    while (1)
                    {
                      do
                      {
                        v465 = *v464++;
                      }

                      while (v465 == 173 || v465 == 30);
                      if (v465 != asc_26CCE[v463])
                      {
                        break;
                      }

                      if (++v463 == 3)
                      {
                        qword_9D7E8 = ++v461;
                        goto LABEL_1174;
                      }
                    }
                  }

                  if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && *v461 == 39 && no_exception(1, *(&stru_20.vmsize + pBwdLangGlb), v461 + 1) && v461[2] >= 0x21u)
                  {
                    qword_9D7E8 = (v461 + 1);
                    *(v458 + 1) = v461[1];
                    v460 = (v458 + 2);
                    qword_9D7B0 = v458 + 2;
                    v461 = qword_9D7E8;
                  }

LABEL_1174:
                  if (no_exception(1, *(&stru_20.vmsize + pBwdLangGlb), v461) && v461[1] >= 0x21u)
                  {
                    qword_9D7E8 = (v461 + 1);
                    *v460 = v461[1];
                    qword_9D7B0 = (v460 + 1);
                    v461 = qword_9D7E8;
                  }

                  m = &unk_9D000;
                  v11 = &unk_9D000;
                  v36 = &unk_9D000;
                  v33 = &unk_9D000;
                  v34 = &unk_9D000;
                  v35 = &unk_9D000;
                  if (v461[1] <= 0x20u)
                  {
                    qword_9D7C8 = 0x2000;
                  }

                  goto LABEL_88;
                }
              }
            }
          }
        }

        if (v128 == 0x10000)
        {
          v410 = 0;
        }

        else
        {
          if (v128 == 0x8000 && no_exception(1, *&stru_20.segname[pBwdLangGlb], v164))
          {
            bwd_add_seg(0x2000000);
            v400 = qword_9D7E8;
            v401 = qword_9D7E8 + 1;
            if (*(qword_9D7E8 + 1) == 30)
            {
              ++qword_9D7E8;
              qword_9D7A8 = 1;
              v400 = v401;
            }

            if (nLangIDGlb == 7)
            {
              v402 = *v400;
              if (v402 <= 0x28)
              {
                if (v402 == 34)
                {
                  if (v400[1] != 62)
                  {
                    goto LABEL_1296;
                  }

                  goto LABEL_1295;
                }

                if (v402 == 39)
                {
                  v405 = v400[1];
                  v404 = (v400 + 1);
                  v403 = v405;
                  if (v405 == 40)
                  {
                    v518 = v404;
                    v519 = "')";
                    goto LABEL_1286;
                  }

                  if (v403 != 41)
                  {
                    if (v403 == 58)
                    {
                      goto LABEL_1294;
                    }

                    v406 = 0;
                    v407 = v404;
                    while (1)
                    {
                      do
                      {
                        v408 = *v407++;
                      }

                      while (v408 == 173 || v408 == 30);
                      if (v408 != asc_2221F[v406])
                      {
                        break;
                      }

                      if (++v406 == 2)
                      {
                        goto LABEL_1295;
                      }
                    }

                    v520 = qword_9D7E0;
                    if (bwd_find_leftchar(qword_9D7E0, "'=", 2))
                    {
                      goto LABEL_1295;
                    }

                    if (bwd_find_leftchar(v520, "=", 2))
                    {
                      goto LABEL_1294;
                    }

                    v518 = v404;
                    v519 = "'=";
LABEL_1286:
                    if (!strstr(v518, v519))
                    {
                      qword_9D7E8 = v404;
                    }

                    goto LABEL_1296;
                  }

                  if (!bwd_find_leftchar(qword_9D7E0, "'(", 2))
                  {
LABEL_1294:
                    qword_9D7E8 = v404;
                  }

LABEL_1295:
                  bwd_add_seg(0x4000000);
                  goto LABEL_1296;
                }

                goto LABEL_1296;
              }

              if (v402 == 41)
              {
                goto LABEL_1295;
              }

              if (v402 != 60)
              {
LABEL_1296:
                v521 = qword_9D7B0;
                v522 = qword_9D7B0;
                *qword_9D7B0 = *qword_9D7E8;
                v523 = (v522 + 1);
                qword_9D7B0 = v523;
                v524 = qword_9D7E8;
                if (nLangIDGlb == 7)
                {
                  v525 = 0;
                  v526 = qword_9D7E8;
                  while (1)
                  {
                    do
                    {
                      v527 = *v526++;
                    }

                    while (v527 == 173 || v527 == 30);
                    if (v527 != asc_26CCE[v525])
                    {
                      break;
                    }

                    if (++v525 == 3)
                    {
                      v524 = ++qword_9D7E8;
                      goto LABEL_1311;
                    }
                  }
                }

                if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && *qword_9D7E8 == 39 && no_exception(1, *(&stru_20.vmsize + pBwdLangGlb), (qword_9D7E8 + 1)) && v524[2] >= 0x21u)
                {
                  qword_9D7E8 = (v524 + 1);
                  *(v521 + 1) = v524[1];
                  v523 = (v521 + 2);
                  qword_9D7B0 = v521 + 2;
                  v524 = qword_9D7E8;
                }

LABEL_1311:
                if (no_exception(1, *(&stru_20.vmsize + pBwdLangGlb), v524))
                {
                  v530 = v524[1];
                  v529 = v524 + 1;
                  if (v530 >= 0x21)
                  {
                    qword_9D7E8 = v529;
                    *v523 = *v529;
                    qword_9D7B0 = (v523 + 1);
                  }
                }

                goto LABEL_1327;
              }

              v477 = qword_9D7E0;
              v478 = "<=";
            }

            else
            {
              if (nLangIDGlb != 9 || nSubLangIDGlb == 3)
              {
                goto LABEL_1296;
              }

              v472 = *v400;
              if (v472 > 0x3B)
              {
                if (v472 != 127)
                {
                  if (v472 == 60)
                  {
                    if (bwd_find_leftchar(qword_9D7E0, "=", 2))
                    {
                      bwd_add_seg(0x4000000);
                      v481 = qword_9D7E8 + 1;
                    }

                    else
                    {
                      v481 = (v400 + 1);
                    }

                    qword_9D7E8 = v481;
                  }

                  goto LABEL_1296;
                }

                v477 = qword_9D7E0;
                v478 = "\x7F=";
              }

              else
              {
                if (v472 != 36)
                {
                  if (v472 != 41)
                  {
                    goto LABEL_1296;
                  }

                  goto LABEL_1295;
                }

                v477 = qword_9D7E0;
                v478 = "$=";
              }
            }

            if (!bwd_find_leftchar(v477, v478, 2))
            {
              goto LABEL_1296;
            }

            goto LABEL_1295;
          }

          v410 = 1;
          if (*(v164 - 1) != 150 && (v347 & 0xC0) == 0)
          {
            goto LABEL_1021;
          }
        }

        v411 = pBwdLangGlb;
        if (no_exception(1, *&stru_20.segname[pBwdLangGlb + 8], v164))
        {
          bwd_add_seg(0x4000000);
          v412 = qword_9D7B0;
          v413 = qword_9D7B0;
          *qword_9D7B0 = *qword_9D7E8;
          v414 = (v413 + 1);
          qword_9D7B0 = v414;
          v415 = qword_9D7E8;
          v416 = qword_9D7E8 + 1;
          if (*(qword_9D7E8 + 1) == 30)
          {
            ++qword_9D7E8;
            qword_9D7A8 = 1;
            v415 = v416;
          }

          if (nLangIDGlb == 7)
          {
            v417 = 0;
            v418 = v415;
            while (1)
            {
              do
              {
                v419 = *v418++;
              }

              while (v419 == 173 || v419 == 30);
              if (v419 != asc_26CCE[v417])
              {
                break;
              }

              if (++v417 == 3)
              {
                qword_9D7E8 = ++v415;
                goto LABEL_1013;
              }
            }
          }

          if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && *v415 == 39 && no_exception(1, *(&stru_20.vmsize + pBwdLangGlb), v415 + 1) && v415[2] >= 0x21u)
          {
            qword_9D7E8 = (v415 + 1);
            *(v412 + 1) = v415[1];
            v414 = (v412 + 2);
            qword_9D7B0 = v412 + 2;
            v415 = qword_9D7E8;
          }

LABEL_1013:
          m = &unk_9D000;
          v11 = &unk_9D000;
          v36 = &unk_9D000;
          v33 = &unk_9D000;
          v34 = &unk_9D000;
          v35 = &unk_9D000;
          if (no_exception(1, *(&stru_20.vmsize + pBwdLangGlb), v415))
          {
            v422 = v415[1];
            v421 = v415 + 1;
            if (v422 >= 0x21)
            {
              qword_9D7E8 = v421;
              *v414 = *v421;
              qword_9D7B0 = (v414 + 1);
            }
          }

          goto LABEL_88;
        }

        if ((v347 & 0xC0) != 0)
        {
          v423 = 0;
        }

        else
        {
          v423 = v410;
        }

        if ((v423 & 1) == 0 && !in(v164[1], 9) && no_exception(1, *(&dword_18 + v411), v164))
        {
LABEL_826:
          v109 = 0x1000000;
          goto LABEL_265;
        }

LABEL_1021:
        if (v148 && (lFlags & 0x40000000) == 0 && v347 != 0x2000 && *v164 == stru_B8.segname[pLangGlb + 3] && (v164[1] && memchr("#123456789", v164[1], 0xBuLL) || no_exception(1, *(&stru_20.fileoff + pBwdLangGlb), v164 + 1)))
        {
          if ((v347 & 0xC0) != 0)
          {
            bwd_add_seg(2);
            v424 = qword_9D7B0;
            if (byte_9D800)
            {
              v425 = 31;
            }

            else
            {
              v425 = 32;
            }

            *qword_9D7B0 = v425;
            qword_9D7B0 = v424 + 1;
          }

          bwd_add_seg(64);
          v426 = *qword_9D7E8;
          v427 = qword_9D7B0;
          while (1)
          {
            *v427 = v426;
            qword_9D7B0 = ++v427;
            v428 = qword_9D7E8;
            v429 = (qword_9D7E8 + 1);
            v430 = *(qword_9D7E8 + 1);
            if (!*(qword_9D7E8 + 1) || !memchr("#123456789", *(qword_9D7E8 + 1), 0xBuLL))
            {
              v431 = pBwdLangGlb;
              if (!no_exception(1, *(&stru_20.fileoff + pBwdLangGlb), v429) && (v430 != 36 || *v428 != 35 || v428[2] != 35) && (v430 != stru_B8.segname[pLangGlb + 1] && v430 != stru_B8.segname[pLangGlb + 2] || !v428[2] || !memchr("#123456789", v428[2], 0xBuLL)))
              {
                break;
              }
            }

            qword_9D7E8 = v429;
            v426 = *v429;
          }

          v34 = &unk_9D000;
          m = &unk_9D000;
          v11 = &unk_9D000;
          v36 = &unk_9D000;
          v33 = &unk_9D000;
          v35 = &unk_9D000;
          if (!*(qword_9D7D0 + 1))
          {
            goto LABEL_88;
          }

          if (!memchr("#123456789", *(qword_9D7D0 + 1), 0xBuLL))
          {
            goto LABEL_88;
          }

          if (!no_exception(1, *(&dword_18 + v431), v428))
          {
            goto LABEL_88;
          }

          v479 = v428 - 1;
          if (!no_exception(1, *&stru_20.segname[v431 + 8], v479))
          {
            goto LABEL_88;
          }

          qword_9D7B0 = (v427 - 2);
          qword_9D7E8 = v479;
          bwd_add_seg(0x4000000);
          v480 = qword_9D7B0;
          *qword_9D7B0 = *qword_9D7E8;
          qword_9D7B0 = v480 + 1;
          ++qword_9D7E8;
          v40 = 0x1000000;
LABEL_84:
          bwd_add_seg(v40);
          goto LABEL_85;
        }

        v432 = v61 != 9 || v365 == 2;
        v433 = !v432;
        if (!v432 && (lFlags & 0x40000000) == 0)
        {
          v434 = 0;
          v435 = v164;
          do
          {
            do
            {
              v436 = *v435++;
            }

            while (v436 == 173 || v436 == 30);
            if (v436 != aK_16[v434])
            {
              goto LABEL_1061;
            }

            ++v434;
          }

          while (v434 != 3);
          bwd_add_seg(32);
          v11 = &unk_9D000;
          v438 = qword_9D7B0;
          *qword_9D7B0 = 61;
          v384 = v438 + 1;
          goto LABEL_929;
        }

LABEL_1061:
        v439 = *v164;
        v889 = pLangGlb;
        if (v439 == stru_B8.segname[pLangGlb + 3] && (!v148 || !*qword_9D7D0 || (*qword_9D7D0 & 0xDFu) - 91 <= 0xFFFFFFE5) && no_exception(1, *(&stru_20.fileoff + pBwdLangGlb), v164 + 1))
        {
LABEL_1083:
          if ((v347 & 0xC0) != 0 && (lFlags & 0x8000000) == 0 && (v61 != 9 || v365 != 1 || v164[1] != 47) && (!v148 || v164[1] != 124))
          {
            bwd_add_seg(2);
            v448 = qword_9D7B0;
            if (byte_9D800)
            {
              v449 = 31;
            }

            else
            {
              v449 = 32;
            }

            *qword_9D7B0 = v449;
            qword_9D7B0 = v448 + 1;
          }

          bwd_add_seg(4);
          v450 = qword_9D7B0;
          *qword_9D7B0 = *qword_9D7E8++;
          *(v450 + 1) = *qword_9D7E8;
          qword_9D7B0 = v450 + 2;
          v451 = qword_9D7E8;
          v452 = *qword_9D7E8;
          if (nLangIDGlb == 12)
          {
            if (v452 == 61)
            {
              goto LABEL_1149;
            }

            if (v452 != 124)
            {
              goto LABEL_1152;
            }

            v473 = (qword_9D7E8 + 1);
            if (*(qword_9D7E8 + 1) - 49 > 2 || *(qword_9D7E8 + 2) && memchr("#123456789", *(qword_9D7E8 + 2), 0xBuLL))
            {
              goto LABEL_1152;
            }

            qword_9D7E8 = v473;
            v453 = *v473;
LABEL_1147:
            *(v450 + 2) = v453;
            v474 = v450 + 3;
          }

          else
          {
            if (nLangIDGlb == 7)
            {
              if (v452 != 61)
              {
                if (v452 == 33)
                {
                  ++qword_9D7E8;
                  v453 = *(v451 + 1);
                  goto LABEL_1147;
                }

LABEL_1152:
                m = &unk_9D000;
                v476 = qword_9D7E8;
                v11 = &unk_9D000;
                v36 = &unk_9D000;
                v33 = &unk_9D000;
                v34 = &unk_9D000;
                v35 = &unk_9D000;
                if (!bwd_is_number((qword_9D7E8 + 1)) || (lFlags & 0x8000000) != 0 || nLangIDGlb == 9 && nSubLangIDGlb == 1 && *v476 == 47)
                {
                  goto LABEL_88;
                }

LABEL_149:
                bwd_add_seg(2);
                v41 = v11[246];
                if (byte_9D800)
                {
                  LOBYTE(v38) = 31;
                }

                else
                {
                  LOBYTE(v38) = 32;
                }

LABEL_87:
                *v41 = v38;
                v11[246] = v41 + 1;
                goto LABEL_88;
              }
            }

            else if (v452 != 61)
            {
              goto LABEL_1152;
            }

LABEL_1149:
            if (*(qword_9D7E8 + 1) != 61)
            {
              goto LABEL_1152;
            }

            bwd_add_seg(32);
            v475 = qword_9D7B0;
            *qword_9D7B0 = *qword_9D7E8;
            v474 = v475 + 1;
          }

          qword_9D7B0 = v474;
          goto LABEL_1152;
        }

        if (v61 == 7)
        {
          v440 = 0;
          v441 = v164;
          while (1)
          {
            do
            {
              v442 = *v441++;
            }

            while (v442 == 173 || v442 == 30);
            if (v442 != asc_26DD1[v440])
            {
              break;
            }

            if (++v440 == 3)
            {
              goto LABEL_1083;
            }
          }
        }

        if (v433)
        {
          v444 = 0;
          v445 = v164;
          while (1)
          {
            do
            {
              v446 = *v445++;
            }

            while (v446 == 173 || v446 == 30);
            if (v446 != aK_7[v444])
            {
              break;
            }

            if (++v444 == 2)
            {
              goto LABEL_1083;
            }
          }
        }

        if (v61 == 7 && v347 == 0x2000)
        {
          v467 = qword_9D7B0;
          if (qword_9D7B0 - qword_9D7D0 >= 3)
          {
            v468 = 0;
            v469 = v164;
            while (1)
            {
              do
              {
                v470 = *v469++;
              }

              while (v470 == 173 || v470 == 30);
              if (v470 != aNc_1[v468])
              {
                break;
              }

              if (++v468 == 5)
              {
                goto LABEL_1193;
              }
            }

            v482 = 0;
            v483 = v164;
            do
            {
              do
              {
                v484 = *v483++;
              }

              while (v484 == 173 || v484 == 30);
              if (v484 != asc_26DDB[v482])
              {
                goto LABEL_1194;
              }

              ++v482;
            }

            while (v482 != 3);
            if (v164[3] <= 0x20u)
            {
LABEL_1193:
              *qword_9D7B0 = 26916;
              *(v467 + 2) = 110;
              v384 = v467 + 3;
              v11 = &unk_9D000;
LABEL_929:
              v11[246] = v384;
              m = &unk_9D000;
              v385 = qword_9D7E8 + 2;
              goto LABEL_967;
            }
          }
        }

LABEL_1194:
        if (v61 == 7 && v347 == 0x2000)
        {
          v487 = v119;
        }

        else
        {
          v487 = 1;
        }

        if ((v487 & 1) == 0 && !v120)
        {
          v488 = 0;
          v489 = v164;
          do
          {
            do
            {
              v490 = *v489++;
            }

            while (v490 == 173 || v490 == 30);
            if (v490 != aS_12[v488])
            {
              v492 = 0;
              v493 = v164;
              while (1)
              {
                do
                {
                  v494 = *v493++;
                }

                while (v494 == 173 || v494 == 30);
                if (v494 != aN_14[v492])
                {
                  goto LABEL_1221;
                }

                if (++v492 == 2)
                {
                  goto LABEL_1217;
                }
              }
            }

            ++v488;
          }

          while (v488 != 2);
LABEL_1217:
          if (v164[2] < 0x21u || (v496 = pBwdLangGlb, no_exception(1, *(&dword_18 + pBwdLangGlb), v164 + 2)) || no_exception(1, *&stru_20.segname[v496 + 8], v164 + 2))
          {
            bwd_add_seg(32);
            m = &unk_9D000;
            v11 = &unk_9D000;
            v497 = qword_9D7B0;
            *qword_9D7B0 = *qword_9D7E8++;
            *(v497 + 1) = *qword_9D7E8;
            v345 = (v497 + 2);
LABEL_847:
            qword_9D7B0 = v345;
            bwd_add_rightchars();
            goto LABEL_1330;
          }
        }

LABEL_1221:
        v498 = v61 == 9 && v365 == 3;
        v499 = v498;
        if (v498)
        {
          v500 = 0;
          v501 = v164;
          do
          {
            do
            {
              v502 = *v501++;
            }

            while (v502 == 173 || v502 == 30);
            if (v502 != asc_265A2[v500])
            {
              goto LABEL_1237;
            }

            ++v500;
          }

          while (v500 != 2);
          bwd_add_seg(32);
          v11 = &unk_9D000;
          v397 = qword_9D7B0;
          v398 = 42;
          goto LABEL_966;
        }

LABEL_1237:
        if (v61 == 9)
        {
          v504 = 0;
          v505 = v164;
          while (1)
          {
            do
            {
              v506 = *v505++;
            }

            while (v506 == 173 || v506 == 30);
            if (v506 != asc_26DDF[v504])
            {
              break;
            }

            if (++v504 == 4)
            {
              bwd_add_seg(0x2000);
              v508 = qword_9D7B0 + 1;
              do
              {
                *(v508 - 1) = 42;
                v509 = qword_9D7E8++;
                ++v508;
              }

              while (*(v509 + 2) == 42);
              *(v508 - 1) = 42;
              v11 = &unk_9D000;
              qword_9D7B0 = v508;
              bwd_add_seg(0);
              goto LABEL_1259;
            }
          }
        }

        if (v61 != 7)
        {
          goto LABEL_1262;
        }

        v510 = 0;
        v511 = v164;
        do
        {
          do
          {
            v512 = *v511++;
          }

          while (v512 == 173 || v512 == 30);
          if (v512 != asc_26DE4[v510])
          {
            if (no_exception(1, byte_486F0, v164))
            {
              bwd_add_seg(4);
              m = &unk_9D000;
              v11 = &unk_9D000;
              v515 = qword_9D7B0;
              *qword_9D7B0 = *qword_9D7E8++;
              *(v515 + 1) = *qword_9D7E8;
              qword_9D7B0 = v515 + 2;
              byte_9D79C = 0;
              byte_9D854 = 0;
              byte_9D95C = 0;
              goto LABEL_1330;
            }

LABEL_1262:
            if (v148 && no_exception(1, "\t<|\x01<| \x01", v164))
            {
              bwd_add_seg(4);
              m = &unk_9D000;
              ++qword_9D7E8;
              v11 = &unk_9D000;
              v516 = qword_9D7B0;
              *qword_9D7B0 = *qword_9D7E8;
              qword_9D7B0 = v516 + 1;
              v36 = &unk_9D000;
              v33 = &unk_9D000;
              v34 = &unk_9D000;
              v35 = &unk_9D000;
              if (*(qword_9D7E8 + 1) != 117)
              {
                goto LABEL_88;
              }

              v517 = *(qword_9D7E8 + 2);
              if (v517 >= 0x41 && (v517 != 115 || *(qword_9D7E8 + 3) > 0x40u))
              {
                goto LABEL_88;
              }

              bwd_add_seg(0x2000);
              ++qword_9D7E8;
              v46 = qword_9D7B0;
              v47 = 85;
LABEL_107:
              *v46 = v47;
              v48 = v46 + 1;
LABEL_111:
              v11[246] = v48;
              goto LABEL_88;
            }

            if (v499)
            {
              if (v439 == *v889[11] && no_exception(1, *(&dword_18 + pBwdLangGlb), v164 + 1))
              {
                bwd_add_seg(0);
                m = &unk_9D000;
                ++qword_9D7E8;
                bwd_add_seg(0x1000000);
                goto LABEL_266;
              }

              if (no_exception(1, "\t$[)-m\x01", v164))
              {
                goto LABEL_1281;
              }
            }

            else if (v61 != 9)
            {
              goto LABEL_1282;
            }

            if (no_exception(1, "\t\x7F[|l/\x7F\x01&\x01", v164))
            {
LABEL_1281:
              v351 = 4;
LABEL_858:
              bwd_add_seg(v351);
              m = &unk_9D000;
              v11 = &unk_9D000;
              v352 = qword_9D7B0;
              *qword_9D7B0 = *qword_9D7E8++;
              *(v352 + 1) = *qword_9D7E8;
              v353 = (v352 + 2);
              goto LABEL_910;
            }

LABEL_1282:
            m = &unk_9D000;
            v11 = &unk_9D000;
            v36 = &unk_9D000;
            v33 = &unk_9D000;
            v34 = &unk_9D000;
            v35 = &unk_9D000;
            if (!bwd_no_abbrev(v889[7]) || !bwd_no_locution())
            {
              goto LABEL_88;
            }

            v40 = 0x2000;
            goto LABEL_84;
          }

          ++v510;
        }

        while (v510 != 2);
        bwd_add_seg(32);
        v371 = qword_9D7B0;
        do
        {
          *v371++ = 42;
          v514 = qword_9D7E8++;
        }

        while (*(v514 + 2) == 42);
LABEL_1258:
        v11 = &unk_9D000;
        qword_9D7B0 = v371;
LABEL_1259:
        m = &unk_9D000;
LABEL_1330:
        v36 = &unk_9D000;
        v33 = &unk_9D000;
LABEL_1331:
        v34 = &unk_9D000;
LABEL_1332:
        v35 = &unk_9D000;
LABEL_88:
        v39 = m[253] + 1;
        m[253] = v39;
        v38 = *v39;
        if (*v39)
        {
          continue;
        }

LABEL_1347:
        bwd_add_seg(0);
        v36[245] = 0;
        v11[246] = __dsta;
        bwd_char(0);
        HIBYTE(word_9D856) = 0;
        qword_9D7D8 = 0;
        v545 = qword_9D7F8;
        v546 = &unk_9D000;
        qword_9D7E0 = qword_9D7F8;
        if (!qword_9D7F8)
        {
          goto LABEL_2085;
        }

        while (2)
        {
          v547 = *v545;
          v34[250] = *v545;
          v548 = *(v545 + 16);
          v36[245] = v548;
          v549 = *(v545 + 48);
          if (v549)
          {
            v550 = *(v549 + 24);
          }

          else
          {
            v550 = 0;
          }

          qword_9D848 = v550;
          v551 = *(v545 + 24);
          if (v551 > 127)
          {
            if (v551 > 0xFFFFFF)
            {
              if (v551 != 0x1000000 && v551 != 0x2000000 && v551 != 0x4000000)
              {
                goto LABEL_1397;
              }

LABEL_1370:
              if (!bwd_fetch_char(&v898, v547, v551 == 0x4000000, 0))
              {
                v570 = *v547;
                v569 = (v547 + 1);
                v568 = v570;
                do
                {
                  bwd_char(v568);
                  v571 = *v569++;
                  v568 = v571;
                }

                while (v571);
                goto LABEL_2079;
              }

              switch(v898)
              {
                case 0x22u:
                  if (nLangIDGlb == 9 && nSubLangIDGlb == 3 && *v547 == 40 && (!v549 || v551 == 0x1000000 || *(v549 + 24) <= 2uLL))
                  {
                    goto LABEL_1643;
                  }

                  break;
                case 0x3Fu:
                  if (v551 == 0x1000000 || nLangIDGlb != 9 || nSubLangIDGlb == 3)
                  {
LABEL_1643:
                    v567 = 63;
                    goto LABEL_2078;
                  }

                  break;
                case 0x85u:
                  v558 = 46;
                  for (ii = 1; ii != 4; ++ii)
                  {
                    bwd_char(v558);
                    v558 = asc_20F37[ii];
                  }

                  goto LABEL_2079;
                default:
                  v567 = v898;
                  goto LABEL_2078;
              }

              v567 = 34;
              goto LABEL_2078;
            }

            if (v551 == 128)
            {
              goto LABEL_1389;
            }

            if (v551 != 2048)
            {
              goto LABEL_1397;
            }

            if (nLangIDGlb == 9 && nSubLangIDGlb == 1)
            {
              v560 = *(&stru_68.flags + pLangGlb);
              v561 = v547;
              v562 = v560;
              do
              {
                do
                {
                  v563 = *v561++;
                }

                while (v563 == 173 || v563 == 30);
                if (v563 != *v562)
                {
                  goto LABEL_1435;
                }
              }

              while (*++v562);
              v566 = 1;
            }

            else
            {
LABEL_1435:
              v566 = 0;
              v560 = *(&stru_68.offset + pLangGlb);
            }

            v592 = &v547[strlen(v560)];
            v34[250] = v592;
            LOBYTE(v593) = *v592;
            if (!*v592)
            {
              goto LABEL_2079;
            }

LABEL_1437:
            v594 = *&stru_20.segname[pLangGlb];
            if (!v594)
            {
              if (nLangIDGlb == 12)
              {
                if (v593 == 33)
                {
                  v662 = v592[1];
                  v661 = v592 + 1;
                  if (!v662)
                  {
                    v603 = 4294967220;
                    goto LABEL_1630;
                  }

                  v663 = 0;
                  v34[250] = v661;
                  while (brl_set_ansi[v663] != *v661)
                  {
                    if (++v663 == 256)
                    {
                      v658 = &stru_B8.sectname[8];
                      goto LABEL_1617;
                    }
                  }

                  v658 = v663 & 0x3F | 0xC0;
                }

                else
                {
                  if (v593 != 34)
                  {
                    if (v593 == 36)
                    {
                      v602 = (v592 + 1);
                      if (v592[1] == 36)
                      {
                        v34[250] = v602;
                        v673 = v592[2];
                        v672 = (v592 + 2);
                        v671 = v673;
                        if (!v673)
                        {
                          goto LABEL_1631;
                        }

                        while (1)
                        {
                          if (v671 - 58 <= 0xFFFFFFF5 && v671 <= 0xDE && v671 - 123 < 0xFFFFFFE6)
                          {
                            goto LABEL_1631;
                          }

                          v674 = 0;
                          v34[250] = v672;
                          do
                          {
                            if (brl_set_ansi[v674] == v671)
                            {
                              p_vmsize = v674 | 0x40;
                              goto LABEL_1601;
                            }

                            ++v674;
                          }

                          while (v674 != 256);
                          p_vmsize = &stru_20.vmsize;
LABEL_1601:
                          bwd_char(brl_set_tbfr2007[brl_set_ansi[p_vmsize]]);
                          v676 = *++v672;
                          v671 = v676;
                          if (!v676)
                          {
                            goto LABEL_1631;
                          }
                        }
                      }

                      if (!v592[1])
                      {
                        v603 = 4294967208;
LABEL_1630:
                        bwd_char(v603);
                        goto LABEL_1631;
                      }

                      v679 = 0;
                      v34[250] = v602;
                      v680 = *v602;
                      while (brl_set_ansi[v679] != v680)
                      {
                        if (++v679 == 256)
                        {
                          v681 = &stru_20.vmsize;
                          goto LABEL_1625;
                        }
                      }

                      v681 = v679 | 0x40;
LABEL_1625:
                      v593 = brl_set_ansi[v681];
                    }

                    else
                    {
                      v595 = *&stru_B8.segname[pLangGlb - 8];
                      v666 = v592;
                      v667 = v595;
                      while (1)
                      {
                        do
                        {
                          v668 = *v666++;
                        }

                        while (v668 == 173 || v668 == 30);
                        if (v668 != *v667)
                        {
                          break;
                        }

                        if (!*++v667)
                        {
LABEL_1445:
                          v601 = &v592[strlen(v595)];
                          goto LABEL_1561;
                        }
                      }

                      v593 = v593;
                    }

LABEL_1626:
                    v603 = brl_set_tbfr2007[v593];
                    goto LABEL_1630;
                  }

                  v656 = v592[1];
                  v655 = v592 + 1;
                  if (!v656)
                  {
                    v603 = 94;
                    goto LABEL_1630;
                  }

                  v657 = 0;
                  v34[250] = v655;
                  while (brl_set_ansi[v657] != *v655)
                  {
                    if (++v657 == 256)
                    {
                      v658 = &stru_68.segname[8];
                      goto LABEL_1617;
                    }
                  }

                  v658 = v657 & 0x7F | 0x80;
                }

LABEL_1617:
                v593 = brl_set_ansi[v658];
                goto LABEL_1626;
              }

              switch(v593)
              {
                case '\'':
                  v665 = v592[1];
                  v614 = v592 + 1;
                  v664 = v665;
                  if (v665 == 46)
                  {
                    v34[250] = v614;
                    goto LABEL_1631;
                  }

                  if (v664 != 39)
                  {
                    if (!v664)
                    {
                      v603 = 39;
                      goto LABEL_1630;
                    }

                    v683 = 0;
                    v34[250] = v614;
                    while (brl_set_ansi[v683] != *v614)
                    {
                      if (++v683 == 256)
                      {
                        v678 = &stru_68.segname[8];
                        goto LABEL_1629;
                      }
                    }

                    v678 = v683 | 0x80;
                    goto LABEL_1629;
                  }

                  break;
                case '$':
                  v660 = v592[1];
                  v614 = v592 + 1;
                  v659 = v660;
                  if (v660 != 36)
                  {
                    if (!v659)
                    {
                      v603 = 36;
                      goto LABEL_1630;
                    }

                    v677 = 0;
                    v34[250] = v614;
                    while (brl_set_ansi[v677] != *v614)
                    {
                      if (++v677 == 256)
                      {
                        v678 = &stru_B8.sectname[8];
                        goto LABEL_1629;
                      }
                    }

                    v678 = v677 | 0xC0;
                    goto LABEL_1629;
                  }

                  break;
                case '""':
                  v615 = v592[1];
                  v614 = v592 + 1;
                  v613 = v615;
                  if (v615 != 34)
                  {
                    if (!v613)
                    {
                      v603 = 34;
                      goto LABEL_1630;
                    }

                    v682 = 0;
                    v34[250] = v614;
                    while (brl_set_ansi[v682] != *v614)
                    {
                      if (++v682 == 256)
                      {
                        v678 = &stru_20.vmsize;
                        goto LABEL_1629;
                      }
                    }

                    v678 = v682 | 0x40;
LABEL_1629:
                    v603 = brl_set_ansi[v678];
                    goto LABEL_1630;
                  }

                  break;
                default:
                  v603 = v593;
                  goto LABEL_1630;
              }

              v34[250] = v614;
              v603 = *v614;
              goto LABEL_1630;
            }

            v595 = *&stru_B8.segname[pLangGlb - 8];
            v596 = v592;
            v597 = v595;
            while (1)
            {
              do
              {
                v598 = *v596++;
              }

              while (v598 == 173 || v598 == 30);
              if (v598 != *v597)
              {
                break;
              }

              if (!*++v597)
              {
                goto LABEL_1445;
              }
            }

            dword_9D850 = 0;
            if (v566)
            {
              v604 = v592;
              v605 = *(&stru_68.reserved2 + pLangGlb);
              do
              {
                do
                {
                  v606 = *v604++;
                }

                while (v606 == 173 || v606 == 30);
                if (v606 != *v605)
                {
                  goto LABEL_1474;
                }
              }

              while (*++v605);
              v609 = &v592[strlen(*(&stru_68.reserved2 + pLangGlb))];
              v610 = *v609;
              if (*v609)
              {
                if (v610 > 0xDE || v610 - 123 >= 0xFFFFFFE6)
                {
                  v612 = 0;
                  v34[250] = v609;
                  v566 = 1;
LABEL_1525:
                  v592 = v609;
LABEL_1530:
                  v623 = *v592;
                  goto LABEL_1531;
                }
              }

LABEL_1474:
              v616 = v592;
              v617 = *&stru_B8.sectname[pLangGlb];
              do
              {
                do
                {
                  v618 = *v616++;
                }

                while (v618 == 173 || v618 == 30);
                if (v618 != *v617)
                {
                  goto LABEL_1486;
                }
              }

              while (*++v617);
              v609 = &v592[strlen(*&stru_B8.sectname[pLangGlb])];
              v621 = *v609;
              if (!*v609 || (v621 <= 0xDE ? (v622 = v621 - 123 >= 0xFFFFFFE6) : (v622 = 1), !v622))
              {
LABEL_1486:
                if (nSubLangIDGlb == 1)
                {
                  v612 = 0;
                  v623 = *v592;
                  v566 = v623 > 0x20;
LABEL_1531:
                  if (v623 < 0x21)
                  {
                    goto LABEL_1631;
                  }

                  v643 = 0;
                  while (1)
                  {
                    v644 = *(v594 + 8 * v643);
                    v645 = v592;
                    while (1)
                    {
                      do
                      {
                        v646 = *v645++;
                      }

                      while (v646 == 173 || v646 == 30);
                      if (v646 != *v644)
                      {
                        break;
                      }

                      if (!*++v644)
                      {
                        v649 = v566 | v612;
                        v650 = (v643 - 91) >= 0xE6u || (v643 + 33) >= 0xE1u;
                        v651 = v643 | 0x20;
                        if (!v650)
                        {
                          v651 = v643;
                        }

                        if (!v643)
                        {
                          v651 = 0;
                        }

                        v652 = (v643 - 123) >= 0xE6u || v643 >= 0xDF;
                        v653 = v643 & 0xDF;
                        if (!v652)
                        {
                          v653 = v643;
                        }

                        if (!v643)
                        {
                          v653 = 0;
                        }

                        if (v649 == 1)
                        {
                          v654 = v653;
                        }

                        else
                        {
                          v654 = v651;
                        }

                        bwd_char(v654);
                        v601 = v34[250] + strlen(*(*&stru_20.segname[pLangGlb] + 8 * v643));
LABEL_1561:
                        v34[250] = v601 - 1;
LABEL_1631:
                        v592 = (v34[250] + 1);
                        v34[250] = v592;
                        LOBYTE(v593) = *v592;
                        if (!*v592)
                        {
                          goto LABEL_2079;
                        }

                        goto LABEL_1437;
                      }
                    }

                    if (++v643 == 256)
                    {
                      goto LABEL_1631;
                    }
                  }
                }

                v612 = 0;
                goto LABEL_1527;
              }
            }

            else
            {
              if (nSubLangIDGlb == 1)
              {
                v624 = v592;
                v625 = *(&stru_68.flags + pLangGlb);
                do
                {
                  do
                  {
                    v626 = *v624++;
                  }

                  while (v626 == 173 || v626 == 30);
                  if (v626 != *v625)
                  {
                    goto LABEL_1497;
                  }
                }

                while (*++v625);
                v629 = strlen(*(&stru_68.flags + pLangGlb));
                v612 = 0;
                v592 += v629;
                v34[250] = v592;
LABEL_1527:
                v566 = 1;
                goto LABEL_1530;
              }

LABEL_1497:
              v630 = v592;
              v631 = *&stru_B8.sectname[pLangGlb];
              do
              {
                do
                {
                  v632 = *v630++;
                }

                while (v632 == 173 || v632 == 30);
                if (v632 != *v631)
                {
                  goto LABEL_1511;
                }
              }

              while (*++v631);
              v609 = &v592[strlen(*&stru_B8.sectname[pLangGlb])];
              v635 = *v609;
              if (!*v609 || (v635 <= 0xDE ? (v636 = v635 - 123 >= 0xFFFFFFE6) : (v636 = 1), !v636))
              {
LABEL_1511:
                v637 = v592;
                v638 = *(&stru_68.reserved2 + pLangGlb);
                do
                {
                  do
                  {
                    v639 = *v637++;
                  }

                  while (v639 == 173 || v639 == 30);
                  if (v639 != *v638)
                  {
                    goto LABEL_1528;
                  }
                }

                while (*++v638);
                v609 = &v592[strlen(*(&stru_68.reserved2 + pLangGlb))];
                v612 = *v609;
                if (*v609)
                {
                  if (v612 > 0xDE || v612 - 123 >= 0xFFFFFFE6)
                  {
                    v566 = 0;
                    v34[250] = v609;
                    v612 = 1;
                    dword_9D850 = 1;
                    goto LABEL_1525;
                  }

LABEL_1528:
                  v612 = 0;
                }

                v566 = 0;
                goto LABEL_1530;
              }
            }

            v612 = 0;
            v566 = 0;
            v34[250] = v609;
            goto LABEL_1525;
          }

          if (v551 <= 3)
          {
            if ((v551 - 1) < 2)
            {
              v554 = *v547;
              v553 = (v547 + 1);
              v552 = v554;
              do
              {
                bwd_char(v552);
                v555 = *v553++;
                v552 = v555;
              }

              while (v555);
              goto LABEL_2079;
            }

            if (!v551)
            {
              goto LABEL_2079;
            }

LABEL_1397:
            if (v548 >= 1)
            {
              v36[245] = 0;
              bwd_char(30);
              v545 = v546[252];
              v551 = *(v545 + 24);
            }

            dword_9D850 = (v551 >> 20) & 1;
            dword_9D7A0 = (v551 >> 10) & 1;
            v572 = off_95000;
            if ((v551 >> 20))
            {
              byte_9D840 = 0;
              v573 = off_95000;
            }

            else
            {
              v573 = off_95000;
              dword_9D850 = byte_9D840 == 1;
            }

            v684 = 0;
            v685 = *v545;
            v34[250] = v11[246];
            while (2)
            {
              v686 = *v685;
              if (v684)
              {
                if (*v685)
                {
                  if (v686 > 0xDE || (v686 - 123) >= 0xE6u)
                  {
                    LOBYTE(v686) = v686 & 0xDF;
                  }

                  else if (v686 == 124)
                  {
                    LOBYTE(v686) = -9;
                  }
                }

                bwd_char(v686);
                v684 = *v685 != *(&stru_20.filesize + v573[61]);
LABEL_1697:
                v693 = *++v685;
                v694 = &unk_9D000;
                if (!v693)
                {
                  *v11[246] = 0;
                  v695 = v34[250];
                  v696 = *(v695 - 1);
                  v898 = v696;
                  *(v695 - 1) = 0;
                  v697 = v546[252];
                  v698 = *(v697 + 8);
                  if (v698 >= 1)
                  {
                    v699 = -v698;
                    v700 = &v695[v698 - 1];
                    v701 = 1;
                    do
                    {
                      seg_index[*v700] = v701;
                      seg_start[*v700] = v700;
                      --v700;
                      ++v701;
                      v241 = __CFADD__(v699++, 1);
                    }

                    while (!v241);
                  }

                  if ((*(&dword_8 + pBwdLangGlb) & 0x80000000) == 0)
                  {
                    v890 = v696;
                    v702 = 0;
                    v703 = *pBwdLangGlb;
                    v704 = off_95000;
                    while (1)
                    {
                      v705 = v703[2];
                      v706 = **v703;
                      v707 = seg_index[v706];
                      if (v705 <= v707 && seg_index[v705[*v703 - 1]] && (*(v697 + 32) & v703[7] & 0x9000FFFF) == 0)
                      {
                        break;
                      }

LABEL_1760:
                      v703 += 8;
                      v43 = v702++ < *(&dword_8 + v704[61]);
                      if (!v43)
                      {
                        v34 = &unk_9D000;
                        v695 = qword_9D7D0;
                        v696 = v890;
                        goto LABEL_1762;
                      }
                    }

                    v708 = seg_start[v706];
                    v694[253] = v708;
                    v709 = *v703;
                    while (1)
                    {
LABEL_1710:
                      v710 = 1;
                      while (1)
                      {
                        v711 = v709[v710];
                        if (!v709[v710])
                        {
                          break;
                        }

                        v712 = v708[v710++];
                        if (v712 != v711)
                        {
                          v36 = &unk_9D000;
LABEL_1750:
                          v746 = v708 + 1;
                          v704 = off_95000;
                          do
                          {
                            if (v707 <= v705)
                            {
                              goto LABEL_1760;
                            }

                            --v707;
                            v694[253] = v746;
                            v747 = *v746++;
                            v709 = *v703;
                          }

                          while (v747 != **v703);
                          v708 = v746 - 1;
                          goto LABEL_1710;
                        }
                      }

                      v713 = &v708[v710];
                      if (v708 == qword_9D7D0 || (v714 = *(v708 - 1), v714 == 32) || (v725 = *(&stru_20.filesize + pBwdLangGlb), v725 == v714) && (v887 = v697, v726 = strchr(v709, v714), v697 = v887, !v726) && (v748 = no_exception(1, byte_27798, v708), v697 = v887, v748))
                      {
                        v715 = *v713;
                        if ((v715 | 0x20) == 0x20 || *(&stru_20.filesize + pBwdLangGlb) == v715 && (v730 = v697, v731 = strchr(v709, v715), v697 = v730, !v731))
                        {
                          v11 = &unk_9D000;
                          v546 = &unk_9D000;
                          if ((*(v703 + 49) & 0x20) == 0)
                          {
                            goto LABEL_1733;
                          }
                        }

                        else
                        {
                          v11 = &unk_9D000;
                          v546 = &unk_9D000;
                          if ((*(v703 + 49) & 0x40) == 0)
                          {
                            goto LABEL_1733;
                          }

                          v732 = v697;
                          v733 = no_exception(1, v703[5], &v705[v708]);
                          v697 = v732;
                          v11 = &unk_9D000;
                          if (!v733)
                          {
                            goto LABEL_1733;
                          }
                        }
                      }

                      else
                      {
                        v727 = *v713;
                        if ((v727 | 0x20) == 0x20 || (v743 = v725, v727 == v725) && (v744 = v697, v745 = strchr(v709, v743), v697 = v744, !v745))
                        {
                          if ((*(v703 + 50) & 1) == 0)
                          {
                            goto LABEL_1748;
                          }

                          v728 = v697;
                          v729 = no_exception(0, v703[4], v708 - 1);
                          v697 = v728;
                          v11 = &unk_9D000;
                          v546 = &unk_9D000;
                          if (!v729)
                          {
LABEL_1733:
                            v694 = &unk_9D000;
                            v36 = &unk_9D000;
LABEL_1749:
                            v572 = off_95000;
                            goto LABEL_1750;
                          }
                        }

                        else
                        {
                          if ((*(v703 + 49) & 0x80) == 0)
                          {
LABEL_1748:
                            v694 = &unk_9D000;
                            v11 = &unk_9D000;
                            v36 = &unk_9D000;
                            v546 = &unk_9D000;
                            goto LABEL_1749;
                          }

                          v888 = v697;
                          v11 = &unk_9D000;
                          if (!no_exception(1, v703[5], &v705[v708]))
                          {
                            v694 = &unk_9D000;
                            v36 = &unk_9D000;
                            v546 = &unk_9D000;
                            v572 = off_95000;
                            v697 = v888;
                            goto LABEL_1750;
                          }

                          v749 = no_exception(0, v703[4], v708 - 1);
                          v546 = &unk_9D000;
                          v697 = v888;
                          if (!v749)
                          {
                            goto LABEL_1733;
                          }
                        }
                      }

                      v718 = *v709;
                      v717 = (v709 + 1);
                      v716 = v718;
                      do
                      {
                        seg_index[v716] = 0;
                        v719 = *v717++;
                        v716 = v719;
                      }

                      while (v719);
                      v720 = v703[3];
                      v721 = v720 - v705;
                      if (v720 <= v705)
                      {
                        v723 = v708;
                      }

                      else
                      {
                        v722 = v11[246];
                        v723 = v708;
                        if (qword_9D7B8 - v722 > v721)
                        {
                          *(v697 + 8) += v721;
                          v11[246] = v722 + v721;
                          v724 = strlen(&v708[v710]);
                          memmove(&v708[v720], &v708[v710], v724 + 1);
                          v723 = qword_9D7E8;
                          v720 = v703[3];
                        }
                      }

                      memcpy(v723, v703[1], v720);
                      v735 = v703[2];
                      v734 = v703[3];
                      v694 = &unk_9D000;
                      v736 = qword_9D7E8;
                      qword_9D7E8 += v734;
                      v737 = qword_9D7E8;
                      if (v713 > qword_9D7E8)
                      {
                        *(v546[252] + 8) = &v734[v736 + *(v546[252] + 8)] - v708 - v710;
                        v11[246] = &v737[v11[246]] - v708 - v710;
                        v738 = strlen(&v708[v710]);
                        memmove(v737, &v708[v710], v738 + 1);
                        v694 = &unk_9D000;
                      }

                      v697 = v546[252];
                      v739 = *(v697 + 8);
                      if (v739 >= 1)
                      {
                        v740 = -v739;
                        v741 = (qword_9D7D0 + v739 - 1);
                        v742 = 1;
                        do
                        {
                          seg_index[*v741] = v742;
                          seg_start[*v741] = v741;
                          --v741;
                          ++v742;
                          v241 = __CFADD__(v740++, 1);
                        }

                        while (!v241);
                      }

                      v707 -= v735;
                      v705 = v703[2];
                      v36 = &unk_9D000;
                      v572 = off_95000;
                      v704 = off_95000;
                      if (v705 > v707)
                      {
                        goto LABEL_1760;
                      }

                      v709 = *v703;
                      if (!seg_index[v705[*v703 - 1]])
                      {
                        goto LABEL_1760;
                      }

                      v708 = qword_9D7E8;
                      if (*qword_9D7E8 != *v709)
                      {
                        goto LABEL_1750;
                      }
                    }
                  }

LABEL_1762:
                  *(v695 - 1) = v696;
                  v750 = *v695;
                  v751 = 1;
                  do
                  {
                    seg_index[v750] = 0;
                    v750 = v695[v751++];
                  }

                  while (v750);
                  LOBYTE(word_9D856) = 0;
                  while (2)
                  {
                    v752 = v572[59];
                    v753 = *&stru_68.segname[v752 - 8];
                    v754 = v695;
                    v755 = v753;
                    while (1)
                    {
                      do
                      {
                        v756 = *v754++;
                      }

                      while (v756 == 173 || v756 == 30);
                      if (v756 != *v755)
                      {
                        break;
                      }

                      if (!*++v755)
                      {
LABEL_1780:
                        dword_9D7A0 = 1;
LABEL_1781:
                        v764 = strlen(v753);
                        v765 = strlen(v695);
                        v766 = &v695[v764];
                        v767 = v765 - v764 + 1;
LABEL_1782:
                        v768 = v695;
                        goto LABEL_1783;
                      }
                    }

                    v753 = *&stru_68.sectname[v752];
                    v759 = v695;
                    v760 = v753;
                    while (1)
                    {
                      do
                      {
                        v761 = *v759++;
                      }

                      while (v761 == 173 || v761 == 30);
                      if (v761 != *v760)
                      {
                        break;
                      }

                      if (!*++v760)
                      {
                        goto LABEL_1780;
                      }
                    }

                    v753 = *&stru_68.segname[v752];
                    v769 = v695;
                    v770 = v753;
                    while (1)
                    {
                      do
                      {
                        v771 = *v769++;
                      }

                      while (v771 == 173 || v771 == 30);
                      if (v771 != *v770)
                      {
                        break;
                      }

                      if (!*++v770)
                      {
                        dword_9D7A0 = 0;
                        goto LABEL_1781;
                      }
                    }

                    if (nLangIDGlb == 7)
                    {
                      v774 = 0;
                      v775 = v695;
                      while (1)
                      {
                        do
                        {
                          v776 = *v775++;
                        }

                        while (v776 == 173 || v776 == 30);
                        if (v776 != asc_26D99[v774])
                        {
                          break;
                        }

                        if (++v774 == 2)
                        {
                          dword_9D850 = 1;
                          byte_9D840 = 0;
LABEL_1818:
                          v767 = strlen(v695) - 1;
                          v766 = (v695 + 2);
                          goto LABEL_1782;
                        }
                      }
                    }

                    v778 = *v695;
                    if (v778 == **(&stru_20.filesize + v752))
                    {
                      if (nLangIDGlb != 9 || nSubLangIDGlb == 3 || !equals_nocase(v695 - 1, "O'CLOCK"))
                      {
                        if (in(v695[1], 9))
                        {
                          dword_9D850 = 1;
                          byte_9D840 = 0;
                          v767 = strlen(v695);
                          v768 = v695;
                          v766 = (v695 + 1);
LABEL_1783:
                          memmove(v768, v766, v767);
                          goto LABEL_1784;
                        }

                        v34[250] = v695 + 1;
LABEL_1784:
                        v695 = v34[250];
                        if (!*v695)
                        {
                          v11[246] = v695;
                          goto LABEL_2079;
                        }

                        continue;
                      }

LABEL_1865:
                      v788 = (v695 + 1);
LABEL_1866:
                      v34[250] = v788;
                      goto LABEL_1784;
                    }

                    break;
                  }

                  if (nLangIDGlb == 12)
                  {
                    v779 = 0;
                    v780 = v695;
                    while (1)
                    {
                      do
                      {
                        v781 = *v780++;
                      }

                      while (v781 == 173 || v781 == 30);
                      if (v781 != asc_26D96[v779])
                      {
                        break;
                      }

                      if (++v779 == 2)
                      {
                        dword_9D850 = 1;
                        byte_9D840 = 1;
                        goto LABEL_1818;
                      }
                    }
                  }

                  if (nLangIDGlb == 9)
                  {
                    v783 = 0;
                    v784 = v695;
                    while (1)
                    {
                      do
                      {
                        v785 = *v784++;
                      }

                      while (v785 == 173 || v785 == 30);
                      if (v785 != asc_220EE[v783])
                      {
                        break;
                      }

                      if (++v783 == 2)
                      {
                        v787 = strlen(v695);
                        memmove(v695, v695 + 1, v787);
                        v788 = v34[250] + 1;
                        goto LABEL_1866;
                      }
                    }

                    if (dword_9D7A0)
                    {
                      v789 = 1;
                      if ((*(v546[252] + 25) & 4) != 0 && v778 == 46)
                      {
                        if (v695[1] == 115 && !v695[2])
                        {
                          dword_9D7A0 = 0;
                          v792 = strlen(v695);
                          memmove(v695, v695 + 1, v792);
                          v572 = off_95000;
                          goto LABEL_1784;
                        }

                        v572 = off_95000;
                        goto LABEL_1843;
                      }

LABEL_1839:
                      if (v778 == 150 || v778 == 151 && (lFlags & 0x20000000) == 0)
                      {
                        *v695 = 45;
                        goto LABEL_1865;
                      }

LABEL_1843:
                      if (in(*v695, 41))
                      {
                        byte_9D855 = v778;
                        if (!bwd_fetch_char(&v898, &byte_9D855, 0, 0))
                        {
                          goto LABEL_1865;
                        }

                        v790 = v898;
                        goto LABEL_1846;
                      }

                      if (dword_9D850 == 0 && !v789)
                      {
                        switch(v778)
                        {
                          case 0u:
                            goto LABEL_1865;
                          case 0x8Cu:
                            v790 = -100;
                            break;
                          case 0x8Au:
                            v790 = -102;
                            break;
                          default:
                            if ((v778 + 33) <= 0xE0u && (v778 - 91) < 0xE6u)
                            {
                              goto LABEL_1865;
                            }

                            v790 = v778 | 0x20;
                            break;
                        }

LABEL_1846:
                        *v695 = v790;
                        goto LABEL_1865;
                      }

                      if (v778)
                      {
                        if (v778 == 154)
                        {
                          v791 = -118;
                          goto LABEL_1863;
                        }

                        if (v778 == 156)
                        {
                          v791 = -116;
                          goto LABEL_1863;
                        }

                        if (v778 > 0xDE || (v778 - 123) >= 0xE6u)
                        {
                          v791 = v778 & 0xDF;
LABEL_1863:
                          *v695 = v791;
                        }
                      }

                      dword_9D850 = 0;
                      goto LABEL_1865;
                    }

                    v789 = 0;
                  }

                  else
                  {
                    v789 = dword_9D7A0 != 0;
                  }

                  if (nLangIDGlb == 12 && v778 == 247)
                  {
                    *v695 = 47;
                    v34[250] = v695 + 1;
                    goto LABEL_1784;
                  }

                  goto LABEL_1839;
                }

                continue;
              }

              break;
            }

            v687 = pLangGlb;
            if (v686 != **(&stru_20.maxprot + pLangGlb))
            {
              goto LABEL_1670;
            }

            v688 = nLangIDGlb;
            if (nLangIDGlb == 7)
            {
              if (v685 != *v546[252] && !memchr("cqxy~", v685[1], 6uLL))
              {
                goto LABEL_1670;
              }
            }

            else
            {
              if (nLangIDGlb != 12 && nLangIDGlb != 9)
              {
LABEL_1669:
                v684 = v688 == 12;
                goto LABEL_1676;
              }

              if (v685 != *v546[252] && *(v685 - 1) != *(&stru_20.filesize + v573[61]))
              {
LABEL_1670:
                v688 = nLangIDGlb;
                if (v686 != **(&stru_20.nsects + v687) || nLangIDGlb == 12)
                {
                  bwd_char(v686);
                  v684 = 0;
                  v34 = &unk_9D000;
                  goto LABEL_1697;
                }

                v684 = 0;
LABEL_1676:
                byte_9D855 = v686;
                LOBYTE(word_9D856) = v685[1];
                if (word_9D856)
                {
                  --*(v546[252] + 8);
                  ++v685;
                }

                while (v688 == 12 || v688 == 9)
                {
                  if (byte_9D855 != **(&stru_20.maxprot + pLangGlb))
                  {
                    break;
                  }

                  v691 = *v685;
                  if (v691 != **(&stru_20.filesize + pLangGlb) || !v685[1])
                  {
                    break;
                  }

                  bwd_char(v691);
                  v688 = nLangIDGlb;
                  ++v685;
                }

                if (bwd_fetch_char(&v898, &byte_9D855, 0, 1))
                {
                  v692 = v898;
                  if (v688 == 7)
                  {
                    v34 = &unk_9D000;
                    if (v898 == 36)
                    {
                      if (v685[1] && (v685[1] & 0xDFu) - 91 >= 0xFFFFFFE6)
                      {
                        v692 = 154;
                        v898 = -102;
                      }

                      else
                      {
                        v692 = 36;
                      }

                      goto LABEL_1693;
                    }

LABEL_1692:
                    if (v692)
                    {
LABEL_1693:
                      if (v692 > 0xDE || (v692 - 123) >= 0xE6u)
                      {
                        LOBYTE(v692) = v692 & 0xDF;
                      }
                    }

                    bwd_char(v692);
                    goto LABEL_1697;
                  }
                }

                else
                {
                  v692 = *v685;
                  v898 = *v685;
                }

                v34 = &unk_9D000;
                goto LABEL_1692;
              }
            }

            v688 = nLangIDGlb;
            goto LABEL_1669;
          }

          if (v551 == 4)
          {
            goto LABEL_1370;
          }

          if (v551 != 32)
          {
            if (v551 != 64)
            {
              goto LABEL_1397;
            }

LABEL_1389:
            if ((nLangIDGlb != 12 || (lFlags & 0x40000000) != 0) && bwd_fetch_char(&v898, v547, 0, 0))
            {
              v567 = v898;
              goto LABEL_2078;
            }

            v34[250] = v547 + 1;
            if (v547[1] == 45)
            {
              v34[250] = v547 + 2;
              bwd_char(45);
              v574 = v34[250];
              if (*v574 == 44)
              {
                v34[250] = v574 + 1;
                bwd_char(44);
              }
            }

            v575 = qword_9D7D8;
            v576 = nLangIDGlb;
            if (qword_9D7D8 < 3)
            {
LABEL_1409:
              if (v576 == 9)
              {
                goto LABEL_1410;
              }

              v579 = 0;
            }

            else
            {
              if (nLangIDGlb != 9 || (lFlags & 0x40000000) != 0)
              {
                v577 = v34[250];
                v578 = *v577;
                if ((v578 | 2) == 0x2E)
                {
                  v34[250] = v577 + 1;
                  bwd_char(v578);
                  v576 = nLangIDGlb;
                }

                goto LABEL_1409;
              }

LABEL_1410:
              v579 = 0;
              v580 = v34[250];
              v581 = *v580;
              v576 = 9;
              if (v581 >= 0x21 && v581 != 160)
              {
                v582 = 0;
                v583 = v580 + 1;
                v584 = v580 + 1;
                v585 = v581;
                do
                {
                  if (v585 == 45)
                  {
                    ++v582;
                  }

                  v586 = *v584++;
                  v585 = v586;
                }

                while (v586 >= 0x21 && v585 != 160);
                if (v582 == 2)
                {
                  v587 = 0;
                  do
                  {
                    if (v581 == 36)
                    {
                      ++v587;
                    }

                    v588 = *v583++;
                    v581 = v588;
                  }

                  while (v588 >= 0x21 && v581 != 160);
                  v579 = v587 == 0;
                }

                else
                {
                  v579 = 0;
                }

                v576 = 9;
              }
            }

            if (v576 == 12 || (lFlags & 0x40000000) != 0 || (v796 = v34[250], !*v796) || !memchr(",;:/?+=(*)", *v796, 0xBuLL))
            {
              v797 = 1;
              v798 = 64;
            }

            else
            {
              v797 = 0;
              v798 = 128;
            }

            v799 = v546[252];
            *(v799 + 24) = v798;
            v800 = qword_9D848;
            if (qword_9D848 == 2)
            {
              v801 = *(*(v799 + 48) + 48);
              if (v801)
              {
                v802 = *(&stru_20.fileoff + pLangGlb);
                create_buffer(1, *v801, 0);
                if (!no_exception(1, v802, byte_9D788))
                {
                  v575 = qword_9D7D8;
                  v800 = qword_9D848;
                  goto LABEL_1893;
                }

LABEL_1909:
                v803 = ":";
LABEL_1919:
                v815 = v34[250];
                v816 = *v815;
                v891 = !v579;
                while (2)
                {
                  if (v816 == 30)
                  {
                    v36[245] = 0;
                    v817 = 30;
                    goto LABEL_1925;
                  }

                  if (v816 == 39 && nLangIDGlb == 7)
                  {
                    v817 = 39;
                    goto LABEL_1925;
                  }

                  v818 = pLangGlb;
                  if (stru_B8.segname[pLangGlb + 1] == v816)
                  {
                    v819 = lFlags;
                    if ((lFlags & 0x40000000) != 0)
                    {
                      goto LABEL_1953;
                    }

                    v820 = v815[1];
                    if (nLangIDGlb == 12)
                    {
                      if (!v815[1] || !memchr("#123456789", v820, 0xBuLL) || !*(v815 - 1) || !memchr("#123456789", *(v815 - 1), 0xBuLL))
                      {
                        v821 = nSubLangIDGlb;
                        if ((v819 & 0x40000000) != 0)
                        {
                          goto LABEL_1936;
                        }

LABEL_1945:
                        if (v816 != 35)
                        {
                          v34 = &unk_9D000;
                          if (v816 != 58)
                          {
                            if (v816 == 124)
                            {
                              v824 = v815[1];
                              if ((v824 - 49) > 2 || v815[2] && memchr("#123456789", v815[2], 0xBuLL))
                              {
                                if (byte_9D800 != 1)
                                {
LABEL_2036:
                                  v817 = 32;
                                  goto LABEL_1925;
                                }

LABEL_1998:
                                v817 = 31;
                                goto LABEL_1925;
                              }

                              qword_9D7D0 = (v815 + 1);
                              if (v824 == 51)
                              {
                                v817 = 4294967219;
                              }

                              else if (v824 == 50)
                              {
                                v817 = 4294967218;
                              }

                              else
                              {
                                v817 = 4294967225;
                              }

LABEL_1925:
                              bwd_char(v817);
                              goto LABEL_1926;
                            }

                            goto LABEL_2061;
                          }

                          goto LABEL_2068;
                        }

                        v34 = &unk_9D000;
                        if (v815[1] == 36 && v815[2] == 35)
                        {
                          if (v815[3] == 35)
                          {
                            bwd_char(4294967177);
                            v838 = qword_9D7D0 + 3;
                          }

                          else
                          {
                            bwd_char(37);
                            v838 = qword_9D7D0 + 2;
                          }

LABEL_2004:
                          qword_9D7D0 = v838;
                          goto LABEL_1926;
                        }

LABEL_2048:
                        v817 = 48;
                        goto LABEL_1925;
                      }

LABEL_1953:
                      v825 = stru_B8.segname[v818];
LABEL_2018:
                      bwd_char(v825);
                      v34 = &unk_9D000;
                      goto LABEL_1926;
                    }

                    if ((v820 - 107) >= 0xFFFFFFF6 && *(v815 - 1) - 107 >= 0xFFFFFFF6)
                    {
                      goto LABEL_1953;
                    }
                  }

                  v822 = nLangIDGlb == 9;
                  v821 = nSubLangIDGlb;
                  if (nLangIDGlb != 9 || nSubLangIDGlb != 3)
                  {
                    if (nLangIDGlb == 12)
                    {
                      if ((lFlags & 0x40000000) == 0)
                      {
                        goto LABEL_1945;
                      }

LABEL_1936:
                      v822 = 0;
                    }

LABEL_1958:
                    if (v816)
                    {
                      v826 = (lFlags & 0x40000000) == 0;
                      if ((v816 - 107) >= 0xF6u)
                      {
                        if ((lFlags & 0x40000000) != 0)
                        {
                          v34 = &unk_9D000;
                        }

                        else
                        {
                          v829 = *(v815 - 1);
                          v34 = &unk_9D000;
                          if (*(v815 - 1) && (memchr(",;:/?+=(*)", *(v815 - 1), 0xBuLL) || v829 == 30 && *(v815 - 2) && memchr(",;:/?+=(*)", *(v815 - 2), 0xBuLL)) && *(v11[246] - 1) != stru_B8.segname[v818])
                          {
                            v830 = v36[245];
                            if (v830 >= 2)
                            {
                              v36[245] = v830 + 1;
                            }

                            if (*(qword_9D7E0 + 24) == 64)
                            {
                              bwd_char(47);
                              v815 = qword_9D7D0;
                            }

                            else
                            {
                              v849 = *v803;
                              v850 = (v803 + 1);
                              do
                              {
                                bwd_char(v849);
                                v851 = *v850++;
                                v849 = v851;
                              }

                              while (v851);
                            }
                          }
                        }

                        v835 = *v815;
                        if (v835 == 106)
                        {
                          v836 = 48;
                        }

                        else
                        {
                          v836 = (v835 - 48);
                        }

                        bwd_char(v836);
                        v797 = 1;
                        goto LABEL_1926;
                      }

                      if ((lFlags & 0x40000000) == 0 && memchr(",;:/?+=(*)", v816, 0xBuLL))
                      {
                        v827 = *(v815 - 1);
                        if (*(v815 - 1))
                        {
                          v34 = &unk_9D000;
                          if ((v827 - 107) > 0xFFFFFFF5 || v827 == 30 && *(v815 - 2) - 107 >= 0xFFFFFFF6)
                          {
                            v828 = v36[245];
                            if (v828 >= 2)
                            {
                              v36[245] = v828 + 1;
                            }

                            if (*(qword_9D7E0 + 24) == 64)
                            {
                              bwd_char(47);
                              v815 = qword_9D7D0;
                            }

                            else
                            {
                              v845 = *v803;
                              v846 = (v803 + 1);
                              do
                              {
                                bwd_char(v845);
                                v847 = *v846++;
                                v845 = v847;
                              }

                              while (v847);
                            }
                          }
                        }

                        else
                        {
                          v34 = &unk_9D000;
                        }

                        v848 = 0;
                        while (*v815 != asc_26AD6[v848])
                        {
                          if (++v848 == 10)
                          {
                            goto LABEL_1926;
                          }
                        }

                        if (v848)
                        {
                          v817 = (v848 | 0x30);
                          goto LABEL_1925;
                        }

                        goto LABEL_2048;
                      }

                      v831 = v891;
                      if (v816 != 45)
                      {
                        v831 = 1;
                      }

                      if ((v831 & 1) == 0)
                      {
                        goto LABEL_1982;
                      }
                    }

                    else
                    {
                      v826 = (lFlags & 0x40000000) == 0;
                    }

                    if (v822)
                    {
                      if (v816 == 52)
                      {
                        if (!v815[1])
                        {
                          v842 = v36[245];
                          if (v842 >= 2)
                          {
                            v36[245] = v842 + 1;
                          }

                          v843 = 0;
                          v844 = 116;
                          v34 = &unk_9D000;
                          do
                          {
                            bwd_char(v844);
                            v844 = aTh_3[++v843];
                          }

                          while (v843 != 2);
                          goto LABEL_1926;
                        }
                      }

                      else if (v816 == 124 && !v815[1])
                      {
                        v832 = v36[245];
                        if (v832 >= 2)
                        {
                          v36[245] = v832 + 1;
                        }

                        v833 = 0;
                        v834 = 115;
                        v34 = &unk_9D000;
                        do
                        {
                          bwd_char(v834);
                          v834 = aSt_0[++v833];
                        }

                        while (v833 != 2);
                        goto LABEL_1926;
                      }
                    }

                    if (bwd_fetch_char(&v898, v815, 0, 0))
                    {
                      v837 = v898;
                      if (v898 == 149)
                      {
                        v837 = 46;
                      }

                      bwd_char(v837);
                      v34 = &unk_9D000;
                      v838 = qword_9D7D0 + 1;
                      goto LABEL_2004;
                    }

                    if (v816 && v822 && v821 != 2 && v826 && memchr("#0-1|4$k'\x7F", v816, 0xBuLL))
                    {
                      if (v816 > 0x30u)
                      {
                        v34 = &unk_9D000;
                        if (v816 <= 0x7Bu)
                        {
                          if (v816 == 49)
                          {
                            v817 = 42;
                            goto LABEL_1925;
                          }

                          if (v816 == 52)
                          {
                            goto LABEL_2036;
                          }

                          goto LABEL_2061;
                        }

                        if (v816 != 124)
                        {
                          if (v816 == 127)
                          {
                            v854 = v815[1];
                            v853 = (v815 + 1);
                            v852 = v854;
                            if (v854 && memchr(",;:/?+=(*)", v852, 0xBuLL))
                            {
                              qword_9D7D0 = v853;
                              if (bwd_fetch_char(&v898, v853, 0, 0))
                              {
                                v817 = v898;
                              }

                              else
                              {
                                v817 = v852;
                              }

                              goto LABEL_1925;
                            }

LABEL_1926:
                            v815 = (v34[250] + 1);
                            v34[250] = v815;
                            v816 = *v815;
                            if (!*v815)
                            {
                              v546 = &unk_9D000;
                              if (nLangIDGlb != 7)
                              {
                                goto LABEL_2079;
                              }

                              if (*(qword_9D7E0 + 24) != 128 || v797 != 0)
                              {
                                goto LABEL_2079;
                              }

                              v567 = 46;
LABEL_2078:
                              bwd_char(v567);
                              goto LABEL_2079;
                            }

                            continue;
                          }

LABEL_2061:
                          v817 = v816;
                          goto LABEL_1925;
                        }
                      }

                      else
                      {
                        v34 = &unk_9D000;
                        if (v816 > 0x26u)
                        {
                          if (v816 == 39)
                          {
                            v817 = 44;
                            goto LABEL_1925;
                          }

                          if (v816 == 48)
                          {
                            v817 = 43;
                            goto LABEL_1925;
                          }

                          goto LABEL_2061;
                        }

                        if (v816 == 35)
                        {
                          goto LABEL_2036;
                        }

                        if (v816 != 36)
                        {
                          goto LABEL_2061;
                        }

                        v841 = v815[1];
                        v840 = (v815 + 1);
                        v839 = v841;
                        if (v841 != 124)
                        {
                          if (v839 == 107)
                          {
                            qword_9D7D0 = v840;
                            v817 = 61;
                          }

                          else
                          {
                            v817 = 46;
                          }

                          goto LABEL_1925;
                        }

                        qword_9D7D0 = v840;
                      }

LABEL_2068:
                      v817 = 47;
                      goto LABEL_1925;
                    }

                    v825 = v816;
                    goto LABEL_2018;
                  }

                  break;
                }

                if ((lFlags & 0x40000000) == 0)
                {
                  goto LABEL_1957;
                }

                if (v816 == 33)
                {
                  v34 = &unk_9D000;
                  if (byte_9D800 != 1)
                  {
                    goto LABEL_2036;
                  }

                  goto LABEL_1998;
                }

                if (v816 != 124)
                {
LABEL_1957:
                  v821 = 3;
                  v822 = 1;
                  goto LABEL_1958;
                }

LABEL_1982:
                v825 = 47;
                goto LABEL_2018;
              }
            }

            else
            {
LABEL_1893:
              if (v575 == 0x2000000)
              {
                v803 = ".";
                if (v800 == 0x4000000)
                {
                  v804 = 0;
                  v805 = **(qword_9D7E0 + 40);
                  do
                  {
                    do
                    {
                      v806 = *v805++;
                    }

                    while (v806 == 173 || v806 == 30);
                    if (v806 != asc_20ED7[v804])
                    {
                      goto LABEL_1918;
                    }

                    ++v804;
                  }

                  while (v804 != 2);
                  v808 = 0;
                  v809 = **(qword_9D7E0 + 48);
                  v810 = v809;
                  while (1)
                  {
                    do
                    {
                      v811 = *v810++;
                    }

                    while (v811 == 173 || v811 == 30);
                    if (v811 != asc_20ED7[v808])
                    {
                      break;
                    }

                    if (++v808 == 2)
                    {
                      goto LABEL_1909;
                    }
                  }

                  while (1)
                  {
                    v813 = *v809;
                    if (v813 != 173 && v813 != 30)
                    {
                      break;
                    }

                    ++v809;
                  }

                  if (v813 == 58)
                  {
                    v803 = ":";
                  }

                  else
                  {
                    v803 = ".";
                  }
                }

                goto LABEL_1919;
              }
            }

LABEL_1918:
            v803 = ".";
            goto LABEL_1919;
          }

          v589 = *v547;
          if (in(*v547, 9))
          {
            if (v547[1] != 46)
            {
              if ((*(v545 + 34) & 0x10) == 0)
              {
                goto LABEL_1427;
              }

              LOBYTE(v589) = v589 & 0xDF;
            }
          }

          else
          {
LABEL_1427:
            v590 = (v589 - 91) >= 0xE6u || (v589 + 33) >= 0xE1u;
            v591 = v589 | 0x20;
            if (!v590)
            {
              v591 = v589;
            }

            if (v589)
            {
              LOBYTE(v589) = v591;
            }

            else
            {
              LOBYTE(v589) = 0;
            }
          }

          bwd_char(v589);
          v793 = (v34[250] + 1);
          v34[250] = v793;
          LOBYTE(v794) = *v793;
          if (*v793)
          {
            v795 = v546[252];
            do
            {
              if ((*(v795 + 33) & 4) != 0 && ((v794 + 33) > 0xE0u || (v794 - 91) >= 0xE6u))
              {
                bwd_char((v794 | 0x20));
                v795 = v546[252];
                v793 = v34[250];
              }

              else
              {
                bwd_char(v794);
              }

              v34[250] = v793 + 1;
              v794 = *++v793;
            }

            while (v794);
          }

LABEL_2079:
          if (v36[245] >= 1)
          {
            v36[245] = 0;
            bwd_char(30);
          }

          v856 = v546[252];
          qword_9D7D8 = *(v856 + 24);
          v545 = *(v856 + 48);
          v546[252] = v545;
          if (v545)
          {
            continue;
          }

          break;
        }

        v857 = qword_9D7F8;
        v33 = &unk_9D000;
        if (qword_9D7F8)
        {
          do
          {
            v858 = v857;
            v857 = *(v857 + 48);
            qword_9D7F8 = v857;
            free(v858);
          }

          while (v857);
          v546[252] = v858;
        }

LABEL_2085:
        free(v33[263]);
        v33[263] = 0;
        v859 = v11[246];
        *v859 = 0;
        if (v859 == qword_9D7B8)
        {
          return 111;
        }

        if (bMemoryOverflow)
        {
          return 8;
        }

        memmove(__dsta, __src, v859 - __dsta);
        if (!a4)
        {
          return 0;
        }

        v36[245] = 0;
        qword_9D7E8 = v894;
        v11[246] = __dsta;
        v860 = qword_9D7B8;
        if (qword_9D7B8 == __dsta)
        {
          return 0;
        }

        v861 = __dsta;
        v862 = 0;
        v31 = 0;
        v863 = 0;
        do
        {
          v864 = *v861;
          if (v864 == 31)
          {
            ++v862;
            *v861++ = 32;
LABEL_2096:
            qword_9D7B0 = v861;
            goto LABEL_2097;
          }

          if (v864 >= 0x21 && v864 != 160)
          {
            ++v862;
            ++v861;
            goto LABEL_2096;
          }

          v865 = &unk_9D000;
          v866 = qword_9D7E8;
          v867 = *qword_9D7E8;
          if (!*qword_9D7E8)
          {
            v868 = 0;
            goto LABEL_2128;
          }

          v868 = 0;
          v869 = qword_9D7E8;
          while (v867 < 0x21)
          {
            if (v867 != 30)
            {
              if (v867 != 27)
              {
                goto LABEL_2127;
              }

              v870 = (v869 + 1);
              if (*(v869 + 1))
              {
                v865[253] = v870;
                if (*v870 - 51 > 1)
                {
                  ++v869;
                }

                else
                {
                  v871 = *(v869 + 2);
                  v869 += 2;
                  if ((v871 - 1) >= 0x1F)
                  {
                    v869 = v870;
                  }
                }

                goto LABEL_2116;
              }

LABEL_2112:
              if (v868)
              {
                goto LABEL_2113;
              }

              if (!memchr("#!'><$\x7F", v867, 9uLL))
              {
                goto LABEL_2113;
              }

              v872 = *(v869 + 1);
              if (v872 < 0x21)
              {
                goto LABEL_2113;
              }

              v873 = in(*(v869 + 1), 5);
              v874 = v872 == 160;
              if (!v873)
              {
                goto LABEL_2124;
              }

              if (v872 == 160)
              {
                goto LABEL_2113;
              }

              v875 = *(v869 + 2);
              if (v875 < 0x21)
              {
                goto LABEL_2113;
              }

              v874 = v875 == 160;
LABEL_2124:
              if (v874)
              {
LABEL_2113:
                ++v868;
              }

              else
              {
                v868 = 0;
                ++v863;
              }

              v865 = &unk_9D000;
            }

LABEL_2116:
            v866 = (v869 + 1);
            v865[253] = v869 + 1;
            v867 = *++v869;
            if (!v867)
            {
              goto LABEL_2128;
            }
          }

          if (v867 != 160)
          {
            goto LABEL_2112;
          }

LABEL_2127:
          v866 = v869;
LABEL_2128:
          v544 = v868 + v863 - 1;
          qword_9D7A8 = v544;
          if (v868 <= 0)
          {
            v876 = v868 + v863 - 1;
          }

          else
          {
            v876 = v863;
          }

          v877 = 1;
          if (v868 >= 1 && v868 < v862)
          {
            v877 = v862 / v868;
          }

          qword_951F8 = 1;
          if (v31 < v861 - __dsta)
          {
            v878 = 1;
            do
            {
              a4[v31] = v876;
              if (v876 < v544)
              {
                v879 = v876 + 1;
              }

              else
              {
                v879 = v868 + v863 - 1;
              }

              if (!(v878 % v877))
              {
                v876 = v879;
              }

              ++v878;
              ++v31;
            }

            while (v31 < v861 - __dsta);
            qword_951F8 = v878;
          }

          if (v31 >= 2 && v862 >= 2)
          {
            a4[v31 - 1] = v544;
          }

          v880 = *v866;
          if (*v866)
          {
            while (2)
            {
              if (v880 >= 0x21)
              {
                if (v880 != 160)
                {
                  break;
                }
              }

              else if (v880 - 9 >= 5 && v880 != 32)
              {
                if (v880 == 27)
                {
                  v881 = v866 + 1;
                  if (v866[1])
                  {
                    v865[253] = v881;
                    if (*v881 - 51 > 1)
                    {
                      ++v866;
                    }

                    else
                    {
                      v882 = v866[2];
                      v866 += 2;
                      if ((v882 - 1) >= 0x1F)
                      {
                        v866 = v881;
                      }
                    }
                  }
                }

                goto LABEL_2161;
              }

              qword_9D7A8 = ++v544;
              if (*v861 == v880)
              {
                a4[v31++] = v544;
                qword_9D7B0 = ++v861;
              }

LABEL_2161:
              v865[253] = v866 + 1;
              v880 = *++v866;
              if (!v880)
              {
                break;
              }

              continue;
            }
          }

          v883 = *v861;
          if (!*v861)
          {
            goto LABEL_1346;
          }

          v884 = v861 + 1;
          while (v883 < 0x21 || v883 == 160)
          {
            v885 = v31 + 1;
            a4[v31] = v544;
            qword_9D7B0 = v884;
            v886 = *v884++;
            v883 = v886;
            ++v31;
            if (!v886)
            {
              v31 = v885;
              goto LABEL_1346;
            }
          }

          v862 = 0;
          v863 = v544 + 1;
          qword_9D7A8 = v544 + 1;
          v861 = v884 - 1;
LABEL_2097:
          result = 0;
        }

        while (v861 != v860);
        return result;
    }
  }
}

id sub_1B834()
{
  if (qword_9D968 != -1)
  {
    sub_1C220();
  }

  v1 = qword_9D960;

  return v1;
}

void sub_1C0B0(id a1)
{
  qword_9D960 = os_log_create("com.apple.accessibility", "BRLTranslation.RTFC");

  _objc_release_x1();
}

void sub_1C10C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}