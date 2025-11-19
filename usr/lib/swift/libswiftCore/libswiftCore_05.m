unint64_t swift_getExistentialMetatypeMetadata(unint64_t a1)
{
  v70 = a1;
  explicit = atomic_load_explicit(&qword_1ED4261D0, memory_order_acquire);
  if (explicit && *(explicit + 24) == v70)
  {
    goto LABEL_114;
  }

  atomic_fetch_add_explicit(&ExistentialMetatypes, 1u, memory_order_acquire);
  do
  {
    v2 = atomic_load_explicit(&qword_1ED4261B0, memory_order_acquire);
    v3 = atomic_load_explicit(&qword_1ED4261B8, memory_order_acquire);
    v4 = atomic_load_explicit(&dword_1ED4261AC, memory_order_acquire);
  }

  while (v2 != atomic_load_explicit(&qword_1ED4261B0, memory_order_acquire));
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
      qword_1ED4261D0 = *v7;
      explicit = *v7;
      atomic_fetch_add_explicit(&ExistentialMetatypes, 0xFFFFFFFF, memory_order_release);
      goto LABEL_114;
    }
  }

  atomic_fetch_add_explicit(&ExistentialMetatypes, 0xFFFFFFFF, memory_order_release);
  v71 = v70;
  os_unfair_lock_lock(&unk_1ED4261C0);
  v8 = qword_1ED4261B8;
  v9 = qword_1ED4261B8 & 3;
  v10 = (qword_1ED4261B8 & 0xFFFFFFFFFFFFFFFCLL) == 0 || (qword_1ED4261B8 & 3) == 0;
  if (v10)
  {
    v11 = 4;
  }

  else
  {
    v11 = *(qword_1ED4261B8 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v12 = dword_1ED4261AC;
  v13 = qword_1ED4261B0;
  v14 = (qword_1ED4261B0 + 8);
  if (qword_1ED4261B0)
  {
    v15 = qword_1ED4261B0 + 8;
  }

  else
  {
    v15 = 0;
  }

  if (!v16)
  {
    v67 = v10;
    v68 = v15;
    v69 = v8;
    v20 = (v12 + 1);
    if ((1 << v11) / ((1 << v11) - v20) < 4)
    {
      v28 = v8;
      v29 = v17;
      if (v13)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v21 = (v11 + 1);
      v66 = v8 & 0xFFFFFFFFFFFFFFFCLL;
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
      v64 = v13 + 2;
      v65 = v13;
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
          if ((v69 & 3u) > 1)
          {
            if (v30 == 2)
            {
              LODWORD(v36) = *(v31 + 2 * v34);
              if (*(v31 + 2 * v34))
              {
                goto LABEL_62;
              }
            }

            else
            {
              LODWORD(v36) = *(v31 + 4 * v34);
              if (v36)
              {
LABEL_62:
                v37 = *(*(v25 + 8 * (v36 - 1)) + 24);
                {
                  v63 = v31;
                  getCache();
                  p_cache = __SwiftNativeNSArrayBase.cache;
                  v31 = v63;
                  v27 = v11;
                  v25 = v68;
                  v26 = v69;
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
              goto LABEL_62;
            }
          }

          else
          {
            v36 = (v26 >> (4 * v34)) & 0xF;
            if (v36)
            {
              goto LABEL_62;
            }
          }

          ++v34;
        }

        while (!(v34 >> v27));
      }

      atomic_store(v28, &qword_1ED4261B8);
      if (!v67)
      {
        v43 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v25 = v68;
        *v43 = qword_1ED4261C8;
        v43[1] = v66;
        qword_1ED4261C8 = v43;
      }

      v20 = (v12 + 1);
      v14 = v64;
      v13 = v65;
      v29 = v44;
      if (v65)
      {
LABEL_82:
        v45 = v13;
        if (v12 < *v13)
        {
          goto LABEL_89;
        }
      }
    }

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
      *v49 = qword_1ED4261C8;
      v49[1] = v13;
      qword_1ED4261C8 = v49;
    }

    atomic_store(v45, &qword_1ED4261B0);
LABEL_89:
    v72 = 6;
    v50 = 1;
    v51 = swift::MetadataAllocator::Allocate(&v72, 0x28uLL, 8uLL);
    explicit = v51;
    v52 = v70;
    *(v51 + 2) = 0;
    *(v51 + 8) = 0;
    v53 = *v52;
    if (*v52 > 0x7FF)
    {
      LODWORD(v53) = 0;
    }

    if (v53 != 771)
    {
      v54 = 0;
      if (v53 != 774)
      {
LABEL_95:
        v55 = v45 + 8;
        *(v51 + 2) = 774;
        ExistentialMetatypeValueWitnesses = getExistentialMetatypeValueWitnesses(v54 & 0xFFFFFF);
        if (ExistentialMetatypeValueWitnesses)
        {
          v57 = ExistentialMetatypeValueWitnesses;
        }

        else
        {
          v57 = 0;
        }

        *(explicit + 8) = v57;
        *(explicit + 24) = v52;
        *(explicit + 32) = v54;
        *(v55 + 8 * v12) = explicit;
        atomic_store(v20, &dword_1ED4261AC);
        if ((v28 & 3) > 1)
        {
          if ((v28 & 3) == 2)
          {
            v58 = v28 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v28 & 3) == 0)
            {
              v58 = 0;
            }

            atomic_store(v20, (v58 + 2 * v29));
          }

          else
          {
            v59 = v28 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v28 & 3) == 0)
            {
              v59 = 0;
            }

            atomic_store(v20, (v59 + 4 * v29));
          }
        }

        else if ((v28 & 3) != 0)
        {
          atomic_store(v20, ((v28 & 0xFFFFFFFFFFFFFFFCLL) + v29));
        }

        else
        {
          atomic_store((v20 << (4 * v29)) | v28, &qword_1ED4261B8);
        }

        __dmb(0xBu);
        if (ExistentialMetatypes)
        {
          goto LABEL_113;
        }

        v60 = qword_1ED4261C8;
        if (qword_1ED4261C8)
        {
          do
          {
            v61 = *v60;
            free(v60[1]);
            free(v60);
            v60 = v61;
          }

          while (v61);
        }

        goto LABEL_112;
      }

      v50 = 2;
    }

    v54 = v52[v50];
    goto LABEL_95;
  }

  explicit = *v16;
  __dmb(0xBu);
  if (!ExistentialMetatypes)
  {
    v18 = qword_1ED4261C8;
    if (qword_1ED4261C8)
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

LABEL_112:
    qword_1ED4261C8 = 0;
  }

LABEL_113:
  os_unfair_lock_unlock(&unk_1ED4261C0);
  qword_1ED4261D0 = explicit;
LABEL_114:
  if (explicit)
  {
    return explicit + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t swift::TargetExistentialTypeMetadata<swift::InProcess>::getRepresentation(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 & 0x3F000000;
  v3 = v1 >= 0;
  if (v2 == 0x1000000)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

uint64_t swift::TargetExistentialTypeMetadata<swift::InProcess>::mayTakeValue(uint64_t a1, swift::SwiftError **a2)
{
  v2 = *(a1 + 8);
  v3 = v2 & 0x3F000000;
  v4 = v2 >= 0;
  if (v3 == 0x1000000)
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    return swift::SwiftError::isPureNSError(*a2, a2);
  }

  if (v4 == 1)
  {
    return 1;
  }

  return swift::TargetOpaqueExistentialContainer<swift::InProcess>::isValueInline(a2);
}

void swift::TargetExistentialTypeMetadata<swift::InProcess>::deinitExistentialContainer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 < 0 && (v2 & 0x3F000000) != 0x1000000)
  {
    swift::TargetOpaqueExistentialContainer<swift::InProcess>::deinit(a2);
  }
}

swift::SwiftError **swift::TargetExistentialTypeMetadata<swift::InProcess>::projectValue(uint64_t a1, swift::SwiftError **a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = v3 & 0x3F000000;
  v5 = v3 >= 0;
  if (v4 == 0x1000000)
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    v7 = *a2;
    if (!swift::SwiftError::isPureNSError(*a2, a2))
    {
      return ((v7 + *(*(*(v7 + 5) - 8) + 80) + 72) & ~*(*(*(v7 + 5) - 8) + 80));
    }

    return v2;
  }

  if (v5 == 1)
  {
    return v2;
  }

  return swift::TargetOpaqueExistentialContainer<swift::InProcess>::projectValue(a2);
}

unint64_t swift::TargetExistentialTypeMetadata<swift::InProcess>::getDynamicType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 & 0x3F000000;
  v4 = v2 >= 0;
  if (v3 == 0x1000000)
  {
    v4 = 2;
  }

  if (!v4)
  {
    return *(a2 + 24);
  }

  if (v4 == 2)
  {
    return swift::SwiftError::getType(*a2, a2);
  }

  return swift_getObjectType(*a2);
}

unint64_t swift::TargetExistentialTypeMetadata<swift::InProcess>::getWitnessTable(uint64_t a1, swift::SwiftError **a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  v4 = v3 & 0x3F000000;
  v5 = v3 >= 0;
  if (v4 == 0x1000000)
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    return swift::SwiftError::getErrorConformance(*a2, a2);
  }

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  return *(&a2[v6] + a3);
}

char *swift::_getSimpleProtocolTypeMetadata(_DWORD *a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v5[1] = v1;
  v5[2] = v2;
  v5[0] = v3;
  return swift_getExistentialTypeMetadata(HIWORD(*a1) & 1, 0, 1, v5);
}

char *swift_getExistentialTypeMetadata(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v124[2] = *MEMORY[0x1E69E9840];
  if (a2 || a3)
  {
    *&v119 = a2;
    *(&v119 + 1) = a1 | (2 * a3);
    v120 = a4;
    explicit = atomic_load_explicit(&qword_1ED426200, memory_order_acquire);
    if (explicit)
    {
      v7 = *(explicit + 4);
      if (((((v7 & 0x80000000) != 0) ^ DWORD2(v119)) & 1) == 0)
      {
        if ((v7 & 0x40000000) != 0)
        {
          if (v119 != *(explicit + 3))
          {
            goto LABEL_18;
          }
        }

        else if (v119)
        {
          goto LABEL_18;
        }

        v8 = DWORD2(v119) >> 1;
        if (DWORD2(v119) >> 1 == *(explicit + 5))
        {
          if (DWORD2(v119) < 2)
          {
            goto LABEL_157;
          }

          v9 = v120;
          v10 = 8 * ((v7 >> 30) & 1) + 24;
          while (1)
          {
            v11 = *v9++;
            if (v11 != *&explicit[v10])
            {
              break;
            }

            v10 += 8;
            if (!--v8)
            {
              goto LABEL_157;
            }
          }
        }
      }
    }

LABEL_18:
    atomic_fetch_add_explicit(&ExistentialTypes, 1u, memory_order_acquire);
    do
    {
      v12 = atomic_load_explicit(&qword_1ED4261E0, memory_order_acquire);
      v13 = atomic_load_explicit(&qword_1ED4261E8, memory_order_acquire);
      v14 = atomic_load_explicit(&dword_1ED4261DC, memory_order_acquire);
    }

    while (v12 != atomic_load_explicit(&qword_1ED4261E0, memory_order_acquire));
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15 && v14 != 0)
    {
      if (v17)
      {
        qword_1ED426200 = *v17;
        explicit = *v17;
        atomic_fetch_add_explicit(&ExistentialTypes, 0xFFFFFFFF, memory_order_release);
        goto LABEL_157;
      }
    }

    atomic_fetch_add_explicit(&ExistentialTypes, 0xFFFFFFFF, memory_order_release);
    v121 = v119;
    v122 = v120;
    os_unfair_lock_lock(&unk_1ED4261F0);
    v18 = qword_1ED4261E8;
    v19 = qword_1ED4261E8 & 3;
    v20 = (qword_1ED4261E8 & 0xFFFFFFFFFFFFFFFCLL) == 0 || (qword_1ED4261E8 & 3) == 0;
    if (v20)
    {
      v21 = 4;
    }

    else
    {
      v21 = *(qword_1ED4261E8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v22 = dword_1ED4261DC;
    v23 = qword_1ED4261E0;
    v24 = (qword_1ED4261E0 + 8);
    if (qword_1ED4261E0)
    {
      v25 = qword_1ED4261E0 + 8;
    }

    else
    {
      v25 = 0;
    }

    if (v26)
    {
      explicit = *v26;
      __dmb(0xBu);
      if (ExistentialTypes)
      {
LABEL_156:
        os_unfair_lock_unlock(&unk_1ED4261F0);
        qword_1ED426200 = explicit;
LABEL_157:
        if (explicit)
        {
          return explicit + 8;
        }

        else
        {
          return 0;
        }
      }

      v28 = qword_1ED4261F8;
      if (qword_1ED4261F8)
      {
        do
        {
          v29 = *v28;
          free(v28[1]);
          free(v28);
          v28 = v29;
        }

        while (v29);
      }

LABEL_155:
      qword_1ED4261F8 = 0;
      goto LABEL_156;
    }

    v116 = v25;
    v111 = (v22 + 1);
    v112 = v22;
    if ((1 << v21) / ((1 << v21) - v111) < 4)
    {
      v118 = v18;
      v117 = v27;
      if (v23)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v30 = (v21 + 1);
      v115 = v21;
      if (v30 >= 0x11)
      {
        v31 = 4;
      }

      else
      {
        v31 = 2;
      }

      if (v30 < 9)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31;
      }

      v33 = malloc_type_calloc(2 << v21, v32, 0x48DDA4AEuLL);
      if (!v33)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v35 = v21;
      v34 = v25;
      v108 = v23 + 2;
      v109 = v23;
      v110 = v18 & 0xFFFFFFFFFFFFFFFCLL;
      v113 = v18;
      v107 = v20;
      if (v32 != 1)
      {
        if (v32 == 4)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }
      }

      v36 = v32 | v33;
      *v33 = v21 + 1;
      v118 = v32 | v33;
      if (v21)
      {
        v37 = ~(-2 << v21);
        v38 = v113 & 3;
        if (v19)
        {
          v39 = v110;
        }

        else
        {
          v39 = 0;
        }

        v40 = v36 & 3;
        if ((v36 & 3) != 0)
        {
          v41 = v33 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v41 = 0;
        }

        v42 = 1;
        p_cache = (__SwiftNativeNSArrayBase + 16);
        v114 = v39;
        do
        {
          if (v38 > 1)
          {
            if (v38 == 2)
            {
              LODWORD(v44) = *(v39 + 2 * v42);
              if (*(v39 + 2 * v42))
              {
                goto LABEL_77;
              }
            }

            else
            {
              LODWORD(v44) = *(v39 + 4 * v42);
              if (v44)
              {
LABEL_77:
                v45 = *(v34 + 8 * (v44 - 1));
                v46 = *(v45 + 16);
                if ((v46 & 0x40000000) != 0)
                {
                  v47 = *(v45 + 24);
                }

                else
                {
                  v47 = 0;
                }

                v48 = *(v45 + 20);
                memset(v124, 0, 13);
                {
                  p_cache = __SwiftNativeNSArrayBase.cache;
                  v39 = v114;
                  v38 = v113 & 3;
                  v35 = v115;
                  v34 = v116;
                  v36 = v118;
                }

                v49 = __PAIR64__(v48, v46) >> 31;
                v50 = v49 >> 1;
                v51 = p_cache[400];
                HIDWORD(v124[0]) = HIDWORD(v47);
                LOBYTE(v124[1]) = v49 & 1;
                *(&v124[1] + 1) = v49 >> 1;
                v52 = __ROR8__(*(v124 + 5) + 13, 13);
                v53 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v52 ^ ((0x9DDFEA08EB382D69 * (v51 ^ v47 ^ v52)) >> 47) ^ (0x9DDFEA08EB382D69 * (v51 ^ v47 ^ v52)))) ^ ((0x9DDFEA08EB382D69 * (v52 ^ ((0x9DDFEA08EB382D69 * (v51 ^ v47 ^ v52)) >> 47) ^ (0x9DDFEA08EB382D69 * (v51 ^ v47 ^ v52)))) >> 47))) ^ *(v124 + 5);
                v124[0] = v53;
                if (v49 >= 2)
                {
                  v54 = (v45 + 8 * ((v46 >> 30) & 1) + 24);
                  do
                  {
                    v55 = *v54++;
                    v123 = v55;
                    v53 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(v124, &v123);
                    v124[0] = v53;
                    --v50;
                  }

                  while (v50);
                  v34 = v116;
                  v36 = v118;
                  v35 = v115;
                  v38 = v113 & 3;
                  v39 = v114;
                  p_cache = (__SwiftNativeNSArrayBase + 16);
                }

                while (1)
                {
                  v57 = v53 & v37;
                  if ((v53 & v37) != 0)
                  {
                    if (v40 > 1)
                    {
                      LODWORD(v56) = v40 == 2 ? *(v41 + 2 * v57) : *(v41 + 4 * v57);
                    }

                    else if (v40)
                    {
                      LODWORD(v56) = *(v41 + v57);
                    }

                    else
                    {
                      v56 = (v36 >> (4 * v57)) & 0xF;
                    }

                    if (!v56)
                    {
                      break;
                    }
                  }

                  v53 = v57 + 1;
                }

                if (v40 == 3)
                {
                  *(v41 + 4 * v57) = v44;
                }

                else if (v40 == 2)
                {
                  *(v41 + 2 * v57) = v44;
                }

                else
                {
                  *(v41 + v57) = v44;
                }
              }
            }
          }

          else if (v38)
          {
            LODWORD(v44) = *(v39 + v42);
            if (*(v39 + v42))
            {
              goto LABEL_77;
            }
          }

          else
          {
            v44 = (v113 >> (4 * v42)) & 0xF;
            if (v44)
            {
              goto LABEL_77;
            }
          }

          ++v42;
        }

        while (!(v42 >> v35));
      }

      atomic_store(v36, &qword_1ED4261E8);
      if (!v107)
      {
        v58 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v34 = v116;
        v36 = v118;
        *v58 = qword_1ED4261F8;
        v58[1] = v110;
        qword_1ED4261F8 = v58;
      }

      v22 = v112;
      v24 = v108;
      v23 = v109;
      v117 = v59;
      if (v109)
      {
LABEL_103:
        v60 = v23;
        if (v22 < *v23)
        {
          goto LABEL_110;
        }
      }
    }

    v61 = v22 + (v22 >> 2);
    if (v61 <= v22 + 1)
    {
      v61 = v22 + 1;
    }

    v62 = malloc_good_size(8 * v61 + 8);
    v63 = malloc_type_malloc(v62, 0x1020040D5A9D86FuLL);
    if (!v63)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v60 = v63;
    *v63 = (v62 + 0x7FFFFFFF8) >> 3;
    if (v23)
    {
      memcpy(v63 + 2, v24, 8 * v22);
      v64 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v64 = qword_1ED4261F8;
      v64[1] = v23;
      qword_1ED4261F8 = v64;
    }

    atomic_store(v60, &qword_1ED4261E0);
LABEL_110:
    v65 = v119;
    v66 = DWORD2(v119);
    v67 = DWORD2(v119) >> 1;
    if (v119)
    {
      v68 = v67 + 1;
    }

    else
    {
      v68 = DWORD2(v119) >> 1;
    }

    strcpy(v124, "\a");
    explicit = swift::MetadataAllocator::Allocate(v124, 8 * v68 + 24, 8uLL);
    v69 = 0;
    v70 = v120;
    *(explicit + 1) = 771;
    *(explicit + 2) = 0;
    if (v66 < 2)
    {
      goto LABEL_120;
    }

    v71 = (v67 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v71 > 6)
    {
      v73 = v71 + 1;
      v74 = (v71 + 1) & 0x3FFFFFFFFFFFFFF8;
      v72 = &v70[v74];
      v75 = (v70 + 4);
      v76 = 0uLL;
      v77.i64[0] = 0x100000001;
      v77.i64[1] = 0x100000001;
      v78 = v74;
      v79 = 0uLL;
      do
      {
        v81 = v75[-2];
        v80 = v75[-1];
        v83 = *v75;
        v82 = v75[1];
        v75 += 4;
        v76 = vaddq_s32(vbicq_s8(v77, vuzp1q_s32(v81, v80)), v76);
        v79 = vaddq_s32(vbicq_s8(v77, vuzp1q_s32(v83, v82)), v79);
        v78 -= 8;
      }

      while (v78);
      v69 = vaddvq_s32(vaddq_s32(v79, v76));
      if (v73 == v74)
      {
LABEL_120:
        if (v66 & 0xFFFFFFFE) != 2 || (*v70)
        {
          v86 = 0;
        }

        else
        {
          if (*v70)
          {
            v85 = *v70;
          }

          else
          {
            v85 = 0;
          }

          v86 = (*v85 >> 18) & 0x3F;
        }

        ExistentialValueWitnesses = getExistentialValueWitnesses(v66 & 1, v69, v86, 1);
        if (ExistentialValueWitnesses)
        {
          v88 = ExistentialValueWitnesses;
        }

        else
        {
          v88 = 0;
        }

        *explicit = v88;
        if (v66)
        {
          v89 = 0x80000000;
        }

        else
        {
          v89 = 0;
        }

        v90 = v89 | v69 & 0x40FFFFFF | (v86 << 24);
        *(explicit + 4) = v90;
        if (v65)
        {
          v90 |= 0x40000000u;
          *(explicit + 4) = v90;
          *(explicit + 3) = v65;
        }

        *(explicit + 5) = v67;
        if (v66 < 2)
        {
          goto LABEL_141;
        }

        v91 = (v90 >> 30) & 1;
        if (v66 >= 0x14 && (v92 = &explicit[8 * v91], (v92 - v70 + 24) >= 0x20))
        {
          v93 = v67 & 0x7FFFFFFC;
          v103 = (v70 + 2);
          v104 = v92 + 40;
          v105 = v93;
          do
          {
            v106 = *v103;
            *(v104 - 1) = *(v103 - 1);
            *v104 = v106;
            v103 += 2;
            v104 += 2;
            v105 -= 4;
          }

          while (v105);
          if (v93 == v67)
          {
            goto LABEL_141;
          }
        }

        else
        {
          v93 = 0;
        }

        v94 = v67 - v93;
        v95 = v93;
        v96 = &explicit[8 * v91 + 24 + v95 * 8];
        v97 = &v70[v95];
        do
        {
          v98 = *v97++;
          *v96 = v98;
          v96 += 8;
          --v94;
        }

        while (v94);
LABEL_141:
        *(v60 + 8 + 8 * v112) = explicit;
        atomic_store(v111, &dword_1ED4261DC);
        if ((v118 & 3) > 1)
        {
          if ((v118 & 3) == 2)
          {
            v99 = v118 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v118 & 3) == 0)
            {
              v99 = 0;
            }

            atomic_store(v111, (v99 + 2 * v117));
          }

          else
          {
            v100 = v118 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v118 & 3) == 0)
            {
              v100 = 0;
            }

            atomic_store(v111, (v100 + 4 * v117));
          }
        }

        else if ((v118 & 3) != 0)
        {
          atomic_store(v111, ((v118 & 0xFFFFFFFFFFFFFFFCLL) + v117));
        }

        else
        {
          atomic_store((v111 << (4 * v117)) | v118, &qword_1ED4261E8);
        }

        __dmb(0xBu);
        if (ExistentialTypes)
        {
          goto LABEL_156;
        }

        v101 = qword_1ED4261F8;
        if (qword_1ED4261F8)
        {
          do
          {
            v102 = *v101;
            free(v101[1]);
            free(v101);
            v101 = v102;
          }

          while (v102);
        }

        goto LABEL_155;
      }
    }

    else
    {
      v69 = 0;
      v72 = v70;
    }

    do
    {
      v84 = *v72;
      v72 += 2;
      v69 += (v84 & 1) == 0;
    }

    while (v72 != &v70[v67]);
    goto LABEL_120;
  }

  v4 = &type metadata for Swift.AnyObject;
  if (a1)
  {
    v4 = &type metadata for Any;
  }

  return (v4 + 1);
}

unint64_t swift_getExtendedExistentialTypeShape(const char *a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = &a1[v1];
  }

  else
  {
    v2 = 0;
  }

  explicit = atomic_load_explicit(v2, memory_order_acquire);
  if (explicit)
  {
    return explicit;
  }

  *&v71 = a1;
  v5 = *(a1 + 2);
  v6 = &a1[v5 + 8];
  if (v6)
  {
    v7 = strlen(&a1[v5 + 8]);
  }

  else
  {
    v7 = 0;
  }

  *(&v71 + 1) = v6;
  v72 = v7;
  v8 = atomic_load_explicit(&qword_1ED426230, memory_order_acquire);
  if (!v8)
  {
    goto LABEL_17;
  }

  if (*v8 == v71)
  {
    goto LABEL_28;
  }

  v9 = (*(*v8 + 8) + *v8 + 8);
  if (!v9)
  {
    if (!v72)
    {
      goto LABEL_28;
    }

LABEL_17:
    atomic_fetch_add_explicit(&ExtendedExistentialTypeShapes, 1u, memory_order_acquire);
    do
    {
      v10 = atomic_load_explicit(&qword_1ED426210, memory_order_acquire);
      v11 = atomic_load_explicit(&qword_1ED426218, memory_order_acquire);
      v12 = atomic_load_explicit(&dword_1ED42620C, memory_order_acquire);
    }

    while (v10 != atomic_load_explicit(&qword_1ED426210, memory_order_acquire));
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
        qword_1ED426230 = *v15;
        v8 = *v15;
        atomic_fetch_add_explicit(&ExtendedExistentialTypeShapes, 0xFFFFFFFF, memory_order_release);
        goto LABEL_28;
      }
    }

    atomic_fetch_add_explicit(&ExtendedExistentialTypeShapes, 0xFFFFFFFF, memory_order_release);
    v73 = v71;
    v74 = v72;
    os_unfair_lock_lock(&unk_1ED426220);
    v18 = qword_1ED426218;
    v19 = qword_1ED426218 & 3;
    v20 = v19 == 0;
    v21 = (qword_1ED426218 & 0xFFFFFFFFFFFFFFFCLL);
    if ((qword_1ED426218 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v20 = 1;
    }

    v67 = v20;
    if (v20)
    {
      v22 = 4;
    }

    else
    {
      v22 = *v21;
    }

    v23 = dword_1ED42620C;
    v24 = qword_1ED426210;
    if (qword_1ED426210)
    {
      v25 = qword_1ED426210 + 8;
    }

    else
    {
      v25 = 0;
    }

    if (v26)
    {
      v28 = *v26;
      __dmb(0xBu);
      if (ExtendedExistentialTypeShapes)
      {
        goto LABEL_119;
      }

      v29 = qword_1ED426228;
      if (qword_1ED426228)
      {
        do
        {
          v30 = *v29;
          free(v29[1]);
          free(v29);
          v29 = v30;
        }

        while (v30);
      }

      goto LABEL_118;
    }

    v68 = v18;
    v69 = v25;
    __src = v24 + 2;
    v31 = (v23 + 1);
    if ((1 << v22) / ((1 << v22) - v31) < 4)
    {
      v36 = v18;
      v37 = v27;
      if (!v24)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v32 = (v22 + 1);
      if (v32 >= 0x11)
      {
        v33 = 4;
      }

      else
      {
        v33 = 2;
      }

      if (v32 < 9)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      v35 = malloc_type_calloc(2 << v22, v34, 0x48DDA4AEuLL);
      if (!v35)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v63 = v23;
      v64 = (v23 + 1);
      v62 = v24;
      v65 = v21;
      if (v34 != 1)
      {
        if (v34 == 4)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }
      }

      v36 = v34 | v35;
      *v35 = v22 + 1;
      v38 = v69;
      if (v22)
      {
        v39 = ~(-2 << v22);
        v40 = v21;
        if (!v19)
        {
          v40 = 0;
        }

        v70 = v40;
        v41 = v36 & 3;
        if ((v36 & 3) != 0)
        {
          v42 = v35 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v42 = 0;
        }

        for (i = 1; !(i >> v22); ++i)
        {
          if ((v68 & 3) > 1)
          {
            if ((v68 & 3) == 2)
            {
              LODWORD(v44) = *&v70[2 * i];
              if (*&v70[2 * i])
              {
                goto LABEL_76;
              }
            }

            else
            {
              LODWORD(v44) = *&v70[4 * i];
              if (v44)
              {
LABEL_76:
                v45 = **(v38 + 8 * (v44 - 1));
                v46 = (v45 + 8 + *(v45 + 8));
                if (v46)
                {
                  v47 = strlen(v46);
                }

                else
                {
                  v47 = 0;
                }

                v48 = __swift::__runtime::llvm::hash_value(v46, v47);
                v38 = v69;
                while (1)
                {
                  v50 = v48 & v39;
                  if ((v48 & v39) != 0)
                  {
                    if ((v36 & 3) > 1)
                    {
                      LODWORD(v49) = v41 == 2 ? *(v42 + 2 * v50) : *(v42 + 4 * v50);
                    }

                    else if ((v36 & 3) != 0)
                    {
                      LODWORD(v49) = *(v42 + v50);
                    }

                    else
                    {
                      v49 = (v36 >> (4 * v50)) & 0xF;
                    }

                    if (!v49)
                    {
                      break;
                    }
                  }

                  v48 = v50 + 1;
                }

                if (v41 == 3)
                {
                  *(v42 + 4 * v50) = v44;
                }

                else if (v41 == 2)
                {
                  *(v42 + 2 * v50) = v44;
                }

                else
                {
                  *(v42 + v50) = v44;
                }
              }
            }
          }

          else if ((v68 & 3) != 0)
          {
            LODWORD(v44) = v70[i];
            if (v70[i])
            {
              goto LABEL_76;
            }
          }

          else
          {
            v44 = (v68 >> (4 * i)) & 0xF;
            if (v44)
            {
              goto LABEL_76;
            }
          }
        }
      }

      atomic_store(v36, &qword_1ED426218);
      if (!v67)
      {
        v51 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v51 = qword_1ED426228;
        v51[1] = v65;
        qword_1ED426228 = v51;
      }

      v23 = v63;
      v31 = v64;
      v24 = v62;
      v37 = v52;
      if (!v62)
      {
        goto LABEL_98;
      }
    }

    v53 = v24;
    if (v23 < *v24)
    {
LABEL_104:
      v75 = 23;
      v28 = swift::MetadataAllocator::Allocate(&v75, 8uLL, 8uLL);
      *v28 = v71;
      *(v53 + 8 + 8 * v23) = v28;
      atomic_store(v31, &dword_1ED42620C);
      if ((v36 & 3) > 1)
      {
        if ((v36 & 3) == 2)
        {
          v58 = v36 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v36 & 3) == 0)
          {
            v58 = 0;
          }

          atomic_store(v31, (v58 + 2 * v37));
        }

        else
        {
          v59 = v36 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v36 & 3) == 0)
          {
            v59 = 0;
          }

          atomic_store(v31, (v59 + 4 * v37));
        }
      }

      else if ((v36 & 3) != 0)
      {
        atomic_store(v31, ((v36 & 0xFFFFFFFFFFFFFFFCLL) + v37));
      }

      else
      {
        atomic_store((v31 << (4 * v37)) | v36, &qword_1ED426218);
      }

      __dmb(0xBu);
      if (ExtendedExistentialTypeShapes)
      {
LABEL_119:
        os_unfair_lock_unlock(&unk_1ED426220);
        qword_1ED426230 = v28;
        v16 = *v28;
        if (*v28)
        {
          goto LABEL_29;
        }

LABEL_120:
        v17 = 0;
        goto LABEL_121;
      }

      v60 = qword_1ED426228;
      if (qword_1ED426228)
      {
        do
        {
          v61 = *v60;
          free(v60[1]);
          free(v60);
          v60 = v61;
        }

        while (v61);
      }

LABEL_118:
      qword_1ED426228 = 0;
      goto LABEL_119;
    }

LABEL_98:
    v54 = v23 + (v23 >> 2);
    if (v54 <= v23 + 1)
    {
      v54 = v23 + 1;
    }

    v55 = malloc_good_size(8 * v54 + 8);
    v56 = malloc_type_malloc(v55, 0x1020040D5A9D86FuLL);
    if (!v56)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v53 = v56;
    *v56 = (v55 + 0x7FFFFFFF8) >> 3;
    if (v24)
    {
      memcpy(v56 + 2, __src, 8 * v23);
      v57 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v57 = qword_1ED426228;
      v57[1] = v24;
      qword_1ED426228 = v57;
    }

    atomic_store(v53, &qword_1ED426210);
    goto LABEL_104;
  }

  if (strlen(v9) != v72 || v72 && memcmp(v9, *(&v71 + 1), v72))
  {
    goto LABEL_17;
  }

LABEL_28:
  v16 = *v8;
  if (!*v8)
  {
    goto LABEL_120;
  }

LABEL_29:
  v17 = v16;
LABEL_121:
  atomic_store(v17 + 4, v2);
  return v17 + 4;
}

char *swift_getExtendedExistentialTypeMetadata_unique(unsigned int *a1, uint64_t a2)
{
  *__src = v93[0];
  v91 = v93[1];
  v92 = v94;
  explicit = atomic_load_explicit(&qword_1ED426260, memory_order_acquire);
  if (explicit)
  {
    v97 = v92;
    v95 = *__src;
    v96 = v91;
    v3 = explicit[3];
    if (v3)
    {
      if (v97 != v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v97)
      {
        goto LABEL_9;
      }

      v3 = 0;
    }

    if (v101 == v97 && (swift::MetadataCacheKey::operator==(v4, &v95) & 1) != 0)
    {
      goto LABEL_151;
    }
  }

LABEL_9:
  atomic_fetch_add_explicit(&ExtendedExistentialTypes, 1u, memory_order_acquire);
  do
  {
    v5 = atomic_load_explicit(&qword_1ED426240, memory_order_acquire);
    v6 = atomic_load_explicit(&qword_1ED426248, memory_order_acquire);
    v7 = atomic_load_explicit(&dword_1ED42623C, memory_order_acquire);
  }

  while (v5 != atomic_load_explicit(&qword_1ED426240, memory_order_acquire));
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
      qword_1ED426260 = *v10;
      explicit = *v10;
      atomic_fetch_add_explicit(&ExtendedExistentialTypes, 0xFFFFFFFF, memory_order_release);
      goto LABEL_151;
    }
  }

  atomic_fetch_add_explicit(&ExtendedExistentialTypes, 0xFFFFFFFF, memory_order_release);
  v95 = *__src;
  v96 = v91;
  v97 = v92;
  os_unfair_lock_lock(&unk_1ED426250);
  v11 = qword_1ED426248;
  v12 = qword_1ED426248 & 3;
  v13 = (qword_1ED426248 & 0xFFFFFFFFFFFFFFFCLL) == 0 || (qword_1ED426248 & 3) == 0;
  if (v13)
  {
    v14 = 4;
  }

  else
  {
    v14 = *(qword_1ED426248 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v15 = dword_1ED42623C;
  v16 = qword_1ED426240;
  v17 = (qword_1ED426240 + 8);
  if (qword_1ED426240)
  {
    v18 = qword_1ED426240 + 8;
  }

  else
  {
    v18 = 0;
  }

  if (!v19)
  {
    v84 = (v15 + 1);
    v85 = v15;
    if ((1 << v14) / ((1 << v14) - v84) < 4)
    {
      v28 = v20;
      v29 = v11;
      if (v16)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v83 = v13;
      v86 = v18;
      v23 = v14;
      v24 = (v14 + 1);
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

      v27 = malloc_type_calloc(2 << v14, v26, 0x48DDA4AEuLL);
      if (!v27)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v81 = v16 + 2;
      v82 = v16;
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

      v29 = v26 | v27;
      *v27 = v14 + 1;
      if (v14)
      {
        v30 = ~(-2 << v14);
        v31 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        if (!v12)
        {
          v31 = 0;
        }

        v88 = v31;
        v32 = v29 & 3;
        if ((v29 & 3) != 0)
        {
          v33 = v27 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v33 = 0;
        }

        for (i = 1; !(i >> v23); ++i)
        {
          if ((v11 & 3) > 1)
          {
            if ((v11 & 3) == 2)
            {
              LODWORD(v35) = *(v88 + 2 * i);
              if (*(v88 + 2 * i))
              {
                goto LABEL_67;
              }
            }

            else
            {
              LODWORD(v35) = *(v88 + 4 * i);
              if (v35)
              {
LABEL_67:
                if (*(*(v86 + 8 * (v35 - 1)) + 24))
                {
                  v36 = *(*(v86 + 8 * (v35 - 1)) + 24);
                }

                else
                {
                  v36 = 0;
                }

                v102[0] = v100;
                for (j = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,unsigned int>(&v101, v102); ; j = v39 + 1)
                {
                  v39 = j & v30;
                  if ((j & v30) != 0)
                  {
                    if ((v29 & 3) > 1)
                    {
                      LODWORD(v38) = v32 == 2 ? *(v33 + 2 * v39) : *(v33 + 4 * v39);
                    }

                    else if ((v29 & 3) != 0)
                    {
                      LODWORD(v38) = *(v33 + v39);
                    }

                    else
                    {
                      v38 = (v29 >> (4 * v39)) & 0xF;
                    }

                    if (!v38)
                    {
                      break;
                    }
                  }
                }

                if (v32 == 3)
                {
                  *(v33 + 4 * v39) = v35;
                }

                else if (v32 == 2)
                {
                  *(v33 + 2 * v39) = v35;
                }

                else
                {
                  *(v33 + v39) = v35;
                }
              }
            }
          }

          else if ((v11 & 3) != 0)
          {
            LODWORD(v35) = *(v88 + i);
            if (*(v88 + i))
            {
              goto LABEL_67;
            }
          }

          else
          {
            v35 = (v11 >> (4 * i)) & 0xF;
            if (v35)
            {
              goto LABEL_67;
            }
          }
        }
      }

      atomic_store(v29, &qword_1ED426248);
      if (!v83)
      {
        v40 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v40 = qword_1ED426258;
        v40[1] = v11 & 0xFFFFFFFFFFFFFFFCLL;
        qword_1ED426258 = v40;
      }

      v15 = v85;
      v28 = v41;
      v17 = v81;
      v16 = v82;
      if (v82)
      {
LABEL_88:
        v42 = v16;
        if (v15 < *v16)
        {
          goto LABEL_95;
        }
      }
    }

    v43 = v15 + (v15 >> 2);
    if (v43 <= v15 + 1)
    {
      v43 = v15 + 1;
    }

    v44 = malloc_good_size(8 * v43 + 8);
    v45 = malloc_type_malloc(v44, 0x1020040D5A9D86FuLL);
    if (!v45)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v42 = v45;
    *v45 = (v44 + 0x7FFFFFFF8) >> 3;
    if (v16)
    {
      memcpy(v45 + 2, v17, 8 * v15);
      v46 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v46 = qword_1ED426258;
      v46[1] = v16;
      qword_1ED426258 = v46;
    }

    atomic_store(v42, &qword_1ED426240);
LABEL_95:
    if (*(v92 + 1))
    {
      v47 = 8 * *(v92 + 10) + 32;
    }

    else
    {
      v47 = 32;
    }

    v98 = 22;
    result = swift::MetadataAllocator::Allocate(&v98, v47, 8uLL);
    explicit = result;
    v49 = v92;
    v50 = *v92;
    v89 = v28;
    if ((v50 & 0x100) == 0)
    {
      goto LABEL_99;
    }

    if ((v50 & 0x800) != 0)
    {
      v65 = 0;
    }

    else
    {
      v65 = *(v92 + 4);
    }

    if ((*v92 & 0x1100) == 0x100)
    {
      v66 = *(v92 + 8);
      v67 = *(v92 + 9);
      if (!*(v92 + 9))
      {
        goto LABEL_99;
      }
    }

    else
    {
      v66 = 0;
      v67 = *(v92 + 9);
      if (!*(v92 + 9))
      {
LABEL_99:
        v51 = 1;
LABEL_100:
        v52 = __src[0];
        v53 = WORD2(__src[1]);
        v54 = __src[1];
        v55 = WORD1(__src[1]);
        v56 = HIWORD(__src[1]);
        v57 = v91;
        if ((v50 & 0x400) == 0)
        {
          goto LABEL_159;
        }

        v58 = (((&v92[2 * ((v50 >> 8) & 1) + 4] + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v50 >> 9) & 1));
        v59 = *v58;
        v60 = (v58 + (v59 & 0xFFFFFFFFFFFFFFFELL));
        if (v59)
        {
          v60 = *v60;
        }

        if (!v60)
        {
LABEL_159:
          v61 = *(v92 + 6) - *(v92 + 4);
          v87 = v42;
          if (*v92 > 1u)
          {
            if (*v92 != 2)
            {
              __break(1u);
              return result;
            }

            v62 = HIWORD(__src[1]);
            v63 = __src[0];
            ExistentialMetatypeValueWitnesses = getExistentialMetatypeValueWitnesses(v61);
          }

          else
          {
            v62 = HIWORD(__src[1]);
            v63 = __src[0];
            if (*v92)
            {
              v64 = 0;
              v51 = 1;
            }

            else
            {
              v64 = 1;
            }

            ExistentialMetatypeValueWitnesses = getExistentialValueWitnesses(v64, v61, 0, v51);
          }

          v60 = ExistentialMetatypeValueWitnesses;
          v52 = v63;
          v56 = v62;
          v42 = v87;
          if (!ExistentialMetatypeValueWitnesses)
          {
            goto LABEL_126;
          }
        }

        if (v60)
        {
          *explicit = 0;
          v70 = v60;
        }

        else
        {
LABEL_126:
          v70 = 0;
          v99 = 0;
          *explicit = 0;
        }

        v71 = v42 + 8;
        explicit[1] = v70;
        explicit[2] = 775;
        explicit[3] = v49;
        v72 = explicit + 4;
        memcpy(explicit + 4, v52, 8 * (v55 + v54 + v56));
        if (!v53)
        {
LABEL_135:
          *(v71 + 8 * v85) = explicit;
          atomic_store(v84, &dword_1ED42623C);
          if ((v29 & 3) > 1)
          {
            if ((v29 & 3) == 2)
            {
              v77 = v29 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v29 & 3) == 0)
              {
                v77 = 0;
              }

              atomic_store(v84, (v77 + 2 * v89));
            }

            else
            {
              v78 = v29 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v29 & 3) == 0)
              {
                v78 = 0;
              }

              atomic_store(v84, (v78 + 4 * v89));
            }
          }

          else if ((v29 & 3) != 0)
          {
            atomic_store(v84, ((v29 & 0xFFFFFFFFFFFFFFFCLL) + v89));
          }

          else
          {
            atomic_store((v84 << (4 * v89)) | v29, &qword_1ED426248);
          }

          __dmb(0xBu);
          if (ExtendedExistentialTypes)
          {
            goto LABEL_150;
          }

          v79 = qword_1ED426258;
          if (qword_1ED426258)
          {
            do
            {
              v80 = *v79;
              free(v79[1]);
              free(v79);
              v79 = v80;
            }

            while (v80);
          }

          goto LABEL_149;
        }

        v73 = (v57 + 4);
        while (1)
        {
          v75 = *(v73 - 1);
          v76 = v72[*v73];
          if (*(v73 - 2) == 1)
          {
            WitnessTablePack = swift_allocateWitnessTablePack(v72[v75], v76);
          }

          else
          {
            if (*(v73 - 2))
            {
              goto LABEL_131;
            }

            WitnessTablePack = swift_allocateMetadataPack(v72[v75], v76);
          }

          v72[v75] = WitnessTablePack;
LABEL_131:
          v73 += 4;
          if (!--v53)
          {
            goto LABEL_135;
          }
        }
      }
    }

    v68 = ((((v92 + 27) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v50 >> 9) & 1) + 4 * ((v50 >> 10) & 1) + v66 + v65 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(v92 + 5);
    while ((*v68 & 0x1F) != 5 || (*(v68 + 10) & 1) == 0)
    {
      v68 += 12;
      if (!--v67)
      {
        goto LABEL_99;
      }
    }

    v51 = 0;
    goto LABEL_100;
  }

  explicit = *v19;
  __dmb(0xBu);
  if (!ExtendedExistentialTypes)
  {
    v21 = qword_1ED426258;
    if (qword_1ED426258)
    {
      do
      {
        v22 = *v21;
        free(v21[1]);
        free(v21);
        v21 = v22;
      }

      while (v22);
    }

LABEL_149:
    qword_1ED426258 = 0;
  }

LABEL_150:
  os_unfair_lock_unlock(&unk_1ED426250);
  qword_1ED426260 = explicit;
LABEL_151:
  if (explicit)
  {
    return (explicit + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::ExtendedExistentialTypeCacheEntry::Key::Key(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  swift::TargetExtendedExistentialTypeShape<swift::InProcess>::getGeneralizationSignature(a2, &v32);
  v6 = v36;
  v7 = v37;
  v8 = v38;
  v9 = v32;
  if (v32)
  {
    v10 = 0;
    v11 = 0;
    v12 = v34;
    do
    {
      v13 = *v12++;
      v14 = v13 < 0;
      if (v13 < 0)
      {
        v10 = v11 + 1;
      }

      if (v14)
      {
        ++v11;
      }

      --v9;
    }

    while (v9);
    v15 = v33;
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v10 = 0;
  v15 = v33;
  if (!v33)
  {
    goto LABEL_15;
  }

LABEL_9:
  v16 = 0;
  v17 = 0;
  v18 = v35;
  v19 = 12 * v15;
  do
  {
    v20 = *v18;
    v18 += 3;
    v21 = v20 & 0x9F;
    if (v21 == 128)
    {
      v16 = ++v17;
    }

    v19 -= 12;
  }

  while (v19);
LABEL_16:
  *a1 = a3;
  *(a1 + 8) = v10;
  *(a1 + 10) = v16;
  *(a1 + 12) = v6;
  *(a1 + 14) = v7;
  *(a1 + 16) = v8;
  v22 = 1455063249 * v10;
  if (v10)
  {
    v23 = 0;
    v24 = v10 + v7;
    do
    {
      if (v23 >= v6 || (v25 = (v8 + 8 * v23), *v25) || v7 != v25[1])
      {
        v22 = __ROR8__(v22, 10) ^ (*(a3 + 8 * v7) >> 19) ^ *(a3 + 8 * v7);
      }

      else
      {
        v26 = *(a3 + 8 * v25[2]);
        ++v23;
        if (v26)
        {
          v27 = (*(a3 + 8 * v7) & 0xFFFFFFFFFFFFFFFELL);
          v28 = 1;
          do
          {
            v29 = *v27++;
            v22 = __ROR8__(v22, 10) ^ (v29 >> 19) ^ v29;
            v30 = v28++;
          }

          while (v30 < v26);
        }
      }

      ++v7;
    }

    while (v7 != v24);
  }

  *(a1 + 24) = (668265261 * v22) >> 10;
  *(a1 + 32) = a2;
  return a1;
}

char *swift_getExtendedExistentialTypeMetadata(const char *a1, uint64_t a2)
{
  ExtendedExistentialTypeShape = swift_getExtendedExistentialTypeShape(a1);

  return swift_getExtendedExistentialTypeMetadata_unique(ExtendedExistentialTypeShape, a2);
}

void swift_getForeignTypeMetadata(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2[1];
  if (*a2 == 516 || *a2 == 515)
  {
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
LABEL_6:
    v5 = a2[1];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:
  if (qword_1ED416030 != -1)
  {
    v70 = v5;
    swift_getForeignTypeMetadata_cold_1(a1);
    v5 = v70;
  }

  v83 = &unk_1ED416028;
  v84 = 0;
  v85 = 0;
  v86 = v5;
  explicit = atomic_load_explicit(&qword_1ED416020, memory_order_acquire);
  {
    goto LABEL_137;
  }

  atomic_fetch_add_explicit(&ForeignMetadata, 1u, memory_order_acquire);
  do
  {
    v7 = atomic_load_explicit(&qword_1ED416000, memory_order_acquire);
    v8 = atomic_load_explicit(&qword_1ED416008, memory_order_acquire);
    v9 = atomic_load_explicit(&dword_1ED415FFC, memory_order_acquire);
  }

  while (v7 != atomic_load_explicit(&qword_1ED416000, memory_order_acquire));
  if (v7)
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
      qword_1ED416020 = *v12;
      explicit = *v12;
      atomic_fetch_add_explicit(&ForeignMetadata, 0xFFFFFFFF, memory_order_release);
LABEL_137:
      goto LABEL_138;
    }
  }

  atomic_fetch_add_explicit(&ForeignMetadata, 0xFFFFFFFF, memory_order_release);
  v13 = v86;
  v87 = v86;
  os_unfair_lock_lock(&unk_1ED416010);
  v14 = qword_1ED416008;
  v15 = (qword_1ED416008 & 3) == 0;
  if ((qword_1ED416008 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v15 = 1;
  }

  v80 = qword_1ED416008 & 0xFFFFFFFFFFFFFFFCLL;
  v79 = v15;
  v78 = qword_1ED416008 & 3;
  v16 = v3;
  if (v15)
  {
    v17 = 4;
  }

  else
  {
    v17 = *(qword_1ED416008 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v18 = dword_1ED415FFC;
  v19 = qword_1ED416000;
  if (qword_1ED416000)
  {
    v20 = qword_1ED416000 + 8;
  }

  else
  {
    v20 = 0;
  }

  if (v21)
  {
    explicit = *v21;
    __dmb(0xBu);
    if (ForeignMetadata)
    {
      os_unfair_lock_unlock(&unk_1ED416010);
      qword_1ED416020 = explicit;
      v3 = v16;
      goto LABEL_137;
    }

    v29 = qword_1ED416018;
    v3 = v16;
    if (!qword_1ED416018)
    {
      os_unfair_lock_unlock(&unk_1ED416010);
      qword_1ED416020 = explicit;
      goto LABEL_137;
    }

    v30 = v21;
    do
    {
      v31 = *v29;
      free(v29[1]);
      free(v29);
      v29 = v31;
    }

    while (v31);
    goto LABEL_136;
  }

  v81 = v14;
  v82 = v20;
  __src = (v19 + 8);
  v75 = v13;
  v77 = v19;
  v76 = (v18 + 1);
  if ((1 << v17) / ((1 << v17) - v76) < 4)
  {
    v32 = v14;
    v33 = v19;
    v3 = v16;
    v34 = v22;
    if (v19)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v73 = v16;
    v23 = v17;
    v24 = (v17 + 1);
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

    v27 = malloc_type_calloc(2 << v17, v26, 0x48DDA4AEuLL);
    if (!v27)
    {
      goto LABEL_151;
    }

    v28 = v20;
    v71 = v18;
    v72 = v2;
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
    *v27 = v17 + 1;
    if (v17)
    {
      v35 = ~(-2 << v17);
      v36 = v14 & 3;
      if (v78)
      {
        v37 = v80;
      }

      else
      {
        v37 = 0;
      }

      v38 = v32 & 3;
      if ((v32 & 3) != 0)
      {
        v39 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v39 = 0;
      }

      for (i = 1; !(i >> v23); ++i)
      {
        if (v36 > 1)
        {
          if (v36 == 2)
          {
            LODWORD(v41) = *(v37 + 2 * i);
            if (*(v37 + 2 * i))
            {
              goto LABEL_73;
            }
          }

          else
          {
            LODWORD(v41) = *(v37 + 4 * i);
            if (v41)
            {
LABEL_73:
              v42 = *(*(v28 + 8 * (v41 - 1)) + 8);
              v43 = v42[1];
              if (*v42 == 516 || *v42 == 515)
              {
                if (v43)
                {
LABEL_78:
                  v44 = v42[1];
                  goto LABEL_80;
                }
              }

              else if (v43)
              {
                goto LABEL_78;
              }

              v44 = 0;
LABEL_80:
              swift::ParsedTypeIdentity::parse(v44, v88);
              v45 = __swift::__runtime::llvm::hash_value(v89, v90);
              v28 = v82;
              while (1)
              {
                v47 = v45 & v35;
                if ((v45 & v35) != 0)
                {
                  if ((v32 & 3) > 1)
                  {
                    LODWORD(v46) = v38 == 2 ? *(v39 + 2 * v47) : *(v39 + 4 * v47);
                  }

                  else if ((v32 & 3) != 0)
                  {
                    LODWORD(v46) = *(v39 + v47);
                  }

                  else
                  {
                    v46 = (v32 >> (4 * v47)) & 0xF;
                  }

                  if (!v46)
                  {
                    break;
                  }
                }

                v45 = v47 + 1;
              }

              if (v38 == 3)
              {
                *(v39 + 4 * v47) = v41;
              }

              else if (v38 == 2)
              {
                *(v39 + 2 * v47) = v41;
              }

              else
              {
                *(v39 + v47) = v41;
              }
            }
          }
        }

        else if (v36)
        {
          LODWORD(v41) = *(v37 + i);
          if (*(v37 + i))
          {
            goto LABEL_73;
          }
        }

        else
        {
          v41 = (v81 >> (4 * i)) & 0xF;
          if (v41)
          {
            goto LABEL_73;
          }
        }
      }
    }

    atomic_store(v32, &qword_1ED416008);
    if (!v79)
    {
      v48 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      v28 = v82;
      *v48 = qword_1ED416018;
      v48[1] = v80;
      qword_1ED416018 = v48;
    }

    v18 = v71;
    v2 = v72;
    v3 = v73;
    v33 = v77;
    v34 = v49;
    if (v77)
    {
LABEL_98:
      v50 = v33;
      if (v18 < *v33)
      {
        goto LABEL_105;
      }
    }
  }

  v51 = v18 + (v18 >> 2);
  if (v51 <= v18 + 1)
  {
    v51 = v18 + 1;
  }

  v52 = malloc_good_size(8 * v51 + 8);
  v53 = malloc_type_malloc(v52, 0x1020040D5A9D86FuLL);
  if (!v53)
  {
    swift::hashable_support::findHashableBaseTypeOfHashableType();
  }

  v50 = v53;
  *v53 = (v52 + 0x7FFFFFFF8) >> 3;
  if (v33)
  {
    memcpy(v53 + 2, __src, 8 * v18);
    v54 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    *v54 = qword_1ED416018;
    v54[1] = v33;
    qword_1ED416018 = v54;
  }

  atomic_store(v50, &qword_1ED416000);
LABEL_105:
  v55 = v18;
  v56 = v50 + 8;
  v88[0] = 15;
  explicit = swift::MetadataAllocator::Allocate(v88, 0x10uLL, 8uLL);
  ForeignMetadataInitialization = swift::TargetTypeContextDescriptor<swift::InProcess>::getForeignMetadataInitialization(v75);
  v58 = *ForeignMetadataInitialization;
  if (v58 && &ForeignMetadataInitialization[v58])
  {
    v59 = *(v2 - 1);
    if (!v59)
    {
      if (&value witness table for Builtin.UnknownObject)
      {
        v59 = &value witness table for Builtin.UnknownObject;
      }

      else
      {
        v59 = 0;
      }

      *(v2 - 1) = v59;
    }

    v61 = v2;
    if ((v59->flags & 0x400000) != 0)
    {
      v62 = 1;
    }

    else
    {
      v62 = 2;
    }

    goto LABEL_118;
  }

  if ((swift::areAllTransitiveMetadataComplete_cheap(v2) & 1) == 0)
  {
    v61 = v2;
    v62 = 3;
LABEL_118:
    HIBYTE(v85) = v62;
    v63 = v84;
    if (!v84)
    {
      v63 = swift_slowAlloc(0x30, 0xFuLL);
      *v63 = 0u;
      *(v63 + 16) = 0u;
      *(v63 + 32) = 0u;
      *v63 = 1;
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      os_unfair_lock_lock((v63 + 8));
      v84 = v63;
    }

    v60 = v63 | v62 | 8u;
    v2 = v61;
    goto LABEL_121;
  }

  v60 = 4;
  HIBYTE(v85) = 4;
LABEL_121:
  *explicit = v60;
  explicit[1] = v2;
  *(v56 + 8 * v55) = explicit;
  atomic_store(v76, &dword_1ED415FFC);
  if ((v32 & 3) > 1)
  {
    if ((v32 & 3) == 2)
    {
      v64 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v32 & 3) == 0)
      {
        v64 = 0;
      }

      atomic_store(v76, (v64 + 2 * v34));
    }

    else
    {
      v65 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v32 & 3) == 0)
      {
        v65 = 0;
      }

      atomic_store(v76, (v65 + 4 * v34));
    }
  }

  else if ((v32 & 3) != 0)
  {
    atomic_store(v76, ((v32 & 0xFFFFFFFFFFFFFFFCLL) + v34));
  }

  else
  {
    atomic_store((v76 << (4 * v34)) | v32, &qword_1ED416008);
  }

  __dmb(0xBu);
  v30 = 0;
  if (ForeignMetadata)
  {
    os_unfair_lock_unlock(&unk_1ED416010);
    qword_1ED416020 = explicit;
    goto LABEL_143;
  }

  v66 = qword_1ED416018;
  if (qword_1ED416018)
  {
    do
    {
      v67 = *v66;
      free(v66[1]);
      free(v66);
      v66 = v67;
    }

    while (v67);
  }

LABEL_136:
  qword_1ED416018 = 0;
  os_unfair_lock_unlock(&unk_1ED416010);
  qword_1ED416020 = explicit;
  if (v30)
  {
    goto LABEL_137;
  }

LABEL_143:
  if (v84)
  {
    LOBYTE(v85) = 1;
  }

  if (HIBYTE(v85) != 4)
  {
    if (HIBYTE(v85))
    {
      goto LABEL_138;
    }

    __break(1u);
LABEL_151:
    swift::hashable_support::findHashableBaseTypeOfHashableType();
  }

LABEL_138:
  v68 = v84;
  if (v84)
  {
    os_unfair_lock_unlock(v84 + 2);
    v69 = *&v68[4]._os_unfair_lock_opaque;
    *&v68[4]._os_unfair_lock_opaque = 0;
    if (v69)
    {
      MEMORY[0x1865C92E0](v69, 0x80C4018A671A6);
    }

    v68;
  }
}

void *swift::TargetMetadata<swift::InProcess>::allocateBoxForExistentialIn(unint64_t a1, void *a2)
{
  v2 = a2;
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    *a2 = swift_allocBox(a1);
    return v3;
  }

  return v2;
}

void swift::TargetMetadata<swift::InProcess>::deallocateBoxForExistentialIn(uint64_t a1, atomic_ullong **a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    swift_deallocBox(*a2);
  }
}

void *swift::TargetMetadata<swift::InProcess>::allocateBufferIn(uint64_t a1, void *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = swift_slowAlloc(*(v3 + 64), *(v3 + 80));
    *a2 = v4;
    return v4;
  }

  return a2;
}

uint64_t swift::TargetMetadata<swift::InProcess>::projectBufferFrom(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void swift::TargetMetadata<swift::InProcess>::deallocateBufferIn(uint64_t a1, void **a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    *a2;
  }
}

const char *swift::getStringForMetadataKind(swift *this, MetadataKind a2)
{
  if (this > 771)
  {
    if (this > 1023)
    {
      if (this <= 1280)
      {
        if (this == 1024)
        {
          return "HeapLocalVariable";
        }

        if (this == 1280)
        {
          return "HeapGenericLocalVariable";
        }
      }

      else
      {
        switch(this)
        {
          case 0x501:
            return "ErrorObject";
          case 0x502:
            return "Task";
          case 0x503:
            return "Job";
        }
      }

      return "<unknown>";
    }

    if (this > 773)
    {
      switch(this)
      {
        case 0x306:
          return "ExistentialMetatype";
        case 0x307:
          return "ExtendedExistential";
        case 0x308:
          return "FixedArray";
      }

      return "<unknown>";
    }

    if (this == 772)
    {
      return "Metatype";
    }

    else
    {
      return "ObjCClassWrapper";
    }
  }

  else
  {
    if (this <= 515)
    {
      if (this > 512)
      {
        if (this == 513)
        {
          return "Enum";
        }

        if (this == 514)
        {
          return "Optional";
        }

        return "ForeignClass";
      }

      if (!this)
      {
        return "Class";
      }

      if (this == 512)
      {
        return "Struct";
      }

      return "<unknown>";
    }

    if (this <= 768)
    {
      if (this == 516)
      {
        return "ForeignReferenceType";
      }

      if (this == 768)
      {
        return "Opaque";
      }

      return "<unknown>";
    }

    if (this == 769)
    {
      return "Tuple";
    }

    else if (this == 770)
    {
      return "Function";
    }

    else
    {
      return "Existential";
    }
  }
}

unint64_t swift::_getWitnessTable(int *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1[3];
  if ((v4 & 0x20000) == 0)
  {
    goto LABEL_2;
  }

  v8 = a1 + 4;
  v9 = ((&a1[3 * BYTE1(v4) + 4 + ((v4 >> 6) & 1)] + ((v4 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if ((v4 & 0x10000) != 0)
  {
    v10 = *v9;
    if (!v9)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_2;
    }
  }

  v15 = &v9[(v4 >> 16) & 1];
  v16 = &v15[2 * v10];
  v17 = v16[1];
  if ((v17 & 1) != 0 || (v4 & 0x10000) != 0 && *v9)
  {
LABEL_43:
    v28 = a1 + 1;
    v29 = (v4 >> 3) & 7;
    if (v29 == 1)
    {
      v32 = *v28;
      if (v32)
      {
        v33 = (v28 + v32);
      }

      else
      {
        v33 = 0;
      }

      v31 = *v33;
      if (!*v33)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v29)
      {
        goto LABEL_58;
      }

      v30 = *v28;
      if (!v30 || !(v28 + v30))
      {
        goto LABEL_58;
      }

      v31 = v28 + v30;
    }

    if ((*v31 & 0x80) == 0)
    {
      v34 = *(v16 + 2);
      if (v34 && v34 != -8 - v16)
      {
        if ((v4 & 0x10000) != 0)
        {
          v66 = *v9;
        }

        else
        {
          v66 = 0;
        }

        v68 = &v15[2 * v66];
        v69 = v68[2];
        v70 = (v68 + v69 + 8);
        if (v69)
        {
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        result = *v71;
        if (*v71)
        {
          return result;
        }

        v72 = *v3;
        if (v72)
        {
          v73 = (v3 + (v72 & 0xFFFFFFFFFFFFFFFELL));
          if (v72)
          {
            v74 = *v73;
LABEL_350:
            v180 = v3;
            v181 = a2;
            if ((v4 & 0x10000) != 0)
            {
              v182 = *v9;
            }

            else
            {
              v182 = 0;
            }

            v183 = 8 * ((*(v74 + 4) + 1) + (HIWORD(v15[2 * v182]) >> 1));
            LOWORD(v220) = 19;
            _X20 = swift::MetadataAllocator::Allocate(&v220, v183, 8uLL);
            bzero(_X20, v183);
            result = instantiateWitnessTable(v181, v180, 0, _X20);
            v185 = 0;
            atomic_compare_exchange_strong_explicit(v71, &v185, result, memory_order_release, memory_order_relaxed);
            if (v185)
            {
              _X24 = 0;
              _X25 = 0;
              __asm { CASP            X24, X25, X24, X25, [X19] }

              result = v185;
              if (_X20 + 8 == _X24)
              {
                if (swift::runtime::environment::initializeToken != -1)
                {
                  LibPrespecializedState::LibPrespecializedState();
                }

                if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable == 1)
                {
                  *_X20 = 0xAAAAAAAAAAAAAAAALL;
                }

                __asm { CASP            X24, X25, X20, X21, [X19] }

                return v185;
              }
            }

            return result;
          }

          if (v73)
          {
            v74 = v3 + (v72 & 0xFFFFFFFFFFFFFFFELL);
            goto LABEL_350;
          }
        }

        v74 = 0;
        goto LABEL_350;
      }
    }

LABEL_58:
    v36 = *(v16 + 2);
    v37 = v16 + v36 + 8;
    if (v36)
    {
      v38 = v37 == 0;
    }

    else
    {
      v38 = 1;
    }

    if (!v38)
    {
      if (*(v37 + 7) != -1)
      {
        v193 = a2;
        a2 = v193;
      }

LABEL_181:
      v219 = a2;
      explicit = atomic_load_explicit(v37 + 5, memory_order_acquire);
      if (explicit && *(explicit + 1) == v219)
      {
        goto LABEL_194;
      }

      atomic_fetch_add_explicit(v37, 1u, memory_order_acquire);
      do
      {
        v98 = atomic_load_explicit(v37 + 1, memory_order_acquire);
        v99 = atomic_load_explicit(v37 + 2, memory_order_acquire);
        v100 = atomic_load_explicit(v37 + 1, memory_order_acquire);
      }

      while (v98 != atomic_load_explicit(v37 + 1, memory_order_acquire));
      if (v98)
      {
        v101 = v99 == 0;
      }

      else
      {
        v101 = 1;
      }

      if (!v101 && v100 != 0)
      {
        if (v103)
        {
          *(v37 + 5) = *v103;
          explicit = *v103;
          atomic_fetch_add_explicit(v37, 0xFFFFFFFF, memory_order_release);
LABEL_194:
          v104 = 0;
LABEL_297:
          result = atomic_load_explicit(explicit, memory_order_acquire);
          if (result >= 2 && (result & 1) != 0)
          {
            os_unfair_lock_lock(v37 + 12);
            v161 = *explicit;
            if (*explicit)
            {
              v162 = (v161 & 0xFFFFFFFFFFFFFFFELL);
              if ((v161 & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                ++*&v162->_os_unfair_lock_opaque;
                os_unfair_lock_unlock(v37 + 12);
                os_unfair_lock_lock(v162 + 2);
                os_unfair_lock_unlock(v162 + 2);
                os_unfair_lock_lock(v37 + 12);
                if (*&v162->_os_unfair_lock_opaque == 1)
                {
                  v162;
                }

                else
                {
                  --*&v162->_os_unfair_lock_opaque;
                }

                os_unfair_lock_unlock(v37 + 12);
                result = *explicit;
                if (!v104)
                {
LABEL_323:
                  if (!result)
                  {
                    return result;
                  }

                  v172 = v3[3];
                  if ((v172 & 0x80) == 0)
                  {
                    return result;
                  }

                  v173 = (v172 >> 3) & 7;
                  if (v173 == 1)
                  {
                    v176 = *v28;
                    if (v176)
                    {
                      v177 = (v28 + v176);
                    }

                    else
                    {
                      v177 = 0;
                    }

                    v175 = *v177;
                    if (!*v177)
                    {
                      goto LABEL_337;
                    }
                  }

                  else
                  {
                    if (v173)
                    {
                      goto LABEL_337;
                    }

                    v174 = *v28;
                    if (!v174 || !(v28 + v174))
                    {
                      goto LABEL_337;
                    }

                    v175 = v28 + v174;
                  }

                  if (v175)
                  {
                    v24 = v175;
                    goto LABEL_338;
                  }

LABEL_337:
                  v24 = 0;
LABEL_338:
                  v178 = *v3;
                  if (!v178)
                  {
                    goto LABEL_344;
                  }

                  v26 = (v3 + (v178 & 0xFFFFFFFFFFFFFFFELL));
                  if ((v178 & 1) == 0)
                  {
                    if (v26)
                    {
LABEL_341:
                      v179 = v26;
LABEL_345:

                      return _getForeignWitnessTable(result, v24, v179);
                    }

LABEL_344:
                    v179 = 0;
                    goto LABEL_345;
                  }

LABEL_342:
                  if (*v26)
                  {
                    v179 = *v26;
                    goto LABEL_345;
                  }

                  goto LABEL_344;
                }

                goto LABEL_305;
              }
            }

            v163 = *explicit;
            os_unfair_lock_unlock(v37 + 12);
            result = v163;
          }

          if (!v104)
          {
            goto LABEL_323;
          }

LABEL_305:
          v164 = result;
          os_unfair_lock_unlock(v104 + 2);
          v104;
LABEL_322:
          result = v164;
          goto LABEL_323;
        }
      }

      v105 = v28;
      atomic_fetch_add_explicit(v37, 0xFFFFFFFF, memory_order_release);
      v220 = v219;
      os_unfair_lock_lock(v37 + 6);
      v106 = *(v37 + 2);
      v107 = (v106 & 3) == 0;
      if ((v106 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        v107 = 1;
      }

      v215 = v106 & 0xFFFFFFFFFFFFFFFCLL;
      v213 = v107;
      if (v107)
      {
        v108 = 4;
      }

      else
      {
        v108 = *(v106 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v109 = *(v37 + 1);
      v110 = *(v37 + 1);
      if (v110)
      {
        v111 = (v110 + 2);
      }

      else
      {
        v111 = 0;
      }

      if (v112)
      {
        explicit = *v112;
        __dmb(0xBu);
        if (*v37)
        {
          os_unfair_lock_unlock(v37 + 6);
          v104 = 0;
          *(v37 + 5) = explicit;
          v28 = v105;
          goto LABEL_297;
        }

        v121 = v3;
        v122 = *(v37 + 4);
        v28 = v105;
        if (!v122)
        {
          os_unfair_lock_unlock(v37 + 6);
          v104 = 0;
          *(v37 + 5) = explicit;
          v3 = v121;
          goto LABEL_297;
        }

        v123 = v112;
        do
        {
          v124 = *v122;
          free(v122[1]);
          free(v122);
          v122 = v124;
        }

        while (v124);
        v104 = 0;
        goto LABEL_296;
      }

      __src = v106;
      v206 = v113;
      v196 = v110 + 2;
      v198 = v111;
      v203 = v110;
      v201 = (v109 + 1);
      v208 = v109;
      if ((1 << v108) / ((1 << v108) - v201) < 4)
      {
        v125 = v110;
        v126 = v106;
        v28 = v105;
        if (!v203)
        {
          goto LABEL_266;
        }
      }

      else
      {
        v194 = v105;
        v114 = (v108 + 1);
        if (v114 >= 0x11)
        {
          v115 = 4;
        }

        else
        {
          v115 = 2;
        }

        if (v114 < 9)
        {
          v116 = 1;
        }

        else
        {
          v116 = v115;
        }

        v117 = malloc_type_calloc(2 << v108, v116, 0x48DDA4AEuLL);
        if (!v117)
        {
          swift::hashable_support::findHashableBaseTypeOfHashableType();
        }

        v118 = v106;
        v119 = v108;
        v120 = v111;
        v200 = v3;
        v217 = v8;
        if (v116 != 1)
        {
          if (v116 == 4)
          {
            v116 = 3;
          }

          else
          {
            v116 = 2;
          }
        }

        v126 = v116 | v117;
        *v117 = v108 + 1;
        if (v108)
        {
          v127 = v106 & 3;
          if ((v106 & 3) != 0)
          {
            v128 = v106 & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            v128 = 0;
          }

          v129 = v126 & 3;
          if ((v126 & 3) != 0)
          {
            v130 = v117 & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            v130 = 0;
          }

          v131 = 1;
          p_cache = (__SwiftNativeNSArrayBase + 16);
          do
          {
            if ((__src & 3u) > 1)
            {
              if (v127 == 2)
              {
                LODWORD(v133) = *(v128 + 2 * v131);
                if (*(v128 + 2 * v131))
                {
                  goto LABEL_245;
                }
              }

              else
              {
                LODWORD(v133) = *(v128 + 4 * v131);
                if (v133)
                {
LABEL_245:
                  v134 = *(*(v120 + 8 * (v133 - 1)) + 8);
                  {
                    v211 = v128;
                    getCache();
                    p_cache = __SwiftNativeNSArrayBase.cache;
                    v128 = v211;
                    v118 = __src;
                    v119 = v108;
                    v120 = v198;
                  }

                  v135 = 0x9DDFEA08EB382D69 * ((p_cache[400] + 8 * v134) ^ HIDWORD(v134));
                  v136 = 0x9DDFEA08EB382D69 * (HIDWORD(v134) ^ (v135 >> 47) ^ v135);
                  for (i = 0x9DDFEA08EB382D69 * (v136 ^ (v136 >> 47)); ; i = v139 + 1)
                  {
                    v139 = i & ~(-2 << v108);
                    if (v139)
                    {
                      if ((v126 & 3) > 1)
                      {
                        LODWORD(v138) = v129 == 2 ? *(v130 + 2 * v139) : *(v130 + 4 * v139);
                      }

                      else if ((v126 & 3) != 0)
                      {
                        LODWORD(v138) = *(v130 + v139);
                      }

                      else
                      {
                        v138 = (v126 >> (4 * v139)) & 0xF;
                      }

                      if (!v138)
                      {
                        break;
                      }
                    }
                  }

                  if (v129 == 3)
                  {
                    *(v130 + 4 * v139) = v133;
                  }

                  else if (v129 == 2)
                  {
                    *(v130 + 2 * v139) = v133;
                  }

                  else
                  {
                    *(v130 + v139) = v133;
                  }
                }
              }
            }

            else if (v127)
            {
              LODWORD(v133) = *(v128 + v131);
              if (*(v128 + v131))
              {
                goto LABEL_245;
              }
            }

            else
            {
              v133 = (v118 >> (4 * v131)) & 0xF;
              if (v133)
              {
                goto LABEL_245;
              }
            }

            ++v131;
          }

          while (!(v131 >> v119));
        }

        atomic_store(v126, v37 + 2);
        if (!v213)
        {
          v140 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v120 = v198;
          *v140 = *(v37 + 4);
          v140[1] = v215;
          *(v37 + 4) = v140;
        }

        v206 = v141;
        v3 = v200;
        v28 = v194;
        v8 = v217;
        v125 = v203;
        if (!v203)
        {
          goto LABEL_266;
        }
      }

      v142 = v125;
      if (v109 < *v125)
      {
LABEL_272:
        v148 = *v3;
        if (!v148)
        {
          goto LABEL_276;
        }

        v149 = (v3 + (v148 & 0xFFFFFFFFFFFFFFFELL));
        if (v148)
        {
          v150 = *v149;
          goto LABEL_278;
        }

        if (v149)
        {
          v150 = v3 + (v148 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
LABEL_276:
          v150 = 0;
        }

LABEL_278:
        v151 = v142 + 8;
        v152 = v3[3];
        v153 = ((&v8[3 * BYTE1(v152) + ((v152 >> 6) & 1)] + ((v152 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        if ((v152 & 0x10000) != 0)
        {
          v154 = *v153;
        }

        else
        {
          v154 = 0;
        }

        v155 = 8 * ((*(v150 + 4) + 1) + (HIWORD(v153[2 * v154 + ((v152 >> 16) & 1)]) >> 1));
        v221 = 16;
        explicit = swift::MetadataAllocator::Allocate(&v221, v155 + 24, 8uLL);
        v156 = v219;
        v104 = swift_slowAlloc(0x10, 7uLL);
        *&v104->_os_unfair_lock_opaque = xmmword_180672740;
        os_unfair_lock_lock(v104 + 2);
        *explicit = v104 | 1;
        *(explicit + 1) = v156;
        *(explicit + 2) = v3;
        *(v151 + 8 * v208) = explicit;
        atomic_store(v201, v37 + 1);
        if ((v126 & 3) > 1)
        {
          if ((v126 & 3) == 2)
          {
            v157 = v126 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v126 & 3) == 0)
            {
              v157 = 0;
            }

            atomic_store(v201, (v157 + 2 * v206));
          }

          else
          {
            v158 = v126 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v126 & 3) == 0)
            {
              v158 = 0;
            }

            atomic_store(v201, (v158 + 4 * v206));
          }
        }

        else if ((v126 & 3) != 0)
        {
          atomic_store(v201, ((v126 & 0xFFFFFFFFFFFFFFFCLL) + v206));
        }

        else
        {
          atomic_store((v201 << (4 * v206)) | v126, v37 + 2);
        }

        __dmb(0xBu);
        v123 = 0;
        if (*v37)
        {
          os_unfair_lock_unlock(v37 + 6);
          *(v37 + 5) = explicit;
LABEL_306:
          v165 = *v3;
          if (!v165)
          {
            goto LABEL_313;
          }

          v166 = (v3 + (v165 & 0xFFFFFFFFFFFFFFFELL));
          if (v165)
          {
            v167 = *v166;
            goto LABEL_315;
          }

          if (v166)
          {
            v167 = v3 + (v165 & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
LABEL_313:
            v167 = 0;
          }

LABEL_315:
          v168 = v3[3];
          v169 = ((&v8[3 * BYTE1(v168) + ((v168 >> 6) & 1)] + ((v168 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFFCLL);
          if ((v168 & 0x10000) != 0)
          {
            v170 = *v169;
          }

          else
          {
            v170 = 0;
          }

          bzero(explicit + 24, 8 * ((*(v167 + 4) + 1) + (HIWORD(v169[2 * v170 + ((v168 >> 16) & 1)]) >> 1)));
          v171 = instantiateWitnessTable(*(explicit + 1), *(explicit + 2), a3, (explicit + 24));
          os_unfair_lock_lock(v37 + 12);
          v164 = v171;
          atomic_store(v171, explicit);
          os_unfair_lock_unlock(v104 + 2);
          if (*&v104->_os_unfair_lock_opaque == 1)
          {
            v104;
          }

          else
          {
            --*&v104->_os_unfair_lock_opaque;
          }

          os_unfair_lock_unlock(v37 + 12);
          goto LABEL_322;
        }

        v121 = v3;
        v159 = *(v37 + 4);
        if (v159)
        {
          do
          {
            v160 = *v159;
            free(v159[1]);
            free(v159);
            v159 = v160;
          }

          while (v160);
        }

LABEL_296:
        *(v37 + 4) = 0;
        os_unfair_lock_unlock(v37 + 6);
        *(v37 + 5) = explicit;
        v3 = v121;
        if (v123)
        {
          goto LABEL_297;
        }

        goto LABEL_306;
      }

LABEL_266:
      v143 = v8;
      v144 = v109 + (v109 >> 2);
      if (v144 <= v109 + 1)
      {
        v144 = v109 + 1;
      }

      v145 = malloc_good_size(8 * v144 + 8);
      v146 = malloc_type_malloc(v145, 0x1020040D5A9D86FuLL);
      if (!v146)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v142 = v146;
      *v146 = (v145 + 0x7FFFFFFF8) >> 3;
      if (v125)
      {
        memcpy(v146 + 2, v196, 8 * v109);
        v147 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v147 = *(v37 + 4);
        v147[1] = v125;
        *(v37 + 4) = v147;
      }

      atomic_store(v142, v37 + 1);
      v8 = v143;
      goto LABEL_272;
    }

    v219 = v16;
    v39 = atomic_load_explicit(&qword_1ED426290, memory_order_acquire);
    if (v39 && *v39 == v219)
    {
LABEL_180:
      v37 = v39 + 8;
      goto LABEL_181;
    }

    v214 = a2;
    v216 = a1 + 4;
    do
    {
      v40 = atomic_load_explicit(&qword_1ED426270, memory_order_acquire);
      v41 = atomic_load_explicit(&qword_1ED426278, memory_order_acquire);
      v42 = atomic_load_explicit(&dword_1ED42626C, memory_order_acquire);
    }

    while (v40 != atomic_load_explicit(&qword_1ED426270, memory_order_acquire));
    if (v40)
    {
      v43 = v41 == 0;
    }

    else
    {
      v43 = 1;
    }

    if (!v43 && v42 != 0)
    {
      if (v45)
      {
        qword_1ED426290 = *v45;
        v39 = *v45;
        a2 = v214;
        v8 = v216;
        goto LABEL_180;
      }
    }

    v220 = v219;
    os_unfair_lock_lock(&unk_1ED426280);
    v46 = qword_1ED426278;
    v209 = qword_1ED426278 & 3;
    v47 = v209 == 0;
    v48 = (qword_1ED426278 & 0xFFFFFFFFFFFFFFFCLL);
    if ((qword_1ED426278 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v47 = 1;
    }

    v212 = v47;
    if (v47)
    {
      v49 = 4;
    }

    else
    {
      v49 = *v48;
    }

    v50 = dword_1ED42626C;
    v51 = qword_1ED426270;
    if (qword_1ED426270)
    {
      v52 = qword_1ED426270 + 8;
    }

    else
    {
      v52 = 0;
    }

    if (v53)
    {
      v55 = v3 + 1;
      v39 = *v53;
      __dmb(0xBu);
      {
        v8 = v216;
LABEL_179:
        os_unfair_lock_unlock(&unk_1ED426280);
        qword_1ED426290 = v39;
        a2 = v214;
        v28 = v55;
        goto LABEL_180;
      }

      v64 = qword_1ED426288;
      v8 = v216;
      if (qword_1ED426288)
      {
        do
        {
          v65 = *v64;
          free(v64[1]);
          free(v64);
          v64 = v65;
        }

        while (v65);
      }

LABEL_178:
      qword_1ED426288 = 0;
      goto LABEL_179;
    }

    v205 = v52;
    v207 = v46;
    v199 = v3;
    v56 = (v50 + 1);
    if ((1 << v49) / ((1 << v49) - v56) < 4)
    {
      v67 = v207;
    }

    else
    {
      v57 = (v49 + 1);
      if (v57 >= 0x11)
      {
        v58 = 4;
      }

      else
      {
        v58 = 2;
      }

      if (v57 < 9)
      {
        v59 = 1;
      }

      else
      {
        v59 = v58;
      }

      v60 = malloc_type_calloc(2 << v49, v59, 0x48DDA4AEuLL);
      if (!v60)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v61 = v52;
      v62 = v207;
      v63 = v49;
      v195 = v50;
      v197 = (v50 + 1);
      v202 = v48;
      if (v59 != 1)
      {
        if (v59 == 4)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }
      }

      v67 = v59 | v60;
      *v60 = v49 + 1;
      if (v49)
      {
        if (v209)
        {
          v75 = v48;
        }

        else
        {
          v75 = 0;
        }

        v76 = v67 & 3;
        if ((v67 & 3) != 0)
        {
          v77 = v60 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v77 = 0;
        }

        v78 = 1;
        v79 = (__SwiftNativeNSArrayBase + 16);
        do
        {
          if ((v207 & 3) > 1)
          {
            if ((v207 & 3) == 2)
            {
              LODWORD(v80) = *&v75[2 * v78];
              if (*&v75[2 * v78])
              {
                goto LABEL_136;
              }
            }

            else
            {
              LODWORD(v80) = *&v75[4 * v78];
              if (v80)
              {
LABEL_136:
                v81 = **(v61 + 8 * (v80 - 1));
                {
                  v210 = v75;
                  getCache();
                  v79 = __SwiftNativeNSArrayBase.cache;
                  v62 = v207;
                  v75 = v210;
                  v63 = v49;
                  v61 = v205;
                }

                v82 = 0x9DDFEA08EB382D69 * ((v79[400] + 8 * v81) ^ HIDWORD(v81));
                v83 = 0x9DDFEA08EB382D69 * (HIDWORD(v81) ^ (v82 >> 47) ^ v82);
                for (j = 0x9DDFEA08EB382D69 * (v83 ^ (v83 >> 47)); ; j = v86 + 1)
                {
                  v86 = j & ~(-2 << v49);
                  if (v86)
                  {
                    if ((v67 & 3) > 1)
                    {
                      LODWORD(v85) = v76 == 2 ? *(v77 + 2 * v86) : *(v77 + 4 * v86);
                    }

                    else if ((v67 & 3) != 0)
                    {
                      LODWORD(v85) = *(v77 + v86);
                    }

                    else
                    {
                      v85 = (v67 >> (4 * v86)) & 0xF;
                    }

                    if (!v85)
                    {
                      break;
                    }
                  }
                }

                if (v76 == 3)
                {
                  *(v77 + 4 * v86) = v80;
                }

                else if (v76 == 2)
                {
                  *(v77 + 2 * v86) = v80;
                }

                else
                {
                  *(v77 + v86) = v80;
                }
              }
            }
          }

          else if ((v207 & 3) != 0)
          {
            LODWORD(v80) = v75[v78];
            if (v75[v78])
            {
              goto LABEL_136;
            }
          }

          else
          {
            v80 = (v62 >> (4 * v78)) & 0xF;
            if (v80)
            {
              goto LABEL_136;
            }
          }

          ++v78;
        }

        while (!(v78 >> v63));
      }

      atomic_store(v67, &qword_1ED426278);
      if (!v212)
      {
        v87 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v61 = v205;
        *v87 = qword_1ED426288;
        v87[1] = v202;
        qword_1ED426288 = v87;
      }

      v50 = v195;
      v56 = v197;
    }

    v88 = v54;
    if (!v51 || (v89 = v51, v50 >= *v51))
    {
      v90 = v50 + (v50 >> 2);
      if (v90 <= v50 + 1)
      {
        v90 = v50 + 1;
      }

      v91 = malloc_good_size(8 * v90 + 8);
      v92 = malloc_type_malloc(v91, 0x1020040D5A9D86FuLL);
      if (!v92)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v89 = v92;
      *v92 = (v91 + 0x7FFFFFFF8) >> 3;
      if (v51)
      {
        memcpy(v92 + 2, v51 + 2, 8 * v50);
        v93 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v93 = qword_1ED426288;
        v93[1] = v51;
        qword_1ED426288 = v93;
      }

      atomic_store(v89, &qword_1ED426270);
    }

    v221 = 21;
    v39 = swift::MetadataAllocator::Allocate(&v221, 0x40uLL, 8uLL);
    *v39 = v219;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    *(v39 + 40) = 0u;
    *(v39 + 7) = 0;
    *(v89 + 8 * v50 + 8) = v39;
    atomic_store(v56, &dword_1ED42626C);
    if ((v67 & 3) > 1)
    {
      v8 = v216;
      v94 = v67 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v67 & 3) == 2)
      {
        if ((v67 & 3) == 0)
        {
          v94 = 0;
        }

        atomic_store(v56, (v94 + 2 * v88));
      }

      else
      {
        if ((v67 & 3) == 0)
        {
          v94 = 0;
        }

        atomic_store(v56, (v94 + 4 * v88));
      }
    }

    else
    {
      v8 = v216;
      if ((v67 & 3) != 0)
      {
        atomic_store(v56, ((v67 & 0xFFFFFFFFFFFFFFFCLL) + v88));
      }

      else
      {
        atomic_store((v56 << (4 * v88)) | v67, &qword_1ED426278);
      }
    }

    v55 = v28;
    __dmb(0xBu);
    v3 = v199;
    {
      goto LABEL_179;
    }

    v95 = qword_1ED426288;
    if (qword_1ED426288)
    {
      do
      {
        v96 = *v95;
        free(v95[1]);
        free(v95);
        v95 = v96;
      }

      while (v96);
    }

    goto LABEL_178;
  }

  v18 = *a1;
  if (!v18)
  {
    goto LABEL_36;
  }

  v19 = (a1 + (v18 & 0xFFFFFFFFFFFFFFFELL));
  if (v18)
  {
    v20 = *v19;
    goto LABEL_38;
  }

  if (v19)
  {
    v20 = a1 + (v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
LABEL_36:
    v20 = 0;
  }

LABEL_38:
  if (*(v20 + 4) + 1 != *v16)
  {
    goto LABEL_43;
  }

  if (v17 > 1 || *(v16 + 1) != 0)
  {
    goto LABEL_43;
  }

LABEL_2:
  v5 = a1[2];
  result = a1 + v5 + 8;
  if (v5)
  {
    _ZF = result == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    v11 = v3 + 1;
    v12 = (v4 >> 3) & 7;
    if (v12 == 1)
    {
      v21 = *v11;
      v22 = (v11 + v21);
      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v14 = *v23;
      if (!*v23)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_32;
      }

      v13 = *v11;
      if (!v13 || !(v11 + v13))
      {
        goto LABEL_32;
      }

      v14 = v11 + v13;
    }

    if (v14)
    {
      v24 = v14;
      v25 = *v3;
      if (!v25)
      {
        goto LABEL_344;
      }

LABEL_33:
      v26 = (v3 + (v25 & 0xFFFFFFFFFFFFFFFELL));
      if ((v25 & 1) == 0)
      {
        if (!v26)
        {
          goto LABEL_344;
        }

        goto LABEL_341;
      }

      goto LABEL_342;
    }

LABEL_32:
    v24 = 0;
    v25 = *v3;
    if (!v25)
    {
      goto LABEL_344;
    }

    goto LABEL_33;
  }

  return result;
}

uint64_t swift::_getWitnessTableRelative(int *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1[3];
  if ((v4 & 0x20000) == 0)
  {
    goto LABEL_2;
  }

  v8 = a1 + 4;
  v9 = ((&a1[3 * BYTE1(v4) + 4 + ((v4 >> 6) & 1)] + ((v4 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if ((v4 & 0x10000) != 0)
  {
    v10 = *v9;
    if (!v9)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_2;
    }
  }

  v15 = &v9[2 * v10 + (WORD1(v4) & 1)];
  v16 = v15[1];
  if ((v16 & 1) != 0 || (v4 & 0x10000) != 0 && *v9)
  {
LABEL_49:
    v28 = *(v15 + 2);
    v29 = v15 + v28 + 8;
    if (v28)
    {
      v30 = v29 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      if (*(v29 + 7) != -1)
      {
        v287 = a2;
        a2 = v287;
      }

LABEL_161:
      v312 = a2;
      explicit = atomic_load_explicit(v29 + 5, memory_order_acquire);
      if (explicit && explicit[1] == v312)
      {
        goto LABEL_174;
      }

      atomic_fetch_add_explicit(v29, 1u, memory_order_acquire);
      do
      {
        v83 = atomic_load_explicit(v29 + 1, memory_order_acquire);
        v84 = atomic_load_explicit(v29 + 2, memory_order_acquire);
        v85 = atomic_load_explicit(v29 + 1, memory_order_acquire);
      }

      while (v83 != atomic_load_explicit(v29 + 1, memory_order_acquire));
      if (v83)
      {
        v86 = v84 == 0;
      }

      else
      {
        v86 = 1;
      }

      if (!v86 && v85 != 0)
      {
        if (v88)
        {
          *(v29 + 5) = *v88;
          explicit = *v88;
          atomic_fetch_add_explicit(v29, 0xFFFFFFFF, memory_order_release);
LABEL_174:
          v89 = 0;
LABEL_297:
          ForeignWitnessTable = atomic_load_explicit(explicit, memory_order_acquire);
          if (ForeignWitnessTable >= 2 && (ForeignWitnessTable & 1) != 0)
          {
            os_unfair_lock_lock(v29 + 12);
            ForeignWitnessTable = *explicit;
            if (*explicit)
            {
              v177 = ForeignWitnessTable & 0xFFFFFFFFFFFFFFFELL;
              if ((ForeignWitnessTable & 0xFFFFFFFFFFFFFFFELL) != 0)
              {
                ++*v177;
                os_unfair_lock_unlock(v29 + 12);
                os_unfair_lock_lock((v177 + 8));
                os_unfair_lock_unlock((v177 + 8));
                os_unfair_lock_lock(v29 + 12);
                if (*v177 == 1)
                {
                  (ForeignWitnessTable & 0xFFFFFFFFFFFFFFFELL);
                }

                else
                {
                  --*v177;
                }

                os_unfair_lock_unlock(v29 + 12);
                ForeignWitnessTable = *explicit;
                if (!v89)
                {
LABEL_306:
                  if (!ForeignWitnessTable)
                  {
                    return ForeignWitnessTable | 1;
                  }

                  v178 = v3[3];
                  if ((v178 & 0x80) == 0)
                  {
                    return ForeignWitnessTable | 1;
                  }

LABEL_396:
                  v276 = v3 + 1;
                  v277 = (v178 >> 3) & 7;
                  if (v277 == 1)
                  {
                    v280 = *v276;
                    v281 = (v276 + v280);
                    if (v280)
                    {
                      v282 = v281;
                    }

                    else
                    {
                      v282 = 0;
                    }

                    v279 = *v282;
                    if (!*v282)
                    {
                      goto LABEL_407;
                    }
                  }

                  else
                  {
                    if (v277)
                    {
                      goto LABEL_407;
                    }

                    v278 = *v276;
                    if (!v278 || !(v276 + v278))
                    {
                      goto LABEL_407;
                    }

                    v279 = v276 + v278;
                  }

                  if (v279)
                  {
                    v283 = v279;
                    goto LABEL_408;
                  }

LABEL_407:
                  v283 = 0;
LABEL_408:
                  v284 = *v3;
                  if (v284)
                  {
                    v285 = (v3 + (v284 & 0xFFFFFFFFFFFFFFFELL));
                    if (v284)
                    {
                      if (*v285)
                      {
                        v286 = *v285;
                        goto LABEL_415;
                      }
                    }

                    else if (v285)
                    {
                      v286 = v3 + (v284 & 0xFFFFFFFFFFFFFFFELL);
LABEL_415:
                      ForeignWitnessTable = _getForeignWitnessTable(ForeignWitnessTable, v283, v286);
                      return ForeignWitnessTable | 1;
                    }
                  }

                  v286 = 0;
                  goto LABEL_415;
                }

LABEL_305:
                os_unfair_lock_unlock(v89 + 2);
                v89;
                goto LABEL_306;
              }
            }

            os_unfair_lock_unlock(v29 + 12);
          }

          if (!v89)
          {
            goto LABEL_306;
          }

          goto LABEL_305;
        }
      }

      atomic_fetch_add_explicit(v29, 0xFFFFFFFF, memory_order_release);
      v313 = v312;
      os_unfair_lock_lock(v29 + 6);
      v90 = *(v29 + 2);
      v91 = (v90 & 3) == 0;
      if ((v90 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        v91 = 1;
      }

      v310 = v8;
      v307 = v91;
      if (v91)
      {
        v92 = 4;
      }

      else
      {
        v92 = *(v90 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v93 = *(v29 + 1);
      v94 = *(v29 + 1);
      if (v94)
      {
        v95 = (v94 + 2);
      }

      else
      {
        v95 = 0;
      }

      if (v96)
      {
        explicit = *v96;
        __dmb(0xBu);
        if (*v29)
        {
          os_unfair_lock_unlock(v29 + 6);
          v89 = 0;
          *(v29 + 5) = explicit;
          goto LABEL_297;
        }

        v89 = *(v29 + 4);
        if (!v89)
        {
          os_unfair_lock_unlock(v29 + 6);
          *(v29 + 5) = explicit;
          goto LABEL_297;
        }

        v106 = v96;
        do
        {
          v107 = *&v89->_os_unfair_lock_opaque;
          free(*&v89[2]._os_unfair_lock_opaque);
          free(v89);
          v89 = v107;
        }

        while (v107);
        v108 = v310;
        goto LABEL_296;
      }

      v297 = v90 & 0xFFFFFFFFFFFFFFFCLL;
      v300 = v94;
      v303 = v90;
      v293 = v94 + 2;
      v98 = (v93 + 1);
      v305 = v93;
      if ((1 << v92) / ((1 << v92) - v98) < 4)
      {
        v308 = v97;
        v109 = v94;
        v110 = v90;
        v108 = v310;
        v106 = 0;
        if (v94)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v99 = (v92 + 1);
        if (v99 >= 0x11)
        {
          v100 = 4;
        }

        else
        {
          v100 = 2;
        }

        if (v99 < 9)
        {
          v101 = 1;
        }

        else
        {
          v101 = v100;
        }

        v102 = malloc_type_calloc(2 << v92, v101, 0x48DDA4AEuLL);
        if (!v102)
        {
          swift::hashable_support::findHashableBaseTypeOfHashableType();
        }

        v103 = v90;
        v104 = v95;
        v105 = v92;
        v295 = v3;
        v289 = (v93 + 1);
        if (v101 != 1)
        {
          if (v101 == 4)
          {
            v101 = 3;
          }

          else
          {
            v101 = 2;
          }
        }

        v110 = v101 | v102;
        *v102 = v92 + 1;
        if (v92)
        {
          v111 = v90 & 3;
          if ((v90 & 3) != 0)
          {
            v112 = v90 & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            v112 = 0;
          }

          v113 = v110 & 3;
          if ((v110 & 3) != 0)
          {
            v114 = v102 & 0xFFFFFFFFFFFFFFFCLL;
          }

          else
          {
            v114 = 0;
          }

          v115 = 1;
          p_cache = (__SwiftNativeNSArrayBase + 16);
          do
          {
            if ((v303 & 3) > 1)
            {
              if (v111 == 2)
              {
                LODWORD(v117) = *(v112 + 2 * v115);
                if (*(v112 + 2 * v115))
                {
                  goto LABEL_225;
                }
              }

              else
              {
                LODWORD(v117) = *(v112 + 4 * v115);
                if (v117)
                {
LABEL_225:
                  v118 = *(*(v104 + 8 * (v117 - 1)) + 8);
                  {
                    v288 = v112;
                    getCache();
                    p_cache = __SwiftNativeNSArrayBase.cache;
                    v112 = v288;
                    v105 = v92;
                    v104 = v95;
                    v103 = v303;
                  }

                  v119 = 0x9DDFEA08EB382D69 * ((p_cache[400] + 8 * v118) ^ HIDWORD(v118));
                  v120 = 0x9DDFEA08EB382D69 * (HIDWORD(v118) ^ (v119 >> 47) ^ v119);
                  for (i = 0x9DDFEA08EB382D69 * (v120 ^ (v120 >> 47)); ; i = v123 + 1)
                  {
                    v123 = i & ~(-2 << v92);
                    if (v123)
                    {
                      if ((v110 & 3) > 1)
                      {
                        LODWORD(v122) = v113 == 2 ? *(v114 + 2 * v123) : *(v114 + 4 * v123);
                      }

                      else if ((v110 & 3) != 0)
                      {
                        LODWORD(v122) = *(v114 + v123);
                      }

                      else
                      {
                        v122 = (v110 >> (4 * v123)) & 0xF;
                      }

                      if (!v122)
                      {
                        break;
                      }
                    }
                  }

                  if (v113 == 3)
                  {
                    *(v114 + 4 * v123) = v117;
                  }

                  else if (v113 == 2)
                  {
                    *(v114 + 2 * v123) = v117;
                  }

                  else
                  {
                    *(v114 + v123) = v117;
                  }
                }
              }
            }

            else if (v111)
            {
              LODWORD(v117) = *(v112 + v115);
              if (*(v112 + v115))
              {
                goto LABEL_225;
              }
            }

            else
            {
              v117 = (v103 >> (4 * v115)) & 0xF;
              if (v117)
              {
                goto LABEL_225;
              }
            }

            ++v115;
          }

          while (!(v115 >> v105));
        }

        atomic_store(v110, v29 + 2);
        if (!v307)
        {
          v124 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v104 = v95;
          *v124 = *(v29 + 4);
          v124[1] = v297;
          *(v29 + 4) = v124;
        }

        v93 = v305;
        v308 = v125;
        v3 = v295;
        v108 = v310;
        v98 = v289;
        v109 = v300;
        v106 = 0;
        if (v300)
        {
LABEL_245:
          v126 = v109;
          if (v93 < *v109)
          {
            goto LABEL_252;
          }
        }
      }

      v127 = v3;
      v128 = v93 + (v93 >> 2);
      if (v128 <= v93 + 1)
      {
        v128 = v93 + 1;
      }

      v129 = malloc_good_size(8 * v128 + 8);
      v130 = malloc_type_malloc(v129, 0x1020040D5A9D86FuLL);
      if (!v130)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v126 = v130;
      *v130 = (v129 + 0x7FFFFFFF8) >> 3;
      if (v109)
      {
        memcpy(v130 + 2, v293, 8 * v93);
        v131 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v131 = *(v29 + 4);
        v131[1] = v109;
        *(v29 + 4) = v131;
      }

      atomic_store(v126, v29 + 1);
      v3 = v127;
LABEL_252:
      v132 = v3[3];
      v133 = ((&v108[3 * BYTE1(v132) + ((v132 >> 6) & 1)] + ((v132 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      if ((v132 & 0x10000) != 0)
      {
        v134 = *v133;
      }

      else
      {
        v134 = 0;
      }

      v135 = HIWORD(v133[2 * v134 + ((v132 >> 16) & 1)]);
      v136 = *v3;
      if (v136)
      {
        v137 = (v3 + (v136 & 0xFFFFFFFFFFFFFFFELL));
        if (v136)
        {
          if (*v137)
          {
            v138 = *v137;
            goto LABEL_262;
          }
        }

        else if (v137)
        {
          v138 = v3 + (v136 & 0xFFFFFFFFFFFFFFFELL);
LABEL_262:
          v139 = v138;
          if (v138)
          {
            v139 = v138;
          }

          if (v139 == -24)
          {
            v140 = 0;
          }

          else
          {
            v140 = v139 + 24;
          }

          v141 = v126 + 8;
          v142 = *(v138 + 4);
          if (v142)
          {
            v143 = *(v139 + 3);
            v144 = &v140[12 * v143];
            v145 = (v142 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            if (v145 >= 8)
            {
              v148 = v145 + 1;
              v149 = v148 & 7;
              if ((v148 & 7) == 0)
              {
                v149 = 8;
              }

              v150 = v148 - v149;
              v147 = &v144[8 * v150];
              v151 = &v140[12 * v143 + 32];
              v152 = 0uLL;
              v153.i64[0] = 0xF0000000FLL;
              v153.i64[1] = 0xF0000000FLL;
              v154 = vdupq_n_s64(1uLL);
              v155 = 0uLL;
              v156 = 0uLL;
              v157 = 0uLL;
              do
              {
                v158 = v151 - 8;
                v159 = vld2q_f32(v158);
                v160 = vld2q_f32(v151);
                v161 = vandq_s8(v160, v153);
                v162 = vceqzq_s32(vandq_s8(v159, v153));
                v163.i64[0] = v162.u32[0];
                v163.i64[1] = v162.u32[1];
                v164 = vandq_s8(v163, v154);
                v163.i64[0] = v162.u32[2];
                v163.i64[1] = v162.u32[3];
                v165 = vandq_s8(v163, v154);
                v166 = vceqzq_s32(v161);
                v163.i64[0] = v166.u32[0];
                v163.i64[1] = v166.u32[1];
                v167 = vandq_s8(v163, v154);
                v163.i64[0] = v166.u32[2];
                v163.i64[1] = v166.u32[3];
                v155 = vaddq_s64(v155, v165);
                v152 = vaddq_s64(v152, v164);
                v157 = vaddq_s64(v157, vandq_s8(v163, v154));
                v156 = vaddq_s64(v156, v167);
                v151 += 16;
                v150 -= 8;
              }

              while (v150);
              v146 = vaddvq_s64(vaddq_s64(vaddq_s64(v156, v152), vaddq_s64(v157, v155)));
            }

            else
            {
              v146 = 0;
              v147 = v144;
            }

            v168 = &v144[8 * v142];
            do
            {
              v169 = *v147;
              v147 += 8;
              if ((v169 & 0xF) == 0)
              {
                ++v146;
              }
            }

            while (v147 != v168);
          }

          else
          {
            v146 = 0;
          }

          v314 = 16;
          explicit = swift::MetadataAllocator::Allocate(&v314, 8 * (v146 + (v135 >> 1)) + 32, 8uLL);
          v170 = v312;
          v89 = swift_slowAlloc(0x10, 7uLL);
          *&v89->_os_unfair_lock_opaque = xmmword_180672740;
          os_unfair_lock_lock(v89 + 2);
          *explicit = v89 | 1;
          explicit[1] = v170;
          explicit[2] = v3;
          *(v141 + 8 * v305) = explicit;
          atomic_store(v98, v29 + 1);
          if ((v110 & 3) > 1)
          {
            if ((v110 & 3) == 2)
            {
              v171 = v110 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v110 & 3) == 0)
              {
                v171 = 0;
              }

              atomic_store(v98, (v171 + 2 * v308));
            }

            else
            {
              v172 = v110 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v110 & 3) == 0)
              {
                v172 = 0;
              }

              atomic_store(v98, (v172 + 4 * v308));
            }
          }

          else if ((v110 & 3) != 0)
          {
            atomic_store(v98, ((v110 & 0xFFFFFFFFFFFFFFFCLL) + v308));
          }

          else
          {
            atomic_store((v98 << (4 * v308)) | v110, v29 + 2);
          }

          __dmb(0xBu);
          if (*v29)
          {
            os_unfair_lock_unlock(v29 + 6);
            *(v29 + 5) = explicit;
            goto LABEL_309;
          }

          v173 = v108;
          v174 = *(v29 + 4);
          if (v174)
          {
            do
            {
              v175 = *v174;
              free(v174[1]);
              free(v174);
              v174 = v175;
            }

            while (v175);
          }

          v108 = v173;
LABEL_296:
          *(v29 + 4) = 0;
          os_unfair_lock_unlock(v29 + 6);
          *(v29 + 5) = explicit;
          if (v106)
          {
            goto LABEL_297;
          }

LABEL_309:
          v179 = v3[3];
          v180 = ((&v108[3 * BYTE1(v179) + ((v179 >> 6) & 1)] + ((v179 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFFCLL);
          if ((v179 & 0x10000) != 0)
          {
            v181 = *v180;
          }

          else
          {
            v181 = 0;
          }

          v182 = HIWORD(v180[2 * v181 + ((v179 >> 16) & 1)]);
          v183 = *v3;
          if (v183)
          {
            v184 = (v3 + (v183 & 0xFFFFFFFFFFFFFFFELL));
            if (v183)
            {
              if (*v184)
              {
                v185 = *v184;
                goto LABEL_322;
              }
            }

            else if (v184)
            {
              v185 = v3 + (v183 & 0xFFFFFFFFFFFFFFFELL);
              goto LABEL_322;
            }
          }

          v185 = 0;
LABEL_322:
          v186 = v185;
          if (v185)
          {
            v186 = v185;
          }

          v187 = explicit + 3;
          if (v186 == -24)
          {
            v188 = 0;
          }

          else
          {
            v188 = v186 + 24;
          }

          v189 = v182 >> 1;
          v190 = *(v185 + 4);
          if (v190)
          {
            v191 = *(v186 + 3);
            v192 = &v188[12 * v191];
            v193 = (v190 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            if (v193 >= 8)
            {
              v196 = v193 + 1;
              v197 = v196 & 7;
              if ((v196 & 7) == 0)
              {
                v197 = 8;
              }

              v198 = v196 - v197;
              v195 = &v192[8 * v198];
              v199 = &v188[12 * v191 + 32];
              v200 = 0uLL;
              v201.i64[0] = 0xF0000000FLL;
              v201.i64[1] = 0xF0000000FLL;
              v202 = vdupq_n_s64(1uLL);
              v203 = 0uLL;
              v204 = 0uLL;
              v205 = 0uLL;
              do
              {
                v206 = v199 - 8;
                v207 = vld2q_f32(v206);
                v208 = vld2q_f32(v199);
                v209 = vandq_s8(v208, v201);
                v210 = vceqzq_s32(vandq_s8(v207, v201));
                v211.i64[0] = v210.u32[0];
                v211.i64[1] = v210.u32[1];
                v212 = vandq_s8(v211, v202);
                v211.i64[0] = v210.u32[2];
                v211.i64[1] = v210.u32[3];
                v213 = vandq_s8(v211, v202);
                v214 = vceqzq_s32(v209);
                v211.i64[0] = v214.u32[0];
                v211.i64[1] = v214.u32[1];
                v215 = vandq_s8(v211, v202);
                v211.i64[0] = v214.u32[2];
                v211.i64[1] = v214.u32[3];
                v203 = vaddq_s64(v203, v213);
                v200 = vaddq_s64(v200, v212);
                v205 = vaddq_s64(v205, vandq_s8(v211, v202));
                v204 = vaddq_s64(v204, v215);
                v199 += 16;
                v198 -= 8;
              }

              while (v198);
              v194 = vaddvq_s64(vaddq_s64(vaddq_s64(v204, v200), vaddq_s64(v205, v203)));
            }

            else
            {
              v194 = 0;
              v195 = v192;
            }

            v216 = &v192[8 * v190];
            do
            {
              v217 = *v195;
              v195 += 8;
              if ((v217 & 0xF) == 0)
              {
                ++v194;
              }
            }

            while (v195 != v216);
          }

          else
          {
            v194 = 0;
          }

          bzero(explicit + 3, 8 * (v189 + v194) + 8);
          v218 = explicit[2];
          v219 = v218[3];
          if ((v219 & 0x20000) != 0)
          {
            v222 = ((&v218[3 * BYTE1(v219) + 4 + ((v219 >> 6) & 1)] + ((v219 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v221 = a3;
            if ((v219 & 0x10000) != 0)
            {
              v223 = *v222;
            }

            else
            {
              v223 = 0;
            }

            v220 = &v222[2 * v223 + (WORD1(v219) & 1)];
          }

          else
          {
            v220 = 0;
            v221 = a3;
          }

          v224 = explicit[1];
          v225 = v218[2];
          v226 = v218 + v225 + 8;
          if (!v225)
          {
            v226 = 0;
          }

          v227 = *v218;
          if (v227)
          {
            v228 = (v218 + (v227 & 0xFFFFFFFFFFFFFFFELL));
            if (v227)
            {
              if (*v228)
              {
                v229 = *v228;
                goto LABEL_355;
              }
            }

            else if (v228)
            {
              v229 = v218 + (v227 & 0xFFFFFFFFFFFFFFFELL);
              goto LABEL_355;
            }
          }

          v229 = 0;
LABEL_355:
          v230 = v229;
          if (v229)
          {
            v230 = v229;
          }

          if (v230 == -24)
          {
            v231 = 0;
          }

          else
          {
            v231 = v230 + 24;
          }

          v232 = *(v229 + 4);
          if (v232)
          {
            v233 = *(v230 + 3);
            v234 = &v231[12 * v233];
            v235 = (v232 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            if (v235 > 7)
            {
              v238 = v235 + 1;
              v239 = v238 & 7;
              if ((v238 & 7) == 0)
              {
                v239 = 8;
              }

              v240 = v238 - v239;
              v237 = &v234[8 * v240];
              v241 = &v231[12 * v233 + 32];
              v242 = 0uLL;
              v243.i64[0] = 0xF0000000FLL;
              v243.i64[1] = 0xF0000000FLL;
              v244 = vdupq_n_s64(1uLL);
              v245 = 0uLL;
              v246 = 0uLL;
              v247 = 0uLL;
              do
              {
                v248 = v241 - 8;
                v249 = vld2q_f32(v248);
                v250 = vld2q_f32(v241);
                v251 = vandq_s8(v250, v243);
                v252 = vceqzq_s32(vandq_s8(v249, v243));
                v253.i64[0] = v252.u32[0];
                v253.i64[1] = v252.u32[1];
                v254 = vandq_s8(v253, v244);
                v253.i64[0] = v252.u32[2];
                v253.i64[1] = v252.u32[3];
                v255 = vandq_s8(v253, v244);
                v256 = vceqzq_s32(v251);
                v253.i64[0] = v256.u32[0];
                v253.i64[1] = v256.u32[1];
                v257 = vandq_s8(v253, v244);
                v253.i64[0] = v256.u32[2];
                v253.i64[1] = v256.u32[3];
                v245 = vaddq_s64(v245, v255);
                v242 = vaddq_s64(v242, v254);
                v247 = vaddq_s64(v247, vandq_s8(v253, v244));
                v246 = vaddq_s64(v246, v257);
                v241 += 16;
                v240 -= 8;
              }

              while (v240);
              v236 = vaddvq_s64(vaddq_s64(vaddq_s64(v246, v242), vaddq_s64(v247, v245)));
            }

            else
            {
              v236 = 0;
              v237 = v234;
            }

            v258 = &v234[8 * v232];
            do
            {
              v259 = v236;
              v260 = *v237;
              v237 += 2;
              v261 = v260 & 0xF;
              if ((v260 & 0xF) == 0)
              {
                ++v236;
              }
            }

            while (v237 != v258);
            v262 = *(v220 + 2) >> 1;
            ForeignWitnessTable = &v187[v262];
            *ForeignWitnessTable = v226;
            if (v236)
            {
              if (v261)
              {
                v263 = v259;
              }

              else
              {
                v263 = v259 + 1;
              }

              v264 = &explicit[v262 + 4];
              v265 = (v226 + 4);
              v266 = v265;
              do
              {
                v267 = *v265++;
                v268 = v266 + v267;
                if (v267)
                {
                  v269 = v268 == 0;
                }

                else
                {
                  v269 = 1;
                }

                if (v269)
                {
                  v268 = 0;
                }

                *v264++ = v268;
                ++v266;
                --v263;
              }

              while (v263);
            }
          }

          else
          {
            ForeignWitnessTable = v187 + ((4 * *(v220 + 2)) & 0x3FFF8);
            *ForeignWitnessTable = v226;
          }

          if (BYTE1(v219))
          {
            v270 = 0;
            v271 = &v218[((v219 >> 6) & 1) + 4];
            v272 = 12 * BYTE1(v219);
            do
            {
              if ((*v271 & 0x80) != 0)
              {
                *(ForeignWitnessTable + 8 * ~v270) = *(v221 + 8 * v270);
                ++v270;
              }

              v271 += 3;
              v272 -= 12;
            }

            while (v272);
          }

          v275 = *(v220 + 4);
          v274 = v220 + 4;
          v273 = v275;
          if (v275)
          {
            ((v273 + v274))(ForeignWitnessTable, v224, v221);
          }

          os_unfair_lock_lock(v29 + 12);
          atomic_store(ForeignWitnessTable, explicit);
          os_unfair_lock_unlock(v89 + 2);
          if (*&v89->_os_unfair_lock_opaque == 1)
          {
            v89;
          }

          else
          {
            --*&v89->_os_unfair_lock_opaque;
          }

          os_unfair_lock_unlock(v29 + 12);
          v178 = v3[3];
          if ((v178 & 0x80) == 0)
          {
            return ForeignWitnessTable | 1;
          }

          goto LABEL_396;
        }
      }

      v138 = 0;
      goto LABEL_262;
    }

    v312 = v15;
    v31 = atomic_load_explicit(&qword_1EA79EA40, memory_order_acquire);
    if (v31 && *v31 == v312)
    {
LABEL_160:
      v29 = v31 + 8;
      goto LABEL_161;
    }

    v306 = a2;
    do
    {
      v32 = atomic_load_explicit(&qword_1EA79EA20, memory_order_acquire);
      v33 = atomic_load_explicit(&qword_1EA79EA28, memory_order_acquire);
      v34 = atomic_load_explicit(&dword_1EA79EA1C, memory_order_acquire);
    }

    while (v32 != atomic_load_explicit(&qword_1EA79EA20, memory_order_acquire));
    if (v32)
    {
      v35 = v33 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (!v35 && v34 != 0)
    {
      if (v37)
      {
        qword_1EA79EA40 = *v37;
        v31 = *v37;
LABEL_159:
        a2 = v306;
        goto LABEL_160;
      }
    }

    v313 = v312;
    os_unfair_lock_lock(&unk_1EA79EA30);
    v38 = qword_1EA79EA28;
    v301 = qword_1EA79EA28 & 3;
    v39 = v301 == 0;
    if ((qword_1EA79EA28 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      v39 = 1;
    }

    v304 = v39;
    if (v39)
    {
      v40 = 4;
    }

    else
    {
      v40 = *(qword_1EA79EA28 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v41 = dword_1EA79EA1C;
    v42 = qword_1EA79EA20;
    if (qword_1EA79EA20)
    {
      v43 = qword_1EA79EA20 + 8;
    }

    else
    {
      v43 = 0;
    }

    if (v44)
    {
      v31 = *v44;
      __dmb(0xBu);
      {
LABEL_158:
        os_unfair_lock_unlock(&unk_1EA79EA30);
        qword_1EA79EA40 = v31;
        goto LABEL_159;
      }

      v46 = qword_1EA79EA38;
      if (qword_1EA79EA38)
      {
        do
        {
          v47 = *v46;
          free(v46[1]);
          free(v46);
          v46 = v47;
        }

        while (v47);
      }

LABEL_157:
      qword_1EA79EA38 = 0;
      goto LABEL_158;
    }

    v296 = v43;
    v298 = v38;
    __src = v42 + 2;
    v292 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
    v299 = v42;
    v48 = (v41 + 1);
    if ((1 << v40) / ((1 << v40) - v48) < 4)
    {
      v56 = v38;
    }

    else
    {
      v49 = (v40 + 1);
      v290 = v40;
      if (v49 >= 0x11)
      {
        v50 = 4;
      }

      else
      {
        v50 = 2;
      }

      if (v49 < 9)
      {
        v51 = 1;
      }

      else
      {
        v51 = v50;
      }

      v52 = malloc_type_calloc(2 << v40, v51, 0x48DDA4AEuLL);
      if (!v52)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v53 = v43;
      v54 = v38;
      v55 = v40;
      v294 = v3;
      v309 = v3 + 4;
      if (v51 != 1)
      {
        if (v51 == 4)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }
      }

      v56 = v51 | v52;
      *v52 = v40 + 1;
      if (v40)
      {
        v57 = v38 & 3;
        if (v301)
        {
          v58 = v38 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v58 = 0;
        }

        v59 = v56 & 3;
        if ((v56 & 3) != 0)
        {
          v60 = v52 & 0xFFFFFFFFFFFFFFFCLL;
        }

        else
        {
          v60 = 0;
        }

        v61 = 1;
        v62 = (__SwiftNativeNSArrayBase + 16);
        do
        {
          if ((v298 & 3u) > 1)
          {
            if (v57 == 2)
            {
              LODWORD(v63) = *(v58 + 2 * v61);
              if (*(v58 + 2 * v61))
              {
                goto LABEL_115;
              }
            }

            else
            {
              LODWORD(v63) = *(v58 + 4 * v61);
              if (v63)
              {
LABEL_115:
                v64 = **(v53 + 8 * (v63 - 1));
                {
                  v302 = v58;
                  getCache();
                  v62 = __SwiftNativeNSArrayBase.cache;
                  v58 = v302;
                  v55 = v290;
                  v53 = v296;
                  v54 = v298;
                }

                v65 = 0x9DDFEA08EB382D69 * ((v62[400] + 8 * v64) ^ HIDWORD(v64));
                v66 = 0x9DDFEA08EB382D69 * (HIDWORD(v64) ^ (v65 >> 47) ^ v65);
                for (j = 0x9DDFEA08EB382D69 * (v66 ^ (v66 >> 47)); ; j = v69 + 1)
                {
                  v69 = j & ~(-2 << v290);
                  if (v69)
                  {
                    if ((v56 & 3) > 1)
                    {
                      LODWORD(v68) = v59 == 2 ? *(v60 + 2 * v69) : *(v60 + 4 * v69);
                    }

                    else if ((v56 & 3) != 0)
                    {
                      LODWORD(v68) = *(v60 + v69);
                    }

                    else
                    {
                      v68 = (v56 >> (4 * v69)) & 0xF;
                    }

                    if (!v68)
                    {
                      break;
                    }
                  }
                }

                if (v59 == 3)
                {
                  *(v60 + 4 * v69) = v63;
                }

                else if (v59 == 2)
                {
                  *(v60 + 2 * v69) = v63;
                }

                else
                {
                  *(v60 + v69) = v63;
                }
              }
            }
          }

          else if (v57)
          {
            LODWORD(v63) = *(v58 + v61);
            if (*(v58 + v61))
            {
              goto LABEL_115;
            }
          }

          else
          {
            v63 = (v54 >> (4 * v61)) & 0xF;
            if (v63)
            {
              goto LABEL_115;
            }
          }

          ++v61;
        }

        while (!(v61 >> v55));
      }

      atomic_store(v56, &qword_1EA79EA28);
      if (!v304)
      {
        v70 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        v53 = v296;
        *v70 = qword_1EA79EA38;
        v70[1] = v292;
        qword_1EA79EA38 = v70;
      }

      v3 = v294;
      v8 = v309;
    }

    v71 = v45;
    v72 = v299;
    if (!v299 || v41 >= *v299)
    {
      v73 = v8;
      v74 = v41 + (v41 >> 2);
      if (v74 <= v41 + 1)
      {
        v74 = v41 + 1;
      }

      v75 = malloc_good_size(8 * v74 + 8);
      v76 = malloc_type_malloc(v75, 0x1020040D5A9D86FuLL);
      if (!v76)
      {
        swift::hashable_support::findHashableBaseTypeOfHashableType();
      }

      v72 = v76;
      *v76 = (v75 + 0x7FFFFFFF8) >> 3;
      if (v299)
      {
        memcpy(v76 + 2, __src, 8 * v41);
        v77 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
        *v77 = qword_1EA79EA38;
        v77[1] = v299;
        qword_1EA79EA38 = v77;
      }

      atomic_store(v72, &qword_1EA79EA20);
      v8 = v73;
    }

    v314 = 21;
    v31 = swift::MetadataAllocator::Allocate(&v314, 0x40uLL, 8uLL);
    *v31 = v312;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    *(v31 + 7) = 0;
    *(v72 + 8 * v41 + 8) = v31;
    atomic_store(v48, &dword_1EA79EA1C);
    if ((v56 & 3) > 1)
    {
      if ((v56 & 3) == 2)
      {
        v78 = v56 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v56 & 3) == 0)
        {
          v78 = 0;
        }

        atomic_store(v41 + 1, (v78 + 2 * v71));
      }

      else
      {
        v79 = v56 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v56 & 3) == 0)
        {
          v79 = 0;
        }

        atomic_store(v48, (v79 + 4 * v71));
      }
    }

    else if ((v56 & 3) != 0)
    {
      atomic_store(v41 + 1, ((v56 & 0xFFFFFFFFFFFFFFFCLL) + v71));
    }

    else
    {
      atomic_store((v48 << (4 * v71)) | v56, &qword_1EA79EA28);
    }

    __dmb(0xBu);
    {
      goto LABEL_158;
    }

    v80 = qword_1EA79EA38;
    if (qword_1EA79EA38)
    {
      do
      {
        v81 = *v80;
        free(v80[1]);
        free(v80);
        v80 = v81;
      }

      while (v81);
    }

    goto LABEL_157;
  }

  v17 = *a1;
  if (!v17)
  {
    goto LABEL_42;
  }

  v18 = (a1 + (v17 & 0xFFFFFFFFFFFFFFFELL));
  if (v17)
  {
    v19 = *v18;
    goto LABEL_44;
  }

  if (v18)
  {
    v19 = a1 + (v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
LABEL_42:
    v19 = 0;
  }

LABEL_44:
  if (*(v19 + 4) + 1 != *v15)
  {
    goto LABEL_49;
  }

  if (v16 > 1 || *(v15 + 1) != 0)
  {
    goto LABEL_49;
  }

LABEL_2:
  v5 = a1[2];
  result = a1 + v5 + 8;
  if (v5)
  {
    v7 = result == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    v11 = v3 + 1;
    v12 = (v4 >> 3) & 7;
    if (v12 == 1)
    {
      v20 = *v11;
      v21 = (v11 + v20);
      if (v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v14 = *v22;
      if (!*v22)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_32;
      }

      v13 = *v11;
      if (!v13 || !(v11 + v13))
      {
        goto LABEL_32;
      }

      v14 = v11 + v13;
    }

    if (v14)
    {
      v23 = v14;
      v24 = *v3;
      if (!v24)
      {
        goto LABEL_38;
      }

LABEL_33:
      v25 = (v3 + (v24 & 0xFFFFFFFFFFFFFFFELL));
      if (v24)
      {
        if (*v25)
        {
          v26 = *v25;
          goto LABEL_39;
        }
      }

      else if (v25)
      {
        v26 = v3 + (v24 & 0xFFFFFFFFFFFFFFFELL);
LABEL_39:

        return _getForeignWitnessTable(result, v23, v26);
      }

LABEL_38:
      v26 = 0;
      goto LABEL_39;
    }

LABEL_32:
    v23 = 0;
    v24 = *v3;
    if (!v24)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  return result;
}

void swift_getAssociatedTypeWitness(uint64_t a1, int **a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (atomic_load_explicit((a2 + ((a5 - a4) & 0x7FFFFFFF8)), memory_order_acquire))
  {
    swift_getAssociatedTypeWitnessSlow(a1, a2, a3, a4, a5);
  }
}

void swift_getAssociatedTypeWitnessSlow(uint64_t a1, int **a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (swift_getAssociatedTypeWitnessSlow::Override == 1)
  {
    swift_getAssociatedTypeWitnessSlowImpl(a1, a2, a3, a4, a5);
  }

  else if (swift_getAssociatedTypeWitnessSlow::Override)
  {
    swift_getAssociatedTypeWitnessSlow::Override(a1, a2, a3, a4, a5, swift_getAssociatedTypeWitnessSlowImpl);
  }

  else
  {
    swift_getAssociatedTypeWitnessSlowSlow(a1, a2, a3, a4, a5);
  }
}

uint64_t swift::lookThroughOptionalConditionalWitnessTable(uint64_t result)
{
  if (result)
  {
    return *(result & 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

uint64_t swift_getAssociatedTypeWitnessRelative(swift *a1, const char *a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  v52[33] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    a2 = *(a2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v9 = *a2;
  v10 = &a2[v9 & 0xFFFFFFFFFFFFFFFELL];
  if (v9)
  {
    v10 = *v10;
  }

  v8 = &a2[4 * ((a5 - a4) >> 3)];
  v11 = &v8[*v8];
  v12 = *v10;
  if (v12)
  {
    v13 = &v10[v12 & 0xFFFFFFFFFFFFFFFELL];
    if (v12)
    {
      if (*v13)
      {
        v14 = *v13;
        goto LABEL_12;
      }
    }

    else if (v13)
    {
      v14 = &v10[v12 & 0xFFFFFFFFFFFFFFFELL];
      goto LABEL_12;
    }
  }

  v14 = 0;
LABEL_12:
  SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v11 & 0xFFFFFFFFFFFFFFFELL), a2);
  v17 = v16;
  v40[0] = SymbolicMangledNameStringRef;
  v40[1] = v16;
  ConformingSuperclass = swift::findConformingSuperclass(a3, v10);
  v47 = 0;
  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(ConformingSuperclass);
  if (TypeContextDescriptor)
  {
    v48 = TypeContextDescriptor;
    if (ConformingSuperclass)
    {
LABEL_14:
      GenericArgs = swift::TargetMetadata<swift::InProcess>::getGenericArgs(ConformingSuperclass);
      goto LABEL_17;
    }
  }

  else
  {
    v48 = 0;
    if (ConformingSuperclass)
    {
      goto LABEL_14;
    }
  }

  GenericArgs = 0;
LABEL_17:
  v49 = GenericArgs;
  v50 = v52;
  v51 = 0x800000000;
  v52[32] = 0;
  v43[0] = &unk_1EEEAC730;
  v43[1] = &v47;
  v44 = v43;
  v41[0] = &unk_1EEEAC778;
  v41[1] = &v47;
  v42 = v41;
  swift_getTypeByMangledName(a1, SymbolicMangledNameStringRef, v17, GenericArgs, v43, v41, v45);
  if (v42 == v41)
  {
    (*(*v42 + 32))(v42);
  }

  else if (v42)
  {
    (*(*v42 + 40))();
  }

  if (v44 == v43)
  {
    (*(*v44 + 32))(v44);
  }

  else if (v44)
  {
    (*(*v44 + 40))();
  }

  if (v46)
  {
    v21 = 0;
  }

  else
  {
    v21 = v45[0];
  }

  if (v46 == 1 || !v21)
  {
    if (v46 == 1)
    {
      v23 = (v45[1])();
    }

    else
    {
      v23 = "NULL metadata but no error was provided";
    }

    v39[0] = swift_getTypeName(a3, 1);
    v39[1] = v24;
    v38[0] = findAssociatedTypeName(v14, a5);
    v38[1] = v25;
    v26 = v36;
    __swift::__runtime::llvm::StringRef::str(v38, v36);
    if (v37 < 0)
    {
      v26 = v36[0];
    }

    v27 = v34;
    __swift::__runtime::llvm::StringRef::str(v39, v34);
    if (v35 < 0)
    {
      v27 = v34[0];
    }

    v28 = v14 + 8 + *(v14 + 8);
    __swift::__runtime::llvm::StringRef::str(v40, v32);
    if (v33 >= 0)
    {
      v31 = v32;
    }

    else
    {
      v31 = v32[0];
    }

    swift::fatalError(0, "failed to demangle witness for associated type '%s' in conformance '%s: %s' from mangled name '%s' - %s\n", v29, v30, v26, v27, v28, v31, v23);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  return v21;
}

uint64_t swift_getAssociatedConformanceWitness(swift *a1, const char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  explicit = atomic_load_explicit((a1 + ((a5 - a4) & 0x7FFFFFFF8)), memory_order_acquire);
  if (explicit)
  {
    return swift_getAssociatedConformanceWitnessSlow(a1, a2, a3, a4, a5);
  }

  else
  {
    return explicit;
  }
}

uint64_t swift_getAssociatedConformanceWitnessSlow(swift *a1, const char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = swift_getAssociatedConformanceWitnessSlow::Override;
  if (swift_getAssociatedConformanceWitnessSlow::Override == 1)
  {
    v7 = (a1 + ((a5 - a4) & 0x7FFFFFFF8));
    result = atomic_load_explicit(v7, memory_order_acquire);
    if ((*a5 & 0xF) != 0)
    {
      v9 = result;
      if ((result & 1) == 0)
      {
        return result;
      }

      v10 = a2;
      v11 = a3;
      v12 = a5;
    }

    else
    {
      if ((result & 1) == 0)
      {
        return result;
      }

      v10 = a2;
      v11 = a3;
      v12 = a5;
      v9 = result;
    }

    if (*(v9 & 0xFFFFFFFFFFFFFFFELL) == 255)
    {
      v13 = ((v9 & 0xFFFFFFFFFFFFFFFELL) + 1);
    }

    else
    {
      v13 = (v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v13, a2);
    if (a2 == 5 && *SymbolicMangledNameStringRef - 7 <= 1)
    {
      v15 = *(SymbolicMangledNameStringRef + 1);
      if (v15)
      {
        result = (&SymbolicMangledNameStringRef[v15 + 1])(v11, v10, a1);
      }

      else
      {
        result = MEMORY[0](v11, v10, a1);
      }

      v16 = result;
      if ((*v12 & 0xF) != 0)
      {
        v16 = result;
      }

      atomic_store(v16, v7);
      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!swift_getAssociatedConformanceWitnessSlow::Override)
  {
LABEL_24:

    return swift_getAssociatedConformanceWitnessSlowSlow(a1, a2, a3, a4, a5);
  }

  return (v6)(a1, a2, a3, a4, a5, swift_getAssociatedConformanceWitnessSlowImpl);
}

_BYTE *swift_getAssociatedConformanceWitnessRelative(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  if (a1)
  {
    v8 = *(a1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v9 = (v8 + 4 * ((a5 - a4) >> 3));
  v10 = ((v9 + *v9) & 0xFFFFFFFFFFFFFFFELL);
  if (*v10 == 255)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10;
  }

  result = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v11, a2);
  if (v13 == 5 && *result - 7 < 2)
  {
    v14 = *(result + 1);
    if (v14)
    {
      v15 = &result[v14 + 1];
    }

    else
    {
      v15 = 0;
    }

    return v15(a3, a2, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t swift_compareWitnessTables(char **a1, char **a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!*a1)
  {
    v2 = 0;
    v3 = *a2;
    if (*a2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return swift::MetadataCacheKey::areConformanceDescriptorsEqual(v2, v4);
  }

  v2 = *a1;
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = v3;
  return swift::MetadataCacheKey::areConformanceDescriptorsEqual(v2, v4);
}

uint64_t swift::MetadataCacheKey::areConformanceDescriptorsEqual(char *a1, char *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a1[12] & 0x80) == 0 || (a2[12] & 0x80) == 0)
  {
    return 0;
  }

  CanonicalTypeMetadata = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(a1);
  v6 = swift::TargetProtocolConformanceDescriptor<swift::InProcess>::getCanonicalTypeMetadata(a2);
  result = 0;
  if (CanonicalTypeMetadata && v6 && CanonicalTypeMetadata == v6)
  {
    v7 = *a1;
    if (v7)
    {
      v8 = &a1[v7 & 0xFFFFFFFFFFFFFFFELL];
      v9 = a2;
      if (v7)
      {
        if (*v8)
        {
          v10 = *v8;
          goto LABEL_17;
        }
      }

      else if (v8)
      {
        v10 = &a1[v7 & 0xFFFFFFFFFFFFFFFELL];
LABEL_17:
        v11 = *v9;
        if (!v11)
        {
          goto LABEL_21;
        }

        v12 = (v9 + (v11 & 0xFFFFFFFFFFFFFFFELL));
        if (v11)
        {
          v13 = *v12;
          return v10 == v13;
        }

        if (v12)
        {
          v13 = v9 + (v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
LABEL_21:
          v13 = 0;
        }

        return v10 == v13;
      }

      v10 = 0;
      goto LABEL_17;
    }

    v10 = 0;
    v9 = a2;
    goto LABEL_17;
  }

  return result;
}

uint64_t performOnMetadataCache<swift::MetadataResponse,swift_checkMetadataState::CheckStateCallbacks>(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  result = swift::TargetMetadata<swift::InProcess>::isCanonicalStaticallySpecializedGenericMetadata(a1);
  if (result)
  {
    return v3;
  }

  v5 = *v3;
  if ((*v3 - 1) >= 0x7FF)
  {
    v7 = v3[8];
    if (v7)
    {
LABEL_14:
      v8 = v7;
      goto LABEL_16;
    }
  }

  else
  {
    if ((v5 - 515) < 0xFFFFFFFD)
    {
      if (v5 != 515)
      {
        if (v5 != 769 || !v3[1])
        {
          return v3;
        }

        if (qword_1ED415FF0 != -1)
        {
          swift_getTupleTypeMetadata_cold_1(result);
        }

        return v6;
      }

      if (v3[1])
      {
        v37 = v3[1];
      }

      else
      {
        v37 = 0;
      }

      if (qword_1ED416030 != -1)
      {
        v47 = v37;
        swift_getForeignTypeMetadata_cold_1(result);
        v37 = v47;
      }

      v48[0] = v37;
      atomic_fetch_add_explicit(&ForeignMetadata, 1u, memory_order_acquire);
      do
      {
        explicit = atomic_load_explicit(&qword_1ED416000, memory_order_acquire);
        v34 = atomic_load_explicit(&qword_1ED416008, memory_order_acquire);
        v35 = atomic_load_explicit(&dword_1ED415FFC, memory_order_acquire);
      }

      while (explicit != atomic_load_explicit(&qword_1ED416000, memory_order_acquire));
      goto LABEL_75;
    }

    v7 = v3[1];
    if (v7)
    {
      goto LABEL_14;
    }
  }

  v8 = 0;
LABEL_16:
  if ((*v8 & 0x80) != 0)
  {
    v11 = *v8 & 0x1F;
    if ((v11 - 17) >= 2)
    {
      if (v11 != 16)
      {
        goto LABEL_91;
      }

      if (v8)
      {
        v36 = v8;
      }

      else
      {
        v36 = 0;
      }

      if ((*v36 & 0x20000000) != 0)
      {
        v40 = v36[6];
        if (v40)
        {
          v41 = (v36 + v40 + 24);
        }

        else
        {
          v41 = 0;
        }

        v42 = *v41;
        if (!*v41)
        {
          computeMetadataBoundsFromSuperclass(v36, v41);
          v42 = v43;
        }

        v12 = v42 >> 3;
      }

      else
      {
        if ((*v36 & 0x10000000) != 0)
        {
          v38 = 0;
          v39 = 6;
        }

        else
        {
          v38 = v36[7];
          v39 = 8;
        }

        LODWORD(v12) = v38 - v36[v39];
      }
    }

    else
    {
      LODWORD(v12) = 2;
    }

    v13 = &v3[v12];
    Cache = getCache(v8);
    v15 = Cache;
    v16 = *(Cache + 7);
    v17 = *(Cache + 8);
    v18 = 1455063249 * v16;
    if (v16)
    {
      v19 = 0;
      v20 = HIWORD(v16);
      do
      {
        if (v19 >= WORD2(v16) || (v21 = (v17 + 8 * v19), *v21) || v20 != v21[1])
        {
          v18 = __ROR8__(v18, 10) ^ (*(v13 + 8 * v20) >> 19) ^ *(v13 + 8 * v20);
        }

        else
        {
          v22 = *(v13 + 8 * v21[2]);
          ++v19;
          if (v22)
          {
            v23 = (*(v13 + 8 * v20) & 0xFFFFFFFFFFFFFFFELL);
            v24 = 1;
            do
            {
              v25 = *v23++;
              v18 = __ROR8__(v18, 10) ^ (v25 >> 19) ^ v25;
              v26 = v24++;
            }

            while (v26 < v22);
          }
        }

        ++v20;
      }

      while (v20 != HIWORD(v16) + v16);
    }

    v48[0] = v13;
    v48[1] = v16;
    v48[2] = v17;
    v49 = (668265261 * v18) >> 10;
    atomic_fetch_add_explicit(Cache, 1u, memory_order_acquire);
    do
    {
      v27 = atomic_load_explicit(Cache + 1, memory_order_acquire);
      v28 = atomic_load_explicit(Cache + 2, memory_order_acquire);
      v29 = atomic_load_explicit(Cache + 1, memory_order_acquire);
    }

    while (v27 != atomic_load_explicit(Cache + 1, memory_order_acquire));
    if (v27)
    {
      v30 = v28 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30 || v29 == 0)
    {
      v32 = 0;
    }

    else
    {
      v32 = swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(v48, v28, v29, v27 + 8);
      if (v32)
      {
        v32 = *v32;
      }
    }

    atomic_fetch_add_explicit(v15, 0xFFFFFFFF, memory_order_release);
    swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::awaitSatisfyingState(v32, v15 + 12, *a2);
    return v6;
  }

  v9 = HIWORD(*v8) & 3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      return v3;
    }

    if (qword_1ED415FB0 != -1)
    {
      swift_getSingletonMetadata_cold_1(result);
    }

    return v6;
  }

  if (v9 == 2)
  {
    if (qword_1ED416030 != -1)
    {
      swift_getForeignTypeMetadata_cold_1(result);
    }

    v48[0] = v8;
    atomic_fetch_add_explicit(&ForeignMetadata, 1u, memory_order_acquire);
    do
    {
      explicit = atomic_load_explicit(&qword_1ED416000, memory_order_acquire);
      v34 = atomic_load_explicit(&qword_1ED416008, memory_order_acquire);
      v35 = atomic_load_explicit(&dword_1ED415FFC, memory_order_acquire);
    }

    while (explicit != atomic_load_explicit(&qword_1ED416000, memory_order_acquire));
LABEL_75:
    if (explicit)
    {
      v44 = v34 == 0;
    }

    else
    {
      v44 = 1;
    }

    if (v44 || v35 == 0)
    {
      v46 = 0;
    }

    else
    {
      if (v46)
      {
        v46 = *v46;
      }
    }

    atomic_fetch_add_explicit(&ForeignMetadata, 0xFFFFFFFF, memory_order_release);
    return v6;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t swift::areAllTransitiveMetadataComplete_cheap(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 - 1) >= 0x7FF)
  {
    if (a1[8])
    {
      v10 = a1[8];
    }

    else
    {
      v10 = 0;
    }

    v11 = a1[1];
    if (v11 && (*(v11 + 32) & 2) != 0 && (swift::areAllTransitiveMetadataComplete_cheap(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(v11) & 1) != 0)
    {
      return 0;
    }
  }

  else
  {
    if ((v2 - 515) < 0xFFFFFFFD)
    {
      if (v2 == 515)
      {
        v31 = a1[2];
        if (v31 && (swift::areAllTransitiveMetadataComplete_cheap(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(v31) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v2 == 769)
      {
        v3 = a1[1];
        if (v3)
        {
          v4 = 0;
          v5 = a1 + 3;
          v6 = v3 - 1;
          do
          {
            v7 = swift::areAllTransitiveMetadataComplete_cheap(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(v5[2 * v4]);
            if (v7)
            {
              break;
            }
          }

          while (v6 != v4++);
          return v7 ^ 1u;
        }
      }

      return 1;
    }

    if (a1[1])
    {
      v10 = a1[1];
    }

    else
    {
      v10 = 0;
    }
  }

  if ((*v10 & 0x80) == 0)
  {
    return 1;
  }

  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v10);
  v12 = *v10 & 0x1F;
  if ((v12 - 17) >= 2)
  {
    if (v12 != 16)
    {
      __break(1u);
      return result;
    }

    if (v10)
    {
      v30 = v10;
    }

    else
    {
      v30 = 0;
    }

    if ((*v30 & 0x20000000) != 0)
    {
      v34 = v30[6];
      if (v34)
      {
        v35 = (v30 + v34 + 24);
      }

      else
      {
        v35 = 0;
      }

      v36 = *v35;
      if (!*v35)
      {
        v37 = result;
        computeMetadataBoundsFromSuperclass(v30, v35);
        result = v37;
        v36 = v38;
      }

      v13 = v36 >> 3;
    }

    else
    {
      if ((*v30 & 0x10000000) != 0)
      {
        v32 = 0;
        v33 = 6;
      }

      else
      {
        v32 = v30[7];
        v33 = 8;
      }

      LODWORD(v13) = v32 - v30[v33];
    }
  }

  else
  {
    LODWORD(v13) = 2;
  }

  v14 = *(result + 10);
  v15 = v14 & 1;
  if (v14)
  {
    v16 = *(result + 4);
    v17 = (((result + v16 + 15) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 6));
    v18 = HIWORD(*v17);
    v19 = &v17[v15];
    if (*v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (!*(result + 4))
    {
      return 1;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v16 = *(result + 4);
    if (!*(result + 4))
    {
      return 1;
    }
  }

  v21 = 0;
  v22 = &a1[v13];
  v23 = result + v16 + 12;
  v24 = (result + 12);
  while (1)
  {
    v25 = *v24;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v26 = v25 & 0x3F;
    if (v26 != 2)
    {
      break;
    }

LABEL_34:
    ++v18;
LABEL_35:
    if (++v24 == v23)
    {
      return 1;
    }
  }

  if (v26 != 1)
  {
    if (swift::areAllTransitiveMetadataComplete_cheap(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(v22[v18]))
    {
      return 0;
    }

    goto LABEL_34;
  }

  v27 = v22[LOWORD(v20[2 * v21 + 1])];
  if (!v27)
  {
LABEL_45:
    ++v21;
    goto LABEL_34;
  }

  v28 = (v22[v18] & 0xFFFFFFFFFFFFFFFELL);
  if (v27 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v22[LOWORD(v20[2 * v21 + 1])];
  }

  while ((swift::areAllTransitiveMetadataComplete_cheap(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(*v28) & 1) == 0)
  {
    ++v28;
    if (!--v29)
    {
      goto LABEL_45;
    }
  }

  return 0;
}

uint64_t swift::inferStateForMetadata(uint64_t a1)
{
  if ((*(*(a1 - 8) + 82) & 0x40) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t swift::checkTransitiveCompleteness(uint64_t *a1)
{
  v20[8] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x800000000;
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  *v9 = 0u;
  *__p = 0u;
  v11 = 1065353216;
  v7[4] = &v18;
  v8 = 0;
  v7[0] = &v13;
  v7[1] = &v12;
  v7[2] = v9;
  v7[3] = &v8;
  v13 = a1;
  v12 = 1;
  if (findAnyTransitiveMetadata<swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0 &>(a1, v7))
  {
LABEL_4:
    v2 = v8;
    v3 = __p[0];
    if (!__p[0])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  while (v19)
  {
    v1 = v18[v19 - 1];
    LODWORD(v19) = v19 - 1;
    if (findAnyTransitiveMetadata<swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0 &>(v1, v7))
    {
      goto LABEL_4;
    }
  }

  v2 = 0;
  v3 = __p[0];
  if (__p[0])
  {
    do
    {
LABEL_5:
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

LABEL_6:
  v5 = v9[0];
  v9[0] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v2;
}

uint64_t findAnyTransitiveMetadata<swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0 &>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a1 - 1) >= 0x7FF)
  {
    if (a1[8])
    {
      v11 = a1[8];
    }

    else
    {
      v11 = 0;
    }

    v12 = a1[1];
    if (v12 && (*(v12 + 32) & 2) != 0 && (swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(a2, v12) & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    if ((v4 - 515) < 0xFFFFFFFD)
    {
      if (v4 == 515)
      {
        v32 = a1[2];
        if (v32 && (swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(a2, v32) & 1) != 0)
        {
          return 1;
        }
      }

      else if (v4 == 769)
      {
        v5 = a1[1];
        if (v5)
        {
          v6 = 0;
          v7 = a1 + 3;
          v8 = v5 - 1;
          do
          {
            result = swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(a2, v7[2 * v6]);
            if (result)
            {
              break;
            }
          }

          while (v8 != v6++);
          return result;
        }
      }

      return 0;
    }

    if (a1[1])
    {
      v11 = a1[1];
    }

    else
    {
      v11 = 0;
    }
  }

  if ((*v11 & 0x80) == 0)
  {
    return 0;
  }

  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v11);
  v13 = *v11 & 0x1F;
  if ((v13 - 17) >= 2)
  {
    if (v13 != 16)
    {
      __break(1u);
      return result;
    }

    if (v11)
    {
      v31 = v11;
    }

    else
    {
      v31 = 0;
    }

    if ((*v31 & 0x20000000) != 0)
    {
      v35 = v31[6];
      if (v35)
      {
        v36 = (v31 + v35 + 24);
      }

      else
      {
        v36 = 0;
      }

      v37 = *v36;
      if (!*v36)
      {
        v38 = result;
        computeMetadataBoundsFromSuperclass(v31, v36);
        result = v38;
        v37 = v39;
      }

      v14 = v37 >> 3;
    }

    else
    {
      if ((*v31 & 0x10000000) != 0)
      {
        v33 = 0;
        v34 = 6;
      }

      else
      {
        v33 = v31[7];
        v34 = 8;
      }

      LODWORD(v14) = v33 - v31[v34];
    }
  }

  else
  {
    LODWORD(v14) = 2;
  }

  v15 = *(result + 10);
  v16 = v15 & 1;
  if (v15)
  {
    v17 = *(result + 4);
    v18 = (((result + v17 + 15) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 6));
    v19 = HIWORD(*v18);
    v20 = &v18[v16];
    if (*v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (!*(result + 4))
    {
      return 0;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v17 = *(result + 4);
    if (!*(result + 4))
    {
      return 0;
    }
  }

  v22 = 0;
  v23 = &a1[v14];
  v24 = result + v17 + 12;
  v25 = (result + 12);
  while (1)
  {
    v26 = *v25;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v27 = v26 & 0x3F;
    if (v27 != 2)
    {
      break;
    }

LABEL_34:
    ++v19;
LABEL_35:
    if (++v25 == v24)
    {
      return 0;
    }
  }

  if (v27 != 1)
  {
    if (swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(a2, v23[v19]))
    {
      return 1;
    }

    goto LABEL_34;
  }

  v28 = v23[LOWORD(v21[2 * v22 + 1])];
  if (!v28)
  {
LABEL_45:
    ++v22;
    goto LABEL_34;
  }

  v29 = (v23[v19] & 0xFFFFFFFFFFFFFFFELL);
  if (v28 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v23[LOWORD(v21[2 * v22 + 1])];
  }

  while ((swift::checkTransitiveCompleteness(swift::TargetMetadata<swift::InProcess> const*)::$_0::operator()(a2, *v29) & 1) == 0)
  {
    ++v29;
    if (!--v30)
    {
      goto LABEL_45;
    }
  }

  return 1;
}

void swift::blockOnMetadataDependency(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v80 = a1;
  *(&v80 + 1) = a2;
  __p = 0;
  v78 = 0;
  v79 = 0;
  std::vector<swift::MetadataDependency>::push_back[abi:nn200100](&__p, &v80);
  LOBYTE(v75) = 0;
  *(&v75 + 1) = a3;
  v76 = a4;
  if (a3)
  {
    while (1)
    {
      std::vector<swift::MetadataDependency>::push_back[abi:nn200100](&__p, (&v75 + 8));
      v7 = *(v78 - 2);
      v6 = *(v78 - 1);
      v81 = v6;
      isCanonicalStaticallySpecializedGenericMetadata = swift::TargetMetadata<swift::InProcess>::isCanonicalStaticallySpecializedGenericMetadata(v7);
      if (isCanonicalStaticallySpecializedGenericMetadata)
      {
        goto LABEL_5;
      }

      v14 = *v7;
      if ((*v7 - 1) >= 0x7FF)
      {
        v22 = v7[8];
        if (v22)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if ((v14 - 515) < 0xFFFFFFFD)
        {
          if (v14 == 515)
          {
            if (v7[1])
            {
              v63 = v7[1];
            }

            else
            {
              v63 = 0;
            }

            checkMetadataDependency(swift::MetadataDependency)::CheckDependencyResult::forForeignMetadata(&v81, v63, &v82);
            goto LABEL_7;
          }

          if (v14 == 769 && v7[1])
          {
            if (qword_1ED415FF0 != -1)
            {
              swift::blockOnMetadataDependency();
            }

            v15 = atomic_load_explicit(v7 - 14, memory_order_acquire) & 7;
            if (v6 > 62)
            {
              if (v6 == 255)
              {
                if (!v15)
                {
                  os_unfair_lock_lock(&unk_1ED415FE8);
                  v17 = *(v7 - 14);
                  v18 = v17 & 7;
                  if ((*(v7 - 14) & 7) != 0)
                  {
                    goto LABEL_151;
                  }

                  goto LABEL_35;
                }
              }

              else
              {
                if (v6 != 63)
                {
                  goto LABEL_182;
                }

                if (v15 <= 1)
                {
                  os_unfair_lock_lock(&unk_1ED415FE8);
                  v17 = *(v7 - 14);
                  v18 = v17 & 7;
                  if ((v17 & 7u) > 1)
                  {
LABEL_151:
                    LOBYTE(v82) = v18;
                    *(&v82 + 1) = 0;
                    goto LABEL_159;
                  }

LABEL_35:
                  LOBYTE(v82) = v18;
                  v19 = v17 & 0xFFFFFFFFFFFFFFF0;
                  if ((v17 & 8) != 0 && v19)
                  {
                    v20 = (v19 + 24);
                    v21 = 32;
                    goto LABEL_157;
                  }

                  v73 = 0;
                  if (v19 && (v17 & 8) == 0)
                  {
                    v21 = 8;
                    v20 = (v17 & 0xFFFFFFFFFFFFFFF0);
LABEL_157:
                    v73 = *v20;
                    v16 = *(v19 + v21);
                  }

                  *(&v82 + 1) = v73;
                  v83 = v16;
LABEL_159:
                  v71 = &unk_1ED415FE8;
LABEL_160:
                  os_unfair_lock_unlock(v71);
                  goto LABEL_7;
                }
              }
            }

            else if (v6)
            {
              if (v6 != 1)
              {
                goto LABEL_182;
              }

              if (v15 <= 2)
              {
                os_unfair_lock_lock(&unk_1ED415FE8);
                v17 = *(v7 - 14);
                v18 = v17 & 7;
                if ((v17 & 7u) > 2)
                {
                  goto LABEL_151;
                }

                goto LABEL_35;
              }
            }

            else if (v15 <= 3)
            {
              os_unfair_lock_lock(&unk_1ED415FE8);
              v17 = *(v7 - 14);
              v18 = v17 & 7;
              if ((v17 & 7u) > 3)
              {
                goto LABEL_151;
              }

              goto LABEL_35;
            }

LABEL_153:
            LOBYTE(v82) = v15;
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        v22 = v7[1];
        if (v22)
        {
LABEL_41:
          v23 = v22;
          goto LABEL_43;
        }
      }

      v23 = 0;
LABEL_43:
      if ((*v23 & 0x80) != 0)
      {
        v32 = *v23 & 0x1F;
        if ((v32 - 17) >= 2)
        {
          if (v32 != 16)
          {
            goto LABEL_182;
          }

          if (v23)
          {
            v62 = v23;
          }

          else
          {
            v62 = 0;
          }

          if ((*v62 & 0x20000000) != 0)
          {
            v66 = v62[6];
            if (v66)
            {
              v67 = (v62 + v66 + 24);
            }

            else
            {
              v67 = 0;
            }

            v68 = *v67;
            if (!*v67)
            {
              computeMetadataBoundsFromSuperclass(v62, v67);
              v68 = v69;
            }

            v33 = v68 >> 3;
          }

          else
          {
            if ((*v62 & 0x10000000) != 0)
            {
              v64 = 0;
              v65 = 6;
            }

            else
            {
              v64 = v62[7];
              v65 = 8;
            }

            LODWORD(v33) = v64 - v62[v65];
          }
        }

        else
        {
          LODWORD(v33) = 2;
        }

        v34 = &v7[v33];
        Cache = getCache(v23);
        v36 = Cache;
        v37 = *(Cache + 7);
        v38 = *(Cache + 8);
        v39 = 1455063249 * v37;
        if (v37)
        {
          v40 = 0;
          v41 = HIWORD(v37);
          do
          {
            if (v40 >= WORD2(v37) || (v42 = (v38 + 8 * v40), *v42) || v41 != v42[1])
            {
              v39 = __ROR8__(v39, 10) ^ (v34[v41] >> 19) ^ v34[v41];
            }

            else
            {
              v43 = v34[v42[2]];
              ++v40;
              if (v43)
              {
                v44 = (v34[v41] & 0xFFFFFFFFFFFFFFFELL);
                v45 = 1;
                do
                {
                  v46 = *v44++;
                  v39 = __ROR8__(v39, 10) ^ (v46 >> 19) ^ v46;
                  v47 = v45++;
                }

                while (v47 < v43);
              }
            }

            ++v41;
          }

          while (v41 != HIWORD(v37) + v37);
        }

        *&v82 = v34;
        *(&v82 + 1) = v37;
        v83 = v38;
        v84 = (668265261 * v39) >> 10;
        atomic_fetch_add_explicit(Cache, 1u, memory_order_acquire);
        do
        {
          explicit = atomic_load_explicit(Cache + 1, memory_order_acquire);
          v49 = atomic_load_explicit(Cache + 2, memory_order_acquire);
          v50 = atomic_load_explicit(Cache + 1, memory_order_acquire);
        }

        while (explicit != atomic_load_explicit(Cache + 1, memory_order_acquire));
        if (explicit)
        {
          v51 = v49 == 0;
        }

        else
        {
          v51 = 1;
        }

        v52 = v51 || v50 == 0;
        if (v52 || (v53 = swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(&v82, v49, v50, explicit + 8)) == 0)
        {
          v54 = 0;
        }

        else
        {
          v54 = *v53;
        }

        atomic_fetch_add_explicit(v36, 0xFFFFFFFF, memory_order_release);
        v55 = v81;
        v15 = atomic_load_explicit(v54, memory_order_acquire) & 7;
        if (v55 > 62)
        {
          if (v55 == 255)
          {
            if (!v15)
            {
              os_unfair_lock_lock(v36 + 12);
              v57 = *v54;
              v58 = *v54 & 7;
              if ((*v54 & 7) != 0)
              {
                goto LABEL_101;
              }

              goto LABEL_86;
            }
          }

          else
          {
            if (v55 != 63)
            {
              goto LABEL_182;
            }

            if (v15 <= 1)
            {
              os_unfair_lock_lock(v36 + 12);
              v57 = *v54;
              v58 = *v54 & 7;
              if (v58 > 1)
              {
LABEL_101:
                LOBYTE(v82) = v58;
                *(&v82 + 1) = 0;
LABEL_129:
                v71 = v36 + 12;
                goto LABEL_160;
              }

LABEL_86:
              LOBYTE(v82) = v58;
              v59 = v57 & 0xFFFFFFFFFFFFFFF0;
              if ((v57 & 8) != 0 && v59)
              {
                v60 = (v59 + 24);
                v61 = 32;
                goto LABEL_127;
              }

              v70 = 0;
              if (v59 && (v57 & 8) == 0)
              {
                v61 = 8;
                v60 = (v57 & 0xFFFFFFFFFFFFFFF0);
LABEL_127:
                v70 = *v60;
                v56 = *(v59 + v61);
              }

              *(&v82 + 1) = v70;
              v83 = v56;
              goto LABEL_129;
            }
          }
        }

        else if (v55)
        {
          if (v55 != 1)
          {
            goto LABEL_182;
          }

          if (v15 <= 2)
          {
            os_unfair_lock_lock(v36 + 12);
            v57 = *v54;
            v58 = *v54 & 7;
            if (v58 > 2)
            {
              goto LABEL_101;
            }

            goto LABEL_86;
          }
        }

        else if (v15 <= 3)
        {
          os_unfair_lock_lock(v36 + 12);
          v57 = *v54;
          v58 = *v54 & 7;
          if (v58 > 3)
          {
            goto LABEL_101;
          }

          goto LABEL_86;
        }

        goto LABEL_153;
      }

      v24 = HIWORD(*v23) & 3;
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_182;
        }

        checkMetadataDependency(swift::MetadataDependency)::CheckDependencyResult::forForeignMetadata(&v81, v23, &v82);
        goto LABEL_7;
      }

      if (v24)
      {
        if (qword_1ED415FB0 != -1)
        {
          swift::blockOnMetadataDependency(isCanonicalStaticallySpecializedGenericMetadata);
        }

        v15 = atomic_load_explicit(v25, memory_order_acquire) & 7;
        if (v6 > 62)
        {
          if (v6 == 255)
          {
            if (!v15)
            {
              os_unfair_lock_lock(&SingletonMetadata);
              v27 = *v25;
              v28 = *v25 & 7;
              if ((*v25 & 7) != 0)
              {
                goto LABEL_134;
              }

              goto LABEL_53;
            }
          }

          else
          {
            if (v6 != 63)
            {
              goto LABEL_182;
            }

            if (v15 <= 1)
            {
              os_unfair_lock_lock(&SingletonMetadata);
              v27 = *v25;
              v28 = *v25 & 7;
              if (v28 > 1)
              {
LABEL_134:
                LOBYTE(v82) = v28;
                *(&v82 + 1) = 0;
LABEL_148:
                v71 = &SingletonMetadata;
                goto LABEL_160;
              }

LABEL_53:
              LOBYTE(v82) = v28;
              v29 = v27 & 0xFFFFFFFFFFFFFFF0;
              if ((v27 & 8) != 0 && v29)
              {
                v30 = (v29 + 24);
                v31 = 32;
                goto LABEL_146;
              }

              v72 = 0;
              if (v29 && (v27 & 8) == 0)
              {
                v31 = 8;
                v30 = (v27 & 0xFFFFFFFFFFFFFFF0);
LABEL_146:
                v72 = *v30;
                v26 = *(v29 + v31);
              }

              *(&v82 + 1) = v72;
              v83 = v26;
              goto LABEL_148;
            }
          }
        }

        else if (v6)
        {
          if (v6 != 1)
          {
            goto LABEL_182;
          }

          if (v15 <= 2)
          {
            os_unfair_lock_lock(&SingletonMetadata);
            v27 = *v25;
            v28 = *v25 & 7;
            if (v28 > 2)
            {
              goto LABEL_134;
            }

            goto LABEL_53;
          }
        }

        else if (v15 <= 3)
        {
          os_unfair_lock_lock(&SingletonMetadata);
          v27 = *v25;
          v28 = *v25 & 7;
          if (v28 > 3)
          {
            goto LABEL_134;
          }

          goto LABEL_53;
        }

        goto LABEL_153;
      }

LABEL_5:
      LOBYTE(v82) = 4;
LABEL_6:
      *(&v82 + 1) = 0;
LABEL_7:
      v75 = v82;
      v76 = v83;
      v9 = __p;
      v10 = v78;
      if (__p != v78 - 16)
      {
        v11 = __p;
        for (i = __p; i != v78 - 16; i += 16)
        {
          if (*i == *(v78 - 2))
          {
            v13 = *(v78 - 1);
            if (v13 > 62)
            {
              if (v13 == 255)
              {
                if (!v75)
                {
                  goto LABEL_181;
                }
              }

              else
              {
                if (v13 != 63)
                {
                  goto LABEL_182;
                }

                if (v75 <= 1u)
                {
LABEL_181:
                  diagnoseMetadataDependencyCycle();
                }
              }
            }

            else if (v13)
            {
              if (v13 != 1)
              {
                goto LABEL_182;
              }

              if (v75 <= 2u)
              {
                goto LABEL_181;
              }
            }

            else if (v75 <= 3u)
            {
              goto LABEL_181;
            }
          }

          v11 += 16;
        }
      }

      if (!*(&v75 + 1))
      {
        goto LABEL_164;
      }
    }
  }

  v9 = __p;
  v10 = v78;
LABEL_164:
  if (v10 - v9 != 32)
  {
    goto LABEL_175;
  }

  v74 = *(v10 - 1);
  if (v74 <= 62)
  {
    if (!v74)
    {
      if (v75 > 3u)
      {
        goto LABEL_176;
      }

      goto LABEL_175;
    }

    if (v74 == 1)
    {
      if (v75 > 2u)
      {
        goto LABEL_176;
      }

LABEL_175:
      *&v82 = a4 & 0xFFFFFFFFFFFFFEFFLL;
      performOnMetadataCache<swift::MetadataResponse,swift_checkMetadataState::CheckStateCallbacks>(a3, &v82);
      v9 = __p;
      goto LABEL_176;
    }

    goto LABEL_182;
  }

  if (v74 == 255)
  {
    if (v75)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

  if (v74 != 63)
  {
LABEL_182:
    __break(1u);
    return;
  }

  if (v75 <= 1u)
  {
    goto LABEL_175;
  }

LABEL_176:
  if (v9)
  {
    v78 = v9;
    operator delete(v9);
  }
}

void std::vector<swift::MetadataDependency>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void checkAllocatorDebugEnvironmentVariables(void *a1, uint64_t a2, const char *a3, char *a4)
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    LibPrespecializedState::LibPrespecializedState();
  }

  if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable == 1)
  {
    memset(&InitialAllocationPool, 170, 0x10000uLL);
  }

  _swift_debug_metadataAllocationIterationEnabled = swift::runtime::environment::SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION_variable;
  if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION_variable)
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASP            X0, X1, X0, X1, [X8] }

    qword_1ED426028 = 0;
    unk_1ED426030 = 65520;
    v11 = AllocationPool;
    do
    {
      _X5 = unk_1ED412C98;
      __asm { CASP            X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v11;
      v11 = _X4;
    }

    while (!_ZF);
  }

  else if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_METADATA_BACKTRACE_LOGGING_variable == 1)
  {

    swift::warning(0, "Warning: SWIFT_DEBUG_ENABLE_METADATA_BACKTRACE_LOGGING without SWIFT_DEBUG_ENABLE_METADATA_ALLOCATION_ITERATION has no effect.\n", a3, a4);
  }
}

void *recordBacktrace(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3[0] = &unk_1EEEAC7C0;
  v3[1] = &v2;
  v4 = v3;
  swift::withCurrentBacktrace(v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

unsigned __int8 *checkScribble(unsigned __int8 *result, unint64_t a2)
{
  if (swift::runtime::environment::initializeToken == -1)
  {
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v3 = result;
    v4 = a2;
    LibPrespecializedState::LibPrespecializedState();
    a2 = v4;
    result = v3;
    if (!v4)
    {
      return result;
    }
  }

  if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_MALLOC_SCRIBBLE_variable)
  {
    v2 = result;
    do
    {
      if (*result != 170)
      {
        v5 = a2 > 0x10;
        if (a2 >= 0x10)
        {
          a2 = 16;
        }

        if (v5)
        {
          v6 = "...";
        }

        else
        {
          v6 = "";
        }

        v7 = result;
        __swift::__runtime::llvm::toHex(v2, a2, 0, &v11);
        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v11;
        }

        else
        {
          v10 = v11.__r_.__value_.__r.__words[0];
        }

        swift::fatalError(0, "corrupt metadata allocation arena detected at %p: %s%s", v8, v9, v7, v10, v6);
      }

      ++v2;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

BOOL swift::TargetMetadata<swift::InProcess>::satisfiesClassConstraint(uint64_t a1)
{
  v1 = *a1;
  if (*a1 == 771)
  {
    return (*(a1 + 8) & 0x80FFFFFF) == 0;
  }

  if (v1 > 0x7FF)
  {
    LODWORD(v1) = 0;
  }

  result = 1;
  if (v1)
  {
    return v1 == 515 || v1 == 773;
  }

  return result;
}

uint64_t swift_getKeyPath(swift *a1, uint64_t a2)
{
  if (swift_getKeyPath::Override == 1)
  {
    return swift_getKeyPathImpl(a1, a2);
  }

  if (swift_getKeyPath::Override)
  {
    return swift_getKeyPath::Override(a1, a2, swift_getKeyPathImpl);
  }

  return swift_getKeyPathSlow(a1, a2);
}

uint64_t swift_getKeyPathSlow(swift *a1, uint64_t a2)
{
  KeyPath = swift::getOverride_getKeyPath(a1);
  if (KeyPath)
  {
    swift_getKeyPath::Override = KeyPath;

    return (KeyPath)(a1, a2, swift_getKeyPathImpl);
  }

  else
  {
    swift_getKeyPath::Override = 1;

    return swift_getKeyPathImpl(a1, a2);
  }
}

void swift_getAssociatedTypeWitnessSlowImpl(uint64_t a1, int **a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v34 = a2;
  v32 = a4;
  v6 = (a2 + ((a5 - a4) & 0x7FFFFFFF8));
  explicit = atomic_load_explicit(v6, memory_order_acquire);
  if (explicit)
  {
    v8 = *(explicit & 0xFFFFFFFFFFFFFFFELL);
    if (v8 == 255)
    {
      v9 = ((explicit & 0xFFFFFFFFFFFFFFFELL) + 1);
    }

    else
    {
      v9 = (explicit & 0xFFFFFFFFFFFFFFFELL);
    }

    if (*v34)
    {
      v11 = *v34;
    }

    else
    {
      v11 = 0;
    }

    v31 = _ZNKR5swift27RelativeIndirectablePointerIKNS_24TargetProtocolDescriptorINS_9InProcessEEELb1EiU9__ptrauthILj2ELb1ELj44678EEPS3_EcvPS4_Ev(v11);
    SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v9, v12);
    v15 = v14;
    v30[0] = SymbolicMangledNameStringRef;
    v30[1] = v14;
    v47 = 1;
    v45 = "freshly constructed error";
    v46 = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    if (v8 == 255)
    {
      v44[0] = &unk_1EEEAC808;
      v44[1] = v33;
      v44[3] = v44;
      operator new();
    }

    ConformingSuperclass = swift::findConformingSuperclass(v33, v11);
    swift::SubstGenericParametersFromMetadata::SubstGenericParametersFromMetadata(&v40, ConformingSuperclass);
    v36[0] = &unk_1EEEAC898;
    v36[1] = &v40;
    v36[3] = v36;
    v35[0] = &unk_1EEEAC8E0;
    v35[1] = &v40;
    v35[3] = v35;
    swift_getTypeByMangledName(v37, a1, SymbolicMangledNameStringRef, v15, v41, v36, v35);
    swift::TypeLookupErrorOr<swift::TypeInfo>::operator=(&v45, v37);
    if (v39 == 1)
    {
      (v37[1])(v37[0], 3, 0);
    }

    std::function<swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::~function(v35);
    std::function<void const* ()(unsigned int,unsigned int)>::~function(v36);
    if (v42 != &v43)
    {
      free(v42);
    }

    if (v47)
    {
      if (v47 == 1)
      {
        v17 = (v46)(v45, 0, 0);
        goto LABEL_22;
      }
    }

    else if (v45)
    {
      if (!v46)
      {
        atomic_store(v45, v6);
      }

      return;
    }

    v17 = "NULL metadata but no error was provided";
LABEL_22:
    v29[0] = swift_getTypeName(v33, 1);
    v29[1] = v18;
    v28[0] = findAssociatedTypeName(v31, a5);
    v28[1] = v19;
    v20 = &v40;
    __swift::__runtime::llvm::StringRef::str(v28, &v40);
    if (v41 < 0)
    {
      v20 = v40;
    }

    v21 = v37;
    __swift::__runtime::llvm::StringRef::str(v29, v37);
    if (v38 < 0)
    {
      v21 = v37[0];
    }

    v22 = &v31[*(v31 + 2) + 8];
    __swift::__runtime::llvm::StringRef::str(v30, v26);
    if (v27 >= 0)
    {
      v25 = v26;
    }

    else
    {
      v25 = v26[0];
    }

    swift::fatalError(0, "failed to demangle witness for associated type '%s' in conformance '%s: %s' from mangled name '%s' - %s\n", v23, v24, v20, v21, v22, v25, v17);
  }
}

void swift_getAssociatedTypeWitnessSlowSlow(swift *a1, int **a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  AssociatedTypeWitnessSlow = swift::getOverride_getAssociatedTypeWitnessSlow(a1);
  if (AssociatedTypeWitnessSlow)
  {
    swift_getAssociatedTypeWitnessSlow::Override = AssociatedTypeWitnessSlow;

    (AssociatedTypeWitnessSlow)(a1, a2, a3, a4, a5, swift_getAssociatedTypeWitnessSlowImpl);
  }

  else
  {
    swift_getAssociatedTypeWitnessSlow::Override = 1;

    swift_getAssociatedTypeWitnessSlowImpl(a1, a2, a3, a4, a5);
  }
}

uint64_t swift_getAssociatedConformanceWitnessSlowImpl(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = (a1 + ((a5 - a4) & 0x7FFFFFFF8));
  result = atomic_load_explicit(v6, memory_order_acquire);
  if ((*a5 & 0xF) != 0)
  {
    v8 = result;
    if ((result & 1) == 0)
    {
      return result;
    }

    v9 = a3;
    v10 = a2;
    v11 = a5;
  }

  else
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    v9 = a3;
    v10 = a2;
    v11 = a5;
    v8 = result;
  }

  if (*(v8 & 0xFFFFFFFFFFFFFFFELL) == 255)
  {
    v12 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 1);
  }

  else
  {
    v12 = (v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v12, a2);
  if (v13 == 5 && *result - 7 <= 1)
  {
    v14 = *(result + 1);
    if (v14)
    {
      result = ((v14 + result + 1))(v9, v10, a1);
    }

    else
    {
      result = MEMORY[0](v9, v10, a1);
    }

    v15 = result;
    if ((*v11 & 0xF) != 0)
    {
      v15 = result;
    }

    atomic_store(v15, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t swift_getAssociatedConformanceWitnessSlowSlow(swift *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  AssociatedConformanceWitnessSlow = swift::getOverride_getAssociatedConformanceWitnessSlow(a1);
  if (AssociatedConformanceWitnessSlow)
  {
    swift_getAssociatedConformanceWitnessSlow::Override = AssociatedConformanceWitnessSlow;

    return (AssociatedConformanceWitnessSlow)(a1, a2, a3, a4, a5, swift_getAssociatedConformanceWitnessSlowImpl);
  }

  else
  {
    swift_getAssociatedConformanceWitnessSlow::Override = 1;
    v13 = (a1 + ((a5 - a4) & 0x7FFFFFFF8));
    result = atomic_load_explicit(v13, memory_order_acquire);
    if ((*a5 & 0xF) != 0)
    {
      v14 = result;
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      if ((result & 1) == 0)
      {
        return result;
      }

      v14 = result;
    }

    if (*(v14 & 0xFFFFFFFFFFFFFFFELL) == 255)
    {
      v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 1);
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v15, v11);
    if (v16 == 5 && *result - 7 <= 1)
    {
      v17 = *(result + 1);
      if (v17)
      {
        result = ((v17 + result + 1))(a3, a2, a1);
      }

      else
      {
        result = MEMORY[0](a3, a2, a1);
      }

      v18 = result;
      if ((*a5 & 0xF) != 0)
      {
        v18 = result;
      }

      atomic_store(v18, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *swift_cvw_allocateGenericValueMetadataWithLayoutStringSlow(swift *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  GenericValueMetadataWithLayoutString = swift::getOverride_cvw_allocateGenericValueMetadataWithLayoutString(a1);
  if (GenericValueMetadataWithLayoutString)
  {
    swift_cvw_allocateGenericValueMetadataWithLayoutString::Override = GenericValueMetadataWithLayoutString;

    return (GenericValueMetadataWithLayoutString)(a1, a2, a3, a4, swift_cvw_allocateGenericValueMetadataWithLayoutStringImpl);
  }

  else
  {
    swift_cvw_allocateGenericValueMetadataWithLayoutString::Override = 1;

    return swift_allocateGenericValueMetadata(a1, a2, a3, a4);
  }
}

double swift_cvw_initStructMetadataWithLayoutStringImpl(uint64_t *a1, __int16 a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = 0uLL;
  v67 = 0.0;
  if (a3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    LOBYTE(v15) = 1;
    LOBYTE(v16) = 1;
    LOBYTE(v17) = 1;
    do
    {
      v18 = *(a4 + 8 * v11);
      if (!*(a5 + v11))
      {
        v18 = *(v18 - 8) + 64;
      }

      v19 = *(v18 + 16);
      v20 = v19;
      v21 = (v12 + v20) & ~v20;
      if (*(a6 + 4 * v11) != v21)
      {
        *(a6 + 4 * v11) = v21;
        v19 = *(v18 + 16);
        v20 = v19;
      }

      v12 = *v18 + v21;
      if (v13 <= v20)
      {
        v13 = v20;
      }

      v15 = ((v19 & 0x10000) == 0) & v15;
      v16 = ((v19 & 0x100000) == 0) & v16;
      v17 = ((v19 & 0x1100000) == 0) & v17;
      v11 = v14++;
    }

    while (v11 != a3);
    if (v15)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0x10000;
    }

    if (v17)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0x1000000;
    }

    if (v13 >= 8 || v12 >= 0x19)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16;
    }

    *&v66 = v12;
    v26 = v13 & 0xFEECFFFF;
    if (!v16)
    {
      v27 = 0x100000;
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 0;
    v12 = 0;
    v22 = 0;
    v23 = 0;
    v13 = 0;
    v25 = 1;
  }

  v27 = 0;
LABEL_26:
  if (v25)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x20000;
  }

  *&v67 = v23 | v26 | v27 | v22 | v28;
  v29 = (v12 + v13) & ~v13;
  if (v29 <= 1)
  {
    v29 = 1;
  }

  *(&v66 + 1) = v29;
  if (a3)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 1;
    do
    {
      if (*(a5 + v30))
      {
        if (*(a5 + v30) < 5u)
        {
          v32 += 8;
        }

        v35 = *(*(a4 + 8 * v30) + 20);
        if (v35 > v31)
        {
          v31 = v35;
        }
      }

      else
      {
        v34 = *(a4 + 8 * v30);
        if (*(*(v34 - 1) + 84) > v31)
        {
          v31 = *(*(v34 - 1) + 84);
        }

        v32 += _swift_refCountBytesForMetatype(v34);
      }

      v30 = v33++;
    }

    while (v30 < a3);
  }

  else
  {
    v32 = 0;
    v31 = 0;
  }

  LOWORD(v64) = 26;
  v36 = swift::MetadataAllocator::Allocate(&v64, (v32 + 31) & 0xFFFFFFFFFFFFFFF8, 1uLL);
  v37 = v36;
  *(v36 + 1) = v32;
  v38 = 16;
  v64 = v36;
  v65 = 16;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  if (a3)
  {
    v39 = 0;
    v40 = 1;
    do
    {
      v42 = *(a5 + v39);
      if (*(a5 + v39))
      {
        v43 = *(a4 + 8 * v39);
        v44 = (v63 + *(v43 + 16)) & ~*(v43 + 16);
        v45 = v44 - v63 + v62;
        if (v42 <= 4)
        {
          if (v42 >= 3)
          {
            v46 = 0x700000000000000;
          }

          else
          {
            v46 = 0x600000000000000;
          }

          v47 = v65;
          *&v64[v65] = v45 | v46;
          v65 = v47 + 8;
          v45 = -8;
        }

        v41 = *v43;
        v62 = v41 + v45;
        v63 = v41 + v44;
      }

      else
      {
        _swift_addRefCountStringForMetatype(&v64, &v61, *(a4 + 8 * v39), &v63, &v62);
      }

      v39 = v40++;
    }

    while (v39 < a3);
    v48 = v62;
    v49 = v64;
    v38 = v65;
    v50 = v61 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v50 = 0;
    v48 = 0;
    v49 = v36;
  }

  *(v49 + v38) = v48;
  *v49 = v50;
  v65 = 8;
  v51 = *a1;
  if (*a1 > 0x7FF)
  {
    LODWORD(v51) = 0;
  }

  v52 = -16;
  if (v51 == 773)
  {
    v52 = -24;
  }

  if (v51 == 515)
  {
    v52 = -24;
  }

  if (v51)
  {
    v53 = v52;
  }

  else
  {
    v53 = -24;
  }

  *(a1 + v53) = v37 | 1;
  v56 = *(a1 - 1);
  v55 = (a1 - 1);
  v54 = v56;
  if (!v56)
  {
    v57 = 0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_68;
    }

LABEL_70:
    v58 = v57;
    goto LABEL_71;
  }

  v57 = v54;
  if ((a2 & 0x100) != 0)
  {
    goto LABEL_70;
  }

LABEL_68:
  v68 = 12;
  v58 = swift::MetadataAllocator::Allocate(&v68, 0x58uLL, 8uLL);
  *v58 = *v57;
  *(v58 + 1) = *(v57 + 8);
  *(v58 + 2) = *(v57 + 16);
  *(v58 + 3) = *(v57 + 24);
  *(v58 + 4) = *(v57 + 32);
  *(v58 + 5) = *(v57 + 40);
  *(v58 + 6) = *(v57 + 48);
  *(v58 + 7) = *(v57 + 56);
  v59 = *(v57 + 64);
  *(v58 + 10) = *(v57 + 80);
  *(v58 + 4) = v59;
  *v55 = v58;
LABEL_71:
  HIDWORD(v67) = v31;
  swift::installCommonValueWitnesses(&v66, v58);
  *(v58 + 4) = v66;
  result = v67;
  *(v58 + 10) = v67;
  return result;
}

double swift_cvw_initStructMetadataWithLayoutStringSlow(swift *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Override_cvw_initStructMetadataWithLayoutString = swift::getOverride_cvw_initStructMetadataWithLayoutString(a1);
  if (Override_cvw_initStructMetadataWithLayoutString)
  {
    swift_cvw_initStructMetadataWithLayoutString::Override = Override_cvw_initStructMetadataWithLayoutString;

    (Override_cvw_initStructMetadataWithLayoutString)(a1, a2, a3, a4, a5, a6, swift_cvw_initStructMetadataWithLayoutStringImpl);
  }

  else
  {
    swift_cvw_initStructMetadataWithLayoutString::Override = 1;

    return swift_cvw_initStructMetadataWithLayoutStringImpl(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

char *swift_cvw_allocateGenericClassMetadataWithLayoutStringSlow(swift *a1, const void *a2, uint64_t a3)
{
  GenericClassMetadataWithLayoutString = swift::getOverride_cvw_allocateGenericClassMetadataWithLayoutString(a1);
  if (GenericClassMetadataWithLayoutString)
  {
    swift_cvw_allocateGenericClassMetadataWithLayoutString::Override = GenericClassMetadataWithLayoutString;

    return (GenericClassMetadataWithLayoutString)(a1, a2, a3, swift_cvw_allocateGenericClassMetadataWithLayoutStringImpl);
  }

  else
  {
    swift_cvw_allocateGenericClassMetadataWithLayoutString::Override = 1;

    return swift_allocateGenericClassMetadata(a1, a2, a3);
  }
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(a1);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(a1);
  if (v4)
  {
    v5 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v4 - 2);
    if (a1)
    {
LABEL_3:
      v6 = a1;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  if ((*v6 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = (*(v9 + 29) >> 2) & 1;
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = a1;
LABEL_14:
  if ((*v8 & 0x80) != 0 && (!a1 ? (v10 = 0) : (v10 = a1), (*(v10 + 29) & 4) != 0 && (!a1 ? (v11 = 0) : (v11 = a1), (*v11 & 0x80) != 0 && (!a1 ? (v12 = 0) : (v12 = a1), (*(v12 + 29) & 4) != 0))))
  {
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    v16 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v15);
    v17 = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(v15);
    if (v18)
    {
      v19 = *(v17 + 2 * v18 - 2);
    }

    else
    {
      v19 = 0;
    }

    v13 = *(v16 + 12 * v19);
  }

  else
  {
    v13 = 0;
  }

  return TrailingObjectsImpl + 12 * v5 + 4 * v7 + 4 * v13;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(a1);
  v3 = a1;
  if ((*a1 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = (*(v6 + 29) >> 1) & 1;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v3;
  if ((*v5 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v5)
  {
    v5 = 0;
  }

  if ((*(v5 + 29) & 2) != 0)
  {
    v8 = TrailingObjectsImpl;
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    v10 = vcnt_s8(*swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v9));
    v10.i16[0] = vaddlv_u8(v10);
    v7 = v10.u32[0];
    TrailingObjectsImpl = v8;
  }

  else
  {
LABEL_13:
    v7 = 0;
  }

  return (TrailingObjectsImpl + 2 * v4 + 2 * v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(a1);
  if ((*a1 & 0x80) == 0 || (!a1 ? (v3 = 0) : (v3 = a1), (*(v3 + 29) & 1) == 0 || (!a1 ? (v4 = 0) : (v4 = a1), (*v4 & 0x80) == 0 || (!a1 ? (v5 = 0) : (v5 = a1), (*(v5 + 29) & 1) == 0))))
  {
    v6 = 0;
    return TrailingObjectsImpl + 8 * v6;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v8 == -44)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 + 11;
    if (!v8)
    {
      v8 = 0;
    }
  }

  v11 = *v8;
  if ((v11 & 0x80) != 0)
  {
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v12 = *(v14 + 26);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_26:
  v13 = v9;
LABEL_32:
  if ((*v13 & 0x80) != 0)
  {
    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    v15 = *(v16 + 27);
  }

  else
  {
    v15 = 0;
  }

  v6 = *(((&v10[4 * ((v11 >> 7) & 1)] + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v15);
  return TrailingObjectsImpl + 8 * v6;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  if (a1 == -44)
  {
    v1 = 0;
    goto LABEL_3;
  }

  v1 = a1 + 44;
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

    v4 = *(v6 + 26);
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

    v7 = *(v9 + 27);
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

    v10 = *(v11 + 29) & 1;
  }

  else
  {
    v10 = 0;
  }

  return (&v1[16 * ((v3 >> 7) & 1) + 3 + v4] & 0xFFFFFFFFFFFFFFFCLL) + 12 * v7 + 4 * v10;
}

unint64_t swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(_BYTE *a1)
{
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

  if ((*(v2 + 29) & 2) == 0)
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

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v4);
  if ((*v4 & 0x80) != 0)
  {
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    v6 = (*(v8 + 29) >> 1) & 1;
    if (a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if (a1)
    {
LABEL_15:
      v7 = a1;
      goto LABEL_21;
    }
  }

  v7 = 0;
LABEL_21:
  result = TrailingObjectsImpl + 2 * v6;
  if ((*v7 & 0x80) != 0)
  {
    if (!v7)
    {
      v7 = 0;
    }

    if ((*(v7 + 29) & 2) != 0)
    {
      v9 = result;
      if (a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = 0;
      }

      vaddlv_u8(vcnt_s8(*swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v10)));
      return v9;
    }
  }

  return result;
}

uint64_t swift_objc_classCopyFixupHandler(uint64_t result, objc_class *a2)
{
  if ((*(result + 32) & 2) != 0)
  {
    if (*(result - 8))
    {
      v2 = *(result - 8);
    }

    else
    {
      v2 = 0;
    }

    *(a2 - 1) = v2;
    if (*(result - 16))
    {
      v3 = (a2 - 16);
      v4 = *(result - 16);
    }

    else
    {
      v4 = 0;
      v3 = (a2 - 16);
    }

    *v3 = v4;
    v5 = result;
    v32 = result;
    while ((*(v5 + 32) & 2) != 0)
    {
      v6 = *(v5 + 64);
      if (v6)
      {
        v7 = *(v5 + 64);
        if ((*v6 & 0x80000000) != 0)
        {
          v8 = *(v5 + 64);
          TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v8);
          v10 = *v8;
          v11 = *v8;
          if ((*v8 & 0x80000000) != 0)
          {
            v12 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v8) + 4 * ((*v8 >> 29) & 1) + 4 * ((*v8 & 0x30000) == 0x20000) + 12 * ((*v8 & 0x30000) == 0x10000) + ((*v8 >> 28) & 8);
            v11 = *v8;
            if ((*v8 & 0x80000000) != 0)
            {
              swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v8);
              v11 = *v8;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = (TrailingObjectsImpl + 4 * ((v10 >> 29) & 1) + 4 * ((v10 & 0x30000) == 0x20000) + 12 * ((v10 & 0x30000) == 0x10000));
          if ((v11 & 0x20000000) != 0)
          {
            v17 = v8[6];
            if (v17)
            {
              v18 = (v8 + v17 + 24);
            }

            else
            {
              v18 = 0;
            }

            explicit = atomic_load_explicit(v18, memory_order_acquire);
            result = v32;
            v16 = a2;
            if (!explicit)
            {
              computeMetadataBoundsFromSuperclass(v7, v18);
              result = v32;
              explicit = v20;
            }

            v14 = *v13;
            v15 = *v13 + (explicit >> 3);
            if ((*v8 & 0x20000000) != 0)
            {
              v21 = v8[6];
              if (v21)
              {
                v22 = (v8 + v21 + 24);
              }

              else
              {
                v22 = 0;
              }

              v23 = atomic_load_explicit(v22, memory_order_acquire);
              if (!v23)
              {
                v24 = result;
                computeMetadataBoundsFromSuperclass(v7, v22);
                result = v24;
                v23 = v25;
              }

              v14 = *v13 + (v23 >> 3);
            }
          }

          else
          {
            v14 = *v13;
            v15 = *v13;
            result = v32;
            v16 = a2;
          }

          v26 = v13[1];
          if (v26)
          {
            v27 = (result + 8 * v15);
            v28 = v14;
            v29 = (v16 + 8 * v14);
            v30 = v27;
            v31 = v16 + 8 * v28;
            do
            {
              v12 += 8;
              *v29++ = *v27;
              ++v30;
              ++v27;
              v31 += 8;
              --v26;
            }

            while (v26);
          }
        }
      }

      if (!*(v5 + 8))
      {
        break;
      }

      v5 = *(v5 + 8);
    }
  }

  return result;
}