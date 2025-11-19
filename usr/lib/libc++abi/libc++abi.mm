void __cxa_bad_cast(void)
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

void __cxa_bad_typeid(void)
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_typeid::bad_typeid(exception);
}

void __cxa_throw_bad_array_new_length(void)
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void demangling_terminate_handler(void)
{
  globals_fast = __cxa_get_globals_fast();
  if (!globals_fast || (v8 = *globals_fast) == 0)
  {
    __abort_message("terminating", v1, v2, v3, v4, v5, v6, v7, v33);
  }

  if (__cxxabiv1::__isOurExceptionClass(v8 + 3))
  {
    if (__cxxabiv1::__getExceptionClass(v8 + 3) == 0x434C4E47432B2B01)
    {
      exception_cleanup = v8->exception_cleanup;
    }

    else
    {
      exception_cleanup = &v8[4];
    }

    v34 = exception_cleanup;
    private_1 = v8->private_1;
    __cxa_demangle((*(private_1 + 1) & 0x7FFFFFFFFFFFFFFFLL), 0, 0, 0);
    {
      v25 = cause;
      (*(*v34 + 16))(v34);
      __abort_message("terminating due to %s exception of type %s: %s", v26, v27, v28, v29, v30, v31, v32, v25);
    }

    __abort_message("terminating due to %s exception of type %s", v18, v19, v20, v21, v22, v23, v24, cause);
  }

  __abort_message("terminating due to %s foreign exception", v9, v10, v11, v12, v13, v14, v15, cause);
}

std::unexpected_handler std::set_unexpected(std::unexpected_handler a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = demangling_unexpected_handler;
  }

  return atomic_exchange(&__cxa_unexpected_handler, v1);
}

std::terminate_handler std::set_terminate(std::terminate_handler a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = demangling_terminate_handler;
  }

  return atomic_exchange(&__cxa_terminate_handler, v1);
}

char *__cxa_demangle(const char *lpmangled, char *lpout, size_t *lpoutlen, int *lpstatus)
{
  v4 = MEMORY[0x1EEE9AC00](lpmangled, lpout, lpoutlen, lpstatus);
  v8 = v7;
  v74 = *MEMORY[0x1E69E9840];
  if (!v4 || (v9 = v6, v10 = v5, v11 = v4, v5) && !v6)
  {
    v12 = 0;
    if (v7)
    {
      *v7 = -3;
    }

    goto LABEL_38;
  }

  v13 = strlen(v4);
  v51 = v11;
  v52 = &v11[v13];
  v53 = v56;
  v54 = v56;
  v55 = v57;
  memset(v56, 0, sizeof(v56));
  v57[0] = v58;
  v57[1] = v58;
  memset(v58, 0, sizeof(v58));
  v57[2] = v59;
  v59[0] = v60;
  v59[1] = v60;
  v59[2] = v61;
  memset(v60, 0, sizeof(v60));
  v61[0] = v62;
  v61[1] = v62;
  v61[2] = &v63;
  memset(v62, 0, sizeof(v62));
  v63 = v66;
  v64 = v66;
  v65 = &v67;
  memset(v66, 0, sizeof(v66));
  v67 = 1;
  v68 = 0;
  v69 = -1;
  v71 = 0;
  v70 = 0;
  v72[0] = 0u;
  v73 = v72;
  if (v13 < 2)
  {
LABEL_20:
    if (v52 != v51)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

  if (*v11 == 23135)
  {
    v36 = 2;
  }

  else
  {
    if (v13 == 2)
    {
      goto LABEL_20;
    }

    if (*v11 != 24415 || v11[2] != 90)
    {
      if (v13 < 4)
      {
        goto LABEL_20;
      }

      if (*v11 == 1516199775)
      {
        v40 = 4;
      }

      else
      {
        if (v13 == 4)
        {
          goto LABEL_20;
        }

        if (*v11 != 1600085855 || v11[4] != 90)
        {
          goto LABEL_20;
        }

        v40 = 5;
      }

      v51 = &v11[v40];
      if (!v46 || (v41 = v51, (v52 - v51) < 0xD) || (*v51 == 0x695F6B636F6C625FLL ? (v42 = *(v51 + 5) == 0x656B6F766E695F6BLL) : (v42 = 0), !v42))
      {
LABEL_53:
        v37 = 0;
        goto LABEL_64;
      }

      v51 += 13;
      if (v41 + 13 == v52 || v41[13] != 95)
      {
      }

      else
      {
        v51 = v41 + 14;
        if (!v24)
        {
          goto LABEL_53;
        }
      }

      if (v52 != v51)
      {
        if (*v51 != 46)
        {
          goto LABEL_53;
        }

        v51 = v52;
      }

LABEL_63:
      v37 = v23;
LABEL_64:
      if (v37)
      {
LABEL_65:
        if (v10)
        {
          v43 = *v9;
        }

        else
        {
          v43 = 0;
        }

        v46 = v10;
        v47 = 0;
        v48 = v43;
        v49 = -1;
        v50 = 1;
        if (v63 != v64)
        {
          __abort_message("%s:%d: %s", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/cxa_demangle.cpp");
        }

        v44 = v47++;
        *(v46 + v44) = 0;
        if (v9)
        {
          *v9 = v47;
        }

        v31 = 0;
        v12 = v46;
        if (!v8)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v36 = 3;
  }

  v51 = &v11[v36];
  if (v37)
  {
    v38 = v51;
    if (v52 == v51)
    {
      goto LABEL_65;
    }

    v45 = v52 - v51;
    if (*v51 == 46)
    {
      *(v39 + 8) = 1;
      *(v39 + 9) = *(v39 + 9) & 0xF000 | 0x540;
      *v39 = off_1EEEA7CF0;
      v39[2] = v37;
      v39[3] = v38;
      v39[4] = v45;
      v51 = v52;
      v37 = v39;
      goto LABEL_65;
    }
  }

LABEL_21:
  v12 = 0;
  v31 = -2;
  if (v8)
  {
LABEL_22:
    *v8 = v31;
  }

LABEL_23:
  v32 = v73;
  if (v73)
  {
    do
    {
      while (1)
      {
        v33 = *v32;
        v73 = *v32;
        if (v32 == v72)
        {
          break;
        }

        free(v32);
        v32 = v73;
        if (!v73)
        {
          goto LABEL_28;
        }
      }

      v32 = v33;
    }

    while (v33);
  }

LABEL_28:
  v72[0] = 0uLL;
  v73 = v72;
  if (v63 != v66)
  {
    free(v63);
  }

  if (v61[0] != v62)
  {
    free(v61[0]);
  }

  if (v59[0] != v60)
  {
    free(v59[0]);
  }

  if (v57[0] != v58)
  {
    free(v57[0]);
  }

  if (v53 != v56)
  {
    free(v53);
  }

LABEL_38:
  v34 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1801B6A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::itanium_demangle::Node::print(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 32))(a1);
  if ((*(a1 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*a1 + 40);

    return v5(a1, a2);
  }

  return result;
}

void *anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>::~ManglingParser(void *a1)
{
  v2 = a1 + 101;
  v3 = a1[613];
  if (v3)
  {
    do
    {
      while (1)
      {
        v4 = *v3;
        a1[613] = *v3;
        if (v3 == v2)
        {
          break;
        }

        free(v3);
        v3 = a1[613];
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      v3 = v4;
    }

    while (v4);
  }

LABEL_6:
  *v2 = 0;
  v2[1] = 0;
  a1[613] = v2;
  v5 = a1[90];
  if (v5 != a1 + 93)
  {
    free(v5);
  }

  v6 = a1[83];
  if (v6 != a1 + 86)
  {
    free(v6);
  }

  v7 = a1[72];
  if (v7 != a1 + 75)
  {
    free(v7);
  }

  v8 = a1[37];
  if (v8 != a1 + 40)
  {
    free(v8);
  }

  v9 = a1[2];
  if (v9 != a1 + 5)
  {
    free(v9);
  }

  return a1;
}

void *anonymous namespace::itanium_demangle::OutputBuffer::grow(void *this, uint64_t a2)
{
  v2 = this[2];
  v3 = this[1] + a2;
  if (v3 > v2)
  {
    v4 = this;
    v5 = v3 + 992;
    v6 = 2 * v2;
    if (v6 <= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    this[2] = v7;
    this = malloc_type_realloc(*this, v7, 0x100004077774924uLL);
    *v4 = this;
    if (!this)
    {
      abort();
    }
  }

  return this;
}

uint64_t anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::consumeIf(const void **a1, const void *a2, size_t a3)
{
  v3 = *a1;
  if (a3 > a1[1] - *a1 || memcmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v3[a3];
  return 1;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseEncoding(const void **a1)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 - *a1;
  if (v10 == *a1)
  {
LABEL_14:
    LOWORD(v86) = 0;
    HIDWORD(v86) = 0;
    v87 = 0;
    v88 = (a1[91] - a1[90]) >> 3;
    v89 = 0;
    if (v22)
    {
      v23 = v88;
      v24 = a1[90];
      v25 = (a1[91] - v24) >> 3;
      if (v88 < v25)
      {
        v26 = a1[83];
        if (v26 == a1[84])
        {
          goto LABEL_126;
        }

        if (!*v26)
        {
          goto LABEL_126;
        }

        v27 = *&v24[8 * v88];
        v28 = *(v27 + 16);
        v29 = **v26;
        if (v28 >= (*(*v26 + 8) - v29) >> 3)
        {
          goto LABEL_126;
        }

        v30 = v88 + 1;
        while (1)
        {
          *(v27 + 24) = *(v29 + 8 * v28);
          if (v25 == v30)
          {
            break;
          }

          v31 = v30;
          if (*v26)
          {
            v27 = *&v24[8 * v30];
            v28 = *(v27 + 16);
            v29 = **v26;
            ++v30;
            if (v28 < (*(*v26 + 8) - v29) >> 3)
            {
              continue;
            }
          }

          if (v31 >= v25)
          {
            goto LABEL_33;
          }

          goto LABEL_126;
        }
      }

      if (v25 < v23)
      {
        __abort_message("%s:%d: %s", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/demangle/ItaniumDemangle.h");
      }

      a1[91] = &v24[8 * v23];
LABEL_33:
      v37 = *a1;
      v36 = a1[1];
      if (v36 != *a1)
      {
        v38 = *v37 - 46;
        v39 = v38 > 0x31;
        v40 = (1 << v38) & 0x2000000800001;
        if (v39 || v40 == 0)
        {
          if ((v36 - *a1) >= 0xD && (*v37 == 0x6C62616E65396155 ? (v42 = *(v37 + 5) == 0x4966695F656C6261) : (v42 = 0), v42))
          {
            v78 = v37 + 13;
            *a1 = v78;
            v79 = (a1[3] - a1[2]) >> 3;
            while (v78 == v36 || *v78 != 69)
            {
              v85.n128_u64[0] = v80;
              if (!v80)
              {
                goto LABEL_126;
              }

              v78 = *a1;
              v36 = a1[1];
            }

            *a1 = v78 + 1;
            v85.n128_u64[1] = v82;
            v43 = v83;
          }

          else
          {
            v43 = 0;
          }

          if ((v86 & 1) != 0 || BYTE1(v86) != 1)
          {
            v44 = 0;
          }

          else
          {
            if (!v44)
            {
              goto LABEL_126;
            }
          }

          v60 = *a1;
          v59 = a1[1];
          if (*a1 == v59 || *v60 != 118)
          {
            v84 = v44;
            v64 = a1[3] - a1[2];
            while (1)
            {
              v85.n128_u64[0] = v65;
              if (!v65)
              {
                goto LABEL_126;
              }

              if (v89 == 1 && v64 == a1[3] - a1[2])
              {
                *(v67 + 8) = 87;
                *(v67 + 9) = *(v67 + 9) & 0xF000 | 0x540;
                *v67 = off_1EEEA7C00;
                v67[2] = v65;
                v85.n128_u64[0] = v67;
              }

              if (a1[1] != *a1)
              {
                v68 = **a1 - 46;
                v39 = v68 > 0x31;
                v69 = (1 << v68) & 0x2000800800001;
                if (v39 || v69 == 0)
                {
                  continue;
                }
              }

              v62 = v71;
              v63 = *a1;
              v59 = a1[1];
              v44 = v84;
              goto LABEL_102;
            }
          }

          v61 = 0;
          v62 = 0;
          v63 = v60 + 1;
          *a1 = v63;
LABEL_102:
          if (v63 == v59 || *v63 != 81)
          {
            v74 = 0;
          }

          else
          {
            *a1 = v63 + 1;
            v72 = *(a1 + 778);
            *(a1 + 778) = 1;
            v74 = v73;
            *(a1 + 778) = v72;
            if (!v73)
            {
              goto LABEL_126;
            }
          }

          v75 = HIDWORD(v86);
          v76 = v87;
          *(v14 + 8) = 19;
          *(v14 + 9) = *(v14 + 9) & 0xF000 | 0x100;
          *v14 = off_1EEEA7C78;
          v14[2] = v44;
          v14[3] = v22;
          v14[4] = v61;
          v14[5] = v62;
          v14[6] = v43;
          v14[7] = v74;
          *(v14 + 16) = v75;
          *(v14 + 68) = v76;
          goto LABEL_120;
        }
      }
    }

    goto LABEL_127;
  }

  v12 = *v9;
  if (v12 != 71)
  {
    if (v12 == 84)
    {
      if (v11 < 2)
      {
        goto LABEL_76;
      }

      v13 = v9[1];
      if (v13 > 0x52)
      {
        if (v9[1] <= 0x55u)
        {
          if (v13 == 83)
          {
            *a1 = v9 + 2;
            if (v86)
            {
              goto LABEL_120;
            }

            goto LABEL_126;
          }

          if (v13 == 84)
          {
            *a1 = v9 + 2;
            if (v86)
            {
              goto LABEL_120;
            }

            goto LABEL_126;
          }
        }

        else
        {
          switch(v13)
          {
            case 'V':
              *a1 = v9 + 2;
              if (v86)
              {
                goto LABEL_120;
              }

              goto LABEL_126;
            case 'W':
              *a1 = v9 + 2;
              if (v86)
              {
                goto LABEL_120;
              }

              goto LABEL_126;
            case 'c':
              *a1 = v9 + 2;
              {
                if (v86)
                {
LABEL_120:
                  v22 = v14;
                  goto LABEL_127;
                }
              }

              goto LABEL_126;
          }
        }

LABEL_76:
        v57 = v9 + 1;
        *a1 = v57;
        v58 = v10 != v57 && *v57 == 118;
        {
          if (v86)
          {
            if (v58)
            {
            }

            else
            {
            }

            goto LABEL_120;
          }
        }

        goto LABEL_126;
      }

      if (v9[1] > 0x47u)
      {
        if (v13 == 72)
        {
          *a1 = v9 + 2;
          if (v86)
          {
            goto LABEL_120;
          }

          goto LABEL_126;
        }

        if (v13 == 73)
        {
          *a1 = v9 + 2;
          if (v86)
          {
            goto LABEL_120;
          }

          goto LABEL_126;
        }

        goto LABEL_76;
      }

      if (v13 == 65)
      {
        *a1 = v9 + 2;
        v86 = v77;
        if (v77)
        {
          goto LABEL_120;
        }

        goto LABEL_126;
      }

      if (v13 != 67)
      {
        goto LABEL_76;
      }

      *a1 = v9 + 2;
      if (v86)
      {
        if (v45)
        {
          v52 = *a1;
          if (*a1 != a1[1] && *v52 == 95)
          {
            *a1 = v52 + 1;
            if (v85.n128_u64[0])
            {
              goto LABEL_120;
            }
          }
        }
      }

LABEL_126:
      v22 = 0;
      goto LABEL_127;
    }

    goto LABEL_14;
  }

  if (v11 < 2)
  {
    goto LABEL_126;
  }

  v32 = v9[1];
  switch(v32)
  {
    case 'I':
      *a1 = v9 + 2;
      v86 = 0;
      v33 = v86;
      if (v86)
      {
        v56 = v55;
      }

      else
      {
        v56 = 1;
      }

      if (v56)
      {
        goto LABEL_126;
      }

      *(v22 + 8) = 21;
      *(v22 + 9) = *(v22 + 9) & 0xF000 | 0x540;
      *v22 = off_1EEEA5C10;
      v34 = "initializer for module ";
      v35 = 23;
      break;
    case 'R':
      *a1 = v9 + 2;
      if (v86)
      {
        v54 = *a1;
        if (*a1 == a1[1] || *v54 != 95)
        {
          if (!v53)
          {
            goto LABEL_126;
          }
        }

        else
        {
          *a1 = v54 + 1;
        }

        goto LABEL_120;
      }

      goto LABEL_126;
    case 'V':
      *a1 = v9 + 2;
      if (!v33)
      {
        goto LABEL_126;
      }

      *(v22 + 8) = 21;
      *(v22 + 9) = *(v22 + 9) & 0xF000 | 0x540;
      *v22 = off_1EEEA5C10;
      v34 = "guard variable for ";
      v35 = 19;
      break;
    default:
      goto LABEL_126;
  }

  v22[2] = v34;
  v22[3] = v35;
  v22[4] = v33;
LABEL_127:
  return v22;
}

void sub_1801B751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Unwind_Resume(a1);
}

char *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseNumber(char **a1, int a2)
{
  result = *a1;
  v4 = a1[1];
  v5 = result;
  if (a2)
  {
    if (result == v4)
    {
      return 0;
    }

    v5 = result;
    if (*result == 110)
    {
      v5 = result + 1;
      *a1 = result + 1;
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0)
  {
    return 0;
  }

  v7 = MEMORY[0x1E69E9830];
  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
  {
    return 0;
  }

  do
  {
    v8 = *v5;
    if (v8 < 0)
    {
      break;
    }

    if ((*(v7 + 4 * v8 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
  }

  while (v5 != v4);
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[34],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, const char *a2, uint64_t *a3)
{
  v6 = strlen(a2);
  v7 = *a3;
  *(v5 + 8) = 21;
  *(v5 + 9) = *(v5 + 9) & 0xF000 | 0x540;
  *v5 = off_1EEEA5C10;
  v5[2] = a2;
  v5[3] = v6;
  v5[4] = v7;
  return v5;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseType(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v70 = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 - *a1;
  if (v10 == *a1)
  {
LABEL_88:
LABEL_89:
    v20 = v19;
    v70 = v19;
    if (!v19)
    {
      return v20;
    }

    goto LABEL_90;
  }

  v12 = *v9;
  switch(*v9)
  {
    case 'A':
      *a1 = v9 + 1;
      v72 = 0;
      if (v10 == (v9 + 1))
      {
        if ((*(MEMORY[0x1E69E9830] + 61) & 4) == 0)
        {
          goto LABEL_138;
        }

LABEL_142:
        v71.n128_u64[1] = v46;
        v72 = v47;
        v48 = *v8;
        if (*v8 == *(v8 + 8) || *v48 != 95)
        {
          goto LABEL_149;
        }

        v27 = (v48 + 1);
        goto LABEL_145;
      }

      v26 = v9[1];
      if (v26 < 0)
      {
        goto LABEL_138;
      }

      if ((*(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x400) != 0)
      {
        goto LABEL_142;
      }

      if (v26 == 95)
      {
        v27 = (v9 + 2);
LABEL_145:
        *v8 = v27;
        goto LABEL_146;
      }

LABEL_138:
      if (!v44)
      {
        goto LABEL_149;
      }

      v45 = *v8;
      if (*v8 == *(v8 + 8) || *v45 != 95)
      {
        goto LABEL_149;
      }

      *v8 = v45 + 1;
      v72 = v44;
LABEL_146:
      if (!v71.n128_u64[0])
      {
LABEL_149:
        v20 = 0;
        goto LABEL_150;
      }

LABEL_148:
      v20 = v29;
LABEL_150:
      v70 = v20;
      if (!v20)
      {
        return v20;
      }

LABEL_90:
      return v20;
    case 'C':
      *a1 = v9 + 1;
      if (!v71.n128_u64[0])
      {
        return 0;
      }

      goto LABEL_136;
    case 'D':
      if (v11 < 2)
      {
        return 0;
      }

      v20 = 0;
      v33 = v9[1];
      switch(v9[1])
      {
        case 'A':
          if (v11 == 2)
          {
            goto LABEL_204;
          }

          v20 = 0;
          v59 = v9[2];
          *a1 = v9 + 3;
          if (v59 <= 108)
          {
            if (v59 == 105)
            {
              v21 = "_Accum";
              goto LABEL_47;
            }

            if (v59 == 106)
            {
              v21 = "unsigned _Accum";
              goto LABEL_197;
            }

            if (v59 != 108)
            {
              return v20;
            }

            v21 = "long _Accum";
            goto LABEL_122;
          }

          if (v59 == 109)
          {
            v21 = "unsigned long _Accum";
            goto LABEL_250;
          }

          if (v59 == 116)
          {
            v21 = "unsigned short _Accum";
            goto LABEL_255;
          }

          if (v59 != 115)
          {
            return v20;
          }

          v21 = "short _Accum";
          goto LABEL_105;
        case 'B':
        case 'U':
          LOBYTE(v72) = v33 == 66;
          v34 = v9 + 2;
          *a1 = v34;
          if (v10 == v34)
          {
            v35 = 0;
          }

          else
          {
            v35 = *v34;
            if (v35 < 0)
            {
              goto LABEL_210;
            }
          }

          if ((*(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x400) != 0)
          {
            v71.n128_u64[1] = v62;
            v71.n128_u64[0] = v63;
            goto LABEL_213;
          }

LABEL_210:
          v71.n128_u64[0] = v61;
          if (!v61)
          {
            return 0;
          }

LABEL_213:
          v64 = *v8;
          if (*v8 == *(v8 + 8) || *v64 != 95)
          {
            return 0;
          }

          *v8 = v64 + 1;
        case 'F':
          *a1 = v9 + 2;
          {
            v21 = "std::bfloat16_t";
            goto LABEL_197;
          }

          v71.n128_u64[1] = v65;
          v71.n128_u64[0] = v66;
          v67 = *v8;
          if (*v8 == *(v8 + 8) || *v67 != 95)
          {
            return 0;
          }

          *v8 = v67 + 1;
        case 'K':
        case 'k':
          v53 = " decltype(auto)";
          if (v33 == 107)
          {
            v53 = " auto";
          }

          v54 = 15;
          if (v33 == 107)
          {
            v54 = 5;
          }

          v71.n128_u64[0] = v53;
          v71.n128_u64[1] = v54;
          *a1 = v9 + 2;
          if (!v72)
          {
            return 0;
          }

          return v55;
        case 'O':
        case 'o':
        case 'w':
        case 'x':
          goto LABEL_156;
        case 'R':
          if (v11 == 2)
          {
LABEL_204:
            v20 = 0;
            v60 = (v9 + 3);
            goto LABEL_205;
          }

          v20 = 0;
          v68 = v9[2];
          *a1 = v9 + 3;
          if (v68 > 108)
          {
            if (v68 == 109)
            {
              v21 = "unsigned long _Fract";
              goto LABEL_250;
            }

            if (v68 == 116)
            {
              v21 = "unsigned short _Fract";
LABEL_255:
            }

            if (v68 != 115)
            {
              return v20;
            }

            v21 = "short _Fract";
            goto LABEL_105;
          }

          if (v68 == 105)
          {
            v21 = "_Fract";
            goto LABEL_47;
          }

          if (v68 == 106)
          {
            v21 = "unsigned _Fract";
LABEL_197:
            a1 = v8;
          }

          if (v68 != 108)
          {
            return v20;
          }

          v21 = "long _Fract";
          goto LABEL_122;
        case 'S':
          *a1 = v9 + 2;
          v56 = v10 - (v9 + 2);
          if (v10 == (v9 + 2))
          {
            return 0;
          }

          v20 = 0;
          if (v56 < 2 || v9[2] != 68)
          {
            return v20;
          }

          v57 = v9[3];
          if (v57 == 82)
          {
            if (v56 > 2)
            {
              v20 = 0;
              v69 = v9[4];
              *a1 = v9 + 5;
              if (v69 <= 108)
              {
                if (v69 == 105)
                {
                  v21 = "_Sat _Fract";
                  goto LABEL_122;
                }

                if (v69 != 106)
                {
                  if (v69 != 108)
                  {
                    return v20;
                  }

                  v21 = "_Sat long _Fract";
                  goto LABEL_240;
                }

                v21 = "_Sat unsigned _Fract";
LABEL_250:
              }

              if (v69 != 109)
              {
                if (v69 != 116)
                {
                  if (v69 != 115)
                  {
                    return v20;
                  }

                  v21 = "_Sat short _Fract";
                  goto LABEL_61;
                }

                v21 = "_Sat unsigned short _Fract";
LABEL_277:
              }

              v21 = "_Sat unsigned long _Fract";
LABEL_270:
            }
          }

          else
          {
            if (v57 != 65)
            {
              return 0;
            }

            if (v56 > 2)
            {
              v20 = 0;
              v58 = v9[4];
              *a1 = v9 + 5;
              if (v58 <= 108)
              {
                if (v58 == 105)
                {
                  v21 = "_Sat _Accum";
                  goto LABEL_122;
                }

                if (v58 != 106)
                {
                  if (v58 != 108)
                  {
                    return v20;
                  }

                  v21 = "_Sat long _Accum";
LABEL_240:
                }

                v21 = "_Sat unsigned _Accum";
                goto LABEL_250;
              }

              if (v58 != 109)
              {
                if (v58 != 116)
                {
                  if (v58 != 115)
                  {
                    return v20;
                  }

                  v21 = "_Sat short _Accum";
LABEL_61:
                }

                v21 = "_Sat unsigned short _Accum";
                goto LABEL_277;
              }

              v21 = "_Sat unsigned long _Accum";
              goto LABEL_270;
            }
          }

          v20 = 0;
          v60 = (v9 + 5);
LABEL_205:
          *a1 = v60;
          return v20;
        case 'T':
        case 't':
          goto LABEL_89;
        case 'a':
          *a1 = v9 + 2;
          v21 = "auto";
          goto LABEL_126;
        case 'c':
          *a1 = v9 + 2;
          v21 = "decltype(auto)";
          goto LABEL_109;
        case 'd':
          *a1 = v9 + 2;
          v21 = "decimal64";
          goto LABEL_118;
        case 'e':
          *a1 = v9 + 2;
          v21 = "decimal128";
          goto LABEL_51;
        case 'f':
          *a1 = v9 + 2;
          v21 = "decimal32";
          goto LABEL_118;
        case 'h':
          *a1 = v9 + 2;
          v21 = "half";
          goto LABEL_126;
        case 'i':
          *a1 = v9 + 2;
          v21 = "char32_t";
          goto LABEL_25;
        case 'n':
          *a1 = v9 + 2;
          v21 = "std::nullptr_t";
          goto LABEL_109;
        case 'p':
          *a1 = v9 + 2;
          if (!v71.n128_u64[0])
          {
            return 0;
          }

          goto LABEL_136;
        case 's':
          *a1 = v9 + 2;
          v21 = "char16_t";
          goto LABEL_25;
        case 'u':
          *a1 = v9 + 2;
          v21 = "char8_t";
          goto LABEL_43;
        case 'v':
          goto LABEL_89;
        default:
          return v20;
      }

    case 'F':
      goto LABEL_156;
    case 'G':
      *a1 = v9 + 1;
      if (!v71.n128_u64[0])
      {
        return 0;
      }

      goto LABEL_136;
    case 'K':
    case 'V':
    case 'r':
      v13 = v12 == 114;
      if (v11 > v13)
      {
        v14 = v12 == 114 ? 2 : 1;
        if (v9[v13] == 86)
        {
          LODWORD(v13) = v14;
        }
      }

      v15 = v13;
      if (v11 > v13)
      {
        if (v9[v13] == 75)
        {
          v15 = (v13 + 1);
        }

        else
        {
          v15 = v13;
        }

        LODWORD(v13) = v15;
      }

      if (v11 <= v15)
      {
        goto LABEL_20;
      }

      v16 = v9[v15];
      if (v16 != 70)
      {
        v17 = v13 + 1;
        v18 = v16 == 68 && v11 > v17;
        if (!v18)
        {
          goto LABEL_20;
        }

        v49 = v9[v17] - 79;
        v18 = v49 > 0x29;
        v50 = (1 << v49) & 0x30100000001;
        if (v18 || v50 == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_156:
      goto LABEL_89;
    case 'M':
      *a1 = v9 + 1;
      if (!v71.n128_u64[0])
      {
        goto LABEL_149;
      }

      if (!v72)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    case 'O':
      *a1 = v9 + 1;
      if (!v71.n128_u64[0])
      {
        return 0;
      }

      LODWORD(v72) = 1;
      goto LABEL_114;
    case 'P':
      *a1 = v9 + 1;
      if (!v71.n128_u64[0])
      {
        return 0;
      }

      goto LABEL_136;
    case 'R':
      *a1 = v9 + 1;
      if (!v71.n128_u64[0])
      {
        return 0;
      }

      LODWORD(v72) = 0;
LABEL_114:
      goto LABEL_136;
    case 'S':
      if (v11 >= 2 && v9[1] == 116)
      {
        goto LABEL_88;
      }

      LOBYTE(v72) = 0;
      v70 = v36;
      if (!v36)
      {
        return 0;
      }

      v20 = v36;
      if (*(v8 + 8) == *v8)
      {
        v43 = v72;
      }

      else
      {
        v43 = v72;
        if (**v8 == 73)
        {
          if (v72)
          {
            if ((*(v8 + 776) & 1) == 0)
            {
              return v20;
            }
          }

          else
          {
LABEL_160:
          }

          v71.n128_u64[0] = v52;
          if (v52)
          {
            goto LABEL_136;
          }

          return 0;
        }
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_90;
      }

      return v20;
    case 'T':
      if (v11 >= 2)
      {
        v23 = v9[1] - 101;
        v18 = v23 > 0x10;
        v24 = (1 << v23) & 0x14001;
        if (!v18 && v24 != 0)
        {
          goto LABEL_88;
        }
      }

      v70 = v20;
      if (!v20)
      {
        return v20;
      }

      if (*(v8 + 776) == 1 && *(v8 + 8) != *v8 && **v8 == 73)
      {
        goto LABEL_160;
      }

      goto LABEL_90;
    case 'U':
LABEL_20:
      goto LABEL_89;
    case 'a':
      *a1 = v9 + 1;
      v21 = "signed char";
      goto LABEL_122;
    case 'b':
      *a1 = v9 + 1;
      v21 = "BOOL";
      goto LABEL_126;
    case 'c':
      *a1 = v9 + 1;
      v21 = "char";
      goto LABEL_126;
    case 'd':
      *a1 = v9 + 1;
      v21 = "double";
LABEL_47:

    case 'e':
      *a1 = v9 + 1;
      v21 = "long double";
LABEL_122:

    case 'f':
      *a1 = v9 + 1;
      v21 = "float";
      goto LABEL_76;
    case 'g':
      *a1 = v9 + 1;
      v21 = "__float128";
LABEL_51:

    case 'h':
      *a1 = v9 + 1;
      v21 = "unsigned char";
      goto LABEL_98;
    case 'i':
      *a1 = v9 + 1;
      v21 = "int";
      goto LABEL_65;
    case 'j':
      *a1 = v9 + 1;
      v21 = "unsigned int";
LABEL_105:

    case 'l':
      *a1 = v9 + 1;
      v21 = "long";
      goto LABEL_126;
    case 'm':
      *a1 = v9 + 1;
      v21 = "unsigned long";
LABEL_98:

    case 'n':
      *a1 = v9 + 1;
      v21 = "__int128";
LABEL_25:

    case 'o':
      *a1 = v9 + 1;
      v21 = "unsigned __int128";
      goto LABEL_61;
    case 's':
      *a1 = v9 + 1;
      v21 = "short";
LABEL_76:

    case 't':
      *a1 = v9 + 1;
      v21 = "unsigned short";
LABEL_109:

    case 'u':
      *a1 = v9 + 1;
      v71.n128_u64[1] = v30;
      if (!v30)
      {
        return 0;
      }

      v31 = *v8;
      if (*v8 == *(v8 + 8) || *v31 != 73)
      {
      }

      else
      {
        *v8 = v31 + 1;
        if (!v72)
        {
          return 0;
        }

        v32 = *v8;
        if (*v8 == *(v8 + 8) || *v32 != 69)
        {
          return 0;
        }

        *v8 = v32 + 1;
      }

LABEL_136:
      v20 = v28;
      v70 = v28;
      goto LABEL_90;
    case 'v':
      *a1 = v9 + 1;
      v21 = "void";
LABEL_126:

    case 'w':
      *a1 = v9 + 1;
      v21 = "wchar_t";
LABEL_43:

    case 'x':
      *a1 = v9 + 1;
      v21 = "long long";
LABEL_118:

    case 'y':
      *a1 = v9 + 1;
      *(v20 + 8) = 8;
      *(v20 + 9) = *(v20 + 9) & 0xF000 | 0x540;
      *v20 = off_1EEEA5D10;
      v20[2] = "unsigned long long";
      v20[3] = 18;
      return v20;
    case 'z':
      *a1 = v9 + 1;
      v21 = "...";
LABEL_65:

    default:
      goto LABEL_88;
  }
}

uint64_t anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::SaveTemplateParams::SaveTemplateParams(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 32) = 0u;
  *(a1 + 8) = a1 + 32;
  *(a1 + 88) = 0u;
  *(a1 + 64) = a1 + 88;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = a1 + 64;
  *(a1 + 48) = 0u;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = a1 + 152;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v3 = *a1;
  v3[84] = *(*a1 + 664);
  v3[73] = v3[72];
  return a1;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  if (v11 == *a1)
  {
    goto LABEL_8;
  }

  v12 = *v10;
  if (v12 == 90)
  {
    *a1 = v10 + 1;
    if (!v47)
    {
      return 0;
    }

    v28 = *a1;
    v27 = *(a1 + 8);
    if (*a1 == v27 || *v28 != 69)
    {
      return 0;
    }

    *a1 = v28 + 1;
    if (v28 + 1 != v27 && v28[1] == 115)
    {
      *a1 = v28 + 2;
    }

    v41 = *a1;
    if (*a1 == *(a1 + 8) || *v41 != 100)
    {
      if (v45)
      {
        goto LABEL_88;
      }
    }

    else
    {
      *a1 = v41 + 1;
      v42 = *a1;
      if (*a1 != *(a1 + 8) && *v42 == 95)
      {
        *a1 = v42 + 1;
        if (v45)
        {
LABEL_88:
          v22 = v43;
LABEL_90:
          return v22;
        }
      }
    }

    v22 = 0;
    goto LABEL_90;
  }

  if (v12 != 78)
  {
LABEL_8:
    LOBYTE(v47) = 0;
    v46[0] = v22;
    if (!v22)
    {
      return v22;
    }

    if (*(a1 + 8) == *a1 || **a1 != 73)
    {
      if (v47)
      {
        return 0;
      }

      return v22;
    }

    if ((v47 & 1) == 0)
    {
    }

    if (!v23)
    {
      return 0;
    }

    v24 = v23;
    if (a2)
    {
      *(a2 + 1) = 1;
    }

    *(v25 + 8) = 45;
    *(v25 + 9) = *(v25 + 9) & 0xF000 | 0x540;
    *v25 = off_1EEEA7A20;
    v25[2] = v22;
    v25[3] = v24;
    return v25;
  }

  *a1 = v10 + 1;
  if (v10 + 1 == v11 || v10[1] != 72)
  {
    if (a2)
    {
      *(a2 + 4) = v29;
    }

    v13 = *a1;
    v11 = *(a1 + 8);
    if (*a1 == v11)
    {
      goto LABEL_33;
    }

    v30 = *v13;
    if (v30 == 82)
    {
      *a1 = ++v13;
      if (!a2)
      {
        goto LABEL_39;
      }

      v14 = 1;
      goto LABEL_37;
    }

    if (v30 != 79)
    {
LABEL_33:
      if (!a2)
      {
        goto LABEL_39;
      }

      v14 = 0;
    }

    else
    {
      *a1 = ++v13;
      if (!a2)
      {
        goto LABEL_39;
      }

      v14 = 2;
    }

LABEL_37:
    v15 = 8;
    goto LABEL_38;
  }

  v13 = v10 + 2;
  *a1 = v13;
  if (a2)
  {
    v14 = 1;
    v15 = 24;
LABEL_38:
    *(a2 + v15) = v14;
  }

LABEL_39:
  v22 = 0;
  v46[0] = 0;
  while (v13 == v11 || *v13 != 69)
  {
    if (a2)
    {
      *(a2 + 1) = 0;
    }

    v31 = v11 - v13;
    if (!v31)
    {
      goto LABEL_62;
    }

    v32 = 0;
    v33 = *v13;
    if (v33 > 0x52)
    {
      if (v33 != 83)
      {
        if (v33 == 84)
        {
          if (v22)
          {
            return 0;
          }

          goto LABEL_64;
        }

LABEL_63:
        goto LABEL_64;
      }

      if (v31 >= 2 && v13[1] == 116)
      {
        *a1 = v13 + 2;
      }

      else
      {
        if (!v32)
        {
          return 0;
        }
      }

      if (*(v32 + 8) == 27)
      {
        goto LABEL_63;
      }

      if (v22)
      {
        return 0;
      }

      v46[0] = v32;
      v22 = v32;
      v13 = *a1;
      v11 = *(a1 + 8);
    }

    else
    {
      if (v33 == 68)
      {
        if (v31 >= 2 && (*(v13 + 1) | 0x20) == 0x74)
        {
          if (v22)
          {
            return 0;
          }

LABEL_64:
          v22 = v37;
          v46[0] = v37;
          if (!v37)
          {
            return v22;
          }

          goto LABEL_65;
        }

LABEL_62:
        v32 = 0;
        goto LABEL_63;
      }

      if (v33 != 73)
      {
        goto LABEL_63;
      }

      if (!v22)
      {
        return v22;
      }

      if (!v34 || *(v22 + 8) == 45)
      {
        return 0;
      }

      v35 = v34;
      if (a2)
      {
        *(a2 + 1) = 1;
      }

      *(v36 + 8) = 45;
      *(v36 + 9) = *(v36 + 9) & 0xF000 | 0x540;
      *v36 = off_1EEEA7A20;
      v36[2] = v22;
      v36[3] = v35;
      v46[0] = v36;
      v22 = v36;
LABEL_65:
      v13 = *a1;
      v38 = *(a1 + 8);
      v11 = *a1;
      if (*a1 != v38)
      {
        v11 = *(a1 + 8);
        if (*v13 == 77)
        {
          *a1 = ++v13;
          v11 = v38;
        }
      }
    }
  }

  *a1 = v13 + 1;
  if (v22)
  {
    v39 = *(a1 + 304);
    if (*(a1 + 296) != v39)
    {
      *(a1 + 304) = v39 - 8;
      return v22;
    }

    return 0;
  }

  return v22;
}

void sub_1801B8CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateArg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10 == *a1)
  {
    v11 = -74;
  }

  else
  {
    v11 = *v9 - 74;
  }

  HIDWORD(v13) = v11;
  LODWORD(v13) = v11;
  v12 = v13 >> 1;
  if (v12 > 4)
  {
    if (v12 != 5)
    {
      if (v12 == 7)
      {
        *a1 = v9 + 1;
        {
          return;
        }

LABEL_14:
        v14 = *a1;
        if (*a1 != *(a1 + 8) && *v14 == 69)
        {
          *a1 = v14 + 1;
        }

        return;
      }

      goto LABEL_26;
    }

    {
LABEL_26:

      return;
    }

    if (!v17)
    {
      return;
    }

    v18 = v17;
    if (!v19)
    {
      return;
    }

    v20 = v19;
    *(v21 + 8) = 34;
    *(v21 + 9) = *(v21 + 9) & 0xF000 | 0x540;
    v22 = off_1EEEA7B10;
LABEL_34:
    *v21 = v22;
    v21[2] = v18;
    v21[3] = v20;
    return;
  }

  if (!v12)
  {
    v15 = v9 + 1;
    *a1 = v15;
    v16 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    while (v15 == v10 || *v15 != 69)
    {
      if (!v24)
      {
        return;
      }

      v15 = *a1;
      v10 = *(a1 + 8);
    }

    *a1 = v15 + 1;
    v20 = v23;
    *(v21 + 8) = 41;
    *(v21 + 9) = *(v21 + 9) & 0xF000 | 0x540;
    v22 = off_1EEEA7A98;
    goto LABEL_34;
  }

  if (v12 != 1)
  {
    goto LABEL_26;
  }

  if (&v10[-*a1] >= 2 && v9[1] == 90)
  {
    *a1 = v9 + 2;
    {
      return;
    }

    goto LABEL_14;
  }
}

const void **anonymous namespace::itanium_demangle::PODSmallVector<anonymous namespace::itanium_demangle::Node *,32ul>::push_back(const void **result, uint64_t *size)
{
  v3 = result;
  v4 = result[1];
  if (v4 == result[2])
  {
    v5 = *result;
    v6 = v4 - *v3;
    if (*v3 == v3 + 3)
    {
      result = malloc_type_malloc(2 * v6, 0x2004093837F09uLL);
      if (!result)
      {
        goto LABEL_11;
      }

      v7 = result;
      v8 = v3[1];
      if (v8 != *v3)
      {
        result = memmove(result, *v3, v8 - *v3);
      }

      *v3 = v7;
    }

    else
    {
      result = malloc_type_realloc(v5, 2 * v6, 0x2004093837F09uLL);
      v7 = result;
      *v3 = result;
      if (!result)
      {
LABEL_11:
        abort();
      }
    }

    v4 = v7 + v6;
    v3[1] = v7 + v6;
    v3[2] = &v7[v6 >> 2];
  }

  v9 = *size;
  v3[1] = v4 + 8;
  *v4 = v9;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::EnableIfAttr,anonymous namespace::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
{
  *(v3 + 8) = 10;
  v4 = *(v3 + 9) & 0xF000 | 0x540;
  *v3 = off_1EEEA7B88;
  result = *a2;
  *(v3 + 9) = v4;
  *(v3 + 1) = result;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::popTrailingNodeArray(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[2];
  v9 = a1[3];
  if (a2 > (v9 - v8) >> 3)
  {
    goto LABEL_6;
  }

  v12 = (v8 + 8 * a2);
  v14 = v13;
  v15 = v9 - v12;
  if (v15)
  {
    memmove(v13, v12, v15);
  }

  v16 = a1[2];
  if (a2 > (a1[3] - v16) >> 3)
  {
LABEL_6:
    __abort_message("%s:%d: %s", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/demangle/ItaniumDemangle.h");
  }

  a1[3] = v16 + 8 * a2;
  return v14;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::SaveTemplateParams::~SaveTemplateParams(void *a1)
{
  v2 = a1[8];
  if (v2 != a1 + 11)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3 != a1 + 4)
  {
    free(v3);
  }

  return a1;
}

char **anonymous namespace::itanium_demangle::PODSmallVector<anonymous namespace::itanium_demangle::PODSmallVector<anonymous namespace::itanium_demangle::Node *,8ul> *,4ul>::operator=(char **a1, uint64_t a2)
{
  v5 = (a2 + 24);
  v4 = *a2;
  v7 = (a1 + 3);
  v6 = *a1;
  if (v4 == v5)
  {
    if (v6 != v7)
    {
      free(v6);
      *a1 = v7;
      a1[1] = v7;
      a1[2] = (a1 + 7);
      v4 = *a2;
      v6 = v7;
    }

    v10 = *(a2 + 8);
    if (v10 == v4)
    {
      v11 = v4;
    }

    else
    {
      memmove(v6, v4, v10 - v4);
      v6 = *a1;
      v4 = *a2;
      v11 = *(a2 + 8);
    }

    a1[1] = &v6[v11 - v4];
    *(a2 + 8) = v4;
  }

  else
  {
    *a1 = v4;
    if (v6 == v7)
    {
      *(a1 + 1) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 8) = v5;
      *(a2 + 16) = a2 + 56;
    }

    else
    {
      *a2 = v6;
      v8 = a1[1];
      a1[1] = *(a2 + 8);
      *(a2 + 8) = v8;
      v9 = a1[2];
      a1[2] = *(a2 + 16);
      *(a2 + 8) = *a2;
      *(a2 + 16) = v9;
    }
  }

  return a1;
}

char **anonymous namespace::itanium_demangle::PODSmallVector<anonymous namespace::itanium_demangle::Node *,8ul>::operator=(char **a1, uint64_t a2)
{
  v5 = (a2 + 24);
  v4 = *a2;
  v7 = (a1 + 3);
  v6 = *a1;
  if (v4 == v5)
  {
    if (v6 != v7)
    {
      free(v6);
      *a1 = v7;
      a1[1] = v7;
      a1[2] = (a1 + 11);
      v4 = *a2;
      v6 = v7;
    }

    v10 = *(a2 + 8);
    if (v10 == v4)
    {
      v11 = v4;
    }

    else
    {
      memmove(v6, v4, v10 - v4);
      v6 = *a1;
      v4 = *a2;
      v11 = *(a2 + 8);
    }

    a1[1] = &v6[v11 - v4];
    *(a2 + 8) = v4;
  }

  else
  {
    *a1 = v4;
    if (v6 == v7)
    {
      *(a1 + 1) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 8) = v5;
      *(a2 + 16) = a2 + 88;
    }

    else
    {
      *a2 = v6;
      v8 = a1[1];
      a1[1] = *(a2 + 8);
      *(a2 + 8) = v8;
      v9 = a1[2];
      a1[2] = *(a2 + 16);
      *(a2 + 8) = *a2;
      *(a2 + 16) = v9;
    }
  }

  return a1;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[31],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "template parameter object for ";
  result[3] = 30;
  result[4] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[12],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "vtable for ";
  result[3] = 11;
  result[4] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[9],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "VTT for ";
  result[3] = 8;
  result[4] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[14],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "typeinfo for ";
  result[3] = 13;
  result[4] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[19],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "typeinfo name for ";
  result[3] = 18;
  result[4] = v4;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseCallOffset(uint64_t a1)
{
  v1 = *a1;
  if (*a1 == *(a1 + 8))
  {
    return 1;
  }

  v3 = *v1;
  if (v3 != 118)
  {
    if (v3 == 104)
    {
      *a1 = v1 + 1;
      v4 = 1;
      goto LABEL_5;
    }

    return 1;
  }

  *a1 = v1 + 1;
  v4 = 1;
  if (!v8)
  {
    return v4;
  }

  v9 = *a1;
  if (*a1 == *(a1 + 8) || *v9 != 95)
  {
    return v4;
  }

  *a1 = v9 + 1;
LABEL_5:
  if (v5)
  {
    v6 = *a1;
    if (*a1 != *(a1 + 8) && *v6 == 95)
    {
      v4 = 0;
      *a1 = v6 + 1;
    }
  }

  return v4;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[27],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "covariant return thunk to ";
  result[3] = 26;
  result[4] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::CtorVtableSpecialName,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  *(result + 8) = 22;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C98;
  result[2] = v6;
  result[3] = v7;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[41],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "thread-local initialization routine for ";
  result[3] = 40;
  result[4] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[18],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "virtual thunk to ";
  result[3] = 17;
  result[4] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[22],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "non-virtual thunk to ";
  result[3] = 21;
  result[4] = v4;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSeqId(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1 || *v3 < 48)
  {
    return 1;
  }

  v4 = *v3;
  if (v4 >= 0x3A && v4 - 65 > 0x19)
  {
    return 1;
  }

  v6 = 0;
  do
  {
    if (*v3 < 48)
    {
      break;
    }

    if (*v3 >= 0x3Au)
    {
      if (*v3 - 65 >= 0x1A)
      {
        break;
      }

      v7 = -55;
    }

    else
    {
      v7 = -48;
    }

    v6 = v7 + 36 * v6 + *v3++;
    *a1 = v3;
  }

  while (v3 != v2);
  result = 0;
  *a2 = v6;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SpecialName,char const(&)[25],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 21;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA5C10;
  result[2] = "reference temporary for ";
  result[3] = 24;
  result[4] = v4;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseModuleNameOpt(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 == v5)
  {
    return 0;
  }

  v14[7] = v2;
  v14[8] = v3;
  while (1)
  {
    if (*v4 != 87)
    {
      return 0;
    }

    *a1 = v4 + 1;
    if (v4 + 1 == v5 || v4[1] != 80)
    {
      v8 = 0;
    }

    else
    {
      *a1 = v4 + 2;
      v8 = 1;
    }

    if (!v9)
    {
      break;
    }

    v10 = v9;
    v12 = *a2;
    *(v11 + 8) = 27;
    *(v11 + 9) = *(v11 + 9) & 0xF000 | 0x540;
    *v11 = off_1EEEA5D88;
    v11[2] = v12;
    v11[3] = v10;
    *(v11 + 32) = v8;
    *a2 = v11;
    v14[0] = v11;
    v4 = *a1;
    v5 = *(a1 + 8);
    if (*a1 == v5)
    {
      return 0;
    }
  }

  return 1;
}

void *anonymous namespace::BumpPointerAllocator::allocate(_anonymous_namespace_::BumpPointerAllocator *this, int a2)
{
  v3 = (a2 + 15) & 0xFFFFFFF0;
  v4 = *(this + 512);
  v5 = v4[1];
  if (v5 + v3 >= 0xFF0)
  {
    if (v3 >= 0xFF1)
    {
      v6 = malloc_type_malloc(v3 + 16, 0x1020040EDED9539uLL);
      if (v6)
      {
        v7 = *(this + 512);
        *v6 = *v7;
        v6[1] = 0;
        *v7 = v6;
        return v6 + 2;
      }

LABEL_8:
      std::terminate();
    }

    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = 0;
    *v4 = *(this + 512);
    v4[1] = 0;
    *(this + 512) = v4;
  }

  v4[1] = v5 + v3;
  return (v4 + v5 + 16);
}

uint64_t anonymous namespace::itanium_demangle::SpecialName::printLeft(void *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    memcpy((*this + *(this + 1)), v5, v4);
    *(this + 1) += v4;
  }

  v6 = a1[4];
}

uint64_t anonymous namespace::itanium_demangle::CtorVtableSpecialName::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  qmemcpy((*this + *(this + 1)), "construction vtable for ", 24);
  *(this + 1) += 24;
  *(*this + *(this + 1)) = 762210605;
  *(this + 1) += 4;
  v4 = *(a1 + 24);
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSourceName(uint64_t a1)
{
  v6 = 0;
  {
    return 0;
  }

  v2 = *a1;
  v3 = v6;
  if (v6 - 1 >= *(a1 + 8) - *a1)
  {
    return 0;
  }

  *a1 = &v2[v6];
  if (v3 >= 0xA && (*v2 == 0x5F4C41424F4C475FLL ? (v4 = *(v2 + 4) == 20063) : (v4 = 0), v4))
  {
  }

  else
  {
    *(result + 8) = 8;
    *(result + 9) = *(result + 9) & 0xF000 | 0x540;
    *result = off_1EEEA5D10;
    result[2] = v2;
    result[3] = v3;
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parsePositiveInteger(unsigned __int8 **a1, uint64_t *a2)
{
  *a2 = 0;
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    return 1;
  }

  v4 = *v3;
  if ((v4 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  if ((v4 - 48) <= 9)
  {
    v6 = 0;
    v7 = v3 + 1;
    do
    {
      v8 = 5 * v6;
      *a2 = 2 * v8;
      *a1 = v7;
      v6 = *(v7 - 1) + 2 * v8 - 48;
      *a2 = v6;
      if (v7 == v2)
      {
        break;
      }

      v9 = *v7++;
    }

    while ((v9 - 48) <= 9);
  }

  return 0;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::NameType,char const(&)[22]>(uint64_t a1, const char *a2)
{
  v4 = strlen(a2);
  *(v3 + 8) = 8;
  *(v3 + 9) = *(v3 + 9) & 0xF000 | 0x540;
  *v3 = off_1EEEA5D10;
  v3[2] = a2;
  v3[3] = v4;
  return v3;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::NameType,std::string_view &>(uint64_t a1, __n128 *a2)
{
  *(v3 + 8) = 8;
  v4 = *(v3 + 9) & 0xF000 | 0x540;
  *v3 = off_1EEEA5D10;
  result = *a2;
  *(v3 + 9) = v4;
  *(v3 + 1) = result;
  return result;
}

void *anonymous namespace::itanium_demangle::NameType::printLeft(void *result, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v2 = result[3];
  if (v2)
  {
    v4 = result[2];
    result = memcpy((*this + *(this + 1)), v4, v2);
    *(this + 1) += v2;
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::ModuleName::printLeft(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  {
    if (*(a1 + 32))
    {
      v5 = 58;
    }

    else
    {
      v5 = 46;
    }
  }

  else
  {
    if (*(a1 + 32) != 1)
    {
      goto LABEL_9;
    }

    v5 = 58;
  }

  v6 = *a2;
  v7 = a2[1];
  a2[1] = v7 + 1;
  *(v6 + v7) = v5;
LABEL_9:
  v8 = *(a1 + 24);
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnscopedName(void *a1, _BYTE *a2, _BYTE *a3)
{
  v6 = *a1;
  v7 = a1[1];
  if (v7 - *a1 >= 2 && *v6 == 29779)
  {
    *a1 = v6 + 1;
    v6 = *a1;
    v7 = a1[1];
  }

  else
  {
    v8 = 0;
  }

  if (v7 == v6 || *v6 != 83)
  {
    v10 = 0;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v10 = result;
    if (*(result + 8) != 27)
    {
      result = 0;
      if (a3)
      {
        if (!v8)
        {
          *a3 = 1;
          return v10;
        }
      }

      return result;
    }
  }
}

void anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateArgs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  if (*a1 != v9 && *v8 == 73)
  {
    v10 = a2;
    v12 = v8 + 1;
    *a1 = v12;
    if (a2)
    {
      *(a1 + 672) = *(a1 + 664);
      v36 = a1 + 576;
      *(a1 + 584) = *(a1 + 576);
      v12 = *a1;
      v9 = *(a1 + 8);
    }

    v13 = a1 + 16;
    v14 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    while (v12 == v9 || *v12 != 69)
    {
      if (v10)
      {
        v36 = v15;
        if (!v15)
        {
          return;
        }

        v16 = v15;
        v35 = v16;
        v17 = *(v16 + 8);
        if (v17 == 41)
        {
          v20 = *(v16 + 16);
          v19 = *(v16 + 24);
          *(v21 + 8) = 40;
          v22 = *(v21 + 9) & 0xF000;
          *v21 = off_1EEEA7930;
          v21[2] = v20;
          v21[3] = v19;
          v23 = v22 | 0xA80;
          *(v21 + 9) = v22 | 0xA80;
          v24 = 8 * v19;
          if (v19)
          {
            v25 = 8 * v19;
            v26 = v20;
            while ((*(*v26 + 9) & 0x300) == 0x100)
            {
              v26 += 8;
              v25 -= 8;
              if (!v25)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
LABEL_19:
            v23 = v22 | 0x980;
            *(v21 + 9) = v22 | 0x980;
          }

          if (v19)
          {
            v27 = 8 * v19;
            v28 = v20;
            while ((*(*v28 + 9) & 0xC00) == 0x400)
            {
              v28 += 8;
              v27 -= 8;
              if (!v27)
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
LABEL_24:
            v23 = v23 & 0xF3FF | 0x400;
            *(v21 + 9) = v23;
          }

          if (v19)
          {
            while ((*(*v20 + 9) & 0xC0) == 0x40)
            {
              v20 += 8;
              v24 -= 8;
              if (!v24)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
LABEL_28:
            *(v21 + 9) = v23 & 0xFF3F | 0x40;
          }

          v35 = v21;
        }

        else if (v17 == 34)
        {
          v35 = *(v16 + 24);
        }
      }

      else
      {
        v36 = v18;
        if (!v18)
        {
          return;
        }
      }

      v12 = *a1;
      v9 = *(a1 + 8);
      if (*a1 != v9 && *v12 == 81)
      {
        *a1 = v12 + 1;
        v29 = *(a1 + 778);
        *(a1 + 778) = 1;
        *(a1 + 778) = v29;
        if (!v30)
        {
          return;
        }

        v12 = *a1;
        if (*a1 == *(a1 + 8) || *v12 != 69)
        {
          return;
        }

LABEL_38:
        *a1 = v12 + 1;
        v33 = v32;
        *(v34 + 8) = 43;
        *(v34 + 9) = *(v34 + 9) & 0xF000 | 0x540;
        *v34 = off_1EEEA79A8;
        v34[2] = v31;
        v34[3] = v33;
        v34[4] = v30;
        return;
      }
    }

    v30 = 0;
    goto LABEL_38;
  }
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::NameWithTemplateArgs,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  *(result + 8) = 45;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA7A20;
  result[2] = v6;
  result[3] = v7;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseCVQualifiers(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2 || *v1 != 114)
  {
    v3 = 0;
  }

  else
  {
    *a1 = ++v1;
    v3 = 4;
  }

  if (v1 != v2 && *v1 == 86)
  {
    *a1 = ++v1;
    v3 = v3 | 2;
  }

  if (v1 != v2 && *v1 == 75)
  {
    *a1 = v1 + 1;
    return v3 | 1;
  }

  return v3;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParam(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*a1 == v1 || *v2 != 84)
  {
    return 0;
  }

  v4 = v2 + 1;
  *a1 = v2 + 1;
  v26 = 0;
  if (v2 + 1 == v1 || *v4 != 76)
  {
    v6 = 0;
  }

  else
  {
    *a1 = v2 + 2;
    {
      return 0;
    }

    v5 = *a1;
    v1 = *(a1 + 8);
    if (*a1 == v1 || *v5 != 95)
    {
      return 0;
    }

    v6 = v26 + 1;
    v4 = v5 + 1;
    *a1 = v4;
  }

  v25 = 0;
  if (v4 != v1 && *v4 == 95)
  {
    v7 = 0;
    goto LABEL_17;
  }

  {
    return 0;
  }

  v4 = *a1;
  if (*a1 == *(a1 + 8) || *v4 != 95)
  {
    return 0;
  }

  v7 = v25 + 1;
LABEL_17:
  *a1 = v4 + 1;
  if (*(a1 + 778) == 1)
  {
    v8 = v4 - v2;
    *(v9 + 8) = 8;
    *(v9 + 9) = *(v9 + 9) & 0xF000 | 0x540;
    *v9 = off_1EEEA5D10;
    v9[2] = v2;
    v9[3] = v8;
    return v9;
  }

  if (*(a1 + 777) == 1 && !v6)
  {
    *(v9 + 8) = 44;
    *(v9 + 9) = *(v9 + 9) & 0xF000 | 0xA80;
    *v9 = off_1EEEA5E00;
    v9[2] = v7;
    v9[3] = 0;
    *(v9 + 32) = 0;
    v11 = *(a1 + 728);
    if (v11 == *(a1 + 736))
    {
      v12 = *(a1 + 720);
      v13 = v11 - v12;
      if (v12 == (a1 + 744))
      {
        v21 = malloc_type_malloc(2 * v13, 0x2004093837F09uLL);
        if (!v21)
        {
          goto LABEL_42;
        }

        v14 = v21;
        v22 = *(a1 + 720);
        v23 = *(a1 + 728);
        if (v23 != v22)
        {
          memmove(v21, v22, v23 - v22);
        }

        *(a1 + 720) = v14;
      }

      else
      {
        v14 = malloc_type_realloc(v12, 2 * (v11 - v12), 0x2004093837F09uLL);
        *(a1 + 720) = v14;
        if (!v14)
        {
LABEL_42:
          abort();
        }
      }

      v11 = &v14[v13];
      *(a1 + 736) = &v14[8 * (v13 >> 2)];
    }

    *(a1 + 728) = v11 + 8;
    *v11 = v9;
    return v9;
  }

  v15 = *(a1 + 664);
  v16 = *(a1 + 672) - v15;
  if (v6 < v16 >> 3)
  {
    v17 = *(v15 + 8 * v6);
    if (v17)
    {
      v19 = v17;
      v18 = *v17;
      if (v7 < (v19[1] - v18) >> 3)
      {
        return *(v18 + 8 * v7);
      }
    }
  }

  v9 = 0;
  v20 = v16 >> 3;
  if (v6 <= v20 && *(a1 + 784) == v6)
  {
    if (v6 == v20)
    {
      v24 = 0;
    }
  }

  return v9;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseDecltype(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 0;
  }

  if (*v1 == 68)
  {
    *a1 = v1 + 1;
    if (v1 + 1 != v2 && (v1[1] | 0x20) == 0x74)
    {
      *a1 = v1 + 2;
      if (!result)
      {
        return result;
      }

      v5 = *a1;
      if (*a1 != *(a1 + 8) && *v5 == 69)
      {
        v6 = result;
        *a1 = v5 + 1;
        *(result + 8) = 60;
        *(result + 9) = *(result + 9) & 0xF000 | 0x540;
        *result = off_1EEEA63A0;
        result[2] = "decltype";
        result[3] = 8;
        result[5] = 0;
        result[6] = 0;
        result[4] = v6;
        return result;
      }
    }
  }

  return 0;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSubstitution(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2 || *v1 != 83)
  {
    return 0;
  }

  *a1 = v1 + 1;
  if (v2 == v1 + 1)
  {
    goto LABEL_14;
  }

  v4 = v1[1];
  if (v1[1] < 97)
  {
    if (v4 == 95)
    {
      *a1 = v1 + 2;
      v7 = *(a1 + 296);
      if (v7 != *(a1 + 304))
      {
        return *v7;
      }

      return 0;
    }

LABEL_14:
    v14 = 0;
    {
      v8 = *a1;
      if (*a1 != *(a1 + 8) && *v8 == 95)
      {
        v9 = v14 + 1;
        *a1 = v8 + 1;
        v10 = *(a1 + 296);
        if (v9 < (*(a1 + 304) - v10) >> 3)
        {
          return *(v10 + 8 * v9);
        }
      }
    }

    return 0;
  }

  if (v4 > 0x7A)
  {
    goto LABEL_14;
  }

  v5 = 0;
  if (v1[1] > 0x68u)
  {
    switch(v4)
    {
      case 'i':
        v6 = 3;
        break;
      case 'o':
        v6 = 4;
        break;
      case 's':
        v6 = 2;
        break;
      default:
        return v5;
    }
  }

  else
  {
    switch(v4)
    {
      case 'a':
        v6 = 0;
        break;
      case 'b':
        v6 = 1;
        break;
      case 'd':
        v6 = 5;
        break;
      default:
        return v5;
    }
  }

  *a1 = v1 + 2;
  *(v5 + 8) = 48;
  *(v5 + 9) = *(v5 + 9) & 0xF000 | 0x540;
  *(v5 + 3) = v6;
  *v5 = off_1EEEA74F8;
  v14 = v12;
  if (v12 != v5)
  {
    v13 = v12;
    return v13;
  }

  return v5;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnqualifiedName(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v39 = a4;
  v40 = a3;
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_7;
  }

  if (v8 == v9)
  {
    v10 = 1;
LABEL_31:
    goto LABEL_32;
  }

  if (*v8 == 70)
  {
    v10 = 0;
    *a1 = ++v8;
  }

  else
  {
LABEL_7:
    v10 = 1;
  }

  if (v8 != v9 && *v8 == 76)
  {
    *a1 = ++v8;
  }

  if (v9 != v8 && *v8 >= 49)
  {
    v11 = *v8;
    if (v11 <= 0x39)
    {
LABEL_32:
      v16 = v12;
      goto LABEL_33;
    }

    if (v11 == 85)
    {
      goto LABEL_32;
    }
  }

  if ((v9 - v8) < 2 || *v8 != 17220)
  {
    if (v9 != v8 && *v8 - 67 <= 1)
    {
      v7 = 0;
      if (!v4 || v39)
      {
        return v7;
      }

      if (*(v4 + 8) == 48)
      {
        v42 = v4;
        v40 = v4;
        v8 = *a1;
        v9 = *(a1 + 8);
      }

      if (v8 == v9)
      {
        return 0;
      }

      v13 = *v8;
      if (v13 == 67)
      {
        v14 = v8 + 1;
        *a1 = v8 + 1;
        if (v8 + 1 == v9 || *v14 != 73)
        {
          v15 = 0;
        }

        else
        {
          v14 = v8 + 2;
          *a1 = v8 + 2;
          v15 = 1;
        }

        if (v9 == v14)
        {
          return 0;
        }

        v38 = *v14;
        if ((v38 - 49) > 4)
        {
          return 0;
        }

        LODWORD(v42) = v38 - 48;
        *a1 = v14 + 1;
        if (a2)
        {
          *a2 = 1;
        }

        {
          v16 = 0;
          goto LABEL_33;
        }

        v41 = 0;
      }

      else
      {
        v7 = 0;
        if ((v9 - v8) < 2)
        {
          return v7;
        }

        if (v13 != 68)
        {
          return v7;
        }

        v7 = 0;
        v37 = v8[1];
        if (v37 > 0x35 || ((1 << v37) & 0x37000000000000) == 0)
        {
          return v7;
        }

        LODWORD(v42) = v37 - 48;
        *a1 = v8 + 2;
        if (a2)
        {
          *a2 = 1;
        }

        v41 = 1;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  *a1 = v8 + 2;
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  if (!v42)
  {
    return 0;
  }

  v26 = (v25 - v24) >> 3;
  while (1)
  {
    v33 = *a1;
    if (*a1 != *(a1 + 8) && *v33 == 69)
    {
      break;
    }

    if (!v42)
    {
      return 0;
    }
  }

  *a1 = v33 + 1;
  v36 = v35;
  *(v16 + 8) = 53;
  *(v16 + 9) = *(v16 + 9) & 0xF000 | 0x540;
  *v16 = off_1EEEA7660;
  v16[2] = v34;
  v16[3] = v36;
LABEL_33:
  if (!v16 || (v17 = v39) == 0)
  {
    if (v16)
    {
      goto LABEL_37;
    }

    return 0;
  }

  *(v18 + 8) = 28;
  *(v18 + 9) = *(v18 + 9) & 0xF000 | 0x540;
  *v18 = off_1EEEA7750;
  v18[2] = v17;
  v18[3] = v16;
  v16 = v18;
LABEL_37:
  v7 = v19;
  if (v19)
  {
    v20 = v10;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    *(v21 + 8) = 25;
    *(v21 + 9) = *(v21 + 9) & 0xF000 | 0x540;
    v22 = off_1EEEA77C8;
    goto LABEL_45;
  }

  if (v19 && v4)
  {
    *(v21 + 8) = 24;
    *(v21 + 9) = *(v21 + 9) & 0xF000 | 0x540;
    v22 = off_1EEEA7840;
LABEL_45:
    *v21 = v22;
    v21[2] = v4;
    v21[3] = v7;
    return v21;
  }

  return v7;
}

uint64_t anonymous namespace::itanium_demangle::ForwardTemplateReference::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v4 = *(a1 + 24);
  v5 = *(v4 + 9);
  if ((v5 & 0xC0) == 0x80)
  {
    result = (**v4)(v4);
  }

  else
  {
    result = v5 < 0x40;
  }

  *(a1 + 32) = v1;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::ForwardTemplateReference::hasArraySlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v4 = *(a1 + 24);
  v5 = v4[10] & 3;
  if (v5 == 2)
  {
    result = (*(*v4 + 8))(v4);
  }

  else
  {
    result = v5 == 0;
  }

  *(a1 + 32) = v1;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::ForwardTemplateReference::hasFunctionSlow(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return 0;
  }

  *(a1 + 32) = 1;
  v4 = *(a1 + 24);
  v5 = (*(v4 + 9) >> 10) & 3;
  if (v5 == 2)
  {
    result = (*(*v4 + 16))(v4);
  }

  else
  {
    result = v5 == 0;
  }

  *(a1 + 32) = v1;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::ForwardTemplateReference::getSyntaxNode(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    *(a1 + 32) = 1;
    v3 = (*(**(a1 + 24) + 24))(*(a1 + 24));
    *(v1 + 32) = v2;
    return v3;
  }

  return v1;
}

uint64_t anonymous namespace::itanium_demangle::ForwardTemplateReference::printLeft(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    v2 = result;
    *(result + 32) = 1;
    result = (*(**(result + 24) + 32))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::ForwardTemplateReference::printRight(uint64_t result)
{
  v1 = *(result + 32);
  if ((v1 & 1) == 0)
  {
    v2 = result;
    *(result + 32) = 1;
    result = (*(**(result + 24) + 40))(*(result + 24));
    *(v2 + 32) = v1;
  }

  return result;
}

void anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseExpr(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8) - *a1 >= 2uLL && *v2 == 29543)
  {
    *a1 = v2 + 2;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v147 = v3;
  if (v4)
  {
    v11 = v4;
    v146.n128_u64[0] = Symbol;
    v146.n128_u64[1] = v12;
    v20 = v12;
    switch(v11[2])
    {
      case 1u:
        v21 = *a1;
        if (*a1 != *(a1 + 8) && *v21 == 95)
        {
          *a1 = v21 + 1;
          goto LABEL_9;
        }

        if (v64)
        {
          v65 = v64;
          v66 = v11[3];
          *(v67 + 8) = 56;
          *(v67 + 9) = *(v67 + 9) & 0xF000 | (v66 >> 1) | 0x540;
          *v67 = off_1EEEA5F68;
          v67[2] = v65;
          v67[3] = Symbol;
          v67[4] = v20;
        }

        break;
      case 2u:
        v39 = v11[3] >> 1;
        v150.n128_u64[0] = Symbol;
        v150.n128_u64[1] = v12;
        v149 = v39;
        if (v145)
        {
          if (v148)
          {
          }
        }

        break;
      case 3u:
        if (v150.n128_u64[0])
        {
          if (v145)
          {
            LODWORD(v148) = v11[3] >> 1;
          }
        }

        break;
      case 4u:
        if (v150.n128_u64[0])
        {
          if (v145)
          {
            LODWORD(v148) = v11[3] >> 1;
          }
        }

        break;
      case 5u:
        v44 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        while (1)
        {
          v45 = *a1;
          if (*a1 != *(a1 + 8) && *v45 == 95)
          {
            break;
          }

          if (!v150.n128_u64[0])
          {
            return;
          }
        }

        *a1 = v45 + 1;
        v150.n128_u64[1] = v71;
        if (v148)
        {
          v79 = (*(a1 + 24) - *(a1 + 16)) >> 3;
          while (1)
          {
            v80 = *a1;
            if (*a1 != *(a1 + 8) && *v80 == 69)
            {
              break;
            }

            if (!v78)
            {
              return;
            }

            if (!v145)
            {
              return;
            }
          }

          *a1 = v80 + 1;
          *(&v145 + 1) = v92;
          v93 = v11[3];
          v144 = v93 & 1;
          v149 = v93 >> 1;
        }

        break;
      case 6u:
        if (v40)
        {
          v41 = v40;
          v42 = v11[3];
          *(v43 + 8) = 65;
          *(v43 + 9) = *(v43 + 9) & 0xF000 | (v42 >> 1) | 0x540;
          *v43 = off_1EEEA6148;
          v43[2] = v41;
          *(v43 + 24) = v3;
          *(v43 + 25) = v42 & 1;
        }

        break;
      case 7u:
        if (v145)
        {
          v52 = (*(a1 + 24) - *(a1 + 16)) >> 3;
          while (1)
          {
            v53 = *a1;
            if (*a1 != *(a1 + 8) && *v53 == 69)
            {
              *a1 = v53 + 1;
              v150.n128_u64[1] = v83;
              v84 = v11[3];
              LOBYTE(v149) = v84 & 1;
              LODWORD(v148) = v84 >> 1;
              v85 = &v145;
              goto LABEL_90;
            }

            if (!v150.n128_u64[0])
            {
              break;
            }
          }
        }

        break;
      case 8u:
        v27 = *(a1 + 776);
        *(a1 + 776) = 0;
        *&v145 = v28;
        *(a1 + 776) = v27;
        if (v28)
        {
          v35 = (*(a1 + 24) - *(a1 + 16)) >> 3;
          v36 = *a1;
          v37 = *(a1 + 8);
          if (*a1 == v37 || *v36 != 95)
          {
            v38 = 0;
          }

          else
          {
            *a1 = ++v36;
            v38 = 1;
          }

          while (v36 == v37 || *v36 != 69)
          {
            if (!v150.n128_u64[0])
            {
              return;
            }

            if ((v38 & 1) == 0)
            {
              v150.n128_u64[1] = v86;
              goto LABEL_113;
            }

            v36 = *a1;
            v37 = *(a1 + 8);
          }

          *a1 = v36 + 1;
          v150.n128_u64[1] = v86;
          if (v38)
          {
            goto LABEL_114;
          }

LABEL_113:
          if (v86 != 1)
          {
            return;
          }

LABEL_114:
          LODWORD(v148) = v11[3] >> 1;
        }

        break;
      case 9u:
        if (v150.n128_u64[0])
        {
          if (v145)
          {
            if (v148)
            {
              v149 = v11[3] >> 1;
            }
          }
        }

        break;
      case 0xAu:
        return;
      case 0xBu:
        if (v150.n128_u64[0])
        {
          if (v145)
          {
            LODWORD(v148) = v11[3] >> 1;
          }
        }

        break;
      case 0xCu:
        if (v11[3])
        {
        }

        else
        {
        }

        v68 = v26;
        if (v26)
        {
          v69 = v11[3];
          *(v70 + 8) = 60;
          *(v70 + 9) = *(v70 + 9) & 0xF000 | (v69 >> 1) | 0x540;
          *v70 = off_1EEEA63A0;
          v70[2] = Symbol;
          v70[3] = v20;
          v70[5] = 0;
          v70[6] = 0;
          v70[4] = v68;
        }

        break;
      default:
LABEL_9:
        break;
    }

    return;
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = &v23[-*a1];
  if (v24 < 2)
  {
    return;
  }

  v25 = *v22;
  switch(v25)
  {
    case 'f':
      v54 = v22 + 1;
      v55 = v22[1];
      if (v55 != 112)
      {
        if (v55 != 76)
        {
          goto LABEL_103;
        }

        if (v24 == 2)
        {
          v56 = 0;
        }

        else
        {
          v56 = v22[2];
          if (v56 < 0)
          {
            goto LABEL_103;
          }
        }

        if ((*(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x400) == 0)
        {
LABEL_103:
          if (v22 != v23)
          {
            *a1 = v54;
            if (v23 != v54)
            {
              v88 = *v54;
              if (v88 > 0x6B)
              {
                if (v88 == 108)
                {
                  v91 = 0;
                  v89 = 1;
                }

                else
                {
                  if (v88 != 114)
                  {
                    return;
                  }

                  v89 = 0;
                  v91 = 0;
                }
              }

              else
              {
                if (v88 == 76)
                {
                  v89 = 1;
                }

                else
                {
                  if (v88 != 82)
                  {
                    return;
                  }

                  v89 = 0;
                }

                v91 = 1;
              }

              *a1 = v22 + 2;
              if (v94)
              {
                v95 = v94;
                v96 = v94[2];
                if (v96 == 2 || v96 == 4 && *(*(v94 + 1) + strlen(*(v94 + 1)) - 1) == 42)
                {
                  if (v97)
                  {
                    v98 = v97;
                    if (v91)
                    {
                      if (!v99)
                      {
                        return;
                      }

                      if (v89)
                      {
                        v100 = v98;
                      }

                      else
                      {
                        v100 = v99;
                      }

                      if (v89)
                      {
                        v98 = v99;
                      }
                    }

                    else
                    {
                      v100 = 0;
                    }

                    v113 = v112;
                    *(v114 + 8) = 71;
                    *(v114 + 9) = *(v114 + 9) & 0xF000 | 0x540;
                    *v114 = off_1EEEA6C10;
                    v114[2] = v98;
                    v114[3] = v100;
                    v114[4] = v111;
                    v114[5] = v113;
                    *(v114 + 48) = v89;
                    return;
                  }
                }
              }
            }
          }

          return;
        }
      }

      return;
    case 'T':

      return;
    case 'L':

      return;
  }

  if (*v22 != 27753)
  {
    if (*v22 == 25453)
    {
      *a1 = v22 + 2;

      return;
    }

    {
      if (v150.n128_u64[0])
      {
        v146.n128_u32[0] = 2;
      }

      return;
    }

    v87 = *a1;
    if (*(a1 + 8) - *a1 >= 2uLL && *v87 == 114 && (v87[1] | 0x20) == 0x71)
    {

      return;
    }

    {

      return;
    }

    {
      if (v150.n128_u64[0])
      {
      }

      return;
    }

    {
      if (*(a1 + 8) != *a1 && **a1 == 84)
      {
        if (v150.n128_u64[0])
        {
        }

        return;
      }

      v150.n128_u64[0] = v115;
      if (!v115)
      {
        return;
      }

LABEL_170:
      return;
    }

    {
      v108 = (*(a1 + 24) - *(a1 + 16)) >> 3;
      while (1)
      {
        v109 = *a1;
        if (*a1 != *(a1 + 8) && *v109 == 69)
        {
          break;
        }

        v150.n128_u64[0] = v110;
        if (!v110)
        {
          return;
        }
      }

      *a1 = v109 + 1;
      v150.n128_u64[1] = v124;
      v150.n128_u64[0] = v125;
      goto LABEL_170;
    }

    {
      if (v146.n128_u64[0])
      {
        v122 = (*(a1 + 24) - *(a1 + 16)) >> 3;
        while (1)
        {
          v123 = *a1;
          if (*a1 != *(a1 + 8) && *v123 == 69)
          {
            break;
          }

          if (!v150.n128_u64[0])
          {
            return;
          }
        }

        *a1 = v123 + 1;
        v150.n128_u64[1] = v139;
      }

      return;
    }

    {

      return;
    }

    {
      if (v150.n128_u64[0])
      {
      }

      return;
    }

    v126 = *a1;
    if (*a1 == *(a1 + 8) || *v126 != 117)
    {

      return;
    }

    *a1 = v126 + 1;
    v146.n128_u64[0] = v127;
    if (!v127)
    {
      return;
    }

    v128 = (*(*v127 + 56))(v127);
    if (v129 == 8 && *v128 == 0x666F646975755F5FLL)
    {
      v141 = *a1;
      if (*a1 != *(a1 + 8))
      {
        v142 = *v141;
        if (v142 == 122)
        {
          *a1 = v141 + 1;
          goto LABEL_195;
        }

        if (v142 == 116)
        {
          *a1 = v141 + 1;
LABEL_195:
          *&v145 = v143;
          if (!v143)
          {
            return;
          }

          v136 = *(a1 + 24) - *(a1 + 16);
          goto LABEL_189;
        }
      }
    }

    v136 = *(a1 + 24) - *(a1 + 16);
    while (1)
    {
      v137 = *a1;
      if (*a1 != *(a1 + 8) && *v137 == 69)
      {
        break;
      }

      v150.n128_u64[0] = v138;
      if (!v138)
      {
        return;
      }
    }

    *a1 = v137 + 1;
LABEL_189:
    v150.n128_u64[1] = v140;
    LOBYTE(v149) = 0;
    LODWORD(v148) = 1;
    v85 = &v146;
LABEL_90:
    return;
  }

  v81 = v22 + 2;
  *a1 = v81;
  v82 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  while (v81 == v23 || *v81 != 69)
  {
    if (!v150.n128_u64[0])
    {
      return;
    }

    v81 = *a1;
    v23 = *(a1 + 8);
  }

  *a1 = v81 + 1;
  v150.n128_u64[1] = v90;
}

unsigned __int8 *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseOperatorEncoding(unsigned __int8 **a1)
{
  v1 = *a1;
  if ((a1[1] - *a1) < 2)
  {
    return 0;
  }

  v2 = 0;
  v3 = *v1;
  v4 = 62;
  do
  {
    v5 = (v4 + v2) >> 1;
    if (*v6 >= v3)
    {
      if (*v6 == v3)
      {
        if (v6[1] >= v1[1])
        {
          v4 = (v4 + v2) >> 1;
        }

        else
        {
          v2 = v5 + 1;
        }
      }

      else
      {
        v4 = (v4 + v2) >> 1;
      }
    }

    else
    {
      v2 = v5 + 1;
    }
  }

  while (v4 != v2);
  if (*v7 != v3 || v7[1] != v1[1])
  {
    return 0;
  }

  *a1 = v1 + 2;
  return v7;
}

const char *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::OperatorInfo::getSymbol(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = strlen(v2);
  v10 = v3;
  if (*(a1 + 2) > 0xAu)
  {
    return v2;
  }

  if (v3 < 8 || *v2 != 0x726F74617265706FLL)
  {
    __abort_message("%s:%d: %s", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/demangle/ItaniumDemangle.h");
  }

  result = v2 + 8;
  if (v10 != 8 && *result == 32)
  {
    return v2 + 9;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parsePrefixExpr(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    v9 = result;
    *(result + 8) = 66;
    *(result + 9) = *(result + 9) & 0xF000 | a4 & 0x3F | 0x540;
    *result = off_1EEEA5EF0;
    result[2] = a2;
    result[3] = a3;
    result[4] = v9;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ArraySubscriptExpr,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, uint64_t *a3, _WORD *a4)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  *(result + 8) = 55;
  *(result + 9) = *(result + 9) & 0xF000 | v10 & 0x3F | 0x540;
  *result = off_1EEEA5FE0;
  result[2] = v8;
  result[3] = v9;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::MemberExpr,anonymous namespace::itanium_demangle::Node *&,std::string_view &,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *a5;
  *(v9 + 8) = 58;
  v13 = *(v9 + 9) & 0xF000 | v12 & 0x3F;
  *v9 = off_1EEEA6058;
  result = *a3;
  *(v9 + 9) = v13 | 0x540;
  v9[2] = v10;
  *(v9 + 3) = result;
  v9[5] = v11;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::NewExpr,anonymous namespace::itanium_demangle::NodeArray &,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::NodeArray &,BOOL &,BOOL,anonymous namespace::itanium_demangle::Node::Prec>(uint64_t a1, __n128 *a2, uint64_t *a3, __int128 *a4, char *a5, char *a6, _WORD *a7)
{
  v14 = *a3;
  v15 = *a5;
  v16 = *a6;
  v17 = *a7;
  *(v13 + 8) = 64;
  v18 = *(v13 + 9) & 0xF000 | v17 & 0x3F;
  *v13 = off_1EEEA60D0;
  result = *a2;
  v20 = *a4;
  *(v13 + 9) = v18 | 0x540;
  *(v13 + 1) = result;
  v13[4] = v14;
  *(v13 + 5) = v20;
  *(v13 + 56) = v15;
  *(v13 + 57) = v16;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::CallExpr,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::NodeArray,BOOL,anonymous namespace::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, char *a4, _WORD *a5)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *a5;
  *(v9 + 8) = 63;
  v13 = *(v9 + 9) & 0xF000 | v12 & 0x3F;
  *v9 = off_1EEEA61C0;
  result = *a3;
  *(v9 + 9) = v13 | 0x540;
  v9[2] = v10;
  *(v9 + 3) = result;
  *(v9 + 40) = v11;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ConversionExpr,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::NodeArray &,anonymous namespace::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *a2;
  v9 = *a4;
  *(v7 + 8) = 68;
  v10 = *(v7 + 9) & 0xF000 | v9 & 0x3F;
  *v7 = off_1EEEA6238;
  result = *a3;
  *(v7 + 9) = v10 | 0x540;
  v7[2] = v8;
  *(v7 + 3) = result;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ConditionalExpr,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  *(result + 8) = 57;
  *(result + 9) = *(result + 9) & 0xF000 | v13 & 0x3F | 0x540;
  *result = off_1EEEA62B0;
  result[2] = v10;
  result[3] = v11;
  result[4] = v12;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::CastExpr,std::string_view &,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node::Prec>(uint64_t a1, __n128 *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  *(v9 + 8) = 61;
  v13 = *(v9 + 9) & 0xF000 | v12 & 0x3F;
  *v9 = off_1EEEA6328;
  result = *a2;
  *(v9 + 9) = v13 | 0x540;
  *(v9 + 1) = result;
  v9[4] = v10;
  v9[5] = v11;
  return result;
}

void anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseExprPrimary(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2 && *v1 == 76)
  {
    v4 = v1 + 1;
    *a1 = v1 + 1;
    v5 = v2 - (v1 + 1);
    if (v2 == v1 + 1)
    {
LABEL_9:
      if (v39)
      {
        v38.n128_u64[1] = v7;
        if (v7)
        {
          v8 = *a1;
          if (*a1 != *(a1 + 8) && *v8 == 69)
          {
            *a1 = v8 + 1;
          }
        }
      }
    }

    else
    {
      switch(*v4)
      {
        case 'A':
          if (v38.n128_u64[0])
          {
            v6 = *a1;
            if (*a1 != *(a1 + 8) && *v6 == 69)
            {
              *a1 = v6 + 1;
            }
          }

          return;
        case 'D':
          if (v5 >= 2 && *v4 == 28228)
          {
            v20 = v1 + 3;
            *a1 = v1 + 3;
            if (v1 + 3 != v2 && *v20 == 48)
            {
              v20 = v1 + 4;
              *a1 = v1 + 4;
            }

            if (v20 != v2 && *v20 == 69)
            {
              *a1 = v20 + 1;
            }
          }

          return;
        case 'T':
          return;
        case 'U':
          if (v5 >= 2 && v1[2] == 108)
          {
            if (v38.n128_u64[0])
            {
              v22 = *a1;
              if (*a1 != *(a1 + 8) && *v22 == 69)
              {
                *a1 = v22 + 1;
              }
            }
          }

          return;
        case '_':
          if (v5 >= 2 && *v4 == 23135)
          {
            *a1 = v1 + 3;
            {
              v21 = *a1;
              if (*a1 != *(a1 + 8) && *v21 == 69)
              {
                *a1 = v21 + 1;
              }
            }
          }

          return;
        case 'a':
          *a1 = v1 + 2;
          v9 = "signed char";
          v10 = 11;
          goto LABEL_81;
        case 'b':
          if (v5 >= 3 && (*v4 == 12386 ? (v23 = v1[3] == 69) : (v23 = 0), v23))
          {
            *a1 = v1 + 4;
            v38.n128_u32[0] = 0;
          }

          else
          {
            {
              return;
            }

            v38.n128_u32[0] = 1;
          }

          return;
        case 'c':
          *a1 = v1 + 2;
          v9 = "char";
          v10 = 4;
          goto LABEL_81;
        case 'd':
          v11 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 0x11)
          {
            return;
          }

          v32 = 0;
          v33 = v1 + 18;
          while (1)
          {
            v34 = v11[v32];
            v35 = v34 - 48;
            v36 = v34 - 97;
            if (v35 >= 0xA && v36 >= 6)
            {
              return;
            }

            if (++v32 == 16)
            {
              *a1 = v33;
              if (v33 != v2 && *v33 == 69)
              {
                *a1 = v1 + 19;
                *(v18 + 8) = 79;
                *(v18 + 9) = *(v18 + 9) & 0xF000 | 0x540;
                *v18 = off_1EEEA6580;
                v19 = 16;
                goto LABEL_93;
              }

              return;
            }
          }

        case 'e':
          v24 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 0x21)
          {
            return;
          }

          v25 = 0;
          v26 = v1 + 34;
          while (1)
          {
            v27 = v24[v25];
            v28 = v27 - 48;
            v29 = v27 - 97;
            if (v28 >= 0xA && v29 >= 6)
            {
              break;
            }

            if (++v25 == 32)
            {
              *a1 = v26;
              if (v26 != v2 && *v26 == 69)
              {
                *a1 = v1 + 35;
                *(v31 + 8) = 80;
                *(v31 + 9) = *(v31 + 9) & 0xF000 | 0x540;
                *v31 = off_1EEEA65F8;
                v31[2] = v24;
                v31[3] = 32;
              }

              return;
            }
          }

          return;
        case 'f':
          v11 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 9)
          {
            return;
          }

          v12 = 0;
          v13 = v1 + 10;
          break;
        case 'h':
          *a1 = v1 + 2;
          v9 = "unsigned char";
          v10 = 13;
          goto LABEL_81;
        case 'i':
          *a1 = v1 + 2;
          v9 = &unk_1801CBF82;
          v10 = 0;
          goto LABEL_81;
        case 'j':
          *a1 = v1 + 2;
          v9 = "u";
          goto LABEL_63;
        case 'l':
          *a1 = v1 + 2;
          v9 = "l";
LABEL_63:
          v10 = 1;
          goto LABEL_81;
        case 'm':
          *a1 = v1 + 2;
          v9 = "ul";
          goto LABEL_65;
        case 'n':
          *a1 = v1 + 2;
          v9 = "__int128";
          v10 = 8;
          goto LABEL_81;
        case 'o':
          *a1 = v1 + 2;
          v9 = "unsigned __int128";
          v10 = 17;
          goto LABEL_81;
        case 's':
          *a1 = v1 + 2;
          v9 = "short";
          v10 = 5;
          goto LABEL_81;
        case 't':
          *a1 = v1 + 2;
          v9 = "unsigned short";
          v10 = 14;
          goto LABEL_81;
        case 'w':
          *a1 = v1 + 2;
          v9 = "wchar_t";
          v10 = 7;
          goto LABEL_81;
        case 'x':
          *a1 = v1 + 2;
          v9 = "ll";
LABEL_65:
          v10 = 2;
          goto LABEL_81;
        case 'y':
          *a1 = v1 + 2;
          v9 = "ull";
          v10 = 3;
LABEL_81:

          return;
        default:
          goto LABEL_9;
      }

      while (1)
      {
        v14 = v11[v12];
        v15 = v14 - 48;
        v16 = v14 - 97;
        if (v15 >= 0xA && v16 >= 6)
        {
          break;
        }

        if (++v12 == 8)
        {
          *a1 = v13;
          if (v13 != v2 && *v13 == 69)
          {
            *a1 = v1 + 11;
            *(v18 + 8) = 78;
            *(v18 + 9) = *(v18 + 9) & 0xF000 | 0x540;
            *v18 = off_1EEEA6508;
            v19 = 8;
LABEL_93:
            v18[2] = v11;
            v18[3] = v19;
          }

          return;
        }
      }
    }
  }
}

void anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseFunctionParam(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (v3 < 3)
  {
    if (v3 != 2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*v2 != 28774 || v2[2] != 84)
  {
LABEL_8:
    if (*v2 == 28774)
    {
      *a1 = v2 + 2;
      v11 = *a1;
      if (*a1 != *(a1 + 8) && *v11 == 95)
      {
        v12 = v9;
        v13 = v10;
        *a1 = v11 + 1;
        *(v14 + 8) = 67;
        *(v14 + 9) = *(v14 + 9) & 0xF000 | 0x540;
        *v14 = off_1EEEA6B98;
        v14[2] = v12;
        v14[3] = v13;
      }
    }

    else if (*v2 == 19558)
    {
      *a1 = v2 + 2;
      if (v5)
      {
        v6 = *a1;
        if (*a1 != *(a1 + 8) && *v6 == 112)
        {
          *a1 = v6 + 1;
          v15.n128_u64[1] = v7;
          v8 = *a1;
          if (*a1 != *(a1 + 8) && *v8 == 95)
          {
            *a1 = v8 + 1;
          }
        }
      }
    }

    return;
  }

  *a1 = v2 + 3;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseBracedExpr(void *a1)
{
  v2 = *a1;
  if (a1[1] - *a1 < 2uLL || *v2 != 100)
  {
LABEL_9:
  }

  v3 = v2[1];
  switch(v3)
  {
    case 'X':
      *a1 = v2 + 2;
      if (result)
      {
        v9 = result;
        if (result)
        {
          v10 = result;
          if (result)
          {
            v11 = result;
            *(result + 8) = 82;
            *(result + 9) = *(result + 9) & 0xF000 | 0x540;
            *result = off_1EEEA6D78;
            result[2] = v9;
            result[3] = v10;
            result[4] = v11;
          }
        }
      }

      break;
    case 'x':
      *a1 = v2 + 2;
      if (result)
      {
        v7 = result;
        if (result)
        {
          v8 = result;
          *(result + 8) = 81;
          *(result + 9) = *(result + 9) & 0xF000 | 0x540;
          *result = off_1EEEA6D00;
          result[2] = v7;
          result[3] = v8;
          *(result + 32) = 1;
        }
      }

      break;
    case 'i':
      *a1 = v2 + 2;
      if (result)
      {
        v5 = result;
        if (result)
        {
          v6 = result;
          *(result + 8) = 81;
          *(result + 9) = *(result + 9) & 0xF000 | 0x540;
          *result = off_1EEEA6D00;
          result[2] = v5;
          result[3] = v6;
          *(result + 32) = 0;
        }
      }

      return result;
    default:
      goto LABEL_9;
  }

  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::InitListExpr,decltype(nullptr),anonymous namespace::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
{
  *(v3 + 8) = 70;
  v4 = *(v3 + 9) & 0xF000 | 0x540;
  *v3 = off_1EEEA6DF0;
  result = *a2;
  *(v3 + 9) = v4;
  v3[2] = 0;
  *(v3 + 3) = result;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parsePointerToMemberConversionExpr(uint64_t a1)
{
  if (result)
  {
    v3 = result;
    if (result)
    {
      v4 = result;
      v7 = *a1;
      if (*a1 == *(a1 + 8) || *v7 != 69)
      {
        return 0;
      }

      else
      {
        v8 = v5;
        v9 = v6;
        *a1 = v7 + 1;
        *(result + 8) = 69;
        *(result + 9) = *(result + 9) & 0xF000 | 0x542;
        *result = off_1EEEA6E68;
        result[2] = v3;
        result[3] = v4;
        result[4] = v8;
        result[5] = v9;
      }
    }
  }

  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::EnclosingExpr,char const(&)[10],anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node::Prec>(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v6 = *a2;
  v7 = *a3;
  *(result + 8) = 60;
  *(result + 9) = *(result + 9) & 0xF000 | v7 & 0x3F | 0x540;
  *result = off_1EEEA63A0;
  result[2] = "noexcept ";
  result[3] = 9;
  result[5] = 0;
  result[6] = 0;
  result[4] = v6;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseRequiresExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  if (&v11[-*a1] < 2)
  {
    return 0;
  }

  v46[11] = v8;
  v46[12] = v9;
  if (*v10 == 20850)
  {
    v16 = v10 + 1;
    *a1 = v16;
    v17 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    while (v16 == v11 || *v16 != 95)
    {
      v46[0] = result;
      if (!result)
      {
        return result;
      }

      v16 = *a1;
      v11 = *(a1 + 8);
    }

    *a1 = v16 + 1;
    v45 = v18;
    v15 = *a1;
    v11 = *(a1 + 8);
  }

  else
  {
    if (*v10 != 29042)
    {
      return 0;
    }

    v45 = 0;
    v14 = 0;
    v15 = v10 + 1;
    *a1 = v15;
  }

  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = a1 + 16;
  v46[0] = 0;
  if (v15 != v11)
  {
    v44 = (v20 - v19) >> 3;
    while (1)
    {
      v22 = *v15;
      if (v22 == 81)
      {
        break;
      }

      if (v22 == 84)
      {
        *a1 = v15 + 1;
        if (!v28)
        {
          return 0;
        }

        v29 = v28;
        *(v30 + 8) = 85;
        *(v30 + 9) = *(v30 + 9) & 0xF000 | 0x540;
        v31 = off_1EEEA6F58;
LABEL_25:
        *v30 = v31;
        v30[2] = v29;
        goto LABEL_33;
      }

      if (v22 != 88)
      {
        return 0;
      }

      *a1 = v15 + 1;
      if (!v23)
      {
        return 0;
      }

      v24 = v23;
      v25 = *a1;
      v26 = *(a1 + 8);
      if (*a1 == v26 || *v25 != 78)
      {
        v27 = 0;
      }

      else
      {
        *a1 = ++v25;
        v27 = 1;
      }

      if (v25 == v26 || *v25 != 82)
      {
        v33 = 0;
      }

      else
      {
        *a1 = v25 + 1;
        if (!v33)
        {
          return 0;
        }
      }

      *(v30 + 8) = 84;
      *(v30 + 9) = *(v30 + 9) & 0xF000 | 0x540;
      *v30 = off_1EEEA6EE0;
      v30[2] = v24;
      *(v30 + 24) = v27;
      v30[4] = v33;
LABEL_33:
      v46[0] = v30;
      v15 = *a1;
      v40 = *(a1 + 8);
      if (*a1 != v40 && *v15 == 69)
      {
        *a1 = v15 + 1;
        v43 = v42;
        *(result + 8) = 83;
        *(result + 9) = *(result + 9) & 0xF000 | 0x540;
        *result = off_1EEEA7048;
        result[2] = v14;
        result[3] = v45;
        result[4] = v41;
        result[5] = v43;
        return result;
      }

      v46[0] = 0;
      if (v15 == v40)
      {
        return 0;
      }
    }

    *a1 = v15 + 1;
    if (!v32)
    {
      return 0;
    }

    v29 = v32;
    *(v30 + 8) = 86;
    *(v30 + 9) = *(v30 + 9) & 0xF000 | 0x540;
    v31 = off_1EEEA6FD0;
    goto LABEL_25;
  }

  return 0;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSubobjectExpr(uint64_t a1)
{
  if (result)
  {
    v3 = result;
    if (result)
    {
      v4 = result;
      v13 = *a1;
      v14 = *(a1 + 8);
      if (*a1 != v14)
      {
        v15 = v5;
        v16 = v6;
        v17 = *(a1 + 16);
        v18 = *(a1 + 24);
        v19 = *v13;
        if (v19 == 95)
        {
          v29 = *(a1 + 24);
          v30 = *(a1 + 16);
          while (1)
          {
            *a1 = v13 + 1;
            v22 = v21;
            *(v23 + 8) = 8;
            *(v23 + 9) = *(v23 + 9) & 0xF000 | 0x540;
            *v23 = off_1EEEA5D10;
            v23[2] = v20;
            v23[3] = v22;
            v31 = v23;
            v13 = *a1;
            v14 = *(a1 + 8);
            if (*a1 == v14)
            {
              break;
            }

            v19 = *v13;
            if (v19 != 95)
            {
              v18 = v29;
              v17 = v30;
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          v24 = v13 != v14 && v19 == 112;
          v25 = v24;
          if (v24)
          {
            *a1 = ++v13;
          }

          if (v13 != v14 && *v13 == 69)
          {
            *a1 = v13 + 1;
            v28 = v27;
            *(result + 8) = 59;
            *(result + 9) = *(result + 9) & 0xF000 | 0x540;
            *result = off_1EEEA70C0;
            result[2] = v3;
            result[3] = v4;
            result[4] = v15;
            result[5] = v16;
            result[6] = v26;
            result[7] = v28;
            *(result + 64) = v25;
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ParameterPackExpansion,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 42;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA6C88;
  result[2] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::SizeofParamPackExpr,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 62;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA7138;
  result[2] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::EnclosingExpr,char const(&)[11],anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 60;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA63A0;
  result[2] = "sizeof... ";
  result[3] = 10;
  result[4] = v4;
  result[5] = 0;
  result[6] = 0;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::NodeArrayNode,anonymous namespace::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
{
  *(v3 + 8) = 0;
  v4 = *(v3 + 9) & 0xF000 | 0x540;
  *v3 = off_1EEEA71B0;
  result = *a2;
  *(v3 + 9) = v4;
  *(v3 + 1) = result;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::InitListExpr,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::NodeArray>(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *a2;
  *(v5 + 8) = 70;
  v7 = *(v5 + 9) & 0xF000 | 0x540;
  *v5 = off_1EEEA6DF0;
  result = *a3;
  *(v5 + 9) = v7;
  v5[2] = v6;
  *(v5 + 3) = result;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ThrowExpr,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 72;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA7228;
  result[2] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnresolvedName(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = &v5[-*a1];
  if (v6 >= 3)
  {
    if (*v4 == 29299 && v4[2] == 78)
    {
      *a1 = v4 + 3;
      if (v12)
      {
        v19 = v12;
        if (*(a1 + 8) == *a1 || **a1 != 73)
        {
LABEL_20:
          while (1)
          {
            v23 = *a1;
            if (*a1 != *(a1 + 8) && *v23 == 69)
            {
              break;
            }

            if (!v24)
            {
              return 0;
            }

            v25 = v24;
            *(v26 + 8) = 23;
            *(v26 + 9) = *(v26 + 9) & 0xF000 | 0x540;
            *v26 = off_1EEEA72A0;
            v26[2] = v19;
            v26[3] = v25;
            v19 = v26;
          }

          *a1 = v23 + 1;
          if (v39)
          {
            v40 = v39;
            *(v8 + 8) = 23;
            *(v8 + 9) = *(v8 + 9) & 0xF000 | 0x540;
            *v8 = off_1EEEA72A0;
            v8[2] = v19;
            v8[3] = v40;
            return v8;
          }
        }

        else
        {
          if (v20)
          {
            v21 = v20;
            *(v22 + 8) = 45;
            *(v22 + 9) = *(v22 + 9) & 0xF000 | 0x540;
            *v22 = off_1EEEA7A20;
            v22[2] = v19;
            v22[3] = v21;
            v19 = v22;
            goto LABEL_20;
          }
        }
      }

      return 0;
    }
  }

  else if (v6 != 2)
  {
    goto LABEL_9;
  }

  if (*v4 == 29299)
  {
    v10 = v4 + 2;
    *a1 = v10;
    if (v5 == v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = *v10;
      if (v11 < 0)
      {
LABEL_26:
        v45 = v27;
        if (v27)
        {
          v34 = v27;
          if (*(a1 + 8) == *a1 || **a1 != 73)
          {
LABEL_46:
            if (v41)
            {
              v42 = v41;
              *(v8 + 8) = 23;
              *(v8 + 9) = *(v8 + 9) & 0xF000 | 0x540;
              *v8 = off_1EEEA72A0;
              v8[2] = v34;
              v8[3] = v42;
              return v8;
            }
          }

          else
          {
            v44 = v35;
            if (v35)
            {
              goto LABEL_46;
            }
          }
        }

        return 0;
      }
    }

    if ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x400) == 0)
    {
      goto LABEL_26;
    }

    if (!v8)
    {
      return v8;
    }

    v34 = 0;
    while (1)
    {
      if (v34)
      {
        *(v36 + 8) = 23;
        *(v36 + 9) = *(v36 + 9) & 0xF000 | 0x540;
        *v36 = off_1EEEA72A0;
        v36[2] = v34;
        v37 = v36 + 3;
        v34 = v36;
      }

      else
      {
        if (!a2)
        {
          v34 = v8;
          goto LABEL_38;
        }

        *(v34 + 8) = 46;
        *(v34 + 9) = *(v34 + 9) & 0xF000 | 0x540;
        *v34 = off_1EEEA7480;
        v37 = v34 + 2;
      }

      *v37 = v8;
LABEL_38:
      v38 = *a1;
      if (*a1 != *(a1 + 8) && *v38 == 69)
      {
        *a1 = v38 + 1;
        goto LABEL_46;
      }

      if (!v8)
      {
        return v8;
      }
    }
  }

LABEL_9:
  if (v8 && a2)
  {
    *(v9 + 8) = 46;
    *(v9 + 9) = *(v9 + 9) & 0xF000 | 0x540;
    *v9 = off_1EEEA7480;
    v9[2] = v8;
    return v9;
  }

  return v8;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::BinaryExpr,anonymous namespace::itanium_demangle::Node *&,std::string_view &,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node::Prec &>(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *a5;
  *(v9 + 8) = 54;
  v13 = *(v9 + 9) & 0xF000 | v12 & 0x3F;
  *v9 = off_1EEEA5E78;
  result = *a3;
  *(v9 + 9) = v13 | 0x540;
  v9[2] = v10;
  *(v9 + 3) = result;
  v9[5] = v11;
  return result;
}

void *anonymous namespace::itanium_demangle::BinaryExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if (*(this + 8))
  {
    goto LABEL_2;
  }

  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != 2)
  {
    if (v16 == 1 && *v15 == 62)
    {
      goto LABEL_19;
    }

LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  if (*v15 != 15934)
  {
    goto LABEL_2;
  }

LABEL_19:
  v4 = 1;
  *(this + 8) = 1;
  v17 = *this;
  v18 = *(this + 1);
  *(this + 1) = v18 + 1;
  *(v17 + v18) = 40;
LABEL_3:
  v5 = *(a1 + 9);
  v6 = v5 << 10;
  v7 = (v5 << 10);
  v8 = v5 << 26 >> 26;
  if (v7 == 17408)
  {
    v9 = 15;
  }

  else
  {
    v9 = v8;
  }

  if (*(a1 + 32) == 1 && **(a1 + 24) == 44)
  {
    v10 = 1;
  }

  else
  {
    *(*this + (*(this + 1))++) = 32;
    v10 = *(a1 + 32);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  v11 = *(a1 + 24);
  memcpy((*this + *(this + 1)), v11, v10);
  *(this + 1) += v10;
LABEL_11:
  *(*this + (*(this + 1))++) = 32;
  if (v4)
  {
    --*(this + 8);
    v13 = *this;
    v14 = *(this + 1);
    *(this + 1) = v14 + 1;
    *(v13 + v14) = 41;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::Node::printAsOperand(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this, int a3, int a4)
{
  if (a4 + a3 <= (*(a1 + 9) << 26 >> 26))
  {
    ++*(this + 8);
    v7 = *this;
    v8 = *(this + 1);
    *(this + 1) = v8 + 1;
    *(v7 + v8) = 40;
    --*(this + 8);
    v9 = *this;
    v10 = *(this + 1);
    *(this + 1) = v10 + 1;
    *(v9 + v10) = 41;
  }

  else
  {
  }

  return result;
}

void *anonymous namespace::itanium_demangle::PrefixExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    memcpy((*this + *(this + 1)), v5, v4);
    *(this + 1) += v4;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 9) << 26 >> 26;
}

void *anonymous namespace::itanium_demangle::PostfixExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *a2)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    result = memcpy((*a2 + *(a2 + 1)), v6, v5);
    *(a2 + 1) += v5;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::ArraySubscriptExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *a2)
{
  ++*(a2 + 8);
  v4 = *a2;
  v5 = *(a2 + 1);
  *(a2 + 1) = v5 + 1;
  *(v4 + v5) = 91;
  --*(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 1);
  *(a2 + 1) = v8 + 1;
  *(v7 + v8) = 93;
  return result;
}

void *anonymous namespace::itanium_demangle::MemberExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 24);
    memcpy((*a2 + *(a2 + 1)), v5, v4);
    *(a2 + 1) += v4;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 9) << 26 >> 26;
}

uint64_t anonymous namespace::itanium_demangle::NewExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if (*(a1 + 56) == 1)
  {
    *(*this + *(this + 1)) = 14906;
    *(this + 1) += 2;
  }

  v4 = *this + *(this + 1);
  *(v4 + 2) = 119;
  *v4 = 25966;
  *(this + 1) += 3;
  if (*(a1 + 57) == 1)
  {
    *(*this + *(this + 1)) = 23899;
    *(this + 1) += 2;
  }

  if (*(a1 + 24))
  {
    ++*(this + 8);
    v5 = *this;
    v6 = *(this + 1);
    *(this + 1) = v6 + 1;
    *(v5 + v6) = 40;
    --*(this + 8);
    v7 = *this;
    v8 = *(this + 1);
    *(this + 1) = v8 + 1;
    *(v7 + v8) = 41;
  }

  *(*this + (*(this + 1))++) = 32;
  if (*(a1 + 48))
  {
    ++*(this + 8);
    v10 = *this;
    v11 = *(this + 1);
    *(this + 1) = v11 + 1;
    *(v10 + v11) = 40;
    --*(this + 8);
    v12 = *this;
    v13 = *(this + 1);
    *(this + 1) = v13 + 1;
    *(v12 + v13) = 41;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::NodeArray::printWithComma(void *result, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if (result[1])
  {
    v3 = result;
    v4 = 0;
    v5 = *(this + 1);
    v6 = 1;
    do
    {
      v7 = v5;
      if ((v6 & 1) == 0)
      {
        *(*this + *(this + 1)) = 8236;
        v7 = *(this + 1) + 2;
        *(this + 1) = v7;
      }

      if (v7 == *(this + 1))
      {
        *(this + 1) = v5;
      }

      else
      {
        v6 = 0;
        v5 = *(this + 1);
      }

      ++v4;
    }

    while (v4 != v3[1]);
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::DeleteExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if (*(a1 + 24) == 1)
  {
    *(*this + *(this + 1)) = 14906;
    *(this + 1) += 2;
  }

  v4 = *this + *(this + 1);
  *(v4 + 4) = 25972;
  *v4 = 1701602660;
  *(this + 1) += 6;
  if (*(a1 + 25) == 1)
  {
    *(*this + *(this + 1)) = 23899;
    *(this + 1) += 2;
  }

  v5 = *this;
  v6 = *(this + 1);
  *(this + 1) = v6 + 1;
  *(v5 + v6) = 32;
  v7 = *(a1 + 16);
}

void *anonymous namespace::itanium_demangle::CallExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if (*(a1 + 40) == 1)
  {
    ++*(this + 8);
    v4 = *this;
    v5 = *(this + 1);
    *(this + 1) = v5 + 1;
    *(v4 + v5) = 40;
  }

  if (*(a1 + 40) == 1)
  {
    --*(this + 8);
    v6 = *this;
    v7 = *(this + 1);
    *(this + 1) = v7 + 1;
    *(v6 + v7) = 41;
  }

  ++*(this + 8);
  v8 = *this;
  v9 = *(this + 1);
  *(this + 1) = v9 + 1;
  *(v8 + v9) = 40;
  --*(this + 8);
  v11 = *this;
  v12 = *(this + 1);
  *(this + 1) = v12 + 1;
  *(v11 + v12) = 41;
  return result;
}

void *anonymous namespace::itanium_demangle::ConversionExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  ++*(this + 8);
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 40;
  --*(this + 8);
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 41;
  ++*(this + 8);
  v8 = *this;
  v9 = *(this + 1);
  *(this + 1) = v9 + 1;
  *(v8 + v9) = 40;
  --*(this + 8);
  v11 = *this;
  v12 = *(this + 1);
  *(this + 1) = v12 + 1;
  *(v11 + v12) = 41;
  return result;
}

void *anonymous namespace::itanium_demangle::ConditionalExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *a2)
{
  v4 = *a2 + *(a2 + 1);
  *(v4 + 2) = 32;
  *v4 = 16160;
  *(a2 + 1) += 3;
  v5 = *a2 + *(a2 + 1);
  *(v5 + 2) = 32;
  *v5 = 14880;
  *(a2 + 1) += 3;
  v6 = *(a1 + 32);
}

void *anonymous namespace::itanium_demangle::CastExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    memcpy((*this + *(this + 1)), v5, v4);
    *(this + 1) += v4;
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  *(*this + (*(this + 1))++) = 60;
  (*(**(a1 + 32) + 32))(*(a1 + 32), this);
  *(*this + (*(this + 1))++) = 62;
  *(this + 8) = v6 + 1;
  v7 = *this;
  v8 = *(this + 1);
  *(this + 1) = v8 + 1;
  *(v7 + v8) = 40;
  --*(this + 8);
  v10 = *this;
  v11 = *(this + 1);
  *(this + 1) = v11 + 1;
  *(v10 + v11) = 41;
  return result;
}

void *anonymous namespace::itanium_demangle::EnclosingExpr::printLeft(void *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    memcpy((*this + *(this + 1)), v5, v4);
    *(this + 1) += v4;
  }

  ++*(this + 8);
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 40;
  --*(this + 8);
  v9 = *this;
  v10 = *(this + 1);
  *(this + 1) = v10 + 1;
  *(v9 + v10) = 41;
  v11 = a1[6];
  if (v11)
  {
    v12 = a1[5];
    result = memcpy((*this + *(this + 1)), v12, v11);
    *(this + 1) += v11;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseIntegerLiteral(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!v7)
  {
    return 0;
  }

  v8 = *a1;
  if (*a1 == *(a1 + 8) || *v8 != 69)
  {
    return 0;
  }

  v9 = v6;
  v10 = v7;
  *a1 = v8 + 1;
  *(result + 8) = 77;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA6418;
  result[2] = a2;
  result[3] = a3;
  result[4] = v9;
  result[5] = v10;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::BoolExpr,int>(uint64_t a1, _DWORD *a2)
{
  v4 = *a2 != 0;
  *(result + 8) = 73;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA6490;
  *(result + 11) = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::StringLiteral,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 74;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA6670;
  result[2] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnnamedTypeName(unsigned __int8 **a1, uint64_t a2)
{
  if (a2)
  {
    a1[84] = a1[83];
  }

  v3 = *a1;
  if ((a1[1] - *a1) < 2)
  {
    return 0;
  }

  if (*v3 == 29781)
  {
    *a1 = (v3 + 2);
    v9 = *a1;
    if (*a1 != a1[1] && *v9 == 95)
    {
      v10 = v7;
      v11 = v8;
      *a1 = (v9 + 1);
      *(v4 + 8) = 51;
      *(v4 + 9) = *(v4 + 9) & 0xF000 | 0x540;
      *v4 = off_1EEEA66E8;
      v4[2] = v10;
      v4[3] = v11;
      return v4;
    }

    return 0;
  }

  if (*v3 == 27733)
  {
    *a1 = (v3 + 2);
    v12 = a1[98];
    a1[98] = ((a1[84] - a1[83]) >> 3);
    v13 = a1[2];
    v14 = a1[3];
    {
      if (!v46.n128_u64[0])
      {
        goto LABEL_43;
      }
    }

    v28 = (v14 - v13) >> 3;
    v46.n128_u64[1] = v29;
    if (!v29)
    {
      v30 = a1[84];
      if (v30 == a1[83])
      {
        __abort_message("%s:%d: %s", 0, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/demangle/ItaniumDemangle.h");
      }

      a1[84] = v30 - 8;
    }

    v45 = 0;
    v31 = *a1;
    v32 = a1[1];
    if (*a1 == v32)
    {
LABEL_30:
      while (1)
      {
        if (!v44)
        {
          goto LABEL_43;
        }

        if (a1[1] != *a1)
        {
          v35 = **a1;
          if (v35 == 81 || v35 == 69)
          {
            goto LABEL_34;
          }
        }
      }
    }

    if (*v31 == 81)
    {
      *a1 = (v31 + 1);
      v33 = *(a1 + 778);
      *(a1 + 778) = 1;
      *(a1 + 778) = v33;
      v45 = v34;
      if (!v34)
      {
        goto LABEL_43;
      }

      v31 = *a1;
      v32 = a1[1];
    }

    if (v32 == v31 || *v31 != 118)
    {
      goto LABEL_30;
    }

    *a1 = (v31 + 1);
LABEL_34:
    *(&v44 + 1) = v21;
    v43 = 0;
    v36 = *a1;
    v37 = a1[1];
    if (*a1 == v37)
    {
      goto LABEL_43;
    }

    if (*v36 == 81)
    {
      *a1 = (v36 + 1);
      v38 = *(a1 + 778);
      *(a1 + 778) = 1;
      *(a1 + 778) = v38;
      v43 = v39;
      if (!v39)
      {
        goto LABEL_43;
      }

      v36 = *a1;
      v37 = a1[1];
    }

    if (v36 != v37 && *v36 == 69)
    {
      *a1 = (v36 + 1);
      *(&v42 + 1) = v21;
      v40 = *a1;
      if (*a1 != a1[1] && *v40 == 95)
      {
        *a1 = (v40 + 1);
        v4 = v41;
LABEL_44:
        a1[98] = v12;
        return v4;
      }
    }

LABEL_43:
    v4 = 0;
    goto LABEL_44;
  }

  if (*v3 != 25173)
  {
    return 0;
  }

  *a1 = (v3 + 2);
  v6 = *a1;
  if (*a1 == a1[1] || *v6 != 95)
  {
    return 0;
  }

  *a1 = (v6 + 1);
}

void sub_1801BF4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  *(v19 + 784) = v20;
  _Unwind_Resume(a1);
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::LambdaExpr,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 75;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA6AA8;
  result[2] = v4;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::EnumLiteral,anonymous namespace::itanium_demangle::Node *&,std::string_view &>(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *a2;
  *(v5 + 8) = 76;
  v7 = *(v5 + 9) & 0xF000 | 0x540;
  *v5 = off_1EEEA6B20;
  result = *a3;
  *(v5 + 9) = v7;
  v5[2] = v6;
  *(v5 + 3) = result;
  return result;
}

void *anonymous namespace::itanium_demangle::IntegerLiteral::printLeft(void *result, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v3 = result;
  if (result[3] >= 4uLL)
  {
    ++*(this + 8);
    v4 = *this;
    v5 = *(this + 1);
    *(this + 1) = v5 + 1;
    *(v4 + v5) = 40;
    v6 = v3[3];
    if (v6)
    {
      v7 = v3[2];
      memcpy((*this + *(this + 1)), v7, v6);
      *(this + 1) += v6;
    }

    --*(this + 8);
    v8 = *this;
    v9 = *(this + 1);
    *(this + 1) = v9 + 1;
    *(v8 + v9) = 41;
  }

  v10 = v3[4];
  if (*v10 == 110)
  {
    v11 = *this;
    v13 = (this + 8);
    v12 = *(this + 1);
    *(this + 1) = v12 + 1;
    *(v11 + v12) = 45;
    v14 = v3[5];
    v15 = v14 - 1;
    if (v14 == 1)
    {
      goto LABEL_11;
    }

    v16 = v3[4];
    v17 = (*this + *(this + 1));
    v18 = (v16 + 1);
  }

  else
  {
    v15 = v3[5];
    if (!v15)
    {
      goto LABEL_11;
    }

    v13 = (this + 8);
    v17 = (*this + *(this + 1));
    v18 = v10;
  }

  result = memcpy(v17, v18, v15);
  *v13 += v15;
LABEL_11:
  v19 = v3[3];
  if (v19 - 4 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v3[2];
    result = memcpy((*this + *(this + 1)), v20, v19);
    *(this + 1) += v19;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::BoolExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if (*(a1 + 11))
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (*(a1 + 11))
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  result = memcpy((*this + *(this + 1)), v4, v3);
  *(this + 1) += v3;
  return result;
}

void *anonymous namespace::itanium_demangle::FloatLiteralImpl<float>::printLeft(void *result, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(result + 3) >= 8uLL)
  {
    v3 = 0;
    v4 = *(result + 2);
    v5 = &v18;
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = v5;
      v8 = *(v4 + v3);
      if ((v8 & 0x8000000000000000) == 0 && (*(v6 + 4 * v8 + 60) & 0x400) != 0)
      {
        v9 = -48;
      }

      else
      {
        v9 = -87;
      }

      v10 = *(v4 + v3 + 1);
      if ((v10 & 0x8000000000000000) == 0 && (*(v6 + 4 * v10 + 60) & 0x400) != 0)
      {
        v11 = -48;
      }

      else
      {
        v11 = -87;
      }

      *v7 = v10 + v11 + 16 * (v8 + v9);
      v5 = (v7 + 1);
      v3 += 2;
    }

    while (v3 != 8);
    if (v7 > &v18)
    {
      v12 = -1;
      v13 = &v18;
      do
      {
        v14 = *v13;
        *v13 = *(v5 + v12);
        v13 = (v13 + 1);
        *(v5 + v12--) = v14;
      }

      while (v12 != -3);
    }

    *__str = 0;
    v20 = 0;
    v21 = 0;
    result = snprintf(__str, 0x18uLL, "%af", v18);
    if (result)
    {
      v15 = result;
      v16 = result;
      result = memcpy((*a2 + a2[1]), __str, v16);
      a2[1] += v15;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void *anonymous namespace::itanium_demangle::FloatLiteralImpl<double>::printLeft(void *result, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(result + 3) >= 0x10uLL)
  {
    v3 = 0;
    v4 = *(result + 2);
    v5 = &v18;
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = v5;
      v8 = *(v4 + v3);
      if ((v8 & 0x8000000000000000) == 0 && (*(v6 + 4 * v8 + 60) & 0x400) != 0)
      {
        v9 = -48;
      }

      else
      {
        v9 = -87;
      }

      v10 = *(v4 + v3 + 1);
      if ((v10 & 0x8000000000000000) == 0 && (*(v6 + 4 * v10 + 60) & 0x400) != 0)
      {
        v11 = -48;
      }

      else
      {
        v11 = -87;
      }

      *v7 = v10 + v11 + 16 * (v8 + v9);
      v5 = (v7 + 1);
      v3 += 2;
    }

    while (v3 != 16);
    if (v7 > &v18)
    {
      v12 = -1;
      v13 = &v18;
      do
      {
        v14 = *v13;
        *v13 = *(v5 + v12);
        v13 = (v13 + 1);
        *(v5 + v12--) = v14;
      }

      while (v12 != -5);
    }

    *__str = 0u;
    v20 = 0u;
    result = snprintf(__str, 0x20uLL, "%a", v18);
    if (result)
    {
      v15 = result;
      v16 = result;
      result = memcpy((*a2 + a2[1]), __str, v16);
      a2[1] += v15;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void *anonymous namespace::itanium_demangle::FloatLiteralImpl<long double>::printLeft(void *result, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(result + 3) >= 0x20uLL)
  {
    v3 = 0;
    v4 = *(result + 2);
    v5 = &v18;
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = v5;
      v8 = *(v4 + v3);
      if ((v8 & 0x8000000000000000) == 0 && (*(v6 + 4 * v8 + 60) & 0x400) != 0)
      {
        v9 = -48;
      }

      else
      {
        v9 = -87;
      }

      v10 = *(v4 + v3 + 1);
      if ((v10 & 0x8000000000000000) == 0 && (*(v6 + 4 * v10 + 60) & 0x400) != 0)
      {
        v11 = -48;
      }

      else
      {
        v11 = -87;
      }

      *v7 = v10 + v11 + 16 * (v8 + v9);
      v5 = (v7 + 1);
      v3 += 2;
    }

    while (v3 != 32);
    if (v7 > &v18)
    {
      v12 = -1;
      v13 = &v18;
      do
      {
        v14 = *v13;
        *v13 = *(v5 + v12);
        v13 = (v13 + 1);
        *(v5 + v12--) = v14;
      }

      while (v12 != -9);
    }

    *__str = 0u;
    memset(v20, 0, sizeof(v20));
    result = snprintf(__str, 0x2AuLL, "%LaL", v18);
    if (result)
    {
      v15 = result;
      v16 = result;
      result = memcpy((*a2 + a2[1]), __str, v16);
      a2[1] += v15;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void *anonymous namespace::itanium_demangle::StringLiteral::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + *(this + 1)) = 15394;
  *(this + 1) += 2;
  *(*this + *(this + 1)) = 8766;
  *(this + 1) += 2;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::ScopedTemplateParamList::ScopedTemplateParamList(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 672) - *(a2 + 664)) >> 3;
  *a1 = a2;
  *(a1 + 8) = v3;
  *(a1 + 40) = 0u;
  *(a1 + 16) = a1 + 40;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = a1 + 104;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v5 = a1 + 16;
  return a1;
}

void sub_1801BFD8C(_Unwind_Exception *exception_object)
{
  if (*v2 != v1)
  {
    free(*v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::isTemplateParamDecl(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  if (!v2 || *v1 != 84)
  {
    return 0;
  }

  if (v2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1[1];
  }

  v5 = memchr("yptnk", v3, 5uLL);
  if (v5)
  {
    v6 = v5 - "yptnk" == -1;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParamDecl(uint64_t a1, const void **a2)
{
  v2 = *a1;
  if (*(a1 + 8) - *a1 < 2uLL)
  {
    return 0;
  }

  if (*v2 == 31060)
  {
    *a1 = v2 + 1;
    v6 = *(a1 + 792);
    *(a1 + 792) = v6 + 1;
    *(v7 + 8) = 33;
    *(v7 + 9) = *(v7 + 9) & 0xF000 | 0x540;
    *v7 = off_1EEEA6760;
    *(v7 + 3) = 0;
    *(v7 + 4) = v6;
    v35[0] = v7;
    if (a2)
    {
    }

    *(v3 + 8) = 35;
    *(v3 + 9) = *(v3 + 9) & 0xF000 | 0x500;
    *v3 = off_1EEEA67D8;
    v3[2] = v7;
  }

  else if (*v2 == 27476)
  {
    *a1 = v2 + 1;
    v8 = *(a1 + 778);
    *(a1 + 778) = 1;
    if (v9)
    {
      v10 = *(a1 + 792);
      *(a1 + 792) = v10 + 1;
      *(v11 + 8) = 33;
      *(v11 + 9) = *(v11 + 9) & 0xF000 | 0x540;
      *v11 = off_1EEEA6760;
      *(v11 + 3) = 0;
      *(v11 + 4) = v10;
      v35[0] = v11;
      if (a2)
      {
      }

      *(v3 + 8) = 36;
      *(v3 + 9) = *(v3 + 9) & 0xF000 | 0x500;
      *v3 = off_1EEEA6850;
      v3[2] = v9;
      v3[3] = v11;
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 778) = v8;
  }

  else
  {
    if (*v2 == 28244)
    {
      *a1 = v2 + 1;
      v12 = *(a1 + 796);
      *(a1 + 796) = v12 + 1;
      *(v13 + 8) = 33;
      *(v13 + 9) = *(v13 + 9) & 0xF000 | 0x540;
      *v13 = off_1EEEA6760;
      *(v13 + 3) = 1;
      *(v13 + 4) = v12;
      v35[0] = v13;
      if (a2)
      {
      }

      if (v14)
      {
        v15 = v14;
        *(v3 + 8) = 37;
        *(v3 + 9) = *(v3 + 9) & 0xF000 | 0x500;
        *v3 = off_1EEEA68C8;
        v3[2] = v13;
        v3[3] = v15;
        return v3;
      }

      return 0;
    }

    if (*v2 != 29780)
    {
      if (*v2 == 28756)
      {
        *a1 = v2 + 1;
        if (v35[0])
        {
        }
      }

      return 0;
    }

    *a1 = v2 + 1;
    v16 = *(a1 + 800);
    *(a1 + 800) = v16 + 1;
    *(v17 + 8) = 33;
    *(v17 + 9) = *(v17 + 9) & 0xF000 | 0x540;
    *v17 = off_1EEEA6760;
    *(v17 + 3) = 2;
    *(v17 + 4) = v16;
    v35[0] = v17;
    if (a2)
    {
    }

    v18 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v25 = *a1;
    v26 = *(a1 + 8);
    do
    {
      if (v25 != v26 && *v25 == 69)
      {
        v29 = 0;
        goto LABEL_36;
      }

      if (!v34)
      {
        goto LABEL_32;
      }

      v25 = *a1;
      v26 = *(a1 + 8);
    }

    while (*a1 == v26 || *v25 != 81);
    *a1 = v25 + 1;
    v28 = *(a1 + 778);
    *(a1 + 778) = 1;
    *(a1 + 778) = v28;
    if (!v29 || (v25 = *a1, *a1 == *(a1 + 8)) || *v25 != 69)
    {
LABEL_32:
      v3 = 0;
      goto LABEL_37;
    }

LABEL_36:
    *a1 = v25 + 1;
    v32 = v31;
    *(v3 + 8) = 38;
    *(v3 + 9) = *(v3 + 9) & 0xF000 | 0x500;
    *v3 = off_1EEEA6940;
    v3[2] = v17;
    v3[3] = v30;
    v3[4] = v32;
    v3[5] = v29;
LABEL_37:
  }

  return v3;
}

void sub_1801C0330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 778) = v10;
  _Unwind_Resume(a1);
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ClosureTypeName,anonymous namespace::itanium_demangle::NodeArray &,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::NodeArray &,anonymous namespace::itanium_demangle::Node *&,std::string_view &>(uint64_t a1, __n128 *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, __int128 *a6)
{
  v12 = *a3;
  v13 = *a5;
  *(v11 + 8) = 52;
  v14 = *(v11 + 9) & 0xF000 | 0x540;
  *v11 = off_1EEEA6A30;
  result = *a2;
  v16 = *a4;
  v17 = *a6;
  *(v11 + 9) = v14;
  *(v11 + 1) = result;
  v11[4] = v12;
  *(v11 + 5) = v16;
  v11[7] = v13;
  *(v11 + 4) = v17;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::ScopedTemplateParamList::~ScopedTemplateParamList(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v9 = *(*a1 + 664);
  if (v8 > (*(*a1 + 672) - v9) >> 3)
  {
    __abort_message("%s:%d: %s", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/demangle/ItaniumDemangle.h");
  }

  *(*a1 + 672) = v9 + 8 * v8;
  v11 = a1[2];
  if (v11 != a1 + 5)
  {
    free(v11);
  }

  return a1;
}

void *anonymous namespace::itanium_demangle::UnnamedTypeName::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + *(this + 1)) = 0x64656D616E6E7527;
  *(this + 1) += 8;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    memcpy((*this + *(this + 1)), v5, v4);
    *(this + 1) += v4;
  }

  *(*this + (*(this + 1))++) = 39;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::TemplateParamPackDecl,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 39;
  *(result + 9) = *(result + 9) & 0xF000 | 0x500;
  *result = off_1EEEA69B8;
  result[2] = v4;
  return result;
}

_DWORD *anonymous namespace::itanium_demangle::SyntheticTemplateParamName::printLeft(_DWORD *result, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v3 = result;
  v18 = *MEMORY[0x1E69E9840];
  v4 = result[3];
  if (v4 == 2)
  {
    v5 = 3;
    v7 = (this + 8);
    v10 = *this + *(this + 1);
    *(v10 + 2) = 84;
    *v10 = 21540;
  }

  else
  {
    if (v4 == 1)
    {
      v5 = 2;
      v6 = *this;
      v7 = (this + 8);
      v8 = *(this + 1);
      v9 = 20004;
    }

    else
    {
      if (v4)
      {
        goto LABEL_9;
      }

      v5 = 2;
      v6 = *this;
      v7 = (this + 8);
      v8 = *(this + 1);
      v9 = 21540;
    }

    *(v6 + v8) = v9;
  }

  *v7 += v5;
LABEL_9:
  v11 = v3[4];
  if (v11)
  {
    v12 = 0;
    v13 = (v11 - 1);
    do
    {
      v17[v12-- + 20] = (v13 % 0xA) | 0x30;
      v14 = v13 >= 9;
      v15 = v13 == 9;
      v13 /= 0xAuLL;
    }

    while (!v15 && v14);
    result = memcpy((*this + *(this + 1)), &v17[v12 + 21], -v12);
    *(this + 1) -= v12;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void *anonymous namespace::itanium_demangle::TypeTemplateParamDecl::printLeft(int a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *v4 = *"typename ";
  *(v4 + 8) = 32;
  *(this + 1) += 9;
  return result;
}

void *anonymous namespace::itanium_demangle::ConstrainedTypeTemplateParamDecl::printLeft(uint64_t a1, void *a2)
{
  *(*a2 + a2[1]++) = 32;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::NonTypeTemplateParamDecl::printLeft(uint64_t a1, void *a2)
{
  (*(**(a1 + 24) + 32))(*(a1 + 24));
  result = *(a1 + 24);
  v5 = *(result + 9);
  if ((v5 & 0xC0) != 0x80)
  {
    if (v5 < 0x40)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = (**result)(result, a2);
  if ((result & 1) == 0)
  {
LABEL_5:
    *(*a2 + a2[1]++) = 32;
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::NonTypeTemplateParamDecl::printRight(uint64_t a1, uint64_t a2)
{
  v3 = *(**(a1 + 24) + 40);

  return v3();
}

void *anonymous namespace::itanium_demangle::TemplateTemplateParamDecl::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *(this + 8);
  *(this + 8) = 0;
  v5 = *this + *(this + 1);
  *v5 = *"template<";
  *(v5 + 8) = 60;
  *(this + 1) += 9;
  v7 = *this + *(this + 1);
  *v7 = *"> typename ";
  *(v7 + 7) = 543518049;
  *(this + 1) += 11;
  *(this + 8) = v4;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::TemplateTemplateParamDecl::printRight(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v5 = *a2 + a2[1];
    *v5 = *" requires ";
    *(v5 + 8) = 8307;
    a2[1] += 10;
    v6 = *(a1 + 40);
  }

  return result;
}

void *anonymous namespace::itanium_demangle::TemplateParamPackDecl::printLeft(uint64_t a1, void *a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  v4 = *a2 + a2[1];
  *(v4 + 2) = 46;
  *v4 = 11822;
  a2[1] += 3;
  return result;
}

void *anonymous namespace::itanium_demangle::ClosureTypeName::printLeft(void *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = (*this + *(this + 1));
  *(v4 + 3) = 1633968749;
  *v4 = 1835101223;
  *(this + 1) += 7;
  v5 = a1[9];
  if (v5)
  {
    v6 = a1[8];
    memcpy((*this + *(this + 1)), v6, v5);
    *(this + 1) += v5;
  }

  *(*this + (*(this + 1))++) = 39;
}

void *anonymous namespace::itanium_demangle::ClosureTypeName::printDeclarator(void *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if (a1[3])
  {
    v4 = *(this + 8);
    *(this + 8) = 0;
    *(*this + (*(this + 1))++) = 60;
    *(*this + (*(this + 1))++) = 62;
    *(this + 8) = v4;
  }

  if (a1[4])
  {
    v5 = *this + *(this + 1);
    *v5 = *" requires ";
    *(v5 + 8) = 8307;
    *(this + 1) += 10;
    *(*this + (*(this + 1))++) = 32;
  }

  ++*(this + 8);
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 40;
  --*(this + 8);
  v9 = *this;
  v10 = *(this + 1);
  *(this + 1) = v10 + 1;
  *(v9 + v10) = 41;
  if (a1[7])
  {
    v11 = *this + *(this + 1);
    *v11 = *" requires ";
    *(v11 + 8) = 8307;
    *(this + 1) += 10;
    v12 = a1[7];
  }

  return result;
}

void *anonymous namespace::itanium_demangle::LambdaExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + *(this + 1)) = 23899;
  *(this + 1) += 2;
  v4 = *(a1 + 16);
  if (*(v4 + 8) == 52)
  {
  }

  v6 = *this + *(this + 1);
  *(v6 + 4) = 125;
  *v6 = 774778491;
  *(this + 1) += 5;
  return result;
}

void *anonymous namespace::itanium_demangle::EnumLiteral::printLeft(uint64_t *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  ++*(this + 8);
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 40;
  --*(this + 8);
  v7 = *this;
  v8 = *(this + 1);
  *(this + 1) = v8 + 1;
  *(v7 + v8) = 41;
  v9 = a1[3];
  if (*v9 == 110)
  {
    v10 = *this;
    v11 = *(this + 1);
    *(this + 1) = v11 + 1;
    *(v10 + v11) = 45;
    v12 = a1[4];
    v13 = v12 - 1;
    if (v12 == 1)
    {
      return result;
    }

    v14 = a1[3];
    v15 = (*this + *(this + 1));
    v16 = (v14 + 1);
  }

  else
  {
    v13 = a1[4];
    if (!v13)
    {
      return result;
    }

    v15 = (*this + *(this + 1));
    v16 = v9;
  }

  result = memcpy(v15, v16, v13);
  *(this + 1) += v13;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::FunctionParam,std::string_view &>(uint64_t a1, __n128 *a2)
{
  *(v3 + 8) = 67;
  v4 = *(v3 + 9) & 0xF000 | 0x540;
  *v3 = off_1EEEA6B98;
  result = *a2;
  *(v3 + 9) = v4;
  *(v3 + 1) = result;
  return result;
}

void *anonymous namespace::itanium_demangle::FunctionParam::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + *(this + 1)) = 28774;
  *(this + 1) += 2;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    result = memcpy((*this + *(this + 1)), v6, v5);
    *(this + 1) += v5;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::FoldExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  ++*(this + 8);
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 40;
  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    ++*(this + 8);
    v7 = *this;
    v8 = *(this + 1);
    *(this + 1) = v8 + 1;
    *(v7 + v8) = 40;
    v9 = *(a1 + 16);
    v26 = 42;
    v27 = 1344;
    v25 = off_1EEEA6C88;
    v28 = v9;
    --*(this + 8);
    v10 = *this;
    v11 = *(this + 1);
    *(this + 1) = v11 + 1;
    *(v10 + v11) = 41;
  }

  *(*this + (*(this + 1))++) = 32;
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(a1 + 32);
    memcpy((*this + *(this + 1)), v13, v12);
    *(this + 1) += v12;
  }

  *(*this + (*(this + 1))++) = 32;
LABEL_8:
  v14 = *this + *(this + 1);
  *(v14 + 2) = 46;
  *v14 = 11822;
  *(this + 1) += 3;
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 24))
  {
    *(*this + (*(this + 1))++) = 32;
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = *(a1 + 32);
      memcpy((*this + *(this + 1)), v16, v15);
      *(this + 1) += v15;
    }

    *(*this + (*(this + 1))++) = 32;
    if (*(a1 + 48) == 1)
    {
      ++*(this + 8);
      v17 = *this;
      v18 = *(this + 1);
      *(this + 1) = v18 + 1;
      *(v17 + v18) = 40;
      v19 = *(a1 + 16);
      v26 = 42;
      v27 = 1344;
      v25 = off_1EEEA6C88;
      v28 = v19;
      --*(this + 8);
      v20 = *this;
      v21 = *(this + 1);
      *(this + 1) = v21 + 1;
      *(v20 + v21) = 41;
    }

    else
    {
    }
  }

  --*(this + 8);
  v23 = *this;
  v24 = *(this + 1);
  *(this + 1) = v24 + 1;
  *(v23 + v24) = 41;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::ParameterPackExpansion::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 28);
  *(a2 + 24) = -1;
  v6 = *(a2 + 8);
  v8 = *(a2 + 28);
  if (v8 == -1)
  {
    v10 = *a2 + *(a2 + 8);
    *(v10 + 2) = 46;
    *v10 = 11822;
    v6 = *(a2 + 8) + 3;
    goto LABEL_8;
  }

  if (!v8)
  {
LABEL_8:
    *(a2 + 8) = v6;
    goto LABEL_9;
  }

  if (v8 >= 2)
  {
    for (i = 1; i != v8; ++i)
    {
      *(*a2 + *(a2 + 8)) = 8236;
      *(a2 + 8) += 2;
      *(a2 + 24) = i;
    }
  }

LABEL_9:
  *(a2 + 24) = v4;
  *(a2 + 28) = v5;
  return result;
}

void sub_1801C1520(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  *(v1 + 28) = v3;
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::itanium_demangle::BracedExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *(a1 + 32);
  v5 = *this;
  v6 = *(this + 1);
  *(this + 1) = v6 + 1;
  if (v4 == 1)
  {
    *(v5 + v6) = 91;
    v7 = *this;
    v8 = *(this + 1);
    *(this + 1) = v8 + 1;
    *(v7 + v8) = 93;
  }

  else
  {
    *(v5 + v6) = 46;
  }

  v9 = *(a1 + 24);
  if (*(v9 + 8) - 81 >= 2)
  {
    v10 = *this + *(this + 1);
    *(v10 + 2) = 32;
    *v10 = 15648;
    *(this + 1) += 3;
    v9 = *(a1 + 24);
  }
}

uint64_t anonymous namespace::itanium_demangle::BracedRangeExpr::printLeft(uint64_t *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 91;
  v6 = *this + *(this + 1);
  *(v6 + 4) = 32;
  *v6 = 774778400;
  *(this + 1) += 5;
  v7 = *this;
  v8 = *(this + 1);
  *(this + 1) = v8 + 1;
  *(v7 + v8) = 93;
  v9 = a1[4];
  if (*(v9 + 8) - 81 >= 2)
  {
    v10 = *this + *(this + 1);
    *(v10 + 2) = 32;
    *v10 = 15648;
    *(this + 1) += 3;
    v9 = a1[4];
  }
}

uint64_t anonymous namespace::itanium_demangle::InitListExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    result = (*(*v4 + 48))(v4, this, a1 + 24);
    if (result)
    {
      return result;
    }
  }

  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 123;
  v8 = *this;
  v9 = *(this + 1);
  *(this + 1) = v9 + 1;
  *(v8 + v9) = 125;
  return result;
}

void *anonymous namespace::itanium_demangle::PointerToMemberConversionExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  ++*(this + 8);
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 40;
  --*(this + 8);
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 41;
  ++*(this + 8);
  v8 = *this;
  v9 = *(this + 1);
  *(this + 1) = v9 + 1;
  *(v8 + v9) = 40;
  --*(this + 8);
  v11 = *this;
  v12 = *(this + 1);
  *(this + 1) = v12 + 1;
  *(v11 + v12) = 41;
  return result;
}

void *anonymous namespace::itanium_demangle::ExprRequirement::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + (*(this + 1))++) = 32;
  if ((*(a1 + 24) & 1) != 0 || *(a1 + 32))
  {
    ++*(this + 8);
    v4 = *this;
    v5 = *(this + 1);
    *(this + 1) = v5 + 1;
    *(v4 + v5) = 123;
  }

  if ((*(a1 + 24) & 1) != 0 || *(a1 + 32))
  {
    --*(this + 8);
    v6 = *this;
    v7 = *(this + 1);
    *(this + 1) = v7 + 1;
    *(v6 + v7) = 125;
    if (*(a1 + 24))
    {
      v8 = *this + *(this + 1);
      *v8 = *" noexcept";
      *(v8 + 8) = 116;
      *(this + 1) += 9;
    }
  }

  if (*(a1 + 32))
  {
    *(*this + *(this + 1)) = 540945696;
    *(this + 1) += 4;
  }

  v10 = *this;
  v11 = *(this + 1);
  *(this + 1) = v11 + 1;
  *(v10 + v11) = 59;
  return result;
}

void *anonymous namespace::itanium_demangle::TypeRequirement::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *v4 = *" typename ";
  *(v4 + 8) = 8293;
  *(this + 1) += 10;
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 59;
  return result;
}

void *anonymous namespace::itanium_demangle::NestedRequirement::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *v4 = *" requires ";
  *(v4 + 8) = 8307;
  *(this + 1) += 10;
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 59;
  return result;
}

void *anonymous namespace::itanium_demangle::RequiresExpr::printLeft(void *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + *(this + 1)) = 0x7365726975716572;
  *(this + 1) += 8;
  if (a1[3])
  {
    v4 = *this;
    v5 = *(this + 1);
    *(this + 1) = v5 + 1;
    *(v4 + v5) = 32;
    ++*(this + 8);
    v6 = *this;
    v7 = *(this + 1);
    *(this + 1) = v7 + 1;
    *(v6 + v7) = 40;
    --*(this + 8);
    v8 = *this;
    v9 = *(this + 1);
    *(this + 1) = v9 + 1;
    *(v8 + v9) = 41;
  }

  v10 = *this;
  v11 = *(this + 1);
  *(this + 1) = v11 + 1;
  *(v10 + v11) = 32;
  ++*(this + 8);
  v12 = *this;
  v13 = *(this + 1);
  *(this + 1) = v13 + 1;
  *(v12 + v13) = 123;
  v14 = a1[5];
  if (v14)
  {
    v15 = a1[4];
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      v16 -= 8;
    }

    while (v16);
  }

  v18 = *this;
  v19 = *(this + 1);
  *(this + 1) = v19 + 1;
  *(v18 + v19) = 32;
  --*(this + 8);
  v21 = *this;
  v22 = *(this + 1);
  *(this + 1) = v22 + 1;
  *(v21 + v22) = 125;
  return result;
}

void *anonymous namespace::itanium_demangle::SubobjectExpr::printLeft(uint64_t *a1, void *a2)
{
  *(*a2 + a2[1]) = 15406;
  a2[1] += 2;
  v4 = *a2 + a2[1];
  *v4 = *" at offset ";
  *(v4 + 7) = 544499059;
  a2[1] += 11;
  v5 = a1[5];
  if (!v5)
  {
    v5 = 1;
    *(*a2 + a2[1]) = 48;
LABEL_8:
    a2[1] += v5;
    goto LABEL_9;
  }

  v6 = a1[4];
  if (*v6 != 110)
  {
    v9 = (*a2 + a2[1]);
    v10 = v6;
    goto LABEL_7;
  }

  *(*a2 + a2[1]++) = 45;
  v7 = a1[5];
  v5 = v7 - 1;
  if (v7 != 1)
  {
    v8 = a1[4];
    v9 = (*a2 + a2[1]);
    v10 = (v8 + 1);
LABEL_7:
    memcpy(v9, v10, v5);
    goto LABEL_8;
  }

LABEL_9:
  *(*a2 + a2[1]++) = 62;
  return result;
}

void *anonymous namespace::itanium_demangle::SizeofParamPackExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *v4 = *"sizeof...";
  *(v4 + 8) = 46;
  *(this + 1) += 9;
  ++*(this + 8);
  v5 = *this;
  v6 = *(this + 1);
  *(this + 1) = v6 + 1;
  *(v5 + v6) = 40;
  v7 = *(a1 + 16);
  v12 = 42;
  v13 = 1344;
  v11 = off_1EEEA6C88;
  v14 = v7;
  --*(this + 8);
  v9 = *this;
  v10 = *(this + 1);
  *(this + 1) = v10 + 1;
  *(v9 + v10) = 41;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::ThrowExpr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *(v4 + 4) = 8311;
  *v4 = 1869768820;
  *(this + 1) += 6;
  v5 = *(a1 + 16);
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnresolvedType(const void **a1)
{
  if (a1[1] != *a1)
  {
    v2 = **a1;
    if (v2 == 68)
    {
      goto LABEL_9;
    }

    if (v2 == 84)
    {
LABEL_9:
      v5 = v3;
      v6 = v3;
      if (v3)
      {
      }

      return v5;
    }
  }
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSimpleId(void *a1)
{
  if (v8 && a1[1] != *a1 && **a1 == 73)
  {
    if (v9)
    {
      v10 = v9;
      *(v11 + 8) = 45;
      *(v11 + 9) = *(v11 + 9) & 0xF000 | 0x540;
      *v11 = off_1EEEA7A20;
      v11[2] = v8;
      v11[3] = v10;
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseBaseUnresolvedName(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
    if (v4 < 0)
    {
LABEL_6:
      if ((v3 - *a1) < 2)
      {
        goto LABEL_10;
      }

      if (*v2 != 28260)
      {
        if (*v2 == 28271)
        {
          *a1 = v2 + 2;
        }

LABEL_10:
        if (!v11 || a1[1] == *a1 || **a1 != 73)
        {
          return v11;
        }

        if (v12)
        {
          v13 = v12;
          *(v14 + 8) = 45;
          *(v14 + 9) = *(v14 + 9) & 0xF000 | 0x540;
          *v14 = off_1EEEA7A20;
          v14[2] = v11;
          v14[3] = v13;
          return v14;
        }

        return 0;
      }

      v16 = v2 + 2;
      *a1 = v16;
      if (v3 == v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v16;
        if (v17 < 0)
        {
          goto LABEL_23;
        }
      }

      if ((*(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x400) != 0)
      {
LABEL_25:
        v19 = v18;
        if (v18)
        {
          *(v11 + 8) = 50;
          *(v11 + 9) = *(v11 + 9) & 0xF000 | 0x540;
          *v11 = off_1EEEA7318;
          v11[2] = v19;
          return v11;
        }

        return 0;
      }

LABEL_23:
      goto LABEL_25;
    }
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x400) == 0)
  {
    goto LABEL_6;
  }
}

uint64_t anonymous namespace::itanium_demangle::QualifiedName::printLeft(uint64_t a1, void *a2)
{
  *(*a2 + a2[1]) = 14906;
  a2[1] += 2;
  v4 = *(a1 + 24);
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseOperatorName(uint64_t a1, _BYTE *a2)
{
  if (v4)
  {
    v5 = v4[2];
    if (v5 == 8)
    {
      v6 = *(a1 + 776);
      *(a1 + 776) = 0;
      v7 = *(a1 + 777);
      if (a2)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(a1 + 777);
      }

      *(a1 + 777) = v8;
      if (v9)
      {
        if (a2)
        {
          *a2 = 1;
        }

        *(result + 8) = 4;
        *(result + 9) = *(result + 9) & 0xF000 | 0x540;
        *result = off_1EEEA7390;
        result[2] = v9;
      }

      else
      {
        result = 0;
      }

      *(a1 + 777) = v7;
      *(a1 + 776) = v6;
      return result;
    }

    if (v5 <= 0xA && (v5 != 4 || (v4[3] & 1) != 0))
    {
      v13 = *(v4 + 1);
      v14 = strlen(v13);
      *(result + 8) = 8;
      *(result + 9) = *(result + 9) & 0xF000 | 0x540;
      *result = off_1EEEA5D10;
      result[2] = v13;
      result[3] = v14;
      return result;
    }

    return 0;
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  if (&v12[-*a1] >= 2 && *v11 == 26988)
  {
    *a1 = v11 + 2;
    if (result)
    {
      v15 = result;
      *(result + 8) = 20;
      *(result + 9) = *(result + 9) & 0xF000 | 0x540;
      *result = off_1EEEA7408;
      result[2] = v15;
    }
  }

  else
  {
    if (v11 == v12)
    {
      return 0;
    }

    if (*v11 != 118)
    {
      return 0;
    }

    *a1 = v11 + 1;
    if (v12 == v11 + 1 || v11[1] - 48 > 9)
    {
      return 0;
    }

    *a1 = v11 + 2;
    v16 = result;
    if (result)
    {
    }
  }

  return result;
}

void sub_1801C267C(_Unwind_Exception *a1)
{
  *(v1 + 777) = v3;
  *(v1 + 776) = v2;
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::itanium_demangle::DtorName::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + (*(this + 1))++) = 126;
  v4 = *(**(a1 + 16) + 32);

  return v4();
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ConversionOperatorType,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 4;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA7390;
  result[2] = v4;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::ConversionOperatorType::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *v4 = *"operator ";
  *(v4 + 8) = 32;
  *(this + 1) += 9;
  v5 = *(a1 + 16);
}

uint64_t anonymous namespace::itanium_demangle::LiteralOperator::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *v4 = *"operator ";
  *(v4 + 7) = 539107954;
  *(this + 1) += 11;
  v5 = *(a1 + 16);
}

uint64_t anonymous namespace::itanium_demangle::GlobalQualifiedName::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + *(this + 1)) = 14906;
  *(this + 1) += 2;
  v4 = *(a1 + 16);
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseAbiTags(void *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != a1[1])
  {
    while (*v3 == 66)
    {
      *a1 = v3 + 1;
      if (!v6)
      {
        return 0;
      }

      v7 = v5;
      v8 = v6;
      v10 = *(a2 + 9);
      *(result + 8) = 9;
      *(result + 9) = *(result + 9) & 0xF000 | v10 & 0xFC0;
      *result = off_1EEEA75E8;
      result[2] = a2;
      result[3] = v7;
      result[4] = v8;
      v3 = *a1;
      a2 = result;
      if (*a1 == a1[1])
      {
        return result;
      }
    }
  }

  return a2;
}

void *anonymous namespace::itanium_demangle::SpecialSubstitution::printLeft(_anonymous_namespace_::itanium_demangle::SpecialSubstitution *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *(v4 + 4) = 58;
  *v4 = 979661939;
  *(this + 1) += 5;
  if (v6)
  {
    v7 = result;
    v8 = v6;
    result = memcpy((*this + *(this + 1)), v7, v8);
    *(this + 1) += v8;
  }

  return result;
}

char *anonymous namespace::itanium_demangle::SpecialSubstitution::getBaseName(_anonymous_namespace_::itanium_demangle::SpecialSubstitution *this)
{
  if (*(this + 3) >= 2u)
  {
    v10 = v3 >= 6;
    v11 = v3 - 6;
    if (!v10 || (*result == 1769169250 ? (v12 = *(result + 2) == 24419) : (v12 = 0), !v12))
    {
      __abort_message("%s:%d: %s", v11, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/demangle/ItaniumDemangle.h");
    }

    result += 6;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::ExpandedSpecialSubstitution::printLeft(_DWORD *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *(v4 + 4) = 58;
  *v4 = 979661939;
  *(this + 1) += 5;
  result = (*(*a1 + 56))(a1);
  if (v6)
  {
    v7 = result;
    v8 = v6;
    result = memcpy((*this + *(this + 1)), v7, v8);
    *(this + 1) += v8;
  }

  if (a1[3] >= 2u)
  {
    qmemcpy((*this + *(this + 1)), "<char, std::char_traits<char>", 29);
    *(this + 1) += 29;
    if (a1[3] == 2)
    {
      qmemcpy((*this + *(this + 1)), ", std::allocator<char>", 22);
      *(this + 1) += 22;
    }

    *(*this + (*(this + 1))++) = 62;
  }

  return result;
}

char *anonymous namespace::itanium_demangle::ExpandedSpecialSubstitution::getBaseName(_anonymous_namespace_::itanium_demangle::ExpandedSpecialSubstitution *this)
{
  v1 = *(this + 3);
  v2 = *&asc_1801CE8C8[8 * v1];
  return (&off_1E69EAFF8)[v1];
}

unsigned __int8 *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseBareSourceName(uint64_t a1)
{
  v3 = 0;
  {
    return 0;
  }

  result = *a1;
  if (*(a1 + 8) - *a1 < v3)
  {
    return 0;
  }

  *a1 = &result[v3];
  return result;
}

void *anonymous namespace::itanium_demangle::AbiTagAttr::printLeft(uint64_t a1, void *a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  v4 = *a2 + a2[1];
  *(v4 + 4) = 58;
  *v4 = 1768055131;
  a2[1] += 5;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    memcpy((*a2 + a2[1]), v6, v5);
    a2[1] += v5;
  }

  *(*a2 + a2[1]++) = 93;
  return result;
}

void *anonymous namespace::itanium_demangle::StructuredBindingName::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  ++*(this + 8);
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 91;
  --*(this + 8);
  v7 = *this;
  v8 = *(this + 1);
  *(this + 1) = v8 + 1;
  *(v7 + v8) = 93;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ExpandedSpecialSubstitution,anonymous namespace::itanium_demangle::SpecialSubstitution *>(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 12);
  *(result + 8) = 47;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA7588;
  *(result + 3) = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::CtorDtorName,anonymous namespace::itanium_demangle::Node *&,BOOL,int &>(uint64_t a1, uint64_t *a2, char *a3, int *a4)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  *(result + 8) = 49;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA76D8;
  result[2] = v8;
  *(result + 24) = v9;
  *(result + 7) = v10;
  return result;
}

void *anonymous namespace::itanium_demangle::CtorDtorName::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if (*(a1 + 24) == 1)
  {
    *(*this + (*(this + 1))++) = 126;
  }

  result = (*(**(a1 + 16) + 56))(*(a1 + 16));
  if (v5)
  {
    v6 = result;
    v7 = v5;
    result = memcpy((*this + *(this + 1)), v6, v7);
    *(this + 1) += v7;
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::ModuleEntity::printLeft(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  a2[1] = v5 + 1;
  *(v4 + v5) = 64;
  v6 = *(a1 + 16);
}

uint64_t anonymous namespace::itanium_demangle::MemberLikeFriendName::printLeft(uint64_t a1, void *a2)
{
  v4 = *a2 + a2[1];
  *v4 = *"::friend ";
  *(v4 + 8) = 32;
  a2[1] += 9;
  v5 = *(a1 + 24);
}

uint64_t anonymous namespace::itanium_demangle::NestedName::printLeft(uint64_t a1, void *a2)
{
  *(*a2 + a2[1]) = 14906;
  a2[1] += 2;
  v4 = *(a1 + 24);
}

const char *anonymous namespace::itanium_demangle::parse_discriminator(const char *this, const char *a2, const char *a3)
{
  if (this != a2)
  {
    v3 = *this;
    if (v3 == 95)
    {
      if (this + 1 != a2)
      {
        v4 = this[1];
        if ((v4 & 0x8000000000000000) == 0)
        {
          if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x400) != 0)
          {
            this += 2;
          }

          else if (v4 == 95)
          {
            for (i = this + 2; i != a2; ++i)
            {
              v6 = *i;
              if (v6 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
              {
                if (v6 == 95)
                {
                  return i + 1;
                }

                return this;
              }
            }
          }
        }
      }
    }

    else if ((v3 & 0x80) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x400) != 0)
    {
      v7 = this + 1;
      while (v7 != a2)
      {
        v8 = *v7;
        if ((v8 & 0x8000000000000000) == 0)
        {
          ++v7;
          if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x400) != 0)
          {
            continue;
          }
        }

        return this;
      }

      return a2;
    }
  }

  return this;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::LocalName,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  *(result + 8) = 26;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA78B8;
  result[2] = v6;
  result[3] = v7;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::LocalName::printLeft(uint64_t a1, void *a2)
{
  *(*a2 + a2[1]) = 14906;
  a2[1] += 2;
  v4 = *(a1 + 24);
}

uint64_t anonymous namespace::itanium_demangle::ParameterPack::hasRHSComponentSlow(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) == -1)
  {
    v2 = 0;
    v3 = *(a1 + 24);
    *(a2 + 24) = 0;
    *(a2 + 28) = v3;
  }

  else
  {
    v2 = *(a2 + 24);
    v3 = *(a1 + 24);
  }

  if (v3 <= v2)
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + 8 * v2);
  v5 = *(v4 + 9);
  if ((v5 & 0xC0) == 0x80)
  {
    return (**v4)(v4);
  }

  else
  {
    return v5 < 0x40;
  }
}

uint64_t anonymous namespace::itanium_demangle::ParameterPack::hasArraySlow(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) == -1)
  {
    v2 = 0;
    v3 = *(a1 + 24);
    *(a2 + 24) = 0;
    *(a2 + 28) = v3;
  }

  else
  {
    v2 = *(a2 + 24);
    v3 = *(a1 + 24);
  }

  if (v3 <= v2)
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + 8 * v2);
  v5 = v4[10] & 3;
  if (v5 == 2)
  {
    return (*(*v4 + 8))();
  }

  else
  {
    return v5 == 0;
  }
}

uint64_t anonymous namespace::itanium_demangle::ParameterPack::hasFunctionSlow(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) == -1)
  {
    v2 = 0;
    v3 = *(a1 + 24);
    *(a2 + 24) = 0;
    *(a2 + 28) = v3;
  }

  else
  {
    v2 = *(a2 + 24);
    v3 = *(a1 + 24);
  }

  if (v3 <= v2)
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + 8 * v2);
  v5 = (*(v4 + 9) >> 10) & 3;
  if (v5 == 2)
  {
    return (*(*v4 + 16))();
  }

  else
  {
    return v5 == 0;
  }
}

uint64_t anonymous namespace::itanium_demangle::ParameterPack::getSyntaxNode(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) == -1)
  {
    v2 = 0;
    v3 = *(result + 24);
    *(a2 + 24) = 0;
    *(a2 + 28) = v3;
  }

  else
  {
    v2 = *(a2 + 24);
    v3 = *(result + 24);
  }

  if (v3 > v2)
  {
    return (*(**(*(result + 16) + 8 * v2) + 24))();
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::ParameterPack::printLeft(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) == -1)
  {
    v2 = 0;
    v3 = *(result + 24);
    *(a2 + 24) = 0;
    *(a2 + 28) = v3;
  }

  else
  {
    v2 = *(a2 + 24);
    v3 = *(result + 24);
  }

  if (v3 > v2)
  {
    return (*(**(*(result + 16) + 8 * v2) + 32))();
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::ParameterPack::printRight(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) == -1)
  {
    v2 = 0;
    v3 = *(result + 24);
    *(a2 + 24) = 0;
    *(a2 + 28) = v3;
  }

  else
  {
    v2 = *(a2 + 24);
    v3 = *(result + 24);
  }

  if (v3 > v2)
  {
    return (*(**(*(result + 16) + 8 * v2) + 40))();
  }

  return result;
}

void *anonymous namespace::itanium_demangle::TemplateArgs::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *(this + 8);
  *(this + 8) = 0;
  *(*this + (*(this + 1))++) = 60;
  *(*this + (*(this + 1))++) = 62;
  *(this + 8) = v4;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::NameWithTemplateArgs::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
}

void *anonymous namespace::itanium_demangle::EnableIfAttr::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *v4 = *" [enable_if:";
  *(v4 + 8) = 979790175;
  *(this + 1) += 12;
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 93;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::ExplicitObjectParameter::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *(v4 + 4) = 32;
  *v4 = 1936287860;
  *(this + 1) += 5;
  v5 = *(a1 + 16);
}

uint64_t anonymous namespace::itanium_demangle::FunctionEncoding::printLeft(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
    v5 = *(a1 + 16);
    v6 = *(v5 + 9);
    if ((v6 & 0xC0) == 0x80)
    {
      if ((**v5)(v5, a2))
      {
        goto LABEL_7;
      }
    }

    else if (v6 < 0x40)
    {
      goto LABEL_7;
    }

    *(*a2 + a2[1]++) = 32;
  }

LABEL_7:
  v7 = *(a1 + 24);
}

uint64_t anonymous namespace::itanium_demangle::FunctionEncoding::printRight(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  ++*(this + 8);
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 40;
  --*(this + 8);
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 41;
  v8 = *(a1 + 16);
  if (v8)
  {
    (*(*v8 + 40))(v8, this);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v13 = *this + *(this + 1);
    *(v13 + 4) = 29811;
    *v13 = 1852793632;
    *(this + 1) += 6;
    v9 = *(a1 + 64);
    if ((v9 & 2) == 0)
    {
LABEL_5:
      if ((v9 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_5;
  }

  v14 = *this + *(this + 1);
  *v14 = *" volatile";
  *(v14 + 8) = 101;
  *(this + 1) += 9;
  if ((*(a1 + 64) & 4) != 0)
  {
LABEL_6:
    v10 = *this + *(this + 1);
    *v10 = *" restrict";
    *(v10 + 8) = 116;
    *(this + 1) += 9;
  }

LABEL_7:
  v11 = *(a1 + 68);
  if (v11 == 2)
  {
    v12 = 3;
    v15 = *this + *(this + 1);
    *(v15 + 2) = 38;
    *v15 = 9760;
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_15;
    }

    v12 = 2;
    *(*this + *(this + 1)) = 9760;
  }

  *(this + 1) += v12;
LABEL_15:
  result = *(a1 + 48);
  if (result)
  {
  }

  if (*(a1 + 56))
  {
    v17 = *this + *(this + 1);
    *v17 = *" requires ";
    *(v17 + 8) = 8307;
    *(this + 1) += 10;
    v18 = *(a1 + 56);
  }

  return result;
}

void *anonymous namespace::itanium_demangle::DotSuffix::printLeft(uint64_t *a1, void *a2)
{
  *(*a2 + a2[1]) = 10272;
  a2[1] += 2;
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[3];
    memcpy((*a2 + a2[1]), v5, v4);
    a2[1] += v4;
  }

  *(*a2 + a2[1]++) = 41;
  return result;
}

void anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseFunctionType(uint64_t a1)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  if (&v9[-*a1] < 2)
  {
LABEL_2:
    v11 = 0;
    goto LABEL_12;
  }

  if (*v10 != 28484)
  {
    if (*v10 == 20292)
    {
      *a1 = v10 + 1;
      if (!v29)
      {
        return;
      }

      v30 = *a1;
      if (*a1 == *(a1 + 8) || *v30 != 69)
      {
        return;
      }

      v31 = v29;
      *a1 = v30 + 1;
      *(v11 + 8) = 17;
      *(v11 + 9) = *(v11 + 9) & 0xF000 | 0x540;
      *v11 = off_1EEEA7D68;
      v11[2] = v31;
      goto LABEL_12;
    }

    if (*v10 == 30532)
    {
      v12 = v10 + 1;
      *a1 = v12;
      v13 = (*(a1 + 24) - *(a1 + 16)) >> 3;
      while (v12 == v9 || *v12 != 69)
      {
        if (!v40)
        {
          return;
        }

        v12 = *a1;
        v9 = *(a1 + 8);
      }

      *a1 = v12 + 1;
      v39 = v38;
      *(v11 + 8) = 18;
      *(v11 + 9) = *(v11 + 9) & 0xF000 | 0x540;
      *v11 = off_1EEEA7DE0;
      v11[2] = v37;
      v11[3] = v39;
      goto LABEL_12;
    }

    goto LABEL_2;
  }

  *a1 = v10 + 1;
LABEL_12:
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v15 - *a1 >= 2 && *v14 == 30788)
  {
    *a1 = ++v14;
  }

  if (v14 == v15 || *v14 != 70)
  {
    return;
  }

  *a1 = v14 + 1;
  if ((v14 + 1) != v15 && *(v14 + 1) == 89)
  {
    *a1 = v14 + 1;
  }

  if (!v16)
  {
    return;
  }

  v23 = v16;
  v24 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v25 = 1;
  while (1)
  {
    while (1)
    {
      v26 = *a1;
      v27 = *(a1 + 8);
      if (*a1 != v27)
      {
        break;
      }

LABEL_25:
      if ((v27 - v26) >= 2)
      {
        if (*v26 == 17746)
        {
          v32 = 1;
          v25 = 2;
          goto LABEL_39;
        }

        if (*v26 == 17743)
        {
          v25 = 2;
          v32 = 2;
          goto LABEL_39;
        }
      }

      if (!v40)
      {
        return;
      }
    }

    v28 = *v26;
    if (v28 != 118)
    {
      break;
    }

    *a1 = v26 + 1;
  }

  if (v28 != 69)
  {
    goto LABEL_25;
  }

  v32 = 0;
LABEL_39:
  *a1 = v26 + v25;
  v35 = v34;
  *(v36 + 8) = 16;
  *(v36 + 9) = *(v36 + 9) & 0xF000 | 0x100;
  *v36 = off_1EEEA7E58;
  v36[2] = v23;
  v36[3] = v33;
  v36[4] = v35;
  *(v36 + 10) = v8;
  *(v36 + 44) = v32;
  v36[6] = v11;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseQualifiedType(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1] || *v2 != 85)
  {
    if (v17 && v16)
    {
      v19 = *(v17 + 9);
      *(v18 + 8) = 3;
      *(v18 + 9) = *(v18 + 9) & 0xF000 | v19 & 0xFC0;
      *v18 = off_1EEEA7FC0;
      *(v18 + 3) = v16;
      v18[2] = v17;
      return v18;
    }
  }

  else
  {
    *a1 = v2 + 1;
    if (!v4)
    {
      return 0;
    }

    v11 = v3;
    v12 = v4;
    if (v4 < 9 || (*v3 == 0x746F7270636A626FLL ? (v13 = v3[8] == 111) : (v13 = 0), !v13))
    {
      if (a1[1] == *a1 || **a1 != 73)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
        if (!v14)
        {
          return 0;
        }
      }

      if (v20)
      {
        v21 = v20;
        *(v17 + 8) = 2;
        *(v17 + 9) = *(v17 + 9) & 0xF000 | 0x540;
        *v17 = off_1EEEA7F48;
        v17[2] = v21;
        v17[3] = v11;
        v17[4] = v12;
        v17[5] = v15;
        return v17;
      }

      return 0;
    }

    v29 = *a1;
    *a1 = v3 + 9;
    a1[1] = &v3[v4];
    *a1 = v29;
    if (!v23)
    {
      return 0;
    }

    v24 = v22;
    v25 = v23;
    if (!v26)
    {
      return 0;
    }

    v27 = v26;
    *(v17 + 8) = 11;
    *(v17 + 9) = *(v17 + 9) & 0xF000 | 0x540;
    *v17 = off_1EEEA7ED0;
    v17[2] = v27;
    v17[3] = v24;
    v17[4] = v25;
  }

  return v17;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::TransformedType,std::string_view &,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  v6 = *a3;
  *(v5 + 8) = 7;
  v7 = *(v5 + 9) & 0xF000 | 0x540;
  *v5 = off_1EEEA8038;
  result = *a2;
  *(v5 + 9) = v7;
  *(v5 + 1) = result;
  v5[4] = v6;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::BinaryFPType,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 31;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA80B0;
  result[2] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::BitIntType,anonymous namespace::itanium_demangle::Node *&,BOOL &>(uint64_t a1, uint64_t *a2, char *a3)
{
  v6 = *a2;
  v7 = *a3;
  *(result + 8) = 32;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA8128;
  result[2] = v6;
  *(result + 24) = v7;
  return result;
}

__n128 anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::PostfixQualifiedType,anonymous namespace::itanium_demangle::Node *&,std::string_view &>(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *a2;
  *(v5 + 8) = 5;
  v7 = *(v5 + 9) & 0xF000 | 0x540;
  *v5 = off_1EEEA81A0;
  result = *a3;
  *(v5 + 9) = v7;
  v5[2] = v6;
  *(v5 + 3) = result;
  return result;
}

void anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseVectorType(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (&v4[-*a1] < 2)
  {
    return;
  }

  v23[5] = v1;
  v23[6] = v2;
  if (*v3 != 30276)
  {
    return;
  }

  *a1 = v3 + 2;
  if (v4 == v3 + 2 || v3[2] < 49)
  {
    goto LABEL_15;
  }

  v6 = v3[2];
  if (v6 <= 0x39)
  {
    v9 = v8;
    *(v10 + 8) = 8;
    *(v10 + 9) = *(v10 + 9) & 0xF000 | 0x540;
    *v10 = off_1EEEA5D10;
    v10[2] = v7;
    v10[3] = v9;
    v23[0] = v10;
    v11 = *a1;
    v12 = *(a1 + 8);
    if (*a1 != v12 && *v11 == 95)
    {
      *a1 = v11 + 1;
      if (v11 + 1 == v12 || v11[1] != 112)
      {
        if (v22)
        {
        }
      }

      else
      {
        *a1 = v11 + 2;
      }
    }

    return;
  }

  if (v6 != 95)
  {
LABEL_15:
    if (v16)
    {
      v17 = *a1;
      if (*a1 != *(a1 + 8) && *v17 == 95)
      {
        v18 = v16;
        *a1 = v17 + 1;
        if (v19)
        {
          v20 = v19;
          *(v21 + 8) = 29;
          *(v21 + 9) = *(v21 + 9) & 0xF000 | 0x540;
          *v21 = off_1EEEA8290;
          v21[2] = v20;
          v21[3] = v18;
        }
      }
    }
  }

  else
  {
    *a1 = v3 + 3;
    if (v13)
    {
      v14 = v13;
      *(v15 + 8) = 29;
      *(v15 + 9) = *(v15 + 9) & 0xF000 | 0x540;
      *v15 = off_1EEEA8290;
      v15[2] = v14;
      v15[3] = 0;
    }
  }
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseClassEnumType(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (a1[1] - *a1 < 2uLL)
  {
LABEL_2:
  }

  switch(*v9)
  {
    case 0x7354:
      v11 = "struct";
      v12 = 6;
      break;
    case 0x7554:
      v11 = "union";
      v12 = 5;
      break;
    case 0x6554:
      v11 = "enum";
      v12 = 4;
      break;
    default:
      goto LABEL_2;
  }

  *a1 = v9 + 1;
  if (result)
  {
    v13 = result;
    *(result + 8) = 6;
    *(result + 9) = *(result + 9) & 0xF000 | 0x540;
    *result = off_1EEEA83F8;
    result[2] = v11;
    result[3] = v12;
    result[4] = v13;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::PointerType,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 9);
  *(result + 8) = 12;
  *(result + 9) = v5 & 0xC0 | *(result + 9) & 0xF000 | 0x500;
  *result = off_1EEEA8470;
  result[2] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ReferenceType,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::ReferenceKind>(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(*a2 + 9);
  *(result + 8) = 13;
  *(result + 9) = v8 & 0xC0 | *(result + 9) & 0xF000 | 0x500;
  *result = off_1EEEA84E8;
  result[2] = v6;
  *(result + 6) = v7;
  *(result + 28) = 0;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::PostfixQualifiedType,anonymous namespace::itanium_demangle::Node *&,char const(&)[9]>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 5;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA81A0;
  result[2] = v4;
  result[3] = " complex";
  result[4] = 8;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::PostfixQualifiedType,anonymous namespace::itanium_demangle::Node *&,char const(&)[11]>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 5;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA81A0;
  result[2] = v4;
  result[3] = " imaginary";
  result[4] = 10;
  return result;
}

void *anonymous namespace::itanium_demangle::NoexceptSpec::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  *(*this + *(this + 1)) = 0x7470656378656F6ELL;
  *(this + 1) += 8;
  ++*(this + 8);
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 40;
  --*(this + 8);
  v7 = *this;
  v8 = *(this + 1);
  *(this + 1) = v8 + 1;
  *(v7 + v8) = 41;
  return result;
}

void *anonymous namespace::itanium_demangle::DynamicExceptionSpec::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *(v4 + 4) = 119;
  *v4 = 1869768820;
  *(this + 1) += 5;
  ++*(this + 8);
  v5 = *this;
  v6 = *(this + 1);
  *(this + 1) = v6 + 1;
  *(v5 + v6) = 40;
  --*(this + 8);
  v8 = *this;
  v9 = *(this + 1);
  *(this + 1) = v9 + 1;
  *(v8 + v9) = 41;
  return result;
}

void *anonymous namespace::itanium_demangle::FunctionType::printLeft(uint64_t a1, void *a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  *(*a2 + a2[1]++) = 32;
  return result;
}

void *anonymous namespace::itanium_demangle::FunctionType::printRight(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  ++*(this + 8);
  v4 = *this;
  v5 = *(this + 1);
  *(this + 1) = v5 + 1;
  *(v4 + v5) = 40;
  --*(this + 8);
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 41;
  result = (*(**(a1 + 16) + 40))(*(a1 + 16), this);
  v9 = *(a1 + 40);
  if (v9)
  {
    v13 = *this + *(this + 1);
    *(v13 + 4) = 29811;
    *v13 = 1852793632;
    *(this + 1) += 6;
    v9 = *(a1 + 40);
    if ((v9 & 2) == 0)
    {
LABEL_3:
      if ((v9 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *this + *(this + 1);
  *v14 = *" volatile";
  *(v14 + 8) = 101;
  *(this + 1) += 9;
  if ((*(a1 + 40) & 4) != 0)
  {
LABEL_4:
    v10 = *this + *(this + 1);
    *v10 = *" restrict";
    *(v10 + 8) = 116;
    *(this + 1) += 9;
  }

LABEL_5:
  v11 = *(a1 + 44);
  if (v11 == 2)
  {
    v12 = 3;
    v15 = *this + *(this + 1);
    *(v15 + 2) = 38;
    *v15 = 9760;
  }

  else
  {
    if (v11 != 1)
    {
      goto LABEL_13;
    }

    v12 = 2;
    *(*this + *(this + 1)) = 9760;
  }

  *(this + 1) += v12;
LABEL_13:
  if (*(a1 + 48))
  {
    v16 = *this;
    v17 = *(this + 1);
    *(this + 1) = v17 + 1;
    *(v16 + v17) = 32;
    v18 = *(a1 + 48);
  }

  return result;
}

void *anonymous namespace::itanium_demangle::ObjCProtoName::printLeft(uint64_t *a1, void *a2)
{
  *(*a2 + a2[1]++) = 60;
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[3];
    memcpy((*a2 + a2[1]), v5, v4);
    a2[1] += v4;
  }

  *(*a2 + a2[1]++) = 62;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::VendorExtQualType::printLeft(uint64_t *a1, void *a2)
{
  *(*a2 + a2[1]++) = 32;
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[3];
    memcpy((*a2 + a2[1]), v5, v4);
    a2[1] += v4;
  }

  result = a1[5];
  if (result)
  {
  }

  return result;
}

uint64_t anonymous namespace::itanium_demangle::QualType::hasRHSComponentSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 9);
  if ((v2 & 0xC0) == 0x80)
  {
    return (**v1)(v1);
  }

  else
  {
    return v2 < 0x40;
  }
}

uint64_t anonymous namespace::itanium_demangle::QualType::hasArraySlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1[10] & 3;
  if (v2 == 2)
  {
    return (*(*v1 + 8))();
  }

  else
  {
    return v2 == 0;
  }
}

uint64_t anonymous namespace::itanium_demangle::QualType::hasFunctionSlow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (*(v1 + 9) >> 10) & 3;
  if (v2 == 2)
  {
    return (*(*v1 + 16))();
  }

  else
  {
    return v2 == 0;
  }
}

void *anonymous namespace::itanium_demangle::QualType::printLeft(uint64_t a1, void *a2)
{
  result = (*(**(a1 + 16) + 32))(*(a1 + 16));
  v5 = *(a1 + 12);
  if (v5)
  {
    v7 = *a2 + a2[1];
    *(v7 + 4) = 29811;
    *v7 = 1852793632;
    a2[1] += 6;
    v5 = *(a1 + 12);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *a2 + a2[1];
  *v8 = *" volatile";
  *(v8 + 8) = 101;
  a2[1] += 9;
  if ((*(a1 + 12) & 4) == 0)
  {
    return result;
  }

LABEL_4:
  v6 = *a2 + a2[1];
  *v6 = *" restrict";
  *(v6 + 8) = 116;
  a2[1] += 9;
  return result;
}

void *anonymous namespace::itanium_demangle::TransformedType::printLeft(void *a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    memcpy((*this + *(this + 1)), v5, v4);
    *(this + 1) += v4;
  }

  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 40;
  v9 = *this;
  v10 = *(this + 1);
  *(this + 1) = v10 + 1;
  *(v9 + v10) = 41;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::BinaryFPType::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  v4 = *this + *(this + 1);
  *(v4 + 4) = 29793;
  *v4 = 1869366879;
  *(this + 1) += 6;
  v5 = *(a1 + 16);
}

void *anonymous namespace::itanium_demangle::BitIntType::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = *this + *(this + 1);
    *v4 = *"unsigned ";
    *(v4 + 8) = 32;
    *(this + 1) += 9;
  }

  v5 = (*this + *(this + 1));
  *(v5 + 3) = 1953384820;
  *v5 = 1953055327;
  *(this + 1) += 7;
  ++*(this + 8);
  v6 = *this;
  v7 = *(this + 1);
  *(this + 1) = v7 + 1;
  *(v6 + v7) = 40;
  --*(this + 8);
  v9 = *this;
  v10 = *(this + 1);
  *(this + 1) = v10 + 1;
  *(v9 + v10) = 41;
  return result;
}

void *anonymous namespace::itanium_demangle::PostfixQualifiedType::printLeft(uint64_t a1, void *a2)
{
  result = (*(**(a1 + 16) + 32))(*(a1 + 16));
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    result = memcpy((*a2 + a2[1]), v6, v5);
    a2[1] += v5;
  }

  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::PixelVectorType,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(result + 8) = 30;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA8218;
  result[2] = v4;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::VectorType,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  *(result + 8) = 29;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1EEEA8290;
  result[2] = v6;
  result[3] = v7;
  return result;
}

void *anonymous namespace::itanium_demangle::PixelVectorType::printLeft(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this)
{
  qmemcpy((*this + *(this + 1)), "pixel vector[", 13);
  *(this + 1) += 13;
  *(*this + (*(this + 1))++) = 93;
  return result;
}

void *anonymous namespace::itanium_demangle::VectorType::printLeft(uint64_t a1, void *a2)
{
  *(*a2 + a2[1]) = 0x5B726F7463657620;
  a2[1] += 8;
  v4 = *(a1 + 24);
  if (v4)
  {
  }

  *(*a2 + a2[1]++) = 93;
  return result;
}

void *anonymous namespace::itanium_demangle::AbstractManglingParser<anonymous namespace::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<anonymous namespace::itanium_demangle::ArrayType,anonymous namespace::itanium_demangle::Node *&,anonymous namespace::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  *(result + 8) = 15;
  *(result + 9) = *(result + 9) & 0xF000 | 0x400;
  *result = off_1EEEA8308;
  result[2] = v6;
  result[3] = v7;
  return result;
}

uint64_t anonymous namespace::itanium_demangle::ArrayType::printRight(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 1);
  if (!v8)
  {
    __abort_message("%s:%d: %s", this, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libcxx_os/libcxxabi/src/demangle/Utility.h");
  }

  if (*(*this + v8 - 1) != 93)
  {
    *(*this + (*(this + 1))++) = 32;
  }

  *(*this + (*(this + 1))++) = 91;
  v11 = *(a1 + 24);
  if (v11)
  {
  }

  *(*this + (*(this + 1))++) = 93;
  v12 = *(**(a1 + 16) + 40);

  return v12();
}

uint64_t anonymous namespace::itanium_demangle::ArrayType::printInitListAsType(uint64_t a1, _anonymous_namespace_::itanium_demangle::OutputBuffer *this, uint64_t **a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 8) == 8 && *(v3 + 24) == 4 && **(v3 + 16) == 1918986339)
  {
    v8 = *(this + 1);
    v9 = *this;
    v10 = *(this + 1);
    *(this + 1) = v10 + 1;
    *(v9 + v10) = 34;
    v11 = a3[1];
    if (!v11)
    {
LABEL_58:
      v4 = 1;
      v35 = *this;
      v36 = *(this + 1);
      *(this + 1) = v36 + 1;
      *(v35 + v36) = 34;
      return v4;
    }

    v12 = 0;
    v13 = *a3;
    v14 = &v13[v11];
    while (1)
    {
      v15 = *v13;
      if (*(*v13 + 8) != 77)
      {
LABEL_57:
        v4 = 0;
        *(this + 1) = v8;
        return v4;
      }

      v16 = *(v15 + 40);
      if (v16)
      {
        v17 = 0;
        v18 = *(v15 + 32);
        while (v17 <= 25)
        {
          v19 = *v18;
          if ((v19 - 48) > 9)
          {
            break;
          }

          v17 = v19 + 10 * v17 - 48;
          ++v18;
          if (!--v16)
          {
            if (v17 >= 256)
            {
              goto LABEL_57;
            }

            if (v12)
            {
              goto LABEL_18;
            }

            goto LABEL_23;
          }
        }

        goto LABEL_57;
      }

      v17 = 0;
      if ((v12 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_18:
      if ((v17 - 48) < 0xA)
      {
        break;
      }

      if (v17 <= 64)
      {
        if (v17 > 10)
        {
          if (v17 > 12)
          {
            if (v17 == 13)
            {
LABEL_45:
              v12 = 0;
              v20 = *this;
              v21 = *(this + 1);
              v22 = 29276;
            }

            else
            {
              if (v17 != 34)
              {
LABEL_50:
                if (v17 < 32 || v17 == 127)
                {
                  v25 = *this;
                  v26 = *(this + 1);
                  *(this + 1) = v26 + 1;
                  *(v25 + v26) = 92;
                  if (v17 >= 8)
                  {
                    v27 = *this;
                    v28 = *(this + 1);
                    *(this + 1) = v28 + 1;
                    *(v27 + v28) = 120;
                    if (v17 >= 0x10)
                    {
                      v29 = a0123456789abcd[v17 >> 4];
                      v30 = *this;
                      v31 = *(this + 1);
                      *(this + 1) = v31 + 1;
                      *(v30 + v31) = v29;
                    }
                  }

                  v32 = a0123456789abcd[v17 & 0xF];
                  v12 = 1;
                  v33 = *this;
                  v34 = *(this + 1);
                  *(this + 1) = v34 + 1;
                  *(v33 + v34) = v32;
                }

                else
                {
                  v12 = 0;
                  v23 = *this;
                  v24 = *(this + 1);
                  *(this + 1) = v24 + 1;
                  *(v23 + v24) = v17;
                }

                goto LABEL_48;
              }

LABEL_44:
              v12 = 0;
              v20 = *this;
              v21 = *(this + 1);
              v22 = 8796;
            }
          }

          else
          {
LABEL_39:
            v12 = 0;
            v20 = *this;
            v21 = *(this + 1);
            if (v17 == 11)
            {
              v22 = 30300;
            }

            else
            {
              v22 = 26204;
            }
          }
        }

        else
        {
LABEL_30:
          if (v17 > 8)
          {
            v12 = 0;
            v20 = *this;
            v21 = *(this + 1);
            if (v17 == 9)
            {
              v22 = 29788;
            }

            else
            {
              v22 = 28252;
            }
          }

          else if (v17 == 7)
          {
            v12 = 0;
            v20 = *this;
            v21 = *(this + 1);
            v22 = 24924;
          }

          else
          {
            if (v17 != 8)
            {
              goto LABEL_50;
            }

            v12 = 0;
            v20 = *this;
            v21 = *(this + 1);
            v22 = 25180;
          }
        }

        *(v20 + v21) = v22;
        goto LABEL_47;
      }

      if ((v17 - 65) < 6 || (v17 - 97) < 6)
      {
        break;
      }

LABEL_27:
      if (v17 != 92)
      {
        goto LABEL_50;
      }

      v12 = 0;
      *(*this + *(this + 1)) = 23644;
LABEL_47:
      *(this + 1) += 2;
LABEL_48:
      if (++v13 == v14)
      {
        goto LABEL_58;
      }
    }

    *(*this + *(this + 1)) = 8738;
    *(this + 1) += 2;
LABEL_23:
    if (v17 <= 10)
    {
      goto LABEL_30;
    }

    if (v17 <= 12)
    {
      goto LABEL_39;
    }

    if (v17 == 13)
    {
      goto LABEL_45;
    }

    if (v17 == 34)
    {
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  return 0;
}