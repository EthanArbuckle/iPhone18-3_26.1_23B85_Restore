Class class_getSuperclass(Class cls)
{
  if (cls)
  {
    if (*(cls + 1))
    {
      return *(cls + 1);
    }

    else
    {
      return 0;
    }
  }

  return cls;
}

uint64_t NXMapInsert(uint64_t (***a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = (**a1)(a1);

  return NXMapInsertWithHash(a1, a2, v6, a3);
}

void _NXMapRehash(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  v5 = v3 + 1;
  v6 = v3 == -1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2 * (v3 + 1) - 1;
  *(a1 + 16) = allocBuckets(2 * (v3 + 1));
  if (!v6)
  {
    v7 = (v2 + 8);
    do
    {
      v8 = *(v7 - 1);
      if (v8 != -1)
      {
        v9 = *v7;
        v10 = (**a1)(a1, *(v7 - 1));
        NXMapInsertWithHash(a1, v8, v10, v9);
      }

      v7 += 2;
      --v5;
    }

    while (v5);
  }

  if (v4 != *(a1 + 8))
  {
    _objc_inform("*** maptable: count differs after rehashing; probably indicates a broken invariant: there are x and y such as isEqual(x, y) is TRUE but hash(x) != hash (y)\n");
  }

  free((v2 - 16));
}

void *addMethods(objc_class *a1, objc_selector **a2, void (**a3)(void), const char **a4, method_list_t *a5, char a6, unsigned int *a7)
{
  v12 = a1;
  realizeAndInitializeIfNeeded_locked(0, a1, 0);
  MethodList = method_list_t::allocateMethodList(a5, 3, v13, v14);
  v18 = MethodList;
  MethodList[1] = 0;
  if (a5)
  {
    v39 = a7;
    v19 = 0;
    v20 = 0;
    v21 = a5;
    v40 = *algn_1ED3F62F8;
    v41 = dataSegmentsRanges;
    size = (a5 + 1);
    v44 = v12;
    v45 = MethodList;
    do
    {
      MethodNoSuper_nolock = getMethodNoSuper_nolock(v12, *a2, v16, v17);
      if (MethodNoSuper_nolock)
      {
        v25 = MethodNoSuper_nolock;
        if (a6)
        {
          _method_setImplementation(v12, MethodNoSuper_nolock, *a3);
        }

        else
        {
          if (!v19)
          {
            v19 = malloc_type_calloc(8uLL, size, 0x80040B8603338uLL);
          }

          if ((v25 & 3) > 1)
          {
            if ((v25 & 3) == 2)
            {
              v24 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
              if (v24)
              {
                v33 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
              }
            }
          }

          else if ((v25 & 3) != 0)
          {
            v36 = v25 & 0xFFFFFFFFFFFFFFFCLL;
            v37 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41 > (v25 & 0xFFFFFFFFFFFFFFFCLL) || v40 <= v36)
            {
              v24 = *(v36 + v37);
            }

            else
            {
              v24 = &byte_1FA920D78[v37];
            }
          }

          else
          {
            v24 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v19[v20] = v24;
          v20 = (v20 + 1);
        }
      }

      else
      {
        entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(v18, v23, v16, v17);
        v27 = v26 & 0xFFFFFFFFFFFFFFFCLL;
        *a2;
        *(v26 & 0xFFFFFFFFFFFFFFFCLL) = *a2;
        v28 = *a4;
        v29 = strlen(*a4);
        if ((_dyld_is_memory_immutable() & 1) == 0)
        {
          v43 = v19;
          v30 = v20;
          v31 = malloc_type_malloc(v29 + 1, 0x9620E368uLL);
          memcpy(v31, v28, v29 + 1);
          v28 = v31;
          v20 = v30;
          v19 = v43;
        }

        v12 = v44;
        if (v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = 0;
        }

        *(v27 + 8) = v32;
        v34 = (v27 + 16);
        if (*a3)
        {
          v35 = *a3;
        }

        v18 = v45;
        *v34 = *a3;
        ++v45[1];
      }

      ++a3;
      ++a4;
      ++a2;
      --v21;
    }

    while (v21);
    if (v18[1])
    {
      addMethods_finish(v12, v18);
      a7 = v39;
      if (!v39)
      {
        return v19;
      }

      goto LABEL_34;
    }

    a7 = v39;
  }

  else
  {
    v19 = 0;
    LODWORD(v20) = 0;
  }

  free((v18 & 0xFFFFFFFFFFFFFFFLL));
  if (a7)
  {
LABEL_34:
    *a7 = v20;
  }

  return v19;
}

void *class_addMethodsBulk(objc_class *a1, objc_selector **a2, void (**a3)(void), const char **a4, method_list_t *a5, unsigned int *a6)
{
  if (a1)
  {
    v12 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      os_unfair_lock_lock_with_options();
    }

    v14 = addMethods(a1, a2, a3, a4, a5, 0, a6);
    v15 = *(StatusReg + 24);
    v16 = v15;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != v15)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    return v14;
  }

  else
  {
    if (a6)
    {
      *a6 = a5;
    }

    v18 = malloc_type_malloc(8 * a5, 0x9620E368uLL);

    return memcpy(v18, a2, 8 * a5);
  }
}

void sub_1800BBC7C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void _objc_inform(const char *a1, ...)
{
  va_start(va, a1);
  v3[0] = 0;
  v2 = 0;
  va_copy(&v3[1], va);
  vasprintf(v3, a1, va);
  v1 = getpid();
  asprintf(&v2, "objc[%d]: %s\n", v1, v3[0]);
  _objc_syslog(v2);
  free(v2);
  free(v3[0]);
}

_DWORD *method_list_t::allocateMethodList(method_list_t *this, uint64_t a2, const char *a3, char *a4)
{
  v4 = this;
  v5 = 24 * this;
  if ((v5 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: count %u with entsize %u", a2, a3, a4, 24, this);
  }

  v6 = a2;
  result = (malloc_type_calloc(v5 + 8, 1uLL, 0xD985931uLL) | 0x8000000000000000);
  *result = v6 | 0x18;
  result[1] = v4;
  return result;
}

uint64_t addMethods_finish(objc_class *a1, method_list_t *a2)
{
  v13 = a2;
  v7 = class_rw_t::extAllocIfNeeded((*(a1 + 4) & 0xF00007FFFFFFFF8));
  if (*(a2 + 1) >= 2u)
  {
    method_list_t::sortBySELAddress(a2, v4, v5, v6);
  }

  prepareMethodLists(a1, &v13, 1, 0, 0, "addMethods_finish");
  if (PrintPreopt)
  {
    v9 = "methods";
  }

  else
  {
    v9 = 0;
  }

  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::attachLists(v7 + 1, &v13, 1, 0, v9, v8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = ___ZL17addMethods_finishP10objc_classP13method_list_t_block_invoke;
  v12[3] = &__block_descriptor_33_e8_32c60_ZTSKZL17addMethods_finishP10objc_classP13method_list_tE3__0_e8_B16__0_8l;
  return flushCaches(a1, "addMethods_finish", v12, v10);
}

void method_list_t::sortBySELAddress(method_list_t *this, uint64_t a2, const char *a3, char *a4)
{
  if ((this & 0x8000000000000000) != 0)
  {
    v13 = ((this + 8) & 0xFFFFFFFFFFFFFFFCLL);
    entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(this, a2, a3, a4);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    v16 = (v14 & 0xFFFFFFFFFFFFFFFCLL) - v13;
    v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
    if (v16 >= 1)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
      while (1)
      {
        v19 = malloc_type_malloc(24 * v18, 0xCBD3F6E5uLL);
        if (v19)
        {
          break;
        }

        v20 = v18 >> 1;
        v12 = v18 > 1;
        v18 >>= 1;
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      v21 = v19;
      std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(v13, v15, &v23, v17, v19, v18);
      goto LABEL_19;
    }

    v20 = 0;
LABEL_14:
    std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(v13, v15, &v23, v17, 0, v20);
  }

  else
  {
    if ((*this & 0x80000000) != 0)
    {
      _objc_fatal("Cannot sort small method list %p", a2, a3, a4, this);
    }

    v4 = (this + 8) & 0xFFFFFFFFFFFFFFFCLL;
    entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(this, a2, a3, a4);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    v7 = (v5 & 0xFFFFFFFFFFFFFFFCLL) - v4;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    if (v7 >= 1)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      while (1)
      {
        v10 = malloc_type_malloc(24 * v9, 0xCBD3F6E5uLL);
        if (v10)
        {
          break;
        }

        v11 = v9 >> 1;
        v12 = v9 > 1;
        v9 >>= 1;
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      v21 = v10;
      std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v4, v6, &v22, v8, v10, v9);
LABEL_19:
      free(v21);
      return;
    }

    v11 = 0;
LABEL_16:
    std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v4, v6, &v22, v8, 0, v11);
  }
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (!a4)
  {
    return result;
  }

  v5 = a5;
  v8 = result;
  if (a4 == 2)
  {
    v10 = a2 - 3;
    if (*(a2 - 3))
    {
      v11 = *(a2 - 3);
    }

    else
    {
      v11 = 0;
    }

    if (*result)
    {
      v36 = *result;
    }

    if (v11 >= *result)
    {
      std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(a5, result);
      v9 = v5 + 3;
      v37 = v10;
      goto LABEL_64;
    }

    std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(a5, v10);
    v9 = v5 + 3;
LABEL_62:
    v37 = v8;
LABEL_64:

    return std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(v9, v37);
  }

  if (a4 == 1)
  {
    v9 = a5;
    goto LABEL_62;
  }

  if (a4 > 8)
  {
    v32 = &result[3 * (a4 >> 1)];
    std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(result, v32, a3, a4 >> 1, a5, a4 >> 1);
    result = std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(&v8[3 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), &v5[3 * (a4 >> 1)], a4 - (a4 >> 1));
    v33 = &v8[3 * (a4 >> 1)];
    while (v33 != a2)
    {
      if (*v33)
      {
        v34 = *v33;
      }

      else
      {
        v34 = 0;
      }

      if (*v8)
      {
        v35 = *v8;
      }

      if (v34 >= *v8)
      {
        result = std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(v5, v8);
        v8 += 3;
      }

      else
      {
        result = std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(v5, v33);
        v33 += 3;
      }

      v5 += 3;
      if (v8 == v32)
      {
        while (v33 != a2)
        {
          result = std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(v5, v33);
          v33 += 3;
          v5 += 3;
        }

        return result;
      }
    }

    while (v8 != v32)
    {
      result = std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(v5, v8);
      v8 += 3;
      v5 += 3;
    }
  }

  else if (result != a2)
  {
    result = std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(a5, result);
    v12 = v8 + 3;
    if (v8 + 3 != a2)
    {
      v13 = 0;
      v14 = v5;
      do
      {
        v15 = v12;
        if (v8[3])
        {
          v16 = v8[3];
        }

        else
        {
          v16 = 0;
        }

        if (*v14)
        {
          v17 = *v14;
        }

        v18 = v14 + 3;
        if (v16 >= *v14)
        {
          result = std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(v18, v15);
        }

        else
        {
          result = std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(v18, v14);
          v19 = v5;
          if (v14 != v5)
          {
            v20 = v13;
            while (1)
            {
              v21 = *v15 ? *v15 : 0;
              v22 = *(v5 + v20 - 24);
              if (!v22)
              {
                break;
              }

              v19 = (v5 + v20);
              v23 = *(v5 + v20 - 24);
              if (v21 >= v22)
              {
                goto LABEL_32;
              }

              *v19 = v22;
              v24 = *(v19 - 2);
              if (v24)
              {
                v25 = *(v19 - 2);
              }

              v19[1] = v24;
              v26 = *(v5 + v20 - 8);
              if (v26)
              {
                v27 = *(v5 + v20 - 8);
              }

              v14 -= 3;
              *(v5 + v20 + 16) = v26;
              v20 -= 24;
              if (!v20)
              {
                v19 = v5;
                goto LABEL_32;
              }
            }

            v19 = v14;
          }

LABEL_32:
          if (*v15)
          {
            v28 = *v15;
          }

          *v19 = *v15;
          v29 = v8[4];
          if (v29)
          {
            v30 = v8[4];
          }

          v19[1] = v29;
          v19[2] = v8[5];
        }

        v12 = v15 + 3;
        v13 += 24;
        v14 = result;
        v8 = v15;
      }

      while (v15 + 3 != a2);
    }
  }

  return result;
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  v7 = result;
  if (a4 == 2)
  {
    if (*(a2 - 3))
    {
      v8 = *(a2 - 3);
    }

    else
    {
      v8 = 0;
    }

    if (*result)
    {
      v16 = *result;
    }

    if (v8 < *result)
    {

      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<method_t::bigSigned *&,method_t::bigSigned *&>(result, a2 - 3);
    }

    return result;
  }

  if (a4 <= 0)
  {
    if (result == a2)
    {
      return result;
    }

    v17 = result + 3;
    if (result + 3 == a2)
    {
      return result;
    }

    v18 = 0;
    v19 = result;
    while (1)
    {
      v20 = v17;
      v21 = v19[3];
      if (v21)
      {
        v22 = v19[3];
      }

      else
      {
        v22 = 0;
      }

      if (*v19)
      {
        v23 = *v19;
      }

      if (v22 < *v19)
      {
        if (v21)
        {
          v24 = v19[3];
        }

        else
        {
          v24 = 0;
        }

        v77 = v24;
        if (v19[4])
        {
          v25 = v19[4];
        }

        v78 = v19[4];
        if (v19[5])
        {
          v26 = v19[5];
        }

        v79 = v19[5];
        v27 = *v19;
        v28 = v18;
        while (1)
        {
          result = v28;
          v29 = (v28 + v7);
          if (v27)
          {
            v30 = v27;
          }

          else
          {
            v30 = 0;
          }

          v29[3] = v30;
          v31 = v29[1];
          if (v31)
          {
            v32 = v29[1];
          }

          v29[4] = v31;
          v33 = *(result + v7 + 16);
          if (v33)
          {
            v34 = *(result + v7 + 16);
          }

          *(result + v7 + 40) = v33;
          if (!result)
          {
            break;
          }

          if (v77)
          {
            v35 = v77;
          }

          else
          {
            v35 = 0;
          }

          v27 = *(result + v7 - 24);
          if (v27)
          {
            v36 = *(result + v7 - 24);
          }

          else
          {
            v36 = 0;
          }

          v28 = result - 3;
          if (v35 >= v36)
          {
            v37 = (result + v7);
            v38 = (result + v7 + 16);
            v39 = (result + v7 + 8);
            if (!v77)
            {
              goto LABEL_51;
            }

LABEL_53:
            v40 = v77;
            goto LABEL_54;
          }
        }

        v38 = v7 + 2;
        v39 = v7 + 1;
        v37 = v7;
        if (v77)
        {
          goto LABEL_53;
        }

LABEL_51:
        v40 = 0;
LABEL_54:
        *v37 = v40;
        *v39 = v78;
        *v38 = v79;
      }

      v17 = v20 + 3;
      v18 += 3;
      v19 = v20;
      if (v20 + 3 == a2)
      {
        return result;
      }
    }
  }

  v11 = a5;
  v13 = a4 >> 1;
  v14 = &result[3 * (a4 >> 1)];
  v15 = a4 >> 1;
  if (a4 > a6)
  {
    std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(result, v14, a3, v15, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(&v7[3 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v11, a6);

    return std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(v7, &v7[3 * (a4 >> 1)], a2, a4 >> 1, a4 - (a4 >> 1), v11, a6);
  }

  std::__stable_sort_move<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(result, v14, a3, v15, a5);
  v41 = &v11[3 * v13];
  result = std::__stable_sort_move<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::bigSigned *>(&v7[3 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v41);
  v42 = 0;
  v43 = &v11[3 * a4];
  v44 = v41;
  while (v44 != v43)
  {
    if (*v44)
    {
      v45 = *v44;
    }

    else
    {
      v45 = 0;
    }

    if (!*v11)
    {
      v47 = 0;
LABEL_68:
      v48 = &v7[v42];
      v7[v42] = v47;
      v49 = v11[1];
      if (v49)
      {
        v50 = v11[1];
      }

      v48[1] = v49;
      v51 = v11[2];
      if (v51)
      {
        v52 = v11[2];
      }

      v48[2] = v51;
      v11 += 3;
      goto LABEL_79;
    }

    if (v45 >= *v11)
    {
      v47 = *v11;
      goto LABEL_68;
    }

    if (*v44)
    {
      v46 = *v44;
    }

    else
    {
      v46 = 0;
    }

    v53 = &v7[v42];
    v7[v42] = v46;
    v54 = v44[1];
    if (v54)
    {
      v55 = v44[1];
    }

    v53[1] = v54;
    v56 = v44[2];
    if (v56)
    {
      v57 = v44[2];
    }

    v53[2] = v56;
    v44 += 3;
LABEL_79:
    v42 += 3;
    if (v11 == v41)
    {
      if (v44 != v43)
      {
        v58 = 0;
        v59 = &v7[v42];
        do
        {
          v60 = &v44[v58];
          v61 = v44[v58];
          if (v61)
          {
            v62 = v44[v58];
          }

          v59[v58] = v61;
          v63 = v60[1];
          if (v63)
          {
            v64 = v60[1];
          }

          v7[v58 + 1 + v42] = v63;
          v65 = v60[2];
          if (v65)
          {
            v66 = v60[2];
          }

          v59[v58 + 2] = v65;
          v58 += 3;
        }

        while (v60 + 3 != v43);
      }

      return result;
    }
  }

  if (v11 != v41)
  {
    v67 = 0;
    v68 = &v7[v42];
    v69 = &v7[v42];
    do
    {
      v70 = &v11[v67];
      v71 = v11[v67];
      if (v71)
      {
        v72 = v11[v67];
      }

      v68[v67] = v71;
      v73 = v70[1];
      if (v73)
      {
        v74 = v70[1];
      }

      v7[v67 + 1 + v42] = v73;
      v75 = v70[2];
      if (v75)
      {
        v76 = v70[2];
      }

      v68[v67 + 2] = v75;
      v69 += 3;
      v67 += 3;
    }

    while (v70 + 3 != v41);
  }

  return result;
}

uint64_t *std::construct_at[abi:nn200100]<method_t::bigSigned,method_t::bigSigned,method_t::bigSigned*>(uint64_t *result, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  *result = *a2;
  v3 = a2[1];
  if (v3)
  {
    v4 = a2[1];
  }

  result[1] = v3;
  result[2] = a2[2];
  return result;
}

BOOL ___ZL17addMethods_finishP10objc_classP13method_list_t_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return 0;
  }

  if (v2 == &_objc_empty_cache)
  {
    v3 = 0;
  }

  else
  {
    v3 = HIWORD(*(a2 + 16)) == 0;
    *(a2 + 16);
  }

  return !v3;
}

void objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::grow(int a1)
{
  v1 = dword_1ED3F6388;
  if (objc::unattachedCategories)
  {
    v2 = objc::unattachedCategories;
  }

  else
  {
    v2 = 0;
  }

  v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if ((v5 + 1) > 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 4;
  }

  dword_1ED3F6388 = v6;
  v7 = malloc_type_malloc(24 * v6, 0xAC185C46uLL);
  if (v7)
  {
    objc::unattachedCategories = v7;
    if (v2)
    {
      v9 = v7;
LABEL_13:
      if (dword_1ED3F6388)
      {
        v11 = 0;
        v12 = 24 * dword_1ED3F6388 - 24;
        v13 = vdupq_n_s64(v12 / 0x18);
        do
        {
          v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_1800DA160)));
          if (v14.i8[0])
          {
            *v9 = 1;
          }

          if (v14.i8[4])
          {
            v9[3] = 1;
          }

          v11 += 2;
          v9 += 6;
        }

        while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
      }

      if (v1)
      {
        v15 = 24 * v1;
        v16 = v2 + 8;
        do
        {
          v17 = *(v16 - 1);
          if ((v17 - 1) >= 2)
          {
            v24 = 0;
            objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::LookupBucketFor<DisguisedPtr<objc_class>>(v17, &v24);
            v18 = v24;
            v19 = *(v16 - 1);
            *(v24 + 8) = 0;
            *(v18 + 16) = 0;
            *v18 = v19;
            *(v18 + 8) = *v16;
            *v16 = 0;
            *(v16 + 1) = 0;
            ++DWORD2(objc::unattachedCategories);
          }

          v16 += 24;
          v15 -= 24;
        }

        while (v15);
      }

      free(v2);
      return;
    }

    v10 = v7;
  }

  else
  {
    *&v8 = 0;
    v10 = 0;
    v9 = 0;
    objc::unattachedCategories = v8;
    if (v2)
    {
      goto LABEL_13;
    }
  }

  if (dword_1ED3F6388)
  {
    v20 = 0;
    v21 = 24 * dword_1ED3F6388 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_1800DA160)));
      if (v23.i8[0])
      {
        *v10 = 1;
      }

      if (v23.i8[4])
      {
        v10[3] = 1;
      }

      v20 += 2;
      v10 += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }
}

void objc_registerClassPair(Class cls)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v4 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v4) || (*(qword_1ED3F6300 + 16 * v4) <= cls ? (v5 = *(qword_1ED3F6300 + 16 * v4 + 8) > cls) : (v5 = 0), !v5))
  {
    if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v19, v17, v18) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v20, v21, v22, cls);
    }
  }

  if ((*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 2) != 0 || (*((*((*cls & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8) + 3) & 2) != 0)
  {
    v6 = "objc_registerClassPair: class '%s' was already registered!";
    goto LABEL_17;
  }

  if ((*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 4) == 0 || (*((*((*cls & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8) + 3) & 4) == 0)
  {
    v6 = "objc_registerClassPair: class '%s' was not allocated with objc_allocateClassPair!";
LABEL_17:
    v7 = class_rw_t::ro((*(cls + 4) & 0xF00007FFFFFFFF8));
    _objc_inform(v6, atomic_load_explicit((v7 + 24), memory_order_acquire));
    goto LABEL_18;
  }

  v10 = (*((*cls & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  do
  {
    v11 = *v10;
    v12 = *v10;
    atomic_compare_exchange_strong(v10, &v12, *v10 & 0xF9F7FFFF | 0x2000000);
  }

  while (v12 != v11);
  v13 = (*(cls + 4) & 0xF00007FFFFFFFF8);
  do
  {
    v14 = *v13;
    v15 = *v13;
    atomic_compare_exchange_strong(v13, &v15, *v13 & 0xF9F7FFFF | 0x2000000);
  }

  while (v15 != v14);
  v16 = class_rw_t::ro((*(cls + 4) & 0xF00007FFFFFFFF8));
  addNamedClass(cls, atomic_load_explicit((v16 + 24), memory_order_acquire), 0);
LABEL_18:
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800BD5A4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

Class class_initialize(objc_class *a1, objc_object *a2)
{
  v4 = 0;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  return initializeAndMaybeRelock(a1, a2, 0);
}

void sub_1800BD6C4(_Unwind_Exception *a1)
{
  *(v1 - 8) = 0;
  *(v1 - 16) = 0;
  _Unwind_Resume(a1);
}

IMP imp_implementationWithBlock(id block)
{
  v4 = _Block_copy(block);
  if (!Trampolines[0])
  {
    v5 = dlopen("/usr/lib/libobjc-trampolines.dylib", 262);
    if (!v5)
    {
      v30 = dlerror();
      _objc_fatal("couldn't dlopen libobjc-trampolines.dylib: %s", v31, v32, v33, v30);
    }

    v6 = v5;
    v7 = malloc_type_malloc(0x20uLL, 0x201A97EDuLL);
    TrampolinePointerWrapper::TrampolinePointers::TrampolineAddress::TrampolineAddress(v7, v6, "Impl");
    TrampolinePointerWrapper::TrampolinePointers::TrampolineAddress::TrampolineAddress((v7 + 1), v6, "Start");
    if (*v7)
    {
      v8 = *v7;
    }

    v9 = dyld_image_header_containing_address();
    size = 0;
    v10 = getsegmentdata(v9, "__TEXT", &size);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7[2] = v11;
    v12 = 0;
    v7[3] = size;
    atomic_compare_exchange_strong_explicit(Trampolines, &v12, v7, memory_order_release, memory_order_relaxed);
    if (v12)
    {
      free(v7);
    }
  }

  v13 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    os_unfair_lock_lock_with_options();
  }

  if (!HeadPageGroup)
  {
    goto LABEL_16;
  }

  TrampolinesAndData = HeadPageGroup;
  if (*(HeadPageGroup + 16) != 2048)
  {
    goto LABEL_17;
  }

  if (*(HeadPageGroup + 8))
  {
    TrampolinesAndData = *(HeadPageGroup + 8);
  }

  else
  {
LABEL_16:
    TrampolinesAndData = _allocateTrampolinesAndData();
  }

LABEL_17:
  v16 = TrampolinesAndData[2];
  v17 = v16;
  v18 = TrampolinesAndData[v16];
  if (!v18)
  {
    v18 = v16 + 1;
  }

  TrampolinesAndData[2] = v18;
  if (v18 == 2048 && HeadPageGroup)
  {
    v19 = HeadPageGroup;
    do
    {
      v22 = *(v19 + 8);
      v20 = (v19 + 8);
      v21 = v22;
      if (!v22)
      {
        break;
      }

      if (TrampolinesAndData == v21)
      {
        v23 = TrampolinesAndData[1];
        if (v23)
        {
          v24 = TrampolinesAndData[1];
        }

        *v20 = v23;
        TrampolinesAndData[1] = 0;
        break;
      }

      v19 = v21;
    }

    while (v21);
  }

  TrampolinesAndData[v16] = v4;
  if (*(Trampolines[0] + 8))
  {
    v25 = *(Trampolines[0] + 8);
  }

  else
  {
    v25 = 0;
  }

  if (*Trampolines[0])
  {
    v26 = *Trampolines[0];
  }

  if (v16 > 0x7FF || (v25 - *Trampolines[0]) >> 3 > v16)
  {
    _objc_fatal("Trampoline block %p, requested invalid index %lu", v1, v2, v3, TrampolinesAndData, v16);
  }

  v27 = *(StatusReg + 24);
  v28 = v27;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v28, 0, memory_order_release, memory_order_relaxed);
  if (v28 != v27)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return &TrampolinesAndData[v17 + 4096];
}

BOOL class_addMethod(Class cls, SEL name, IMP imp, const char *types)
{
  if (!cls)
  {
    return 0;
  }

  v8 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  if (types)
  {
    v10 = types;
  }

  else
  {
    v10 = "";
  }

  v11 = addMethod(cls, name, imp, v10, 0) == 0;
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v11;
}

void sub_1800BDB7C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

TrampolinePointerWrapper::TrampolinePointers::TrampolineAddress *TrampolinePointerWrapper::TrampolinePointers::TrampolineAddress::TrampolineAddress(TrampolinePointerWrapper::TrampolinePointers::TrampolineAddress *this, void *a2, const char *__s)
{
  v13[1] = *MEMORY[0x1E69E9840];
  strlen(__s);
  v6 = v13 - ((MEMORY[0x1EEE9AC00]() + 37) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v6, "_objc_blockTrampoline");
  strcat(v6, __s);
  v7 = dlsym(a2, v6);
  if (!v7)
  {
    *this = 0;
    _objc_fatal("couldn't dlsym %s", v8, v9, v10, v6);
  }

  *this = v7;
  v11 = *MEMORY[0x1E69E9840];
  return this;
}

void *_allocateTrampolinesAndData(void)
{
  address = 0;
  if (*(Trampolines + 16))
  {
    v0 = *(Trampolines + 16);
  }

  else
  {
    v0 = 0;
  }

  if (*(Trampolines + 24))
  {
    v1 = *(Trampolines + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = MEMORY[0x1E69E9A60];
  v3 = vm_allocate(*MEMORY[0x1E69E9A60], &address, v1 + 0x4000, 687865857);
  if (v3)
  {
    _objc_fatal("vm_allocate trampolines failed (%d)", v4, v5, v6, v3);
  }

  *cur_protection = 0;
  target_address = address + 0x4000;
  v7 = vm_remap(*v2, &target_address, v1, 0, 0x4000, *v2, v0, 1, &cur_protection[1], cur_protection, 0);
  if (v7)
  {
    _objc_fatal("vm_remap trampolines failed (%d)", v8, v9, v10, v7);
  }

  result = address;
  *address = 0;
  result[1] = 0;
  if (*(Trampolines + 8))
  {
    v12 = *(Trampolines + 8);
  }

  else
  {
    v12 = 0;
  }

  if (*Trampolines)
  {
    v13 = *Trampolines;
  }

  result[2] = (v12 - *Trampolines) >> 3;
  result[3] = result + 2048;
  v14 = HeadPageGroup;
  if (HeadPageGroup)
  {
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
    if (result)
    {
      v16 = result;
    }

    else
    {
      v16 = 0;
    }

    *v15 = v16;
    if (result)
    {
      v18 = result;
    }

    else
    {
      v18 = 0;
    }

    *(HeadPageGroup + 8) = v18;
  }

  else
  {
    if (result)
    {
      v17 = result;
    }

    else
    {
      v17 = 0;
    }

    HeadPageGroup = v17;
  }

  return result;
}

BOOL imp_removeBlock(IMP anImp)
{
  if (anImp)
  {
    v1 = anImp;
    v2 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    v14 = 0;
    v4 = pageAndIndexContainingIMP(v1, &v14);
    v5 = v4;
    if (v4)
    {
      v6 = v4[v14];
      v4[v14] = v4[2];
      v4[2] = v14;
      v7 = *(HeadPageGroup + 8);
      v8 = (HeadPageGroup + 8);
      if (!v7)
      {
        goto LABEL_11;
      }

      while (1)
      {
        v9 = v7;
        v10 = v7 == 0;
        if (v4 == v9)
        {
          break;
        }

        v7 = v9[1];
        v8 = (v9 + 1);
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      if (v10)
      {
LABEL_11:
        *v8 = v4;
        v4[1] = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v11 = *(StatusReg + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    if (v5)
    {
      _Block_release(v6);
      LOBYTE(anImp) = 1;
    }

    else
    {
      LOBYTE(anImp) = 0;
    }
  }

  return anImp;
}

uint64_t *pageAndIndexContainingIMP(void (*a1)(void), unint64_t *a2)
{
  if (!HeadPageGroup)
  {
    return 0;
  }

  for (result = HeadPageGroup; ; result = *result)
  {
    v4 = *(Trampolines + 8) ? *(Trampolines + 8) : 0;
    if (*Trampolines)
    {
      v5 = *Trampolines;
    }

    if (result + 6144 > a1)
    {
      v6 = result + 4096;
      if (result + ((v4 - *Trampolines) & 0xFFFFFFFFFFFFFFF8) + 0x8000 <= a1 && (a1 - v6) >= 8)
      {
        break;
      }
    }

    if (!*result)
    {
      return 0;
    }
  }

  if (a2)
  {
    *a2 = (a1 - v6) >> 3;
  }

  return result;
}

IMP class_replaceMethod(Class cls, SEL name, IMP imp, const char *types)
{
  if (!cls)
  {
    return 0;
  }

  v8 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  if (types)
  {
    v10 = types;
  }

  else
  {
    v10 = "";
  }

  v11 = addMethod(cls, name, imp, v10, 1);
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v11;
}

void sub_1800BE2FC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

Class _objc_realizeClassFromSwift(Class cls, void *previously)
{
  if (!cls)
  {
    _objc_fatal("Swift requested that class %p be ignored, but libobjc does not support that.", previously, v2, v3, previously);
  }

  Class = cls;
  v6 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  v8 = v6 == 0;
  if (!previously || previously == cls)
  {
    if (!v8)
    {
      os_unfair_lock_lock_with_options();
    }

    if (!previously)
    {
      Class = readClass(Class, 0, 0);
    }

    v10 = realizeClassWithoutSwift(Class, 0);
  }

  else
  {
    if (!v8)
    {
      os_unfair_lock_lock_with_options();
    }

    addRemappedClass(previously, Class);
    addClassTableEntry(Class, 1);
    v9 = objc_class::mangledName(Class);
    addNamedClass(Class, v9, 0);
    v10 = realizeClassWithoutSwift(Class, previously);
  }

  v11 = v10;
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v11;
}

void sub_1800BE458(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t addRemappedClass(objc_class *this, objc_class *a2)
{
  if (PrintFuture)
  {
    v14 = objc_class::nameForLogging(this);
    _objc_inform("FUTURE: using %p instead of %p for %s", a2, this, v14);
  }

  if ((byte_1ED3F5988 & 1) == 0)
  {
    dword_1ED3F5980 = 64;
    v4 = malloc_type_malloc(0x400uLL, 0xAC185C46uLL);
    if (v4)
    {
      remappedClasses(BOOL)::remapped_class_map = v4;
      v5 = v4;
    }

    else
    {
      v5 = 0;
      remappedClasses(BOOL)::remapped_class_map = 0uLL;
    }

    if (dword_1ED3F5980)
    {
      v6 = 0;
      v7 = ((dword_1ED3F5980 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((dword_1ED3F5980 - 1) & 1) + 2;
      v8 = vdupq_n_s64((dword_1ED3F5980 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
      v9 = v5 + 16;
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_1800DA160)));
        if (v10.i8[0])
        {
          *(v9 - 2) = 1;
        }

        if (v10.i8[4])
        {
          *v9 = 1;
        }

        v6 += 2;
        v9 += 4;
      }

      while (v7 != v6);
    }

    byte_1ED3F5988 = 1;
  }

  v11 = -this;
  v15 = 0;
  result = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>,DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::LookupBucketFor<DisguisedPtr<objc_class>>(v11, &v15);
  if ((result & 1) == 0)
  {
    result = dword_1ED3F5980;
    if (4 * DWORD2(remappedClasses(BOOL)::remapped_class_map) + 4 >= (3 * dword_1ED3F5980))
    {
      LODWORD(result) = 2 * dword_1ED3F5980;
    }

    else if (dword_1ED3F5980 + ~DWORD2(remappedClasses(BOOL)::remapped_class_map) - HIDWORD(remappedClasses(BOOL)::remapped_class_map) > dword_1ED3F5980 >> 3)
    {
LABEL_18:
      v13 = v15;
      if (*v15 == 2)
      {
        *(&remappedClasses(BOOL)::remapped_class_map + 1) = vadd_s32(*(&remappedClasses(BOOL)::remapped_class_map + 8), 0xFFFFFFFF00000001);
      }

      else if (*v15 == 1)
      {
        ++DWORD2(remappedClasses(BOOL)::remapped_class_map);
      }

      *v15 = v11;
      v13[1] = a2;
      return result;
    }

    objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::grow(result);
    v15 = 0;
    result = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>,DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::LookupBucketFor<DisguisedPtr<objc_class>>(v11, &v15);
    goto LABEL_18;
  }

  return result;
}

BOOL class_addProtocol(Class cls, Protocol *protocol)
{
  if (cls)
  {
    v3 = cls;
    if (class_conformsToProtocol(cls, protocol))
    {
      LOBYTE(cls) = 0;
    }

    else
    {
      v4 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v4)
      {
        os_unfair_lock_lock_with_options();
      }

      realizeAndInitializeIfNeeded_locked(0, v3, 0);
      v6 = class_rw_t::extAllocIfNeeded((*(v3 + 4) & 0xF00007FFFFFFFF8));
      v7 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
      v12 = v7;
      *v7 = 1;
      v7[1] = protocol;
      if (PrintPreopt)
      {
        v8 = "protocols";
      }

      else
      {
        v8 = 0;
      }

      list_array_tt<property_t,property_list_t,RawPtr>::attachLists(v6 + 3, &v12, 1, 0, v8);
      v9 = *(StatusReg + 24);
      v10 = v9;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
        os_unfair_lock_unlock(runtimeLock);
      }

      LOBYTE(cls) = 1;
    }
  }

  return cls;
}

void sub_1800BE7E0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

char *copySwiftV1DemangledName(char *result, int a2)
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      v4 = "_TtP";
    }

    else
    {
      v4 = "_TtC";
    }

    if (strncmp(result, v4, 4uLL))
    {
      return 0;
    }

    v11 = v3 + 4;
    v5 = &v3[strlen(v3 + 4) + 4];
    v10 = 0;
    v9 = 0;
    if (v3[4] == 115)
    {
      v9 = 5;
      v10 = "Swift";
      v11 = v3 + 5;
    }

    else if (!scanMangledField(&v11, v5, &v10, &v9))
    {
      return 0;
    }

    v8 = 0;
    v7 = 0;
    if (scanMangledField(&v11, v5, &v8, &v7))
    {
      if (a2)
      {
        if (*v11 == 95 && !v11[1])
        {
          goto LABEL_17;
        }
      }

      else if (v11 == v5)
      {
LABEL_17:
        v6 = 0;
        asprintf(&v6, "%.*s.%.*s", v9, v10, v7, v8);
        return v6;
      }
    }

    return 0;
  }

  return result;
}

unint64_t _method_setImplementation(objc_class *a1, uint64_t this, void (*a3)(void))
{
  v4 = 0;
  if (this && a3)
  {
    v4 = method_t::imp(this, 0);
    if ((this & 3u) > 1)
    {
      if ((this & 3) == 2)
      {
        if (*(this & 0xFFFFFFFFFFFFFFFCLL))
        {
          v3 = *(this & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v3 = 0;
        }
      }
    }

    else if ((this & 3) != 0)
    {
      v8 = (this & 0xFFFFFFFFFFFFFFFCLL);
      if (dataSegmentsRanges > (this & 0xFFFFFFFFFFFFFFFCLL) || *algn_1ED3F62F8 <= v8)
      {
        v3 = *(v8 + *v8);
      }

      else
      {
        v3 = &unk_1FA920D78 + *v8;
      }
    }

    else
    {
      v3 = *(this & 0xFFFFFFFFFFFFFFFCLL);
    }

    method_t::setImp(this, a3);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZL25_method_setImplementationP10objc_classP8method_tPFvvE_block_invoke;
    v12[3] = &__block_descriptor_48_e8_32c67_ZTSKZL25_method_setImplementationP10objc_classP8method_tPFvvEE3__0_e8_B16__0_8l;
    v12[4] = v3;
    v12[5] = v4;
    flushCaches(a1, "_method_setImplementation", v12, v9);
    objc::Scanner::scanChangedMethod(a1, this, v10);
  }

  return v4;
}

BOOL scanMangledField(const char **a1, const char *a2, const char **a3, int *a4)
{
  v4 = *a1;
  if (**a1 == 48)
  {
    return 0;
  }

  v6 = 0;
  *a4 = 0;
  *a3 = v4;
  v7 = MEMORY[0x1E69E9830];
  while (1)
  {
    v8 = *a3;
    if (*a3 >= a2)
    {
      break;
    }

    v9 = *v8;
    if ((v9 & 0x80000000) != 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0)
    {
      break;
    }

    *a3 = v8 + 1;
    v10 = 10 * v6;
    *a4 = v10;
    if (v10 == v10)
    {
      v11 = v9 - 48;
      v12 = __OFADD__(v10, v11);
      v6 = v10 + v11;
      *a4 = v6;
      if (!v12)
      {
        continue;
      }
    }

    return 0;
  }

  v13 = &v8[v6];
  *a1 = v13;
  return v6 > 0 && v13 <= a2;
}

void _class_setCustomDeallocInitiation(objc_class *a1)
{
  if ((*(a1 + 15) & 0x1000) != 0)
  {
    return;
  }

  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAndInitializeIfNeeded_locked(0, a1, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v16 = ___class_setCustomDeallocInitiation_block_invoke;
  v17 = &__block_descriptor_33_e8_32c46_ZTSKZ33_class_setCustomDeallocInitiationE3__0_e8_B16__0_8l;
  v4 = *(gdb_objc_realized_classes + 8);
  if (DisablePreopt)
  {
    v5 = 0;
  }

  else
  {
    v5 = _dyld_objc_class_count();
  }

  v6 = (16 * (v5 + v4)) | 0xF;
  v7 = a1;
  while (v16(v15, v7))
  {
    v11 = (v7 + 32);
    if (!*((*(v7 + 4) & 0xF00007FFFFFFFF8) + 0x10))
    {
      break;
    }

    v12 = 16;
LABEL_20:
    v7 = *((*v11 & 0xF00007FFFFFFFF8) + v12);
    if (!--v6)
    {
LABEL_21:
      _objc_fatal("Memory corruption in class list.", v8, v9, v10);
    }
  }

  while (1)
  {
    v11 = (v7 + 32);
    if (v7 == a1 || *((*(v7 + 4) & 0xF00007FFFFFFFF8) + 0x18))
    {
      break;
    }

    if (*(v7 + 1))
    {
      v7 = *(v7 + 1);
    }

    else
    {
      v7 = 0;
    }

    if (!--v6)
    {
      goto LABEL_21;
    }
  }

  if (v7 != a1)
  {
    v12 = 24;
    goto LABEL_20;
  }

  v13 = *(StatusReg + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800BEDB0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t method_t::setImp(uint64_t this, void (*a2)(void))
{
  v2 = this;
  if ((this & 3u) > 1)
  {
    if ((this & 3) != 2)
    {
      return this;
    }
  }

  else if ((this & 3) != 0)
  {
    if ((byte_1ED3F5C08 & 1) == 0)
    {
      objc::smallMethodIMPMap = 0uLL;
      dword_1ED3F5C00 = 0;
      byte_1ED3F5C08 = 1;
    }

    v6 = 0;
    this = objc::DenseMapBase<objc::DenseMap<method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>,method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>::LookupBucketFor<method_t const*>(this, &v6);
    v4 = v6;
    if (this)
    {
      goto LABEL_18;
    }

    this = dword_1ED3F5C00;
    if (4 * DWORD2(objc::smallMethodIMPMap) + 4 >= (3 * dword_1ED3F5C00))
    {
      LODWORD(this) = 2 * dword_1ED3F5C00;
    }

    else if (dword_1ED3F5C00 + ~DWORD2(objc::smallMethodIMPMap) - HIDWORD(objc::smallMethodIMPMap) > dword_1ED3F5C00 >> 3)
    {
LABEL_8:
      if (*v4 == -2)
      {
        *(&objc::smallMethodIMPMap + 1) = vadd_s32(*(&objc::smallMethodIMPMap + 8), 0xFFFFFFFF00000001);
      }

      else if (*v4 == -1)
      {
        ++DWORD2(objc::smallMethodIMPMap);
      }

      *v4 = v2;
      v4[1] = 0;
LABEL_18:
      v4[1] = a2;
      return this;
    }

    objc::DenseMap<method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>::grow(this);
    v6 = 0;
    this = objc::DenseMapBase<objc::DenseMap<method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>,method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>::LookupBucketFor<method_t const*>(v2, &v6);
    v4 = v6;
    goto LABEL_8;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  *((this & 0xFFFFFFFFFFFFFFFCLL) + 16) = v5;
  return this;
}

BOOL cache_t::shouldFlush(cache_t *this, objc_selector *a2, void (*a3)(void))
{
  if ((*this & 1) == 0 && (v4 = *((*this & 0xFFFFFFFFFFFLL) + 8), v4 < 0))
  {
    if (*(this + 2) != (HIDWORD(v3) ^ v3))
    {
      __break(1u);
      JUMPOUT(0x1800BF064);
    }

    v7 = *((*this & 0xFFFFFFFFFFFLL) + 8 * (((a2 - &unk_1FA920D78) >> (v4 & 0x1F)) & (v4 >> 5) & 0x7FF) + 0x10);
    if (a2 - &unk_1FA920D78 != v7 >> 38)
    {
      return 0;
    }

    return (this - ((v7 << 26) >> 24) - 16) == a3;
  }

  else
  {
    return cache_getImp(this - 16, a2, 0) == a3;
  }
}

uint64_t objc::Scanner::scanChangedMethod(uint64_t this, unint64_t a2, const method_t *a3)
{
  if ((a2 & 3) > 1)
  {
    if ((a2 & 3) != 2)
    {
      goto LABEL_44;
    }

    v4 = *(a2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v4)
    {
      v5 = *(a2 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  else if ((a2 & 3) != 0)
  {
    v6 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
    if (dataSegmentsRanges <= (a2 & 0xFFFFFFFFFFFFFFFCLL) && *algn_1ED3F62F8 > v6)
    {
      v4 = &unk_1FA920D78 + *v6;
    }

    else
    {
      v4 = *(v6 + *v6);
    }
  }

  else
  {
    v4 = *(a2 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if ("alloc" != v4 && "allocWithZone:" != v4)
  {
    v9 = 4;
    v10 = 1;
    if ("retain" != v4 && "release" != v4 && "autorelease" != v4 && "_tryRetain" != v4 && "_isDeallocating" != v4 && "retainCount" != v4 && "allowsWeakReference" != v4 && "retainWeakReference" != v4)
    {
      v9 = 16;
      v10 = 1;
      if (&sel_new != v4 && "self" != v4 && "class" != v4 && "isKindOfClass:" != v4)
      {
        if ("respondsToSelector:" != v4)
        {
          return this;
        }

        v10 = 1;
      }
    }

    if (this)
    {
      goto LABEL_32;
    }

LABEL_45:
    v15 = objc::NSObjectSwizzledMask;
    if ((objc::NSObjectSwizzledMask & v9) != 0)
    {
      v10 = 0;
    }

    if (v10 == 1)
    {
      class_rw_t::methods(&v33, OBJC_CLASS___NSObject.info & 0xF00007FFFFFFFF8);
      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::begin(v31, &v33, v16, v17);
      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::end(v30, &v33, v18, v19);
      while (1)
      {
        this = list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator==(v31, v30);
        if (this)
        {
          break;
        }

        if (v32 == a2)
        {
          this = objc::Scanner::setNSObjectSwizzled(NSObject, v9, 0);
          break;
        }

        list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator++(v31, v20, v21, v22);
      }

      v15 = objc::NSObjectSwizzledMask;
    }

    if ((v15 & (2 * v9)) == 0)
    {
      class_rw_t::methods(&v33, OBJC_METACLASS___NSObject.info & 0xF00007FFFFFFFF8);
      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::begin(v31, &v33, v23, v24);
      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::end(v30, &v33, v25, v26);
      while (1)
      {
        this = list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator==(v31, v30);
        if (this)
        {
          break;
        }

        if (v32 == a2)
        {
          return objc::Scanner::setNSObjectSwizzled(&OBJC_METACLASS___NSObject, v9, 1);
        }

        list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::operator++(v31, v27, v28, v29);
      }
    }

    return this;
  }

LABEL_44:
  v10 = 0;
  v9 = 1;
  if (!this)
  {
    goto LABEL_45;
  }

LABEL_32:
  if ((*(this + 30) & 4) != 0)
  {
    if (this != &OBJC_METACLASS___NSObject || (objc::NSObjectSwizzledMask & (2 * v9)) != 0)
    {
      return this;
    }

    v12 = &OBJC_METACLASS___NSObject;
    v13 = v9;
    v14 = 1;
    goto LABEL_41;
  }

  v11 = v10 ^ 1;
  if (this != NSObject)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0 && (objc::NSObjectSwizzledMask & v9) == 0)
  {
    v12 = NSObject;
    v13 = v9;
    v14 = 0;
LABEL_41:

    return objc::Scanner::setNSObjectSwizzled(v12, v13, v14);
  }

  return this;
}

Method class_getClassMethod(Class cls, SEL name)
{
  if (!cls || !name)
  {
    return 0;
  }

  if ((*cls - 1) < 0xF || (*(*(cls + 4) & 0xF00007FFFFFFFF8) & 1) == 0)
  {
    cls = (*cls & 0xFFFFFFFF8);
  }

  return class_getInstanceMethod(cls, name);
}

void method_exchangeImplementations(Method m1, Method m2)
{
  if (m1 && m2)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v8 = method_t::imp(m1, 0);
    v9 = method_t::imp(m2, 0);
    if ((m1 & 3u) > 1)
    {
      if ((m1 & 3) == 2)
      {
        if (*(m1 & 0xFFFFFFFFFFFFFFFCLL))
        {
          v2 = *(m1 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v2 = 0;
        }
      }
    }

    else if ((m1 & 3) != 0)
    {
      v10 = (m1 & 0xFFFFFFFFFFFFFFFCLL);
      if (dataSegmentsRanges > (m1 & 0xFFFFFFFFFFFFFFFCLL) || *algn_1ED3F62F8 <= v10)
      {
        v2 = *(v10 + *v10);
      }

      else
      {
        v2 = &byte_1FA920D78[*v10];
      }
    }

    else
    {
      v2 = *(m1 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if ((m2 & 3u) > 1)
    {
      if ((m2 & 3) == 2)
      {
        if (*(m2 & 0xFFFFFFFFFFFFFFFCLL))
        {
          v3 = *(m2 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v3 = 0;
        }
      }
    }

    else if ((m2 & 3) != 0)
    {
      v11 = (m2 & 0xFFFFFFFFFFFFFFFCLL);
      if (dataSegmentsRanges > (m2 & 0xFFFFFFFFFFFFFFFCLL) || *algn_1ED3F62F8 <= v11)
      {
        v3 = *(v11 + *v11);
      }

      else
      {
        v3 = &byte_1FA920D78[*v11];
      }
    }

    else
    {
      v3 = *(m2 & 0xFFFFFFFFFFFFFFFCLL);
    }

    method_t::setImp(m1, v9);
    method_t::setImp(m2, v8);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3321888768;
    v17[2] = __method_exchangeImplementations_block_invoke;
    v17[3] = &__block_descriptor_64_e8_32c43_ZTSKZ30method_exchangeImplementationsE3__0_e8_B16__0_8l;
    v17[4] = v2;
    v17[5] = v3;
    v17[6] = v8;
    v17[7] = v9;
    flushCaches(0, "method_exchangeImplementations", v17, v12);
    objc::Scanner::scanChangedMethod(0, m1, v13);
    objc::Scanner::scanChangedMethod(0, m2, v14);
    v15 = *(StatusReg + 24);
    v16 = v15;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != v15)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800BF728(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc::DenseMap<method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>::grow(int a1)
{
  v1 = dword_1ED3F5C00;
  if (objc::smallMethodIMPMap)
  {
    v2 = objc::smallMethodIMPMap;
  }

  else
  {
    v2 = 0;
  }

  v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if ((v5 + 1) > 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 4;
  }

  dword_1ED3F5C00 = v6;
  v7 = malloc_type_malloc(16 * v6, 0xAC185C46uLL);
  if (v7)
  {
    objc::smallMethodIMPMap = v7;
    if (v2)
    {
      v9 = v7;
LABEL_13:
      if (dword_1ED3F5C00)
      {
        v11 = 0;
        v12 = ((dword_1ED3F5C00 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((dword_1ED3F5C00 - 1) & 1) + 2;
        v13 = vdupq_n_s64((dword_1ED3F5C00 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
        v14 = v9 + 16;
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_1800DA160)));
          if (v15.i8[0])
          {
            *(v14 - 2) = -1;
          }

          if (v15.i8[4])
          {
            *v14 = -1;
          }

          v11 += 2;
          v14 += 4;
        }

        while (v12 != v11);
      }

      if (v1)
      {
        v16 = 16 * v1;
        v17 = v2;
        do
        {
          v18 = *v17;
          if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v25 = 0;
            objc::DenseMapBase<objc::DenseMap<method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>,method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>::LookupBucketFor<method_t const*>(v18, &v25);
            v19 = v25;
            *v25 = *v17;
            v19[1] = v17[1];
            ++DWORD2(objc::smallMethodIMPMap);
          }

          v17 += 2;
          v16 -= 16;
        }

        while (v16);
      }

      free(v2);
      return;
    }

    v10 = v7;
  }

  else
  {
    *&v8 = 0;
    v10 = 0;
    v9 = 0;
    objc::smallMethodIMPMap = v8;
    if (v2)
    {
      goto LABEL_13;
    }
  }

  if (dword_1ED3F5C00)
  {
    v20 = 0;
    v21 = ((dword_1ED3F5C00 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((dword_1ED3F5C00 - 1) & 1) + 2;
    v22 = vdupq_n_s64((dword_1ED3F5C00 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
    v23 = v10 + 16;
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_1800DA160)));
      if (v24.i8[0])
      {
        *(v23 - 2) = -1;
      }

      if (v24.i8[4])
      {
        *v23 = -1;
      }

      v20 += 2;
      v23 += 4;
    }

    while (v21 != v20);
  }
}

BOOL __method_exchangeImplementations_block_invoke(uint64_t a1, uint64_t a2)
{
  if (cache_t::shouldFlush((a2 + 16), *(a1 + 32), *(a1 + 48)))
  {
    return 1;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 56);

  return cache_t::shouldFlush((a2 + 16), v5, v6);
}

Protocol **__cdecl protocol_copyProtocolList(Protocol *proto, unsigned int *outCount)
{
  if (proto)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    isa = proto[2].super.isa;
    if (isa)
    {
      v7 = *isa;
      if (*isa)
      {
        v8 = malloc_type_malloc((8 * v7 + 8) & 0x7FFFFFFF8, 0x80040B8603338uLL);
        v9 = 0;
        do
        {
          v10 = *(proto[2].super.isa + v9 * 8 + 8);
          if (canonical_protocol)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0x20000000;
          }

          if ((v11 & *(v10 + 68)) == 0)
          {
            Protocol = getProtocol(*(v10 + 8));
            if (Protocol)
            {
              v10 = Protocol;
            }
          }

          v8[v9++] = v10;
        }

        while (v7 != v9);
        v8[v7] = 0;
        if (!outCount)
        {
          goto LABEL_21;
        }

LABEL_20:
        *outCount = v7;
LABEL_21:
        v13 = *(StatusReg + 24);
        v14 = v13;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v14, 0, memory_order_release, memory_order_relaxed);
        if (v14 != v13)
        {
          os_unfair_lock_unlock(runtimeLock);
        }

        return v8;
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    v8 = 0;
    if (!outCount)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v8 = 0;
  if (outCount)
  {
    *outCount = 0;
  }

  return v8;
}

void sub_1800BFBF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

IMP method_setImplementation(Method m, IMP imp)
{
  if (m)
  {
    v3 = m;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = _method_setImplementation(0, v3, imp);
  v7 = *(StatusReg + 24);
  v8 = v7;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != v7)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v6;
}

void sub_1800BFCF4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

objc_property_t *__cdecl class_copyPropertyList(Class cls, unsigned int *outCount)
{
  if (cls)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, cls, 0);
    if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v6 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v6) || (*(qword_1ED3F6300 + 16 * v6) <= cls ? (v7 = *(qword_1ED3F6300 + 16 * v6 + 8) > cls) : (v7 = 0), !v7))
    {
      if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v42, v40, v41) & 1) == 0)
      {
        _objc_fatal("Attempt to use unknown class %p.", v43, v44, v45, cls);
      }
    }

    class_rw_t::properties(&v50, *(cls + 4) & 0xF00007FFFFFFFF8);
    if (!v50)
    {
      v11 = 0;
      v15 = 0;
      goto LABEL_18;
    }

    v15 = (v50 & 3);
    if ((v50 & 3) == 0)
    {
      v11 = v50;
      goto LABEL_18;
    }

    if (v50 >= 4)
    {
      if (v15 == 2)
      {
        v11 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v50 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          v15 = 0;
          goto LABEL_18;
        }

        if (DisablePreattachedCategories)
        {
          v37 = *v11;
          v21 = v11[1];
          v46 = v21 * v37;
          if ((v46 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_84;
          }

          v12 = (v11 + v46 + 8);
          v47 = v21 == 0;
          if (v21)
          {
            v21 = v21;
          }

          else
          {
            v21 = 0;
          }

          if (!v47)
          {
            v12 = (v12 - v37);
          }

          v13 = *v11;
        }

        else
        {
          v12 = (v11 + 2);
          v13 = *v11;
          v21 = v11[1];
          v37 = v13;
        }

        v38 = v21 * v37;
        if ((v38 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_84;
        }

        for (i = v11 + v38 + 8; v12 < i; v12 = (v12 + v13))
        {
          if (*(objc_debug_headerInfoRWs + 8 + 8 * *v12))
          {
            break;
          }
        }
      }

      else if (v15 == 1)
      {
        v15 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v50 & 0xFFFFFFFFFFFFFFFCLL) != 0)
        {
          v11 = v15 + 2;
LABEL_66:
          i = *v15;
          v15 += 2 * i + 2;
        }

LABEL_18:
        v17 = 0;
        if (!v50)
        {
          goto LABEL_35;
        }

        while (1)
        {
          v18 = v50 & 3;
          if (v18 <= 1)
          {
            break;
          }

          if (v18 == 2 && v12 == i)
          {
            goto LABEL_39;
          }

          v21 = v11[1];
          v22 = v21 * *v11;
          if ((v22 & 0xFFFFFFFF00000000) != 0)
          {
            v37 = *v11;
            goto LABEL_84;
          }

          v23 = *(v12 + (*v12 >> 16) + 4);
          v24 = v11 + v22 + 8;
          v25 = (v12 + v13);
          do
          {
            v12 = v25;
            if (v25 >= v24)
            {
              break;
            }

            v8 = *(objc_debug_headerInfoRWs + 8 + 8 * *v25);
            v25 = (v25 + v13);
          }

          while ((v8 & 1) == 0);
LABEL_37:
          while (1)
          {
            v17 += v23;
            if (v50)
            {
              break;
            }

LABEL_35:
            if (v11 == v15)
            {
              goto LABEL_39;
            }

            v23 = v11[1];
            v11 = 0;
          }
        }

        if ((v50 & 3) != 0)
        {
          if (v11 != v15)
          {
            v19 = v11;
            v11 = *v11;
            goto LABEL_34;
          }
        }

        else if (v11 != v15)
        {
          v19 = 0;
LABEL_34:
          v23 = v11[1];
          v11 = &v19[2 * (v18 == 1)];
          goto LABEL_37;
        }

LABEL_39:
        if (v17)
        {
          v16 = malloc_type_malloc(8 * (v17 + 1), 0x2004093837F09uLL);
          list_array_tt<property_t,property_list_t,RawPtr>::begin(v49, &v50, v26, v27);
          list_array_tt<property_t,property_list_t,RawPtr>::end(v48, &v50, v28, v29);
          v30 = 0;
          while (!list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator==(v49, v48))
          {
            v16[v30] = v49[9];
            list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator++(v49, v31, v32, v33);
            ++v30;
          }

          v16[v30] = 0;
          if (outCount)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v16 = 0;
          v30 = 0;
          if (outCount)
          {
LABEL_44:
            *outCount = v30;
          }
        }

        v34 = *(StatusReg + 24);
        v35 = v34;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v35, 0, memory_order_release, memory_order_relaxed);
        if (v35 != v34)
        {
          os_unfair_lock_unlock(runtimeLock);
        }

        return v16;
      }
    }

    else
    {
      v11 = 0;
    }

    if (v15 == 2)
    {
      v15 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v50 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v37 = *v15;
        v21 = v15[1];
        v39 = v21 * v37;
        if ((v39 & 0xFFFFFFFF00000000) != 0)
        {
          v11 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_84:
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v8, v9, v10, v21, v11, v37);
        }

        i = v15 + v39 + 8;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v15 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v50 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_66;
      }

      v15 = 0;
    }

    goto LABEL_18;
  }

  v16 = 0;
  if (outCount)
  {
    *outCount = 0;
  }

  return v16;
}

void sub_1800C01EC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void AutoreleasePoolPage::popPageDebug(const void ***this, objc_object **a2, AutoreleasePoolPage *a3, objc_object **a4)
{
  if (PrintPoolHiwat)
  {
    AutoreleasePoolPage::printHiwat(this);
  }

  AutoreleasePoolPage::releaseUntil(this, a2);
  if (DebugPoolAllocation && this[2] == (this + 7))
  {
    v7 = this[4];
    AutoreleasePoolPage::kill(this);
    if (v7 && *v7 != -1583242847)
    {
      AutoreleasePoolPage::busted_die(v7);
    }

    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 344) = v7;
  }

  else if (DebugMissingPools && this[2] == (this + 7) && !this[4])
  {
    AutoreleasePoolPage::kill(this);
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 344) = 0;
  }

  else
  {
    v6 = this[5];
    if (v6)
    {
      if (this[2] - this - 56 <= 2015 || (v6 = *(v6 + 5)) != 0)
      {

        AutoreleasePoolPage::kill(v6);
      }
    }
  }
}

char *_objc_getClassForTag(unsigned int a1)
{
  result = classSlotForTagIndex(a1);
  if (result)
  {
    if (*result)
    {
      return *result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SubtypeUntil(const char *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *a1;
  if (!*a1)
  {
LABEL_16:
    _objc_fatal("Object: SubtypeUntil: end of type encountered prematurely\n", a2, a3, a4);
  }

  v5 = 0;
  v6 = a1;
  while (v5 || v4 != a2)
  {
    if (v4 <= 92)
    {
      if (v4 == 40)
      {
        goto LABEL_14;
      }

      if (v4 != 41)
      {
        if (v4 != 91)
        {
          goto LABEL_15;
        }

LABEL_14:
        ++v5;
        goto LABEL_15;
      }

LABEL_13:
      --v5;
      goto LABEL_15;
    }

    switch(v4)
    {
      case '}':
        goto LABEL_13;
      case '{':
        goto LABEL_14;
      case ']':
        goto LABEL_13;
    }

LABEL_15:
    v7 = *++v6;
    v4 = v7;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  return (v6 - a1);
}

uint64_t **list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator++(uint64_t **a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = a1[8];
  v6 = (a1[9] + v5);
  a1[9] = v6;
  *(a1 + 17) = HIDWORD(v5) + 1;
  if (v6 == a1[11])
  {
    v7 = *a1;
    v8 = **a1;
    if (!v8)
    {
      a1[1] = 0;
      goto LABEL_14;
    }

    if ((**a1 & 3) == 1)
    {
      ++a1[1];
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_14;
      }
    }

    else if ((v8 & 3) == 0)
    {
      a1[1] = 0;
    }

    if ((v8 & 3) == 2)
    {
      v9 = a1[3];
      v10 = *(a1 + 4);
      v11 = *(a1 + 5);
      v12 = (v9 + v10);
      a1[3] = (v9 + v10);
      v13 = a1[1];
      v15 = *v13;
      v14 = v13[1];
      v16 = v14 * v15;
      *(a1 + 5) = v11 + 1;
      if ((v16 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v14, v13, v15);
      }

      v17 = v13 + v16 + 8;
      if (v12 < v17)
      {
        v18 = objc_debug_headerInfoRWs + 8;
        v19 = v11 + 2;
        v20 = (v9 + 2 * v10);
        do
        {
          if (*(v18 + 8 * *v12))
          {
            break;
          }

          v12 = (v12 + v10);
          a1[3] = v20;
          *(a1 + 5) = v19++;
          v20 = (v20 + v10);
        }

        while (v12 < v17);
      }
    }

LABEL_14:
    list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::skipEmptyLists(a1);
    v24 = *a1;
    v25 = **a1;
    if (*a1 != a1[4])
    {
      goto LABEL_15;
    }

    if (v25)
    {
      if ((**a1 & 3uLL) > 1)
      {
        if ((**a1 & 3) != 2)
        {
          goto LABEL_16;
        }

        v33 = a1[3];
        v34 = a1[7];
      }

      else
      {
        if ((v25 & 3) == 0)
        {
          goto LABEL_22;
        }

        v33 = a1[1];
        v34 = a1[5];
      }

      if (v33 == v34)
      {
        return a1;
      }

      goto LABEL_16;
    }

LABEL_22:
    if (a1[1] == a1[5])
    {
      return a1;
    }

LABEL_15:
    if (!v25)
    {
LABEL_18:
      v27 = a1[1];
      goto LABEL_28;
    }

LABEL_16:
    v26 = **a1 & 3;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = (a1[3] + (*a1[3] >> 16));
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      if (!v26)
      {
        goto LABEL_18;
      }

      v27 = *a1[1];
    }

LABEL_28:
    a1[8] = *v27;
    a1[9] = (v27 + 2);
    if (*v24)
    {
      if ((*v24 & 3uLL) > 1)
      {
        if ((*v24 & 3) == 2)
        {
          v28 = (a1[3] + (*a1[3] >> 16));
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        if ((*v24 & 3) == 0)
        {
          goto LABEL_31;
        }

        v28 = *a1[1];
      }

LABEL_36:
      a1[10] = entsize_list_tt<property_t,property_list_t,0u,PointerModifierNop>::end(v28, v21, v22, v23);
      a1[11] = v29;
      if (a1[9] != v29)
      {
        return a1;
      }

      v35 = **a1;
      if (!v35)
      {
        goto LABEL_44;
      }

      if ((**a1 & 3uLL) > 1)
      {
        if ((**a1 & 3) == 2)
        {
          v36 = a1[3] + (*a1[3] >> 16);
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        if ((v35 & 3) == 0)
        {
LABEL_44:
          v36 = a1[1];
          goto LABEL_45;
        }

        v36 = *a1[1];
      }

LABEL_45:
      _objc_fatal("Assertion failed: (%s) - empty list %p encountered during iteration", v29, v30, v31, "m != mEnd", v36);
    }

LABEL_31:
    v28 = a1[1];
    goto LABEL_36;
  }

  return a1;
}

const char *__cdecl class_getImageName(const char *cls)
{
  if (cls)
  {
    v1 = 0;
    if ((atomic_load_explicit(&GetImageNameHook, memory_order_acquire))(cls, &v1))
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return cls;
}

BOOL internal_class_getImageName(objc_class *a1, const char **a2)
{
  v3 = dyld_image_path_containing_address();
  *a2 = v3;
  return v3 != 0;
}

uint64_t method_t::setName(uint64_t this, objc_selector *a2)
{
  if ((this & 3u) > 1)
  {
    if ((this & 3) == 2)
    {
      if (a2)
      {
        v2 = a2;
      }

      else
      {
        v2 = 0;
      }

      *(this & 0xFFFFFFFFFFFFFFFCLL) = v2;
    }
  }

  else if ((this & 3) != 0)
  {
    *((this & 0xFFFFFFFFFFFFFFFCLL) + *(this & 0xFFFFFFFFFFFFFFFCLL)) = a2;
  }

  else
  {
    *(this & 0xFFFFFFFFFFFFFFFCLL) = a2;
  }

  return this;
}

uint64_t findOneAttribute(unsigned int a1, char *__s, void *a3, const char *a4, size_t a5, const char *a6, size_t a7)
{
  if (strlen(__s) != a5 || strncmp(a4, __s, a5))
  {
    return 1;
  }

  v14 = malloc_type_calloc(a7 + 1, 1uLL, 0x100004077774924uLL);
  memcpy(v14, a6, a7);
  result = 0;
  *(v14 + a7) = 0;
  *a3 = v14;
  return result;
}

uint64_t std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(uint64_t result, unint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = a2 - 3;
      if (*(a2 - 3) < *result)
      {
        v47 = *result;
        if (*(result + 16))
        {
          v9 = *(result + 16);
        }

        else
        {
          v9 = 0;
        }

        *result = *v8;
        *(result + 16) = *(a2 - 1);
        *v8 = v47;
        if (v9)
        {
          v42 = v9;
        }

        else
        {
          v42 = 0;
        }

        *(a2 - 1) = v42;
      }
    }

    else if (a4 <= 0)
    {
      if (result != a2)
      {
        v17 = (result + 24);
        if ((result + 24) != a2)
        {
          v18 = 0;
          v19 = result;
          do
          {
            v20 = v17;
            if (v19[3] < *v19)
            {
              v48 = *v17;
              v49 = v19[5];
              v21 = v18;
              while (1)
              {
                *(result + v21 + 24) = *(result + v21);
                v22 = *(result + v21 + 16);
                if (v22)
                {
                  v23 = *(result + v21 + 16);
                }

                *(result + v21 + 40) = v22;
                if (!v21)
                {
                  break;
                }

                v24 = result + v21;
                v25 = *(result + v21 - 24);
                v21 -= 24;
                if (v48 >= v25)
                {
                  v26 = (result + v21 + 24);
                  v27 = (v24 + 16);
                  goto LABEL_23;
                }
              }

              v27 = (result + 16);
              v26 = result;
LABEL_23:
              *v26 = v48;
              *v27 = v49;
            }

            v17 = (v20 + 24);
            v18 += 24;
            v19 = v20;
          }

          while ((v20 + 24) != a2);
        }
      }
    }

    else
    {
      v12 = a5;
      v14 = a4 >> 1;
      v15 = (result + 24 * (a4 >> 1));
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(result, v15, a3, v16, a5);
        v28 = v12 + 24 * v14;
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v7 + 24 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), v28);
        v29 = v12 + 24 * a4;
        v30 = (v7 + 16);
        v31 = v7 + 16;
        v32 = v28;
        while (v32 != v29)
        {
          v33 = v30 - 2;
          if (*v32 >= *v12)
          {
            *v33 = *v12;
            v36 = *(v12 + 16);
            if (v36)
            {
              v37 = *(v12 + 16);
            }

            *v30 = v36;
            v12 += 24;
          }

          else
          {
            *v33 = *v32;
            v34 = *(v32 + 16);
            if (v34)
            {
              v35 = *(v32 + 16);
            }

            *v30 = v34;
            v32 += 24;
          }

          v31 += 24;
          v30 += 3;
          if (v12 == v28)
          {
            if (v32 != v29)
            {
              v38 = 0;
              do
              {
                v39 = v32 + v38;
                *&v30[v38 / 8 - 2] = *(v32 + v38);
                v40 = *(v32 + v38 + 16);
                if (v40)
                {
                  v41 = *(v32 + v38 + 16);
                }

                v30[v38 / 8] = v40;
                v38 += 24;
              }

              while (v39 + 24 != v29);
            }

            return result;
          }
        }

        if (v12 != v28)
        {
          v43 = 0;
          do
          {
            v44 = v12 + v43;
            *&v30[v43 / 8 - 2] = *(v12 + v43);
            v45 = *(v12 + v43 + 16);
            if (v45)
            {
              v46 = *(v12 + v43 + 16);
            }

            v30[v43 / 8] = v45;
            v31 += 24;
            v43 += 24;
          }

          while (v44 + 24 != v28);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(result, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v7 + 24 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), v12, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(v7, (v7 + 24 * (a4 >> 1)), a2, a4 >> 1, a4 - (a4 >> 1), v12, a6);
      }
    }
  }

  return result;
}

Ivar class_getInstanceVariable(Class cls, const char *name)
{
  if (cls && name)
  {
    return _class_getVariable(cls, name);
  }

  else
  {
    return 0;
  }
}

void *_class_getVariable(objc_class *a1, const char *a2)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAndInitializeIfNeeded_locked(0, a1, 0);
  if (a1)
  {
    while (1)
    {
      Ivar = getIvar(a1, a2);
      if (Ivar)
      {
        break;
      }

      if (!*(a1 + 1))
      {
        goto LABEL_7;
      }

      a1 = *(a1 + 1);
    }
  }

  else
  {
LABEL_7:
    Ivar = 0;
  }

  v7 = *(StatusReg + 24);
  v8 = v7;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != v7)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return Ivar;
}

void sub_1800C0ED4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *class_rw_t::properties(unint64_t *this, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v7 = *(a2 + 8);
    *this = 0;
    v8 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_13;
  }

  v3 = *(a2 + 8);
  *this = 0;
  v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 64);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 1) == 0 && v5)
  {
LABEL_13:
    *this = v5;
    return this;
  }

  if (v5)
  {
    v6 = (*((v2 & 0xFFFFFFFFFFFFFFFELL) + 64) & 1) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL | 2;
    goto LABEL_13;
  }

  return this;
}

uint64_t list_array_tt<property_t,property_list_t,RawPtr>::begin(uint64_t a1, unint64_t *a2, uint64_t a3, char *a4)
{
  v33 = a2;
  v4 = *a2;
  v5 = v31;
  if (!*a2)
  {
    v9 = 0;
    v34[0] = 0;
    v30 = a2;
LABEL_24:
    *v5 = v9;
    return list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::iteratorImpl(a1, &v33, &v30);
  }

  v6 = *a2 & 3;
  if ((v4 & 3) == 0)
  {
    v10 = *a2;
LABEL_8:
    v34[0] = v10;
    goto LABEL_9;
  }

  if (v4 < 4)
  {
    v7 = 0;
    v8 = v34;
LABEL_5:
    *v8 = v7;
    goto LABEL_9;
  }

  if (v6 == 2)
  {
    v18 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v4 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      if (DisablePreattachedCategories)
      {
        v21 = *v18;
        v24 = v18[1];
        v25 = v24 * v21;
        if ((v25 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v24, v4 & 0xFFFFFFFFFFFFFFFCLL, v21);
        }

        v26 = v21 | (v24 << 32);
        v27 = v18 + v25 + 8;
        a4 = (v27 - v21);
        v28 = v21 | ((v24 - 1) << 32);
        v29 = v24 == 0;
        if (v24)
        {
          v20 = v24;
        }

        else
        {
          v20 = 0;
        }

        if (v24)
        {
          v7 = (v27 - v21);
        }

        else
        {
          v7 = v27;
        }

        if (v29)
        {
          v19 = v26;
        }

        else
        {
          v19 = v28;
        }
      }

      else
      {
        v7 = (v18 + 2);
        v19 = *v18;
        v20 = v18[1];
        v21 = v19;
      }

      a3 = v20 * v21;
      if ((a3 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v20, v4 & 0xFFFFFFFFFFFFFFFCLL, v21);
      }

      v8 = &v35;
      v22 = HIDWORD(v19);
      v23 = v18 + a3 + 8;
      if (v7 < v23)
      {
        a3 = objc_debug_headerInfoRWs + 8;
        do
        {
          a4 = *(a3 + 8 * *v7);
          if (a4)
          {
            break;
          }

          v7 = (v7 + v19);
          v22 = (v22 + 1);
        }

        while (v7 < v23);
      }

      v34[0] = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v34[1] = v19 | (v22 << 32);
      goto LABEL_5;
    }
  }

  else
  {
    v15 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    if (v6 == 1 && v15 != 0)
    {
      v10 = v15 + 8;
      goto LABEL_8;
    }
  }

LABEL_9:
  v30 = a2;
  if ((v4 & 3) > 1)
  {
    if (v6 == 2)
    {
      v11 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v4 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v13 = *v11;
        v12 = v11[1];
        v14 = v12 * v13;
        if ((v14 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v12, v4 & 0xFFFFFFFFFFFFFFFCLL, v13);
        }

        v5 = &v32;
        v9 = v11 + v14 + 8;
        v31[0] = v4 & 0xFFFFFFFFFFFFFFFCLL;
        v31[1] = v13 | (v12 << 32);
        goto LABEL_24;
      }
    }
  }

  else
  {
    if ((v4 & 3) == 0)
    {
      v9 = 0;
      goto LABEL_24;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      v9 = (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8 * *(v4 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      goto LABEL_24;
    }
  }

  return list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::iteratorImpl(a1, &v33, &v30);
}

uint64_t list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::iteratorImpl(uint64_t a1, uint64_t a2, void *a3)
{
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(a1, a2);
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(v6 + 32, a3);
  v10 = **a2;
  if (*a2 != *a3)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
LABEL_9:
    if (*(a2 + 8) == a3[1])
    {
      goto LABEL_24;
    }

LABEL_2:
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if ((**a2 & 3uLL) > 1)
  {
    if ((**a2 & 3) != 2)
    {
      goto LABEL_3;
    }

    v17 = *(a2 + 24);
    v18 = a3[3];
  }

  else
  {
    if ((v10 & 3) == 0)
    {
      goto LABEL_9;
    }

    v17 = *(a2 + 8);
    v18 = a3[1];
  }

  if (v17 == v18)
  {
    goto LABEL_24;
  }

LABEL_3:
  v11 = **a2 & 3;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = (*(a2 + 24) + (**(a2 + 24) >> 16));
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  if (v11)
  {
    v12 = **(a2 + 8);
    goto LABEL_15;
  }

LABEL_5:
  v12 = *(a2 + 8);
LABEL_15:
  *(a1 + 64) = *v12;
  *(a1 + 72) = v12 + 2;
  v13 = **a2;
  if (!v13)
  {
    goto LABEL_18;
  }

  if ((**a2 & 3uLL) > 1)
  {
    if ((**a2 & 3) == 2)
    {
      v14 = (*(a2 + 24) + (**(a2 + 24) >> 16));
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_23;
  }

  if ((v13 & 3) != 0)
  {
    v14 = **(a2 + 8);
  }

  else
  {
LABEL_18:
    v14 = *(a2 + 8);
  }

LABEL_23:
  *(a1 + 80) = entsize_list_tt<property_t,property_list_t,0u,PointerModifierNop>::end(v14, v7, v8, v9);
  *(a1 + 88) = v15;
LABEL_24:
  list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::skipEmptyLists(a1);
  return a1;
}

uint64_t list_array_tt<property_t,property_list_t,RawPtr>::end(uint64_t a1, void *a2, const char *a3, char *a4)
{
  v16 = a2;
  v5 = *a2;
  v6 = v17;
  if (!*a2)
  {
LABEL_4:
    v7 = 0;
LABEL_5:
    *v6 = v7;
    goto LABEL_14;
  }

  if ((*a2 & 3uLL) <= 1)
  {
    if ((v5 & 3) != 0)
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_14;
      }

      v7 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8 * *(v5 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  if ((*a2 & 3) == 2 && v8 != 0)
  {
    v11 = *v8;
    v10 = v8[1];
    v12 = v10 * v11;
    if ((v12 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v10, v5 & 0xFFFFFFFFFFFFFFFCLL, v11);
    }

    v6 = &v18;
    v7 = v8 + v12 + 8;
    v17[0] = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v17[1] = v11 | (v10 << 32);
    goto LABEL_5;
  }

LABEL_14:
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(v15, &v16);
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(v14, &v16);
  return list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::iteratorImpl(a1, v15, v14);
}

uint64_t entsize_list_tt<property_t,property_list_t,0u,PointerModifierNop>::end(unsigned int *a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = *a1;
  v4 = a1[1];
  if (((v4 * v5) & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v4, a1, v5);
  }

  return v5 | (v4 << 32);
}

uint64_t **list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::skipEmptyLists(uint64_t **result)
{
  v1 = *result;
  v2 = result[4];
  v3 = objc_debug_headerInfoRWs + 8;
  v4 = **result;
  while (1)
  {
    if (v1 != v2)
    {
      goto LABEL_7;
    }

    if (v4)
    {
      break;
    }

LABEL_6:
    if (result[1] == result[5])
    {
      return result;
    }

LABEL_7:
    if (!v4)
    {
      v5 = 1;
LABEL_12:
      v6 = result[1];
      goto LABEL_14;
    }

LABEL_8:
    v5 = v4 & 3;
    if ((v4 & 3) != 1)
    {
      if ((v4 & 3) != 0)
      {
        v5 = 0;
        v6 = result[3] + (*result[3] >> 16);
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v5 = 0;
    v6 = *result[1];
LABEL_14:
    if (*(v6 + 4))
    {
      return result;
    }

    if (v5)
    {
      v4 = 0;
      result[1] = 0;
    }

    else
    {
      if ((v4 & 3) == 1)
      {
        ++result[1];
        v7 = *v1;
      }

      else
      {
        if ((v4 & 3) == 0)
        {
          result[1] = 0;
        }

        v7 = v4;
      }

      v4 = 0;
      if (v7)
      {
        v4 = v7;
        if ((v7 & 3) == 2)
        {
          v8 = result[3];
          v10 = *(result + 4);
          v9 = *(result + 5);
          v11 = (v8 + v10);
          result[3] = (v8 + v10);
          v12 = result[1];
          v13 = *v12;
          v14 = v12[1];
          v15 = v14 * v13;
          *(result + 5) = v9 + 1;
          if ((v15 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v9, v13, v15, v14, v12, v13);
          }

          v16 = v12 + v15 + 8;
          v4 = v7;
          if (v11 < v16)
          {
            v17 = v9 + 2;
            v18 = (v8 + 2 * v10);
            do
            {
              if (*(v3 + 8 * *v11))
              {
                break;
              }

              v11 = (v11 + v10);
              result[3] = v18;
              *(result + 5) = v17++;
              v18 = (v18 + v10);
            }

            while (v11 < v16);
            v4 = v7;
          }
        }
      }
    }
  }

  if ((v4 & 3u) <= 1uLL)
  {
    if ((v4 & 3) != 0)
    {
      v19 = result[1];
      v20 = result[5];
      goto LABEL_33;
    }

    goto LABEL_6;
  }

  if ((v4 & 3) != 2)
  {
    goto LABEL_8;
  }

  v19 = result[3];
  v20 = result[7];
LABEL_33:
  if (v19 != v20)
  {
    goto LABEL_8;
  }

  return result;
}

BOOL list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator==(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*v2 && (*v2 & 3uLL) > 1)
  {
    if ((*v2 & 3) != 2)
    {
      return 0;
    }

    v3 = *(a1 + 24);
    v4 = a2[3];
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 == *(a1 + 32))
  {
    if (!*v2 || (*v2 & 3uLL) <= 1)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 40);
      goto LABEL_10;
    }

    if ((*v2 & 3) == 2)
    {
      v5 = *(a1 + 24);
      v6 = *(a1 + 56);
LABEL_10:
      if (v5 == v6)
      {
        return 1;
      }
    }
  }

  return *(a1 + 72) == a2[9];
}

objc_property_t *__cdecl protocol_copyPropertyList2(Protocol *proto, unsigned int *outCount, BOOL isRequiredProperty, BOOL isInstanceProperty)
{
  if (proto && isRequiredProperty)
  {
    v5 = isInstanceProperty;
    v7 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      os_unfair_lock_lock_with_options();
    }

    if (v5)
    {
      v9 = proto + 7;
    }

    else
    {
      v9 = proto + 11;
      if ((proto + LODWORD(proto[8].super.isa)) <= &proto[11])
      {
        goto LABEL_16;
      }
    }

    isa = v9->super.isa;
    if (v9->super.isa)
    {
      v12 = isa[1];
      if (v12)
      {
        v10 = malloc_type_malloc(8 * (v12 + 1), 0x2004093837F09uLL);
        v13 = (isa + 2);
        v14 = *isa;
        entsize_list_tt<property_t,property_list_t,0u,PointerModifierNop>::end(isa, v15, v16, v17);
        if (isa + 2 == v18)
        {
          v12 = 0;
        }

        else
        {
          v19 = 0;
          do
          {
            v12 = v19 + 1;
            v10[v19] = v13;
            v13 = (v13 + v14);
            ++v19;
          }

          while (v13 != v18);
        }

        v10[v12] = 0;
        if (!outCount)
        {
          goto LABEL_19;
        }

LABEL_18:
        *outCount = v12;
LABEL_19:
        v20 = *(StatusReg + 24);
        v21 = v20;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v21, 0, memory_order_release, memory_order_relaxed);
        if (v21 != v20)
        {
          os_unfair_lock_unlock(runtimeLock);
        }

        return v10;
      }

LABEL_17:
      v10 = 0;
      if (!outCount)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v10 = 0;
  if (outCount)
  {
    *outCount = 0;
  }

  return v10;
}

void sub_1800C19B0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t iteratePropertyAttributes(const char *__s, BOOL (*a2)(unsigned int, void *, void *, const char *, unint64_t, const char *, unint64_t), void *a3, void *a4)
{
  if (!__s)
  {
    return 0;
  }

  v7 = __s;
  v8 = 0;
  while (1)
  {
    v9 = *v7;
    if (!*v7)
    {
      break;
    }

    v10 = v7;
    v11 = strcspn(v7, ",");
    v12 = &v7[v11];
    v7 += v7[v11] ? v11 + 1 : v11;
    if (v11)
    {
      v13 = v10 + 1;
      if (v9 == 34)
      {
        v14 = strcspn(++v10, ",");
        v13 += v14;
        v15 = *v13 == 34 ? v13 + 1 : v13;
      }

      else
      {
        v15 = v10 + 1;
      }

      v16 = a2(v8, a3, a4, v10, v13 - v10, v15, v12 - v15);
      v8 = (v8 + 1);
      if (!v16)
      {
        break;
      }
    }
  }

  return v8;
}

char *__cdecl property_copyAttributeValue(objc_property_t property, const char *attributeName)
{
  v2 = 0;
  if (property && attributeName)
  {
    if (*attributeName)
    {
      v5 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v5)
      {
        os_unfair_lock_lock_with_options();
      }

      v7 = *(property + 1);
      v11 = 0;
      iteratePropertyAttributes(v7, findOneAttribute, attributeName, &v11);
      v2 = v11;
      v8 = *(StatusReg + 24);
      v9 = v8;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
        os_unfair_lock_unlock(runtimeLock);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_1800C1BCC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

Ivar *__cdecl class_copyIvarList(Class cls, unsigned int *outCount)
{
  if (cls)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, cls, 0);
    v6 = *(class_data_bits_t::safe_ro<(Authentication)0>(cls + 4) + 48);
    if (v6 && (v7 = v6[1]) != 0)
    {
      v8 = malloc_type_malloc(8 * (v7 + 1), 0x2004093837F09uLL);
      v12 = *v6;
      v13 = v6[1];
      v14 = v13 * v12;
      if ((v14 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v9, v10, v11, v13, v6, v12);
      }

      v15 = v8;
      v16 = 0;
      if (v14)
      {
        v14 = v14;
        v17 = (v6 + 2);
        do
        {
          if (*v17)
          {
            v8[v16++] = v17;
          }

          v17 = (v17 + v12);
          v14 -= v12;
        }

        while (v14);
      }

      v8[v16] = 0;
      if (!outCount)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
      if (!outCount)
      {
        goto LABEL_16;
      }
    }

    *outCount = v16;
LABEL_16:
    v18 = *(StatusReg + 24);
    v19 = v18;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != v18)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    return v15;
  }

  v15 = 0;
  if (outCount)
  {
    *outCount = 0;
  }

  return v15;
}

void sub_1800C1D60(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

objc_property_t class_getProperty(Class cls, const char *name)
{
  v2 = 0;
  if (!cls || !name)
  {
    return v2;
  }

  v4 = cls;
  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*v4 - 1) < 0xF || (*(v4 + 4) & 0x8000000000000000) == 0 || (v7 = *((*(v4 + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v7) || (*(qword_1ED3F6300 + 16 * v7) <= v4 ? (v8 = *(qword_1ED3F6300 + 16 * v7 + 8) > v4) : (v8 = 0), !v8))
  {
    if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-v4) && (dataSegmentsContain(v4, v25, v23, v24) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v26, v27, v28, v4);
    }
  }

  while (1)
  {
    if ((*v4 - 1) >= 0xF && (*(v4 + 4) & 0x8000000000000000) != 0)
    {
      class_rw_t::properties(&v32, *(v4 + 4) & 0xF00007FFFFFFFF8);
    }

    else
    {
      v9 = class_data_bits_t::safe_ro<(Authentication)0>(v4 + 4);
      v32 = 0;
      v12 = *(v9 + 64);
      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 1) != 0 || !v13)
      {
        if (v13)
        {
          v14 = (*(v9 + 64) & 1) == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          goto LABEL_24;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 2;
      }

      v32 = v13;
    }

LABEL_24:
    list_array_tt<property_t,property_list_t,RawPtr>::begin(v30, &v32, v10, v11);
    list_array_tt<property_t,property_list_t,RawPtr>::end(v29, &v32, v15, v16);
    while (!list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator==(v30, v29))
    {
      v2 = v31;
      if (!strcmp(name, *v31))
      {
        goto LABEL_31;
      }

      list_array_tt<property_t,property_list_t,RawPtr>::iteratorImpl<false>::operator++(v30, v17, v18, v19);
    }

    if (!*(v4 + 1))
    {
      break;
    }

    v4 = *(v4 + 1);
  }

  v2 = 0;
LABEL_31:
  v20 = *(StatusReg + 24);
  v21 = v20;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != v20)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v2;
}

void sub_1800C2028(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_removeAssociatedObjects(id object)
{
  if (object && ((object & 0x8000000000000000) != 0 || (*object & 3) != 1))
  {
    _object_remove_associations(object, 0);
  }
}

Ivar object_getInstanceVariable(id obj, const char *name, void **outValue)
{
  if (obj < 1)
  {
    goto LABEL_8;
  }

  if (!name)
  {
    goto LABEL_8;
  }

  v5 = (*obj & 0xFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_8;
  }

  Variable = _class_getVariable(v5, name);
  v7 = Variable;
  if (outValue && Variable)
  {
    Ivar = object_getIvar(obj, Variable);
LABEL_9:
    *outValue = Ivar;
    return v7;
  }

  if (!Variable)
  {
LABEL_8:
    Ivar = 0;
    v7 = 0;
    if (outValue)
    {
      goto LABEL_9;
    }
  }

  return v7;
}

uint64_t *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<method_t::bigSigned *&,method_t::bigSigned *&>(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  if (result[1])
  {
    v3 = result[1];
  }

  else
  {
    v3 = 0;
  }

  if (result[2])
  {
    v4 = result[2];
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v5 = *a2;
  }

  *result = *a2;
  v6 = a2[1];
  if (v6)
  {
    v7 = a2[1];
  }

  result[1] = v6;
  v8 = a2[2];
  if (v8)
  {
    v9 = a2[2];
  }

  result[2] = v8;
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  a2[1] = v11;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  a2[2] = v12;
  return result;
}

char **objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::find(char *__s1)
{
  v2 = 0;
  if (objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::LookupBucketFor<char const*>(&namedSelectors, __s1, &v2))
  {
    return v2;
  }

  else
  {
    return (namedSelectors + 8 * dword_1ED3F60A0);
  }
}

void *getIvar(objc_class *a1, const char *a2)
{
  v3 = class_rw_t::ro((*(a1 + 4) & 0xF00007FFFFFFFF8));
  v7 = *(v3 + 48);
  if (!v7)
  {
    return 0;
  }

  v9 = *v7;
  v8 = v7[1];
  v10 = v8 * v9;
  if ((v10 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v4, v5, v6, v8, *(v3 + 48), v9);
  }

  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = v7 + 2;
  while (1)
  {
    if (*v12)
    {
      v13 = v12[1];
      if (v13)
      {
        if (!strcmp(a2, v13))
        {
          break;
        }
      }
    }

    v12 = (v12 + v9);
    v11 -= v9;
    if (!v11)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sel_lookUpByName(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_selector = _dyld_get_objc_selector();
  if (!objc_selector)
  {
    v3 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&selLock, &v3, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }

    v5 = objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::find(a1);
    if ((namedSelectors + 8 * dword_1ED3F60A0) == v5)
    {
      objc_selector = 0;
    }

    else
    {
      objc_selector = *v5;
    }

    v6 = *(StatusReg + 24);
    v7 = v6;
    atomic_compare_exchange_strong_explicit(&selLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      os_unfair_lock_unlock(&selLock);
    }
  }

  return objc_selector;
}

void sub_1800C25A0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(&selLock);
  }

  _Unwind_Resume(exception_object);
}

char *__cdecl method_copyReturnType(char *m)
{
  if (m)
  {
    m = method_t::types(m);
    if (m)
    {
      v4 = m;
      v5 = SkipFirstType(m, v1, v2, v3) - m;
      v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
      m = strncpy(v6, v4, v5);
      m[v5] = 0;
    }
  }

  return m;
}

const char *__cdecl ivar_getName(const char *v)
{
  if (v)
  {
    return *(v + 1);
  }

  return v;
}

objc_property_attribute_t *__cdecl property_copyAttributeList(objc_property_t property, unsigned int *outCount)
{
  if (property)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v6 = *(property + 1);
    if (v6)
    {
      v7 = 1;
      for (i = *(property + 1); ; ++i)
      {
        if (*i == 44)
        {
          ++v7;
        }

        else if (!*i)
        {
          v9 = strlen(v6);
          v10 = malloc_type_calloc(2 * v7 + 16 * v7 + v9 + 16, 1uLL, 0x50040D3D5ADE1uLL);
          v16 = &v10[v7 + 1];
          v17 = v10;
          v11 = iteratePropertyAttributes(v6, copyOneAttribute, &v17, &v16);
          v12 = v11;
          if (!v11)
          {
            free(v10);
            v10 = 0;
          }

          if (outCount)
          {
            *outCount = v12;
          }

          goto LABEL_19;
        }
      }
    }

    v10 = 0;
    if (outCount)
    {
      *outCount = 0;
    }

LABEL_19:
    v13 = *(StatusReg + 24);
    v14 = v13;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  else
  {
    v10 = 0;
    if (outCount)
    {
      *outCount = 0;
    }
  }

  return v10;
}

void sub_1800C27EC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t copyOneAttribute(unsigned int a1, void *a2, void **a3, const char *__src, size_t __n, const char *a6, size_t a7)
{
  v12 = *a2;
  v13 = *a3;
  **a2 = *a3;
  memcpy(v13, __src, __n);
  v14 = &v13[__n];
  *v14++ = 0;
  v12[1] = v14;
  memcpy(v14, a6, a7);
  v14[a7] = 0;
  *a2 = v12 + 2;
  *a3 = &v14[a7 + 1];
  return 1;
}

uint64_t _collecting_in_critical(void)
{
  if (shouldUseRestartableRanges)
  {
    act_list = 0;
    act_listCnt = 0;
    v0 = pthread_mach_thread_np(*_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)));
    v1 = MEMORY[0x1E69E9A60];
    v2 = task_threads(*MEMORY[0x1E69E9A60], &act_list, &act_listCnt);
    if (v2)
    {
      _objc_fatal("task_threads failed (result 0x%x)\n", v3, v4, v5, v2);
    }

    if (act_listCnt)
    {
      for (i = 0; i < act_listCnt; ++i)
      {
        if (act_list[i] != v0)
        {
          is_current_process_translated = rosetta_is_current_process_translated();
          v8 = act_list[i];
          if (is_current_process_translated)
          {
            if (objc_thread_get_rip())
            {
              goto LABEL_23;
            }

            v9 = 0;
          }

          else
          {
            old_stateCnt = 68;
            if (thread_get_state(v8, 6, old_state, &old_stateCnt))
            {
              v9 = 1;
            }

            else
            {
              v9 = v29;
            }
          }

          if (v9 == 1)
          {
            goto LABEL_23;
          }

          v10 = objc_restartableRanges;
          if (objc_restartableRanges)
          {
            v11 = &qword_1ED3F4BE0;
            while (1)
            {
              v12 = v9 >= v10;
              v13 = v9 - v10;
              if (v13 != 0 && v12 && v13 < *(v11 - 4))
              {
                break;
              }

              v14 = *v11;
              v11 += 2;
              v10 = v14;
              if (!v14)
              {
                goto LABEL_18;
              }
            }

LABEL_23:
            v17 = 1;
            if (!act_listCnt)
            {
              goto LABEL_28;
            }

            goto LABEL_24;
          }
        }

LABEL_18:
        ;
      }

      v17 = 0;
      if (!act_listCnt)
      {
        goto LABEL_28;
      }

LABEL_24:
        ;
      }

      v23 = 4 * act_listCnt;
    }

    else
    {
      v17 = 0;
LABEL_28:
      v23 = 0;
    }

    MEMORY[0x1865C8730](*v1, act_list, v23);
  }

  else
  {
    v15 = *MEMORY[0x1E69E9A60];
    v16 = task_restartable_ranges_synchronize();
    v17 = v16;
    if (v16)
    {
      v18 = mach_error_string(v16);
      _objc_fatal("task_restartable_ranges_synchronize failed (result 0x%x: %s)", v19, v20, v21, v17, v18);
    }
  }

  return v17;
}

void objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::grow(int a1)
{
  v1 = dword_1ED3F57A0;
  if (objc::methodDescriptionMap)
  {
    v2 = objc::methodDescriptionMap;
  }

  else
  {
    v2 = 0;
  }

  v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if ((v5 + 1) > 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 4;
  }

  dword_1ED3F57A0 = v6;
  v7 = malloc_type_malloc(16 * v6, 0xAC185C46uLL);
  if (v7)
  {
    objc::methodDescriptionMap = v7;
    if (v2)
    {
      v9 = v7;
LABEL_13:
      if (dword_1ED3F57A0)
      {
        v11 = 0;
        v12 = ((dword_1ED3F57A0 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((dword_1ED3F57A0 - 1) & 1) + 2;
        v13 = vdupq_n_s64((dword_1ED3F57A0 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
        v14 = v9 + 16;
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_1800DA160)));
          if (v15.i8[0])
          {
            *(v14 - 2) = -1;
          }

          if (v15.i8[4])
          {
            *v14 = -1;
          }

          v11 += 2;
          v14 += 4;
        }

        while (v12 != v11);
      }

      if (v1)
      {
        v16 = 16 * v1;
        v17 = v2;
        do
        {
          v18 = *v17;
          if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v25 = 0;
            objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(v18, &v25);
            v19 = v25;
            *v25 = *v17;
            v19[1] = v17[1];
            ++DWORD2(objc::methodDescriptionMap);
          }

          v17 += 2;
          v16 -= 16;
        }

        while (v16);
      }

      free(v2);
      return;
    }

    v10 = v7;
  }

  else
  {
    *&v8 = 0;
    v10 = 0;
    v9 = 0;
    objc::methodDescriptionMap = v8;
    if (v2)
    {
      goto LABEL_13;
    }
  }

  if (dword_1ED3F57A0)
  {
    v20 = 0;
    v21 = ((dword_1ED3F57A0 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((dword_1ED3F57A0 - 1) & 1) + 2;
    v22 = vdupq_n_s64((dword_1ED3F57A0 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
    v23 = v10 + 16;
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_1800DA160)));
      if (v24.i8[0])
      {
        *(v23 - 2) = -1;
      }

      if (v24.i8[4])
      {
        *v23 = -1;
      }

      v20 += 2;
      v23 += 4;
    }

    while (v21 != v20);
  }
}

uint64_t remapClassRef(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = remapClass(*a1);
  if (*a1 != result)
  {
    v9 = result;
    result = (*(a4 + 16))(a4, a2);
    if (!a3 || !MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_17;
    }

    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_16;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
LABEL_17:
      *a1 = v9;
      return result;
    }

    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_16;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_16;
    }

    v10 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v10 & 0xFE) != 2)
    {
      goto LABEL_16;
    }

    result = MEMORY[0xFFFFFC0D0];
    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
    __isb(0xFu);
    v11 = MEMORY[0xFFFFFC0D0];
    if (v11 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) || (*a1 = v9, !MEMORY[0xFFFFFC10C]) || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v12 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v12 & 0xFE) != 2) || (result = MEMORY[0xFFFFFC0D8], _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]), __isb(0xFu), v13 = MEMORY[0xFFFFFC0D8], v13 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t _class_getIvarMemoryManagement(objc_class *a1, char *a2)
{
  objc_class::realizeIfNeeded(a1);
  v6 = 0;
  v5 = 0;
  _class_lookUpIvar(a1, a2, &v6, &v5);
  return v5;
}

void fixupProtocol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, objc_selector ***a6)
{
  v10 = *(a1 + 16);
  if (v10 && *v10)
  {
    v11 = 0;
    do
    {
      v12 = v10[v11 + 1];
      v13 = *(v12 + 68);
      if (canonical_protocol)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0x20000000;
      }

      if ((v14 & v13) == 0)
      {
        Protocol = getProtocol(*(v12 + 8));
        if (Protocol)
        {
          v12 = Protocol;
        }

        v13 = *(v12 + 68);
      }

      v16 = v13 & 0xC0000000;
      if (fixed_up_protocol)
      {
        v17 = -1073741824;
      }

      else
      {
        v17 = 0x40000000;
      }

      if (v16 != v17)
      {
        fixupProtocol(v12, a2, a3, a4);
      }

      ++v11;
      v10 = *(a1 + 16);
    }

    while (v11 < *v10);
  }

  if (!a4)
  {
    fixupProtocolMethodList(a1, *(a1 + 24), 1, 1, 0, a6);
    fixupProtocolMethodList(a1, *(a1 + 32), 1, 0, 0, v35);
    fixupProtocolMethodList(a1, *(a1 + 40), 0, 1, 0, v36);
    fixupProtocolMethodList(a1, *(a1 + 48), 0, 0, 0, v37);
    if (fixed_up_protocol)
    {
      v38 = -1073741824;
    }

    else
    {
      v38 = 0x40000000;
    }

    *(a1 + 68) = v38 | *(a1 + 68) & 0x3FFFFFFF;
    return;
  }

  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v18 = *(a1 + 24);
  if (v18 && (~*v18 & 3) != 0)
  {
    fixupMethodList(v18, 0, 0, 1, &v42);
  }

  v19 = *(a1 + 32);
  if (v19 && (~*v19 & 3) != 0)
  {
    fixupMethodList(v19, 0, 0, 1, &v41);
  }

  v20 = *(a1 + 40);
  if (v20 && (~*v20 & 3) != 0)
  {
    fixupMethodList(v20, 0, 0, 1, &v40);
  }

  v21 = *(a1 + 48);
  if (v21 && (~*v21 & 3) != 0)
  {
    fixupMethodList(v21, 0, 0, 1, &v39);
  }

  (*(a4 + 16))(a4, a2);
  if (!a3 || !MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_48;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_47;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v23 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v23 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v24 = MEMORY[0xFFFFFC0D0];
          if (v24 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            fixupProtocolMethodList(a1, *(a1 + 24), 1, 1, &v42, v22);
            fixupProtocolMethodList(a1, *(a1 + 32), 1, 0, &v41, v25);
            fixupProtocolMethodList(a1, *(a1 + 40), 0, 1, &v40, v26);
            fixupProtocolMethodList(a1, *(a1 + 48), 0, 0, &v39, v27);
            v28 = fixed_up_protocol ? -1073741824 : 0x40000000;
            *(a1 + 68) = v28 | *(a1 + 68) & 0x3FFFFFFF;
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v29 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v29 & 0xFE) == 2)
                {
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                  __isb(0xFu);
                  v30 = MEMORY[0xFFFFFC0D8];
                  if (v30 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    goto LABEL_52;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_47:
    __break(1u);
  }

LABEL_48:
  fixupProtocolMethodList(a1, *(a1 + 24), 1, 1, &v42, v22);
  fixupProtocolMethodList(a1, *(a1 + 32), 1, 0, &v41, v31);
  fixupProtocolMethodList(a1, *(a1 + 40), 0, 1, &v40, v32);
  fixupProtocolMethodList(a1, *(a1 + 48), 0, 0, &v39, v33);
  if (fixed_up_protocol)
  {
    v34 = -1073741824;
  }

  else
  {
    v34 = 0x40000000;
  }

  *(a1 + 68) = v34 | *(a1 + 68) & 0x3FFFFFFF;
LABEL_52:
  if (v42)
  {
    free(v42);
  }

  if (v41)
  {
    free(v41);
  }

  if (v40)
  {
    free(v40);
  }

  if (v39)
  {
    free(v39);
  }
}

BOOL class_addIvar(Class cls, const char *name, size_t size, uint8_t alignment, const char *types)
{
  if (!cls || (*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v8 = alignment;
  if (types)
  {
    v10 = types;
  }

  else
  {
    v10 = "";
  }

  if (name)
  {
    if (*name)
    {
      v11 = name;
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

  v12 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v14 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v14) || (*(qword_1ED3F6300 + 16 * v14) <= cls ? (v15 = *(qword_1ED3F6300 + 16 * v14 + 8) > cls) : (v15 = 0), !v15))
  {
    if (objc::allocatedClasses + 8 * qword_1ED3F6160 == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v45, v43, v44) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v46, v47, v48, cls);
    }
  }

  if ((*(cls + 15) & 4) != 0 || (*((*(cls + 4) & 0xF00007FFFFFFFF8) + 3) & 4) == 0)
  {
    goto LABEL_26;
  }

  __s = v10;
  if (!v11)
  {
    if (HIDWORD(size))
    {
LABEL_26:
      v6 = 0;
      goto LABEL_27;
    }

LABEL_34:
    ro_writeable_nolock = make_ro_writeable_nolock((*(cls + 4) & 0xF00007FFFFFFFF8));
    v23 = *(class_rw_t::ro((*(cls + 4) & 0xF00007FFFFFFFF8)) + 48);
    v49 = ro_writeable_nolock;
    if (v23)
    {
      v24 = *v23;
      v25 = v23[1] * v24;
      if ((v25 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: count %u with entsize %u", v20, v21, v22, v23[1], v24);
      }

      v26 = v25 + 8;
      v27 = malloc_type_calloc(v26 + v24, 1uLL, 0x100004000313F17uLL);
      memcpy(v27, v23, v26);
      free(v23);
    }

    else
    {
      v27 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004000313F17uLL);
      *v27 = 32;
    }

    v31 = *(class_rw_t::ro((*(cls + 4) & 0xF00007FFFFFFFF8)) + 8);
    v33 = *v27;
    v32 = v27[1];
    v27[1] = v32 + 1;
    v34 = v32 * v33;
    if ((v34 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v28, v29, v30, v32, v27, v33);
    }

    v35 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v36 = (v31 + ~(-1 << v8)) & (-1 << v8);
    v37 = v27 + v34;
    *(v37 + 1) = v35;
    *v35 = v36;
    if (v11)
    {
      v38 = strlen(v11);
      if ((_dyld_is_memory_immutable() & 1) == 0)
      {
        v39 = malloc_type_malloc(v38 + 1, 0x9620E368uLL);
        memcpy(v39, v11, v38 + 1);
        v11 = v39;
      }
    }

    *(v37 + 2) = v11;
    v40 = strlen(__s);
    v41 = __s;
    if ((_dyld_is_memory_immutable() & 1) == 0)
    {
      v42 = malloc_type_malloc(v40 + 1, 0x9620E368uLL);
      memcpy(v42, __s, v40 + 1);
      v41 = v42;
    }

    *(v37 + 3) = v41;
    *(v37 + 8) = v8;
    *(v37 + 9) = size;
    *(v49 + 48) = v27;
    objc_class::setInstanceSize(cls, v36 + size);
    v6 = 1;
    goto LABEL_27;
  }

  Ivar = getIvar(cls, v11);
  v6 = 0;
  if (!HIDWORD(size) && !Ivar)
  {
    goto LABEL_34;
  }

LABEL_27:
  v16 = *(StatusReg + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v6;
}

void sub_1800C398C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void *objc_class::installMangledNameForLazilyNamedClass(objc_class *this, uint64_t a2, const char *a3, char *a4)
{
  explicit = atomic_load_explicit(&LazyClassNamerHook, memory_order_acquire);
  if (!explicit)
  {
LABEL_5:
    _objc_fatal("Lazily named class %p with no lazy name handler registered", a2, a3, a4, this);
  }

  while (1)
  {
    v6 = *this;
    if ((*this - 1) < 0xF || (*(*(this + 4) & 0xF00007FFFFFFFF8) & 1) == 0)
    {
      break;
    }

    this = *(class_data_bits_t::safe_ro<(Authentication)0>(this + 4) + 16);
    explicit = atomic_load_explicit(&LazyClassNamerHook, memory_order_acquire);
    if (!explicit)
    {
      goto LABEL_5;
    }
  }

  v7 = explicit(this);
  if (!v7)
  {
    _objc_fatal("Lazily named class %p wasn't named by lazy name handler", v8, v9, v10, this);
  }

  v11 = v7;
  v12 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&runtimeLock, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    os_unfair_lock_lock_with_options();
  }

  v14 = (make_ro_writeable_nolock(this) + 24);
  v15 = atomic_load_explicit(v14, memory_order_acquire);
  if (v15)
  {
    free(v11);
    v11 = v15;
  }

  else
  {
    atomic_store(v11, v14);
    atomic_store(v11, (make_ro_writeable_nolock((v6 & 0xFFFFFFFF8)) + 24));
    addNamedClass(this, v11, 0);
  }

  v16 = *(StatusReg + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(&runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(&runtimeLock);
  }

  return v11;
}

void sub_1800C3B64(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t make_ro_writeable_nolock(objc_class *a1)
{
  if ((*a1 - 1) < 0xF || (*(a1 + 4) & 0x8000000000000000) == 0)
  {
    realizeAndInitializeIfNeeded_locked(0, a1, 0);
  }

  v2 = (*(a1 + 4) & 0xF00007FFFFFFFF8);

  return make_ro_writeable_nolock(v2);
}

void fixupProtocolMethodList(protocol_t *a1, uint64_t a2, int a3, int a4, void **a5, objc_selector ***a6)
{
  if (a2 && (~*a2 & 3) != 0)
  {
    v8 = (a1 + 72);
    if (a1 + *(a1 + 16) <= a1 + 72)
    {

      fixupMethodList(a2, 1, 1, 0, a5);
    }

    else
    {
      v11 = *v8;
      fixupMethodList(a2, 1, (*v8 == 0), 0, a5);
      if (v11 && (a2 < 0 || (*a2 & 0x80000000) == 0))
      {
        v14 = *(a2 + 4);
        v39 = 0;
        v15 = entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::get(a2, 0, v12, v13);
        getExtendedTypesIndexesForMethod(a1, v15, a3, a4, &v39, &v38);
        if (v14)
        {
          v18 = 0;
          v33 = v39;
          v36 = v39 + 1;
          v37 = v14 - 1;
          v19 = 1;
          v34 = v14;
          do
          {
            v35 = v18 + 1;
            if (v18 + 1 < v14)
            {
              v20 = v33 + v18;
              v21 = v19;
              v23 = v36;
              v22 = v37;
              do
              {
                v24 = entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::get(a2, v18, v16, v17) & 0xFFFFFFFFFFFFFFFCLL;
                v27 = entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::get(a2, v21, v25, v26) & 0xFFFFFFFFFFFFFFFCLL;
                if (*v24 > *v27)
                {
                  v40 = *v24;
                  if (*(v24 + 16))
                  {
                    v28 = *(v24 + 16);
                  }

                  else
                  {
                    v28 = 0;
                  }

                  *v24 = *v27;
                  v29 = *(v27 + 16);
                  if (v29)
                  {
                    v30 = *(v27 + 16);
                  }

                  *(v24 + 16) = v29;
                  *v27 = v40;
                  if (v28)
                  {
                    v31 = v28;
                  }

                  else
                  {
                    v31 = 0;
                  }

                  *(v27 + 16) = v31;
                  v32 = *(v11 + 8 * v20);
                  *(v11 + 8 * v20) = *(v11 + 8 * v23);
                  *(v11 + 8 * v23) = v32;
                }

                ++v23;
                v21 = (v21 + 1);
                --v22;
              }

              while (v22);
            }

            ++v36;
            --v37;
            v19 = (v19 + 1);
            v14 = v34;
            ++v18;
          }

          while (v35 != v34);
        }
      }
    }
  }
}

void objc_enumerateClasses(const void *image, const char *namePrefix, Protocol *conformingTo, Class subclassing, void *block)
{
  v9 = image;
  if (image == -1)
  {
    goto LABEL_7;
  }

  if (!image)
  {
    dlopen_image_header = dyld_image_header_containing_address();
    if (!dlopen_image_header)
    {
      v11 = "unable to find caller's image";
LABEL_16:

      _objc_inform(v11);
      return;
    }

    goto LABEL_6;
  }

  dlopen_image_header = _dyld_get_dlopen_image_header();
  if (dlopen_image_header)
  {
LABEL_6:
    v9 = dlopen_image_header;
    goto LABEL_7;
  }

  v13 = dyld_image_header_containing_address();
  if (!v9 || v13 != v9)
  {
    v11 = "unable to find mach header for image";
    goto LABEL_16;
  }

LABEL_7:
  _objc_beginClassEnumeration(v9, namePrefix, conformingTo, subclassing, v15);
  for (i = 0; i != 1; (*(block + 2))(block, Class, &i))
  {
    Class = _objc_enumerateNextClass(v15);
    if (!Class)
    {
      break;
    }
  }

  if (v15[0] == -1)
  {
    free(v15[5]);
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u64[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_u64[0];
    if (v30->n128_u64[0] < v11->n128_u64[0])
    {
      v34 = v30->n128_i64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      v37[1] = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

Ivar object_setInstanceVariableWithStrongDefault(id obj, const char *name, void *value)
{
  Variable = 0;
  if (obj >= 1)
  {
    if (name)
    {
      Variable = _class_getVariable((*obj & 0xFFFFFFFF8), name);
      if (Variable)
      {
        v8 = 0;
        v7 = 0;
        _class_lookUpIvar(*obj & 0xFFFFFFFF8, Variable, &v8, &v7);
        if (v7 < 2)
        {
          objc_storeStrong((obj + v8), value);
        }

        else if (v7 == 3)
        {
          *(obj + v8) = value;
        }

        else if (v7 == 2)
        {
          objc_storeWeak((obj + v8), value);
        }
      }
    }
  }

  return Variable;
}

void *_objc_enumerateNextClass(uint64_t a1)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*(a1 + 40))
  {
    goto LABEL_13;
  }

  v4 = FirstHeader;
  if (FirstHeader)
  {
    v5 = *a1;
    while (v5 != (v4 + *v4))
    {
      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v4);
      v7 = v4 + 3;
      if (PreoptimizedHeaderRW)
      {
        v7 = PreoptimizedHeaderRW;
      }

      v4 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (!v4)
      {
        goto LABEL_30;
      }
    }

    v8 = header_info::classlist(v4, (a1 + 56));
    *(a1 + 40) = v8;
    if (v8)
    {
      v9 = 0;
      *(a1 + 48) = 0;
      while (v9 < *(a1 + 56))
      {
        *(a1 + 48) = v9 + 1;
        v10 = remapClass(*(*(a1 + 40) + 8 * v9));
        v4 = v10;
        if (v10)
        {
          if (!*(a1 + 8) || (v11 = objc_class::demangledName(v10, 0), !memcmp(v11, *(a1 + 8), *(a1 + 32))))
          {
            v12 = *(a1 + 16);
            if (v12)
            {
              v13 = v4;
              while ((_class_conformsToProtocol_unrealized_nolock(v13, v12) & 1) == 0)
              {
                if (*(v13 + 8))
                {
                  v14 = *(v13 + 8);
                }

                else
                {
                  v14 = 0;
                }

                v13 = remapClass(v14);
                if (!v13)
                {
                  goto LABEL_13;
                }
              }
            }

            if (!*(a1 + 24))
            {
              goto LABEL_30;
            }

            if (v4[1])
            {
              v15 = v4[1];
            }

            else
            {
              v15 = 0;
            }

            while (1)
            {
              v19 = remapClass(v15);
              if (!v19)
              {
                break;
              }

              if (v19 == *(a1 + 24))
              {
                goto LABEL_30;
              }

              if (*(v19 + 8))
              {
                v15 = *(v19 + 8);
              }

              else
              {
                v15 = 0;
              }
            }
          }
        }

LABEL_13:
        v9 = *(a1 + 48);
      }
    }

    v4 = 0;
  }

LABEL_30:
  v16 = *(StatusReg + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v4;
}

void sub_1800C4634(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void _objc_beginClassEnumeration(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = a1;
  *(a5 + 8) = __s;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  if (__s)
  {
    *(a5 + 32) = strlen(__s);
  }

  if (a1 == -1)
  {
    v7 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      os_unfair_lock_lock_with_options();
    }

    v26 = 0;
    v27 = 0;
    v28 = qword_1ED3F6160;
    if (qword_1ED3F6160)
    {
      v9 = malloc_type_malloc(8 * qword_1ED3F6160, 0xAC185C46uLL);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v26 = v10;
      v27 = qword_1ED3F6158;
      v12 = v28;
      v11 = qword_1ED3F6158;
      if (v28)
      {
        v13 = v10;
        v14 = objc::allocatedClasses;
        do
        {
          v15 = *v14++;
          *v13 = v15;
          v13 += 8;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      v11 = 0;
      v26 = 0;
      v27 = 0;
    }

    v16 = malloc_type_calloc(8uLL, v11, 0x80040B8603338uLL);
    v17 = objc::detail::DenseSetImpl<DisguisedPtr<objc_class>,objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,objc::DenseMapInfo<DisguisedPtr<objc_class>>>::begin(&v26);
    v19 = &v26[8 * v28];
    if (v19 == v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        if ((*(*(32 - *v17) & 0xF00007FFFFFFFF8) & 0x2000001) == 0x2000000)
        {
          v16[v20++] = -*v17;
        }

        do
        {
          v17 += 8;
        }

        while (v17 != v18 && (*v17 - 1) <= 1);
      }

      while (v17 != v19);
    }

    v21 = malloc_type_realloc(v16, 8 * v20, 0x80040B8603338uLL);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v16;
    }

    *(a5 + 40) = v22;
    *(a5 + 48) = 0;
    *(a5 + 56) = v20;
    if (v26)
    {
      v23 = v26;
    }

    else
    {
      v23 = 0;
    }

    free(v23);
    v24 = *(StatusReg + 24);
    v25 = v24;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v25, 0, memory_order_release, memory_order_relaxed);
    if (v25 != v24)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_1800C4940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 + 24);
  v14 = v13;
  atomic_compare_exchange_strong_explicit(v10, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 != v13)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

SEL method_getName(SEL m)
{
  if (m)
  {
    if ((m & 3u) > 1)
    {
      if ((m & 3) == 2)
      {
        if (*(m & 0xFFFFFFFFFFFFFFFCLL))
        {
          return *(m & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          return 0;
        }
      }
    }

    else if ((m & 3) != 0)
    {
      v1 = (m & 0xFFFFFFFFFFFFFFFCLL);
      if (dataSegmentsRanges > (m & 0xFFFFFFFFFFFFFFFCLL) || *algn_1ED3F62F8 <= v1)
      {
        return *(v1 + *v1);
      }

      else
      {
        return &unk_1FA920D78 + *v1;
      }
    }

    else
    {
      return *(m & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return m;
}

id object_dispose(id a1)
{
  if (a1)
  {
    objc_class::realizeIfNeeded((*a1 & 0xFFFFFFFF8));
    v5 = objc_destructInstance_nonnull_realized(a1, v2, v3, v4);
    free(v5);
  }

  return 0;
}

void objc_copyCppObjectAtomic(void *dest, const void *src, void (__cdecl *copyHelper)(void *, const void *))
{
  v6 = &CppObjectLocks[16 * (((src >> 4) ^ (src >> 9)) & 7)];
  v7 = &CppObjectLocks[16 * (((dest >> 4) ^ (dest >> 9)) & 7)];
  locker_mixin<lockdebug::lock_mixin<objc_lock_base_t>>::lockWith(v6, v7);
  (copyHelper)(dest, src);

  locker_mixin<lockdebug::lock_mixin<objc_lock_base_t>>::unlockWith(v6, v7);
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(uint64_t result, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v10 = a2 - 3;
      if (*(a2 - 3) >= *result)
      {
        *a5 = *result;
        *(a5 + 16) = *(result + 16);
        *(a5 + 24) = *v10;
        v9 = (a5 + 40);
        v11 = *(a2 - 1);
        goto LABEL_29;
      }

      *a5 = *v10;
      *(a5 + 16) = *(a2 - 1);
      *(a5 + 24) = *result;
      v9 = (a5 + 40);
LABEL_7:
      v11 = *(result + 16);
LABEL_29:
      *v9 = v11;
      return result;
    }

    if (a4 == 1)
    {
      *a5 = *result;
      v9 = (a5 + 16);
      goto LABEL_7;
    }

    if (a4 > 8)
    {
      v26 = result + 24 * (a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(result, v26, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,method_t::SortBySELAddress &,method_t::big *>(&v8[3 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), a5 + 24 * (a4 >> 1), a4 - (a4 >> 1));
      v27 = (a5 + 16);
      v28 = a5 + 16;
      v29 = &v8[3 * (a4 >> 1)];
      while (v29 != a2)
      {
        v30 = v27 - 2;
        if (*v29 >= *v8)
        {
          *v30 = *v8;
          v33 = v8[2];
          if (v33)
          {
            v34 = v8[2];
          }

          *v27 = v33;
          v8 += 3;
        }

        else
        {
          *v30 = *v29;
          v31 = v29[2];
          if (v31)
          {
            v32 = v29[2];
          }

          *v27 = v31;
          v29 += 3;
        }

        v28 += 24;
        v27 += 3;
        if (v8 == v26)
        {
          if (v29 != a2)
          {
            v35 = 0;
            do
            {
              v36 = &v29[v35];
              *&v27[v35 - 2] = *&v29[v35];
              v37 = v29[v35 + 2];
              if (v37)
              {
                v38 = v29[v35 + 2];
              }

              v27[v35] = v37;
              v35 += 3;
            }

            while (v36 + 3 != a2);
          }

          return result;
        }
      }

      if (v8 != v26)
      {
        v39 = 0;
        do
        {
          v40 = &v8[v39];
          *&v27[v39 - 2] = *&v8[v39];
          v41 = v8[v39 + 2];
          if (v41)
          {
            v42 = v8[v39 + 2];
          }

          v27[v39] = v41;
          v28 += 24;
          v39 += 3;
        }

        while (v40 + 3 != v26);
      }
    }

    else if (result != a2)
    {
      *a5 = *result;
      v12 = *(result + 16);
      if (v12)
      {
        v13 = *(result + 16);
      }

      *(a5 + 16) = v12;
      v14 = (result + 24);
      if ((result + 24) != a2)
      {
        v15 = 0;
        v16 = a5;
        do
        {
          v17 = v14;
          v18 = (v16 + 24);
          if (v8[3] >= *v16)
          {
            *v18 = *v14;
            *(v16 + 5) = v8[5];
          }

          else
          {
            *v18 = *v16;
            v19 = *(v16 + 2);
            if (v19)
            {
              v20 = *(v16 + 2);
            }

            *(v16 + 5) = v19;
            v21 = a5;
            if (v16 != a5)
            {
              v22 = v15;
              while (1)
              {
                v21 = a5 + v22;
                if (*v17 >= *(a5 + v22 - 24))
                {
                  break;
                }

                *v21 = *(a5 + v22 - 24);
                v23 = *(v21 - 8);
                if (v23)
                {
                  v24 = *(v21 - 8);
                }

                *(v21 + 16) = v23;
                v22 -= 24;
                if (!v22)
                {
                  v21 = a5;
                  break;
                }
              }
            }

            *v21 = *v17;
            *(v21 + 16) = v8[5];
          }

          v14 = v17 + 3;
          v15 += 24;
          v16 = v18;
          v8 = v17;
        }

        while (v17 + 3 != a2);
      }
    }
  }

  return result;
}

void *_headerForAddress(unint64_t a1)
{
  v1 = FirstHeader;
  if (FirstHeader)
  {
LABEL_2:
    v3 = 0;
    while (1)
    {
      size = 0;
      v4 = getsegmentdata((v1 + *v1), off_1E69EA930[v3], &size);
      if (v4)
      {
        if (v4 <= a1 && &v4[size] > a1)
        {
          break;
        }
      }

      if (++v3 == 4)
      {
        PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v1);
        v7 = v1 + 3;
        if (PreoptimizedHeaderRW)
        {
          v7 = PreoptimizedHeaderRW;
        }

        v1 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v1)
        {
          goto LABEL_2;
        }

        return v1;
      }
    }
  }

  return v1;
}

ssize_t _objc_syslog(const char *a1)
{
  getpid();
  if (!sandbox_check() || (_simple_asl_log(), result = fstat(2, &v5), (result & 0x80000000) == 0) && ((v5.st_mode & 0xB000) == 0x8000 || (v3 = v5.st_mode & 0xF000, v3 == 0x2000) || v3 == 4096))
  {
    v4 = strlen(a1);
    return write(2, a1, v4);
  }

  return result;
}

uint64_t nonMetaClasses(void)
{
  result = nonmeta_class_map[0];
  if (!nonmeta_class_map[0])
  {
    v3[0] = _mapPtrHash;
    v3[1] = _mapPtrIsEqual;
    v3[2] = _mapNoFree;
    v4 = 0;
    v1 = NXCreateMapTable(v3, 0x20u);
    while (1)
    {
      v2 = nonmeta_class_map[0];
      if (nonmeta_class_map[0])
      {
        break;
      }

      atomic_compare_exchange_strong(nonmeta_class_map, &v2, v1);
      if (!v2)
      {
        return nonmeta_class_map[0];
      }
    }

    NXFreeMapTable(v1);
    return nonmeta_class_map[0];
  }

  return result;
}

uint64_t NXMapKeyCopyingInsert(uint64_t (***a1)(void), const char *a2, uint64_t a3)
{
  v6 = (**a1)(a1);
  v7 = _NXMapMemberWithHash(a1, a2, v6, &v11);
  if (v7 == -1)
  {
    v8 = strlen(a2);
    if (_dyld_is_memory_immutable())
    {
      v7 = a2;
    }

    else
    {
      v7 = malloc_type_malloc(v8 + 1, 0x9620E368uLL);
      memcpy(v7, a2, v8 + 1);
    }
  }

  v9 = (**a1)(a1, v7);

  return NXMapInsertWithHash(a1, v7, v9, a3);
}

uint64_t _objc_rootIsDeallocating(objc_object *a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if (a1->isa)
  {
    return a1->isa >> 55 == 0;
  }

  return objc_object::sidetable_isDeallocating(a1);
}

void _objc_fault_impl(int a1, int a2, const char *a3, va_list a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  vasprintf(&v9, a3, a4);
  v6 = getpid();
  asprintf(&v8, "objc[%d]: %s\n", v6, v9);
  if (a1)
  {
    _objc_syslog(v8);
  }

  if (a2 && !DisableFaults && getpid() != 1 && ((os_parse_boot_arg_string() & 1) == 0 && !os_parse_boot_arg_string() || v10 != 109 || v11 != 100 || v12))
  {
    if (os_variant_has_internal_diagnostics())
    {
      os_fault_with_payload();
    }
  }

  free(v9);
  free(v8);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __getSharedCachePreoptimizedProtocol_block_invoke(uint64_t result, unint64_t a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    if (dataSegmentsRanges <= a2 && *algn_1ED3F62F8 > a2)
    {
      **(result + 32) = a2;
      *a4 = 1;
    }
  }

  return result;
}

void objc_addLoadImageFunc(objc_func_loadImage func)
{
  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = FirstHeader;
  if (FirstHeader)
  {
    do
    {
      (func)(v7 + *v7);
      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v7);
      v9 = v7 + 3;
      if (PreoptimizedHeaderRW)
      {
        v9 = PreoptimizedHeaderRW;
      }

      v7 = (*v9 & 0xFFFFFFFFFFFFFFFCLL);
    }

    while (v7);
  }

  if (func)
  {
    v10 = func;
  }

  else
  {
    v10 = 0;
  }

  v13 = v10;
  v14 = 1;
  GlobalSmallVector<loadImageCallback,4u>::append(&v13, v1, v2, v3);
  v11 = *(StatusReg + 24);
  v12 = v11;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != v11)
  {
    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800C5698(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void cache_t::bad_cache(cache_t *this, objc_object *a2, objc_selector *a3)
{
  _objc_inform_now_and_on_crash("Method cache corrupted. This may be a message to an invalid object, or a memory error somewhere else.");
  v6 = *this;
  if (a2)
  {
    v7 = "receiver";
  }

  else
  {
    v7 = "unused";
  }

  _objc_inform_now_and_on_crash("%s %p, SEL %p, isa %p, cache %p, buckets and mask 0x%lx, occupied 0x%x", v7, a2, a3, this - 16, this, *this, *(this + 6));
  v8 = malloc_size(a2);
  v9 = malloc_size((*this & 0xFFFFFFFFFFFLL));
  _objc_inform_now_and_on_crash("%s %zu bytes, buckets %zu bytes", v7, v8, v9);
  v10 = "<null selector>";
  if (a3)
  {
    v10 = a3;
  }

  _objc_inform_now_and_on_crash("selector '%s'", v10);
  v11 = objc_class::nameForLogging((this - 16));
  _objc_inform_now_and_on_crash("isa '%s'", v11);
  _objc_fatal("Method cache corrupted. This may be a message to an invalid object, or a memory error somewhere else.", v12, v13, v14);
}

void objc_exception_throw(id exception)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = __cxa_allocate_exception(0x20uLL);
  v3 = exception_preprocessor(exception);
  [v3 retain];
  *v2 = v3;
  v2[1] = off_1EEE9B078;
  v2[2] = object_getClassName(v3);
  if (v3)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      v10 = &objc_debug_taggedpointer_classes[v3 & 7];
      v4 = *v10;
      if (*v10)
      {
        v11 = *v10;
        if (v4 == __NSUnrecognizedTaggedPointer)
        {
          v12 = &objc_debug_taggedpointer_ext_classes[(v3 >> 55)];
          v4 = *v12;
          if (*v12)
          {
            v13 = *v12;
          }
        }
      }
    }

    else
    {
      v4 = (*v3 & 0x7FFFFFFFFFFFF8);
      if (v4)
      {
        v5 = *v3 & 0x7FFFFFFFFFFFF8;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v2[3] = v4;
  if (PrintExceptions)
  {
    ClassName = object_getClassName(v3);
    _objc_inform("EXCEPTIONS: throwing %p (object %p, a %s)", v2, v3, ClassName);
  }

  if (PrintExceptionThrow)
  {
    if (!PrintExceptions)
    {
      v7 = object_getClassName(v3);
      _objc_inform("EXCEPTIONS: throwing %p (object %p, a %s)", v2, v3, v7);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    v8 = backtrace(v14, 500);
    v9 = fileno(*MEMORY[0x1E69E9848]);
    backtrace_symbols_fd(v14, v8, v9);
  }

  __cxa_throw(v2, (v2 + 1), _objc_exception_destructor);
}

uint64_t _objc_exception_do_catch(uint64_t a1, uint64_t (***a2)(), objc_object ***a3)
{
  if (!*a2 || *a2 != off_1EEE9B078)
  {
    if (PrintExceptions)
    {
      _objc_inform("EXCEPTIONS: skipping catch(?)");
    }

    return 0;
  }

  v3 = **a3;
  *a3 = v3;
  if (a1 == &OBJC_EHTYPE_id)
  {
    if (PrintExceptions)
    {
      _objc_inform("EXCEPTIONS: catch(id)");
    }

    return 1;
  }

  v4 = 0;
  v5 = *(a1 + 16);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = remapClass(v5);
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if (!v7 || !exception_matcher(v7, v3))
  {
    if (PrintExceptions)
    {
      objc_class::nameForLogging(v7);
      _objc_inform("EXCEPTIONS: skipping catch(%s)");
    }

    return 0;
  }

  if (PrintExceptions)
  {
    objc_class::nameForLogging(v7);
    _objc_inform("EXCEPTIONS: catch(%s)");
  }

  return 1;
}

void sub_1800C5C60(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

id _objc_exception_destructor(id *a1)
{
  v1 = *a1;
  if (PrintExceptions)
  {
    ClassName = object_getClassName(*a1);
    _objc_inform("EXCEPTIONS: releasing completed exception %p (object %p, a %s)", a1, v1, ClassName);
  }

  return [v1 release];
}

uint64_t *AutoreleasePoolPage::autoreleaseNewPage(AutoreleasePoolPage *this, objc_object *a2, AutoreleasePoolPage *a3)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 344);
  if (v4 >= 2)
  {
    if (LODWORD(v4->isa) != -1583242847)
    {
      AutoreleasePoolPage::busted_die(&v4->isa);
    }

    return AutoreleasePoolPage::autoreleaseFullPage(0, v4, a3);
  }

  else
  {

    return AutoreleasePoolPage::autoreleaseNoPage(0, v4);
  }
}

int class_getVersion(Class cls)
{
  if (cls)
  {
    if (*cls - 1) >= 0xF && (*(cls + 4) & 0x8000000000000000) != 0 && (v1 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 8), (v1) && (v1 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      LODWORD(cls) = *((v1 & 0xFFFFFFFFFFFFFFFELL) + 40);
    }

    else if (class_isMetaClass(cls))
    {
      LODWORD(cls) = 7;
    }

    else
    {
      LODWORD(cls) = 0;
    }
  }

  return cls;
}

const char *__cdecl ivar_getTypeEncoding(const char *v)
{
  if (v)
  {
    return *(v + 2);
  }

  return v;
}

Protocol *__cdecl objc_allocateProtocol(const char *name)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if (getProtocol(name))
  {
    v4 = 0;
  }

  else
  {
    v5 = malloc_type_calloc(0x60uLL, 1uLL, 0x10F0040BF5397C1uLL);
    if (__IncompleteProtocol >> 55)
    {
      _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v6, v7, v8, __IncompleteProtocol);
    }

    v4 = v5;
    v5->super.isa = (__IncompleteProtocol & 0x7FFFFFFFFFFFF8 | 0x100000000000001);
    LODWORD(v5[8].super.isa) = 96;
    v9 = strlen(name);
    if ((_dyld_is_memory_immutable() & 1) == 0)
    {
      v10 = malloc_type_malloc(v9 + 1, 0x9620E368uLL);
      memcpy(v10, name, v9 + 1);
      name = v10;
    }

    v4[1].super.isa = name;
  }

  v11 = *(StatusReg + 24);
  v12 = v11;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != v11)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v4;
}

void sub_1800C5F94(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_registerProtocol(Protocol *proto)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = (proto->super.isa & 0xFFFFFFFF8);
  if (v6 == Protocol)
  {
    protocol_t::demangledName(proto);
    _objc_inform("objc_registerProtocol: protocol '%s' was already registered!");
  }

  else if (v6 == __IncompleteProtocol)
  {
    objc_object::changeIsa(proto, Protocol, v1, v2);
    if (!getProtocol(proto[1].super.isa))
    {
      v7 = protocols();
      NXMapKeyCopyingInsert(v7, proto[1].super.isa, proto);
    }
  }

  else
  {
    protocol_t::demangledName(proto);
    _objc_inform("objc_registerProtocol: protocol '%s' was not allocated with objc_allocateProtocol!");
  }

  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800C60F0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

int NXStrIsEqual(const void *info, const void *data1, const void *data2)
{
  if (data1 == data2)
  {
    return 1;
  }

  if (!data1)
  {
    v3 = *data2;
    return v3 == 0;
  }

  v3 = *data1;
  if (!data2)
  {
    return v3 == 0;
  }

  return v3 == *data2 && strcmp(data1, data2) == 0;
}

uintptr_t NXStrHash(const void *info, const void *data)
{
  if (!data)
  {
    return 0;
  }

  v2 = *data;
  if (!*data)
  {
    return 0;
  }

  result = 0;
  v4 = data + 4;
  do
  {
    result ^= v2;
    if (!*(v4 - 3))
    {
      break;
    }

    result ^= *(v4 - 3) << 8;
    if (!*(v4 - 2))
    {
      break;
    }

    result ^= *(v4 - 2) << 16;
    if (!*(v4 - 1))
    {
      break;
    }

    result ^= *(v4 - 1) << 24;
    v5 = *v4;
    v4 += 4;
    v2 = v5;
  }

  while (v5);
  return result;
}

NXHashTable *__cdecl NXCreateHashTableFromZone(NXHashTablePrototype *prototype, unsigned int capacity, const void *info, void *zone)
{
  if (prototype->hash)
  {
    hash = prototype->hash;
  }

  v8.hash = prototype->hash;
  if (prototype->isEqual)
  {
    isEqual = prototype->isEqual;
  }

  v8.isEqual = prototype->isEqual;
  if (prototype->free)
  {
    free = prototype->free;
  }

  v8.free = prototype->free;
  v8.style = prototype->style;
  return NXCreateHashTable(&v8, capacity, info);
}

void NXFreeHashTable(NXHashTable *table)
{
  freeBuckets(table, 1);
  free(table->buckets);

  free(table);
}

BOOL NXCompareHashTables(NXHashTable *table1, NXHashTable *table2)
{
  if (table1 == table2)
  {
    LOBYTE(v13) = 1;
  }

  else if (table1->count == table2->count)
  {
    v4 = 0;
    nbBuckets = table1->nbBuckets;
    while (1)
    {
      buckets = table1->buckets;
      if (!v4)
      {
        break;
      }

LABEL_9:
      --v4;
      v10 = &buckets[16 * nbBuckets];
      v12 = *v10;
      v11 = (v10 + 8);
      if (v12 != 1)
      {
        v11 = (*v11 + 8 * v4);
      }

      v13 = NXHashMember(table2, *v11);
      if (!v13)
      {
        return v13;
      }
    }

    v7 = nbBuckets;
    v8 = &buckets[16 * nbBuckets - 16];
    while (v7)
    {
      --v7;
      v9 = *v8;
      v8 -= 16;
      v4 = v9;
      if (v9)
      {
        nbBuckets = v7;
        goto LABEL_9;
      }
    }

    LOBYTE(v13) = 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

int NXHashMember(NXHashTable *table, const void *data)
{
  buckets = table->buckets;
  v5 = &buckets[16 * ((table->prototype->hash)(table->info) % table->nbBuckets)];
  v6 = *v5;
  if (*v5)
  {
    if (v6 == 1)
    {
      if (*(v5 + 1) != data)
      {
        return (table->prototype->isEqual)(table->info, data) != 0;
      }
    }

    else
    {
      for (i = *(v5 + 1); *i != data && !(table->prototype->isEqual)(table->info, data); ++i)
      {
        if (!--v6)
        {
          return v6;
        }
      }
    }

    return 1;
  }

  return v6;
}

int NXNextHashState(NXHashTable *table, NXHashState *state, void **data)
{
  buckets = table->buckets;
  i = state->i;
  j = state->j;
  if (j)
  {
LABEL_6:
    v10 = j - 1;
    state->j = v10;
    v11 = &buckets[16 * i];
    v13 = *v11;
    v12 = (v11 + 8);
    if (v13 != 1)
    {
      v12 = (*v12 + 8 * v10);
    }

    *data = *v12;
    return 1;
  }

  else
  {
    v6 = i;
    v7 = &buckets[16 * i - 16];
    while (v6)
    {
      v8 = v6 - 1;
      v9 = *v7;
      v7 -= 4;
      j = v9;
      state->i = v6 - 1;
      state->j = v9;
      --v6;
      if (v9)
      {
        i = v8;
        goto LABEL_6;
      }
    }

    return 0;
  }
}

NXHashTable *__cdecl NXCopyHashTable(NXHashTable *table)
{
  nbBuckets = table->nbBuckets;
  v3 = malloc_type_malloc(0x20uLL, 0x10E00402E54A04BuLL);
  v4 = v3;
  if (table->prototype)
  {
    prototype = table->prototype;
  }

  v3->prototype = table->prototype;
  v3->info = table->info;
  v6 = table->nbBuckets;
  v4->count = 0;
  v4->nbBuckets = v6;
  v7 = 0;
  v4->buckets = malloc_type_calloc(v6, 0x10uLL, 0x10C20406D26F19BuLL);
  while (1)
  {
    buckets = table->buckets;
    if (!v7)
    {
      break;
    }

LABEL_9:
    --v7;
    v12 = &buckets[16 * nbBuckets];
    v14 = *v12;
    v13 = (v12 + 8);
    if (v14 != 1)
    {
      v13 = (*v13 + 8 * v7);
    }

    NXHashInsert(v4, *v13);
  }

  v9 = nbBuckets;
  v10 = &buckets[16 * nbBuckets - 16];
  while (v9)
  {
    --v9;
    v11 = *v10;
    v10 -= 16;
    v7 = v11;
    if (v11)
    {
      nbBuckets = v9;
      goto LABEL_9;
    }
  }

  return v4;
}

void *__cdecl NXHashInsertIfAbsent(NXHashTable *table, const void *data)
{
  buckets = table->buckets;
  v5 = &buckets[16 * ((table->prototype->hash)(table->info) % table->nbBuckets)];
  v6 = *v5;
  if (*v5 != 1)
  {
    if (!v6)
    {
      *v5 = 1;
      *(v5 + 1) = data;
      ++table->count;
      return data;
    }

    v8 = *(v5 + 1);
    while (1)
    {
      v7 = *v8;
      if (*v8 == data)
      {
        return v7;
      }

      if ((table->prototype->isEqual)(table->info, data))
      {
        return *v8;
      }

      ++v8;
      if (!--v6)
      {
        v9 = malloc_type_calloc((*v5 + 2), 8uLL, 0x80040B8603338uLL);
        v10 = (v9 + 8);
        v11 = *v5;
        if (v11)
        {
          memmove(v9 + 16, *(v5 + 1), 8 * v11);
        }

        *v10 = data;
        free((*(v5 + 1) - 8));
        ++*v5;
        *(v5 + 1) = v10;
        goto LABEL_17;
      }
    }
  }

  v7 = *(v5 + 1);
  if (v7 == data)
  {
    return v7;
  }

  if ((table->prototype->isEqual)(table->info, data))
  {
    return *(v5 + 1);
  }

  v12 = malloc_type_calloc(3uLL, 8uLL, 0x80040B8603338uLL);
  v13 = *(v5 + 1);
  v12[1] = data;
  v12[2] = v13;
  ++*v5;
  *(v5 + 1) = v12 + 1;
LABEL_17:
  nbBuckets = table->nbBuckets;
  v15 = table->count + 1;
  table->count = v15;
  if (v15 > nbBuckets)
  {
    _NXHashRehashToCapacity(table, (2 * nbBuckets) | 1);
  }

  return data;
}

void *__cdecl NXHashRemove(NXHashTable *table, const void *data)
{
  buckets = table->buckets;
  v5 = &buckets[16 * ((table->prototype->hash)(table->info) % table->nbBuckets)];
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  if (v6 == 1)
  {
    v7 = *(v5 + 1);
    if (v7 == data)
    {
      v8 = 0;
      goto LABEL_16;
    }

    if ((table->prototype->isEqual)(table->info, data, *(v5 + 1)))
    {
      v7 = *(v5 + 1);
      v8 = *v5 - 1;
LABEL_16:
      --table->count;
      *v5 = v8;
      *(v5 + 1) = 0;
      return v7;
    }

    return 0;
  }

  v9 = *(v5 + 1);
  if (v6 == 2)
  {
    if (*v9 == data || (table->prototype->isEqual)(table->info, data))
    {
      v10 = v9 + 1;
      v11 = v9;
      goto LABEL_10;
    }

    v11 = (v9 + 1);
    if (v9[1] == data)
    {
      v10 = v9;
      goto LABEL_10;
    }

    v19 = (table->prototype->isEqual)(table->info, data);
    v10 = v9;
    if (v19)
    {
LABEL_10:
      *(v5 + 1) = *v10;
      v7 = *v11;
      free(v9 - 1);
      --table->count;
      --*v5;
      return v7;
    }

    return 0;
  }

  while (1)
  {
    v12 = v6 - 1;
    v7 = *v9;
    if (*v9 == data)
    {
      break;
    }

    if ((table->prototype->isEqual)(table->info, data, *v9))
    {
      v7 = *v9;
      break;
    }

    ++v9;
    --v6;
    if (!v12)
    {
      return 0;
    }
  }

  v13 = *v5;
  if (v13 == 1)
  {
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v14 = malloc_type_calloc(v13, 8uLL, 0x80040B8603338uLL) + 8;
    v15 = *v5;
  }

  v16 = *(v5 + 1);
  v17 = v15 - v6;
  if (v17)
  {
    memmove(v14, v16, 8 * v17);
    v16 = *(v5 + 1);
  }

  if (v6 != 1)
  {
    memmove(&v14[8 * *v5 - 8 + -8 * (v6 - 1)], &v16[8 * *v5 + -8 * (v6 - 1)], 8 * (v6 - 1));
    v16 = *(v5 + 1);
  }

  free(v16 - 8);
  --table->count;
  --*v5;
  *(v5 + 1) = v14;
  return v7;
}

_DWORD *NXCreateMapTableFromZone(uint64_t a1, unsigned int a2)
{
  if (*a1)
  {
    v2 = *a1;
  }

  v6[0] = *a1;
  if (*(a1 + 8))
  {
    v3 = *(a1 + 8);
  }

  v6[1] = *(a1 + 8);
  if (*(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  v6[2] = *(a1 + 16);
  v7 = *(a1 + 24);
  return NXCreateMapTable(v6, a2);
}

void NXFreeMapTable(void *a1)
{
  NXResetMapTable(a1);
  free((a1[2] - 16));

  free(a1);
}

uint64_t NXResetMapTable(uint64_t result)
{
  v1 = result;
  if (*(*result + 16))
  {
    v2 = *(*result + 16);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(result + 12);
  if (v3 != -1)
  {
    v4 = v3 + 1;
    v5 = (*(result + 16) + 8);
    do
    {
      v6 = *(v5 - 1);
      if (v6 != -1)
      {
        result = v2(v1, v6, *v5);
        *(v5 - 1) = -1;
        *v5 = 0;
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t NXCompareMapTables(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 12) + 1;
LABEL_4:
  v5 = v4;
  v6 = (*(a1 + 16) + 16 * v4 - 16);
  while (1)
  {
    v7 = v5 == 0;
    if (!v5)
    {
      return v7;
    }

    --v5;
    v9 = *v6;
    v6 -= 2;
    v8 = v9;
    if (v9 != -1)
    {
      v10 = (**a2)(a2, v8);
      v11 = _NXMapMemberWithHash(a2, v8, v10, &v13);
      v4 = v5;
      if (v11 != -1)
      {
        goto LABEL_4;
      }

      return v7;
    }
  }
}

uint64_t NXNextMapState(uint64_t a1, int *a2, void *a3, void *a4)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = (v4 + 16 * v5 - 16);
  while (v5)
  {
    --v5;
    v8 = *v6;
    v6 -= 2;
    v7 = v8;
    if (v8 != -1)
    {
      *a2 = v5;
      *a3 = v7;
      *a4 = *(v4 + 16 * v5 + 8);
      return 1;
    }
  }

  result = 0;
  *a2 = -1;
  return result;
}

uint64_t NXMapMember(uint64_t (***a1)(void), uint64_t a2, void *a3)
{
  v6 = (**a1)(a1);

  return _NXMapMemberWithHash(a1, a2, v6, a3);
}

uint64_t NXMapGetWithHash(uint64_t a1, uint64_t a2, int a3)
{
  v4 = 0;
  if (_NXMapMemberWithHash(a1, a2, a3, &v4) == -1)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t NXMapRemove(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(a1 + 12) & (**a1)(a1);
  v6 = (v4 + 16 * v5);
  v7 = *v6;
  if (*v6 == -1)
  {
    goto LABEL_18;
  }

  if (v7 == a2 || (*(*a1 + 8))(a1, v7, a2))
  {
    v8 = v6[1];
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(a1 + 12) & (v5 + 1);
  v11 = 1;
  while (v10 != v5)
  {
    v12 = (v4 + 16 * v10);
    v13 = *v12;
    if (*v12 == -1)
    {
      break;
    }

    if (v13 == a2 || (*(*a1 + 8))(a1, v13, a2))
    {
      ++v9;
      v8 = v12[1];
    }

    ++v11;
    v10 = *(a1 + 12) & (v10 + 1);
  }

  if (!v9)
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if (v9 != 1)
  {
    _objc_inform("**** NXMapRemove: incorrect table\n");
  }

  if (v11 < 0x11)
  {
    v24 = &v25;
    if (!v11)
    {
      v16 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v24 = malloc_type_malloc(16 * (v11 - 1), 0xC0040D1025EB5uLL);
  }

  v16 = 0;
  v17 = v11;
  do
  {
    v18 = (v4 + 16 * v5);
    if (*v18 != a2 && !(*(*a1 + 8))(a1, *v18, a2))
    {
      *(v24 + v16++) = *v18;
    }

    *v18 = -1;
    v18[1] = 0;
    v5 = *(a1 + 12) & (v5 + 1);
    --v17;
  }

  while (v17);
LABEL_26:
  *(a1 + 8) -= v11;
  if (v16 == v11 - 1)
  {
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
    _objc_inform("**** NXMapRemove: bug\n");
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  v19 = v16;
  v20 = (v24 + 16 * v16 - 8);
  do
  {
    --v19;
    v21 = *(v20 - 1);
    v22 = *v20;
    v23 = (**a1)(a1, v21);
    NXMapInsertWithHash(a1, v21, v23, v22);
    v20 -= 2;
  }

  while (v19);
LABEL_30:
  if (v11 >= 0x11)
  {
    free(v24);
  }

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL objc_cache_isConstantOptimizedCache(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = *a1;
  result = *a1 & 1;
  if ((v4 & 1) == 0 && (a2 & 1) == 0)
  {
    v6 = HIWORD(*a1);
    return v4 != a3 && v6 == 0;
  }

  return result;
}

uint64_t objc_cache_capacity(void *a1)
{
  if (HIWORD(*a1))
  {
    return HIWORD(*a1) + 1;
  }

  else
  {
    return 0;
  }
}

void object_setIvar(id obj, Ivar ivar, id value)
{
  if (obj >= 1 && ivar)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = 0;
    v7 = 0;
    _class_lookUpIvar(*obj & 0xFFFFFFFF8, ivar, v8, &v7);
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          objc_storeStrong((obj + v8[0]), value);
        }

        return;
      }

LABEL_10:
      *(obj + v8[0]) = value;
      return;
    }

    if (v7 == 3)
    {
      goto LABEL_10;
    }

    if (v7 == 2)
    {
      objc_storeWeak((obj + v8[0]), value);
    }
  }
}

Ivar object_setInstanceVariable(id obj, const char *name, void *value)
{
  Variable = 0;
  if (obj < 1)
  {
    return Variable;
  }

  if (!name)
  {
    return Variable;
  }

  Variable = _class_getVariable((*obj & 0xFFFFFFFF8), name);
  if (!Variable)
  {
    return Variable;
  }

  v8 = 0;
  v7 = 0;
  _class_lookUpIvar(*obj & 0xFFFFFFFF8, Variable, &v8, &v7);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        objc_storeStrong((obj + v8), value);
      }

      return Variable;
    }

LABEL_11:
    *(obj + v8) = value;
    return Variable;
  }

  if (v7 == 3)
  {
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    objc_storeWeak((obj + v8), value);
  }

  return Variable;
}

Ivar class_getClassVariable(Class cls, const char *name)
{
  if (cls && name && (v2 = (*cls & 0xFFFFFFFF8)) != 0)
  {
    return _class_getVariable(v2, name);
  }

  else
  {
    return 0;
  }
}

BOOL class_respondsToMethod(Class cls, SEL sel)
{
  if ((class_respondsToMethod::warned & 1) == 0)
  {
    class_respondsToMethod::warned = 1;
    _objc_inform_deprecated("class_respondsToMethod", sel);
  }

  return class_respondsToSelector_inst(0, sel, cls);
}

IMP class_lookupMethod(Class cls, SEL sel)
{
  if (class_lookupMethod::warned)
  {
    if (sel)
    {
      goto LABEL_3;
    }

LABEL_17:
    __objc_error(cls, sel, v2);
  }

  class_lookupMethod::warned = 1;
  _objc_inform_deprecated("class_lookupMethod", sel);
  if (!sel)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (!cls)
  {
    return 0;
  }

  v5 = *(*(cls + 4) & 0xF00007FFFFFFFF8);
  if ((v5 & 1) == 0)
  {
    v5 = *(*((*cls & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v5 & 0x20000000) != 0 && ((result = cache_getImp(cls, sel, 0)) != 0 || (*(cls + 2) & 1) != 0 && (result = cache_getImp(cls + *((*(cls + 2) & 0x7FFFFFFFFFFFFELL) - 16), sel, 0)) != 0))
  {
    if (result == _objc_msgForward_impcache)
    {
      result = 0;
    }
  }

  else
  {
    result = lookUpImpOrForward(0, sel, cls, 7u);
  }

  if (!result)
  {
    return _objc_msgForward;
  }

  return result;
}

char *copyPropertyAttributeString(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = a2;
    v5 = (a1 + 8);
    v6 = a2;
    do
    {
      if (*v5)
      {
        v7 = strlen(*(v5 - 1));
        if (v7 <= 1)
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 + 2;
        }

        v3 += strlen(*v5) + v8 + 1;
      }

      v5 += 2;
      --v6;
    }

    while (v6);
    v9 = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
    v10 = &v9[v3 + 1];
    v11 = (a1 + 8);
    v18 = v9;
    v12 = v9;
    do
    {
      if (*v11)
      {
        if (strlen(*(v11 - 1)) <= 1)
        {
          v13 = snprintf(v12, v10 - v12, "%s%s,");
        }

        else
        {
          v13 = snprintf(v12, v10 - v12, "%s%s,");
        }

        if (v10 - v12 < v13)
        {
          _objc_fatal("Incorrect buffer calculation for property string. Partial string is %s, calculated length is %zu.", v14, v15, v16, v18, v3);
        }

        v12 += v13;
      }

      v11 += 2;
      --v4;
    }

    while (v4);
    result = v18;
    if (v12 > v18)
    {
      *(v12 - 1) = 0;
    }
  }

  else
  {

    return strdup("");
  }

  return result;
}

void _objc_crashlog(const char *__s1)
{
  v2 = 0;
  v12 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&crashlog_lock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v4 = __crashreporter_info__;
  if (__crashreporter_info__)
  {
    v5 = strlen(__crashreporter_info__);
    if (v5 < 0x1F41)
    {
      asprintf(&v12, "%s\n%s", __crashreporter_info__, __s1);
    }

    else
    {
      v6 = (v5 + __crashreporter_info__ - 8001);
      do
      {
        v7 = *++v6;
      }

      while ((v7 & 0xC0) == 0x80);
      asprintf(&v12, "... %s\n%s", v6, __s1);
    }

    v8 = v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = strdup(__s1);
    v12 = v8;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v9 = &v8[strlen(v8)];
  if (*(v9 - 1) == 10)
  {
    *(v9 - 1) = 0;
  }

  if (v4)
  {
    free(v4);
  }

  __crashreporter_info__ = v12;
LABEL_17:
  v10 = *(StatusReg + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(&crashlog_lock, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(&crashlog_lock);
  }
}

void sub_1800C79A0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(&crashlog_lock);
  }

  _Unwind_Resume(exception_object);
}

void _objc_inform_backtrace(const char *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v1 = backtrace(v8, 128);
  v2 = backtrace_symbols(v8, v1);
  v3 = v2;
  if (v1 >= 2)
  {
    v4 = v1 - 1;
    v5 = (v2 + 1);
    do
    {
      v6 = *v5++;
      _objc_inform("%s%s", "POOL HIGHWATER:     ", v6);
      --v4;
    }

    while (v4);
  }

  free(v3);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t _objc_default_exception_matcher(objc_class *a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v2 = *a2 & 0x7FFFFFFFFFFFF8;
    if (!v2)
    {
      return 0;
    }

    v3 = *a2 & 0x7FFFFFFFFFFFF8;
    goto LABEL_4;
  }

  v6 = (&objc_debug_taggedpointer_classes + 8 * (a2 & 7));
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  v8 = *v6;
  v4 = v7;
  if (v7 == __NSUnrecognizedTaggedPointer)
  {
    v9 = (&objc_debug_taggedpointer_ext_classes + 8 * (a2 >> 55));
    v2 = *v9;
    if (!*v9)
    {
      return 0;
    }

    v10 = *v9;
LABEL_4:
    v4 = v2;
  }

  if (!v4)
  {
    return 0;
  }

  while (v4 != a1)
  {
    if (!*(v4 + 1))
    {
      return 0;
    }

    v4 = *(v4 + 1);
  }

  return 1;
}

objc_exception_preprocessor objc_setExceptionPreprocessor(objc_exception_preprocessor fn)
{
  if (!exception_preprocessor)
  {
    result = 0;
    if (fn)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  result = exception_preprocessor;
  if (!fn)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = fn;
LABEL_6:
  exception_preprocessor = v3;
  return result;
}

objc_exception_matcher objc_setExceptionMatcher(objc_exception_matcher fn)
{
  if (!exception_matcher)
  {
    result = 0;
    if (fn)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  result = exception_matcher;
  if (!fn)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = fn;
LABEL_6:
  exception_matcher = v3;
  return result;
}

objc_uncaught_exception_handler objc_setUncaughtExceptionHandler(objc_uncaught_exception_handler fn)
{
  if (!uncaught_handler)
  {
    result = 0;
    if (fn)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  result = uncaught_handler;
  if (!fn)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = fn;
LABEL_6:
  uncaught_handler = v3;
  return result;
}

id objc_begin_catch(void *exc_buf)
{
  if (PrintExceptions)
  {
    _objc_inform("EXCEPTIONS: handling exception %p at %p", exc_buf, v1);
  }

  return __cxa_begin_catch(exc_buf);
}

void objc_end_catch(void)
{
  if (PrintExceptions)
  {
    _objc_inform("EXCEPTIONS: finishing handler");
  }

  __cxa_end_catch();
}

uint64_t _objc_terminate(void)
{
  if (PrintExceptions)
  {
    _objc_inform("EXCEPTIONS: terminating");
  }

  if (__cxa_current_exception_type())
  {
    __cxa_rethrow();
  }

  v0 = old_terminate;

  return v0();
}

void sub_1800C7F44(void *a1, int a2)
{
  v3 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    v3 = uncaught_handler(v3);
  }

  (old_terminate)(v3);

  objc_end_catch();
}

void performForkChildInitialize(objc_object *a1, objc_class *a2)
{
  if (a1[1].isa)
  {
    isa = a1[1].isa;
    v5 = (a1->isa & 0xFFFFFFFF8);
    if (v5 != a1)
    {
      v6 = lookUpImpOrNilTryCache(*((*v5 & 0xFFFFFFFF8) + 8), "initialize", (**((*v5 & 0xFFFFFFFF8) + 8) & 0xFFFFFFFF8));
      v7 = lookUpImpOrNilTryCache(a1, "initialize", (a1->isa & 0xFFFFFFFF8));
      if (v7)
      {
        if (v7 != objc_noop_imp && v7 != v6)
        {
          if (PrintInitializing)
          {
            v10 = *_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v11 = objc_class::nameForLogging(a1);
            _objc_inform("INITIALIZE: thread %p: refusing to call +[%s initialize] in fork() child process because it may have been in progress when fork() was called", v10, v11);
          }

          v12 = objc_class::nameForLogging(a1);
          _objc_inform_now_and_on_crash("+[%s initialize] may have been in progress in another thread when fork() was called.", v12);
          gdb_objc_class_changed();
          v13 = objc_class::nameForLogging(a1);
          _objc_fatal("+[%s initialize] may have been in progress in another thread when fork() was called. We cannot safely call it or ignore it in the fork() child process. Crashing instead. Set a breakpoint on objc_initializeAfterForkError to debug.", v14, v15, v16, v13);
        }
      }
    }
  }

  if (PrintInitializing)
  {
    v8 = *_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = objc_class::nameForLogging(a1);
    _objc_inform("INITIALIZE: thread %p: skipping trivial +[%s initialize] in fork() child process", v8, v9);
  }

  lockAndFinishInitializing(a1, a2);
}

void objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 4;
  }

  *(a1 + 16) = v8;
  v9 = malloc_type_malloc(16 * v8, 0xAC185C46uLL);
  if (v9)
  {
    *a1 = v9;
    *(a1 + 8) = 0;
    if (v4)
    {
      v11 = v9;
LABEL_13:
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = v13 + 0xFFFFFFFFFFFFFFFLL;
        v16 = v15 & 0xFFFFFFFFFFFFFFFLL;
        v17 = (v15 & 0xFFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
        v18 = vdupq_n_s64(v16);
        v19 = v11 + 16;
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_1800DA160)));
          if (v20.i8[0])
          {
            *(v19 - 2) = 1;
          }

          if (v20.i8[4])
          {
            *v19 = 1;
          }

          v14 += 2;
          v19 += 4;
        }

        while (v17 != v14);
      }

      if (v3)
      {
        v21 = 16 * v3;
        v22 = v4;
        do
        {
          v23 = *v22;
          if ((*v22 - 1) >= 2)
          {
            v33 = 0;
            objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::LookupBucketFor<DisguisedPtr<objc_class>>(a1, v23, &v33);
            v24 = v33;
            *v33 = *v22;
            v24[1] = v22[1];
            ++*(a1 + 8);
          }

          v22 += 2;
          v21 -= 16;
        }

        while (v21);
      }

      free(v4);
      return;
    }

    v12 = v9;
  }

  else
  {
    *&v10 = 0;
    v12 = 0;
    v11 = 0;
    *a1 = v10;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
    v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
    v30 = vdupq_n_s64(v28);
    v31 = v12 + 16;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_1800DA160)));
      if (v32.i8[0])
      {
        *(v31 - 2) = 1;
      }

      if (v32.i8[4])
      {
        *v31 = 1;
      }

      v26 += 2;
      v31 += 4;
    }

    while (v29 != v26);
  }
}

void _objc_addWillInitializeClassFunc(void (*a1)(uint64_t), uint64_t a2, const char *a3, char *a4)
{
  v6 = 0;
  v28 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&classInitLock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  v8 = objc_copyRealizedClassList(&v28, a2, a3, a4);
  v9 = v8;
  v10 = v28;
  if (v28)
  {
    v11 = v8;
    do
    {
      v12 = *v11;
      v13 = *(*(*v11 + 32) & 0xF00007FFFFFFFF8);
      if ((v13 & 1) == 0)
      {
        v13 = *(*((*v12 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
      }

      if ((v13 & 0x10000000) == 0)
      {
        v14 = *(v12[4] & 0xF00007FFFFFFFF8);
        if ((v14 & 1) == 0)
        {
          v14 = *(*((*v12 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
        }

        if ((v14 & 0x20000000) == 0)
        {
          *v11 = 0;
        }
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  LODWORD(v15) = willInitializeFuncs;
  if (willInitializeFuncs == 1)
  {
    v16 = malloc_type_malloc(0x20uLL, 0x80040803F642BuLL);
    v15 = willInitializeFuncs;
    if (willInitializeFuncs)
    {
      v17 = &xmmword_1EA79C330;
      v18 = v16;
      v19 = willInitializeFuncs;
      do
      {
        v20 = *v17++;
        *v18++ = v20;
        --v19;
      }

      while (v19);
      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

    v23 = &v16[v21];
    *v23 = a1;
    v23[1] = a2;
    *&xmmword_1EA79C330 = v16;
  }

  else if (willInitializeFuncs)
  {
    *&xmmword_1EA79C330 = malloc_type_realloc(xmmword_1EA79C330, 16 * (willInitializeFuncs + 1), 0x80040803F642BuLL);
    LODWORD(v15) = willInitializeFuncs;
    v22 = (xmmword_1EA79C330 + 16 * willInitializeFuncs);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    *&xmmword_1EA79C330 = a1;
    *(&xmmword_1EA79C330 + 1) = a2;
  }

  willInitializeFuncs = v15 + 1;
  v24 = *(StatusReg + 24);
  v25 = v24;
  atomic_compare_exchange_strong_explicit(&classInitLock, &v25, 0, memory_order_release, memory_order_relaxed);
  if (v25 != v24)
  {
    os_unfair_lock_unlock(&classInitLock);
  }

  v26 = v28;
  if (v28)
  {
    v27 = 0;
    do
    {
      if (v9[v27])
      {
        a1(a2);
        v26 = v28;
      }

      ++v27;
    }

    while (v27 < v26);
  }

  free(v9);
}

void sub_1800C862C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(&classInitLock);
  }

  _Unwind_Resume(exception_object);
}

void *objc_copyRealizedClassList_nolock(unsigned int *a1, uint64_t a2, const char *a3, char *a4)
{
  v13 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = ___ZL33objc_copyRealizedClassList_nolockPj_block_invoke;
  v12[3] = &__block_descriptor_40_e8_32c49_ZTSKZL33objc_copyRealizedClassList_nolockPjE3__0_e8_B16__0_8l;
  v12[4] = &v13;
  foreach_realized_class(v12, a2, a3, a4);
  if (!v13)
  {
    v5 = 0;
    if (!a1)
    {
      return v5;
    }

    goto LABEL_3;
  }

  v11 = 0;
  v5 = malloc_type_malloc(8 * (v13 + 1), 0x80040B8603338uLL);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = ___ZL33objc_copyRealizedClassList_nolockPj_block_invoke_37;
  v10[3] = &__block_descriptor_48_e8_32c49_ZTSKZL33objc_copyRealizedClassList_nolockPjE3__1_e8_B16__0_8l;
  v10[4] = &v11;
  v10[5] = v5;
  foreach_realized_class(v10, v6, v7, v8);
  v5[v11] = 0;
  if (a1)
  {
LABEL_3:
    *a1 = v13;
  }

  return v5;
}

uint64_t foreach_realized_class(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = *(gdb_objc_realized_classes + 8);
  if (DisablePreopt)
  {
    result = 0;
  }

  else
  {
    result = _dyld_objc_class_count();
  }

  v7 = _firstRealizedClass;
  if (_firstRealizedClass)
  {
    v8 = 16 * (result + v5) + 16;
    while (1)
    {
      if (!--v8)
      {
LABEL_25:
        _objc_fatal("Memory corruption in class list.", a2, a3, a4);
      }

      v9 = v7;
      while ((*(v9 + 30) & 4) == 0)
      {
        result = (*(a1 + 16))(a1, v9);
        if (!result)
        {
          break;
        }

        v10 = (v9 + 32);
        if (!*((*(v9 + 32) & 0xF00007FFFFFFFF8) + 0x10))
        {
          break;
        }

        v11 = 16;
LABEL_21:
        v9 = *((*v10 & 0xF00007FFFFFFFF8) + v11);
        if (!--v8)
        {
          goto LABEL_25;
        }
      }

      while (1)
      {
        v10 = (v9 + 32);
        if (v9 == v7 || *((*(v9 + 32) & 0xF00007FFFFFFFF8) + 0x18))
        {
          break;
        }

        if (*(v9 + 8))
        {
          v9 = *(v9 + 8);
        }

        else
        {
          v9 = 0;
        }

        if (!--v8)
        {
          goto LABEL_25;
        }
      }

      if (v9 != v7)
      {
        break;
      }

      v7 = *((*(v7 + 32) & 0xF00007FFFFFFFF8) + 0x18);
      if (!v7)
      {
        return result;
      }
    }

    v11 = 24;
    goto LABEL_21;
  }

  return result;
}

uint64_t ___ZL33objc_copyRealizedClassList_nolockPj_block_invoke_37(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *v3;
  *v3 = v4 + 1;
  *(v2 + 8 * v4) = a2;
  return 1;
}

__n128 __copy_helper_block_e8_32c49_ZTSKZL33objc_copyRealizedClassList_nolockPjE3__1(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void _objc_setClassCopyFixupHandler(uint64_t a1)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  LODWORD(v4) = classCopyFixupHandlers;
  if (classCopyFixupHandlers == 1)
  {
    v5 = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
    v4 = classCopyFixupHandlers;
    if (classCopyFixupHandlers)
    {
      v6 = &qword_1ED3F6080;
      v7 = v5;
      v8 = classCopyFixupHandlers;
      do
      {
        v9 = *v6++;
        *v7++ = v9;
        --v8;
      }

      while (v8);
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    v5[v10] = a1;
    qword_1ED3F6080 = v5;
  }

  else if (classCopyFixupHandlers)
  {
    qword_1ED3F6080 = malloc_type_realloc(qword_1ED3F6080, 8 * (classCopyFixupHandlers + 1), 0x80040B8603338uLL);
    LODWORD(v4) = classCopyFixupHandlers;
    *(qword_1ED3F6080 + 8 * classCopyFixupHandlers) = a1;
  }

  else
  {
    qword_1ED3F6080 = a1;
  }

  classCopyFixupHandlers = v4 + 1;
  v11 = *(StatusReg + 24);
  v12 = v11;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != v11)
  {

    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800C8B08(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::grow(int a1)
{
  v1 = dword_1ED3F5980;
  if (remappedClasses(BOOL)::remapped_class_map)
  {
    v2 = remappedClasses(BOOL)::remapped_class_map;
  }

  else
  {
    v2 = 0;
  }

  v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if ((v5 + 1) > 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 4;
  }

  dword_1ED3F5980 = v6;
  v7 = malloc_type_malloc(16 * v6, 0xAC185C46uLL);
  if (v7)
  {
    remappedClasses(BOOL)::remapped_class_map = v7;
    if (v2)
    {
      v9 = v7;
LABEL_13:
      if (dword_1ED3F5980)
      {
        v11 = 0;
        v12 = ((dword_1ED3F5980 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((dword_1ED3F5980 - 1) & 1) + 2;
        v13 = vdupq_n_s64((dword_1ED3F5980 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
        v14 = v9 + 16;
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_1800DA160)));
          if (v15.i8[0])
          {
            *(v14 - 2) = 1;
          }

          if (v15.i8[4])
          {
            *v14 = 1;
          }

          v11 += 2;
          v14 += 4;
        }

        while (v12 != v11);
      }

      if (v1)
      {
        v16 = 16 * v1;
        v17 = v2;
        do
        {
          v18 = *v17;
          if ((*v17 - 1) >= 2)
          {
            v25 = 0;
            objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>,DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::LookupBucketFor<DisguisedPtr<objc_class>>(v18, &v25);
            v19 = v25;
            *v25 = *v17;
            v19[1] = v17[1];
            ++DWORD2(remappedClasses(BOOL)::remapped_class_map);
          }

          v17 += 2;
          v16 -= 16;
        }

        while (v16);
      }

      free(v2);
      return;
    }

    v10 = v7;
  }

  else
  {
    *&v8 = 0;
    v10 = 0;
    v9 = 0;
    remappedClasses(BOOL)::remapped_class_map = v8;
    if (v2)
    {
      goto LABEL_13;
    }
  }

  if (dword_1ED3F5980)
  {
    v20 = 0;
    v21 = ((dword_1ED3F5980 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((dword_1ED3F5980 - 1) & 1) + 2;
    v22 = vdupq_n_s64((dword_1ED3F5980 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
    v23 = v10 + 16;
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_1800DA160)));
      if (v24.i8[0])
      {
        *(v23 - 2) = 1;
      }

      if (v24.i8[4])
      {
        *v23 = 1;
      }

      v20 += 2;
      v23 += 4;
    }

    while (v21 != v20);
  }
}