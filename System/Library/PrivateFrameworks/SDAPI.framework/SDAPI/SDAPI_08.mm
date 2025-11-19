void DgnTextFileParser::scanValueForLineFieldFormats(DgnTextFileParser *this, const DgnString *a2)
{
  *(this + 30) = 0;
  v4 = *(this + 34);
  if (v4 >= 1)
  {
    v5 = 16 * v4 - 16;
    do
    {
      DgnString::~DgnString((*(this + 16) + v5));
      v5 -= 16;
    }

    while (v5 != -16);
  }

  *(this + 34) = 0;
  v6 = *(a2 + 2);
  v7 = *a2;
  DgnString::DgnString(&v53);
  DgnString::DgnString(&v51);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = &byte_262899963;
  }

  v9 = MEMORY[0x277D85DE0];
LABEL_8:
  while (1)
  {
    v10 = *v8;
    if (*v8 < 1)
    {
      break;
    }

    while ((*(v9 + 4 * v10 + 60) & 0x4000) != 0)
    {
      v11 = *++v8;
      v10 = v11;
      if (v11 <= 0)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    v12 = v8;
    do
    {
      if ((v10 & 0x80) == 0 && ((*(v9 + 4 * v10 + 60) & 0x4000) != 0 || v10 == 58))
      {
        break;
      }

      v13 = *++v12;
      v10 = v13;
    }

    while (v13);
    DgnString::set(&v53, v8, v12 - v8);
    if (v54)
    {
      v14 = v53;
    }

    else
    {
      v14 = &byte_262899963;
    }

    v15 = 4;
    v16 = &dword_279B3B8C0;
    while (strcmp(v14, *(v16 - 1)))
    {
      v16 += 4;
      if (!--v15)
      {
        if (*(this + 10))
        {
          v19 = *(this + 4);
        }

        v48 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1502, "dfutil/dtxtfile", 7, "%.500s %.500s %u", v17, v18, v8);
        goto LABEL_8;
      }
    }

    if (*v12 != 58)
    {
      if (*(this + 10))
      {
        v20 = *(this + 4);
      }

      else
      {
        v20 = &byte_262899963;
      }

      v46 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1460, "dfutil/dtxtfile", 25, "%.500s %u", v17, v18, v20);
    }

    v23 = *(v12 + 1);
    v22 = v12 + 1;
    v21 = v23;
    v8 = v22;
    if (v23)
    {
      v8 = v22;
      do
      {
        if ((v21 & 0x80) == 0 && (*(v9 + 4 * v21 + 60) & 0x4000) != 0)
        {
          break;
        }

        v24 = *++v8;
        v21 = v24;
      }

      while (v24);
    }

    DgnString::set(&v51, v22, v8 - v22);
    if (v52)
    {
      v27 = v51;
    }

    else
    {
      v27 = &byte_262899963;
    }

    v28 = v27;
    if (v52 <= 1)
    {
      if (*(this + 10))
      {
        v29 = *(this + 4);
      }

      else
      {
        v29 = &byte_262899963;
      }

      v47 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1472, "dfutil/dtxtfile", 26, "%.500s %u", v25, v26, v29);
      v28 = v27;
    }

    while (1)
    {
      v30 = *v28;
      if (v30 < 1)
      {
        break;
      }

      ++v28;
      if ((*(v9 + 4 * v30 + 60) & 0x40000) == 0)
      {
        goto LABEL_49;
      }
    }

    if (!*v28 && !strchr(v27, 58))
    {
      goto LABEL_52;
    }

LABEL_49:
    if (*(this + 10))
    {
      v31 = *(this + 4);
    }

    v49 = *(this + 25);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1477, "dfutil/dtxtfile", 24, "%.500s %.500s %u", v25, v26, v27);
LABEL_52:
    v32 = *(this + 34);
    if (v32)
    {
      v33 = 0;
      for (i = 0; i < v32; ++i)
      {
        v35 = *(this + 16) + v33;
        v36 = *(v35 + 8);
        v37 = *v35;
        if (v36)
        {
          v38 = v37;
        }

        else
        {
          v38 = &byte_262899963;
        }

        if (v52)
        {
          v39 = v51;
        }

        else
        {
          v39 = &byte_262899963;
        }

        if (!strcmp(v38, v39))
        {
          if (*(this + 10))
          {
            v42 = *(this + 4);
          }

          v50 = *(this + 25);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1485, "dfutil/dtxtfile", 23, "%.500s %d %.500s %u", v40, v41, v27);
          v32 = *(this + 34);
        }

        v33 += 16;
      }
    }

    else
    {
      v32 = 0;
    }

    if (v32 == *(this + 35))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 128, 1, 1);
      v32 = *(this + 34);
    }

    DgnString::DgnString((*(this + 16) + 16 * v32), &v51);
    ++*(this + 34);
    v43 = *v8;
    if (v43 >= 1)
    {
      v8 += (*(v9 + 4 * v43 + 60) >> 14) & 1;
    }

    v44 = *v16;
    v45 = *(this + 30);
    if (v45 == *(this + 31))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 112, 1, 1);
      v45 = *(this + 30);
    }

    *(*(this + 14) + 4 * v45) = v44;
    *(this + 30) = v45 + 1;
  }

LABEL_11:
  if (v10)
  {
    goto LABEL_12;
  }

  DgnString::~DgnString(&v51);
  DgnString::~DgnString(&v53);
}

void sub_2625DB754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnTextFileParser::readHeader(DgnTextFileParser *this)
{
  DgnString::DgnString(&v52);
  DgnString::DgnString(v51);
  DgnString::preAllocate(this + 216, 256);
  v2 = MEMORY[0x277D85DE0];
  while (DgnTextFileParser::getNextHeaderField(this, &v52, (this + 216), 0))
  {
    if (*(this + 56) <= 1u)
    {
      if (*(this + 22))
      {
        v5 = *(this + 10);
      }

      else
      {
        v5 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v6 = *(this + 4);
      }

      v44 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1370, "dfutil/dtxtfile", 5, "%.500s %.500s %u", v3, v4, v5);
    }

    v7 = *(this + 22);
    if (v7 < 2)
    {
      if (v7)
      {
LABEL_15:
        v8 = *(this + 10);
      }

      else
      {
        v8 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v10 = *(this + 4);
      }

      v45 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1375, "dfutil/dtxtfile", 4, "%.500s %.500s %u", v3, v4, v8);
      goto LABEL_19;
    }

    v9 = **(this + 10);
    if ((v9 & 0x8000000000000000) == 0 && (*(v2 + 4 * v9 + 60) & 0x4000) != 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v11 = v53;
    v12 = v52;
    if (v53)
    {
      v13 = v52;
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (!strcmp(v13, "DGNTEXTFILE_FIELDS"))
    {
      if (*(this + 22))
      {
        v16 = *(this + 10);
      }

      else
      {
        v16 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v17 = *(this + 4);
      }

      v46 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1381, "dfutil/dtxtfile", 8, "%.500s %.500s %u", v14, v15, v16);
      v11 = v53;
      v12 = v52;
    }

    if (v11)
    {
      v18 = v12;
    }

    else
    {
      v18 = &byte_262899963;
    }

    if (!strncmp(v18, "DGNTEXTFILE_", 0xCuLL))
    {
      if (*(this + 22))
      {
        v21 = *(this + 10);
      }

      if (*(this + 10))
      {
        v22 = *(this + 4);
      }

      v47 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1391, "dfutil/dtxtfile", 9, "%.500s %.500s %.500s %u", v19, v20, v18);
      v11 = v53;
      v12 = v52;
    }

    if (v11)
    {
      v23 = v12;
    }

    else
    {
      v23 = &byte_262899963;
    }

    HeaderField = DgnTextFile::getHeaderField(this, v23, 0, 0);
    v27 = v23;
    if (HeaderField)
    {
      v28 = v53 ? v52 : &byte_262899963;
      v29 = strcmp(v28, "^//");
      v27 = v23;
      if (v29)
      {
        if (*(this + 22))
        {
          v30 = *(this + 10);
        }

        if (*(this + 10))
        {
          v31 = *(this + 4);
        }

        v48 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1401, "dfutil/dtxtfile", 6, "%.500s %.500s %.500s %u", v25, v26, v23);
        v27 = v23;
      }
    }

    while (1)
    {
      v32 = *v27;
      if (v32 < 1)
      {
        break;
      }

      ++v27;
      if ((*(v2 + 4 * v32 + 60) & 0x40000) == 0)
      {
        goto LABEL_55;
      }
    }

    if (!*v27)
    {
      goto LABEL_60;
    }

LABEL_55:
    if (*(this + 22))
    {
      v33 = *(this + 10);
    }

    if (*(this + 10))
    {
      v34 = *(this + 4);
    }

    v49 = *(this + 25);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1409, "dfutil/dtxtfile", 10, "%.500s %.500s %.500s %u", v25, v26, v23);
LABEL_60:
    v35 = *v23;
    LOBYTE(v36) = *v23 == 0;
    if (*v23 < 1)
    {
LABEL_67:
      if (v36)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v37 = 1;
      while ((*(v2 + 4 * v35 + 60) & 0x4000) == 0)
      {
        v35 = v23[v37];
        v36 = v23[v37] == 0;
        if (v37 == -1)
        {
          v36 = 1;
        }

        if ((v23[v37] & 0x80000000) == 0)
        {
          ++v37;
          if (!v36)
          {
            continue;
          }
        }

        goto LABEL_67;
      }
    }

    if (*(this + 22))
    {
      v38 = *(this + 10);
    }

    if (*(this + 10))
    {
      v39 = *(this + 4);
    }

    v50 = *(this + 25);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1415, "dfutil/dtxtfile", 11, "%.500s %.500s %.500s %u", v25, v26, v23);
LABEL_73:
    if (*(this + 10))
    {
      v40 = *(this + 4);
    }

    else
    {
      v40 = &byte_262899963;
    }

    DgnTextFile::convertFromDTFFormat((this + 216), v51, v40, *(this + 25));
    v41 = *(this + 42);
    if (v41 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v41 = *(this + 42);
    }

    DgnString::DgnString((*(this + 20) + 16 * v41), &v52);
    ++*(this + 42);
    v42 = *(this + 46);
    if (v42 == *(this + 47))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 176, 1, 1);
      v42 = *(this + 46);
    }

    DgnString::DgnString((*(this + 22) + 16 * v42), v51);
    ++*(this + 46);
    v43 = *(this + 50);
    if (v43 == *(this + 51))
    {
      DgnPrimArray<char>::reallocElts(this + 192, 1, 1);
      v43 = *(this + 50);
    }

    *(*(this + 24) + v43) = 0;
    *(this + 50) = v43 + 1;
  }

  DgnString::~DgnString(v51);
  DgnString::~DgnString(&v52);
}

void sub_2625DBC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  _Unwind_Resume(a1);
}

uint64_t DgnTextFileParser::getLine(DgnTextFileParser *this)
{
  *(this + 22) = 0;
  if (((*(**(this + 1) + 56))(*(this + 1)) & 1) == 0)
  {
    v9 = MEMORY[0x277D85DE0];
    do
    {
      DgnStream::getLine(*(this + 1), (this + 80), v2, v3, v4, v5, v6, v7);
      if (*(this + 22) <= 1u && ((*(**(this + 1) + 56))(*(this + 1)) & 1) != 0)
      {
        break;
      }

      ++*(this + 25);
      if ((*(**(this + 1) + 56))(*(this + 1)))
      {
        if (*(this + 10))
        {
          v12 = *(this + 4);
        }

        else
        {
          v12 = &byte_262899963;
        }

        v16 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1676, "dfutil/dtxtfile", 22, "%.500s %u", v10, v11, v12);
      }

      if (*(this + 208) != 1)
      {
        return 1;
      }

      v13 = *(this + 22);
      v14 = v13 ? *(this + 10) : &byte_262899963;
      if (*v14 != 94)
      {
        return 1;
      }

      if (v14[1] != 47)
      {
        return 1;
      }

      if (v14[2] != 47)
      {
        return 1;
      }

      if (v13 >= 5)
      {
        v15 = *(*(this + 10) + 3);
        if (v15 < 0 || (*(v9 + 4 * v15 + 60) & 0x4000) == 0)
        {
          return 1;
        }
      }

      *(this + 22) = 0;
    }

    while (!(*(**(this + 1) + 56))(*(this + 1)));
  }

  return 0;
}

char *DgnTextFileParser::getLineFieldString(DgnTextFileParser *this, unsigned int a2)
{
  v2 = (*(this + 18) + 16 * a2);
  if (v2[2])
  {
    return *v2;
  }

  else
  {
    return &byte_262899963;
  }
}

uint64_t DgnTextFileParser::getLineFieldInteger(DgnTextFileParser *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 18) + 16 * a2;
  if (*(v8 + 8))
  {
    v9 = *v8;
  }

  else
  {
    v9 = &byte_262899963;
  }

  return DgnTextFile::atosi(this, v9, a3, a4, a5, a6, a7, a8);
}

uint64_t DgnTextFileParser::getLineFieldUnsigned(DgnTextFileParser *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 18) + 16 * a2;
  if (*(v8 + 8))
  {
    v9 = *v8;
  }

  else
  {
    v9 = &byte_262899963;
  }

  return DgnTextFile::atoui(this, v9, a3, a4, a5, a6, a7, a8);
}

double DgnTextFileParser::getLineFieldReal(DgnTextFileParser *this, unsigned int a2)
{
  v3 = *(this + 18) + 16 * a2;
  if (*(v3 + 8))
  {
    v4 = *v3;
  }

  else
  {
    v4 = &byte_262899963;
  }

  v5 = atof(v4);

  return eround(v5, 14);
}

void DgnTextFileWriter::DgnTextFileWriter(DgnTextFileWriter *this)
{
  DgnTextFile::DgnTextFile(this);
  *v2 = &unk_287527228;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  DgnString::DgnString((v2 + 248));
  DgnString::DgnString((this + 264));
  *(this + 209) = 0;
}

void sub_2625DBFFC(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 248));
  DgnArray<DgnString>::releaseAll(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnTextFile::~DgnTextFile(v1);
  _Unwind_Resume(a1);
}

void DgnTextFileWriter::~DgnTextFileWriter(DgnTextFileWriter *this)
{
  *this = &unk_287527228;
  if (*(this + 104) == 1)
  {
    if ((*(this + 209) & 1) == 0)
    {
      DgnTextFileWriter::writeHeader(this);
    }

    DgnTextFile::closeDgnTextFile(this);
  }

  DgnString::~DgnString((this + 264));
  DgnString::~DgnString((this + 248));
  DgnArray<DgnString>::releaseAll(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);

  DgnTextFile::~DgnTextFile(this);
}

{
  DgnTextFileWriter::~DgnTextFileWriter(this);

  JUMPOUT(0x26672B1B0);
}

void DgnTextFileWriter::writeHeader(DgnTextFileWriter *this)
{
  v27 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v24);
  DgnString::operator=(&v24, "DGNTEXTFILE_VERSION");
  DgnString::operator+=(&v24, " ");
  snprintf(__str, 0x14uLL, "%u", *(this + 16));
  DgnString::operator+=(&v24, __str);
  DgnString::operator+=(&v24, "\n");
  if (v25)
  {
    v2 = v24;
  }

  else
  {
    v2 = &byte_262899963;
  }

  if (v25)
  {
    v3 = (v25 - 1);
  }

  else
  {
    v3 = 0;
  }

  (*(**(this + 1) + 80))(*(this + 1), v2, v3);
  DgnString::operator=(&v24, "DGNTEXTFILE_TYPE");
  DgnString::operator+=(&v24, " ");
  DgnString::operator+=(&v24, this + 16);
  DgnString::operator+=(&v24, "\n");
  if (v25)
  {
    v4 = v24;
  }

  else
  {
    v4 = &byte_262899963;
  }

  if (v25)
  {
    v5 = (v25 - 1);
  }

  else
  {
    v5 = 0;
  }

  (*(**(this + 1) + 80))(*(this + 1), v4, v5);
  DgnString::operator=(&v24, "DGNTEXTFILE_FILEVERSION_MAJOR");
  DgnString::operator+=(&v24, " ");
  snprintf(__str, 0x14uLL, "%u", *(this + 17));
  DgnString::operator+=(&v24, __str);
  DgnString::operator+=(&v24, "\n");
  if (v25)
  {
    v6 = v24;
  }

  else
  {
    v6 = &byte_262899963;
  }

  if (v25)
  {
    v7 = (v25 - 1);
  }

  else
  {
    v7 = 0;
  }

  (*(**(this + 1) + 80))(*(this + 1), v6, v7);
  DgnString::operator=(&v24, "DGNTEXTFILE_FILEVERSION_MINOR");
  DgnString::operator+=(&v24, " ");
  snprintf(__str, 0x14uLL, "%u", *(this + 18));
  DgnString::operator+=(&v24, __str);
  DgnString::operator+=(&v24, "\n");
  if (v25)
  {
    v8 = v24;
  }

  else
  {
    v8 = &byte_262899963;
  }

  if (v25)
  {
    v9 = (v25 - 1);
  }

  else
  {
    v9 = 0;
  }

  (*(**(this + 1) + 80))(*(this + 1), v8, v9);
  DgnString::DgnString(__str);
  if (*(this + 30))
  {
    v10 = 0;
    do
    {
      v11 = *(*(this + 14) + 4 * v10);
      if (v10)
      {
        DgnString::operator+=(__str, " ");
      }

      v12 = 4;
      v13 = &dword_279B3B8C0;
      while (*v13 != v11)
      {
        v13 += 4;
        if (!--v12)
        {
          goto LABEL_34;
        }
      }

      DgnString::operator+=(__str, *(v13 - 1));
LABEL_34:
      if (*(*(this + 16) + 16 * v10 + 8) >= 2u)
      {
        DgnString::operator+=(__str, ":");
        DgnString::operator+=(__str, *(this + 16) + 16 * v10);
      }

      ++v10;
    }

    while (v10 < *(this + 30));
  }

  DgnString::operator=(&v24, "DGNTEXTFILE_FIELDS");
  DgnString::operator+=(&v24, " ");
  DgnString::operator+=(&v24, __str);
  DgnString::operator+=(&v24, "\n");
  if (v25)
  {
    v14 = v24;
  }

  else
  {
    v14 = &byte_262899963;
  }

  if (v25)
  {
    v15 = (v25 - 1);
  }

  else
  {
    v15 = 0;
  }

  (*(**(this + 1) + 80))(*(this + 1), v14, v15);
  if (*(this + 42))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      DgnString::operator=(&v24, (*(this + 20) + v16));
      DgnString::operator+=(&v24, " ");
      *(this + 64) = 0;
      DgnTextFile::convertToDTFFormat((*(this + 22) + v16), (this + 248), v18);
      DgnString::operator+=(&v24, this + 248);
      DgnString::operator+=(&v24, "\n");
      if (v25)
      {
        v19 = v24;
      }

      else
      {
        v19 = &byte_262899963;
      }

      if (v25)
      {
        v20 = (v25 - 1);
      }

      else
      {
        v20 = 0;
      }

      (*(**(this + 1) + 80))(*(this + 1), v19, v20);
      ++v17;
      v16 += 16;
    }

    while (v17 < *(this + 42));
  }

  DgnString::operator=(&v24, "DGNTEXTFILE_ENDHEAD");
  DgnString::operator+=(&v24, "\n");
  if (v25)
  {
    v21 = v24;
  }

  else
  {
    v21 = &byte_262899963;
  }

  if (v25)
  {
    v22 = (v25 - 1);
  }

  else
  {
    v22 = 0;
  }

  (*(**(this + 1) + 80))(*(this + 1), v21, v22);
  *(this + 209) = 1;
  DgnString::~DgnString(__str);
  DgnString::~DgnString(&v24);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_2625DC5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double DgnTextFileWriter::openDgnTextFileWriter(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a4)
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  v7 = DFile::openSubFile(a2, a3, v6, 1);
  DgnTextFile::closeDgnTextFile(a1);
  *(a1 + 8) = v7;
  *(a1 + 100) = 0;
  *&result = 5;
  *(a1 + 64) = 5;
  *(a1 + 72) = 0;
  *(a1 + 104) = 1;
  return result;
}

DgnString *DgnTextFileWriter::setFileType(uint64_t a1, char *a2, void *a3)
{
  result = DgnString::operator=((a1 + 16), a2);
  *(a1 + 68) = *a3;
  return result;
}

void DgnTextFileWriter::setHeaderField(DgnTextFileWriter *this, const char *a2, const char *a3)
{
  DgnString::DgnString(v8, a2);
  v5 = *(this + 42);
  if (v5 == *(this + 43))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
    v5 = *(this + 42);
  }

  DgnString::DgnString((*(this + 20) + 16 * v5), v8);
  ++*(this + 42);
  DgnString::~DgnString(v8);
  DgnString::DgnString(v8, a3);
  v6 = *(this + 46);
  if (v6 == *(this + 47))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 176, 1, 1);
    v6 = *(this + 46);
  }

  DgnString::DgnString((*(this + 22) + 16 * v6), v8);
  ++*(this + 46);
  DgnString::~DgnString(v8);
  v7 = *(this + 50);
  if (v7 == *(this + 51))
  {
    DgnPrimArray<char>::reallocElts(this + 192, 1, 1);
    v7 = *(this + 50);
  }

  *(*(this + 24) + v7) = 1;
  *(this + 50) = v7 + 1;
}

void DgnTextFileWriter::setHeaderFieldUnsigned(DgnTextFileWriter *this, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x28uLL, "%llu", a3);
  DgnTextFileWriter::setHeaderField(this, a2, __str);
  v5 = *MEMORY[0x277D85DE8];
}

void DgnTextFileWriter::setHeaderFieldBool(DgnTextFileWriter *this, const char *a2, unsigned int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x28uLL, "%llu", a3);
  DgnTextFileWriter::setHeaderField(this, a2, __str);
  v5 = *MEMORY[0x277D85DE8];
}

void DgnTextFileWriter::setHeaderFieldInteger(DgnTextFileWriter *this, const char *a2, int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x14uLL, "%d", a3);
  DgnTextFileWriter::setHeaderField(this, a2, __str);
  v5 = *MEMORY[0x277D85DE8];
}

void DgnTextFileWriter::setHeaderFieldReal(DgnTextFileWriter *this, const char *a2, double a3)
{
  DgnString::formatFloat(0xE, a3, &v6);
  if (v7)
  {
    v5 = v6;
  }

  else
  {
    v5 = &byte_262899963;
  }

  DgnTextFileWriter::setHeaderField(this, a2, v5);
  DgnString::~DgnString(&v6);
}

void DgnTextFileWriter::setLineFieldFormat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DgnPrimArray<int>::copyArraySlice(a1 + 112, a2, 0, *(a2 + 8));
  v5 = *(a3 + 8);

  DgnArray<DgnString>::copyArraySlice(a1 + 128, a3, 0, v5);
}

DgnString *DgnTextFileWriter::setLineFieldValue(DgnTextFileWriter *this, unsigned int a2, char *a3)
{
  if (!*(this + 60) && *(this + 30))
  {
    v6 = 0;
    do
    {
      v7 = *(this + 60);
      if (v7 == *(this + 61))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 232, 1, 1);
        v7 = *(this + 60);
      }

      DgnString::DgnString((*(this + 29) + 16 * v7));
      ++*(this + 60);
      v8 = *(this + 56);
      if (v8 == *(this + 57))
      {
        DgnPrimArray<char>::reallocElts(this + 216, 1, 1);
        v8 = *(this + 56);
      }

      *(*(this + 27) + v8) = 0;
      *(this + 56) = v8 + 1;
      ++v6;
    }

    while (v6 < *(this + 30));
  }

  DgnString::preAllocate(*(this + 29) + 16 * a2, 256);
  result = DgnString::operator=((*(this + 29) + 16 * a2), a3);
  *(*(this + 27) + a2) = 1;
  return result;
}

DgnString *DgnTextFileWriter::setLineFieldIntegerValue(DgnTextFileWriter *this, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x14uLL, "%d", a3);
  result = DgnTextFileWriter::setLineFieldValue(this, a2, __str);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

DgnString *DgnTextFileWriter::setLineFieldUnsignedValue(DgnTextFileWriter *this, unsigned int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x14uLL, "%u", a3);
  result = DgnTextFileWriter::setLineFieldValue(this, a2, __str);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void DgnTextFileWriter::setLineFieldRealValue(DgnTextFileWriter *this, unsigned int a2, double a3)
{
  DgnString::formatFloat(0xE, a3, &v6);
  if (v7)
  {
    v5 = v6;
  }

  else
  {
    v5 = &byte_262899963;
  }

  DgnTextFileWriter::setLineFieldValue(this, a2, v5);
  DgnString::~DgnString(&v6);
}

void DgnTextFileWriter::writeNextLine(DgnTextFileWriter *this)
{
  if ((*(this + 209) & 1) == 0)
  {
    DgnTextFileWriter::writeHeader(this);
  }

  DgnString::preAllocate(this + 80, 4095);
  *(this + 22) = 0;
  *(this + 64) = 0;
  v3 = *(this + 30);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if (i)
      {
        DgnString::operator+=((this + 80), " ");
      }

      v5 = *(*(this + 14) + 4 * i);
      DgnTextFile::convertToDTFFormat((*(this + 29) + 16 * i), (this + 248), v2);
      if (v5 <= 3)
      {
        DgnString::operator+=(this + 20, this + 248);
      }
    }
  }

  DgnString::operator+=((this + 80), "\n");
  v6 = *(this + 22);
  if (v6)
  {
    v7 = *(this + 10);
  }

  else
  {
    v7 = &byte_262899963;
  }

  v8 = v6 != 0;
  v9 = v6 - 1;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  (*(**(this + 1) + 80))(*(this + 1), v7, v10);
  if (v3)
  {
    v11 = *(this + 27);

    bzero(v11, v3);
  }
}

uint64_t MrecInitLibrary_kernel(void)
{
  MrecInitModule_active_kernel();
  MrecInitModule_btlat_kernel();
  MrecInitModule_constran_kernel();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_crumb_kernel();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_latutil_kernel();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_nbchoice_kernel();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_recog_kernel();
  MrecInitModule_searchlm_kernel();
  MrecInitModule_sausage_kernel();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_wordlat_kernel();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughKernel(void)
{
  MrecInitLibrarySet_throughNet();
  MrecInitLibrarySet_throughGerm();

  return MrecInitLibrary_kernel();
}

void MrecInitLibrary_lm(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_multilm_lm();
  MrecInitModule_recentb_lm();
  MrecInitModule_wordlm_lm();

  MrecInitModule_ngram2fsm_lm();
}

void MrecInitLibrarySet_throughLm(void)
{
  MrecInitLibrarySet_throughWord();

  MrecInitLibrary_lm();
}

FeatureFrame *DgnDelete<FeatureFrame>(FeatureFrame *result)
{
  if (result)
  {
    FeatureFrame::~FeatureFrame(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t convertSDWordSpecsToTranscription(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = *(a3 + 12);
  v13 = a2 >= v12;
  v14 = a2 - v12;
  if (v14 != 0 && v13)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a3, v14, 0);
  }

  v15 = *(a3 + 8);
  if (v15 <= a2)
  {
    if (v15 < a2)
    {
      v18 = a2 - v15;
      v19 = 16 * v15;
      do
      {
        v20 = (*a3 + v19);
        *v20 = 0;
        v20[1] = 0;
        v19 += 16;
        --v18;
      }

      while (v18);
    }
  }

  else if (v15 > a2)
  {
    v16 = v15;
    v17 = 16 * v15 - 16;
    do
    {
      --v16;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a3 + v17);
      v17 -= 16;
    }

    while (v16 > a2);
  }

  *(a3 + 8) = a2;
  v41 = 0;
  v42 = 0;
  if (a2)
  {
    v21 = 0;
    v22 = a2;
    v23 = ModelMgr::smpModelMgr;
    do
    {
      v24 = (a1 + 16 * v21);
      v25 = *v24;
      if (HIDWORD(*v24))
      {
        v26 = 0;
      }

      else
      {
        v26 = (*v24 & 0xFFFF0000) == 0;
        *v24;
      }

      if (!v26)
      {
        throwBadSdapiArgument("SDhVoc", *v24, a3, a4, a5, a6, a7, a8);
      }

      if (v25 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v25, a3, a4, a5, a6, a7, a8);
      }

      if (v8 != v25)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 218, "sdapi/sdrecog", 1, "%llu", a7, a8, *v24);
      }

      v27 = v24[1];
      v28 = v27 - 1;
      if ((v27 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v27, a3, a4, a5, a6, a7, a8);
      }

      if (v28 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v27, a3, a4, a5, a6, a7, a8);
      }

      v29 = *(ModelMgr::getVocOrThrow(v23, v8, a3, a4, a5, a6, a7, a8) + 48);
      WordList::verifyVisible(v29, v28, v30, v31, v32, v33, v34, v35);
      WordList::lookupAll(v29, v28, &v41);
      *(*a3 + 16 * v21 + 8) = 0;
      if (v42)
      {
        v36 = 0;
        do
        {
          v37 = *a3 + 16 * v21;
          v38 = *(v41 + 4 * v36);
          v39 = *(v37 + 8);
          if (v39 == *(v37 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(*a3 + 16 * v21, 1, 1);
            v39 = *(v37 + 8);
          }

          *(*v37 + 4 * v39) = v38 & 0xFFFFFF | (v8 << 25);
          ++*(v37 + 8);
          ++v36;
        }

        while (v36 < v42);
      }

      ++v21;
    }

    while (v21 != v22);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v41);
}

void sub_2625DD1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::DgnIOwnArray(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1, a2, 0);
    LODWORD(v4) = *(a1 + 8);
    if (v4 > v2)
    {
      DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::destructAt(a1, v2, v4 - v2);
      goto LABEL_8;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < v2)
  {
    v4 = v4;
    do
    {
      *(*a1 + 8 * v4++) = 0;
    }

    while (v2 != v4);
  }

LABEL_8:
  *(a1 + 8) = v2;
  return a1;
}

uint64_t DgnDelete<WordLattice>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 48))(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

NBestChoiceList *DgnDelete<NBestChoiceList>(NBestChoiceList *result)
{
  if (result)
  {
    NBestChoiceList::~NBestChoiceList(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t SDRecog_GuessPronsNonAcoustic(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t *a11, const char **a12, unsigned int a13, unsigned int a14, _DWORD *a15, _BYTE *a16, unsigned int a17)
{
  v22 = SdapiInsurance::SdapiInsurance(v287, "SDRecog_GuessPronsNonAcoustic", 1, 0, 239);
  if (v287[97] != 1)
  {
    v226 = 0;
    goto LABEL_197;
  }

  v30 = a13;
  v31 = a12;
  v251 = a10;
  if (gbShowCalls == 1)
  {
    v32 = a11;
    if (gbShowCallPointerArguments)
    {
      v33 = a12;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v34 = a15;
    if (gbShowCallPointerArguments)
    {
      v35 = a16;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v36 = "SD_TRUE";
    if (!a17)
    {
      v36 = "SD_FALSE";
    }

    xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, <SDh %lld>, <SDh %lld>, <SDh %lld>, <SDh %lld>, <SDh %lld>, <SDh %lld>, <SDh %lld>, <SDh %lld>, Masked:0x%016llx, Masked:0x%016llx, %llu, %llu, Masked:0x%016llx, Masked:0x%016llx, %.500s)\n", v23, v24, v25, v26, "SDRecog_GuessPronsNonAcoustic", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v32, v33, a13, a14, v34, v35, v36);
  }

  if (!a11)
  {
    throwBadLengthForNullPointer(1, "DgnVerifyReadPtr", v24, v25, v26, v27, v28, v29);
  }

  LOBYTE(v254) = 0;
  if (!a12 && a13)
  {
    throwBadLengthForNullPointer(a13, "DgnVerifyReadPtr", v24, v25, v26, v27, v28, v29);
    LOBYTE(v254) = 0;
LABEL_18:
    v37 = a13;
    v38 = a12;
    do
    {
      if (!*v38)
      {
        throwBadStringPointer(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      LOBYTE(v254) = 0;
      ++v38;
      --v37;
    }

    while (v37);
    if (!a16)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  LOBYTE(v254) = 0;
  if (a13)
  {
    goto LABEL_18;
  }

  LODWORD(v37) = 1;
  if (!a16)
  {
    goto LABEL_26;
  }

LABEL_23:
  LOBYTE(v254) = 0;
  if (!*a16)
  {
LABEL_26:
    v40 = 0;
    goto LABEL_27;
  }

  v39 = MemChunkAlloc(0x30uLL, 0);
  v40 = ReproMgr::ReproMgr(v39, a16, 3);
LABEL_27:
  v244 = v40;
  v253 = a7;
  v248 = a8;
  if (v37)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2709, "sdapi/sdrecog", 6, "%s", v28, v29, &errStr_sdapi_sdrecog_E_NO_SPOKENFORM);
    v285 = 0;
    v286 = 0;
  }

  else
  {
    v285 = 0;
    v286 = 0;
    do
    {
      v45 = *v31;
      if (!*v31 || !*v45)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2715, "sdapi/sdrecog", 4, "%s", v28, v29, &errStr_sdapi_sdrecog_E_BAD_SPOKENFORM);
      }

      DgnString::DgnString(&v254, v45);
      v46 = v286;
      if (v286 == HIDWORD(v286))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v285, 1, 1);
        v46 = v286;
      }

      DgnString::DgnString((v285 + 16 * v46), &v254);
      LODWORD(v286) = v286 + 1;
      DgnString::~DgnString(&v254);
      ++v31;
      --v30;
    }

    while (v30);
  }

  if (!a14)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2719, "sdapi/sdrecog", 35, "%s", v28, v29, &errStr_sdapi_sdrecog_E_ZERO_MAXNEWPRONS);
  }

  v243 = RecogCtlMgr::smpRecogCtlMgr;
  v47 = ParamSetHolderMgr::smpParamSetHolderMgr;
  if (HIDWORD(a1))
  {
    throwBadSdapiArgument("SDhParamSetHolder", a1, v41, v42, v43, v44, v28, v29);
  }

  if ((a1 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhParamSetHolder", a1, v41, v42, v43, v44, v28, v29);
  }

  if (HIDWORD(a2))
  {
    throwBadSdapiArgument("SDhLatticeNBestParamSet", a2, v41, v42, v43, v44, v28, v29);
  }

  if ((a2 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhLatticeNBestParamSet", a2, v41, v42, v43, v44, v28, v29);
  }

  LatticeNBestParamSet = ParamSetHolderMgr::getLatticeNBestParamSet(v47, a1, a2, v42, v43, v44, v28, v29);
  v55 = ParamSetHolderMgr::smpParamSetHolderMgr;
  if (HIDWORD(a3))
  {
    throwBadSdapiArgument("SDhParamSetHolder", a3, v48, v49, v50, v51, v52, v53);
  }

  if ((a3 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhParamSetHolder", a3, v48, v49, v50, v51, v52, v53);
  }

  if (HIDWORD(a4))
  {
    throwBadSdapiArgument("SDhPronGuessParamSet", a4, v48, v49, v50, v51, v52, v53);
  }

  if ((a4 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhPronGuessParamSet", a4, v48, v49, v50, v51, v52, v53);
  }

  PronGuessParamSet = ParamSetHolderMgr::getPronGuessParamSet(v55, a3, a4, v49, v50, v51, v52, v53);
  v63 = ParamSetHolderMgr::smpParamSetHolderMgr;
  if (HIDWORD(a5))
  {
    throwBadSdapiArgument("SDhParamSetHolder", a5, v56, v57, v58, v59, v60, v61);
  }

  if ((a5 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhParamSetHolder", a5, v56, v57, v58, v59, v60, v61);
  }

  if (HIDWORD(a6))
  {
    throwBadSdapiArgument("SDhSearchParamSet", a6, v56, v57, v58, v59, v60, v61);
  }

  if ((a6 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhSearchParamSet", a6, v56, v57, v58, v59, v60, v61);
  }

  SearchParamSet = ParamSetHolderMgr::getSearchParamSet(v63, a5, a6, v57, v58, v59, v60, v61);
  v71 = ModelMgr::smpModelMgr;
  if (*(ModelMgr::smpModelMgr + 296))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2743, "sdapi/sdrecog", 44, "%s", v68, v69, &errStr_sdapi_sdrecog_E_RECOG_UNLOADEDLM);
  }

  if (HIDWORD(a7) || (a7 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", a7, v64, v65, v66, v67, v68, v69);
  }

  if (a7 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", a7, v64, v65, v66, v67, v68, v69);
  }

  v72 = *a11;
  if (HIDWORD(*a11) || (v72 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", *a11, v64, v65, v66, v67, v68, v69);
  }

  if (v72 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", v72, v64, v65, v66, v67, v68, v69);
  }

  v73 = *(ModelMgr::getVocOrThrow(v71, v72, v64, v65, v66, v67, v68, v69) + 48);
  VocOrThrow = ModelMgr::getVocOrThrow(v71, a7, v74, v75, v76, v77, v78, v79);
  if ((DgnArray<DgnPrimArray<BOOL>>::operator==((v73 + 400), (*(VocOrThrow + 48) + 400)) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2751, "sdapi/sdrecog", 12, "%s", v85, v86, &errStr_sdapi_sdrecog_E_SEEDTABLE_MISMATCH);
  }

  if (a7 == v72)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2753, "sdapi/sdrecog", 1, "%llu", v85, v86, *a11);
  }

  v87 = ModelMgr::getVocOrThrow(v71, a7, v81, v82, v83, v84, v85, v86);
  v94 = ModelMgr::getVocOrThrow(v71, v72, v88, v89, v90, v91, v92, v93);
  if ((PhnMgr::operator==(v87 + 184, v94 + 184) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2757, "sdapi/sdrecog", 37, "%u %u", v99, v100, a7);
  }

  v107 = *(ModelMgr::getVocOrThrow(v71, a7, v95, v96, v97, v98, v99, v100) + 56);
  v108 = HIDWORD(v248);
  if (HIDWORD(v248))
  {
    throwBadSdapiArgument("SDhState", v248, v101, v102, v103, v104, v105, v106);
  }

  if ((v248 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhState", v248, v101, v102, v103, v104, v105, v106);
  }

  Colls = StateMgr::getColls(v107, v248, 1, v102, v103, v104, v105, v106);
  if (a10 == -1)
  {
    v116 = 0xFFFF;
  }

  else if (a10 == -2)
  {
    v116 = 65534;
  }

  else
  {
    if (HIDWORD(a10) || (a10 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhColl", a10, v109, v110, v111, v112, v113, v114);
    }

    v116 = a10;
    if (a10 == 0xFFFF || !a10)
    {
      throwBadSdapiArgument("SDhColl", a10, v109, v110, v111, v112, v113, v114);
    }
  }

  v117 = *(Colls + 8);
  if (!v117)
  {
    goto LABEL_100;
  }

  v118 = *Colls;
  v119 = 0xFFFFFFFFLL;
  while (1)
  {
    v120 = *v118++;
    if (v120 == v116)
    {
      break;
    }

    --v119;
    if (!--v117)
    {
      goto LABEL_100;
    }
  }

  if (!v119)
  {
LABEL_100:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2765, "sdapi/sdrecog", 14, "%s", v113, v114, &errStr_sdapi_sdrecog_E_BAD_COLL);
  }

  v284[1] = 0;
  v284[0] = 0;
  convertSDWordSpecsToTranscription(a11, 1u, v284, v72, v111, v112, v113, v114);
  v127 = **v284[0];
  if (*(*(v73 + 32) + 2 * (*&v127 & 0xFFFFFFLL)))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdrecog.cpp", 2779, "sdapi/sdrecog", 3, "%.500s", v125, v126, *(v73 + 224) + *(*(v73 + 200) + 4 * (*&v127 & 0xFFFFFFLL)));
  }

  v128 = HIDWORD(a9);
  if (v244)
  {
    v129 = *(v244 + 2);
    ReproData::setPronGuessingVocId(v129, v253);
    if (a10 == -1)
    {
      v136 = -1;
    }

    else if (a10 == -2)
    {
      v136 = -2;
    }

    else
    {
      if (HIDWORD(a10) || (a10 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhColl", a10, v130, v131, v132, v133, v134, v135);
      }

      if (a10 != 0xFFFF && a10)
      {
        v136 = a10;
      }

      else
      {
        throwBadSdapiArgument("SDhColl", a10, v130, v131, v132, v133, v134, v135);
        v136 = a10;
      }
    }

    ReproData::setCollId(v129, v136);
    if (v108)
    {
      throwBadSdapiArgument("SDhState", v248, v137, v138, v139, v140, v141, v142);
    }

    if ((v248 + 1) <= 1)
    {
      throwBadSdapiArgument("SDhState", v248, v137, v138, v139, v140, v141, v142);
    }

    ReproData::setFragmentStateId(v129, v248);
    if (v128)
    {
      throwBadSdapiArgument("SDhState", a9, v143, v144, v145, v146, v147, v148);
    }

    if ((a9 + 1) <= 1)
    {
      throwBadSdapiArgument("SDhState", a9, v143, v144, v145, v146, v147, v148);
    }

    ReproData::setOptionalPronStateId(v129, a9);
    v254 = 0;
    v255 = 0;
    v273 = 0;
    v272 = 0;
    DgnPrimArray<unsigned int>::reallocElts(&v254, 1, 1);
    *(v254 + v255) = v127;
    LODWORD(v255) = v255 + 1;
    v149 = v273;
    if (v273 == HIDWORD(v273))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v272, 1, 1);
      v149 = v273;
    }

    *(v272 + 4 * v149) = 1;
    LODWORD(v273) = v273 + 1;
    ReproData::setPronWords(v129, &v254);
    ReproData::setPWSetSizes(v129, &v272);
    ReproData::setSpokenFormIndex(v129, 0);
    ReproData::setSpokenForm(v129, &v285);
    ReproData::setMaxNewProns(v129, a14);
    ReproData::setMaxClientProns(v129, a14);
    *(v244 + 12) = v72;
    *(v244 + 13) = v253;
    v282 = 0;
    v281 = 0;
    if (SearchParamSet)
    {
      DgnPrimArray<unsigned long long>::reallocElts(&v281, 1, 1);
      v156 = v282;
      *(v281 + v282) = SearchParamSet;
      LODWORD(v282) = v156 + 1;
    }

    if (a17 >= 2)
    {
      throwBadSdapiArgument("SDBool", a17, v150, v151, v152, v153, v154, v155);
    }

    ReproMgr::saveReproParsAndModels(v244, 0, 0, 0, 0, 0, LatticeNBestParamSet, 0, PronGuessParamSet, &v281, 0, a17 == 1);
    DgnIArray<Utterance *>::~DgnIArray(&v281);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v272);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v254);
  }

  if (a10 == -1)
  {
    v157 = -1;
    goto LABEL_134;
  }

  if (a10 == -2)
  {
    v157 = -2;
LABEL_134:
    v251 = v157;
    goto LABEL_141;
  }

  if (HIDWORD(a10) || (a10 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhColl", a10, v121, v122, v123, v124, v125, v126);
  }

  if (a10 == 0xFFFF || !a10)
  {
    throwBadSdapiArgument("SDhColl", a10, v121, v122, v123, v124, v125, v126);
  }

LABEL_141:
  if (v108)
  {
    throwBadSdapiArgument("SDhState", v248, v121, v122, v123, v124, v125, v126);
  }

  if ((v248 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhState", v248, v121, v122, v123, v124, v125, v126);
  }

  if (v128)
  {
    throwBadSdapiArgument("SDhState", a9, v121, v122, v123, v124, v125, v126);
  }

  if ((a9 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhState", a9, v121, v122, v123, v124, v125, v126);
  }

  PronGenerator::PronGenerator(&v281, v253, v251, v248, a9, 0, PronGuessParamSet, v126);
  v280 = 0;
  v279 = 0;
  RecogGrammar::newSequenceRecogGrammar(v253);
  v159 = v158;
  v160 = v280;
  if (v280 == HIDWORD(v280))
  {
    DgnPrimArray<unsigned long long>::reallocElts(&v279, 1, 1);
    v160 = v280;
  }

  *(v279 + 8 * v160) = v159;
  LODWORD(v280) = v160 + 1;
  v278 = 0;
  v277 = 0;
  DgnPrimArray<unsigned long long>::reallocElts(&v277, 1, 1);
  v161 = v278;
  *(v277 + 8 * v278) = 0;
  LODWORD(v278) = v161 + 1;
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::DgnIOwnArray(v276, 1);
  v162 = MemChunkAlloc(0x68uLL, 0);
  v163 = HashKEV<unsigned int,unsigned int,StateIdScope>::HashKEV(v162, 0, 16);
  *v276[0] = v163;
  v164 = *v276[0];
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::DgnIOwnArray(v275, 1);
  v165 = MemChunkAlloc(0x68uLL, 0);
  v166 = HashKEV<unsigned int,unsigned int,StateIdScope>::HashKEV(v165, 0, 16);
  *v275[0] = v166;
  v167 = *v275[0];
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::DgnIOwnArray(v274, 1);
  v252 = LatticeNBestParamSet;
  v168 = MemChunkAlloc(0x68uLL, 0);
  v169 = HashKEV<unsigned int,unsigned int,StateIdScope>::HashKEV(v168, 0, 16);
  *v274[0] = v169;
  v170 = *v274[0];
  RecogGrammar::newSequenceRecogGrammar(v253);
  v173 = v172;
  v174 = v280;
  if (v280 == HIDWORD(v280))
  {
    DgnPrimArray<unsigned long long>::reallocElts(&v279, 1, 1);
    v174 = v280;
  }

  *(v279 + 8 * v174) = v173;
  LODWORD(v280) = v174 + 1;
  if (v286)
  {
    *v249 = v170;
    *v250 = v164;
    v175 = 0;
    do
    {
      v176 = RecogGrammar::newPronGuessRecogGrammar(&v281, 0, (v285 + 16 * v175), v171);
      v177 = v280;
      if (v280 == HIDWORD(v280))
      {
        DgnPrimArray<unsigned long long>::reallocElts(&v279, 1, 1);
        v177 = v280;
      }

      *(v279 + 8 * v177) = v176;
      LODWORD(v280) = v177 + 1;
      (*(*v176 + 24))(v176);
      if (!v175)
      {
        StartStates = RecogGrammar::getStartStates(v176);
        v185 = ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, v253, v179, v180, v181, v182, v183, v184);
        StateTransition = StateMgr::getStateTransition(*(v185 + 56), **StartStates, 1, v186, v187, v188, v189, v190);
        if (*(StateTransition + 8))
        {
          v192 = 0;
          v193 = 0;
          do
          {
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v167, (*StateTransition + v192));
            ++v193;
            v192 += 4;
          }

          while (v193 < *(StateTransition + 8));
        }
      }

      (*(*v173 + 16))(v173, v176);
      ++v175;
    }

    while (v175 < v286);
    v170 = *v249;
    v164 = *v250;
  }

  (*(*v173 + 24))(v173);
  (*(*v159 + 16))(v159, v173);
  v194 = RecogGrammar::newEndOfUtteranceRecogGrammar(v281);
  v195 = v280;
  if (v280 == HIDWORD(v280))
  {
    DgnPrimArray<unsigned long long>::reallocElts(&v279, 1, 1);
    v195 = v280;
  }

  *(v279 + 8 * v195) = v194;
  LODWORD(v280) = v195 + 1;
  (*(*v159 + 16))(v159, v194);
  (*(*v159 + 24))(v159);
  RecogContext::RecogContext(&v272);
  v271 = 0;
  v270 = 0;
  v254 = 0;
  v196 = realloc_array(0, &v254, 4uLL, 0, 0, 1);
  v270 = v254;
  HIDWORD(v271) = v196 >> 2;
  LODWORD(v271) = 1;
  *v254 = -50331650;
  RecogContext::setLeftContext(&v272, &v270);
  RecogSpec::RecogSpec(v269, 0, 0, v253, 0xFFFF);
  *(&v241 + 1) = 0x100000001;
  *&v241 = 0;
  HIDWORD(v239) = SearchParamSet[54];
  DWORD1(v239) = SearchParamSet[64];
  DWORD2(v239) = SearchParamSet[61];
  HIDWORD(v238) = SearchParamSet[70];
  LODWORD(v239) = SearchParamSet[69];
  *(&v238 + 4) = SearchParamSet[52];
  LODWORD(v238) = SearchParamSet[50];
  RecogSpec::addLayer(v269, SearchParamSet, 0, 1u, SearchParamSet[68], SearchParamSet[67], SearchParamSet[53], *(SearchParamSet + 369), *(SearchParamSet + 31), v238, v239, SearchParamSet[55], 0, *(SearchParamSet + 447), v241, 1u, 1);
  v267 = 0;
  v268 = 0;
  DgnPrimArray<short>::reallocElts(&v267, 1, 1);
  v197 = v268;
  *(v267 + 2 * v268) = 127;
  LODWORD(v268) = v197 + 1;
  v266[0] = 0;
  v266[1] = 0;
  v265[0] = 0;
  v265[1] = 0;
  v198 = RecogCtlMgr::newRecogController(v243, 0, v269, v266, v265, 0, 0, 0, 0, v164, v167, v170, 0, &v267);
  RecogController = RecogCtlMgr::getRecogController(v243, v198, v199, v200, v201, v202, v203, v204);
  v264[0] = 0;
  v264[1] = 0;
  memset(v263, 0, sizeof(v263));
  v261 = 0;
  v262 = 0;
  v254 = 0;
  v206 = realloc_array(0, &v254, 8uLL, 0, 0, 1);
  v261 = v254;
  HIDWORD(v262) = v206 >> 3;
  LODWORD(v262) = 1;
  v207 = RecogGrammar::getStartStates(v159);
  *v261 = v207;
  v259 = 0;
  v260 = 0;
  v254 = 0;
  v208 = realloc_array(0, &v254, 8uLL, 0, 0, 1);
  v259 = v254;
  HIDWORD(v260) = v208 >> 3;
  LODWORD(v260) = 1;
  *v254 = 0;
  LOWORD(v242) = 0;
  LOWORD(v240) = 0;
  v209 = (*(*RecogController + 24))(RecogController, v253, 0, 0, SearchParamSet, &v272, 0, 0, &v261, &v259, v240, 0, v264, v242, 0, 0, 0, v263);
  v257 = 0;
  v258 = 0;
  NBestList = WordLattice::getNBestList(v209, *(v252 + 40));
  v220 = NBestList[2];
  if (HIDWORD(v258) < v220)
  {
    v254 = 0;
    HIDWORD(v258) = realloc_array(v257, &v254, 48 * v220, 48 * v258, 48 * v258, 1) / 0x30;
    v257 = v254;
  }

  if (v258 <= v220)
  {
    if (v258 < v220)
    {
      v223 = v220 - v258;
      v224 = v257 + 48 * v258;
      v217 = 0uLL;
      do
      {
        *(v224 + 28) = 0uLL;
        *v224 = 0uLL;
        *(v224 + 1) = 0uLL;
        *(v224 + 11) = -1;
        v224 += 48;
        --v223;
      }

      while (v223);
    }
  }

  else if (v258 > v220)
  {
    v221 = v258;
    v222 = 48 * v258 - 48;
    do
    {
      --v221;
      DgnIArray<Utterance *>::~DgnIArray(v257 + v222);
      v222 -= 48;
    }

    while (v221 > v220);
  }

  LODWORD(v258) = v220;
  if (v220)
  {
    for (i = 0; i != v220; ++i)
    {
      RecogResultChoice::fillFromNBestChoice(v257 + 48 * i, *(*NBestList + 8 * i), *(v209 + 200), *(v209 + 213), 0, 0, *&v217, v218, v219);
    }
  }

  RecogCtlMgr::deleteRecogController(v243, v198, v210, v211, v212, v213, v214, v215);
  v256 = 0;
  if ((*(v209 + 209) & 1) == 0)
  {
    GssResults::GssResults(&v254, v284, 0, &v257, 0, &v277, v173, *(v283 + 60));
    updated = GssResults::updateWordProns(&v254, a14, a14, 0, &v256, 0);
    v227 = a15;
    if (updated > 1)
    {
      switch(updated)
      {
        case 4:
          v226 = 4;
          break;
        case 3:
          v226 = 3;
          break;
        case 2:
          v226 = 2;
          break;
        default:
LABEL_191:
          v226 = 5;
          break;
      }

LABEL_194:
      GssResults::~GssResults(&v254);
      if (!a15)
      {
        goto LABEL_181;
      }

      goto LABEL_180;
    }

    if (updated == 1)
    {
      v226 = 1;
      goto LABEL_194;
    }

    goto LABEL_191;
  }

  v226 = 5;
  v227 = a15;
  if (a15)
  {
LABEL_180:
    *v227 = v256;
  }

LABEL_181:
  if (v244)
  {
    ReproMgr::~ReproMgr(v244);
    MemChunkFree(v228, 0);
  }

  DgnDelete<WordLattice>(v209);
  DgnDelete<NBestChoiceList>(NBestList);
  dismantleRecogGrammarIArray(&v279, v229, v230, v231, v232, v233, v234, v235);
  DgnArray<RecogResultChoice>::releaseAll(&v257);
  DgnIArray<Utterance *>::~DgnIArray(&v259);
  DgnIArray<Utterance *>::~DgnIArray(&v261);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v264);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v265);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v266);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v267);
  RecogSpec::~RecogSpec(v269);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v270);
  RecogContext::~RecogContext(&v272);
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(v274);
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(v275);
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(v276);
  DgnIArray<Utterance *>::~DgnIArray(&v277);
  DgnIArray<Utterance *>::~DgnIArray(&v279);
  PronGenerator::~PronGenerator(&v281);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v284);
  DgnArray<DgnString>::releaseAll(&v285);
LABEL_197:
  SdapiInsurance::~SdapiInsurance(v287);
  return v226;
}

AdaptControllerResults *DgnDelete<AdaptControllerResults>(AdaptControllerResults *result)
{
  if (result)
  {
    AdaptControllerResults::~AdaptControllerResults(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<Segmentation>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnIOwnArray<PelSegment *>::releaseAll(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<PelScorer>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 16))(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnArray<DgnPrimArray<BOOL>>::operator==(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *a2;
  result = 1;
  do
  {
    v6 = v2 - 1;
    if (v3 != v4)
    {
      v7 = v3 + 16 * v6;
      v8 = (v4 + 16 * v6);
      v9 = *(v7 + 8);
      if (v9 != *(v8 + 2))
      {
        return 0;
      }

      v10 = *v8;
      v11 = v9 - 1;
      while (v11 + 1 >= 1)
      {
        v12 = *(*v7 + v11);
        v13 = *(v10 + v11--);
        if (v12 != v13)
        {
          return 0;
        }
      }
    }
  }

  while (v2-- > 1);
  return result;
}

void (***DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::destructAt(void (***result)(void), int a2, int a3))(void)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

void *DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,StateIdScope>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523A50;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 12;
  }

  else
  {
    v7 = 16;
  }

  *(a1 + 24) = 16;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2625DEDAC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<unsigned int,unsigned int,StateIdScope>::~HashKEV(uint64_t a1)
{
  HashKEV<unsigned int,unsigned int,StateIdScope>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashKEV<unsigned int,unsigned int,StateIdScope>::~HashKEV(uint64_t a1)
{
  *a1 = &unk_287523A50;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

void *DgnArray<RecogResultChoice>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 48 * v2 - 48;
    do
    {
      DgnIArray<Utterance *>::~DgnIArray(*a1 + v3);
      v3 -= 48;
    }

    while (v3 != -48);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void NBestChoiceList::~NBestChoiceList(NBestChoiceList *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    MemChunkFree(v2, 0);
  }

  *(this + 3) = 0;
  DgnIOwnArray<NBestChoice *>::releaseAll(this);
}

void *DgnIOwnArray<NBestChoice *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<NBestChoice>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

NBestChoice *DgnDelete<NBestChoice>(NBestChoice *result)
{
  if (result)
  {
    NBestChoice::~NBestChoice(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnIOwnArray<PelSegment *>::releaseAll(uint64_t a1)
{
  DgnIOwnArray<PelSegment *>::destructAt(a1, 0, *(a1 + 8));
  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t *DgnIOwnArray<PelSegment *>::destructAt(uint64_t *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      v6 = *v3;
      result = *(*v3 + 8 * v5);
      if (result)
      {
        result = MemChunkFree(result, 0);
        v6 = *v3;
      }

      *(v6 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

uint64_t ReproMgr::ReproMgr(uint64_t a1, char *a2, int a3)
{
  DgnString::DgnString(a1);
  DgnString::operator=(v6, a2);
  ReproMgr::validateReproDir(a1);
  v7 = MemChunkAlloc(0x150uLL, 0);
  v8 = ReproData::ReproData(v7);
  *(a1 + 16) = v8;
  ReproData::setReproType(v8, a3);
  *(a1 + 24) = 8323199;
  *(a1 + 28) = -1;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  return a1;
}

void ReproMgr::validateReproDir(ReproMgr *this)
{
  v2 = DgnString::DgnString(&v58, this);
  v3 = v59;
  v4 = v59 - 1;
  if (!v59)
  {
    v4 = 0;
  }

  v5 = v4 - 1;
  v6 = v58;
  if (v58[v5] == 47)
  {
    DgnString::left(v2, v5, &v56);
    DgnString::operator=(&v58, &v56);
    DgnString::~DgnString(&v56);
    v3 = v59;
    v6 = v58;
  }

  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = &byte_262899963;
  }

  v8 = FileSpec::FileSpec(&v56, v7);
  if (!FileSpec::isValid(v8))
  {
    if (v57)
    {
      LOBYTE(v11) = v56;
    }

    else
    {
      v11 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 231, "recogctl/repromgr", 1, "%.500s", v9, v10, v11);
  }

  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  FindMatchingFiles(&v56, &v54, &v52);
  if (v55)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      if (FileSpec::operator==(&v56, v54 + v14))
      {
        v16 += *(v52 + v15);
      }

      ++v15;
      v14 += 16;
    }

    while (v15 < v55);
    if (v16)
    {
      if (v16 == 1)
      {
        goto LABEL_25;
      }

      v17 = "%.500s";
      v18 = 3;
      v19 = 247;
      if (!*(this + 2))
      {
        goto LABEL_21;
      }

LABEL_23:
      v20 = *this;
      goto LABEL_24;
    }
  }

  v17 = "%.500s";
  v18 = 2;
  v19 = 246;
  if (*(this + 2))
  {
    goto LABEL_23;
  }

LABEL_21:
  v20 = &byte_262899963;
LABEL_24:
  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", v19, "recogctl/repromgr", v18, v17, v12, v13, v20);
LABEL_25:
  DgnString::operator+=(&v58, "/");
  operator+("*", &v58, &v50);
  if (v51)
  {
    v21 = v50;
  }

  else
  {
    v21 = &byte_262899963;
  }

  FileSpec::FileSpec(&v48, v21);
  if (!FileSpec::isValid(&v48))
  {
    if (v49)
    {
      LOBYTE(v24) = v48;
    }

    else
    {
      v24 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 253, "recogctl/repromgr", 1, "%.500s", v22, v23, v24);
  }

  operator+(".", &v58, &v46);
  if (v47)
  {
    v25 = v46;
  }

  else
  {
    v25 = &byte_262899963;
  }

  FileSpec::FileSpec(&v44, v25);
  if (!FileSpec::isValid(&v44))
  {
    if (v45)
    {
      LOBYTE(v28) = v44;
    }

    else
    {
      v28 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 256, "recogctl/repromgr", 1, "%.500s", v26, v27, v28);
  }

  operator+("..", &v58, &v42);
  if (v43)
  {
    v29 = v42;
  }

  else
  {
    v29 = &byte_262899963;
  }

  FileSpec::FileSpec(&v40, v29);
  if (!FileSpec::isValid(&v40))
  {
    if (v41)
    {
      LOBYTE(v32) = v40;
    }

    else
    {
      v32 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 259, "recogctl/repromgr", 1, "%.500s", v30, v31, v32);
  }

  if (v55 >= 1)
  {
    v33 = 16 * v55 - 16;
    do
    {
      FileSpec::~FileSpec((v54 + v33));
      v33 -= 16;
    }

    while (v33 != -16);
  }

  LODWORD(v55) = 0;
  LODWORD(v53) = 0;
  FindMatchingFiles(&v48, &v54, &v52);
  if (v55)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      if ((!FileSpec::operator==(&v56, v54 + v34) || (*(v52 + v35) & 1) == 0) && !FileSpec::operator==(&v44, v54 + v34))
      {
        v36 += !FileSpec::operator==(&v40, v54 + v34);
      }

      ++v35;
      v34 += 16;
    }

    while (v35 < v55);
    if (v36)
    {
      if (*(this + 2))
      {
        v39 = *this;
      }

      else
      {
        v39 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 278, "recogctl/repromgr", 4, "%.500s", v37, v38, v39);
    }
  }

  FileSpec::~FileSpec(&v40);
  DgnString::~DgnString(&v42);
  FileSpec::~FileSpec(&v44);
  DgnString::~DgnString(&v46);
  FileSpec::~FileSpec(&v48);
  DgnString::~DgnString(&v50);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v52);
  DgnArray<FileSpec>::releaseAll(&v54);
  FileSpec::~FileSpec(&v56);
  DgnString::~DgnString(&v58);
}

void sub_2625DF580(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 - 80));
  DgnString::~DgnString((v1 - 64));
  _Unwind_Resume(a1);
}

void ReproMgr::~ReproMgr(ReproData **this)
{
  DgnDelete<ReproData>(this[2]);

  DgnString::~DgnString(this);
}

ReproData *DgnDelete<ReproData>(ReproData *result)
{
  if (result)
  {
    ReproData::~ReproData(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ReproMgr::saveReproParamSets(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  DgnString::makeStringPrintf("%s0.py", a2, a3, a4, a5, "par");
  FileSpec::FileSpec(v202);
  if (*(a1 + 8))
  {
    v14 = *a1;
  }

  else
  {
    v14 = &byte_262899963;
  }

  if (v204)
  {
    v15 = v203;
  }

  else
  {
    v15 = &byte_262899963;
  }

  FileSpec::fillFromPathAndName(v202, v14, v15);
  v16 = MemChunkAlloc(0x68uLL, 0);
  DgnFileStream::DgnFileStream(v16, 1, 1, v202);
  DgnString::DgnString(&v200);
  DgnString::preAllocate(&v200, 256);
  MrecVersionNumberString = GetMrecVersionNumberString();
  DgnString::formatStringInPlace(&v200, MrecVersionNumberString);
  if (v201)
  {
    v21 = v200;
  }

  else
  {
    v21 = &byte_262899963;
  }

  DgnStream::streamPrintf(v16, "mrecVersion = %s\n", v18, v19, v20, v21);
  DgnStream::streamPrintf(v16, "\n# Following is a list of preload sizes for the vocs loaded\n# during this repro.\n", v22, v23, v24);
  v25 = *(a1 + 24);
  v26 = ModelMgr::smpModelMgr;
  DgnStream::streamPrintf(v16, "\nvocPreloadSizes =([\n", v27, v28, v29);
  if (v25 != 127)
  {
    VocOrThrow = ModelMgr::getVocOrThrow(v26, v25, v30, v31, v32, v33, v34, v35);
    DgnStream::streamPrintf(v16, "    [ 'voc%u', %lld ],\n", v37, v38, v39, 0, *(VocOrThrow + 96));
  }

  DgnStream::streamPrintf(v16, "    ])\n", v30, v31, v32);
  DgnStream::streamPrintf(v16, "\n# Following is a list of parameters that are set to be\n# different from their default values\n", v40, v41, v42);
  v198 = a4;
  v193 = a6;
  v194 = a7;
  v209 = 0;
  v210 = 0;
  GlobalParamMgr::ParamGetAllParamNames(GlobalParamMgr::smpGlobalParamMgr, &v209);
  DgnStream::streamPrintf(v16, "\n%s =([\n", v43, v44, v45, "pars");
  if (v210)
  {
    v49 = 0;
    for (i = 0; i < v210; ++i)
    {
      if (*(v209 + v49 + 8))
      {
        v51 = *(v209 + v49);
      }

      else
      {
        v51 = &byte_262899963;
      }

      ParId = GlobalParamMgr::ParamGetParId(GlobalParamMgr::smpGlobalParamMgr, v51);
      Type = GlobalParamMgr::ParamGetType(GlobalParamMgr::smpGlobalParamMgr, ParId, v53, v54, v55, v56, v57, v58);
      if (Type > 3)
      {
        if ((Type - 4) < 2)
        {
          DgnString::DgnString(&v207);
          StringValue = GlobalParamMgr::ParamGetStringValue(GlobalParamMgr::smpGlobalParamMgr, ParId, 1, v74, v75, v76, v77, v78);
          DgnString::formatStringInPlace(&v207, StringValue);
          DgnString::DgnString(&v205);
          v85 = GlobalParamMgr::ParamGetStringValue(GlobalParamMgr::smpGlobalParamMgr, ParId, 0, v80, v81, v82, v83, v84);
          DgnString::formatStringInPlace(&v205, v85);
          if (v206)
          {
            v86 = v205;
          }

          else
          {
            v86 = &byte_262899963;
          }

          if (v208)
          {
            v87 = v207;
          }

          else
          {
            v87 = &byte_262899963;
          }

          if (strcmp(v86, v87))
          {
            DgnStream::streamPrintf(v16, "    [ '%s', %s ],\n", v88, v89, v90, v51, v86);
          }

          DgnString::~DgnString(&v205);
          goto LABEL_36;
        }
      }

      else
      {
        switch(Type)
        {
          case 1:
            BoolValue = GlobalParamMgr::ParamGetBoolValue(GlobalParamMgr::smpGlobalParamMgr, ParId, 1, v47, v48, v60, v61, v62);
            v97 = GlobalParamMgr::ParamGetBoolValue(GlobalParamMgr::smpGlobalParamMgr, ParId, 0, v92, v93, v94, v95, v96);
            if (BoolValue != v97)
            {
              v98 = "False";
              if (v97)
              {
                v98 = "True";
              }

              DgnStream::streamPrintf(v16, "    [ '%s', %s ],\n", v46, v47, v48, v51, v98);
            }

            break;
          case 2:
            IntValue = GlobalParamMgr::ParamGetIntValue(GlobalParamMgr::smpGlobalParamMgr, ParId, 1, v47, v48, v60, v61, v62);
            v105 = GlobalParamMgr::ParamGetIntValue(GlobalParamMgr::smpGlobalParamMgr, ParId, 0, v100, v101, v102, v103, v104);
            if (v105 != IntValue)
            {
              DgnStream::streamPrintf(v16, "    [ '%s', %d ],\n", v46, v47, v48, v51, v105);
            }

            break;
          case 3:
            DoubleValue = GlobalParamMgr::ParamGetDoubleValue(GlobalParamMgr::smpGlobalParamMgr, ParId, 1u, v47, v48, v60, v61, v62);
            v69 = GlobalParamMgr::ParamGetDoubleValue(GlobalParamMgr::smpGlobalParamMgr, ParId, 0, v64, v65, v66, v67, v68);
            if (v69 != DoubleValue)
            {
              DgnString::formatFloat(0xE, v69, &v207);
              if (v208)
              {
                v73 = v207;
              }

              else
              {
                v73 = &byte_262899963;
              }

              DgnStream::streamPrintf(v16, "    [ '%s', %s ],\n", v70, v71, v72, v51, v73);
LABEL_36:
              DgnString::~DgnString(&v207);
            }

            break;
        }
      }

      v49 += 16;
    }
  }

  DgnStream::streamPrintf(v16, "    ])\n", v46, v47, v48);
  DgnArray<DgnString>::releaseAll(&v209);
  v110 = ParamSetHolderMgr::smpParamSetHolderMgr;
  v209 = 0;
  v210 = 0;
  if (*(ParamSetHolderMgr::smpParamSetHolderMgr + 8))
  {
    v111 = 0;
    v112 = 0;
    do
    {
      v113 = *(*v110 + 8 * v111);
      if (v113)
      {
        DgnString::makeStringPrintf("par%d.psh", v106, v107, v108, v109, v112);
        v114 = v210;
        if (v210 == HIDWORD(v210))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v209, 1, 1);
          v114 = v210;
        }

        DgnString::DgnString((v209 + 16 * v114), &v207);
        LODWORD(v210) = v210 + 1;
        FileSpec::FileSpec(&v205);
        if (*(a1 + 8))
        {
          v115 = *a1;
        }

        else
        {
          v115 = &byte_262899963;
        }

        if (v208)
        {
          v117 = v207;
        }

        else
        {
          v117 = &byte_262899963;
        }

        FileSpec::fillFromPathAndName(&v205, v115, v117);
        v199 = 0;
        ParamSetHolder::saveParamSetHolder(v113, &v205, &v199, 1, 1);
        v112 = (v112 + 1);
        FileSpec::~FileSpec(&v205);
      }

      else
      {
        DgnString::DgnString(&v207, &byte_262899963);
        v116 = v210;
        if (v210 == HIDWORD(v210))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v209, 1, 1);
          v116 = v210;
        }

        DgnString::DgnString((v209 + 16 * v116), &v207);
        LODWORD(v210) = v210 + 1;
      }

      DgnString::~DgnString(&v207);
      ++v111;
    }

    while (v111 < *(v110 + 8));
  }

  else
  {
    v112 = 0;
  }

  DgnStream::streamPrintf(v16, "\n# Following is a listing of all the param sets in use at the\n# time of the repro dump.  For each one, a tuple is specified\n# which gives the name of the psh file, the type of the paramset\n# and the name of the paramset, in that order.\n", v107, v108, v109);
  DgnStream::streamPrintf(v16, "\nnumberOfParamSetHolders = %d\n", v118, v119, v120, v112);
  v127 = fmtcheck("    ('%s', '%s', '%s'),\n", "%s %s %s");
  if (a2)
  {
    v128 = (*(*a2 + 32))(a2);
    if (v128)
    {
      DgnStream::streamPrintf(v16, "\nprefiltererSets =([\n", v121, v122, v123);
      v132 = v209 + 16 * *(v128 + 28);
      if (*(v132 + 8))
      {
        v133 = *v132;
      }

      else
      {
        v133 = &byte_262899963;
      }

      if (*(v128 + 16))
      {
        v134 = *(v128 + 8);
      }

      else
      {
        v134 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v129, v130, v131, v133, "PrefiltererBuild", v134);
      DgnStream::streamPrintf(v16, "    ])\n", v135, v136, v137);
    }
  }

  if (a3)
  {
    DgnStream::streamPrintf(v16, "\nadapterSets =([\n", v121, v122, v123);
    v141 = a3[1];
    if (v141)
    {
      v142 = v209 + 16 * *(v141 + 28);
      if (*(v142 + 8))
      {
        v143 = *v142;
      }

      else
      {
        v143 = &byte_262899963;
      }

      if (*(v141 + 16))
      {
        v144 = *(v141 + 8);
      }

      else
      {
        v144 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v138, v139, v140, v143, "Adapter", v144);
    }

    v145 = a3[2];
    if (v145)
    {
      v146 = v209 + 16 * *(v145 + 28);
      if (*(v146 + 8))
      {
        v147 = *v146;
      }

      else
      {
        v147 = &byte_262899963;
      }

      if (*(v145 + 16))
      {
        v148 = *(v145 + 8);
      }

      else
      {
        v148 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v138, v139, v140, v147, "PrefiltererSearch", v148);
    }

    v149 = a3[3];
    if (v149)
    {
      v150 = v209 + 16 * *(v149 + 28);
      if (*(v150 + 8))
      {
        v151 = *v150;
      }

      else
      {
        v151 = &byte_262899963;
      }

      if (*(v149 + 16))
      {
        v152 = *(v149 + 8);
      }

      else
      {
        v152 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v138, v139, v140, v151, "Search_0", v152);
    }

    DgnStream::streamPrintf(v16, "    ])\n", v138, v139, v140);
  }

  v153 = *(a1 + 36);
  if (v153 != -1)
  {
    Utterance = ChannelMgr::getUtterance(ChannelMgr::smpChannelMgr, v153, v121, v122, v123, v124, v125, v126);
    if (Utterance)
    {
      v155 = *(Utterance + 432);
      if (v155)
      {
        DgnStream::streamPrintf(v16, "\nchannelSets =([\n", v121, v122, v123);
        v159 = v209 + 16 * *(v155 + 28);
        if (*(v159 + 8))
        {
          v160 = *v159;
        }

        else
        {
          v160 = &byte_262899963;
        }

        if (*(v155 + 16))
        {
          v161 = *(v155 + 8);
        }

        else
        {
          v161 = &byte_262899963;
        }

        DgnStream::streamPrintf(v16, v127, v156, v157, v158, v160, "Channel", v161);
        DgnStream::streamPrintf(v16, "    ])\n", v162, v163, v164);
      }
    }
  }

  if (v198 || a5 || v193 || v194 || a9 || *(a8 + 8))
  {
    DgnStream::streamPrintf(v16, "\nrecognitionSets =([\n", v121, v122, v123);
    if (v198)
    {
      v169 = v209 + 16 * *(v198 + 28);
      if (*(v169 + 8))
      {
        v170 = *v169;
      }

      else
      {
        v170 = &byte_262899963;
      }

      if (*(v198 + 16))
      {
        v171 = *(v198 + 8);
      }

      else
      {
        v171 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v166, v167, v168, v170, "Confidence", v171);
    }

    if (a5)
    {
      v172 = v209 + 16 * *(a5 + 28);
      if (*(v172 + 8))
      {
        v173 = *v172;
      }

      else
      {
        v173 = &byte_262899963;
      }

      if (*(a5 + 16))
      {
        v174 = *(a5 + 8);
      }

      else
      {
        v174 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v166, v167, v168, v173, "LatticeNBest", v174);
    }

    if (v193)
    {
      v175 = v209 + 16 * *(v193 + 28);
      if (*(v175 + 8))
      {
        v176 = *v175;
      }

      else
      {
        v176 = &byte_262899963;
      }

      if (*(v193 + 16))
      {
        v177 = *(v193 + 8);
      }

      else
      {
        v177 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v166, v167, v168, v176, "PrefiltererSearch", v177);
    }

    if (v194)
    {
      v178 = v209 + 16 * *(v194 + 28);
      if (*(v178 + 8))
      {
        v179 = *v178;
      }

      else
      {
        v179 = &byte_262899963;
      }

      if (*(v194 + 16))
      {
        v180 = *(v194 + 8);
      }

      else
      {
        v180 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v166, v167, v168, v179, "PronGuess", v180);
    }

    if (a9)
    {
      v181 = v209 + 16 * *(a9 + 28);
      if (*(v181 + 8))
      {
        v182 = *v181;
      }

      else
      {
        v182 = &byte_262899963;
      }

      if (*(a9 + 16))
      {
        v183 = *(a9 + 8);
      }

      else
      {
        v183 = &byte_262899963;
      }

      DgnStream::streamPrintf(v16, v127, v166, v167, v168, v182, "SearchCrossLayer", v183);
    }

    if (*(a8 + 8))
    {
      v184 = 0;
      do
      {
        DgnString::makeStringPrintf("Search_%d", v165, v166, v167, v168, v184);
        v188 = *(*a8 + 8 * v184);
        v189 = v209 + 16 * *(v188 + 28);
        if (*(v189 + 8))
        {
          v190 = *v189;
        }

        else
        {
          v190 = &byte_262899963;
        }

        if (v208)
        {
          v191 = v207;
        }

        else
        {
          v191 = &byte_262899963;
        }

        if (*(v188 + 16))
        {
          v192 = *(v188 + 8);
        }

        else
        {
          v192 = &byte_262899963;
        }

        DgnStream::streamPrintf(v16, v127, v185, v186, v187, v190, v191, v192);
        DgnString::~DgnString(&v207);
        ++v184;
      }

      while (v184 < *(a8 + 8));
    }

    DgnStream::streamPrintf(v16, "    ])\n", v166, v167, v168);
  }

  (*(*v16 + 88))(v16);
  DgnDelete<DgnStream>(v16);
  DgnArray<DgnString>::releaseAll(&v209);
  DgnString::~DgnString(&v200);
  FileSpec::~FileSpec(v202);
  DgnString::~DgnString(&v203);
}

void sub_2625E0200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va2, a12);
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(v12 - 120);
  DgnString::~DgnString(va);
  FileSpec::~FileSpec(va1);
  DgnString::~DgnString(va2);
  _Unwind_Resume(a1);
}

void ReproMgr::saveReproVoc(const char **this, int a2)
{
  v4 = ModelMgr::smpModelMgr;
  FileSpec::FileSpec(v45);
  FileSpec::FileSpec(v44);
  if (*(this + 12) != 127)
  {
    DgnString::makeStringPrintf("%s0.voc", v5, v6, v7, v8, "voc");
    if (*(this + 2))
    {
      v9 = *this;
    }

    else
    {
      v9 = &byte_262899963;
    }

    if (v43)
    {
      v10 = v42;
    }

    else
    {
      v10 = &byte_262899963;
    }

    FileSpec::fillFromPathAndName(v45, v9, v10);
    VocOrThrow = ModelMgr::getVocOrThrow(v4, *(this + 12), v11, v12, v13, v14, v15, v16);
    if (FileSpec::isValid((VocOrThrow + 104)))
    {
      DgnString::makeStringPrintf("%s0.svc", v18, v19, v20, v21, "voc");
      DgnString::operator=(&v42, &v46);
      DgnString::~DgnString(&v46);
      FileSpec::FileSpec(v41);
      if (*(this + 2))
      {
        v22 = *this;
      }

      else
      {
        v22 = &byte_262899963;
      }

      if (v43)
      {
        v23 = v42;
      }

      else
      {
        v23 = &byte_262899963;
      }

      FileSpec::fillFromPathAndName(v41, v22, v23);
      if (a2)
      {
        v24 = MemChunkAlloc(0x68uLL, 0);
        DgnFileStream::DgnFileStream(v24, 0, 0, VocOrThrow + 104);
        v25 = MemChunkAlloc(0x68uLL, 0);
        DgnFileStream::DgnFileStream(v25, 1, 0, v41);
        v49 = 0;
        v26 = realloc_array(0, &v49, 0x8000uLL, 0, 0, 1);
        v46 = v49;
        v47 = 0x8000;
        v48 = v26;
        while (1)
        {
          v27 = (*(*v24 + 72))(v24, v46, v47, 0);
          if (!v27)
          {
            break;
          }

          (*(*v25 + 80))(v25, v46, v27);
        }

        (*(*v25 + 88))(v25);
        (**v24)(v24);
        MemChunkFree(v24, 0);
        (**v25)(v25);
        MemChunkFree(v25, 0);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v46);
      }

      else
      {
        v28 = MemChunkAlloc(0x68uLL, 0);
        DgnFileStream::DgnFileStream(v28, 1, 1, v41);
        if (*(VocOrThrow + 112))
        {
          v32 = *(VocOrThrow + 104);
        }

        else
        {
          v32 = &byte_262899963;
        }

        DgnStream::streamPrintf(v28, "Did not copy svc file as per the client settings.\nLocation of svc file at time of dump was:\n%.500s\n", v29, v30, v31, v32);
        OsFile::openOsFile((VocOrThrow + 104), 0);
        v34 = v33;
        if (v33)
        {
          FileSize = OsFile::getFileSize(v33);
          DgnStream::streamPrintf(v28, "Size of svc file at time of dump was:\n%llu\n", v36, v37, v38, FileSize);
          OsFile::~OsFile(v34);
          MemChunkFree(v39, 0);
        }

        (*(*v28 + 88))(v28);
        (**v28)(v28);
        MemChunkFree(v28, 0);
      }

      FileSpec::~FileSpec(v41);
    }

    DgnString::~DgnString(&v42);
    v40 = *(this + 12);
    if (v40 != 127)
    {
      LODWORD(v46) = 0;
      ModelMgr::saveVoc(v4, v40, v45, v44, &v46, 0, 1, 0, 0, 0);
    }
  }

  FileSpec::~FileSpec(v44);
  FileSpec::~FileSpec(v45);
}

void sub_2625E0700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  FileSpec::~FileSpec(va);
  DgnString::~DgnString(va1);
  FileSpec::~FileSpec(va2);
  FileSpec::~FileSpec(va3);
  _Unwind_Resume(a1);
}

void ReproMgr::saveReproParsAndModels(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, BOOL a12)
{
  ReproMgr::saveReproParamSets(a1, a2, a5, a6, a7, a8, a9, a10, a11);
  if (*(a1 + 26) != 127)
  {
    DgnString::makeStringPrintf("%s0.voc", v16, v17, v18, v19, "pg");
    FileSpec::FileSpec(v59);
    FileSpec::FileSpec(v58);
    if (*(a1 + 8))
    {
      v20 = *a1;
    }

    else
    {
      v20 = &byte_262899963;
    }

    if (v61)
    {
      v21 = v60;
    }

    else
    {
      v21 = &byte_262899963;
    }

    FileSpec::fillFromPathAndName(v59, v20, v21);
    v57 = 0;
    ModelMgr::saveVoc(ModelMgr::smpModelMgr, *(a1 + 26), v59, v58, &v57, 0, 1, 0, 0, 0);
    FileSpec::~FileSpec(v58);
    FileSpec::~FileSpec(v59);
    DgnString::~DgnString(&v60);
  }

  if (*(a1 + 28) != -1)
  {
    LODWORD(v58[0]) = 0;
    DgnString::makeStringPrintf("%s0.usr", v16, v17, v18, v19, "usr");
    FileSpec::FileSpec(v59);
    if (*(a1 + 8))
    {
      v22 = *a1;
    }

    else
    {
      v22 = &byte_262899963;
    }

    if (v61)
    {
      v23 = v60;
    }

    else
    {
      v23 = &byte_262899963;
    }

    FileSpec::fillFromPathAndName(v59, v22, v23);
    UserOrThrow = ModelMgr::getUserOrThrow(ModelMgr::smpModelMgr, *(a1 + 28), v24, v25, v26, v27, v28, v29);
    User::saveUser(UserOrThrow, v59, v58, 0, 1, 0);
    FileSpec::~FileSpec(v59);
    DgnString::~DgnString(&v60);
  }

  if (a2)
  {
    v31 = (*(*a2 + 144))(a2);
    if (v31 != *(a1 + 28))
    {
      v32 = v31;
      LODWORD(v58[0]) = 0;
      DgnString::makeStringPrintf("%s0.usr", v16, v17, v18, v19, "pref");
      FileSpec::FileSpec(v59);
      if (*(a1 + 8))
      {
        v33 = *a1;
      }

      else
      {
        v33 = &byte_262899963;
      }

      if (v61)
      {
        v34 = v60;
      }

      else
      {
        v34 = &byte_262899963;
      }

      FileSpec::fillFromPathAndName(v59, v33, v34);
      v41 = ModelMgr::getUserOrThrow(ModelMgr::smpModelMgr, v32, v35, v36, v37, v38, v39, v40);
      User::saveUser(v41, v59, v58, 0, 1, 0);
      FileSpec::~FileSpec(v59);
      DgnString::~DgnString(&v60);
    }
  }

  if (a3)
  {
    DgnString::makeStringPrintf("%s0.prd", v16, v17, v18, v19, "pref");
    FileSpec::FileSpec(v59);
    if (*(a1 + 8))
    {
      v42 = *a1;
    }

    else
    {
      v42 = &byte_262899963;
    }

    if (v61)
    {
      v43 = v60;
    }

    else
    {
      v43 = &byte_262899963;
    }

    FileSpec::fillFromPathAndName(v59, v42, v43);
    LODWORD(v58[0]) = 0;
    PrefilterResult::savePrefilterResult(a3, v59, v58);
    FileSpec::~FileSpec(v59);
    DgnString::~DgnString(&v60);
  }

  if (a4)
  {
    v44 = *(a4 + 8);
    if (v44)
    {
      for (i = 0; i < v44; ++i)
      {
        v46 = *(*a4 + 8 * i);
        if (v46)
        {
          DgnString::makeStringPrintf("%s%u.ltd", v16, v17, v18, v19, "ltd", i);
          FileSpec::FileSpec(v59);
          if (*(a1 + 8))
          {
            v47 = *a1;
          }

          else
          {
            v47 = &byte_262899963;
          }

          if (v61)
          {
            v48 = v60;
          }

          else
          {
            v48 = &byte_262899963;
          }

          FileSpec::fillFromPathAndName(v59, v47, v48);
          LODWORD(v58[0]) = 0;
          WordLattice::saveLattice(v46, v59, v58);
          FileSpec::~FileSpec(v59);
          DgnString::~DgnString(&v60);
          v44 = *(a4 + 8);
        }
      }
    }
  }

  if (*(a1 + 32) != -1)
  {
    LODWORD(v58[0]) = 0;
    DgnString::makeStringPrintf("%s0.sig", v16, v17, v18, v19, "sig");
    FileSpec::FileSpec(v59);
    if (*(a1 + 8))
    {
      v49 = *a1;
    }

    else
    {
      v49 = &byte_262899963;
    }

    if (v61)
    {
      v50 = v60;
    }

    else
    {
      v50 = &byte_262899963;
    }

    FileSpec::fillFromPathAndName(v59, v49, v50);
    ChannelMgr::saveSigProc(ChannelMgr::smpChannelMgr, *(a1 + 32), v59, v58, 0, 1);
    FileSpec::~FileSpec(v59);
    DgnString::~DgnString(&v60);
  }

  ReproMgr::saveReproVoc(a1, a12);
  LODWORD(v58[0]) = 0;
  DgnString::makeStringPrintf("%s0.rep", v51, v52, v53, v54, "rep");
  FileSpec::FileSpec(v59);
  if (*(a1 + 8))
  {
    v55 = *a1;
  }

  else
  {
    v55 = &byte_262899963;
  }

  if (v61)
  {
    v56 = v60;
  }

  else
  {
    v56 = &byte_262899963;
  }

  FileSpec::fillFromPathAndName(v59, v55, v56);
  ReproData::saveReproData(*(a1 + 16), v59, v58);
  FileSpec::~FileSpec(v59);
  DgnString::~DgnString(&v60);
}

void sub_2625E0C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  FileSpec::~FileSpec(va);
  DgnString::~DgnString(va1);
  _Unwind_Resume(a1);
}

void ReproMgr::printSize(ReproMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 828, &v66);
  if (v67)
  {
    v16 = v66;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v66);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v21 = sizeObject(this);
  v22 = sizeObject(this);
  v23 = sizeObject(this);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 829, &v66);
  if (v67)
  {
    v28 = v66;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v28, v21, v22, v23);
  DgnString::~DgnString(&v66);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 830, &v66);
  if (v67)
  {
    v34 = v66;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v34, v29, v29, 0);
  DgnString::~DgnString(&v66);
  *a4 += v29;
  *a5 += v29;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 831, &v66);
  if (v67)
  {
    v39 = v66;
  }

  else
  {
    v39 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v39, 2, 2, 0);
  DgnString::~DgnString(&v66);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 832, &v66);
  if (v67)
  {
    v44 = v66;
  }

  else
  {
    v44 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v44, 2, 2, 0);
  DgnString::~DgnString(&v66);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 833, &v66);
  if (v67)
  {
    v49 = v66;
  }

  else
  {
    v49 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v49, 4, 4, 0);
  DgnString::~DgnString(&v66);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 834, &v66);
  if (v67)
  {
    v54 = v66;
  }

  else
  {
    v54 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v54, 4, 4, 0);
  DgnString::~DgnString(&v66);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 835, &v66);
  if (v67)
  {
    v59 = v66;
  }

  else
  {
    v59 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v59, 1, 1, 0);
  DgnString::~DgnString(&v66);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/repromgr.cpp", 836, &v66);
  if (v67)
  {
    v64 = v66;
  }

  else
  {
    v64 = &byte_262899963;
  }

  v65 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, a3, &byte_262899963, (35 - a3), (35 - a3), v64, *a4, *a5, *a6);
  DgnString::~DgnString(&v66);
}

void sub_2625E1138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *DgnArray<FileSpec>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      FileSpec::~FileSpec((*a1 + v3));
      v3 -= 16;
    }

    while (v3 != -16);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void DgnSplitStringIntoTokens(_BYTE *a1, char *__s, uint64_t a3, unsigned __int8 a4)
{
  v8 = *(a3 + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      DgnString::~DgnString((*a3 + v9));
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(a3 + 8) = 0;
  LOBYTE(v10) = *a1;
  if (*a1)
  {
    LODWORD(v11) = 0;
    do
    {
      if (v10 == a4)
      {
        v12 = v11;
LABEL_12:
        v13 = *(a3 + 8);
        if (v13 == *(a3 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
          v13 = *(a3 + 8);
        }

        DgnString::DgnString((*a3 + 16 * v13));
        v14 = *(a3 + 8);
        *(a3 + 8) = v14 + 1;
        DgnString::preAllocate(*a3 + 16 * v14, 96);
        DgnString::operator+=((*a3 + 16 * (*(a3 + 8) - 1)), a1[v12]);
        v15 = a1[(v11 + 1)];
        v16 = a1[(v11 + 1)] == 0;
        for (i = 1; a1[(i + v11)]; v16 = a1[(i + v11)] == 0)
        {
          if (v15 == a4)
          {
            break;
          }

          DgnString::operator+=((*a3 + 16 * (*(a3 + 8) - 1)), v15);
          v15 = a1[(++i + v11)];
        }

        if (!v16)
        {
          DgnString::operator+=((*a3 + 16 * (*(a3 + 8) - 1)), v15);
          ++i;
        }

        LODWORD(v11) = i + v11;
      }

      else
      {
        while (strchr(__s, v10))
        {
          v11 = (v11 + 1);
          v10 = a1[v11];
          if (!a1[v11])
          {
            goto LABEL_20;
          }

          if (v10 == a4)
          {
            v12 = v11;
            goto LABEL_12;
          }
        }

        v18 = *(a3 + 8);
        if (v18 == *(a3 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
          v18 = *(a3 + 8);
        }

        DgnString::DgnString((*a3 + 16 * v18));
        v19 = *(a3 + 8);
        *(a3 + 8) = v19 + 1;
        DgnString::preAllocate(*a3 + 16 * v19, 96);
        while (a1[v11])
        {
          v20 = a1[v11];
          if (strchr(__s, v20))
          {
            break;
          }

          DgnString::operator+=((*a3 + 16 * (*(a3 + 8) - 1)), v20);
          LODWORD(v11) = v11 + 1;
        }
      }

LABEL_20:
      LOBYTE(v10) = a1[v11];
    }

    while (v10);
  }
}

void *DgnSplitStringParValueIntoUintArray(char a1, int a2, _BYTE *a3, int a4, unsigned int a5, unsigned int a6, uint64_t *a7)
{
  v34 = 0;
  v35 = 0;
  DgnSplitStringIntoTokens(a3, " ", &v34, 0);
  if (v35 == 1)
  {
LABEL_9:
    v16 = DgnString::atoui(v34);
    v19 = v16;
    if (v16 < a5 || v16 > a6)
    {
      if (*(v34 + 2))
      {
        v21 = *v34;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstrutil.cpp", 328, "mrecutil/dstrutil", 1, "%.500s %.500s %u %u", v17, v18, a1);
    }

    if (*(a7 + 2))
    {
      v30 = 0;
      v31 = *a7;
      do
      {
        *(v31 + 4 * v30++) = v19;
      }

      while (v30 < *(a7 + 2));
    }

    return DgnArray<DgnString>::releaseAll(&v34);
  }

  if (!v35)
  {
    if (*(a7 + 2))
    {
      v14 = 0;
      v15 = *a7;
      do
      {
        *(v15 + 4 * v14++) = a4;
      }

      while (v14 < *(a7 + 2));
    }

    return DgnArray<DgnString>::releaseAll(&v34);
  }

  if (v35 != *(a7 + 2))
  {
    v33 = *(a7 + 2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstrutil.cpp", 322, "mrecutil/dstrutil", 4, "%.500s %.500s %u %.500s", v12, v13, a1);
    if (v35 == 1)
    {
      goto LABEL_9;
    }

    if (!*(a7 + 2))
    {
      return DgnArray<DgnString>::releaseAll(&v34);
    }
  }

  v22 = 0;
  v23 = 0;
  do
  {
    v24 = DgnString::atoui((v34 + v22));
    v27 = v24;
    if (v24 < a5 || v24 > a6)
    {
      if (*(v34 + v22 + 8))
      {
        v29 = *(v34 + v22);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstrutil.cpp", 341, "mrecutil/dstrutil", 1, "%.500s %.500s %u %u", v25, v26, a1);
    }

    *(*a7 + 4 * v23++) = v27;
    v22 += 16;
  }

  while (v23 < *(a7 + 2));
  return DgnArray<DgnString>::releaseAll(&v34);
}

void sub_2625E161C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

void *DgnSplitStringParValueIntoDoubleArray(char a1, int a2, _BYTE *a3, double a4, double a5, double a6, unsigned int *a7)
{
  v44 = 0;
  v45 = 0;
  DgnSplitStringIntoTokens(a3, " ", &v44, 0);
  if (v45 == 1)
  {
LABEL_13:
    v23 = DgnString::atodb(v44);
    v24 = v23;
    if (v23 < a5 || v23 > a6)
    {
      if (*(v44 + 2))
      {
        v26 = *v44;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstrutil.cpp", 435, "mrecutil/dstrutil", 3, "%.500s %.500s %g %g", v21, v22, a1);
    }

    v35 = a7[2];
    if (v35)
    {
      v36 = (v35 + 1) & 0x1FFFFFFFELL;
      v37 = vdupq_n_s64(v35 - 1);
      v38 = xmmword_26286B680;
      v39 = (*a7 + 8);
      v40 = vdupq_n_s64(2uLL);
      do
      {
        v41 = vmovn_s64(vcgeq_u64(v37, v38));
        if (v41.i8[0])
        {
          *(v39 - 1) = v24;
        }

        if (v41.i8[4])
        {
          *v39 = v24;
        }

        v38 = vaddq_s64(v38, v40);
        v39 += 2;
        v36 -= 2;
      }

      while (v36);
    }

    return DgnArray<DgnString>::releaseAll(&v44);
  }

  if (!v45)
  {
    v14 = a7[2];
    if (v14)
    {
      v15 = (v14 + 1) & 0x1FFFFFFFELL;
      v16 = vdupq_n_s64(v14 - 1);
      v17 = xmmword_26286B680;
      v18 = (*a7 + 8);
      v19 = vdupq_n_s64(2uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v16, v17));
        if (v20.i8[0])
        {
          *(v18 - 1) = a4;
        }

        if (v20.i8[4])
        {
          *v18 = a4;
        }

        v17 = vaddq_s64(v17, v19);
        v18 += 2;
        v15 -= 2;
      }

      while (v15);
    }

    return DgnArray<DgnString>::releaseAll(&v44);
  }

  if (v45 != a7[2])
  {
    v43 = a7[2];
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstrutil.cpp", 429, "mrecutil/dstrutil", 4, "%.500s %.500s %u %.500s", v12, v13, a1);
    if (v45 == 1)
    {
      goto LABEL_13;
    }

    if (!a7[2])
    {
      return DgnArray<DgnString>::releaseAll(&v44);
    }
  }

  v27 = 0;
  v28 = 0;
  do
  {
    v31 = DgnString::atodb((v44 + v27));
    v32 = v31;
    if (v31 < a5 || v31 > a6)
    {
      if (*(v44 + v27 + 8))
      {
        v34 = *(v44 + v27);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dstrutil.cpp", 448, "mrecutil/dstrutil", 3, "%.500s %.500s %g %g", v29, v30, a1);
    }

    *(*a7 + 8 * v28++) = v32;
    v27 += 16;
  }

  while (v28 < a7[2]);
  return DgnArray<DgnString>::releaseAll(&v44);
}

void sub_2625E18F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

void MrecInitModule_paramset_mrecutil(void)
{
  if (!gParDebugShowActiveParamSetNameAndContents)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowActiveParamSetNameAndContents", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowActiveParamSetNameAndContents = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowActiveParamSetNameAndContents);
  }

  if (!gParDebugShowActiveParamSetNameAndDeltas)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowActiveParamSetNameAndDeltas", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowActiveParamSetNameAndDeltas = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugShowActiveParamSetNameAndDeltas);
  }
}

void ReproData::ReproData(ReproData *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0u;
  *(this + 168) = 0u;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 184) = 0u;
  AdaptConfig::clear((this + 236));
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *this = 0x100000000;
  *(this + 4) = 127;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 36) = 8323199;
  *(this + 50) = 0;
  *(this + 148) = 0;
  *(this + 154) = 0;
  *(this + 28) = 0x500000002;
  *(this + 232) = 0;
}

void sub_2625E1C20(_Unwind_Exception *a1)
{
  v6 = v4;
  DgnArray<DgnString>::releaseAll(v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void ReproData::~ReproData(ReproData *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 320);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 256);
  AdaptConfig::clear((this + 236));
  DgnArray<DgnString>::releaseAll(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);
}

uint64_t WordList::isGuessedWordByOptionalTag(WordList *this, unsigned int a2)
{
  if (*(this + 129) < 0x3Eu)
  {
    return 0;
  }

  DgnString::DgnString(v6);
  WordList::getTagBits(this, a2, 0, v6);
  v4 = (*(v6[0] + 4) >> 29) & 1;
  BitArray::~BitArray(v6);
  return v4;
}

void ReproData::saveReproData(ReproData *a1, uint64_t a2, _DWORD *a3)
{
  DFileOwner::DFileOwner(v8);
  *a3 = 1;
  v6 = DFile::openDFile(a2, 1, 15, v8);
  *a3 = 2;
  ReproData::saveReproData(a1, v6);
  DFileOwner::setRemoveFileOnDestruction(v8, 0);
  *a3 = 0;
  DFileOwner::~DFileOwner(v8, v7);
}

void ReproData::saveReproData(ReproData *this, DFile *a2)
{
  DgnTextFileWriter::DgnTextFileWriter(v190);
  DgnTextFileWriter::openDgnTextFileWriter(v190, a2, 0x4Cu, 1);
  v188 = 0;
  v189 = 0;
  DgnTextFile::legalDgnTextFileVersions(v190, sRPD_Versions, &v188, v4, v5, v6, v7, v8);
  DgnTextFileWriter::setFileType(v190, "ReproData", (v188 + 8 * (v189 - 1)));
  *v186 = 0;
  v187 = 0;
  v184 = 0;
  HIDWORD(v187) = realloc_array(0, &v184, 0x50uLL, 0, 0, 1) >> 4;
  *v186 = v184;
  v9 = v187;
  if (v187 <= 5)
  {
    if (v187 != 5)
    {
      v11 = v187 + 1;
      v12 = 16 * v187;
      do
      {
        DgnString::DgnString((*v186 + v12));
        v12 += 16;
      }

      while (v11++ != 5);
    }
  }

  else if (v187 >= 6)
  {
    v10 = 16 * v187 - 16;
    do
    {
      --v9;
      DgnString::~DgnString((*v186 + v10));
      v10 -= 16;
    }

    while (v9 > 5);
  }

  LODWORD(v187) = 5;
  v184 = 0;
  v185 = 0;
  v182 = 0;
  v14 = realloc_array(0, &v182, 0x14uLL, 0, 0, 1);
  v184 = v182;
  LODWORD(v185) = 5;
  HIDWORD(v185) = v14 >> 2;
  DgnString::operator=(*v186, "Type");
  *v184 = 0;
  DgnString::operator=((*v186 + 16), "UnsValue1");
  *(v184 + 1) = 3;
  DgnString::operator=((*v186 + 32), "IntValue1");
  *(v184 + 2) = 1;
  DgnString::operator=((*v186 + 48), "RealValue1");
  *(v184 + 3) = 2;
  DgnString::operator=((*v186 + 64), "StrValue1");
  *(v184 + 4) = 0;
  DgnTextFileWriter::setLineFieldFormat(v190, &v184, v186);
  DgnString::DgnString(&v182);
  v15 = *this;
  if (v15 < 6)
  {
    DgnString::operator=(&v182, off_279B3B8F8[v15]);
  }

  if (v183)
  {
    v16 = v182;
  }

  else
  {
    v16 = &unk_262870051;
  }

  DgnTextFileWriter::setHeaderField(v190, "ReproType", v16);
  v17 = *this;
  if ((*this & 0xFFFFFFFE) == 2)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v190, "MaxNewProns", *(this + 56));
    v17 = *this;
    if (*this == 2)
    {
      DgnTextFileWriter::setHeaderFieldUnsigned(v190, "MaxClientProns", *(this + 57));
      v17 = *this;
      if (*this == 2)
      {
        DgnTextFileWriter::setHeaderFieldBool(v190, "RemoveExistingClientProns", *(this + 232));
        v17 = *this;
      }
    }
  }

  if (!v17)
  {
    DgnTextFileWriter::setHeaderFieldBool(v190, "GeneratePrefilterResult", *(this + 16));
    DgnTextFileWriter::setHeaderFieldUnsigned(v190, "NumRecogLayers", *(this + 1));
    v17 = *this;
  }

  if (v17 <= 1)
  {
    DgnTextFileWriter::setHeaderFieldBool(v190, "ForceRecogTranscript", *(this + 40));
    v17 = *this;
  }

  if (v17 == 4)
  {
    v18 = *(this + 60);
    if (v18 == 1)
    {
      v19 = "BaumWelch";
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_29;
      }

      v19 = "Viterbi";
    }

    DgnString::operator=(&v182, v19);
LABEL_29:
    if (v183)
    {
      v20 = v182;
    }

    else
    {
      v20 = &unk_262870051;
    }

    DgnTextFileWriter::setHeaderField(v190, "AdaptAlignment", v20);
    v21 = *(this + 59);
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = "MAP";
        goto LABEL_45;
      }

      if (v21 == 4)
      {
        if (*(this + 248))
        {
          v22 = "SAT";
        }

        else if (*(this + 249))
        {
          v22 = "OUFA";
        }

        else
        {
          v22 = "TransAcc";
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v21 == 1)
      {
        v22 = "ChooseWarp";
        goto LABEL_45;
      }

      if (v21 == 2)
      {
        v22 = "DTMM";
LABEL_45:
        DgnString::operator=(&v182, v22);
      }
    }

    if (v183)
    {
      v23 = v182;
    }

    else
    {
      v23 = &unk_262870051;
    }

    DgnTextFileWriter::setHeaderField(v190, "AdaptMethod", v23);
    DgnTextFileWriter::setHeaderFieldBool(v190, "AdaptUserMeans", *(this + 244));
    DgnTextFileWriter::setHeaderFieldBool(v190, "AdaptUserDevs", *(this + 245));
    DgnTextFileWriter::setHeaderFieldBool(v190, "AdaptUserMixtureWeights", *(this + 246));
    DgnTextFileWriter::setHeaderFieldBool(v190, "AdaptUserDurations", *(this + 247));
  }

  if (*(this + 4) != 127 && *(this + 3))
  {
    DgnTextFileWriter::setLineFieldValue(v190, 0, "PrefiltererState");
    DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, *(this + 3));
    DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
    DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
    GetStateName(*(this + 4), *(this + 3), v24, v25, v26, v27, v28, v29, &v180);
    DgnString::operator=(&v182, &v180);
    DgnString::~DgnString(&v180);
    if (v183)
    {
      v30 = v182;
    }

    else
    {
      v30 = &unk_262870051;
    }

    DgnTextFileWriter::setLineFieldValue(v190, 4u, v30);
    DgnTextFileWriter::writeNextLine(v190);
  }

  v31 = *this;
  if (*this > 3)
  {
    if (v31 - 4 < 2)
    {
      if (*(this + 14))
      {
        v33 = 0;
        do
        {
          v34 = *(*(this + 6) + 4 * v33);
          DgnTextFileWriter::setLineFieldValue(v190, 0, "State");
          DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, 0);
          DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, v34);
          DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
          GetStateName(*(this + 72), v34, v35, v36, v37, v38, v39, v40, &v180);
          DgnString::operator=(&v182, &v180);
          DgnString::~DgnString(&v180);
          if (v183)
          {
            v41 = v182;
          }

          else
          {
            v41 = &unk_262870051;
          }

          DgnTextFileWriter::setLineFieldValue(v190, 4u, v41);
          DgnTextFileWriter::writeNextLine(v190);
          ++v33;
        }

        while (v33 < *(this + 14));
      }

      if (*(this + 82))
      {
        v42 = 0;
        do
        {
          v43 = *(*(this + 40) + 4 * v42);
          DgnTextFileWriter::setLineFieldValue(v190, 0, "SkipState");
          DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, v43);
          DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
          DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
          GetStateName(*(this + 72), v43, v44, v45, v46, v47, v48, v49, &v180);
          DgnString::operator=(&v182, &v180);
          DgnString::~DgnString(&v180);
          if (v183)
          {
            v50 = v182;
          }

          else
          {
            v50 = &unk_262870051;
          }

          DgnTextFileWriter::setLineFieldValue(v190, 4u, v50);
          DgnTextFileWriter::writeNextLine(v190);
          ++v42;
        }

        while (v42 < *(this + 82));
      }

      if (*(this + 22))
      {
        v51 = 0;
        do
        {
          v52 = *(*(this + 10) + 2 * v51);
          DgnTextFileWriter::setLineFieldValue(v190, 0, "Rule");
          DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, 0);
          DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, v52);
          DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
          GetRuleName(*(this + 72), v52, v53, v54, v55, v56, v57, v58, &v180);
          DgnString::operator=(&v182, &v180);
          DgnString::~DgnString(&v180);
          if (v183)
          {
            v59 = v182;
          }

          else
          {
            v59 = &unk_262870051;
          }

          DgnTextFileWriter::setLineFieldValue(v190, 4u, v59);
          DgnTextFileWriter::writeNextLine(v190);
          ++v51;
        }

        while (v51 < *(this + 22));
      }

      v60 = *(this + 70);
      if (v60)
      {
        v61 = 0;
        v62 = 0;
        v63 = *(this + 78);
        v64 = *(this + 34);
        do
        {
          if (*(v64 + 4 * v61))
          {
            v65 = 0;
            do
            {
              v66 = *(*(this + 32) + 4 * (v62 + v65));
              DgnTextFileWriter::setLineFieldValue(v190, 0, "TranscriptWord");
              DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, v61);
              if (v63)
              {
                v67 = *(*(this + 38) + 4 * v61);
              }

              else
              {
                v67 = -1;
              }

              DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, v67);
              v68 = 0.0;
              if (*this == 4)
              {
                v68 = *(*(this + 36) + 8 * v61);
              }

              DgnTextFileWriter::setLineFieldRealValue(v190, 3u, v68);
              WordName = GetWordName(v66 >> 25, v66 & 0xFFFFFF, 0, 0, v69, v70, v71, v72);
              DgnTextFileWriter::setLineFieldValue(v190, 4u, WordName);
              DgnTextFileWriter::writeNextLine(v190);
              ++v65;
              v64 = *(this + 34);
            }

            while (v65 < *(v64 + 4 * v61));
            v60 = *(this + 70);
            v62 += v65;
          }

          ++v61;
        }

        while (v61 < v60);
      }
    }
  }

  else
  {
    if (v31 - 2 >= 2)
    {
      if (v31)
      {
        if (v31 != 1)
        {
          goto LABEL_167;
        }

        v32 = *(this + 1);
      }

      else
      {
        v117 = (this + 4);
        if (!*(this + 1))
        {
          v180 = 0;
          v181 = 0;
          goto LABEL_127;
        }

        v118 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v190, 0, "UsePrefilterer");
          DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, v118);
          DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, *(*(this + 3) + v118));
          DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
          DgnTextFileWriter::setLineFieldValue(v190, 4u, &unk_262870051);
          DgnTextFileWriter::writeNextLine(v190);
          ++v118;
        }

        while (v118 < *v117);
        v32 = *v117;
      }

      v117 = (this + 4);
      v180 = 0;
      v181 = 0;
      if (v32)
      {
        v178 = 0;
        v119 = realloc_array(0, &v178, 4 * v32, 0, 0, 1);
        v179 = 0;
        v180 = v178;
        v120 = *v117;
        LODWORD(v181) = v32;
        HIDWORD(v181) = v119 >> 2;
        v178 = 0;
        if (v120)
        {
          v177[0] = 0;
          HIDWORD(v179) = realloc_array(0, v177, 4 * v120, 0, 0, 1) >> 2;
          v121 = v177[0];
          v178 = v177[0];
        }

        else
        {
          v121 = 0;
        }

        goto LABEL_128;
      }

LABEL_127:
      v121 = 0;
      LODWORD(v120) = 0;
      LODWORD(v181) = 0;
      v178 = 0;
      v179 = 0;
LABEL_128:
      LODWORD(v179) = v120;
      if (*this == 1)
      {
        *v180 = *(this + 14);
        *v121 = *(this + 22);
      }

      else if (*v117)
      {
        v122 = 0;
        v123 = *(this + 8);
        v124 = v180;
        v125 = *(this + 12);
        do
        {
          v124[v122] = *(v123 + 4 * v122);
          v121[v122] = *(v125 + 4 * v122);
          ++v122;
        }

        while (v122 < *v117);
      }

      v126 = v181;
      if (v181)
      {
        v127 = 0;
        v128 = 0;
        v129 = v180;
        do
        {
          if (v129[v127])
          {
            v130 = 0;
            do
            {
              v131 = *(*(this + 6) + 4 * v128);
              DgnTextFileWriter::setLineFieldValue(v190, 0, "State");
              DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, v127);
              DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, v131);
              DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
              GetStateName(*(this + 72), v131, v132, v133, v134, v135, v136, v137, v177);
              DgnString::operator=(&v182, v177);
              DgnString::~DgnString(v177);
              if (v183)
              {
                v138 = v182;
              }

              else
              {
                v138 = &unk_262870051;
              }

              DgnTextFileWriter::setLineFieldValue(v190, 4u, v138);
              DgnTextFileWriter::writeNextLine(v190);
              ++v130;
              v129 = v180;
              ++v128;
            }

            while (v130 < v180[v127]);
            v126 = v181;
          }

          ++v127;
        }

        while (v127 < v126);
      }

      v139 = v179;
      if (v179)
      {
        v140 = 0;
        v141 = 0;
        v142 = v178;
        do
        {
          if (v142[v140])
          {
            v143 = 0;
            do
            {
              v144 = *(*(this + 10) + 2 * v141);
              DgnTextFileWriter::setLineFieldValue(v190, 0, "Rule");
              DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, v140);
              DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, v144);
              DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
              GetRuleName(*(this + 72), v144, v145, v146, v147, v148, v149, v150, v177);
              DgnString::operator=(&v182, v177);
              DgnString::~DgnString(v177);
              if (v183)
              {
                v151 = v182;
              }

              else
              {
                v151 = &unk_262870051;
              }

              DgnTextFileWriter::setLineFieldValue(v190, 4u, v151);
              DgnTextFileWriter::writeNextLine(v190);
              ++v143;
              v142 = v178;
              ++v141;
            }

            while (v143 < *(v178 + v140));
            v139 = v179;
          }

          ++v140;
        }

        while (v140 < v139);
      }

      if (*(this + 30))
      {
        v152 = 0;
        do
        {
          v153 = *(*(this + 14) + 4 * v152);
          DgnTextFileWriter::setLineFieldValue(v190, 0, "LeftContextWord");
          DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, 0);
          DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
          DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
          v158 = GetWordName(v153 >> 25, v153 & 0xFFFFFF, 1, 1, v154, v155, v156, v157);
          DgnTextFileWriter::setLineFieldValue(v190, 4u, v158);
          DgnTextFileWriter::writeNextLine(v190);
          ++v152;
        }

        while (v152 < *(this + 30));
      }

      v159 = *(this + 70);
      if (v159)
      {
        v160 = 0;
        v161 = 0;
        v162 = *(this + 34);
        do
        {
          if (*(v162 + 4 * v160))
          {
            v163 = 0;
            do
            {
              v164 = *(*(this + 32) + 4 * v161);
              DgnTextFileWriter::setLineFieldValue(v190, 0, "TranscriptWord");
              DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, v160);
              DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
              DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
              v169 = GetWordName(v164 >> 25, v164 & 0xFFFFFF, 0, 0, v165, v166, v167, v168);
              DgnTextFileWriter::setLineFieldValue(v190, 4u, v169);
              DgnTextFileWriter::writeNextLine(v190);
              ++v163;
              v162 = *(this + 34);
              ++v161;
            }

            while (v163 < *(v162 + 4 * v160));
            v159 = *(this + 70);
          }

          ++v160;
        }

        while (v160 < v159);
      }

      if (*(this + 34))
      {
        v170 = 0;
        do
        {
          v171 = *(*(this + 16) + 4 * v170);
          DgnTextFileWriter::setLineFieldValue(v190, 0, "InjectWord");
          DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, 0);
          DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
          DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
          v176 = GetWordName(v171 >> 25, v171 & 0xFFFFFF, 0, 0, v172, v173, v174, v175);
          DgnTextFileWriter::setLineFieldValue(v190, 4u, v176);
          DgnTextFileWriter::writeNextLine(v190);
          ++v170;
        }

        while (v170 < *(this + 34));
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v178);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v180);
      goto LABEL_167;
    }

    DgnTextFileWriter::setLineFieldValue(v190, 0, "FragmentState");
    DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, *(this + 37));
    DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
    DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
    GetStateName(*(this + 73), *(this + 37), v74, v75, v76, v77, v78, v79, &v180);
    DgnString::operator=(&v182, &v180);
    DgnString::~DgnString(&v180);
    if (v183)
    {
      v80 = v182;
    }

    else
    {
      v80 = &unk_262870051;
    }

    DgnTextFileWriter::setLineFieldValue(v190, 4u, v80);
    DgnTextFileWriter::writeNextLine(v190);
    DgnTextFileWriter::setLineFieldValue(v190, 0, "OptionalPronState");
    DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, *(this + 38));
    DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
    DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
    GetStateName(*(this + 73), *(this + 38), v81, v82, v83, v84, v85, v86, &v180);
    DgnString::operator=(&v182, &v180);
    DgnString::~DgnString(&v180);
    if (v183)
    {
      v87 = v182;
    }

    else
    {
      v87 = &unk_262870051;
    }

    DgnTextFileWriter::setLineFieldValue(v190, 4u, v87);
    DgnTextFileWriter::writeNextLine(v190);
    if (*this == 2)
    {
      DgnTextFileWriter::setLineFieldValue(v190, 0, "BackoffState");
      DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, *(this + 39));
      DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
      DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
      GetStateName(*(this + 73), *(this + 39), v88, v89, v90, v91, v92, v93, &v180);
      DgnString::operator=(&v182, &v180);
      DgnString::~DgnString(&v180);
      if (v183)
      {
        v94 = v182;
      }

      else
      {
        v94 = &unk_262870051;
      }

      DgnTextFileWriter::setLineFieldValue(v190, 4u, v94);
      DgnTextFileWriter::writeNextLine(v190);
    }

    DgnTextFileWriter::setLineFieldValue(v190, 0, "Collation");
    DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, 0);
    DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
    DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
    CollationName = GetCollationName(*(this + 73), *(this + 80), v95, v96, v97, v98, v99, v100);
    DgnTextFileWriter::setLineFieldValue(v190, 4u, CollationName);
    DgnTextFileWriter::writeNextLine(v190);
    v102 = *(this + 48);
    if (v102)
    {
      v103 = 0;
      v104 = 0;
      v105 = *(this + 23);
      do
      {
        if (*(v105 + 4 * v103))
        {
          v106 = 0;
          do
          {
            v107 = *(*(this + 21) + 4 * (v104 + v106));
            DgnTextFileWriter::setLineFieldValue(v190, 0, "PronWord");
            DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, v103);
            DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, 0);
            DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
            v112 = GetWordName(v107 >> 25, v107 & 0xFFFFFF, 0, 0, v108, v109, v110, v111);
            DgnTextFileWriter::setLineFieldValue(v190, 4u, v112);
            DgnTextFileWriter::writeNextLine(v190);
            ++v106;
            v105 = *(this + 23);
          }

          while (v106 < *(v105 + 4 * v103));
          v102 = *(this + 48);
          v104 += v106;
        }

        ++v103;
      }

      while (v103 < v102);
    }

    if (*(this + 54))
    {
      v113 = 0;
      v114 = 0;
      do
      {
        DgnTextFileWriter::setLineFieldValue(v190, 0, "SpokenForm");
        DgnTextFileWriter::setLineFieldUnsignedValue(v190, 1u, *(this + 50));
        DgnTextFileWriter::setLineFieldIntegerValue(v190, 2u, v114);
        DgnTextFileWriter::setLineFieldRealValue(v190, 3u, 0.0);
        v115 = *(this + 26) + v113;
        if (*(v115 + 8))
        {
          v116 = *v115;
        }

        else
        {
          v116 = &unk_262870051;
        }

        DgnTextFileWriter::setLineFieldValue(v190, 4u, v116);
        DgnTextFileWriter::writeNextLine(v190);
        ++v114;
        v113 += 16;
      }

      while (v114 < *(this + 54));
    }
  }

LABEL_167:
  DgnString::~DgnString(&v182);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v184);
  DgnArray<DgnString>::releaseAll(v186);
  DgnIArray<Utterance *>::~DgnIArray(&v188);
  DgnTextFileWriter::~DgnTextFileWriter(v190);
}

void sub_2625E2FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va5, a6);
  va_start(va4, a6);
  va_start(va3, a6);
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  va_copy(va4, va3);
  v16 = va_arg(va4, void);
  v18 = va_arg(va4, void);
  va_copy(va5, va4);
  v19 = va_arg(va5, void);
  v21 = va_arg(va5, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnString::~DgnString(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnArray<DgnString>::releaseAll(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  DgnTextFileWriter::~DgnTextFileWriter(va5);
  _Unwind_Resume(a1);
}

uint64_t verifyTokenizerHandle(unint64_t a1, const char *a2)
{
  Registry = TRegisterable<TTokenizer>::getRegistry();
  v5 = TBaseRegistry<TTokenizer *>::find(Registry, a1);
  if (*(Registry + 16) == v5)
  {
    conditionalAssert(a2, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 45, v6, v7);
    exception = __cxa_allocate_exception(0x28uLL);
    v10 = a2;
    v11 = exception;
    std::string::basic_string[abi:ne200100]<0>(&v14, v10);
    *v11 = byte_287529580;
    v12 = (v11 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v12, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v11[3] = v15;
      *&v12->__r_.__value_.__l.__data_ = v13;
    }

    *v11 = &unk_2875282E0;
    v11[4] = 3;
  }

  return *v5;
}

void sub_2625E3258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t TRegisterable<TTokenizer>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TTokenizer>::getRegistry(void)::s_registry;
}

void *TBaseRegistry<TTokenizer *>::find(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return *(a1 + 16);
  }

  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (a2 <= (result - v3) >> 3)
  {
    v4 = v3 + 8 * a2;
    if (*(v4 - 8))
    {
      v5 = (v4 - 8);
      if (v5 != result)
      {
        while (!*v5)
        {
          if (++v5 == result)
          {
            return result;
          }
        }
      }

      return v5;
    }
  }

  return result;
}

void TApiException::~TApiException(void **this)
{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

uint64_t saveDump(TTokenizer *a1, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  DirSep = getDirSep();
  sprintf(v35, "%s%ctoken.txt", a6, DirSep);
  std::ofstream::basic_ofstream(&v31);
  TOutputStream::TOutputStream(&v26, &v31, v35, *(a1 + 5) + 240);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "ParamConfig=", 12);
  v13 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, a2, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "\n", 1);
  __s = v29;
  v28 = xmmword_26286B6F0;
  v30 = 1;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Text=", 5);
  TBuffer<char>::resize(&__s, 0);
  slashEscape(a4, &__s);
  if (*(&v28 + 1) >= v28)
  {
    if (v30)
    {
      LOBYTE(v25[0]) = 0;
      TBuffer<char>::insert(&__s, *(&v28 + 1), v25, 1uLL);
      --*(&v28 + 1);
    }

    else if (v28)
    {
      __s[v28 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v28 + 1)] = 0;
  }

  v14 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, __s, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Left=", 5);
  if (a3)
  {
    TBuffer<char>::resize(&__s, 0);
    slashEscape(a3, &__s);
    if (*(&v28 + 1) >= v28)
    {
      if (v30)
      {
        LOBYTE(v25[0]) = 0;
        TBuffer<char>::insert(&__s, *(&v28 + 1), v25, 1uLL);
        --*(&v28 + 1);
      }

      else if (v28)
      {
        __s[v28 - 1] = 0;
      }
    }

    else
    {
      __s[*(&v28 + 1)] = 0;
    }

    v15 = strlen(__s);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, __s, v15);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Right=", 6);
  if (a5)
  {
    TBuffer<char>::resize(&__s, 0);
    slashEscape(a5, &__s);
    if (*(&v28 + 1) >= v28)
    {
      if (v30)
      {
        LOBYTE(v25[0]) = 0;
        TBuffer<char>::insert(&__s, *(&v28 + 1), v25, 1uLL);
        --*(&v28 + 1);
      }

      else if (v28)
      {
        __s[v28 - 1] = 0;
      }
    }

    else
    {
      __s[*(&v28 + 1)] = 0;
    }

    v16 = strlen(__s);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, __s, v16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "\n", 1);
  v17 = getDirSep();
  sprintf(v35, "%s%ctoken_d.enh", a6, v17);
  v25[0] = 1;
  v25[1] = v35;
  DataManager = makeDataManager(v25, 6, v18, v19, v20);
  TTokenizer::save(a1, DataManager, 0);
  if (DataManager)
  {
    (*(*DataManager + 8))(DataManager);
  }

  v22 = getDirSep();
  sprintf(v34, "%s%cgeneral.voc", a6, v22);
  TLexicon::save(*(a1 + 5), 0, v34);
  if (v30 == 1 && __s != v29 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  v31 = *MEMORY[0x277D82810];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x26672AFA0](&v32);
  std::ostream::~ostream();
  result = MEMORY[0x26672B160](&v33);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x26672AF90](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2625E3B00(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26672B160](v1);
  _Unwind_Resume(a1);
}

void TBuffer<char>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 280) == 1 && *(a1 + 8) < a2)
  {
    *(a1 + 8) = a2 + 1;
    operator new[]();
  }

  v4 = *(a1 + 16);
  if (v4 < a2)
  {
    v5 = a2;
    if (*(a1 + 280))
    {
LABEL_9:
      bzero((*a1 + v4), v5 - v4);
      goto LABEL_10;
    }

    v5 = *(a1 + 8);
    if (v4 < v5)
    {
      if (v5 >= a2)
      {
        v5 = a2;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *(a1 + 16) = a2;
}

void TPToken_Open(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  TReentrancyHandler::TReentrancyHandler(&v27, "TPToken_Open");
  TLocaleHandler::TLocaleHandler(&v26);
  MrecInitModule_sdpres_sdapi();
  if (g_bInitialized)
  {
    if (a1 | a2)
    {
      verifyLexiconHandle(a3, "Bad input lexicon handle");
      verifyPointerArgument<TPTokenHandle_fake **>(a4, 0, "Bad output tokenizer handle pointer", v10, v11);
      makeDataManager(a1, 1, v12, v13, v14);
      makeDataManager(a2, 1, v15, v16, v17);
      operator new();
    }

    conditionalAssert("Bad model", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 137, v8, v9);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v24, "Bad model");
    *exception = byte_287529580;
    v21 = (exception + 1);
    if (SHIBYTE(v25) < 0)
    {
      std::string::__init_copy_ctor_external(v21, v24, *(&v24 + 1));
    }

    else
    {
      v23 = v24;
      exception[3] = v25;
      *&v21->__r_.__value_.__l.__data_ = v23;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 136, v8, v9);
  v18 = __cxa_allocate_exception(0x28uLL);
  std::string::basic_string[abi:ne200100]<0>(&v24, "Not initialized");
  *v18 = byte_287529580;
  v19 = (v18 + 1);
  if (SHIBYTE(v25) < 0)
  {
    std::string::__init_copy_ctor_external(v19, v24, *(&v24 + 1));
  }

  else
  {
    v22 = v24;
    v18[3] = v25;
    *&v19->__r_.__value_.__l.__data_ = v22;
  }

  *v18 = &unk_2875282E0;
  v18[4] = 4;
}

void sub_2625E3F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPToken_Open", *(v26 + 4), v24, v25);
        break;
      case 6:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPToken_Open", 6, v28, v29);
        break;
      case 5:
        v34 = __cxa_begin_catch(a1);
        v35 = v34 + 8;
        if (v34[31] < 0)
        {
          v35 = *v35;
        }

LABEL_17:
        handleException(v35, "TPToken_Open", 2, v32, v33);
        break;
      case 4:
        v38 = __cxa_begin_catch(a1);
        v39 = v38 + 8;
        if (v38[31] < 0)
        {
          v39 = *v39;
        }

        handleException(v39, "TPToken_Open", 11, v36, v37);
        break;
      case 3:
        v40 = __cxa_begin_catch(a1);
        v35 = v40 + 8;
        if (v40[31] < 0)
        {
          v35 = *v35;
        }

        goto LABEL_17;
      case 2:
        v41 = __cxa_begin_catch(a1);
        v42 = (*(*v41 + 16))(v41);
        handleException(v42, "TPToken_Open", 1, v43, v44);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v45 = __cxa_begin_catch(a1);
        v46 = (*(*v45 + 16))(v45);
        handleException(v46, "TPToken_Open", 2, v47, v48);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x2625E3D54);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t verifyPointerArgument<TPTokenHandle_fake **>(uint64_t result, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 279, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, a3);
    *exception = byte_287529580;
    v7 = (exception + 1);
    if (SHIBYTE(v10) < 0)
    {
      std::string::__init_copy_ctor_external(v7, v9, *(&v9 + 1));
    }

    else
    {
      v8 = v9;
      exception[3] = v10;
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_2625E4328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t TPToken_Close(unint64_t a1)
{
  TReentrancyHandler::TReentrancyHandler(&v18, "TPToken_Close");
  TLocaleHandler::TLocaleHandler(&v16);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 174, v2, v3);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "Not initialized");
    *exception = byte_287529580;
    v9 = (exception + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v9, v14, *(&v14 + 1));
    }

    else
    {
      v12 = v14;
      exception[3] = v15;
      *&v9->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v4 = verifyTokenizerHandle(a1, "Bad input tokenizer handle");
  if (v4[30])
  {
    conditionalAssert("Tokenizer is referenced", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 177, v5, v6);
    v10 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "Tokenizer is referenced");
    *v10 = byte_287529580;
    v11 = (v10 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v10[3] = v15;
      *&v11->__r_.__value_.__l.__data_ = v13;
    }

    *v10 = &unk_2875282E0;
    v10[4] = 7;
  }

  (*(*v4 + 8))(v4);
  MrecInitModule_sdpres_sdapi();
  if ((v17 & 1) == 0)
  {
    uselocale(v16);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_2625E45B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPToken_Close", *(v26 + 4), v24, v25);
        break;
      case 6:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPToken_Close", 6, v28, v29);
        break;
      case 5:
        v34 = __cxa_begin_catch(a1);
        v35 = v34 + 8;
        if (v34[31] < 0)
        {
          v35 = *v35;
        }

LABEL_17:
        handleException(v35, "TPToken_Close", 2, v32, v33);
        break;
      case 4:
        v38 = __cxa_begin_catch(a1);
        v39 = v38 + 8;
        if (v38[31] < 0)
        {
          v39 = *v39;
        }

        handleException(v39, "TPToken_Close", 11, v36, v37);
        break;
      case 3:
        v40 = __cxa_begin_catch(a1);
        v35 = v40 + 8;
        if (v40[31] < 0)
        {
          v35 = *v35;
        }

        goto LABEL_17;
      case 2:
        v41 = __cxa_begin_catch(a1);
        v42 = (*(*v41 + 16))(v41);
        handleException(v42, "TPToken_Close", 1, v43, v44);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v45 = __cxa_begin_catch(a1);
        v46 = (*(*v45 + 16))(v45);
        handleException(v46, "TPToken_Close", 2, v47, v48);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x2625E4410);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t TPToken_Tokenize(unint64_t a1, unint64_t a2, const char *a3, char *a4, char *a5, uint64_t *a6, const char *a7)
{
  v43 = *MEMORY[0x277D85DE8];
  TReentrancyHandler::TReentrancyHandler(&v37, "TPToken_Tokenize");
  TLocaleHandler::TLocaleHandler(&v35);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 250, v14, v15);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v32, "Not initialized");
    *exception = byte_287529580;
    v29 = (exception + 1);
    if ((v32[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v29, *v32, *&v32[8]);
    }

    else
    {
      v31 = *v32;
      exception[3] = *&v32[16];
      *&v29->__r_.__value_.__l.__data_ = v31;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v16 = verifyTokenizerHandle(a1, "Bad input tokenizer handle");
  if (!a2 || (v19 = v16, ((*(*(v16 + 24) + 80) - *(*(v16 + 24) + 72)) >> 5) - 1 < a2))
  {
    conditionalAssert("Bad input parameter configuration handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 254, v17, v18);
    v26 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v32, "Bad input parameter configuration handle");
    *v26 = byte_287529580;
    v27 = (v26 + 1);
    if ((v32[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v27, *v32, *&v32[8]);
    }

    else
    {
      v30 = *v32;
      v26[3] = *&v32[16];
      *&v27->__r_.__value_.__l.__data_ = v30;
    }

    *v26 = &unk_2875282E0;
    v26[4] = 3;
  }

  verifyStringArgument(a4, 0, 1, "Bad input text pointer", v18);
  verifyPointerArgument<TPTokenResultHandle_fake **>(a6, 0, "Bad output result handle pointer", v20, v21);
  if (a7)
  {
    *v32 = v33;
    *&v32[8] = xmmword_26286B6F0;
    v34 = 1;
    TParamManager::getConfigHandleName(v19[3], a2, v32);
    v39 = v41;
    v40 = xmmword_26286B6F0;
    v42 = 1;
    v22 = *(v19[3] + 128);
    if (*&v32[16] >= *&v32[8])
    {
      if (v34)
      {
        v38 = 0;
        TBuffer<wchar_t>::insert(v32, *&v32[16], &v38, 1uLL);
        v23 = *v32;
        --*&v32[16];
      }

      else
      {
        v23 = *v32;
        if (*&v32[8])
        {
          *(*v32 + 4 * *&v32[8] - 4) = 0;
        }
      }
    }

    else
    {
      v23 = *v32;
      *(*v32 + 4 * *&v32[16]) = 0;
    }

    TLocaleInfo::unicodeToMultiByte(v22, v23, &v39);
    if (*(&v40 + 1) >= v40)
    {
      if (v42)
      {
        LOBYTE(v38) = 0;
        TBuffer<char>::insert(&v39, *(&v40 + 1), &v38, 1uLL);
        --*(&v40 + 1);
      }

      else if (v40)
      {
        v39[v40 - 1] = 0;
      }
    }

    else
    {
      v39[*(&v40 + 1)] = 0;
    }

    saveDump(v19, v39, a3, a4, a5, a7);
    if (v42 == 1 && v39 != v41 && v39)
    {
      MEMORY[0x26672B1B0]();
    }

    if (v34 == 1 && *v32 != v33 && *v32)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  *a6 = TTokenizer::tokenize(v19, a4, a3, a5, a2, 0);
  MrecInitModule_sdpres_sdapi();
  if ((v36 & 1) == 0)
  {
    uselocale(v35);
  }

  TReentrancyHandler::ms_bIn = 0;
  v24 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2625E4CE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v17)
  {
LABEL_8:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&STACK[0x438]);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v22 = __cxa_begin_catch(a1);
        v23 = v22 + 8;
        if (v22[31] < 0)
        {
          v23 = *v23;
        }

        handleException(v23, "TPToken_Tokenize", *(v22 + 4), v20, v21);
        __cxa_end_catch();
        break;
      case 6:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPToken_Tokenize", 6, v24, v25);
        __cxa_end_catch();
        break;
      case 5:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

LABEL_19:
        handleException(v31, "TPToken_Tokenize", 2, v28, v29);
        __cxa_end_catch();
        break;
      case 4:
        v34 = __cxa_begin_catch(a1);
        v35 = v34 + 8;
        if (v34[31] < 0)
        {
          v35 = *v35;
        }

        handleException(v35, "TPToken_Tokenize", 11, v32, v33);
        __cxa_end_catch();
        break;
      case 3:
        v36 = __cxa_begin_catch(a1);
        v31 = v36 + 8;
        if (v36[31] < 0)
        {
          v31 = *v31;
        }

        goto LABEL_19;
      case 2:
        v37 = __cxa_begin_catch(a1);
        v38 = (*(*v37 + 16))(v37);
        handleException(v38, "TPToken_Tokenize", 1, v39, v40);
        __cxa_end_catch();
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v41 = __cxa_begin_catch(a1);
        v42 = (*(*v41 + 16))(v41);
        handleException(v42, "TPToken_Tokenize", 2, v43, v44);
        __cxa_end_catch();
        break;
    }

    JUMPOUT(0x2625E4B18);
  }

  __cxa_free_exception(v16);
  goto LABEL_8;
}

_BYTE *verifyStringArgument(_BYTE *result, char a2, char a3, char *a4, uint64_t a5)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 297, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, a4);
    *exception = byte_287529580;
    v7 = (exception + 1);
    if (SHIBYTE(v14) < 0)
    {
      std::string::__init_copy_ctor_external(v7, v13, *(&v13 + 1));
    }

    else
    {
      v11 = v13;
      exception[3] = v14;
      *&v7->__r_.__value_.__l.__data_ = v11;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  if (result && (a3 & 1) == 0 && !*result)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 298, a4, a5);
    v9 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, a4);
    *v9 = byte_287529580;
    v10 = (v9 + 1);
    if (SHIBYTE(v14) < 0)
    {
      std::string::__init_copy_ctor_external(v10, v13, *(&v13 + 1));
    }

    else
    {
      v12 = v13;
      v9[3] = v14;
      *&v10->__r_.__value_.__l.__data_ = v12;
    }

    *v9 = &unk_2875282E0;
    v9[4] = 3;
  }

  return result;
}

void sub_2625E51FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t verifyPointerArgument<TPTokenResultHandle_fake **>(uint64_t result, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 279, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, a3);
    *exception = byte_287529580;
    v7 = (exception + 1);
    if (SHIBYTE(v10) < 0)
    {
      std::string::__init_copy_ctor_external(v7, v9, *(&v9 + 1));
    }

    else
    {
      v8 = v9;
      exception[3] = v10;
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_2625E532C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t TParamManager::getConfigHandleName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 72) + 32 * a2;
  v5 = (v4 + 8);
  if (*(v4 + 31) < 0)
  {
    v5 = *v5;
  }

  v6 = 0;
  *(a3 + 16) = 0;
    ;
  }

  return TBuffer<wchar_t>::insert(a3, 0, v5, v6 - 1);
}

uint64_t TPToken_DeleteResult(unint64_t a1, uint64_t a2)
{
  TReentrancyHandler::TReentrancyHandler(&v21, "TPToken_DeleteResult");
  TLocaleHandler::TLocaleHandler(&v19);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 283, v4, v5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Not initialized");
    *exception = byte_287529580;
    v14 = (exception + 1);
    if (SHIBYTE(v18) < 0)
    {
      std::string::__init_copy_ctor_external(v14, v17, *(&v17 + 1));
    }

    else
    {
      v16 = v17;
      exception[3] = v18;
      *&v14->__r_.__value_.__l.__data_ = v16;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v6 = verifyTokenizerHandle(a1, "Bad input tokenizer handle");
  if (!a2 || (v9 = *(v6 + 96), a2 - 1 >= ((*(v6 + 104) - v9) >> 3)) || !*(v9 + 8 * (a2 - 1)))
  {
    conditionalAssert("Bad input result handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 287, v7, v8);
    v11 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Bad input result handle");
    *v11 = byte_287529580;
    v12 = (v11 + 1);
    if (SHIBYTE(v18) < 0)
    {
      std::string::__init_copy_ctor_external(v12, v17, *(&v17 + 1));
    }

    else
    {
      v15 = v17;
      v11[3] = v18;
      *&v12->__r_.__value_.__l.__data_ = v15;
    }

    *v11 = &unk_2875282E0;
    v11[4] = 3;
  }

  TTokenizer::release(v6, a2);
  MrecInitModule_sdpres_sdapi();
  if ((v20 & 1) == 0)
  {
    uselocale(v19);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_2625E55FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPToken_DeleteResult", *(v26 + 4), v24, v25);
        break;
      case 6:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPToken_DeleteResult", 6, v28, v29);
        break;
      case 5:
        v34 = __cxa_begin_catch(a1);
        v35 = v34 + 8;
        if (v34[31] < 0)
        {
          v35 = *v35;
        }

LABEL_17:
        handleException(v35, "TPToken_DeleteResult", 2, v32, v33);
        break;
      case 4:
        v38 = __cxa_begin_catch(a1);
        v39 = v38 + 8;
        if (v38[31] < 0)
        {
          v39 = *v39;
        }

        handleException(v39, "TPToken_DeleteResult", 11, v36, v37);
        break;
      case 3:
        v40 = __cxa_begin_catch(a1);
        v35 = v40 + 8;
        if (v40[31] < 0)
        {
          v35 = *v35;
        }

        goto LABEL_17;
      case 2:
        v41 = __cxa_begin_catch(a1);
        v42 = (*(*v41 + 16))(v41);
        handleException(v42, "TPToken_DeleteResult", 1, v43, v44);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v45 = __cxa_begin_catch(a1);
        v46 = (*(*v45 + 16))(v45);
        handleException(v46, "TPToken_DeleteResult", 2, v47, v48);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x2625E5454);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t TPToken_GetResultInfo(unint64_t a1, uint64_t a2, uint64_t a3)
{
  TReentrancyHandler::TReentrancyHandler(&v24, "TPToken_GetResultInfo");
  TLocaleHandler::TLocaleHandler(&v22);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 301, v6, v7);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, "Not initialized");
    *exception = byte_287529580;
    v17 = (exception + 1);
    if (SHIBYTE(v21) < 0)
    {
      std::string::__init_copy_ctor_external(v17, v20, *(&v20 + 1));
    }

    else
    {
      v19 = v20;
      exception[3] = v21;
      *&v17->__r_.__value_.__l.__data_ = v19;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v8 = verifyTokenizerHandle(a1, "Bad input tokenizer handle");
  if (!a2 || (v11 = v8, v12 = *(v8 + 96), a2 - 1 >= ((*(v8 + 104) - v12) >> 3)) || !*(v12 + 8 * (a2 - 1)))
  {
    conditionalAssert("Bad input result handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 305, v9, v10);
    v14 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, "Bad input result handle");
    *v14 = byte_287529580;
    v15 = (v14 + 1);
    if (SHIBYTE(v21) < 0)
    {
      std::string::__init_copy_ctor_external(v15, v20, *(&v20 + 1));
    }

    else
    {
      v18 = v20;
      v14[3] = v21;
      *&v15->__r_.__value_.__l.__data_ = v18;
    }

    *v14 = &unk_2875282E0;
    v14[4] = 3;
  }

  verifyPointerArgument<TPTokenResultInfo>(a3, 0, "Bad output info pointer", v9, v10);
  TTokenizer::getResultInfo(v11, a2, a3);
  MrecInitModule_sdpres_sdapi();
  if ((v23 & 1) == 0)
  {
    uselocale(v22);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_2625E5B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPToken_GetResultInfo", *(v26 + 4), v24, v25);
        break;
      case 6:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPToken_GetResultInfo", 6, v28, v29);
        break;
      case 5:
        v34 = __cxa_begin_catch(a1);
        v35 = v34 + 8;
        if (v34[31] < 0)
        {
          v35 = *v35;
        }

LABEL_17:
        handleException(v35, "TPToken_GetResultInfo", 2, v32, v33);
        break;
      case 4:
        v38 = __cxa_begin_catch(a1);
        v39 = v38 + 8;
        if (v38[31] < 0)
        {
          v39 = *v39;
        }

        handleException(v39, "TPToken_GetResultInfo", 11, v36, v37);
        break;
      case 3:
        v40 = __cxa_begin_catch(a1);
        v35 = v40 + 8;
        if (v40[31] < 0)
        {
          v35 = *v35;
        }

        goto LABEL_17;
      case 2:
        v41 = __cxa_begin_catch(a1);
        v42 = (*(*v41 + 16))(v41);
        handleException(v42, "TPToken_GetResultInfo", 1, v43, v44);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v45 = __cxa_begin_catch(a1);
        v46 = (*(*v45 + 16))(v45);
        handleException(v46, "TPToken_GetResultInfo", 2, v47, v48);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x2625E5970);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t verifyPointerArgument<TPTokenResultInfo>(uint64_t result, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 279, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, a3);
    *exception = byte_287529580;
    v7 = (exception + 1);
    if (SHIBYTE(v10) < 0)
    {
      std::string::__init_copy_ctor_external(v7, v9, *(&v9 + 1));
    }

    else
    {
      v8 = v9;
      exception[3] = v10;
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_2625E5EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t TPToken_GetResultData(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7)
{
  TReentrancyHandler::TReentrancyHandler(&v42, "TPToken_GetResultData");
  TLocaleHandler::TLocaleHandler(&v40);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 322, v14, v15);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v38, "Not initialized");
    *exception = byte_287529580;
    v35 = (exception + 1);
    if (SHIBYTE(v39) < 0)
    {
      std::string::__init_copy_ctor_external(v35, v38, *(&v38 + 1));
    }

    else
    {
      v37 = v38;
      exception[3] = v39;
      *&v35->__r_.__value_.__l.__data_ = v37;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v16 = verifyTokenizerHandle(a1, "Bad input tokenizer handle");
  if (!a2 || (v19 = v16, v20 = *(v16 + 96), a2 - 1 >= ((*(v16 + 104) - v20) >> 3)) || !*(v20 + 8 * (a2 - 1)))
  {
    conditionalAssert("Bad input result handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tptoken.cpp", 326, v17, v18);
    v32 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v38, "Bad input result handle");
    *v32 = byte_287529580;
    v33 = (v32 + 1);
    if (SHIBYTE(v39) < 0)
    {
      std::string::__init_copy_ctor_external(v33, v38, *(&v38 + 1));
    }

    else
    {
      v36 = v38;
      v32[3] = v39;
      *&v33->__r_.__value_.__l.__data_ = v36;
    }

    *v32 = &unk_2875282E0;
    v32[4] = 3;
  }

  TTokenizer::getResultInfo(v16, a2, &v38);
  if (a3)
  {
    v22 = DWORD1(v38);
  }

  else
  {
    v22 = 0;
  }

  verifyPointerArgument<TPTokenState,unsigned int>(a3, v22, 1, "Bad output state pointer", v21);
  if (a4)
  {
    v24 = v38;
  }

  else
  {
    v24 = 0;
  }

  verifyPointerArgument<TPTokenTrans,unsigned int>(a4, v24, 1, "Bad output trans pointer", v23);
  if (a5)
  {
    v26 = DWORD2(v38);
  }

  else
  {
    v26 = 0;
  }

  verifyPointerArgument<char,unsigned int>(a5, v26, 1, "Bad output spelling buffer", v25);
  if (a6)
  {
    v28 = HIDWORD(v38);
  }

  else
  {
    v28 = 0;
  }

  verifyPointerArgument<unsigned int,unsigned int>(a6, v28, 1, "Bad output starting state pointer", v27);
  if (a7)
  {
    v30 = v39;
  }

  else
  {
    v30 = 0;
  }

  verifyPointerArgument<unsigned int,unsigned int>(a7, v30, 1, "Bad output accepting state pointer", v29);
  TTokenizer::getResultData(v19, a2, a3, a4, a5, a6, a7);
  MrecInitModule_sdpres_sdapi();
  if ((v41 & 1) == 0)
  {
    uselocale(v40);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_2625E6230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPToken_GetResultData", *(v26 + 4), v24, v25);
        break;
      case 6:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPToken_GetResultData", 6, v28, v29);
        break;
      case 5:
        v34 = __cxa_begin_catch(a1);
        v35 = v34 + 8;
        if (v34[31] < 0)
        {
          v35 = *v35;
        }

LABEL_17:
        handleException(v35, "TPToken_GetResultData", 2, v32, v33);
        break;
      case 4:
        v38 = __cxa_begin_catch(a1);
        v39 = v38 + 8;
        if (v38[31] < 0)
        {
          v39 = *v39;
        }

        handleException(v39, "TPToken_GetResultData", 11, v36, v37);
        break;
      case 3:
        v40 = __cxa_begin_catch(a1);
        v35 = v40 + 8;
        if (v40[31] < 0)
        {
          v35 = *v35;
        }

        goto LABEL_17;
      case 2:
        v41 = __cxa_begin_catch(a1);
        v42 = (*(*v41 + 16))(v41);
        handleException(v42, "TPToken_GetResultData", 1, v43, v44);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v45 = __cxa_begin_catch(a1);
        v46 = (*(*v45 + 16))(v45);
        handleException(v46, "TPToken_GetResultData", 2, v47, v48);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x2625E6080);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t verifyPointerArgument<TPTokenState,unsigned int>(uint64_t result, int a2, int a3, char *a4, uint64_t a5)
{
  if (!result && a2 && a3)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 259, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *exception = byte_287529580;
    v8 = (exception + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v8, v14, *(&v14 + 1));
    }

    else
    {
      v12 = v14;
      exception[3] = v15;
      *&v8->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  if (a2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 && (a3 & 1) == 0)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 260, a4, a5);
    v10 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *v10 = byte_287529580;
    v11 = (v10 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v10[3] = v15;
      *&v11->__r_.__value_.__l.__data_ = v13;
    }

    *v10 = &unk_2875282E0;
    v10[4] = 3;
  }

  return result;
}

void sub_2625E66A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t verifyPointerArgument<TPTokenTrans,unsigned int>(uint64_t result, int a2, int a3, char *a4, uint64_t a5)
{
  if (!result && a2 && a3)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 259, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *exception = byte_287529580;
    v8 = (exception + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v8, v14, *(&v14 + 1));
    }

    else
    {
      v12 = v14;
      exception[3] = v15;
      *&v8->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  if (a2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 && (a3 & 1) == 0)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 260, a4, a5);
    v10 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *v10 = byte_287529580;
    v11 = (v10 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v10[3] = v15;
      *&v11->__r_.__value_.__l.__data_ = v13;
    }

    *v10 = &unk_2875282E0;
    v10[4] = 3;
  }

  return result;
}

void sub_2625E68AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t verifyPointerArgument<char,unsigned int>(uint64_t result, int a2, int a3, char *a4, uint64_t a5)
{
  if (!result && a2 && a3)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 259, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *exception = byte_287529580;
    v8 = (exception + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v8, v14, *(&v14 + 1));
    }

    else
    {
      v12 = v14;
      exception[3] = v15;
      *&v8->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  if (a2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 && (a3 & 1) == 0)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 260, a4, a5);
    v10 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *v10 = byte_287529580;
    v11 = (v10 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v10[3] = v15;
      *&v11->__r_.__value_.__l.__data_ = v13;
    }

    *v10 = &unk_2875282E0;
    v10[4] = 3;
  }

  return result;
}

void sub_2625E6AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t verifyPointerArgument<unsigned int,unsigned int>(uint64_t result, int a2, int a3, char *a4, uint64_t a5)
{
  if (!result && a2 && a3)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 259, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *exception = byte_287529580;
    v8 = (exception + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v8, v14, *(&v14 + 1));
    }

    else
    {
      v12 = v14;
      exception[3] = v15;
      *&v8->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  if (a2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 && (a3 & 1) == 0)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 260, a4, a5);
    v10 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *v10 = byte_287529580;
    v11 = (v10 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v10[3] = v15;
      *&v11->__r_.__value_.__l.__data_ = v13;
    }

    *v10 = &unk_2875282E0;
    v10[4] = 3;
  }

  return result;
}

{
  if (!result && a2 && a3)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 269, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *exception = byte_287529580;
    v8 = (exception + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v8, v14, *(&v14 + 1));
    }

    else
    {
      v12 = v14;
      exception[3] = v15;
      *&v8->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  if (a2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 && (a3 & 1) == 0)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 270, a4, a5);
    v10 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, a4);
    *v10 = byte_287529580;
    v11 = (v10 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v10[3] = v15;
      *&v11->__r_.__value_.__l.__data_ = v13;
    }

    *v10 = &unk_2875282E0;
    v10[4] = 3;
  }

  return result;
}

void sub_2625E6CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x26672AFA0](a1 + 1);

  return std::ostream::~ostream();
}

void TReentrancyHandler::TReentrancyHandler(TReentrancyHandler *this, const char *a2)
{
  if (TReentrancyHandler::ms_bIn == 1)
  {
    CsIn = TReentrancyHandler::getCsIn(this);
    if (*(CsIn + 23) >= 0)
    {
      v9 = CsIn;
    }

    else
    {
      v9 = *CsIn;
    }

    tknPrintf("Error: code reentrancy, originally entered in %s and now again in %s.\n", v5, v6, v7, v8, v9, a2);
    std::string::basic_string[abi:ne200100]<0>(v16, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v17) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v16[0], v16[1]);
    }

    else
    {
      *&__p[8] = *v16;
      v19 = v17;
    }

    *__p = &unk_287525A28;
    if (v19 >= 0)
    {
      v12 = &__p[8];
    }

    else
    {
      v12 = *&__p[8];
    }

    conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 58, v10, v11);
    *__p = byte_287529580;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v14 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v14, *__p, *&__p[8]);
    }

    else
    {
      v15 = *__p;
      exception[3] = *&__p[16];
      *&v14->__r_.__value_.__l.__data_ = v15;
    }

    *exception = &unk_287525A28;
  }

  TReentrancyHandler::ms_bIn = 1;
  v3 = TReentrancyHandler::getCsIn(this);
  MEMORY[0x26672AEC0](v3, a2);
}

void sub_2625E701C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

uint64_t TReentrancyHandler::getCsIn(TReentrancyHandler *this)
{
  {
    operator new();
  }

  return TReentrancyHandler::getCsIn(void)::s_csIn;
}

void TReentrancyException::~TReentrancyException(void **this)
{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

void TLocaleHandler::TLocaleHandler(TLocaleHandler *this)
{
  *(this + 8) = 0;
  v2 = TLocaleHandler::ms_MacLocale;
  if (!TLocaleHandler::ms_MacLocale)
  {
    v2 = newlocale(2, "UTF-8", 0);
    TLocaleHandler::ms_MacLocale = v2;
  }

  *this = uselocale(v2);
}

void TLocaleHandler::~TLocaleHandler(locale_t *this)
{
  if ((this[1] & 1) == 0)
  {
    uselocale(*this);
    *(this + 8) = 1;
  }
}

void OUTLINED_FUNCTION_0_0()
{

  JUMPOUT(0x26672B1B0);
}

__int32 **TWord::TWord(__int32 **a1, __int32 *a2, __int32 *a3, __int32 *a4, __int32 *a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = 0;
  v8 = v10;
  v9 = xmmword_26286B6F0;
  v11 = 1;
  getThirdField(a2, &v8);
  v6 = a1[4] & 0xFFFFFFFFFFFFFFFCLL;
  if (!*(&v9 + 1))
  {
    v6 |= 2uLL;
  }

  a1[4] = v6;
  if (v11 == 1 && v8 != v10 && v8)
  {
    MEMORY[0x26672B1B0]();
  }

  return a1;
}

void sub_2625E734C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x418]) == 1)
  {
    TWord::TWord(&a9, v9);
  }

  _Unwind_Resume(a1);
}

BOOL TLexicon::applyMask(uint64_t a1, unint64_t a2, int *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *a3 != 33;
  if (a2 != -1)
  {
    v6 = 0;
    v7 = &a3[*a3 == 33];
    while (1)
    {
      v8 = v7[v6];
      if (v8 != 48)
      {
        break;
      }

      ++v6;
    }

    if (v8)
    {
      v13 = v15;
      v14 = xmmword_26286B6F0;
      v16 = 1;
      TLexicon::getOptionalTagBits(a1, a2, &v13, a4);
      if (v6 < *(&v14 + 1))
      {
        do
        {
          v9 = v7[v6];
          if (!v9)
          {
            break;
          }

          if (v9 != 48 && *&v13[4 * v6] == 49)
          {
            if (v16 == 1 && v13 != v15)
            {
              MEMORY[0x26672B1B0](v13, 0x1000C4052888210);
            }

            return v5;
          }

          ++v6;
        }

        while (*(&v14 + 1) != v6);
      }

      if (v16 == 1 && v13 != v15 && v13 != 0)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  return v4 == 33;
}

void sub_2625E74BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x418]) == 1)
  {
    TWord::TWord(&a9, v9);
  }

  _Unwind_Resume(a1);
}

BOOL TLexicon::checkBits(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a2 == -1)
  {
    return 1;
  }

  if ((*a5 & 4) == 0)
  {
    TLexicon::getOptionalTagBits(a1, a2, 0, a5);
  }

  if (!a4)
  {
    return 0;
  }

  v8 = *a5;
  v9 = a4 - 1;
  do
  {
    v10 = *a3++;
    result = ((1 << v10) & v8) != 0;
  }

  while (((1 << v10) & v8) == 0 && v9-- != 0);
  return result;
}

uint64_t TWord::getUnigramScore(TWord *this)
{
  v3 = *(this + 2);
  if (v3 == -1)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*(this + 1) + 104);
  }

  v8 = v1;
  v9 = v2;
  v7 = 0;
  v6[0] = v4;
  v6[1] = v3;
  SDLm_LmScore(0, 0, 0, 0, 0, v6, 1u, &v7, 1u, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  return v7;
}

void TLexicon::getCategoryTag(unint64_t *a1, unint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  TBuffer<wchar_t>::assign(a3, dword_2628735E8);
  if (a2 != -1)
  {
    v6 = a1[49];
    if (v6)
    {
      if (a1[50])
      {
        v7 = v6 + 7;
        if (v7 <= 0x807)
        {
          SDWord_GetTagBits(a1[13], a2, 1uLL, v14, v7 >> 3);
          v8 = a1[49];
          if (v8)
          {
            v9 = 0;
            v10 = 0;
            do
            {
              v10 |= ((v14[v9 >> 3] >> (v9 & 7) << 63) >> 63) & (1 << v9);
              ++v9;
            }

            while (v8 != v9);
          }

          else
          {
            v10 = 0;
          }

          TBuffer<wchar_t>::resize(a3, 0);
          TLocaleInfo::multiByteToUnicode((a1 + 30), (a1[52] + v10 + v10 * a1[51]), a1[51], a3);
          v11 = a3[2];
          if (v11)
          {
            v12 = 0;
            while (*(*a3 + 4 * v12) != 32)
            {
              if (v11 == ++v12)
              {
                goto LABEL_16;
              }
            }

            TBuffer<wchar_t>::resize(a3, v12);
          }
        }
      }
    }
  }

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
}

void TLexicon::getOptionalTagBits(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    TBuffer<wchar_t>::resize(a3, 0);
    v8 = *(a1 + 384);
    if (*(a3 + 1048) == 1 && *(a3 + 8) < v8)
    {
      *(a3 + 8) = v8 + 1;
      operator new[]();
    }

    v9 = *(a3 + 16);
    if (v9 >= v8)
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 384);
    if ((*(a3 + 1048) & 1) == 0)
    {
      v10 = *(a3 + 8);
      if (v9 >= v10)
      {
LABEL_11:
        *(a3 + 16) = v8;
        goto LABEL_12;
      }

      if (v10 >= v8)
      {
        v10 = *(a1 + 384);
      }
    }

    memset_pattern16((*a3 + 4 * v9), "0", 4 * (v10 - v9));
    goto LABEL_11;
  }

LABEL_12:
  if (a2 != -1)
  {
    v11 = *(a1 + 384);
    if (v11)
    {
      v12 = v11 + 7;
      if (v12 <= 0x807)
      {
        SDWord_GetTagBits(*(a1 + 104), a2, 2uLL, v19, v12 >> 3);
        if (a3)
        {
          v13 = *(a1 + 384);
          if (v13)
          {
            for (i = 0; i != v13; ++i)
            {
              if ((v19[i >> 3] >> (i & 7)))
              {
                *(*a3 + 4 * i) = 49;
              }
            }
          }
        }

        if (a4)
        {
          v15 = 0;
          v16 = *a4 | 4;
          do
          {
            v17 = v16 & ~(8 << v15);
            v16 |= 8 << v15;
            if (((v19[TWord::ms_pnOTBIndex[v15] >> 3] >> (TWord::ms_pnOTBIndex[v15] & 7)) & 1) == 0)
            {
              v16 = v17;
            }

            *a4 = v16;
            ++v15;
          }

          while (v15 != 5);
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t *TWord::getOptionalTagBits(TWord *this)
{
  v1 = (this + 32);
  if ((*(this + 32) & 4) == 0)
  {
    TLexicon::getOptionalTagBits(*(this + 1), *(this + 2), 0, v1);
  }

  return v1;
}

uint64_t TLexicon::getWrittenForm(int a1, __int32 *__s, uint64_t a3)
{
  v5 = wcschr(__s, 92);
  if (v5)
  {
    if (v5 == __s)
    {
      v6 = __s[1];
      if (v6 == 92 || v6 == 0)
      {
        ++v5;
      }

      else
      {
        v5 = __s;
      }
    }

    v8 = v5 - __s;
    TBuffer<wchar_t>::resize(a3, 0);

    return TBuffer<wchar_t>::insert(a3, 0, __s, v8);
  }

  else
  {

    return TBuffer<wchar_t>::assign(a3, __s);
  }
}

uint64_t TLexicon::getTokenName(int a1, __int32 *a2, uint64_t a3)
{
  TLexicon::getWrittenForm(a1, a2, a3);
  v6 = v8;
  v7 = xmmword_26286B6F0;
  v9 = 1;
  result = getSecondField(a2, &v6);
  if (*(&v7 + 1))
  {
    TBuffer<wchar_t>::insert(a3, *(a3 + 16), &unk_262873564, 1uLL);
    result = TBuffer<wchar_t>::operator+=(a3, &v6);
  }

  if (v9 == 1)
  {
    result = v6;
    if (v6 != v8)
    {
      if (v6)
      {
        return MEMORY[0x26672B1B0]();
      }
    }
  }

  return result;
}

void sub_2625E7B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x418]) == 1)
  {
    TWord::TWord(&a9, v9);
  }

  _Unwind_Resume(a1);
}

uint64_t TWord::getWordSpec(TWord *this)
{
  if (*(this + 2) == -1)
  {
    return -1;
  }

  else
  {
    return *(*(this + 1) + 104);
  }
}

uint64_t TWord::getHeadClone(uint64_t this)
{
  if ((*(this + 32) & 2) == 0)
  {
    return TLexicon::findHeadClone(*(this + 8), *this);
  }

  return this;
}

uint64_t TLexicon::findHeadClone(void *a1, __int32 *a2)
{
  v9 = v11;
  v10 = xmmword_26286B6F0;
  v12 = 1;
  TLexicon::getTokenName(a1, a2, &v9);
  if (*(&v10 + 1) >= v10)
  {
    if (v12)
    {
      v13 = 0;
      TBuffer<wchar_t>::insert(&v9, *(&v10 + 1), &v13, 1uLL);
      v3 = v9;
      --*(&v10 + 1);
    }

    else
    {
      v3 = v9;
      if (v10)
      {
        v9[v10 - 1] = 0;
      }
    }
  }

  else
  {
    v3 = v9;
    v9[*(&v10 + 1)] = 0;
  }

  Word = TLexicon::findWord(a1, v3);
  v5 = Word;
  if (!Word || (*(Word + 32) & 2) == 0)
  {
    if (*(&v10 + 1) >= v10)
    {
      if (v12)
      {
        v13 = 0;
        TBuffer<wchar_t>::insert(&v9, *(&v10 + 1), &v13, 1uLL);
        v6 = v9;
        --*(&v10 + 1);
      }

      else
      {
        v6 = v9;
        if (v10)
        {
          v9[v10 - 1] = 0;
        }
      }
    }

    else
    {
      v6 = v9;
      v9[*(&v10 + 1)] = 0;
    }

    v7 = TLexicon::computeClones(a1, v6);
    if (v7)
    {
      v5 = *(v7 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  if (v12 == 1 && v9 != v11 && v9)
  {
    MEMORY[0x26672B1B0]();
  }

  return v5;
}

void sub_2625E7D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void TWord::getClones(uint64_t a1, void *a2)
{
  std::vector<TWord const*>::resize(a2, 0);
  v12 = v14;
  v13 = xmmword_26286B6F0;
  v15 = 1;
  TLexicon::getTokenName(v4, *a1, &v12);
  v5 = *(a1 + 8);
  if (*(&v13 + 1) >= v13)
  {
    if (v15)
    {
      v16 = 0;
      TBuffer<wchar_t>::insert(&v12, *(&v13 + 1), &v16, 1uLL);
      v6 = v12;
      --*(&v13 + 1);
    }

    else
    {
      v6 = v12;
      if (v13)
      {
        v12[v13 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = v12;
    v12[*(&v13 + 1)] = 0;
  }

  v7 = TLexicon::computeClones(v5, v6);
  v8 = v7;
  if (v7)
  {
    std::vector<TState const*>::reserve(a2, *(v7 + 8) - 1);
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = (v8 + 24);
      do
      {
        if (*v10 != a1)
        {
          std::vector<TWord const*>::push_back[abi:ne200100](a2, v10);
          v9 = *(v8 + 8);
        }

        ++v10;
      }

      while (v10 != (v8 + 24 + 8 * v9));
    }
  }

  if (v15 == 1 && v12 != v14 && v12 != 0)
  {
    MEMORY[0x26672B1B0]();
  }
}

void sub_2625E7F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::computeClones(uint64_t a1, __int32 *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  ++*(a1 + 472);
  std::wstring::basic_string[abi:ne200100]<0>(&__p, a2);
  v4 = std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(a1 + 176, &__p);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 184 != v4)
  {
    ++*(a1 + 496);
    v5 = *(v4 + 56);
    goto LABEL_5;
  }

  Word = TLexicon::findWord(a1, a2);
  if (Word && (*(Word + 32) & 1) != 0)
  {
    v5 = 0;
    ++*(a1 + 496);
    goto LABEL_5;
  }

  __p = v50;
  v49 = xmmword_26286B6F0;
  v51 = 1;
  getSecondField(a2, &__p);
  v56 = v58;
  v57 = xmmword_26286B6F0;
  v59 = 1;
  TLocaleInfo::unicodeToMultiByte(a1 + 240, a2, &v56);
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v9 = *(a1 + 104);
  if (*(&v57 + 1) >= v57)
  {
    if (v59)
    {
      LOBYTE(v38) = 0;
      TBuffer<char>::insert(&v56, *(&v57 + 1), &v38, 1uLL);
      --*(&v57 + 1);
    }

    else if (v57)
    {
      v56[v57 - 1] = 0;
    }
  }

  else
  {
    v56[*(&v57 + 1)] = 0;
  }

  if (*(&v49 + 1))
  {
    v10 = "\";
  }

  else
  {
    v10 = "\\\";
  }

  SDVoc_GetWords(v9, 0xFFFFFFFFFFFFFFFELL, v56, v10, *(a1 + 432), *(a1 + 424), &v47 + 1, &v46, &v47, callBackMRECArrayReallocator, 0, &v45);
  v43 = 0;
  v42 = 0;
  v44 = 0;
  if (HIDWORD(v47))
  {
    v15 = 0;
    do
    {
      ++*(a1 + 512);
      v16 = v46[v15];
      v17 = TStringParam::get((*(a1 + 336) + 496));
      if (!TLexicon::applyMask(a1, v16, v17, 0))
      {
        if (SDWord_GetName(*(a1 + 104), v16, &v55, 0x100u) < 0x101)
        {
          v38 = v40;
          v39 = xmmword_26286B6F0;
          v41 = 1;
          if (TLocaleInfo::multiByteToUnicode(a1 + 240, &v55, &v38))
          {
            tknPrintf("Warning: '%s' : Can't convert to Unicode. Ignored.\n", v22, v23, v24, v25, &v55);
          }

          else
          {
            if (*(&v39 + 1) >= v39)
            {
              if (v41)
              {
                LODWORD(v52[0]) = 0;
                TBuffer<wchar_t>::insert(&v38, *(&v39 + 1), v52, 1uLL);
                v26 = v38;
                --*(&v39 + 1);
              }

              else
              {
                v26 = v38;
                if (v39)
                {
                  *(v38 + v39 - 1) = 0;
                }
              }
            }

            else
            {
              v26 = v38;
              *(v38 + *(&v39 + 1)) = 0;
            }

            v54[0] = v26;
            v54[1] = 0;
            THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find(a1 + 200, v54, v52);
            if (!v53)
            {
              v37 = 0;
LABEL_35:
              operator new[]();
            }

            v37 = *(v53 + 16);
            if (!v37)
            {
              goto LABEL_35;
            }

            std::vector<TItnRule *>::push_back[abi:ne200100](&v42, &v37);
          }

          if (v41 == 1 && v38 != v40 && v38)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        else
        {
          tknPrintf("Warning: The voc contains a >= %llu-byte word name, prefix is '%s'. Ignored.\n", v18, v19, v20, v21, 256, &v55);
        }
      }

      ++v15;
    }

    while (v15 < HIDWORD(v47));
  }

  if (v46 != *(a1 + 432))
  {
    tknPrintf("Warning: Inefficient head-clone search. Required dynamic allocation of size %llu\n", v11, v12, v13, v14, v47);
    v27 = *(a1 + 432);
    if (v27)
    {
      MEMORY[0x26672B190](v27, 0x80C80B8603338);
    }

    *(a1 + 432) = v46;
    *(a1 + 424) = v47;
  }

  v28 = v42;
  v29 = v43;
  if (v42 == v43)
  {
    v5 = 0;
    if (!v42)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v30 = *v42;
    v31 = *(*v42 + 32);
    *(*v42 + 32) = v31 | 1;
    v32 = (v29 - v28) >> 3;
    v33 = v32 - 1;
    if (v32 > 1 || (v31 & 2) == 0)
    {
      *(v30 + 32) = v31 | 3;
      if (v32 >= 2)
      {
        v34 = v28 + 1;
        do
        {
          v35 = *v34++;
          *(v35 + 32) |= 1uLL;
          --v33;
        }

        while (v33);
      }

      v36 = *(a1 + 328);
      TWordBlock::create(&v42);
    }

    v5 = 0;
  }

  v43 = v28;
  operator delete(v28);
LABEL_52:
  if (v59 == 1 && v56 != v58 && v56)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v51 == 1 && __p != v50 && __p)
  {
    MEMORY[0x26672B1B0]();
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_2625E859C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v25 = STACK[0x470];
  if (STACK[0x470])
  {
    STACK[0x478] = v25;
    operator delete(v25);
  }

  if (LOBYTE(STACK[0xB08]) == 1)
  {
    v26 = STACK[0x9F0];
    if (STACK[0x9F0] != a13)
    {
      if (v26)
      {
        MEMORY[0x26672B1B0](v26, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x8B8]) == 1)
  {
    v27 = STACK[0x4A0];
    if (STACK[0x4A0] != a14)
    {
      if (v27)
      {
        MEMORY[0x26672B1B0](v27, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TLexicon::getHomophones(void *a1, __int32 *a2, int *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  std::vector<TWord const*>::resize(a4, 0);
  Word = TLexicon::findWord(a1, a2);
  if (Word)
  {
    v9 = Word;
    memset(v39, 0, 512);
    WordsWithCommonPron = SDWord_GetWordsWithCommonPron(a1[13], *(Word + 16), v39, 0x100u);
    if (WordsWithCommonPron < 0x101)
    {
      if (!WordsWithCommonPron)
      {
        goto LABEL_36;
      }

      v16 = WordsWithCommonPron;
    }

    else
    {
      loggableUnicode(a2, &__p);
      if (v32 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      tknPrintf("Warning: '%s' : Too many homophones to process.\n", v11, v12, v13, v14, p_p);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p);
      }

      v16 = 256;
    }

    v17 = v39;
    do
    {
      v18 = *v17;
      if (*v17 != *(v9 + 16) && !TLexicon::applyMask(a1, *v17, a3, 0))
      {
        v19 = TStringParam::get((a1[42] + 496));
        if (!TLexicon::applyMask(a1, v18, v19, 0))
        {
          if (SDWord_GetName(a1[13], v18, v38, 0x100u) < 0x101)
          {
            __p = v33;
            v32 = xmmword_26286B6F0;
            v34 = 1;
            if (TLocaleInfo::multiByteToUnicode((a1 + 30), v38, &__p))
            {
              tknPrintf("Warning: '%s' : Can't convert to Unicode. Ignored.\n", v24, v25, v26, v27, v38);
            }

            else
            {
              if (*(&v32 + 1) >= v32)
              {
                if (v34)
                {
                  LODWORD(v35[0]) = 0;
                  TBuffer<wchar_t>::insert(&__p, *(&v32 + 1), v35, 1uLL);
                  v28 = __p;
                  --*(&v32 + 1);
                }

                else
                {
                  v28 = __p;
                  if (v32)
                  {
                    *(__p + v32 - 1) = 0;
                  }
                }
              }

              else
              {
                v28 = __p;
                *(__p + *(&v32 + 1)) = 0;
              }

              v37[0] = v28;
              v37[1] = 0;
              THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find((a1 + 25), v37, v35);
              if (!v36)
              {
                v30 = 0;
LABEL_29:
                operator new[]();
              }

              v30 = *(v36 + 16);
              if (!v30)
              {
                goto LABEL_29;
              }

              std::vector<TWord const*>::push_back[abi:ne200100](a4, &v30);
            }

            if (v34 == 1 && __p != v33 && __p)
            {
              MEMORY[0x26672B1B0]();
            }
          }

          else
          {
            tknPrintf("Warning: The voc contains a >= %llu-byte word name, prefix is '%s'. Ignored.\n", v20, v21, v22, v23, 256, v38);
          }
        }
      }

      ++v17;
      --v16;
    }

    while (v16);
  }

LABEL_36:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_2625E8AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *TLexiconScore::TLexiconScore(uint64_t *a1, const __int32 *a2, unsigned int *a3, size_t a4, size_t a5, uint64_t a6)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  v12 = wcslen(a3);
  if (!wcsncmp(a2, a3, v12))
  {
    return a1;
  }

  if (!*a2)
  {
    v34 = 0;
    goto LABEL_79;
  }

  v13 = a2;
  v14 = a3;
  while (*v14)
  {
    v52 = 0;
    TCollation::collateNext((a6 + 16), v13, &v52);
    v51 = 0;
    TCollation::collateNext((a6 + 16), v14, &v51);
    if (v52 != v51 || (v15 = TLocaleInfo::removeDiacritics(a6, *v13), v16 = TLocaleInfo::toLower(a6, v15), v17 = TLocaleInfo::removeDiacritics(a6, *v14), v16 != TLocaleInfo::toLower(a6, v17)))
    {
      ++*(a1 + 8);
    }

    v18 = *v13;
    {
      operator new();
    }

    if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v18))
    {
      goto LABEL_59;
    }

    v19 = *v14;
    {
      operator new();
    }

    if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v19))
    {
      goto LABEL_59;
    }

    v20 = *v13;
    {
      operator new();
    }

    if (TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v20))
    {
      v21 = *v14;
      {
        operator new();
      }

      if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v21))
      {
        v22 = *a1;
        if (v14 == a3)
        {
          v23 = v22 | 1;
        }

        else
        {
          v23 = v22 | 4;
        }

LABEL_26:
        *a1 = v23;
        goto LABEL_27;
      }
    }

    v24 = *v13;
    {
      operator new();
    }

    if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v24))
    {
      v25 = *v14;
      {
        operator new();
      }

      if (TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v25))
      {
        v26 = *a1;
        if (v13 == a2)
        {
          v23 = v26 | 2;
        }

        else
        {
          v23 = v26 | 8;
        }

        goto LABEL_26;
      }
    }

LABEL_27:
    v47 = v49;
    v48 = xmmword_26286B6F0;
    v50 = 1;
    v43 = v45;
    v44 = xmmword_26286B6F0;
    v46 = 1;
    TLocaleInfo::decomposeCharacter(a6, *v13, &v47);
    TLocaleInfo::decomposeCharacter(a6, *v14, &v43);
    if (*(&v48 + 1) >= v48)
    {
      if (v50)
      {
        v53[0] = 0;
        TBuffer<wchar_t>::insert(&v47, *(&v48 + 1), v53, 1uLL);
        v27 = v47;
        --*(&v48 + 1);
      }

      else
      {
        v27 = v47;
        if (v48)
        {
          *&v47[4 * v48 - 4] = 0;
        }
      }
    }

    else
    {
      v27 = v47;
      *&v47[4 * *(&v48 + 1)] = 0;
    }

    if (*(&v44 + 1) >= v44)
    {
      if (v46)
      {
        v53[0] = 0;
        TBuffer<wchar_t>::insert(&v43, *(&v44 + 1), v53, 1uLL);
        v28 = v43;
        --*(&v44 + 1);
      }

      else
      {
        v28 = v43;
        if (v44)
        {
          *&v43[4 * v44 - 4] = 0;
        }
      }
    }

    else
    {
      v28 = v43;
      *&v43[4 * *(&v44 + 1)] = 0;
    }

    if (!wcscmp((v27 + 4), (v28 + 4)))
    {
      goto LABEL_51;
    }

    v29 = *v13;
    {
      operator new();
    }

    if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v29))
    {
      if (*(&v48 + 1) < 2uLL)
      {
        goto LABEL_51;
      }

      v30 = *v14;
      {
        operator new();
      }

      isLower = TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v30);
      v32 = *(&v44 + 1) > 1uLL ? 1 : isLower;
      if ((v32 & 1) == 0)
      {
        goto LABEL_51;
      }

      v33 = 32;
    }

    else
    {
      v33 = 16;
    }

    *a1 |= v33;
LABEL_51:
    if (v46 == 1 && v43 != v45 && v43)
    {
      MEMORY[0x26672B1B0]();
    }

    if (v50 == 1 && v47 != v49 && v47)
    {
      MEMORY[0x26672B1B0]();
    }

LABEL_59:
    v13 += v52;
    v14 += v51;
    if (!*v13)
    {
      break;
    }
  }

  v34 = *a1;
LABEL_79:
  v35 = wcslen(a3);
  v36 = (v34 & 5) != 0;
  v37 = v35 < a5;
  v38 = v36 && v37;
  if (v36 && v37)
  {
    v39 = v34 | 0x40;
  }

  else
  {
    v39 = v34;
  }

  v41 = (v39 & 0x30) != 0 && v35 < a4;
  if (v38 || v41)
  {
    if (v41)
    {
      v39 |= 0x80uLL;
    }

    *a1 = v39;
  }

  return a1;
}

void sub_2625E91DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  MEMORY[0x26672B1B0](a10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x458]) == 1 && a17 != v17 && a17)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x878]) == 1)
  {
    v19 = STACK[0x460];
    if (STACK[0x460] != a16)
    {
      if (v19)
      {
        MEMORY[0x26672B1B0](v19, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TCollation::collateNext(void *a1, unsigned int *a2, unint64_t *a3)
{
  v4 = a1[3];
  v5 = a1[4];
  result = *a2;
  v7 = v4 == v5 || result == 0;
  if (!v7 && a2[1])
  {
    return TCollation::collateCharSlow(a1, a2, a3);
  }

  *a3 = 1;
  v8 = a1[2];
  if (v8)
  {
    if (result < 0x10000)
    {
      return *(v8 + 4 * result);
    }
  }

  return result;
}

void TLexiconParamManager::TLexiconParamManager(TLexiconParamManager *this, TLexicon *a2)
{
  TParamManager::TParamManager(this, 1, (a2 + 240));
  *v4 = &unk_287525A48;
  v5 = (v4 + 18);
  TIntParam::TIntParam((v4 + 18), &unk_2628700A8, &unk_262870104, 256, 2, 4, 4, &unk_2628704F4, &unk_26287052C);
  TStringParam::TStringParam(this + 496, &unk_262870530, &unk_262870568, 0, &unk_26287091C, &unk_262870A34, &unk_26287052C);
  TIntParam::TIntParam((this + 1872), &unk_262870A6C, &unk_262870AF8, 0, 1, 256, 4, &unk_262870A34, &unk_262871284);
  TIntParam::TIntParam((this + 2224), &unk_2628712C4, &unk_262871348, 0, 1, 256, 4, &unk_262870A34, &unk_262871284);
  TIntParam::TIntParam((this + 2576), &unk_262871B68, &unk_262871C10, 0, 0, 0x7FFFFFFF, 2000, &unk_262870A34, &unk_26287052C);
  TIntParam::TIntParam((this + 2928), &unk_262871D80, &unk_262871E30, 0, 0, 0x7FFFFFFF, 5000, &unk_262870A34, &unk_26287052C);
  TStringParam::TStringParam(this + 3280, &unk_26287203C, &unk_262872070, 256, &unk_26287052C, &unk_26287218C, &unk_26287052C);
  TStringParam::TStringParam(this + 4656, &unk_2628721C4, &unk_2628721F4, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 6032, &unk_26287234C, &unk_262872388, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 7408, &unk_2628724B0, &unk_2628724F8, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 8784, &unk_262872638);
  TStringParam::TStringParam(this + 10160, &unk_262872698, &unk_2628726E0, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 11536, &unk_262872780, &unk_2628727C4, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 12912, &unk_2628728F0, &unk_26287294C, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 14288, &unk_262872A04, &unk_262872A5C, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 15664, &unk_262872B88);
  TStringParam::TStringParam(this + 17040, &unk_262872BE0, &unk_262872C18, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 18416, &unk_262872D20, &unk_262872D54, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TStringParam::TStringParam(this + 19792, &unk_262872DC0, &unk_262872DF4, 0, &unk_26287052C, &unk_262872314, &unk_26287052C);
  TIntParam::TIntParam((this + 21168), &unk_262872E60, &unk_262872EA4, 0, 0, 99, 29, &unk_262872314, &unk_26287052C);
  TBoolParam::TBoolParam(this + 21520, &unk_262873134, &unk_262873180, 0, 0, &unk_262870A34, &unk_26287052C);
  TParamManager::add(this, v5);
  TParamManager::add(this, (this + 496));
  TParamManager::add(this, (this + 1872));
  TParamManager::add(this, (this + 2224));
  TParamManager::add(this, (this + 2576));
  TParamManager::add(this, (this + 2928));
  TParamManager::add(this, (this + 3280));
  TParamManager::add(this, (this + 4656));
  TParamManager::add(this, (this + 6032));
  TParamManager::add(this, (this + 7408));
  MEMORY[0x26672AF30](this + 8824, &unk_2628731E8);
  MEMORY[0x26672AF30](this + 8848, &unk_262872314);
  MEMORY[0x26672AF30](this + 8872, &unk_26287052C);
  std::vector<std::wstring>::vector[abi:ne200100](v13, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v12, 4uLL);
  v6 = 0;
  v7 = &unk_2628732E0;
  do
  {
    MEMORY[0x26672AF30](&v13[0][v6], v7);
    v7 += wcslen(v7) + 1;
    ++v6;
  }

  while (v6 != 4);
  TStringParam::setAllowables(this + 8784, v13, 0, 0);
  TStringParam::setOriginal(this + 1098, 0, dword_26287333C);
  TParamManager::add(this, (this + 8784));
  v14 = v12;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v14);
  v12[0] = v13;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v12);
  TParamManager::add(this, (this + 10160));
  TParamManager::add(this, (this + 11536));
  TParamManager::add(this, (this + 12912));
  TParamManager::add(this, (this + 14288));
  MEMORY[0x26672AF30](this + 15704, &unk_262873350);
  MEMORY[0x26672AF30](this + 15728, &unk_262873438);
  MEMORY[0x26672AF30](this + 15752, &unk_26287052C);
  std::vector<std::wstring>::vector[abi:ne200100](v13, 3uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v12, 3uLL);
  v8 = 0;
  v9 = &unk_262873478;
  v10 = &unk_262873510;
  do
  {
    MEMORY[0x26672AF30](&v13[0][v8 / 3], v9);
    if (v10)
    {
      MEMORY[0x26672AF30](&v12[0][v8], v10);
      v10 += wcslen(v10) + 1;
    }

    v9 += wcslen(v9) + 1;
    v8 += 3;
  }

  while (v8 != 9);
  if (v10)
  {
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  TStringParam::setAllowables(this + 15664, v13, v11, 0);
  TStringParam::setOriginal(this + 1958, 0, dword_26287352C);
  TParamManager::add(this, (this + 15664));
  v14 = v12;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v14);
  v12[0] = v13;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v12);
  TParamManager::add(this, (this + 17040));
  TParamManager::add(this, (this + 18416));
  TParamManager::add(this, (this + 19792));
  TParamManager::add(this, (this + 21168));
  TParamManager::add(this, (this + 21520));
  *(this + 2721) = a2;
}

void sub_2625E9AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  TBoolParam::~TBoolParam((v13 + v16));
  TParam::~TParam((v13 + v15));
  TStringParam::~TStringParam(v13 + 2474);
  TStringParam::~TStringParam(v13 + 2302);
  TStringParam::~TStringParam(v13 + 2130);
  TStringParam::~TStringParam((v13 + v18));
  TStringParam::~TStringParam(v13 + 1786);
  TStringParam::~TStringParam(v13 + 1614);
  TStringParam::~TStringParam(v13 + 1442);
  TStringParam::~TStringParam(v13 + 1270);
  TStringParam::~TStringParam((v13 + v17));
  TStringParam::~TStringParam(v13 + 926);
  TStringParam::~TStringParam(v13 + 754);
  TStringParam::~TStringParam(v13 + 582);
  TStringParam::~TStringParam(v13 + 410);
  TParam::~TParam(v13 + 366);
  TParam::~TParam(v13 + 322);
  TParam::~TParam(v13 + 278);
  TParam::~TParam(v13 + 234);
  TStringParam::~TStringParam(v13 + 62);
  TParam::~TParam(v14);
  TParamManager::~TParamManager(v13);
  _Unwind_Resume(a1);
}

void TParamManager::TParamManager(TParamManager *this, char a2, const TLocaleInfo *a3)
{
  *(this + 3) = 0;
  *this = &unk_2875282B0;
  *(this + 1) = -1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 12) = this + 104;
  *(this + 14) = 0;
  *(this + 16) = a3;
  *(this + 16) = a2;
  TParamManager::newConfig(this, "H", -1);
  TParamManager::newConfig(this, "R", 0);
  *(this + 17) = -1;
  Registry = TRegisterable<TParamManager>::getRegistry();
  *(this + 1) = TBaseRegistry<TLatticeProcessor *>::registerInstance(Registry, this);
}

void sub_2625E9D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = v5;
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(v4, *v7);
  std::vector<std::pair<unsigned long,std::wstring>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v3, *v6);
  v10 = *v8;
  if (*v8)
  {
    v2[4] = v10;
    operator delete(v10);
  }

  TRegisterable<TParamManager>::~TRegisterable(v2);
  _Unwind_Resume(a1);
}

char *TLexiconParamManager::notifyChange(char *this, const TParam *a2)
{
  if (this + 4656 == a2)
  {
    v2 = *(this + 2721);
    this = TStringParam::get((this + 4656));
    *(v2 + 248) = this;
  }

  return this;
}

void TLexicon::TLexicon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_287523388;
  *(a1 + 8) = -1;
  TAllocator::TAllocator((a1 + 16), 2048);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 170) = 1;
  *(a1 + 136) = &unk_2875233C8;
  *(a1 + 144) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 234) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = &unk_287523408;
  TLocaleInfo::TLocaleInfo((a1 + 240));
  *(a1 + 104) = a3;
  operator new();
}

void sub_2625EABBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, void *a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
    if ((v69 & 1) == 0)
    {
LABEL_6:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      TEnvManager::~TEnvManager(&a43);
      if (a2 == 1)
      {
        __cxa_begin_catch(a1);
        v73 = *(v65 + 352);
        if (v73)
        {
          TDataSaver::~TDataSaver(v73);
          MEMORY[0x26672B1B0]();
        }

        v74 = *(v65 + 336);
        if (v74)
        {
          (*(*v74 + 8))(v74);
        }

        v75 = *(v65 + 344);
        if (v75)
        {
          (*(*v75 + 8))(v75);
        }

        v76 = *(v65 + 416);
        if (v76)
        {
          MEMORY[0x26672B190](v76, 0x1000C8077774924);
        }

        v77 = *(v65 + 432);
        if (v77)
        {
          MEMORY[0x26672B190](v77, 0x80C80B8603338);
        }

        v78 = *(v65 + 440);
        if (v78)
        {
          MEMORY[0x26672B190](v78, 0x80C80B8603338);
        }

        __cxa_rethrow();
      }

      TCollation::~TCollation((v65 + 256));
      THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::~THashBase(v68);
      std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(a13, *v70);
      THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::~THashBase(a15);
      v79 = *a14;
      if (*a14)
      {
        *(v65 + 120) = v79;
        operator delete(v79);
      }

      if (*(v65 + 95) < 0)
      {
        operator delete(*v66);
      }

      TAllocator::clear((v65 + 16));
      TRegisterable<TLexicon>::~TRegisterable(v65);
      _Unwind_Resume(a1);
    }
  }

  else if (!v69)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v67);
  goto LABEL_6;
}

void sub_2625EAF00(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2625EAF0CLL);
  }

  __clang_call_terminate(a1);
}

void TInputStream::~TInputStream(TInputStream *this)
{
  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(this + 152, *(this + 20));
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x26672B160](a1 + 120);
  return a1;
}

void TLexicon::overrideCollation(TLexicon *this)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  v3 = *(this + 15);
  if (v3 != v2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        MEMORY[0x26672B190](v6, 0x1000C8052888210);
        v2 = *(this + 14);
        v3 = *(this + 15);
      }

      ++v4;
      v5 += 2;
    }

    while (v4 < (v3 - v2) >> 4);
  }

  *(this + 15) = v2;
  v7 = *(this + 32);
  v8 = *(this + 33);
  v42 = v44;
  v43 = xmmword_26286B6F0;
  v45 = 1;
  __s = v49;
  v48 = xmmword_26286B6F0;
  v50 = 1;
  memset(&v41, 0, sizeof(v41));
  v9 = v2;
  v37 = v7;
  if (v7)
  {
    v38 = 1;
    do
    {
      TBuffer<wchar_t>::resize(&v42, 0);
      std::vector<std::string>::resize(&v41, 0);
      v10 = v8;
      if (*v8)
      {
        v10 = v8;
        do
        {
          TBuffer<char>::resize(&__s, 0);
          TLocaleInfo::unicodeToMultiByte(this + 240, v10, &__s);
          begin = v41.__begin_;
          if (v41.__end_ == v41.__begin_)
          {
            goto LABEL_26;
          }

          v12 = 0;
          v13 = 1;
          do
          {
            v14 = &begin[v12];
            if (SHIBYTE(begin[v12].__r_.__value_.__r.__words[2]) < 0)
            {
              v14 = *v14;
            }

            v16 = *(this + 12);
            v15 = *(this + 13);
            if (*(&v48 + 1) >= v48)
            {
              if (v50)
              {
                LOBYTE(v46.__first_) = 0;
                TBuffer<char>::insert(&__s, *(&v48 + 1), &v46, 1uLL);
                --*(&v48 + 1);
              }

              else if (v48)
              {
                __s[v48 - 1] = 0;
              }
            }

            else
            {
              __s[*(&v48 + 1)] = 0;
            }

            v17 = SDColl_StringCompare(v15, v16, v14, __s);
            begin = v41.__begin_;
            v18 = v13++ >= 0xAAAAAAAAAAAAAAABLL * ((v41.__end_ - v41.__begin_) >> 3);
            ++v12;
          }

          while (!v18 && v17 != 0);
          if (v17)
          {
LABEL_26:
            v20 = 0;
              ;
            }

            TBuffer<wchar_t>::insert(&v42, *(&v43 + 1), v10, v20 - 1);
            LODWORD(v46.__first_) = 0;
            TBuffer<wchar_t>::insert(&v42, *(&v43 + 1), &v46, 1uLL);
            if (*(&v48 + 1) >= v48)
            {
              if (v50)
              {
                LOBYTE(v46.__first_) = 0;
                TBuffer<char>::insert(&__s, *(&v48 + 1), &v46, 1uLL);
                --*(&v48 + 1);
              }

              else if (v48)
              {
                __s[v48 - 1] = 0;
              }
            }

            else
            {
              __s[*(&v48 + 1)] = 0;
            }

            std::string::basic_string[abi:ne200100]<0>(__p, __s);
            end = v41.__end_;
            if (v41.__end_ >= v41.__end_cap_.__value_)
            {
              v24 = 0xAAAAAAAAAAAAAAABLL * ((v41.__end_ - v41.__begin_) >> 3);
              v25 = v24 + 1;
              if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v41.__end_cap_.__value_ - v41.__begin_) >> 3) > v25)
              {
                v25 = 0x5555555555555556 * ((v41.__end_cap_.__value_ - v41.__begin_) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v41.__end_cap_.__value_ - v41.__begin_) >> 3) >= 0x555555555555555)
              {
                v26 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v26 = v25;
              }

              v46.__end_cap_.__value_ = &v41;
              if (v26)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::wstring>>(&v41, v26);
              }

              v27 = 8 * ((v41.__end_ - v41.__begin_) >> 3);
              v28 = *__p;
              *(v27 + 16) = v40;
              *v27 = v28;
              __p[1] = 0;
              v40 = 0;
              __p[0] = 0;
              v29 = (24 * v24 - (v41.__end_ - v41.__begin_));
              memcpy(v29, v41.__begin_, v41.__end_ - v41.__begin_);
              v30 = v41.__begin_;
              value = v41.__end_cap_.__value_;
              v41.__begin_ = v29;
              v41.__end_ = (24 * v24 + 24);
              v41.__end_cap_.__value_ = 0;
              v46.__end_ = v30;
              v46.__end_cap_.__value_ = value;
              v46.__begin_ = v30;
              v46.__first_ = v30;
              std::__split_buffer<std::wstring>::~__split_buffer(&v46);
              v41.__end_ = (24 * v24 + 24);
              if (SHIBYTE(v40) < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v23 = *__p;
              v41.__end_->__r_.__value_.__r.__words[2] = v40;
              *&end->__r_.__value_.__l.__data_ = v23;
              v41.__end_ = end + 1;
            }
          }

          v32 = &v10[wcslen(v10)];
          v33 = v32[1];
          v10 = v32 + 1;
        }

        while (v33);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v41.__end_ - v41.__begin_) >> 3) >= 2)
      {
        LODWORD(v46.__first_) = 0;
        TBuffer<wchar_t>::insert(&v42, *(&v43 + 1), &v46, 1uLL);
        if (*v8)
        {
          operator new[]();
        }

        v10 = v8;
      }

      v8 = v10 + 1;
      ++v38;
    }

    while (v38 <= v37);
    v9 = *(this + 14);
    v2 = *(this + 15);
  }

  v34 = 126 - 2 * __clz((v2 - v9) >> 4);
  v46.__first_ = sortByFirst;
  if (v2 == v9)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,false>(v9, v2, &v46, v35, 1);
  v46.__first_ = &v41;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v46);
  if (v50 == 1 && __s != v49 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v45 == 1 && v42 != v44 && v42)
  {
    MEMORY[0x26672B1B0]();
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2625EB720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __p = &a17;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (LOBYTE(STACK[0x5B8]) == 1 && STACK[0x4A0] != a9 && STACK[0x4A0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x470]) == 1 && a20 != a10)
  {
    if (a20)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

void *TLexicon::validateLexicon(TLexicon *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  SDVoc_GetWords(*(this + 13), 0xFFFFFFFFFFFFFFFFLL, &byte_262899963, &byte_262899963, 0, 0, &v26, &v24, &v25, callBackMRECArrayReallocator, 0, &v23);
  result = v24;
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_22;
    }

    for (i = 0; i < v26; ++i)
    {
      v4 = v24[i];
      v5 = TStringParam::get((*(this + 42) + 496));
      if (!TLexicon::applyMask(this, v4, v5, 0))
      {
        if (SDWord_GetName(*(this + 13), v4, v28, 0x100u) < 0x101)
        {
          v19 = v21;
          v20 = xmmword_26286B6F0;
          v22 = 1;
          v14 = TLocaleInfo::multiByteToUnicode(this + 240, v28, &v19);
          v15 = "Warning: '%s' : Can't convert to Unicode.\n";
          if (v14)
          {
            goto LABEL_15;
          }

          if (*(&v20 + 1) >= v20)
          {
            if (v22)
            {
              v27 = 0;
              TBuffer<wchar_t>::insert(&v19, *(&v20 + 1), &v27, 1uLL);
              v16 = v19;
              --*(&v20 + 1);
            }

            else
            {
              v16 = v19;
              if (v20)
              {
                v19[v20 - 1] = 0;
              }
            }
          }

          else
          {
            v16 = v19;
            v19[*(&v20 + 1)] = 0;
          }

          v17 = TLexicon::checkName(this, v16, 0, 0xFFFFFFFFFFFFFFFFLL);
          v15 = "Warning: '%s' : Invalid word found in voc.\n";
          if (v17)
          {
LABEL_15:
            tknPrintf(v15, v10, v11, v12, v13, v28);
          }

          if (v22 == 1 && v19 != v21 && v19)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        else
        {
          tknPrintf("Warning: The voc contains a >= %llu-byte word name, prefix is '%s'.\n", v6, v7, v8, v9, 256, v28);
        }
      }
    }

    result = v24;
    if (v24)
    {
LABEL_22:
      result = MEMORY[0x26672B190]();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2625EBA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (LOBYTE(STACK[0x448]) == 1)
  {
    TWord::TWord(va, v7);
  }

  _Unwind_Resume(a1);
}

void *TRegisterable<TLexicon>::~TRegisterable(void *a1)
{
  *a1 = &unk_2875281F0;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TLexicon>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

void TLexicon::~TLexicon(TLexicon *this)
{
  *this = &unk_287523388;
  SDWord_DeleteList(*(this + 13), this + 448, 1u);
  v2 = *(this + 52);
  if (v2)
  {
    MEMORY[0x26672B190](v2, 0x1000C8077774924);
  }

  v3 = *(this + 54);
  if (v3)
  {
    MEMORY[0x26672B190](v3, 0x80C80B8603338);
  }

  v4 = *(this + 55);
  if (v4)
  {
    MEMORY[0x26672B190](v4, 0x80C80B8603338);
  }

  v5 = *(this + 42);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v5 + 144));
  v7 = *(v5 + 4 * TParam::getValidConfig((v5 + 144), ActiveConfigHandle) + 304);
  v8 = *(*(this + 42) + 296);
  if (v7 > v8)
  {
    v9 = 0;
    v10 = v7 - v8;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    do
    {
      v12 = *(this + 46);
      v13 = *(v12 + 8 * v9);
      if (v13)
      {
        std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(*(v12 + 8 * v9), *(v13 + 8));
        MEMORY[0x26672B1B0](v13, 0x1020C4062D53EE8);
      }

      v14 = *(this + 47);
      v15 = *(v14 + 8 * v9);
      if (v15)
      {
        std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(*(v14 + 8 * v9), *(v15 + 8));
        MEMORY[0x26672B1B0](v15, 0x1020C4062D53EE8);
      }

      v16 = *(this + 7);
      v17 = *(v16 + 8 * v9);
      if (v17)
      {
        TAllocator::clear(*(v16 + 8 * v9));
        MEMORY[0x26672B1B0](v17, 0x1010C40CCBCF24ELL);
      }

      v18 = *(this + 8);
      v19 = *(v18 + 8 * v9);
      if (v19)
      {
        TAllocator::clear(*(v18 + 8 * v9));
        MEMORY[0x26672B1B0](v19, 0x1010C40CCBCF24ELL);
      }

      ++v9;
    }

    while (v11 != v9);
    v20 = *(this + 46);
    if (v20)
    {
      MEMORY[0x26672B190](v20, 0x20C8093837F09);
    }

    v21 = *(this + 47);
    if (v21)
    {
      MEMORY[0x26672B190](v21, 0x20C8093837F09);
    }

    v22 = *(this + 7);
    if (v22)
    {
      MEMORY[0x26672B190](v22, 0x20C8093837F09);
    }

    v23 = *(this + 8);
    if (v23)
    {
      MEMORY[0x26672B190](v23, 0x20C8093837F09);
    }
  }

  v24 = *(this + 27);
  if (v24 >= 1)
  {
    v25 = *(this + 26);
    v26 = &v25[v24];
    v27 = *v25;
    if (*v25)
    {
      do
      {
LABEL_34:
        v30 = v27[2];
        if (!*v30 || (MEMORY[0x26672B190](*v30, 0x1000C8052888210), v27[2]))
        {
          MEMORY[0x26672B1B0]();
        }

        v27 = *v27;
      }

      while (v27);
      v31 = v25 + 1;
      while (v31 < v26)
      {
        v32 = *v31++;
        v27 = v32;
        if (v32)
        {
          v25 = v31 - 1;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v28 = v25 + 1;
      while (v28 < v26)
      {
        v29 = *v28++;
        v27 = v29;
        if (v29)
        {
          v25 = v28 - 1;
          goto LABEL_34;
        }
      }
    }
  }

  v33 = *(this + 19);
  if (v33 >= 1)
  {
    v34 = *(this + 18);
    v35 = &v34[v33];
    v36 = *v34;
    if (*v34)
    {
      do
      {
LABEL_48:
        v39 = v36[1];
        if (v39)
        {
          MEMORY[0x26672B190](v39, 0x1000C8052888210);
        }

        v40 = v36[2];
        if (v40)
        {
          MEMORY[0x26672B1B0](v40, 0x1000C4057661CB1);
        }

        v36 = *v36;
      }

      while (v36);
      v37 = v34 + 1;
      while (v37 < v35)
      {
        v41 = *v37++;
        v36 = v41;
        if (v41)
        {
          goto LABEL_47;
        }
      }
    }

    else
    {
      v37 = v34 + 1;
      while (v37 < v35)
      {
        v38 = *v37++;
        v36 = v38;
        if (v38)
        {
LABEL_47:
          v34 = v37 - 1;
          goto LABEL_48;
        }
      }
    }
  }

  v42 = *(this + 22);
  if (v42 != (this + 184))
  {
    do
    {
      v43 = *(v42 + 7);
      if (v43)
      {
        MEMORY[0x26672B1B0](v43, 0x1000C4057661CB1);
      }

      v44 = *(v42 + 1);
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = *(v42 + 2);
          v46 = *v45 == v42;
          v42 = v45;
        }

        while (!v46);
      }

      v42 = v45;
    }

    while (v45 != (this + 184));
  }

  v48 = *(this + 14);
  v47 = *(this + 15);
  if (v47 != v48)
  {
    v49 = 0;
    v50 = 8;
    do
    {
      v51 = *(v48 + v50);
      if (v51)
      {
        MEMORY[0x26672B190](v51, 0x1000C8052888210);
        v48 = *(this + 14);
        v47 = *(this + 15);
      }

      ++v49;
      v50 += 16;
    }

    while (v49 < (v47 - v48) >> 4);
  }

  v52 = *(this + 42);
  v53 = TParam::getActiveConfigHandle((v52 + 21520));
  if (*(v52 + TParam::getValidConfig((v52 + 21520), v53) + 21672) == 1)
  {
    tknPrintString("-- TLexicon --\n");
    tknPrintf("  Clean calls   : %llu\n", v54, v55, v56, v57, *(this + 65));
    tknPrintString("findWord\n");
    tknPrintf("  Cache lookups : %llu\n", v58, v59, v60, v61, *(this + 57));
    tknPrintf("  Cache hits    : %llu\n", v62, v63, v64, v65, *(this + 60));
    tknPrintString("collationSearch\n");
    tknPrintf("  Cache lookups : %llu\n", v66, v67, v68, v69, *(this + 58));
    tknPrintf("  Cache hits    : %llu\n", v70, v71, v72, v73, *(this + 61));
    tknPrintf("  Iterations    : %llu\n", v74, v75, v76, v77, *(this + 63));
    tknPrintString("computeClones\n");
    tknPrintf("  Cache lookups : %llu\n", v78, v79, v80, v81, *(this + 59));
    tknPrintf("  Cache hits    : %llu\n", v82, v83, v84, v85, *(this + 62));
    tknPrintf("  Iterations    : %llu\n", v86, v87, v88, v89, *(this + 64));
  }

  v90 = *(this + 44);
  if (v90)
  {
    TDataSaver::~TDataSaver(v90);
    MEMORY[0x26672B1B0]();
  }

  v91 = *(this + 42);
  if (v91)
  {
    (*(*v91 + 8))(v91);
  }

  v92 = *(this + 43);
  if (v92)
  {
    (*(*v92 + 8))(v92);
  }

  TCollation::~TCollation((this + 256));
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::~THashBase(this + 25);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 176, *(this + 23));
  THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::~THashBase(this + 17);
  v93 = *(this + 14);
  if (v93)
  {
    *(this + 15) = v93;
    operator delete(v93);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  TAllocator::clear((this + 16));

  TRegisterable<TLexicon>::~TRegisterable(this);
}

{
  TLexicon::~TLexicon(this);

  JUMPOUT(0x26672B1B0);
}