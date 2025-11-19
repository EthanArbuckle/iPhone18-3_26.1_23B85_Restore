uint64_t oah_is_current_process_translated()
{
  if (qword_2A1898A38 != -1)
  {
    dispatch_once(&qword_2A1898A38, &unk_2A1EA12E8);
  }

  return byte_2A1898A30;
}

uint64_t oah_is_process_translated(int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (proc_pidinfo(a1, 13, 0, buffer, 64) == 64)
  {
    result = (v4 >> 25) & 1;
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

char *rosetta_create_exit_payload_string(const char *a1, size_t a2, char *__s1)
{
  if (!__s1)
  {
    return 0;
  }

  v6 = strnlen(__s1, 0x400uLL);
  v7 = byte_2A13A6190;
  memcpy(byte_2A13A6190, __s1, v6);
  strlcpy(&byte_2A13A6190[v6], a1, a2);
  return v7;
}

BOOL rosetta_is_translation_available_on_volume(std::string *__src)
{
  memset(&v7, 0, sizeof(v7));
  v1 = (__src - 1);
  do
  {
    v2 = v1->__r_.__value_.__s.__data_[1];
    v1 = (v1 + 1);
  }

  while (v2);
  sub_2980DE9BC(&v7, __src, v1);
  std::string::append(&v7, "/Library/Apple/usr/libexec/oah/libRosettaRuntime");
  v6.__val_ = 0;
  v6.__cat_ = std::system_category();
  std::__fs::filesystem::__status(&v7, &v6);
  v3 = v8;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v3)
  {
    v4 = v3 == 255;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

std::string *sub_2980DE9BC(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2980DEB68();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

BOOL rosetta_has_been_previously_installed_on_volume(std::string *__src)
{
  memset(&v8, 0, sizeof(v8));
  v2 = (__src - 1);
  do
  {
    v3 = v2->__r_.__value_.__s.__data_[1];
    v2 = (v2 + 1);
  }

  while (v3);
  sub_2980DE9BC(&v8, __src, v2);
  std::string::append(&v8, "/Library/Apple/usr/share/rosetta/rosetta");
  v7.__val_ = 0;
  v4 = std::system_category();
  v7.__cat_ = v4;
  std::__fs::filesystem::__status(&v8, &v7);
  v5 = v9 && (v7.__val_ = 0, v7.__cat_ = v4, v9 != 255) || rosetta_is_translation_available_on_volume(__src);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v5;
}

uint64_t rosetta_is_current_process_translated()
{
  if (qword_2A1898A38 != -1)
  {
    dispatch_once(&qword_2A1898A38, &unk_2A1EA12E8);
  }

  return byte_2A1898A30;
}

uint64_t sub_2980DEC90()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("sysctl.proc_translated", &v2, &v1, 0, 0);
  byte_2A1898A30 = v2 > 0;
  return result;
}

uint64_t rosetta_is_process_translated(int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (proc_pidinfo(a1, 13, 0, buffer, 64) == 64)
  {
    result = (v4 >> 25) & 1;
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rosetta_has_platform_support()
{
  v0 = (MEMORY[0xFFFFFC010] >> 34) & 1;
  if ((~MEMORY[0xFFFFFC010] & 0x6000000000) == 0)
  {
    LODWORD(v0) = 1;
  }

  if ((~MEMORY[0xFFFFFC010] & 0x9000000000) != 0)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

uint64_t rosetta_get_preferred_architecture_from_architectures(uint64_t a1, uint64_t a2)
{
  v2 = 16777228;
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + 4 * v3);
      if (v6 == 16777223)
      {
        break;
      }

      if (v6 == 16777228)
      {
        ++v3;
        v4 = 1;
        if (v3 == a2)
        {
          return v2;
        }
      }

      else
      {
LABEL_8:
        if (a2 == ++v3)
        {
          if (v4)
          {
            return v2;
          }

          goto LABEL_12;
        }
      }
    }

    v5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_12:
  if ((rosetta_is_translation_available_on_volume("/") & v5) != 0)
  {
    return 16777223;
  }

  else
  {
    return 0;
  }
}

int64_t rosetta_thread_get_rip(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9[1] = a2;
  LODWORD(v9[0]) = a1;
  return mac_syscall(SYS_crossarch_trap, 0, 0, 6, v9, a5, a6, a7, a8);
}

int64_t rosetta_invalidate_translation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_2A1898A38 != -1)
  {
    dispatch_once(&qword_2A1898A38, &unk_2A1EA12E8);
  }

  if (byte_2A1898A30 != 1)
  {
    return 0;
  }

  v12[0] = a1;
  v12[1] = a2;
  return mac_syscall(SYS_crossarch_trap, 0, 0, 4, v12, a5, a6, a7, a8);
}

int64_t objc_thread_get_rip(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9[1] = a2;
  LODWORD(v9[0]) = a1;
  return mac_syscall(SYS_crossarch_trap, 0, 0, 6, v9, a5, a6, a7, a8);
}

int64_t oah_invalidate_translation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_2A1898A38 != -1)
  {
    dispatch_once(&qword_2A1898A38, &unk_2A1EA12E8);
  }

  if (byte_2A1898A30 != 1)
  {
    return 0;
  }

  v12[0] = a1;
  v12[1] = a2;
  return mac_syscall(SYS_crossarch_trap, 0, 0, 4, v12, a5, a6, a7, a8);
}

uint64_t rosetta_get_runtime_version()
{
  MEMORY[0x2A1C7C4A8]();
  v47 = *MEMORY[0x29EDCA608];
  v0 = open("/Library/Apple/usr/libexec/oah/libRosettaRuntime", 256);
  if ((v0 & 0x80000000) == 0)
  {
    v1 = v0;
    if (pread(v0, &__buf, 0x10uLL, 0) == 16)
    {
      if (__buf == -1095041334)
      {
        v3 = 0;
      }

      else if (__buf == -17958193)
      {
        v3 = 1;
      }

      else if (__buf == 0x2031765F646C7964 && v35 == 0x34365F36387820)
      {
        v3 = 2;
      }

      else if (__buf == 0x6568636143746F41)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }
    }

    else
    {
      v3 = 4;
    }

    v5 = lseek(v1, 0, 2);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v7 = v3;
      if (v3 - 2 < 3)
      {
        v4 = 0;
LABEL_58:
        close(v1);
        goto LABEL_59;
      }

      v8 = v5;
      v9 = v5;
      if (v7 == 1)
      {
        goto LABEL_21;
      }

      if (pread(v1, &__buf, 0x1000uLL, 0) == 4096)
      {
        v11 = bswap32(HIDWORD(__buf));
        if (v11 <= 0xCC)
        {
          if (HIDWORD(__buf))
          {
            v12 = 0;
            v13 = 0;
            v14 = (v11 - 1) + 1;
            v15 = &v37;
            while (1)
            {
              v16 = &v35 + 20 * v12;
              v17 = bswap32(*(v16 + 2));
              if (v17 < 20 * v11 + 8)
              {
                break;
              }

              v18 = bswap32(*(v16 + 3));
              v19 = __CFADD__(v17, v18);
              v20 = v17 + v18;
              if (v19 || (~(-1 << v16[19]) & v17) != 0)
              {
                break;
              }

              v21 = *v16;
              v22 = *(v16 + 1);
              v23 = v15;
              v24 = v14;
              while (--v24)
              {
                if (v21 != *(v23 - 3) || v22 != *(v23 - 2))
                {
                  v27 = *(v23 - 1);
                  v26 = *v23;
                  v23 += 5;
                  v28 = bswap32(v27);
                  v29 = v17 < v28 + bswap32(v26);
                  if (v17 <= v28)
                  {
                    v29 = v28 < v20;
                  }

                  if (!v29)
                  {
                    continue;
                  }
                }

                goto LABEL_51;
              }

              ++v12;
              --v14;
              v15 = (v15 + 20);
              v13 = v12 >= v11;
              if (v12 == v11)
              {
                goto LABEL_52;
              }
            }

LABEL_51:
            if (!v13)
            {
              goto LABEL_57;
            }

LABEL_52:
            v6 = 0;
            v9 = 0;
            v30 = &v36;
            do
            {
              if (*(v30 - 3) == 201326593)
              {
                v9 = bswap32(*v30);
                v6 = bswap32(*(v30 - 1));
              }

              v30 += 5;
              --v11;
            }

            while (v11);
            if (v6)
            {
LABEL_21:
              v10 = pread(v1, &__buf, 0x8000uLL, v6);
              v4 = 0;
              if (v10 >= 4096 && v6 + v9 <= v8 && !HIDWORD(v9))
              {
                sub_2980DF550(&v38, &__buf, v10, v6, v9, &v33);
                if (v46 != 1 || (v4 = 0, v40 <= v39) && v41 <= v39 && v42 <= v39 && v43 <= v39)
                {
                  if ((v46 & v45) != 0)
                  {
                    v4 = v44;
                  }

                  else
                  {
                    v4 = 0;
                  }
                }
              }

              goto LABEL_58;
            }
          }
        }
      }
    }

LABEL_57:
    v4 = 0;
    goto LABEL_58;
  }

  v4 = 0;
LABEL_59:
  v31 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t sub_2980DF440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = vsnprintf(__str, 0x400uLL, "encountered multiple dyld __all_image_info", &a9);
  v17 = sub_2980DF4A8(v9, v10, v11, v12, v13, v14, v15, v16, "!dyld_all_image_infos_addr.has_value()");
  return sub_2980DF4A8(v17, v18, v19, v20, v21, v22, v23, v24, a9);
}

uint64_t sub_2980DF4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(byte_2A13A6990, 0x800uLL);
  vsnprintf(byte_2A13A6990, 0x400uLL, "assertion failed [%s]: %s\n(%s:%zu %s)\n", &a9);
  sub_2980DF4F4();
  return sub_2980DF4F4();
}

uint64_t sub_2980DF4F4()
{
  dprintf(2, "%s %s", byte_2A13A6990, &byte_2A13A6990[1024]);
  qword_2A13A6050 = byte_2A13A6990;
  v0 = abort_with_payload();
  return sub_2980DF550(v0);
}

unint64_t sub_2980DF550(unint64_t result, _DWORD *a2, unsigned int a3, uint64_t a4, int a5, const char **a6)
{
  v7 = result;
  v193 = *MEMORY[0x29EDCA608];
  if (a3 <= 0x1F)
  {
    v8 = "out-of-bounds Mach-O header";
    goto LABEL_203;
  }

  if (*a2 != -17958193)
  {
    v8 = "invalid Mach-O magic";
    goto LABEL_203;
  }

  if (a2[1] != 16777228)
  {
    v8 = "invalid cpu type/subtype";
    goto LABEL_203;
  }

  v10 = a2[3];
  v39 = v10 > 8;
  v11 = (1 << v10) & 0x1C4;
  v12 = v39 || v11 == 0;
  if (v12)
  {
    v8 = "unsupported Mach-O filetype";
    goto LABEL_203;
  }

  v13 = a2[5];
  if (v13 > 0xFFFFFFDF || (v14 = v13 + 32, (v13 + 32) > 0x8000uLL) || v14 > a3)
  {
    v8 = "load commands too large";
    goto LABEL_203;
  }

  v16 = a2[4];
  v185 = v16;
  if (v16)
  {
    v124 = a2[5];
    v125 = 0;
    v17 = 0;
    v18 = 0;
    v160 = 0;
    v19 = 0;
    v169 = 0;
    v171 = 0;
    v20 = 0;
    v21 = 0;
    v167 = 0;
    result = 0;
    v22 = 0;
    v140 = 0;
    v141 = 0;
    v23 = 0;
    v24 = 0;
    v142 = 0;
    v143 = 0;
    v25 = 0;
    v26 = 0;
    v138 = 0;
    v139 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LOBYTE(v164) = 0;
    v30 = 0;
    LOBYTE(v145) = 0;
    v31 = 0;
    LOBYTE(v144) = 0;
    LOBYTE(v173) = 0;
    v32 = -1;
    v33 = 32;
    while (1)
    {
      if (v33 > 0xFFFFFFF7 || (v34 = v33 + 8, v33 + 8 > v14))
      {
        v8 = "out-of-bounds load command";
        goto LABEL_203;
      }

      v35 = a2 + v33;
      v36 = *(a2 + v33 + 4);
      v37 = v33 + v36;
      v39 = v36 < 8 || (v33 + v36) >> 32 != 0 || v37 > v14;
      if (v39)
      {
        v8 = "malformed load command";
        goto LABEL_203;
      }

      v40 = *v35;
      if (*v35 > 26)
      {
        if (v40 <= 35)
        {
          if (v40 == 27)
          {
            if (v20)
            {
              v8 = "multiple LC_UUID commands";
              goto LABEL_203;
            }

            if (v36 != 24)
            {
              v8 = "LC_UUID command is wrong size";
              goto LABEL_203;
            }

            v192 = *(v35 + 8);
            v20 = 1;
          }

          else if (v40 == 29)
          {
            if (v21)
            {
              v8 = "multiple LC_LOAD_SIGNATURE commands";
              goto LABEL_203;
            }

            if (v36 != 16)
            {
              v8 = "LC_CODE_SIGNATURE command is wrong size";
              goto LABEL_203;
            }

            v187 = *v35;
            v21 = 1;
          }
        }

        else if (v40 == 36)
        {
          if ((v31 & 1) == 0)
          {
            if (v36 != 16)
            {
              v8 = "LC_VERSION_MIN_MACOSX command is wrong size";
              goto LABEL_203;
            }

            v47 = *(v35 + 3);
            goto LABEL_72;
          }
        }

        else if (v40 == 42)
        {
          if ((v173 & 1) == 0)
          {
            if (v36 != 16)
            {
              v8 = "LC_SOURCE_VERSION command is wrong size";
              goto LABEL_203;
            }

            v144 = *(v35 + 1);
            v119 = v144 >> 8;
            LOBYTE(v173) = 1;
          }
        }

        else if (v40 == 50 && (v31 & 1) == 0)
        {
          if (v36 <= 0x17)
          {
            v8 = "LC_BUILD_VERSION command is wrong size";
            goto LABEL_203;
          }

          v46 = *(v35 + 2);
          if (v46 == 6 || v46 == 1)
          {
            v47 = *(v35 + 4);
LABEL_72:
            v145 = HIWORD(v47);
            v121 = (bswap32(v47) & 0xFFFF0000 | HIWORD(v47)) >> 8;
            v31 = 1;
          }
        }
      }

      else if (v40 <= 4)
      {
        if (v40 == -2147483608)
        {
          if (v19)
          {
            goto LABEL_188;
          }

          if (v36 != 24)
          {
            v8 = "LC_MAIN command is wrong size";
            goto LABEL_203;
          }

          v169 = *(v35 + 1);
          v19 = 1;
        }

        else if (v40 == -892679679)
        {
          if (v36 != 32)
          {
            v8 = "LC_AOT_METADATA command is wrong size";
            goto LABEL_203;
          }

          if ((*(v35 + 4) + 32 * *(v35 + 5)) >> 32)
          {
            v8 = "integer overflow in aot metadata load command fragment list";
            goto LABEL_203;
          }

          if (__CFADD__(*(v35 + 2), *(v35 + 3)))
          {
            v8 = "integer overflow in aot metadata load x86 image path";
            goto LABEL_203;
          }

          v188 = *v35;
          v189 = *(v35 + 1);
          v18 = 1;
        }
      }

      else
      {
        switch(v40)
        {
          case 5:
            if (v19)
            {
LABEL_188:
              v8 = "multiple load commands specify entry points";
              goto LABEL_203;
            }

            v48 = ((v34 << 31) >> 31) + 4;
            if (v48 != v48 << 31 >> 31 || v48 > v37)
            {
LABEL_187:
              v8 = "malformed LC_UNIXTHREAD command";
              goto LABEL_203;
            }

            if (*(a2 + v34) != 6)
            {
              v8 = "invalid LC_UNIXTHREAD architecture";
              goto LABEL_203;
            }

            if (v33 > 0xFFFFFEEF)
            {
              goto LABEL_187;
            }

            v49 = v33 + 272;
            v50 = ((v49 << 31) >> 31) + 8;
            if (v50 != v50 << 31 >> 31 || v50 > v37)
            {
              goto LABEL_187;
            }

            v169 = *(a2 + v49);
            v19 = 2;
            break;
          case 14:
            v160 = 1;
            break;
          case 25:
            if (v36 <= 0x47)
            {
              goto LABEL_189;
            }

            v165 = v29;
            v174 = v30;
            v152 = v24;
            v154 = v23;
            v156 = v31;
            v158 = a5;
            v41 = *(v35 + 16);
            v42 = (80 * v41);
            if (80 * v41 != v42 || v42 >= 0xFFFFFFB8 || 80 * v41 + 72 != v36)
            {
LABEL_189:
              v8 = "invalid LC_SEGMENT_64 command size";
              goto LABEL_203;
            }

            v147 = v18;
            v149 = v20;
            v129 = v32;
            v130 = v28;
            v123 = v19;
            v151 = v21;
            v43 = v27;
            v162 = v17;
            v126 = result;
            v134 = v25;
            v136 = v26;
            ++v167;
            if (strcmp(v35 + 8, "__PAGEZERO"))
            {
              result = strcmp(v35 + 8, "__LINKEDIT");
              v120 = a4;
              v132 = v14;
              if (result)
              {
                v44 = *(v35 + 3);
                v45 = *(v35 + 4) + v44;
                result = v126;
                v27 = v43;
                v28 = v130;
              }

              else
              {
                if (v43 != v130)
                {
                  v8 = "multiple __LINKEDIT segments";
LABEL_203:
                  *a6 = v8;
LABEL_204:
                  *v7 = 0;
                  *(v7 + 280) = 0;
                  goto LABEL_205;
                }

                v44 = *(v35 + 3);
                v45 = *(v35 + 4) + v44;
                v139 = *(v35 + 10);
                v138 = *(v35 + 12) + v139;
                v28 = v44;
                v27 = v45;
                result = v126;
              }

              if (v44 < v32)
              {
                v32 = v44;
              }

              if (v45 > result)
              {
                result = v45;
              }

              if (v41)
              {
                v129 = v32;
                v130 = v28;
                v117 = v27;
                v127 = result;
                v51 = v35 + 72;
                v52 = strncmp(v35 + 8, "__DATA", 0x10uLL);
                v175 = 0;
                v181 = 0;
                v177 = 0;
                v183 = 0;
                v179 = 0;
                v146 = a6;
                do
                {
                  if (!v52)
                  {
                    if (!strncmp(v51, "__stubs_sh", 0x10uLL))
                    {
                      v134 = *(v51 + 5) + *(v51 + 4);
                      v136 = *(v51 + 4);
                    }

                    else
                    {
                      v82 = strncmp(v51, "__all_image_info", 0x10uLL);
                      if (!v82)
                      {
                        if (v174)
                        {
                          goto LABEL_207;
                        }

                        v164 = *(v51 + 4);
                        v122 = v164 >> 8;
                        v174 = 1;
                      }
                    }
                  }

                  result = strncmp(v35 + 8, "__DATA_DIRTY", 0x10uLL);
                  if (!result)
                  {
                    result = strncmp(v51, "__all_image_info", 0x10uLL);
                    if (!result)
                    {
                      if (v174)
                      {
                        v82 = sub_2980DF440(result, 528, v53, v54, v55, v56, v57, v58, v116);
LABEL_207:
                        v114 = sub_2980DF440(v82, 518, v83, v84, v85, v86, v87, v88, v116);
                        return sub_2980E01E4(v114, v115);
                      }

                      v122 = *(v51 + 4) >> 8;
                      v174 = 1;
                      v164 = *(v51 + 4);
                    }
                  }

                  v59 = *(v51 + 16);
                  if (v59 == 22)
                  {
                    v60 = *(v51 + 12);
                    if ((v60 & 3) == 0)
                    {
                      v61 = *(v51 + 5);
                      v62 = v60 + v61;
                      v63 = __CFADD__(v60, v61);
                      if (HIDWORD(v62))
                      {
                        v63 = 1;
                      }

                      v12 = !v63;
                      v64 = v165;
                      if (!v12)
                      {
                        LODWORD(v60) = v165;
                        LODWORD(v62) = v171;
                      }

                      if ((v61 & 3) == 0)
                      {
                        v64 = v60;
                      }

                      v165 = v64;
                      if ((v61 & 3) != 0)
                      {
                        v65 = v171;
                      }

                      else
                      {
                        v65 = v62;
                      }

                      v171 = v65;
                    }
                  }

                  if ((v59 & 0x400) != 0)
                  {
                    v66 = *(v51 + 5);
                    if (v66)
                    {
                      v67 = v37;
                      v68 = v22;
                      v69 = v52;
                      v70 = *(v51 + 12);
                      v71 = v70 + v66;
                      if (__CFADD__(v70, v66) || HIDWORD(v71) || (v72 = *(v51 + 4), v73 = __CFADD__(v72, v66), v74 = v72 + v66, v73))
                      {
                        *v146 = "integer overflow in section boundaries";
                        goto LABEL_204;
                      }

                      v75 = v177;
                      if (v70 < v177)
                      {
                        v75 = *(v51 + 12);
                      }

                      v76 = v181;
                      if (v181 <= v71)
                      {
                        v76 = v71;
                      }

                      v77 = v179;
                      if (v72 < v179)
                      {
                        v77 = *(v51 + 4);
                      }

                      v78 = v183;
                      if (v183 <= v74)
                      {
                        v78 = v74;
                      }

                      if (v175)
                      {
                        v72 = v77;
                      }

                      v179 = v72;
                      if (v175)
                      {
                        v79 = v78;
                      }

                      else
                      {
                        v79 = v74;
                      }

                      v183 = v79;
                      if (v175)
                      {
                        v80 = v75;
                      }

                      else
                      {
                        v80 = *(v51 + 12);
                      }

                      v177 = v80;
                      if (v175)
                      {
                        v81 = v76;
                      }

                      else
                      {
                        v81 = v71;
                      }

                      v181 = v81;
                      if (!strncmp(v35 + 8, "__TEXT", 0x10uLL) && !strncmp(v51, "__stubs", 0x10uLL))
                      {
                        v89 = *(v51 + 18);
                        if (v89)
                        {
                          if ((v71 - v70) % v89)
                          {
                            v89 = 0;
                          }

                          v162 = v89;
                        }

                        else
                        {
                          v162 = 0;
                        }

                        v175 = 1;
                        v143 = v70;
                        v142 = v71;
                      }

                      else
                      {
                        v175 = 1;
                      }

                      v52 = v69;
                      v22 = v68;
                      v37 = v67;
                      a6 = v146;
                    }
                  }

                  v51 += 80;
                  --v41;
                }

                while (v41);
                v90 = v125;
                v24 = v152;
                v23 = v154;
                if (!(v125 & 1 | ((v175 & 1) == 0)))
                {
                  v24 = v179;
                  v23 = v183;
                }

                v91 = v141;
                if (!(v125 & 1 | ((v175 & 1) == 0)))
                {
                  v91 = v177;
                }

                v141 = v91;
                if (v125 & 1 | ((v175 & 1) == 0))
                {
                  v92 = v140;
                }

                else
                {
                  v92 = v181;
                }

                v140 = v92;
                if (!(v125 & 1 | ((v175 & 1) == 0)))
                {
                  v90 = 1;
                }

                v125 = v90;
                a4 = v120;
                v14 = v132;
                v25 = v134;
                v31 = v156;
                a5 = v158;
                v26 = v136;
                v30 = v174;
                result = v127;
                v17 = v162;
                v27 = v117;
LABEL_158:
                v32 = v129;
                v28 = v130;
              }

              else
              {
                v25 = v134;
                v31 = v156;
                a5 = v158;
                v26 = v136;
                v24 = v152;
                v23 = v154;
                v30 = v174;
                v17 = v162;
              }

              v20 = v149;
              v21 = v151;
              v19 = v123;
              v18 = v147;
              v29 = v165;
              break;
            }

            v31 = v156;
            a5 = v158;
            v25 = v134;
            v26 = v136;
            v24 = v152;
            v23 = v154;
            v30 = v174;
            result = v126;
            v17 = v162;
            v27 = v43;
            goto LABEL_158;
        }
      }

      ++v22;
      v33 = v37;
      if (v22 == v185)
      {
        v148 = v18;
        LOBYTE(v150) = v20;
        v93 = v19;
        BYTE4(v150) = v21;
        v163 = v17;
        BYTE4(v173) = v30;
        v153 = v24;
        v155 = v23;
        v157 = v31;
        v159 = a5;
        v133 = v14;
        v94 = v140 << 32;
        v95 = v37 - 32;
        v96 = v141;
        LODWORD(v16) = v167 > 0xFF;
        v97 = v138 << 32;
        v98 = v139;
        v99 = v29;
        v100 = v142 << 32;
        v101 = v143;
        v102 = v122 << 8;
        v186 = v164;
        v103 = v171 << 32;
        v104 = v121 << 8;
        v105 = v145;
        v106 = v119 << 8;
        v107 = v144;
        v108 = v99;
        v109 = v160;
        v110 = v169;
        v13 = v124;
        goto LABEL_167;
      }
    }
  }

  v157 = 0;
  v159 = a5;
  v133 = v13 + 32;
  v173 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v186 = 0;
  v102 = 0;
  v108 = 0;
  v103 = 0;
  v28 = 0;
  v27 = 0;
  v98 = 0;
  v97 = 0;
  v26 = 0;
  v25 = 0;
  v101 = 0;
  v100 = 0;
  v153 = 0;
  v155 = 0;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  result = 0;
  v150 = 0;
  v110 = 0;
  v93 = 0;
  v109 = 0;
  v148 = 0;
  v163 = 0;
  v32 = -1;
LABEL_167:
  if (v95 != v13)
  {
    v8 = "Mach-O header sizeofcmds is incorrect";
    goto LABEL_203;
  }

  if (!((v93 != 1) | v109 & 1))
  {
    v8 = "executable is inconsistent about dynamic linking";
    goto LABEL_203;
  }

  if (v93 == 1)
  {
    v73 = __CFADD__(v32, v110);
    v110 += v32;
    if (v73)
    {
      v8 = "invalid LC_MAIN entry point";
      goto LABEL_203;
    }

LABEL_179:
    if (v110 < v32 || result <= v110)
    {
      v8 = "invalid entry point";
      goto LABEL_203;
    }

    goto LABEL_181;
  }

  if (v93)
  {
    goto LABEL_179;
  }

LABEL_181:
  if (v16)
  {
    v8 = "Mach-O has too many segments";
    goto LABEL_203;
  }

  v166 = v94;
  v168 = v98;
  v172 = v97;
  v176 = v102;
  v178 = v105;
  v180 = v104;
  v182 = v107;
  v184 = v106;
  v131 = v28;
  v170 = v110;
  v161 = v109;
  v118 = v27;
  v128 = result;
  v135 = v25;
  v137 = v26;
  result = sub_2980E01E4(a2, a6);
  if ((result & 1) == 0)
  {
    goto LABEL_204;
  }

  *v7 = 16777228;
  *(v7 + 24) = v159;
  *(v7 + 28) = 0;
  *&v191[3] = v188;
  *&v191[19] = v189;
  *(v7 + 200) = HIDWORD(v189);
  *(v7 + 217) = v192;
  *&v190[2] = v187;
  *(v7 + 185) = *&v191[16];
  v111 = a2[3];
  v112 = a2[6];
  result = v150 & 1;
  *(v7 + 8) = 0;
  *(v7 + 16) = a4;
  *(v7 + 32) = v133;
  *(v7 + 36) = v111;
  *(v7 + 40) = v112;
  *(v7 + 48) = v32;
  *(v7 + 56) = v128;
  *(v7 + 64) = v166 | v96;
  *(v7 + 72) = v153;
  *(v7 + 80) = v155;
  *(v7 + 88) = v172 | v168;
  *(v7 + 96) = v131;
  *(v7 + 104) = v118;
  *(v7 + 112) = v100 | v101;
  *(v7 + 120) = v163;
  *(v7 + 128) = v137;
  *(v7 + 136) = v135;
  *(v7 + 144) = v176 | v186;
  *(v7 + 152) = BYTE4(v173);
  *(v7 + 160) = v103 | v108;
  *(v7 + 168) = v148 & 1;
  *(v7 + 169) = *v191;
  *(v7 + 204) = v161 & 1;
  *(v7 + 205) = v93;
  *(v7 + 208) = v170;
  *(v7 + 216) = result;
  *(v7 + 233) = BYTE4(v150) & 1;
  *(v7 + 234) = *v190;
  *(v7 + 250) = HIWORD(v187);
  *(v7 + 252) = v180 | v178;
  *(v7 + 256) = v157;
  *(v7 + 264) = v184 | v182;
  *(v7 + 272) = v173;
  *(v7 + 280) = 1;
LABEL_205:
  v113 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2980E01E4(uint64_t a1, const char **a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 32;
    v6 = "invalid segment permissions";
    do
    {
      v7 = a1 + v5;
      v8 = *(a1 + v5);
      v5 += *(a1 + v5 + 4);
      if (v8 == 25)
      {
        v9 = *(v7 + 60);
        if (v9 > 7 || *(v7 + 56) > 7u || v9 && (v9 & 1) == 0)
        {
          goto LABEL_35;
        }

        v11 = *(v7 + 40);
        v10 = *(v7 + 48);
        if (!v11 && v10)
        {
          v12 = *(a1 + 20) + 32;
          if ((v10 < v12) | v3 & 1)
          {
            v6 = "load commands are mapped by multiple segments";
            if (v10 < v12)
            {
              v6 = "segment partially maps load commands";
            }

            goto LABEL_35;
          }

          v3 = 1;
        }

        v13 = *(v7 + 32);
        v14 = v4 + 1;
        if (v10 | v13 && v14 < v2)
        {
          v15 = v10 + v11;
          v16 = *(v7 + 24);
          v17 = v13 + v16;
          v18 = v2 - 1 - v4;
          v19 = v5;
          while (1)
          {
            v20 = (a1 + v19);
            if (*(a1 + v19) == 25)
            {
              v21 = v20[6];
              v22 = v20[4];
              if (v21 | v22)
              {
                v23 = v20[5];
                v24 = v23 + v21;
                if (v23 < v15 && v11 < v24)
                {
                  break;
                }

                v26 = v20[3];
                if (v16 < v22 + v26 && v26 < v17)
                {
                  break;
                }
              }
            }

            v19 += *(a1 + v19 + 4);
            if (!--v18)
            {
              goto LABEL_30;
            }
          }

          v6 = "overlapping Mach-O segments";
          goto LABEL_35;
        }
      }

      else
      {
        v14 = v4 + 1;
      }

LABEL_30:
      v4 = v14;
    }

    while (v14 != v2);
    if ((v3 & 1) == 0)
    {
      goto LABEL_33;
    }

    return 1;
  }

  else
  {
LABEL_33:
    v6 = "no segment mapping load commands";
LABEL_35:
    result = 0;
    *a2 = v6;
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}