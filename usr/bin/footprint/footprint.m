void sub_100001AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001AE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001B00(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (([v5 isKernelPageTableMemory] & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 24);
    v7 = [v5 address];
    v9 = v6 && (v8 = *(v6 + 24), v8 <= v7) && *(v6 + 32) + v8 > v7;
    memset(v47, 0, sizeof(v47));
    v46 = 0u;
    v45 = 0u;
    v42[0] = *&v5[OBJC_IVAR___VMUVMRegion_prot];
    v42[1] = *&v5[OBJC_IVAR___VMUVMRegion_maxProt];
    v42[2] = 0;
    v43 = *&v5[OBJC_IVAR___VMUVMRegion_offset];
    v44 = *&v5[OBJC_IVAR___VMUVMRegion_user_tag];
    v10 = *&v5[OBJC_IVAR___VMUVMRegion_resident_size];
    if (v9)
    {
      *&v45 = __PAIR64__(*&v5[OBJC_IVAR___VMUVMRegion_shared_now_private_size], v10);
      DWORD2(v45) = *&v5[OBJC_IVAR___VMUVMRegion_swapped_out_size];
      v11 = *&v5[OBJC_IVAR___VMUVMRegion_dirty_size];
    }

    else
    {
      LODWORD(v45) = v10 / [*(a1 + 32) pageSize];
      v12 = *&v5[OBJC_IVAR___VMUVMRegion_shared_now_private_size];
      DWORD1(v45) = v12 / [*(a1 + 32) pageSize];
      v13 = *&v5[OBJC_IVAR___VMUVMRegion_swapped_out_size];
      DWORD2(v45) = v13 / [*(a1 + 32) pageSize];
      v14 = *&v5[OBJC_IVAR___VMUVMRegion_dirty_size];
      v11 = v14 / [*(a1 + 32) pageSize];
    }

    v15 = *&v5[OBJC_IVAR___VMUVMRegion_ref_count];
    HIDWORD(v45) = v11;
    LODWORD(v46) = v15;
    WORD2(v46) = 0;
    BYTE6(v46) = v5[OBJC_IVAR___VMUVMRegion_external_pager];
    BYTE7(v46) = v5[OBJC_IVAR___VMUVMRegion_share_mode];
    *(&v46 + 1) = v5[OBJC_IVAR___VMUVMRegion_is_submap] & 1;
    v16 = *&v5[OBJC_IVAR___VMUVMRegion_object_id];
    *v47 = v16;
    *&v47[4] = (v5[OBJC_IVAR___VMUVMRegion_is_wired] & 0x10) != 0;
    v17 = *&v5[OBJC_IVAR___VMUVMRegion_reusable_size];
    if (!v9)
    {
      v18 = [*(a1 + 32) pageSize];
      v16 = *&v5[OBJC_IVAR___VMUVMRegion_object_id];
      v17 /= v18;
    }

    *&v47[8] = v17;
    *&v47[12] = v16;
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v19 = objc_alloc_init(FPImage);
      v20 = *(*(a1 + 48) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }

    v22 = [v5 type];
    sub_10000AB00(*(*(*(a1 + 48) + 8) + 40), v22);
    v23 = *(*(*(a1 + 48) + 8) + 40);
    if (v23 && *(v23 + 8))
    {
      v24 = [v5 address];
      v25 = *(*(*(a1 + 48) + 8) + 40);
      if (v25)
      {
        *(v25 + 16) = v24;
      }

      v26 = [v5 length];
      v28 = *(*(*(a1 + 48) + 8) + 40);
      if (v28)
      {
        *(v28 + 24) = v26;
      }

      if (v9 && (v29 = *(*(*(a1 + 48) + 8) + 40)) != 0 && v29[8] == 4)
      {
        objc_setProperty_nonatomic_copy(v29, v27, @"dyld shared cache", 40);
      }

      else
      {
        v31 = [v5 path];
        v32 = *(*(*(a1 + 48) + 8) + 40);
        if (v32)
        {
          objc_setProperty_nonatomic_copy(v32, v30, v31, 40);
        }
      }

      [*(*(a1 + 32) + 144) addObject:*(*(*(a1 + 48) + 8) + 40)];
      v33 = *(*(a1 + 48) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = 0;
    }

    if (([v22 isEqualToString:@"commpage (reserved)"] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"GPU Carveout (reserved)") & 1) != 0 || *&v5[OBJC_IVAR___VMUVMRegion_user_tag] <= -2)
    {
      v35 = v22;
      v36 = 1;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    if (v5[OBJC_IVAR___VMUVMRegion_external_pager])
    {
      v37 = 1;
    }

    else
    {
      v37 = *&v5[OBJC_IVAR___VMUVMRegion_user_tag] == 88;
    }

    v38 = *(a1 + 40);
    v39 = [v5 address];
    v40 = [v5 length];
    if (v37)
    {
      v41 = *&v5[OBJC_IVAR___VMUVMRegion_path];
    }

    else
    {
      v41 = 0;
    }

    *a3 = (*(v38 + 16))(v38, v39, v40, v42, *&v5[OBJC_IVAR___VMUVMRegion_purgeable], v41, v35, v36);
  }
}

uint64_t sub_1000021AC(uint64_t result, unint64_t a2, unint64_t a3, __int128 *a4)
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 104);
    if (!v8)
    {
      v9 = objc_alloc_init(FPRangeList);
      v10 = *(v7 + 104);
      *(v7 + 104) = v9;

      v8 = *(v7 + 104);
    }

    return sub_10000A458(v8, a2, a3, a4);
  }

  return result;
}

__CFString *sub_100002228(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 & 0xFFFFFFF0) == 0xF0)
  {
    if (qword_100034500 != -1)
    {
      dispatch_once(&qword_100034500, &stru_1000290C8);
    }

    v3 = *(&unk_1000344F8 + (a2 - 240) + 4);
LABEL_5:
    if (v3)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (a2 > 0xFF)
  {
    if (a2 == -1)
    {
      v3 = @"Owned physical footprint (unmapped)";
      goto LABEL_17;
    }
  }

  else
  {
    v4 = off_100028878[a2];
    if (v4)
    {
      v3 = v4;
      goto LABEL_17;
    }

    v3 = VMURegionTypeDescriptionForTagShareProtAndPager();
    if (![(__CFString *)v3 hasPrefix:@"Memory Tag"])
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v5 = [NSString stringWithFormat:@"tag %d", a2];
  v6 = v5;
  v7 = @"unknown";
  if (v5)
  {
    v7 = v5;
  }

  v3 = v7;

LABEL_17:

  return v3;
}

void sub_100002364(id a1)
{
  for (i = 0; i != 16; ++i)
  {
    v2 = [[NSString alloc] initWithFormat:@"app-specific tag %d", i + 1];
    v3 = &unk_1000344F8 + 8 * i;
    v4 = *(v3 + 4);
    *(v3 + 4) = v2;
  }
}

id sub_1000023E4(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  if (a2 > 5)
  {
    v3 = [[NSString alloc] initWithFormat:@"VM ledger tag %llu", a2];
  }

  else
  {
    v3 = qword_100029078[a2];
  }

  return v3;
}

BOOL sub_1000024E4(uint64_t a1, unint64_t a2)
{
  if (!a1 || *(a1 + 12) == -1 || (*(a1 + 8) & 2) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 10);
  v3 = v2 > 6;
  v4 = (1 << v2) & 0x4C;
  v5 = v3 || v4 == 0;
  if (!v5 || *(a1 + 9) - 5 > 0xFFFFFFFC)
  {
    return 0;
  }

  v6 = 0;
  if ((*(a1 + 8) & 8) == 0)
  {
    v8 = *(a1 + 88);
    if (v8 > a2)
    {
      v9 = *(a1 + 16);
      if (v9 != v8)
      {
        v10 = *(a1 + 24);
        if (v10 != v8)
        {
          v11 = *(a1 + 32);
          if (v11 != v8)
          {
            v12 = *(a1 + 40);
            if (v12 != v8)
            {
              return (v10 | v9 | v11 | v12) != 0;
            }
          }
        }
      }

      return 0;
    }
  }

  return v6;
}

BOOL sub_100002594(_BOOL8 result)
{
  if (result)
  {
    if ((*(result + 8) & 2) == 0)
    {
      return 0;
    }

    v1 = *(result + 9);
    if (v1 == 2 || v1 == 4)
    {
      return 0;
    }

    else
    {
      return *(result + 16) || *(result + 24) != 0;
    }
  }

  return result;
}

void sub_100002924(id a1)
{
  v1 = +[NSMapTable weakToStrongObjectsMapTable];
  v2 = qword_100034508;
  qword_100034508 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100002964()
{
  objc_opt_self();
  if (dyld_process_snapshot_get_shared_cache() && (dyld_shared_cache_is_mapped_private() & 1) == 0)
  {
    v14[0] = 0;
    v14[1] = 0;
    dyld_shared_cache_copy_uuid();
    v1 = [[NSUUID alloc] initWithUUIDBytes:v14];
    base_address = dyld_shared_cache_get_base_address();
    mapped_size = dyld_shared_cache_get_mapped_size();
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v1 hash] ^ base_address);
    os_unfair_lock_lock(&unk_1000345A0);
    v5 = sub_100002BC8();
    v0 = [v5 objectForKeyedSubscript:v4];

    if (!v0)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      dyld_shared_cache_for_each_file();
      v6 = v11[3];
      if (base_address < v6)
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }

      if (v6)
      {
        v7 = (base_address - v6);
      }

      else
      {
        v7 = 0;
      }

      v8 = sub_100002BC8();
      v0 = sub_100002CE0([FPSharedCache alloc], v1, base_address, mapped_size, v7);
      [v8 setObject:v0 forKeyedSubscript:{v4, _NSConcreteStackBlock, 3221225472, sub_100002C20, &unk_100029138, &v10}];

      _Block_object_dispose(&v10, 8);
    }

    os_unfair_lock_unlock(&unk_1000345A0);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_100002BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002BC8()
{
  objc_opt_self();
  v0 = qword_100034598;
  if (!qword_100034598)
  {
    v1 = objc_alloc_init(NSMutableDictionary);
    v2 = qword_100034598;
    qword_100034598 = v1;

    v0 = qword_100034598;
  }

  return v0;
}

uint64_t sub_100002C20(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v1 = *(result + 32);
    return dyld_shared_cache_for_file();
  }

  return result;
}

uint64_t sub_100002CAC(uint64_t a1)
{
  result = dyld_shared_cache_get_base_address();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id *sub_100002CE0(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = FPSharedCache;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      a1[3] = a3;
      a1[4] = a4;
      a1[5] = a5;
      *(a1 + 2) = 4096;
    }
  }

  return a1;
}

void sub_100002DF8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    sub_100002E74(a1, v7, v5);
  }
}

void sub_100002E74(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (a1)
  {
    if (*(a1 + 8))
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    [*(a1 + 16) addObject:v13];
    if (v13)
    {
      if (v5)
      {
        if (*(v13 + 12))
        {
          objc_opt_self();
          if ((byte_100038638 & 1) == 0)
          {
            if (*(a1 + 64) || (v13[8] & 2) == 0 && ((v12 = v13[10], v12 > 6) || ((1 << v12) & 0x4C) == 0) && v13[9] - 5 <= 0xFFFFFFFC)
            {
              v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 pid]);
              v7 = *(a1 + 64);
              if (!v7)
              {
                v8 = objc_alloc_init(NSMutableDictionary);
                v9 = *(a1 + 64);
                *(a1 + 64) = v8;

                v7 = *(a1 + 64);
              }

              v10 = [v7 objectForKeyedSubscript:v6];
              if (!v10)
              {
                v11 = *(a1 + 64);
                v10 = objc_alloc_init(NSMutableArray);
                [v11 setObject:v10 forKeyedSubscript:v6];
              }

              [v10 addObject:v13];
            }
          }
        }
      }
    }
  }
}

void sub_1000030C4(uint64_t a1, int a2)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 8))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if ([*(a1 + 16) count] < 2)
  {
    v14 = [*(a1 + 16) firstObject];
    v3 = v14;
    if (v14 && v14[6].super.isa)
    {
      v12 = [(FPRangeList *)v14 cleanSize];
      v10 = [(FPRangeList *)v3 dirtySize];
      v13 = [(FPRangeList *)v3 reclaimableSize];
      v11 = [(FPRangeList *)v3 swappedSize];
      v53 = [(FPRangeList *)v3 wiredSize];
    }

    else
    {
      v53 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 0;
    }
  }

  else
  {
    v3 = objc_alloc_init(FPRangeList);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v4 = *(a1 + 16);
    v5 = [v4 countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v79;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v79 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v78 + 1) + 8 * i);
          if (v9 && v9[12])
          {
            sub_10000A798(v3, v9);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v78 objects:v87 count:16];
      }

      while (v6);
    }

    sub_10000A8AC(v3, v77);
    v10 = v77[0];
    v11 = v77[1];
    v12 = v77[2];
    v13 = v77[3];
    v53 = v77[4];
  }

  if (a2)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v15 = *(a1 + 16);
    v16 = [v15 countByEnumeratingWithState:&v73 objects:v86 count:16];
    if (!v16)
    {

      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      *(a1 + 56) = v53;
      goto LABEL_69;
    }

    v17 = v16;
    v51 = v13;
    v52 = v12;
    v18 = *v74;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v74 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v73 + 1) + 8 * j);
        *(a1 + 24) += [v20 dirtySize];
        *(a1 + 32) += [v20 swappedSize];
      }

      v17 = [v15 countByEnumeratingWithState:&v73 objects:v86 count:16];
    }

    while (v17);
    goto LABEL_49;
  }

  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  if (*(a1 + 64) && sub_10000EDEC())
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v15 = [*(a1 + 64) objectEnumerator];
    v56 = [v15 countByEnumeratingWithState:&v69 objects:v85 count:16];
    if (v56)
    {
      v51 = v13;
      v52 = v12;
      v55 = *v70;
      do
      {
        for (k = 0; k != v56; k = k + 1)
        {
          if (*v70 != v55)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v69 + 1) + 8 * k);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v23 = v22;
          v24 = [v23 countByEnumeratingWithState:&v65 objects:v84 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = 0;
            v28 = *v66;
            do
            {
              for (m = 0; m != v25; m = m + 1)
              {
                if (*v66 != v28)
                {
                  objc_enumerationMutation(v23);
                }

                v30 = *(*(&v65 + 1) + 8 * m);
                v26 += [v30 dirtySize];
                v27 += [v30 swappedSize];
              }

              v25 = [v23 countByEnumeratingWithState:&v65 objects:v84 count:16];
            }

            while (v25);

            if (v26 > *(a1 + 24))
            {
              *(a1 + 24) = v26;
            }

            if (v27 > *(a1 + 32))
            {
              *(a1 + 32) = v27;
            }
          }

          else
          {
          }
        }

        v56 = [v15 countByEnumeratingWithState:&v69 objects:v85 count:16];
      }

      while (v56);
LABEL_49:

      *(a1 + 40) = v52;
      v31 = (a1 + 40);
      *(a1 + 48) = v51;
      v32 = (a1 + 48);
      *(a1 + 56) = v53;
      v33 = (a1 + 56);
      if (a2)
      {
        goto LABEL_69;
      }

      goto LABEL_54;
    }
  }

  *(a1 + 40) = v12;
  v31 = (a1 + 40);
  *(a1 + 48) = v13;
  v32 = (a1 + 48);
  *(a1 + 56) = v53;
  v33 = (a1 + 56);
LABEL_54:
  if ([*(a1 + 64) count] >= 2)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v34 = [*(a1 + 64) objectEnumerator];
    v35 = [v34 countByEnumeratingWithState:&v61 objects:v83 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v62;
LABEL_57:
      v38 = 0;
      while (1)
      {
        if (*v62 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v61 + 1) + 8 * v38);
        if ([v39 count] > 1)
        {
          goto LABEL_70;
        }

        v40 = [v39 firstObject];
        if ([v40 dirtySize] != *(a1 + 24) || objc_msgSend(v40, "swappedSize") != *(a1 + 32) || objc_msgSend(v40, "cleanSize") != *v31 || objc_msgSend(v40, "reclaimableSize") != *v32 || objc_msgSend(v40, "wiredSize") != *v33)
        {

          goto LABEL_70;
        }

        if (v36 == ++v38)
        {
          v36 = [v34 countByEnumeratingWithState:&v61 objects:v83 count:16];
          if (v36)
          {
            goto LABEL_57;
          }

          break;
        }
      }
    }

    *(a1 + 8) |= 2u;
  }

LABEL_69:
  v34 = *(a1 + 64);
  *(a1 + 64) = 0;
LABEL_70:

  if ((a2 & 1) == 0 && [a1 containsFakeRegion])
  {
    v41 = sub_1000037A4(a1);
    v42 = v41;
    if (!v41 || *(v41 + 12) != -1)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v43 = *(a1 + 16);
      v44 = [v43 countByEnumeratingWithState:&v57 objects:v82 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v58;
        do
        {
          for (n = 0; n != v45; n = n + 1)
          {
            if (*v58 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v57 + 1) + 8 * n);
            if (v48)
            {
              if (v48[3] == -1)
              {
                v49 = [v42 name];
                [v48 setName:v49];

                v50 = [v42 detailedName];
                [v48 setDetailedName:v50];
              }
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v57 objects:v82 count:16];
        }

        while (v45);
      }
    }
  }

  *(a1 + 8) |= 1u;
}

id sub_1000037A4(uint64_t a1)
{
  if (!a1)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v2 = [*(a1 + 16) firstObject];
  v3 = v2;
  if (v2 && (*(v2 + 8) & 2) != 0)
  {
    v4 = 1;
    goto LABEL_7;
  }

  if (*(a1 + 12) != -1)
  {
    v4 = 0;
LABEL_7:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(a1 + 16);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (v4)
          {
            if (!v10 || (*(v10 + 8) & 4) == 0)
            {
              goto LABEL_22;
            }
          }

          else if (!v10 || *(v10 + 12) != -1)
          {
LABEL_22:
            v11 = v10;

            goto LABEL_23;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = v3;
LABEL_23:

LABEL_24:

  return v11;
}

__CFString *sub_100004410(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = a2 + 64;
  if (*(a2 + 64))
  {
    v4 = 32;
LABEL_5:
    v7 = [[NSString alloc] initWithFormat:@"%.*s", v4, v3];
    goto LABEL_6;
  }

  v6 = *(a2 + 48);
  v5 = a2 + 48;
  if (v6)
  {
    v4 = 16;
    v3 = v5;
    goto LABEL_5;
  }

  v7 = @"Unknown";
LABEL_6:

  return v7;
}

void *sub_1000047A4(void *a1)
{
  *a1 = 0;
  v2 = proc_listallpids(0, 0);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = 4 * (v2 + 20);
  v4 = malloc_type_malloc(4 * (v2 + 20), 0x100004052888210uLL);
  v5 = proc_listallpids(v4, v3);
  if ((v5 & 0x80000000) != 0)
  {
    v14 = v4;
LABEL_15:
    free(v14);
    return 0;
  }

  v6 = v5;
  v7 = malloc_type_malloc(136 * v5, 0x1000040B5CA6940uLL);
  v8 = v7;
  if (!v6)
  {
    free(v4);
    goto LABEL_14;
  }

  v9 = 0;
  v10 = 0;
  v11 = 4 * v6;
  v12 = v7;
  do
  {
    v13 = *&v4[v9];
    if (proc_pidinfo(v13, 3, 0, v12, 136) != 136)
    {
      if (v13)
      {
        goto LABEL_9;
      }

      v12[16] = 0;
      *(v12 + 4) = xmmword_100023EC8;
      *(v12 + 5) = unk_100023ED8;
      *(v12 + 6) = xmmword_100023EE8;
      *(v12 + 7) = unk_100023EF8;
      *v12 = xmmword_100023E88;
      *(v12 + 1) = unk_100023E98;
      *(v12 + 2) = xmmword_100023EA8;
      *(v12 + 3) = unk_100023EB8;
    }

    ++v10;
    v12 += 17;
LABEL_9:
    v9 += 4;
  }

  while (v11 != v9);
  free(v4);
  if (!v10)
  {
LABEL_14:
    v14 = v8;
    goto LABEL_15;
  }

  *a1 = v10;
  return v8;
}

uint64_t sub_100005308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_12;
  }

  v8 = 0;
  kcd_addr_begin = 0;
  if (task_map_corpse_info_64(mach_task_self_, a1, &kcd_addr_begin, &v8))
  {
LABEL_11:
    a1 = 0;
    goto LABEL_12;
  }

  v4 = kcd_addr_begin;
  v5 = v8 + kcd_addr_begin;
  v6 = kcd_addr_begin + 16;
  if (kcd_addr_begin + 16 > v8 + kcd_addr_begin || v6 + *(kcd_addr_begin + 4) > v5 || *kcd_addr_begin != -559025833)
  {
    vm_deallocate(mach_task_self_, kcd_addr_begin, v8);
    goto LABEL_11;
  }

  do
  {
    if (v6 + v4[1] > v5)
    {
      break;
    }

    if (*v4 == -242132755)
    {
      break;
    }

    v3[2](v3, v4, v5);
    v4 = (v6 + v4[1]);
    v6 = (v4 + 4);
  }

  while ((v4 + 4) <= v5);
  vm_deallocate(mach_task_self_, kcd_addr_begin, v8);
  a1 = 1;
LABEL_12:

  return a1;
}

void sub_100005D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_100005E30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && (*(a1 + 184) & 1) == 0)
  {
    v4 = __error();
    strerror_r(*v4, __strerrbuf, 0x100uLL);
    v5 = [NSString stringWithFormat:@"%@ - %s", v3, __strerrbuf];
    v6 = __stderrp;
    v7 = [a1 displayString];
    fprintf(v6, "%s: %s\n", [v7 UTF8String], objc_msgSend(v5, "UTF8String"));

    [*(a1 + 40) addObject:v5];
  }
}

void sub_100006474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1000064AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a3;
    v7 = 0;
    v37 = a4;
    v38 = a5 - 1;
    do
    {
      if (v7 | a4 || (*(a1 + 80) & 1) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a1 + 81);
      }

      v9 = 0;
      if (v38 == a4 && v5 == 1)
      {
        v9 = *(a1 + 82);
      }

      v10 = *(a2 + 4 * v7);
      v11 = *(a1 + 64);
      v12 = *(*(a1 + 48) + 8);
      v13 = *(*(a1 + 56) + 8);
      v14 = *(a1 + 32);
      if (v8)
      {
        if (v14)
        {
          v15 = v14[10];
          v16 = v14[11];
          v17 = v15 & -v11;
        }

        else
        {
          v17 = 0;
          v15 = 0;
          v16 = 0;
        }

        v11 = v11 - v15 + v17;
        if (v16 < v11)
        {
          goto LABEL_21;
        }
      }

      else if (v9)
      {
        if (v14)
        {
          v19 = v14[10];
          v18 = v14[11];
          v20 = v19 == -1 ? -1 : v18 + v19;
          v21 = (v11 + v20 - 1) & -v11;
        }

        else
        {
          v21 = 0;
          v20 = 0;
          v18 = 0;
        }

        v11 = v11 - v21 + v20;
        if (v18 < v11)
        {
LABEL_21:
          if (v14)
          {
            v11 = v14[11];
          }

          else
          {
            v11 = 0;
          }
        }
      }

      v22 = (v10 & 0x81) == 1 || (v10 & 8) != 0;
      if (v22 || (v12 = v13, (v10 & 0x10) != 0))
      {
        *(v12 + 24) += v11;
      }

      if ((v8 & 1) == 0)
      {
        goto LABEL_49;
      }

      v23 = *(*(a1 + 40) + 176);
      if (!v23)
      {
        goto LABEL_49;
      }

      v24 = *(a1 + 32);
      if (v24)
      {
        v24 = *(v24 + 80);
      }

      v25 = v23[10];
      if (v25 != -1)
      {
        v25 += v23[11];
      }

      if (v24 != v25)
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
        return;
      }

      v40 = 0;
      v41 = 0;
      v26 = *(a1 + 64);
      v27 = v23;
      v28 = v23[10];
      v29 = v27[11];
      if (v28 == -1)
      {
        v30 = -1;
      }

      else
      {
        v30 = v29 + v28;
      }

      v31 = v26 - ((v26 + v30 - 1) & -v26) + v30;
      if (v29 < v31)
      {
        v31 = v27[11];
      }

      if (v22)
      {
        v32 = &v41;
LABEL_47:
        *v32 = v31;
        v33 = v40;
        v34 = v41;
        goto LABEL_48;
      }

      if ((v10 & 0x10) != 0)
      {
        v32 = &v40;
        goto LABEL_47;
      }

      v33 = 0;
      v34 = 0;
LABEL_48:

      [*(*(a1 + 40) + 176) setDirtySize:{objc_msgSend(*(*(a1 + 40) + 176), "dirtySize") + v34}];
      [*(*(a1 + 40) + 176) setSwappedSize:{objc_msgSend(*(*(a1 + 40) + 176), "swappedSize") + v33}];
      v35 = *(a1 + 40);
      v36 = *(v35 + 176);
      *(v35 + 176) = 0;

LABEL_49:
      a4 = v37;
      if (v9)
      {
        *(*(a1 + 40) + 160) = *(a1 + 72) - *(a1 + 64);
        *(*(a1 + 40) + 168) = v10;
      }

      ++v7;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_100006768(uint64_t a1, mach_vm_offset_t a2, unint64_t a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    v8 = [a1 pageSize];
    if (a3 >= 0x1000)
    {
      v9 = 4096;
    }

    else
    {
      v9 = a3;
    }

    if (a3 + 4095 >= 0x1000)
    {
      v10 = v8;
      v11 = 0;
      v12 = (a3 + 4095) >> 12;
      v20[0] = v20;
      v20[1] = v7 + 16;
      v13 = v8 << 12;
      while (1)
      {
        v14 = a3 >= v9 ? v9 : a3;
        dispositions_count = v14;
        v15 = a1;
        v16 = *(a1 + 96);
        v17 = v10;
        v18 = mach_vm_page_range_query(v16, a2, v14 * v10, v20 - ((4 * v9 + 15) & 0xFFF0), &dispositions_count);
        if (v18)
        {
          break;
        }

        (*(v7 + 2))(v7, v20 - ((4 * v9 + 15) & 0xFFF0), dispositions_count, v11++, v12);
        a2 += v13;
        a3 -= 4096;
        v10 = v17;
        a1 = v15;
        if (v12 == v11)
        {
          a1 = 1;
          goto LABEL_15;
        }
      }

      sub_100006D50(v15, v18, @"mach_vm_page_range_query");
      a1 = 0;
    }

    else
    {
      a1 = 1;
    }
  }

LABEL_15:

  return a1;
}

void sub_100006D50(_BYTE *a1, mach_error_t a2, void *a3)
{
  v5 = a3;
  if (a1 && (a1[184] & 1) == 0)
  {
    a1[184] = 1;
    v6 = "";
    if ([a1 _isAlive])
    {
      memset(buffer, 0, sizeof(buffer));
      if (proc_pidinfo([a1 pid], 13, 1uLL, buffer, 64) == 64)
      {
        v7 = 0;
      }

      else
      {
        v7 = *__error();
      }

      v10 = v7 == 0;
      v11 = HIDWORD(buffer[0]) == 5;
      v8 = v10 && v11;
      v12 = !v10 || !v11;
      v13 = " (zombie)";
      if (v12)
      {
        v13 = "";
      }

      v9 = v7 == 3;
      if (v7 == 3)
      {
        v6 = " (process exited)";
      }

      else
      {
        v6 = v13;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v14 = [NSString stringWithFormat:@"%@ - %s%s", v5, mach_error_string(a2), v6];
    v15 = &OBJC_IVAR___FPProcess__warnings;
    if (!v8 && !v9)
    {
      v16 = __stderrp;
      v17 = [a1 displayString];
      fprintf(v16, "%s: bailing out due to error: %s\n", [v17 UTF8String], objc_msgSend(v14, "UTF8String"));

      v15 = &OBJC_IVAR___FPProcess__errors;
    }

    [*&a1[*v15] addObject:v14];
  }
}

void sub_1000070D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000070F8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 - 1 == a4)
  {
    v5 = a3 + 1;
  }

  else
  {
    v5 = a3;
  }

  if (v5)
  {
    v8 = result;
    for (i = 0; v5 != i; ++i)
    {
      if (i >= a3)
      {
        v11 = 0;
      }

      else
      {
        v10 = *(a2 + 4 * i);
        if ((v10 & 0x10) != 0)
        {
          v11 = 2;
        }

        else if ((*(v8 + 64) & v10) != 0)
        {
          v11 = 1;
        }

        else
        {
          v17 = (*(v8 + 68) & v10) == 0;
          v12 = 4 * (v10 & 1);
          if (v17)
          {
            v11 = v12;
          }

          else
          {
            v11 = 3;
          }
        }
      }

      v13 = *(v8 + 40);
      v14 = *(v13 + 8);
      v15 = *(v14 + 24);
      if (v15 != v11)
      {
        v16 = *(v8 + 48);
        v17 = !v15 || *(*(v16 + 8) + 40) == 0;
        if (!v17)
        {
          v23 = 0u;
          v24 = 0u;
          v22 = 0u;
          v18 = *(*(v13 + 8) + 24);
          if (v18 > 2)
          {
            if (v18 == 3)
            {
              *(&v23 + 1) = *(*(v16 + 8) + 40);
            }

            else if (v18 == 4)
            {
              *&v23 = *(*(v16 + 8) + 40);
            }
          }

          else
          {
            switch(v18)
            {
              case 1:
                *&v22 = *(*(v16 + 8) + 40);
                break;
              case 2:
                *(&v22 + 1) = *(*(v16 + 8) + 40);
                break;
              case 0:
                result = _os_crash();
                __break(1u);
                return result;
            }
          }

          v19 = *(v16 + 8);
          if (*(v8 + 72) == 1)
          {
            *&v24 = *(v19 + 40);
            v19 = *(v16 + 8);
          }

          result = sub_1000021AC(*(v8 + 32), *(v19 + 32), *(v19 + 40), &v22);
          v20 = *(*(v8 + 48) + 8);
          *(v20 + 32) += *(v20 + 40);
          *(v20 + 40) = 0;
          v14 = *(*(v8 + 40) + 8);
        }
      }

      *(v14 + 24) = v11;
      if (*(*(*(v8 + 40) + 8) + 24))
      {
        v21 = 40;
      }

      else
      {
        v21 = 32;
      }

      *(*(*(v8 + 48) + 8) + v21) += *(v8 + 56);
    }
  }

  return result;
}

uint64_t sub_1000072EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007304(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, void *a6, void *a7, int a8)
{
  v14 = a6;
  v15 = a7;
  v16 = *(a1 + 80);
  v17 = a3 + a2;
  v18 = v16 < a3 + a2 && *(a1 + 88) + v16 > a2;
  v103 = a2;
  if (!v18)
  {
    v100 = v15;
    v19 = objc_alloc_init(FPMemoryRegion);
    v20 = v19;
    if (v19)
    {
      v19->_start = a2;
      v19->_size = a3;
      v22 = (a4 + 68);
      v21 = *(a4 + 68);
      v23 = (a4 + 20);
      v19->_user_tag = *(a4 + 20);
      v19->_object_id = v21;
      v19->_share_mode = *(a4 + 47);
      v19->_offset = *(a4 + 12);
      LOBYTE(v21) = *(v19 + 8);
      *(v19 + 8) = v21 & 0xFD;
      v24 = v21 & 0xFC;
      if (*(a4 + 60))
      {
        ++v24;
      }

      *(v19 + 8) = v24;
    }

    else
    {
      v23 = (a4 + 20);
      v22 = (a4 + 68);
    }

    if (a5 == 2)
    {
      [(FPMemoryRegion *)v19 setDirtySize:0];
      v27 = v20;
      v26 = a3;
    }

    else
    {
      if (a5 != 1)
      {
        if (*(a4 + 46) || (*(a1 + 97) & 1) != 0)
        {
          v70 = *(a4 + 36);
        }

        else
        {
          v70 = *(a4 + 24) - *(a4 + 64);
        }

        -[FPMemoryRegion setDirtySize:](v19, "setDirtySize:", [*(a1 + 32) pageSize] * v70);
        [v20 setReclaimableSize:{objc_msgSend(*(a1 + 32), "pageSize") * *(a4 + 64)}];
        [v20 setSwappedSize:{objc_msgSend(*(a1 + 32), "pageSize") * *(a4 + 32)}];
        v71 = *(a4 + 24);
        v72 = *(a4 + 64) + v70;
        if (*(a1 + 97) == 1 && v71 < v72)
        {
          v73 = 0;
        }

        else
        {
          v73 = [*(a1 + 32) pageSize] * (v71 - v72);
        }

        a2 = v103;
        [v20 setCleanSize:v73];
        if (*v23 == -1)
        {
          if (*(*(a1 + 32) + 152))
          {
LABEL_177:

            v28 = 0;
LABEL_178:
            v15 = v100;
            goto LABEL_179;
          }

          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v20);
          if (v20 && !*v22)
          {
            *(v20 + 96) = *(a4 + 56);
          }
        }

LABEL_120:
        v74 = sub_10000AC8C(*(a1 + 48), a2, v17);
        if (v20)
        {
          *(v20 + 9) = 1;
        }

        if (a8)
        {
          [v20 setVerbose:1];
        }

        if (v74)
        {
          v75 = *(v74 + 32);
          [v20 setName:v75];

          v76 = *(v74 + 40);
          [v20 setDetailedName:v76];

          if (v20)
          {
            *(v20 + 9) = *(v74 + 8);
          }

          goto LABEL_169;
        }

        if (v100)
        {
          [v20 setName:?];
          goto LABEL_169;
        }

        if ((v14 || *(a4 + 46)) && *v23 != 88)
        {
          [v20 setName:@"mapped file"];
          [v20 setDetailedName:v14];
          goto LABEL_169;
        }

        if (a2 == 0xFC0000000 && a3 == 0x40000000)
        {
          v77 = @"commpage (reserved)";
LABEL_147:
          [v20 setName:v77];
          [v20 setVerbose:1];
          goto LABEL_169;
        }

        if (a2 == 0x1000000000 && a3 == 0x6000000000)
        {
          v77 = @"GPU Carveout (reserved)";
          goto LABEL_147;
        }

        v78 = sub_100002228(FPMemoryRegion, *v23);
        [v20 setName:v78];

        if (*(a1 + 98) == 1)
        {
          v79 = *v23;
          if (*v23 == 100 || v79 == 88)
          {
            if (v14)
            {
              [v20 setExtendedInfo:v14];
            }

            else if (v79 != 100 || *(a1 + 99) == 1)
            {
              v80 = *(a1 + 56);
              v81 = [*(a1 + 32) extendedInfoForRegionType:? at:? extendedInfoProvider:?];
              [v20 setExtendedInfo:v81];
            }
          }
        }

        if (*(a1 + 100) != 1)
        {
          goto LABEL_169;
        }

        v82 = [NSNumber numberWithUnsignedLongLong:*v22];
        v83 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:v82];
        v84 = *(*(a1 + 32) + 152);
        if (v83)
        {
          v85 = v82;
          [v84 removeObjectForKey:v82];
          if (v20)
          {
            *(v20 + 8) |= 8u;
          }

          v108 = 0;
          v109 = 0;
          v106 = 0;
          v107 = 0;
          v105 = 0;
          memset(v104, 0, sizeof(v104));
          [v83 getBytes:v104 length:56];
          sub_100007EA4(v104, &v109, &v108, &v107, &v106);
          v86 = sub_1000023E4(FPMemoryRegion, (v105 >> 1) & 7);
          if (v86)
          {
            v87 = [NSString alloc];
            v88 = [v20 name];
            v89 = [v87 initWithFormat:@"%@ (%@)", v88, v86];
            [v20 setName:v89];
          }

          v90 = v108;
          v91 = v109;
          v93 = v106;
          v92 = v107;
        }

        else
        {
          if (v84 || a5 == 3 || *v23 == 87 || !*(a4 + 24))
          {
            goto LABEL_168;
          }

          v85 = v82;
          [0 removeObjectForKey:v82];
          if (v20)
          {
            *(v20 + 8) |= 8u;
          }

          v95 = [v20 dirtySize];
          v91 = &v95[[v20 cleanSize]];
          v90 = [v20 swappedSize];
          v93 = 0;
          v92 = 0;
        }

        *(*(*(a1 + 72) + 8) + 24) += &v90[v91];
        [v20 setDirtySize:v91];
        [v20 setCleanSize:v92];
        [v20 setSwappedSize:v90];
        [v20 setReclaimableSize:v93];
        v82 = v85;
LABEL_168:

LABEL_169:
        if (*(a1 + 97) == 1 && (*(a1 + 101) & 1) == 0 && (*(a1 + 96) & 1) == 0 && sub_1000024E4(v20, [*(a1 + 32) pageSize]))
        {
          [*(a1 + 32) _addSubrangesForRegion:v20 purgeState:a5];
        }

        if (v20 != *(*(*(a1 + 64) + 8) + 40))
        {
          [*(a1 + 40) addObject:v20];
        }

        goto LABEL_177;
      }

      [(FPMemoryRegion *)v19 setDirtySize:0];
      v25 = *(a4 + 24);
      v26 = [*(a1 + 32) pageSize] * v25;
      a2 = v103;
      v27 = v20;
    }

    [v27 setReclaimableSize:v26];
    [v20 setSwappedSize:0];
    [v20 setCleanSize:0];
    goto LABEL_120;
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v100 = v15;
    v29 = *(a1 + 32);
    v30 = *(a1 + 48);
    v31 = *(a1 + 40);
    v102 = v30;
    if (!v29)
    {

      v28 = 1;
      goto LABEL_178;
    }

    v32 = v29[3];
    if (v32)
    {
      v33 = *(v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v98 = v14;
    v34 = [v29 pageSize];
    v35 = v29[22];
    v29[22] = 0;

    v36 = sub_10000AC8C(v102, v103, v17);
    if (v17 <= v103)
    {
      v69 = 0;
LABEL_142:

      v28 = 0;
LABEL_143:
      v14 = v98;
      goto LABEL_178;
    }

    v37 = 0;
    v99 = v33 - 1;
    v96 = -v33;
    v97 = v34 - 1;
    v38 = v103;
    while (1)
    {
      v39 = v36;
      if (v36 && v38 >= *(v36 + 16))
      {
        goto LABEL_64;
      }

      v40 = objc_alloc_init(FPMemoryRegion);
      v36 = v40;
      if (v40)
      {
        v40->_start = v38;
      }

      v41 = v17;
      if (v39)
      {
        if (*(v39 + 16) >= v17)
        {
          v41 = v17;
        }

        else
        {
          v41 = *(v39 + 16);
        }
      }

      if (v40)
      {
        start = v40->_start;
        v43 = v41 >= start;
        v44 = v41 - start;
        if (!v43)
        {
          goto LABEL_180;
        }

        v40->_size = v44;
        v40->_user_tag = *(a4 + 20);
        v40->_object_id = *(a4 + 68);
        v40->_share_mode = *(a4 + 47);
        v40->_offset = start - v103 + *(a4 + 12);
        *(v40 + 8) |= 2u;
        [(FPMemoryRegion *)v40 setName:@"unused dyld shared cache area"];
        v45 = *(v36 + 8) | 4;
        *(v36 + 8) = v45;
        v46 = v45 & 0xFE;
        if (*(a4 + 60))
        {
          ++v46;
        }

        *(v36 + 8) = v46;
        if (!v37)
        {
LABEL_40:
          if (!v39)
          {
            if (!v36)
            {
              goto LABEL_108;
            }

            *(v36 + 9) = 0;
            goto LABEL_55;
          }

          goto LABEL_41;
        }
      }

      else
      {
        [0 setName:@"unused dyld shared cache area"];
        if (!v37)
        {
          goto LABEL_40;
        }
      }

      v47 = v37[8];
      if (v47 == 2)
      {
        if (!v39)
        {
          v47 = 2;
          goto LABEL_47;
        }
      }

      else if (!v39 || v47 != 4)
      {
        goto LABEL_47;
      }

LABEL_41:
      v47 = *(v39 + 8);
      if (v47 == 4 || v47 == 2)
      {
        if (v37)
        {
          v48 = v37;
        }

        else
        {
          v48 = v39;
        }

        v47 = v48[8];
      }

LABEL_47:
      if (v36)
      {
        *(v36 + 9) = v47;
      }

      if (v47 != 2 && v47 != 4)
      {
        if (!v36)
        {
LABEL_108:
          v49 = 0;
          goto LABEL_57;
        }

LABEL_55:
        v49 = *(v36 + 80);
        if (v49 != -1)
        {
          v49 += *(v36 + 88);
        }

LABEL_57:
        if (((v49 | v38) & v97) != 0 && ![v29 _populateMemoryRegionWithPageQueries:v36 regionInfo:a4])
        {
          goto LABEL_150;
        }
      }

      [v31 addObject:v36];
      if (v36)
      {
        v50 = *(v36 + 80);
        if (v50 == -1)
        {

LABEL_141:
          v36 = v39;
          v69 = v37;
          goto LABEL_142;
        }

        v38 = *(v36 + 88) + v50;
      }

      else
      {
        v38 = 0;
      }

      if (!v39 || v38 >= v17)
      {
        goto LABEL_141;
      }

LABEL_64:
      v51 = objc_alloc_init(FPMemoryRegion);
      v52 = v51;
      if (v51)
      {
        v53 = *(v39 + 16);
        if (v53 <= v38)
        {
          v53 = v38;
        }

        v51->_start = v53;
        v54 = *(v39 + 24) + *(v39 + 16);
        if (v54 >= v17)
        {
          v54 = v17;
        }

        if (v54 < v53)
        {
LABEL_180:
          __assert_rtn("[FPMemoryRegion setEnd:]", "FPMemoryRegion.m", 185, "end >= self.start");
        }

        v51->_size = v54 - v53;
        if (v53 == -1)
        {
          v55 = -1;
        }

        else
        {
          v55 = v54;
        }
      }

      else
      {
        v55 = 0;
      }

      v56 = sub_10000AC8C(v102, v55, v17);
      v36 = v56;
      if (v39 == v56)
      {
LABEL_78:
        if (!v52)
        {
          goto LABEL_88;
        }

        v59 = v52->_start;
        goto LABEL_87;
      }

      if (v52)
      {
        v57 = v52->_start;
        if (v56)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v57 = 0;
        if (v56)
        {
LABEL_76:
          v58 = *(v56 + 16);
          goto LABEL_77;
        }
      }

      v58 = 0;
LABEL_77:
      if (((v58 | v57) & v99) != 0)
      {
        goto LABEL_78;
      }

      if (!v52)
      {
        goto LABEL_88;
      }

      v59 = v52->_start;
      if (v59 == -1)
      {
        v60 = -1;
      }

      else
      {
        v60 = v52->_size + v59;
      }

      v61 = (v60 + v99) & v96;
      v43 = v61 >= v59;
      v62 = v61 - v59;
      if (!v43)
      {
        goto LABEL_180;
      }

      v52->_size = v62;
LABEL_87:
      v52->_user_tag = *(a4 + 20);
      v52->_object_id = *(a4 + 68);
      v52->_share_mode = *(a4 + 47);
      v52->_offset = v59 - v103 + *(a4 + 12);
      *(v52 + 8) |= 2u;
LABEL_88:
      v63 = *(v39 + 32);
      [(FPMemoryRegion *)v52 setName:v63];

      v64 = *(v39 + 40);
      [(FPMemoryRegion *)v52 setDetailedName:v64];

      v65 = *(v39 + 8);
      if (v52)
      {
        v52->_segment = v65;
        v66 = *(v52 + 8) & 0xFE;
        if (*(a4 + 60))
        {
          ++v66;
        }

        *(v52 + 8) = v66;
      }

      if (v65 == 2 || v65 == 4)
      {
        v67 = v29[22];
        if (v67)
        {
          v29[22] = 0;
        }
      }

      else if (([v29 _populateMemoryRegionWithPageQueries:v52 regionInfo:a4] & 1) == 0)
      {

LABEL_150:
        v28 = 1;
        goto LABEL_143;
      }

      [v31 addObject:v52];
      if (v52)
      {
        v68 = v52->_start;
        if (v68 == -1)
        {
          v38 = -1;
        }

        else
        {
          v38 = v52->_size + v68;
        }
      }

      else
      {
        v38 = 0;
      }

      v69 = v39;

      v37 = v69;
      if (v38 >= v17)
      {
        goto LABEL_142;
      }
    }
  }

  v28 = 0;
LABEL_179:

  return v28;
}

uint64_t sub_100007EA4(uint64_t result, void *a2, void *a3, void *a4, void *a5)
{
  v8 = *(result + 48);
  if (v8)
  {
    v14 = *(result + 48);
    v12 = *(result + 16);
    v13[0] = *result;
    v13[1] = v12;
    v13[2] = *(result + 32);
    LOBYTE(v14) = v14 & 0xFE;
    result = sub_100007EA4(v13, a2, a3, a4);
    *a4 = *a3 + *a2;
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    if (*(result + 8) && ((v9 = (v8 >> 4) & 3, v9 != 3) ? (v10 = v9 == 0) : (v10 = 1), v10))
    {
      v11 = 0;
      *a2 = *(result + 16);
      *a3 = *(result + 40);
    }

    else
    {
      *a2 = *(result + 24);
      *a3 = 0;
      v11 = *(result + 16) - *(result + 24);
    }

    *a5 = v11;
    *a4 = 0;
  }

  return result;
}

void sub_10000847C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_1000072EC;
  v7[4] = sub_1000072FC;
  v8 = 0;
  v6 = *(a1 + 32);
  if ((dyld_image_for_each_segment_info() & 1) == 0 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = [NSString stringWithFormat:@"Unable to iterate over image segments"];
    v4 = __stderrp;
    v5 = [*(a1 + 32) displayString];
    fprintf(v4, "%s: %s\n", [v5 UTF8String], objc_msgSend(v3, "UTF8String"));

    [*(*(a1 + 32) + 40) addObject:v3];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  _Block_object_dispose(v7, 8);

  objc_autoreleasePoolPop(v2);
}

void sub_100008614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008630(void *a1, char *__s, unint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = strlen(__s);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      explicit = atomic_load_explicit((&unk_1000345A8 + v7), memory_order_acquire);
      v11 = explicit;

      if (explicit)
      {
        v8 = v11;
      }

      else
      {
        if (!v9)
        {
          v9 = [[NSString alloc] initWithBytes:__s length:v6 encoding:4];
        }

        v8 = 0;
        atomic_compare_exchange_strong((&unk_1000345A8 + v7), &v8, v9);
        if (!v8)
        {
          v14 = v15 = v9;
          v8 = v9;
          goto LABEL_18;
        }

        v12 = v8;
      }

      if ([(__CFString *)v8 length]== v6)
      {
        v13 = v55;
        if (([(__CFString *)v8 getCString:v55 maxLength:32 encoding:4]& 1) == 0)
        {
          v13 = [(__CFString *)v8 UTF8String];
        }

        if (!strncmp(v13, __s, v6))
        {
          v8 = v8;

          v9 = v8;
          goto LABEL_19;
        }
      }

      v7 += 8;
    }

    while (v7 != 128);
    if (v9)
    {
      goto LABEL_19;
    }

    v14 = [[NSString alloc] initWithBytes:__s length:v6 encoding:4];
LABEL_18:
    v9 = v14;
LABEL_19:
    v16 = a3;

    v17 = *(a1[4] + 24);
    if (v17 && (v18 = *(v17 + 24), v18 <= a3) && *(v17 + 32) + v18 > a3)
    {
      if ([(__CFString *)v9 isEqualToString:@"__LINKEDIT"])
      {
        v19 = *(*(a1[5] + 8) + 40);
        v20 = [NSNumber numberWithUnsignedLongLong:a3];
        LOBYTE(v19) = [v19 containsObject:v20];

        if (v19)
        {
LABEL_59:

          return;
        }

        v21 = *(*(a1[5] + 8) + 40);
        v22 = [NSNumber numberWithUnsignedLongLong:a3];
        [v21 addObject:v22];

        v23 = @"dyld shared cache";
LABEL_53:
        v48 = objc_alloc_init(FPImage);
        v49 = v48;
        if (v48)
        {
          v48->_start = v16;
          v48->_size = a4;
          if (v9)
          {
            v50 = v9;
          }

          else
          {
            v50 = @"unknown";
          }

          sub_10000AB00(v48, v50);
          objc_setProperty_nonatomic_copy(v49, v51, v23, 40);
        }

        else
        {
          if (v9)
          {
            v52 = v9;
          }

          else
          {
            v52 = @"unknown";
          }

          sub_10000AB00(0, v52);
        }

        [*(a1[4] + 144) addObject:v49];

        goto LABEL_59;
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = *(*(a1[6] + 8) + 40);
    if (!v25)
    {
      v26 = a1[7];
      file_path = dyld_image_get_file_path();
      if (file_path || (v28 = a1[7], (file_path = dyld_image_get_installname()) != 0))
      {
        v29 = file_path;
        if (v24)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = ((a3 >> 16) ^ (a3 >> 8) ^ (a3 >> 24) ^ a3) % 0x7FF;
          do
          {
            v34 = atomic_load_explicit(&qword_100034628[v33], memory_order_acquire);
            v35 = v34;

            if (v34)
            {
              v30 = v35;
            }

            else
            {
              if (!v32)
              {
                v32 = [[NSString alloc] initWithUTF8String:v29];
              }

              v30 = 0;
              atomic_compare_exchange_strong(&qword_100034628[v33], &v30, v32);
              if (!v30)
              {
                v40 = v46 = v32;
                v30 = v32;
                goto LABEL_49;
              }

              v36 = v30;
            }

            v37 = v55;
            if (([v30 getCString:v55 maxLength:1025 encoding:4] & 1) == 0)
            {
              v37 = [v30 UTF8String];
            }

            if (!strcmp(v37, v29))
            {
              v30 = v30;

              v32 = v30;
              goto LABEL_50;
            }

            v38 = ((v33 + 1) * 0x20040080100201uLL) >> 64;
            v33 = v33 + 1 - 2047 * ((v38 + ((v33 + 1 - v38) >> 1)) >> 10);
          }

          while (v31++ < 0x11);
          if (v32)
          {
            goto LABEL_50;
          }

          v40 = [[NSString alloc] initWithUTF8String:v29];
LABEL_49:
          v32 = v40;
LABEL_50:
          v16 = a3;

          v47 = *(a1[6] + 8);
          v41 = *(v47 + 40);
          *(v47 + 40) = v32;
        }

        else
        {
          v41 = [[NSString alloc] initWithUTF8String:file_path];
          v42 = [v41 stringByResolvingSymlinksInPath];
          v43 = *(a1[6] + 8);
          v44 = *(v43 + 40);
          *(v43 + 40) = v42;
        }
      }

      else
      {
        v45 = *(a1[6] + 8);
        v41 = *(v45 + 40);
        *(v45 + 40) = @"unknown dylib";
      }

      v25 = *(*(a1[6] + 8) + 40);
    }

    v23 = v25;
    goto LABEL_53;
  }
}

int64_t sub_100008B3C(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = v4[2];
    if (v5)
    {
LABEL_3:
      v7 = v5[2];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (v6 >= v7)
  {
    if (v4)
    {
      v9 = v4[2];
      if (v5)
      {
LABEL_8:
        v10 = v5[2];
LABEL_9:
        v8 = v9 > v10;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

  v8 = -1;
LABEL_10:

  return v8;
}

const char *__cdecl sub_100008DC4(id a1, int64_t a2)
{
  v2 = [NSNumber numberWithLongLong:a2];
  v3 = [v2 stringValue];
  v4 = [v3 UTF8String];

  return v4;
}

const char *__cdecl sub_100008E24(id a1, int64_t a2)
{
  v2 = "-";
  v3 = "N";
  if (a2 == 3)
  {
    v3 = "Y";
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

__CFString *sub_100009ED0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v10 = a3;
  objc_opt_self();
  v11 = *a2;
  if ((*a2 & 0x400) != 0)
  {
    v12 = [NSString stringWithUTF8String:a2 + 12];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  if (v11 > 1u)
  {
    if (v11 == 2)
    {
      if (a2[1])
      {
        CSSymbolicatorGetSymbolWithAddressAtTime();
        Name = CSSymbolGetName();
        if (Name)
        {
          v19 = [NSString stringWithUTF8String:Name];
          goto LABEL_28;
        }
      }

      if (!a2[2])
      {
        v13 = 0;
        goto LABEL_34;
      }

      [NSString stringWithFormat:@"site 0x%qx", a2[1], v22];
      v19 = LABEL_27:;
LABEL_28:
      v13 = v19;
      if (!v19)
      {
LABEL_33:
        v13 = @"unknown";
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (v11 != 3)
    {
LABEL_16:
      [NSString stringWithFormat:@"unknown site (0x%x, 0x%qx)", v11, a2[1]];
      goto LABEL_27;
    }

    v16 = a2[1];
    if (v16 > 0xE)
    {
      [NSString stringWithFormat:@"VM_KERN_COUNT_%llu", a2[1], v22];
      goto LABEL_27;
    }

    v12 = *(&off_100029AC0 + v16);
    goto LABEL_3;
  }

  if (!v11)
  {
    v17 = a2[1];
    if (v17 > 0xFF)
    {
LABEL_20:
      [NSString stringWithFormat:@"VM_KERN_MEMORY_%llu", v17, v22];
      goto LABEL_27;
    }

    v12 = off_1000292C0[v17];
    if (!v12)
    {
      v17 = a2[1];
      goto LABEL_20;
    }

LABEL_3:
    v13 = v12;
    goto LABEL_29;
  }

  if (v11 != 1)
  {
    goto LABEL_16;
  }

  v14 = [NSNumber numberWithUnsignedLongLong:a2[1]];
  v15 = [v10 objectForKeyedSubscript:v14];

  if (!v15 || ([v15 objectForKeyedSubscript:kCFBundleIdentifierKey], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [NSString stringWithFormat:@"unloaded kmod %llu", a2[1]];
  }

  if (!v13)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (a6)
  {
    if ((*a2 & 0x800) != 0 && *(a2 + 33) < a7)
    {
      v20 = [NSString stringWithFormat:@"%@[%.*s]", v13, 80, a6 + 80 * *(a2 + 33)];

      v13 = v20;
      if (!v20)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_34:

  return v13;
}

uint64_t sub_10000A458(uint64_t result, unint64_t a2, unint64_t a3, __int128 *a4)
{
  if (result)
  {
    v4 = result;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = *(a4 + 2);
    v6 = *a4;
    v7 = *(a4 + 24);
    v8 = 0;
    result = sub_10000A4B8(*(result + 8), v5);
    *(v4 + 8) = result;
  }

  return result;
}

uint64_t sub_10000A4B8(unint64_t *a1, unint64_t *a2)
{
  v3 = a1;
  v42 = a1;
  if (!a1)
  {
    v6 = &v42;
LABEL_19:
    v17 = malloc_type_malloc(0x40uLL, 0x1020040D3BB1902uLL);
    v18 = *(a2 + 2);
    v19 = a2[6];
    v20 = *a2;
    v17[1] = *(a2 + 1);
    v17[2] = v18;
    *v17 = v20;
    *(v17 + 6) = v19;
    *(v17 + 7) = v3;
LABEL_20:
    *v6 = v17;
    return v42;
  }

  v4 = *a2;
  v5 = a2[1] + *a2;
  v6 = &v42;
  while (1)
  {
    v7 = *v3;
    if (v5 <= *v3)
    {
      goto LABEL_19;
    }

    v8 = v3[1];
    v9 = v8 + v7;
    if (v4 < v8 + v7)
    {
      break;
    }

    v6 = (v3 + 7);
    v3 = v3[7];
LABEL_16:
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  if (v9 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8 + v7;
  }

  if (v7 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = *v3;
  }

  v12 = v10 - v11;
  if (!v12)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_49:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_50:
    _os_assert_log();
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (v12 < v8)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    if (sub_10000A9EC(v3, v4, v5, &v38))
    {
      v13 = malloc_type_malloc(0x40uLL, 0x1020040D3BB1902uLL);
      v14 = v41;
      v16 = v38;
      v15 = v39;
      v13[2] = v40;
      v13[3] = v14;
      *v13 = v16;
      v13[1] = v15;
      *(v13 + 7) = v3[7];
      v3[7] = v13;
    }

    goto LABEL_16;
  }

  v22 = a2[1];
  if (v12 < v22)
  {
    v23 = *(a2 + 1);
    v38 = *a2;
    v39 = v23;
    v24 = *(a2 + 3);
    v40 = *(a2 + 2);
    v41 = v24;
    memset(v37, 0, sizeof(v37));
    if (!sub_10000A9EC(&v38, v7, v9, v37) || sub_10000A4B8(v3, v37) == v3)
    {
      v17 = sub_10000A4B8(v3, &v38);
      goto LABEL_20;
    }

    goto LABEL_50;
  }

  if (v22 != v8)
  {
    goto LABEL_49;
  }

  v26 = v3[4];
  v25 = v3[5];
  v27 = v3[2];
  v28 = v3[3];
  v30 = a2[3];
  v29 = a2[4];
  if (v26 + v28 + v25 + v27 > v8)
  {
    v31 = a2[5];
    v32 = a2[2];
    goto LABEL_30;
  }

  v31 = a2[5];
  v32 = a2[2];
  if (v29 + v30 + v31 + v32 > v8)
  {
LABEL_30:
    v8 = -1;
  }

  v33 = v3[6];
  if (v33 <= a2[6])
  {
    v33 = a2[6];
  }

  if (v28 <= v30)
  {
    v28 = a2[3];
  }

  v34 = v8 - v28;
  if (v26 <= v29)
  {
    v26 = a2[4];
  }

  if (v34 < v26)
  {
    v26 = v34;
  }

  v35 = v34 - v26;
  if (v25 <= v31)
  {
    v25 = v31;
  }

  if (v35 < v25)
  {
    v25 = v35;
  }

  v3[3] = v28;
  v3[4] = v26;
  v3[5] = v25;
  v3[6] = v33;
  v36 = v35 - v25;
  if (v27 <= v32)
  {
    v27 = v32;
  }

  if (v36 >= v27)
  {
    v36 = v27;
  }

  v3[2] = v36;
  return v42;
}

uint64_t sub_10000A72C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v3 = *(a1 + 8);
    v7 = v4;
    for (i = v4[1]; i; i = i[7])
    {
      v3 = sub_10000A4B8(v3, i);
    }

    *(a1 + 8) = v3;
    v4 = v7;
  }

  return _objc_release_x1(v3, v4);
}

void sub_10000A798(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = v3;
    if (v3 && (v4 = v3[13]) != 0)
    {
      v5 = v4;
      sub_10000A72C(a1, v4);
    }

    else
    {
      v6 = [v13 dirtySize];
      v7 = [v13 swappedSize];
      v8 = [v13 cleanSize];
      v9 = [v13 reclaimableSize];
      v10 = [v13 wiredSize];
      if (v6 || v7 || v8 || v9 || v10)
      {
        if (v13)
        {
          v11 = v13[9];
          v12 = v13[11];
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v14[0] = v11;
        v14[1] = v12;
        v14[2] = v8;
        v14[3] = v6;
        v14[4] = v7;
        v14[5] = v9;
        v14[6] = v10;
        v14[7] = 0;
        v5 = 0;
        *(a1 + 8) = sub_10000A4B8(*(a1 + 8), v14);
      }

      else
      {
        v5 = 0;
      }
    }

    v3 = v13;
  }
}

double sub_10000A8AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *(a2 + 40) = 0;
    v2 = 0uLL;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      do
      {
        v6 += *(v3 + 24);
        v5 += *(v3 + 16);
        v4 += *(v3 + 32);
        v2 = vaddq_s64(*(v3 + 40), v2);
        v3 = *(v3 + 56);
      }

      while (v3);
      *(a2 + 8) = v4;
      *(a2 + 16) = v5;
      *(a2 + 24) = v2;
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  else
  {
    v2.i64[0] = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return *v2.i64;
}

void sub_10000A920(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = v3;
      do
      {
        (*(v3 + 2))(v5, v4);
        v3 = v5;
        v4 = *(v4 + 56);
      }

      while (v4);
    }
  }
}

uint64_t sub_10000A9EC(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (a4)
  {
    v5 = a1[1];
    if (*a1 >= a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = a2;
    }

    *a4 = v6;
    v7 = v6 - *a1;
    a1[1] = v7;
    a4[1] = v5 - v7;
    v8 = *(a1 + 1);
    v24 = *a1;
    v25 = v8;
    v9 = *(a1 + 3);
    v26 = *(a1 + 2);
    v27 = v9;
    v10 = a1[1];
    v11 = a1[2];
    if (a1[3] >= v10)
    {
      v12 = a1[1];
    }

    else
    {
      v12 = a1[3];
    }

    if (a1[4] >= v10 - v12)
    {
      v13 = v10 - v12;
    }

    else
    {
      v13 = a1[4];
    }

    v14 = v10 - v12 - v13;
    if (a1[5] >= v14)
    {
      v15 = v10 - v12 - v13;
    }

    else
    {
      v15 = a1[5];
    }

    a1[4] = v13;
    a1[5] = v15;
    v16 = v14 - v15;
    if (v11 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v11;
    }

    a1[2] = v17;
    a1[3] = v12;
    if (a1[6] >= v10)
    {
      v18 = v10;
    }

    else
    {
      v18 = a1[6];
    }

    a1[6] = v18;
    v19 = memcmp(a1, &v24, 0x40uLL);
    if (v19)
    {
      v20 = v25;
      v21 = *(&v25 + 1) - v12;
      v22 = *(&v26 + 1) - v15;
      a4[4] = v26 - v13;
      a4[5] = v22;
      a4[2] = v20 - v17;
      a4[3] = v21;
      a4[6] = v27 - v18;
    }

    return v19 != 0;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000AB00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = v3;
    v5 = [v3 copy];
    v6 = *(a1 + 32);
    *(a1 + 32) = v5;

    v3 = [v9 hasPrefix:@"__TEXT"];
    if (v3 & 1) != 0 || (v3 = [v9 hasPrefix:@"__OBJC_RO"], (v3))
    {
      v7 = 2;
LABEL_5:
      v4 = v9;
LABEL_6:
      *(a1 + 8) = v7;
      goto LABEL_7;
    }

    v3 = [v9 hasPrefix:@"__LINKEDIT"];
    if (v3)
    {
      v7 = 4;
      goto LABEL_5;
    }

    v3 = [v9 hasPrefix:@"__"];
    v4 = v9;
    if (v3)
    {
      v7 = 3;
      goto LABEL_6;
    }
  }

LABEL_7:

  return _objc_release_x1(v3, v4);
}

id *sub_10000AC10(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = FPImageEnumerator;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      v5[2] = 0;
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void *sub_10000AC8C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1)
  {
    while (1)
    {
      v6 = *(a1 + 16);
      if (v6 >= [*(a1 + 8) count])
      {
        break;
      }

      v7 = [*(a1 + 8) objectAtIndexedSubscript:*(a1 + 16)];
      v8 = v7;
      if (v7)
      {
        v9 = v7[2];
        v10 = v7[3] + v9;
        if (v9 <= a2 && v10 > a2)
        {
LABEL_16:
          v12 = v7;
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      if (v9 < a3 && v10 >= a3 || v9 >= a2 && v10 <= a3)
      {
        goto LABEL_16;
      }

      if (v9 >= a2)
      {
        v12 = 0;
        goto LABEL_18;
      }

      ++*(a1 + 16);
    }
  }

  v12 = 0;
LABEL_19:

  return v12;
}

NSMapTable *sub_10000B4F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v108 = a1;
  v4 = [*(a1 + 96) copy];
  v5 = [v4 countByEnumeratingWithState:&v128 objects:v149 count:16];
  if (!v5)
  {
LABEL_20:

    v22 = [(NSMapTable *)v3 count];
    v23 = v108;
    v24 = *(v108 + 88);
    if ([v24 count] || objc_msgSend(*(v108 + 96), "count"))
    {
    }

    else
    {
      v99 = *(v108 + 9);

      if ((v99 & 1) == 0 && !v22)
      {
        if (a2)
        {
          v138 = NSLocalizedDescriptionKey;
          v139 = @"Must specify at least one process or memgraph";
          v103 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
          [NSError errorWithDomain:@"FPFootprintError" code:8 userInfo:?];
          *a2 = v94 = 0;
        }

        else
        {
          v94 = 0;
        }

        goto LABEL_107;
      }
    }

    if (*(v108 + 11) == 1)
    {
      sub_10000EE8C(FPFootprint, 1);
    }

    v25 = objc_alloc_init(NSMutableSet);
    if (*(v108 + 17) == 1)
    {
      v26 = [NSNumber numberWithInt:getpid()];
      [v25 addObject:v26];
    }

    if ([*(v108 + 104) count])
    {
      v27 = [*(v108 + 104) allObjects];
      v28 = [FPProcess pidsForStringDescriptions:v27 errors:0];
      v29 = [v28 allKeys];
      [v25 addObjectsFromArray:v29];
    }

    v102 = v25;
    if (*(v108 + 9) == 1)
    {
      v30 = [FPProcess allProcessesExcludingPids:v25];
      v31 = v3;
      v3 = v30;
    }

    else
    {
      v35 = *(v108 + 88);
      v36 = *(v108 + 96);
      v37 = v35;
      v38 = [v36 allObjects];
      v125 = 0;
      v39 = [FPProcess pidsForStringDescriptions:v38 errors:&v125];
      v40 = v125;
      [v37 addEntriesFromDictionary:v39];

      if (a2 && v40)
      {
        v41 = [(NSMapTable *)v40 componentsJoinedByString:@"\n"];
        v136 = NSLocalizedDescriptionKey;
        v137 = v41;
        v42 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
        *a2 = [NSError errorWithDomain:@"FPFootprintError" code:4 userInfo:v42];
      }

      v101 = v40;
      v43 = *(v108 + 88);
      v44 = [v25 allObjects];
      [v43 removeObjectsForKeys:v44];

      v23 = v108;
      if (*(v108 + 8) == 1)
      {
        v45 = [*(v108 + 88) allKeys];
        v46 = [FPProcess childPidsForPids:v45];

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v47 = v46;
        v48 = [v47 countByEnumeratingWithState:&v121 objects:v135 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v122;
          do
          {
            for (i = 0; i != v49; i = i + 1)
            {
              if (*v122 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v121 + 1) + 8 * i);
              v53 = +[NSNull null];
              [*(v108 + 88) setObject:v53 forKeyedSubscript:v52];
            }

            v49 = [v47 countByEnumeratingWithState:&v121 objects:v135 count:16];
          }

          while (v49);
        }

        v23 = v108;
      }

      if (*(v23 + 13) == 1)
      {
        v54 = [NSMutableSet alloc];
        v55 = [*(v23 + 88) allKeys];
        v56 = [v54 initWithArray:v55];

        [v56 unionSet:v25];
        [v56 addObject:&off_10002C440];
        v57 = [FPProcess allProcessesExcludingPids:v56];
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v58 = [(NSMapTable *)v57 objectEnumerator];
        v59 = [v58 countByEnumeratingWithState:&v117 objects:v134 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v118;
          do
          {
            for (j = 0; j != v60; j = j + 1)
            {
              if (*v118 != v61)
              {
                objc_enumerationMutation(v58);
              }

              [*(*(&v117 + 1) + 8 * j) setHiddenFromDisplay:1];
            }

            v60 = [v58 countByEnumeratingWithState:&v117 objects:v134 count:16];
          }

          while (v60);
        }

        v3 = v57;
        v23 = v108;
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      obja = *(v23 + 88);
      v63 = [obja countByEnumeratingWithState:&v113 objects:v133 count:16];
      if (v63)
      {
        v64 = v63;
        v107 = *v114;
        do
        {
          v65 = 0;
          do
          {
            if (*v114 != v107)
            {
              objc_enumerationMutation(obja);
            }

            v66 = *(*(&v113 + 1) + 8 * v65);
            v67 = [*(v23 + 88) objectForKeyedSubscript:v66];
            v68 = +[FPProcess processWithPid:](FPProcess, "processWithPid:", [v66 longValue]);
            v69 = +[NSNull null];
            v70 = [v67 isEqual:v69];
            v71 = v70;
            if (v68)
            {
              v72 = v3;
              if (v70)
              {
                goto LABEL_66;
              }

              v73 = [v68 name];
              v74 = [v73 isEqualToString:v67];

              if ((v74 & 1) == 0)
              {
                v75 = __stderrp;
                v69 = [v68 name];
                v23 = v108;
                fprintf(v75, "Found process %s [%d] from partial name %s\n", [v69 UTF8String], objc_msgSend(v68, "pid"), objc_msgSend(v67, "UTF8String"));
LABEL_66:
              }

              if (*(v23 + 14) == 1)
              {
                objc_opt_class();
                v3 = v72;
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_72;
                }

                v127.st_dev = 0;
                corpse = task_generate_corpse([v68 task], &v127);
                if (!corpse)
                {
                  v77 = [FPCorpseProcess alloc];
                  v78 = sub_10000E8E8(v77, v127.st_dev);

                  mach_port_deallocate(mach_task_self_, v127.st_dev);
                  v68 = v78;
                  goto LABEL_72;
                }

                v79 = corpse;
                v80 = [v68 name];
                v81 = [v80 UTF8String];
                v82 = [v68 pid];
                v83 = mach_error_string(v79);
                v100 = v81;
                v23 = v108;
                warnx("Unable to fork a corpse of process %s [%d]: %s", v100, v82, v83);
              }

              else
              {
                v3 = v72;
LABEL_72:
                [(NSMapTable *)v3 setObject:v68 forKey:v66];
              }

              goto LABEL_74;
            }

            if (v71)
            {
              [v66 longValue];
              warnx("Unable to analyze process with pid %ld (try as root?)");
            }

            else
            {
              [v67 UTF8String];
              [v66 longValue];
              warnx("Unable to analyze process %s [%ld] (try as root?)");
            }

LABEL_74:

            v65 = v65 + 1;
          }

          while (v64 != v65);
          v84 = [obja countByEnumeratingWithState:&v113 objects:v133 count:16];
          v64 = v84;
        }

        while (v84);
      }

      v31 = v101;
    }

    if (*(v23 + 10) == 1)
    {
      v85 = [FPProcess removeIdleExitCleanProcessesFrom:v3];
      v86 = [v85 mutableCopy];

      v3 = v86;
      v23 = v108;
    }

    if (*(v23 + 24))
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v87 = NSAllMapTableKeys(v3);
      v88 = [v87 countByEnumeratingWithState:&v109 objects:v132 count:16];
      if (v88)
      {
        v89 = v88;
        v90 = *v110;
        do
        {
          for (k = 0; k != v89; k = k + 1)
          {
            if (*v110 != v90)
            {
              objc_enumerationMutation(v87);
            }

            v92 = *(*(&v109 + 1) + 8 * k);
            v93 = [(NSMapTable *)v3 objectForKey:v92];
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v93 physFootprint] < *(v108 + 24) << 20)
            {
              [(NSMapTable *)v3 removeObjectForKey:v92];
            }
          }

          v89 = [v87 countByEnumeratingWithState:&v109 objects:v132 count:16];
        }

        while (v89);
      }
    }

    v3 = v3;
    v94 = v3;
    goto LABEL_106;
  }

  v6 = v5;
  v7 = *v129;
  v102 = v4;
  v106 = v3;
LABEL_5:
  v8 = 0;
  while (1)
  {
    if (*v129 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v128 + 1) + 8 * v8);
    memset(&v127, 0, sizeof(v127));
    if (stat([v9 UTF8String], &v127))
    {
      goto LABEL_18;
    }

    v10 = [NSURL fileURLWithPath:v9];
    v126 = 0;
    v11 = [FPMemgraphProcess processWithMemgraph:v10 error:&v126];
    v12 = v126;

    if (v11)
    {
      v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 hash]);
      [(NSMapTable *)v3 setObject:v11 forKey:v13];

      v14 = v108;
      if (*(v108 + 12) == 1)
      {
        v15 = *(v108 + 11);
        if ([v11 breakDownPhysFootprint] != v15)
        {
          v32 = a2;
          if (a2)
          {
            v147 = NSLocalizedDescriptionKey;
            v17 = [NSString stringWithFormat:@"Memgraph was gathered with an analysis mode that conflicts with other memgraphs or command line arguments: %@", v9];
            v148 = v17;
            v33 = &v148;
            v34 = &v147;
LABEL_102:
            v95 = [NSDictionary dictionaryWithObjects:v33 forKeys:v34 count:1];
            *v32 = [NSError errorWithDomain:@"FPFootprintError" code:6 userInfo:v95];
LABEL_103:

            goto LABEL_104;
          }

          goto LABEL_105;
        }
      }

      if (*(v108 + 13) == 1)
      {
        v32 = a2;
        if (a2)
        {
          v145 = NSLocalizedDescriptionKey;
          v17 = [NSString stringWithFormat:@"--unmapped is not compatible with memgraphs (%@).\nRemove the flag for best effort 'unmapped' analysis (which may be more than other tools such as vmmap(1) but less than footprint(1) analyzing a running process).", v9];
          v146 = v17;
          v33 = &v146;
          v34 = &v145;
          goto LABEL_102;
        }

        goto LABEL_105;
      }

      if ((*(v108 + 32) & 4) != 0)
      {
        v32 = a2;
        if (a2)
        {
          v143 = NSLocalizedDescriptionKey;
          v17 = [NSString stringWithFormat:@"--ioaccel is not compatible with memgraphs (%@) because they do not contain the required information.", v9];
          v144 = v17;
          v33 = &v144;
          v34 = &v143;
          goto LABEL_102;
        }

        goto LABEL_105;
      }

      *(v108 + 11) = [v11 breakDownPhysFootprint];
      *(v108 + 12) = 1;
      goto LABEL_17;
    }

    v142 = v9;
    v16 = [NSArray arrayWithObjects:&v142 count:1];
    v17 = [FPProcess pidsForStringDescriptions:v16 errors:0];

    v18 = [v17 allKeys];
    v19 = [v18 firstObject];

    if (!v19)
    {
      break;
    }

    v20 = [v17 objectForKeyedSubscript:v19];
    v21 = v17;
    v14 = v108;
    [*(v108 + 88) setObject:v20 forKeyedSubscript:v19];

    v3 = v106;
    v4 = v102;
LABEL_17:
    [*(v14 + 96) removeObject:v9];

LABEL_18:
    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v128 objects:v149 count:16];
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }
  }

  if (a2)
  {
    v140 = NSLocalizedDescriptionKey;
    v95 = [v12 localizedDescription];
    v96 = [NSString stringWithFormat:@"Error opening memgraph %@: %@", v9, v95];
    v141 = v96;
    v97 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
    *a2 = [NSError errorWithDomain:@"FPFootprintError" code:7 userInfo:v97];

    v3 = v106;
    goto LABEL_103;
  }

  v3 = v106;
LABEL_104:

LABEL_105:
  v94 = 0;
LABEL_106:

LABEL_107:

  return v94;
}

uint64_t start(int a1, char *const *a2)
{
  v154 = objc_alloc_init(NSMutableArray);
  context = objc_autoreleasePoolPush();
  v4 = [FPFootprintArgs alloc];
  if (!v4)
  {
    goto LABEL_93;
  }

  v167.receiver = v4;
  v167.super_class = FPFootprintArgs;
  v5 = objc_msgSendSuper2(&v167, "init");
  v6 = v5;
  if (!v5)
  {
    v4 = [NSError errorWithDomain:@"FPFootprintError" code:0 userInfo:0];
LABEL_93:
    v48 = v4;
    goto LABEL_135;
  }

  v5->i16[4] = 0;
  v5->i8[10] = 0;
  v5[2] = vdupq_n_s64(1uLL);
  v7 = v5[4].i64[1];
  v5[4].i64[1] = 0;

  v8 = +[NSMutableDictionary dictionary];
  v9 = v6[5].i64[1];
  v6[5].i64[1] = v8;

  v10 = +[NSMutableSet set];
  v11 = v6[6].i64[0];
  v6[6].i64[0] = v10;

  v12 = +[NSMutableSet set];
  v13 = v6[6].i64[1];
  v6[6].i64[1] = v12;

  *(&v6->i16[5] + 1) = 1;
  v6[3].i64[0] = 0;
  objc_storeStrong(&v6[4], @"Dirty");
  v6[7].i64[0] = 0;
  *(&v6->i16[7] + 1) = 0;
  v6[3].i64[1] = 0;
  v6[1].i8[1] = 1;
  v171 = 0;
  v209.name = "all";
  v209.has_arg = 0;
  v209.flag = 0;
  v209.val = 97;
  v210 = "json";
  v211 = 1;
  v212 = 0;
  v213 = 106;
  v214 = "perfdata";
  v215 = 1;
  v216 = 0;
  v217 = 262;
  v218 = "help";
  v219 = 0;
  v220 = 0;
  v221 = 104;
  v222 = "targetChildren";
  v223 = 0;
  v224 = 0;
  v225 = 116;
  v226 = "";
  v227 = 1;
  v228 = 0;
  v229 = 112;
  v230 = "proc";
  v231 = 1;
  v232 = &v171 + 4;
  v233 = 1;
  v234 = "exclude";
  v235 = 1;
  v236 = 0;
  v237 = 120;
  v238 = "pid";
  v239 = 1;
  v240 = &v171;
  v241 = 1;
  v242 = "skip";
  v243 = 0;
  v244 = 0;
  v245 = 115;
  v246 = "minFootprint";
  v247 = 1;
  v248 = 0;
  v249 = 269;
  v250 = "forkCorpse";
  v251 = 0;
  v252 = 0;
  v253 = 265;
  v254 = "";
  v255 = 0;
  v256 = 0;
  v257 = 118;
  v258 = "format";
  v259 = 1;
  v260 = 0;
  v261 = 102;
  v262 = "sort";
  v263 = 1;
  v264 = 0;
  v265 = 260;
  v266 = "summary";
  v267 = 0;
  v268 = 0;
  v269 = 121;
  v270 = "physFootprint";
  v271 = 0;
  v272 = 0;
  v273 = 256;
  v274 = "vmObjectDirty";
  v275 = 0;
  v276 = 0;
  v277 = 257;
  v278 = "wide";
  v279 = 0;
  v280 = 0;
  v281 = 119;
  v282 = "swapped";
  v283 = 0;
  v284 = 0;
  v285 = 258;
  v286 = "wired";
  v287 = 0;
  v288 = 0;
  v289 = 259;
  v290 = "unmapped";
  v291 = 0;
  v292 = 0;
  v293 = 261;
  v294 = "sample";
  v295 = 1;
  v296 = 0;
  v297 = 263;
  v298 = "sample-duration";
  v299 = 1;
  v300 = 0;
  v301 = 264;
  v302 = "noCategories";
  v303 = 0;
  v304 = 0;
  v305 = 266;
  v306 = "drainDeferredReclaim";
  v307 = 0;
  v308 = 0;
  v309 = 267;
  v310 = "noDrainDeferredReclaim";
  v311 = 0;
  v312 = 0;
  v313 = 268;
  v314 = "layout";
  v315 = 1;
  v316 = 0;
  v317 = 108;
  v318 = "ioaccel";
  v319 = 0;
  v320 = 0;
  v321 = 270;
  v322 = 0u;
  v323 = 0u;
  optreset = 1;
  optind = 1;
  optarg = 0;
  while (2)
  {
    while (1)
    {
      v14 = getopt_long_only(a1, a2, "aj:htp:x:svf:yw", &v209, 0);
      v15 = v14;
      if (v14 > 119)
      {
        break;
      }

      if (v14 > 111)
      {
        if (v14 <= 115)
        {
          if (v14 == 112)
          {
            v24 = v6[6].i64[0];
            v25 = [NSString stringWithUTF8String:optarg];
            [v24 addObject:v25];
          }

          else
          {
            if (v14 != 115)
            {
              goto LABEL_109;
            }

            v6->i8[10] = 1;
          }
        }

        else
        {
          switch(v14)
          {
            case 't':
              v6->i8[8] = 1;
              break;
            case 'v':
              v6[2].i64[0] = 2;
              break;
            case 'w':
              v6[3].i64[0] |= 7uLL;
              break;
            default:
              goto LABEL_109;
          }
        }
      }

      else if (v14 <= 101)
      {
        if (v14)
        {
          if (v14 != 97)
          {
            if (v14 != -1)
            {
LABEL_109:
              v52 = [NSError errorWithDomain:@"FPFootprintError" code:5 userInfo:0];
              v66 = v52;
              goto LABEL_129;
            }

            if (v6[1].i8[0] == 1)
            {
              v6[2].i64[0] |= 8uLL;
            }

            if (v6[3].i64[1] == 1)
            {
              if ((v6[2].i8[0] & 2) != 0)
              {
                v64 = @"--layout is not compatible with -v";
              }

              else
              {
                if (v6->i8[9] != 1)
                {
                  goto LABEL_115;
                }

                v64 = @"--layout is not compatible with -a";
              }

              v72 = [NSString stringWithFormat:v64];
              v73 = v72;
              if (v72)
              {
                v188 = NSLocalizedDescriptionKey;
                v189 = v72;
                v74 = [NSDictionary dictionaryWithObjects:&v189 forKeys:&v188 count:1];
                v52 = [NSError errorWithDomain:@"FPFootprintError" code:10 userInfo:v74];
                v75 = v52;

                goto LABEL_129;
              }
            }

LABEL_115:
            if (v6->i8[14] == 1 && v6->i8[9] == 1)
            {
              v76 = [NSString stringWithFormat:@"--forkCorpse is not compatible with -a/--all due to corpse resource limits"];
              v186 = NSLocalizedDescriptionKey;
              v187 = v76;
              v77 = [NSDictionary dictionaryWithObjects:&v187 forKeys:&v186 count:1];
              v52 = [NSError errorWithDomain:@"FPFootprintError" code:10 userInfo:v77];
              v78 = v52;

              goto LABEL_129;
            }

            if ((v6->i8[11] & 1) != 0 || (v6->i8[13] & 1) == 0)
            {
              if (v6->i8[9] != 1 || v6->i8[13] != 1)
              {
                goto LABEL_125;
              }

              warnx("NOTICE: '--unmapped' is redundant when using -a/--all");
            }

            else
            {
              warnx("WARNING: ignoring '--unmapped' because the requested analysis mode '--vmObjectDirty' does not support unmapped owned VM objects");
            }

            v6->i8[13] = 0;
LABEL_125:
            v79 = *&v6[7].i64[1];
            if (v79 > 0.0)
            {
              v80 = *v6[7].i64;
              if (v80 == 0.0)
              {
                warnx("WARNING: ignoring '--sample-duration' because sampling was not enabled via '--sample'");
              }

              else if (v80 > v79)
              {
                warnx("WARNING: sample interval greater than duration effectively disables sampling mode");
              }
            }

            if (a1 - optind >= 1)
            {
              v140 = &a2[optind];
              v141 = a1 - optind + 1;
              do
              {
                v142 = *v140;
                v143 = v6[6].i64[0];
                v144 = [NSString stringWithUTF8String:v142];
                [v143 addObject:v144];

                ++v140;
                --v141;
              }

              while (v141 > 1);
            }

            v84 = v6;
            v52 = 0;
            goto LABEL_130;
          }

          v6->i8[9] = 1;
          v6[2].i64[0] |= 0x10uLL;
        }

        else if (HIDWORD(v171))
        {
          v28 = v6[6].i64[0];
          v29 = [NSString stringWithUTF8String:optarg];
          [v28 addObject:v29];

          HIDWORD(v171) = 0;
        }

        else if (v171)
        {
          __endptr[0] = 0;
          v43 = strtol(optarg, __endptr, 10);
          if (optarg == __endptr[0])
          {
            v194 = NSLocalizedDescriptionKey;
            v81 = [NSString stringWithFormat:@"'%s' is not a valid integer for --pid.\n\nUse -p / --proc if you meant to specify a process name.", optarg];
            v195 = v81;
            v82 = [NSDictionary dictionaryWithObjects:&v195 forKeys:&v194 count:1];
            v52 = [NSError errorWithDomain:@"FPFootprintError" code:4 userInfo:v82];
            v83 = v52;

            goto LABEL_129;
          }

          v44 = v43;
          v45 = +[NSNull null];
          v46 = v6[5].i64[1];
          v47 = [NSNumber numberWithInt:v44];
          [v46 setObject:v45 forKeyedSubscript:v47];

          LODWORD(v171) = 0;
        }
      }

      else if (v14 <= 105)
      {
        if (v14 != 102)
        {
          if (v14 == 104)
          {
            v52 = [NSError errorWithDomain:@"FPFootprintError" code:1 userInfo:0];
            v65 = v52;
            goto LABEL_129;
          }

          goto LABEL_109;
        }

        v23 = optarg;
        if (!optarg)
        {
          goto LABEL_99;
        }

        if (!strcmp("bytes", optarg))
        {
          v6[2].i64[1] = 0;
        }

        else if (!strcmp("formatted", v23))
        {
          v6[2].i64[1] = 1;
        }

        else
        {
          if (strcmp("pages", v23))
          {
LABEL_99:
            v180[0] = NSLocalizedDescriptionKey;
            v173[0] = @"Unrecognized argument to -f / --format.\nAccepted arguments: 'bytes', 'formatted', 'pages'.";
            v62 = [NSDictionary dictionaryWithObjects:v173 forKeys:v180 count:1];
            v52 = [NSError errorWithDomain:@"FPFootprintError" code:2 userInfo:v62];
            v63 = v52;

            goto LABEL_129;
          }

          v6[2].i64[1] = 2;
        }
      }

      else if (v14 == 106)
      {
        v26 = [NSString stringWithUTF8String:optarg];
        v27 = v6[4].i64[1];
        v6[4].i64[1] = v26;
      }

      else
      {
        if (v14 != 108)
        {
          goto LABEL_109;
        }

        if (!optarg)
        {
LABEL_97:
          v192 = NSLocalizedDescriptionKey;
          v193 = @"Unrecognized argument to -l / --layout.\nAccepted arguments: 'v', 'h'.";
          v54 = [NSDictionary dictionaryWithObjects:&v193 forKeys:&v192 count:1];
          v52 = [NSError errorWithDomain:@"FPFootprintError" code:11 userInfo:v54];
          v55 = v52;

          goto LABEL_129;
        }

        v22 = *optarg;
        if (v22 == 118)
        {
          if (optarg[1])
          {
            goto LABEL_97;
          }

          v6[3].i64[1] = 0;
        }

        else
        {
          if (v22 == 104)
          {
            v42 = -optarg[1];
          }

          else
          {
            v42 = 104 - v22;
          }

          if (v42)
          {
            goto LABEL_97;
          }

          v6[3].i64[1] = 1;
        }
      }
    }

    switch(v14)
    {
      case 256:
        warnx("WARNING: --physFootprint option is deprecated because it is the default mode");
        continue;
      case 257:
        *(&v6->i16[5] + 1) = 256;
        continue;
      case 258:
        v6[3].i64[0] |= 2uLL;
        continue;
      case 259:
        v6[3].i64[0] |= 1uLL;
        continue;
      case 260:
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v30 = sub_100017FB8();
        v31 = [v30 countByEnumeratingWithState:&v160 objects:&handler count:16];
        if (!v31)
        {
          goto LABEL_98;
        }

        v32 = *v161;
LABEL_58:
        v33 = 0;
        while (1)
        {
          if (*v161 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v160 + 1) + 8 * v33);
          v35 = v34;
          v36 = [v34 UTF8String];
          if (!strcasecmp(v36, optarg))
          {
            break;
          }

          if (v31 == ++v33)
          {
            v31 = [v30 countByEnumeratingWithState:&v160 objects:&handler count:16];
            if (!v31)
            {
LABEL_98:

              v56 = sub_100017FB8();
              v57 = [v56 componentsJoinedByString:{@", "}];
              v58 = [v57 lowercaseString];

              v59 = [NSString stringWithFormat:@"Unrecognized argument '%s' to --sort.\nAccepted arguments: %@", optarg, v58];
              v175[0] = NSLocalizedDescriptionKey;
              v176 = v59;
              v60 = [NSDictionary dictionaryWithObjects:&v176 forKeys:v175 count:1];
              v52 = [NSError errorWithDomain:@"FPFootprintError" code:3 userInfo:v60];
              v61 = v52;

              goto LABEL_129;
            }

            goto LABEL_58;
          }
        }

        objc_storeStrong(&v6[4], v34);

        continue;
      case 261:
        v6->i8[13] = 1;
        continue;
      case 262:
        v37 = [NSString stringWithUTF8String:optarg];
        v38 = v6[5].i64[0];
        v6[5].i64[0] = v37;

        continue;
      case 263:
      case 264:
        v16 = [NSString stringWithUTF8String:optarg];
        [v16 doubleValue];
        v18 = v17;

        if (v18 >= 0.0)
        {
          v19 = (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000001 && (*&v18 - 1) > 0xFFFFFFFFFFFFELL;
          v20 = !v19 || *&v18 == 0x7FF0000000000000;
          if (!v20 && (*&v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            if (v15 == 263)
            {
              *v6[7].i64 = v18;
            }

            else
            {
              *&v6[7].i64[1] = v18;
            }

            continue;
          }
        }

        v49 = "duration";
        if (v15 == 263)
        {
          v49 = "interval";
        }

        v50 = [NSString stringWithFormat:@"Invalid sampling %s '%s'", v49, optarg];
        v196 = NSLocalizedDescriptionKey;
        v197 = v50;
        v51 = [NSDictionary dictionaryWithObjects:&v197 forKeys:&v196 count:1];
        v52 = [NSError errorWithDomain:@"FPFootprintError" code:9 userInfo:v51];
        v53 = v52;

LABEL_129:
        v84 = 0;
LABEL_130:

        v48 = v52;
        if (!v84)
        {
LABEL_135:
          if (v48)
          {
            v87 = [(FPFootprintArgs *)v48 userInfo];
            v88 = [v87 objectForKeyedSubscript:NSLocalizedDescriptionKey];

            if (v88)
            {
              v89 = v88;
              warnx("%s", [v88 UTF8String]);
            }
          }

          sub_10000E080();
          v90 = [(FPFootprintArgs *)v48 domain];
          if (v90 == @"FPFootprintError")
          {
            if ([(FPFootprintArgs *)v48 code]== 1)
            {
              v84 = 0;
              v85 = 0;
LABEL_143:
              v86 = 0;
              goto LABEL_190;
            }
          }

          else
          {
          }

          v84 = 0;
          v85 = 0;
          v86 = 64;
          goto LABEL_190;
        }

        if ((v84->i8[9] & 1) == 0 && v84->i8[13] != 1 || !geteuid())
        {
          v159 = v48;
          v85 = sub_10000B4F4(v84, &v159);
          v91 = v159;

          if (v91)
          {
            v92 = [(FPFootprintArgs *)v91 localizedDescription];
            v93 = v92;
            warnx("%s", [v92 UTF8String]);
          }

          if (!v85)
          {
            sub_10000E080();
            v85 = 0;
            v86 = 64;
LABEL_189:
            v48 = v91;
            goto LABEL_190;
          }

          if (![(NSMapTable *)v85 count]&& *v84[7].i64 == 0.0)
          {
            warnx("Unable to find any processes matching the supplied process names or pids (try as root?)");
            v86 = 66;
            goto LABEL_189;
          }

          v94 = sub_100018070([FPOutputFormatterText alloc], v84[2].i64[1], v84[3].i64[0], v84[4].i64[0], v84[3].i64[1]);
          if (v94)
          {
            [v154 addObject:v94];
            if (v84[4].i64[1])
            {
              v95 = sub_1000130EC([FPOutputFormatterJSON alloc], v84[4].i64[1]);

              if (!v95)
              {
                warnx("Unable to create JSON output");
                goto LABEL_188;
              }

              [v154 addObject:v95];
            }

            else
            {
              v95 = v94;
            }

            if (!v84[5].i64[0])
            {
              v96 = v95;
              goto LABEL_162;
            }

            v96 = sub_10001704C([FPOutputFormatterPerfdata alloc], v84[5].i64[0]);

            if (v96)
            {
              [v154 addObject:v96];
LABEL_162:

              objc_autoreleasePoolPop(context);
              if (qword_100038620 != -1)
              {
                dispatch_once(&qword_100038620, &stru_100029B40);
              }

              sub_10000EF08(FPFootprint, 1);
              v149 = objc_autoreleasePoolPush();
              if (*v84[7].i64 == 0.0)
              {
                v97 = [(NSMapTable *)v85 count]== 1;
                objc_opt_self();
                byte_100038638 = v97;
                contexta = NSAllMapTableValues(v85);
                v98 = v154;
                v99 = v84;
                v100 = sub_10000EF6C([FPFootprint alloc], contexta);
                if (isatty(1))
                {
                  v101 = 0;
                }

                else
                {
                  *&v160 = _NSConcreteStackBlock;
                  *(&v160 + 1) = 3221225472;
                  *&v161 = sub_10000E268;
                  *(&v161 + 1) = &unk_100029B68;
                  *&v162 = v100;
                  v101 = sub_10000F1F8(FPFootprint, &v160);
                }

                v129 = v99[2].u64[0];
                v130 = objc_autoreleasePoolPush();
                sub_10000F278(v100, v129);
                objc_autoreleasePoolPop(v130);
                v131 = objc_autoreleasePoolPush();
                sub_10000F5EC(v100);
                objc_autoreleasePoolPop(v131);
                if (v101)
                {
                  dispatch_source_cancel(v101);
                  signal(2, 0);
                }

                v200 = 0u;
                v201 = 0u;
                handler = 0u;
                v199 = 0u;
                v132 = v98;
                v133 = [v132 countByEnumeratingWithState:&handler objects:&v209 count:16];
                if (v133)
                {
                  v134 = *v199;
                  do
                  {
                    for (i = 0; i != v133; i = i + 1)
                    {
                      if (*v199 != v134)
                      {
                        objc_enumerationMutation(v132);
                      }

                      if (v100)
                      {
                        [v100[18] addObject:*(*(&handler + 1) + 8 * i)];
                      }
                    }

                    v133 = [v132 countByEnumeratingWithState:&handler objects:&v209 count:16];
                  }

                  while (v133);
                }

                sub_10001023C(v100, (v129 >> 1) & 1, v129 & 1, v99->u8[15]);
              }

              else
              {
                v102 = v154;
                contextb = v84;
                v167 = 0;
                v168 = 0u;
                v169 = 0u;
                v170 = 0u;
                v103 = v102;
                v104 = [v103 countByEnumeratingWithState:&v167 objects:&v209 count:16];
                if (v104)
                {
                  v105 = *v168;
                  do
                  {
                    for (j = 0; j != v104; ++j)
                    {
                      if (*v168 != v105)
                      {
                        objc_enumerationMutation(v103);
                      }

                      v107 = *(v167.super_class + j);
                      if ((objc_opt_respondsToSelector() & 1) == 0)
                      {
                        v108 = objc_opt_class();
                        v109 = NSStringFromClass(v108);
                        v110 = v109;
                        warnx("Selected output format (%s) does not support sampling mode", [v109 UTF8String]);
                      }

                      [v107 configureForMultipleOutputs];
                    }

                    v104 = [v103 countByEnumeratingWithState:&v167 objects:&v209 count:16];
                  }

                  while (v104);
                }

                v148 = dispatch_semaphore_create(0);
                __endptr[0] = 0;
                __endptr[1] = __endptr;
                __endptr[2] = 0x3042000000;
                __endptr[3] = sub_10000E298;
                __endptr[4] = sub_10000E2A4;
                v166 = 0;
                v184[0] = 0;
                v184[1] = v184;
                v184[2] = 0x3032000000;
                v184[3] = sub_10000E2AC;
                v184[4] = sub_10000E2BC;
                v185 = 0;
                v182[0] = 0;
                v182[1] = v182;
                v182[2] = 0x3032000000;
                v182[3] = sub_10000E2AC;
                v182[4] = sub_10000E2BC;
                v183 = 0;
                v146 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
                v111 = dispatch_queue_create("com.apple.footprint.sample-analysis", v146);
                v112 = dispatch_queue_create("com.apple.footprint.sample-timer", 0);
                v113 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v112);
                v180[0] = 0;
                v180[1] = v180;
                v180[2] = 0x2020000000;
                v181 = 1;
                v176 = 0;
                v177 = &v176;
                v114 = *v84[7].i64 * 1000000000.0;
                v178 = 0x2020000000;
                v179 = v114;
                v175[0] = 0;
                v175[1] = v175;
                v175[2] = 0x2020000000;
                v175[3] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
                v115 = v177[3];
                v116 = 1000000000;
                if (v115 < 0x3B9ACA00)
                {
                  v116 = v177[3];
                }

                v117 = v116 >> 1;
                dispatch_source_set_timer(v113, 0, v115, v116 >> 1);
                *&handler = _NSConcreteStackBlock;
                *(&handler + 1) = 3221225472;
                *&v199 = sub_10000E2C4;
                *(&v199 + 1) = &unk_100029BB8;
                v118 = v113;
                *&v200 = v118;
                v202 = v180;
                v203 = v175;
                v204 = &v176;
                v208 = v117;
                v205 = v182;
                v119 = contextb;
                *(&v200 + 1) = v119;
                v206 = v184;
                v207 = __endptr;
                v120 = v111;
                *&v201 = v120;
                v145 = v103;
                *(&v201 + 1) = v145;
                dispatch_source_set_event_handler(v118, &handler);
                v173[0] = 0;
                v173[1] = v173;
                v173[2] = 0x3020000000;
                v174 = 0;
                *&v160 = _NSConcreteStackBlock;
                *(&v160 + 1) = 3221225472;
                *&v161 = sub_10000E830;
                *(&v161 + 1) = &unk_100029C00;
                *(&v163 + 1) = v173;
                v121 = v118;
                *&v162 = v121;
                v164 = __endptr;
                v147 = v112;
                *(&v162 + 1) = v147;
                contextc = v148;
                *&v163 = contextc;
                v122 = objc_retainBlock(&v160);
                v123 = sub_10000F1F8(FPFootprint, v122);
                fprintf(__stderrp, "Sampling at %.3gs interval", *v84[7].i64);
                if (v119[15] > 0.0)
                {
                  fprintf(__stderrp, " for %.1fs", v119[15]);
                }

                fwrite("... (<ctrl-c> to stop)\n", 0x17uLL, 1uLL, __stderrp);
                v124 = v119[15];
                if (v124 > 0.0)
                {
                  v125 = dispatch_time(0, (v124 * 1000000000.0));
                  v126 = dispatch_get_global_queue(21, 0);
                  dispatch_after(v125, v126, v122);
                }

                dispatch_resume(v121);
                dispatch_semaphore_wait(contextc, 0xFFFFFFFFFFFFFFFFLL);
                fwrite("Analyzing and writing output...\n", 0x20uLL, 1uLL, __stderrp);
                if (v123)
                {
                  dispatch_source_cancel(v123);
                  signal(2, 0);
                }

                dispatch_sync(v120, &stru_100029C20);

                _Block_object_dispose(v173, 8);
                _Block_object_dispose(v175, 8);
                _Block_object_dispose(&v176, 8);
                _Block_object_dispose(v180, 8);

                _Block_object_dispose(v182, 8);
                _Block_object_dispose(v184, 8);

                _Block_object_dispose(__endptr, 8);
                objc_destroyWeak(&v166);
              }

              objc_autoreleasePoolPop(v149);
              context = objc_autoreleasePoolPush();
              v157 = 0u;
              v158 = 0u;
              v155 = 0u;
              v156 = 0u;
              v48 = v154;
              v136 = [(FPFootprintArgs *)v48 countByEnumeratingWithState:&v155 objects:v172 count:16];
              if (v136)
              {
                v137 = *v156;
                do
                {
                  for (k = 0; k != v136; k = k + 1)
                  {
                    if (*v156 != v137)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v139 = *(*(&v155 + 1) + 8 * k);
                    if (objc_opt_respondsToSelector())
                    {
                      [v139 close];
                    }
                  }

                  v136 = [(FPFootprintArgs *)v48 countByEnumeratingWithState:&v155 objects:v172 count:16];
                }

                while (v136);
              }

              goto LABEL_143;
            }

            warnx("Unable to create perfdata output");
            v127 = v84[4].i64[1];
            if (v127)
            {
              unlink([v127 UTF8String]);
            }
          }

          else
          {
            warnx("Unable to initialize text output");
          }

LABEL_188:
          v86 = 73;
          goto LABEL_189;
        }

        warnx("Must run as root.");
        v85 = 0;
        v86 = 77;
LABEL_190:

        objc_autoreleasePoolPop(context);
        return v86;
      case 265:
        v6->i8[14] = 1;
        continue;
      case 266:
        v6->i8[15] = 1;
        continue;
      case 267:
        v6[1].i8[0] = 1;
        continue;
      case 268:
        v6[1].i8[0] = 0;
        continue;
      case 269:
        __endptr[0] = 0;
        v39 = strtoll(optarg, __endptr, 10);
        if (*__endptr[0] || v39 < 0 || optarg == __endptr[0])
        {
          v67 = [NSString stringWithFormat:@"Invalid non-negative number '%s' provided to --minFootprint.", optarg];
          v182[0] = NSLocalizedDescriptionKey;
          v184[0] = v67;
          v68 = [NSDictionary dictionaryWithObjects:v184 forKeys:v182 count:1];
          v52 = [NSError errorWithDomain:@"FPFootprintError" code:12 userInfo:v68];
          v69 = v52;

          goto LABEL_129;
        }

        v6[1].i64[1] = v39;
        continue;
      case 270:
        if (!sub_100012620())
        {
          v190 = NSLocalizedDescriptionKey;
          v191 = @"--ioaccel is not available on this device";
          v70 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
          v52 = [NSError errorWithDomain:@"FPFootprintError" code:5 userInfo:v70];
          v71 = v52;

          goto LABEL_129;
        }

        v6[2].i64[0] = 6;
        continue;
      default:
        if (v14 == 120)
        {
          v40 = v6[6].i64[1];
          v41 = [NSString stringWithUTF8String:optarg];
          [v40 addObject:v41];
        }

        else
        {
          if (v14 != 121)
          {
            goto LABEL_109;
          }

          warnx("WARNING: -y/--summary options are deprecated because summary is the default mode");
        }

        continue;
    }
  }
}

void sub_10000DFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&a39, 8);
  objc_destroyWeak(&a44);
  _Unwind_Resume(a1);
}

size_t sub_10000E080()
{
  fwrite("Gather memory information about a process or set of processes\nUsage: footprint [args] [proc/pid/memgraph [proc/pid/memgraph [...]]]\n    -a, --all                 target all processes\n    -j, --json <file>         print json output to a file\n    -h, --help                print this output\n    -p, --proc <name>         target a process by name\n    -p, --pid <pid>           target a process by process ID\n    -x, --exclude <name/pid>  exclude a process\n    -s, --skip                skip processes that are idle-exit clean\n    --minFootprint <MiB>      skip processes with footprint less than the provided minimum\n    --forkCorpse              analyze a forked corpse of the target process (not compatible with --all)\n    -v                        print all regions and vmmap-like output of address space layout\n                              (default output is a summary)\n    -f, --format <fmt>        <fmt> is one of 'bytes', 'formatted', or 'pages' (default: formatted)\n", 0x3CCuLL, 1uLL, __stdoutp);
  v0 = __stdoutp;
  v1 = [@"Dirty" lowercaseString];
  fprintf(v0, "    --sort <column>           change the column used for sorting (default: %s)\n", [v1 UTF8String]);

  fwrite("    -w, --wide                show wide output with all columns and full paths (implies --swapped --wired)\n    --swapped                 show swapped/compressed column\n    --wired                   show wired column\n    --vmObjectDirty           interpret dirty memory as viewed by VM objects in the kernel\n    --unmapped                search all processes for unmapped memory owned by the target processes\n    --sample <interval>       repeatedly gather footprint at the given sampling interval in seconds\n                              (can be fractional — e.g. 0.5)\n    --sample-duration <secs>  how long to sample in seconds (default: 0 / unlimited)\n    --noCategories            print only total footprint and auxiliary data\n", 0x2DCuLL, 1uLL, __stdoutp);
  result = os_variant_has_internal_content();
  if (result)
  {
    fwrite("\nAppleInternal:\n", 0x10uLL, 1uLL, __stdoutp);
    fwrite("    --perfdata <file.pdj>     write perfdata(1) output to a file\n", 0x41uLL, 1uLL, __stdoutp);
    fwrite("    --layout (v|h)            layout style for text formatter v:vertical h:horizontal (default: v)\n", 0x63uLL, 1uLL, __stdoutp);
    fwrite("    --drainDeferredReclaim    drain deferred reclaim buffers before measuring (default varies by platform)\n    --noDrainDeferredReclaim  don't drain deferred reclaim buffers\n", 0xAEuLL, 1uLL, __stdoutp);
    if (sub_100012620())
    {
      fwrite("    --ioaccel                 print IOAccelMemory region descriptions, implies -v\n", 0x52uLL, 1uLL, __stdoutp);
    }

    fwrite("\n    Additional per-process auxiliary data:\n", 0x2CuLL, 1uLL, __stdoutp);
    fwrite("        dirty                 whether a process has outstanding XPC transactions\n", 0x51uLL, 1uLL, __stdoutp);
    v3 = __stdoutp;

    return fwrite("        jetsam priority       relative order of process force exit under memory pressure\n", 0x5AuLL, 1uLL, v3);
  }

  return result;
}

void sub_10000E21C(id a1)
{
  v2.rlim_cur = 0;
  v2.rlim_max = 0;
  getrlimit(8, &v2);
  rlim_max = 16 * v2.rlim_cur;
  if (16 * v2.rlim_cur >= v2.rlim_max)
  {
    rlim_max = v2.rlim_max;
  }

  v2.rlim_cur = rlim_max;
  setrlimit(8, &v2);
}

size_t sub_10000E268(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 168) = 1;
  }

  return fwrite("Exiting early due to SIGINT\n", 0x1CuLL, 1uLL, __stderrp);
}

uint64_t sub_10000E2AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E2C4(uint64_t a1)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
  if (dispatch_source_get_data(*(a1 + 32)) >= 2)
  {
    v3 = *(*(a1 + 64) + 8);
    if (*(v3 + 24))
    {
      *(v3 + 24) = 0;
    }

    else
    {
      v4 = v2 - *(*(*(a1 + 72) + 8) + 24);
      v5 = *(*(a1 + 80) + 8);
      v6 = *(v5 + 24);
      v7 = v4 > v6;
      v8 = v4 - v6;
      if (v7)
      {
        *(v5 + 24) = v6 + (v8 * 1.1);
        warnx("WARNING: Unable to keep up with sampling interval. Increasing interval to %.3gs.", *(*(*(a1 + 80) + 8) + 24) / 1000000000.0);
        v35 = *(a1 + 32);
        v36 = dispatch_time(0, *(*(*(a1 + 80) + 8) + 24));
        dispatch_source_set_timer(v35, v36, *(*(*(a1 + 80) + 8) + 24), *(a1 + 112));
      }
    }
  }

  *(*(*(a1 + 72) + 8) + 24) = v2;
  v9 = *(a1 + 40);
  v10 = *(*(*(a1 + 96) + 8) + 40);
  if (v9)
  {
    v9 = sub_10000B4F4(v9, 0);
    if (v9)
    {
      if ([v10 count])
      {
        v37 = a1;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v44;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v44 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v43 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v17 = [v16 asNumber];
                v18 = [v9 objectForKey:v17];

                if (v18)
                {
                  v19 = [v18 physFootprint];
                  if (v19 == [v16 physFootprint])
                  {
                    v20 = [v16 asNumber];
                    [v9 setObject:v16 forKey:v20];
                  }
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
          }

          while (v13);
        }

        a1 = v37;
      }
    }
  }

  v21 = *(*(a1 + 88) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v9;

  v23 = *(*(a1 + 96) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = 0;

  v25 = [FPFootprint alloc];
  v26 = NSAllMapTableValues(*(*(*(a1 + 88) + 8) + 40));
  v27 = sub_10000EF6C(&v25->super.isa, v26);

  if (v27)
  {
    *(v27 + 43) = 25;
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v29 = *(v28 + 32);
  }

  else
  {
    v29 = 0;
  }

  objc_storeWeak((*(*(a1 + 104) + 8) + 40), v27);
  v30 = objc_autoreleasePoolPush();
  v31 = sub_10000F278(v27, v29);
  objc_autoreleasePoolPop(v30);
  if ((v31 & 1) == 0)
  {
    v32 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E6E4;
    block[3] = &unk_100029B90;
    v33 = v27;
    v39 = v33;
    v40 = *(a1 + 56);
    v42 = v29;
    v41 = *(a1 + 40);
    dispatch_async(v32, block);
    if (v27)
    {
      v34 = v33[1];
    }

    else
    {
      v34 = 0;
    }

    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v34);
  }
}

void sub_10000E6E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_10000F5EC(*(a1 + 32));
  objc_autoreleasePoolPop(v2);
  v3 = objc_autoreleasePoolPush();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        if (v9)
        {
          [*(v9 + 144) addObject:{*(*(&v11 + 1) + 8 * i), v11}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    LOBYTE(v10) = *(v10 + 15);
  }

  sub_10001023C(*(a1 + 32), (*(a1 + 56) >> 1) & 1, *(a1 + 56) & 1, v10 & 1);
  objc_autoreleasePoolPop(v3);
}

intptr_t sub_10000E830(intptr_t result)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(*(result + 56) + 8) + 40), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    v3 = result;
    dispatch_source_cancel(*(result + 32));
    WeakRetained = objc_loadWeakRetained((*(*(v3 + 64) + 8) + 40));
    if (WeakRetained)
    {
      WeakRetained[168] = 1;
    }

    fwrite("\nStopping...\n", 0xDuLL, 1uLL, __stderrp);
    dispatch_sync(*(v3 + 40), &stru_100029BD8);
    v5 = *(v3 + 48);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

id sub_10000E8E8(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000EC30;
  v28 = sub_10000EC40;
  v29 = 0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000EC48;
  v17 = &unk_100029C48;
  v19 = &v38;
  v20 = &v34;
  v22 = &v24;
  v23 = v42;
  v21 = &v30;
  v3 = a1;
  v18 = v3;
  if (sub_100005308(a2, &v14))
  {
    v4 = *(v39 + 6);
    v5 = *(v35 + 6);
    v6 = *(v31 + 6);
    v7 = v25[5];
    v8 = mach_port_mod_refs(mach_task_self_, a2, 0, 1);
    if (v8)
    {
      mach_error("initWithCorpse:mach_port_mod_refs", v8);
    }

    else
    {
      *(v3 + 24) = a2;
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      HIDWORD(v44[0]) = v4;
      LODWORD(v44[0]) = v6 & 0x4000 | (16 * ((v6 >> 2) & 1)) & 0xFFFFDF7F | (v6 >> 9) & 1 | (((v6 >> 1) & 1) << 7) & 0xFFFFDFFF | HIWORD(v6) & 0x100 | (((v6 >> 8) & 1) << 13);
      *(v3 + 13) = (v6 & 0x20000) != 0;
      v11 = [v3 initWithBsdInfo:v44];
      v12 = v11;
      if (v11)
      {
        [v11 setName:v7];
        v13 = [NSString stringWithFormat:@"%@ [%d] (corpse)", v7, v4, v14, v15, v16, v17];
        [v12 setDisplayString:v13];

        [v12 _setIdleExitStatusFromDirtyFlags:v5];
        [v12 addLedgerData:v42 count:5];
        v3 = v12;
        v9 = v3;
        goto LABEL_7;
      }
    }

    v3 = 0;
  }

  v9 = 0;
LABEL_7:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return v9;
}

void sub_10000EBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EC30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000EC48(void *a1, int *a2)
{
  v3 = *a2;
  if ((*a2 & 0xFFFFFFF0) == 0x20)
  {
    v3 = 17;
  }

  if (v3 <= 2084)
  {
    if (v3 > 2068)
    {
      if (v3 == 2069)
      {
        v8 = a2[4];
        v9 = a1[7];
      }

      else
      {
        if (v3 != 2073)
        {
          return;
        }

        v8 = a2[4];
        v9 = a1[6];
      }
    }

    else
    {
      if (v3 != 2053)
      {
        if (v3 == 2063)
        {
          __strlcpy_chk();
          v4 = [[NSString alloc] initWithUTF8String:v10];
          v5 = [v4 lastPathComponent];
          v6 = *(a1[8] + 8);
          v7 = *(v6 + 40);
          *(v6 + 40) = v5;
        }

        return;
      }

      v8 = a2[4];
      v9 = a1[5];
    }

    *(*(v9 + 8) + 24) = v8;
    return;
  }

  if (v3 > 2086)
  {
    if (v3 == 2087)
    {
      *(a1[9] + 16) = *(a2 + 2);
    }

    else if (v3 == 2101)
    {
      *(a1[4] + 20) = a2[4];
    }
  }

  else if (v3 == 2085)
  {
    *a1[9] = *(a2 + 2);
  }

  else
  {
    *(a1[9] + 8) = *(a2 + 2);
  }
}

BOOL sub_10000EDEC()
{
  objc_opt_self();
  v0 = byte_100034428;
  if (byte_100034428 == 2)
  {
    v3 = 0;
    v2 = 4;
    if (sysctlbyname("vm.self_region_footprint", &v3, &v2, 0, 0) && *__error() != 2)
    {
      perror("Unable to retrieve status of physical footprint data collection");
      v3 = 0;
    }

    v0 = v3 != 0;
    byte_100034428 = v3 != 0;
  }

  return v0 == 1;
}

void sub_10000EE8C(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = a2;
  if (sysctlbyname("vm.self_region_footprint", 0, 0, &v3, 4uLL) && *__error() != 2)
  {
    perror("Unable to configure physical footprint data collection");
  }

  byte_100034428 = 2;
}

void sub_10000EF08(uint64_t a1, int a2)
{
  v2 = a2;
  objc_opt_self();
  if (sysctlbyname("vm.self_region_info_flags", 0, 0, &v2, 4uLL))
  {
    if (*__error() != 2)
    {
      perror("Unable to configure VM region info flags");
    }
  }
}

id *sub_10000EF6C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = FPFootprint;
    v5 = objc_msgSendSuper2(&v10, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      *(a1 + 168) = 0;
      v6 = objc_alloc_init(NSMutableArray);
      v7 = a1[18];
      a1[18] = v6;

      *(a1 + 43) = 17;
      *(a1 + 8) = 0;
      *(a1 + 12) = 0;
      *(a1 + 136) = 0;
      v8 = a1[19];
      a1[19] = 0;
    }
  }

  return a1;
}

void sub_10000F020(uint64_t a1)
{
  if (a1 && *(a1 + 136) == 1)
  {
    os_map_64_foreach();
    os_map_64_destroy();
    os_map_64_foreach();
    os_map_64_destroy();
    os_map_64_foreach();
    os_map_64_destroy();
    v2 = *(a1 + 128);
    if (v2)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v3 = [v2 objectEnumerator];
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v11;
        do
        {
          v7 = 0;
          do
          {
            if (*v11 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = [*(*(&v10 + 1) + 8 * v7) pointerValue];
            os_map_64_foreach();
            os_map_64_destroy();
            free(v8);
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v5);
      }

      v9 = *(a1 + 128);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 128) = 0;

    *(a1 + 136) = 0;
  }
}

NSObject *sub_10000F1F8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, 0);
  dispatch_source_set_event_handler(v3, v2);

  signal(2, 1);
  dispatch_resume(v3);

  return v3;
}

uint64_t sub_10000F278(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, *(v2 + 172), 0);

    v6 = dispatch_queue_create("com.apple.footprint.gatherdata", v5);
    v7 = *(v2 + 8);
    objc_opt_self();
    v8 = [v7 sortedArrayUsingComparator:&stru_100029D08];

    v9 = objc_alloc_init(FPSystemMem);
    v10 = *(v2 + 160);
    *(v2 + 160) = v9;

    v11 = sub_100016F04();
    v12 = *(v2 + 176);
    *(v2 + 176) = v11;

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v13 = [v8 count];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F4A4;
    block[3] = &unk_100029C70;
    block[4] = v2;
    v21 = &v24;
    v14 = v8;
    v20 = v14;
    v22 = a2;
    v23 = (a2 & 0x10) != 0;
    dispatch_apply(v13, v6, block);
    if (*(v25 + 24) == 1)
    {
      v15 = [v14 lastObject];
      [v15 _addGlobalError:@"Footprint exited early due to SIGINT and did not finish gathering all data"];
    }

    v16 = sub_100016F04();
    v17 = *(v2 + 184);
    *(v2 + 184) = v16;

    LOBYTE(v2) = *(v25 + 24);
    _Block_object_dispose(&v24, 8);
  }

  return v2 & 1;
}

void sub_10000F48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F4A4(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 168) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
    [v3 gatherData:*(a1 + 56) extendedInfoProvider:*(a1 + 32)];
    if (*(a1 + 64) == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v3 bootCarveoutSize];
        v5 = *(*(a1 + 32) + 160);
        v12 = 0;
        v6 = [v5 gatherData:v4 error:&v12];
        v7 = v12;
        v8 = *(a1 + 32);
        v9 = *(v8 + 152);
        *(v8 + 152) = v6;

        if (!*(*(a1 + 32) + 152))
        {
          v10 = [v7 userInfo];
          v11 = [v10 objectForKeyedSubscript:NSLocalizedDescriptionKey];

          if (v11)
          {
            warnx("%s", [v11 UTF8String]);
          }
        }
      }
    }
  }
}

void sub_10000F5EC(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if (*(a1 + 136) == 1)
    {
      goto LABEL_112;
    }

    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = *(v1 + 16);
    *(v1 + 16) = v2;

    v102 = "memory_objects";
    v103 = 224;
    v82 = v1 + 56;
    os_map_64_init();
    v100 = "text_memory_objects";
    v101 = 224;
    v81 = v1 + 80;
    os_map_64_init();
    v98 = "linkedit_memory_objects";
    v99 = 224;
    v86 = v1 + 104;
    os_map_64_init();
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(v1 + 128);
    *(v1 + 128) = v4;

    *(v1 + 136) = 1;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = *(v1 + 8);
    v80 = v1;
    v77 = [obj countByEnumeratingWithState:&v94 objects:v112 count:16];
    if (v77)
    {
      v78 = *v95;
      do
      {
        v6 = 0;
        do
        {
          if (*v95 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v94 + 1) + 8 * v6);
          if ((*(v1 + 136) & 1) == 0)
          {
LABEL_111:
            _os_assert_log();
            _os_crash();
            __break(1u);
LABEL_112:
            _os_assert_log();
            _os_crash();
            __break(1u);
LABEL_113:
            _os_assert_log();
            _os_crash();
            __break(1u);
          }

          v8 = sub_10000EDEC();
          v9 = [v7 sharedCache];
          v83 = v9;
          v79 = v6;
          if (v9)
          {
            v10 = *(v1 + 128);
            v11 = *(v9 + 24);
            v12 = *(v9 + 16);
            v13 = [v10 objectForKeyedSubscript:v12];

            if (!v13)
            {
              v14 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
              v117[0] = off_100029CB0;
              os_map_64_init();
              v13 = [NSValue valueWithPointer:v14];
              v15 = *(v1 + 128);
              v16 = v83[2];
              [v15 setObject:v13 forKeyedSubscript:v16];
            }

            [v13 pointerValue];

            v17 = 1 - v11;
          }

          else
          {
            v17 = 1;
          }

          v87 = v17;
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v92 = [v7 memoryRegions];
          v18 = [v92 countByEnumeratingWithState:&v113 objects:v117 count:16];
          v19 = v83;
          if (v18)
          {
            v20 = v18;
            v21 = *v114;
            v90 = !v8;
            do
            {
              v22 = 0;
              context = v20;
              do
              {
                if (*v114 != v21)
                {
                  objc_enumerationMutation(v92);
                }

                v23 = *(*(&v113 + 1) + 8 * v22);
                if (v23)
                {
                  if ((*(v23 + 8) & 2) != 0)
                  {
                    if (!v19)
                    {
                      _os_assert_log();
                      _os_crash();
                      __break(1u);
                      goto LABEL_111;
                    }

                    v25 = *(v23 + 9);
                    v26 = v25 == 2 || v25 == 4;
                    if (!v26 && (*(v23 + 16) || *(v23 + 24)))
                    {
                      goto LABEL_30;
                    }

                    v24 = &v87[*(v23 + 80)];
                  }

                  else
                  {
                    v24 = *(v23 + 96);
                    *(v23 + 9);
                  }
                }

                else
                {
                  v24 = 0;
                }

                if ((v24 + 1) <= 1)
                {
                  if (!v23)
                  {
                    goto LABEL_59;
                  }

LABEL_30:
                  *(v23 + 64) = v23;
                  goto LABEL_59;
                }

                v27 = v90;
                if (!v23)
                {
                  v27 = 1;
                }

                if (v27)
                {
                  v28 = 0;
                }

                else
                {
                  v28 = (*(v23 + 8) >> 3) & 1;
                }

                v29 = os_map_64_find();
                if (!v29)
                {
                  if ((v28 & 1) != 0 || v23 && (*(v23 + 8) & 2) == 0 && ((v31 = *(v23 + 10), v32 = v31 > 6, v33 = (1 << v31) & 0x4C, !v32) ? (v34 = v33 == 0) : (v34 = 1), v34 && *(v23 + 9) - 5 <= 0xFFFFFFFC))
                  {
                    v30 = objc_alloc_init(FPMemoryObject);
                  }

                  else
                  {
                    v30 = v23;
                  }

                  v29 = v30;
                  os_map_64_insert();
                }

                if (v29 != v23)
                {
                  v35 = v21;
                  v36 = [(FPMemoryObject *)v29 ensureMemoryObject];
                  v37 = v36;
                  if (v36 != v29)
                  {
                    v38 = v7;
                    v39 = v36;

                    v29 = v39;
                    v40 = os_map_64_delete();
                    os_map_64_insert();

                    v7 = v38;
                    v19 = v83;
                  }

                  sub_100002DF8(v37, v23, v7);
                  if (v28)
                  {
                    -[FPMemoryObject setOwnerPid:](v37, "setOwnerPid:", [v7 pid]);
                  }

                  v21 = v35;
                  v20 = context;
                }

                if (v23)
                {
                  *(v23 + 64) = v29;
                }

LABEL_59:
                v22 = v22 + 1;
              }

              while (v20 != v22);
              v41 = [v92 countByEnumeratingWithState:&v113 objects:v117 count:16];
              v20 = v41;
            }

            while (v41);
          }

          v1 = v80;
          v6 = v79 + 1;
        }

        while ((v79 + 1) != v77);
        v42 = [obj countByEnumeratingWithState:&v94 objects:v112 count:16];
        v77 = v42;
      }

      while (v42);
    }

    v43 = objc_autoreleasePoolPush();
    if ((*(v1 + 136) & 1) == 0)
    {
      goto LABEL_113;
    }

    contexta = v43;
    sub_10000FF68(v82);
    sub_10000FF68(v81);
    sub_10000FF68(v86);
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v44 = [*(v1 + 128) objectEnumerator];
    v45 = [v44 countByEnumeratingWithState:&v113 objects:v117 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v114;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v114 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = sub_10000FF68([*(*(&v113 + 1) + 8 * i) pointerValue]);
        }

        v46 = [v44 countByEnumeratingWithState:&v113 objects:v117 count:{16, v49}];
      }

      while (v46);
    }

    [*(v1 + 16) removeAllObjects];
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v88 = sub_100011D94(v1);
    v93 = [v88 countByEnumeratingWithState:&v104 objects:&v113 count:16];
    if (v93)
    {
      v91 = *v105;
      v50 = &pdwriter_close_ptr;
      do
      {
        for (j = 0; j != v93; j = j + 1)
        {
          if (*v105 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v52 = v50[232];
          v53 = *(*(&v104 + 1) + 8 * j);
          if (sub_10000EDEC())
          {
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v54 = [v53 memoryRegions];
            v55 = [v54 countByEnumeratingWithState:&v108 objects:v117 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = v52;
              v58 = 0;
              v59 = *v109;
              do
              {
                for (k = 0; k != v56; k = k + 1)
                {
                  if (*v109 != v59)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v61 = *(*(&v108 + 1) + 8 * k);
                  v62 = [v61 dirtySize];
                  v58 += [v61 swappedSize] + v62;
                }

                v56 = [v54 countByEnumeratingWithState:&v108 objects:v117 count:16];
              }

              while (v56);
              v1 = v80;
              v50 = &pdwriter_close_ptr;
              v52 = v57;
            }

            else
            {
              v58 = 0;
            }
          }

          else
          {
            v89 = v52;
            v63 = [NSMutableSet alloc];
            v64 = [v53 memoryRegions];
            v54 = [v63 initWithCapacity:{objc_msgSend(v64, "count")}];

            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v65 = [v53 memoryRegions];
            v66 = [v65 countByEnumeratingWithState:&v108 objects:v117 count:16];
            if (v66)
            {
              v67 = v66;
              v58 = 0;
              v68 = *v109;
              do
              {
                for (m = 0; m != v67; m = m + 1)
                {
                  if (*v109 != v68)
                  {
                    objc_enumerationMutation(v65);
                  }

                  v70 = *(*(&v108 + 1) + 8 * m);
                  if (v70)
                  {
                    v70 = v70[8];
                  }

                  v71 = v70;
                  if (([v54 containsObject:v71] & 1) == 0)
                  {
                    v72 = [v71 dirtySize];
                    v58 += [v71 swappedSize] + v72;
                    [v54 addObject:v71];
                  }
                }

                v67 = [v65 countByEnumeratingWithState:&v108 objects:v117 count:16];
              }

              while (v67);
            }

            else
            {
              v58 = 0;
            }

            v1 = v80;
            v50 = &pdwriter_close_ptr;
            v52 = v89;
          }

          v73 = [v52 numberWithUnsignedLongLong:v58];
          v74 = *(v1 + 16);
          v75 = [v50[232] numberWithInt:{objc_msgSend(v53, "pid")}];
          [v74 setObject:v73 forKeyedSubscript:v75];
        }

        v93 = [v88 countByEnumeratingWithState:&v104 objects:&v113 count:16];
      }

      while (v93);
    }

    objc_autoreleasePoolPop(contexta);
  }
}

double sub_10000FF68(uint64_t a1)
{
  os_map_64_init();
  v2 = objc_autoreleasePoolPush();
  os_map_64_foreach();
  objc_autoreleasePoolPop(v2);
  os_map_64_destroy();
  result = 0.0;
  *a1 = 0uLL;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_100010038(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 finalizeObject])
  {
    v5 = *(a1 + 32);
    v6 = v4;
    os_map_64_insert();
  }

  return 1;
}

void sub_100010098(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        *a3 += [v10 totalDirtySize];
        *(a3 + 8) += [v10 totalSwappedSize];
        *(a3 + 16) += [v10 totalCleanSize];
        *(a3 + 24) += [v10 totalReclaimableSize];
        *(a3 + 32) += [v10 totalWiredSize];
        v11 = [v10 totalRegions];

        *(a3 + 40) += v11;
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_10001023C(uint64_t a1, int a2, char a3, int a4)
{
  if (a1)
  {
    sub_100011D94(a1);
    v7 = v6 = a1;
    *&v372 = _NSConcreteStackBlock;
    *(&v372 + 1) = 3221225472;
    *&v373 = sub_100012200;
    *(&v373 + 1) = &unk_100029D30;
    *&v374 = v6;
    v230 = [v7 sortedArrayUsingComparator:&v372];

    v309 = 0u;
    v310 = 0u;
    v307 = 0u;
    v308 = 0u;
    v236 = v6;
    v8 = *(v6 + 144);
    v9 = [v8 countByEnumeratingWithState:&v307 objects:v354 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v308;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v308 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v307 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v13 startAtTime:*(v236 + 176)];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v307 objects:v354 count:16];
      }

      while (v10);
    }

    v14 = v236;
    if (a2)
    {
      v15 = v230;
      v254 = objc_opt_new();
      v363 = 0u;
      v364 = 0u;
      v365 = 0u;
      v366 = 0u;
      v16 = *(v236 + 144);
      v17 = [v16 countByEnumeratingWithState:&v363 objects:&v372 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v364;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v364 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v363 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v254 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v363 objects:&v372 count:16];
        }

        while (v18);
      }

      if ([v254 count])
      {
        v362 = 0u;
        v361 = 0u;
        v360 = 0u;
        v359 = 0u;
        context = v15;
        obj = v15;
        v22 = [obj countByEnumeratingWithState:&v359 objects:v371 count:16];
        if (v22)
        {
          v23 = v22;
          v250 = *v360;
          do
          {
            for (k = 0; k != v23; k = k + 1)
            {
              if (*v360 != v250)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v359 + 1) + 8 * k);
              v355 = 0u;
              v356 = 0u;
              v357 = 0u;
              v358 = 0u;
              v26 = v254;
              v27 = [v26 countByEnumeratingWithState:&v355 objects:&v367 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v356;
                do
                {
                  for (m = 0; m != v28; m = m + 1)
                  {
                    if (*v356 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = *(*(&v355 + 1) + 8 * m);
                    v32 = objc_autoreleasePoolPush();
                    v33 = [v25 memoryRegions];
                    [v31 printVmmapLikeOutputForProcess:v25 regions:v33];

                    objc_autoreleasePoolPop(v32);
                  }

                  v28 = [v26 countByEnumeratingWithState:&v355 objects:&v367 count:16];
                }

                while (v28);
              }
            }

            v23 = [obj countByEnumeratingWithState:&v359 objects:v371 count:16];
          }

          while (v23);
        }

        v15 = context;
      }

      v14 = v236;
    }

    v224 = objc_opt_new();
    v223 = objc_opt_new();
    v216 = 0;
    if ([v230 count] >= 2 && (a4 & 1) == 0)
    {
      v34 = objc_alloc_init(NSMutableDictionary);
      v367 = 0u;
      v368 = 0u;
      v369 = 0u;
      v370 = 0u;
      v35 = v14[1];
      v36 = [v35 countByEnumeratingWithState:&v367 objects:&v372 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v368;
        do
        {
          for (n = 0; n != v37; n = n + 1)
          {
            if (*v368 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v367 + 1) + 8 * n);
            v41 = [v40 sharedCache];
            if (v41)
            {
              v42 = [v34 objectForKeyedSubscript:v41];
              if (!v42)
              {
                v42 = [[FPProcessGroupMinimal alloc] initUniqueProcessGroup];
                [v34 setObject:v42 forKeyedSubscript:v41];
              }

              [v42 addProcess:v40];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v367 objects:&v372 count:16];
        }

        while (v37);
      }

      v216 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v34, "count")}];
      v363 = 0u;
      v364 = 0u;
      v365 = 0u;
      v366 = 0u;
      v43 = v34;
      v44 = [v43 countByEnumeratingWithState:&v363 objects:v371 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v364;
        do
        {
          for (ii = 0; ii != v45; ii = ii + 1)
          {
            if (*v364 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v363 + 1) + 8 * ii);
            v49 = [v43 objectForKeyedSubscript:v48];
            v50 = sub_1000169B8(v49);
            [v216 setObject:v50 forKeyedSubscript:v48];
          }

          v45 = [v43 countByEnumeratingWithState:&v363 objects:v371 count:16];
        }

        while (v45);
      }

      v14 = v236;
    }

    if (a4)
    {
      v251 = 0;
    }

    else
    {
      v51 = v216;
      v52 = +[NSMutableDictionary dictionary];
      v53 = v14;
      v54 = v52;
      v55 = sub_100011D94(v53);
      v255 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v55, "count")}];
      v338 = 0u;
      v339 = 0u;
      v340 = 0u;
      v341 = 0u;
      v56 = v55;
      v57 = [v56 countByEnumeratingWithState:&v338 objects:&v372 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v339;
        do
        {
          for (jj = 0; jj != v58; jj = jj + 1)
          {
            if (*v339 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v338 + 1) + 8 * jj) pid]);
            [v255 addObject:v61];
          }

          v58 = [v56 countByEnumeratingWithState:&v338 objects:&v372 count:16];
        }

        while (v58);
      }

      contexta = v51;
      v227 = v56;

      v337 = 0u;
      v336 = 0u;
      v335 = 0u;
      v334 = 0u;
      obja = *(v236 + 8);
      v62 = [obja countByEnumeratingWithState:&v334 objects:v371 count:16];
      if (v62)
      {
        v63 = v62;
        v252 = *v335;
        do
        {
          for (kk = 0; kk != v63; kk = kk + 1)
          {
            if (*v335 != v252)
            {
              objc_enumerationMutation(obja);
            }

            v65 = *(*(&v334 + 1) + 8 * kk);
            v66 = [v65 hiddenFromDisplay];
            v67 = [v65 sharedCache];
            if (v67)
            {
              v68 = contexta;
              v69 = [contexta objectForKeyedSubscript:v67];
            }

            else
            {
              v69 = 0;
              v68 = contexta;
            }

            v70 = [v65 memoryRegions];
            v327[0] = _NSConcreteStackBlock;
            v327[1] = 3221225472;
            v327[2] = sub_10001201C;
            v327[3] = &unk_100029CC8;
            v333 = v66;
            v328 = v255;
            v329 = v68;
            v330 = v69;
            v331 = v54;
            v332 = v65;
            v71 = v69;
            [v70 fp_enumerateObjectsWithBatchSize:256 usingBlock:v327];
          }

          v63 = [obja countByEnumeratingWithState:&v334 objects:v371 count:16];
        }

        while (v63);
      }

      v72 = [[NSMutableSet alloc] initWithCapacity:{3 * objc_msgSend(v255, "count")}];
      v323 = 0u;
      v324 = 0u;
      v325 = 0u;
      v326 = 0u;
      v73 = [v54 allKeys];
      v74 = [v73 countByEnumeratingWithState:&v323 objects:&v367 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v324;
        do
        {
          for (mm = 0; mm != v75; mm = mm + 1)
          {
            if (*v324 != v76)
            {
              objc_enumerationMutation(v73);
            }

            v78 = *(*(&v323 + 1) + 8 * mm);
            v79 = [v54 objectForKeyedSubscript:v78];
            v80 = [v72 member:v79];
            if (!v80)
            {
              v80 = sub_1000169B8(v79);
              [v72 addObject:v80];
            }

            [v54 setObject:v80 forKeyedSubscript:v78];
          }

          v75 = [v73 countByEnumeratingWithState:&v323 objects:&v367 count:16];
        }

        while (v75);
      }

      v322 = 0u;
      v321 = 0u;
      v320 = 0u;
      v319 = 0u;
      v81 = v54;
      v82 = [v81 countByEnumeratingWithState:&v319 objects:&v363 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v320;
        do
        {
          for (nn = 0; nn != v83; nn = nn + 1)
          {
            if (*v320 != v84)
            {
              objc_enumerationMutation(v81);
            }

            v86 = *(*(&v319 + 1) + 8 * nn);
            v87 = [v81 objectForKeyedSubscript:v86];
            v88 = [v86 nonretainedObjectValue];
            sub_100016BE4(v87, v88);
          }

          v83 = [v81 countByEnumeratingWithState:&v319 objects:&v363 count:16];
        }

        while (v83);
      }

      v251 = +[NSMutableDictionary dictionary];
      v315 = 0u;
      v316 = 0u;
      v317 = 0u;
      v318 = 0u;
      v233 = v72;
      objb = [v233 countByEnumeratingWithState:&v315 objects:&v359 count:16];
      if (objb)
      {
        v237 = *v316;
        do
        {
          for (i1 = 0; i1 != objb; i1 = i1 + 1)
          {
            if (*v316 != v237)
            {
              objc_enumerationMutation(v233);
            }

            v90 = *(*(&v315 + 1) + 8 * i1);
            v91 = [v90 processes];
            v92 = [v91 count];

            v314 = 0u;
            v313 = 0u;
            v311 = 0u;
            v312 = 0u;
            v93 = [v90 processes];
            v94 = [v93 countByEnumeratingWithState:&v311 objects:&v355 count:16];
            if (v94)
            {
              v95 = v94;
              v96 = *v312;
              do
              {
                for (i2 = 0; i2 != v95; i2 = i2 + 1)
                {
                  if (*v312 != v96)
                  {
                    objc_enumerationMutation(v93);
                  }

                  v98 = *(*(&v311 + 1) + 8 * i2);
                  v99 = [v98 asNumber];
                  v100 = [v251 objectForKeyedSubscript:v99];

                  if (!v100)
                  {
                    v100 = objc_alloc_init(NSMutableArray);
                    v101 = [v98 asNumber];
                    [v251 setObject:v100 forKeyedSubscript:v101];
                  }

                  if (v92 == 1)
                  {
                    [v100 insertObject:v90 atIndex:0];
                  }

                  else
                  {
                    [v100 addObject:v90];
                  }
                }

                v95 = [v93 countByEnumeratingWithState:&v311 objects:&v355 count:16];
              }

              while (v95);
            }
          }

          objb = [v233 countByEnumeratingWithState:&v315 objects:&v359 count:16];
        }

        while (objb);
      }

      v14 = v236;
    }

    if ([v14[19] count])
    {
      v222 = [v14[19] fp_mergeWithData:&__NSDictionary0__struct forceAggregate:1];
    }

    else
    {
      v222 = &__NSDictionary0__struct;
    }

    if ((a4 & 1) == 0)
    {
      sub_10000F020(v14);
    }

    v215 = objc_autoreleasePoolPush();
    v303 = 0u;
    v304 = 0u;
    v305 = 0u;
    v306 = 0u;
    v102 = v14[18];
    v103 = [v102 countByEnumeratingWithState:&v303 objects:v353 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v304;
      do
      {
        for (i3 = 0; i3 != v104; i3 = i3 + 1)
        {
          if (*v304 != v105)
          {
            objc_enumerationMutation(v102);
          }

          v107 = *(*(&v303 + 1) + 8 * i3);
          v108 = objc_autoreleasePoolPush();
          if (objc_opt_respondsToSelector())
          {
            [v107 printHeader];
          }

          objc_autoreleasePoolPop(v108);
        }

        v104 = [v102 countByEnumeratingWithState:&v303 objects:v353 count:16];
      }

      while (v104);
    }

    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v217 = v230;
    v221 = [v217 countByEnumeratingWithState:&v299 objects:v352 count:16];
    if (v221)
    {
      v219 = *v300;
      do
      {
        v109 = 0;
        do
        {
          if (*v300 != v219)
          {
            objc_enumerationMutation(v217);
          }

          v228 = v109;
          v110 = *(*(&v299 + 1) + 8 * v109);
          v111 = [v110 errors];
          v256 = [v111 count];

          v112 = [v110 warnings];
          v113 = [v112 count];

          if (v113)
          {
            [v223 addObject:v110];
          }

          if (v256)
          {
            [v224 addObject:v110];
          }

          else
          {
            v114 = [v110 auxData];
            v115 = v114;
            if (v114)
            {
              v116 = [v114 fp_mergeWithData:v222];

              v222 = v116;
            }
          }

          v117 = *(v236 + 16);
          v118 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v110 pid]);
          v119 = [v117 objectForKeyedSubscript:v118];

          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v120 = *(v236 + 144);
          v121 = [v120 countByEnumeratingWithState:&v295 objects:v351 count:16];
          if (v121)
          {
            v122 = v121;
            v123 = *v296;
            do
            {
              for (i4 = 0; i4 != v122; i4 = i4 + 1)
              {
                if (*v296 != v123)
                {
                  objc_enumerationMutation(v120);
                }

                v125 = *(*(&v295 + 1) + 8 * i4);
                v126 = objc_autoreleasePoolPush();
                [v125 printProcessHeader:v110];
                if (!v256)
                {
                  [v125 printProcessTotal:v119 forProcess:v110];
                }

                [v125 endProcessHeader:v110];
                objc_autoreleasePoolPop(v126);
              }

              v122 = [v120 countByEnumeratingWithState:&v295 objects:v351 count:16];
            }

            while (v122);
          }

          v225 = v119;

          if ((a4 & 1) == 0)
          {
            v127 = [v110 asNumber];
            v128 = [v251 objectForKeyedSubscript:v127];

            v218 = v128;
            if (v128)
            {
              v289 = 0uLL;
              v290 = 0uLL;
              v287 = 0uLL;
              v288 = 0uLL;
              v231 = v128;
              v238 = [v231 countByEnumeratingWithState:&v287 objects:v349 count:16];
              if (v238)
              {
                v234 = *v288;
                do
                {
                  v129 = 0;
                  do
                  {
                    if (*v288 != v234)
                    {
                      objc_enumerationMutation(v231);
                    }

                    objc = v129;
                    v130 = *(*(&v287 + 1) + 8 * v129);
                    v131 = sub_100016D18(v130);
                    v373 = 0u;
                    v374 = 0u;
                    v372 = 0u;
                    v371[0] = 0;
                    if (!v131)
                    {
                      if (v130)
                      {
                        v132 = v130[4];
                      }

                      else
                      {
                        v132 = 0;
                      }

                      v133 = v132;
                      v134 = objc_autoreleasePoolPush();
                      v135 = [v133 objectEnumerator];
                      v131 = sub_100011DFC(v135, v110, v371, a3);

                      objc_autoreleasePoolPop(v134);
                      if (!v371[0])
                      {
                        v136 = [v130 processes];
                        v137 = [v136 count];

                        if (v137 >= 0x1A)
                        {
                          v138 = [v130 processes];
                          sub_100016C8C(v130, v131, [v138 count] - 1);
                        }
                      }
                    }

                    if (!v256)
                    {
                      sub_100010098(FPFootprint, v131, &v372);
                    }

                    contextb = objc_autoreleasePoolPush();
                    v283 = 0u;
                    v284 = 0u;
                    v285 = 0u;
                    v286 = 0u;
                    v139 = *(v236 + 144);
                    v140 = [v139 countByEnumeratingWithState:&v283 objects:v348 count:16];
                    if (v140)
                    {
                      v141 = v140;
                      v142 = *v284;
                      do
                      {
                        for (i5 = 0; i5 != v141; i5 = i5 + 1)
                        {
                          if (*v284 != v142)
                          {
                            objc_enumerationMutation(v139);
                          }

                          v144 = *(*(&v283 + 1) + 8 * i5);
                          v145 = [v130 processes];
                          v146 = [v145 count];

                          if (v146 == 1)
                          {
                            [v144 printProcessCategories:v131 total:&v372 forProcess:v110];
                          }

                          else
                          {
                            [v144 printSharedCategories:v131 sharedWith:v130 forProcess:v110 hasProcessView:v371[0] == 2 total:&v372];
                          }
                        }

                        v141 = [v139 countByEnumeratingWithState:&v283 objects:v348 count:16];
                      }

                      while (v141);
                    }

                    objc_autoreleasePoolPop(contextb);
                    v129 = objc + 1;
                  }

                  while (objc + 1 != v238);
                  v147 = [v231 countByEnumeratingWithState:&v287 objects:v349 count:16];
                  v238 = v147;
                }

                while (v147);
              }
            }

            else
            {
              v373 = 0uLL;
              v374 = 0uLL;
              v372 = 0uLL;
              v291 = 0uLL;
              v292 = 0uLL;
              v293 = 0uLL;
              v294 = 0uLL;
              v148 = *(v236 + 144);
              v149 = [v148 countByEnumeratingWithState:&v291 objects:v350 count:16];
              if (v149)
              {
                v150 = v149;
                v151 = *v292;
                do
                {
                  for (i6 = 0; i6 != v150; i6 = i6 + 1)
                  {
                    if (*v292 != v151)
                    {
                      objc_enumerationMutation(v148);
                    }

                    [*(*(&v291 + 1) + 8 * i6) printProcessCategories:&__NSDictionary0__struct total:&v372 forProcess:v110];
                  }

                  v150 = [v148 countByEnumeratingWithState:&v291 objects:v350 count:16];
                }

                while (v150);
              }
            }
          }

          v153 = objc_autoreleasePoolPush();
          v279 = 0u;
          v280 = 0u;
          v281 = 0u;
          v282 = 0u;
          v154 = *(v236 + 144);
          v155 = [v154 countByEnumeratingWithState:&v279 objects:v347 count:16];
          if (v155)
          {
            v156 = v155;
            v157 = *v280;
            do
            {
              for (i7 = 0; i7 != v156; i7 = i7 + 1)
              {
                if (*v280 != v157)
                {
                  objc_enumerationMutation(v154);
                }

                v159 = *(*(&v279 + 1) + 8 * i7);
                v160 = [v110 auxData];
                [v159 printProcessAuxData:v160 forProcess:v110];
              }

              v156 = [v154 countByEnumeratingWithState:&v279 objects:v347 count:16];
            }

            while (v156);
          }

          objc_autoreleasePoolPop(v153);
          v109 = v228 + 1;
        }

        while ((v228 + 1) != v221);
        v221 = [v217 countByEnumeratingWithState:&v299 objects:v352 count:16];
      }

      while (v221);
    }

    objc_autoreleasePoolPop(v215);
    objd = objc_autoreleasePoolPush();
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    contextc = v216;
    v161 = [contextc countByEnumeratingWithState:&v275 objects:v346 count:16];
    if (v161)
    {
      v162 = v161;
      v257 = *v276;
      do
      {
        v163 = 0;
        do
        {
          if (*v276 != v257)
          {
            objc_enumerationMutation(contextc);
          }

          v164 = *(*(&v275 + 1) + 8 * v163);
          v165 = [contextc objectForKeyedSubscript:v164];
          v166 = v165;
          if (v165)
          {
            v167 = *(v165 + 32);
          }

          else
          {
            v167 = 0;
          }

          v168 = v167;
          v169 = objc_autoreleasePoolPush();
          v170 = [v168 objectEnumerator];
          v171 = sub_100011DFC(v170, 0, 0, a3);

          objc_autoreleasePoolPop(v169);
          v373 = 0u;
          v374 = 0u;
          v372 = 0u;
          sub_100010098(FPFootprint, v171, &v372);
          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          v172 = *(v236 + 144);
          v173 = [v172 countByEnumeratingWithState:&v271 objects:v345 count:16];
          if (v173)
          {
            v174 = v173;
            v175 = *v272;
            do
            {
              for (i8 = 0; i8 != v174; i8 = i8 + 1)
              {
                if (*v272 != v175)
                {
                  objc_enumerationMutation(v172);
                }

                [*(*(&v271 + 1) + 8 * i8) printSharedCache:v164 categories:v171 sharedWith:v166 total:&v372];
              }

              v174 = [v172 countByEnumeratingWithState:&v271 objects:v345 count:16];
            }

            while (v174);
          }

          v163 = v163 + 1;
        }

        while (v163 != v162);
        v177 = [contextc countByEnumeratingWithState:&v275 objects:v346 count:16];
        v162 = v177;
      }

      while (v177);
    }

    objc_autoreleasePoolPop(objd);
    v178 = objc_alloc_init(NSMutableArray);
    v267 = 0u;
    v268 = 0u;
    v269 = 0u;
    v270 = 0u;
    v179 = v217;
    v180 = [v179 countByEnumeratingWithState:&v267 objects:v344 count:16];
    if (v180)
    {
      v181 = v180;
      v182 = *v268;
      do
      {
        for (i9 = 0; i9 != v181; i9 = i9 + 1)
        {
          if (*v268 != v182)
          {
            objc_enumerationMutation(v179);
          }

          v184 = [*(*(&v267 + 1) + 8 * i9) globalErrors];
          [v178 addObjectsFromArray:v184];
        }

        v181 = [v179 countByEnumeratingWithState:&v267 objects:v344 count:16];
      }

      while (v181);
    }

    v229 = v179;

    v185 = objc_autoreleasePoolPush();
    v263 = 0u;
    v264 = 0u;
    v265 = 0u;
    v266 = 0u;
    v186 = *(v236 + 144);
    v187 = [v186 countByEnumeratingWithState:&v263 objects:v343 count:16];
    if (v187)
    {
      v188 = v187;
      v189 = *v264;
      do
      {
        for (i10 = 0; i10 != v188; i10 = i10 + 1)
        {
          if (*v264 != v189)
          {
            objc_enumerationMutation(v186);
          }

          [*(*(&v263 + 1) + 8 * i10) printProcessesWithWarnings:v223 processesWithErrors:v224 globalErrors:v178];
        }

        v188 = [v186 countByEnumeratingWithState:&v263 objects:v343 count:16];
      }

      while (v188);
    }

    v226 = v178;

    objc_autoreleasePoolPop(v185);
    v361 = 0u;
    v360 = 0u;
    v359 = 0u;
    v191 = objc_alloc_init(NSMutableSet);
    v192 = +[NSMutableDictionary dictionary];
    v367 = 0u;
    v368 = 0u;
    v369 = 0u;
    v370 = 0u;
    v232 = sub_100011D94(v236);
    v239 = [v232 countByEnumeratingWithState:&v367 objects:&v372 count:16];
    if (v239)
    {
      v235 = *v368;
      do
      {
        v193 = 0;
        do
        {
          if (*v368 != v235)
          {
            objc_enumerationMutation(v232);
          }

          v258 = v193;
          v194 = *(*(&v367 + 1) + 8 * v193);
          obje = objc_autoreleasePoolPush();
          v363 = 0u;
          v364 = 0u;
          v365 = 0u;
          v366 = 0u;
          v195 = [v194 memoryRegions];
          v196 = [v195 countByEnumeratingWithState:&v363 objects:v371 count:16];
          if (v196)
          {
            v197 = v196;
            v198 = *v364;
            do
            {
              for (i11 = 0; i11 != v197; i11 = i11 + 1)
              {
                if (*v364 != v198)
                {
                  objc_enumerationMutation(v195);
                }

                v200 = *(*(&v363 + 1) + 8 * i11);
                if (v200)
                {
                  v200 = v200[8];
                }

                v201 = v200;
                if (([v191 containsObject:v201] & 1) == 0)
                {
                  [v191 addObject:v201];
                  if (a3)
                  {
                    [v201 name];
                  }

                  else
                  {
                    [v201 fullName];
                  }
                  v202 = ;
                  v203 = [v192 objectForKeyedSubscript:v202];
                  if (!v203)
                  {
                    v204 = sub_10001BB90([FPMemoryCategory alloc], a3);
                    v203 = v205;
                    [v192 setObject:v205 forKeyedSubscript:{v202, v204}];
                  }

                  sub_10001BE48(v203, v201);
                }
              }

              v197 = [v195 countByEnumeratingWithState:&v363 objects:v371 count:16];
            }

            while (v197);
          }

          objc_autoreleasePoolPop(obje);
          v193 = v258 + 1;
        }

        while ((v258 + 1) != v239);
        v239 = [v232 countByEnumeratingWithState:&v367 objects:&v372 count:16];
      }

      while (v239);
    }

    sub_100010098(FPFootprint, v192, &v359);
    if ([v226 count])
    {
      v206 = 1;
    }

    else
    {
      v206 = [v224 count] != 0;
    }

    v261 = 0u;
    v262 = 0u;
    v259 = 0u;
    v260 = 0u;
    v207 = *(v236 + 144);
    v208 = [v207 countByEnumeratingWithState:&v259 objects:v342 count:16];
    if (v208)
    {
      v209 = v208;
      v210 = *v260;
      if (a4)
      {
        v211 = 0;
      }

      else
      {
        v211 = v192;
      }

      do
      {
        for (i12 = 0; i12 != v209; i12 = i12 + 1)
        {
          if (*v260 != v210)
          {
            objc_enumerationMutation(v207);
          }

          v213 = *(*(&v259 + 1) + 8 * i12);
          v214 = objc_autoreleasePoolPush();
          [v213 printSummaryCategories:v211 total:&v359 hadErrors:v206];
          [v213 printGlobalAuxData:v222];
          [v213 endAtTime:*(v236 + 184)];
          objc_autoreleasePoolPop(v214);
        }

        v209 = [v207 countByEnumeratingWithState:&v259 objects:v342 count:16];
      }

      while (v209);
    }
  }
}

id sub_100011D94(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"hiddenFromDisplay == NO"];
  v3 = [*(a1 + 8) filteredArrayUsingPredicate:v2];

  return v3;
}

id sub_100011DFC(void *a1, void *a2, unsigned __int8 *a3, char a4)
{
  v6 = a1;
  v22 = a2;
  v7 = +[NSMutableDictionary dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (a4)
        {
          [v13 name];
        }

        else
        {
          [v13 fullName];
        }
        v14 = ;
        v15 = [v7 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v16 = sub_10001BB90([FPMemoryCategory alloc], a4);
          v15 = v17;
          [v7 setObject:v17 forKeyedSubscript:{v14, v16}];
        }

        v18 = [v13 viewForProcess:v22];
        sub_10001BE48(v15, v18);
        if (v10 == 2 || v18 == v13)
        {
          if (!v10)
          {
            v10 = [v13 couldHaveProcessView];
          }
        }

        else
        {
          v10 = 2;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    *a3 = v10;
  }

  return v7;
}

void sub_10001201C(uint64_t a1, id *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v6 = *a2;
      v7 = v6;
      v8 = v6 ? *(v6 + 8) : 0;
      v9 = v8;
      v10 = v9;
      if (*(a1 + 72) != 1)
      {
        break;
      }

      if ([v9 ownerPid] != -1)
      {
        v11 = *(a1 + 32);
        v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 ownerPid]);
        if (([v11 containsObject:v12] & 1) == 0)
        {
          goto LABEL_18;
        }

        v13 = [v10 containsFakeRegion];

        if (v13)
        {
          break;
        }
      }

LABEL_19:

      ++a2;
      if (!--v3)
      {
        return;
      }
    }

    if (v7)
    {
      v14 = *(a1 + 40) == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && (v7[8] & 2) != 0 && !sub_100002594(v7))
    {
      sub_100016BE4(*(a1 + 48), v10);
      goto LABEL_19;
    }

    v12 = [NSValue valueWithNonretainedObject:v10];
    v15 = [*(a1 + 56) objectForKeyedSubscript:v12];
    if (!v15)
    {
      v15 = objc_alloc_init(FPProcessGroupMinimal);
      [*(a1 + 56) setObject:v15 forKeyedSubscript:v12];
    }

    [(FPProcessGroupMinimal *)v15 addProcess:*(a1 + 64)];

LABEL_18:
    goto LABEL_19;
  }
}

int64_t sub_1000121A8(id a1, FPProcess *a2, FPProcess *a3)
{
  v4 = a3;
  LODWORD(a2) = [(FPProcess *)a2 pid];
  v5 = [(FPProcess *)v4 pid];

  if (a2 > v5)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100012200(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 pid]);
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = *(*(a1 + 32) + 16);
  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 pid]);
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [v12 compare:v9];
  if (!v13)
  {
    v14 = [v5 pid];
    if (v14 > [v6 pid])
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

void sub_100012CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012D1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012D34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v10 = IOAccelMemoryInfoErrorDomain;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [v12 domain];
        if (![v13 isEqualToString:v10])
        {

LABEL_12:
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
          goto LABEL_13;
        }

        v14 = [v12 code];

        if (v14 != 1)
        {
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  v24 = v6;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v27)
  {
    v26 = *v33;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * j);
        v17 = [v16 processIDs];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v29;
          do
          {
            for (k = 0; k != v19; k = k + 1)
            {
              if (*v29 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v28 + 1) + 8 * k);
              v23 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v22];
              if (!v23)
              {
                v23 = +[NSMutableArray array];
                [*(*(*(a1 + 48) + 8) + 40) setObject:v23 forKeyedSubscript:v22];
              }

              [v23 addObject:v16];
            }

            v19 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v19);
        }
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v27);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1000130EC(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = FPOutputFormatterJSON;
    a1 = objc_msgSendSuper2(&v17, "init");
    if (a1)
    {
      v4 = objc_alloc_init(NSISO8601DateFormatter);
      v5 = *(a1 + 6);
      *(a1 + 6) = v4;

      [*(a1 + 6) setFormatOptions:3955];
      v6 = +[NSTimeZone systemTimeZone];
      [*(a1 + 6) setTimeZone:v6];

      v7 = [v3 UTF8String];
      v8 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
      v9 = fopen(v7, "w+");
      *v8 = v9;
      if (v9)
      {
        v8[8] = 0;
        *(a1 + 5) = v8;
        fputc(123, *v8);
        v10 = *(a1 + 5);
        *(v10 + 8) = 0;
        fwrite("unit:", 7uLL, 1uLL, *v10);
        v11 = *(a1 + 5);
        *(v11 + 8) = 0;
        fwrite("byte", 6uLL, 1uLL, *v11);
        v12 = *(a1 + 5);
        *(v12 + 8) = 1;
        fputc(44, *v12);
        fwrite("bytes per unit:", 0x11uLL, 1uLL, **(a1 + 5));
        v13 = *(a1 + 5);
        *(v13 + 8) = 0;
        fprintf(*v13, "%d", 1);
        *(*(a1 + 5) + 8) = 1;
        if (!sub_10000EDEC())
        {
          v14 = *(a1 + 5);
          if (v14)
          {
            if (*(v14 + 8) == 1)
            {
              fputc(44, *v14);
              v14 = *(a1 + 5);
            }

            fwrite("vm_object_dirty_analysis:", 0x1BuLL, 1uLL, *v14);
            v15 = *(a1 + 5);
            *(v15 + 8) = 0;
            fputs("true", *v15);
            *(*(a1 + 5) + 8) = 1;
          }
        }
      }

      else
      {
        free(v8);
        *(a1 + 5) = 0;
        perror("Unable to open JSON writer");

        a1 = 0;
      }
    }
  }

  return a1;
}

void sub_100013528(uint64_t a1, void *a2, const char *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v26 = v5;
      if (*(v6 + 8) == 1)
      {
        fputc(44, *v6);
        v6 = *(a1 + 40);
      }

      fprintf(*v6, "%s:", a3);
      v7 = *(a1 + 40);
      *(v7 + 8) = 0;
      fputc(123, *v7);
      v8 = *(a1 + 40);
      *(v8 + 8) = 0;
      fwrite("mach_absolute_time_ns:", 0x18uLL, 1uLL, *v8);
      v9 = *(a1 + 40);
      *(v9 + 8) = 0;
      v10 = *v9;
      v11 = sub_100016F38(v26);
      fprintf(v10, "%llu", v11);
      v12 = *(a1 + 40);
      *(v12 + 8) = 1;
      fputc(44, *v12);
      fwrite("mach_continuous_time_ns:", 0x1AuLL, 1uLL, **(a1 + 40));
      v13 = *(a1 + 40);
      *(v13 + 8) = 0;
      v14 = *v13;
      v15 = sub_100016F9C(v26);
      fprintf(v14, "%llu", v15);
      v16 = *(a1 + 40);
      *(v16 + 8) = 1;
      fputc(44, *v16);
      fwrite("wall_time_s:", 0xEuLL, 1uLL, **(a1 + 40));
      v17 = *(a1 + 40);
      *(v17 + 8) = 0;
      if (v26)
      {
        v18 = v26[3];
      }

      else
      {
        v18 = 0.0;
      }

      fprintf(*v17, "%f", v18);
      v19 = *(a1 + 40);
      *(v19 + 8) = 1;
      fputc(44, *v19);
      fwrite("date:", 7uLL, 1uLL, **(a1 + 40));
      v20 = *(a1 + 40);
      *(v20 + 8) = 0;
      v21 = *v20;
      v22 = *(a1 + 48);
      v23 = sub_100017000(v26);
      v24 = [v22 stringFromDate:v23];
      fprintf(v21, "%s", [v24 UTF8String]);

      v25 = *(a1 + 40);
      *(v25 + 8) = 1;
      fputc(125, *v25);
      *(*(a1 + 40) + 8) = 1;
      v5 = v26;
    }
  }
}

void sub_100013DD4(uint64_t a1, id *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v6 = *a2;
      v7 = *(*(a1 + 32) + 40);
      if (v7)
      {
        if (*(v7 + 8) == 1)
        {
          fputc(44, *v7);
          v7 = *(*(a1 + 32) + 40);
        }

        fputc(123, *v7);
        *(*(*(a1 + 32) + 40) + 8) = 0;
        v8 = *(*(a1 + 32) + 40);
        if (v8)
        {
          if (*(v8 + 8) == 1)
          {
            fputc(44, *v8);
            v8 = *(*(a1 + 32) + 40);
          }

          fwrite("id:", 5uLL, 1uLL, *v8);
          *(*(*(a1 + 32) + 40) + 8) = 0;
          v9 = *(*(a1 + 32) + 40);
          if (v9)
          {
            v10 = v6 ? v6[12] : 0;
            fprintf(*v9, "%llu", v10);
            *(*(*(a1 + 32) + 40) + 8) = 1;
            v11 = *(*(a1 + 32) + 40);
            if (v11)
            {
              if (*(v11 + 8) == 1)
              {
                fputc(44, *v11);
                v11 = *(*(a1 + 32) + 40);
              }

              fwrite("name:", 7uLL, 1uLL, *v11);
              *(*(*(a1 + 32) + 40) + 8) = 0;
              v12 = *(*(a1 + 32) + 40);
              if (v12)
              {
                v13 = *v12;
                v14 = [v6 fullName];
                v15 = [v14 stringByReplacingOccurrencesOfString:@"" withString:@"\\""];
                fprintf(v13, "%s", [v15 UTF8String]);

                *(*(*(a1 + 32) + 40) + 8) = 1;
              }
            }
          }
        }
      }

      if (!v6)
      {
        break;
      }

      v16 = *(a1 + 32);
      if (v6[10] != -1)
      {
        goto LABEL_19;
      }

LABEL_26:
      v20 = *(v16 + 40);
      if (v20)
      {
        if (*(v20 + 8) == 1)
        {
          fputc(44, *v20);
          v20 = *(*(a1 + 32) + 40);
        }

        fwrite("vsize:", 8uLL, 1uLL, *v20);
        *(*(*(a1 + 32) + 40) + 8) = 0;
        v21 = *(*(a1 + 32) + 40);
        if (v21)
        {
          if (v6)
          {
            v22 = v6[11];
          }

          else
          {
            v22 = 0;
          }

          fprintf(*v21, "%llu", v22);
          *(*(*(a1 + 32) + 40) + 8) = 1;
        }
      }

      if (v6)
      {
        if (v6[9])
        {
          v23 = *(*(a1 + 32) + 40);
          if (v23)
          {
            if (*(v23 + 8) == 1)
            {
              fputc(44, *v23);
              v23 = *(*(a1 + 32) + 40);
            }

            fwrite("offset:", 9uLL, 1uLL, *v23);
            *(*(*(a1 + 32) + 40) + 8) = 0;
            v24 = *(*(a1 + 32) + 40);
            if (v24)
            {
              fprintf(*v24, "%llu", v6[9]);
              *(*(*(a1 + 32) + 40) + 8) = 1;
            }
          }
        }
      }

      v25 = [v6 dirtySize];
      if (v25)
      {
        v26 = *(*(a1 + 32) + 40);
        if (v26)
        {
          v27 = v25;
          if (*(v26 + 8) == 1)
          {
            fputc(44, *v26);
            v26 = *(*(a1 + 32) + 40);
          }

          fwrite("dirty:", 8uLL, 1uLL, *v26);
          *(*(*(a1 + 32) + 40) + 8) = 0;
          v28 = *(*(a1 + 32) + 40);
          if (v28)
          {
            fprintf(*v28, "%llu", v27);
            *(*(*(a1 + 32) + 40) + 8) = 1;
          }
        }
      }

      v29 = [v6 swappedSize];
      if (v29)
      {
        v30 = *(*(a1 + 32) + 40);
        if (v30)
        {
          v31 = v29;
          if (*(v30 + 8) == 1)
          {
            fputc(44, *v30);
            v30 = *(*(a1 + 32) + 40);
          }

          fwrite("swapped:", 0xAuLL, 1uLL, *v30);
          *(*(*(a1 + 32) + 40) + 8) = 0;
          v32 = *(*(a1 + 32) + 40);
          if (v32)
          {
            fprintf(*v32, "%llu", v31);
            *(*(*(a1 + 32) + 40) + 8) = 1;
          }
        }
      }

      v33 = [v6 cleanSize];
      if (v33)
      {
        v34 = *(*(a1 + 32) + 40);
        if (v34)
        {
          v35 = v33;
          if (*(v34 + 8) == 1)
          {
            fputc(44, *v34);
            v34 = *(*(a1 + 32) + 40);
          }

          fwrite("clean:", 8uLL, 1uLL, *v34);
          *(*(*(a1 + 32) + 40) + 8) = 0;
          v36 = *(*(a1 + 32) + 40);
          if (v36)
          {
            fprintf(*v36, "%llu", v35);
            *(*(*(a1 + 32) + 40) + 8) = 1;
          }
        }
      }

      v37 = [v6 reclaimableSize];
      if (v37)
      {
        v38 = *(*(a1 + 32) + 40);
        if (v38)
        {
          v39 = v37;
          if (*(v38 + 8) == 1)
          {
            fputc(44, *v38);
            v38 = *(*(a1 + 32) + 40);
          }

          fwrite("reclaimable:", 0xEuLL, 1uLL, *v38);
          *(*(*(a1 + 32) + 40) + 8) = 0;
          v40 = *(*(a1 + 32) + 40);
          if (v40)
          {
            fprintf(*v40, "%llu", v39);
            *(*(*(a1 + 32) + 40) + 8) = 1;
          }
        }
      }

      v41 = [v6 wiredSize];
      if (v41)
      {
        v42 = *(*(a1 + 32) + 40);
        if (v42)
        {
          v43 = v41;
          if (*(v42 + 8) == 1)
          {
            fputc(44, *v42);
            v42 = *(*(a1 + 32) + 40);
          }

          fwrite("wired:", 8uLL, 1uLL, *v42);
          *(*(*(a1 + 32) + 40) + 8) = 0;
          v44 = *(*(a1 + 32) + 40);
          if (v44)
          {
            fprintf(*v44, "%llu", v43);
            *(*(*(a1 + 32) + 40) + 8) = 1;
          }
        }
      }

      if (v6)
      {
        v45 = v6[13];
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      if (v46)
      {
        v47 = *(*(a1 + 32) + 40);
        if (v47)
        {
          if (*(v47 + 8) == 1)
          {
            fputc(44, *v47);
            v47 = *(*(a1 + 32) + 40);
          }

          fwrite("dispositions:", 0xFuLL, 1uLL, *v47);
          *(*(*(a1 + 32) + 40) + 8) = 0;
          v48 = *(*(a1 + 32) + 40);
          if (v48)
          {
            if (*(v48 + 8) == 1)
            {
              fputc(44, *v48);
              v48 = *(*(a1 + 32) + 40);
            }

            fputc(91, *v48);
            *(*(*(a1 + 32) + 40) + 8) = 0;
          }
        }

        if (v6)
        {
          v49 = v6[13];
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_1000145B0;
        v53[3] = &unk_100029E40;
        v53[4] = *(a1 + 32);
        sub_10000A920(v50, v53);

        v51 = *(*(a1 + 32) + 40);
        if (v51)
        {
          fputc(93, *v51);
          *(*(*(a1 + 32) + 40) + 8) = 1;
        }
      }

      v52 = *(*(a1 + 32) + 40);
      if (v52)
      {
        fputc(125, *v52);
        *(*(*(a1 + 32) + 40) + 8) = 1;
      }

      ++a2;
      if (!--v3)
      {
        return;
      }
    }

    v16 = *(a1 + 32);
LABEL_19:
    v17 = *(v16 + 40);
    if (v17)
    {
      if (*(v17 + 8) == 1)
      {
        fputc(44, *v17);
        v17 = *(*(a1 + 32) + 40);
      }

      fwrite("addr:", 7uLL, 1uLL, *v17);
      *(*(*(a1 + 32) + 40) + 8) = 0;
      v16 = *(a1 + 32);
      v18 = *(v16 + 40);
      if (v18)
      {
        if (v6)
        {
          v19 = v6[10];
        }

        else
        {
          v19 = 0;
        }

        fprintf(*v18, "%llu", v19);
        *(*(*(a1 + 32) + 40) + 8) = 1;
        v16 = *(a1 + 32);
      }
    }

    goto LABEL_26;
  }
}

size_t sub_1000145B0(size_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(v4 + 40);
  if (v5)
  {
    if (*(v5 + 8) == 1)
    {
      fputc(44, *v5);
      v5 = *(*(v3 + 32) + 40);
    }

    result = fputc(123, *v5);
    *(*(*(v3 + 32) + 40) + 8) = 0;
    v4 = *(v3 + 32);
    v6 = *(v4 + 40);
    if (v6)
    {
      if (*(v6 + 8) == 1)
      {
        fputc(44, *v6);
        v6 = *(*(v3 + 32) + 40);
      }

      result = fwrite("offset:", 9uLL, 1uLL, *v6);
      *(*(*(v3 + 32) + 40) + 8) = 0;
      v4 = *(v3 + 32);
      v7 = *(v4 + 40);
      if (v7)
      {
        result = fprintf(*v7, "%llu", *a2);
        *(*(*(v3 + 32) + 40) + 8) = 1;
        v4 = *(v3 + 32);
      }
    }
  }

  v8 = a2[3];
  if (v8)
  {
    v9 = *(v4 + 40);
    if (v9)
    {
      if (*(v9 + 8) == 1)
      {
        fputc(44, *v9);
        v9 = *(*(v3 + 32) + 40);
      }

      result = fwrite("dirty:", 8uLL, 1uLL, *v9);
      *(*(*(v3 + 32) + 40) + 8) = 0;
      v4 = *(v3 + 32);
      v10 = *(v4 + 40);
      if (v10)
      {
        result = fprintf(*v10, "%llu", v8);
        *(*(*(v3 + 32) + 40) + 8) = 1;
        v4 = *(v3 + 32);
      }
    }
  }

  v11 = a2[4];
  if (v11)
  {
    v12 = *(v4 + 40);
    if (v12)
    {
      if (*(v12 + 8) == 1)
      {
        fputc(44, *v12);
        v12 = *(*(v3 + 32) + 40);
      }

      result = fwrite("swapped:", 0xAuLL, 1uLL, *v12);
      *(*(*(v3 + 32) + 40) + 8) = 0;
      v4 = *(v3 + 32);
      v13 = *(v4 + 40);
      if (v13)
      {
        result = fprintf(*v13, "%llu", v11);
        *(*(*(v3 + 32) + 40) + 8) = 1;
        v4 = *(v3 + 32);
      }
    }
  }

  v14 = a2[2];
  if (v14)
  {
    v15 = *(v4 + 40);
    if (v15)
    {
      if (*(v15 + 8) == 1)
      {
        fputc(44, *v15);
        v15 = *(*(v3 + 32) + 40);
      }

      result = fwrite("clean:", 8uLL, 1uLL, *v15);
      *(*(*(v3 + 32) + 40) + 8) = 0;
      v4 = *(v3 + 32);
      v16 = *(v4 + 40);
      if (v16)
      {
        result = fprintf(*v16, "%llu", v14);
        *(*(*(v3 + 32) + 40) + 8) = 1;
        v4 = *(v3 + 32);
      }
    }
  }

  v17 = a2[5];
  if (v17)
  {
    v18 = *(v4 + 40);
    if (v18)
    {
      if (*(v18 + 8) == 1)
      {
        fputc(44, *v18);
        v18 = *(*(v3 + 32) + 40);
      }

      result = fwrite("reclaimable:", 0xEuLL, 1uLL, *v18);
      *(*(*(v3 + 32) + 40) + 8) = 0;
      v4 = *(v3 + 32);
      v19 = *(v4 + 40);
      if (v19)
      {
        result = fprintf(*v19, "%llu", v17);
        *(*(*(v3 + 32) + 40) + 8) = 1;
        v4 = *(v3 + 32);
      }
    }
  }

  v20 = a2[6];
  if (v20)
  {
    v21 = *(v4 + 40);
    if (v21)
    {
      if (*(v21 + 8) == 1)
      {
        fputc(44, *v21);
        v21 = *(*(v3 + 32) + 40);
      }

      result = fwrite("wired:", 8uLL, 1uLL, *v21);
      *(*(*(v3 + 32) + 40) + 8) = 0;
      v4 = *(v3 + 32);
      v22 = *(v4 + 40);
      if (v22)
      {
        result = fprintf(*v22, "%llu", v20);
        *(*(*(v3 + 32) + 40) + 8) = 1;
        v4 = *(v3 + 32);
      }
    }
  }

  v23 = *(v4 + 40);
  if (v23)
  {
    result = fputc(125, *v23);
    *(*(*(v3 + 32) + 40) + 8) = 1;
  }

  return result;
}

void sub_100014B24(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 objectEnumerator];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000161EC;
    v4[3] = &unk_100029E68;
    v4[4] = a1;
    [v3 fp_enumerateObjectsWithBatchSize:16 usingBlock:v4];
  }
}

void sub_1000150B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    v16 = *(a1 + 40);
    if (!v16)
    {
      goto LABEL_27;
    }

    fputs("null", *v16);
LABEL_26:
    *(*(a1 + 40) + 8) = 1;
    goto LABEL_27;
  }

  if (![v3 fp_isContainer])
  {
    v17 = *(a1 + 40);
    if (!v17)
    {
      goto LABEL_27;
    }

    fprintf(*v17, "%lld", [v4 value]);
    goto LABEL_26;
  }

  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*(v6 + 8) == 1)
    {
      fputc(44, *v6);
      v6 = *(a1 + 40);
    }

    fputc(123, *v6);
    *(*(a1 + 40) + 8) = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = *(a1 + 40);
        if (v13)
        {
          if (*(v13 + 8) == 1)
          {
            fputc(44, *v13);
            v13 = *(a1 + 40);
          }

          fprintf(*v13, "%s:", [v12 UTF8String]);
          *(*(a1 + 40) + 8) = 0;
        }

        v14 = [v7 objectForKeyedSubscript:v12];
        sub_1000150B4(a1, v14);
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    fputc(125, *v15);
    *(*(a1 + 40) + 8) = 1;
  }

LABEL_27:
}

void sub_1000161EC(uint64_t a1, id *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v6 = *a2;
      v7 = *(*(a1 + 32) + 40);
      if (v7)
      {
        if (*(v7 + 8) == 1)
        {
          fputc(44, *v7);
          v7 = *(*(a1 + 32) + 40);
        }

        v8 = *v7;
        v9 = sub_10001BC9C(v6);
        v10 = [v9 stringByReplacingOccurrencesOfString:@"" withString:@"\\""];
        fprintf(v8, "%s:", [v10 UTF8String]);

        *(*(*(a1 + 32) + 40) + 8) = 0;
        v11 = *(*(a1 + 32) + 40);
        if (v11)
        {
          if (*(v11 + 8) == 1)
          {
            fputc(44, *v11);
            v11 = *(*(a1 + 32) + 40);
          }

          fputc(123, *v11);
          *(*(*(a1 + 32) + 40) + 8) = 0;
          v12 = *(*(a1 + 32) + 40);
          if (v12)
          {
            if (*(v12 + 8) == 1)
            {
              fputc(44, *v12);
              v12 = *(*(a1 + 32) + 40);
            }

            fwrite("dirty:", 8uLL, 1uLL, *v12);
            *(*(*(a1 + 32) + 40) + 8) = 0;
            v13 = *(*(a1 + 32) + 40);
            if (v13)
            {
              fprintf(*v13, "%llu", [v6 totalDirtySize] + objc_msgSend(v6, "totalSwappedSize"));
              *(*(*(a1 + 32) + 40) + 8) = 1;
              v14 = *(*(a1 + 32) + 40);
              if (v14)
              {
                if (*(v14 + 8) == 1)
                {
                  fputc(44, *v14);
                  v14 = *(*(a1 + 32) + 40);
                }

                fwrite("swapped:", 0xAuLL, 1uLL, *v14);
                *(*(*(a1 + 32) + 40) + 8) = 0;
                v15 = *(*(a1 + 32) + 40);
                if (v15)
                {
                  fprintf(*v15, "%llu", [v6 totalSwappedSize]);
                  *(*(*(a1 + 32) + 40) + 8) = 1;
                  v16 = *(*(a1 + 32) + 40);
                  if (v16)
                  {
                    if (*(v16 + 8) == 1)
                    {
                      fputc(44, *v16);
                      v16 = *(*(a1 + 32) + 40);
                    }

                    fwrite("clean:", 8uLL, 1uLL, *v16);
                    *(*(*(a1 + 32) + 40) + 8) = 0;
                    v17 = *(*(a1 + 32) + 40);
                    if (v17)
                    {
                      fprintf(*v17, "%llu", [v6 totalCleanSize]);
                      *(*(*(a1 + 32) + 40) + 8) = 1;
                      v18 = *(*(a1 + 32) + 40);
                      if (v18)
                      {
                        if (*(v18 + 8) == 1)
                        {
                          fputc(44, *v18);
                          v18 = *(*(a1 + 32) + 40);
                        }

                        fwrite("reclaimable:", 0xEuLL, 1uLL, *v18);
                        *(*(*(a1 + 32) + 40) + 8) = 0;
                        v19 = *(*(a1 + 32) + 40);
                        if (v19)
                        {
                          fprintf(*v19, "%llu", [v6 totalReclaimableSize]);
                          *(*(*(a1 + 32) + 40) + 8) = 1;
                          v20 = *(*(a1 + 32) + 40);
                          if (v20)
                          {
                            if (*(v20 + 8) == 1)
                            {
                              fputc(44, *v20);
                              v20 = *(*(a1 + 32) + 40);
                            }

                            fwrite("wired:", 8uLL, 1uLL, *v20);
                            *(*(*(a1 + 32) + 40) + 8) = 0;
                            v21 = *(*(a1 + 32) + 40);
                            if (v21)
                            {
                              fprintf(*v21, "%llu", [v6 totalWiredSize]);
                              *(*(*(a1 + 32) + 40) + 8) = 1;
                              v22 = *(*(a1 + 32) + 40);
                              if (v22)
                              {
                                if (*(v22 + 8) == 1)
                                {
                                  fputc(44, *v22);
                                  v22 = *(*(a1 + 32) + 40);
                                }

                                fwrite("regions:", 0xAuLL, 1uLL, *v22);
                                *(*(*(a1 + 32) + 40) + 8) = 0;
                                v23 = *(*(a1 + 32) + 40);
                                if (v23)
                                {
                                  fprintf(*v23, "%u", [v6 totalRegions]);
                                  *(*(*(a1 + 32) + 40) + 8) = 1;
                                  v24 = *(*(a1 + 32) + 40);
                                  if (v24)
                                  {
                                    fputc(125, *v24);
                                    *(*(*(a1 + 32) + 40) + 8) = 1;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++a2;
      --v3;
    }

    while (v3);
  }
}

void sub_100016718(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v7 = malloc_type_malloc(8 * a2, 0x80040B8603338uLL);
  v8 = [v5 countByEnumeratingWithState:&v16 objects:v7 count:a2];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v17;
      if ((v11 & 1) == 0 && v10 != *v17)
      {
        objc_enumerationMutation(v5);
        v12 = v17;
      }

      v10 = *v12;
      v13 = *(&v16 + 1);
      do
      {
        if (a2 >= v9)
        {
          v14 = v9;
        }

        else
        {
          v14 = a2;
        }

        v15 = objc_autoreleasePoolPush();
        v6[2](v6, v13, v14);
        objc_autoreleasePoolPop(v15);
        v13 += 8 * v14;
        v9 -= v14;
      }

      while (v9);
      v9 = [v5 countByEnumeratingWithState:&v16 objects:v7 count:a2];
      v11 = 0;
    }

    while (v9);
  }

  free(v7);
}

void *sub_100016870(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = FPProcessGroupMinimal;
  v3 = objc_msgSendSuper2(&v7, "init");
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = v3[1];
    v3[1] = v4;

    v3[2] = a2;
  }

  return v3;
}

FPProcessGroup *sub_1000169B8(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(FPProcessGroup);
    v2->super._hashValue = *(a1 + 16);
    objc_storeStrong(&v2->super._processes, *(a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100016BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableSet);
      v7 = *(a1 + 32);
      *(a1 + 32) = v6;

      v5 = *(a1 + 32);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return _objc_release_x1(v3, v4);
}

void sub_100016C8C(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (a1)
  {
    if (!a3)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    *(a1 + 24) = a3;
    v7 = v6;
    objc_storeStrong((a1 + 40), a2);
    v6 = v7;
  }
}

id sub_100016D18(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      if (!--*(a1 + 24))
      {
        v3 = *(a1 + 40);
        *(a1 + 40) = 0;
      }

      v4 = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

FPTime *sub_100016F04()
{
  objc_opt_self();
  v0 = objc_alloc_init(FPTime);

  return v0;
}

unint64_t sub_100016F38(unint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (qword_100038630 != -1)
    {
      dispatch_once(&qword_100038630, &stru_100029E88);
    }

    return v1 * dword_100038628 / *algn_10003862C;
  }

  return result;
}

unint64_t sub_100016F9C(unint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (qword_100038630 != -1)
    {
      dispatch_once(&qword_100038630, &stru_100029E88);
    }

    return v1 * dword_100038628 / *algn_10003862C;
  }

  return result;
}

double *sub_100017000(double *a1)
{
  if (a1)
  {
    a1 = [NSDate dateWithTimeIntervalSinceReferenceDate:a1[3]];
    v1 = vars8;
  }

  return a1;
}

void *sub_10001704C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = FPOutputFormatterPerfdata;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      sub_10000EDEC();
      [v3 UTF8String];
      v4 = pdwriter_open();
      a1[1] = v4;
      if (v4)
      {
        pdwriter_set_description();
        v5 = a1[1];
        pdwriter_set_primary_metric();
      }

      else
      {
        perror("Unable to open pdwriter");

        a1 = 0;
      }
    }
  }

  return a1;
}

void sub_10001732C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [a2 objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v18 = *v20;
      v17 = v3;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v18)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v19 + 1) + 8 * i);
          v8 = sub_10001BC9C(v7);
          v9 = [*(a1 + 16) objectForKeyedSubscript:v8];
          v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 totalSwappedSize] + objc_msgSend(v7, "totalDirtySize") + objc_msgSend(v9, "unsignedLongLongValue"));
          [*(a1 + 16) setObject:v10 forKeyedSubscript:v8];

          if (!v9)
          {
            v11 = sub_10001BCE8(v7);
            if (v11)
            {
              v12 = [FPAuxDataInfo alloc];
              v13 = sub_10001BD88(v7);
              v14 = v11;
              v15 = v13;
              if (v12)
              {
                v23.receiver = v12;
                v23.super_class = FPAuxDataInfo;
                v16 = objc_msgSendSuper2(&v23, "init");
                v12 = v16;
                if (v16)
                {
                  objc_storeStrong(&v16->_dictionary, v11);
                  objc_storeStrong(&v12->_fullName, v13);
                }
              }

              [*(a1 + 24) setObject:v12 forKeyedSubscript:v8];
              v3 = v17;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }
  }
}

void sub_1000177D4(uint64_t a1, void *a2, const char *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if ([v5 fp_isContainer])
    {
      v7 = v6;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = [v12 UTF8String];
            v14 = v13;
            if (a3)
            {
              v14 = __str;
              snprintf(__str, 0x400uLL, "%s.%s", a3, v13);
            }

            v15 = [v7 objectForKeyedSubscript:v12];
            sub_1000177D4(a1, v15, v14);
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    else
    {
      if (!a3)
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }

      v7 = v6;
      v16 = [v7 supportsFormattedValue];
      v17 = *(a1 + 8);
      if (v16)
      {
        [v7 formattedValue];
        pdwriter_record_variable_str();
      }

      else
      {
        [v7 value];
        pdwriter_record_variable_dbl();
      }
    }
  }
}

void sub_1000179A8(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = v9;
  if (a1)
  {
    if ([v9 fp_isContainer])
    {
      v24 = v10;
      v11 = v10;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            snprintf(__str, 0x400uLL, "%s.%s", a3, [v16 UTF8String]);
            v17 = [v11 objectForKeyedSubscript:v16];
            sub_1000179A8(a1, v17, __str, a4, a5);
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v13);
      }

      v10 = v24;
    }

    else
    {
      v18 = *(a1 + 8);
      [v10 value];
      pdwriter_new_value();
      v19 = *(a1 + 8);
      pdwriter_record_variable_str();
      v20 = *(a1 + 8);
      pdwriter_record_variable_str();
      v21 = &pdtag_summary;
      v22 = *(a1 + 8);
      if (!a5)
      {
        v21 = &pdtag_context;
      }

      v23 = *v21;
      pdwriter_record_tag();
    }
  }
}

id sub_100017FB8()
{
  v2[0] = @"Dirty";
  v2[1] = @"Swapped";
  v2[2] = @"Clean";
  v2[3] = @"Reclaimable";
  v2[4] = @"Wired";
  v2[5] = @"Regions";
  v2[6] = @"Category";
  v0 = [NSArray arrayWithObjects:v2 count:7];

  return v0;
}

id *sub_100018070(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a4;
  if (a1)
  {
    v30.receiver = a1;
    v30.super_class = FPOutputFormatterText;
    v11 = objc_msgSendSuper2(&v30, "init");
    a1 = v11;
    if (v11)
    {
      v11[17] = __stdoutp;
      v11[14] = a2;
      v11[15] = a3;
      objc_storeStrong(v11 + 16, a4);
      a1[8] = a5;
      if ((a3 & 2) != 0)
      {
        v12 = [[NSString alloc] initWithFormat:@"(%@)", @"Swapped"];
      }

      else
      {
        v12 = 0;
      }

      v13 = a1[3];
      a1[3] = v12;

      if (a3)
      {
        v14 = [[NSString alloc] initWithFormat:@"(%@)", @"Wired"];
      }

      else
      {
        v14 = 0;
      }

      v15 = a1[4];
      a1[4] = v14;

      v16 = objc_alloc_init(NSISO8601DateFormatter);
      v17 = a1[6];
      a1[6] = v16;

      [a1[6] setFormatOptions:4083];
      v18 = +[NSTimeZone systemTimeZone];
      [a1[6] setTimeZone:v18];

      if (a5 == 1)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        v20 = a1[9];
        a1[9] = v19;

        v21 = objc_alloc_init(NSMutableArray);
        v22 = a1[10];
        a1[10] = v21;

        v23 = objc_alloc_init(NSMutableDictionary);
        v24 = a1[11];
        a1[11] = v23;

        v25 = objc_alloc_init(NSMutableString);
        v26 = a1[12];
        a1[12] = v25;

        v27 = objc_alloc_init(NSMutableString);
        v28 = a1[13];
        a1[13] = v27;
      }
    }
  }

  return a1;
}

void sub_1000182F4(uint64_t a1, void *a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = a2;
  if (!a1)
  {
    goto LABEL_15;
  }

  v22 = &a9;
  if (!*(a1 + 64))
  {
    v21[1] = &a9;
    vfprintf(*(a1 + 136), a4, &a9);
    goto LABEL_15;
  }

  v13 = v20;
  v14 = vsnprintf(v20, 0xC8uLL, a4, v22);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  if (v14 >= 0xC9)
  {
    v15 = 200;
    while (1)
    {
      v16 = v15 + 200;
      v13 = v21 - ((v15 + 215) & 0xFFFFFFFFFFFFFFF0);
      v17 = vsnprintf(v13, v15 + 200, a4, v22);
      if ((v17 & 0x80000000) != 0)
      {
        break;
      }

      v15 = v16;
      if (v16 >= v17)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

LABEL_8:
  v18 = [[NSString alloc] initWithCString:v13 encoding:4];
LABEL_11:
  if (v12)
  {
    v19 = a3;
  }

  else
  {
    v19 = 2;
  }

  sub_10001B560(a1, v12, v19, v18);

LABEL_15:
}

void sub_100018638(void *a1, id *a2, uint64_t a3)
{
  if (a3)
  {
    do
    {
      v28 = a2;
      v29 = a3;
      v4 = *a2;
      v5 = v4;
      if (v4)
      {
        v6 = v4[10];
        v7 = a1[4];
        v8 = *(v7 + 136);
        if (v6 == -1)
        {
          v15 = 10;
          if ((~*(v7 + 120) & 7) == 0)
          {
            v15 = 16;
          }

          fprintf(v8, "        unmapped -         unmapped [%0*llx]", v15, a1[5] & v5[12]);
          v12 = [v5 swappedSize];
          v13 = *(a1[4] + 136);
          goto LABEL_13;
        }

        v9 = v5[12];
        v10 = v5[11] + v6;
      }

      else
      {
        v10 = 0;
        v6 = 0;
        v9 = 0;
        v7 = a1[4];
        v8 = *(v7 + 136);
      }

      if ((~*(v7 + 120) & 7) != 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = 16;
      }

      fprintf(v8, "%16llx - %16llx [%0*llx]", v6, v10, v11, a1[5] & v9);
      v12 = [v5 swappedSize];
      v13 = *(a1[4] + 136);
      if (!v5)
      {
        v14 = -1;
        goto LABEL_14;
      }

LABEL_13:
      v14 = v5[11] - 1;
LABEL_14:
      fprintf(v13, " %7llu %7llu", (a1[6] + v14) / a1[6], (v12 + [v5 dirtySize] + a1[6] - 1) / a1[6]);
      v16 = a1[4];
      if ((*(v16 + 120) & 2) != 0)
      {
        fprintf(*(v16 + 136), " %7llu", (v12 + a1[6] - 1) / a1[6]);
        v16 = a1[4];
      }

      fprintf(*(v16 + 136), " %7llu %7llu", ([v5 cleanSize] + a1[6] - 1) / a1[6], (objc_msgSend(v5, "reclaimableSize") + a1[6] - 1) / a1[6]);
      v17 = a1[4];
      if (*(v17 + 120))
      {
        fprintf(*(v17 + 136), " %7llu", ([v5 wiredSize] + a1[6] - 1) / a1[6]);
        v17 = a1[4];
      }

      v18 = [v5 detailedName];
      v19 = sub_100018968(v17, v18);

      v20 = [v19 UTF8String];
      v21 = [v5 extendedInfo];
      v22 = [v21 UTF8String];
      v23 = *(a1[4] + 136);
      v24 = [v5 name];
      v25 = [v24 UTF8String];
      if (v20)
      {
        v26 = [v19 length] + 1;
        if (!v22)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v26 = 0;
        v20 = "";
        if (!v22)
        {
LABEL_22:
          v27 = 0;
          v22 = "";
          goto LABEL_23;
        }
      }

      v27 = [v21 length] + 1;
LABEL_23:
      fprintf(v23, "   %s%*s%*s\n", v25, v26, v20, v27, v22);

      a2 = v28 + 1;
      a3 = v29 - 1;
    }

    while (v29 != 1);
  }
}

id sub_100018968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((*(a1 + 120) & 4) != 0)
    {
LABEL_5:
      v7 = v4;
      goto LABEL_7;
    }

    v5 = [v3 lastPathComponent];
    v6 = [v5 length];
    if (v6 == [v4 length])
    {

      goto LABEL_5;
    }

    v7 = [[NSString alloc] initWithFormat:@".../%@", v5];
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

void *sub_100018EC4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1[14];
    switch(v2)
    {
      case 2:
        a1 = [[NSString alloc] initWithFormat:@"%llu pages", (a2 + a1[2] - 1) / a1[2]];
        break;
      case 1:
        humanize_number();
        a1 = [[NSString alloc] initWithUTF8String:v4];
        break;
      case 0:
        a1 = [[NSString alloc] initWithFormat:@"%lld B", a2];
        break;
    }
  }

  return a1;
}