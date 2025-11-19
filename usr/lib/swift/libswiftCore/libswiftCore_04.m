uint64_t swift_allocateMetadataPack(uint64_t result, unint64_t a2)
{
  if ((result & 1) == 0)
  {
    v78 = result;
    v79 = a2;
    explicit = atomic_load_explicit(&qword_1ED4260F0, memory_order_acquire);
    if (explicit && v79 == *explicit)
    {
      if (!v79)
      {
        return (explicit + 1) | 1;
      }

      v3 = 0;
      v4 = 1;
      while (*(v78 + 8 * v3) == explicit[v3 + 1])
      {
        v3 = v4++;
        if (v79 == v3)
        {
          return (explicit + 1) | 1;
        }
      }
    }

    atomic_fetch_add_explicit(&MetadataPacks, 1u, memory_order_acquire);
    do
    {
      v5 = atomic_load_explicit(&qword_1ED4260D0, memory_order_acquire);
      v6 = atomic_load_explicit(&qword_1ED4260D8, memory_order_acquire);
      v7 = atomic_load_explicit(&dword_1ED4260CC, memory_order_acquire);
    }

    while (v5 != atomic_load_explicit(&qword_1ED4260D0, memory_order_acquire));
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8 && v7 != 0)
    {
      if (v10)
      {
        qword_1ED4260F0 = *v10;
        explicit = *v10;
        atomic_fetch_add_explicit(&MetadataPacks, 0xFFFFFFFF, memory_order_release);
        return (explicit + 1) | 1;
      }
    }

    atomic_fetch_add_explicit(&MetadataPacks, 0xFFFFFFFF, memory_order_release);
    v12 = v78;
    v11 = v79;
    v80[0] = v78;
    v80[1] = v79;
    os_unfair_lock_lock(&unk_1ED4260E0);
    v13 = qword_1ED4260D8;
    v14 = qword_1ED4260D8 & 3;
    v15 = v14 == 0;
    if ((qword_1ED4260D8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v15 = 1;
    }

    v72 = qword_1ED4260D8 & 0xFFFFFFFFFFFFFFFCLL;
    v71 = v15;
    if (v15)
    {
      v16 = 4;
    }

    else
    {
      v16 = *(qword_1ED4260D8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = dword_1ED4260CC;
    v18 = qword_1ED4260D0;
    if (qword_1ED4260D0)
    {
      v19 = qword_1ED4260D0 + 8;
    }

    else
    {
      v19 = 0;
    }

    if (v20)
    {
      explicit = *v20;
      __dmb(0xBu);
      if (MetadataPacks)
      {
LABEL_122:
        os_unfair_lock_unlock(&unk_1ED4260E0);
        qword_1ED4260F0 = explicit;
        return (explicit + 1) | 1;
      }

      v22 = qword_1ED4260E8;
      if (qword_1ED4260E8)
      {
        do
        {
          v23 = *v22;
          free(v22[1]);
          free(v22);
          v22 = v23;
        }

        while (v23);
      }

LABEL_121:
      qword_1ED4260E8 = 0;
      goto LABEL_122;
    }

    v76 = v19;
    v69 = v11;
    v70 = v18;
    __src = v18 + 2;
    v68 = (v17 + 1);
    if ((1 << v16) / ((1 << v16) - v68) < 4)
    {
      v30 = v13;
    }

    else
    {
      v24 = (v16 + 1);
      v75 = v16;
      if (v24 >= 0x11)
      {
        v25 = 4;
      }

      else
      {
        v25 = 2;
      }

      if (v24 < 9)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      v27 = malloc_type_calloc(2 << v16, v26, 0x48DDA4AEuLL);
      if (!v27)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v28 = v16;
      v29 = v19;
      v65 = v17;
      v66 = v12;
      if (v26 != 1)
      {
        if (v26 == 4)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }
      }

      v30 = v26 | v27;
      *v27 = v16 + 1;
      if (v16)
      {
        v31 = ~(-2 << v16);
        v32 = v13 & 3;
        v33 = v72;
        if (!v14)
        {
          v33 = 0;
        }

        v77 = v33;
        v34 = v30 & 3;
        if ((v30 & 3) != 0)
        {
          v35 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v35 = 0;
        }

        v36 = 1;
        v74 = v30;
        v73 = v13 & 3;
        do
        {
          if (v32 > 1)
          {
            if (v32 == 2)
            {
              LODWORD(v37) = *(v77 + 2 * v36);
              if (*(v77 + 2 * v36))
              {
                goto LABEL_65;
              }
            }

            else
            {
              LODWORD(v37) = *(v77 + 4 * v36);
              if (v37)
              {
LABEL_65:
                v38 = *(v29 + 8 * (v37 - 1));
                v81 = 0;
                if (*v38)
                {
                  v39 = v13;
                  v40 = 0;
                  v41 = v38 + 1;
                  do
                  {
                    v42 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(&v81, v41);
                    v81 = v42;
                    ++v40;
                    ++v41;
                  }

                  while (v40 != *v38);
                  v13 = v39;
                  v30 = v74;
                  v28 = v75;
                  v29 = v76;
                  v32 = v73;
                }

                else
                {
                  v42 = 0;
                }

                while (1)
                {
                  v44 = v42 & v31;
                  if ((v42 & v31) != 0)
                  {
                    if (v34 > 1)
                    {
                      LODWORD(v43) = v34 == 2 ? *(v35 + 2 * v44) : *(v35 + 4 * v44);
                    }

                    else if (v34)
                    {
                      LODWORD(v43) = *(v35 + v44);
                    }

                    else
                    {
                      v43 = (v30 >> (4 * v44)) & 0xF;
                    }

                    if (!v43)
                    {
                      break;
                    }
                  }

                  v42 = v44 + 1;
                }

                if (v34 == 3)
                {
                  *(v35 + 4 * v44) = v37;
                }

                else if (v34 == 2)
                {
                  *(v35 + 2 * v44) = v37;
                }

                else
                {
                  *(v35 + v44) = v37;
                }
              }
            }
          }

          else if (v32)
          {
            LODWORD(v37) = *(v77 + v36);
            if (*(v77 + v36))
            {
              goto LABEL_65;
            }
          }

          else
          {
            v37 = (v13 >> (4 * v36)) & 0xF;
            if (v37)
            {
              goto LABEL_65;
            }
          }

          ++v36;
        }

        while (!(v36 >> v28));
      }

      atomic_store(v30, &qword_1ED4260D8);
      if (!v71)
      {
        v45 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v45 = qword_1ED4260E8;
        v45[1] = v72;
        qword_1ED4260E8 = v45;
      }

      v17 = v65;
      v12 = v66;
    }

    v46 = v21;
    if (!v70 || (v47 = v70, v17 >= *v70))
    {
      v48 = v17 + (v17 >> 2);
      v49 = v17;
      if (v48 <= v17 + 1)
      {
        v48 = v17 + 1;
      }

      v50 = malloc_good_size(8 * v48 + 8);
      v51 = malloc_type_malloc(v50, 0x1020040D5A9D86FuLL);
      if (!v51)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v47 = v51;
      *v51 = (v50 + 0x7FFFFFFF8) >> 3;
      v17 = v49;
      if (v70)
      {
        memcpy(v51 + 2, __src, 8 * v49);
        v52 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v52 = qword_1ED4260E8;
        v52[1] = v70;
        qword_1ED4260E8 = v52;
      }

      atomic_store(v47, &qword_1ED4260D0);
    }

    LOWORD(v81) = 24;
    v53 = swift::MetadataAllocator::Allocate(&v81, 8 * v69 + 8, 8uLL);
    explicit = v53;
    *v53 = v69;
    if (!v69)
    {
LABEL_100:
      *(v47 + 8 + 8 * v17) = v53;
      atomic_store(v68, &dword_1ED4260CC);
      if ((v30 & 3) > 1)
      {
        if ((v30 & 3) == 2)
        {
          v57 = v30 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v30 & 3) == 0)
          {
            v57 = 0;
          }

          atomic_store(v68, (v57 + 2 * v46));
        }

        else
        {
          v62 = v30 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v30 & 3) == 0)
          {
            v62 = 0;
          }

          atomic_store(v68, (v62 + 4 * v46));
        }
      }

      else if ((v30 & 3) != 0)
      {
        atomic_store(v68, ((v30 & 0xFFFFFFFFFFFFFFFCLL) + v46));
      }

      else
      {
        atomic_store((v68 << (4 * v46)) | v30, &qword_1ED4260D8);
      }

      __dmb(0xBu);
      if (MetadataPacks)
      {
        goto LABEL_122;
      }

      v63 = qword_1ED4260E8;
      if (qword_1ED4260E8)
      {
        do
        {
          v64 = *v63;
          free(v63[1]);
          free(v63);
          v63 = v64;
        }

        while (v64);
      }

      goto LABEL_121;
    }

    if (v69 >= 0xE)
    {
      v55 = 0;
      v54 = 0;
      if (!v69 || (v69 - 1) >> 32)
      {
        goto LABEL_98;
      }

      if (&v53[-v12 + 8] >= 0x20)
      {
        v54 = v69 & 0x1FFFFFFFCLL;
        v55 = v69 & 0xFFFFFFFC;
        v58 = (v12 + 16);
        v59 = v53 + 24;
        v60 = v69 & 0x1FFFFFFFCLL;
        do
        {
          v61 = *v58;
          *(v59 - 1) = *(v58 - 1);
          *v59 = v61;
          v58 += 2;
          v59 += 2;
          v60 -= 4;
        }

        while (v60);
        if (v69 == v54)
        {
          goto LABEL_100;
        }

        goto LABEL_98;
      }
    }

    v54 = 0;
    v55 = 0;
LABEL_98:
    v56 = v55 + 1;
    do
    {
      *&v53[8 * v54 + 8] = *(v12 + 8 * v54);
      v54 = v56++;
    }

    while (v69 > v54);
    goto LABEL_100;
  }

  return result;
}

uint64_t swift_allocateWitnessTablePack(uint64_t result, unint64_t a2)
{
  if ((result & 1) == 0)
  {
    v78 = result;
    v79 = a2;
    explicit = atomic_load_explicit(&qword_1ED426120, memory_order_acquire);
    if (explicit && v79 == *explicit)
    {
      if (!v79)
      {
        return (explicit + 1) | 1;
      }

      v3 = 0;
      v4 = 1;
      while (*(v78 + 8 * v3) == explicit[v3 + 1])
      {
        v3 = v4++;
        if (v79 == v3)
        {
          return (explicit + 1) | 1;
        }
      }
    }

    atomic_fetch_add_explicit(&WitnessTablePacks, 1u, memory_order_acquire);
    do
    {
      v5 = atomic_load_explicit(&qword_1ED426100, memory_order_acquire);
      v6 = atomic_load_explicit(&qword_1ED426108, memory_order_acquire);
      v7 = atomic_load_explicit(&dword_1ED4260FC, memory_order_acquire);
    }

    while (v5 != atomic_load_explicit(&qword_1ED426100, memory_order_acquire));
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8 && v7 != 0)
    {
      if (v10)
      {
        qword_1ED426120 = *v10;
        explicit = *v10;
        atomic_fetch_add_explicit(&WitnessTablePacks, 0xFFFFFFFF, memory_order_release);
        return (explicit + 1) | 1;
      }
    }

    atomic_fetch_add_explicit(&WitnessTablePacks, 0xFFFFFFFF, memory_order_release);
    v12 = v78;
    v11 = v79;
    v80[0] = v78;
    v80[1] = v79;
    os_unfair_lock_lock(&unk_1ED426110);
    v13 = qword_1ED426108;
    v14 = qword_1ED426108 & 3;
    v15 = v14 == 0;
    if ((qword_1ED426108 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v15 = 1;
    }

    v72 = qword_1ED426108 & 0xFFFFFFFFFFFFFFFCLL;
    v71 = v15;
    if (v15)
    {
      v16 = 4;
    }

    else
    {
      v16 = *(qword_1ED426108 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = dword_1ED4260FC;
    v18 = qword_1ED426100;
    if (qword_1ED426100)
    {
      v19 = qword_1ED426100 + 8;
    }

    else
    {
      v19 = 0;
    }

    if (v20)
    {
      explicit = *v20;
      __dmb(0xBu);
      if (WitnessTablePacks)
      {
LABEL_122:
        os_unfair_lock_unlock(&unk_1ED426110);
        qword_1ED426120 = explicit;
        return (explicit + 1) | 1;
      }

      v22 = qword_1ED426118;
      if (qword_1ED426118)
      {
        do
        {
          v23 = *v22;
          free(v22[1]);
          free(v22);
          v22 = v23;
        }

        while (v23);
      }

LABEL_121:
      qword_1ED426118 = 0;
      goto LABEL_122;
    }

    v76 = v19;
    v69 = v11;
    v70 = v18;
    __src = v18 + 2;
    v68 = (v17 + 1);
    if ((1 << v16) / ((1 << v16) - v68) < 4)
    {
      v30 = v13;
    }

    else
    {
      v24 = (v16 + 1);
      v75 = v16;
      if (v24 >= 0x11)
      {
        v25 = 4;
      }

      else
      {
        v25 = 2;
      }

      if (v24 < 9)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      v27 = malloc_type_calloc(2 << v16, v26, 0x48DDA4AEuLL);
      if (!v27)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v28 = v16;
      v29 = v19;
      v65 = v17;
      v66 = v12;
      if (v26 != 1)
      {
        if (v26 == 4)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }
      }

      v30 = v26 | v27;
      *v27 = v16 + 1;
      if (v16)
      {
        v31 = ~(-2 << v16);
        v32 = v13 & 3;
        v33 = v72;
        if (!v14)
        {
          v33 = 0;
        }

        v77 = v33;
        v34 = v30 & 3;
        if ((v30 & 3) != 0)
        {
          v35 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v35 = 0;
        }

        v36 = 1;
        v74 = v30;
        v73 = v13 & 3;
        do
        {
          if (v32 > 1)
          {
            if (v32 == 2)
            {
              LODWORD(v37) = *(v77 + 2 * v36);
              if (*(v77 + 2 * v36))
              {
                goto LABEL_65;
              }
            }

            else
            {
              LODWORD(v37) = *(v77 + 4 * v36);
              if (v37)
              {
LABEL_65:
                v38 = *(v29 + 8 * (v37 - 1));
                v81 = 0;
                if (*v38)
                {
                  v39 = v13;
                  v40 = 0;
                  v41 = v38 + 1;
                  do
                  {
                    v42 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(&v81, v41);
                    v81 = v42;
                    ++v40;
                    ++v41;
                  }

                  while (v40 != *v38);
                  v13 = v39;
                  v30 = v74;
                  v28 = v75;
                  v29 = v76;
                  v32 = v73;
                }

                else
                {
                  v42 = 0;
                }

                while (1)
                {
                  v44 = v42 & v31;
                  if ((v42 & v31) != 0)
                  {
                    if (v34 > 1)
                    {
                      LODWORD(v43) = v34 == 2 ? *(v35 + 2 * v44) : *(v35 + 4 * v44);
                    }

                    else if (v34)
                    {
                      LODWORD(v43) = *(v35 + v44);
                    }

                    else
                    {
                      v43 = (v30 >> (4 * v44)) & 0xF;
                    }

                    if (!v43)
                    {
                      break;
                    }
                  }

                  v42 = v44 + 1;
                }

                if (v34 == 3)
                {
                  *(v35 + 4 * v44) = v37;
                }

                else if (v34 == 2)
                {
                  *(v35 + 2 * v44) = v37;
                }

                else
                {
                  *(v35 + v44) = v37;
                }
              }
            }
          }

          else if (v32)
          {
            LODWORD(v37) = *(v77 + v36);
            if (*(v77 + v36))
            {
              goto LABEL_65;
            }
          }

          else
          {
            v37 = (v13 >> (4 * v36)) & 0xF;
            if (v37)
            {
              goto LABEL_65;
            }
          }

          ++v36;
        }

        while (!(v36 >> v28));
      }

      atomic_store(v30, &qword_1ED426108);
      if (!v71)
      {
        v45 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v45 = qword_1ED426118;
        v45[1] = v72;
        qword_1ED426118 = v45;
      }

      v17 = v65;
      v12 = v66;
    }

    v46 = v21;
    if (!v70 || (v47 = v70, v17 >= *v70))
    {
      v48 = v17 + (v17 >> 2);
      v49 = v17;
      if (v48 <= v17 + 1)
      {
        v48 = v17 + 1;
      }

      v50 = malloc_good_size(8 * v48 + 8);
      v51 = malloc_type_malloc(v50, 0x1020040D5A9D86FuLL);
      if (!v51)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v47 = v51;
      *v51 = (v50 + 0x7FFFFFFF8) >> 3;
      v17 = v49;
      if (v70)
      {
        memcpy(v51 + 2, __src, 8 * v49);
        v52 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v52 = qword_1ED426118;
        v52[1] = v70;
        qword_1ED426118 = v52;
      }

      atomic_store(v47, &qword_1ED426100);
    }

    LOWORD(v81) = 25;
    v53 = swift::MetadataAllocator::Allocate(&v81, 8 * v69 + 8, 8uLL);
    explicit = v53;
    *v53 = v69;
    if (!v69)
    {
LABEL_100:
      *(v47 + 8 + 8 * v17) = v53;
      atomic_store(v68, &dword_1ED4260FC);
      if ((v30 & 3) > 1)
      {
        if ((v30 & 3) == 2)
        {
          v57 = v30 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v30 & 3) == 0)
          {
            v57 = 0;
          }

          atomic_store(v68, (v57 + 2 * v46));
        }

        else
        {
          v62 = v30 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v30 & 3) == 0)
          {
            v62 = 0;
          }

          atomic_store(v68, (v62 + 4 * v46));
        }
      }

      else if ((v30 & 3) != 0)
      {
        atomic_store(v68, ((v30 & 0xFFFFFFFFFFFFFFFCLL) + v46));
      }

      else
      {
        atomic_store((v68 << (4 * v46)) | v30, &qword_1ED426108);
      }

      __dmb(0xBu);
      if (WitnessTablePacks)
      {
        goto LABEL_122;
      }

      v63 = qword_1ED426118;
      if (qword_1ED426118)
      {
        do
        {
          v64 = *v63;
          free(v63[1]);
          free(v63);
          v63 = v64;
        }

        while (v64);
      }

      goto LABEL_121;
    }

    if (v69 >= 0xE)
    {
      v55 = 0;
      v54 = 0;
      if (!v69 || (v69 - 1) >> 32)
      {
        goto LABEL_98;
      }

      if (&v53[-v12 + 8] >= 0x20)
      {
        v54 = v69 & 0x1FFFFFFFCLL;
        v55 = v69 & 0xFFFFFFFC;
        v58 = (v12 + 16);
        v59 = v53 + 24;
        v60 = v69 & 0x1FFFFFFFCLL;
        do
        {
          v61 = *v58;
          *(v59 - 1) = *(v58 - 1);
          *v59 = v61;
          v58 += 2;
          v59 += 2;
          v60 -= 4;
        }

        while (v60);
        if (v69 == v54)
        {
          goto LABEL_100;
        }

        goto LABEL_98;
      }
    }

    v54 = 0;
    v55 = 0;
LABEL_98:
    v56 = v55 + 1;
    do
    {
      *&v53[8 * v54 + 8] = *(v12 + 8 * v54);
      v54 = v56++;
    }

    while (v69 > v54);
    goto LABEL_100;
  }

  return result;
}

const char *swift::getResilientMetadataBounds(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = (a1 + 24 + v1);
  }

  else
  {
    v2 = 0;
  }

  if (atomic_load_explicit(v2, memory_order_acquire))
  {
    return v2[1];
  }

  else
  {
    return computeMetadataBoundsFromSuperclass(a1, v2);
  }
}

const char *computeMetadataBoundsFromSuperclass(_BYTE *a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    a1 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(a1);
  v7 = *TrailingObjectsImpl;
  result = TrailingObjectsImpl + v7;
  if (v7)
  {
    v9 = result == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v12 = (*v3 >> 25) & 7;
    if (v12 <= 1)
    {
      if (!v12)
      {
        v16 = (result + 24);
        if ((result[3] & 0x20) == 0)
        {
          v10 = *v16;
          goto LABEL_41;
        }

        v23 = *v16;
        v24 = (v16 + v23);
        if (v23)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (atomic_load_explicit(v25, memory_order_acquire))
        {
LABEL_38:
          v10 = v25[1];
          goto LABEL_41;
        }

LABEL_40:
        v10 = computeMetadataBoundsFromSuperclass(result);
        goto LABEL_41;
      }

      if (v12 == 1)
      {
        if (!*result)
        {
          swift::fatalError(0, "instantiating class metadata for class with missing weak-linked ancestor", v5, v6);
        }

        v13 = *result;
        v14 = (*result + 24);
        if ((*(*result + 3) & 0x20) == 0)
        {
          v10 = *v14;
LABEL_41:
          v11 = HIDWORD(v10);
          goto LABEL_42;
        }

        v26 = *v14;
        v27 = (v14 + v26);
        if (v26)
        {
          v25 = v27;
        }

        else
        {
          v25 = 0;
        }

        if (atomic_load_explicit(v25, memory_order_acquire))
        {
          goto LABEL_38;
        }

        result = v13;
        goto LABEL_40;
      }

LABEL_53:
      __break(1u);
      return result;
    }

    if (v12 == 2)
    {
      v15 = objc_lookUpClass(result);
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_53;
      }

      v15 = *result;
    }

    InitializedObjCClass = swift_getInitializedObjCClass(v15);
    if ((*(InitializedObjCClass + 32) & 2) != 0)
    {
      v18 = *(InitializedObjCClass + 60);
      v19 = v18 >> 3;
      v20 = ((*(InitializedObjCClass + 56) - v18) >> 3);
      v21 = v18 >= 0x18;
      v22 = 3;
      if (v21)
      {
        v22 = v19;
      }

      if (v20 <= 0xA)
      {
        v20 = 10;
      }

      v10 = v22 | (v20 << 32);
    }

    else
    {
      v10 = 0xA00000003;
    }

    goto LABEL_41;
  }

  LODWORD(v10) = 3;
  LODWORD(v11) = 10;
LABEL_42:
  v28 = v3[8];
  v29 = 8 * v11;
  if ((*v3 & 0x10000000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = v3[8];
  }

  v31 = (v30 + v11);
  if ((*v3 & 0x10000000) != 0)
  {
    v32 = (v28 + v10);
  }

  else
  {
    v32 = v10;
  }

  if ((*v3 & 0x10000000) != 0)
  {
    v33 = -8 * (v28 + v10);
  }

  else
  {
    v33 = v29;
  }

  result = (v32 | (v31 << 32));
  *(a2 + 8) = v32;
  *(a2 + 12) = v31;
  atomic_store(v33, a2);
  return result;
}

unint64_t swift::getResilientImmediateMembersOffset(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = (a1 + 24 + v1);
  }

  else
  {
    v2 = 0;
  }

  if (*v2)
  {
    return *v2 >> 3;
  }

  computeMetadataBoundsFromSuperclass(a1, v2);
  return v4 >> 3;
}

uint64_t swift::TargetMetadata<swift::InProcess>::isStaticallySpecializedGenericMetadata(uint64_t a1)
{
  v1 = *a1;
  if (*a1 == 512)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if ((*v2 & 0x80) != 0)
      {
        v3 = *(a1 + 8);
        goto LABEL_18;
      }
    }

    else if ((MEMORY[0] & 0x80) != 0)
    {
      v3 = 0;
LABEL_18:
      v8 = v3;
      if (!v3)
      {
        v3 = 0;
      }

      v11 = v3 + 28;
      v12 = *(v11 + 4);
      if (v12)
      {
        v13 = v11 + 4 + v12;
      }

      else
      {
        v13 = 0;
      }

      if ((*(v13 + 8) & 2) != 0)
      {
        return *(a1 + ((4 * *(v8 + 20) + 7) & 0x7FFFFFFF8) + 8 * *(v8 + 24)) & 1;
      }
    }

    return 0;
  }

  if (v1 > 0x7FF || (v1 - 513) > 1)
  {
    if (v1 - 2048 <= 0xFFFFFFFFFFFFF800 && (**(a1 + 64) & 0x80) != 0)
    {
      return (*(a1 + 40) >> 3) & 1;
    }

    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    if ((*v6 & 0x80) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 8);
  }

  else
  {
    if ((MEMORY[0] & 0x80) == 0)
    {
      return 0;
    }

    v7 = 0;
  }

  v9 = v7;
  v10 = v7;
  if (!v7)
  {
    v7 = 0;
  }

  v14 = v7 + 28;
  v15 = *(v14 + 4);
  if (v15)
  {
    v16 = v14 + 4 + v15;
  }

  else
  {
    v16 = 0;
  }

  if ((*(v16 + 8) & 2) == 0)
  {
    return 0;
  }

  if (v10)
  {
    v17 = v9;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v17 + 40);
  if (v6)
  {
    v19 = *(a1 + 8);
  }

  else
  {
    v19 = 0;
  }

  return *(a1 + 8 * v18 + 8 * (*(v19 + 23) != 0) + 16) & 1;
}

unint64_t swift::TargetMetadata<swift::InProcess>::getDescription(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 == 512)
  {
    v2 = a1[1];
    if (v2)
    {
      return v2;
    }
  }

  else
  {
    if (v1 <= 0x7FF)
    {
      v3 = v1 != 513;
      v4 = v1 == 514;
    }

    else
    {
      v3 = 1;
      v4 = 0;
    }

    if (!v4 && v3)
    {
      if (v1 - 1 >= 0x7FF)
      {
        v2 = a1[8];
        if (v2)
        {
          return v2;
        }
      }
    }

    else
    {
      v2 = a1[1];
      if (v2)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t swift::TargetMetadata<swift::InProcess>::isCanonicalStaticallySpecializedGenericMetadata(uint64_t a1)
{
  v1 = *a1;
  if (*a1 == 512)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if ((*v2 & 0x80) != 0)
      {
        v3 = *(a1 + 8);
        goto LABEL_18;
      }
    }

    else if ((MEMORY[0] & 0x80) != 0)
    {
      v3 = 0;
LABEL_18:
      v8 = v3;
      if (!v3)
      {
        v3 = 0;
      }

      v11 = v3 + 28;
      v12 = *(v11 + 4);
      if (v12)
      {
        v13 = v11 + 4 + v12;
      }

      else
      {
        v13 = 0;
      }

      if ((*(v13 + 8) & 2) != 0)
      {
        return (*(a1 + ((4 * *(v8 + 20) + 7) & 0x7FFFFFFF8) + 8 * *(v8 + 24)) >> 1) & 1;
      }
    }

    return 0;
  }

  if (v1 > 0x7FF || (v1 - 513) > 1)
  {
    if (v1 - 2048 <= 0xFFFFFFFFFFFFF800 && (**(a1 + 64) & 0x80) != 0)
    {
      return (*(a1 + 40) >> 4) & 1;
    }

    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    if ((*v6 & 0x80) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 8);
  }

  else
  {
    if ((MEMORY[0] & 0x80) == 0)
    {
      return 0;
    }

    v7 = 0;
  }

  v9 = v7;
  v10 = v7;
  if (!v7)
  {
    v7 = 0;
  }

  v14 = v7 + 28;
  v15 = *(v14 + 4);
  if (v15)
  {
    v16 = v14 + 4 + v15;
  }

  else
  {
    v16 = 0;
  }

  if ((*(v16 + 8) & 2) == 0)
  {
    return 0;
  }

  if (v10)
  {
    v17 = v9;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v17 + 40);
  if (v6)
  {
    v19 = *(a1 + 8);
  }

  else
  {
    v19 = 0;
  }

  return (*(a1 + 8 * v18 + 8 * (*(v19 + 23) != 0) + 16) >> 1) & 1;
}

char *swift_allocateGenericClassMetadata(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if ((*v5 & 0x20000000) != 0)
  {
    v8 = *(v5 + 24);
    if (v8)
    {
      v9 = (v8 + v5 + 24);
    }

    else
    {
      v9 = 0;
    }

    explicit = atomic_load_explicit(v9, memory_order_acquire);
    if (explicit)
    {
      v11 = v9[1];
    }

    else
    {
      v11 = computeMetadataBoundsFromSuperclass(v5, v9);
      explicit = v12;
    }
  }

  else
  {
    if ((*v5 & 0x10000000) != 0)
    {
      v6 = 0;
      v7 = 24;
    }

    else
    {
      v6 = *(v5 + 28);
      v7 = 32;
    }

    explicit = 8 * (v6 - *(v5 + v7));
    v11 = *(v5 + 24);
  }

  v13 = v11;
  if (*(a3 + 8))
  {
    v13 = v11 + ((*(a3 + 38) + *(a3 + 36)) << 32);
  }

  v43 = 17;
  v14 = &swift::MetadataAllocator::Allocate(&v43, 8 * (HIDWORD(v13) + v13), 8uLL)[8 * v13];
  v15 = &v14[8 * HIDWORD(v11)];
  if (*(a3 + 8))
  {
    bzero(&v14[8 * HIDWORD(v11)], 8 * *(a3 + 36));
    v16 = (a3 + 32);
    v17 = *(a3 + 32);
    if (v17)
    {
      v18 = (v17 + a3 + 32);
    }

    else
    {
      v18 = 0;
    }

    memcpy(&v15[8 * *(a3 + 36)], v18, 8 * *(a3 + 38));
  }

  else
  {
    v16 = 0;
  }

  v19 = &v14[explicit];
  bzero(v19, 8 * *(v5 + 32));
  v20 = *(a3 + 8);
  if (v20 < 0)
  {
    v21 = a3 + 8 * (v20 & 1);
    v23 = *(v21 + 32);
    v22 = v21 + 32;
    v24 = (v23 + v22);
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    memcpy(&v19[8 * *(v22 + 4)], v25, 8 * *(v22 + 6));
  }

  v26 = 0;
  v27 = *(a3 + 12);
  if (v27 && v27 + a3 + 12)
  {
    v26 = v27 + a3 + 12;
  }

  *(v14 - 2) = v26;
  v28 = *(a3 + 20);
  if ((v28 & 2) != 0)
  {
    v29 = value witness table for Builtin.NativeObject;
  }

  else
  {
    v29 = &value witness table for Builtin.UnknownObject;
  }

  *(v14 - 1) = v29;
  v30 = &v15[8 * *(a3 + 26)];
  v31 = 8 * *(a3 + 28);
  *(v30 + 4) = &v15[v31];
  v32 = *v16;
  if (v32)
  {
    v33 = v16 + v32;
  }

  else
  {
    v33 = 0;
  }

  *&v15[v31 + 32] = *&v33[v31 + 32];
  *v14 = v30;
  *(v14 + 1) = 0;
  *(v14 + 2) = MEMORY[0x1E69E58E0];
  *(v14 + 3) = 0;
  v34 = 8 * *(a3 + 24);
  *(v14 + 4) = &v15[v34] | 2;
  *&v15[v34 + 32] = *&v33[v34 + 32];
  *(v14 + 10) = v28;
  *(v14 + 44) = 0;
  *(v14 + 13) = 0;
  *(v14 + 14) = 8 * (HIDWORD(v11) + v11);
  *(v14 + 15) = 8 * v11;
  if (v5)
  {
    v35 = v5;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0;
  *(v14 + 8) = v35;
  v39 = *(a3 + 16);
  v38 = a3 + 16;
  v37 = v39;
  if (v39)
  {
    v40 = v37 + v38;
    if (v40)
    {
      v36 = v40;
    }
  }

  *(v14 + 9) = v36;
  if (v5)
  {
    v41 = v5;
  }

  else
  {
    v41 = 0;
  }

  installGenericArguments(v14, v41, a2);
  return v14;
}

char *swift::MetadataAllocator::Allocate(swift::MetadataAllocator *this, unint64_t a2, unint64_t a3)
{
  v3 = a2;
  if (swift::MetadataAllocator::Allocate(unsigned long,unsigned long)::getenvToken == -1)
  {
    if (a2 > 0x2000)
    {
LABEL_3:
      if (a3 <= 8)
      {
        v4 = 8;
      }

      else
      {
        v4 = a3;
      }

      result = MEMORY[0x1865C9900](0, v4, v3, 4205798916, 2);
      if (swift::runtime::environment::initializeToken != -1)
      {
        v34 = result;
        LibPrespecializedState::LibPrespecializedState();
        result = v34;
      }

      if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable == 1)
      {

        return memset(result, 170, v3);
      }

      return result;
    }
  }

  else
  {
    v6 = this;
    v7 = a3;
    swift::MetadataAllocator::Allocate();
    a3 = v7;
    this = v6;
    if (v3 > 0x2000)
    {
      goto LABEL_3;
    }
  }

  v41 = a3;
  v42 = this;
  _X26 = 0;
  _X27 = 0;
  if (_swift_debug_metadataAllocationIterationEnabled == 1)
  {
    v10 = v3 + 8;
  }

  else
  {
    v10 = v3;
  }

  __asm { CASP            X26, X27, X26, X27, [X28] }

  while (1)
  {
    while (1)
    {
      v16 = -v10;
      if (!v10)
      {
        break;
      }

      if (_swift_debug_metadataAllocationIterationEnabled == 1)
      {
        v17 = 16368;
      }

      else
      {
        v17 = 0x4000;
      }

      result = MEMORY[0x1865C9900](0, 8, 0x4000, 4205798916, 2);
      if (swift::runtime::environment::initializeToken != -1)
      {
        v24 = result;
        LibPrespecializedState::LibPrespecializedState();
        result = v24;
      }

      if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable == 1)
      {
        v18 = result;
        memset(result, 170, 0x4000uLL);
        result = v18;
      }

      if (_swift_debug_metadataAllocationIterationEnabled != 1)
      {
        v16 = v17 - v10;
        _X2 = &result[v10];
        if (result)
        {
          goto LABEL_27;
        }

        v30 = "true";
LABEL_47:
        _X0 = 0;
        _X1 = 0;
        __asm { CASP            X0, X1, X0, X1, [X28] }

        swift::fatalError(0, "Metadata allocator corruption: allocation is NULL. curState: {%p, %zu} - curStateReRead: {%p, %zu} - newState: {%p, %zu} - allocatedNewPage: %s - requested size: %zu - sizeWithHeader: %zu - alignment: %zu - Tag: %d\n", _X2, v16, _X26, 0, _X0, 0, _X2, v16, v30, v3, v10, v41, *v42);
      }

      v25 = &result[v17];
      *v25 = _X26;
      v25[1] = v17;
      _X2 = &result[v10];
LABEL_27:
      _X25 = 0;
      __asm { CASPL           X24, X25, X2, X3, [X28] }

      if (_X24 == _X26)
      {
        v26 = _swift_tsan_release;
        if (!_swift_tsan_release)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      result;
      _X26 = _X24;
    }

    _X2 = _X26;
    if (!_X26)
    {
      v30 = "false";
      goto LABEL_47;
    }

    _X1 = 0;
    __asm { CASP            X0, X1, X2, X3, [X28] }

    if (_X0 == _X26)
    {
      break;
    }

    _X26 = _X0;
  }

  v26 = _swift_tsan_acquire;
  result = _X26;
  if (_swift_tsan_acquire)
  {
LABEL_34:
    v27 = result;
    v26(&AllocationPool);
    result = v27;
  }

LABEL_35:
  if (_swift_debug_metadataAllocationIterationEnabled == 1)
  {
    swift::MetadataAllocator::Allocate(v3, result, v42, &v43);
    return v43.__r_.__value_.__r.__words[0];
  }

  else if (swift::runtime::environment::initializeToken == -1)
  {
    if (v3)
    {
LABEL_38:
      if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable)
      {
        v28 = result;
        v29 = result;
        do
        {
          if (*v28 != 170)
          {
            if (v3 >= 0x10)
            {
              v36 = 16;
            }

            else
            {
              v36 = v3;
            }

            if (v3 <= 0x10)
            {
              v37 = "";
            }

            else
            {
              v37 = "...";
            }

            __swift::__runtime::llvm::toHex(v29, v36, 0, &v43);
            if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v40 = &v43;
            }

            else
            {
              v40 = v43.__r_.__value_.__r.__words[0];
            }

            swift::fatalError(0, "corrupt metadata allocation arena detected at %p: %s%s", v38, v39, v28, v40, v37);
          }

          ++v29;
          ++v28;
          --v3;
        }

        while (v3);
      }
    }
  }

  else
  {
    v35 = result;
    LibPrespecializedState::LibPrespecializedState();
    result = v35;
    if (v3)
    {
      goto LABEL_38;
    }
  }

  return result;
}

void *installGenericArguments(uint64_t a1, _DWORD *a2, const void *a3)
{
  GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(a2);
  GenericArgumentOffset = swift::TargetTypeContextDescriptor<swift::InProcess>::getGenericArgumentOffset(a2);
  v8 = (a1 + 8 * GenericArgumentOffset);
  if (GenericContext[5])
  {
    v9 = (((GenericContext + GenericContext[2] + 15) & 0xFFFFFFFFFFFFFFFCLL) + 12 * GenericContext[3]);
    v10 = *v9;
    v11 = GenericContext[4];
    if (*v9)
    {
      v12 = &v9[2 * (GenericContext[5] & 1)];
    }

    else
    {
      v12 = 0;
    }

    result = memcpy(v8, a3, 8 * v11);
    if (v10)
    {
      v14 = v12 + 2;
      do
      {
        v15 = *(v14 - 1);
        v16 = *(v8 + *v14);
        if (*(v14 - 2) == 1)
        {
          result = swift_allocateWitnessTablePack(*(v8 + v15), v16);
        }

        else
        {
          if (*(v14 - 2))
          {
            goto LABEL_9;
          }

          result = swift_allocateMetadataPack(*(v8 + v15), v16);
        }

        *(v8 + v15) = result;
LABEL_9:
        v14 += 4;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v17 = 8 * GenericContext[4];
    v18 = (a1 + 8 * GenericArgumentOffset);

    return memcpy(v18, a3, v17);
  }

  return result;
}

char *swift_allocateGenericClassMetadataWithLayoutString(uint64_t a1, const void *a2, uint64_t a3)
{
  if (swift_cvw_allocateGenericClassMetadataWithLayoutString::Override == 1)
  {
    return swift_allocateGenericClassMetadata(a1, a2, a3);
  }

  if (swift_cvw_allocateGenericClassMetadataWithLayoutString::Override)
  {
    return swift_cvw_allocateGenericClassMetadataWithLayoutString::Override(a1, a2, a3, swift_cvw_allocateGenericClassMetadataWithLayoutStringImpl);
  }

  return swift_cvw_allocateGenericClassMetadataWithLayoutStringSlow(a1, a2, a3);
}

char *swift_cvw_allocateGenericClassMetadataWithLayoutString(uint64_t a1, const void *a2, uint64_t a3)
{
  if (swift_cvw_allocateGenericClassMetadataWithLayoutString::Override == 1)
  {
    return swift_allocateGenericClassMetadata(a1, a2, a3);
  }

  if (swift_cvw_allocateGenericClassMetadataWithLayoutString::Override)
  {
    return swift_cvw_allocateGenericClassMetadataWithLayoutString::Override(a1, a2, a3, swift_cvw_allocateGenericClassMetadataWithLayoutStringImpl);
  }

  return swift_cvw_allocateGenericClassMetadataWithLayoutStringSlow(a1, a2, a3);
}

char *swift_allocateGenericValueMetadata(_DWORD *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v17 = 18;
  v7 = swift::MetadataAllocator::Allocate(&v17, a4 + 32, 8uLL);
  v8 = v7;
  if (*(a3 + 8))
  {
    bzero(v7 + 32, 8 * *(a3 + 20));
    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = (v9 + a3 + 16);
    }

    else
    {
      v10 = 0;
    }

    memcpy(&v8[8 * *(a3 + 20) + 32], v10, 8 * *(a3 + 22));
  }

  v11 = *(a3 + 12);
  if (v11)
  {
    v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + a3 + 12);
    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (*v12)
    {
      v12 = *v12;
LABEL_13:
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = 0;
LABEL_15:
  v13 = *(a3 + 8) >> 21;
  *(v8 + 1) = v12;
  *(v8 + 2) = v13;
  if (v6)
  {
    v14 = v6;
    v15 = v6;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(v8 + 3) = v14;
  installGenericArguments((v8 + 16), v15, a2);
  return v8 + 16;
}

char *swift_allocateGenericValueMetadataWithLayoutString(_DWORD *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (swift_cvw_allocateGenericValueMetadataWithLayoutString::Override == 1)
  {
    return swift_allocateGenericValueMetadata(a1, a2, a3, a4);
  }

  if (swift_cvw_allocateGenericValueMetadataWithLayoutString::Override)
  {
    return swift_cvw_allocateGenericValueMetadataWithLayoutString::Override(a1, a2, a3, a4, swift_cvw_allocateGenericValueMetadataWithLayoutStringImpl);
  }

  return swift_cvw_allocateGenericValueMetadataWithLayoutStringSlow(a1, a2, a3, a4);
}

char *swift_cvw_allocateGenericValueMetadataWithLayoutString(_DWORD *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (swift_cvw_allocateGenericValueMetadataWithLayoutString::Override == 1)
  {
    return swift_allocateGenericValueMetadata(a1, a2, a3, a4);
  }

  if (swift_cvw_allocateGenericValueMetadataWithLayoutString::Override)
  {
    return swift_cvw_allocateGenericValueMetadataWithLayoutString::Override(a1, a2, a3, a4, swift_cvw_allocateGenericValueMetadataWithLayoutStringImpl);
  }

  return swift_cvw_allocateGenericValueMetadataWithLayoutStringSlow(a1, a2, a3, a4);
}

unint64_t swift_getCanonicalSpecializedMetadata(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v20 = a2;
  v21 = a1;
  v3 = *a2;
  if (*a2 == 512)
  {
    v4 = a2[1];
    if (v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 <= 0x7FF && (v3 - 513) <= 1)
    {
      v4 = a2[1];
      if (!v4)
      {
        v6 = 0;
        result = *a3;
        if (*a3)
        {
          return result;
        }

        goto LABEL_12;
      }

      goto LABEL_16;
    }

    if (v3 - 1 >= 0x7FF)
    {
      v4 = a2[8];
      if (v4)
      {
LABEL_16:
        v6 = v4;
        result = *a3;
        if (*a3)
        {
          return result;
        }

        goto LABEL_12;
      }
    }
  }

  v6 = 0;
  result = *a3;
  if (*a3)
  {
    return result;
  }

LABEL_12:
  v9 = v6;
  CanonicalMetadataPrespecializationCachingOnceToken = swift::TargetTypeContextDescriptor<swift::InProcess>::getCanonicalMetadataPrespecializationCachingOnceToken(v6);
  v12 = a2;
  if (CanonicalMetadataPrespecializationCachingOnceToken)
  {
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    if (*CanonicalMetadataPrespecializationCachingOnceToken != -1)
    {
      dispatch_once_f(CanonicalMetadataPrespecializationCachingOnceToken, v13, cacheCanonicalSpecializedMetadata(swift::TargetTypeContextDescriptor<swift::InProcess> const*,long *)::$_0::__invoke);
      v12 = a2;
    }
  }

  GenericArgs = swift::TargetMetadata<swift::InProcess>::getGenericArgs(v12);
  Cache = getCache(v9);
  swift::MetadataCacheKey::MetadataCacheKey(v19, Cache + 56, GenericArgs);
  v16[0] = v19[0];
  v16[1] = v19[1];
  swift::LockingConcurrentMap<swift::GenericCacheEntry,swift::LockingConcurrentMapStorage<swift::GenericCacheEntry,(unsigned short)14>>::getOrInsert<swift::MetadataCacheKey,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(Cache, v16, &v21, &v20, &v17);
  result = v18;
  atomic_store(v18, a3);
  return result;
}

_BYTE *swift::TargetTypeContextDescriptor<swift::InProcess>::getCanonicalMetadataPrespecializationCachingOnceToken(_BYTE *result)
{
  v1 = *result & 0x1F;
  switch(v1)
  {
    case 16:
      if ((~*result & 0x80080) == 0)
      {
        if (!result)
        {
          result = 0;
        }

        TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(result);
        return TrailingObjectsImpl + *TrailingObjectsImpl;
      }

      return 0;
    case 17:
      if ((~*result & 0x80080) == 0)
      {
        if (result)
        {
          v3 = result;
        }

        else
        {
          v3 = 0;
        }

        v4 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v3);
        v5 = *v3;
        v6 = *v3 & 0x80080;
        if (v6 == 524416)
        {
          if (!v3)
          {
            v3 = 0;
          }

          v9 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v3);
          v10 = v3;
          goto LABEL_29;
        }

LABEL_24:
        v8 = 0;
LABEL_30:
        TrailingObjectsImpl = (v4 + 4 * ((v5 & 0x30000) == 0x20000) + 12 * ((v5 & 0x30000) == 0x10000) + 4 * (v6 == 524416) + 4 * v8);
        return TrailingObjectsImpl + *TrailingObjectsImpl;
      }

      return 0;
    case 18:
      if ((~*result & 0x80080) == 0)
      {
        if (result)
        {
          v2 = result;
        }

        else
        {
          v2 = 0;
        }

        v4 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v2);
        v5 = *v2;
        v6 = *v2 & 0x80080;
        if (v6 == 524416)
        {
          if (!v2)
          {
            v2 = 0;
          }

          v9 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v2);
          v10 = v2;
LABEL_29:
          v8 = *(v9 + 4 * ((*v10 & 0x30000) == 0x20000) + 12 * ((*v10 & 0x30000) == 0x10000));
          goto LABEL_30;
        }

        goto LABEL_24;
      }

      return 0;
  }

  __break(1u);
  return result;
}

unint64_t *swift::TargetMetadata<swift::InProcess>::getGenericArgs(unint64_t *a1)
{
  result = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a1);
  if (result)
  {
    v3 = result;
    result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(result);
    if (result)
    {
      v4 = *v3;
      v5 = *v3 & 0x1F;
      if ((v5 - 17) >= 2)
      {
        if (v5 != 16)
        {
          __break(1u);
          return result;
        }

        if ((v4 & 0x20000000) != 0)
        {
          v9 = *(v3 + 6);
          if (v9)
          {
            v10 = (v3 + v9 + 24);
          }

          else
          {
            v10 = 0;
          }

          v11 = *v10;
          if (!*v10)
          {
            computeMetadataBoundsFromSuperclass(v3, v10);
            v11 = v12;
          }

          v6 = v11 >> 3;
        }

        else
        {
          if ((v4 & 0x10000000) != 0)
          {
            v7 = 0;
            v8 = 3;
          }

          else
          {
            v7 = *(v3 + 7);
            v8 = 4;
          }

          LODWORD(v6) = v7 - LODWORD(v3[v8]);
        }
      }

      else
      {
        LODWORD(v6) = 2;
      }

      return &a1[v6];
    }
  }

  return result;
}

char *getCache(_DWORD *a1)
{
  v1 = *a1 & 0x1F;
  switch(v1)
  {
    case 18:
      if (a1)
      {
        v4 = a1;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4 + 7;
      break;
    case 17:
      if (a1)
      {
        v3 = a1;
      }

      else
      {
        v3 = 0;
      }

      v5 = v3 + 7;
      break;
    case 16:
      if (a1)
      {
        v2 = a1;
      }

      else
      {
        v2 = 0;
      }

      v5 = v2 + 11;
      break;
    default:
      __break(1u);
      goto LABEL_140;
  }

  v6 = *v5;
  v7 = (v5 + v6);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v77 = a1;
    explicit = atomic_load_explicit(&qword_1ED426090, memory_order_acquire);
    if (explicit && *explicit == v77)
    {
      return explicit + 8;
    }

    do
    {
      v10 = atomic_load_explicit(&qword_1ED426070, memory_order_acquire);
      v11 = atomic_load_explicit(&qword_1ED426078, memory_order_acquire);
      v12 = atomic_load_explicit(&dword_1ED42606C, memory_order_acquire);
    }

    while (v10 != atomic_load_explicit(&qword_1ED426070, memory_order_acquire));
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13 && v12 != 0)
    {
      if (v15)
      {
        qword_1ED426090 = *v15;
        explicit = *v15;
        return explicit + 8;
      }
    }

    v78 = v77;
    os_unfair_lock_lock(&unk_1ED426080);
    v16 = qword_1ED426078;
    v17 = qword_1ED426078 & 3;
    v18 = v17 == 0;
    if ((qword_1ED426078 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v18 = 1;
    }

    v76 = v18;
    if (v18)
    {
      v19 = 4;
    }

    else
    {
      v19 = *(qword_1ED426078 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v20 = dword_1ED42606C;
    v21 = qword_1ED426070;
    v22 = (qword_1ED426070 + 8);
    if (qword_1ED426070)
    {
      v23 = qword_1ED426070 + 8;
    }

    else
    {
      v23 = 0;
    }

    if (v24)
    {
      explicit = *v24;
      __dmb(0xBu);
      {
LABEL_135:
        os_unfair_lock_unlock(&unk_1ED426080);
        qword_1ED426090 = explicit;
        return explicit + 8;
      }

      v26 = qword_1ED426088;
      if (qword_1ED426088)
      {
        do
        {
          v27 = *v26;
          free(v26[1]);
          free(v26);
          v26 = v27;
        }

        while (v27);
      }

LABEL_134:
      qword_1ED426088 = 0;
      goto LABEL_135;
    }

    v75 = v23;
    v28 = (v20 + 1);
    if ((1 << v19) / ((1 << v19) - v28) < 4)
    {
      v35 = v16;
      v36 = v25;
      if (v21)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v29 = (v19 + 1);
      if (v29 >= 0x11)
      {
        v30 = 4;
      }

      else
      {
        v30 = 2;
      }

      if (v29 < 9)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      v32 = malloc_type_calloc(2 << v19, v31, 0x48DDA4AEuLL);
      if (!v32)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v33 = v23;
      v34 = v19;
      v73 = v20;
      v74 = (v20 + 1);
      if (v31 != 1)
      {
        if (v31 == 4)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }
      }

      v35 = v31 | v32;
      *v32 = v19 + 1;
      if (v19)
      {
        if (v17)
        {
          v37 = v16 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v37 = 0;
        }

        v38 = v35 & 3;
        if ((v35 & 3) != 0)
        {
          v39 = v32 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v39 = 0;
        }

        v40 = 1;
        p_cache = (__SwiftNativeNSArrayBase + 16);
        do
        {
          if ((v16 & 3) > 1)
          {
            if ((v16 & 3) == 2)
            {
              LODWORD(v42) = *(v37 + 2 * v40);
              if (*(v37 + 2 * v40))
              {
                goto LABEL_83;
              }
            }

            else
            {
              LODWORD(v42) = *(v37 + 4 * v40);
              if (v42)
              {
LABEL_83:
                v43 = **(v33 + 8 * (v42 - 1));
                {
                  v71 = v37;
                  v72 = v43;
                  getCache();
                  p_cache = __SwiftNativeNSArrayBase.cache;
                  v37 = v71;
                  v43 = v72;
                  v34 = v19;
                  v33 = v75;
                }

                v44 = 0x9DDFEA08EB382D69 * ((p_cache[400] + 8 * v43) ^ HIDWORD(v43));
                v45 = 0x9DDFEA08EB382D69 * (HIDWORD(v43) ^ (v44 >> 47) ^ v44);
                for (i = 0x9DDFEA08EB382D69 * (v45 ^ (v45 >> 47)); ; i = v48 + 1)
                {
                  v48 = i & ~(-2 << v19);
                  if (v48)
                  {
                    if ((v35 & 3) > 1)
                    {
                      LODWORD(v47) = v38 == 2 ? *(v39 + 2 * v48) : *(v39 + 4 * v48);
                    }

                    else if ((v35 & 3) != 0)
                    {
                      LODWORD(v47) = *(v39 + v48);
                    }

                    else
                    {
                      v47 = (v35 >> (4 * v48)) & 0xF;
                    }

                    if (!v47)
                    {
                      break;
                    }
                  }
                }

                if (v38 == 3)
                {
                  *(v39 + 4 * v48) = v42;
                }

                else if (v38 == 2)
                {
                  *(v39 + 2 * v48) = v42;
                }

                else
                {
                  *(v39 + v48) = v42;
                }
              }
            }
          }

          else if ((v16 & 3) != 0)
          {
            LODWORD(v42) = *(v37 + v40);
            if (*(v37 + v40))
            {
              goto LABEL_83;
            }
          }

          else
          {
            v42 = (v16 >> (4 * v40)) & 0xF;
            if (v42)
            {
              goto LABEL_83;
            }
          }

          ++v40;
        }

        while (!(v40 >> v34));
      }

      atomic_store(v35, &qword_1ED426078);
      if (!v76)
      {
        v49 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v33 = v75;
        *v49 = qword_1ED426088;
        v49[1] = v16 & 0xFFFFFFFFFFFFFFFCLL;
        qword_1ED426088 = v49;
      }

      v20 = v73;
      v28 = v74;
      v22 = v21 + 2;
      v36 = v50;
      if (v21)
      {
LABEL_103:
        v51 = v21;
        if (v20 < *v21)
        {
LABEL_110:
          LOWORD(context) = 20;
          explicit = swift::MetadataAllocator::Allocate(&context, 0x50uLL, 8uLL);
          v56 = v77;
          *explicit = v77;
          GenericContext = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v56);
          *(explicit + 2) = 0;
          *(explicit + 3) = 0;
          *(explicit + 1) = 0;
          *(explicit + 8) = 0;
          *(explicit + 5) = 0;
          *(explicit + 6) = 0;
          *(explicit + 14) = 0;
          swift::TrailingGenericContextObjects<swift::TargetGenericContext<swift::InProcess>,swift::TargetGenericContextDescriptorHeader>::getGenericSignature(GenericContext, &context, v58);
          v59 = v82;
          *(explicit + 16) = 0;
          *(explicit + 17) = v59;
          *(explicit + 9) = v83;
          v60 = context;
          if (context)
          {
            v61 = 0;
            v62 = v80;
            do
            {
              if (*v62 < 0)
              {
                *(explicit + 32) = ++v61;
              }

              ++v62;
              --v60;
            }

            while (v60);
          }

          if (WORD1(context))
          {
            v63 = 0;
            v64 = v81;
            v65 = 12 * WORD1(context);
            do
            {
              if ((*v64 & 0x9F) == 0x80)
              {
                *(explicit + 33) = ++v63;
              }

              v64 += 3;
              v65 -= 12;
            }

            while (v65);
          }

          *(v51 + 8 + 8 * v20) = explicit;
          atomic_store(v28, &dword_1ED42606C);
          if ((v35 & 3) > 1)
          {
            if ((v35 & 3) == 2)
            {
              v66 = v35 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v35 & 3) == 0)
              {
                v66 = 0;
              }

              atomic_store(v28, (v66 + 2 * v36));
            }

            else
            {
              v67 = v35 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v35 & 3) == 0)
              {
                v67 = 0;
              }

              atomic_store(v28, (v67 + 4 * v36));
            }
          }

          else if ((v35 & 3) != 0)
          {
            atomic_store(v28, ((v35 & 0xFFFFFFFFFFFFFFFCLL) + v36));
          }

          else
          {
            atomic_store((v28 << (4 * v36)) | v35, &qword_1ED426078);
          }

          __dmb(0xBu);
          {
            goto LABEL_135;
          }

          v68 = qword_1ED426088;
          if (qword_1ED426088)
          {
            do
            {
              v69 = *v68;
              free(v68[1]);
              free(v68);
              v68 = v69;
            }

            while (v69);
          }

          goto LABEL_134;
        }
      }
    }

    v52 = v20 + (v20 >> 2);
    if (v52 <= v20 + 1)
    {
      v52 = v20 + 1;
    }

    v53 = malloc_good_size(8 * v52 + 8);
    v54 = malloc_type_malloc(v53, 0x1020040D5A9D86FuLL);
    if (v54)
    {
      v51 = v54;
      *v54 = (v53 + 0x7FFFFFFF8) >> 3;
      if (v21)
      {
        memcpy(v54 + 2, v22, 8 * v20);
        v55 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v55 = qword_1ED426088;
        v55[1] = v21;
        qword_1ED426088 = v55;
      }

      atomic_store(v51, &qword_1ED426070);
      goto LABEL_110;
    }

LABEL_140:
    swift::hashable_support::findHashableBaseTypeOfHashableType();
  }

  context = v5 + v6;
  v80 = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(a1);
  if (v7[9] != -1)
  {
  }

  return v7;
}

void swift::LockingConcurrentMap<swift::GenericCacheEntry,swift::LockingConcurrentMapStorage<swift::GenericCacheEntry,(unsigned short)14>>::getOrInsert<swift::MetadataCacheKey,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, atomic_ullong **a5@<X8>)
{
  v7 = (a1 + 48);
  v19 = a1 + 48;
  v20 = 0;
  v21 = 0;
  v8 = a2[1];
  v22[0] = *a2;
  v22[1] = v8;
  v9 = swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(a1, v22, &v19, a3, a4);
  if (v10)
  {
    if (v20)
    {
      LOBYTE(v21) = 1;
    }

    if (HIBYTE(v21) == 4)
    {
      v14 = 0;
      v16 = v9[4];
      *a5 = v9;
      a5[1] = v16;
      goto LABEL_10;
    }

    if (!HIBYTE(v21))
    {
      __break(1u);
      return;
    }

    v11 = *a3;
    v12 = v9;
    v13 = swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::doInitialization(v9, &v19, v11);
  }

  else
  {
    v15 = *a3;
    v12 = v9;
    swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::awaitSatisfyingState(v9, v7, v15);
  }

  *a5 = v12;
  a5[1] = v13;
LABEL_10:
  a5[2] = v14;
  if (v20)
  {
    os_unfair_lock_unlock(v20 + 2);
    v17 = v20;
    if (v20)
    {
      v18 = *(v20 + 2);
      *(v20 + 2) = 0;
      if (v18)
      {
        MEMORY[0x1865C92E0](v18, 0x80C4018A671A6);
      }

      v17;
    }
  }
}

uint64_t _swift_getGenericMetadata(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v23 = a2;
  v24 = a1;
  v22 = a3;
  Cache = getCache(a3);
  v5 = *(Cache + 7);
  v6 = *(Cache + 8);
  v7 = 1455063249 * v5;
  if (v5)
  {
    v8 = 0;
    v9 = HIWORD(v5);
    do
    {
      if (v8 >= WORD2(v5) || (v10 = (v6 + 8 * v8), *v10) || v9 != v10[1])
      {
        v7 = __ROR8__(v7, 10) ^ (*(a2 + 8 * v9) >> 19) ^ *(a2 + 8 * v9);
      }

      else
      {
        v11 = *(a2 + 8 * v10[2]);
        ++v8;
        if (v11)
        {
          v12 = (*(a2 + 8 * v9) & 0xFFFFFFFFFFFFFFFELL);
          v13 = 1;
          do
          {
            v14 = *v12++;
            v7 = __ROR8__(v7, 10) ^ (v14 >> 19) ^ v14;
            v15 = v13++;
          }

          while (v15 < v11);
        }
      }

      ++v9;
    }

    while (v9 != HIWORD(v5) + v5);
  }

  *&v17 = a2;
  *(&v17 + 1) = v5;
  v18 = v6;
  v19 = (668265261 * v7) >> 10;
  swift::LockingConcurrentMap<swift::GenericCacheEntry,swift::LockingConcurrentMapStorage<swift::GenericCacheEntry,(unsigned short)14>>::getOrInsert<swift::MetadataCacheKey,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(Cache, &v17, &v24, &v22, &v23, v20);
  return v21;
}

uint64_t swift_getCanonicalPrespecializedGenericMetadata(uint64_t a1, uint64_t a2, _DWORD *a3, dispatch_once_t *predicate)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  if (*predicate == -1)
  {
  }

  else
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    dispatch_once_f(predicate, v5, cacheCanonicalSpecializedMetadata(swift::TargetTypeContextDescriptor<swift::InProcess> const*,long *)::$_0::__invoke);
    a3 = v9;
    a1 = v7;
    a2 = v8;
  }

  return _swift_getGenericMetadata(a1, a2, a3);
}

void swift_getSingletonMetadata(uint64_t a1, _DWORD *a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (qword_1ED415FB0 != -1)
  {
    swift_getSingletonMetadata_cold_1(a1);
  }

  v40 = &SingletonMetadata;
  v41 = 0;
  v42 = 0;
  v4 = *v3 & 0x1F;
  if (v4 == 16)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v11);
    v13 = *v11;
    v9 = TrailingObjectsImpl + 4 * ((v13 >> 29) & 1);
  }

  else
  {
    if (v4 == 17)
    {
      if (v3)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      v9 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v8);
      v10 = v8;
    }

    else
    {
      if (v4 != 18)
      {
        goto LABEL_78;
      }

      if (v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      v9 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v14);
      v10 = v14;
    }

    LODWORD(v13) = *v10;
  }

  v15 = (v9 + 4 * ((v13 & 0x30000) == 0x20000));
  v16 = *v15;
  v17 = (v15 + v16);
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  explicit = atomic_load_explicit(v18 + 1, memory_order_acquire);
  if (explicit)
  {
LABEL_46:
    goto LABEL_47;
  }

  v20 = swift_slowAlloc(0x10, 7uLL);
  HIBYTE(v42) = 0;
  v21 = swift_slowAlloc(0x30, 0xFuLL);
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 1;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  os_unfair_lock_lock((v21 + 8));
  v41 = v21;
  v22 = 0;
  *v20 = v21 | 8;
  v20[1] = 0;
  atomic_compare_exchange_strong(v18 + 1, &v22, v20);
  if (v22)
  {
    v25 = v22;
    v20;
    explicit = v25;
    goto LABEL_46;
  }

  if (v41)
  {
    LOBYTE(v42) = 1;
  }

  if (HIBYTE(v42) == 4)
  {
    goto LABEL_47;
  }

  if (HIBYTE(v42))
  {
    goto LABEL_77;
  }

  v23 = *v3 & 0x1F;
  if (v23 == 16)
  {
    if (v3)
    {
      v29 = v3;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = 0;
    }

    v34 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v33);
    v35 = *v33;
    v31 = v34 + 4 * ((v35 >> 29) & 1);
    goto LABEL_73;
  }

  if (v23 == 17)
  {
    if (v3)
    {
      v28 = v3;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    v31 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v30);
    v32 = v30;
    goto LABEL_72;
  }

  if (v23 != 18)
  {
LABEL_78:
    __break(1u);
    return;
  }

  if (v3)
  {
    v24 = v3;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v36 = v24;
  }

  else
  {
    v36 = 0;
  }

  v31 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v36);
  v32 = v36;
LABEL_72:
  LODWORD(v35) = *v32;
LABEL_73:
  v37 = swift::TargetSingletonMetadataInitialization<swift::InProcess>::allocate(v31 + 4 * ((v35 & 0x30000) == 0x20000), v3);
  if ((*(*(v37 - 1) + 80) & 0x400000) != 0)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  HIBYTE(v42) = v39;
  v20[1] = v37;
LABEL_77:
LABEL_47:
  v26 = v41;
  if (v41)
  {
    os_unfair_lock_unlock(v41 + 2);
    v27 = *&v26[4]._os_unfair_lock_opaque;
    *&v26[4]._os_unfair_lock_opaque = 0;
    if (v27)
    {
      MEMORY[0x1865C92E0](v27, 0x80C4018A671A6);
    }

    v26;
  }
}

unint64_t swift_getObjCClassMetadata(unint64_t result)
{
  if (result && (*(result + 32) & 2) == 0)
  {
    v62 = result;
    explicit = atomic_load_explicit(&qword_1ED4260C0, memory_order_acquire);
    if (explicit && *(explicit + 3) == v62)
    {
      goto LABEL_106;
    }

    atomic_fetch_add_explicit(&ObjCClassWrappers, 1u, memory_order_acquire);
    do
    {
      v2 = atomic_load_explicit(&qword_1ED4260A0, memory_order_acquire);
      v3 = atomic_load_explicit(&qword_1ED4260A8, memory_order_acquire);
      v4 = atomic_load_explicit(&dword_1ED42609C, memory_order_acquire);
    }

    while (v2 != atomic_load_explicit(&qword_1ED4260A0, memory_order_acquire));
    if (v2)
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
        qword_1ED4260C0 = *v7;
        explicit = *v7;
        atomic_fetch_add_explicit(&ObjCClassWrappers, 0xFFFFFFFF, memory_order_release);
        goto LABEL_106;
      }
    }

    atomic_fetch_add_explicit(&ObjCClassWrappers, 0xFFFFFFFF, memory_order_release);
    v63 = v62;
    os_unfair_lock_lock(&unk_1ED4260B0);
    v8 = qword_1ED4260A8;
    v9 = qword_1ED4260A8 & 3;
    v10 = v9 == 0;
    if ((qword_1ED4260A8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v10 = 1;
    }

    v61 = v10;
    if (v10)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(qword_1ED4260A8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v12 = dword_1ED42609C;
    v13 = qword_1ED4260A0;
    v14 = (qword_1ED4260A0 + 8);
    if (qword_1ED4260A0)
    {
      v15 = qword_1ED4260A0 + 8;
    }

    else
    {
      v15 = 0;
    }

    if (v16)
    {
      explicit = *v16;
      __dmb(0xBu);
      if (ObjCClassWrappers)
      {
LABEL_105:
        os_unfair_lock_unlock(&unk_1ED4260B0);
        qword_1ED4260C0 = explicit;
LABEL_106:
        if (explicit)
        {
          return (explicit + 16);
        }

        else
        {
          return 0;
        }
      }

      v18 = qword_1ED4260B8;
      if (qword_1ED4260B8)
      {
        do
        {
          v19 = *v18;
          free(v18[1]);
          free(v18);
          v18 = v19;
        }

        while (v19);
      }

LABEL_104:
      qword_1ED4260B8 = 0;
      goto LABEL_105;
    }

    v59 = v15;
    v60 = v8;
    v20 = (v12 + 1);
    if ((1 << v11) / ((1 << v11) - v20) < 4)
    {
      v28 = v8;
      v29 = v17;
      if (!v13)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v21 = (v11 + 1);
      v58 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      if (v21 >= 0x11)
      {
        v22 = 4;
      }

      else
      {
        v22 = 2;
      }

      if (v21 < 9)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v24 = malloc_type_calloc(2 << v11, v23, 0x48DDA4AEuLL);
      if (!v24)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v25 = v15;
      v26 = v8;
      v27 = v11;
      v56 = v12;
      v57 = (v12 + 1);
      if (v23 != 1)
      {
        if (v23 == 4)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }
      }

      v28 = v23 | v24;
      *v24 = v11 + 1;
      if (v11)
      {
        v30 = v8 & 3;
        if (v9)
        {
          v31 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v31 = 0;
        }

        v32 = v28 & 3;
        if ((v28 & 3) != 0)
        {
          v33 = v24 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v33 = 0;
        }

        v34 = 1;
        p_cache = (__SwiftNativeNSArrayBase + 16);
        do
        {
          if ((v60 & 3u) > 1)
          {
            if (v30 == 2)
            {
              LODWORD(v36) = *(v31 + 2 * v34);
              if (*(v31 + 2 * v34))
              {
                goto LABEL_63;
              }
            }

            else
            {
              LODWORD(v36) = *(v31 + 4 * v34);
              if (v36)
              {
LABEL_63:
                v37 = *(*(v25 + 8 * (v36 - 1)) + 24);
                {
                  v55 = v31;
                  getCache();
                  p_cache = __SwiftNativeNSArrayBase.cache;
                  v31 = v55;
                  v27 = v11;
                  v25 = v59;
                  v26 = v60;
                }

                v38 = 0x9DDFEA08EB382D69 * ((p_cache[400] + 8 * v37) ^ HIDWORD(v37));
                v39 = 0x9DDFEA08EB382D69 * (HIDWORD(v37) ^ (v38 >> 47) ^ v38);
                for (i = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47)); ; i = v42 + 1)
                {
                  v42 = i & ~(-2 << v11);
                  if (v42)
                  {
                    if ((v28 & 3) > 1)
                    {
                      LODWORD(v41) = v32 == 2 ? *(v33 + 2 * v42) : *(v33 + 4 * v42);
                    }

                    else if ((v28 & 3) != 0)
                    {
                      LODWORD(v41) = *(v33 + v42);
                    }

                    else
                    {
                      v41 = (v28 >> (4 * v42)) & 0xF;
                    }

                    if (!v41)
                    {
                      break;
                    }
                  }
                }

                if (v32 == 3)
                {
                  *(v33 + 4 * v42) = v36;
                }

                else if (v32 == 2)
                {
                  *(v33 + 2 * v42) = v36;
                }

                else
                {
                  *(v33 + v42) = v36;
                }
              }
            }
          }

          else if (v30)
          {
            LODWORD(v36) = *(v31 + v34);
            if (*(v31 + v34))
            {
              goto LABEL_63;
            }
          }

          else
          {
            v36 = (v26 >> (4 * v34)) & 0xF;
            if (v36)
            {
              goto LABEL_63;
            }
          }

          ++v34;
        }

        while (!(v34 >> v27));
      }

      atomic_store(v28, &qword_1ED4260A8);
      if (!v61)
      {
        v43 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v25 = v59;
        *v43 = qword_1ED4260B8;
        v43[1] = v58;
        qword_1ED4260B8 = v43;
      }

      v12 = v56;
      v20 = v57;
      v14 = v13 + 2;
      v29 = v44;
      if (!v13)
      {
        goto LABEL_84;
      }
    }

    v45 = v13;
    if (v12 < *v13)
    {
LABEL_90:
      v64 = 2;
      explicit = swift::MetadataAllocator::Allocate(&v64, 0x20uLL, 8uLL);
      v50 = v62;
      *(explicit + 2) = 773;
      *(explicit + 1) = &value witness table for Builtin.UnknownObject;
      *(explicit + 3) = v50;
      *(v45 + 8 + 8 * v12) = explicit;
      atomic_store(v20, &dword_1ED42609C);
      if ((v28 & 3) > 1)
      {
        if ((v28 & 3) == 2)
        {
          v51 = v28 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v28 & 3) == 0)
          {
            v51 = 0;
          }

          atomic_store(v20, (v51 + 2 * v29));
        }

        else
        {
          v52 = v28 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v28 & 3) == 0)
          {
            v52 = 0;
          }

          atomic_store(v20, (v52 + 4 * v29));
        }
      }

      else if ((v28 & 3) != 0)
      {
        atomic_store(v20, ((v28 & 0xFFFFFFFFFFFFFFFCLL) + v29));
      }

      else
      {
        atomic_store((v20 << (4 * v29)) | v28, &qword_1ED4260A8);
      }

      __dmb(0xBu);
      if (ObjCClassWrappers)
      {
        goto LABEL_105;
      }

      v53 = qword_1ED4260B8;
      if (qword_1ED4260B8)
      {
        do
        {
          v54 = *v53;
          free(v53[1]);
          free(v53);
          v53 = v54;
        }

        while (v54);
      }

      goto LABEL_104;
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
      *v49 = qword_1ED4260B8;
      v49[1] = v13;
      qword_1ED4260B8 = v49;
    }

    atomic_store(v45, &qword_1ED4260A0);
    goto LABEL_90;
  }

  return result;
}

void *swift_getObjCClassFromMetadata(void *result)
{
  if (result)
  {
    if (*result == 773)
    {
      return result[1];
    }
  }

  return result;
}

void *swift::swift_getObjCClassFromMetadataConditional(void *result)
{
  if (result && (*result - 1) <= 0x7FE)
  {
    if (*result == 773)
    {
      return result[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *swift_getFunctionTypeMetadata0(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  memset(&v4[1], 0, 24);
  v4[4] = a2;
  v4[5] = 0;
  v5 = 0;
  v6 = 0;
  if (v2)
  {
    return v2 + 16;
  }

  else
  {
    return 0;
  }
}

char *swift_getFunctionTypeMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = 0;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = 0;
  v7 = 0;
  v8 = 0;
  if (v4)
  {
    return v4 + 16;
  }

  else
  {
    return 0;
  }
}

char *swift_getFunctionTypeMetadata1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a2;
  v5[0] = a1;
  v5[1] = 0;
  v5[2] = v8;
  v5[3] = 0;
  v5[4] = a3;
  v5[5] = 0;
  v6 = 0;
  v7 = 0;
  if (v3)
  {
    return v3 + 16;
  }

  else
  {
    return 0;
  }
}

char *swift_getFunctionTypeMetadata2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v9[1] = a3;
  v6[0] = a1;
  v6[1] = 0;
  v6[2] = v9;
  v6[3] = 0;
  v6[4] = a4;
  v6[5] = 0;
  v7 = 0;
  v8 = 0;
  if (v4)
  {
    return v4 + 16;
  }

  else
  {
    return 0;
  }
}

char *swift_getFunctionTypeMetadata3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v7[0] = a1;
  v7[1] = 0;
  v7[2] = v10;
  v7[3] = 0;
  v7[4] = a5;
  v7[5] = 0;
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    return v5 + 16;
  }

  else
  {
    return 0;
  }
}

char *swift::StableAddressConcurrentReadableHashMap<anonymous namespace::FunctionCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)3>,swift::LazyMutex>::getOrInsert<anonymous namespace::FunctionCacheEntry::Key>(uint64_t a1)
{
  explicit = atomic_load_explicit(&qword_1ED426150, memory_order_acquire);
  {
    return explicit;
  }

  atomic_fetch_add_explicit(&FunctionTypes, 1u, memory_order_acquire);
  do
  {
    v3 = atomic_load_explicit(&qword_1ED426130, memory_order_acquire);
    v4 = atomic_load_explicit(&qword_1ED426138, memory_order_acquire);
    v5 = atomic_load_explicit(&dword_1ED42612C, memory_order_acquire);
  }

  while (v3 != atomic_load_explicit(&qword_1ED426130, memory_order_acquire));
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    if (v8)
    {
      qword_1ED426150 = *v8;
      explicit = *v8;
      atomic_fetch_add_explicit(&FunctionTypes, 0xFFFFFFFF, memory_order_release);
      return explicit;
    }
  }

  atomic_fetch_add_explicit(&FunctionTypes, 0xFFFFFFFF, memory_order_release);
  v9 = *(a1 + 16);
  v87[0] = *a1;
  v87[1] = v9;
  v10 = *(a1 + 48);
  v87[2] = *(a1 + 32);
  v87[3] = v10;
  os_unfair_lock_lock(&unk_1ED426140);
  v11 = qword_1ED426138;
  v12 = qword_1ED426138 & 3;
  v13 = v12 == 0;
  if ((qword_1ED426138 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v13 = 1;
  }

  v84 = v13;
  if (v13)
  {
    v14 = 4;
  }

  else
  {
    v14 = *(qword_1ED426138 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v15 = dword_1ED42612C;
  v16 = qword_1ED426130;
  if (qword_1ED426130)
  {
    v17 = qword_1ED426130 + 8;
  }

  else
  {
    v17 = 0;
  }

  if (v18)
  {
    explicit = *v18;
    __dmb(0xBu);
    if (FunctionTypes)
    {
LABEL_140:
      os_unfair_lock_unlock(&unk_1ED426140);
      qword_1ED426150 = explicit;
      return explicit;
    }

    v20 = qword_1ED426148;
    if (qword_1ED426148)
    {
      do
      {
        v21 = *v20;
        free(v20[1]);
        free(v20);
        v20 = v21;
      }

      while (v21);
    }

LABEL_139:
    qword_1ED426148 = 0;
    goto LABEL_140;
  }

  v86 = v17;
  __src = v16 + 2;
  v22 = (v15 + 1);
  if ((1 << v14) / ((1 << v14) - v22) < 4)
  {
    v28 = v11;
    v29 = v19;
    if (v16)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v82 = v16;
    v23 = (v14 + 1);
    if (v23 >= 0x11)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 9)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    v26 = malloc_type_calloc(2 << v14, v25, 0x48DDA4AEuLL);
    if (!v26)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v27 = v17;
    v80 = v15;
    v81 = (v15 + 1);
    if (v25 != 1)
    {
      if (v25 == 4)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }
    }

    v28 = v25 | v26;
    *v26 = v14 + 1;
    if (v14)
    {
      v30 = ~(-2 << v14);
      v31 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      if (!v12)
      {
        v31 = 0;
      }

      v85 = v31;
      v32 = v28 & 3;
      if ((v28 & 3) != 0)
      {
        v33 = v26 & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v33 = 0;
      }

      for (i = 1; !(i >> v14); ++i)
      {
        if ((v11 & 3) > 1)
        {
          if ((v11 & 3) == 2)
          {
            LODWORD(v35) = *(v85 + 2 * i);
            if (*(v85 + 2 * i))
            {
              goto LABEL_60;
            }
          }

          else
          {
            LODWORD(v35) = *(v85 + 4 * i);
            if (v35)
            {
LABEL_60:
              v36 = *(v27 + 8 * (v35 - 1));
              v37 = *(v36 + 24);
              v88[0] = v37;
              v38 = v37 << 38;
              if ((v37 & 0x8000000) != 0)
              {
                v40 = v37;
                v39 = *((v36 + 8 * v37 + 4 * (v37 & (v38 >> 63)) + 47) & 0xFFFFFFFFFFFFFFF8);
              }

              else
              {
                v39 = 0;
                v40 = v37;
              }

              v88[1] = v39;
              v88[2] = v36 + 40;
              v41 = v36 + 40 + 8 * v40;
              v42 = *(v36 + 32);
              v88[3] = v41;
              v88[4] = v42;
              v43 = (v37 >> 27) & 1;
              if ((v37 & 0x10000000) != 0)
              {
                v89 = *(((v41 + 4 * (v40 & (v38 >> 63)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 * v43);
                if ((v37 & 0x80000000) != 0)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v89 = 0;
                if ((v37 & 0x80000000) != 0)
                {
LABEL_65:
                  v44 = (((v41 + 4 * (v40 & (v38 >> 63)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 * v43 + 8 * ((v37 >> 28) & 1));
                  v90 = *v44;
                  if (v90)
                  {
                    v45 = *((v44 + 11) & 0xFFFFFFFFFFFFFFF8);
                  }

                  else
                  {
                    v45 = 0;
                  }

LABEL_70:
                  v91 = v45;
                  v27 = v86;
                  while (1)
                  {
                    v48 = v46 & v30;
                    if ((v46 & v30) != 0)
                    {
                      if ((v28 & 3) > 1)
                      {
                        LODWORD(v47) = v32 == 2 ? *(v33 + 2 * v48) : *(v33 + 4 * v48);
                      }

                      else if ((v28 & 3) != 0)
                      {
                        LODWORD(v47) = *(v33 + v48);
                      }

                      else
                      {
                        v47 = (v28 >> (4 * v48)) & 0xF;
                      }

                      if (!v47)
                      {
                        break;
                      }
                    }

                    v46 = v48 + 1;
                  }

                  if (v32 == 3)
                  {
                    *(v33 + 4 * v48) = v35;
                  }

                  else if (v32 == 2)
                  {
                    *(v33 + 2 * v48) = v35;
                  }

                  else
                  {
                    *(v33 + v48) = v35;
                  }

                  continue;
                }
              }

              v45 = 0;
              v90 = 0;
              goto LABEL_70;
            }
          }
        }

        else if ((v11 & 3) != 0)
        {
          LODWORD(v35) = *(v85 + i);
          if (*(v85 + i))
          {
            goto LABEL_60;
          }
        }

        else
        {
          v35 = (v11 >> (4 * i)) & 0xF;
          if (v35)
          {
            goto LABEL_60;
          }
        }
      }
    }

    atomic_store(v28, &qword_1ED426138);
    if (!v84)
    {
      v49 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      v27 = v86;
      *v49 = qword_1ED426148;
      v49[1] = v11 & 0xFFFFFFFFFFFFFFFCLL;
      qword_1ED426148 = v49;
    }

    v15 = v80;
    v22 = v81;
    v16 = v82;
    v29 = v50;
    if (v82)
    {
LABEL_88:
      v51 = v16;
      if (v15 < *v16)
      {
        goto LABEL_95;
      }
    }
  }

  v52 = v15 + (v15 >> 2);
  if (v52 <= v15 + 1)
  {
    v52 = v15 + 1;
  }

  v53 = malloc_good_size(8 * v52 + 8);
  v54 = malloc_type_malloc(v53, 0x1020040D5A9D86FuLL);
  if (!v54)
  {
    swift::hashable_support::findHashableBaseTypeOfHashableType();
  }

  v51 = v54;
  *v54 = (v53 + 0x7FFFFFFF8) >> 3;
  if (v16)
  {
    memcpy(v54 + 2, __src, 8 * v15);
    v55 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    *v55 = qword_1ED426148;
    v55[1] = v16;
    qword_1ED426148 = v55;
  }

  atomic_store(v51, &qword_1ED426130);
LABEL_95:
  v56 = *a1;
  v57 = 4 * v56 + 7;
  v58 = ((*a1 >> 27) & 1) + v56;
  if ((*a1 & 0x2000000) == 0)
  {
    v57 = 7;
  }

  v59 = 8 * (*(a1 + 48) & 1) + ((((*a1 >> 29) & 4 | (*a1 >> 25) & 8) + ((v57 + 8 * v58) | 4)) & 0x7FFFFFFFFFFFFFF8);
  LOWORD(v88[0]) = 3;
  result = swift::MetadataAllocator::Allocate(v88, v59 + 40, 8uLL);
  explicit = result;
  *(result + 2) = 0;
  *(result + 3) = 0;
  v61 = *a1;
  v62 = BYTE2(*a1);
  if ((v62 - 2) < 2)
  {
    v64 = value witness table for @convention(thin) ();
    v65 = (result + 8);
    if (value witness table for @convention(thin) ())
    {
      v64 = value witness table for @convention(thin) ();
    }

    goto LABEL_107;
  }

  if (v62 == 1)
  {
    v64 = &value witness table for Builtin.UnknownObject;
    v65 = (result + 8);
    if (&value witness table for Builtin.UnknownObject)
    {
      v64 = &value witness table for Builtin.UnknownObject;
    }

LABEL_107:
    v63 = v29;
LABEL_108:
    *v65 = v64;
LABEL_109:
    *(result + 2) = 770;
    *(result + 3) = v61;
    *(result + 4) = *(a1 + 32);
    v66 = v61 << 38;
    v67 = (v61 >> 27) & 1;
    if ((v61 & 0x10000000) != 0)
    {
      *((&result[8 * v61 + 47 + 4 * (v61 & (v66 >> 63))] & 0xFFFFFFFFFFFFFFF8) + 8 * v67) = *(a1 + 40);
      if ((v61 & 0x8000000) == 0)
      {
LABEL_111:
        if ((v61 & 0x80000000) == 0)
        {
LABEL_112:
          v68 = v61;
LABEL_117:
          if (v68)
          {
            v71 = 0;
            v72 = *a1;
            do
            {
              *&result[8 * v71 + 40] = *(*(a1 + 16) + 8 * v71);
              if ((v61 & 0x2000000) != 0)
              {
                if ((v72 & 0x2000000) != 0)
                {
                  v73 = *(*(a1 + 24) + 4 * v71);
                }

                else
                {
                  v73 = 0;
                }

                *&result[8 * v68 + 40 + 4 * v71] = v73;
              }

              ++v71;
            }

            while (v68 != v71);
          }

          *(v51 + 8 + 8 * v15) = result;
          atomic_store(v22, &dword_1ED42612C);
          v74 = v63;
          if ((v28 & 3) > 1)
          {
            if ((v28 & 3) == 2)
            {
              v75 = v28 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v28 & 3) == 0)
              {
                v75 = 0;
              }

              atomic_store(v22, (v75 + 2 * v74));
            }

            else
            {
              v76 = v28 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v28 & 3) == 0)
              {
                v76 = 0;
              }

              atomic_store(v22, (v76 + 4 * v74));
            }
          }

          else if ((v28 & 3) != 0)
          {
            atomic_store(v22, ((v28 & 0xFFFFFFFFFFFFFFFCLL) + v63));
          }

          else
          {
            atomic_store((v22 << (4 * v63)) | v28, &qword_1ED426138);
          }

          __dmb(0xBu);
          if (FunctionTypes)
          {
            goto LABEL_140;
          }

          v77 = qword_1ED426148;
          if (qword_1ED426148)
          {
            do
            {
              v78 = *v77;
              free(v77[1]);
              free(v77);
              v77 = v78;
            }

            while (v78);
          }

          goto LABEL_139;
        }

LABEL_115:
        v69 = *(a1 + 48);
        v68 = v61;
        v70 = ((&result[8 * v61 + 47 + 4 * (v61 & (v66 >> 63))] & 0xFFFFFFFFFFFFFFF8) + 8 * v67 + 8 * ((v61 >> 28) & 1));
        *v70 = v69;
        if (v69)
        {
          *((v70 + 11) & 0xFFFFFFFFFFFFFFF8) = *(a1 + 56);
        }

        goto LABEL_117;
      }
    }

    else if ((v61 & 0x8000000) == 0)
    {
      goto LABEL_111;
    }

    *(&result[8 * v61 + 47 + 4 * (v61 & (v66 >> 63))] & 0xFFFFFFFFFFFFFFF8) = *(a1 + 8);
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_115;
  }

  v63 = v29;
  if (BYTE2(*a1))
  {
    goto LABEL_109;
  }

  if ((v61 & 0x4000000) == 0)
  {
    v64 = value witness table for ();
    v65 = (result + 8);
    if (value witness table for ())
    {
      v64 = value witness table for ();
    }

    goto LABEL_108;
  }

  v79 = *(a1 + 8);
  if (!v79)
  {
    v64 = value witness table for ();
    v65 = (result + 8);
    if (value witness table for ())
    {
      v64 = value witness table for ();
    }

    goto LABEL_108;
  }

  if (v79 == 2)
  {
    v64 = value witness table for @differentiable(reverse) ();
    v65 = (result + 8);
    if (value witness table for @differentiable(reverse) ())
    {
      v64 = value witness table for @differentiable(reverse) ();
    }

    goto LABEL_108;
  }

  __break(1u);
  return result;
}

char *swift_getFunctionTypeMetadataDifferentiable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = 0;
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    return v5 + 16;
  }

  else
  {
    return 0;
  }
}

char *swift_getFunctionTypeMetadataGlobalActor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v9 = 0;
  v10 = 0;
  if (v6)
  {
    return v6 + 16;
  }

  else
  {
    return 0;
  }
}

char *swift_getExtendedFunctionTypeMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (!a8)
  {
    goto LABEL_18;
  }

  if (*a8 <= 0x7FFuLL && *a8 - 515 >= 0xFFFFFFFE)
  {
    if (*(a8 + 8))
    {
      v15 = *(a8 + 8);
    }

    else
    {
      v15 = 0;
    }

    if (v15 != &nominal type descriptor for Never)
    {
      goto LABEL_18;
    }

    a1 &= ~0x1000000uLL;
  }

  else
  {
    if (*a8 != 771)
    {
      goto LABEL_18;
    }

    if (*(a8 + 12) != 1)
    {
      goto LABEL_18;
    }

    v11 = *(a8 + 8);
    v12 = a8 + 8 * ((v11 >> 30) & 1);
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_18;
    }

    v14 = v13 ? *(v12 + 16) : 0;
    if (v14 != protocol descriptor for Error || (v11 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  a8 = 0;
  a7 &= ~1u;
  if (!a7)
  {
    a1 &= ~0x80000000uLL;
  }

LABEL_18:
  v21 = v8;
  v22 = v9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v19 = a7;
  v20 = a8;
  if (v16)
  {
    return v16 + 16;
  }

  else
  {
    return 0;
  }
}

void *swift_getFixedArrayTypeMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 1)
  {
    return &unk_1EEEAC658;
  }

  v3 = a3;
  v4 = a1;
  if (a2 != 1 || *(*(a3 - 8) + 64) != *(*(a3 - 8) + 72))
  {
    if (qword_1EA79E9E0 != -1)
    {
      v74 = a2;
      swift_getFixedArrayTypeMetadata_cold_1(a1);
      a2 = v74;
    }

    v86 = &unk_1EA79E9D8;
    v87 = 0;
    v88 = 0;
    v89 = a2;
    v90 = v3;
    explicit = atomic_load_explicit(&qword_1EA79E9D0, memory_order_acquire);
    if (explicit && *(explicit + 15) == v89 && *(explicit + 16) == v90)
    {
      goto LABEL_113;
    }

    do
    {
      v6 = atomic_load_explicit(&qword_1EA79E9B0, memory_order_acquire);
      v7 = atomic_load_explicit(&qword_1EA79E9B8, memory_order_acquire);
      v8 = atomic_load_explicit(&dword_1EA79E9AC, memory_order_acquire);
    }

    while (v6 != atomic_load_explicit(&qword_1EA79E9B0, memory_order_acquire));
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v8 != 0)
    {
      if (v11)
      {
        qword_1EA79E9D0 = *v11;
        explicit = *v11;
LABEL_113:
        v57 = atomic_load_explicit(explicit, memory_order_acquire);
        v58 = v57 & 7;
        if (v58 - 1 >= 3)
        {
          if (v58 == 4)
          {
            goto LABEL_153;
          }

          if ((v57 & 7) != 0)
          {
            goto LABEL_174;
          }

          v59 = v4 & 0x100;
LABEL_128:
          v60 = 0;
          v93 = &unk_1EA79E9D8;
          v94 = 0;
          v95 = 0;
          while (1)
          {
            os_unfair_lock_lock(&unk_1EA79E9D8);
            if (v60)
            {
              if (*v60 == 1)
              {
                v61 = v60[2];
                v60[2] = 0;
                if (v61)
                {
                  MEMORY[0x1865C92E0](v61, 0x80C4018A671A6);
                }

                v60;
              }

              else
              {
                --*v60;
              }
            }

            v62 = *explicit;
            v63 = *explicit & 7;
            if ((v63 - 1) >= 3)
            {
              if (v63)
              {
                if (v63 == 4)
                {
                  goto LABEL_164;
                }

                goto LABEL_174;
              }
            }

            else
            {
              if (v4 > 0x3Eu)
              {
                if (v4 != 63)
                {
                  if (v4 == 255)
                  {
LABEL_164:
                    os_unfair_lock_unlock(&unk_1EA79E9D8);
                    v3 = (explicit + 112);
                    goto LABEL_165;
                  }

LABEL_174:
                  __break(1u);
LABEL_175:
                  swift::hashable_support::findHashableBaseTypeOfHashableType();
                }

                if (v63 > 1)
                {
                  goto LABEL_164;
                }
              }

              else if (v4)
              {
                if (v4 != 1)
                {
                  goto LABEL_174;
                }

                if (v63 >= 3)
                {
                  goto LABEL_164;
                }
              }

              if ((v62 & 8) == 0)
              {
                v64 = swift_slowAlloc(0x30, 0xFuLL);
                *v64 = 0u;
                *(v64 + 16) = 0u;
                *(v64 + 32) = 0u;
                *v64 = 1;
                *(v64 + 16) = 0;
                *(v64 + 24) = 0;
                os_unfair_lock_lock((v64 + 8));
                v94 = v64;
                v65 = (v62 & 0xFFFFFFFFFFFFFFF0);
                if ((v62 & 0xFFFFFFFFFFFFFFF0) != 0)
                {
                  *(v64 + 24) = *v65;
                  v66 = *((v62 & 0xFFFFFFFFFFFFFFF0) + 0x10);
                  *((v62 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
                  v67 = *(v64 + 16);
                  *(v64 + 16) = v66;
                  if (v67)
                  {
                    MEMORY[0x1865C92E0](v67, 0x80C4018A671A6);
                  }
                }

                atomic_store(v62 & 7 | v64 | 8, explicit);
                LOBYTE(v95) = 1;
                os_unfair_lock_unlock(&unk_1EA79E9D8);
                HIBYTE(v95) = v63;
                if (v65)
                {
                  v68 = *((v62 & 0xFFFFFFFFFFFFFFF0) + 0x10);
                  *((v62 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
                  if (v68)
                  {
                    MEMORY[0x1865C92E0](v68, 0x80C4018A671A6);
                  }

                  MEMORY[0x1865C92E0](v62 & 0xFFFFFFFFFFFFFFF0, 0x1060C4048D9C6C4);
                }

LABEL_165:
                v69 = v94;
                if (v94)
                {
                  os_unfair_lock_unlock(v94 + 2);
                  v70 = *&v69[4]._os_unfair_lock_opaque;
                  *&v69[4]._os_unfair_lock_opaque = 0;
                  if (v70)
                  {
                    MEMORY[0x1865C92E0](v70, 0x80C4018A671A6);
                  }

                  v69;
                }

LABEL_169:
                v71 = v87;
                if (v87)
                {
                  os_unfair_lock_unlock(v87 + 2);
                  v72 = *&v71[4]._os_unfair_lock_opaque;
                  *&v71[4]._os_unfair_lock_opaque = 0;
                  if (v72)
                  {
                    MEMORY[0x1865C92E0](v72, 0x80C4018A671A6);
                  }

                  v71;
                }

                return v3;
              }

              if (v59)
              {
                goto LABEL_164;
              }
            }

            v60 = (v62 & 0xFFFFFFFFFFFFFFF0);
            ++*(v62 & 0xFFFFFFFFFFFFFFF0);
            os_unfair_lock_unlock(&unk_1EA79E9D8);
            os_unfair_lock_lock((v62 & 0xFFFFFFFFFFFFFFF0 | 8));
            os_unfair_lock_unlock((v62 & 0xFFFFFFFFFFFFFFF0 | 8));
          }
        }

        if (v4 <= 0x3Eu)
        {
          if (v4)
          {
            if (v4 != 1)
            {
              goto LABEL_174;
            }

            if (v58 > 2)
            {
              goto LABEL_153;
            }
          }

          goto LABEL_125;
        }

        if (v4 != 255)
        {
          if (v4 != 63)
          {
            goto LABEL_174;
          }

          if (v58 <= 1)
          {
LABEL_125:
            v59 = v4 & 0x100;
            if ((v57 & 8) != 0 && (v4 & 0x100) != 0)
            {
              goto LABEL_153;
            }

            goto LABEL_128;
          }
        }

LABEL_153:
        v3 = (explicit + 112);
        goto LABEL_169;
      }
    }

    v12 = v89;
    v13 = v90;
    v93 = v89;
    v94 = v90;
    os_unfair_lock_lock(&unk_1EA79E9C0);
    v14 = qword_1EA79E9B8;
    v15 = (qword_1EA79E9B8 & 3) == 0;
    if ((qword_1EA79E9B8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v15 = 1;
    }

    v82 = qword_1EA79E9B8 & 0xFFFFFFFFFFFFFFFCLL;
    v83 = qword_1EA79E9B8 & 3;
    v81 = v15;
    if (v15)
    {
      v16 = 4;
    }

    else
    {
      v16 = *(qword_1EA79E9B8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = dword_1EA79E9AC;
    v18 = qword_1EA79E9B0;
    if (qword_1EA79E9B0)
    {
      v19 = qword_1EA79E9B0 + 8;
    }

    else
    {
      v19 = 0;
    }

    if (v20)
    {
      explicit = *v20;
      __dmb(0xBu);
      {
        os_unfair_lock_unlock(&unk_1EA79E9C0);
        qword_1EA79E9D0 = explicit;
        goto LABEL_113;
      }

      v28 = v20;
      do
      {
        v29 = *v27;
        free(v27[1]);
        free(v27);
        v27 = v29;
      }

      while (v29);
      goto LABEL_112;
    }

    v85 = v19;
    v80 = v13;
    __src = v18 + 2;
    v79 = (v17 + 1);
    if ((1 << v16) / ((1 << v16) - v79) < 4)
    {
      v30 = v14;
      v31 = v18;
    }

    else
    {
      v77 = v12;
      v22 = (v16 + 1);
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

      v25 = malloc_type_calloc(2 << v16, v24, 0x48DDA4AEuLL);
      if (!v25)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v26 = v19;
      v76 = v4;
      v75 = v17;
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

      v30 = v24 | v25;
      *v25 = v16 + 1;
      if (v16)
      {
        v32 = ~(-2 << v16);
        v33 = v82;
        if (!v83)
        {
          v33 = 0;
        }

        v84 = v33;
        v34 = v30 & 3;
        if ((v30 & 3) != 0)
        {
          v35 = v25 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v35 = 0;
        }

        for (i = 1; !(i >> v16); ++i)
        {
          if ((v14 & 3) > 1)
          {
            if ((v14 & 3) == 2)
            {
              LODWORD(v37) = *(v84 + 2 * i);
              if (*(v84 + 2 * i))
              {
                goto LABEL_69;
              }
            }

            else
            {
              LODWORD(v37) = *(v84 + 4 * i);
              if (v37)
              {
LABEL_69:
                v38 = *(v26 + 8 * (v37 - 1));
                v39 = *(v38 + 120);
                v91 = *(v38 + 128);
                v92 = v39;
                for (j = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(&v92, &v91); ; j = v42 + 1)
                {
                  v42 = j & v32;
                  if ((j & v32) != 0)
                  {
                    if ((v30 & 3) > 1)
                    {
                      LODWORD(v41) = v34 == 2 ? *(v35 + 2 * v42) : *(v35 + 4 * v42);
                    }

                    else if ((v30 & 3) != 0)
                    {
                      LODWORD(v41) = *(v35 + v42);
                    }

                    else
                    {
                      v41 = (v30 >> (4 * v42)) & 0xF;
                    }

                    if (!v41)
                    {
                      break;
                    }
                  }
                }

                if (v34 == 3)
                {
                  *(v35 + 4 * v42) = v37;
                  v26 = v85;
                }

                else
                {
                  v26 = v85;
                  if (v34 == 2)
                  {
                    *(v35 + 2 * v42) = v37;
                  }

                  else
                  {
                    *(v35 + v42) = v37;
                  }
                }
              }
            }
          }

          else if ((v14 & 3) != 0)
          {
            LODWORD(v37) = *(v84 + i);
            if (*(v84 + i))
            {
              goto LABEL_69;
            }
          }

          else
          {
            v37 = (v14 >> (4 * i)) & 0xF;
            if (v37)
            {
              goto LABEL_69;
            }
          }
        }
      }

      atomic_store(v30, &qword_1EA79E9B8);
      if (!v81)
      {
        v43 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v26 = v85;
        *v43 = qword_1EA79E9C8;
        v43[1] = v82;
        qword_1EA79E9C8 = v43;
      }

      v17 = v75;
      v20 = 0;
      v4 = v76;
      v12 = v77;
      v31 = v18;
    }

    v28 = v20;
    v44 = v21;
    if (!v31 || (v45 = v31, v17 >= *v31))
    {
      v46 = v17 + (v17 >> 2);
      v47 = v17;
      if (v46 <= v17 + 1)
      {
        v46 = v17 + 1;
      }

      v48 = malloc_good_size(8 * v46 + 8);
      v49 = malloc_type_malloc(v48, 0x1020040D5A9D86FuLL);
      if (!v49)
      {
        goto LABEL_175;
      }

      v45 = v49;
      *v49 = (v48 + 0x7FFFFFFF8) >> 3;
      v17 = v47;
      if (v31)
      {
        memcpy(v49 + 2, __src, 8 * v47);
        v50 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v50 = qword_1EA79E9C8;
        v50[1] = v31;
        qword_1EA79E9C8 = v50;
      }

      atomic_store(v45, &qword_1EA79E9B0);
    }

    v51 = v45 + 8;
    LOWORD(v92) = 27;
    explicit = swift::MetadataAllocator::Allocate(&v92, 0x88uLL, 8uLL);
    HIBYTE(v88) = 1;
    v52 = v87;
    if (!v87)
    {
      v52 = swift_slowAlloc(0x30, 0xFuLL);
      *v52 = 0u;
      *(v52 + 16) = 0u;
      *(v52 + 32) = 0u;
      *v52 = 1;
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      os_unfair_lock_lock((v52 + 8));
      v87 = v52;
    }

    *explicit = v52 | 9;
    *(explicit + 22) = 0;
    *(explicit + 14) = 776;
    *(explicit + 15) = v12;
    *(explicit + 16) = v80;
    *(v51 + 8 * v17) = explicit;
    atomic_store(v79, &dword_1EA79E9AC);
    if ((v30 & 3) > 1)
    {
      if ((v30 & 3) == 2)
      {
        v53 = v30 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v30 & 3) == 0)
        {
          v53 = 0;
        }

        atomic_store(v79, (v53 + 2 * v44));
      }

      else
      {
        v54 = v30 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v30 & 3) == 0)
        {
          v54 = 0;
        }

        atomic_store(v79, (v54 + 4 * v44));
      }
    }

    else if ((v30 & 3) != 0)
    {
      atomic_store(v79, ((v30 & 0xFFFFFFFFFFFFFFFCLL) + v44));
    }

    else
    {
      atomic_store((v79 << (4 * v44)) | v30, &qword_1EA79E9B8);
    }

    __dmb(0xBu);
    {
      os_unfair_lock_unlock(&unk_1EA79E9C0);
      qword_1EA79E9D0 = explicit;
      goto LABEL_148;
    }

    v55 = qword_1EA79E9C8;
    if (qword_1EA79E9C8)
    {
      do
      {
        v56 = *v55;
        free(v55[1]);
        free(v55);
        v55 = v56;
      }

      while (v56);
    }

LABEL_112:
    qword_1EA79E9C8 = 0;
    os_unfair_lock_unlock(&unk_1EA79E9C0);
    qword_1EA79E9D0 = explicit;
    if (v28)
    {
      goto LABEL_113;
    }

LABEL_148:
    if (v87)
    {
      LOBYTE(v88) = 1;
    }

    if (HIBYTE(v88) != 4)
    {
      if (HIBYTE(v88))
      {
        goto LABEL_169;
      }

      goto LABEL_174;
    }

    goto LABEL_153;
  }

  return v3;
}

double swift::Lazy<anonymous namespace::FixedArrayCache>::defaultInitCallback(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t swift_getTupleTypeLayout2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  swift_getTupleTypeLayout(a1, v4, 2u, v5);
  return v4[1];
}

uint64_t swift_getTupleTypeLayout(uint64_t result, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v4 = a3;
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    LOBYTE(v9) = 1;
    LOBYTE(v10) = 1;
    LOBYTE(v11) = 1;
    do
    {
      v12 = *(a4 + 8 * v5);
      v13 = *(v12 + 16);
      v14 = (v7 + v13) & ~v13;
      if (a2)
      {
        *(a2 + 4 * v5) = v14;
        v13 = *(v12 + 16);
      }

      if (v6 <= *(v12 + 20))
      {
        v6 = *(v12 + 20);
      }

      v7 = *v12 + v14;
      if (v8 <= v13)
      {
        v8 = v13;
      }

      v9 = ((v13 & 0x10000) == 0) & v9;
      v10 = ((v13 & 0x100000) == 0) & v10;
      v11 = ((v13 & 0x1100000) == 0) & v11;
      ++v5;
    }

    while (v4 != v5);
    if (v7 >= 0x19 || v8 >= 8)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    *result = v7;
    LODWORD(v4) = v8 & 0xFEECFFFF;
    if (v9)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0x10000;
    }

    if (v10)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0x100000;
    }

    if (!v11)
    {
      v19 = 0x1000000;
      goto LABEL_26;
    }
  }

  else
  {
    v18 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v17 = 0;
    v16 = 1;
  }

  v19 = 0;
LABEL_26:
  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x20000;
  }

  v21 = v4 | v18 | v17 | v19 | v20;
  *(result + 16) = v21;
  v22 = (v8 + v7) & ~v8;
  if (v22 <= 1)
  {
    v22 = 1;
  }

  *(result + 8) = v22;
  if (v6)
  {
    *result = v7;
    *(result + 16) = v21;
    *(result + 20) = v6;
  }

  return result;
}

uint64_t swift_getTupleTypeLayout3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  swift_getTupleTypeLayout(a1, v5, 3u, v7);
  return v6;
}

void swift_getTupleTypeMetadata(uint64_t a1, int a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v29 = a5;
  v30 = a1;
  v5 = a2;
  if (a2)
  {
    if (qword_1ED415FF0 == -1)
    {
      if ((a2 & 0x10000) == 0)
      {
LABEL_4:
        *&v27 = v5;
        *(&v27 + 1) = a3;
        v28 = a4;
        return;
      }
    }

    else
    {
      v7 = a4;
      swift_getTupleTypeMetadata_cold_1(a1);
      a4 = v7;
      if ((a2 & 0x10000) == 0)
      {
        goto LABEL_4;
      }
    }

    v31 = v5;
    v32 = a3;
    v33 = a4;
    atomic_fetch_add_explicit(&TupleTypes, 1u, memory_order_acquire);
    do
    {
      explicit = atomic_load_explicit(&qword_1ED415FC0, memory_order_acquire);
      v10 = atomic_load_explicit(&qword_1ED415FC8, memory_order_acquire);
      v11 = atomic_load_explicit(&dword_1ED415FBC, memory_order_acquire);
    }

    while (explicit != atomic_load_explicit(&qword_1ED415FC0, memory_order_acquire));
    if (explicit)
    {
      _ZF = v10 == 0;
    }

    else
    {
      _ZF = 1;
    }

    v13 = _ZF || v11 == 0;
    {
      atomic_fetch_add_explicit(&TupleTypes, 0xFFFFFFFF, memory_order_release);
    }

    else
    {
      v16 = *v15;
      atomic_fetch_add_explicit(&TupleTypes, 0xFFFFFFFF, memory_order_release);
      if (v16)
      {
        return;
      }
    }

    v17 = a4;
    v18 = (strlen(a4) + 9) & 0xFFFFFFFFFFFFFFF8;
    LOWORD(v31) = 13;
    _X22 = swift::MetadataAllocator::Allocate(&v31, v18, 1uLL);
    _swift_strlcpy(_X22, v17, v18);
    *&v27 = v5;
    *(&v27 + 1) = a3;
    v28 = _X22;
    if (*(v32 + 16) != _X22)
    {
      if (v18 <= 0x2000)
      {
        _X24 = 0;
        _X25 = 0;
        __asm { CASP            X24, X25, X24, X25, [X19] }

        if (&_X22[v18] == _X24)
        {
          if (swift::runtime::environment::initializeToken != -1)
          {
            LibPrespecializedState::LibPrespecializedState();
          }

          if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable == 1)
          {
            memset(_X22, 170, v18);
          }

          __asm { CASP            X24, X25, X22, X23, [X19] }
        }
      }

      else
      {
        _X22;
      }
    }
  }
}

double swift::Lazy<anonymous namespace::TupleCache>::defaultInitCallback(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void swift::LockingConcurrentMap<anonymous namespace::TupleCacheEntry,anonymous namespace::TupleCacheStorage>::getOrInsert<anonymous namespace::TupleCacheEntry::Key,swift::MetadataRequest &,swift::TargetValueWitnessTable<swift::InProcess> const*&>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char **a4@<X8>)
{
  v174[1] = *MEMORY[0x1E69E9840];
  v162 = &unk_1ED415FE8;
  v163 = 0;
  v164 = 0;
  v165 = *a1;
  __s1 = *(a1 + 2);
  explicit = atomic_load_explicit(&qword_1ED415FE0, memory_order_acquire);
  if (explicit && v165 == *(explicit + 15))
  {
    if (v165)
    {
      v8 = 0;
      while (*(*(&v165 + 1) + 8 * v8) == *&explicit[16 * v8 + 136])
      {
        if (v165 == ++v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v9 = *(explicit + 16);
      if (__s1 == v9 || __s1 && v9 && !strcmp(__s1, v9))
      {
        goto LABEL_195;
      }
    }
  }

  atomic_fetch_add_explicit(&TupleTypes, 1u, memory_order_acquire);
  do
  {
    v10 = atomic_load_explicit(&qword_1ED415FC0, memory_order_acquire);
    v11 = atomic_load_explicit(&qword_1ED415FC8, memory_order_acquire);
    v12 = atomic_load_explicit(&dword_1ED415FBC, memory_order_acquire);
  }

  while (v10 != atomic_load_explicit(&qword_1ED415FC0, memory_order_acquire));
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v12 != 0)
  {
    if (v15)
    {
      qword_1ED415FE0 = *v15;
      explicit = *v15;
      atomic_fetch_add_explicit(&TupleTypes, 0xFFFFFFFF, memory_order_release);
LABEL_195:
LABEL_196:
      *a4 = explicit;
      a4[1] = v141;
      goto LABEL_197;
    }
  }

  atomic_fetch_add_explicit(&TupleTypes, 0xFFFFFFFF, memory_order_release);
  v167 = v165;
  v168 = __s1;
  os_unfair_lock_lock(&unk_1ED415FD0);
  v16 = qword_1ED415FC8;
  v17 = (qword_1ED415FC8 & 3) == 0;
  if ((qword_1ED415FC8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v17 = 1;
  }

  v150 = qword_1ED415FC8 & 0xFFFFFFFFFFFFFFFCLL;
  v151 = a3;
  v149 = v17;
  v161 = qword_1ED415FC8 & 3;
  if (v17)
  {
    v18 = 4;
  }

  else
  {
    v18 = *(qword_1ED415FC8 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v19 = dword_1ED415FBC;
  v20 = qword_1ED415FC0;
  if (qword_1ED415FC0)
  {
    v21 = qword_1ED415FC0 + 8;
  }

  else
  {
    v21 = 0;
  }

  if (v22)
  {
    explicit = *v22;
    __dmb(0xBu);
    if (TupleTypes || (v28 = qword_1ED415FD8) == 0)
    {
      os_unfair_lock_unlock(&unk_1ED415FD0);
      qword_1ED415FE0 = explicit;
      goto LABEL_195;
    }

    v29 = v22;
    do
    {
      v30 = *v28;
      free(v28[1]);
      free(v28);
      v28 = v30;
    }

    while (v30);
    goto LABEL_194;
  }

  v154 = v21;
  v152 = v16;
  v148 = v19;
  __src = v20 + 2;
  v147 = (v19 + 1);
  if ((1 << v18) / ((1 << v18) - v147) < 4)
  {
    v156 = v16;
    v31 = v19;
  }

  else
  {
    v145 = a2;
    v24 = (v18 + 1);
    v157 = v18;
    if (v24 >= 0x11)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 9)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    v27 = malloc_type_calloc(2 << v18, v26, 0x48DDA4AEuLL);
    if (!v27)
    {
      goto LABEL_210;
    }

    if (v26 != 1)
    {
      if (v26 == 4)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }
    }

    v32 = v26 | v27;
    *v27 = v18 + 1;
    v156 = v26 | v27;
    if (v18)
    {
      v33 = ~(-2 << v18);
      v34 = v16 & 3;
      v35 = v150;
      if (!v161)
      {
        v35 = 0;
      }

      v155 = v35;
      v36 = v32 & 3;
      if ((v32 & 3) != 0)
      {
        v37 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v37 = 0;
      }

      v38 = 1;
      v153 = v34;
      do
      {
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            LODWORD(v39) = *(v155 + 2 * v38);
            if (*(v155 + 2 * v38))
            {
              goto LABEL_70;
            }
          }

          else
          {
            LODWORD(v39) = *(v155 + 4 * v38);
            if (v39)
            {
LABEL_70:
              v158 = v39;
              v40 = *(v154 + 8 * (v39 - 1));
              v41 = v40[15];
              __s = v40[16];
              v160 = v38;
              v169 = 0;
              {
              }

              if (v41)
              {
                *&v170 = v40[17];
                if (16 * v41 == 16)
                {
                  v42 = v40 + 19;
                  v43 = 8;
                }

                else
                {
                  *(&v170 + 1) = v40[19];
                  if (16 * v41 == 32)
                  {
                    v42 = v40 + 21;
                    v43 = 16;
                  }

                  else
                  {
                    *&v171 = v40[21];
                    if (16 * v41 == 48)
                    {
                      v42 = v40 + 23;
                      v43 = 24;
                    }

                    else
                    {
                      *(&v171 + 1) = v40[23];
                      if (16 * v41 == 64)
                      {
                        v42 = v40 + 25;
                        v43 = 32;
                      }

                      else
                      {
                        *&v172 = v40[25];
                        if (16 * v41 == 80)
                        {
                          v42 = v40 + 27;
                          v43 = 40;
                        }

                        else
                        {
                          *(&v172 + 1) = v40[27];
                          if (16 * v41 == 96)
                          {
                            v42 = v40 + 29;
                            v43 = 48;
                          }

                          else
                          {
                            *&v173 = v40[29];
                            if (16 * v41 == 112)
                            {
                              v42 = v40 + 31;
                              v43 = 56;
                            }

                            else
                            {
                              *(&v173 + 1) = v40[31];
                              v42 = v40 + 33;
                              v43 = 64;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v43 = 0;
                v42 = v40 + 17;
              }

              v44 = &v40[2 * v41 + 17];
              if (v44 == v42)
              {
                v118 = __swift::__runtime::llvm::hashing::detail::hash_short(&v170, v43, __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed);
LABEL_143:
                v169 = v118;
                v119 = __s;
                *&v170 = __s;
                if (__s)
                {
                  v119 = strlen(__s);
                }

                *(&v170 + 1) = v119;
                v120 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,__swift::__runtime::llvm::StringRef>(&v169, &v170);
                v32 = v156;
                v34 = v153;
                v38 = v160;
                while (1)
                {
                  v122 = v120 & v33;
                  if ((v120 & v33) != 0)
                  {
                    if (v36 > 1)
                    {
                      LODWORD(v121) = v36 == 2 ? *(v37 + 2 * v122) : *(v37 + 4 * v122);
                    }

                    else if (v36)
                    {
                      LODWORD(v121) = *(v37 + v122);
                    }

                    else
                    {
                      v121 = (v156 >> (4 * v122)) & 0xF;
                    }

                    if (!v121)
                    {
                      break;
                    }
                  }

                  v120 = v122 + 1;
                }

                if (v36 == 3)
                {
                  *(v37 + 4 * v122) = v158;
                }

                else if (v36 == 2)
                {
                  *(v37 + 2 * v122) = v158;
                }

                else
                {
                  *(v37 + v122) = v158;
                }

                goto LABEL_59;
              }

              v45 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
              v46 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed >> 47);
              v47 = v46 - 0x622015F714C7D297 * (v45 ^ (v45 >> 47));
              v48 = __ROR8__(__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273, 49);
              v49 = *(&v172 + 1) + v48 - 0x4B6D499041670D8DLL * __ROR8__(v173 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed - 0x4B6D499041670D8DLL * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed, 42);
              v50 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (((0x9DDFEA08EB382D69 * (v46 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed))) ^ __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed)));
              v51 = v170 - 0x6D8ED9027DD26057 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
              v52 = v51 + *(&v170 + 1) + v171;
              v53 = v46 + *(&v171 + 1);
              v54 = v52 + *(&v171 + 1);
              v55 = __ROR8__(v52, 44) + v51;
              v56 = 0xB492B66FBE98F273 * __ROR8__(v47, 33);
              v57 = __ROR8__(v48 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + *(&v170 + 1), 37);
              v58 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v50) ^ ((0x9DDFEA08EB382D69 * v50) >> 47));
              v59 = (0xB492B66FBE98F273 * v57) ^ v58;
              v60 = v55 + __ROR8__(v51 + v53 + v59, 21);
              v61 = v58 + v172 + v56;
              v62 = v173 + *(&v172 + 1) + v61;
              v63 = v62 + *(&v173 + 1);
              v64 = __ROR8__(v62, 44) + v61 + __ROR8__(v49 + v171 + *(&v173 + 1) + v61, 21);
              v65 = 64;
              while (2)
              {
                if (v44 == v42)
                {
                  v66 = 0;
                  v42 = v44;
                  goto LABEL_92;
                }

                v74 = v42 + 2;
                *&v170 = *v42;
                if (v44 == v42 + 2)
                {
                  v76 = 0;
                  v77 = &v170;
                  v78 = &v170 + 8;
                  v79 = &v170 + 8;
                  v80 = &v170 + 8;
                  v81 = &v170 + 8;
                  v66 = 8;
                }

                else
                {
                  *(&v170 + 1) = v42[2];
                  v74 = v42 + 4;
                  if (v44 == v42 + 4)
                  {
                    v77 = (&v170 + 8);
                    v76 = 8;
                    v81 = &v171;
                    v78 = &v171;
                    v79 = &v171;
                    v80 = &v171;
                    v66 = 16;
                  }

                  else
                  {
                    *&v171 = v42[4];
                    v74 = v42 + 6;
                    if (v44 == v42 + 6)
                    {
                      v81 = &v171 + 8;
                      v77 = &v171;
                      v76 = 16;
                      v78 = &v171 + 8;
                      v79 = &v171 + 8;
                      v80 = &v171 + 8;
                      v66 = 24;
                    }

                    else
                    {
                      *(&v171 + 1) = v42[6];
                      v74 = v42 + 8;
                      if (v44 == v42 + 8)
                      {
                        v77 = (&v171 + 8);
                        v76 = 24;
                        v81 = &v172;
                        v78 = &v172;
                        v79 = &v172;
                        v80 = &v172;
                        v66 = 32;
                      }

                      else
                      {
                        *&v172 = v42[8];
                        v74 = v42 + 10;
                        if (v44 == v42 + 10)
                        {
                          v77 = &v172;
                          v76 = 32;
                          v81 = &v172 + 8;
                          v78 = &v172 + 8;
                          v79 = &v172 + 8;
                          v80 = &v172 + 8;
                          v66 = 40;
                        }

                        else
                        {
                          *(&v172 + 1) = v42[10];
                          v74 = v42 + 12;
                          if (v44 == v42 + 12)
                          {
                            v77 = (&v172 + 8);
                            v76 = 40;
                            v81 = &v173;
                            v78 = &v173;
                            v79 = &v173;
                            v80 = &v173;
                            v66 = 48;
                          }

                          else
                          {
                            *&v173 = v42[12];
                            v74 = v42 + 14;
                            if (v44 != v42 + 14)
                            {
                              v75 = v42[14];
                              v42 += 16;
                              *(&v173 + 1) = v75;
                              v66 = 64;
                              goto LABEL_92;
                            }

                            v77 = &v173;
                            v76 = 48;
                            v81 = &v173 + 8;
                            v78 = &v173 + 8;
                            v79 = &v173 + 8;
                            v80 = &v173 + 8;
                            v66 = 56;
                          }
                        }
                      }
                    }
                  }
                }

                v42 = v74;
                if ((v66 & 0x38) != 0)
                {
                  v82 = 56 - v76;
                  v83 = v66;
                  if (v66 == 56 - v76)
                  {
                    v84 = 55 - v76;
                    if (55 - v76 >= (v76 | 7uLL))
                    {
                      v85 = v76 | 7;
                    }

                    else
                    {
                      v85 = 55 - v76;
                    }

                    v86 = &v170;
                    if (&v170 < (v77 + v85 + 9))
                    {
                      v87 = v66;
                      if (v78 < &v170 + v85 + 1)
                      {
LABEL_116:
                        v88 = v86 + 1;
                        do
                        {
                          v89 = *(v88 - 1);
                          *(v88 - 1) = *(&v170 + v87);
                          *(&v170 + v87) = v89;
                          if (v88 == v78)
                          {
                            break;
                          }

                          ++v88;
                          v13 = v87++ == 63;
                        }

                        while (!v13);
                        goto LABEL_92;
                      }
                    }

                    if (v85 < 0x1F)
                    {
                      v101 = 0;
                      goto LABEL_135;
                    }

                    v102 = v85 + 1;
                    v101 = (v85 + 1) & 0x60;
                    v103 = v170;
                    v104 = v171;
                    v105 = *(v79 + 1);
                    v170 = *(&v170 + v66);
                    v171 = v105;
                    *(&v170 + v66) = v103;
                    *(v79 + 1) = v104;
                    if (v101 != 32)
                    {
                      v106 = v172;
                      v107 = v173;
                      v108 = *(v81 + 3);
                      v172 = *(v81 + 2);
                      v173 = v108;
                      *(v81 + 2) = v106;
                      *(v81 + 3) = v107;
                    }

                    if (v102 != v101)
                    {
                      if ((v102 & 0x18) == 0)
                      {
                        v86 = &v170 + v101;
                        v87 = v66 + v101;
                        goto LABEL_116;
                      }

LABEL_135:
                      v109 = &v80[v101];
                      v110 = (&v170 + v101);
                      v111 = v76 + 7;
                      if (v84 < v111)
                      {
                        v111 = v84;
                      }

                      v112 = v111 - v101 + 1;
                      do
                      {
                        v113 = *v110;
                        *v110++ = *v109;
                        *v109 = v113;
                        v109 += 8;
                        v112 -= 8;
                      }

                      while (v112);
                    }
                  }

                  else
                  {
                    do
                    {
                      v90 = v83;
                      v83 = v82;
                      v82 = v90 % v82;
                    }

                    while (v82);
                    v91 = (&v170 + v83);
                    do
                    {
                      v93 = *(v91 - 1);
                      v91 = (v91 - 1);
                      v92 = v93;
                      v94 = (v91 + v66);
                      v95 = v91;
                      do
                      {
                        v96 = v95;
                        v95 = v94;
                        *v96 = *v94;
                        v97 = (v174 - v94);
                        v98 = __OFSUB__(v66, v97);
                        v100 = v66 - v97;
                        v99 = (v100 < 0) ^ v98;
                        v94 = (&v170 + v100);
                        if (v99)
                        {
                          v94 = (v95 + v66);
                        }
                      }

                      while (v94 != v91);
                      *v95 = v92;
                    }

                    while (v91 != &v170);
                  }
                }

LABEL_92:
                v67 = v49 + v56 + v54 + *(&v170 + 1);
                v49 = *(&v172 + 1) + v54 - 0x4B6D499041670D8DLL * __ROR8__(v60 + v49 + v173, 42);
                v68 = v170 - 0x4B6D499041670D8DLL * v60;
                v69 = v68 + *(&v170 + 1) + v171;
                v70 = (0xB492B66FBE98F273 * __ROR8__(v67, 37)) ^ v64;
                v71 = __ROR8__(v63 + v59, 33);
                v60 = __ROR8__(v69, 44) + v68 + __ROR8__(v70 + v63 + v68 + *(&v171 + 1), 21);
                v56 = 0xB492B66FBE98F273 * v71;
                v54 = v69 + *(&v171 + 1);
                v72 = 0xB492B66FBE98F273 * v71 + v64 + v172;
                v73 = *(&v172 + 1) + v173 + v72;
                v64 = __ROR8__(v73, 44) + v72 + __ROR8__(v49 + v171 + v72 + *(&v173 + 1), 21);
                v63 = v73 + *(&v173 + 1);
                v65 += v66;
                v59 = v70;
                if (v44 == v42)
                {
                  v114 = 0x9DDFEA08EB382D69 * (v63 ^ ((0x9DDFEA08EB382D69 * (v63 ^ v54)) >> 47) ^ (0x9DDFEA08EB382D69 * (v63 ^ v54)));
                  v115 = 0x9DDFEA08EB382D69 * (v64 ^ ((0x9DDFEA08EB382D69 * (v64 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v64 ^ v60)));
                  v116 = 0xB492B66FBE98F273 * ((v65 ^ (v65 >> 47)) + v71) - 0x622015F714C7D297 * (v115 ^ (v115 >> 47));
                  v117 = 0x9DDFEA08EB382D69 * (v116 ^ (v70 - 0x4B6D499041670D8DLL * (v49 ^ (v49 >> 47)) - 0x622015F714C7D297 * (v114 ^ (v114 >> 47))));
                  v118 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v116 ^ (v117 >> 47) ^ v117)) ^ ((0x9DDFEA08EB382D69 * (v116 ^ (v117 >> 47) ^ v117)) >> 47));
                  goto LABEL_143;
                }

                continue;
              }
            }
          }
        }

        else if (v34)
        {
          LODWORD(v39) = *(v155 + v38);
          if (*(v155 + v38))
          {
            goto LABEL_70;
          }
        }

        else
        {
          v39 = (v152 >> (4 * v38)) & 0xF;
          if (v39)
          {
            goto LABEL_70;
          }
        }

LABEL_59:
        ++v38;
      }

      while (!(v38 >> v157));
    }

    atomic_store(v32, &qword_1ED415FC8);
    if (!v149)
    {
      v123 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      v32 = v156;
      *v123 = qword_1ED415FD8;
      v123[1] = v150;
      qword_1ED415FD8 = v123;
    }

    v31 = v19;
    v22 = 0;
    a2 = v145;
  }

  v29 = v22;
  v124 = v23;
  if (!v20 || (v125 = v20, v31 >= *v20))
  {
    v126 = v20;
    v127 = v31 + (v31 >> 2);
    if (v127 <= v31 + 1)
    {
      v127 = v31 + 1;
    }

    v128 = malloc_good_size(8 * v127 + 8);
    v129 = malloc_type_malloc(v128, 0x1020040D5A9D86FuLL);
    if (!v129)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v125 = v129;
    *v129 = (v128 + 0x7FFFFFFF8) >> 3;
    if (v126)
    {
      memcpy(v129 + 2, __src, 8 * v31);
      v130 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v130 = qword_1ED415FD8;
      v130[1] = v126;
      qword_1ED415FD8 = v130;
    }

    atomic_store(v125, &qword_1ED415FC0);
  }

  v131 = v165;
  LOWORD(v170) = 13;
  explicit = swift::MetadataAllocator::Allocate(&v170, 16 * v165 + 136, 8uLL);
  v132 = *v151;
  HIBYTE(v164) = 1;
  v133 = v163;
  if (!v163)
  {
    v133 = swift_slowAlloc(0x30, 0xFuLL);
    *v133 = 0u;
    *(v133 + 16) = 0u;
    *(v133 + 32) = 0u;
    *v133 = 1;
    *(v133 + 16) = 0;
    *(v133 + 24) = 0;
    os_unfair_lock_lock((v133 + 8));
    v163 = v133;
  }

  *explicit = v133 | 9;
  *(explicit + 24) = 0;
  *(explicit + 14) = 769;
  *(explicit + 15) = v131;
  *(explicit + 16) = __s1;
  if (v132)
  {
    v134 = v132;
  }

  else
  {
    v134 = 0;
  }

  *(explicit + 13) = v134;
  if (v131)
  {
    v135 = 0;
    v136 = *(&v165 + 1);
    do
    {
      *&explicit[16 * v135 + 136] = *(v136 + 8 * v135);
      ++v135;
    }

    while (v131 != v135);
  }

  *(v125 + 8 + 8 * v148) = explicit;
  atomic_store(v147, &dword_1ED415FBC);
  if ((v156 & 3) > 1)
  {
    if ((v156 & 3) == 2)
    {
      v137 = v156 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v156 & 3) == 0)
      {
        v137 = 0;
      }

      atomic_store(v147, (v137 + 2 * v124));
    }

    else
    {
      v138 = v156 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v156 & 3) == 0)
      {
        v138 = 0;
      }

      atomic_store(v147, (v138 + 4 * v124));
    }
  }

  else if ((v156 & 3) != 0)
  {
    atomic_store(v147, ((v156 & 0xFFFFFFFFFFFFFFFCLL) + v124));
  }

  else
  {
    atomic_store((v147 << (4 * v124)) | v156, &qword_1ED415FC8);
  }

  __dmb(0xBu);
  if (TupleTypes)
  {
    os_unfair_lock_unlock(&unk_1ED415FD0);
    qword_1ED415FE0 = explicit;
    goto LABEL_202;
  }

  v139 = qword_1ED415FD8;
  if (qword_1ED415FD8)
  {
    do
    {
      v140 = *v139;
      free(v139[1]);
      free(v139);
      v139 = v140;
    }

    while (v140);
  }

LABEL_194:
  qword_1ED415FD8 = 0;
  os_unfair_lock_unlock(&unk_1ED415FD0);
  qword_1ED415FE0 = explicit;
  if (v29)
  {
    goto LABEL_195;
  }

LABEL_202:
  if (v163)
  {
    LOBYTE(v164) = 1;
  }

  if (HIBYTE(v164) != 4)
  {
    if (HIBYTE(v164))
    {
      goto LABEL_196;
    }

    __break(1u);
LABEL_210:
    swift::hashable_support::findHashableBaseTypeOfHashableType();
  }

  v142 = 0;
  *a4 = explicit;
  a4[1] = explicit + 112;
LABEL_197:
  a4[2] = v142;
  v143 = v163;
  if (v163)
  {
    os_unfair_lock_unlock(v163 + 2);
    v144 = *&v143[4]._os_unfair_lock_opaque;
    *&v143[4]._os_unfair_lock_opaque = 0;
    if (v144)
    {
      MEMORY[0x1865C92E0](v144, 0x80C4018A671A6);
    }

    v143;
  }
}

void swift::MetadataAllocator::Deallocate(swift::MetadataAllocator *this, char *__b, size_t a3)
{
  _X20 = __b;
  if (a3 <= 0x2000)
  {
    _X22 = 0;
    _X23 = 0;
    __asm { CASP            X22, X23, X22, X23, [X24] }

    if (&__b[a3] == _X22)
    {
      if (swift::runtime::environment::initializeToken != -1)
      {
        v12 = a3;
        LibPrespecializedState::LibPrespecializedState();
        a3 = v12;
      }

      if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable == 1)
      {
        memset(_X20, 170, a3);
      }

      __asm { CASP            X22, X23, X20, X21, [X24] }
    }
  }

  else
  {

    __b;
  }
}

void swift_getTupleTypeMetadata2(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = a3;
  swift_getTupleTypeMetadata(a1, 2, v5, a4, a5);
}

void swift_getTupleTypeMetadata3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  swift_getTupleTypeMetadata(a1, 3, v6, a5, a6);
}

BOOL swift::equalContexts(const char *a1, const char *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  v27 = v2;
  v28 = v3;
  if ((*a1 & 0x40) != 0)
  {
    return 0;
  }

  v6 = a2;
  if ((*a2 & 0x40) != 0 || ((*a2 ^ *a1) & 0x1F) != 0)
  {
    return 0;
  }

  v8 = a1 + 4;
  v7 = *(a1 + 1);
  if (v7)
  {
    v10 = (v8 + (v7 & 0xFFFFFFFFFFFFFFFELL));
    if (v7)
    {
      if (*v10)
      {
        v11 = *v10;
        v6 = a2;
        goto LABEL_16;
      }
    }

    else if (v10)
    {
      v11 = v8 + (v7 & 0xFFFFFFFFFFFFFFFELL);
      goto LABEL_16;
    }
  }

  v11 = 0;
LABEL_16:
  v13 = *(v6 + 1);
  if (!v13)
  {
    v15 = a1;
    v16 = a2;
    goto LABEL_23;
  }

  v14 = &v6[(v13 & 0xFFFFFFFFFFFFFFFELL) + 4];
  v15 = a1;
  v16 = a2;
  if (v13)
  {
    if (*v14)
    {
      v17 = *v14;
      goto LABEL_24;
    }

LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  if (!v14)
  {
    goto LABEL_23;
  }

  v17 = &v6[(v13 & 0xFFFFFFFFFFFFFFFELL) + 4];
LABEL_24:
  if (!swift::equalContexts(v11, v17) || (*a1 & 0x1Fu) - 1 < 2)
  {
    return 0;
  }

  if ((*a1 & 0x1F) == 0)
  {
    v19 = strcmp(&a1[*(a1 + 2) + 8], &a2[*(a2 + 2) + 8]);
    return v19 == 0;
  }

  if ((*a1 & 0x10) != 0)
  {
    v20 = v15;
    v21 = v16;
    swift::ParsedTypeIdentity::parse(v20, v24);
    v23 = __s2;
    v22 = v26;
    swift::ParsedTypeIdentity::parse(v21, v24);
    if (v22 == v26)
    {
      if (!v22)
      {
        return 1;
      }

      v19 = memcmp(v23, __s2, v22);
      return v19 == 0;
    }
  }

  return 0;
}

BOOL swift_compareTypeContextDescriptors(_DWORD *a1, _DWORD *a2)
{
  if (a1)
  {
    v2 = a1;
    if (!a2)
    {
LABEL_7:
      v3 = 0;
      if (v2)
      {
        goto LABEL_8;
      }

      return 1;
    }
  }

  else
  {
    v2 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v3 = a2;
  if (v2 == a2)
  {
    return 1;
  }

LABEL_8:
  result = 0;
  if (v2 && v3)
  {
    if ((*v2 & 0x40) != 0)
    {
      return 0;
    }

    v5 = v3;
    if ((*v3 & 0x40) != 0 || ((*v3 ^ *v2) & 0x1F) != 0)
    {
      return 0;
    }

    v6 = v2[1];
    if (v6)
    {
      v7 = (v2 + (v6 & 0xFFFFFFFFFFFFFFFELL) + 4);
      if (v6)
      {
        if (*v7)
        {
          v8 = *v7;
          v5 = v3;
          goto LABEL_21;
        }
      }

      else if (v7)
      {
        v8 = v2 + (v6 & 0xFFFFFFFFFFFFFFFELL) + 4;
        goto LABEL_21;
      }
    }

    v8 = 0;
LABEL_21:
    v11 = v5[1];
    v10 = v5 + 1;
    v9 = v11;
    if (v11)
    {
      v12 = (v10 + (v9 & 0xFFFFFFFFFFFFFFFELL));
      if (v9)
      {
        if (*v12)
        {
          v13 = *v12;
          goto LABEL_28;
        }
      }

      else if (v12)
      {
        v13 = v10 + (v9 & 0xFFFFFFFFFFFFFFFELL);
        goto LABEL_28;
      }
    }

    v13 = 0;
LABEL_28:
    result = swift::equalContexts(v8, v13);
    if (!result)
    {
      return result;
    }

    swift::ParsedTypeIdentity::parse(v2, v16);
    v15 = __s2;
    v14 = v18;
    swift::ParsedTypeIdentity::parse(v3, v16);
    if (v14 != v18)
    {
      return 0;
    }

    if (v14)
    {
      return memcmp(v15, __s2, v14) == 0;
    }

    return 1;
  }

  return result;
}

char *_swift_pod_indirect_initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
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

uint64_t swift::installCommonValueWitnesses(uint64_t result, uint64_t (**a2)())
{
  v2 = *(result + 16);
  if ((v2 & 0x10000) != 0)
  {
    if ((v2 & 0x100000) == 0)
    {
      a2[4] = _swift_pod_copy;
    }
  }

  else
  {
    v3 = *(result + 16) | (*result << 16) | ((*(result + 20) != 0) << 48);
    if (v3 <= 524294)
    {
      switch(v3)
      {
        case 65536:
          v4 = &value witness table for Builtin.Int8;
          initializeBufferWithCopyOfBuffer = value witness table for Builtin.Int8.initializeBufferWithCopyOfBuffer;
          goto LABEL_22;
        case 131073:
          v4 = &value witness table for Builtin.Int16;
          initializeBufferWithCopyOfBuffer = value witness table for Builtin.Int16.initializeBufferWithCopyOfBuffer;
          goto LABEL_22;
        case 262147:
          v4 = &value witness table for Builtin.Int32;
          initializeBufferWithCopyOfBuffer = value witness table for Builtin.Int32.initializeBufferWithCopyOfBuffer;
          goto LABEL_22;
      }
    }

    else if (v3 > 2097182)
    {
      if (v3 == 2097183)
      {
        v4 = value witness table for Builtin.Int256;
        initializeBufferWithCopyOfBuffer = value witness table for Builtin.Int256[0];
        goto LABEL_22;
      }

      if (v3 == 4194367)
      {
        v4 = value witness table for Builtin.Int512;
        initializeBufferWithCopyOfBuffer = value witness table for Builtin.Int512[0];
        goto LABEL_22;
      }
    }

    else
    {
      if (v3 == 524295)
      {
        v4 = &value witness table for Builtin.Int64;
        initializeBufferWithCopyOfBuffer = value witness table for Builtin.Int64.initializeBufferWithCopyOfBuffer;
        goto LABEL_22;
      }

      if (v3 == 1048591)
      {
        v4 = &value witness table for Builtin.Int128;
        initializeBufferWithCopyOfBuffer = value witness table for Builtin.Int128.initializeBufferWithCopyOfBuffer;
LABEL_22:
        *a2 = initializeBufferWithCopyOfBuffer;
        a2[1] = v4->destroy;
        a2[2] = v4->initializeWithCopy;
        a2[3] = v4->assignWithCopy;
        a2[4] = v4->initializeWithTake;
        a2[5] = v4->assignWithTake;
        a2[6] = v4->getEnumTagSinglePayload;
        a2[7] = v4->storeEnumTagSinglePayload;
        return result;
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v6 = _swift_pod_indirect_initializeBufferWithCopyOfBuffer;
    }

    else
    {
      v6 = _swift_pod_direct_initializeBufferWithCopyOfBuffer;
    }

    *a2 = v6;
    a2[1] = _swift_pod_destroy;
    a2[2] = _swift_pod_copy;
    a2[4] = _swift_pod_copy;
    a2[3] = _swift_pod_copy;
    a2[5] = _swift_pod_copy;
  }

  return result;
}

double swift_initStructMetadata(uint64_t a1, __int16 a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = 0uLL;
  v38 = 0.0;
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v8) = 1;
    LOBYTE(v9) = 1;
    LOBYTE(v10) = 1;
    do
    {
      v11 = *(a4 + 8 * v5);
      v12 = *(v11 + 16);
      v13 = v12;
      v14 = (v6 + v13) & ~v13;
      if (*(a5 + 4 * v5) != v14)
      {
        *(a5 + 4 * v5) = v14;
        v12 = *(v11 + 16);
        v13 = v12;
      }

      v6 = *v11 + v14;
      if (v7 <= v13)
      {
        v7 = v13;
      }

      v8 = ((v12 & 0x10000) == 0) & v8;
      v9 = ((v12 & 0x100000) == 0) & v9;
      v10 = ((v12 & 0x1100000) == 0) & v10;
      ++v5;
    }

    while (a3 != v5);
    if (v8)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0x10000;
    }

    if (v10)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0x1000000;
    }

    if (v7 >= 8 || v6 >= 0x19)
    {
      v18 = 0;
    }

    else
    {
      v18 = v9;
    }

    *&v37 = v6;
    v19 = v7 & 0xFEECFFFF;
    if (!v9)
    {
      v20 = 0x100000;
      goto LABEL_24;
    }
  }

  else
  {
    v19 = 0;
    v6 = 0;
    v15 = 0;
    v16 = 0;
    v7 = 0;
    v18 = 1;
  }

  v20 = 0;
LABEL_24:
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x20000;
  }

  LODWORD(v38) = v16 | v19 | v20 | v15 | v21;
  v22 = (v6 + v7) & ~v7;
  if (v22 <= 1)
  {
    v22 = 1;
  }

  *(&v37 + 1) = v22;
  if (!a3)
  {
    v25 = 0;
    goto LABEL_38;
  }

  v23 = a3 - 1;
  if (a3 == 1)
  {
    v24 = 0;
    v25 = 0;
    goto LABEL_32;
  }

  v25 = 0;
  v24 = 0;
  if (!a3)
  {
    LODWORD(v23) = 0;
LABEL_32:
    v26 = v23 + 1;
    do
    {
      v27 = *(*(a4 + 8 * v24) + 20);
      if (v27 > v25)
      {
        v25 = v27;
      }

      v24 = v26++;
    }

    while (v24 < a3);
    goto LABEL_38;
  }

  v32 = HIDWORD(v23);
  LODWORD(v23) = 0;
  if (v32)
  {
    goto LABEL_32;
  }

  v33 = 0;
  v24 = a3 & 0x1FFFFFFFELL;
  LODWORD(v23) = a3 & 0xFFFFFFFE;
  v34 = a4 + 8;
  v35 = a3 & 0x1FFFFFFFELL;
  do
  {
    if (*(*(v34 - 8) + 20) > v32)
    {
      LODWORD(v32) = *(*(v34 - 8) + 20);
    }

    if (*(*v34 + 20) > v33)
    {
      v33 = *(*v34 + 20);
    }

    v34 += 16;
    v35 -= 2;
  }

  while (v35);
  v25 = v32 <= v33 ? v33 : v32;
  if (v24 != a3)
  {
    goto LABEL_32;
  }

LABEL_38:
  v28 = (a1 - 8);
  if (!*(a1 - 8))
  {
    v29 = 0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v30 = v29;
    goto LABEL_56;
  }

  v29 = *(a1 - 8);
  if ((a2 & 0x100) != 0)
  {
    goto LABEL_42;
  }

LABEL_40:
  v39 = 12;
  v30 = swift::MetadataAllocator::Allocate(&v39, 0x58uLL, 8uLL);
  *v30 = *v29;
  *(v30 + 1) = *(v29 + 8);
  *(v30 + 2) = *(v29 + 16);
  *(v30 + 3) = *(v29 + 24);
  *(v30 + 4) = *(v29 + 32);
  *(v30 + 5) = *(v29 + 40);
  *(v30 + 6) = *(v29 + 48);
  *(v30 + 7) = *(v29 + 56);
  v31 = *(v29 + 64);
  *(v30 + 10) = *(v29 + 80);
  *(v30 + 4) = v31;
  *v28 = v30;
LABEL_56:
  HIDWORD(v38) = v25;
  swift::installCommonValueWitnesses(&v37, v30);
  *(v30 + 4) = v37;
  result = v38;
  *(v30 + 10) = v38;
  return result;
}

double swift_initStructMetadataWithLayoutString(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (swift_cvw_initStructMetadataWithLayoutString::Override == 1)
  {
    return swift_cvw_initStructMetadataWithLayoutStringImpl(a1, a2, a3, a4, a5, a6);
  }

  if (!swift_cvw_initStructMetadataWithLayoutString::Override)
  {
    return swift_cvw_initStructMetadataWithLayoutStringSlow(a1, a2, a3, a4, a5, a6);
  }

  swift_cvw_initStructMetadataWithLayoutString::Override(a1, a2, a3, a4, a5, a6, swift_cvw_initStructMetadataWithLayoutStringImpl);
  return result;
}

double swift_cvw_initStructMetadataWithLayoutString(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (swift_cvw_initStructMetadataWithLayoutString::Override == 1)
  {
    return swift_cvw_initStructMetadataWithLayoutStringImpl(a1, a2, a3, a4, a5, a6);
  }

  if (!swift_cvw_initStructMetadataWithLayoutString::Override)
  {
    return swift_cvw_initStructMetadataWithLayoutStringSlow(a1, a2, a3, a4, a5, a6);
  }

  swift_cvw_initStructMetadataWithLayoutString::Override(a1, a2, a3, a4, a5, a6, swift_cvw_initStructMetadataWithLayoutStringImpl);
  return result;
}

uint64_t _swift_refCountBytesForMetatype(unint64_t *a1)
{
  v2 = *(a1 - 1);
  if (v2)
  {
    v3 = *(a1 - 1);
  }

  else
  {
    v3 = 0;
  }

  if (!*(v2 + 64) || (*(v3 + 82) & 1) == 0)
  {
    return 0;
  }

  if (*a1 != 769)
  {
    if (v3 == value witness table for Builtin.BridgeObject || v3 == value witness table for Builtin.NativeObject || v3 == &value witness table for Builtin.UnknownObject)
    {
      return 8;
    }

    if (*a1 <= 0x7FF)
    {
      v9 = *a1;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (v9 != 773 || (v10 = a1[1]) == 0)
      {
        TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a1);
        if (TypeContextDescriptor && (*(TypeContextDescriptor + 2) & 0x10) != 0)
        {
          return *((*(a1 - 2) & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        v12 = *a1;
        if (*a1 > 0x7FF)
        {
          LODWORD(v12) = 0;
        }

        v13 = v12 == 771 || v12 == 774;
        goto LABEL_37;
      }
    }

    else
    {
      v10 = a1;
    }

    v13 = (v10[4] & 2) == 0;
LABEL_37:
    if (v13)
    {
      return 8;
    }

    else
    {
      return 16;
    }
  }

  if (!a1[1])
  {
    return 0;
  }

  v6 = 0;
  v4 = 0;
  do
  {
    v4 += _swift_refCountBytesForMetatype(a1[2 * v6++ + 3]);
  }

  while (v6 < a1[1]);
  return v4;
}

uint64_t _swift_addRefCountStringForMetatype(uint64_t result, void *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a4;
  v6 = a3 - 1;
  v7 = *(a3 - 1);
  v8 = *(v7 + 80);
  v9 = (*a4 + v8) & ~v8;
  *a4 = v9;
  v11 = (v7 + 64);
  v10 = *(v7 + 64);
  if (!v10)
  {
    return result;
  }

  v14 = v9 - v5 + *a5;
  if ((v8 & 0x10000) == 0)
  {
    v15 = v14 + v10;
LABEL_4:
    *a5 = v15;
LABEL_19:
    *a4 += *v11;
    return result;
  }

  v18 = result;
  v19 = *a3;
  if (*a3 != 769)
  {
    if (v7 == value witness table for Builtin.NativeObject)
    {
      v21 = v14 | 0x200000000000000;
LABEL_16:
      *(*result + *(result + 8)) = v21;
      *(result + 8) += 8;
      *a5 = 0;
LABEL_17:
      v22 = *v6;
LABEL_18:
      v11 = (v22 + 64);
      goto LABEL_19;
    }

    if (v7 == &value witness table for Builtin.UnknownObject)
    {
LABEL_13:
      v21 = v14 | 0xA00000000000000;
      goto LABEL_16;
    }

    if (v7 == value witness table for Builtin.BridgeObject)
    {
      v21 = v14 | 0x800000000000000;
      goto LABEL_16;
    }

    if (v19 > 0x7FF)
    {
      LODWORD(v19) = 0;
    }

    v23 = a3;
    if (!v19 || v19 == 773 && (v23 = a3[1]) != 0)
    {
      if ((v23[4] & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a3);
      if (result && (*(result + 2) & 0x10) != 0)
      {
        v34 = (*(a3 - 2) & 0xFFFFFFFFFFFFFFFELL);
        v35 = v34[1];
        if (!v35)
        {
          v38 = *v6;
          *a5 += *(*v6 + 64);
          v22 = v38;
          goto LABEL_18;
        }

        v39 = *(a3 - 2);
        v36 = *v34;
        *a2 |= *v34;
        result = memcpy((*v18 + *(v18 + 8)), v34 + 2, v35);
        if (v36 < 0)
        {
          result = swift::swift_cvw_resolve_resilientAccessors(*v18, *(v18 + 8), v39, 16, a3);
        }

        if (v14)
        {
          v37 = *(v18 + 8);
          *(*v18 + v37) = *((*v18 & 0xFFFFFFFFFFFFFFFELL) + v37) + v14;
          *(v18 + 8) = v37;
        }

        *a5 = *(v34 + v35 + 16);
        *(v18 + 8) += v35;
        goto LABEL_17;
      }

      if (*a3 <= 0x7FF)
      {
        v24 = *a3;
      }

      else
      {
        v24 = 0;
      }

      if (v24 == 774 || v24 == 771)
      {
        if (*a3 == 771)
        {
          v25 = a3;
        }

        else
        {
          v25 = 0;
        }

        v26 = 0xE00000000000000;
        if (*(v25 + 2) >= 0)
        {
          v26 = 0x500000000000000;
        }

        *(*v18 + *(v18 + 8)) = v26 | v14;
        *(v18 + 8) += 8;
        v27 = *(a3 - 1);
        v29 = *(v27 + 64);
        v11 = (v27 + 64);
        v28 = v29;
        v30 = *(v25 + 2) < 0;
        v31 = -24;
        if (!v30)
        {
          v31 = -8;
        }

        v15 = v31 + v28;
        goto LABEL_4;
      }
    }

    *(*v18 + *(v18 + 8)) = v14 | 0xC00000000000000;
    v32 = *v18;
    v33 = *(v18 + 8) + 8;
    *(v18 + 8) = v33;
    *(v32 + v33) = a3;
    *(v18 + 8) += 8;
    *a5 = 0;
    v22 = *(a3 - 1);
    goto LABEL_18;
  }

  *a5 = v14;
  if (a3[1])
  {
    v20 = 0;
    do
    {
      result = _swift_addRefCountStringForMetatype(v18, a2, a3[2 * v20++ + 3], a4, a5);
    }

    while (v20 < a3[1]);
  }

  return result;
}

char *swift_initRawStructMetadata(uint64_t a1, __int16 a2, uint64_t *a3, int a4)
{
  v6 = (a1 - 8);
  if (*(a1 - 8))
  {
    v7 = *(a1 - 8);
    if ((a2 & 0x100) == 0)
    {
LABEL_3:
      v15 = 12;
      result = swift::MetadataAllocator::Allocate(&v15, 0x58uLL, 8uLL);
      *result = *v7;
      *(result + 1) = *(v7 + 8);
      *(result + 2) = *(v7 + 16);
      *(result + 3) = *(v7 + 24);
      *(result + 4) = *(v7 + 32);
      *(result + 5) = *(v7 + 40);
      *(result + 6) = *(v7 + 48);
      *(result + 7) = *(v7 + 56);
      v9 = *(v7 + 64);
      *(result + 10) = *(v7 + 80);
      *(result + 4) = v9;
      *v6 = result;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_3;
    }
  }

  result = v7;
LABEL_6:
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 16);
  v13 = *(a3 + 5);
  v14 = v11 * a4;
  if (a4 >= 0)
  {
    v11 *= a4;
    v10 = v14;
  }

  *(result + 8) = v10;
  *(result + 9) = v11;
  *(result + 20) = v12 | 0x1800000;
  *(result + 21) = v13;
  return result;
}

char *swift_initRawStructMetadata2(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = (a1 - 8);
  if (*(a1 - 8))
  {
    v9 = *(a1 - 8);
    if ((a2 & 0x100) == 0)
    {
LABEL_3:
      v20 = 12;
      result = swift::MetadataAllocator::Allocate(&v20, 0x58uLL, 8uLL);
      *result = *v9;
      *(result + 1) = *(v9 + 8);
      *(result + 2) = *(v9 + 16);
      *(result + 3) = *(v9 + 24);
      *(result + 4) = *(v9 + 32);
      *(result + 5) = *(v9 + 40);
      *(result + 6) = *(v9 + 48);
      *(result + 7) = *(v9 + 56);
      v11 = *(v9 + 64);
      *(result + 10) = *(v9 + 80);
      *(result + 4) = v11;
      *v8 = result;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_3;
    }
  }

  result = v9;
LABEL_6:
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  v15 = *(a3 + 20);
  v16 = v13 * (a4 & ~(a4 >> 63));
  if (a5)
  {
    v13 *= a4 & ~(a4 >> 63);
    v12 = v16;
  }

  *(result + 8) = v12;
  *(result + 9) = v13;
  v17 = v14 | 0x800000;
  *(result + 20) = v14 | 0x800000;
  *(result + 21) = v15;
  if ((a5 & 2) != 0)
  {
    v17 |= *(a3 + 16) & 0x100000;
  }

  v18 = (v17 & 0xFEFFFFFF | (((a5 >> 2) & 1) << 24)) ^ 0x1000000;
  *(result + 20) = v18;
  if (v12 > 3)
  {
    v19 = v18 | 0x20000;
  }

  else
  {
    v19 = *(a3 + 16) & 0x20000 | v18 & 0xFFFDFFFF;
  }

  *(result + 20) = v19;
  return result;
}

uint64_t supportsLazyObjcClassNames(void)
{
  if (qword_1ED426160 != -1)
  {
    dispatch_once_f(&qword_1ED426160, &supportsLazyObjcClassNames(void)::$_0::operator() const(void)::TheLazy, supportsLazyObjcClassNames(void)::$_0::operator() const(void)::{lambda(void *)#1}::__invoke);
  }

  return supportsLazyObjcClassNames(void)::$_0::operator() const(void)::TheLazy;
}

uint64_t getSuperclassMetadata(uint64_t a1, uint64_t a2)
{
  v36[33] = *MEMORY[0x1E69E9840];
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(v3 + 20);
  v6 = (v3 + 20 + v5);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v6, a2);
  v12 = v11;
  v24[0] = SymbolicMangledNameStringRef;
  v24[1] = v11;
  v31 = 0;
  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  if (TypeContextDescriptor)
  {
    v14 = TypeContextDescriptor;
  }

  else
  {
    v14 = 0;
  }

  v32 = v14;
  GenericArgs = swift::TargetMetadata<swift::InProcess>::getGenericArgs(a2);
  v34 = v36;
  v35 = 0x800000000;
  v36[32] = 0;
  v27[0] = &unk_1EEEACA88;
  v27[1] = &v31;
  v28 = v27;
  v25[0] = &unk_1EEEACAD0;
  v25[1] = &v31;
  v26 = v25;
  swift_getTypeByMangledName(v29, a1, SymbolicMangledNameStringRef, v12, GenericArgs, v27, v25);
  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
  }

  else if (v26)
  {
    (*(*v26 + 40))();
  }

  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
    v15 = v30;
    if (v30)
    {
LABEL_18:
      if (v15 == 1)
      {
        v17 = *v4 + 8 + *(*v4 + 8);
        v18 = v22;
        __swift::__runtime::llvm::StringRef::str(v24, v22);
        if (v23 < 0)
        {
          v18 = v22[0];
        }

        v19 = (v29[1])(v29[0], 0, 0);
        swift::fatalError(0, "failed to demangle superclass of %s from mangled name '%s': %s\n", v20, v21, v17, v18, v19);
      }

      result = 0;
      goto LABEL_22;
    }
  }

  else
  {
    if (v28)
    {
      (*(*v28 + 40))();
    }

    v15 = v30;
    if (v30)
    {
      goto LABEL_18;
    }
  }

  result = v29[0];
LABEL_22:
  if (v34 != v36)
  {
    v16 = result;
    free(v34);
    return v16;
  }

  return result;
}

uint64_t std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::function<void const* ()(unsigned int,unsigned int)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
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

swift *_swift_initClassMetadataImpl(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a1;
  v261 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 255;
  }

  if (a6)
  {
    v8 = 257;
  }

  else
  {
    v8 = 255;
  }

  result = getSuperclassMetadata(v8, a1);
  if (!result)
  {
    v13 = v6 + 1;
LABEL_14:
    *v13 = 0;
    RootSuperclass = swift::getRootSuperclass(result);
    if (RootSuperclass)
    {
      v14 = RootSuperclass;
    }

    else
    {
      v14 = 0;
    }

    v12 = 0;
    goto LABEL_18;
  }

  v11 = v10;
  v12 = result;
  if (*result == 773)
  {
    v12 = *(result + 1);
  }

  if (v7 < v11)
  {
    return result;
  }

  v13 = v6 + 1;
  if (!v12)
  {
    goto LABEL_14;
  }

  v14 = v12;
LABEL_18:
  *v13 = v14;
  if (_swift_initClassMetadataImpl(swift::TargetClassMetadata<swift::InProcess,swift::TargetAnyClassMetadataObjCInterop<swift::InProcess>> *,swift::ClassLayoutFlags,unsigned long,swift::TargetTypeLayout<swift::InProcess> const* const*,unsigned long *,BOOL)::onceToken != -1)
  {
    v232 = v12;
    _swift_initClassMetadataImpl();
    v12 = v232;
  }

  v254 = v256;
  v255 = 0x1000000000;
  v16 = v6 + 8;
  if ((*(v6[8] + 3) & 0x40) != 0 && v12)
  {
    do
    {
      if ((*(v12 + 32) & 2) == 0)
      {
        break;
      }

      if (*(v12 + 64))
      {
        v17 = *(v12 + 64);
      }

      else
      {
        v17 = 0;
      }

      if ((*(v17 + 2) & 0x40) != 0)
      {
        v18 = v255;
        if (v255 >= HIDWORD(v255))
        {
          v21 = v12;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v254, v256, v255 + 1, 8);
          v12 = v21;
          v18 = v255;
        }

        *(v254 + v18) = v17;
        LODWORD(v255) = v255 + 1;
      }

      result = getSuperclassMetadata(v8, v12);
      if (!result)
      {
        break;
      }

      v20 = v19;
      v12 = result;
      if (*result == 773)
      {
        v12 = *(result + 1);
      }

      if (v7 < v20)
      {
        goto LABEL_346;
      }
    }

    while (v12);
  }

  v22 = *v13;
  v251 = v6;
  v23 = a2;
  if (!v22)
  {
    goto LABEL_105;
  }

  v24 = v22;
  v245 = v6 + 8;
  for (i = v22; (*(i + 32) & 2) != 0; i = *(i + 8))
  {
    if (*(i + 64))
    {
      v26 = *(i + 64);
    }

    else
    {
      v26 = 0;
    }

    v27 = *v26;
    if ((*v26 & 0x80) != 0)
    {
      v28 = v26 ? v26 : 0;
      if (*(v28 + 56))
      {
        if ((v27 & 0x20000000) != 0)
        {
          v31 = v26[6];
          if (v31)
          {
            v32 = (v26 + v31 + 24);
          }

          else
          {
            v32 = 0;
          }

          if (*v32)
          {
            v33 = *v32 >> 3;
            if (!v26)
            {
              goto LABEL_57;
            }
          }

          else
          {
            computeMetadataBoundsFromSuperclass(v26, v32);
            v33 = v45 >> 3;
            if (!v26)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          if ((v27 & 0x10000000) != 0)
          {
            v29 = 0;
            v30 = 6;
          }

          else
          {
            v29 = v26[7];
            v30 = 8;
          }

          LODWORD(v33) = v29 - v26[v30];
          if (!v26)
          {
LABEL_57:
            v34 = 0;
            goto LABEL_58;
          }
        }

        v34 = v26;
LABEL_58:
        memcpy(&v6[v33], (v24 + 8 * v33), 8 * *(v34 + 28));
        v27 = *v26;
      }
    }

    if ((v23 & 0x100) != 0 || (v27 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    if (v26)
    {
      v35 = v26;
    }

    else
    {
      v35 = 0;
    }

    v36 = (swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v35) + 4 * ((*v35 >> 29) & 1) + 4 * ((*v35 & 0x30000) == 0x20000) + 12 * ((*v35 & 0x30000) == 0x10000));
    if ((*v26 & 0x20000000) != 0)
    {
      v39 = v26[6];
      if (v39)
      {
        v40 = (v26 + v39 + 24);
      }

      else
      {
        v40 = 0;
      }

      explicit = atomic_load_explicit(v40, memory_order_acquire);
      if (!explicit)
      {
        computeMetadataBoundsFromSuperclass(v26, v40);
        explicit = v42;
      }

      v37 = *v36 + (explicit >> 3);
      if (*v26 < 0)
      {
LABEL_73:
        if (v26)
        {
          v43 = v26;
        }

        else
        {
          v43 = 0;
        }

        v38 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v43) + 4 * ((*v43 >> 29) & 1) + 4 * ((*v43 & 0x30000) == 0x20000) + 12 * ((*v43 & 0x30000) == 0x10000) + ((*v43 >> 28) & 8);
        if (*v26 < 0)
        {
          if (v26)
          {
            v44 = v26;
          }

          else
          {
            v44 = 0;
          }

          swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v44);
        }

        goto LABEL_83;
      }
    }

    else
    {
      v37 = *v36;
      if (*v26 < 0)
      {
        goto LABEL_73;
      }
    }

    v38 = 0;
LABEL_83:
    v46 = v36[1];
    v23 = a2;
    if (v46)
    {
      v47 = 8 * v37;
      v48 = (v251 + v47);
      v49 = (v24 + v47);
      v50 = 8 * v37;
      v51 = v24 + v50;
      v52 = v251 + v50;
      do
      {
        v38 += 8;
        *v48++ = *v49;
        v51 += 8;
        ++v49;
        v52 += 8;
        --v46;
      }

      while (v46);
    }

LABEL_87:
    v53 = v26[10];
    v6 = v251;
    if (v53)
    {
      if ((*(v26 + 3) & 0x20) != 0)
      {
        v54 = v26[6];
        if (v54)
        {
          v55 = (v26 + v54 + 24);
        }

        else
        {
          v55 = 0;
        }

        v56 = atomic_load_explicit(v55, memory_order_acquire);
        if (!v56)
        {
          computeMetadataBoundsFromSuperclass(v26, v55);
          v56 = v57;
        }

        v53 = v26[10] + (v56 >> 3);
      }

      memcpy(v251 + 8 * v53, (v24 + 8 * v53), 8 * v26[9]);
    }

    if (!*(i + 8))
    {
      break;
    }
  }

  v16 = v245;
  if ((**v245 & 0x80) != 0 || (*(v24 + 32) & 2) != 0 && (**(v24 + 64) & 0x80) != 0)
  {
    Class = object_getClass(v6);
    v59 = object_getClass(v24);
    if (v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    *(Class + 1) = v60;
  }

LABEL_105:
  if ((v23 & 0x100) == 0)
  {
    if (*v16)
    {
      v61 = *v16;
    }

    else
    {
      v61 = 0;
    }

    if ((*v61 & 0x80000000) == 0)
    {
      goto LABEL_110;
    }

    v64 = v61 ? v61 : 0;
    v65 = (swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v64) + 4 * ((*v64 >> 29) & 1) + 4 * ((*v64 & 0x30000) == 0x20000) + 12 * ((*v64 & 0x30000) == 0x10000));
    if ((*v61 & 0x20000000) != 0)
    {
      v68 = *(v61 + 24);
      if (v68)
      {
        v69 = (v68 + v61 + 24);
      }

      else
      {
        v69 = 0;
      }

      v70 = atomic_load_explicit(v69, memory_order_acquire);
      if (!v70)
      {
        computeMetadataBoundsFromSuperclass(v61, v69);
        v70 = v71;
      }

      v66 = *v65 + (v70 >> 3);
      if ((*v61 & 0x80000000) != 0)
      {
        goto LABEL_126;
      }

LABEL_119:
      v67 = 0;
      v6 = v251;
    }

    else
    {
      v66 = *v65;
      if ((*v61 & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

LABEL_126:
      v72 = v61 ? v61 : 0;
      v67 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v72) + 4 * ((*v72 >> 29) & 1) + 4 * ((*v72 & 0x30000) == 0x20000) + 12 * ((*v72 & 0x30000) == 0x10000) + ((*v72 >> 28) & 8);
      if ((*v61 & 0x80000000) != 0)
      {
        v73 = v61 ? v61 : 0;
        v6 = v251;
        swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v73);
      }

      else
      {
        v6 = v251;
      }
    }

    v80 = v65[1];
    if (v80)
    {
      v81 = v67 + 4;
      v82 = (v67 + 4);
      do
      {
        v83 = *v82;
        v84 = v81 + v83;
        if (!v83)
        {
          v84 = 0;
        }

        v82 += 2;
        v6[v66++] = v84;
        v81 += 8;
        --v80;
      }

      while (v80);
    }

LABEL_110:
    if ((*(v61 + 3) & 0x40) != 0)
    {
      v62 = v255;
      v257 = 0u;
      v258 = 0u;
      LODWORD(v259) = 1065353216;
      if ((*(v61 + 3) & 0x40) != 0)
      {
        v247 = v255;
        v63 = v61 ? v61 : 0;
        TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v63);
        v240 = *v63;
        if ((v240 & 0x80000000) != 0)
        {
          if (!v63)
          {
            v63 = 0;
          }

          v242 = *(swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v63) + 4 * ((*v63 >> 29) & 1) + 4 * ((*v63 & 0x30000) == 0x20000) + 12 * ((*v63 & 0x30000) == 0x10000) + 4);
        }

        else
        {
          v242 = 0;
        }

        v62 = v247;
        if ((*(v61 + 3) & 0x40) != 0)
        {
          v74 = v61 ? v61 : 0;
          v75 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v74);
          v76 = *v74;
          v234 = v75;
          if ((v76 & 0x80000000) != 0)
          {
            v79 = v74 ? v74 : 0;
            v77 = *(swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v79) + 4 * ((*v79 >> 29) & 1) + 4 * ((*v79 & 0x30000) == 0x20000) + 12 * ((*v79 & 0x30000) == 0x10000) + 4);
            v78 = *v74;
          }

          else
          {
            v77 = 0;
            v78 = *v74;
          }

          v85 = (v76 & 0x30000) == 0x20000;
          v62 = v247;
          if ((*(v61 + 3) & 0x40) != 0)
          {
            v86 = v61 ? v61 : 0;
            v87 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v86);
            v90 = *v86;
            if ((v90 & 0x80000000) != 0)
            {
              v92 = v87;
              if (!v86)
              {
                v86 = 0;
              }

              v91 = *(swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v86) + 4 * ((*v86 >> 29) & 1) + 4 * ((*v86 & 0x30000) == 0x20000) + 12 * ((*v86 & 0x30000) == 0x10000) + 4);
              v87 = v92;
            }

            else
            {
              v91 = 0;
            }

            v93 = *(v87 + 4 * ((v90 >> 29) & 1) + 4 * ((v90 & 0x30000) == 0x20000) + 12 * ((v90 & 0x30000) == 0x10000) + 8 * ((v90 >> 31) & 1) + 8 * v91);
            v62 = v247;
            if (v93)
            {
              v94 = 0;
              v95 = (4 * ((v76 & 0x30000) == 0x10000)) | (8 * ((v76 & 0x30000) == 0x10000));
              v96 = 8 * v77;
              v97 = 8 * (v76 >> 31);
              v98 = 4 * ((v78 >> 30) & 1);
              v99 = 4 * ((v76 >> 29) & 1);
              v100 = v234 + v99 + v95 + 8 * v77 + v97 + 4 * v85 + v98;
              v101 = 12 * v93;
              v102 = v234 + v95 + v97 + v96 + v99 + v98 + 4 * v85;
              v235 = v102;
              v236 = 12 * v93;
              while (1)
              {
                if (!v62)
                {
                  goto LABEL_177;
                }

                v103 = *(v100 + v94 + 4);
                if (!v103)
                {
                  break;
                }

                v104 = (v100 + v94 + (v103 & 0xFFFFFFFFFFFFFFFELL) + 4);
                if (v103)
                {
                  if (!*v104)
                  {
                    break;
                  }

                  v104 = *v104;
                }

LABEL_176:
                v253 = v104;
                std::__hash_table<swift::TargetMethodDescriptor<swift::InProcess> const*,std::hash<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::equal_to<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::allocator<swift::TargetMethodDescriptor<swift::InProcess> const*>>::__emplace_unique_key_args<swift::TargetMethodDescriptor<swift::InProcess> const*,swift::TargetMethodDescriptor<swift::InProcess> const*>(&v257, &v253);
LABEL_177:
                v105 = *(v100 + v94);
                if (v105)
                {
                  v106 = v105 & 0xFFFFFFFFFFFFFFFELL;
                  v107 = v100 + v94;
                  if (v105)
                  {
                    if (*(v107 + v106))
                    {
                      v108 = *(v107 + v106);
                      goto LABEL_184;
                    }
                  }

                  else if (v102 + v94 + v106)
                  {
                    v108 = (v107 + v106);
                    goto LABEL_184;
                  }
                }

                v108 = 0;
LABEL_184:
                v109 = *(v100 + v94 + 4);
                if (!v109)
                {
                  v110 = 0;
LABEL_190:
                  if (!v108)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_191;
                }

                v110 = (v100 + v94 + (v109 & 0xFFFFFFFFFFFFFFFELL) + 4);
                if ((v109 & 1) == 0)
                {
                  goto LABEL_190;
                }

                if (*v110)
                {
                  v110 = *v110;
                  if (!v108)
                  {
                    goto LABEL_169;
                  }
                }

                else
                {
                  v110 = 0;
                  if (!v108)
                  {
                    goto LABEL_169;
                  }
                }

LABEL_191:
                if (v110)
                {
                  if ((*v108 & 0x80000000) != 0)
                  {
                    v113 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v108);
                    v112 = 0;
                    v114 = *v108;
                    v115 = (v114 & 0x30000) == 0x20000;
                    if ((*v108 & 0x80000000) != 0)
                    {
                      v233 = v113;
                      v116 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v108);
                      v117 = *v108;
                      v118 = v116 + 4 * ((v117 >> 29) & 1);
                      v113 = v233;
                      v115 = (v114 & 0x30000) == 0x20000;
                      v112 = *(v118 + 4 * ((v117 & 0x30000) == 0x20000) + 12 * ((v117 & 0x30000) == 0x10000) + 4);
                    }

                    v111 = v113 + 4 * ((v114 >> 29) & 1) + 4 * v115 + 12 * ((v114 & 0x30000) == 0x10000) + ((v114 >> 28) & 8);
                    v102 = v235;
                    v101 = v236;
                    if (v111 > v110)
                    {
LABEL_358:
                      swift::fatalError(0, "resilient vtable at %p contains out-of-bounds method descriptor %p\n", v88, v89, TrailingObjectsImpl + 4 * ((v240 >> 29) & 1) + 4 * ((v240 & 0x30000) == 0x20000) + 12 * ((v240 & 0x30000) == 0x10000) + 8 * ((v240 >> 31) & 1) + 8 * v242, v110);
                    }
                  }

                  else
                  {
                    v111 = 0;
                    v112 = 0;
                  }

                  if (v111 + 8 * v112 <= v110)
                  {
                    goto LABEL_358;
                  }

                  if ((*v108 & 0x80000000) != 0)
                  {
                    v119 = (swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v108) + 4 * ((*v108 >> 29) & 1) + 4 * ((*v108 & 0x30000) == 0x20000) + 12 * ((*v108 & 0x30000) == 0x10000));
                    if ((*v108 & 0x20000000) != 0)
                    {
                      goto LABEL_204;
                    }

LABEL_202:
                    v120 = *v119;
                  }

                  else
                  {
                    v119 = 0;
                    if ((*v108 & 0x20000000) == 0)
                    {
                      goto LABEL_202;
                    }

LABEL_204:
                    v121 = v108[6];
                    if (v121)
                    {
                      v122 = (v108 + v121 + 24);
                    }

                    else
                    {
                      v122 = 0;
                    }

                    v123 = atomic_load_explicit(v122, memory_order_acquire);
                    if (!v123)
                    {
                      computeMetadataBoundsFromSuperclass(v108, v122);
                      v123 = v124;
                    }

                    v120 = *v119 + (v123 >> 3);
                  }

                  v125 = (&v110[v120] + v251 - v111);
                  v126 = *(v100 + v94 + 8);
                  if (v126)
                  {
                    v127 = v100 + v94 + v126 + 8;
                  }

                  else
                  {
                    v127 = 0;
                  }

                  v62 = v247;
                  *v125 = v127;
                }

LABEL_169:
                v94 += 12;
                if (v101 == v94)
                {
                  goto LABEL_214;
                }
              }

              v104 = 0;
              goto LABEL_176;
            }
          }
        }
      }

LABEL_214:
      if (v62 && v255)
      {
        v128 = v254;
        v129 = v254 + 8 * v255;
        v241 = v129;
        while (1)
        {
          v130 = *v128;
          v131 = *v128;
          if ((*(*v128 + 2) & 0x40) != 0)
          {
            v133 = v130 ? *v128 : 0;
            v132 = ((swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v133) + 4 * ((*v133 & 0x80080) == 524416) + 2 * ((*v133 >> 5) & 1) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((*v133 & 0x80080) == 0x80000);
          }

          else
          {
            v132 = 0;
          }

          DefaultOverrideDescriptors = swift::TargetClassDescriptor<swift::InProcess>::getDefaultOverrideDescriptors(v130);
          if (v135)
          {
            break;
          }

LABEL_217:
          v128 += 8;
          if (v128 == v129)
          {
            goto LABEL_295;
          }
        }

        v137 = &DefaultOverrideDescriptors[3 * v135];
        v138 = (v131 + 6);
LABEL_227:
        v139 = DefaultOverrideDescriptors[1];
        if (v139)
        {
          v140 = DefaultOverrideDescriptors + (v139 & 0xFFFFFFFFFFFFFFFELL) + 4;
          if (v139)
          {
            if (*v140)
            {
              v140 = *v140;
              v141 = *(&v257 + 8);
              if (!*(&v257 + 1))
              {
                goto LABEL_226;
              }
            }

            else
            {
              v140 = 0;
              v141 = *(&v257 + 8);
              if (!*(&v257 + 1))
              {
                goto LABEL_226;
              }
            }

            goto LABEL_234;
          }
        }

        else
        {
          v140 = 0;
        }

        v141 = *(&v257 + 8);
        if (!*(&v257 + 1))
        {
          goto LABEL_226;
        }

LABEL_234:
        v142 = 0x9DDFEA08EB382D69 * ((8 * (v140 & 0x1FFFFFFF) + 8) ^ HIDWORD(v140));
        v143 = 0x9DDFEA08EB382D69 * (HIDWORD(v140) ^ (v142 >> 47) ^ v142);
        v144 = 0x9DDFEA08EB382D69 * (v143 ^ (v143 >> 47));
        v145 = vcnt_s8(v141);
        v145.i16[0] = vaddlv_u8(v145);
        if (v145.u32[0] > 1uLL)
        {
          v146 = 0x9DDFEA08EB382D69 * (v143 ^ (v143 >> 47));
          if (v144 >= *&v141)
          {
            v146 = v144 % *&v141;
          }
        }

        else
        {
          v146 = v144 & (*&v141 - 1);
        }

        v147 = *(v257 + 8 * v146);
        if (!v147)
        {
          goto LABEL_226;
        }

        v148 = *v147;
        if (!*v147)
        {
          goto LABEL_226;
        }

        v149 = *&v141 - 1;
        while (1)
        {
          v150 = v148[1];
          if (v144 == v150)
          {
            if (v148[2] == v140)
            {
              v151 = *DefaultOverrideDescriptors;
              if (!v151)
              {
                goto LABEL_256;
              }

              v152 = DefaultOverrideDescriptors + (v151 & 0xFFFFFFFFFFFFFFFELL);
              if ((v151 & 1) == 0)
              {
                goto LABEL_257;
              }

              if (*v152)
              {
                v152 = *v152;
              }

              else
              {
LABEL_256:
                v152 = 0;
              }

LABEL_257:
              v153 = 0x9DDFEA08EB382D69 * ((8 * (v152 & 0x1FFFFFFF) + 8) ^ HIDWORD(v152));
              v154 = 0x9DDFEA08EB382D69 * (HIDWORD(v152) ^ (v153 >> 47) ^ v153);
              v155 = 0x9DDFEA08EB382D69 * (v154 ^ (v154 >> 47));
              if (v145.u32[0] > 1uLL)
              {
                v156 = v155;
                if (v155 >= *&v141)
                {
                  v156 = v155 % *&v141;
                  v157 = *(v257 + 8 * (v155 % *&v141));
                  if (v157)
                  {
LABEL_266:
                    while (1)
                    {
                      v157 = *v157;
                      if (!v157)
                      {
                        break;
                      }

                      v158 = v157[1];
                      if (v155 == v158)
                      {
                        if (v157[2] == v152)
                        {
                          goto LABEL_226;
                        }
                      }

                      else
                      {
                        if (v145.u32[0] > 1uLL)
                        {
                          if (v158 >= *&v141)
                          {
                            v158 %= *&v141;
                          }
                        }

                        else
                        {
                          v158 &= v149;
                        }

                        if (v158 != v156)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v157 = *(v257 + 8 * v155);
                  if (v157)
                  {
                    goto LABEL_266;
                  }
                }
              }

              else
              {
                v156 = v155 & v149;
                v157 = *(v257 + 8 * (v155 & v149));
                if (v157)
                {
                  goto LABEL_266;
                }
              }

              if (!v130 || !v152)
              {
                goto LABEL_226;
              }

              v159 = v130;
              v248 = v132;
              if ((*v131 & 0x80000000) == 0)
              {
                v160 = 0;
                v161 = 0;
                goto LABEL_280;
              }

              v239 = v138;
              v243 = DefaultOverrideDescriptors;
              v162 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v130);
              v161 = 0;
              v163 = *v130;
              v164 = (v163 & 0x30000) == 0x20000;
              v165 = (v163 & 0x30000) == 0x10000;
              if ((*v131 & 0x80000000) != 0)
              {
                v237 = v162;
                v166 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v130);
                v165 = (v163 & 0x30000) == 0x10000;
                v167 = *v130;
                v168 = v166 + 4 * ((v167 >> 29) & 1);
                v162 = v237;
                v164 = (v163 & 0x30000) == 0x20000;
                v161 = *(v168 + 4 * ((v167 & 0x30000) == 0x20000) + 12 * ((v167 & 0x30000) == 0x10000) + 4);
              }

              v160 = v162 + 4 * ((v163 >> 29) & 1) + 4 * v164 + 12 * v165 + ((v163 >> 28) & 8);
              v129 = v241;
              DefaultOverrideDescriptors = v243;
              v132 = v248;
              v138 = v239;
              if (v160 > v152)
              {
LABEL_357:
                swift::fatalError(0, "resilient vtable at %p contains out-of-bounds method descriptor %p\n", v138, v136, v132, v152);
              }

LABEL_280:
              if (v160 + 8 * v161 <= v152)
              {
                goto LABEL_357;
              }

              if ((*v131 & 0x80000000) != 0)
              {
                v244 = DefaultOverrideDescriptors;
                v171 = v138;
                v172 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v130);
                v138 = v171;
                v159 = v130;
                v173 = v172;
                v129 = v241;
                DefaultOverrideDescriptors = v244;
                v169 = (v173 + 4 * ((*v130 >> 29) & 1) + 4 * ((*v130 & 0x30000) == 0x20000) + 12 * ((*v130 & 0x30000) == 0x10000));
                if ((*v131 & 0x20000000) != 0)
                {
                  goto LABEL_285;
                }

LABEL_283:
                v170 = *v169;
              }

              else
              {
                v169 = 0;
                if ((*v131 & 0x20000000) == 0)
                {
                  goto LABEL_283;
                }

LABEL_285:
                v174 = *v138;
                if (v174)
                {
                  v175 = &v138[v174];
                }

                else
                {
                  v175 = 0;
                }

                v176 = atomic_load_explicit(v175, memory_order_acquire);
                if (!v176)
                {
                  v177 = DefaultOverrideDescriptors;
                  v178 = v159;
                  v179 = v138;
                  computeMetadataBoundsFromSuperclass(v178, v175);
                  v138 = v179;
                  DefaultOverrideDescriptors = v177;
                  v129 = v241;
                  v176 = v180;
                }

                v170 = *v169 + (v176 >> 3);
              }

              v181 = DefaultOverrideDescriptors[2];
              v182 = (v251 + 8 * v170 + v152 - v160);
              if (v181)
              {
                v183 = DefaultOverrideDescriptors + v181 + 8;
              }

              else
              {
                v183 = 0;
              }

              v132 = v248;
              *v182 = v183;
LABEL_226:
              DefaultOverrideDescriptors += 3;
              if (DefaultOverrideDescriptors == v137)
              {
                goto LABEL_217;
              }

              goto LABEL_227;
            }
          }

          else
          {
            if (v145.u32[0] > 1uLL)
            {
              if (v150 >= *&v141)
              {
                v150 %= *&v141;
              }
            }

            else
            {
              v150 &= v149;
            }

            if (v150 != v146)
            {
              goto LABEL_226;
            }
          }

          v148 = *v148;
          if (!v148)
          {
            goto LABEL_226;
          }
        }
      }

LABEL_295:
      v184 = v258;
      if (v258)
      {
        do
        {
          v185 = *v184;
          operator delete(v184);
          v184 = v185;
        }

        while (v185);
      }

      v186 = v257;
      *&v257 = 0;
      v6 = v251;
      if (v186)
      {
        operator delete(v186);
      }
    }
  }

  initClassFieldOffsetVector(v6, a3, a4, a5);
  if (v6[8])
  {
    v187 = v6[8];
  }

  else
  {
    v187 = 0;
  }

  v188 = *v187;
  if ((*v187 & 0x80) == 0)
  {
    v190 = a4;
    v189 = a5;
    v191 = a3;
    if (a3)
    {
      v192 = v6[4] & 0x7FFFFFFFF8;
      v193 = *(v192 + 0x30);
      if (v193)
      {
        v194 = 0;
        v195 = 0;
        v196 = 0;
        v197 = (32 * a3) | 8;
        do
        {
          v198 = *(v190 + 8 * v194);
          v199 = &v193[32 * v194];
          v202 = *(v199 + 1);
          v200 = (v199 + 8);
          v201 = v202;
          if (v202)
          {
            v203 = *(v189 + 8 * v194);
            if (*v201 != v203)
            {
              *v201 = v203;
            }
          }

          v204 = *v198;
          if (*v198 != *(v200 + 28))
          {
            if ((v196 & 1) == 0)
            {
              v193 = swift::MetadataAllocator::Allocate(&getResilientMetadataAllocator(void)::allocator, v197, 4uLL);
              memcpy(v193, *(v192 + 48), v197);
              v190 = a4;
              v189 = a5;
              v191 = a3;
              *(v192 + 48) = v193;
              v200 = &v193[32 * v194 + 8];
              v204 = *v198;
            }

            *(v200 + 28) = v204;
            *(v200 + 16) = 0;
            v205 = -1;
            do
            {
              ++v205;
            }

            while (*(v198 + 16) + 1 != 1 << v205);
            *(v200 + 24) = v205;
            v196 = 1;
          }

          v194 = ++v195;
        }

        while (v195 != v191);
        v188 = *v187;
        v6 = v251;
      }
    }

    if (v188 & 0x20000000) != 0 && (v187[7])
    {
      v229 = v187 ? v187 : 0;
      v230 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v229);
      v231 = *v230;
      if (v231)
      {
        if ((v230 + v231))
        {
          _objc_realizeClassFromSwift(v6, v230 + v231);
          goto LABEL_345;
        }
      }
    }

LABEL_344:
    swift_instantiateObjCClass(v6);
    goto LABEL_345;
  }

  if (qword_1ED426160 != -1)
  {
    _swift_initClassMetadataImpl();
  }

  if (supportsLazyObjcClassNames(void)::$_0::operator() const(void)::TheLazy == 1)
  {
    *((v6[4] & 0x7FFFFFFFF8) + 0x18) = 0;
    v206 = *(object_getClass(v6) + 4) & 0x7FFFFFFFF8;
    *(v206 + 16) = v6;
    *(v206 + 24) = 0;
    v207 = v6[4];
  }

  else
  {
    v208 = object_getClass(v6);
    v209 = copyGenericClassObjCName(v6);
    v207 = v6[4];
    *((v207 & 0x7FFFFFFFF8) + 0x18) = v209;
    *((*(v208 + 4) & 0x7FFFFFFFF8) + 0x18) = v209;
  }

  v259 = 0u;
  v260 = 0u;
  v257 = 0u;
  v258 = 0u;
  if (!a3)
  {
    goto LABEL_344;
  }

  v210 = v207 & 0x7FFFFFFFF8;
  v211 = *((v207 & 0x7FFFFFFFF8) + 0x30);
  v212 = swift::MetadataAllocator::Allocate(&getResilientMetadataAllocator(void)::allocator, (32 * a3) | 8, 4uLL);
  memcpy(v212, v211, (32 * a3) | 8);
  v213 = a3;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  *(v210 + 48) = v212;
  v217 = v212 + 8;
  v219 = a4;
  v218 = a5;
  do
  {
    v220 = *(v219 + 8 * v214);
    v221 = &v217[32 * v214];
    v222 = *v221;
    if (*v221)
    {
      if (!v216)
      {
        if (v213 > 8)
        {
          v223 = malloc_type_calloc(v213, 8uLL, 0x10040436913F5uLL);
          v213 = a3;
          v216 = v223;
        }

        else
        {
          v216 = &v257;
          bzero(&v257, 8 * a3);
          v213 = a3;
        }

        v219 = a4;
        v218 = a5;
      }

      *(v216 + v214) = v222;
    }

    *v221 = v218 + 8 * v214;
    if (*v220 != *(v221 + 7))
    {
      *(v221 + 7) = *v220;
      *(v221 + 2) = 0;
      v224 = -1;
      do
      {
        ++v224;
      }

      while (*(v220 + 16) + 1 != 1 << v224);
      *(v221 + 6) = v224;
    }

    v214 = ++v215;
  }

  while (v215 != v213);
  swift_instantiateObjCClass(v251);
  if (v216)
  {
    v225 = 0;
    do
    {
      v226 = *(v216 + v225);
      if (v226)
      {
        v227 = *(a5 + 8 * v225);
        if (*v226 != v227)
        {
          *v226 = v227;
        }
      }

      ++v225;
    }

    while (a3 != v225);
    if (v216 != &v257)
    {
      free(v216);
    }
  }

LABEL_345:
  result = 0;
LABEL_346:
  if (v254 != v256)
  {
    v228 = result;
    free(v254);
    return v228;
  }

  return result;
}

uint64_t _swift_updateClassMetadataImpl(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 255;
  }

  if (a5)
  {
    v10 = 257;
  }

  else
  {
    v10 = 255;
  }

  result = getSuperclassMetadata(v10, a1);
  if (result)
  {
    v13 = v9 >= v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    previously = a1;
    initClassFieldOffsetVector(a1, a2, a3, a4);
    if (a2)
    {
      v14 = *(a1 + 4) & 0x7FFFFFFFF8;
      v15 = *(v14 + 0x30);
      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = *(a3 + 8 * v16);
          v20 = &v15[32 * v16];
          v23 = *(v20 + 1);
          v21 = (v20 + 8);
          v22 = v23;
          if (v23)
          {
            v24 = *(a4 + 8 * v16);
            if (*v22 != v24)
            {
              *v22 = v24;
            }
          }

          v25 = *v19;
          if (*v19 != *(v21 + 28))
          {
            if ((v18 & 1) == 0)
            {
              v15 = swift::MetadataAllocator::Allocate(&getResilientMetadataAllocator(void)::allocator, (32 * a2) | 8, 4uLL);
              memcpy(v15, *(v14 + 48), (32 * a2) | 8);
              *(v14 + 48) = v15;
              v21 = &v15[32 * v16 + 8];
              v25 = *v19;
            }

            *(v21 + 28) = v25;
            *(v21 + 16) = 0;
            v26 = -1;
            do
            {
              ++v26;
            }

            while (*(v19 + 16) + 1 != 1 << v26);
            *(v21 + 24) = v26;
            v18 = 1;
          }

          v16 = ++v17;
        }

        while (v17 != a2);
      }
    }

    _objc_realizeClassFromSwift(previously, previously);
    return 0;
  }

  return result;
}

objc_class *swift_updatePureObjCClassMetadata(objc_class *cls, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = cls;
  v5 = *(cls + 4);
  v6 = v5 & 0xFFFFFFFFFFFFFFFDLL;
  v7 = *((v5 & 0xFFFFFFFFFFFFFFFDLL) + 0x30);
  if (v7)
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFFFDLL) + 4);
    if (a3)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = &v7[32 * v11];
        v17 = *(v14 + 1);
        v15 = (v14 + 8);
        v16 = v17;
        if (v17)
        {
          v18 = *(a4 + 8 * v11);
          if (*v16)
          {
            v19 = *v18;
            v20 = (v9 + *(v18 + 16)) & ~*(v18 + 16);
            v9 = v20 + *v18;
LABEL_11:
            if (*v16 != v20)
            {
              *v16 = v20;
              v19 = *v18;
            }

            goto LABEL_13;
          }
        }

        else
        {
          v18 = *(a4 + 8 * v11);
        }

        v19 = *v18;
        if (*v18)
        {
          v20 = (v9 + *(v18 + 16)) & ~*(v18 + 16);
          v9 = v20 + v19;
          if (v16)
          {
            goto LABEL_11;
          }
        }

LABEL_13:
        if (v19 != *(v15 + 28))
        {
          if ((v13 & 1) == 0)
          {
            v7 = swift::MetadataAllocator::Allocate(&getResilientMetadataAllocator(void)::allocator, (32 * a3) | 8, 4uLL);
            memcpy(v7, *(v6 + 48), (32 * a3) | 8);
            *(v6 + 48) = v7;
            v15 = &v7[32 * v11 + 8];
            v19 = *v18;
          }

          *(v15 + 28) = v19;
          *(v15 + 16) = 0;
          v21 = -1;
          do
          {
            ++v21;
          }

          while (*(v18 + 16) + 1 != 1 << v21);
          *(v15 + 24) = v21;
          v13 = 1;
        }

        v11 = ++v12;
      }

      while (v12 != a3);
    }

    v4 = cls;
    if (v9 != *(v6 + 8))
    {
      *(v6 + 8) = v9;
    }
  }

  _objc_realizeClassFromSwift(v4, v4);
  return v4;
}

uint64_t swift_lookUpClassMethod(uint64_t a1, _DWORD *a2, int *a3)
{
  if (a3)
  {
    v4 = a3;
    if (!a2)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_3;
    }
  }

  v5 = a2;
LABEL_6:
  v6 = *v4;
  if (*v4 < 0)
  {
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    v7 = (swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v9) + 4 * ((*v9 >> 29) & 1) + 4 * ((*v9 & 0x30000) == 0x20000) + 12 * ((*v9 & 0x30000) == 0x10000));
    v6 = *v4;
    if (*v4 < 0)
    {
      if (v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = 0;
      }

      v8 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v10) + 4 * ((*v10 >> 29) & 1) + 4 * ((*v10 & 0x30000) == 0x20000) + 12 * ((*v10 & 0x30000) == 0x10000) + ((*v10 >> 28) & 8);
      v6 = *v4;
      if (*v4 < 0)
      {
        if (v4)
        {
          v11 = v4;
        }

        else
        {
          v11 = 0;
        }

        swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v11);
        v6 = *v4;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if ((v6 & 0x20000000) != 0)
  {
    v13 = v4[6];
    if (v13)
    {
      v14 = (v4 + v13 + 24);
    }

    else
    {
      v14 = 0;
    }

    explicit = atomic_load_explicit(v14, memory_order_acquire);
    if (!explicit)
    {
      computeMetadataBoundsFromSuperclass(v4, v14);
      explicit = v16;
    }

    v12 = *v7 + (explicit >> 3);
  }

  else
  {
    v12 = *v7;
  }

  v17 = a1 + 8 * (v12 + ((v5 - v8) >> 3));
  v18 = (*v5 >> 6) & 1;
  if ((*v5 & 0xE) == 4)
  {
    v18 = 0;
  }

  if ((*v5 & 0x4E) == 0x44 || v18)
  {
    return *v17;
  }

  else
  {
    return *v17;
  }
}

char *swift_getMetatypeMetadata(unint64_t a1)
{
  v63 = a1;
  explicit = atomic_load_explicit(&qword_1ED4261A0, memory_order_acquire);
  if (explicit && *(explicit + 3) == v63)
  {
    goto LABEL_104;
  }

  atomic_fetch_add_explicit(&MetatypeTypes, 1u, memory_order_acquire);
  do
  {
    v2 = atomic_load_explicit(&qword_1ED426180, memory_order_acquire);
    v3 = atomic_load_explicit(&qword_1ED426188, memory_order_acquire);
    v4 = atomic_load_explicit(&dword_1ED42617C, memory_order_acquire);
  }

  while (v2 != atomic_load_explicit(&qword_1ED426180, memory_order_acquire));
  if (v2)
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
      qword_1ED4261A0 = *v7;
      explicit = *v7;
      atomic_fetch_add_explicit(&MetatypeTypes, 0xFFFFFFFF, memory_order_release);
      goto LABEL_104;
    }
  }

  atomic_fetch_add_explicit(&MetatypeTypes, 0xFFFFFFFF, memory_order_release);
  v64 = v63;
  os_unfair_lock_lock(&unk_1ED426190);
  v8 = qword_1ED426188;
  v9 = qword_1ED426188 & 3;
  v10 = v9 == 0;
  if ((qword_1ED426188 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v10 = 1;
  }

  v62 = v10;
  if (v10)
  {
    v11 = 4;
  }

  else
  {
    v11 = *(qword_1ED426188 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v12 = dword_1ED42617C;
  v13 = qword_1ED426180;
  v14 = (qword_1ED426180 + 8);
  if (qword_1ED426180)
  {
    v15 = qword_1ED426180 + 8;
  }

  else
  {
    v15 = 0;
  }

  if (!v16)
  {
    v60 = v15;
    v61 = v8;
    v20 = (v12 + 1);
    if ((1 << v11) / ((1 << v11) - v20) < 4)
    {
      v28 = v8;
      v29 = v17;
      if (!v13)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v21 = (v11 + 1);
      v59 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      if (v21 >= 0x11)
      {
        v22 = 4;
      }

      else
      {
        v22 = 2;
      }

      if (v21 < 9)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v24 = malloc_type_calloc(2 << v11, v23, 0x48DDA4AEuLL);
      if (!v24)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v25 = v15;
      v26 = v8;
      v27 = v11;
      v57 = v12;
      v58 = (v12 + 1);
      if (v23 != 1)
      {
        if (v23 == 4)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }
      }

      v28 = v23 | v24;
      *v24 = v11 + 1;
      if (v11)
      {
        v30 = v8 & 3;
        if (v9)
        {
          v31 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v31 = 0;
        }

        v32 = v28 & 3;
        if ((v28 & 3) != 0)
        {
          v33 = v24 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v33 = 0;
        }

        v34 = 1;
        p_cache = (__SwiftNativeNSArrayBase + 16);
        do
        {
          if ((v61 & 3u) > 1)
          {
            if (v30 == 2)
            {
              LODWORD(v36) = *(v31 + 2 * v34);
              if (*(v31 + 2 * v34))
              {
                goto LABEL_61;
              }
            }

            else
            {
              LODWORD(v36) = *(v31 + 4 * v34);
              if (v36)
              {
LABEL_61:
                v37 = *(*(v25 + 8 * (v36 - 1)) + 24);
                {
                  v56 = v31;
                  getCache();
                  p_cache = __SwiftNativeNSArrayBase.cache;
                  v31 = v56;
                  v27 = v11;
                  v25 = v60;
                  v26 = v61;
                }

                v38 = 0x9DDFEA08EB382D69 * ((p_cache[400] + 8 * v37) ^ HIDWORD(v37));
                v39 = 0x9DDFEA08EB382D69 * (HIDWORD(v37) ^ (v38 >> 47) ^ v38);
                for (i = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47)); ; i = v42 + 1)
                {
                  v42 = i & ~(-2 << v11);
                  if (v42)
                  {
                    if ((v28 & 3) > 1)
                    {
                      LODWORD(v41) = v32 == 2 ? *(v33 + 2 * v42) : *(v33 + 4 * v42);
                    }

                    else if ((v28 & 3) != 0)
                    {
                      LODWORD(v41) = *(v33 + v42);
                    }

                    else
                    {
                      v41 = (v28 >> (4 * v42)) & 0xF;
                    }

                    if (!v41)
                    {
                      break;
                    }
                  }
                }

                if (v32 == 3)
                {
                  *(v33 + 4 * v42) = v36;
                }

                else if (v32 == 2)
                {
                  *(v33 + 2 * v42) = v36;
                }

                else
                {
                  *(v33 + v42) = v36;
                }
              }
            }
          }

          else if (v30)
          {
            LODWORD(v36) = *(v31 + v34);
            if (*(v31 + v34))
            {
              goto LABEL_61;
            }
          }

          else
          {
            v36 = (v26 >> (4 * v34)) & 0xF;
            if (v36)
            {
              goto LABEL_61;
            }
          }

          ++v34;
        }

        while (!(v34 >> v27));
      }

      atomic_store(v28, &qword_1ED426188);
      if (!v62)
      {
        v43 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v25 = v60;
        *v43 = qword_1ED426198;
        v43[1] = v59;
        qword_1ED426198 = v43;
      }

      v12 = v57;
      v20 = v58;
      v14 = v13 + 2;
      v29 = v44;
      if (!v13)
      {
        goto LABEL_82;
      }
    }

    v45 = v13;
    if (v12 < *v13)
    {
LABEL_88:
      v65 = 4;
      explicit = swift::MetadataAllocator::Allocate(&v65, 0x20uLL, 8uLL);
      v50 = v63;
      *(explicit + 2) = 772;
      *(explicit + 1) = value witness table for Builtin.NativeObject.Type;
      *(explicit + 3) = v50;
      *(v45 + 8 + 8 * v12) = explicit;
      atomic_store(v20, &dword_1ED42617C);
      if ((v28 & 3) > 1)
      {
        if ((v28 & 3) == 2)
        {
          v51 = v28 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v28 & 3) == 0)
          {
            v51 = 0;
          }

          atomic_store(v20, (v51 + 2 * v29));
        }

        else
        {
          v52 = v28 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v28 & 3) == 0)
          {
            v52 = 0;
          }

          atomic_store(v20, (v52 + 4 * v29));
        }
      }

      else if ((v28 & 3) != 0)
      {
        atomic_store(v20, ((v28 & 0xFFFFFFFFFFFFFFFCLL) + v29));
      }

      else
      {
        atomic_store((v20 << (4 * v29)) | v28, &qword_1ED426188);
      }

      __dmb(0xBu);
      if (MetatypeTypes)
      {
        goto LABEL_103;
      }

      v53 = qword_1ED426198;
      if (qword_1ED426198)
      {
        do
        {
          v54 = *v53;
          free(v53[1]);
          free(v53);
          v53 = v54;
        }

        while (v54);
      }

      goto LABEL_102;
    }

LABEL_82:
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
      *v49 = qword_1ED426198;
      v49[1] = v13;
      qword_1ED426198 = v49;
    }

    atomic_store(v45, &qword_1ED426180);
    goto LABEL_88;
  }

  explicit = *v16;
  __dmb(0xBu);
  if (!MetatypeTypes)
  {
    v18 = qword_1ED426198;
    if (qword_1ED426198)
    {
      do
      {
        v19 = *v18;
        free(v18[1]);
        free(v18);
        v18 = v19;
      }

      while (v19);
    }

LABEL_102:
    qword_1ED426198 = 0;
  }

LABEL_103:
  os_unfair_lock_unlock(&unk_1ED426190);
  qword_1ED4261A0 = explicit;
LABEL_104:
  if (explicit)
  {
    return explicit + 16;
  }

  else
  {
    return 0;
  }
}