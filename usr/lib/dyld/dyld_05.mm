uint64_t dyld3::MachOLoaded::findClosestSymbol(dyld3::MachOLoaded *this, uint64_t a2, const char **a3, unint64_t *a4)
{
  Diagnostics::Diagnostics(v46);
  dyld3::MachOLoaded::getLinkEditPointers(this, v46, v40);
  v8 = 0;
  if (!Diagnostics::hasError(v46) && v41 && v42)
  {
    v9 = a2 - v43;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = 0;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 0x40000000;
    v35[2] = ___ZNK5dyld311MachOLoaded17findClosestSymbolEyPPKcPy_block_invoke;
    v35[3] = &unk_A3A28;
    v35[4] = &v36;
    v35[5] = a2 - v43;
    dyld3::MachOFile::forEachSection(this, v35);
    v10 = v41[4];
    v11 = v41[5];
    v12 = v45;
    v13 = v43 + v44;
    v14 = v43 + v44 + (v41[2] - v45);
    v15 = dyld3::MachOFile::is64(this);
    v16 = v42[4];
    v17 = v42[5];
    v18 = 0;
    if (v15)
    {
      if (v17)
      {
        v19 = (v14 + 16 * v16);
        v20 = &v19[4 * v17];
        do
        {
          if ((~*(v19 + 4) & 0xE) == 0)
          {
            v21 = *(v19 + 1);
            if (v18)
            {
              if (v21 <= v9 && *(v18 + 1) < v21)
              {
LABEL_13:
                if (*(v37 + 6) == *(v19 + 5))
                {
                  v18 = v19;
                }
              }
            }

            else if (v21 <= v9)
            {
              goto LABEL_13;
            }
          }

          v19 += 4;
        }

        while (v19 < v20);
      }

      v22 = v42[3];
      if (v22)
      {
        v23 = (v14 + 16 * v42[2]);
        v24 = &v23[4 * v22];
        do
        {
          if ((v23[1] & 0xEE) == 0xE)
          {
            v25 = *(v23 + 1);
            if (v18)
            {
              if (v25 <= v9 && *(v18 + 1) < v25)
              {
LABEL_24:
                if (*(v37 + 6) == *(v23 + 5))
                {
                  v18 = v23;
                }
              }
            }

            else if (v25 <= v9)
            {
              goto LABEL_24;
            }
          }

          v23 += 4;
        }

        while (v23 < v24);
      }

      if (v18)
      {
        v26 = *(v18 + 1);
LABEL_53:
        *a4 = v43 + v26;
        if (*v18 < v11)
        {
          *a3 = (v13 + (v10 - v12) + *v18);
        }

        v8 = 1;
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    if (v17)
    {
      v27 = (v14 + 12 * v16);
      v28 = &v27[3 * v17];
      do
      {
        if ((~*(v27 + 4) & 0xE) == 0)
        {
          v29 = v27[2];
          if (v18)
          {
            if (v9 >= v29 && v18[2] < v29)
            {
LABEL_37:
              if (*(v37 + 6) == *(v27 + 5))
              {
                v18 = v27;
              }
            }
          }

          else if (v9 >= v29)
          {
            goto LABEL_37;
          }
        }

        v27 += 3;
      }

      while (v27 < v28);
    }

    v30 = v42[3];
    if (!v30)
    {
LABEL_51:
      if (v18)
      {
        v26 = v18[2];
        goto LABEL_53;
      }

LABEL_56:
      v8 = 0;
LABEL_57:
      _Block_object_dispose(&v36, 8);
      goto LABEL_58;
    }

    v31 = (v14 + 12 * v42[2]);
    v32 = &v31[3 * v30];
    while (1)
    {
      if ((v31[1] & 0xEE) == 0xE)
      {
        v33 = v31[2];
        if (v18)
        {
          if (v9 >= v33 && v18[2] < v33)
          {
LABEL_48:
            if (*(v37 + 6) == *(v31 + 5))
            {
              v18 = v31;
            }
          }
        }

        else if (v9 >= v33)
        {
          goto LABEL_48;
        }
      }

      v31 += 3;
      if (v31 >= v32)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_58:
  Diagnostics::~Diagnostics(v46);
  return v8;
}

BOOL dyld4::SyscallDelegate::realpath(dyld4::SyscallDelegate *this, dyld3 *a2, char *a3)
{
  v4 = a2;
  v5 = dyld3::open(a2, 0, 0);
  if (v5 == -1)
  {
    strlcpy(__dst, v4, 0x400uLL);
    v8 = strrchr(__dst, 47);
    if (v8)
    {
      *v8 = 0;
      v4 += v8 - __dst + 1;
    }

    else
    {
      strcpy(__dst, ".");
    }

    v9 = dyld3::open(__dst, 0x100000, 0);
    if (v9 == -1)
    {
      return 0;
    }

    v10 = v9;
    v11 = fcntl(v9, 50, a3);
    close(v10);
    if (v11)
    {
      return 0;
    }

    else
    {
      strlcat(a3, "/", 0x400uLL);
      strlcat(a3, v4, 0x400uLL);
      return 1;
    }
  }

  else
  {
    v6 = v5;
    v7 = fcntl(v5, 50, a3) == 0;
    close(v6);
  }

  return v7;
}

uint64_t cerror(int a1)
{
  (_pthread_exit_if_canceled)();
  cerror_nocancel(a1);
  return -1;
}

vm_address_t *dyld4::APIs::setErrorString(vm_address_t *this, char *a2, ...)
{
  va_start(va, a2);
  if (this[137] != -1)
  {
    v2 = this;
    if (*(this + 1114) == 1)
    {
      this = _simple_salloc();
      if (this)
      {
        v4 = this;
        _simple_vsprintf(this, a2, va);
        v5 = _simple_string(v4);
        v6 = _platform_strlen(v5);
        if (v6 + 2 <= 0x100)
        {
          v7 = 256;
        }

        else
        {
          v7 = v6 + 2;
        }

        v8 = dyld4::LibSystemHelpersWrapper::pthread_getspecific((v2 + 20), v2[137]);
        if (v8)
        {
          v9 = v8;
          v10 = dyld4::LibSystemHelpersWrapper::malloc_size((v2 + 20), v8);
          if (v10)
          {
            if (v10 >= v7)
            {
LABEL_12:
              v11 = _simple_string(v4);
              strlcpy(v9 + 1, v11, v7 - 1);
              *v9 = 1;
              return _simple_sfree(v4);
            }

            dyld4::LibSystemHelpersWrapper::free((v2 + 20), v9);
          }
        }

        v9 = dyld4::LibSystemHelpersWrapper::malloc((v2 + 20), v7);
        dyld4::LibSystemHelpersWrapper::pthread_setspecific((v2 + 20), v2[137], v9);
        goto LABEL_12;
      }
    }
  }

  return this;
}

std::ios_base *__cdecl hex(std::ios_base *__str)
{
  v7 = v4;
  v8 = v3;
  v9 = v1;
  v11 = "0123456789ABCDEF";
  if (!v5)
  {
    v11 = "0123456789abcdef";
  }

  v46 = 0;
  if (v2)
  {
    v12 = &v46;
    do
    {
      *--v12 = v11[v2 & 0xF];
      v13 = v2 >= 0x10;
      v2 >>= 4;
    }

    while (v13);
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v12 = &v45;
  v45 = 48;
  if (v6)
  {
LABEL_9:
    v8 = v3 - 2;
    if (!v4)
    {
      v22 = 0;
      goto LABEL_28;
    }

    v14 = 0;
    v15 = 48;
    do
    {
      if (v9 && (v16 = v9(v15)) != 0)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = v16 + 1;
          while (1)
          {
            v19 = *&__str->__fmtflags_;
            if (v19 < __str->__precision_)
            {
              goto LABEL_18;
            }

            if ((*&__str->__rdstate_)(__str))
            {
              break;
            }

LABEL_19:
            v20 = *v18++;
            v17 = v20;
            if (!v20)
            {
              goto LABEL_25;
            }
          }

          v19 = *&__str->__fmtflags_;
LABEL_18:
          *&__str->__fmtflags_ = v19 + 1;
          *v19 = v17;
          goto LABEL_19;
        }
      }

      else
      {
        v21 = *&__str->__fmtflags_;
        if (v21 < __str->__precision_)
        {
          goto LABEL_24;
        }

        if ((*&__str->__rdstate_)(__str))
        {
          v21 = *&__str->__fmtflags_;
LABEL_24:
          *&__str->__fmtflags_ = v21 + 1;
          *v21 = v15;
        }
      }

LABEL_25:
      v15 = _0x[++v14];
    }

    while (v14 != 2);
  }

LABEL_26:
  v22 = 1;
LABEL_28:
  result = _platform_strlen(v12);
  v24 = v8 - result;
  if (v24 >= 1)
  {
    if (v7)
    {
      v25 = 48;
    }

    else
    {
      v25 = 32;
    }

    do
    {
      if (v9 && (result = v9(v25)) != 0)
      {
        v26 = result->__vftable;
        if (LOBYTE(result->__vftable))
        {
          v27 = &result->__vftable + 1;
          while (1)
          {
            v28 = *&__str->__fmtflags_;
            if (v28 < __str->__precision_)
            {
              goto LABEL_39;
            }

            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              break;
            }

LABEL_40:
            v29 = *v27++;
            v26 = v29;
            if (!v29)
            {
              goto LABEL_46;
            }
          }

          v28 = *&__str->__fmtflags_;
LABEL_39:
          *&__str->__fmtflags_ = v28 + 1;
          *v28 = v26;
          goto LABEL_40;
        }
      }

      else
      {
        v30 = *&__str->__fmtflags_;
        if (v30 < __str->__precision_)
        {
          goto LABEL_45;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          v30 = *&__str->__fmtflags_;
LABEL_45:
          *&__str->__fmtflags_ = v30 + 1;
          *v30 = v25;
        }
      }

LABEL_46:
      ;
    }

    while (v24-- > 1);
  }

  if (v22)
  {
    goto LABEL_81;
  }

  v32 = 0;
  v33 = 48;
  do
  {
    if (v9 && (result = v9(v33)) != 0)
    {
      v34 = result->__vftable;
      if (LOBYTE(result->__vftable))
      {
        v35 = &result->__vftable + 1;
        while (1)
        {
          v36 = *&__str->__fmtflags_;
          if (v36 < __str->__precision_)
          {
            goto LABEL_57;
          }

          result = (*&__str->__rdstate_)(__str);
          if (result)
          {
            break;
          }

LABEL_58:
          v37 = *v35++;
          v34 = v37;
          if (!v37)
          {
            goto LABEL_64;
          }
        }

        v36 = *&__str->__fmtflags_;
LABEL_57:
        *&__str->__fmtflags_ = v36 + 1;
        *v36 = v34;
        goto LABEL_58;
      }
    }

    else
    {
      v38 = *&__str->__fmtflags_;
      if (v38 >= __str->__precision_)
      {
        result = (*&__str->__rdstate_)(__str);
        if (!result)
        {
          goto LABEL_64;
        }

        v38 = *&__str->__fmtflags_;
      }

      *&__str->__fmtflags_ = v38 + 1;
      *v38 = v33;
    }

LABEL_64:
    v33 = _0x[++v32];
  }

  while (v32 != 2);
LABEL_81:
  while (1)
  {
    v44 = *v12;
    if (!*v12)
    {
      return result;
    }

    if (v9)
    {
      result = v9(*v12);
      if (result)
      {
        v39 = result->__vftable;
        if (!LOBYTE(result->__vftable))
        {
          goto LABEL_80;
        }

        v40 = &result->__vftable + 1;
        while (2)
        {
          v41 = *&__str->__fmtflags_;
          if (v41 < __str->__precision_)
          {
LABEL_73:
            *&__str->__fmtflags_ = v41 + 1;
            *v41 = v39;
          }

          else
          {
            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              v41 = *&__str->__fmtflags_;
              goto LABEL_73;
            }
          }

          v42 = *v40++;
          v39 = v42;
          if (!v42)
          {
            goto LABEL_80;
          }

          continue;
        }
      }
    }

    v43 = *&__str->__fmtflags_;
    if (v43 >= __str->__precision_)
    {
      result = (*&__str->__rdstate_)(__str);
      if (!result)
      {
        goto LABEL_80;
      }

      v43 = *&__str->__fmtflags_;
    }

    *&__str->__fmtflags_ = v43 + 1;
    *v43 = v44;
LABEL_80:
    ++v12;
  }
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper19pthread_getspecificEmEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke(uint64_t a1)
{
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_9;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_9;
  }

  v1 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v1 & 0xFE) != 2)
  {
    goto LABEL_9;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v2 = MEMORY[0xFFFFFC0D8];
  if (v2 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) || (result = (*(***(a1 + 32) + 56))(**(a1 + 32), **(a1 + 40)), !MEMORY[0xFFFFFC10C]) || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v4 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v4 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]), __isb(0xFu), v5 = MEMORY[0xFFFFFC0D0], v5 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
  {
LABEL_9:
    __break(1u);
    JUMPOUT(0x4544CLL);
  }

  return result;
}

uint64_t dyld4::LibSystemHelpersWrapper::malloc(dyld4::LibSystemHelpersWrapper *this, uint64_t a2)
{
  v30 = a2;
  v11 = lsl::MemoryManager::memoryManager(this);
  v12 = *(v11 + 6);
  if (v12 && lsl::ProtectedStack::onStackInCurrentFrame(v12, v4, v5, v6, v7, v8, v9, v10, v28))
  {
    v19 = *(v11 + 6);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 0x40000000;
    v31[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper6mallocEmEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke;
    v31[3] = &__block_descriptor_tmp_202;
    v31[4] = this;
    v31[5] = &v30;
    return lsl::ProtectedStack::withNestedRegularStack(v19, v31, v13, v14, v15, v16, v17, v18, v29);
  }

  if (*(v11 + 33) == 1)
  {
    if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
      {
        goto LABEL_8;
      }

      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v23 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v23 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
            __isb(0xFu);
            v24 = MEMORY[0xFFFFFC0D8];
            if (v24 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v25 = (*(**this + 8))(*this, a2);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v26 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v26 & 0xFE) == 2)
                  {
                    v20 = v25;
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                    __isb(0xFu);
                    v27 = MEMORY[0xFFFFFC0D0];
                    if (v27 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return v20;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
    JUMPOUT(0x456A0);
  }

LABEL_8:
  v21 = *(**this + 8);

  return v21();
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper6mallocEmEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke(uint64_t a1)
{
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_9;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_9;
  }

  v1 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v1 & 0xFE) != 2)
  {
    goto LABEL_9;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v2 = MEMORY[0xFFFFFC0D8];
  if (v2 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) || (result = (*(***(a1 + 32) + 8))(**(a1 + 32), **(a1 + 40)), !MEMORY[0xFFFFFC10C]) || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v4 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v4 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]), __isb(0xFu), v5 = MEMORY[0xFFFFFC0D0], v5 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
  {
LABEL_9:
    __break(1u);
    JUMPOUT(0x457E0);
  }

  return result;
}

uint64_t dyld4::LibSystemHelpersWrapper::pthread_setspecific(dyld4::LibSystemHelpersWrapper *this, uint64_t a2, const void *a3)
{
  v32 = a3;
  v33 = a2;
  v13 = lsl::MemoryManager::memoryManager(this);
  v14 = *(v13 + 6);
  if (v14 && lsl::ProtectedStack::onStackInCurrentFrame(v14, v6, v7, v8, v9, v10, v11, v12, v30))
  {
    v21 = *(v13 + 6);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 0x40000000;
    v34[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper19pthread_setspecificEmPKvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES9__block_invoke;
    v34[3] = &__block_descriptor_tmp_200_0;
    v34[4] = this;
    v34[5] = &v33;
    v34[6] = &v32;
    return lsl::ProtectedStack::withNestedRegularStack(v21, v34, v15, v16, v17, v18, v19, v20, v31);
  }

  if (*(v13 + 33) == 1)
  {
    if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
      {
        goto LABEL_8;
      }

      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v25 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v25 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
            __isb(0xFu);
            v26 = MEMORY[0xFFFFFC0D8];
            if (v26 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v27 = (*(**this + 64))(*this, a2, a3);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v28 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v28 & 0xFE) == 2)
                  {
                    v22 = v27;
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                    __isb(0xFu);
                    v29 = MEMORY[0xFFFFFC0D0];
                    if (v29 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return v22;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
    JUMPOUT(0x45A50);
  }

LABEL_8:
  v23 = *(**this + 64);

  return v23();
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper19pthread_setspecificEmPKvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES9__block_invoke(uint64_t a1)
{
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_10;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_10;
  }

  v1 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v1 & 0xFE) != 2)
  {
    goto LABEL_10;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v2 = MEMORY[0xFFFFFC0D8];
  if (v2 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) || (LODWORD(result) = (*(***(a1 + 32) + 64))(**(a1 + 32), **(a1 + 40), **(a1 + 48)), !MEMORY[0xFFFFFC10C]) || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v4 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v4 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]), __isb(0xFu), v5 = MEMORY[0xFFFFFC0D0], v5 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
  {
LABEL_10:
    __break(1u);
    JUMPOUT(0x45BBCLL);
  }

  return result;
}

uint64_t dyld4::APIs::dladdr(dyld4::APIs *this, int *a2, dl_info *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v32 = 520618000;
  v33 = a2;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  dyld3::ScopedTimer::startTimer(&v32, a2, a3, a4, a5, a6, a7, a8);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dladdr(%p, %p)\n", a2, a3);
  }

  if (a3)
  {
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v25 = 0;
    if (dyld4::APIs::findImageMappedAt(this, a2, &v30, &v31, &v28, &v27, &v26, &v25, &v29))
    {
      v11 = v30;
      a3->dli_fname = v28;
      a3->dli_fbase = v11;
      v21 = 0;
      if (v11 == a2)
      {
        a3->dli_sname = "__dso_handle";
        a3->dli_saddr = v11;
      }

      else if (dyld3::MachOLoaded::findClosestSymbol(v11, a2, &a3->dli_sname, &v21))
      {
        v12 = v21;
        a3->dli_saddr = v21;
        if (a3->dli_fbase == v12)
        {
          a3->dli_sname = 0;
          a3->dli_saddr = 0;
        }

        else
        {
          dli_sname = a3->dli_sname;
          if (dli_sname && *dli_sname == 95)
          {
            a3->dli_sname = dli_sname + 1;
          }
        }
      }

      else
      {
        a3->dli_sname = 0;
        a3->dli_saddr = 0;
        if (v29)
        {
          if ((*(v29 + 2) & 1) == 0)
          {
            v17 = *(v29 + 13);
            if (v17)
            {
              dyld4::PseudoDylib::lookupAddress(v17, a2, a3);
            }
          }
        }
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
      if (a2 >= &dword_0 && a2 < 0x200000)
      {
        v21 = 0;
        v22 = &v21;
        v23 = 0x2000000000;
        v24 = 0;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 0x40000000;
        v20[2] = ___ZN5dyld44APIs6dladdrEPKvP7dl_info_block_invoke;
        v20[3] = &unk_A2310;
        v20[5] = &dword_0;
        v20[6] = a2;
        v20[4] = &v21;
        mach_o::Header::forEachSegment(&dword_0, v20);
        if (*(v22 + 24) == 1)
        {
          a3->dli_fname = "/usr/lib/dyld";
          a3->dli_fbase = &dword_0;
          v19 = 0;
          if (dyld3::MachOLoaded::findClosestSymbol(&dword_0, a2, &a3->dli_sname, &v19))
          {
            v15 = v19;
            a3->dli_saddr = v19;
            if (a3->dli_fbase == v15)
            {
              a3->dli_sname = 0;
              a3->dli_saddr = 0;
            }

            else
            {
              v16 = a3->dli_sname;
              if (v16 && *v16 == 95)
              {
                a3->dli_sname = v16 + 1;
              }
            }
          }
        }

        _Block_object_dispose(&v21, 8);
        v14 = 0;
      }
    }

    *(&v36 + 1) = v14;
    *&v37 = 0;
    *(&v37 + 1) = a3->dli_fbase;
    *&v38 = 0;
    *(&v38 + 1) = a3->dli_saddr;
    *&v39 = 0;
  }

  else
  {
    v14 = 0;
  }

  dyld3::ScopedTimer::endTimer(&v32);
  return v14;
}

uint64_t dyld4::APIs::_dyld_get_image_name(dyld4::APIs *this, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(this + 14);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZN5dyld44APIs20_dyld_get_image_nameEj_block_invoke;
  v7[3] = &unk_A2148;
  v8 = a2;
  v7[4] = &v9;
  v7[5] = this;
  dyld4::RuntimeLocks::withLoadersReadLock(v4, v7);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_image_name(%u) => %s\n", a2, v10[3]);
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN5dyld44APIs20_dyld_get_image_nameEj_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  if (*(v1 + 6) > v2)
  {
    v3 = result;
    result = dyld4::Loader::path(*(*(v1 + 5) + 8 * v2), v1);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

BOOL dyld4::APIs::dyld_program_minos_at_least(uint64_t a1, uint64_t a2)
{
  v4 = !mach_o::Platform::empty((*(a1 + 8) + 96));
  v5 = *(a1 + 8);
  if (a2 == -1)
  {
    v7 = *(v5 + 92);
  }

  else
  {
    mach_o::Platform::Platform(&v9, a2);
    if (*(v5 + 96) == v9 && *(v5 + 104) == v10 || (v6 = *(a1 + 8), mach_o::Platform::Platform(&v9, a2), *(v6 + 112) == v9) && *(v6 + 120) == v10)
    {
      v7 = *(*(a1 + 8) + 88);
    }

    else
    {
      v7 = 0;
      v4 = 0;
    }
  }

  return v7 >= HIDWORD(a2) && v4;
}

_BYTE *___ZZN5dyld412RuntimeState16setObjCNotifiersENS_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS1_IPFvS6_PvS6_PKvEEENS1_IPFvPK29_dyld_objc_notify_mapped_infoEEENS1_IPFvjSI_U13block_pointerFvjEEEEENK3__0clEv_block_invoke_203(_BYTE *result, unsigned int a2)
{
  v3 = *(*(result + 4) + 8);
  if (*(v3 + 56) <= a2)
  {
    ___ZZN5dyld412RuntimeState16setObjCNotifiersENS_16ReadOnlyCallbackIPFvPKcPK11mach_headerEEENS1_IPFvS6_PvS6_PKvEEENS1_IPFvPK29_dyld_objc_notify_mapped_infoEEENS1_IPFvjSI_U13block_pointerFvjEEEEENK3__0clEv_block_invoke_203_cold_1();
  }

  if ((*(*(*(v3 + 40) + 32 * a2 + 16) + 4) & 2) != 0 && result[48] == 1)
  {
    v4 = *(result + 5);

    return dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(v4);
  }

  return result;
}

uint64_t dyld4::LibSystemHelpersWrapper::malloc_size(dyld4::LibSystemHelpersWrapper *this, const void *a2)
{
  v28 = a2;
  v11 = lsl::MemoryManager::memoryManager(this);
  result = v11[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v4, v5, v6, v7, v8, v9, v10, v26);
    if (result)
    {
      v19 = v11[6];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 0x40000000;
      v29[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper11malloc_sizeEPKvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES9__block_invoke;
      v29[3] = &__block_descriptor_tmp_199_0;
      v29[4] = this;
      v29[5] = &v28;
      return lsl::ProtectedStack::withNestedRegularStack(v19, v29, v13, v14, v15, v16, v17, v18, v27);
    }
  }

  if (*(v11 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v22 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v22 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v23 = MEMORY[0xFFFFFC0D8];
          if (v23 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*(**this + 24))(*this, a2);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v24 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v24 & 0xFE) == 2)
                {
                  v20 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v25 = MEMORY[0xFFFFFC0D0];
                  if (v25 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v20;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v21 = *(**this + 24);

  return v21();
}

uint64_t dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>::operator()<dyld3::MachOLoaded const*&,long>(lsl::MemoryManager *a1, void *a2, void *a3)
{
  v13 = lsl::MemoryManager::memoryManager(a1);
  result = v13[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v6, v7, v8, v9, v10, v11, v12, v29);
    if (result)
    {
      v21 = v13[6];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 0x40000000;
      v31[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerlEEclIJRPKN5dyld311MachOLoadedElEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke;
      v31[3] = &__block_descriptor_tmp_188;
      v31[4] = a1;
      v31[5] = a2;
      v31[6] = a3;
      return lsl::ProtectedStack::withNestedRegularStack(v21, v31, v15, v16, v17, v18, v19, v20, v30);
    }
  }

  if (*(v13 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v25 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v25 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v26 = MEMORY[0xFFFFFC0D8];
          if (v26 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v27 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v27 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v28 = MEMORY[0xFFFFFC0D0];
                  if (v28 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v22 = *a1;
  v23 = *a2;
  v24 = *a3;

  return v22(v23, v24);
}

unint64_t dyld4::JustInTimeLoader::beginInitializers(dyld4::JustInTimeLoader *this, dyld4::RuntimeState *a2)
{
  v2 = *(this + 5);
  if ((v2 & 0x40000) == 0)
  {
    *(this + 5) = v2 | 0x40000;
  }

  return (v2 >> 18) & 1;
}

void dyld4::JustInTimeLoader::runInitializers(dyld4::PseudoDylib **this, dyld4::RuntimeState *a2)
{
  dyld4::Loader::findAndRunAllInitializers(this, a2);
  v6 = this[13];
  v5 = this + 13;
  v4 = v6;
  if (v6)
  {
    v7 = dyld4::PseudoDylib::initialize(v4);
    if (v7)
    {
      v8 = v7;
      dyld4::RuntimeState::log(a2, "error running pseudo-dylib initializers: %s", v7);
      v9 = *v5;

      dyld4::PseudoDylib::disposeString(v9, v8);
    }
  }
}

uint64_t ___ZN5dyld44APIs5dlsymEPvPKc_block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(v1 + 6);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 5);
    v5 = 8 * v2;
    v6 = v4;
    while (1)
    {
      v7 = *v6;
      v8 = dyld4::Loader::analyzer(*v6, v1);
      result = mach_o::Header::noDynamicAccess(v8);
      if ((result & 1) == 0)
      {
        result = dyld4::Loader::hiddenFromFlat(v7, 0);
        if ((result & 1) == 0)
        {
          result = dyld4::Loader::hasExportedSymbol(v7, (*(*(v3 + 32) + 8) + 40), v1, *(v3 + 64), 1, 0, (*(*(v3 + 40) + 8) + 40), 0);
          if (result)
          {
            break;
          }
        }
      }

      ++v6;
      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }

    *(*(*(v3 + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t dyld4::APIs::NSVersionOfRunTimeLibrary(dyld4::APIs *this, const char *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = -1;
  v4 = *(this + 14);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZN5dyld44APIs25NSVersionOfRunTimeLibraryEPKc_block_invoke;
  v7[3] = &unk_A2198;
  v7[5] = this;
  v7[6] = a2;
  v7[4] = &v8;
  dyld4::RuntimeLocks::withLoadersReadLock(v4, v7);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "NSVersionOfRunTimeLibrary(%s) => 0x%08X\n", a2, *(v9 + 6));
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t ___ZN5dyld44APIs25NSVersionOfRunTimeLibraryEPKc_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 6);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 5);
    v5 = 8 * v2;
    v6 = v4;
    while (1)
    {
      Address = dyld4::Loader::loadAddress(*v6, v1);
      v11 = 0;
      v9 = 0x10000;
      v10 = 0x10000;
      result = mach_o::Header::getDylibInstallName(Address, &v11, &v9, &v10);
      if (result)
      {
        result = dyld4::nameMatch(v11, *(v3 + 48), v8);
        if (result)
        {
          break;
        }
      }

      ++v6;
      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }

    *(*(*(v3 + 32) + 8) + 24) = v10;
  }

  return result;
}

uint64_t dyld4::APIs::dlopen_preflight(dyld4::APIs *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v36 = 520617988;
  v37 = 0;
  v38 = a2;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  dyld3::ScopedTimer::startTimer(&v36, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(this + 1);
  if (*(v10 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dlopen_preflight(%s)\n", a2);
    v10 = *(this + 1);
  }

  v35 = 0;
  v11 = *(v10 + 368);
  if (v11)
  {
    if (DyldSharedCache::hasImagePath(*(v10 + 368), a2, &v35))
    {
LABEL_12:
      v41 = xmmword_8BFD0;
      v14 = 1;
      goto LABEL_19;
    }

    v10 = *(this + 1);
  }

  if (dyld4::SyscallDelegate::realpath(v10, a2, __s2))
  {
    v12 = _platform_strcmp(a2, __s2);
    v13 = !v11 || v12 == 0;
    if (!v13 && DyldSharedCache::hasImagePath(v11, __s2, &v35))
    {
      goto LABEL_12;
    }
  }

  v34 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3802000000;
  v27 = __Block_byref_object_copy__71;
  v28 = __Block_byref_object_dispose__72;
  Diagnostics::Diagnostics(v29);
  v15 = *(this + 1);
  v16 = *(v15 + 112);
  v21[7] = a2;
  v22 = v16;
  v23 = *(v15 + 120);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 0x40000000;
  v21[2] = ___ZN5dyld44APIs16dlopen_preflightEPKc_block_invoke;
  v21[3] = &unk_A2388;
  v21[5] = &v24;
  v21[6] = this;
  v21[4] = &v30;
  dyld4::ProcessConfig::PathOverrides::forEachPathVariant(v15 + 592, a2, &v22, 0, 1, &v34, v21);
  if ((v31[3] & 1) == 0 && Diagnostics::hasError((v25 + 5)))
  {
    v18 = Diagnostics::errorMessage((v25 + 5));
    dyld4::APIs::setErrorString(this, "dlopen_preflight(%s) => false, %s", a2, v18);
  }

  if (*(*(this + 1) + 324) == 1)
  {
    v19 = dyld4::Loader::leafName(a2, v17);
    dyld4::RuntimeState::log(this, "      dlopen_preflight(%s) => %d\n", v19, *(v31 + 24));
  }

  v14 = *(v31 + 24);
  v41 = v14 & 1;
  _Block_object_dispose(&v24, 8);
  Diagnostics::~Diagnostics(v29);
  _Block_object_dispose(&v30, 8);
LABEL_19:
  dyld3::ScopedTimer::endTimer(&v36);
  return v14 & 1;
}

BOOL dyld4::EqualMetadataConformanceLookupKey::equal(unint64_t *a1, unint64_t *a2, unint64_t *a3, dyld4::RuntimeState *a4)
{
  if (!a4)
  {
    dyld4::EqualMetadataConformanceLookupKey::equal();
  }

  return dyld4::PrebuiltLoader::BindTargetRef::value(a1, a4) == a2 && dyld4::PrebuiltLoader::BindTargetRef::value(a1 + 1, a4) == a3;
}

uint64_t dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::find(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 32) - 1) & dyld4::HashForeignConformanceKey::hash(a2, *(a1 + 96));
  v5 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v4);
  if (v5 == -1)
  {
    return *(a1 + 56) + 48 * *(a1 + 72);
  }

  for (i = 1; ; ++i)
  {
    v7 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v5);
    if (dyld4::EqualForeignConformanceKey::equal(v7, a2, *(a1 + 96)))
    {
      break;
    }

    v4 = (*(a1 + 32) - 1) & (v4 + i);
    v5 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v4);
    if (v5 == -1)
    {
      return *(a1 + 56) + 48 * *(a1 + 72);
    }
  }

  return dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v5);
}

unint64_t dyld4::HashForeignConformanceKey::hash(uint64_t a1, dyld4::RuntimeState *a2)
{
  if (a2)
  {
    v3 = dyld4::PrebuiltLoader::BindTargetRef::value((a1 + 8), a2);
  }

  else
  {
    v3 = *a1;
  }

  v6 = dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset((a1 + 24)) & 0xFFF;
  v4 = murmurHash(v3, *(a1 + 16), 0);
  return murmurHash(&v6, 8, 0) ^ v4;
}

BOOL dyld4::EqualForeignConformanceKey::equal(uint64_t a1, uint64_t a2, dyld4::RuntimeState *a3)
{
  if (a3)
  {
    v6 = dyld4::PrebuiltLoader::BindTargetRef::value((a1 + 8), a3);
    v7 = dyld4::PrebuiltLoader::BindTargetRef::value((a2 + 8), a3);
  }

  else
  {
    v6 = *a1;
    v7 = *a2;
  }

  v8 = *(a1 + 16);
  if (_platform_strncmp(v6, v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == *(a2 + 16);
  }

  if (!v9)
  {
    return 0;
  }

  v11 = dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset((a1 + 24));
  return ((dyld4::PrebuiltLoader::BindTargetRef::absValueOrOffset((a2 + 24)) ^ v11) & 0xFFFLL) == 0;
}

uint64_t dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[](vm_address_t *a1, vm_address_t a2)
{
  v4 = a1[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && a1[1] < v5)
    {
      dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::growTo(a1, a2 + 1);
    }

    a1[2] = v5;
  }

  return *a1 + 48 * a2;
}

unint64_t dyld4::JustInTimeLoader::hiddenFromFlat(dyld4::JustInTimeLoader *this, char a2)
{
  v2 = *(this + 5);
  if ((a2 & 1) == 0)
  {
    return (v2 >> 19) & 1;
  }

  result = 0;
  *(this + 5) = v2 & 0xFFFFFFFFFFF7FFFFLL;
  return result;
}

uint64_t dyld4::APIs::_dyld_is_preoptimized_objc_image_loaded(dyld4::APIs *this, unsigned int a2)
{
  v4 = *(this + 1);
  if (!*(v4 + 368))
  {
    if (*(v4 + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "_dyld_is_preoptimized_objc_image_loaded(%d) : no dyld shared cache\n");
    }

    return 0;
  }

  v5 = *(v4 + 424);
  if (!v5)
  {
    if (*(v4 + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "_dyld_is_preoptimized_objc_image_loaded(%d) : no objC RW header\n");
    }

    return 0;
  }

  if (*v5 <= a2)
  {
    if (*(v4 + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "_dyld_is_preoptimized_objc_image_loaded(%d) : imageID is invalid\n");
    }

    return 0;
  }

  isLoaded = objc::objc_headeropt_rw_t<unsigned long>::isLoaded(v5, a2);
  v7 = isLoaded;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_is_preoptimized_objc_image_loaded(%d) => %d\n", a2, isLoaded);
  }

  return v7;
}

uint64_t ___ZN5dyld413ProcessConfig8SecurityC2ERNS0_7ProcessERNS_15SyscallDelegateE_block_invoke(uint64_t a1, char *__s1)
{
  v3 = *(a1 + 32);
  result = _platform_strncmp(__s1, "DYLD_DLSYM_RESULT=", 0x12uLL);
  if (result)
  {
    return result;
  }

  result = _platform_strcmp(__s1 + 18, "null");
  if (!result)
  {
    v6 = 1;
LABEL_10:
    *(v3 + 2) = v6;
    return result;
  }

  result = _platform_strcmp(__s1 + 18, "abort");
  if (!result)
  {
    v6 = 257;
    goto LABEL_10;
  }

  result = _platform_strncmp(__s1 + 18, "null-allow:", 0xBuLL);
  if (result)
  {
    result = _platform_strncmp(__s1 + 18, "abort-allow:", 0xCuLL);
    if (result)
    {
      result = _platform_strncmp(__s1 + 18, "allow:", 6uLL);
      if (result)
      {
        return result;
      }

      *(v3 + 2) = 0;
      v5 = __s1 + 24;
    }

    else
    {
      *(v3 + 2) = 257;
      v5 = __s1 + 30;
    }
  }

  else
  {
    *(v3 + 2) = 1;
    v5 = __s1 + 29;
  }

  *(v3 + 8) = v5;
  return result;
}

uint64_t dyld4::ProcessConfig::PathOverrides::forEachFrameworkFallback(uint64_t a1, mach_o::Platform *this, int a3, _BYTE *a4, uint64_t a5)
{
  result = *(a1 + 24);
  v10 = *(a1 + 72);
  if (result | v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___ZNK5dyld413ProcessConfig13PathOverrides24forEachFrameworkFallbackEN6mach_o8PlatformEbRbU13block_pointerFvPKcNS1_4TypeES4_E_block_invoke;
    v13[3] = &unk_A04C8;
    v13[4] = a5;
    v13[5] = a4;
    return dyld4::ProcessConfig::PathOverrides::forEachInColonList(result, v10, a4, v13);
  }

  if (a3)
  {
    result = mach_o::Platform::isExclaveCore(this);
    if ((result & 1) == 0)
    {
      result = mach_o::Platform::isExclaveKit(this);
      if ((result & 1) == 0 && (*this != &mach_o::PlatformInfo_driverKit::singleton || *(this + 2)))
      {
        result = mach_o::Platform::isKernelKit(this);
        if ((result & 1) == 0)
        {
          if (*this != &mach_o::PlatformInfo_macOS::singleton || *(this + 2))
          {
            if (*(a1 + 144) == 2)
            {
              return result;
            }
          }

          else
          {
            v11 = *(a1 + 144);
            if (v11 != 1)
            {
              if (v11)
              {
                return result;
              }

              result = (*(a5 + 16))(a5, "/Library/Frameworks", 16, a4);
              if (*a4)
              {
                return result;
              }
            }
          }

          v12 = *(a5 + 16);

          return v12(a5, "/System/Library/Frameworks", 16, a4);
        }
      }
    }
  }

  return result;
}

BOOL dyld4::APIs::dyld_version_token_at_least(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = mach_o::Platform::Platform(&v12, a2);
  v6 = dyld4::APIs::mapFromVersionSet(v5, a3, &v12);
  result = 0;
  if (a2)
  {
    v7 = v6;
    mach_o::Platform::Platform(v11, a2);
    mach_o::Platform::basePlatform(v11, &v12);
    mach_o::Platform::Platform(&v9, v7);
    if (v12 == v9 && v13 == v10 && HIDWORD(a2) >= HIDWORD(v7))
    {
      return 1;
    }
  }

  return result;
}

DyldSharedCache *dyld4::APIs::_dyld_shared_cache_real_path(DyldSharedCache ***this, const char *a2)
{
  v4 = dyld4::ProcessConfig::canonicalDylibPathInCache(this[1], a2);
  v5 = v4;
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_shared_cache_real_path(%s) => '%s'\n", a2, v4);
  }

  return v5;
}

_BYTE *___ZZN5dyld412RuntimeState10notifyLoadERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEEENK3__0clEv_block_invoke(_BYTE *result, unsigned int a2)
{
  if (**(result + 6) <= a2)
  {
    ___ZZN5dyld412RuntimeState10notifyLoadERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEEENK3__0clEv_block_invoke_cold_1();
  }

  if ((*(*(*(result + 4) + 32 * a2 + 16) + 4) & 2) != 0 && **(result + 7) == 1)
  {
    v3 = **(result + 5);

    return dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(v3);
  }

  return result;
}

uint64_t dyld4::APIs::_dyld_launch_mode(dyld4::APIs *this)
{
  v1 = *(this + 3);
  v2 = *(v1 + 4) & 1;
  v3 = v2;
  if (*(this + 1000) == 1)
  {
    v3 = v2 | 4;
    if (!*(this + 1112))
    {
      v3 = *(v1 + 4) & 1;
    }
  }

  v4 = *(this + 1);
  v5 = *(v4 + 368);
  v6 = v1 <= v5 || v5 == 0;
  v7 = v3 | 8;
  if (v6)
  {
    v7 = v3;
  }

  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  if (*(this + 24))
  {
    v9 = v8 | 0x20;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    if (*(v5 + 104) == 1)
    {
      v9 = v9 | 0x40;
    }

    else
    {
      v9 = v9;
    }
  }

  if (*(v4 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_launch_mode() => 0x%08X\n", v9);
  }

  return v9;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper11malloc_sizeEPKvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES9__block_invoke(uint64_t a1)
{
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_9;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_9;
  }

  v1 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v1 & 0xFE) != 2)
  {
    goto LABEL_9;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v2 = MEMORY[0xFFFFFC0D8];
  if (v2 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) || (result = (*(***(a1 + 32) + 24))(**(a1 + 32), **(a1 + 40)), !MEMORY[0xFFFFFC10C]) || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v4 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v4 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]), __isb(0xFu), v5 = MEMORY[0xFFFFFC0D0], v5 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
  {
LABEL_9:
    __break(1u);
    JUMPOUT(0x47840);
  }

  return result;
}

uint64_t dyld4::APIs::dyld_get_image_versions(dyld4::RuntimeState *this, mach_o::Header *a2, const mach_o::Header *a3)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_get_image_versions(%p, %p)\n", a2, a3);
  }

  dyld4::APIs::getImagePlatformAndVersions(this, a2, a3, v8);
  result = mach_o::Platform::empty(v8);
  if ((result & 1) == 0)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___ZN5dyld44APIs23dyld_get_image_versionsEPK11mach_headerU13block_pointerFvjjjE_block_invoke;
    v7[3] = &unk_A21C0;
    v7[4] = a3;
    return mach_o::PlatformAndVersions::unzip(v8, v7);
  }

  return result;
}

uint64_t ___ZN5dyld44APIs23dyld_get_image_versionsEPK11mach_headerU13block_pointerFvjjjE_block_invoke(uint64_t a1, mach_o::Platform *this)
{
  v3 = *(a1 + 32);
  v4 = mach_o::Platform::value(this);
  v6 = *(this + 4);
  v5 = *(this + 5);
  v7 = *(v3 + 16);

  return v7(v3, v4, v5, v6);
}

uint64_t dyld4::APIs::_dyld_get_dlopen_image_header(dyld4::Loader **this, dyld4::Loader *a2)
{
  v3 = a2;
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_dlopen_image_header(%p)\n", a2);
  }

  if (v3 == -5)
  {
    ImageContaining = this[3];
    goto LABEL_12;
  }

  if (v3)
  {
    if (v3 == -3)
    {
      ImageContaining = dyld4::APIs::findImageContaining(this, v2);
      if (ImageContaining)
      {
        goto LABEL_12;
      }
    }

    v3 = (v3 & 0xFFFFFFFFFFFFFFFELL ^ &dword_0);
  }

  if (!dyld4::APIs::validLoader(this, v3))
  {
    return 0;
  }

  ImageContaining = v3;
LABEL_12:

  return dyld4::Loader::analyzer(ImageContaining, this);
}

uint64_t dyld4::APIs::_dyld_get_image_vmaddr_slide(dyld4::APIs *this, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(this + 14);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZN5dyld44APIs28_dyld_get_image_vmaddr_slideEj_block_invoke;
  v7[3] = &unk_A2120;
  v8 = a2;
  v7[4] = &v9;
  v7[5] = this;
  dyld4::RuntimeLocks::withLoadersReadLock(v4, v7);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_image_vmaddr_slide(%u) => 0x%lX\n", a2, v10[3]);
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN5dyld44APIs28_dyld_get_image_vmaddr_slideEj_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  if (*(v1 + 6) > v2)
  {
    v3 = result;
    Address = dyld4::Loader::loadAddress(*(*(v1 + 5) + 8 * v2), v1);
    result = dyld3::MachOLoaded::getSlide(Address);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::lower_bound_index(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248) & 0x7F;
  if ((*(a1 + 248) & 0x7F) != 0)
  {
    v3 = a1;
    do
    {
      v4 = 0;
      v5 = v2 >> 1;
      v6 = v3 + 16 * (v2 >> 1);
      while (1)
      {
        v7 = *(v6 + v4);
        v8 = *(a2 + v4);
        if (v7 < v8)
        {
          break;
        }

        if (v8 < v7 || v4++ == 15)
        {
          goto LABEL_12;
        }
      }

      v3 = v6 + 16;
      v5 = v2 + ~v5;
LABEL_12:
      v2 = v5;
    }

    while (v5);
  }

  else
  {
    LODWORD(v3) = a1 + 16 * v2;
  }

  return ((v3 - a1) >> 4);
}

BOOL dyld4::EqualForeignConformanceLookupKey::equal(unint64_t *a1, const char *a2, uint64_t a3, unint64_t *a4, dyld4::RuntimeState *a5)
{
  if (!a5)
  {
    dyld4::EqualForeignConformanceLookupKey::equal();
  }

  v10 = dyld4::PrebuiltLoader::BindTargetRef::value(a1 + 1, a5);
  v11 = a1[2];
  v12 = _platform_strncmp(v10, a2, v11);
  return v11 == a3 && v12 == 0 && dyld4::PrebuiltLoader::BindTargetRef::value(a1 + 3, a5) == a4;
}

uint64_t dyld4::APIs::_dyld_register_dlsym_notifier(lsl::MemoryManager *a1, uint64_t a2)
{
  v2 = *(a1 + 14);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 0x40000000;
  v24 = ___ZN5dyld44APIs29_dyld_register_dlsym_notifierENS_16ReadOnlyCallbackIPFvPKcEEE_block_invoke;
  v25 = &__block_descriptor_tmp_183;
  v26 = a1;
  v27 = a2;
  v28 = v23;
  v3 = lsl::MemoryManager::memoryManager(a1);
  result = *(v3 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInAnyFrameInThisThread(result);
    if (result)
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v11 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v11 & 0xFE) == 2)
          {
            result = MEMORY[0xFFFFFC0D0];
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v12 = MEMORY[0xFFFFFC0D0];
            if (v12 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v13 = *(v3 + 6);
              v29[0] = _NSConcreteStackBlock;
              v29[1] = 0x40000000;
              v29[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks22withNotifiersWriteLockIU13block_pointerFvvEEEvT_EUlvE_EEvS7__block_invoke;
              v29[3] = &__block_descriptor_tmp_216;
              v29[4] = v2;
              v29[5] = &v28;
              result = lsl::ProtectedStack::withNestedProtectedStack(v13, v29, v5, v6, v7, v8, v9, v10, v22);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v14 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v14 & 0xFE) == 2)
                  {
                    result = MEMORY[0xFFFFFC0D8];
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v15 = MEMORY[0xFFFFFC0D8];
                    if (v15 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  if (*(v3 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_38;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      if (*v2)
      {
        (*(**v2 + 96))(*v2, v2 + 24, 0);
        v24(v23);
        return (*(**v2 + 104))(*v2, v2 + 24);
      }

      else
      {
        return v24(v23);
      }
    }

    else
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_38;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_38;
      }

      v16 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v16 & 0xFE) != 2)
      {
        goto LABEL_38;
      }

      result = MEMORY[0xFFFFFC0D0];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v17 = MEMORY[0xFFFFFC0D0];
      if (v17 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_38;
      }

      if (*v2)
      {
        (*(**v2 + 96))(*v2, v2 + 24, 0);
        v24(v23);
        result = (*(**v2 + 104))(*v2, v2 + 24);
      }

      else
      {
        result = v24(v23);
      }

      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_38;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_38;
      }

      v20 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v20 & 0xFE) != 2)
      {
        goto LABEL_38;
      }

      result = MEMORY[0xFFFFFC0D8];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v21 = MEMORY[0xFFFFFC0D8];
      if (v21 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v3, v29);
    v18 = *(v3 + 3);
    if (!v18)
    {
      lsl::MemoryManager::writeProtect(v3, 0);
      v18 = *(v3 + 3);
    }

    *(v3 + 3) = v18 + 1;
    lsl::Lock::unlock(v29[0]);
    if (*v2)
    {
      (*(**v2 + 96))(*v2, v2 + 24, 0);
      v24(v23);
      (*(**v2 + 104))(*v2, v2 + 24);
    }

    else
    {
      v24(v23);
    }

    lsl::MemoryManager::lockGuard(v3, v29);
    v19 = *(v3 + 3) - 1;
    *(v3 + 3) = v19;
    if (!v19)
    {
      lsl::MemoryManager::writeProtect(v3, 1);
    }

    return lsl::Lock::unlock(v29[0]);
  }

  return result;
}

uint64_t dyld4::ReadOnlyCallback<void (*)(char const*)>::operator()<char const*&>(lsl::MemoryManager *a1, void *a2)
{
  v11 = lsl::MemoryManager::memoryManager(a1);
  result = v11[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v4, v5, v6, v7, v8, v9, v10, v26[0]);
    if (result)
    {
      v19 = v11[6];
      v26[1] = 0x40000000;
      v26[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPKcEEclIJRS5_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESH__block_invoke;
      v26[3] = &__block_descriptor_tmp_253;
      v26[4] = a1;
      v26[5] = a2;
      return lsl::ProtectedStack::withNestedRegularStack(v19, v26, v13, v14, v15, v16, v17, v18, _NSConcreteStackBlock);
    }
  }

  if (*(v11 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v22 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v22 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v23 = MEMORY[0xFFFFFC0D8];
          if (v23 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v24 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v24 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v25 = MEMORY[0xFFFFFC0D0];
                  if (v25 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v20 = *a1;
  v21 = *a2;

  return v20(v21);
}

uint64_t dyld4::LibSystemHelpersWrapper::free(dyld4::LibSystemHelpersWrapper *this, void *a2)
{
  v27 = a2;
  v11 = lsl::MemoryManager::memoryManager(this);
  result = v11[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v4, v5, v6, v7, v8, v9, v10, v25);
    if (result)
    {
      v19 = v11[6];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 0x40000000;
      v28[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper4freeEPvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES8__block_invoke;
      v28[3] = &__block_descriptor_tmp_165;
      v28[4] = this;
      v28[5] = &v27;
      return lsl::ProtectedStack::withNestedRegularStack(v19, v28, v13, v14, v15, v16, v17, v18, v26);
    }
  }

  if (*(v11 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v21 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v21 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v22 = MEMORY[0xFFFFFC0D8];
          if (v22 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*(**this + 16))(*this, a2);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v23 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v23 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v24 = MEMORY[0xFFFFFC0D0];
                  if (v24 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v20 = *(**this + 16);

  return v20();
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper4freeEPvEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES8__block_invoke(uint64_t a1)
{
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_10;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_10;
  }

  v1 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v1 & 0xFE) != 2)
  {
    goto LABEL_10;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v2 = MEMORY[0xFFFFFC0D8];
  if (v2 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) || ((*(***(a1 + 32) + 16))(**(a1 + 32), **(a1 + 40)), !MEMORY[0xFFFFFC10C]) || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v3 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v3 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]), __isb(0xFu), v4 = MEMORY[0xFFFFFC0D0], v4 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
  {
LABEL_10:
    __break(1u);
    JUMPOUT(0x487B8);
  }

  return 0;
}

uint64_t dyld4::APIs::dlclose(dyld4::APIs *this, unint64_t a2)
{
  v4 = *(this + 14);
  dyld4::RuntimeLocks::takeDlopenLockBeforeFork(v4);
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dlclose(%p)\n", a2);
  }

  v15 = 520617992;
  v16 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  dyld3::ScopedTimer::startTimer(&v15, v5, v6, v7, v8, v9, v10, v11);
  v12 = 0;
  if (a2 != -5 && a2 != -2)
  {
    if (a2)
    {
      v13 = (a2 & 0xFFFFFFFFFFFFFFFELL ^ &dword_0);
    }

    else
    {
      v13 = 0;
    }

    if (dyld4::APIs::validLoader(this, v13))
    {
      dyld4::RuntimeState::decDlRefCount(this, v13);
      dyld4::APIs::clearErrorString(this);
      v12 = 0;
    }

    else
    {
      dyld4::APIs::setErrorString(this, "dlclose(%p): invalid handle", a2);
      v12 = 0xFFFFFFFFLL;
    }
  }

  dyld3::ScopedTimer::endTimer(&v15);
  dyld4::RuntimeLocks::releaseDlopenLockInForkParent(v4);
  return v12;
}

void dyld4::RuntimeState::decDlRefCount(dyld4::RuntimeState *this, const dyld4::Loader *a2)
{
  v31 = a2;
  if ((*(a2 + 2) & 0x20) == 0)
  {
    v2 = *(this + 14);
    v32[0] = this;
    v32[1] = &v31;
    v10 = lsl::MemoryManager::memoryManager(this);
    *&v35 = v2;
    *(&v35 + 1) = v32;
    v11 = *(v10 + 6);
    if (v11 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v11))
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v12 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v12 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v13 = MEMORY[0xFFFFFC0D0];
            if (v13 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v14 = *(v10 + 6);
              v33[0] = _NSConcreteStackBlock;
              v33[1] = 0x40000000;
              v33[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks37withLoadersWriteLockAndProtectedStackIZNS2_12RuntimeState13decDlRefCountEPKNS2_6LoaderEE3__0EEvT_EUlvE_EEvSA__block_invoke;
              v33[3] = &__block_descriptor_tmp_184;
              v34 = v35;
              lsl::ProtectedStack::withNestedProtectedStack(v14, v33, v4, v5, v6, v7, v8, v9, v30);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v15 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v15 & 0xFE) == 2)
                  {
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v16 = MEMORY[0xFFFFFC0D8];
                    if (v16 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_33:
      __break(1u);
      return;
    }

    if (*(v10 + 33) == 1)
    {
      if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
      {
        dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0>(dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0)::{lambda(void)#1}::operator()(&v35, v3, v4, v5, v6, v7, v8, v9);
        return;
      }

      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_33;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      v17 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v17 & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v18 = MEMORY[0xFFFFFC0D0];
      if (v18 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_33;
      }

      dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0>(dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0)::{lambda(void)#1}::operator()(&v35, 0xFFFFFC0D0, v4, v5, v6, v7, v8, v9);
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_33;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      v19 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v19 & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v20 = MEMORY[0xFFFFFC0D8];
      if (v20 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_33;
      }
    }

    else
    {
      lsl::MemoryManager::lockGuard(v10, v33);
      v21 = *(v10 + 3);
      if (!v21)
      {
        lsl::MemoryManager::writeProtect(v10, 0);
        v21 = *(v10 + 3);
      }

      *(v10 + 3) = v21 + 1;
      lsl::Lock::unlock(v33[0]);
      dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0>(dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0)::{lambda(void)#1}::operator()(&v35, v22, v23, v24, v25, v26, v27, v28);
      lsl::MemoryManager::lockGuard(v10, v33);
      v29 = *(v10 + 3) - 1;
      *(v10 + 3) = v29;
      if (!v29)
      {
        lsl::MemoryManager::writeProtect(v10, 1);
      }

      lsl::Lock::unlock(v33[0]);
    }
  }
}

kern_return_t mach_port_mod_refs(ipc_space_t task, mach_port_name_t name, mach_port_right_t right, mach_port_delta_t delta)
{
  v8 = _kernelrpc_mach_port_mod_refs_trap(task, name, right, delta);
  if (v8 == 268435459)
  {
    v14 = 0x100000000;
    v15 = name;
    v16 = right;
    v17 = delta;
    reply_port = mig_get_reply_port();
    *&v13.msgh_bits = 0x2C00001513;
    *&v13.msgh_remote_port = __PAIR64__(reply_port, task);
    *&v13.msgh_voucher_port = 0xC8800000000;
    v10 = mach_msg2_internal(&v13, 0x200000003, 0x2C00001513, __PAIR64__(reply_port, task), 0xC8800000000, (reply_port << 32), &stru_20.segname[4], 0);
    v8 = v10;
    if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
    {
      if (v10)
      {
        mig_dealloc_reply_port(v13.msgh_local_port);
        return v8;
      }

      if (v13.msgh_id == 71)
      {
        v8 = -308;
      }

      else if (v13.msgh_id == 3308)
      {
        v8 = -300;
        if ((v13.msgh_bits & 0x80000000) == 0 && *&v13.msgh_size == 36)
        {
          v8 = v15;
          if (!v15)
          {
            return v8;
          }
        }
      }

      else
      {
        v8 = -301;
      }

      mach_msg_destroy(&v13);
    }
  }

  return v8;
}

uint64_t _os_unfair_lock_lock_slow(atomic_uint *a1, int a2, void *a3, unsigned int a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if ((a2 & 0xFCFAFFFF) != 0)
  {
    qword_A82F8 = "BUG IN CLIENT OF LIBPLATFORM: Invalid options";
    qword_A8328 = a2 & 0xFEFFFFFF;
    __break(0xB001u);
LABEL_29:
    _os_unfair_lock_recursive_abort(v8);
  }

  v8 = a4;
  v12 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        do
        {
          v13 = *a1;
          if (!*a1)
          {
            atomic_compare_exchange_strong_explicit(a1, &v13, v8 & ~v12, memory_order_acquire, memory_order_acquire);
            if (!v13)
            {
              return 1;
            }
          }

          v14 = v13 | 1;
          v15 = (a2 & 0x1000000) != 0 && v14 == -1;
          v16 = !v15;
          if (v14 == v8 && v16 != 0)
          {
            goto LABEL_29;
          }

          if (v13 == (v13 & 0xFFFFFFFE))
          {
            break;
          }

          v18 = v13;
          atomic_compare_exchange_strong_explicit(a1, &v18, v13 & 0xFFFFFFFE, memory_order_relaxed, memory_order_relaxed);
          v15 = v18 == v13;
          v13 &= ~1u;
        }

        while (!v15);
        result = __ulock_wait2((a2 | 0x1000002u), a1, v13, a3, 0, a6, a7, a8);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (result)
        {
          v12 = 1;
        }
      }

      if (result <= -5)
      {
        break;
      }

      if (result != -4)
      {
        goto LABEL_34;
      }
    }
  }

  while (result == -14);
  if (result == -60)
  {
    return 0;
  }

  if (result == -105)
  {
    _os_unfair_lock_corruption_abort(v13);
  }

LABEL_34:
  qword_A82F8 = "BUG IN LIBPLATFORM: ulock_wait2 failure";
  qword_A8328 = -result;
  __break(0xB001u);
  return result;
}

uint64_t dyld4::LibSystemHelpersWrapper::exit(dyld4::LibSystemHelpersWrapper *this, uint64_t a2)
{
  v25 = a2;
  v11 = lsl::MemoryManager::memoryManager(this);
  result = v11[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v4, v5, v6, v7, v8, v9, v10, v23);
    if (result)
    {
      v22 = v11[6];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 0x40000000;
      v26[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper4exitEiEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke;
      v26[3] = &__block_descriptor_tmp_27;
      v26[4] = this;
      v26[5] = &v25;
      result = lsl::ProtectedStack::withNestedRegularStack(v22, v26, v13, v14, v15, v16, v17, v18, v24);
      goto LABEL_14;
    }
  }

  if (*(v11 + 33) == 1)
  {
    v19 = 0xFFFFFC10CLL;
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_14;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  do
  {
    result = (*(**this + 112))(*this, a2);
LABEL_8:
    if (!*v19)
    {
      break;
    }

    if ((*v19 & 0xFE) != 2)
    {
      break;
    }

    v20 = *v19;
    __dmb(0xAu);
    if ((v20 & 0xFE) != 2)
    {
      break;
    }

    result = MEMORY[0xFFFFFC0D8];
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
    __isb(0xFu);
    v21 = MEMORY[0xFFFFFC0D8];
  }

  while (v21 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)));
LABEL_14:
  __break(1u);
  return result;
}

ssize_t ___ZNK5dyld414PrebuiltLoader21invalidateInIsolationERKNS_12RuntimeStateE_block_invoke(ssize_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3 >= 11)
  {
    *a4 = 1;
    return result;
  }

  v6 = result;
  v19 = 0u;
  v20 = 0u;
  v7 = *(result + 40);
  result = dyld4::ProcessConfig::fileExists(*(*(result + 48) + 8), a2, &v19, 0);
  if (result)
  {
    if (!v7 || !v7[21] || (v9 = v7 + v7[21], v9[52] != 1))
    {
      v16 = *(v6 + 48);
      if (*(v16[1] + 327) == 1)
      {
        if ((v7[2] & 2) != 0 || (v17 = v7[3] & 0x7FFF, v16[48] <= v17))
        {
          if (v7[16])
          {
            v18 = v7 + v7[16];
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = *(v16[47] + 8 * v17);
        }

        result = dyld4::console("found '%s' which invalidates PrebuiltLoader for '%s'\n", v8, a2, v18);
      }

      goto LABEL_25;
    }

    if (*(&v19 + 1) != *(v9 + 1) || BYTE8(v20) != 1 || ((v11 = *(v9 + 2), v10 = *(v9 + 3), v19 == v11) ? (v12 = v20 == v10) : (v12 = 0), !v12))
    {
      v13 = *(v6 + 48);
      if (*(v13[1] + 327) == 1)
      {
        if ((v7[2] & 2) != 0 || (v14 = v7[3] & 0x7FFF, v13[48] <= v14))
        {
          if (v7[16])
          {
            v15 = v7 + v7[16];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = *(v13[47] + 8 * v14);
        }

        result = dyld4::console("found '%s' with different inode/mtime than PrebuiltLoader for '%s'\n", v8, a2, v15);
      }

LABEL_25:
      *(*(*(v6 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  return result;
}

void dyld3::MachOAnalyzer::forEachTerminator(mach_o::Error *a1, Diagnostics *a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x6802000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18[3] = v18;
  v18[4] = 1;
  v19 = 0;
  address = 0;
  size = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___ZNK5dyld313MachOAnalyzer17forEachTerminatorER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjE_block_invoke;
  v12[3] = &unk_A3DF0;
  v12[4] = &v13;
  mach_o::Header::forEachSegment(a1, v12);
  if (v14[10])
  {
    v8 = mach_o::Header::preferredLoadAddress(a1);
    Slide = dyld3::MachOLoaded::getSlide(a1);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = ___ZNK5dyld313MachOAnalyzer17forEachTerminatorER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjE_block_invoke_2;
    v10[3] = &unk_A3E18;
    v11 = dyld3::MachOFile::pointerSize(a1);
    v10[6] = Slide;
    v10[7] = a2;
    v10[4] = a4;
    v10[5] = &v13;
    v10[8] = a3;
    v10[9] = v8;
    dyld3::MachOFile::forEachSection(a1, v10);
  }

  else
  {
    Diagnostics::error(a2, "no exeutable segments");
  }

  _Block_object_dispose(&v13, 8);
  v19 = 0;
  if (address)
  {
    vm_deallocate(mach_task_self_, address, size);
  }
}

double ___ZNK5dyld313MachOAnalyzer17forEachTerminatorER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjE_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 47) & 4) != 0)
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(a2 + 24) + *(a2 + 16);
    v5.n128_u64[0] = *(a2 + 16);
    v5.n128_u64[1] = v3;
    v6 = *(a2 + 36);
    *&result = dyld3::OverflowSafeArray<dyld3::SegmentRanges::SegmentRange,4294967295ull>::push_back((v2 + 64), &v5).n128_u64[0];
  }

  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer17forEachTerminatorER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjE_block_invoke_2(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  if (*(a2 + 44) == 10)
  {
    v4 = result;
    v5 = a2[8];
    v6 = *(result + 80);
    if (v5 % v6)
    {
      v7 = a2[3];
      v28 = a2[1];
      v30 = *a2;
      v26 = a2[2];
      result = Diagnostics::error(*(result + 56), "terminator section %.*s/%.*s has bad size");
    }

    else
    {
      v8 = *(result + 48) + a2[7];
      if (v8 % v6)
      {
        v9 = a2[3];
        v29 = a2[1];
        v31 = *a2;
        v27 = a2[2];
        result = Diagnostics::error(*(result + 56), "terminator section %.*s/%.*s is not pointer aligned");
      }

      else
      {
        v10 = (v8 + v5);
        if (v6 == 8)
        {
          if (v5 < 1)
          {
            return result;
          }

          while (1)
          {
            v11 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(*(v4 + 64), *v8);
            v12 = *(*(v4 + 40) + 8);
            v13 = *(v12 + 80);
            if (!v13)
            {
              break;
            }

            v14 = *(v12 + 64);
            v15 = 24 * v13;
            v16 = (v14 + 8);
            while (*(v16 - 1) > v11 || *v16 <= v11)
            {
              v16 += 3;
              v15 -= 24;
              if (!v15)
              {
                goto LABEL_25;
              }
            }

            result = (*(*(v4 + 32) + 16))(*(v4 + 32), (v11 - *(v4 + 72)));
            v8 += 8;
            if (v8 >= v10)
            {
              return result;
            }
          }

LABEL_25:
          v23 = *(v4 + 56);
          v25 = v11;
          v24 = "terminator 0x%0llX does not point within executable segment";
        }

        else
        {
          if (v5 < 1)
          {
            return result;
          }

          while (1)
          {
            v17 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(*(v4 + 64), *v8);
            v18 = *(*(v4 + 40) + 8);
            v19 = *(v18 + 80);
            if (!v19)
            {
              break;
            }

            v20 = *(v18 + 64);
            v21 = 24 * v19;
            v22 = (v20 + 8);
            while (*(v22 - 1) > v17 || *v22 <= v17)
            {
              v22 += 3;
              v21 -= 24;
              if (!v21)
              {
                goto LABEL_26;
              }
            }

            result = (*(*(v4 + 32) + 16))(*(v4 + 32), (v17 - *(v4 + 72)));
            v8 += 4;
            if (v8 >= v10)
            {
              return result;
            }
          }

LABEL_26:
          v23 = *(v4 + 56);
          v25 = v17;
          v24 = "terminator 0x%0X does not point within executable segment";
        }

        result = Diagnostics::error(v23, v24, v25);
      }
    }

    *a3 = 1;
  }

  return result;
}

const char *dyld4::APIs::dyld_shared_cache_file_path(dyld4::APIs *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 408);
  if (*(v1 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_shared_cache_file_path() => %s\n", v2);
  }

  return v2;
}

char *lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild(uint64_t a1, unsigned int a2, lsl::Allocator::Pool **this)
{
  v3 = *(a1 + 240);
  if (v3 < 0)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  LOBYTE(v4) = *(a1 + 240);
  if (v4 >= 7u)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  v6 = a1 + 168;
  v7 = (a1 + 168 + 8 * a2);
  v8 = *(*v7 + 240);
  v9 = v8;
  v10 = v8 & 0x7F;
  if (v8 >= 0)
  {
    v11 = 7;
  }

  else
  {
    v11 = 10;
  }

  if (v10 != v11)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  if (v9 >= 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = 5;
  }

  v15 = 3 * v3;
  if (24 * a2 != 8 * v15)
  {
    v16 = a1 + 8 * v15;
    v17 = v16;
    do
    {
      v18 = *(v17 - 24);
      v17 -= 24;
      *v16 = v18;
      *(v16 + 8) = *(v17 + 8);
      v16 -= 24;
    }

    while (v17 != a1 + 24 * a2);
    v4 = *(a1 + 240);
    if (v4 < 0)
    {
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
    }
  }

  v19 = v4 + 1;
  v20 = v6 + 8 * a2 + 8;
  v21 = v6 + 8 * v19;
  if (v20 != v21)
  {
    memmove((v20 + 8), v20, v21 - v20);
    v19 = *(a1 + 240) + 1;
  }

  *(a1 + 240) = v19;
  v22 = *v7 + 24 * v14;
  v23 = a1 + 24 * a2;
  *v23 = *v22;
  *(v23 + 8) = *(v22 + 8);
  result = lsl::Allocator::aligned_alloc(this, 0x100uLL, 0x100uLL);
  v25 = result;
  v26 = *(*v7 + 240);
  result[240] = v26 & 0x80;
  if (v26 < 0)
  {
    v27 = 0uLL;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 10) = 0u;
  }

  else
  {
    *(result + 20) = 0;
    v27 = 0uLL;
  }

  *(result + 8) = v27;
  *(result + 9) = v27;
  *(result + 6) = v27;
  *(result + 7) = v27;
  *(result + 4) = v27;
  *(result + 5) = v27;
  *(result + 2) = v27;
  *(result + 3) = v27;
  *result = v27;
  *(result + 1) = v27;
  if (*(a1 + 240) < 0)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
  }

  v28 = v10 + ~v14;
  v7[1] = result;
  v29 = *v7;
  if (v28)
  {
    v30 = v29 + 24 * v14 + 24;
    v31 = v30 + 24 * v28;
    v32 = result;
    do
    {
      *v32 = *v30;
      *(v32 + 8) = *(v30 + 8);
      v30 += 24;
      v32 += 24;
    }

    while (v30 != v31);
    v29 = *v7;
  }

  v33 = *(v29 + 240);
  if ((v33 & 0x80000000) == 0)
  {
    if (result[240] < 0)
    {
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
    }

    result = memmove(result + 168, (v29 + 8 * v14 + 176), 8 * v28 + 8);
    v29 = *v7;
    LOBYTE(v33) = *(*v7 + 240);
  }

  *(v29 + 240) = v33 + ~v28;
  v34 = v25[240] + v28;
  v25[240] = v34;
  if (v34 >= 0)
  {
    v35 = 7;
  }

  else
  {
    v35 = 10;
  }

  if ((v34 & 0x7F) == v35 || ((v36 = *(v29 + 240), v37 = v36, v38 = v36 & 0x7F, v37 >= 0) ? (v39 = 7) : (v39 = 10), v38 == v39))
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild();
  }

  return result;
}

void objc_visitor::Visitor::forEachProtocol(unsigned int *a1, uint64_t a2)
{
  objc_visitor::Visitor::findSection(a1, objc_visitor::Visitor::findObjCDataSection(char const*)const::objcDataSegments, 3, "__objc_protolist", v17);
  if (v19 == 1)
  {
    v4 = v18;
    v5 = *a1;
    v6 = v18 / v5;
    if (v18 % v5)
    {
      objc_visitor::Visitor::forEachProtocol();
    }

    v7 = lsl::Allocator::Pool::allocator(v17);
    if (v4 >= v5)
    {
      v8 = v7;
      v9 = 0;
      v10 = v6 - 1;
      do
      {
        metadata_visitor::Visitor::getField(a1, (v8 + v9 * *a1), v16);
        metadata_visitor::Visitor::resolveRebase(a1, v16, &v14);
        v12 = v14;
        v13 = v15;
        v11 = 0;
        (*(a2 + 16))(a2, &v12, &v11);
        if (v10 == v9)
        {
          break;
        }

        ++v9;
      }

      while ((v11 & 1) == 0);
    }
  }
}

uint64_t ___ZN5dyld4L40forEachProtocolSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_3(uint64_t a1, lsl::Allocator::Pool *a2)
{
  objc_visitor::Category::getClassMethods(a2, *(a1 + 40), v8);
  objc_visitor::Protocol::getClassMethods(a2, *(a1 + 40), v7);
  objc_visitor::Protocol::getOptionalInstanceMethods(a2, *(a1 + 40), v6);
  objc_visitor::Protocol::getOptionalClassMethods(a2, *(a1 + 40), &v5);
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 32) + 16))();
  return (*(*(a1 + 32) + 16))();
}

uint64_t objc_visitor::Protocol::getClassMethods@<X0>(lsl::Allocator::Pool *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = lsl::Allocator::Pool::allocator(a1);
  v7 = 16;
  if (v5 != 4)
  {
    v7 = 32;
  }

  metadata_visitor::Visitor::getField(a2, (v6 + v7), v9);
  return metadata_visitor::Visitor::resolveOptionalRebase(a2, v9, a3);
}

uint64_t objc_visitor::Category::getClassMethods@<X0>(lsl::Allocator::Pool *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = lsl::Allocator::Pool::allocator(a1);
  v7 = 12;
  if (v5 != 4)
  {
    v7 = 24;
  }

  metadata_visitor::Visitor::getField(a2, (v6 + v7), v9);
  return metadata_visitor::Visitor::resolveOptionalRebase(a2, v9, a3);
}

uint64_t objc_visitor::Protocol::getOptionalClassMethods@<X0>(lsl::Allocator::Pool *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = lsl::Allocator::Pool::allocator(a1);
  v7 = 24;
  if (v5 != 4)
  {
    v7 = 48;
  }

  metadata_visitor::Visitor::getField(a2, (v6 + v7), v9);
  return metadata_visitor::Visitor::resolveOptionalRebase(a2, v9, a3);
}

uint64_t metadata_visitor::Visitor::resolveOptionalRebase@<X0>(uint64_t this@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = **a2;
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    v4 = v3 - *(this + 8) + *(this + 16);
    *a3 = v3;
    *(a3 + 8) = v4;
    LOBYTE(v3) = 1;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
  }

  *(a3 + 24) = v3;
  return this;
}

uint64_t objc_visitor::Protocol::getOptionalInstanceMethods@<X0>(lsl::Allocator::Pool *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = lsl::Allocator::Pool::allocator(a1);
  v7 = 20;
  if (v5 != 4)
  {
    v7 = 40;
  }

  metadata_visitor::Visitor::getField(a2, (v6 + v7), v9);
  return metadata_visitor::Visitor::resolveOptionalRebase(a2, v9, a3);
}

uint64_t ___ZN5dyld4L40forEachProtocolSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_2(uint64_t a1, objc_visitor::MethodList *this)
{
  result = objc_visitor::MethodList::numMethods(this);
  if (result)
  {
    result = objc_visitor::MethodList::usesRelativeOffsets(this);
    if ((result & 1) == 0)
    {
      result = objc_visitor::MethodList::numMethods(this);
      if (result)
      {
        v5 = result;
        for (i = 0; i != v5; ++i)
        {
          Method = objc_visitor::MethodList::getMethod(this, *(a1 + 40), i, &v8);
          result = (*(*(a1 + 32) + 16))(Method);
        }
      }
    }
  }

  return result;
}

double objc_visitor::MethodList::getMethod@<D0>(lsl::Allocator::Pool *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    objc_visitor::MethodList::getMethod();
  }

  v7 = lsl::Allocator::Pool::allocator(a1);
  if (!v7)
  {
    objc_visitor::MethodList::getMethod();
  }

  v8 = v7;
  metadata_visitor::Visitor::getField(a2, v7 + (*v7 & 0xFFFCu) * a3 + 8, &v11);
  if (*v8 >= 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = (*v8 >> 30) & 1;
  }

  result = *&v11;
  *(a4 + 8) = v11;
  *(a4 + 24) = v12;
  *a4 = v9;
  return result;
}

uint64_t objc_visitor::MethodList::usesRelativeOffsets(objc_visitor::MethodList *this)
{
  if (*(this + 24) != 1)
  {
    return 0;
  }

  v1 = lsl::Allocator::Pool::allocator(this);
  if (!v1)
  {
    objc_visitor::MethodList::usesRelativeOffsets();
  }

  return *v1 >> 31;
}

uint64_t objc_visitor::MethodList::numMethods(objc_visitor::MethodList *this)
{
  if (*(this + 24) != 1)
  {
    return 0;
  }

  v1 = lsl::Allocator::Pool::allocator(this);
  if (!v1)
  {
    objc_visitor::MethodList::numMethods();
  }

  return *(v1 + 4);
}

int *objc_visitor::Method::getNameVMAddr(int *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (!*result)
  {
    v5 = *lsl::Allocator::Pool::allocator((result + 2));
    v6 = metadata_visitor::ResolvedValue::vmAddress((v3 + 2));
    if ((v7 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    metadata_visitor::Visitor::getValueFor(a2, v6 + v5, 1, v9);
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    objc_visitor::Method::getNameField(result, a2, v9);
LABEL_8:
    metadata_visitor::Visitor::resolveRebase(a2, v9, v8);
    return metadata_visitor::ResolvedValue::vmAddress(v8);
  }

  if (v4 == 1)
  {
    objc_visitor::Method::getNameVMAddr();
  }

  return result;
}

uint64_t ___ZN5dyld4L40forEachProtocolSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke(void *a1, int *a2)
{
  objc_visitor::Method::getNameVMAddr(a2, a1[5]);
  v5 = v4;
  objc_visitor::Method::getNameField(a2, a1[5], v10);
  metadata_visitor::ResolvedValue::vmAddress(v10);
  v7 = v6;
  objc_visitor::Method::getName(a2, a1[5]);
  if ((v5 & 1) == 0 || (v7 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = a1[6];
  return (*(a1[4] + 16))();
}

int *objc_visitor::Method::getNameField@<X0>(int *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*result == 2)
  {
    v6 = lsl::Allocator::Pool::allocator((result + 2));

    return metadata_visitor::Visitor::getField(a2, v6, a3);
  }

  else
  {
    if (v4 == 1)
    {
      objc_visitor::Method::getNameField();
    }

    if (!v4)
    {
      objc_visitor::Method::getNameField();
    }
  }

  return result;
}

int *objc_visitor::Method::getName(int *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (!*result)
  {
    v5 = *lsl::Allocator::Pool::allocator((result + 2));
    v6 = metadata_visitor::ResolvedValue::vmAddress((v3 + 2));
    if ((v7 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    metadata_visitor::Visitor::getValueFor(a2, v6 + v5, 1, v9);
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    objc_visitor::Method::getNameField(result, a2, v9);
LABEL_8:
    metadata_visitor::Visitor::resolveRebase(a2, v9, v8);
    return lsl::Allocator::Pool::allocator(v8);
  }

  if (v4 == 1)
  {
    objc_visitor::Method::getName();
  }

  return result;
}

void ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  if (v5)
  {
    v6 = v5 - **(a1 + 32);
    if ((dyld3::MachOAnalyzer::objcMethodListIsRelative(**(a1 + 40), v6) & 1) == 0)
    {
      v7 = *(a1 + 56);
      v8 = (**(a1 + 48) + v6);
      v9 = *v8 | 1;
      if (*(*(v7 + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(v7, "fixup: *0x%012lX = 0x%012lX <mark method list uniqued>\n", v8, v9);
      }

      *v8 = v9;
    }
  }

  v10 = a3[4];
  if (v10)
  {
    v11 = v10 - **(a1 + 32);
    if ((dyld3::MachOAnalyzer::objcMethodListIsRelative(**(a1 + 40), v11) & 1) == 0)
    {
      v12 = *(a1 + 56);
      v13 = (**(a1 + 48) + v11);
      v14 = *v13 | 1;
      if (*(*(v12 + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(v12, "fixup: *0x%012lX = 0x%012lX <mark method list uniqued>\n", v13, v14);
      }

      *v13 = v14;
    }
  }

  v15 = a3[5];
  if (v15)
  {
    v16 = v15 - **(a1 + 32);
    if ((dyld3::MachOAnalyzer::objcMethodListIsRelative(**(a1 + 40), v16) & 1) == 0)
    {
      v17 = *(a1 + 56);
      v18 = (**(a1 + 48) + v16);
      v19 = *v18 | 1;
      if (*(*(v17 + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(v17, "fixup: *0x%012lX = 0x%012lX <mark method list uniqued>\n", v18, v19);
      }

      *v18 = v19;
    }
  }

  v20 = a3[6];
  if (v20)
  {
    v21 = v20 - **(a1 + 32);
    if ((dyld3::MachOAnalyzer::objcMethodListIsRelative(**(a1 + 40), v21) & 1) == 0)
    {
      v22 = *(a1 + 56);
      v23 = (**(a1 + 48) + v21);
      v24 = *v23 | 1;
      if (*(*(v22 + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(v22, "fixup: *0x%012lX = 0x%012lX <mark method list uniqued>\n", v23, v24);
      }

      *v23 = v24;
    }
  }
}

uint64_t dyld3::MachOAnalyzer::objcMethodListIsRelative(dyld3::MachOAnalyzer *this, uint64_t a2)
{
  if (a2)
  {
    return *(this + a2) >> 31;
  }

  else
  {
    return 0;
  }
}

uint64_t dyld4::ReadOnlyCallback<void({block_pointer})(dyld_shared_cache_dylib_text_info const*)>::operator()<dyld_shared_cache_dylib_text_info*>(lsl::MemoryManager *a1, uint64_t *a2)
{
  v11 = lsl::MemoryManager::memoryManager(a1);
  v12 = *(v11 + 6);
  if (v12 && lsl::ProtectedStack::onStackInCurrentFrame(v12, v4, v5, v6, v7, v8, v9, v10, v28[0]))
  {
    v19 = *(v11 + 6);
    v28[1] = 0x40000000;
    v28[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIU13block_pointerFvPK33dyld_shared_cache_dylib_text_infoEEclIJPS4_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESI__block_invoke;
    v28[3] = &__block_descriptor_tmp_239;
    v28[4] = a1;
    v28[5] = a2;
    return lsl::ProtectedStack::withNestedRegularStack(v19, v28, v13, v14, v15, v16, v17, v18, _NSConcreteStackBlock);
  }

  if (*(v11 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    JUMPOUT(0x4A584);
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v23 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v23 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v24 = MEMORY[0xFFFFFC0D8];
          if (v24 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v25 = *a2;
            (*(*a1 + 16))();
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v26 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v26 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v27 = MEMORY[0xFFFFFC0D0];
                  if (v27 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v21 = *a2;
  v22 = *(*a1 + 16);

  return v22();
}

uint64_t ___ZN5dyld44APIs35dyld_shared_cache_find_iterate_textEPKhPPKcNS_16ReadOnlyCallbackIU13block_pointerFvPK33dyld_shared_cache_dylib_text_infoEEE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v7[0] = 2;
  v7[1] = a2;
  v7[2] = a3;
  v9 = a5;
  v8 = *a4;
  v10 = a2 - *(*(*(a1 + 32) + 8) + 24);
  v6 = v7;
  return dyld4::ReadOnlyCallback<void({block_pointer})(dyld_shared_cache_dylib_text_info const*)>::operator()<dyld_shared_cache_dylib_text_info*>((a1 + 40), &v6);
}

uint64_t dyld4::APIs::dyld_shared_cache_find_iterate_text(dyld4::RuntimeState *this, dyld4::RuntimeState *a2, char **a3, uint64_t a4, unint64_t *a5)
{
  v9 = *(this + 1);
  if (*(v9 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_shared_cache_find_iterate_text()\n");
    v9 = *(this + 1);
  }

  v25 = 0;
  v10 = *(v9 + 368);
  if (!v10 || ((v26 = 0uLL, DyldSharedCache::getUUID(v10, &v26), v26.n128_u64[0] == *a2) ? (v11 = v26.n128_u64[1] == *(a2 + 1)) : (v11 = 0), !v11))
  {
    CacheInDirAndMap = dyld4::findCacheInDirAndMap(this, a2, "/System/Library/Caches/com.apple.dyld/", &v25, a5);
    if (!CacheInDirAndMap)
    {
      v13 = 0;
      while (1)
      {
        v14 = cryptexPrefixes[v13];
        v26.n128_u8[0] = 0;
        if (dyld4::Utils::concatenatePaths(&v26, v14, &stru_3C8.reloff) <= 0x3FF && dyld4::Utils::concatenatePaths(&v26, "/System/Library/Caches/com.apple.dyld/", &stru_3C8.reloff) <= 0x3FF)
        {
          CacheInDirAndMap = dyld4::findCacheInDirAndMap(this, a2, &v26, &v25, v15);
          if (CacheInDirAndMap)
          {
            break;
          }
        }

        if (++v13 == 3)
        {
          CacheInDirAndMap = dyld4::findCacheInDirAndMap(this, a2, "/System/DriverKit/System/Library/dyld/", &v25, v15);
          if (!CacheInDirAndMap)
          {
            v17 = 0;
            while (1)
            {
              v18 = cryptexPrefixes[v17];
              v26.n128_u8[0] = 0;
              if (dyld4::Utils::concatenatePaths(&v26, v18, &stru_3C8.reloff) <= 0x3FF && dyld4::Utils::concatenatePaths(&v26, "/System/DriverKit/System/Library/dyld/", &stru_3C8.reloff) <= 0x3FF)
              {
                CacheInDirAndMap = dyld4::findCacheInDirAndMap(this, a2, &v26, &v25, v19);
                if (CacheInDirAndMap)
                {
                  break;
                }
              }

              if (++v17 == 3)
              {
                v20 = *a3;
                if (!*a3)
                {
                  return 0xFFFFFFFFLL;
                }

                v21 = a3 + 1;
                while (1)
                {
                  CacheInDirAndMap = dyld4::findCacheInDirAndMap(this, a2, v20, &v25, v19);
                  if (CacheInDirAndMap)
                  {
                    break;
                  }

                  v22 = *v21++;
                  v20 = v22;
                  result = 0xFFFFFFFFLL;
                  if (!v22)
                  {
                    return result;
                  }
                }

                goto LABEL_15;
              }
            }
          }

          break;
        }
      }
    }

LABEL_15:
    v10 = CacheInDirAndMap;
  }

  v26.n128_u64[0] = 0;
  v26.n128_u64[1] = &v26;
  v27 = 0x2000000000;
  v28 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 0x40000000;
  v24[2] = ___ZN5dyld44APIs35dyld_shared_cache_find_iterate_textEPKhPPKcNS_16ReadOnlyCallbackIU13block_pointerFvPK33dyld_shared_cache_dylib_text_infoEEE_block_invoke;
  v24[3] = &unk_A2470;
  v24[4] = &v26;
  DyldSharedCache::forEachRegion(v10, v24);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 0x40000000;
  v23[2] = ___ZN5dyld44APIs35dyld_shared_cache_find_iterate_textEPKhPPKcNS_16ReadOnlyCallbackIU13block_pointerFvPK33dyld_shared_cache_dylib_text_infoEEE_block_invoke_2;
  v23[3] = &unk_A2498;
  v23[4] = &v26;
  v23[5] = a4;
  DyldSharedCache::forEachImageTextSegment(v10, v23);
  if (v25)
  {
    munmap(v10, v25);
  }

  _Block_object_dispose(&v26, 8);
  return 0;
}

uint64_t ___ZN5dyld44APIs35dyld_shared_cache_find_iterate_textEPKhPPKcNS_16ReadOnlyCallbackIU13block_pointerFvPK33dyld_shared_cache_dylib_text_infoEEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  if (!*(v3 + 24))
  {
    *(v3 + 24) = a3;
  }

  return result;
}

const char *dyld4::APIs::dlerror(dyld4::APIs *this)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dlerror()");
  }

  v2 = *(this + 137);
  if (v2 == -1 || *(this + 1114) != 1)
  {
    return 0;
  }

  v3 = dyld4::LibSystemHelpersWrapper::pthread_getspecific((this + 160), v2);
  if (!v3 || (v4 = v3, !dyld4::LibSystemHelpersWrapper::malloc_size((this + 160), v3)) || *v4 != 1)
  {
    if (*(*(this + 1) + 324) == 1)
    {
      dyld4::RuntimeState::log(this, " => NULL\n");
    }

    return 0;
  }

  *v4 = 0;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, " => '%s'\n", v4 + 1);
  }

  return v4 + 1;
}

void *__cdecl _platform_memchr(void *__s, int __c, size_t __n)
{
  if (!__n)
  {
    return 0;
  }

  if ((__n & 0x8000000000000000) != 0)
  {
    v13 = vdupq_n_s8(__c);
    v14 = __s & 0xF;
    v15 = __s & 0xFFFFFFFFFFFFFFF0;
    v16 = *&algn_4AB70[-v14];
    for (i = vorrq_s8(vsubq_s8(*v15, v13), v16); ; i = vsubq_s8(v18, v13))
    {
      v16.i8[0] = vminvq_u8(i);
      if (!v16.i32[0])
      {
        break;
      }

      v18 = *(v15 + 16);
      v15 += 16;
    }

    v19 = vorrq_s8(vcgtq_u8(i, veorq_s8(v13, v13)), xmmword_4AB60);
    v19.i8[0] = vminvq_u8(v19);
    return (v15 + v19.u32[0]);
  }

  else
  {
    v3 = vdupq_n_s8(__c);
    v4 = __s & 0xF;
    v5 = __s & 0xFFFFFFFFFFFFFFF0;
    v6 = *&algn_4AB70[-v4];
    v7 = vorrq_s8(vsubq_s8(*v5, v3), v6);
    v8 = __n + v4;
    while (1)
    {
      v6.i8[0] = vminvq_u8(v7);
      if (!v6.i32[0])
      {
        break;
      }

      v10 = v8 > 0x10;
      v8 -= 16;
      if (!v10)
      {
        return 0;
      }

      v9 = *(v5 + 16);
      v5 += 16;
      v7 = vsubq_s8(v9, v3);
    }

    v12 = vorrq_s8(vcgtq_u8(v7, veorq_s8(v3, v3)), xmmword_4AB60);
    v12.i8[0] = vminvq_u8(v12);
    result = (v5 + v12.u32[0]);
    if (v12.u32[0] >= v8)
    {
      return 0;
    }
  }

  return result;
}

unint64_t _platform_strcmp_VARIANT_MTE(int8x16_t *a1, int8x16_t *a2)
{
  while ((a1 & 0xF) != 0)
  {
    v3 = a1->u8[0];
    a1 = (a1 + 1);
    v2 = v3;
    v4 = a2->u8[0];
    a2 = (a2 + 1);
    v5 = v2 - v4;
    if (v2 != v4 || v2 == 0)
    {
      return v5;
    }
  }

  v8 = a1->u8[0];
  v9 = a2->u8[0];
  __asm { MSR             TCO, #1 }

  if ((a2 & 0xF) != 0)
  {
    v14 = -a2 & 0xFF0;
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_10:
    while (1)
    {
      v15 = *a1++;
      v16 = v15;
      v17 = *a2++;
      v19 = vceqq_s8(v16, v17);
      v18 = vandq_s8(v16, v19);
      v19.i8[0] = vminvq_u8(v18);
      if (!v19.i32[0])
      {
        break;
      }

      v14 -= 16;
      if (!v14)
      {
LABEL_12:
        while (1)
        {
          v21 = a1->u8[0];
          a1 = (a1 + 1);
          v20 = v21;
          v22 = a2->u8[0];
          a2 = (a2 + 1);
          v23 = v20 - v22;
          if (v20 != v22 || v20 == 0)
          {
            break;
          }

          if ((a1 & 0xF) == 0)
          {
            v14 = 4080;
            goto LABEL_10;
          }
        }

        __asm { MSR             TCO, #0 }

        v26 = a1[-1].u8[15];
        v27 = a2[-1].u8[15];
        return v23;
      }
    }
  }

  else
  {
    do
    {
      v28 = *a1++;
      v29 = v28;
      v30 = *a2++;
      v19 = vceqq_s8(v29, v30);
      v18 = vandq_s8(v29, v19);
      v19.i8[0] = vminvq_u8(v18);
    }

    while (v19.i32[0]);
  }

  __asm { MSR             TCO, #0 }

  v32 = vorrq_s8(vcgtq_u8(v18, veorq_s8(v19, v19)), xmmword_4AC80);
  v32.i8[0] = vminvq_u8(v32);
  return a1[-1].u8[v32.u32[0]] - a2[-1].u8[v32.u32[0]];
}

uint64_t __abort_with_payload(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_abort_with_payload, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __bsdthread_create(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_bsdthread_create, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __bsdthread_ctl(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_bsdthread_ctl, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __bsdthread_register(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_bsdthread_register, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __bsdthread_terminate(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_bsdthread_terminate, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __chmod(const char *a1, mode_t a2)
{
  result = mac_syscall(SYS_chmod, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int connect(int a1, const sockaddr *a2, socklen_t a3)
{
  result = mac_syscall(SYS_connect, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __disable_threadsignal(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___disable_threadsignal, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __execve(const char *a1, char *const *a2, char *const *a3)
{
  result = mac_syscall(SYS_execve, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void _exit(int a1)
{
  mac_syscall(SYS_exit, a1);
  if (v1)
  {
    cerror_nocancel(v2);
  }
}

int __fchmod(int a1, mode_t a2)
{
  result = mac_syscall(SYS_fchmod, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __getdirentries64(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_getdirentries64, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __gettimeofday_with_mach(timeval *a1, void *a2)
{
  result = mac_syscall(SYS_gettimeofday, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __gettimeofday(timeval *a1, void *a2)
{
  result = mac_syscall(SYS_gettimeofday, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __ioctl(int a1, unint64_t a2, void *a3)
{
  result = mac_syscall(SYS_ioctl, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __kqueue_workloop_ctl(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_kqueue_workloop_ctl, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

off_t lseek(int a1, off_t a2, int a3)
{
  result = mac_syscall(SYS_lseek, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

int __open_dprotected_np(const char *a1, int a2, int a3, int a4)
{
  result = mac_syscall(SYS_open_dprotected_np, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __openat_dprotected_np(int a1, const char *a2, int a3, int a4, int a5)
{
  result = mac_syscall(SYS_openat_dprotected_np, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int pipe(int a1[2])
{
  v4 = mac_syscall(SYS_pipe, a1);
  if (v1)
  {
    return cerror_nocancel(v4);
  }

  *a1 = v4;
  a1[1] = v2;
  return 0;
}

int __posix_spawn(pid_t *a1, const char *a2, const posix_spawn_file_actions_t *a3, const posix_spawnattr_t *a4, char *const *a5, char *const *a6)
{
  result = mac_syscall(SYS_posix_spawn, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __proc_info_extended_id(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_proc_info_extended_id, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __process_policy(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_process_policy, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_cvbroad(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_cvbroad, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_cvclrprepost(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_cvclrprepost, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_cvsignal(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_cvsignal, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_cvwait(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_cvwait, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_mutexdrop(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_mutexdrop, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __psynch_mutexwait(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_psynch_mutexwait, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __pthread_canceled(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___pthread_canceled, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __pthread_kill(_opaque_pthread_t *a1, int a2)
{
  result = mac_syscall(SYS___pthread_kill, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __pthread_markcancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___pthread_markcancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __pthread_sigmask(int a1, const sigset_t *a2, sigset_t *a3)
{
  result = mac_syscall(SYS___pthread_sigmask, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

void __rename(const std::__fs::filesystem::path *__from, const std::__fs::filesystem::path *__to, std::error_code *__ec)
{
  mac_syscall(SYS_rename, __from, __to, __ec);
  if (v3)
  {
    cerror(v4);
  }
}

uint64_t __semwait_signal_nocancel(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___semwait_signal_nocancel, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t sendto(int a1, const void *a2, size_t a3, int a4, const sockaddr *a5, socklen_t a6)
{
  result = mac_syscall(SYS_sendto, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __shared_region_map_and_slide_2_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_shared_region_map_and_slide_2_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __sigwait(const sigset_t *a1, int *a2)
{
  result = mac_syscall(SYS___sigwait, a1, a2);
  if (v2)
  {
    return cerror(result);
  }

  return result;
}

int syscall(int a1, ...)
{
  va_start(va, a1);
  v3 = va_arg(va, void *);
  v4 = va_arg(va, void *);
  v5 = va_arg(va, void *);
  v6 = va_arg(va, void *);
  v7 = va_arg(va, void *);
  v8 = va_arg(va, void *);
  v9 = va_arg(va, void *);
  result = mac_syscall(SYS_syscall, a1, v3, v4, v5, v6, v7, v8, v9);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __terminate_with_payload(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_terminate_with_payload, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __ulock_wait(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_ulock_wait, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __ulock_wait2(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_ulock_wait2, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __ulock_wake(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_ulock_wake, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int __unlink(const char *a1)
{
  result = mac_syscall(SYS_unlink, a1);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

uint64_t __workq_kernreturn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_workq_kernreturn, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t __workq_open(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_workq_open, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int dup2(int a1, int a2)
{
  result = mac_syscall(SYS_dup2, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fgetattrlist(int a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  result = mac_syscall(SYS_fgetattrlist, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t fgetxattr(int fd, const char *name, void *value, size_t size, u_int32_t position, int options)
{
  result = mac_syscall(SYS_fgetxattr, fd, name, value, size, position, options);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fmount(const char *a1, int a2, int a3, void *a4)
{
  result = mac_syscall(SYS_fmount, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fsctl(const char *a1, unint64_t a2, void *a3, unsigned int a4)
{
  result = mac_syscall(SYS_fsctl, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fsetxattr(int fd, const char *name, const void *value, size_t size, u_int32_t position, int options)
{
  result = mac_syscall(SYS_fsetxattr, fd, name, value, size, position, options);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int fsync(int a1)
{
  result = mac_syscall(SYS_fsync, a1);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

int ftruncate(int a1, off_t a2)
{
  result = mac_syscall(SYS_ftruncate, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getattrlistbulk(int a1, void *a2, void *a3, size_t a4, uint64_t a5)
{
  result = mac_syscall(SYS_getattrlistbulk, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int getentropy(void *buffer, size_t size)
{
  result = mac_syscall(SYS_getentropy, buffer, size);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

gid_t getgid(void)
{
  result = mac_syscall(SYS_getgid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uid_t getuid(void)
{
  result = mac_syscall(SYS_getuid);
  if (v0)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t graftdmg(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_graftdmg, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int lstat64(const char *a1, stat *a2)
{
  v9 = mac_syscall(SYS_lstat64, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

uint64_t memorystatus_control(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_memorystatus_control, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mkdir(const char *a1, mode_t a2)
{
  result = mac_syscall(SYS_mkdir, a1, a2);
  if (v2)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int mount(const char *a1, const char *a2, int a3, void *a4)
{
  result = mac_syscall(SYS_mount, a1, a2, a3, a4);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t mremap_encrypted(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_mremap_encrypted, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t openbyid_np(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_openbyid_np, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t os_fault_with_payload(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_os_fault_with_payload, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t proc_rlimit_control(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_proc_rlimit_control, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

ssize_t pwrite(int __fd, const void *__buf, size_t __nbyte, off_t a4)
{
  result = mac_syscall(SYS_pwrite, __fd, __buf, __nbyte, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

ssize_t read(int a1, void *a2, size_t a3)
{
  result = mac_syscall(SYS_read, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

ssize_t readlink(const char *a1, char *a2, size_t a3)
{
  result = mac_syscall(SYS_readlink, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int setxattr(const char *path, const char *name, const void *value, size_t size, u_int32_t position, int options)
{
  result = mac_syscall(SYS_setxattr, path, name, value, size, position, options);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int sigprocmask(int a1, const sigset_t *a2, sigset_t *a3)
{
  result = mac_syscall(SYS_sigprocmask, a1, a2, a3);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int socket(int a1, int a2, int a3)
{
  mac_syscall(SYS_socket);
  if (v3)
  {
    return cerror_nocancel(result);
  }

  return result;
}

int statfs64(const char *a1, statfs *a2)
{
  v9 = mac_syscall(SYS_statfs64, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

ssize_t write(int __fd, const void *__buf, size_t __nbyte)
{
  result = mac_syscall(SYS_write, __fd, __buf, __nbyte);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

int64x2_t *AccelerateCrypto_SHA512_compress_hwassist(int64x2_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v3 = &ccsha512_K;
    v4 = *result;
    v5 = result[1];
    v6 = result[2];
    v7 = result[3];
    do
    {
      _Q24 = v4;
      _Q25 = v5;
      _Q0 = vrev64q_s8(*a3);
      _Q1 = vrev64q_s8(a3[1]);
      _Q2 = vrev64q_s8(a3[2]);
      _Q3 = vrev64q_s8(a3[3]);
      _Q4 = vrev64q_s8(a3[4]);
      v15 = *v3;
      _Q5 = vrev64q_s8(a3[5]);
      v17 = *(&dword_10 + v3);
      _Q6 = vrev64q_s8(a3[6]);
      v19 = *(&stru_20.cmd + v3);
      _Q7 = vrev64q_s8(a3[7]);
      v21 = *&stru_20.segname[v3 + 8];
      v22 = *(&stru_20.vmsize + v3);
      v23 = *(&stru_20.filesize + v3);
      v24 = *(&stru_20.nsects + v3);
      v25 = *&stru_68.segname[v3 - 8];
      a3 += 8;
      v26 = v3 + 8;
      _Q29 = vextq_s8(v6, v7, 8uLL);
      _Q28 = vextq_s8(v5, v6, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v30 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v37 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v40 = vaddq_s64(v5, v37);
      _Q29 = vextq_s8(v40, v6, 8uLL);
      _Q28 = vextq_s8(v4, v40, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v44 = *(&dword_10 + v26);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v47 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v50 = vaddq_s64(v4, v47);
      _Q29 = vextq_s8(v50, v40, 8uLL);
      _Q28 = vextq_s8(_Q27, v50, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v54 = *(&stru_20.cmd + v26);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v57 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v60 = vaddq_s64(_Q27, v57);
      _Q29 = vextq_s8(v60, v50, 8uLL);
      _Q28 = vextq_s8(_Q26, v60, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v64 = *&stru_20.segname[v26 + 8];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v67 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v70 = vaddq_s64(_Q26, v67);
      _Q29 = vextq_s8(v70, v60, 8uLL);
      _Q28 = vextq_s8(_Q25, v70, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v74 = *(&stru_20.vmsize + v26);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v77 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v80 = vaddq_s64(_Q25, v77);
      _Q29 = vextq_s8(v80, v70, 8uLL);
      _Q28 = vextq_s8(_Q24, v80, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v84 = *(&stru_20.filesize + v26);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v87 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v90 = vaddq_s64(_Q24, v87);
      _Q29 = vextq_s8(v90, v80, 8uLL);
      _Q28 = vextq_s8(_Q27, v90, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v94 = *(&stru_20.nsects + v26);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v97 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v100 = vaddq_s64(_Q27, v97);
      _Q29 = vextq_s8(v100, v90, 8uLL);
      _Q28 = vextq_s8(_Q26, v100, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v104 = *&stru_68.segname[v26 - 8];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v107 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v110 = vaddq_s64(_Q26, v107);
      v26 += 8;
      _Q29 = vextq_s8(v110, v100, 8uLL);
      _Q28 = vextq_s8(_Q25, v110, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v114 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v117 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v120 = vaddq_s64(_Q25, v117);
      _Q29 = vextq_s8(v120, v110, 8uLL);
      _Q28 = vextq_s8(_Q24, v120, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v124 = *(&dword_10 + v26);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v127 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v130 = vaddq_s64(_Q24, v127);
      _Q29 = vextq_s8(v130, v120, 8uLL);
      _Q28 = vextq_s8(_Q27, v130, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v134 = *(&stru_20.cmd + v26);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v137 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v140 = vaddq_s64(_Q27, v137);
      _Q29 = vextq_s8(v140, v130, 8uLL);
      _Q28 = vextq_s8(_Q26, v140, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v144 = *&stru_20.segname[v26 + 8];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v147 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v150 = vaddq_s64(_Q26, v147);
      _Q29 = vextq_s8(v150, v140, 8uLL);
      _Q28 = vextq_s8(_Q25, v150, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v154 = *(&stru_20.vmsize + v26);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v157 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v160 = vaddq_s64(_Q25, v157);
      _Q29 = vextq_s8(v160, v150, 8uLL);
      _Q28 = vextq_s8(_Q24, v160, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v164 = *(&stru_20.filesize + v26);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v167 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v170 = vaddq_s64(_Q24, v167);
      _Q29 = vextq_s8(v170, v160, 8uLL);
      _Q28 = vextq_s8(_Q27, v170, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v174 = *(&stru_20.nsects + v26);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v177 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v180 = vaddq_s64(_Q27, v177);
      _Q29 = vextq_s8(v180, v170, 8uLL);
      _Q28 = vextq_s8(_Q26, v180, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v184 = *&stru_68.segname[v26 - 8];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v187 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v190 = vaddq_s64(_Q26, v187);
      v26 += 8;
      _Q29 = vextq_s8(v190, v180, 8uLL);
      _Q28 = vextq_s8(_Q25, v190, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v194 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v197 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v200 = vaddq_s64(_Q25, v197);
      _Q29 = vextq_s8(v200, v190, 8uLL);
      _Q28 = vextq_s8(_Q24, v200, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v204 = *(&dword_10 + v26);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v207 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v210 = vaddq_s64(_Q24, v207);
      _Q29 = vextq_s8(v210, v200, 8uLL);
      _Q28 = vextq_s8(_Q27, v210, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v214 = *(&stru_20.cmd + v26);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v217 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v220 = vaddq_s64(_Q27, v217);
      _Q29 = vextq_s8(v220, v210, 8uLL);
      _Q28 = vextq_s8(_Q26, v220, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v224 = *&stru_20.segname[v26 + 8];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v227 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v230 = vaddq_s64(_Q26, v227);
      _Q29 = vextq_s8(v230, v220, 8uLL);
      _Q28 = vextq_s8(_Q25, v230, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v234 = *(&stru_20.vmsize + v26);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v237 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v240 = vaddq_s64(_Q25, v237);
      _Q29 = vextq_s8(v240, v230, 8uLL);
      _Q28 = vextq_s8(_Q24, v240, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v244 = *(&stru_20.filesize + v26);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v247 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v250 = vaddq_s64(_Q24, v247);
      _Q29 = vextq_s8(v250, v240, 8uLL);
      _Q28 = vextq_s8(_Q27, v250, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v254 = *(&stru_20.nsects + v26);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v257 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v260 = vaddq_s64(_Q27, v257);
      _Q29 = vextq_s8(v260, v250, 8uLL);
      _Q28 = vextq_s8(_Q26, v260, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v264 = *&stru_68.segname[v26 - 8];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v267 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v270 = vaddq_s64(_Q26, v267);
      v26 += 8;
      _Q29 = vextq_s8(v270, v260, 8uLL);
      _Q28 = vextq_s8(_Q25, v270, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v276 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v279 = vaddq_s64(_Q25, v276);
      v280 = vaddq_s64(_Q0, *v26);
      _Q29 = vextq_s8(v279, v270, 8uLL);
      _Q28 = vextq_s8(_Q24, v279, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v286 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v289 = vaddq_s64(_Q24, v286);
      v290 = vaddq_s64(_Q1, *(&dword_10 + v26));
      _Q29 = vextq_s8(v289, v279, 8uLL);
      _Q28 = vextq_s8(_Q27, v289, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v296 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v299 = vaddq_s64(_Q27, v296);
      v300 = vaddq_s64(_Q2, *(&stru_20.cmd + v26));
      _Q29 = vextq_s8(v299, v289, 8uLL);
      _Q28 = vextq_s8(_Q26, v299, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v306 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v309 = vaddq_s64(_Q26, v306);
      v310 = vaddq_s64(_Q3, *&stru_20.segname[v26 + 8]);
      _Q29 = vextq_s8(v309, v299, 8uLL);
      _Q28 = vextq_s8(_Q25, v309, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v316 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v319 = vaddq_s64(_Q25, v316);
      v320 = vaddq_s64(_Q4, *(&stru_20.vmsize + v26));
      _Q29 = vextq_s8(v319, v309, 8uLL);
      _Q28 = vextq_s8(_Q24, v319, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v326 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v329 = vaddq_s64(_Q24, v326);
      v330 = vaddq_s64(_Q5, *(&stru_20.filesize + v26));
      _Q29 = vextq_s8(v329, v319, 8uLL);
      _Q28 = vextq_s8(_Q27, v329, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v336 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v339 = vaddq_s64(_Q27, v336);
      v340 = vaddq_s64(_Q6, *(&stru_20.nsects + v26));
      _Q29 = vextq_s8(v339, v329, 8uLL);
      _Q28 = vextq_s8(_Q26, v339, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v346 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v349 = vaddq_s64(_Q26, v346);
      v350 = vaddq_s64(_Q7, *&stru_68.segname[v26 - 8]);
      _Q29 = vextq_s8(v349, v339, 8uLL);
      _Q28 = vextq_s8(_Q25, v349, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v355 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v355, v349, 8uLL);
      _Q28 = vextq_s8(_Q24, v355, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v360 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v360, v355, 8uLL);
      _Q28 = vextq_s8(_Q27, v360, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v365 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v365, v360, 8uLL);
      _Q28 = vextq_s8(_Q26, v365, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v370 = vaddq_s64(_Q26, _Q30);
      _Q29 = vextq_s8(v370, v365, 8uLL);
      _Q28 = vextq_s8(_Q25, v370, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v375 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v375, v370, 8uLL);
      _Q28 = vextq_s8(_Q24, v375, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v380 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v380, v375, 8uLL);
      _Q28 = vextq_s8(_Q27, v380, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v385 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v385, v380, 8uLL);
      _Q28 = vextq_s8(_Q26, v385, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v4 = vaddq_s64(v4, _Q24);
      v5 = vaddq_s64(v5, _Q25);
      v6 = vaddq_s64(v6, vaddq_s64(_Q26, _Q30));
      v7 = vaddq_s64(v7, v385);
      v390 = a2-- <= 1;
      v3 = v26 - 32;
    }

    while (!v390);
    *result = v4;
    result[1] = v5;
    result[2] = v6;
    result[3] = v7;
  }

  return result;
}

__n128 __Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld4L17handleDyldInCacheERNS_9AllocatorEPKN6mach_o6HeaderEPKNS2_10KernelArgsES8_E3__0EEvT__block_invoke(uint64_t a1)
{
  v2 = lsl::Allocator::aligned_alloc(*(a1 + 40), 8uLL, 0x40uLL);
  **(a1 + 32) = dyld4::ExternallyViewableState::ExternallyViewableState(v2, *(a1 + 40));
  v3 = dyld4::ExternallyViewableState::completeAllImageInfoTransition(**(a1 + 32), *(a1 + 40), **(a1 + 56));
  v4 = *(a1 + 56);
  **(a1 + 48) = v3;
  v5 = *(a1 + 40);
  v6 = **(a1 + 32);
  v7 = *v4;
  v8 = ***(a1 + 64);
  v9 = **(a1 + 72);
  v10 = **(a1 + 80);

  dyld4::ExternallyViewableState::createMinimalInfo(v6, v5, v7, "/usr/lib/dyld", v8, v9, v10);
}

void ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld4L17handleDyldInCacheERNS_9AllocatorEPKN6mach_o6HeaderEPKNS2_10KernelArgsES8_E3__1EEvT__block_invoke(uint64_t a1)
{
  v2 = lsl::Allocator::aligned_alloc(*(a1 + 40), 8uLL, 0x40uLL);
  **(a1 + 32) = dyld4::ExternallyViewableState::ExternallyViewableState(v2, *(a1 + 40));
  v3 = *(a1 + 40);
  v4 = **(a1 + 32);
  v5 = *(a1 + 56);
  v6 = **(a1 + 48);
  v7 = ***(a1 + 64);
  v8 = **(a1 + 72);

  dyld4::ExternallyViewableState::createMinimalInfo(v4, v3, v6, v5, v7, v8, 0);
}

void ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper4exitEiEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke(uint64_t a1)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v2 = MEMORY[0xFFFFFC0D8];
        if (v2 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          (*(***(a1 + 32) + 112))(**(a1 + 32), **(a1 + 40));
        }
      }
    }
  }

  __break(1u);
}

void (*___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld45startEPNS2_10KernelArgsEPvS5_E3__1EEvT__block_invoke(uint64_t a1))(dyld4 *this, int a2, const char *const *a3, const char *const *a4, const char *const *a5)
{
  lsl::Allocator::setBestFit(*(a1 + 32), 1);
  v2 = lsl::Allocator::aligned_alloc(*(a1 + 32), 0x10uLL, 0x2F0uLL);
  dyld4::ProcessConfig::ProcessConfig(v2, **(a1 + 40), &dyld4::sSyscallDelegate, *(a1 + 32));
  v3 = lsl::Allocator::aligned_alloc(*(a1 + 32), 8uLL, 0x498uLL);
  v4 = dyld4::RuntimeState::RuntimeState(v3, v2, *(a1 + 56), *(a1 + 32));
  *v4 = off_A25B8;
  **(a1 + 48) = v4;
  v5 = lsl::MemoryManager::memoryManager(v4);
  lsl::MemoryManager::setProtectedStack(v5, (**(a1 + 48) + 1128));
  v6 = *(a1 + 48);
  *(*v6 + 77) = **(a1 + 64);
  dyld4::ExternallyViewableState::setRuntimeState(*(*v6 + 77), *v6);
  result = dyld4::prepare(**(a1 + 48), **(a1 + 80), v7);
  **(a1 + 72) = result;
  return result;
}

__n128 __Block_byref_object_copy__34(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

mach_o::Header *___ZN5dyld4L7prepareERNS_4APIsEPKN6mach_o6HeaderE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = dyld4::PrebuiltLoader::BindTargetRef::value((a2 + 8), *(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(*(v5 + 8) + 368);
  v7 = *a2;
  v8 = *(a2 + 4);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZN5dyld4L7prepareERNS_4APIsEPKN6mach_o6HeaderE_block_invoke_3;
  v10[3] = &__block_descriptor_tmp_40;
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = *(a1 + 40);
  return DyldSharedCache::forEachPatchableUseOfExport(v6, v7, v8, v10);
}

void ___ZN5dyld4L7prepareERNS_4APIsEPKN6mach_o6HeaderE_block_invoke_3(uint64_t a1, uint64_t a2, _BOOL4 a3, uint64_t a4)
{
  v5 = (*(*(*(a1 + 32) + 8) + 368) + a2);
  v6 = *(a1 + 40) + a4;
  if ((a3 & 0x1000000) != 0)
  {
    v6 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(v6, v5, ((a3 >> 27) & 1), a3, (a3 >> 25) & 3);
  }

  if (*v5 != v6)
  {
    dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(*(a1 + 48));
    v7 = *(a1 + 32);
    if (*(*(v7 + 1) + 322) == 1)
    {
      dyld4::RuntimeState::log(v7, "cache patch: %p = 0x%0lX\n", v5, v6);
    }

    *v5 = v6;
  }
}

uint64_t dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::Map(uint64_t a1)
{
  *(a1 + 16) = 0u;
  v2 = (a1 + 16);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = xmmword_8BFE0;
  v3 = 32;
  dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo((a1 + 16), 0x20uLL);
  do
  {
    v5 = -1;
    dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v2, &v5);
    --v3;
  }

  while (v3);
  if (*(a1 + 64) <= 0x1FuLL)
  {
    dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::growTo((a1 + 56), 0x20uLL);
  }

  return a1;
}

void *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 4 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, 4 * address[2]);
  v9 = address[4] >> 2;
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

void *dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 24 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, 24 * address[2]);
  v9 = address[4] / 0x18;
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

size_t OUTLINED_FUNCTION_0@<X0>(int8x16_t *a1@<X0>, uint64_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v4 = *a3;
  v5 = a3[1];
  *a1 = *a3;
  a1[1] = v5;
  a1[2].i64[0] = a3[2].i64[0];
  v6 = *a2;

  return appendHexToString<unsigned long long>(a1->i8, v6, 0x100uLL, v4, v5);
}

size_t OUTLINED_FUNCTION_1(int8x8_t a1)
{

  return appendHexToString<int>(v2, v1, 0x100uLL, a1);
}

size_t OUTLINED_FUNCTION_2(uint64_t a1, const char *a2)
{

  return strlcat(v2, a2, 0x100uLL);
}

uint64_t ___ZN5dyld413ProcessConfigC2EPKNS_10KernelArgsERNS_15SyscallDelegateERN3lsl9AllocatorE_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = (a2 >> 36);
  v5 = *(a1 + 32);
  if (v4 >= mach_o::FunctionVariants::count(*(a1 + 40)))
  {
    ___ZN5dyld413ProcessConfigC2EPKNS_10KernelArgsERNS_15SyscallDelegateERN3lsl9AllocatorE_block_invoke_cold_1();
  }

  v6 = dyld4::ProcessConfig::Process::selectFromFunctionVariants((v5 + 16), *(a1 + 40), v4) + *(v5 + 136);
  result = mach_o::Header::segmentVmAddr(*(a1 + 48), BYTE4(a2) & 0xF);
  v8 = result + a2;
  v9 = *(a1 + 480);
  if ((a2 & 0x100000000000) != 0)
  {
    result = signPointer(v6, (v8 + v9), (a2 & 0x200000000000) != 0, HIWORD(a2), WORD2(a2) >> 14);
    v6 = result;
  }

  *(v8 + v9) = v6;
  return result;
}

uint64_t dyld4::ProcessConfig::evaluateSystemWideFunctionVariantFlags(uint64_t a1)
{
  v1 = 5;
  if (*(a1 + 289))
  {
    v1 = 3;
  }

  if (*(a1 + 304))
  {
    return v1 | 8;
  }

  else
  {
    return v1;
  }
}

void dyld4::ProcessConfig::Security::pruneEnvVars(dyld4::ProcessConfig::Security *this, dyld4::ProcessConfig::Process *a2)
{
  v2 = *(a2 + 21);
  v3 = *v2;
  if (*v2)
  {
    v5 = 0;
    v6 = v2 + 1;
    do
    {
      if (_platform_strncmp(v3, "DYLD_", 5uLL))
      {
        *v2++ = v3;
      }

      else
      {
        ++v5;
      }

      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
    *v2 = 0;
    if (v5 > 0)
    {
      v8 = v2 + 1;
      *(a2 + 22) = v2 + 1;
      do
      {
        v9 = v8[v5];
        *v8++ = v9;
      }

      while (v9);

      bzero(v8, 8 * v5);
    }
  }
}

ssize_t dyld4::console(dyld4 *this, const char *a2, ...)
{
  va_start(va, a2);
  if (getpid() == 1)
  {
    v3 = open("/dev/console", 131073, 0);
    v4 = getpid();
    _simple_dprintf(2, "dyld[%d]: ", v5, v6, v7, v8, v9, v10, v4);
    _simple_vdprintf(v3, this, va);
    return close(v3);
  }

  else
  {
    v12 = getpid();
    _simple_dprintf(2, "dyld[%d]: ", v13, v14, v15, v16, v17, v18, v12);
    return _simple_vdprintf(2, this, va);
  }
}

uint64_t dyld4::ProcessConfig::DyldCache::setupDyldCommPage(dyld4::ProcessConfig::DyldCache *this, dyld4::ProcessConfig::Process *a2, const dyld4::ProcessConfig::Security *a3, dyld4::SyscallDelegate *a4)
{
  v7 = dyld4::SyscallDelegate::bootVolumeWritable(a4);
  v8 = *(a2 + 18);
  v9 = 0x800000000;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = v8 & 0xFFFFFFF7FFFFFFFFLL | v9;
  *(a2 + 18) = v10;
  if ((*(a3 + 1) & 1) == 0)
  {
    v10 = v8 & 0xFFFFFFE7FFFFFFB8 | 1;
    *(a2 + 18) = v10;
  }

  return dyld4::SyscallDelegate::setDyldCommPageFlags(a4, v10);
}

uint64_t ___ZN5dyld413ProcessConfig9DyldCache20setPlatformOSVersionERKNS0_7ProcessE_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(result + 40);
  v4 = *a2;
  if (*a2 == *(v3 + 96) && (v5 = *(a2 + 8), v5 == *(v3 + 104)) || v4 == &mach_o::PlatformInfo_macCatalyst::singleton && (v5 = *(a2 + 8)) == 0 && *(v3 + 205) == 1)
  {
    *(v2 + 144) = v4;
    *(v2 + 152) = v5;
    *(v2 + 160) = *(a2 + 16);
  }

  return result;
}

BOOL dyld4::ProcessConfig::DyldCache::isProtectedLibSystemPath(dyld4::ProcessConfig::DyldCache *this, const char *a2)
{
  v3 = 0;
  do
  {
    v4 = _platform_strcmp(this, dyld4::ProcessConfig::DyldCache::isProtectedLibSystemPath(char const*)::protectedPaths[v3]);
    if (v4)
    {
      v5 = v3 == 2;
    }

    else
    {
      v5 = 1;
    }

    ++v3;
  }

  while (!v5);
  return v4 == 0;
}

uint64_t ___ZN5dyld413ProcessConfig13PathOverridesC2ERKNS0_7ProcessERKNS0_8SecurityERKNS0_7LoggingERKNS0_9DyldCacheERNS_15SyscallDelegateERN3lsl9AllocatorE_block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

char *dyld4::ProcessConfig::PathOverrides::checkVersionedPath(dyld4::ProcessConfig::PathOverrides *a1, int a2, DyldSharedCache **a3, lsl::Allocator::Pool **a4, dyld3 *a5, uint64_t a6, uint64_t a7)
{
  v27 = 0;
  *__s2 = *a6;
  v31 = *(a6 + 8);
  result = dyld4::SyscallDelegate::getDylibInfo(a2, a5, __s2, a7, &v27, v32);
  if (!result)
  {
    return result;
  }

  v25 = 0;
  v26 = 0;
  v28 = *a6;
  v29 = *(a6 + 8);
  result = dyld4::SyscallDelegate::getDylibInfo(a2, v32, &v28, a7, &v26, __s2);
  if (result)
  {
    v15 = v26;
  }

  else
  {
    if (!*a3 || !DyldSharedCache::hasImagePath(*a3, v32, &v25) || (v28 = 0, v20 = 0, IndexedImageEntry = DyldSharedCache::getIndexedImageEntry(*a3, v25, &v28, &v20), __source = 0, v22 = 0x10000, v23 = 0x10000, !mach_o::Header::getDylibInstallName(IndexedImageEntry, &__source, &v23, &v22)))
    {
      v19 = v32;
      return dyld4::ProcessConfig::PathOverrides::addPathOverride(a1, a4, v19, a5);
    }

    result = strlcpy(__s2, __source, 0x400uLL);
    v15 = v22;
    v26 = v22;
  }

  if (v27 > v15)
  {
    v16 = a1 + 136;
    do
    {
      v16 = *v16;
      if (!v16)
      {
        v19 = __s2;
        return dyld4::ProcessConfig::PathOverrides::addPathOverride(a1, a4, v19, a5);
      }
    }

    while (_platform_strcmp(*(v16 + 1), __s2));
    LODWORD(__source) = 0;
    v17 = *(v16 + 2);
    v20 = *a6;
    v21 = *(a6 + 8);
    result = dyld4::SyscallDelegate::getDylibInfo(a2, v17, &v20, a7, &__source, &v28);
    if (result)
    {
      if (v27 > __source)
      {
        result = lsl::Allocator::strdup(a4, a5);
        *(v16 + 2) = result;
      }
    }
  }

  return result;
}

char *dyld4::ProcessConfig::PathOverrides::addPathOverride(dyld4::ProcessConfig::PathOverrides *this, lsl::Allocator::Pool **a2, const char *a3, const char *a4)
{
  v8 = lsl::Allocator::malloc(a2, 0x18uLL);
  *v8 = 0;
  *(v8 + 1) = lsl::Allocator::strdup(a2, a3);
  result = lsl::Allocator::strdup(a2, a4);
  *(v8 + 2) = result;
  v12 = *(this + 17);
  v11 = (this + 136);
  for (i = v12; i; i = *i)
  {
    v11 = i;
  }

  *v11 = v8;
  return result;
}

uint64_t dyld4::ProcessConfig::PathOverrides::forEachInColonList(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = 0;
  v13[0] = result;
  v13[1] = a2;
  while (2)
  {
    v7 = v13[v6];
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = _platform_strlen(v13[v6]);
    v9 = &v13[-1] - ((__chkstk_darwin(v8) + 16) & 0xFFFFFFFFFFFFFFF0);
    v10 = v7 + 1;
    v11 = v7;
    while (*(v10 - 1) == 58)
    {
      memmove(v9, v11, v7 - v11);
      v7[v9 - v11] = 0;
      result = (*(a4 + 16))(a4, v9, a3);
      v11 = v10;
      if (*a3)
      {
        return result;
      }

LABEL_8:
      ++v10;
      ++v7;
    }

    if (*(v10 - 1))
    {
      goto LABEL_8;
    }

    result = (*(a4 + 16))(a4, v11, a3);
    if (*a3 != 1)
    {
LABEL_10:
      if (++v6 == 2)
      {
        return result;
      }

      continue;
    }

    return result;
  }
}

uint64_t ___ZN5dyld413ProcessConfig13PathOverrides21processVersionedPathsERKNS0_7ProcessERNS_15SyscallDelegateERKNS0_9DyldCacheEN6mach_o8PlatformERKNSA_19GradedArchitecturesERN3lsl9AllocatorE_block_invoke(uint64_t a1, char *a2)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = ___ZN5dyld413ProcessConfig13PathOverrides21processVersionedPathsERKNS0_7ProcessERNS_15SyscallDelegateERKNS0_9DyldCacheEN6mach_o8PlatformERKNSA_19GradedArchitecturesERN3lsl9AllocatorE_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_98;
  v5[4] = v2;
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  return dyld4::SyscallDelegate::forEachInDirectory(v6, a2, 0, v5);
}

char *___ZN5dyld413ProcessConfig13PathOverrides21processVersionedPathsERKNS0_7ProcessERNS_15SyscallDelegateERKNS0_9DyldCacheEN6mach_o8PlatformERKNSA_19GradedArchitecturesERN3lsl9AllocatorE_block_invoke_2(uint64_t a1, dyld3 *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  return dyld4::ProcessConfig::PathOverrides::checkVersionedPath(v4, v3, v5, v6, a2, &v8, *(a1 + 80));
}

uint64_t __copy_helper_block_8_64c22_ZTSN6mach_o8PlatformE(uint64_t result, uint64_t a2)
{
  *(result + 64) = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  return result;
}

uint64_t ___ZN5dyld413ProcessConfig13PathOverrides21processVersionedPathsERKNS0_7ProcessERNS_15SyscallDelegateERKNS0_9DyldCacheEN6mach_o8PlatformERKNSA_19GradedArchitecturesERN3lsl9AllocatorE_block_invoke_102(uint64_t a1, char *a2)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = ___ZN5dyld413ProcessConfig13PathOverrides21processVersionedPathsERKNS0_7ProcessERNS_15SyscallDelegateERKNS0_9DyldCacheEN6mach_o8PlatformERKNSA_19GradedArchitecturesERN3lsl9AllocatorE_block_invoke_2_103;
  v5[3] = &__block_descriptor_tmp_107;
  v5[4] = v2;
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  return dyld4::SyscallDelegate::forEachInDirectory(v6, a2, 1, v5);
}

unint64_t ___ZN5dyld413ProcessConfig13PathOverrides21processVersionedPathsERKNS0_7ProcessERNS_15SyscallDelegateERKNS0_9DyldCacheEN6mach_o8PlatformERKNSA_19GradedArchitecturesERN3lsl9AllocatorE_block_invoke_2_103(uint64_t a1, char *__s)
{
  v4 = *(a1 + 32);
  result = _platform_strlen(__s);
  if (result >= 0xA)
  {
    result = _platform_strcmp(&__s[result - 10], ".framework");
    if (!result)
    {
      strlcpy(__dst, __s, 0x400uLL);
      v6 = strrchr(__s, 47);
      strlcat(__dst, v6, 0x400uLL);
      *strrchr(__dst, 46) = 0;
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      return dyld4::ProcessConfig::PathOverrides::checkVersionedPath(v4, v7, v8, v9, __dst, &v10, *(a1 + 80));
    }
  }

  return result;
}

char *dyld4::ProcessConfig::PathOverrides::setString(dyld4::ProcessConfig::PathOverrides *this, lsl::Allocator::Pool **a2, char **a3, const char *__s)
{
  if (*a3)
  {
    _platform_strlen(*a3);
    v7 = _platform_strlen(__s);
    __chkstk_darwin(v7, v8, v9, v10, v11, v12, v13, v14, v19);
    v16 = &v19 - v15;
    v17 = strcpy(&v19 - v15, *a3);
    *&v16[_platform_strlen(v17)] = 58;
    strcat(v16, __s);
    result = lsl::Allocator::strdup(a2, v16);
  }

  else
  {
    result = lsl::Allocator::strdup(a2, __s);
  }

  *a3 = result;
  return result;
}

uint64_t ___ZN5dyld413ProcessConfig13PathOverrides9addEnvVarERKNS0_7ProcessERKNS0_8SecurityERN3lsl9AllocatorEPKcbPc_block_invoke(uint64_t result, char *__s1)
{
  v3 = result;
  if ((*(*(result + 40) + 17) & 1) != 0 || *__s1 != 64)
  {
    if (*(*(*(result + 32) + 8) + 24) == 1)
    {
      strlcat(*(result + 48), ":", *(result + 56));
    }

    if (_platform_strncmp(__s1, "@executable_path/", 0x11uLL))
    {
      v4 = _platform_strncmp(__s1, "@loader_path/", 0xDuLL);
      v5 = *(v3 + 56);
      v6 = *(*(v3 + 64) + 16);
      v7 = *(v3 + 48);
      if (v4)
      {
LABEL_12:
        result = strlcpy(v7, v6, v5);
        *(*(*(v3 + 32) + 8) + 24) = 1;
        return result;
      }

      strlcat(v7, v6, v5);
      v8 = *(v3 + 48);
      result = strrchr(v8, 47);
      if (!result)
      {
        return result;
      }

      v7 = (result + 1);
      v9 = *(v3 + 56);
      v10 = v8 - v7;
      v6 = __s1 + 13;
    }

    else
    {
      strlcat(*(v3 + 48), *(*(v3 + 64) + 16), *(v3 + 56));
      v11 = *(v3 + 48);
      result = strrchr(v11, 47);
      if (!result)
      {
        return result;
      }

      v7 = (result + 1);
      v9 = *(v3 + 56);
      v10 = v11 - v7;
      v6 = __s1 + 17;
    }

    v5 = v9 + v10;
    goto LABEL_12;
  }

  return result;
}

uint64_t dyld4::ProcessConfig::PathOverrides::forEachDylibFallback(uint64_t a1, mach_o::Platform *this, int a3, _BYTE *a4, uint64_t a5)
{
  result = *(a1 + 16);
  v10 = *(a1 + 64);
  if (result | v10)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v15[2] = ___ZNK5dyld413ProcessConfig13PathOverrides20forEachDylibFallbackEN6mach_o8PlatformEbRbU13block_pointerFvPKcNS1_4TypeES4_E_block_invoke;
    v15[3] = &unk_A04A0;
    v15[4] = a5;
    v15[5] = a4;
    return dyld4::ProcessConfig::PathOverrides::forEachInColonList(result, v10, a4, v15);
  }

  if (a3)
  {
    result = mach_o::Platform::isExclaveCore(this);
    if ((result & 1) == 0)
    {
      result = mach_o::Platform::isExclaveKit(this);
      if ((result & 1) == 0 && (*this != &mach_o::PlatformInfo_driverKit::singleton || *(this + 2)))
      {
        result = mach_o::Platform::isKernelKit(this);
        if ((result & 1) == 0)
        {
          v11 = *this;
          if (*this == &mach_o::PlatformInfo_macOS::singleton && !*(this + 2))
          {
            v12 = *(a1 + 144);
            if (v12 != 1)
            {
              if (v12)
              {
                return result;
              }

              result = (*(a5 + 16))(a5, "/usr/local/lib", 16, a4);
              if (*a4)
              {
                return result;
              }
            }

            v13 = *(a5 + 16);
            v14 = "/usr/lib";
            goto LABEL_32;
          }

          if ((v11 == &mach_o::PlatformInfo_iOS::singleton && !*(this + 2) || v11 == &mach_o::PlatformInfo_watchOS::singleton && !*(this + 2) || v11 == &mach_o::PlatformInfo_tvOS::singleton && !*(this + 2) || v11 == &mach_o::PlatformInfo_bridgeOS::singleton && !*(this + 2) || v11 == &mach_o::PlatformInfo_visionOS::singleton && !*(this + 2)) && *(a1 + 144) != 2)
          {
            result = (*(a5 + 16))(a5, "/usr/local/lib", 16, a4);
            if (*a4)
            {
              return result;
            }

            (*(a5 + 16))(a5, "/usr/lib", 16, a4);
          }

          result = mach_o::Platform::isSimulator(this);
          if (((result & 1) != 0 || *this == &mach_o::PlatformInfo_macCatalyst::singleton && !*(this + 2)) && *(a1 + 144) != 2)
          {
            v13 = *(a5 + 16);
            v14 = "/usr/local/lib";
LABEL_32:

            return v13(a5, v14, 16, a4);
          }
        }
      }
    }
  }

  return result;
}

size_t dyld4::ProcessConfig::PathOverrides::addSuffix(dyld4::ProcessConfig::PathOverrides *this, const char *a2, const char *a3, char *__dst)
{
  strlcpy(__dst, a2, 0x400uLL);
  v7 = strrchr(__dst, 47);
  if (v7)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = __dst;
  }

  v9 = strrchr(v8, 46);
  if (v9)
  {
    v10 = v9;
    strlcpy(v9, a3, 0x400uLL);
    v11 = &v10[_platform_strlen(a3)];
    v12 = &a2[v10 - __dst];
  }

  else
  {
    v11 = __dst;
    v12 = a3;
  }

  return strlcat(v11, v12, 0x400uLL);
}

uint64_t ___ZNK5dyld413ProcessConfig13PathOverrides18forEachImageSuffixEPKcNS1_4TypeERbU13block_pointerFvS3_S4_S5_E_block_invoke(void *a1, const char *a2)
{
  v4 = a1[6];
  v5 = _platform_strlen(v4);
  v6 = _platform_strlen(a2);
  dyld4::ProcessConfig::PathOverrides::addSuffix(v6, v4, a2, &v9 - ((v6 + v5 + 23) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[7];
  return (*(a1[4] + 16))();
}

uint64_t ___ZNK5dyld413ProcessConfig13PathOverrides18forEachPathVariantEPKcN6mach_o8PlatformEbbRbU13block_pointerFvS3_NS1_4TypeES6_E_block_invoke(uint64_t a1, char *__s)
{
  v4 = *(a1 + 40);
  v5 = _platform_strlen(__s) + *(a1 + 48);
  v6 = &v8 - ((v5 + 23) & 0xFFFFFFFFFFFFFFF0);
  strlcpy(v6, __s, v5 + 8);
  strlcat(v6, "/", v5 + 8);
  strlcat(v6, *(a1 + 56), v5 + 8);
  return dyld4::ProcessConfig::PathOverrides::forEachImageSuffix(v4, v6, 0, *(a1 + 64), *(a1 + 32));
}

uint64_t ___ZNK5dyld413ProcessConfig13PathOverrides18forEachPathVariantEPKcN6mach_o8PlatformEbbRbU13block_pointerFvS3_NS1_4TypeES6_E_block_invoke_2(uint64_t a1, char *__s)
{
  v4 = *(a1 + 40);
  v5 = _platform_strlen(__s) + *(a1 + 48);
  v6 = &v8 - ((v5 + 23) & 0xFFFFFFFFFFFFFFF0);
  strlcpy(v6, __s, v5 + 8);
  strlcat(v6, "/", v5 + 8);
  strlcat(v6, *(a1 + 56), v5 + 8);
  return dyld4::ProcessConfig::PathOverrides::forEachImageSuffix(v4, v6, 0, *(a1 + 64), *(a1 + 32));
}

uint64_t ___ZNK5dyld413ProcessConfig13PathOverrides18forEachPathVariantEPKcN6mach_o8PlatformEbbRbU13block_pointerFvS3_NS1_4TypeES6_E_block_invoke_3(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = _platform_strlen(__s) + *(a1 + 48);
  v8 = &v10 - ((v7 + 23) & 0xFFFFFFFFFFFFFFF0);
  strlcpy(v8, __s, v7 + 8);
  strlcat(v8, "/", v7 + 8);
  strlcat(v8, *(a1 + 56), v7 + 8);
  result = _platform_strcmp(*(a1 + 64), v8);
  if (result)
  {
    return dyld4::ProcessConfig::PathOverrides::forEachImageSuffix(v6, v8, a3, *(a1 + 72), *(a1 + 32));
  }

  return result;
}

uint64_t ___ZNK5dyld413ProcessConfig13PathOverrides18forEachPathVariantEPKcN6mach_o8PlatformEbbRbU13block_pointerFvS3_NS1_4TypeES6_E_block_invoke_4(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = _platform_strlen(__s) + *(a1 + 48);
  v8 = &v10 - ((v7 + 23) & 0xFFFFFFFFFFFFFFF0);
  strlcpy(v8, __s, v7 + 8);
  strlcat(v8, "/", v7 + 8);
  strlcat(v8, *(a1 + 56), v7 + 8);
  result = _platform_strcmp(v8, *(a1 + 64));
  if (result)
  {
    return dyld4::ProcessConfig::PathOverrides::forEachImageSuffix(v6, v8, a3, *(a1 + 72), *(a1 + 32));
  }

  return result;
}

const char *dyld4::ProcessConfig::PathOverrides::typeName(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown";
  }

  else
  {
    return off_A0C10[a1];
  }
}

lsl::Allocator::Pool *dyld4::PseudoDylib::create(lsl::Allocator::Pool **a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    dyld4::PseudoDylib::create();
  }

  if (!a5)
  {
    dyld4::PseudoDylib::create();
  }

  if (a2 <= a3 || a2 - a4 >= a3)
  {
    dyld4::PseudoDylib::create();
  }

  result = lsl::Allocator::aligned_alloc(a1, 8uLL, 0x28uLL);
  *result = a3;
  *(result + 1) = a4;
  *(result + 2) = a5;
  *(result + 3) = a6;
  *(result + 4) = a2;
  return result;
}

const char *dyld4::PseudoDylib::loadableAtPath(dyld4::PseudoDylib *this, const char *a2)
{
  v7 = a2;
  v2 = *(this + 2);
  v4 = *(v2 + 48);
  v3 = (v2 + 48);
  if (v4)
  {
    return dyld4::ReadOnlyCallback<char * (*)(void *,void const*,char const*)>::operator()<void * const&,void * const&,char const*&>(v3, this + 3, this, &v7);
  }

  if (_platform_strcmp(*(this + 4), a2))
  {
    return 0;
  }

  return a2;
}

uint64_t dyld4::ReadOnlyCallback<char * (*)(void *,void const*,char const*)>::operator()<void * const&,void * const&,char const*&>(lsl::MemoryManager *a1, void *a2, void *a3, void *a4)
{
  v15 = lsl::MemoryManager::memoryManager(a1);
  result = v15[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v8, v9, v10, v11, v12, v13, v14, v33[0]);
    if (result)
    {
      v23 = v15[6];
      v33[1] = 0x40000000;
      v33[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvPKcEEclIJRKS5_SF_RS9_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke;
      v33[3] = &__block_descriptor_tmp_148;
      v33[4] = a1;
      v33[5] = a2;
      v33[6] = a3;
      v33[7] = a4;
      return lsl::ProtectedStack::withNestedRegularStack(v23, v33, v17, v18, v19, v20, v21, v22, _NSConcreteStackBlock);
    }
  }

  if (*(v15 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v29 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v29 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v30 = MEMORY[0xFFFFFC0D8];
          if (v30 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v31 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v31 & 0xFE) == 2)
                {
                  v24 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v32 = MEMORY[0xFFFFFC0D0];
                  if (v32 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v24;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v25 = *a1;
  v26 = *a2;
  v27 = *a3;
  v28 = *a4;

  return v25(v26, v27, v28);
}

uint64_t dyld4::PseudoDylib::disposeString(dyld4::PseudoDylib *this, char *a2)
{
  v4 = a2;
  if (*(this + 2))
  {
    v2 = *(this + 2);
  }

  else
  {
    v2 = 0;
  }

  return dyld4::ReadOnlyCallback<void (*)(char *)>::operator()<char *&>(v2, &v4);
}

uint64_t dyld4::ReadOnlyCallback<void (*)(char *)>::operator()<char *&>(lsl::MemoryManager *a1, void *a2)
{
  v11 = lsl::MemoryManager::memoryManager(a1);
  result = v11[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v4, v5, v6, v7, v8, v9, v10, v26[0]);
    if (result)
    {
      v19 = v11[6];
      v26[1] = 0x40000000;
      v26[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPcEEclIJRS4_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESG__block_invoke;
      v26[3] = &__block_descriptor_tmp_169;
      v26[4] = a1;
      v26[5] = a2;
      return lsl::ProtectedStack::withNestedRegularStack(v19, v26, v13, v14, v15, v16, v17, v18, _NSConcreteStackBlock);
    }
  }

  if (*(v11 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v22 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v22 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v23 = MEMORY[0xFFFFFC0D8];
          if (v23 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v24 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v24 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v25 = MEMORY[0xFFFFFC0D0];
                  if (v25 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v20 = *a1;
  v21 = *a2;

  return v20(v21);
}

uint64_t dyld4::ReadOnlyCallback<char * (*)(void *,void const*)>::operator()<void * const&,void * const&>(lsl::MemoryManager *a1, void *a2, void *a3)
{
  v13 = lsl::MemoryManager::memoryManager(a1);
  result = v13[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v6, v7, v8, v9, v10, v11, v12, v30);
    if (result)
    {
      v21 = v13[6];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 0x40000000;
      v32[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvEEclIJRKS5_SD_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESL__block_invoke;
      v32[3] = &__block_descriptor_tmp_149;
      v32[4] = a1;
      v32[5] = a2;
      v32[6] = a3;
      return lsl::ProtectedStack::withNestedRegularStack(v21, v32, v15, v16, v17, v18, v19, v20, v31);
    }
  }

  if (*(v13 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v26 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v26 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v27 = MEMORY[0xFFFFFC0D8];
          if (v27 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v28 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v28 & 0xFE) == 2)
                {
                  v22 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v29 = MEMORY[0xFFFFFC0D0];
                  if (v29 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v22;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v23 = *a1;
  v24 = *a2;
  v25 = *a3;

  return v23(v24, v25);
}

uint64_t dyld4::PseudoDylib::lookupSymbols(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != a5)
  {
    dyld4::PseudoDylib::lookupSymbols();
  }

  if (a3 != a7)
  {
    dyld4::PseudoDylib::lookupSymbols();
  }

  v7 = a1[2];
  v12 = a2;
  v10 = a4;
  v11 = a3;
  v9 = a6;
  return dyld4::ReadOnlyCallback<char * (*)(void *,void const*,char const**,unsigned long,void **,unsigned long long *)>::operator()<void * const&,void * const&,char const**,unsigned long,void **,unsigned long long *>((v7 + 24), a1 + 3, a1, &v12, &v11, &v10, &v9);
}

uint64_t dyld4::ReadOnlyCallback<char * (*)(void *,void const*,char const**,unsigned long,void **,unsigned long long *)>::operator()<void * const&,void * const&,char const**,unsigned long,void **,unsigned long long *>(lsl::MemoryManager *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v21 = lsl::MemoryManager::memoryManager(a1);
  result = v21[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v14, v15, v16, v17, v18, v19, v20, v42);
    if (result)
    {
      v29 = v21[6];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 0x40000000;
      v44[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvPPKcmPS5_PyEEclIJRKS5_SI_SA_mSB_SC_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESQ__block_invoke;
      v44[3] = &__block_descriptor_tmp_150;
      v44[4] = a1;
      v44[5] = a2;
      v44[6] = a3;
      v44[7] = a4;
      v44[8] = a5;
      v44[9] = a6;
      v44[10] = a7;
      return lsl::ProtectedStack::withNestedRegularStack(v29, v44, v23, v24, v25, v26, v27, v28, v43);
    }
  }

  if (*(v21 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v38 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v38 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v39 = MEMORY[0xFFFFFC0D8];
          if (v39 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4, *a5, *a6, *a7);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v40 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v40 & 0xFE) == 2)
                {
                  v30 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v41 = MEMORY[0xFFFFFC0D0];
                  if (v41 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v30;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v31 = *a1;
  v32 = *a2;
  v33 = *a3;
  v34 = *a4;
  v35 = *a5;
  v36 = *a6;
  v37 = *a7;

  return v31(v32, v33, v34, v35, v36, v37);
}

uint64_t dyld4::PseudoDylib::finalizeRequestedSymbols(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  v5 = *(v3 + 56);
  v4 = (v3 + 56);
  if (!v5)
  {
    return 0;
  }

  v7 = a3;
  v8 = a2;
  return dyld4::ReadOnlyCallback<char * (*)(void *,void const*,char const**,unsigned long)>::operator()<void * const&,void * const&,char const**,unsigned long>(v4, a1 + 3, a1, &v8, &v7);
}

uint64_t dyld4::ReadOnlyCallback<char * (*)(void *,void const*,char const**,unsigned long)>::operator()<void * const&,void * const&,char const**,unsigned long>(lsl::MemoryManager *a1, void *a2, void *a3, void *a4, void *a5)
{
  v17 = lsl::MemoryManager::memoryManager(a1);
  result = v17[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v10, v11, v12, v13, v14, v15, v16, v36);
    if (result)
    {
      v25 = v17[6];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 0x40000000;
      v38[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvPPKcmEEclIJRKS5_SG_SA_mEEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke;
      v38[3] = &__block_descriptor_tmp_151;
      v38[4] = a1;
      v38[5] = a2;
      v38[6] = a3;
      v38[7] = a4;
      v38[8] = a5;
      return lsl::ProtectedStack::withNestedRegularStack(v25, v38, v19, v20, v21, v22, v23, v24, v37);
    }
  }

  if (*(v17 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v32 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v32 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v33 = MEMORY[0xFFFFFC0D8];
          if (v33 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4, *a5);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v34 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v34 & 0xFE) == 2)
                {
                  v26 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v35 = MEMORY[0xFFFFFC0D0];
                  if (v35 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v26;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v27 = *a1;
  v28 = *a2;
  v29 = *a3;
  v30 = *a4;
  v31 = *a5;

  return v27(v28, v29, v30, v31);
}

uint64_t dyld4::PseudoDylib::lookupAddress(dyld4::PseudoDylib *this, const void *a2, dl_info *a3)
{
  v4 = a3;
  v5 = a2;
  return dyld4::ReadOnlyCallback<int (*)(void *,void const*,void const*,dl_info *)>::operator()<void * const&,void * const&,void const*&,dl_info *&>((*(this + 2) + 32), this + 3, this, &v5, &v4);
}

uint64_t dyld4::ReadOnlyCallback<int (*)(void *,void const*,void const*,dl_info *)>::operator()<void * const&,void * const&,void const*&,dl_info *&>(lsl::MemoryManager *a1, void *a2, void *a3, void *a4, void *a5)
{
  v17 = lsl::MemoryManager::memoryManager(a1);
  result = v17[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v10, v11, v12, v13, v14, v15, v16, v36);
    if (result)
    {
      v25 = v17[6];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 0x40000000;
      v38[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFiPvPKvS6_P7dl_infoEEclIJRKS4_SE_RS6_RS8_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke;
      v38[3] = &__block_descriptor_tmp_152;
      v38[4] = a1;
      v38[5] = a2;
      v38[6] = a3;
      v38[7] = a4;
      v38[8] = a5;
      return lsl::ProtectedStack::withNestedRegularStack(v25, v38, v19, v20, v21, v22, v23, v24, v37);
    }
  }

  if (*(v17 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v32 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v32 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v33 = MEMORY[0xFFFFFC0D8];
          if (v33 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4, *a5);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v34 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v34 & 0xFE) == 2)
                {
                  v26 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v35 = MEMORY[0xFFFFFC0D0];
                  if (v35 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v26;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v27 = *a1;
  v28 = *a2;
  v29 = *a3;
  v30 = *a4;
  v31 = *a5;

  return v27(v28, v29, v30, v31);
}

uint64_t dyld4::PseudoDylib::findUnwindSections(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v5 = a4;
  v6 = a3;
  if (!a3)
  {
    dyld4::PseudoDylib::findUnwindSections();
  }

  if (!a4)
  {
    dyld4::PseudoDylib::findUnwindSections();
  }

  return dyld4::ReadOnlyCallback<char * (*)(void *,void const*,void const*,BOOL *,dyld_unwind_sections *)>::operator()<void * const&,void * const&,void const*&,BOOL *&,dyld_unwind_sections *&>((a1[2] + 40), a1 + 3, a1, &v7, &v6, &v5);
}

uint64_t dyld4::ReadOnlyCallback<char * (*)(void *,void const*,void const*,BOOL *,dyld_unwind_sections *)>::operator()<void * const&,void * const&,void const*&,BOOL *&,dyld_unwind_sections *&>(lsl::MemoryManager *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v19 = lsl::MemoryManager::memoryManager(a1);
  result = v19[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v12, v13, v14, v15, v16, v17, v18, v39[0]);
    if (result)
    {
      v27 = v19[6];
      v39[1] = 0x40000000;
      v39[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFPcPvPKvS7_PbP20dyld_unwind_sectionsEEclIJRKS5_SG_RS7_RS8_RSA_EEEDaDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESR__block_invoke;
      v39[3] = &__block_descriptor_tmp_153;
      v39[4] = a1;
      v39[5] = a2;
      v39[6] = a3;
      v39[7] = a4;
      v39[8] = a5;
      v39[9] = a6;
      return lsl::ProtectedStack::withNestedRegularStack(v27, v39, v21, v22, v23, v24, v25, v26, _NSConcreteStackBlock);
    }
  }

  if (*(v19 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v35 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v35 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v36 = MEMORY[0xFFFFFC0D8];
          if (v36 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4, *a5, *a6);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v37 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v37 & 0xFE) == 2)
                {
                  v28 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v38 = MEMORY[0xFFFFFC0D0];
                  if (v38 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v28;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v29 = *a1;
  v30 = *a2;
  v31 = *a3;
  v32 = *a4;
  v33 = *a5;
  v34 = *a6;

  return v29(v30, v31, v32, v33, v34);
}

unint64_t dyld4::RuntimeLocks::takeLockBeforeFork(dyld4::RuntimeLocks *this)
{
  result = *this;
  if (result)
  {
    (*(*result + 96))(result, this + 16, 0);
    (*(**this + 96))(*this, this + 24, 0);
    result = (***this)();
    if (result >= 6)
    {
      (*(**this + 160))(*this, this + 40, 0);
      v3 = *(**this + 160);

      return v3();
    }
  }

  return result;
}

unint64_t dyld4::RuntimeLocks::releaseLockInForkParent(dyld4::RuntimeLocks *this)
{
  result = *this;
  if (result)
  {
    (*(*result + 104))(result, this + 16);
    (*(**this + 104))(*this, this + 24);
    result = (***this)();
    if (result >= 6)
    {
      (*(**this + 168))(*this, this + 40);
      v3 = *(**this + 168);

      return v3();
    }
  }

  return result;
}

uint64_t (***dyld4::RuntimeLocks::resetLockInForkChild(dyld4::RuntimeLocks *this))(void)
{
  result = *this;
  if (result)
  {
    result = (**result)(result);
    if (result >= 2)
    {
      (*(**this + 136))(*this, this + 16);
      result = (*(**this + 136))(*this, this + 24);
      *(this + 5) = 0;
    }
  }

  return result;
}

uint64_t (***dyld4::RuntimeLocks::resetDlopenLockInForkChild(dyld4::RuntimeLocks *this))(void)
{
  result = *this;
  if (result)
  {
    result = (**result)(result);
    if (result >= 2)
    {
      v3 = *(**this + 136);

      return v3();
    }
  }

  return result;
}

void dyld4::RuntimeState::printLinkageChain(dyld4::RuntimeState *this, uint64_t *a2, const char *a3)
{
  v10[0] = 0;
  if (a2)
  {
    v6 = a2;
    while (v6 == a2)
    {
LABEL_10:
      v8 = dyld4::Loader::leafName(v6[1], this);
      strlcat(v10, v8, 0x800uLL);
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    __dst[0] = 0;
    v7 = *(v6 + 16);
    if ((v7 & 2) != 0)
    {
      strlcat(__dst, "r", 8uLL);
      v7 = *(v6 + 16);
      if ((v7 & 1) == 0)
      {
LABEL_6:
        if ((v7 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((v6[2] & 1) == 0)
    {
      goto LABEL_6;
    }

    strlcat(__dst, "w", 8uLL);
    v7 = *(v6 + 16);
    if ((v7 & 4) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
LABEL_9:
        strlcat(v10, " -", 0x800uLL);
        strlcat(v10, __dst, 0x800uLL);
        strlcat(v10, "-> ", 0x800uLL);
        goto LABEL_10;
      }

LABEL_8:
      strlcat(__dst, "d", 8uLL);
      goto LABEL_9;
    }

LABEL_14:
    strlcat(__dst, "u", 8uLL);
    if ((v6[2] & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_16:
  dyld4::RuntimeState::log(this, "%s: %s\n", a3, v10);
}

uint64_t lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::erase(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (a2 == a3)
  {
    v10 = *(a1 + 16);
  }

  else
  {
    v4 = (a2 - v3) >> 3;
    v5 = a3 - a2;
    v6 = *(a1 + 16);
    v7 = (v3 + 8 * v6);
    if (v7 != a3)
    {
      v8 = a3;
      v9 = a2;
      do
      {
        *a2++ = *a3;
        *a3++ = 0;
        ++v9;
        ++v8;
      }

      while (a3 != v7);
    }

    v10 = v6 - v5;
    *(a1 + 16) = v6 - v5;
    if (v6 - v5 >= v4)
    {
      v10 = v4;
    }
  }

  return v3 + 8 * v10;
}

void ___ZN5dyld412RuntimeState21loadInsertedLibrariesERN5dyld317OverflowSafeArrayIPNS_6LoaderELy4294967295EEEPKS3__block_invoke(void *a1, const char *a2, _BYTE *a3)
{
  v6 = a1[5];
  Diagnostics::Diagnostics(v17);
  Loader = dyld4::Loader::getLoader(v17, v6, a2, (a1 + 6));
  v16 = Loader;
  if (Loader)
  {
    v8 = Loader;
    v9 = a1[11];
    v10 = v9[2];
    if (v10)
    {
      v11 = *v9;
      v12 = 8 * v10;
      while (*v11 != v8)
      {
        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_6;
        }
      }

      if (*(*(v6 + 8) + 320) == 1)
      {
        dyld4::RuntimeState::log(v6, "skipping duplicate inserted dylib '%s'\n", a2);
      }
    }

    else
    {
LABEL_6:
      dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v9, &v16);
      dyld4::RuntimeState::notifyDebuggerLoad(v6, v16);
      if (*(v16 + 2))
      {
        dyld4::RuntimeState::add(v6, v16);
      }
    }
  }

  else if (Diagnostics::hasError(v17) && (*(*(v6 + 8) + 310) & 1) == 0)
  {
    v13 = Diagnostics::errorMessage(v17);
    dyld4::RuntimeState::log(v6, "terminating because inserted dylib '%s' could not be loaded: %s\n", a2, v13);
    v14 = Diagnostics::errorMessage(v17);
    mach_o::Error::Error(&v15, "%s", v14);
    mach_o::Error::operator=((*(a1[4] + 8) + 40), &v15);
    mach_o::Error::~Error(&v15);
    *a3 = 1;
  }

  Diagnostics::~Diagnostics(v17);
}

void ___ZN5dyld412RuntimeState13setMainLoaderEPKNS_6LoaderE_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = (vm_page_size + *(a2 + 36) - 1) & -vm_page_size;
  if (!v4)
  {
    if (*(*(a1[4] + 8) + 24))
    {
      v4 = 0;
    }

    else
    {
      v4 = a1[7];
    }
  }

  if (*(*(v3 + 1) + 321) == 1)
  {
    v9 = v4 + a1[6] + *(a2 + 16);
    v5 = 120;
    if ((*(a2 + 47) & 4) == 0)
    {
      v5 = 46;
    }

    v8 = v5;
    v6 = 119;
    if ((*(a2 + 47) & 2) == 0)
    {
      v6 = 46;
    }

    v7 = 114;
    if ((*(a2 + 47) & 1) == 0)
    {
      v7 = 46;
    }

    dyld4::RuntimeState::log(v3, "%14.*s (%c%c%c) 0x%012llX->0x%012llX \n", *(a2 + 8), *a2, v7, v6, v8, a1[6] + *(a2 + 16), v9);
  }

  ++*(*(a1[4] + 8) + 24);
}

uint64_t dyld4::RuntimeState::setUpLogging(dyld4::RuntimeState *this)
{
  v2 = lsl::MemoryManager::memoryManager(this);
  v22 = this;
  result = *(v2 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInAnyFrameInThisThread(result);
    if (result)
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v10 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v10 & 0xFE) == 2)
          {
            result = MEMORY[0xFFFFFC0D0];
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v11 = MEMORY[0xFFFFFC0D0];
            if (v11 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v12 = *(v2 + 6);
              v21[1] = 0x40000000;
              v21[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeState12setUpLoggingEvE3__0EEvT__block_invoke;
              v21[3] = &__block_descriptor_tmp_176;
              v21[4] = this;
              result = lsl::ProtectedStack::withNestedProtectedStack(v12, v21, v4, v5, v6, v7, v8, v9, _NSConcreteStackBlock);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v13 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v13 & 0xFE) == 2)
                  {
                    result = MEMORY[0xFFFFFC0D8];
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v14 = MEMORY[0xFFFFFC0D8];
                    if (v14 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_31:
      __break(1u);
      return result;
    }
  }

  if (*(v2 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      return dyld4::RuntimeState::setUpLogging(void)::$_0::operator()(&v22);
    }

    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_31;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    v15 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v15 & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    result = MEMORY[0xFFFFFC0D0];
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
    __isb(0xFu);
    v16 = MEMORY[0xFFFFFC0D0];
    if (v16 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_31;
    }

    result = dyld4::RuntimeState::setUpLogging(void)::$_0::operator()(&v22);
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_31;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    v17 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v17 & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    result = MEMORY[0xFFFFFC0D8];
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
    __isb(0xFu);
    v18 = MEMORY[0xFFFFFC0D8];
    if (v18 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_31;
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v2, v21);
    v19 = *(v2 + 3);
    if (!v19)
    {
      lsl::MemoryManager::writeProtect(v2, 0);
      v19 = *(v2 + 3);
    }

    *(v2 + 3) = v19 + 1;
    lsl::Lock::unlock(v21[0]);
    dyld4::RuntimeState::setUpLogging(void)::$_0::operator()(&v22);
    lsl::MemoryManager::lockGuard(v2, v21);
    v20 = *(v2 + 3) - 1;
    *(v2 + 3) = v20;
    if (!v20)
    {
      lsl::MemoryManager::writeProtect(v2, 1);
    }

    return lsl::Lock::unlock(v21[0]);
  }

  return result;
}

uint64_t dyld4::RuntimeState::addDynamicReference(uint64_t this, const dyld4::Loader *a2, const dyld4::Loader *a3)
{
  v5 = this;
  if ((*(a3 + 2) & 0x20) == 0 || (this = dyld4::Loader::isDelayInit(a3, this), this))
  {
    v6 = *(v5 + 112);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 0x40000000;
    v26 = ___ZN5dyld412RuntimeState19addDynamicReferenceEPKNS_6LoaderES3__block_invoke;
    v27 = &__block_descriptor_tmp_45;
    v28 = v5;
    v29 = a2;
    v30 = a3;
    v31 = v25;
    v7 = lsl::MemoryManager::memoryManager(this);
    this = *(v7 + 6);
    if (this)
    {
      this = lsl::ProtectedStack::onStackInAnyFrameInThisThread(this);
      if (this)
      {
        if (MEMORY[0xFFFFFC10C])
        {
          if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
          {
            v14 = MEMORY[0xFFFFFC10C];
            __dmb(0xAu);
            if ((v14 & 0xFE) == 2)
            {
              this = MEMORY[0xFFFFFC0D0];
              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
              __isb(0xFu);
              v15 = MEMORY[0xFFFFFC0D0];
              if (v15 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                v16 = *(v7 + 6);
                v32[0] = _NSConcreteStackBlock;
                v32[1] = 0x40000000;
                v32[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIU13block_pointerFvvEEEvT_EUlvE_EEvS7__block_invoke;
                v32[3] = &__block_descriptor_tmp_180;
                v32[4] = v6;
                v32[5] = &v31;
                this = lsl::ProtectedStack::withNestedProtectedStack(v16, v32, v8, v9, v10, v11, v12, v13, v25[0]);
                if (MEMORY[0xFFFFFC10C])
                {
                  if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                  {
                    v17 = MEMORY[0xFFFFFC10C];
                    __dmb(0xAu);
                    if ((v17 & 0xFE) == 2)
                    {
                      this = MEMORY[0xFFFFFC0D8];
                      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                      __isb(0xFu);
                      v18 = MEMORY[0xFFFFFC0D8];
                      if (v18 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                      {
                        return this;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_41:
        __break(1u);
        return this;
      }
    }

    if (*(v7 + 33) == 1)
    {
      if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_41;
      }

      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
      {
        if (*v6)
        {
          (*(**v6 + 96))(*v6, v6 + 16, 0);
          v26(v25);
          return (*(**v6 + 104))(*v6, v6 + 16);
        }

        else
        {
          return (v26)(v25);
        }
      }

      else
      {
        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_41;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_41;
        }

        v19 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v19 & 0xFE) != 2)
        {
          goto LABEL_41;
        }

        this = MEMORY[0xFFFFFC0D0];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
        __isb(0xFu);
        v20 = MEMORY[0xFFFFFC0D0];
        if (v20 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_41;
        }

        if (*v6)
        {
          (*(**v6 + 96))(*v6, v6 + 16, 0);
          v26(v25);
          this = (*(**v6 + 104))(*v6, v6 + 16);
        }

        else
        {
          this = (v26)(v25);
        }

        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_41;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_41;
        }

        v23 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v23 & 0xFE) != 2)
        {
          goto LABEL_41;
        }

        this = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v24 = MEMORY[0xFFFFFC0D8];
        if (v24 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      lsl::MemoryManager::lockGuard(v7, v32);
      v21 = *(v7 + 3);
      if (!v21)
      {
        lsl::MemoryManager::writeProtect(v7, 0);
        v21 = *(v7 + 3);
      }

      *(v7 + 3) = v21 + 1;
      lsl::Lock::unlock(v32[0]);
      if (*v6)
      {
        (*(**v6 + 96))(*v6, v6 + 16, 0);
        v26(v25);
        (*(**v6 + 104))(*v6, v6 + 16);
      }

      else
      {
        v26(v25);
      }

      lsl::MemoryManager::lockGuard(v7, v32);
      v22 = *(v7 + 3) - 1;
      *(v7 + 3) = v22;
      if (!v22)
      {
        lsl::MemoryManager::writeProtect(v7, 1);
      }

      return lsl::Lock::unlock(v32[0]);
    }
  }

  return this;
}

void *___ZN5dyld412RuntimeState19addDynamicReferenceEPKNS_6LoaderES3__block_invoke(void *result)
{
  v1 = result[4];
  v2 = result[5];
  v3 = *(v1 + 928);
  if (v3)
  {
    v4 = (*(v1 + 920) + 8);
    v5 = 16 * v3;
    while (*(v4 - 1) != v2 || *v4 != result[6])
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v6 = result[6];
    result = lsl::Vector<dyld4::InterposeTupleAll>::reserve(v1 + 912, v3 + 1);
    v7 = *(v1 + 920);
    v8 = *(v1 + 928);
    *(v1 + 928) = v8 + 1;
    v9 = (v7 + 16 * v8);
    *v9 = v2;
    v9[1] = v6;
  }

  return result;
}

uint64_t dyld4::RuntimeState::addMissingFlatLazySymbol(dyld4::RuntimeState *this, const dyld4::Loader *a2, const char *a3, unint64_t *a4)
{
  result = lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(this + 880, *(this + 112) + 1);
  v9 = *(this + 111);
  v10 = *(this + 112);
  *(this + 112) = v10 + 1;
  v11 = (v9 + 24 * v10);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  return result;
}

uint64_t dyld4::RuntimeState::removeMissingFlatLazySymbols(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 888);
  v4 = *(a1 + 896);
  v5 = &v3[3 * v4];
  v6 = v3;
  if (v4)
  {
    v7 = *(a2 + 8);
    v6 = *(a1 + 888);
    while (1)
    {
      v8 = *a2;
      if (v7)
      {
        v9 = 8 * v7;
        v8 = *a2;
        while (*v8 != *v6)
        {
          ++v8;
          v9 -= 8;
          if (!v9)
          {
            goto LABEL_9;
          }
        }
      }

      if (v8 != (*a2 + 8 * v7))
      {
        break;
      }

LABEL_9:
      v6 += 3;
      if (v6 == v5)
      {
        goto LABEL_23;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_23:
    v6 = &v3[3 * v4];
  }

  else
  {
    v10 = v6 + 3;
    if (v6 + 3 != v5)
    {
      do
      {
        v11 = *(a2 + 8);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = *a2;
          while (*v13 != *v10)
          {
            ++v13;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          v13 = *a2;
        }

        if (v13 == (*a2 + 8 * v11))
        {
LABEL_20:
          v14 = *v10;
          v6[2] = v10[2];
          *v6 = v14;
          v6 += 3;
        }

        v10 += 3;
      }

      while (v10 != v5);
      v3 = *(a1 + 888);
      v4 = *(a1 + 896);
    }
  }

  return lsl::Vector<dyld4::RuntimeState::MissingFlatSymbol>::erase(a1 + 880, v6, &v3[3 * v4]);
}

double __Block_byref_object_copy__46(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__47(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

void *dyld4::RuntimeState::setLaunchMissingDylib(void *this, const char *a2, const char *a3)
{
  this[82] = 1;
  this[83] = a3;
  this[84] = a2;
  this[85] = 0;
  return this;
}

void *dyld4::RuntimeState::setLaunchMissingSymbol(void *this, const char *a2, const char *a3, const char *a4)
{
  this[82] = 4;
  this[83] = a4;
  this[84] = a3;
  this[85] = a2;
  return this;
}

void dyld4::RuntimeState::setVMAccountingSuspending(dyld4::RuntimeState *this, int a2)
{
  if (*(this + 1115) != a2)
  {
    v13 = v2;
    v14 = v3;
    if (*(*(this + 1) + 322) == 1)
    {
      dyld4::RuntimeState::log(this, "set vm.footprint_suspend=%d\n", a2);
    }

    v11 = 0;
    v12 = a2;
    v10 = 4;
    v6 = sysctlbyname("vm.footprint_suspend", &v11, &v10, &v12, 4uLL);
    if (*(*(this + 1) + 322) == 1 && v6 != 0)
    {
      v8 = v6;
      v9 = __error();
      dyld4::RuntimeState::log(this, "vm.footprint_suspend => %d, errno=%d\n", v8, *v9);
    }

    *(this + 1115) = a2;
  }
}

uint64_t dyld4::RuntimeState::increaseJetsamLimit(uint64_t this, void *a2)
{
  if (a2 && (*(*(this + 8) + 289) & 1) != 0)
  {
    v3 = getpid();

    return memorystatus_control(&dword_14 + 2, v3, a2, 0, 0, v4, v5, v6);
  }

  return this;
}

uint64_t dyld4::RuntimeState::patchedDataConstPageCount(dyld4::RuntimeState *this)
{
  v1 = *(this + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = 24 * v1;
  v3 = (*(this + 31) + 8);
  LODWORD(v4) = 1;
  do
  {
    v4 = v4 + dyld4::AccountingBitmap::getBitCount(v3);
    v3 += 3;
    v2 -= 24;
  }

  while (v2);
  return v4;
}

uint64_t dyld4::AccountingBitmap::getBitCount(int8x8_t **this)
{
  v1 = *this;
  if ((*this & 7) != 0)
  {
    dyld4::AccountingBitmap::getBitCount();
  }

  v2 = &this[1][7] + 7;
  if (v2 < 0x40)
  {
    return 0;
  }

  result = 0;
  v4 = v2 >> 6;
  do
  {
    v5 = *v1++;
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    result += v6.u32[0];
    --v4;
  }

  while (v4);
  return result;
}

void *dyld4::RuntimeState::recordInDataConstBitmap(void *this, unint64_t a2)
{
  v2 = this[1];
  if (*(v2 + 289) != 1)
  {
    return this;
  }

  v4 = this;
  v5 = this[32];
  if (v5)
  {
    v6 = this[31];
    v7 = &v6[3 * v5];
  }

  else
  {
    v8 = *(v2 + 368);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = ___ZN5dyld412RuntimeState23recordInDataConstBitmapEy_block_invoke;
    v14[3] = &__block_descriptor_tmp_55;
    v14[4] = v4;
    v14[5] = v8;
    this = DyldSharedCache::forEachCache(v8, v14);
    v9 = v4[32];
    if (!v9)
    {
      return this;
    }

    v6 = v4[31];
    v7 = &v6[3 * v9];
  }

  if (*v6 <= a2)
  {
    v11 = v6 + 3;
    while (v11 != v7)
    {
      v12 = *v11;
      v11 += 3;
      if (v12 > a2)
      {
        v10 = v11 - 6;
        goto LABEL_12;
      }
    }

    v10 = v11 - 3;
    goto LABEL_15;
  }

  v10 = 0;
LABEL_12:
  if (v10)
  {
LABEL_15:
    v13 = ((a2 & ~vm_page_mask) - *v10) >> vm_page_shift;
    if (v13 < v10[2])
    {
      return dyld4::AccountingBitmap::setBit(v10 + 1, v13);
    }
  }

  return this;
}

uint64_t ___ZN5dyld412RuntimeState23recordInDataConstBitmapEy_block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZN5dyld412RuntimeState23recordInDataConstBitmapEy_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_53;
  v4 = *(a1 + 32);
  return DyldSharedCache::forEachRegion(a2, v3);
}

double ___ZN5dyld412RuntimeState23recordInDataConstBitmapEy_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 2) != 0)
  {
    v7 = *(a1 + 32);
    v8 = DyldSharedCache::slide(*(a1 + 40)) + a3;
    dyld4::AccountingBitmap::AccountingBitmap(&v13, a4 / vm_page_size);
    v14 = v13;
    lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(v7 + 240, *(v7 + 256) + 1);
    v9 = *(v7 + 248);
    v10 = *(v7 + 256);
    *(v7 + 256) = v10 + 1;
    v11 = v9 + 24 * v10;
    *v11 = v8;
    result = *&v14;
    *(v11 + 8) = v14;
  }

  return result;
}

void *dyld4::AccountingBitmap::setBit(void *this, unint64_t a2)
{
  if (this[1] <= a2)
  {
    dyld4::AccountingBitmap::setBit();
  }

  *(*this + (a2 >> 3)) |= 1 << (a2 & 7);
  return this;
}

double dyld4::RuntimeState::checkHiddenCacheAddr(uint64_t a1, uint64_t a2, unint64_t a3, const unsigned __int8 *a4, vm_address_t *a5)
{
  if (a2)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      v17 = 0;
      v16 = 0;
      if (dyld4::JustInTimeLoader::overridesDylibInCache(a2, &v17, &v16))
      {
        v14 = 0;
        v15 = 0;
        IndexedImageEntry = DyldSharedCache::getIndexedImageEntry(*(*(a1 + 8) + 368), v16, &v15, &v14);
        if (IndexedImageEntry)
        {
          v13 = 0;
          v12 = 0;
          if (dyld3::MachOLoaded::hasExportedSymbol(IndexedImageEntry, a4, 0, &v13, &v12))
          {
            v11.n128_u64[0] = v13;
            v11.n128_u64[1] = a3;
            *&result = dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back(a5, &v11).n128_u64[0];
          }
        }
      }
    }
  }

  return result;
}

__n128 dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back(vm_address_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = v4 + 1;
  if (v4 + 1 > a1[1])
  {
    dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::growTo(a1, v5);
    v4 = a1[2];
    v5 = v4 + 1;
  }

  v6 = *a1;
  a1[2] = v5;
  result = *a2;
  *(v6 + 16 * v4) = *a2;
  return result;
}

void dyld4::RuntimeState::appendInterposingTuples(uint64_t **this, const dyld4::Loader *a2, const unsigned __int8 *a3)
{
  if (*(this[1] + 311) == 1)
  {
    __chkstk_darwin(this);
    v66 = 0;
    v67 = &v66;
    v68 = 0x4002000000;
    v69 = __Block_byref_object_copy__56;
    v70 = __Block_byref_object_dispose__57;
    v71 = v46 - v8;
    v72 = v9;
    v73 = 0;
    if (v6)
    {
      v10 = v6;
      do
      {
        v11 = v67[7];
        if (v11 >= v67[6])
        {
          ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
        }

        v12 = v67[5];
        v67[7] = v11 + 1;
        v13 = (v12 + 32 * v11);
        *v13 = 0uLL;
        v13[1] = 0uLL;
        --v10;
      }

      while (v10);
    }

    v46[1] = v7;
    v14 = &a3[16 * v6];
    v56 = 0;
    v57 = &v56;
    v58 = 0x5002000000;
    v59 = __Block_byref_object_copy__58;
    v60 = __Block_byref_object_dispose__59;
    v61 = &v74;
    v62 = 32;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3802000000;
    v53 = __Block_byref_object_copy__60;
    v54 = __Block_byref_object_dispose__61;
    Diagnostics::Diagnostics(v55);
    v15 = dyld4::Loader::analyzer(a2, this);
    if (dyld3::MachOFile::hasChainedFixups(v15))
    {
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 0x40000000;
      v49[2] = ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke;
      v49[3] = &unk_A0DC8;
      v49[8] = v15;
      v49[9] = a2;
      v49[4] = &v50;
      v49[5] = &v56;
      v49[10] = a3;
      v49[11] = v14;
      v49[6] = &v66;
      v49[7] = this;
      dyld3::MachOAnalyzer::withChainStarts(v15, (v51 + 5), 0, v49);
    }

    else
    {
      Address = mach_o::Header::preferredLoadAddress(v15);
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 0x40000000;
      v48[2] = ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_3;
      v48[3] = &unk_A0DF0;
      v48[6] = a3;
      v48[7] = v14;
      v48[4] = &v66;
      v48[5] = v15;
      v48[8] = v15 - Address;
      v48[9] = a2;
      dyld3::MachOAnalyzer::forEachRebase(v15, (v51 + 5), 0, v48);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 0x40000000;
      v47[2] = ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_4;
      v47[3] = &unk_A0E18;
      v47[8] = v15;
      v47[9] = a3;
      v47[10] = v14;
      v47[11] = a2;
      v47[4] = &v50;
      v47[5] = &v66;
      v47[6] = &v56;
      v47[7] = this;
      dyld3::MachOAnalyzer::forEachBind(v15, (v51 + 5), v47, &__block_literal_global);
    }

    v17 = v67[7];
    if (v17)
    {
      v18 = v67[5];
      v19 = v18 + 32 * v17;
      do
      {
        v20 = *(v18 + 16);
        if (v20)
        {
          v21 = *(v18 + 8);
          if (v21)
          {
            v22 = this[24];
            if (!v22)
            {
              goto LABEL_20;
            }

            v23 = 0;
            v24 = this[23];
            v25 = 16 * v22;
            do
            {
              if (v24[1] == v20)
              {
                v23 = *v24;
                *v24 = v21;
              }

              v24 += 2;
              v25 -= 16;
            }

            while (v25);
            if (v23)
            {
              v26 = 0;
            }

            else
            {
LABEL_20:
              lsl::Vector<dyld4::InterposeTupleAll>::reserve((this + 22), v22 + 1);
              v23 = 0;
              v27 = this[23];
              v28 = this[24];
              this[24] = (v28 + 1);
              v29 = &v27[2 * v28];
              *v29 = v21;
              v29[1] = v20;
              v26 = 1;
            }

            if (*(this[1] + 326) == 1)
            {
              v30 = dyld4::Loader::leafName(a2, this);
              v31 = *(v18 + 16);
              dyld4::RuntimeState::log(this, "%s has interposed '%s' to replacing binds to 0x%08lX with 0x%08lX\n", v30, *(v18 + 24), v31, *(v18 + 8));
            }

            v32 = *(v18 + 16);
            lsl::Vector<dyld4::InterposeTupleSpecific>::reserve((this + 26), this[28] + 1);
            v33 = this[27];
            v34 = this[28];
            this[28] = (v34 + 1);
            v35 = &v33[3 * v34];
            *v35 = a2;
            if (v26)
            {
              v35[1] = v32;
              v35[2] = v32;
            }

            else
            {
              v35[1] = v23;
              v35[2] = v32;
              if (*(this[1] + 326) == 1)
              {
                dyld4::RuntimeState::log(this, "   '%s' was previously interposed, so chaining 0x%08lX to call through to 0x%08lX\n", *(v18 + 24), *(v18 + 8), v23);
              }
            }

            v36 = v57[7];
            if (v36)
            {
              v37 = v57[5];
              v38 = 16 * v36;
              do
              {
                if (v37[1] == *(v18 + 16))
                {
                  v39 = *(v18 + 8);
                  v40 = *v37;
                  lsl::Vector<dyld4::InterposeTupleAll>::reserve((this + 22), this[24] + 1);
                  v41 = this[23];
                  v42 = this[24];
                  this[24] = (v42 + 1);
                  v43 = &v41[2 * v42];
                  *v43 = v39;
                  v43[1] = v40;
                  if (*(this[1] + 326) == 1)
                  {
                    v44 = dyld4::Loader::leafName(a2, this);
                    v45 = *(v18 + 24);
                    dyld4::RuntimeState::log(this, "%s has interposed '%s' so need to patch cache uses of 0x%08lX\n", v44, v45, *v37);
                  }
                }

                v37 += 2;
                v38 -= 16;
              }

              while (v38);
            }
          }
        }

        v18 += 32;
      }

      while (v18 != v19);
    }

    _Block_object_dispose(&v50, 8);
    Diagnostics::~Diagnostics(v55);
    _Block_object_dispose(&v56, 8);
    v63 = 0;
    if (v64)
    {
      vm_deallocate(mach_task_self_, v64, v65);
    }

    _Block_object_dispose(&v66, 8);
  }
}

__n128 __Block_byref_object_copy__56(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

double __Block_byref_object_copy__58(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__59(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

void ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 56);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x5002000000;
  v22[3] = __Block_byref_object_copy__62;
  v22[4] = __Block_byref_object_dispose__63;
  v22[5] = &v27;
  v22[6] = 128;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x5002000000;
  v18[3] = __Block_byref_object_copy__64;
  v18[4] = __Block_byref_object_dispose__65;
  v18[5] = &v26;
  v18[6] = 128;
  v19 = 0;
  address = 0;
  size = 0;
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66;
  v17[3] = &unk_A0D78;
  v8 = *(a1 + 72);
  v17[8] = v4;
  v17[9] = v8;
  v17[4] = v6;
  v17[5] = v22;
  v17[6] = *(a1 + 40);
  v17[7] = v18;
  dyld3::MachOAnalyzer::forEachChainedFixupTarget(v5, (v7 + 40), v17);
  if (!Diagnostics::hasError((*(*(a1 + 32) + 8) + 40)))
  {
    v9 = mach_o::Header::preferredLoadAddress(*(a1 + 64));
    v10 = *(*(a1 + 32) + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v11 = *(a1 + 64);
    v14 = *(a1 + 80);
    v13[2] = ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2;
    v13[3] = &unk_A0DA0;
    v15 = v9;
    v12 = *(a1 + 48);
    v16 = v11;
    v13[4] = v12;
    v13[5] = v22;
    v13[6] = v18;
    dyld3::MachOLoaded::forEachFixupInAllChains(v11, (v10 + 40), a2, 0, v13);
  }

  _Block_object_dispose(v18, 8);
  v19 = 0;
  if (address)
  {
    vm_deallocate(mach_task_self_, address, size);
  }

  _Block_object_dispose(v22, 8);
  v23 = 0;
  if (v24)
  {
    vm_deallocate(mach_task_self_, v24, v25);
  }
}

double __Block_byref_object_copy__62(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__63(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

double __Block_byref_object_copy__64(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__65(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

void ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66(uint64_t a1, int a2, const char *a3, uint64_t a4, int a5, _BYTE *a6)
{
  v17 = a3;
  v10 = *(a1 + 64);
  dyld4::Loader::resolveSymbol(*(a1 + 72), v10, (*(*(a1 + 32) + 8) + 40), a2, a3, a5, 0, 0, v16);
  if (Diagnostics::hasError((*(*(a1 + 32) + 8) + 40)))
  {
    v11 = dyld4::Loader::path(*(a1 + 72), v10);
    dyld4::RuntimeState::log(v10, "warning could not apply interposing tuples in %s\n", v11);
    *a6 = 1;
  }

  else
  {
    v12 = *(*(a1 + 40) + 8);
    v15 = dyld4::Loader::resolvedAddress(v10, v16) + a4;
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back((v12 + 40), &v15);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 56);
    if (!v14)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }

    dyld4::RuntimeState::checkHiddenCacheAddr(v10, *&v16[0], *(*(v13 + 40) + 8 * v14 - 8), a3, (*(*(a1 + 48) + 8) + 40));
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back((*(*(a1 + 56) + 8) + 40), &v17);
  }
}

void *___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2(void *result, mach_o::ChainedFixupPointerOnDisk *this, uint64_t a3)
{
  v3 = result[7];
  if (v3 <= this)
  {
    v4 = result;
    if (result[8] > this)
    {
      v5 = this - v3;
      v6 = (v5 >> 3) + (v5 >> 63);
      v7 = v6 >> 1;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) == v5 >> 3)
      {
        v19 = 0;
        result = mach_o::ChainedFixupPointerOnDisk::isRebase(this, *(a3 + 6), result[9], &v19);
        if (result)
        {
          v8 = *(v4[4] + 8);
          if (*(v8 + 56) <= v7)
          {
            ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
          }

          *(*(v8 + 40) + 32 * v7 + 8) = v19 + v4[10];
          v9 = *(v4[4] + 8);
          if (*(v9 + 56) <= v7)
          {
            ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
          }

          *(*(v9 + 40) + 32 * v7) = v4[11];
        }
      }

      else
      {
        v18 = 0;
        v19 = 0;
        result = mach_o::ChainedFixupPointerOnDisk::isBind(this, *(a3 + 6), &v18, &v19);
        if (result)
        {
          v10 = *(v4[5] + 8);
          v11 = v18;
          if (v10[7] <= v18)
          {
            v12 = v18 + 1;
            if (v10[6] <= v18)
            {
              result = dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v10 + 5, v18 + 1);
            }

            v10[7] = v12;
          }

          v13 = *(v4[4] + 8);
          if (*(v13 + 56) <= v7)
          {
            ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
          }

          *(*(v13 + 40) + 32 * v7 + 16) = *(v10[5] + 8 * v11);
          v14 = *(v4[6] + 8);
          v15 = v18;
          if (v14[7] <= v18)
          {
            v16 = v18 + 1;
            if (v14[6] <= v18)
            {
              result = dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v14 + 5, v18 + 1);
            }

            v14[7] = v16;
          }

          v17 = *(v4[4] + 8);
          if (*(v17 + 56) <= v7)
          {
            ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
          }

          *(*(v17 + 40) + 32 * v7 + 24) = *(v14[5] + 8 * v15);
        }
      }
    }
  }

  return result;
}

void *___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_3(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = (result[5] + a2);
  if (v2 <= v3 && result[7] > v3)
  {
    v4 = ((v3 - v2) >> 3) + ((v3 - v2) >> 63);
    v5 = *(result[4] + 8);
    if (*(v5 + 56) <= (v4 >> 1))
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    v6 = v4 >> 1;
    *(*(v5 + 40) + 32 * v6 + 8) = result[8] + *v3;
    v7 = *(result[4] + 8);
    if (*(v7 + 56) <= v6)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    *(*(v7 + 40) + 32 * v6) = result[9];
  }

  return result;
}

double ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, int a6, int a7, uint64_t a8)
{
  v8 = *(a1 + 64) + a2;
  if (*(a1 + 72) <= v8 && *(a1 + 80) > v8)
  {
    v12 = *(a1 + 56);
    dyld4::Loader::resolveSymbol(*(a1 + 88), v12, (*(*(a1 + 32) + 8) + 40), a3, a5, a6, a7, 0, v18);
    if (Diagnostics::noError((*(*(a1 + 32) + 8) + 40)))
    {
      v14 = ((v8 - *(a1 + 72)) >> 3) + ((v8 - *(a1 + 72)) >> 63);
      v15 = dyld4::Loader::resolvedAddress(v12, v18);
      v16 = *(*(a1 + 40) + 8);
      if (*(v16 + 56) <= (v14 >> 1))
      {
        ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
      }

      *(*(v16 + 40) + 32 * (v14 >> 1) + 16) = v15 + a8;
      v17 = *(*(a1 + 40) + 8);
      if (*(v17 + 56) <= (v14 >> 1))
      {
        ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
      }

      *(*(v17 + 40) + 32 * (v14 >> 1) + 24) = a5;
      return dyld4::RuntimeState::checkHiddenCacheAddr(v12, *&v18[0], v15 + a8, a5, (*(*(a1 + 48) + 8) + 40));
    }
  }

  return result;
}

double __Block_byref_object_copy__83(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__84(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

void ___ZN5dyld412RuntimeState22buildInterposingTablesEv_block_invoke_2(void *a1, uint64_t a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = v4 + *(a2 + 56);
  v7 = &v6[-mach_o::Header::preferredLoadAddress(v4)];
  v8 = a1[6];
  v9 = *(a2 + 64) >> 4;

  dyld4::RuntimeState::appendInterposingTuples(v5, v8, v7);
}

void *dyld4::Reaper::markDirectlyDlopenedImagesAsUsed(void *this)
{
  v1 = *(*this + 1040);
  if (v1)
  {
    v2 = *(*this + 1032);
    v3 = &v2[2 * v1];
    do
    {
      if (v2[1])
      {
        v4 = this[1];
        v5 = v4[2];
        if (v5)
        {
          v6 = (*v4 + 8);
          v7 = 16 * v5;
          while (*(v6 - 1) != *v2)
          {
            v6 += 16;
            v7 -= 16;
            if (!v7)
            {
              goto LABEL_10;
            }
          }

          *v6 = 1;
        }
      }

LABEL_10:
      v2 += 2;
    }

    while (v2 != v3);
  }

  return this;
}

void *dyld4::Reaper::markDynamicNeverUnloadImagesAsUsed(void *this)
{
  v1 = *(*this + 1072);
  if (v1)
  {
    v2 = *(*this + 1064);
    v3 = &v2[v1];
    v4 = this[1];
    v5 = *v4;
    v6 = v4[2];
    v7 = (v5 + 8);
    do
    {
      if (v6)
      {
        v8 = 16 * v6;
        v9 = v7;
        while (*(v9 - 1) != *v2)
        {
          v9 += 16;
          v8 -= 16;
          if (!v8)
          {
            goto LABEL_9;
          }
        }

        *v9 = 1;
      }

LABEL_9:
      ++v2;
    }

    while (v2 != v3);
  }

  return this;
}

uint64_t dyld4::Reaper::markDependentsOf(dyld4::RuntimeState **this, const dyld4::Loader *a2)
{
  result = dyld4::Loader::dependentCount(a2);
  if (result)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      result = dyld4::Loader::dependent(a2, *this, i, 0);
      v7 = this[1];
      v8 = *(v7 + 2);
      if (v8)
      {
        v9 = (*v7 + 8);
        v10 = 16 * v8;
        while ((*v9 & 1) != 0 || *(v9 - 1) != result)
        {
          v9 += 16;
          v10 -= 16;
          if (!v10)
          {
            goto LABEL_10;
          }
        }

        *v9 = 1;
      }

LABEL_10:
      ;
    }
  }

  v11 = *(*this + 116);
  if (v11)
  {
    v12 = *(*this + 115);
    v13 = v12 + 16 * v11;
    do
    {
      if (*v12 == a2)
      {
        v14 = this[1];
        v15 = *(v14 + 2);
        if (v15)
        {
          v16 = (*v14 + 8);
          v17 = 16 * v15;
          while (*(v16 - 1) != *(v12 + 8))
          {
            v16 += 16;
            v17 -= 16;
            if (!v17)
            {
              goto LABEL_14;
            }
          }

          *v16 = 1;
        }
      }

LABEL_14:
      v12 += 16;
    }

    while (v12 != v13);
  }

  return result;
}

uint64_t dyld4::Reaper::markDependentOfInUseImages(uint64_t this)
{
  v1 = *(this + 8);
  v2 = v1[2];
  if (v2)
  {
    v3 = this;
    v4 = (*v1 + 8);
    v5 = 16 * v2;
    do
    {
      if (*v4 == 1)
      {
        this = dyld4::Reaper::markDependentsOf(v3, *(v4 - 1));
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return this;
}

uint64_t dyld4::Reaper::garbageCollect(dyld4::Reaper *this)
{
  dyld4::Reaper::markDirectlyDlopenedImagesAsUsed(this);
  dyld4::Reaper::markDynamicNeverUnloadImagesAsUsed(this);
  v2 = *(this + 1);
  v3 = v2[2];
  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    v6 = 16 * v3;
    v7 = (v5 + 8);
    do
    {
      v8 = *v7;
      v7 += 16;
      v4 += v8;
      v6 -= 16;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  do
  {
    while (1)
    {
      v9 = v4;
      result = dyld4::Reaper::markDependentOfInUseImages(this);
      v11 = *(this + 1);
      v12 = v11[2];
      if (v12)
      {
        break;
      }

      v4 = 0;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    v4 = 0;
    v13 = *v11;
    v14 = 16 * v12;
    v15 = (v13 + 8);
    v16 = 16 * v12;
    do
    {
      v17 = *v15;
      v15 += 16;
      v4 += v17;
      v16 -= 16;
    }

    while (v16);
  }

  while (v4 != v9);
  v18 = 0;
  v19 = (v13 + 8);
  do
  {
    v20 = *v19;
    v19 += 16;
    v18 += v20;
    v14 -= 16;
  }

  while (v14);
  LODWORD(v12) = v12 - v18;
LABEL_15:
  *(this + 4) = v12;
  return result;
}

void dyld4::Reaper::finalizeDeadImages(dyld4::Reaper *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 4) && *(*this + 1114) == 1)
  {
    v9 = (16 * *(this + 4)) | 8;
    __chkstk_darwin(this, a2, a3, a4, a5, a6, a7, a8, v18);
    v20 = 0;
    v21 = &v20;
    v22 = 0x5002000000;
    v23 = __Block_byref_object_copy__89;
    v11 = *(this + 4);
    v24 = __Block_byref_object_dispose__90;
    v25 = &v19[-1] - ((v10 + 23) & 0x1FFFFFFFF0);
    v26 = v11;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v12 = *(this + 1);
    v13 = v12[2];
    if (v13)
    {
      v14 = *v12;
      v15 = 16 * v13;
      do
      {
        if ((*(v14 + 8) & 1) == 0)
        {
          v16 = dyld4::Loader::analyzer(*v14, *this);
          if ((*(*v14 + 4) & 2) == 0)
          {
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 0x40000000;
            v19[2] = ___ZN5dyld46Reaper18finalizeDeadImagesEv_block_invoke;
            v19[3] = &unk_A0EC8;
            v19[4] = &v20;
            v19[5] = v16;
            mach_o::Header::forEachSegment(v16, v19);
          }
        }

        v14 += 16;
        v15 -= 16;
      }

      while (v15);
      v17 = v21[7];
      if (v17)
      {
        dyld4::LibSystemHelpersWrapper::__cxa_finalize_ranges((*this + 160), v21[5], v17);
      }
    }

    _Block_object_dispose(&v20, 8);
    v27 = 0;
    if (v28)
    {
      vm_deallocate(mach_task_self_, v28, v29);
    }
  }
}

double __Block_byref_object_copy__89(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__90(void *result)
{
  result[7] = 0;
  v1 = result[8];
  if (v1)
  {
    return vm_deallocate(mach_task_self_, v1, result[9]);
  }

  return result;
}

double ___ZN5dyld46Reaper18finalizeDeadImagesEv_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 47) & 4) != 0)
  {
    v4 = *(a2 + 16);
    Slide = dyld3::MachOLoaded::getSlide(*(a1 + 40));
    v6 = *(a2 + 24);
    v8.n128_u64[0] = Slide + v4;
    v8.n128_u64[1] = v6;
    *&result = dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back((*(*(a1 + 32) + 8) + 40), &v8).n128_u64[0];
  }

  return result;
}

uint64_t dyld4::LibSystemHelpersWrapper::__cxa_finalize_ranges(lsl::MemoryManager *a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v29 = a3;
  v13 = lsl::MemoryManager::memoryManager(a1);
  result = v13[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v6, v7, v8, v9, v10, v11, v12, v27);
    if (result)
    {
      v21 = v13[6];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 0x40000000;
      v31[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper21__cxa_finalize_rangesEPK13__cxa_range_tjEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESA__block_invoke;
      v31[3] = &__block_descriptor_tmp_160;
      v31[4] = a1;
      v31[5] = &v30;
      v31[6] = &v29;
      return lsl::ProtectedStack::withNestedRegularStack(v21, v31, v15, v16, v17, v18, v19, v20, v28);
    }
  }

  if (*(v13 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v23 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v23 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v24 = MEMORY[0xFFFFFC0D8];
          if (v24 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*(**a1 + 80))(*a1, a2, a3);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v25 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v25 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v26 = MEMORY[0xFFFFFC0D0];
                  if (v26 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v22 = *(**a1 + 80);

  return v22();
}

void dyld4::RuntimeState::garbageCollectInner(dyld4::RuntimeState *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 6);
  __chkstk_darwin(this, a2, a3, a4, a5, a6, a7, a8, v38);
  v47 = 0;
  v48 = &v47;
  v49 = 0x4002000000;
  v50 = __Block_byref_object_copy__92;
  v51 = __Block_byref_object_dispose__93;
  v52 = &v38 - ((v10 + 23) & 0xFFFFFFFFFFFFFFF0);
  v53 = v11;
  v54 = 0;
  v13 = *(v12 + 112);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 0x40000000;
  v46[2] = ___ZN5dyld412RuntimeState19garbageCollectInnerEv_block_invoke;
  v46[3] = &unk_A0EF0;
  v46[4] = &v47;
  v46[5] = this;
  dyld4::RuntimeLocks::withLoadersReadLock(v13, v46);
  v44[0] = this;
  v44[1] = v48 + 5;
  v45 = 0;
  dyld4::Reaper::garbageCollect(v44);
  dyld4::Reaper::finalizeDeadImages(v44, v14, v15, v16, v17, v18, v19, v20);
  v21 = 8 * v48[7];
  __chkstk_darwin(v22, v23, v24, v25, v26, v27, v28, v29, v38);
  bzero(&v38 - ((v21 + 351) & 0xFFFFFFFFFFFFFFF0), v21 + 336);
  v30 = __stackAllocatorInternal((&v38 - ((v21 + 351) & 0xFFFFFFFFFFFFFFF0)), v21 + 336);
  v40 = v30;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v40, v48[7]);
  v31 = v48[7];
  if (v31)
  {
    v32 = v48[5] + 8;
    v33 = 16 * v31;
    v34 = v32;
    do
    {
      v35 = *v34;
      v34 += 16;
      if ((v35 & 1) == 0)
      {
        lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v40, v42 + 1);
        v36 = *(v32 - 8);
        v37 = v42++;
        *(v41 + 8 * v37) = v36;
      }

      v32 = v34;
      v33 -= 16;
    }

    while (v33);
  }

  if (v42)
  {
    v38 = v41;
    v39 = v42;
    dyld4::RuntimeState::notifyUnload(this, &v38);
    v38 = v41;
    v39 = v42;
    dyld4::RuntimeState::removeLoaders(this, &v38);
  }

  if (v41)
  {
    lsl::Vector<char const*>::resize(&v40, 0);
  }

  lsl::Allocator::~Allocator(v30);
  _Block_object_dispose(&v47, 8);
}

__n128 __Block_byref_object_copy__92(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void ___ZN5dyld412RuntimeState19garbageCollectInnerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 48);
  if (v2)
  {
    v4 = *(v1 + 40);
    v5 = 8 * v2;
    v6 = v4;
    do
    {
      v7 = *(*v6 + 4);
      if ((v7 & 2) == 0)
      {
        v8 = *(*(a1 + 32) + 8);
        v9.n128_u64[0] = *v6;
        v9.n128_u8[8] = (v7 & 0x20) != 0;
        dyld3::Array<dyld4::Reaper::LoaderAndUse>::push_back((v8 + 40), &v9);
      }

      v6 += 8;
      v4 += 8;
      v5 -= 8;
    }

    while (v5);
  }
}