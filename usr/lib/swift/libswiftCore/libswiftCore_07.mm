unint64_t tuple_initializeBufferWithCopyOfBuffer<false,false>(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v5;
  return *a1 + ((*(*(a3 - 8) + 80) + 16) & ~*(*(a3 - 8) + 80));
}

uint64_t tuple_destroy<false,false>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 32);
    do
    {
      result = (*(*(*(v4 - 1) - 8) + 8))(v3 + *v4);
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t tuple_initializeWithCopy<false,false>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 16))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_assignWithCopy<false,false>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 24))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_initializeWithTake<false,false>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 32))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_assignWithTake<false,false>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 40))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_getEnumTagSinglePayload<false,false>(char *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  v5 = *(*(a3 - 8) + 84);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 == 0 || !v6)
  {
    goto LABEL_13;
  }

  if (v4 > 3)
  {
    goto LABEL_4;
  }

  v10 = ((v7 + ~(-1 << (8 * v4))) >> (8 * v4)) + 1;
  if (v10 < 2)
  {
    goto LABEL_13;
  }

  if (v10 < 0x100)
  {
LABEL_4:
    v8 = a1[v4];
  }

  else if (v10 >= 0x10000)
  {
    v8 = *&a1[v4];
  }

  else
  {
    v8 = *&a1[v4];
  }

  if (v8)
  {
    v9 = (v8 - 1) << (8 * v4);
    if (v4 > 3)
    {
      v9 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v13 = *a1;
        return v5 + (v13 | v9) + 1;
      }

      if (v4 == 3)
      {
        v13 = *a1 | (a1[2] << 16);
        return v5 + (v13 | v9) + 1;
      }

      goto LABEL_22;
    }

    v13 = 0;
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_22:
        v13 = *a1;
        return v5 + (v13 | v9) + 1;
      }

      v13 = *a1;
    }

    return v5 + (v13 | v9) + 1;
  }

LABEL_13:
  if (!v5)
  {
    return 0;
  }

  v11 = a3 + 16 * *(a3 - 104);
  return (*(*(*(v11 + 24) - 8) + 48))(&a1[*(v11 + 32)]);
}

uint64_t std::__function::__func<getSuperclassMetadata::$_0,std::allocator<getSuperclassMetadata::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACA88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<getSuperclassMetadata::$_1,std::allocator<getSuperclassMetadata::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEACAD0;
  a2[1] = v2;
  return result;
}

uint64_t (**getExistentialMetatypeValueWitnesses(unsigned int a1))()
{
  if (a1 < 3)
  {
    return off_1E69EB098[a1];
  }

  v64 = a1;
  result = atomic_load_explicit(&qword_1EA79EA70, memory_order_acquire);
  if (!result || v64 != ((result[8] + 0x7FFFFFFF8) >> 3))
  {
    atomic_fetch_add_explicit(&ExistentialMetatypeValueWitnessTables, 1u, memory_order_acquire);
    do
    {
      explicit = atomic_load_explicit(&qword_1EA79EA50, memory_order_acquire);
      v3 = atomic_load_explicit(&qword_1EA79EA58, memory_order_acquire);
      v4 = atomic_load_explicit(&dword_1EA79EA4C, memory_order_acquire);
    }

    while (explicit != atomic_load_explicit(&qword_1EA79EA50, memory_order_acquire));
    if (explicit)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && v4 != 0)
    {
      if (v7)
      {
        qword_1EA79EA70 = *v7;
        result = *v7;
        atomic_fetch_add_explicit(&ExistentialMetatypeValueWitnessTables, 0xFFFFFFFF, memory_order_release);
        return result;
      }
    }

    atomic_fetch_add_explicit(&ExistentialMetatypeValueWitnessTables, 0xFFFFFFFF, memory_order_release);
    v65 = v64;
    os_unfair_lock_lock(&unk_1EA79EA60);
    v8 = qword_1EA79EA58;
    v9 = qword_1EA79EA58 & 3;
    v10 = v9 == 0;
    if ((qword_1EA79EA58 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v10 = 1;
    }

    v63 = v10;
    if (v10)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(qword_1EA79EA58 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v12 = dword_1EA79EA4C;
    v13 = qword_1EA79EA50;
    v14 = (qword_1EA79EA50 + 8);
    if (qword_1EA79EA50)
    {
      v15 = qword_1EA79EA50 + 8;
    }

    else
    {
      v15 = 0;
    }

    if (v16)
    {
      v18 = *v16;
      __dmb(0xBu);
      if (!ExistentialMetatypeValueWitnessTables)
      {
        v19 = qword_1EA79EA68;
        if (qword_1EA79EA68)
        {
          do
          {
            v20 = *v19;
            free(v19[1]);
            free(v19);
            v19 = v20;
          }

          while (v20);
        }

        goto LABEL_108;
      }

      goto LABEL_109;
    }

    v61 = v15;
    v62 = v8;
    v21 = (v12 + 1);
    if ((1 << v11) / ((1 << v11) - v21) < 4)
    {
      v29 = v8;
      v30 = v17;
      if (!v13)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v22 = (v11 + 1);
      v60 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      if (v22 >= 0x11)
      {
        v23 = 4;
      }

      else
      {
        v23 = 2;
      }

      if (v22 < 9)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      v25 = malloc_type_calloc(2 << v11, v24, 0x48DDA4AEuLL);
      if (!v25)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v26 = v15;
      v27 = v8;
      v28 = v11;
      v58 = v12;
      v59 = (v12 + 1);
      if (v24 != 1)
      {
        if (v24 == 4)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }
      }

      v29 = v24 | v25;
      *v25 = v11 + 1;
      if (v11)
      {
        v31 = v8 & 3;
        if (v9)
        {
          v32 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v32 = 0;
        }

        v33 = v29 & 3;
        if ((v29 & 3) != 0)
        {
          v34 = v25 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v34 = 0;
        }

        v35 = 1;
        p_cache = (__SwiftNativeNSArrayBase + 16);
        do
        {
          if ((v62 & 3u) > 1)
          {
            if (v31 == 2)
            {
              LODWORD(v37) = *(v32 + 2 * v35);
              if (*(v32 + 2 * v35))
              {
                goto LABEL_63;
              }
            }

            else
            {
              LODWORD(v37) = *(v32 + 4 * v35);
              if (v37)
              {
LABEL_63:
                v38 = *(*(v26 + 8 * (v37 - 1)) + 64);
                {
                  v57 = v32;
                  getCache();
                  p_cache = __SwiftNativeNSArrayBase.cache;
                  v32 = v57;
                  v28 = v11;
                  v26 = v61;
                  v27 = v62;
                }

                v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (p_cache[400] + ((v38 + 0x7FFFFFFF8) & 0x7FFFFFFF8))) ^ ((0x9DDFEA08EB382D69 * (p_cache[400] + ((v38 + 0x7FFFFFFF8) & 0x7FFFFFFF8))) >> 47));
                for (i = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47)); ; i = v42 + 1)
                {
                  v42 = i & ~(-2 << v11);
                  if (v42)
                  {
                    if ((v29 & 3) > 1)
                    {
                      LODWORD(v41) = v33 == 2 ? *(v34 + 2 * v42) : *(v34 + 4 * v42);
                    }

                    else if ((v29 & 3) != 0)
                    {
                      LODWORD(v41) = *(v34 + v42);
                    }

                    else
                    {
                      v41 = (v29 >> (4 * v42)) & 0xF;
                    }

                    if (!v41)
                    {
                      break;
                    }
                  }
                }

                if (v33 == 3)
                {
                  *(v34 + 4 * v42) = v37;
                }

                else if (v33 == 2)
                {
                  *(v34 + 2 * v42) = v37;
                }

                else
                {
                  *(v34 + v42) = v37;
                }
              }
            }
          }

          else if (v31)
          {
            LODWORD(v37) = *(v32 + v35);
            if (*(v32 + v35))
            {
              goto LABEL_63;
            }
          }

          else
          {
            v37 = (v27 >> (4 * v35)) & 0xF;
            if (v37)
            {
              goto LABEL_63;
            }
          }

          ++v35;
        }

        while (!(v35 >> v28));
      }

      atomic_store(v29, &qword_1EA79EA58);
      if (!v63)
      {
        v43 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v26 = v61;
        *v43 = qword_1EA79EA68;
        v43[1] = v60;
        qword_1EA79EA68 = v43;
      }

      v12 = v58;
      v21 = v59;
      v14 = v13 + 2;
      v30 = v44;
      if (!v13)
      {
        goto LABEL_84;
      }
    }

    v45 = v13;
    if (v12 < *v13)
    {
LABEL_90:
      v66 = 5;
      v50 = swift::MetadataAllocator::Allocate(&v66, 0x58uLL, 8uLL);
      v51 = v64;
      *v50 = swift::metadataimpl::NonFixedBufferValueWitnesses<swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>,true>::initializeBufferWithCopyOfBuffer;
      *(v50 + 1) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::destroy;
      *(v50 + 2) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::initializeWithCopy;
      *(v50 + 3) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::assignWithCopy;
      *(v50 + 4) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::initializeWithTake;
      *(v50 + 5) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::assignWithTake;
      *(v50 + 6) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::getEnumTagSinglePayload;
      v52 = 8 * v51 + 8;
      *(v50 + 7) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::storeEnumTagSinglePayload;
      *(v50 + 8) = v52;
      *(v50 + 9) = v52;
      *(v50 + 10) = 0x7FFFFFFF00020007;
      *(v45 + 8 * v12 + 8) = v50;
      atomic_store(v21, &dword_1EA79EA4C);
      if ((v29 & 3) > 1)
      {
        if ((v29 & 3) == 2)
        {
          v53 = v29 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v29 & 3) == 0)
          {
            v53 = 0;
          }

          atomic_store(v21, (v53 + 2 * v30));
        }

        else
        {
          v54 = v29 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v29 & 3) == 0)
          {
            v54 = 0;
          }

          atomic_store(v21, (v54 + 4 * v30));
        }
      }

      else if ((v29 & 3) != 0)
      {
        atomic_store(v21, ((v29 & 0xFFFFFFFFFFFFFFFCLL) + v30));
      }

      else
      {
        atomic_store((v21 << (4 * v30)) | v29, &qword_1EA79EA58);
      }

      __dmb(0xBu);
      if (!ExistentialMetatypeValueWitnessTables)
      {
        v55 = qword_1EA79EA68;
        if (qword_1EA79EA68)
        {
          v18 = v50;
          do
          {
            v56 = *v55;
            free(v55[1]);
            free(v55);
            v55 = v56;
          }

          while (v56);
        }

        else
        {
          v18 = v50;
        }

LABEL_108:
        qword_1EA79EA68 = 0;
        goto LABEL_109;
      }

      v18 = v50;
LABEL_109:
      os_unfair_lock_unlock(&unk_1EA79EA60);
      result = v18;
      qword_1EA79EA70 = v18;
      return result;
    }

LABEL_84:
    v46 = v12 + (v12 >> 2);
    if (v46 <= v12 + 1)
    {
      v46 = v12 + 1;
    }

    v47 = malloc_good_size(8 * v46 + 8);
    v48 = malloc_type_malloc(v47, 0x1020040D5A9D86FuLL);
    if (!v48)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v45 = v48;
    *v48 = (v47 + 0x7FFFFFFF8) >> 3;
    if (v13)
    {
      memcpy(v48 + 2, v14, 8 * v12);
      v49 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v49 = qword_1EA79EA68;
      v49[1] = v13;
      qword_1EA79EA68 = v49;
    }

    atomic_store(v45, &qword_1EA79EA50);
    goto LABEL_90;
  }

  return result;
}

void *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<1u>>,true,16ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(void *result, void *a2)
{
  result[1] = a2[1];
  *result = *a2;
  return result;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<1u>>::initializeWithCopy(void *result, void *a2)
{
  result[1] = a2[1];
  *result = *a2;
  return result;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<1u>>::assignWithCopy(void *result, void *a2)
{
  result[1] = a2[1];
  *result = *a2;
  return result;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<1u>>::initializeWithTake(void *result, void *a2)
{
  result[1] = a2[1];
  *result = *a2;
  return result;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<1u>>::assignWithTake(void *result, void *a2)
{
  result[1] = a2[1];
  *result = *a2;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<1u>>,true,16ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<1u>>,true,16ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      *(result + 4) = 0;
      *(result + 12) = 0;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 12) = 0;
    *(result + 16) = 1;
    return result;
  }

  *(result + 16) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

void *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<2u>>,true,24ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(void *result, void *a2)
{
  result[1] = a2[1];
  result[2] = a2[2];
  *result = *a2;
  return result;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<2u>>::initializeWithCopy(void *result, void *a2)
{
  result[1] = a2[1];
  result[2] = a2[2];
  *result = *a2;
  return result;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<2u>>::assignWithCopy(void *result, void *a2)
{
  result[1] = a2[1];
  result[2] = a2[2];
  *result = *a2;
  return result;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<2u>>::initializeWithTake(void *result, void *a2)
{
  result[1] = a2[1];
  result[2] = a2[2];
  *result = *a2;
  return result;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<2u>>::assignWithTake(void *result, void *a2)
{
  result[1] = a2[1];
  result[2] = a2[2];
  *result = *a2;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<2u>>,true,24ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ExistentialMetatypeBox<2u>>,true,24ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      *(result + 12) = 0;
      *(result + 4) = 0;
      *(result + 20) = 0;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 24) = 1;
    return result;
  }

  *(result + 24) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::ExistentialMetatypeValueWitnessTableCacheEntry>,swift::LazyMutex>::find<unsigned int>(_DWORD *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  {
    v18 = a4;
    v15 = a3;
    v17 = a2;
    v14 = a1;
    v16 = v4;
    getCache();
    a3 = v15;
    v4 = v16;
    a1 = v14;
    a2 = v17;
    a4 = v18;
  }

  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v4)) ^ ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v4)) >> 47));
  v6 = 0x1DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v8 = 4;
  if ((a2 & 3) != 0 && v7)
  {
    v8 = *v7;
  }

  v9 = ~(-1 << v8);
  if ((a2 & 3) == 0)
  {
    v7 = 0;
  }

  while (1)
  {
    v10 = v6 & v9;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v11) = v7 + v10;
      LOBYTE(v11) = atomic_load_explicit(&v7[v10], memory_order_acquire);
      if (!v11)
      {
        return 0;
      }
    }

    else
    {
      v11 = (a2 >> (4 * v10)) & 0xF;
      if (!v11)
      {
        return 0;
      }
    }

LABEL_22:
    v12 = (v11 - 1);
    if (v12 < a3 && *a1 == ((*(*(a4 + 8 * v12) + 64) + 0x7FFFFFFF8) >> 3))
    {
      return a4 + 8 * v12;
    }

    v6 = v10 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v11) = v7 + 2 * v10;
    LOWORD(v11) = atomic_load_explicit(&v7[2 * v10], memory_order_acquire);
    if (!v11)
    {
      return 0;
    }

    goto LABEL_22;
  }

  LODWORD(v11) = atomic_load_explicit(&v7[4 * v10], memory_order_acquire);
  if (v11)
  {
    goto LABEL_22;
  }

  return 0;
}

char *swift::metadataimpl::NonFixedBufferValueWitnesses<swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>,true>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

void *swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::initializeWithCopy(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16) & 0xFFFFFF;
  if (v3)
  {
    v4 = 0;
    if (v3 < 4)
    {
      goto LABEL_7;
    }

    if ((result - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v4 = *(a3 + 16) & 0xFFFFFCLL;
    v5 = (a2 + 3);
    v6 = result + 3;
    v7 = v4;
    do
    {
      v8 = *v5;
      *(v6 - 1) = *(v5 - 1);
      *v6 = v8;
      v5 += 2;
      v6 += 2;
      v7 -= 4;
    }

    while (v7);
    if (v4 != v3)
    {
LABEL_7:
      v9 = v3 - v4;
      v10 = 8 * v4 + 8;
      v11 = (result + v10);
      v12 = (a2 + v10);
      do
      {
        v13 = *v12++;
        *v11++ = v13;
        --v9;
      }

      while (v9);
    }
  }

  *result = *a2;
  return result;
}

void *swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::assignWithCopy(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16) & 0xFFFFFF;
  if (v3)
  {
    v4 = 0;
    if (v3 < 4)
    {
      goto LABEL_7;
    }

    if ((result - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v4 = *(a3 + 16) & 0xFFFFFCLL;
    v5 = (a2 + 3);
    v6 = result + 3;
    v7 = v4;
    do
    {
      v8 = *v5;
      *(v6 - 1) = *(v5 - 1);
      *v6 = v8;
      v5 += 2;
      v6 += 2;
      v7 -= 4;
    }

    while (v7);
    if (v4 != v3)
    {
LABEL_7:
      v9 = v3 - v4;
      v10 = 8 * v4 + 8;
      v11 = (result + v10);
      v12 = (a2 + v10);
      do
      {
        v13 = *v12++;
        *v11++ = v13;
        --v9;
      }

      while (v9);
    }
  }

  *result = *a2;
  return result;
}

void *swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::initializeWithTake(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16) & 0xFFFFFF;
  if (v3)
  {
    v4 = 0;
    if (v3 < 4)
    {
      goto LABEL_7;
    }

    if ((result - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v4 = *(a3 + 16) & 0xFFFFFCLL;
    v5 = (a2 + 3);
    v6 = result + 3;
    v7 = v4;
    do
    {
      v8 = *v5;
      *(v6 - 1) = *(v5 - 1);
      *v6 = v8;
      v5 += 2;
      v6 += 2;
      v7 -= 4;
    }

    while (v7);
    if (v4 != v3)
    {
LABEL_7:
      v9 = v3 - v4;
      v10 = 8 * v4 + 8;
      v11 = (result + v10);
      v12 = (a2 + v10);
      do
      {
        v13 = *v12++;
        *v11++ = v13;
        --v9;
      }

      while (v9);
    }
  }

  *result = *a2;
  return result;
}

void *swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::assignWithTake(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16) & 0xFFFFFF;
  if (v3)
  {
    v4 = 0;
    if (v3 < 4)
    {
      goto LABEL_7;
    }

    if ((result - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v4 = *(a3 + 16) & 0xFFFFFCLL;
    v5 = (a2 + 3);
    v6 = result + 3;
    v7 = v4;
    do
    {
      v8 = *v5;
      *(v6 - 1) = *(v5 - 1);
      *v6 = v8;
      v5 += 2;
      v6 += 2;
      v7 -= 4;
    }

    while (v7);
    if (v4 != v3)
    {
LABEL_7:
      v9 = v3 - v4;
      v10 = 8 * v4 + 8;
      v11 = (result + v10);
      v12 = (a2 + v10);
      do
      {
        v13 = *v12++;
        *v11++ = v13;
        --v9;
      }

      while (v9);
    }
  }

  *result = *a2;
  return result;
}

uint64_t swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedExistentialMetatypeBox,true>::getEnumTagSinglePayload(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 84);
  if (a2 <= v5)
  {
    goto LABEL_12;
  }

  if (v4 > 3)
  {
    goto LABEL_3;
  }

  v8 = ((a2 - v5 + ~(-1 << (8 * v4))) >> (8 * v4)) + 1;
  if (v8 < 2)
  {
    goto LABEL_12;
  }

  if (v8 < 0x100)
  {
LABEL_3:
    v6 = *(a1 + v4);
  }

  else if (v8 >= 0x10000)
  {
    v6 = *(a1 + v4);
  }

  else
  {
    v6 = *(a1 + v4);
  }

  if (v6)
  {
    v7 = (v6 - 1) << (8 * v4);
    if (v4 > 3)
    {
      v7 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v10 = *a1;
        return v5 + (v10 | v7) + 1;
      }

      if (v4 == 3)
      {
        v10 = *a1 | (*(a1 + 2) << 16);
        return v5 + (v10 | v7) + 1;
      }

      goto LABEL_23;
    }

    v10 = 0;
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_23:
        v10 = *a1;
        return v5 + (v10 | v7) + 1;
      }

      v10 = *a1;
    }

    return v5 + (v10 | v7) + 1;
  }

LABEL_12:
  if (!v5)
  {
    return 0;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t *swift::metadataimpl::OpaqueExistentialBoxBase::assignWithCopy<swift::metadataimpl::OpaqueExistentialBox<0u>::Container>(uint64_t *a1, uint64_t *a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v3 = a2[3];
  v4 = a1[3];
  if (v3 == v4)
  {
    v7 = *(v3 - 8);
    if ((*(v7 + 82) & 2) == 0)
    {
      (*(v7 + 24))(a1);
      return a1;
    }

    v12 = *a2;
    v13 = *a1;
    *a1 = *a2;
    v12;
    v14 = v13;
LABEL_20:
    v14;
    return a1;
  }

  v5 = *(v4 - 8);
  if (v5)
  {
    v6 = *(v4 - 8);
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v3 - 8);
  if (!v8)
  {
    v9 = 0;
    if ((*(v6 + 82) & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v9 = *(v3 - 8);
  if ((*(v6 + 82) & 2) != 0)
  {
LABEL_13:
    v11 = *a1;
    a1[3] = v3;
    if ((*(v9 + 82) & 2) != 0)
    {
      v16 = *a2;
      *a1 = *a2;
      v16;
    }

    else
    {
      (*(v8 + 16))(a1);
    }

    v14 = v11;
    goto LABEL_20;
  }

LABEL_10:
  (*(v5 + 32))(v18, a1, v4);
  a1[3] = a2[3];
  if ((*(v9 + 82) & 2) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    v15;
  }

  else
  {
    (*(*(v3 - 8) + 16))(a1, a2, v3);
  }

  (*(*(v4 - 8) + 8))(v18, v4);
  return a1;
}

uint64_t *swift::metadataimpl::OpaqueExistentialBoxBase::assignWithCopy<swift::metadataimpl::OpaqueExistentialBox<1u>::Container>(uint64_t *a1, uint64_t *a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v3 = a2[3];
  v4 = a1[3];
  if (v3 == v4)
  {
    v7 = *(v3 - 8);
    if ((*(v7 + 82) & 2) == 0)
    {
      (*(v7 + 24))(a1);
      return a1;
    }

    v11 = *a2;
    v12 = *a1;
    *a1 = *a2;
    v11;
    v13 = v12;
LABEL_20:
    v13;
    return a1;
  }

  v5 = *(v4 - 8);
  if (v5)
  {
    v6 = *(v4 - 8);
  }

  else
  {
    v6 = 0;
  }

  if (!*(v3 - 8))
  {
    v8 = 0;
    if ((*(v6 + 82) & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v8 = *(v3 - 8);
  if ((*(v6 + 82) & 2) != 0)
  {
LABEL_13:
    v10 = *a1;
    a1[3] = v3;
    a1[4] = a2[4];
    if ((*(v8 + 82) & 2) != 0)
    {
      v15 = *a2;
      *a1 = *a2;
      v15;
    }

    else
    {
      (*(*(v3 - 8) + 16))(a1);
    }

    v13 = v10;
    goto LABEL_20;
  }

LABEL_10:
  (*(v5 + 32))(v17, a1, v4);
  a1[3] = a2[3];
  a1[4] = a2[4];
  if ((*(v8 + 82) & 2) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    v14;
  }

  else
  {
    (*(*(v3 - 8) + 16))(a1, a2, v3);
  }

  (*(*(v4 - 8) + 8))(v17, v4);
  return a1;
}

void *swift::metadataimpl::OpaqueExistentialBoxBase::assignWithCopy<swift::metadataimpl::NonFixedOpaqueExistentialBox::Container,swift::TargetMetadata<swift::InProcess> const*>(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a1)
  {
    return a1;
  }

  v4 = *(a2 + 24);
  v5 = a1[3];
  if (v4 == v5)
  {
    v8 = *(v4 - 8);
    if ((*(v8 + 82) & 2) == 0)
    {
      (*(v8 + 24))(a1);
      return a1;
    }

    v37 = *a2;
    v38 = *a1;
    *a1 = *a2;
    v37;
    v39 = v38;
LABEL_36:
    v39;
    return a1;
  }

  v6 = *(v5 - 8);
  if (v6)
  {
    v7 = *(v5 - 8);
  }

  else
  {
    v7 = 0;
  }

  if (*(v4 - 8))
  {
    v9 = *(v4 - 8);
    if ((*(v7 + 82) & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v9 = 0;
  if ((*(v7 + 82) & 2) != 0)
  {
LABEL_21:
    v24 = *a1;
    v25 = *(a3 + 8);
    a1[3] = v4;
    v26 = *&v25 & 0xFFFFFFLL;
    if (v26)
    {
      v27 = 0;
      if (v26 < 4)
      {
        goto LABEL_27;
      }

      if (a1 - a2 < 0x20)
      {
        goto LABEL_27;
      }

      v27 = v26 & 0xFFFFFC;
      v28 = (a2 + 48);
      v29 = a1 + 6;
      v30 = v26 & 0xFFFFFC;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 4;
      }

      while (v30);
      if (v27 != v26)
      {
LABEL_27:
        v32 = v26 - v27;
        v33 = 8 * v27 + 32;
        v34 = (a1 + v33);
        v35 = (a2 + v33);
        do
        {
          v36 = *v35++;
          *v34++ = v36;
          --v32;
        }

        while (v32);
      }
    }

    if ((*(v9 + 82) & 2) != 0)
    {
      v41 = *a2;
      *a1 = *a2;
      v41;
    }

    else
    {
      (*(*(v4 - 8) + 16))(a1);
    }

    v39 = v24;
    goto LABEL_36;
  }

LABEL_10:
  (*(v6 + 32))(v43, a1, v5);
  v12 = *(a3 + 8);
  a1[3] = *(a2 + 24);
  v13 = *&v12 & 0xFFFFFFLL;
  if (v13)
  {
    v14 = 0;
    if (v13 < 4)
    {
      goto LABEL_16;
    }

    if (a1 - a2 < 0x20)
    {
      goto LABEL_16;
    }

    v14 = v13 & 0xFFFFFC;
    v15 = (a2 + 48);
    v16 = a1 + 6;
    v17 = v13 & 0xFFFFFC;
    do
    {
      v18 = *v15;
      *(v16 - 1) = *(v15 - 1);
      *v16 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != v13)
    {
LABEL_16:
      v19 = v13 - v14;
      v20 = 8 * v14 + 32;
      v21 = (a1 + v20);
      v22 = (a2 + v20);
      do
      {
        v23 = *v22++;
        *v21++ = v23;
        --v19;
      }

      while (v19);
    }
  }

  if ((*(v9 + 82) & 2) != 0)
  {
    v40 = *a2;
    *a1 = *a2;
    v40;
  }

  else
  {
    (*(*(v4 - 8) + 16))(a1, a2, v4);
  }

  (*(*(v5 - 8) + 8))(v43, v5);
  return a1;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::ExistentialCacheEntry>,swift::LazyMutex>::find<anonymous namespace::ExistentialCacheEntry::Key>(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 2);
  v9 = v8 >> 1;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  {
    v32 = v8;
    getCache();
    LOBYTE(v8) = v32;
  }

  v10 = *a1;
  v38 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  *&v35[0] = v10;
  v33 = 0;
  v11 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<swift::ProtocolClassConstraint>(v35, &v33, v35 + 8, v36, v8 & 1);
  v34 = v33;
  v12 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v35, &v34, v11, v36, v9);
  v13 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v35, v34, v12, v36);
  *&v35[0] = v13;
  if (*(a1 + 2) >= 2u)
  {
    v14 = 0;
    do
    {
      v34 = *(a1[2] + 8 * v14);
      v13 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(v35, &v34);
      *&v35[0] = v13;
      ++v14;
    }

    while (v14 != *(a1 + 2) >> 1);
  }

  v15 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v16 = 4;
  if ((a2 & 3) != 0 && v15)
  {
    v16 = *v15;
  }

  v17 = ~(-1 << v16);
  if ((a2 & 3) == 0)
  {
    v15 = 0;
  }

  while (1)
  {
    v18 = v13 & v17;
    if ((v13 & v17) <= 1)
    {
      v18 = 1;
    }

    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v19) = v15 + v18;
      LOBYTE(v19) = atomic_load_explicit(&v15[v18], memory_order_acquire);
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      v19 = (a2 >> (4 * v18)) & 0xF;
      if (!v19)
      {
        return 0;
      }
    }

LABEL_25:
    v20 = (v19 - 1);
    if (v20 < a3)
    {
      v21 = *(a4 + 8 * v20);
      v22 = *(a1 + 2);
      v23 = *(v21 + 16);
      if (((((v23 & 0x80000000) != 0) ^ v22) & 1) == 0)
      {
        v24 = (v23 & 0x40000000) != 0 ? *(v21 + 24) : 0;
        if (*a1 == v24)
        {
          v25 = v22 >> 1;
          if (*(a1 + 2) >> 1 == *(v21 + 20))
          {
            if (v22 < 2)
            {
              return a4 + 8 * v20;
            }

            v26 = a1[2];
            v27 = (v21 + 8 * ((v23 >> 30) & 1) + 24);
            while (1)
            {
              v29 = *v26++;
              v28 = v29;
              v30 = *v27++;
              if (v28 != v30)
              {
                break;
              }

              if (!--v25)
              {
                return a4 + 8 * v20;
              }
            }
          }
        }
      }
    }

    v13 = v18 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v19) = v15 + 2 * v18;
    LOWORD(v19) = atomic_load_explicit(&v15[2 * v18], memory_order_acquire);
    if (!v19)
    {
      return 0;
    }

    goto LABEL_25;
  }

  LODWORD(v19) = atomic_load_explicit(&v15[4 * v18], memory_order_acquire);
  if (v19)
  {
    goto LABEL_25;
  }

  return 0;
}

_BYTE *__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<swift::ProtocolClassConstraint>(uint64_t a1, uint64_t *a2, _BYTE *__dst, unint64_t a4, char a5)
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

uint64_t (**getExistentialValueWitnesses(char a1, unsigned int a2, int a3, int a4))()
{
  if (a3 == 1)
  {
    return &value witness table for Builtin.UnknownObject;
  }

  if ((a1 & 1) == 0)
  {
    if (a2 < 3)
    {
      return *(&off_1E69EB0B0 + a2);
    }

    v124 = a2;
    result = atomic_load_explicit(&qword_1EA79EAA0, memory_order_acquire);
    if (result && v124 == ((result[8] + 0x7FFFFFFF8) >> 3))
    {
      return result;
    }

    v6 = &ClassExistentialValueWitnessTables;
    atomic_fetch_add_explicit(&ClassExistentialValueWitnessTables, 1u, memory_order_acquire);
    do
    {
      explicit = atomic_load_explicit(&qword_1EA79EA80, memory_order_acquire);
      v8 = atomic_load_explicit(&qword_1EA79EA88, memory_order_acquire);
      v9 = atomic_load_explicit(&dword_1EA79EA7C, memory_order_acquire);
    }

    while (explicit != atomic_load_explicit(&qword_1EA79EA80, memory_order_acquire));
    if (explicit)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && v9 != 0)
    {
      if (v12)
      {
        goto LABEL_41;
      }
    }

    atomic_fetch_add_explicit(&ClassExistentialValueWitnessTables, 0xFFFFFFFF, memory_order_release);
    v125 = v124;
    os_unfair_lock_lock(&unk_1EA79EA90);
    v13 = qword_1EA79EA88;
    v14 = qword_1EA79EA88 & 3;
    v15 = v14 == 0;
    if ((qword_1EA79EA88 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v15 = 1;
    }

    v121 = v15;
    if (v15)
    {
      v16 = 4;
    }

    else
    {
      v16 = *(qword_1EA79EA88 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v35 = dword_1EA79EA7C;
    v36 = qword_1EA79EA80;
    v37 = (qword_1EA79EA80 + 8);
    if (qword_1EA79EA80)
    {
      v38 = qword_1EA79EA80 + 8;
    }

    else
    {
      v38 = 0;
    }

    if (v39)
    {
      v32 = *v39;
      __dmb(0xBu);
      if (!ClassExistentialValueWitnessTables)
      {
        v41 = qword_1EA79EA98;
        if (qword_1EA79EA98)
        {
          do
          {
            v42 = *v41;
            free(v41[1]);
            free(v41);
            v41 = v42;
          }

          while (v42);
        }

LABEL_215:
        qword_1EA79EA98 = 0;
        goto LABEL_216;
      }

      goto LABEL_216;
    }

    v118 = v38;
    v119 = v13;
    v49 = (v35 + 1);
    if ((1 << v16) / ((1 << v16) - v49) < 4)
    {
      v58 = v13;
    }

    else
    {
      v50 = (v16 + 1);
      __src = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v50 >= 0x11)
      {
        v51 = 4;
      }

      else
      {
        v51 = 2;
      }

      if (v50 < 9)
      {
        v52 = 1;
      }

      else
      {
        v52 = v51;
      }

      v53 = malloc_type_calloc(2 << v16, v52, 0x48DDA4AEuLL);
      if (!v53)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v54 = v38;
      v55 = v13;
      v56 = v16;
      v114 = v35;
      v115 = (v35 + 1);
      if (v52 != 1)
      {
        if (v52 == 4)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }
      }

      v58 = v52 | v53;
      *v53 = v16 + 1;
      if (v16)
      {
        v84 = v13 & 3;
        if (v14)
        {
          v85 = v13 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v85 = 0;
        }

        v86 = v58 & 3;
        if ((v58 & 3) != 0)
        {
          v87 = v53 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v87 = 0;
        }

        v88 = 1;
        p_cache = (__SwiftNativeNSArrayBase + 16);
        do
        {
          if ((v119 & 3u) > 1)
          {
            if (v84 == 2)
            {
              LODWORD(v90) = *(v85 + 2 * v88);
              if (*(v85 + 2 * v88))
              {
                goto LABEL_172;
              }
            }

            else
            {
              LODWORD(v90) = *(v85 + 4 * v88);
              if (v90)
              {
LABEL_172:
                v91 = *(*(v54 + 8 * (v90 - 1)) + 64);
                {
                  v110 = v85;
                  getCache();
                  p_cache = __SwiftNativeNSArrayBase.cache;
                  v85 = v110;
                  v56 = v16;
                  v54 = v118;
                  v55 = v119;
                }

                v92 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (p_cache[400] + ((v91 + 0x7FFFFFFF8) & 0x7FFFFFFF8))) ^ ((0x9DDFEA08EB382D69 * (p_cache[400] + ((v91 + 0x7FFFFFFF8) & 0x7FFFFFFF8))) >> 47));
                for (i = 0x9DDFEA08EB382D69 * (v92 ^ (v92 >> 47)); ; i = v95 + 1)
                {
                  v95 = i & ~(-2 << v16);
                  if (v95)
                  {
                    if ((v58 & 3) > 1)
                    {
                      LODWORD(v94) = v86 == 2 ? *(v87 + 2 * v95) : *(v87 + 4 * v95);
                    }

                    else if ((v58 & 3) != 0)
                    {
                      LODWORD(v94) = *(v87 + v95);
                    }

                    else
                    {
                      v94 = (v58 >> (4 * v95)) & 0xF;
                    }

                    if (!v94)
                    {
                      break;
                    }
                  }
                }

                if (v86 == 3)
                {
                  *(v87 + 4 * v95) = v90;
                }

                else if (v86 == 2)
                {
                  *(v87 + 2 * v95) = v90;
                }

                else
                {
                  *(v87 + v95) = v90;
                }
              }
            }
          }

          else if (v84)
          {
            LODWORD(v90) = *(v85 + v88);
            if (*(v85 + v88))
            {
              goto LABEL_172;
            }
          }

          else
          {
            v90 = (v55 >> (4 * v88)) & 0xF;
            if (v90)
            {
              goto LABEL_172;
            }
          }

          ++v88;
        }

        while (!(v88 >> v56));
      }

      atomic_store(v58, &qword_1EA79EA88);
      if (!v121)
      {
        v96 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v54 = v118;
        *v96 = qword_1EA79EA98;
        v96[1] = __src;
        qword_1EA79EA98 = v96;
      }

      v35 = v114;
      v49 = v115;
      v37 = v36 + 2;
    }

    v97 = v40;
    if (!v36 || (v98 = v36, v35 >= *v36))
    {
      v99 = v35 + (v35 >> 2);
      if (v99 <= v35 + 1)
      {
        v99 = v35 + 1;
      }

      v100 = malloc_good_size(8 * v99 + 8);
      v101 = malloc_type_malloc(v100, 0x1020040D5A9D86FuLL);
      if (!v101)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v98 = v101;
      *v101 = (v100 + 0x7FFFFFFF8) >> 3;
      if (v36)
      {
        memcpy(v101 + 2, v37, 8 * v35);
        v102 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v102 = qword_1EA79EA98;
        v102[1] = v36;
        qword_1EA79EA98 = v102;
      }

      atomic_store(v98, &qword_1EA79EA80);
    }

    LOWORD(v123) = 9;
    v103 = swift::MetadataAllocator::Allocate(&v123, 0x58uLL, 8uLL);
    v104 = v124;
    *v103 = swift::metadataimpl::NonFixedBufferValueWitnesses<swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>,true>::initializeBufferWithCopyOfBuffer;
    *(v103 + 1) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::destroy;
    *(v103 + 2) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::initializeWithCopy;
    *(v103 + 3) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::assignWithCopy;
    *(v103 + 4) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::initializeWithTake;
    *(v103 + 5) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::assignWithTake;
    *(v103 + 6) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::getEnumTagSinglePayload;
    v105 = 8 * v104 + 8;
    *(v103 + 7) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::storeEnumTagSinglePayload;
    *(v103 + 8) = v105;
    *(v103 + 10) = 0x7FFFFFFF00030007;
    *(v103 + 9) = v105;
    *(v98 + 8 * v35 + 8) = v103;
    atomic_store(v49, &dword_1EA79EA7C);
    if ((v58 & 3) > 1)
    {
      if ((v58 & 3) == 2)
      {
        v106 = v58 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v58 & 3) == 0)
        {
          v106 = 0;
        }

        atomic_store(v49, (v106 + 2 * v97));
      }

      else
      {
        v107 = v58 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v58 & 3) == 0)
        {
          v107 = 0;
        }

        atomic_store(v49, (v107 + 4 * v97));
      }
    }

    else if ((v58 & 3) != 0)
    {
      atomic_store(v49, ((v58 & 0xFFFFFFFFFFFFFFFCLL) + v97));
    }

    else
    {
      atomic_store((v49 << (4 * v97)) | v58, &qword_1EA79EA88);
    }

    __dmb(0xBu);
    if (!ClassExistentialValueWitnessTables)
    {
      v32 = v103;
      v108 = qword_1EA79EA98;
      if (qword_1EA79EA98)
      {
        do
        {
          v109 = *v108;
          free(v108[1]);
          free(v108);
          v108 = v109;
        }

        while (v109);
      }

      goto LABEL_215;
    }

    v32 = v103;
LABEL_216:
    v83 = &unk_1EA79EA90;
    goto LABEL_217;
  }

  if (a4)
  {
    if (!a2)
    {
      return OpaqueExistentialValueWitnesses_0;
    }

    if (a2 == 1)
    {
      return OpaqueExistentialValueWitnesses_1;
    }

    v5 = 0x80000000;
  }

  else
  {
    v5 = 0;
  }

  v123 = v5 | a2 & 0x7FFFFFFF;
  result = atomic_load_explicit(&qword_1ED4262C0, memory_order_acquire);
  if (!result || ((((result[8] + 0x3FFFFFFE0) >> 3) & 0x7FFFFFFF | ((*(result + 20) >> 23) << 31)) ^ v123) != 0x80000000)
  {
    v6 = &OpaqueExistentialValueWitnessTables;
    atomic_fetch_add_explicit(&OpaqueExistentialValueWitnessTables, 1u, memory_order_acquire);
    do
    {
      v17 = atomic_load_explicit(&qword_1ED4262A0, memory_order_acquire);
      v18 = atomic_load_explicit(&qword_1ED4262A8, memory_order_acquire);
      v19 = atomic_load_explicit(&dword_1ED42629C, memory_order_acquire);
    }

    while (v17 != atomic_load_explicit(&qword_1ED4262A0, memory_order_acquire));
    if (v17)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20 && v19 != 0)
    {
      if (v12)
      {
LABEL_41:
        *(v6 + 5) = *v12;
        result = *v12;
        atomic_fetch_add_explicit(v6, 0xFFFFFFFF, memory_order_release);
        return result;
      }
    }

    atomic_fetch_add_explicit(&OpaqueExistentialValueWitnessTables, 0xFFFFFFFF, memory_order_release);
    v22 = v123;
    v124 = v123;
    os_unfair_lock_lock(&unk_1ED4262B0);
    v23 = qword_1ED4262A8;
    v24 = qword_1ED4262A8 & 3;
    v25 = v24 == 0;
    if ((qword_1ED4262A8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v25 = 1;
    }

    v117 = v25;
    if (v25)
    {
      v26 = 4;
    }

    else
    {
      v26 = *(qword_1ED4262A8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v27 = dword_1ED42629C;
    v28 = qword_1ED4262A0;
    if (qword_1ED4262A0)
    {
      v29 = qword_1ED4262A0 + 8;
    }

    else
    {
      v29 = 0;
    }

    if (v30)
    {
      v32 = *v30;
      __dmb(0xBu);
      if (!OpaqueExistentialValueWitnessTables)
      {
        v33 = qword_1ED4262B8;
        if (qword_1ED4262B8)
        {
          do
          {
            v34 = *v33;
            free(v33[1]);
            free(v33);
            v33 = v34;
          }

          while (v34);
        }

LABEL_149:
        qword_1ED4262B8 = 0;
        goto LABEL_150;
      }

      goto LABEL_150;
    }

    v122 = v29;
    v43 = (v27 + 1);
    if ((1 << v26) / ((1 << v26) - v43) < 4)
    {
      v57 = v23;
    }

    else
    {
      v44 = (v26 + 1);
      if (v44 >= 0x11)
      {
        v45 = 4;
      }

      else
      {
        v45 = 2;
      }

      if (v44 < 9)
      {
        v46 = 1;
      }

      else
      {
        v46 = v45;
      }

      v47 = malloc_type_calloc(2 << v26, v46, 0x48DDA4AEuLL);
      if (!v47)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v48 = v122;
      v112 = (v27 + 1);
      v113 = v22;
      v111 = v27;
      if (v46 != 1)
      {
        if (v46 == 4)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }
      }

      v57 = v46 | v47;
      *v47 = v26 + 1;
      if (v26)
      {
        v59 = ~(-2 << v26);
        v60 = v23 & 0xFFFFFFFFFFFFFFFCLL;
        if (!v24)
        {
          v60 = 0;
        }

        v120 = v60;
        v61 = v57 & 3;
        if ((v57 & 3) != 0)
        {
          v62 = v47 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v62 = 0;
        }

        for (j = 1; !(j >> v26); ++j)
        {
          if ((v23 & 3) > 1)
          {
            if ((v23 & 3) == 2)
            {
              LODWORD(v64) = *(v120 + 2 * j);
              if (*(v120 + 2 * j))
              {
                goto LABEL_108;
              }
            }

            else
            {
              LODWORD(v64) = *(v120 + 4 * j);
              if (v64)
              {
LABEL_108:
                v65 = *(v48 + 8 * (v64 - 1));
                v66 = (*(v65 + 64) + 0x7FFFFFFE0) >> 3;
                LODWORD(v65) = *(v65 + 80);
                v125 = v66;
                v126[0] = (v65 & 0x800000) == 0;
                for (k = __swift::__runtime::llvm::hash_combine<unsigned int,BOOL>(&v125, v126); ; k = v69 + 1)
                {
                  v69 = k & v59;
                  if ((k & v59) != 0)
                  {
                    if ((v57 & 3) > 1)
                    {
                      LODWORD(v68) = v61 == 2 ? *(v62 + 2 * v69) : *(v62 + 4 * v69);
                    }

                    else if ((v57 & 3) != 0)
                    {
                      LODWORD(v68) = *(v62 + v69);
                    }

                    else
                    {
                      v68 = (v57 >> (4 * v69)) & 0xF;
                    }

                    if (!v68)
                    {
                      break;
                    }
                  }
                }

                if (v61 == 3)
                {
                  *(v62 + 4 * v69) = v64;
                  v48 = v122;
                }

                else
                {
                  v48 = v122;
                  if (v61 == 2)
                  {
                    *(v62 + 2 * v69) = v64;
                  }

                  else
                  {
                    *(v62 + v69) = v64;
                  }
                }
              }
            }
          }

          else if ((v23 & 3) != 0)
          {
            LODWORD(v64) = *(v120 + j);
            if (*(v120 + j))
            {
              goto LABEL_108;
            }
          }

          else
          {
            v64 = (v23 >> (4 * j)) & 0xF;
            if (v64)
            {
              goto LABEL_108;
            }
          }
        }
      }

      atomic_store(v57, &qword_1ED4262A8);
      if (!v117)
      {
        v70 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v48 = v122;
        *v70 = qword_1ED4262B8;
        v70[1] = v23 & 0xFFFFFFFFFFFFFFFCLL;
        qword_1ED4262B8 = v70;
      }

      v27 = v111;
      v43 = v112;
      v22 = v113;
    }

    v71 = v31;
    if (!v28 || (v72 = v28, v27 >= *v28))
    {
      v73 = v27 + (v27 >> 2);
      if (v73 <= v27 + 1)
      {
        v73 = v27 + 1;
      }

      v74 = malloc_good_size(8 * v73 + 8);
      v75 = malloc_type_malloc(v74, 0x1020040D5A9D86FuLL);
      if (!v75)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v72 = v75;
      *v75 = (v74 + 0x7FFFFFFF8) >> 3;
      if (v28)
      {
        memcpy(v75 + 2, v28 + 2, 8 * v27);
        v76 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v76 = qword_1ED4262B8;
        v76[1] = v28;
        qword_1ED4262B8 = v76;
      }

      atomic_store(v72, &qword_1ED4262A0);
    }

    LOWORD(v125) = 8;
    v77 = swift::MetadataAllocator::Allocate(&v125, 0x58uLL, 8uLL);
    *v77 = swift::metadataimpl::NonFixedBufferValueWitnesses<swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>,true>::initializeBufferWithCopyOfBuffer;
    *(v77 + 1) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::destroy;
    *(v77 + 2) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::initializeWithCopy;
    *(v77 + 3) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::assignWithCopy;
    *(v77 + 4) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::initializeWithTake;
    *(v77 + 5) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::assignWithTake;
    *(v77 + 6) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::getEnumTagSinglePayload;
    v78 = 8 * (v22 & 0x7FFFFFFF) + 32;
    *(v77 + 7) = swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::storeEnumTagSinglePayload;
    *(v77 + 8) = v78;
    *(v77 + 20) = (((v22 & 0x80000000) >> 7) & 0xFF000000 | ((v22 & 0x80000000) >> 8)) ^ 0x1830007;
    *(v77 + 21) = 0x7FFFFFFF;
    *(v77 + 9) = v78;
    *(v72 + 8 * v27 + 8) = v77;
    atomic_store(v43, &dword_1ED42629C);
    if ((v57 & 3) > 1)
    {
      if ((v57 & 3) == 2)
      {
        v79 = v57 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v57 & 3) == 0)
        {
          v79 = 0;
        }

        atomic_store(v43, (v79 + 2 * v71));
      }

      else
      {
        v80 = v57 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v57 & 3) == 0)
        {
          v80 = 0;
        }

        atomic_store(v43, (v80 + 4 * v71));
      }
    }

    else if ((v57 & 3) != 0)
    {
      atomic_store(v43, ((v57 & 0xFFFFFFFFFFFFFFFCLL) + v71));
    }

    else
    {
      atomic_store((v43 << (4 * v71)) | v57, &qword_1ED4262A8);
    }

    __dmb(0xBu);
    if (!OpaqueExistentialValueWitnessTables)
    {
      v32 = v77;
      v81 = qword_1ED4262B8;
      if (qword_1ED4262B8)
      {
        do
        {
          v82 = *v81;
          free(v81[1]);
          free(v81);
          v81 = v82;
        }

        while (v82);
      }

      goto LABEL_149;
    }

    v32 = v77;
LABEL_150:
    v83 = &unk_1ED4262B0;
LABEL_217:
    os_unfair_lock_unlock(v83);
    result = v32;
    *&v83[4]._os_unfair_lock_opaque = v32;
  }

  return result;
}

void *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<1u>>,true,16ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(void *a1, uint64_t a2)
{
  a1[1] = *(a2 + 8);
  v3 = *a2;
  *a1 = *a2;
  swift_unknownObjectRetain(v3);
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<1u>>::initializeWithCopy(void *a1, uint64_t a2)
{
  a1[1] = *(a2 + 8);
  v3 = *a2;
  *a1 = *a2;
  swift_unknownObjectRetain(v3);
  return a1;
}

uint64_t swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<1u>>::assignWithCopy(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  swift_unknownObjectRetain(v3);
  swift_unknownObjectRelease(v4);
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<1u>>::initializeWithTake(void *result, void *a2)
{
  result[1] = a2[1];
  *result = *a2;
  return result;
}

uint64_t swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<1u>>::assignWithTake(uint64_t a1, void *a2)
{
  *(a1 + 8) = a2[1];
  v3 = *a1;
  *a1 = *a2;
  swift_unknownObjectRelease(v3);
  return a1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<1u>>,true,16ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<1u>>,true,16ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      *(result + 4) = 0;
      *(result + 12) = 0;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 12) = 0;
    *(result + 16) = 1;
    return result;
  }

  *(result + 16) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

void *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<2u>>,true,24ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(void *a1, uint64_t a2)
{
  a1[1] = *(a2 + 8);
  a1[2] = *(a2 + 16);
  v3 = *a2;
  *a1 = *a2;
  swift_unknownObjectRetain(v3);
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<2u>>::initializeWithCopy(void *a1, uint64_t a2)
{
  a1[1] = *(a2 + 8);
  a1[2] = *(a2 + 16);
  v3 = *a2;
  *a1 = *a2;
  swift_unknownObjectRetain(v3);
  return a1;
}

uint64_t swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<2u>>::assignWithCopy(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  swift_unknownObjectRetain(v3);
  swift_unknownObjectRelease(v4);
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<2u>>::initializeWithTake(void *result, void *a2)
{
  result[1] = a2[1];
  result[2] = a2[2];
  *result = *a2;
  return result;
}

uint64_t swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<2u>>::assignWithTake(uint64_t a1, void *a2)
{
  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  v3 = *a1;
  *a1 = *a2;
  swift_unknownObjectRelease(v3);
  return a1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<2u>>,true,24ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ClassExistentialBox<2u>>,true,24ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      *(result + 12) = 0;
      *(result + 4) = 0;
      *(result + 20) = 0;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 24) = 1;
    return result;
  }

  *(result + 24) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

char *swift::metadataimpl::NonFixedBufferValueWitnesses<swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>,true>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

void **swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::initializeWithCopy(void **a1, void **a2, uint64_t a3)
{
  v4 = *(a3 + 8) & 0xFFFFFF;
  if (v4)
  {
    v5 = 0;
    if (v4 < 4)
    {
      goto LABEL_7;
    }

    if ((a1 - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v5 = *(a3 + 8) & 0xFFFFFCLL;
    v6 = (a2 + 3);
    v7 = a1 + 3;
    v8 = v5;
    do
    {
      v9 = *v6;
      *(v7 - 1) = *(v6 - 1);
      *v7 = v9;
      v6 += 2;
      v7 += 2;
      v8 -= 4;
    }

    while (v8);
    if (v5 != v4)
    {
LABEL_7:
      v10 = v4 - v5;
      v11 = 8 * v5 + 8;
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      do
      {
        v14 = *v13++;
        *v12++ = v14;
        --v10;
      }

      while (v10);
    }
  }

  v15 = *a2;
  *a1 = *a2;
  swift_unknownObjectRetain(v15);
  return a1;
}

void **swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::assignWithCopy(void **a1, void **a2, uint64_t a3)
{
  v4 = *(a3 + 8) & 0xFFFFFF;
  if (v4)
  {
    v5 = 0;
    if (v4 < 4)
    {
      goto LABEL_7;
    }

    if ((a1 - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v5 = *(a3 + 8) & 0xFFFFFCLL;
    v6 = (a2 + 3);
    v7 = a1 + 3;
    v8 = v5;
    do
    {
      v9 = *v6;
      *(v7 - 1) = *(v6 - 1);
      *v7 = v9;
      v6 += 2;
      v7 += 2;
      v8 -= 4;
    }

    while (v8);
    if (v5 != v4)
    {
LABEL_7:
      v10 = v4 - v5;
      v11 = 8 * v5 + 8;
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      do
      {
        v14 = *v13++;
        *v12++ = v14;
        --v10;
      }

      while (v10);
    }
  }

  v15 = *a2;
  v16 = *a1;
  *a1 = *a2;
  swift_unknownObjectRetain(v15);
  swift_unknownObjectRelease(v16);
  return a1;
}

void *swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::initializeWithTake(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 8) & 0xFFFFFF;
  if (v3)
  {
    v4 = 0;
    if (v3 < 4)
    {
      goto LABEL_7;
    }

    if ((result - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v4 = *(a3 + 8) & 0xFFFFFCLL;
    v5 = (a2 + 3);
    v6 = result + 3;
    v7 = v4;
    do
    {
      v8 = *v5;
      *(v6 - 1) = *(v5 - 1);
      *v6 = v8;
      v5 += 2;
      v6 += 2;
      v7 -= 4;
    }

    while (v7);
    if (v4 != v3)
    {
LABEL_7:
      v9 = v3 - v4;
      v10 = 8 * v4 + 8;
      v11 = (result + v10);
      v12 = (a2 + v10);
      do
      {
        v13 = *v12++;
        *v11++ = v13;
        --v9;
      }

      while (v9);
    }
  }

  *result = *a2;
  return result;
}

void **swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::assignWithTake(void **a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 8) & 0xFFFFFF;
  if (v4)
  {
    v5 = 0;
    if (v4 < 4)
    {
      goto LABEL_7;
    }

    if ((a1 - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v5 = *(a3 + 8) & 0xFFFFFCLL;
    v6 = (a2 + 3);
    v7 = a1 + 3;
    v8 = v5;
    do
    {
      v9 = *v6;
      *(v7 - 1) = *(v6 - 1);
      *v7 = v9;
      v6 += 2;
      v7 += 2;
      v8 -= 4;
    }

    while (v8);
    if (v5 != v4)
    {
LABEL_7:
      v10 = v4 - v5;
      v11 = 8 * v5 + 8;
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      do
      {
        v14 = *v13++;
        *v12++ = v14;
        --v10;
      }

      while (v10);
    }
  }

  v15 = *a1;
  *a1 = *a2;
  swift_unknownObjectRelease(v15);
  return a1;
}

uint64_t swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedClassExistentialBox,true>::getEnumTagSinglePayload(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 84);
  if (a2 <= v5)
  {
    goto LABEL_12;
  }

  if (v4 > 3)
  {
    goto LABEL_3;
  }

  v8 = ((a2 - v5 + ~(-1 << (8 * v4))) >> (8 * v4)) + 1;
  if (v8 < 2)
  {
    goto LABEL_12;
  }

  if (v8 < 0x100)
  {
LABEL_3:
    v6 = *(a1 + v4);
  }

  else if (v8 >= 0x10000)
  {
    v6 = *(a1 + v4);
  }

  else
  {
    v6 = *(a1 + v4);
  }

  if (v6)
  {
    v7 = (v6 - 1) << (8 * v4);
    if (v4 > 3)
    {
      v7 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v10 = *a1;
        return v5 + (v10 | v7) + 1;
      }

      if (v4 == 3)
      {
        v10 = *a1 | (*(a1 + 2) << 16);
        return v5 + (v10 | v7) + 1;
      }

      goto LABEL_23;
    }

    v10 = 0;
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_23:
        v10 = *a1;
        return v5 + (v10 | v7) + 1;
      }

      v10 = *a1;
    }

    return v5 + (v10 | v7) + 1;
  }

LABEL_12:
  if (!v5)
  {
    return 0;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<1u>>,true,40ul,8ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

uint64_t swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<1u>>::destroy(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return *a1;
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<1u>>::initializeWithCopy(void *a1, uint64_t a2)
{
  a1[3] = *(a2 + 24);
  a1[4] = *(a2 + 32);
  v3 = *(*(a2 + 24) - 8);
  if ((*(v3 + 82) & 2) != 0)
  {
    v4 = *a2;
    *a1 = *a2;
    v4;
  }

  else
  {
    (*(v3 + 16))(a1);
  }

  return a1;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<1u>>::initializeWithTake(__n128 *a1, __n128 *a2)
{
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<1u>>,true,40ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 ^ 0x80000000;
  }

  v2 = *(a1 + 24);
  if (HIDWORD(v2))
  {
    return 0;
  }

  else
  {
    return (v2 + 1);
  }
}

double swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<1u>>,true,40ul,8ul,true>::storeEnumTagSinglePayload(uint64_t a1, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      result = 0.0;
      *(a1 + 4) = 0u;
      *(a1 + 20) = 0u;
      *(a1 + 36) = 0;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *(a1 + 24) = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    result = 0.0;
    *(a1 + 4) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 36) = 0;
    *(a1 + 40) = 1;
    return result;
  }

  *(a1 + 40) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t *swift::metadataimpl::OpaqueExistentialBoxBase::assignWithTake<swift::metadataimpl::OpaqueExistentialBox<1u>::Container>(uint64_t *a1, uint64_t *a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v3 = a2[3];
  v4 = a1[3];
  if (v3 == v4)
  {
    v7 = *(v3 - 8);
    if ((*(v7 + 82) & 2) == 0)
    {
      (*(v7 + 40))(a1);
      return a1;
    }

    v11 = *a1;
    *a1 = *a2;
LABEL_20:
    v11;
    return a1;
  }

  v5 = *(v4 - 8);
  if (v5)
  {
    v6 = *(v4 - 8);
  }

  else
  {
    v6 = 0;
  }

  if (!*(v3 - 8))
  {
    v8 = 0;
    if ((*(v6 + 82) & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v8 = *(v3 - 8);
  if ((*(v6 + 82) & 2) != 0)
  {
LABEL_13:
    v10 = *a1;
    a1[3] = v3;
    a1[4] = a2[4];
    if ((*(v8 + 82) & 2) != 0)
    {
      *a1 = *a2;
    }

    else
    {
      (*(*(v3 - 8) + 32))(a1);
    }

    v11 = v10;
    goto LABEL_20;
  }

LABEL_10:
  (*(v5 + 32))(v13, a1, v4);
  a1[3] = a2[3];
  a1[4] = a2[4];
  if ((*(v8 + 82) & 2) != 0)
  {
    *a1 = *a2;
  }

  else
  {
    (*(*(v3 - 8) + 32))(a1, a2, v3);
  }

  (*(*(v4 - 8) + 8))(v13, v4);
  return a1;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::OpaqueExistentialValueWitnessTableCacheEntry>,swift::LazyMutex>::find<anonymous namespace::OpaqueExistentialValueWitnessTableCacheEntry::Key>(int *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v17 = *a1 & 0x7FFFFFFF;
  v18[0] = ((((((((v8 & 0x80000000) >> 7) & 0xFF000000 | ((v8 & 0x80000000) >> 8)) ^ 0x1830007) & 0x800000) << 9) & 0xFFFFFFFF80000000 | v8 & 0x7FFFFFFF) ^ 0x100000000) >> 32;
  v9 = __swift::__runtime::llvm::hash_combine<unsigned int,BOOL>(&v17, v18);
  v10 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v11 = 4;
  if ((a2 & 3) != 0 && v10)
  {
    v11 = *v10;
  }

  v12 = ~(-1 << v11);
  if ((a2 & 3) == 0)
  {
    v10 = 0;
  }

  while (1)
  {
    v13 = v9 & v12;
    if ((v9 & v12) <= 1)
    {
      v13 = 1;
    }

    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v14) = v10 + v13;
      LOBYTE(v14) = atomic_load_explicit(&v10[v13], memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (a2 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_20:
    v15 = (v14 - 1);
    if (v15 < a3 && ((((*(*(a4 + 8 * v15) + 64) + 0x3FFFFFFE0) >> 3) & 0x7FFFFFFF | ((*(*(a4 + 8 * v15) + 80) >> 23) << 31)) ^ *a1) == 0x80000000)
    {
      return a4 + 8 * v15;
    }

    v9 = v13 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v14) = v10 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit(&v10[2 * v13], memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_20;
  }

  LODWORD(v14) = atomic_load_explicit(&v10[4 * v13], memory_order_acquire);
  if (v14)
  {
    goto LABEL_20;
  }

  return 0;
}

unint64_t __swift::__runtime::llvm::hash_combine<unsigned int,BOOL>(_DWORD *a1, char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  {
    v4 = a1;
    v5 = a2;
    getCache();
    a1 = v4;
    a2 = v5;
  }

  v10 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  LODWORD(v7[0]) = *a1;
  v6 = 0;
  v2 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<swift::ProtocolClassConstraint>(v7, &v6, v7 + 4, v8, *a2);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, v6, v2, v8);
}

char *swift::metadataimpl::NonFixedBufferValueWitnesses<swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>,true>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

uint64_t swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::destroy(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return *a1;
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::initializeWithCopy(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a2 + 24);
  a1[3] = v5;
  v6 = *&v4 & 0xFFFFFFLL;
  if (v6)
  {
    v7 = 0;
    if (v6 < 4)
    {
      goto LABEL_7;
    }

    if (a1 - a2 < 0x20)
    {
      goto LABEL_7;
    }

    v7 = v6 & 0xFFFFFC;
    v8 = (a2 + 48);
    v9 = a1 + 6;
    v10 = v6 & 0xFFFFFC;
    do
    {
      v11 = *v8;
      *(v9 - 1) = *(v8 - 1);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v7 != v6)
    {
LABEL_7:
      v12 = v6 - v7;
      v13 = 8 * v7 + 32;
      v14 = (a1 + v13);
      v15 = (a2 + v13);
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
    }

    v5 = *(a2 + 24);
  }

  v17 = *(v5 - 8);
  if ((*(v17 + 82) & 2) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    v18;
  }

  else
  {
    (*(v17 + 16))(a1);
  }

  return a1;
}

__n128 swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::initializeWithTake(__n128 *a1, __n128 *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  v4 = *&v3 & 0xFFFFFFLL;
  if (v4)
  {
    v5 = 0;
    if (v4 < 4)
    {
      goto LABEL_7;
    }

    if ((a1 - a2) < 0x20)
    {
      goto LABEL_7;
    }

    v5 = v4 & 0xFFFFFC;
    v6 = a2 + 3;
    v7 = a1 + 3;
    v8 = v4 & 0xFFFFFC;
    do
    {
      v9 = *v6;
      v7[-1] = v6[-1];
      *v7 = v9;
      v6 += 2;
      v7 += 2;
      v8 -= 4;
    }

    while (v8);
    if (v5 != v4)
    {
LABEL_7:
      v10 = v4 - v5;
      v11 = 8 * v5 + 32;
      v12 = (a1->n128_u64 + v11);
      v13 = (a2 + v11);
      do
      {
        v14 = *v13++;
        *v12++ = v14;
        --v10;
      }

      while (v10);
    }
  }

  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t swift::metadataimpl::NonFixedValueWitnesses<swift::metadataimpl::NonFixedOpaqueExistentialBox,true>::getEnumTagSinglePayload(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 84);
  if (a2 <= v5)
  {
    goto LABEL_12;
  }

  if (v4 > 3)
  {
    goto LABEL_3;
  }

  v8 = ((a2 - v5 + ~(-1 << (8 * v4))) >> (8 * v4)) + 1;
  if (v8 < 2)
  {
    goto LABEL_12;
  }

  if (v8 < 0x100)
  {
LABEL_3:
    v6 = *(a1 + v4);
  }

  else if (v8 >= 0x10000)
  {
    v6 = *(a1 + v4);
  }

  else
  {
    v6 = *(a1 + v4);
  }

  if (v6)
  {
    v7 = (v6 - 1) << (8 * v4);
    if (v4 > 3)
    {
      v7 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v11 = *a1;
        return v5 + (v11 | v7) + 1;
      }

      if (v4 == 3)
      {
        v11 = *a1 | (*(a1 + 2) << 16);
        return v5 + (v11 | v7) + 1;
      }

      goto LABEL_23;
    }

    v11 = 0;
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_23:
        v11 = *a1;
        return v5 + (v11 | v7) + 1;
      }

      v11 = *a1;
    }

    return v5 + (v11 | v7) + 1;
  }

LABEL_12:
  if (!v5)
  {
    return 0;
  }

  v9 = *(a1 + 3);
  if (HIDWORD(v9))
  {
    return 0;
  }

  else
  {
    return (v9 + 1);
  }
}

uint64_t *swift::metadataimpl::OpaqueExistentialBoxBase::assignWithTake<swift::metadataimpl::NonFixedOpaqueExistentialBox::Container,swift::TargetMetadata<swift::InProcess> const*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2 == a1)
  {
    return a1;
  }

  v4 = a2[3];
  v5 = a1[3];
  if (v4 == v5)
  {
    v8 = *(v4 - 8);
    if ((*(v8 + 82) & 2) == 0)
    {
      (*(v8 + 40))(a1);
      return a1;
    }

    v37 = *a1;
    *a1 = *a2;
LABEL_36:
    v37;
    return a1;
  }

  v6 = *(v5 - 8);
  if (v6)
  {
    v7 = *(v5 - 8);
  }

  else
  {
    v7 = 0;
  }

  if (*(v4 - 8))
  {
    v9 = *(v4 - 8);
    if ((*(v7 + 82) & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v9 = 0;
  if ((*(v7 + 82) & 2) != 0)
  {
LABEL_21:
    v24 = *a1;
    v25 = *(a3 + 8);
    a1[3] = v4;
    v26 = *&v25 & 0xFFFFFFLL;
    if (v26)
    {
      v27 = 0;
      if (v26 < 4)
      {
        goto LABEL_27;
      }

      if ((a1 - a2) < 0x20)
      {
        goto LABEL_27;
      }

      v27 = v26 & 0xFFFFFC;
      v28 = (a2 + 6);
      v29 = a1 + 6;
      v30 = v26 & 0xFFFFFC;
      do
      {
        v31 = *v28;
        *(v29 - 1) = *(v28 - 1);
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 4;
      }

      while (v30);
      if (v27 != v26)
      {
LABEL_27:
        v32 = v26 - v27;
        v33 = 8 * v27 + 32;
        v34 = (a1 + v33);
        v35 = (a2 + v33);
        do
        {
          v36 = *v35++;
          *v34++ = v36;
          --v32;
        }

        while (v32);
      }
    }

    if ((*(v9 + 82) & 2) != 0)
    {
      *a1 = *a2;
    }

    else
    {
      (*(*(v4 - 8) + 32))(a1);
    }

    v37 = v24;
    goto LABEL_36;
  }

LABEL_10:
  (*(v6 + 32))(v39, a1, v5);
  v12 = *(a3 + 8);
  a1[3] = a2[3];
  v13 = *&v12 & 0xFFFFFFLL;
  if (v13)
  {
    v14 = 0;
    if (v13 < 4)
    {
      goto LABEL_16;
    }

    if ((a1 - a2) < 0x20)
    {
      goto LABEL_16;
    }

    v14 = v13 & 0xFFFFFC;
    v15 = (a2 + 6);
    v16 = a1 + 6;
    v17 = v13 & 0xFFFFFC;
    do
    {
      v18 = *v15;
      *(v16 - 1) = *(v15 - 1);
      *v16 = v18;
      v15 += 2;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != v13)
    {
LABEL_16:
      v19 = v13 - v14;
      v20 = 8 * v14 + 32;
      v21 = (a1 + v20);
      v22 = (a2 + v20);
      do
      {
        v23 = *v22++;
        *v21++ = v23;
        --v19;
      }

      while (v19);
    }
  }

  if ((*(v9 + 82) & 2) != 0)
  {
    *a1 = *a2;
  }

  else
  {
    (*(*(v4 - 8) + 32))(a1, a2, v4);
  }

  (*(*(v5 - 8) + 8))(v39, v5);
  return a1;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::ExtendedExistentialTypeShapeCacheEntry>,swift::LazyMutex>::find<anonymous namespace::ExtendedExistentialTypeShapeCacheEntry::Key>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = __swift::__runtime::llvm::hash_value(*(a1 + 8), *(a1 + 16));
  v8 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v9 = 4;
  v20 = a2;
  if ((a2 & 3) != 0 && v8)
  {
    v9 = *v8;
  }

  v10 = ~(-1 << v9);
  v11 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v12 = 0;
  }

  while (1)
  {
    v13 = (v7 & v10) <= 1 ? 1 : v7 & v10;
    if (v11 > 1)
    {
      break;
    }

    if (v11)
    {
      LODWORD(v14) = v12 + v13;
      LOBYTE(v14) = atomic_load_explicit((v12 + v13), memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (v20 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_22:
    v15 = (v14 - 1);
    if (v15 < a3)
    {
      v16 = *(a1 + 16);
      v17 = **(a4 + 8 * v15);
      if (v17 == *a1)
      {
        return a4 + 8 * v15;
      }

      v18 = (*(v17 + 8) + v17 + 8);
      if (v18)
      {
        if (strlen(v18) == v16 && (!v16 || !memcmp(v18, *(a1 + 8), v16)))
        {
          return a4 + 8 * v15;
        }
      }

      else if (!v16)
      {
        return a4 + 8 * v15;
      }
    }

    v7 = v13 + 1;
  }

  if (v11 == 2)
  {
    LODWORD(v14) = v12 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit((v12 + 2 * v13), memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_22;
  }

  LODWORD(v14) = atomic_load_explicit((v12 + 4 * v13), memory_order_acquire);
  if (v14)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::ExtendedExistentialTypeCacheEntry>,swift::LazyMutex>::find<anonymous namespace::ExtendedExistentialTypeCacheEntry::Key>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v22[0] = *(a1 + 24);
  v8 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,unsigned int>((a1 + 32), v22);
  v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 4;
  if ((a2 & 3) != 0 && v9)
  {
    v10 = *v9;
  }

  v11 = ~(-1 << v10);
  if ((a2 & 3) != 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v12 = 0;
  }

  while (1)
  {
    v13 = (v8 & v11) <= 1 ? 1 : v8 & v11;
    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v14) = v12 + v13;
      LOBYTE(v14) = atomic_load_explicit((v12 + v13), memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (a2 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_22:
    v15 = (v14 - 1);
    if (v15 >= a3)
    {
      goto LABEL_8;
    }

    v16 = *(a4 + 8 * v15);
    v21 = *(a1 + 32);
    v17 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v17;
    v18 = *(v16 + 24);
    if (v18)
    {
      if (v21 != v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v21)
      {
        goto LABEL_8;
      }

      v18 = 0;
    }

    if (v23 == v21 && (swift::MetadataCacheKey::operator==(v22, v20) & 1) != 0)
    {
      return a4 + 8 * v15;
    }

LABEL_8:
    v8 = v13 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v14) = v12 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit((v12 + 2 * v13), memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_22;
  }

  LODWORD(v14) = atomic_load_explicit((v12 + 4 * v13), memory_order_acquire);
  if (v14)
  {
    goto LABEL_22;
  }

  return 0;
}

_BYTE *swift::TargetTypeContextDescriptor<swift::InProcess>::getForeignMetadataInitialization(_BYTE *result)
{
  v2 = *result & 0x1F;
  switch(v2)
  {
    case 18:
      if (result)
      {
      }

      else
      {
        result = 0;
      }

      return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(result);
    case 17:
      if (result)
      {
      }

      else
      {
        result = 0;
      }

      return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(result);
    case 16:
      if (result)
      {
        v3 = result;
      }

      else
      {
        v3 = 0;
      }

      return (swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v3) + 4 * ((*v3 >> 29) & 1));
    default:
      __break(1u);
      break;
  }

  return result;
}

void swift::MetadataCacheEntryBase<anonymous namespace::ForeignMetadataCacheEntry,int>::awaitSatisfyingState(atomic_ullong *a1, __int16 a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v4 = explicit & 7;
  if (v4 - 1 < 3)
  {
    if (a2 > 0x3Eu)
    {
      if (a2 == 255)
      {
        return;
      }

      if (a2 == 63)
      {
        if (v4 > 1)
        {
          return;
        }

LABEL_13:
        v5 = a2 & 0x100;
        if ((explicit & 8) != 0 && (a2 & 0x100) != 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!a2)
      {
        goto LABEL_13;
      }

      if (a2 == 1)
      {
        if (v4 >= 3)
        {
          return;
        }

        goto LABEL_13;
      }
    }

LABEL_53:
    __break(1u);
    return;
  }

  if (v4 == 4)
  {
    return;
  }

  if ((explicit & 7) != 0)
  {
    goto LABEL_53;
  }

  v5 = a2 & 0x100;
LABEL_16:
  v6 = 0;
  v19 = &unk_1ED416028;
  v20 = 0;
  v21 = 0;
  v8 = a2;
  while (1)
  {
    os_unfair_lock_lock(&unk_1ED416028);
    if (v6)
    {
      if (*v6 == 1)
      {
        v9 = v6[2];
        v6[2] = 0;
        if (v9)
        {
          MEMORY[0x1865C92E0](v9, 0x80C4018A671A6);
        }

        v6;
      }

      else
      {
        --*v6;
      }
    }

    v10 = *a1;
    v11 = *a1 & 7;
    if ((v11 - 1) >= 3)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      if (v11 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

    if (v8 > 62)
    {
      if (v8 == 63)
      {
        if (v11 > 1)
        {
          goto LABEL_47;
        }

        goto LABEL_33;
      }

      if (v8 != 255)
      {
        goto LABEL_53;
      }

LABEL_47:
      os_unfair_lock_unlock(&unk_1ED416028);
      goto LABEL_48;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_53;
      }

      if (v11 >= 3)
      {
        goto LABEL_47;
      }
    }

LABEL_33:
    if ((v10 & 8) == 0)
    {
      break;
    }

    if (v5)
    {
      goto LABEL_47;
    }

LABEL_18:
    v6 = (v10 & 0xFFFFFFFFFFFFFFF0);
    ++*(v10 & 0xFFFFFFFFFFFFFFF0);
    os_unfair_lock_unlock(&unk_1ED416028);
    os_unfair_lock_lock((v10 & 0xFFFFFFFFFFFFFFF0 | 8));
    os_unfair_lock_unlock((v10 & 0xFFFFFFFFFFFFFFF0 | 8));
  }

  v12 = swift_slowAlloc(0x30, 0xFuLL);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 1;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  os_unfair_lock_lock((v12 + 8));
  v20 = v12;
  v13 = (v10 & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    *(v12 + 24) = *v13;
    v14 = *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10);
    *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
    v15 = *(v12 + 16);
    *(v12 + 16) = v14;
    if (v15)
    {
      MEMORY[0x1865C92E0](v15, 0x80C4018A671A6);
    }
  }

  atomic_store(v10 & 7 | v12 | 8, a1);
  LOBYTE(v21) = 1;
  os_unfair_lock_unlock(&unk_1ED416028);
  HIBYTE(v21) = v11;
  if (v13)
  {
    v16 = *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10);
    *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
    if (v16)
    {
      MEMORY[0x1865C92E0](v16, 0x80C4018A671A6);
    }

    MEMORY[0x1865C92E0](v10 & 0xFFFFFFFFFFFFFFF0, 0x1060C4048D9C6C4);
  }

LABEL_48:
  v17 = v20;
  if (v20)
  {
    os_unfair_lock_unlock(v20 + 2);
    v18 = *&v17[4]._os_unfair_lock_opaque;
    *&v17[4]._os_unfair_lock_opaque = 0;
    if (v18)
    {
      MEMORY[0x1865C92E0](v18, 0x80C4018A671A6);
    }

    v17;
  }
}

uint64_t swift::MetadataCacheEntryBase<anonymous namespace::ForeignMetadataCacheEntry,int>::doInitialization(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v34 = *(v7 + 16);
  if (!v34)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = &v35;
  }

  v8 = a3;
  for (i = v6; ; i = *(a1 + 8))
  {
    v10 = *(a2 + 17);
    v11 = i[1];
    if (*i == 516 || *i == 515)
    {
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else if (v11)
    {
LABEL_13:
      v12 = i[1];
      goto LABEL_15;
    }

    v12 = 0;
LABEL_15:
    ForeignMetadataInitialization = swift::TargetTypeContextDescriptor<swift::InProcess>::getForeignMetadataInitialization(v12);
    v14 = *ForeignMetadataInitialization;
    v15 = &ForeignMetadataInitialization[v14];
    v16 = !v14 || v15 == 0;
    if (!v16 && v15 && (result = (v15)(v6, v34, 0)) != 0)
    {
      v19 = result;
      v20 = (*(*(v6 - 1) + 82) & 0x40) != 0 ? 1 : 2;
    }

    else
    {
      result = swift::checkTransitiveCompleteness(v6);
      v19 = result;
      if (!result)
      {
        v29 = 4;
        *(a2 + 17) = 4;
        goto LABEL_48;
      }

      v20 = 3;
    }

    v21 = v18;
    *(a2 + 17) = v20;
    if (v8 > 62)
    {
      break;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_58;
      }

      if (v20 == 3)
      {
        goto LABEL_46;
      }
    }

LABEL_33:
    if ((a3 & 0x100) != 0)
    {
      goto LABEL_46;
    }

    if (v10 < v20)
    {
      v22 = *a2;
      os_unfair_lock_lock(*a2);
      v23 = *(a2 + 8);
      if (*v23 == 1)
      {
        v24 = *(a2 + 8);
      }

      else
      {
        v24 = swift_slowAlloc(0x30, 0xFuLL);
        *v24 = 0u;
        *(v24 + 16) = 0u;
        *(v24 + 32) = 0u;
        *v24 = 1;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        os_unfair_lock_lock((v24 + 8));
        v25 = v23[2];
        v23[2] = 0;
        v26 = *(v24 + 16);
        *(v24 + 16) = v25;
        if (v26)
        {
          MEMORY[0x1865C92E0](v26, 0x80C4018A671A6);
        }
      }

      *(v24 + 24) = v19;
      *(v24 + 32) = v21;
      atomic_store(*(a2 + 17) | v24 | 8, a1);
      if (v24 != v23)
      {
        os_unfair_lock_unlock((*(a2 + 8) + 8));
        v27 = *(a2 + 8);
        if (*v27 == 1)
        {
          v28 = v27[2];
          v27[2] = 0;
          if (v28)
          {
            MEMORY[0x1865C92E0](v28, 0x80C4018A671A6);
          }

          v27;
        }

        else
        {
          --*v27;
        }

        *(a2 + 8) = v24;
      }

      os_unfair_lock_unlock(v22);
      v7 = *(a2 + 8);
    }

    swift::blockOnMetadataDependency(*(a1 + 8), a3, v19, v21);
  }

  if (v8 == 63)
  {
    if (v20 > 1u)
    {
      goto LABEL_46;
    }

    goto LABEL_33;
  }

  if (v8 != 255)
  {
LABEL_58:
    __break(1u);
    return result;
  }

LABEL_46:
  if (!*(v7 + 16) && v35 | *(&v35 + 1) | v36 | *(&v36 + 1))
  {
    operator new();
  }

  v29 = *(a2 + 17);
LABEL_48:
  v30 = *(v7 + 16);
  *(v7 + 16) = 0;
  if (v19 | v30)
  {
    operator new();
  }

  v31 = *a2;
  os_unfair_lock_lock(*a2);
  atomic_store(v29, a1);
  os_unfair_lock_unlock((*(a2 + 8) + 8));
  v32 = *(a2 + 8);
  if (*v32 == 1)
  {
    v33 = v32[2];
    v32[2] = 0;
    if (v33)
    {
      MEMORY[0x1865C92E0](v33, 0x80C4018A671A6);
    }

    v32;
  }

  else
  {
    --*v32;
  }

  os_unfair_lock_unlock(v31);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  return *(a1 + 8);
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::WitnessTableCacheEntry>,swift::Mutex>::find<swift::TargetMetadata<swift::InProcess> const*>(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  {
    v19 = a4;
    v16 = a3;
    v18 = a2;
    v15 = a1;
    v17 = v4;
    getCache();
    a3 = v16;
    v4 = v17;
    a1 = v15;
    a2 = v18;
    a4 = v19;
  }

  v5 = HIDWORD(v4);
  v6 = 0x9DDFEA08EB382D69 * ((__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v4) ^ HIDWORD(v4));
  v7 = 0x1DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v9 = 4;
  if ((a2 & 3) != 0 && v8)
  {
    v9 = *v8;
  }

  v10 = ~(-1 << v9);
  if ((a2 & 3) == 0)
  {
    v8 = 0;
  }

  while (1)
  {
    v11 = v7 & v10;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v12) = v8 + v11;
      LOBYTE(v12) = atomic_load_explicit(&v8[v11], memory_order_acquire);
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      v12 = (a2 >> (4 * v11)) & 0xF;
      if (!v12)
      {
        return 0;
      }
    }

LABEL_22:
    v13 = (v12 - 1);
    if (v13 < a3 && *(*(a4 + 8 * v13) + 8) == *a1)
    {
      return a4 + 8 * v13;
    }

    v7 = v11 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v12) = v8 + 2 * v11;
    LOWORD(v12) = atomic_load_explicit(&v8[2 * v11], memory_order_acquire);
    if (!v12)
    {
      return 0;
    }

    goto LABEL_22;
  }

  LODWORD(v12) = atomic_load_explicit(&v8[4 * v11], memory_order_acquire);
  if (v12)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t swift::areAllTransitiveMetadataComplete_cheap(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(uint64_t *a1)
{
  result = swift::TargetMetadata<swift::InProcess>::isCanonicalStaticallySpecializedGenericMetadata(a1);
  if (result)
  {
    return 0;
  }

  v3 = *a1;
  if ((*a1 - 1) >= 0x7FF)
  {
    v4 = a1[8];
    if (v4)
    {
LABEL_11:
      v5 = v4;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3 - 515) < 0xFFFFFFFD)
    {
      if (v3 != 515)
      {
        if (v3 == 769)
        {
          return a1[1] != 0;
        }

        return 0;
      }

      if (a1[1])
      {
        v8 = a1[1];
      }

      else
      {
        v8 = 0;
      }

LABEL_26:
      swift::TargetTypeContextDescriptor<swift::InProcess>::getForeignMetadataInitialization(v8);
      return 0;
    }

    v4 = a1[1];
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_13:
  if ((*v5 & 0x80) == 0)
  {
    v6 = HIWORD(*v5) & 3;
    if (v6 <= 1)
    {
      return v6 != 0;
    }

    if (v6 == 2)
    {
      v8 = v5;
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  v7 = *v5 & 0x1F;
  if ((v7 - 17) < 2)
  {
LABEL_17:
    getCache(v5);
    return 1;
  }

  if (v7 == 16)
  {
    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    if ((*(v9 + 3) & 0x20) != 0)
    {
      v10 = v9[6];
      if (v10)
      {
        v11 = (v9 + v10 + 24);
      }

      else
      {
        v11 = 0;
      }

      if (!*v11)
      {
        computeMetadataBoundsFromSuperclass(v9, v11);
      }
    }

    goto LABEL_17;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v17 = a2;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *v4;
  v7 = (*a1 + 8 * v6);
  if (v6)
  {
    v8 = 8 * v6;
    while (*v5 != a2)
    {
      ++v5;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  if (v5 != v7)
  {
    return 0;
  }

LABEL_7:
  if (v6 > 7)
  {
    std::__hash_table<swift::TargetMethodDescriptor<swift::InProcess> const*,std::hash<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::equal_to<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::allocator<swift::TargetMethodDescriptor<swift::InProcess> const*>>::__emplace_unique_key_args<swift::TargetMethodDescriptor<swift::InProcess> const*,swift::TargetMethodDescriptor<swift::InProcess> const*>(*(a1 + 16), &v17);
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    v2 = v17;
  }

  else
  {
    *v4 = v6 + 1;
    *v7 = a2;
  }

  v18 = 256;
  performOnMetadataCache<swift::MetadataResponse,swift_checkMetadataState::CheckStateCallbacks>(v2, &v18);
  if (!v10)
  {
    return 0;
  }

  if (v10 == 1)
  {
    v11 = *(a1 + 32);
    v12 = v17;
    v13 = *(v11 + 8);
    if (v13 >= *(v11 + 12))
    {
      v16 = v17;
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v11 + 16, v13 + 1, 8);
      v12 = v16;
      LODWORD(v13) = *(v11 + 8);
    }

    result = 0;
    *(*v11 + 8 * v13) = v12;
    ++*(v11 + 8);
  }

  else
  {
    v15 = *(a1 + 24);
    result = 1;
    *v15 = v17;
    v15[1] = 1;
  }

  return result;
}

unint64_t swift::ResolveAsSymbolicReference::operator()(swift::Demangle::__runtime::NodeFactory **a1, int a2, int a3, uint64_t a4, swift::SymbolInfo *this)
{
  if (a4)
  {
    v5 = (this + a4);
  }

  else
  {
    v5 = 0;
  }

  if (a2 != 1)
  {
    v5 = (this + a4);
  }

  if (a3 == 1)
  {
    if (a2)
    {
      __break(1u);
LABEL_35:
      swift::ResolveAsSymbolicReference::operator()(v16, this, a4);
    }

    if (!*v5)
    {
      goto LABEL_35;
    }

    v5 = *v5;
  }

  if (!v5)
  {
    goto LABEL_35;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = v5;
      v6 = 350;
    }

    else
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          v6 = 361;
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_23;
      }

      v7 = v5;
      v6 = 351;
    }

LABEL_22:
    v5 = v7;
    goto LABEL_23;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v6 = 0;
      goto LABEL_23;
    }

    v7 = v5;
    v6 = 313;
    goto LABEL_22;
  }

  v10 = *v5 & 0x1F;
  if (v10 == 3)
  {
    v6 = 191;
  }

  else
  {
    if (v10 != 4)
    {
      if ((*v5 & 0x10) == 0)
      {
        return 0;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 244, v5);
      v13 = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 243);
      swift::Demangle::__runtime::Node::addChild(v13, Node, *a1, v14, v15);
      return v13;
    }

    v6 = 315;
  }

LABEL_23:
  v8 = *a1;

  return swift::Demangle::__runtime::NodeFactory::createNode(v8, v6, v5);
}

unsigned int *swift::ResolveToDemanglingForContext::operator()(unsigned int *result, unsigned int *a2, int a3, int a4, uint64_t a5)
{
  v5 = (a5 + a4);
  if (a4)
  {
    v6 = (a5 + a4);
  }

  else
  {
    v6 = 0;
  }

  if (a2 == 1)
  {
    v5 = v6;
  }

  if (a3 != 1)
  {
    return _buildDemanglingForSymbolicReference(a2, v5, *result);
  }

  if (!a2)
  {
    if (*v5)
    {
      v5 = *v5;
    }

    else
    {
      v5 = 0;
    }

    return _buildDemanglingForSymbolicReference(a2, v5, *result);
  }

  __break(1u);
  return result;
}

unsigned int *_buildDemanglingForSymbolicReference(unsigned int *result, uint64_t a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  if (result > 1)
  {
    switch(result)
    {
      case 2:
        return swift::Demangle::__runtime::NodeFactory::createNode(a3, 350, a2);
      case 3:
        return swift::Demangle::__runtime::NodeFactory::createNode(a3, 351, a2);
      case 4:
        return swift::Demangle::__runtime::NodeFactory::createNode(a3, 361, a2);
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    if (result == 1)
    {
      return swift::Demangle::__runtime::NodeFactory::createNode(a3, 313, a2);
    }

    goto LABEL_16;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  return swift::_buildDemanglingForContext(v3, 0, 0, a3);
}

void swift::addImageTypeMetadataRecordBlockCallbackUnsafe(swift *this, unint64_t a2, char *a3)
{
  swift::libPrespecializedImageLoaded(this);
  if (qword_1ED426338 != -1)
  {
    swift::addImageTypeMetadataRecordBlockCallbackUnsafe(v5);
  }

  v6 = _MergedGlobals_1[0] <= a2 && unk_1ED426330 > a2;
  *&v8 = a2;
  *(&v8 + 1) = &a3[a2];
  if (v6)
  {
    v7 = &unk_1ED426390;
  }

  else
  {
    v7 = &unk_1ED426368;
  }
}

void swift::addImageTypeMetadataRecordBlockCallback(swift *this, unint64_t a2, char *a3)
{
  if (qword_1ED4263B8 != -1)
  {
    swift::addImageTypeMetadataRecordBlockCallback(this);
  }

  swift::libPrespecializedImageLoaded(this);
  if (qword_1ED426338 != -1)
  {
    swift::addImageTypeMetadataRecordBlockCallbackUnsafe(v5);
  }

  v6 = _MergedGlobals_1[0] <= a2 && unk_1ED426330 > a2;
  *&v8 = a2;
  *(&v8 + 1) = &a3[a2];
  if (v6)
  {
    v7 = &unk_1ED426390;
  }

  else
  {
    v7 = &unk_1ED426368;
  }
}

uint64_t swift::Lazy<TypeMetadataPrivateState>::defaultInitCallback(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return swift::initializeTypeMetadataRecordLookup(a1);
}

void swift_registerTypeMetadataRecords(unint64_t a1, uint64_t a2)
{
  if (qword_1ED4263B8 != -1)
  {
    v4 = a2;
    v5 = a1;
    swift::addImageTypeMetadataRecordBlockCallback(a1);
    a1 = v5;
    a2 = v4;
  }

  if (qword_1ED426338 != -1)
  {
    v6 = a2;
    v7 = a1;
    swift::addImageTypeMetadataRecordBlockCallbackUnsafe(a1);
    a1 = v7;
    a2 = v6;
  }

  v2 = _MergedGlobals_1[0] <= a1 && unk_1ED426330 > a1;
  *&v8 = a1;
  *(&v8 + 1) = a2;
  if (v2)
  {
    v3 = &unk_1ED426390;
  }

  else
  {
    v3 = &unk_1ED426368;
  }
}

BOOL swift::_isCImportedTagType(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x1Fu) - 17 > 1)
  {
    return 0;
  }

  if (*(a2 + 80) != 1)
  {
    goto LABEL_10;
  }

  if (*(a2 + 56) != 1)
  {
    if (!*(a2 + 72))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (**(a2 + 48) == 116 || *(a2 + 72) != 0)
  {
    return 0;
  }

LABEL_10:
  v3 = a1[1];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_19;
  }

  v4 = (a1 + (v3 & 0xFFFFFFFFFFFFFFFELL) + 4);
  if ((v3 & 1) == 0)
  {
    if (!v4)
    {
      v5 = 0;
      goto LABEL_19;
    }

LABEL_13:
    v5 = v4;
    goto LABEL_19;
  }

  v6 = *v4;
  if (*v4)
  {
    goto LABEL_26;
  }

  v5 = 0;
LABEL_19:
  while (1)
  {
    v8 = v5;
    if (v5)
    {
      if ((*v5 & 0x1F) == 0)
      {
        break;
      }
    }

    v5 = 0;
    v11 = v8[1];
    v9 = v8 + 1;
    v10 = v11;
    if (v11)
    {
      v4 = (v9 + (v10 & 0xFFFFFFFFFFFFFFFELL));
      v5 = 0;
      if (v10)
      {
        v6 = *v4;
        if (*v4)
        {
LABEL_26:
          v5 = v6;
        }
      }

      else if (v4)
      {
        goto LABEL_13;
      }
    }
  }

  v12 = v5 + v5[2] + 8;
  if (!v12 || strlen(v12) != 3)
  {
    return 0;
  }

  return *v12 == 24415 && *(v12 + 2) == 67;
}

size_t swift::ParsedTypeIdentity::parse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v3 = (a2 + 16);
  *(a2 + 80) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v5 = *(a1 + 8);
  v6 = (a1 + 8 + v5);
  if (v6)
  {
    result = strlen((a1 + 8 + v5));
  }

  else
  {
    result = 0;
  }

  *a2 = v6;
  *(a2 + 8) = result;
  if ((*(a1 + 2) & 4) == 0)
  {
    *v3 = *a2;
    return result;
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 1;
  v8 = &v6[result];
  v9 = &v6[result + 1];
  result = strlen(v9);
  if (result)
  {
    v10 = v8;
    do
    {
      v13 = *(v10 + 1);
      switch(v13)
      {
        case 'S':
          v11 = (a2 + 48);
          v12 = 24;
          break;
        case 'R':
          v11 = (a2 + 64);
          v12 = 40;
          break;
        case 'N':
          v6 = v10 + 2;
          v11 = (a2 + 32);
          v12 = 8;
          break;
        default:
          goto LABEL_10;
      }

      v8 = &v9[result];
      *v11 = v10 + 2;
      *(a2 + 32 + v12) = result - 1;
LABEL_10:
      v10 = &v9[result];
      v9 += result + 1;
      result = strlen(v9);
    }

    while (result);
  }

  *(a2 + 16) = v6;
  *(a2 + 24) = v8 - v6;
  return result;
}

uint64_t swift::_contextDescriptorMatchesMangling(uint64_t a1, const char *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return a2 == 0;
  }

  v3 = a1;
  while (1)
  {
    v4 = *(a2 + 8);
    if (v4 == 243)
    {
      v5 = *(a2 + 18);
      if ((v5 - 1) >= 2)
      {
        if (v5 != 5 || !*(a2 + 2))
        {
          a2 = 0;
          goto LABEL_19;
        }

        a2 = *a2;
      }

      a2 = *a2;
      if (!a2)
      {
        goto LABEL_19;
      }

      v4 = *(a2 + 8);
    }

    if (v4 == 244 || v4 == 191)
    {
      v6 = *a2 ? *a2 : 0;
      if (swift::equalContexts(v3, v6))
      {
        return 1;
      }
    }

LABEL_19:
    v7 = v3;
    v8 = v3;
    v9 = *v3;
    v10 = *v3 & 0x1F;
    if (v10 == 3)
    {
      if (*(a2 + 8) != 190)
      {
        return 0;
      }

      v18 = *(a2 + 18);
      v19 = a2;
      if (v18 != 2)
      {
        if (v18 != 5 || *(a2 + 2) < 2u)
        {
          v20 = 0;
          goto LABEL_47;
        }

        v19 = *a2;
      }

      v20 = *(v19 + 1);
LABEL_47:
      if (*(v20 + 16) != 103)
      {
        return 0;
      }

      v25 = *(v20 + 8);
      v26 = *(v7 + 8);
      if (strncmp(*v20, (v7 + 8 + v26), v25) || strlen((v8 + 8 + v26)) != v25)
      {
        return 0;
      }

      if ((v18 - 1) >= 2)
      {
        if (v18 != 5)
        {
          goto LABEL_25;
        }

LABEL_125:
        if (!*(a2 + 2))
        {
          goto LABEL_25;
        }

        a2 = *a2;
      }

LABEL_127:
      a2 = *a2;
      goto LABEL_159;
    }

    if (v10 != 1)
    {
      if (!v10)
      {
        if (*(a2 + 8) != 163)
        {
          return 0;
        }

        v11 = *a2;
        v12 = *(a2 + 1);
        v13 = *(v3 + 8);
        if (strncmp(v11, (v3 + 8 + v13), v12) || strlen((v3 + 8 + v13)) != v12)
        {
          return 0;
        }

LABEL_25:
        a2 = 0;
        goto LABEL_159;
      }

      if ((v9 & 0x10) == 0)
      {
        return 0;
      }

      v21 = v3;
      LOBYTE(v68[0]) = 0;
      LOBYTE(v77) = 0;
      v22 = *(a2 + 8);
      if (v22 <= 0xB0)
      {
        if (v22 == 25)
        {
          if ((v9 & 0x1F) != 0x10)
          {
            return 0;
          }
        }

        else if (v22 != 63 || (v9 & 0x1F) != 0x12)
        {
          return 0;
        }
      }

      else if (v22 != 177)
      {
        if (v22 == 245)
        {
          swift::ParsedTypeIdentity::parse(v3, v68);
          LOBYTE(v77) = 1;
          if (v76 != 1 || v73 != 1 || *v72 != 116)
          {
            return 0;
          }

          v21 = v3;
          v23 = 1;
LABEL_89:
          v40 = *(a2 + 18);
          v41 = a2;
          if (v40 != 2)
          {
            if (v40 != 5 || *(a2 + 2) < 2u)
            {
              v42 = 0;
LABEL_95:
              if (*(v42 + 8) != 216)
              {
                if ((v23 & 1) == 0)
                {
                  swift::ParsedTypeIdentity::parse(v21, v68);
                  LOBYTE(v77) = 1;
                }

                v47 = v76;
                if (v76 == 1 && v75)
                {
                  return 0;
                }

LABEL_116:
                if (*(v42 + 8) != 103)
                {
                  return 0;
                }

                v48 = *(v42 + 1);
                v49 = v47 ? 32 * (v71 != 0) : 0;
                v50 = v68 + v49;
                if (v48 != *(v50 + 1) || v48 && memcmp(*v42, *v50, v48))
                {
                  return 0;
                }

                v51 = *(a2 + 18);
                if ((v51 - 1) >= 2)
                {
                  if (v51 != 5)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_125;
                }

                goto LABEL_127;
              }

              if ((v23 & 1) == 0)
              {
                swift::ParsedTypeIdentity::parse(v21, v68);
                LOBYTE(v77) = 1;
              }

              v43 = v42[18];
              v44 = v42;
              if ((v43 - 1) >= 2)
              {
                v44 = *v42;
              }

              if (v76 != 1)
              {
                return 0;
              }

              v45 = *v44;
              v46 = *(v45 + 8);
              if (v75 != v46 || v46 && memcmp(__s1, *v45, v46))
              {
                return 0;
              }

              if (v43 != 2)
              {
                if (v43 != 5 || *(v42 + 2) < 2u)
                {
                  v42 = 0;
                  goto LABEL_115;
                }

                v42 = *v42;
              }

              v42 = *(v42 + 1);
LABEL_115:
              v47 = 1;
              goto LABEL_116;
            }

            v41 = *a2;
          }

          v42 = *(v41 + 1);
          goto LABEL_95;
        }

        if (v22 != 230)
        {
          return 0;
        }

        if ((v9 & 0x1F) != 0x11)
        {
          swift::ParsedTypeIdentity::parse(v3, v68);
          v23 = 1;
          LOBYTE(v77) = 1;
          isCImportedTagType = swift::_isCImportedTagType(v3, v68);
          v21 = v3;
          if (!isCImportedTagType)
          {
            return 0;
          }

          goto LABEL_89;
        }
      }

      v23 = 0;
      goto LABEL_89;
    }

    if (*(a2 + 8) != 73)
    {
      return 0;
    }

    v14 = *(a2 + 18);
    v15 = a2;
    if (v14 != 2)
    {
      if (v14 != 5 || *(a2 + 2) < 2u)
      {
        return 0;
      }

      v15 = *a2;
    }

    v16 = *(v15 + 1);
    v68[1] = 0;
    v68[2] = 0;
    v69 = 0;
    v70 = 2400;
    v71 = 0;
    LOBYTE(v72) = 0;
    v107 = 0;
    __s1 = 0;
    v75 = 0;
    v73 = 0;
    v76 = 0;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0;
    v68[0] = &unk_1EEEACCD0;
    ContextDescriptor = _findContextDescriptor(v16, v68);
    v67 = 0;
    ExtendedTypeContextDescriptor = _findExtendedTypeContextDescriptor(v3, v68, &v67);
    if (ContextDescriptor && ExtendedTypeContextDescriptor)
    {
      if (!swift::equalContexts(ContextDescriptor, ExtendedTypeContextDescriptor))
      {
        goto LABEL_151;
      }

      goto LABEL_60;
    }

    v30 = v67;
    v31 = *(v16 + 8);
    if (v31 != *(v67 + 8) || v31 != 190 && v31 != 25)
    {
      goto LABEL_151;
    }

    v32 = *(v16 + 18);
    v33 = v16;
    if (v32 != 2)
    {
      if (v32 != 5 || *(v16 + 2) != 2)
      {
        goto LABEL_151;
      }

      v33 = *v16;
    }

    if ((v34 = *v33, *(v34 + 8) != 163) || v34[1] != 3 || ((v35 = *v34, v36 = *v35, v37 = *(v35 + 2), v36 == 24415) ? (v38 = v37 == 67) : (v38 = 0), !v38))
    {
LABEL_151:
      v29 = 1;
      goto LABEL_152;
    }

    if (v32 == 2)
    {
      goto LABEL_82;
    }

    if (*(v16 + 2) >= 2u)
    {
      v16 = *v16;
LABEL_82:
      v39 = *(v16 + 1);
      goto LABEL_130;
    }

    v39 = 0;
LABEL_130:
    if (*(v39 + 16) != 103)
    {
      goto LABEL_151;
    }

    v52 = *v39;
    v53 = *(v39 + 8);
    v54 = *(v67 + 18);
    v55 = v67;
    if (v54 != 2)
    {
      if (v54 != 5 || *(v67 + 2) != 2)
      {
        goto LABEL_151;
      }

      v55 = *v67;
    }

    v56 = *v55;
    if (*(v56 + 8) != 163 || v56[1] != 3)
    {
      goto LABEL_151;
    }

    v57 = *v56;
    v58 = *v57;
    v59 = *(v57 + 2);
    if (v58 != 24415 || v59 != 67)
    {
      goto LABEL_151;
    }

    if (v54 != 2)
    {
      if (*(v67 + 2) < 2u)
      {
        v61 = 0;
        goto LABEL_147;
      }

      v30 = *v67;
    }

    v61 = v30[1];
LABEL_147:
    if (*(v61 + 16) != 103 || v53 != *(v61 + 8) || v53 && memcmp(v52, *v61, v53))
    {
      goto LABEL_151;
    }

LABEL_60:
    v28 = *(a2 + 18);
    if ((v28 - 1) < 2)
    {
      goto LABEL_64;
    }

    if (v28 == 5 && *(a2 + 2))
    {
      a2 = *a2;
LABEL_64:
      v29 = 0;
      a2 = *a2;
      goto LABEL_152;
    }

    v29 = 0;
    a2 = 0;
LABEL_152:
    v68[0] = &unk_1EEEADB90;
    if (v107 == &v106)
    {
      (*(*v107 + 32))(v107);
    }

    else if (v107)
    {
      (*(*v107 + 40))();
    }

    v68[0] = &unk_1EEEADB68;
    swift::Demangle::__runtime::NodeFactory::freeSlabs(v69);
    if (v71)
    {
      *(v71 + 48) = 0;
    }

    if (v29)
    {
      return 0;
    }

LABEL_159:
    v64 = *(v8 + 4);
    v63 = v8 + 4;
    v62 = v64;
    if (!v64)
    {
      return a2 == 0;
    }

    v65 = ((v62 & 0xFFFFFFFFFFFFFFFELL) + v63);
    if (v62)
    {
      if (!*v65)
      {
        return a2 == 0;
      }

      v3 = *v65;
    }

    else
    {
      if (!v65)
      {
        return a2 == 0;
      }

      v3 = (v62 & 0xFFFFFFFFFFFFFFFELL) + v63;
    }

    if (!v3)
    {
      return a2 == 0;
    }
  }
}

uint64_t _findContextDescriptor(swift::Demangle::__runtime::Node *a1, swift::Demangle::__runtime::Demangler *a2)
{
  v116 = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (*(a1 + 8) == 243)
  {
    v5 = *(a1 + 18);
    v6 = a1;
    if ((v5 - 1) < 2)
    {
LABEL_6:
      v4 = *v6;
      goto LABEL_8;
    }

    if (v5 == 5 && *(a1 + 2))
    {
      v6 = *a1;
      goto LABEL_6;
    }

    v4 = 0;
  }

LABEL_8:
  if (*(v4 + 8) == 244)
  {
    if (*v4)
    {
      return *v4;
    }

    return 0;
  }

  result = descriptorFromStandardMangling(v4);
  if (result)
  {
    return result;
  }

  if (qword_1ED4263B8 != -1)
  {
    swift::addImageTypeMetadataRecordBlockCallback(0);
  }

  if (*(v4 + 8) == 39)
  {
    return 0;
  }

  v112.__r_.__value_.__r.__words[0] = a2;
  swift::Demangle::__runtime::mangleNode(a1);
  if (v110)
  {
    return 0;
  }

  v109 = v111;
  atomic_fetch_add_explicit(&dword_1ED426340, 1u, memory_order_acquire);
  do
  {
    explicit = atomic_load_explicit(&qword_1ED426348, memory_order_acquire);
    v9 = atomic_load_explicit(&qword_1ED426350, memory_order_acquire);
    v10 = atomic_load_explicit(&dword_1ED426344, memory_order_acquire);
  }

  while (explicit != atomic_load_explicit(&qword_1ED426348, memory_order_acquire));
  if (explicit)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v10 != 0)
  {
    if (v13)
    {
      result = *(v13 + 16);
      atomic_fetch_add_explicit(&dword_1ED426340, 0xFFFFFFFF, memory_order_release);
      return result;
    }
  }

  atomic_fetch_add_explicit(&dword_1ED426340, 0xFFFFFFFF, memory_order_release);
  if (a1 && *(a1 + 8) == 25)
  {
    v14 = *(a1 + 18);
    v15 = a1;
    if ((v14 - 1) >= 2)
    {
      if (v14 != 5 || !*(a1 + 2))
      {
        goto LABEL_43;
      }

      v15 = *a1;
    }

    v16 = *v15;
    if (v16 && *(v16 + 8) == 163 && *(v16 + 18) == 3 && v16[1] == 3)
    {
      v17 = *v16;
      v18 = *v17;
      v19 = *(v17 + 2);
      if (v18 == 24415 && v19 == 67)
      {
        goto LABEL_97;
      }
    }
  }

LABEL_43:
  LibPrespecializedTypeDescriptor = swift::getLibPrespecializedTypeDescriptor(a1, v9);
  if (swift::runtime::environment::initializeToken != -1)
  {
    v22 = v9;
    v23 = LibPrespecializedTypeDescriptor;
    _findContextDescriptor();
    LibPrespecializedTypeDescriptor = v23;
    v9 = v22;
  }

  if (swift::runtime::environment::SWIFT_DEBUG_VALIDATE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_variable == 1)
  {
    v24 = LibPrespecializedTypeDescriptor;
    v25 = v9;
    _findContextDescriptor(LibPrespecializedTypeDescriptor, a1, v9, &v112);
    LibPrespecializedTypeDescriptor = v24;
    v9 = v25;
    if (v24 != 2)
    {
LABEL_47:
      if (!LibPrespecializedTypeDescriptor)
      {
        if (v9)
        {
          result = v9;
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      goto LABEL_74;
    }
  }

  else if (LibPrespecializedTypeDescriptor != 2)
  {
    goto LABEL_47;
  }

  swift::runtime::trace::metadata_scan_begin(a1, &v113);
  atomic_fetch_add_explicit(&qword_1ED426398, 1uLL, memory_order_acquire);
  v26 = qword_1ED4263A0;
  if (qword_1ED4263A0)
  {
    v27 = atomic_load_explicit(qword_1ED4263A0, memory_order_acquire);
    if (v27)
    {
      v28 = (v26 + 8);
      v29 = v26 + 8 + 16 * v27;
      while (1)
      {
        v30 = *v28;
        v31 = v28[1];
        if (*v28 != v31)
        {
          break;
        }

LABEL_54:
        v28 += 2;
        if (v28 == v29)
        {
          goto LABEL_68;
        }
      }

      v32 = *v28;
      while (1)
      {
        v33 = *v32;
        if ((*v32 & 3) == 1)
        {
          if (!*(v30 + (v33 & 0xFFFFFFFFFFFFFFFCLL)))
          {
            goto LABEL_58;
          }

          v37 = *(v30 + (v33 & 0xFFFFFFFFFFFFFFFCLL));
        }

        else
        {
          v34 = v33 & 0xFFFFFFFFFFFFFFFCLL;
          v35 = v30 + v34;
          if ((*v32 & 3) != 0 || v35 == 0)
          {
            goto LABEL_58;
          }

          v37 = v30 + v34;
          if (!v35)
          {
            goto LABEL_58;
          }
        }

        if (swift::_contextDescriptorMatchesMangling(v37, a1))
        {
          result = v37;
          goto LABEL_70;
        }

LABEL_58:
        ++v32;
        ++v30;
        if (v32 == v31)
        {
          goto LABEL_54;
        }
      }
    }
  }

LABEL_68:
  result = 0;
LABEL_70:
  atomic_fetch_add_explicit(&qword_1ED426398, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  v38 = v113;
  if ((v113 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v39 = swift::runtime::trace::ScanLog;
    v40 = result;
    v41 = os_signpost_enabled(swift::runtime::trace::ScanLog);
    result = v40;
    if (v41)
    {
      *buf = 134217984;
      v115 = v40;
      _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v39, OS_SIGNPOST_INTERVAL_END, v38, "section_scan", "result=%p", buf, 0xCu);
      result = v40;
    }
  }

  if (result)
  {
    goto LABEL_98;
  }

LABEL_74:
  swift::runtime::trace::metadata_scan_begin(a1, &v113);
  atomic_fetch_add_explicit(&qword_1ED426370, 1uLL, memory_order_acquire);
  v42 = qword_1ED426378;
  if (!qword_1ED426378 || (v43 = atomic_load_explicit(qword_1ED426378, memory_order_acquire)) == 0)
  {
LABEL_91:
    result = 0;
    goto LABEL_93;
  }

  v44 = (v42 + 8);
  v45 = v42 + 8 + 16 * v43;
  while (1)
  {
    v46 = *v44;
    v47 = v44[1];
    if (*v44 != v47)
    {
      break;
    }

LABEL_77:
    v44 += 2;
    if (v44 == v45)
    {
      goto LABEL_91;
    }
  }

  v48 = *v44;
  while (1)
  {
    v49 = *v48;
    if ((*v48 & 3) == 1)
    {
      if (!*(v46 + (v49 & 0xFFFFFFFFFFFFFFFCLL)))
      {
        goto LABEL_81;
      }

      v53 = *(v46 + (v49 & 0xFFFFFFFFFFFFFFFCLL));
    }

    else
    {
      v50 = v49 & 0xFFFFFFFFFFFFFFFCLL;
      v51 = v46 + v50;
      if ((*v48 & 3) != 0 || v51 == 0)
      {
        goto LABEL_81;
      }

      v53 = v46 + v50;
      if (!v51)
      {
        goto LABEL_81;
      }
    }

    if (swift::_contextDescriptorMatchesMangling(v53, a1))
    {
      break;
    }

LABEL_81:
    ++v48;
    ++v46;
    if (v48 == v47)
    {
      goto LABEL_77;
    }
  }

  result = v53;
LABEL_93:
  atomic_fetch_add_explicit(&qword_1ED426370, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  v54 = v113;
  if ((v113 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v55 = swift::runtime::trace::ScanLog;
    v56 = result;
    v57 = os_signpost_enabled(swift::runtime::trace::ScanLog);
    result = v56;
    if (v57)
    {
      *buf = 134217984;
      v115 = v56;
      _os_signpost_emit_with_name_impl(&swift_runtimeSupportsNoncopyableTypes, v55, OS_SIGNPOST_INTERVAL_END, v54, "section_scan", "result=%p", buf, 0xCu);
      result = v56;
    }
  }

LABEL_96:
  if (result)
  {
LABEL_98:
    v105 = result;
    v59 = *(&v109 + 1);
    v58 = v109;
    v113 = v109;
    os_unfair_lock_lock(&unk_1ED426358);
    v60 = qword_1ED426350;
    v61 = (qword_1ED426350 & 3) == 0;
    if ((qword_1ED426350 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v61 = 1;
    }

    v104 = qword_1ED426350 & 0xFFFFFFFFFFFFFFFCLL;
    v103 = v61;
    v106 = qword_1ED426350 & 3;
    if (v61)
    {
      v62 = 4;
    }

    else
    {
      v62 = *(qword_1ED426350 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v63 = dword_1ED426344;
    v64 = qword_1ED426348;
    if (qword_1ED426348)
    {
      v65 = qword_1ED426348 + 8;
    }

    else
    {
      v65 = 0;
    }

    {
      __dmb(0xBu);
      if (dword_1ED426340)
      {
LABEL_182:
        os_unfair_lock_unlock(&unk_1ED426358);
        return v105;
      }

      v67 = qword_1ED426360;
      if (qword_1ED426360)
      {
        do
        {
          v68 = *v67;
          free(v67[1]);
          free(v67);
          v67 = v68;
        }

        while (v68);
      }
    }

    else
    {
      v108 = v65;
      __src = v64 + 2;
      v102 = (v63 + 1);
      if ((1 << v62) / ((1 << v62) - v102) < 4)
      {
        v74 = v60;
      }

      else
      {
        v100 = v63;
        v69 = (v62 + 1);
        if (v69 >= 0x11)
        {
          v70 = 4;
        }

        else
        {
          v70 = 2;
        }

        if (v69 < 9)
        {
          v71 = 1;
        }

        else
        {
          v71 = v70;
        }

        v72 = malloc_type_calloc(2 << v62, v71, 0x48DDA4AEuLL);
        if (!v72)
        {
          swift::hashable_support::findHashableBaseTypeOfHashableType();
        }

        v73 = v65;
        v98 = v64;
        v99 = v59;
        if (v71 != 1)
        {
          if (v71 == 4)
          {
            v71 = 3;
          }

          else
          {
            v71 = 2;
          }
        }

        v74 = v71 | v72;
        *v72 = v62 + 1;
        if (v62)
        {
          v75 = ~(-2 << v62);
          v76 = v104;
          if (!v106)
          {
            v76 = 0;
          }

          v107 = v76;
          v77 = v74 & 3;
          if ((v74 & 3) != 0)
          {
            v78 = v72 & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            v78 = 0;
          }

          v79 = 1;
          do
          {
            if ((v60 & 3) > 1)
            {
              if ((v60 & 3) == 2)
              {
                LODWORD(v80) = *(v107 + 2 * v79);
              }

              else
              {
                LODWORD(v80) = *(v107 + 4 * v79);
              }
            }

            else if ((v60 & 3) != 0)
            {
              LODWORD(v80) = *(v107 + v79);
            }

            else
            {
              v80 = (v60 >> (4 * v79)) & 0xF;
            }

            if (v80)
            {
              for (i = __swift::__runtime::llvm::hash_value(*(v73 + 24 * (v80 - 1)), *(v73 + 24 * (v80 - 1) + 8)); ; i = v83 + 1)
              {
                v83 = i & v75;
                if ((i & v75) != 0)
                {
                  if ((v74 & 3) > 1)
                  {
                    LODWORD(v82) = v77 == 2 ? *(v78 + 2 * v83) : *(v78 + 4 * v83);
                  }

                  else if ((v74 & 3) != 0)
                  {
                    LODWORD(v82) = *(v78 + v83);
                  }

                  else
                  {
                    v82 = (v74 >> (4 * v83)) & 0xF;
                  }

                  if (!v82)
                  {
                    break;
                  }
                }
              }

              if (v77 == 3)
              {
                *(v78 + 4 * v83) = v80;
                v73 = v108;
              }

              else
              {
                v73 = v108;
                if (v77 == 2)
                {
                  *(v78 + 2 * v83) = v80;
                }

                else
                {
                  *(v78 + v83) = v80;
                }
              }
            }

            ++v79;
          }

          while (!(v79 >> v62));
        }

        atomic_store(v74, &qword_1ED426350);
        if (!v103)
        {
          v84 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v73 = v108;
          *v84 = qword_1ED426360;
          v84[1] = v104;
          qword_1ED426360 = v84;
        }

        v63 = v100;
        v64 = v98;
        v59 = v99;
      }

      v85 = v66;
      if (!v64 || (v86 = v64, v63 >= *v64))
      {
        v87 = v64;
        v88 = v63 + (v63 >> 2);
        if (v88 <= v63 + 1)
        {
          v88 = v63 + 1;
        }

        v89 = malloc_good_size(24 * v88 + 8);
        v90 = malloc_type_malloc(v89, 0x1070040D224386BuLL);
        if (!v90)
        {
          swift::hashable_support::findHashableBaseTypeOfHashableType();
        }

        v86 = v90;
        *v90 = (v89 - 8) / 0x18;
        if (v87)
        {
          memcpy(v90 + 2, __src, 24 * v63);
          v91 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          *v91 = qword_1ED426360;
          v91[1] = v87;
          qword_1ED426360 = v91;
        }

        atomic_store(v86, &qword_1ED426348);
      }

      v92 = (v86 + 24 * v63);
      v92[3] = v105;
      v93 = malloc_type_malloc(v59, 0x100004077774924uLL);
      memcpy(v93, v58, v59);
      v92[1] = v93;
      v92[2] = v59;
      atomic_store(v102, &dword_1ED426344);
      if ((v74 & 3) > 1)
      {
        if ((v74 & 3) == 2)
        {
          v94 = v74 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v74 & 3) == 0)
          {
            v94 = 0;
          }

          atomic_store(v102, (v94 + 2 * v85));
        }

        else
        {
          v95 = v74 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v74 & 3) == 0)
          {
            v95 = 0;
          }

          atomic_store(v102, (v95 + 4 * v85));
        }
      }

      else if ((v74 & 3) != 0)
      {
        atomic_store(v102, ((v74 & 0xFFFFFFFFFFFFFFFCLL) + v85));
      }

      else
      {
        atomic_store((v102 << (4 * v85)) | v74, &qword_1ED426350);
      }

      __dmb(0xBu);
      if (dword_1ED426340)
      {
        goto LABEL_182;
      }

      v96 = qword_1ED426360;
      if (qword_1ED426360)
      {
        do
        {
          v97 = *v96;
          free(v96[1]);
          free(v96);
          v96 = v97;
        }

        while (v97);
      }
    }

    qword_1ED426360 = 0;
    goto LABEL_182;
  }

LABEL_97:
  result = swift::_searchConformancesByMangledTypeName(a1, v9);
  if (result)
  {
    goto LABEL_98;
  }

  return result;
}

uint64_t _findExtendedTypeContextDescriptor(_DWORD *a1, char *a2, uint64_t *a3)
{
  result = 0;
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1;
    if ((*a1 & 0x1F) == 1)
    {
      v9 = a1[2];
      if (v9)
      {
        v10 = a1 + v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v10, a2);
      v13 = v11;
      if ((*v6 & 0x80) != 0)
      {
        v14 = v6 ? v6 : 0;
        v15 = v14;
        v16 = v14 + 3;
        if (v14 == -12)
        {
          v17 = 0;
        }

        else
        {
          v17 = v14 + 3;
          if (!v14)
          {
            v14 = 0;
          }
        }

        v18 = *v14;
        if ((v18 & 0x80) != 0)
        {
          v20 = v15 ? v15 : 0;
          v19 = *(v20 + 6);
        }

        else
        {
          v19 = 0;
        }

        if (*(v16 + 1))
        {
          v21 = (&v17[2 * ((v18 >> 7) & 1)] + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v22 = 12 * *(v16 + 1);
          v23 = (v21 + 8);
          v24 = v21 + 4;
          do
          {
            if ((*(v23 - 2) & 0x1F) == 1)
            {
              v25 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v24 + *(v23 - 1)), v11);
              if (v11 == 1 && *v25 == 120 && swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v24 + *v23 + 4), 1) == SymbolicMangledNameStringRef)
              {
                return 0;
              }
            }

            v23 += 3;
            v24 += 12;
            v22 -= 12;
          }

          while (v22);
        }
      }

      v35[0] = &unk_1EEEACCF8;
      v35[1] = a2;
      v36 = v35;
      v26 = swift::Demangle::__runtime::Demangler::demangleType(a2, SymbolicMangledNameStringRef, v13, v35);
      v28 = v26;
      if (a3)
      {
        *a3 = v26;
        v28 = 0;
      }

      if (v36 == v35)
      {
        (*(*v36 + 32))(v36);
        v29 = v28;
        if (a3)
        {
LABEL_35:
          v29 = *a3;
        }
      }

      else
      {
        if (v36)
        {
          (*(*v36 + 40))();
        }

        v29 = v28;
        if (a3)
        {
          goto LABEL_35;
        }
      }

      if (!v29)
      {
        return 0;
      }

      if (*(v29 + 16) != 243)
      {
        if (!a3)
        {
          goto LABEL_59;
        }

        v28 = *a3;
LABEL_57:
        if ((swift::Demangle::__runtime::isSpecialized(v28, v27) & 1) == 0)
        {
LABEL_64:
          v28 = *a3;
          return _findContextDescriptor(v28, a2);
        }

        v28 = *a3;
LABEL_60:
        swift::Demangle::__runtime::getUnspecialized(v28, a2, v33);
        if (v33[0])
        {
          return 0;
        }

        v28 = v34;
        if (!a3)
        {
          return _findContextDescriptor(v28, a2);
        }

        *a3 = v34;
        goto LABEL_64;
      }

      v30 = v28;
      if (a3)
      {
        v30 = *a3;
      }

      v31 = *(v30 + 18);
      if ((v31 - 1) >= 2 && (v31 != 5 || !*(v30 + 8)))
      {
        return 0;
      }

      if (a3)
      {
        v28 = *a3;
      }

      v32 = *(v28 + 18);
      if ((v32 - 1) >= 2)
      {
        if (v32 != 5 || !*(v28 + 8))
        {
          v28 = 0;
          if (!a3)
          {
            goto LABEL_59;
          }

LABEL_56:
          *a3 = v28;
          goto LABEL_57;
        }

        v28 = *v28;
      }

      v28 = *v28;
      if (!a3)
      {
LABEL_59:
        if ((swift::Demangle::__runtime::isSpecialized(v28, v27) & 1) == 0)
        {
          return _findContextDescriptor(v28, a2);
        }

        goto LABEL_60;
      }

      goto LABEL_56;
    }
  }

  return result;
}

uint64_t DemanglerForRuntimeTypeResolution<swift::Demangle::__runtime::Demangler>::~DemanglerForRuntimeTypeResolution(uint64_t a1)
{
  *a1 = &unk_1EEEADB90;
  v2 = a1 + 544;
  v3 = *(a1 + 568);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  return a1;
}

uint64_t _swift_registerConcurrencyRuntime(uint64_t result, void *a2)
{
  concurrencyDescriptors = result;
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  swift::_swift_task_isCurrentGlobalActorHook = v2;
  return result;
}

void swift::addImageProtocolsBlockCallbackUnsafe(swift *this, unint64_t a2, char *a3)
{
  if (qword_1ED426338 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift::addImageTypeMetadataRecordBlockCallbackUnsafe(this);
    a3 = v6;
    a2 = v5;
  }

  v3 = _MergedGlobals_1[0] <= a2 && unk_1ED426330 > a2;
  *&v7 = a2;
  *(&v7 + 1) = &a3[a2];
  if (v3)
  {
    v4 = &unk_1ED426410;
  }

  else
  {
    v4 = &unk_1ED4263E8;
  }
}

void swift::addImageProtocolsBlockCallback(swift *this, unint64_t a2, char *a3)
{
  if (qword_1ED426438 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift::addImageProtocolsBlockCallback(this);
    a3 = v6;
    a2 = v5;
  }

  if (qword_1ED426338 != -1)
  {
    v7 = a2;
    v8 = a3;
    swift::addImageTypeMetadataRecordBlockCallbackUnsafe(this);
    a3 = v8;
    a2 = v7;
  }

  v3 = _MergedGlobals_1[0] <= a2 && unk_1ED426330 > a2;
  *&v9 = a2;
  *(&v9 + 1) = &a3[a2];
  if (v3)
  {
    v4 = &unk_1ED426410;
  }

  else
  {
    v4 = &unk_1ED4263E8;
  }
}

uint64_t swift::Lazy<anonymous namespace::ProtocolMetadataPrivateState>::defaultInitCallback(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return swift::initializeProtocolLookup(a1);
}

void swift_registerProtocols(unint64_t a1, uint64_t a2)
{
  if (qword_1ED426438 != -1)
  {
    v4 = a2;
    v5 = a1;
    swift::addImageProtocolsBlockCallback(a1);
    a1 = v5;
    a2 = v4;
  }

  if (qword_1ED426338 != -1)
  {
    v6 = a2;
    v7 = a1;
    swift::addImageTypeMetadataRecordBlockCallbackUnsafe(a1);
    a1 = v7;
    a2 = v6;
  }

  v2 = _MergedGlobals_1[0] <= a1 && unk_1ED426330 > a1;
  *&v8 = a1;
  *(&v8 + 1) = a2;
  if (v2)
  {
    v3 = &unk_1ED426410;
  }

  else
  {
    v3 = &unk_1ED4263E8;
  }
}

uint64_t swift::_depthIndexToFlatIndex(unsigned int a1, int a2, uint64_t a3, unint64_t a4)
{
  if (a4 <= a1 || (!a1 ? (v4 = 0) : (v4 = *(a3 + 4 * (a1 - 1))), v5 = v4 + a2, v5 >= *(a3 + 4 * a1)))
  {
    v7 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v5 & 0xFFFFFF00;
    v5 = v5;
    v7 = 0x100000000;
  }

  return v7 | v6 | v5;
}

uint64_t swift::_gatherGenericParameterCounts(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v19 = xmmword_1806726B0;
  v21 = 0;
  v56 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v25 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
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
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v54 = 0;
  v17 = &unk_1EEEACCD0;
  *(a3 + 48) = 1;
  v20 = a3;
  v18 = *(a3 + 8);
  ExtendedTypeContextDescriptor = _findExtendedTypeContextDescriptor(a1, &v17, 0);
  if (ExtendedTypeContextDescriptor)
  {
    v4 = ExtendedTypeContextDescriptor;
  }

  if ((*v4 & 0x80) == 0)
  {
    goto LABEL_19;
  }

  v7 = v4 + 1;
  v6 = v4[1];
  if (v6)
  {
    v8 = (v7 + (v6 & 0xFFFFFFFFFFFFFFFELL));
    if (v6)
    {
      if (*v8)
      {
        v9 = *v8;
        goto LABEL_11;
      }
    }

    else if (v8)
    {
      v9 = (v7 + (v6 & 0xFFFFFFFFFFFFFFFELL));
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_11:
  swift::_gatherGenericParameterCounts(v9, a2, &v17);
  GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v9);
  if (GenericContext)
  {
    v11 = *(GenericContext + 2);
  }

  else
  {
    v11 = 0;
  }

  v12 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v4);
  if (!v12 || (v13 = *(v12 + 2), v11 >= v13))
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v14 = *(a2 + 8);
  if (v14 >= *(a2 + 12))
  {
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v14 + 1, 4);
    LODWORD(v14) = *(a2 + 8);
  }

  *(*a2 + 4 * v14) = v13;
  ++*(a2 + 8);
  v15 = 1;
LABEL_20:
  v17 = &unk_1EEEADB90;
  if (v56 == &v55)
  {
    (*(*v56 + 32))(v56);
  }

  else if (v56)
  {
    (*(*v56 + 40))();
  }

  v17 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v19);
  if (v20)
  {
    *(v20 + 48) = 0;
  }

  return v15;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    v3 = a2;
    v4 = result;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v2 + 1, 4);
    a2 = v3;
    result = v4;
    LODWORD(v2) = *(v4 + 8);
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t swift_getTypeByMangledNameInEnvironment(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[33] = *MEMORY[0x1E69E9840];
  v21 = 1;
  v22 = a3;
  v23 = a4;
  v24 = v26;
  v25 = 0x800000000;
  v26[32] = 0;
  v16[0] = &unk_1EEEAD1E8;
  v16[1] = &v21;
  v17 = v16;
  v14[0] = &unk_1EEEAD230;
  v14[1] = &v21;
  v15 = v14;
  swift_getTypeByMangledName(0, a1, a2, a4, v16, v14, &v18);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  v6 = v20;
  if (v20 != 1)
  {
    goto LABEL_21;
  }

  if (swift::runtime::environment::initializeToken != -1)
  {
    _findContextDescriptor();
  }

  v6 = v20;
  if (swift::runtime::environment::SWIFT_DEBUG_FAILED_TYPE_LOOKUP_variable == 1)
  {
    if (v20 == 1)
    {
      v7 = &v18;
    }

    else
    {
      v7 = 0;
    }

    if (v20 == 1)
    {
      v8 = &v19;
    }

    else
    {
      v8 = 8;
    }

    v9 = (*v8)(*v7, 0, 0);
    swift::warning(0, "failed type lookup for %.*s: %s\n", v10, v11, a2, a1, v9);
    (*v8)(*v7, 1, v9);
    v12 = 0;
    if (v20 != 1)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_21:
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v18;
    }

    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  v19(v18, 3, 0);
LABEL_26:
  if (v24 != v26)
  {
    free(v24);
  }

  return v12;
}

uint64_t swift_getTypeByMangledName@<X0>(swift *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = swift_getTypeByMangledName::Override;
  if (swift_getTypeByMangledName::Override != 1)
  {
    if (swift_getTypeByMangledName::Override)
    {
      std::function<void const* ()(unsigned int,unsigned int)>::function(v19, a5);
      std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::function(v18, a6);
      (v13)(a1, a2, a3, a4, v19, v18, swift_getTypeByMangledNameImpl);
      std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::~function(v18);
      v17 = v19;
    }

    else
    {
      std::function<void const* ()(unsigned int,unsigned int)>::function(v21, a5);
      std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::function(v20, a6);
      swift_getTypeByMangledNameSlow(a1, a2, a3, a4, v21, v20, a7);
      std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::~function(v20);
      v17 = v21;
    }

    return std::function<void const* ()(unsigned int,unsigned int)>::~function(v17);
  }

  v14 = *(a5 + 24);
  if (v14)
  {
    if (v14 != a5)
    {
      v25 = (*(*v14 + 16))(v14);
      v15 = *(a6 + 24);
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_7:
      if (v15 == a6)
      {
        v23 = v22;
        (*(*v15 + 24))(v15, v22);
      }

      else
      {
        v23 = (*(*v15 + 16))(v15);
      }

      goto LABEL_12;
    }

    v25 = v24;
    (*(*v14 + 24))(v14, v24);
    v15 = *(a6 + 24);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v25 = 0;
    v15 = *(a6 + 24);
    if (v15)
    {
      goto LABEL_7;
    }
  }

LABEL_10:
  v23 = 0;
LABEL_12:
  swift_getTypeByMangledNameImpl(a1, a2, a3, a4, v24, v22, a7);
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  result = v25;
  if (v25 == v24)
  {
    return (*(*v25 + 32))(v25);
  }

  if (v25)
  {
    return (*(*v25 + 40))(v25);
  }

  return result;
}

uint64_t swift_getTypeByMangledNameInEnvironmentInMetadataState(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[33] = *MEMORY[0x1E69E9840];
  v22 = 1;
  v23 = a4;
  v24 = a5;
  v25 = v27;
  v26 = 0x800000000;
  v27[32] = 0;
  v17[0] = &unk_1EEEAD278;
  v17[1] = &v22;
  v18 = v17;
  v15[0] = &unk_1EEEAD2C0;
  v15[1] = &v22;
  v16 = v15;
  swift_getTypeByMangledName((a1 & 0xFFFFFFFFFFFFFEFFLL), a2, a3, a5, v17, v15, &v19);
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))();
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  v7 = v21;
  if (v21 != 1)
  {
    goto LABEL_21;
  }

  if (swift::runtime::environment::initializeToken != -1)
  {
    _findContextDescriptor();
  }

  v7 = v21;
  if (swift::runtime::environment::SWIFT_DEBUG_FAILED_TYPE_LOOKUP_variable == 1)
  {
    if (v21 == 1)
    {
      v8 = &v19;
    }

    else
    {
      v8 = 0;
    }

    if (v21 == 1)
    {
      v9 = &v20;
    }

    else
    {
      v9 = 8;
    }

    v10 = (*v9)(*v8, 0, 0);
    swift::warning(0, "failed type lookup for %.*s: %s\n", v11, v12, a3, a2, v10);
    (*v9)(*v8, 1, v10);
    v13 = 0;
    if (v21 != 1)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_21:
    if (v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = v19;
    }

    if (v7 != 1)
    {
      goto LABEL_26;
    }
  }

  v20(v19, 3, 0);
LABEL_26:
  if (v25 != v27)
  {
    free(v25);
  }

  return v13;
}

uint64_t swift_getTypeByMangledNameInContextImpl(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[33] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = a3;
  v23 = a4;
  v24 = v26;
  v25 = 0x800000000;
  v26[32] = 0;
  v16[0] = &unk_1EEEACD40;
  v16[1] = &v21;
  v17 = v16;
  v14[0] = &unk_1EEEACD88;
  v14[1] = &v21;
  v15 = v14;
  swift_getTypeByMangledName(0, a1, a2, a4, v16, v14, &v18);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  v6 = v20;
  if (v20 != 1)
  {
    goto LABEL_21;
  }

  if (swift::runtime::environment::initializeToken != -1)
  {
    _findContextDescriptor();
  }

  v6 = v20;
  if (swift::runtime::environment::SWIFT_DEBUG_FAILED_TYPE_LOOKUP_variable == 1)
  {
    if (v20 == 1)
    {
      v7 = &v18;
    }

    else
    {
      v7 = 0;
    }

    if (v20 == 1)
    {
      v8 = &v19;
    }

    else
    {
      v8 = 8;
    }

    v9 = (*v8)(*v7, 0, 0);
    swift::warning(0, "failed type lookup for %.*s: %s\n", v10, v11, a2, a1, v9);
    (*v8)(*v7, 1, v9);
    v12 = 0;
    if (v20 != 1)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_21:
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v18;
    }

    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  v19(v18, 3, 0);
LABEL_26:
  if (v24 != v26)
  {
    free(v24);
  }

  return v12;
}

uint64_t swift_getTypeByMangledNameInContextInMetadataStateImpl(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[33] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = a4;
  v24 = a5;
  v25 = v27;
  v26 = 0x800000000;
  v27[32] = 0;
  v17[0] = &unk_1EEEACDD0;
  v17[1] = &v22;
  v18 = v17;
  v15[0] = &unk_1EEEACE18;
  v15[1] = &v22;
  v16 = v15;
  swift_getTypeByMangledName((a1 & 0xFFFFFFFFFFFFFEFFLL), a2, a3, a5, v17, v15, &v19);
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))();
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  v7 = v21;
  if (v21 != 1)
  {
    goto LABEL_21;
  }

  if (swift::runtime::environment::initializeToken != -1)
  {
    _findContextDescriptor();
  }

  v7 = v21;
  if (swift::runtime::environment::SWIFT_DEBUG_FAILED_TYPE_LOOKUP_variable == 1)
  {
    if (v21 == 1)
    {
      v8 = &v19;
    }

    else
    {
      v8 = 0;
    }

    if (v21 == 1)
    {
      v9 = &v20;
    }

    else
    {
      v9 = 8;
    }

    v10 = (*v9)(*v8, 0, 0);
    swift::warning(0, "failed type lookup for %.*s: %s\n", v11, v12, a3, a2, v10);
    (*v9)(*v8, 1, v10);
    v13 = 0;
    if (v21 != 1)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_21:
    if (v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = v19;
    }

    if (v7 != 1)
    {
      goto LABEL_26;
    }
  }

  v20(v19, 3, 0);
LABEL_26:
  if (v25 != v27)
  {
    free(v25);
  }

  return v13;
}

uint64_t swift_stdlib_getTypeByMangledNameUntrusted(unsigned __int8 *a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    v3 = a1;
    while (*v3 - 32 < 0xFFFFFFE1)
    {
      ++v3;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    v9 = 0;
    v7 = 0;
    swift_getTypeByMangledName(0, a1, a2, 0, v8, v6, v10);
    if (v11 == 1)
    {
      (v10[1])(v10[0], 3, 0);
      v4 = 0;
    }

    else
    {
      v4 = 0;
      if (!v11)
      {
        v4 = v10[0];
      }
    }

    if (v7 == v6)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))();
    }

    if (v9 == v8)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))();
    }
  }

  return v4;
}

void *swift::getTypePackByMangledName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v36 = xmmword_1806726B0;
  v37 = 0;
  v38 = 0;
  v73 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v42 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
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
  v71 = 0;
  v35[1] = &v74;
  v35[2] = &v75;
  v35[0] = &unk_1EEEACE60;
  v25 = &unk_1EEEACCF8;
  v26[0] = v35;
  v27 = &v25;
  v8 = swift::Demangle::__runtime::Demangler::demangleType(v35, a1, a2, &v25);
  if (v27 == &v25)
  {
    (*(*v27 + 32))(v27);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(a5 + 16) = 1;
    *a5 = "Demangling failed";
    *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    goto LABEL_55;
  }

  if (v27)
  {
    (*(*v27 + 40))();
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_5:
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 != a3)
    {
      v24 = (*(*v9 + 16))(v9);
      v10 = *(a4 + 24);
      if (!v10)
      {
        goto LABEL_15;
      }

LABEL_12:
      if (v10 == a4)
      {
        v22 = v21;
        (*(*v10 + 24))(v10, v21);
      }

      else
      {
        v22 = (*(*v10 + 16))(v10);
      }

      goto LABEL_17;
    }

    v24 = v23;
    (*(*v9 + 24))(v9, v23);
    v10 = *(a4 + 24);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0;
    v10 = *(a4 + 24);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  v22 = 0;
LABEL_17:
  v25 = v35;
  if (v24)
  {
    if (v24 == v23)
    {
      v28 = v26;
      (*(*v24 + 24))();
    }

    else
    {
      v28 = (*(*v24 + 16))();
    }
  }

  else
  {
    v28 = 0;
  }

  if (v22)
  {
    if (v22 == v21)
    {
      v30 = v29;
      (*(*v22 + 24))();
    }

    else
    {
      v30 = (*(*v22 + 16))();
    }

    v31 = 0;
    v33 = 0;
    v34 = 0;
    __p = 0;
    if (v22 == v21)
    {
      (*(*v22 + 32))(v22);
    }

    else if (v22)
    {
      (*(*v22 + 40))();
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 0;
    __p = 0;
  }

  if (v24 == v23)
  {
    (*(*v24 + 32))(v24);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

  v17 = &v25;
  if (v20 == 1)
  {
    *(a5 + 16) = 1;
    v14 = v18;
    v15 = v19;
    *(a5 + 8) = v19;
    *a5 = v15(v14, 2, 0);
    if (v20 == 1)
    {
      v19(v18, 3, 0);
    }

    v13 = __p;
    if (!__p)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v20 || (v11 = v18) == 0)
    {
      *(a5 + 16) = 1;
      v12 = "NULL type but no error provided";
LABEL_41:
      *a5 = v12;
      *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v13 = __p;
      if (!__p)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((v18 & 1) == 0)
    {
      *(a5 + 16) = 1;
      v12 = "This entry point is only for packs";
      goto LABEL_41;
    }

    *(a5 + 16) = 0;
    *a5 = v11;
    v13 = __p;
    if (!__p)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  v33 = v13;
  operator delete(v13);
LABEL_47:
  if (v30 == v29)
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))();
  }

  if (v28 == v26)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))();
  }

LABEL_55:
  v35[0] = &unk_1EEEADB90;
  if (v73 == &v72)
  {
    (*(*v73 + 32))(v73);
  }

  else if (v73)
  {
    (*(*v73 + 40))();
  }

  v35[0] = &unk_1EEEADB68;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v36);
  if (v37)
  {
    *(v37 + 48) = 0;
  }

  return result;
}

uint64_t std::function<void const* ()(unsigned int,unsigned int)>::function(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      *(result + 24) = result;
      v5 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      return v5;
    }

    else
    {
      v3 = result;
      v4 = (*(*v2 + 16))(*(a2 + 24));
      result = v3;
      *(v3 + 24) = v4;
    }
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::function(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      *(result + 24) = result;
      v5 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      return v5;
    }

    else
    {
      v3 = result;
      v4 = (*(*v2 + 16))(*(a2 + 24));
      result = v3;
      *(v3 + 24) = v4;
    }
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t DemanglerForRuntimeTypeResolution<swift::Demangle::__runtime::StackAllocatedDemangler<2048ul>>::~DemanglerForRuntimeTypeResolution(uint64_t a1)
{
  *a1 = &unk_1EEEADB90;
  v2 = a1 + 544;
  v3 = *(a1 + 568);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  return a1;
}

void *swift::getTypeValueByMangledName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v36 = xmmword_1806726B0;
  v37 = 0;
  v38 = 0;
  v73 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v42 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
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
  v71 = 0;
  v35[1] = &v74;
  v35[2] = &v75;
  v35[0] = &unk_1EEEACE60;
  v25 = &unk_1EEEACCF8;
  v26[0] = v35;
  v27 = &v25;
  v8 = swift::Demangle::__runtime::Demangler::demangleType(v35, a1, a2, &v25);
  if (v27 == &v25)
  {
    (*(*v27 + 32))(v27);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(a5 + 16) = 1;
    *a5 = "Demangling failed";
    *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    goto LABEL_52;
  }

  if (v27)
  {
    (*(*v27 + 40))();
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_5:
  v9 = *(a3 + 24);
  if (!v9)
  {
    v24 = 0;
    v10 = *(a4 + 24);
    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (v9 == a3)
  {
    v24 = v23;
    (*(*v9 + 24))(v9, v23);
    v10 = *(a4 + 24);
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_17;
  }

  v24 = (*(*v9 + 16))(v9);
  v10 = *(a4 + 24);
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (v10 == a4)
  {
    v22 = v21;
    (*(*v10 + 24))(v10, v21);
  }

  else
  {
    v22 = (*(*v10 + 16))(v10);
  }

LABEL_17:
  v25 = v35;
  if (v24)
  {
    if (v24 == v23)
    {
      v28 = v26;
      (*(*v24 + 24))();
    }

    else
    {
      v28 = (*(*v24 + 16))();
    }
  }

  else
  {
    v28 = 0;
  }

  if (v22)
  {
    if (v22 == v21)
    {
      v30 = v29;
      (*(*v22 + 24))();
    }

    else
    {
      v30 = (*(*v22 + 16))();
    }

    v31 = 0;
    v33 = 0;
    v34 = 0;
    __p = 0;
    if (v22 == v21)
    {
      (*(*v22 + 32))(v22);
    }

    else if (v22)
    {
      (*(*v22 + 40))();
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 0;
    __p = 0;
  }

  if (v24 == v23)
  {
    (*(*v24 + 32))(v24);
  }

  else if (v24)
  {
    (*(*v24 + 40))();
  }

  v17 = &v25;
  if (v20 == 1)
  {
    *(a5 + 16) = 1;
    v12 = v18;
    v13 = v19;
    *(a5 + 8) = v19;
    v14 = v13(v12, 2, 0);
    v15 = v20;
    *a5 = v14;
    if (v15 == 1)
    {
      v19(v18, 3, 0);
    }
  }

  else
  {
    if (v20)
    {
      v11 = 0;
    }

    else
    {
      v11 = v18;
    }

    *(a5 + 16) = 0;
    *a5 = v11;
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v30 == v29)
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))();
  }

  if (v28 == v26)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))();
  }

LABEL_52:
  v35[0] = &unk_1EEEADB90;
  if (v73 == &v72)
  {
    (*(*v73 + 32))(v73);
  }

  else if (v73)
  {
    (*(*v73 + 40))();
  }

  v35[0] = &unk_1EEEADB68;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v36);
  if (v37)
  {
    *(v37 + 48) = 0;
  }

  return result;
}

uint64_t swift_func_getParameterCount(char *a1, unint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = xmmword_1806726B0;
  v12 = 0;
  v13 = 0;
  v48 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v17 = 0;
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
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v46 = 0;
  v10[0] = &unk_1EEEAA6E0;
  v10[1] = &v49;
  v10[2] = &v50;
  FunctionTypeFromMethod = extractFunctionTypeFromMethod(v10, a1, a2);
  if (!FunctionTypeFromMethod)
  {
    v6 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v3 = swift::Demangle::__runtime::Node::findByKind(FunctionTypeFromMethod, 3, 1);
  v4 = *(v3 + 18);
  if ((v4 - 1) >= 2)
  {
    if (v4 != 5 || !*(v3 + 8))
    {
      v7 = 0;
      goto LABEL_10;
    }

    v5 = *v3;
  }

  else
  {
    v5 = v3;
  }

  v7 = *v5;
LABEL_10:
  if (*(v7 + 18) - 1 >= 2)
  {
    v7 = *v7;
  }

  v8 = *v7;
  if (*(v8 + 16) != 234)
  {
    v8 = v3;
  }

  v6 = *(v8 + 18);
  if (v6 != 1)
  {
    if (v6 == 5)
    {
      v6 = *(v8 + 8);
    }

    else if (v6 != 2)
    {
      v6 = 0;
    }
  }

LABEL_19:
  v10[0] = &unk_1EEEADB90;
  if (v48 == &v47)
  {
    (*(*v48 + 32))(v48);
  }

  else if (v48)
  {
    (*(*v48 + 40))();
  }

  v10[0] = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v11);
  if (v12)
  {
    *(v12 + 48) = 0;
  }

  return v6;
}

uint64_t extractFunctionTypeFromMethod(swift::Demangle::__runtime::Demangler *a1, char *a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v4 = a2;
    while (*v4 - 32 < 0xFFFFFFE1)
    {
      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v12 = 0;
  v5 = swift::Demangle::__runtime::Demangler::demangleSymbol(a1, a2, a3, v11);
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 40))();
    }

    if (!v5)
    {
      return 0;
    }
  }

  result = swift::Demangle::__runtime::Node::findByKind(v5, 78, 2);
  if (result)
  {
    result = swift::Demangle::__runtime::Node::findByKind(result, 243, 2);
    if (result)
    {
      v7 = result;
      v8 = swift::Demangle::__runtime::Node::findByKind(result, 45, 1);
      if (v8)
      {
        v9 = swift::Demangle::__runtime::Node::findByKind(v8, 243, 1);
        return swift::Demangle::__runtime::Node::findByKind(v9, 84, 1);
      }

      v10 = *(v7 + 18);
      if ((v10 - 1) < 2)
      {
        return *v7;
      }

      if (v10 == 5 && *(v7 + 8))
      {
        v7 = *v7;
        return *v7;
      }

      return 0;
    }
  }

  return result;
}

uint64_t swift_func_getReturnTypeInfo(char *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v27 = xmmword_1806726B0;
  v28 = 0;
  v29 = 0;
  v64 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
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
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v62 = 0;
  v26[0] = &unk_1EEEAA6E0;
  v26[1] = &v65;
  v26[2] = &v66;
  FunctionTypeFromMethod = extractFunctionTypeFromMethod(v26, a1, a2);
  if (!FunctionTypeFromMethod)
  {
    goto LABEL_9;
  }

  v7 = *(FunctionTypeFromMethod + 18);
  switch(v7)
  {
    case 1:
      v8 = *FunctionTypeFromMethod;
      if (!*FunctionTypeFromMethod)
      {
LABEL_9:
        v10 = 0;
        goto LABEL_10;
      }

      break;
    case 5:
      v9 = *(FunctionTypeFromMethod + 8);
      if (!v9)
      {
        goto LABEL_9;
      }

      v8 = *(*FunctionTypeFromMethod + 8 * (v9 - 1));
      if (!v8)
      {
        goto LABEL_9;
      }

      break;
    case 2:
      v8 = *(FunctionTypeFromMethod + 8);
      if (!v8)
      {
        goto LABEL_9;
      }

      break;
    default:
      goto LABEL_9;
  }

  v20 = 1;
  v21 = a3;
  v22 = a4;
  v23 = v25;
  v24 = 0x800000000;
  v25[32] = 0;
  v12 = *(v8 + 18);
  if ((v12 - 1) < 2)
  {
    goto LABEL_22;
  }

  if (v12 == 5 && *(v8 + 8))
  {
    v8 = *v8;
LABEL_22:
    v13 = *v8;
    goto LABEL_24;
  }

  v13 = 0;
LABEL_24:
  v16[0] = &unk_1EEEAD308;
  v16[1] = &v20;
  v17 = v16;
  v14[0] = &unk_1EEEAD350;
  v14[1] = &v20;
  v15 = v14;
  swift_getTypeByMangledNode(0, v26, v13, a4, v16, v14, v18);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  if (v19 == 1)
  {
    (v18[1])(v18[0], 3, 0);
  }

  else if (!v19)
  {
    v10 = v18[0];
    goto LABEL_37;
  }

  v10 = 0;
LABEL_37:
  if (v23 != v25)
  {
    free(v23);
  }

LABEL_10:
  v26[0] = &unk_1EEEADB90;
  if (v64 == &v63)
  {
    (*(*v64 + 32))(v64);
  }

  else if (v64)
  {
    (*(*v64 + 40))();
  }

  v26[0] = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v27);
  if (v28)
  {
    *(v28 + 48) = 0;
  }

  return v10;
}

uint64_t swift_getTypeByMangledNode@<X0>(swift *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = swift_getTypeByMangledNode::Override;
  if (swift_getTypeByMangledNode::Override != 1)
  {
    if (swift_getTypeByMangledNode::Override)
    {
      std::function<void const* ()(unsigned int,unsigned int)>::function(v19, a5);
      std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::function(v18, a6);
      (v13)(a1, a2, a3, a4, v19, v18, swift_getTypeByMangledNodeImpl);
      std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::~function(v18);
      v17 = v19;
    }

    else
    {
      std::function<void const* ()(unsigned int,unsigned int)>::function(v21, a5);
      std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::function(v20, a6);
      swift_getTypeByMangledNodeSlow(a1, a2, a3, a4, v21, v20, a7);
      std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::~function(v20);
      v17 = v21;
    }

    return std::function<void const* ()(unsigned int,unsigned int)>::~function(v17);
  }

  v14 = *(a5 + 24);
  if (v14)
  {
    if (v14 != a5)
    {
      v25 = (*(*v14 + 16))(v14);
      v15 = *(a6 + 24);
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_7:
      if (v15 == a6)
      {
        v23 = v22;
        (*(*v15 + 24))(v15, v22);
      }

      else
      {
        v23 = (*(*v15 + 16))(v15);
      }

      goto LABEL_12;
    }

    v25 = v24;
    (*(*v14 + 24))(v14, v24);
    v15 = *(a6 + 24);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v25 = 0;
    v15 = *(a6 + 24);
    if (v15)
    {
      goto LABEL_7;
    }
  }

LABEL_10:
  v23 = 0;
LABEL_12:
  swift_getTypeByMangledNodeImpl(a1, a2, a3, a4, v24, v22, a7);
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
  }

  result = v25;
  if (v25 == v24)
  {
    return (*(*v25 + 32))(v25);
  }

  if (v25)
  {
    return (*(*v25 + 40))(v25);
  }

  return result;
}

uint64_t swift_func_getParameterTypeInfo(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = *MEMORY[0x1E69E9840];
  v40 = xmmword_1806726B0;
  v41 = 0;
  v42 = 0;
  v77 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v46 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
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
  v75 = 0;
  v39[0] = &unk_1EEEAA6E0;
  v39[1] = &v78;
  v39[2] = &v79;
  FunctionTypeFromMethod = extractFunctionTypeFromMethod(v39, a1, a2);
  if (!FunctionTypeFromMethod)
  {
    a6 = 0xFFFFFFFFLL;
    goto LABEL_62;
  }

  v10 = swift::Demangle::__runtime::Node::findByKind(FunctionTypeFromMethod, 3, 1);
  v11 = *(v10 + 18);
  if ((v11 - 1) < 2)
  {
    v12 = v10;
LABEL_8:
    v13 = *v12;
    goto LABEL_10;
  }

  if (v11 == 5 && *(v10 + 8))
  {
    v12 = *v10;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_10:
  if (*(v13 + 18) - 1 >= 2)
  {
    v13 = *v13;
  }

  v14 = *v13;
  if (*(v14 + 16) == 234)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  if (!v15)
  {
    goto LABEL_57;
  }

  v16 = *(v15 + 18);
  if (v16 == 1)
  {
LABEL_22:
    if (v16 == a6)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

  if (v16 == 5)
  {
    v16 = *(v15 + 8);
    goto LABEL_22;
  }

  if (v16 != 2)
  {
    v16 = 0;
    if (!a6)
    {
      goto LABEL_23;
    }

LABEL_57:
    a6 = 4294967294;
    goto LABEL_62;
  }

  v16 = 2;
  if (a6 != 2)
  {
    goto LABEL_57;
  }

LABEL_23:
  v33 = 1;
  v34 = a3;
  v35 = a4;
  v36 = v38;
  v37 = 0x800000000;
  v38[32] = 0;
  if (a6)
  {
    v17 = 0;
    while (1)
    {
      v19 = *(v15 + 18);
      v20 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_31;
      }

      if (v19 != 5)
      {
        break;
      }

      if (*(v15 + 8) <= v17)
      {
LABEL_36:
        v22 = 0;
        goto LABEL_37;
      }

LABEL_32:
      v21 = v15;
      if (v20 >= 2)
      {
        v21 = *v15;
      }

      v22 = *(v21 + 8 * v17);
LABEL_37:
      if (*(v22 + 16) != 235)
      {
        goto LABEL_44;
      }

      v23 = *(v22 + 18);
      if ((v23 - 1) < 2)
      {
        goto LABEL_42;
      }

      if (v23 == 5 && *(v22 + 8))
      {
        v22 = *v22;
LABEL_42:
        v22 = *v22;
        goto LABEL_44;
      }

      v22 = 0;
LABEL_44:
      v29[0] = &unk_1EEEAD398;
      v29[1] = &v33;
      v30 = v29;
      v27[0] = &unk_1EEEAD3E0;
      v27[1] = &v33;
      v28 = v27;
      swift_getTypeByMangledNode(0, v39, v22, a4, v29, v27, v31);
      if (v28 == v27)
      {
        (*(*v28 + 32))(v28);
      }

      else if (v28)
      {
        (*(*v28 + 40))();
      }

      if (v30 == v29)
      {
        (*(*v30 + 32))(v30);
        v24 = v32;
        if (!v32)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v30)
        {
          (*(*v30 + 40))();
        }

        v24 = v32;
        if (!v32)
        {
LABEL_25:
          v18 = v31[0];
          goto LABEL_26;
        }
      }

      if (v24 == 1)
      {
        (v31[1])(v31[0], 3, 0);
        a6 = 4294967293;
        goto LABEL_60;
      }

      v18 = 0;
LABEL_26:
      *(a5 + 8 * v17++) = v18;
      if (v16 == v17)
      {
        a6 = a6;
        goto LABEL_60;
      }
    }

    if (v19 != 2)
    {
      goto LABEL_36;
    }

    v19 = 2;
LABEL_31:
    if (v19 <= v17)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_60:
  if (v36 != v38)
  {
    free(v36);
  }

LABEL_62:
  v39[0] = &unk_1EEEADB90;
  if (v77 == &v76)
  {
    (*(*v77 + 32))(v77);
  }

  else if (v77)
  {
    (*(*v77 + 40))();
  }

  v39[0] = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v40);
  if (v41)
  {
    *(v41 + 48) = 0;
  }

  return a6;
}

char *swift_distributed_getWitnessTables(unsigned int *a1, uint64_t a2)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  v18 = 1;
  v19 = a1;
  v20 = a2;
  v21 = v23;
  v22 = 0x800000000;
  v23[32] = 0;
  v2 = *a1;
  v3 = a1 + 2 * (v2 & 0xFFF);
  v4 = *(v3 + 1);
  v16[0] = &unk_1EEEAD428;
  v16[1] = &v18;
  v17 = v16;
  v14[0] = &unk_1EEEAD470;
  v14[1] = &v18;
  v15 = v14;
  v12[0] = &unk_1EEEAD4B8;
  v12[1] = &v18;
  v13 = v12;
  swift::_checkGenericRequirements((v3 + 4), v4, &v4[(v3 + 4) + 3] & 0xFFFFFFFFFFFFFFFCLL, (v2 >> 12), &v24, v16, v14, v12, v10, 0);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
    if (v11)
    {
LABEL_13:
      v5 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (v17)
    {
      (*(*v17 + 40))();
    }

    if (v11)
    {
      goto LABEL_13;
    }
  }

  if (v25)
  {
    v6 = malloc_type_malloc(8 * v25, 0x80040B8603338uLL);
    v5 = v6;
    if (v25)
    {
      v7 = 0;
      v8 = 8 * v25;
      do
      {
        *&v6[v7] = *&v24[v7];
        v7 += 8;
      }

      while (v8 != v7);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_21:
  if (v11 == 1)
  {
    (v10[1])(v10[0], 3, 0);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  return v5;
}

uint64_t swift_getOpaqueTypeMetadataImpl(unsigned __int8 a1, uint64_t a2, _BYTE *a3, unsigned int a4)
{
  v29[33] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v9 = (swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::InProcess>,swift::TargetGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(v7) + 4 * a4);
  v10 = *v9;
  v11 = v9 + v10;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v12, v8);
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = 0;
  }

  v24 = 0;
  v25 = v15;
  v26 = a2;
  v27 = v29;
  v28 = 0x800000000;
  v29[32] = 0;
  v20[0] = &unk_1EEEACE88;
  v20[1] = &v24;
  v21 = v20;
  v18[0] = &unk_1EEEACED0;
  v18[1] = &v24;
  v19 = v18;
  swift_getTypeByMangledName(a1, SymbolicMangledNameStringRef, v13, a2, v20, v18, v22);
  if (v23 == 1)
  {
    (v22[1])(v22[0], 3, 0);
  }

  else if (!v23)
  {
    v16 = v22[0];
    goto LABEL_15;
  }

  v16 = 0;
LABEL_15:
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))();
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v16;
}

uint64_t swift_getOpaqueTypeConformance2(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  return swift_getOpaqueTypeMetadataImpl(0, a1, v4, a3);
}

uint64_t swift_getOpaqueTypeConformance(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  return swift_getOpaqueTypeMetadataImpl(0, a1, v4, a3);
}

uint64_t _swift_instantiateCheckedGenericMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
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

  v23 = xmmword_1806726B0;
  v24 = 0;
  v25 = 0;
  v60 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
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
  v57 = 0u;
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
  v40 = 0u;
  v58 = 0;
  v22[1] = &v61;
  v22[2] = &v62;
  v22[0] = &unk_1EEEACE60;
  v19 = v21;
  v20 = 0x800000000;
  v4 = 0;
  if (swift::_gatherWrittenGenericParameters(v3, a2, a3, &v19, v22))
  {
    v17[0] = v18;
    v17[1] = 0x800000000;
    v14 = v16;
    v15 = 0x800000000;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    _gatherGenericParameters(v5, v19, v20, 0, v17, &v14, v22, v12);
    if (v13)
    {
      (v12[1])(v12[0], 3, 0);
      v4 = 0;
LABEL_24:
      if (v14 != v16)
      {
        free(v14);
      }

      if (v17[0] != v18)
      {
        free(v17[0]);
      }

      goto LABEL_28;
    }

    v6 = 0;
    v8 = v3 + 12;
    v7 = *(v3 + 12);
    if (v7 && v8 + v7)
    {
      v6 = (v8 + v7);
    }

    v9 = v14;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v10 = v6(0, *v14, *(v14 + 1));
        goto LABEL_23;
      }

      if (v15 == 3)
      {
        v10 = (v6)(0, *v14, *(v14 + 1), *(v14 + 2));
LABEL_23:
        v4 = v10;
        goto LABEL_24;
      }
    }

    else if (v15 == 1)
    {
      v9 = *v14;
    }

    v10 = (v6)(0, v9);
    goto LABEL_23;
  }

LABEL_28:
  if (v19 != v21)
  {
    free(v19);
  }

  v22[0] = &unk_1EEEADB90;
  if (v60 == &v59)
  {
    (*(*v60 + 32))(v60);
  }

  else if (v60)
  {
    (*(*v60 + 40))();
  }

  v22[0] = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v23);
  if (v24)
  {
    *(v24 + 48) = 0;
  }

  return v4;
}

uint64_t swift::_gatherWrittenGenericParameters(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58[4] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = result;
    GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(result);
    if (!GenericContext)
    {
      return 1;
    }

    v9 = GenericContext;
    if (!*(GenericContext + 2))
    {
      return 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = &GenericContext[*(GenericContext + 2) + 12];
    v13 = GenericContext + 12;
    v14 = a2;
    do
    {
      if ((*v13 & 0x80000000) == 0)
      {
        v15 = v13 + 1;
        do
        {
          v16 = *(a4 + 8);
          if (v16 >= *(a4 + 12))
          {
            __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v16 + 1, 8);
            v14 = a2;
            v16 = *(a4 + 8);
          }

          *(*a4 + 8 * v16) = 0;
          ++*(a4 + 8);
          if (v15 == v12)
          {
            goto LABEL_16;
          }

          v17 = *v15++;
        }

        while ((v17 & 0x80000000) == 0);
        v13 = v15 - 1;
        v11 = 1;
      }

      v18 = *(v14 + 8 * v10);
      v19 = *(a4 + 8);
      if (v19 >= *(a4 + 12))
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v19 + 1, 8);
        v14 = a2;
        v19 = *(a4 + 8);
      }

      *(*a4 + 8 * v19) = v18;
      ++*(a4 + 8);
      ++v10;
      ++v13;
    }

    while (v13 != v12);
    if (v11)
    {
LABEL_16:
      v56 = v58;
      v57 = 0x800000000;
      swift::_gatherGenericParameterCounts(v7, &v56, a5);
      v43[0] = a4;
      v43[1] = &v56;
      if (*(v9 + 3))
      {
        v21 = 12 * *(v9 + 3);
        v22 = ((&v9[*(v9 + 2) + 15] & 0xFFFFFFFFFFFFFFFCLL) + 8);
        v23 = v22;
        while (1)
        {
          if ((*(v22 - 2) & 0x1F) != 1)
          {
            goto LABEL_22;
          }

          SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v23 + *(v22 - 1) - 4, v20);
          v27 = demangleToGenericParamRef(SymbolicMangledNameStringRef, v26);
          if ((v20 & 1) == 0)
          {
            goto LABEL_22;
          }

          if (v27 >= v57)
          {
            goto LABEL_75;
          }

          v28 = v27 ? v56[(v27 - 1)] : 0;
          v29 = (v28 + HIDWORD(v27));
          if (v29 >= v56[v27] || *(a4 + 8) <= v29)
          {
            goto LABEL_75;
          }

          if (!*(*a4 + 8 * v29))
          {
            break;
          }

          v30 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v23 + *v22, v20);
          v32 = demangleToGenericParamRef(v30, v31);
          if ((v20 & 1) == 0)
          {
            goto LABEL_22;
          }

          if (v32 >= v57)
          {
            goto LABEL_75;
          }

          v33 = v32 ? v56[(v32 - 1)] : 0;
          v39 = v33 + HIDWORD(v32);
          if (v39 >= v56[v32] || *(a4 + 8) <= v39)
          {
            goto LABEL_75;
          }

          v24 = (*a4 + 8 * v39);
          if (*v24)
          {
            goto LABEL_75;
          }

          v36 = *(*a4 + 8 * v29);
          if (!v36)
          {
            goto LABEL_75;
          }

LABEL_21:
          *v24 = v36;
LABEL_22:
          v23 += 3;
          v22 += 3;
          v21 -= 12;
          if (!v21)
          {
            goto LABEL_74;
          }
        }

        if ((*(v22 - 7) & 1) == 0)
        {
          v34 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v23 + *v22, v20);
          v46[0] = &unk_1EEEAD590;
          v46[1] = v43;
          v47 = v46;
          v44[0] = &unk_1EEEAD5D8;
          v44[1] = v43;
          v45 = v44;
          swift_getTypeByMangledName(0xFF, v34, v35, a2, v46, v44, &v48);
          if (v51 == 1)
          {
            v49(v48, 3, 0);
          }

          else if (!v51)
          {
            v36 = v48;
            goto LABEL_54;
          }

          v36 = 0;
LABEL_54:
          if (v45 == v44)
          {
            (*(*v45 + 32))(v45);
          }

          else if (v45)
          {
            (*(*v45 + 40))();
          }

          if (v47 == v46)
          {
            (*(*v47 + 32))(v47);
            if (!v36)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v47)
            {
              (*(*v47 + 40))();
            }

            if (!v36)
            {
LABEL_75:
              result = 0;
              goto LABEL_76;
            }
          }

          goto LABEL_20;
        }

        v37 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v23 + *v22, v20);
        v54[0] = &unk_1EEEAD500;
        v54[1] = v43;
        v55 = v54;
        v52[0] = &unk_1EEEAD548;
        v52[1] = v43;
        v53 = v52;
        swift::getTypeValueByMangledName(v37, v38, v54, v52, &v48);
        if (v50 == 1)
        {
          v49(v48, 3, 0);
        }

        else if (!v50)
        {
          v36 = v48;
LABEL_67:
          if (v53 == v52)
          {
            (*(*v53 + 32))(v53);
          }

          else if (v53)
          {
            (*(*v53 + 40))();
          }

          if (v55 == v54)
          {
            (*(*v55 + 32))(v55);
          }

          else if (v55)
          {
            (*(*v55 + 40))();
          }

LABEL_20:
          v24 = (*a4 + 8 * v29);
          goto LABEL_21;
        }

        v36 = 0;
        goto LABEL_67;
      }

LABEL_74:
      result = 1;
LABEL_76:
      if (v56 != v58)
      {
        v41 = result;
        free(v56);
        return v41;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}