size_t ffi_java_raw_size(ffi_cif *cif)
{
  nargs = cif->nargs;
  if ((nargs - 1) >= 0)
  {
    result = 0;
    for (i = cif->arg_types; ; ++i)
    {
      type = (*i)->type;
      if (type <= 0xA)
      {
        v6 = 16;
        if (type != 3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v6 = 16;
        if (type - 11 >= 2)
        {
          if (type == 15 || type == 13)
          {
            abort();
          }

LABEL_9:
          v6 = 8;
        }
      }

      result += v6;
      if (--nargs <= 0)
      {
        return result;
      }
    }
  }

  return 0;
}

void ffi_java_raw_to_ptrarray(ffi_cif *cif, ffi_java_raw *raw, void **args)
{
  nargs = cif->nargs;
  if (nargs)
  {
    arg_types = cif->arg_types;
    do
    {
      type = (*arg_types)->type;
      if ((type - 11) < 2 || type == 3)
      {
        *args = raw;
        raw += 2;
      }

      else
      {
        if (type == 15)
        {
          abort();
        }

        *args = raw++;
      }

      ++arg_types;
      ++args;
      --nargs;
    }

    while (nargs);
  }
}

void ffi_java_ptrarray_to_raw(ffi_cif *cif, void **args, ffi_java_raw *raw)
{
  if (cif->nargs)
  {
    v3 = 0;
    arg_types = cif->arg_types;
    do
    {
      type = arg_types[v3]->type;
      if (type > 8)
      {
        if (arg_types[v3]->type <= 0xAu)
        {
          if (type == 9)
          {
            v6 = *args[v3];
            goto LABEL_25;
          }

          if (type == 10)
          {
            v6 = *args[v3];
            goto LABEL_25;
          }
        }

        else
        {
          if (type - 11 < 2)
          {
            goto LABEL_11;
          }

          if (type == 14)
          {
            v6 = *args[v3];
            goto LABEL_25;
          }
        }
      }

      else if (arg_types[v3]->type > 5u)
      {
        switch(type)
        {
          case 6u:
            v6 = *args[v3];
            goto LABEL_25;
          case 7u:
            v6 = *args[v3];
            goto LABEL_25;
          case 8u:
            v6 = *args[v3];
            goto LABEL_25;
        }
      }

      else
      {
        switch(type)
        {
          case 2u:
            raw->flt = *args[v3];
            ++raw;
            break;
          case 3u:
LABEL_11:
            raw->sint = *args[v3];
            raw += 2;
            break;
          case 5u:
            v6 = *args[v3];
LABEL_25:
            raw->sint = v6;
            ++raw;
            break;
        }
      }

      ++v3;
    }

    while (v3 < cif->nargs);
  }
}

void ffi_java_raw_call(ffi_cif *cif, void (*fn)(void), void *rvalue, ffi_java_raw *avalue)
{
  v12[1] = *MEMORY[0x29EDCA608];
  nargs = cif->nargs;
  MEMORY[0x2A1C7C4A8]();
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFF0);
  bzero(v10, v9);
  ffi_java_raw_to_ptrarray(cif, avalue, v10);
  ffi_call(cif, fn, rvalue, v10);
  v11 = *MEMORY[0x29EDCA608];
}

ffi_status ffi_prep_java_raw_closure_loc(ffi_java_raw_closure *a1, ffi_cif *cif, void (__cdecl *fun)(ffi_cif *, void *, ffi_java_raw *, void *), void *user_data, void *codeloc)
{
  result = ffi_prep_closure_loc(a1, cif, ffi_java_translate_args, codeloc, codeloc);
  if (result == FFI_OK)
  {
    a1->fun = fun;
    a1->user_data = user_data;
  }

  return result;
}

uint64_t ffi_java_translate_args(ffi_cif *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x29EDCA608];
  ffi_java_raw_size(a1);
  v8 = (v12 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, v9);
  ffi_java_ptrarray_to_raw(a1, a3, v8);
  result = (*(a4 + 40))(a1, a2, v8, *(a4 + 48));
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

ffi_status ffi_prep_java_raw_closure(ffi_java_raw_closure *a1, ffi_cif *cif, void (__cdecl *fun)(ffi_cif *, void *, ffi_java_raw *, void *), void *user_data)
{
  result = ffi_prep_closure_loc(a1, cif, ffi_java_translate_args, a1, a1);
  if (result == FFI_OK)
  {
    a1->fun = fun;
    a1->user_data = user_data;
  }

  return result;
}

size_t ffi_raw_size(ffi_cif *cif)
{
  nargs = cif->nargs;
  if (nargs - 1 < 0)
  {
    return 0;
  }

  result = 0;
  arg_types = cif->arg_types;
  do
  {
    if ((*arg_types)->type == 13)
    {
      result += 8;
    }

    else
    {
      result += (((*arg_types)->size - 1) | 7) + 1;
    }

    ++arg_types;
    --nargs;
  }

  while (nargs > 0);
  return result;
}

void ffi_raw_to_ptrarray(ffi_cif *cif, ffi_raw *raw, void **args)
{
  nargs = cif->nargs;
  if (nargs)
  {
    arg_types = cif->arg_types;
    do
    {
      type = (*arg_types)->type;
      if (type == 15 || type == 13)
      {
        sint = raw->sint;
        ++raw;
        *args = sint;
      }

      else
      {
        *args = raw;
        raw = (raw + (((*arg_types)->size - 1) | 7) + 1);
      }

      ++arg_types;
      ++args;
      --nargs;
    }

    while (nargs);
  }
}

void ffi_ptrarray_to_raw(ffi_cif *cif, void **args, ffi_raw *raw)
{
  if (cif->nargs)
  {
    v6 = 0;
    arg_types = cif->arg_types;
    while (1)
    {
      v8 = arg_types[v6];
      type = v8->type;
      v10 = args[v6];
      if (type <= 8)
      {
        break;
      }

      if (v8->type <= 0xCu)
      {
        if (type == 9)
        {
          v11 = *v10;
        }

        else
        {
          if (type != 10)
          {
LABEL_26:
            memcpy(raw, v10, v8->size);
            raw = (raw + ((arg_types[v6]->size - 1) | 7) + 1);
            goto LABEL_24;
          }

          v11 = *v10;
        }

        goto LABEL_23;
      }

      if (type != 13)
      {
        if (type == 14)
        {
          v11 = *v10;
LABEL_23:
          raw->sint = v11;
          ++raw;
          goto LABEL_24;
        }

        if (type != 15)
        {
          goto LABEL_26;
        }
      }

      raw->sint = v10;
      ++raw;
LABEL_24:
      if (++v6 >= cif->nargs)
      {
        return;
      }
    }

    if (v8->type > 6u)
    {
      if (type == 7)
      {
        v11 = *v10;
      }

      else
      {
        if (type != 8)
        {
          goto LABEL_26;
        }

        v11 = *v10;
      }
    }

    else if (type == 5)
    {
      v11 = *v10;
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_26;
      }

      v11 = *v10;
    }

    goto LABEL_23;
  }
}

void ffi_raw_call(ffi_cif *cif, void (*fn)(void), void *rvalue, ffi_raw *avalue)
{
  v12[1] = *MEMORY[0x29EDCA608];
  nargs = cif->nargs;
  MEMORY[0x2A1C7C4A8]();
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFF0);
  bzero(v10, v9);
  ffi_raw_to_ptrarray(cif, avalue, v10);
  ffi_call(cif, fn, rvalue, v10);
  v11 = *MEMORY[0x29EDCA608];
}

ffi_status ffi_prep_raw_closure_loc(ffi_raw_closure *a1, ffi_cif *cif, void (__cdecl *fun)(ffi_cif *, void *, ffi_raw *, void *), void *user_data, void *codeloc)
{
  result = ffi_prep_closure_loc(a1, cif, ffi_translate_args, codeloc, codeloc);
  if (result == FFI_OK)
  {
    a1->fun = fun;
    a1->user_data = user_data;
  }

  return result;
}

uint64_t ffi_translate_args(ffi_cif *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x29EDCA608];
  ffi_raw_size(a1);
  v8 = (v12 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, v9);
  ffi_ptrarray_to_raw(a1, a3, v8);
  result = (*(a4 + 40))(a1, a2, v8, *(a4 + 48));
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

ffi_status ffi_prep_raw_closure(ffi_raw_closure *a1, ffi_cif *cif, void (__cdecl *fun)(ffi_cif *, void *, ffi_raw *, void *), void *user_data)
{
  result = ffi_prep_closure_loc(a1, cif, ffi_translate_args, a1, a1);
  if (result == FFI_OK)
  {
    a1->fun = fun;
    a1->user_data = user_data;
  }

  return result;
}

uint64_t ffi_prep_cif_core(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t **a7)
{
  if ((a2 - 1) > 1)
  {
    return 2;
  }

  v7 = a7;
  *a1 = a2;
  *(a1 + 4) = a5;
  *(a1 + 8) = a7;
  *(a1 + 16) = a6;
  *(a1 + 28) = 0;
  if (*a6)
  {
    v11 = a5;
  }

  else
  {
    if (initialize_aggregate(a6, 0))
    {
      return 1;
    }

    v7 = *(a1 + 8);
    a6 = *(a1 + 16);
    v11 = *(a1 + 4);
  }

  for (i = 8 * (*(a6 + 10) == 13); v11; --v11)
  {
    v13 = *v7;
    v14 = **v7;
    if (!v14)
    {
      if (initialize_aggregate(v13, 0))
      {
        return 1;
      }

      v13 = *v7;
      v14 = **v7;
    }

    v15 = *(v13 + 4) - 1;
    if ((v15 & i) != 0)
    {
      v16 = (v15 | (i - 1)) + 1;
    }

    else
    {
      v16 = i;
    }

    i = ((v14 - 1) | 7) + v16 + 1;
    ++v7;
  }

  *(a1 + 24) = i;
  if (a3)
  {

    return ffi_prep_cif_machdep_var(a1, a4);
  }

  else
  {

    return ffi_prep_cif_machdep(a1);
  }
}

ffi_status ffi_prep_cif_var(ffi_cif *cif, ffi_abi abi, unsigned int nfixedargs, unsigned int ntotalargs, ffi_type *rtype, ffi_type **atypes)
{
  result = ffi_prep_cif_core(cif, abi, 1, nfixedargs, ntotalargs, rtype, atypes);
  if (result == FFI_OK)
  {
    if (ntotalargs < 2)
    {
      return 0;
    }

    else
    {
      v9 = atypes + 1;
      v10 = ntotalargs - 1;
      while (1)
      {
        v11 = *v9;
        if (*v9 == &ffi_type_float || (v11->type | 2) != 0xF && v11->size < 4)
        {
          break;
        }

        ++v9;
        if (!--v10)
        {
          return 0;
        }
      }

      return 3;
    }
  }

  return result;
}

ffi_status ffi_get_struct_offsets(ffi_abi abi, ffi_type *struct_type, size_t *offsets)
{
  if (abi - 1 > 1)
  {
    return 2;
  }

  if (struct_type->type == 13)
  {
    return initialize_aggregate(struct_type, offsets);
  }

  return 1;
}

uint64_t ffi_call_SYSV(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void, void, void, void, void), uint64_t a4, uint64_t a5)
{
  *a2 = v5;
  a2[1] = v6;
  a2[4] = v16;
  a2[2] = a4;
  a2[3] = a5;
  v8 = a3(v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], v16[22], v16[23]);
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v14 = a2;
  v12 = *a2;
  v13 = v14[1];
  return ((sub_298790080 + 8 * (v10 & 0x1F)))(v8);
}

void ffi_closure_SYSV(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v11 = sub_298790200 + 8 * (ffi_closure_SYSV_inner(*(v10 + 16), *(v10 + 24), *(v10 + 32), v12, &a10, v21, a9) & 0x1F);
  __asm { BR              X1 }
}

void *__cdecl ffi_closure_alloc(size_t size, void **code)
{
  v3 = malloc_type_malloc(size, 0xDA99BF59uLL);
  if (v3)
  {
    pthread_mutex_lock(&ffi_trampoline_lock);
    v4 = ffi_trampoline_tables;
    if (ffi_trampoline_tables)
    {
      v5 = *(ffi_trampoline_tables + 16);
      if (v5)
      {
        LOWORD(v6) = *(ffi_trampoline_tables + 8);
LABEL_5:
        v4[2] = *(v5 + 1);
        *(v4 + 4) = v6 - 1;
        *(v5 + 1) = 0;
        pthread_mutex_unlock(&ffi_trampoline_lock);
        *code = *v5;
        *v3 = v4;
        v3[1] = v5;
        return v3;
      }
    }

    *cur_protection = 0;
    address = 0;
    v7 = MEMORY[0x29EDCA6B0];
    if (!vm_allocate(*MEMORY[0x29EDCA6B0], &address, 0xC000uLL, 1))
    {
      if (ffi_trampoline_table_alloc_trampoline_template_init_once != -1)
      {
        ffi_closure_alloc_cold_1();
      }

      target_address = address + 0x4000;
      if (!vm_remap(*v7, &target_address, 0x8000uLL, 0, 0x4000, *v7, ffi_trampoline_table_alloc_trampoline_table_page - 0x4000, 0, &cur_protection[1], cur_protection, 0) && (cur_protection[1] & 4) != 0)
      {
        v9 = target_address;
        v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x102004042DA13E7uLL);
        *(v4 + 4) = 1024;
        *v4 = address;
        v10 = malloc_type_calloc(0x400uLL, 0x10uLL, 0xA0040BD48D6D6uLL);
        v5 = v10;
        v4[3] = v10;
        v6 = *(v4 + 4);
        if (*(v4 + 4))
        {
          v11 = 0;
          v12 = v9 + 0x4000;
          v13 = v10 + 16;
          do
          {
            *(v13 - 2) = v12;
            if (v11 < (v6 - 1))
            {
              *(v13 - 1) = v13;
            }

            ++v11;
            v12 += 16;
            v13 += 16;
          }

          while (v6 != v11);
        }

        v4[2] = v10;
        v14 = ffi_trampoline_tables;
        v4[5] = ffi_trampoline_tables;
        if (v14)
        {
          *(v14 + 32) = v4;
        }

        ffi_trampoline_tables = v4;
        goto LABEL_5;
      }

      MEMORY[0x29C292E70](*v7, address, 49152);
    }

    pthread_mutex_unlock(&ffi_trampoline_lock);
    free(v3);
    return 0;
  }

  return v3;
}

void ffi_closure_free(void *a1)
{
  pthread_mutex_lock(&ffi_trampoline_lock);
  v3 = *a1;
  v2 = *(a1 + 1);
  *(v2 + 8) = *(*a1 + 16);
  v3[2] = v2;
  v4 = (*(v3 + 4))++ + 1;
  v5 = ffi_trampoline_tables;
  if (v4 != 1024 || ffi_trampoline_tables == v3)
  {
    if (ffi_trampoline_tables != v3)
    {
      v3[4] = 0;
      v3[5] = v5;
      if (v5)
      {
        *(v5 + 32) = v3;
      }

      ffi_trampoline_tables = v3;
    }
  }

  else
  {
    v7 = v3[4];
    v8 = v3[5];
    if (v7)
    {
      *(v7 + 40) = v8;
    }

    if (v8)
    {
      *(v8 + 32) = v7;
    }

    MEMORY[0x29C292E70](*MEMORY[0x29EDCA6B0], *v3, 0x8000);
    free(v3[3]);
    free(v3);
  }

  pthread_mutex_unlock(&ffi_trampoline_lock);

  free(a1);
}

void *__ffi_trampoline_table_alloc_block_invoke()
{
  v0 = dlopen("/usr/lib/libffi-trampolines.dylib", 262);
  if (!v0)
  {
    __ffi_trampoline_table_alloc_block_invoke_cold_2();
  }

  result = dlsym(v0, "ffi_closure_trampoline_table_page");
  ffi_trampoline_table_alloc_trampoline_table_page = result;
  if (!result)
  {
    __ffi_trampoline_table_alloc_block_invoke_cold_1();
  }

  return result;
}

uint64_t ffi_prep_cif_machdep(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 10);
  v4 = *(a1 + 24);
  switch(*(v1 + 10))
  {
    case 0:
      break;
    case 1:
    case 0xA:
      v2 = 30;
      break;
    case 2:
    case 3:
    case 4:
    case 0xD:
    case 0xF:
      v2 = is_vfp_type(*(a1 + 16));
      if (!v2)
      {
        v5 = *v1;
        if (*v1 == 8)
        {
          v6 = 1;
        }

        else
        {
          v6 = 66;
        }

        if (v5 == 16)
        {
          v7 = 2;
        }

        else
        {
          v7 = v6;
        }

        if (v5 >= 0x11)
        {
          v2 = 32;
        }

        else
        {
          v2 = v7;
        }

        if (v5 >= 0x11)
        {
          v4 += 8;
        }
      }

      break;
    case 5:
      v2 = 20;
      break;
    case 6:
      v2 = 26;
      break;
    case 7:
      v2 = 22;
      break;
    case 8:
      v2 = 28;
      break;
    case 9:
      v2 = 24;
      break;
    case 0xB:
    case 0xC:
    case 0xE:
      v2 = 1;
      break;
    default:
      abort();
  }

  v8 = *(a1 + 4);
  if (v8 >= 1)
  {
    v9 = *(a1 + 8);
    while (!is_vfp_type(*v9))
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_27;
      }
    }

    v2 |= 0x80u;
  }

LABEL_27:
  *(a1 + 24) = ((v4 - 1) | 0xF) + 1;
  *(a1 + 28) = v2;
  *(a1 + 32) = 0;
  return 0;
}

uint64_t is_vfp_type(unint64_t *a1)
{
  v1 = *(a1 + 5);
  if ((v1 - 2) < 3)
  {
    LODWORD(v2) = 1;
    return (4 * v1 - v2 + 4);
  }

  if (v1 == 13)
  {
    v4 = *a1;
    if (*a1 - 65 >= 0xFFFFFFFFFFFFFFC3)
    {
      v5 = a1[2];
      v6 = *v5;
      v1 = *(*v5 + 10);
      if ((v1 & 0xFFFFFFFD) == 0xD)
      {
        v7 = a1[2];
        do
        {
          v8 = *v7++;
          v9 = is_hfa0(v8);
        }

        while (v9 < 0);
        v1 = v9;
      }

      if (v1 == 4 || v1 == 3)
      {
        if ((v4 & 7) != 0)
        {
          return 0;
        }

        v2 = v4 >> 3;
      }

      else
      {
        if (v1 != 2 || (v4 & 3) != 0)
        {
          return 0;
        }

        v2 = v4 >> 2;
      }

      if (v2 <= 4)
      {
        if (v6)
        {
          v10 = v5 + 1;
          do
          {
            v11 = *(v6 + 10);
            if ((v11 & 0xFFFFFFFD) == 0xD)
            {
              result = is_hfa1(v6, v1);
              if (!result)
              {
                return result;
              }
            }

            else if (v1 != v11)
            {
              return 0;
            }

            v12 = *v10++;
            v6 = v12;
          }

          while (v12);
        }

        return (4 * v1 - v2 + 4);
      }
    }
  }

  else if (v1 == 15)
  {
    v1 = *(*a1[2] + 10);
    if ((v1 - 2) < 3)
    {
      LODWORD(v2) = 2;
      return (4 * v1 - v2 + 4);
    }
  }

  return 0;
}

uint64_t ffi_prep_cif_machdep_var(uint64_t a1, int a2)
{
  ffi_prep_cif_machdep(a1);
  *(a1 + 32) = a2;
  return 0;
}

uint64_t ffi_call_int(uint64_t a1, uint64_t (*a2)(void, void, void, void, void, void, void, void), void *a3, int **a4)
{
  v50 = a2;
  v56 = *MEMORY[0x29EDCA608];
  v7 = **(a1 + 16);
  v9 = *(a1 + 24);
  v8 = *(a1 + 28);
  v10 = v8 & 0xFFFFFEFF;
  v11 = (v8 >> 2) & 0x10;
  v12 = *(a1 + 28) & 0x80;
  if (a3)
  {
    v12 = v8 & 0xFFFFFEFF;
  }

  else
  {
    v11 = 0;
  }

  v45 = **(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  v52 = v8;
  if ((v8 & 0x20) != 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = v11;
  }

  if ((v8 & 0x20) == 0)
  {
    v10 = v12;
  }

  v49 = v10;
  MEMORY[0x2A1C7C4A8]();
  v15 = &v45 - v14;
  bzero(&v45 - v14, v16 + 232);
  v51 = v15;
  v54 = v15 + 192;
  v46 = a3;
  v47 = &v15[v9 + 192];
  v17 = v47 + 40;
  if (!v13)
  {
    v17 = a3;
  }

  v48 = v17;
  v18 = *(a1 + 4);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v55 = 0;
    v22 = 0;
    v53 = v51 + 128;
    while (1)
    {
      v23 = *(a1 + 8);
      v24 = *(v23 + 8 * v19);
      v25 = *v24;
      v26 = *a4;
      switch(*(v24 + 10))
      {
        case 0:
          goto LABEL_41;
        case 1:
        case 0xA:
          v29 = *v26;
          goto LABEL_32;
        case 2:
        case 3:
        case 4:
        case 0xD:
        case 0xF:
          v27 = is_vfp_type(*(v23 + 8 * v19));
          if (v27)
          {
            v28 = 4 - (v27 & 3);
            if ((v52 & 0x100) != 0 && *a1 == 2)
            {
              if (v28 + v20 <= 8)
              {
                __asm { BR              X11 }
              }

              v30 = *(v24 + 8);
              v22 = 8;
              if (v30 <= 8)
              {
                v31 = 8;
              }

              else
              {
                v31 = *(v24 + 8);
              }

LABEL_37:
              if (v21)
              {
                v30 = v31;
              }

              v32 = ((v30 - 1) | (v55 - 1)) + 1;
              v55 = v32 + v25;
              v33 = &v54[v32];
              goto LABEL_40;
            }

            if ((v28 + v22) <= 8)
            {
              __asm { BR              X11 }
            }

            v35 = *(v24 + 8);
            v22 = 8;
            if (v35 <= 8)
            {
              v36 = 8;
            }

            else
            {
              v36 = *(v24 + 8);
            }

            if (v21)
            {
              v35 = v36;
            }

            v37 = ((v35 - 1) | (v55 - 1)) + 1;
            v55 = v37 + v25;
            v33 = &v54[v37];
          }

          else
          {
            if (v25 > 0x10)
            {
              v26 = a4;
              v25 = 8;
LABEL_24:
              v29 = *v26;
LABEL_32:
              if (v20 <= 7)
              {
                *&v53[8 * v20++] = v29;
                goto LABEL_41;
              }

              v30 = *(v24 + 8);
              v20 = 8;
              if (v30 <= 8)
              {
                v31 = 8;
              }

              else
              {
                v31 = *(v24 + 8);
              }

              goto LABEL_37;
            }

            v34 = (v25 + 7) >> 3;
            if (v34 + v20 > 8)
            {
              v38 = *(v24 + 8);
              v20 = 8;
              if (v38 <= 8)
              {
                v39 = 8;
              }

              else
              {
                v39 = *(v24 + 8);
              }

              if (v21)
              {
                v38 = v39;
              }

              v40 = ((v38 - 1) | (v55 - 1)) + 1;
              v55 = v40 + v25;
              v33 = &v54[v40];
            }

            else
            {
              v33 = &v53[8 * v20];
              v20 += v34;
            }
          }

LABEL_40:
          memcpy(v33, v26, v25);
LABEL_41:
          if (++v19 == *(a1 + 32))
          {
            v22 = 8;
            v21 = 1;
            v20 = 8;
          }

          ++a4;
          if (v18 == v19)
          {
            goto LABEL_62;
          }

          break;
        case 5:
          v29 = *v26;
          goto LABEL_32;
        case 6:
          v29 = *v26;
          goto LABEL_32;
        case 7:
          v29 = *v26;
          goto LABEL_32;
        case 8:
          v29 = *v26;
          goto LABEL_32;
        case 9:
          v29 = *v26;
          goto LABEL_32;
        case 0xB:
        case 0xC:
        case 0xE:
          goto LABEL_24;
        default:
          abort();
      }
    }
  }

LABEL_62:
  v41 = v48;
  v42 = v49;
  result = ffi_call_SYSV(v51, v47, v50, v48, v49);
  if ((v42 & 0x40) != 0)
  {
    result = memcpy(v46, v41, v45);
  }

  v44 = *MEMORY[0x29EDCA608];
  return result;
}

ffi_status ffi_prep_closure_loc(ffi_closure *a1, ffi_cif *a2, void (__cdecl *fun)(ffi_cif *, void *, void **, void *), void *user_data, void *codeloc)
{
  if (a2->abi - 1 > 1)
  {
    return 2;
  }

  result = FFI_OK;
  v7 = ffi_closure_SYSV_V;
  if ((a2->flags & 0x80) == 0)
  {
    v7 = ffi_closure_SYSV;
  }

  *(codeloc - 4096) = a1;
  *(codeloc - 4095) = v7;
  a1->cif = a2;
  a1->fun = fun;
  a1->user_data = user_data;
  return result;
}

uint64_t ffi_closure_SYSV_inner(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v56 = a7;
  v58 = a2;
  v59 = a4;
  v57 = a3;
  v64 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 4);
  MEMORY[0x2A1C7C4A8]();
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFF0);
  bzero(v11, v10);
  v12 = v11;
  v60 = *(a1 + 28);
  if (v9 >= 1)
  {
    v13 = a5;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v54 = v13 + 1;
    v62 = v9;
    v63 = v59 + 128;
    v61 = v12;
    while (1)
    {
      v19 = *(*(a1 + 8) + 8 * v14);
      v20 = *(v19 + 10);
      if (v20 > 0xF)
      {
        abort();
      }

      v21 = *v19;
      v22 = 1 << v20;
      if ((v22 & 0x5FE2) != 0)
      {
        if (v21 <= 8)
        {
          v23 = 8;
        }

        else
        {
          v23 = *v19;
        }

        if (!v16)
        {
          v23 = *v19;
        }

        v24 = ((v23 - 1) | (v17 - 1)) + 1;
        v25 = v24 + v21;
        v26 = v13 + v24;
        v27 = v63 + 8 * v15;
        v28 = v15 > 7;
        if (v15 <= 7)
        {
          ++v15;
        }

        else
        {
          v17 = v25;
          v15 = 8;
        }

        if (!v28)
        {
          v26 = v27;
        }

        *&v12[8 * v14] = v26;
        goto LABEL_48;
      }

      if ((v22 & 0xA01C) != 0)
      {
        break;
      }

LABEL_48:
      if (++v14 == *(a1 + 32))
      {
        v18 = 8;
        v16 = 1;
        v15 = 8;
      }

      if (v9 == v14)
      {
        goto LABEL_58;
      }
    }

    v29 = v13;
    v30 = is_vfp_type(*(*(a1 + 8) + 8 * v14));
    if (!v30)
    {
      v13 = v29;
      if (v21 < 0x11)
      {
        v12 = v61;
        v9 = v62;
        if (v15 + ((v21 + 7) >> 3) > 8)
        {
          v46 = *(v19 + 8);
          v15 = 8;
          if (v46 <= 8)
          {
            v47 = 8;
          }

          else
          {
            v47 = *(v19 + 8);
          }

          if (v16)
          {
            v46 = v47;
          }

          v48 = ((v46 - 1) | (v17 - 1)) + 1;
          v17 = v48 + v21;
          *&v61[8 * v14] = v13 + v48;
        }

        else
        {
          *&v61[8 * v14] = v63 + 8 * v15;
          v15 += (v21 + 7) >> 3;
        }

        goto LABEL_48;
      }

      v34 = (v63 + 8 * v15);
      v35 = (v17 - 1) | 7;
      v36 = v35 + 9;
      v37 = (v54 + v35);
      v38 = v15 >= 8;
      if (v15 < 8)
      {
        ++v15;
      }

      else
      {
        v17 = v36;
        v15 = 8;
      }

      if (v38)
      {
        v34 = v37;
      }

      v12 = v61;
      *&v61[8 * v14] = *v34;
      goto LABEL_47;
    }

    v31 = v30;
    v32 = 4 - (v30 & 3u);
    if ((v60 & 0x100) != 0 && *a1 == 2)
    {
      if (v32 + v15 > 8)
      {
        v43 = *(v19 + 8);
        v18 = 8;
        if (v43 <= 8)
        {
          v44 = 8;
        }

        else
        {
          v44 = *(v19 + 8);
        }

        if (v16)
        {
          v43 = v44;
        }

        v45 = ((v43 - 1) | (v17 - 1)) + 1;
        v17 = v45 + v21;
        v13 = v29;
        v12 = v61;
        *&v61[8 * v14] = v29 + v45;
        v15 = 8;
        goto LABEL_47;
      }

      v33 = (v63 + 8 * v15);
      v15 += v32;
    }

    else
    {
      if (v32 + v18 > 8)
      {
        v40 = *(v19 + 8);
        v18 = 8;
        if (v40 <= 8)
        {
          v41 = 8;
        }

        else
        {
          v41 = *(v19 + 8);
        }

        if (v16)
        {
          v40 = v41;
        }

        v42 = ((v40 - 1) | (v17 - 1)) + 1;
        v17 = v42 + v21;
        v13 = v29;
        v12 = v61;
        *&v61[8 * v14] = v29 + v42;
        goto LABEL_47;
      }

      v33 = (v59 + 16 * v18);
      v18 += v32;
    }

    v39 = compress_hfa_type(v33, v33, v31);
    v12 = v61;
    *&v61[8 * v14] = v39;
    v13 = v29;
LABEL_47:
    v9 = v62;
    goto LABEL_48;
  }

LABEL_58:
  v49 = v60;
  if ((v60 & 0x20) != 0)
  {
    v50 = v56;
  }

  else
  {
    v50 = v55;
  }

  v58(a1, v50, v12, v57);
  v51 = *MEMORY[0x29EDCA608];
  return v49 & 0xFFFFFEFF;
}

__int128 *compress_hfa_type(__int128 *result, __int128 *a2, int a3)
{
  if (a3 > 11)
  {
    if (a3 > 13)
    {
      if (a3 == 14)
      {
        v13 = *a2;
        v14 = a2[1];
        *result = *a2;
        *(result + 1) = v14;
        return result;
      }

      if (a3 != 15)
      {
        goto LABEL_20;
      }

      if (result != a2)
      {
        *result = *a2;
      }
    }

    else
    {
      v5 = *a2;
      v6 = a2[1];
      v7 = a2[2];
      if (a3 == 12)
      {
        v11 = a2[3];
        *result = *a2;
        *(result + 1) = v6;
        *(result + 2) = v7;
        *(result + 3) = v11;
      }

      else
      {
        *result = *a2;
        *(result + 1) = v6;
        *(result + 2) = v7;
      }
    }
  }

  else
  {
    if (a3 <= 9)
    {
      if (a3 == 8)
      {
        v8 = a2[1];
        v9 = a2[2];
        v10 = a2[3];
        *result = *a2;
        *(result + 1) = v8;
        *(result + 2) = v9;
        *(result + 3) = v10;
        return result;
      }

      if (a3 == 9)
      {
        v3 = a2[1];
        v4 = a2[2];
        *result = *a2;
        *(result + 1) = v3;
        *(result + 2) = v4;
        return result;
      }

LABEL_20:
      if (result != a2)
      {
        return memcpy(result, a2, 64 - 16 * (a3 & 3u));
      }

      return result;
    }

    if (a3 == 10)
    {
      v12 = a2[1];
      *result = *a2;
      *(result + 1) = v12;
    }

    else if (result != a2)
    {
      *result = *a2;
    }
  }

  return result;
}

uint64_t is_hfa0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *v1;
  if (!*v1)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = v1 + 1; ; ++i)
  {
    result = *(v2 + 10);
    if ((result & 0xFFFFFFFD) != 0xD)
    {
      break;
    }

    result = is_hfa0(v2);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    v5 = *i;
    v2 = v5;
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t is_hfa1(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 1;
  }

  for (i = v2 + 1; ; ++i)
  {
    v6 = *(v3 + 10);
    if ((v6 & 0xFFFFFFFD) == 0xD)
    {
      result = is_hfa1();
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (v6 != a2)
    {
      break;
    }

LABEL_8:
    v8 = *i;
    v3 = v8;
    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

BOOL initialize_aggregate(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *v3;
  if (*v3)
  {
    v6 = 0;
    v7 = v3 + 1;
    do
    {
      if (!*v4)
      {
        if (initialize_aggregate())
        {
          return 1;
        }

        v6 = *a1;
        v4 = *(v7 - 1);
      }

      v8 = *(v4 + 8);
      v9 = ((v8 - 1) | (v6 - 1)) + 1;
      *a1 = v9;
      if (a2)
      {
        *a2++ = v9;
        v9 = *a1;
      }

      v6 = v9 + *v4;
      *a1 = v6;
      if (*(a1 + 8) <= v8)
      {
        v8 = v8;
      }

      else
      {
        v8 = *(a1 + 8);
      }

      *(a1 + 8) = v8;
      v10 = *v7++;
      v4 = v10;
    }

    while (v10);
    v11 = ((v8 - 1) | (v6 - 1)) + 1;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  return v11 == 0;
}