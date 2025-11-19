uint64_t sub_10000E9E8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  v22 = 0;
  v5 = *(a4 + 168);
  if (!v5)
  {
    return 0;
  }

  v11 = bswap64(v5);
  v12 = *(a2 + 128) * bswap32(*(a4 + 180));
  v13 = a3;
  v14 = 0x8000000;
  if (!byte_100088A60)
  {
    v14 = &_mh_execute_header;
  }

  v15 = v14 + a3;
  if ((*(*(a1 + 376) + 40) & 0x10) != 0)
  {
    v16 = v15 | 0xFFFFFFF00000000;
  }

  else
  {
    v16 = v15;
  }

  sub_10000F590(a1, a2, a3, "com.apple.ResourceFork", v11, v12, v16, a5);
  if ((*(*(a1 + 376) + 40) & 0x10) != 0)
  {
    v17 = v13 | 0xFFFFFFF00000000;
  }

  else
  {
    v17 = v13;
  }

  v18 = sub_10002CA88(a1, v17);
  if (v18)
  {
    v20 = v18;
    *(v18 + 64) = *(v18 + 64) & 0xFFFFFFFFFFFF3FFFLL | 0x4000;
    sub_100031204(a1, 1, v18, a5);
    sub_10002CA94(a1, v20);
  }

  return sub_10000E430(a1, a2, a3, v16, &v22, a4 + 184, a5, 0, v19);
}

uint64_t sub_10000EB20(uint64_t result, void *a2, char a3)
{
  v4 = result;
  if ((a3 & 1) != 0 || *(result + 200) >= 32760)
  {
    result = *(result + 192);
    if (result)
    {
      v5 = *(v4 + 200);
      if (v5)
      {
        v20 = 0xAAAAAAAAAAAAAAAALL;
        if (dword_1000885E4)
        {
          __b[0] = time(0);
          v6 = ctime(__b);
          printf("%.24s:     Updating %'u symlinks\n", v6, *(v4 + 200));
          result = *(v4 + 192);
          v5 = *(v4 + 200);
        }

        qsort(result, v5, 0x10uLL, sub_10000F7E0);
        result = memset(__b, 170, 0x401uLL);
        if (*(v4 + 200) >= 1)
        {
          v7 = 0;
          v8 = 0;
          while (1)
          {
            v9 = *(v4 + 192) + v7;
            v10 = *(v9 + 8);
            if (v10 >= 0x400)
            {
              v11 = 1024;
            }

            else
            {
              v11 = v10;
            }

            v12 = sub_100016FE0(v4, __b, v11, *v9);
            if (v12)
            {
              v19 = v12;
              fprintf(__stderrp, "Unable to read symlink offset=%llu length=%zu error=%d\n", *(*(v4 + 192) + v7), v11, v12);
              sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 720, 10, v19);
            }

            *(__b + v11) = 0;
            v13 = (*(a2[47] + 40) & 0x10) != 0 ? *(*(v4 + 192) + v7 + 12) | 0xFFFFFFF00000000 : *(*(v4 + 192) + v7 + 12);
            v20 = 0;
            v14 = sub_10006084C(a2[49], &v20);
            if (v14)
            {
              break;
            }

            v15 = sub_10004B964(a2, 0, v20);
            if (!v15)
            {
              v15 = sub_10002F29C(a2, v13, "com.apple.fs.symlink", __b, v11 + 1, v20);
            }

            result = sub_10006085C(a2[49], v20, 0);
            if (result)
            {
              v18 = result;
              fprintf(__stderrp, "tx_leave failed: %d\n", result);
              sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 735, 165, v18);
            }

            if (v15)
            {
              fprintf(__stderrp, "Unable to insert symlink cnid=%llu error=%d\n", v13, v15);
              v16 = 738;
              v17 = 11;
              goto LABEL_27;
            }

            ++v8;
            v7 += 16;
            if (v8 >= *(v4 + 200))
            {
              goto LABEL_22;
            }
          }

          v15 = v14;
          fprintf(__stderrp, "tx_enter failed: %d\n", v14);
          v16 = 729;
          v17 = 164;
LABEL_27:
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v16, v17, v15);
        }

LABEL_22:
        *(v4 + 200) = 0;
      }
    }
  }

  return result;
}

void *sub_10000EE00(uint64_t a1, uint64_t a2)
{
  if (*a2 != 512 || *(a2 + 48) != 1802398824 || *(a2 + 52) != 728983144)
  {
    return 0;
  }

  v2 = bswap32(*(a2 + 44));
  v6 = 0;
  __key = v2;
  v3 = bsearch_b(&__key, *(a1 + 176), *(a1 + 184), 0xCuLL, &stru_100084AB8);
  if (!v3)
  {
    fprintf(__stderrp, "Can't find inode number for iNode%d\n", v2);
  }

  return v3;
}

uint64_t sub_10000EEB4(uint64_t a1, unsigned int a2, void *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  v10 = 1024;
  bzero(__s, 0x400uLL);
  sub_100014988(*(a1 + 48), &v14);
  sub_1000172B4(a2, &unk_100064CAF, __b);
  v6 = sub_100014A60(v14, __b, &v13, &v12);
  if (v6 || (v7 = v12, v6 = sub_1000164F8(v12 + 5, bswap32(*(v12 + 4)) >> 16, __s, &v10), v6))
  {
    v8 = v6;
  }

  else
  {
    sub_1000172B4(bswap32(v7[1]), __s, __b);
    v8 = sub_100014A60(v14, __b, &v13, &v12);
    if (!v8)
    {
      memcpy(a3, v12, 0x208uLL);
    }
  }

  sub_100014A28(v14);
  return v8;
}

uint64_t sub_10000F004(uint64_t a1, int a2, unint64_t *a3, int a4, void *a5, unsigned int a6, unint64_t a7)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_10002F2A8(a1, a2, a7, &v15);
  if (!v13)
  {
    v13 = sub_10001B234(v15, *(a1 + 440), a3, a4, a5, a6, a7);
    sub_100046D50(v15);
  }

  return v13;
}

uint64_t sub_10000F0A4(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0;
  v3 = sub_100014988(*(a1 + 48), &v6);
  if (v3)
  {
    v4 = v3;
    fprintf(__stderrp, "Can't initialize catalog iterator!  (Error %d)\n", v3);
  }

  else
  {
    v4 = sub_100014A60(v6, a2, &v8, &v7);
    sub_100014A28(v6);
  }

  return v4;
}

int sub_10000F130(id a1, const void *a2, const void *a3)
{
  if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return *a2 > *a3;
  }
}

uint64_t sub_10000F14C(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v42 = 0;
  v43[0] = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v15 = *(*(a1 + 376) + 264);
  if ((v15 & 1) == 0)
  {
    v16 = 0x8000000;
    if (!byte_100088A60)
    {
      v16 = &_mh_execute_header;
    }

    v17 = 0x10000000;
    if (!byte_100088A68)
    {
      v17 = 0x200000000;
    }

    v18 = v17 > a4;
    v19 = 5;
    if (v18)
    {
      v19 = a3;
    }

    if (v16 <= a4)
    {
      v20 = v19;
    }

    else
    {
      v20 = a4;
    }

    v42 = v20;
  }

  v39 = 0xAAAAAAAAAAAAAAAALL;
  v40 = a8;
  v37 = 0;
  v38 = 1;
  v43[1] = a6;
  v21 = a7 / *(qword_1000885F8 + 208);
  v41 = v21;
  if (a2)
  {
    if ((v15 & 1) == 0)
    {
      v22 = *(qword_1000885F8 + 48);
      if (!*v22)
      {
        if ((*(v22 + 104))(v22, *(a2 + 32)))
        {
          v42 = a5 / sub_10003452C(a1);
          v40 = a8 | 0x100000000000000;
        }
      }
    }
  }

  if ((dword_1000885E4 & 0x20) != 0)
  {
    printf("  inserting extent id=%llu, logical=%llu, physical=%llu, length=%llu\n", a4, a6, v21, a8);
  }

  v23 = sub_10000F004(a1, 1, v43, 16, &v40, 0x18u, a9);
  if (v23)
  {
    v34 = v23;
    fprintf(__stderrp, "Error %d inserting extent: id=%llu, logical_offset=%llu\n", v23, a4, a6);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1172, 12, v34);
  }

  if (a2 && (*(*(a1 + 376) + 264) & 1) == 0)
  {
    v24 = v42;
    v25 = *(qword_1000885F8 + 48);
    if (!*v25 && (*(v25 + 104))(v25, *(a2 + 32)))
    {
      v24 = 4;
    }

    sub_1000347D0(a1, v24, a9);
  }

  v39 = v41 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v36 = ((a8 + *(qword_1000885F8 + 208) - 1) / *(qword_1000885F8 + 208)) & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v37 = a4;
  v26 = sub_10000F004(a1, 2, &v39, 8, &v36, 0x14u, a9);
  if (v26)
  {
    v35 = v26;
    sub_10000F4A0(a1, a9);
    fprintf(__stderrp, "Error %d inserting physical extent: id=%llu, logical_offset=%llu\n", v35, a4, a6);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1197, 13, v35);
  }

  v27 = v36;
  v44 = 0;
  v28 = sub_100054E54(*(qword_1000885F8 + 104), &v44);
  v29 = v28;
  if (v28)
  {
    sub_10003E5FC("%s:%d: spaceman_get() failed: %d\n", "hfs_update_apfs_alloc", 1098, v28);
    fprintf(__stderrp, "Error %d updating apfs allocated blocks\n", v29);
  }

  else
  {
    v30 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v31 = *&v44[5].__opaque[48];
    pthread_mutex_lock(v44 + 6);
    v32 = *(a1 + 376);
    if (v32[9])
    {
      *(v31 + 192) += v30;
    }

    v32[11] += v30;
    v32[28] += v30;
    pthread_mutex_unlock(v44 + 6);
    sub_100046D50(&v44->__sig);
  }

  return v29;
}

void sub_10000F4A0(uint64_t a1, unint64_t a2)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v4 = sub_10002F2A8(a1, 2, a2, &v8);
  if (v4)
  {
    v6 = v4;
    printf("jfs_get_tree failed with error %d\n", v4);
    asprintf((qword_1000885F8 + 360), "xid = %lld, curr_xid = %lld", a2, *(*(*(*(a1 + 392) + 400) + 144) + 16));
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 777, 344, v6);
  }

  v5 = sub_10002B748(v8, 0, 0, 0);
  if (v5)
  {
    v7 = v5;
    puts("Invalid extent_ref tree");
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 783, 345, v7);
  }

  sub_100046D50(v8);
}

void sub_10000F590(uint64_t a1, uint64_t a2, unsigned int a3, char *__s, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v14 = strlen(__s);
  v15 = v14 + 1;
  if ((*(*(a1 + 376) + 40) & 0x10) != 0)
  {
    v16 = a3 | 0xFFFFFFF00000000;
  }

  else
  {
    v16 = a3;
  }

  v17 = v14 + 11;
  v18 = malloc_type_malloc(v14 + 11, 0xB9E9A846uLL);
  v19 = malloc_type_malloc(0x34uLL, 0x65D96232uLL);
  v27 = v16;
  *v18 = v16 | 0x4000000000000000;
  *(v18 + 4) = v15;
  memcpy(v18 + 10, __s, v15);
  v20 = *(a1 + 376);
  if (*(v20 + 176) <= a7)
  {
    *(v20 + 176) = a7 + 1;
  }

  if (*(v20 + 264))
  {
    v16 = 0;
    v22 = a5;
  }

  else
  {
    v21 = *(qword_1000885F8 + 48);
    if (*v21 || ((*(v21 + 104))(v21, *(a2 + 32)) & 1) == 0)
    {
      v23 = 0x10000000;
      if (!byte_100088A68)
      {
        v23 = 0x200000000;
      }

      if (v23 <= a7)
      {
        v16 = 5;
      }
    }

    else
    {
      v16 = 4;
    }

    v22 = a5;
    sub_1000347D0(a1, v16, a8);
  }

  *v19 = 1;
  if (!strcmp(__s, "com.apple.fs.symlink"))
  {
    v24 = 5;
  }

  else
  {
    v24 = 1;
  }

  *v19 = v24;
  *(v19 + 1) = 48;
  *(v19 + 4) = a7;
  *(v19 + 12) = v22;
  *(v19 + 20) = a6;
  *(v19 + 28) = v16;
  *(v19 + 44) = 0;
  *(v19 + 36) = 0;
  if ((dword_1000885E4 & 0x10) != 0)
  {
    printf("  inserting ID=%llu EA=%s [%llu bytes] ea_id=%llu\n", v27, __s, v22, a7);
  }

  v25 = sub_10000F004(a1, 1, v18, v17, v19, 0x34u, a8);
  free(v19);
  free(v18);
  if (v25)
  {
    fprintf(__stderrp, "unable to insert EA (%llu, %s, %llu); error=%d\n", v27, __s, v22, v25);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1623, 14, v25);
  }
}

uint64_t sub_10000F7E0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10000F7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 4);
  v7 = bswap32(v6);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v68 = v8;
  v69 = v8;
  v66 = v8;
  v67 = v8;
  v64 = v8;
  v65 = v8;
  v62 = v8;
  v63 = v8;
  v60 = v8;
  v61 = v8;
  v58 = v8;
  v59 = v8;
  v56 = v8;
  v57 = v8;
  v54 = v8;
  v55 = v8;
  v52 = v8;
  v53 = v8;
  v50 = v8;
  v51 = v8;
  v48 = v8;
  v49 = v8;
  v46 = v8;
  v47 = v8;
  v44 = v8;
  v45 = v8;
  v42 = v8;
  v43 = v8;
  v40 = v8;
  v41 = v8;
  *__s1 = v8;
  v39 = v8;
  v37 = 511;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if ((*(v10[47] + 40) & 0x10) != 0)
  {
    v11 = v7 | 0xFFFFFFF00000000;
  }

  else
  {
    v11 = v7;
  }

  ++*(qword_1000885F8 + 328);
  if ((v7 > 0xF || v6 == 0x2000000) && v7 != v9[51] && v7 != v9[52] && v7 != v9[53] && (v7 != v9[54] || byte_100088034 == 1) && v7 != v9[55])
  {
    v12 = bswap32(*(a2 + 12)) >> 16;
    if (v12 >= 0x80)
    {
      v13 = sub_100001B38(a2, 268);
      fprintf(__stderrp, "Invalid EA %s\n");
LABEL_16:
      free(v13);
      return 0;
    }

    v36 = 0xAAAAAAAAAAAAAAAALL;
    if (sub_1000164F8((a2 + 14), v12, __s1, &v37))
    {
      v13 = sub_100001B38(a2, 268);
      fprintf(__stderrp, "Bad EA Name %s\n");
      goto LABEL_16;
    }

    v15 = v37++;
    __s1[v15] = 0;
    v16 = *__s1 == 0x6C7070612E6D6F63 && *&__s1[8] == 0x6D65747379732E65;
    v17 = v16 && v39 == 0x7269662E7366682ELL;
    if (!v17 || *(&v39 + 7) != 0x6B6E696C747372)
    {
      if (!strcmp(__s1, off_100088028))
      {
        if ((*(v10[47] + 40) & 0x10) != 0)
        {
          fwrite("cprotect EA disallowed with unified devt\n", 0x29uLL, 1uLL, __stderrp);
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3866, 395, 14);
        }

        v24 = *(a1 + 40);
        if (!qword_1000885D8)
        {
          ++*(v24 + 320);
        }

        sub_10000FDD4(v10, v24, v7, a3);
      }

      else
      {
        v19 = bswap32(*a3);
        if (v19 == 48)
        {
          return 0;
        }

        if (v19 != 32)
        {
          if (v19 != 16)
          {
            fprintf(__stderrp, "hfs_convert_attributes_tree: unexpected record type (%u), skipping\n", v19);
            return 0;
          }

          v20 = bswap32(*(a3 + 12));
          if ((dword_1000885E4 & 0x10) != 0)
          {
            printf("  inserting inline EA: ID=%u EA=%s [%u bytes]\n", v7, __s1, v20);
          }

          v36 = 0;
          v21 = sub_10006084C(v10[49], &v36);
          if (v21)
          {
            v32 = v21;
            fprintf(__stderrp, "tx_enter failed: %d\n", v21);
            sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3886, 164, v32);
          }

          v22 = sub_10004B964(v10, 0, v36);
          if (!v22)
          {
            v22 = sub_10002F29C(v10, v11, __s1, (a3 + 16), v20, v36);
          }

          v23 = sub_10006085C(v10[49], v36, 0);
          if (!v23)
          {
            if (v22)
            {
              sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3894, 117, v22);
            }

            if (!qword_1000885D8)
            {
              ++*(*(a1 + 40) + 320);
            }

            return 0;
          }

          v34 = v23;
          fprintf(__stderrp, "tx_leave failed: %d\n", v23);
          v35 = 3891;
LABEL_60:
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v35, 165, v34);
        }

        v25 = bswap64(*(a3 + 8));
        v26 = *(*(a1 + 40) + 128) * bswap32(*(a3 + 20));
        v27 = qword_100088048++;
        if ((dword_1000885E4 & 0x10) != 0)
        {
          printf("  inserting extent-based EA: ID=%u EA=%s [%llu logical; %llu physical]\n", v7, __s1, v25, v26);
        }

        v36 = 0;
        v28 = sub_10006084C(v10[49], &v36);
        if (v28)
        {
          v33 = v28;
          fprintf(__stderrp, "tx_enter failed: %d\n", v28);
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3925, 164, v33);
        }

        v29 = sub_10004B964(v10, 0, v36);
        if (!v29)
        {
          sub_10000F590(v10, *(a1 + 40), v7, __s1, v25, v26, v27, v36);
          v29 = sub_100010404(v10, *(a1 + 40), a2, a3, v27, v36, v30);
        }

        v31 = sub_10006085C(v10[49], v36, 0);
        if (v31)
        {
          v34 = v31;
          fprintf(__stderrp, "tx_leave failed: %d\n", v31);
          v35 = 3935;
          goto LABEL_60;
        }

        if (v29)
        {
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3938, 112, v29);
        }

        if (!qword_1000885D8)
        {
          ++*(*(a1 + 40) + 324);
        }
      }
    }
  }

  return 0;
}

void sub_10000FDD4(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (*a4 != 0x10000000)
  {
    fprintf(__stderrp, "Content protection EA for cnid=%u is not inline!  Conversion failed!\n", a3);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 2168, 19, -103);
  }

  v8 = *(a4 + 16);
  if (*(a4 + 18))
  {
    fprintf(__stderrp, "Content protection EA for cnid=%u is incorrect version (%u).  Try to repair\n", a3, *(a4 + 18));
  }

  if ((v8 - 6) <= 0xFFFFFFFD)
  {
    fprintf(__stderrp, "Content protection EA for cnid=%u is incorrect version (%u).  Conversion failed!\n", a3, v8);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 2188, 20, -104);
  }

  if (v8 == 4)
  {
    v9 = *(a4 + 28);
  }

  else
  {
    LOWORD(v9) = *(a4 + 34);
  }

  v35 = 0xAAAAAAAAAAAAAAAALL;
  if (v9 >= 0x81u)
  {
    fprintf(__stderrp, "Content protection key for cnid=%u is too long (%u).  Trying to repair.\n", a3, v9);
    if ((*(a4 + 24) & 0x1F) == 5)
    {
      LOWORD(v9) = 0;
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      v10 = sub_10000EEB4(a2, a3, __b);
      if (*__b == 256 && v10 == 0)
      {
        LOWORD(v9) = 0;
      }

      else
      {
        LOWORD(v9) = 128;
      }
    }
  }

  if (v8 == 5 && (*(a4 + 20) & 0x80) != 0)
  {
    fprintf(__stderrp, "Content protection EA for cnid=%u is dirty.  Conversion failed!\n", a3);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 2211, 22, -107);
  }

  v34 = a3 | 0x7000000000000000;
  v12 = malloc_type_calloc(v9 + 24, 1uLL, 0x6C5FA620uLL);
  memset(v33, 170, sizeof(v33));
  v13 = sub_10002C34C(v33);
  if (v13)
  {
    v30 = a3;
    v24 = v13;
    fprintf(__stderrp, "Error %d initializing wrapped crypto state (cnid=%u)\n", v13, v30);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 2229, 24, v24);
  }

  v14 = *v33;
  *(v12 + 5) = *&v33[16];
  *(v12 + 4) = v14;
  *(v12 + 11) = v9;
  v15 = bswap32(*(a4 + 12));
  if (v8 == 4)
  {
    if (v9 + 36 <= v15)
    {
      v16 = *(a4 + 24);
      *(v12 + 3) = v16;
      if (!v9)
      {
        goto LABEL_28;
      }

      v17 = 52;
      goto LABEL_27;
    }

    fprintf(__stderrp, "Content protection EA for cnid=%u is too short.  Conversion failed!\n", a3);
    v28 = 2239;
    v29 = 25;
LABEL_57:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v28, v29, -106);
  }

  if (v9 + 20 > v15)
  {
    fprintf(__stderrp, "Content protection EA for cnid=%u is too short.  Conversion failed!\n", a3);
    v28 = 2249;
    v29 = 26;
    goto LABEL_57;
  }

  v16 = *(a4 + 24);
  *(v12 + 3) = v16;
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = 36;
LABEL_27:
  memcpy(v12 + 24, (a4 + v17), v9);
LABEL_28:
  if ((v16 & 0x1Fu) <= 6)
  {
    ++*(a2 + 4 * (v16 & 0x1F) + 340);
  }

  v35 = 0;
  v18 = sub_10006084C(a1[49], &v35);
  if (v18)
  {
    LODWORD(v20) = v18;
    fprintf(__stderrp, "tx_enter failed: %d\n", v18);
    v25 = 2271;
    v26 = 164;
    goto LABEL_53;
  }

  v19 = sub_10004B964(a1, 0, v35);
  if (v19)
  {
    LODWORD(v20) = v19;
LABEL_33:
    v21 = 1;
    goto LABEL_34;
  }

  v23 = sub_10002CA88(a1, a3);
  v20 = v23;
  if (!v23)
  {
    goto LABEL_33;
  }

  *(v23 + 76) = *(v12 + 3) & 0x1F;
  if ((*(v23 + 96) & 0xF000) != 0x8000)
  {
    goto LABEL_46;
  }

  v32 = 0;
  *__b = 3670024;
  memset(&__b[32], 0, 24);
  *&__b[16] = -1;
  *&__b[24] = -1;
  *&__b[8] = a3;
  sub_100033A24(a1, 1, 0, __b, sub_1000105C8, &v32);
  *v12 += v32;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10003490C(a1, a3, 0, "com.apple.ResourceFork", &v31) && (v31[16] & 1) != 0)
  {
    *&__b[8] = *&v31[*(v31 + 10) + 24];
    v32 = 1;
    sub_100033A24(a1, 1, 0, __b, sub_1000105C8, &v32);
    *v12 += v32;
    sub_10002CA94(a1, v31);
  }

  if (*v12)
  {
    ++*v12;
    sub_100031204(a1, 1, v20, v35);
    sub_10002CA94(a1, v20);
    LODWORD(v20) = sub_10000F004(a1, 1, &v34, 8, v12, v9 + 24, v35);
    v21 = 0;
  }

  else
  {
LABEL_46:
    v21 = 1;
    sub_100031204(a1, 1, v20, v35);
    sub_10002CA94(a1, v20);
    LODWORD(v20) = 0;
  }

LABEL_34:
  v22 = sub_10006085C(a1[49], v35, 0);
  if (v22)
  {
    v27 = v22;
    fprintf(__stderrp, "tx_leave failed: %d\n", v22);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 2341, 165, v27);
  }

  if (v20)
  {
    fprintf(__stderrp, "Error %d inserting crypto_state for inode=%u.  Conversion failed!\n", v20, a3);
    v25 = 2345;
    v26 = 27;
LABEL_53:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v25, v26, v20);
  }

  free(v12);
  if ((v21 & 1) == 0)
  {
    ++*(a2 + 336);
  }
}

uint64_t sub_100010404(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, unint64_t a5, unint64_t a6, __n128 a7)
{
  v25 = 0;
  v12 = bswap32(*(a3 + 1));
  v13 = *(a4 + 20);
  v14 = sub_10000E430(a1, a2, v12, a5, &v25, a4 + 24, a6, 1, a7);
  if (!v14)
  {
    if (v25 >= bswap32(v13))
    {
      return 0;
    }

    else
    {
      v24 = 0xAAAAAAAAAAAAAAAALL;
      v15 = a3[6];
      v16 = sub_100014988(*(a2 + 56), &v24);
      if (v16)
      {
        return v16;
      }

      else
      {
        memset(__src, 0, 268);
        v17 = bswap32(*a3);
        __memcpy_chk();
        __src[2] = 0x1000000;
        v14 = sub_100014A60(v24, __src, 0, 0);
        if (v14 == 2)
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 0x40000000;
          v19[2] = sub_1000105DC;
          v19[3] = &unk_100084AF8;
          v20 = v12;
          v21 = bswap32(v15) >> 16;
          memcpy(v22, __src, sizeof(v22));
          v19[4] = a1;
          v19[5] = a2;
          v19[6] = a5;
          v19[7] = a6;
          v14 = sub_100014D10(v24, v19);
        }

        sub_100014A28(v24);
      }
    }
  }

  return v14;
}

uint64_t sub_1000105DC(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  if (*a3 == 805306368 && bswap32(*(a2 + 4)) == *(a1 + 64) && (v7 = bswap32(*(a2 + 12)), *(a1 + 68) == HIWORD(v7)) && !sub_10001649C((a1 + 86), HIWORD(v7), (a2 + 14), HIWORD(v7)))
  {
    v11 = bswap32(*(a2 + 8));
    result = sub_10000E430(*(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 48), &v11, (a3 + 2), *(a1 + 56), 1, v9);
    if (!qword_1000885D8)
    {
      ++*(*(a1 + 40) + 328);
    }
  }

  else
  {
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1000106BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  v19 = bswap32(*(a2 + 8));
  v4 = bswap32(v3);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  ++*(qword_1000885F8 + 328);
  if (v4 < 0x10 || v4 == v5[51] || v4 == v5[52] || v4 == v5[53] || v4 == v5[54] && byte_100088034 != 1 || v4 == v5[55])
  {
    return 0;
  }

  v11 = 0x8000000;
  if (!byte_100088A60)
  {
    v11 = &_mh_execute_header;
  }

  if (*(a2 + 2))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v18 = 0;
  v13 = sub_10006084C(v6[49], &v18);
  if (v13)
  {
    v17 = v13;
    fprintf(__stderrp, "tx_enter failed: %d\n", v13);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4019, 164, v17);
  }

  v9 = sub_10004B964(v6, 0, v18);
  if (!v9)
  {
    v9 = sub_10000E430(v6, *(a1 + 40), v4, v12 + v4, &v19, a3, v18, 1, v14);
  }

  v15 = sub_10006085C(v6[49], v18, 0);
  if (v15)
  {
    v16 = v15;
    fprintf(__stderrp, "tx_leave failed: %d\n", v15);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4024, 165, v16);
  }

  return v9;
}

uint64_t sub_100010878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1000181AC(a3))
  {
    return 0;
  }

  v16 = 0;
  v5 = sub_10006084C(*(*(a1 + 32) + 392), &v16);
  if (v5)
  {
    v14 = v5;
    fprintf(__stderrp, "tx_enter failed: %d\n", v5);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4175, 164, v14);
  }

  v6 = sub_10004B964(*(a1 + 32), 0, v16);
  if (v6)
  {
LABEL_4:
    v7 = v6;
  }

  else
  {
    v10 = (a3 + 108);
    v11 = 8;
    do
    {
      if (!*v10)
      {
        break;
      }

      v6 = sub_10000BCB0(*(a1 + 40), *(a1 + 32), bswap32(*(v10 - 1)), bswap32(*v10), v16, 4186);
      if (v6)
      {
        goto LABEL_4;
      }

      v10 += 2;
      --v11;
    }

    while (v11);
    v12 = (a3 + 188);
    v13 = 8;
    do
    {
      if (!*v12)
      {
        break;
      }

      v6 = sub_10000BCB0(*(a1 + 40), *(a1 + 32), bswap32(*(v12 - 1)), bswap32(*v12), v16, 4197);
      if (v6)
      {
        goto LABEL_4;
      }

      v12 += 2;
      --v13;
    }

    while (v13);
    v7 = 0;
  }

  v8 = sub_10006085C(*(*(a1 + 32) + 392), v16, 0);
  if (v8)
  {
    v15 = v8;
    fprintf(__stderrp, "tx_leave failed: %d\n", v8);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4212, 165, v15);
  }

  if (v7)
  {
    fprintf(__stderrp, "Error %d freeing symlink cnid=%u\n", v7, bswap32(*(a3 + 8)));
  }

  return v7;
}

uint64_t sub_100010A2C(unint64_t *a1, int a2, void *a3, unsigned int a4, uint64_t *a5)
{
  v5 = sub_10001B234(*(qword_1000885F8 + 920), *(*(*(qword_1000885F8 + 112) + 8) + 440), a1, a2, a3, a4, *a5);
  if (v5)
  {
    sub_10003E5FC("%s:%d: Unable to insert record into new fsroot tree\n", "fsroot_iterator", 5225);
  }

  else
  {
    ++*(qword_1000885F8 + 928);
  }

  return v5;
}

FILE *sub_100010AC0()
{
  result = popen("/usr/sbin/ioreg -l", "r");
  if (result)
  {
    v1 = result;
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v2;
    v10 = v2;
    v7 = v2;
    v8 = v2;
    v5 = v2;
    v6 = v2;
    *v3 = v2;
    v4 = v2;
    while (fgets(v3, 128, v1))
    {
      printf("%s", v3);
    }

    return pclose(v1);
  }

  return result;
}

uint64_t sub_100010B90(uint64_t a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 4 && a5 == 4)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_100010BC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*(a1 + 376) + 1068);
  v9[1] = 0;
  v10 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = sub_100010B90;
  v9[2] = 0x4000000022;
  if (v4 != 2)
  {
    v6 = 22;
    goto LABEL_5;
  }

  v6 = sub_1000242A4(a1, v4 & 0xFFFF0000, 0, 4u, 8, v9, a2, &v8);
  if (v6)
  {
LABEL_5:
    sub_10003E5FC("%s:%d: %s doc-id tree creation failed: %d\n", "doc_id_tree_create", 86, (a1 + 4040), v6);
    return v6;
  }

  *a3 = sub_100047D10(v8);
  sub_100046D50(v8);
  return v6;
}

uint64_t sub_100010CDC(uint64_t a1, int a2)
{
  v2 = *(a1 + 376);
  v3 = 1072;
  if (a2)
  {
    v3 = 1080;
  }

  v4 = *(v2 + v3);
  v27 = 0;
  v28 = 0;
  v26 = 0;
  if (!v4)
  {
    return 0;
  }

  v7 = sub_1000191DC(a1, a2, 0, 0, &v28);
  if (v7 != 2)
  {
    if (v7)
    {
      sub_10003E5FC("%s:%d: %s failed to get doc-id tree, error %d\n", "doc_id_tree_destroy", 125, (a1 + 4040), v7);
    }

    else
    {
      if (sub_100046328(v28) != 2)
      {
        v14 = sub_100046328(v28);
        sub_10003E5FC("%s:%d: %s unsupported tree type, %d\n", "doc_id_tree_destroy", 115, (a1 + 4040), v14);
        v9 = 45;
        goto LABEL_21;
      }

      v8 = sub_100025E94(v28, &v26);
      if (v8)
      {
        v9 = v8;
        sub_10003E5FC("%s:%d: %s failed to get doc-id tree key count, error %d\n", "doc_id_tree_destroy", 121, (a1 + 4040), v8);
LABEL_21:
        v13 = 1;
        goto LABEL_22;
      }
    }
  }

  v10 = sub_100034F30(a1, 2, 1, 0, &v27);
  if (v10)
  {
    v9 = v10;
LABEL_13:
    sub_10003E5FC("%s:%d: %s failed to enter tx, error %d\n");
  }

  else
  {
    if (a2)
    {
      v11 = 8;
    }

    else
    {
      v11 = 4;
    }

    *(v2 + 1064) |= v11;
    v12 = sub_100034F40(a1, 2, 1, 0, v27);
    v27 = 0;
    if (!v12)
    {
      v18 = 0;
      v13 = 1;
      while (v26 && !v18)
      {
        if (sub_10001561C())
        {
          sub_10003E50C("%s:%d: %s stop background work requested, stopping tree destroy, prev %d\n", "doc_id_tree_destroy", 155, (a1 + 4040), a2);
          v9 = 16;
          goto LABEL_22;
        }

        if (v26 >= 0x400)
        {
          v13 = 1024;
        }

        else
        {
          v13 = v26;
        }

        while (1)
        {
          v19 = sub_100034F30(a1, 2, v13, 0, &v27);
          if (v19 != 28)
          {
            break;
          }

          v20 = v13 >= 2;
          v13 >>= 1;
          if (!v20)
          {
            goto LABEL_49;
          }
        }

        v9 = v19;
        if (v19)
        {
          sub_10003E5FC("%s:%d: %s failed to enter tx, error %d\n", "doc_id_tree_destroy", 167, (a1 + 4040), v19);
          goto LABEL_22;
        }

        if (!v13)
        {
LABEL_49:
          sub_10003E5FC("%s:%d: %s not enough space to enter transaction\n", "doc_id_tree_destroy", 175, (a1 + 4040));
          v13 = 0;
          v9 = 28;
          goto LABEL_22;
        }

        v21 = 0;
        while (1)
        {
          v22 = sub_100022A00(v28, 0, 0, 0, 0, 0, v27);
          v18 = v22 != 0;
          if (v22)
          {
            break;
          }

          if (v13 == ++v21)
          {
            v21 = v13;
            goto LABEL_47;
          }
        }

        sub_10003E5FC("%s:%d: %s failed to remove first, error %d\n", "doc_id_tree_destroy", 183, (a1 + 4040), v22);
LABEL_47:
        v26 -= v21;
        v23 = sub_100034F40(a1, 2, v13, 0, v27);
        v27 = 0;
        if (v23)
        {
          v9 = v23;
          sub_10003E5FC("%s:%d: %s failed to leave tx, error %d\n", "doc_id_tree_destroy", 196, (a1 + 4040), v23);
          goto LABEL_22;
        }
      }

      v24 = sub_100034F30(a1, 2, 1, 0, &v27);
      if (v24)
      {
        v9 = v24;
        goto LABEL_13;
      }

      if (v28 != 0 && !v18)
      {
        sub_100049B88(v28, v27);
      }

      v9 = 0;
      if (a2)
      {
        *(v2 + 1080) = 0;
        v25 = *(v2 + 1064) & 0xFFFFFFF7;
      }

      else
      {
        *(v2 + 1072) = 0;
        v25 = *(v2 + 1064) & 0xFFFFFFFB;
      }

      *(v2 + 1064) = v25;
      goto LABEL_21;
    }

    v9 = v12;
    sub_10003E5FC("%s:%d: %s failed to leave tx, error %d\n");
  }

  v13 = 1;
LABEL_22:
  if (v28)
  {
    sub_100046D50(v28);
  }

  if (v27)
  {
    v15 = sub_100034F40(a1, 2, v13, 0, v27);
    if (v15)
    {
      v16 = v15;
      sub_10003E5FC("%s:%d: %s failed to leave tx, error %d\n", "doc_id_tree_destroy", 230, (a1 + 4040), v15);
      if (v9)
      {
        return v9;
      }

      else
      {
        return v16;
      }
    }
  }

  return v9;
}

uint64_t sub_10001111C(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_10002F2A8(a1, 7, a2, &v12);
  if (!v8)
  {
    v11 = a3;
    v10 = a4;
    v8 = sub_10001B234(v12, *(a1 + 440), &v11, 4, &v10, 8u, a2);
    sub_100046D50(v12);
  }

  return v8;
}

uint64_t sub_1000111B8(uint64_t a1)
{
  v1 = *(a1 + 376);
  if ((*(v1 + 264) & 1) == 0 && !*(v1 + 976) && *(v1 + 1072))
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    v4 = sub_10002F2A8(a1, 7, 0, &v6);
    if (v4)
    {
      sub_10003E5FC("%s:%d: %s failed to get doc-id tree (oid %llu, type 0x%x), error %d\n", "doc_id_tree_invalid_crypto", 389, (a1 + 4040), *(v1 + 1072), *(v1 + 1068), v4);
    }

    else
    {
      v5 = v6[2];
      sub_100046D50(v6);
      if ((v5 & 0x10000000) == 0)
      {
        sub_10003E5AC("%s:%d: %s doc-id tree (oid %llu, flags 0x%llx) is not encrypted but volume is encrypted (fs_flags 0x%llx)\n", "doc_id_tree_invalid_crypto", 384, (a1 + 4040), *(v1 + 1072), v5, *(v1 + 264));
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000112A0(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v5 - 65537) < 0xFFFF0001)
  {
    return 22;
  }

  bzero(a5, 0x558uLL);
  if (!a1 || (result = sub_10003E3BC((a5 + 16)), !result))
  {
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 22) = a3 | (v5 << 8);
    v11 = sub_10003FA58(v5, 0x18uLL, 0x1000040504FFAC1uLL);
    *(a5 + 10) = v11;
    if (v11)
    {
      sub_10001137C(a5);
      return 0;
    }

    else
    {
      if (a1)
      {
        j__pthread_mutex_destroy((a5 + 16));
      }

      return 12;
    }
  }

  return result;
}

uint64_t sub_10001137C(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 <= 0x2FF)
  {
    v5 = (v1 >> 8) - 1;
    v2 = *(result + 80);
  }

  else
  {
    v2 = *(result + 80);
    v3 = 1;
    v4 = 1;
    do
    {
      *(v2 + 24 * v4++) = (v3 + 1);
      v3 = v4;
      v5 = (*(result + 88) >> 8) - 1;
    }

    while (v5 > v4);
  }

  *(v2 + 24 * v5) = 0;
  *(result + 92) = 1;
  return result;
}

void sub_1000113EC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      sub_10003FB5C(v2, 24 * (*(a1 + 88) >> 8));
      *(a1 + 80) = 0;
    }

    if (*a1)
    {
      j__pthread_mutex_destroy((a1 + 16));
      *a1 = 0;
    }
  }
}

uint64_t sub_10001144C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (HIBYTE(*(a1 + 88)))
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    sub_1000113EC(a1);
    result = sub_1000112A0(v5, v4, v2, (v2 >> 8), a1);
    if (result)
    {
      v6 = *(a1 + 88);
      v7 = "main";
      if (v6 == 1)
      {
        v7 = "tier2";
      }

      result = sub_10003E5FC("%s:%d: %s dev %d Error reinitializing %s free extent cache: %d\n", "spaceman_free_extent_cache_reset", 262, (*(*a1 + 384) + 212), v6, v7, result);
      *(a1 + 280) |= 2uLL;
    }
  }

  else
  {
    bzero((a1 + 92), 0x4FCuLL);
    bzero(*(a1 + 80), 24 * (v2 >> 8));

    return sub_10001137C(a1);
  }

  return result;
}

uint64_t sub_100011560(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (*(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 56) / v3 > 0x64)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) != 0 || (*(a1 + 88) >> 8) - 1 > *(a1 + 94))
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 176);
  if (v6 <= *(a1 + 224))
  {
    v6 = *(a1 + 224);
  }

  if (v6 < *(a1 + 248) || (v7 = *(a1 + 128), (v7 - *(a1 + 120)) > 3))
  {
LABEL_15:
    v4 = 0;
  }

  else
  {
    *(a1 + 328) = v7;
    v4 = 1;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return v4;
}

uint64_t sub_100011634(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1576;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    if (!*(v5 + 8 * v4))
    {
      v8 = *(*(a2 + 376) + 48 * v4 + 48);
      if (v8)
      {
        v9 = sub_10003FA58(1uLL, 0x558uLL, 0x10200402E7C0D0DuLL);
        *(v5 + 8 * v4) = v9;
        if (!v9)
        {
          v12 = 12;
          goto LABEL_13;
        }

        v10 = v8 >> 18;
        if (v8 >> 18 >= 0xFF80)
        {
          LODWORD(v10) = 65408;
        }

        v11 = sub_1000112A0(a1, a2, v4, v10 + 128, v9);
        if (v11)
        {
          break;
        }
      }
    }

    v4 = 1;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v11;
  v13 = *(v5 + 8 * v4);
  if (v13)
  {
    *(v13 + 280) |= 2uLL;
  }

LABEL_13:
  sub_10003E5FC("%s:%d: %s failed to initialize free extent cache for device %d, error %d\n", "spaceman_free_extent_cache_setup", 1556, (*(a1 + 384) + 212), v4, v12);
  return v12;
}

uint64_t sub_100011764(unint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v4 = a4;
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  if (!a4)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v8 = *(a1 + 280);
  if ((v8 & 2) == 0)
  {
    v9 = a1 + 136 + 48 * ((v8 & 4) == 0);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (v11 < v4)
    {
      *v10 = v4;
    }

    v74 = -21846;
    v12 = sub_100011E84(a1, v4, a3);
    if (v12 == 55)
    {
      v13 = a1 + 16 * (a2 ^ 1u);
      v14 = *(v13 + 296);
      if (v14)
      {
        if (v14 < a3 && v4 + a3 < *(v13 + 304))
        {
          sub_1000120A4(a1, a3, v4);
          v15 = 0;
          *(v13 + 296) = a3;
          goto LABEL_27;
        }
      }
    }

    v16 = sub_10000BF10(*a1, *(a1 + 8), a3, v4);
    if (v16)
    {
      v17 = v16;
      if (sub_100042AEC(*a1))
      {
        sub_10003E5FC("%s:%d: %s dev %d free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_free_extent_cache_insert", 1648, (*(*a1 + 384) + 212), *(a1 + 88), a3, v4, v17);
      }

      goto LABEL_23;
    }

    v18 = (a1 + 1068);
    v19 = sub_1000120EC(a1, 0, a3, v4, a1 + 1068);
    if (v19)
    {
      goto LABEL_25;
    }

    v21 = *(v18 + 2 * *(a1 + 1165));
    v22 = (a1 + 1166);
    v23 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v23;
    *(a1 + 1262) = *(a1 + 1164);
    v24 = *(a1 + 1084);
    *(a1 + 1166) = *v18;
    *(a1 + 1182) = v24;
    v25 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v25;
    if (v21)
    {
      v73 = a1 + 136;
      v15 = 0;
    }

    else
    {
      v47 = sub_100014528(a1, a1 + 1166, -1);
      v15 = v47;
      if ((v47 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_26;
      }

      v73 = a1 + 136;
      if (v47 == 2)
      {
        v15 = 2;
        goto LABEL_33;
      }
    }

    v26 = *(v22 + 2 * *(a1 + 1263));
    v27 = (*(a1 + 80) + 24 * *(v22 + 2 * *(a1 + 1263)));
    v28 = *v27 & 0xFFFFFFFFFFFFFLL;
    v29 = v27[1] & 0xFFFFFFFFFFFFFLL;
    if (v29 + v28 >= a3)
    {
      v4 = v4 + a3 - v28;
      v48 = *(a1 + 1246);
      *(a1 + 1132) = *(a1 + 1230);
      *(a1 + 1148) = v48;
      *(a1 + 1164) = *(a1 + 1262);
      v49 = *(a1 + 1182);
      *v18 = *v22;
      *(a1 + 1084) = v49;
      v50 = *(a1 + 1214);
      *(a1 + 1100) = *(a1 + 1198);
      *(a1 + 1116) = v50;
      if (v4 <= v29)
      {
        if (v15)
        {
          v15 = 1;
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v19 = sub_100012218(a1, v28, v29, v4, v26);
      if (v19)
      {
LABEL_25:
        v15 = v19;
LABEL_26:
        sub_10003E5FC("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_insert", 1881, (*(*a1 + 384) + 212), *(a1 + 88), v15);
        sub_10001144C(a1);
        goto LABEL_27;
      }

      v51 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
      v53 = *(v51 + 40);
      v52 = (v51 + 40);
      if (v53 < v4)
      {
        *v52 = v4;
      }

      sub_10001251C(a1, v28, v4);
      v15 = 0;
LABEL_34:
      v30 = *(a1 + 1165);
      if (v30 < 0 || *(v18 + 2 * v30))
      {
        if (v15)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }

      if (v12 == 55)
      {
        v54 = sub_100014528(a1, a1 + 1068, 1);
        if (v54)
        {
          v15 = v54;
          v55 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }

        v61 = *(v18 + 2 * *(a1 + 1165));
        v62 = (*(a1 + 80) + 24 * *(v18 + 2 * *(a1 + 1165)));
        v63 = *v62;
        v55 = *v62 & 0xFFFFFFFFFFFFFLL;
        if (v28 + v4 < v55)
        {
          v15 = 2;
LABEL_76:
          sub_1000120A4(a1, v28, v4);
          v64 = a1 + 16 * (a2 ^ 1u);
          *(v64 + 296) = v28;
          *(v64 + 304) = v55;
          if (v15 != 2)
          {
            goto LABEL_26;
          }

LABEL_23:
          v15 = 0;
          goto LABEL_27;
        }

        v65 = v62[1] & 0xFFFFFFFFFFFFFLL;
        v66 = v55 - v28 + v65;
        if (v55 == *(a1 + 112))
        {
          *(a1 + 112) = v28;
        }

        *v62 = v63 & 0xFFF0000000000000 | v28;
        v19 = sub_100012218(a1, v28, v65, v55 - v28 + v65, v61);
        if (!v19)
        {
          v67 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
          v69 = *(v67 + 40);
          v68 = (v67 + 40);
          if (v69 >= v66)
          {
            goto LABEL_23;
          }

          v15 = 0;
          *v68 = v66;
LABEL_27:
          if (*a1)
          {
            pthread_mutex_unlock((a1 + 16));
          }

          return v15;
        }
      }

      else
      {
        v74 = 0;
        v19 = sub_100012598(a1, v28, v4, &v74, a1 + 1068);
        if (!v19)
        {
          v56 = sub_100012804(a1, 1u, v28, v4, &v74);
          if (v56)
          {
            v15 = v56;
            if (!sub_1000128E0(a1, v28, v4))
            {
              sub_10001295C(a1, v74);
            }

            goto LABEL_26;
          }

          v70 = *(a1 + 120);
          if (v70 - 1 >= v4 || v4 == v70 && v28 > *(a1 + 112))
          {
            *(a1 + 112) = v28;
            *(a1 + 120) = v4;
          }

          if (v4 > *(a1 + 128))
          {
            *(a1 + 128) = v4;
          }

          v15 = sub_1000120EC(a1, 0, v28, v4, a1 + 1068);
          sub_10001251C(a1, v28, v4);
          LOBYTE(v30) = *(a1 + 1165);
          if (v15)
          {
            goto LABEL_26;
          }

LABEL_37:
          v71 = *(v18 + 2 * v30);
          v31 = v28 + v4;
          v32 = v4;
          v72 = v28 + v4;
          while (1)
          {
            v33 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v33;
            *(a1 + 1262) = *(a1 + 1164);
            v34 = *(a1 + 1084);
            *v22 = *v18;
            *(a1 + 1182) = v34;
            v35 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v35;
            v36 = sub_100014528(a1, a1 + 1166, 1);
            if (v36)
            {
              break;
            }

            v37 = *(v22 + 2 * *(a1 + 1263));
            v38 = (*(a1 + 80) + 24 * *(v22 + 2 * *(a1 + 1263)));
            v39 = *v38 & 0xFFFFFFFFFFFFFLL;
            if (v31 < v39)
            {
              goto LABEL_67;
            }

            v40 = v28;
            v41 = v38[1] & 0xFFFFFFFFFFFFFLL;
            if (v41 + v39 >= v31)
            {
              v42 = v41 + v39 - v31;
            }

            else
            {
              v42 = 0;
            }

            sub_1000129A4(a1, a1 + 1166);
            v43 = sub_1000120EC(a1, 1u, v39, v41, a1 + 1068);
            if (v43)
            {
              v60 = v43;
LABEL_73:
              sub_10003E5FC("%s:%d: %s dev %d Failed to find successor node in length tree: %d\n", "spaceman_free_extent_cache_insert", 1852, (*(*a1 + 384) + 212), *(a1 + 88), v60);
              v15 = v60;
              goto LABEL_26;
            }

            if (!*(v18 + 2 * *(a1 + 1165)))
            {
              v60 = 2;
              goto LABEL_73;
            }

            v28 = v40;
            if (v39 == *(a1 + 112))
            {
              v44 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v44;
              *(a1 + 1262) = *(a1 + 1164);
              v45 = *(a1 + 1084);
              *v22 = *v18;
              *(a1 + 1182) = v45;
              v46 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v46;
              sub_100012C9C(a1, a1 + 1166);
            }

            v32 += v42;
            sub_1000129A4(a1, a1 + 1068);
            sub_10001295C(a1, v37);
            v15 = sub_1000120EC(a1, 0, v40, v4, a1 + 1068);
            v31 = v72;
            if (v15)
            {
              goto LABEL_26;
            }
          }

          v15 = v36;
          if (v36 != 2)
          {
            goto LABEL_26;
          }

LABEL_67:
          if (v32 <= v4)
          {
            goto LABEL_23;
          }

          v19 = sub_100012218(a1, v28, v4, v32, v71);
          if (!v19)
          {
            v57 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
            v59 = *(v57 + 40);
            v58 = (v57 + 40);
            if (v59 >= v32)
            {
              goto LABEL_23;
            }

            v15 = 0;
            *v58 = v32;
            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }

      goto LABEL_25;
    }

LABEL_33:
    v28 = a3;
    goto LABEL_34;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_100011E84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 92))
  {
    return 0;
  }

  v5 = *(a1 + 120);
  if (v5 > a2)
  {
    return 55;
  }

  v7 = *(a1 + 112);
  if (v5 == a2 && v7 < a3)
  {
    return 55;
  }

  if (v7)
  {
    v9 = (a1 + 480);
    if (sub_1000120EC(a1, 0, v7, v5, a1 + 480) || (v10 = 4 * *(a1 + 577), v11 = *(v9 + v10), !*(v9 + v10)))
    {
      v19 = *(a1 + 88);
      v16 = *(*a1 + 384) + 212;
      sub_10003E5FC("%s:%d: %s dev %d Failed to find smallest extent in paddr tree: %d\n");
    }

    else
    {
      sub_1000129A4(a1, a1 + 480);
      if (sub_1000120EC(a1, 1u, *(a1 + 112), *(a1 + 120), a1 + 480) || !*(v9 + 2 * *(a1 + 577)))
      {
        v17 = *(*a1 + 384) + 212;
        v20 = *(a1 + 88);
        sub_10003E5FC("%s:%d: %s dev %d Failed to find smallest extent %d in length tree: %d\n");
      }

      else
      {
        sub_1000120A4(a1, *(a1 + 112), *(a1 + 120));
        v12 = *(a1 + 560);
        *(a1 + 642) = *(a1 + 544);
        *(a1 + 658) = v12;
        *(a1 + 674) = *(a1 + 576);
        v13 = *(a1 + 496);
        *(a1 + 578) = *v9;
        *(a1 + 594) = v13;
        v14 = *(a1 + 528);
        *(a1 + 610) = *(a1 + 512);
        *(a1 + 626) = v14;
        v15 = sub_100014528(a1, a1 + 578, 1);
        if (!v15)
        {
          *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a1 + 578 + 4 * *(a1 + 675))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
          goto LABEL_23;
        }

        if (v15 == 2)
        {
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
LABEL_23:
          sub_1000129A4(a1, a1 + 480);
          sub_10001295C(a1, v11);
          return 0;
        }

        v21 = *(a1 + 88);
        v18 = *(*a1 + 384) + 212;
        sub_10003E5FC("%s:%d: %s dev %d Failed to find next smallest extent in length tree: %d\n");
      }
    }

    return 3;
  }

  return 0;
}

uint64_t sub_1000120A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + 48 * ((*(a1 + 280) & 4) == 0);
  if (*(v3 + 152) < a3)
  {
    *(v3 + 152) = a3;
  }

  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = a3;
  *(v3 + 136) = vaddq_s64(*(v3 + 136), v4);
  return sub_100013590(v3 + 136, a2, a3);
}

uint64_t sub_1000120EC(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = a2;
  v10 = *(a1 + 2 * a2 + 104);
  *a5 = v10;
  if (v10)
  {
    *(a5 + 2) = *(*(a1 + 80) + 24 * v10 + 8 * (a2 != 0) + 7);
  }

  for (i = *(a5 + 4 * *(a5 + 97)); *(a5 + 4 * *(a5 + 97)); i = *(a5 + 4 * *(a5 + 97)))
  {
    v12 = (*(a1 + 80) + 24 * i);
    if (a2)
    {
      v13 = v12[1] & 0xFFFFFFFFFFFFFLL;
      v14 = v13 > a4;
      v15 = v13 < a4;
      if (v14)
      {
        v15 = -1;
      }

      if (!v15)
      {
        v16 = *v12 & 0xFFFFFFFFFFFFFLL;
        v14 = v16 < a3;
        v15 = v16 > a3;
        if (v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = *v12 & 0xFFFFFFFFFFFFFLL;
      v14 = v17 <= a3;
      v15 = v17 < a3;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    if (!v15)
    {
      return 0;
    }

    if (v15 < 0)
    {
LABEL_17:
      v18 = a1;
      v19 = a5;
      v20 = -1;
      goto LABEL_18;
    }

    v18 = a1;
    v19 = a5;
    v20 = 1;
LABEL_18:
    result = sub_100014434(v18, v19, v20);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_100012218(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v30 = a5;
  v10 = a1 + 676;
  v11 = *(a1 + 112);
  v12 = sub_1000120EC(a1, 1u, a2, a3, a1 + 676);
  if (v12)
  {
    return v12;
  }

  if (!*(v10 + 4 * *(a1 + 773)))
  {
    return 2;
  }

  if (*(v10 + 4 * *(a1 + 773)) != a5)
  {
    sub_10003E5FC("%s:%d: %s dev %d length tree search for 0x%llx 0x%llx returned node %d instead of %d\n", "spaceman_fxc_update_length", 1400, (*(*a1 + 384) + 212), *(a1 + 88), a2, a3, *(v10 + 4 * *(a1 + 773)), a5);
    return 22;
  }

  v15 = (a1 + 774);
  v16 = *(a1 + 96);
  v17 = *(a1 + 80) + 24 * a5;
  *(v17 + 8) = *(v17 + 8) & 0xFFF0000000000000 | a4 & 0xFFFFFFFFFFFFFLL;
  *(a1 + 96) = a4 - a3 + v16;
  if (a4 <= a3)
  {
    if (v11 != a2)
    {
      v22 = *(v10 + 80);
      *(a1 + 838) = *(v10 + 64);
      *(a1 + 854) = v22;
      *(a1 + 870) = *(v10 + 96);
      v23 = *(v10 + 16);
      *v15 = *v10;
      *(a1 + 790) = v23;
      v24 = *(v10 + 48);
      *(a1 + 806) = *(v10 + 32);
      *(a1 + 822) = v24;
      v25 = sub_100014528(a1, a1 + 774, -1);
      if (v25)
      {
        v13 = v25;
        if (v25 == 2)
        {
          sub_10003E5FC("%s:%d: %s dev %d Failed to find length tree predecessor for node that wasn't the smallest\n", "spaceman_fxc_update_length", 1463, (*(*a1 + 384) + 212), *(a1 + 88));
        }

        return v13;
      }

      if ((*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871)) + 8) & 0xFFFFFFFFFFFFFuLL) >= a4)
      {
        v28 = *(a1 + 120);
        if (v28 > a4 || v28 == a4 && *(a1 + 112) < a2)
        {
          *(a1 + 112) = a2;
          *(a1 + 120) = a4;
        }

        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v18 = *(v10 + 80);
    *(a1 + 838) = *(v10 + 64);
    *(a1 + 854) = v18;
    *(a1 + 870) = *(v10 + 96);
    v19 = *(v10 + 16);
    *v15 = *v10;
    *(a1 + 790) = v19;
    v20 = *(v10 + 48);
    *(a1 + 806) = *(v10 + 32);
    *(a1 + 822) = v20;
    v21 = sub_100014528(a1, a1 + 774, 1);
    if (v21)
    {
      v13 = v21;
      if (v21 != 2)
      {
        return v13;
      }

      if (v11 == a2)
      {
        *(a1 + 120) = a4;
      }

      if (*(a1 + 128) >= a4)
      {
        return 0;
      }

      v13 = 0;
LABEL_39:
      *(a1 + 128) = a4;
      return v13;
    }

    v26 = vandq_s8(*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
    if (v26.i64[1] < a4 || (v26.i64[1] == a4 ? (v27 = v26.i64[0] <= a2) : (v27 = 1), !v27))
    {
      if (v11 == a2)
      {
        *(a1 + 112) = v26;
      }

LABEL_37:
      sub_1000129A4(a1, v10);
      v13 = sub_100012804(a1, 1u, a2, a4, &v30);
      goto LABEL_38;
    }

    if (v11 != a2)
    {
LABEL_32:
      v13 = 0;
      goto LABEL_38;
    }
  }

  v13 = 0;
  *(a1 + 120) = a4;
LABEL_38:
  v29 = *(a1 + 128);
  if (v29 < a4)
  {
    goto LABEL_39;
  }

  if (v29 == a3)
  {
    sub_100013210(a1);
  }

  return v13;
}

unint64_t sub_10001251C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = result + 296;
  v6 = a2 - 1;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (v5 + 16 * v4);
    if (*v9)
    {
      result = sub_10006250C(v6, a3 + 2, *v9, v9[1] - *v9, 0);
      if (result)
      {
        *v9 = 0;
      }
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_100012598(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = *(a5 + 96);
  if (a4)
  {
    LOWORD(v7) = *a4;
    if (*a4)
    {
      v8 = *(a1 + 80);
      v9 = v8 + 24 * *a4;
      *(v9 + 4 * v6 + 16) = 0;
      *(v9 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
      goto LABEL_10;
    }
  }

  v7 = *(a1 + 92);
  if (v7 <= *(a1 + 88) >> 8)
  {
    if (!*(a1 + 92))
    {
      return 12;
    }

    v11 = (*(a1 + 80) + 24 * *(a1 + 92));
    *(a1 + 92) = *v11;
    ++*(a1 + 94);
    *(a1 + 96) += a3;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    if (a4)
    {
      *a4 = v7;
    }

    v8 = *(a1 + 80);
    v12 = (v8 + 24 * v7);
    *v12 = a2;
    v12[1] = a3;
LABEL_10:
    v10 = *(a5 + 97);
    v13 = (a5 + 4 * v10);
    *v13 = v7;
    v13[1] = 0;
    if (!v10)
    {
      *(a1 + 2 * v6 + 104) = v7;
      return v10;
    }

    v14 = v10;
    *(v8 + 24 * *(a5 + 4 * (v10 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v10 - 1) + 3) + 1 + (((*(a5 + 4 * (v10 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16) = v7;
    v15 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      while (!*(a5 + 4 * v15 + 2))
      {
        v16 = v15--;
        if (v16 <= 0)
        {
          v15 = -1;
          break;
        }
      }
    }

    v17 = (v15 + 1);
    if (v17 < v14)
    {
      LOBYTE(v18) = v15 + 1;
      do
      {
        v19 = (a5 + 4 * v18);
        v20 = *(v19 + 3);
        *(v8 + 8 * (v6 != 0) + 24 * *v19 + 7) = v20;
        *(v19 + 2) = v20;
        v18 = (v18 + 1);
      }

      while (v18 < v14);
    }

    if ((v15 & 0x80) == 0)
    {
      v21 = (a5 + 4 * v15);
      v22 = *(v21 + 3);
      if (!(*(v21 + 2) + v22))
      {
        v10 = 0;
        *(v8 + 24 * *v21 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
        return v10;
      }

      if (*(v21 + 2) == *(v21 + 3))
      {
        if (v15)
        {
          v23 = (v8 + 24 * *(a5 + 4 * (v15 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v15 - 1) + 3) + 1 + (((*(a5 + 4 * (v15 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16);
        }

        else
        {
          v23 = (a1 + 2 * v6 + 104);
        }

        v24 = -v22;
        v25 = (a5 + 4 * v17);
        v26 = *(v25 + 2);
        if (v26 == *(v21 + 3))
        {
          sub_100014604(a1, v6, v24, *v21, v23);
        }

        else if (v26 == v24)
        {
          sub_1000146E4(a1, v6, v22, *v21, *v25, v23);
        }
      }
    }

    return 0;
  }

  return 22;
}

uint64_t sub_100012804(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _WORD *a5)
{
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  v10 = a1 + 872;
  if (!a5 || !*a5)
  {
    sub_100011E84(a1, a4, a3);
  }

  result = sub_1000120EC(a1, a2, a3, a4, v10);
  if (!result)
  {
    if (*(v10 + 4 * *(a1 + 969)))
    {
      return 17;
    }

    else
    {

      return sub_100012598(a1, a3, a4, a5, v10);
    }
  }

  return result;
}

uint64_t sub_1000128E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  v4 = a1 + 970;
  result = sub_1000120EC(a1, 0, a2, a3, a1 + 970);
  if (!result)
  {
    if (*(v4 + 4 * *(a1 + 1067)))
    {
      sub_1000129A4(a1, v4);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_10001295C(uint64_t result, unsigned int a2)
{
  if (a2 <= *(result + 88) >> 8)
  {
    v2 = (*(result + 80) + 24 * a2);
    v3 = v2[1] & 0xFFFFFFFFFFFFFLL;
    --*(result + 94);
    *(result + 96) -= v3;
    *v2 = *(result + 92);
    *(result + 92) = a2;
  }

  return result;
}

uint64_t sub_1000129A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 97);
  v5 = (a2 + 4 * *(a2 + 97));
  v6 = *(a1 + 80);
  result = v6 + 24 * *v5;
  v8 = result + 4 * v3;
  v9 = *(v8 + 18);
  v10 = *(a2 + 97) - 1;
  if (v4 < 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = (a2 + 4 * v10);
    v12 = *v11;
    v13 = ((*(v11 + 3) + 1 + (((*(v11 + 3) + 1) & 0x8000u) >> 15)) >> 1);
  }

  v14 = 8 * (*(a2 + 96) != 0);
  v15 = *(v8 + 16);
  v16 = a1 + 2 * v3;
  if (v9)
  {
    v17 = *(result + 8 * (*(a2 + 96) != 0));
    result = 24;
    v18 = v6 + 24 * v9 + 4 * v3;
    v21 = *(v18 + 16);
    v20 = (v18 + 16);
    v19 = v21;
    if (v21)
    {
      *(a2 + 4 * *(a2 + 97) + 3) = 1;
      v22 = v4 + 1;
      *(a2 + 97) = v4 + 1;
      v23 = a2 + 4 * (v4 + 1);
      *v23 = v9;
      *(v23 + 3) = 0;
      v24 = v9;
      do
      {
        v10 = v22;
        v25 = v24;
        v24 = v19;
        *(a2 + 4 * v22++ + 3) = -1;
        v26 = a2 + 4 * v22;
        *v26 = v24;
        *(v26 + 3) = 0;
        v27 = v6 + 24 * v24 + 4 * v3;
        v29 = *(v27 + 16);
        v28 = (v27 + 16);
        v19 = v29;
      }

      while (v29);
      result = v24;
      v30 = v6 + 24 * v24;
      v31 = v30 + 4 * v3;
      *(v6 + 24 * v25 + 4 * v3 + 16) = *(v31 + 18);
      *(v31 + 18) = v9;
      *v28 = v15;
      *(v30 + v14 + 7) = HIBYTE(v17);
      v32 = v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16;
      if (v4)
      {
        v33 = v32;
      }

      else
      {
        v33 = (v16 + 104);
      }

      *v33 = result;
      *(v5 + 3) = 1;
      *v5 = result;
      *(a2 + 97) = v10;
      if ((v10 & 0x80) != 0)
      {
        return result;
      }
    }

    else
    {
      *v20 = v15;
      v35 = (v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16);
      if (!v4)
      {
        v35 = (v16 + 104);
      }

      *v35 = v9;
      *(v6 + 24 * v9 + v14 + 7) = HIBYTE(v17);
      *(v5 + 3) = 1;
      *v5 = v9;
      v10 = v4;
      if ((v4 & 0x80) != 0)
      {
        return result;
      }
    }
  }

  else
  {
    if (*(a2 + 97))
    {
      v34 = (v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16);
    }

    else
    {
      v34 = (v16 + 104);
    }

    *v34 = v15;
    *(a2 + 97) = v10;
    if ((v10 & 0x80) != 0)
    {
      return result;
    }
  }

  v36 = (v16 + 104);
  v37 = v10 + 1;
  v38 = (a2 + 4 * v10);
  do
  {
    v39 = *v38;
    v40 = *(a1 + 80);
    v41 = v40 + 24 * *v38;
    v42 = *(v41 + v14);
    v43 = *(v38 + 3);
    v44 = (HIBYTE(v42) - *(v38 + 3));
    if (v44 < 0)
    {
      v44 = -v44;
    }

    if (v44 > 1)
    {
      v45 = v36;
      if (v37 != 1)
      {
        v45 = (v40 + 24 * *(v38 - 2) + 4 * v3 + 2 * ((*(v38 - 1) + 1 + (((*(v38 - 1) + 1) & 0x8000u) >> 15)) >> 1) + 16);
      }

      v46 = v40 + 24 * *v38 + 4 * v3 + 2 * ((-v43 + 1 + (((-v43 + 1) & 0x8000u) >> 15)) >> 1);
      v47 = HIBYTE(*(v40 + 24 * *(v46 + 16) + v14));
      if (v47 == v43)
      {
        result = sub_1000146E4(a1, v3, -v43, v39, *(v46 + 16), v45);
      }

      else
      {
        result = sub_100014604(a1, v3, v43, v39, v45);
        if (!v47)
        {
          return result;
        }
      }
    }

    else
    {
      *(v41 + v14) = v42 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v42) - v43) << 56);
      if (!HIBYTE(v42))
      {
        return result;
      }
    }

    v38 -= 2;
  }

  while (v37-- > 1);
  return result;
}

const char *sub_100012C9C(uint64_t a1, uint64_t a2)
{
  result = sub_100014528(a1, a2, 1);
  if (result == 2)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  else if (result)
  {
    return sub_10003E5FC("%s:%d: %s dev %d Failed to find successor node from length tree while updating smallest: %d\n", "spaceman_fxc_update_smallest_with_successor", 1520, (*(*a1 + 384) + 212), *(a1 + 88), result);
  }

  else
  {
    *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a2 + 4 * *(a2 + 97))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
  }

  return result;
}

uint64_t sub_100012D48(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 22;
  }

  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  if (!a3)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) == 0)
  {
    v6 = (a1 + 1068);
    v35 = -21846;
    v7 = sub_1000120EC(a1, 0, a2, a3, a1 + 1068);
    if (v7)
    {
LABEL_8:
      v8 = v7;
LABEL_9:
      sub_10003E5FC("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_remove", 2076, (*(*a1 + 384) + 212), *(a1 + 88), v8);
      sub_10001144C(a1);
      goto LABEL_10;
    }

    v10 = (a1 + 1166);
    v11 = a3 + a2;
    v12 = 4 * *(a1 + 1165);
    v13 = *(v6 + v12);
    if (*(v6 + v12))
    {
      goto LABEL_20;
    }

    v20 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v20;
    *(a1 + 1262) = *(a1 + 1164);
    v21 = *(a1 + 1084);
    *v10 = *v6;
    *(a1 + 1182) = v21;
    v22 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v22;
    v23 = sub_100014528(a1, a1 + 1166, -1);
    if (v23 == 2)
    {
      goto LABEL_43;
    }

    v8 = v23;
    if (v23)
    {
      goto LABEL_9;
    }

    v24 = (*(a1 + 80) + 24 * *(v10 + 2 * *(a1 + 1263)));
    v25 = v24[1] & 0xFFFFFFFFFFFFFLL;
    v26 = v25 + (*v24 & 0xFFFFFFFFFFFFFLL);
    if (v26 <= a2)
    {
      goto LABEL_43;
    }

    v7 = sub_100012218(a1, *v24 & 0xFFFFFFFFFFFFFLL, v25, a2 - (*v24 & 0xFFFFFFFFFFFFFLL), *(v10 + 2 * *(a1 + 1263)));
    if (v7)
    {
      goto LABEL_8;
    }

    v27 = v26 - v11;
    if (v26 <= v11)
    {
LABEL_43:
      v32 = sub_100014528(a1, a1 + 1068, 1);
      if (v32 != 2)
      {
        v8 = v32;
        if (v32)
        {
          goto LABEL_9;
        }

        v13 = *(v6 + 2 * *(a1 + 1165));
LABEL_20:
        v14 = (*(a1 + 80) + 24 * v13);
        v15 = *v14;
        v16 = *v14 & 0xFFFFFFFFFFFFFLL;
        v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
        v18 = v17 + v16;
        if (v11 >= v17 + v16)
        {
          while (1)
          {
            sub_1000129A4(a1, a1 + 1068);
            v28 = sub_1000120EC(a1, 1u, v16, v17, a1 + 1068);
            if (v28)
            {
              v33 = v28;
              sub_10003E5FC("%s:%d: %s dev %d Failed to delete covered node from length tree: %d\n", "spaceman_free_extent_cache_remove", 2016, (*(*a1 + 384) + 212), *(a1 + 88), v28);
              v8 = v33;
              goto LABEL_9;
            }

            if (v16 == *(a1 + 112))
            {
              v29 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v29;
              *(a1 + 1262) = *(a1 + 1164);
              v30 = *(a1 + 1084);
              *v10 = *v6;
              *(a1 + 1182) = v30;
              v31 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v31;
              sub_100012C9C(a1, a1 + 1166);
            }

            sub_1000129A4(a1, a1 + 1068);
            sub_10001295C(a1, v13);
            if (v17 == *(a1 + 128))
            {
              sub_100013210(a1);
            }

            v8 = sub_1000120EC(a1, 0, v16, v17, a1 + 1068);
            if (!v8)
            {
              v8 = sub_100014528(a1, a1 + 1068, 1);
            }

            if (v8)
            {
              break;
            }

            v13 = *(v6 + 2 * *(a1 + 1165));
            v14 = (*(a1 + 80) + 24 * *(v6 + 2 * *(a1 + 1165)));
            v15 = *v14;
            v16 = *v14 & 0xFFFFFFFFFFFFFLL;
            v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
            v18 = v17 + v16;
            if (v11 < v17 + v16)
            {
              goto LABEL_21;
            }
          }

          if (v8 == 2)
          {
            goto LABEL_47;
          }

          sub_10003E5FC("%s:%d: %s dev %d Failed to get next extent: %d\n", "spaceman_free_extent_cache_remove", 2047, (*(*a1 + 384) + 212), *(a1 + 88), v8);
          goto LABEL_9;
        }

LABEL_21:
        if (v11 > v16)
        {
          if (v16 == *(a1 + 112))
          {
            *(a1 + 112) = v11;
          }

          *v14 = v15 & 0xFFF0000000000000 | v11 & 0xFFFFFFFFFFFFFLL;
          v19 = sub_100012218(a1, v11, v17, v18 - v11, v13);
          v8 = v19;
          if (!v19)
          {
            goto LABEL_10;
          }

          sub_10003E5FC("%s:%d: %s dev %d Failed to update partially-covered node in length tree: %d\n", "spaceman_free_extent_cache_remove", 2070, (*(*a1 + 384) + 212), *(a1 + 88), v19);
          goto LABEL_9;
        }
      }
    }

    else
    {
      v35 = 0;
      if (sub_100012804(a1, 0, v11, v26 - v11, &v35))
      {
LABEL_32:
        sub_1000120A4(a1, v11, v26 - v11);
        goto LABEL_47;
      }

      if (sub_100012804(a1, 1u, v11, v26 - v11, &v35))
      {
        if (!sub_1000128E0(a1, v11, v26 - v11))
        {
          sub_10001295C(a1, v35);
        }

        goto LABEL_32;
      }

      v34 = *(a1 + 120);
      if (v27 < v34 || v27 == v34 && v11 > *(a1 + 112))
      {
        *(a1 + 112) = v11;
        *(a1 + 120) = v27;
      }

      if (v27 > *(a1 + 128))
      {
        v8 = 0;
        *(a1 + 128) = v27;
LABEL_10:
        if (*a1)
        {
          pthread_mutex_unlock((a1 + 16));
        }

        return v8;
      }
    }

LABEL_47:
    v8 = 0;
    goto LABEL_10;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_100013210(uint64_t a1)
{
  v2 = a1 + 676;
  result = sub_100013278(a1, a1 + 676, 1u);
  if (result == 2)
  {
    v4 = 0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = *(*(a1 + 80) + 24 * *(v2 + 4 * *(a1 + 773)) + 8) & 0xFFFFFFFFFFFFFLL;
  }

  *(a1 + 128) = v4;
  return result;
}

uint64_t sub_100013278(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = a3;
  v5 = *(a1 + 2 * a3 + 104);
  *a2 = v5;
  if (v5)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v5 + 8 * (a3 != 0) + 7);
  }

  while (1)
  {
    v6 = *(a2 + 97);
    if (!*(a2 + 4 * v6))
    {
      break;
    }

    result = sub_100014434(a1, a2, 1);
    if (result)
    {
      return result;
    }
  }

  v8 = v6 - 1;
  *(a2 + 97) = v8;
  return (v8 >> 6) & 2;
}

uint64_t sub_10001331C(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v4 = *(a1 + 280);
  v5 = (v4 & 6) == 0;
  if ((v4 & 6) == 0)
  {
    *(a1 + 280) = v4 | 4;
    v6 = *(a1 + 288);
    if (v6)
    {
      if (a2)
      {
LABEL_9:
        *a2 = v6;
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 1;
      *(a1 + 288) = 1;
      if (a2)
      {
        goto LABEL_9;
      }
    }

    *(a1 + 280) = v4 | 0xC;
LABEL_12:
    if (!*a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (*a1)
  {
LABEL_13:
    pthread_mutex_unlock((a1 + 16));
    return v5;
  }

  return 0;
}

uint64_t sub_1000133C8(uint64_t result, unint64_t a2, char a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (*result)
  {
    result = pthread_mutex_lock((result + 16));
  }

  v7 = *(v5 + 280);
  if ((v7 & 6) != 0)
  {
    if (a3)
    {
      *(v5 + 184) = *(v5 + 136);
      *(v5 + 200) = *(v5 + 152);
      *(v5 + 216) = *(v5 + 168);
      *(v5 + 280) = v7 & 0xFFFFFFFFFFFFFFF3;
      *(v5 + 136) = 0u;
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      goto LABEL_19;
    }

    if (*(*(v6 + 376) + 48 * *(v5 + 88) + 48) > a2 && ((v8 = *(v5 + 288), (v7 & 8) != 0) || v8 <= a2))
    {
      v9 = 0;
      if (v8 < a2)
      {
        *(v5 + 288) = a2;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFFF3;
    v12 = (v5 + 136);
    v11 = *(v5 + 136);
    *(v5 + 280) = v10;
    if (v11)
    {
      v13 = *(v5 + 184) + v11;
      v14 = *(v5 + 200);
      v15 = *(v5 + 152);
      v16 = *(v5 + 192) + *(v5 + 144);
      *(v5 + 184) = v13;
      *(v5 + 192) = v16;
      if (v14 < v15)
      {
        *(v5 + 200) = v15;
      }

      v17 = *(v5 + 176);
      if (*(v5 + 224) < v17)
      {
        *(v5 + 224) = v17;
      }

      result = sub_100013590(v5 + 184, *(v5 + 160), *(v5 + 168));
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      *v12 = 0u;
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *v12 = 0u;
    if (v9)
    {
LABEL_19:
      v18 = *(v5 + 336) + 1;
      *(v5 + 328) = 0;
      *(v5 + 336) = v18;
      *(v5 + 232) = *(v5 + 184);
      *(v5 + 248) = *(v5 + 200);
      *(v5 + 264) = *(v5 + 216);
      *(v5 + 184) = 0u;
      *(v5 + 200) = 0u;
      *(v5 + 216) = 0u;
      *(v5 + 288) = 0;
      v19 = *(v5 + 280);
      if ((v19 & 1) == 0)
      {
        *(v5 + 280) = v19 | 1;
      }
    }
  }

LABEL_21:
  if (*v5)
  {

    return pthread_mutex_unlock((v5 + 16));
  }

  return result;
}

uint64_t sub_100013590(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    if (v3 <= a2)
    {
      v4 = *(result + 32);
    }

    else
    {
      v4 = v3 - a2 + *(result + 32);
      *(result + 24) = a2;
      *(result + 32) = v4;
      v3 = a2;
    }

    v5 = v4 + v3;
    if (a3 + a2 > v5)
    {
      *(result + 32) = v4 + a3 + a2 - v5;
    }
  }

  else
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  return result;
}

unint64_t sub_1000135E0(__int16 a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 0x1000) == 0)
  {
    return a2;
  }

  if (a3 <= 1)
  {
    return a3 + 1;
  }

  if (a3 + (a3 >> 1) >= a2)
  {
    return a2;
  }

  else
  {
    return a3 + (a3 >> 1);
  }
}

uint64_t sub_100013608(uint64_t a1, __int16 a2, int64_t *a3, unint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  *a3 = 0;
  *a4 = 0;
  if (!a1)
  {
    return 6;
  }

  ++*(a1 + 344);
  if (!v5)
  {
    ++*(a1 + 352);
    return 22;
  }

  v10 = *(*a1 + 376);
  v11 = *(v10 + 1248);
  if (v11 && !*(a1 + 88))
  {
    v13 = *(v10 + 1240);
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v75 = 0;
  v76[0] = 0;
  v71 = 0;
  v72 = 0;
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 280) & 2) != 0)
  {
    if (*a1)
    {
      pthread_mutex_unlock((a1 + 16));
    }

    return 6;
  }

  v73 = 0xAAAAAAAAAAAAAAAALL;
  v74 = 0xAAAAAAAAAAAAAAAALL;
  v15 = (a1 + 1068);
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  v16 = sub_1000120EC(a1, 1u, v4, v5, a1 + 1068);
  if (!v16)
  {
    if (*(v15 + 2 * *(a1 + 1165)))
    {
      v17 = (*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 1165)));
      v18 = *v17 & 0xFFFFFFFFFFFFFLL;
      v74 = v18;
      v19 = v17[1];
      v20 = v19 & 0xFFFFFFFFFFFFFLL;
      v70 = v19 & 0xFFFFFFFFFFFFFLL;
      if (v12)
      {
        sub_100051764(v18, v19 & 0xFFFFFFFFFFFFFLL, v13, v11, a2, v4, &v74, &v70);
        v20 = v70;
        v18 = v74;
      }

      if (v20)
      {
        v21 = sub_100051844(*a1, *(a1 + 8), *(a1 + 88), v18, v20, a2, v4, &v73, &v69);
        v18 = v74;
        v22 = v70;
        if (v21)
        {
          v75 = v74;
          v71 = v70;
          v18 = v73;
          v74 = v73;
          v22 = v69;
          v70 = v69;
        }
      }

      else
      {
        v22 = 0;
      }

      v76[0] = v18;
      v72 = v22;
      if (v22 == v5)
      {
        goto LABEL_21;
      }
    }

    v27 = v12;
    v28 = v13;
    v29 = (a1 + 1166);
    v30 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v30;
    *(a1 + 1262) = *(a1 + 1164);
    v31 = *(a1 + 1084);
    *(a1 + 1166) = *v15;
    *(a1 + 1182) = v31;
    v32 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v32;
    v68 = v27;
    v16 = sub_100013D20(a1, a1 + 1166, v27, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x301u);
    if (!v16)
    {
      v33 = *(a1 + 1148);
      *(a1 + 1230) = *(a1 + 1132);
      *(a1 + 1246) = v33;
      *(a1 + 1262) = *(a1 + 1164);
      v34 = *(a1 + 1084);
      *v29 = *v15;
      *(a1 + 1182) = v34;
      v35 = *(a1 + 1116);
      *(a1 + 1198) = *(a1 + 1100);
      *(a1 + 1214) = v35;
      v16 = sub_100013D20(a1, a1 + 1166, v68, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x502u);
      if (!v16)
      {
        v67 = v28;
        v39 = v71;
        if (v72 >= v5)
        {
          v41 = v71;
          v39 = v72;
          v40 = v68;
        }

        else
        {
          v40 = v68;
          if (v71 <= v72)
          {
            v41 = v71;
            v39 = v72;
          }

          else
          {
            v41 = 0;
            v42 = v75;
            v75 = 0;
            v76[0] = v42;
            v71 = 0;
            v72 = v39;
            a2 &= ~0x2000u;
          }
        }

        if (v39 < v5 && (a2 & 0x1000) == 0)
        {
          goto LABEL_21;
        }

        if (v4 <= v76[0])
        {
          v45 = v76[0] - v4;
        }

        else
        {
          if (v4 - v76[0] < v39)
          {
            goto LABEL_21;
          }

          v45 = v4 - (v39 + v76[0]);
        }

        if (!v45)
        {
          goto LABEL_21;
        }

        v61 = v41;
        v64 = v76[0];
        v65 = v39;
        v66 = v45;
        v16 = sub_1000120EC(a1, 0, v4, v5, a1 + 1068);
        if (!v16)
        {
          if (*(v15 + 2 * *(a1 + 1165)))
          {
            v46 = (*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 1165)));
            v47 = *v46 & 0xFFFFFFFFFFFFFLL;
            v74 = v47;
            v48 = v46[1];
            v49 = v48 & 0xFFFFFFFFFFFFFLL;
            v70 = v48 & 0xFFFFFFFFFFFFFLL;
            if (v40)
            {
              sub_100051764(v47, v48 & 0xFFFFFFFFFFFFFLL, v67, v11, a2, v4, &v74, &v70);
              v49 = v70;
              v47 = v74;
            }

            if (v49)
            {
              v50 = sub_100051844(*a1, *(a1 + 8), *(a1 + 88), v47, v49, a2, v4, &v73, &v69);
              v47 = v74;
              v51 = v70;
              if (v50)
              {
                v52 = v61;
                v59 = v74;
                v62 = v70;
                if (sub_100014000(v4, v5, v75, v52, v74, v70, a2))
                {
                  v75 = v59;
                  v71 = v62;
                }

                v47 = v73;
                v74 = v73;
                v51 = v69;
                v70 = v69;
              }
            }

            else
            {
              v51 = 0;
            }

            v60 = v47;
            v63 = v51;
            if (sub_100014000(v4, v5, v64, v65, v47, v51, a2))
            {
              v76[0] = v60;
              v72 = v63;
              goto LABEL_21;
            }
          }

          v53 = *(a1 + 1148);
          *(a1 + 1230) = *(a1 + 1132);
          *(a1 + 1246) = v53;
          *(a1 + 1262) = *(a1 + 1164);
          v54 = *(a1 + 1084);
          *v29 = *v15;
          *(a1 + 1182) = v54;
          v55 = *(a1 + 1116);
          *(a1 + 1198) = *(a1 + 1100);
          *(a1 + 1214) = v55;
          v16 = sub_100013D20(a1, a1 + 1166, v40, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1802u);
          if (!v16)
          {
            v56 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v56;
            *(a1 + 1262) = *(a1 + 1164);
            v57 = *(a1 + 1084);
            *v29 = *v15;
            *(a1 + 1182) = v57;
            v58 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v58;
            v16 = sub_100013D20(a1, a1 + 1166, v68, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1801u);
            if (!v16)
            {
LABEL_21:
              if (*a1)
              {
                pthread_mutex_unlock((a1 + 16));
              }

              v23 = v72;
              if (!v72 && v71)
              {
                v76[0] = v75;
                v23 = v71;
              }

              v24 = v23 - v5;
              if (v23 > v5)
              {
                v25.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v25.i64[1] = v23 - v5;
                *(a1 + 360) = vaddq_s64(*(a1 + 360), v25);
                if (v24 == 1)
                {
                  result = 0;
                  v26 = 400;
                }

                else if (v24 >= 8)
                {
                  result = 0;
                  v43 = v24 >= 0x10;
                  v26 = 376;
                  if (!v43)
                  {
                    v26 = 384;
                  }
                }

                else
                {
                  result = 0;
                  v26 = 392;
                }

                goto LABEL_56;
              }

              if (v23 >= v5)
              {
                result = 0;
                v26 = 408;
              }

              else
              {
                if ((a2 & 0x1000) != 0)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = 28;
                }

                if (sub_1000141AC(a1, a2, v5, v23))
                {
                  result = 3;
                }

                else
                {
                  result = v38;
                }

                if ((a2 & 0x1000) == 0)
                {
                  v5 = 0;
                  v76[0] = 0;
LABEL_79:
                  v44 = 424;
                  goto LABEL_57;
                }

                if (!v23)
                {
                  v5 = 0;
                  if (result)
                  {
                    result = result;
                  }

                  else
                  {
                    result = 28;
                  }

                  goto LABEL_79;
                }

                v26 = 416;
              }

              v5 = v23;
LABEL_56:
              ++*(a1 + v26);
              v44 = 352;
LABEL_57:
              ++*(a1 + v44);
              *a3 = v76[0];
              *a4 = v5;
              return result;
            }
          }
        }
      }
    }
  }

  v36 = *(a1 + 88);
  v37 = "main";
  if (v36 == 1)
  {
    v37 = "tier2";
  }

  sub_10003E5FC("%s:%d: %s dev %d Error searching %s free extent cache: %d; Reinitializing.\n", "spaceman_free_extent_cache_search", 3031, (*(*a1 + 384) + 212), v36, v37, v16);
  sub_10001144C(a1);
  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 3;
}

uint64_t sub_100013D20(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, __int16 a6, int64_t a7, unint64_t a8, unint64_t a9, uint64_t *a10, unint64_t *a11, uint64_t *a12, unint64_t *a13, unsigned int a14)
{
  if ((a14 & 3) == 0 || (a14 & 0x1F00) == 0)
  {
    return 22;
  }

  v19 = a2;
  v20 = a1;
  memset(v44, 170, 32);
  if (a14)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  v15 = sub_100014528(a1, a2, v21);
  if ((v15 & 0xFFFFFFFD) == 0)
  {
    v36 = a5;
    v23 = 0;
    v39 = v21;
    v41 = a6;
    v37 = v20;
    v38 = v19;
    do
    {
      if (v15 == 2)
      {
        return 0;
      }

      v24 = (*(v20 + 80) + 24 * *(v19 + 4 * *(v19 + 97)));
      v25 = *v24 & 0xFFFFFFFFFFFFFLL;
      v44[3] = v25;
      v26 = v24[1] & 0xFFFFFFFFFFFFFLL;
      v44[1] = v26;
      if (a3)
      {
        sub_100051764(v25, v26, a4, v36, a6, a7, &v44[3], &v44[1]);
        v27 = v44[1];
        if (!v44[1])
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = v26;
        if (!v26)
        {
LABEL_42:
          if ((a14 & 0x1000) != 0 && v23 > 0x7E)
          {
            return v15;
          }

          goto LABEL_47;
        }
      }

      v28 = sub_100051844(*v20, *(v20 + 8), *(v20 + 88), v44[3], v27, a6, a7, &v44[2], v44);
      v29 = v44[3];
      v30 = v44[1];
      if (v28)
      {
        if (sub_100014000(a7, a8, *a12, *a13, v44[3], v44[1], a6))
        {
          *a12 = v29;
          *a13 = v30;
        }

        v29 = v44[2];
        v44[3] = v44[2];
        v30 = v44[0];
        v44[1] = v44[0];
      }

      v31 = *a11;
      if (sub_100014000(a7, a8, *a10, *a11, v29, v30, v41))
      {
        *a10 = v29;
        *a11 = v30;
        v31 = v30;
        if ((a14 & 0x800) != 0)
        {
          return v15;
        }
      }

      v32 = v26 == a8 && v30 == v26;
      v33 = v32;
      if ((*&v33 & ((a14 & 0x100) >> 8) & 1) != 0 || ((v31 > a8) & (a14 >> 9)) != 0)
      {
        return v15;
      }

      if ((a14 & 0x400) != 0 && v26 < a8 && v26 <= v31)
      {
        return v15;
      }

      a6 = v41;
      v20 = v37;
      v19 = v38;
      if ((a14 & 0x1000) != 0)
      {
        if (v23 > 0x7E)
        {
          return v15;
        }

        v35 = v29 - a7;
        if (v29 < a7)
        {
          if (a7 - v29 >= v30)
          {
            v35 = a7 - (v29 + v30);
          }

          else
          {
            v35 = 0;
          }
        }

        if (v35 >= a9)
        {
          return v15;
        }
      }

LABEL_47:
      v15 = sub_100014528(v20, v19, v39);
      ++v23;
    }

    while ((v15 & 0xFFFFFFFD) == 0);
  }

  return v15;
}

BOOL sub_100014000(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, __int16 a7)
{
  if (!a6)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  if (a4 < a2)
  {
    if (a6 <= a4)
    {
      if (a6 != a4 || (a7 & 0x4000) == 0)
      {
        return 0;
      }

      if (a1 <= a3)
      {
        v9 = a3 - a1;
      }

      else
      {
        v9 = a1 - a3 >= a6 ? a1 - (a3 + a6) : 0;
      }

      if (a1 <= a5)
      {
        v12 = a5 - a1;
      }

      else
      {
        v12 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
      }

      if (v12 >= v9)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a4 != a2)
  {
    v10 = a4 - a2;
    if (a4 > a2)
    {
      v11 = a6 - a2;
      if (a6 >= a2)
      {
        if (a6 == a2 || v10 <= 0xF && v11 > v10)
        {
          return 1;
        }

        if ((a7 & 0x4000) != 0)
        {
          if (a1 <= a3)
          {
            v14 = a3 - a1;
          }

          else if (a1 - a3 >= a4)
          {
            v14 = a1 - (a3 + a4);
          }

          else
          {
            v14 = 0;
          }

          if (a1 <= a5)
          {
            v15 = a5 - a1;
          }

          else if (a1 - a5 >= a6)
          {
            v15 = a1 - (a5 + a6);
          }

          else
          {
            v15 = 0;
          }

          return v11 >= 0x10 && v15 < v14;
        }

        if (v11 < v10 && v11 > 0xF)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a6 < a4 || a6 != a4 && (a7 & 0x4000) == 0)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v8 = a3 - a1;
  }

  else
  {
    v8 = a1 - a3 >= a4 ? a1 - (a3 + a4) : 0;
  }

  if (a1 <= a5)
  {
    v13 = a5 - a1;
  }

  else
  {
    v13 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
  }

  if (v13 >= v8)
  {
    return 0;
  }

  result = 1;
  if (a6 != a4 && a6 - a4 <= 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000141AC(uint64_t a1, __int16 a2, unint64_t a3, unint64_t a4)
{
  v8 = a3;
  if ((a2 & 0x1000) != 0)
  {
    if (a4 > 1)
    {
      v8 = a4 + (a4 >> 1);
      if (v8 >= a3)
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = a4 + 1;
    }
  }

  v42 = v8;
  v9 = *(a1 + 200);
  v10 = *(a1 + 208);
  v11 = *(a1 + 160);
  if (*(a1 + 152) > v9)
  {
    v9 = *(a1 + 152);
  }

  v12 = *(a1 + 168);
  if (v10)
  {
    v14 = v10 - v11;
    v13 = v10 <= v11;
    v15 = v12 + v11;
    if (v10 < v11)
    {
      v11 = *(a1 + 208);
    }

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(a1 + 216) + v16;
    if (v15 > v17 + v11)
    {
      v12 = v15 - v11;
    }

    else
    {
      v12 = v17;
    }
  }

  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v21 = *(a1 + 184);
  v20 = *(a1 + 192);
  v23 = *(a1 + 248);
  v22 = *(a1 + 256);
  if (v9 <= v23)
  {
    v24 = *(a1 + 248);
  }

  else
  {
    v24 = v9;
  }

  v25 = sub_10006250C(v22, *(a1 + 264), v11, v12, 0);
  v26 = *(a1 + 96);
  v27 = *(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 72);
  if (v26 == v27)
  {
    goto LABEL_21;
  }

  if ((*(a1 + 280) & 1) == 0)
  {
LABEL_52:
    *(a1 + 440) = 0;
    result = 1;
    v29 = 448;
    goto LABEL_53;
  }

  v30 = v20 + v19;
  if (!v26 && v27 && v30 + *(a1 + 240))
  {
    v41 = 456;
    goto LABEL_51;
  }

  if ((a2 & 0x1000) == 0 || a4 <= (3 * a3) >> 2)
  {
    if (v24 >= v42)
    {
      v41 = 464;
      goto LABEL_51;
    }

    if (v24 <= a4)
    {
      v31 = a4;
    }

    else
    {
      v31 = v24;
    }

    if (v42 <= *(a1 + 240) + v30 + v31 + v31 * (v18 + v21 + *(a1 + 232)))
    {
      v32 = *(a1 + 94);
      v33 = *(a1 + 88) >> 8;
      v34 = v33 - 1;
      v35 = v33 - v32;
      if (v35 <= 4)
      {
        LODWORD(v36) = v35 + 4;
      }

      else
      {
        LODWORD(v36) = 8;
      }

      v36 = v36;
      if (v34 <= v32)
      {
        v36 = 4;
      }

      v37 = (64 - v42) >> 4;
      if (v42 >= 0x40)
      {
        v37 = 0;
      }

      v38 = v36 + v37 + (*(a1 + 440) >> 14);
      if (v34 / 10 <= v32)
      {
        v39 = *(a1 + 128);
        if (v39 < *(a1 + 328))
        {
          v40 = *(a1 + 176);
          if (v40 <= *(a1 + 224))
          {
            v40 = *(a1 + 224);
          }

          if (v40 >= *(a1 + 248) && v39 - *(a1 + 120) < 4)
          {
            v38 = 1;
          }
        }
      }

      if (v30 > (v12 - v25 + *(a1 + 264)) / v38)
      {
        v41 = 472;
LABEL_51:
        ++*(a1 + v41);
        goto LABEL_52;
      }
    }
  }

LABEL_21:
  result = 0;
  ++*(a1 + 440);
  v29 = 432;
LABEL_53:
  ++*(a1 + v29);
  return result;
}

uint64_t sub_100014434(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a2 + 97);
  v4 = (a2 + 4 * *(a2 + 97));
  *(v4 + 3) = a3;
  if (v3 < 23)
  {
    v7 = v3 + 1;
    *(a2 + 97) = v3 + 1;
    v8 = *(a1 + 80);
    v9 = *v4;
    v10 = *(a2 + 96);
    v11 = *(v8 + 24 * v9 + 4 * v10 + ((a3 + 1) & 0x1FE) + 16);
    v12 = a2 + 4 * v7;
    *v12 = v11;
    *(v12 + 3) = 0;
    if (v11)
    {
      v13 = *(v8 + 24 * v11 + 8 * (v10 != 0) + 7);
    }

    else
    {
      v13 = 0;
    }

    result = 0;
    *(v12 + 2) = v13;
  }

  else
  {
    v5 = "length";
    if (!*(a2 + 96))
    {
      v5 = "paddr";
    }

    sub_10003E5FC("%s:%d: %s dev %d %s tree: PATH TOO LONG: %d\n", "spaceman_fxtp_add_child", 752, (*(*a1 + 384) + 212), *(a1 + 88), v5, v3);
    return 84;
  }

  return result;
}

uint64_t sub_100014528(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a2;
  v4 = -a3;
  v5 = *(a2 + 97);
  if (*(*(a1 + 80) + 24 * *(a2 + 4 * v5) + 4 * *(a2 + 96) + ((a3 + 1) & 0x1FE) + 16))
  {
    v6 = a1;
    while (1)
    {
      result = sub_100014434(a1, a2, a3);
      if (result)
      {
        break;
      }

      v8 = *(v3 + 97);
      if (!*(v3 + 4 * v8))
      {
        v13 = v8 - 1;
        *(v3 + 97) = v13;
        v11 = (v3 + 4 * v13 + 3);
        goto LABEL_12;
      }

      a1 = v6;
      a2 = v3;
      a3 = v4;
    }
  }

  else
  {
    LODWORD(v5) = v5;
    do
    {
      v9 = __OFSUB__(v5, 1);
      LODWORD(v5) = v5 - 1;
      if (v5 < 0 != v9)
      {
        return 2;
      }

      v10 = a2 + 4 * v5;
      v12 = *(v10 + 3);
      v11 = (v10 + 3);
    }

    while (v12 != v4);
    *(a2 + 97) = v5;
LABEL_12:
    result = 0;
    *v11 = 0;
  }

  return result;
}

uint64_t sub_100014604(uint64_t result, unsigned int a2, int a3, unsigned int a4, unsigned __int16 *a5)
{
  v5 = *(result + 80);
  v6 = v5 + 24 * a4 + 4 * a2 + 2 * ((-a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15)) >> 1);
  v7 = *(v6 + 16);
  v8 = v5 + 24 * v7;
  v9 = v8 + 4 * a2 + 2 * ((a3 + 1 + (((a3 + 1) & 0x8000u) >> 15)) >> 1);
  *(v6 + 16) = *(v9 + 16);
  *(v9 + 16) = a4;
  *a5 = v7;
  if (*(v8 + 8 * (a2 != 0) + 7))
  {
    *(v5 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v12 = *(v8 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v5 + 24 * a4;
    v11 = *(v10 + 8 * (a2 != 0));
    if (a3 == -1)
    {
      *(v10 + 8 * (a2 != 0)) = v11 & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
      v12 = *(v8 + 8 * (a2 != 0)) | 0xFF00000000000000;
    }

    else
    {
      *(v10 + 8 * (a2 != 0)) = v11 | 0xFF00000000000000;
      v12 = *(v8 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
    }
  }

  *(v8 + 8 * (a2 != 0)) = v12;
  return result;
}

uint64_t sub_1000146E4(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v6 = *(a1 + 80);
  v7 = -a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15);
  v8 = v6 + 24 * a5 + 4 * a2 + 2 * (v7 >> 1);
  v9 = (v7 >> 1);
  v10 = *(v8 + 16);
  v11 = v6 + 24 * v10;
  result = v11 + 4 * a2 + 16;
  v13 = a3 + 1 + (((a3 + 1) & 0x8000u) >> 15);
  v14 = v13 >> 1;
  v15 = (v13 >> 1);
  *(v8 + 16) = *(result + 2 * v15);
  *(result + 2 * v15) = a5;
  *(v6 + 24 * a4 + 4 * a2 + 2 * v14 + 16) = *(result + 2 * v9);
  *(result + 2 * v9) = a4;
  *a6 = v10;
  v16 = HIBYTE(*(v11 + 8 * (a2 != 0)));
  if (v16 == a3)
  {
    *(v6 + 24 * a4 + 8 * (a2 != 0) + 7) = -a3;
    v17 = v6 + 24 * a5;
    v18 = *(v17 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v6 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v17 = v6 + 24 * a5;
    v18 = *(v17 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
    if (v16)
    {
      v18 |= a3 << 56;
    }
  }

  *(v17 + 8 * (a2 != 0)) = v18;
  *(v11 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
  return result;
}

uint64_t sub_1000147E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int32x2_t **a5)
{
  v10 = malloc_type_malloc(0x40uLL, 0x10A0040FE4E0F09uLL);
  if (!v10)
  {
    v20 = 62;
    v21 = 114;
    goto LABEL_10;
  }

  v11 = v10;
  *v10[4].i8 = 0u;
  *v10[6].i8 = 0u;
  *v10->i8 = 0u;
  *v10[2].i8 = 0u;
  v12 = sub_100015E68(v10, a1, a3, a4);
  if (v12)
  {
    fprintf(__stderrp, "Error %d creating stream for B-tree (ID=%u)\n", v12, a4);
    return v12;
  }

  v11[3] = a2;
  v13 = malloc_type_malloc(0x200uLL, 0x836888A3uLL);
  if (!v13)
  {
    v20 = 76;
    v21 = 1;
LABEL_10:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_btree.c", v20, v21, 12);
  }

  v14 = v13;
  v15 = sub_100016250(v11, 0, 0x200uLL, v13);
  if (v15)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_btree.c", 80, 2, v15);
  }

  v16 = vrev32_s8(*(v14 + 36));
  v11[4] = v16;
  v11[5].i32[0] = vsub_s32(v16, vdup_lane_s32(v16, 1)).u32[0];
  v17 = *(v14 + 5);
  v18 = bswap32(*(v14 + 6));
  v11[5].i32[1] = bswap32(*(v14 + 4));
  v11[6].i32[0] = v18;
  v11[6].i32[1] = bswap32(*(v14 + 16)) >> 16;
  v11[7].i32[0] = bswap32(v17);
  free(v14);
  *a5 = v11;
  return v12;
}

uint64_t sub_100014954(void *a1)
{
  v2 = sub_100015F80(a1);
  free(a1);
  return v2;
}

uint64_t sub_100014988(uint64_t a1, void *a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x10A00409D8FE3EAuLL);
  if (!v4)
  {
    v8 = 128;
    v9 = 3;
    goto LABEL_6;
  }

  v5 = v4;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = a1;
  v6 = malloc_type_malloc(*(a1 + 52), 0xD7409C53uLL);
  v5[2] = v6;
  if (!v6)
  {
    v8 = 135;
    v9 = 4;
LABEL_6:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_btree.c", v8, v9, 12);
  }

  *a2 = v5;
  return 0;
}

uint64_t sub_100014A28(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  free(a1);
  return 0;
}

uint64_t sub_100014A60(uint64_t *a1, uint64_t a2, void *a3, unsigned int **a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 44);
  *(a1 + 2) = v7;
  if (!v7)
  {
    return 2;
  }

  v12 = sub_100016250(v4, *(v4 + 52) * v7, *(v4 + 52), v5);
  if (v12)
  {
    return v12;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = bswap32(*(v5 + 10)) >> 16;
    do
    {
      v17 = v16 - 1;
      *(a1 + 3) = v16 - 1;
      v18 = a1[2];
      if (v17 >= bswap32(*(v18 + 10)) >> 16)
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
        v15 = (v18 + (bswap32(*(v18 + *(*a1 + 52) - (2 * v17 + 2))) >> 16));
        v14 = (v15 + (bswap32(*v15) >> 16) + 2);
      }

      v19 = v6(a2, v15);
      if ((v19 & 0x80000000) == 0)
      {
        break;
      }

      v16 = *(a1 + 3);
    }

    while (v16);
    if (v13)
    {
      break;
    }

    if (*(v5 + 8) || *(v5 + 9) < 2u)
    {
      if (v19)
      {
        if (v19 >= 1)
        {
          ++*(a1 + 3);
        }

        return 2;
      }

      if (a3)
      {
        *a3 = v15;
      }

      v13 = 0;
      if (a4)
      {
        *a4 = v14;
      }

      return v13;
    }

    v20 = bswap32(*v14);
    *(a1 + 2) = v20;
    v12 = sub_100016250(v4, *(v4 + 52) * v20, *(v4 + 52), a1[2]);
    if (v12)
    {
      return v12;
    }
  }

  return v13;
}

uint64_t sub_100014BEC(uint64_t *a1, void *a2, void *a3)
{
  if (!*(a1 + 2))
  {
    v11 = *a1;
    v12 = *(*a1 + 48);
    *(a1 + 2) = v12;
    if (!v12)
    {
      return 2;
    }

    result = sub_100016250(v11, *(v11 + 52) * v12, *(v11 + 52), a1[2]);
    if (result)
    {
      return result;
    }
  }

  v6 = a1[2];
  v7 = *(a1 + 3);
  v8 = bswap32(*(v6 + 10));
  if (v7 >= HIWORD(v8))
  {
    if (*v6)
    {
      v13 = bswap32(*v6);
      a1[1] = v13;
      result = sub_100016250(*a1, *(*a1 + 52) * v13, *(*a1 + 52), v6);
      if (result)
      {
        return result;
      }

      v6 = a1[2];
      v7 = *(a1 + 3);
      v8 = bswap32(*(v6 + 10));
      goto LABEL_3;
    }

    return 2;
  }

LABEL_3:
  if (v7 >= HIWORD(v8))
  {
    result = 2;
  }

  else
  {
    v9 = (v6 + (bswap32(*(v6 + *(*a1 + 52) - (2 * v7 + 2))) >> 16));
    if (a2)
    {
      *a2 = v9;
    }

    result = 0;
    if (a3)
    {
      *a3 = v9 + (bswap32(*v9) >> 16) + 2;
    }
  }

  *(a1 + 3) = v7 + 1;
  return result;
}

uint64_t sub_100014D10(uint64_t *a1, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0;
  while (1)
  {
    LODWORD(result) = sub_100014BEC(a1, &v7, &v6);
    if (result)
    {
      break;
    }

    result = (*(a2 + 16))(a2, v7, v6, &v5);
    if (result || (v5 & 1) != 0)
    {
      return result;
    }
  }

  if (result == 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100014D94(uint64_t a1, uint64_t a2)
{
  v2 = bswap32(*(a1 + 4));
  v3 = bswap32(*(a2 + 4));
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v7 = bswap32(*(a1 + 8));
  v8 = bswap32(*(a2 + 8));
  v9 = v7 >= v8;
  v10 = v7 > v8;
  if (v9)
  {
    return v10;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100014DF8(uint64_t a1, uint64_t a2)
{
  v2 = bswap32(*(a1 + 2));
  v3 = bswap32(*(a2 + 2));
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  return sub_1000163B4(a1 + 8, bswap32(*(a1 + 6)) >> 16, a2 + 8, bswap32(*(a2 + 6)) >> 16);
}

uint64_t sub_100014E4C(uint64_t a1, uint64_t a2)
{
  v2 = bswap32(*(a1 + 2));
  v3 = bswap32(*(a2 + 2));
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  return sub_10001649C((a1 + 8), bswap32(*(a1 + 6)) >> 16, (a2 + 8), bswap32(*(a2 + 6)) >> 16);
}

uint64_t sub_100014EA0(uint64_t a1, uint64_t a2)
{
  v2 = bswap32(*(a1 + 4));
  v3 = bswap32(*(a2 + 4));
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  result = sub_10001649C((a1 + 14), bswap32(*(a1 + 12)) >> 16, (a2 + 14), bswap32(*(a2 + 12)) >> 16);
  if (!result)
  {
    v7 = bswap32(*(a1 + 8));
    v8 = bswap32(*(a2 + 8));
    v9 = v7 >= v8;
    v10 = v7 > v8;
    if (v9)
    {
      return v10;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100014F3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 52);
  v6 = malloc_type_malloc(0x100000uLL, 0xB8037CFCuLL);
  if (!v6)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_btree.c", 450, 115, 12);
  }

  v7 = v6;
  v8 = v5 * v4;
  if (v8)
  {
    v9 = 0;
    v24 = v8;
    v25 = v6 - 2;
    v27 = v6;
    while (1)
    {
      if (v8 - v9 >= 0x100000)
      {
        v10 = 0x100000;
      }

      else
      {
        v10 = v8 - v9;
      }

      v11 = sub_100016250(a1, v9, v10, v7);
      if (v11)
      {
        v23 = v9;
        v22 = v11;
        fprintf(__stderrp, "Error %d reading B-tree offset=%llu length=%zu\n", v11, v23, v10);
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_btree.c", 461, 5, v22);
      }

      v26 = v9;
      if (v8 != v9)
      {
        break;
      }

LABEL_9:
      v9 = v10 + v26;
      v8 = v24;
      if (v10 + v26 >= v24)
      {
        goto LABEL_21;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = &v7[v12];
      if (v7[v12 + 8] == 255)
      {
        if (*(v13 + 5))
        {
          break;
        }
      }

LABEL_13:
      v12 += *(a1 + 52);
      v7 = v27;
      if (v12 >= v10)
      {
        goto LABEL_9;
      }
    }

    v14 = 0;
    v15 = __rev16(*(v13 + 5));
    v16 = &v25[v12];
    while (1)
    {
      v17 = *(a1 + 52);
      if (v14 >= bswap32(*(v13 + 5)) >> 16)
      {
        fprintf(__stderrp, "Error %d getting record #%u of node %llu\n", 2, v14, (v12 + v26) / v17);
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_btree.c", 478, 6, -100);
      }

      v18 = bswap32(*&v13[bswap32(*&v16[v17]) >> 16]);
      v19 = (*(a2 + 16))(a2);
      if (v19)
      {
        break;
      }

      ++v14;
      v16 -= 2;
      if (v15 == v14)
      {
        goto LABEL_13;
      }
    }

    v20 = v19;
    v7 = v27;
  }

  else
  {
LABEL_21:
    v20 = 0;
  }

  free(v7);
  return v20;
}

uint64_t sub_100015188(int a1, void *__s1, size_t __n, void *__s2, unsigned int a5, int *a6)
{
  result = 22;
  if (__n >= 9 && a5 >= 9)
  {
    if (*__s1 < *__s2)
    {
LABEL_4:
      v8 = -1;
LABEL_7:
      result = 0;
      *a6 = v8;
      return result;
    }

    if (*__s1 > *__s2)
    {
      goto LABEL_6;
    }

    v9 = *(__s1 + 8);
    v10 = *(__s2 + 8);
    if (v9 < v10)
    {
      goto LABEL_4;
    }

    if (v9 > v10)
    {
LABEL_6:
      v8 = 1;
      goto LABEL_7;
    }

    if (v9 == 2)
    {
      result = 22;
      if (__n == 17 && a5 == 17)
      {
        v15 = *(__s1 + 9);
        v16 = *(__s2 + 9);
        v17 = v15 >= v16;
        v8 = v15 > v16;
        if (!v17)
        {
          v8 = -1;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (__n != a5)
        {
          return 22;
        }

        v8 = memcmp(__s1, __s2, __n);
        goto LABEL_7;
      }

      result = 22;
      if (__n == 25 && a5 == 25)
      {
        v11 = *(__s1 + 9);
        v12 = *(__s2 + 9);
        if (v11 < v12)
        {
          goto LABEL_4;
        }

        if (v11 <= v12)
        {
          v13 = *(__s1 + 17);
          v14 = *(__s2 + 17);
          if (v13 >= v14)
          {
            v8 = v13 > v14;
            goto LABEL_7;
          }

          goto LABEL_4;
        }

        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_1000152A4(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  *(v5 + 208) = *(*a1 + 200);
  *(v5 + 184) = *(v5 + 176);
  v6 = malloc_type_valloc(0x100000uLL, 0x4C084630uLL);
  *(v5 + 128) = v6;
  if (!v6)
  {
    fwrite("Failed to alloc cache buffer\n", 0x1DuLL, 1uLL, __stderrp);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_dev_io.c", 105, 171, 12);
  }

  *(v5 + 136) = xmmword_10007F9C0;
  *(v5 + 152) = *(v5 + 248);
  *a3 = a1;
  return 0;
}

uint64_t sub_100015350(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1000153D0(*a1);
  if (v2)
  {
    warnc(v2, "dev_close:cache_flush");
  }

  v3 = sub_100015580(v1);
  v4 = v3;
  if (v3)
  {
    warnc(v3, "dev_close:_dev_flush");
  }

  free(*(v1 + 128));
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0x7FFFFFFFFFFFFFFFLL;
  *(v1 + 152) = *(v1 + 248);
  return v4;
}

uint64_t sub_1000153D0(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 160);
  v4 = *(a1 + 152);
  if ((dword_1000885E4 & 0x100) != 0)
  {
    if (*(a1 + 252) == v4)
    {
      v5 = "crypto fd";
    }

    else if (*(a1 + 248) == v4)
    {
      v5 = "main fd";
    }

    else
    {
      v5 = "unknown fd";
    }

    printf("cache_flush: offset=0x%llx size=0x%zx(%s)\n", *(a1 + 144), *(a1 + 136), v5);
    v1 = *(a1 + 136);
  }

  v7 = pwrite(v4, *(a1 + 128), v1, *(a1 + 144) + v3);
  if (v7 == -1)
  {
    v6 = *__error();
    if (*(a1 + 252) == v4)
    {
      v8 = "crypto fd";
    }

    else if (*(a1 + 248) == v4)
    {
      v8 = "main fd";
    }

    else
    {
      v8 = "unknown fd";
    }

    fprintf(__stderrp, "cache_flush: Error %d from pwrite(fd=%s, size=0x%zx, offset=0x%llx), blk_count=%lld\n", v6, v8, *(a1 + 136), *(a1 + 144) + v3, *(a1 + 184));
    if (*(a1 + 252) == v4)
    {
      v9 = "crypto fd";
    }

    else if (*(a1 + 248) == v4)
    {
      v9 = "main fd";
    }

    else
    {
      v9 = "unknown fd";
    }

    asprintf((a1 + 360), "cache_flush: Error %d from pwrite(fd=%s, size=0x%zx, offset=0x%llx), blk_count=%lld\n", v6, v9, *(a1 + 136), *(a1 + 144) + v3, *(a1 + 184));
  }

  else if (v7 == *(a1 + 136))
  {
    v6 = 0;
    *(a1 + 136) = 0;
  }

  else
  {
    return 5;
  }

  return v6;
}

uint64_t sub_100015580(uint64_t a1)
{
  v2 = sub_1000153D0(a1);
  if (fsync(*(a1 + 252)))
  {
    warn("_dev_flush:fsync(crypto_fd %d)", *(a1 + 252));
  }

  if (fsync(*(a1 + 248)))
  {
    warn("_dev_flush:fsync(plain_fd %d)", *(a1 + 248));
  }

  return v2;
}

uint64_t sub_10001562C(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v3 = *(*a1 + 200);
  if (a2 % v3)
  {
    fprintf(__stderrp, "Can't set block size to %u (not a multiple of %u)\n", a2, v3);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_dev_io.c", 209, 169, -10);
  }

  *(v2 + 208) = a2;
  *(v2 + 184) = *(v2 + 176) / (a2 / v3);
  return 0;
}

uint64_t sub_10001569C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a1;
  if (a5)
  {
    v10 = sub_10002C3CC(a5);
    v11 = v10 == 0;
    v12 = (v9 + 252);
    v13 = (v9 + 248);
    if (v10)
    {
      v14 = (v9 + 248);
    }

    else
    {
      v14 = (v9 + 252);
    }
  }

  else
  {
    v11 = 0;
    v12 = (v9 + 252);
    v13 = (v9 + 248);
    v14 = (v9 + 248);
  }

  v15 = *(v9 + 208);
  v16 = v15 * a2;
  v17 = v15 * a3;
  v18 = *v14;
  if ((dword_1000885E4 & 0x100) != 0)
  {
    if (*v12 == v18)
    {
      v19 = "crypto fd";
    }

    else if (*v13 == v18)
    {
      v19 = "main fd";
    }

    else
    {
      v19 = "unknown fd";
    }

    printf("dev_read: offset=0x%llx size=0x%zx(%s)\n", v16, v17, v19);
  }

  v20 = *(v9 + 144);
  if (v16 >= v20 && v16 < (*(v9 + 136) + v20) && v18 == *(v9 + 152))
  {
    memcpy(a4, (*(v9 + 128) + v16 - v20), v17);
    return 0;
  }

  else
  {
    v22 = *(v9 + 160) + v16;
    v23 = pread(v18, a4, v17, v22);
    if (v23 == -1)
    {
      ++*(a1 + 27);
      v21 = *__error();
      fprintf(__stderrp, "dev_read: Error %d from pread(fd=%d, size=0x%zx, offset=%llx\n", v21, v18, v17, v22);
      if (v21 == 9)
      {
        v26 = *(v9 + 248);
        v25 = *(v9 + 252);
        v27 = "unknown fd";
        if (v26 == v18)
        {
          v27 = "main fd";
        }

        if (v25 == v18)
        {
          v27 = "crypto fd";
        }

        asprintf((v9 + 360), "%s rd_fd=%d (%s) crypto_fd %d plain_fd %d, encrypted %d closed %d volume %llx", *(v9 + 360), v18, v27, v25, v26, v11, *(v9 + 376), *(v9 + 112));
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_dev_io.c", 266, 377, 9);
      }
    }

    else if (v23 == v17)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return v21;
}

uint64_t sub_1000158B4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    fprintf(__stderrp, "Error: dev_read_extended with flags 0x%x is not supported\n", a9);
    return 45;
  }

  else
  {
    v13 = sub_10001569C(a1, a2, a3, a4, a5);
    v9 = v13;
    if (a7)
    {
      if (a6)
      {
        v14 = *a7;
        if (*a7)
        {
          *(a7 + 96) = v13;
          v14(a7);
        }
      }
    }
  }

  return v9;
}

uint64_t sub_10001593C(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v8 = *a1;
  if (a5)
  {
    v9 = sub_10002C3CC(a5);
    v10 = (v8 + 252);
    v11 = (v8 + 248);
    if (v9)
    {
      v12 = (v8 + 248);
    }

    else
    {
      v12 = (v8 + 252);
    }
  }

  else
  {
    v10 = (v8 + 252);
    v11 = (v8 + 248);
    v12 = (v8 + 248);
  }

  v13 = *(v8 + 208);
  v14 = v13 * a2;
  v15 = v13 * a3;
  v16 = *v12;
  if ((dword_1000885E4 & 0x100) != 0)
  {
    if (*v10 == v16)
    {
      v17 = "crypto fd";
    }

    else if (*v11 == v16)
    {
      v17 = "main fd";
    }

    else
    {
      v17 = "unknown fd";
    }

    printf("dev_write: offset=0x%llx size=0x%zx(%s)\n", v14, v15, v17);
  }

  v18 = *(v8 + 136);
  if (v18 && *(v8 + 144) + v18 == v14 && v18 + v15 <= 0x100000 && v16 == *(v8 + 152))
  {
    memcpy((*(v8 + 128) + v18), a4, v15);
    result = 0;
    *(v8 + 136) += v15;
  }

  else
  {
    result = sub_1000153D0(v8);
    if (!result)
    {
      *(v8 + 136) = v15;
      *(v8 + 144) = v14;
      *(v8 + 152) = v16;
      memcpy(*(v8 + 128), a4, v15);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100015A94(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    fprintf(__stderrp, "Error: dev_write_extended with flags 0x%x is not supported\n", a7);
    return 45;
  }

  else
  {

    return sub_10001593C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100015AE4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  fprintf(__stderrp, "Warning: dev_read_data called for addr=%lld, count=%zu\n", a2, a3);

  return sub_10001569C(a1, a2, a3, a4, a5);
}

uint64_t sub_100015B6C(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  fprintf(__stderrp, "Warning: dev_write_data called for addr=%lld, count=%zu\n", a2, a3);

  return sub_10001593C(a1, a2, a3, a4, a5);
}

uint64_t sub_100015BF4(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = sub_100015580(*a1);
  if (v4)
  {
    return v4;
  }

  if (*(v3 + 40))
  {
    v5 = *(v3 + 252);
    if (a2)
    {
      if (fcntl(v5, 51) == -1)
      {
        warn("fcntl(crypto_fd,F_FULLFSYNC)");
      }

      goto LABEL_11;
    }

    if (fcntl(v5, 85) == -1)
    {
      warn("fcntl(crypto_fd,F_BARRIERFSYNC)");
    }
  }

  else if (a2)
  {
LABEL_11:
    v6 = ioctl(*(v3 + 248), 0x20006416uLL, 0, v8, v9);
    goto LABEL_12;
  }

  if ((*(v3 + 212) & 2) == 0)
  {
    goto LABEL_11;
  }

  v6 = ioctl(*(v3 + 248), 0x80186416uLL, &v8, 0, 0, 2);
LABEL_12:
  if (v6 != -1)
  {
    return 0;
  }

  v4 = *__error();
  if ((dword_1000885E4 & 0x100) != 0)
  {
    fprintf(__stderrp, "dev_barrier: Error %d\n", v4);
  }

  return v4;
}

uint64_t sub_100015D24(uint64_t *a1, _DWORD *a2, _DWORD *a3, int *a4, _DWORD *a5)
{
  v7 = *a1;
  if (a2)
  {
    *a2 = *(v7 + 212);
  }

  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    v9 = -1431655766;
    sub_10004332C(*(v7 + 248), 0, 0, &v9, 0);
    *a4 = v9;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t sub_100015DA4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = malloc_type_malloc(0x18uLL, 0x102004014030ADEuLL);
  if (!v8)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_stream.c", 40, 85, 12);
  }

  v9 = v8;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  v10 = sub_100015E68(v8, a1, a2, a3);
  if (v10)
  {
    fprintf(__stderrp, "Error %d initializing stream for ID=%u\n", v10, a3);
  }

  else
  {
    *a4 = v9;
  }

  return v10;
}

uint64_t sub_100015E68(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
  v9 = 0;
  *(a1 + 16) = v8;
  *a1 = a2;
  v10 = *(a1 + 12);
  do
  {
    v11 = *(a3 + 8 * v9);
    v12 = vrev32_s8(v11);
    v8[v9] = v12;
    v10 += v12.i32[1];
    if (v11.i32[0])
    {
      v13 = v11.i32[1] == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      result = 0;
      *(a1 + 8) = v9;
      *(a1 + 12) = v10;
      return result;
    }

    ++v9;
  }

  while (v9 != 8);
  *(a1 + 8) = 8;
  *(a1 + 12) = v10;
  if (a4 == 3)
  {
    return 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_100015FB4;
  v15[3] = &unk_100084B58;
  v16 = a4;
  v15[4] = a1;
  return sub_10001771C(a2, a4, 0, v15);
}

uint64_t sub_100015F80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
    *(a1 + 16) = 0;
  }

  return 0;
}

uint64_t sub_100015FB4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (bswap32(*(a2 + 4)) == *(a1 + 40) && !*(a2 + 2))
  {
    v7 = malloc_type_realloc(*(*(a1 + 32) + 16), 8 * (*(*(a1 + 32) + 8) + 8), 0x100004000313F17uLL);
    v8 = 0;
    *(*(a1 + 32) + 16) = v7;
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v12 = *(v9 + 8);
    v11 = *(v9 + 12);
    while (1)
    {
      v13 = *(a3 + v8);
      v14 = vrev32_s8(v13);
      *(v10 + 8 * v12) = v14;
      v11 += v14.i32[1];
      if (!v13.i32[0] || v13.i32[1] == 0)
      {
        break;
      }

      *(v9 + 8) = ++v12;
      v8 += 8;
      if (v8 == 64)
      {
        *(v9 + 12) = v11;
        return 0;
      }
    }

    *(v9 + 12) = v11;
  }

  *a4 = 1;
  return 0;
}

uint64_t sub_100016094(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v6 = *a1;
  v7 = *(*a1 + 128);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = (*(a1 + 16) + 4);
    v10 = a2;
    while (1)
    {
      v11 = *v9 * v7;
      if (v10 < v11)
      {
        break;
      }

      v9 += 2;
      v10 -= v11;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *a4 = v10 + *(v9 - 1) * v7;
    v14 = v11 - v10;
    if (a3 < v11 - v10)
    {
      v14 = a3;
    }

    *a5 = v14;
  }

  else
  {
LABEL_5:
    if (v6[5] == a1)
    {
      v12 = "extents_tree";
    }

    else if (v6[6] == a1 || v6[7] == a1)
    {
      v12 = "catalog_tree";
    }

    else if (v6[8] == a1)
    {
      v12 = "bitmap";
    }

    else if (v6[9] == a1)
    {
      v12 = "journal";
    }

    else if (v6[10] == a1)
    {
      v12 = "journal_info_block";
    }

    else if (v6[11] == a1)
    {
      v12 = "hot_files";
    }

    else
    {
      v12 = "unknown";
    }

    asprintf((*v6 + 360), "%s address %lld, size %lld is outside stream %s, num_blocks %u, block_size %lld", *(*v6 + 360), a2, a3, v12, *(a1 + 12), v7);
    if (v6[8] != a1)
    {
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_stream.c", 184, 86, -123);
    }

    return 34;
  }

  return result;
}

BOOL sub_10001620C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 == 1)
  {
    *a2 = *(*a1 + 128) * **(a1 + 16);
  }

  return v2 == 1;
}

uint64_t sub_100016250(uint64_t **a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  while (1)
  {
    result = sub_100016094(a1, a2, v5, &v12, &v11);
    if (result)
    {
      break;
    }

    v9 = v11;
    result = sub_100016FE0(*a1, a4, v11, v12);
    a2 += v9;
    v5 -= v9;
    a4 += v9;
    if (result)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 == 0;
    }

    if (v10)
    {
      return result;
    }
  }

  if (result == 34)
  {
    bzero(a4, v5);
    return 0;
  }

  return result;
}

uint64_t sub_100016310(uint64_t *a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    result = sub_100016094(a1, a2, v5, &v12, &v11);
    if (result)
    {
      break;
    }

    v9 = v11;
    result = sub_100017378(*a1, a4, v12, v11);
    a2 += v9;
    v5 -= v9;
    a4 += v9;
  }

  while (!result && v5 != 0);
  return result;
}

uint64_t sub_1000163B4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  while (1)
  {
    if (a2)
    {
      v4 = a2 - 1;
      v5 = a1 + 2;
      while (1)
      {
        a2 = v4;
        a1 = v5;
        v6 = bswap32(*(v5 - 2)) >> 16;
        if (v6 <= 0xFF)
        {
          break;
        }

        if (word_10007F9D0[v6 >> 8])
        {
          v6 = word_10007F9D0[word_10007F9D0[v6 >> 8] + v6];
          --v4;
          if (a2)
          {
            v5 += 2;
            if (!v6)
            {
              continue;
            }
          }
        }

        goto LABEL_9;
      }

      v6 = word_100088052[v6];
      if (!a4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = 0;
LABEL_9:
      if (!a4)
      {
LABEL_17:
        v9 = 0;
        goto LABEL_19;
      }
    }

    v7 = a4 - 1;
    v8 = a3 + 2;
    while (1)
    {
      a4 = v7;
      a3 = v8;
      v9 = bswap32(*(v8 - 2)) >> 16;
      if (v9 <= 0xFF)
      {
        break;
      }

      if (word_10007F9D0[v9 >> 8])
      {
        v9 = word_10007F9D0[word_10007F9D0[v9 >> 8] + v9];
        --v7;
        if (a4)
        {
          v8 += 2;
          if (!v9)
          {
            continue;
          }
        }
      }

      goto LABEL_19;
    }

    v9 = word_100088052[v9];
LABEL_19:
    if (v6 != v9)
    {
      break;
    }

    if (!v6)
    {
      return 0;
    }
  }

  if (v6 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10001649C(unsigned __int16 *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4)
{
  if (a2 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a2;
  }

  if (a2 < a4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = a2 > a4;
  }

  while (v5)
  {
    v7 = bswap32(*a1) >> 16;
    v8 = bswap32(*a3);
    if (v7 > HIWORD(v8))
    {
      return 1;
    }

    ++a3;
    ++a1;
    --v5;
    if (v7 < HIWORD(v8))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100016508(FILE *a1, unsigned __int16 *a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      fprintf(a1, "%02X ", bswap32(v6) >> 16);
      --v5;
    }

    while (v5);
  }

  return fputc(10, a1);
}

unsigned __int16 *sub_10001658C(unsigned __int16 *result)
{
  v1 = bswap32(*result) >> 16;
  v2 = result[1];
  v3 = __rev16(v2);
  if (v1 == 18520)
  {
    if (v2 == 1280)
    {
      goto LABEL_6;
    }

    fprintf(__stderrp, "Invalid HFSX version (%u)\n", v3);
    v4 = 45;
    v5 = 88;
LABEL_20:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", v4, v5, -120);
  }

  if (v1 != 18475)
  {
    fprintf(__stderrp, "Not an HFS volume? (signature 0x%04x)\n", v1);
    v4 = 49;
    v5 = 89;
    goto LABEL_20;
  }

  if (v2 != 1024)
  {
    fprintf(__stderrp, "Invalid HFSPlus version (%u)\n", v3);
    v4 = 40;
    v5 = 87;
    goto LABEL_20;
  }

LABEL_6:
  v6 = bswap32(*(result + 1));
  if ((v6 & 0x4800) != 0)
  {
    v7 = byte_1000885D2 ? "Continuing." : "Cannot convert.";
    result = fprintf(__stderrp, "Volume marked inconsistent!  %s\n", v7);
    if ((byte_1000885D2 & 1) == 0)
    {
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 56, 90, -121);
    }
  }

  if ((v6 & 0x2100) == 0)
  {
    if (byte_1000885D2)
    {
      v8 = "Continuing.";
    }

    else
    {
      v8 = "Cannot convert.";
    }

    result = fprintf(__stderrp, "Volume not cleanly unmounted and not journaled!  %s\n", v8);
    if ((byte_1000885D2 & 1) == 0)
    {
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 62, 91, -122);
    }
  }

  return result;
}

uint64_t sub_100016760(uint64_t a1, uint64_t a2, int a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64[7] = v6;
  v64[8] = v6;
  v64[5] = v6;
  v64[6] = v6;
  v64[3] = v6;
  v64[4] = v6;
  v64[1] = v6;
  v64[2] = v6;
  v63[4] = v6;
  v64[0] = v6;
  v63[2] = v6;
  v63[3] = v6;
  v63[0] = v6;
  v63[1] = v6;
  v62[3] = v6;
  v62[4] = v6;
  v62[1] = v6;
  v62[2] = v6;
  v61[4] = v6;
  v62[0] = v6;
  v61[2] = v6;
  v61[3] = v6;
  v61[0] = v6;
  v61[1] = v6;
  v60[0] = v6;
  v60[1] = v6;
  v58 = v6;
  v59 = v6;
  v56 = v6;
  v57 = v6;
  __buf = v6;
  v55 = v6;
  v52 = 0;
  memset(__b, 170, sizeof(__b));
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  memset(__s1, 170, sizeof(__s1));
  v48 = 1023;
  *a2 = a1;
  *(a2 + 32) = a3;
  *(a2 + 152) = -1;
  if (((*(*(a1 + 48) + 104))() & 1) != 0 || *(a1 + 24) >= 2)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&c.data[2] = v7;
    *&c.data[6] = v7;
    *&c.A = v7;
    *&c.Nl = v7;
    v8 = *(a1 + 48);
    v9 = *v8;
    v10 = *(a1 + 32);
    v11 = v8[12]();
    if (v11)
    {
      v12 = *(a2 + 152);
    }

    else
    {
      if (v9)
      {
        v12 = open(&c, 34);
      }

      else
      {
        v12 = open(&c, 16);
      }

      *(a2 + 152) = v12;
    }

    if (v12 == -1)
    {
      fprintf(__stderrp, "Could not open volume %s", &c);
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 119, 172, v11);
    }

    *(a2 + 368) = 1;
    if (ioctl(v12, 0x40046418uLL, a1 + 204) == -1)
    {
      v44 = *__error();
      v45 = __stderrp;
      v46 = *(a1 + 32);
      v47 = strerror(v44);
      fprintf(v45, "%s: Cannot determine sector size: %s\n", v46, v47);
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 127, 332, v44);
    }
  }

  if (*(a2 + 152) == -1)
  {
    *(a2 + 152) = dup(*(a1 + 248));
    *(a1 + 204) = *(a1 + 200);
  }

  v13 = sub_100016FE0(a2, &__buf, 0x200uLL, 0x400uLL);
  if (v13)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 144, 92, v13);
  }

  sub_10001658C(&__buf);
  if (!*(a2 + 112))
  {
    *(a2 + 112) = *(a1 + 176) * *(a1 + 200);
  }

  v14.i64[0] = *(&v56 + 1);
  v14.i64[1] = __PAIR64__(DWORD1(__buf), v57);
  v15 = vrev32q_s8(v14);
  *(a2 + 128) = v15;
  *(a2 + 120) = bswap32(HIDWORD(__buf)) * v15.u32[0];
  v16 = __buf;
  v15.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v15.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  *&c.data[13] = v15;
  *&c.data[6] = v15;
  *&c.data[10] = v15;
  *&c.Nl = v15;
  *&c.data[2] = v15;
  *&c.A = v15;
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, &unk_100080DD0, 0x10u);
  CC_MD5_Update(&c, v60 + 8, 8u);
  CC_MD5_Final((a2 + 96), &c);
  *(a2 + 102) = *(a2 + 102) & 0xF | 0x30;
  *(a2 + 104) = *(a2 + 104) & 0x3F | 0x80;
  *(a2 + 144) = bswap32(v55);
  v17 = sub_1000147E0(a2, sub_100014D94, v62, 3, (a2 + 40));
  if (v17)
  {
    goto LABEL_23;
  }

  v18 = v16 == 22600 ? sub_100014E4C : sub_100014DF8;
  v17 = sub_1000147E0(a2, v18, v63, 4, (a2 + 48));
  if (v17)
  {
    goto LABEL_23;
  }

  v17 = sub_1000147E0(a2, sub_100014EA0, v64, 8, (a2 + 56));
  if (v17)
  {
    goto LABEL_23;
  }

  v17 = sub_100015DA4(a2, v61, 6, (a2 + 64));
  if (v17)
  {
    goto LABEL_23;
  }

  v31 = *(a2 + 48);
  *(a1 + 320) += *(*(a2 + 40) + 56) + *(v31 + 56) + *(*(a2 + 56) + 56);
  v32 = sub_100014988(v31, &v52);
  if (v32)
  {
    v19 = v32;
    fprintf(__stderrp, "Can't initialize catalog iterator!  (Error %d)\n");
    goto LABEL_24;
  }

  sub_1000172B4(1u, &unk_100064CAF, __b);
  v33 = sub_100014A60(v52, __b, &v50, &v49);
  if (v33 != 2)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 222, 119, v33);
  }

  v19 = sub_100014BEC(v52, &v50, &v49);
  if (v19 || *(v50 + 2) != 0x1000000)
  {
    fprintf(__stderrp, "slice %u: Can't find volume name.  (Error %d)\n", a3, v19);
    goto LABEL_24;
  }

  v34 = sub_1000164F8((v50 + 8), bswap32(*(v50 + 6)) >> 16, __s1, &v48);
  if (v34)
  {
    v19 = v34;
    fprintf(__stderrp, "slice %u: Bad volume name!  (Error %d)\n");
    goto LABEL_24;
  }

  __s1[v48] = 0;
  *(a2 + 24) = strdup(__s1);
  *(a2 + 148) = bswap32(v49[3]);
  sub_1000172B4(2u, ".journal", __b);
  if (sub_100014A60(v52, __b, &v50, &v49))
  {
    *(a2 + 204) = 0;
  }

  else
  {
    v35 = v49;
    v36 = bswap32(v49[2]);
    *(a2 + 204) = v36;
    sub_100015DA4(a2, (v35 + 26), v36, (a2 + 72));
  }

  sub_1000172B4(2u, ".journal_info_block", __b);
  if (sub_100014A60(v52, __b, &v50, &v49))
  {
    *(a2 + 208) = 0;
  }

  else
  {
    v37 = v49;
    v38 = bswap32(v49[2]);
    *(a2 + 208) = v38;
    sub_100015DA4(a2, (v37 + 26), v38, (a2 + 80));
  }

  sub_1000172B4(2u, ".hotfiles.btree", __b);
  if (sub_100014A60(v52, __b, &v50, &v49))
  {
    *(a2 + 220) = 0;
  }

  else
  {
    v39 = v49;
    v40 = bswap32(v49[2]);
    *(a2 + 220) = v40;
    sub_100015DA4(a2, (v39 + 26), v40, (a2 + 88));
  }

  sub_1000172B4(2u, "␀␀␀␀HFS+ Private Data", __b);
  if (sub_100014A60(v52, __b, &v50, &v49))
  {
    v41 = 0;
  }

  else
  {
    v41 = bswap32(v49[2]);
  }

  *(a2 + 212) = v41;
  sub_1000172B4(2u, ".HFS+ Private Directory Data\r", __b);
  if (sub_100014A60(v52, __b, &v50, &v49))
  {
    v42 = 0;
  }

  else
  {
    v42 = bswap32(v49[2]);
  }

  *(a2 + 216) = v42;
  sub_100014A28(v52);
  v52 = 0;
  if (dword_1000885E4)
  {
    *&c.A = time(0);
    v43 = ctime(&c);
    printf("%.24s: Finding inode files for slice %u\n", v43, a3);
  }

  v17 = sub_100004E8C(a2);
  if (v17)
  {
LABEL_23:
    v19 = v17;
LABEL_24:
    v20 = __stderrp;
    v21 = strerror(v19);
    fprintf(v20, "hfs_init: %s\n", v21);
    if ((*(a2 + 152) & 0x80000000) == 0)
    {
      printf("Closing HFS fd=%d\n", *(a2 + 152));
      close(*(a2 + 152));
    }

    *(a2 + 152) = -1;
    v22 = *(a2 + 64);
    if (v22)
    {
      sub_100014A28(v22);
      *(a2 + 64) = 0;
    }

    v23 = *(a2 + 56);
    if (v23)
    {
      sub_100014954(v23);
      *(a2 + 56) = 0;
    }

    v24 = *(a2 + 48);
    if (v24)
    {
      sub_100014954(v24);
      *(a2 + 48) = 0;
    }

    v25 = *(a2 + 40);
    if (v25)
    {
      sub_100014954(v25);
      *(a2 + 40) = 0;
    }

    v26 = *(a2 + 72);
    if (v26)
    {
      sub_100014A28(v26);
      *(a2 + 72) = 0;
    }

    v27 = *(a2 + 80);
    if (v27)
    {
      sub_100014A28(v27);
      *(a2 + 80) = 0;
    }

    v28 = *(a2 + 88);
    if (v28)
    {
      sub_100014A28(v28);
      *(a2 + 88) = 0;
    }

    v29 = *(a2 + 24);
    if (v29)
    {
      free(v29);
      *(a2 + 24) = 0;
    }

    if (v52)
    {
      sub_100014A28(v52);
    }

    return v19;
  }

  if (*(a2 + 204))
  {
    --*(a2 + 296);
  }

  if (*(a2 + 208))
  {
    --*(a2 + 296);
  }

  if (*(a2 + 220))
  {
    --*(a2 + 296);
  }

  if (*(a2 + 212))
  {
    --*(a2 + 300);
  }

  if (*(a2 + 216) && (byte_100088034 & 1) == 0)
  {
    --*(a2 + 300);
  }

  v19 = 0;
  --*(a2 + 300);
  return v19;
}

uint64_t sub_100016FE0(uint64_t *a1, char *__buf, size_t __nbyte, unint64_t a4)
{
  if (__nbyte)
  {
    v5 = __nbyte;
    v8 = *a1;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    while (1)
    {
      if (*(a1 + 368))
      {
        v23 = a4;
        v9 = a4;
        v10 = v5;
      }

      else
      {
        v11 = *(a1 + 8);
        v12 = (*(*(v8 + 48) + 8))();
        if (v12)
        {
          v16 = v12;
          asprintf((v8 + 360), "%s hfs_to_phys(0x%llx, %d, %lld, %ld) failed", *(v8 + 360), *(v8 + 48), *(a1 + 8), a4, v5);
          return v16;
        }

        v10 = 0xAAAAAAAAAAAAAAAALL;
        v9 = v23;
      }

      v13 = *(v8 + 204);
      v14 = v9 % v13;
      if ((v10 % v13) | (v9 % v13))
      {
        break;
      }

      v15 = pread(*(a1 + 38), __buf, v10, v9);
      if (v15 == -1)
      {
        v16 = *__error();
        fprintf(__stderrp, "hfs_vol_read: Error %d from pread(fd=%d, size=0x%zx, offset=0x%llx\n", v16, *(a1 + 38), v10, v23);
        asprintf((v8 + 360), "%s pread(%d, 0x%llx, %ld, %lld) failed", *(v8 + 360), *(a1 + 38), __buf, v10, v23);
      }

      else
      {
        if (!v15)
        {
          return 0xFFFFFFFFLL;
        }

        if (v15 == v10)
        {
          v16 = 0;
        }

        else
        {
          v16 = 5;
        }
      }

LABEL_24:
      if (!v16)
      {
        __buf += v10;
        a4 += v10;
        v5 -= v10;
        if (v5)
        {
          continue;
        }
      }

      return v16;
    }

    v17 = v9 - v14;
    v18 = v10 + v13 - 1 + v14 - (v10 + v13 + v9 - 1) % v13;
    v19 = malloc_type_malloc(v18, 0x90CF4FFDuLL);
    if (!v19)
    {
      asprintf((v8 + 360), "%s malloc(%ld) failed, io_size %ld io_offset %lld, bytes_per_sector %d", *(v8 + 360), v18, v10, v23, *(v8 + 204));
      return 12;
    }

    v20 = v19;
    v21 = pread(*(a1 + 38), v19, v18, v17);
    if (v21 == -1)
    {
      v16 = *__error();
      fprintf(__stderrp, "hfs_vol_read: Error %d from pread(fd=%d, aligned_size=0x%zx, aligned_offset=0x%llx\n", v16, *(a1 + 38), v18, v17);
      asprintf((v8 + 360), "%s unaligned pread(%d, 0x%llx, %ld, %lld) failed, io_size %ld io_offset %lld, bytes_per_sector %d", *(v8 + 360), *(a1 + 38), v20, v18, v17, v10, v23, *(v8 + 204));
      if (v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!v21)
      {
        v16 = 0xFFFFFFFFLL;
LABEL_23:
        free(v20);
        goto LABEL_24;
      }

      if (v21 != v18)
      {
        v16 = 5;
        goto LABEL_23;
      }
    }

    memcpy(__buf, &v20[v23 - v17], v10);
    v16 = 0;
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_1000172B4(unsigned int a1, char *__s, uint64_t a3)
{
  v9 = 255;
  *(a3 + 2) = bswap32(a1);
  v5 = strlen(__s);
  result = sub_100016500(__s, v5, (a3 + 8), &v9);
  if (result)
  {
    v8 = result;
    fprintf(__stderrp, "Error %d converting name (%s) to UTF-16\n", result, __s);
    sub_100017860(__s);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 701, 93, v8);
  }

  v7 = v9;
  *(a3 + 6) = bswap32(v9) >> 16;
  *a3 = bswap32(2 * v7 + 6) >> 16;
  return result;
}

uint64_t sub_100017378(uint64_t a1, char *__buf, unint64_t a3, size_t __nbyte)
{
  if (!__nbyte)
  {
    return 0;
  }

  v4 = __nbyte;
  v8 = *a1;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *(a1 + 152);
  do
  {
    v10 = *(v8 + 48);
    if (*(a1 + 368) && *v10)
    {
      v15 = a3;
      v11 = a3;
      v12 = v4;
    }

    else
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      result = (*(v10 + 8))(v10, *(a1 + 32), a3, v4, &v15, &v14);
      if (result)
      {
        return result;
      }

      if (!**(v8 + 48))
      {
        v9 = *(v8 + 248);
      }

      v12 = v14;
      v11 = v15;
    }

    result = sub_100017468(v8, v9, __buf, v11, v12);
    if (result)
    {
      break;
    }

    __buf += v12;
    a3 += v12;
    v4 -= v12;
  }

  while (v4);
  return result;
}

uint64_t sub_100017468(uint64_t a1, int __fd, void *__buf, off_t a4, size_t __nbyte)
{
  v10 = *(a1 + 200);
  v11 = a4 % v10;
  if ((__nbyte % v10) | (a4 % v10))
  {
    v12 = a4 - v11;
    v13 = __nbyte + v10 - 1 + v11 - (a4 + __nbyte + v10 - 1) % v10;
    v14 = malloc_type_malloc(v13, 0xCE64DA0FuLL);
    v15 = pread(__fd, v14, v13, v12);
    if (v15 == -1)
    {
      v16 = *__error();
      fprintf(__stderrp, "vol_write: Error %d from pread(fd=%d, aligned_offset=0x%llx, aligned_size=0x%zx)\n", v16, __fd, v12, v13);
      if (v16)
      {
        if (v16 != 9)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else if (v15 != v13)
    {
      v16 = 5;
      goto LABEL_22;
    }

    memcpy(&v14[v11], __buf, __nbyte);
    v19 = pwrite(__fd, v14, v13, v12);
    if (v19 != -1)
    {
      if (v19 == v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = 5;
      }

      goto LABEL_22;
    }

    v20 = *__error();
    fprintf(__stderrp, "vol_write: Error %d from pwrite(fd=%d, aligned_offset=0x%llx, aligned_size=0x%zx)\n", v20, __fd, v12, v13);
    v16 = v20;
    if (v20 != 9)
    {
LABEL_22:
      free(v14);
      return v16;
    }

LABEL_21:
    asprintf((a1 + 360), "%s fd=%d", *(a1 + 360), __fd);
    v16 = 9;
    goto LABEL_22;
  }

  v17 = pwrite(__fd, __buf, __nbyte, a4);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  if (v17 == -1)
  {
    v18 = *__error();
    fprintf(__stderrp, "vol_write: Error %d from pwrite(fd=%d, offset=0x%llx, size=0x%zx)\n", v18, __fd, a4, __nbyte);
    v16 = v18;
    if (v18 == 9)
    {
      asprintf((a1 + 360), "%s fd=%d", *(a1 + 360), __fd);
      return 9;
    }
  }

  else if (v17 == __nbyte)
  {
    return 0;
  }

  else
  {
    return 5;
  }

  return v16;
}

uint64_t sub_1000176A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100014988(*(a1 + 48), &v7);
  if (!result)
  {
    if (a2)
    {
      sub_100014A60(v7, a2, 0, 0);
    }

    v6 = sub_100014D10(v7, a3);
    LODWORD(result) = sub_100014A28(v7);
    if (v6)
    {
      return v6;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10001771C(uint64_t a1, int a2, unsigned __int8 a3, uint64_t a4)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0;
  v12 = 2560;
  v13 = a3;
  result = sub_100014988(*(a1 + 40), &v15);
  if (!result)
  {
    v8 = sub_100014A60(v15, &v12, 0, 0);
    if ((v8 & 0xFFFFFFFD) == 0)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v9[2] = sub_100017818;
      v9[3] = &unk_100084B80;
      v10 = a2;
      v11 = a3;
      v9[4] = a4;
      v8 = sub_100014D10(v15, v9);
    }

    LODWORD(result) = sub_100014A28(v15);
    if (v8)
    {
      return v8;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100017818(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(a1 + 40);
  if (!v4 || bswap32(*(a2 + 4)) == v4 && *(a2 + 2) == *(a1 + 44))
  {
    return (*(*(a1 + 32) + 16))();
  }

  *a4 = 1;
  return 0;
}

_BYTE *sub_100017860(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    fwrite("hexdump of file name that failed to convert:", 0x2CuLL, 1uLL, __stderrp);
    v2 = *v1;
    if (*v1)
    {
      v3 = 0;
      v4 = v1 + 1;
      do
      {
        if ((v3 & 0xF) == 0)
        {
          fprintf(__stderrp, "\n %04x ", v3);
          v2 = *(v4 - 1);
        }

        fprintf(__stderrp, " %02x", v2);
        v5 = *v4++;
        v2 = v5;
        ++v3;
      }

      while (v5);
    }

    v6 = __stderrp;

    return fputc(10, v6);
  }

  return result;
}

uint64_t sub_100017930(uint64_t a1, int64_t a2, uint64_t *a3, int64_t *a4)
{
  if ((dword_1000885E4 & 0x200) != 0)
  {
    printf("hfs_find_free_blocks: wanted=%lld blocks (%llu bytes)\n", a2, *(a1 + 208) * a2);
  }

  if (a4)
  {
    *a4 = a2;
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 120);
  if (v8)
  {
    v9 = *(v7 + 112);
    v10 = *(a1 + 208);
    v11 = v10 * a2;
    v12 = (v9 + 8);
    do
    {
      if (*v12 >= v11)
      {
        *a3 = *(v12 - 1) / v10;
        v50 = *(v12 - 1) + v11;
        v51 = *v12 - v11;
        *(v12 - 1) = v50;
        *v12 = v51;
        if ((dword_1000885E4 & 0x200) != 0)
        {
          printf("find_free_blocks_in_free_extents: found_start=%lld\n", *a3);
        }

        return 0;
      }

      v12 += 2;
      --v8;
    }

    while (v8);
  }

  v13 = malloc_type_malloc(0x20000uLL, 0x1E8CB3D2uLL);
  if (!v13)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 874, 94, 12);
  }

  v53 = a3;
  if (!*(a1 + 120))
  {
LABEL_51:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 968, 97, -11);
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    *(a1 + 348) = v15;
    v17 = *(a1 + 112) + 376 * v15;
    v18 = *(v17 + 248);
    v19 = *(v17 + 128);
    v20 = (v19 / *(a1 + 208));
    if (a2 % v20)
    {
      v21 = a2 / v20 + 1;
    }

    else
    {
      v21 = a2 / v20;
    }

    v22 = *(v17 + 64);
    v23 = (v18 >> 3) & 0x1FFE0000;
    v24 = v19 * *(v22 + 12) - v23;
    if (v24 >= 0x20000)
    {
      v25 = 0x20000;
    }

    else
    {
      v25 = v24;
    }

    v26 = sub_100016250(v22, v23, v25, v14);
    if (v26)
    {
LABEL_60:
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 894, 95, v26);
    }

    v27 = v16;
LABEL_20:
    if (v21 >= 1)
    {
      break;
    }

    v27 = v16;
LABEL_50:
    ++v15;
    v16 = v27;
    if (v15 >= *(a1 + 120))
    {
      goto LABEL_51;
    }
  }

  v28 = 0;
  v29 = (v18 >> 6) & 0x3FFF;
  v30 = bswap64(*&v14[8 * v29]);
  v31 = 0x8000000000000000 >> v18;
  while (1)
  {
    v32 = *(v17 + 132);
    if (v18 >= v32)
    {
      goto LABEL_50;
    }

    if ((v30 & v31) != 0)
    {
      v28 = 0;
      goto LABEL_30;
    }

    v33 = v28 + 1;
    v27 = v28 ? v27 : v18;
    if (v21 <= v33)
    {
      break;
    }

    ++v28;
LABEL_30:
    v34 = v18 + 1;
    if (v18 + 1 < v32)
    {
      if (v31 > 1)
      {
        v31 >>= 1;
      }

      else
      {
        if (++v29 == 0x4000)
        {
          v35 = *(v17 + 64);
          v36 = (v34 >> 3) & 0x1FFE0000;
          v37 = *(v17 + 128) * *(v35 + 12) - v36;
          if (v37 >= 0x20000)
          {
            v38 = 0x20000;
          }

          else
          {
            v38 = v37;
          }

          v39 = sub_100016250(v35, v36, v38, v14);
          if (v39)
          {
            sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 958, 96, v39);
          }

          v29 = 0;
        }

        v31 = 0x8000000000000000 >> v34;
        v30 = bswap64(*&v14[8 * v29]);
      }

      LODWORD(v18) = v18 + 1;
      if (v21 > v28)
      {
        continue;
      }
    }

    goto LABEL_50;
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v40 = *(v17 + 128);
  v41 = v40 * v27;
  v42 = sub_100017CE0(v17, v41, v40 * v33, &v56, &v55);
  if (!v42)
  {
    v43 = *(a1 + 208);
    if (v55 / v43 < a2)
    {
      v44 = *(v17 + 128);
      v18 = (v55 + v41) / v44;
      v45 = *(v17 + 64);
      v46 = (v18 >> 3) & 0x1FFE0000;
      v47 = v44 * *(v45 + 12) - v46;
      if (v47 >= 0x20000)
      {
        v48 = 0x20000;
      }

      else
      {
        v48 = v47;
      }

      v26 = sub_100016250(v45, v46, v48, v14);
      if (v26)
      {
        goto LABEL_60;
      }

      goto LABEL_20;
    }

    v49 = v56 / v43;
    *v53 = v49;
    *(v17 + 248) = v27 + v33;
    if ((dword_1000885E4 & 0x200) != 0)
    {
      printf("hfs_find_free_blocks: found_start=%lld\n", v49);
    }
  }

  free(v14);
  return v42;
}

uint64_t sub_100017CE0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, int64_t *a5)
{
  v8 = *a1;
  v15 = 0;
  v16 = 0;
  result = (*(*(v8 + 48) + 8))(*(v8 + 48), *(a1 + 8), a2, a3, &v16, &v15);
  if (result)
  {
    if (result != 2)
    {
      return result;
    }

    *a4 = 0;
    v10 = v15;
  }

  else
  {
    v11 = *(v8 + 160);
    v12 = v16;
    v13 = v11 + *(v8 + 176) * *(v8 + 200);
    if (**(v8 + 48) == 2 && v15 + v16 > v13)
    {
      if (v13 <= v16)
      {
        v15 = 0;
        v16 = v13;
        v12 = v13;
      }

      else
      {
        v15 = v13 - v16;
      }
    }

    v14 = v12 - v11;
    if (v12 < v11 || (v10 = v15, (v15 + v12) > v13))
    {
      sub_1000638A0(a2, v12);
    }

    *a4 = v14;
  }

  *a5 = v10;
  return result;
}

uint64_t sub_100017DD0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a1;
  if (**(a1 + 48) == 2)
  {
    v9 = sub_100016250(*(*(a1 + 112) + 64), a3, a4, a5);
    if (v9)
    {
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_vol.c", 1143, 98, v9);
    }

    for (; v6; --v6)
    {
      *v5 = byte_100080DE1[*v5];
      ++v5;
    }
  }

  else
  {
    v43 = sub_10003FA58(1uLL, a4, 0xC104B0F1uLL);
    if (!v43)
    {
      sub_1000639E4();
    }

    v40 = sub_10003FA58(1uLL, v6, 0x7FD2B4DCuLL);
    if (!v40)
    {
      sub_1000639B0();
    }

    v38 = sub_10003FA58(1uLL, v6 + 1, 0xA83DC858uLL);
    if (!v38)
    {
      sub_10006397C();
    }

    v10 = *(v8 + 208);
    v11 = 8 * v6 * v10;
    if (v11 >= 1)
    {
      v12 = 8 * a3 * v10;
      v45 = v12;
      v42 = v8;
      do
      {
        v13 = *(v8 + 160);
        v14 = (*(*(v8 + 48) + 24))();
        if (v14)
        {
          sub_1000638D8(v14);
        }

        v15 = *(v8 + 112) + 0xFAAAAAA9B0;
        v16 = *(v8 + 208);
        v17 = 8 * v16;
        if (0xAAAAAAAAAAAAAAAALL % v17)
        {
          v18 = 0xAAAAAAAAAAAAAAAALL / v17 + 1;
        }

        else
        {
          v18 = 0xAAAAAAAAAAAAAAAALL / v17;
        }

        __n = v18;
        v19 = *(*(v8 + 112) + 0xFAAAAAAA30);
        v20 = 8 * v19;
        v21 = 0xAAAAAAAAAAAAAAAALL / v20;
        if (0x5555555555555554 % v20)
        {
          v22 = 0x5555555555555554 / v20 + 1;
        }

        else
        {
          v22 = 0x5555555555555554 / v20;
        }

        v23 = v22 - v21;
        __src = &v5[(v12 - v45) / v17];
        v24 = sub_100016250(*(v15 + 64), v21, v22 - v21, __src);
        if (v24)
        {
          sub_100063910(v24);
        }

        if (v23)
        {
          v25 = __src;
          v26 = v22 - v21;
          do
          {
            *v25 = byte_100080DE1[*v25];
            ++v25;
            --v26;
          }

          while (v26);
        }

        v27 = v19 / v16;
        v8 = v42;
        if (v27 >= 2 && v22 != v21)
        {
          v39 = (8 * *(v42 + 208));
          v28 = v21 * v27;
          v29 = malloc_type_malloc(v23 * v27, 0x100004077774924uLL);
          memcpy(v29, __src, v23);
          do
          {
            if (v23)
            {
              v30 = v23;
              do
              {
                *&v29[2 * v30 - 2] = word_100080EE2[v29[v30 - 1]];
                --v30;
              }

              while (v30);
            }

            v23 *= 2;
            v31 = v27 > 3;
            LODWORD(v27) = v27 >> 1;
          }

          while (v31);
          memcpy(__src, &v29[0xAAAAAAAAAAAAAAAALL / v39 - v28], __n);
          free(v29);
          v8 = v42;
        }

        v12 -= 0x5555555555555556;
        v31 = v11 <= 0xAAAAAAAAAAAAAAAALL;
        v11 += 0x5555555555555556;
      }

      while (!v31);
    }

    if (v6)
    {
      v32 = v40;
      v33 = v43;
      do
      {
        v34 = *v32++;
        v35 = *v5 | v34;
        *v5 = v35;
        v36 = *v33++;
        *v5++ = v35 & ~v36;
        --v6;
      }

      while (v6);
    }

    free(v43);
    free(v40);
    free(v38);
  }

  return 0;
}

uint64_t sub_1000181FC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = sub_10003E3BC(a1);
  if (!result)
  {
    v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
    *(a1 + 64) = v8.tv_sec / a2 * a2;
    *(a1 + 72) = a2;
    *(a1 + 76) = a3;
    v7 = sub_10003FC10(a3, 8uLL);
    *(a1 + 80) = v7;
    if (v7)
    {
      result = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      j__pthread_mutex_destroy(a1);
      return 12;
    }
  }

  return result;
}

uint64_t sub_10001829C(uint64_t a1)
{
  sub_10003FB5C(*(a1 + 80), 8 * *(a1 + 76));
  *(a1 + 80) = 0;

  return j__pthread_mutex_destroy(a1);
}

uint64_t sub_1000182E4(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v9);
  tv_sec = v9.tv_sec;
  v3 = v9.tv_sec - *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3 >= v4)
  {
    v5 = v3 / v4;
    v6 = *(a1 + 76);
    if (v6 < v5)
    {
      LODWORD(v5) = *(a1 + 76);
    }

    v7 = 8 * v5;
    memmove((*(a1 + 80) + v7), *(a1 + 80), 8 * (v6 - v5));
    bzero(*(a1 + 80), v7);
    **(a1 + 80) = atomic_fetch_and_explicit((a1 + 88), 0, memory_order_relaxed);
    *(a1 + 64) = tv_sec / *(a1 + 72) * *(a1 + 72);
  }

  return pthread_mutex_unlock(a1);
}

uint64_t sub_1000183A4(uint64_t result)
{
  if (result)
  {
    v1 = *(*(result + 392) + 384) + 212;
    v2 = (*(*(result + 376) + 36) + 1);
    if (*(result + 504))
    {
      v4 = (*(*(result + 376) + 36) + 1);
      v5 = *(result + 440);
      return snprintf((result + 4040), 0x20uLL, "%ss%d:%lld");
    }

    else
    {
      v3 = *(*(result + 392) + 384) + 212;
      return snprintf((result + 4040), 0x20uLL, "%ss%d");
    }
  }

  return result;
}

uint64_t sub_100018414(uint64_t a1, int a2)
{
  if (a1 && sub_100046328(a1) == 13)
  {
    v4 = *(a1 + 3584);
    if (v4)
    {
      sub_10003E50C("%s:%d: %s ROSV: Deleting the shadow_fs_root tree 0x%llx\n", "apfs_release_objects", 338, (a1 + 4040), v4);
      v5 = sub_10002EAE8(a1);
      if (v5)
      {
        sub_10003E5FC("%s:%d: %s ROSV: failed to delete shadow fs_root: %d\n", "apfs_release_objects", 341, (a1 + 4040), v5);
      }

      *(a1 + 3584) = 0;
    }

    pthread_mutex_lock((a1 + 1536));
    v6 = *(a1 + 3600);
    if (v6)
    {
      sub_100046D50(v6);
      *(a1 + 3600) = 0;
    }

    pthread_mutex_unlock((a1 + 1536));
    pthread_mutex_lock((a1 + 1600));
    v7 = *(a1 + 3608);
    if (v7)
    {
      sub_100046D50(v7);
      *(a1 + 3608) = 0;
    }

    pthread_mutex_unlock((a1 + 1600));
    pthread_mutex_lock((a1 + 1664));
    v8 = *(a1 + 3616);
    if (v8)
    {
      sub_100046D50(v8);
      *(a1 + 3616) = 0;
    }

    pthread_mutex_unlock((a1 + 1664));
    pthread_mutex_lock((a1 + 1408));
    v9 = *(a1 + 3592);
    if (v9)
    {
      sub_100046D50(v9);
      *(a1 + 3592) = 0;
    }

    pthread_mutex_unlock((a1 + 1408));
    v10 = *(a1 + 3568);
    if (v10)
    {
      sub_100046D50(v10);
      *(a1 + 3568) = 0;
    }

    pthread_mutex_lock((a1 + 1152));
    v11 = *(a1 + 3632);
    if (v11)
    {
      sub_100046D50(v11);
      *(a1 + 3632) = 0;
    }

    pthread_mutex_unlock((a1 + 1152));
    if (a2)
    {
      sub_100001540(a1);
    }

    return 0;
  }

  else
  {
    sub_10003E5FC("%s:%d: obj is NULL or not apfs object!", "apfs_release_objects", 333);
    return 22;
  }
}

uint64_t sub_100018590(uint64_t a1)
{
  *(a1 + 32) = 1112756289;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 116) = 0x4000000200000002;
  *(a1 + 124) = 1073741826;
  *(a1 + 1040) = vdup_n_s32(0x40000002u);
  *(a1 + 1068) = 2;
  *(a1 + 1104) = 2;
  return 0;
}

uint64_t sub_1000185E0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000194A4(a1, *(v2 + 116));
  if (v3)
  {
    return v3;
  }

  v3 = sub_1000194A4(a1, *(v2 + 120));
  if (v3)
  {
    return v3;
  }

  v3 = sub_1000194A4(a1, *(v2 + 124));
  if (v3)
  {
    return v3;
  }

  v6 = *(v2 + 56);
  if ((v6 & 0x20) != 0)
  {
    v3 = sub_1000194A4(a1, *(v2 + 1040));
    if (v3)
    {
      return v3;
    }

    v6 = *(v2 + 56);
  }

  if ((v6 & 0x40) != 0)
  {
    v3 = sub_1000194A4(a1, *(v2 + 1044));
    if (v3)
    {
      return v3;
    }
  }

  v3 = sub_1000193EC(a1 + 3296, "apfs-stream-id-lock", 0x100u);
  if (v3)
  {
    return v3;
  }

  v7 = sub_1000193EC(a1 + 3432, "apfs-dir-stats-id-lock", 0x10u);
  if (v7)
  {
    v4 = v7;
LABEL_16:
    sub_100019458(a1 + 3296);
    return v4;
  }

  v8 = sub_100032574(a1 + 3648, 0x20u);
  if (v8)
  {
    v4 = v8;
    sub_100019458(a1 + 3432);
    goto LABEL_16;
  }

  *(a1 + 376) = v2;
  *(a1 + 392) = *(*a1 + 392);
  sub_10003E3BC((a1 + 1216));
  sub_10003E3BC((a1 + 1280));
  sub_10003E3BC((a1 + 1344));
  sub_10003E3BC((a1 + 1408));
  sub_10003E3BC((a1 + 1472));
  sub_10003E3BC((a1 + 1664));
  sub_10003E3BC((a1 + 1536));
  sub_10003E3BC((a1 + 1600));
  sub_10003E3BC((a1 + 1152));
  sub_10003E3BC((a1 + 3232));
  sub_10003E3BC((a1 + 1728));
  sub_10003E3BC((a1 + 3952));
  sub_10003E3C8((a1 + 1792));
  sub_10003E3C8((a1 + 3008));
  sub_10003E3C8((a1 + 1992));
  sub_1000181FC(a1 + 3832, 0xE10u, 0x18u);
  sub_1000183A4(a1);
  *(a1 + 600) = 0;
  if ((*(*(a1 + 376) + 57) & 1) != 0 && (sub_10003D930(a1) & 1) == 0)
  {
    *(a1 + 696) = 1;
  }

  sub_10003E3BC((a1 + 4072));
  sub_10003E3D4((a1 + 4136));
  return 0;
}

uint64_t sub_100018830(uint64_t a1)
{
  v2 = *(a1 + 3632);
  if (v2 && !*(*a1 + 940))
  {
    sub_100046D50(v2);
  }

  sub_100019458(a1 + 3432);
  sub_100019458(a1 + 3296);
  sub_10001829C(a1 + 3832);
  j__pthread_rwlock_destroy((a1 + 2808));
  j__pthread_rwlock_destroy((a1 + 2600));
  j__pthread_rwlock_destroy((a1 + 2400));
  j__pthread_rwlock_destroy((a1 + 2192));
  j__pthread_rwlock_destroy((a1 + 1992));
  j__pthread_rwlock_destroy((a1 + 3008));
  j__pthread_rwlock_destroy((a1 + 1792));
  j__pthread_mutex_destroy((a1 + 3232));
  j__pthread_mutex_destroy((a1 + 1152));
  j__pthread_mutex_destroy((a1 + 1216));
  j__pthread_mutex_destroy((a1 + 1536));
  j__pthread_mutex_destroy((a1 + 1600));
  j__pthread_mutex_destroy((a1 + 1408));
  j__pthread_mutex_destroy((a1 + 1472));
  j__pthread_mutex_destroy((a1 + 1664));
  j__pthread_mutex_destroy((a1 + 1280));
  j__pthread_mutex_destroy((a1 + 1344));
  j__pthread_mutex_destroy((a1 + 1728));
  j__pthread_mutex_destroy((a1 + 3952));
  sub_10003266C(a1 + 3648);
  j__pthread_mutex_destroy((a1 + 4072));
  sub_10003E3DC((a1 + 4136));
  return 0;
}

uint64_t sub_100018938(uint64_t a1, char a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  v24 = 0;
  if (a4 < 0x14)
  {
    return 28;
  }

  v8 = *(a3 + 16);
  if (v8 >= 5)
  {
    sub_10003E5FC("%s:%d: %s bogus phase, %u\n", "apfs_reap", 637, (a1 + 4040), v8);
    return 5;
  }

  v11 = sub_10004B964(a1, 0, a5);
  if (v11)
  {
    v5 = v11;
    sub_10003E5FC("%s:%d: %s failed to modify the apfs_t before reaping (error %d).\n", "apfs_reap", 643, (a1 + 4040), v11);
    return v5;
  }

  if (a2)
  {
    sub_10005DF34(*(a1 + 392), a1, a5);
    sub_100049B88(a1, a5);
    return 0;
  }

  v5 = 0;
  v12 = *(a3 + 16);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        return v5;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return v5;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    v13 = sub_1000194DC(a1, a5, &v24, a3);
    if (v13)
    {
      return v13;
    }

    *a3 = 0;
    *(a3 + 16) = 2;
  }

  v13 = sub_10001969C(a1, a5, *(*(a1 + 376) + 144), &v24, a3);
  if (v13)
  {
    return v13;
  }

  v14 = *(a1 + 376);
  v15 = *(v14 + 224);
  if (*(v14 + 232) != v15)
  {
    sub_10003E5FC("%s:%d: %s freed != alloced (%llu freed, %llu alloced)\n", "apfs_reap", 677, (a1 + 4040), *(v14 + 232), v15);
    v14 = *(a1 + 376);
  }

  v16 = *(v14 + 56);
  if ((v16 & 0x20) != 0)
  {
    v17 = sub_10003E1CC(a1, *(v14 + 1040), 5, a5, 0, 0);
    if (v17)
    {
      v5 = v17;
      strerror(v17);
      sub_10003E5FC("%s:%d: %s supplemental_tree_destroy(fext_tree) failed: %d (%s)\n");
      return v5;
    }

    v14 = *(a1 + 376);
    v16 = *(v14 + 56);
  }

  if ((v16 & 0x40) != 0)
  {
    v18 = sub_10003E1CC(a1, *(v14 + 1044), 6, a5, 0, 0);
    if (v18)
    {
      v5 = v18;
      strerror(v18);
      sub_10003E5FC("%s:%d: %s supplemental_tree_destroy(pfkur_tree) failed: %d (%s)\n");
      return v5;
    }
  }

  *(a3 + 16) = 3;
LABEL_31:
  sub_100047D2C(*(*(a1 + 392) + 392), a1);
  v19 = *(a1 + 3568);
  if (v19)
  {
    sub_100046D50(v19);
    *(a1 + 3568) = 0;
  }

  v20 = *(a1 + 3616);
  if (v20)
  {
    sub_100046D50(v20);
    *(a1 + 3616) = 0;
  }

  v21 = *(a1 + 3576);
  if (v21)
  {
    sub_100046D50(v21);
    *(a1 + 3576) = 0;
  }

  v5 = sub_10004EC68(a1, *(*(a1 + 376) + 128), a5, 0);
  if (v5)
  {
    sub_10003E5FC("%s:%d: %s omap_destroy returned %d!\n");
  }

  else
  {
    v22 = *(a1 + 376);
    *(v22 + 976) = 0;
    *(v22 + 1032) = 0;
    *(v22 + 1048) = 0;
    *(v22 + 1096) = 0;
    *(v22 + 1112) = 0;
    *(v22 + 128) = 0u;
    *(v22 + 144) = 0u;
    *(v22 + 1072) = 0u;
    sub_10003728C(a1, a5);
    *(a3 + 16) = 4;
  }

  return v5;
}

uint64_t sub_100018C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(*(a3 + 376) + 128);
  if (!v5)
  {
    goto LABEL_13;
  }

  v9 = sub_100049EE0(*(a1 + 392), 0x40000000, v5, &xmmword_100081418, 0, a3, 0, 0, &v15);
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 400);
    if (!v11 || !*(v11 + 76))
    {
      sub_10003E5FC("%s:%d: %s failed to get omap %lld: %d\n");
    }

    return v10;
  }

  v10 = sub_10004EFF0(a3, a2, v15, a4);
  v12 = v15[2];
  sub_100046D50(v15);
  if (!v10)
  {
    if ((v12 & 0x4000000000) == 0)
    {
      return 0;
    }

LABEL_13:
    sub_10004C3BC(a3, 1);
    return 0;
  }

  v13 = *(a1 + 400);
  if (!v13 || !*(v13 + 76))
  {
    sub_10003E5FC("%s:%d: %s omap checkpoint traverse (op %d) failed: %d\n");
  }

  return v10;
}

uint64_t sub_100018DC4(uint64_t a1)
{
  v1 = *(a1 + 504);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(*(v1 + 376) + 264) & 0x109;
  if (v2 <= 7)
  {
    return v2 == 0;
  }

  if (v2 == 8)
  {
    return 2;
  }

  return 3;
}

uint64_t sub_100018E14(uint64_t a1, int *a2)
{
  result = 0;
  if (*(a1 + 504))
  {
    a1 = *(a1 + 504);
  }

  v4 = *(*(a1 + 376) + 264) & 0x109;
  if (v4 <= 7)
  {
    if (v4)
    {
      v5 = 0;
      if (v4 != 1)
      {
        return result;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_12:
    *a2 = v5;
    return 1;
  }

  if (v4 == 8)
  {
    v5 = 2;
    goto LABEL_12;
  }

  if (v4 == 256)
  {
    v5 = 3;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100018E84(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t **a5)
{
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  v10 = *(v9 + 376);
  v11 = *(v10 + 116);
  v12 = *(v10 + 136);
  memset(&v14[2], 0, 64);
  v14[0] = *off_100084BC0;
  v14[1] = unk_100084BD0;
  if ((*(v10 + 56) & 0x20) == 0 || (result = sub_10000158C(a1, v14), !result))
  {
    if (v11 == 2)
    {
      return sub_10002462C(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, v14, a4, a5);
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t sub_100018FAC(uint64_t a1)
{
  if (*(*(a1 + 376) + 57))
  {
    return sub_10003D930(a1) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018FE0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t **a5)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  if ((*(*(a1 + 376) + 57) & 1) == 0)
  {
    return 45;
  }

  v10 = *(v5 + 376);
  v11 = *(v10 + 1104);
  v12 = *(v10 + 1096);
  if (sub_10003D930(a1))
  {
    return 45;
  }

  if (v11 != 2)
  {
    return 22;
  }

  return sub_10002462C(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, off_100084C20, a4, a5);
}

uint64_t sub_1000190D0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t **a4)
{
  if (*(*(a1 + 376) + 120) == 2)
  {
    return sub_10002462C(a1, *(*(a1 + 376) + 120) & 0xFFFF0000, a2, 0, a3 != 0, &off_100084C80, a3, a4);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100019114(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  v3 = *(a1 + 376);
  if (*(v3 + 124) == 2)
  {
    return sub_10002462C(a1, *(v3 + 124) & 0xFFFF0000, *(v3 + 152), 0, a2 != 0, &off_100084CE0, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100019158(uint64_t a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t **a6)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  v7 = *(v6 + 376);
  if (*(v7 + 1068) != 2)
  {
    return 22;
  }

  v8 = 1072;
  if (a2)
  {
    v8 = 1080;
  }

  return sub_10002462C(a1, *(v7 + 1068) & 0xFFFF0000, *(v7 + v8), a4, a5 != 0, off_100084D40, a5, a6);
}

uint64_t sub_1000191F0(uint64_t a1)
{
  v1 = *(*(a1 + 376) + 964);
  result = 1;
  if (v1 > 63)
  {
    if (v1 != 64 && v1 != 576)
    {
      return 0;
    }
  }

  else
  {
    if (v1)
    {
      v3 = v1 == 2;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001922C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = 0;
  v7 = *(a1 + 376);
  v8 = *(v7 + 964);
  if (v8 > 0x3F)
  {
    if (v8 != 576 && v8 != 64)
    {
      return v6;
    }

LABEL_9:
    if (!*(v7 + 1072))
    {
      if ((a3 & 1) == 0)
      {
        pthread_mutex_lock((a1 + 1664));
        v7 = *(a1 + 376);
        if (*(v7 + 1072))
        {
          goto LABEL_15;
        }
      }

      v13 = 0xAAAAAAAAAAAAAAAALL;
      *(v7 + 1068) = 2;
      v10 = sub_100010BC4(a1, a2, &v13);
      if (v10)
      {
        v6 = v10;
        sub_10003E5FC("%s:%d: %s failed to create doc-id tree, error %d\n", "apfs_create_doc_id_tree_if_needed", 1553, (a1 + 4040), v10);
        pthread_mutex_unlock((a1 + 1664));
        return v6;
      }

      v11 = v13;
      *(*(a1 + 376) + 1072) = v13;
      sub_10003E50C("%s:%d: %s created doc-id tree, oid %llu\n", "apfs_create_doc_id_tree_if_needed", 1558, (a1 + 4040), v11);
      if ((a3 & 1) == 0)
      {
LABEL_15:
        pthread_mutex_unlock((a1 + 1664));
      }
    }

    return 0;
  }

  if (*(v7 + 964))
  {
    v9 = v8 == 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_9;
  }

  return v6;
}

uint64_t sub_100019354(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t **a5)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  v8 = *(*(v7 + 376) + 1112);
  memset(&v10[2], 0, 64);
  v10[0] = off_100084DA0;
  v10[1] = unk_100084DB0;
  return sub_10002462C(a1, 0, v8, a3, a4 != 0, v10, a4, a5);
}

uint64_t sub_1000193EC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 120) = a3;
  v4 = sub_10003FA58(a3, 0x10uLL, 0x10200405730B0C9uLL);
  *(a1 + 112) = v4;
  if (!v4)
  {
    return 12;
  }

  sub_10003E3BC(a1);
  sub_10003E3D4((a1 + 64));
  return 0;
}

void sub_100019458(uint64_t a1)
{
  sub_10003E3DC((a1 + 64));
  j__pthread_mutex_destroy(a1);
  v2 = *(a1 + 112);
  v3 = 16 * *(a1 + 120);

  sub_10003FB5C(v2, v3);
}

uint64_t sub_1000194A4(uint64_t a1, int a2)
{
  if ((a2 | 0x40000000u) >> 30 == 1 && a2 == 2)
  {
    return 0;
  }

  else
  {
    return sub_1000048F4(*(*a1 + 392));
  }
}

uint64_t sub_1000194DC(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17 = 0;
  v18 = 0;
  v8 = a4[1];
  if (v8)
  {
    while (1)
    {
LABEL_2:
      v9 = sub_100001DA0(a1, v8, &v18);
      if (v9)
      {
        v14 = v9;
        sub_10003E5FC("%s:%d: %s Couldn't find snapshot metadata for xid %llu\n");
        return v14;
      }

      v10 = v18;
      v11 = *(v18 + 2);
      if (v11)
      {
        v12 = sub_10001969C(a1, a2, v11, a3, a4);
        if (v12)
        {
          return v12;
        }

        v10 = v18;
      }

      sub_10000207C(a1, 5, *(v10 + 3), a2, 0);
      sub_10000207C(a1, 6, *(v18 + 3), a2, 0);
      sub_100001FFC(a1, *(v18 + 3), a2);
      v13 = sub_10004FB80(a1, a4[1], &v17);
      if (v13)
      {
        break;
      }

      v8 = v17;
      *a4 = 0;
      a4[1] = v8;
    }

    v14 = v13;
    if (v13 == 2)
    {
      goto LABEL_13;
    }

    sub_10003E5FC("%s:%d: %s lookup_next_snapshot() returned %d\n", "apfs_reap_snapshots", 615, (a1 + 4040), v13);
  }

  else
  {
    v15 = sub_10004FB80(a1, 0, &v17);
    if (!v15)
    {
      v8 = v17;
      a4[1] = v17;
      goto LABEL_2;
    }

    v14 = v15;
    if (v15 == 2)
    {
LABEL_13:
      sub_100002168(a1, a2, 0);
      return 0;
    }

    else
    {
      sub_10003E5FC("%s:%d: %s Hit %d looking up first snapshot\n");
    }
  }

  return v14;
}

uint64_t sub_10001969C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v10;
  v24[3] = v10;
  v24[0] = v10;
  v24[1] = v10;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0;
  memset(v21, 170, 20);
  v11 = sub_1000190D0(a1, a3, 0, &v23);
  if (v11)
  {
    v12 = v11;
    sub_10003E5FC("%s:%d: apfs_get_extentref_tree(oid=%llu) returned %d\n", "apfs_reap_extentref_blocks", 510, a3, v11);
  }

  else
  {
    v22 = *a5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    sub_1000236D0(v24, v23, 0, 4, &v22, 8, 8u, v21, 0x14u, 0);
    if ((v13 & 0xFFFFFFFD) != 0)
    {
      v12 = v13;
      sub_10003E5FC("%s:%d: %s tree_iter_init() returned %d\n", "apfs_reap_extentref_blocks", 520, (a1 + 4040), v13);
    }

    else
    {
      while (1)
      {
        if (sub_100023848(v24))
        {
          sub_100025B30(v23, a2, 0);
          v12 = 0;
          goto LABEL_5;
        }

        v15 = v22 & 0xFFFFFFFFFFFFFFFLL;
        *a5 = v22 & 0xFFFFFFFFFFFFFFFLL;
        if (v21[0] >> 60 == 1 && v21[1] <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = v21[0] & 0xFFFFFFFFFFFFFFFLL;
          if ((v21[0] & 0xFFFFFFFFFFFFFFFLL) != 0)
          {
            if (sub_10003D878(a1, a2, v15, v21[0] & 0xFFFFFFFFFFFFFFFLL))
            {
              sub_10003E5FC("%s:%d: %s extent at lba %llu len %llu couldn't be freed: %d\n");
            }
          }

          else
          {
            sub_10003E5FC("%s:%d: %s found bogus 0-length extent at lba %llu, ignoring\n");
          }

          v18 = *a4 + v17;
          *a4 = v18;
          if (v18 > 0x4000)
          {
            break;
          }
        }

        v19 = sub_100023864(v24);
        if ((v19 & 0xFFFFFFFD) != 0)
        {
          v20 = v19;
          sub_10003E5FC("%s:%d: %s iter_next returned %d\n", "apfs_reap_extentref_blocks", 552, (a1 + 4040), v19);
          v12 = v20;
          goto LABEL_5;
        }
      }

      v12 = 36;
    }
  }

LABEL_5:
  if (v23)
  {
    sub_100046D50(v23);
  }

  return v12;
}

BOOL sub_1000198C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  if (a3 >= 64)
  {
    v6 = (a1 + 8 * v4 + 8);
    while (-1 << v5 <= (*(v6 - 1) & (-1 << v5)) && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> -v5) & ~*v6) == 0))
    {
      ++v4;
      v7 = a3 - 64;
      ++v6;
      v8 = a3 <= 127;
      a3 -= 64;
      if (v8)
      {
        if (v7)
        {
          goto LABEL_14;
        }

        return 1;
      }
    }

    return 0;
  }

  v7 = a3;
  if (!a3)
  {
    return 1;
  }

LABEL_14:
  v9 = 64 - v5;
  v10 = ~(-1 << v7);
  v11 = v10 << v5;
  v12 = v10 >> (64 - v5);
  if (!v5)
  {
    v12 = 0;
  }

  v13 = (a1 + 8 * v4);
  return (v11 & ~((-1 << v5) & *v13)) == 0 && (v7 <= v9 || !v12 || (v12 & ~((0xFFFFFFFFFFFFFFFFLL >> v9) & v13[1])) == 0);
}

uint64_t sub_1000199B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 >= 64)
  {
    v7 = (a1 + 8 * v4 + 8);
    while (((-1 << v5) & *(v7 - 1)) == 0 && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> v6) & *v7) == 0))
    {
      ++v4;
      v8 = a3 - 64;
      ++v7;
      v9 = a3 <= 127;
      a3 -= 64;
      if (v9)
      {
        if (v8)
        {
          goto LABEL_11;
        }

        return 1;
      }
    }

    return 0;
  }

  v8 = a3;
  if (a3)
  {
LABEL_11:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (a1 + 8 * v4);
    if ((v11 & (-1 << v5) & *v13) != 0 || v8 > v6 && v12 && ((0xFFFFFFFFFFFFFFFFLL >> v6) & v12 & v13[1]) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100019AA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) = *(v7 - 1) & ~(-1 << v5) | (-1 << v5);
    if (v5)
    {
      *v7 |= 0xFFFFFFFFFFFFFFFFLL >> v6;
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_10:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (result + 8 * v4);
    *v13 = *v13 & ~v11 | v11 & (-1 << v5);
    if (v8 > v6)
    {
      if (v12)
      {
        v13[1] = v13[1] & ~v12 | v12 & (0xFFFFFFFFFFFFFFFFLL >> v6);
      }
    }
  }

  return result;
}

uint64_t sub_100019B9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) &= ~(-1 << v5);
    if (v5)
    {
      *v7 &= ~(0xFFFFFFFFFFFFFFFFLL >> v6);
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_13:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (v5)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = (result + 8 * v4);
    *v14 &= ~v11;
    if (v8 > v6)
    {
      if (v13)
      {
        v14[1] &= ~v13;
      }
    }
  }

  return result;
}

uint64_t sub_100019C6C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 < 1)
  {
    return 0;
  }

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  v6 = (a2 + 8 * (a3 / 64));
  while (1)
  {
    v7 = a3 & 0x3F;
    if (a3 <= 0)
    {
      v7 = -(-a3 & 0x3F);
    }

    v8 = 64 - v7;
    v10 = *v6++;
    v9 = v10;
    if (64 - v7 >= a4)
    {
      v8 = a4;
    }

    v11 = __clz(__rbit64((v9 >> v7) ^ v5));
    if (v8 > v11)
    {
      break;
    }

    a3 += v8;
    v12 = a4 <= v8;
    a4 -= v8;
    if (v12)
    {
      return 0;
    }
  }

  *a5 = v11 + a3;
  return 1;
}

uint64_t sub_100019CF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 1)
  {
    return 0;
  }

  v4 = a3 + a2;
  v5 = a3 + a2 - 1;
  if (a3 + a2 < 1)
  {
    v5 = a3 + a2 + 62;
  }

  v6 = (a1 + 8 * (v5 >> 6));
  while (1)
  {
    if (v4 <= 0)
    {
      v7 = -(-v4 & 0x3F);
    }

    else
    {
      v7 = v4 & 0x3F;
    }

    v8 = 64 - v7;
    if (!v7)
    {
      v7 = 64;
      v8 = 0;
    }

    if (v7 >= a3)
    {
      v7 = a3;
    }

    v9 = *v6--;
    v10 = __clz(v9 << v8);
    if (v7 > v10)
    {
      break;
    }

    v4 -= v7;
    v11 = a3 <= v7;
    a3 -= v7;
    if (v11)
    {
      return 0;
    }
  }

  *a4 = v4 + ~v10;
  return 1;
}

BOOL sub_100019D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v12 = 0;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v34 = a4 - 1;
  v13 = -1;
  while (1)
  {
    if (v12 >= a2)
    {
      goto LABEL_40;
    }

    v14 = a4 - a3;
    if (a4 - a3 < 1)
    {
      goto LABEL_40;
    }

    v15 = 8 * (a3 / 64);
    while (1)
    {
      v16 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v16 = -(-a3 & 0x3F);
      }

      v17 = 64 - v16;
      if (64 - v16 >= v14)
      {
        v17 = v14;
      }

      v18 = __clz(__rbit64(~(*(a1 + v15) >> v16)));
      if (v17 > v18)
      {
        break;
      }

      a3 += v17;
      v15 += 8;
      v19 = v14 <= v17;
      v14 -= v17;
      if (v19)
      {
        goto LABEL_40;
      }
    }

    v20 = v18 + a3;
    if ((v18 + a3) >= a4 - v12)
    {
LABEL_40:
      v20 = v13;
      goto LABEL_41;
    }

    if (!v12)
    {
      v13 = v18 + a3;
      v12 = 1;
      if (v20 >= v34)
      {
        break;
      }
    }

    v35 = a7;
    v21 = v12 + 1;
    if (v12 + 1 < a4 - v20)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = a4 - v20;
    }

    if (sub_100019CF0(a1, v20, v22, &v36))
    {
      v23 = v36;
      v20 = v13;
    }

    else
    {
      v24 = a2 - v21;
      if (a2 == v21)
      {
        v12 = a2;
        goto LABEL_41;
      }

      v25 = v21 + v20;
      if (v24 >= a4 - (v21 + v20))
      {
        v24 = a4 - (v21 + v20);
      }

      if (v24 < 1)
      {
LABEL_35:
        v12 = v24 + v21;
      }

      else
      {
        v26 = v25 + 63;
        if (v25 >= 0)
        {
          v26 = v21 + v20;
        }

        v27 = (a1 + 8 * (v26 >> 6));
        v28 = v24;
        while (1)
        {
          v29 = v25 & 0x3F;
          if (v25 <= 0)
          {
            v29 = -(-v25 & 0x3F);
          }

          v30 = 64 - v29;
          if (64 - v29 >= v28)
          {
            v30 = v28;
          }

          v31 = *v27++;
          v32 = __clz(__rbit64(v31 >> v29));
          if (v30 > v32)
          {
            break;
          }

          v25 += v30;
          v19 = v28 <= v30;
          v28 -= v30;
          if (v19)
          {
            goto LABEL_35;
          }
        }

        v12 = v32 + v25 - v20;
      }

      v23 = v12 + v20;
      v36 = v12 + v20;
      v13 = v20;
    }

    a7 = v35;
    a3 = v23 + 1;
    if (v35)
    {
      goto LABEL_41;
    }
  }

  v12 = 1;
LABEL_41:
  *a5 = v20;
  *a6 = v12;
  return v12 == a2;
}

unint64_t sub_100019F94(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    v8 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
    }

    v9 = (a1 + 8 * (a3 / 64));
    while (1)
    {
      v10 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v10 = -(-a3 & 0x3F);
      }

      v11 = 64 - v10;
      v13 = *v9++;
      v12 = v13;
      if (64 - v10 >= v8)
      {
        v11 = v8;
      }

      v14 = __clz(__rbit64((v12 >> v10) ^ v6));
      if (v11 > v14)
      {
        break;
      }

      a3 += v11;
      v15 = v8 <= v11;
      v8 -= v11;
      if (v15)
      {
        return result;
      }
    }

    v16 = v14 + a3;
    v17 = a4 - (v14 + a3);
    if (v17 < 1)
    {
      return result - v16 + a4;
    }

    v18 = v16 + 63;
    if (v16 >= 0)
    {
      v18 = v14 + a3;
    }

    v19 = (a1 + 8 * (v18 >> 6));
    v20 = v14 + a3;
    while (1)
    {
      v21 = v20 & 0x3F;
      if (v20 <= 0)
      {
        v21 = -(-v20 & 0x3F);
      }

      v22 = 64 - v21;
      v24 = *v19++;
      v23 = v24;
      if (64 - v21 >= v17)
      {
        v22 = v17;
      }

      v25 = __clz(__rbit64((v23 >> v21) ^ v7));
      if (v22 > v25)
      {
        break;
      }

      v20 += v22;
      v15 = v17 <= v22;
      v17 -= v22;
      if (v15)
      {
        return result - v16 + a4;
      }
    }

    a3 = v25 + v20;
    result = result - v16 + v25 + v20;
  }

  while ((v25 + v20) < a4);
  return result;
}

uint64_t sub_10001A0B8(char a1, __int16 a2, int a3, int a4)
{
  if (a3 && a4)
  {
    v4 = (a3 + 7) & 0xFFF8;
    if ((a1 & 0x40) != 0)
    {
      v4 = a3;
    }

    v5 = (a4 + 7) & 0xFFF8;
    if ((a1 & 0x40) != 0)
    {
      v5 = a4;
    }

    return (v5 + v4);
  }

  else
  {
    v6 = a2 - 160;
    if (a4)
    {
      v7 = (v6 >> 2) - 72;
      if ((a3 - 1) < v7)
      {
        v7 = a3;
      }

      if ((a1 & 0x40) == 0)
      {
        v7 = (v7 + 7) & 0xFFF8;
      }

      v8 = (a4 + 7) & 0xFFF8;
      if ((a1 & 0x40) != 0)
      {
        v8 = a4;
      }

      return (v7 + v8);
    }
  }

  return v6;
}

uint64_t sub_10001A12C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 400);
  v5 = (v4 >> 9) & 0x3FFF;
  if (v5)
  {
    v6 = v5 == a2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return 22;
  }

  v8 = !(v4 >> 23) || (v4 >> 23) == a3;
  if (!v8 && (a3 != 65534 && a3 || (v4 & 4) == 0))
  {
    return 22;
  }

  v9 = (v4 >> 27) & 0x1F000;
  if (!v5 && a2 > (((v9 - 160) >> 2) - 72))
  {
    return 22;
  }

  if (a3 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = sub_10001A0B8(v4, v9, v5, (v4 >> 23));
  v13 = (a2 + 7) & 0xFFFFFFF8;
  if ((v4 & 0x40) != 0)
  {
    v13 = a2;
  }

  v14 = (v11 + 7) & 0xFFFFFFF8;
  if ((v4 & 0x40) != 0)
  {
    v14 = v11;
  }

  if (v13 + v14 <= v12)
  {
    return 0;
  }

  else
  {
    return 34;
  }
}

uint64_t sub_10001A200(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = sub_100048054(a1);
  v6 = v5;
  v7 = *(v4 + 32);
  if ((v7 & 4) != 0)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  if (a2)
  {
    v9 = *(a2 + 8);
    v10 = (v9 >> 27) & 0x1F000;
    v11 = v5 != v10;
    v12 = *(a2 + 6);
    if (v12 != 61455)
    {
      v14 = v5 == v10 ? 1 : 2;
      if (*(v4 + 34) != v12)
      {
        v11 = v14;
      }
    }

    if (((v9 >> 7) & 1) != ((v7 >> 3) & 1))
    {
      ++v11;
    }

    if (((v9 >> 8) & 1) == ((v7 >> 4) & 1))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v5 % *(*(*(*a1 + 392) + 376) + 36))
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = sub_100046328(a1);
  v18 = *(v4 + 32);
  if (v17 != 2)
  {
    if ((v18 & 0x10) == 0 && *(v4 + 24) != 3)
    {
      ++v16;
    }

    if (v18)
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = v16;
    }

    if ((v18 & 2) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    if (*(v4 + 34))
    {
      ++v19;
    }

    goto LABEL_37;
  }

  if ((v18 & 0x10) == 0 && *(v4 + 24) != 2)
  {
    ++v16;
  }

  if ((v18 & 1) == 0)
  {
    v19 = v16 + 1;
    if ((v18 & 2) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v38 = v4 + v6;
  v40 = *(v38 - 32);
  if (v6 <= 0x10000 && *(v38 - 36) == v6)
  {
    v42 = v16;
  }

  else
  {
    v42 = v16 + 1;
  }

  if (v40 > (((v6 - 160) >> 2) - 72))
  {
    ++v42;
  }

  if (v6 - (v40 + v8) - 96 > *(v38 - 28))
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 + 1;
  }

  v39 = (v38 - 40);
  v44 = vld1_dup_f32(v39);
  v45 = veor_s8(vceqz_s32(vand_s8(v44, 0x8000000100)), vceqz_s32(vand_s8(vdup_n_s32(v18), 0x800000010)));
  v19 = v43 - v45.i8[4] - v45.i8[0];
  if ((v18 & 2) != 0)
  {
    goto LABEL_35;
  }

LABEL_37:
  if (v18)
  {
    v20 = -96;
  }

  else
  {
    v20 = -56;
  }

  v21 = v20 + v6;
  if (*(v4 + 40))
  {
    ++v19;
  }

  v22 = *(v4 + 42);
  if (v21 < v22)
  {
    ++v19;
  }

  if (((v8 - 1) & v22) != 0)
  {
    ++v19;
  }

  if ((v7 & 4) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  if (*(v4 + 36) > v22 >> v23)
  {
    ++v19;
  }

  v24 = v21 - v22;
  v25 = *(v4 + 44);
  v26 = v24 >= v25;
  v27 = v24 - v25;
  if (!v26)
  {
    ++v19;
  }

  if (!(v19 | (v27 < *(v4 + 46))))
  {
    return 0;
  }

  v28 = *(*a1 + 392);
  if (v28)
  {
    v29 = sub_10003FC54(v28);
    v30 = *(*(*a1 + 392) + 384) + 212;
    sub_100046328(a1);
    sub_100048044(a1);
    sub_100047D10(a1);
    sub_10003E64C(v29, "%s:%d: %s BT node sanity check failed for node type %u subtype %u oid %llu with mask 0x%x!\n", v31, v32, v33, v34, v35, v36, "btree_node_sanity_check");
    v28 = *(*a1 + 392);
  }

  return sub_1000048F4(v28);
}

uint64_t sub_10001A5BC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *(a3 + 4);
  v4 = v3 & 0x1B;
  *(a1 + 32) = v4;
  *(a1 + 34) = *(a3 + 6);
  v5 = *(a3 + 8);
  if (((v5 >> 27) & 0x1F000) != a2)
  {
    return 22;
  }

  v6 = a2 - 56;
  v7 = (v5 >> 9) & 0x3FFF;
  v8 = (HIBYTE(v5) & 0x7F) + 8;
  v9 = (v5 >> 23);
  if ((v3 & 2) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  LOWORD(v11) = 64;
  if (v7 && v10)
  {
    v4 |= 4u;
    *(a1 + 32) = v4;
    v11 = (4 * (v6 / (v7 + v10 + 4))) & 0xFFFFFFF8;
  }

  v12 = 0;
  *(a1 + 40) = 0;
  *(a1 + 42) = v11;
  *(a1 + 44) = 0;
  if (v4)
  {
    LOWORD(v6) = a2 - 96;
  }

  *(a1 + 46) = v6 - v11;
  *(a1 + 48) = 0xFFFF0000FFFFLL;
  if (v4)
  {
    v12 = 0;
    v13 = (a1 + (a2 - 96));
    v13[14] = *(a3 + 8) & 0x1FF;
    v13[15] = a2;
    v13[16] = (*(a3 + 8) >> 9) & 0x3FFF;
    v13[17] = (*(a3 + 8) >> 23);
  }

  return v12;
}

uint64_t sub_10001A6AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1[7] + 32);
  if ((v5 & 8) != 0)
  {
    return 45;
  }

  v8 = a1[1];
  if (v8)
  {
    v9 = sub_10004B964(a1[1], 0, a5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[1];
      if (v11)
      {
        v12 = (v11 + 4040);
      }

      else
      {
        v12 = (*(*(*a1 + 392) + 384) + 212);
      }

      v15 = sub_100047D10(v8);
      sub_10003E5FC("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "btree_node_reap", 399, v12, v15, v10);
    }

    if ((*(a1[7] + 32) & 2) != 0)
    {
      goto LABEL_34;
    }

    v14 = sub_100047D10(v8);
    goto LABEL_13;
  }

  if ((v5 & 2) == 0)
  {
    v14 = 0;
LABEL_13:
    v16 = sub_100046320(a1);
    if (((*(a1[7] + 36) - 1) & 0x8000) == 0)
    {
      v17 = v16 & 0xFFFF0000 | 3;
      v18 = (*(a1[7] + 36) - 1);
      do
      {
        v27 = 0;
        if (sub_10001B164(a1, v18, &v27))
        {
          if (!a1[1])
          {
            v22 = *(*(*a1 + 392) + 384) + 212;
          }

          sub_100047D10(a1);
          sub_10003E5FC("%s:%d: %s error getting oid for child %d of 0x%llx: %d\n");
        }

        else
        {
          v19 = *a1;
          if (*(a1[7] + 34) < 2u)
          {
            v24 = sub_100048054(a1);
            if (sub_100049BE0(v19, v17, v24, v14, v27, a5))
            {
              if (!a1[1])
              {
                v26 = *(*(*a1 + 392) + 384) + 212;
              }

              sub_10003E5FC("%s:%d: %s error deleting child 0x%llx type 0x%x: %d\n");
            }
          }

          else
          {
            v20 = *(v19 + 392);
            v21 = sub_100048054(a1);
            if (sub_100041700(v20, v17, v21, v14, v27, a5, 0))
            {
              if (!a1[1])
              {
                v25 = *(*(*a1 + 392) + 384) + 212;
              }

              sub_10003E5FC("%s:%d: %s error adding child 0x%llx type 0x%x to reap list: %d\n");
            }
          }
        }
      }

      while (v18-- > 0);
    }
  }

LABEL_34:
  sub_100049B88(a1, a5);
  return 0;
}

uint64_t sub_10001A958(void *a1, void *a2, uint64_t a3, unsigned int a4, __int16 a5, uint64_t a6, void *a7)
{
  v14 = a1[50];
  if ((v14 & 0x4000000000000000) != 0)
  {
    v15 = 96;
  }

  else
  {
    v15 = (HIBYTE(v14) & 0x3F) + 32;
  }

  __chkstk_darwin();
  v17 = v30 - v16;
  bzero(v30 - v16, v15);
  v31 = 0;
  v30[3] = 448;
  v18 = sub_10004804C(a1) & 0xFC00;
  *v17 = 25987;
  *(v17 + 1) = v15;
  *(v17 + 8) = *(a1 + 25);
  *(v17 + 3) = a1[52];
  v19 = a1[50];
  if ((v19 & 0x80) != 0)
  {
    if ((v19 & 0x4000000000000000) != 0)
    {
      v20 = 64;
    }

    else
    {
      v20 = HIBYTE(v19) & 0x3F;
    }

    memcpy(v17 + 32, a2 + 1, v20);
  }

  *(v17 + 2) = 0;
  *(v17 + 3) = a5;
  v30[2] = sub_100048054(a1);
  v21 = sub_100046320(a1) & 0xFFFF0000;
  v30[0] = v21 | 3;
  v30[1] = sub_100048044(a1);
  v22 = 3;
  if ((v21 & 0x40000000) == 0)
  {
    v22 = 1;
  }

  if ((a4 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = v18 | v21 | v22;
  if ((a4 & 2) != 0)
  {
    v23 |= 4uLL;
  }

  if ((a4 & 0x40) != 0)
  {
    v24 = 0;
  }

  else
  {
    v24 = v30;
  }

  v25 = sub_100049EE0(*a1, (a4 & 0x180 | (32 * ((a4 >> 2) & 1))) & 0xFFFFFFFEFFFFFFFFLL | ((((a4 & 0x200) >> 9) & 1) << 32) | v23, *a2, v24, v17, a1[1], a3, a6, &v31);
  if (v25)
  {
    v26 = v25;
    v27 = 0;
  }

  else
  {
    v27 = v31;
    if ((a4 & 0x104) == 4 && (*(v31 + 16) & 0x10) != 0)
    {
      if (a4)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      sub_10001AB8C(v31, v28 & ((a4 << 30) >> 31));
      v27 = 0;
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  *a7 = v27;
  return v26;
}

void sub_10001AB8C(uint64_t *a1, char a2)
{
  v3 = a2 & 3;
  if (v3)
  {
    sub_10004BE88(a1, v3);
  }

  sub_100046D50(a1);
}

uint64_t sub_10001ABD0(uint64_t a1)
{
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_10001ABEC(uint64_t a1, int a2)
{
  v2 = *(a1 + 56);
  v3 = v2[16];
  if ((v3 & 4) != 0)
  {
    v5 = *(a1 + 400);
    if ((v5 & 4) != 0)
    {
      if ((v3 & 2) != 0)
      {
        v9 = v5 >> 23;
      }

      else
      {
        LOWORD(v9) = (HIBYTE(v5) & 0x7F) + 8;
      }

      v10 = (((v5 >> 27) & 0x1F000) - 56) / (((v5 >> 9) & 0x3FFF) + v9 + 4);
      v11 = v2[18] + a2;
      if ((v10 & 0xFFFE) >= v11)
      {
        LOWORD(v4) = v10 & 0xFFFE;
      }

      else
      {
        LOWORD(v4) = (v11 + 7) & 0xFFF8;
      }
    }

    else
    {
      v6 = v2[21];
      v7 = (v3 & 4) == 0;
      v8 = 2;
      if (v7)
      {
        v8 = 3;
      }

      return (v6 >> v8);
    }
  }

  else
  {
    v4 = a2 + *(v2 + 9) + 7;
    if (v4 >= 8)
    {
      LOWORD(v4) = v4 & 0xFFF8;
    }

    else
    {
      LOWORD(v4) = 8;
    }
  }

  return v4;
}

uint64_t sub_10001AC90(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 376);
  v3 = (v2 + 4 * a2);
  v4 = (v2 + 8 * a2);
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *v5;
}

uint64_t sub_10001ACB4(uint64_t a1, unsigned int a2)
{
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    return (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    return *(*(a1 + 376) + 8 * a2 + 2);
  }
}

uint64_t sub_10001ACDC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 376);
  v3 = v2 + 4 * a2 + 2;
  v4 = v2 + 8 * a2 + 4;
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *v5;
}