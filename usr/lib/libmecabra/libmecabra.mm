double sub_29918D970(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *sub_29918D9AC(void *result, uint64_t a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x20000000DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:13: MARISA_NULL_ERROR: str == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v2 = result[5];
  if (v2)
  {
    *(v2 + 108) = 0;
  }

  v3 = 0;
    ;
  }

  *result = a2;
  result[1] = v3 - 1;
  return result;
}

void *sub_29918DA48(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x200000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:21: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = result[5];
  if (v3)
  {
    *(v3 + 108) = 0;
  }

  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t sub_29918DAD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    *(v2 + 108) = 0;
  }

  *(result + 16) = a2;
  return result;
}

void *sub_29918DAE4(uint64_t a1)
{
  v1 = (a1 + 40);
  if (*(a1 + 40))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x100000024;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:36: MARISA_STATE_ERROR: state_.get() != NULL";
    goto LABEL_8;
  }

  v2 = operator new(0x70uLL, MEMORY[0x29EDC9418]);
  if (v2)
  {
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    *(v2 + 73) = 0u;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
  }

  result = sub_29918DBF0(v1, v2);
  if (!*v1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x800000026;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:38: MARISA_MEMORY_ERROR: state_.get() == NULL";
LABEL_8:
    exception[3] = v5;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  return result;
}

void *sub_29918DBF0(uint64_t *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v4 = *a1;
  *a1 = a2;
  return sub_29918DD28(&v4);
}

void *sub_29918DC8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a1 = 0;
  a1[1] = 0;
  v4 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  v5 = a1[4];
  v6 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  return sub_29918DD28(&v6);
}

void sub_29918DCE8(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29918DD28(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[6];
    if (v3)
    {
      MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
    }

    if (*v2)
    {
      MEMORY[0x29C29BF70](*v2, 0x1000C8077774924);
    }

    MEMORY[0x29C29BFB0](v2, 0x1070C406A3FAA47);
  }

  return a1;
}

uint64_t sub_29918DDA4(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  return result;
}

uint64_t sub_29918DDBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    munmap(v2, *(a1 + 24));
  }

  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    close(v3);
  }

  return a1;
}

uint64_t sub_29918DE0C(__int128 *a1, char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x200000037;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:55: MARISA_NULL_ERROR: filename == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  *&v9 = 0;
  *(&v9 + 1) = -1;
  v10 = 0uLL;
  v11 = -1;
  sub_29918DEF0(&v9, a2);
  v3 = v10;
  v4 = *a1;
  v5 = a1[1];
  *a1 = v9;
  a1[1] = v3;
  v9 = v4;
  v10 = v5;
  v6 = *(a1 + 8);
  *(a1 + 8) = v11;
  v11 = v6;
  return sub_29918DDBC(&v9);
}

void *sub_29918DEF0(uint64_t a1, char *a2)
{
  if (stat(a2, &v8))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x90000008DLL;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:141: MARISA_IO_ERROR: ::stat(filename, &st) != 0";
    goto LABEL_8;
  }

  *(a1 + 24) = v8.st_size;
  v4 = open(a2, 0);
  *(a1 + 32) = v4;
  if (v4 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000092;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:146: MARISA_IO_ERROR: fd_ == -1";
    goto LABEL_8;
  }

  result = mmap(0, *(a1 + 24), 1, 1, v4, 0);
  *(a1 + 8) = result;
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000095;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:149: MARISA_IO_ERROR: origin_ == MAP_FAILED";
LABEL_8:
    exception[3] = v7;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  *a1 = result;
  *(a1 + 16) = *(a1 + 24);
  return result;
}

uint64_t *sub_29918E068(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v4 = result[1];
  v3 = result[2];
  v5 = a2[2];
  result[1] = a2[1];
  result[2] = v5;
  a2[1] = v4;
  a2[2] = v3;
  v6 = result[3];
  result[3] = a2[3];
  a2[3] = v6;
  LODWORD(v6) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_29918E0AC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x20000003FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:63: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = *a1;
  v4 = a1[1];
  *a1 = a2;
  *(a1 + 1) = -1;
  *(a1 + 2) = a3;
  *(a1 + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = -1;
  v9 = v5;
  return sub_29918DDBC(v8);
}

uint64_t sub_29918E15C(uint64_t *a1, unint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000047;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:71: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (a1[2] < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000048;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:72: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  return sub_29918E238(a1, a2);
}

uint64_t sub_29918E238(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000063;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:99: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = a1[2];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000064;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:100: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *a1 = v2 + a2;
  a1[2] = v5;
  return v2;
}

uint64_t sub_29918E314(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_29918E32C(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    fclose(*a1);
  }

  return a1;
}

FILE *sub_29918E364(uint64_t a1, char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x20000001BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:27: MARISA_NULL_ERROR: filename == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v6 = 0;
  v7 = -1;
  v8 = 0;
  v9 = 0;
  sub_29918E47C(&v6, a2);
  result = *a1;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v4 = *(a1 + 24);
  *(a1 + 24) = v9;
  if (v4 == 1)
  {

    return fclose(result);
  }

  return result;
}

void sub_29918E45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    fclose(a9);
  }

  _Unwind_Resume(exception_object);
}

FILE *sub_29918E47C(uint64_t a1, char *__filename)
{
  result = fopen(__filename, "rb");
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x90000005ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:94: MARISA_IO_ERROR: file == NULL";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  *a1 = result;
  *(a1 + 24) = 1;
  return result;
}

FILE *sub_29918E520(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == 1)
  {
    return fclose(result);
  }

  return result;
}

uint64_t sub_29918E550(uint64_t result, size_t __nitems)
{
  v2 = __nitems;
  v3 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (!*result && *(result + 8) == -1 && !*(result + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x100000044;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:68: MARISA_STATE_ERROR: !is_open()";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        result = sub_29918E67C(v3, v7, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      result = sub_29918E67C(result, v7, __nitems);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29918E67C(uint64_t result, char *a2, size_t __nitems)
{
  v3 = __nitems;
  v4 = a2;
  v5 = result;
  v6 = *result;
  if (!*result && *(result + 8) == -1 && !*(result + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x100000071;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:113: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_19;
  }

  if (__nitems)
  {
    if (*(result + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        result = read(*(v5 + 8), v4, v7);
        if (result <= 0)
        {
          break;
        }

        v4 += result;
        v3 -= result;
        if (!v3)
        {
          return result;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
      exception[2] = 0x900000081;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:129: MARISA_IO_ERROR: size_read <= 0";
LABEL_19:
      exception[3] = v9;
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    if (v6)
    {
      result = fread(a2, 1uLL, __nitems, v6);
      if (result != v3)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F37658;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
        exception[2] = 0x900000086;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:134: MARISA_IO_ERROR: ::fread(buf, 1, size, file_) != size";
        goto LABEL_19;
      }
    }

    else
    {
      result = *(result + 16);
      if (result)
      {
        result = std::istream::read();
        if ((*(result + *(*result - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_2A1F37658;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
          v10[2] = 0x90000008ALL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:138: MARISA_IO_ERROR: !stream_->read(static_cast<char *>(buf), size)";
          __cxa_throw(v10, &unk_2A1F37630, std::exception::~exception);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29918E938(uint64_t result, size_t __nitems)
{
  v2 = __nitems;
  v3 = result;
  __buf[128] = *MEMORY[0x29EDCA608];
  if (!*result && *(result + 8) == -1 && !*(result + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000044;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:68: MARISA_STATE_ERROR: !is_open()";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      bzero(__buf, 0x400uLL);
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        result = sub_29918EA74(v3, __buf, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      __buf[0] = 0;
      __buf[1] = 0;
      result = sub_29918EA74(result, __buf, __nitems);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29918EA74(uint64_t result, char *__buf, size_t __nitems)
{
  v3 = __nitems;
  v4 = __buf;
  v5 = result;
  v6 = *result;
  if (!*result && *(result + 8) == -1 && !*(result + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000071;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:113: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_20;
  }

  if (__nitems)
  {
    if (*(result + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        result = write(*(v5 + 8), v4, v7);
        if (result <= 0)
        {
          break;
        }

        v4 += result;
        v3 -= result;
        if (!v3)
        {
          return result;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
      exception[2] = 0x900000081;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:129: MARISA_IO_ERROR: size_written <= 0";
LABEL_20:
      exception[3] = v9;
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    if (v6)
    {
      if (fwrite(__buf, 1uLL, __nitems, v6) != __nitems)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F37658;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000086;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:134: MARISA_IO_ERROR: ::fwrite(data, 1, size, file_) != size";
        goto LABEL_20;
      }

      result = fflush(*v5);
      if (result)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F37658;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000087;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:135: MARISA_IO_ERROR: ::fflush(file_) != 0";
        goto LABEL_20;
      }
    }

    else
    {
      result = *(result + 16);
      if (result)
      {
        result = std::ostream::write();
        if ((*(result + *(*result - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_2A1F37658;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
          v10[2] = 0x90000008BLL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:139: MARISA_IO_ERROR: !stream_->write(static_cast<const char *>(data), size)";
          __cxa_throw(v10, &unk_2A1F37630, std::exception::~exception);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29918ED80(uint64_t a1)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 185) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 393) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 441) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 553) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 601) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 505) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 649) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 697) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  sub_299199B3C((a1 + 744));
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 3;
  *(a1 + 1080) = 0x100000000200;
  *(a1 + 1088) = 0x20000;
  sub_29918DDA4(a1 + 1096);
  return a1;
}

void sub_29918EEB8(_Unwind_Exception *a1)
{
  v8 = v1[126];
  if (v8)
  {
    MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  sub_29919478C(v4);
  sub_2991925D8(v1 + 93);
  if (*v6)
  {
    MEMORY[0x29C29BF70](*v6, 0x1000C8077774924);
  }

  if (*v5)
  {
    MEMORY[0x29C29BF70](*v5, 0x1000C8077774924);
  }

  sub_29918EF40(v3);
  sub_29918EF40(v2);
  sub_29918EF40(v1);
  _Unwind_Resume(a1);
}

void *sub_29918EF40(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  v3 = a1[14];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  v4 = a1[8];
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
  }

  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
  }

  return a1;
}

void *sub_29918EFB8(void *a1)
{
  sub_29918DE08((a1 + 137));
  v2 = a1[126];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  sub_29919478C(a1 + 125);
  v3 = a1[119];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  v4 = a1[113];
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
  }

  v5 = a1[107];
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  v6 = a1[99];
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, 0x1000C8077774924);
  }

  v7 = a1[93];
  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  v8 = a1[84];
  if (v8)
  {
    MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  v9 = a1[78];
  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  v10 = a1[72];
  if (v10)
  {
    MEMORY[0x29C29BF70](v10, 0x1000C8077774924);
  }

  v11 = a1[66];
  if (v11)
  {
    MEMORY[0x29C29BF70](v11, 0x1000C8077774924);
  }

  v12 = a1[60];
  if (v12)
  {
    MEMORY[0x29C29BF70](v12, 0x1000C8077774924);
  }

  v13 = a1[52];
  if (v13)
  {
    MEMORY[0x29C29BF70](v13, 0x1000C8077774924);
  }

  v14 = a1[46];
  if (v14)
  {
    MEMORY[0x29C29BF70](v14, 0x1000C8077774924);
  }

  v15 = a1[40];
  if (v15)
  {
    MEMORY[0x29C29BF70](v15, 0x1000C8077774924);
  }

  v16 = a1[34];
  if (v16)
  {
    MEMORY[0x29C29BF70](v16, 0x1000C8077774924);
  }

  v17 = a1[26];
  if (v17)
  {
    MEMORY[0x29C29BF70](v17, 0x1000C8077774924);
  }

  v18 = a1[20];
  if (v18)
  {
    MEMORY[0x29C29BF70](v18, 0x1000C8077774924);
  }

  v19 = a1[14];
  if (v19)
  {
    MEMORY[0x29C29BF70](v19, 0x1000C8077774924);
  }

  v20 = a1[8];
  if (v20)
  {
    MEMORY[0x29C29BF70](v20, 0x1000C8077774924);
  }

  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
  }

  return a1;
}

void *sub_29918F13C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 3;
  v7 = 0x100000000200;
  v8 = 0x20000;
  sub_29919265C(&v6, a3);
  v9[0] = v6;
  v9[1] = v7;
  v10 = v8;
  sub_29918ED80(&v6);
  sub_29918F1F0(&v6, a2, v9);
  sub_29918F4F4(a1, &v6);
  return sub_29918EFB8(&v6);
}

void sub_29918F1DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29918EFB8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29918F1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v30, 0, 41);
  sub_299190B90(v30, *(a2 + 88));
  if (*(a2 + 88))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(&v30[0] + 1) + v6;
      v9 = *(*(a2 + 48) + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7;
      v10 = *(v9 + 8);
      *v8 = *v9;
      *(v8 + 8) = v10;
      *(v8 + 12) = *(v9 + 12);
      ++v7;
      v6 += 24;
    }

    while (v7 < *(a2 + 88));
  }

  v28 = 0u;
  memset(v29, 0, 25);
  sub_299190C20(a1, v30, &v28, a3, 1);
  memset(v27, 0, 41);
  sub_299190E04(v27, v29[1]);
  v11 = *(&v27[1] + 1);
  if (*(&v27[1] + 1))
  {
    v12 = 0;
    v13 = *(&v28 + 1);
    v14 = (*(&v27[0] + 1) + 4);
    do
    {
      *(v14 - 1) = *(v13 + 4 * v12);
      *v14 = v12++;
      v14 += 2;
    }

    while (v11 != v12);
  }

  v15 = v28;
  v28 = 0u;
  memset(v29, 0, 25);
  if (v15)
  {
    MEMORY[0x29C29BF70](v15, 0x1000C8077774924);
    v11 = *(&v27[1] + 1);
  }

  v16 = 126 - 2 * __clz(v11);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_299196E50(*(&v27[0] + 1), (*(&v27[0] + 1) + 8 * v11), &v31, v17, 1);
  if (*(&v27[1] + 1))
  {
    v18 = 0;
    v19 = 0;
    do
    {
      for (i = *(&v27[0] + 1); ; i = *(&v27[0] + 1))
      {
        v21 = *(i + 8 * v18);
        if (v19 >= v21)
        {
          break;
        }

        sub_299190E78((a1 + 208), 0);
        ++v19;
      }

      if (v19 == v21)
      {
        sub_299190E78((a1 + 208), 1);
        ++v19;
      }

      ++v18;
    }

    while (v18 < *(&v27[1] + 1));
  }

  else
  {
    v19 = 0;
  }

  while (v19 < *(a1 + 648))
  {
    sub_299190E78((a1 + 208), 0);
    ++v19;
  }

  sub_299190E78((a1 + 208), 0);
  sub_299190F70(a1 + 208, 0, 1);
  if (*(a2 + 88))
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(*(&v27[0] + 1) + v22 + 4);
      v25 = *(*(a2 + 48) + ((v24 >> 5) & 0x7FFFFF8));
      *(v25 + 16 * v24 + 12) = sub_29919B120(a1 + 208, *(*(&v27[0] + 1) + v22));
      ++v23;
      v22 += 8;
    }

    while (v23 < *(a2 + 88));
  }

  if (*&v27[0])
  {
    MEMORY[0x29C29BF70](*&v27[0], 0x1000C8077774924);
  }

  if (v28)
  {
    MEMORY[0x29C29BF70](v28, 0x1000C8077774924);
  }

  result = *&v30[0];
  if (*&v30[0])
  {
    return MEMORY[0x29C29BF70](*&v30[0], 0x1000C8077774924);
  }

  return result;
}

void sub_29918F494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a15)
  {
    MEMORY[0x29C29BF70](a15, v21);
  }

  if (a21)
  {
    MEMORY[0x29C29BF70](a21, v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29918F4F4(uint64_t a1, uint64_t a2)
{
  sub_299190AC4(a1, a2);
  sub_299190AC4((a1 + 208), (a2 + 208));
  sub_299190AC4((a1 + 416), (a2 + 416));
  sub_299190B3C((a1 + 624), (a2 + 624));
  sub_299190B3C((a1 + 672), (a2 + 672));
  v4 = *(a1 + 720);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = v4;
  LODWORD(v4) = *(a1 + 728);
  *(a1 + 728) = *(a2 + 728);
  *(a2 + 728) = v4;
  v5 = *(a1 + 736);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 736) = v5;
  sub_29919A194((a1 + 744), (a2 + 744));
  v6 = *(a1 + 1000);
  *(a1 + 1000) = *(a2 + 1000);
  *(a2 + 1000) = v6;
  sub_299190B3C((a1 + 1008), (a2 + 1008));
  v7 = *(a1 + 1056);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = v7;
  v8 = *(a1 + 1064);
  *(a1 + 1064) = *(a2 + 1064);
  *(a2 + 1064) = v8;
  v9 = *(a1 + 1072);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = v9;
  v10 = *(a1 + 1080);
  *(a1 + 1080) = *(a2 + 1080);
  *(a2 + 1080) = v10;
  LODWORD(v9) = *(a1 + 1088);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = v9;

  return sub_29918E068((a1 + 1096), (a2 + 1096));
}

void *sub_29918F60C(uint64_t a1, uint64_t *a2)
{
  sub_29918F694(v5, a2);
  sub_29918ED80(v5);
  sub_29918F754(v5, a2);
  sub_29918E068(v6, a2);
  sub_29918F4F4(a1, v5);
  return sub_29918EFB8(v5);
}

_BYTE *sub_29918F694(uint64_t a1, uint64_t *a2)
{
  result = sub_29918E238(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1u;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = aWeLoveMarisa[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  return result;
}

double sub_29918F754(uint64_t a1, uint64_t *a2)
{
  sub_299191988(a1, a2);
  sub_299191988((a1 + 208), a2);
  sub_299191988((a1 + 416), a2);
  sub_299191A54((a1 + 624), a2);
  sub_299191B14((a1 + 672), a2);
  sub_29919A1D4(a1 + 744, a2);
  if (*(a1 + 472) && !*(a1 + 768))
  {
    v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
    v5 = v4;
    if (v4)
    {
      sub_29918ED80(v4);
    }

    sub_29919138C((a1 + 1000), v5);
    v6 = *(a1 + 1000);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x80000021ELL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:542: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    sub_29918F754(v6, a2);
  }

  sub_299191C10((a1 + 1008), a2);
  *(a1 + 1056) = *(a1 + 1032) - 1;
  *(a1 + 1064) = *sub_29918E238(a2, 4uLL);
  v7 = *sub_29918E238(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  sub_29919265C(&v10, v7);
  *(a1 + 1072) = v10;
  result = v11;
  *(a1 + 1080) = v11;
  *(a1 + 1088) = v12;
  return result;
}

void *sub_29918F90C(uint64_t a1, uint64_t a2)
{
  sub_29918F984(v5, a2);
  sub_29918ED80(v5);
  sub_29918FA88(v5, a2);
  sub_29918F4F4(a1, v5);
  return sub_29918EFB8(v5);
}

uint64_t sub_29918F984(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  result = sub_29918E67C(a2, v8, 0x10uLL);
  if (v8[0] != 87)
  {
    goto LABEL_7;
  }

  v3 = 1u;
  do
  {
    if (v3 == 16)
    {
      goto LABEL_6;
    }

    v4 = v8[v3];
    v5 = aWeLoveMarisa[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA0000001ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h:26: MARISA_FORMAT_ERROR: !test_header(buf)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

LABEL_6:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

double sub_29918FA88(uint64_t a1, uint64_t a2)
{
  sub_299191CD0(a1, a2);
  sub_299191CD0((a1 + 208), a2);
  sub_299191CD0((a1 + 416), a2);
  sub_299191D9C((a1 + 624), a2);
  sub_299191E5C((a1 + 672), a2);
  sub_29919A310(a1 + 744, a2);
  if (*(a1 + 472) && !*(a1 + 768))
  {
    v4 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
    v5 = v4;
    if (v4)
    {
      sub_29918ED80(v4);
    }

    sub_29919138C((a1 + 1000), v5);
    v6 = *(a1 + 1000);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x800000238;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:568: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    sub_29918FA88(v6, a2);
  }

  sub_299191F58((a1 + 1008), a2);
  *(a1 + 1056) = *(a1 + 1032) - 1;
  LODWORD(v10) = 0;
  sub_29918E67C(a2, &v10, 4uLL);
  *(a1 + 1064) = v10;
  v9 = 0;
  sub_29918E67C(a2, &v9, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  sub_29919265C(&v10, v9);
  *(a1 + 1072) = v10;
  result = v11;
  *(a1 + 1080) = v11;
  *(a1 + 1088) = v12;
  return result;
}

uint64_t sub_29918FC50(uint64_t a1, uint64_t a2)
{
  sub_29918EA74(a2, "We love Marisa.", 0x10uLL);

  return sub_29918FCA0(a1, a2);
}

uint64_t sub_29918FCA0(uint64_t a1, uint64_t a2)
{
  sub_2991942C0(a1, a2);
  sub_2991942C0(a1 + 208, a2);
  sub_2991942C0(a1 + 416, a2);
  sub_299199A54(a1 + 624, a2);
  sub_299194714(a1 + 672, a2);
  sub_29919A44C(a1 + 744, a2);
  v4 = *(a1 + 1000);
  if (v4)
  {
    sub_29918FCA0(v4, a2);
  }

  sub_299194480(a1 + 1008, a2);
  __buf = *(a1 + 1064);
  sub_29918EA74(a2, &__buf, 4uLL);
  v6 = *(a1 + 1084) | *(a1 + 1072) | *(a1 + 1088);
  return sub_29918EA74(a2, &v6, 4uLL);
}

uint64_t sub_29918FD68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(v4 + 96) = 0;
  *(v4 + 108) = 0;
  while (1)
  {
    v5 = *(a2 + 8);
    if (v5 <= *(v4 + 100))
    {
      break;
    }

    if ((sub_29918FE04(a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v4 + 96);
  if ((*(*(a1 + 224) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6))
  {
    *(a2 + 24) = *a2;
    *(a2 + 32) = v5;
    *(a2 + 36) = sub_29919B120(a1 + 208, v6);
    return 1;
  }

  return 0;
}

uint64_t sub_29918FE04(uint64_t a1, uint64_t *a2)
{
  v4 = a2[5];
  v5 = *(v4 + 96);
  v6 = *(v4 + 100);
  v7 = (*(*a2 + v6) ^ (32 * v5) ^ v5) & *(a1 + 1056);
  v8 = (*(a1 + 1024) + 12 * v7);
  if (v5 != *v8)
  {
    v10 = sub_29919B21C(a1, v5);
    v11 = *(a1 + 16);
    if ((*(v11 + (((v10 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v10 + 1)))
    {
      v12 = v10 - *(v4 + 96);
      *(v4 + 96) = v12;
      v13 = v10 + 2;
      v14 = 0xFFFFFFFFLL;
      while (1)
      {
        v15 = v12;
        if ((*(*(a1 + 432) + ((v12 >> 3) & 0x1FFFFFF8)) >> v12))
        {
          if (v14 == 0xFFFFFFFFLL)
          {
            v14 = sub_29919B120(a1 + 416, v12);
            v15 = *(v4 + 96);
          }

          else
          {
            ++v14;
          }

          v17 = *(v4 + 100);
          v18 = *(a1 + 720);
          v19 = v18 * v14;
          v20 = (v18 * v14) & 0x3F;
          v21 = v20 + v18;
          v22 = (*(a1 + 688) + 8 * ((v18 * v14) >> 6));
          v23 = *v22;
          if (v21 > 0x40)
          {
            v24 = ((2 * v22[1]) << ~v19) | (v23 >> v19);
          }

          else
          {
            v24 = v23 >> v20;
          }

          v25 = *(*(a1 + 640) + v15) | ((*(a1 + 728) & v24) << 8);
          v26 = *(a1 + 1000);
          if (v26)
          {
            if (sub_2991921AC(v26, a2, v25))
            {
              return 1;
            }
          }

          else if (sub_29919A518((a1 + 744), a2, v25))
          {
            return 1;
          }

          if (*(v4 + 100) != v17)
          {
            return 0;
          }

          v12 = *(v4 + 96);
          v11 = *(a1 + 16);
        }

        else
        {
          v16 = *(v4 + 100);
          if (*(*(a1 + 640) + v12) == *(*a2 + v16))
          {
            *(v4 + 100) = v16 + 1;
            return 1;
          }
        }

        *(v4 + 96) = ++v12;
        v27 = *(v11 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
        ++v13;
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v9 = v8[2];
  if (v9 > 0xFFFFFEFF)
  {
    *(v4 + 100) = v6 + 1;
    goto LABEL_25;
  }

  v28 = *(a1 + 1000);
  if (v28)
  {
    if (sub_2991921AC(v28, a2, v9))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((sub_29919A518((a1 + 744), a2, v9) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *(v4 + 96) = *(*(a1 + 1024) + 12 * v7 + 4);
  return 1;
}

unint64_t sub_299190038(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 >= *(a1 + 264))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x300000049;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:73: MARISA_BOUND_ERROR: agent.query().id() >= size()";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v5 = *(a2 + 40);
  *(v5 + 24) = 0;
  v6 = *(v5 + 32);
  if (v6 <= 0x1F)
  {
    if (v6 <= 0x10)
    {
      v7 = 32;
    }

    else
    {
      v7 = 2 * v6;
    }

    sub_29919290C(v5, v7);
    v3 = *(a2 + 16);
  }

  *(v5 + 108) = 0;
  result = sub_29919B480((a1 + 208), v3);
  *(v5 + 96) = result;
  if (!result)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if ((*(*(a1 + 432) + ((result >> 3) & 0x1FFFFFF8)) >> result))
    {
      v9 = *(v5 + 24);
      v10 = *(*(a1 + 640) + result);
      v11 = sub_29919B120(a1 + 416, result);
      v12 = *(a1 + 720);
      v13 = v12 * v11;
      v14 = (v12 * v11) & 0x3F;
      v15 = v14 + v12;
      v16 = (*(a1 + 688) + 8 * ((v12 * v11) >> 6));
      v17 = *v16;
      if (v15 > 0x40)
      {
        v18 = ((2 * v16[1]) << ~v13) | (v17 >> v13);
      }

      else
      {
        v18 = v17 >> v14;
      }

      v19 = v10 | ((*(a1 + 728) & v18) << 8);
      v20 = *(a1 + 1000);
      if (v20)
      {
        result = sub_299192018(v20, a2, v19);
      }

      else
      {
        result = sub_29919A48C((a1 + 744), a2, v19);
      }

      v21 = *(v5 + 24);
      if (v9 != v21)
      {
        v22 = *(v5 + 8);
        v23 = (v22 + v21 - 1);
        if (v23 > v22 + v9)
        {
          v24 = v22 + v9 + 1;
          do
          {
            v25 = *(v24 - 1);
            *(v24 - 1) = *v23;
            *v23-- = v25;
            v26 = v24++ >= v23;
          }

          while (!v26);
        }
      }
    }

    else
    {
      v36 = *(*(a1 + 640) + result);
      result = sub_2991902B4(v5, &v36);
    }

    v27 = *(v5 + 96);
    if (*(a1 + 1064) >= v27)
    {
      break;
    }

    result = sub_29919B480(a1, v27) + ~*(v5 + 96);
    *(v5 + 96) = result;
  }

  v28 = *(v5 + 8);
  v29 = *(v5 + 24);
  v30 = (v28 + v29 - 1);
  if (v29)
  {
    v31 = v30 > v28;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    v32 = v28 + 1;
    do
    {
      v33 = *(v32 - 1);
      *(v32 - 1) = *v30;
      *v30-- = v33;
      v26 = v32++ >= v30;
    }

    while (!v26);
LABEL_31:
    v28 = *(v5 + 8);
    v29 = *(v5 + 24);
  }

  *(a2 + 24) = v28;
  v34 = *(a2 + 16);
  *(a2 + 32) = v29;
  *(a2 + 36) = v34;
  return result;
}

uint64_t *sub_2991902B4(uint64_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < (v4 + 1))
  {
    v7 = 2 * v5;
    if (v5 < 0)
    {
      v7 = -1;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = sub_29919290C(result, v8);
    v4 = v3[3];
  }

  *(v3[1] + v4) = *a2;
  ++v3[3];
  return result;
}

uint64_t sub_299190320(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = v4[27];
  if (v5 == 1)
  {
LABEL_5:
    while (*(a2 + 8) > v4[25] && (sub_29918FE04(a1, a2) & 1) != 0)
    {
      v7 = v4[24];
      if ((*(*(a1 + 224) + ((v7 >> 3) & 0x1FFFFFF8)) >> v7))
      {
        v8 = v4[25];
        *(a2 + 24) = *a2;
        *(a2 + 32) = v8;
        v9 = a1 + 208;
        goto LABEL_11;
      }
    }

    result = 0;
    v4[27] = 3;
  }

  else if (v5 == 3)
  {
    return 0;
  }

  else
  {
    *(v4 + 12) = 0;
    v4[27] = 1;
    if ((**(a1 + 224) & 1) == 0)
    {
      goto LABEL_5;
    }

    *(a2 + 24) = *a2;
    *(a2 + 32) = 0;
    v9 = a1 + 208;
    v7 = 0;
LABEL_11:
    *(a2 + 36) = sub_29919B120(v9, v7);
    return 1;
  }

  return result;
}

uint64_t sub_299190408(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v4 + 108);
  if (v5 == 2)
  {
    do
    {
      while (1)
      {
LABEL_10:
        v10 = *(v4 + 104);
        if (*(v4 + 72) == v10)
        {
          v11 = *(v4 + 56) + 20 * v10;
          *v30 = xmmword_2993FCBE0;
          *&v30[16] = -1;
          v12 = sub_29919B21C(a1, *(v11 - 20));
          *&v30[4] = v12 + 1;
          *v30 = v12 - *(v11 - 20);
          sub_2991909E8((v4 + 48), v30);
          LODWORD(v10) = *(v4 + 104);
        }

        v13 = (*(v4 + 56) + 20 * v10);
        v14 = v13[1];
        v15 = *(*(a1 + 16) + ((v14 >> 3) & 0x1FFFFFF8));
        v13[1] = v14 + 1;
        if ((v15 >> v14))
        {
          break;
        }

        if (v10 == 1)
        {
LABEL_7:
          result = 0;
          *(v4 + 108) = 4;
          return result;
        }

        ++*(v13 - 5);
        sub_299190A74(v4, *(v13 - 8));
        --*(v4 + 104);
      }

      *(v4 + 104) = v10 + 1;
      v16 = *v13;
      if ((*(*(a1 + 432) + ((v16 >> 3) & 0x1FFFFFF8)) >> v16))
      {
        v17 = v13[3];
        if (v17 == -1)
        {
          v18 = sub_29919B120(a1 + 416, v16);
          v16 = *v13;
        }

        else
        {
          v18 = v17 + 1;
        }

        v13[3] = v18;
        v19 = *(a1 + 720);
        v20 = v19 * v18;
        v21 = (v20 & 0x3F) + v19;
        v22 = (*(a1 + 688) + 8 * (v20 >> 6));
        v23 = *v22;
        if (v21 > 0x40)
        {
          v24 = ((2 * v22[1]) << ~v20) | (v23 >> v20);
        }

        else
        {
          v24 = v23 >> (v20 & 0x3F);
        }

        v25 = *(*(a1 + 640) + v16) | ((*(a1 + 728) & v24) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          sub_299192018(v26, a2, v25);
        }

        else
        {
          sub_29919A48C((a1 + 744), a2, v25);
        }
      }

      else
      {
        v30[0] = *(*(a1 + 640) + v16);
        sub_2991902B4(v4, v30);
      }

      v27 = *(v4 + 24);
      v13[2] = v27;
      v28 = *v13;
    }

    while (((*(*(a1 + 224) + ((v28 >> 3) & 0x1FFFFFF8)) >> v28) & 1) == 0);
    v29 = v13[4];
    if (v29 == -1)
    {
      v9 = sub_29919B120(a1 + 208, v28);
      v27 = *(v4 + 24);
    }

    else
    {
      v9 = v29 + 1;
    }

    v13[4] = v9;
    *(a2 + 24) = *(v4 + 8);
    *(a2 + 32) = v27;
  }

  else
  {
    if (v5 == 4)
    {
      return 0;
    }

    sub_299190704(*(a2 + 40));
    while (*(a2 + 8) > *(v4 + 100))
    {
      if ((sub_299190784(a1, a2) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *&v30[12] = -1;
    *v30 = *(v4 + 96);
    *&v30[8] = *(v4 + 24);
    sub_2991909E8((v4 + 48), v30);
    *(v4 + 104) = 1;
    v7 = *(v4 + 96);
    if (((*(*(a1 + 224) + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_10;
    }

    v8 = *(v4 + 24);
    *(a2 + 24) = *(v4 + 8);
    *(a2 + 32) = v8;
    v9 = sub_29919B120(a1 + 208, v7);
  }

  *(a2 + 36) = v9;
  return 1;
}

double sub_299190704(uint64_t a1)
{
  *(a1 + 24) = 0;
  v2 = *(a1 + 32);
  if (v2 <= 0x3F)
  {
    if (v2 <= 0x20)
    {
      v3 = 64;
    }

    else
    {
      v3 = 2 * v2;
    }

    sub_29919290C(a1, v3);
  }

  sub_2991929A4((a1 + 48), 0);
  v4 = *(a1 + 80);
  if (v4 <= 3)
  {
    if (v4 == 3)
    {
      v5 = 6;
    }

    else
    {
      v5 = 4;
    }

    sub_299192A3C((a1 + 48), v5);
  }

  result = 0.0;
  *(a1 + 96) = xmmword_2993FCBF0;
  return result;
}

uint64_t sub_299190784(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v5 = *(v4 + 96);
  v6 = (*(*a2 + *(v4 + 100)) ^ (32 * v5) ^ v5) & *(a1 + 1056);
  v7 = (*(a1 + 1024) + 12 * v6);
  if (v5 != *v7)
  {
    v9 = sub_29919B21C(a1, v5);
    v10 = *(a1 + 16);
    if ((*(v10 + (((v9 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 1)))
    {
      v11 = v9 - *(v4 + 96);
      *(v4 + 96) = v11;
      v12 = v9 + 2;
      v13 = 0xFFFFFFFFLL;
      while (1)
      {
        v14 = v11;
        if ((*(*(a1 + 432) + ((v11 >> 3) & 0x1FFFFFF8)) >> v11))
        {
          if (v13 == 0xFFFFFFFFLL)
          {
            v13 = sub_29919B120(a1 + 416, v11);
            v14 = *(v4 + 96);
          }

          else
          {
            ++v13;
          }

          v15 = *(v4 + 100);
          v16 = *(a1 + 720);
          v17 = v16 * v13;
          v18 = (v16 * v13) & 0x3F;
          v19 = v18 + v16;
          v20 = (*(a1 + 688) + 8 * ((v16 * v13) >> 6));
          v21 = *v20;
          if (v19 > 0x40)
          {
            v22 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
          }

          else
          {
            v22 = v21 >> v18;
          }

          v23 = *(*(a1 + 640) + v14) | ((*(a1 + 728) & v22) << 8);
          v24 = *(a1 + 1000);
          if (v24)
          {
            if (sub_2991923D0(v24, a2, v23))
            {
              return 1;
            }
          }

          else if (sub_29919A5BC((a1 + 744), a2, v23))
          {
            return 1;
          }

          if (*(v4 + 100) != v15)
          {
            return 0;
          }

          v11 = *(v4 + 96);
          v10 = *(a1 + 16);
        }

        else if (*(*(a1 + 640) + v11) == *(*a2 + *(v4 + 100)))
        {
          v28 = *(*(a1 + 640) + v11);
          sub_2991902B4(v4, &v28);
          ++*(v4 + 100);
          return 1;
        }

        *(v4 + 96) = ++v11;
        v25 = *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12;
        ++v12;
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v8 = v7[2];
  if (v8 > 0xFFFFFEFF)
  {
    v29 = v7[2];
    sub_2991902B4(v4, &v29);
    ++*(v4 + 100);
    goto LABEL_25;
  }

  v26 = *(a1 + 1000);
  if (v26)
  {
    if (sub_2991923D0(v26, a2, v8))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((sub_29919A5BC((a1 + 744), a2, v8) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *(v4 + 96) = *(*(a1 + 1024) + 12 * v6 + 4);
  return 1;
}

__n128 sub_2991909E8(uint64_t *a1, __n128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 > 0x666666666666666)
    {
      v7 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    sub_299192A3C(a1, v8);
    v4 = a1[3];
  }

  v9 = (a1[1] + 20 * v4);
  result = *a2;
  v9[1].n128_u32[0] = a2[1].n128_u32[0];
  *v9 = result;
  ++a1[3];
  return result;
}

uint64_t *sub_299190A74(uint64_t *result, size_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 < 0)
    {
      v5 = -1;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_29919290C(result, a2);
  }

  v3[3] = v2;
  return result;
}

uint64_t *sub_299190AC4(uint64_t *a1, uint64_t *a2)
{
  sub_299190B3C(a1, a2);
  v4 = a1[6];
  a1[6] = a2[6];
  a2[6] = v4;
  v5 = a1[7];
  a1[7] = a2[7];
  a2[7] = v5;
  sub_299190B3C(a1 + 8, a2 + 8);
  sub_299190B3C(a1 + 14, a2 + 14);

  return sub_299190B3C(a1 + 20, a2 + 20);
}

uint64_t *sub_299190B3C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

uint64_t *sub_299190B90(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_2991947D0(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 24 * v6;
    do
    {
      v9 = v3[1] + v8;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v8 += 24;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t sub_299190C20(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  sub_299194888(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (a2[3])
  {
    sub_299191090(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_29919265C(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_29919265C(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  sub_299190F70(a1 + 416, 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  sub_299194FEC((a1 + 672), v18);
  sub_299191880(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x29C29BF70](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_299190DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_299190E04(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 60)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    sub_299192BB4(a1, a2);
  }

  v6 = a1[3];
  if (v2 > v6)
  {
    bzero((a1[1] + 8 * v6), 8 * (v2 - v6));
  }

  a1[3] = v2;
}

uint64_t *sub_299190E78(uint64_t *result, int a2)
{
  v2 = result[6];
  if (v2 == 0xFFFFFFFF)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h";
    exception[2] = 0x700000034;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h:52: MARISA_SIZE_ERROR: size_ == MARISA_UINT32_MAX";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v4 = result;
  v5 = result[3];
  if (v2 == v5 << 6)
  {
    v7 = 0;
    result = sub_299192AE4(result, v5 + 1, &v7);
    v2 = v4[6];
  }

  if (a2)
  {
    *(v4[1] + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    ++v4[7];
  }

  v4[6] = v2 + 1;
  return result;
}

uint64_t sub_299190F70(uint64_t a1, int a2, int a3)
{
  memset(v8, 0, 41);
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v8[3] = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_29919B5EC(v8, a1, a2, a3);
  sub_299192C4C(a1);
  v4 = v8[0];
  v8[0] = *a1;
  *a1 = v4;
  v5 = *&v8[1];
  *&v8[1] = *(a1 + 16);
  *(a1 + 16) = v5;
  v6 = *(&v8[1] + 8);
  *(&v8[1] + 8) = *(a1 + 24);
  *(a1 + 24) = v6;
  LOBYTE(v5) = BYTE8(v8[2]);
  BYTE8(v8[2]) = *(a1 + 40);
  *(a1 + 40) = v5;
  sub_299190AC4(a1, v8);
  if (v13)
  {
    MEMORY[0x29C29BF70](v13, 0x1000C8077774924);
  }

  if (v11)
  {
    MEMORY[0x29C29BF70](v11, 0x1000C8077774924);
  }

  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x29C29BF70](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_299191090(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    sub_29919130C(&v26, a2[3]);
    v9 = a2[3];
    if (v9)
    {
      v10 = (*(&v26 + 1) + 8);
      v11 = (a2[1] + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 + v13 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    sub_299199B70((a1 + 744), &v26, a3, *(a4 + 12));
    result = v26;
    if (v26)
    {
      return MEMORY[0x29C29BF70]();
    }
  }

  else
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    sub_299190B90(&v26, a2[3]);
    if (a2[3])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(&v26 + 1) + v16;
        v19 = a2[1] + v16;
        v20 = *(v19 + 8);
        *v18 = *v19 + v20;
        *(v18 + 8) = v20;
        *(v18 + 12) = *(v19 + 12);
        ++v17;
        v16 += 24;
      }

      while (v17 < a2[3]);
    }

    v21 = *a2;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 25) = 0u;
    if (v21)
    {
      MEMORY[0x29C29BF70](v21, 0x1000C8077774924);
    }

    v22 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
    v23 = v22;
    if (v22)
    {
      sub_29918ED80(v22);
    }

    v24 = (a1 + 1000);
    sub_29919138C(v24, v23);
    if (!*v24)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001C3;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:451: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    sub_299191428(*v24, &v26, a3, a4, a5 + 1);
    result = v26;
    if (v26)
    {
      return MEMORY[0x29C29BF70]();
    }
  }

  return result;
}

void sub_2991912B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x29C29BF90](v9, MEMORY[0x29EDC9418]);
  if (a9)
  {
    MEMORY[0x29C29BF70]();
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29919130C(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 59)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_299198858(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = (v3[1] + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

void **sub_29919138C(void *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v4 = *a1;
  *a1 = a2;
  return sub_29919478C(&v4);
}

uint64_t sub_299191428(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  sub_2991988FC(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (*(a2 + 24))
  {
    sub_29919160C(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_29919265C(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    sub_29919265C(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  sub_299190F70(a1 + 416, 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  sub_299194FEC((a1 + 672), v18);
  sub_299191880(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x29C29BF70](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_2991915E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29919160C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    memset(v19, 0, 41);
    sub_29919130C(v19, *(a2 + 24));
    v9 = *(a2 + 24);
    if (v9)
    {
      v10 = (*(&v19[0] + 1) + 8);
      v11 = (*(a2 + 8) + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    sub_299199B70((a1 + 744), v19, a3, *(a4 + 12));
    result = *&v19[0];
    if (*&v19[0])
    {
      return MEMORY[0x29C29BF70](*&v19[0], 0x1000C8077774924);
    }
  }

  else
  {
    v15 = operator new(0x470uLL, MEMORY[0x29EDC9418]);
    v16 = v15;
    if (v15)
    {
      sub_29918ED80(v15);
    }

    v17 = (a1 + 1000);
    sub_29919138C(v17, v16);
    if (!*v17)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001D4;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:468: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    return sub_299191428();
  }

  return result;
}

uint64_t *sub_2991917EC(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_299199740(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 12 * v6;
    do
    {
      v9 = v3[1] + v8;
      *v9 = 0;
      *(v9 + 8) = 0x800000;
      v8 += 12;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t sub_299191880(uint64_t result)
{
  v1 = *(result + 1032);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(v2 + 1016) + v3;
      v6 = *(v5 + 4);
      if (v6)
      {
        *(v5 + 8) = *(*(v2 + 632) + v6);
        v7 = *(v2 + 1016);
        if ((*(*(v2 + 432) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6))
        {
          result = sub_29919B120(v2 + 416, v6);
          v8 = *(v2 + 720);
          v9 = v8 * result;
          v10 = (v8 * result) & 0x3F;
          v11 = v10 + v8;
          v12 = (*(v2 + 688) + 8 * ((v8 * result) >> 6));
          v13 = *v12;
          if (v11 > 0x40)
          {
            v14 = ((2 * v12[1]) << ~v9) | (v13 >> v9);
          }

          else
          {
            v14 = v13 >> v10;
          }

          v15 = (*(v2 + 728) & v14) << 8;
        }

        else
        {
          v15 = -256;
        }

        *(v7 + v3 + 8) = *(v7 + v3 + 8) | v15;
        v1 = *(v2 + 1032);
      }

      else
      {
        *v5 = -1;
      }

      v3 += 12;
    }
  }

  return result;
}

uint64_t sub_299191988(uint64_t *a1, uint64_t *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_299192CE4(v4, a2);
  sub_299190AC4(a1, v4);
  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    return MEMORY[0x29C29BF70](*&v4[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_299191A54(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_2991997E8(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299191AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299191B14(__int128 *a1, uint64_t *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_2991935F0(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299191BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299191C10(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_299193250(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299191CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299191CD0(uint64_t *a1, uint64_t a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_2991936BC(v4, a2);
  sub_299190AC4(a1, v4);
  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    return MEMORY[0x29C29BF70](*&v4[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_299191D9C(__int128 *a1, uint64_t a2)
{
  memset(v7, 0, 41);
  sub_29919985C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299191E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299191E5C(__int128 *a1, uint64_t a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_2991941D4(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299191F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299191F58(__int128 *a1, uint64_t a2)
{
  memset(v7, 0, 41);
  sub_29919995C(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299191FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_299192018(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a2 + 40);
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 1056) & a3;
      v8 = *(a1 + 1024) + 12 * v7;
      if (a3 != *(v8 + 4))
      {
        break;
      }

      v9 = *(v8 + 8);
      if (v9 <= 0xFFFFFEFF)
      {
        v20 = *(a1 + 1000);
        if (v20)
        {
          result = sub_299192018(v20, a2, v9);
        }

        else
        {
          result = sub_29919A48C((a1 + 744), a2, v9);
        }
      }

      else
      {
        v24 = *(v8 + 8);
        result = sub_2991902B4(v6, &v24);
      }

      a3 = *(*(a1 + 1024) + 12 * v7);
      if (!a3)
      {
        return result;
      }
    }

    if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
    {
      v11 = *(*(a1 + 640) + a3);
      v12 = sub_29919B120(a1 + 416, a3);
      v13 = *(a1 + 720);
      v14 = v13 * v12;
      v15 = (v13 * v12) & 0x3F;
      v16 = v15 + v13;
      v17 = (*(a1 + 688) + 8 * ((v13 * v12) >> 6));
      v18 = *v17;
      v19 = v16 > 0x40 ? ((2 * v17[1]) << ~v14) | (v18 >> v14) : v18 >> v15;
      v21 = v11 | ((*(a1 + 728) & v19) << 8);
      v22 = *(a1 + 1000);
      result = v22 ? sub_299192018(v22, a2, v21) : sub_29919A48C((a1 + 744), a2, v21);
    }

    else
    {
      v23 = *(*(a1 + 640) + a3);
      result = sub_2991902B4(v6, &v23);
    }

    if (a3 <= *(a1 + 1064))
    {
      break;
    }

    a3 = sub_29919B480(a1, a3) + ~a3;
  }

  return result;
}

uint64_t sub_2991921AC(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = a2[5];
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 1056) & a3;
      v8 = *(a1 + 1024) + 12 * v7;
      if (a3 == *(v8 + 4))
      {
        break;
      }

      if (((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        v22 = *(v6 + 100);
        if (*(*(a1 + 640) + a3) != *(*a2 + v22))
        {
          return 0;
        }

        *(v6 + 100) = v22 + 1;
        goto LABEL_28;
      }

      v11 = *(a1 + 1000);
      v12 = *(*(a1 + 640) + a3);
      v13 = sub_29919B120(a1 + 416, a3);
      v14 = *(a1 + 720);
      v15 = v14 * v13;
      v16 = (v14 * v13) & 0x3F;
      v17 = v16 + v14;
      v18 = (*(a1 + 688) + 8 * ((v14 * v13) >> 6));
      v19 = *v18;
      if (v11)
      {
        if (v17 > 0x40)
        {
          v20 = ((2 * v18[1]) << ~v15) | (v19 >> v15);
        }

        else
        {
          v20 = v19 >> v16;
        }

        v24 = v12 | ((*(a1 + 728) & v20) << 8);
        v25 = *(a1 + 1000);
        if (v25)
        {
          if ((sub_2991921AC(v25, a2, v24) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (v17 > 0x40)
        {
          v23 = ((2 * v18[1]) << ~v15) | (v19 >> v15);
        }

        else
        {
          v23 = v19 >> v16;
        }

        v24 = v12 | ((*(a1 + 728) & v23) << 8);
      }

      if ((sub_29919A518((a1 + 744), a2, v24) & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      if (a3 <= *(a1 + 1064))
      {
        return 1;
      }

      if (a2[1] <= *(v6 + 100))
      {
        return 0;
      }

      a3 = sub_29919B480(a1, a3) + ~a3;
    }

    v9 = *(v8 + 8);
    if (v9 <= 0xFFFFFEFF)
    {
      v21 = *(a1 + 1000);
      if (v21)
      {
        if ((sub_2991921AC(v21, a2, v9) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((sub_29919A518((a1 + 744), a2, v9) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v10 = *(v6 + 100);
      if (*(*a2 + v10) != v9)
      {
        return 0;
      }

      *(v6 + 100) = v10 + 1;
    }

    a3 = *(*(a1 + 1024) + 12 * v7);
    if (!a3)
    {
      return 1;
    }

    if (a2[1] <= *(v6 + 100))
    {
      return 0;
    }
  }
}

uint64_t sub_2991923D0(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2[5];
  while (1)
  {
    v7 = *(a1 + 1056) & a3;
    v8 = *(a1 + 1024) + 12 * v7;
    if (a3 != *(v8 + 4))
    {
      v10 = *(*(a1 + 640) + a3);
      if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        v11 = sub_29919B120(a1 + 416, a3);
        v12 = *(a1 + 720);
        v13 = v12 * v11;
        v14 = (v12 * v11) & 0x3F;
        v15 = v14 + v12;
        v16 = (*(a1 + 688) + 8 * ((v12 * v11) >> 6));
        v17 = *v16;
        if (v15 > 0x40)
        {
          v18 = ((2 * v16[1]) << ~v13) | (v17 >> v13);
        }

        else
        {
          v18 = v17 >> v14;
        }

        v20 = v10 | ((*(a1 + 728) & v18) << 8);
        v21 = *(a1 + 1000);
        if (v21)
        {
          if ((sub_2991923D0(v21, a2, v20) & 1) == 0)
          {
            return 0;
          }
        }

        else if ((sub_29919A5BC((a1 + 744), a2, v20) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v10 != *(*a2 + *(v6 + 100)))
        {
          return 0;
        }

        v23 = *(*(a1 + 640) + a3);
        sub_2991902B4(v6, &v23);
        ++*(v6 + 100);
      }

      if (a3 <= *(a1 + 1064))
      {
        return 1;
      }

      a3 = sub_29919B480(a1, a3) + ~a3;
      goto LABEL_23;
    }

    v9 = *(v8 + 8);
    if (v9 > 0xFFFFFEFF)
    {
      if (*(*a2 + *(v6 + 100)) != v9)
      {
        return 0;
      }

      v24 = *(v8 + 8);
      sub_2991902B4(v6, &v24);
      ++*(v6 + 100);
      goto LABEL_22;
    }

    v19 = *(a1 + 1000);
    if (!v19)
    {
      break;
    }

    if ((sub_2991923D0(v19, a2, v9) & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    a3 = *(*(a1 + 1024) + 12 * v7);
    if (!a3)
    {
      return 1;
    }

LABEL_23:
    if (a2[1] <= *(v6 + 100))
    {
      sub_299192018(a1, a2, a3);
      return 1;
    }
  }

  if (sub_29919A5BC((a1 + 744), a2, v9))
  {
    goto LABEL_22;
  }

  return 0;
}

void *sub_2991925D8(void *a1)
{
  v2 = a1[26];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  v3 = a1[20];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  v4 = a1[14];
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
  }

  v5 = a1[6];
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  if (*a1)
  {
    MEMORY[0x29C29BF70](*a1, 0x1000C8077774924);
  }

  return a1;
}

uint64_t sub_29919265C(void *a1, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x50000003BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:59: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  if ((a2 & 0x7F) != 0)
  {
    *a1 = a2 & 0x7F;
  }

  sub_299192724(a1, a2);
  sub_2991927E4(a1, a2);

  return sub_299192878(a1, a2);
}

uint64_t sub_299192724(uint64_t result, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000065;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:101: MARISA_CODE_ERROR: undefined cache level";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

LABEL_11:
  *(result + 8) = v3;
  return result;
}

uint64_t sub_2991927E4(uint64_t result, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000079;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:121: MARISA_CODE_ERROR: undefined tail mode";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    v2 = 0x2000;
  }

  *(result + 12) = v2;
  return result;
}

uint64_t sub_299192878(uint64_t result, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_2A1F37658;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008DLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:141: MARISA_CODE_ERROR: undefined node order";
      __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
    }

    v2 = 0x10000;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *sub_29919290C(uint64_t *a1, size_t __sz)
{
  result = operator new[](__sz, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = __sz;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t *sub_2991929A4(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0x666666666666666)
    {
      v5 = 0xCCCCCCCCCCCCCCCLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_299192A3C(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = (v3[1] + 20 * v6 + 16);
    do
    {
      *(v8 - 1) = xmmword_2993FCBE0;
      *v8 = -1;
      v8 += 5;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

_DWORD *sub_299192A3C(uint64_t *a1, uint64_t a2)
{
  result = operator new[](20 * a2, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6;
      v7[4] = *(v6 + 4);
      *v7 = v8;
      v7 += 5;
      v6 = (v6 + 20);
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t *sub_299192AE4(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (v6 < a2)
  {
    v7 = 2 * v6;
    if (v6 >> 60)
    {
      v7 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v6 > a2 >> 1)
    {
      a2 = v7;
    }

    result = sub_299192BB4(result, a2);
  }

  v8 = v5[3];
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = 0;
    v11 = *a3;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = v5[1] + 8 * v8;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2993FCC00)));
      if (v14.i8[0])
      {
        *(v13 + 8 * v10) = v11;
      }

      if (v14.i8[4])
      {
        *(v13 + 8 * v10 + 8) = v11;
      }

      v10 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
  }

  v5[3] = v4;
  return result;
}

void *sub_299192BB4(uint64_t *a1, uint64_t a2)
{
  result = operator new[](8 * a2, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

void *sub_299192C4C(void *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0x100000064;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:100: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v2 = result[3];
  if (v2 != result[4])
  {

    return sub_299192BB4(result, v2);
  }

  return result;
}

uint64_t sub_299192CE4(uint64_t a1, uint64_t *a2)
{
  sub_299192DD0(a1, a2);
  *(a1 + 48) = *sub_29918E238(a2, 4uLL);
  v4 = *sub_29918E238(a2, 4uLL);
  if (*(a1 + 48) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h";
    exception[2] = 0xA00000087;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h:135: MARISA_FORMAT_ERROR: temp_num_1s > size_";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  *(a1 + 56) = v4;
  sub_299192E90((a1 + 64), a2);
  sub_299192F50((a1 + 112), a2);

  return sub_299192F50((a1 + 160), a2);
}

uint64_t sub_299192DD0(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_299193010(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299192E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299192E90(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_299193250(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299192F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299192F50(__int128 *a1, uint64_t *a2)
{
  memset(v7, 0, 41);
  sub_299193430(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_299192FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299193010(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_29918E238(a2, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v5 = v4 >> 3;
  sub_2991930EC(a2, (a1 + 16), v4 >> 3);
  sub_29918E15C(a2, 0);
  *(a1 + 24) = v5;

  return sub_2991931CC(a1);
}

uint64_t sub_2991930EC(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  result = sub_29918E238(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_2991931CC(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0x10000006BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:107: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  *(result + 40) = 1;
  return result;
}

uint64_t sub_299193250(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_29918E238(a2, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  sub_299193340(a2, (a1 + 16), v5);
  sub_29918E15C(a2, -v4 & 7);
  *(a1 + 24) = v5;

  return sub_2991931CC(a1);
}

uint64_t sub_299193340(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  result = sub_29918E238(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t sub_299193430(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_29918E238(a2, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  sub_299193510(a2, (a1 + 16), v4 >> 2);
  sub_29918E15C(a2, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return sub_2991931CC(a1);
}

uint64_t sub_299193510(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  result = sub_29918E238(a1, 4 * a3);
  *a2 = result;
  return result;
}

void *sub_2991935F0(uint64_t a1, uint64_t *a2)
{
  sub_299192DD0(a1, a2);
  v4 = *sub_29918E238(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h:134: MARISA_FORMAT_ERROR: temp_value_size > 32";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  *(a1 + 48) = v4;
  *(a1 + 56) = *sub_29918E238(a2, 4uLL);
  result = sub_29918E238(a2, 8uLL);
  *(a1 + 64) = *result;
  return result;
}

uint64_t sub_2991936BC(uint64_t a1, uint64_t a2)
{
  sub_2991937B4(a1, a2);
  v7 = 0;
  sub_29918E67C(a2, &v7, 4uLL);
  *(a1 + 48) = v7;
  v6 = 0;
  sub_29918E67C(a2, &v6, 4uLL);
  if (*(a1 + 48) < v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h";
    exception[2] = 0xA00000099;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h:153: MARISA_FORMAT_ERROR: temp_num_1s > size_";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  *(a1 + 56) = v6;
  sub_299193874((a1 + 64), a2);
  sub_299193934((a1 + 112), a2);
  return sub_299193934((a1 + 160), a2);
}

uint64_t sub_2991937B4(__int128 *a1, uint64_t a2)
{
  memset(v7, 0, 41);
  sub_2991939F4(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_29919384C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299193874(__int128 *a1, uint64_t a2)
{
  memset(v7, 0, 41);
  sub_299193C10(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_29919390C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299193934(__int128 *a1, uint64_t a2)
{
  memset(v7, 0, 41);
  sub_299193F20(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991939CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991939F4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  sub_29918E67C(a2, &v7, 8uLL);
  if ((v7 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:213: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v4 = v7 >> 3;
  sub_299193ADC(a1, v7 >> 3);
  sub_299193B34(a2, *(a1 + 8), v4);
  return sub_29918E550(a2, -v7 & 7);
}

uint64_t *sub_299193ADC(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 60)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_299192BB4(result, a2);
  }

  v3[3] = v2;
  return result;
}

uint64_t sub_299193B34(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h";
    exception[2] = 0x700000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h:33: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = 8 * a3;

  return sub_29918E67C(a1, a2, v3);
}

uint64_t sub_299193C10(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  sub_29918E67C(a2, &v7, 8uLL);
  v4 = v7 / 0xC;
  if (v7 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:213: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  sub_299193D08(a1, v7 / 0xC);
  sub_299193D8C(a2, *(a1 + 8), v4);
  return sub_29918E550(a2, -v7 & 7);
}

void sub_299193D08(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    sub_299193E78(a1, a2);
  }

  v6 = a1[3];
  if (v2 > v6)
  {
    bzero((a1[1] + 12 * v6), 12 * (v2 - v6));
  }

  a1[3] = v2;
}

uint64_t sub_299193D8C(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h";
    exception[2] = 0x700000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h:33: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = 12 * a3;

  return sub_29918E67C(a1, a2, v3);
}

_DWORD *sub_299193E78(uint64_t *a1, uint64_t a2)
{
  result = operator new[](12 * a2, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6;
      v7[2] = *(v6 + 2);
      *v7 = v8;
      v7 += 3;
      v6 = (v6 + 12);
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t sub_299193F20(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  sub_29918E67C(a2, &v7, 8uLL);
  if ((v7 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:213: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v4 = v7 >> 2;
  sub_299194008(a1, v7 >> 2);
  sub_299194060(a2, *(a1 + 8), v4);
  return sub_29918E550(a2, -v7 & 7);
}

uint64_t *sub_299194008(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 61)
    {
      v5 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = sub_29919413C(result, a2);
  }

  v3[3] = v2;
  return result;
}

uint64_t sub_299194060(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h";
    exception[2] = 0x700000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h:33: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = 4 * a3;

  return sub_29918E67C(a1, a2, v3);
}

_DWORD *sub_29919413C(uint64_t *a1, uint64_t a2)
{
  result = operator new[](4 * a2, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t sub_2991941D4(uint64_t a1, uint64_t a2)
{
  sub_2991937B4(a1, a2);
  LODWORD(v6) = 0;
  sub_29918E67C(a2, &v6, 4uLL);
  if (v6 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h";
    exception[2] = 0xA0000009BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h:155: MARISA_FORMAT_ERROR: temp_value_size > 32";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  *(a1 + 48) = v6;
  LODWORD(v6) = 0;
  sub_29918E67C(a2, &v6, 4uLL);
  *(a1 + 56) = v6;
  v6 = 0;
  result = sub_29918E67C(a2, &v6, 8uLL);
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_2991942C0(uint64_t a1, uint64_t a2)
{
  sub_299194344(a1, a2);
  __buf = *(a1 + 48);
  sub_29918EA74(a2, &__buf, 4uLL);
  v5 = *(a1 + 56);
  sub_29918EA74(a2, &v5, 4uLL);
  sub_299194480(a1 + 64, a2);
  sub_2991945D4(a1 + 112, a2);
  return sub_2991945D4(a1 + 160, a2);
}

uint64_t sub_299194344(uint64_t a1, uint64_t a2)
{
  __buf = 8 * *(a1 + 24);
  sub_29918EA74(a2, &__buf, 8uLL);
  sub_2991943A4(a2, *(a1 + 16), *(a1 + 24));
  return sub_29918E938(a2, 0);
}

uint64_t sub_2991943A4(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h";
    exception[2] = 0x20000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = 8 * a3;

  return sub_29918EA74(a1, a2, v3);
}

uint64_t sub_299194480(uint64_t a1, uint64_t a2)
{
  __buf = 12 * *(a1 + 24);
  sub_29918EA74(a2, &__buf, 8uLL);
  sub_2991944E8(a2, *(a1 + 16), *(a1 + 24));
  return sub_29918E938(a2, 4 * (*(a1 + 24) & 1));
}

uint64_t sub_2991944E8(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h";
    exception[2] = 0x20000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = 12 * a3;

  return sub_29918EA74(a1, a2, v3);
}

uint64_t sub_2991945D4(uint64_t a1, uint64_t a2)
{
  __buf = 4 * *(a1 + 24);
  sub_29918EA74(a2, &__buf, 8uLL);
  sub_299194638(a2, *(a1 + 16), *(a1 + 24));
  return sub_29918E938(a2, 4 * (*(a1 + 24) & 1));
}

uint64_t sub_299194638(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h";
    exception[2] = 0x20000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v3 = 4 * a3;

  return sub_29918EA74(a1, a2, v3);
}

uint64_t sub_299194714(uint64_t a1, uint64_t a2)
{
  sub_299194344(a1, a2);
  LODWORD(__buf) = *(a1 + 48);
  sub_29918EA74(a2, &__buf, 4uLL);
  LODWORD(__buf) = *(a1 + 56);
  sub_29918EA74(a2, &__buf, 4uLL);
  __buf = *(a1 + 64);
  return sub_29918EA74(a2, &__buf, 8uLL);
}

void **sub_29919478C(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_29918EFB8(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F0C4010279AD7);
  }

  return a1;
}

char *sub_2991947D0(uint64_t *a1, uint64_t a2)
{
  result = operator new[](24 * a2, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = result + 16;
    v7 = (a1[1] + 16);
    do
    {
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 1) = *(v7 - 1);
      v8 = *v7;
      v7 += 6;
      *v6 = v8;
      v6 += 6;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t sub_299194888(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 8);
  if (v10)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v10 - 1);
    v14 = xmmword_2993FCC10;
    v15 = xmmword_2993FCC00;
    v16 = (v11 + 64);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v13, v15));
      if (vuzp1_s16(v18, *v13.i8).u8[0])
      {
        *(v16 - 12) = v12;
      }

      if (vuzp1_s16(v18, *&v13).i8[2])
      {
        *(v16 - 6) = v12 + 1;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
      {
        *v16 = v12 + 2;
        v16[6] = v12 + 3;
      }

      v12 += 4;
      v14 = vaddq_s64(v14, v17);
      v15 = vaddq_s64(v15, v17);
      v16 += 24;
    }

    while (((v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
  }

  v19 = sub_299195388(v11, v11 + 24 * v10, 0);
  v20 = 256;
  if (a5 != 1)
  {
    v20 = 1;
  }

  do
  {
    v21 = v20;
    v20 *= 2;
  }

  while (v21 < v19 / *(a4 + 8));
  sub_2991917EC(a1 + 126, v21);
  a1[132] = v21 - 1;
  sub_299190E78(a1, 1);
  sub_299190E78(a1, 0);
  LOBYTE(v71[0]) = 0;
  sub_2991902B4(a1 + 78, v71);
  sub_299190E78(a1 + 52, 0);
  v61 = a3;
  v62 = a5;
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  sub_299195950(v69, &v65);
  v22 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v63 = a4;
    do
    {
      v23 = a1[58];
      v24 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v22 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v28 = v23 - v22;
      if (v25 < v26)
      {
        while (1)
        {
          v29 = *(a2 + 8) + 24 * v25;
          if (*(v29 + 8) != v27)
          {
            break;
          }

          *(v29 + 12) = v28;
          v25 = (v25 + 1);
          if (v26 == v25)
          {
            goto LABEL_51;
          }
        }
      }

      if (v25 != v26)
      {
        v30 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v30)
        {
          MEMORY[0x29C29BF70](v30, 0x1000C8077774924);
        }

        v31 = *(a2 + 8);
        v32 = *(v31 + 24 * v25 + 12);
        v33 = v25 + 1;
        if (v25 + 1 < v26)
        {
          v64 = v23;
          v34 = v32;
          v35 = 24 * v25;
          v36 = (v25 << 32) + 0x100000000;
          do
          {
            if (*(*(v31 + v35) + v27) != *(*(v31 + v35 + 24) + v27))
            {
              *&v37 = v34;
              v65.n128_u64[0] = v36 + v25;
              v65.n128_u64[1] = v27 | (v37 << 32);
              sub_2991950E8(&v67, &v65);
              v31 = *(a2 + 8);
              v34 = 0.0;
              LODWORD(v25) = v33;
            }

            v34 = v34 + *(v31 + v35 + 36);
            ++v33;
            v35 += 24;
            v36 += 0x100000000;
          }

          while (v26 != v33);
          v32 = v34;
          a4 = v63;
          v23 = v64;
        }

        v65.n128_u32[0] = v25;
        v65.n128_u32[1] = v26;
        v65.n128_u64[1] = v27 | (LODWORD(v32) << 32);
        v38 = sub_2991950E8(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          sub_2991960D8(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v38);
        }

        v39 = v68[1];
        if (v23 == v22)
        {
          a1[133] = v68[1];
        }

        if (v39)
        {
          v40 = 0;
          do
          {
            v41 = (*(&v67 + 1) + 16 * v40);
            v42 = *(v41 + 2);
            v43 = *(a2 + 8) + 24 * *v41;
            v44 = *(v43 + 8);
            v45 = v42 + 1;
            if (v42 + 1 >= v44)
            {
              v46 = *(v41 + 2);
              LODWORD(v44) = v42 + 1;
            }

            else
            {
              v46 = v44 - 1;
              v47 = *(v41 + 2);
              do
              {
                v48 = v47;
                v47 = v45;
                v49 = (*(a2 + 8) + 24 * *v41);
                v50 = *v41;
                while (++v50 < *(v41 + 1))
                {
                  v51 = *v49;
                  v52 = v49[3];
                  v49 += 3;
                  if (*(v51 + v47) != *(v52 + v47))
                  {
                    v46 = v48;
                    LODWORD(v44) = v47;
                    goto LABEL_45;
                  }
                }

                v45 = v47 + 1;
              }

              while (v47 + 1 != v44);
            }

LABEL_45:
            v53 = v41[3];
            v54 = a1[127] + 12 * (((32 * v28) ^ v28 ^ *(*v43 + v42)) & a1[132]);
            if (*(v54 + 8) < v53)
            {
              v55 = a1[81];
              *v54 = v28;
              *(v54 + 4) = v55;
              *(v54 + 8) = v53;
              v42 = *(v41 + 2);
            }

            if (v46 == v42)
            {
              v65.n128_u8[0] = *(*(*(a2 + 8) + 24 * *v41) + v46);
              sub_2991902B4(a1 + 78, &v65);
              sub_299190E78(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              sub_2991902B4(a1 + 78, &v65);
              sub_299190E78(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v56 = *(v41 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v41) + v56;
              v65.n128_u64[1] = (v44 - v56);
              v65.n128_f32[3] = v41[3];
              sub_29919515C(v71, &v65);
            }

            *(v41 + 2) = v44;
            sub_299195950(v69, v41);
            sub_299190E78(a1, 1);
            ++v40;
          }

          while (v40 < v68[1]);
        }
      }

LABEL_51:
      sub_299190E78(a1, 0);
      v22 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  sub_299190E78(a1, 0);
  sub_299190F70(a1, v62 == 1, 1);
  sub_2991951F8(a1 + 624);
  sub_299195290(a1, a2, v61);
  v57 = *a2;
  *a2 = v71[0];
  v71[0] = v57;
  v58 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v58;
  v59 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v59;
  LOBYTE(v58) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v58;
  if (v67)
  {
    MEMORY[0x29C29BF70](v67, 0x1000C8077774924);
  }

  sub_299196BF8(v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x29C29BF70](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_299194EE4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x29C29BF70](a11, 0x1000C8077774924);
  }

  sub_299196BF8(va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x29C29BF70](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001ACLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:428: MARISA_MEMORY_ERROR: std::bad_alloc";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299194FEC(__int128 *a1, uint64_t a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_299196CF4(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_2991950C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2991950E8(uint64_t *a1, __n128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 59)
    {
      v7 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    sub_299196040(a1, v8);
    v4 = a1[3];
  }

  result = *a2;
  *(a1[1] + 16 * v4) = *a2;
  ++a1[3];
  return result;
}

uint64_t *sub_29919515C(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 > 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = sub_2991947D0(result, v8);
    v4 = v3[3];
  }

  v9 = v3[1] + 24 * v4;
  *v9 = *a2;
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 12) = *(a2 + 12);
  *(v9 + 16) = *(a2 + 16);
  ++v3[3];
  return result;
}

_BYTE *sub_2991951F8(_BYTE *result)
{
  if (result[40] == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0x100000064;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:100: MARISA_STATE_ERROR: fixed_";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return sub_29919290C(result, v2);
  }

  return result;
}

uint64_t sub_299195290(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  sub_299194008(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_299195360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299195388(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    v10 = sub_29919578C(v9, v9 + 24 * (v6 / 0x30uLL), v4 - 24, a3);
    v11 = v10;
    v12 = v9;
    v5 = v4;
    v13 = v9;
    v14 = v4;
    while (v12 < v5)
    {
      v15 = *(v12 + 8);
      v16 = a3 >= v15 ? -1 : *(*v12 + a3);
      if (v16 > v10)
      {
        break;
      }

      if (v16 == v10)
      {
        v17 = *v12;
        *v12 = *v13;
        *(v12 + 8) = *(v13 + 8);
        v18 = *(v12 + 12);
        *(v12 + 12) = *(v13 + 12);
        *(v12 + 16) = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v15;
        *(v13 + 12) = v18;
        v13 += 24;
      }

LABEL_11:
      v12 += 24;
    }

    if (v12 < v5)
    {
      v19 = v5 - 24;
      do
      {
        v5 = v19;
        v20 = *(v19 + 8);
        if (a3 >= v20)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(*v5 + a3);
        }

        if (v21 < v10)
        {
          break;
        }

        if (v21 == v10)
        {
          v22 = *(v14 - 24);
          v14 -= 24;
          v23 = *v5;
          *v5 = v22;
          *(v5 + 8) = *(v14 + 8);
          v24 = *(v5 + 12);
          *(v5 + 12) = *(v14 + 12);
          *(v5 + 16) = *(v14 + 16);
          *v14 = v23;
          *(v14 + 8) = v20;
          *(v14 + 12) = v24;
        }

        v19 = v5 - 24;
      }

      while (v12 < v5);
    }

    if (v12 < v5)
    {
      v25 = *v12;
      v26 = *(v12 + 16);
      *v12 = *v5;
      v27 = *(v12 + 8);
      *(v12 + 8) = *(v5 + 8);
      *(v12 + 12) = *(v5 + 12);
      *(v12 + 16) = *(v5 + 16);
      *v5 = v25;
      *(v5 + 8) = v27;
      *(v5 + 16) = v26;
      goto LABEL_11;
    }

    if (v13 > v9)
    {
      v28 = 0;
      do
      {
        v29 = v13 + v28;
        v30 = v12 + v28;
        v31 = *(v13 + v28 - 24);
        v32 = *(v13 + v28 - 8);
        *(v29 - 24) = *(v12 + v28 - 24);
        v33 = *(v13 + v28 - 16);
        *(v29 - 16) = *(v12 + v28 - 16);
        *(v29 - 12) = *(v12 + v28 - 12);
        *(v29 - 8) = *(v12 + v28 - 8);
        *(v30 - 24) = v31;
        *(v30 - 16) = v33;
        *(v30 - 8) = v32;
        v28 -= 24;
      }

      while (v13 + v28 > v9);
      v12 += v28;
    }

    while (v14 < v4)
    {
      v34 = *v14;
      v35 = *(v14 + 16);
      *v14 = *v5;
      v36 = *(v14 + 8);
      *(v14 + 8) = *(v5 + 8);
      *(v14 + 12) = *(v5 + 12);
      *(v14 + 16) = *(v5 + 16);
      *v5 = v34;
      *(v5 + 8) = v36;
      *(v5 + 16) = v35;
      v14 += 24;
      v5 += 24;
    }

    v37 = v12 - v8;
    v38 = v5 - v12;
    if (v37 <= (v5 - v12))
    {
      v39 = v4 - v5;
      if ((v4 - v5) <= v38)
      {
        if (v37 == 24)
        {
          ++v7;
        }

        else if (v37 >= 25)
        {
          v7 += sub_299195388(v9, v12, a3);
        }

        if (v39 == 24)
        {
          ++v7;
        }

        else if (v39 >= 25)
        {
          v7 += sub_299195388(v5, v4, a3);
        }

        if (v38 == 24)
        {
          ++v7;
        }

        else if (v38 >= 25)
        {
          if (v11 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_60;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v12;
        goto LABEL_60;
      }
    }

    if (v38 == 24)
    {
      goto LABEL_32;
    }

    if (v38 >= 25)
    {
      if (v10 == -1)
      {
LABEL_32:
        ++v7;
      }

      else
      {
        v7 += sub_299195388(v12, v5, a3 + 1);
      }
    }

    v40 = v4 - v5;
    if (v37 >= (v4 - v5))
    {
      if (v40 == 24)
      {
        ++v7;
      }

      else if (v40 >= 25)
      {
        v7 += sub_299195388(v5, v4, a3);
      }

      v4 = v12;
      v5 = v9;
    }

    else if (v37 == 24)
    {
      ++v7;
    }

    else if (v37 >= 25)
    {
      v7 += sub_299195388(v9, v12, a3);
    }

LABEL_60:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_64:
  if (v6 >= 25)
  {
    v7 += sub_299195800(v5, v4, a3);
  }

  return v7;
}

uint64_t sub_29919578C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 + a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 + a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 + a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_299195800(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 24;
  if (a1 + 24 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v15 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 24;
        v10 = sub_2991958E4(v8 - 24, v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 24);
        v12 = *(v8 - 8);
        *(v8 - 24) = *v8;
        v13 = *(v8 + 8);
        *(v8 - 8) = *(v8 + 16);
        *v8 = v11;
        v14 = *(v8 - 16);
        *(v8 - 16) = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v15 = v10 != 0;
    }

    v7 += v15;
    v3 += 24;
  }

  while (v3 < a2);
  return v7;
}

uint64_t sub_2991958E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a1 + a3);
    v8 = (*a2 + a3);
    while (v6)
    {
      v9 = *v7;
      v10 = *v8;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      ++v7;
      ++v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

void *sub_299195950(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = 341 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_299195A10(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  v9 = *(v6 + 8 * (v8 / 0x155)) + 12 * (v8 % 0x155);
  v10 = *a2;
  *(v9 + 8) = *(a2 + 2);
  *v9 = v10;
  ++v3[5];
  return result;
}

void *sub_299195A10(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_29920B86C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_299195BE4(a1, &v10);
}

void sub_299195B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_299195BE4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_29920B86C(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_299195CEC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_29920B86C(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_299195DF8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_29920B86C(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_299195F00(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_29920B86C(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_29919600C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

_OWORD *sub_299196040(uint64_t *a1, uint64_t a2)
{
  result = operator new[](16 * a2, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

void sub_2991960D8(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 < 129)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x29EDC9418];
    v9 = a2 - a1;
    while (1)
    {
      v10 = operator new(16 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  sub_2991961D4(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_2991961BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_2991961D4(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      a7.n128_u32[0] = a2[-1].n128_u32[3];
      if (a7.n128_f32[0] > a1->n128_f32[3])
      {
        a7 = *a1;
        *a1 = a2[-1];
        a2[-1] = a7;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        v17.n128_f64[0] = sub_299196448(a1, v14, a3, v15, a5, a7);
        v18.n128_f64[0] = sub_299196448(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13], v17);

        a7.n128_f64[0] = sub_2991965A4(a5, &a5[v13], &a5[v13], &a5[a4], a1, v18);
      }

      else
      {
        sub_2991961D4(a1, v14, a3, v15, a5, a6);
        sub_2991961D4(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        a7.n128_u64[0] = sub_299196604(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v16).n128_u64[0];
      }
    }

    else
    {

      sub_2991963A4(a1, a2);
    }
  }

  return a7.n128_f64[0];
}

uint64_t sub_2991963A4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 28);
        v6 = *(v4 + 12);
        v4 = v2;
        if (v5 > v6)
        {
          v10 = *v2;
          v11 = *(v2 + 8);
          v7 = v3;
          while (1)
          {
            *(result + v7 + 16) = *(result + v7);
            if (!v7)
            {
              break;
            }

            v8 = *(result + v7 - 4);
            v7 -= 16;
            if (v5 <= v8)
            {
              v9 = result + v7 + 16;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v10;
          *(v9 + 8) = v11;
          *(v9 + 12) = v5;
        }

        v2 = v4 + 16;
        v3 += 16;
      }

      while (v4 + 16 != a2);
    }
  }

  return result;
}

double sub_299196448(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 1;
      if (a2[-1].n128_f32[3] <= a1->n128_f32[3])
      {
        *a5 = *a1;
        a6 = *v10;
      }

      else
      {
        *a5 = *v10;
        a6 = *a1;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      sub_2991961D4(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      sub_2991961D4(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      a6.n128_f64[0] = sub_2991965A4(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, v12);
    }

    else
    {

      a6.n128_u64[0] = sub_299196888(a1, a2, a5).n128_u64[0];
    }
  }

  return a6.n128_f64[0];
}

double sub_2991965A4(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      while (a1 != a2)
      {
        v9 = *a1++;
        a6.n128_u64[0] = v9.n128_u64[0];
        *a5++ = v9;
      }

      return a6.n128_f64[0];
    }

    if (a3->n128_f32[3] <= a1->n128_f32[3])
    {
      v7 = *a1++;
      a6 = v7;
    }

    else
    {
      v6 = *a3++;
      a6 = v6;
    }

    *a5++ = a6;
  }

  while (a3 != a4)
  {
    v8 = *a3++;
    a6.n128_u64[0] = v8.n128_u64[0];
    *a5++ = v8;
  }

  return a6.n128_f64[0];
}

__n128 sub_299196604(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 result)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      result.n128_u32[0] = a2->n128_u32[3];
      v13 = -a5;
      while (1)
      {
        v14 = &a1[v12];
        if (result.n128_f32[0] > a1[v12].n128_f32[3])
        {
          break;
        }

        ++v12;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v39 = a3;
      v40 = a8;
      if (-v13 >= v10)
      {
        if (v13 == -1)
        {
          v43 = a1[v12];
          a1[v12] = *a2;
          result = v43;
          *a2 = v43;
          return result;
        }

        v26 = v16 / 2;
        v20 = &a1[v16 / 2 + v12];
        if (a3 == a2)
        {
          v18 = a2;
        }

        else
        {
          v27 = a3 - a2;
          v18 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[v27 >> 1];
            v30 = v29->n128_f32[3];
            v31 = v29 + 1;
            v27 += ~(v27 >> 1);
            if (v30 > v20->n128_f32[3])
            {
              v18 = v31;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = v18 - a2;
      }

      else
      {
        v17 = v10 / 2;
        v18 = &a2[v10 / 2];
        if (v14 == a2)
        {
          v25 = &a1[v12];
          v20 = &a1[v12];
        }

        else
        {
          v19 = (a2 - a1 - v12 * 16) >> 4;
          v20 = &a1[v12];
          do
          {
            v21 = v19 >> 1;
            v22 = &v20[v19 >> 1];
            v23 = v22->n128_f32[3];
            v24 = v22 + 1;
            v19 += ~(v19 >> 1);
            if (v18->n128_f32[3] > v23)
            {
              v19 = v21;
            }

            else
            {
              v20 = v24;
            }
          }

          while (v19);
          v25 = v20;
        }

        v26 = (v25 - a1 - v12 * 16) >> 4;
      }

      a5 = -(v26 + v13);
      v32 = v10 - v17;
      v33 = v17;
      v34 = sub_299196A38(v20, a2, v18);
      v35 = v33;
      v36 = v34;
      if (v26 + v35 >= v10 - (v26 + v35) - v13)
      {
        v38 = v35;
        sub_299196604(v34, v18, v39, a4, a5, v32, a7, v40);
        v18 = v20;
        v32 = v38;
        a5 = v26;
        a8 = v40;
        a3 = v36;
      }

      else
      {
        v37 = v26;
        a8 = v40;
        sub_299196604(v14, v20, v34, a4, v37, v35, a7, v40);
        v14 = v36;
        a3 = v39;
      }

      v10 = v32;
      a1 = v14;
      a2 = v18;
      if (!v32)
      {
        return result;
      }
    }

    result.n128_u64[0] = sub_29919692C(a1, a2, a3, a4, a5, v10, a7, result).n128_u64[0];
  }

  return result;
}

__n128 sub_299196888(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    result = *a1;
    *a3 = *a1;
    v4 = a1 + 1;
    if (&a1[1] != a2)
    {
      v5 = 0;
      v6 = a3;
      do
      {
        v7 = a1;
        v8 = v6;
        a1 = v4;
        v9 = ++v6;
        if (v7[1].n128_f32[3] > v8->n128_f32[3])
        {
          *v6 = *v8;
          v9 = a3;
          if (v8 != a3)
          {
            v10 = v5;
            while (1)
            {
              v9 = (a3 + v10);
              if (v7[1].n128_f32[3] <= *(&a3->n128_f32[-1] + v10))
              {
                break;
              }

              *v9 = v9[-1];
              v10 -= 16;
              if (!v10)
              {
                v9 = a3;
                break;
              }
            }
          }
        }

        result = *a1;
        *v9 = *a1;
        v4 = a1 + 1;
        v5 += 16;
      }

      while (&a1[1] != a2);
    }
  }

  return result;
}

__n128 sub_29919692C(__n128 *a1, __n128 *a2, __n128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t __src, __n128 result)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v14 = -__src;
      v15 = __src;
      v16 = a1;
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 4;
        v14 -= 16;
      }

      while (v16 != a2);
      while (a2 != a3)
      {
        if (a2->n128_f32[3] <= *(__src + 12))
        {
          v19 = *__src;
          __src += 16;
          result = v19;
        }

        else
        {
          v18 = *a2++;
          result = v18;
        }

        *a1++ = result;
        if (v15 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v14));
    }
  }

  else if (a2 != a3)
  {
    v8 = 0;
    do
    {
      result = a2[v8];
      *(__src + v8 * 16) = result;
      ++v8;
    }

    while (&a2[v8] != a3);
    v9 = (__src + v8 * 16);
    while (a2 != a1)
    {
      v10 = v9[-1].n128_f32[3];
      v11 = a2[-1].n128_f32[3];
      v12 = v10 <= v11;
      if (v10 <= v11)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = a2 - 1;
      }

      result = *v13;
      a3[-1] = *v13;
      --a3;
      if (v12)
      {
        --v9;
      }

      else
      {
        --a2;
      }

      if (v9 == __src)
      {
        return result;
      }
    }

    if (v9 != __src)
    {
      v20 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        result = v9[-1];
        a3[v20--] = result;
        --v9;
      }

      while (v9 != __src);
    }
  }

  return result;
}

char *sub_299196A38(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v9 = *__src;
      v6 = a3 - a2;
      memmove(__src, __src + 16, a3 - a2);
      v4 = &__src[v6];
      *v4 = v9;
    }

    else if (a2 + 16 == a3)
    {
      v4 = __src + 16;
      v10 = *(a3 - 1);
      v7 = a3 - 16 - __src;
      if (a3 - 16 != __src)
      {
        memmove(__src + 16, __src, v7);
      }

      *__src = v10;
    }

    else
    {
      return sub_299196B18(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_299196B18(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = (a2 - a1) >> 4;
  v5 = a3 - a2;
  if (v4 == (a3 - a2) >> 4)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 16;
      v7 = a1 + 16;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *(v6 - 1);
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 16;
        v9 = v6 == a3;
        v6 += 16;
      }

      while (!v9);
    }
  }

  else
  {
    v10 = v5 >> 4;
    v11 = (a2 - a1) >> 4;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = &a1[16 * v11];
    do
    {
      v14 = *(v13 - 1);
      v13 -= 16;
      v15 = &v13[v3];
      v16 = v13;
      do
      {
        v17 = v16;
        v16 = v15;
        *v17 = *v15;
        v18 = __OFSUB__(v4, (a3 - v15) >> 4);
        v20 = v4 - ((a3 - v15) >> 4);
        v19 = (v20 < 0) ^ v18;
        v15 = &a1[16 * v20];
        if (v19)
        {
          v15 = v16 + v3;
        }
      }

      while (v15 != v13);
      *v16 = v14;
    }

    while (v13 != a1);
    return &a1[v5];
  }

  return a2;
}

uint64_t sub_299196BF8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 170;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 341;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_299196CA4(a1);
}

uint64_t sub_299196CA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_299196CF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    do
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 > v5)
      {
        v5 = v8;
      }

      --v7;
    }

    while (v7);
    v10 = 32 - __clz(v5);
    if (v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 != 0;
  v13 = (v11 * v4 + 63) >> 6;
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  result = sub_299193ADC(a1, v14);
  if (v14)
  {
    *(*(a1 + 8) + 8 * *(a1 + 24) - 8) = 0;
  }

  *(a1 + 48) = v11;
  if (v11)
  {
    *(a1 + 56) = 0xFFFFFFFF >> -v11;
  }

  v16 = *(a2 + 24);
  *(a1 + 64) = v16;
  if (v16)
  {
    v17 = 0;
    do
    {
      result = sub_299196DEC(a1, v17, *(*(a2 + 16) + 4 * v17));
      ++v17;
    }

    while (v17 < *(a2 + 24));
  }

  return result;
}

uint64_t sub_299196DEC(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 48);
  v4 = (v3 * a2) & 0x3F;
  v5 = *(result + 56);
  v6 = (*(result + 8) + 8 * ((v3 * a2) >> 6));
  v7 = v5 & a3;
  *v6 = *v6 & ~(v5 << (v3 * a2)) | (v7 << (v3 * a2));
  if ((v4 + v3) >= 0x41)
  {
    v6[1] = v6[1] & ~(v5 >> -v4) | (v7 >> -v4);
  }

  return result;
}

unsigned int *sub_299196E50(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return sub_299197988(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_299197B90(v10, a2);
      }

      else
      {

        return sub_299197C64(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return sub_299198470(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = (v39 + 1);
                      *v55 = v71;
                      v74 = (v55 + 1);
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = (v55 + 1);
                  v73 = (v15 + 1);
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = sub_299197CFC(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = sub_299197E30(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = sub_299197F6C(v10, v85);
    v10 = v85 + 2;
    result = sub_299197F6C(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = sub_299196E50(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = sub_299197988(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

unsigned int *sub_299197988(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *sub_299197B90(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        v7 = *v5;
        if (v6 < *v5 || v7 >= v6 && v5[3] < v5[1])
        {
          v9 = v5[2];
          v8 = v5[3];
          v10 = v5[1];
          v5[2] = v7;
          v4[1] = v10;
          v11 = result;
          if (v5 != result)
          {
            v12 = v3;
            do
            {
              v13 = *(result + v12 - 8);
              if (v13 <= v9)
              {
                if (v13 < v9)
                {
                  v11 = v5;
                  goto LABEL_17;
                }

                v11 = (result + v12);
                v14 = *(result + v12 - 4);
                if (v14 <= v8)
                {
                  goto LABEL_17;
                }
              }

              else
              {
                v14 = *(result + v12 - 4);
              }

              v5 -= 2;
              v15 = (result + v12);
              *v15 = v13;
              v15[1] = v14;
              v12 -= 8;
            }

            while (v12);
            v11 = result;
          }

LABEL_17:
          *v11 = v9;
          v11[1] = v8;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_299197C64(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned int *sub_299197CFC(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *sub_299197E30(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL sub_299197F6C(unsigned int *a1, unsigned int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        sub_299197988(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      sub_299197988(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned int *sub_299198470(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_2991985E4(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          sub_2991985E4(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = sub_299198728(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          sub_2991987B4(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_2991985E4(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *sub_299198728(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_2991987B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

char *sub_299198858(uint64_t *a1, uint64_t a2)
{
  result = operator new[](16 * a2, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = (a1[1] + 8);
    v7 = result + 8;
    do
    {
      *(v7 - 1) = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t sub_2991988FC(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_2993FCC10;
    v13 = xmmword_2993FCC00;
    v14 = (v9 + 64);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 12) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 6) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[6] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 24;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  v17 = sub_29919915C(v9, v9 + 24 * v8, 0);
  v18 = 256;
  if (a5 != 1)
  {
    v18 = 1;
  }

  do
  {
    v19 = v18;
    v18 *= 2;
  }

  while (v19 < v17 / *(a4 + 8));
  sub_2991917EC(a1 + 126, v19);
  a1[132] = v19 - 1;
  sub_299190E78(a1, 1);
  sub_299190E78(a1, 0);
  LOBYTE(v71[0]) = 0;
  sub_2991902B4(a1 + 78, v71);
  sub_299190E78(a1 + 52, 0);
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  sub_299195950(v69, &v65);
  v20 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v62 = a4;
    do
    {
      v21 = a1[58];
      v22 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v20 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v64 = v21;
      v26 = v21 - v20;
      if (v23 < v24)
      {
        while (1)
        {
          v27 = *(a2 + 8) + 24 * v23;
          if (*(v27 + 8) != v25)
          {
            break;
          }

          *(v27 + 12) = v26;
          v23 = (v23 + 1);
          if (v24 == v23)
          {
            goto LABEL_51;
          }
        }
      }

      if (v23 != v24)
      {
        v28 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v28)
        {
          MEMORY[0x29C29BF70](v28, 0x1000C8077774924);
        }

        v29 = *(a2 + 8);
        v30 = *(v29 + 24 * v23 + 12);
        v31 = v23 + 1;
        if (v23 + 1 < v24)
        {
          v63 = v20;
          v32 = v30;
          v33 = 24 * v23;
          v34 = (v23 << 32) + 0x100000000;
          do
          {
            if (*(*(v29 + v33) - v25 - 1) != *(*(v29 + v33 + 24) - v25 - 1))
            {
              *&v35 = v32;
              v65.n128_u64[0] = v34 + v23;
              v65.n128_u64[1] = v25 | (v35 << 32);
              sub_2991950E8(&v67, &v65);
              v29 = *(a2 + 8);
              v32 = 0.0;
              LODWORD(v23) = v31;
            }

            v32 = v32 + *(v29 + v33 + 36);
            ++v31;
            v33 += 24;
            v34 += 0x100000000;
          }

          while (v24 != v31);
          v30 = v32;
          a4 = v62;
          v20 = v63;
        }

        v65.n128_u32[0] = v23;
        v65.n128_u32[1] = v24;
        v65.n128_u64[1] = v25 | (LODWORD(v30) << 32);
        v36 = sub_2991950E8(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          sub_2991960D8(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v36);
        }

        v37 = v68[1];
        if (v64 == v20)
        {
          a1[133] = v68[1];
        }

        if (v37)
        {
          v38 = 0;
          do
          {
            v39 = (*(&v67 + 1) + 16 * v38);
            v40 = *(v39 + 2);
            v41 = *(a2 + 8);
            v42 = *(v41 + 24 * *v39 + 8);
            v43 = v40 + 1;
            if (v40 + 1 >= v42)
            {
              v44 = *(v39 + 2);
              LODWORD(v42) = v40 + 1;
            }

            else
            {
              v44 = v42 - 1;
              v45 = (v41 + 24 * *v39);
              v46 = *(v39 + 2);
              do
              {
                v47 = v46;
                v46 = v43;
                v48 = v45;
                v49 = *v39;
                while (++v49 < *(v39 + 1))
                {
                  v50 = *v48;
                  v51 = v48[3];
                  v48 += 3;
                  if (*(v50 + ~v47 - 1) != *(v51 + ~v47 - 1))
                  {
                    v44 = v47;
                    LODWORD(v42) = v43;
                    goto LABEL_45;
                  }
                }

                ++v43;
              }

              while (v46 + 1 != v42);
            }

LABEL_45:
            v52 = a1[81];
            v53 = v39[3];
            v54 = a1[127] + 12 * (a1[132] & v52);
            if (*(v54 + 8) < v53)
            {
              *v54 = v26;
              *(v54 + 4) = v52;
              *(v54 + 8) = v53;
              v40 = *(v39 + 2);
            }

            if (v44 == v40)
            {
              v65.n128_u8[0] = *(~v44 + *(*(a2 + 8) + 24 * *v39));
              sub_2991902B4(a1 + 78, &v65);
              sub_299190E78(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              sub_2991902B4(a1 + 78, &v65);
              sub_299190E78(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v55 = *(v39 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v39) - v55;
              v65.n128_u64[1] = (v42 - v55);
              v65.n128_f32[3] = v39[3];
              sub_29919515C(v71, &v65);
            }

            *(v39 + 2) = v42;
            sub_299195950(v69, v39);
            sub_299190E78(a1, 1);
            ++v38;
          }

          while (v38 < v68[1]);
        }
      }

LABEL_51:
      sub_299190E78(a1, 0);
      v20 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  sub_299190E78(a1, 0);
  sub_299190F70(a1, a5 == 1, 1);
  sub_2991951F8(a1 + 624);
  sub_299199064(a1, a2, a3);
  v56 = *a2;
  *a2 = v71[0];
  v71[0] = v56;
  v57 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v57;
  v58 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v58;
  LOBYTE(v57) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v57;
  if (v67)
  {
    MEMORY[0x29C29BF70](v67, 0x1000C8077774924);
  }

  sub_299196BF8(v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x29C29BF70](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_299198F5C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x29C29BF70](a11, 0x1000C8077774924);
  }

  sub_299196BF8(va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x29C29BF70](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001ACLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:428: MARISA_MEMORY_ERROR: std::bad_alloc";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299199064(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  sub_299194008(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_299199134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C29BF70](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29919915C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    v10 = sub_29919956C(v9, v9 + 24 * (v6 / 0x30uLL), v4 - 24, a3);
    v11 = v10;
    v12 = v9;
    v5 = v4;
    v13 = v9;
    v14 = v4;
    while (v12 < v5)
    {
      v15 = *(v12 + 8);
      v16 = a3 >= v15 ? -1 : *(*v12 - a3 - 1);
      if (v16 > v10)
      {
        break;
      }

      if (v16 == v10)
      {
        v17 = *v12;
        *v12 = *v13;
        *(v12 + 8) = *(v13 + 8);
        v18 = *(v12 + 12);
        *(v12 + 12) = *(v13 + 12);
        *(v12 + 16) = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v15;
        *(v13 + 12) = v18;
        v13 += 24;
      }

LABEL_11:
      v12 += 24;
    }

    if (v12 < v5)
    {
      v19 = v5 - 24;
      do
      {
        v5 = v19;
        v20 = *(v19 + 8);
        if (a3 >= v20)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(*v5 - a3 - 1);
        }

        if (v21 < v10)
        {
          break;
        }

        if (v21 == v10)
        {
          v22 = *(v14 - 24);
          v14 -= 24;
          v23 = *v5;
          *v5 = v22;
          *(v5 + 8) = *(v14 + 8);
          v24 = *(v5 + 12);
          *(v5 + 12) = *(v14 + 12);
          *(v5 + 16) = *(v14 + 16);
          *v14 = v23;
          *(v14 + 8) = v20;
          *(v14 + 12) = v24;
        }

        v19 = v5 - 24;
      }

      while (v12 < v5);
    }

    if (v12 < v5)
    {
      v25 = *v12;
      v26 = *(v12 + 16);
      *v12 = *v5;
      v27 = *(v12 + 8);
      *(v12 + 8) = *(v5 + 8);
      *(v12 + 12) = *(v5 + 12);
      *(v12 + 16) = *(v5 + 16);
      *v5 = v25;
      *(v5 + 8) = v27;
      *(v5 + 16) = v26;
      goto LABEL_11;
    }

    if (v13 > v9)
    {
      v28 = 0;
      do
      {
        v29 = v13 + v28;
        v30 = v12 + v28;
        v31 = *(v13 + v28 - 24);
        v32 = *(v13 + v28 - 8);
        *(v29 - 24) = *(v12 + v28 - 24);
        v33 = *(v13 + v28 - 16);
        *(v29 - 16) = *(v12 + v28 - 16);
        *(v29 - 12) = *(v12 + v28 - 12);
        *(v29 - 8) = *(v12 + v28 - 8);
        *(v30 - 24) = v31;
        *(v30 - 16) = v33;
        *(v30 - 8) = v32;
        v28 -= 24;
      }

      while (v13 + v28 > v9);
      v12 += v28;
    }

    while (v14 < v4)
    {
      v34 = *v14;
      v35 = *(v14 + 16);
      *v14 = *v5;
      v36 = *(v14 + 8);
      *(v14 + 8) = *(v5 + 8);
      *(v14 + 12) = *(v5 + 12);
      *(v14 + 16) = *(v5 + 16);
      *v5 = v34;
      *(v5 + 8) = v36;
      *(v5 + 16) = v35;
      v14 += 24;
      v5 += 24;
    }

    v37 = v12 - v8;
    v38 = v5 - v12;
    if (v37 <= (v5 - v12))
    {
      v39 = v4 - v5;
      if ((v4 - v5) <= v38)
      {
        if (v37 == 24)
        {
          ++v7;
        }

        else if (v37 >= 25)
        {
          v7 += sub_29919915C(v9, v12, a3);
        }

        if (v39 == 24)
        {
          ++v7;
        }

        else if (v39 >= 25)
        {
          v7 += sub_29919915C(v5, v4, a3);
        }

        if (v38 == 24)
        {
          ++v7;
        }

        else if (v38 >= 25)
        {
          if (v11 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_60;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v12;
        goto LABEL_60;
      }
    }

    if (v38 == 24)
    {
      goto LABEL_32;
    }

    if (v38 >= 25)
    {
      if (v10 == -1)
      {
LABEL_32:
        ++v7;
      }

      else
      {
        v7 += sub_29919915C(v12, v5, a3 + 1);
      }
    }

    v40 = v4 - v5;
    if (v37 >= (v4 - v5))
    {
      if (v40 == 24)
      {
        ++v7;
      }

      else if (v40 >= 25)
      {
        v7 += sub_29919915C(v5, v4, a3);
      }

      v4 = v12;
      v5 = v9;
    }

    else if (v37 == 24)
    {
      ++v7;
    }

    else if (v37 >= 25)
    {
      v7 += sub_29919915C(v9, v12, a3);
    }

LABEL_60:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_64:
  if (v6 >= 25)
  {
    v7 += sub_2991995EC(v5, v4, a3);
  }

  return v7;
}

uint64_t sub_29919956C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(~a4 + *a1);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(~a4 + *a2);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(~a4 + *a3);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_2991995EC(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 24;
  if (a1 + 24 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v15 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 24;
        v10 = sub_2991996D0(v8 - 24, v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 24);
        v12 = *(v8 - 8);
        *(v8 - 24) = *v8;
        v13 = *(v8 + 8);
        *(v8 - 8) = *(v8 + 16);
        *v8 = v11;
        v14 = *(v8 - 16);
        *(v8 - 16) = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v15 = v10 != 0;
    }

    v7 += v15;
    v3 += 24;
  }

  while (v3 < a2);
  return v7;
}

uint64_t sub_2991996D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a2 + ~a3);
    v8 = (*a1 + ~a3);
    while (v6)
    {
      v9 = *v8;
      v10 = *v7;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      --v7;
      --v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

char *sub_299199740(uint64_t *a1, uint64_t a2)
{
  result = operator new[](12 * a2, MEMORY[0x29EDC9418]);
  v5 = a1[3];
  if (v5)
  {
    v6 = (a1[1] + 8);
    v7 = result + 8;
    do
    {
      *(v7 - 1) = *(v6 - 1);
      v8 = *v6;
      v6 += 3;
      *v7 = v8;
      v7 += 3;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

uint64_t sub_2991997E8(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_29918E238(a2, 8uLL);
  *(a1 + 16) = sub_29918E238(a2, v4);
  sub_29918E15C(a2, -v4 & 7);
  *(a1 + 24) = v4;

  return sub_2991931CC(a1);
}

uint64_t sub_29919985C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_29918E67C(a2, &v6, 8uLL);
  v4 = v6;
  sub_299190A74(a1, v6);
  sub_2991998D8(a2, *(a1 + 8), v4);
  return sub_29918E550(a2, -v6 & 7);
}

uint64_t sub_2991998D8(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h";
    exception[2] = 0x20000001FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/reader.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  return sub_29918E67C(a1, a2, a3);
}

uint64_t sub_29919995C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  sub_29918E67C(a2, &v7, 8uLL);
  v4 = v7 / 0xC;
  if (v7 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000D5;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:213: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  sub_2991917EC(a1, v7 / 0xC);
  sub_299193D8C(a2, *(a1 + 8), v4);
  return sub_29918E550(a2, -v7 & 7);
}

uint64_t sub_299199A54(uint64_t a1, uint64_t a2)
{
  __buf = *(a1 + 24);
  sub_29918EA74(a2, &__buf, 8uLL);
  sub_299199AB8(a2, *(a1 + 16), *(a1 + 24));
  return sub_29918E938(a2, -*(a1 + 24) & 7);
}

uint64_t sub_299199AB8(uint64_t a1, char *a2, size_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h";
    exception[2] = 0x20000001ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  return sub_29918EA74(a1, a2, a3);
}

double sub_299199B3C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  *(a1 + 73) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  *(a1 + 185) = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  *(a1 + 233) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  *(a1 + 137) = 0u;
  return result;
}

uint64_t sub_299199B70(__int128 *a1, uint64_t a2, __int128 *a3, int a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x20000000DLL;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/tail.cc:13: MARISA_NULL_ERROR: offsets == NULL";
    goto LABEL_28;
  }

  if (a4 == 0x2000)
  {
    goto LABEL_15;
  }

  if (a4 != 4096)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_2A1F37658;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x500000024;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/tail.cc:36: MARISA_CODE_ERROR: undefined tail mode";
LABEL_28:
    exception[3] = v17;
    __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = 0;
    a4 = 4096;
    while (1)
    {
      v7 = *(a2 + 8) + 16 * v6;
      v8 = *(v7 + 8);
      if (v8)
      {
        break;
      }

LABEL_11:
      if (++v6 == v5)
      {
        goto LABEL_15;
      }
    }

    v9 = *v7;
    v10 = -v8;
    while (*(v9 + 1 + v10))
    {
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_11;
      }
    }

    a4 = 0x2000;
  }

  else
  {
    a4 = 4096;
  }

LABEL_15:
  memset(v18, 0, 41);
  memset(v19, 0, 41);
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v19[3] = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_299199DB0(v18, a2, a3, a4);
  v12 = *a1;
  *a1 = v18[0];
  v18[0] = v12;
  v13 = *(a1 + 2);
  *(a1 + 2) = *&v18[1];
  *&v18[1] = v13;
  v14 = *(a1 + 24);
  *(a1 + 24) = *(&v18[1] + 8);
  *(&v18[1] + 8) = v14;
  LOBYTE(v13) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v18[2]);
  BYTE8(v18[2]) = v13;
  sub_299190AC4(a1 + 6, v19);
  if (v24)
  {
    MEMORY[0x29C29BF70](v24, 0x1000C8077774924);
  }

  if (v22)
  {
    MEMORY[0x29C29BF70](v22, 0x1000C8077774924);
  }

  if (v20)
  {
    MEMORY[0x29C29BF70](v20, 0x1000C8077774924);
  }

  if (*&v19[0])
  {
    MEMORY[0x29C29BF70](*&v19[0], 0x1000C8077774924);
  }

  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x29C29BF70](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t sub_299199DB0(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 8);
  if (v8)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_2993FCC10;
    v13 = xmmword_2993FCC00;
    v14 = (v9 + 44);
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 8) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 4) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v10 + 2;
        v14[4] = v10 + 3;
      }

      v10 += 4;
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 16;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
  }

  sub_29919A99C(v9, v9 + 16 * v8, 0);
  memset(v37, 0, 41);
  v17 = *(a2 + 24);
  LODWORD(v36[0]) = 0;
  sub_29919A70C(v37, v17, v36);
  v36[0] = 0;
  v36[1] = 0;
  v18 = *(a2 + 24);
  if (v18)
  {
    v19 = v36;
    do
    {
      --v18;
      v20 = *(a2 + 8) + 16 * v18;
      v21 = *(v20 + 8);
      if (!v21)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_2A1F37658;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/tail.cc";
        exception[2] = 0x4000000AALL;
        exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/tail.cc:170: MARISA_RANGE_ERROR: current.length() == 0";
        __cxa_throw(exception, &unk_2A1F37630, std::exception::~exception);
      }

      v22 = 0;
      v23 = 0;
      v24 = *(v19 + 2);
      while (v24 != v23)
      {
        if (*(*v19 + v22) != *(*v20 + v22))
        {
          goto LABEL_19;
        }

        ++v23;
        --v22;
        if (v21 == v23)
        {
          goto LABEL_20;
        }
      }

      v23 = *(v19 + 2);
LABEL_19:
      if (v23 != v21)
      {
        v25 = *(&v37[0] + 1);
        goto LABEL_23;
      }

LABEL_20:
      v25 = *(&v37[0] + 1);
      if (v24)
      {
        *(*(&v37[0] + 1) + 4 * *(v20 + 12)) = v24 - v21 + *(*(&v37[0] + 1) + 4 * *(v19 + 3));
        goto LABEL_35;
      }

LABEL_23:
      *(v25 + 4 * *(v20 + 12)) = *(a1 + 24);
      v26 = *(v20 + 8);
      if (v26)
      {
        for (i = 0; i < v26; ++i)
        {
          v35 = *(*v20 - v26 + i + 1);
          sub_2991902B4(a1, &v35);
          v26 = *(v20 + 8);
        }

        if (a4 != 4096)
        {
          if (v26 >= 2)
          {
            v28 = 1;
            do
            {
              sub_299190E78((a1 + 48), 0);
              ++v28;
            }

            while (v28 < *(v20 + 8));
          }

LABEL_33:
          sub_299190E78((a1 + 48), 1);
          goto LABEL_34;
        }
      }

      else if (a4 != 4096)
      {
        goto LABEL_33;
      }

      v35 = 0;
      sub_2991902B4(a1, &v35);
LABEL_34:
      if (*(a1 + 28))
      {
        v34 = __cxa_allocate_exception(0x20uLL);
        *v34 = &unk_2A1F37658;
        v34[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/tail.cc";
        v34[2] = 0x7000000C0;
        v34[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/tail.cc:192: MARISA_SIZE_ERROR: buf_.size() > MARISA_UINT32_MAX";
        __cxa_throw(v34, &unk_2A1F37630, std::exception::~exception);
      }

LABEL_35:
      v19 = v20;
    }

    while (v18);
  }

  sub_2991951F8(a1);
  v29 = *a3;
  *a3 = v37[0];
  v37[0] = v29;
  v30 = *(a3 + 2);
  *(a3 + 2) = *&v37[1];
  *&v37[1] = v30;
  v31 = *(a3 + 24);
  *(a3 + 24) = *(&v37[1] + 8);
  *(&v37[1] + 8) = v31;
  LOBYTE(v30) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v37[2]);
  result = v29;
  BYTE8(v37[2]) = v30;
  if (v29)
  {
    return MEMORY[0x29C29BF70](v29, 0x1000C8077774924);
  }

  return result;
}