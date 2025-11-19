uint64_t cleanLiteral(unsigned __int8 *a1, int a2, unsigned __int8 a3)
{
  v3 = a1;
  if (a2)
  {
    if (*a1 != a2)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = a1 + 1;
  }

  v4 = 0;
  for (i = v3; ; v3 = i)
  {
    v7 = *i++;
    v6 = v7;
    if (v7 == a3 || v6 == 0)
    {
      break;
    }

    if (v6 == 92)
    {
      i = v3 + 2;
      v9 = v3[1];
      LOBYTE(v6) = v9 - 48;
      if ((v9 - 48) >= 8)
      {
        if (v9 == 98)
        {
          LOBYTE(v6) = 8;
        }

        else if (v9 == 102)
        {
          LOBYTE(v6) = 12;
        }

        else
        {
          if (v9 == 116)
          {
            LOBYTE(v6) = 9;
          }

          else
          {
            LOBYTE(v6) = v3[1];
          }

          if (v9 == 114)
          {
            LOBYTE(v6) = 13;
          }

          if (v9 == 110)
          {
            LOBYTE(v6) = 10;
          }
        }
      }

      else
      {
        v10 = v3 + 4;
        v11 = 2;
        while (1)
        {
          v12 = *i;
          if (v12 > 55 || (v12 - 48) > 9)
          {
            break;
          }

          ++i;
          LOBYTE(v6) = v12 + 8 * v6 - 48;
          if (!--v11)
          {
            i = v10;
            break;
          }
        }
      }
    }

    *a1++ = v6;
    v4 = (v4 + 1);
  }

  *a1 = 0;
  return v4;
}

uint64_t strncpyWithEllipsis(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; a3 != i; ++i)
  {
    if (!*(a2 + i))
    {
      a3 = i;
      break;
    }

    *(result + i) = *(a2 + i);
  }

  *(result + a3) = 0;
  if (*(a2 + a3))
  {
    v4 = a3 - 1;
    v5 = -3;
    do
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        *(result + v4) = 46;
      }

      ++v5;
      --v4;
    }

    while (v5);
  }

  return result;
}

uint64_t changeExtension(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v4 = 0;
  v5 = a3 & ~(a3 >> 31);
  v6 = (a2 + 1);
  while (v5 != v4)
  {
    v7 = *(result + v4);
    if (!*(result + v4) || v7 == 46)
    {
      if (a4 && *a4)
      {
        LODWORD(v4) = v4 + 1;
        *(v6 - 1) = 46;
        if (a3 <= v4)
        {
          LODWORD(v5) = v4;
        }

        else
        {
          LODWORD(v5) = a3;
        }

        while (v4 < a3)
        {
          if (!*a4)
          {
            goto LABEL_14;
          }

          *v6++ = *a4++;
          LODWORD(v4) = v4 + 1;
        }
      }

      else
      {
LABEL_14:
        LODWORD(v5) = v4;
      }

      break;
    }

    *(v6 - 1) = v7;
    ++v4;
    ++v6;
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t changeMatchingExt(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, _BYTE *a5)
{
  result = hasExtension(a1, a2);
  if (result)
  {

    return changeExtension(a1, a3, a4, a5);
  }

  else
  {
    v10 = 0;
    v11 = a4 & ~(a4 >> 31);
    while (1)
    {
      if (v11 == v10)
      {
        v10 = a4 & ~(a4 >> 31);
        goto LABEL_11;
      }

      if (!*(a1 + v10))
      {
        break;
      }

      *(a3 + v10) = *(a1 + v10);
      ++v10;
    }

    LODWORD(v11) = v10;
LABEL_11:
    *(a3 + v10) = 46;
    if (a4 <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = a4;
    }

    while (++v10 < a4)
    {
      if (!*a5)
      {
        v12 = v10;
        break;
      }

      *(a3 + v10) = *a5++;
    }

    *(a3 + v12) = 0;
  }

  return result;
}

BOOL hasExtension(_BOOL8 result, _BYTE *a2)
{
  if (result)
  {
    for (i = (result + 1); ; ++i)
    {
      v3 = *(i - 1);
      if (!*(i - 1) || v3 == 46)
      {
        break;
      }
    }

    if (a2 && *(i - 1))
    {
      if (!*a2)
      {
        return 0;
      }

      do
      {
        v5 = *i++;
        v4 = v5;
        v7 = *a2++;
        v6 = v7;
      }

      while (v4 == v7 && v6 != 0);
      return v4 == v6;
    }

    result = v3 == 0;
    if (a2 && !*(i - 1))
    {
      return *a2 == 0;
    }
  }

  return result;
}

uint64_t stripPath(uint64_t result)
{
  if (result)
  {
    v1 = 0;
LABEL_3:
    for (i = v1; *(result + i); ++i)
    {
      if (*(result + i) == 47)
      {
        v1 = i + 1;
        goto LABEL_3;
      }
    }

    result += v1;
  }

  return result;
}

_BYTE *stripFileName(_BYTE *result, _BYTE *a2)
{
  v2 = a2;
  while (1)
  {
    v3 = *result;
    if (!*result)
    {
      break;
    }

    if (v3 == 47)
    {
      v2 = a2;
    }

    *a2++ = v3;
    ++result;
  }

  *v2 = 0;
  return result;
}

uint64_t bareFilename(uint64_t a1, uint64_t a2, int a3)
{
  v5 = stripPath(a1);

  return changeExtension(v5, a2, a3, 0);
}

const char *fileExists(const char *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      bzero(&v2, 0x90uLL);
      return (stat(v1, &v2) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const char *filenameModTime(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      return 0;
    }

    bzero(&v2, 0x90uLL);
    if (stat(v1, &v2) < 0)
    {
      return 0;
    }

    else
    {
      return v2.st_mtimespec.tv_sec;
    }
  }

  return result;
}

__darwin_time_t fileModTime(__darwin_time_t result)
{
  if (result)
  {
    v1 = result;
    bzero(&v3, 0x90uLL);
    v2 = fileno(v1);
    if (fstat(v2, &v3) < 0)
    {
      return 0;
    }

    else
    {
      return v3.st_mtimespec.tv_sec;
    }
  }

  return result;
}

uint64_t fileFindProgDir(uint64_t __s, char *a2)
{
  if (__s)
  {
    v2 = __s;
    if (!*__s)
    {
      return 0;
    }

    if (strchr(__s, 47))
    {
      stripFileName(v2, a2);
    }

    else
    {
      __s = fileFindInPath();
      if (!__s)
      {
        return __s;
      }

      v4 = strlen(a2);
      a2[v4 - strlen(v2)] = 0;
    }

    return 1;
  }

  return __s;
}

uint64_t fileFindInPath()
{
  v0 = MEMORY[0x28223BE20]();
  v14 = *MEMORY[0x277D85DE8];
  if (!v0)
  {
    goto LABEL_12;
  }

  v2 = v0;
  if (!*v0)
  {
    goto LABEL_12;
  }

  v3 = v1;
  if (fileExists(v0))
  {
    if (v3)
    {
      strcpy(v3, v2);
    }

    v4 = 1;
    goto LABEL_13;
  }

  v5 = getenv("PATH");
  if (!v5)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = strlen(v5);
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  v9 = strcpy(v8, v6);
  if (strtok(v9, ":"))
  {
    while (1)
    {
      __strcpy_chk();
      v10 = &__s[strlen(__s)];
      *v10 = 47;
      strcpy(v10 + 1, v2);
      if (fileExists(__s))
      {
        break;
      }

      if (!strtok(0, ":"))
      {
        goto LABEL_11;
      }
    }

    if (v3)
    {
      strcpy(v3, __s);
    }

    v4 = 1;
  }

  else
  {
LABEL_11:
    v4 = 0;
  }

  free(v8);
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

void *hashNew(int a1, char a2, int a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10A0040E78F1B74uLL);
  v7 = v6;
  if (v6)
  {
    if (a1 < 1)
    {
      a1 = 211;
    }

    else if (a3)
    {
      if ((a1 & 1) == 0 && a1 < 0x7FFFFFFE)
      {
        ++a1;
      }

LABEL_9:
      if (a1 <= 2147483645)
      {
        v9 = 2;
        while (v9 < a1)
        {
          if (!(a1 % v9++))
          {
            a1 += 2;
            goto LABEL_9;
          }
        }
      }
    }

    *v6 = a1;
    *(v6 + 4) = a2;
    v11 = malloc_type_calloc(a1, 8uLL, 0x2004093837F09uLL);
    v7[1] = v11;
    if (!v11)
    {
      free(v7);
      return 0;
    }
  }

  return v7;
}

uint64_t hashDelete(void *a1, int a2, int a3)
{
  if (a1)
  {
    if (a1[1])
    {
      for (i = 0; ; ++i)
      {
        v7 = a1[1];
        if (i >= *a1)
        {
          break;
        }

        v8 = v7[i];
        if (v8)
        {
          do
          {
            v9 = *(v8 + 8);
            if (a2 && *(a1 + 4))
            {
              free(*v8);
            }

            if (a3)
            {
              free(*(v8 + 16));
            }

            free(v8);
            v8 = v9;
          }

          while (v9);
        }
      }

      free(v7);
    }

    free(a1);
  }

  return 0;
}

uint64_t hashInsertInt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_80(a1, a2);
  v10 = v7 - v9 * v8;
  v11 = *(*(v6 + 1) + 8 * v10);
  result = OUTLINED_FUNCTION_1_71();
  if (result)
  {
    *result = a2;
    *(result + 8) = v11;
    *(result + 16) = a3;
    *(*(a1 + 8) + 8 * v10) = result;
    return 1;
  }

  return result;
}

uint64_t hashLookupInt(uint64_t a1, unsigned int a2)
{
  for (i = (*(a1 + 8) + 8 * ((((a2 ^ HIWORD(a2)) >> 10) & 0xF ^ a2 ^ HIWORD(a2)) % *a1)); ; i = (v3 + 2))
  {
    v3 = *i;
    if (!v3)
    {
      return 0;
    }

    if (*v3 == a2)
    {
      break;
    }
  }

  return OUTLINED_FUNCTION_2_67(v3);
}

uint64_t hashDeleteInt(_DWORD *a1, unsigned int a2)
{
  v2 = OUTLINED_FUNCTION_0_80(a1, a2);
  v8 = v5 - v7 * v6;
  v9 = *(v2 + 1);
  v10 = *(v9 + 8 * v8);
  if (*v10 == v3)
  {
    *(v9 + 8 * v8) = *(v10 + 1);
    if (v4)
    {
LABEL_3:
      free(*(v10 + 2));
    }
  }

  else
  {
    do
    {
      v12 = v10;
      v10 = *(v10 + 1);
      if (!v10)
      {
        return 0;
      }
    }

    while (*v10 != v3);
    v12[1] = *(v10 + 1);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  free(v10);
  return 1;
}

uint64_t hashMoveInt(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 0;
  v4 = (((a2 ^ HIWORD(a2)) >> 10) & 0xF ^ a2 ^ HIWORD(a2)) % *a1;
  v5 = (*(a1 + 8) + 8 * v4);
  while (1)
  {
    v6 = *v5;
    if (!*v5)
    {
      return 0;
    }

    if (*v6 == a2)
    {
      break;
    }

    v5 = (v6 + 8);
    v3 = v6;
  }

  v8 = (((a3 ^ HIWORD(a3)) >> 10) & 0xF ^ a3 ^ HIWORD(a3)) % *a1;
  *v6 = a3;
  if (v8 != v4)
  {
    if (v3)
    {
      v9 = (v3 + 8);
    }

    else
    {
      v9 = (*(a1 + 8) + 8 * v4);
    }

    *v9 = *(v6 + 8);
    v10 = *(a1 + 8);
    *(v6 + 8) = *(v10 + 8 * v8);
    *(v10 + 8 * v8) = v6;
  }

  return OUTLINED_FUNCTION_2_67(v6);
}

uint64_t hashInsertString(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = stringHashFunction(a1, a2);
  v7 = *(*(a1 + 8) + 8 * v6);
  result = OUTLINED_FUNCTION_1_71();
  if (result)
  {
    *(result + 8) = v7;
    *(result + 16) = a3;
    *result = a2;
    *(*(a1 + 8) + 8 * v6) = result;
    return 1;
  }

  return result;
}

uint64_t stringHashFunction(int *a1, _BYTE *a2)
{
  v2 = 0;
  while (*a2)
  {
    v2 = (*a2 + 16 * v2) & 0xFFFFFFFF0FFFFFFFLL ^ ((*a2 + 16 * v2) >> 24) & 0xF0;
    ++a2;
  }

  return (v2 % *a1);
}

uint64_t hashLookupString(uint64_t a1, char *a2)
{
  v3 = *(a1 + 8);
  for (i = (v3 + 8 * stringHashFunction(a1, a2)); ; i = (v5 + 8))
  {
    v5 = *i;
    if (!*i)
    {
      return 0;
    }

    if (!strcmp(*v5, a2))
    {
      break;
    }
  }

  return *(v5 + 16);
}

uint64_t hashDeleteString(uint64_t a1, char *a2, int a3, int a4)
{
  v8 = stringHashFunction(a1, a2);
  v9 = *(a1 + 8);
  v10 = *(v9 + 8 * v8);
  if (!strcmp(*v10, a2))
  {
    *(v9 + 8 * v8) = *(v10 + 8);
    if (a3)
    {
LABEL_7:
      free(*v10);
    }
  }

  else
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
      if (!v10)
      {
        return 0;
      }
    }

    while (strcmp(*v10, a2));
    *(v11 + 8) = *(v10 + 8);
    if (a3)
    {
      goto LABEL_7;
    }
  }

  if (a4)
  {
    free(*(v10 + 16));
  }

  free(v10);
  return 1;
}

uint64_t hashMoveString(uint64_t a1, char *a2, _BYTE *a3)
{
  v6 = 0;
  v7 = stringHashFunction(a1, a2);
  v8 = (*(a1 + 8) + 8 * v7);
  while (1)
  {
    v9 = *v8;
    if (!*v8)
    {
      return 0;
    }

    if (!strcmp(*v9, a2))
    {
      break;
    }

    v8 = (v9 + 8);
    v6 = v9;
  }

  v11 = stringHashFunction(a1, a3);
  *v9 = a3;
  if (v11 != v7)
  {
    if (v6)
    {
      v12 = (v6 + 8);
    }

    else
    {
      v12 = (*(a1 + 8) + 8 * v7);
    }

    *v12 = *(v9 + 8);
    v13 = *(a1 + 8);
    *(v9 + 8) = *(v13 + 8 * v11);
    *(v13 + 8 * v11) = v9;
  }

  return *(v9 + 16);
}

BOOL hashIterConstruct(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v2 = **(a2 + 8);
  *(a1 + 16) = v2;
  return v2 || hashIterNext(a1);
}

BOOL hashIterNext(uint64_t a1)
{
  i = *(a1 + 16);
  if (!i)
  {
    goto LABEL_4;
  }

  for (i = *(i + 8); ; i = *(*(*a1 + 8) + 8 * v2))
  {
    *(a1 + 16) = i;
LABEL_4:
    if (i)
    {
      break;
    }

    v2 = *(a1 + 8) + 1;
    *(a1 + 8) = v2;
    if (v2 >= **a1)
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      return i != 0;
    }
  }

  return i != 0;
}

void *OUTLINED_FUNCTION_1_71()
{

  return malloc_type_malloc(0x18uLL, 0x10F2040DD287011uLL);
}

uint64_t ECollection::size(ECollection *this)
{
  ECollectIter::ECollectIter(&v3, this);
  v1 = 0;
  while ((**v4)(v4))
  {
    (*(*v4 + 40))(v4, 0);
    v1 = (v1 + 1);
  }

  ECollectIter::~ECollectIter(&v3);
  return v1;
}

uint64_t ECollectIter::operator++(uint64_t a1)
{
  return (*(**(a1 + 8) + 40))();
}

{
  return (*(**(a1 + 8) + 32))();
}

uint64_t EList::reset(EList *this)
{
  while (1)
  {
    result = (**this)(this);
    if (result)
    {
      break;
    }

    (*(*this + 64))(this);
  }

  return result;
}

void ESList::ESList(ESList *this, const ESList *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_287EE2F68;
  OUTLINED_FUNCTION_4_58();
  v4 = (v3 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_12_48(v4);
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_57(v5);
    (*(v6 + 48))(this);
    OUTLINED_FUNCTION_11_49();
  }
}

uint64_t ESListIter::operator++(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = *(v1 + 16);
  return v1;
}

{
  v1 = *(*(a1 + 16) + 16);
  *(a1 + 16) = v1;
  return v1;
}

EList *ESList::operator=(EList *a1, uint64_t a2)
{
  EList::reset(a1);
  OUTLINED_FUNCTION_4_58();
  v4 = (a2 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_12_48(v4);
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_57(v5);
    (*(v6 + 48))(a1);
    OUTLINED_FUNCTION_11_49();
  }

  return a1;
}

uint64_t ESList::addToTail(ESList *this, ESList *a2)
{
  if ((**this)(this))
  {
    v4 = (this + 8);
  }

  else
  {
    v4 = (*(this + 2) + 16);
  }

  *v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5)
  {
    *(this + 2) = v5;
  }

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  return 1;
}

uint64_t ESList::addAfter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_53(a1, a2);
  if (v3 != v2[2])
  {
    OUTLINED_FUNCTION_5_58();
  }

  v4 = *(*v2 + 48);

  return v4();
}

void ESList::removeHead(ESList *this)
{
  v2 = *(this + 1);
  if (v2 == *(this + 2))
  {
    v3 = 0;
    *(this + 2) = 0;
  }

  else
  {
    v3 = *(v2 + 16);
  }

  *(this + 1) = v3;
  OUTLINED_FUNCTION_1_72();
}

void ESList::removeAfter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 + 16);
  *(v3 + 16) = *(v4 + 16);
  if (v4 == *(a1 + 16))
  {
    *(a1 + 16) = v3;
  }

  OUTLINED_FUNCTION_1_72();
}

void EDList::EDList(EDList *this, const EDList *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_287EE2FD8;
  OUTLINED_FUNCTION_3_62();
  v4 = (v3 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_12_48(v4);
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_57(v5);
    (*(v6 + 48))(this);
    OUTLINED_FUNCTION_11_49();
  }
}

uint64_t EDListIter::operator++(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = *(v1 + 16);
  return v1;
}

{
  v1 = *(*(a1 + 16) + 16);
  *(a1 + 16) = v1;
  return v1;
}

EList *EDList::operator=(EList *a1, uint64_t a2)
{
  EList::reset(a1);
  OUTLINED_FUNCTION_3_62();
  v4 = (a2 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_12_48(v4);
    if (!v5)
    {
      break;
    }

    OUTLINED_FUNCTION_6_57(v5);
    (*(v6 + 48))(a1);
    OUTLINED_FUNCTION_11_49();
  }

  return a1;
}

uint64_t EDList::addAfter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_53(a1, a2);
  if (v3 != v2[2])
  {
    OUTLINED_FUNCTION_2_68();
  }

  v4 = *(*v2 + 48);

  return v4();
}

uint64_t EDList::addBefore(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_53(a1, a2);
  if (v3 != v2[1])
  {
    OUTLINED_FUNCTION_2_68();
  }

  v4 = *(*v2 + 40);

  return v4();
}

void EDList::removeHead(EDList *this)
{
  v1 = (this + 16);
  v2 = *(this + 1);
  if (v2 == *(this + 2))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 16);
    v1 = (v3 + 24);
  }

  *v1 = 0;
  *(this + 1) = v3;
  OUTLINED_FUNCTION_0_81();
}

void EDList::removeTail(EDList *this)
{
  v1 = *(this + 2);
  v2 = (this + 8);
  if (*(this + 1) == v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 24);
    v2 = (v3 + 16);
  }

  *v2 = 0;
  *(this + 2) = v3;
  OUTLINED_FUNCTION_0_81();
}

uint64_t EDList::removeAt(EDList *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a1 + 1))
  {
    if (v2 != *(a1 + 2))
    {
      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      *(v4 + 24) = v3;
      *(v3 + 16) = v4;
      OUTLINED_FUNCTION_0_81();
    }

    EDList::removeTail(a1);
  }

  return (*(*a1 + 64))();
}

void EDList::removeAfter(EDList *this, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 + 16);
  if (v4 != *(this + 2))
  {
    v5 = *(v4 + 16);
    *(v5 + 24) = v3;
    *(v3 + 16) = v5;
    OUTLINED_FUNCTION_1_72();
  }

  EDList::removeTail(this);
}

void EDList::~EDList(EDList *this)
{
  EDList::~EDList(this);

  JUMPOUT(0x27437DD90);
}

{
  *this = &unk_287EE2FD8;
  EList::reset(this);
}

void *ECollectIter::ECollectIter(void *a1, uint64_t a2)
{
  *a1 = &unk_287EE31C0;
  a1[1] = (*(*a2 + 8))(a2);
  return a1;
}

void ECollectIter::~ECollectIter(ECollectIter *this)
{
  ECollectIter::~ECollectIter(this);

  JUMPOUT(0x27437DD90);
}

{
  *this = &unk_287EE31C0;
  MEMORY[0x27437DD90](*(this + 1), 0x81C40B8603338);
}

void OUTLINED_FUNCTION_2_68()
{

  operator new();
}

void OUTLINED_FUNCTION_5_58()
{

  operator new();
}

void OUTLINED_FUNCTION_6_57(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
}

void OUTLINED_FUNCTION_10_52()
{

  operator new();
}

uint64_t IndexQueue::addOffsetFromLast(IndexQueue *this, int a2, uint64_t a3)
{
  LODWORD(v6[0]) = a2;
  v6[1] = a3;
  result = EListQueue::add(this, v6);
  if (result)
  {
    *(this + 3) += a3;
    return 1;
  }

  return result;
}

uint64_t IndexQueue::reduceLeadTime(IndexQueue *this, unint64_t a2)
{
  LeadTime = a2;
  if (IndexQueue::getLeadTime(this) < a2)
  {
    LeadTime = IndexQueue::getLeadTime(this);
  }

  v4 = (*(*this + 24))(this);
  *(v4 + 8) -= LeadTime;
  return OUTLINED_FUNCTION_0_82();
}

uint64_t IndexQueue::reduceLeadTime(IndexQueue *this)
{
  v2 = *((*(*this + 24))(this) + 8);
  *((*(*this + 24))(this) + 8) = 0;
  return OUTLINED_FUNCTION_0_82();
}

uint64_t IndexQueue::increaseLeadTime(IndexQueue *this, uint64_t a2)
{
  result = (**this)(this);
  if (!result)
  {
    *(this + 3) += a2;
    result = (*(*this + 24))(this);
    *(result + 8) += a2;
  }

  return result;
}

void IndexQueue::remove(IndexQueue *this)
{
  v2 = *(*(*this + 24))(this);
  *(this + 3) -= *((*(*this + 24))(this) + 8);
  ESList::removeHead(this);
}

void IniFileWriter::IniFileWriter(IniFileWriter *this, const char *a2)
{
  *this = 0;
  *(this + 514) = 0;
  *(this + 516) = 0;
  *(this + 515) = 0;
  if (a2)
  {
    v3 = this + 8;
    v4 = strcpy(this + 8, a2);
    *&v3[strlen(v4)] = 47;
    *&v3[strlen(this + 8)] = 0x696E692E696365;
  }
}

void IniFileWriter::~IniFileWriter(IniFileWriter *this)
{
  v2 = *(this + 514);
  if (v2)
  {
    MEMORY[0x27437DD80](v2, 0x1000C8077774924);
    *(this + 514) = 0;
  }
}

void IniFileWriter::readFileIntoMemory(IniFileWriter *this, const char *a2)
{
  OUTLINED_FUNCTION_5_59();
  *(v4 + 4120) = xmmword_26E7817A0;
  v5 = *(v4 + 4112);
  if (v5)
  {
    MEMORY[0x27437DD80](v5, v2);
    *(this + 514) = 0;
    v6 = *(this + 516);
  }

  operator new[]();
}

uint64_t IniFileWriter::stringSearch(IniFileWriter *this, const char *__s, uint64_t a3, uint64_t a4)
{
  v8 = strlen(__s);
  v9 = __s + 1;
  while (1)
  {
    v10 = a3;
    if (a3 >= a4)
    {
      break;
    }

    v11 = *(this + 514);
    v12 = *(v11 + a3);
    if (v12 == *__s)
    {
      v13 = 0;
      v14 = v11 + a3 + 1;
      v15 = a3;
      do
      {
        ++v15;
        v16 = v13 + 1;
        v17 = v13 + 1 + a3;
        v18 = *(v14 + v13);
        v19 = v9[v13];
        v21 = v17 < a4 && v18 == v19 && v16 < v8;
        v13 = v16;
      }

      while (v21);
      a3 += v16;
      if (v8 == v16)
      {
        if (v18 <= 0x3D && ((1 << v18) & 0x2000000000000401) != 0)
        {
          v10 += v16;
          return v10 - v8;
        }

        if (v12 == 91 && !*v9)
        {
          v10 = v15;
          return v10 - v8;
        }
      }
    }

    else
    {
      v23 = v11 + 1;
      if (v12)
      {
        while (v12 != 10)
        {
          if (v10 >= a4)
          {
            v10 = a4;
            break;
          }

          v12 = *(v23 + v10++);
          if (!v12)
          {
            break;
          }
        }
      }

      if (v10 >= a4)
      {
        a3 = v10;
      }

      else
      {
        a3 = v10 + 1;
      }
    }
  }

  v8 = 0;
  return v10 - v8;
}

void IniFileWriter::writeToMemory(IniFileWriter *this, char *a2, char *a3, char *a4)
{
  v5 = a3;
  if (!a2)
  {
    if (a3)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  for (i = a2; ; ++i)
  {
    v8 = *i;
    v9 = IniFileWriter::ensureBufferSpace(this);
    if (!v8)
    {
      break;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_4_59(*i);
    }

    OUTLINED_FUNCTION_0_83();
    if (!v10)
    {
      return;
    }
  }

  if (v9)
  {
    OUTLINED_FUNCTION_1_73();
    *(v11 + v12) = 10;
    if (v5)
    {
LABEL_13:
      while (1)
      {
        v13 = *v5;
        v14 = IniFileWriter::ensureBufferSpace(this);
        if (!v13)
        {
          break;
        }

        if (v14)
        {
          OUTLINED_FUNCTION_4_59(*v5);
        }

        OUTLINED_FUNCTION_0_83();
        ++v5;
        if (!v15)
        {
          return;
        }
      }

      if (v14)
      {
        OUTLINED_FUNCTION_1_73();
        *(v16 + v17) = 61;
        if (a4)
        {
LABEL_20:
          while (1)
          {
            v18 = *a4;
            v19 = IniFileWriter::ensureBufferSpace(this);
            if (!v18)
            {
              break;
            }

            if (v19)
            {
              OUTLINED_FUNCTION_4_59(*a4);
            }

            OUTLINED_FUNCTION_0_83();
            ++a4;
            if (!v20)
            {
              return;
            }
          }

          if (v19)
          {
            OUTLINED_FUNCTION_1_73();
            *(v21 + v22) = 10;
          }
        }
      }

      return;
    }

LABEL_9:
    if (a4)
    {
      goto LABEL_20;
    }
  }
}

uint64_t IniFileWriter::ensureBufferSpace(IniFileWriter *this)
{
  if (*(this + 516) <= *(this + 515))
  {
    IniFileWriter::doubleBuffer(this);
  }

  return 1;
}

uint64_t IniFileWriter::goEndSection(IniFileWriter *this)
{
  v1 = *(this + 514);
  for (i = *(this + 515); ; *(this + 515) = i)
  {
    v3 = *(v1 + i);
    if (v3 == 10)
    {
      break;
    }

    if (!*(v1 + i))
    {
      return v3;
    }

LABEL_9:
    ++i;
  }

  v4 = *(v1 + i + 1);
  if (v4 != 10 && v4 != 0)
  {
    goto LABEL_9;
  }

  *(this + 515) = i + 1;
  return 1;
}

uint64_t IniFileWriter::goEndKey(IniFileWriter *this)
{
  v1 = *(this + 514);
  for (i = *(this + 515); ; *(this + 515) = i)
  {
    v3 = *(v1 + i);
    if (!*(v1 + i))
    {
      break;
    }

    if (v3 == 61)
    {
      *(this + 515) = i + 1;
      return 1;
    }

    ++i;
  }

  return v3;
}

uint64_t IniFileWriter::goEndData(IniFileWriter *this, uint64_t *a2)
{
  v2 = *(this + 514);
  for (i = *a2; ; *a2 = i)
  {
    result = *(v2 + i);
    if (!*(v2 + i))
    {
      break;
    }

    if (result == 10)
    {
      *a2 = i + 1;
      return 1;
    }

    ++i;
  }

  return result;
}

uint64_t IniFileWriter::writeFileFromMemory(IniFileWriter *this)
{
  *(this + 515) = 0;
  v2 = fopen(this + 8, "w");
  *this = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 515);
  while (1)
  {
    v4 = *(this + 514);
    if (!*(v4 + v3))
    {
      v5 = 1;
      goto LABEL_9;
    }

    if (fputc(*(v4 + v3), *this) == -1)
    {
      break;
    }

    OUTLINED_FUNCTION_0_83();
  }

  v5 = 0;
LABEL_9:
  fclose(*this);
  return v5;
}

void RequestLicense::RequestLicense(RequestLicense *this)
{
  *this = &unk_287EE3230;
  OUTLINED_FUNCTION_0_84(this);
}

{
  *this = &unk_287EE3230;
  OUTLINED_FUNCTION_0_84(this);
}

BOOL RequestLicense::queryInterface(RequestLicense *this, uint64_t a2, void **a3)
{
  *a3 = 0;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return 0;
  }

  *a3 = this;
  (*(*this + 8))(this);
  return *a3 != 0;
}

void init_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x260uLL, 0x10F004008EEF3F9uLL);
  *(a1 + 184) = v2;
  bzero(v2, 0x260uLL);
  v3 = malloc_type_malloc(0x30uLL, 0x10040436913F5uLL);
  **(a1 + 184) = v3;
  *v3 = "STATEMENT";
  OUTLINED_FUNCTION_1_74();
  *(v4 + 8) = "TEST";
  OUTLINED_FUNCTION_1_74();
  *(v5 + 16) = "NULL";
  OUTLINED_FUNCTION_1_74();
  *(v6 + 24) = "LOOP";
  OUTLINED_FUNCTION_1_74();
  *(v7 + 32) = "COMMAND";
  *(**(a1 + 184) + 40) = &unk_26E7817D8;
  v8 = *(a1 + 184);
  *(v8 + 8) = 3;
  *(v8 + 28) = 2;
  *(v8 + 444) = 5;
  *(v8 + 496) = 1;
  *(v8 + 528) = &unk_26E7817D8;
}

void init_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 184);
    if (*v2)
    {
      free(*v2);
      v2 = *(a1 + 184);
      *v2 = 0;
    }

    bzero(v2, 0x260uLL);
    free(*(a1 + 184));
    *(a1 + 184) = 0;
  }
}

uint64_t vcmdinit(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  *(v2 + 472) = 14000;
  *(v3 + 8864) = 1;
  *(v3 + 9084) = *(a1 + 288) + 6;
  result = logicalIOInit(a1, *(v2 + 448) + *(a1 + 304), errorIgnore);
  if (result)
  {
    v5 = builtInLogicalFiles(a1);
    while (v5 < *(a1 + 304))
    {
      v6 = vfdef_lf(a1, *(*(a1 + 296) + 8 * v5++));
      if (v6 == -1)
      {
        return 0;
      }
    }

    result = logicalFileAddPhysical(a1, **(a1 + 216), "null", (*(a1 + 216) + 240), 0, 0);
    if (result)
    {
      v7 = *(*(a1 + 216) + 5);
      v8 = OUTLINED_FUNCTION_0_85();
      result = logicalFileAddPhysical(v8, v9, v10, v11, v12, 1);
      if (result)
      {
        v13 = *(*(a1 + 216) + 1);
        v14 = OUTLINED_FUNCTION_0_85();
        result = logicalFileAddPhysical(v14, v15, v16, v17, v18, 0);
        if (result)
        {
          v19 = *(*(a1 + 216) + 4);
          v20 = OUTLINED_FUNCTION_0_85();
          result = logicalFileAddPhysical(v20, v21, v22, v23, v24, 1);
          if (result)
          {
            v25 = *(*(a1 + 216) + 2);
            v26 = OUTLINED_FUNCTION_0_85();
            result = logicalFileAddPhysical(v26, v27, v28, v29, v30, 1);
            if (result)
            {
              result = logicalFileOpen(a1, "pgmin", 0);
              if (result)
              {
                result = logicalFileOpen(a1, "pgmout", 1);
                if (result)
                {
                  result = logicalFileOpen(a1, "cmdin", 0);
                  if (result)
                  {
                    result = logicalFileOpen(a1, "cmdout", 1);
                    if (result)
                    {
                      result = logicalFileOpen(a1, "prompt", 1);
                      if (result)
                      {
                        result = vmeminit(a1);
                        if (result)
                        {
                          result = vdelinit(a1);
                          if (result)
                          {
                            result = vdltinit(a1, 1);
                            if (result)
                            {
                              result = vdictinit(a1);
                              if (result)
                              {
                                vlinkinit(a1);
                                return 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t vlinkinit(uint64_t result)
{
  v1 = 0;
  for (i = 9224; ; i += 120)
  {
    v3 = *(result + 192);
    if (v1 >= *(v3 + 9114))
    {
      break;
    }

    v4 = *(v3 + i - 48);
    if (v4)
    {
      **v4 = v3 + i - 56;
      **(v4 + 8) = *(v3 + i);
      **(v4 + 24) = *(v4 + 16);
    }

    ++v1;
  }

  v5 = *(v3 + 9112) & ~(*(v3 + 9112) >> 31);
  v6 = (v3 + 9136);
  if ((*(v3 + 9112) & ~(*(v3 + 9112) >> 31)) != 0)
  {
    do
    {
      v7 = *(v6 - 2);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = *(v8 + 16) + 80 * *(v6 - 4);
          *v6 = v9;
          *(v9 + 40) = v7;
        }
      }

      --v5;
      v6 += 3;
    }

    while (v5);
  }

  return result;
}

double logio_new(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x178uLL, 0x10D0040C1D992DBuLL);
    *(a1 + 216) = v2;
    bzero(v2, 0x178uLL);
    v3 = *(a1 + 216);
    *(v3 + 4) = -1;
    *v3 = -1;
    v4 = *&off_28203D760;
    *(v3 + 80) = xmmword_28203D750;
    *(v3 + 96) = v4;
    v5 = unk_28203D740;
    *(v3 + 48) = diskFileClass_glob;
    *(v3 + 64) = v5;
    v6 = *(a1 + 216);
    v7 = unk_28203D780;
    v6[7] = dynaBufFileClass_glob;
    v6[8] = v7;
    v8 = *&off_28203D7A0;
    v6[9] = xmmword_28203D790;
    v6[10] = v8;
    v9 = *(a1 + 216);
    v10 = *&off_28203D7E0;
    v9[13] = xmmword_28203D7D0;
    v9[14] = v10;
    v11 = unk_28203D7C0;
    v9[11] = stdTermFileClass_glob;
    v9[12] = v11;
    v12 = *(a1 + 216);
    v13 = *&off_28203D820;
    v12[17] = xmmword_28203D810;
    v12[18] = v13;
    v14 = unk_28203D800;
    v12[15] = nullFileClass_glob;
    v12[16] = v14;
    v15 = *(a1 + 216);
    v16 = unk_28203D840;
    v15[19] = stdErrorFileClass_glob;
    v15[20] = v16;
    result = *&xmmword_28203D850;
    v18 = *&off_28203D860;
    v15[21] = xmmword_28203D850;
    v15[22] = v18;
  }

  return result;
}

void logio_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 216);
    if (v2)
    {
      bzero(v2, 0x178uLL);
      free(*(a1 + 216));
      *(a1 + 216) = 0;
    }
  }
}

uint64_t logicalIOInit(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 216);
  *(v4 + 32) = a3;
  *(v4 + 16) = a2;
  result = malloc_type_calloc(0x40uLL, a2, 0x1020040D7C1602FuLL);
  *(*(a1 + 216) + 8) = result;
  if (result)
  {
    v6 = addLogicalFile(a1, "pgmin");
    **(a1 + 216) = v6;
    if (v6 == -1)
    {
      return 0;
    }

    v7 = addLogicalFile(a1, "pgmout");
    *(*(a1 + 216) + 5) = v7;
    if (v7 == -1)
    {
      return 0;
    }

    v8 = addLogicalFile(a1, "cmdin");
    *(*(a1 + 216) + 1) = v8;
    if (v8 == -1)
    {
      return 0;
    }

    v9 = addLogicalFile(a1, "cmdout");
    *(*(a1 + 216) + 4) = v9;
    if (v9 == -1)
    {
      return 0;
    }

    v10 = addLogicalFile(a1, "prompt");
    *(*(a1 + 216) + 2) = v10;
    if (v10 == -1)
    {
      return 0;
    }

    v11 = addLogicalFile(a1, "prmout");
    v12 = *(a1 + 216);
    *(v12 + 3) = v11;
    if (v11 == -1)
    {
      return 0;
    }

    else
    {
      *(v12 + 20) = v11 + 1;
      return 1;
    }
  }

  return result;
}

uint64_t addLogicalFile(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return -1;
  }

  v4 = vffind_lf(a1, a2);
  v5 = *(a1 + 216);
  if (v4 != -1)
  {
    (*(v5 + 32))(a1, "LFILE", "%s is already defined");
    return -1;
  }

  v6 = 0;
  v7 = *(v5 + 8);
  do
  {
    v8 = v6;
  }

  while (*(v7 + (v6++ << 6)));
  if (*(v5 + 16) <= v8)
  {
    (*(v5 + 32))(a1, "LOGIO", "There are too many interactive lfiles; use a bigger -lfiles argument on the DeltaTools command line");
    return -1;
  }

  v10 = v7 + (v8 << 6);
  strncpy(v10, a2, 0x14uLL);
  *(v10 + 28) = 0;
  *(v10 + 20) = 0;
  *(v10 + 44) = 0;
  *(v10 + 36) = 0;
  v11 = *(v10 + 48);
  if (!v11)
  {
    v13 = dynaBufNew(0);
    *(v10 + 48) = v13;
    if (v13)
    {
      return v8;
    }

    goto LABEL_14;
  }

  dynaBufReset(v11);
  if (!*(v10 + 48))
  {
LABEL_14:
    *v10 = 0;
    return -1;
  }

  return v8;
}

void logicalIOCleanup(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (*(v1 + 8))
  {
    for (i = 0; *(v1 + 16) > i; ++i)
    {
      if (*(*(v1 + 8) + (i << 6)))
      {
        vfundef_lf(a1, i);
        v1 = *(a1 + 216);
      }
    }

    *(v1 + 16) = 0;
    free(*(v1 + 8));
    *(*(a1 + 216) + 8) = 0;
  }
}

void vfundef_lf(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_3_64(a1);
  v4 = a2;
  v6 = *(v5 + (a2 << 6) + 40);
  if (v6)
  {
    do
    {
      v7 = v6[2];
      removeOutputElement(v2, v6, a2);
      v6 = v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_0_86();
  *(v8 + 32) = 0;
  v9 = *(v8 + 24);
  if (v9)
  {
    do
    {
      v10 = *(v9 + 72);
      (*(v9 + 64))(v9 + 8);
      free(*v9);
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_1_75();
  *(v11 + (v4 << 6)) = 0;
  OUTLINED_FUNCTION_0_86();
  dynaBufDelete(*(v12 + 48));
  OUTLINED_FUNCTION_0_86();
  *(v14 + 48) = v13;
}

uint64_t vffind_lf(uint64_t a1, char *__s2)
{
  if (__s2 && *__s2)
  {
    v3 = 0;
    v4 = *(a1 + 216);
    v5 = *(v4 + 16);
    while (v5 > v3)
    {
      if (!strcmp((*(v4 + 8) + (v3 << 6)), __s2))
      {
        return v3;
      }

      ++v3;
    }
  }

  return -1;
}

uint64_t logicalFileName(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 216);
  if (*(v2 + 16) < a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8) + (a2 << 6);
  }
}

BOOL vf_eof(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 216) + 8) + (a2 << 6);
  if (*(v2 + 20) != 1)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  return !v3 || (*(v3 + 56))(v3 + 8) != 0;
}

uint64_t vfstat(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 216);
  if (*(v2 + 16) < a2)
  {
    return 0;
  }

  v3 = *(v2 + 8) + (a2 << 6);
  if (!*v3)
  {
    return 0;
  }

  *(v3 + 20);
  v5 = OUTLINED_FUNCTION_4_60();
  result = vf_printf(v5, v6, 1, v7, v8, v9, v10, v11, v3);
  if (result)
  {
    v12 = (v3 + 24);
    if (*(v3 + 24))
    {
      v13 = OUTLINED_FUNCTION_4_60();
      result = vf_puts(v13, v14, v15, 1);
      if (!result)
      {
        return result;
      }

      v16 = (v3 + 24);
      while (1)
      {
        v17 = *v16;
        if (!v17)
        {
          break;
        }

        v18 = *v17;
        v16 = (v17 + 9);
        v19 = OUTLINED_FUNCTION_4_60();
        v25 = vf_printf(v19, v20, 1, "      %.70s\n", v21, v22, v23, v24, v18);
        result = 0;
        if (!v25)
        {
          return result;
        }
      }
    }

    v27 = *(v3 + 40);
    v26 = (v3 + 40);
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_4_60();
      result = vf_puts(v28, v29, v30, 0);
      if (!result)
      {
        return result;
      }

      v31 = v26;
      while (1)
      {
        v32 = *v31;
        if (!*v31)
        {
          break;
        }

        v47 = **(v32 + 8);
        v33 = OUTLINED_FUNCTION_4_60();
        result = vf_printf(v33, v34, 0, "      %.70s", v35, v36, v37, v38, v47);
        if (result)
        {
          if (*v32 != 1 || (v39 = OUTLINED_FUNCTION_4_60(), result = vf_puts(v39, v40, " (+)", 1), result))
          {
            v41 = OUTLINED_FUNCTION_4_60();
            v43 = vf_puts(v41, v42, "\n", 1);
            result = 0;
            v31 = (v32 + 16);
            if (v43)
            {
              continue;
            }
          }
        }

        return result;
      }
    }

    if (*v12)
    {
      return 1;
    }

    if (*v26)
    {
      return 1;
    }

    v44 = OUTLINED_FUNCTION_4_60();
    result = vf_puts(v44, v45, v46, 1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t vf_printf(uint64_t a1, int a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = *(a1 + 216);
  v13 = a2;
  v14 = *(v12 + 8) + (a2 << 6);
  if (!*(v14 + 20) && !*(v14 + 56))
  {
    (*(v12 + 32))(a1, "LFILE", "Logical file %s is not open for output", v14);
    v21 = 0;
    *(*(*(a1 + 216) + 8) + (v13 << 6) + 56) = 1;
    return v21;
  }

  if (!a4)
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_70();
  v16 = malloc_type_malloc(0x200uLL, v15);
  if (v16)
  {
    v17 = v16;
    __vsprintf_chk(v16, 0, 0x200uLL, a4, &a9);
    for (i = (*(*(a1 + 216) + 8) + (v13 << 6) + 40); ; i = (v19 + 16))
    {
      v19 = *i;
      if (!*i)
      {
        break;
      }

      v20 = *(v19 + 8);
      if (v20)
      {
        if (!(*(v20 + 56))(v20 + 16, v17, a3))
        {
          break;
        }
      }
    }

    v21 = v19 == 0;
    free(v17);
    return v21;
  }

  v22 = *(*(a1 + 216) + 32);

  return v22(a1, "Logical I/O", "Out of memory (LOGIO:1)");
}

uint64_t vf_puts(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 216);
  v7 = a2;
  v8 = *(v6 + 8) + (a2 << 6);
  if (*(v8 + 20) || *(v8 + 56))
  {
    for (i = (v8 + 40); ; i = (v10 + 16))
    {
      v10 = *i;
      if (!*i)
      {
        break;
      }

      v11 = *(v10 + 8);
      if (v11)
      {
        result = (*(v11 + 56))(v11 + 16, a3, a4);
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  else
  {
    v14 = *(v6 + 8) + (a2 << 6);
    (*(v6 + 32))(a1);
    result = 0;
    *(*(*(a1 + 216) + 8) + (v7 << 6) + 56) = 1;
  }

  return result;
}

uint64_t vfstatall(uint64_t a1, int a2)
{
  result = vf_puts(a1, a2, "logical files:\n", 1);
  if (result)
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 216);
      if (*(v5 + 16) <= v4)
      {
        break;
      }

      if (*(v5 + 40))
      {
        break;
      }

      result = vfstat(a1, v4++);
    }

    while (result);
  }

  return result;
}

uint64_t logicalFileOpen(uint64_t a1, char *a2, int a3)
{
  v6 = vffind_lf(a1, a2);
  if (v6 == -1)
  {
    v6 = addLogicalFile(a1, a2);
    if (v6 == -1)
    {
      return 0;
    }
  }

  v7 = v6;
  v8 = *(a1 + 216);
  v9 = *(v8 + 8) + (v6 << 6);
  *(v9 + 56) = 0;
  v10 = *(v9 + 20);
  if (v10)
  {
    if (!a3 && v10 == 2)
    {
      v11 = *(v8 + 32);
      if ((v6 & 0x80000000) == 0)
      {
        *(v8 + 16);
      }

      v22 = "The file %s is currently opened for OUTPUT";
      return v11(a1, "LFILE OPEN", v22);
    }

    if (a3 == 1 && v10 == 1)
    {
      v11 = *(v8 + 32);
      if ((v6 & 0x80000000) == 0)
      {
        *(v8 + 16);
      }

      v22 = "The file %s is currently opened for INPUT";
      return v11(a1, "LFILE OPEN", v22);
    }

    return 1;
  }

  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
LABEL_23:
      v16 = 0;
LABEL_24:
      v17 = (v9 + 40);
      while (1)
      {
        v18 = *v17;
        if (!*v17)
        {
          break;
        }

        if (a3 == 2)
        {
          v19 = 1;
        }

        else
        {
          v19 = *v18;
        }

        v20 = openOutputFile(a1, *(v18 + 8), v19);
        v17 = (v18 + 16);
        if (!v20)
        {
          return 0;
        }
      }

      if (!v16)
      {
        *(v9 + 20) = 2;
        return 1;
      }

      v21 = 1;
      *(v9 + 20) = 1;
      dynaBufReset(*(v9 + 48));
      return v21;
    }

    v15 = *(v9 + 24);
    if (!v15)
    {
      v24 = fileExists(v9);
      v25 = *(a1 + 216);
      if (!v24)
      {
        v12 = *(v25 + 32);
        v13 = "Opening file %s with no input file attached";
        return v12(a1, "LFILE OPEN", v13);
      }

      if (!assignInputFile(a1, v9, v7, (v25 + 48), 0))
      {
        return 0;
      }

      v15 = *(v9 + 24);
    }

    if (openInputFile(a1, v15, v7))
    {
      v16 = 1;
      goto LABEL_24;
    }

    return 0;
  }

  if (*(v9 + 40) || assignOutputFile(a1, v9, v6, (v8 + 48), 0, a3 != 1))
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_5_60();
  v13 = "Can't open logical file %s with physical file %s";
  return v12(a1, "LFILE OPEN", v13);
}

uint64_t assignOutputFile(uint64_t a1, char *a2, int a3, _OWORD *a4, uint64_t a5, int a6)
{
  result = findOutputFile(a1, a2);
  if (result)
  {
    v13 = result;
    if (findOutputElement(a1, a3, result))
    {
      return 1;
    }

    v20 = *(a1 + 216);
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    if (!a4)
    {
      return result;
    }

    result = malloc_type_malloc(0x58uLL, 0x10F004011FC8696uLL);
    if (!result)
    {
      return result;
    }

    v13 = result;
    strlen(a2);
    OUTLINED_FUNCTION_2_70();
    v16 = malloc_type_malloc(v14 + 1, v15);
    *v13 = v16;
    if (!v16)
    {
      free(v13);
      return 0;
    }

    strcpy(v16, a2);
    v13[1] = 0;
    v17 = a4[2];
    v18 = a4[3];
    v19 = a4[1];
    *(v13 + 1) = *a4;
    *(v13 + 2) = v19;
    *(v13 + 3) = v17;
    *(v13 + 4) = v18;
    v13[3] = *v13;
    v13[4] = a5;
    v20 = *(a1 + 216);
    v13[10] = *(v20 + 24);
    *(v20 + 24) = v13;
  }

  v21 = *(v20 + 8);
  result = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  if (result)
  {
    *result = a6;
    v22 = v21 + (a3 << 6);
    v23 = *(v22 + 40);
    *(v22 + 40) = result;
    *(result + 8) = v13;
    *(result + 16) = v23;
    ++*(v13 + 3);
    if (!*(*(*(a1 + 216) + 8) + (a3 << 6) + 20))
    {
      return 1;
    }

    return openOutputFile(a1, v13, a6);
  }

  return result;
}

uint64_t assignInputFile(uint64_t a1, const char *a2, int a3, _OWORD *a4, uint64_t a5)
{
  result = 0;
  if (a2)
  {
    if (a4)
    {
      result = malloc_type_malloc(0x50uLL, 0xF0040EFA0FAE9uLL);
      if (result)
      {
        v11 = result;
        strlen(a2);
        OUTLINED_FUNCTION_2_70();
        v14 = malloc_type_malloc(v12 + 1, v13);
        *v11 = v14;
        if (v14)
        {
          strcpy(v14, a2);
          v15 = a4[2];
          v16 = a4[3];
          v17 = a4[1];
          *(v11 + 8) = *a4;
          *(v11 + 24) = v17;
          *(v11 + 56) = v16;
          *(v11 + 40) = v15;
          *(v11 + 2) = *v11;
          *(v11 + 3) = a5;
          *(v11 + 9) = 0;
          OUTLINED_FUNCTION_1_75();
          v19 = v18 + (a3 << 6);
          v20 = (v19 + 24);
          v21 = *(v19 + 24);
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *(v21 + 72);
            }

            while (v21);
            v20 = (v22 + 72);
          }

          *v20 = v11;
          if (*(v19 + 20) != 1 || *(v19 + 32) || openInputFile(a1, v11, a3))
          {
            return 1;
          }

          else
          {
            OUTLINED_FUNCTION_5_60();
            return v23(a1, "LFILE ASSIGN", "Can't open assigned input file %s", a2);
          }
        }

        else
        {
          free(v11);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t openInputFile(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(a2 + 32))(a1, a2 + 8, 0);
  if (result)
  {
    *(*(*(a1 + 216) + 8) + (a3 << 6) + 32) = a2;
    return 1;
  }

  return result;
}

uint64_t openOutputFile(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if ((*(a2 + 40))(a1, a2 + 16, v5))
  {
    ++*(a2 + 8);
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_60();
    return v7(a1, "LFILE OPEN", "Can't open %s for output", *a2);
  }
}

void vfclose_lf(uint64_t a1)
{
  OUTLINED_FUNCTION_3_64(a1);
  v2 = v1;
  v4 = *(v3 + (v1 << 6) + 40);
  while (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v4 = v6;
    v7 = *(v5 + 8) - 1;
    *(v5 + 8) = v7;
    if (!v7)
    {
      (*(v5 + 72))(v5 + 16);
      v4 = v6;
    }
  }

  OUTLINED_FUNCTION_1_75();
  for (i = (v8 + (v2 << 6) + 24); ; i = (v10 + 72))
  {
    v10 = *i;
    if (!*i)
    {
      break;
    }

    (*(v10 + 64))(v10 + 8);
  }

  OUTLINED_FUNCTION_1_75();
  v12 = v11 + (v2 << 6);
  *(v12 + 20) = 0;
  *(v12 + 32) = 0;
}

uint64_t vf_gets(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 216);
  v6 = *(v5 + 8) + (a2 << 6);
  if (*(v6 + 20) != 1)
  {
    return (*(v5 + 32))(a1, "LOGIO", "Logical file %s is not open for input");
  }

  if (!*(v6 + 24))
  {
    return (*(v5 + 32))(a1, "LOGIO", "No input files are assigned to logical file %s");
  }

  v7 = *(v6 + 32);
  if (v7)
  {
    dynaBufReset(*(v6 + 48));
    do
    {
      if ((*(v7 + 56))(v7 + 8))
      {
        if (!*(v7 + 72))
        {
          return 0;
        }

        (*(v7 + 64))(v7 + 8);
        v7 = *(v7 + 72);
        *(v6 + 32) = v7;
        if (!openInputFile(a1, v7, a2))
        {
          return 0;
        }

        if (!v7)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (!(*(v7 + 40))(v7 + 8, *(v6 + 48), a3))
      {
        return 0;
      }
    }

    while (!dynaBufLength(*(v6 + 48)));
    v9 = dynaBufContents(*(v6 + 48));
    v14 = 1;
    if (vf_puts(a1, a2, v9, 1))
    {
      return v14;
    }

    OUTLINED_FUNCTION_5_60();
    v11 = "Can't echo input to file %s";
  }

  else
  {
    v10 = *(v5 + 32);
    v11 = "No input file is open for logical file %s";
  }

  return v10(a1, "LOGIO", v11);
}

uint64_t vf_getc(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_3_64(a1);
  if (!dynaBufAtEnd(*(v4 + (a2 << 6) + 48)))
  {
    goto LABEL_4;
  }

  if (vf_gets(v2, a2, &unk_26E7817DA) == 1)
  {
    OUTLINED_FUNCTION_0_86();
    dynaBufMoveAbs(*(v5 + 48), 0);
LABEL_4:
    OUTLINED_FUNCTION_0_86();
    return dynaBufCurrentChar(*(v6 + 48), 1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t vf_ungetc(uint64_t a1)
{
  OUTLINED_FUNCTION_3_64(a1);
  v2 = v1;
  result = dynaBufMoveRel(*(v3 + (v1 << 6) + 48), 0);
  if (result)
  {
    OUTLINED_FUNCTION_1_75();
    dynaBufMoveRel(*(v5 + (v2 << 6) + 48), 0xFFFFFFFF);
    return 1;
  }

  return result;
}

uint64_t logicalFileAddPhysical(uint64_t a1, int a2, char *a3, _OWORD *a4, uint64_t a5, int a6)
{
  if (a6)
  {
    return assignOutputFile(a1, a3, a2, a4, a5, a6 != 1);
  }

  else
  {
    return assignInputFile(a1, a3, a2, a4, a5);
  }
}

uint64_t logicalFileRemovePhysical(uint64_t a1, int a2, char *__s2, int a4)
{
  if (!__s2)
  {
    return 0;
  }

  if (a4)
  {
    if (findInputFile(a1, __s2, a2))
    {
      v7 = OUTLINED_FUNCTION_7_56();
      removeInputFile(v7, v8, a2);
      return 1;
    }

    OUTLINED_FUNCTION_6_58();
    v14 = "The input file %s is not assigned to %s";
  }

  else
  {
    OutputFile = findOutputFile(a1, __s2);
    if (!OutputFile)
    {
      OUTLINED_FUNCTION_5_60();
      return v15(a1, "LFILE REMOVE", "The output physical file %s is not defined", __s2);
    }

    if (findOutputElement(a1, a2, OutputFile))
    {
      v11 = OUTLINED_FUNCTION_7_56();
      removeOutputElement(v11, v12, a2);
      return 1;
    }

    OUTLINED_FUNCTION_6_58();
    v14 = "The output file %s is not assigned to %s";
  }

  return v13(a1, "LFILE REMOVE", v14);
}

const char **findInputFile(uint64_t a1, char *__s2, int a3)
{
  for (i = (*(*(a1 + 216) + 8) + (a3 << 6) + 24); ; i = (v5 + 9))
  {
    v5 = *i;
    if (!*i || !strcmp(*v5, __s2))
    {
      break;
    }
  }

  return v5;
}

void removeInputFile(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(*(a1 + 216) + 8) + (a3 << 6);
  v8 = (v6 + 24);
  v7 = *(v6 + 24);
  if (v7 == a2)
  {
LABEL_5:
    *v8 = *(a2 + 72);
  }

  else
  {
    while (1)
    {
      v9 = v7;
      v7 = *(v7 + 72);
      if (!v7)
      {
        break;
      }

      if (v7 == a2)
      {
        v8 = (v9 + 72);
        goto LABEL_5;
      }
    }
  }

  if (*(v6 + 32) == a2)
  {
    (*(a2 + 64))(a2 + 8);
    *(v6 + 32) = 0;
    v10 = *(a2 + 72);
    if (v10)
    {
      if (!openInputFile(a1, v10, a3))
      {
        (*(*(a1 + 216) + 32))(a1, "LFILE REMOVE", "Can't open the next input file %s for logical file %s", **(a2 + 72), v6);
        *(v6 + 32) = 0;
      }
    }
  }

  free(*a2);

  free(a2);
}

const char **findOutputFile(uint64_t a1, char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  for (i = (*(a1 + 216) + 24); ; i = (v4 + 10))
  {
    v4 = *i;
    if (!*i || !strcmp(*v4, __s2))
    {
      break;
    }
  }

  return v4;
}

uint64_t findOutputElement(uint64_t a1, int a2, void *a3)
{
  for (i = (*(*(a1 + 216) + 8) + (a2 << 6) + 40); ; i = (result + 16))
  {
    result = *i;
    if (!*i || **(result + 8) == *a3)
    {
      break;
    }
  }

  return result;
}

void removeOutputElement(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 216);
  v6 = *(v5 + 8) + (a3 << 6);
  v7 = *(v6 + 40);
  if (v7 == a2)
  {
    v9 = a2[1];
    *(v6 + 40) = a2[2];
LABEL_6:
    v10 = *(v6 + 20);
    v11 = *(v9 + 8);
    if (v10)
    {
      *(v9 + 8) = --v11;
    }

    if (!v11)
    {
      (*(v9 + 72))(v9 + 16);
    }

    v12 = *(v9 + 12) - 1;
    *(v9 + 12) = v12;
    if (!v12)
    {
      v13 = *(a1 + 216);
      v16 = *(v13 + 24);
      v15 = (v13 + 24);
      v14 = v16;
      if (v16 == v9)
      {
LABEL_15:
        *v15 = *(v14 + 80);
      }

      else
      {
        while (1)
        {
          v17 = v14;
          v14 = *(v14 + 80);
          if (!v14)
          {
            break;
          }

          if (v14 == v9)
          {
            v15 = (v17 + 80);
            v14 = v9;
            goto LABEL_15;
          }
        }
      }

      free(*v9);
      free(v9);
    }

    free(a2);
  }

  else
  {
    while (1)
    {
      v8 = v7;
      v7 = v7[2];
      if (!v7)
      {
        break;
      }

      if (v7 == a2)
      {
        v9 = a2[1];
        v8[2] = a2[2];
        goto LABEL_6;
      }
    }

    (*(v5 + 32))(a1, "LFILE REMOVE", "The output file %s is not assigned to the logical file %s", *a2[1], v6);
  }
}

void logicalFileRemoveAllPhysical(uint64_t a1, char *__s2)
{
  if (__s2)
  {
    for (i = 0; ; ++i)
    {
      v5 = *(*(a1 + 216) + 16);
      if (v5 <= i)
      {
        break;
      }

      if (findInputFile(a1, __s2, i))
      {
        v6 = OUTLINED_FUNCTION_7_56();
        removeInputFile(v6, v7, i);
      }
    }

    OutputFile = findOutputFile(a1, __s2);
    if (OutputFile)
    {
      v9 = OutputFile;
      for (j = 0; v5 > j; ++j)
      {
        if (findOutputElement(a1, j, v9))
        {
          v11 = OUTLINED_FUNCTION_7_56();
          removeOutputElement(v11, v12, j);
          v5 = *(*(a1 + 216) + 16);
        }
      }
    }
  }
}

const char **logicalFileFindPhysical(uint64_t a1, int a2, char *__s2, int a4, int a5)
{
  if (!__s2 || !*__s2)
  {
    return 0;
  }

  if (a4)
  {
    InputFile = findInputFile(a1, __s2, a2);
    if (a5)
    {
      return (InputFile == *(*(*(a1 + 216) + 8) + (a2 << 6) + 32));
    }
  }

  else
  {
    result = findOutputFile(a1, __s2);
    if (!result)
    {
      return result;
    }

    InputFile = findOutputElement(a1, a2, result);
  }

  return (InputFile != 0);
}

void OUTLINED_FUNCTION_6_58()
{
  v2 = *(v0 + 216);
  v3 = *(v2 + 32);
  v4 = *(v2 + 8) + (v1 << 6);
}

BOOL diskFileOpen(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a2 = a1;
  if (*(a2 + 16))
  {
    return 1;
  }

  if (a3 > 2)
  {
    v5 = &unk_26E7817DA;
  }

  else
  {
    v5 = (&off_279DA8230)[a3];
  }

  v6 = fopen(*(a2 + 8), v5);
  *(a2 + 16) = v6;
  return v6 != 0;
}

uint64_t diskFileRead(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 && !feof(v3))
  {
    while (!feof(*(a1 + 16)))
    {
      if (!fgets(__s, 64, *(a1 + 16)) && !feof(*(a1 + 16)) || !dynaBufAddString(a2, __s, 0))
      {
        goto LABEL_3;
      }

      v8 = dynaBufMoveRel(a2, 0xFFFFFFFF);
      if (dynaBufCurrentChar(a2, 0) == 10)
      {
        v11 = dynaBufMoveRel(a2, 0xFFFFFFFF);
        if (dynaBufCurrentChar(a2, 0) == 32)
        {
          if (v8 != v11)
          {
            v5 = 1;
            v12 = OUTLINED_FUNCTION_2_71();
            dynaBufMoveRel(v12, v13);
            goto LABEL_4;
          }
        }

        else
        {
          if (v8 != v11)
          {
            v14 = OUTLINED_FUNCTION_2_71();
            dynaBufMoveRel(v14, v15);
          }

          dynaBufAddChar(a2, 32, 0);
          v16 = OUTLINED_FUNCTION_1_76();
          dynaBufAddChar(v16, v17, v18);
        }

        break;
      }

      v9 = OUTLINED_FUNCTION_2_71();
      dynaBufMoveRel(v9, v10);
    }

    v5 = 1;
  }

  else
  {
LABEL_3:
    v5 = 0;
  }

LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL diskFileWrite(uint64_t a1, char *a2, int a3)
{
  result = 0;
  if (a2 && *(a1 + 16))
  {
    if (fputs(a2, *(a1 + 16)) == -1)
    {
      return 0;
    }

    else
    {
      return !a3 || fflush(*(a1 + 16)) != -1;
    }
  }

  return result;
}

BOOL diskFileEof(uint64_t *a1)
{
  if (checkInterrupt(*a1))
  {
    setInterrupt(*a1, 0);
    return 1;
  }

  v3 = a1[2];
  if (!v3)
  {
    return 1;
  }

  return feof(v3) != 0;
}

BOOL dynaBufFileOpen(uint64_t a1, void *a2, int a3)
{
  *a2 = a1;
  v4 = a2[2];
  if (v4)
  {
    switch(a3)
    {
      case 2:
        v5 = -1;
        goto LABEL_8;
      case 1:
        dynaBufReset(v4);
        break;
      case 0:
        v5 = 0;
LABEL_8:
        dynaBufMoveAbs(v4, v5);
        break;
    }
  }

  return a2[2] != 0;
}

uint64_t dynaBufFileRead(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  while (1)
  {
    v4 = dynaBufCurrentChar(*(a1 + 16), 1);
    if (!v4 || v4 == 10)
    {
      break;
    }

    if (!dynaBufAddChar(a2, v4, 0))
    {
      return 0;
    }
  }

  addSpace(a2);
  v7 = OUTLINED_FUNCTION_1_76();

  return dynaBufAddChar(v7, v8, v9);
}

uint64_t addSpace(uint64_t *a1)
{
  v2 = dynaBufMoveRel(a1, 0);
  v3 = dynaBufMoveRel(a1, 0xFFFFFFFF);
  result = dynaBufCurrentChar(a1, 0);
  if (result == 32)
  {
    if (v2 != v3)
    {
      v7 = OUTLINED_FUNCTION_2_71();

      return dynaBufMoveRel(v7, v8);
    }
  }

  else
  {
    if (v2 != v3)
    {
      v5 = OUTLINED_FUNCTION_2_71();
      dynaBufMoveRel(v5, v6);
    }

    return dynaBufAddChar(a1, 32, 0);
  }

  return result;
}

uint64_t *dynaBufFileWrite(uint64_t a1, char *a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return (dynaBufAddString(result, a2, 0) != 0);
  }

  return result;
}

uint64_t stdTermFileRead(int a1, uint64_t *a2, char *a3)
{
  if (a3)
  {
    fputs(a3, *MEMORY[0x277D85E08]);
  }

  while (1)
  {
    v4 = getchar();
    if (v4 == -1 || v4 == 10)
    {
      break;
    }

    result = dynaBufAddChar(a2, v4, 0);
    if (!result)
    {
      return result;
    }
  }

  addSpace(a2);
  v7 = OUTLINED_FUNCTION_1_76();

  return dynaBufAddChar(v7, v8, v9);
}

BOOL stdTermFileWrite(int a1, char *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = MEMORY[0x277D85E08];
  if (fputs(a2, *MEMORY[0x277D85E08]) == -1)
  {
    return 0;
  }

  if (a3)
  {
    return fflush(*v4) != -1;
  }

  return 1;
}

BOOL stdErrorFileWrite(int a1, char *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = MEMORY[0x277D85DF8];
  if (fputs(a2, *MEMORY[0x277D85DF8]) == -1)
  {
    return 0;
  }

  if (a3)
  {
    return fflush(*v4) != -1;
  }

  return 1;
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}