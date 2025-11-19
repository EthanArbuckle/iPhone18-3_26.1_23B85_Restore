uint64_t sub_100000AB0(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        return ccsha3_384_di();
      }

      if (a1 == 8)
      {
        return ccsha3_512_di();
      }

      return result;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return ccsha3_256_di();
      }

      return result;
    }

    return ccsha512_256_di();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return ccsha384_di();
    }

    if (a1 == 4)
    {
      return ccsha512_di();
    }

    return result;
  }

  if (a1 == 1)
  {
    return ccsha256_di();
  }

  if (a1 == 2)
  {
    return ccsha512_256_di();
  }

  return result;
}

uint64_t sub_100000B84(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a2;
  if (a2 && a2 < a3)
  {
    v22 = &v22;
    v11 = 2 * *a1;
    __chkstk_darwin(a1);
    bzero(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    v12 = *(a1 + 8) + *(a1 + 16) + 19;
    __chkstk_darwin(v13);
    v16 = &v22 - v15;
    if (v17 >= 8)
    {
      memset(&v22 - v15, 170, v14);
    }

    ccdigest_init();
    v18 = 2 * (a2 & 0x7FFFFFFF);
    if (v18 > v7)
    {
      goto LABEL_18;
    }

    do
    {
      ccdigest_parallel();
      ccdigest_update();
      v7 -= v18;
      a4 += v18;
    }

    while (v7 >= v18);
    if (v7)
    {
LABEL_18:
      do
      {
        if (v7 >= v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = v7;
        }

        ccdigest();
        ccdigest_update();
        a4 += v19;
        v7 -= v19;
      }

      while (v7);
    }

    (*(a1 + 56))(a1, v16, a5);
    v20 = *(a1 + 8) + *(a1 + 16);
    return cc_clear();
  }

  else
  {

    return ccdigest();
  }
}

void *sub_100000DC8(unsigned __int8 *a1, void *a2, unsigned int a3)
{
  v6 = (2 * a3) | 1;
  bzero(a2, v6);
  if (a3)
  {
    v7 = a3;
    v8 = a2;
    do
    {
      v9 = *a1++;
      v10 = snprintf(v8, v6, "%02hhx", v9);
      v8 += v10;
      v6 -= v10;
      --v7;
    }

    while (v7);
  }

  return a2;
}

uint64_t sub_100000E5C(uint64_t a1)
{
  if ((*(a1 + 21) & 4) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    if ((sub_100046320(a1) & 0x8000000) != 0 || (*(a1 + 17) & 2) != 0)
    {
      LODWORD(v2) = 0;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2)
      {
        LODWORD(v2) = (*(*(v2 + 376) + 56) >> 5) & 1;
      }
    }

    if (*(a1 + 40) == 14)
    {
      v3 = v2 | ((*(*(a1 + 56) + 32) & 8) >> 3);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_100000EE4(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  memset(__s1, 0, sizeof(__s1));
  if (!a2)
  {
    return 22;
  }

  result = sub_100000FF8(a1, __s1, a3, a4);
  if (!result)
  {
    result = memcmp(__s1, a2, a3);
    if (result)
    {
      v11 = -86;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v10[6] = v7;
      v10[7] = v7;
      v10[4] = v7;
      v10[5] = v7;
      v10[2] = v7;
      v10[3] = v7;
      v10[0] = v7;
      v10[1] = v7;
      v9 = -86;
      v8[6] = v7;
      v8[7] = v7;
      v8[4] = v7;
      v8[5] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v8[0] = v7;
      v8[1] = v7;
      sub_100000DC8(a2, v8, a3);
      sub_100000DC8(__s1, v10, a3);
      sub_10003E5FC("%s:%d: hash mismatch! expected: %s, actual: %s\n", "authapfs_validate_node_hash", 204, v8, v10);
      return 80;
    }
  }

  return result;
}

uint64_t sub_100000FF8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 22;
  if (a2 && (*(*(a1 + 56) + 32) & 8) != 0)
  {
    v6 = a4;
    if (sub_1000011C4(a4) || sub_100001234(v6) != a3)
    {
      return 22;
    }

    else
    {
      v9 = sub_100000AB0(v6);
      v11 = v10;
      v12 = sub_100048054(a1);
      sub_100000B84(v9, v11, v12, *(a1 + 56), a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100001098(void *a1, uint64_t a2)
{
  if (!sub_100000E5C(a1))
  {
    return 0;
  }

  if ((byte_100088020 & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[50];
  if (sub_10000198C(v4, a1))
  {
    return 0;
  }

  memset(__s2, 0, sizeof(__s2));
  if (!a2)
  {
    return a2;
  }

  if (!memcmp((a2 + 32), __s2, HIBYTE(v5) & 0x7F))
  {
    return 0;
  }

  a2 = sub_100000EE4(a1, (a2 + 32), HIBYTE(v5) & 0x7F, (v5 >> 44) & 0xFFF);
  if (a2)
  {
    v7 = sub_100047D10(a1);
    v8 = sub_100047D18(a1);
    v9 = sub_100047D10(v4);
    sub_10003E5FC("%s:%d: failed to validate node %p (oid:%llu, xid:%llu) of fs %p (%llu) - %d\n", "authapfs_validate_node", 325, a1, v7, v8, v4, v9, a2);
  }

  return a2;
}

uint64_t sub_1000011C4(int a1)
{
  if ((a1 & 0xFFFFFF00) <= 0xF00 && (a1 & 0xFD) != 0 && a1 < 9u)
  {
    return 0;
  }

  sub_10003E5FC("%s:%d: Invalid or unknown hash type: %d\n", "authapfs_valid_hash_type", 31, a1);
  return 22;
}

uint64_t sub_100001234(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_100077628[(a1 - 1)];
  }
}

double sub_100001260(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  if (!sub_1000011C4(*a3))
  {
    *&result = 2;
    *(a1 + 32) = 2;
    *(a1 + 40) = v4;
    *(a1 + 44) = 128;
  }

  return result;
}

uint64_t sub_1000012AC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = v2[10];
  v4 = sub_100001234(v3);
  if (!v2[8])
  {
    return 92;
  }

  if (v2[11] < 0x30u)
  {
    return 92;
  }

  v5 = v4;
  if (sub_1000011C4(v3))
  {
    return 92;
  }

  v6 = v2[11];
  if (*(a1 + 48) < (v6 + v5))
  {
    return 92;
  }

  result = 0;
  v8 = *(a1 + 56);
  *(a1 + 376) = v8;
  *(a1 + 384) = v8 + v6;
  *(a1 + 392) = v5;
  return result;
}

uint64_t sub_100001338(uint64_t a1, void *a2, int a3)
{
  if (!a1)
  {
    return 22;
  }

  if (!a2 && !a3)
  {
    return 22;
  }

  v7 = *(*(a1 + 376) + 1024);
  if (v7)
  {
    v8 = *(a1 + 392);
    pthread_mutex_lock((a1 + 1728));
    v9 = *(a1 + 3624);
    if (v9)
    {
      if (a2)
      {
        sub_10004C19C(v9);
        *a2 = *(a1 + 3624);
      }

      pthread_mutex_unlock((a1 + 1728));
      return 0;
    }

    v13 = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutex_unlock((a1 + 1728));
    result = sub_100049EE0(*(v8 + 392), 0, v7, &xmmword_100077618, 0, a1, *(a1 + 440), 0, &v13);
    if (!result)
    {
      v11 = v13;
      pthread_mutex_lock((a1 + 3952));
      v12 = v11[47];
      *(a1 + 4020) = vrev64_s32(v12[4]);
      *(a1 + 4032) = v12[6];
      *(a1 + 4016) = 1;
      pthread_mutex_unlock((a1 + 3952));
      if (a3)
      {
        pthread_mutex_lock((a1 + 1728));
        if (!*(a1 + 3624))
        {
          sub_10004C19C(v13);
          *(a1 + 3624) = v13;
        }

        pthread_mutex_unlock((a1 + 1728));
      }

      if (!a2)
      {
        sub_100046D50(v13);
        return 0;
      }

      result = 0;
      *a2 = v13;
    }
  }

  else
  {
    v10 = sub_100047D10(a1);
    sub_10003E5FC("%s:%d: %s integrity_meta object of fs %llu, oid invalid\n", "authapfs_integrity_meta_get_internal", 169, (a1 + 4040), v10);
    return 2;
  }

  return result;
}

uint64_t sub_1000014DC(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 3952));
  v4 = *(a2 + 376);
  *(a1 + 4020) = vrev64_s32(v4[4]);
  *(a1 + 4032) = v4[6];
  *(a1 + 4016) = 1;

  return pthread_mutex_unlock((a1 + 3952));
}

uint64_t sub_100001540(uint64_t a1)
{
  pthread_mutex_lock((a1 + 1728));
  v2 = *(a1 + 3624);
  if (v2)
  {
    sub_100046D50(v2);
    *(a1 + 3624) = 0;
  }

  return pthread_mutex_unlock((a1 + 1728));
}

uint64_t sub_10000158C(uint64_t a1, _DWORD *a2)
{
  v8 = 0;
  if (!a2)
  {
    return 22;
  }

  result = sub_100001338(a1, &v8, 0);
  if (!result)
  {
    v4 = v8;
    v5 = *(v8 + 392);
    if (v5 >= 0x40)
    {
      v6 = 64;
    }

    else
    {
      v6 = v5;
    }

    v7 = *(v8 + 384);
    a2[6] = *(*(v8 + 376) + 40);
    a2[7] = v5;
    a2[5] |= 0x180u;
    memcpy(a2 + 8, v7, v6);
    sub_100046D50(v4);
    return 0;
  }

  return result;
}

uint64_t sub_100001614(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  v14 = a2;
  v13 = 0;
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 1108))
  {
    return 30;
  }

  v8 = *(a1 + 392);
  if (!a4 && *(*(a1 + 376) + 1024))
  {
    return 17;
  }

  v9 = sub_10004B964(a1, 0, a3);
  if (v9)
  {
    v5 = v9;
    sub_10003E5FC("%s:%d: %s obj_modify failed - %d\n", "authapfs_integrity_meta_create", 427, (a1 + 4040), v9);
  }

  else
  {
    v10 = sub_1000487E8(*(v8 + 392), 0, 0, &xmmword_100077618, &v14, a1, a3, &v13);
    if (v10)
    {
      v5 = v10;
      sub_10003E5FC("%s:%d: %s obj_create failed - %d\n", "authapfs_integrity_meta_create", 440, (a1 + 4040), v10);
    }

    else
    {
      sub_10004C7D8(v13, a3, 0);
      v11 = sub_100047D10(v13);
      if (a4)
      {
        v5 = 0;
        *a4 = v13;
      }

      else
      {
        *(*(a1 + 376) + 1024) = v11;
        sub_10003728C(a1, a3);
        sub_100046D50(v13);
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_10000177C(uint64_t a1)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0;
  v2 = sub_100001338(a1, &v15, 1);
  if (v2)
  {
    v3 = v2;
    v4 = strerror(v2);
    sub_10003E5FC("%s:%d: %s failed to load the integrity object - %s(%d)\n", "authapfs_seal_break", 471, (a1 + 4040), v4, v3);
  }

  else if (*(v15[47] + 36))
  {
    sub_100046D50(v15);
    return 0;
  }

  else
  {
    v5 = sub_10006084C(*(a1 + 392), &v14);
    if (v5)
    {
      v3 = v5;
      v6 = strerror(v5);
      sub_10003E5FC("%s:%d: %s failed to enter tx - %s(%d)\n", "authapfs_seal_break", 482, (a1 + 4040), v6, v3);
      sub_100046D50(v15);
    }

    else
    {
      v7 = sub_10004B964(a1, 0, v14);
      if (v7)
      {
        strerror(v7);
        sub_10003E5FC("%s:%d: %s failed to mark apfs object for modifications - %s(%d)\n");
      }

      else
      {
        v8 = sub_10004B964(v15, 0, v14);
        if (v8)
        {
          strerror(v8);
          sub_10003E5FC("%s:%d: %s failed to mark integrity object for modifications - %s(%d)\n");
        }

        else
        {
          v10 = v15;
          v11 = v15[47];
          v12 = *(v11 + 32);
          *(v11 + 36) |= 1u;
          v13 = v14;
          if (v12 >= 2)
          {
            *(v11 + 48) = v14;
          }

          sub_10004C7D8(v10, v13, 0);
          sub_1000014DC(a1, v15);
          sub_10003E55C("%s:%d: %s integrity protection will be disabled (from xid: %llu)\n", "authapfs_seal_break", 504, (a1 + 4040), v14);
        }
      }

      v3 = sub_10006085C(*(a1 + 392), v14, 21);
      sub_100046D50(v15);
      pthread_mutex_lock((a1 + 1280));
      *(a1 + 480) &= ~0x400000000000uLL;
      pthread_mutex_unlock((a1 + 1280));
    }
  }

  return v3;
}

uint64_t sub_10000198C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1728);
  pthread_mutex_lock((a1 + 1728));
  v5 = *(a1 + 3624);
  if (v5)
  {
    v6 = *(v5 + 376);
    v7 = (v6 + 36);
    v8 = (v6 + 32);
    v9 = (v6 + 48);
  }

  else
  {
    pthread_mutex_unlock(v4);
    if (*(a1 + 4016) != 1)
    {
LABEL_8:
      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    v4 = (a1 + 3952);
    pthread_mutex_lock((a1 + 3952));
    v7 = (a1 + 4020);
    v8 = (a1 + 4024);
    v9 = (a1 + 4032);
  }

  v10 = *v9;
  v11 = *v8;
  v12 = *v7;
  pthread_mutex_unlock(v4);
  if (a2 && v11 >= 2)
  {
    if (v12)
    {
      LOBYTE(v12) = sub_100047D18(a2) >= v10;
      return v12 & 1;
    }

    goto LABEL_8;
  }

  return v12 & 1;
}

uint64_t sub_100001A54(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = sub_100004D44();
  if (snprintf((a1 + 272), 0x20uLL, "%s (%s)", a2, v6) >= 0x20)
  {
    v7 = strlen(v6);
    snprintf((a1 - v7 + 300), v7 + 4, " (%s)", v6);
  }

  result = sub_100062550();
  *(a1 + 304) = result;
  *(a1 + 312) = a3;
  return result;
}

uint64_t sub_100001AE4(uint64_t a1)
{
  __dst = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100062DA0((a1 + 408), 15, 0, &__dst, 8uLL))
  {
    return 66048;
  }

  else
  {
    return __dst;
  }
}

void *sub_100001B38(uint64_t a1, int a2)
{
  v2 = [NSData dataWithBytes:a1 length:a2];
  v3 = [v2 base64EncodedStringWithOptions:1];
  v4 = malloc_type_malloc([v3 length] + 1, 0xC623C472uLL);
  if (v4)
  {
    memcpy(v4, [v3 UTF8String], objc_msgSend(v3, "length") + 1);
  }

  return v4;
}

uint64_t sub_100001BD8(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t sub_100001BEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 64);
  if (!*(a2 + 64))
  {
    return 22;
  }

  v5 = *(a2 + 72);
  v6 = v3 > 0x100 || *v5 == 0;
  if (v6 || v5[(v3 - 1)])
  {
    return 22;
  }

  v11 = sub_10003FB98(v3 + 32, 0x10000400A507A7AuLL);
  bzero(v11, *(a2 + 64) + 32);
  if (!v11)
  {
    return 12;
  }

  *(v11 + 1) = 0xFFFFFFFFFFFFFFFLL;
  *v11 = 267;
  v12 = *(a2 + 64);
  v11[1] = v12 + 32;
  v11[12] = v12;
  memcpy(v11 + 13, *(a2 + 72), v12);
  *(v11 + 2) = *(a2 + 8);
  if (sub_100042AEC(*(a1 + 392)))
  {
    sub_10003E50C("%s:%d: %s snap_name='%s' snap_xid %lld extentref oid %lld sblock oid %lld\n", "fs_insert_snapshot_metadata", 252, (a1 + 4040), v11 + 26, *(v11 + 2), *(a2 + 16), *(a2 + 24));
  }

  v13 = sub_100030EB4(a1, 3, a2, a3);
  if (v13)
  {
    v7 = v13;
    sub_10003E5FC("%s:%d: %s Inserting snap_meta failed, %d\n", "fs_insert_snapshot_metadata", 262, (a1 + 4040), v13);
  }

  else
  {
    v14 = sub_100030EB4(a1, 3, v11, a3);
    v7 = v14;
    if (v14)
    {
      sub_10003E5FC("%s:%d: %s Inserting snap_name failed, %d\n", "fs_insert_snapshot_metadata", 258, (a1 + 4040), v14);
      sub_10003135C(a1, 3, a2, a3);
    }
  }

  sub_10002CA94(a1, v11);
  return v7;
}

uint64_t sub_100001DA0(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8[0] = 5242881;
  v8[1] = a2;
  v5 = sub_100032154(a1, 3, 0, v8, a3);
  v6 = v5;
  if (v5)
  {
    sub_10003E5FC("%s:%d: %s Couldn't find snap_meta for xid %llu: %d\n", "fs_lookup_snapshot_metadata_by_xid", 445, (a1 + 4040), a2, v5);
  }

  return v6;
}

uint64_t sub_100001E40(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4, size_t a5, unint64_t a6)
{
  if (!a5)
  {
    return 22;
  }

  if (!*a4)
  {
    return 22;
  }

  v8 = a5;
  if (!sub_100035498(a4, a5, 0, 0))
  {
    return 22;
  }

  if (a4[v8 - 1])
  {
    ++v8;
  }

  if (v8 > 0x100)
  {
    return 63;
  }

  v23 = *(a2 + 64);
  v14 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v14;
  v15 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v15;
  LOWORD(v23) = v8;
  v16 = sub_10003FB98(v8, 0xACB204A5uLL);
  v24 = v16;
  if (!v16)
  {
    return 12;
  }

  v17 = v16;
  memcpy(v16, a4, v8 - 1);
  v17[v8 - 1] = 0;
  *(&v21 + 1) = sub_100062550();
  v18 = sub_10003135C(a1, 3, a3, a6);
  if (v18)
  {
    v12 = v18;
    sub_10003E5FC("%s:%d: %s remove_jobj(old-snap-name) returned %d\n", "fs_rename_snapshot", 621, (a1 + 4040), v18);
  }

  else
  {
    v19 = sub_100001BEC(a1, v20, a6);
    v12 = v19;
    if (!v19)
    {
      sub_10003FB5C(*(a2 + 72), *(a2 + 64));
      *(a2 + 72) = v24;
      *(a2 + 64) = v23;
      *(a2 + 40) = *(&v21 + 1);
      return v12;
    }

    sub_10003E5FC("%s:%d: %s fs_update_snap_metadata() returned %d\n", "fs_rename_snapshot", 628, (a1 + 4040), v19);
    v17 = v24;
    v8 = v23;
  }

  sub_10003FB5C(v17, v8);
  return v12;
}

uint64_t sub_100001FFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 392) + 392);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_100049EE0(v4, 0x40000000, a2, &xmmword_1000810F0, 0, 0, 0, 0, &v7);
  if (!v5)
  {
    sub_100049B88(v7, a3);
    sub_100046D50(v7);
  }

  return v5;
}

uint64_t sub_10000207C(uint64_t a1, int a2, unint64_t a3, unint64_t a4, void *a5)
{
  v9 = *(*(a1 + 392) + 392);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100049EE0(v9, 0x40000000, a3, &xmmword_1000810F0, 0, 0, 0, a4, &v16);
  if (!result)
  {
    v11 = v16[47];
    if (a2 == 5)
    {
      v12 = 1040;
      v13 = 1032;
    }

    else
    {
      if (a2 != 6)
      {
        sub_100046D50(v16);
        return 45;
      }

      v12 = 1044;
      v13 = 1048;
    }

    v14 = *(v11 + v12);
    v15 = *(v11 + v13);
    sub_100046D50(v16);
    if (v15)
    {
      return sub_10003E1CC(a1, v14, a2, a4, v15, a5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002168(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v6 = sub_10002F2A8(a1, 3, 0, &v9);
  if (v6)
  {
    return v6;
  }

  v7 = sub_100025B30(v9, a2, a3);
  sub_100046D50(v9);
  if (!v7)
  {
    pthread_mutex_lock((a1 + 1472));
    *(*(a1 + 376) + 152) = 0;
    sub_10003728C(a1, a2);
    pthread_mutex_unlock((a1 + 1472));
  }

  return v7;
}

uint64_t sub_100002208(uint64_t a1, int a2, int *a3, uint64_t *a4)
{
  if (a2 >= 1)
  {
    a2 -= *(a1 + a2 - 1) == 0;
  }

  if (a2 < 0xF)
  {
    return 0;
  }

  if (*a1 != 0x6C7070612E6D6F63 || *(a1 + 7) != 0x2E736670612E656CLL)
  {
    return 0;
  }

  if ((a2 - 15) < 8)
  {
    goto LABEL_20;
  }

  if (*(a1 + 15) == 0x2E64697870616E73)
  {
    v7 = 1;
    v8 = -23;
    v9 = 23;
  }

  else
  {
    if ((a2 - 15) < 0xB)
    {
      goto LABEL_20;
    }

    if (*(a1 + 15) != 0x726F746167727570 || *(a1 + 23) != 11897)
    {
      goto LABEL_20;
    }

    v7 = 2;
    v8 = -25;
    v9 = 25;
  }

  if (a2 + v8 > 16)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (v9 < a2)
  {
    v10 = 0;
    v11 = (a1 + v9);
    v12 = a1 + a2 - v11;
    do
    {
      v13 = 16 * v10;
      v15 = *v11++;
      v14 = v15;
      v16 = v15 - 48;
      v17 = (v15 - 48);
      v18 = (v15 - 65);
      v19 = (v15 - 97) > 5u;
      v20 = v13 | (v15 + 9) & 0x1F;
      if ((v15 - 97) <= 5u)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0;
      }

      if (v19)
      {
        v20 = v13;
      }

      v22 = v13 | (v14 + 9) & 0x1F;
      v23 = v18 > 5;
      if (v18 <= 5)
      {
        v24 = v7;
      }

      else
      {
        v24 = v21;
      }

      if (v23)
      {
        v22 = v20;
      }

      v10 = v13 | v16;
      if (v17 > 9)
      {
        v7 = v24;
        v10 = v22;
      }

      --v12;
    }

    while (v12);
    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  if (a3)
  {
    *a3 = v7;
  }

  result = 1;
  if (a4)
  {
    if (v7)
    {
      *a4 = v10;
    }
  }

  return result;
}

uint64_t sub_100002398(void *a1)
{
  v2 = a1[48];
  if (v2)
  {
    sub_10003FB5C(v2, 1144);
    a1[48] = 0;
  }

  a1[55] = 0;
  result = sub_1000183A4(a1);
  a1[56] = 0;
  return result;
}

uint64_t sub_1000023DC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v11 = a4;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13[12] = v7;
  *__str = v7;
  *v13 = v7;
  snprintf(__str, 0x2CuLL, "%s%s%llx", "com.apple.apfs.", "purgatory.", *(a2 + 8));
  v8 = sub_100034FA8(a1, 6, 1, 0, &v11);
  if (!v8)
  {
    v9 = strlen(__str);
    v8 = sub_100001E40(a1, a2, a3, __str, v9, v11);
    if (v8)
    {
      sub_10003E5FC("%s:%d: %s Couldn't rename snap %llx to %s\n", "move_snapshot_to_purgatory", 1877, (a1 + 4040), *(a2 + 8), __str);
    }

    if (v11)
    {
      sub_100034F40(a1, 6, 1, 0, v11);
    }
  }

  return v8;
}

uint64_t sub_100002524(uint64_t result)
{
  if (!*(result + 1108))
  {
    v5[4] = v1;
    v5[5] = v2;
    v3 = result;
    v5[0] = 0x100000;
    v5[1] = 0;
    v4 = pthread_rwlock_wrlock((result + 1792));
    if (v4)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/jobj_snap.c", 1961, v4);
    }

    sub_100033A24(v3, 3, 0, v5, sub_1000025E0, v3);
    result = pthread_rwlock_unlock((v3 + 1792));
    if (result)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/jobj_snap.c", 1963, result);
    }
  }

  return result;
}

uint64_t sub_1000025E0(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v2;
  v19 = v3;
  v6 = *(a1 + 8);
  v17 = -1431655766;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100002208(*(a1 + 72), *(a1 + 64), &v17, 0))
  {
    v7 = v17 == 2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = sub_10004FB80(a2, v6 - 1, &v16);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v16 == v6;
    }

    if (v9)
    {
      v11 = *(a1 + 48);
      if (*(a2 + 472) < v11)
      {
        result = 0;
        *(a2 + 472) = v11;
        return result;
      }
    }

    else if ((v8 & 0xFFFFFFFD) != 0)
    {
      sub_10003E5FC("%s:%d: %s find_next_snap(%llu) returned %d\n", "orphan_snap_check_iterator", 1918, (a2 + 4040), v6 - 1, v8);
    }

    else
    {
      sub_10003E5FC("%s:%d: %s snap xid %llu is an orphan... moving it to purgatory\n", "orphan_snap_check_iterator", 1923, (a2 + 4040), v6);
      v12 = sub_10003FB98(*(a1 + 64) + 32, 0x10000400A507A7AuLL);
      bzero(v12, *(a1 + 64) + 32);
      if (!v12)
      {
        return 12;
      }

      *v12 = 267;
      v13 = *(a1 + 64);
      v12[1] = v13 + 32;
      v14 = *(a1 + 8);
      *(v12 + 1) = 0xFFFFFFFFFFFFFFFLL;
      *(v12 + 2) = v14;
      v12[12] = v13;
      memcpy(v12 + 13, *(a1 + 72), v13);
      v15 = sub_1000023DC(a2, a1, v12, 0);
      if (v15)
      {
        sub_10003E5FC("%s:%d: %s Couldn't move snap xid %llu to purgatory, err %d\n", "orphan_snap_check_iterator", 1940, (a2 + 4040), *(a1 + 8), v15);
      }

      sub_10002CA94(a2, v12);
    }
  }

  return 0;
}

uint64_t sub_1000027B0(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
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

uint64_t sub_1000027E4(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t sub_1000027F8(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  v5 = *a3;
  a1[4] = a3[2];
  a1[5] = v5;
  a1[6] = 0;
  return result;
}

uint64_t sub_100002820(uint64_t a1, uint64_t a2)
{
  *(a1 + 376) = *(a1 + 56);
  *(a1 + 408) = 8 * *(a1 + 48) - 256;
  if (a2)
  {
    *(a1 + 384) = *(a2 + 24);
  }

  return 0;
}

uint64_t sub_10000284C(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v8 = a1[1];
  v9 = *(*a1 + 392);
  if (v8)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = *(*a1 + 392);
  }

  v37 = a1[2];
  v42 = 0;
  if (v8)
  {
    v11 = sub_10004B964(v8, 0, a5);
    if (v11)
    {
      v12 = v11;
      if (sub_100046328(v8) == 13)
      {
        v13 = (v8 + 505);
      }

      else
      {
        v13 = (v8[48] + 212);
      }

      v14 = sub_100047D10(v8);
      sub_10003E5FC("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "gbitmap_reap", 160, v13, v14, v12);
    }
  }

  v15 = sub_100002BE0(a1, 0, 0, &v42);
  if (v15)
  {
    v16 = v15;
    if (sub_100046328(v10) == 13)
    {
      v17 = (v10 + 4040);
    }

    else
    {
      v17 = (*(v10 + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s Can't get tree: %d\n", "gbitmap_reap", 166, v17, v16);
  }

  if (v42)
  {
    v18 = *a3;
    v40 = 0;
    v41 = v18;
    v39 = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38[2] = v19;
    v38[3] = v19;
    v38[0] = v19;
    v38[1] = v19;
    sub_10002381C(v38, v42, 0, 0, &v41, 8, 8u, &v40, 8u);
    v21 = v20;
    v36 = (v10 + 4040);
    v22 = 1023;
    if (v20)
    {
LABEL_31:
      if (v21 != 2)
      {
        if (sub_100046328(v10) == 13)
        {
          sub_10003E5FC("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, v36, v21, v41);
        }

        else
        {
          sub_10003E5FC("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, (*(v10 + 384) + 212), v21, v41);
        }
      }
    }

    else
    {
      while (!sub_100023848(v38))
      {
        if ((v37 & 0x40000000) != 0 && (v23 = v40, (v40 & 0x8000000000000000) != 0))
        {
          v40 &= ~0x8000000000000000;
          sub_10005C5F4(v10, 64, v23 & 0x7FFFFFFFFFFFFFFFLL, 1, a5);
        }

        else
        {
          v24 = *(a1 + 4);
          if (v8)
          {
            v25 = sub_100047D10(v8);
          }

          else
          {
            v25 = 0;
          }

          v26 = *(v9 + 392);
          v27 = v24 & 0xD8000000 | 0x1B;
          v28 = sub_100048054(a1);
          v29 = sub_100049BE0(v26, v27, v28, v25, v40, a5);
          if (v29)
          {
            v30 = v29;
            if (sub_100046328(v10) == 13)
            {
              sub_10003E5FC("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, v36, v30, v41, v40, v27);
            }

            else
            {
              sub_10003E5FC("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, (*(v10 + 384) + 212), v30, v41, v40, v27);
            }
          }
        }

        *a3 = v41 + 1;
        if (!v22)
        {
          v31 = 36;
          goto LABEL_41;
        }

        v21 = sub_100023864(v38);
        --v22;
        if (v21)
        {
          goto LABEL_31;
        }
      }
    }

    v32 = sub_100025B30(v42, a5, 0);
    if (v32)
    {
      v33 = v32;
      if (sub_100046328(v10) != 13)
      {
        v36 = (*(v10 + 384) + 212);
      }

      v34 = sub_100047D10(v42);
      sub_10003E5FC("%s:%d: %s Tree delete oid %llu threw %d\n", "gbitmap_reap", 208, v36, v34, v33);
    }
  }

  sub_100049B88(a1, a5);
  v31 = 0;
LABEL_41:
  if (v42)
  {
    sub_100046D50(v42);
  }

  return v31;
}

uint64_t sub_100002BE0(void *a1, unint64_t a2, unint64_t a3, uint64_t **a4)
{
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  *a4 = 0;
  v9 = sub_10004804C(a1);
  return sub_100024924(v8, v9 & 0xFFFFFC00, *(a1[47] + 32), a2, 3, a3 != 0, 26, sub_1000027B0, a3, a4);
}

uint64_t sub_100002C78(uint64_t a1, const void *a2, unsigned int a3, int a4)
{
  v8 = sub_1000155FC(*(a1 + 384));
  v9 = a3 + v8 - 1;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v10 = v9 / v8;
  if (((v9 / v8) & 0x80000000) != 0)
  {
    sub_10003E5FC("%s:%d: %s Invalid number of blocks needed: %d\n", "nx_update_efi_record", 67, (*(a1 + 384) + 212), v9 / v8);
    return 22;
  }

  v11 = v8;
  sub_10004B8D4(a1, 2);
  v12 = sub_10006084C(a1, &v56);
  if (v12)
  {
    v13 = v12;
    v48 = *(a1 + 384) + 212;
    sub_10003E5FC("%s:%d: %s tx_enter failed with error: %d");
    goto LABEL_45;
  }

  v14 = (v10 * v11);
  v15 = *(*(a1 + 376) + 1272);
  if (v11 > v9)
  {
    v16 = 0;
    v17 = 0;
    if (!v15)
    {
      goto LABEL_21;
    }

LABEL_7:
    v18 = sub_100049EE0(*(a1 + 392), 0x40000000, v15, dword_100077690, 0, 0, 0, 0, &v55);
    if (v18)
    {
      v19 = v15;
      v13 = v18;
      sub_10003E5FC("%s:%d: %s failed to get old efi object %lld: %d\n", "nx_update_efi_record", 166, (*(a1 + 384) + 212), v19, v18);
    }

    else
    {
      v22 = v55;
      v23 = v55[7];
      if (*(v23 + 32) == 1380209482)
      {
        if (*(v23 + 44))
        {
          v24 = v16;
          v25 = v14;
          v26 = 0;
          v27 = (v23 + 184);
          do
          {
            v28 = sub_10005C5F4(a1, 0, *(v27 - 1), *v27, v56);
            if (v28)
            {
              sub_10003E5FC("%s:%d: %s spaceman_free failed with error: %d", "nx_update_efi_record", 183, (*(a1 + 384) + 212), v28);
            }

            v27 += 2;
            ++v26;
          }

          while (v26 < *(v23 + 44));
          v22 = v55;
          v14 = v25;
          v16 = v24;
        }

        sub_100049B88(v22, v56);
        goto LABEL_21;
      }

      v13 = 92;
    }

    goto LABEL_25;
  }

  v20 = sub_10003FA58(1uLL, (v10 * v11), 0x802F452EuLL);
  v16 = v20;
  if (!v20)
  {
    v17 = 0;
    v13 = 12;
    goto LABEL_25;
  }

  memcpy(v20, a2, a3);
  v21 = sub_100058A6C(a1, 0, 1, v56, &v58, 0);
  if (v21)
  {
    v13 = v21;
LABEL_24:
    v17 = 0;
LABEL_25:
    v30 = v54;
    if (v54)
    {
      if (v17)
      {
        v31 = *(v17 + 44);
        if (v31 >= 1)
        {
          v52 = v16;
          v32 = v31 + 1;
          v33 = (v17 + 16 * v31 + 168);
          do
          {
            v34 = sub_10005C5F4(a1, 0, *(v33 - 1), *v33, v56);
            if (v34)
            {
              sub_10003E5FC("%s:%d: %s spaceman_free failed with error: %d", "nx_update_efi_record", 203, (*(a1 + 384) + 212), v34);
            }

            v33 -= 2;
            --v32;
          }

          while (v32 > 1);
          v16 = v52;
          v30 = v54;
        }
      }

      sub_100049B88(v30, v56);
    }

    goto LABEL_34;
  }

  v29 = sub_1000487E8(*(a1 + 392), 0x40000000, v58, dword_100077690, 0, 0, v56, &v54);
  if (v29)
  {
    v13 = v29;
    sub_10005C5F4(a1, 0, v58, 1, v56);
    goto LABEL_24;
  }

  v53 = v16;
  v51 = (v10 * v11);
  v37 = 0;
  v38 = 0;
  v50 = (v11 + 0xFFFFFFF50) >> 4;
  v17 = v54[7];
  *(v17 + 32) = 0x15244534ALL;
  v39 = (v17 + 176);
  do
  {
    v57 = 0;
    if (v50 == v37)
    {
      LODWORD(v37) = (v11 + 0xFFFFFFF50) >> 4;
      sub_10003E5FC("%s:%d: %s Extent count exceeds maximum (%d). Could only allocate %d of %d blocks\n", "nx_update_efi_record", 119, (*(a1 + 384) + 212), v50, v38, v10);
      v13 = 28;
LABEL_60:
      *(v17 + 40) = a3;
      *(v17 + 44) = v37;
LABEL_61:
      v14 = v51;
      v16 = v53;
      goto LABEL_25;
    }

    v40 = sub_100058A6C(a1, 0, v10 - v38, v56, v39, &v57);
    if (v40)
    {
      v13 = v40;
      goto LABEL_60;
    }

    v41 = v57;
    v39[1] = v57;
    ++v37;
    v38 += v41;
    v39 += 2;
  }

  while (v38 < v10);
  v42 = v54;
  *(v17 + 40) = a3;
  *(v17 + 44) = v37;
  sub_10004C7D8(v42, v56, 0);
  if (*(v17 + 44))
  {
    v43 = 0;
    v44 = 0;
    v45 = (v17 + 184);
    while (1)
    {
      v46 = *v45;
      v47 = sub_10001593C(*(a1 + 384), *(v45 - 1), *v45, &v53[v44], 0);
      if (v47)
      {
        break;
      }

      v45 += 2;
      v44 += v11 * v46;
      if (++v43 >= *(v17 + 44))
      {
        goto LABEL_56;
      }
    }

    v13 = v47;
    goto LABEL_61;
  }

LABEL_56:
  v58 = sub_100047D10(v54);
  v14 = v51;
  v16 = v53;
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_21:
  v13 = 0;
  *(*(a1 + 376) + 1272) = v58;
LABEL_34:
  if (v55)
  {
    sub_100046D50(v55);
  }

  if (v54)
  {
    sub_100046D50(v54);
  }

  if (v16)
  {
    sub_10003FB5C(v16, v14);
  }

  if (a4)
  {
    v35 = 53;
  }

  else
  {
    v35 = 21;
  }

  if (sub_10006085C(a1, v56, v35))
  {
    v49 = *(a1 + 384) + 212;
    sub_10003E5FC("%s:%d: %s tx_leave failed with error: %d");
  }

LABEL_45:
  sub_10004BE88(a1, 2);
  return v13;
}

void sub_1000031DC()
{
  if (!off_1000885C8)
  {
    cpu_capabilities = _get_cpu_capabilities();
    v1 = sub_1000032A8;
    if ((cpu_capabilities & 0x4000000) == 0)
    {
      v2 = off_1000885C8;
      if (off_1000885C8)
      {
        return;
      }

      do
      {
        v3 = 0;
        for (i = 0; i != 8; ++i)
        {
          v5 = (v2 >> i) ^ v3;
          v6 = v3 >> 1;
          v3 = (v3 >> 1) ^ 0x82F63B78;
          if ((v5 & 1) == 0)
          {
            v3 = v6;
          }
        }

        dword_100088654[v2++] = v3;
        v1 = sub_10000327C;
      }

      while (v2 != 256);
    }

    off_1000885C8 = v1;
  }
}

uint64_t sub_10000327C(uint64_t result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    result = dword_100088654[(v3 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t sub_1000032A8(uint64_t result, unsigned __int16 *a2, unint64_t a3)
{
  if ((a2 & 7) != 0)
  {
    if (!a3)
    {
      return result;
    }

    if (a2)
    {
      v4 = *a2;
      a2 = (a2 + 1);
      _W8 = v4;
      __asm { CRC32CB         W0, W0, W8 }

      result = _OFF;
      __asm { CRC32CB         W0, W0, W8 }

      --a3;
    }

    if (a3 >= 2 && (a2 & 3) != 0)
    {
      v11 = *a2++;
      _W9 = v11;
      __asm { CRC32CH         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CH         W0, W0, W9 }

      a3 -= 2;
    }

    if (a3 >= 4 && (a2 & 7) != 0)
    {
      v14 = *a2;
      a2 += 2;
      _W9 = v14;
      __asm { CRC32CW         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CW         W0, W0, W9 }

      a3 -= 4;
    }
  }

  if (a3 >= 8)
  {
    do
    {
      v17 = *a2;
      a2 += 4;
      _X8 = v17;
      __asm { CRC32CX         W0, W0, X8 }

      result = _OFF;
      __asm { CRC32CX         W0, W0, X8 }

      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3 >= 4)
  {
    v20 = *a2;
    a2 += 2;
    _W9 = v20;
    __asm { CRC32CW         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CW         W0, W0, W9 }

    a3 -= 4;
  }

  if (a3 >= 2)
  {
    v23 = *a2++;
    _W9 = v23;
    __asm { CRC32CH         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CH         W0, W0, W9 }

    a3 -= 2;
  }

  if (a3)
  {
    _W8 = *a2;
    __asm { CRC32CB         W0, W0, W8 }

    result = _OFF;
    __asm { CRC32CB         W0, W0, W8 }
  }

  return result;
}

uint64_t sub_100003350(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t sub_1000033AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 48) & 0xFE;
  v8 = *(a4 + 8);
  v5 = *(a4 + 24);
  v7[0] = *(a4 + 40) | (v4 << 56);
  v7[1] = v5;
  return sub_10001B234(a1, a3, &v8, 16, v7, 0x10u, a2);
}

uint64_t sub_100003408(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_10002F2A8(a1, 5, a2, &v8);
  if (!v6)
  {
    v6 = sub_1000033AC(v8, a2, *(a1 + 440), a3);
    sub_100046D50(v8);
  }

  return v6;
}

uint64_t sub_100003484(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a4 + 48) & 0xFE;
  v14 = *(a4 + 8);
  v8 = *(a4 + 40) | (v7 << 56);
  v9 = *(a4 + 24);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v8;
  v13[1] = v9;
  v10 = sub_10002F2A8(a1, 5, a2, &v12);
  if (!v10)
  {
    v10 = sub_100020594(v12, *(a1 + 440), &v14, 16, v13, 0x10u, a2, a3);
    sub_100046D50(v12);
  }

  return v10;
}

uint64_t sub_100003530(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = a3;
  v9[1] = a4;
  v6 = sub_10002F2A8(a1, 5, a2, &v8);
  if (!v6)
  {
    v6 = sub_1000229C0(v8, *(a1 + 440), v9, 0x10u, a2);
    sub_100046D50(v8);
  }

  return v6;
}

uint64_t sub_1000035B8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  v6 = a6;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 16;
  v19 = 16;
  v22 = a2;
  v23 = a3;
  if (a3 != -2 && a6)
  {
    panic("invalid offset (%llu) for last fext lookup\n", a3);
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  v12 = sub_10002F2A8(a1, 5, 0, &v17);
  if (!v12)
  {
    v12 = sub_100022D54(v17, *(a1 + 440), &v22, &v18, 0x10u, &v20, &v19, 1u, 0, a4);
    if (!v12)
    {
      if (v22 == a2 && ((v13 = HIBYTE(v20), v14 = v20 & 0xFFFFFFFFFFFFFFLL, v15 = v23, (v6 & 1) != 0) || v23 == a3 || v23 + v14 > a3))
      {
        v12 = 0;
        *a5 = 3670280;
        *(a5 + 8) = a2;
        *(a5 + 16) = v15;
        *(a5 + 32) = 0;
        *(a5 + 40) = v14;
        *(a5 + 24) = v21;
        *(a5 + 48) = v13;
      }

      else
      {
        v12 = 2;
      }
    }

    sub_100046D50(v17);
  }

  return v12;
}

uint64_t sub_100003710(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, _OWORD *a6, int a7, uint64_t (*a8)(__int128 *, uint64_t), uint64_t a9)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[2] = v14;
  v25[3] = v14;
  v25[0] = v14;
  v25[1] = v14;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v29 = a4;
  v30 = a5;
  v15 = sub_10002F2B4(a1, 5, a2, a3, &v24);
  if (!v15)
  {
    sub_1000236D0(v25, v24, a3, a7, &v29, 16, 0x10u, &v27, 0x10u, a6);
    if (v16 != 2)
    {
      v15 = v16;
      if (v16)
      {
LABEL_13:
        sub_100046D50(v24);
        return v15;
      }

      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      while (!sub_100023848(v25) && (!a4 || v29 == a4))
      {
        LODWORD(v20) = 3670280;
        *(&v20 + 1) = v29;
        *&v21 = v30;
        *&v22 = 0;
        *(&v22 + 1) = v27 & 0xFFFFFFFFFFFFFFLL;
        *(&v21 + 1) = v28;
        LOBYTE(v23) = HIBYTE(v27);
        v17 = a8(&v20, a9);
        if (v17)
        {
          v15 = v17;
          goto LABEL_13;
        }

        v18 = sub_100023864(v25);
        if ((a7 & 0x40000) == 0)
        {
          v15 = v18;
          if (v18)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v15 = 0;
    goto LABEL_13;
  }

  return v15;
}

uint64_t sub_100003878(unint64_t a1, uint64_t a2, int a3, void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t a5)
{
  v19 = a1;
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = a1 + a2;
  v17 = 0;
  v18 = -1431655766;
  v16 = 0;
  v15 = 1;
  do
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[6] = v8;
    v21[7] = v8;
    v21[5] = v8;
    v21[3] = v8;
    v21[4] = v8;
    v21[1] = v8;
    v21[2] = v8;
    v20[1] = v8;
    v21[0] = v8;
    v20[0] = v8;
    v14 = 0;
    v13 = 0;
    v9 = sub_1000039D8(&v19, v7, a3, v22, &v18, &v17, &v16, v21, v20, &v14, &v13, &v15);
    if (v9)
    {
      break;
    }

    v10 = v14;
    if (v14 >= 1)
    {
      if (v13 == 1)
      {
        sub_1000041B0(v21, v20, v14);
      }

      a4(v21, 4 * v10, a5);
    }
  }

  while (v19 < v7 || v17 > 0);
  return v9;
}

uint64_t sub_1000039D8(unint64_t *a1, unint64_t a2, int a3, int *a4, uint64_t a5, int *a6, int *a7, uint64_t a8, uint64_t a9, int *a10, _BYTE *a11, _BYTE *a12)
{
  v17 = *a6;
  v18 = *a7;
  if (*a6 >= 1 && v18 < v17)
  {
    v65 = 0;
    *a11 = 0;
    *a10 = 0;
    v18 = *a7;
    while (1)
    {
      if (v65 >= 1 && *(a5 + v18) && *(a5 + v18) < *(a9 - 1 + v65))
      {
        *a11 = 1;
      }

      *(a8 + 4 * v65) = a4[v18];
      v66 = *a7;
      *a7 = v66 + 1;
      LOBYTE(v66) = *(a5 + v66);
      v67 = *a10;
      *a10 = v67 + 1;
      *(a9 + v67) = v66;
      v18 = *a7;
      v17 = *a6;
      if (*a7 >= *a6 || !*(a5 + v18))
      {
        break;
      }

      v65 = *a10;
    }
  }

  if (v18 >= v17)
  {
    *a6 = 0;
    *a7 = 0;
    v20 = *a1;
    if (*a1 < a2)
    {
      v21 = a4 - 1;
      do
      {
        v23 = v20 + 1;
        *a1 = (v20 + 1);
        v24 = *v20;
        result = 92;
        if (!*v20 || v24 == 47)
        {
          return result;
        }

        if ((v24 & 0x80) == 0)
        {
          result = 0;
          if (v24 - 91 < 0xFFFFFFE6)
          {
            v68 = 1;
          }

          else
          {
            v68 = a3;
          }

          if (v68)
          {
            v69 = *v20;
          }

          else
          {
            v69 = v24 | 0x20;
          }

          *a4 = v69;
          *a6 = 1;
          *a5 = 0;
          goto LABEL_143;
        }

        if (v24 - 225 > 0xB)
        {
          if (v24 - 194 <= 0x1D && v23 < a2)
          {
            v30 = *v23 ^ 0x80;
            if (v30 <= 0x3F)
            {
              v28 = ((v24 & 0x1F) << 6) | v30;
              v23 = v20 + 2;
              goto LABEL_44;
            }
          }
        }

        else if ((v20 + 2) < a2)
        {
          v26 = *v23 ^ 0x80;
          if (v26 <= 0x3F)
          {
            v27 = v20[2] ^ 0x80;
            if (v27 <= 0x3F)
            {
              v28 = ((v24 & 0xF) << 12) | (v26 << 6) | v27;
              v23 = v20 + 3;
              goto LABEL_44;
            }
          }
        }

        if (v24 > 0xEF)
        {
          if (v24 > 0xFD)
          {
            v33 = 0;
            goto LABEL_33;
          }

          if (v24 <= 0xF7)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          v32 = v24 > 0xFB;
        }

        else
        {
          v31 = v24 > 0xDF;
          v32 = v24 > 0xBF;
        }

        if (v32)
        {
          v33 = v31 + 1;
        }

        else
        {
          v33 = v31;
        }

LABEL_33:
        v28 = -1;
        if (&v23[v33] <= a2)
        {
          v34 = v24 & ~(-1 << (6 - v33));
          if (v33 == 1)
          {
            goto LABEL_41;
          }

          if (v33 == 2 || v33 == 3 && (v23 = v20 + 2, v35 = v20[1] ^ 0x80, v28 = -1, v35 <= 0x3F) && (v34 = v35 | (v34 << 6), v34 <= 0x10F))
          {
            v36 = *v23++;
            v37 = v36 ^ 0x80;
            v28 = -1;
            if ((v36 ^ 0x80u) <= 0x3F)
            {
              v34 = v37 | (v34 << 6);
              if ((v34 & 0xFFE0) != 0x360)
              {
LABEL_41:
                v38 = *v23++;
                v39 = v38 ^ 0x80;
                if ((v38 ^ 0x80u) > 0x3F || (v28 = v39 | (v34 << 6), v28 < dword_1000776A0[v33]))
                {
                  v28 = -1;
                }
              }
            }
          }
        }

LABEL_44:
        *a1 = v23;
        if (v28 < 1)
        {
          return result;
        }

        *a5 = 0;
        if (v28 >= 0xF0000)
        {
          if ((~v28 & 0xFFFE) == 0)
          {
            goto LABEL_144;
          }

LABEL_47:
          *a4 = v28;
          goto LABEL_55;
        }

        v40 = v28;
        if (v28 >> 10 >= 0xC9)
        {
          if (v28 - 918016 < 0xFFFFFE00)
          {
            goto LABEL_144;
          }

          v40 = v28 - 711680;
        }

        v41 = word_1000776B0[v40 >> 8];
        if (!word_1000776B0[v40 >> 8])
        {
          goto LABEL_54;
        }

        if (v41 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v41 & 0xFF00) == 0xAD00)
        {
LABEL_54:
          *a4 = v28;
          *a5 = v41;
          goto LABEL_55;
        }

        if (((v40 >> 8) - 172) <= 0x2A)
        {
          goto LABEL_69;
        }

        v50 = word_10007A22C[16 * (v41 & 0xFFF) + (v40 >> 4)];
        if (!v50)
        {
LABEL_75:
          *a4 = v28;
          *a5 = v50;
          goto LABEL_76;
        }

        if (v50 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v50 & 0xFF00) == 0xAE00)
        {
          if ((word_100077CFC[v50] >> (v40 & 0xF)))
          {
            goto LABEL_144;
          }

          *a4 = v28;
          v42 = 1;
          if (v28 <= 0x4FF && (a3 & 1) == 0)
          {
            *a4 = word_10007B54C[v28];
          }

          goto LABEL_56;
        }

        if ((v50 & 0xFF00) == 0xAD00)
        {
          goto LABEL_75;
        }

        if (v50 == 44032 || (v52 = word_10007BF4C[16 * (v50 & 0xFFF) + (v40 & 0xF)], v52 == 44032))
        {
LABEL_69:
          v45 = v28 - 44032;
          v46 = v45 / 28;
          v47 = v45 / 588;
          v48 = (49933 * (v45 / 28)) >> 16;
          *(a5 + 1) = 0;
          v49 = v45 % 28;
          *a4 = v47 + 4352;
          a4[1] = (v46 - 21 * ((v48 >> 4) + ((v48 & 0x8000) >> 15)) + 4449);
          if (v49)
          {
            a4[2] = v49 + 4519;
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          goto LABEL_56;
        }

        if (v52 == 0xFFFF)
        {
LABEL_144:
          v54 = -1;
LABEL_145:
          *a6 = v54;
          return result;
        }

        if (((v52 + 1792) >> 8) <= 0xB6u)
        {
          if (!v52 || (v52 & 0xFF00) == 0xAD00)
          {
            *a4 = v28;
            *a5 = v52;
          }

          else
          {
            *a4 = v52;
          }

LABEL_76:
          if ((a3 & 1) == 0)
          {
            v51 = *a4;
            if (v51 <= 1279)
            {
              v28 = word_10007B54C[v51];
              goto LABEL_47;
            }
          }

LABEL_55:
          v42 = 1;
LABEL_56:
          *a6 = v42;
          goto LABEL_57;
        }

        v53 = (v52 - 45056) >> 12;
        v54 = -1;
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v53 != 1)
            {
              goto LABEL_145;
            }

            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_100078A26 + 6 * (v52 & 0x7FF);
            v42 = 3;
          }

          else
          {
            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_100077E12 + 4 * (v52 & 0x7FF);
            v42 = 2;
          }
        }

        else
        {
          if (v53 == 2)
          {
            v70 = 0;
            v58 = (&unk_100078F5A + 2 * (v52 & 0x3FF));
            v59 = *v58;
            v55 = (v58 + 1);
            v57 = v59;
            goto LABEL_109;
          }

          if (v53 != 3)
          {
            if (v53 != 4)
            {
              goto LABEL_145;
            }

            v55 = 0;
            v56 = (&unk_100079FD0 + 4 * (v52 & 0x3FF));
            v57 = *v56;
            v70 = v56 + 1;
LABEL_109:
            v42 = v57 & 0xF;
            *a5 = v57 >> 4;
            if (v42 - 5 < 0xFFFFFFFC)
            {
              v54 = 0;
              goto LABEL_145;
            }

            goto LABEL_110;
          }

          if ((v52 & 0x800) != 0 && a3)
          {
            goto LABEL_47;
          }

          v55 = 0;
          v70 = (&unk_1000790E8 + 4 * (v52 & 0x7FF));
          v42 = 1;
        }

LABEL_110:
        v60 = 0;
        v74 = a3;
        v72 = a12;
        v73 = a2;
        v71 = v21;
        do
        {
          if (v55)
          {
            v62 = *v55;
            v55 += 2;
            v61 = v62;
          }

          else
          {
            v61 = *v70++;
          }

          a4[v60] = v61;
          if (v60)
          {
            v75 = v60;
            v76 = v55;
            v63 = sub_10000467C(v61);
            v60 = v75;
            v55 = v76;
            *(a5 + v75) = v63;
          }

          ++v60;
          a3 = v74;
          a12 = v72;
          a2 = v73;
          v21 = v71;
        }

        while (v42 != v60);
        if ((v74 & 1) == 0)
        {
          v64 = *a4;
          if (v64 <= 1279)
          {
            *a4 = word_10007B54C[v64];
          }

          if (v42 < 2)
          {
            goto LABEL_55;
          }

          if (v71[v42] == 837)
          {
            v71[v42] = 953;
          }
        }

        *a6 = v42;
        if (v42 < 1)
        {
          return 92;
        }

LABEL_57:
        if (!*a5 || *a12 == 1)
        {
          result = 0;
LABEL_143:
          *a12 = 0;
          return result;
        }

        v43 = *a10;
        if ((v42 + *a10) > 32)
        {
          return 92;
        }

        v44 = 0;
        do
        {
          if (v43 >= 1 && *(a5 + v44) && *(a5 + v44) < *(a9 - 1 + v43))
          {
            *a11 = 1;
          }

          *(a8 + 4 * v43) = a4[v44];
          *(a9 + *a10) = *(a5 + v44++);
          v43 = *a10 + 1;
          *a10 = v43;
        }

        while (v44 < *a6);
        *a6 = 0;
        v20 = *a1;
      }

      while (*a1 < a2);
    }
  }

  return 0;
}

uint64_t sub_1000041B0(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = a3 - 1;
      do
      {
        v5 = *(a2 + v4);
        if (v5 < *(a2 + v4 - 1))
        {
          v6 = *(result + 4 * v4);
          *(result + 4 * v4) = *(result + 4 * (v4 - 1));
          *(a2 + v4) = *(a2 + v4 - 1);
          *(result + 4 * (v4 - 1)) = v6;
          *(a2 + v4 - 1) = v5;
        }

        --v4;
      }

      while (v4 > v3);
      ++v3;
    }

    while (v3 != a3 - 1);
  }

  return result;
}

uint64_t sub_100004224(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, BOOL *a6)
{
  v33 = a3;
  v34 = a1;
  v7 = a1 + a2;
  v8 = a3 + a4;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __b[0] = v9;
  __b[1] = v9;
  v44 = v9;
  v45 = v9;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0;
  v32 = 0;
  v30 = 1;
  v29 = 1;
  while (1)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __s1[6] = v10;
    v41 = v10;
    __s1[4] = v10;
    __s1[5] = v10;
    __s1[2] = v10;
    __s1[3] = v10;
    __s1[0] = v10;
    __s1[1] = v10;
    __s2[6] = v10;
    v39 = v10;
    __s2[4] = v10;
    __s2[5] = v10;
    __s2[2] = v10;
    __s2[3] = v10;
    __s2[0] = v10;
    __s2[1] = v10;
    v36 = v10;
    v37 = v10;
    v35[0] = v10;
    v35[1] = v10;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    result = sub_1000039D8(&v34, v7, a5, __b, &v43, &v32 + 1, &v31 + 1, __s1, &v36, &v28, &v26 + 1, &v30);
    if (result)
    {
      return result;
    }

    result = sub_1000039D8(&v33, v8, a5, &v44, &v42, &v32, &v31, __s2, v35, &v27, &v26, &v29);
    if (result)
    {
      return result;
    }

    v13 = v27;
    v12 = v28;
    if (v28 > 0 || v27 >= 1)
    {
      if (HIBYTE(v26) == 1)
      {
        sub_1000041B0(__s1, &v36, v28);
      }

      if (v26 == 1)
      {
        sub_1000041B0(__s2, v35, v13);
      }

      if (a5)
      {
        v14 = v13;
        v15 = v12;
        goto LABEL_50;
      }

      if (v12 < 2 || *(__s1 + (v12 - 1)) != 953 || HIDWORD(v31))
      {
        v15 = v12;
      }

      else
      {
        v16 = HIDWORD(v32);
        if (SHIDWORD(v32) >= 8)
        {
          v17 = 0;
          v28 = v12;
          goto LABEL_25;
        }

        v17 = 0;
        while (*(&v39 + v12 + 3) == 953)
        {
          ++v17;
          v15 = v12 - 1;
          if (v17 < 8 - HIDWORD(v32))
          {
            v18 = v12-- > 2;
            if (v18)
            {
              continue;
            }
          }

          goto LABEL_24;
        }

        v15 = v12;
LABEL_24:
        v28 = v15;
        LODWORD(v12) = v15;
        if (SHIDWORD(v32) >= 1)
        {
LABEL_25:
          v19 = HIDWORD(v32);
          do
          {
            *(&v45 + v17 + v19 + 3) = *(&v45 + v19 + 3);
            *(&v42 + v17 + v19 + 7) = *(&v42 + v19 + 7);
            v18 = v19-- > 1;
          }

          while (v18);
          v15 = v12;
        }

        if (v17)
        {
          bzero(&v43, v17);
          memset_pattern16(__b, &unk_10007F750, 4 * v17);
        }

        HIDWORD(v32) = v16 + v17;
      }

      if (v13 >= 2 && (*(__s2 + (v13 - 1)) == 953 ? (v20 = v31 == 0) : (v20 = 0), v20))
      {
        v21 = v32;
        v22 = 0;
        if (v32 > 7)
        {
          goto LABEL_44;
        }

        while (*(&v37 + v13 + 3) == 953)
        {
          ++v22;
          v14 = v13 - 1;
          if (v22 < 8 - v32)
          {
            v18 = v13-- > 2;
            if (v18)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v14 = v13;
LABEL_43:
        v27 = v14;
        LODWORD(v13) = v14;
        if (v32 >= 1)
        {
LABEL_44:
          v23 = v32;
          do
          {
            *(&v43 + v22 + v23 + 1) = *(&v43 + v23 + 1);
            *(&v41 + v22 + v23 + 15) = *(&v41 + v23 + 15);
            v18 = v23-- > 1;
          }

          while (v18);
          v14 = v13;
        }

        if (v22)
        {
          bzero(&v42, v22);
          memset_pattern16(&v44, &unk_10007F750, 4 * v22);
        }

        LODWORD(v32) = v21 + v22;
      }

      else
      {
        v14 = v13;
      }

LABEL_50:
      if (v15 != v14 || memcmp(__s1, __s2, 4 * v14))
      {
        result = 0;
        *a6 = 0;
        return result;
      }
    }

    if (v34 >= v7 && SHIDWORD(v32) < 1 || v33 >= v8 && v32 <= 0)
    {
      v24 = 0;
      if (v34 == v7 && !HIDWORD(v32) && v33 == v8)
      {
        v24 = v32 == 0;
      }

      result = 0;
      *a6 = v24;
      return result;
    }
  }
}

uint64_t sub_10000467C(int a1)
{
  if (a1 >= 983040)
  {
    return 0;
  }

  if (a1 == 953)
  {
    return 240;
  }

  v2 = a1 - 711680;
  if (a1 <= 205823)
  {
    v2 = a1;
  }

  LOWORD(v3) = word_1000776B0[v2 >> 8];
  if (v3)
  {
    v4 = (v3 & 0xFF00) == 44288;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return v3;
  }

  v3 = word_10007A22C[16 * (v3 & 0xFFF) + (v2 >> 4)];
  if (!v3)
  {
    return v3;
  }

  if ((v3 & 0xFF00) == 0xAE00)
  {
    return 0;
  }

  if ((v3 & 0xFF00) == 0xAD00)
  {
    return v3;
  }

  v5 = word_10007BF4C[16 * (v3 & 0xFFF) + (v2 & 0xF)];
  if ((v5 & 0xFF00) == 0xAD00)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_100004744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = malloc_type_calloc(1uLL, 0x88uLL, 0x10A00402AAEDA42uLL);
  if (!result)
  {
    sub_100063010();
  }

  *result = 2;
  result[1] = sub_100004864;
  result[2] = sub_100004888;
  result[3] = sub_100004898;
  result[4] = sub_1000048AC;
  result[5] = nullsub_2;
  result[6] = sub_1000048B8;
  result[7] = nullsub_3;
  result[8] = sub_1000048C4;
  result[9] = sub_1000048CC;
  result[10] = sub_1000048D4;
  result[11] = sub_1000048DC;
  result[12] = sub_1000048E4;
  result[13] = sub_1000048EC;
  *a5 = result;
  return result;
}

uint64_t sub_100004864(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
    sub_10006303C();
  }

  *a5 = a3;
  *a6 = a4;
  return 0;
}

uint64_t sub_100004888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  *a6 = a4;
  *a7 = a5;
  return 0;
}

uint64_t sub_100004898(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, void *a6)
{
  *a4 = 0;
  *a5 = a2;
  *a6 = a3;
  return 0;
}

uint64_t sub_1000048F4(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10003FC54(a1);
    v17 = *(a1 + 384) + 212;
    sub_10003E64C(v2, "%s:%d: %s Container corruption detected by %s:%u!\n", v3, v4, v5, v6, v7, v8, "nx_corruption_detected_int");
  }

  else
  {
    v9 = sub_10003FC54(0);
    sub_10003E64C(v9, "%s:%d: Container corruption detected by %s:%u!\n", v10, v11, v12, v13, v14, v15, "nx_corruption_detected_int");
  }

  return 92;
}

unint64_t sub_100004988(void *a1, int a2, int8x16_t a3, int8x16_t a4)
{
  result = sub_100042FF0(a1, (a1 + 1), (a2 - 8), 0, a3, a4);
  if (result)
  {
    sub_10003E5FC("%s:%d: failed: cksum 0x%016llx, oid 0x%llx, type 0x%x/0x%x, size %d\n", "obj_checksum_verify_phys", 52, *a1, a1[1], *(a1 + 6), *(a1 + 7), a2);
    v7 = sub_10003FC54(0);
    sub_10003E64C(v7, "%s:%d: Container corruption detected by %s:%u!\n", v8, v9, v10, v11, v12, v13, "nx_corruption_detected_int");
    return 92;
  }

  return result;
}

uint64_t sub_100004A28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v5 = (a2 + 48);
  if (!a2)
  {
    v5 = (a1 + 40);
  }

  v6 = *v5;
  if ((a5 ^ 1u) > a3 || v6 - 1 < a3)
  {
    return 22;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (v6 - a3 >= a4)
  {
    return 0;
  }

  return 22;
}

unint64_t sub_100004A7C(uint64_t a1, unsigned int a2, int a3, int8x16_t a4, int8x16_t a5)
{
  if (a2 < 0x1000)
  {
    return 22;
  }

  if (*(a1 + 32) != 1112758350)
  {
    return 79;
  }

  if (a3 || (v8 = *(a1 + 36), v8 == a2))
  {
    result = sub_100004988(a1, a2, a4, a5);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 36);
  }

  v9 = *(a1 + 24);
  v10 = v9 != -2147483647;
  if (v9 == -2147483647)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(a1 + 28))
  {
    v10 = v11;
  }

  if (*(a1 + 8) != 1)
  {
    ++v10;
  }

  if (v8 < 0x1000)
  {
    ++v10;
  }

  if (v8 <= 0x10000)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (*(a1 + 88) < 0x400uLL)
  {
    ++v12;
  }

  v13 = *(a1 + 104);
  if ((v13 & 0x7FFFFFF8) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = v13 & 0x7FFFFFFF;
  v16 = *(a1 + 40);
  if ((v13 & 0x7FFFFFFF) > 0x1000)
  {
    ++v14;
  }

  if (v16 <= v15)
  {
    ++v14;
  }

  v17 = *(a1 + 112);
  v18 = v16 - 1;
  v20 = v17 < 1 || v18 < v17;
  if ((v13 & 0x80000000) != 0)
  {
    v14 += v20;
  }

  else if ((v20 & 1) != 0 || v13 >= 2 && v16 - v17 < v13)
  {
    ++v14;
  }

  if (*(a1 + 128) >= v15)
  {
    ++v14;
  }

  v21 = *(a1 + 108);
  if ((v21 & 0x7FFFFFF8) != 0)
  {
    v22 = v14;
  }

  else
  {
    v22 = v14 + 1;
  }

  v23 = v21 & 0x7FFFFFFF;
  if (v16 > (v21 & 0x7FFFFFFF))
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 + 1;
  }

  v25 = *(a1 + 120);
  v27 = v25 < 1 || v18 < v25;
  if ((v21 & 0x80000000) != 0)
  {
    v24 += v27;
    LODWORD(v21) = 1;
  }

  else if ((v27 & 1) != 0 || v21 >= 2 && v16 - v25 < v21)
  {
    ++v24;
  }

  if (*(a1 + 132) < v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    LODWORD(v13) = 1;
  }

  if (v17 >= v25)
  {
    v13 = v21;
  }

  else
  {
    v13 = v13;
  }

  if (v17 >= v25)
  {
    v29 = *(a1 + 120);
  }

  else
  {
    v29 = *(a1 + 112);
  }

  if (v17 <= v25)
  {
    v17 = *(a1 + 120);
  }

  if ((v29 + v13) <= v17)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 + 1;
  }

  if ((*(a1 + 64) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (v30)
    {
      goto LABEL_105;
    }

    return 0;
  }

  v31 = *(a1 + 140);
  if (!*(a1 + 152))
  {
    ++v30;
  }

  if (!*(a1 + 160))
  {
    ++v30;
  }

  if (!(a3 | v31))
  {
    if (!*(a1 + 148) && !*(a1 + 136) && !*(a1 + 144))
    {
      goto LABEL_104;
    }

    v31 = 0;
  }

  if (*(a1 + 136) >= v15)
  {
    ++v30;
  }

  v32 = *(a1 + 148);
  if (*(a1 + 144) >= v23)
  {
    ++v30;
  }

  if (v31 < 2)
  {
    ++v30;
  }

  if (v31 < v15)
  {
    v33 = v30;
  }

  else
  {
    v33 = v30 + 1;
  }

  if (v32 < 2)
  {
    ++v33;
  }

  if (v32 < v23)
  {
    v30 = v33;
  }

  else
  {
    v30 = v33 + 1;
  }

LABEL_104:
  if (v30 | (*(a1 + 180) > 0x64u))
  {
LABEL_105:
    v34 = sub_10003FC54(0);
    sub_10003E64C(v34, "%s:%d: Container corruption detected by %s:%u!\n", v35, v36, v37, v38, v39, v40, "nx_corruption_detected_int");
    return 92;
  }

  return 0;
}

uint64_t sub_100004D10(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
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

void sub_100004D50(const char *a1, int a2, int a3, int a4)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = -1;
  }

  if (dword_1000885E4)
  {
    fprintf(__stderrp, "Conversion failed!  %s:%d slice=%d phase=%d location=%d error=%d%s\n", a1, a2, *(qword_1000885F8 + 348), *(qword_1000885F8 + 352), a3, v5, *(qword_1000885F8 + 360));
  }

  v6 = qword_1000885F8 + 48;
  v7 = *(qword_1000885F8 + 48);
  *(qword_1000885F8 + 356) = a3;
  *(v6 + 296) = v5;
  if (v7)
  {
    (*(v7 + 88))();
    v8 = *(qword_1000885F8 + 48);
    if (v8)
    {
      free(v8);
      *(qword_1000885F8 + 48) = 0;
    }
  }

  exit(1);
}

uint64_t sub_100004E14(uint64_t a1)
{
  if (!*(a1 + 6))
  {
    return 0;
  }

  v1 = __rev16(*(a1 + 6));
  v2 = (a1 + 8);
  while (1)
  {
    v3 = bswap32(*v2) >> 16;
    if (v3 > 0xFFFD)
    {
      break;
    }

    if (v3 >> 10 != 54 || v1 == 1)
    {
      ++v2;
      --v1;
    }

    else
    {
      if ((v2[1] & 0xFC) != 0xDC)
      {
        return 22;
      }

      v2 += 2;
      v1 -= 2;
    }

    if (!v1)
    {
      return 0;
    }
  }

  return 22;
}

uint64_t sub_100004E8C(uint64_t a1)
{
  v9 = 0x64006F004E006900;
  v10 = 25856;
  memset(__b, 170, sizeof(__b));
  sub_1000172B4(*(a1 + 212), &unk_100064CAF, __b);
  v2 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100005004;
  v6[3] = &unk_100084778;
  v6[4] = a1;
  v6[5] = &v9;
  v7 = 0;
  result = sub_100014F3C(v2, v6);
  if (!result)
  {
    v4 = *(a1 + 184);
    if (v4)
    {
      qsort_b(*(a1 + 176), v4, 0xCuLL, &stru_1000847B8);
    }

    if (qword_1000885D8)
    {
      result = *(a1 + 56);
      if (result)
      {
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 0x40000000;
        v5[2] = sub_100005300;
        v5[3] = &unk_1000847D8;
        v5[4] = a1;
        return sub_100014F3C(result, v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100005004(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = *(a2 + 2);
  if (bswap32(*(a2 + 6)) >> 16 >= 0x20)
  {
    ++*(*(a1 + 32) + 316);
  }

  v7 = bswap32(*a3) >> 16;
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      v8 = 0;
      ++*(*(a1 + 32) + 300);
      return v8;
    }

    return 0;
  }

  v9 = bswap32(v6);
  v10 = sub_1000181AC(a3);
  v11 = *(a1 + 32);
  if (v10)
  {
    ++*(v11 + 304);
    *(v11 + 280) += bswap64(*(a3 + 11));
    v12 = *(v11 + 212);
  }

  else
  {
    v12 = *(v11 + 212);
    if (v9 == v12)
    {
      ++*(v11 + 312);
      goto LABEL_15;
    }

    if (*(a3 + 12) == 1802398824 && *(a3 + 13) == 728983144)
    {
      ++*(v11 + 308);
    }

    else
    {
      ++*(v11 + 296);
    }
  }

  if (v9 != v12)
  {
    return 0;
  }

LABEL_15:
  v13 = bswap32(*(a2 + 6)) >> 16;
  if (v13 < 6)
  {
    return 0;
  }

  v15 = *(a2 + 8);
  v14 = (a2 + 8);
  v16 = *(a1 + 40);
  v17 = *v16;
  v18 = *(v16 + 4);
  if (v15 != v17 || v14[4] != v18)
  {
    return 0;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[0] = v21;
  v34[1] = v21;
  v33 = 31;
  v22 = sub_1000164F8(v14, v13, v34, &v33);
  if (v22)
  {
    v8 = v22;
    fprintf(__stderrp, "hfs_find_inodes: hfs_utf16_to_utf8 failed (error %d)\n", *(a1 + 48));
  }

  else
  {
    *(v34 + v33) = 0;
    v23 = *(a3 + 2);
    __endptr = 0xAAAAAAAAAAAAAAAALL;
    v24 = strtoul(v34 + 5, &__endptr, 10);
    if (*__endptr)
    {
      fprintf(__stderrp, "Invalid inode filename: %.*s\n", v33, v34);
      return 22;
    }

    else
    {
      v25 = v24;
      if (a3[1] < 0)
      {
        v26 = bswap32(*(a3 + 17));
      }

      else
      {
        v26 = 0;
      }

      v27 = bswap32(v23);
      v28 = *(a1 + 32);
      v29 = *(v28 + 184);
      if (v29 == *(v28 + 188))
      {
        v30 = v29 + 512;
        *(v28 + 188) = v30;
        *(*(a1 + 32) + 176) = malloc_type_realloc(*(v28 + 176), 12 * v30, 0x10000403E1C8BA9uLL);
        v28 = *(a1 + 32);
        v29 = *(v28 + 184);
      }

      v8 = 0;
      v31 = (*(v28 + 176) + 12 * v29);
      *v31 = v25;
      v31[1] = v27;
      v31[2] = v26;
      *(v28 + 184) = v29 + 1;
    }
  }

  return v8;
}

int sub_1000052E8(id a1, const void *a2, const void *a3)
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

uint64_t sub_100005300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (bswap32(*(a2 + 12)) >> 16 >= 0x20)
  {
    ++*(*(a1 + 32) + 332);
  }

  v3 = bswap32(*a3);
  switch(v3)
  {
    case 0x30u:
      ++*(*(a1 + 32) + 328);
      return 0;
    case 0x20u:
      v4 = *(a1 + 32);
      ++*(v4 + 324);
      v5 = bswap64(*(a3 + 8));
      goto LABEL_8;
    case 0x10u:
      v4 = *(a1 + 32);
      ++*(v4 + 320);
      v5 = bswap32(*(a3 + 12));
LABEL_8:
      *(v4 + 288) += v5;
      break;
  }

  return 0;
}

size_t sub_1000053A0()
{
  fwrite("Usage: apfs_hfs_convert [-D] [-e] [-v] [-s] [-S <path>] [-n] [-F n] [-M <mount_path>] [-o <option>] <device_path>\n", 0x72uLL, 1uLL, __stderrp);
  fwrite("    -D    Convert all former and current directory hard links to files/aliases. \n", 0x51uLL, 1uLL, __stderrp);
  fwrite("    -e    Estimate apfs metadata size.\n", 0x27uLL, 1uLL, __stderrp);
  fwrite("    -v    Enable verbose output.\n", 0x21uLL, 1uLL, __stderrp);
  fwrite("    -s    Force the APFS volume to be case-sensitive.\n", 0x36uLL, 1uLL, __stderrp);
  fwrite("    -S <path>\n", 0xEuLL, 1uLL, __stderrp);
  fwrite("          Print statistics and information about the converson to the given <path>.\n", 0x54uLL, 1uLL, __stderrp);
  fwrite("    -n    Don't finalize conversion (dry run).  Volume remains HFS.\n", 0x44uLL, 1uLL, __stderrp);
  fwrite("    -f    Force conversion if volume is dirty.\n", 0x2FuLL, 1uLL, __stderrp);
  fwrite("    -F n  Slice #n (0-based) should be fixed size.\n", 0x33uLL, 1uLL, __stderrp);
  fwrite("    -g\t   Change GPT GUID to APFS at end of conversion (relevant only for raw hfs volumes, and hfs volumes inside core storage).\n", 0x81uLL, 1uLL, __stderrp);
  fwrite("    -k\t   Change GPT GUID to Apple_KFS during conversion (relevant only for core storage).\n", 0x5BuLL, 1uLL, __stderrp);
  fwrite("    -x\t   Changes standard output to contain statistics in XML format. All error messages and non statistics output is redirected to /var/log/hfs_convert.log\n", 0x9EuLL, 1uLL, __stderrp);
  fwrite("    -M <mount_path>\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("          Use the given path to mount APFS during conversion.\n", 0x3EuLL, 1uLL, __stderrp);
  fwrite("    -o <nx_or_apfs_format_options>\n", 0x23uLL, 1uLL, __stderrp);
  fwrite("          Format options passed through to nx_format and apfs_newfs.\n", 0x45uLL, 1uLL, __stderrp);
  fwrite("    --watchdog=<seconds>\n", 0x19uLL, 1uLL, __stderrp);
  fwrite("          Conversion will abort after <seconds> seconds.  Default is 600 seconds for dry run, unlimited otherwise.\n", 0x73uLL, 1uLL, __stderrp);
  fwrite("    --efi=<efi driver file name>\n", 0x21uLL, 1uLL, __stderrp);
  fwrite("          efi driver will be embedded in the nx superblock.\n", 0x3CuLL, 1uLL, __stderrp);
  fwrite("    --preboot=<preboot directory full path>\n", 0x2CuLL, 1uLL, __stderrp);
  fwrite("          Preboot volume will be created and filled with the contents of the preboot directory.\n", 0x60uLL, 1uLL, __stderrp);
  fwrite("    --bootefi=<boot efi driver directory full path>\n", 0x34uLL, 1uLL, __stderrp);
  v0 = __stderrp;

  return fwrite("          Preboot volume will be blessed with the boot efi driver.\n", 0x43uLL, 1uLL, v0);
}

void sub_100005628()
{
  v0 = pthread_self();
  pthread_detach(v0);
  while (1)
  {
    v7 = *(qword_1000885F8 + 320);
    if (v7)
    {
      v7 = 100 * *(qword_1000885F8 + 328) / v7;
    }

    sub_1000442D8(qword_100088610, 1002, v1, v2, v3, v4, v5, v6, v7);
    sleep(5u);
    pthread_testcancel();
  }
}

BOOL start(int a1, char *const *a2)
{
  v4 = &selRef_UTF8String;
  qword_1000885F8 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x10B0040786387F6uLL);
  v5 = time(0);
  v6 = qword_1000885F8;
  *(qword_1000885F8 + 256) = v5;
  *(v6 + 344) = xmmword_10007F790;
  *(v6 + 360) = &unk_100064CAF;
  sub_100051B28(0, (v6 + 392));
  sub_100051D2C(0, (qword_1000885F8 + 424));
  __strlcpy_chk();
  setlocale(0, &unk_100064CAF);
  v7 = setlocale(4, 0);
  if (*v7 == 67 && !v7[1])
  {
    setlocale(4, "en_US.UTF-8");
  }

  v8 = 0x100004077774924;
  sub_1000031DC();
  memcpy(__dst, &off_1000847F8, sizeof(__dst));
  v9 = &selRef_UTF8String;
  v10 = &selRef_UTF8String;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v11 = getopt_long(a1, a2, "Dmesngko:xvF:M:S:", __dst, 0);
            if (v11 <= 109)
            {
              break;
            }

            if (v11 <= 999)
            {
              if (v11 <= 114)
              {
                if (v11 == 110)
                {
                  if (qword_100088040 == -1)
                  {
                    qword_100088040 = 900;
                  }

                  dword_100088038 = 0;
                }

                else
                {
                  if (v11 != 111)
                  {
                    goto LABEL_99;
                  }

                  v17 = sub_1000528C4(optarg, sub_100051B28, (v4[191] + 392), sub_100051D2C, (v4[191] + 424));
                  if (v17)
                  {
                    sub_1000631A0(v17);
                  }
                }
              }

              else
              {
                switch(v11)
                {
                  case 's':
                    byte_1000885D1 = 1;
                    break;
                  case 'v':
                    *(v9 + 377) = 1;
                    break;
                  case 'x':
                    dword_10008861C = 1;
                    v15 = sub_100043A60();
                    v10[194] = v15;
                    if (!v15)
                    {
                      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 7978, 151, -1);
                    }

                    sub_100043D1C(v15, 2);
                    sub_100043C20(v10[194]);
                    dword_100088618 = 1;
                    sub_100043D00(v10[194], 2);
                    atexit(sub_100005E7C);
                    pthread_create(&qword_100088A58, 0, sub_100005628, 0);
                    break;
                  default:
                    goto LABEL_99;
                }
              }
            }

            else if (v11 > 1002)
            {
              if (v11 == 1003)
              {
                v19 = v8;
                v20 = v10;
                v21 = v4;
                v22 = optarg;
                v23 = strndup(optarg, 0x20uLL);
                __endptr = v22;
                while (1)
                {
                  v24 = strsep(&__endptr, ",");
                  if (!v24 || !*v24)
                  {
                    break;
                  }

                  __stringp = v24;
                  v25 = strsep(&__stringp, "=");
                  if (!v25)
                  {
                    goto LABEL_94;
                  }

                  v26 = v25;
                  if (!strncmp(v25, "dirents", 7uLL))
                  {
                    v29 = strncmp(__stringp, "unhashed", 8uLL);
                    v28 = &byte_1000885D0;
                    if (v29)
                    {
                      goto LABEL_94;
                    }
                  }

                  else if (!strncmp(v26, "compactBtree", 0xCuLL))
                  {
                    v30 = strncmp(__stringp, "true", 4uLL);
                    v28 = &byte_1000885D3;
                    if (v30)
                    {
                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    if (strncmp(v26, "inodelayout", 0xBuLL))
                    {
                      printf("unknown feature-format: %s\n", v26);
LABEL_94:
                      sub_1000630F8(&__stringp, &__endptr, v23);
                    }

                    v27 = strncmp(__stringp, "unified", 7uLL);
                    v28 = &byte_1000885E0;
                    if (v27)
                    {
                      goto LABEL_94;
                    }
                  }

                  *v28 = 1;
                }

                if (v23)
                {
                  free(v23);
                }

                v4 = v21;
                v10 = v20;
                v8 = v19;
                v9 = &selRef_UTF8String;
                if (byte_1000885E0 == 1)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                if (v11 == 1004)
                {
                  v32 = strlen(optarg);
                  v13 = malloc_type_calloc(1uLL, v32 + 1, v8);
                  qword_100088638 = v13;
                }

                else
                {
                  if (v11 != 1005)
                  {
                    goto LABEL_99;
                  }

                  v16 = strlen(optarg);
                  v13 = malloc_type_calloc(1uLL, v16 + 1, v8);
                  qword_100088640 = v13;
                }

LABEL_66:
                strcpy(v13, optarg);
              }
            }

            else if (v11 == 1000)
            {
              __endptr = 0xAAAAAAAAAAAAAAAALL;
              v18 = strtol(optarg, &__endptr, 0);
              if (*__endptr)
              {
                sub_1000630B0();
              }

              *(v9 + 377) = v18;
            }

            else
            {
              if (v11 != 1001)
              {
                v12 = strlen(optarg);
                v13 = malloc_type_calloc(1uLL, v12 + 1, v8);
                qword_100088620 = v13;
                goto LABEL_66;
              }

              __endptr = 0xAAAAAAAAAAAAAAAALL;
              v31 = strtol(optarg, &__endptr, 0);
              if (*__endptr)
              {
                sub_100063068();
              }

              qword_100088040 = v31;
            }
          }

          if (v11 <= 100)
          {
            break;
          }

          if (v11 <= 102)
          {
            if (v11 == 101)
            {
              dword_1000885E8 = 1;
            }

            else
            {
              byte_1000885D2 = 1;
            }
          }

          else
          {
            switch(v11)
            {
              case 'g':
                byte_1000885D4 = 1;
                break;
              case 'k':
                byte_1000885D5 = 1;
                break;
              case 'm':
                byte_1000885E0 = 1;
LABEL_81:
                byte_100088034 = 0;
                *(v4[191] + 238) |= 0x100u;
                break;
              default:
                goto LABEL_99;
            }
          }
        }

        if (v11 <= 69)
        {
          break;
        }

        switch(v11)
        {
          case 'F':
            __endptr = 0xAAAAAAAAAAAAAAAALL;
            v33 = strtol(optarg, &__endptr, 0);
            if (*__endptr)
            {
              v34 = 1;
            }

            else
            {
              v34 = v33 >= 8;
            }

            if (v34)
            {
              sub_100063158();
            }

            dword_1000885EC |= 1 << v33;
            break;
          case 'M':
            qword_100088600 = optarg;
            break;
          case 'S':
            dword_100088618 = 1;
            if (*optarg == 45 && !optarg[1])
            {
              v14 = __stdoutp;
            }

            else
            {
              v14 = fopen(optarg, "w");
            }

            qword_1000885D8 = v14;
            if (v14)
            {
              atexit(sub_100005E7C);
            }

            else
            {
              sub_1000631DC();
            }

            break;
          default:
            goto LABEL_99;
        }
      }
    }

    while (!v11);
    if (v11 != 68)
    {
      break;
    }

    dword_100088030 = 0;
  }

  if (v11 != -1)
  {
LABEL_99:
    sub_1000053A0();
    v40 = 8126;
    v41 = 81;
    goto LABEL_100;
  }

  v35 = optind;
  if ((*(v4[191] + 238) & 0x100) != 0 && byte_100088034 == 1)
  {
    fwrite("unified_devt disallowed with directory hardlinks \n", 0x32uLL, 1uLL, __stderrp);
    v40 = 8136;
    v41 = 394;
LABEL_100:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v40, v41, -4);
  }

  v36 = &a2[optind];
  if (*(v9 + 377))
  {
    setlinebuf(__stdoutp);
    __endptr = time(0);
    v37 = ctime(&__endptr);
    printf("%.24s: apfs_hfs_convert (%s)\n", v37, "2632.40.15.0.2");
  }

  v38 = a1 - v35;
  if (dword_10008861C)
  {
    sub_100043CB4(v10[194], *v36);
  }

  if (v38 != 1)
  {
    puts("Invalid number of devices");
    sub_1000053A0();
    v40 = 8156;
    v41 = 82;
    goto LABEL_100;
  }

  return sub_1000065C8(v36) != 0;
}

void sub_100005E7C()
{
  v6 = time(0);
  v7 = qword_1000885F8;
  if (*(qword_1000885F8 + 368))
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_1000885D8 == 0;
  }

  if (!v8)
  {
    fputc(10, qword_1000885D8);
    v7 = qword_1000885F8;
  }

  v9 = *(v7 + 320);
  if (v9)
  {
    v10 = 100 * *(v7 + 328) / v9;
  }

  else
  {
    v10 = 0;
  }

  if (qword_1000885D8)
  {
    fprintf(qword_1000885D8, "postV=%s ", "2632.40.15.0.2");
    fprintf(qword_1000885D8, "r=%d ", *(qword_1000885F8 + 344));
    v11 = qword_1000885F8;
    if (*(qword_1000885F8 + 344))
    {
      fprintf(qword_1000885D8, "fs=%d fp=%d fl=%d ", *(qword_1000885F8 + 348), *(qword_1000885F8 + 352), *(qword_1000885F8 + 356));
      v11 = qword_1000885F8;
    }

    fprintf(qword_1000885D8, "d=%ld ", v6 - *(v11 + 256));
    v12 = *(qword_1000885F8 + 264);
    if (v12 == -1)
    {
      v13 = -1;
    }

    else
    {
      v13 = v12 - *(qword_1000885F8 + 256);
    }

    fprintf(qword_1000885D8, "d100=%ld ", v13);
    fprintf(qword_1000885D8, "p=%lu ", v10);
    v36 = *(qword_1000885F8 + 288);
    if (v36 >= 0)
    {
      v37 = *(qword_1000885F8 + 288);
    }

    else
    {
      v37 = -v36;
    }

    v38 = v36 < 0;
    v39 = v37 + 0x80000;
    if (v38)
    {
      v39 = -524288 - v37;
    }

    fprintf(qword_1000885D8, "m=%lld ", v39 / 0x100000);
    v40 = *(qword_1000885F8 + 296);
    if (v40 >= 0)
    {
      v41 = *(qword_1000885F8 + 296);
    }

    else
    {
      v41 = -v40;
    }

    v38 = v40 < 0;
    v42 = v41 + 0x80000;
    if (v38)
    {
      v42 = -524288 - v41;
    }

    fprintf(qword_1000885D8, "u=%lld", v42 / 0x100000);
    fprintf(qword_1000885D8, "dr=%d\n", dword_100088038 == 0);
    fprintf(qword_1000885D8, "%s\n", *(qword_1000885F8 + 360));
    v43 = qword_1000885D8;

    fflush(v43);
  }

  else
  {
    sub_1000442D8(qword_100088610, 1002, v0, v1, v2, v3, v4, v5, v10);
    memset(v131, 0, sizeof(v131));
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    *v116 = 0u;
    valuePtr = 0;
    memset(v115, 0, sizeof(v115));
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    *v100 = 0u;
    memset(v99, 0, sizeof(v99));
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v86 = 0u;
    v87 = 0u;
    *v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    memset(v83, 0, sizeof(v83));
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *buffer = 0u;
    v69 = 0u;
    v66 = 0u;
    memset(v67, 0, sizeof(v67));
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *v52 = 0u;
    v53 = 0u;
    bsdName = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51[6] = v14;
    v51[7] = v14;
    v51[4] = v14;
    v51[5] = v14;
    v51[2] = v14;
    v51[3] = v14;
    v51[0] = v14;
    v51[1] = v14;
    v15 = sub_100043CF8(qword_100088610);
    sub_1000435DC(v15, v51, 0, 0x80uLL, &bsdName);
    v16 = IOBSDNameMatching(kIOMasterPortDefault, 0, bsdName);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v16);
    if (!MatchingService)
    {
      sub_100063214();
    }

    v18 = MatchingService;
    v19 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Device Characteristics", kCFAllocatorDefault, 3u);
    if (v19)
    {
      v20 = v19;
      Value = CFDictionaryGetValue(v19, @"Product Name");
      if (Value)
      {
        CFStringGetCString(Value, buffer, 265, 0x8000100u);
      }

      v22 = CFDictionaryGetValue(v20, @"Product Revision Level");
      if (v22)
      {
        CFStringGetCString(v22, v52, 265, 0x8000100u);
      }

      v23 = CFDictionaryGetValue(v20, @"Medium Type");
      if (v23)
      {
        CFStringGetCString(v23, v116, 8, 0x8000100u);
      }

      v24 = CFDictionaryGetValue(v20, @"Rotation Rate");
      if (v24)
      {
        CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
      }

      CFRelease(v20);
    }

    v25 = IORegistryEntrySearchCFProperty(v18, "IOService", @"Protocol Characteristics", kCFAllocatorDefault, 3u);
    if (v25)
    {
      v30 = v25;
      v31 = CFDictionaryGetValue(v25, @"Physical Interconnect");
      if (v31)
      {
        CFStringGetCString(v31, v100, 265, 0x8000100u);
      }

      v32 = CFDictionaryGetValue(v30, @"Physical Interconnect Location");
      if (v32)
      {
        CFStringGetCString(v32, v84, 265, 0x8000100u);
      }

      CFRelease(v30);
    }

    if (*(qword_1000885F8 + 296) >= 0)
    {
      v33 = *(qword_1000885F8 + 296);
    }

    if (*(qword_1000885F8 + 288) >= 0)
    {
      v34 = *(qword_1000885F8 + 288);
    }

    v35 = *(qword_1000885F8 + 264) - *(qword_1000885F8 + 256);
    v48 = *(qword_1000885F8 + 360);
    v47 = *(qword_1000885F8 + 356);
    v46 = *(qword_1000885F8 + 352);
    v45 = *(qword_1000885F8 + 348);
    v44 = *(qword_1000885F8 + 344);
    sub_1000442D8(qword_100088610, 1004, "pi", "rs", v26, v27, v28, v29, "postV");
    pthread_cancel(qword_100088A58);
    sub_100043BC4(qword_100088610);
  }
}

uint64_t sub_1000065C8(const char **a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v497 = v2;
  v498 = v2;
  v3 = &selRef_UTF8String;
  if (dword_1000885E4)
  {
    *__b = time(0);
    v4 = ctime(__b);
    printf("%.24s: Converting device at %s", v4, *a1);
    putchar(10);
  }

  atexit(sub_10000B4C4);
  signal(2, sub_10000B6B4);
  v5 = qword_100088600;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__b[224] = v6;
  *&__b[240] = v6;
  *&__b[192] = v6;
  *&__b[208] = v6;
  *&__b[160] = v6;
  *&__b[176] = v6;
  *&__b[128] = v6;
  *&__b[144] = v6;
  *&__b[96] = v6;
  *&__b[112] = v6;
  *&__b[64] = v6;
  *&__b[80] = v6;
  *&__b[48] = v6;
  *&__b[16] = v6;
  *&__b[32] = v6;
  *__b = v6;
  v7 = qword_1000885F8;
  *(qword_1000885F8 + 248) = -1;
  v7[33] = -1;
  v7[10] = sub_10000B9F0;
  v7[11] = sub_10000B9F0;
  v7[12] = sub_10000B9F0;
  v7[7] = nullsub_4;
  v7[8] = sub_10003EC7C;
  v7[9] = sub_100004744;
  v7[48] = v7;
  if (!strncmp(*a1, "/dev/disk", 9uLL))
  {
    snprintf(__b, 0x100uLL, "/dev/rdisk%s");
  }

  else
  {
    snprintf(__b, 0x100uLL, "/dev/r%s");
  }

  *qword_1000885F8 = strdup(__b);
  v8 = qword_1000885F8;
  *(qword_1000885F8 + 24) = 1;
  *(v8 + 32) = strdup(*v8);
  if (v5)
  {
    *(v8 + 40) = strdup(v5);
  }

  if (qword_100088040 >= 1)
  {
    global_queue = dispatch_get_global_queue(2, 0);
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue);
    qword_100088608 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = 1000000000 * qword_100088040;
      if ((1000000000 * qword_100088040) >= 0xE8D4A51000)
      {
        v13 = 10000000000;
      }

      else
      {
        v13 = 1000000000 * qword_100088040 / 0x64uLL;
      }

      if (dword_1000885E4)
      {
        printf("    Limiting conversion to %ld seconds.  Use --watchdog=0 for no limit.\n", qword_100088040);
        v11 = qword_100088608;
      }

      v14 = dispatch_walltime(0, v12);
      dispatch_source_set_timer(v11, v14, 0xFFFFFFFFFFFFFFFFLL, v13);
      dispatch_source_set_event_handler(qword_100088608, &stru_100084A38);
      dispatch_resume(qword_100088608);
    }

    else
    {
      warnx("Unable to create watchdog timer!");
    }
  }

  v15 = qword_1000885F8;
  if (!qword_1000885F8)
  {
    fprintf(__stderrp, "conversion_init() failed: %d\n", 0);
    return 0;
  }

  v16 = 0;
  while (1)
  {
    v17 = (*(v15 + 8 * v16 + 80))(v15, *(v15 + 24), v15 + 248, 0, v15 + 252, v15 + 48);
    if (v17)
    {
      v418 = v17;
      fprintf(__stderrp, "Attempt to open device by Volume Manager #%d failed, error %d during attempt to open the device\n", v16, v17);
      v443 = 7052;
      v444 = 130;
      goto LABEL_563;
    }

    v15 = qword_1000885F8;
    v18 = *(qword_1000885F8 + 248);
    if ((v18 & 0x80000000) == 0)
    {
      break;
    }

    if (++v16 == 3)
    {
      fprintf(__stderrp, "After scanning %d Volume Managers, none was able to open the device\n", 3);
      v19 = 7063;
      v20 = 131;
      goto LABEL_51;
    }
  }

  *(v15 + 32) = strdup(*qword_1000885F8);
  if (ioctl(v18, 0x40046418uLL, v15 + 200) == -1)
  {
    v459 = *__error();
    v460 = __stderrp;
    v461 = *(qword_1000885F8 + 32);
    v462 = strerror(v459);
    fprintf(v460, "%s: Cannot determine sector size: %s\n", v461, v462);
    v463 = 7077;
    v464 = 8;
    goto LABEL_627;
  }

  if (ioctl(*(qword_1000885F8 + 248), 0x40086419uLL, qword_1000885F8 + 176) == -1)
  {
    v459 = *__error();
    v465 = __stderrp;
    v466 = *(qword_1000885F8 + 32);
    v467 = strerror(v459);
    fprintf(v465, "%s: Cannot determine number of sectors: %s\n", v466, v467);
    v463 = 7082;
    v464 = 9;
    goto LABEL_627;
  }

  v21 = qword_1000885F8;
  v22 = *(qword_1000885F8 + 176) * *(qword_1000885F8 + 200);
  *(qword_1000885F8 + 192) = v22;
  *(v21 + 168) = v22;
  v23 = ioctl(*(v21 + 248), 0x4004644CuLL, v21 + 212);
  v24 = qword_1000885F8;
  if (v23 == -1)
  {
    v25 = __stderrp;
    v26 = *(qword_1000885F8 + 32);
    v27 = __error();
    v28 = strerror(*v27);
    fprintf(v25, "%s: Cannot determine device features: %s\n", v26, v28);
    v24 = qword_1000885F8;
    *(qword_1000885F8 + 212) = 0;
  }

  *__b = -1431655766;
  LODWORD(v515[0]) = -1431655766;
  dup(*(v24 + 248));
  v29 = kCFAllocatorDefault;
  v30 = MKMediaCreateWithFileDescriptor();
  if (!v30)
  {
    sub_10006385C(__b);
  }

  v31 = v30;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"Include most", kCFBooleanTrue);
  v33 = MKCFReadMedia();
  CFRelease(Mutable);
  if (!v33)
  {
    if (LODWORD(v515[0]) != -5324)
    {
      sub_100063230(v515[0], v515);
    }

    if (dword_1000885E4)
    {
      puts("No partition map found");
    }

    v38 = v31;
    goto LABEL_40;
  }

  Value = CFDictionaryGetValue(v33, @"Schemes");
  if (!Value)
  {
    goto LABEL_34;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
  if (!ValueAtIndex)
  {
    goto LABEL_34;
  }

  v36 = ValueAtIndex;
  v37 = CFDictionaryGetValue(ValueAtIndex, @"ID");
  if (!v37 || CFStringCompare(v37, @"GPT", 0))
  {
    if (dword_1000885E4)
    {
      puts("No GPT partition map found");
    }

    goto LABEL_34;
  }

  v53 = CFDictionaryGetValue(v36, @"Sections");
  if (!v53 || (v54 = CFArrayGetValueAtIndex(v53, 0)) == 0 || (v55 = CFDictionaryGetValue(v54, @"Partitions")) == 0 || (v56 = v55, Count = CFArrayGetCount(v55), Count < 1))
  {
LABEL_34:
    CFRelease(v31);
    v38 = v33;
LABEL_40:
    CFRelease(v38);
    goto LABEL_41;
  }

  v58 = Count;
  v59 = 0;
  v60 = 1;
  do
  {
    v61 = CFArrayGetValueAtIndex(v56, v59);
    if (v61)
    {
      if (CFDictionaryGetValue(v61, @"Type"))
      {
        v62 = MKHumanToType();
        if (v62)
        {
          v63 = v62;
          v64 = CFStringCompare(v62, @"7C3457EF-0000-11AA-AA11-00306543ECAC", 0);
          CFRelease(v63);
          if (v64 == kCFCompareEqualTo)
          {
            break;
          }
        }
      }
    }

    v60 = ++v59 < v58;
  }

  while (v58 != v59);
  CFRelease(v31);
  CFRelease(v33);
  v29 = kCFAllocatorDefault;
  if (v60)
  {
LABEL_75:
    v515[0] = time(0);
    v65 = ctime(v515);
    printf("%.24s: appears to be APFS.  Skipping conversion.\n", v65);
    byte_1000885F0 = 1;
    v66 = qword_1000885F8;
    *(qword_1000885F8 + 344) = 0;
    *&v67 = 0xAAAAAAAAAAAAAAAALL;
    *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__b[96] = v67;
    *&__b[112] = v67;
    *&__b[64] = v67;
    *&__b[80] = v67;
    *&__b[48] = v67;
    *&__b[16] = v67;
    *&__b[32] = v67;
    *__b = v67;
    *(v66 + 360) = 0;
    v68 = popen("diskutil list", "r");
    if (v68)
    {
      v69 = v68;
      while (fgets(__b, 128, v69))
      {
        v70 = *(v66 + 360);
        asprintf((v66 + 360), "%s%s", v70, __b);
        free(v70);
      }

      pclose(v69);
    }

    else
    {
      v71 = __error();
      v72 = strerror(*v71);
      *(v66 + 360) = strdup(v72);
    }

    sub_10000B4C4();
    return 0;
  }

LABEL_41:
  v39 = *(qword_1000885F8 + 200);
  if (v39 <= 0x1000)
  {
    v40 = 4096;
  }

  else
  {
    v40 = v39;
  }

  v41 = malloc_type_calloc(1uLL, v40, 0x13D02C11uLL);
  v42 = pread(*(qword_1000885F8 + 248), v41, v40, 0);
  if (v42 == -1)
  {
    v418 = *__error();
    fprintf(__stderrp, "is_APFS: error %d reading superblock\n", v418);
    v443 = 4606;
    v444 = 52;
    goto LABEL_563;
  }

  if (v42 != v40)
  {
    fprintf(__stderrp, "is_APFS: expected %zu bytes, got %zd\n", v40, v42);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4609, 53, -6);
  }

  v45 = sub_100004A7C(v41, v40, 0, v43, v44);
  free(v41);
  if (!v45)
  {
    goto LABEL_75;
  }

  v46 = qword_1000885F8;
  v47 = 56;
  while (1)
  {
    (*(v46 + v47))(*(v46 + 248), *(v46 + 168), *(v46 + 200), *(v46 + 160), v46 + 48);
    v46 = qword_1000885F8;
    v48 = *(qword_1000885F8 + 48);
    if (v48)
    {
      break;
    }

    v47 += 8;
    if (v47 == 80)
    {
      fprintf(__stderrp, "After scanning %d Volume Managers, none found applicable\n", 3);
      v19 = 7142;
      v20 = 23;
LABEL_51:
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v19, v20, 9);
    }
  }

  if (*v48 == 1)
  {
    goto LABEL_56;
  }

  if (*v48)
  {
    goto LABEL_97;
  }

  v49 = (*(v48 + 104))(v48, 0);
  v46 = qword_1000885F8;
  if (!v49)
  {
    goto LABEL_97;
  }

  if (**(qword_1000885F8 + 48) == 1)
  {
LABEL_56:
    close(*(v46 + 248));
    v46 = qword_1000885F8;
    *(qword_1000885F8 + 248) = -1;
  }

  close(*(v46 + 252));
  v50 = qword_1000885F8;
  *(qword_1000885F8 + 252) = -1;
  __dst[0] = 0;
  *buffer = -1431655766;
  *&v51 = 0xAAAAAAAAAAAAAAAALL;
  *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v515[12] = v51;
  *&v515[14] = v51;
  *&v515[8] = v51;
  *&v515[10] = v51;
  *&v515[4] = v51;
  *&v515[6] = v51;
  *v515 = v51;
  *&v515[2] = v51;
  if (!*(v50 + 40))
  {
    memset(__b, 170, sizeof(__b));
    v52 = getenv("__OSINSTALL_ENVIRONMENT");
    if (v52 && *v52 == 49 && !v52[1] || !confstr(65537, __b, 0x400uLL))
    {
      __strlcpy_chk();
    }

    v74 = qword_1000885F8;
    v75 = getpid();
    v76 = asprintf((v74 + 40), "%sapfs_hfs_convert.%d", __b, v75);
    if (!*(qword_1000885F8 + 40))
    {
      sub_100063444(v76);
    }

    if (mkdir(*(qword_1000885F8 + 40), 0x1FFu))
    {
      sub_100063270();
    }

    v50 = qword_1000885F8;
    *(qword_1000885F8 + 372) = 1;
  }

  __sprintf_chk(v515, 0, 0x80uLL, "/dev/%s", (*(v50 + 32) + 6));
  *__b = "mount_apfs";
  *&__b[8] = "-C";
  v77 = *(qword_1000885F8 + 40);
  *&__b[16] = v515;
  *&__b[24] = v77;
  *&__b[32] = 0;
  v78 = posix_spawn(__dst, "/sbin/mount_apfs", 0, 0, __b, 0);
  if (v78)
  {
    sub_1000632B0(v78);
  }

  while (1)
  {
    v79 = waitpid(__dst[0], buffer, 0);
    if (v79 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      __error();
      break;
    }
  }

  if (v79 != __dst[0])
  {
    sub_1000632E8(v79);
  }

  if ((buffer[0] & 0x7F) != 0)
  {
    sub_100063330();
  }

  if (buffer[1])
  {
    sub_100063360(buffer[1], buffer);
  }

  *__b = 0xAAAAAAAAAAAAAAAALL;
  v80 = qword_1000885F8;
  if (**(qword_1000885F8 + 48) == 1)
  {
    v81 = open(*(qword_1000885F8 + 32), 18);
    v80 = qword_1000885F8;
    *(qword_1000885F8 + 248) = v81;
    if (v81 < 0)
    {
      sub_1000633F0();
    }
  }

  asprintf(__b, "%s/apfs", *(v80 + 40));
  v82 = open(*__b, 34);
  *(qword_1000885F8 + 252) = v82;
  if (v82 < 0)
  {
    sub_1000633A0(__b);
  }

  free(*__b);
  v46 = qword_1000885F8;
LABEL_97:
  v83 = (*(*(v46 + 48) + 48))();
  *(qword_1000885F8 + 120) = v83;
  v84 = malloc_type_calloc(v83, 0x178uLL, 0x1030040695F7627uLL);
  v85 = qword_1000885F8;
  *(qword_1000885F8 + 112) = v84;
  if (*(v85 + 120))
  {
    v86 = 0;
    v87 = 0;
    do
    {
      *(v85 + 348) = v87;
      v88 = *(v85 + 112) + v86 + 112;
      (*(*(v85 + 48) + 56))();
      v89 = sub_100016760(qword_1000885F8, *(qword_1000885F8 + 112) + v86, v87);
      if (v89)
      {
        v445 = v89;
        fprintf(__stderrp, "hfs_volume_init() failed for volume %u (error %d)\n", v87, v89);
        v446 = 7221;
        v447 = 242;
        goto LABEL_576;
      }

      ++v87;
      v85 = qword_1000885F8;
      v90 = *(qword_1000885F8 + 120);
      v86 += 376;
    }

    while (v87 < v90);
    *(qword_1000885F8 + 208) = *(*(qword_1000885F8 + 112) + 128);
    if (v90 >= 2)
    {
      v91 = 1;
      v92 = 504;
      do
      {
        v93 = *(*(v85 + 112) + v92);
        if (*(v85 + 208) > v93)
        {
          *(v85 + 208) = v93;
          if (dword_1000885E4)
          {
            printf("APFS filesystem block size is set to %u\n", v93);
            v85 = qword_1000885F8;
          }
        }

        ++v91;
        v92 += 376;
      }

      while (v91 < *(v85 + 120));
    }
  }

  else
  {
    *(v85 + 208) = v84[32];
  }

  (*(*(v85 + 48) + 72))();
  v94 = *(qword_1000885F8 + 208);
  v95 = ((*(qword_1000885F8 + 192) + (8 * v94) - 1) / (8 * v94) + v94 - 1) / v94 * v94;
  *(qword_1000885F8 + 224) = v95;
  v96 = malloc_type_calloc(v95 >> 3, 8uLL, 0x100004000313F17uLL);
  v97 = qword_1000885F8;
  *(qword_1000885F8 + 216) = v96;
  if (v96)
  {
    v98 = *(v97 + 208);
    if (*(v97 + 224) >= v98)
    {
      v99 = 0;
      do
      {
        v100 = sub_100017DD0(v97, 0, v99 * v98, v98, &v96[v99 * v98]);
        if (v100)
        {
          v445 = v100;
          fprintf(__stderrp, "hfs_bitmap_read_le failed with error %d\n", v100);
          v446 = 6677;
          v447 = 260;
LABEL_576:
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v446, v447, v445);
        }

        sub_100019AA8(*(qword_1000885F8 + 216), 0, 1, qword_1000885F8);
        ++v99;
        v97 = qword_1000885F8;
        v98 = *(qword_1000885F8 + 208);
      }

      while (v99 < *(qword_1000885F8 + 224) / v98);
    }
  }

  v101 = (*(*(v97 + 48) + 64))();
  v102 = qword_1000885F8;
  *(qword_1000885F8 + 272) = v101;
  v103 = *(v102 + 120);
  if (v103)
  {
    v104 = (*(v102 + 112) + 136);
    do
    {
      v101 += *v104 * *(v104 - 2);
      v104 += 94;
      --v103;
    }

    while (v103);
    *(v102 + 272) = v101;
  }

  if (dword_1000885E4)
  {
    printf("    %'llu bytes\n    %'llu free (%llu%%) before conversion\n", *(v102 + 168), v101, (100 * v101) / *(v102 + 168));
  }

  if (dword_100088618)
  {
    if (dword_1000885E4)
    {
      *__b = time(0);
      v105 = ctime(__b);
      printf("%.24s: Gathering pre-conversion statistics\n", v105);
    }

    allocator = v29;
    v106 = qword_1000885F8;
    if (*(qword_1000885F8 + 120))
    {
      v107 = 0;
      v489 = 0;
      v490 = 0;
      v491 = 0;
      v492 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v473 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      dst = 0;
      v119 = 332;
      do
      {
        v477 = v114;
        v474 = v115;
        v479 = v113;
        v475 = v112;
        v481 = v111;
        v483 = v118;
        v485 = v117;
        v487 = v116;
        v493 = v108;
        *(v106 + 348) = v107;
        v120 = *(v106 + 112);
        v121 = (v120 + v119 - 284);
        v122 = sub_10001623C(*v121);
        v123 = (v120 + v119 - 292);
        v124 = sub_10001623C(*v123);
        v125 = (v120 + v119 - 276);
        if (*v125)
        {
          v473 += sub_10001623C(*v125);
        }

        v126 = *(v120 + v119 - 260);
        if (v126)
        {
          dst += sub_10001623C(v126);
        }

        v127 = (v120 + v119);
        v128 = *(v127 - 63);
        if (v128)
        {
          dst += sub_10001623C(v128);
        }

        v111 = v122 + v481;
        v112 = v124 + v475;
        v113 = sub_10001623C(*(v127 - 67)) + v479;
        v118 = v483 + (*v121)[13] * (*v121)[10];
        v116 = v487 + (*v123)[13] * (*v123)[10];
        v117 = v485 + (*v125)[13] * (*v125)[10];
        v108 = v493 + *(v127 - 4);
        v489 += *(v127 - 8);
        v490 += *(v127 - 5) + *(v127 - 9);
        v492 += *(v127 - 6);
        v491 += *(v127 - 7);
        v115 = *(v127 - 13) + v474;
        v109 += *v127;
        v110 += *(v127 - 2) + *(v127 - 3);
        v114 = *(v127 - 11) + v477;
        ++v107;
        v106 = qword_1000885F8;
        v119 += 376;
      }

      while (v107 < *(qword_1000885F8 + 120));
    }

    else
    {
      dst = 0;
      v118 = 0;
      v117 = 0;
      v116 = 0;
      v115 = 0;
      v114 = 0;
      v113 = 0;
      v112 = 0;
      v473 = 0;
      v111 = 0;
      v110 = 0;
      v109 = 0;
      v108 = 0;
      v492 = 0;
      v491 = 0;
      v490 = 0;
      v489 = 0;
    }

    v130 = v113 + dst + v112 + v473 + v111;
    v131 = v117 + v118 + v116;
    v132 = v131 + v113 + dst;
    v133 = v111;
    v476 = v110;
    v494 = v109;
    v488 = v116;
    v486 = v117;
    v484 = v118;
    if (qword_1000885D8)
    {
      if (v114 >= 0)
      {
        v134 = v114;
      }

      else
      {
        v134 = -v114;
      }

      v135 = -524288 - v134;
      v136 = v134 + 0x80000;
      if (v114 < 0)
      {
        v136 = v135;
      }

      v482 = v136;
      if (v115 >= 0)
      {
        v137 = v115;
      }

      else
      {
        v137 = -v115;
      }

      v138 = -50 - v137;
      v139 = v137 + 50;
      if (v115 < 0)
      {
        v139 = v138;
      }

      v480 = v139;
      if (v132 >= 0)
      {
        v140 = v132;
      }

      else
      {
        v140 = -v132;
      }

      v141 = -524288 - v140;
      v142 = v140 + 0x80000;
      if (v132 < 0)
      {
        v142 = v141;
      }

      v478 = v142;
      if (v130 >= 0)
      {
        v143 = v113 + dst + v112 + v473 + v111;
      }

      else
      {
        v143 = -v130;
      }

      v144 = -524288 - v143;
      v145 = v143 + 0x80000;
      if (v130 >= 0)
      {
        v146 = v145;
      }

      else
      {
        v146 = v144;
      }

      if (dst >= 0)
      {
        v147 = dst;
      }

      else
      {
        v147 = -dst;
      }

      v148 = -524288 - v147;
      v149 = v147 + 0x80000;
      if (dst >= 0)
      {
        v150 = v149;
      }

      else
      {
        v150 = v148;
      }

      if (v113 >= 0)
      {
        v151 = v113;
      }

      else
      {
        v151 = -v113;
      }

      v152 = -524288 - v151;
      v153 = v151 + 0x80000;
      if (v113 >= 0)
      {
        v154 = v153;
      }

      else
      {
        v154 = v152;
      }

      if (v112 >= 0)
      {
        v155 = v112;
      }

      else
      {
        v155 = -v112;
      }

      v156 = -524288 - v155;
      v157 = v155 + 0x80000;
      if (v112 >= 0)
      {
        v158 = v157;
      }

      else
      {
        v158 = v156;
      }

      if (v473 >= 0)
      {
        v159 = v473;
      }

      else
      {
        v159 = -v473;
      }

      v160 = -524288 - v159;
      v161 = v159 + 0x80000;
      if (v473 >= 0)
      {
        v162 = v161;
      }

      else
      {
        v162 = v160;
      }

      if (v133 >= 0)
      {
        v163 = v133;
      }

      else
      {
        v163 = -v133;
      }

      v164 = -524288 - v163;
      v165 = v163 + 0x80000;
      if (v133 >= 0)
      {
        v166 = v165;
      }

      else
      {
        v166 = v164;
      }

      fprintf(qword_1000885D8, "preV=%s ", "2632.40.15.0.2");
      v167 = *(qword_1000885F8 + 192);
      if (v167 >= 0)
      {
        v168 = *(qword_1000885F8 + 192);
      }

      else
      {
        v168 = -v167;
      }

      v169 = v167 < 0;
      v170 = v168 + 0x80000;
      if (v169)
      {
        v170 = -524288 - v168;
      }

      fprintf(qword_1000885D8, "sz=%lld ", v170 / 0x100000);
      fprintf(qword_1000885D8, "sz_ssd=%lld ", 0);
      v171 = *(qword_1000885F8 + 168);
      if (v171 >= 0)
      {
        v172 = *(qword_1000885F8 + 168);
      }

      else
      {
        v172 = -v171;
      }

      v169 = v171 < 0;
      v173 = v172 + 0x80000;
      if (v169)
      {
        v173 = -524288 - v172;
      }

      fprintf(qword_1000885D8, "ps=%lld ", v173 / 0x100000);
      v174 = *(qword_1000885F8 + 272);
      if (v174 >= 0)
      {
        v175 = *(qword_1000885F8 + 272);
      }

      else
      {
        v175 = -v174;
      }

      v169 = v174 < 0;
      v176 = v175 + 0x80000;
      if (v169)
      {
        v176 = -524288 - v175;
      }

      fprintf(qword_1000885D8, "sf=%lld ", v176 / 0x100000);
      fprintf(qword_1000885D8, "ca=%lld ", v166 / 0x100000);
      fprintf(qword_1000885D8, "aa=%lld ", v162 / 0x100000);
      fprintf(qword_1000885D8, "ea=%lld ", v158 / 0x100000);
      fprintf(qword_1000885D8, "ba=%lld ", v154 / 0x100000);
      fprintf(qword_1000885D8, "ja=%lld ", v150 / 0x100000);
      fprintf(qword_1000885D8, "ta=%lld ", v146 / 0x100000);
      fprintf(qword_1000885D8, "cu=%lld ", (v484 + 0x80000) >> 20);
      fprintf(qword_1000885D8, "au=%lld ", (v486 + 0x80000) >> 20);
      fprintf(qword_1000885D8, "eu=%lld ", (v488 + 0x80000) >> 20);
      fprintf(qword_1000885D8, "tu=%lld ", v478 / 0x100000);
      fprintf(qword_1000885D8, "n_d=%lld ", 100 * ((v489 + 50) / 100));
      fprintf(qword_1000885D8, "n_f=%lld ", 100 * ((v490 + 50) / 100));
      fprintf(qword_1000885D8, "n_s=%lld ", 100 * ((v491 + 50) / 100));
      fprintf(qword_1000885D8, "n_h=%lld ", 100 * ((v492 + 50) / 100));
      fprintf(qword_1000885D8, "n_lf=%lld ", 100 * ((v108 + 50) / 100));
      fprintf(qword_1000885D8, "n_le=%lld ", 100 * ((v494 + 50) / 100));
      fprintf(qword_1000885D8, "n_ea=%lld ", 100 * ((v476 + 50) / 100));
      fprintf(qword_1000885D8, "ss=%lld ", 100 * (v480 / 100));
      fprintf(qword_1000885D8, "es=%lld\n", v482 / 0x100000);
      fprintf(qword_1000885D8, "dr=%d\n", dword_100088038 == 0);
      fprintf(qword_1000885D8, "hbf=%lld\n", *(qword_1000885F8 + 336));
      fflush(qword_1000885D8);
    }

    else
    {
      v471 = (v131 + v113 + dst);
      memset(__b, 0, 265);
      LODWORD(valuePtr) = 0;
      memset(v515, 0, 265);
      memset(__dst, 0, 265);
      memset(buffer, 0, 265);
      bsdName[0] = 0xAAAAAAAAAAAAAAAALL;
      *&v177 = 0xAAAAAAAAAAAAAAAALL;
      *(&v177 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v512 = v177;
      v511 = v177;
      v510 = v177;
      v509 = v177;
      v508 = v177;
      v507 = v177;
      v506 = v177;
      v505 = v177;
      v178 = sub_100043CF8(qword_100088610);
      sub_1000435DC(v178, &v505, 0, 0x80uLL, bsdName);
      v179 = IOBSDNameMatching(kIOMasterPortDefault, 0, bsdName[0]);
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v179);
      if (!MatchingService)
      {
        sub_100063214();
      }

      v181 = MatchingService;
      v182 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Device Characteristics", allocator, 3u);
      if (v182)
      {
        v183 = v182;
        v184 = CFDictionaryGetValue(v182, @"Product Name");
        if (v184)
        {
          MutableCopy = CFStringCreateMutableCopy(0, 0, v184);
          CFStringTrimWhitespace(MutableCopy);
          CFStringGetCString(MutableCopy, __dst, 265, 0x8000100u);
          v186 = LOBYTE(__dst[0]);
          if (LOBYTE(__dst[0]))
          {
            v187 = 0;
            do
            {
              if (v186 == 32)
              {
                *(__dst + v187) = 95;
              }

              if (v187 > 0x107)
              {
                break;
              }

              v188 = __dst + v187++;
              v186 = v188[1];
            }

            while (v186);
          }
        }

        v189 = CFDictionaryGetValue(v183, @"Product Revision Level");
        if (v189)
        {
          CFStringGetCString(v189, buffer, 265, 0x8000100u);
        }

        v190 = CFDictionaryGetValue(v183, @"Medium Type");
        if (v190)
        {
          CFStringGetCString(v190, __b, 8, 0x8000100u);
        }

        v191 = CFDictionaryGetValue(v183, @"Rotation Rate");
        if (v191)
        {
          CFNumberGetValue(v191, kCFNumberIntType, &valuePtr);
        }

        CFRelease(v183);
      }

      v192 = IORegistryEntrySearchCFProperty(v181, "IOService", @"Protocol Characteristics", allocator, 3u);
      if (v192)
      {
        v193 = v192;
        v194 = CFDictionaryGetValue(v192, @"Physical Interconnect");
        v195 = v471;
        if (v194)
        {
          CFStringGetCString(v194, v515, 265, 0x8000100u);
        }

        v196 = CFDictionaryGetValue(v193, @"Physical Interconnect Location");
        if (v196)
        {
          CFStringCompare(v196, @"Internal", 0);
        }

        CFRelease(v193);
      }

      else
      {
        v195 = v471;
      }

      if (v195 >= 0)
      {
        v197 = v195;
      }

      else
      {
        v197 = -v195;
      }

      v198 = -524288 - v197;
      v199 = v197 + 0x80000;
      if (v195 >= 0)
      {
        v200 = v199;
      }

      else
      {
        v200 = v198;
      }

      v201 = *(qword_1000885F8 + 192);
      (*(*(qword_1000885F8 + 48) + 104))(*(qword_1000885F8 + 48), 0);
      if (*(qword_1000885F8 + 272) >= 0)
      {
        v202 = *(qword_1000885F8 + 272);
      }

      if (*(qword_1000885F8 + 168) >= 0)
      {
        v203 = *(qword_1000885F8 + 168);
      }

      if (v489 >= 0)
      {
        v204 = v489;
      }

      else
      {
        v204 = -v489;
      }

      v205 = 100 * ((v204 + 50) / 100);
      if (v490 >= 0)
      {
        v206 = v490;
      }

      else
      {
        v206 = -v490;
      }

      v470 = *(qword_1000885F8 + 336);
      v469 = **(qword_1000885F8 + 48);
      sub_1000442D8(qword_100088610, 1003, (v486 + 0x80000) >> 20, (v488 + 0x80000) >> 20, v200 / 0x100000, v205, 100 * ((v206 + 50) / 100), "rs", "preV");
    }

    v129 = qword_1000885F8;
    *(qword_1000885F8 + 368) = 1;
    v3 = &selRef_UTF8String;
  }

  else
  {
    v129 = qword_1000885F8;
  }

  *(v129 + 352) = 2;
  if (dword_1000885E4)
  {
    *__b = time(0);
    v207 = ctime(__b);
    printf("%.24s: Creating APFS container\n", v207);
    v129 = qword_1000885F8;
  }

  *&v497 = v129;
  *(&v497 + 1) = sub_100017930;
  *&v498 = 0;
  *(&v498 + 1) = sub_100017DD0;
  *(v129 + 408) = *(v129 + 208);
  v208 = sub_100044394((v129 + 384), v129 + 392, &v497, (v129 + 104));
  if (v208)
  {
    v459 = v208;
    fwrite("nx_format failed\n", 0x11uLL, 1uLL, __stderrp);
    v463 = 7331;
    v464 = 69;
LABEL_627:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v463, v464, v459);
  }

  sub_10005FD10(*(qword_1000885F8 + 104), 1);
  v209 = qword_1000885F8;
  v210 = *(qword_1000885F8 + 104);
  *(v210 + 616) = sub_10000B6E4;
  if (dword_1000885E4)
  {
    __dst[0] = -1431655766;
    *__b = 0xAAAAAAAAAAAAAAAALL;
    v515[0] = 0xAAAAAAAAAAAAAAAALL;
    v211 = sub_10005530C(v210, __dst, __b, 0, 0, v515, 0);
    if (v211)
    {
      v418 = v211;
      fprintf(__stderrp, "Error %d from spaceman_info\n", v211);
      v443 = 7351;
      v444 = 70;
      goto LABEL_563;
    }

    v212 = v515[0] * __dst[0];
    printf("    %'llu bytes free (%llu%%)\n", v212, (100 * v515[0]) / *__b);
    v209 = qword_1000885F8;
    *(qword_1000885F8 + 288) = *(qword_1000885F8 + 272) - v212;
  }

  if (!dword_100088038 || **(v209 + 48) != 1)
  {
    goto LABEL_257;
  }

  v213 = sub_10000B7A4(0x61706673uLL);
  if (!v213)
  {
    v214 = "Removed APFS keylocker";
    goto LABEL_256;
  }

  if (v213 != 2)
  {
    v214 = "Could not remove APFS keylocker";
LABEL_256:
    puts(v214);
  }

LABEL_257:
  if (qword_100088620)
  {
    *&v215 = 0xAAAAAAAAAAAAAAAALL;
    *(&v215 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__b[112] = v215;
    *&__b[128] = v215;
    *&__b[80] = v215;
    *&__b[96] = v215;
    *&__b[48] = v215;
    *&__b[64] = v215;
    *&__b[16] = v215;
    *&__b[32] = v215;
    *__b = v215;
    v216 = fopen(qword_100088620, "rb");
    if (!v216)
    {
      v418 = *__error();
      fprintf(__stderrp, "Failed to open efi driver file %s, error %d\n", qword_100088620, v418);
      v443 = 6700;
      v444 = 155;
      goto LABEL_563;
    }

    v217 = v216;
    v218 = fileno(v216);
    if (fstat(v218, __b))
    {
      v418 = *__error();
      fprintf(__stderrp, "fstat failed for %s, error %d\n", qword_100088620, v418);
      v443 = 6707;
      v444 = 156;
      goto LABEL_563;
    }

    v219 = malloc_type_malloc(*&__b[96], 0xBA980403uLL);
    if (!v219)
    {
      fwrite("Failed to allocate memory for efi driver data\n", 0x2EuLL, 1uLL, __stderrp);
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 6715, 157, 12);
    }

    v220 = v219;
    v221 = fread(v219, 1uLL, *&__b[96], v217);
    if (v221 < *&__b[96])
    {
      v418 = *__error();
      fprintf(__stderrp, "Failed to read efi driver data, error %d\n", v418);
      v443 = 6723;
      v444 = 158;
      goto LABEL_563;
    }

    v222 = sub_100002C78(*(qword_1000885F8 + 104), v220, *&__b[96], 0);
    if (v222)
    {
      v418 = v222;
      fprintf(__stderrp, "convert_update_efi_record failed with error %d\n", v222);
      v443 = 7375;
      v444 = 159;
      goto LABEL_563;
    }
  }

  v223 = qword_1000885F8;
  v224 = *(qword_1000885F8 + 120);
  if ((*(qword_1000885F8 + 476) & 0x100) != 0 && v224 >= 2)
  {
    fwrite("unified_devt disallowed for multiple volume conversion\n", 0x37uLL, 1uLL, __stderrp);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 7386, 392, 22);
  }

  if (v224)
  {
    v225 = 0;
    for (i = 0; i < *(v223 + 120); ++i)
    {
      *(v223 + 352) = 2;
      *(v223 + 348) = i;
      v227 = *(v223 + 112);
      v501 = 0xAAAAAAAAAAAAAAAALL;
      v500 = 0;
      memset(v515, 170, 0x206uLL);
      *&v228 = 0xAAAAAAAAAAAAAAAALL;
      *(&v228 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&__dst[116] = v228;
      *&__dst[120] = v228;
      *&__dst[108] = v228;
      *&__dst[112] = v228;
      *&__dst[100] = v228;
      *&__dst[104] = v228;
      *&__dst[92] = v228;
      *&__dst[96] = v228;
      *&__dst[84] = v228;
      *&__dst[88] = v228;
      *&__dst[76] = v228;
      *&__dst[80] = v228;
      *&__dst[68] = v228;
      *&__dst[72] = v228;
      *&__dst[60] = v228;
      *&__dst[64] = v228;
      *&__dst[52] = v228;
      *&__dst[56] = v228;
      *&__dst[44] = v228;
      *&__dst[48] = v228;
      *&__dst[36] = v228;
      *&__dst[40] = v228;
      *&__dst[28] = v228;
      *&__dst[32] = v228;
      *&__dst[20] = v228;
      *&__dst[24] = v228;
      *&__dst[12] = v228;
      *&__dst[16] = v228;
      *&__dst[4] = v228;
      *&__dst[8] = v228;
      *__dst = v228;
      v502 = time(0);
      if (*(v3 + 377))
      {
        v229 = ctime(&v502);
        printf("%.24s: Converting slice #%u\n", v229, i);
      }

      v230 = *(v227 + v225 + 216);
      if (v230 && (byte_100088034 & 1) == 0)
      {
        *(qword_1000885F8 + 352) = 3;
        if (*(v3 + 377))
        {
          *__b = time(0);
          v231 = ctime(__b);
          printf("%.24s: Checking for directory hard links\n", v231);
          v230 = *(v227 + v225 + 216);
        }

        sub_1000172B4(v230, &unk_100064CAF, v515);
        *&v505 = _NSConcreteStackBlock;
        *(&v505 + 1) = 0x40000000;
        *&v506 = sub_10000BADC;
        *(&v506 + 1) = &unk_100084A58;
        *&v507 = v227 + v225;
        v232 = sub_1000176A0(v227 + v225, v515, &v505);
        if (v232)
        {
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 5588, 56, v232);
        }
      }

      v233 = *(v3 + 377);
      if (v233)
      {
        v234 = *(v227 + v225 + 56);
        v235 = *(*(v227 + v225 + 64) + 12);
        v237 = *(v227 + v225 + 40);
        v236 = *(v227 + v225 + 48);
        v238 = v237[3] + v235 + v236[3] + v234[3];
        v239 = *(v227 + v225 + 80);
        if (v239)
        {
          v238 += *(v239 + 12);
        }

        v240 = *(v227 + v225 + 72);
        if (v240)
        {
          v238 += *(v240 + 12);
        }

        v241 = v227 + v225;
        v242 = *(v227 + v225 + 88);
        if (v242)
        {
          v238 += *(v242 + 12);
        }

        v243 = *(v241 + 128);
        *(v241 + 264) = v243 * v238;
        v244 = *(v241 + 272) + 2 * v243 + v243 * v235 + v237[13] * v237[10] + v236[13] * v236[10] + v234[13] * v234[10];
        *(v241 + 272) = v244;
        if (v239)
        {
          v244 += *(v239 + 12) * v243;
          *(v241 + 272) = v244;
        }

        if (v240)
        {
          v244 += *(v240 + 12) * v243;
          *(v241 + 272) = v244;
        }

        if (v242)
        {
          *(v241 + 272) = v244 + *(v242 + 12) * v243;
        }
      }

      if (dword_1000885E8)
      {
        *__b = time(0);
        *(v227 + v225 + 256) = *(v227 + v225 + 264);
        v245 = ctime(__b);
        printf("%.24s: Estimated %'llu bytes of metadata\n", v245, *(v227 + v225 + 264));
        v233 = *(v3 + 377);
      }

      v246 = qword_1000885F8;
      *(qword_1000885F8 + 352) = 4;
      if (v233)
      {
        *__b = time(0);
        v247 = ctime(__b);
        printf("%.24s: Creating empty apfs file system\n", v247);
        printf("    Volume name: %s\n", *(v227 + v225 + 24));
        v246 = qword_1000885F8;
      }

      memcpy(__dst, (v246 + 424), sizeof(__dst));
      *__dst = *(v227 + v225 + 96);
      v248 = *(v227 + v225 + 24);
      __strlcpy_chk();
      if ((__dst[13] & 0x100) != 0)
      {
        memset(__b, 170, 0x206uLL);
        *buffer = 0xAAAAAAAAAAAAAAAALL;
        bsdName[0] = 0xAAAAAAAAAAAAAAAALL;
        valuePtr = 0;
        sub_1000172B4(0x7FFFFFFu, &unk_100064CAF, __b);
        v250 = sub_100014988(*(v227 + v225 + 48), &valuePtr);
        if (v250)
        {
          v251 = v250;
          fwrite("failed to init btree for iteration \n", 0x24uLL, 1uLL, __stderrp);
          v452 = 948;
          v453 = 386;
          goto LABEL_612;
        }

        v251 = sub_100014A60(valuePtr, __b, buffer, bsdName);
        if ((v251 & 0xFFFFFFFD) != 0)
        {
          sub_100014A28(valuePtr);
          v452 = 976;
          v453 = 388;
LABEL_612:
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v452, v453, v251);
        }

        v252 = sub_100014BEC(valuePtr, buffer, bsdName);
        sub_100014A28(valuePtr);
        if ((v252 | 2) != 2)
        {
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 968, 387, 14);
        }

        if (!v252)
        {
          fwrite("HFS has too many files for unified dev_t conversion \n", 0x35uLL, 1uLL, __stderrp);
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 5665, 391, 7);
        }

        byte_100088A60 = 1;
        byte_100088A68 = 1;
        v249 = 0x10000000;
        HIWORD(__dst[13]) = 1;
      }

      else
      {
        v249 = 0x10000000;
        if (!byte_100088A68)
        {
          v249 = 0x200000000;
        }
      }

      qword_100088048 = v249;
      __dst[12] = i;
      if ((*(v227 + v225 + 143) & 0x40) != 0 || (v253 = *(qword_1000885F8 + 48), !*v253) && (*(v253 + 104))(v253, *(v227 + v225 + 32)))
      {
        if (*(v3 + 377))
        {
          puts("    apfs_encrypted = true");
        }

        LOWORD(__dst[13]) |= 1u;
        *&buffer[29] = 0xAAAAAAAAAAAAAAAALL;
        *&v254 = 0xAAAAAAAAAAAAAAAALL;
        *(&v254 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *buffer = v254;
        *&buffer[16] = v254;
        uuid_unparse(__dst, buffer);
        if (*(v3 + 377))
        {
          printf("    uuid = %s\n", buffer);
        }

        if (*(qword_1000885F8 + 40))
        {
          *&__b[304] = 0xAAAAAAAAAAAAAAAALL;
          *&v255 = 0xAAAAAAAAAAAAAAAALL;
          *(&v255 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&__b[272] = v255;
          *&__b[288] = v255;
          *&__b[240] = v255;
          *&__b[256] = v255;
          *&__b[208] = v255;
          *&__b[224] = v255;
          *&__b[176] = v255;
          *&__b[192] = v255;
          *&__b[144] = v255;
          *&__b[160] = v255;
          *&__b[112] = v255;
          *&__b[128] = v255;
          *&__b[80] = v255;
          *&__b[96] = v255;
          *&__b[48] = v255;
          *&__b[64] = v255;
          *&__b[16] = v255;
          *&__b[32] = v255;
          *__b = v255;
          v256 = *(*(*(qword_1000885F8 + 104) + 376) + 1304);
          memset(__b, 0, 312);
          uuid_copy(__b, (*(*(qword_1000885F8 + 104) + 376) + 72));
          uuid_copy(&__b[16], __dst);
          v257 = qword_1000885F8;
          *&__b[240] = *(qword_1000885F8 + 160);
          if (!v256)
          {
            bsdName[1] = 0xAAAAAAAAAAAAAAAALL;
            bsdName[0] = 0xAAAAAAAAAAAAAAAALL;
            v258 = *(qword_1000885F8 + 104);
            if (!v258)
            {
              v259 = 22;
LABEL_630:
              sub_1000634BC(v259);
            }

            valuePtr = 0;
            v259 = sub_10006084C(v258, &valuePtr);
            if (v259)
            {
              goto LABEL_630;
            }

            v260 = sub_100058A6C(*(qword_1000885F8 + 104), 8, 1, valuePtr, bsdName, &bsdName[1]);
            v259 = sub_10006085C(*(qword_1000885F8 + 104), valuePtr, 0);
            if (v260)
            {
              v259 = v260;
            }

            if (v259)
            {
              goto LABEL_630;
            }

            v257 = qword_1000885F8;
            *(*(*(qword_1000885F8 + 104) + 376) + 1296) = *bsdName;
            *&__b[248] = *(*(*(v257 + 104) + 376) + 1296);
          }

          *&__b[280] = dword_100088038 != 0;
          v261 = getenv("__OSINSTALL_ENVIRONMENT");
          if (v261 && *v261 == 49 && !v261[1])
          {
            *&__b[296] = 1;
          }

          if (*(v3 + 377))
          {
            printf("    Preparing encryption: offset=%llu (0x%llx)\n", *&__b[240], *&__b[240]);
            v257 = qword_1000885F8;
          }

          if (v256)
          {
            sub_10005FA7C(*(v257 + 104), 0x10u);
            v257 = qword_1000885F8;
          }

          if (ffsctl(*(v257 + 252), 0x81384A06uLL, __b, 0))
          {
            sub_10006347C();
          }
        }
      }

      if ((dword_1000885EC >> i))
      {
        if (*(v3 + 377))
        {
          printf("    Fixed size: %llu (0x%llx) bytes\n", *(v227 + v225 + 112), *(v227 + v225 + 112));
        }

        *&__dst[4] = *(v227 + v225 + 112);
        *&__dst[6] = *&__dst[4];
      }

      if (byte_1000885D1 == 1)
      {
        v262 = __dst[13];
        v263 = 8;
      }

      else
      {
        v262 = __dst[13];
        if (*(*(v227 + v225 + 48) + 24) == sub_100014DF8)
        {
          v263 = 4;
        }

        else
        {
          v263 = 8;
        }
      }

      LOWORD(__dst[13]) = v262 & 0xFFF3 | v263;
      if (byte_1000885D0 == 1 && v263 == 8)
      {
        puts("Creating a normalization-sensitive volume");
        LOWORD(__dst[13]) &= 0xFFF3u;
      }

      v264 = sub_10003C4BC(*(qword_1000885F8 + 104), __dst, 0, 0, &v500);
      if (v264)
      {
        v251 = v264;
        fwrite("apfs_newfs failed\n", 0x12uLL, 1uLL, __stderrp);
        v452 = 5906;
        v453 = 58;
        goto LABEL_612;
      }

      v265 = v500;
      v266 = v227 + v225;
      *(v227 + v225 + 8) = v500;
      v267 = 0x300000000;
      if (byte_100088A68)
      {
        v267 = 0x110000000;
      }

      v268 = v265[47];
      if ((*(v268 + 40) & 0x10) != 0)
      {
        v267 = 0xFFFFFFF20000000;
      }

      *(v268 + 176) = v267;
      *(qword_1000885F8 + 352) = 5;
      if ((*(v227 + v225 + 141) & 0x20) != 0)
      {
        v269 = *(v266 + 80);
        if (!v269)
        {
          sub_1000637AC();
        }

        v270 = v227 + v225;
        if (!*(v227 + v225 + 72))
        {
          sub_10006377C();
        }

        bsdName[0] = 0xAAAAAAAAAAAAAAAALL;
        valuePtr = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_10001620C(v269, bsdName))
        {
          sub_1000634F4();
        }

        v271 = *(v227 + v225 + 120);
        if (bsdName[0] != v271)
        {
          sub_100063524(v271, bsdName[0]);
        }

        v272 = *(v266 + 80);
        if (*(v272 + 12) != 1)
        {
          sub_10006355C(*(v272 + 12));
        }

        *&__b[176] = -1431655766;
        *&v273 = 0xAAAAAAAAAAAAAAAALL;
        *(&v273 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__b[144] = v273;
        *&__b[160] = v273;
        *&__b[112] = v273;
        *&__b[128] = v273;
        *&__b[80] = v273;
        *&__b[96] = v273;
        *&__b[48] = v273;
        *&__b[64] = v273;
        *&__b[16] = v273;
        *&__b[32] = v273;
        *__b = v273;
        v274 = sub_100016250(v272, 0, 0xB4uLL, __b);
        if (v274)
        {
          sub_100063594(v274);
        }

        v275 = bswap32(*__b);
        if ((v275 & 0xFFFFFFFB) != 1)
        {
          warnx("Journal flags are unexpected (0x%x)", v275);
        }

        if (!sub_10001620C(*(v270 + 72), &valuePtr))
        {
          sub_1000635CC();
        }

        v276 = bswap64(*&__b[36]);
        if (valuePtr != v276)
        {
          sub_1000635FC(valuePtr, v276);
        }

        v277 = *(v270 + 72);
        v278 = *(v227 + v225 + 128) * *(v277 + 12);
        v279 = bswap64(*&__b[44]);
        if (v278 != v279)
        {
          sub_100063634(*(v227 + v225 + 128) * *(v277 + 12), v279);
        }

        if ((__b[3] & 4) != 0)
        {
          goto LABEL_357;
        }

        *&v280 = 0xAAAAAAAAAAAAAAAALL;
        *(&v280 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&buffer[16] = v280;
        *&buffer[32] = v280;
        *buffer = v280;
        v281 = sub_100016250(v277, 0, 0x30uLL, buffer);
        if (v281)
        {
          sub_10006366C(v281);
        }

        if (*buffer != 0x123456784A4E4C78)
        {
          sub_100063744(*buffer, *&buffer[4]);
        }

        if (*&buffer[8] == *&buffer[16])
        {
LABEL_357:
          if (dword_1000885E4)
          {
            printf("    Freeing journal (offset=0x%llx, size=0x%llx)\n", valuePtr, v278);
          }

          *__b |= 0x4000000u;
          v282 = sub_100016310(*(v266 + 80), 0, 0xB4uLL, __b);
          if (v282)
          {
            sub_1000636D4(v282);
          }

          v283 = sub_100015BF4((qword_1000885F8 + 384), 0);
          v3 = &selRef_UTF8String;
          if (v283 && v283 != 45)
          {
            sub_10006370C(v283);
          }

          *buffer = 0;
          v284 = sub_10006084C(v265[49], buffer);
          if (v284)
          {
            v351 = v284;
            fprintf(__stderrp, "tx_enter failed: %d\n", v284);
            v450 = 4527;
            goto LABEL_599;
          }

          v73 = sub_10004B964(v265, 0, *buffer);
          if (!v73)
          {
            v73 = sub_10000BC28(*(v270 + 72), v265, *buffer, 4530);
          }

          v285 = sub_10006085C(v265[49], *buffer, 0);
          if (v285)
          {
            v289 = v285;
            fprintf(__stderrp, "tx_leave failed: %d\n", v285);
            v454 = 4533;
            v455 = 165;
LABEL_601:
            sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v454, v455, v289);
          }

          sub_100014A28(*(v270 + 72));
          *(v270 + 72) = 0;
          if (v73)
          {
            return v73;
          }
        }

        else
        {
          if (byte_1000885D2 != 1)
          {
            sub_1000636A4();
          }

          warnx("Journal is not empty!  Continuing (but not freeing journal).");
          v3 = &selRef_UTF8String;
        }
      }

      else
      {
        warnx("Volume is not journaled!");
        v3 = &selRef_UTF8String;
      }

      *(qword_1000885F8 + 352) = 7;
      v286 = v500;
      if (*(v3 + 377))
      {
        *buffer = time(0);
        v287 = ctime(buffer);
        printf("%.24s: Converting catalog B-tree\n", v287);
      }

      v288 = *(v227 + v225 + 48);
      *__b = _NSConcreteStackBlock;
      *&__b[8] = 0x40000000;
      *&__b[16] = sub_10000BF84;
      *&__b[24] = &unk_100084A78;
      *&__b[32] = v286;
      *&__b[40] = v227 + v225;
      v289 = sub_100014F3C(v288, __b);
      if (v289)
      {
        fprintf(__stderrp, "hfs_catalog_iter_b() failed: %d\n", v289);
      }

      else
      {
        sub_10000EB20(v227 + v225, v286, 1);
      }

      v290 = (v227 + v225);
      v291 = *(v227 + v225 + 176);
      if (v291)
      {
        free(v291);
        v290[22] = 0;
      }

      v290[23] = 0;
      v292 = v290[24];
      if (v292)
      {
        free(v292);
        v290[24] = 0;
      }

      *(v227 + v225 + 200) = 0;
      if (v289)
      {
        v454 = 5959;
        v455 = 249;
        goto LABEL_601;
      }

      *(qword_1000885F8 + 352) = 8;
      v293 = v500;
      if (*(v3 + 377))
      {
        *buffer = time(0);
        v294 = ctime(buffer);
        printf("%.24s: Converting attributes B-tree\n", v294);
      }

      v295 = *(v227 + v225 + 56);
      *__b = _NSConcreteStackBlock;
      *&__b[8] = 0x40000000;
      *&__b[16] = sub_10000F7F8;
      *&__b[24] = &unk_100084AD8;
      *&__b[32] = v293;
      *&__b[40] = v227 + v225;
      v296 = sub_100014F3C(v295, __b);
      if (v296)
      {
        v73 = v296;
        fprintf(__stderrp, "hfs_convert_attributes_tree:hfs_btree_scan_b() failed: %d\n", v296);
        return v73;
      }

      *(qword_1000885F8 + 352) = 9;
      v297 = v500;
      if (*(v3 + 377))
      {
        *buffer = time(0);
        v298 = ctime(buffer);
        printf("%.24s: Converting extents B-tree\n", v298);
      }

      v299 = *(v227 + v225 + 40);
      *__b = _NSConcreteStackBlock;
      *&__b[8] = 0x40000000;
      *&__b[16] = sub_1000106BC;
      *&__b[24] = &unk_100084B18;
      *&__b[32] = v297;
      *&__b[40] = v227 + v225;
      v300 = sub_100014F3C(v299, __b);
      if (v300)
      {
        v456 = v300;
        fprintf(__stderrp, "hfs_extents_iter_b() failed: %d\n", v300);
        v457 = 5972;
        v458 = 250;
        goto LABEL_607;
      }

      *(qword_1000885F8 + 352) = 11;
      v301 = v500;
      *__b = 0;
      v302 = sub_10006084C(v500[49], __b);
      if (v302)
      {
        v289 = v302;
        fprintf(__stderrp, "tx_enter failed: %d\n", v302);
        v454 = 4870;
        v455 = 164;
        goto LABEL_601;
      }

      v303 = sub_10004B964(v301, 0, *__b);
      if (v303)
      {
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4874, 378, v303);
      }

      *(*(v301 + 376) + 232) = 0;
      v304 = sub_100031204(v301, 1, *(v301 + 488), *__b);
      if (v304)
      {
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4883, 376, v304);
      }

      sub_10003728C(v301, *__b);
      v305 = sub_10006085C(*(v301 + 392), *__b, 0);
      if (v305)
      {
        v456 = v305;
        fprintf(__stderrp, "tx_leave failed: %d\n", v305);
        v457 = 4890;
        v458 = 165;
        goto LABEL_607;
      }

      v501 = time(0);
      if (*(v3 + 377) && (v306 = ctime(&v501), printf("%.24s: Done converting slice #%u\n", v306, i), *(v3 + 377)))
      {
        v307 = v501 - v502;
        printf("    %'9u files\n", *(v227 + v225 + 296));
        printf("    %'9u folders\n", *(v227 + v225 + 300));
        printf("    %'9u symlinks\n", *(v227 + v225 + 304));
        printf("    %'9u hard link inodes\n", *(v227 + v225 + 312));
        printf("    %'9u hard links\n", *(v227 + v225 + 308));
        printf("    %'9u inline EAs\n", *(v227 + v225 + 320) - *(v227 + v225 + 336));
        printf("    %'9u extent-based EAs\n", *(v227 + v225 + 324));
        printf("    %'9u extent-based EA overflow records\n", *(v227 + v225 + 328));
        printf("    %'9u crypto state records\n", *(v227 + v225 + 336));
        printf("        %'9u class 0\n", *(v227 + v225 + 340));
        printf("        %'9u class A\n", *(v227 + v225 + 344));
        printf("        %'9u class B\n", *(v227 + v225 + 348));
        printf("        %'9u class C\n", *(v227 + v225 + 352));
        printf("        %'9u class D\n", *(v227 + v225 + 356));
        printf("        %'9u class E\n", *(v227 + v225 + 360));
        printf("        %'9u class F\n", *(v227 + v225 + 364));
        printf("    Conversion took %ld seconds\n", v307);
        v308 = *(v3 + 377) == 0;
      }

      else
      {
        v308 = 1;
      }

      v309 = qword_1000885F8;
      *(qword_1000885F8 + 304) = vaddq_s64(*(qword_1000885F8 + 304), *(v227 + v225 + 264));
      *(v309 + 352) = 2;
      if (!v308)
      {
        *__b = time(0);
        v310 = ctime(__b);
        printf("%.24s: Flushing transactions\n", v310);
        v309 = qword_1000885F8;
      }

      v311 = sub_10005FD10(*(v309 + 104), 1);
      if (v311)
      {
        sub_1000637DC(v311);
      }

      v223 = qword_1000885F8;
      if (*(v3 + 377))
      {
        __dst[0] = -1431655766;
        *__b = 0xAAAAAAAAAAAAAAAALL;
        v515[0] = 0xAAAAAAAAAAAAAAAALL;
        v312 = sub_10005530C(*(qword_1000885F8 + 104), __dst, __b, 0, 0, v515, 0);
        if (v312)
        {
          v456 = v312;
          fprintf(__stderrp, "Error %d from spaceman_info\n", v312);
          v457 = 7426;
          v458 = 72;
LABEL_607:
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v457, v458, v456);
        }

        v313 = v515[0] * __dst[0];
        printf("    %'llu bytes free (%llu%%)\n", v313, (100 * v515[0]) / *__b);
        v223 = qword_1000885F8;
        *(qword_1000885F8 + 288) = *(qword_1000885F8 + 272) - v313;
      }

      v225 += 376;
    }
  }

  v314 = time(0);
  v315 = qword_1000885F8;
  *(qword_1000885F8 + 264) = v314;
  *(v315 + 352) = 2;
  if (*(v3 + 377))
  {
    v316 = ctime((v315 + 264));
    printf("%.24s: Flushing transactions\n", v316);
    v315 = qword_1000885F8;
  }

  v317 = sub_10005FD10(*(v315 + 104), 1);
  if (v317)
  {
    printf("tx_finish() returned %d, tx still active?\n", v317);
  }

  if (*(v3 + 377))
  {
    __dst[0] = -1431655766;
    *__b = 0xAAAAAAAAAAAAAAAALL;
    v515[0] = 0xAAAAAAAAAAAAAAAALL;
    v318 = sub_10005530C(*(qword_1000885F8 + 104), __dst, __b, 0, 0, v515, 0);
    if (v318)
    {
      v418 = v318;
      fprintf(__stderrp, "Error %d from spaceman_info\n", v318);
      v443 = 7460;
      v444 = 73;
      goto LABEL_563;
    }

    v319 = v515[0] * __dst[0];
    printf("    %'llu bytes free (%llu%%)\n", v319, (100 * v515[0]) / *__b);
    v320 = *(qword_1000885F8 + 272) - v319;
    *(qword_1000885F8 + 288) = v320;
    printf("    %'lld bytes used by APFS\n", v320);
    printf("    %'llu bytes used by HFS\n", *(qword_1000885F8 + 312));
    printf("    %'llu bytes allocated by HFS\n", *(qword_1000885F8 + 304));
    v321 = *(v3 + 377);
    v322 = qword_1000885F8;
    *(qword_1000885F8 + 352) = 12;
    if (v321)
    {
      *__b = time(0);
      v323 = ctime(__b);
      printf("%.24s: Freeing HFS metadata\n", v323);
      v322 = qword_1000885F8;
    }
  }

  else
  {
    v322 = qword_1000885F8;
    *(qword_1000885F8 + 352) = 12;
  }

  if (*(v322 + 120))
  {
    v324 = 0;
    v325 = &unk_100084B38;
    while (1)
    {
      *(v322 + 348) = v324;
      v326 = *(v322 + 112) + 376 * v324;
      v327 = *(v326 + 8);
      v515[0] = 0xAAAAAAAAAAAAAAAALL;
      v328 = *(v326 + 48);
      *__b = _NSConcreteStackBlock;
      *&__b[8] = 0x40000000;
      *&__b[16] = sub_100010878;
      *&__b[24] = v325;
      *&__b[32] = v327;
      *&__b[40] = v326;
      v329 = sub_100014F3C(v328, __b);
      if (v329)
      {
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4238, 245, v329);
      }

      v515[0] = 0;
      v330 = sub_10006084C(v327[49], v515);
      if (v330)
      {
        break;
      }

      v331 = sub_10004B964(v327, 0, v515[0]);
      if (v331)
      {
        v448 = v331;
        v449 = sub_10006085C(v327[49], v515[0], 0);
        if (!v449)
        {
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4246, 246, v448);
        }

        v418 = v449;
        fprintf(__stderrp, "tx_leave failed: %d\n", v449);
        v443 = 4245;
LABEL_603:
        v444 = 165;
LABEL_563:
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v443, v444, v418);
      }

      if (**(*v326 + 48) <= 1u)
      {
        *__b = 0xAAAAAAAAAAAAAAAALL;
        *__dst = 0xAAAAAAAAAAAAAAAALL;
        if (sub_100017CE0(v326, 0, *(v326 + 128), __b, __dst))
        {
          fprintf(__stderrp, "hfs_free_metadata: hfs_to_apfs returned error %d for volume header address mapping\n", 2);
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4261, 247, 2);
        }

        if (*__b)
        {
          v332 = sub_10000BCB0(v326, v327, 0, 1u, v515[0], 4268);
          if (v332)
          {
            v351 = v332;
            fprintf(__stderrp, "hfs_free_metadata: hfs_free_extent returned error %d for volume header\n", v332);
            v450 = 4271;
            v451 = 248;
LABEL_609:
            sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v450, v451, v351);
          }
        }
      }

      v333 = *(v326 + 128);
      if (v333 == 512)
      {
        v334 = 2;
      }

      else
      {
        v334 = 1;
      }

      v335 = sub_10000BCB0(v326, v327, (*(v326 + 112) / v333) - v334, v334, v515[0], 4285);
      if (v335)
      {
        v351 = v335;
        fprintf(__stderrp, "hfs_free_metadata: hfs_free_extent returned error %d for freeing blocks of alternate volume header\n", v335);
        v450 = 4288;
        v451 = 233;
        goto LABEL_609;
      }

      v336 = *(v326 + 72);
      if (v336)
      {
        v337 = sub_10000BC28(v336, v327, v515[0], 4295);
        if (v337)
        {
          v351 = v337;
          fprintf(__stderrp, "Error %d freeing blocks for journal\n", v337);
          v450 = 4298;
          v451 = 234;
          goto LABEL_609;
        }
      }

      v338 = *(v326 + 80);
      if (v338)
      {
        v339 = sub_10000BC28(v338, v327, v515[0], 4306);
        if (v339)
        {
          v351 = v339;
          fprintf(__stderrp, "Error %d freeing blocks for journal info block\n", v339);
          v450 = 4309;
          v451 = 235;
          goto LABEL_609;
        }
      }

      v340 = sub_10000BC28(*(v326 + 64), v327, v515[0], 4316);
      if (v340)
      {
        v351 = v340;
        fprintf(__stderrp, "Error %d freeing blocks for volume bitmap\n", v340);
        v450 = 4319;
        v451 = 254;
        goto LABEL_609;
      }

      v341 = sub_10000BC28(*(v326 + 48), v327, v515[0], 4325);
      if (v341)
      {
        v351 = v341;
        fprintf(__stderrp, "Error %d freeing blocks for Catalog B-tree\n", v341);
        v450 = 4328;
        v451 = 255;
        goto LABEL_609;
      }

      v342 = sub_10000BC28(*(v326 + 56), v327, v515[0], 4334);
      if (v342)
      {
        v351 = v342;
        fprintf(__stderrp, "Error %d freeing blocks for Attributes B-tree\n", v342);
        v450 = 4337;
        v451 = 256;
        goto LABEL_609;
      }

      v343 = *(v326 + 88);
      if (v343)
      {
        v344 = sub_10000BC28(v343, v327, v515[0], 4344);
        if (v344)
        {
          v351 = v344;
          fprintf(__stderrp, "Error %d freeing blocks for Hot Files B-tree\n", v344);
          v450 = 4347;
          v451 = 239;
          goto LABEL_609;
        }
      }

      v345 = sub_10000BC28(*(v326 + 40), v327, v515[0], 4354);
      if (v345)
      {
        v351 = v345;
        fprintf(__stderrp, "Error %d freeing blocks for Extents B-tree\n", v345);
        v450 = 4357;
        v451 = 240;
        goto LABEL_609;
      }

      if (*(v326 + 160) && *(v326 + 168))
      {
        v346 = v325;
        v347 = 0;
        v348 = 1;
        do
        {
          v349 = sub_10000BCB0(v326, v327, *(*(v326 + 160) + v347), *(*(v326 + 160) + v347 + 4), v515[0], 4366);
          if (v349)
          {
            v350 = 1;
          }

          else
          {
            v350 = v348 >= *(v326 + 168);
          }

          ++v348;
          v347 += 8;
        }

        while (!v350);
        v351 = v349;
        v325 = v346;
        if (v349)
        {
          fprintf(__stderrp, "Error %d freeing blocks for large extended attributes\n", v349);
          v450 = 4370;
          v451 = 241;
          goto LABEL_609;
        }
      }

      v352 = sub_10006085C(v327[49], v515[0], 0);
      if (v352)
      {
        v445 = v352;
        fprintf(__stderrp, "tx_leave failed: %d\n", v352);
        v446 = 4376;
        v447 = 165;
        goto LABEL_576;
      }

      ++v324;
      v322 = qword_1000885F8;
      if (v324 >= *(qword_1000885F8 + 120))
      {
        goto LABEL_445;
      }
    }

    v351 = v330;
    fprintf(__stderrp, "tx_enter failed: %d\n", v330);
    v450 = 4242;
LABEL_599:
    v451 = 164;
    goto LABEL_609;
  }

LABEL_445:
  v353 = *(*(v322 + 112) + 8);
  v496 = 0;
  v354 = sub_10006084C(*(v353 + 392), &v496);
  if (v354)
  {
    v418 = v354;
    fprintf(__stderrp, "tx_enter failed: %d\n", v354);
    v443 = 7494;
    v444 = 164;
    goto LABEL_563;
  }

  v515[1] = 0xAAAAAAAAAAAA0100;
  v515[0] = v496;
  v355 = (*(*(qword_1000885F8 + 48) + 32))();
  if (v355)
  {
    v418 = v355;
    fprintf(__stderrp, "Error %d from iterate_vm_metadata\n", v355);
    v443 = 7503;
    v444 = 120;
    goto LABEL_563;
  }

  v356 = sub_10006085C(*(v353 + 392), v496, 0);
  if (v356)
  {
    v418 = v356;
    fprintf(__stderrp, "tx_leave failed: %d\n", v356);
    v443 = 7505;
    goto LABEL_603;
  }

  v357 = qword_1000885F8;
  *(qword_1000885F8 + 352) = 2;
  v358 = sub_10005FD10(*(v357 + 104), 1);
  if (v358)
  {
    printf("tx_finish() returned %d, tx still active?\n", v358);
  }

  if (dword_1000885E4)
  {
    *buffer = -1431655766;
    *__b = 0xAAAAAAAAAAAAAAAALL;
    *__dst = 0xAAAAAAAAAAAAAAAALL;
    v359 = sub_10005530C(*(qword_1000885F8 + 104), buffer, __b, 0, 0, __dst, 0);
    if (v359)
    {
      v418 = v359;
      fprintf(__stderrp, "Error %d from spaceman_info\n", v359);
      v443 = 7527;
      v444 = 74;
      goto LABEL_563;
    }

    printf("    %'llu bytes free (%llu%%)\n", *__dst * *buffer, (100 * *__dst) / *__b);
    if (dword_1000885E4)
    {
      *__b = time(0);
      v360 = ctime(__b);
      printf("%.24s: Unmounting APFS volumes\n", v360);
    }
  }

  v361 = qword_1000885F8;
  if (*(qword_1000885F8 + 120))
  {
    v362 = 0;
    v363 = 8;
    do
    {
      *(v361 + 348) = v362;
      sub_10003BD88(*(*(v361 + 112) + v363));
      ++v362;
      v361 = qword_1000885F8;
      v363 += 376;
    }

    while (v362 < *(qword_1000885F8 + 120));
  }

  if (dword_1000885E4)
  {
    *__b = time(0);
    v364 = ctime(__b);
    printf("%.24s: Flushing transactions\n", v364);
    v361 = qword_1000885F8;
  }

  v365 = sub_10005FD10(*(v361 + 104), 1);
  if (v365)
  {
    printf("tx_finish() returned %d, tx still active?\n", v365);
  }

  sub_100015BF4((qword_1000885F8 + 384), 1);
  if (dword_1000885E4 || qword_1000885D8)
  {
    *buffer = -1431655766;
    *__b = 0xAAAAAAAAAAAAAAAALL;
    *__dst = 0xAAAAAAAAAAAAAAAALL;
    v368 = sub_10005530C(*(qword_1000885F8 + 104), buffer, __b, 0, 0, __dst, 0);
    if (v368)
    {
      v418 = v368;
      fprintf(__stderrp, "Error %d from spaceman_info\n", v368);
      v443 = 7573;
      v444 = 75;
      goto LABEL_563;
    }

    v369 = *__dst * *buffer;
    v370 = qword_1000885F8;
    *(qword_1000885F8 + 280) = v369;
    v370[37] = v370[34] - v369;
    if (dword_1000885E4)
    {
      printf("    %'llu bytes free (%llu%%)\n", v369, (100 * v369) / v370[21]);
      if ((*(qword_1000885F8 + 296) & 0x8000000000000000) != 0)
      {
        printf("    %'llu bytes freed by conversion\n");
      }

      else
      {
        v468 = *(qword_1000885F8 + 296);
        printf("    %'llu bytes used by conversion\n");
      }
    }
  }

  if (dword_100088038)
  {
    v371 = qword_1000885F8;
    *(qword_1000885F8 + 352) = 13;
    if (dword_1000885E4)
    {
      *__b = time(0);
      v372 = ctime(__b);
      printf("%.24s: Writing superblock\n", v372);
      v371 = qword_1000885F8;
    }

    v373 = sub_100044CB8(*(v371 + 104), v366, v367);
    if (v373)
    {
      v418 = v373;
      fprintf(__stderrp, "nx_conversion_complete() failed: %d\n", v373);
      v443 = 7610;
      v444 = 76;
      goto LABEL_563;
    }

    sub_100015BF4((qword_1000885F8 + 384), 1);
    if (dword_1000885E4)
    {
      *__b = time(0);
      v374 = ctime(__b);
      printf("%.24s: Wiping VM metadata and overwriting HFS alternate volume header\n", v374);
    }

    v375 = *(qword_1000885F8 + 48);
    if (*v375 != 1)
    {
      v376 = *(qword_1000885F8 + 112);
      v377 = *(v376 + 128);
      if (v377 == 512)
      {
        v378 = 1024;
      }

      else
      {
        v378 = v377;
      }

      v379 = *(v376 + 112) - v378;
      v380 = malloc_type_calloc(1uLL, v378, 0x59131C9EuLL);
      v381 = sub_100017378(v376, v380, v379, v378);
      if (v381)
      {
        v418 = v381;
        fprintf(__stderrp, "Error %d trying to overwrite alternate volume header\n", v381);
        v443 = 4570;
        v444 = 51;
        goto LABEL_563;
      }

      free(v380);
      v375 = *(qword_1000885F8 + 48);
    }

    *__b = xmmword_10007F7A0;
    v382 = (*(v375 + 32))(v375, sub_10000B878, __b);
    if (v382)
    {
      v418 = v382;
      fprintf(__stderrp, "Error %d from iterate_vm_metadata\n", v382);
      v443 = 6648;
      v444 = 36;
      goto LABEL_563;
    }

    v383 = (*(*(qword_1000885F8 + 48) + 80))();
    if (v383)
    {
      v418 = v383;
      fprintf(__stderrp, "conversion finish_finalize() failed: %d\n", v383);
      v443 = 7641;
      v444 = 123;
      goto LABEL_563;
    }

    sub_100015BF4((qword_1000885F8 + 384), 1);
    if ((byte_1000885D3 & 1) == 0)
    {
      sub_100044D4C(*(qword_1000885F8 + 104));
    }
  }

  if (byte_1000885D3 == 1)
  {
    *(qword_1000885F8 + 352) = 14;
    if (dword_1000885E4)
    {
      *__b = time(0);
      v384 = ctime(__b);
      printf("%.24s: Spaceman free queue count %llu\n", v384, *(*(*(*(qword_1000885F8 + 104) + 408) + 376) + 240));
      v385 = ctime(__b);
      printf("%.24s: Performing btree compaction\n", v385);
    }

    *__dst = 0xAAAAAAAAAAAAAAAALL;
    *buffer = 0xAAAAAAAAAAAAAAAALL;
    *&v505 = 0xAAAAAAAAAAAAAAAALL;
    bsdName[0] = 0xAAAAAAAAAAAAAAAALL;
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    v502 = 0;
    v501 = 0;
    v500 = 0;
    sub_100052828(0, __dst);
    v386 = sub_10003B910(*(qword_1000885F8 + 104), *(*(*(qword_1000885F8 + 104) + 376) + 184), __dst, 0, 0, (*(qword_1000885F8 + 112) + 8));
    if (v386)
    {
      v418 = v386;
      fprintf(__stderrp, "apfs_mount failed with error: %d\n");
      goto LABEL_674;
    }

    v387 = *(*(qword_1000885F8 + 112) + 8);
    v388 = *(v387 + 376);
    v389 = *(v388 + 116);
    v390 = *(v388 + 136);
    *&__b[8] = 0;
    memset(&__b[24], 0, 72);
    *__b = sub_10002E330;
    *&__b[16] = 0x20000000ELL;
    if (v389 == 2)
    {
      v391 = sub_10002462C(v387, v389 & 0xFFFF0000, v390, 0, 0, __b, 0, buffer);
      if (!v391)
      {
        v392 = sub_10005530C(*(qword_1000885F8 + 104), 0, 0, 0, 0, &valuePtr, 0);
        if (v392)
        {
          v418 = v392;
          fprintf(__stderrp, "spaceman_info failed with error: %d\n");
          goto LABEL_674;
        }

        v393 = sub_100025E3C(*buffer, &v505);
        if (v393)
        {
          goto LABEL_648;
        }

        if (dword_1000885E4)
        {
          *__b = time(0);
          v394 = ctime(__b);
          printf("%.24s: Number of current fsroot tree nodes %lld\n", v394, v505);
        }

        if (valuePtr < 150 * v505 / 0x64uLL)
        {
          fprintf(__stderrp, "Number of free blocks %lld and number of current fsroot nodes %lld. There isnt enough free space to continue..\n", valuePtr, v505);
          v418 = 28;
          goto LABEL_674;
        }

        if (dword_1000885E4)
        {
          *__b = time(0);
          v395 = ctime(__b);
          printf("%.24s: Entering a transaction for compaction\n", v395);
        }

        v396 = sub_10006084C(*(*(*(qword_1000885F8 + 112) + 8) + 392), &v501);
        if (v396)
        {
          goto LABEL_641;
        }

        v397 = sub_10004B964(*(*(qword_1000885F8 + 112) + 8), 0, v501);
        if (v397)
        {
          v418 = v397;
          fprintf(__stderrp, "obj_modify returned an error: %d\n");
          goto LABEL_674;
        }

        if (dword_1000885E4)
        {
          *__b = time(0);
          v398 = ctime(__b);
          printf("%.24s: Spaceman free queue count %llu and xid is %llu\n", v398, *(*(*(*(qword_1000885F8 + 104) + 408) + 376) + 240), v501);
          v399 = ctime(__b);
          printf("%.24s: Creating a new fsroot tree\n", v399);
        }

        v400 = *(*(qword_1000885F8 + 112) + 8);
        v401 = *(*(v400 + 376) + 116);
        *&__b[8] = 0;
        memset(&__b[24], 0, 72);
        *__b = sub_10002E330;
        *&__b[16] = 0x420000000ELL;
        if (v401 == 2)
        {
          v402 = sub_1000242A4(v400, v401 & 0xFFFF0000, 0, 0, 0, __b, v501, (qword_1000885F8 + 920));
          if (!v402)
          {
            if (dword_1000885E4)
            {
              *__b = time(0);
              v403 = ctime(__b);
              v404 = sub_100047D10(*buffer);
              v405 = sub_100047D10(*(qword_1000885F8 + 920));
              printf("%.24s: obj_id of current fsroot tree (%lld) and that of new fsroot tree (%lld)\n", v403, v404, v405);
              if (dword_1000885E4)
              {
                *__b = time(0);
                v406 = ctime(__b);
                printf("%.24s: Iterating over fsroot tree records\n", v406);
              }
            }

            v407 = sub_100033D20(*(*(qword_1000885F8 + 112) + 8), 1, 0, &v502, 8uLL, sub_100010A2C, &v501, 0, 0, 4096);
            if (v407)
            {
              v418 = v407;
              fprintf(__stderrp, "iterate_raw_jobjs_with_hint failed with error: %d\n");
              goto LABEL_674;
            }

            if (!dword_1000885E4)
            {
              goto LABEL_513;
            }

            *__b = time(0);
            v408 = ctime(__b);
            printf("%.24s: Copied %llu fsroot tree records into new fsroot tree\n", v408, *(qword_1000885F8 + 928));
            if (!dword_1000885E4)
            {
              goto LABEL_513;
            }

            v393 = sub_100025E3C(*(qword_1000885F8 + 920), bsdName);
            if (!v393)
            {
              *__b = time(0);
              v409 = ctime(__b);
              printf("%.24s: Number of new fsroot tree nodes %lld\n", v409, bsdName[0]);
              if (dword_1000885E4)
              {
                *__b = time(0);
                v410 = ctime(__b);
                printf("%.24s: Updating the superblock\n", v410);
              }

LABEL_513:
              v411 = sub_100047D10(*(qword_1000885F8 + 920));
              v412 = *(*(qword_1000885F8 + 112) + 8);
              *(*(v412 + 376) + 136) = v411;
              sub_10003728C(v412, v501);
              if ((*(*(qword_1000885F8 + 48) + 104))())
              {
                if (dword_1000885E4)
                {
                  *__b = time(0);
                  v413 = ctime(__b);
                  printf("%.24s: Invoking omap_expunge_oids_below_watermark\n", v413);
                }

                v414 = *(*(qword_1000885F8 + 112) + 8);
                v415 = v501;
                v416 = sub_100047D10(*(qword_1000885F8 + 920));
                v417 = sub_10004FE14(v414, v415, v416, &v500);
                if (v417)
                {
                  v418 = v417;
                  fprintf(__stderrp, "omap_expunge_oids_below_watermark returned an error: %d\n");
LABEL_674:
                  fprintf(__stderrp, "Error %d from optimize_btree\n", v418);
                  v443 = 7663;
                  v444 = 379;
                  goto LABEL_563;
                }
              }

              else
              {
                if (dword_1000885E4)
                {
                  *__b = time(0);
                  v419 = ctime(__b);
                  printf("%.24s: Deleting old fsroot tree\n", v419);
                }

                v420 = sub_100025B30(*buffer, v501, &v500);
                if (v420)
                {
                  v418 = v420;
                  fprintf(__stderrp, "Deleting old fsroot tree returned error: %d\n");
                  goto LABEL_674;
                }
              }

              *(*(*(qword_1000885F8 + 112) + 8) + 3568) = *(qword_1000885F8 + 920);
              sub_100046D50(*buffer);
              sub_100046D50(*buffer);
              if (dword_1000885E4)
              {
                *__b = time(0);
                v421 = ctime(__b);
                printf("%.24s: Finishing transaction\n", v421);
              }

              v422 = sub_10006085C(*(*(*(qword_1000885F8 + 112) + 8) + 392), v501, 0);
              if (v422)
              {
                goto LABEL_642;
              }

              sub_10005FA7C(*(qword_1000885F8 + 104), 0x10u);
              v501 = 0;
              if (dword_1000885E4)
              {
                *__b = time(0);
                v423 = ctime(__b);
                printf("%.24s: Spaceman free queue count %llu\n", v423, *(*(*(*(qword_1000885F8 + 104) + 408) + 376) + 240));
                v424 = ctime(__b);
                printf("%.24s: Waiting for reaper to finish\n", v424);
              }

              v425 = sub_100042014(*(*(*(qword_1000885F8 + 112) + 8) + 392), v500);
              if (v425)
              {
                v418 = v425;
                fprintf(__stderrp, "nx_reaper_wait returned an error: %d\n");
                goto LABEL_674;
              }

              v426 = sub_10005FD10(*(*(*(qword_1000885F8 + 112) + 8) + 392), 1);
              if (v426)
              {
                v418 = v426;
                fprintf(__stderrp, "tx_finish failed with error: %d\n");
                goto LABEL_674;
              }

              sub_10005FA7C(*(qword_1000885F8 + 104), 0x10u);
              v501 = 0;
              v396 = sub_10006084C(*(*(*(qword_1000885F8 + 112) + 8) + 392), &v501);
              if (!v396)
              {
                v422 = sub_10006085C(*(*(*(qword_1000885F8 + 112) + 8) + 392), v501, 4);
                if (!v422)
                {
                  sub_10005FA7C(*(qword_1000885F8 + 104), 0x10u);
                  if (dword_1000885E4)
                  {
                    *__b = time(0);
                    v427 = ctime(__b);
                    printf("%.24s: Spaceman free queue count %llu\n", v427, *(*(*(*(qword_1000885F8 + 104) + 408) + 376) + 240));
                    v428 = ctime(__b);
                    printf("%.24s: Unmounting the volume\n", v428);
                  }

                  sub_10003BD88(*(*(qword_1000885F8 + 112) + 8));
                  sub_100044D4C(*(qword_1000885F8 + 104));
                  goto LABEL_533;
                }

LABEL_642:
                v418 = v422;
                fprintf(__stderrp, "tx_leave failed with error: %d\n");
                goto LABEL_674;
              }

LABEL_641:
              v418 = v396;
              fprintf(__stderrp, "Unable to start a new transaction due to error: %d\n");
              goto LABEL_674;
            }

LABEL_648:
            v418 = v393;
            fwrite("tree_node_count for current fsroot tree failed \n", 0x30uLL, 1uLL, __stderrp);
            goto LABEL_674;
          }

          v418 = v402;
        }

        else
        {
          v418 = 22;
        }

        fprintf(__stderrp, "Unable to create a new fs_root tree due to error: %d\n");
        goto LABEL_674;
      }

      v418 = v391;
    }

    else
    {
      v418 = 22;
    }

    fprintf(__stderrp, "unable to get the volume's fsroot tree due to error: %d\n");
    goto LABEL_674;
  }

LABEL_533:
  if (!dword_100088038 || **(qword_1000885F8 + 48) != 1)
  {
    goto LABEL_540;
  }

  v429 = sub_10000B7A4(0x4C77564DuLL);
  if (!v429)
  {
    v430 = "Removed LwVM keylocker";
    goto LABEL_539;
  }

  if (v429 != 2)
  {
    v430 = "Could not remove LwVM keylocker";
LABEL_539:
    puts(v430);
  }

LABEL_540:
  v431 = qword_1000885F8;
  *(qword_1000885F8 + 352) = 2;
  *(v431 + 104) = 0;
  sub_100015BF4((v431 + 384), 1);
  if (**(qword_1000885F8 + 48) != 2)
  {
    byte_1000885D4 = 0;
  }

  byte_1000885F0 = 1;
  sub_10000B4C4();
  if (dword_100088038)
  {
    v432 = *(qword_1000885F8 + 32);
    if (dword_1000885E4)
    {
      printf("Opening %s read/write to trigger re-probe\n", *(qword_1000885F8 + 32));
    }

    if (access(v432, 6))
    {
      v433 = 0;
      do
      {
        sleep(1u);
        v434 = access(v432, 6);
        if (!v434)
        {
          break;
        }

        v350 = v433++ >= 3;
      }

      while (!v350);
      sleep(2u);
      if (v434)
      {
        __error();
      }
    }

    else
    {
      sleep(2u);
    }

    v435 = open(v432, 34);
    if (v435 < 0)
    {
      sub_100063814(v432);
    }

    else
    {
      close(v435);
    }
  }

  if (dword_1000885E4)
  {
    *__dst = time(0);
    v436 = *__dst - *(qword_1000885F8 + 256);
    v437 = ctime(__dst);
    printf("%.24s: Done\n", v437);
    printf("\nConversion took %ld seconds\n", v436);
    *&v438 = 0xAAAAAAAAAAAAAAAALL;
    *(&v438 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__b[112] = v438;
    *&__b[128] = v438;
    *&__b[80] = v438;
    *&__b[96] = v438;
    *&__b[48] = v438;
    *&__b[64] = v438;
    *&__b[16] = v438;
    *&__b[32] = v438;
    *__b = v438;
    if (getrusage(0, __b))
    {
      v439 = __stderrp;
      v440 = __error();
      fprintf(v439, "Can't get resource usage (error %d).\n", *v440);
    }

    else
    {
      v441 = *&__b[24] / 1000000.0 + *&__b[16];
      printf("    %'7.3fs (%5.2f%%) user\n", *&__b[8] / 1000000.0 + *__b, (*&__b[8] / 1000000.0 + *__b) * 100.0 / v436);
      printf("    %'7.3fs (%5.2f%%) system\n", v441, v441 * 100.0 / v436);
      printf("%'ld max resident set size\n", *&__b[32]);
    }
  }

  v73 = 0;
  *(qword_1000885F8 + 344) = 0;
  return v73;
}

uint64_t sub_10000B4C4()
{
  result = qword_1000885F8;
  if (qword_1000885F8 && !*(qword_1000885F8 + 376))
  {
    *(qword_1000885F8 + 376) = 1;
    if (*(result + 120))
    {
      v1 = 0;
      v2 = 152;
      do
      {
        v3 = *(result + 112);
        if ((*(v3 + v2) & 0x80000000) == 0)
        {
          if (close(*(v3 + v2)))
          {
            warn("close(hfs[%u])", v1);
          }

          *(v3 + v2) = -1;
          result = qword_1000885F8;
        }

        ++v1;
        v2 += 376;
      }

      while (v1 < *(result + 120));
    }

    if ((*(result + 252) & 0x80000000) == 0)
    {
      if (close(*(result + 252)))
      {
        warn("close(crypto_fd)");
      }

      result = qword_1000885F8;
      *(qword_1000885F8 + 252) = -1;
    }

    if ((*(result + 248) & 0x80000000) == 0)
    {
      if (close(*(result + 248)))
      {
        warn("close(plain_fd)");
      }

      result = qword_1000885F8;
      *(qword_1000885F8 + 248) = -1;
    }

    v4 = *(result + 40);
    if (v4)
    {
      if (dword_1000885E4)
      {
        puts("Unmounting APFS conversion mount");
        v4 = *(qword_1000885F8 + 40);
      }

      if (unmount(v4, 0))
      {
        warn("unmount");
      }

      if (*(qword_1000885F8 + 372) && rmdir(*(qword_1000885F8 + 40)))
      {
        warn("rmdir");
      }

      free(*(qword_1000885F8 + 40));
      result = qword_1000885F8;
      *(qword_1000885F8 + 40) = 0;
    }

    v6 = *(result + 48);
    result += 48;
    v5 = v6;
    if (v6)
    {
      if (byte_1000885F0)
      {
        v7 = 0;
      }

      else
      {
        v7 = 2;
      }

      v8 = *(v5 + 88);
      v9 = dword_100088038 != 0;

      return v8(result, v7, v9);
    }
  }

  return result;
}

void sub_10000B6E4(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = sub_100048054(a1);
  v3 = sub_100001B38(v1 + 8, v2 - 8);
  fprintf(__stderrp, "failed: cksum 0x%016llx, oid 0x%llx, o_xid 0x%llx, o_type 0x%x, o_subtype 0x%x, size %d\n", *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 28), v2);
  asprintf((qword_1000885F8 + 360), "failed: cksum 0x%016llx, oid 0x%llx, o_xid 0x%llx, o_type 0x%x, o_subtype 0x%x, size %d, %s\n", *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 28), v2, v3);

  free(v3);
}

uint64_t sub_10000B7A4(uint64_t a1)
{
  *connect = 0;
  input = a1;
  v1 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v1);
  if (!MatchingService)
  {
    return 6;
  }

  v3 = MatchingService;
  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect[1]))
  {
    v4 = 6;
  }

  else
  {
    v5 = IOConnectCallScalarMethod(connect[1], 7u, &input, 1u, 0, connect);
    if (v5 == -536870160)
    {
      v6 = 2;
    }

    else
    {
      v6 = 22;
    }

    if (v5)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  IOServiceClose(v3);
  if (connect[1])
  {
    IOServiceClose(connect[1]);
  }

  return v4;
}

uint64_t sub_10000B878(uint64_t a1, off_t a2, int64_t size, int a4)
{
  if (dword_100088038)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && *(a1 + 8) == 1)
  {
    v8 = malloc_type_calloc(1uLL, size, 0xF62342BFuLL);
    if (v8)
    {
      v9 = v8;
      v10 = sub_100017468(qword_1000885F8, *(qword_1000885F8 + 248), v8, a2, size);
      if (!v10)
      {
        free(v9);
        goto LABEL_9;
      }

      v15 = v10;
    }

    else
    {
      v15 = 12;
    }

    v17 = size;
    v16 = v15;
    fprintf(__stderrp, "Error %d trying to overwrite metadata at offset %lld length %lld\n", v15, a2, v17);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 6613, 128, v16);
  }

LABEL_9:
  if (*(a1 + 9) == 1)
  {
    v11 = a2 - *(qword_1000885F8 + 160);
    v12 = sub_10005C5F4(*(qword_1000885F8 + 104), 0, v11 / *(qword_1000885F8 + 208), size / *(qword_1000885F8 + 208), *a1);
    if (v12)
    {
      v14 = v12;
      fprintf(__stderrp, "Error %d freeing extent [start=%lu, count=%lu]\n", v12, v11 / *(qword_1000885F8 + 208), size / *(qword_1000885F8 + 208));
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 6629, 129, v14);
    }
  }

  return 0;
}

uint64_t sub_10000B9F0(const char **a1, uint64_t a2, int *a3, uint64_t a4, int *a5, void *a6)
{
  if (*a3 == -1)
  {
    v10 = open(*a1, 34);
    *a3 = v10;
    if (v10 < 0)
    {
      v12 = *__error();
      v13 = __stderrp;
      v14 = *a1;
      v15 = strerror(v12);
      fprintf(v13, "%s: Cannot open device: %s\n", v14, v15);
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 396, 7, v12);
    }

    *a5 = dup(v10);
    *a6 = 0;
  }

  return 0;
}

void sub_10000BAAC(id a1)
{
  warnx("Conversion is taking too long!");
  *(qword_1000885F8 + 344) = -2;
  exit(2);
}

uint64_t sub_10000BADC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, _BYTE *a4)
{
  if (bswap32(*(a2 + 2)) == *(*(a1 + 32) + 216))
  {
    v5 = *(a2 + 6);
    if (*(a2 + 6))
    {
      if (dword_1000885E4)
      {
        memset(__b, 170, sizeof(__b));
        v10 = 1023;
        if (sub_1000164F8((a2 + 8), __rev16(v5), __b, &v10))
        {
          __b[0] = 63;
          v7 = &__b[1];
        }

        else
        {
          v9 = v10++;
          v7 = &__b[v9];
        }

        *v7 = 0;
        fprintf(__stderrp, "Found record in directory hard link private directory: (name=%s, record type=%u)\n", __b, bswap32(*a3) >> 16);
      }

      fwrite("Cannot convert HFS volumes with directory hard links.\n", 0x36uLL, 1uLL, __stderrp);
      return 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10000BC28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 0;
  v9 = -1;
  while (++v9 < *(a1 + 8))
  {
    v10 = v8 + 8;
    result = sub_10000BCB0(*a1, a2, *(*(a1 + 16) + v8), *(*(a1 + 16) + v8 + 4), a3, a4);
    v8 = v10;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_10000BCB0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 128);
  v7 = v6 * a4;
  if (!v7)
  {
    return 0;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6 * a3;
  while (1)
  {
    v13 = sub_100017CE0(a1, v12, v7, &v27, &v26);
    v14 = v13;
    if ((v13 | 2) != 2)
    {
      break;
    }

    v15 = v26;
    if (**(*a1 + 48) == 2 && v26 == 0)
    {
      return v14;
    }

    if (!v13 && v26 >= 1)
    {
      v17 = sub_10005C5F4(*(a2 + 392), 0, v27 / *(*a1 + 208), v26 / *(*a1 + 208), a5);
      if (v17)
      {
        v25 = 0;
        v20 = v17;
        if (v17 == 22)
        {
          if (sub_10005F17C(*(a2 + 392), a5))
          {
            if (sub_10000BF10(*(a2 + 392), *(*(a2 + 392) + 408), v27 / *(*a1 + 208), v26 / *(*a1 + 208)))
            {
              v21 = *(a2 + 392);
              v22 = *(v21 + 376);
              if ((*(v22 + 108) & 0x80000000) == 0 && (*(v22 + 104) & 0x80000000) == 0)
              {
                v23 = *(*(v21 + 408) + 376);
                if ((*(v23 + 164) & 0x80000000) == 0)
                {
                  *(v23 + 152);
                }
              }

              asprintf(&v25, "extent overlaps nx reserved space, fragmented %d");
            }

            else
            {
              asprintf(&v25, "extent is freed more than once, or hfs has overlapping extents");
            }
          }

          else
          {
            asprintf(&v25, "xid %lld is not current xid");
          }
        }

        v24 = v25;
        if (!v25)
        {
          v24 = &unk_100064CAF;
        }

        asprintf((qword_1000885F8 + 360), "%s spaceman_free failed, line %u, apfs_offset %lld apfs_length %lld xid %lld apfs_block_size %u", v24, a6, v27, v26, a5, *(*a1 + 208));
        if (v25)
        {
          free(v25);
        }

        fprintf(__stderrp, "Error %d freeing extent [start=%lu, count=%lu]\n", v20, v27 / *(*a1 + 208), v26 / *(*a1 + 208));
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 4128, 35, v20);
      }

      v15 = v26;
    }

    v12 += v15;
    v18 = v7 <= v15;
    v7 -= v15;
    if (v18)
    {
      return 0;
    }
  }

  fprintf(__stderrp, "logical_to_physical: error %d\n", v13);
  return v14;
}

uint64_t sub_10000BF10(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_100004A28(*(a1 + 376), *(a2 + 376), a3, a4, 0);
  if (!result)
  {

    return sub_100042490(a1, a3, a4, 0);
  }

  return result;
}

uint64_t sub_10000BF84(uint64_t a1, uint64_t a2, int8x8_t *a3)
{
  v5 = *(a2 + 2);
  v6 = a3[1].u32[0];
  v7 = bswap32(v6);
  v47 = 0;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if ((*(v9[47] + 40) & 0x10) != 0)
  {
    v10 = v7 | 0xFFFFFFF00000000;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = (*(v9[47] + 40) & 0x10) == 0;
    *(v9[47] + 40);
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    fwrite("cannot migrate preboot in unified dev_t\n", 0x28uLL, 1uLL, __stderrp);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3562, 390, 14);
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  ++*(qword_1000885F8 + 328);
  v14 = bswap32(a3->u16[0]) >> 16;
  if (v14 - 3 < 2)
  {
    goto LABEL_24;
  }

  v15 = bswap32(v5);
  if (v14 == 2)
  {
    if (v7 == *(v8 + 204) || v7 == *(v8 + 208))
    {
      return 0;
    }

    v16 = 0;
    if (v7 < 0x10 || v7 == *(v8 + 220))
    {
      return v16;
    }

    if (((a3[5].i16[1] << 8) & 0xB000 | 0x4000) == 0x6000)
    {
      fprintf(__stderrp, "Ignoring block or character device (cnid=%u)\n", v7);
      return 0;
    }

    if (v15 == *(v8 + 212))
    {
      v46 = 0xAAAAAAAAAAAAAAAALL;
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44 = v21;
      v45 = v21;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v48 = 0;
      v22 = sub_10006084C(v9[49], &v48);
      if (v22)
      {
        v38 = v22;
        fprintf(__stderrp, "tx_enter failed: %d\n", v22);
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3631, 164, v38);
      }

      if (!sub_10004B964(v9, 0, v48))
      {
        v23 = bswap32(a3[1].u32[0]);
        if ((*(v9[47] + 40) & 0x10) != 0)
        {
          v23 |= 0xFFFFFFF00000000uLL;
        }

        *&v44 = 2621445;
        v45 = 0u;
        v46 = 0;
        *(&v44 + 1) = v23;
        sub_100033A24(v9, 1, 0, &v44, sub_10000DA50, &v41);
      }

      if ((dword_1000885E4 & 8) != 0)
      {
        printf("  inserting hard link inode ID=%u\n", v7);
      }

      v24 = sub_10000DA94(v9, *(a1 + 40), a3, v48, bswap32(a3[5].u32[1]), v41, v42, v43);
      if (v24)
      {
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3654, 381, v24);
      }

      free(v42);
      v40 = 0;
      v26 = sub_10000E430(v9, *(a1 + 40), v7, v7, &v40, &a3[13], v48, 0, v25);
      if (v26)
      {
        v16 = v26;
      }

      else
      {
        v16 = sub_10000E9E8(v9, *(a1 + 40), v7, a3, v48);
        if (!v16)
        {
          sub_10000D8E8(v9, *(a1 + 40), v10, a3, 0, v48);
        }
      }

      v35 = sub_10006085C(v9[49], v48, 0);
      if (v35)
      {
        v39 = v35;
        fprintf(__stderrp, "tx_leave failed: %d\n", v35);
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3671, 165, v39);
      }

      if (v16)
      {
        fprintf(__stderrp, "Error %d inserting hard link inode cnid=%u\n");
      }

      return v16;
    }

    v48 = 0;
    v27 = sub_10006084C(v9[49], &v48);
    if (v27)
    {
      v36 = v27;
      fprintf(__stderrp, "tx_enter failed: %d\n", v27);
      v37 = 3678;
      goto LABEL_72;
    }

    v28 = sub_10004B964(v9, 0, v48);
    if (v28)
    {
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3686, 383, v28);
    }

    v29 = sub_10000C950(v9, *(a1 + 40), a2, a3, v48, &v47 + 1, &v47);
    if (v29)
    {
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3683, 382, v29);
    }

    if (sub_1000181AC(a3))
    {
      goto LABEL_53;
    }

    LODWORD(v44) = 0;
    v31 = sub_10000E430(v9, *(a1 + 40), v7, v10, &v44, &a3[13], v48, 0, v30);
    if (v31)
    {
      v16 = v31;
    }

    else if (HIBYTE(v47) == 1 || (v16 = sub_10000E9E8(v9, *(a1 + 40), v7, a3, v48), !v16))
    {
LABEL_53:
      if ((v47 & 1) == 0)
      {
        sub_10000D8E8(v9, *(a1 + 40), v10, a3, 0, v48);
      }

      v16 = 0;
    }

    v32 = sub_10006085C(v9[49], v48, 0);
    if (!v32)
    {
      goto LABEL_36;
    }

    v33 = v32;
    fprintf(__stderrp, "tx_leave failed: %d\n", v32);
    v34 = 3701;
    goto LABEL_74;
  }

  if (v14 != 1)
  {
    fprintf(__stderrp, "Unknown record type: 0x%x\n", v14);
LABEL_24:
    sub_10000EB20(*(a1 + 40), *(a1 + 32), 0);
    return 0;
  }

  if (v6 == 0x2000000)
  {
    v11 = v9;
LABEL_23:
    sub_10000C65C(v8, v11, a3);
    goto LABEL_24;
  }

  if (v11 && v7 == *(v8 + 224))
  {
    goto LABEL_23;
  }

  if (v7 == *(v8 + 216) && byte_100088034 != 1)
  {
    return 0;
  }

  v16 = 0;
  if (v7 >= 0x10 && v7 != *(v8 + 212))
  {
    v48 = 0;
    v18 = sub_10006084C(v9[49], &v48);
    if (!v18)
    {
      v19 = sub_10004B964(v9, 0, v48);
      if (v19 || (v19 = sub_10000C950(v9, *(a1 + 40), a2, a3, v48, 0, &v47), v19))
      {
        v16 = v19;
      }

      else
      {
        if ((v47 & 1) == 0)
        {
          sub_10000D8E8(v9, *(a1 + 40), v10, a3, 0, v48);
        }

        v16 = 0;
      }

      v20 = sub_10006085C(v9[49], v48, 0);
      if (!v20)
      {
LABEL_36:
        if (v16)
        {
          fprintf(__stderrp, "Error %d inserting records for cnid=%u, parent=%llu\n");
          return v16;
        }

        goto LABEL_24;
      }

      v33 = v20;
      fprintf(__stderrp, "tx_leave failed: %d\n", v20);
      v34 = 3604;
LABEL_74:
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v34, 165, v33);
    }

    v36 = v18;
    fprintf(__stderrp, "tx_enter failed: %d\n", v18);
    v37 = 3596;
LABEL_72:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v37, 164, v36);
  }

  return v16;
}

uint64_t sub_10000C65C(_DWORD *a1, void *a2, int8x8_t *a3)
{
  v3 = a2[61];
  if (!v3)
  {
    fwrite("hfs_update_root: unable to get APFS root directory\n", 0x33uLL, 1uLL, __stderrp);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3447, 33, 2);
  }

  v33 = 0;
  v7 = sub_10006084C(a2[49], &v33);
  if (v7)
  {
    v31 = v7;
    fprintf(__stderrp, "tx_enter failed: %d\n", v7);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3450, 164, v31);
  }

  if (sub_10004B964(a2, 0, v33))
  {
    fwrite("hfs_update_root: unable to modify apfs_t\n", 0x29uLL, 1uLL, __stderrp);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3453, 136, 12);
  }

  v8 = bswap32(a3[1].u32[1]);
  v9 = v8 > 0x7C25B080;
  v10 = 1000000000 * v8 - 2082844800000000000;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = bswap32(a3[2].u32[0]);
  v9 = v11 > 0x7C25B080;
  v12 = 1000000000 * v11 - 2082844800000000000;
  if (!v9)
  {
    v12 = 0;
  }

  v3[4] = v10;
  v3[5] = v12;
  v13 = bswap32(a3[2].u32[1]);
  v9 = v13 > 0x7C25B080;
  v14 = 1000000000 * v13 - 2082844800000000000;
  if (!v9)
  {
    v14 = 0;
  }

  v15 = bswap32(a3[3].u32[0]);
  if (v15 <= 0x7C25B080)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1000000000 * v15 - 2082844800000000000;
  }

  v3[6] = v14;
  v3[7] = v16;
  v17 = a3[5].u8[1] | (a3[5].u8[0] << 16);
  v3[10].i32[0] = bswap32(a3[9].u32[1]);
  v3[10].i32[1] = v17;
  v3[11] = vrev32_s8(a3[4]);
  v18 = bswap32(a3[5].u16[1]) >> 16;
  if ((v18 & 0xF000) == 0x4000)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 & 0xFFF | 0x4000;
  }

  v3[12].i16[0] = v19;
  v20 = a1[51];
  v21 = v20 == 0;
  v22 = v20 != 0;
  if (v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  if (a1[52])
  {
    v22 = v23;
  }

  if (a1[53])
  {
    ++v22;
  }

  v24 = byte_100088034 ^ 1;
  if (!a1[54])
  {
    v24 = 0;
  }

  v25 = v22 + v24;
  if (a1[55])
  {
    ++v25;
  }

  if (a1[57] == bswap32(a3[1].u32[0]))
  {
    ++v25;
  }

  v26 = bswap32(a3->u32[1]);
  v27 = __OFSUB__(v26, v25);
  v28 = v26 - v25;
  if (v28 < 0 != v27)
  {
    v28 = 0;
  }

  v3[9].i32[0] = v28;
  if (a1[56] == bswap32(a3[1].u32[0]))
  {
    v28 = 1;
  }

  v3[9].i32[0] = v28;
  v29 = sub_100031204(a2, 1, v3, v33);
  if (!v29)
  {
    sub_10000D8E8(a2, a1, 2uLL, a3, v3, v33);
  }

  result = sub_10006085C(a2[49], v33, 0);
  if (result)
  {
    v32 = result;
    fprintf(__stderrp, "tx_leave failed: %d\n", result);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3521, 165, v32);
  }

  if (v29)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3524, 34, v29);
  }

  return result;
}

uint64_t sub_10000C950(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t *a4, unint64_t a5, _BYTE *a6, _BYTE *a7)
{
  v11 = bswap32(*(a3 + 2));
  v12 = a4[1].u32[0];
  __n[0] = 1023;
  memcpy(__dst, &unk_10007F7B0, sizeof(__dst));
  if (v11 >= 0x10)
  {
    v13 = v11 | 0xFFFFFFF00000000;
  }

  else
  {
    v13 = v11;
  }

  v145 = v13;
  if (*(a2 + 16) && v11 == *(a2 + 224))
  {
    v11 = *(a2 + 240);
  }

  v14 = (a3 + 6);
  memset(__b, 170, sizeof(__b));
  memset(v154, 170, sizeof(v154));
  v151 = 0;
  v152 = 0;
  v153 = 0;
  if (sub_100004E14(a3))
  {
    v15 = &v154[6];
    memcpy(v154, a3, sizeof(v154));
    v16 = 0;
    v17 = 0;
    v18 = (a3 + 8);
    while (1)
    {
      if (*v14)
      {
        v19 = __rev16(*v14);
        v20 = word_100088050;
        v21 = &v154[8];
        v22 = v18;
        v23 = v18;
        do
        {
          v24 = *v23++;
          *v21 = v24;
          v25 = bswap32(v24) >> 16;
          v26 = v19 - 1;
          if (v25 < 0xFFFE)
          {
            if (v19 != 1 && (v25 & 0xFC00) == 0xD800)
            {
              v28 = v22[1];
              v21[1] = v28;
              if ((((v28 << 8) + 0x2000) >> 10) <= 0x3Eu)
              {
                if ((v20 + 1) == 127)
                {
                  v29 = 48;
                }

                else
                {
                  v29 = v20 + 1;
                }

                *v21 = bswap32(v20) >> 16;
                if ((v29 + 1) == 127)
                {
                  v20 = 48;
                }

                else
                {
                  v20 = v29 + 1;
                }

                word_100088050 = v20;
                v21[1] = bswap32(v29) >> 16;
                v16 = 1;
              }

              v23 = v22 + 2;
              v26 = v19 - 2;
              ++v21;
            }
          }

          else
          {
            v27 = bswap32(v20);
            if ((v20 + 1) == 127)
            {
              v20 = 48;
            }

            else
            {
              ++v20;
            }

            word_100088050 = v20;
            *v21 = HIWORD(v27);
            v16 = 1;
          }

          ++v21;
          v19 = v26;
          v22 = v23;
        }

        while (v26);
      }

      if (!v16)
      {
        goto LABEL_200;
      }

      v30 = sub_10000F0A4(a2, v154);
      if (v30)
      {
        break;
      }

      v16 = 1;
      v72 = v17++ >= 0x63;
      if (v72)
      {
        goto LABEL_200;
      }
    }

    if (v30 != 2)
    {
LABEL_200:
      fwrite("hfs_insert_object: failed to fix utf16 file name:\n", 0x32uLL, 1uLL, __stderrp);
      sub_100016508(__stderrp, v18, bswap32(*v14) >> 16);
      v125 = 2827;
      v126 = 333;
      goto LABEL_201;
    }
  }

  else
  {
    v15 = (a3 + 6);
  }

  v31 = sub_1000164F8(v15 + 1, bswap32(*v15) >> 16, __b, __n);
  if (v31)
  {
    v32 = v31;
    fprintf(__stderrp, "hfs_insert_object: hfs_utf16_t_utf8 failed (error %d)\n", v31);
    return v32;
  }

  v33 = __n[0]++;
  *(__b + v33) = 0;
  if (__b[0] == 0x2D736670612E2E2ELL && __b[1] == 0x2E2E6E6F73696F70 && LOWORD(__b[2]) == 46)
  {
    fwrite("hfs_insert_object: poison check failure\n", 0x28uLL, 1uLL, __stderrp);
    v125 = 2842;
    v126 = 162;
LABEL_201:
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v125, v126, 0);
  }

  v36 = bswap32(v12);
  if (a4->i16[0] == 256 && (a4->i16[1] & 0x2000) != 0)
  {
    v37 = a4[5].i32[1];
    if (v37)
    {
      if ((*(*(a1 + 376) + 40) & 0x10) != 0)
      {
        fwrite("directory hardlinks disallowed on unified_devt\n", 0x2FuLL, 1uLL, __stderrp);
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 2876, 389, 14);
      }

      if (dword_100088030 && v37 == 0x1000000)
      {
        v38 = sub_10002CA88(a1, v11);
        v39 = v11;
        v40 = v38;
        if (v38)
        {
          v41 = *(v38 + 72);
          v42 = __OFSUB__(v41, 1);
          v43 = v41 - 1;
          if (v43 < 0 == v42)
          {
            *(v38 + 72) = v43;
          }

          sub_100031204(a1, 1, v38, a5);
          sub_10002CA94(a1, v40);
          v44 = 0;
          v40 = 0;
        }

        else
        {
          printf("could not load parent_id %lld to fixup its nchildren (dir-hardlink id %d)\n", v39, v36);
          v44 = 0;
        }

        v51 = 0;
        goto LABEL_175;
      }
    }
  }

  v45 = a4 + 8;
  v46 = sub_10000EE00(a2, a4);
  v47 = v46;
  if (v46)
  {
    v48 = 0;
    v139 = v46[1];
LABEL_62:
    v49 = 1;
    goto LABEL_63;
  }

  if (!dword_100088030 || a4[6].i32[0] != 1886544998 || a4[6].i32[1] != 1396916557 || (a4[7].i16[0] & 0x80) == 0 || (v120 = bswap32(a4[1].u32[1]), v120 != *(a2 + 144)) && v120 != *(a2 + 148))
  {
    v139 = 0;
    v48 = 0;
    goto LABEL_62;
  }

  v121 = bswap32(a4[5].u32[1]);
  v48 = 0;
  v139 = 0;
  v49 = 1;
  if (!sub_10000EEB4(a2, v121, __dst) && __dst[5].i32[1] == 0x1000000)
  {
    v122 = 1000000000 * bswap32(__dst[8].u32[1]);
    if (__dst[0].i16[1] < 0)
    {
      v48 = v122;
    }

    else
    {
      v48 = 0;
    }

    v123 = *(a2 + 168);
    v124 = *(a2 + 160);
    if (v123 == *(a2 + 172))
    {
      v124 = malloc_type_realloc(v124, 8 * (v123 + 32), 0x100004000313F17uLL);
      *(a2 + 160) = v124;
      if (!v124)
      {
        return 12;
      }

      v123 = *(a2 + 168);
      *(a2 + 172) += 32;
    }

    v45 = &__dst[8];
    v124[v123] = vrev32_s8(a4[23]);
    *(a2 + 168) = v123 + 1;
    v49 = 0;
    if (a6)
    {
      *a6 = 1;
    }

    v139 = v121;
  }

LABEL_63:
  v50 = sub_100062624(&v151, 0);
  if (v50)
  {
    v32 = v50;
    fprintf(__stderrp, "hfs_insert_object: could not initialize extended fields (error %d)\n", v50);
    v44 = 0;
    v40 = 0;
    v51 = 0;
    goto LABEL_176;
  }

  v136 = v48;
  v137 = v47;
  v138 = v49;
  v52 = malloc_type_malloc(0x12uLL, 0x79C8BE08uLL);
  v51 = v52;
  v53 = *(a1 + 376);
  if ((*(v53 + 40) & 0x10) != 0)
  {
    v54 = v145;
  }

  else
  {
    v54 = v11;
  }

  v55 = __n[0];
  v147 = v11;
  v148 = v54;
  v135 = v45;
  if ((*(v53 + 56) & 9) != 0)
  {
    v133 = v52;
    v134 = v36;
    v56 = malloc_type_malloc(0x30AuLL, 0x10000403E1C8BA9uLL);
    if (!v56)
    {
      v65 = 12;
      goto LABEL_204;
    }

    v57 = v56;
    v58 = v56 + 12;
    __memcpy_chk();
    v59 = v55 - 1;
    if (sub_100003878(v58, v55 - 1, (*(*(a1 + 376) + 56) >> 3) & 1, nullsub_5, 0))
    {
      if (v55 != 1)
      {
        v60 = 0;
        do
        {
          v61 = v58[v60];
          if (v61 < 0)
          {
            v62 = 0;
            do
            {
              LOBYTE(v61) = 2 * v61;
              ++v62;
            }

            while ((v61 & 0x80) != 0);
          }

          else
          {
            v62 = 1;
          }

          v63 = v62 + v60;
          if (sub_100003878(v58, v62 + v60, (*(*(a1 + 376) + 56) >> 3) & 1, nullsub_5, 0))
          {
            v58[v60++] = 63;
            memmove(&v58[v60], &v58[v63], v59 - v63);
            v59 = v59 - v62 + 1;
          }

          else
          {
            v60 += v62;
          }
        }

        while (v60 < v59);
      }

      v58[v59] = 0;
      v55 = v59 + 1;
    }

    LODWORD(v156) = -1431655766;
    __src[0] = 0xAAAAAAAAAAAAAAAALL;
    v64 = sub_100035828(a1, v148, v58, v55, 0, &v156, __src);
    if (v64)
    {
      v65 = v64;
      if (v64 != 2)
      {
        v66 = v57;
LABEL_203:
        free(v66);
LABEL_204:
        fprintf(__stderrp, "hfs_insert_object: name grooming failed (error %d)\n", v65);
        v127 = 3016;
        v128 = 137;
        goto LABEL_205;
      }
    }

    else
    {
      v150 = a1;
      v68 = v55 - 1;
      v69 = strrchr(v58, 46);
      v70 = v69 - v58;
      v71 = v55 - 1 - (v69 - v58);
      if (!v69)
      {
        v70 = 0;
        v71 = 0;
      }

      if (v70)
      {
        v72 = (v71 - 746) >= 0xFFFFFFFFFFFFFD02;
      }

      else
      {
        v72 = 0;
      }

      v73 = !v72;
      if (v73)
      {
        v74 = 0;
      }

      else
      {
        v68 = v70;
        v74 = v71;
      }

      v146 = v74;
      if (v73)
      {
        v75 = &unk_100064CAF;
      }

      else
      {
        v75 = v69;
      }

      v76 = malloc_type_malloc(0x2FEuLL, 0xBEF2EB21uLL);
      v142 = v57;
      v77 = v57 + 11;
      v78 = 2;
      do
      {
        v79 = 0;
        if (v78)
        {
          v80 = v78;
          do
          {
            ++v79;
            v81 = v80 > 9;
            v80 /= 0xAuLL;
          }

          while (v81);
        }

        if (v79 <= 1)
        {
          v79 = 1;
        }

        v82 = v79 + v146;
        v83 = v82 + v68;
        v84 = v68;
        if (v82 + v68 >= 0x2FE)
        {
          v85 = v68;
          do
          {
            v84 = v85 - 1;
            if (v58[v85 - 1] < 0)
            {
              do
              {
                v84 = v85 - 1;
                v86 = v77[v85--] & 0xC0;
              }

              while (v86 == 128);
            }

            v83 = v84 + v82;
            v85 = v84;
          }

          while (v84 + v82 > 0x2FD);
        }

        __memcpy_chk();
        snprintf(&v76[v84], 766 - v84, "%llu%s", v78++, v75);
        sub_10002CA94(v150, __src[0]);
        v87 = sub_100035828(v150, v148, v76, v83, 0, &v156, __src);
      }

      while (!v87);
      v65 = v87;
      if (v87 != 2)
      {
        free(v76);
        v66 = v142;
        goto LABEL_203;
      }

      __memcpy_chk();
      v58[v83] = 0;
      LOWORD(v55) = v83 + 1;
      free(v76);
      a1 = v150;
      v57 = v142;
    }

    v40 = 0;
    *v57 = v148 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
    *(v57 + 2) = v55 & 0x3FF | (v156 << 10);
    __n[0] = v55 & 0x3FF;
    v149 = __n[0] + 12;
    v51 = v133;
    v36 = v134;
  }

  else
  {
    v149 = __n[0] + 10;
    v40 = malloc_type_malloc(__n[0] + 10, 0x4AA5E9BFuLL);
    *v40 = v54 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
    v67 = __n[0];
    *(v40 + 4) = __n[0];
    v58 = __b;
    memcpy(v40 + 10, __b, v67);
    v57 = 0;
  }

  v51[1] = 0;
  v88 = v51 + 1;
  *(v51 + 8) = 0;
  v89 = v139;
  if (v139)
  {
    v90 = v139;
  }

  else
  {
    v90 = v36;
  }

  *v51 = v90;
  if ((*(*(a1 + 376) + 40) & 0x10) != 0)
  {
    *v51 = v90 | 0xFFFFFFF00000000;
  }

  *(v51 + 8) = sub_100062458(bswap32(a4[5].u16[1]) >> 16);
  if (a4->i16[1] < 0)
  {
    v91 = bswap32(v135->u32[1]);
  }

  else
  {
    if (!v137)
    {
      goto LABEL_125;
    }

    v91 = v137[2];
  }

  *v88 = 1000000000 * v91;
LABEL_125:
  if ((v138 & 1) == 0)
  {
    v89 = 0;
    *v88 = v136;
  }

  v92 = *(a1 + 376);
  if (v148 >= *(v92 + 176))
  {
    *(v92 + 176) = v148 + 1;
  }

  v140 = v89;
  if (v89)
  {
    v93 = ((*(v92 + 40) & 0x10) != 0 ? v36 | 0xFFFFFFF00000000 : v36);
    __src[0] = v93;
    v94 = sub_100062AD8(&v151, 1, 2, __src, 8);
    if (v94)
    {
      v129 = v94;
      fprintf(__stderrp, "hfs_insert_object: could not set DREC_EXT_TYPE_SIBLING_ID (error %d)\n", v94);
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3077, 30, v129);
    }
  }

  if (v151)
  {
    v95 = sub_100062A44(&v151);
    v96 = v51;
    v97 = v95;
    v98 = v95 + 18;
    v99 = malloc_type_realloc(v96, v98, 0x873748DCuLL);
    v100 = sub_100062A58(&v151, v99 + 9, v97);
    if (v100)
    {
      v65 = v100;
      fprintf(__stderrp, "hfs_insert_object: could not serialize extended fields (error %d)\n", v100);
      v127 = 3091;
      v128 = 31;
LABEL_205:
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v127, v128, v65);
    }

    v51 = v99;
  }

  else
  {
    LODWORD(v98) = 18;
  }

  v101 = *(a1 + 376);
  if ((dword_1000885E4 & 4) != 0)
  {
    v102 = *(v101 + 56);
    if ((v102 & 1) != 0 || !v40 || (v102 & 8) != 0)
    {
      v103 = *(v57 + 2) & 0x3FF;
      v104 = v57 + 12;
    }

    else
    {
      v103 = *(v40 + 4);
      v104 = (v40 + 10);
    }

    printf("  inserting ID=%llu name=%.*s\n", v147, v103, v104);
    v101 = *(a1 + 376);
  }

  v105 = *(v101 + 56);
  if ((v105 & 1) != 0 || !v40 || (v105 & 8) != 0)
  {
    v106 = a1;
    v107 = v57;
  }

  else
  {
    v106 = a1;
    v107 = v40;
  }

  v108 = sub_10000F004(v106, 1, v107, v149, v51, v98, a5);
  if (v108)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 3110, 32, v108);
  }

  if (v140)
  {
    v109 = *(*(a1 + 376) + 40);
    if ((v109 & 0x10) != 0)
    {
      v110 = v36 | 0xFFFFFFF00000000;
    }

    else
    {
      v110 = v36;
    }

    if ((v109 & 0x10) != 0)
    {
      v111 = v140 | 0xFFFFFFF00000000;
    }

    else
    {
      v111 = v140;
    }

    v112 = __n[0];
    v113 = malloc_type_calloc(1uLL, __n[0] + 10, 0x4F681831uLL);
    if (!v113)
    {
      fwrite("insert_apfs_sibling_record: can't allocate sibling value\n", 0x39uLL, 1uLL, __stderrp);
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 2377, 28, 12);
    }

    v114 = v113;
    __src[0] = (v111 | 0x5000000000000000);
    __src[1] = v110;
    *v113 = v148;
    *(v113 + 4) = v112;
    memcpy(v113 + 10, v58, v112);
    v115 = sub_10000F004(a1, 1, __src, 16, v114, v112 + 10, a5);
    if (v115)
    {
      v130 = v115;
      fprintf(__stderrp, "insert_apfs_sibling_record: error %d inserting sibling record (inode=%llu, link=%llu)\n", v115, v111, v110);
      v131 = 2390;
      v132 = 29;
    }

    else
    {
      v156 = v110 | 0xC000000000000000;
      *&__n[1] = v111;
      v116 = sub_10000F004(a1, 1, &v156, 8, &__n[1], 8u, a5);
      v44 = v57;
      if (!v116)
      {
        free(v114);
        v117 = sub_10002CA88(a1, v111);
        v32 = v117;
        if (!v117)
        {
          goto LABEL_176;
        }

        __src[0] = 0xAAAAAAAAAAAAAAAALL;
        LODWORD(v156) = 0;
        if (!*(v117 + 16) || sub_100062E90((v117 + 408), 4, 0, __src, &v156) || v156 <= 0)
        {
          sub_100062AD8((v32 + 408), 4, 2, v58, __n[0]);
          *(v32 + 16) = v148;
          sub_100031204(a1, 1, v32, a5);
        }

        sub_10002CA94(a1, v32);
        goto LABEL_175;
      }

      v130 = v116;
      fprintf(__stderrp, "insert_apfs_sibling_record: error %d inserting sibling map record (inode=%llu, link=%llu)\n", v116, v111, v110);
      v131 = 2397;
      v132 = 316;
    }

    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", v131, v132, v130);
  }

  if (v138)
  {
    v32 = sub_10000DA94(a1, a2, a4, a5, 1, v148, v58, __n[0]);
    v44 = v57;
    goto LABEL_176;
  }

  v118 = sub_10000DA94(a1, a2, __dst, a5, 1, v148, v58, __n[0]);
  v32 = v118;
  v44 = v57;
  if (!a7 || v118)
  {
    goto LABEL_176;
  }

  if (__dst[1].i32[0] != a4[1].i32[0])
  {
    v32 = 0;
    *a7 = 1;
    goto LABEL_176;
  }

LABEL_175:
  v32 = 0;
LABEL_176:
  if (v153 && v152)
  {
    sub_1000629FC(&v151);
  }

  if (v51)
  {
    free(v51);
  }

  if (v40)
  {
    free(v40);
  }

  if (v44)
  {
    free(v44);
  }

  return v32;
}

void sub_10000D8E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v18 = 0u;
  v19 = 0u;
  if (!sub_10000EE00(a2, a4))
  {
    *&v17[12] = *(a4 + 60);
    *v17 = *(a4 + 48);
    *&v17[16] = 0;
    *&v17[28] = 0;
    if (sub_1000181AC(a4))
    {
      *v17 = 0;
    }

    if (*v17 != v18 || *&v17[8] != *(&v18 + 1) || *&v17[16] != v19 || *&v17[24] != *(&v19 + 1))
    {
      v14 = sub_10002F29C(a1, a3, "com.apple.FinderInfo", v17, 32, a6);
      if (v14)
      {
        sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 2101, 18, v14);
      }

      v15 = a5;
      if (!a5)
      {
        v15 = sub_10002CA88(a1, a3);
        if (!v15)
        {
          goto LABEL_21;
        }
      }

      v16 = *(v15 + 64);
      if ((v16 & 0x100) == 0)
      {
        *(v15 + 64) = v16 | 0x100;
        sub_100031204(a1, 1, v15, a6);
      }

      if (!a5)
      {
LABEL_21:
        sub_10002CA94(a1, v15);
      }
    }
  }
}

uint64_t sub_10000DA50(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 24);
  *(a2 + 8) = strdup((a1 + 34));
  *(a2 + 16) = *(a1 + 32);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10000DA94(uint64_t a1, uint64_t a2, int8x8_t *a3, unint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8)
{
  memset(v86, 170, sizeof(v86));
  v13 = bswap32(a3[1].u32[0]);
  v78 = v13;
  if ((*(*(a1 + 376) + 40) & 0x10) != 0)
  {
    v15 = v13 | 0xFFFFFFF00000000;
  }

  else
  {
    v15 = v13;
  }

  v16 = a3[11];
  v79 = sub_1000181AC(a3);
  if (a7)
  {
    v17 = a8 + 44;
  }

  else
  {
    v17 = 44;
  }

  sub_100062624(v86, v17);
  v87 = 0u;
  v88 = 0u;
  v89 = 0;
  *&v90 = a6;
  v94 = v15 | 0x3000000000000000;
  memset(v93 + 12, 0, 32);
  v77 = v15;
  v18 = bswap32(a3[1].u32[1]);
  v19 = v18 > 0x7C25B080;
  v20 = 1000000000 * v18 - 2082844800000000000;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = bswap32(a3[2].u32[0]);
  v19 = v21 > 0x7C25B080;
  v22 = 1000000000 * v21 - 2082844800000000000;
  if (!v19)
  {
    v22 = 0;
  }

  *(&v90 + 1) = v15;
  *&v91 = v20;
  *(&v91 + 1) = v22;
  v23 = bswap32(a3[2].u32[1]);
  v19 = v23 > 0x7C25B080;
  v24 = 1000000000 * v23 - 2082844800000000000;
  if (!v19)
  {
    v24 = 0;
  }

  v25 = bswap32(a3[3].u32[0]);
  if (v25 <= 0x7C25B080)
  {
    v26 = 0;
  }

  else
  {
    v26 = 1000000000 * v25 - 2082844800000000000;
  }

  *&v92 = v24;
  *(&v92 + 1) = v26;
  v27 = a3[9].u32[1];
  DWORD2(v93[0]) = a5;
  v28 = a3[5].u8[1];
  v29 = v28 | (a3[5].u8[0] << 16);
  *&v93[1] = __PAIR64__(v29, bswap32(v27));
  *(&v93[1] + 1) = vrev32_s8(a3[4]);
  v30 = bswap32(a3[5].u16[1]);
  v31 = HIWORD(v30);
  LOWORD(v93[2]) = HIWORD(v30);
  if ((v28 & 0x20) != 0 && *&a3[11])
  {
    v29 &= 0xFF00DFu;
    DWORD1(v93[1]) = v29;
  }

  v32 = 32832;
  if ((a3->i16[1] & 0x800) == 0)
  {
    v32 = 0x8000;
  }

  *&v93[0] = v32;
  __src = a3[8].u32[0];
  if (__src)
  {
    if ((v29 & 0x40) != 0)
    {
      *__str = 0xAAAAAAAAAAAAAAAALL;
      sub_100062AD8(v86, 3, 32, &__src, 4);
      v43 = *(a1 + 376);
      if (__src >= *(v43 + 960))
      {
        *(v43 + 960) = __src + 1;
      }

      v44 = sub_10001922C(a1, a4, 0);
      if (v44)
      {
        v45 = v44;
        fprintf(__stderrp, "apfs_create_doc_id_tree_if_needed() failed: %d\n", v44);
        goto LABEL_117;
      }

      if (*(*(a1 + 376) + 1072))
      {
        v51 = sub_10002F2A8(a1, 7, a4, __str);
        if (v51)
        {
          v45 = v51;
          fprintf(__stderrp, "jfs_get_tree() failed: %d\n", v51);
          goto LABEL_117;
        }

        v75 = sub_10001111C(a1, a4, __src, v77);
        if (v75)
        {
          v45 = v75;
          fprintf(__stderrp, "doc_id_tree_insert() failed: %d\n", v75);
          sub_100046D50(*__str);
          goto LABEL_117;
        }

        sub_100046D50(*__str);
      }

      v33 = 1;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
    v29 &= ~0x40u;
    DWORD1(v93[1]) = v29;
  }

  v34 = bswap64(v16);
  if (a7)
  {
    sub_100062AD8(v86, 4, 2, a7, a8);
    v33 = 1;
  }

  v35 = bswap32(a3->u16[0]) >> 16;
  v36 = v78;
  if (v35 == 1)
  {
    v40 = bswap32(a3->u32[1]);
    DWORD2(v93[0]) = v40;
    v37 = a2;
    if (*(a2 + 228) == v78)
    {
      DWORD2(v93[0]) = v40 - 1;
    }

    if ((v31 & 0xF000) != 0x4000)
    {
      LOWORD(v93[2]) = v31 & 0xFFF | 0x4000;
    }

    if (!v27)
    {
      LODWORD(v93[1]) = 1;
    }

    v41 = v77;
    if ((a3[7].i16[0] & 0x40) != 0)
    {
      DWORD1(v93[1]) = v29 | 0x8000;
    }

    v42 = a4;
    goto LABEL_86;
  }

  v37 = a2;
  if (v35 != 2)
  {
    fprintf(__stderrp, "hfs_insert_inode: invalid record type (%u)\n", v35);
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1966, 16, -102);
  }

  v38 = a3[7].i16[0];
  if ((v38 & 0x40) != 0)
  {
    v29 |= 0x8000u;
    DWORD1(v93[1]) = v29;
  }

  if ((a3->i16[1] & 0x100) != 0)
  {
    if ((v29 & 0x20002) != 0)
    {
      goto LABEL_49;
    }

    v39 = v29 | 2;
  }

  else
  {
    v39 = v29 & 0xFFFDFFFD;
  }

  DWORD1(v93[1]) = v39;
LABEL_49:
  if (v79)
  {
    v42 = a4;
    if (v34 >= 0x401)
    {
      fprintf(__stderrp, "Symlink too large (cnid=%u, size=%llu)\n", v78, v34);
      v34 = 1024;
    }

    v87 = v34;
    if ((v31 & 0xF000) != 0xA000)
    {
      LOWORD(v93[2]) = v31 & 0xFFF | 0xA000;
    }

    if (dword_1000885E4)
    {
      v46 = *(a2 + 264);
      *(a2 + 272) += v34;
      *(a2 + 264) = v46 + *(a2 + 128) * bswap32(a3[12].u32[1]);
    }

    v41 = v77;
    goto LABEL_86;
  }

  v42 = a4;
  if ((v31 & 0xB000) != 0x2000)
  {
    v52 = v31 & 0xF000;
    if (v52 != 4096 && v52 != 0x8000 && v52 != 49152)
    {
      LOWORD(v93[2]) = v31 & 0xFFF | 0x8000;
      LOWORD(v31) = v93[2];
    }
  }

  v47 = 1;
  if (a3[6].i32[0] == 1886544998 && (v38 & 0x80) != 0 && a3[6].i32[1] == 1396916557)
  {
    v48 = bswap32(a3[1].u32[1]);
    if (v48 == *(a2 + 144) || v48 == *(a2 + 148))
    {
      v47 = 0;
    }
  }

  v49 = *(a2 + 128) * bswap32(a3[12].u32[1]);
  *&v87 = v34;
  *(&v87 + 1) = v49;
  if ((*(a2 + 143) & 0x40) != 0)
  {
    *&v88 = v78;
  }

  else
  {
    v50 = *(qword_1000885F8 + 48);
    if (!*v50 && (*(v50 + 104))(v50, *(a2 + 32)) && *(a2 + 16) != a1)
    {
      *&v88 = 4;
      sub_1000347D0(a1, 4, a4);
    }
  }

  if (!v27)
  {
    LODWORD(v93[1]) = 1;
  }

  if ((v31 & 0xF000) == 0x8000)
  {
    v41 = v77;
    if ((bswap64(a3[22].u32[1]) | bswap32(a3[12].u32[1])) * *(a2 + 128))
    {
      sub_100062AD8(v86, 8, 32, &v87, 40);
      v84[1] = v77;
      v84[0] = 1573126;
      v33 = 1;
      v84[2] = 1;
      sub_100030EB4(a1, 1, v84, a4);
    }

    if (v47)
    {
      goto LABEL_83;
    }

LABEL_85:
    *(&v93[1] + 1) = 0;
    memset(__str, 170, 12);
    v53 = snprintf(__str, 0xCuLL, "%u", bswap32(a3[5].u32[1]));
    v36 = v78;
    v54 = sub_10002F29C(a1, v78, "com.apple.hfs.dir-link", __str, v53, a4);
    if (v54)
    {
      sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1936, 160, v54);
    }

    goto LABEL_86;
  }

  v41 = v77;
  if ((v47 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_83:
  v36 = v78;
LABEL_86:
  v55 = *(a1 + 376);
  if (v41 >= *(v55 + 176))
  {
    *(v55 + 176) = v41 + 1;
  }

  if (v33)
  {
    v56 = sub_100062A44(v86);
    v57 = malloc_type_malloc(v56 + 92, 0x100004034A301B9uLL);
    v58 = v91;
    *v57 = v90;
    v57[1] = v58;
    v59 = v93[1];
    v60 = v93[0];
    v61 = v92;
    *(v57 + 76) = *(&v93[1] + 12);
    v57[3] = v60;
    v57[4] = v59;
    v57[2] = v61;
    sub_100062A58(v86, v57 + 46, v56);
    v62 = sub_10000F004(a1, 1, &v94, 8, v57, v56 + 92, v42);
    v63 = v57;
    v37 = a2;
    free(v63);
  }

  else
  {
    v62 = sub_10000F004(a1, 1, &v94, 8, &v90, 0x5Cu, v42);
  }

  if (v62)
  {
    sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1990, 17, v62);
  }

  if (v79)
  {
    memset(__str, 170, 0x401uLL);
    v82 = 0xAAAAAAAAAAAAAAAALL;
    v83 = 0xAAAAAAAAAAAAAAAALL;
    v64 = sub_100015DA4(v37, &a3[13], v36, &v83);
    if (v64)
    {
      v65 = v64;
      fprintf(__stderrp, "hfs_stream_create() failed: %d\n", v64);
      v45 = v65;
      goto LABEL_117;
    }

    if (HIDWORD(v34) || !sub_10001620C(v83, &v82))
    {
      if (v34 >= 0x400)
      {
        v34 = 1024;
      }

      v70 = sub_100016250(v83, 0, v34, __str);
      if (v70)
      {
        v71 = v70;
        fprintf(__stderrp, "hfs_read() failed: %d\n");
LABEL_106:
        v45 = v71;
        goto LABEL_117;
      }
    }

    else
    {
      __memset_chk();
      v66 = v82;
      v67 = *(v37 + 192);
      if (!v67)
      {
        v67 = malloc_type_malloc(0x7FF80uLL, 0x1000040451B5BE8uLL);
        *(v37 + 192) = v67;
      }

      v68 = *(v37 + 200);
      *(v37 + 200) = v68 + 1;
      v69 = &v67[16 * v68];
      *v69 = v66;
      *(v69 + 2) = v34;
      *(v69 + 3) = v36;
    }

    v72 = sub_100014A28(v83);
    if (v72)
    {
      v71 = v72;
      fprintf(__stderrp, "hfs_stream_dispose() failed: %d\n");
      goto LABEL_106;
    }

    __str[v34] = 0;
    sub_10002F29C(a1, v41, "com.apple.fs.symlink", __str, v34 + 1, v42);
  }

  v73 = v93[2] & 0xF000;
  v74 = *(a1 + 376);
  if (v73 == 0x4000)
  {
    v45 = 0;
    ++v74[24];
  }

  else if (v73 == 40960)
  {
    v45 = 0;
    ++v74[25];
  }

  else
  {
    v45 = 0;
    if (v73 == 0x8000)
    {
      ++v74[23];
    }

    else
    {
      ++v74[26];
    }
  }

LABEL_117:
  sub_1000629FC(v86);
  return v45;
}

uint64_t sub_10000E430(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, _DWORD *a5, uint64_t a6, unint64_t a7, int a8, __n128 a9)
{
  if (a8)
  {
    if (qword_100088A70 != a4)
    {
      v12 = 0;
      v11 = 0;
      goto LABEL_7;
    }

    v11 = byte_100088A78;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
LABEL_7:
  v13 = 0;
  v51 = a3 | 0xFFFFFFF00000000;
  v52 = a1 + 536;
  v45 = a5;
  v46 = a6;
  do
  {
    v14 = *(a6 + 8 * v13);
    if (v14.i32[0])
    {
      v15 = HIDWORD(*(a6 + 8 * v13)) == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }

    a9.n128_u64[0] = vrev32_s8(v14);
    v16 = *(a2 + 128);
    v17 = a9.n128_u32[1];
    v18 = v16 * a9.n128_u32[1];
    v19 = *a5;
    v57 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 0xAAAAAAAAAAAAAAAALL;
    if (!v18)
    {
      goto LABEL_70;
    }

    v47 = a9.n128_u32[1];
    v48 = v13;
    v20 = 0;
    v21 = v19 * v16;
    v22 = v16 * a9.n128_u32[0];
    v54 = a9;
    do
    {
      result = sub_100017CE0(a2, v22, v18, &v58, &v57);
      if (result)
      {
        if (result != -124)
        {
          return result;
        }

        memset(__b, 170, 0x206uLL);
        sub_1000172B4(a3, &unk_100064CAF, __b);
        if (!sub_10000F0A4(a2, __b))
        {
          asprintf((qword_1000885F8 + 360), "%s hfs_off=%lld hfs_len=%lld vol_size=%lld", *(qword_1000885F8 + 360), v22, v18, *(a2 + 128) * *(a2 + 132));
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1420, 121, -124);
        }

        v57 = v18;
        goto LABEL_34;
      }

      if (v12)
      {
        if (v11)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if ((*(*(a1 + 376) + 40) & 0x10) != 0)
        {
          v24 = v51;
        }

        else
        {
          v24 = a3;
        }

        qword_100088A70 = a4;
        v25 = sub_10002CA88(a1, v24);
        if (!v25)
        {
          sub_10003E5FC("%s:%d: cnid 0x%x / obj_id 0x%llx is not a valid inode. ignoring orphaned file extents.\n", "hfs_insert_extents", 1462, a3, a4);
          byte_100088A78 = 1;
LABEL_33:
          v57 = v18;
          v12 = 1;
          v11 = 1;
LABEL_34:
          a9 = v54;
          goto LABEL_35;
        }

        byte_100088A78 = 0;
        sub_10002CA94(a1, v25);
        if (v11)
        {
          goto LABEL_33;
        }
      }

      if ((*(a2 + 143) & 0x40) == 0)
      {
        goto LABEL_30;
      }

      v26 = 0x10000000;
      if (!byte_100088A68)
      {
        v26 = 0x200000000;
      }

      if (v26 > a4)
      {
LABEL_30:
        result = sub_10000F14C(a1, a2, a3, a4, v22, v21, v58, v57, a7);
        if (result)
        {
          return result;
        }

        v11 = 0;
        v12 = 1;
        goto LABEL_34;
      }

      v27 = v57;
      if (!qword_100088A80)
      {
        qword_100088A80 = malloc_type_malloc(0x40000uLL, 0x331053A1uLL);
        if (!qword_100088A80)
        {
          sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1240, 370, 12);
        }
      }

      if ((dword_1000885E4 & 0x20) != 0)
      {
        printf("hfs_insert_large_EA_extent: logical_offset %llu apfs_length %lld\n", v21, v27);
      }

      a9 = v54;
      if (v27 >= 1)
      {
        v49 = v27 + v22;
        v28 = v21;
        while (1)
        {
          if (v27 >= 0x40000)
          {
            v29 = 0x40000;
          }

          else
          {
            v29 = v27;
          }

          v30 = sub_100016FE0(a2, qword_100088A80, v29, v49 - v27);
          if (v30)
          {
            sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1257, 371, v30);
          }

          v31 = &selRef_UTF8String;
          v32 = *(qword_1000885F8 + 208);
          v50 = v29;
          if (v32 <= v29)
          {
            break;
          }

LABEL_59:
          v11 = 0;
          v12 = 1;
          v20 = 1;
          v41 = v27 <= v50;
          v27 -= v50;
          a9 = v54;
          if (v41)
          {
            goto LABEL_35;
          }
        }

        v33 = qword_100088A80;
        v34 = v29 / v32;
        while (1)
        {
          __b[0] = 0xAAAAAAAAAAAAAAAALL;
          v60 = 0xAAAAAAAAAAAAAAAALL;
          v35 = sub_100058A6C(*(v31[191] + 13), 0, v34, a7, __b, &v60);
          if (v35)
          {
            sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1273, 372, v35);
          }

          if ((dword_1000885E4 & 0x20) != 0)
          {
            printf("hfs_insert_large_EA_extent: spaceman_alloc alloc'd %lld blocks at paddr %llu\n", v60, __b[0]);
          }

          if (*(a2 + 16) == a1)
          {
            v36 = 0;
          }

          else
          {
            v36 = v52;
          }

          v37 = sub_10001593C(*(*(v31[191] + 13) + 384), __b[0], v60, v33, v36);
          v38 = v31;
          if (v37)
          {
            v44 = v37;
            sub_10005C5F4(*(v38[191] + 13), 0, __b[0], v60, a7);
            sub_100004D50("/Library/Caches/com.apple.xbs/Sources/apfs_executables/hfs/hfs_convert.c", 1289, 373, v44);
          }

          v39 = *(v31[191] + 52);
          v40 = v60 * v39;
          if (sub_10000F14C(a1, a2, a3, a4, v22, v28, __b[0] * v39, v60 * v39, a7))
          {
            break;
          }

          v28 += v40;
          v33 += v40;
          v41 = v34 <= v60;
          v34 -= v60;
          v31 = &selRef_UTF8String;
          if (v41)
          {
            goto LABEL_59;
          }
        }

        sub_10003E5FC("%s:%d: failed to insert large EA extent (cnid 0x%x, obj_id 0x%llx, loff 0x%llx). Ignoring the rest of the large EA extents.\n", "hfs_insert_extents", 1494, a3, a4, v21);
        v12 = 1;
        byte_100088A78 = 1;
        v11 = 1;
        v20 = 1;
        goto LABEL_34;
      }

      v11 = 0;
      v12 = 1;
      v20 = 1;
LABEL_35:
      v21 += v57;
      v22 += v57;
      v18 -= v57;
    }

    while (v18);
    if ((v20 & 1) == 0)
    {
      goto LABEL_69;
    }

    v42 = *(a2 + 168);
    v43 = *(a2 + 160);
    if (v42 != *(a2 + 172))
    {
      goto LABEL_68;
    }

    v43 = malloc_type_realloc(v43, 8 * (v42 + 32), 0x100004000313F17uLL);
    *(a2 + 160) = v43;
    if (!v43)
    {
      return 12;
    }

    v42 = *(a2 + 168);
    *(a2 + 172) += 32;
    a9 = v54;
LABEL_68:
    *(v43 + v42) = a9.n128_u64[0];
    *(a2 + 168) = v42 + 1;
LABEL_69:
    a5 = v45;
    a6 = v46;
    v13 = v48;
    v17 = v47;
LABEL_70:
    *a5 += v17;
    ++v13;
  }

  while (v13 != 8);
  return 0;
}