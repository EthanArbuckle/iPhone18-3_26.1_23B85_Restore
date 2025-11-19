uint64_t anonymous namespace::error(_anonymous_namespace_ *this, const char *a2, const char *a3, const char *a4)
{
  if (a3)
  {
    snprintf(__str, 0x400uLL, "%s%s at %s:%u\n");
  }

  else
  {
    snprintf(__str, 0x400uLL, "%s%s\n");
  }

  return asl_log(0, 0, 3, "%s", __str);
}

void __swift::__runtime::llvm::report_fatal_error(char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  __swift::__runtime::llvm::report_fatal_error(a1, 0);
}

void __swift::__runtime::llvm::report_fatal_error(const void *a1, const void *a2)
{
  v3[0] = a1;
  v3[1] = a2;
  __swift::__runtime::llvm::StringRef::str(v3, v2);
  __swift::__runtime::llvm::report_fatal_error(v2);
}

const void **__swift::__runtime::llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void __swift::__runtime::llvm::llvm_unreachable_internal(__swift::__runtime::llvm *this, const char *a2, const char *a3)
{
  if (this)
  {
    v5 = this;
  }

  else
  {
    v5 = "UNREACHABLE executed!";
  }

  abort();
}

void *__swift::__runtime::llvm::SmallPtrSetImplBase::shrink_and_clear(void **this)
{
  free(this[1]);
  v2 = *(this + 5) - *(this + 6);
  v3 = 1 << (33 - __clz(v2 - 1));
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2 <= 0x10)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3;
  }

  *(this + 4) = v4;
  v5 = malloc_type_malloc(8 * v4, 0x8C556D9CuLL);
  if (!v5)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", &dword_0 + 1);
  }

  this[1] = v5;
  v6 = 8 * *(this + 4);

  return memset(v5, 255, v6);
}

const void **__swift::__runtime::llvm::SmallPtrSetImplBase::insert_imp_big(__swift::__runtime::llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 5);
  v3 = *(this + 4);
  if (3 * v3 <= 4 * (v2 - *(this + 6)))
  {
    v14 = a2;
    if (v3 >= 0x40)
    {
      v3 *= 2;
    }

    else
    {
      v3 = 128;
    }
  }

  else
  {
    if (v3 - v2 >= v3 >> 3)
    {
      goto LABEL_3;
    }

    v14 = a2;
  }

  v15 = this;
  __swift::__runtime::llvm::SmallPtrSetImplBase::Grow(this, v3);
  this = v15;
  a2 = v14;
LABEL_3:
  v4 = *(this + 4) - 1;
  v5 = *(this + 1);
  v6 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v5 + 8 * v6);
  v8 = *v7;
  if (*v7 == -1)
  {
    v9 = 0;
LABEL_5:
    if (v9)
    {
      v7 = v9;
    }

    if (*v7 != a2)
    {
      if (*v7 == -2)
      {
        --*(this + 6);
      }

      else
      {
        ++*(this + 5);
      }

      *v7 = a2;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (v8 != a2)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 + 2 == 0;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v4;
      v7 = (v5 + 8 * (v12 & v4));
      v8 = *v7;
      if (*v7 == -1)
      {
        goto LABEL_5;
      }
    }
  }

  return v7;
}

void __swift::__runtime::llvm::SmallPtrSetImplBase::Grow(__swift::__runtime::llvm::SmallPtrSetImplBase *this, unsigned int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  v6 = 16;
  if (v4 == *this)
  {
    v6 = 20;
  }

  v7 = *(this + v6);
  v8 = malloc_type_malloc(8 * a2, 0x8C556D9CuLL);
  if (!v8 && (a2 || (v8 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", &dword_0 + 1);
  }

  *(this + 1) = v8;
  *(this + 4) = a2;
  memset(v8, 255, 8 * a2);
  if (v7)
  {
    v9 = v4;
    do
    {
      v12 = *v9;
      if (*v9 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = *(this + 4) - 1;
        v14 = *(this + 1);
        v15 = v13 & ((v12 >> 4) ^ (v12 >> 9));
        v11 = (v14 + 8 * v15);
        v16 = *v11;
        if (*v11 == -1)
        {
          v10 = 0;
LABEL_9:
          if (v10)
          {
            v11 = v10;
          }
        }

        else
        {
          v10 = 0;
          v17 = 1;
          while (v16 != v12)
          {
            if (v10)
            {
              v18 = 0;
            }

            else
            {
              v18 = v16 == -2;
            }

            if (v18)
            {
              v10 = v11;
            }

            v19 = v15 + v17++;
            v15 = v19 & v13;
            v11 = (v14 + 8 * (v19 & v13));
            v16 = *v11;
            if (*v11 == -1)
            {
              goto LABEL_9;
            }
          }
        }

        *v11 = v12;
      }

      ++v9;
    }

    while (v9 != &v4[v7]);
  }

  if (v4 != v5)
  {
    free(v4);
  }

  *(this + 20) = (*(this + 5) - *(this + 6));
}

const void **__swift::__runtime::llvm::SmallPtrSetImplBase::FindBucketFor(__swift::__runtime::llvm::SmallPtrSetImplBase *this, char *a2)
{
  v2 = *(this + 4) - 1;
  v3 = *(this + 1);
  v4 = ((a2 >> 4) ^ (a2 >> 9)) & v2;
  result = (v3 + 8 * v4);
  v6 = *result;
  if (*result == -1)
  {
    v7 = 0;
LABEL_3:
    if (v7)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while (v6 != a2)
    {
      if (v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v6 + 2 == 0;
      }

      if (v9)
      {
        v7 = result;
      }

      v10 = v4 + v8++;
      v4 = v10 & v2;
      result = (v3 + 8 * v4);
      v6 = *result;
      if (*result == -1)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

__swift::__runtime::llvm::SmallPtrSetImplBase *__swift::__runtime::llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(__swift::__runtime::llvm::SmallPtrSetImplBase *this, const void **__dst, const __swift::__runtime::llvm::SmallPtrSetImplBase *a3)
{
  *this = __dst;
  v5 = *(a3 + 1);
  if (v5 == *a3)
  {
    v7 = __dst;
    *(this + 1) = __dst;
  }

  else
  {
    v6 = *(a3 + 4);
    v7 = malloc_type_malloc(8 * v6, 0x8C556D9CuLL);
    if (!v7 && (v6 || (v7 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
    {
      __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", &dword_0 + 1);
    }

    *(this + 1) = v7;
    v5 = *a3;
  }

  *(this + 4) = *(a3 + 4);
  v8 = *(a3 + 1);
  v9 = v8 == v5;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  v11 = *(a3 + v10);
  if (v11)
  {
    memmove(v7, v8, 8 * v11);
  }

  *(this + 20) = *(a3 + 20);
  return this;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::CopyHelper(__swift::__runtime::llvm::SmallPtrSetImplBase *this, const __swift::__runtime::llvm::SmallPtrSetImplBase *a2)
{
  *(this + 4) = *(a2 + 4);
  v4 = *(a2 + 1);
  v5 = 16;
  if (v4 == *a2)
  {
    v5 = 20;
  }

  v6 = *(a2 + v5);
  if (v6)
  {
    memmove(*(this + 1), v4, 8 * v6);
  }

  result = *(a2 + 20);
  *(this + 20) = result;
  return result;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(uint64_t a1, void *__dst, int a3, double *a4)
{
  *a1 = __dst;
  v5 = *a4;
  v4 = *(a4 + 1);
  if (v4 == *a4)
  {
    *(a1 + 8) = __dst;
    v6 = *(a4 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a3;
      v9 = a4;
      memmove(__dst, *(a4 + 1), 8 * v6);
      a3 = v8;
      a1 = v7;
      a4 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a4 + 1) = v5;
  }

  result = a4[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a4 + 6);
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = a3;
  return result;
}

{
  *a1 = __dst;
  v5 = *a4;
  v4 = *(a4 + 1);
  if (v4 == *a4)
  {
    *(a1 + 8) = __dst;
    v6 = *(a4 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a3;
      v9 = a4;
      memmove(__dst, *(a4 + 1), 8 * v6);
      a3 = v8;
      a1 = v7;
      a4 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a4 + 1) = v5;
  }

  result = a4[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a4 + 6);
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = a3;
  return result;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::MoveHelper(uint64_t a1, int a2, double *a3)
{
  v4 = *a3;
  v3 = *(a3 + 1);
  if (v3 == *a3)
  {
    v5 = *a1;
    *(a1 + 8) = *a1;
    v6 = *(a3 + 5);
    if (v6)
    {
      v7 = a1;
      v8 = a2;
      v9 = a3;
      memmove(v5, *(a3 + 1), 8 * v6);
      a1 = v7;
      a2 = v8;
      a3 = v9;
    }
  }

  else
  {
    *(a1 + 8) = v3;
    a3[1] = v4;
  }

  result = a3[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = a2;
  return result;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::CopyFrom(__swift::__runtime::llvm::SmallPtrSetImplBase *this, const __swift::__runtime::llvm::SmallPtrSetImplBase *a2)
{
  v4 = *(this + 1);
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v4 == *this)
  {
    if (v5 == v6)
    {
      v4 = *this;
    }

    else
    {
      v7 = *(a2 + 4);
      if (*(this + 4) == v7)
      {
        goto LABEL_15;
      }

      v4 = malloc_type_malloc(8 * v7, 0x8C556D9CuLL);
      if (!v4)
      {
LABEL_9:
        if (v7 || (v4 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0)
        {
          __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", &dword_0 + 1);
        }
      }
    }
  }

  else
  {
    if (v5 != v6)
    {
      v7 = *(a2 + 4);
      if (*(this + 4) == v7)
      {
        goto LABEL_15;
      }

      v4 = malloc_type_realloc(v4, 8 * v7, 0x48319B8uLL);
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    free(v4);
    v4 = *this;
  }

LABEL_14:
  *(this + 1) = v4;
LABEL_15:
  *(this + 4) = *(a2 + 4);
  v8 = *(a2 + 1);
  v9 = 16;
  if (v8 == *a2)
  {
    v9 = 20;
  }

  v10 = *(a2 + v9);
  if (v10)
  {
    memmove(v4, v8, 8 * v10);
  }

  result = *(a2 + 20);
  *(this + 20) = result;
  return result;
}

double __swift::__runtime::llvm::SmallPtrSetImplBase::MoveFrom(uint64_t a1, int a2, double *a3)
{
  v6 = *(a1 + 8);
  if (v6 != *a1)
  {
    free(v6);
  }

  v8 = *a3;
  v7 = *(a3 + 1);
  if (v7 == *a3)
  {
    v9 = *a1;
    *(a1 + 8) = *a1;
    v10 = *(a3 + 5);
    if (v10)
    {
      memmove(v9, *(a3 + 1), 8 * v10);
    }
  }

  else
  {
    *(a1 + 8) = v7;
    a3[1] = v8;
  }

  result = a3[2];
  *(a1 + 16) = result;
  *(a1 + 24) = *(a3 + 6);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 4) = a2;
  return result;
}

unint64_t *__swift::__runtime::llvm::SmallPtrSetImplBase::swap(unint64_t *this, __swift::__runtime::llvm::SmallPtrSetImplBase *a2)
{
  if (this == a2)
  {
    return this;
  }

  v2 = *this;
  v3 = this[1];
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v3 == *this)
  {
    if (v5 != v4)
    {
      v7 = *(this + 5);
      if (v7)
      {
        v8 = this;
        v9 = a2;
        memmove(*a2, v3, 8 * v7);
        this = v8;
        a2 = v9;
        v4 = *v9;
        v5 = *(v9 + 1);
      }

      v10 = *(a2 + 4);
      *(a2 + 4) = *(this + 4);
      *(this + 4) = v10;
      v11 = *(a2 + 5);
      *(a2 + 5) = *(this + 5);
      *(this + 5) = v11;
      v12 = *(a2 + 6);
      *(a2 + 6) = *(this + 6);
      *(this + 6) = v12;
      this[1] = v5;
      *(a2 + 1) = v4;
      return this;
    }

    v19 = *(a2 + 5);
    v20 = *(this + 5);
    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = 8 * v21;
    if (v21)
    {
      v23 = (v21 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v23 < 9)
      {
        v24 = *this;
LABEL_26:
        v35 = (v2 + 8 * v21);
        do
        {
          v36 = *v24;
          *v24++ = *v4;
          *v4++ = v36;
        }

        while (v24 != v35);
        goto LABEL_28;
      }

      v25 = v2 >= &v4[v22 / 8] || v4 >= v2 + v22;
      v24 = *this;
      if (!v25)
      {
        goto LABEL_26;
      }

      v26 = v23 + 1;
      v27 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      v28 = &v4[v27];
      v24 = (v2 + v27 * 8);
      v29 = (v2 + 16);
      v30 = (v4 + 2);
      v31 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *(v29 - 1);
        v33 = *v29;
        v34 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v34;
        *(v30 - 1) = v32;
        *v30 = v33;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v4 = v28;
      if (v26 != (v26 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    if (v19 >= v20)
    {
      v38 = 8 * v19 - v22;
      if (8 * v19 == v22)
      {
        goto LABEL_33;
      }

      v37 = *a2;
      v39 = *this;
    }

    else
    {
      v37 = *this;
      v38 = 8 * (v20 - v21);
      v39 = *a2;
    }

    v40 = a2;
    v41 = this;
    memmove((v39 + 8 * v21), (v37 + v22), v38);
    this = v41;
    a2 = v40;
    goto LABEL_33;
  }

  if (v5 != v4)
  {
    this[1] = v5;
    *(a2 + 1) = v3;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
LABEL_33:
    v42 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v42;
    v43 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v43;
    return this;
  }

  v13 = *(a2 + 5);
  if (v13)
  {
    v14 = this;
    v15 = a2;
    memmove(*this, *(a2 + 1), 8 * v13);
    this = v14;
    a2 = v15;
    v2 = *v14;
    v3 = v14[1];
  }

  v16 = *(a2 + 4);
  *(a2 + 4) = *(this + 4);
  *(this + 4) = v16;
  v17 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v17;
  v18 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v18;
  *(a2 + 1) = v3;
  this[1] = v2;
  return this;
}

uint64_t __swift::__runtime::llvm::SmallVectorBase<unsigned int>::SmallVectorBase(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = a3;
  return result;
}

{
  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = a3;
  return result;
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned int>::mallocForGrow(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (HIDWORD(a2))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity overflow during allocation", &dword_0 + 1);
  }

  v4 = *(a1 + 12);
  if (v4 == -1)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity unable to grow", &dword_0 + 1);
  }

  if (((2 * *(a1 + 12)) | 1uLL) > a2)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = a2;
  }

  if (v5 >= 0xFFFFFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  *a4 = v5;
  v6 = v5 * a3;
  result = malloc_type_malloc(v5 * a3, 0x8C556D9CuLL);
  if (!result && (v6 || (result = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", &dword_0 + 1);
  }

  return result;
}

{
  return __swift::__runtime::llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a2, a3, a4);
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity overflow during allocation", &dword_0 + 1);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity unable to grow", &dword_0 + 1);
  }

  if (((2 * *(a1 + 12)) | 1uLL) > a3)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 0xFFFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v8 = *a1;
  v9 = v7 * a4;
  if (*a1 == a2)
  {
    v12 = malloc_type_malloc(v7 * a4, 0x8C556D9CuLL);
    if (!v12 && (v9 || (v12 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
    {
LABEL_21:
      __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", &dword_0 + 1);
    }

    v13 = v12;
    memcpy(v12, *a1, *(a1 + 8) * a4);
    result = v13;
  }

  else
  {
    result = malloc_type_realloc(v8, v7 * a4, 0x48319B8uLL);
    if (!result)
    {
      if (v9)
      {
        goto LABEL_21;
      }

      result = malloc_type_malloc(1uLL, 0x8C556D9CuLL);
      if (!result)
      {
        goto LABEL_21;
      }
    }
  }

  *a1 = result;
  *(a1 + 12) = v7;
  return result;
}

{
  return __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, a3, a4);
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned long long>::SmallVectorBase(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned long long>::mallocForGrow(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity unable to grow", &dword_0 + 1);
  }

  if (((2 * v4) | 1uLL) > a2)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = a2;
  }

  *a4 = v5;
  v6 = v5 * a3;
  result = malloc_type_malloc(v5 * a3, 0x8C556D9CuLL);
  if (!result && (v6 || (result = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
  {
    __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", &dword_0 + 1);
  }

  return result;
}

void *__swift::__runtime::llvm::SmallVectorBase<unsigned long long>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    __swift::__runtime::llvm::report_bad_alloc_error("SmallVector capacity unable to grow", &dword_0 + 1);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v6 = 2 * v4 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = *a1;
  v8 = v6 * a4;
  if (v7 == a2)
  {
    v11 = malloc_type_malloc(v6 * a4, 0x8C556D9CuLL);
    if (!v11 && (v8 || (v11 = malloc_type_malloc(1uLL, 0x8C556D9CuLL)) == 0))
    {
LABEL_16:
      __swift::__runtime::llvm::report_bad_alloc_error("Allocation failed", &dword_0 + 1);
    }

    v12 = v11;
    memcpy(v11, *a1, *(a1 + 8) * a4);
    result = v12;
  }

  else
  {
    result = malloc_type_realloc(v7, v6 * a4, 0x48319B8uLL);
    if (!result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      result = malloc_type_malloc(1uLL, 0x8C556D9CuLL);
      if (!result)
      {
        goto LABEL_16;
      }
    }
  }

  *a1 = result;
  *(a1 + 16) = v6;
  return result;
}

uint64_t __swift::__runtime::llvm::StringRef::compare_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  if (a3 >= v3)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = *a1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 | 0x20;
      v9 = v7 - 65 >= 0x1A;
      v11 = *a2++;
      v10 = v11;
      if (!v9)
      {
        v6 = v8;
      }

      if (v10 - 65 < 0x1A)
      {
        v10 |= 0x20u;
      }

      if (v6 != v10)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    if (v6 < v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
LABEL_12:
    v12 = v3 == a3;
    if (v3 < a3)
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

BOOL __swift::__runtime::llvm::StringRef::starts_with_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = a3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = v7 | 0x20;
    if ((v7 - 65) >= 0x1A)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v11 = *a2++;
    v10 = v11;
    v12 = v11 | 0x20;
    if ((v11 - 65) >= 0x1A)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v15 = v5-- != 0;
    result = v9 == v13;
  }

  while (v9 == v13 && v15);
  return result;
}

BOOL __swift::__runtime::llvm::StringRef::ends_with_insensitive(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = *a1 + v3;
  v6 = -a3;
  do
  {
    v7 = *(v5 + v6);
    if ((v7 - 65) < 0x1A)
    {
      v7 |= 0x20u;
    }

    v9 = *a2++;
    v8 = v9;
    v10 = v9 | 0x20;
    if ((v9 - 65) < 0x1A)
    {
      v8 = v10;
    }

    result = v7 == v8;
  }

  while (v7 == v8 && v6++ != -1);
  return result;
}

unint64_t __swift::__runtime::llvm::StringRef::find_insensitive(__swift::__runtime::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v4 = a2;
  if (a2 - 65 < 0x1A)
  {
    v4 = a2 | 0x20;
  }

  v5 = *(this + 1);
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = *(this + 1);
  }

  if (v5 == result)
  {
    return -1;
  }

  v7 = *this;
  while (1)
  {
    v8 = *(v7 + result);
    if ((v8 - 65) < 0x1A)
    {
      v8 |= 0x20u;
    }

    if (v8 == v4)
    {
      break;
    }

    if (v5 == ++result)
    {
      return -1;
    }
  }

  return result;
}

uint64_t __swift::__runtime::llvm::StringRef::compare_numeric(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[1];
  if (a3 >= v5)
  {
    v6 = a1[1];
  }

  else
  {
    v6 = a3;
  }

  if (!v6)
  {
LABEL_38:
    if (v5 < a3)
    {
      v34 = -1;
    }

    else
    {
      v34 = 1;
    }

    if (v5 == a3)
    {
      return 0;
    }

    else
    {
      return v34;
    }
  }

  v8 = 0;
  v9 = v6 + 1;
  v10 = *a1;
  v11 = -v6;
  v12 = *a1 + 1;
  while (1)
  {
    v14 = *(v10 + v8);
    v15 = *(a2 + v8);
    if (v14 - 48 <= 9 && v15 - 48 <= 9)
    {
      break;
    }

    v13 = v8;
    if (v14 != v15)
    {
      if (v14 < v15)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

LABEL_7:
    v8 = v13 + 1;
    if (v13 + 1 == v6)
    {
      goto LABEL_38;
    }
  }

  v17 = 0;
  v18 = a2 + 1;
  v19 = v12;
  do
  {
    if (!(v11 + v8 + v17))
    {
      v13 = v6;
      v30 = v9 - v8;
      if (v9 == v8)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

    v27 = v8 + v17 + 1;
    if (v27 >= v5)
    {
      v28 = 0;
      if (v27 >= a3)
      {
LABEL_31:
        v22 = 0;
        v24 = 5;
        v23 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v28 = *(v19 + v8) - 48 < 0xA;
      if (v27 >= a3)
      {
        goto LABEL_31;
      }
    }

    v20 = (*(v18 + v8) - 48);
    v21 = v20 >= 0xA;
    v22 = v20 < 0xA;
    if (v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = -1;
    }

    if (v21)
    {
      v24 = 5;
    }

    else
    {
      v24 = 0;
    }

LABEL_19:
    v25 = v28 == v22;
    if (v28 == v22)
    {
      v26 = v24;
    }

    else
    {
      v26 = 1;
    }

    if (v25)
    {
      v3 = v3;
    }

    else
    {
      v3 = v23;
    }

    ++v17;
    ++v19;
    ++v18;
  }

  while (!v26);
  if (v26 != 5)
  {
    return v3;
  }

  v29 = v8 + v17;
  v13 = v29 - 1;
  v30 = v29 - v8;
  if (v29 == v8)
  {
    goto LABEL_7;
  }

LABEL_36:
  v36 = v11;
  v31 = v10;
  v32 = v6;
  v33 = memcmp((v10 + v8), (a2 + v8), v30);
  v6 = v32;
  v10 = v31;
  v11 = v36;
  if (!v33)
  {
    goto LABEL_7;
  }

  return (v33 >> 31) | 1u;
}

unsigned __int8 **__swift::__runtime::llvm::StringRef::lower@<X0>(unsigned __int8 **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = a2;
  v3 = this[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    v6 = v4;
    v2 = a2;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 | 0x20;
      if ((v8 - 65) < 0x1A)
      {
        v7 = v9;
      }

      *v2++ = v7;
    }

    while (v6 != &v4[v3]);
  }

  *v2 = 0;
  return this;
}

unsigned __int8 **__swift::__runtime::llvm::StringRef::upper@<X0>(unsigned __int8 **this@<X0>, _BYTE *a2@<X8>)
{
  v2 = a2;
  v3 = this[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    v6 = v4;
    v2 = a2;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 - 32;
      if ((v8 - 97) < 0x1A)
      {
        v7 = v9;
      }

      *v2++ = v7;
    }

    while (v6 != &v4[v3]);
  }

  *v2 = 0;
  return this;
}

uint64_t __swift::__runtime::llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v5 = a1[1];
  v6 = v5 - a4;
  if (v5 < a4)
  {
    return -1;
  }

  v7 = a4;
  if (!a3)
  {
    return v7;
  }

  if (v6 < a3)
  {
    return -1;
  }

  v10 = *a1;
  v11 = (*a1 + a4);
  v12 = a3 - 1;
  if (a3 == 1)
  {
    v13 = memchr(v11, *a2, v6);
    if (v13)
    {
      return v13 - v10;
    }

    else
    {
      return -1;
    }
  }

  v14 = &v11[v6 - a3];
  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (memcmp((v10 + v7), a2, a3))
    {
      ++v7;
      result = -1;
      if (v10 + v7 - 1 >= v14)
      {
        return result;
      }
    }

    return v7;
  }

  v28 = vdupq_n_s8(a3);
  v29 = v28;
  v27[12] = v28;
  v27[13] = v28;
  v27[10] = v28;
  v27[11] = v28;
  v27[8] = v28;
  v27[9] = v28;
  v27[6] = v28;
  v27[7] = v28;
  v27[4] = v28;
  v27[5] = v28;
  v27[2] = v28;
  v27[3] = v28;
  v27[0] = v28;
  v27[1] = v28;
  v15 = a3 - 2;
  if (a3 <= 2)
  {
    v16 = 0;
    v17 = 0;
LABEL_13:
    v18 = v17 + 1;
    do
    {
      *(v27 + a2[v16]) = v12 - v16;
      v16 = v18++;
    }

    while (v12 != v16);
    goto LABEL_15;
  }

  v17 = 0;
  v16 = 0;
  if (HIDWORD(v15))
  {
    goto LABEL_13;
  }

  v16 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v17 = v12 & 0xFFFFFFFE;
  v24 = a2 + 1;
  v25 = v12 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v27 + *(v24 - 1)) = v15 + 1;
    v26 = *v24;
    v24 += 2;
    *(v27 + v26) = v15;
    v15 -= 2;
    v25 -= 2;
  }

  while (v25);
  if (v12 != v16)
  {
    goto LABEL_13;
  }

LABEL_15:
  v19 = v14 + 1;
  v20 = a2[v12];
  while (1)
  {
    v21 = v11[v12];
    if (v21 == v20)
    {
      v22 = v11;
      v23 = memcmp(v11, a2, v12);
      v11 = v22;
      if (!v23)
      {
        break;
      }
    }

    v11 += *(v27 + v21);
    if (v11 >= v19)
    {
      return -1;
    }
  }

  return &v22[-v10];
}

uint64_t __swift::__runtime::llvm::StringRef::find_insensitive(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  if (v4 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v4 - v5;
  if (v6 < a3)
  {
    return -1;
  }

  v8 = *a1 + v5;
  v9 = a4;
  result = -1;
  while (a3)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v8 + v10);
      v12 = *(a2 + v10);
      if ((v11 - 65) < 0x1A)
      {
        v11 |= 0x20u;
      }

      if ((v12 - 65) < 0x1A)
      {
        v12 |= 0x20u;
      }

      if (v11 != v12)
      {
        break;
      }

      if (a3 == ++v10)
      {
        return v9;
      }
    }

    ++v8;
    --v6;
    ++v9;
    if (v6 < a3)
    {
      return result;
    }
  }

  return a4;
}

unint64_t __swift::__runtime::llvm::StringRef::rfind_insensitive(__swift::__runtime::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  if (*(this + 1) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(this + 1);
  }

  if (a2 - 65 >= 0x1A)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 | 0x20;
  }

  while (v3)
  {
    v5 = v3 - 1;
    v6 = *(*this + v3 - 1);
    if ((v6 - 65) >= 0x1A)
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 | 0x20;
    }

    v3 = v5;
    if (v7 == v4)
    {
      return v5;
    }
  }

  return -1;
}

uint64_t __swift::__runtime::llvm::StringRef::rfind(uint64_t *a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = v3 - a3;
  if (v3 < a3)
  {
    return -1;
  }

  v5 = v4 + 1;
  if (v4 == -1)
  {
    return -1;
  }

  v9 = *a1;
  while (1)
  {
    --v5;
    v10 = v3 >= v4 ? v4 : v3;
    if (a3 <= v3 - v10)
    {
      if (!a3)
      {
        return v5;
      }

      if (!memcmp((v9 + v10), a2, a3))
      {
        break;
      }
    }

    if (--v4 == -1)
    {
      return -1;
    }
  }

  return v4;
}

uint64_t __swift::__runtime::llvm::StringRef::rfind_insensitive(uint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 - a3;
  if (v3 >= a3)
  {
    v5 = v4 + 1;
    if (v4 != -1)
    {
      v7 = *a1;
      while (1)
      {
        if (v3 >= v4)
        {
          v8 = v4;
        }

        else
        {
          v8 = v3;
        }

        --v5;
        v9 = v3 - v5;
        if (v3 < v5)
        {
          v9 = 0;
        }

        if (a3 <= v9)
        {
          if (!a3)
          {
            return v5;
          }

          v10 = (v7 + v8);
          v11 = a2;
          v12 = a3;
          while (1)
          {
            v14 = *v10++;
            v13 = v14;
            v15 = v14 | 0x20;
            v16 = (v14 - 65) >= 0x1A;
            v18 = *v11++;
            v17 = v18;
            if (!v16)
            {
              v13 = v15;
            }

            if ((v17 - 65) < 0x1A)
            {
              v17 |= 0x20u;
            }

            if (v13 != v17)
            {
              break;
            }

            if (!--v12)
            {
              return v5;
            }
          }
        }

        --v4;
        result = -1;
        if (!v5)
        {
          return result;
        }
      }
    }
  }

  return -1;
}

uint64_t __swift::__runtime::llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t __swift::__runtime::llvm::StringRef::find_first_not_of(__swift::__runtime::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 <= a3)
  {
    return -1;
  }

  while (*(*this + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

uint64_t __swift::__runtime::llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t __swift::__runtime::llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

unint64_t __swift::__runtime::llvm::StringRef::find_last_not_of(__swift::__runtime::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  if (*(this + 1) >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = *(this + 1);
  }

  while (v3)
  {
    v4 = v3 - 1;
    v5 = *(*this + v3-- - 1);
    if (v5 != a2)
    {
      return v4;
    }
  }

  return -1;
}

uint64_t __swift::__runtime::llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

_OWORD *__swift::__runtime::llvm::StringRef::split(_OWORD *result, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, int a6)
{
  v21 = *result;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v21 + 1);
    do
    {
      result = __swift::__runtime::llvm::StringRef::find(&v21, a3, a4, 0);
      if (result == -1)
      {
        break;
      }

      v16 = v21;
      if (result || a6)
      {
        if (v11 >= result)
        {
          v12 = result;
        }

        else
        {
          v12 = v11;
        }

        v13 = *(a2 + 8);
        if (v13 >= *(a2 + 12))
        {
          v17 = result;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v13 + 1, 16);
          result = v17;
          v13 = *(a2 + 8);
        }

        v14 = (*a2 + 16 * v13);
        *v14 = v16;
        v14[1] = v12;
        ++*(a2 + 8);
      }

      v15 = result + a4;
      if (v11 < result + a4)
      {
        v15 = v11;
      }

      v11 -= v15;
      *&v21 = v16 + v15;
      *(&v21 + 1) = v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v11 = *(&v21 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v18 = v21;
    v19 = *(a2 + 8);
    if (v19 >= *(a2 + 12))
    {
      result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v19 + 1, 16);
      LODWORD(v19) = *(a2 + 8);
    }

    v20 = (*a2 + 16 * v19);
    *v20 = v18;
    v20[1] = v11;
    ++*(a2 + 8);
  }

  return result;
}

char *__swift::__runtime::llvm::StringRef::split(char *result, uint64_t a2, int __c, int a4, int a5)
{
  v7 = *result;
  v8 = *(result + 1);
  if (!a4)
  {
LABEL_19:
    if ((a5 & 1) == 0 && !v8)
    {
      return result;
    }

    goto LABEL_24;
  }

  v9 = a4;
  while (v8)
  {
    result = memchr(v7, __c, v8);
    if (!result)
    {
      goto LABEL_24;
    }

    v15 = result - v7;
    if (result - v7 == -1)
    {
      goto LABEL_24;
    }

    if (result != v7 || a5)
    {
      if (v8 >= v15)
      {
        v11 = result - v7;
      }

      else
      {
        v11 = v8;
      }

      v12 = *(a2 + 8);
      if (v12 >= *(a2 + 12))
      {
        result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v12 + 1, 16);
        v12 = *(a2 + 8);
      }

      v13 = (*a2 + 16 * v12);
      *v13 = v7;
      v13[1] = v11;
      ++*(a2 + 8);
    }

    if (v8 >= v15 + 1)
    {
      v14 = v15 + 1;
    }

    else
    {
      v14 = v8;
    }

    v7 += v14;
    v8 -= v14;
    if (!--v9)
    {
      goto LABEL_19;
    }
  }

  if (a5)
  {
    v8 = 0;
LABEL_24:
    v16 = *(a2 + 8);
    if (v16 >= *(a2 + 12))
    {
      result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v16 + 1, 16);
      LODWORD(v16) = *(a2 + 8);
    }

    v17 = (*a2 + 16 * v16);
    *v17 = v7;
    v17[1] = v8;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t __swift::__runtime::llvm::StringRef::count(void *a1, const void *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = v5 - a3;
  if (v5 < a3)
  {
    return 0;
  }

  v7 = v6 + 1;
  if (v6 == -1)
  {
    return 0;
  }

  v8 = 0;
  v11 = 0;
  do
  {
    if (v5 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v5;
    }

    if (a3 > v5 - v13)
    {
      v12 = 1;
    }

    else
    {
      v14 = memcmp((*a1 + v13), a2, a3);
      if (v14)
      {
        v12 = 1;
      }

      else
      {
        v12 = a3;
      }

      if (!v14)
      {
        ++v8;
      }
    }

    v11 += v12;
  }

  while (v11 < v7);
  return v8;
}

uint64_t __swift::__runtime::llvm::consumeUnsignedInteger(__swift::__runtime::llvm *this, __swift::__runtime::llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(this + 1);
  if (a2)
  {
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (v4 < 2)
  {
    LODWORD(a2) = 10;
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  v13 = *this;
  if (**this == 30768 || *v13 == 22576)
  {
    v14 = v13 + 2;
    LODWORD(a2) = 16;
LABEL_30:
    v16 = -2;
LABEL_31:
    v4 += v16;
    *this = v14;
    *(this + 1) = v4;
    if (!v4)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (*v13 == 25136 || *v13 == 16944)
  {
    v14 = v13 + 2;
    LODWORD(a2) = 2;
    goto LABEL_30;
  }

  if (*v13 == 28464)
  {
    v14 = v13 + 2;
    LODWORD(a2) = 8;
    goto LABEL_30;
  }

  if (*v13 == 48)
  {
    v15 = *(v13 + 1);
    v14 = v13 + 1;
    if ((v15 - 48) <= 9)
    {
      LODWORD(a2) = 8;
      v16 = -1;
      goto LABEL_31;
    }
  }

  LODWORD(a2) = 10;
LABEL_3:
  v5 = 0;
  v6 = *this;
  *a3 = 0;
  v7 = v4;
  do
  {
    if (*v6 < 48)
    {
      break;
    }

    v8 = *v6;
    if (v8 >= 0x3A)
    {
      if (v8 < 0x61)
      {
        if (v8 - 65 > 0x19)
        {
          break;
        }

        v9 = -55;
      }

      else
      {
        if (v8 >= 0x7B)
        {
          break;
        }

        v9 = -87;
      }
    }

    else
    {
      v9 = -48;
    }

    v10 = v9 + v8;
    if (v10 >= a2)
    {
      break;
    }

    v11 = v5 * a2 + v10;
    *a3 = v11;
    if (v11 / a2 < v5)
    {
      return 1;
    }

    ++v6;
    v5 = v11;
    --v7;
  }

  while (v7);
  if (v4 != v7)
  {
    *this = v6;
    *(this + 1) = v7;
    return 0;
  }

  return 1;
}

uint64_t __swift::__runtime::llvm::consumeSignedInteger(__swift::__runtime::llvm *this, __swift::__runtime::llvm::StringRef *a2, unint64_t *a3, unint64_t *a4)
{
  v12 = 0;
  v5 = *(this + 1);
  if (v5 && **this == 45)
  {
    *&v11 = *this + 1;
    *(&v11 + 1) = v5 - 1;
    LODWORD(result) = __swift::__runtime::llvm::consumeUnsignedInteger(&v11, a2, &v12, a4);
    v8 = v12;
    if (v12 > 0x8000000000000000)
    {
      result = 1;
    }

    else
    {
      result = result;
    }

    if ((result & 1) == 0)
    {
      *this = v11;
      v9 = -v8;
LABEL_11:
      *a3 = v9;
    }
  }

  else
  {
    v10 = __swift::__runtime::llvm::consumeUnsignedInteger(this, a2, &v12, a4);
    result = 1;
    if ((v10 & 1) == 0)
    {
      v9 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {
        result = 0;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t __swift::__runtime::llvm::getAsUnsignedInteger(uint64_t a1, uint64_t a2, __swift::__runtime::llvm::StringRef *a3, unint64_t *a4)
{
  v5 = a1;
  v6 = a2;
  LODWORD(result) = __swift::__runtime::llvm::consumeUnsignedInteger(&v5, a3, a4, a4);
  if (v6)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

BOOL __swift::__runtime::llvm::getAsSignedInteger(_BYTE *a1, uint64_t a2, __swift::__runtime::llvm::StringRef *a3, unint64_t *a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v9 = 0;
  if (a2 && *a1 == 45)
  {
    *&v8 = a1 + 1;
    *(&v8 + 1) = a2 - 1;
    if ((__swift::__runtime::llvm::consumeUnsignedInteger(&v8, a3, &v9, a4) & 1) == 0 && v9 < 0x8000000000000001)
    {
      v7 = v8;
      v5 = -v9;
LABEL_8:
      *a4 = v5;
      return *(&v7 + 1) != 0;
    }
  }

  else if ((__swift::__runtime::llvm::consumeUnsignedInteger(&v7, a3, &v9, a4) & 1) == 0)
  {
    v5 = v9;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  return 1;
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_combine_range_impl<char const>(void *a1, uint64_t a2)
{
  v2 = a2;
  {
    v62 = a1;
    __swift::__runtime::llvm::hashing::detail::hash_combine_range_impl<char const>();
    a1 = v62;
    v2 = a2;
  }

  v3 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  v4 = v2 - a1;
  if ((v2 - a1) > 0x40)
  {
    v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
    v7 = __ROR8__(__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273, 49);
    v8 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed >> 47);
    v9 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (((0x9DDFEA08EB382D69 * (v8 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed))) ^ __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed)));
    v10 = a1[1];
    v12 = a1[6];
    v11 = a1[7];
    v13 = v7 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + v10;
    v14 = a1[5];
    v15 = v14 + v7 - 0x4B6D499041670D8DLL * __ROR8__(v12 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed - 0x4B6D499041670D8DLL * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed, 42);
    v16 = *a1 - 0x6D8ED9027DD26057 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
    v18 = a1[2];
    v17 = a1[3];
    v19 = v16 + v10 + v18;
    v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47));
    v21 = __ROR8__(v8 - 0x622015F714C7D297 * (v6 ^ (v6 >> 47)), 33);
    v22 = (0xB492B66FBE98F273 * __ROR8__(v13, 37)) ^ v20;
    v23 = __ROR8__(v19, 44) + v16 + __ROR8__(v22 + v8 + v16 + v17, 21);
    v24 = 0xB492B66FBE98F273 * v21;
    v25 = v19 + v17;
    v26 = v20 + a1[4] - 0x4B6D499041670D8DLL * v21;
    v27 = v14 + v12 + v26;
    v28 = __ROR8__(v15 + v18 + v11 + v26, 21) + v26 + __ROR8__(v27, 44);
    v29 = v27 + v11;
    v30 = (v4 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v4 & 0xFFFFFFFFFFFFFFC0) == 0x40)
    {
      v31 = v22;
    }

    else
    {
      v32 = a1 + 15;
      do
      {
        v33 = *(v32 - 6);
        v34 = v15 + v25 + v24 + v33;
        v35 = *(v32 - 1);
        v36 = *(v32 - 2);
        v15 = v36 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v23 + v35, 42);
        v37 = v22 + v29;
        v38 = *(v32 - 7) - 0x4B6D499041670D8DLL * v23;
        v40 = *(v32 - 5);
        v39 = *(v32 - 4);
        v41 = v38 + v33 + v40;
        v31 = (0xB492B66FBE98F273 * __ROR8__(v34, 37)) ^ v28;
        v23 = __ROR8__(v41, 44) + v38 + __ROR8__(v31 + v29 + v38 + v39, 21);
        v24 = 0xB492B66FBE98F273 * __ROR8__(v37, 33);
        v25 = v41 + v39;
        v42 = v24 + v28 + *(v32 - 3);
        v43 = v36 + v35 + v42;
        v28 = __ROR8__(v15 + v40 + v42 + *v32, 21) + v42 + __ROR8__(v43, 44);
        v29 = v43 + *v32;
        v32 += 8;
        v22 = v31;
        v30 -= 64;
      }

      while (v30);
    }

    if ((v4 & 0x3F) != 0)
    {
      v44 = *(v2 - 56);
      v45 = *(v2 - 16);
      v46 = *(v2 - 8);
      v47 = v31 + v29;
      v48 = (0xB492B66FBE98F273 * __ROR8__(v15 + v25 + v24 + v44, 37)) ^ v28;
      v50 = *(v2 - 32);
      v49 = *(v2 - 24);
      v15 = v49 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v23 + v45, 42);
      v51 = v48 + v29;
      v52 = *(v2 - 64) - 0x4B6D499041670D8DLL * v23;
      v55 = v2 - 48;
      v53 = *(v2 - 48);
      v54 = *(v55 + 8);
      v56 = v52 + v44 + v53;
      v24 = 0xB492B66FBE98F273 * __ROR8__(v47, 33);
      v23 = __ROR8__(v56, 44) + v52 + __ROR8__(v51 + v52 + v54, 21);
      v25 = v56 + v54;
      v57 = v24 + v28 + v50;
      v58 = v49 + v45 + v57;
      v28 = __ROR8__(v15 + v53 + v57 + v46, 21) + v57 + __ROR8__(v58, 44);
      v29 = v58 + v46;
      v31 = v48;
    }

    v59 = 0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v28)));
    v60 = v24 - 0x4B6D499041670D8DLL * (v4 ^ (v4 >> 47)) - 0x622015F714C7D297 * (v59 ^ (v59 >> 47));
    v61 = 0x9DDFEA08EB382D69 * ((v31 - 0x4B6D499041670D8DLL * (v15 ^ (v15 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v29)))) ^ ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v29)))) >> 47))) ^ v60);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) ^ ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) >> 47));
  }

  else
  {

    return __swift::__runtime::llvm::hashing::detail::hash_short(a1, v4, v3);
  }
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_short(__swift::__runtime::llvm::hashing::detail *this, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 <= 4)
  {
    v3 = *(this + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *this));
    v5 = v3 ^ (v4 >> 47) ^ v4;
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 - 9 <= 7)
  {
    v7 = *(this + a2 - 8);
    v8 = __ROR8__(v7 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) >> 47))) ^ v7;
  }

  if (a2 - 17 <= 0xF)
  {
    v9 = *(this + 1);
    v10 = 0x9AE16A3B2F90404FLL * *(this + a2 - 8);
    v11 = __ROR8__(0xB492B66FBE98F273 * *this - v9, 43) - 0x3C5A37A36834CED9 * *(this + a2 - 16) + __ROR8__(v10 ^ a3, 30);
    v12 = a3 + a2 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *this - v10;
    v5 = v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 >= 0x21)
  {
    v13 = this + a2;
    v14 = *(this + a2 - 16);
    v15 = *(this + a2 - 8);
    v16 = *this - 0x3C5A37A36834CED9 * (v14 + a2);
    v18 = *(this + 2);
    v17 = *(this + 3);
    v19 = __ROR8__(v16 + v17, 52);
    v20 = v16 + *(this + 1);
    v21 = __ROR8__(v20, 7);
    v22 = v20 + v18;
    v23 = v21 + __ROR8__(*this - 0x3C5A37A36834CED9 * (v14 + a2), 37) + v19;
    v24 = *(this + a2 - 32) + v18;
    v25 = __ROR8__(v24 + v15, 52);
    v26 = v23 + __ROR8__(v22, 31);
    v27 = __ROR8__(v24, 37);
    v28 = *(v13 - 3) + v24;
    v29 = __ROR8__(v28, 7);
    v30 = v28 + v14;
    v31 = __ROR8__(v30, 31);
    v32 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) ^ ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) >> 47))) ^ a3) + v26;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  if (a2)
  {
    v32 = (0x9AE16A3B2F90404FLL * (*this | (*(this + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(this + a2 - 1))) ^ a3;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  return a3 ^ 0x9AE16A3B2F90404FLL;
}

uint64_t minimalDataLayoutQueryFunction<(unsigned char)4>(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  if (a2 > 1)
  {
    if (a2 == 4)
    {
      *a4 = 4096;
      return 1;
    }

    else if (a2 == 3)
    {
      *a4 = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a4 = 4;
    return 1;
  }
}

uint64_t minimalDataLayoutQueryFunction<(unsigned char)8>(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  if (a2 > 1)
  {
    if (a2 == 4)
    {
      *a4 = 0x100000000;
      return 1;
    }

    else if (a2 == 3)
    {
      *a4 = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a4 = 8;
    return 1;
  }
}

void swift_reflection_createReflectionContextWithDataLayout(uint64_t a1, void (*a2)(void))
{
  v2 = 1;
  a2();
  operator new();
}

SwiftReflectionContext *swift_reflection_destroyReflectionContext(SwiftReflectionContext *result)
{
  if (result)
  {
    SwiftReflectionContext::~SwiftReflectionContext(result);

    operator delete();
  }

  return result;
}

uint64_t swift_reflection_addReflectionInfo(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v6 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_addReflectionMappingInfo(v4);
  }

  else
  {
    v7 = &v6;
    return (off_E0C00[v2])(&v7, a1);
  }
}

uint64_t swift_reflection_addReflectionMappingInfo(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v6 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_addImage(v4);
  }

  else
  {
    v7 = &v6;
    return (off_E0C10[v2])(&v7, a1);
  }
}

uint64_t swift_reflection_addImage(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_readIsaMask(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0C20[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_readIsaMask(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_typeRefForMetadata(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0E10[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_typeRefForMetadata(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_ownsObject(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0E20[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_ownsObject(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_ownsAddress(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0EE0[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_ownsAddress(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_ownsAddressStrict(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0EF0[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_ownsAddressStrict(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_metadataForObject(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0F00[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_metadataForObject(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_metadataNominalTypeDescriptor(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0F10[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_metadataNominalTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_metadataIsActor(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0F20[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_metadataIsActor(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_typeRefForInstance(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0F30[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_typeRefForInstance(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_typeRefForMangledTypeName(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0F40[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_typeRefForMangledTypeName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v6[0] = &v8;
  v6[1] = &v7;
  v9 = v6;
  v3 = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_copyDemangledNameForTypeRef(v5);
  }

  else
  {
    v10 = &v9;
    return (off_E0F50[v3])(&v10, a1);
  }
}

char *swift_reflection_copyDemangledNameForTypeRef(uint64_t a1, swift::reflection::TypeRef *a2)
{
  v20[1] = 0;
  v20[2] = 0;
  v21 = 0;
  v22 = 2400;
  v23 = 0;
  v24 = 0;
  v59 = 0;
  v20[0] = off_E13E8;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v57 = 0;
  Demangling = swift::reflection::TypeRef::getDemangling(a2, v20);
  v7 = 0;
  v8 = 0x101010101010101;
  v9 = 1;
  v10 = 0x101010100000000;
  v11 = 1;
  v12 = 256;
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16[0] = off_E0BC8;
  v16[1] = swift::Demangle::__runtime::genericParameterName;
  v17 = v16;
  swift::Demangle::__runtime::nodeToString(Demangling, &v7, v3, __s1);
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_5:
      v4 = strdup(__s1);
      goto LABEL_8;
    }
  }

  else
  {
    if (v17)
    {
      (*(*v17 + 40))();
    }

    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v5 = *__s1;
  v4 = strdup(*__s1);
  operator delete(v5);
LABEL_8:
  v20[0] = off_E13E8;
  if (v59 == &v58)
  {
    (*(*v59 + 32))(v59);
  }

  else if (v59)
  {
    (*(*v59 + 40))();
  }

  v20[0] = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v21);
  if (v23)
  {
    *(v23 + 48) = 0;
  }

  return v4;
}

void swift::Demangle::__runtime::Demangler::~Demangler(swift::Demangle::__runtime::Demangler *this)
{
  *this = off_E13E8;
  v2 = this + 544;
  v3 = *(this + 71);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *this = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(this + 3));
  v4 = *(this + 5);
  if (v4)
  {
    *(v4 + 48) = 0;
  }
}

{
  *this = off_E13E8;
  v2 = this + 544;
  v3 = *(this + 71);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *this = off_E13C0;
  v4 = *(this + 3);
  if (v4)
  {
    do
    {
      v5 = *v4;
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(v6 + 48) = 0;
  }

  operator delete();
}

char *swift_reflection_copyNameForTypeRef(uint64_t a1, swift::reflection::TypeRef *a2, int a3)
{
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  v24 = 2400;
  v25 = 0;
  v26 = 0;
  v61 = 0;
  v22[0] = off_E13E8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v59 = 0;
  if (!a3)
  {
    Demangling = swift::reflection::TypeRef::getDemangling(a2, v22);
    v11[0] = 0;
    *&v11[1] = 0x101010101010101;
    v12 = 1;
    v13 = 0x101010100000000;
    v14 = 1;
    v15 = 256;
    v16 = 1;
    v17[0] = 0;
    v17[1] = 0;
    v18[0] = off_E0BC8;
    v18[1] = swift::Demangle::__runtime::genericParameterName;
    v19 = v18;
    swift::Demangle::__runtime::nodeToString(Demangling, v11, v5, __s1);
    if (v19 == v18)
    {
      (*(*v19 + 32))(v19);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_9:
        v3 = strdup(__s1);
        goto LABEL_18;
      }
    }

    else
    {
      if (v19)
      {
        (*(*v19 + 40))();
      }

      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    v9 = *__s1;
    v3 = strdup(*__s1);
    v8 = v9;
    goto LABEL_17;
  }

  swift::reflection::TypeRef::getDemangling(a2, v22);
  swift::Demangle::__runtime::mangleNode();
  if (*v11)
  {
    v3 = 0;
    if ((v18[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v6 = HIBYTE(v18[0]);
  if (v18[0] >= 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = v17[0];
  }

  v3 = strdup(v7);
  if (v6 < 0)
  {
LABEL_14:
    v8 = v17[0];
LABEL_17:
    operator delete(v8);
  }

LABEL_18:
  v22[0] = off_E13E8;
  if (v61 == &v60)
  {
    (*(*v61 + 32))(v61);
  }

  else if (v61)
  {
    (*(*v61 + 40))();
  }

  v22[0] = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v23);
  if (v25)
  {
    *(v25 + 48) = 0;
  }

  return v3;
}

uint64_t swift_reflection_copyDemangledNameForProtocolDescriptor(uint64_t a1, uint64_t a2)
{
  v6 = &v7;
  v7 = a2;
  v8 = &v6;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_genericArgumentOfTypeRef(v4, v5);
  }

  else
  {
    v9 = &v8;
    return (off_E0F60[v2])(&v9, a1);
  }
}

uint64_t swift_reflection_genericArgumentOfTypeRef(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1)
  {
    if (*(a1 + 8) == 2)
    {
      return *(*(a1 + 48) + 8 * a2);
    }
  }

  return result;
}

uint64_t swift_reflection_genericArgumentCountOfTypeRef(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    if (*(a1 + 8) == 2)
    {
      return (*(a1 + 56) - *(a1 + 48)) >> 3;
    }
  }

  return result;
}

uint64_t getTypeInfoKind(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        v2 = *(a1 + 32);
        goto LABEL_13;
      }

      if (v1 == 5)
      {
        return 19;
      }

      goto LABEL_9;
    }

    return 0;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        goto LABEL_10;
      }

      if (v1 == 2)
      {
        v2 = *(a1 + 32);
        goto LABEL_15;
      }

LABEL_9:
      __break(1u);
LABEL_10:
      v2 = *(a1 + 32);
      if (v2 < 0xA)
      {
        return dword_DA714[v2];
      }

LABEL_13:
      if (v2 < 3)
      {
        return v2 + 5;
      }

LABEL_15:
      if (v2 < 4)
      {
        return dword_DA6B0[v2];
      }

      return 19;
    }

    v4 = (a1 + 32);
    v5 = *(a1 + 55);
    if (v5 < 0)
    {
      if (*(a1 + 40) != 2)
      {
        return 1;
      }

      v4 = *v4;
    }

    else if (v5 != 2)
    {
      return 1;
    }

    if (bswap32(*v4) >> 16 == 17008)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

BOOL std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t swift_reflection_infoForTypeRef(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_childOfTypeRef(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0F70[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_childOfTypeRef(uint64_t a1, uint64_t a2, int a3)
{
  v8 = a2;
  v7 = a3;
  v6[0] = &v8;
  v6[1] = &v7;
  v9 = v6;
  v3 = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_infoForMetadata(v5);
  }

  else
  {
    v10 = &v9;
    return (off_E0F80[v3])(&v10, a1);
  }
}

uint64_t swift_reflection_infoForMetadata(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_childOfMetadata(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0F90[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_childOfMetadata(uint64_t a1, uint64_t a2, int a3)
{
  v8 = a2;
  v7 = a3;
  v6[0] = &v8;
  v6[1] = &v7;
  v9 = v6;
  v3 = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_infoForInstance(v5);
  }

  else
  {
    v10 = &v9;
    return (off_E0FA0[v3])(&v10, a1);
  }
}

uint64_t swift_reflection_infoForInstance(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_childOfInstance(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E0FB0[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_childOfInstance(uint64_t a1, uint64_t a2, int a3)
{
  v8 = a2;
  v7 = a3;
  v6[0] = &v8;
  v6[1] = &v7;
  v9 = v6;
  v3 = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_projectExistential(v5);
  }

  else
  {
    v10 = &v9;
    return (off_E0FC0[v3])(&v10, a1);
  }
}

uint64_t swift_reflection_projectExistential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a3;
  v12 = a2;
  v9 = a5;
  v10 = a4;
  v8[0] = &v11;
  v8[1] = &v12;
  v8[2] = &v10;
  v8[3] = &v9;
  v13 = v8;
  v5 = *(a1 + 8);
  if (v5 == -1)
  {
    v7 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_projectExistentialAndUnwrapClass(v7);
  }

  else
  {
    v14 = &v13;
    return (off_E0FD0[v5])(&v14, a1);
  }
}

uint64_t swift_reflection_projectExistentialAndUnwrapClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a3;
  v12 = a2;
  v9 = a5;
  v10 = a4;
  v8[0] = &v11;
  v8[1] = &v12;
  v8[2] = &v10;
  v8[3] = &v9;
  v13 = v8;
  v5 = *(a1 + 8);
  if (v5 == -1)
  {
    v7 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_projectEnumValue(v7);
  }

  else
  {
    v14 = &v13;
    return (off_E0FE0[v5])(&v14, a1);
  }
}

uint64_t swift_reflection_projectEnumValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a3;
  v7[0] = &v9;
  v7[1] = &v10;
  v7[2] = &v8;
  v10 = a2;
  v11 = v7;
  v4 = *(a1 + 8);
  if (v4 == -1)
  {
    v6 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_dumpTypeRef(v6);
  }

  else
  {
    v12 = &v11;
    return (off_E0FF0[v4])(&v12, a1);
  }
}

void *swift_reflection_dumpTypeRef(uint64_t a1)
{
  if (a1)
  {
    return swift::reflection::TypeRef::dump(a1, &std::cout, 0);
  }

  else
  {
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type reference>\n", 22);
  }
}

void *std::operator<<[abi:nn200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, __s, v4);
}

uint64_t swift_reflection_dumpInfoForTypeRef(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v7 = a1;
  v5[0] = &v6;
  v5[1] = &v7;
  v8 = v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_dumpInfoForMetadata(v4);
  }

  else
  {
    v9 = &v8;
    return (off_E1000[v2])(&v9, a1);
  }
}

uint64_t swift_reflection_dumpInfoForMetadata(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_dumpInfoForInstance(v4);
  }

  else
  {
    v8 = &v7;
    return (off_E1010[v2])(&v8, a1);
  }
}

uint64_t swift_reflection_dumpInfoForInstance(uint64_t a1, uint64_t a2)
{
  v6 = &v7;
  v7 = a2;
  v8 = &v6;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_demangle(v4, v5);
  }

  else
  {
    v9 = &v8;
    return (off_E1020[v2])(&v9, a1);
  }
}

uint64_t swift_reflection_demangle(void *__src, size_t __n)
{
  if (__src && __n)
  {
    if (__n < 0x7FFFFFFFFFFFFFF8)
    {
      if (__n < 0x17)
      {
        v18 = __n;
        memcpy(__dst, __src, __n);
        *(__dst + __n) = 0;
        v7 = 0;
        v8 = 0x101010101010101;
        v9 = 1;
        v10 = 0x101010100000000;
        v11 = 1;
        v12 = 256;
        v13 = 1;
        v14 = 0;
        v15 = 0;
        v16[0] = off_E0BC8;
        v16[1] = swift::Demangle::__runtime::genericParameterName;
        v16[3] = v16;
        if ((v18 & 0x80u) == 0)
        {
          v4 = __dst;
        }

        else
        {
          v4 = __dst[0];
        }

        if ((v18 & 0x80u) == 0)
        {
          v5 = v18;
        }

        else
        {
          v5 = __dst[1];
        }

        swift::Demangle::__runtime::demangleTypeAsString(v4, v5, &v7, v3);
      }

      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

uint64_t swift_reflection_iterateConformanceCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v6[0] = &v8;
  v6[1] = &v7;
  v6[2] = &v9;
  v9 = a1;
  v10 = v6;
  v3 = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_iterateMetadataAllocations(v5);
  }

  else
  {
    v11 = &v10;
    return (off_E1030[v3])(&v11, a1);
  }
}

uint64_t swift_reflection_iterateMetadataAllocations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v6[0] = &v8;
  v6[1] = &v7;
  v6[2] = &v9;
  v9 = a1;
  v10 = v6;
  v3 = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_allocationMetadataPointer(v5);
  }

  else
  {
    v11 = &v10;
    return (off_E1118[v3])(&v11, a1);
  }
}

uint64_t swift_reflection_allocationMetadataPointer(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v6 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_metadataAllocationTagName(v4);
  }

  else
  {
    v7 = &v6;
    return (off_E11B8[v2])(&v7, a1);
  }
}

uint64_t swift_reflection_metadataAllocationTagName(uint64_t a1, int a2)
{
  v7 = a1;
  v6 = a2;
  v5[0] = &v6;
  v5[1] = &v7;
  v8 = v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_metadataAllocationCacheNode(v4);
  }

  else
  {
    v9 = &v8;
    return (off_E11C8[v2])(&v9, a1);
  }
}

uint64_t swift_reflection_metadataAllocationCacheNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = &v7;
  v7 = a3;
  v8 = v6;
  v3 = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_iterateMetadataAllocationBacktraces(v5);
  }

  else
  {
    v9 = &v8;
    return (off_E11D8[v3])(&v9, a1);
  }
}

uint64_t swift_reflection_iterateMetadataAllocationBacktraces(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v6[0] = &v8;
  v6[1] = &v7;
  v6[2] = &v9;
  v9 = a1;
  v10 = v6;
  v3 = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_asyncTaskSlabPointer(v5);
  }

  else
  {
    v11 = &v10;
    return (off_E11E8[v3])(&v11, a1);
  }
}

uint64_t swift_reflection_asyncTaskSlabPointer(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v7 = a1;
  v5[0] = &v6;
  v5[1] = &v7;
  v8 = v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_asyncTaskSlabAllocations(v4);
  }

  else
  {
    v9 = &v8;
    return (off_E1288[v2])(&v9, a1);
  }
}

uint64_t swift_reflection_asyncTaskSlabAllocations(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v7 = a1;
  v5[0] = &v6;
  v5[1] = &v7;
  v8 = v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_asyncTaskInfo(v4);
  }

  else
  {
    v9 = &v8;
    return (off_E1298[v2])(&v9, a1);
  }
}

uint64_t swift_reflection_asyncTaskInfo(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v7 = a1;
  v5[0] = &v6;
  v5[1] = &v7;
  v8 = v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_actorInfo(v4);
  }

  else
  {
    v9 = &v8;
    return (off_E12F0[v2])(&v9, a1);
  }
}

uint64_t swift_reflection_actorInfo(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v7 = a1;
  v5[0] = &v6;
  v5[1] = &v7;
  v8 = v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return swift_reflection_nextJob(v4);
  }

  else
  {
    v9 = &v8;
    return (off_E1390[v2])(&v9, a1);
  }
}

uint64_t swift_reflection_nextJob(uint64_t a1, uint64_t a2)
{
  v5 = &v6;
  v6 = a2;
  v7 = &v5;
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    SwiftReflectionContext::SwiftReflectionContext(v4);
  }

  v8 = &v7;
  return (off_E13A0[v2])(&v8, a1);
}

void SwiftReflectionContext::SwiftReflectionContext(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = off_E0268;
  *(a1 + 88) = a1 + 64;
  operator new();
}

void std::__shared_ptr_emplace<swift::remote::CMemoryReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_E02B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t swift::remote::CMemoryReader::getSymbolAddress(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 16);
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  return v2(v3, a2, v5);
}

uint64_t swift::remote::CMemoryReader::readString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 48))(*(a1 + 16));
  if (!v7)
  {
    *&v19 = 0;
    v11 = (*(a1 + 40))(*(a1 + 16), a2, 1, &v19);
    if (*(a1 + 32))
    {
      v12 = *(a1 + 16);
      operator new();
    }

    v14 = v22;
    v16 = off_E0360;
    v22[0] = off_E0360;
    v23 = v22;
    if (!v11)
    {
      v13 = 0;
      v21 = 0;
      goto LABEL_21;
    }

    v13 = *v11 == 0;
    v21 = 0;
    *&v19 = v11;
    goto LABEL_18;
  }

  v8 = v7;
  *&v19 = 0;
  v9 = (*(a1 + 40))(*(a1 + 16), a2, v7, &v19);
  if (*(a1 + 32))
  {
    v10 = *(a1 + 16);
    operator new();
  }

  v14 = v22;
  v22[0] = off_E0360;
  v21 = v9;
  v23 = v22;
  v13 = v9 != 0;
  if (v9)
  {
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v20) = v8;
    memmove(&v19, v9, v8);
    *(&v19 + v8) = 0;
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    v15 = v21;
    *(a4 + 16) = v20;
    v14 = v23;
    v21 = 0;
    if (!v15)
    {
      goto LABEL_21;
    }

    *&v19 = v15;
    if (!v23)
    {
      v18 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::CMemoryReader::readBytes(v18);
    }

    v16 = *v23;
LABEL_18:
    (v16[6])(v14);
    v14 = v23;
    goto LABEL_21;
  }

  v21 = 0;
LABEL_21:
  if (v14 == v22)
  {
    ((*v14)[4])(v14);
  }

  else if (v14)
  {
    ((*v14)[5])(v14);
  }

  return v13;
}

void *swift::remote::CMemoryReader::readBytes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = 0;
  v6 = (*(a1 + 40))(*(a1 + 16), a2, a3, &v9);
  if (*(a1 + 32))
  {
    v7 = *(a1 + 16);
    operator new();
  }

  result = a4 + 1;
  a4[1] = off_E0360;
  *a4 = v6;
  a4[4] = (a4 + 1);
  return result;
}

double swift::remote::MemoryReader::readBytes(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5)
{
  (*(*a1 + 24))(&__src);
  v8 = __src;
  if (__src)
  {
    memcpy(a4, __src, a5);
    __src = 0;
    v15 = v8;
    if (!v14)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::MemoryReader::resolvePointer(v9, v10, v11);
    }

    (*(*v14 + 48))(v14, &v15);
  }

  if (v14 == &v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  return result;
}

double swift::remote::MemoryReader::resolvePointer@<D0>(unsigned __int8 a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = a2;
  *(a3 + 40) = a1;
  return result;
}

double swift::remote::MemoryReader::getSymbol@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 56))(__p);
  v8 = v14;
  v9 = v14;
  if (v14 == 1)
  {
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(a4, __p[0], __p[1]);
      v9 = v14;
    }

    else
    {
      *a4 = *__p;
      *(a4 + 16) = v11;
      v9 = 1;
    }

    result = *&v12;
    *(a4 + 24) = v12;
    *(a4 + 40) = v13;
  }

  if ((v9 & 1) != 0 && SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v8 & 1) == 0)
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = a2;
    *(a4 + 40) = a3;
  }

  return result;
}

double swift::remote::MemoryReader::getDynamicSymbol@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t swift::remote::MemoryReader::readRemoteAddressImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t size)
{
  v10 = malloc_type_malloc(size, 0x26D7879DuLL);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v18 = v17;
  v16 = v10;
  v17[0] = off_E03F0;
  if (!(*(*a1 + 32))(a1, a2, a3, v10, size))
  {
    goto LABEL_6;
  }

  if (size == 8)
  {
    v12 = *v11;
    goto LABEL_9;
  }

  if (size != 4)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = *v11;
LABEL_9:
  *a4 = v12;
  *(a4 + 8) = a3;
  v13 = 1;
LABEL_10:
  v19 = v16;
  if (v18)
  {
    (*(*v18 + 48))(v18, &v19);
    if (v18 == v17)
    {
      (*(*v18 + 32))(v18);
    }

    else if (v18)
    {
      (*(*v18 + 40))(v18);
    }

    return v13;
  }

  v15 = std::__throw_bad_function_call[abi:nn200100]();
  return std::unique_ptr<void const,std::function<void ()(void const*)>>::~unique_ptr[abi:nn200100](v15);
}

uint64_t std::unique_ptr<void const,std::function<void ()(void const*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v6 = v2;
    v3 = a1[4];
    if (!v3)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v3 + 48))(v3, &v6);
  }

  v4 = a1[4];
  if (v4 == a1 + 1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

__n128 std::__function::__func<swift::remote::CMemoryReader::readBytes(swift::remote::RemoteAddress,unsigned long long)::{lambda(void const*)#2},std::allocator<swift::remote::CMemoryReader::readBytes(swift::remote::RemoteAddress,unsigned long long)::{lambda(void const*)#2}>,void ()(void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E03A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

double swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2400;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_E13E8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 648) = a1;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 888) = 1065353216;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 1065353216;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 1065353216;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 1065353216;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 1065353216;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 1065353216;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 1065353216;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 1065353216;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 1065353216;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 1065353216;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 1065353216;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 1065353216;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1408) = 1065353216;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 1065353216;
  *(a1 + 1472) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1488) = 1065353216;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 1065353216;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1568) = 1065353216;
  *(a1 + 1576) = 0u;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 1065353216;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1648) = 1065353216;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 1065353216;
  *(a1 + 1712) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1728) = 1065353216;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 1065353216;
  *(a1 + 1792) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1808) = 1065353216;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 1065353216;
  *(a1 + 1872) = 0;
  *(a1 + 1856) = 0u;
  *(a1 + 1880) = a4;
  *(a1 + 1888) = off_E1720;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1960) = 0;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 2000) = 1065353216;
  *(a1 + 2008) = 0;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2048) = 1065353216;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 1065353216;
  *(a1 + 2112) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2128) = 1065353216;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 1065353216;
  *(a1 + 2176) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 2184) = 0u;
  *(a1 + 2208) = a1;
  *(a1 + 2216) = a3;
  *(a1 + 2224) = 8;
  *(a1 + 2232) = off_E0438;
  *(a1 + 2240) = a1;
  *(a1 + 2248) = a2;
  *(a1 + 2256) = a1 + 2232;
  *(a1 + 2264) = off_E04C8;
  *(a1 + 2272) = a2;
  *(a1 + 2288) = a1 + 2264;
  *(a1 + 2296) = off_E0810;
  *(a1 + 2304) = a2;
  *(a1 + 2320) = a1 + 2296;
  *(a1 + 2328) = off_E0858;
  *(a1 + 2336) = a2;
  *(a1 + 2352) = a1 + 2328;
  *(a1 + 2360) = off_E08A0;
  *(a1 + 2368) = a2;
  *(a1 + 2384) = a1 + 2360;
  *(a1 + 2392) = off_E08E8;
  *(a1 + 2400) = a2;
  *(a1 + 2416) = a1 + 2392;
  *(a1 + 2424) = off_E0930;
  *(a1 + 2432) = a2;
  *(a1 + 2448) = a1 + 2424;
  *(a1 + 2456) = 0;
  *(a1 + 2464) = 0;
  return result;
}

__n128 std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteRef<char>,BOOL)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteRef<char>,BOOL)#1}>,swift::Demangle::__runtime::Node * ()(swift::remote::RemoteRef<char>,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E0438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteRef<char>,BOOL)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteRef<char>,BOOL)#1}>,swift::Demangle::__runtime::Node * ()(swift::remote::RemoteRef<char>,BOOL)>::operator()(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v7 = *a2;
  v3 = *a3;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v8 = *(a2 + 2);
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(v4, &v7, 0);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(uint64_t a1, uint64_t a2, int a3)
{
  swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(*(a2 + 16), a2);
  if (a3 == 1)
  {
    operator new();
  }

  if (!a3)
  {
    operator new();
  }

  return 0;
}

__n128 std::__function::__func<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(swift::remote::RemoteRef<char>,swift::remote::MangledNameKind,swift::Demangle::__runtime::Demangler &,BOOL)::{lambda(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)#1},std::allocator<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(swift::remote::RemoteRef<char>,swift::remote::MangledNameKind,swift::Demangle::__runtime::Demangler &,BOOL)::{lambda(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)#1}>,swift::Demangle::__runtime::Node * ()(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E0480;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(swift::remote::RemoteRef<char>,swift::remote::MangledNameKind,swift::Demangle::__runtime::Demangler &,BOOL)::{lambda(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)#1}::operator()(uint64_t **a1, int a2, int a3, int a4, uint64_t a5)
{
  v8 = a1[1];
  v9 = **a1;
  v10 = *(*a1 + 8);
  v11 = a5 + a4 - (*a1)[2];
  *__p = 0u;
  memset(v50, 0, 25);
  if (a3 == 1)
  {
    swift::remote::MemoryReader::readPointer(*(v8 + 2800), v11 + v9, v10, 8u, v45);
    if (v48 != 1)
    {
      goto LABEL_73;
    }

    v12 = *(&v46 + 1);
    v13 = v47;
    if (!v47)
    {
      v12 = *(v8 + 2816) & *(&v46 + 1);
    }

    if (v45[23] >= 0)
    {
      v14 = v45;
    }

    else
    {
      v14 = *v45;
    }

    if (v45[23] >= 0)
    {
      v15 = v45[23];
    }

    else
    {
      v15 = *&v45[8];
    }

    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_91;
    }

    v16 = v46;
    if (v15 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v42) = v15;
    if (v15)
    {
      memmove(&v41, v14, v15);
    }

    *(&v41 + v15) = 0;
    *&v43 = v16;
    *(&v43 + 1) = v12;
    v44 = v13;
    if (SBYTE7(v50[0]) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v41;
    *&v50[0] = v42;
    *(v50 + 8) = v43;
    BYTE8(v50[1]) = v44;
    if (v48 == 1 && (v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }
  }

  else
  {
    (*(**(v8 + 2800) + 64))(v45);
    *__p = *v45;
    *&v50[0] = *&v45[16];
    *(v50 + 8) = v46;
    BYTE8(v50[1]) = v47;
  }

  result = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      result = swift::Demangle::__runtime::NodeFactory::createNode(a1[3], 351, *&v50[1]);
      goto LABEL_74;
    }

    if (a2 == 4)
    {
      LODWORD(v41) = 0;
      (*(**(v8 + 2800) + 32))(*(v8 + 2800), *&v50[1] + 4, BYTE8(v50[1]), &v41, 4);
      (*(**(v8 + 2800) + 64))(v45);
      if (SBYTE7(v50[0]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v45;
      *&v50[0] = *&v45[16];
      *(v50 + 8) = v46;
      BYTE8(v50[1]) = v47;
      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(v8, *(&v46 + 1), v47, 0, a1[3]);
      if (result)
      {
        v18 = *(result + 18);
        if ((v18 - 1) >= 2)
        {
          if (v18 != 5 || !*(result + 8))
          {
            goto LABEL_73;
          }

          result = *result;
        }

        v19 = *result;
        if (*result)
        {
          v20 = *(v19 + 18);
          if ((v20 - 1) >= 2)
          {
            if (v20 != 5 || !*(v19 + 8))
            {
              goto LABEL_73;
            }

            v19 = *v19;
          }

          v21 = *v19;
          if (v21)
          {
            v22 = *(v21 + 18);
            if ((v22 - 1) >= 2)
            {
              if (v22 != 5 || !*(v21 + 8))
              {
                goto LABEL_73;
              }

              v21 = *v21;
            }

            v23 = *v21;
            if (v23)
            {
              v24 = *(v23 + 18);
              if ((v24 - 1) >= 2)
              {
                if (v24 != 5 || !*(v23 + 2))
                {
                  goto LABEL_73;
                }

                v23 = *v23;
              }

              v25 = *v23;
              if (*v23 && *(v25 + 8) == 190)
              {
                Node = swift::Demangle::__runtime::NodeFactory::createNode(a1[3], 243);
                v29 = Node;
                v30 = a1[3];
                v31 = v25;
LABEL_81:
                swift::Demangle::__runtime::Node::addChild(Node, v31, v30, v27, v28);
                result = v29;
                goto LABEL_74;
              }
            }
          }
        }

LABEL_73:
        result = 0;
        goto LABEL_74;
      }
    }

    goto LABEL_74;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      result = swift::Demangle::__runtime::NodeFactory::createNode(a1[3], 350, *&v50[1]);
    }

    goto LABEL_74;
  }

  if ((SBYTE7(v50[0]) & 0x80u) == 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  if ((SBYTE7(v50[0]) & 0x80u) == 0)
  {
    v33 = SBYTE7(v50[0]);
  }

  else
  {
    v33 = __p[1];
  }

  if (!v33 || *(&v50[0] + 1))
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v8, *&v50[1], BYTE8(v50[1]), &v41);
    v45[0] = 1;
    *&v45[8] = v41;
    *&v46 = v42;
    goto LABEL_69;
  }

  v45[0] = 0;
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_91:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v33 >= 0x17)
  {
    operator new();
  }

  BYTE7(v46) = v33;
  memmove(&v45[8], v32, v33);
  v45[v33 + 8] = 0;
  if (v45[0])
  {
LABEL_69:
    if (v46)
    {
      if (*a1[2] == 1 && (*v46 & 0x1F) == 4)
      {
        result = swift::Demangle::__runtime::NodeFactory::createNode(a1[3], 315, *&v45[8]);
        goto LABEL_74;
      }

      v35 = a1[3];
      v41 = *&v45[8];
      v36 = v46;
      v42 = v46;
      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(v8, &v41, v35, 50);
      if (!result || (*v36 & 0x10) == 0 && (*v36 & 0x1F) != 3)
      {
        goto LABEL_74;
      }

      v37 = result;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v35, 243);
      v29 = Node;
      v31 = v37;
      v30 = v35;
      goto LABEL_81;
    }

    goto LABEL_73;
  }

  if ((SBYTE7(v46) & 0x80u) == 0)
  {
    v38 = &v45[8];
  }

  else
  {
    v38 = *&v45[8];
  }

  if ((SBYTE7(v46) & 0x80u) == 0)
  {
    v39 = SBYTE7(v46);
  }

  else
  {
    v39 = *&v45[16];
  }

  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextManglingForSymbol(v8, v38, v39, a1[3]);
  if ((v45[0] & 1) == 0 && SBYTE7(v46) < 0)
  {
    v40 = result;
    operator delete(*&v45[8]);
    result = v40;
  }

LABEL_74:
  if (SBYTE7(v50[0]) < 0)
  {
    v34 = result;
    operator delete(__p[0]);
    return v34;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(uint64_t a1, char *a2, std::string::size_type a3, int a4, void *a5)
{
  memset(&v32, 0, sizeof(v32));
  v6 = a2;
  v8 = 0;
  do
  {
    __p = 0;
    v34 = 0;
    v35 = 0;
    if (!(*(**(a1 + 2800) + 16))(*(a1 + 2800), v6, a3, &__p))
    {
      v17 = 1;
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        continue;
      }

LABEL_26:
      operator delete(__p);
      continue;
    }

    if (SHIBYTE(v35) >= 0)
    {
      v9 = HIBYTE(v35);
    }

    else
    {
      v9 = v34;
    }

    v6 += v9 + 1;
    if (SHIBYTE(v35) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    std::string::append(&v32, p_p, v9);
    v11 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v32.__r_.__value_.__r.__words[1];
    }

    v12 = v32.__r_.__value_.__r.__words[0];
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v32;
    }

    while (1)
    {
      v13 = v8;
      if (v8 >= v11)
      {
        break;
      }

      v14 = v12->__r_.__value_.__s.__data_[v8];
      v15 = v14 - 1;
      if ((v14 & 0xF8) == 0x18)
      {
        v16 = 9;
      }

      else
      {
        v16 = 1;
      }

      if (v15 < 0x17)
      {
        v16 = 5;
      }

      v8 = (v16 + v8);
      if (v8 > v11)
      {
        std::string::push_back(&v32, 0);
        v17 = 2;
        goto LABEL_25;
      }
    }

    v17 = 3;
LABEL_25:
    v8 = v13;
    if (SHIBYTE(v35) < 0)
    {
      goto LABEL_26;
    }
  }

  while (v17 == 2);
  if (v17 == 3)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    v19 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v20 = size + 1;
    v21 = a5[1];
    if (!v21 || &v21[v20] > a5[2])
    {
      v22 = 2 * a5[4];
      v23 = size + 2;
      if (v22 <= v23)
      {
        v22 = v23;
      }

      a5[4] = v22;
      v24 = v22 + 8;
      v25 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      *v25 = a5[3];
      v21 = (v25 + 1);
      a5[2] = v25 + v24;
      a5[3] = v25;
      v19 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    a5[1] = &v21[v20];
    if (v19 >= 0)
    {
      v26 = &v32;
    }

    else
    {
      v26 = v32.__r_.__value_.__r.__words[0];
    }

    memcpy(v21, v26, v20);
    __p = a2;
    v34 = a3;
    v35 = v21;
    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(a1, &__p, a4);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_41:
      v28 = result;
      operator delete(v32.__r_.__value_.__l.__data_);
      return v28;
    }
  }

  else
  {
    result = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t *swift::remote::MemoryReader::readPointer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  result = (*(*a1 + 72))(__p);
  if (*(&v20 + 1))
  {
    goto LABEL_5;
  }

  v11 = HIBYTE(v19);
  if (v19 < 0)
  {
    v11 = __p[1];
  }

  if (v11)
  {
LABEL_5:
    *a5 = *__p;
    *(a5 + 16) = v19;
    *(a5 + 24) = v20;
    *(a5 + 40) = v21;
    *(a5 + 48) = 1;
    return result;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 24))(&v15, a1, a2, a3, a4);
  v12 = v15;
  if (!v15)
  {
    *a5 = 0;
    *(a5 + 48) = 0;
    goto LABEL_20;
  }

  if (a4 == 8)
  {
    v13 = *v15;
  }

  else
  {
    if (a4 != 4)
    {
      *a5 = 0;
      *(a5 + 48) = 0;
      v15 = 0;
      goto LABEL_18;
    }

    v13 = *v15;
  }

  (*(*a1 + 40))(__p, a1, a2, a3, v13);
  *a5 = *__p;
  *(a5 + 16) = v19;
  *(a5 + 24) = v20;
  *(a5 + 40) = v21;
  *(a5 + 48) = 1;
  v12 = v15;
  v15 = 0;
  if (v12)
  {
LABEL_18:
    __p[0] = v12;
    if (!v17)
    {
      v14 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v14);
    }

    (*(*v17 + 48))(v17, __p);
  }

LABEL_20:
  result = v17;
  if (v17 == &v16)
  {
    return (*(*v17 + 32))(v17);
  }

  if (v17)
  {
    return (*(*v17 + 40))();
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v7 = result;
  (*(**(result + 2800) + 24))(&v35);
  if (!v35)
  {
    goto LABEL_55;
  }

  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  if (!v9)
  {
    v18 = 0;
LABEL_18:
    v11 = (v8 + 56 * v18);
    goto LABEL_19;
  }

  v30 = a2;
  v31 = a3;
  v10 = (v9 - 1) & __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v30, &v31);
  v11 = (v8 + 56 * v10);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (a2 != *v11 || a3 != v13)
  {
    v15 = 1;
    while (v12 != -1 || v13)
    {
      v16 = v10 + v15++;
      v10 = v16 & (v9 - 1);
      v11 = (v8 + 56 * v10);
      v12 = *v11;
      v13 = *(v11 + 8);
      if (a2 == *v11 && a3 == v13)
      {
        goto LABEL_19;
      }
    }

    v8 = *(v7 + 48);
    v18 = *(v7 + 64);
    goto LABEL_18;
  }

LABEL_19:
  if (v11 != (*(v7 + 48) + 56 * *(v7 + 64)))
  {
    v19 = v11[2];
    *a4 = a2;
    *(a4 + 8) = a3;
    goto LABEL_56;
  }

  if (v35)
  {
    v20 = v35;
  }

  else
  {
    v20 = 0;
  }

  v21 = *v20 & 0x1F;
  if (v21 > 3)
  {
    if ((*v20 & 0x1Fu) > 0x10)
    {
      if (v21 != 17)
      {
        if (v21 != 18 || (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v35) & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_45;
      }

      if (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v35))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v21 != 4)
      {
        if (v21 != 16 || (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v35) & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_45;
      }

      if (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v35))
      {
        goto LABEL_45;
      }
    }

LABEL_55:
    v19 = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    goto LABEL_56;
  }

  if ((*v20 & 0x1Fu) > 1)
  {
    if (v21 == 2)
    {
      if ((swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v35) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (v21 != 3 || (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetProtocolDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v35) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (!v21)
    {
      (*(**(v7 + 2800) + 24))(&v30);
      std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v35, &v30);
      std::unique_ptr<void const,std::function<void ()(void const*)>>::~unique_ptr[abi:nn200100](&v30);
      v22 = v35;
      if (!v35)
      {
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    if ((swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v35) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

LABEL_45:
  v22 = v35;
  if (!v35)
  {
    v23 = 0;
    goto LABEL_48;
  }

LABEL_46:
  v23 = v22;
LABEL_48:
  v30 = a2;
  v31 = a3;
  v35 = 0;
  v32 = v22;
  if (v37)
  {
    v24 = v23;
    if (v37 == v36)
    {
      v34 = v33;
      (*(*v37 + 24))();
    }

    else
    {
      v34 = v37;
      v37 = 0;
    }
  }

  else
  {
    v24 = v23;
    v34 = 0;
  }

  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>,swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::try_emplace<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 48, &v30, &v32, v29);
  v26 = v32;
  v32 = 0;
  if (v26)
  {
    v29[0] = v26;
    if (!v34)
    {
      goto LABEL_74;
    }

    (*(*v34 + 48))(v34, v29);
  }

  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
  }

  else if (v34)
  {
    (*(*v34 + 40))();
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  v19 = v24;
LABEL_56:
  *(a4 + 16) = v19;
  v25 = v35;
  v35 = 0;
  if (!v25)
  {
    goto LABEL_59;
  }

  v30 = v25;
  if (!v37)
  {
LABEL_74:
    v27 = std::__throw_bad_function_call[abi:nn200100]();
    return std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](v27, v28);
  }

  (*(*v37 + 48))(v37, &v30);
LABEL_59:
  result = v37;
  if (v37 == v36)
  {
    return (*(*v37 + 32))(v37);
  }

  if (v37)
  {
    return (*(*v37 + 40))();
  }

  return result;
}

uint64_t std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (!v5)
  {
LABEL_4:
    v7 = a1[4];
    a1[4] = 0;
    if (v7 == a1 + 1)
    {
      (*(*v7 + 32))(v7);
      v8 = a2[4];
      if (v8)
      {
LABEL_8:
        if (v8 == a2 + 1)
        {
          a1[4] = (a1 + 1);
          (*(*a2[4] + 24))(a2[4], a1 + 1);
        }

        else
        {
          a1[4] = v8;
          a2[4] = 0;
        }

        return a1;
      }
    }

    else
    {
      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      v8 = a2[4];
      if (v8)
      {
        goto LABEL_8;
      }
    }

    a1[4] = 0;
    return a1;
  }

  v11 = v5;
  v6 = a1[4];
  if (v6)
  {
    (*(*v6 + 48))(v6, &v11);
    goto LABEL_4;
  }

  v10 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v10);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift::remote::MemoryReader::readObj<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(*(a1 + 2800), &v30);
  v6 = v30;
  v30 = 0;
  v7 = *a4;
  *a4 = v6;
  if (v7)
  {
    v33 = v7;
    v8 = a4[4];
    if (!v8)
    {
      goto LABEL_64;
    }

    (*(*v8 + 48))(v8, &v33);
  }

  v9 = a4[4];
  a4[4] = 0;
  if (v9 == a4 + 1)
  {
    (*(*v9 + 32))(v9);
    v10 = v32;
    if (v32)
    {
LABEL_8:
      if (v10 == v31)
      {
        a4[4] = (a4 + 1);
        (*(*v10 + 24))(v10, a4 + 1);
      }

      else
      {
        a4[4] = v10;
        v32 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = v32;
    if (v32)
    {
      goto LABEL_8;
    }
  }

  a4[4] = 0;
LABEL_13:
  v11 = v30;
  v30 = 0;
  if (!v11)
  {
LABEL_16:
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      if (!*a4)
      {
        return 0;
      }
    }

    else
    {
      if (v32)
      {
        (*(*v32 + 40))();
      }

      if (!*a4)
      {
        return 0;
      }
    }

    v12 = -2;
    v13 = 12;
    while (1)
    {
      if (*a4)
      {
        v14 = *a4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      if (v14)
      {
        v16 = v12 + 2;
        if (v12 != -2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = 0;
        v16 = v12 + 2;
        if (v12 != -2)
        {
LABEL_31:
          if (v16 != 1)
          {
            v22 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(v15, v12);
            if (v22 > v13)
            {
              goto LABEL_56;
            }

            goto LABEL_25;
          }

          v17 = v15;
          if (v15 == -12)
          {
            v18 = 0;
LABEL_34:
            v19 = v15;
          }

          else
          {
            v18 = v15 + 12;
            if (v15)
            {
              goto LABEL_34;
            }

            v19 = 0;
          }

          v23 = *v19;
          if ((v23 & 0x80) != 0)
          {
            if (v15)
            {
              v25 = v15;
            }

            else
            {
              v25 = 0;
            }

            v24 = *(v25 + 6);
          }

          else
          {
            v24 = 0;
          }

          v26 = &v18[8 * ((v23 >> 7) & 1) + v24];
          goto LABEL_53;
        }
      }

      v17 = v15;
      if (v15 == -12)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 + 12;
        if (!v15)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      v21 = v15;
LABEL_49:
      v26 = &v20[8 * ((*v21 >> 7) & 1)];
LABEL_53:
      if (!v15)
      {
        v17 = 0;
      }

      v22 = v26 - v17;
      if (v26 - v17 > v13)
      {
LABEL_56:
        (*(**(a1 + 2800) + 24))(&v30);
        std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v30);
        v27 = v30;
        v30 = 0;
        if (v27)
        {
          v33 = v27;
          if (!v32)
          {
            goto LABEL_64;
          }

          (*(*v32 + 48))(v32, &v33);
        }

        if (v32 == v31)
        {
          (*(*v32 + 32))(v32);
        }

        else if (v32)
        {
          (*(*v32 + 40))();
        }

        v13 = v22;
        if (!*a4)
        {
          return 0;
        }
      }

LABEL_25:
      if (++v12 == 8)
      {
        return 1;
      }
    }
  }

  v33 = v11;
  if (v32)
  {
    (*(*v32 + 48))(v32, &v33);
    goto LABEL_16;
  }

LABEL_64:
  v29 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v29);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v7 = 0;
  v8 = 8;
  while (1)
  {
    if (*a4)
    {
      v9 = *a4;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v9)
    {
      v10 = 0;
      if (v7)
      {
        goto LABEL_10;
      }

LABEL_15:
      v11 = v10;
      if (v10 == -8)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 + 8;
        if (!v10)
        {
          v15 = 0;
          goto LABEL_28;
        }
      }

      v15 = v10;
LABEL_28:
      v20 = &v14[8 * ((*v15 >> 7) & 1)];
LABEL_32:
      if (!v10)
      {
        v11 = 0;
      }

      v16 = v20 - v11;
      if (v20 - v11 <= v8)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (v7 == 1)
    {
      v11 = v10;
      if (v10 == -8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v10 + 8;
        if (!v10)
        {
          v13 = 0;
          goto LABEL_22;
        }
      }

      v13 = v10;
LABEL_22:
      v17 = *v13;
      if ((v17 & 0x80) != 0)
      {
        if (v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = 0;
        }

        v18 = *(v19 + 4);
      }

      else
      {
        v18 = 0;
      }

      v20 = &v12[8 * ((v17 >> 7) & 1) + v18];
      goto LABEL_32;
    }

    v16 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(v10, v7 - 2);
    if (v16 <= v8)
    {
      goto LABEL_4;
    }

LABEL_35:
    (*(**(a1 + 2800) + 24))(&v24);
    std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v24);
    v21 = v24;
    v24 = 0;
    if (!v21)
    {
      goto LABEL_38;
    }

    v27 = v21;
    if (!v26)
    {
      break;
    }

    (*(*v26 + 48))(v26, &v27);
LABEL_38:
    if (v26 == &v25)
    {
      (*(*v26 + 32))(v26);
    }

    else if (v26)
    {
      (*(*v26 + 40))();
    }

    v8 = v16;
    if (!*a4)
    {
      return v6;
    }

LABEL_4:
    v6 = v7++ > 9;
    if (v7 == 11)
    {
      return v6;
    }
  }

  v23 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v23);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift::remote::MemoryReader::readObj<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(*(a1 + 2800), &v30);
  v6 = v30;
  v30 = 0;
  v7 = *a4;
  *a4 = v6;
  if (v7)
  {
    v33 = v7;
    v8 = a4[4];
    if (!v8)
    {
      goto LABEL_64;
    }

    (*(*v8 + 48))(v8, &v33);
  }

  v9 = a4[4];
  a4[4] = 0;
  if (v9 == a4 + 1)
  {
    (*(*v9 + 32))(v9);
    v10 = v32;
    if (v32)
    {
LABEL_8:
      if (v10 == v31)
      {
        a4[4] = (a4 + 1);
        (*(*v10 + 24))(v10, a4 + 1);
      }

      else
      {
        a4[4] = v10;
        v32 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = v32;
    if (v32)
    {
      goto LABEL_8;
    }
  }

  a4[4] = 0;
LABEL_13:
  v11 = v30;
  v30 = 0;
  if (!v11)
  {
LABEL_16:
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      if (!*a4)
      {
        return 0;
      }
    }

    else
    {
      if (v32)
      {
        (*(*v32 + 40))();
      }

      if (!*a4)
      {
        return 0;
      }
    }

    v12 = -2;
    v13 = 44;
    while (1)
    {
      if (*a4)
      {
        v14 = *a4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      if (v14)
      {
        v16 = v12 + 2;
        if (v12 != -2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = 0;
        v16 = v12 + 2;
        if (v12 != -2)
        {
LABEL_31:
          if (v16 != 1)
          {
            v22 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl( v15,  v12);
            if (v22 > v13)
            {
              goto LABEL_56;
            }

            goto LABEL_25;
          }

          v17 = v15;
          if (v15 == -44)
          {
            v18 = 0;
LABEL_34:
            v19 = v15;
          }

          else
          {
            v18 = v15 + 44;
            if (v15)
            {
              goto LABEL_34;
            }

            v19 = 0;
          }

          v23 = *v19;
          if ((v23 & 0x80) != 0)
          {
            if (v15)
            {
              v25 = v15;
            }

            else
            {
              v25 = 0;
            }

            v24 = *(v25 + 26);
          }

          else
          {
            v24 = 0;
          }

          v26 = &v18[16 * ((v23 >> 7) & 1) + v24];
          goto LABEL_53;
        }
      }

      v17 = v15;
      if (v15 == -44)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 + 44;
        if (!v15)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      v21 = v15;
LABEL_49:
      v26 = &v20[16 * ((*v21 >> 7) & 1)];
LABEL_53:
      if (!v15)
      {
        v17 = 0;
      }

      v22 = v26 - v17;
      if (v26 - v17 > v13)
      {
LABEL_56:
        (*(**(a1 + 2800) + 24))(&v30);
        std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v30);
        v27 = v30;
        v30 = 0;
        if (v27)
        {
          v33 = v27;
          if (!v32)
          {
            goto LABEL_64;
          }

          (*(*v32 + 48))(v32, &v33);
        }

        if (v32 == v31)
        {
          (*(*v32 + 32))(v32);
        }

        else if (v32)
        {
          (*(*v32 + 40))();
        }

        v13 = v22;
        if (!*a4)
        {
          return 0;
        }
      }

LABEL_25:
      if (++v12 == 24)
      {
        return 1;
      }
    }
  }

  v33 = v11;
  if (v32)
  {
    (*(*v32 + 48))(v32, &v33);
    goto LABEL_16;
  }

LABEL_64:
  v29 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v29);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift::remote::MemoryReader::readObj<swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(*(a1 + 2800), &v30);
  v6 = v30;
  v30 = 0;
  v7 = *a4;
  *a4 = v6;
  if (v7)
  {
    v33 = v7;
    v8 = a4[4];
    if (!v8)
    {
      goto LABEL_64;
    }

    (*(*v8 + 48))(v8, &v33);
  }

  v9 = a4[4];
  a4[4] = 0;
  if (v9 == a4 + 1)
  {
    (*(*v9 + 32))(v9);
    v10 = v32;
    if (v32)
    {
LABEL_8:
      if (v10 == v31)
      {
        a4[4] = (a4 + 1);
        (*(*v10 + 24))(v10, a4 + 1);
      }

      else
      {
        a4[4] = v10;
        v32 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = v32;
    if (v32)
    {
      goto LABEL_8;
    }
  }

  a4[4] = 0;
LABEL_13:
  v11 = v30;
  v30 = 0;
  if (!v11)
  {
LABEL_16:
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      if (!*a4)
      {
        return 0;
      }
    }

    else
    {
      if (v32)
      {
        (*(*v32 + 40))();
      }

      if (!*a4)
      {
        return 0;
      }
    }

    v12 = -2;
    v13 = 28;
    while (1)
    {
      if (*a4)
      {
        v14 = *a4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      if (v14)
      {
        v16 = v12 + 2;
        if (v12 != -2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = 0;
        v16 = v12 + 2;
        if (v12 != -2)
        {
LABEL_31:
          if (v16 != 1)
          {
            v22 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(v15, v12);
            if (v22 > v13)
            {
              goto LABEL_56;
            }

            goto LABEL_25;
          }

          v17 = v15;
          if (v15 == -28)
          {
            v18 = 0;
LABEL_34:
            v19 = v15;
          }

          else
          {
            v18 = v15 + 28;
            if (v15)
            {
              goto LABEL_34;
            }

            v19 = 0;
          }

          v23 = *v19;
          if ((v23 & 0x80) != 0)
          {
            if (v15)
            {
              v25 = v15;
            }

            else
            {
              v25 = 0;
            }

            v24 = *(v25 + 18);
          }

          else
          {
            v24 = 0;
          }

          v26 = &v18[16 * ((v23 >> 7) & 1) + v24];
          goto LABEL_53;
        }
      }

      v17 = v15;
      if (v15 == -28)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 + 28;
        if (!v15)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      v21 = v15;
LABEL_49:
      v26 = &v20[16 * ((*v21 >> 7) & 1)];
LABEL_53:
      if (!v15)
      {
        v17 = 0;
      }

      v22 = v26 - v17;
      if (v26 - v17 > v13)
      {
LABEL_56:
        (*(**(a1 + 2800) + 24))(&v30);
        std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v30);
        v27 = v30;
        v30 = 0;
        if (v27)
        {
          v33 = v27;
          if (!v32)
          {
            goto LABEL_64;
          }

          (*(*v32 + 48))(v32, &v33);
        }

        if (v32 == v31)
        {
          (*(*v32 + 32))(v32);
        }

        else if (v32)
        {
          (*(*v32 + 40))();
        }

        v13 = v22;
        if (!*a4)
        {
          return 0;
        }
      }

LABEL_25:
      if (++v12 == 15)
      {
        return 1;
      }
    }
  }

  v33 = v11;
  if (v32)
  {
    (*(*v32 + 48))(v32, &v33);
    goto LABEL_16;
  }

LABEL_64:
  v29 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v29);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift::remote::MemoryReader::readObj<swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(*(a1 + 2800), &v30);
  v6 = v30;
  v30 = 0;
  v7 = *a4;
  *a4 = v6;
  if (v7)
  {
    v33 = v7;
    v8 = a4[4];
    if (!v8)
    {
      goto LABEL_64;
    }

    (*(*v8 + 48))(v8, &v33);
  }

  v9 = a4[4];
  a4[4] = 0;
  if (v9 == a4 + 1)
  {
    (*(*v9 + 32))(v9);
    v10 = v32;
    if (v32)
    {
LABEL_8:
      if (v10 == v31)
      {
        a4[4] = (a4 + 1);
        (*(*v10 + 24))(v10, a4 + 1);
      }

      else
      {
        a4[4] = v10;
        v32 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = v32;
    if (v32)
    {
      goto LABEL_8;
    }
  }

  a4[4] = 0;
LABEL_13:
  v11 = v30;
  v30 = 0;
  if (!v11)
  {
LABEL_16:
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      if (!*a4)
      {
        return 0;
      }
    }

    else
    {
      if (v32)
      {
        (*(*v32 + 40))();
      }

      if (!*a4)
      {
        return 0;
      }
    }

    v12 = -2;
    v13 = 28;
    while (1)
    {
      if (*a4)
      {
        v14 = *a4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      if (v14)
      {
        v16 = v12 + 2;
        if (v12 != -2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = 0;
        v16 = v12 + 2;
        if (v12 != -2)
        {
LABEL_31:
          if (v16 != 1)
          {
            v22 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(v15, v12);
            if (v22 > v13)
            {
              goto LABEL_56;
            }

            goto LABEL_25;
          }

          v17 = v15;
          if (v15 == -28)
          {
            v18 = 0;
LABEL_34:
            v19 = v15;
          }

          else
          {
            v18 = v15 + 28;
            if (v15)
            {
              goto LABEL_34;
            }

            v19 = 0;
          }

          v23 = *v19;
          if ((v23 & 0x80) != 0)
          {
            if (v15)
            {
              v25 = v15;
            }

            else
            {
              v25 = 0;
            }

            v24 = *(v25 + 18);
          }

          else
          {
            v24 = 0;
          }

          v26 = &v18[16 * ((v23 >> 7) & 1) + v24];
          goto LABEL_53;
        }
      }

      v17 = v15;
      if (v15 == -28)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 + 28;
        if (!v15)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      v21 = v15;
LABEL_49:
      v26 = &v20[16 * ((*v21 >> 7) & 1)];
LABEL_53:
      if (!v15)
      {
        v17 = 0;
      }

      v22 = v26 - v17;
      if (v26 - v17 > v13)
      {
LABEL_56:
        (*(**(a1 + 2800) + 24))(&v30);
        std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v30);
        v27 = v30;
        v30 = 0;
        if (v27)
        {
          v33 = v27;
          if (!v32)
          {
            goto LABEL_64;
          }

          (*(*v32 + 48))(v32, &v33);
        }

        if (v32 == v31)
        {
          (*(*v32 + 32))(v32);
        }

        else if (v32)
        {
          (*(*v32 + 40))();
        }

        v13 = v22;
        if (!*a4)
        {
          return 0;
        }
      }

LABEL_25:
      if (++v12 == 15)
      {
        return 1;
      }
    }
  }

  v33 = v11;
  if (v32)
  {
    (*(*v32 + 48))(v32, &v33);
    goto LABEL_16;
  }

LABEL_64:
  v29 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetProtocolDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v29);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetProtocolDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift::remote::MemoryReader::readObj<swift::TargetProtocolDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(*(a1 + 2800), &v25);
  v6 = v25;
  v25 = 0;
  v7 = *a4;
  *a4 = v6;
  if (v7)
  {
    v28 = v7;
    v8 = a4[4];
    if (!v8)
    {
      goto LABEL_52;
    }

    (*(*v8 + 48))(v8, &v28);
  }

  v9 = a4[4];
  a4[4] = 0;
  if (v9 == a4 + 1)
  {
    (*(*v9 + 32))(v9);
    v10 = v27;
    if (v27)
    {
LABEL_8:
      if (v10 == v26)
      {
        a4[4] = (a4 + 1);
        (*(*v10 + 24))(v10, a4 + 1);
      }

      else
      {
        a4[4] = v10;
        v27 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = v27;
    if (v27)
    {
      goto LABEL_8;
    }
  }

  a4[4] = 0;
LABEL_13:
  v11 = v25;
  v25 = 0;
  if (!v11)
  {
    goto LABEL_16;
  }

  v28 = v11;
  if (v27)
  {
    (*(*v27 + 48))(v27, &v28);
LABEL_16:
    if (v27 == v26)
    {
      (*(*v27 + 32))(v27);
      v12 = *a4;
      if (!*a4)
      {
        return 0;
      }
    }

    else
    {
      if (v27)
      {
        (*(*v27 + 40))();
      }

      v12 = *a4;
      if (!*a4)
      {
        return 0;
      }
    }

    v13 = 1;
    v14 = 24;
    while (1)
    {
      v15 = v13;
      if (v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v15)
      {
        if (v17 == -24)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17 + 24;
        }

        v20 = v18 + 12 * *(v17 + 12);
      }

      else
      {
        if (v17 == -24)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17 + 24;
        }

        v20 = v19 + 12 * *(v17 + 12) + 8 * *(v17 + 16);
      }

      if (!v17)
      {
        v17 = 0;
      }

      v21 = v20 - v17;
      if (v21 > v14)
      {
        v14 = v21;
        (*(**(a1 + 2800) + 24))(&v25);
        std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v25);
        v22 = v25;
        v25 = 0;
        if (v22)
        {
          v28 = v22;
          if (!v27)
          {
            break;
          }

          (*(*v27 + 48))(v27, &v28);
        }

        if (v27 == v26)
        {
          (*(*v27 + 32))(v27);
        }

        else if (v27)
        {
          (*(*v27 + 40))();
        }

        v12 = *a4;
        if (!*a4)
        {
          return 0;
        }
      }

      v13 = 0;
      if ((v15 & 1) == 0)
      {
        return 1;
      }
    }
  }

LABEL_52:
  v24 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v24);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v7 = 0;
  v8 = 8;
  while (1)
  {
    if (*a4)
    {
      v9 = *a4;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v9)
    {
      v10 = 0;
      if (v7)
      {
        goto LABEL_10;
      }

LABEL_15:
      v11 = v10;
      if (v10 == -8)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 + 8;
        if (!v10)
        {
          v15 = 0;
          goto LABEL_28;
        }
      }

      v15 = v10;
LABEL_28:
      v20 = &v14[8 * ((*v15 >> 7) & 1)];
LABEL_32:
      if (!v10)
      {
        v11 = 0;
      }

      v16 = v20 - v11;
      if (v20 - v11 <= v8)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }

    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (v7 == 1)
    {
      v11 = v10;
      if (v10 == -8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v10 + 8;
        if (!v10)
        {
          v13 = 0;
          goto LABEL_22;
        }
      }

      v13 = v10;
LABEL_22:
      v17 = *v13;
      if ((v17 & 0x80) != 0)
      {
        if (v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = 0;
        }

        v18 = *(v19 + 4);
      }

      else
      {
        v18 = 0;
      }

      v20 = &v12[8 * ((v17 >> 7) & 1) + v18];
      goto LABEL_32;
    }

    v16 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::sizeWithTrailingTypeCountImpl(v10, v7 - 2);
    if (v16 <= v8)
    {
      goto LABEL_4;
    }

LABEL_35:
    (*(**(a1 + 2800) + 24))(&v24);
    std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v24);
    v21 = v24;
    v24 = 0;
    if (!v21)
    {
      goto LABEL_38;
    }

    v27 = v21;
    if (!v26)
    {
      break;
    }

    (*(*v26 + 48))(v26, &v27);
LABEL_38:
    if (v26 == &v25)
    {
      (*(*v26 + 32))(v26);
    }

    else if (v26)
    {
      (*(*v26 + 40))();
    }

    v8 = v16;
    if (!*a4)
    {
      return v6;
    }

LABEL_4:
    v6 = v7++ > 0xA;
    if (v7 == 12)
    {
      return v6;
    }
  }

  v23 = std::__throw_bad_function_call[abi:nn200100]();
  return __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>,swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::LookupBucketFor<swift::remote::RemoteAddress>(v23);
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>,swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::LookupBucketFor<swift::remote::RemoteAddress>(uint64_t *a1, __int128 *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = *a1;
    v22 = *a2;
    v7 = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v22, &v22 + 8);
    v8 = v4 - 1;
    v9 = (v4 - 1) & v7;
    v10 = *(a2 + 8);
    v11 = (v5 + 56 * v9);
    v12 = *v11;
    v13 = *(v11 + 8);
    if (*a2 == *v11 && v10 == v13)
    {
      result = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v12 != -1 || v13)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 == 0;
        }

        if (v18 && v12 == -2)
        {
          v15 = v11;
        }

        v20 = v9 + v16++;
        v9 = v20 & v8;
        v11 = (v5 + 56 * (v20 & v8));
        v12 = *v11;
        v13 = *(v11 + 8);
        if (*a2 == *v11 && v10 == v13)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_9:
  *a3 = v11;
  return result;
}

unint64_t __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(void *a1, char *a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  {
    v5 = a1;
    v6 = a2;
    __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>();
    a1 = v5;
    a2 = v6;
  }

  v2 = *a1;
  v10 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  *&v7[0] = v2;
  v11 = 0;
  v3 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(v7, &v11, v7 + 8, v8, *a2);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, v11, v3, v8);
}

unint64_t *__swift::__runtime::llvm::hashing::detail::hash_state::mix(unint64_t *this, const char *a2)
{
  v2 = this[1];
  v4 = this[2];
  v3 = this[3];
  v5 = 0xB492B66FBE98F273 * __ROR8__(v2 + *this + v3 + *(a2 + 1), 37);
  *this = v5;
  v6 = this[4];
  v7 = this[5];
  v8 = __ROR8__(v6 + v2 + *(a2 + 6), 42);
  v9 = this[6];
  v10 = v9 ^ v5;
  *this = v10;
  this[1] = 0xB492B66FBE98F273 * v8;
  v11 = 0xB492B66FBE98F273 * v8 + v3 + *(a2 + 5);
  v12 = 0xB492B66FBE98F273 * __ROR8__(v7 + v4, 33);
  this[1] = v11;
  this[2] = v12;
  this[3] = 0xB492B66FBE98F273 * v6;
  this[4] = v7 + v10;
  v13 = *a2 - 0x4B6D499041670D8DLL * v6;
  this[3] = v13;
  v14 = *(a2 + 3);
  v15 = __ROR8__(v13 + v14 + v7 + v10, 21);
  this[4] = v15;
  v16 = __ROR8__(*(a2 + 1) + *(a2 + 2) + v13, 44);
  this[3] = *(a2 + 1) + *(a2 + 2) + v13 + v14;
  this[4] = v15 + v13 + v16;
  this[5] = v12 + v9;
  v17 = *(a2 + 2) + v11;
  this[6] = v17;
  v18 = *(a2 + 4) + v12 + v9;
  this[5] = v18;
  v19 = *(a2 + 7);
  v20 = __ROR8__(v18 + v19 + v17, 21);
  this[6] = v20;
  v21 = v20 + v18 + __ROR8__(*(a2 + 5) + *(a2 + 6) + v18, 44);
  this[5] = *(a2 + 5) + *(a2 + 6) + v18 + v19;
  this[6] = v21;
  this[2] = v10;
  *this = v12;
  return this;
}

_BYTE *__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(uint64_t a1, uint64_t *a2, _BYTE *__dst, unint64_t a4, char a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      __swift::__runtime::llvm::hashing::detail::hash_state::mix((a1 + 64), a1);
      v9 = *a2 + 64;
    }

    else
    {
      v10 = *(a1 + 120);
      v11 = __ROR8__(v10 ^ 0xB492B66FBE98F273, 49);
      v12 = v10 ^ (v10 >> 47);
      v13 = *(a1 + 8);
      v14 = v13 + v10 + v11;
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 40);
      v18 = v17 + v11 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v10 - 0x4B6D499041670D8DLL * v10, 42);
      v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
      v20 = 0x9DDFEA08EB382D69 * (v10 ^ (((0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))) ^ v10) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))));
      v21 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
      v22 = 0xB492B66FBE98F273 * __ROR8__(v12 - 0x622015F714C7D297 * (v19 ^ (v19 >> 47)), 33);
      v23 = *a1 - 0x6D8ED9027DD26057 * v10;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v26 = v23 + v13 + v25;
      v27 = v21 ^ (0xB492B66FBE98F273 * __ROR8__(v14, 37));
      v28 = __ROR8__(v26, 44) + v23 + __ROR8__(v23 + v12 + v24 + v27, 21);
      v29 = v22 + *(a1 + 32) + v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = v18;
      *(a1 + 80) = v27;
      *(a1 + 88) = v26 + v24;
      *(a1 + 96) = v28;
      *(a1 + 104) = v17 + v15 + v29 + v16;
      *(a1 + 112) = __ROR8__(v18 + v25 + v16 + v29, 21) + v29 + __ROR8__(v17 + v15 + v29, 44);
      v9 = 64;
    }

    *a2 = v9;
    if (a1 + 1 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 1 - v8);
      a1 += 1 - v8;
    }
  }

  return a1;
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper *this, uint64_t a2, char *a3, char *a4)
{
  if (a2)
  {
    if (this == a3 || a3 == a4)
    {
      goto LABEL_46;
    }

    if (this + 1 == a3)
    {
      v20 = *this;
      v21 = a4 - a3;
      memmove(this, this + 1, a4 - a3);
      *(this + v21) = v20;
LABEL_46:
      __swift::__runtime::llvm::hashing::detail::hash_state::mix(this + 8, this);
      v49 = 0x9DDFEA08EB382D69 * (*(this + 13) ^ ((0x9DDFEA08EB382D69 * (*(this + 13) ^ *(this + 11))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 13) ^ *(this + 11))));
      v50 = *(this + 14);
      v51 = *(this + 8) - 0x4B6D499041670D8DLL * ((a3 - this + a2) ^ ((a3 - this + a2) >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))))) >> 47));
      v52 = 0x9DDFEA08EB382D69 * (v51 ^ (*(this + 10) - 0x4B6D499041670D8DLL * (*(this + 9) ^ (*(this + 9) >> 47)) - 0x622015F714C7D297 * (v49 ^ (v49 >> 47))));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) ^ ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) >> 47));
    }

    if (a3 + 1 == a4)
    {
      v22 = *(a4 - 1);
      if (a4 - 1 != this)
      {
        memmove(this + 1, this, a4 - 1 - this);
      }

      *this = v22;
      goto LABEL_46;
    }

    v7 = a3 - this;
    v8 = a4 - a3;
    if (a3 - this != a4 - a3)
    {
      v23 = a3 - this;
      do
      {
        v24 = v23;
        v23 = v8;
        v8 = v24 % v8;
      }

      while (v8);
      v25 = (this + v23);
      do
      {
        v27 = *(v25 - 1);
        v25 = (v25 - 1);
        v26 = v27;
        v28 = (v25 + v7);
        v29 = v25;
        do
        {
          v30 = v29;
          v29 = v28;
          *v30 = *v28;
          v31 = (a4 - v28);
          v32 = __OFSUB__(v7, v31);
          v34 = v7 - v31;
          v33 = (v34 < 0) ^ v32;
          v28 = (this + v34);
          if (v33)
          {
            v28 = (v29 + v7);
          }
        }

        while (v28 != v25);
        *v29 = v26;
      }

      while (v25 != this);
      goto LABEL_46;
    }

    v9 = &a4[~a3];
    v10 = &a3[~this];
    if (v9 >= v10)
    {
      v11 = &a3[~this];
    }

    else
    {
      v11 = &a4[~a3];
    }

    v12 = (v11 + 1);
    v13 = a3;
    v14 = this;
    if (v12 >= 8)
    {
      if (v9 >= v10)
      {
        v9 = &a3[~this];
      }

      v15 = v9 + 1;
      if (&v15[a3] <= this || (v13 = a3, v14 = this, &v15[this] <= a3))
      {
        if (v12 >= 0x20)
        {
          v16 = v12 & 0xFFFFFFFFFFFFFFE0;
          v35 = (this + 16);
          v36 = a3 + 16;
          v37 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v38 = *(v35 - 1);
            v39 = *v35;
            v40 = *v36;
            *(v35 - 1) = *(v36 - 1);
            *v35 = v40;
            *(v36 - 1) = v38;
            *v36 = v39;
            v35 += 2;
            v36 += 32;
            v37 -= 32;
          }

          while (v37);
          if (v12 == v16)
          {
            goto LABEL_46;
          }

          if ((v12 & 0x18) == 0)
          {
            v14 = (this + v16);
            v13 = &a3[v16];
            goto LABEL_42;
          }
        }

        else
        {
          v16 = 0;
        }

        v13 = &a3[v12 & 0xFFFFFFFFFFFFFFF8];
        v14 = (this + (v12 & 0xFFFFFFFFFFFFFFF8));
        v41 = (this + v16);
        v42 = &a3[v16];
        v43 = v16 - (v12 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v44 = *v41;
          *v41++ = *v42;
          *v42 = v44;
          v42 += 8;
          v43 += 8;
        }

        while (v43);
        if (v12 == (v12 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_46;
        }
      }
    }

LABEL_42:
    v45 = v13 + 1;
    v46 = v14 + 1;
    do
    {
      v47 = *(v46 - 1);
      *(v46 - 1) = *(v45 - 1);
      *(v45 - 1) = v47;
      if (v46 == a3)
      {
        break;
      }

      ++v46;
    }

    while (v45++ != a4);
    goto LABEL_46;
  }

  v17 = a3 - this;
  v18 = *(this + 15);

  return __swift::__runtime::llvm::hashing::detail::hash_short(this, v17, v18);
}

_BYTE *swift::remote::MemoryReader::readObj<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v11);
  if (v13)
  {
    if (v13 == v12)
    {
      v10 = v9;
      (*(*v13 + 24))();
    }

    else
    {
      v10 = (*(*v13 + 16))();
    }
  }

  else
  {
    v10 = 0;
  }

  v3 = v11;
  v11 = 0;
  *a2 = v3;
  v4 = a2 + 1;
  v5 = v10;
  if (v10)
  {
    if (v10 == v9)
    {
      a2[4] = v4;
      (*(*v5 + 24))(v5);
    }

    else
    {
      a2[4] = (*(*v10 + 16))();
    }

    if (v10 == v9)
    {
      (*(*v10 + 32))(v10);
    }

    else if (v10)
    {
      (*(*v10 + 40))();
    }
  }

  else
  {
    a2[4] = 0;
  }

  v6 = v11;
  result = v13;
  v11 = 0;
  if (v6)
  {
    v9[0] = v6;
    if (!v13)
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(v8);
    }

    (*(*v13 + 48))();
    result = v13;
  }

  if (result == v12)
  {
    return (*(*result + 32))(result, v4);
  }

  if (result)
  {
    return (*(*result + 40))(result, v4);
  }

  return result;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(a1, a2 - 1);
  }

  v3 = a1;
  if (a1 == -12)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 + 12;
    if (!a1)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = a1;
LABEL_8:
  v6 = *v5;
  if ((v6 & 0x80) != 0)
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v7 = *(v8 + 6);
  }

  else
  {
    v7 = 0;
  }

  v9 = &v4[8 * ((v6 >> 7) & 1) + 3 + v7];
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  if ((*v10 & 0x80) != 0)
  {
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    v12 = 12 * *(v13 + 7);
  }

  else
  {
    v12 = 0;
  }

  if (!a1)
  {
    v3 = 0;
  }

  return v11 - v3 + v12;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(a1);
      v5 = swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
      if (a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      return TrailingObjectsImpl + 8 * v5 - v6;
    }

    else
    {
      v10 = a2 - 2;

      return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(a1, v10);
    }
  }

  v7 = a1;
  if (a1 == -12)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = a1 + 12;
  if (a1)
  {
LABEL_7:
    v9 = a1;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v12 = *v9;
  if ((v12 & 0x80) != 0)
  {
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    v13 = *(v15 + 6);
    if (a1)
    {
      goto LABEL_17;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  if (!a1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v14 = a1;
LABEL_23:
  if ((*v14 & 0x80) != 0)
  {
    if (a1)
    {
      v17 = a1;
    }

    else
    {
      v17 = 0;
    }

    v16 = *(v17 + 7);
  }

  else
  {
    v16 = 0;
  }

  v18 = &v8[8 * ((v12 >> 7) & 1) + 3 + v13] & 0xFFFFFFFFFFFFFFFCLL;
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 + 12 * v16;
  if ((*v19 & 0x80) != 0)
  {
    if (a1)
    {
      v22 = a1;
    }

    else
    {
      v22 = 0;
    }

    v21 = *(v22 + 9) & 1;
  }

  else
  {
    v21 = 0;
  }

  v23 = v20 + 4 * v21;
  if (!a1)
  {
    v7 = 0;
  }

  return v23 - v7;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(a1);
      ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader>::getConditionalInvertibleProtocolRequirementCounts(a1);
      if (v21)
      {
        v22 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v21 - 2);
      }

      else
      {
        v22 = 0;
      }

      v28 = TrailingObjectsImpl + 12 * v22;
      if (a1)
      {
        v29 = a1;
      }

      else
      {
        v29 = 0;
      }

      return v28 - v29;
    }

    if (a2 != 3)
    {
      goto LABEL_12;
    }

    v8 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(a1);
    v5 = a1;
    v9 = swift::TrailingGenericContextObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader>::getConditionalInvertibleProtocolRequirementCounts(a1);
    if (v10)
    {
      v11 = *(v9 + 2 * v10 - 2);
      if (a1)
      {
LABEL_11:
        v12 = a1;
LABEL_25:
        v25 = v8 + 12 * v11;
        if ((*v12 & 0x80) != 0)
        {
          if (a1)
          {
            v27 = a1;
          }

          else
          {
            v27 = 0;
          }

          v26 = (*(v27 + 9) >> 2) & 1;
        }

        else
        {
          v26 = 0;
        }

        v31 = v25 + 4 * v26;
LABEL_55:
        if (a1)
        {
          v36 = v5;
        }

        else
        {
          v36 = 0;
        }

        return v31 - v36;
      }
    }

    else
    {
      v11 = 0;
      if (a1)
      {
        goto LABEL_11;
      }
    }

    v12 = 0;
    goto LABEL_25;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(a1);
      v4 = swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
      v5 = a1;
      if ((*a1 & 0x80) != 0)
      {
        if (a1)
        {
          v23 = a1;
        }

        else
        {
          v23 = 0;
        }

        v6 = (*(v23 + 9) >> 1) & 1;
        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v6 = 0;
        if (a1)
        {
LABEL_6:
          v7 = a1;
LABEL_37:
          v30 = v3 + 8 * v4 + 2 * v6;
          if ((*v7 & 0x80) == 0)
          {
            goto LABEL_45;
          }

          if (!v7)
          {
            v7 = 0;
          }

          if ((*(v7 + 9) & 2) != 0)
          {
            if (a1)
            {
              v32 = a1;
            }

            else
            {
              v32 = 0;
            }

            v34 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(v32);
            v35 = vcnt_s8(*(v34 + 8 * swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v32)));
            v35.i16[0] = vaddlv_u8(v35);
            v31 = v30 + 2 * v35.u32[0];
          }

          else
          {
LABEL_45:
            v31 = v3 + 8 * v4 + 2 * v6;
          }

          goto LABEL_55;
        }
      }

      v7 = 0;
      goto LABEL_37;
    }

LABEL_12:
    v13 = a2 - 4;

    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(a1, v13);
  }

  v15 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(a1);
  v16 = swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
  v17 = a1;
  if ((*a1 & 0x80) != 0)
  {
    if (a1)
    {
      v24 = a1;
    }

    else
    {
      v24 = 0;
    }

    v18 = (*(v24 + 9) >> 1) & 1;
  }

  else
  {
    v18 = 0;
  }

  v33 = v15 + 8 * v16 + 2 * v18;
  if (!a1)
  {
    v17 = 0;
  }

  return v33 - v17;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(_BYTE *a1)
{
  if (a1 == -12)
  {
    v1 = 0;
    goto LABEL_3;
  }

  v1 = a1 + 12;
  if (a1)
  {
LABEL_3:
    v2 = a1;
    goto LABEL_6;
  }

  v2 = 0;
LABEL_6:
  v3 = *v2;
  if ((v3 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = *(v6 + 6);
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (a1)
    {
LABEL_8:
      v5 = a1;
      goto LABEL_14;
    }
  }

  v5 = 0;
LABEL_14:
  if ((*v5 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = *(v9 + 7);
    if (a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (a1)
    {
LABEL_16:
      v8 = a1;
      goto LABEL_22;
    }
  }

  v8 = 0;
LABEL_22:
  if ((*v8 & 0x80) != 0)
  {
    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0;
    }

    v10 = *(v11 + 9) & 1;
  }

  else
  {
    v10 = 0;
  }

  return (&v1[8 * ((v3 >> 7) & 1) + 3 + v4] & 0xFFFFFFFFFFFFFFFCLL) + 12 * v7 + 4 * v10;
}

uint64_t swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(_BYTE *a1)
{
  if ((*a1 & 0x80) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if ((*(v2 + 9) & 1) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if ((*v3 & 0x80) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5 == -12)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 + 3;
    if (!v5)
    {
      v5 = 0;
    }
  }

  v8 = *v5;
  if ((v8 & 0x80) != 0)
  {
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    v9 = *(v11 + 6);
    if (v6)
    {
      goto LABEL_28;
    }

LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  v9 = 0;
  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_28:
  v10 = v6;
LABEL_34:
  if ((*v10 & 0x80) != 0)
  {
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = 0;
    }

    v12 = *(v13 + 7);
  }

  else
  {
    v12 = 0;
  }

  return *(((&v7[2 * ((v8 >> 7) & 1)] + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v12);
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(_BYTE *a1)
{
  v1 = a1;
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(a1);
  v3 = swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v1);
  if ((*v1 & 0x80) != 0)
  {
    if (v1)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    v4 = (*(v6 + 9) >> 1) & 1;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v1;
  if ((*v5 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v5)
  {
    v5 = 0;
  }

  if ((*(v5 + 9) & 2) != 0)
  {
    v8 = v3;
    if (!v1)
    {
      v1 = 0;
    }

    v9 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(v1);
    v10 = vcnt_s8(*(v9 + 8 * swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v1)));
    v10.i16[0] = vaddlv_u8(v10);
    v7 = v10.u32[0];
    v3 = v8;
  }

  else
  {
LABEL_13:
    v7 = 0;
  }

  return (TrailingObjectsImpl + 8 * v3 + 2 * v4 + 2 * v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericValueHeader,swift::GenericValueDescriptor>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(a1);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader>::getConditionalInvertibleProtocolRequirementCounts(a1);
  if (!v6)
  {
    v7 = 0;
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v6 - 2);
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v8 = a1;
LABEL_8:
  if ((*v8 & 0x80) != 0)
  {
    if (a1)
    {
      v10 = a1;
    }

    else
    {
      v10 = 0;
    }

    v9 = (*(v10 + 9) >> 2) & 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = TrailingObjectsImpl + 12 * v7;
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = v11 + 4 * v9;
  if ((*v12 & 0x80) != 0 && (!a1 ? (v14 = 0) : (v14 = a1), (*(v14 + 9) & 4) != 0 && (!a1 ? (v15 = 0) : (v15 = a1), (*v15 & 0x80) != 0 && (!a1 ? (v16 = 0) : (v16 = a1), (*(v16 + 9) & 4) != 0))))
  {
    if (a1)
    {
      v20 = a1;
    }

    else
    {
      v20 = 0;
    }

    v21 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(v20);
    v22 = swift::TrailingGenericContextObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader>::getConditionalInvertibleProtocolRequirementCounts(v20);
    if (v23)
    {
      v24 = *(v22 + 2 * v23 - 2);
    }

    else
    {
      v24 = 0;
    }

    v17 = *(v21 + 12 * v24);
  }

  else
  {
    v17 = 0;
  }

  v18 = v13 + 4 * v17;
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  return v18 - v19;
}

unint64_t swift::TrailingGenericContextObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader>::getConditionalInvertibleProtocolRequirementCounts(_BYTE *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if ((*v2 & 0x80) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    v2 = 0;
  }

  if ((*(v2 + 9) & 2) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(v4);
  v6 = swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v4);
  if ((*v4 & 0x80) != 0)
  {
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    v7 = (*(v10 + 9) >> 1) & 1;
    v8 = TrailingObjectsImpl + 8 * v6;
    if (v1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v8 = TrailingObjectsImpl + 8 * v6;
    if (v1)
    {
LABEL_15:
      v9 = v1;
      goto LABEL_21;
    }
  }

  v9 = 0;
LABEL_21:
  result = v8 + 2 * v7;
  if ((*v9 & 0x80) != 0)
  {
    if (!v9)
    {
      v9 = 0;
    }

    if ((*(v9 + 9) & 2) != 0)
    {
      v11 = v8 + 2 * v7;
      if (!v1)
      {
        v1 = 0;
      }

      v12 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::getTrailingObjectsImpl(v1);
      vaddlv_u8(vcnt_s8(*(v12 + 8 * swift::ABI::TrailingObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v1))));
      return v11;
    }
  }

  return result;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(a1, a2 - 1);
  }

  v3 = a1;
  if (a1 == -8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 + 8;
    if (!a1)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = a1;
LABEL_8:
  v6 = *v5;
  if ((v6 & 0x80) != 0)
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v7 = *(v8 + 4);
  }

  else
  {
    v7 = 0;
  }

  v9 = &v4[8 * ((v6 >> 7) & 1) + 3 + v7];
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  if ((*v10 & 0x80) != 0)
  {
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    v12 = 12 * *(v13 + 5);
  }

  else
  {
    v12 = 0;
  }

  if (!a1)
  {
    v3 = 0;
  }

  return v11 - v3 + v12;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v5 = swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
      if (a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      return TrailingObjectsImpl + 8 * v5 - v6;
    }

    else
    {
      v10 = a2 - 2;

      return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(a1, v10);
    }
  }

  v7 = a1;
  if (a1 == -8)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = a1 + 8;
  if (a1)
  {
LABEL_7:
    v9 = a1;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v12 = *v9;
  if ((v12 & 0x80) != 0)
  {
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    v13 = *(v15 + 4);
    if (a1)
    {
      goto LABEL_17;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  if (!a1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v14 = a1;
LABEL_23:
  if ((*v14 & 0x80) != 0)
  {
    if (a1)
    {
      v17 = a1;
    }

    else
    {
      v17 = 0;
    }

    v16 = *(v17 + 5);
  }

  else
  {
    v16 = 0;
  }

  v18 = &v8[8 * ((v12 >> 7) & 1) + 3 + v13] & 0xFFFFFFFFFFFFFFFCLL;
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 + 12 * v16;
  if ((*v19 & 0x80) != 0)
  {
    if (a1)
    {
      v22 = a1;
    }

    else
    {
      v22 = 0;
    }

    v21 = *(v22 + 7) & 1;
  }

  else
  {
    v21 = 0;
  }

  v23 = v20 + 4 * v21;
  if (!a1)
  {
    v7 = 0;
  }

  return v23 - v7;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        if (a2 != 5)
        {
          return result;
        }

        TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
        v9 = a1;
        ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
        if (v11)
        {
          v12 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v11 - 2);
          if (a1)
          {
LABEL_12:
            v13 = a1;
LABEL_40:
            if ((*v13 & 0x80) != 0)
            {
              if (a1)
              {
                v40 = a1;
              }

              else
              {
                v40 = 0;
              }

              v39 = (*(v40 + 7) >> 2) & 1;
            }

            else
            {
              v39 = 0;
            }

            v34 = TrailingObjectsImpl + 12 * v12 + 4 * v39 + 4 * swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(a1);
            v35 = (*a1 >> 16) & 1;
            goto LABEL_60;
          }
        }

        else
        {
          v12 = 0;
          if (a1)
          {
            goto LABEL_12;
          }
        }

        v13 = 0;
        goto LABEL_40;
      }

      v27 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v9 = a1;
      v28 = swift::TrailingGenericContextObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
      if (v29)
      {
        v30 = *(v28 + 2 * v29 - 2);
        if (a1)
        {
LABEL_23:
          v31 = a1;
LABEL_46:
          if ((*v31 & 0x80) != 0)
          {
            if (a1)
            {
              v42 = a1;
            }

            else
            {
              v42 = 0;
            }

            v41 = (*(v42 + 7) >> 2) & 1;
          }

          else
          {
            v41 = 0;
          }

          v37 = v27 + 12 * v30 + 4 * v41 + 4 * swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(a1);
          goto LABEL_77;
        }
      }

      else
      {
        v30 = 0;
        if (a1)
        {
          goto LABEL_23;
        }
      }

      v31 = 0;
      goto LABEL_46;
    }

    v18 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
    v9 = a1;
    v19 = swift::TrailingGenericContextObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
    if (v20)
    {
      v21 = *(v19 + 2 * v20 - 2);
      if (a1)
      {
LABEL_17:
        v22 = a1;
        goto LABEL_30;
      }
    }

    else
    {
      v21 = 0;
      if (a1)
      {
        goto LABEL_17;
      }
    }

    v22 = 0;
LABEL_30:
    v34 = v18 + 12 * v21;
    if ((*v22 & 0x80) != 0)
    {
      if (a1)
      {
        v36 = a1;
      }

      else
      {
        v36 = 0;
      }

      v35 = (*(v36 + 7) >> 2) & 1;
    }

    else
    {
      v35 = 0;
    }

LABEL_60:
    v37 = v34 + 4 * v35;
LABEL_77:
    if (a1)
    {
      v38 = v9;
    }

    else
    {
      v38 = 0;
    }

    return v37 - v38;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return result;
      }

      v4 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v5 = swift::TrailingGenericContextObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
      if (v6)
      {
        v7 = *(v5 + 2 * v6 - 2);
      }

      else
      {
        v7 = 0;
      }

      v37 = v4 + 12 * v7;
      if (a1)
      {
        v38 = a1;
      }

      else
      {
        v38 = 0;
      }

      return v37 - v38;
    }

    v23 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
    v24 = swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
    v9 = a1;
    if ((*a1 & 0x80) != 0)
    {
      if (a1)
      {
        v33 = a1;
      }

      else
      {
        v33 = 0;
      }

      v25 = (*(v33 + 7) >> 1) & 1;
      if (a1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      if (a1)
      {
LABEL_20:
        v26 = a1;
LABEL_64:
        v44 = v23 + 8 * v24 + 2 * v25;
        if ((*v26 & 0x80) == 0)
        {
          goto LABEL_72;
        }

        if (!v26)
        {
          v26 = 0;
        }

        if ((*(v26 + 7) & 2) != 0)
        {
          if (a1)
          {
            v45 = a1;
          }

          else
          {
            v45 = 0;
          }

          v46 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v45);
          v47 = vcnt_s8(*(v46 + 8 * swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v45)));
          v47.i16[0] = vaddlv_u8(v47);
          v37 = v44 + 2 * v47.u32[0];
        }

        else
        {
LABEL_72:
          v37 = v23 + 8 * v24 + 2 * v25;
        }

        goto LABEL_77;
      }
    }

    v26 = 0;
    goto LABEL_64;
  }

  v14 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
  v15 = swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
  v16 = a1;
  if ((*a1 & 0x80) != 0)
  {
    if (a1)
    {
      v32 = a1;
    }

    else
    {
      v32 = 0;
    }

    v17 = (*(v32 + 7) >> 1) & 1;
  }

  else
  {
    v17 = 0;
  }

  v43 = v14 + 8 * v15 + 2 * v17;
  if (!a1)
  {
    v16 = 0;
  }

  return v43 - v16;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(_BYTE *a1)
{
  if (a1 == -8)
  {
    v1 = 0;
    goto LABEL_3;
  }

  v1 = a1 + 8;
  if (a1)
  {
LABEL_3:
    v2 = a1;
    goto LABEL_6;
  }

  v2 = 0;
LABEL_6:
  v3 = *v2;
  if ((v3 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = *(v6 + 4);
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (a1)
    {
LABEL_8:
      v5 = a1;
      goto LABEL_14;
    }
  }

  v5 = 0;
LABEL_14:
  if ((*v5 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = *(v9 + 5);
    if (a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (a1)
    {
LABEL_16:
      v8 = a1;
      goto LABEL_22;
    }
  }

  v8 = 0;
LABEL_22:
  if ((*v8 & 0x80) != 0)
  {
    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0;
    }

    v10 = *(v11 + 7) & 1;
  }

  else
  {
    v10 = 0;
  }

  return (&v1[8 * ((v3 >> 7) & 1) + 3 + v4] & 0xFFFFFFFFFFFFFFFCLL) + 12 * v7 + 4 * v10;
}

uint64_t swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(_BYTE *a1)
{
  if ((*a1 & 0x80) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if ((*(v2 + 7) & 1) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if ((*v3 & 0x80) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if ((*(v4 + 7) & 1) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5 == -8)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 + 2;
    if (!v5)
    {
      v5 = 0;
    }
  }

  v8 = *v5;
  if ((v8 & 0x80) != 0)
  {
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    v9 = *(v11 + 4);
    if (v6)
    {
      goto LABEL_28;
    }

LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  v9 = 0;
  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_28:
  v10 = v6;
LABEL_34:
  if ((*v10 & 0x80) != 0)
  {
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = 0;
    }

    v12 = *(v13 + 5);
  }

  else
  {
    v12 = 0;
  }

  return *(((&v7[2 * ((v8 >> 7) & 1)] + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v12);
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(_BYTE *a1)
{
  v1 = a1;
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
  v3 = swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v1);
  if ((*v1 & 0x80) != 0)
  {
    if (v1)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    v4 = (*(v6 + 7) >> 1) & 1;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v1;
  if ((*v5 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v5)
  {
    v5 = 0;
  }

  if ((*(v5 + 7) & 2) != 0)
  {
    v8 = v3;
    if (!v1)
    {
      v1 = 0;
    }

    v9 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v1);
    v10 = vcnt_s8(*(v9 + 8 * swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v1)));
    v10.i16[0] = vaddlv_u8(v10);
    v7 = v10.u32[0];
    v3 = v8;
  }

  else
  {
LABEL_13:
    v7 = 0;
  }

  return (TrailingObjectsImpl + 8 * v3 + 2 * v4 + 2 * v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

uint64_t swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(_BYTE *a1)
{
  if ((*a1 & 0x80) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if ((*(v2 + 7) & 4) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if ((*v3 & 0x80) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if ((*(v4 + 7) & 4) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v5);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(v5);
  if (v8)
  {
    v9 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v8 - 2);
  }

  else
  {
    v9 = 0;
  }

  return *(TrailingObjectsImpl + 12 * v9);
}

unint64_t swift::TrailingGenericContextObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(_BYTE *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if ((*v2 & 0x80) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    v2 = 0;
  }

  if ((*(v2 + 7) & 2) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v4);
  v6 = swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v4);
  if ((*v4 & 0x80) != 0)
  {
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    v7 = (*(v10 + 7) >> 1) & 1;
    v8 = TrailingObjectsImpl + 8 * v6;
    if (v1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v8 = TrailingObjectsImpl + 8 * v6;
    if (v1)
    {
LABEL_15:
      v9 = v1;
      goto LABEL_21;
    }
  }

  v9 = 0;
LABEL_21:
  result = v8 + 2 * v7;
  if ((*v9 & 0x80) != 0)
  {
    if (!v9)
    {
      v9 = 0;
    }

    if ((*(v9 + 7) & 2) != 0)
    {
      v11 = v8 + 2 * v7;
      if (!v1)
      {
        v1 = 0;
      }

      v12 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v1);
      vaddlv_u8(vcnt_s8(*(v12 + 8 * swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v1))));
      return v11;
    }
  }

  return result;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v11);
  if (v13)
  {
    if (v13 == v12)
    {
      v10 = v9;
      (*(*v13 + 24))();
    }

    else
    {
      v10 = (*(*v13 + 16))();
    }
  }

  else
  {
    v10 = 0;
  }

  v3 = v11;
  v11 = 0;
  *a2 = v3;
  v4 = a2 + 1;
  v5 = v10;
  if (v10)
  {
    if (v10 == v9)
    {
      a2[4] = v4;
      (*(*v5 + 24))(v5);
    }

    else
    {
      a2[4] = (*(*v10 + 16))();
    }

    if (v10 == v9)
    {
      (*(*v10 + 32))(v10);
    }

    else if (v10)
    {
      (*(*v10 + 40))();
    }
  }

  else
  {
    a2[4] = 0;
  }

  v6 = v11;
  result = v13;
  v11 = 0;
  if (v6)
  {
    v9[0] = v6;
    if (!v13)
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(v8);
    }

    (*(*v13 + 48))();
    result = v13;
  }

  if (result == v12)
  {
    return (*(*result + 32))(result, v4);
  }

  if (result)
  {
    return (*(*result + 40))(result, v4);
  }

  return result;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl( a1,  a2 - 1);
  }

  v3 = a1;
  if (a1 == -44)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 + 44;
    if (!a1)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = a1;
LABEL_8:
  v6 = *v5;
  if ((v6 & 0x80) != 0)
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v7 = *(v8 + 26);
  }

  else
  {
    v7 = 0;
  }

  v9 = &v4[16 * ((v6 >> 7) & 1) + 3 + v7];
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  if ((*v10 & 0x80) != 0)
  {
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    v12 = 12 * *(v13 + 27);
  }

  else
  {
    v12 = 0;
  }

  if (!a1)
  {
    v3 = 0;
  }

  return v11 - v3 + v12;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v5 = swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
      if (a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      return TrailingObjectsImpl + 8 * v5 - v6;
    }

    else
    {
      v10 = a2 - 2;

      return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl( a1,  v10);
    }
  }

  v7 = a1;
  if (a1 == -44)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = a1 + 44;
  if (a1)
  {
LABEL_7:
    v9 = a1;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v12 = *v9;
  if ((v12 & 0x80) != 0)
  {
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    v13 = *(v15 + 26);
    if (a1)
    {
      goto LABEL_17;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  if (!a1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v14 = a1;
LABEL_23:
  if ((*v14 & 0x80) != 0)
  {
    if (a1)
    {
      v17 = a1;
    }

    else
    {
      v17 = 0;
    }

    v16 = *(v17 + 27);
  }

  else
  {
    v16 = 0;
  }

  v18 = &v8[16 * ((v12 >> 7) & 1) + 3 + v13] & 0xFFFFFFFFFFFFFFFCLL;
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 + 12 * v16;
  if ((*v19 & 0x80) != 0)
  {
    if (a1)
    {
      v22 = a1;
    }

    else
    {
      v22 = 0;
    }

    v21 = *(v22 + 29) & 1;
  }

  else
  {
    v21 = 0;
  }

  v23 = v20 + 4 * v21;
  if (!a1)
  {
    v7 = 0;
  }

  return v23 - v7;
}