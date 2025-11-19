void AddString(uint64_t a1, char *a2)
{
  v2 = a2;
  v4 = *(a1 + 12);
  v5 = tmbstrlen(a2);
  v6 = v5 + v4;
  if (&v5[v4] >= *(a1 + 8))
  {
    expand(a1, v6);
  }

  if (v5)
  {
    v7 = (*a1 + 4 * v4);
    do
    {
      v8 = *v2++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  *(a1 + 12) = v6;
}

void AddChar(uint64_t a1, int a2)
{
  v4 = *(a1 + 12);
  if ((v4 + 1) >= *(a1 + 8))
  {
    expand(a1, v4 + 1);
  }

  *(*a1 + 4 * v4) = a2;
  ++*(a1 + 12);
}

void expand(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v3 = 256;
  }

  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 <= a2);
  v5 = linkedOnOrAfter2024EReleases();
  v6 = *a1;
  v7 = 4 * v4;
  if (!v5)
  {
    v8 = _MemRealloc(v6, v7);
    if (!v8)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = malloc_type_realloc(v6, v7, 0x100004052888210uLL);
  if (v8)
  {
LABEL_10:
    v9 = v8;
    ClearMemory(&v8[4 * *(a1 + 8)], 4 * (v4 - *(a1 + 8)));
    *(a1 + 8) = v4;
    *a1 = v9;
    return;
  }

  FatalError("Out of memory!");
}

void PPrintAttribute(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 288);
  v36 = *(a1 + 296);
  v34 = *(a1 + 440);
  v9 = *(a1 + 328);
  v10 = *(a1 + 496);
  v11 = *(a1 + 120);
  v12 = *(a3 + 64);
  if (v12)
  {
    v13 = tmbstrlen(v12);
    if (nodeHasCM(a3, 16) && (*a3 ? (v14 = *a3) : (v14 = a3), ShouldIndent(a1, v14)))
    {
      if (FindContainer(a3))
      {
        v11 = v13 + 2;
      }
    }

    else
    {
      v11 = v13 + 2;
    }
  }

  v15 = *(a3 + 40);
  v16 = *(a4 + 40);
  v37 = 0;
  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  v35 = v17;
  if (v10 && nodeIsElement(a3))
  {
    v18 = v8;
    if (v15 != a4)
    {
      a2 += v11;
      PCondFlushLine(a1, a2);
    }
  }

  else
  {
    v18 = v8;
  }

  CheckWrapIndent(a1, a2);
  if (v18 | v36 || !*(a4 + 8))
  {
    goto LABEL_30;
  }

  if (IsScript(a1, v16))
  {
    v19 = *(a1 + 448);
    goto LABEL_31;
  }

  v20 = *(a4 + 8);
  if (!v20)
  {
    if (v34)
    {
LABEL_29:
      v19 = 1;
      goto LABEL_31;
    }

LABEL_30:
    v19 = 0;
    goto LABEL_31;
  }

  v19 = 0;
  v21 = *v20;
  if (v21 != 35 && v21 != 145)
  {
    v19 = 0;
    if (v21 != 9)
    {
      if (v34)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_31:
  v22 = *(a1 + 4788);
  if (v15 == a4)
  {
LABEL_36:
    if (v22)
    {
      AddChar(a1 + 4776, 32);
    }

    goto LABEL_41;
  }

  if (*(a1 + 128) > (v22 + a2))
  {
    if ((*(a1 + 4804) & 0x80000000) != 0)
    {
      *(a1 + 4804) = a2;
    }

    *(a1 + 4792) = v22;
    goto LABEL_36;
  }

  if (!*(a1 + 4800))
  {
    *(a1 + 4816) = a2;
    *(a1 + 4800) = 1;
  }

  PFlushLine(a1, a2 + v35);
LABEL_41:
  v23 = *v16;
  if (*v16)
  {
    do
    {
      v37 = v23;
      if ((v23 & 0x80) != 0)
      {
        v16 += GetUTF8(v16, &v37);
        LODWORD(v23) = v37;
      }

      else if (v9)
      {
        LODWORD(v23) = ToUpper(v23);
        v37 = v23;
      }

      AddChar(a1 + 4776, v23);
      v24 = *++v16;
      v23 = v24;
    }

    while (v24);
  }

  CheckWrapIndent(a1, a2);
  v25 = *(a4 + 48);
  if (v25)
  {
    v26 = *(a4 + 32);
    v27 = a1;
    v28 = a2;
    v29 = v19;
    v30 = 0;
LABEL_61:
    PPrintAttrValue(v27, v28, v25, v26, v29, v30);
    return;
  }

  v31 = IsBoolAttribute(a4);
  IsEvent = attrIsEvent(a4);
  if (v18)
  {
    if (v31)
    {
      v25 = *(a4 + 40);
    }

    else
    {
      v25 = &unk_299967BF2;
    }

    v26 = *(a4 + 32);
    v27 = a1;
    v28 = a2;
    v29 = 0;
    goto LABEL_60;
  }

  if (!v31 && !IsNewNode(a3))
  {
    v26 = *(a4 + 32);
    v25 = &unk_299967BF2;
    v27 = a1;
    v28 = a2;
    v29 = 1;
LABEL_60:
    v30 = IsEvent;
    goto LABEL_61;
  }

  v33 = *(a1 + 4788);
  if (*(a1 + 128) <= (v33 + a2))
  {
    if (!*(a1 + 4800))
    {
      *(a1 + 4816) = a2;
      *(a1 + 4800) = 1;
    }
  }

  else
  {
    if ((*(a1 + 4804) & 0x80000000) != 0)
    {
      *(a1 + 4804) = a2;
    }

    *(a1 + 4792) = v33;
  }
}

void PPrintAttrValue(uint64_t a1, int a2, unsigned __int8 *a3, int a4, int a5, int a6)
{
  v9 = a3;
  v12 = *(a1 + 448);
  if (a5)
  {
    v13 = 4;
  }

  else
  {
    v13 = 5;
  }

  v54 = v13;
  if (a3)
  {
    if (*a3 == 60)
    {
      v14 = a3[1];
      if (v14 == 37 || v14 == 64 || !tmbstrncmp(a3, "<?php", 5))
      {
        v54 |= 0x10u;
      }
    }
  }

  if (!a4)
  {
    a4 = 34;
  }

  AddChar(a1 + 4776, 61);
  if (!*(a1 + 288) || *(a1 + 296))
  {
    v15 = *(a1 + 4788);
    if (*(a1 + 128) <= (v15 + a2))
    {
      if (!*(a1 + 4800))
      {
        *(a1 + 4816) = a2;
        *(a1 + 4800) = 1;
      }
    }

    else
    {
      if ((*(a1 + 4804) & 0x80000000) != 0)
      {
        *(a1 + 4804) = a2;
      }

      *(a1 + 4792) = v15;
    }

    CheckWrapIndent(a1, a2);
  }

  AddChar(a1 + 4776, a4);
  if (!v9)
  {
    goto LABEL_102;
  }

  v55 = *(a1 + 128);
  v21 = (a1 + 4804);
  v22 = *(a1 + 4800);
  v23 = *(a1 + 4788);
  v24 = a1 + 4804 + 12 * v22;
  *(v24 + 4) = v23;
  *(v24 + 8) = -1;
  v25 = *v9;
  if (!*v9)
  {
    goto LABEL_101;
  }

  if (a6)
  {
    v26 = v12 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  if (a4 == 39)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (a4 != 34)
  {
    v27 = 0;
  }

  v52 = v27;
  v53 = v28;
  if (a4 == 34)
  {
    v29 = "&quot;";
  }

  else
  {
    v29 = "&#39;";
  }

  v30 = -1;
  do
  {
    v31 = v25;
    v56 = v25;
    if (a5 && v25 == 32)
    {
      v32 = *(a1 + 4788);
      if (*(a1 + 128) <= (v32 + a2))
      {
        v33 = *(a1 + 4800);
        if (!v33)
        {
          *(a1 + 4816) = a2;
          *(a1 + 4800) = 1;
          v34 = *(a1 + 4792);
          v35 = *(a1 + 4812);
          v36 = __OFSUB__(v35, v34);
          v37 = v35 - v34;
          if (!((v37 < 0) ^ v36 | (v37 == 0)))
          {
            *(a1 + 4824) = v37;
            *(a1 + 4812) = -1;
          }

          v38 = *(a1 + 4808);
          v36 = __OFSUB__(v38, v34);
          v39 = v38 - v34;
          if (!((v39 < 0) ^ v36 | (v39 == 0)))
          {
            *(a1 + 4820) = v39;
            *(a1 + 4808) = -1;
          }

          v33 = 1;
        }
      }

      else
      {
        if (*v21 < 0)
        {
          *v21 = a2;
        }

        *(a1 + 4792) = v32;
        v33 = *(a1 + 4800);
      }

      v40 = &v21[3 * v33];
      v40[1] = v23;
      v40[2] = v30;
    }

    else if (!a5)
    {
      goto LABEL_71;
    }

    if (*(a1 + 4792))
    {
      v41 = *(a1 + 4804);
      if ((v41 & ~(v41 >> 31)) + *(a1 + 4788) >= v55)
      {
        if (!WantIndent(a1) || v41 < 1)
        {
          goto LABEL_59;
        }

        do
        {
          WriteChar(32, *(a1 + 4840));
          --v41;
        }

        while (v41);
        LODWORD(v42) = *(a1 + 4792);
        if (v42)
        {
LABEL_59:
          v43 = 0;
          do
          {
            WriteChar(*(*(a1 + 4776) + 4 * v43++), *(a1 + 4840));
            v42 = *(a1 + 4792);
          }

          while (v43 < v42);
        }

        v44 = *(a1 + 4812);
        if (v44 < v42 && v44 > 0 || v44 == 0)
        {
          v47 = 92;
        }

        else
        {
          v47 = 32;
        }

        WriteChar(v47, *(a1 + 4840));
        WriteChar(10, *(a1 + 4840));
        ResetLineAfterWrap(a1 + 4776);
        v31 = v56;
      }
    }

LABEL_71:
    if (v31 == a4)
    {
      AddString(a1 + 4776, v29);
LABEL_94:
      ++v9;
      goto LABEL_95;
    }

    if (v31 == 39)
    {
      if (*(a1 + 416))
      {
        AddString(a1 + 4776, "&#39;");
      }

      else
      {
        AddChar(a1 + 4776, 39);
      }

      if (!v52)
      {
        goto LABEL_94;
      }

LABEL_90:
      v49 = &v21[3 * *(a1 + 4800)];
      v51 = v49[2];
      v50 = v49 + 2;
      if (v51 < 0)
      {
        v30 = *(a1 + 4788);
      }

      else
      {
        v30 = -1;
      }

      *v50 = v30;
      goto LABEL_94;
    }

    if (v31 == 34)
    {
      if (*(a1 + 416))
      {
        AddString(a1 + 4776, "&quot;");
      }

      else
      {
        AddChar(a1 + 4776, 34);
      }

      if (!v53)
      {
        goto LABEL_94;
      }

      goto LABEL_90;
    }

    if (v31 >= 0x80)
    {
      v9 += GetUTF8(v9, &v56);
      v31 = v56;
    }

    ++v9;
    if (v31 == 10)
    {
      if (v30 < 0)
      {
        if (*(a1 + 576))
        {
          v48 = 0;
        }

        else
        {
          v48 = a2;
        }
      }

      else
      {
        v48 = 0;
      }

      PFlushLine(a1, v48);
    }

    else
    {
      PPrintChar(a1, v31, v54, v16, v17, v18, v19, v20);
    }

LABEL_95:
    v25 = *v9;
  }

  while (*v9);
  v22 = *(a1 + 4800);
LABEL_101:
  *&v21[3 * v22 + 1] = -1;
LABEL_102:
  AddChar(a1 + 4776, a4);
}

uint64_t AfterSpace(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nodeCMIsEmpty(a2);
  while (1)
  {
    if (!nodeCMIsInline(v2))
    {
      return 1;
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      break;
    }

    if (v4)
    {
      result = nodeCMIsInline(*v2);
      if (!result)
      {
        return result;
      }
    }

    v2 = *v2;
  }

  if (nodeIsText(*(v2 + 8)) && (v8 = *(v5 + 72), v7 = *(v5 + 76), v7 > v8))
  {
    v13 = 0;
    do
    {
      v9 = (*(a1 + 104) + v8);
      v10 = *v9;
      v13 = *v9;
      if (v10 < 0)
      {
        v8 += GetUTF8(v9, &v13);
        v7 = *(v5 + 76);
      }

      ++v8;
    }

    while (v8 < v7);
    return v13 == 32 || v13 == 10;
  }

  else
  {
    v12 = *(v5 + 56);
    return v12 && *v12 == 17;
  }
}

void *StdErrOutput()
{
  if (!qword_2A197CDF8)
  {
    qword_2A197CDF8 = *MEMORY[0x29EDCA610];
  }

  return &stderrStreamOut;
}

void ReleaseStreamOut(FILE **a1)
{
  if (a1 != &stdoutStreamOut && a1 != 0 && a1 != &stderrStreamOut)
  {
    if (!*(a1 + 3))
    {
      fclose(a1[2]);
    }

    if (linkedOnOrAfter2024EReleases())
    {

      free(a1);
    }

    else
    {

      _MemFree(a1);
    }
  }
}

_DWORD *initStreamIn(uint64_t a1, int a2)
{
  if (linkedOnOrAfter2024EReleases())
  {
    v4 = malloc_type_malloc(0x58uLL, 0x10B0040FA2A0DF7uLL);
    if (!v4)
    {
      FatalError("Out of memory!");
    }
  }

  else
  {
    v4 = _MemAlloc(0x58uLL);
  }

  ClearMemory(v4, 0x58uLL);
  *(v4 + 4) = 0x100000001;
  v4[10] = a2;
  *v4 = 0;
  *(v4 + 10) = a1;
  v4[5] = 5;
  v5 = linkedOnOrAfter2024EReleases();
  v6 = 4 * v4[5];
  if (v5)
  {
    v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
    if (!v7)
    {
      FatalError("Out of memory!");
      v7 = 0;
    }
  }

  else
  {
    v7 = _MemAlloc(v6);
  }

  *(v4 + 1) = v7;
  return v4;
}

void freeStreamIn(void *a1)
{
  v2 = linkedOnOrAfter2024EReleases();
  v3 = a1[1];
  if (v2)
  {
    free(v3);
    a1[1] = 0;
  }

  else
  {
    _MemFree(v3);
  }

  if (linkedOnOrAfter2024EReleases())
  {

    free(a1);
  }

  else
  {

    _MemFree(a1);
  }
}

_DWORD *FileInput(uint64_t a1, uint64_t a2, int a3)
{
  inited = initStreamIn(a1, a3);
  if (initFileSource(inited + 6, a2))
  {
    freeStreamIn(inited);
    return 0;
  }

  else
  {
    inited[11] = 0;
  }

  return inited;
}

_DWORD *BufferInput(uint64_t a1, TidyBuffer *a2, int a3)
{
  inited = initStreamIn(a1, a3);
  tidyInitInputBuffer((inited + 12), a2);
  inited[11] = 1;
  return inited;
}

__n128 UserInput(uint64_t a1, uint64_t a2, int a3)
{
  inited = initStreamIn(a1, a3);
  result = *(a2 + 16);
  *(inited + 3) = *a2;
  *(inited + 4) = result;
  inited[11] = 2;
  return result;
}

uint64_t ReadBOMEncoding(uint64_t a1)
{
  v2 = (*(a1 + 56))(*(a1 + 48));
  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = (*(a1 + 56))(*(a1 + 48));
  if (v4 == -1)
  {
LABEL_17:
    (*(a1 + 64))(*(a1 + 48), v3);
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = v4 + (v3 << 8);
  if (v6 == 65534)
  {
    if ((*(a1 + 40) | 2) == 0xB)
    {
      return 9;
    }

    v9 = *(a1 + 80);
    v7 = 9;
    v10 = 9;
LABEL_21:
    ReportEncodingWarning(v9, 80, v10);
    return v7;
  }

  if (v6 != 65279)
  {
    v8 = (*(a1 + 56))(*(a1 + 48));
    if (v8 != -1)
    {
      if ((v5 << 8) + (v3 << 16) + v8 == 15711167)
      {
        if (*(a1 + 40) == 4)
        {
          return 4;
        }

        v9 = *(a1 + 80);
        v7 = 4;
        v10 = 4;
        goto LABEL_21;
      }

      (*(a1 + 64))(*(a1 + 48), v8);
    }

    (*(a1 + 64))(*(a1 + 48), v5);
    goto LABEL_17;
  }

  if ((*(a1 + 40) & 0xFFFFFFFE) != 0xA)
  {
    v9 = *(a1 + 80);
    v7 = 10;
    v10 = 10;
    goto LABEL_21;
  }

  return 10;
}

uint64_t ReadChar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 80) + 136);
  v10 = *(a1 + 4);
  if (!v10)
  {
    v25 = *(a1 + 32);
    *(a1 + 28) = v25;
    v26 = *(a1 + 24);
    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v28 < 0 == v27)
    {
      *(a1 + 32) = v25 + 1;
      *(a1 + 24) = v28;
      return 32;
    }
  }

  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_3:
  v11 = *(a1 + 8);
  v12 = *(a1 + 16) - 1;
  *(a1 + 16) = v12;
  v13 = *(v11 + 4 * v12);
  if (!v12)
  {
    *(a1 + 4) = 0;
  }

  if (v13 == 10)
  {
    v31 = *(a1 + 36) + 1;
LABEL_73:
    *(a1 + 32) = 1;
    *(a1 + 36) = v31 + 1;
    return 10;
  }

  ++*(a1 + 32);
  while (v13 > 9)
  {
    switch(v13)
    {
      case 0x1B:
        return v13;
      case 0xD:
        CharFromStream = ReadCharFromStream(a1);
        if (CharFromStream != 10)
        {
          UngetChar(CharFromStream, a1);
        }

        v30 = *(a1 + 36) + 1;
        *(a1 + 32) = 1;
        *(a1 + 36) = v30;
        return 10;
      case 0xA:
        v31 = *(a1 + 36);
        goto LABEL_73;
    }

LABEL_15:
    if (v13 <= 0x1F)
    {
      goto LABEL_61;
    }

    v14 = *(a1 + 40);
    if (v14 - 9 < 3)
    {
      if (!IsValidUTF16FromUCS4(v13))
      {
        goto LABEL_29;
      }

      if (IsLowSurrogate(v13))
      {
        v15 = ReadCharFromStream(a1);
        if (v15 == -1)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v15;
        if (!IsHighSurrogate(v15))
        {
          v13 = 0;
          goto LABEL_29;
        }

        v17 = CombineSurrogatePair(v16, v13);
        valid = IsValidCombinedChar(v17);
        v13 = 0;
        if (!v17 || !valid)
        {
LABEL_29:
          ReportEncodingError(*(a1 + 80), 79, v13, 1, a5, a6, a7, a8);
          v17 = 0;
        }
      }

      else
      {
        v17 = v13;
      }

      v14 = *(a1 + 40);
      v13 = v17;
      goto LABEL_31;
    }

    if (v14 <= 0xD && ((1 << v14) & 0x3031) != 0)
    {
      ++*(a1 + 32);
      return v13;
    }

LABEL_31:
    if (v14 == 2)
    {
      if ((v13 - 160) > 0x1E)
      {
        goto LABEL_53;
      }

      if (v13 <= 0xB7u)
      {
        if (v13 > 0xA7u)
        {
          if (v13 == 168)
          {
            v35 = 353;
          }

          else
          {
            if (v13 != 180)
            {
              goto LABEL_53;
            }

            v35 = 381;
          }
        }

        else if (v13 == 164)
        {
          v35 = 8364;
        }

        else
        {
          if (v13 != 166)
          {
            goto LABEL_53;
          }

          v35 = 352;
        }

LABEL_85:
        ++*(a1 + 32);
        return v35;
      }

      if (v13 <= 0xBCu)
      {
        if (v13 == 184)
        {
          v35 = 382;
        }

        else
        {
          if (v13 != 188)
          {
            goto LABEL_53;
          }

          v35 = 338;
        }

        goto LABEL_85;
      }

      if (v13 == 190)
      {
        v35 = 376;
        goto LABEL_85;
      }

      if (v13 == 189)
      {
        v35 = 339;
        goto LABEL_85;
      }
    }

    else
    {
      if (v14 == 8)
      {
        v19 = v13 & 0xFFFFFF80;
        v20 = &IBM2Unicode;
      }

      else
      {
        if (v14 != 6)
        {
          goto LABEL_53;
        }

        v19 = v13 & 0xFFFFFF80;
        v20 = Mac2Unicode;
      }

      if (v19 == 128)
      {
        v13 = v20[(v13 - 128)];
      }
    }

LABEL_53:
    if ((v13 & 0xFFFFFFE0) == 0x80)
    {
      v21 = *(a1 + 80);
      v22 = *(v21 + 104);
      if (v22)
      {
        *v22 = vrev64_s32(*(a1 + 32));
      }

      v23 = v14 & 0xFFFFFFFE;
      v35 = Win2Unicode[(v13 - 128)];
      v24 = (0x2001A002uLL >> v13) & 1;
      if (v23 == 6 && v24)
      {
        ReportEncodingError(v21, 76, v13, 1, a5, a6, a7, a8);
        goto LABEL_61;
      }

      if (v23 != 6)
      {
        ReportEncodingError(v21, 77, v13, v24, a5, a6, a7, a8);
      }
    }

    else
    {
      v35 = v13;
    }

    if (v35)
    {
      goto LABEL_85;
    }

LABEL_61:
    if (*(a1 + 4))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = ReadCharFromStream(a1);
  }

  if (v13 == -1)
  {
    return v13;
  }

  if (v13 != 9)
  {
    goto LABEL_15;
  }

  v32 = *(a1 + 32);
  if (v9)
  {
    v33 = ~((v32 - 1) % v9) + v9;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 24) = v33;
  *(a1 + 32) = v32 + 1;
  return 32;
}

uint64_t ReadCharFromStream(int *a1)
{
  v2 = a1 + 12;
  if ((*(a1 + 9))(*(a1 + 6)))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (*(a1 + 7))(*(a1 + 6));
  v3 = v5;
  if (v5 == -1)
  {
    return v3;
  }

  v6 = a1[10];
  if (v6 <= 9)
  {
    if (v6 == 4)
    {
      v21 = 0;
      v11 = DecodeUTF8BytesToChar(&v21 + 1, v5, 0, v2, &v21);
      if (v21 == 1 && HIDWORD(v21) == -1 && v11 == 0)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = HIDWORD(v21);
      }

      if (v11)
      {
        v18 = *(a1 + 10);
        **(v18 + 104) = vrev64_s32(*(a1 + 8));
        ReportEncodingError(v18, 78, HIDWORD(v21), 0, v12, v13, v14, v15);
        return 65533;
      }

      return v3;
    }

    if (v6 != 5)
    {
      if (v6 != 9)
      {
        return v3;
      }

      v10 = (*(a1 + 7))(*(a1 + 6));
      v8 = v10 == -1;
      v9 = v3 + (v10 << 8);
      goto LABEL_16;
    }

    if (v5 == 27)
    {
      v19 = 1;
LABEL_32:
      *a1 = v19;
      return v3;
    }

    v20 = *a1;
    if (*a1 <= 2)
    {
      if (v20 == 1)
      {
        if (v5 == 40)
        {
          v19 = 4;
          goto LABEL_32;
        }

        if (v5 == 36)
        {
          v19 = 2;
          goto LABEL_32;
        }

LABEL_47:
        *a1 = 0;
        return v3;
      }

      if (v20 != 2)
      {
        return v3;
      }

      if (v5 == 40)
      {
        v19 = 3;
        goto LABEL_32;
      }
    }

    else if (v20 != 3)
    {
      if (v20 != 4)
      {
        if (v20 == 5)
        {
          return v5 | 0x80;
        }

        else
        {
          return v5;
        }
      }

      goto LABEL_47;
    }

    v19 = 5;
    goto LABEL_32;
  }

  if ((v6 - 10) < 2 || (v6 - 12) < 2 && v5 >= 0x80 && ((v5 - 161) > 0x3E || v6 != 13))
  {
    v7 = (*(a1 + 7))(*(a1 + 6));
    v8 = v7 == -1;
    v9 = v7 + (v3 << 8);
LABEL_16:
    if (v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v9;
    }
  }

  return v3;
}

_DWORD *UngetChar(_DWORD *result, uint64_t a2)
{
  if (result != -1)
  {
    v3 = result;
    *(a2 + 4) = 1;
    v4 = *(a2 + 16);
    v5 = v4 + 1;
    if ((v4 + 1) >= *(a2 + 20))
    {
      v6 = linkedOnOrAfter2024EReleases();
      v7 = *(a2 + 8);
      v8 = *(a2 + 20) + 1;
      *(a2 + 20) = v8;
      v9 = 4 * v8;
      if (v6)
      {
        result = malloc_type_realloc(v7, v9, 0x100004052888210uLL);
        if (!result)
        {
          FatalError("Out of memory!");
          result = 0;
        }
      }

      else
      {
        result = _MemRealloc(v7, v9);
      }

      *(a2 + 8) = result;
      v4 = *(a2 + 16);
      v5 = v4 + 1;
    }

    else
    {
      result = *(a2 + 8);
    }

    *(a2 + 16) = v5;
    result[v4] = v3;
    if (v3 == 10)
    {
      --*(a2 + 36);
    }

    *(a2 + 32) = *(a2 + 28);
  }

  return result;
}

uint64_t DecodeMacRoman(uint64_t result)
{
  if ((result & 0xFFFFFF80) == 0x80)
  {
    return Mac2Unicode[(result - 128)];
  }

  return result;
}

uint64_t DecodeWin1252(uint64_t result)
{
  if ((result & 0xFFFFFFE0) == 0x80)
  {
    return Win2Unicode[(result - 128)];
  }

  return result;
}

_DWORD *FileOutput(uint64_t a1, int a2, int a3)
{
  inited = initStreamOut(a2, a3);
  initFileSink(inited + 2, a1);
  inited[3] = 0;
  return inited;
}

_DWORD *initStreamOut(int a1, int a2)
{
  if (linkedOnOrAfter2024EReleases())
  {
    v4 = malloc_type_malloc(0x20uLL, 0x1080040AA036A7FuLL);
    if (!v4)
    {
      FatalError("Out of memory!");
    }
  }

  else
  {
    v4 = _MemAlloc(0x20uLL);
  }

  ClearMemory(v4, 0x20uLL);
  *v4 = a1;
  v4[1] = 0;
  v4[2] = a2;
  return v4;
}

TidyOutputSink *BufferOutput(TidyBuffer *a1, int a2, int a3)
{
  inited = initStreamOut(a2, a3);
  tidyInitOutputBuffer(inited + 1, a1);
  HIDWORD(inited->putByte) = 1;
  return inited;
}

__n128 UserOutput(__n128 *a1, int a2, int a3)
{
  inited = initStreamOut(a2, a3);
  result = *a1;
  inited[1] = *a1;
  inited->n128_u32[3] = 2;
  return result;
}

uint64_t WriteChar(uint64_t result, uint64_t a2)
{
  v3 = result;
  v28 = *MEMORY[0x29EDCA608];
  if (result == 10)
  {
    v4 = *(a2 + 8);
    if (v4 == 2)
    {
      v3 = 13;
    }

    else
    {
      if (v4 == 1)
      {
        result = WriteChar(13, a2);
      }

      v3 = 10;
    }
  }

  v5 = *a2;
  if (*a2 > 7)
  {
    if ((v5 - 9) >= 3)
    {
      if ((v5 - 12) >= 2)
      {
        if (v5 == 8 && v3 >= 0x80)
        {
          v10 = &IBM2Unicode;
          v7 = 128;
          while (1)
          {
            v11 = *v10++;
            if (v11 == v3)
            {
              goto LABEL_49;
            }

            if (++v7 == 256)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v3 > 0x7F)
      {
        (*(a2 + 24))(*(a2 + 16), BYTE1(v3));
      }

      goto LABEL_90;
    }

    result = IsValidUTF16FromUCS4(v3);
    if (!result)
    {
      goto LABEL_58;
    }

    result = IsCombinedChar(v3);
    if (result)
    {
      result = SplitSurrogatePair(v3, &v26, &v27);
      if (!result)
      {
        goto LABEL_58;
      }

      v9 = 2;
    }

    else
    {
      v26 = v3;
      v9 = 1;
    }

    v19 = &v26;
    while (1)
    {
      v21 = *v19++;
      v20 = v21;
      if ((*a2 - 10) < 2)
      {
        break;
      }

      if (*a2 == 9)
      {
        (*(a2 + 24))(*(a2 + 16), v20);
        v20 >>= 8;
        goto LABEL_56;
      }

LABEL_57:
      if (!--v9)
      {
        goto LABEL_58;
      }
    }

    (*(a2 + 24))(*(a2 + 16), BYTE1(v20));
LABEL_56:
    result = (*(a2 + 24))(*(a2 + 16), v20);
    goto LABEL_57;
  }

  if (v5 <= 4)
  {
    if (v5 == 2)
    {
      if (v3 > 375)
      {
        if (v3 > 381)
        {
          if (v3 == 8364)
          {
            v24 = -92;
          }

          else
          {
            v24 = v3;
          }

          if (v3 == 382)
          {
            LOBYTE(v3) = -72;
          }

          else
          {
            LOBYTE(v3) = v24;
          }
        }

        else if (v3 == 376)
        {
          LOBYTE(v3) = -66;
        }

        else if (v3 == 381)
        {
          LOBYTE(v3) = -76;
        }
      }

      else if (v3 > 351)
      {
        if (v3 == 352)
        {
          LOBYTE(v3) = -90;
        }

        else if (v3 == 353)
        {
          LOBYTE(v3) = -88;
        }
      }

      else if (v3 == 338)
      {
        LOBYTE(v3) = -68;
      }

      else if (v3 == 339)
      {
        LOBYTE(v3) = -67;
      }

      goto LABEL_90;
    }

    if (v5 != 4)
    {
LABEL_90:
      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
      v25 = *MEMORY[0x29EDCA608];
      v18 = v3;
      goto LABEL_91;
    }

    v26 = 0;
    result = EncodeCharToUTF8Bytes(v3, 0, a2 + 16, &v26);
    if (v26 <= 0)
    {
      (*(a2 + 24))(*(a2 + 16), 239);
      (*(a2 + 24))(*(a2 + 16), 191);
      result = (*(a2 + 24))(*(a2 + 16), 191);
    }

LABEL_58:
    v22 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (v5 == 5)
  {
    if (v3 == 27)
    {
      v14 = 1;
LABEL_48:
      *(a2 + 4) = v14;
      goto LABEL_90;
    }

    v23 = *(a2 + 4);
    if (v23 <= 2)
    {
      if (v23 == 1)
      {
        if (v3 == 40)
        {
          v14 = 4;
          goto LABEL_48;
        }

        if (v3 == 36)
        {
          v14 = 2;
          goto LABEL_48;
        }

LABEL_89:
        *(a2 + 4) = 0;
        goto LABEL_90;
      }

      if (v23 != 2)
      {
        goto LABEL_90;
      }

      if (v3 == 40)
      {
        v14 = 3;
        goto LABEL_48;
      }
    }

    else if (v23 != 3)
    {
      if (v23 != 4)
      {
        if (v23 == 5)
        {
          LOBYTE(v3) = v3 & 0x7F;
        }

        goto LABEL_90;
      }

      goto LABEL_89;
    }

    v14 = 5;
    goto LABEL_48;
  }

  if (v5 == 6)
  {
    if (v3 >= 0x80)
    {
      v12 = Mac2Unicode;
      v7 = 128;
      while (1)
      {
        v13 = *v12++;
        if (v13 == v3)
        {
          goto LABEL_49;
        }

        if (++v7 == 256)
        {
          goto LABEL_58;
        }
      }
    }

    goto LABEL_90;
  }

  if (v5 != 7 || v3 < 0x80 || (v3 - 160) < 0x60)
  {
    goto LABEL_90;
  }

  v6 = Win2Unicode;
  v7 = 128;
  while (1)
  {
    v8 = *v6++;
    if (v8 == v3)
    {
      break;
    }

    if (++v7 == 160)
    {
      goto LABEL_58;
    }
  }

LABEL_49:
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *MEMORY[0x29EDCA608];
  v18 = v7;
LABEL_91:

  return v16(v15, v18);
}

Bool tidyInitSource(TidyInputSource *source, void *srcData, TidyGetByteFunc gbFunc, TidyUngetByteFunc ugbFunc, TidyEOFFunc endFunc)
{
  if (source)
  {
    v5 = srcData == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || gbFunc == 0 || ugbFunc == 0 || endFunc == 0;
  v9 = !v8;
  if (!v8)
  {
    source->sourceData = srcData;
    source->getByte = gbFunc;
    source->ungetByte = ugbFunc;
    source->eof = endFunc;
  }

  return v9;
}

Bool tidyInitSink(TidyOutputSink *sink, void *snkData, TidyPutByteFunc pbFunc)
{
  if (sink)
  {
    v3 = snkData == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 || pbFunc == 0;
  v5 = !v4;
  if (!v4)
  {
    sink->sinkData = snkData;
    sink->putByte = pbFunc;
  }

  return v5;
}

_DWORD *outBOM(_DWORD *result)
{
  if (*result <= 0xBu && ((1 << *result) & 0xE10) != 0)
  {
    return WriteChar(65279, result);
  }

  return result;
}

const char *GetEncodingNameFromTidyId(int a1)
{
  if (a1 == 1)
  {
    return "us-ascii";
  }

  v2 = off_29F27A4C0;
  v3 = 12;
  do
  {
    v4 = v2;
    if (!--v3)
    {
      break;
    }

    v2 += 3;
  }

  while (*(v4 - 2) != a1);
  return *v4;
}

char *GetEncodingOptNameFromTidyId(int a1)
{
  v1 = &off_29F27A4B0;
  v2 = 14;
  while (*(v1 - 4) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t GetCharEncodingFromOptName(char *a1)
{
  v2 = &off_29F27A4B0;
  v3 = 14;
  while (tmbstrcasecmp(a1, *v2))
  {
    v2 += 3;
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(v2 - 4);
}

Bool tidyNodeIsHTML(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 48;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsHEAD(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 46;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsTITLE(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 111;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsBASE(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 9;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsMETA(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 67;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsBODY(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 16;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsFRAMESET(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 39;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsFRAME(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 38;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsIFRAME(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 50;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsNOFRAMES(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 71;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsHR(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 47;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsH1(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 40;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsH2(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 41;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsPRE(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 82;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsLISTING(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 63;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsP(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 79;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsUL(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 115;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsOL(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 76;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsDL(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 31;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsDIR(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 29;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsLI(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 61;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsDT(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 32;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsDD(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 26;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsTABLE(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 104;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsCAPTION(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 19;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsTD(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 106;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsTH(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 109;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsTR(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 112;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsCOL(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 23;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsCOLGROUP(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 24;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsBR(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 17;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsA(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 1;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsLINK(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 62;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsB(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 8;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsI(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 49;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsSTRONG(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 100;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsEM(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 33;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsBIG(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 13;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsSMALL(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 96;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsPARAM(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 80;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsOPTION(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 78;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsOPTGROUP(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 77;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsIMG(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 52;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsMAP(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 64;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsAREA(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 7;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsNOBR(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 69;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsWBR(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 117;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsFONT(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 36;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsLAYER(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 59;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsSPACER(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 97;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsCENTER(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 20;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsSTYLE(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 101;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsSCRIPT(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 92;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsNOSCRIPT(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 74;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsFORM(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 37;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsTEXTAREA(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 107;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsBLOCKQUOTE(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 15;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsAPPLET(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 6;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsOBJECT(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 75;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsDIV(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 30;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsSPAN(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 98;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsINPUT(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 53;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsQ(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 83;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsLABEL(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 58;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsH3(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 42;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsH4(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 43;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsH5(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 44;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsH6(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 45;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsADDRESS(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 4;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsXMP(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 118;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsSELECT(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 93;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsBLINK(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 14;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsMARQUEE(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 65;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsEMBED(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 34;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsBASEFONT(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 10;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsISINDEX(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 55;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsS(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 90;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsSTRIKE(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 99;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsU(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 114;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

Bool tidyNodeIsMENU(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1 == 66;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

int *FindTag(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 280))
  {
    result = *(a1 + 1568);
LABEL_3:
    *(a2 + 56) = result;
    return 1;
  }

  v4 = *(a2 + 64);
  if (!v4)
  {
    return 0;
  }

  result = lookup_0(a1 + 1568, v4);
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

int *lookup_0(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = a2 + 1;
    do
    {
      v5 = 31 * v5 + v4;
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
    v8 = v5 % 0xB2;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 16 + 8 * v8);
  if (v10)
  {
    while (*v10)
    {
      if (!tmbstrcmp(a2, *(*v10 + 8)))
      {
        return *v10;
      }

      v10 = v10[1];
      if (!v10)
      {
        break;
      }
    }
  }

  v9 = &dword_2A1FE6798;
  while (tmbstrcmp(a2, *(v9 + 1)))
  {
    v9 += 16;
    if (v9 >= dword_2A1FE8558)
    {
      v9 = *(a1 + 8);
      if (!v9)
      {
        return v9;
      }

      while (tmbstrcmp(a2, *(v9 + 1)))
      {
        v9 = *(v9 + 7);
        if (!v9)
        {
          return v9;
        }
      }

      break;
    }
  }

  install(a1, v9);
  return v9;
}

int *LookupTagDef(int a1)
{
  result = &dword_2A1FE6798;
  while (*result != a1)
  {
    result += 16;
    if (result >= dword_2A1FE8558)
    {
      return 0;
    }
  }

  return result;
}

int *FindParser(uint64_t a1, uint64_t a2)
{
  result = lookup_0(a1 + 1568, *(a2 + 64));
  if (result)
  {
    return *(result + 5);
  }

  return result;
}

_DWORD *DefineTag(_DWORD *result, int a2, unsigned __int8 *a3)
{
  v3 = a2 - 1;
  if ((a2 - 1) <= 7 && ((0x8Bu >> v3) & 1) != 0 && a3)
  {
    v5 = result;
    v6 = dword_29996721C[v3];
    v7 = *(&off_2A1FEB2E0 + v3);
    result = lookup_0((result + 392), a3);
    v8 = result;
    if (!result)
    {
      if (linkedOnOrAfter2024EReleases())
      {
        v8 = malloc_type_malloc(0x40uLL, 0x10F0040910EABC7uLL);
        if (!v8)
        {
          FatalError("Out of memory!");
        }
      }

      else
      {
        v8 = _MemAlloc(0x40uLL);
      }

      ClearMemory(v8, 0x40uLL);
      result = tmbstrdup(a3);
      *(v8 + 1) = result;
      *(v8 + 7) = *(v5 + 197);
      *(v5 + 197) = v8;
    }

    if (!*v8)
    {
      v8[4] = 57344;
      v8[8] |= v6;
      *(v8 + 5) = v7;
      *(v8 + 6) = 0;
      *(v8 + 3) = 0;
    }
  }

  return result;
}

uint64_t GetNextDeclaredTag(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    while (1)
    {
      result = 0;
      if (a2 > 3)
      {
        if (a2 == 4)
        {
          if ((*(v3 + 32) & 8) == 0)
          {
            goto LABEL_16;
          }

          v5 = *(v3 + 40);
          v6 = ParseBlock;
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_18;
          }

          if ((*(v3 + 32) & 8) == 0)
          {
LABEL_16:
            result = 0;
            goto LABEL_18;
          }

          v5 = *(v3 + 40);
          v6 = ParsePre;
        }

        if (v5 != v6)
        {
          goto LABEL_16;
        }
      }

      else if (a2 == 1)
      {
        if ((*(v3 + 32) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_18;
        }

        if ((*(v3 + 32) & 0x10) == 0)
        {
          goto LABEL_16;
        }
      }

      result = *(v3 + 8);
LABEL_18:
      v3 = *(v3 + 56);
      if (result || !v3)
      {
        goto LABEL_22;
      }
    }
  }

  result = 0;
LABEL_22:
  *a3 = v3;
  return result;
}

void InitTags(uint64_t a1)
{
  v1 = (a1 + 1568);
  ClearMemory((a1 + 1568), 0x5A0uLL);
  if (linkedOnOrAfter2024EReleases())
  {
    v2 = malloc_type_malloc(0x40uLL, 0x10F0040910EABC7uLL);
    if (!v2)
    {
      FatalError("Out of memory!");
    }
  }

  else
  {
    v2 = _MemAlloc(0x40uLL);
  }

  ClearMemory(v2, 0x40uLL);
  *(v2 + 1) = 0;
  *(v2 + 4) = 0x10000;
  *(v2 + 8) = 8;
  *(v2 + 3) = 0;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *v1 = v2;
}

void FreeDeclaredTags(uint64_t a1, int a2)
{
  v2 = *(a1 + 1576);
  if (v2)
  {
    v4 = 0;
    v5 = (a1 + 1576);
    v6 = a1 + 1584;
    do
    {
      while (1)
      {
        v7 = v2;
        v2 = *(v2 + 56);
        if (a2 <= 3)
        {
          break;
        }

        if (a2 == 4)
        {
          if ((*(v7 + 32) & 8) == 0)
          {
            goto LABEL_21;
          }

          v8 = *(v7 + 40);
          v9 = ParseBlock;
          goto LABEL_16;
        }

        if (a2 != 8)
        {
          goto LABEL_17;
        }

        if ((*(v7 + 32) & 8) != 0)
        {
          v8 = *(v7 + 40);
          v9 = ParsePre;
LABEL_16:
          if (v8 == v9)
          {
            goto LABEL_17;
          }
        }

LABEL_21:
        v4 = v7;
        if (!v2)
        {
          return;
        }
      }

      if (a2 == 1)
      {
        if (*(v7 + 32))
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      if (a2 == 2 && ((*(v7 + 32) >> 4) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_17:
      v10 = *(v7 + 8);
      v11 = *v10;
      if (*v10)
      {
        v12 = 0;
        v13 = v10 + 1;
        do
        {
          v12 = 31 * v12 + v11;
          v14 = *v13++;
          v11 = v14;
        }

        while (v14);
        v15 = v12 % 0xB2;
      }

      else
      {
        v15 = 0;
      }

      v16 = (v6 + 8 * v15);
      v17 = *v16;
      if (*v16)
      {
        v18 = 0;
        do
        {
          v19 = v17;
          v20 = *v17;
          if (!v20)
          {
            break;
          }

          v21 = tmbstrcmp(v10, *(v20 + 8));
          v17 = v19[1];
          if (!v21)
          {
            v22 = v18 + 1;
            if (!v18)
            {
              v22 = v16;
            }

            *v22 = v17;
            if (linkedOnOrAfter2024EReleases())
            {
              free(v19);
            }

            else
            {
              _MemFree(v19);
            }

            break;
          }

          v18 = v19;
        }

        while (v17);
      }

      v23 = linkedOnOrAfter2024EReleases();
      v24 = *(v7 + 8);
      if (v23)
      {
        free(v24);
        *(v7 + 8) = 0;
      }

      else
      {
        _MemFree(v24);
      }

      if (linkedOnOrAfter2024EReleases())
      {
        free(v7);
      }

      else
      {
        _MemFree(v7);
      }

      v25 = (v4 + 56);
      if (!v4)
      {
        v25 = v5;
      }

      *v25 = v2;
    }

    while (v2);
  }
}

void FreeTags(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 1584;
  do
  {
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      do
      {
        v5 = v4[1];
        if (linkedOnOrAfter2024EReleases())
        {
          free(v4);
        }

        else
        {
          _MemFree(v4);
        }

        v4 = v5;
      }

      while (v5);
    }

    *(v3 + 8 * v2++) = 0;
  }

  while (v2 != 178);
  FreeDeclaredTags(a1, 0);
  v6 = linkedOnOrAfter2024EReleases();
  v7 = *(a1 + 1568);
  if (v6)
  {
    free(v7);
    *(a1 + 1568) = 0;
  }

  else
  {
    _MemFree(v7);
  }

  ClearMemory((a1 + 1568), 0x5A0uLL);
}

uint64_t CheckAttributes(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *v2;
      result = CheckAttribute(v4, a2, v2);
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

BOOL nodeIsText(_BOOL8 result)
{
  if (result)
  {
    return *(result + 80) == 4;
  }

  return result;
}

uint64_t nodeHasText(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a2 + 72);
    if (v5 >= *(a2 + 76))
    {
      return 0;
    }

    else
    {
      v6 = *(a1 + 104);
      while (IsWhite(*(*(v6 + 104) + v5)))
      {
        if (++v5 >= *(a2 + 76))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL nodeIsElement(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 80);
    return v1 == 5 || v1 == 7;
  }

  return result;
}

BOOL nodeHasCM(_BOOL8 result, int a2)
{
  if (result)
  {
    v2 = *(result + 56);
    return v2 && (*(v2 + 32) & a2) != 0;
  }

  return result;
}

uint64_t nodeCMIsInline(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1)
    {
      return (*(v1 + 32) >> 4) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nodeCMIsEmpty(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1)
    {
      return *(v1 + 32) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL nodeIsHeader(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 56);
    return v1 && (*v1 - 40) < 6;
  }

  return result;
}

uint64_t nodeHeaderLevel(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1)
    {
      v2 = *v1;
      v3 = v2 - 40;
      v4 = v2 - 39;
      if (v3 >= 6)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t install(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (linkedOnOrAfter2024EReleases())
    {
      v4 = malloc_type_malloc(0x10uLL, 0x600405C6656D0uLL);
      if (!v4)
      {
        FatalError("Out of memory!");
        v4 = 0;
      }
    }

    else
    {
      v4 = _MemAlloc(0x10uLL);
    }

    *v4 = a2;
    v5 = *(a2 + 8);
    v6 = *v5;
    if (*v5)
    {
      v7 = 0;
      v8 = v5 + 1;
      do
      {
        v7 = 31 * v7 + v6;
        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
      v10 = v7 % 0xB2;
    }

    else
    {
      v10 = 0;
    }

    v11 = a1 + 8 * v10;
    v4[1] = *(v11 + 16);
    *(v11 + 16) = v4;
  }

  return a2;
}

uint64_t CheckAREA(uint64_t a1, uint64_t a2)
{
  v4 = AttrGetById(a2, 9);
  v5 = AttrGetById(a2, 58);
  result = AttrGetById(a2, 80);
  v7 = result;
  v8 = *(a2 + 40);
  if (v8)
  {
    do
    {
      v9 = *v8;
      result = CheckAttribute(a1, a2, v8);
      v8 = v9;
    }

    while (v9);
  }

  if (!v4 && !*(a1 + 744))
  {
    *(a1 + 4900) |= 2u;
    result = ReportMissingAttr(a1, a2);
  }

  if (!(v5 | v7))
  {

    return ReportMissingAttr(a1, a2);
  }

  return result;
}

char *CheckCaption(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    do
    {
      v5 = *v4;
      CheckAttribute(a1, a2, v4);
      v4 = v5;
    }

    while (v5);
  }

  result = AttrGetById(a2, 7);
  if (result)
  {
    v7 = result;
    result = *(result + 6);
    if (result)
    {
      if (!tmbstrcasecmp(result, "left"))
      {
        goto LABEL_16;
      }

      v8 = *(v7 + 48);
      if (!v8)
      {
        goto LABEL_12;
      }

      if (tmbstrcasecmp(v8, "right"))
      {
        v9 = *(v7 + 48);
        if (!v9 || tmbstrcasecmp(v9, "top") && ((v10 = *(v7 + 48)) == 0 || tmbstrcasecmp(v10, "bottom")))
        {
LABEL_12:

          return ReportAttrError(a1, a2, v7, 51);
        }

        v11 = a1;
        v12 = -4;
      }

      else
      {
LABEL_16:
        v11 = a1;
        v12 = 584;
      }

      return ConstrainVersion(v11, v12);
    }
  }

  return result;
}

uint64_t CheckFORM(uint64_t a1, uint64_t a2)
{
  result = AttrGetById(a2, 5);
  v5 = result;
  v6 = *(a2 + 40);
  if (v6)
  {
    do
    {
      v7 = *v6;
      result = CheckAttribute(a1, a2, v6);
      v6 = v7;
    }

    while (v7);
  }

  if (!v5)
  {

    return ReportMissingAttr(a1, a2);
  }

  return result;
}

uint64_t CheckHTML(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *v2;
      result = CheckAttribute(v4, a2, v2);
      v2 = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t CheckIMG(uint64_t a1, uint64_t a2)
{
  v4 = AttrGetById(a2, 9);
  v5 = AttrGetById(a2, 132);
  v6 = AttrGetById(a2, 143);
  v7 = AttrGetById(a2, 63);
  result = AttrGetById(a2, 38);
  v9 = result;
  v10 = *(a2 + 40);
  if (v10)
  {
    do
    {
      v11 = *v10;
      result = CheckAttribute(a1, a2, v10);
      v10 = v11;
    }

    while (v11);
  }

  if (!v4)
  {
    if (!*(a1 + 744))
    {
      *(a1 + 4900) |= 1u;
      result = ReportMissingAttr(a1, a2);
    }

    v12 = *(a1 + 200);
    if (v12)
    {
      result = AddAttribute(a1, a2, "alt", v12);
    }
  }

  if (!(v5 | v9))
  {
    result = ReportMissingAttr(a1, a2);
  }

  if (!*(a1 + 744) && v7 && !v6)
  {

    return ReportAttrError(a1, a2, 0, 56);
  }

  return result;
}

char *CheckLINK(uint64_t a1, uint64_t a2)
{
  result = AttrGetById(a2, 116);
  v5 = result;
  v6 = *(a2 + 40);
  if (v6)
  {
    do
    {
      v7 = *v6;
      result = CheckAttribute(a1, a2, v6);
      v6 = v7;
    }

    while (v7);
  }

  if (v5)
  {
    result = *(v5 + 6);
    if (result)
    {
      result = tmbstrcasecmp(result, "stylesheet");
      if (!result)
      {
        result = AttrGetById(a2, 142);
        if (!result)
        {
          AddAttribute(a1, a2, "type", "text/css");
          v8 = AttrGetById(a2, 142);

          return ReportAttrError(a1, a2, v8, 49);
        }
      }
    }
  }

  return result;
}

uint64_t CheckMETA(uint64_t a1, uint64_t a2)
{
  result = AttrGetById(a2, 35);
  v5 = result;
  v6 = *(a2 + 40);
  if (v6)
  {
    do
    {
      v7 = *v6;
      result = CheckAttribute(a1, a2, v6);
      v6 = v7;
    }

    while (v7);
  }

  if (!v5)
  {

    return ReportMissingAttr(a1, a2);
  }

  return result;
}

uint64_t CheckSCRIPT(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 40);
  if (v4)
  {
    do
    {
      v5 = *v4;
      CheckAttribute(a1, a2, v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = AttrGetById(a2, 66);
  result = AttrGetById(a2, 142);
  if (!result)
  {
    if (v6 && (v11[0] = 0, tmbstrncpy(v11, v6[6], 16), v11[10] = 0, tmbstrncasecmp(v11, "javascript", 10)) && tmbstrncasecmp(v11, "jscript", 7))
    {
      if (tmbstrcasecmp(v11, "vbscript"))
      {
        goto LABEL_11;
      }

      v8 = "text/vbscript";
    }

    else
    {
      v8 = "text/javascript";
    }

    AddAttribute(a1, a2, "type", v8);
LABEL_11:
    v9 = AttrGetById(a2, 142);
    if (v9)
    {
      result = ReportAttrError(a1, a2, v9, 49);
    }

    else
    {
      result = ReportMissingAttr(a1, a2);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *CheckSTYLE(uint64_t a1, uint64_t a2)
{
  v4 = AttrGetById(a2, 142);
  v5 = *(a2 + 40);
  if (v5)
  {
    do
    {
      v6 = *v5;
      CheckAttribute(a1, a2, v5);
      v5 = v6;
    }

    while (v6);
  }

  if (!v4 || (v7 = v4[6]) == 0 || (result = tmbstrlen(v7)) == 0)
  {
    v9 = RepairAttrValue(a1, a2, "type", "text/css");

    return ReportAttrError(a1, a2, v9, 49);
  }

  return result;
}

uint64_t CheckTABLE(uint64_t a1, uint64_t a2)
{
  result = AttrGetById(a2, 136);
  v5 = result;
  v6 = *(a2 + 40);
  if (v6)
  {
    do
    {
      v7 = *v6;
      result = CheckAttribute(a1, a2, v6);
      v6 = v7;
    }

    while (v7);
  }

  if (*(a1 + 744))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (v8)
  {
    *(a1 + 4900) |= 4u;
    result = ReportMissingAttr(a1, a2);
  }

  if (*(a1 + 288))
  {
    result = AttrGetById(a2, 15);
    if (result)
    {
      v9 = result;
      if (!*(result + 48))
      {
        result = tmbstrdup("1");
        *(v9 + 48) = result;
      }
    }
  }

  return result;
}

void *tidyDocCreate()
{
  if (linkedOnOrAfter2024EReleases())
  {
    v0 = malloc_type_malloc(0x1360uLL, 0x10F20408505B885uLL);
    if (!v0)
    {
      FatalError("Out of memory!");
    }
  }

  else
  {
    v0 = _MemAlloc(0x1360uLL);
  }

  ClearMemory(v0, 0x1360uLL);
  InitMap();
  InitTags(v0);
  InitAttrs(v0);
  InitConfig(v0);
  InitPrintBuf(v0);
  v0[606] = StdErrOutput();
  return v0;
}

void tidyDocRelease(uint64_t a1)
{
  if (a1)
  {
    ReleaseStreamOut(*(a1 + 4848));
    *(a1 + 4848) = 0;
    FreePrintBuf(a1);
    FreeLexer(a1);
    FreeNode(a1, a1);
    ClearMemory(a1, 0x68uLL);
    if (*(a1 + 4952))
    {
      v2 = linkedOnOrAfter2024EReleases();
      v3 = *(a1 + 4952);
      if (v2)
      {
        free(v3);
        *(a1 + 4952) = 0;
      }

      else
      {
        _MemFree(v3);
      }
    }

    FreeConfig(a1);
    FreeAttrTable(a1);
    FreeTags(a1);
    if (linkedOnOrAfter2024EReleases())
    {

      free(a1);
    }

    else
    {

      _MemFree(a1);
    }
  }
}

void tidySetAppData(TidyDoc tdoc, void *appData)
{
  if (tdoc)
  {
    *&tdoc[1230]._opaque = appData;
  }
}

void *__cdecl tidyGetAppData(void *tdoc)
{
  if (tdoc)
  {
    return *(tdoc + 615);
  }

  return tdoc;
}

Bool tidySetOptionCallback(TidyDoc tdoc, TidyOptCallback pOptCallback)
{
  if (tdoc)
  {
    *&tdoc[1216]._opaque = pOptCallback;
    LODWORD(tdoc) = 1;
  }

  return tdoc;
}

int tidyLoadConfig(TidyDoc tdoc, ctmbstr configFile)
{
  if (tdoc)
  {
    return ParseConfigFile();
  }

  else
  {
    return -22;
  }
}

int tidyLoadConfigEnc(TidyDoc tdoc, ctmbstr configFile, ctmbstr charenc)
{
  if (tdoc)
  {
    return ParseConfigFileEnc();
  }

  else
  {
    return -22;
  }
}

int tidySetCharEncoding(TidyDoc tdoc, ctmbstr encnam)
{
  if (!tdoc)
  {
    return -22;
  }

  v3 = CharEncodingId(encnam);
  if ((v3 & 0x80000000) == 0 && AdjustCharEncoding(tdoc, v3))
  {
    return 0;
  }

  ReportBadArgument(tdoc, "char-encoding", v4, v5, v6, v7, v8, v9);
  return -22;
}

int tidySetInCharEncoding(TidyDoc tdoc, ctmbstr encnam)
{
  if (!tdoc)
  {
    return -22;
  }

  v3 = CharEncodingId(encnam);
  if ((v3 & 0x80000000) == 0 && SetOptionInt(tdoc, 5u, v3))
  {
    return 0;
  }

  ReportBadArgument(tdoc, "in-char-encoding", v4, v5, v6, v7, v8, v9);
  return -22;
}

int tidySetOutCharEncoding(TidyDoc tdoc, ctmbstr encnam)
{
  if (!tdoc)
  {
    return -22;
  }

  v3 = CharEncodingId(encnam);
  if ((v3 & 0x80000000) == 0 && SetOptionInt(tdoc, 6u, v3))
  {
    return 0;
  }

  ReportBadArgument(tdoc, "out-char-encoding", v4, v5, v6, v7, v8, v9);
  return -22;
}

TidyOptionId tidyOptGetIdForName(ctmbstr optnam)
{
  v1 = lookupOption(optnam);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 89;
  }
}

TidyIterator tidyGetOptionList(TidyDoc tdoc)
{
  if (tdoc)
  {
    return getOptionList();
  }

  else
  {
    return -1;
  }
}

TidyOption tidyGetNextOption(TidyDoc tdoc, TidyIterator *pos)
{
  if (tdoc)
  {
    return getNextOption(tdoc, pos);
  }

  if (pos)
  {
    *pos = 0;
  }

  return 0;
}

TidyOptionId tidyOptGetId(TidyOption opt)
{
  if (opt)
  {
    return opt->_opaque;
  }

  else
  {
    return 89;
  }
}

ctmbstr tidyOptGetName(ctmbstr opt)
{
  if (opt)
  {
    return *(opt + 1);
  }

  return opt;
}

TidyOptionType tidyOptGetType(TidyOption opt)
{
  if (opt)
  {
    return opt[4]._opaque;
  }

  else
  {
    return -1;
  }
}

TidyConfigCategory tidyOptGetCategory(TidyOption opt)
{
  if (opt)
  {
    return opt[1]._opaque;
  }

  else
  {
    return -1;
  }
}

ctmbstr tidyOptGetDefault(ctmbstr opt)
{
  if (opt)
  {
    if (*(opt + 4))
    {
      return 0;
    }

    else
    {
      return *(opt + 6);
    }
  }

  return opt;
}

ulong tidyOptGetDefaultInt(TidyOption opt)
{
  if (opt && opt[4]._opaque)
  {
    return *&opt[6]._opaque;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

Bool tidyOptGetDefaultBool(TidyOption opt)
{
  if (opt)
  {
    if (opt[4]._opaque)
    {
      LODWORD(opt) = *&opt[6]._opaque != 0;
    }

    else
    {
      LODWORD(opt) = 0;
    }
  }

  return opt;
}

TidyIterator tidyOptGetPickList(TidyOption opt)
{
  if (opt)
  {
    return getOptionPickList(opt);
  }

  else
  {
    return -1;
  }
}

ctmbstr tidyOptGetNextPick(ctmbstr opt, TidyIterator *pos)
{
  if (opt)
  {
    return getNextOptionPick(opt, pos);
  }

  return opt;
}

ctmbstr tidyOptGetValue(ctmbstr tdoc, TidyOptionId optId)
{
  if (tdoc)
  {
    return *&tdoc[8 * optId + 112];
  }

  return tdoc;
}

Bool tidyOptSetValue(TidyDoc tdoc, TidyOptionId optId, ctmbstr val)
{
  if (tdoc)
  {
    LODWORD(tdoc) = ParseConfigValue(tdoc, optId, val, v3, v4, v5, v6, v7);
  }

  return tdoc;
}

Bool tidyOptParseValue(TidyDoc tdoc, ctmbstr optnam, ctmbstr val)
{
  if (tdoc)
  {
    LODWORD(tdoc) = ParseConfigOption(tdoc, optnam, val);
  }

  return tdoc;
}

ulong tidyOptGetInt(ulong tdoc, TidyOptionId optId)
{
  if (tdoc)
  {
    return *(tdoc + 8 * optId + 112);
  }

  return tdoc;
}

Bool tidyOptSetInt(TidyDoc tdoc, TidyOptionId optId, ulong val)
{
  if (tdoc)
  {
    LODWORD(tdoc) = SetOptionInt(tdoc, optId, val);
  }

  return tdoc;
}

Bool tidyOptGetBool(TidyDoc tdoc, TidyOptionId optId)
{
  if (tdoc)
  {
    v3 = tdoc;
    tdoc = getOption(optId);
    if (tdoc)
    {
      LODWORD(tdoc) = v3[2 * optId + 28];
    }
  }

  return tdoc;
}

Bool tidyOptSetBool(TidyDoc tdoc, TidyOptionId optId, Bool val)
{
  if (tdoc)
  {
    LODWORD(tdoc) = SetOptionBool(tdoc, optId, val);
  }

  return tdoc;
}

ctmbstr tidyOptGetEncName(TidyDoc tdoc, TidyOptionId optId)
{
  if (tdoc)
  {
    LODWORD(tdoc) = tdoc[2 * optId + 28];
  }

  return CharEncodingOptName(tdoc);
}

ctmbstr tidyOptGetCurrPick(TidyDoc tdoc, TidyOptionId optId)
{
  Option = getOption(optId);
  if (!Option)
  {
    return 0;
  }

  v5 = *(Option + 5);
  if (!v5)
  {
    return 0;
  }

  if (!tdoc)
  {
    result = *v5;
    if (*v5)
    {
      return result;
    }

    return 0;
  }

  opaque = tdoc[2 * optId + 28]._opaque;
  result = *v5;
  v8 = *v5 != 0;
  if (*v5)
  {
    v9 = opaque == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = 1;
    do
    {
      result = v5[v10];
      v8 = result != 0;
      if (result)
      {
        v11 = v10 >= opaque;
      }

      else
      {
        v11 = 1;
      }

      ++v10;
    }

    while (!v11);
  }

  if (!v8)
  {
    return 0;
  }

  return result;
}

TidyIterator tidyOptGetDeclTagList(TidyIterator tdoc)
{
  if (tdoc)
  {
    return GetDeclaredTagList(tdoc);
  }

  return tdoc;
}

ctmbstr tidyOptGetNextDeclTag(TidyDoc tdoc, TidyOptionId optId, TidyIterator *iter)
{
  if (tdoc && optId - 75 <= 3)
  {
    return GetNextDeclaredTag(tdoc, dword_2999659F0[optId - 75], iter);
  }

  else
  {
    return 0;
  }
}

ctmbstr tidyOptGetDoc(TidyDoc tdoc, TidyOption opt)
{
  if (opt)
  {
    opaque = opt->_opaque;
  }

  else
  {
    opaque = 89;
  }

  result = OptGetDocDesc(opaque);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

TidyIterator tidyOptGetDocLinksList(TidyDoc tdoc, TidyOption opt)
{
  if (opt)
  {
    opaque = opt->_opaque;
  }

  else
  {
    opaque = 89;
  }

  DocDesc = OptGetDocDesc(opaque);
  if (!DocDesc)
  {
    return 0;
  }

  result = *(DocDesc + 2);
  if (!result)
  {
    return 0;
  }

  return result;
}

TidyOption tidyOptGetNextDocLinks(TidyDoc tdoc, TidyIterator *pos)
{
  v3 = *pos;
  opaque = (*pos)->_opaque;
  if (opaque)
  {
    result = getOption(opaque);
    v7 = v3[1]._opaque;
    v6 = v3 + 1;
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    result = 0;
  }

  *pos = v8;
  return result;
}

int tidyOptSaveFile(TidyDoc tdoc, ctmbstr cfgfil)
{
  if (tdoc)
  {
    return SaveConfigFile(tdoc, cfgfil);
  }

  else
  {
    return -22;
  }
}

int tidyOptSaveSink(TidyDoc tdoc, TidyOutputSink *sink)
{
  if (tdoc)
  {
    return SaveConfigSink(tdoc, sink);
  }

  else
  {
    return -22;
  }
}

Bool tidyOptSnapshot(TidyDoc tdoc)
{
  if (tdoc)
  {
    TakeConfigSnapshot(tdoc);
    LODWORD(tdoc) = 1;
  }

  return tdoc;
}

Bool tidyOptResetToSnapshot(TidyDoc tdoc)
{
  if (tdoc)
  {
    ResetConfigToSnapshot(tdoc);
    LODWORD(tdoc) = 1;
  }

  return tdoc;
}

Bool tidyOptResetAllToDefault(TidyDoc tdoc)
{
  if (tdoc)
  {
    ResetConfigToDefault(tdoc);
    LODWORD(tdoc) = 1;
  }

  return tdoc;
}

Bool tidyOptResetToDefault(TidyDoc tdoc, TidyOptionId opt)
{
  if (tdoc)
  {
    LODWORD(tdoc) = ResetOptionToDefault(tdoc, opt);
  }

  return tdoc;
}

Bool tidyOptDiffThanDefault(TidyDoc tdoc)
{
  if (tdoc)
  {
    LODWORD(tdoc) = ConfigDiffThanDefault(tdoc);
  }

  return tdoc;
}

Bool tidyOptDiffThanSnapshot(TidyDoc tdoc)
{
  if (tdoc)
  {
    LODWORD(tdoc) = ConfigDiffThanSnapshot(tdoc);
  }

  return tdoc;
}

Bool tidyOptCopyConfig(TidyDoc tdocTo, TidyDoc tdocFrom)
{
  result = no;
  if (tdocTo)
  {
    if (tdocFrom)
    {
      CopyConfig(tdocTo, tdocFrom);
      return 1;
    }
  }

  return result;
}

Bool tidySetReportFilter(TidyDoc tdoc, TidyReportFilter filtCallback)
{
  if (tdoc)
  {
    *&tdoc[1214]._opaque = filtCallback;
    LODWORD(tdoc) = 1;
  }

  return tdoc;
}

FILE *__cdecl tidySetErrorFile(TidyDoc tdoc, ctmbstr errfilnam)
{
  if (!tdoc)
  {
    return 0;
  }

  v2 = errfilnam;
  v9 = fopen(errfilnam, "wb");
  if (v9)
  {
    opaque = tdoc[40]._opaque;
    v11 = tdoc[42]._opaque;
    ReleaseStreamOut(*&tdoc[1212]._opaque);
    *&tdoc[1212]._opaque = FileOutput(v9, opaque, v11);
  }

  else
  {
    FileError(tdoc, v2, 4, v4, v5, v6, v7, v8);
  }

  return v9;
}

int tidySetErrorBuffer(TidyDoc tdoc, TidyBuffer *errbuf)
{
  if (!tdoc)
  {
    return -22;
  }

  opaque = tdoc[40]._opaque;
  v5 = tdoc[42]._opaque;
  ReleaseStreamOut(*&tdoc[1212]._opaque);
  v6 = BufferOutput(errbuf, opaque, v5);
  *&tdoc[1212]._opaque = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return -12;
  }
}

int tidySetErrorSink(TidyDoc tdoc, TidyOutputSink *sink)
{
  if (!tdoc)
  {
    return -22;
  }

  opaque = tdoc[40]._opaque;
  v5 = tdoc[42]._opaque;
  ReleaseStreamOut(*&tdoc[1212]._opaque);
  UserOutput(sink, opaque, v5);
  *&tdoc[1212]._opaque = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return -12;
  }
}

int tidyStatus(TidyDoc tdoc)
{
  if (!tdoc)
  {
    return -22;
  }

  if (tdoc[1219]._opaque)
  {
    return 2;
  }

  if (tdoc[1220]._opaque)
  {
    return 1;
  }

  return tdoc[1221]._opaque != 0;
}

uint tidyErrorCount(TidyDoc tdoc)
{
  if (tdoc)
  {
    return tdoc[1219]._opaque;
  }

  else
  {
    return -1;
  }
}

uint tidyWarningCount(TidyDoc tdoc)
{
  if (tdoc)
  {
    return tdoc[1220]._opaque;
  }

  else
  {
    return -1;
  }
}

uint tidyAccessWarningCount(TidyDoc tdoc)
{
  if (tdoc)
  {
    return tdoc[1221]._opaque;
  }

  else
  {
    return -1;
  }
}

uint tidyConfigErrorCount(TidyDoc tdoc)
{
  if (tdoc)
  {
    return tdoc[1218]._opaque;
  }

  else
  {
    return -1;
  }
}

void tidyErrorSummary(TidyDoc tdoc)
{
  if (tdoc)
  {
    ErrorSummary(tdoc, v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void tidyGeneralInfo(TidyDoc tdoc)
{
  if (tdoc)
  {
    GeneralInfo(tdoc, v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

uint64_t tidyDocParseFile(unint64_t a1, char *__filename)
{
  v2 = __filename;
  v4 = fopen(__filename, "rb");
  memset(&v16, 0, sizeof(v16));
  ClearMemory((a1 + 4936), 0x10uLL);
  if (!v4)
  {
    FileError(a1, v2, 4, v5, v6, v7, v8, v9);
    return 4294967294;
  }

  if (*(a1 + 536))
  {
    v10 = fileno(v4);
    if (fstat(v10, &v16) != -1)
    {
      tv_sec = v16.st_mtimespec.tv_sec;
      *(a1 + 4936) = v16.st_atimespec.tv_sec;
      *(a1 + 4944) = tv_sec;
    }
  }

  v12 = FileInput(a1, v4, *(a1 + 152));
  if (!v12)
  {
    fclose(v4);
    return 4294967294;
  }

  v13 = v12;
  v14 = tidyDocParseStream(a1, v12);
  freeFileSource(v13 + 6, 1);
  freeStreamIn(v13);
  return v14;
}

uint64_t tidyDocParseStdin(unint64_t a1)
{
  v2 = FileInput(a1, *MEMORY[0x29EDCA618], *(a1 + 152));
  v3 = tidyDocParseStream(a1, v2);
  freeStreamIn(v2);
  return v3;
}

uint64_t tidyDocParseString(unint64_t a1, byte *a2)
{
  memset(&buf, 0, sizeof(buf));
  if (!a2)
  {
    return 4294967274;
  }

  v4 = tmbstrlen(a2);
  tidyBufAttach(&buf, a2, v4 + 1);
  v5 = BufferInput(a1, &buf, *(a1 + 152));
  v6 = tidyDocParseStream(a1, v5);
  tidyBufDetach(&buf);
  freeStreamIn(v5);
  return v6;
}

uint64_t tidyDocParseBuffer(unint64_t a1, TidyBuffer *a2)
{
  if (!a2)
  {
    return 4294967274;
  }

  v3 = BufferInput(a1, a2, *(a1 + 152));
  v4 = tidyDocParseStream(a1, v3);
  freeStreamIn(v3);
  return v4;
}

uint64_t tidyDocParseSource(unint64_t a1, uint64_t a2)
{
  UserInput(a1, a2, *(a1 + 152));
  v4 = v3;
  v5 = tidyDocParseStream(a1, v3);
  freeStreamIn(v4);
  return v5;
}

uint64_t tidyDocParseStream(unint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  *(a1 + 4832) = a2;
  TakeConfigSnapshot(a1);
  FreeLexer(a1);
  FreeAnchors(a1);
  FreeNode(a1, a1);
  ClearMemory(a1, 0x68uLL);
  if (*(a1 + 4952))
  {
    v5 = linkedOnOrAfter2024EReleases();
    v6 = *(a1 + 4952);
    if (v5)
    {
      free(v6);
    }

    else
    {
      _MemFree(v6);
    }
  }

  *(a1 + 4952) = 0;
  v7 = NewLexer(a1);
  *(a1 + 104) = v7;
  *(a1 + 84) = *v7;
  *(a1 + 4932) = 0;
  BOMEncoding = ReadBOMEncoding(a2);
  if (BOMEncoding != -1)
  {
    *(a2 + 40) = BOMEncoding;
    SetOptionInt(a1, 5u, BOMEncoding);
  }

  if (v4)
  {
    ParseXMLDocument(a1);
  }

  else
  {
    *(a1 + 4880) = 0;
    ParseDocument(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  if (!CheckNodeIntegrity(a1))
  {
    FatalError("\nPanic - tree has lost its integrity\n");
  }

  *(a1 + 4832) = 0;
  if (*(a1 + 4876))
  {
    return 2;
  }

  if (*(a1 + 4880))
  {
    return 1;
  }

  return *(a1 + 4884) != 0;
}

uint64_t tidyDocSaveFile(unint64_t a1, char *__filename)
{
  if (*(a1 + 4876) && *(a1 + 232) && !*(a1 + 624))
  {
    return 2;
  }

  v4 = fopen(__filename, "wb");
  if (v4)
  {
    v10 = v4;
    v11 = FileOutput(v4, *(a1 + 160), *(a1 + 168));
    v12 = tidyDocSaveStream(a1, v11);
    fclose(v10);
    if (linkedOnOrAfter2024EReleases())
    {
      free(v11);
    }

    else
    {
      _MemFree(v11);
    }

    if (*(a1 + 4936))
    {
      utime(__filename, (a1 + 4936));
      ClearMemory((a1 + 4936), 0x10uLL);
    }
  }

  else
  {
    FileError(a1, __filename, 4, v5, v6, v7, v8, v9);
    return 4294967294;
  }

  return v12;
}

uint64_t tidyDocSaveStdout(unint64_t a1)
{
  v2 = MEMORY[0x29EDCA620];
  v3 = FileOutput(*MEMORY[0x29EDCA620], *(a1 + 160), *(a1 + 168));
  v4 = tidyDocSaveStream(a1, v3);
  fflush(*v2);
  fflush(*MEMORY[0x29EDCA610]);
  if (linkedOnOrAfter2024EReleases())
  {
    free(v3);
  }

  else
  {
    _MemFree(v3);
  }

  return v4;
}

uint64_t tidyDocSaveString(unint64_t a1, void *a2, uint *a3)
{
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  memset(&__src, 0, sizeof(__src));
  v8 = BufferOutput(&__src, v6, v7);
  v9 = tidyDocSaveStream(a1, v8);
  size = __src.size;
  if (__src.size <= *a3)
  {
    v11 = v9;
    memcpy(a2, __src.bp, __src.size);
  }

  else
  {
    v11 = 4294967284;
  }

  *a3 = size;
  tidyBufFree(&__src);
  if (linkedOnOrAfter2024EReleases())
  {
    free(v8);
  }

  else
  {
    _MemFree(v8);
  }

  return v11;
}

uint64_t tidyDocSaveBuffer(unint64_t a1, TidyBuffer *a2)
{
  if (!a2)
  {
    return 4294967274;
  }

  v3 = BufferOutput(a2, *(a1 + 160), *(a1 + 168));
  v4 = tidyDocSaveStream(a1, v3);
  if (linkedOnOrAfter2024EReleases())
  {
    free(v3);
  }

  else
  {
    _MemFree(v3);
  }

  return v4;
}

uint64_t tidyDocSaveSink(unint64_t a1, __n128 *a2)
{
  UserOutput(a2, *(a1 + 160), *(a1 + 168));
  v4 = v3;
  v5 = tidyDocSaveStream(a1, v3);
  if (linkedOnOrAfter2024EReleases())
  {
    free(v4);
  }

  else
  {
    _MemFree(v4);
  }

  return v5;
}

uint64_t tidyDocSaveStream(unint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 240);
  v5 = *(a1 + 624);
  v6 = *(a1 + 688);
  v7 = *(a1 + 288);
  v16 = *(a1 + 296);
  v15 = *(a1 + 584);
  v8 = *(a1 + 608);
  v9 = *(a1 + 344);
  v10 = *(a1 + 640);
  v11 = *(a1 + 336);
  if (*(a1 + 664))
  {
    ConvertCDATANodes(a1, a1);
  }

  if (v8)
  {
    DropComments(a1, a1);
  }

  if (v9)
  {
    DropFontElements(a1, a1);
    WbrToSpace(a1, a1);
  }

  if (v10)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 && v11 == 0;
  if (v13 || (DowngradeTypography(a1, a1), !v11))
  {
    ReplacePreformattedSpaces(a1, a1);
    if (!v4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    NormalizeSpaces(*(a1 + 104), a1);
    if (!v4)
    {
      goto LABEL_31;
    }
  }

  if (!*(a1 + 4876) || v5)
  {
    if (v6 == 1 || *(a1 + 4932) && v6 == 2)
    {
      outBOM(a2);
    }

    *(a1 + 4840) = a2;
    if (!v7 || v16)
    {
      if (v15)
      {
        PrintBody(a1);
      }

      else
      {
        PPrintTree(a1, 0, 0, a1);
      }
    }

    else
    {
      PPrintXMLTree(a1, 0, 0, a1);
    }

    PFlushLine(a1, 0);
    *(a1 + 4840) = 0;
  }

LABEL_31:
  ResetConfigToSnapshot(a1);
  if (*(a1 + 4876))
  {
    return 2;
  }

  if (*(a1 + 4880))
  {
    return 1;
  }

  return *(a1 + 4884) != 0;
}

int tidyCleanAndRepair(TidyDoc tdoc)
{
  if (tdoc)
  {
    return tidyDocCleanAndRepair(tdoc);
  }

  else
  {
    return -22;
  }
}

uint64_t tidyDocCleanAndRepair(uint64_t a1)
{
  if (*(a1 + 280))
  {
    goto LABEL_35;
  }

  v2 = *(a1 + 544);
  v3 = *(a1 + 344);
  v4 = *(a1 + 368);
  v5 = *(a1 + 304);
  v6 = *(a1 + 288);
  v7 = *(a1 + 296);
  v8 = *(a1 + 312);
  v9 = *(a1 + 552);
  v10 = *(a1 + 352);
  NestedEmphasis(a1, a1);
  List2BQ(a1, a1);
  BQ2Div(a1, a1, v11, v12, v13, v14, v15, v16);
  if (v10)
  {
    EmFromI(a1, a1);
  }

  if (v2 && IsWord2000(a1))
  {
    DropSections(a1, a1);
    CleanWord2000(a1, a1);
    DropEmptyElements(a1, a1);
  }

  if (v3 | v4)
  {
    CleanDocument(a1);
  }

  v17 = *(a1 + 160);
  if (v17 && v17 != 5)
  {
    HEAD = FindHEAD(a1);
    VerifyHTTPEquiv(a1, HEAD);
  }

  if (!CheckNodeIntegrity(a1))
  {
    FatalError("\nPanic - tree has lost its integrity\n");
  }

  DocType = FindDocType(a1);
  if (DocType)
  {
    AttrByName = GetAttrByName(DocType, "PUBLIC");
    if (AttrByName)
    {
      v21 = AttrByName;
      if (AttrByName[6])
      {
        if (*(a1 + 4952))
        {
          v22 = linkedOnOrAfter2024EReleases();
          v23 = *(a1 + 4952);
          if (v22)
          {
            free(v23);
            *(a1 + 4952) = 0;
          }

          else
          {
            _MemFree(v23);
          }
        }

        *(a1 + 4952) = tmbstrdup(v21[6]);
      }
    }
  }

  if (*(a1 + 24))
  {
    if (v5)
    {
      if (*(*(a1 + 104) + 28))
      {
        v24 = FindDocType(a1);
        if (v24)
        {
          RemoveNode(v24);
        }
      }
    }

    else if (v7)
    {
      SetXHTMLDocType(a1);
      v25 = 1;
      goto LABEL_30;
    }

    FixDocType(a1);
    v25 = 0;
LABEL_30:
    FixAnchors(a1, a1, 1, 1);
    FixXhtmlNamespace(a1, v25);
    FixLanguageInformation(a1, a1, v25, 1);
    if (v9)
    {
      AddGenerator(a1);
    }
  }

  if (v6 && v8)
  {
    FixXmlDecl(a1);
  }

LABEL_35:
  if (*(a1 + 4876))
  {
    return 2;
  }

  if (*(a1 + 4880))
  {
    return 1;
  }

  return *(a1 + 4884) != 0;
}

int tidyRunDiagnostics(TidyDoc tdoc)
{
  if (tdoc)
  {
    return tidyDocRunDiagnostics(tdoc, v1, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return -22;
  }
}

uint64_t tidyDocRunDiagnostics(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[156];
  if (!a1[64])
  {
    ReportMarkupVersion(a1, a2, a3, a4, a5, a6, a7, a8, v20);
    ReportNumWarnings(a1, v10, v11, v12, v13, v14, v15, v16, v21);
  }

  v17 = a1[1219];
  if (v17)
  {
    v18 = v9 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    NeedsAuthorIntervention(a1, a2, a3, a4, a5, a6, a7, a8, v20);
    v17 = a1[1219];
  }

  if (v17)
  {
    return 2;
  }

  if (a1[1220])
  {
    return 1;
  }

  return a1[1221] != 0;
}

TidyNode tidyGetHtml(TidyNode tdoc)
{
  if (tdoc)
  {
    return FindHTML(tdoc);
  }

  return tdoc;
}

TidyNode tidyGetHead(TidyNode tdoc)
{
  if (tdoc)
  {
    return FindHEAD(tdoc);
  }

  return tdoc;
}

TidyNode tidyGetBody(TidyNode tdoc)
{
  if (tdoc)
  {
    return FindBody(tdoc);
  }

  return tdoc;
}

TidyNodeType tidyNodeGetType(TidyNode tnod)
{
  if (tnod)
  {
    LODWORD(tnod) = tnod[20];
  }

  return tnod;
}

uint tidyNodeLine(TidyNode tnod)
{
  if (tnod)
  {
    LODWORD(tnod) = tnod[21];
  }

  return tnod;
}

uint tidyNodeColumn(TidyNode tnod)
{
  if (tnod)
  {
    LODWORD(tnod) = tnod[22];
  }

  return tnod;
}

ctmbstr tidyNodeGetName(ctmbstr tnod)
{
  if (tnod)
  {
    return *(tnod + 8);
  }

  return tnod;
}

Bool tidyNodeHasText(TidyDoc tdoc, TidyNode tnod)
{
  if (tdoc)
  {
    LODWORD(tdoc) = nodeHasText(tdoc, tnod);
  }

  return tdoc;
}

Bool tidyNodeGetText(TidyDoc tdoc, TidyNode tnod, TidyBuffer *buf)
{
  result = no;
  if (tdoc && tnod && buf)
  {
    v6 = BufferOutput(buf, tdoc[40]._opaque, tdoc[42]._opaque);
    opaque = tdoc[72]._opaque;
    v8 = tdoc[74]._opaque;
    *&tdoc[1210]._opaque = v6;
    if (!opaque || v8)
    {
      PPrintTree(tdoc, 0, 0, tnod);
    }

    else
    {
      PPrintXMLTree(tdoc, 0, 0, tnod);
    }

    PFlushLine(tdoc, 0);
    *&tdoc[1210]._opaque = 0;
    if (linkedOnOrAfter2024EReleases())
    {
      free(v6);
    }

    else
    {
      _MemFree(v6);
    }

    return 1;
  }

  return result;
}

Bool tidyNodeIsProp(TidyDoc tdoc, TidyNode tnod)
{
  if (!tnod)
  {
    return 1;
  }

  opaque = tnod[20]._opaque;
  result = yes;
  if (opaque <= 0xD)
  {
    if (((1 << opaque) & 0x211F) != 0)
    {
      return 0;
    }

    else if (((1 << opaque) & 0xE0) != 0)
    {
      v4 = *&tnod[14]._opaque;
      if (v4)
      {
        return (*(v4 + 17) & 0xE0) != 0;
      }
    }
  }

  return result;
}

TidyTagId tidyNodeGetId(TidyNode tnod)
{
  if (tnod)
  {
    v1 = *&tnod[14]._opaque;
    if (v1)
    {
      LODWORD(tnod) = *v1;
    }

    else
    {
      LODWORD(tnod) = 0;
    }
  }

  return tnod;
}

TidyAttr tidyAttrFirst(TidyAttr tnod)
{
  if (tnod)
  {
    return *&tnod[10]._opaque;
  }

  return tnod;
}

TidyAttr tidyAttrNext(TidyAttr tattr)
{
  if (tattr)
  {
    return *&tattr->_opaque;
  }

  return tattr;
}

ctmbstr tidyAttrName(ctmbstr tattr)
{
  if (tattr)
  {
    return *(tattr + 5);
  }

  return tattr;
}

ctmbstr tidyAttrValue(ctmbstr tattr)
{
  if (tattr)
  {
    return *(tattr + 6);
  }

  return tattr;
}

TidyAttrId tidyAttrGetId(TidyAttr tattr)
{
  if (tattr)
  {
    v1 = *&tattr[2]._opaque;
    if (v1)
    {
      LODWORD(tattr) = *v1;
    }

    else
    {
      LODWORD(tattr) = 0;
    }
  }

  return tattr;
}

_BYTE *tmbstrdup(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      v2 = 1;
        ;
      }
    }

    else
    {
      v2 = 1;
    }

    if (linkedOnOrAfter2024EReleases())
    {
      result = malloc_type_malloc(v2, 0x24FF032EuLL);
      if (!result)
      {
        FatalError("Out of memory!");
        result = 0;
      }
    }

    else
    {
      result = _MemAlloc(v2);
    }

    v4 = 0;
    do
    {
      v5 = v1[v4];
      result[v4++] = v5;
    }

    while (v5);
  }

  return result;
}

_BYTE *tmbstrlen(_BYTE *result)
{
  if (result)
  {
    if (*result)
    {
      v1 = 0;
      v2 = result + 1;
      do
      {
        result = (v1 + 1);
      }

      while (v2[v1++]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *tmbstrndup(unsigned __int8 *a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (linkedOnOrAfter2024EReleases())
      {
        result = malloc_type_malloc(v4 + 1, 0xFCDB1117uLL);
        if (!result)
        {
          FatalError("Out of memory!");
          result = 0;
        }
      }

      else
      {
        result = _MemAlloc(v4 + 1);
      }

      v5 = result;
      do
      {
        if (!v4)
        {
          break;
        }

        --v4;
        v6 = *a1++;
        *v5++ = v6;
      }

      while (v6);
      *v5 = 0;
    }
  }

  return result;
}

uint64_t tmbstrncpy(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2 + 1;
      do
      {
        if (!--a3)
        {
          break;
        }

        *a1++ = v3;
        v5 = *v4++;
        v3 = v5;
      }

      while (v5);
    }

    *a1 = 0;
  }

  return a3;
}

uint64_t tmbstrcpy(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  *a1 = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 1;
  do
  {
    result = v3 + 1;
    v6 = a2[v3 + 1];
    v4[v3++] = v6;
  }

  while (v6);
  return result;
}

uint64_t tmbstrcat(unsigned __int8 *a1, unsigned __int8 *a2)
{
    ;
  }

  v3 = *a2;
  *(a1 - 1) = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = v4 + 1;
    v6 = a2[v4 + 1];
    a1[v4++] = v6;
  }

  while (v6);
  return v5;
}

uint64_t tmbstrcmp(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    v4 = a2 + 1;
    v5 = a1 + 1;
    while (v2)
    {
      v6 = *v5++;
      v2 = v6;
      v7 = *v4++;
      LOBYTE(v3) = v7;
      if (v2 != v7)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    if (v2 > v3)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t tmbstrcasecmp(char *a1, char *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = ToLower(*a1);
  if (v5 == ToLower(*a2))
  {
    while (v4)
    {
      v6 = *++v3;
      v4 = v6;
      v7 = ToLower(v6);
      v8 = *++a2;
      if (v7 != ToLower(v8))
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  else
  {
LABEL_4:
    if (*v3 > *a2)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t tmbstrncmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == v4)
  {
    v5 = a2 + 1;
    v6 = a1 + 1;
    while (1)
    {
      result = 0;
      if (!v3 || !a3)
      {
        break;
      }

      --a3;
      v8 = *v6++;
      v3 = v8;
      v9 = *v5++;
      LOBYTE(v4) = v9;
      if (v3 != v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (v3 > v4)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    if (a3)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t tmbstrncasecmp(char *a1, char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = *a1;
  v7 = ToLower(*a1);
  if (v7 == ToLower(*a2))
  {
    while (1)
    {
      result = 0;
      if (!v6 || !a3)
      {
        break;
      }

      v9 = *++v5;
      v6 = v9;
      v10 = ToLower(v9);
      v11 = *++a2;
      --a3;
      if (v10 != ToLower(v11))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (a3)
    {
      if (*v5 > *a2)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t tmbsubstrn(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (a3 && *a3)
  {
    v3 = 0;
      ;
    }

    v5 = a2 >= v3;
    a2 -= v3;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = 0;
  v9 = *a3;
  v7 = a3 + 1;
  v8 = v9;
  for (i = (a1 + 1); ; ++i)
  {
    v11 = a1 + v6;
    v12 = v3;
    if (*(a1 + v6) == v8)
    {
      break;
    }

LABEL_14:
    if (!v12)
    {
      return v11;
    }

    if (++v6 > a2)
    {
      return 0;
    }
  }

  v13 = i;
  v14 = v7;
  v15 = v8;
  v12 = v3;
  while (v15 && v12)
  {
    --v12;
    v16 = *v13++;
    v15 = v16;
    v17 = *v14++;
    if (v15 != v17)
    {
      goto LABEL_14;
    }
  }

  return v11;
}

_BYTE *tmbsubstr(_BYTE *a1, char *a2)
{
  if (a1 && *a1)
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
    }

    while (a1[++v4]);
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v7 = 0;
  do
  {
    v8 = v7 + 1;
  }

  while (a2[++v7]);
LABEL_13:
  v10 = v5 - v8;
  if (v5 < v8)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = &a1[v11];
    if (!tmbstrncasecmp(&a1[v11], a2, v8))
    {
      break;
    }

    if (++v11 > v10)
    {
      return 0;
    }
  }

  return v12;
}

_BYTE *tmbstrtolower(_BYTE *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    do
    {
      *(v3 - 1) = ToLower(v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return a1;
}

_BYTE *tmbstrtoupper(_BYTE *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    do
    {
      *(v3 - 1) = ToUpper(v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t tmbvsnprintf(char *a1, uint64_t a2, const char *a3, va_list a4)
{
  v5 = a2 - 1;
  result = vsnprintf(a1, a2 - 1, a3, a4);
  a1[v5] = 0;
  return result;
}

uint64_t tmbsnprintf(char *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a2 - 1;
  result = vsnprintf(a1, a2 - 1, a3, &a9);
  a1[v10] = 0;
  return result;
}

uint64_t DecodeUTF8BytesToChar(unsigned int *a1, unsigned int a2, _BYTE *a3, void *a4, _DWORD *a5)
{
  v36 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v35;
  }

  if (a2 != -1)
  {
    v9 = a2;
    if (a2 < 0x80)
    {
      v10 = 0;
      v11 = 1;
      v12 = a2;
LABEL_15:
      v14 = 1;
      goto LABEL_16;
    }

    if ((a2 & 0xE0) == 0xC0)
    {
      v12 = a2 & 0x1F;
      v11 = 2;
LABEL_14:
      v10 = 1;
      goto LABEL_15;
    }

    if ((a2 & 0xF0) == 0xE0)
    {
      v12 = a2 & 0xF;
      v11 = 3;
      goto LABEL_14;
    }

    if ((a2 & 0xF8) == 0xF0)
    {
      v12 = a2 & 7;
      v11 = 4;
      goto LABEL_14;
    }

    if ((a2 & 0xFC) == 0xF8)
    {
      v14 = 0;
      v12 = a2 & 3;
      v11 = 5;
    }

    else
    {
      if ((a2 & 0xFE) != 0xFC)
      {
        v10 = 0;
        v14 = 0;
        v11 = 1;
        v12 = a2;
LABEL_16:
        if (a3)
        {
          if (v10)
          {
            if (v11 <= 2)
            {
              v15 = 2;
            }

            else
            {
              v15 = v11;
            }

            v16 = (v15 - 1);
            v17 = 1;
            while (1)
            {
              v19 = *v6++;
              v18 = v19;
              if (!v19 || (v18 & 0xC0) != 0x80)
              {
                break;
              }

              v12 = v18 & 0x3F | (v12 << 6);
              ++v17;
              if (!--v16)
              {
                goto LABEL_37;
              }
            }

LABEL_44:
            *a5 = v17;
            goto LABEL_45;
          }
        }

        else if (a4)
        {
          if (v10)
          {
            v34 = a5;
            if (v11 <= 2)
            {
              v20 = 2;
            }

            else
            {
              v20 = v11;
            }

            v21 = (v20 - 1);
            v17 = 1;
            while (!(a4[3])(*a4))
            {
              v22 = (a4[1])(*a4);
              *v6 = v22;
              if ((v22 & 0xC0) != 0x80)
              {
                if (v22 != -1)
                {
                  (a4[2])(*a4, v22);
                }

                a5 = v34;
                goto LABEL_44;
              }

              v12 = v22 & 0x3F | (v12 << 6);
              ++v17;
              ++v6;
              if (!--v21)
              {
                break;
              }
            }

            a5 = v34;
          }
        }

        else
        {
          v11 = 1;
          v17 = 1;
          if (v10)
          {
            goto LABEL_44;
          }
        }

LABEL_37:
        if (!v14 || HIWORD(v12) > 0x10u || (v12 & 0xFFFFFFFE) == 0xFFFE)
        {
          v17 = v11;
          goto LABEL_44;
        }

        v23 = offsetUTF8Sequences[v11 - 1];
        if (v12 < *(&validUTF8 + 5 * v23) || (v24 = offsetUTF8Sequences[v11], v12 > *(&validUTF8 + 5 * v24 - 4)))
        {
          *a5 = v11;
LABEL_45:
          *a1 = v12;
          result = 0xFFFFFFFFLL;
          goto LABEL_46;
        }

        if (v23 >= v24)
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_72;
        }

        v26 = v35;
        if (a3)
        {
          v26 = a3;
        }

        v27 = v26 - 1;
        v28 = &validUTF8 + 20 * v23 + 13;
        v29 = 1;
LABEL_53:
        v30 = 0;
        v31 = v29 == 0;
        v32 = v28;
        while (1)
        {
          v33 = v9;
          if (v30)
          {
            v33 = v27[v30];
          }

          if (v33 >= *(v32 - 1))
          {
            if (v33 > *v32 && !v31)
            {
LABEL_62:
              v29 = 1;
              result = 0xFFFFFFFFLL;
LABEL_63:
              ++v23;
              v28 += 20;
              if (v23 == v24)
              {
LABEL_72:
                *a5 = v11;
                *a1 = v12;
                goto LABEL_46;
              }

              goto LABEL_53;
            }
          }

          else if (!v31)
          {
            goto LABEL_62;
          }

          ++v30;
          v32 += 2;
          v31 = 1;
          if (v11 == v30)
          {
            result = 0;
            v29 = 0;
            goto LABEL_63;
          }
        }
      }

      v14 = 0;
      v12 = a2 & 1;
      v11 = 6;
    }

    v10 = 1;
    goto LABEL_16;
  }

  result = 0;
  *a1 = -1;
  *a5 = 1;
LABEL_46:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t EncodeCharToUTF8Bytes(unsigned int a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v24 = 0;
  v23 = 0;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = &v23;
  }

  if (a1 > 0x7F)
  {
    if (a1 <= 0x7FF)
    {
      *v6 = (a1 >> 6) | 0xC0;
      v9 = &v23;
      if (a2)
      {
        v9 = a2;
      }

      *(v9 + 1) = a1 & 0x3F | 0x80;
      v8 = 1;
      v7 = 2;
      if (!a3)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (!HIWORD(a1))
    {
      *v6 = (a1 >> 12) | 0xE0;
      v10 = &v23;
      if (a2)
      {
        v10 = a2;
      }

      *(v10 + 1) = (a1 >> 6) & 0x3F | 0x80;
      *(v10 + 2) = a1 & 0x3F | 0x80;
      v8 = (~a1 & 0xFFFE) != 0;
      v7 = 3;
      if (!a3)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (!(a1 >> 21))
    {
      *v6 = (a1 >> 18) | 0xF0;
      v11 = &v23;
      if (a2)
      {
        v11 = a2;
      }

      *(v11 + 1) = (a1 >> 12) & 0x3F | 0x80;
      *(v11 + 2) = (a1 >> 6) & 0x3F | 0x80;
      *(v11 + 3) = a1 & 0x3F | 0x80;
      v8 = a1 < 0x110000;
      v7 = 4;
      if (!a3)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (a1 >> 26)
    {
      if ((a1 & 0x80000000) != 0)
      {
        v17 = 0;
        goto LABEL_33;
      }

      *v6 = (a1 >> 30) | 0xFC;
      v22 = &v23;
      if (a2)
      {
        v22 = a2;
      }

      *(v22 + 1) = HIBYTE(a1) & 0x3F | 0x80;
      v16 = (a1 >> 18) & 0x3F;
      v17 = 6;
      v18 = 5;
      v19 = 4;
      v20 = 3;
      v21 = 2;
    }

    else
    {
      v16 = a1 >> 18;
      *v6 = HIBYTE(a1) | 0xF8;
      v17 = 5;
      v18 = 4;
      v19 = 3;
      v20 = 2;
      v21 = 1;
    }

    *(v6 + v21) = v16 | 0x80;
    *(v6 + v20) = (a1 >> 12) & 0x3F | 0x80;
    *(v6 + v19) = (a1 >> 6) & 0x3F | 0x80;
    *(v6 + v18) = a1 & 0x3F | 0x80;
LABEL_33:
    *a4 = v17;
    result = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  *v6 = a1;
  v7 = 1;
  v8 = 1;
  if (a3)
  {
LABEL_21:
    if (v8)
    {
      v12 = v7;
      do
      {
        v13 = *v6;
        v6 = (v6 + 1);
        (*(a3 + 8))(*a3, v13);
        --v12;
      }

      while (v12);
    }
  }

LABEL_24:
  *a4 = v7;
  result = (v8 - 1);
LABEL_25:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GetUTF8(char *a1, int *a2)
{
  v6 = 0;
  v3 = DecodeUTF8BytesToChar(&v6 + 1, *a1, a1 + 1, 0, &v6);
  v4 = HIDWORD(v6);
  if (v3)
  {
    v4 = 65533;
  }

  *a2 = v4;
  if (v6 <= 0)
  {
    return 0;
  }

  else
  {
    return (v6 - 1);
  }
}

uint64_t PutUTF8(uint64_t a1, unsigned int a2)
{
  v5 = 0;
  if (EncodeCharToUTF8Bytes(a2, a1, 0, &v5))
  {
    *a1 = -16401;
    *(a1 + 2) = -67;
    v3 = 3;
  }

  else
  {
    v3 = v5;
  }

  return a1 + v3;
}

uint64_t SplitSurrogatePair(int a1, _DWORD *a2, int *a3)
{
  LODWORD(v4) = (~a1 & 0xFFFE) != 0 && a3 != 0;
  if ((a1 & 0xFFFF0000) == 0)
  {
    LODWORD(v4) = 0;
  }

  if (a2)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == 1)
  {
    *a2 = ((a1 - 0x10000) >> 10) + 55296;
    *a3 = a1 & 0x3FF | 0xDC00;
  }

  return v4;
}

void AppendToClassAttr_cold_1()
{
  v0 = FatalError("Out of memory!");
  __break(1u);
  __maskrune(v0, v1);
}