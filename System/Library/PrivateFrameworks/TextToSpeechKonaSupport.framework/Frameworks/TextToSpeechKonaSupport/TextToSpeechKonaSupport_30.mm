uint64_t EngineWrapper::registerWordIndexCallback(uint64_t this, void (*a2)(int, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterWordIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerUserIndexCallback(uint64_t this, void (*a2)(void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterUserIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerIndexCallback(uint64_t this, void (*a2)(int, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerPhonemeCallback(uint64_t this, void (*a2)(int, unsigned int, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterPhonemeCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerAnnoCallback(uint64_t this, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterAnnoCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::insertSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v3)
  {
    inserted = 1;
  }

  else
  {
    inserted = engsynInsertSynthesisIndex(*(v1 + 16), v2);
    if (inserted)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(inserted);
}

uint64_t EngineWrapper::insertDelayedSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_53(this);
  if (v3)
  {
    inserted = 1;
  }

  else
  {
    inserted = engsynInsertDelayedSynthesisIndex(*(v1 + 16), v2);
    if (inserted)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_54(inserted);
}

uint64_t EngineWrapper::wantPhonemeIndices(uint64_t this, char a2)
{
  if (!*(this + 24))
  {
    return engsynWantPhonemeIndices(*(this + 16), a2);
  }

  return this;
}

uint64_t EngineWrapper::close(EngineWrapper *this)
{
  if (engsynClose(*(this + 2)))
  {
    v2 = 1;
    *(this + 24) = 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 25))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_0_54(uint64_t result)
{
  if (*(v1 + 25))
  {
    return 0;
  }

  else
  {
    return result;
  }
}

char *LanguageID::getLanguageString(LanguageID *this)
{
  v1 = this + 3;
  sprintf(this + 3, "%d", *this);
  return v1;
}

_BYTE *OUTLINED_FUNCTION_0_55(_BYTE *result, int a2)
{
  *result = BYTE2(a2);
  result[1] = BYTE1(a2);
  result[2] = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_1_54(_BYTE *result, char a2, char a3)
{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

_BYTE *OUTLINED_FUNCTION_2_53(_BYTE *result, char a2, char a3, char a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

BOOL reg(uint64_t a1)
{
  v2 = delta_new();
  engsynStart(v2);
  if (ensureInputStream(v2))
  {
    qword_2805C0340 = a1;
    DeltaProc_registerLanguages(v2);
    delta_delete(v2);
    return (_MergedGlobals_48 & 1) == 0;
  }

  else
  {
    delta_delete(v2);
    return 1;
  }
}

BOOL ensureInputStream(uint64_t a1)
{
  if (*(*(a1 + 224) + 221) != 255)
  {
    return 1;
  }

  for (i = 0; i < num_streams(a1); ++i)
  {
    v4 = stream_name(i);
    if (!strcmp(v4, "inp"))
    {
      break;
    }
  }

  if (num_streams(a1) == i)
  {
    return 0;
  }

  *(*(a1 + 224) + 221) = i;
  return single_letter_stream(i) != 0;
}

uint64_t unreg()
{
  v0 = MEMORY[0x28223BE20]();
  v7 = *MEMORY[0x277D85DE8];
  globalJustGetLanguage = 1;
  v1 = delta_new();
  engsynStart(v1);
  if (ensureInputStream(v1))
  {
    DeltaProc_registerLanguages(v1);
    LanguageID::LanguageID(v6, *(v1[28] + 224));
    IniFileWriter::IniFileWriter(v5, v0);
    LanguageDialectString = LanguageID::getLanguageDialectString(v6);
    IniFileWriter::deleteSection(v5, LanguageDialectString);
  }

  delta_delete(v1);
  result = 1;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26DD04FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerPhoneme(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  MEMORY[0x28223BE20]();
  v34 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_48 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_55();
    v33 = 0;
    v23[4] = 0u;
    v23[5] = 0u;
    v23[2] = 0u;
    v23[3] = 0u;
    *v23 = 0u;
    v23[1] = 0u;
    if (sprintf(v32, "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d", *(v24 + 2), *(v25 + 2), *(v26 + 2), *(v27 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2), *(a15 + 2), *(a16 + 2), *(a17 + 2), *(a18 + 2), *(a19 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_56();
    }

    else
    {
      LanguageID::LanguageID(v31, *(v21 + 2), *(v20 + 2));
      IniFileWriter::IniFileWriter(v29, qword_2805C0340);
      if (sprintf(v30, "Phoneme%d", *(v19 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v31);
        IniFileWriter::writeString(v29, LanguageDialectString, v30, v32);
      }

      OUTLINED_FUNCTION_0_56();
      IniFileWriter::~IniFileWriter(v29);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_26DD05200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t registerLanguage()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v17 = *MEMORY[0x277D85DE8];
  v8 = LanguageID::LanguageID(v16, *(v6 + 2), *(v7 + 2));
  *(*(v5 + 224) + 224) = LanguageID::getPackedInt(v8);
  if (v16[0] - 6 > 4)
  {
    v9 = 63;
  }

  else
  {
    v9 = dword_26DD3149C[(v16[0] - 6)];
  }

  sprintf(byte_2805C0348, "%#x", v9);
  if (globalJustGetLanguage || (_MergedGlobals_48 & 1) != 0)
  {
    result = 0;
  }

  else
  {
    IniFileWriter::IniFileWriter(v14, qword_2805C0340);
    if (sprintf(v15, "%d.%d", *(v4 + 2), *(v2 + 2)) != -1)
    {
      LanguageDialectString = LanguageID::getLanguageDialectString(v16);
      FullPathName = getFullPathName();
      IniFileWriter::writeString(v14, LanguageDialectString, "Path", FullPathName);
    }

    _MergedGlobals_48 = 1;
    IniFileWriter::~IniFileWriter(v14);
    result = 0xFFFFFFFFLL;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26DD053F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerVoice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x28223BE20]();
  v27 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_48 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_55();
    v26 = 0;
    v18[4] = 0u;
    v18[5] = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    if (sprintf(v25, "%d %d %d %d %d %d %d %d", *(v19 + 2), *(v20 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_56();
    }

    else
    {
      LanguageID::LanguageID(v24, *(v16 + 2), *(v15 + 2));
      IniFileWriter::IniFileWriter(v22, qword_2805C0340);
      if (sprintf(v23, "Voice%d", *(v14 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v24);
        IniFileWriter::writeString(v22, LanguageDialectString, v23, v25);
      }

      OUTLINED_FUNCTION_0_56();
      IniFileWriter::~IniFileWriter(v22);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_26DD055B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t extractInputStreamString(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  result = sync_in_stm(a1, *(*(a1 + 224) + 221), v8);
  if (!result)
  {
    return result;
  }

  result = sync_in_stm(a1, *(*(a1 + 224) + 221), v9);
  if (!result)
  {
    return result;
  }

  result = extract_string(a1, *(*(a1 + 224) + 221), v8, v9, a4, a5);
  if (!result)
  {
    return result;
  }

  if (strlen(a4) < 3)
  {
    return 1;
  }

  for (i = a4; ; ++i)
  {
    v12 = *a4;
    if (v12 != 39)
    {
      break;
    }

    if (a4[1] == 32 && a4[2] == 39)
    {
      LOBYTE(v12) = 32;
      v13 = 3;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 1;
LABEL_13:
    *i = v12;
    a4 += v13;
  }

  if (*a4)
  {
    goto LABEL_12;
  }

  *i = 0;
  return 1;
}

uint64_t sendArrayParameters(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v13 = a3;
  v14 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v16 = *(a1 + 208);
  if (!a2)
  {
    *(v16 + 140) = 0;
  }

  v17 = 0;
  *(v16 + 144) = a3;
  while (v17 != 62)
  {
    v51[v17] = *(a10 + v17 * 4);
    ++v17;
  }

  v51[0] = a8;
  if (a4)
  {
    if (a5)
    {
      if (!a6)
      {
LABEL_11:
        for (i = 4; i != 252; i += 4)
        {
          v19 = *(a9 + i);
          if (v19 != -1)
          {
            Offset = arrayStreamLastOffset(a1, v19);
            if (v13 >= Offset)
            {
              v13 = Offset;
            }
          }
        }

        if (v13 <= v14)
        {
          v21 = v14;
        }

        else
        {
          v21 = v13;
        }

        v13 = v14 + (v21 - v14) / a8 * a8;
        v16 = *(a1 + 208);
      }
    }

    else
    {
      v14 = *(v16 + 8);
      if (!a6)
      {
        goto LABEL_11;
      }
    }

    *(v16 + 8) = v13;
  }

  *(v16 + 136) = v13;
  v22 = *v16;
  if (!*v16)
  {
    v23 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
    if (v23)
    {
      v24 = v23;
      v25 = streamArrayCount(a1);
      v26 = malloc_type_calloc(v25, 0x30uLL, 0x1000040732E9A81uLL);
      *v24 = v26;
      if (v26)
      {
        valueSetReset(a1, v24, v14, v13);
        **(a1 + 208) = v24;
        goto LABEL_30;
      }

      free(v24);
    }

    result = 0;
    **(a1 + 208) = 0;
    goto LABEL_62;
  }

  if (!a4 || a5)
  {
    valueSetReset(a1, v22, v14, v13);
  }

  else
  {
    v22[2] = v13;
  }

LABEL_30:
  v27 = 0;
  v50 = a8;
  while (!v27)
  {
    if (checkInterrupt(a1) || (v28 = **(a1 + 208), *(v28 + 8) > v14) || *(v28 + 16) <= v14)
    {
      result = 1;
      goto LABEL_62;
    }

    for (j = 0; j != 62; ++j)
    {
      v30 = *(a9 + 4 + 4 * j);
      if (v30 != -1)
      {
        v31 = **(a1 + 208);
        v32 = *v31 + 48 * v30;
        v33 = *(v32 + 16);
        while (v33 < v14)
        {
          if (v33 == -1)
          {
            v38 = OUTLINED_FUNCTION_0_57();
            Val = arrayStreamFirstVal(v38, v39, v40, v41);
            *v32 = 0;
            *(v32 + 8) = 0;
            if (Val)
            {
              v33 = 0;
              *(v32 + 16) = 0;
            }

            else
            {
              v33 = v31[2];
              *(v32 + 16) = v33;
            }

            *(v32 + 24) = 0;
          }

          else
          {
            *v32 = v33;
            *(v32 + 8) = *(v32 + 24);
            v34 = OUTLINED_FUNCTION_0_57();
            if (arrayStreamNextVal(v34, v35, v36, v37))
            {
              v33 = 0;
              *(v32 + 16) = 0;
              *(v32 + 24) = 0;
            }

            else
            {
              v33 = v31[2];
              *(v32 + 16) = v33;
            }
          }
        }

        v43 = *v32;
        v44 = v33 - *v32;
        *(v32 + 32) = v44;
        v45 = *(v32 + 8);
        v46 = *(v32 + 24) - v45;
        *(v32 + 40) = v46;
        if (v46)
        {
          v47 = v33 == v43;
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          v45 = ((((v14 - v43) * v46) / v44) + v45);
        }

        v51[j] = v45;
      }
    }

    v14 += v50;
    if (v14 > v13)
    {
      v51[0] = (v14 - v13);
    }

    (*(*(*(a1 + 208) + 32) + 32))(v51, *(*(*(a1 + 208) + 32) + 40));
    v27 = !KlattSynth(*(*(a1 + 208) + 64), v51);
  }

  result = 0;
LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t valueSetReset(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  a2[1] = a3;
  a2[2] = a4;
  for (i = 16; ; i += 48)
  {
    result = streamArrayCount(a1);
    if (v6 >= result)
    {
      break;
    }

    *(*a2 + i) = -1;
    ++v6;
  }

  return result;
}

void dlangCleanup(uint64_t a1)
{
  v1 = **(a1 + 208);
  if (v1)
  {
    free(*v1);

    free(v1);
  }
}

double *getDeltaCcodeParm(double *result, double *a2, int a3)
{
  v3 = *result;
  if (v3 == 65531)
  {
    if (a3 != -5)
    {
      if (a3 != -3)
      {
        if (a3 != -4)
        {
          return result;
        }

        v4 = result[1];
        goto LABEL_16;
      }

      v5 = result[1];
      goto LABEL_21;
    }

    v6 = result[1];
    goto LABEL_24;
  }

  if (v3 != 65533)
  {
    if (v3 != 65532)
    {
      return result;
    }

    if (a3 != -5)
    {
      if (a3 != -3)
      {
        if (a3 != -4)
        {
          return result;
        }

        LOWORD(v4) = *(result + 1);
LABEL_16:
        *a2 = v4;
        return result;
      }

      v5 = *(result + 1);
      goto LABEL_21;
    }

    v6 = *(result + 1);
    goto LABEL_24;
  }

  switch(a3)
  {
    case -5:
      v6 = *(result + 1);
LABEL_24:
      *a2 = v6;
      return result;
    case -3:
      v5 = *(result + 1);
LABEL_21:
      *a2 = v5;
      return result;
    case -4:
      *a2 = *(result + 1);
      break;
  }

  return result;
}

double *setDeltaCcodeReturnValue(double *result, int a2, double *a3)
{
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      switch(a2)
      {
        case -5:
          v6 = *result;
          break;
        case -3:
          v6 = *result;
          break;
        case -4:
          v6 = *result;
          break;
        default:
          return result;
      }

      a3[1] = v6;
      break;
    case 65533:
      switch(a2)
      {
        case -5:
          *&v5 = *result;
          break;
        case -3:
          v5 = *result;
          break;
        case -4:
          *&v5 = *result;
          break;
        default:
          return result;
      }

      a3[1] = v5;
      return result;
    case 65532:
      switch(a2)
      {
        case -5:
          v4 = *result;
          goto LABEL_25;
        case -3:
          *(a3 + 1) = *result;
          return result;
        case -4:
          LOWORD(v4) = *result;
LABEL_25:
          *(a3 + 1) = v4;
          break;
      }

      break;
  }

  return result;
}

uint64_t setdlookup(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(vstmtbl[12 * *(a4 + 16) + 1] + 15) == -1)
  {
    result = extract(a1, a2, a3, a5, __s1, *(a4 + 48));
    if (!result)
    {
      goto LABEL_3;
    }

    v8 = 0;
    v9 = *(a4 + 8);
    v10 = *(a4 + 32) * *(a4 + 48) - 1;
    v11 = -1;
    while (v10 >= v8)
    {
      v12 = v10;
      v13 = (v10 + v8) >> 1;
      if (v13 >= -1)
      {
        v10 = -1;
      }

      else
      {
        v10 = (v10 + v8) >> 1;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        while (*(v9 + v13))
        {
          if (--v13 < 0)
          {
            goto LABEL_15;
          }
        }

        v10 = v13;
      }

LABEL_15:
      v14 = v10 + 1;
      if (v10 + 1 == v11)
      {
        break;
      }

      v15 = strcmp(__s1, (v9 + v14));
      if (!v15)
      {
        result = 1;
        goto LABEL_3;
      }

      v11 = v10 + 1;
      if ((v15 & 0x80000000) == 0)
      {
        v8 = v10 + 1;
          ;
        }

        v10 = v12;
        v11 = v14;
      }
    }
  }

  result = 0;
LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t extract(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  v6 = *(*(a1 + 192) + 9084) + a4;
  if ((*(a2 + 8 * v6) & 1) == 0 || (*(a3 + 8 * v6) & 1) == 0)
  {
    return 0;
  }

  v11 = a2;
  v13 = 0;
  v14 = *vstmtbl[12 * a4 + 2];
  v15 = 0xFE / a6;
  v16 = a6;
  while (1)
  {
    v17 = v11 == a3 || v11 == *(*(a1 + 200) + 8);
    if (v17 || v13 >= v15)
    {
      break;
    }

    v11 = *(v11 + 8 * (*(*(a1 + 192) + 9084) + a4)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v11 || (*v11 & 2) == 0)
    {
      v19 = v14(v11 + 16);
      memcpy(a5, v19, v16);
      a5 += v16;
      v11 = *(v11 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    ++v13;
  }

  *a5 = 0;
  return 1;
}

const char *actdlookup(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  if (*(vstmtbl[12 * v5 + 1] + 15) == -1 && extract(a1, a2, a3, v5, __s1, *(a4 + 48)))
  {
    v9 = 0;
    v10 = *(a4 + 8);
    v11 = v10 + 2 * *(a4 + 24);
    v12 = *(a4 + 24) - 1;
    while (v12 >= v9)
    {
      v13 = (v11 + *(v10 + ((v12 + v9) & 0x1FFFFFFFELL)));
      v14 = strcmp(__s1, v13);
      if (!v14)
      {
        v6 = v13;
          ;
        }

        goto LABEL_3;
      }

      v15 = (v12 + v9) >> 1;
      if (v14 < 0)
      {
        v12 = v15 - 1;
      }

      else
      {
        v9 = v15 + 1;
      }
    }
  }

  v6 = 0;
LABEL_3:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t vdictinit(uint64_t a1)
{
  v2 = *(a1 + 306);
  if (v2 || *(a1 + 320))
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      dictinit(a1, *(a1 + 64) + v3, 0, i);
      v2 = *(a1 + 306);
      v3 += 64;
    }

    v5 = 0;
    for (j = 0; j < *(a1 + 320); ++j)
    {
      dictinit(a1, *(a1 + 72) + v5, 1, j);
      v5 += 64;
    }
  }

  return 1;
}

void *dictinit(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  switch(*(vstmtbl[12 * *(a2 + 16) + 1] + 15))
  {
    case 0xFFFB:
      v12 = 0x10000000000000;
      v8 = 8;
      v9 = &v12;
      break;
    case 0xFFFC:
      v13 = -32767;
      v8 = 2;
      v9 = &v13;
      break;
    case 0xFFFD:
      v14 = -2147483647;
      v8 = 8;
      v9 = &v14;
      break;
    case 0xFFFE:
      v8 = 2;
      v9 = &unk_26DD314B2;
      break;
    case 0xFFFF:
      v8 = 1;
      v9 = &unk_26DD314B0;
      break;
    default:
      v9 = 0;
      v8 = 0;
      break;
  }

  result = memcpy((a2 + 49), v9, v8);
  *(a2 + 48) = v8;
  v11 = 176;
  if (!a3)
  {
    v11 = 80;
  }

  *(a2 + 8) = *(*(a1 + v11) + 8 * a4);
  return result;
}

uint64_t vgen_frame(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = 8160;
  if (**(v1 + 8032) == 195)
  {
    v2 = 8128;
  }

  v3 = v1 + v2;
  *(v1 + 8400) = v1 + v2;
  *(v1 + 8408) = -4;
  *(v1 + 8410) = 0;
  vassign(a1, (v1 + 8400), (v1 + 8384));
  *(v3 + 24) |= 1u;
  return 0;
}

uint64_t vgen_time(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = 8160;
  if (**(v1 + 8032) == 196)
  {
    v2 = 8128;
  }

  v3 = *(v1 + 0x2000);
  v4 = v1 + v2;
  *(v4 + 8) = v3;
  *(v4 + 24) |= 2u;
  return 0;
}

uint64_t vgen_params(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = 8160;
  if (**(v2 + 8032) == 197)
  {
    v3 = 8128;
  }

  v4 = v2 + v3;
  *(v2 + v3 + 9) = *(v2 + 0x2000);
  if ((*(v2 + v3 + 24) & 4) != 0)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = dynaBufNew(*(v2 + 8193));
    *(v4 + 16) = v5;
  }

  dynaBufReset(v5);
  for (i = 1; ; ++i)
  {
    v7 = *(a1 + 192);
    if (i > *(v7 + 8193))
    {
      break;
    }

    v8 = *(v4 + 16);
    v9 = *(v7 + 8264);
    *(v7 + 8264) = v9 + 1;
    dynaBufAddChar(v8, *v9, 0);
  }

  *(v4 + 24) |= 4u;
  return 0;
}

uint64_t vgen_copy(uint64_t a1)
{
  v1 = *(a1 + 192);
  if ((~*(v1 + 8152) & 7) != 0)
  {
    return 245;
  }

  *(v1 + 8160) = *(v1 + 8128);
  *(v1 + 8168) = *(v1 + 8136);
  *(*(a1 + 192) + 0x2000) = dynaBufLength(*(v1 + 8144));
  dynaBufReset(*(*(a1 + 192) + 8176));
  for (i = 0; ; ++i)
  {
    v4 = *(a1 + 192);
    if (i >= *(v4 + 0x2000))
    {
      break;
    }

    v5 = *(v4 + 8176);
    v6 = dynaBufChar(*(v4 + 8144), i);
    dynaBufAddChar(v5, v6, 0);
  }

  result = 0;
  *(v4 + 8184) |= 7u;
  return result;
}

uint64_t vgenerate(uint64_t a1)
{
  v2 = 245;
  if (vprt_range(a1, a1 + 112, a1 + 144))
  {
    if (vgen(a1, a1 + 112, (a1 + 144), *(a1 + 192) + 8160, *(*(a1 + 192) + 0x2000)))
    {
      return 0;
    }

    else
    {
      return 245;
    }
  }

  return v2;
}

uint64_t ins_tokens(uint64_t *a1, unsigned int a2, _BYTE *a3, int a4)
{
  v29 = 0;
  v26 = 0;
  v27 = 0.0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (a4 == 1)
  {
    v6 = a1[14];
    v7 = a1[18];
    if (v7 != (*(v6 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) || v6 != (*(v7 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL))
    {
      vdel_2pt(a1, a2, v6, v7);
    }
  }

  else
  {
    LOWORD(v26) = STMTYP(a2);
    v11 = vstmtbl[12 * a2 + 1][32];
    BYTE2(v26) = v11;
    switch(STMTYP(a2))
    {
      case 0xFFFBu:
        v12 = &v27;
        goto LABEL_11;
      case 0xFFFCu:
      case 0xFFFEu:
        v12 = &v28;
        goto LABEL_11;
      case 0xFFFDu:
        v12 = &v29;
        goto LABEL_11;
      case 0xFFFFu:
        v12 = &v30;
LABEL_11:
        v25 = v12;
        v13 = a3 + 1;
        switch(*a3)
        {
          case 0xC7:
            LOWORD(v24) = -1;
            v14 = &v30;
            break;
          case 0xC8:
            v15 = -2;
            goto LABEL_17;
          case 0xC9:
            LOWORD(v24) = -3;
            v14 = &v29;
            break;
          case 0xCA:
            v15 = -4;
LABEL_17:
            LOWORD(v24) = v15;
            v14 = &v28;
            break;
          case 0xCB:
            LOWORD(v24) = -5;
            v14 = &v27;
            break;
          default:
            return 0;
        }

        v23 = v14;
        v30 = 0;
        v16 = &a3[a4];
        v28 = 0;
        BYTE2(v24) = v11;
        break;
      default:
        return 0;
    }

    while (v13 < v16)
    {
      v17 = v24;
      switch(v24)
      {
        case -5:
          v21 = *v13;
          v20 = v13 + 1;
          v30 = v21;
          v27 = atof(v20);
          v13 = &v20[v21];
          break;
        case -4:
        case -2:
          v18 = *(v13 + 1) | ((*v13 & 0x7F) << 8);
          v28 = v18;
          if (*v13 < 0)
          {
            v28 = -v18;
          }

          v13 += 2;
          break;
        case -3:
          v22 = (*(v13 + 1) << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v13 & 0x7F) << 24) | (*(v13 + 2) << 8) | *(v13 + 3);
          v29 = v22;
          if (*v13 < 0)
          {
            v29 = -v22;
          }

          v13 += 4;
          break;
        case -1:
          v19 = *v13++;
          v30 = v19;
          break;
        default:
          return 0;
      }

      if (v26 != v17)
      {
        vassign(a1, &v25, &v23);
      }

      result = vins_tok(a1, a2, a1[14], a1[18], &v25);
      if (result)
      {
        if (v13 >= v16)
        {
          continue;
        }

        result = vins_sync(a1, a2, *(a1[18] + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL, a1[18]);
        a1[14] = result;
        if (result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t ins_rdtoks(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = a1[25];
  v9 = *(v8 + 1720);
  if (*v9 != 5)
  {
    STMTYP(a2);
    v27 = vstmtbl[12 * a2 + 1][32];
    for (i = 1; ; i = 0)
    {
      v16 = *v9;
      if (v16 == 5)
      {
        break;
      }

      if ((i & 1) == 0)
      {
        v17 = *(a3 + 8 * (*(a1[24] + 9084) + a2));
        v18 = OUTLINED_FUNCTION_0_58();
        result = vins_sync(v18, v19, v20, v21);
        if (!result)
        {
          return result;
        }

        v4 = result;
        v16 = *v9;
      }

      if (v16 != 2)
      {
        return 0;
      }

      v26 = &v9[*(a1[25] + 280)];
      v22 = OUTLINED_FUNCTION_0_58();
      result = vins_tok(v22, v23, v24, v4, v25);
      if (!result)
      {
        return result;
      }

      popDeltaStackTop(a1);
      v9 = *(a1[25] + 1720);
    }

    v8 = a1[25];
    goto LABEL_15;
  }

  if ((*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) == a4 && (*(a4 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL) == a3)
  {
LABEL_15:
    *(v8 + 1760) = *(v9 + 1);
    goto LABEL_16;
  }

  v10 = OUTLINED_FUNCTION_0_58();
  vdel_2pt(v10, v11, v12, v4);
  v13 = *v9;
  *(a1[25] + 1760) = *(v9 + 1);
  if (v13 != 5)
  {
    return 0;
  }

LABEL_16:
  popDeltaStackTop(a1);
  result = 1;
  *(a1[23] + 452) = 1;
  return result;
}

uint64_t timeDuration(uint64_t a1, _BYTE *a2, _BYTE *a3, int a4)
{
  v8 = 0;
  v9 = &vstmtbl[12 * a4];
  while (a2 != a3)
  {
    if (a2 == *(*(a1 + 200) + 8))
    {
      return 0;
    }

    if (a2 && (*a2 & 2) != 0)
    {
      v12 = &a2[8 * *(*(a1 + 192) + 9084) + 8 * a4];
    }

    else
    {
      v10 = STMTYP(a4);
      if (v10 == -3)
      {
        v11 = *(*v9[2])(a2 + 16);
      }

      else if (v10 == 65532)
      {
        LODWORD(v11) = *(*v9[2])(a2 + 16);
      }

      else
      {
        LODWORD(v11) = 0;
      }

      v8 += v11;
      v12 = a2 + 8;
    }

    a2 = (*v12 & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v8;
}

uint64_t synthesize(uint64_t a1, int a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, uint64_t a14, unsigned int a15, int a16, int a17, void *__s2)
{
  v27 = *(a1 + 208);
  v28 = *(v27 + 32);
  *(v28 + 110) = 1;
  if (*(v27 + 48))
  {
    v29 = 0;
    v30 = 0;
    v31 = *(v27 + 40);
    *v31 = a3;
    v32 = v31 + 4;
    while (v29 != 62)
    {
      v33 = arrayStreamFind(a1, (&parmNames)[v29]);
      *&v32[4 * v29] = v33;
      if (v33 != -1)
      {
        v30 = 1;
      }

      ++v29;
    }

    v27 = *(a1 + 208);
    if (!v30)
    {
      v37 = 0;
      v28 = *(v27 + 32);
      goto LABEL_67;
    }

    *(v27 + 48) = 0;
    v28 = *(v27 + 32);
  }

  v34 = *(v28 + 108);
  v35 = *(v28 + 108) == 0;
  *(v28 + 108) = 1;
  v36 = a7 - a6;
  if (a7 - a6 < 0 || a7 == a6 && !a8)
  {
    goto LABEL_12;
  }

  v61 = v35;
  v38 = a17;
  memcpy(__dst, &unk_287EDBE10, 0x58uLL);
  if (a15)
  {
    v39 = a15;
    *(__dst + 1) = a15;
    *(v27 + 148) = a15;
  }

  else
  {
    v39 = 0.0;
  }

  LODWORD(__dst[1]) = 16;
  if (a17)
  {
    HIDWORD(__dst[1]) = a17;
  }

  else
  {
    v38 = 5;
  }

  v40 = 0.0;
  v41 = 0.0;
  if (a9 != 0.0)
  {
    *(&__dst[5] + 1) = a9;
    v41 = a9;
  }

  if (a10 != 0.0)
  {
    *(&__dst[4] + 1) = a10;
    v40 = a10;
  }

  v42 = 0.0;
  v43 = 0.0;
  if (a11 != 0.0)
  {
    *&__dst[5] = a11;
    v43 = a11;
  }

  v44 = a16;
  if (a12 != 0.0)
  {
    *&__dst[4] = a12;
    v42 = a12;
  }

  __dst[8] = errorIgnore;
  LODWORD(__dst[9]) = 2;
  __dst[10] = ourKlattCallback;
  if (!a16)
  {
    v44 = 5;
  }

  v62 = v44;
  v45 = *(v27 + 56);
  if (v39 == *(v45 + 4) && v38 == *(v45 + 12) && v41 == *(v45 + 44) && v40 == *(v45 + 36) && v43 == *(v45 + 40) && v42 == *(v45 + 32))
  {
    v46 = 1;
  }

  else
  {
    memcpy(v45, __dst, 0x58uLL);
    v46 = 0;
    v27 = *(a1 + 208);
    v28 = *(v27 + 32);
  }

  if (*(v28 + 111))
  {
    if (v34)
    {
      if (!v46 || (v47 = *(v27 + 56), *(v47 + 88) != a13) || memcmp((v47 + 92), __s2, 0xF8uLL))
      {
        v48 = sendArrayParameters(a1, a6, a6, 1, 0, 1, 0, v62, *(v27 + 40), __s2);
        v27 = *(a1 + 208);
        if (!v48)
        {
          v37 = 0;
          v28 = *(v27 + 32);
          goto LABEL_13;
        }
      }
    }

    v49 = *(v27 + 56);
    *(v49 + 88) = a13;
    memcpy((v49 + 92), __s2, 0xF8uLL);
    v27 = *(a1 + 208);
  }

  v28 = *(v27 + 32);
  if (v46)
  {
    v50 = a15;
    if (*(v28 + 109))
    {
      goto LABEL_50;
    }
  }

  else
  {
    (*(v28 + 48))(__dst, *(v28 + 56));
    v51 = *(*(a1 + 208) + 64);
    memcpy(v63, __dst, sizeof(v63));
    KlattSetConstParms(v51, v63);
    v27 = *(a1 + 208);
    *(*(v27 + 32) + 109) = 0;
    v50 = a15;
  }

  v52 = KlattOpen(*(v27 + 64));
  v27 = *(a1 + 208);
  v28 = *(v27 + 32);
  if (!v52)
  {
LABEL_12:
    v37 = 0;
LABEL_13:
    *(v28 + 108) = 0;
    goto LABEL_67;
  }

LABEL_50:
  *(v28 + 109) = 1;
  if (a8)
  {
    if (v36 <= a8)
    {
      v53 = a8;
    }

    else
    {
      v53 = a7 - a6;
    }

    *(v28 + 112) = v53;
    if (*v28 && (v54 = *(v28 + 16)) != 0)
    {
      v54(v53 * v50 / 0x3E8uLL, v50 * a14 / 1000, *(v28 + 24));
      v55 = 0;
      v27 = *(a1 + 208);
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    *(v28 + 112) = 0;
    v55 = 1;
  }

  klattSetVolumeMultiplier(*(v27 + 64), a13);
  v37 = sendArrayParameters(a1, a6, a7, *(*(*(a1 + 208) + 32) + 111), v61, v55, 0, v62, *(*(a1 + 208) + 40), __s2);
  v56 = checkInterrupt(a1);
  v28 = *(*(a1 + 208) + 32);
  if (v56)
  {
    v57 = 0;
    *(v28 + 112) = 0;
  }

  else
  {
    v57 = *(v28 + 112);
  }

  v58 = v57 <= v36;
  v59 = v57 - v36;
  if (v58)
  {
    v59 = 0;
  }

  *(v28 + 112) = v59;
  if (!a8)
  {
    finishSynthesis(a1);
    v28 = *(*(a1 + 208) + 32);
  }

LABEL_67:
  *(v28 + 110) = 0;
  return v37;
}

uint64_t ourKlattCallback(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    OUTLINED_FUNCTION_0_59();
    if (!*(v4 + 128))
    {
      break;
    }

    if (checkInterrupt(a1))
    {
      return 0;
    }
  }

  for (i = 0; ; i += v7)
  {
    v7 = (*a2 - i);
    if (*a2 <= i)
    {
      break;
    }

    OUTLINED_FUNCTION_0_59();
    if (*(v8 + 80))
    {
      IndexQueue::reduceLeadTime((v8 + 72), v7);
      OUTLINED_FUNCTION_0_59();
      v7 = v9;
    }

    if (*v8)
    {
      (*v8)(v7, *(a2 + 8) + 8 * i, *(v8 + 8));
    }

    OUTLINED_FUNCTION_0_59();
    if (IndexQueue::indexDue((v10 + 72)))
    {
      OUTLINED_FUNCTION_0_59();
      IndexQueue::remove((v11 + 72));
    }
  }

  return 1;
}

void finishSynthesis(uint64_t a1)
{
  KlattClose(*(*(a1 + 208) + 64));
  OUTLINED_FUNCTION_1_56();
  *(v1 + 109) = 0;
  clock();
  OUTLINED_FUNCTION_1_56();
  *(v3 + 120) = v2;
  *(v3 + 108) = 0;
}

void callSynthesizeArray()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_54();
  operator new[]();
}

uint64_t callPlayFile(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 2) && *(a2 + 2) <= 999)
  {
    sprintf(v4, "delta%i.%s", *(a2 + 2), "au");
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t floatDur(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = 0.0;
  if ((*a2 & 0x80) == 0)
  {
    v9 = v6;
    if (v6 < *(a1 + 288))
    {
      v10 = *(a3 + 8);
      v11 = *(*(a1 + 192) + 9084) + v6;
      if (*&v10[8 * v11])
      {
        v12 = *(a4 + 8);
        if (*&v12[8 * v11])
        {
          v7 = timeDuration(a1, v10, v12, v9);
        }
      }
    }
  }

  *(a5 + 8) = v7;
  return 0;
}

uint64_t stopSynthesizing(uint64_t a1)
{
  v1 = *(*(a1 + 208) + 32);
  if (*(v1 + 110))
  {
    v2 = 1;
    setInterrupt(a1, 1);
  }

  else if (*(v1 + 108))
  {
    *(v1 + 112) = 0;
    finishSynthesis(a1);
    return 1;
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t setSynthToNamedFile(uint64_t a1, char *__s1)
{
  v2 = *(*(a1 + 208) + 32);
  if (*(v2 + 108))
  {
    return 0;
  }

  if (*v2)
  {
    *v2 = 0;
  }

  if (!__s1 || !*__s1)
  {
    v4 = *(v2 + 64);
    if (v4)
    {
      free(v4);
      OUTLINED_FUNCTION_1_56();
      *(v5 + 64) = 0;
    }

    return 1;
  }

  result = strdup(__s1);
  *(v2 + 64) = result;
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t setSynthToCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  if (*(v3 + 64))
  {
    setSynthToNamedFile(a1, 0);
    v3 = *(*(a1 + 208) + 32);
  }

  *v3 = a2;
  *(v3 + 8) = a3;
  return 1;
}

uint64_t setKlattDynamicHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return 1;
}

uint64_t setKlattConstantHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  return 1;
}

uint64_t setSynthDurationCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t registerSynthIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  return result;
}

uint64_t registerPhonemeCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  return result;
}

uint64_t insertPhoneme(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 208) + 32);
  v5 = *(v4 + 152);
  if (v5)
  {
    v5(a2, a3, *(v4 + 160));
    return 1;
  }

  else
  {

    return insertDelayedSynthIndex(a1, a2);
  }
}

uint64_t insertDelayedSynthIndex(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 208);
  v5 = *(v3 + 136);
  v4 = *(v3 + 140);
  if (v4 <= v5)
  {
    v6 = *(v3 + 136);
  }

  else
  {
    v6 = *(v3 + 140);
  }

  v7 = *(v3 + 144);
  if (v6 <= v7)
  {
    v8 = *(v3 + 144);
  }

  else
  {
    v8 = v6;
  }

  *(v3 + 140) = v6;
  *(v3 + 144) = v8;
  if (v5 < v4 || v6 < v7)
  {
    result = IndexQueue::addOffsetFromLast((*(v3 + 32) + 72), a2, *(v3 + 148) * (v8 - v6) / 1000);
    *(*(a1 + 208) + 140) = *(*(a1 + 208) + 144);
  }

  else
  {

    return insertSynthIndex(a1, a2);
  }

  return result;
}

uint64_t insertSynthIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 208) + 32);
  if (!*v2)
  {
    return 0;
  }

  v3 = v2[17];
  if (v3)
  {
    v3(a2, v2[18]);
  }

  return 1;
}

uint64_t flushDelayedSynthQueue()
{
  OUTLINED_FUNCTION_1_56();
  if (*(v0 + 80))
  {
    IndexQueue::remove((v0 + 72));
  }

  return 1;
}

void deltaCleanup(uint64_t a1)
{
  deltaHeapCleanup(a1);
  dlangCleanup(a1);
  vnstackCleanup(a1);
  vdelCleanup(a1);

  logicalIOCleanup(a1);
}

void dlang_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x98uLL, 0x1090040BA41C4AEuLL);
  *(a1 + 208) = v2;
  bzero(v2, 0x98uLL);
  v3 = malloc_type_malloc(0x100uLL, 0x10000400763368AuLL);
  *(*(a1 + 208) + 40) = v3;
  bzero(v3, 0x100uLL);
  operator new();
}

void dlang_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 208);
    if (v2)
    {
      klatt_delete(*(v2 + 64));
      stmarray_delete(a1);
      v3 = *(a1 + 208);
      if (*(v3 + 32))
      {
        MEMORY[0x274379FF0](*(v3 + 32), 0);
        v3 = *(a1 + 208);
        *(v3 + 32) = 0;
      }

      if (*(v3 + 56))
      {
        bzero(*(v3 + 56), 0x158uLL);
        free(*(*(a1 + 208) + 56));
        v3 = *(a1 + 208);
        *(v3 + 56) = 0;
      }

      if (*(v3 + 40))
      {
        bzero(*(v3 + 40), 0x100uLL);
        free(*(*(a1 + 208) + 40));
        v3 = *(a1 + 208);
        *(v3 + 40) = 0;
      }

      v4 = *(v3 + 96);
      if (v4)
      {
        *v4 = 0;
        free(*(*(a1 + 208) + 96));
        v3 = *(a1 + 208);
        *(v3 + 96) = 0;
      }

      bzero(v3, 0x98uLL);
      free(*(a1 + 208));
      *(a1 + 208) = 0;
    }
  }
}

void SoundDeviceInfo::SoundDeviceInfo(SoundDeviceInfo *this)
{
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 9) = &unk_287EDBFD0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
}

void IndexQueue::~IndexQueue(IndexQueue *this)
{
  EListQueue::~EListQueue(this);

  JUMPOUT(0x274379FF0);
}

void EListQueue::~EListQueue(EListQueue *this)
{
  EListQueue::~EListQueue(this);

  JUMPOUT(0x274379FF0);
}

{
  *this = &unk_287EDC090;
  EList::reset(this);

  ESList::~ESList(this);
}

void ESList::~ESList(ESList *this)
{
  *this = &unk_287EDC100;
  EList::reset(this);
}

{
  ESList::~ESList(this);

  JUMPOUT(0x274379FF0);
}

uint64_t createStreamArrays(uint64_t a1, int a2)
{
  if (a2 >= 1 && !**(*(a1 + 208) + 72))
  {
    StreamArrayList::build();
  }

  return 0;
}

void sub_26DD07D18(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = (v4 - 16);
    v7 = -v3;
    do
    {
      StreamArray::~StreamArray(v6);
      v6 = (v8 - 32);
      v7 += 32;
    }

    while (v7);
  }

  MEMORY[0x274379FE0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t StreamArrayList::addName(StreamArrayList *this, const char *a2)
{
  v2 = *(this + 5);
  if (v2 < *(this + 4))
  {
    v3 = *this;
    *(this + 5) = v2 + 1;
    StreamArray::setName((v3 + 32 * v2), a2);
  }

  return 0xFFFFFFFFLL;
}

BOOL addStreamArraySsValC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = *(a2 + 2);
  v8 = *(a3 + 2);
  return !StreamArrayList::appendValueToStream(*(*(a1 + 208) + 72), v7, *(a4 + 8), v8) || StreamArrayList::appendValueToStream(*(*(a1 + 208) + 72), v7, v6, v8) == 0;
}

uint64_t StreamArrayList::clearAll(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  for (i = 0; i < *(v3 + 8); ++i)
  {
    result = StreamArray::clear((*v3 + v4), a2);
    v4 += 32;
  }

  return result;
}

uint64_t StreamArrayList::findStream(StreamArrayList *this, const char *a2)
{
  v4 = 0;
  for (i = 0; i < *(this + 4); ++i)
  {
    if (!StreamArray::nameMatch((*this + v4), a2))
    {
      return i;
    }

    v4 += 32;
  }

  LOWORD(i) = -1;
  return i;
}

uint64_t stmarray_new(uint64_t result)
{
  if (result)
  {
    if (*(result + 208))
    {
      operator new();
    }
  }

  return result;
}

uint64_t stmarray_delete(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 208);
    if (v2)
    {
      v3 = *(v2 + 72);
      if (v3)
      {
        StreamArrayList::~StreamArrayList(*(v2 + 72));
      }

      result = MEMORY[0x274379FF0](v3, 0x1020C4034E03FFCLL);
      *(*(v1 + 208) + 72) = 0;
    }
  }

  return result;
}

void StreamArray::setName(StreamArray *this, const char *__s)
{
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x274379FE0](v3, 0x1000C8077774924);
  }

  strlen(__s);
  operator new[]();
}

uint64_t StreamArray::clear(TimeValueQueue *a1, uint64_t a2)
{
  result = TimeValueQueue::reset(a1);
  *(a1 + 3) = *(*(a2 + 208) + 80);
  return result;
}

void StreamArray::StreamArray(StreamArray *this)
{
  v1 = TimeValueQueue::TimeValueQueue(this, 0x12Cu);
  *(v1 + 2) = 0;
  *(v1 + 6) = 0;
}

void StreamArray::~StreamArray(StreamArray *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x274379FE0](v2, 0x1000C8077774924);
    *(this + 2) = 0;
  }

  TimeValueQueue::~TimeValueQueue(this);
}

uint64_t StreamArray::appendValue(StreamArray *this, unsigned int a2, int a3)
{
  v3 = *(this + 6);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (!v4)
  {
    return 0;
  }

  if (v5 <= 0xFFFE)
  {
    v9 = v5 | (a3 << 16);
LABEL_7:
    result = TimeValueQueue::push(this, v9);
    goto LABEL_8;
  }

  result = TimeValueQueue::push(this, (a3 << 16) | 0xFFFFu);
  if (result)
  {
    HIDWORD(v10) = a2;
    LODWORD(v10) = a2;
    v9 = v10 >> 16;
    goto LABEL_7;
  }

LABEL_8:
  *(this + 6) = a2;
  return result;
}

uint64_t StreamArray::fetchNext(StreamArray *this, unsigned int *a2, int *a3)
{
  if (TimeValueQueue::isEmpty(this))
  {
    return 0;
  }

  TimeValueQueue::pop(this, &v8);
  *a3 = SHIWORD(v8);
  if (v8 == 0xFFFF)
  {
    if (TimeValueQueue::isEmpty(this))
    {
      return 0;
    }

    TimeValueQueue::pop(this, &v8);
    v7 = HIWORD(v8) | (v8 << 16);
  }

  else
  {
    v7 = *(this + 7) + v8;
  }

  *a2 = v7;
  *(this + 7) = v7;
  return 1;
}

void StreamArrayList::~StreamArrayList(StreamArrayList *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 0;
      v6 = v2 + 32 * v4;
      do
      {
        StreamArray::~StreamArray((v6 + v5 - 32));
        v5 -= 32;
      }

      while (-32 * v4 != v5);
    }

    MEMORY[0x274379FE0](v3, 0x1030C803AA113E6);
    *this = 0;
  }
}

void sub_26DD08470(_Unwind_Exception *a1)
{
  if (32 - 32 * v2 != v3)
  {
    v6 = 32 - (v3 + 32 * v2);
    v7 = (v4 - 64);
    do
    {
      StreamArray::~StreamArray(v7);
      v7 = (v8 - 32);
      v6 += 32;
    }

    while (v6);
  }

  MEMORY[0x274379FE0](v1, 0x1030C803AA113E6);
  _Unwind_Resume(a1);
}

void TimeValueQueue::TimeValueQueue(TimeValueQueue *this, unsigned int a2)
{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 7) = a2;
  v3 = OUTLINED_FUNCTION_0_60(4 * a2);
  *this = v3;
  if (!v3)
  {
    *(this + 4) = 0;
  }
}

uint64_t TimeValueQueue::size(TimeValueQueue *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 += *(this + 4);
  }

  return v4;
}

void TimeValueQueue::~TimeValueQueue(TimeValueQueue *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *(this + 6) = 0;
    *this = 0;
  }
}

uint64_t TimeValueQueue::reset(TimeValueQueue *this)
{
  free(*this);
  result = OUTLINED_FUNCTION_0_60(4 * *(this + 7));
  *this = result;
  if (result)
  {
    *(this + 4) = *(this + 7);
    *(this + 10) = 0;
    return 1;
  }

  return result;
}

uint64_t TimeValueQueue::push(TimeValueQueue *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = *(this + 6);
  *(this + 6) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  v5 = *(this + 6);
  if (v5 == *(this + 4))
  {
    v5 = 0;
    *(this + 6) = 0;
  }

  if (v5 != *(this + 5) || TimeValueQueue::expand(this))
  {
    return 1;
  }

  v7 = *(this + 6);
  if (!v7)
  {
    v7 = *(this + 4);
  }

  result = 0;
  *(this + 6) = v7 - 1;
  return result;
}

uint64_t TimeValueQueue::expand(TimeValueQueue *this)
{
  result = *this;
  if (result)
  {
    v3 = *(this + 4);
    OUTLINED_FUNCTION_1_57();
    v7 = malloc_type_realloc(v4, v5, v6);
    memmove(&v7[4 * *(this + 4)], v7, 4 * *(this + 6));
    memmove(v7, &v7[4 * *(this + 5)], 4 * *(this + 4));
    if (v7)
    {
      *this = v7;
      *(this + 5) = 0;
      *(this + 6) = *(this + 4);
      *(this + 4) = 2 * v3;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TimeValueQueue::pop(uint64_t a1, _DWORD *a2)
{
  result = TimeValueQueue::peekHead(a1, a2);
  if (result)
  {
    v4 = *(a1 + 10);
    if (*(a1 + 8) == (v4 + 1))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 + 1;
    }

    *(a1 + 10) = v5;

    return TimeValueQueue::shrinkIfNeeded(a1);
  }

  return result;
}

uint64_t TimeValueQueue::peekHead(uint64_t a1, _DWORD *a2)
{
  if (!*a1 || *(a1 + 10) == *(a1 + 12))
  {
    return 0;
  }

  *a2 = *(*a1 + 4 * *(a1 + 10));
  return 1;
}

uint64_t TimeValueQueue::shrinkIfNeeded(const void **this)
{
  v2 = *(this + 6);
  v3 = *(this + 5);
  v4 = v2 - v3;
  if (v2 <= v3)
  {
    v9 = *(this + 4);
    v4 = v9 - v3 + v2;
    if (v9 <= *(this + 7) || v4 >= (v9 >> 1))
    {
      return 1;
    }

    memmove(*this + 4 * v9 + -4 * v3, *this, 4 * *(this + 6));
    v6 = *this;
    v11 = *(this + 5);
    v7 = *this + 4 * v11;
    v8 = 4 * (*(this + 4) - v11);
  }

  else
  {
    v5 = *(this + 4);
    if (v5 <= *(this + 7) || v4 >= (v5 >> 1))
    {
      return 1;
    }

    v6 = *this;
    v7 = *this + 4 * v3;
    v8 = 4 * v4;
  }

  memmove(v6, v7, v8);
  v12 = *(this + 4);
  v13 = *this;
  OUTLINED_FUNCTION_1_57();
  result = malloc_type_realloc(v15, *&v14 & 0x1FFFCLL, v16);
  if (!result)
  {
    return result;
  }

  *this = result;
  *(this + 5) = 0;
  *(this + 6) = v4;
  *(this + 4) = v12 >> 1;
  return 1;
}

_DWORD *TimeValueQueue::getElements(TimeValueQueue *this, unsigned int *a2)
{
  v4 = TimeValueQueue::size(this);
  result = OUTLINED_FUNCTION_0_60(4 * v4);
  if (result)
  {
    for (i = 0; v4 != i; ++i)
    {
      result[i] = *(*this + 4 * ((i + *(this + 5)) % *(this + 4)));
    }

    *a2 = v4;
  }

  return result;
}

void *OUTLINED_FUNCTION_0_60(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004052888210uLL);
}

uint64_t setUserDictInputStream(uint64_t a1, const char *a2)
{
  if (!a2 || !*a2)
  {
    return 3;
  }

  for (i = 0; i < num_streams(a1); ++i)
  {
    v5 = stream_name(i);
    if (!strcmp(v5, a2))
    {
      break;
    }
  }

  v6 = 3;
  if (num_streams(a1) != i)
  {
    *(*(a1 + 208) + 120) = i;
    if (single_letter_stream(i))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return v6;
}

uint64_t UserDict::buildHashTable(UserDict *this, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 256;
  }

  v4 = 1;
  v5 = hashNew(v3, 1, 1);
  *(this + 513) = v5;
  if (!v5)
  {
    return 0;
  }

  *(this + 1028) = 1;
  return v4;
}

uint64_t UserDict::UserDict(uint64_t a1)
{
  OUTLINED_FUNCTION_2_55(a1);
  UserDict::loadDictionary();
  return a1;
}

uint64_t UserDict::loadDictionary()
{
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_49();
  v8 = *MEMORY[0x277D85DE8];
  DictFile = UserDict::findDictFile(v3, v0, v7);
  if (DictFile == -1)
  {
    result = 1;
  }

  else
  {
    if (DictFile)
    {
      if (!*(v1 + 513) && !UserDict::buildHashTable(v1, (DictFile / 15)))
      {
        result = 2;
        goto LABEL_8;
      }

      UserDict::loadHashTable(v1, v2);
      strcpy(v1, v0);
    }

    result = 0;
  }

LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

off_t UserDict::findDictFile(UserDict *this, const char *a2, char *a3)
{
  if (fileFindInPath() && !stat(a3, &v5))
  {
    return v5.st_size;
  }

  else
  {
    return -1;
  }
}

uint64_t UserDict::loadHashTable(UserDict *a1, uint64_t a2)
{
  v10[72] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v10);
  Line = std::ifstream::open();
  while (UserDict::readNextLine(Line, v10, v9))
  {
    Line = UserDict::parseNextLine(a1, a2, v9, __s, v7);
    if (Line)
    {
      Line = UserDict::addOneEntry(a1, __s, v7);
    }
  }

  std::ifstream::close(v10);
  std::ifstream::~ifstream(v10);
  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 24;
  *a1 = MEMORY[0x277D82858] + 24;
  v3 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  std::istream::basic_istream[abi:ne200100](a1, (MEMORY[0x277D82808] + 8), a1 + 2);
  *a1 = v2;
  a1[53] = v3;
  MEMORY[0x274379ED0](a1 + 2);
  return a1;
}

void sub_26DD08E74(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x274379FC0](v1);
  _Unwind_Resume(a1);
}

BOOL UserDict::readNextLine(uint64_t a1, void *a2, _BYTE *a3)
{
  if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
  {
    return 0;
  }

  std::istream::getline[abi:ne200100](a2, a3, 704);
  return *a3 != 0;
}

uint64_t UserDict::parseNextLine(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4, uint64_t a5)
{
  while (1)
  {
    result = *a3;
    if (!*a3)
    {
      break;
    }

    if (!isspace(result))
    {
      v11 = *a3;
      if (!*a3)
      {
        return 0;
      }

      v12 = 0;
      do
      {
        if (v11 == 9 || v12 == 704)
        {
          break;
        }

        result = UserDict::proofCharacter(a1, a2, v11);
        if (!result)
        {
          return result;
        }

        *(a4 + v12) = a3[v12];
        v11 = a3[++v12];
      }

      while (v11);
      v13 = (a4 + v12);
      *(a4 + v12) = 0;
      v14 = &a3[v12];
      do
      {
        v15 = v13;
        if (v13 <= a4)
        {
          break;
        }

        --v13;
      }

      while (isspace(*(v15 - 1)));
      *v15 = 0;
      while (1)
      {
        result = *v14;
        if (result != 9 && result != 32)
        {
          break;
        }

        ++v14;
      }

      if (*v14)
      {
        v16 = 0;
        do
        {
          if (v16 == 704)
          {
            break;
          }

          if (isspace(result))
          {
            v17 = 32;
          }

          else
          {
            result = UserDict::proofCharacter(a1, a2, v14[v16]);
            if (!result)
            {
              return result;
            }

            v17 = v14[v16];
          }

          *(a5 + v16) = v17;
          LODWORD(result) = v14[++v16];
        }

        while (result);
        v18 = 1 - v16;
        v19 = (a5 + v16 + 1);
        do
        {
          v20 = *(v19 - 2);
          --v19;
        }

        while (v20 == 32 && v18++ != 0);
        *v19 = 0;
        return 1;
      }

      return result;
    }

    ++a3;
  }

  return result;
}

uint64_t UserDict::addOneEntry(UserDict *this, const char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 < 0x81)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 129;
  }

  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!v8)
  {
    return 2;
  }

  if (strlen(__s) < 0x81)
  {
    strcpy(v8, __s);
  }

  else
  {
    strncpy(v8, __s, 0x80uLL);
    if (strlen(__s) >= 0x80)
    {
      v8[128] = 0;
    }
  }

  v9 = strlen(a3);
  v10 = v9 < 0x201 ? v9 + 1 : 513;
  v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
  if (!v11)
  {
    return 2;
  }

  if (strlen(a3) < 0x201)
  {
    strcpy(v11, a3);
  }

  else
  {
    strncpy(v11, a3, 0x200uLL);
    if (strlen(a3) >= 0x200)
    {
      v11[512] = 0;
    }
  }

  inserted = hashInsertString(*(this + 513), v8, v11);
  result = 2;
  if (inserted)
  {
    *(this + 1028) = 2;
    return 0;
  }

  return result;
}

void std::ifstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));

    std::ios_base::setstate[abi:ne200100](v2, 4);
  }
}

uint64_t *std::ifstream::~ifstream(uint64_t *a1)
{
  std::ifstream::~ifstream(a1, MEMORY[0x277D82808]);
  MEMORY[0x274379FC0](a1 + 53);
  return a1;
}

uint64_t std::istream::getline[abi:ne200100](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::ios::widen[abi:ne200100]((a1 + *(*a1 - 24)), 10);

  return MEMORY[0x2821F7808](a1, a2, a3, v6);
}

uint64_t UserDict::proofCharacter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v13[1] = 0;
  v11 = &v12;
  v10 = 0;
  v9 = &v10;
  v13[0] = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  return non_unique_value(a2, *(*(a2 + 208) + 120), 0, v13, &v11, &v9, &v8, &v7, &v6, &v5, &v4);
}

uint64_t UserDict::saveDictionary(UserDict *this, const char *a2)
{
  v14[71] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(v14);
  std::ofstream::open();
  if (*(&v14[4] + *(v14[0] - 24)))
  {
    v10 = 1;
  }

  else
  {
    v4 = *(this + 513);
    if (v4)
    {
      if (hashIterConstruct(v13, v4))
      {
        do
        {
          v5 = hashIterString(v13);
          v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, v5);
          v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\t");
          v8 = hashIterRef(v13);
          v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, v8);
          std::endl[abi:ne200100]<char,std::char_traits<char>>(v9);
        }

        while (hashIterNext(v13));
      }

      std::ofstream::close(v14);
      chmod(a2, 0x180u);
    }

    else
    {
      std::ofstream::close(v14);
      chmod(a2, 0x180u);
    }

    v10 = 0;
  }

  std::ofstream::~ofstream(v14);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_26DD094CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ofstream::~ofstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 24;
  *a1 = MEMORY[0x277D82860] + 24;
  v3 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  std::ostream::basic_ostream[abi:ne200100](a1, (MEMORY[0x277D82810] + 8), a1 + 1);
  *a1 = v2;
  a1[52] = v3;
  MEMORY[0x274379ED0](a1 + 1);
  return a1;
}

void sub_26DD095A4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x274379FC0](v1);
  _Unwind_Resume(a1);
}

void std::ofstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));

    std::ios_base::setstate[abi:ne200100](v2, 4);
  }
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios::widen[abi:ne200100]((a1 + *(*a1 - 24)), 10);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *std::ofstream::~ofstream(uint64_t *a1)
{
  std::ofstream::~ofstream(a1, MEMORY[0x277D82810]);
  MEMORY[0x274379FC0](a1 + 52);
  return a1;
}

uint64_t UserDict::update(UserDict *this, const char *a2, const char *a3)
{
  OUTLINED_FUNCTION_4_49();
  v7 = *(v6 + 4104);
  if (!v7)
  {
    if (!UserDict::buildHashTable(v4, 256))
    {
      return 2;
    }

    v7 = *(v4 + 4104);
  }

  if (hashLookupString(v7, v5))
  {
    hashDeleteString(*(v4 + 4104), v5, 1, 1);
    if (!v3)
    {
      result = 0;
      *(v4 + 4112) = 2;
      return result;
    }
  }

  else if (!v3)
  {
    return 0;
  }

  return UserDict::addOneEntry(v4, v5, v3);
}

uint64_t UserDict::findFirst(UserDict *this, const char **a2, const char **a3)
{
  v4 = *(this + 513);
  if (!v4 || !hashIterConstruct(this + 4120, v4))
  {
    return 4;
  }

  *a2 = hashIterString(this + 4120);
  v7 = hashIterRef(this + 4120);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t UserDict::findNext(UserDict *this, const char **a2, const char **a3)
{
  OUTLINED_FUNCTION_4_49();
  if (!hashIterNext(v6 + 4120))
  {
    return 4;
  }

  *v5 = hashIterString(v4 + 4120);
  v7 = hashIterRef(v4 + 4120);
  result = 0;
  *v3 = v7;
  return result;
}

uint64_t UserDict::lookup(UserDict *this, char *a2)
{
  if (a2 && *a2 && (v2 = *(this + 513)) != 0)
  {
    return hashLookupString(v2, a2);
  }

  else
  {
    return 0;
  }
}

void DictionarySet::DictionarySet()
{
  OUTLINED_FUNCTION_0_61();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_5_49();
}

{
  OUTLINED_FUNCTION_0_61();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_5_49();
}

void DictionarySet::~DictionarySet(DictionarySet *this)
{
  OUTLINED_FUNCTION_0_61();
  if (*v2)
  {
    UserDict::~UserDict(*v2);
  }

  OUTLINED_FUNCTION_6_48();
  if (*(v1 + 8))
  {
    UserDict::~UserDict(*(v1 + 8));
  }

  OUTLINED_FUNCTION_6_48();
  if (*(v1 + 16))
  {
    UserDict::~UserDict(*(v1 + 16));
  }

  OUTLINED_FUNCTION_6_48();
  v3 = *(*(v1 + 32) + 208);
  if (**(v1 + 24) == *(v3 + 112))
  {
    *(v3 + 112) = 0;
  }
}

uint64_t DictionarySet::load(uint64_t a1, int a2)
{
  v2 = *(a1 + 8 * a2);
  v3 = *(a1 + 32);
  return UserDict::loadDictionary();
}

uint64_t UserDict::lookupAndTranslate(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (!*(a1 + 4104))
  {
    return 2;
  }

  if (!sync_in_stm(a2, *(a2[26] + 120), a3) || !sync_in_stm(a2, *(a2[26] + 120), a4) || !extract_string(a2, *(a2[26] + 120), a3, a4, (a1 + 4144), 80))
  {
    return 3;
  }

  v8 = hashLookupString(*(a1 + 4104), (a1 + 4144));
  if (!v8)
  {
    return 5;
  }

  v9 = v8;
  del_two_point(a2, *(a2[26] + 120), a3, a4);
  *(a2[23] + 452) = 1;
  if (insert_string(a2, *(a2[26] + 120), a4, v9))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t UserDict::lookupUndo(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (!*(a1 + 4144))
  {
    return 5;
  }

  del_two_point(a2, *(a2[26] + 120), a3, a4);
  *(a2[23] + 452) = 1;
  if (insert_string(a2, *(a2[26] + 120), a4, (a1 + 4144)))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x274379EE0](a1 + 2);

  return std::istream::~istream();
}

int __istype(__darwin_ct_rune_t _c, unint64_t _f)
{
  if (_c <= 0x7F)
  {
    return (*(MEMORY[0x277D85DE0] + 4 * _c + 60) & _f) != 0;
  }

  else
  {
    return __maskrune(_c, _f) != 0;
  }
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x274379EE0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t *std::istream::basic_istream[abi:ne200100](uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  a1[1] = 0;
  std::ios::init[abi:ne200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void std::ios::init[abi:ne200100](std::ios_base *a1, void *a2)
{
  std::ios_base::init(a1, a2);
  a1[1].__vftable = 0;
  a1[1].__fmtflags_ = -1;
}

uint64_t std::ios::widen[abi:ne200100](const std::ios_base *a1, uint64_t a2)
{
  std::ios_base::getloc(a1);
  v3 = std::use_facet[abi:ne200100]<std::ctype<char>>(&v6);
  v4 = (v3->__vftable[2].~facet_0)(v3, a2);
  std::locale::~locale(&v6);
  return v4;
}

uint64_t *std::ostream::basic_ostream[abi:ne200100](uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  std::ios::init[abi:ne200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x274379F30](v12, a1);
  if (v12[0] == 1)
  {
    v6 = (a1 + *(*a1 - 24));
    rdbuf = v6->__rdbuf_;
    fmtflags = v6->__fmtflags_;
    v9 = std::ios::fill[abi:ne200100](v6);
    if ((fmtflags & 0xB0) == 0x20)
    {
      v10 = a2 + a3;
    }

    else
    {
      v10 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(rdbuf, a2, v10, a2 + a3, v6, v9))
    {
      std::ios_base::setstate[abi:ne200100]((a1 + *(*a1 - 24)), 5);
    }
  }

  MEMORY[0x274379F40](v12);
  return a1;
}

void sub_26DD0A2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x274379F40](&a9);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v9 + *(*v9 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26DD0A2B8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::string::value_type __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if ((a3 - a2 < 1 || (*(*a1 + 96))(a1) == a3 - a2) && (v12 < 1 || ((std::string::__init(&v17, v12, __c), (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v13 = &v17) : (v13 = v17.__r_.__value_.__r.__words[0]), v14 = (*(*v6 + 96))(v6, v13, v12), std::string::~string(&v17), v14 == v12)) && ((v15 = a4 - a3, v15 < 1) || (*(*v6 + 96))(v6, a3, v15) == v15))
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t std::ios::fill[abi:ne200100](const std::ios_base *a1)
{
  fmtflags = a1[1].__fmtflags_;
  if (fmtflags == -1)
  {
    fmtflags = std::ios::widen[abi:ne200100](a1, 32);
    a1[1].__fmtflags_ = fmtflags;
  }

  return fmtflags;
}

uint64_t OUTLINED_FUNCTION_1_58(uint64_t result)
{
  *(result + 4104) = 0;
  *(result + 4112) = 0;
  *result = 0;
  *(result + 4144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_55(uint64_t result)
{
  *(result + 4104) = 0;
  *(result + 4112) = 0;
  *result = 0;
  *(result + 4144) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_49()
{

  operator new();
}

void OUTLINED_FUNCTION_6_48()
{

  JUMPOUT(0x274379FF0);
}

void *settvar_s()
{
  OUTLINED_FUNCTION_7_48();
  OUTLINED_FUNCTION_1_59(v1);
  if (v2)
  {
    OUTLINED_FUNCTION_9_47();
  }

  v3 = *v0;
  v4 = OUTLINED_FUNCTION_4_50();
  return vinitflds(v4, v5, v6, v7);
}

void *settvar_l()
{
  OUTLINED_FUNCTION_7_48();
  OUTLINED_FUNCTION_1_59(v1);
  if (v2)
  {
    OUTLINED_FUNCTION_9_47();
  }

  v3 = *v0;
  v4 = OUTLINED_FUNCTION_4_50();
  return vinitflds(v4, v5, v6, v7);
}

void *settvar_lng()
{
  OUTLINED_FUNCTION_7_48();
  OUTLINED_FUNCTION_1_59(v1);
  if (v2)
  {
    OUTLINED_FUNCTION_9_47();
  }

  v3 = *v0;
  v4 = OUTLINED_FUNCTION_4_50();
  return vinitflds(v4, v5, v6, v7);
}

void *settvar_i()
{
  OUTLINED_FUNCTION_7_48();
  OUTLINED_FUNCTION_1_59(v1);
  if (v2)
  {
    OUTLINED_FUNCTION_9_47();
  }

  v3 = *v0;
  v4 = OUTLINED_FUNCTION_4_50();
  return vinitflds(v4, v5, v6, v7);
}

void *settvar_f()
{
  OUTLINED_FUNCTION_7_48();
  OUTLINED_FUNCTION_1_59(v1);
  if (v2)
  {
    OUTLINED_FUNCTION_9_47();
  }

  v3 = *v0;
  v4 = OUTLINED_FUNCTION_4_50();
  return vinitflds(v4, v5, v6, v7);
}

void settvar_v(uint64_t a1, __int16 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_1_59(a1);
  if (v6)
  {
    save_var(a1, a2);
  }

  v7[0] = 0;
  v7[1] = 0;
  vinitloc_new(a1, v7, a3);
  vinitflds(a1, *a2, a2 + 8, v7[0]);
  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_46();
  }
}

void copyvar(uint64_t a1, __int16 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_1_59(a1);
  if (v6)
  {
    save_var(a1, a2);
  }

  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  vinitloc_new(a1, v8, a2);
  vinitloc_new(a1, v7, a3);
  vassign(a1, v8, v7);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_46();
  }
}

void c_assvar(uint64_t a1, __int16 *a2)
{
  v3 = OUTLINED_FUNCTION_1_59(a1);
  if (v4)
  {
    save_var(v3, a2);
  }

  if ((*a2 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_46();
  }
}

void assok(uint64_t a1, __int16 *a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

void noass(uint64_t a1, __int16 *a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

__n128 savescptr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 192);
  if (*(v6 + 8096))
  {
    save_var(a1, a3);
    v6 = *(a1 + 192);
  }

  *(a3 + 8) = *(v6 + 8080);
  v7 = *(a1 + 200);
  v8 = *(v7 + 288);
  v9 = *(v7 + 1720) - v8;
  v10 = *(v7 + 1728);
  *v9 = 3;
  *(v9 + 8) = a2;
  v11 = *(v7 + 284);
  v12 = v9 - v11;
  *(v7 + 1720) = v12;
  *(v7 + 1728) = v10 - (v8 + v11);
  *v12 = 1;
  result = *(v6 + 8080);
  *(v12 + 8) = result;
  return result;
}

uint64_t savetok(uint64_t a1, __int16 *a2)
{
  v16[0] = 0;
  v16[1] = 0;
  v15 = 0;
  v3 = *(a1 + 192);
  v4 = *(v3 + 8080);
  v5 = *(v3 + 8088);
  v6 = (*(v4 + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (!v6)
  {
LABEL_4:
    v8 = 1;
    result = 1;
    if (*a2 < 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  while ((*v6 & 2) != 0)
  {
    v6 = (*&v6[8 * v5 + 24] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  v10 = OUTLINED_FUNCTION_4_50();
  vinitloc_new(v10, v11, v12);
  v13 = *(a1 + 192) + 4096;
  LOWORD(v15) = *(*(a1 + 192) + 8088);
  v14 = v6 + 16;
  BYTE2(v15) = 0;
  if (*(v13 + 4000))
  {
    vpush_var(a1, v16);
  }

  vassign(a1, v16, &v14);
  v8 = 0;
  result = 0;
  if ((*a2 & 0x80000000) == 0)
  {
LABEL_5:
    a2[1] = -1;
    return v8;
  }

  return result;
}

void dur_ass(uint64_t *a1, signed __int8 a2, __int16 *a3, int a4)
{
  v6 = a2;
  if (vrange_2pt(a1, a1 + 14, (a1 + 18), a2, a4))
  {
    if (*a3 < 0)
    {
      return;
    }
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v10 = 0;
    v12[0] = &v10;
    v12[1] = 65533;
    v7 = OUTLINED_FUNCTION_4_50();
    vinitloc_new(v7, v8, v9);
    vassign(a1, v12, v11);
    vdur_ass(a1, a1 + 14, a1 + 18, v6, v10);
    if (*a3 < 0)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_11_46();
}

void setscan_l(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_49(a1))
  {
    v2 = *(v1 + 112);
    if (v2)
    {
      v3 = *(v1 + 192);
      OUTLINED_FUNCTION_2_56(v2);
      if (v5)
      {
        OUTLINED_FUNCTION_0_62(v4);
        *v6 = 256;
      }
    }
  }
}

uint64_t vtstsnc_tv(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return 0;
  }

  v3 = vnormalize(a1, a2);
  result = 1;
  if (v3 >= 3)
  {
    *(a2 + 24) = 1;
    return 0;
  }

  return result;
}

void setscan_r(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_49(a1))
  {
    v2 = *(v1 + 112);
    if (v2)
    {
      v3 = *(v1 + 192);
      OUTLINED_FUNCTION_2_56(v2);
      if (v5)
      {
        OUTLINED_FUNCTION_0_62(v4);
        *v6 = 257;
      }
    }
  }
}

uint64_t lpta_loadp_setscan_l(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_3_52(a1, a2))
  {
    if (*v4)
    {
      v6 = *(v3 + 192);
      OUTLINED_FUNCTION_2_56(*v4);
      if (v8)
      {
        v2 = 0;
        OUTLINED_FUNCTION_0_62(v7);
        *v9 = 256;
      }
    }
  }

  return v2;
}

uint64_t lpta_loadp_setscan_r(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_3_52(a1, a2))
  {
    if (*v4)
    {
      v6 = *(v3 + 192);
      OUTLINED_FUNCTION_2_56(*v4);
      if (v8)
      {
        v2 = 0;
        OUTLINED_FUNCTION_0_62(v7);
        *v9 = 257;
      }
    }
  }

  return v2;
}

uint64_t rpta_loadp_setscan_l(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_5_50(a1, a2))
  {
    v5 = *(v3 + 112);
    if (v5)
    {
      OUTLINED_FUNCTION_10_46(v5);
      if (v7)
      {
        OUTLINED_FUNCTION_8_48(v6);
        *v8 = 256;
      }
    }
  }

  return v2;
}

uint64_t rpta_loadp_setscan_r(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_5_50(a1, a2))
  {
    v5 = *(v3 + 112);
    if (v5)
    {
      OUTLINED_FUNCTION_10_46(v5);
      if (v7)
      {
        OUTLINED_FUNCTION_8_48(v6);
        *v8 = 257;
      }
    }
  }

  return v2;
}

void setscan_nof_l(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_49(a1))
  {
    v2 = *(v1 + 112);
    if (v2)
    {
      v3 = *(v1 + 192);
      OUTLINED_FUNCTION_2_56(v2);
      if (v5)
      {
        OUTLINED_FUNCTION_0_62(v4);
        *v6 = 0;
      }
    }
  }
}

uint64_t setscan_nof_r(uint64_t a1)
{
  if (OUTLINED_FUNCTION_6_49(a1))
  {
    return 1;
  }

  v3 = *(v1 + 112);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v1 + 192);
  OUTLINED_FUNCTION_2_56(v3);
  result = 1;
  if (v6)
  {
    OUTLINED_FUNCTION_0_62(v5);
    *v8 = v7;
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = *(a2 + 8);
  *(a1 + 136) = 1;
  *(a1 + 128) = 0;

  return vtstsnc_tv(a1, a1 + 112);
}

uint64_t OUTLINED_FUNCTION_5_50(uint64_t a1, uint64_t a2)
{
  *(a1 + 168) = 1;
  *(a1 + 144) = *(a2 + 8);
  *(a1 + 128) = 0;

  return vtstsnc_tv(a1, a1 + 112);
}

uint64_t OUTLINED_FUNCTION_6_49(uint64_t a1)
{

  return vtstsnc_tv(a1, a1 + 112);
}

void *OUTLINED_FUNCTION_9_47()
{

  return save_var(v1, v0);
}

uint64_t chstream(void *a1, uint64_t a2, unsigned int a3)
{
  while (1)
  {
    v6 = a1[24];
    if (*(*(v6 + 8080) + 8 * (*(v6 + 9084) + a3)))
    {
      break;
    }

    v7 = 1;
    if (!vscanadv(a1, 0, 1))
    {
      return v7;
    }
  }

  v7 = 0;
  v8 = a1[25];
  v9 = *(v8 + 288);
  v10 = *(v8 + 1720) - v9;
  *v10 = 3;
  v11 = *(v8 + 1728);
  *(v10 + 8) = a2;
  v12 = *(v8 + 284);
  v13 = v10 - v12;
  *(v8 + 1720) = v13;
  *(v8 + 1728) = v11 - (v9 + v12);
  *v13 = 1;
  *(v13 + 8) = *(v6 + 8080);
  *(a1[35] + *(a1[33] + a3)) = 1;
  *(a1[24] + 8088) = a3;
  return v7;
}

BOOL conj_merge(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = visleft(a1, *(*(a1 + 192) + 8080), v4);
  v6 = *(a1 + 192);
  v7 = *(v6 + 8080);
  if (v5)
  {
    v8 = v6 + 4096;
    while (v4 != v7)
    {
      if (!v4 || (*v4 & 2) == 0)
      {
        return 1;
      }

      v4 = (*&v4[8 * *(v8 + 3992) + 24] & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (*(v8 + 3993))
    {
      return 0;
    }

    goto LABEL_17;
  }

  v9 = visright(a1, v7, v4);
  v10 = *(a1 + 192);
  v7 = *(v10 + 8080);
  if (v9)
  {
    while (v4 != v7)
    {
      if (!v4 || (*v4 & 2) == 0)
      {
        return 1;
      }

      v4 = (*&v4[8 * *(v10 + 9084) + 8 * *(v10 + 8088)] & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (*(v10 + 8089) != 1)
    {
      return 0;
    }

LABEL_17:
    *(a2 + 8) = v7;
    return 0;
  }

  return v7 != v4;
}

uint64_t proj_def_mult(uint64_t result, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = result;
  v7 = a2;
  if (a2)
  {
    do
    {
      *(v6 + 136) = 1;
      *(v6 + 112) = *(a4 + 8);
      *(v6 + 128) = 0;
      v8 = *a3++;
      result = proj_def();
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t proj_def()
{
  OUTLINED_FUNCTION_5_51();
  if (!vsync_tv(v2, v3) || (result = vdef_proj(v0, *(v0 + 112), v1), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t proj_l(uint64_t a1)
{
  if (!vsync_tv(a1, a1 + 144) || (v2 = OUTLINED_FUNCTION_19_41(), result = vproj_l(v2, v3, v4, v5), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t proj_r()
{
  OUTLINED_FUNCTION_5_51();
  if (!vsync_tv(v1, v2) || (v3 = OUTLINED_FUNCTION_19_41(), result = vproj_r(v3, v4, v5, v6), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t merge(uint64_t a1)
{
  if (!vsync_tv(a1, a1 + 112) || !vsync_tv(a1, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  if (!vmergable(a1, *(a1 + 112), *(a1 + 144)))
  {
    forceErrorBacktrack(a1);
  }

  v2 = *(a1 + 112);
  v3 = *(a1 + 144);

  return vmerge(a1, v2, v3);
}

uint64_t initdelta(uint64_t a1, unsigned int a2, char *a3)
{
  if (a2)
  {
    if (*(a1 + 288) == a2)
    {
      freeDeltaHeapTo(a1, *(*(a1 + 200) + 8), 0);
      deltaReinit(a1, 1);
    }

    else
    {
      v7 = a2;
      do
      {
        if (!vinit_stm(a1, *a3))
        {
          forceErrorBacktrack(a1);
        }

        --v7;
        ++a3;
      }

      while (v7);
    }
  }

  else
  {
    for (i = 0; i < *(a1 + 288); ++i)
    {
      if (!vinit_stm(a1, i))
      {
        forceErrorBacktrack(a1);
      }
    }
  }

  return vscaninit(a1);
}

uint64_t delete_1pt()
{
  OUTLINED_FUNCTION_5_51();
  if (!vsync_tv(v2, v3) || (result = vdel_1pt(v0, v1, *(v0 + 112)), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t delete_2pt(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_1_60();
  if (vrange_2pt(v4, v5, v6, v7, v8))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_49();
  vdel_2pt(a1, a2, v10, v11);
  return 0;
}

uint64_t mark_v(uint64_t a1, unsigned int a2, int a3, __int16 *a4)
{
  OUTLINED_FUNCTION_1_60();
  if (vrange_2pt(v8, v9, v10, v11, v12))
  {
    v13 = 1;
    result = 1;
    if (*a4 < 0)
    {
      return result;
    }

    goto LABEL_3;
  }

  v31 = 0;
  v32 = 0;
  vinitloc_new(a1, &v31, a4);
  if (v32 == *&vstmtbl[12 * a2 + 1][40 * a3 + 30])
  {
    v23 = OUTLINED_FUNCTION_12_45(v15, v16, v17, v18, v19, v20, v21, v22, v31);
    if (v32 >= 0xFFFAu)
    {
      OUTLINED_FUNCTION_12_45(v23, v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  v13 = 0;
  result = 0;
  if ((*a4 & 0x80000000) == 0)
  {
LABEL_3:
    a4[1] = -1;
    return v13;
  }

  return result;
}

uint64_t mark_s()
{
  OUTLINED_FUNCTION_4_51();
  v13 = v0;
  OUTLINED_FUNCTION_1_60();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_63(vstmtbl);
  if (v7 == -1)
  {
    OUTLINED_FUNCTION_14_45();
    OUTLINED_FUNCTION_7_49(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_l()
{
  OUTLINED_FUNCTION_4_51();
  v13 = v0;
  OUTLINED_FUNCTION_1_60();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_63(vstmtbl);
  if (v7 == -2)
  {
    OUTLINED_FUNCTION_14_45();
    OUTLINED_FUNCTION_7_49(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_lng()
{
  OUTLINED_FUNCTION_4_51();
  v13 = v0;
  OUTLINED_FUNCTION_1_60();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_63(vstmtbl);
  if (v7 == -3)
  {
    OUTLINED_FUNCTION_14_45();
    OUTLINED_FUNCTION_7_49(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_i()
{
  OUTLINED_FUNCTION_4_51();
  v13 = v0;
  OUTLINED_FUNCTION_1_60();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_63(vstmtbl);
  if (v7 == -4)
  {
    OUTLINED_FUNCTION_14_45();
    OUTLINED_FUNCTION_7_49(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_f()
{
  OUTLINED_FUNCTION_4_51();
  v13 = v0;
  OUTLINED_FUNCTION_1_60();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_63(vstmtbl);
  if (v7 == -5)
  {
    OUTLINED_FUNCTION_14_45();
    OUTLINED_FUNCTION_7_49(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t insert_2pt(uint64_t *a1, unsigned int a2, int a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_1_60();
  if (vrange_2pt(v8, v9, v10, v11, v12))
  {
    return 1;
  }

  visnonseq(a1, a2, a1[14], a1[18]);
  if (ins_tokens(a1, a2, a4, a3))
  {
    return 0;
  }

  else
  {
    return 245;
  }
}

void insert_2ptv()
{
  OUTLINED_FUNCTION_3_53();
  if (vrange_2pt(v5, v5 + 14, (v5 + 18), v3, v6))
  {
    if ((*v0 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_9_48();
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_47();
    if (v4 < 0 && (v7 = STMTYP(v3), v4 != v7))
    {
      STMTYP(v3);
      OUTLINED_FUNCTION_10_47();
      switch(v18)
      {
        case 0:
          v19 = v1[24];
          v20 = 8256;
          goto LABEL_18;
        case 1:
        case 3:
          v19 = v1[24];
          v20 = 8242;
          goto LABEL_18;
        case 2:
          v19 = v1[24];
          v20 = 8200;
          goto LABEL_18;
        case 4:
          v19 = v1[24];
          v20 = 8194;
LABEL_18:
          v31 = (v19 + v20);
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_2_57(vstmtbl, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_16_44(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_8_49();
      v17 = &v31;
    }

    else
    {
      OUTLINED_FUNCTION_6_50(v7, v8, v9, v10, v11, v12, v13, v14, v29);
      OUTLINED_FUNCTION_8_49();
      v17 = &v29;
    }

    if (!vins_tok(v1, v2, v15, v16, v17))
    {
      forceErrorBacktrack(v1);
    }

    if ((*v0 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_9_48();
    }
  }
}

uint64_t insert_l(uint64_t a1)
{
  if (!vrange_l() || (result = OUTLINED_FUNCTION_15_44(), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t insert_r(uint64_t a1)
{
  OUTLINED_FUNCTION_1_60();
  if (!vrange_r() || (result = OUTLINED_FUNCTION_15_44(), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

void insert_lv()
{
  OUTLINED_FUNCTION_3_53();
  if (!vrange_l())
  {
    forceErrorBacktrack(v1);
  }

  OUTLINED_FUNCTION_11_47();
  if (v4 < 0 && (v5 = STMTYP(v3), v4 != v5))
  {
    STMTYP(v3);
    OUTLINED_FUNCTION_10_47();
    switch(v16)
    {
      case 0:
        v17 = v1[24];
        v18 = 8256;
        goto LABEL_16;
      case 1:
      case 3:
        v17 = v1[24];
        v18 = 8242;
        goto LABEL_16;
      case 2:
        v17 = v1[24];
        v18 = 8200;
        goto LABEL_16;
      case 4:
        v17 = v1[24];
        v18 = 8194;
LABEL_16:
        v29 = (v17 + v18);
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_2_57(vstmtbl, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_16_44(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_8_49();
    v15 = &v29;
  }

  else
  {
    OUTLINED_FUNCTION_6_50(v5, v6, v7, v8, v9, v10, v11, v12, v27);
    OUTLINED_FUNCTION_8_49();
    v15 = &v27;
  }

  if (!vins_tok(v1, v2, v13, v14, v15))
  {
    forceErrorBacktrack(v1);
  }

  if ((*v0 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_48();
  }
}

void insert_rv()
{
  OUTLINED_FUNCTION_3_53();
  if (!vrange_r())
  {
    forceErrorBacktrack(v1);
  }

  OUTLINED_FUNCTION_11_47();
  if (v4 < 0 && (v5 = STMTYP(v3), v4 != v5))
  {
    STMTYP(v3);
    OUTLINED_FUNCTION_10_47();
    switch(v16)
    {
      case 0:
        v17 = v1[24];
        v18 = 8256;
        break;
      case 1:
      case 3:
        v17 = v1[24];
        v18 = 8242;
        break;
      case 2:
        v17 = v1[24];
        v18 = 8200;
        break;
      case 4:
        v17 = v1[24];
        v18 = 8194;
        break;
      default:
        forceErrorBacktrack(v1);
    }

    OUTLINED_FUNCTION_2_57(vstmtbl, v27, v28, v17 + v18, v30, v31);
    OUTLINED_FUNCTION_16_44(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_8_49();
    v15 = &v29;
  }

  else
  {
    OUTLINED_FUNCTION_6_50(v5, v6, v7, v8, v9, v10, v11, v12, v27);
    OUTLINED_FUNCTION_8_49();
    v15 = &v27;
  }

  if (!vins_tok(v1, v2, v13, v14, v15))
  {
    forceErrorBacktrack(v1);
  }

  if ((*v0 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_48();
  }
}

uint64_t generate()
{
  OUTLINED_FUNCTION_5_51();
  if (!vprt_range(v2, v3, v2 + 144) || (result = vgen(v0, v0 + 112, (v0 + 144), *(v0 + 192) + 8160, v1), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

void gendef_framedur(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_18_41(a1);
  OUTLINED_FUNCTION_13_45(v2, v3, v4);
  vassign(v1, &v6, &v7);
  OUTLINED_FUNCTION_20_39(8152);
  if ((v5 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_48();
  }
}

uint64_t gendef_timestm(uint64_t result, char a2)
{
  v2 = *(result + 192) + 4096;
  *(v2 + 4040) = a2;
  *(v2 + 4056) |= 2u;
  return result;
}

uint64_t gendef_params(uint64_t a1)
{
  OUTLINED_FUNCTION_17_42(a1);
  *(v3 + 4041) = v5;
  if ((*(v3 + 4056) & 4) != 0)
  {
    v6 = *(v4 + 8144);
  }

  else
  {
    v6 = dynaBufNew(v2);
    *(v4 + 8144) = v6;
  }

  for (result = dynaBufReset(v6); v2; --v2)
  {
    v8 = *v1++;
    result = dynaBufAddChar(*(v4 + 8144), v8, 0);
  }

  *(v3 + 4056) |= 4u;
  return result;
}

void gencur_framedur(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_18_41(a1);
  OUTLINED_FUNCTION_13_45(v2, v3, v4);
  vassign(v1, &v6, &v7);
  OUTLINED_FUNCTION_20_39(8184);
  if ((v5 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_48();
  }
}

uint64_t gencur_timestm(uint64_t result, char a2)
{
  v2 = *(result + 192) + 4096;
  *(v2 + 4072) = a2;
  *(v2 + 4088) |= 2u;
  return result;
}

uint64_t gencur_params(uint64_t a1)
{
  OUTLINED_FUNCTION_17_42(a1);
  *(v3 + 4073) = v5;
  if ((*(v3 + 4088) & 4) != 0)
  {
    v6 = *(v4 + 8176);
  }

  else
  {
    v6 = dynaBufNew(v2);
    *(v4 + 8176) = v6;
  }

  for (result = dynaBufReset(v6); v2; --v2)
  {
    v8 = *v1++;
    result = dynaBufAddChar(*(v4 + 8176), v8, 0);
  }

  *(v3 + 4088) |= 4u;
  return result;
}

void OUTLINED_FUNCTION_2_57(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  a6 = *(*(a1 + 96 * v8 + 8) + 32);

  vinitloc_new(v7, &a2, v6);
}

void OUTLINED_FUNCTION_6_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  vinitloc_new(v10, &a9, v9);
}

uint64_t OUTLINED_FUNCTION_7_49(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  return vmark(v8, v7, v6, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_12_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = v11[14];
  v14 = v11[18];

  return vmark(v11, v10, v9, v13, v14, a9);
}

void OUTLINED_FUNCTION_13_45(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  vinitloc_new(a1, va, v3);
}

uint64_t OUTLINED_FUNCTION_15_44()
{

  return ins_tokens(v0, v3, v1, v2);
}

void OUTLINED_FUNCTION_16_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, void *a11)
{

  vassign(v11, &a11, &a9);
}

uint64_t OUTLINED_FUNCTION_19_41()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  return v0;
}

uint64_t ccode_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x2460uLL, 0x10F004041F5ADEFuLL);
  *(a1 + 192) = v2;
  bzero(v2, 0x2460uLL);

  return ccode_misc_new(a1);
}

void ccode_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 192);
    if (v2)
    {
      bzero(v2, 0x2460uLL);
      free(*(a1 + 192));
      *(a1 + 192) = 0;
    }
  }
}

void forceErrorBacktrack(uint64_t a1)
{
  v1 = *(a1 + 192);
  *(v1 + 8012) = 1;
  longjmp(*(v1 + 8016), 1);
}

void get_parm(uint64_t a1, uint64_t a2, __int16 *a3, __int16 a4)
{
  v18[0] = 0;
  v18[1] = 0;
  *a2 = a4;
  switch(a4)
  {
    case -6:
      *(a2 + 8) = *(a3 + 1);
      v6 = *(a1 + 192);
      v7 = *v6;
      if (v7 <= 998)
      {
        *v6 = v7 + 1;
        *&v6[2 * v7 + 2] = a2;
      }

      return;
    case -5:
      OUTLINED_FUNCTION_2_58();
      if (v10)
      {
        v16 = OUTLINED_FUNCTION_3_54();
        goto LABEL_28;
      }

      if (v15 == 65532)
      {
        v16 = a3[1];
        goto LABEL_28;
      }

      if (v15 == 65533)
      {
        v16 = COERCE__INT64(OUTLINED_FUNCTION_3_54());
LABEL_28:
        *(a2 + 8) = v16;
        return;
      }

      if ((v15 & 0x80000000) == 0)
      {
        vinitloc_new(v14, v18, a3);
        *(a2 + 8) = *v18[0];
        goto LABEL_31;
      }

      return;
    case -4:
      OUTLINED_FUNCTION_2_58();
      if (v10)
      {
        v17 = OUTLINED_FUNCTION_3_54();
      }

      else
      {
        if (v9 != 65532)
        {
          if (v9 == 65533)
          {
            *(a2 + 2) = *(a3 + 1);
          }

          else if ((v9 & 0x80000000) == 0)
          {
            vinitloc_new(v8, v18, a3);
            *(a2 + 2) = *v18[0];
            goto LABEL_31;
          }

          return;
        }

        LOWORD(v17) = a3[1];
      }

      *(a2 + 2) = v17;
      return;
    case -3:
      OUTLINED_FUNCTION_2_58();
      if (v10)
      {
        v13 = OUTLINED_FUNCTION_3_54();
        goto LABEL_24;
      }

      if (v12 == 65532)
      {
        v13 = a3[1];
        goto LABEL_24;
      }

      if (v12 == 65533)
      {
        v13 = *(a3 + 1);
LABEL_24:
        *(a2 + 8) = v13;
        return;
      }

      if ((v12 & 0x80000000) == 0)
      {
        vinitloc_new(v11, v18, a3);
        *(a2 + 8) = *v18[0];
LABEL_31:
        if ((*a3 & 0x80000000) == 0)
        {
          a3[1] = -1;
        }
      }

      return;
    default:
      return;
  }
}

void vinitloc_new(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v5 = *a3;
  if (v5 < 0)
  {
    *(a2 + 8) = v5;
    v9 = v5 + 6;
    if (v9 > 3u)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    v10 = (a3 + *&asc_26DD316C8[8 * v9]);
    goto LABEL_7;
  }

  v6 = a3[1];
  if (v6 == -1)
  {
    v8 = 0;
    *(a2 + 8) = v5;
    v10 = a3 + 8;
LABEL_7:
    *a2 = v10;
    goto LABEL_9;
  }

  *a2 = (*&vstmtbl[12 * *a3 + 2][8 * v6])(a3 + 8);
  v7 = &vstmtbl[12 * *a3 + 1][40 * v6];
  *(a2 + 8) = *(v7 + 15);
  v8 = v7[32];
LABEL_9:
  *(a2 + 10) = v8;
}

uint64_t push_ptr_init(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = -6;
  v2 = *(a1 + 192);
  v3 = *v2;
  if (v3 > 998)
  {
    return 0;
  }

  *v2 = v3 + 1;
  *&v2[2 * v3 + 2] = a2;
  return 1;
}

uint64_t set_saved_ptrs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 8 * (*(result + 16) & ~(*(result + 16) >> 31));
  while (v4 != v3)
  {
    v5 = *(*(result + 24) + v3);
    if (*v5 == a2)
    {
      *v5 = a3;
    }

    v3 += 8;
  }

  v6 = *(result + 192);
  v7 = v6[2002];
  v10 = *v6;
  v8 = v6 + 2;
  v9 = v10;
  while (v9 >= 1)
  {
    for (i = v7; i < v9; ++i)
    {
      v12 = *&v8[2 * i];
      if (*(v12 + 8) == a2)
      {
        *(v12 + 8) = a3;
      }
    }

    v9 = v7 - 2;
    v7 = v8[2 * v7 - 2];
  }

  return result;
}

uint64_t for_loop_preamble(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 192);
  v6 = v5 + 4096;
  *(v5 + 8056) = a3;
  *(v5 + 8064) = a2;
  *(v5 + 8096) = 0;
  *(a1 + 136) = 1;
  v7 = *(a5 + 8);
  *(a1 + 112) = v7;
  if (!v7 || (*(v7 + 8 * (*(v5 + 9084) + a4)) & 1) == 0)
  {
    return 0;
  }

  *(v5 + 8080) = v7;
  *(v5 + 8088) = a4;
  v8 = 1;
  *(v6 + 3994) = 1;
  *(*(a1 + 280) + *(*(a1 + 264) + a4)) = 1;
  return v8;
}

uint64_t vback(void *a1, int a2)
{
  if (*(a1[24] + 8012))
  {
    return -1;
  }

  while (2)
  {
    v5 = a1[25];
    v6 = *(v5 + 1720);
    switch(*v6)
    {
      case 0:
        v7 = *(v5 + 288);
        OUTLINED_FUNCTION_0_64(v5);
        if (a2)
        {
          continue;
        }

        break;
      case 1:
        v13 = *(v5 + 284);
        OUTLINED_FUNCTION_0_64(v5);
        *(a1[24] + 8080) = *(v6 + 8);
        continue;
      case 2:
        v9 = *(v5 + 280);
        v10 = *(v6 + 16);
        v11 = v9 + ((v10 - 1) | 3) + 1;
        *(v5 + 1728) += v11;
        *(v5 + 1720) = v6 + v11;
        memcpy(*(v6 + 8), (v6 + v9), v10);
        continue;
      case 3:
        v12 = *(v5 + 288);
        OUTLINED_FUNCTION_0_64(v5);
        if (a2 || !vscanadv(a1, 0, 1))
        {
          continue;
        }

        break;
      case 4:
        v8 = *(v5 + 296);
        OUTLINED_FUNCTION_0_64(v5);
        a2 -= a2 > 0;
        continue;
      case 5:
        v14 = *(v5 + 292);
        OUTLINED_FUNCTION_0_64(v5);
        *(v15 + 1760) = *(v6 + 8);
        continue;
      case 6:
        v16 = *(v5 + 296);
        OUTLINED_FUNCTION_0_64(v5);
        ++a2;
        continue;
      default:
        return -1;
    }

    break;
  }

  return *(v6 + 8);
}

uint64_t vinitrun(int *a1)
{
  v2 = 0;
  *(*(a1 + 24) + 8121) = 0;
  while (1)
  {
    v3 = *(a1 + 288);
    if (v2 >= v3)
    {
      break;
    }

    *(*(a1 + 31) + v2) = 0;
    *(*(a1 + 33) + v2) = *(a1 + 288);
    *(*(a1 + 35) + v2++) = 0;
  }

  *(*(a1 + 35) + v3) = 0;
  v5 = *(a1 + 24);
  v4 = *(a1 + 25);
  v7 = *v4;
  v6 = v4[1];
  v8 = *(a1 + 12);
  *(*(a1 + 11) + 8) = v7;
  *(v8 + 8) = v6;
  *(v5 + 8152) = 0;
  *(v5 + 8184) = 0;
  *(v5 + 9296) = 0;
  v9 = *(v5 + 8024);
  if (v9 == 255 || v9 == 249)
  {
    result = vdltinit(a1, 1);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 25);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(a1 + 12);
    *(*(a1 + 11) + 8) = v13;
    *(v14 + 8) = v12;
  }

  v15 = 0;
  v16 = 0;
  *(*(a1 + 23) + 452) = 0;
  while (v16 < *a1)
  {
    OUTLINED_FUNCTION_1_61();
    ++v16;
    v15 += 16;
  }

  return 1;
}

void *save_var(uint64_t a1, __int16 *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  vinitloc_new(a1, v4, a2);
  return vpush_var(a1, v4);
}

uint64_t ventproc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 104) = 0;
  if (!a2)
  {
    return 1;
  }

  v7 = *(a1 + 192);
  v8 = *v7;
  if (v8 > 998)
  {
    return 1;
  }

  result = 0;
  v10 = v7[2002];
  *v7 = v8 + 1;
  *&v7[2 * v8 + 2] = v10;
  v11 = *(a1 + 192);
  *(v11 + 8008) = *v11;
  *a2 = *(v11 + 8104);
  *(a2 + 32) = *(v11 + 8056);
  v12 = *(a1 + 192);
  v13 = *(a1 + 200);
  *(a2 + 48) = *(v12 + 8096);
  v14 = *(v13 + 1720);
  *(a2 + 56) = *(v12 + 8112);
  *(a2 + 64) = v14;
  *(a2 + 72) = *(v13 + 1760);
  *(a2 + 80) = *(v12 + 8121);
  *(a2 + 88) = *(v12 + 8016);
  *(a2 + 96) = *(v12 + 8080);
  v15 = *(a1 + 128);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = v15;
  v16 = *(a1 + 160);
  *(a2 + 144) = *(a1 + 144);
  *(a2 + 160) = v16;
  v17 = *(a1 + 192);
  v18 = *(a1 + 200);
  *(a2 + 176) = *(v17 + 8120);
  *(a2 + 177) = *(v18 + 272);
  v19 = *(v18 + 276);
  v20 = *(v18 + 1720) - v19;
  LODWORD(v14) = *(v18 + 1728);
  *(v18 + 1720) = v20;
  *(v18 + 1728) = v14 - v19;
  *v20 = 7;
  v21 = *(a1 + 248);
  *(a1 + 248) = a4;
  v22 = *(a1 + 264);
  *(v20 + 8) = a2;
  *(v20 + 16) = v22;
  *(a1 + 264) = a3;
  v23 = *(a1 + 280);
  *(v20 + 24) = v21;
  *(v20 + 32) = v23;
  *(a1 + 280) = a5;
  *(v17 + 8112) = v20;
  *(v17 + 8016) = a6;
  return result;
}

BOOL vretproc(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (*v2 < 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *(v2 + 8008) - 1;
    *v2 = v4;
    *(v2 + 8008) = *(v2 + 8 * v4 + 8);
  }

  v5 = *(v2 + 8112);
  v6 = *(v5 + *(*(a1 + 200) + 276));
  freeDeltaStackTo(a1, v5);
  v7 = *(a1 + 192);
  v8 = *(*(a1 + 200) + 1720);
  v9 = v8[2];
  *(a1 + 248) = v8[3];
  v10 = *(v5 + 8);
  *(a1 + 264) = v9;
  *(a1 + 280) = v8[4];
  *(v7 + 8104) = *v10;
  *(v7 + 8056) = *(v10 + 32);
  v11 = *(a1 + 192);
  *(v11 + 8096) = *(v10 + 48);
  v12 = *(v10 + 64);
  *(v11 + 8112) = *(v10 + 56);
  freeDeltaStackTo(a1, v12);
  v13 = *(a1 + 192);
  *(*(a1 + 200) + 1760) = *(v10 + 72);
  *(v13 + 8121) = *(v10 + 80);
  *(v13 + 8016) = *(v10 + 88);
  *(v13 + 8080) = *(v10 + 96);
  v14 = *(v10 + 128);
  *(a1 + 112) = *(v10 + 112);
  *(a1 + 128) = v14;
  v15 = *(v10 + 160);
  *(a1 + 144) = *(v10 + 144);
  *(a1 + 160) = v15;
  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  *(v16 + 8120) = *(v10 + 176);
  *(v17 + 272) = *(v10 + 177);
  *(v16 + 9296) = 0;
  if (v6 == 8)
  {
    *(*(a1 + 184) + 432) = 234;
    return *(v16 + 8012) != 0;
  }

  else if (*(v16 + 8012))
  {
    forceErrorBacktrack(a1);
  }

  return v3;
}

uint64_t freeDeltaStackTo(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t vprt_var(uint64_t result, int a2, __int16 *a3)
{
  v4 = result;
  v15 = *MEMORY[0x277D85DE8];
  switch(*a3)
  {
    case -6:
      v5 = *(a3 + 1);
      if (v5 == 1)
      {
        v12 = *MEMORY[0x277D85DE8];
        v7 = "dangling";
      }

      else
      {
        if (v5)
        {
          absoluteSyncNum(result, v5);
          goto LABEL_16;
        }

        v6 = *MEMORY[0x277D85DE8];
        v7 = "NULL";
      }

      return vf_puts(result, a2, v7, 1);
    case -5:
      v10 = *(a3 + 1);
      __sprintf_chk(__s1, 0, 0x50uLL, "%f");
      goto LABEL_17;
    case -4:
      v8 = a3[1];
LABEL_16:
      __sprintf_chk(__s1, 0, 0x50uLL, "%d");
      goto LABEL_17;
    case -3:
      v9 = *(a3 + 1);
      __sprintf_chk(__s1, 0, 0x50uLL, "%ld");
      goto LABEL_17;
    default:
      v11 = a3[1];
      if (v11 == 255)
      {
        goto LABEL_18;
      }

      disptok(result, a3 + 16, *a3, v11, __s1);
      if (__s1[0] == 92)
      {
        cleanLiteral(__s1, 0, 0);
      }

LABEL_17:
      result = vf_puts(v4, a2, __s1, 1);
LABEL_18:
      v13 = *MEMORY[0x277D85DE8];
      return result;
  }
}

void initGlobalVars(int *a1)
{
  v2 = 0;
  v3 = a1[4];
  while (v2 < v3)
  {
    **(*(a1 + 3) + 8 * v2++) = 0;
  }

  v4 = 0;
  for (i = 0; i < *a1; ++i)
  {
    OUTLINED_FUNCTION_1_61();
    v4 += 16;
  }

  v6 = 0;
  v7 = 8 * (a1[1] & ~(a1[1] >> 31));
  while (v7 != v6)
  {
    **(*(a1 + 5) + v6) = 0;
    v6 += 8;
  }

  v8 = 0;
  v9 = 8 * (a1[2] & ~(a1[2] >> 31));
  while (v9 != v8)
  {
    **(*(a1 + 6) + v8) = 0;
    v8 += 8;
  }

  v10 = 0;
  v11 = 8 * (a1[3] & ~(a1[3] >> 31));
  while (v11 != v10)
  {
    **(*(a1 + 7) + v10) = 0;
    v10 += 8;
  }
}

uint64_t runtime_new(uint64_t result)
{
  if (result)
  {
    v1 = result;
    init_new(result);
    ccode_new(v1);
    delta_lib_new(v1);
    dlang_new(v1);
  }

  return result;
}

double runtime_delete(uint64_t a1)
{
  if (a1)
  {
    init_delete(a1);
    ccode_delete(a1);
    delta_lib_delete(a1);
    dlang_delete(a1);
    logio_delete(a1);
    eloqc_delete(a1);
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
  }

  return result;
}

void OUTLINED_FUNCTION_1_61()
{
  v4 = *(v0 + 32) + v1;
  v5 = *v4;
  v6 = *(v4 + 12);
  *v5 = *(v4 + 8);
  v5[1] = v2;

  bzero(v5 + 8, v6);
}

uint64_t startloop(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  result = clearDeltaStackBack(a1);
  *(*(a1 + 192) + 8096) = 0;
  return result;
}

uint64_t clearDeltaStackBack(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_0(a1, v1);
}

uint64_t forall_adv_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_50();
  result = OUTLINED_FUNCTION_11_48();
  if (result)
  {
    OUTLINED_FUNCTION_1_62();
    *(v8 + v7) = 1;
    return OUTLINED_FUNCTION_2_59();
  }

  return result;
}

uint64_t forall_adv_upto_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_50();
  OUTLINED_FUNCTION_20_40();
  OUTLINED_FUNCTION_6_51();
  if (v8 || (*v7 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_48();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_20_40();
  OUTLINED_FUNCTION_6_51();
  if (v8 || (*v10 & 2) != 0)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_65();
}

uint64_t forall_adv_over_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_50();
  OUTLINED_FUNCTION_20_40();
  OUTLINED_FUNCTION_6_51();
  if (v7 || (*v6 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_48();
  if (result)
  {
    OUTLINED_FUNCTION_1_62();
    *(v10 + v9) = 1;
    return OUTLINED_FUNCTION_2_59();
  }

  return result;
}

uint64_t forall_adv_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_46();
  if (v8)
  {
    OUTLINED_FUNCTION_9_49(result);
    result = OUTLINED_FUNCTION_11_48();
    if (result)
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_65();
    }
  }

  return result;
}

uint64_t forall_adv_upto_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_46();
  if (v8)
  {
    OUTLINED_FUNCTION_9_49(result);
    OUTLINED_FUNCTION_20_40();
    OUTLINED_FUNCTION_5_52();
    if (v10 || (*v9 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_48();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_20_40();
    OUTLINED_FUNCTION_5_52();
    if (v10 || (*v11 & 2) != 0)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_65();
    }
  }

  return result;
}

uint64_t forall_adv_over_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_46();
  if (v7)
  {
    OUTLINED_FUNCTION_9_49(result);
    OUTLINED_FUNCTION_20_40();
    OUTLINED_FUNCTION_5_52();
    if (v9 || (*v8 & 2) != 0)
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_11_48();
      if (result)
      {
        OUTLINED_FUNCTION_1_62();
        *(v11 + v10) = 1;
        return OUTLINED_FUNCTION_2_59();
      }
    }
  }

  return result;
}

uint64_t forto_adv_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_50();
  result = OUTLINED_FUNCTION_11_48();
  if (result)
  {
    OUTLINED_FUNCTION_10_48();
    if (v8)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_65();
    }
  }

  return result;
}

uint64_t forto_adv_upto_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_50();
  OUTLINED_FUNCTION_15_45();
  OUTLINED_FUNCTION_4_52();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_46(v7);
  if (v8 || (*v9 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_48();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_21_38();
  if (v8)
  {
    return 0;
  }

  vscanadvUptoTokenOrMarker(v6);
  OUTLINED_FUNCTION_4_52();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_46(v11);
  if (v8 || (*v12 & 2) != 0)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_65();
}

uint64_t forto_adv_over_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_50();
  OUTLINED_FUNCTION_15_45();
  OUTLINED_FUNCTION_4_52();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_46(v7);
  if (v8 || (*v9 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_48();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_10_48();
  if (v8)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_65();
}

uint64_t forto_adv_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_46();
  if (v8)
  {
    OUTLINED_FUNCTION_9_49(result);
    result = OUTLINED_FUNCTION_11_48();
    if (result)
    {
      OUTLINED_FUNCTION_10_48();
      if (v9)
      {
        return 0;
      }

      else
      {
        clearDeltaStackBack(v6);
        return OUTLINED_FUNCTION_0_65();
      }
    }
  }

  return result;
}

uint64_t forto_adv_upto_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_46();
  if (v8)
  {
    OUTLINED_FUNCTION_9_49(result);
    OUTLINED_FUNCTION_15_45();
    OUTLINED_FUNCTION_4_52();
    if (v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_50(v9);
    if (v10 || (*v11 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_48();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_21_38();
    if (v10)
    {
      return 0;
    }

    vscanadvUptoTokenOrMarker(v6);
    OUTLINED_FUNCTION_4_52();
    if (v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_50(v12);
    if (v10 || (*v13 & 2) != 0)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_65();
    }
  }

  return result;
}

uint64_t forto_adv_over_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_55(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_46();
  if (v8)
  {
    OUTLINED_FUNCTION_9_49(result);
    OUTLINED_FUNCTION_15_45();
    OUTLINED_FUNCTION_4_52();
    if (v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_50(v9);
    if (v10 || (*v11 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_48();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_10_48();
    if (v10)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_65();
    }
  }

  return result;
}

uint64_t forall_to_test(uint64_t a1, __int16 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_16_45();
  vinitloc_new(v6, v7, a2);
  v8 = OUTLINED_FUNCTION_17_43();
  vinitloc_new(v8, v9, a3);
  vcompare(a1, &v13, &v12);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_42();
  }

  v10 = *(a1 + 192);
  if (*(v10 + 8120))
  {
    return 0;
  }

  *(a1 + 104) = *(v10 + 8064);
  return 2;
}

void forall_cont_from(uint64_t a1)
{
  OUTLINED_FUNCTION_13_46(a1);
  if (v4)
  {
    save_var(v3, v2);
  }

  OUTLINED_FUNCTION_16_45();
  vinitloc_new(v3, v5, v2);
  vinitloc_new(v3, v7, v1);
  vassign(v3, &v8, v7);
  OUTLINED_FUNCTION_22_37();
  if ((v6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_42();
  }

  if ((*v1 & 0x80000000) == 0)
  {
    v1[1] = -1;
  }
}

uint64_t for_adv(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  v10 = OUTLINED_FUNCTION_18_42(a1);
  *(v12 + 8056) = v11;
  *(v12 + 8064) = v13;
  *(v12 + 8096) = 0;
  vinitloc_new(v10, v24, v14);
  v15 = OUTLINED_FUNCTION_17_43();
  vinitloc_new(v15, v16, a6);
  vinitloc_new(v6, v23, a5);
  vadd(v6, v24, &v22);
  vcompare(v6, v24, v23);
  if ((*a4 & 0x80000000) == 0)
  {
    a4[1] = -1;
  }

  if ((*a5 & 0x80000000) == 0)
  {
    a5[1] = -1;
  }

  if ((*a6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_42();
  }

  v17 = OUTLINED_FUNCTION_17_43();
  v19 = vnegative(v17, v18);
  v20 = *(*(v6 + 192) + 8120);
  if (v19)
  {
    if (v20 == 255)
    {
      return 0;
    }
  }

  else if (v20 == 1)
  {
    return 0;
  }

  return 2;
}

uint64_t for_test(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v8 = OUTLINED_FUNCTION_18_42(a1);
  *(v9 + 8096) = 0;
  vinitloc_new(v8, v19, a2);
  vinitloc_new(v4, v18, a3);
  v10 = OUTLINED_FUNCTION_17_43();
  vinitloc_new(v10, v11, a4);
  vcompare(v4, v19, v18);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  if ((*a4 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_42();
  }

  v12 = OUTLINED_FUNCTION_17_43();
  v14 = vnegative(v12, v13);
  v15 = *(v4 + 192);
  v16 = *(v15 + 8120);
  if (v14)
  {
    if (v16 == 255)
    {
LABEL_9:
      *(v4 + 104) = *(v15 + 8064);
      return 2;
    }
  }

  else if (v16 == 1)
  {
    goto LABEL_9;
  }

  return 0;
}

void for_cont_from(uint64_t a1)
{
  OUTLINED_FUNCTION_13_46(a1);
  if (v4)
  {
    save_var(v3, v2);
  }

  OUTLINED_FUNCTION_16_45();
  vinitloc_new(v3, v5, v2);
  vinitloc_new(v3, v7, v1);
  vassign(v3, &v8, v7);
  OUTLINED_FUNCTION_22_37();
  if ((v6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_42();
  }

  if ((*v1 & 0x80000000) == 0)
  {
    v1[1] = -1;
  }
}

uint64_t while_iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 192);
  *(v4 + 8056) = a3;
  *(v4 + 8064) = a2;
  result = clearDeltaStackBack(a1);
  *(*(a1 + 200) + 256) = 0;
  return result;
}

uint64_t freeDeltaStackTo_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_65()
{
  v3 = v2[24];
  *(v2[25] + 256) = 0;
  *(v3 + 8096) = 1;
  v2[13] = v1;
  *(v0 + 8) = *(v3 + 8080);
  return 2;
}

uint64_t OUTLINED_FUNCTION_1_62()
{
  result = clearDeltaStackBack(v0);
  v2 = *(v0 + 192);
  *(*(v0 + 200) + 256) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_59()
{
  *(v3 + 104) = v2;
  *(v1 + 8) = *(v0 + 8080);
  return 2;
}

uint64_t OUTLINED_FUNCTION_3_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{

  return for_loop_preamble(a1, a2, a3, a5, a6);
}

uint64_t OUTLINED_FUNCTION_11_48()
{

  return vscanadv(v0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_15_45()
{
  v3 = *(v1 + 8);

  return vscanadvUptoTokenOrMarker(v0);
}

uint64_t OUTLINED_FUNCTION_20_40()
{

  return vscanadvUptoToken(v0);
}

uint64_t OUTLINED_FUNCTION_22_37()
{
  v4 = *(v1 + 192);
  *(v4 + 8056) = v3;
  *(v4 + 8064) = v2;
  result = clearDeltaStackBack(v1);
  *(*(v1 + 200) + 256) = 0;
  v6 = *v0;
  return result;
}

uint64_t read_2pt(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_63(a1, a2, a3))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_2_60();
  if (vrange_2pt(v3, v4, v5, v6, v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_0_66();
  visnonseq(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_0_66();
  ins_rdtoks(v13, v14, v15, v16);
  return 0;
}

uint64_t read_l(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_63(a1, a2, a3))
  {
    return 1;
  }

  if (!vrange_l())
  {
    forceErrorBacktrack(v3);
  }

  v5 = OUTLINED_FUNCTION_0_66();
  visnonseq(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_0_66();
  ins_rdtoks(v9, v10, v11, v12);
  return 0;
}

uint64_t read_r(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_63(a1, a2, a3))
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_60();
  if (!vrange_r())
  {
    forceErrorBacktrack(v3);
  }

  v5 = OUTLINED_FUNCTION_0_66();
  visnonseq(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_0_66();
  ins_rdtoks(v9, v10, v11, v12);
  return 0;
}

uint64_t read_nvar(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  result = vrd_nvar();
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

BOOL read_tvar(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v13[0], v13[1]);
  v11 = vrd_tvar(v10, v9, v13);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return v11 != 0;
}

uint64_t open_input(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 0);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t open_output(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 1);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t open_append(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 2);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

void print_delta1(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, unsigned int a5, char *a6, unsigned int a7)
{
  *&v18[126] = *MEMORY[0x277D85DE8];
  if (!vprt_range(a1, a1 + 112, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v17[0] = a5;
  v13 = a5;
  v17[1] = 0;
  v14 = v18;
  if (a5)
  {
    do
    {
      v15 = *a6++;
      *v14++ = v15;
      --v13;
    }

    while (v13);
  }

  lf_print_delta(a1, a2, *(a1 + 112), *(a1 + 144), a4, (a7 >> 1) & 1, 0, v17, 0, 0, 0, 80);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t print_stream(uint64_t a1, uint64_t a2, int a3, int a4, const char *a5)
{
  if (!vprt_range(a1, a1 + 112, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v10 = *(a1 + 112);
  v11 = *(a1 + 144);

  return vprt_strm(a1, a2, v10, v11, a3, a4, a5);
}

uint64_t print_var(uint64_t a1, char a2, __int16 *a3)
{
  result = vprt_var(a1, a2, a3);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  return result;
}

uint64_t print_tvar(uint64_t a1, char a2, __int16 *a3, uint64_t a4, uint64_t a5)
{
  result = prt_tvar(a2, a3 + 1, a5);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_66()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 144);
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_63(uint64_t a1, char a2, unsigned int a3)
{
  v4 = a2;

  return vrd_delta(a1, v4, a3);
}

void OUTLINED_FUNCTION_3_56(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  vinitloc_new(a1, &a9, a3);
}

uint64_t etiwinMain(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3 + 1;
  v7 = *(a1 + 184);
  v6 = *(a1 + 192);
  *(v6 + 9304) = v5;
  v8 = __OFSUB__(a2, 1);
  v9 = a2 - 1;
  *(v7 + 480) = v9;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v4 = 0;
  }

  *(v7 + 488) = v4;
  *(v6 + 8872) = 0;
  if (vcmdinit(a1) && vinitrun(a1))
  {
    DeltaProc_main(a1);
    vcmdend(a1, 0);
  }

  return 1;
}

uint64_t etiwinMainDLL(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 184);
  *(v4 + 480) = a2 - 1;
  if (a2 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a3 + 8);
  }

  *(v4 + 488) = v5;
  *(*(a1 + 192) + 8872) = 0;
  result = vcmdinit(a1);
  if (result)
  {
    return vinitrun(a1) != 0;
  }

  return result;
}

void dur_expr(uint64_t a1, unsigned int a2, __int16 *a3)
{
  if (!vtimept_tv(a1, a1 + 112) || !vtimept_tv(a1, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  vinitloc_new(a1, v9, a3);
  v6 = vdur(a1, a1 + 112, a1 + 144, a2);
  if (v6 == -2147483647)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  OUTLINED_FUNCTION_0_67(vstmtbl[12 * a2 + 1]);
  v10[0] = &v8;
  vassign(a1, v9, v10);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

void val_expr1(uint64_t a1, __int16 *a2, unsigned int a3, int a4)
{
  if (val_expr(a1, a1 + 112, a3, a4, 0) == -2147483647)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      a2[1] = -1;
    }

    forceErrorBacktrack(a1);
  }

  v10[0] = 0;
  v10[1] = 0;
  v8 = &vstmtbl[12 * a3 + 1][40 * a4];
  v11[1] = 0;
  OUTLINED_FUNCTION_0_67(v8);
  v11[0] = v9;
  vinitloc_new(a1, v10, a2);
  vassign(a1, v10, v11);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

uint64_t actd_lookup(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!vprt_range(a1, (a1 + 14), (a1 + 18)))
  {
    forceErrorBacktrack(a1);
  }

  v8 = a1[9] + (a2 << 6);
  v9 = actdlookup(a1, a1[14], a1[18], v8);
  if (v9)
  {
    v10 = 0;
    *(a1[24] + 9300) = *(v9 + 1);
    while (1)
    {
      if (v10 == 2)
      {
        return 0;
      }

      v12 = *v9++;
      v11 = v12;
      if (v12 != 255)
      {
        v13 = 0;
        v14 = a1[14];
        while (v13 < v11)
        {
          if (v14 && (*v14 & 2) != 0)
          {
            v15 = &v14[8 * *(a1[24] + 9084) + 8 * *(v8 + 16)];
          }

          else
          {
            v15 = v14 + 8;
            ++v13;
          }

          v14 = (*v15 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v10)
        {
          v16 = a4;
          if (!a4)
          {
            goto LABEL_17;
          }

LABEL_16:
          *(v16 + 8) = v14;
          goto LABEL_17;
        }

        v16 = a3;
        if (a3)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
      ++v10;
    }
  }

  return 1;
}

BOOL setd_lookup(void *a1, unsigned __int8 a2, int a3)
{
  if (!a1[14] || !a1[18])
  {
    return 1;
  }

  if (!vprt_range(a1, (a1 + 14), (a1 + 18)))
  {
    forceErrorBacktrack(a1);
  }

  return setdlookup(a1, a1[14], a1[18], a1[8] + (a3 << 6), a2) == 0;
}

BOOL if_testeq_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_37(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_47();
  npush_lng(v9);

  return if_testeq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testeq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_50(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_41(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_47();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_51();
  return v19 != 0;
}

BOOL if_testle_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_37(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_47();
  npush_lng(v9);

  return if_testle(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_50(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_41(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_47();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_51();
  return v19 == 1;
}

BOOL if_testge_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_37(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_47();
  npush_lng(v9);

  return if_testge(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_50(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_41(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_47();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_51();
  return v19 == 255;
}

BOOL if_testgt_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_37(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_47();
  npush_lng(v9);

  return if_testgt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testgt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_50(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_41(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_47();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_51();
  return v19 != 1;
}

BOOL if_testlt_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_37(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_47();
  npush_lng(v9);

  return if_testlt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testlt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_50(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_41(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_47();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_51();
  return v19 != 255;
}

BOOL if_testneq_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_37(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_47();
  npush_lng(v9);

  return if_testneq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testneq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_50(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_41(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_47();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_51();
  return v19 == 0;
}

BOOL if_testeq_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_39(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_51();
  npush_i(v9);

  return if_testeq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testle_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_39(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_51();
  npush_i(v9);

  return if_testle(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testge_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_39(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_51();
  npush_i(v9);

  return if_testge(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testgt_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_39(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_51();
  npush_i(v9);

  return if_testgt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testlt_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_39(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_51();
  npush_i(v9);

  return if_testlt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testneq_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_39(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_51();
  npush_i(v9);

  return if_testneq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL testeq_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  compare_tvars(a1, a2, a3);

  return testeq(a1);
}

BOOL testneq_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  compare_tvars(a1, a2, a3);

  return testneq(a1);
}

BOOL testFldeq(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v4 = *(a1 + 192);
  v5 = *(v4 + 8080);
  while (1)
  {
    v6 = *(v4 + 8089) ? *(v4 + 9084) + *(v4 + 8088) : *(v4 + 8088) + 3;
    v5 = (*&v5[8 * v6] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      break;
    }

    if ((*v5 & 2) == 0)
    {
      return *(*&vstmtbl[12 * a2 + 2][8 * a3])(v5 + 16) != a4;
    }
  }

  return 1;
}

void move_lng(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_16_46(v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_14_47();
    save_var(v8, v9);
  }

  OUTLINED_FUNCTION_15_46();
  switch(v11)
  {
    case 0:
    case 3:
      *(v3 + 1) = a3;
      break;
    case 1:
      *(v3 + 1) = a3;
      break;
    case 2:
      v3[1] = a3;
      break;
    default:
      if (v10 < 0)
      {

        forceErrorBacktrack(v4);
      }

      OUTLINED_FUNCTION_12_47(0xFFFDu, v13, 0, 0, v14, v15);
      OUTLINED_FUNCTION_22_38(v12);
      if ((*v3 & 0x80000000) == 0)
      {
        v3[1] = -1;
      }

      break;
  }
}

void move_i(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_16_46(v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_14_47();
    save_var(v8, v9);
  }

  OUTLINED_FUNCTION_15_46();
  switch(v11)
  {
    case 0:
    case 3:
      *(v3 + 1) = a3;
      break;
    case 1:
      *(v3 + 1) = a3;
      break;
    case 2:
      v3[1] = a3;
      break;
    default:
      if (v10 < 0)
      {

        forceErrorBacktrack(v4);
      }

      OUTLINED_FUNCTION_12_47(0xFFFCu, v13, 0, 0, v14, v15);
      OUTLINED_FUNCTION_22_38(v12);
      if ((*v3 & 0x80000000) == 0)
      {
        v3[1] = -1;
      }

      break;
  }
}

void move_f(double a1)
{
  OUTLINED_FUNCTION_18_43();
  OUTLINED_FUNCTION_16_46(v4);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_14_47();
    save_var(v6, v7);
  }

  OUTLINED_FUNCTION_15_46();
  switch(v9)
  {
    case 0:
      goto LABEL_12;
    case 1:
      v1[1] = a1;
      return;
    case 2:
      v10 = a1;
      goto LABEL_10;
    case 3:
      *(v1 + 1) = a1;
      return;
    default:
      if (v8 < 0)
      {
LABEL_12:

        forceErrorBacktrack(v2);
      }

      OUTLINED_FUNCTION_12_47(0xFFFBu, v12, 0, 0, v13, v14);
      OUTLINED_FUNCTION_22_38(v11);
      if ((*v1 & 0x80000000) == 0)
      {
        LOWORD(v10) = -1;
LABEL_10:
        *(v1 + 1) = v10;
      }

      return;
  }
}

void bspush_ca_boa()
{
  OUTLINED_FUNCTION_18_43();
  bspush_boa(v0);
  v1 = OUTLINED_FUNCTION_14_47();

  bspush_ca(v1);
}

double bspush_ca_scan_boa()
{
  OUTLINED_FUNCTION_18_43();
  bspush_boa(v0);
  v1 = OUTLINED_FUNCTION_14_47();

  *&result = bspush_ca_scan(v1, v2).n128_u64[0];
  return result;
}

uint64_t lpta_rpta_loadp(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 168) = 1;
  *(result + 136) = 1;
  *(result + 112) = *(a2 + 8);
  *(result + 144) = *(a3 + 8);
  *(result + 160) = 0;
  *(result + 128) = 0;
  return result;
}

void ins_tokens_s()
{
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_19_43();
  if (v3)
  {
    OUTLINED_FUNCTION_4_53();
    OUTLINED_FUNCTION_3_57(vstmtbl);
    OUTLINED_FUNCTION_24_35();
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_44();
        OUTLINED_FUNCTION_11_49();
        while (v1 < v2)
        {
          v5 = *v1++;
          OUTLINED_FUNCTION_10_49();
          if (!v8)
          {
            OUTLINED_FUNCTION_13_47();
            vassign(v0, v9, v10);
          }

          if (!OUTLINED_FUNCTION_5_53(v6, v7))
          {
            break;
          }

          if (v1 < v2)
          {
            v11 = OUTLINED_FUNCTION_2_61();
            *(v0 + 112) = v11;
            if (!v11)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_52();
  }

  OUTLINED_FUNCTION_25_35();
}

void ins_tokens_l()
{
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_19_43();
  if (v3)
  {
    OUTLINED_FUNCTION_4_53();
    OUTLINED_FUNCTION_3_57(vstmtbl);
    OUTLINED_FUNCTION_24_35();
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_44();
        OUTLINED_FUNCTION_11_49();
        OUTLINED_FUNCTION_6_52();
        while (v1 < v2)
        {
          v5 = v1[1] | ((*v1 & 0x7F) << 8);
          OUTLINED_FUNCTION_10_49();
          if (!v8)
          {
            OUTLINED_FUNCTION_13_47();
            vassign(v0, v9, v10);
          }

          if (!OUTLINED_FUNCTION_5_53(v6, v7))
          {
            break;
          }

          v1 += 2;
          if (v1 < v2)
          {
            v11 = OUTLINED_FUNCTION_2_61();
            *(v0 + 112) = v11;
            if (!v11)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_52();
  }

  OUTLINED_FUNCTION_25_35();
}

void ins_tokens_lng()
{
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_19_43();
  if (v3)
  {
    OUTLINED_FUNCTION_4_53();
    OUTLINED_FUNCTION_3_57(vstmtbl);
    OUTLINED_FUNCTION_24_35();
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_44();
        OUTLINED_FUNCTION_11_49();
        while (v1 < v2)
        {
          if (*v1 < 0)
          {
            v5 = -((v1[1] << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v1 & 0x7F) << 24) | (v1[2] << 8) | v1[3]);
          }

          OUTLINED_FUNCTION_10_49();
          if (!v8)
          {
            OUTLINED_FUNCTION_13_47();
            vassign(v0, v9, v10);
          }

          if (!OUTLINED_FUNCTION_5_53(v6, v7))
          {
            break;
          }

          v1 += 4;
          if (v1 < v2)
          {
            v11 = OUTLINED_FUNCTION_2_61();
            *(v0 + 112) = v11;
            if (!v11)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_52();
  }

  OUTLINED_FUNCTION_25_35();
}

void ins_tokens_i()
{
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_19_43();
  if (v3)
  {
    OUTLINED_FUNCTION_4_53();
    OUTLINED_FUNCTION_3_57(vstmtbl);
    OUTLINED_FUNCTION_24_35();
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        v5 = &v1[v2];
        OUTLINED_FUNCTION_11_49();
        while (v1 < v5)
        {
          v6 = v1[1] | ((*v1 & 0x7F) << 8);
          OUTLINED_FUNCTION_10_49();
          if (!v9)
          {
            OUTLINED_FUNCTION_13_47();
            vassign(v0, v10, v11);
          }

          if (!OUTLINED_FUNCTION_5_53(v7, v8))
          {
            break;
          }

          v1 += 2;
          if (v1 < v5)
          {
            v12 = OUTLINED_FUNCTION_2_61();
            *(v0 + 112) = v12;
            if (!v12)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_52();
  }

  OUTLINED_FUNCTION_25_35();
}

uint64_t ins_tokens_f()
{
  OUTLINED_FUNCTION_19_43();
  if (v3)
  {
    OUTLINED_FUNCTION_4_53();
    v4 = OUTLINED_FUNCTION_3_57(vstmtbl);
    result = 0;
    switch(v4)
    {
      case -5:
      case -4:
      case -2:
      case -1:
        v6 = &v1[v2];
        OUTLINED_FUNCTION_11_49();
        OUTLINED_FUNCTION_6_52();
        while (1)
        {
          if (v1 >= v6)
          {
            return 1;
          }

          v9 = *v1;
          v7 = v1 + 1;
          v8 = v9;
          atof(v7);
          OUTLINED_FUNCTION_10_49();
          if (!v12)
          {
            OUTLINED_FUNCTION_13_47();
            vassign(v0, v13, v14);
          }

          result = OUTLINED_FUNCTION_5_53(v10, v11);
          if (!result)
          {
            break;
          }

          v1 = &v7[v8];
          if (v1 < v6)
          {
            result = OUTLINED_FUNCTION_2_61();
            *(v0 + 112) = result;
            if (!result)
            {
              break;
            }
          }
        }

        break;
      default:
        return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_52();
    return 1;
  }

  return result;
}

uint64_t insert_2pt_s(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_64(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_68();
  ins_tokens_s();
  return 0;
}

uint64_t insert_2pt_l(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_64(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_68();
  ins_tokens_l();
  return 0;
}

uint64_t insert_2pt_lng(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_64(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_68();
  ins_tokens_lng();
  return 0;
}

uint64_t insert_2pt_i(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_64(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_68();
  ins_tokens_i();
  return 0;
}

uint64_t insert_2pt_f(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{
  if (OUTLINED_FUNCTION_1_64(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_68();
  ins_tokens_f();
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_64(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5)
{

  return vrange_2pt(a1, a1 + 14, (a1 + 18), a2, a5);
}

uint64_t OUTLINED_FUNCTION_2_61()
{
  v4 = *(v1 + 144);
  v5 = *(v4 + 8 * v2 + 24) & 0xFFFFFFFFFFFFFFFCLL;

  return vins_sync(v1, v0, v5, v4);
}

uint64_t OUTLINED_FUNCTION_3_57@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(a1 + 96 * v1 + 8) + 32);

  return STMTYP(v2);
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return STMTYP(v0);
}

uint64_t OUTLINED_FUNCTION_5_53(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v3[14];
  v6 = v3[18];

  return vins_tok(v3, v2, v5, v6, va);
}

uint64_t OUTLINED_FUNCTION_6_52()
{
  v3 = v1[14];
  v4 = v1[18];

  return vdel_2pt(v1, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;

  return vnspop(a1, &a11);
}

void OUTLINED_FUNCTION_12_47(unsigned __int16 a1@<W8>, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a5 = v6;
  a6 = a1;
  BYTE2(a6) = 0;

  vinitloc_new(v8, &a3, v7);
}

uint64_t OUTLINED_FUNCTION_20_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return vnspop(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_21_39(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(a1, a2, a3, a4, a5, a6, a7, a8);
}

void OUTLINED_FUNCTION_22_38(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);

  vassign(v1, va, va1);
}

uint64_t OUTLINED_FUNCTION_23_37(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t lpta_loadv(uint64_t a1, char a2, unsigned __int16 *a3)
{
  *(a1 + 136) = 2;
  *(a1 + 120) = a2;
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      v4 = *(a3 + 1);
      break;
    case 65532:
      v4 = a3[1];
      break;
    case 65533:
      v4 = *(a3 + 1);
      break;
    default:
      forceErrorBacktrack(a1);
  }

  *(a1 + 128) = v4;
  return a1;
}

uint64_t rpta_loadv(uint64_t a1, char a2, unsigned __int16 *a3)
{
  *(a1 + 168) = 2;
  *(a1 + 152) = a2;
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      v4 = *(a3 + 1);
      break;
    case 65532:
      v4 = a3[1];
      break;
    case 65533:
      v4 = *(a3 + 1);
      break;
    default:
      forceErrorBacktrack(a1);
  }

  *(a1 + 160) = v4;
  return a1;
}

uint64_t lpta_loadlng(uint64_t a1, char a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_7_52(a1, a2);
  if (result - 65532 >= 2)
  {
    if (result != 65531)
    {
      return result;
    }

    a3 = a3;
  }

  *(a1 + 128) = a3;
  return result;
}

uint64_t rpta_loadl(uint64_t a1, char a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_8_52(a1, a2);
  if (result - 65532 >= 2)
  {
    if (result != 65531)
    {
      return result;
    }

    a3 = a3;
  }

  *(a1 + 160) = a3;
  return result;
}

void lpta_loadi(uint64_t a1, char a2, int a3)
{
  OUTLINED_FUNCTION_7_52(a1, a2);
  OUTLINED_FUNCTION_13_48();
  if (!(!v6 & v5))
  {
    *(a1 + 128) = a3;
  }
}

void rpta_loadi(uint64_t a1, char a2, int a3)
{
  OUTLINED_FUNCTION_8_52(a1, a2);
  OUTLINED_FUNCTION_13_48();
  if (!(!v6 & v5))
  {
    *(a1 + 160) = a3;
  }
}

void lpta_loadf(uint64_t a1, char a2, double a3)
{
  OUTLINED_FUNCTION_7_52(a1, a2);
  OUTLINED_FUNCTION_13_48();
  if (!(!v6 & v5))
  {
    *(a1 + 128) = a3;
  }
}

void rpta_loadf(uint64_t a1, char a2, double a3)
{
  OUTLINED_FUNCTION_8_52(a1, a2);
  OUTLINED_FUNCTION_13_48();
  if (!(!v6 & v5))
  {
    *(a1 + 160) = a3;
  }
}

void lpta_ctxtl()
{
  OUTLINED_FUNCTION_1_65();
  v3 = vctxt_tv(v1, v2);
  if (!v3)
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_69(v3, v4, v5, *(v0 + 112));
  if ((v10 & 1) == 0)
  {
    *(v0 + 112) = OUTLINED_FUNCTION_3_58(v6, v7, v8, v9);
  }
}

void rpta_ctxtl()
{
  OUTLINED_FUNCTION_2_62();
  v2 = vctxt_tv(v1, v1 + 144);
  if (!v2)
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_69(v2, v3, v4, *(v0 + 144));
  if ((v9 & 1) == 0)
  {
    *(v0 + 144) = OUTLINED_FUNCTION_3_58(v5, v6, v7, v8);
  }
}

void lpta_ctxtr()
{
  OUTLINED_FUNCTION_1_65();
  v3 = vctxt_tv(v1, v2);
  if (!v3)
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_69(v3, v4, v5, *(v0 + 112));
  if ((v10 & 1) == 0)
  {
    *(v0 + 112) = OUTLINED_FUNCTION_4_54(v6, v7, v8, v9);
  }
}

void rpta_ctxtr()
{
  OUTLINED_FUNCTION_2_62();
  v2 = vctxt_tv(v1, v1 + 144);
  if (!v2)
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_69(v2, v3, v4, *(v0 + 144));
  if ((v9 & 1) == 0)
  {
    *(v0 + 144) = OUTLINED_FUNCTION_4_54(v5, v6, v7, v8);
  }
}

_BYTE *lpta_movel()
{
  OUTLINED_FUNCTION_1_65();
  if (!vmove_tv(v2, v3))
  {
    forceErrorBacktrack(v0);
  }

  result = vmovel(*(v0 + 112), v1);
  *(v0 + 112) = result;
  return result;
}

_BYTE *rpta_movel()
{
  OUTLINED_FUNCTION_2_62();
  if (!vmove_tv(v2, v2 + 144))
  {
    forceErrorBacktrack(v0);
  }

  result = vmovel(*(v0 + 144), v1);
  *(v0 + 144) = result;
  return result;
}

_BYTE *lpta_mover()
{
  OUTLINED_FUNCTION_1_65();
  v3 = vmove_tv(v1, v2);
  if (!v3)
  {
    forceErrorBacktrack(v0);
  }

  result = OUTLINED_FUNCTION_14_48(v3, *(v0 + 112));
  *(v0 + 112) = result;
  return result;
}

_BYTE *rpta_mover()
{
  OUTLINED_FUNCTION_2_62();
  v2 = vmove_tv(v1, v1 + 144);
  if (!v2)
  {
    forceErrorBacktrack(v0);
  }

  result = OUTLINED_FUNCTION_14_48(v2, *(v0 + 144));
  *(v0 + 144) = result;
  return result;
}

uint64_t lpta_tstctxtl()
{
  OUTLINED_FUNCTION_1_65();
  vtstctx_tv(v1, v2);
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_69(v3, v4, v5, *(v0 + 112));
  if (v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_58(v7, v8, v9, v10);
  result = OUTLINED_FUNCTION_12_48();
  *(v0 + 112) = v12;
  return result;
}

uint64_t rpta_tstctxtl()
{
  OUTLINED_FUNCTION_2_62();
  vtstctx_tv(v1, v1 + 144);
  if (v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_69(v2, v3, v4, *(v0 + 144));
  if (v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_58(v6, v7, v8, v9);
  result = OUTLINED_FUNCTION_12_48();
  *(v0 + 144) = v11;
  return result;
}

uint64_t lpta_tstctxtr()
{
  OUTLINED_FUNCTION_2_62();
  v1 = 1;
  vtstctx_tv(v2, v2 + 112);
  if (!v3)
  {
    OUTLINED_FUNCTION_0_69(v3, v4, v5, *(v0 + 112));
    v1 = 0;
    if ((v10 & 1) == 0)
    {
      *(v0 + 112) = OUTLINED_FUNCTION_4_54(v6, v7, v8, v9);
    }
  }

  return v1;
}

uint64_t rpta_tstctxtr()
{
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_9_51();
  vtstctx_tv(v2, v3);
  if (!v4)
  {
    OUTLINED_FUNCTION_0_69(v4, v5, v6, *(v0 + 144));
    v1 = 0;
    if ((v11 & 1) == 0)
    {
      *(v0 + 144) = OUTLINED_FUNCTION_4_54(v7, v8, v9, v10);
    }
  }

  return v1;
}

uint64_t lpta_tstmovel()
{
  OUTLINED_FUNCTION_1_65();
  vtsttmark_tv(v2, v3);
  if (v4)
  {
    return 1;
  }

  vmovel(*(v0 + 112), v1);
  result = OUTLINED_FUNCTION_12_48();
  *(v0 + 112) = v6;
  return result;
}

uint64_t rpta_tstmovel()
{
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_9_51();
  vtsttmark_tv(v3, v4);
  if (!v5)
  {
    v2 = 0;
    *(v0 + 144) = vmovel(*(v0 + 144), v1);
  }

  return v2;
}

uint64_t lpta_tstmover()
{
  OUTLINED_FUNCTION_1_65();
  vtsttmark_tv(v1, v2);
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_14_48(v3, *(v0 + 112));
  result = OUTLINED_FUNCTION_12_48();
  *(v0 + 112) = v5;
  return result;
}

uint64_t rpta_tstmover()
{
  OUTLINED_FUNCTION_2_62();
  OUTLINED_FUNCTION_9_51();
  vtsttmark_tv(v2, v3);
  if (!v4)
  {
    v1 = 0;
    *(v0 + 144) = OUTLINED_FUNCTION_14_48(v4, *(v0 + 144));
  }

  return v1;
}

uint64_t lpta_storep(uint64_t a1, uint64_t a2)
{
  result = vsync_tv(a1, a1 + 112);
  if (!result)
  {
    forceErrorBacktrack(a1);
  }

  if (*(*(a1 + 192) + 8096))
  {
    result = save_var(a1, a2);
  }

  *(a2 + 8) = *(a1 + 112);
  return result;
}

uint64_t rpta_storep(uint64_t a1, uint64_t a2)
{
  result = vsync_tv(a1, a1 + 144);
  if (!result)
  {
    forceErrorBacktrack(a1);
  }

  if (*(*(a1 + 192) + 8096))
  {
    result = save_var(a1, a2);
  }

  *(a2 + 8) = *(a1 + 144);
  return result;
}

unint64_t OUTLINED_FUNCTION_3_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vgetsc(v4, 1, 1, a4, v5);
}

unint64_t OUTLINED_FUNCTION_4_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vgetsc(v4, 0, 1, a4, v5);
}

uint64_t OUTLINED_FUNCTION_5_54(uint64_t result, uint64_t a2)
{
  *(result + 136) = 1;
  *(result + 112) = *(a2 + 8);
  *(result + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_53(uint64_t result, uint64_t a2)
{
  *(result + 168) = 1;
  *(result + 144) = *(a2 + 8);
  *(result + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_52(uint64_t a1, char a2)
{
  *(a1 + 136) = 2;
  *(a1 + 120) = a2;

  return STMTYP(a2);
}

uint64_t OUTLINED_FUNCTION_8_52(char *a1, char a2)
{
  a1[168] = 2;
  a1[152] = a2;
  v3 = a1[120];

  return STMTYP(v3);
}

uint64_t OUTLINED_FUNCTION_10_50@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(result + 168) = a3;
  *(result + 152) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_50@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(result + 136) = a3;
  *(result + 120) = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_14_48(uint64_t a1, _BYTE *a2)
{

  return vmover(v2, a2, v3);
}

uint64_t npush_v(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_63(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  result = vnspush(v9, v11);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

uint64_t npush_vf(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_63(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  result = vnspush(v9, v11);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

uint64_t npush_fld(uint64_t a1, unsigned int a2, int a3)
{
  v14 = 0;
  v4 = &vstmtbl[12 * a2];
  v5 = &v4[1][40 * a3];
  LOWORD(v14) = *(v5 + 30);
  BYTE2(v14) = *(v5 + 32);
  v6 = *(a1 + 192);
  v7 = *(v6 + 8080);
  if (*(v6 + 8089))
  {
    LODWORD(v8) = *(v6 + 8088);
    v9 = (v7 + 8 * (*(v6 + 9084) + v8));
  }

  else
  {
    v8 = *(v6 + 8088);
    v9 = (v7 + 8 * v8 + 24);
  }

  v10 = (*v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (!v10)
  {
    return 1;
  }

  while ((*v10 & 2) != 0)
  {
    v11 = v8 + 3;
    if (*(v6 + 8089))
    {
      v11 = *(v6 + 9084) + v8;
    }

    v10 = (*&v10[8 * v11] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v10)
    {
      return 1;
    }
  }

  v13 = (*&v4[2][8 * a3])(v10 + 16);
  vnspush(a1, &v13);
  return 0;
}

void npop(uint64_t a1, __int16 *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  vnspop(a1, v5);
  if (*(*(a1 + 192) + 8096))
  {
    save_var(a1, a2);
  }

  vinitloc_new(a1, v4, a2);
  vassign(a1, v4, v5);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

void ncompare(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v2[0] = 0;
  v2[1] = 0;
  vnspop(a1, v3);
  vnspop(a1, v2);
  vcompare(a1, v3, v2);
}

void ncompare_s(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  vnspop(a1, &v6);
  if (v7 == -1)
  {
    v4 = *v6;
    if (v4 == a2)
    {
      *(*(a1 + 192) + 8120) = 0;
    }

    else
    {
      if (v4 <= a2)
      {
        v5 = -1;
      }

      else
      {
        v5 = 1;
      }

      *(*(a1 + 192) + 8120) = v5;
    }
  }

  else
  {
    LOWORD(v9) = -1;
    v8 = &v10;
    BYTE2(v9) = 0;
    vcompare(a1, &v8, &v6);
  }
}

uint64_t clearDeltaStackBack_0(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_1(a1, v1);
}

void bsclr_pushca(uint64_t a1, uint64_t a2)
{
  clearDeltaStackBack_0(a1);
  v4 = *(a1 + 200);
  v5 = *(v4 + 288);
  OUTLINED_FUNCTION_0_70(v4);
  *v6 = 0;
  *(v6 + 8) = a2;
}

void bspush_ca(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 288);
  OUTLINED_FUNCTION_0_70(v1);
  *v3 = 0;
  *(v3 + 8) = v4;
}

__n128 bspush_ca_scan(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  v4 = *(v2 + 288);
  v5 = *(v2 + 1720) - v4;
  v6 = *(v2 + 1728);
  *v5 = 0;
  *(v5 + 8) = a2;
  v7 = *(v2 + 284);
  v8 = v5 - v7;
  *(v2 + 1720) = v8;
  *(v2 + 1728) = v6 - (v4 + v7);
  *v8 = 1;
  result = v3[505];
  *(v8 + 8) = result;
  return result;
}

void bspush_boa(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 296);
  OUTLINED_FUNCTION_0_70(v1);
  *v3 = 4;
}

void bspush_nboa(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 296);
  OUTLINED_FUNCTION_0_70(v1);
  *v3 = 6;
}

void bspush_vbot(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 292);
  OUTLINED_FUNCTION_0_70(v1);
  *v3 = 5;
  *(v3 + 8) = *(v4 + 1760);
  *(v4 + 1760) = v3;
}

uint64_t freeDeltaStackTo_1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_66@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W8>, uint64_t a3, _WORD *a4, uint64_t a5)
{
  a4 = v5;
  a5 = a2;

  return vnspush(a1, &a4);
}

void OUTLINED_FUNCTION_2_63(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  vinitloc_new(a1, &a9, a2);
}

void starttest_l(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_71();
}

uint64_t clearDeltaStackBack_1(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_2(a1, v1);
}

void starttest_e(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_71();
}

void starttest(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_71();
}

void compare_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  vinitloc_new(a1, v7, a2);
  vinitloc_new(a1, v6, a3);
  vcompare(a1, v7, v6);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

BOOL test_string(void *a1, unsigned int a2, int a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return vscanadvOverToken(a1) == 0;
  }

  v5 = (a4 + 1);
  v6 = *a4 - 199;
  v8 = &a4[a3];
  v9 = &vstmtbl[12 * a2];
  OUTLINED_FUNCTION_2_64(v9[1]);
  while (v5 < v8)
  {
    v10 = a1[24];
    v11 = *(v10 + 8080);
    if (*(v10 + 8089))
    {
      OUTLINED_FUNCTION_1_67(v11);
    }

    else
    {
      OUTLINED_FUNCTION_4_55(v11);
    }

    v13 = (*v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v13)
    {
      return 1;
    }

    if ((*v13 & 2) == 0)
    {
      switch(v6)
      {
        case 0:
          ++v5;
          break;
        case 1:
        case 2:
          v19 = (*(v5 + 1) << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v5 & 0x7F) << 24) | (*(v5 + 2) << 8) | *(v5 + 3);
          if (*v5 < 0)
          {
            v20 = -((*(v5 + 1) << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v5 & 0x7F) << 24) | (*(v5 + 2) << 8) | *(v5 + 3));
          }

          v5 += 4;
          break;
        case 3:
          v17 = *(v5 + 1) | ((*v5 & 0x7F) << 8);
          if (*v5 < 0)
          {
            v18 = -(*(v5 + 1) | ((*v5 & 0x7F) << 8));
          }

          v5 += 2;
          break;
        case 4:
          atof(v5);
          break;
        default:
          break;
      }

      (*v9[2])(v13 + 16);
      OUTLINED_FUNCTION_7_53();
      vcompare(a1, v14, v15);
      if (*(a1[24] + 8120))
      {
        return 1;
      }
    }

    v7 = 1;
    if (!vscanadv(a1, 1, 1))
    {
      return v7;
    }
  }

  return 0;
}

uint64_t test_string_s()
{
  OUTLINED_FUNCTION_13_49();
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_47();
  v7 = *(v3 + 8);
  v8 = *(v7 + 30);
  if (v8 == 0xFFFF)
  {
    while (v0 < v6)
    {
      OUTLINED_FUNCTION_3_59();
      if (v18)
      {
        OUTLINED_FUNCTION_1_67(v17);
      }

      else
      {
        OUTLINED_FUNCTION_4_55(v17);
      }

      OUTLINED_FUNCTION_12_49(v19);
      if (v13)
      {
        return 1;
      }

      if ((*v20 & 2) == 0)
      {
        v21 = OUTLINED_FUNCTION_6_54(v20);
        if (*v22(v21) != *v0)
        {
          return 1;
        }

        v0 = (v0 + 1);
      }

      if (!OUTLINED_FUNCTION_5_55())
      {
        return v2;
      }
    }
  }

  else
  {
    LOWORD(v27) = -1;
    BYTE2(v27) = *(v7 + 32);
    BYTE2(v25) = BYTE2(v27);
    LOWORD(v25) = v8;
    while (v0 < v6)
    {
      OUTLINED_FUNCTION_3_59();
      if (v10)
      {
        OUTLINED_FUNCTION_1_67(v9);
      }

      else
      {
        OUTLINED_FUNCTION_4_55(v9);
      }

      OUTLINED_FUNCTION_12_49(v11);
      if (v13)
      {
        return 1;
      }

      if ((*v12 & 2) == 0)
      {
        v26 = v0;
        v14 = OUTLINED_FUNCTION_6_54(v12);
        v24 = v15(v14);
        vcompare(v1, &v26, &v24);
        OUTLINED_FUNCTION_14_49();
        if (v16)
        {
          return 1;
        }

        v0 = (v0 + 1);
      }

      if (!OUTLINED_FUNCTION_5_55())
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t test_string_l()
{
  OUTLINED_FUNCTION_13_49();
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_47();
  OUTLINED_FUNCTION_2_64(*(v3 + 8));
  while (v0 < v6)
  {
    OUTLINED_FUNCTION_3_59();
    if (v8)
    {
      OUTLINED_FUNCTION_1_67(v7);
    }

    else
    {
      OUTLINED_FUNCTION_4_55(v7);
    }

    OUTLINED_FUNCTION_12_49(v9);
    if (v11)
    {
      return 1;
    }

    if ((*v10 & 2) == 0)
    {
      OUTLINED_FUNCTION_11_51();
      v13 = OUTLINED_FUNCTION_6_54(v12);
      v14(v13);
      OUTLINED_FUNCTION_7_53();
      vcompare(v1, v15, v16);
      OUTLINED_FUNCTION_14_49();
      if (v17)
      {
        return 1;
      }

      v0 += 2;
    }

    if (!OUTLINED_FUNCTION_5_55())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_lng()
{
  OUTLINED_FUNCTION_13_49();
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_47();
  OUTLINED_FUNCTION_2_64(*(v3 + 8));
  while (v0 < v6)
  {
    OUTLINED_FUNCTION_3_59();
    if (v8)
    {
      OUTLINED_FUNCTION_1_67(v7);
    }

    else
    {
      OUTLINED_FUNCTION_4_55(v7);
    }

    OUTLINED_FUNCTION_12_49(v9);
    if (v11)
    {
      return 1;
    }

    if ((*v10 & 2) == 0)
    {
      v18 = (v0[1] << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v0 & 0x7F) << 24) | (v0[2] << 8) | v0[3];
      if (*v0 < 0)
      {
        v19 = -((v0[1] << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v0 & 0x7F) << 24) | (v0[2] << 8) | v0[3]);
      }

      v12 = OUTLINED_FUNCTION_6_54(v10);
      v13(v12);
      OUTLINED_FUNCTION_7_53();
      vcompare(v1, v14, v15);
      OUTLINED_FUNCTION_14_49();
      if (v16)
      {
        return 1;
      }

      v0 += 4;
    }

    if (!OUTLINED_FUNCTION_5_55())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_i()
{
  OUTLINED_FUNCTION_13_49();
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_47();
  OUTLINED_FUNCTION_2_64(*(v3 + 8));
  while (v0 < v6)
  {
    OUTLINED_FUNCTION_3_59();
    if (v8)
    {
      OUTLINED_FUNCTION_1_67(v7);
    }

    else
    {
      OUTLINED_FUNCTION_4_55(v7);
    }

    OUTLINED_FUNCTION_12_49(v9);
    if (v11)
    {
      return 1;
    }

    if ((*v10 & 2) == 0)
    {
      OUTLINED_FUNCTION_11_51();
      v13 = OUTLINED_FUNCTION_6_54(v12);
      v14(v13);
      OUTLINED_FUNCTION_7_53();
      vcompare(v1, v15, v16);
      OUTLINED_FUNCTION_14_49();
      if (v17)
      {
        return 1;
      }

      v0 += 2;
    }

    if (!OUTLINED_FUNCTION_5_55())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_f(uint64_t a1, unsigned int a2)
{
  v4 = &vstmtbl[12 * a2];
  OUTLINED_FUNCTION_2_64(v4[1]);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_49();
  while (1)
  {
    OUTLINED_FUNCTION_3_59();
    if (v7)
    {
      OUTLINED_FUNCTION_1_67(v6);
    }

    else
    {
      OUTLINED_FUNCTION_4_55(v6);
    }

    v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v9)
    {
      break;
    }

    if ((*v9 & 2) == 0)
    {
      atof(v2);
      (*v4[2])(v9 + 16);
      OUTLINED_FUNCTION_7_53();
      vcompare(v3, v10, v11);
      if (*(*(v3 + 192) + 8120))
      {
        break;
      }
    }

    if (!OUTLINED_FUNCTION_5_55())
    {
      return v9;
    }
  }

  return 1;
}

uint64_t test_ptr(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 1;
  }

  if ((*(a1 + 136) & 2) != 0)
  {
    vnormalize(a1, a1 + 112);
  }

  while (*(*(a1 + 192) + 8080) != *(a1 + 112))
  {
    v2 = 1;
    if (!OUTLINED_FUNCTION_9_52())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_time(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v18[0] = *(a1 + 112);
  v18[1] = v4;
  vtsttmark_tv(a1, v18);
  v5 = 1;
  if (!v6)
  {
    *(a1 + 144) = *(*(a1 + 192) + 8080);
    *(a1 + 168) = 1;
    if (!vcomp_pta(a1, a1 + 112, a1 + 144))
    {
      while (*(*(a1 + 192) + 8120))
      {
        v5 = 1;
        if (OUTLINED_FUNCTION_9_52())
        {
          *(a1 + 144) = *(*(a1 + 192) + 8080);
          if (!vcomp_pta(a1, a1 + 112, a1 + 144))
          {
            continue;
          }
        }

        return v5;
      }

      v5 = 0;
      v8 = *(a1 + 200);
      v9 = *(v8 + 288);
      v10 = *(v8 + 1720);
      OUTLINED_FUNCTION_10_51();
      v12 = *(v11 + 1728);
      *(v13 + 8) = a2;
      v14 = *(v11 + 284);
      v15 = v13 - v14;
      *(v11 + 1720) = v15;
      *(v11 + 1728) = v12 - (v16 + v14);
      *v15 = 1;
      *(v15 + 8) = *(v17 + 8080);
      *(*(a1 + 280) + *(*(a1 + 264) + *(a1 + 120))) = 1;
    }
  }

  return v5;
}

uint64_t test_synch(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  v7 = 0;
  v8 = a3;
  while (!v7)
  {
    v9 = 0;
    v7 = 1;
    while (v9 < v8 && v7)
    {
      if (*(*(a1[24] + 8080) + 8 * (*(a1[24] + 9084) + a4[v9])))
      {
        v7 = 1;
      }

      else
      {
        v10 = 1;
        v11 = vscanadv(a1, 0, 1);
        v7 = 0;
        if (!v11)
        {
          return v10;
        }
      }

      ++v9;
    }
  }

  v13 = a1[24];
  v12 = a1[25];
  v14 = *(v12 + 288);
  v15 = *(v12 + 1720);
  OUTLINED_FUNCTION_10_51();
  v17 = *(v16 + 1728);
  *(v18 + 8) = a2;
  *(v16 + 1720) = v18 - *(v16 + 284);
  OUTLINED_FUNCTION_8_53(v16);
  for (; v8; --v8)
  {
    v20 = *a4++;
    *(a1[35] + *(a1[33] + v20)) = v19;
  }

  return 0;
}

uint64_t test_fence(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v8 = 0;
    while (!v8)
    {
      v9 = 0;
      v8 = 1;
      while (a3 > v9 && v8)
      {
        v10 = *(a4 + v9);
        if (*(*(a1 + 264) + v10) == *(a1 + 288) && !FENCED(a1, *(*(a1 + 192) + 8080), v10))
        {
          v11 = 1;
          v12 = OUTLINED_FUNCTION_9_52();
          v8 = 0;
          if (!v12)
          {
            return v11;
          }
        }

        else
        {
          v8 = 1;
        }

        ++v9;
      }
    }

    v19 = 0;
    v21 = *(a1 + 192);
    v20 = *(a1 + 200);
    v22 = *(v20 + 288);
    v23 = *(v20 + 1720) - v22;
    *v23 = 3;
    *(v23 + 8) = a2;
    v24 = *(v20 + 284);
    v25 = v23 - v24;
    LODWORD(v22) = v22 + v24;
    LODWORD(v24) = *(v20 + 1728);
    *(v20 + 1720) = v25;
    *(v20 + 1728) = v24 - v22;
    *v25 = 1;
    *(v25 + 8) = *(v21 + 8080);
    while (a3 > v19)
    {
      *(*(a1 + 280) + *(*(a1 + 264) + *(a4 + v19++))) = 1;
    }

    return 0;
  }

  else
  {
    v13 = 0;
    while (!v13)
    {
      v14 = 0;
      v13 = 1;
      while (1)
      {
        v15 = v14;
        v16 = *(a1 + 288);
        if (!v13 || v15 >= v16)
        {
          break;
        }

        v17 = *(a1 + 192);
        if (v15 == *(v17 + 8088) || *(*(a1 + 264) + v15) != v16 || FENCED(a1, *(v17 + 8080), v15))
        {
          v13 = 1;
        }

        else
        {
          v11 = 1;
          v18 = OUTLINED_FUNCTION_9_52();
          v13 = 0;
          if (!v18)
          {
            return v11;
          }
        }

        v14 = v15 + 1;
      }
    }

    v11 = 0;
    v27 = *(a1 + 192);
    v26 = *(a1 + 200);
    v28 = *(v26 + 288);
    v29 = *(v26 + 1720);
    OUTLINED_FUNCTION_10_51();
    *(v30 + 8) = a2;
    v32 = *(v31 + 1728);
    *(v31 + 1720) = v30 - *(v31 + 284);
    OUTLINED_FUNCTION_8_53(v31);
    *(*(a1 + 192) + 8090) = v33;
  }

  return v11;
}

uint64_t test_hasval(uint64_t a1)
{
  v1 = *(a1 + 184);
  *(v1 + 436) = 0;
  *(v1 + 32) = 0;
  return 1;
}

uint64_t freeDeltaStackTo_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

void OUTLINED_FUNCTION_0_71()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v1 + 288);
  v4 = *(v1 + 1720) - v3;
  *(v1 + 1720) = v4;
  *(v1 + 1728) -= v3;
  *v4 = 0;
  *(v4 + 8) = *(v2 + 8064);
  *(v2 + 8096) = 1;
}

void OUTLINED_FUNCTION_3_59()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 8089);
  v3 = *(v1 + 8080);
}

uint64_t OUTLINED_FUNCTION_5_55()
{

  return vscanadv(v0, 1, 1);
}

__n128 OUTLINED_FUNCTION_8_53@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 1728) = v4 - v2;
  *v3 = 1;
  result = v1[505];
  *(v3 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_52()
{

  return vscanadv(v0, 0, 1);
}

uint64_t num_fields(uint64_t a1)
{
  result = 0;
  v3 = *a1 & ~(*a1 >> 31);
  v4 = 4;
  if ((*a1 & ~(*a1 >> 31)) != 0)
  {
    do
    {
      result = (*(*(a1 + 8) + v4) + result);
      --v3;
      v4 += 16;
    }

    while (v3);
  }

  return result;
}

uint64_t first_field(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  *(*(a1 + 200) + 300) = 0;
  if (*a2 < 1)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (*(v4 + 4) < 1)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_0_72(a1, a2, a3, a4, *v4);
  }
}

uint64_t next_field(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  v4 = *(a1 + 200);
  v5 = *(v4 + 304) + 1;
  *(v4 + 304) = v5;
  v6 = *(a2 + 8);
  v7 = *(v4 + 300);
  if (v5 < *(v6 + 16 * v7 + 4))
  {
    return OUTLINED_FUNCTION_0_72(a1, a2, a3, a4, *(v6 + 16 * v7));
  }

  LODWORD(v7) = v7 + 1;
  *(v4 + 300) = v7;
  if (v7 < *a2)
  {
    *(v4 + 304) = 0;
    v7 = v7;
    return OUTLINED_FUNCTION_0_72(a1, a2, a3, a4, *(v6 + 16 * v7));
  }

  return 0;
}

uint64_t is_token_prev(int a1, uint64_t a2)
{
  if ((*(a2 + 8 * a1 + 24) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*(*(a2 + 8 * a1 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_56();
  }
}

uint64_t is_token_next(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*(*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_56();
  }
}

void *left_context(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 1) == 0)
  {
    return VLSYNC(a3, a2);
  }

  return a3;
}

unint64_t right_context(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 1) == 0)
  {
    return VRSYNC(a1, a3, a2);
  }

  return a3;
}

void valid_prefix(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_54(a1, a2, vstmtbl);
  v9 = v8;
  switch(v10)
  {
    case 0xFFFB:
      OUTLINED_FUNCTION_15_48();

      legal_double();
      break;
    case 0xFFFC:
      OUTLINED_FUNCTION_15_48();

      legal_int();
      break;
    case 0xFFFD:
      OUTLINED_FUNCTION_15_48();

      legal_long();
      break;
    case 0xFFFE:
    case 0xFFFF:
      v11 = v7;
      if (allchrs(v8))
      {
        OUTLINED_FUNCTION_6_55();
        do
        {
          if (v6 == v4)
          {
            break;
          }

          v12 = strcmp(*(*(v5 + 16) + v4), "undefined");
          v4 += 8;
        }

        while (v12);
      }

      else
      {
        OUTLINED_FUNCTION_14_50();
      }

      v16 = 0;
      v17 = v2 + 40 * v11;
      do
      {
        if (8 * v3 == v16)
        {
          break;
        }

        v18 = strprefix(*(*(v17 + 16) + v16), v9);
        v16 += 8;
      }

      while (!v18);
      goto LABEL_20;
    default:
LABEL_20:
      OUTLINED_FUNCTION_15_48();
      break;
  }
}

BOOL allchrs(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = *a1;
    if (v1 != 45)
    {
      break;
    }

    ++a1;
  }

  return v1 == 0;
}

uint64_t strprefix(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v3 = *a2++;
    v2 = v3;
    if (!v3)
    {
      break;
    }

    v4 = *a1++;
    if (v4 != v2)
    {
      return 0;
    }
  }

  return OUTLINED_FUNCTION_4_56();
}

uint64_t legal_long()
{
  v1 = OUTLINED_FUNCTION_12_50();
  v2 = OUTLINED_FUNCTION_5_56(v1);
  v4 = strtol(v2, v3, 0);
  if (*v7)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

uint64_t legal_int()
{
  v1 = OUTLINED_FUNCTION_12_50();
  v2 = OUTLINED_FUNCTION_5_56(v1);
  v4 = strtol(v2, v3, 0);
  if (*v8)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34 || (v5 - 0x80000000) < 0xFFFFFFFF00000000)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

uint64_t legal_double()
{
  v1 = OUTLINED_FUNCTION_12_50();
  v2 = OUTLINED_FUNCTION_5_56(v1);
  v4 = strtod(v2, v3);
  if (*v7)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

void valid_prefix_char(uint64_t a1, int a2, int a3)
{
  OUTLINED_FUNCTION_8_54(a1, a2, vstmtbl);
  if ((v10 - 65532) >= 2 && (v10 - 65534) < 2)
  {
    v11 = v9;
    if (a3 == 45)
    {
      OUTLINED_FUNCTION_6_55();
      while (v7 != v5)
      {
        v12 = strcmp(*(*(v6 + 16) + v5), "undefined");
        v5 += 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_50();
    }

    v13 = 0;
    do
    {
      if (8 * v4 == v13)
      {
        break;
      }

      v14 = **(*(v3 + 40 * v11 + 16) + v13);
      v13 += 8;
    }

    while (v14 != a3);
  }

LABEL_14:
  OUTLINED_FUNCTION_15_48();
}

uint64_t unique_value(uint64_t a1, int a2, int a3, unsigned __int8 *a4, void *a5, void *a6, uint64_t a7, _WORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  if (!*a4)
  {
    return 0;
  }

  v11 = vstmtbl[12 * a2 + 1];
  v14 = a4;
  switch(*&v11[40 * a3 + 30])
  {
    case 0xFFFB:
      v15 = a11;
      OUTLINED_FUNCTION_7_54();
      result = legal_double();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFC:
      v15 = a10;
      OUTLINED_FUNCTION_7_54();
      result = legal_int();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFD:
      v15 = a9;
      OUTLINED_FUNCTION_7_54();
      result = legal_long();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFE:
    case 0xFFFF:
      v15 = a8;
      *a8 = -1;
      if (allchrs(a4))
      {
        v27 = a6;
        v18 = 0;
        v19 = &v11[40 * a3];
        v20 = -1;
        while (v18 < *(v19 + 14))
        {
          if (!strcmp(*(*(v19 + 2) + 8 * v18), "undefined"))
          {
            if (v20 != -1)
            {
              goto LABEL_30;
            }

            *v15 = v18;
            v20 = v18;
          }

          ++v18;
        }

        a6 = v27;
      }

      else
      {
        v20 = -1;
      }

      v22 = 0;
      OUTLINED_FUNCTION_13_50();
      v25 = &v11[v24 * v23];
      while (v22 < *(v25 + 14))
      {
        if (strprefix(*(*(v25 + 2) + 8 * v22), v14))
        {
          if (v20 != -1)
          {
            goto LABEL_30;
          }

          *v15 = v22;
          v20 = v22;
        }

        ++v22;
      }

      if (v20 == -1)
      {
        goto LABEL_30;
      }

      v26 = *(*(v25 + 2) + 8 * v20);
      *a5 = v26;
      if (!strcmp(v26, "undefined"))
      {
        v14 = *(*(a1 + 200) + 336);
LABEL_28:
        *a5 = v14;
      }

      *a6 = v15;
      result = 1;
      break;
    default:
LABEL_30:
      result = 0;
      break;
  }

  return result;
}

uint64_t non_unique_value(uint64_t a1, int a2, int a3, unsigned __int8 *a4, void *a5, void *a6, uint64_t a7, _WORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  if (!*a4)
  {
    return 0;
  }

  v11 = vstmtbl[12 * a2 + 1];
  v14 = a4;
  switch(*&v11[40 * a3 + 30])
  {
    case 0xFFFB:
      v15 = a11;
      OUTLINED_FUNCTION_7_54();
      result = legal_double();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFC:
      v15 = a10;
      OUTLINED_FUNCTION_7_54();
      result = legal_int();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFD:
      v15 = a9;
      OUTLINED_FUNCTION_7_54();
      result = legal_long();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFE:
    case 0xFFFF:
      v15 = a8;
      *a8 = -1;
      if (allchrs(a4))
      {
        v17 = 0;
        OUTLINED_FUNCTION_13_50();
        v20 = &v11[v19 * v18];
        v21 = *(v20 + 14) & ~(*(v20 + 14) >> 31);
        while (v21 != v17)
        {
          if (!strcmp(*(*(v20 + 2) + 8 * v17), "undefined"))
          {
            *v15 = v17;
            LOWORD(v23) = v17;
            goto LABEL_24;
          }

          ++v17;
        }
      }

      v23 = 0;
      OUTLINED_FUNCTION_13_50();
      v26 = &v11[v25 * v24];
      v27 = *(v26 + 14) & ~(*(v26 + 14) >> 31);
      while (1)
      {
        if (v27 == v23)
        {
          LOWORD(v23) = -1;
          goto LABEL_21;
        }

        if (strprefix(*(*(v26 + 2) + 8 * v23), v14))
        {
          break;
        }

        ++v23;
      }

      *v15 = v23;
LABEL_21:
      if (v23 == 0xFFFF)
      {
        goto LABEL_22;
      }

LABEL_24:
      OUTLINED_FUNCTION_13_50();
      v30 = *(*&v11[v29 * v28 + 16] + 8 * v23);
      *a5 = v30;
      if (!strcmp(v30, "undefined"))
      {
        v14 = *(*(a1 + 200) + 336);
LABEL_26:
        *a5 = v14;
      }

      *a6 = v15;
      result = 1;
      break;
    default:
LABEL_22:
      result = 0;
      break;
  }

  return result;
}

char *field_value(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v5 = &vstmtbl[12 * a1];
  v6 = &v5[1][40 * a3];
  switch(*(v6 + 30))
  {
    case 0xFFFB:
      v8 = OUTLINED_FUNCTION_3_60(a1, a2);
      v10 = v9(v8);
      v11 = *v10;
      v12 = &v5[1][40 * a3];
      if (*(v12 + 32))
      {
        v13 = v11 == 2.22507386e-308;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_26;
      }

      sprintf(a4, *(v12 + 8), v11, *v10);
      return a4;
    case 0xFFFC:
      v29 = OUTLINED_FUNCTION_3_60(a1, a2);
      v31 = *v30(v29);
      OUTLINED_FUNCTION_11_52();
      if (!v13 && v32 == 32769)
      {
        goto LABEL_26;
      }

      v21 = v32;
      goto LABEL_24;
    case 0xFFFD:
      v18 = OUTLINED_FUNCTION_3_60(a1, a2);
      v20 = *v19(v18);
      OUTLINED_FUNCTION_11_52();
      if (v13 || v21 != -2147483647)
      {
LABEL_24:
        sprintf(a4, *(v22 + 8), v23, v21);
        return a4;
      }

LABEL_26:
      v28 = 5259591;
      goto LABEL_29;
    case 0xFFFE:
      v14 = *(v6 + 16);
      v25 = OUTLINED_FUNCTION_3_60(a1, a2);
      v17 = *v26(v25);
      goto LABEL_15;
    case 0xFFFF:
      v14 = *(v6 + 16);
      v15 = OUTLINED_FUNCTION_3_60(a1, a2);
      v17 = *v16(v15);
LABEL_15:
      v27 = strcpy(a4, *(v14 + 8 * v17));
      if (!strcmp(v27, "undefined"))
      {
        v28 = 2960685;
        goto LABEL_29;
      }

      if (*a4 == 32 && !a4[1])
      {
        v28 = 2564135;
LABEL_29:
        *a4 = v28;
      }

      return a4;
    default:
      v28 = 4144959;
      goto LABEL_29;
  }
}

uint64_t time_field_value(int a1, uint64_t a2)
{
  v2 = &vstmtbl[12 * a1];
  if (!*(v2 + 86))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2[1] + 15);
  if (v3 == 65532)
  {
    return *(*v2[2])(a2 + 16);
  }

  if (v3 == 65533)
  {
    return *(*v2[2])(a2 + 16);
  }

  return 0xFFFFFFFFLL;
}

void first_fieldval(uint64_t a1, char a2, int a3, unsigned __int8 *a4)
{
  v5 = *(a1 + 200);
  *(v5 + 308) = a2;
  *(v5 + 312) = a3;
  *(v5 + 320) = a4;
  *(v5 + 328) = -1;
  if (a4)
  {
    v6 = allchrs(a4);
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 332) = v6;

  next_fieldval(a1);
}

void next_fieldval(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 328);
  v3 = v2 + 1;
  *(v1 + 328) = v2 + 1;
  v4 = vstmtbl[12 * *(v1 + 308) + 1];
  v5 = *(v1 + 312);
  if (v2 + 1 >= *&v4[40 * v5 + 28] || (v6 = *(v1 + 320)) != 0 && *v6)
  {
    v7 = *&v4[40 * v5 + 28];
    v8 = &v4[40 * v5];
    for (i = v2 + 2; v3 < v7; ++i)
    {
      v10 = *(*(v8 + 2) + 8 * v3);
      if (strprefix(v10, *(v1 + 320)) || *(v1 + 332) && !strcmp(v10, "undefined"))
      {
        break;
      }

      ++v3;
      *(v1 + 328) = i;
    }
  }

  else
  {
    v11 = *(*&v4[40 * v5 + 16] + 8 * v3);
  }

  OUTLINED_FUNCTION_15_48();
}

uint64_t can_del_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 200);
  if (*v3 == a3 || v3[1] == a3)
  {
    goto LABEL_22;
  }

  if (is_token_next(a1, a2, a3))
  {
    v7 = (*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v7 || (*v7 & 2) == 0)
    {
      v8 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
      v9 = &vstmtbl[12 * a2];
      if (!*(v9 + 86))
      {
        field_value(a2, v7, 0, v38);
        if (*v38 != 5259591 || (field_value(a2, v8, 0, v37), *v37 != 5259591))
        {
LABEL_22:
          result = 0;
          goto LABEL_23;
        }
      }

      v10 = 1;
      while (v10 < *(v9 + 16))
      {
        switch(*(v9[1] + 15))
        {
          case 0xFFFB:
            v11 = OUTLINED_FUNCTION_2_65();
            v13 = *v12(v11);
            v14 = OUTLINED_FUNCTION_1_68();
            if (v13 != *v15(v14))
            {
              goto LABEL_22;
            }

            goto LABEL_18;
          case 0xFFFC:
            v31 = OUTLINED_FUNCTION_2_65();
            v18 = *v32(v31);
            v33 = OUTLINED_FUNCTION_1_68();
            v21 = *v34(v33);
            goto LABEL_17;
          case 0xFFFD:
            v22 = OUTLINED_FUNCTION_2_65();
            v24 = *v23(v22);
            v25 = OUTLINED_FUNCTION_1_68();
            if (v24 != *v26(v25))
            {
              goto LABEL_22;
            }

            goto LABEL_18;
          case 0xFFFE:
            v27 = OUTLINED_FUNCTION_2_65();
            v18 = *v28(v27);
            v29 = OUTLINED_FUNCTION_1_68();
            v21 = *v30(v29);
            goto LABEL_17;
          case 0xFFFF:
            v16 = OUTLINED_FUNCTION_2_65();
            v18 = *v17(v16);
            v19 = OUTLINED_FUNCTION_1_68();
            v21 = *v20(v19);
LABEL_17:
            if (v18 != v21)
            {
              goto LABEL_22;
            }

LABEL_18:
            ++v10;
            break;
          default:
            goto LABEL_22;
        }
      }
    }
  }

  result = 1;
LABEL_23:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int16 *pvlist_size(unsigned __int16 *result)
{
  if (result)
  {
    return (bswap32(*result) >> 17);
  }

  return result;
}

void *pvlist_name(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_10_52(a1, a2, a3);
  v7 = vardesc(v3, v4, v5, v6);
  if (v7)
  {
    return *v7;
  }

  else
  {
    return &unk_26DD32C5A;
  }
}

uint64_t allow_left_ctxt(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2 != a4)
  {
    v4 = *(*(a1 + 192) + 9084) + a3;
    if (*&a2[8 * v4])
    {
      while (a2 != a4)
      {
        a2 = (*&a2[8 * v4] & 0xFFFFFFFFFFFFFFFCLL);
        if (!a2 || (*a2 & 2) == 0)
        {
          return 0;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_4_56();
}

uint64_t allow_right_ctxt(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2 != a4)
  {
    v4 = *(*(a1 + 192) + 9084) + a3;
    if (*&a2[8 * v4])
    {
      while (a2 != a4)
      {
        a2 = (*&a2[8 * v4] & 0xFFFFFFFFFFFFFFFCLL);
        if (!a2 || (*a2 & 2) == 0)
        {
          return 0;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_4_56();
}

char *extract_string(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, int a6)
{
  v9 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (visleft(a1, a3, a4))
  {
    v12 = a6 - 1;
    v13 = a5;
    while (v9 != a4 && v12)
    {
      if (is_token_next(a1, a2, v9))
      {
        v14 = v18;
        field_value(a2, *(v9 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL, 0, v18);
        while (1)
        {
          v15 = *v14;
          if (!*v14 || !v12)
          {
            break;
          }

          ++v14;
          *v13++ = v15;
          --v12;
        }
      }

      v9 = VRSYNC(a1, v9, a2);
    }

    *v13 = 0;
  }

  else
  {
    a5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return a5;
}

BOOL ins_tok_named(uint64_t *a1, int a2, uint64_t a3, char *__s1, uint64_t a5)
{
  v11 = 0;
  v10 = a3;
  LOWORD(v11) = *(vstmtbl[12 * a2 + 1] + 15);
  *(&v11 + 2) = strcmp(__s1, "GAP") == 0;
  v8 = VLSYNC(a5, a2);
  return vins_tok(a1, a2, v8, a5, &v10) != 0;
}

uint64_t set_fld_value(uint64_t *a1, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v11 = VLSYNC(a6, a2);
  vmark(a1, v9, a3, v11, a6, a4);
  return 1;
}

void *ins_sync(uint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a4)
  {
    vins_sync(a1, a2, *(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL, a3);
    return VLSYNC(a3, a2);
  }

  else
  {
    vins_sync(a1, a2, a3, *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL);
    return VRSYNC(a1, a3, a2);
  }
}

uint64_t project_sync(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, int a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    if (a5)
    {
      if (vproj_l(a1, a2, a4, a3))
      {
        return 1;
      }
    }

    else if (vproj_r(a1, a2, a4, a3))
    {
      return 1;
    }

    return 0;
  }

  return v5;
}

void merge_sync(uint64_t a1, unint64_t a2, int a3, unint64_t a4)
{
  if ((*(a4 + 8 * (*(*(a1 + 192) + 9084) + a3)) & 1) != 0 && project_sync(a1, a2, a3, a4, 0))
  {
    if (a2 == a4)
    {
LABEL_5:
      vmerge(a1, a4, a2);
      goto LABEL_6;
    }

    v7 = *(a1 + 200);
    v8 = *v7;
    v9 = v7[1];
    if ((v8 != a2 || v9 != a4) && (v8 != a4 || v9 != a2))
    {
      for (i = 0; ; ++i)
      {
        if (i >= *(a1 + 288))
        {
          goto LABEL_5;
        }

        v13 = i + *(*(a1 + 192) + 9084);
        v14 = *(a2 + 8 * v13);
        v15 = *(a4 + 8 * v13);
        v16 = a2 + 8 * i;
        v17 = a4 + 8 * i;
        if (v14)
        {
          if (v15)
          {
            if ((v14 & 0xFFFFFFFFFFFFFFFCLL) != a4 && (*(v16 + 24) & 0xFFFFFFFFFFFFFFFCLL) != a4)
            {
              break;
            }
          }

          else
          {
            v18 = *(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL;
            if (v18 != a2 && !visleft(a1, v18, a2))
            {
              break;
            }

            v19 = v15 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != a2)
            {
              v20 = a1;
              v21 = a2;
              goto LABEL_31;
            }
          }
        }

        else if (v15)
        {
          v22 = *(v16 + 24) & 0xFFFFFFFFFFFFFFFCLL;
          if (v22 != a4 && !visleft(a1, v22, a4))
          {
            break;
          }

          v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v14 & 0xFFFFFFFFFFFFFFFCLL) != a4)
          {
            v20 = a1;
            v21 = a4;
LABEL_31:
            if (!visright(v20, v19, v21))
            {
              break;
            }

            continue;
          }
        }

        else if (visleft(a1, v14 & 0xFFFFFFFFFFFFFFFCLL, *(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL) || visright(a1, *(v16 + 24) & 0xFFFFFFFFFFFFFFFCLL, *(a4 + 8 * (i + *(*(a1 + 192) + 9084))) & 0xFFFFFFFFFFFFFFFCLL))
        {
          break;
        }
      }
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_15_48();
}

void fill_stream_list(uint64_t a1, int *a2, _BYTE *a3)
{
  if (*a3)
  {
    v5 = OUTLINED_FUNCTION_9_53(*a3);
    *(a2 + 1) = v5;
    if (!v5)
    {
      goto LABEL_29;
    }

    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *a2;
      if (v6 >= v8)
      {
        break;
      }

      v9 = &a3[v7];
      v10 = *(a2 + 1);
      *(v10 + 16 * v6) = *v9;
      v11 = v9[1];
      v12 = v9 + 2;
      v13 = 1;
      for (i = v11; i; --i)
      {
        if (*v12++)
        {
          ++v13;
        }
      }

      *(v10 + 16 * v6 + 4) = v13;
      v16 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
      *(*(a2 + 1) + 16 * v6 + 8) = v16;
      if (v16)
      {
        *v16 = 0;
        v17 = &a3[v7 + 2];
        v7 += v11 + 2;
        v18 = 1;
        while (1)
        {
          v19 = __OFSUB__(v11, 1);
          LODWORD(v11) = v11 - 1;
          if (v11 < 0 != v19)
          {
            break;
          }

          if (*v17)
          {
            *(*(*(a2 + 1) + 16 * v6 + 8) + v18++) = *v17;
          }

          ++v17;
        }
      }

      else
      {
        v7 += 2;
      }

      ++v6;
    }

    v20 = *(a2 + 1) + 16 * v8;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_53(*(a1 + 288));
    *(a2 + 1) = v21;
    if (!v21)
    {
      goto LABEL_29;
    }

    for (j = 0; ; ++j)
    {
      v23 = *a2;
      if (j >= v23)
      {
        break;
      }

      v24 = &v21[2 * j];
      *v24 = j;
      v25 = SLODWORD(vstmtbl[12 * j + 8]);
      *(v24 + 1) = v25;
      v26 = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
      v21 = *(a2 + 1);
      v21[2 * j + 1] = v26;
      if (v26)
      {
        for (k = 0; ; ++k)
        {
          v28 = &v21[2 * j];
          if (k >= *(v28 + 1))
          {
            break;
          }

          *(*(v28 + 1) + k) = k;
          v21 = *(a2 + 1);
        }
      }
    }

    v20 = &v21[2 * v23];
  }

  if (!*(v20 - 8))
  {
    free_stream_list(a2);
  }

LABEL_29:
  OUTLINED_FUNCTION_15_48();
}