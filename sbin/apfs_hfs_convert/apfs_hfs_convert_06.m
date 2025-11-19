unint64_t sub_10004BF0C(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = *(*a1 + 392);
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  result = sub_100042FF0(v5, (v5 + 1), (v6 - 8), 0, a2, a3);
  if (result)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = (v8 + 4040);
    }

    else
    {
      v9 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s failed: cksum 0x%016llx, oid 0x%llx, o_xid 0x%llx, o_type 0x%x, o_subtype 0x%x, size %d\n", "obj_checksum_verify", 7004, v9, *v5, v5[1], v5[2], *(v5 + 6), *(v5 + 7), v6);
    atomic_fetch_add_explicit((*(v4 + 376) + 992), 1uLL, memory_order_relaxed);
    if (*(v4 + 625) == 1)
    {
      v10 = *(v4 + 616);
      if (v10)
      {
        v10(a1);
      }
    }

    return sub_1000048F4(v4);
  }

  return result;
}

uint64_t sub_10004C01C(uint64_t a1)
{
  v2 = *a1;
  v7 = 0;
  pthread_mutex_lock(v2);
  while (1)
  {
    v3 = *(v2 + 1376);
    if (!v3)
    {
LABEL_8:
      if (*(a1 + 21))
      {
        v5 = 2;
      }

      else
      {
        v5 = *(a1 + 52);
      }

      sub_1000454D4(v2);
      return v5;
    }

    while (*(v3 + 136) != a1)
    {
      v3 = *(v3 + 104);
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    v4 = *(a1 + 16);
    if ((v4 & 0x8000000000) == 0)
    {
      break;
    }

    *(a1 + 16) = v4 | 4;
    sub_10003E500((v2 + 1328), v2, 2, 0);
  }

  sub_10004C0E0(v3, &v7);
  if (v7 == 1)
  {
    sub_1000454D4(v2);
  }

  return *(a1 + 52);
}

uint64_t sub_10004C0E0(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 136);
  v3 = v2[2];
  if ((v3 & 0x10000000000) != 0)
  {
    v5 = *v2;
    while ((v3 & 0x8000000000) != 0)
    {
      v2[2] = v3 | 4;
      *a2 = 1;
      result = sub_10003E500((v5 + 1328), v5, 2, 0);
      v3 = v2[2];
      if ((v3 & 0x10000000000) == 0)
      {
        return result;
      }
    }

    v2[2] = v3 | 0x8000000000;
    sub_1000454D4(v5);
    *a2 = 0;
    v6 = *(*(*v2 + 392) + 384);

    return sub_10001561C();
  }

  return result;
}

atomic_ullong *sub_10004C19C(atomic_ullong *result)
{
  if ((~atomic_fetch_add_explicit(result + 3, 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  return result;
}

uint64_t sub_10004C1E4(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 0x80000000) == 0)
  {
    panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx is not ephemeral\n", result, *(result + 112), v1, *(result + 32), *(result + 36), *(result + 40), *(result + 24));
  }

  if ((~atomic_fetch_add_explicit((result + 24), 1uLL, memory_order_relaxed) & 0xFFFFFF) == 0)
  {
    panic("Reference count overflowed for object %p!\n", result);
  }

  return result;
}

uint64_t sub_10004C26C(uint64_t result, uint64_t a2)
{
  if ((atomic_fetch_or_explicit((a2 + 32), 0x10u, memory_order_relaxed) & 0x10) == 0)
  {
    v2 = result;
    add_explicit = atomic_fetch_add_explicit((result + 904), 1u, memory_order_relaxed);
    if (add_explicit >= 0x100)
    {
      v7 = a2;
      do
      {
        atomic_fetch_add_explicit((v2 + 904), 0xFFFFFFFF, memory_order_relaxed);
        v4 = pthread_rwlock_unlock((v2 + 128));
        if (v4)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 496, v4);
        }

        v5 = pthread_rwlock_wrlock((v2 + 128));
        if (v5)
        {
          panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 497, v5);
        }

        sub_10004CAB0(v2);
        v6 = pthread_rwlock_unlock((v2 + 128));
        if (v6)
        {
          panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 503, v6);
        }

        result = pthread_rwlock_rdlock((v2 + 128));
        if (result)
        {
          panic("%s:%d: rdlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 506, result);
        }

        add_explicit = atomic_fetch_add_explicit((v2 + 904), 1u, memory_order_relaxed);
      }

      while (add_explicit > 0xFF);
      a2 = v7;
    }

    *(*(v2 + 896) + 8 * add_explicit) = a2;
    atomic_fetch_or_explicit((a2 + 32), add_explicit << 24, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10004C3BC(uint64_t a1, int a2)
{
  v3 = a2 != 0;
  v4 = *a1;
  pthread_mutex_lock(*a1);
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFBFFFFFFFFFLL | (v3 << 38);
  sub_1000454D4(v4);
  return 0;
}

uint64_t sub_10004C410(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  v7 = *(result + 16);
  if ((v7 & 0x10) != 0)
  {
    panic("deleted object @ %p can not be dirtied!! (flags: 0x%llx)\n", result, v7);
  }

  if ((v7 & 0x80000000000) != 0)
  {
    panic("ciphertext object @ %p can not be dirtied!! (flags: 0x%llx)\n", result, v7);
  }

  if ((v7 & 0x8000000) == 0)
  {
    result = sub_10005F17C(*(v6 + 392), a2);
    if (!result)
    {
      v8 = *(v5 + 112);
      panic("oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x bad dirty xid: 0x%llx\n", v8, *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40), a2);
    }
  }

  v9 = *(v5 + 64);
  if (v9 && v9 == *(v5 + 56))
  {
    panic("oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x object not prepared before dirtying\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
  }

  v10 = *(v5 + 16);
  if ((v10 & 0x80000000) != 0)
  {
    *(v5 + 144) = a2;
  }

  else if (atomic_fetch_or_explicit((v5 + 32), 1u, memory_order_relaxed))
  {
    if (a3 && *(v5 + 152) != a3)
    {
      v28 = *(v5 + 152);
      panic("new address mismatch on redirty 0x%llx 0x%llx\n");
    }
  }

  else
  {
    v11 = *(v5 + 36);
    if ((v10 & 0xC00000000) == 0 && !(v11 >> 30))
    {
      v12 = *(v5 + 120);
      if (v12 != a2 && *(v5 + 144) != a2)
      {
        panic("virtual object not prepared before dirtying: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx\n", *(v5 + 112), v10, *(v5 + 32), v11, *(v5 + 40), v12, *(v5 + 144), a2);
      }
    }

    *(v5 + 168) = 0;
    if (v11 >> 30 == 1)
    {
      v13 = *(v5 + 16);
      if ((v13 & 0x40) == 0)
      {
        v14 = *(v5 + 120);
        if (v14 != a2)
        {
          v15 = *(v5 + 144);
          if (v14 != v15 && !(*(v5 + 152) | a3))
          {
            panic("physical object not prepared before dirtying: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx naddr 0x%llx 0x%llx\n", *(v5 + 112), v13, *(v5 + 32), v11, *(v5 + 40), v14, v15, a2, 0, 0);
          }
        }
      }
    }

    v16 = *(v5 + 152);
    if (v16)
    {
      if (v16 != a3)
      {
        if (a3)
        {
          v17 = *(v5 + 36);
          if ((v17 & 0xC0000000) == 0x40000000)
          {
            panic("physical object new address mismatch: oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x xid 0x%llx 0x%llx 0x%llx naddr 0x%llx 0x%llx\n", *(v5 + 112), *(v5 + 16), *(v5 + 32), v17, *(v5 + 40), *(v5 + 120), *(v5 + 144), a2, *(v5 + 152), a3);
          }
        }
      }
    }

    else
    {
      *(v5 + 152) = a3;
      if (a3 && (*(v5 + 16) & 0x40000000) != 0 && *(v5 + 112) != a3)
      {
        v18 = *(v5 + 72);
        v19 = *(v5 + 80);
        if (v18)
        {
          *(v18 + 80) = v19;
        }

        *v19 = v18;
        *(v5 + 112) = a3;
        v20 = (*(v6 + 712) + 8 * (*(v6 + 704) & a3));
        v21 = *v20;
        *(v5 + 72) = *v20;
        if (v21)
        {
          *(v21 + 80) = v5 + 72;
        }

        *v20 = v5;
        *(v5 + 80) = v20;
      }
    }

    *(v5 + 144) = a2;
    v22 = pthread_rwlock_wrlock((v6 + 128));
    if (v22)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_executables/nx/obj.c", 6038, v22);
    }

    v23 = (v5 + 88);
    if (*(v5 + 88) != 3735928559)
    {
      sub_10004CC1C(v5);
    }

    v24 = atomic_fetch_and_explicit((v5 + 32), 0xFFFFEFu, memory_order_relaxed);
    if ((v24 & 0x10) != 0)
    {
      *(*(v6 + 896) + 8 * HIBYTE(v24)) = 0;
    }

    if (*v23 != 3735928559)
    {
      panic("obj %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x dirty object on the free list?!\n", v5, *(v5 + 112), *(v5 + 16), *(v5 + 32), *(v5 + 36), *(v5 + 40));
    }

    v25 = *(v5 + 16);
    *(v5 + 88) = 0;
    if ((v25 & 0x40000000) != 0)
    {
      v27 = *(v6 + 848);
      *(v5 + 96) = v27;
      *v27 = v5;
      *(v6 + 848) = v23;
      ++*(v6 + 912);
    }

    else
    {
      v26 = *(v6 + 832);
      *(v5 + 96) = v26;
      *v26 = v5;
      *(v6 + 832) = v23;
      ++*(v6 + 908);
    }

    result = pthread_rwlock_unlock((v6 + 128));
    if (result)
    {
      panic("%s:%d: unlock == 0 failed %d\n");
    }
  }

  return result;
}

void sub_10004C7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 19) & 0x80) != 0)
  {
    *(a1 + 144) = a2;
  }

  else
  {
    v5 = *a1;
    if ((atomic_fetch_or_explicit((a1 + 32), 0, memory_order_relaxed) & 1) == 0)
    {
      pthread_mutex_lock(v5);
      sub_10004C410(a1, a2, a3);

      sub_1000454D4(v5);
    }
  }
}

uint64_t sub_10004C860(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  pthread_mutex_lock(*a1);
  v5 = *(a1 + 16);
  if ((v5 & 0x20000000000) != 0)
  {
    do
    {
      *(a1 + 16) = v5 | 0x80;
      v7 = sub_10003E500(&v4[20].__opaque[40], v4, 2, 0);
      v5 = *(a1 + 16);
    }

    while ((v5 & 0x20000000000) != 0);
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  sub_1000454D4(v4);
  return v6;
}

uint64_t sub_10004C8EC(uint64_t a1)
{
  if ((*(a1 + 19) & 0x80) != 0)
  {
    return (4 * atomic_fetch_or_explicit((a1 + 32), 4u, memory_order_relaxed)) & 0x10;
  }

  else
  {
    return sub_1000048F4(*(*a1 + 392));
  }
}

uint64_t sub_10004C924(uint64_t a1)
{
  if ((*(a1 + 19) & 0x80) == 0)
  {
    return sub_1000048F4(*(*a1 + 392));
  }

  if ((atomic_fetch_and_explicit((a1 + 32), 0xFFFFFFFB, memory_order_relaxed) & 4) != 0)
  {
    return 0;
  }

  return 22;
}

uint64_t sub_10004C960(uint64_t a1)
{
  v1 = *a1;
  if ((*(a1 + 19) & 0x80) != 0)
  {
    pthread_mutex_lock(*a1);
    v5 = *(a1 + 16);
    if ((v5 & 0x2000000000) != 0)
    {
      *(a1 + 16) = v5 & 0xFFFFFFDFFFFFFFFFLL;
      sub_1000454D4(v1);
      return 0;
    }

    else
    {
      sub_1000454D4(v1);
      return 22;
    }
  }

  else
  {
    v2 = *v1[6].__opaque;

    return sub_1000048F4(v2);
  }
}

uint64_t sub_10004C9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 36);
  if (v4 > 0xA)
  {
    if (v4 != 11)
    {
      if (v4 == 13)
      {
        return sub_100018C74(a1, a2, a3, a4);
      }

      return 22;
    }

    return sub_10004EFF0(a1, a2, a3, a4);
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        return sub_100025404(a1, a2, 0, a3, a4);
      }

      return 22;
    }

    return sub_100025610(a1, a2, a3, a4);
  }
}

unint64_t sub_10004CA54(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  atomic_fetch_add_explicit((*(*(*a1 + 392) + 376) + 984), 1uLL, memory_order_relaxed);
  return sub_100042F80(v3, (v3 + 8), (v4 - 8), 0, a2, a3);
}

uint64_t sub_10004CAB0(uint64_t a1)
{
  v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v15);
  v3 = *(a1 + 904);
  if (v3)
  {
    v4 = 0;
    tv_sec = v15.tv_sec;
    do
    {
      v6 = *(*(a1 + 896) + 8 * v4);
      if (v6)
      {
        add_explicit = atomic_fetch_add_explicit((v6 + 24), 0, memory_order_relaxed);
        v9 = (-(add_explicit >> 44) & 0xFFFFF) != 0 || (add_explicit & 0xFFFFFF) > ((add_explicit >> 24) & 0xFFFFF);
        v10 = v6 + 88;
        if (*(v6 + 88) != 3735928559)
        {
          result = sub_10004CC1C(v6);
        }

        if (!v9 && *(v6 + 36) != 13)
        {
          *(v6 + 160) = tv_sec;
          v11 = *(v6 + 16);
          if ((v11 & 0x400000000000) != 0)
          {
            atomic_fetch_or_explicit((v6 + 32), 0x20u, memory_order_relaxed);
            v13 = *(a1 + 816);
            *(v6 + 88) = 0;
            *(v6 + 96) = v13;
            *v13 = v6;
            *(a1 + 816) = v10;
            ++*(a1 + 924);
          }

          else
          {
            *(v6 + 88) = 0;
            if ((v11 & 0x40000000) != 0)
            {
              v14 = *(a1 + 800);
              *(v6 + 96) = v14;
              *v14 = v6;
              *(a1 + 800) = v10;
              ++*(a1 + 920);
            }

            else
            {
              v12 = *(a1 + 784);
              *(v6 + 96) = v12;
              *v12 = v6;
              *(a1 + 784) = v10;
              ++*(a1 + 916);
            }
          }
        }

        atomic_fetch_and_explicit((v6 + 32), 0xFFFFEFu, memory_order_release);
        v3 = *(a1 + 904);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  *(a1 + 904) = 0;
  return result;
}

uint64_t sub_10004CC1C(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 != 3735928559)
  {
    v2 = *result;
    if ((*(result + 32) & 0x20) != 0)
    {
      atomic_fetch_and_explicit((result + 32), 0xFFFFFFDF, memory_order_relaxed);
      v5 = *(result + 96);
      v6 = v2 + 204;
      if (v1)
      {
        v6 = (v1 + 96);
      }

      *v6 = v5;
      *v5 = v1;
      --v2[231];
    }

    else
    {
      v3 = *(result + 96);
      v4 = (v1 + 96);
      if ((*(result + 19) & 0x40) != 0)
      {
        if (!v1)
        {
          v4 = v2 + 200;
        }

        *v4 = v3;
        *v3 = v1;
        --v2[230];
      }

      else
      {
        if (!v1)
        {
          v4 = v2 + 196;
        }

        *v4 = v3;
        *v3 = v1;
        --v2[229];
      }
    }

    *(result + 88) = 3735928559;
  }

  return result;
}

void sub_10004CCD0(uint64_t a1, const char *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v4;
  v21 = v4;
  v18 = v4;
  v19 = v4;
  v16 = v4;
  v17 = v4;
  *v14 = v4;
  v15 = v4;
  v5 = backtrace(v14, 16);
  v6 = backtrace_symbols(v14, v5);
  v7 = *(a1 + 112);
  fprintf(__stderrp, "Allocated %s object with OID %lld flags %llx type %x %d from\n", a2, v7, *(a1 + 16), *(a1 + 36), *(a1 + 40));
  if (v5 >= 1)
  {
    v8 = v5;
    v9 = v14;
    v10 = v6;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v10++;
      fprintf(__stderrp, "\t%16p %s\n", v11, v13);
      --v8;
    }

    while (v8);
  }

  free(v6);
}

void sub_10004CDE8(void *a1, unsigned __int16 a2, int a3)
{
  if (a3 == 376)
  {
    goto LABEL_2;
  }

  if (a2 > 0xCu)
  {
    if (a2 <= 0x18u)
    {
      if (a2 == 13)
      {
        v3 = 6256;
        goto LABEL_3;
      }

      if (a2 != 17)
      {
        if (a2 == 18)
        {
          v3 = 384;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      if (a2 <= 0x1Cu)
      {
        if (a2 == 25)
        {
          v3 = 416;
          goto LABEL_3;
        }

        if (a2 != 27)
        {
          goto LABEL_2;
        }

LABEL_24:
        v3 = 392;
        goto LABEL_3;
      }

      if (a2 == 29)
      {
        goto LABEL_24;
      }

      if (a2 != 30)
      {
        goto LABEL_2;
      }
    }

    v3 = 400;
    goto LABEL_3;
  }

  if (a2 > 5u)
  {
    if (a2 - 6 >= 3)
    {
      if (a2 == 11)
      {
        v3 = 496;
        goto LABEL_3;
      }

      goto LABEL_2;
    }
  }

  else if (a2 - 2 >= 2)
  {
    if (a2 == 1)
    {
      v3 = 1192;
      goto LABEL_3;
    }

    if (a2 == 5)
    {
      v3 = 1664;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 376;
LABEL_3:
    sub_10003FB5C(a1, v3);
    return;
  }

  sub_10003FB10(a1, 4u);
}

uint64_t sub_10004CED0(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 16) & 2) != 0 || sub_1000497B4(*(a1 + 36), &v2))
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

void sub_10004CF18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_10004CED0(a1);
    if (v3)
    {
      v4 = v3(a1);
      if (v4)
      {
        v5 = *(a1 + 8);
        if (v5)
        {
          v6 = (v5 + 4040);
        }

        else
        {
          v6 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error destroying: %d\n", "obj_destroy_complete", 3043, v6, *(a1 + 112), *(a1 + 16), *(a1 + 36), *(a1 + 40), v4);
      }
    }
  }

  if (*(a1 + 88) != 3735928559)
  {
    panic("object to be freed is on a list, o %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx list %p/%p\n", a1, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24), *(a1 + 88), *(a1 + 96));
  }

  j__pthread_rwlock_destroy((a1 + 176));
  sub_100044E88(*(a1 + 56), *(a1 + 48), *(a1 + 16), *a1);
  v7 = *(a1 + 36);
  v8 = *(a1 + 44);

  sub_10004CDE8(a1, v7, v8);
}

void sub_10004D034(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = 0;
  v5 = *(a1 + 120);
  v20 = 16000;
  v6 = *(a1 + 136);
  if (v5)
  {
    v7 = (a1 + 120);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 160);
  }

  v8 = *v6;
  v9 = *(a1 + 96);
  v10 = *(a1 + 144);
  v11 = v10 & 0xFFFF0000;
  if (v5)
  {
    v11 |= v5;
    v12 = *(a1 + 124);
    if (v9)
    {
LABEL_8:
      pthread_mutex_lock(*v6);
      *(v6 + 52) = v9;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  if ((*(v6 + 18) & 0x8002000) != 0)
  {
    pthread_mutex_lock(*v6);
    *(v6 + 52) = 0;
  }

  else
  {
    v18 = sub_10004BF0C(*(a1 + 136), a2, a3);
    pthread_mutex_lock(v8);
    *(v6 + 52) = v18;
    if (v18)
    {
LABEL_9:
      v13 = *(v6 + 16);
      *(v6 + 16) = v13 & 0xFFFFFE7FFFFFFFFBLL;
      if ((v13 & 4) != 0)
      {
        j__pthread_cond_broadcast((*v6 + 1328));
      }

      goto LABEL_16;
    }
  }

  if (sub_10004B2CC(v6, v10, *(v6 + 112), v7, v4, *(v6 + 120), v11, v12) || (v19 = 2, v14 = sub_10004B4EC(v6, v10, *(v6 + 120), 0, &v20, &v19), (*(v6 + 52) = v14) != 0))
  {
LABEL_16:
    *(v6 + 16) = *(v6 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = &v8[21].__opaque[32];
  if (v15)
  {
    v17 = (v15 + 112);
  }

  *v17 = v16;
  *v16 = v15;
  sub_1000454D4(v8);
  sub_100046D50(v6);
  if (*(a1 + 152) == 1)
  {
    sub_10003FB5C(*(a1 + 160), *(v4 + 2));
  }

  sub_10003FB5C(a1, 168);
  if (atomic_fetch_add_explicit(&v8[14].__opaque[40], 0xFFFFFFFF, memory_order_relaxed) == 1 && atomic_fetch_add_explicit(&v8[14].__opaque[36], 0, memory_order_relaxed))
  {
    pthread_mutex_lock(v8);
    j__pthread_cond_broadcast(&v8[20].__opaque[40]);

    sub_1000454D4(v8);
  }
}

atomic_ullong *sub_10004D25C(atomic_ullong *result, int a2, uint64_t a3, unint64_t a4)
{
  v5 = a2 & 0xC8000000;
  if (a2 < 0 == v4)
  {
    if (v5 != 0x40000000 && v5 != 0)
    {
LABEL_14:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    v6 = result + 23;
    if (a3)
    {
      atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
      v7 = result + 24;
      goto LABEL_17;
    }

LABEL_18:
    v9 = 5;
    goto LABEL_19;
  }

  if (v5 == 0x80000000)
  {
    v6 = result + 29;
    if (a3)
    {
      atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
      v7 = result + 30;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v5 != -2013265920)
  {
    goto LABEL_14;
  }

  v6 = result + 35;
  if (!a3)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
  v7 = result + 36;
LABEL_17:
  atomic_fetch_add_explicit(v7, a4, memory_order_relaxed);
  v9 = 3;
LABEL_19:
  atomic_fetch_add_explicit(&v6[v9], 1uLL, memory_order_relaxed);
  return result;
}

uint64_t sub_10004D314(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_10004D370(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_10004D3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a2 + 472);
  if ((a3 & 1) == 0 && v9)
  {
    *a5 = v9;
    sub_10004C19C(v9);
    return 0;
  }

  if (v9)
  {
    *a5 = v9;
    sub_10004C19C(v9);
    if ((a3 & 1) == 0)
    {
      return 0;
    }

    v16 = sub_10004B964(*a5, (*(*(a2 + 376) + 40) >> 29) & 2, a4);
    if (v16)
    {
      v10 = v16;
      sub_100046D50(*a5);
      *a5 = 0;
      return v10;
    }

LABEL_17:
    if (sub_100047D10(*a5) != *(*(a2 + 376) + 48))
    {
      *(*(a2 + 376) + 48) = sub_100047D10(*a5);
      sub_10004C7D8(a2, a4, 0);
    }

    return 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  v17[1] = 0;
  v18 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17[0] = sub_10004D314;
  v17[2] = 0x20000000BLL;
  if (v13 != 2)
  {
    return 22;
  }

  v10 = sub_10002462C(a1, v13 & 0xFFFF0000, v14, 0, a3, v17, a4, a5);
  if (!v10)
  {
    v15 = 0;
    atomic_compare_exchange_strong((a2 + 472), &v15, *a5);
    if (!v15)
    {
      sub_10004C19C(*a5);
    }

    if ((a3 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_17;
  }

  return v10;
}

uint64_t sub_10004D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  *(a1 + 32) = *a3;
  *(a1 + 40) = *(a3 + 4);
  return result;
}

uint64_t sub_10004D580(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 44);
  v4 = v3 == 1073741826 || v3 == -2147483646;
  if (v4 && ((v5 = *(v2 + 40), v5 != -2147483646) ? (v6 = v5 == 1073741826) : (v6 = 1), v6) || (result = sub_1000048F4(*(*a1 + 392)), !result))
  {
    result = 0;
    a1[47] = v2;
  }

  return result;
}

uint64_t sub_10004D5F8(void *a1)
{
  v2 = a1[59];
  if (v2 && !*(*a1 + 940))
  {
    sub_100046D50(v2);
  }

  return 0;
}

uint64_t sub_10004D630(uint64_t *a1, char a2, int *a3, uint64_t a4, unint64_t a5)
{
  v8 = a1[47];
  v9 = a1[1];
  v10 = *(*a1 + 392);
  if (v9)
  {
    v11 = a1[1];
  }

  else
  {
    v11 = *(*a1 + 392);
  }

  memset(v109, 170, sizeof(v109));
  v107 = -1431655766;
  v108 = -1431655766;
  v12 = *(*(v10 + 376) + 36);
  if ((a2 & 2) == 0)
  {
    if (*a3)
    {
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a3 = 1;
      if (v9)
      {
LABEL_7:
        v13 = sub_10004B964(v9, 0, a5);
        if (v13)
        {
          if (sub_100046328(v9) == 13)
          {
            v14 = (v9 + 505);
          }

          else
          {
            v14 = (v9[48] + 212);
          }

          sub_10003E5FC("%s:%d: %s obj_modify() failed: %d\n", "omap_reap", 309, v14, v13);
        }

LABEL_25:
        v21 = *a3;
        if (*a3 == 1)
        {
          v120 = 0xAAAAAAAAAAAAAAAALL;
          *&v112[0] = 0xAAAAAAAAAAAAAAAALL;
          sub_100054ED8(v11, 0, &v120, v112, 0, 0);
          v22 = sub_10004D3A4(v11, a1, 0, 0, v109);
          if (v22)
          {
            v13 = v22;
            if (sub_100046328(v11) == 13)
            {
              v23 = (v11 + 4040);
            }

            else
            {
              v23 = (*(v11 + 384) + 212);
            }

            sub_10003E5FC("%s:%d: %s failed to get omap tree for reaping: %d\n", "omap_reap", 322, v23, v13);
            return v13;
          }

          v106 = v8;
          v25 = 0;
          v26 = 1024;
          if (*&v112[0] < 0x7D1uLL)
          {
            v26 = 102;
          }

          if (*&v112[0] >= 0x3E9uLL)
          {
            v27 = v26;
          }

          else
          {
            v27 = 51;
          }

          v107 = 16;
          v108 = 16;
          v95 = v12 - 1;
          v97 = v27;
          v100 = (v11 + 4040);
          while (1)
          {
            v28 = sub_100022D54(v109[0], 0, a3 + 1, &v108, 0x10u, &v109[1], &v107, 4u, 0, 0);
            if (v28)
            {
              break;
            }

            if (v109[1])
            {
              v107 = 16;
              v108 = 16;
            }

            else
            {
              v102 = v12;
              v29 = (v95 + HIDWORD(v109[1])) / v12;
              v30 = sub_10005C5F4(v11, 64, v109[2], v29, a5);
              if (v30)
              {
                v31 = v30;
                v32 = sub_100046328(v11);
                v33 = (v11 + 4040);
                if (v32 != 13)
                {
                  v33 = (*(v11 + 384) + 212);
                }

                sub_10003E5FC("%s:%d: %s spaceman_free(%lld, %lld) failed: %d\n", "omap_reap", 349, v33, v109[2], v29, v31);
              }

              sub_100047594(*(v10 + 392), v9, *(a3 + 1), *(a3 + 2));
              v25 += v29;
              if (v25 >= v97)
              {
                v13 = 36;
                goto LABEL_48;
              }

              v107 = 16;
              v108 = 16;
              v12 = v102;
            }
          }

          v13 = v28;
          if (v28 == 36)
          {
LABEL_48:
            v8 = v106;
            goto LABEL_60;
          }

          v13 = sub_100025B30(v109[0], a5, 0);
          v8 = v106;
          if (v13)
          {
            if (sub_100046328(v11) != 13)
            {
              v100 = (*(v11 + 384) + 212);
            }

            sub_10003E5FC("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 373, v100, v13);
          }

          *a3 = 2;
LABEL_60:
          sub_100046D50(v109[0]);
          v21 = *a3;
        }

        if (v21 != 2)
        {
          return v13;
        }

        v34 = *(v8 + 56);
        if (v34)
        {
          v35 = *(v8 + 44);
          v121 = 0u;
          v126 = 0;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v120 = sub_10004D370;
          DWORD2(v121) = 19;
          if (v35 == 2)
          {
            v13 = sub_10002462C(v11, v35 & 0xFFFF0000, v34, 0, 0, &v120, 0, v109);
            if (!v13)
            {
              v13 = sub_100025B30(v109[0], a5, 0);
              if (v13)
              {
                if (sub_100046328(v11) == 13)
                {
                  v36 = (v11 + 4040);
                }

                else
                {
                  v36 = (*(v11 + 384) + 212);
                }

                sub_10003E5FC("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 390, v36, v13);
              }

              sub_100046D50(v109[0]);
              goto LABEL_73;
            }
          }

          else
          {
            v13 = 22;
          }

          if (sub_100046328(v11) == 13)
          {
            v37 = (v11 + 4040);
          }

          else
          {
            v37 = (*(v11 + 384) + 212);
          }

          sub_10003E5FC("%s:%d: %s failed to get omap snapshot tree for reaping: %d\n", "omap_reap", 386, v37, v13);
        }

LABEL_73:
        sub_100049B88(a1, a5);
        *a3 = -1;
        return v13;
      }
    }

    v13 = 0;
    goto LABEL_25;
  }

  v118 = 0;
  v119 = 0xAAAAAAAAAAAAAAAALL;
  v117 = 0;
  memset(v116, 170, sizeof(v116));
  memset(v115, 170, sizeof(v115));
  memset(v114, 170, sizeof(v114));
  v113 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112[2] = v15;
  v112[3] = v15;
  v112[0] = v15;
  v112[1] = v15;
  v110 = 0xAAAAAAAAAAAAAAAALL;
  v111 = 0xAAAAAAAAAAAAAAAALL;
  sub_100054ED8(v11, 0, &v111, &v110, 0, 0);
  if (v110 >= 0x7D1)
  {
    v16 = 1024;
  }

  else
  {
    v16 = 102;
  }

  if (v110 >= 0x3E9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 51;
  }

  sub_10004B8D4(a1, 2);
  v18 = *(a1 + 96);
  if (v18)
  {
      ;
    }
  }

  v105 = v17;
  *(a1 + 96) = v18 | 1;
  v19 = sub_10004FFF4(v11, a1, a5);
  if (v19)
  {
    LODWORD(v13) = v19;
    if (sub_100046328(v11) == 13)
    {
      v20 = (v11 + 4040);
    }

    else
    {
      v20 = (*(v11 + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s error modifying omap: %d\n", "omap_cleanup", 1431, v20, v13);
    if (v13 == 28)
    {
      v13 = 36;
    }

    else
    {
      v13 = v13;
    }

    goto LABEL_78;
  }

  v24 = sub_10004D3A4(v11, a1, 1, a5, &v117);
  if (v24)
  {
    v13 = v24;
    if (sub_100046328(v11) != 13)
    {
      v39 = *(v11 + 384) + 212;
    }

    sub_10003E5FC("%s:%d: %s error getting mapping tree: %d\n");
    goto LABEL_78;
  }

  if (*a3)
  {
    v38 = 0;
  }

  else
  {
    sub_10004BE88(a1, 2);
    v116[0] = 0uLL;
    v114[0] = 0x1000000010;
    sub_1000236D0(v112, v117, 0, 0, v116, 16, 0x10u, v115, 0x10u, 0);
    v38 = 0;
    if (!sub_100023848(v112))
    {
      v38 = 0;
      v99 = v12 - 1;
      v104 = v12;
      while (*&v116[0] < *(v8 + 88))
      {
        v62 = sub_1000229C0(v117, 0, v116, 0x10u, a5);
        if (v62)
        {
          v63 = v62;
          if (sub_100046328(v11) == 13)
          {
            sub_10003E5FC("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (v11 + 4040), *&v116[0], *(&v116[0] + 1), v63);
          }

          else
          {
            sub_10003E5FC("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (*(v11 + 384) + 212), *&v116[0], *(&v116[0] + 1), v63);
          }
        }

        if ((v115[0] & 1) == 0)
        {
          v64 = (v99 + DWORD1(v115[0])) / v104;
          v65 = sub_10005C5F4(v11, 64, *(&v115[0] + 1), v64, a5);
          if (v65)
          {
            v66 = v65;
            v67 = sub_100046328(v11);
            v68 = (v11 + 4040);
            if (v67 != 13)
            {
              v68 = (*(v11 + 384) + 212);
            }

            sub_10003E5FC("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1463, v68, *(&v115[0] + 1), v64, v66);
          }

          sub_100047594(*(v10 + 392), v9, *&v116[0], *(&v116[0] + 1));
        }

        v12 = v104;
        if (v105 == v38)
        {
          goto LABEL_198;
        }

        ++v38;
        sub_100023864(v112);
        if (sub_100023848(v112))
        {
          break;
        }
      }
    }

    sub_10004B8D4(a1, 2);
  }

  v41 = *(v8 + 56);
  if (!v41)
  {
    goto LABEL_218;
  }

  v101 = v38;
  v103 = v12;
  if (*a3 && *(a3 + 4) != -1)
  {
    goto LABEL_88;
  }

  v58 = *(v8 + 44);
  v121 = 0u;
  v126 = 0;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v120 = sub_10004D370;
  DWORD2(v121) = 19;
  if (v58 != 2)
  {
    v13 = 22;
LABEL_150:
    if (sub_100046328(v11) != 13)
    {
      v61 = *(v11 + 384) + 212;
    }

    goto LABEL_156;
  }

  v13 = sub_10002462C(v11, v58 & 0xFFFF0000, v41, 0, 0, &v120, a5, &v118);
  if (v13)
  {
    goto LABEL_150;
  }

  if (!*a3)
  {
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    v77 = (a3 + 4);
    v119 = 0;
    v114[0] = 0x800000010;
    sub_1000236D0(v112, v118, 0, 0, &v119, 8, 8u, &v116[1], 0x10u, 0);
    while (!sub_100023848(v112))
    {
      v78 = v116[1];
      v79 = *v77;
      if (v116[1])
      {
        if (v79)
        {
          if (((a3[1] ^ LODWORD(v116[1])) & 2) != 0)
          {
            break;
          }

          *(a3 + 3) = v119;
        }

        else
        {
          v80 = v119;
          *(a3 + 2) = v119;
          *(a3 + 3) = v80;
          a3[1] = v78;
        }
      }

      else if (v79)
      {
        goto LABEL_213;
      }

      sub_100023864(v112);
    }

    v79 = *v77;
    if (*v77)
    {
LABEL_213:
      *(a3 + 1) = v79;
      v114[0] = 0x800000010;
      v81 = sub_100022D54(v118, 0, a3 + 1, v114 + 1, 8u, &v116[1], v114, 2u, 0, 0);
      if (v81)
      {
        v13 = v81;
        if (v81 != 2)
        {
          if (sub_100046328(v11) != 13)
          {
            v87 = *(v11 + 384) + 212;
          }

          goto LABEL_243;
        }

        *(a3 + 1) = 0;
      }

      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      if (sub_100046328(v11) == 13)
      {
        v82 = (v11 + 4040);
      }

      else
      {
        v82 = (*(v11 + 384) + 212);
      }

      sub_10003E50C("%s:%d: %s started cleaning snapshots %lld-%lld\n", "omap_cleanup", 1556, v82, *(a3 + 2), *(a3 + 3));
      a1[60] = *(a3 + 1);
      v60 = *(a3 + 3);
      a1[61] = v60;
      *a3 = 1;
      *(a1 + 96) |= 2u;
      v59 = (a3 + 8);
LABEL_228:
      *v59 = v60;
      v114[0] = 0x800000010;
      v84 = sub_100022D54(v118, 0, v59, v114 + 1, 8u, &v116[1], v114, 4u, 0, 0);
      if (v84)
      {
        v13 = v84;
        if (v84 != 2)
        {
          if (sub_100046328(v11) != 13)
          {
            v85 = *(v11 + 384) + 212;
          }

          goto LABEL_243;
        }

        *v59 = -1;
      }

      goto LABEL_88;
    }

LABEL_218:
    v13 = 0;
    goto LABEL_78;
  }

  v59 = (a3 + 8);
  if (*(a3 + 4) == -1)
  {
    v60 = *(a3 + 3);
    goto LABEL_228;
  }

LABEL_88:
  if (v118)
  {
    sub_100046D50(v118);
    v118 = 0;
  }

  v96 = a3[1];
  v93 = *(a3 + 3);
  v94 = *(a3 + 1);
  v92 = *(a3 + 4);
  v116[0] = *(a3 + 10);
  v114[0] = 0x1000000010;
  v42 = sub_100022D54(v117, 0, v116, v114 + 1, 0x10u, v115, v114, 3u, 0, 0);
  if (v42)
  {
    v13 = v42;
    if (v42 != 2)
    {
      goto LABEL_78;
    }

    *&v116[0] = 0;
  }

  sub_10004BE88(a1, 2);
  v43 = *&v116[0];
  if (!*&v116[0])
  {
    sub_10004B8D4(a1, 2);
    goto LABEL_173;
  }

  v44 = 0;
  v98 = 0;
  v91 = (v11 + 4040);
  while (1)
  {
    v45 = v44;
    if (v43 != v98)
    {
      if (v101 >= v105)
      {
        *(a3 + 10) = v116[0];
LABEL_198:
        sub_10004B8D4(a1, 2);
        v13 = 36;
        goto LABEL_78;
      }

      v45 = 0;
    }

    v98 = v43;
    v115[1] = v116[0];
    v114[0] = 0x1000000010;
    v46 = sub_100022D54(v117, 0, &v115[1], v114 + 1, 0x10u, &v114[1], v114, 4u, 0, 0);
    if (v46)
    {
      break;
    }

LABEL_101:
    v44 = (v45 + 1);
    if (*(&v116[0] + 1) <= v94 || *(&v116[0] + 1) > v93)
    {
      if ((v96 & 2) != 0 && *&v115[1] == *&v116[0])
      {
        v13 = 0;
        if (*(&v115[1] + 1) <= v94 || *(&v115[1] + 1) > v92)
        {
          goto LABEL_118;
        }

        v13 = 0;
        v48 = v114[1] & 1;
      }

      else
      {
        v13 = 0;
        v48 = 0;
      }
    }

    else
    {
      if ((v96 & 2) != 0)
      {
        goto LABEL_114;
      }

      v13 = 0;
      if (*&v115[1] != *&v116[0])
      {
LABEL_118:
        v48 = 0;
        goto LABEL_129;
      }

      v48 = 0;
      if (*(&v115[1] + 1) <= v92)
      {
LABEL_114:
        v49 = sub_1000229C0(v117, 0, v116, 0x10u, a5);
        if (v49)
        {
          v50 = v49;
          if (sub_100046328(v11) == 13)
          {
            sub_10003E5FC("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, v91, *&v116[0], *(&v116[0] + 1), v50);
          }

          else
          {
            sub_10003E5FC("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, (*(v11 + 384) + 212), *&v116[0], *(&v116[0] + 1), v50);
          }
        }

        v51 = (v103 - 1 + DWORD1(v115[0])) / v103;
        v13 = sub_10005C5F4(v11, 64, *(&v115[0] + 1), v51, a5);
        if (v13)
        {
          v52 = sub_100046328(v11);
          v53 = (v11 + 4040);
          if (v52 != 13)
          {
            v53 = (*(v11 + 384) + 212);
          }

          sub_10003E5FC("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1683, v53, *(&v115[0] + 1), v51, v13);
        }

        if ((v96 & 2) == 0)
        {
          sub_100047594(*(v10 + 392), v9, *&v116[0], *(&v116[0] + 1));
        }

        v54 = (v96 >> 1) & 1;
        if (!v45)
        {
          LOBYTE(v54) = 1;
        }

        v48 = (LOBYTE(v114[1]) & v54);
        v44 = v45;
      }
    }

LABEL_129:
    if (v114[1])
    {
      if (v48)
      {
        v55 = sub_1000229C0(v117, 0, &v115[1], 0x10u, a5);
        if (v55)
        {
          v56 = v55;
          if (sub_100046328(v11) == 13)
          {
            sub_10003E5FC("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, v91, *&v115[1], *(&v115[1] + 1), v56);
          }

          else
          {
            sub_10003E5FC("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, (*(v11 + 384) + 212), *&v115[1], *(&v115[1] + 1), v56);
          }
        }
      }

      v114[0] = 0x1000000010;
      v57 = sub_100022D54(v117, 0, &v115[1], v114 + 1, 0x10u, &v114[1], v114, 4u, 0, 0);
      v13 = v57;
      if (v57)
      {
        if (v57 == 2)
        {
          v13 = 0;
          *&v115[1] = 0;
        }

        else if (sub_100046328(v11) == 13)
        {
          sub_10003E5FC("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, v91, v13);
        }

        else
        {
          sub_10003E5FC("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, (*(v11 + 384) + 212), v13);
        }
      }
    }

    ++v101;
    v116[0] = v115[1];
    v115[0] = *&v114[1];
    v43 = *&v115[1];
    if (!*&v115[1])
    {
      sub_10004B8D4(a1, 2);
      if (v13)
      {
        goto LABEL_78;
      }

LABEL_173:
      v69 = *(v8 + 44);
      v70 = *(v8 + 56);
      v121 = 0u;
      v126 = 0;
      v125 = 0u;
      v124 = 0u;
      v123 = 0u;
      v122 = 0u;
      v120 = sub_10004D370;
      DWORD2(v121) = 19;
      if (v69 == 2)
      {
        v13 = sub_10002462C(v11, v69 & 0xFFFF0000, v70, 0, 1, &v120, a5, &v118);
        if (!v13)
        {
          if (sub_100047D10(v118) != *(v8 + 56))
          {
            *(v8 + 56) = sub_100047D10(v118);
            sub_10004C7D8(a1, a5, 0);
          }

          v119 = v94;
          while (1)
          {
            v114[0] = 0x800000010;
            v71 = sub_100022D54(v118, 0, &v119, v114 + 1, 8u, &v116[1], v114, 4u, 0, 0);
            if (v71)
            {
              break;
            }

            v72 = v119;
            if (v119 < v92)
            {
              v73 = sub_1000229C0(v118, 0, &v119, HIDWORD(v114[0]), a5);
              if (v73)
              {
                v13 = v73;
                if (sub_100046328(v11) != 13)
                {
                  v89 = *(v11 + 384) + 212;
                }

                sub_10003E5FC("%s:%d: %s error updating snapshot tree: %d\n");
                goto LABEL_78;
              }

              --*(v8 + 36);
              if (sub_100046328(v11) == 13)
              {
                sub_10003E50C("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (v11 + 4040), v119, *(v8 + 36), *(v8 + 64));
              }

              else
              {
                sub_10003E50C("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (*(v11 + 384) + 212), v119, *(v8 + 36), *(v8 + 64));
              }

              if ((v96 & 2) != 0)
              {
                v74 = v119;
                if (v119 >= *(v8 + 72))
                {
                  v75 = *(v8 + 80);
                  if (v119 <= v75)
                  {
                    *(v8 + 72) = v119;
                    if (v74 >= v75)
                    {
                      *(v8 + 72) = 0;
                      *(v8 + 80) = 0;
                    }
                  }
                }
              }

              sub_10004C7D8(a1, a5, 0);
              v72 = v119;
            }

            if (v72 >= v92)
            {
              goto LABEL_220;
            }
          }

          v13 = v71;
          if (v71 == 2)
          {
LABEL_220:
            if (v9 && (v96 & 2) != 0)
            {
              sub_100047908(*(v10 + 392), v9, v94 + 1, v93);
            }

            if (*(v8 + 36))
            {
              v119 = -1;
              v114[0] = 0x800000010;
              v83 = sub_100022D54(v118, 0, &v119, v114 + 1, 8u, &v116[1], v114, 1u, 0, 0);
              if (v83)
              {
                v13 = v83;
                goto LABEL_78;
              }

              *(v8 + 64) = v119;
            }

            else
            {
              *(v8 + 64) = 0;
              v86 = sub_100025B30(v118, a5, 0);
              if (v86)
              {
                v13 = v86;
                if (sub_100046328(v11) != 13)
                {
                  v90 = *(v11 + 384) + 212;
                }

                sub_10003E5FC("%s:%d: %s error deleting empty snapshot tree: %d\n");
                goto LABEL_78;
              }

              *(v8 + 56) = 0;
              sub_10004C7D8(a1, a5, 0);
            }

            *a3 = 0;
            *(a1 + 96) &= ~2u;
            a1[60] = 0;
            a1[61] = 0;
            if (*(v8 + 56))
            {
              v13 = 36;
            }

            else
            {
              v13 = 0;
            }

            goto LABEL_78;
          }

          if (sub_100046328(v11) != 13)
          {
            v88 = *(v11 + 384) + 212;
          }

LABEL_243:
          sub_10003E5FC("%s:%d: %s error searching snapshot tree: %d\n");
          goto LABEL_78;
        }
      }

      else
      {
        v13 = 22;
      }

      if (sub_100046328(v11) != 13)
      {
        v76 = *(v11 + 384) + 212;
      }

LABEL_156:
      sub_10003E5FC("%s:%d: %s unable to get snapshot tree: %d\n");
      goto LABEL_78;
    }
  }

  v13 = v46;
  if (v46 == 2)
  {
    *&v115[1] = 0;
    goto LABEL_101;
  }

  if (sub_100046328(v11) != 13)
  {
    v91 = (*(v11 + 384) + 212);
  }

  sub_10003E5FC("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1653, v91, v13);
  *(a3 + 10) = v116[0];
  sub_10004B8D4(a1, 2);
LABEL_78:
  *(a1 + 96) &= ~1u;
  sub_10004BE88(a1, 2);
  if (v118)
  {
    sub_100046D50(v118);
  }

  if (v117)
  {
    sub_100046D50(v117);
  }

  return v13;
}

uint64_t sub_10004EA78(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5, void *a6)
{
  if (sub_100046328(a1) == 13)
  {
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1;
  if (v12)
  {
    v13 = *(v12 + 392);
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *a6 = 0;
  v14 = 22;
  if (a2 >> 30 && (a2 & 0x8000000) == 0 && (a4 == 1073741826 || a4 == -2147483646))
  {
    v20[0] = a3;
    v20[1] = a4;
    v20[2] = 1073741826;
    v14 = sub_1000487E8(*(v13 + 392), a2 & 0xFFFF0000, 0, &xmmword_100081418, v20, v12, a5, &v22);
    if (!v14)
    {
      v23[1] = 0;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v23[0] = sub_10004D314;
      v23[2] = 0x20000000BLL;
      v15 = 0x80000000;
      if (a4 >= 0)
      {
        v15 = 0x40000000;
      }

      v14 = sub_1000242A4(a1, v15 | a4 & 0xFFFF0000, 0, 0x10u, 16, v23, a5, &v21);
      if (v14)
      {
        sub_100049B88(v22, a5);
        sub_100046D50(v22);
      }

      else
      {
        v16 = v21;
        *(v22[47] + 40) = a4;
        v17 = sub_100047D10(v16);
        v18 = v22;
        *(v22[47] + 48) = v17;
        sub_10004C7D8(v18, a5, 0);
        sub_100046D50(v21);
        v14 = 0;
        if (v22)
        {
          *a6 = v22;
        }
      }
    }
  }

  return v14;
}

uint64_t sub_10004EC68(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (sub_100046328(a1) == 13)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1;
  if (v8)
  {
    v9 = *(v8 + 392);
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10005F17C(v9, a3))
  {
    return 22;
  }

  v10 = sub_100049EE0(v9[49], 0x40000000, a2, &xmmword_100081418, 0, v8, 0, a3, &v20);
  if (!v10)
  {
    if (v8)
    {
      v11 = sub_100047D10(v8);
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_100046320(v20);
    v13 = sub_100048054(v20);
    v14 = sub_100047D10(v20);
    if (a4)
    {
      v15 = sub_1000416DC(v9, v12, v13, v11, v14, a3, 0, a4);
    }

    else
    {
      v15 = sub_100041700(v9, v12, v13, v11, v14, a3, 0);
    }

    v10 = v15;
    if (v15)
    {
      if (sub_100046328(a1) == 13)
      {
        v16 = (a1 + 4040);
      }

      else
      {
        v16 = (*(a1 + 384) + 212);
      }

      v17 = sub_100047D10(v20);
      v18 = sub_100046320(v20);
      sub_10003E5FC("%s:%d: %s error adding omap 0x%llx type 0x%x to reap list: %d\n", "omap_destroy", 522, v16, v17, v18, v10);
    }

    sub_100046D50(v20);
  }

  return v10;
}

uint64_t sub_10004EE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100046328(a1);
  v9 = 0;
  v10 = a1;
  if (a1 && v8 == 13)
  {
    v10 = *(a1 + 392);
    if (*(a1 + 504))
    {
      v9 = *(a1 + 504);
    }

    else
    {
      v9 = a1;
    }
  }

  if ((a2 & 1) == 0)
  {
LABEL_9:
    if (v9)
    {
      pthread_mutex_lock((v9 + 1152));
      v12 = (v9 + 3632);
      v13 = 128;
      v14 = v9;
    }

    else
    {
      pthread_mutex_lock((v10 + 672));
      v12 = (v10 + 736);
      v13 = 160;
      v14 = v10;
    }

    v15 = *v12;
    *a4 = *v12;
    v16 = *(*(v14 + 376) + v13);
    if (v15)
    {
      sub_10004C19C(v15);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 = sub_10004B964(*a4, a2, a3);
      if (v17)
      {
        v11 = v17;
        sub_100046D50(*a4);
        goto LABEL_18;
      }
    }

    else
    {
      v18 = sub_100049EE0(*(v10 + 392), a2 | 0x40000000, v16, &xmmword_100081418, 0, v9, 0, a3, a4);
      if (v18)
      {
        v11 = v18;
LABEL_18:
        if (v9)
        {
          v19 = (v9 + 1152);
        }

        else
        {
          v19 = (v10 + 672);
        }

        goto LABEL_31;
      }

      v20 = *a4;
      v21 = (v9 + 3632);
      if (!v9)
      {
        v21 = (v10 + 736);
      }

      *v21 = v20;
      sub_10004C19C(v20);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (sub_100047D10(*a4) != v16)
    {
      v22 = sub_100047D10(*a4);
      if (v9)
      {
        *(*(v9 + 376) + 128) = v22;
        sub_10003728C(v9, a3);
        goto LABEL_26;
      }

      *(*(v10 + 376) + 160) = v22;
      sub_10004C7D8(a1, a3, 0);
LABEL_30:
      v11 = 0;
      v19 = (v10 + 672);
      goto LABEL_31;
    }

LABEL_25:
    if (v9)
    {
LABEL_26:
      v11 = 0;
      v19 = (v9 + 1152);
LABEL_31:
      pthread_mutex_unlock(v19);
      return v11;
    }

    goto LABEL_30;
  }

  v11 = sub_10004B964(a1, 0, a3);
  if (!v11)
  {
    a2 = a2 | 2;
    goto LABEL_9;
  }

  return v11;
}

uint64_t sub_10004EFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100046328(a1);
  v21 = 0uLL;
  if (a4 == 2)
  {
    if (v8 == 13)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    *(a3 + 8) = v9;
  }

  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  sub_10004B8D4(a3, 1);
  v10 = sub_10004805C(*(*(a3 + 376) + 40));
  v11 = *(a3 + 376);
  if (!v10 || !*(v11 + 48))
  {
LABEL_12:
    if (sub_10004805C(*(v11 + 44)) && (v14 = *(a3 + 376), (v15 = *(v14 + 56)) != 0))
    {
      v16 = *(v14 + 44);
      v23 = 0u;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v22 = sub_10004D370;
      DWORD2(v23) = 19;
      if (v16 != 2)
      {
        sub_10004BE88(a3, 1);
        v18 = *(&v21 + 1);
        if (!*(&v21 + 1))
        {
          v17 = v21;
          v13 = 22;
          if (!v21)
          {
            return v13;
          }

          goto LABEL_39;
        }

        v13 = 22;
        goto LABEL_35;
      }

      v13 = sub_10002462C(a1, v16 & 0xFFFF0000, v15, 0, 0, &v22, 0, &v21);
      sub_10004BE88(a3, 1);
      if (v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_10004BE88(a3, 1);
    }

    if ((sub_100046320(a3) & 0x80000000) == 0)
    {
      v18 = *(&v21 + 1);
      v17 = v21;
      if (v21 != 0)
      {
        if (!*(&v21 + 1))
        {
          if (!v21)
          {
            return 0;
          }

          goto LABEL_38;
        }

        goto LABEL_34;
      }

      sub_10004C3BC(a3, 1);
      goto LABEL_27;
    }

    if (a4 == 2)
    {
      v19 = sub_10004C960(a3);
    }

    else
    {
      if (a4 != 1)
      {
LABEL_27:
        v13 = 0;
        goto LABEL_32;
      }

      v19 = sub_10004C8EC(a3);
    }

    v13 = v19;
LABEL_32:
    v18 = *(&v21 + 1);
    if (!*(&v21 + 1))
    {
      goto LABEL_36;
    }

    if (v13)
    {
LABEL_35:
      sub_100046D50(v18);
LABEL_36:
      v17 = v21;
      if (!v21)
      {
        return v13;
      }

      if (v13)
      {
LABEL_39:
        sub_100046D50(v17);
        return v13;
      }

LABEL_38:
      v13 = sub_100025610(a1, a2, v17, a4);
      v17 = v21;
      goto LABEL_39;
    }

LABEL_34:
    v13 = sub_100025610(a1, a2, v18, a4);
    v18 = *(&v21 + 1);
    goto LABEL_35;
  }

  v12 = sub_10004D3A4(a1, a3, 0, 0, &v21 + 1);
  if (!v12)
  {
    v11 = *(a3 + 376);
    goto LABEL_12;
  }

  v13 = v12;
  sub_10004BE88(a3, 1);
  return v13;
}

uint64_t sub_10004F268(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v14 = sub_100046328(a1);
  v15 = a1;
  if (a1)
  {
    v15 = a1;
    if (v14 == 13)
    {
      v15 = *(a1 + 392);
    }
  }

  v22[0] = a2;
  v22[1] = a3;
  v21[0] = __PAIR64__(a5, a6);
  v21[1] = a4;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 22;
  if (sub_10005F17C(v15, a7) && a2 && a3 && a5)
  {
    v17 = sub_100004A28(*(v15 + 376), 0, a4, (a5 + *(*(v15 + 376) + 36) - 1) / *(*(v15 + 376) + 36), 0);
    if (v17)
    {
      return v17;
    }

    v17 = sub_10004EE18(a1, 1, a7, &v20);
    if (v17)
    {
      return v17;
    }

    else
    {
      sub_10004B8D4(v20, 2);
      v16 = sub_10004D3A4(a1, v20, 1, a7, &v19);
      if (!v16)
      {
        if ((a6 & 4) != 0)
        {
          LODWORD(v21[0]) = *(v20[47] + 32) & 0x10 | a6;
        }

        v16 = sub_10001B234(v19, 0, v22, 16, v21, 0x10u, a7);
        sub_100046D50(v19);
      }

      sub_10004BE88(v20, 2);
      sub_100046D50(v20);
    }
  }

  return v16;
}

uint64_t sub_10004F3EC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v14 = sub_100046328(a1);
  v15 = a1;
  if (a1)
  {
    v15 = a1;
    if (v14 == 13)
    {
      v15 = *(a1 + 392);
    }
  }

  *&v33 = a2;
  *(&v33 + 1) = a3;
  v31[0] = a6;
  v31[1] = a5;
  v32 = a4;
  memset(v30, 170, sizeof(v30));
  v16 = 22;
  if (sub_10005F17C(v15, a7))
  {
    if (a2)
    {
      if (a3)
      {
        v16 = sub_10004EE18(a1, 1, a7, &v30[2]);
        if (!v16)
        {
          sub_10004B8D4(v30[2], 2);
          v16 = sub_10004D3A4(a1, v30[2], 1, a7, &v30[1]);
          v17 = v30[2];
          if (v16)
          {
LABEL_42:
            sub_10004BE88(v17, 2);
            sub_100046D50(v30[2]);
            return v16;
          }

          v18 = *(v30[2] + 376);
          v19 = *(v18 + 64);
          if ((*(v30[2] + 384) & 2) != 0 && *(v30[2] + 488) == v19)
          {
            v19 = *(v30[2] + 480);
          }

          if (*(v18 + 32))
          {
            if (a6)
            {
              goto LABEL_21;
            }

            *v29 = v33;
            v27 = 0xAAAAAAAAAAAAAAAALL;
            v28 = 0xAAAAAAAAAAAAAAAALL;
            v30[0] = 0x1000000010;
            v21 = sub_100022D54(v30[1], 0, v29, v30 + 1, 0x10u, &v27, v30, 0, 0, 0);
            if (v21)
            {
              goto LABEL_40;
            }

            if ((v27 & 2) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v20 = v19 < a3;
            if (v19 < a3)
            {
              if (a6)
              {
                *v29 = v33;
                v27 = 0xAAAAAAAAAAAAAAAALL;
                v28 = 0xAAAAAAAAAAAAAAAALL;
                v30[0] = 0x1000000010;
                if (!sub_100022D54(v30[1], 0, v29, v30 + 1, 0x10u, &v27, v30, 2u, 0, 0) && v29[0] == v33)
                {
                  goto LABEL_24;
                }
              }

LABEL_21:
              v22 = 0;
              v16 = 0;
              v20 = 1;
              goto LABEL_25;
            }

            if (a6)
            {
LABEL_24:
              *(&v33 + 1) = a7;
              v16 = sub_10001B234(v30[1], 0, &v33, 16, v31, 16, a7);
              v22 = 1;
LABEL_25:
              if (v20 && !v16)
              {
                if (a3 == a7)
                {
                  v23 = v22;
                }

                else
                {
                  v23 = 0;
                }

                if (v23)
                {
                  v16 = 0;
                }

                else
                {
                  *(&v33 + 1) = a3;
                  v16 = sub_1000229C0(v30[1], 0, &v33, 16, a7);
                  v24 = v22 ^ 1;
                  if (!v16)
                  {
                    v24 = 1;
                  }

                  if ((v24 & 1) == 0)
                  {
                    *(&v33 + 1) = a7;
                    sub_1000229C0(v30[1], 0, &v33, 16, a7);
LABEL_41:
                    sub_100046D50(v30[1]);
                    v17 = v30[2];
                    goto LABEL_42;
                  }
                }
              }

              v25 = !v20;
              if (v16)
              {
                v25 = 1;
              }

              if (v25)
              {
                goto LABEL_41;
              }

              v21 = sub_10005C5F4(a1, 64, a4, (a5 + *(*(v15 + 376) + 36) - 1) / *(*(v15 + 376) + 36), a7);
LABEL_40:
              v16 = v21;
              goto LABEL_41;
            }
          }

          sub_100046D50(v30[1]);
          sub_10004BE88(v30[2], 2);
          sub_100046D50(v30[2]);
          return 0;
        }
      }
    }
  }

  return v16;
}

uint64_t sub_10004F700(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, _DWORD *a5, _DWORD *a6, unint64_t *a7)
{
  v11 = a3;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v29 = a2;
  v30 = a3;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 16;
  v26 = 16;
  v24 = 0;
  v14 = sub_10004EE18(a1, 0, 0, &v32);
  if (!v14)
  {
    sub_10004B8D4(v32, 1);
    if (*(*(v32 + 376) + 88) > a2)
    {
      sub_10004BE88(v32, 1);
      v14 = 2;
LABEL_33:
      sub_100046D50(v32);
      return v14;
    }

    v15 = sub_10004D3A4(a1, v32, 0, 0, &v31);
    if (v15)
    {
      v14 = v15;
      sub_10004BE88(v32, 1);
      goto LABEL_33;
    }

    if (!v11)
    {
      v11 = -1;
      v30 = -1;
    }

    v16 = sub_100022D54(v31, 0, &v29, &v26, 0x10u, &v27, &v25, 1u, 0, 0);
    if (v16)
    {
      goto LABEL_9;
    }

    v18 = *(v32 + 376);
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = v29 == a2;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      if (v30 < v19 || v30 > *(v18 + 80))
      {
        goto LABEL_18;
      }

      v29 = a2;
      v30 = v19 - 1;
      v16 = sub_100022D54(v31, 0, &v29, &v26, 0x10u, &v27, &v25, 1u, 0, 0);
      if (v16)
      {
LABEL_9:
        v14 = v16;
        v17 = 0;
        goto LABEL_31;
      }

      v20 = v29;
    }

    if (v20 != a2)
    {
LABEL_30:
      v17 = 0;
      v14 = 2;
LABEL_31:
      sub_100046D50(v31);
      sub_10004BE88(v32, 1);
      if (v17)
      {
        sub_10004FAC4(a1, v32);
      }

      goto LABEL_33;
    }

LABEL_18:
    v22 = v27;
    if ((v27 & 1) == 0)
    {
      if (a4)
      {
        *a4 = v28;
      }

      if (a5)
      {
        *a5 = HIDWORD(v27);
      }

      if (a6)
      {
        *a6 = v22 & 0xFFFFFFEE;
        if (((*(*(v32 + 376) + 32) ^ v22) & 0x10) != 0)
        {
          *a6 = v22 | 0x10;
        }
      }

      if (a7)
      {
        *a7 = v30;
      }

      if (*(v32 + 424))
      {
        sub_10004F978(v32, a2, v11, &v24);
        v14 = 0;
        v17 = v24;
      }

      else
      {
        v17 = 0;
        v14 = 0;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return v14;
}

uint64_t sub_10004F978(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v13 = 1;
  v14 = a2;
  if (*(result + 424))
  {
    v4 = result;
    if (!*(result + 440))
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = -86;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      if (__tp.tv_sec - *(v4 + 432) >= 601)
      {
        *a4 = 1;
      }

      sub_100025E3C(*(v4 + 424), &v13);
      v7 = v13;
      result = sub_100048054(*(v4 + 424));
      if (v7 <= 0x200000 / result)
      {
        LODWORD(__tp.tv_sec) = 8;
        v10 = 9;
        result = sub_100022D54(*(v4 + 424), 0, &v14, &__tp, 8u, &v11, &v10, 0, 0, 0);
        if (result == 2)
        {
          LOBYTE(v8) = *(v4 + 464);
        }

        else
        {
          if (result)
          {
            return result;
          }

          if (!v11)
          {
            return result;
          }

          v8 = *(v4 + 464);
          if (v12 == v8)
          {
            return result;
          }
        }

        if (a3 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3;
        }

        v11 = v9;
        v12 = v8;
        return sub_10001B234(*(v4 + 424), 0, &v14, 8, &v11, 9, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10004FAC4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_100046328(a1) != 13)
  {
    v3 = 0;
  }

  sub_10004B8D4(a2, 2);
  if (*(a2 + 424))
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v6);
    if (v6.tv_sec - *(a2 + 432) >= 601)
    {
      sub_100025B30(*(a2 + 424), 0, 0);
      sub_100046D50(*(a2 + 424));
      *(a2 + 424) = 0;
    }
  }

  if (v3)
  {
    if (*(v3 + 504))
    {
      v3 = *(v3 + 504);
    }

    v4 = *(v3 + 3640);
    if (v4)
    {
      sub_100046D50(v4);
      *(v3 + 3640) = 0;
    }
  }

  return sub_10004BE88(a2, 2);
}

uint64_t sub_10004FB80(uint64_t a1, unint64_t a2, void *a3)
{
  v18 = 0;
  v19 = 0;
  memset(v17, 170, sizeof(v17));
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_10004EE18(a1, 0, 0, &v19);
  if (v6)
  {
    v7 = v6;
    if (sub_100046328(a1) == 13)
    {
      sub_10003E5FC("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (a1 + 4040), v7);
    }

    else
    {
      sub_10003E5FC("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (*(a1 + 384) + 212), v7);
    }

    return v7;
  }

  v8 = v19[47];
  sub_10004B8D4(v19, 1);
  if (*(v8 + 32))
  {
    goto LABEL_16;
  }

  v9 = *(v8 + 56);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(v8 + 44);
  v21 = 0u;
  v22 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v20 = sub_10004D370;
  DWORD2(v21) = 19;
  if (v10 != 2)
  {
    v7 = 22;
    goto LABEL_19;
  }

  v7 = sub_10002462C(a1, v10 & 0xFFFF0000, v9, 0, 0, &v20, 0, &v18);
  if (v7)
  {
LABEL_19:
    if (sub_100046328(a1) != 13)
    {
      v13 = *(a1 + 384) + 212;
    }

    sub_10003E5FC("%s:%d: %s unable to get snapshot tree: %d\n");
    goto LABEL_22;
  }

  v16 = a2;
  do
  {
    v17[0] = 0x800000010;
    v11 = sub_100022D54(v18, 0, &v16, v17 + 1, 8u, &v17[1], v17, 4u, 0, 0);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = (v17[1] & 1) == 0;
    }
  }

  while (!v12);
  v7 = v11;
  if (!v11)
  {
    *a3 = v16;
    goto LABEL_22;
  }

  if (v11 != 2)
  {
    if (sub_100046328(a1) != 13)
    {
      v15 = *(a1 + 384) + 212;
    }

    sub_10003E5FC("%s:%d: %s error searching snapshot tree: %d\n");
    goto LABEL_22;
  }

LABEL_16:
  v7 = 2;
LABEL_22:
  if (v18)
  {
    sub_100046D50(v18);
  }

  sub_10004BE88(v19, 1);
  sub_100046D50(v19);
  return v7;
}

uint64_t sub_10004FE14(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (sub_100046328(a1) == 13)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1;
  if (v8)
  {
    v9 = *(v8 + 392);
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  v10 = sub_10004EE18(a1, 1, a2, &v24);
  if (!v10)
  {
    v11 = v24[47];
    sub_10004B8D4(v24, 2);
    v12 = v24;
    v13 = *(v24 + 96);
    if (v13)
    {
        ;
      }
    }

    *(v24 + 96) = v13 | 1;
    if (*(v11 + 88) <= a3)
    {
      *(v11 + 88) = a3;
      sub_10004C7D8(v12, a2, 0);
      if (v8)
      {
        v14 = sub_100047D10(v8);
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_100046320(v24);
      v16 = sub_100048054(v24);
      v17 = sub_100047D10(v24);
      if (a4)
      {
        v18 = sub_1000416DC(v9, v15, v16, v14, v17, a2, 2, a4);
      }

      else
      {
        v18 = sub_100041700(v9, v15, v16, v14, v17, a2, 2);
      }

      v10 = v18;
      if (v18)
      {
        if (sub_100046328(a1) == 13)
        {
          v19 = (a1 + 4040);
        }

        else
        {
          v19 = (*(a1 + 384) + 212);
        }

        v20 = sub_100047D10(v24);
        v21 = sub_100046320(v24);
        sub_10003E5FC("%s:%d: %s error adding omap 0x%llx type 0x%x to reap list for cleaning: %d\n", "omap_expunge_oids_below_watermark", 1889, v19, v20, v21, v10);
      }
    }

    else
    {
      v10 = 22;
    }

    v22 = v24;
    *(v24 + 96) &= ~1u;
    sub_10004BE88(v22, 2);
    sub_100046D50(v24);
  }

  return v10;
}

uint64_t sub_10004FFF4(void *a1, void *a2, unint64_t a3)
{
  if (sub_100046328(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v6 + 392);
    result = sub_10004B964(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (v6 + 1152);
  }

  else
  {
    result = sub_10004B964(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (a1 + 84);
    v7 = a1;
  }

  pthread_mutex_lock(v9);
  v10 = sub_100047D10(a2);
  v11 = sub_100046320(a2);
  if (!sub_10004B964(a2, (v11 >> 29) & 2, a3) && sub_100047D10(a2) != v10)
  {
    v13 = sub_100047D10(a2);
    if (v6)
    {
      *(*(v6 + 376) + 128) = v13;
      sub_10003728C(v6, a3);
      goto LABEL_12;
    }

    *(v7[47] + 160) = v13;
    sub_10004C7D8(a1, a3, 0);
LABEL_16:
    v12 = (v7 + 84);
    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = (v6 + 1152);
LABEL_17:
  pthread_mutex_unlock(v12);
  return 0;
}

uint64_t sub_10005010C(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  if (*(a1 + 637) == 1)
  {
    sub_10003E50C("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", "spaceman_metazone_init", 72, (*(a1 + 384) + 212));
    return 0;
  }

  memset(v27, 170, sizeof(v27));
  v2 = sub_100054E54(a1, &v26);
  if (v2)
  {
    return v2;
  }

  v4 = v26;
  if (!v26)
  {
    return 19;
  }

  if (!*(v26 + 376))
  {
    v2 = 19;
    goto LABEL_32;
  }

  if (*(v26 + 1112) & 1) != 0 || (*(v26 + 1216))
  {
    v2 = 0;
LABEL_32:
    sub_100046D50(v4);
    return v2;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v26;
    v9 = v26 + 104 * v5;
    *(v9 + 1112) = 0;
    *(v9 + 1016) = 0u;
    *(v9 + 1032) = 0u;
    *(v9 + 1048) = 0u;
    *(v9 + 1064) = 0u;
    *(v9 + 1080) = 0u;
    *(v9 + 1096) = 0u;
    v10 = *(v8 + 376);
    v11 = *(v10 + 32);
    v12 = *(v10 + 48 * v5 + 48);
    if (is_mul_ok(v12, v11))
    {
      v13 = v12 * v11;
    }

    else
    {
      v13 = 0x40000000000;
    }

    if (!sub_1000529B8(a2, v11, v12, v13, &v27[2], &v27[1]))
    {
      v14 = v8 + 104 * v5;
      v15 = v27[1] + v27[2] / v11;
      sub_100052AC0(v11, v27[2], v27[1], v15, v27, 0);
      v16 = v27[1];
      *(v14 + 1016) = v27[1];
      *(v14 + 1032) = v16;
      v17 = v27[0];
      *(v14 + 1024) = v27[0];
      *(v14 + 1042) = 1;
      *(v14 + 1048) = v17;
      *(v14 + 1064) = v27[0];
      *(v14 + 1056) = v15;
      *(v14 + 1074) = 1;
      *(v14 + 1113) = 1;
      v18 = v26;
      v19 = *(v26 + 1000 + 8 * v5);
      if (v19 < v15 && v19 >= v27[1])
      {
        if (v15 == v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        *(v26 + 1000 + 8 * v5) = v21;
      }

      if (*(v18 + 8 * v5 + 1496))
      {
        v22 = *(*(v18 + 376) + 36);
        v23 = v27[1] / v22;
        v24 = (v15 - 1) / v22;
        if (v23 <= v24)
        {
          do
          {
            *(*(v26 + 8 * v5 + 1496) + 4 * v23++) |= 0x4000000u;
          }

          while (v23 <= v24);
          v18 = v26;
        }
      }

      *(v18 + 104 * v5 + 1112) = 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v2 = 0;
  v4 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  return v2;
}

void sub_100050364(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t sub_100050404(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t sub_1000504C8(void *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v3 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v3 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v5 = a2;
    v6 = a1[1];
    if (v6)
    {
      v7 = (v6 + 4040);
    }

    else
    {
      v7 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", "spaceman_get_metazone_alloc_index", 348, v7, a3);
    v3 = &a1[v5 + 125];
  }

  else
  {
    v3 = &a1[13 * a2 + 129];
  }

  return *v3;
}

uint64_t sub_100050588(void *a1)
{
  v18 = 0;
  v2 = sub_100054E54(a1, &v18);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v18 + 6);
  v3 = v18;
  v4 = *&v18[5].__opaque[48];
  if ((*(v4 + 144) & 1) == 0 || !*(v4 + 336))
  {
    v5 = *(v4 + 116);
    if (!v5)
    {
      v5 = *(v4 + 112);
    }

    v6 = (*(v4 + 128) + 8 * v5);
    v7 = *(v4 + 32);
    if (v6 + 2184 <= (v6 + v7 - 1) / v7 * v7)
    {
      memmove((v4 + 2520), (v4 + 336), v6 - 336);
      v10 = vadd_s32(*(v4 + 324), vdup_n_s32(0x888u));
      *(v4 + 324) = v10;
      v11 = (*(v4 + 332) + 2184);
      *(v4 + 332) = v11;
      v12 = (*(v4 + 80) + 2184);
      *(v4 + 80) = v12;
      v13 = (*(v4 + 128) + 2184);
      *&v3[13].__opaque[32] = v4 + v10.u32[0];
      *(v4 + 128) = v13;
      *&v3[13].__opaque[40] = v4 + v10.u32[1];
      *&v3[13].__opaque[48] = v4 + v11;
      v3[14].__sig = v4 + v12;
      *v3[14].__opaque = v4 + v13;
      *(v4 + 336) = 0x9D800000001;
      bzero((v4 + 344), 0x880uLL);
      *(v4 + 144) |= 1u;
    }

    else
    {
      v8 = *v18->__opaque;
      if (v8)
      {
        v9 = (v8 + 4040);
      }

      else
      {
        v9 = (*(*(v18->__sig + 392) + 384) + 212);
      }

      sub_10003E50C("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", "spaceman_upgrade_sm_version_0_to_1", 398, v9, v6 + 2184, v6, v7);
      sub_10003E5AC("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", "spaceman_allocation_init", 456, (a1[48] + 212), 27);
    }
  }

  sub_100058A14(a1, v18);
  v2 = sub_10005010C(a1, 0);
  if (v2)
  {
LABEL_17:
    v16 = v2;
  }

  else
  {
    sub_1000507D8(v18);
    v14 = 1;
    while (1)
    {
      v15 = sub_100050A28(a1, v14);
      if (v15)
      {
        break;
      }

      if (++v14 == 5)
      {
        v2 = sub_100011634(a1, v18);
        goto LABEL_17;
      }
    }

    v16 = v15;
    sub_10003E5FC("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", "spaceman_allocation_init", 491, (a1[48] + 212), v14, v15);
  }

  if (v18)
  {
    pthread_mutex_unlock(v18 + 6);
    sub_100046D50(&v18->__sig);
  }

  return v16;
}

const char *sub_1000507D8(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 47);
    if (*(v2 + 144))
    {
      if (*(v2 + 336))
      {
        v3 = 0;
        v4 = v2 + 344;
        v25 = v2 + 368;
        v26 = v2 + 48;
        v5 = 1;
        do
        {
          v27 = v5;
          v6 = *(v26 + 48 * v3);
          if (v6)
          {
            v7 = 0;
            v8 = (v25 + 1088 * v3);
            do
            {
              v9 = v4 + 1088 * v3 + 136 * v7;
              if (*v9 >= v6 || ((v10 = *(v9 + 8), v10 <= v6) ? (v11 = *v9 > v10) : (v11 = 1), v11))
              {
                v12 = *(v1 + 1);
                if (v12)
                {
                  v13 = (v12 + 4040);
                }

                else
                {
                  v13 = (*(*(*v1 + 392) + 384) + 212);
                }

                result = sub_10003E5AC("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", "spaceman_sanitize_datazone", 676, v13, v7);
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              v15 = 0;
              v16 = v8;
              while (1)
              {
                v17 = *(v16 - 1);
                if (v17 >= v6)
                {
                  break;
                }

                if (*v16 > v6 || v17 > *v16)
                {
                  break;
                }

                ++v15;
                v16 += 2;
                if (v15 == 7)
                {
                  if (*(v9 + 130) <= 6u)
                  {
                    if ((v14 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_35;
                  }

LABEL_31:
                  v21 = *(v1 + 1);
                  if (v21)
                  {
                    v22 = (v21 + 4040);
                  }

                  else
                  {
                    v22 = (*(*(*v1 + 392) + 384) + 212);
                  }

                  sub_10003E5AC("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", "spaceman_sanitize_datazone", 695, v22, v7);
                  goto LABEL_35;
                }
              }

              v19 = *(v1 + 1);
              if (v19)
              {
                v20 = (v19 + 4040);
              }

              else
              {
                v20 = (*(*(*v1 + 392) + 384) + 212);
              }

              sub_10003E5AC("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", "spaceman_sanitize_datazone", 686, v20, v7, v15);
              if (*(v9 + 130) >= 7u)
              {
                goto LABEL_31;
              }

LABEL_35:
              v23 = *(v1 + 1);
              if (v23)
              {
                v24 = (v23 + 4040);
              }

              else
              {
                v24 = (*(*(*v1 + 392) + 384) + 212);
              }

              result = sub_10003E5AC("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", "spaceman_sanitize_datazone", 701, v24, v7);
              *(v9 + 128) = 0;
              *(v9 + 96) = 0u;
              *(v9 + 112) = 0u;
              *(v9 + 64) = 0u;
              *(v9 + 80) = 0u;
              *(v9 + 32) = 0u;
              *(v9 + 48) = 0u;
              *v9 = 0u;
              *(v9 + 16) = 0u;
LABEL_39:
              ++v7;
              v8 += 17;
            }

            while (v7 != 8);
          }

          v5 = 0;
          v3 = 1;
        }

        while ((v27 & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t sub_100050A28(void *a1, uint64_t a2)
{
  v12 = 0;
  v4 = sub_100054E54(a1, &v12);
  if (v4)
  {
    return v4;
  }

  if (!v12)
  {
    return 19;
  }

  v6 = v12[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v12[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v12 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v12 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = sub_100050B84(v12, 0, a2);
  if (v11)
  {
    v4 = v11;
    sub_10003E5FC("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", "spaceman_datazone_init", 600, (a1[48] + 212), a2, v11);
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    sub_10003E50C("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_datazone_init", 611, (a1[48] + 212), 0, a2, *v10);
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v12)
  {
    sub_100046D50(v12);
  }

  return v4;
}

uint64_t sub_100050B84(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          *(v7 + 16) = v19;
          v20 = sub_100050DB0(a1, a2, v6, *v19 / *(v8 + 36));
          v3 = v20;
          if (v20)
          {
            v21 = a1[1];
            if (v21)
            {
              v22 = (v21 + 4040);
            }

            else
            {
              v22 = (*(*(*a1 + 392) + 384) + 212);
            }

            sub_10003E5FC("%s:%d: %s failed to update allocation zone boundaries: error %d\n", "spaceman_initialize_allocation_zone_from_disk", 965, v22, v20);
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      *(v7 + 16) = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void sub_100050D04(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = a1 + 1224;
    v3 = a1 + 1250;
    v4 = 1;
    do
    {
      v5 = v4;
      if (*(v2 + 136 * v1 + 128) == 1)
      {
        v6 = (v3 + 136 * v1);
        v7 = 4;
        do
        {
          if (*(v6 - 2) == 1 && *v6 == 1)
          {
            v8 = *(v6 - 10);
            if (v8)
            {
              *(v6 - 2) = 0;
              sub_10003FB5C(v8, 136);
              *(v6 - 10) = 0;
            }
          }

          v6 += 32;
          --v7;
        }

        while (v7);
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t sub_100050DB0(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = sub_10003FA58(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t sub_100050FD8(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100051034(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v8 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v10 = *(a1[a2 + 187] + 4 * a3);
      v11 = v10 & 0xC000000;
      v12 = *&v10 & 0xFFFFFFLL;
      if (!v11 && v8 < v12)
      {
        break;
      }
    }

    if (++v8 == 4)
    {
      return 0;
    }
  }

  v16 = sub_100050DB0(a1, a2, v8, a3);
  v17 = a1[1];
  if (v16)
  {
    v14 = v16;
    if (v17)
    {
      v18 = (v17 + 4040);
    }

    else
    {
      v18 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1135, v18, a3, v8);
  }

  else
  {
    if (v17)
    {
      v19 = (v17 + 4040);
    }

    else
    {
      v19 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_10003E50C("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1140, v19, a2, v8 + 1, *(i - 25));
    v14 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v14;
}

uint64_t sub_1000511D8(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        memset(v76, 170, 32);
        v74 = 0;
        v75 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          v57 = sub_100050DB0(v5, v6, a4, v21);
          if (v57)
          {
            v4 = v57;
            v63 = *(a1 + 384) + 212;
            sub_10003E5FC("%s:%d: %s failed to update allocate zone %llu: error %d\n");
          }

          else
          {
            v59 = *(v5 + 1592);
            if (v59)
            {
              ++*(v59 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v60 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v60 = sub_100062550();
              v60[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v61 = *(v5 + 1604);
              if ((v61 + 1) < *(v5 + 1600))
              {
                v62 = v61 + 1;
              }

              else
              {
                v62 = 0;
              }

              *(v5 + 1604) = v62;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v72 = 0;
            v32 = 0;
            v69 = v31;
            v70 = (v26 / v27);
            v66 = v26;
            v67 = v5 + 896;
            v65 = v5;
            v33 = v5 + 1496;
            v71 = -1;
            v21 = -1;
            do
            {
              v34 = (v70 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v71;
                v38 = v72;
                if (v34 / v35 != v71 || v72 == 0)
                {
                  v40 = *(*(v67 + 8 * v9) + 8 * v36);
                  if (v75)
                  {
                    sub_100046D50(v75);
                    v75 = 0;
                  }

                  v76[2] = v8;
                  v76[3] = __PAIR64__(v36, a3);
                  v41 = sub_100049EE0(*(a1 + 392), 0x40000000, v40, &xmmword_100081490, &v76[2], 0, 0, 0, &v75);
                  if (v41)
                  {
                    v4 = v41;
                    sub_10003E5FC("%s:%d: %s error getting cab %d: %d\n", "spaceman_get_new_chunk_for_allocation_zone", 1248, (*(a1 + 384) + 212), v36, v41);
                    goto LABEL_58;
                  }

                  v38 = *(v75 + 56);
                  v35 = v8[11];
                  v37 = v36;
                }

                v71 = v37;
                v72 = v38;
                v42 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v42 = (*(v67 + 8 * v9) + 8 * v34);
              }

              v43 = *v42;
              v76[0] = v8;
              v76[1] = __PAIR64__(v34, v6);
              v44 = sub_100049EE0(*(a1 + 392), 0x40000000, v43, &xmmword_1000814A0, v76, 0, 0, 0, &v74);
              if (v44)
              {
                v4 = v44;
                v64 = *(a1 + 384) + 212;
                sub_10003E5FC("%s:%d: %s error getting cib %d: %d\n");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                LODWORD(v45) = v66 % v8[10] + 1;
              }

              v31 = v69;
              v46 = *(v74 + 56);
              v47 = *(v46 + 36);
              v48 = v47 >= v45;
              v49 = v47 - v45;
              if (v49 != 0 && v48)
              {
                v50 = v34 * v8[10];
                v45 = v45;
                v51 = (v46 + 32 * v45 + 60);
                v52 = v21;
                do
                {
                  v53 = *v51;
                  v51 += 8;
                  v54 = v53 & 0xFFFFF;
                  if (v32 < v54)
                  {
                    v21 = v50 + v45;
                    v55 = *(*(v33 + 8 * v9) + 4 * (v50 + v45));
                    if ((v55 & 0xC000000) == 0 && (*&v55 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v54;
                      v52 = v50 + v45;
                      if (v54 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v45;
                  v21 = v52;
                  --v49;
                }

                while (v49);
              }

              if (v32 == v8[9])
              {
                break;
              }

              sub_100046D50(v74);
              v74 = 0;
              ++v30;
              v14 = v69[4];
            }

            while (v30 < v14);
            v5 = v65;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v75)
        {
          sub_100046D50(v75);
        }

        if (v74)
        {
          sub_100046D50(v74);
        }
      }
    }
  }

  return v4;
}

BOOL sub_1000516A8(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 1496);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + 104 * a2;
  if (*(v5 + 1112) == 1)
  {
    v6 = v5 + 1016;
    v7 = 40;
    if (*(v6 + 90))
    {
      v7 = 72;
    }

    if (*v6 <= a3 && *(v6 + v7) > a3)
    {
      return 1;
    }
  }

  if ((*(v4 + 4 * (a3 / *(*(a1 + 376) + 36))) & 0x8000000) == 0)
  {
    return 0;
  }

  if (a4 <= 4 && (v9 = a1 + 136 * a2 + 32 * a4, *(v9 + 1216) == 1) && (v10 = (v9 + 1192), *v10 <= a3))
  {
    return v10[1] <= a3;
  }

  else
  {
    return 1;
  }
}

BOOL sub_100051764(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, unint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v19 = 0;
  v14 = sub_10006250C(a1, a2, a3, a4, &v19);
  if (v14)
  {
    v15 = a2 - v14;
    if (a2 == v14)
    {
      v16 = 0;
LABEL_17:
      *a8 = v16;
      return v14 != 0;
    }

    v16 = v19 - a1;
    if (v19 == a1)
    {
      v17 = v14 + a1;
LABEL_6:
      *a7 = v17;
LABEL_7:
      v16 = v15;
      goto LABEL_17;
    }

    v15 = a2 - (v16 + v14);
    if ((a5 & 0x4000) != 0)
    {
      if (a6 > v19 && a2 != v16 + v14 && (v19 + v14 <= a6 || a6 - v19 > v19 + v14 - a6))
      {
        *a7 = v19 + v14;
        goto LABEL_7;
      }
    }

    else if (v15 > v16)
    {
      v17 = v19 + v14;
      goto LABEL_6;
    }

    *a7 = a1;
    goto LABEL_17;
  }

  return v14 != 0;
}

uint64_t sub_100051844(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, unint64_t *a8, unint64_t *a9)
{
  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = *(a1 + 1024);
  if (v16)
  {
    v17 = 0;
    if (!a3 && (*(a1 + 634) & 1) == 0)
    {
      v18 = *(a1 + 1016);
      if ((a6 & 0x200) != 0)
      {
        if (v18 && sub_100051764(a4, a5, 0, v18, a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 += v16;
        v16 = *(*(a2 + 376) + 48) - v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = sub_100051764(v13, v12, v18, v16, a6, a7, a8, a9);
      v15 = a2;
      if (v19)
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((a6 & 0x2000) != 0)
  {
    v20 = v15 + 104 * a3;
    if (*(v20 + 1112) == 1)
    {
      v21 = v20 + 1016;
      v22 = 40;
      if (*(v21 + 90))
      {
        v22 = 72;
      }

      if (sub_100051764(v13, v12, *v21, *(v21 + v22) - *v21, a6, a7, a8, a9))
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }

    if (*(v15 + 136 * a3 + 1352) == 1)
    {
      v23 = (v15 + 136 * a3 + 1248);
      v24 = 4;
      do
      {
        if (*v23 == 1 && sub_100051764(v13, v12, *(v23 - 3), *(v23 - 2) - *(v23 - 3), a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        v23 += 32;
        --v24;
      }

      while (v24);
    }
  }

  return v17 & 1;
}

unint64_t sub_100051A48(const char *a1)
{
  __endptr = 0xAAAAAAAAAAAAAAAALL;
  result = strtoull(a1, &__endptr, 10);
  v3 = __endptr;
  v4 = *__endptr;
  if (v4 > 0x66)
  {
    if (*__endptr <= 0x6Cu)
    {
      if (v4 != 103)
      {
        if (v4 != 107)
        {
          goto LABEL_19;
        }

LABEL_9:
        result <<= 10;
LABEL_18:
        v3 = __endptr + 1;
        goto LABEL_19;
      }

LABEL_16:
      result <<= 30;
      goto LABEL_18;
    }

    if (v4 != 109)
    {
      if (v4 != 116)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_17:
    result <<= 20;
    goto LABEL_18;
  }

  if (*__endptr <= 0x4Cu)
  {
    if (v4 != 71)
    {
      if (v4 != 75)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v4 == 77)
  {
    goto LABEL_17;
  }

  if (v4 == 84)
  {
LABEL_15:
    result <<= 40;
    goto LABEL_18;
  }

LABEL_19:
  if (v3 == a1)
  {
    return -1;
  }

  if (*v3)
  {
    return -1;
  }

  return result;
}

char *sub_100051B28(char *__s1, uuid_t out)
{
  v3 = __s1;
  if (!__s1)
  {
    *out = 0u;
    *(out + 1) = 0u;
    uuid_generate(out);
    *(out + 5) = 1073741826;
    return v3;
  }

  v4 = strdup(__s1);
  if (v4)
  {
    v5 = v4;
    __lasts = 0xAAAAAAAAAAAAAAAALL;
    v6 = strtok_r(v4, ",", &__lasts);
    if (!v6)
    {
LABEL_24:
      v3 = 0;
      goto LABEL_27;
    }

    v7 = v6;
    while (1)
    {
      if (!strncasecmp(v7, "blocksize=", 0xAuLL))
      {
        v10 = sub_100051A48(v7 + 10);
        if (v10 - 65537 < 0xFFFFFFFFFFFF0FFFLL || ((v10 + 0x1FFFF) & v10) != 0)
        {
LABEL_26:
          v3 += v7 - v5;
LABEL_27:
          free(v5);
          return v3;
        }

        *(out + 4) = v10;
      }

      else
      {
        if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
        {
          v9 = 1073741826;
LABEL_15:
          *(out + 5) = v9;
          goto LABEL_23;
        }

        if (!strcasecmp(v7, "omap=ephemeral"))
        {
          v9 = -2147483646;
          goto LABEL_15;
        }

        if (!strcasecmp(v7, "defragment=yes"))
        {
          v11 = *(out + 12) & 0xFFFC | 2;
LABEL_22:
          *(out + 12) = v11;
          goto LABEL_23;
        }

        if (!strcasecmp(v7, "defragment=no"))
        {
          v11 = *(out + 12) & 0xFFFC | 1;
          goto LABEL_22;
        }

        if (strncasecmp(v7, "maxfs=", 6uLL))
        {
          goto LABEL_26;
        }

        v8 = sub_100051A48(v7 + 6);
        if (v8 >= 0x65)
        {
          goto LABEL_26;
        }

        out[26] = v8;
      }

LABEL_23:
      v7 = strtok_r(0, ",", &__lasts);
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  return v3;
}

char *sub_100051D2C(char *a1, uuid_t out)
{
  v3 = a1;
  if (!a1)
  {
    *(out + 29) = 0u;
    *(out + 30) = 0u;
    *(out + 27) = 0u;
    *(out + 28) = 0u;
    *(out + 25) = 0u;
    *(out + 26) = 0u;
    *(out + 23) = 0u;
    *(out + 24) = 0u;
    *(out + 21) = 0u;
    *(out + 22) = 0u;
    *(out + 19) = 0u;
    *(out + 20) = 0u;
    *(out + 17) = 0u;
    *(out + 18) = 0u;
    *(out + 15) = 0u;
    *(out + 16) = 0u;
    *(out + 13) = 0u;
    *(out + 14) = 0u;
    *(out + 11) = 0u;
    *(out + 12) = 0u;
    *(out + 9) = 0u;
    *(out + 10) = 0u;
    *(out + 7) = 0u;
    *(out + 8) = 0u;
    *(out + 5) = 0u;
    *(out + 6) = 0u;
    *(out + 3) = 0u;
    *(out + 4) = 0u;
    *(out + 1) = 0u;
    *(out + 2) = 0u;
    *out = 0u;
    uuid_generate(out);
    *(out + 2) = xmmword_100081430;
    *(out + 123) = 1073741826;
    *(out + 12) = -1;
    *(out + 111) = getuid();
    *(out + 112) = getgid();
    *(out + 26) &= ~0x80u;
    __strlcpy_chk();
    *(out + 26) = *(out + 26) & 0xFBF3 | 8;
    return v3;
  }

  if (!strncasecmp(a1, "uuid_from_role", 0xEuLL))
  {
    v21 = *(out + 27);
    if (v21 <= 0xBF)
    {
      if (*(out + 27) <= 7u)
      {
        if (*(out + 27) <= 1u)
        {
          if (*(out + 27))
          {
            v22 = "61706673-7575-6964-0001-766f6c756d00";
          }

          else
          {
            v22 = "61706673-7575-6964-0000-766f6c756d00";
          }

          goto LABEL_121;
        }

        if (v21 == 2)
        {
          v22 = "61706673-7575-6964-0002-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 4)
        {
          v22 = "61706673-7575-6964-0004-766f6c756d00";
          goto LABEL_121;
        }
      }

      else if (*(out + 27) <= 0x1Fu)
      {
        if (v21 == 8)
        {
          v22 = "61706673-7575-6964-0008-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 16)
        {
          v22 = "61706673-7575-6964-0010-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x20u:
            v22 = "61706673-7575-6964-0020-766f6c756d00";
            goto LABEL_121;
          case 0x40u:
            v22 = "61706673-7575-6964-0040-766f6c756d00";
            goto LABEL_121;
          case 0x80u:
            v22 = "61706673-7575-6964-0080-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(out + 27) > 0x1FFu)
    {
      if (*(out + 27) <= 0x27Fu)
      {
        if (v21 == 512)
        {
          v22 = "61706673-7575-6964-0200-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 576)
        {
          v22 = "61706673-7575-6964-0240-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x280u:
            v22 = "61706673-7575-6964-0280-766f6c756d00";
            goto LABEL_121;
          case 0x2C0u:
            v22 = "61706673-7575-6964-02c0-766f6c756d00";
            goto LABEL_121;
          case 0x300u:
            v22 = "61706673-7575-6964-0300-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(out + 27) <= 0x13Fu)
    {
      if (v21 == 192)
      {
        v22 = "61706673-7575-6964-00c0-766f6c756d00";
        goto LABEL_121;
      }

      if (v21 == 256)
      {
        v22 = "61706673-7575-6964-0100-766f6c756d00";
        goto LABEL_121;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x140u:
          v22 = "61706673-7575-6964-0140-766f6c756d00";
          goto LABEL_121;
        case 0x180u:
          v22 = "61706673-7575-6964-0180-766f6c756d00";
          goto LABEL_121;
        case 0x1C0u:
          v22 = "61706673-7575-6964-01c0-766f6c756d00";
LABEL_121:
          uuid_parse(v22, out);
          return 0;
      }
    }

    return strerror(22);
  }

  if (!strncasecmp(v3, "password=", 9uLL))
  {
    v3 += 9;
    __strlcpy_chk();
    v23 = strnlen(v3, 0x80uLL);
    *(out + 110) = v23;
    if ((v23 & 0xFFFFFF80) == 0)
    {
      return 0;
    }

    return v3;
  }

  if (!strncasecmp(v3, "empty_password", 0xFuLL))
  {
    v3 = 0;
    out[312] = 0;
    *(out + 110) = 0;
    return v3;
  }

  if (!strncasecmp(v3, "volname=", 8uLL))
  {
    __strlcpy_chk();
    return 0;
  }

  v4 = strdup(v3);
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  __lasts = 0xAAAAAAAAAAAAAAAALL;
  v6 = strtok_r(v4, ",", &__lasts);
  if (!v6)
  {
    v3 = 0;
    goto LABEL_109;
  }

  v7 = v6;
  v8 = "fsquota=";
  v9 = "fsindex=";
  while (1)
  {
    if (!strncasecmp(v7, "fssize=", 7uLL))
    {
      v11 = sub_100051A48(v7 + 7);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      *(out + 2) = v11;
LABEL_36:
      *(out + 3) = v11;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "fsreserve=", 0xAuLL))
    {
      v12 = sub_100051A48(v7 + 10);
      if (v12 == -1)
      {
        goto LABEL_108;
      }

      *(out + 2) = v12;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, v8, 8uLL))
    {
      v11 = sub_100051A48(v7 + 8);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      goto LABEL_36;
    }

    if (!strncasecmp(v7, v9, 8uLL))
    {
      break;
    }

    if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
    {
      v13 = 1073741826;
LABEL_40:
      *(out + 8) = v13;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "omap=ephemeral"))
    {
      v13 = -2147483646;
      goto LABEL_40;
    }

    if (!strcasecmp(v7, "fstree=btree"))
    {
      *(out + 36) = 0x4000000200000002;
      *(out + 11) = 1073741826;
      *(out + 123) = 1073741826;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "encrypted"))
    {
      v10 = *(out + 26) | 1;
LABEL_55:
      *(out + 26) = v10;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "role=", 5uLL))
    {
      v17 = sub_1000622B4(v7 + 5);
      if (v17 == -1)
      {
        goto LABEL_108;
      }

      *(out + 27) = v17;
    }

    else
    {
      if (!strcasecmp(v7, "case=insensitive"))
      {
        v10 = *(out + 26) & 0xFFF3 | 4;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "case=sensitive"))
      {
        v10 = *(out + 26) & 0xFFF3 | 8;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=yes"))
      {
        v10 = *(out + 26) & 0xFFCF | 0x20;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=no"))
      {
        v10 = *(out + 26) & 0xFFCF | 0x10;
        goto LABEL_55;
      }

      if (!strncasecmp(v7, "uid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0xAAAAAAAAAAAAAAAALL;
        v18 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v18 == -1)
        {
          goto LABEL_108;
        }

        *(out + 111) = v18;
        goto LABEL_45;
      }

      if (!strncasecmp(v7, "gid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0xAAAAAAAAAAAAAAAALL;
        v19 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v19 == -1)
        {
          goto LABEL_108;
        }

        *(out + 112) = v19;
        goto LABEL_45;
      }

      if (!strcasecmp(v7, "sealed=yes"))
      {
        *(out + 26) |= 0x80u;
        *(out + 122) = 1;
        *(out + 9) = 2;
        goto LABEL_37;
      }

      if (!strcasecmp(v7, "conformance"))
      {
        goto LABEL_108;
      }

      if (strncasecmp(v7, "hash=", 5uLL))
      {
        if (!strcasecmp(v7, "unwritten"))
        {
          v10 = *(out + 26) | 0x400;
        }

        else
        {
          if (strcasecmp(v7, "unwritten=no"))
          {
            goto LABEL_108;
          }

          v10 = *(out + 26) & 0xFBFF;
        }

        goto LABEL_55;
      }

      v20 = sub_100052578(v7 + 5);
      if (v20 == -1)
      {
        goto LABEL_108;
      }

      *(out + 122) = v20;
    }

LABEL_37:
    v7 = strtok_r(0, ",", &__lasts);
    if (!v7)
    {
      v3 = 0;
      goto LABEL_109;
    }
  }

  v14 = v8;
  v15 = v9;
  __endptr = 0xAAAAAAAAAAAAAAAALL;
  v16 = strtoull(v7 + 8, &__endptr, 10);
  if (__endptr != v7 + 8 && !*__endptr && v16 != -1)
  {
    *(out + 12) = v16;
LABEL_45:
    v9 = v15;
    v8 = v14;
    goto LABEL_37;
  }

LABEL_108:
  v3 += v7 - v5;
LABEL_109:
  free(v5);
  return v3;
}

uint64_t sub_100052578(const char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!strncasecmp(a1, "sha256", 7uLL))
  {
    return 1;
  }

  if (!strncasecmp(a1, "sha512_256", 0xBuLL))
  {
    return 5;
  }

  if (!strncasecmp(a1, "sha384", 7uLL))
  {
    return 3;
  }

  if (!strncasecmp(a1, "sha512", 7uLL))
  {
    return 4;
  }

  if (!strncmp(a1, "sha3_256_4k", 0xCuLL))
  {
    return 262;
  }

  if (!strncmp(a1, "sha3_384_4k", 0xCuLL))
  {
    return 263;
  }

  if (!strncmp(a1, "sha3_512_4k", 0xCuLL))
  {
    return 264;
  }

  if (!strncmp(a1, "sha3_256", 9uLL))
  {
    return 6;
  }

  if (!strncmp(a1, "sha3_384", 9uLL))
  {
    return 7;
  }

  if (!strncmp(a1, "sha3_512", 9uLL))
  {
    return 8;
  }

  return 0xFFFFFFFFLL;
}

char *sub_1000526E8(const char **a1, char *__s1, const char *a3)
{
  v4 = __s1;
  v6 = strdup(__s1);
  if (v6)
  {
    v7 = v6;
    __lasts = 0xAAAAAAAAAAAAAAAALL;
    v8 = strtok_r(v6, ",", &__lasts);
    if (v8)
    {
      while (1)
      {
        if (*v8 == 110)
        {
          v9 = 2 * (v8[1] == 111);
          v10 = v8[1] == 111 ? -2 : 0;
        }

        else
        {
          v10 = 0;
          v9 = 0;
        }

        v11 = &v8[v9];
        v12 = strchr(&v8[v9], 61);
        if (v12)
        {
          *v12 = 0;
        }

        v13 = *a1;
        if (!*a1)
        {
          break;
        }

        v14 = a1 + 3;
        while (strcasecmp(v13, v11))
        {
          v15 = *v14;
          v14 += 3;
          v13 = v15;
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        if (a3 && !strcasecmp(v11, a3))
        {
          break;
        }

        v8 = strtok_r(0, ",", &__lasts);
        if (!v8)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      v4 += v10 + v11 - v7;
    }

    else
    {
LABEL_18:
      v4 = 0;
    }

    free(v7);
  }

  return v4;
}

char *sub_100052828(char *a1, void *a2)
{
  getmnt_silent = 1;
  if (!a1)
  {
    *a2 = 0;
    return 0;
  }

  v5 = *a2;
  if (getmntopts())
  {
    *a2 = v5;
    freemntopts();
    result = sub_1000526E8(&off_1000883B0, a1, 0);
    if (result)
    {
      return result;
    }

    return 0;
  }

  return &unk_100064CAF;
}

const char *sub_1000528C4(const char *a1, uint64_t (*a2)(const char *, uint64_t), uint64_t a3, uint64_t (*a4)(const char *, uint64_t), uint64_t a5)
{
  v10 = strlen(a1);
  v11 = 0;
  v12 = 0;
  do
  {
    if (v11 != v10 && v11 <= v12)
    {
      v13 = a2(&a1[v11], a3);
      v11 = v10;
      if (v13)
      {
        v11 = v13 - a1;
        if (v13 - a1 < v12)
        {
          v14 = strchr(v13, 44);
          if (v14)
          {
            v11 = v14 - a1;
          }

          else
          {
            v11 = v10;
          }
        }
      }
    }

    if (v12 != v10 && v12 <= v11)
    {
      v15 = a4(&a1[v12], a5);
      v12 = v10;
      if (v15)
      {
        v12 = v15 - a1;
        if (v15 - a1 < v11)
        {
          v16 = strchr(v15, 44);
          if (v16)
          {
            v12 = v16 - a1;
          }

          else
          {
            v12 = v10;
          }
        }
      }
    }
  }

  while (v11 != v12);
  if (v11 == v10)
  {
    return 0;
  }

  else
  {
    return &a1[v11];
  }
}

uint64_t sub_1000529B8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    return 28;
  }

  v6 = a1;
  if (a1 <= a2 || a4 < a1)
  {
    if (0x180000000 * (a2 >> 12) > a4)
    {
      return 28;
    }

    if (a4 >> 34)
    {
      v9 = 0x1000000000;
      if (a4 >= 0x1000000000)
      {
        v10 = 0x1000000000;
      }

      else
      {
        v10 = a4;
      }

      v8 = v10 >> 5;
      if (a4 >= 0x1000000001)
      {
        if (a4 - 0x1000000000 < 0x1000000000)
        {
          v9 = a4 - 0x1000000000;
        }

        v8 += (v9 * 0x666666666666667uLL) >> 64;
        if (a4 >= 0x2000000001)
        {
          v11 = a4 - 0x2000000000;
          if (a4 - 0x2000000000 >= 0x2000000000)
          {
            v11 = 0x2000000000;
          }

          v8 += v11 >> 7;
          if (a4 >= 0x4000000001)
          {
            v8 += (a4 - 0x4000000000) / 0xA0;
          }
        }
      }
    }

    else
    {
      v8 = 0x20000000;
    }

    v6 = v8 * (a2 >> 12);
    if (v6 >= a4 >> 2)
    {
      v6 = a4 >> 2;
    }
  }

  result = 0;
  v12 = v6 / a2;
  *a5 = v12 * a2;
  *a6 = a3 - v12;
  return result;
}

unint64_t sub_100052AC0(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    *a5 = (a2 >> 1) / result + a3;
  }

  if (a6)
  {
    v6 = (a2 >> 4) / result;
    if (v6 >= 0x8000000 / result)
    {
      v6 = 0x8000000 / result;
    }

    *a6 = a4 - v6;
  }

  return result;
}

uint64_t sub_100052AFC(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *a3;
  v4 = *(*a3 + 16);
  if (!v4)
  {
    return 22;
  }

  v5 = *(v3 + 128);
  if (!v5)
  {
    return 22;
  }

  v6 = a3[2] | 1;
  *(a1 + 336) = 0x9D800000001;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 36) = vmovn_s64(*(v3 + 80));
  *(a1 + 44) = *(v3 + 96);
  v7 = *(v3 + 24);
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(a1 + 64) = v8;
  *(a1 + 68) = v9;
  *(a1 + 72) = v4;
  v10 = *(v3 + 48);
  *(a1 + 96) = v10;
  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  *(a1 + 112) = v11;
  *(a1 + 116) = v12;
  *(a1 + 120) = v10;
  *(a1 + 152) = *(v3 + 104);
  v13 = *(v3 + 120);
  *(a1 + 144) = v6;
  *(a1 + 148) = v13;
  v14 = *(v3 + 152);
  *(a1 + 224) = *(v3 + 144);
  v15 = *(v3 + 112);
  *(a1 + 160) = v15;
  *(a1 + 164) = v5;
  *(a1 + 264) = v14;
  *(a1 + 304) = *(v3 + 160);
  *(a1 + 324) = 2520;
  v16 = 8 * v15 + 2520;
  *(a1 + 328) = v16;
  v17 = ((2 * v15 + 6) & 0xFFFFFFF8) + v16;
  *(a1 + 332) = v17;
  *(a1 + 322) = v5 - 1;
  *(a1 + 320) = 0;
  v18 = (v5 & 0x7FFFFFFF) - 1;
  if ((v5 & 0x7FFFFFFF) == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = (v18 + 7) & 0x1FFFFFFF8;
    v20 = vdupq_n_s64(v18 - 1);
    v21 = (v17 + a1 + 8);
    v22 = xmmword_100081460;
    v23 = xmmword_100081470;
    v24 = xmmword_1000813A0;
    v25 = xmmword_1000813B0;
    v26 = vdupq_n_s64(1uLL);
    v27 = vdupq_n_s64(8uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v20, v25));
      v29 = vaddq_s64(v25, v26);
      if (vuzp1_s8(vuzp1_s16(v28, *v20.i8), *v20.i8).u8[0])
      {
        *(v21 - 4) = v29.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v28, *&v20), *&v20).i8[1])
      {
        *(v21 - 3) = v29.i16[4];
      }

      v30 = vaddq_s64(v24, v26);
      if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v24))), *&v20).i8[2])
      {
        *(v21 - 2) = v30.i16[0];
        *(v21 - 1) = v30.i16[4];
      }

      v31 = vaddq_s64(v23, v26);
      v32 = vmovn_s64(vcgeq_u64(v20, v23));
      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i32[1])
      {
        *v21 = v31.i16[0];
      }

      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i8[5])
      {
        v21[1] = v31.i16[4];
      }

      v33 = vaddq_s64(v22, v26);
      if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v22)))).i8[6])
      {
        v21[2] = v33.i16[0];
        v21[3] = v33.i16[4];
      }

      v23 = vaddq_s64(v23, v27);
      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v21 += 8;
      v22 = vaddq_s64(v22, v27);
      v19 -= 8;
    }

    while (v19);
  }

  *(a1 + v17 + 2 * v18) = -1;
  v35 = v17 + ((2 * v5 + 6) & 0xFFFFFFF8);
  *(a1 + 80) = v35;
  if (v9)
  {
    v8 = v9;
  }

  v36 = (v35 + 8 * v8);
  *(a1 + 128) = v36;
  if (v12)
  {
    v37 = v12;
  }

  else
  {
    v37 = v11;
  }

  if (8 * v37 + v36 <= a2)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100052D80(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(*a1 + 392);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v4;
  v82 = v4;
  v79 = v4;
  v80 = v4;
  v77 = v4;
  v78 = v4;
  v75 = v4;
  v76 = v4;
  v73 = v4;
  v74 = v4;
  v71 = v4;
  v72 = v4;
  v70 = v4;
  v5 = *(v2 + 32);
  v6 = *(v3 + 376);
  v7 = *(v6 + 36);
  if (*(v3 + 624))
  {
    if (v5 == v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = v3;
    goto LABEL_10;
  }

  if (*(v2 + 96) + *(v2 + 48) != *(v6 + 40) || v5 != v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = 336;
  if (*(v2 + 144))
  {
    if (*(v2 + 336))
    {
      v13 = 2520;
    }

    else
    {
      v13 = 336;
    }

    v14 = *(v2 + 340);
    if (*(v2 + 336))
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 <= v13)
    {
      v8 = v13;
    }

    else
    {
      v8 = *(v2 + 340);
    }

    if (v14 >= v13)
    {
      v9 = *(v2 + 336) == 0;
    }

    else
    {
      v9 = v15;
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = *(a1 + 48);
  v17 = sub_10003FC74(v5, *(v2 + 48), *(v6 + 180), &v70);
  if (v17)
  {
    return v17;
  }

  if (v8 < v16)
  {
    v18 = v9;
  }

  else
  {
    v18 = v9 + 1;
  }

  if (*(v2 + 36) != v75)
  {
    ++v18;
  }

  if (*(v2 + 40) != DWORD2(v75))
  {
    ++v18;
  }

  if (*(v2 + 44) != v76)
  {
    ++v18;
  }

  v19 = *(v2 + 48);
  if (*(v2 + 56) == *(&v71 + 1))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + 1;
  }

  v21 = *(v2 + 64);
  v22 = *(v2 + 68);
  if (v21 != v72)
  {
    ++v20;
  }

  if (v22 != DWORD2(v72) && *(&v72 + 1) + v22 != 1)
  {
    ++v20;
  }

  if (*(v2 + 104) == *(&v73 + 1))
  {
    v24 = v20;
  }

  else
  {
    v24 = v20 + 1;
  }

  v25 = *(v2 + 112);
  v26 = *(v2 + 116);
  if (v25 != v74)
  {
    ++v24;
  }

  if (v26 != DWORD2(v74) && *(&v74 + 1) + v26 != 1)
  {
    ++v24;
  }

  if ((*(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL) != *(&v76 + 1))
  {
    ++v24;
  }

  v28 = *(v2 + 160);
  if (v28 != v77)
  {
    ++v24;
  }

  v29 = *(v2 + 164) & 0x7FFFFFFF;
  if (v29 > 0xFFFE)
  {
    ++v24;
  }

  if (*(v2 + 148) < 4u)
  {
    ++v24;
  }

  if (v29 / v28 < 4)
  {
    ++v24;
  }

  if (*(v2 + 224) != v79)
  {
    ++v24;
  }

  if (*(v2 + 264) != DWORD2(v79))
  {
    ++v24;
  }

  if (*(v2 + 304) != v80)
  {
    ++v24;
  }

  v30 = *(v2 + 324);
  if (v30 < v8)
  {
    ++v24;
  }

  v31 = *(v2 + 328);
  if (v30 + 8 * v28 > v31)
  {
    ++v24;
  }

  v32 = *(v2 + 332);
  if (v31 + 2 * ((v28 + 3) & 0xFFFFFFFC) > v32)
  {
    ++v24;
  }

  v33 = *(v2 + 80);
  if (v32 + 2 * ((v29 + 3) & 0xFFFFFFFC) > v33)
  {
    ++v24;
  }

  v34 = *(v2 + 128);
  if (v22)
  {
    v21 = *(v2 + 68);
  }

  if (v33 + 8 * v21 <= v34)
  {
    v35 = v24;
  }

  else
  {
    v35 = v24 + 1;
  }

  if (v26)
  {
    v25 = *(v2 + 116);
  }

  if (v34 + 8 * v25 > *(a1 + 48))
  {
    ++v35;
  }

  if (*(v2 + 72) > v19)
  {
    ++v35;
  }

  v36 = *(v2 + 240);
  if (v36 < v19)
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 + 1;
  }

  if (v36 && !*(v2 + 248))
  {
    ++v37;
  }

  v38 = *(v2 + 256);
  if (v38 <= sub_100047D18(a1))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 + 1;
  }

  v40 = *(v2 + 96);
  v41 = *(v2 + 120);
  v42 = *(v2 + 280);
  if (v40)
  {
    if (v41 > v40)
    {
      ++v39;
    }

    if (v42 < v40)
    {
      v43 = v39;
    }

    else
    {
      v43 = v39 + 1;
    }

    if (v42 && !*(v2 + 288))
    {
      ++v43;
    }

    v44 = *(v2 + 296);
    v45 = v44 > sub_100047D18(a1);
  }

  else
  {
    if (v41)
    {
      ++v39;
    }

    if (v42)
    {
      v46 = v39 + 1;
    }

    else
    {
      v46 = v39;
    }

    if (*(v2 + 288))
    {
      v43 = v46 + 1;
    }

    else
    {
      v43 = v46;
    }

    v45 = *(v2 + 296) != 0;
  }

  v47 = v43 + v45;
  v48 = *(v2 + 320);
  v49 = *(v2 + 164) & 0x7FFFFFFF;
  if (v48 != 0xFFFF && v49 <= v48)
  {
    ++v47;
  }

  v51 = *(v2 + 322);
  if (v51 != 0xFFFF && v49 <= v51)
  {
    ++v47;
  }

  if (!(v47 | (*(v2 + 192) > *(v2 + 184))))
  {
LABEL_130:
    *(a1 + 376) = v2;
    *(a1 + 872) = v2 + *(v2 + 324);
    *(a1 + 880) = v2 + *(v2 + 328);
    *(a1 + 888) = v2 + *(v2 + 332);
    v53 = *(v2 + 80);
    v54 = *(v2 + 128);
    *(a1 + 1000) = 0u;
    v55 = *(v2 + 48);
    *(a1 + 896) = v2 + v53;
    *(a1 + 904) = v2 + v54;
    *(a1 + 912) = 0;
    *(a1 + 1536) = 8;
    *(a1 + 1520) = v55 >> 5;
    *(a1 + 1528) = *(v2 + 96) >> 5;
    if (*(v3 + 625) == 1)
    {
      *(a1 + 1536) = 0;
    }

    else if (*(v3 + 628) == 1)
    {
      *(a1 + 1536) = 32;
    }

    else
    {
      LODWORD(v70) = 0;
      sub_100015D24(*(v3 + 384), &v70, 0, 0, 0);
      if ((v70 & 2) != 0)
      {
        *(a1 + 1536) = 2;
        v56 = 0x40000000u / *(v2 + 32);
        if (*(a1 + 1520) > v56)
        {
          *(a1 + 1520) = v56;
        }

        if (*(a1 + 1528) > v56)
        {
          *(a1 + 1528) = v56;
        }
      }
    }

    if ((*(a1 + 16) & 0x40) != 0)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_100047D18(a1);
    }

    v58 = 0;
    v59 = a1 + 1496;
    *(a1 + 920) = v57;
    v60 = 1;
    do
    {
      v61 = v60;
      v62 = v2 + 48 + 48 * v58;
      v65 = *(v62 + 8);
      v64 = (v62 + 8);
      v63 = v65;
      if (v65)
      {
        v66 = sub_10003FA58(v63, 4uLL, 0x100004052888210uLL);
        *(v59 + 8 * v58) = v66;
        if (v66 && *v64)
        {
          v67 = 0;
          do
          {
            v68 = *(v59 + 8 * v58) + 4 * v67;
            *v68 = *(v2 + 36) & 0xFFFFFF | (*(v68 + 3) << 24);
            *(*(v59 + 8 * v58) + 4 * v67++ + 3) = 3;
          }

          while (v67 < *v64);
        }
      }

      else
      {
        *(v59 + 8 * v58) = 0;
      }

      v60 = 0;
      v58 = 1;
    }

    while ((v61 & 1) != 0);
    v12 = sub_10003E3BC((a1 + 384));
    if (v12)
    {
      goto LABEL_164;
    }

    v12 = sub_10003E3BC((a1 + 448));
    if (!v12)
    {
      v12 = sub_10003E3BC((a1 + 512));
      if (!v12)
      {
        v12 = sub_10003E3BC((a1 + 576));
        if (!v12)
        {
          v12 = sub_10003E3BC((a1 + 640));
          if (!v12)
          {
            v12 = sub_10003E3BC((a1 + 704));
            if (!v12)
            {
              v12 = sub_10003E3D4((a1 + 768));
              if (!v12)
              {
LABEL_164:
                *(a1 + 1592) = sub_10003FA58(1uLL, 0xF8uLL, 0x10000401CD0A21CuLL);
                return v12;
              }

              j__pthread_mutex_destroy((a1 + 704));
            }

            j__pthread_mutex_destroy((a1 + 640));
          }

          j__pthread_mutex_destroy((a1 + 576));
        }

        j__pthread_mutex_destroy((a1 + 512));
      }

      j__pthread_mutex_destroy((a1 + 448));
    }

    j__pthread_mutex_destroy((a1 + 384));
    goto LABEL_164;
  }

  v11 = v3;
LABEL_10:
  v12 = sub_1000048F4(v11);
  if (!v12)
  {
    goto LABEL_130;
  }

  return v12;
}

uint64_t sub_1000533E4(uint64_t a1)
{
  sub_10003FB5C(*(a1 + 1496), 4 * *(*(a1 + 376) + 56));
  sub_10003FB5C(*(a1 + 1504), 4 * *(*(a1 + 376) + 104));
  v2 = *(a1 + 1608);
  if (v2)
  {
    sub_10003FB5C(v2, 16 * *(a1 + 1600));
  }

  v3 = *(a1 + 1592);
  if (v3)
  {
    sub_10003FB5C(v3, 248);
  }

  v4 = *(a1 + 1544);
  if (v4)
  {
    sub_10003FB5C(v4, 16 * *(a1 + 1538));
  }

  sub_100050D04(a1);
  v5 = *(a1 + 1576);
  if (v5)
  {
    sub_1000113EC(v5);
    sub_10003FB5C(*(a1 + 1576), 1368);
  }

  v6 = *(a1 + 1584);
  if (v6)
  {
    sub_1000113EC(v6);
    sub_10003FB5C(*(a1 + 1584), 1368);
  }

  j__pthread_mutex_destroy((a1 + 384));
  j__pthread_mutex_destroy((a1 + 448));
  j__pthread_mutex_destroy((a1 + 512));
  j__pthread_mutex_destroy((a1 + 576));
  j__pthread_mutex_destroy((a1 + 640));
  j__pthread_mutex_destroy((a1 + 704));
  sub_10003E3DC((a1 + 768));
  return 0;
}

uint64_t sub_1000534D8(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = sub_100048054(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (!a2)
  {
    goto LABEL_11;
  }

  v9 = *a2;
  v10 = *(a2 + 3);
  if (v5 == v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(v4 + 32) != v10)
  {
    v8 = v11;
  }

  v12 = v9 + 48 * *(a2 + 2);
  v13 = v10 == *(v12 + 68) - 1 ? *(v12 + 64) - *(v9 + 44) * v10 : *(v9 + 44);
  if (*(v4 + 36) == v13)
  {
LABEL_11:
    if (!v8)
    {
      return 0;
    }
  }

  return sub_1000048F4(v6);
}

uint64_t sub_1000535B4(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = sub_100048054(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (a2)
  {
    v9 = *a2;
    v10 = *(a2 + 3);
    if (v5 == v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (*(v4 + 32) != v10)
    {
      v8 = v11;
    }

    v12 = v9 + 48 * *(a2 + 2);
    if (v10 == *(v12 + 64) - 1)
    {
      if (*(v4 + 36) != *(v12 + 56) - *(v9 + 40) * v10)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 36) != *(v9 + 40))
    {
      goto LABEL_12;
    }
  }

  if (!v8)
  {
    return 0;
  }

LABEL_12:

  return sub_1000048F4(v6);
}

uint64_t sub_1000536A0(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + 384);
  memset(v113, 170, sizeof(v113));
  v107 = 0;
  v108 = a3;
  v106 = 0;
  *a5 = 0;
  v114 = 0;
  v110 = 0;
  v109 = 0;
  v111 = 64;
  v112 = sub_10003FB98(0x400uLL, 0x1000040451B5BE8uLL);
  if (v112)
  {
    if (!a3)
    {
      v109 = *(a2 + 16);
      v110 = 1;
    }

    LODWORD(v113[2]) = 0;
    v113[1] = a2;
    v11 = sub_100048094(*(a1 + 392), 0x80000000, 0, &xmmword_100081480, &v113[1], *(a2 + 136), a4, &v114);
    if (v11)
    {
      goto LABEL_9;
    }

    sub_10004C7D8(v114, a4, 0);
    v12 = *&v114[5].__opaque[48];
    *a5 = *&v114[1].__opaque[40];
    v13 = *(a1 + 376);
    v113[0] = *(v13 + 104);
    v11 = sub_100042B64(a1, sub_1000541A8, &v108, (v13 + 112), v113, 0);
    if (v11)
    {
      goto LABEL_9;
    }

    v14 = *(a1 + 376);
    *(v14 + 104) = v113[0];
    v113[0] = *(v14 + 108);
    v11 = sub_100042B64(a1, sub_1000541A8, &v108, (v14 + 120), v113, 0);
    if (v11 || (*(*(a1 + 376) + 108) = v113[0], v113[0] = *(v12 + 164), v11 = sub_100042B64(a1, sub_1000541A8, &v108, (v12 + 168), v113, 0), v11) || (*(v12 + 164) = v113[0], v113[0] = *(v12 + 152), v11 = sub_100042B64(a1, sub_1000541A8, &v108, (v12 + 176), v113, 1), v11))
    {
LABEL_9:
      v15 = v11;
    }

    else
    {
      v105 = v12;
      *(v12 + 152) = v113[0];
      if (v108 && *(v108 + 16) && HIDWORD(v111))
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(v108 + 16))(*v108, *&v112[v18], *&v112[v18 + 8]);
          if (v20)
          {
            return v20;
          }

          ++v19;
          v18 += 16;
        }

        while (v19 < HIDWORD(v111));
      }

      v21 = sub_10003FB98(v105[8], 0xE4C85275uLL);
      v22 = sub_10003FB98(v105[8], 0xA9487841uLL);
      v15 = 12;
      v99 = v22;
      v96 = sub_10003FB98(v105[8], 0x7D523A3FuLL);
      if (v96 && v22 && v21)
      {
        bzero(v21, v105[8]);
        v25 = v105;
        if (v105[40])
        {
          v26 = 0;
          while (1)
          {
            v27 = v25;
            p_sig = &v114->__sig;
            *(*&v114[13].__opaque[32] + 8 * v26) = a4;
            v29 = sub_100054320(a1, p_sig, a4, &v107, &v106);
            if (v29)
            {
              v15 = v29;
              v84 = *(a1 + 384) + 212;
              sub_10003E5FC("%s:%d: %s failed to allocate bitmap block from IP bitmap pool: %d\n");
              goto LABEL_97;
            }

            *(*&v114[13].__opaque[40] + 2 * v26) = v106;
            v30 = sub_10001593C(v10, v107, 1, v21, 0);
            if (v30)
            {
              break;
            }

            ++v26;
            v25 = v27;
            if (v26 >= v27[40])
            {
              goto LABEL_34;
            }
          }

          v15 = v30;
        }

        else
        {
LABEL_34:
          v31 = 0;
          v32 = v25 + 12;
          v33 = v96;
          v94 = v21;
          v34 = 0xFFFFFFFFLL;
          v35 = 1;
          v91 = v25 + 12;
          do
          {
            v92 = v35;
            v36 = &v32[12 * v31];
            if (v36[4])
            {
              v37 = 0;
              v97 = v31;
              v95 = v36;
              do
              {
                if (v36[5])
                {
                  v38 = v25[11];
                  if (v37 / v38 != v34)
                  {
                    if (v34 == -1)
                    {
                      v41 = v37 / v38;
                    }

                    else
                    {
                      v39 = v25;
                      sub_10004CA88(a1, v33, v25[8], v23, v24);
                      v40 = sub_10001593C(v10, *(*(&v114[14].__sig + v97) + 8 * v34), 1, v33, 0);
                      if (v40)
                      {
                        v15 = v40;
                        v86 = *(a1 + 384) + 212;
                        sub_10003E5FC("%s:%d: %s failed to write cab %d: %d\n");
                        goto LABEL_95;
                      }

                      v41 = v37 / v39[11];
                      LODWORD(v31) = v97;
                    }

                    v34 = v41;
                    v44 = sub_100054424(a1, v114, v31, v41, v33, a4);
                    if (v44)
                    {
                      v79 = v44;
                      sub_10003E5FC("%s:%d: %s failed to initialize cab %d: %d\n", "spaceman_create", 1042, (*(a1 + 384) + 212), v34, v44);
                      v15 = v79;
                      goto LABEL_95;
                    }

                    v38 = v105[11];
                    LODWORD(v31) = v97;
                  }

                  v102 = v34;
                  v100 = v37 - v38 * v34;
                  ++v33[9];
                  v42 = &v114->__sig;
                  v43 = (v96 + 10);
                }

                else
                {
                  v102 = v34;
                  v42 = &v114->__sig;
                  v43 = *(&v114[14].__sig + v31);
                  v100 = v37;
                }

                v45 = sub_1000544F8(a1, v42, v31, v37, v99, a4, &v113[3]);
                if (v45)
                {
                  v15 = v45;
                  v83 = *(a1 + 384) + 212;
                  sub_10003E5FC("%s:%d: %s failed to initialize cib %d: %d\n");
                  goto LABEL_95;
                }

                *(v43 + 8 * v100) = v113[3];
                sub_10004CA88(a1, v99, v105[8], v46, v47);
                v48 = sub_10001593C(v10, *(v43 + 8 * v100), 1, v99, 0);
                if (v48)
                {
                  v15 = v48;
                  v85 = *(a1 + 384) + 212;
                  sub_10003E5FC("%s:%d: %s failed to write cib %d: %d\n");
                  goto LABEL_95;
                }

                ++v37;
                v36 = v95;
                v33 = v96;
                v34 = v102;
                v25 = v105;
                v31 = v97;
              }

              while (v37 < v95[4]);
            }

            v103 = v34;
            v21 = v94;
            if (v36[5])
            {
              v49 = v31;
              sub_10004CA88(a1, v33, v25[8], v23, v24);
              v50 = sub_10001593C(v10, *(*(&v114[14].__sig + v49) + 8 * v103), 1, v33, 0);
              v25 = v105;
              if (v50)
              {
                v15 = v50;
                v87 = *(a1 + 384) + 212;
                sub_10003E5FC("%s:%d: %s failed to write cab %d: %d\n");
                goto LABEL_97;
              }
            }

            v35 = 0;
            v31 = 1;
            v32 = v91;
            v34 = v103;
          }

          while ((v92 & 1) != 0);
          if (a3)
          {
            v101 = 0;
            v15 = 0;
            v51 = 1;
            v52 = v91;
            do
            {
              if (!v15)
              {
                v53 = 0;
                v54 = &v52[12 * v101];
                v55 = -1;
                v93 = v51;
                while (2)
                {
                  if (v53 >= v54[4])
                  {
                    v15 = 0;
                  }

                  else
                  {
                    v98 = v53;
                    if (v54[5])
                    {
                      v56 = v105[11];
                      if (v53 / v56 != v55)
                      {
                        v104 = v53 / v56;
                        v57 = sub_10001569C(v10, *(*(&v114[14].__sig + v101) + 8 * (v53 / v56)), 1, v96, 0);
                        if (v57 || (v57 = sub_100004988(v96, v105[8], v58, v59), v57))
                        {
                          v15 = v57;
                          v88 = *(a1 + 384) + 212;
                          sub_10003E5FC("%s:%d: %s failed to read cab %d: %d\n");
                          goto LABEL_95;
                        }

                        v56 = v105[11];
                        v55 = v104;
                        LODWORD(v53) = v98;
                      }

                      v90 = v55;
                      v60 = &v96[2 * (v53 - v56 * v55) + 10];
                    }

                    else
                    {
                      v90 = v55;
                      v60 = (*(&v114[14].__sig + v101) + 8 * v53);
                    }

                    v89 = *v60;
                    v61 = sub_10001569C(*(a1 + 384), *v60, 1, v99, 0);
                    if (v61 || (v61 = sub_100004988(v99, v105[8], v62, v63), v61))
                    {
                      v15 = v61;
                      sub_10003E5FC("%s:%d: %s failed to read cib %d: %d\n", "spaceman_create", 1110, (*(a1 + 384) + 212), v98, v61);
LABEL_84:
                      v52 = v91;
                      v51 = v93;
                    }

                    else
                    {
                      v66 = 0;
                      while (v66 < v99[9])
                      {
                        v67 = &v99[8 * v66 + 10];
                        v68 = (*(a3 + 24))(*a3, v101, *(v67 + 8) / (8 * v105[8]) * v105[8], v105[8], v94);
                        if (v68)
                        {
                          goto LABEL_83;
                        }

                        if (!(v98 | v66))
                        {
                          sub_100019B9C(v94, 0, 1);
                        }

                        v69 = *(v67 + 16) & 0xFFFFF;
                        if (v69)
                        {
                          v70 = 0;
                          v71 = *(v67 + 20);
                          v72 = *(v54 + 3);
                          v73 = v94;
                          do
                          {
                            v74 = *v73++;
                            v75 = vcnt_s8(v74);
                            v75.i16[0] = vaddlv_u8(v75);
                            v71 -= v75.i32[0];
                            v72 -= v75.u32[0];
                            *(v54 + 3) = v72;
                            v70 += 64;
                          }

                          while (v70 < v69);
                          *(v67 + 20) = v71;
                        }

                        v76 = *(v67 + 24);
                        if (!v76)
                        {
                          v77 = sub_100054664(a1, v114, a4, &v113[3]);
                          if (v77)
                          {
                            v15 = v77;
                            sub_10003E5FC("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_create", 1136, (*(a1 + 384) + 212), v77);
                            goto LABEL_84;
                          }

                          v76 = v113[3];
                          *(v67 + 24) = v113[3];
                        }

                        v68 = sub_10001593C(v10, v76, 1, v94, 0);
                        ++v66;
                        if (v68)
                        {
LABEL_83:
                          v15 = v68;
                          goto LABEL_84;
                        }
                      }

                      sub_10004CA88(a1, v99, v105[8], v64, v65);
                      v15 = sub_10001593C(v10, v89, 1, v99, 0);
                      v53 = v98 + 1;
                      v52 = v91;
                      v51 = v93;
                      v55 = v90;
                      if (!v15)
                      {
                        continue;
                      }
                    }
                  }

                  break;
                }
              }

              v78 = v51 & (*(a2 + 48) != 0);
              v101 = 1;
              v51 = 0;
            }

            while ((v78 & 1) != 0);
            v21 = v94;
            if (v15)
            {
              goto LABEL_97;
            }
          }

          v80 = sub_1000549EC(a1, v114, v10, 0, 1uLL, a4);
          if (v80 || (*(*(a1 + 376) + 65) & 1) != 0 && (v80 = sub_1000549EC(a1, v114, v10, 0, 1uLL, a4), v80))
          {
            v15 = v80;
          }

          else if (HIDWORD(v111))
          {
            v81 = 0;
            v82 = 0;
            while (1)
            {
              v15 = sub_1000549EC(a1, v114, v10, *&v112[v81], *&v112[v81 + 8], a4);
              if (v15)
              {
                break;
              }

              ++v82;
              v81 += 16;
              v21 = v94;
              if (v82 >= HIDWORD(v111))
              {
                goto LABEL_97;
              }
            }
          }

          else
          {
            v15 = 0;
          }

LABEL_95:
          v21 = v94;
        }
      }

LABEL_97:
      if (v96)
      {
        sub_10003FB5C(v96, v105[8]);
      }

      if (v99)
      {
        sub_10003FB5C(v99, v105[8]);
      }

      if (v21)
      {
        sub_10003FB5C(v21, v105[8]);
      }
    }

    if (v112)
    {
      sub_10003FB5C(v112, 16 * v111);
    }
  }

  else
  {
    v15 = 12;
  }

  v16 = &v114->__sig;
  if (v15 && v114)
  {
    sub_100049B88(&v114->__sig, a4);
LABEL_18:
    *a5 = 0;
    return v15;
  }

  if (!v114)
  {
    goto LABEL_18;
  }

  *a5 = *&v114[1].__opaque[40];
  sub_100046D50(v16);
  return v15;
}

uint64_t sub_1000541A8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v7 = a3;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  if (*a2)
  {
    result = (*(*a2 + 8))(**a2, a3, &v23, a5);
    if (result)
    {
      return result;
    }

    if (a5)
    {
      v7 = *a5;
    }
  }

  else
  {
    v11 = *(a2 + 8);
    v10 = *(a2 + 16);
    v23 = v10;
    if (v11 - v10 < a3)
    {
      return 28;
    }

    if (a5)
    {
      *a5 = a3;
      v10 = *(a2 + 16);
    }

    *(a2 + 16) = v10 + a3;
  }

  v12 = v23;
  *a4 = v23;
  v13 = *(a2 + 28);
  if (v13)
  {
    v14 = *(a2 + 32);
    v15 = v13 - 1;
    v16 = (v14 + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    if (v12 == v17 + v18)
    {
      result = 0;
      *(v14 + 16 * v15 + 8) = v17 + v7;
      return result;
    }
  }

  v19 = *(a2 + 24);
  if (v13 >= v19)
  {
    v21 = sub_10003FB98(16 * (v19 + 64), 0x1000040451B5BE8uLL);
    if (!v21)
    {
      return 12;
    }

    v20 = v21;
    memcpy(v21, *(a2 + 32), 16 * *(a2 + 24));
    bzero(&v20[16 * *(a2 + 24)], 0x400uLL);
    sub_10003FB5C(*(a2 + 32), 16 * *(a2 + 24));
    *(a2 + 32) = v20;
    v13 = *(a2 + 28);
    *(a2 + 24) += 64;
    v12 = v23;
  }

  else
  {
    v20 = *(a2 + 32);
  }

  result = 0;
  v22 = &v20[16 * v13];
  *v22 = v12;
  v22[1] = v7;
  *(a2 + 28) = v13 + 1;
  return result;
}

uint64_t sub_100054320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _WORD *a5)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 320);
  if (v6 == 0xFFFF)
  {
    return 28;
  }

  if ((*(v5 + 164) & 0x7FFFFFFFu) <= v6)
  {

    return sub_1000048F4(a1);
  }

  else
  {
    if (*(v5 + 322) == v6)
    {
      *(v5 + 322) = -1;
    }

    v10 = *(a2 + 888);
    *(v5 + 320) = *(v10 + 2 * v6);
    *(v10 + 2 * v6) = -1;
    sub_10004C7D8(a2, a3, 0);
    *a5 = v6;

    return sub_100054E18(a1, v5, v6, a4);
  }
}

uint64_t sub_100054424(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 376);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_100054664(a1, a2, a6, &v17);
  v14 = v13;
  if (v13)
  {
    sub_10003E5FC("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_init_cab", 769, (*(a1 + 384) + 212), v13);
  }

  else
  {
    v15 = v17;
    *(*(a2 + 8 * a3 + 896) + 8 * a4) = v17;
    bzero(a5, *(v12 + 32));
    *(a5 + 24) = 1073741830;
    *(a5 + 8) = v15;
    *(a5 + 16) = a6;
    *(a5 + 32) = a4;
  }

  return v14;
}

uint64_t sub_1000544F8(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = *(a2 + 376);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v14 = sub_100054664(a1, a2, a6, &v27);
  v15 = v14;
  if (v14)
  {
    sub_10003E5FC("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_init_cib", 801, (*(a1 + 384) + 212), v14);
    return v15;
  }

  v16 = v27;
  *a7 = v27;
  bzero(a5, v13[8]);
  *(a5 + 24) = 1073741831;
  *(a5 + 8) = v16;
  *(a5 + 16) = a6;
  *(a5 + 32) = a4;
  v17 = &v13[12 * a3];
  if (v17[16] - 1 != a4)
  {
    LODWORD(v18) = v13[10];
LABEL_7:
    *(a5 + 36) = v18;
    if (!v18)
    {
      return v15;
    }

    goto LABEL_8;
  }

  v18 = v13[10];
  v19 = *(v17 + 7) % v18;
  if (!v19)
  {
    goto LABEL_7;
  }

  *(a5 + 36) = v19;
  LODWORD(v18) = v19;
LABEL_8:
  v20 = v13[9];
  v21 = v13[10] * a4;
  v18 = v18;
  v22 = v21 * v20;
  v23 = ~v21 + *(v17 + 7);
  v24 = (a5 + 64);
  do
  {
    *(v24 - 3) = a6;
    *(v24 - 2) = v22;
    LODWORD(v25) = v20;
    if (!v23)
    {
      v25 = *(v17 + 6) % v20;
      if (!v25)
      {
        LODWORD(v25) = v20;
      }
    }

    *(v24 - 2) = v25;
    *(v24 - 1) = v25 & 0xFFFFF;
    *v24 = 0;
    v24 += 4;
    v22 += v20;
    --v23;
    --v18;
  }

  while (v18);
  return v15;
}

uint64_t sub_100054664(uint64_t a1, pthread_mutex_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *&a2[5].__opaque[48];
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0;
  v43 = 0;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10005F17C(a1, a3))
  {
    return 22;
  }

  v8 = 8 * *(v7 + 32);
  if (!v8)
  {
    return 22;
  }

  v34 = a4;
  pthread_mutex_lock(v5 + 7);
  v9 = v8;
  v37 = v5;
  v38 = v6;
  v35 = v8;
  v36 = v8;
LABEL_4:
  v10 = 0;
  v11 = *&v5[14].__opaque[8];
  v42 = 0;
  while (1)
  {
    v12 = *(v7 + 160);
    if (v10 > v12)
    {
LABEL_34:
      if (sub_1000557FC(v6, v5, 0, 1, 0, a3))
      {
        goto LABEL_4;
      }

      sub_10003E5FC("%s:%d: %s unable to find free IP block or to free pending free IP blocks\n", "spaceman_ip_block_alloc", 5413, (*(v6 + 384) + 212));
      v31 = 28;
      goto LABEL_38;
    }

    v13 = v11 / v9;
    v40 = v10;
    if (v10 == v12)
    {
      v14 = *&v5[14].__opaque[8] % v9;
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      LODWORD(v14) = v13 == v12 - 1 ? *(v7 + 152) - (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) / v9 * v9 : v35;
    }

    v15 = *(*&v5[13].__opaque[40] + 2 * v13);
    v16 = v7;
    v17 = sub_100054E18(v6, v7, v15, &v44);
    if (v17 || (v17 = sub_100049EE0(*(v6 + 392), 1073741825, v44, &xmmword_1000814B0, 0, 0, 0, a3, &v46), v17))
    {
      v31 = v17;
      pthread_mutex_unlock(v5 + 7);
      return v31;
    }

    v18 = v11;
    v19 = v11 % v9;
    v20 = *(v46 + 56);
    if (sub_100019C6C(0, v20, v19, v14 - v19, &v45))
    {
      break;
    }

    v26 = v9 - v19 + v18;
    v7 = v16;
    if (v26 >= (*(v16 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = 0;
    }

    else
    {
      v11 = v26;
    }

    v5 = v37;
    v6 = v38;
LABEL_32:
    sub_100046D50(v46);
    v10 = v40 + 1;
    if (v42)
    {
      v31 = 0;
LABEL_38:
      pthread_mutex_unlock(v5 + 7);
      *v34 = v42;
      return v31;
    }
  }

  v21 = v45;
  v22 = v45 + v13 * v9;
  v23 = *(v16 + 152);
  if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) <= v22)
  {
    v31 = 22;
    goto LABEL_42;
  }

  v24 = v18;
  v7 = v16;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = *(v16 + 176) + v22;
    v42 = v25;
LABEL_24:
    sub_100019AA8(v20, v21, 1, v25);
    v5 = v37;
    v28 = a3;
    if (*(*&v37[13].__opaque[32] + 8 * v13) != a3)
    {
      v41 = 0;
      v29 = sub_100054320(v38, v37, a3, &v43, &v41);
      if (v29 || (v29 = sub_10005E324(v38, v37, v15, a3), v29))
      {
        v31 = v29;
        v32 = v37 + 7;
        goto LABEL_43;
      }

      v44 = v43;
      *(*&v37[13].__opaque[40] + 2 * v13) = v41;
      *(*&v37[13].__opaque[32] + 8 * v13) = a3;
      v7 = v16;
      v28 = a3;
    }

    v6 = v38;
    sub_10004C7D8(v46, v28, v44);
    v30 = v24 - v19 + v45;
    if (v30 + 1 < (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = v30 + 1;
    }

    else
    {
      v11 = 0;
    }

    *&v37[14].__opaque[8] = v11;
    v9 = v36;
    goto LABEL_32;
  }

  v27 = sub_1000423BC(v38, *(v16 + 176), v22, &v42, 0);
  if (!v27)
  {
    v21 = v45;
    v7 = v16;
    goto LABEL_24;
  }

  v31 = v27;
LABEL_42:
  v32 = v37 + 7;
LABEL_43:
  pthread_mutex_unlock(v32);
  sub_100046D50(v46);
  return v31;
}

uint64_t sub_1000549EC(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 376);
  v7 = *(v6 + 48);
  v8 = v7 > a4;
  v9 = v7 - a4;
  if (!v8 || v9 < a5)
  {
    return 22;
  }

  v12 = a5;
  v13 = a4;
  if (*(v6 + 68))
  {
    v16 = sub_10003FB98(*(v6 + 32), 0xBBCB36uLL);
    if (!v16)
    {
      return 12;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_10003FB98(*(v6 + 32), 0x40CDA009uLL);
  if (!v17)
  {
    return 12;
  }

  v18 = v17;
  v19 = sub_10003FB98(*(v6 + 32), 0xFCE2FE6EuLL);
  if (!v19)
  {
    v11 = 12;
    v20 = v18;
    goto LABEL_52;
  }

  v20 = v19;
  v48 = v16;
  if (v12 < 1)
  {
    v11 = 0;
    goto LABEL_49;
  }

  v49 = v16 + 40;
  v54 = v18 + 10;
  v50 = -1;
  v47 = v18;
  while (1)
  {
    v21 = v13 / *(v6 + 36);
    v22 = v21 / *(v6 + 40);
    if (!*(v6 + 68))
    {
      v29 = (*(a2 + 896) + 8 * v22);
      goto LABEL_21;
    }

    v23 = *(v6 + 44);
    v24 = v22 / v23;
    v25 = v50;
    if (v22 / v23 != v50)
    {
      break;
    }

LABEL_19:
    v50 = v25;
    v29 = &v49[8 * (v22 - v23 * v25)];
LABEL_21:
    v51 = *v29;
    v30 = sub_10001569C(a3, *v29, 1, v18, 0);
    if (v30 || (v30 = sub_100004988(v18, *(v6 + 32), v31, v32), v30))
    {
      v45 = v30;
      sub_10003E5FC("%s:%d: %s failed to read cib %d: %d\n", "spaceman_allocated", 1280, (*(a1 + 384) + 212), v22, v30);
      v11 = v45;
      goto LABEL_49;
    }

    if (v12 < 1)
    {
LABEL_37:
      v38 = 0;
    }

    else
    {
      v35 = v21 % *(v6 + 40);
      while (v35 < v18[9])
      {
        v36 = &v54[8 * v35];
        v37 = *(v36 + 3);
        if (v37)
        {
          v38 = 1;
          if (sub_10001569C(a3, v37, 1, v20, 0))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v55 = 0xAAAAAAAAAAAAAAAALL;
          v39 = sub_100054664(a1, a2, a6, &v55);
          if (v39)
          {
            sub_10003E5FC("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_allocated", 1291, (*(a1 + 384) + 212), v39);
            break;
          }

          *(v36 + 3) = v55;
          bzero(v20, *(v6 + 32));
        }

        v40 = *(v6 + 36);
        v41 = v13 % v40;
        v42 = v40 - (v13 % v40);
        if (v12 >= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v12;
        }

        sub_100019AA8(v20, v41, v43, v42);
        sub_10005E164(a2, v20, v13 / *(v6 + 36));
        v36[5] -= v43;
        *(v6 + 72) -= v43;
        if (sub_10001593C(a3, *(v36 + 3), 1, v20, 0))
        {
          v38 = 1;
          goto LABEL_41;
        }

        ++v35;
        v13 += v43;
        v8 = v12 <= v43;
        v12 -= v43;
        if (v8)
        {
          goto LABEL_37;
        }
      }

      v38 = 1;
    }

LABEL_41:
    sub_10004CA88(a1, v18, *(v6 + 32), v33, v34);
    v44 = sub_10001593C(a3, v51, 1, v18, 0);
    v11 = v44;
    if (!v38 || v44)
    {
      goto LABEL_49;
    }
  }

  v26 = sub_10001569C(a3, *(*(a2 + 896) + 8 * v24), 1, v48, 0);
  if (!v26)
  {
    v26 = sub_100004988(v48, *(v6 + 32), v27, v28);
    if (!v26)
    {
      v23 = *(v6 + 44);
      v25 = v24;
      v18 = v47;
      goto LABEL_19;
    }
  }

  v11 = v26;
  v18 = v47;
  sub_10003E5FC("%s:%d: %s failed to read cab %d: %d\n", "spaceman_allocated", 1264, (*(a1 + 384) + 212), v24, v26);
LABEL_49:
  if (v48)
  {
    sub_10003FB5C(v48, *(v6 + 32));
  }

  sub_10003FB5C(v18, *(v6 + 32));
LABEL_52:
  sub_10003FB5C(v20, *(v6 + 32));
  return v11;
}

uint64_t sub_100054DDC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a2 && !sub_100054E54(a1, &v3))
  {
    sub_100046D50(v3);
  }

  return 0;
}

uint64_t sub_100054E18(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 164);
  if ((v4 & 0x7FFFFFFFu) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 168);
  if (v4 < 0)
  {
    return sub_1000423BC(a1, v5, a3, a4, 0);
  }

  result = 0;
  *a4 = v5 + a3;
  return result;
}

uint64_t sub_100054E54(void *a1, uint64_t *a2)
{
  v3 = a1[51];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = sub_100049EE0(a1[49], 0x80000000, *(a1[47] + 152), &xmmword_100081480, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[51] = *a2;
LABEL_2:
    sub_10004C19C(v3);
    return 0;
  }

  return result;
}

uint64_t sub_100054ED8(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, BOOL *a6)
{
  v11 = a1;
  if (sub_100046328(a1) == 13)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v11 = *(v12 + 392);
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_100054E54(v11, &v24);
  if (v13)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
LABEL_10:
      *a4 = 0;
    }
  }

  else
  {
    v15 = *&v24[5].__opaque[48];
    pthread_mutex_lock(v24 + 9);
    if (v12)
    {
      p_sig = &v24->__sig;
      v17 = *(v12 + 376);
      v19 = *(v17 + 72);
      v18 = *(v17 + 80);
      v20 = *(*&v24[5].__opaque[48] + 96) + *(*&v24[5].__opaque[48] + 48) - *(*&v24[5].__opaque[48] + 184) + v19;
      if (v18 >= v20)
      {
        v21 = *(*&v24[5].__opaque[48] + 96) + *(*&v24[5].__opaque[48] + 48) - *(*&v24[5].__opaque[48] + 184) + v19;
      }

      else
      {
        v21 = v18;
      }

      if (v18)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }
    }

    else
    {
      v22 = *(v15 + 96) + *(v15 + 48);
      p_sig = &v24->__sig;
    }

    v23 = sub_100055014(p_sig, v12, a2, a6);
    pthread_mutex_unlock(v24 + 9);
    sub_100046D50(&v24->__sig);
    if (a3)
    {
      *a3 = v22;
    }

    if (a4)
    {
      *a4 = v23;
    }

    a4 = a5;
    if (a5)
    {
      goto LABEL_10;
    }
  }

  return v13;
}

unint64_t sub_100055014(void *a1, uint64_t a2, char a3, BOOL *a4)
{
  v7 = a1[47];
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    sub_100054DDC(0, a1);
    v8 = a1[47];
  }

  if (a2)
  {
    v9 = *(a2 + 408);
    v10 = *(a2 + 376);
    v12 = v10[10];
    v11 = v10[11];
    v13 = v10[9];
    v14 = v12 - (v11 + v9);
    if (v12 < v11 + v9)
    {
      v14 = 0;
    }

    if (v13 - v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13 - v11;
    }

    if (v12 <= v11 + v9)
    {
      v16 = v13 - v11;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 >= v9;
    v18 = v16 - v9;
    if (!v17)
    {
      v18 = 0;
    }

    if (v13 <= v11)
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v14 = 0;
  }

  v19 = v8[30] + v8[9] + a1[123] + v8[15] + v8[35] + a1[124];
  v21 = v8[23];
  v20 = v8[24];
  v17 = v21 >= v20;
  v22 = v21 - v20;
  if (v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a1[105] + a1[104];
  v25 = a1[108];
  v17 = v24 >= v25;
  v26 = v24 - v25;
  if (!v17)
  {
    v26 = 0;
  }

  v27 = v26 + v23;
  v17 = v19 >= v27;
  v28 = v19 - v27;
  if (!v17)
  {
    v28 = 0;
  }

  if (!a1[202])
  {
    v41 = v28 + v18;
    if (!a2)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v29 = a1[204];
  v17 = v26 >= v29;
  v30 = v26 - v29;
  if (!v17)
  {
    v30 = 0;
  }

  v31 = a1[203];
  v32 = a1[205];
  v17 = v31 >= v32;
  v33 = v31 - v32;
  if (!v17)
  {
    v33 = 0;
  }

  v17 = v33 >= v29;
  v34 = v33 - v29;
  if (!v17)
  {
    v34 = 0;
  }

  v35 = a1[206];
  v36 = a1[207];
  v17 = v35 >= v36;
  v37 = v35 - v36;
  if (!v17)
  {
    v37 = 0;
  }

  v17 = v37 >= v30;
  v38 = v37 - v30;
  if (!v17)
  {
    v38 = 0;
  }

  v39 = v38 + v34;
  v17 = v28 >= v39;
  v40 = v28 - v39;
  if (!v17)
  {
    v40 = 0;
  }

  v41 = v38 + v18 + v40;
  if (a2)
  {
LABEL_39:
    if (v41 < v14)
    {
      v14 = v41;
    }

    if (*(*(a2 + 376) + 80))
    {
      v41 = v14;
    }
  }

LABEL_43:
  v42 = v7[9] - v24 + v7[15];
  if (a4)
  {
    *a4 = v42 < v41;
  }

  if (v42 >= v41)
  {
    return v41;
  }

  else
  {
    return v42;
  }
}

uint64_t sub_1000551B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, atomic_ullong *a5, unint64_t *a6, unint64_t *a7, BOOL *a8, void *a9, unint64_t *a10, BOOL *a11)
{
  v17 = a1;
  if (sub_100046328(a1) == 13)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v17 = *(v18 + 392);
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  if (!a5)
  {
    return 22;
  }

  v19 = sub_100054E54(v17, &v31);
  if (!v19)
  {
    pthread_mutex_lock(v31 + 9);
    v20 = sub_100055014(v31, v18, 0, a8);
    add_explicit = atomic_fetch_add_explicit(a5, a2, memory_order_relaxed);
    v22 = a3 + a2 + add_explicit;
    v23 = v22 > v20;
    v24 = v22 - v20;
    if (v23)
    {
      atomic_fetch_add_explicit(a5, -a2, memory_order_relaxed);
      v25 = v24 <= add_explicit;
      v19 = 28;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v19 = 0;
    }

    *a6 = v24;
    *a11 = v25;
    *a7 = v20;
    v26 = v31;
    v27 = *&v31[5].__opaque[48];
    *a9 = v27[35] + v27[30];
    v28 = v27[32];
    *a10 = v28;
    v29 = v27[37];
    if (v29)
    {
      if (v28 >= v29)
      {
        v28 = v29;
      }

      *a10 = v28;
    }

    pthread_mutex_unlock(v26 + 9);
    sub_100046D50(&v31->__sig);
  }

  return v19;
}

uint64_t sub_10005530C(uint64_t a1, _DWORD *a2, unint64_t *a3, void *a4, void *a5, unint64_t *a6, unint64_t *a7)
{
  v13 = a1;
  if (sub_100046328(a1) == 13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v13 = v14[49];
  }

  v58 = 0xAAAAAAAAAAAAAAAALL;
  v15 = sub_100054E54(v13, &v58);
  if (!v15)
  {
    v16 = *&v58[5].__opaque[48];
    sub_100054DDC(v13, v58);
    pthread_mutex_lock(v58 + 9);
    if (a2)
    {
      *a2 = *(v16 + 32);
    }

    v17 = v58;
    v18 = *&v58[5].__opaque[48];
    if (v14)
    {
      v19 = v14[51];
      v20 = v14[47];
      v22 = v20[10];
      v21 = v20[11];
      v23 = v21 + v19;
      v24 = v20[9];
      v25 = v22 - (v21 + v19);
      if (v22 < v21 + v19)
      {
        v25 = 0;
      }

      if (v24 - v21 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24 - v21;
      }

      if (v22 <= v23)
      {
        v27 = v24 - v21;
      }

      else
      {
        v27 = v26;
      }

      v28 = v27 >= v19;
      v29 = v27 - v19;
      if (!v28)
      {
        v29 = 0;
      }

      if (v24 > v21)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v23 = 0;
      v30 = 0;
      v25 = 0;
    }

    v31 = v18[30] + v18[9] + *&v58[15].__opaque[16] + v18[15] + v18[35] + *&v58[15].__opaque[24];
    v32 = v18[23];
    v33 = v18[24];
    v28 = v32 >= v33;
    v34 = v32 - v33;
    if (!v28)
    {
      v34 = 0;
    }

    v35 = *v58[13].__opaque + v58[13].__sig;
    v36 = *&v58[13].__opaque[24];
    v28 = v35 >= v36;
    v37 = v35 - v36;
    if (!v28)
    {
      v37 = 0;
    }

    v38 = v37 + v34;
    v28 = v31 >= v38;
    v39 = v31 - v38;
    if (!v28)
    {
      v39 = 0;
    }

    if (*&v58[25].__opaque[8])
    {
      v40 = *&v58[25].__opaque[24];
      v28 = v37 >= v40;
      v41 = v37 - v40;
      if (!v28)
      {
        v41 = 0;
      }

      v42 = *&v58[25].__opaque[16];
      v43 = *&v58[25].__opaque[32];
      v28 = v42 >= v43;
      v44 = v42 - v43;
      if (!v28)
      {
        v44 = 0;
      }

      v28 = v44 >= v40;
      v45 = v44 - v40;
      if (!v28)
      {
        v45 = 0;
      }

      v46 = *&v58[25].__opaque[40];
      v47 = *&v58[25].__opaque[48];
      v28 = v46 >= v47;
      v48 = v46 - v47;
      if (!v28)
      {
        v48 = 0;
      }

      v28 = v48 >= v41;
      v49 = v48 - v41;
      if (!v28)
      {
        v49 = 0;
      }

      v50 = v49 + v45;
      v28 = v39 >= v50;
      v51 = v39 - v50;
      if (!v28)
      {
        v51 = 0;
      }

      v52 = v49 + v30 + v51;
      if (v14)
      {
LABEL_44:
        v53 = v14[47];
        v54 = *(v53 + 80);
        if (v52 < v25)
        {
          v25 = v52;
        }

        if (!v54)
        {
          v25 = v52;
        }

        if (a3)
        {
          v55 = v18[6] - v32 + v18[12] + *(v53 + 72);
          if (v54 >= v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = *(v53 + 80);
          }

          if (v54)
          {
            v55 = v56;
          }

          *a3 = v55;
        }

        if (a6)
        {
          *a6 = v25;
        }

        if (a4)
        {
          *a4 = *(v53 + 72);
        }

        if (a5)
        {
          *a5 = *(v53 + 80);
        }

        if (!a7)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v52 = v39 + v30;
      if (v14)
      {
        goto LABEL_44;
      }
    }

    if (a3)
    {
      *a3 = *(v16 + 96) + *(v16 + 48);
    }

    if (a4)
    {
      *a4 = *(v16 + 184);
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = v31 - (v17[13].__sig + *v17[13].__opaque);
    }

    if (!a7)
    {
      goto LABEL_75;
    }

    v23 = *(v16 + 48) - v31 + *(v16 + 96) + v17[13].__sig + *v17[13].__opaque;
LABEL_74:
    *a7 = v23;
LABEL_75:
    pthread_mutex_unlock(v17 + 9);
    sub_100046D50(&v58->__sig);
  }

  return v15;
}

uint64_t sub_1000555CC(void *a1, void *a2, unint64_t a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v6;
  v11[3] = v6;
  v11[0] = v6;
  v11[1] = v6;
  if (sub_100054E54(a1, &v12))
  {
    return 0;
  }

  v8 = *&v12[5].__opaque[48];
  sub_100055704(a1, v11, 0, 0);
  pthread_mutex_lock(v12 + 7);
  sub_1000557FC(a1, v12, 0, 1, v11, a3);
  pthread_mutex_unlock(v12 + 7);
  pthread_mutex_lock(v12 + 8);
  v9 = sub_1000557FC(a1, v12, 2u, 1, v11, a3);
  v7 = sub_1000557FC(a1, v12, 1u, 1, v11, a3) + v9;
  *a2 = *(v8 + 240) + *(v8 + 280);
  pthread_mutex_unlock(v12 + 8);
  sub_100056014(a1, v11);
  sub_100046D50(&v12->__sig);
  return v7;
}

uint64_t sub_100055704(uint64_t result, uint64_t a2, int a3, int a4)
{
  v12 = 0;
  if (a2)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    result = sub_100015D24(*(result + 384), &v12, 0, 0, 0);
    if (result)
    {
      if (!a4)
      {
        return result;
      }

      v7 = 1;
    }

    else
    {
      v7 = (v12 & 0x10) == 0;
      if ((v12 & 0x10) == 0 && (a4 & 1) == 0)
      {
        return result;
      }
    }

    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    tv_nsec = __tp.tv_nsec;
    *a2 = __tp.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v10 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 16) = v10;
    *(a2 + 24) = v10;
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = 30;
    }

    *(a2 + 60) = v11;
    *(a2 + 62) = 1;
    *(a2 + 63) = v7 & a4;
  }

  return result;
}

uint64_t sub_1000557FC(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, unint64_t a6)
{
  v6 = a5;
  v7 = *(a2 + 376);
  v75 = 0;
  memset(v74, 170, sizeof(v74));
  v62 = v7;
  v61 = *(v7 + 36);
  v8 = 1540;
  if (!a3)
  {
    v8 = 1542;
  }

  v60 = (a2 + 1542);
  if (a3)
  {
    v9 = (a2 + 1540);
  }

  else
  {
    v9 = (a2 + 1542);
  }

  if (a3)
  {
    v10 = 1560;
  }

  else
  {
    v10 = 1552;
  }

  if (a3)
  {
    v11 = 1568;
  }

  else
  {
    v11 = 1569;
  }

  v12 = *(a2 + v8);
  if (*(a2 + v8))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (a2 + 512);
    v67 = (a2 + 448);
    do
    {
      if ((a4 & 2) == 0)
      {
        v13 = 16;
      }

      v17 = *(a2 + v10);
      *(a2 + v11) = 1;
      if (a3)
      {
        pthread_mutex_unlock(v16);
        v18 = v16;
      }

      else
      {
        v18 = v67;
        pthread_mutex_unlock(v67);
      }

      v14 += v17;
      v15 += v12;
      __rqtp = xmmword_1000813C0;
      nanosleep(&__rqtp, 0);
      pthread_mutex_lock(v18);
      v12 = *v9;
    }

    while (*v9);
    v6 = a5;
    if (v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v19 = a3;
  if (!sub_10005693C(a1, a2, a3, 0, 0, &v75) && v75)
  {
    LODWORD(__rqtp.tv_sec) = 16;
    v73 = 8;
    v20 = sub_100022AC4(v75, 0, v74, &__rqtp, &v74[2], &v73);
    v21 = v74[0];
    if (a3 && !*(a2 + 1544))
    {
      pthread_mutex_lock((a2 + 384));
    }

    if (v20)
    {
LABEL_29:
      if (*(a2 + 1544))
      {
        sub_10005E510(a1, a2, v19, v6, a6);
      }

      else
      {
        v58 = *(a1 + 384);
        sub_10001561C();
        if (v19)
        {
          pthread_mutex_unlock((a2 + 384));
        }

        sub_10005E24C(a1, v6);
      }

      sub_100046D50(v75);
      return v14;
    }

    v23 = 0;
    v63 = v62 + 40 * a3;
    v68 = 2;
    while (1)
    {
      if ((v23 & 1) == 0 && sub_10004B964(a2, 0, a6))
      {
        goto LABEL_29;
      }

      if (v73)
      {
        v24 = v74[2];
      }

      else
      {
        v74[2] = 1;
        v24 = 1;
      }

      v25 = v74[0];
      if (v74[0] <= a6)
      {
        if (v74[0] > v21)
        {
          *(v63 + 216) = v74[0];
          if ((a4 & 2) == 0)
          {
            goto LABEL_29;
          }
        }

        if (*(a1 + 632) == 1)
        {
          v26 = *(a1 + 376);
          if (v25 >= *(v26 + 1408))
          {
            if (*(a2 + 928 + 8 * v19) < a6)
            {
              *(a2 + 928 + 8 * v19) = a6;
              sub_10003E55C("%s:%d: %s sfq %d processing xid %lld blocked by temporary checkpoints %lld\n", "spaceman_free_completed", 6486, (*(a1 + 384) + 212), v19, v25, *(v26 + 1408));
            }

            goto LABEL_29;
          }
        }

        v27 = *(a2 + 920);
        if (v25 > v27)
        {
          if ((a4 & 3) != 0 && v68 && v25 != a6)
          {
            sub_10005FA7C(a1, 0xD0u);
            --v68;
            v25 = v74[0];
            v27 = *(a2 + 920);
          }

          if (v25 > v27)
          {
            goto LABEL_29;
          }
        }

        if (v19)
        {
          if (sub_100056448(a1, a2, 0, 0))
          {
            goto LABEL_29;
          }

          v28 = sub_10000BF10(a1, a2, v74[1], v74[2]);
          if (v28)
          {
            v29 = v28;
            pthread_mutex_lock((a2 + 576));
            sub_10005E3CC(a1, a2, v19, v24);
            pthread_mutex_unlock((a2 + 576));
LABEL_59:
            if (sub_100042AEC(a1))
            {
              sub_10003E5FC("%s:%d: %s sfq %d error validating extent %lld %lld: %d\n", "spaceman_free_completed", 6544, (*(a1 + 384) + 212), a3, v74[1], v24, v29);
            }

            goto LABEL_80;
          }

          if (v24 >= (4 * v61))
          {
            v24 = (4 * v61);
          }

          pthread_mutex_lock((a2 + 576));
          *(a2 + 984 + 8 * (a3 - 1)) += v24;
          sub_10005E3CC(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
          v30 = v74[1];
          v31 = *(a2 + 1544);
          if (v31)
          {
            v32 = *(a2 + 1540);
            *(a2 + 1540) = v32 + 1;
            v33 = *(a2 + 1560) + v24;
            *(a2 + 1560) = v33;
            v34 = *(*(a2 + 376) + 36);
            v35 = v31 + 16 * v32;
            *(v35 + 256) = v30;
            *(v35 + 264) = v24;
            if (v32 > 0xEE || v33 >= (4 * v34))
            {
              sub_10005E510(a1, a2, v19, v6, a6);
            }

            goto LABEL_80;
          }

          v50 = *(a1 + 384);
          sub_10001561C();
          sub_10005E8B4(a1, a2, v30, v24, 1, a6);
        }

        else
        {
          sub_10005E3CC(a1, a2, 0, v24);
          v29 = sub_10005E48C(a1, a2, v74[1], v24, 0);
          if (v29)
          {
            goto LABEL_59;
          }

          v36 = v74[1];
          v37 = *(a2 + 1544);
          if (v37)
          {
            v38 = *(a2 + 1542);
            *(a2 + 1542) = v38 + 1;
            *(a2 + 1552) += v24;
            v39 = (v37 + 16 * v38);
            *v39 = v36;
            v39[1] = v24;
            if ((v38 + 1) >= 0x10u)
            {
              v40 = v21;
              pthread_mutex_unlock((a2 + 448));
              v41 = *v60;
              sub_10005E24C(a1, v6);
              if (v41)
              {
                v42 = 0;
                v43 = 16 * v41;
                do
                {
                  v44 = (*(a2 + 1544) + v42);
                  v45 = *v44;
                  v46 = v44[1];
                  v47 = *(a1 + 384);
                  sub_10001561C();
                  v42 += 16;
                }

                while (v43 != v42);
                v48 = *(a1 + 384);
                sub_10001561C();
                pthread_mutex_lock((a2 + 448));
                v49 = 0;
                do
                {
                  sub_10005E674(a1, a2, *(*(a2 + 1544) + v49), *(*(a2 + 1544) + v49 + 8), a6);
                  v49 += 16;
                }

                while (v43 != v49);
              }

              else
              {
                v52 = *(a1 + 384);
                sub_10001561C();
                pthread_mutex_lock((a2 + 448));
              }

              *(a2 + 1552) = 0;
              *(a2 + 1542) = 0;
              v19 = a3;
              v21 = v40;
            }

            goto LABEL_80;
          }

          v51 = *(a1 + 384);
          sub_10001561C();
          sub_10005E674(a1, a2, v36, v24, a6);
        }

        sub_10005E24C(a1, v6);
      }

      else
      {
        sub_10003E5FC("%s:%d: %s sfq %d entry %lld:%lld %lld - bad xid, current xid %lld\n", "spaceman_free_completed", 6459, (*(a1 + 384) + 212), v19, v74[0], v74[1], v24, a6);
        if (v19)
        {
          pthread_mutex_lock((a2 + 576));
          sub_10005E3CC(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
        }

        else
        {
          sub_10005E3CC(a1, a2, 0, v24);
        }
      }

LABEL_80:
      if (v6 && *(v6 + 62) == 1)
      {
        v53.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v53.i64[1] = v24;
        *(v6 + 40) = vaddq_s64(*(v6 + 40), v53);
      }

      v54 = sub_100022A00(v75, 0, 0, 0, 0, 0, a6);
      if (v54)
      {
        sub_10003E5FC("%s:%d: %s sfq %d error removing entry %lld %lld from free queue: %d\n", "spaceman_free_completed", 6556, (*(a1 + 384) + 212), a3, v74[1], v74[2], v54);
      }

      v55 = v74[2] - v24;
      if (v74[2] != v24)
      {
        v74[1] += v24;
        v74[2] -= v24;
        v73 = 8 * (v55 != 1);
        v56 = sub_10001B234(v75, 0, v74, 16, &v74[2], v73, a6);
        if (v56)
        {
          sub_10003E5FC("%s:%d: %s sfq %d error inserting shortened entry %lld %lld into free queue: %d\n", "spaceman_free_completed", 6566, (*(a1 + 384) + 212), a3, v74[1], v74[2], v56);
        }
      }

      v14 += v24;
      LODWORD(__rqtp.tv_sec) = 16;
      v73 = 8;
      v57 = sub_100022AC4(v75, 0, v74, &__rqtp, &v74[2], &v73);
      v23 = 1;
      if (v57)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_31:
  if (v6 && *(v6 + 62) == 1)
  {
    v22 = *(v6 + 48) + v14;
    *(v6 + 40) += v15;
    *(v6 + 48) = v22;
  }

  return v14;
}

uint64_t sub_100056014(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 62) != 1)
  {
    return 0;
  }

  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
  tv_sec = v8.tv_sec;
  tv_nsec = v8.tv_nsec;
  *a2 = v8.tv_sec;
  tv_nsec /= 1000;
  *(a2 + 8) = tv_nsec;
  *(a2 + 32) = 1000000 * tv_sec + tv_nsec;
  *(a2 + 62) = 0;
  v6 = *(a2 + 56);
  if (!v6)
  {
    return 0;
  }

  atomic_fetch_add_explicit((*(a1 + 384) + 152), -v6, memory_order_relaxed);
  return 1;
}

void sub_1000560D4(void *a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v4;
  *&v12[16] = v4;
  v10 = v4;
  v11 = v4;
  v5 = *(a2 + 16);
  if (!sub_100054E54(a1, &v13))
  {
    v6 = *&v13[5].__opaque[48];
    sub_100055704(a1, &v10, 0, 1);
    pthread_mutex_lock(v13 + 7);
    if (sub_100056448(a1, v13, 0, 0))
    {
        ;
      }
    }

    while (1)
    {
      v7 = v13;
      if (v5 - v6[27] <= LOWORD(v13[24].__sig))
      {
        break;
      }

      if (!sub_1000557FC(a1, v13, 0, 0, &v10, v5))
      {
        v7 = v13;
        break;
      }
    }

    pthread_mutex_unlock(v7 + 7);
    pthread_mutex_lock(v13 + 8);
    v8 = v13;
    if (v6[30] > *&v13[23].__opaque[40])
    {
      while (1)
      {
        v8 = v13;
        if (v6[30] <= *&v13[23].__opaque[40] >> 1)
        {
          break;
        }

        if (!sub_1000557FC(a1, v13, 1u, 1, &v10, v5))
        {
          v8 = v13;
          break;
        }
      }
    }

    if (v6[35] > *&v8[23].__opaque[48])
    {
        ;
      }
    }

    if (v6[30] > v6[9])
    {
        ;
      }
    }

    if (v6[35] > v6[15])
    {
        ;
      }
    }

    if (sub_100056448(a1, v13, 1u, 0))
    {
        ;
      }
    }

    if (sub_100056448(a1, v13, 2u, 0))
    {
        ;
      }
    }

      ;
    }

    do
    {
      v9 = v6[37];
    }

    while (v9 && v5 - v9 > LOWORD(v13[24].__sig) && sub_1000557FC(a1, v13, 2u, 0, &v10, v5));
    sub_100056014(a1, &v10);
    *(a2 + 88) = *&v12[8];
    *(a2 + 80) = *v12 - v11;
    pthread_mutex_unlock(v13 + 8);
    sub_100046D50(&v13->__sig);
  }
}

uint64_t sub_100056448(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0;
  if (!sub_10005693C(a1, a2, a3, 0, 0, &v9) && v9)
  {
    v7 = sub_1000586D8(a2, a3, v9, a4);
    sub_100046D50(v9);
  }

  return v7;
}

uint64_t sub_1000564C8(void *a1)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100054E54(a1, &v14))
  {
    return 0;
  }

  v3 = *&v14[5].__opaque[48];
  pthread_mutex_lock(v14 + 9);
  v4 = v3[9];
  v5 = *&v14[23].__opaque[40] >> (v4 - v14[13].__sig < v3[6] >> 5);
  v6 = v3[30];
  v7 = v3[15];
  v8 = *&v14[23].__opaque[48] >> (v7 - *v14[13].__opaque < v3[12] >> 5);
  v9 = v3[35];
  pthread_mutex_unlock(v14 + 9);
  v12 = v9 > v7 || v9 > v8 || v6 > v4 || v6 > v5;
  if (v12 || sub_100056448(a1, v14, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (!sub_100056448(a1, v14, 1u, 0))
    {
      v2 = sub_100056448(a1, v14, 2u, 0);
    }
  }

  sub_100046D50(&v14->__sig);
  return v2;
}

uint64_t sub_1000565FC(uint64_t a1, uint64_t a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100054E54(a1, &v5);
  if (!result)
  {
    v4 = v5;
    *(v5 + 920) = a2;
    return sub_100046D50(v4);
  }

  return result;
}

uint64_t sub_100056644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 376);
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v9 = sub_10005693C(a1, a3, 0, 0, 0, &v24);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = sub_10005693C(a1, a3, 1u, 0, 0, &v25);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = sub_10005693C(a1, a3, 2u, 0, 0, &v23);
  if (v9)
  {
    goto LABEL_49;
  }

  if (a4 == 1)
  {
    v15 = sub_10004C8EC(a3);
    v11 = v15;
    if (v15 || (v12 = v24) == 0)
    {
      if (v15 || (v13 = v25) == 0)
      {
        if (!v15)
        {
          v14 = v23;
          if (v23)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_50;
      }

      goto LABEL_32;
    }

    v16 = *(v24[49] + 32);
    if (v16 <= v8[112])
    {
      v17 = 0;
    }

    else if (*(a3 + 976))
    {
      v17 = 1;
    }

    else
    {
      sub_10003E5FC("%s:%d: %s IP free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3419, (*(a1 + 384) + 212), v16, v8[112], *(a2 + 16));
      v17 = 1;
      v12 = v24;
    }

    *(a3 + 976) = v17;
    goto LABEL_28;
  }

  if (a4 == 2)
  {
    v10 = sub_10004C960(a3);
    v11 = v10;
    if (v10 || (v12 = v24) == 0)
    {
      if (v10 || (v13 = v25) == 0)
      {
        if (v10)
        {
          goto LABEL_50;
        }

        v14 = v23;
        if (!v23)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v12 = v24;
  if (v24)
  {
LABEL_28:
    v11 = sub_100025610(a1, a2, v12, a4);
    goto LABEL_29;
  }

  v11 = 0;
LABEL_29:
  if (!v11)
  {
    v13 = v25;
    if (v25)
    {
      if (a4 != 1)
      {
LABEL_38:
        v11 = sub_100025610(a1, a2, v13, a4);
        goto LABEL_39;
      }

LABEL_32:
      v18 = *(v13[49] + 32);
      if (v18 <= v8[132])
      {
        v19 = 0;
      }

      else if (*(a3 + 977))
      {
        v19 = 1;
      }

      else
      {
        sub_10003E5FC("%s:%d: %s main free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3434, (*(a1 + 384) + 212), v18, v8[132], *(a2 + 16));
        v19 = 1;
        v13 = v25;
      }

      *(a3 + 977) = v19;
      goto LABEL_38;
    }
  }

LABEL_39:
  if (!v11)
  {
    v14 = v23;
    if (v23)
    {
      if (a4 != 1)
      {
LABEL_48:
        v9 = sub_100025610(a1, a2, v14, a4);
LABEL_49:
        v11 = v9;
        goto LABEL_50;
      }

LABEL_42:
      v20 = *(v14[49] + 32);
      if (v20 <= v8[152])
      {
        v21 = 0;
      }

      else if (*(a3 + 978))
      {
        v21 = 1;
      }

      else
      {
        sub_10003E5FC("%s:%d: %s tier2 free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3449, (*(a1 + 384) + 212), v20, v8[152], *(a2 + 16));
        v21 = 1;
        v14 = v23;
      }

      *(a3 + 978) = v21;
      goto LABEL_48;
    }
  }

LABEL_50:
  if (v24)
  {
    sub_100046D50(v24);
  }

  if (v25)
  {
    sub_100046D50(v25);
  }

  if (v23)
  {
    sub_100046D50(v23);
  }

  return v11;
}

uint64_t sub_10005693C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t *a6)
{
  if (a3 > 2)
  {
    return 22;
  }

  v10 = *(a2 + 376);
  v11 = a2 + 952;
  v12 = *(a2 + 952 + 8 * a3);
  *a6 = v12;
  if (v12)
  {
    goto LABEL_4;
  }

  v13 = a3;
  v14 = v10 + 40 * a3;
  v17 = *(v14 + 208);
  v16 = (v14 + 208);
  v15 = v17;
  if (v17)
  {
    result = sub_100024924(a1, 0x80000000, v15, 0, 0, 0, 9, sub_10005841C, 0, a6);
    if (!result)
    {
LABEL_8:
      v12 = *a6;
      *(v11 + 8 * v13) = *a6;
LABEL_4:
      sub_10004C19C(v12);
      return 0;
    }

    return result;
  }

  if (!a5)
  {
    result = 0;
    goto LABEL_14;
  }

  result = sub_10004B964(a2, 0, a4);
  if (result)
  {
LABEL_14:
    *a6 = 0;
    return result;
  }

  result = sub_1000245A4(a1, 0x80000000uLL, 6, 9, 0, 0x10u, 8, sub_10005841C, a4, a6);
  if (!result)
  {
    *v16 = sub_100047D10(*a6);
    sub_10004C7D8(a2, a4, 0);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100056A88(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t (*a4)(void *a1, unint64_t a2, int64_t a3), void *a5)
{
  v8 = a1;
  memset(v234, 0, 64);
  v233 = 0;
  v232 = 0;
  memset(v238, 0, 128);
  v231 = 0xAAAAAAAAAAAAAAAALL;
  v230 = 0xAAAAAAAAAAAAAAAALL;
  v219 = 0;
  pthread_mutex_lock((a1 + 864));
  if ((a2 & 0x30) == 0 && *(v8 + 639) == 1)
  {
    pthread_mutex_unlock((v8 + 864));
    return 16;
  }

  v229 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v10;
  v221 = v10;
  v222 = v10;
  v223 = v10;
  v224 = v10;
  v225 = v10;
  v226 = v10;
  v227 = v10;
  v228 = 0xAAAAAAAAAAAAAAAALL;
  ++*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  v9 = sub_100054E54(v8, &v229);
  if (v9)
  {
    goto LABEL_360;
  }

  v11 = *&v229[5].__opaque[48];
  v183 = a2 & 0x30;
  if ((a2 & 0x40) != 0)
  {
    v12 = 4;
  }

  else if ((a2 & 0x20) != 0)
  {
    v12 = 8;
  }

  else if (a4 == sub_100058190)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11[10];
  }

  v13 = sub_10003FB98(16 * v11[10], 0x1000040F7F8B94BuLL);
  v14 = sub_10003FB98(8 * v11[10], 0x100004000313F17uLL);
  v15 = v14;
  v9 = 12;
  if (!v13 || !v14)
  {
    goto LABEL_355;
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_lock(v229 + 6);
  }

  __base = v13;
  if (a3)
  {
    if ((a2 & 0x6C) != 0x40)
    {
      v9 = 22;
      goto LABEL_344;
    }

    v214 = 0;
  }

  else
  {
    if ((a2 & 4) != 0)
    {
      v214 = 0;
      v16 = 1;
      goto LABEL_24;
    }

    v214 = (a2 >> 3) & 1;
  }

  v16 = 2;
LABEL_24:
  v169 = v16;
  v9 = 0;
  v172 = 0;
  v179 = 0;
  v17 = 0;
  if ((a2 & 0x20) != 0)
  {
    v18 = &v219;
  }

  else
  {
    v18 = 0;
  }

  v173 = v18;
  v174 = v11 + 12;
  v186 = a2 & 0xFE;
  v176 = v13 + 8;
  v184 = v13 - 16;
  v202 = a2;
  v210 = a4;
  v201 = v15;
  v187 = v8;
  v196 = v11;
  while (1)
  {
    if (a2)
    {
      v228 = 0;
      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      LODWORD(v228) = sub_100050FD8(v229, v214);
    }

    v219 = a3;
    v175 = sub_10001331C(*&v229[24].__opaque[8 * v214 + 32], v173);
    v19 = v219;
    v20 = v11[9];
    if ((a2 & 0x40) == 0)
    {
      v19 = v219 / v20 * v20;
      v219 = v19;
    }

    v170 = v19;
    v21 = &v174[12 * v214];
    v177 = -1;
    v22 = v19 / v20 / v11[10];
    v23 = v17;
    v180 = v21;
LABEL_33:
    v178 = v22;
    if (v22 < v21[4])
    {
      break;
    }

    if (a2)
    {
      if (v228)
      {
        qsort(&v220, 8uLL, 0x10uLL, sub_100058404);
        if (v228)
        {
          if (DWORD2(v227))
          {
            v151 = v23;
            v152 = 6;
            v154 = &v227;
            v153 = &v227 + 2;
            while (1)
            {
              LOBYTE(v237) = 0;
              v155 = sub_100051034(v229, v214, *v154, &v237);
              if (v155)
              {
                sub_10003E5FC("%s:%d: %s failed to evaluate chunk %llu (average free ext len %u) for disabled allocation zones, error %d\n", "spaceman_iterate_free_extents_internal", 4227, (*(v8 + 384) + 212), *v154, *v153, v155);
              }

              v156 = v228;
              if (v237 == 1)
              {
                v156 = v228 - 1;
                LODWORD(v228) = v228 - 1;
              }

              v9 = 0;
              a4 = v210;
              v23 = v151;
              if (!v156 || v152 == -1)
              {
                break;
              }

              v154 = (&v220 + v152);
              v153 = (v154 | 8);
              --v152;
              if (!*(v154 + 8))
              {
                v9 = 0;
                a4 = v210;
                v23 = v151;
                break;
              }
            }
          }
        }
      }
    }

    if (v175)
    {
      if (v170)
      {
        v157 = 0;
        v158 = v214;
      }

      else
      {
        v158 = v214;
        v157 = v178 == v174[12 * v214 + 4];
      }

      sub_1000133C8(*&v229[24].__opaque[8 * v158 + 32], v219, v157);
    }

    v17 = v23;
    a3 = 0;
    if (++v214 == v169)
    {
      v161 = 0;
      goto LABEL_335;
    }
  }

  v182 = v12;
  v24 = v219;
  v25 = v11[9];
  v26 = v11[10];
  if (!v183)
  {
    pthread_mutex_lock((v8 + 864));
    if (*(v8 + 639) == 1)
    {
      sub_10003E55C("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", "spaceman_iterate_free_extents_internal", 3921, (*(v8 + 384) + 212), v214, v22, v180[4]);
      pthread_mutex_unlock((v8 + 864));
      v160 = 0;
      v161 = 0;
      v9 = 16;
      v11 = v196;
      a4 = v210;
      goto LABEL_329;
    }

    pthread_mutex_unlock((v8 + 864));
  }

  v215 = v26;
  v217 = v25;
  pthread_mutex_lock(&v229[v214 + 10]);
  v27 = v180[5];
  v185 = v22;
  if (v27)
  {
    v212 = v24;
    v28 = v9;
    v29 = v22 / v196[11];
    if (v29 == v177 && v23)
    {
      sub_10004B8D4(v233, 1);
      v29 = v177;
    }

    else
    {
      v31 = *(*(&v229[14].__sig + v214) + 8 * v29);
      if (v233)
      {
        sub_100046D50(v233);
        v233 = 0;
      }

      v230 = v196;
      v231 = __PAIR64__(v29, v214);
      v32 = sub_100049EE0(*(v8 + 392), 0x140000004, v31, &xmmword_100081490, &v230, 0, 0, 0, &v233);
      if (v32)
      {
        v168 = v32;
        sub_10003E5FC("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3948, (*(v8 + 384) + 212), v29, v31, v32);
        v161 = 0;
        if (v175)
        {
          LOBYTE(v160) = 1;
          v11 = v196;
          a4 = v210;
          v9 = v168;
          goto LABEL_330;
        }

        v11 = v196;
        a4 = v210;
        v9 = v168;
        goto LABEL_333;
      }

      v28 = 0;
      v23 = *(v233 + 56);
      v177 = v29;
    }

    pthread_mutex_unlock(&v229[v214 + 10]);
    v30 = (v23 + 8 * (v22 - v196[11] * v29) + 40);
    v179 = 1;
    v9 = v28;
    v24 = v212;
  }

  else
  {
    v30 = (*(&v229[14].__sig + v214) + 8 * v22);
  }

  if (v232)
  {
    sub_10004B8D4(v232, 1);
  }

  else
  {
    v33 = v23;
    v34 = *v30;
    v230 = v196;
    v231 = __PAIR64__(v22, v214);
    v35 = sub_100049EE0(*(v8 + 392), 0x140000004, v34, &xmmword_1000814A0, &v230, 0, 0, 0, &v232);
    if (v35)
    {
      v167 = v35;
      sub_10003E5FC("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3975, (*(v8 + 384) + 212), v22, v34, v35);
      v161 = 0;
      v9 = v167;
      LOBYTE(a2) = v202;
      v11 = v196;
      a4 = v210;
      v15 = v201;
      v160 = v27 == 0;
      goto LABEL_329;
    }

    LOBYTE(a2) = v202;
    v15 = v201;
    v23 = v33;
    v9 = 0;
  }

  v36 = *(v232 + 56);
  if (v210 == sub_100058190)
  {
    sub_100055704(v8, v234, 125, 0);
    if (v27)
    {
      goto LABEL_53;
    }
  }

  else if (v27)
  {
    goto LABEL_53;
  }

  pthread_mutex_unlock(&v229[v214 + 10]);
LABEL_53:
  if (v233)
  {
    sub_10004BE88(v233, 1);
    v179 = 0;
  }

  v37 = v24 / v217 - v215 * v22;
  v38 = v24 % v217;
  v11 = v196;
  bzero(v15, 8 * v196[10]);
  LODWORD(v39) = *(v36 + 36) - v37;
  v12 = v182;
  if (v182 >= v39)
  {
    v39 = v39;
  }

  else
  {
    v39 = v182;
  }

  __nel = v39;
  v188 = v37;
  if (v39)
  {
    v40 = 0;
    v41 = v196[9];
    v42 = v176;
    do
    {
      *(v42 - 2) = v37;
      *v42 = *(v36 + 40 + 32 * v37 + 24);
      v42 += 2;
      if (v40)
      {
        v43 = 0;
      }

      else
      {
        v43 = v38;
      }

      v219 += v41 - v43;
      ++v40;
      LODWORD(v37) = v37 + 1;
    }

    while (v40 < __nel);
    if ((a2 & 0x40) != 0)
    {
      goto LABEL_66;
    }
  }

  else if ((a2 & 0x40) != 0)
  {
    goto LABEL_66;
  }

  qsort(__base, __nel, 0x10uLL, sub_10005832C);
LABEL_66:
  v181 = v36;
  v44 = __nel;
  if (!__nel)
  {
    v204 = 0;
    a4 = v210;
LABEL_230:
    v22 = v178;
    goto LABEL_283;
  }

  v171 = v23;
  v45 = 0;
  v46 = 0;
  v47 = v176;
  v193 = v37;
  do
  {
    v48 = v45;
    v49 = *v47;
    if (*v47)
    {
      v50 = sub_100049EE0(*(v8 + 392), 0x140000080, v49, &xmmword_1000814B0, 0, 0, 0, 0, &v238[v46]);
      v44 = __nel;
      if (v50)
      {
        v51 = v50;
        if (v50 != 45 && v50 != 16)
        {
          sub_10003E5FC("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4033, (*(v8 + 384) + 212), v178, *(v47 - 2), v49, v50);
          v160 = 0;
          v161 = 1;
          v9 = v51;
          LOBYTE(a2) = v202;
          goto LABEL_328;
        }

        v238[v46] = 0;
      }

      ++v46;
      LOBYTE(a2) = v202;
      v15 = v201;
      if (v46 == 16)
      {
        break;
      }
    }

    v45 = v48 + 1;
    v47 += 2;
  }

  while (v48 + 1 < v44);
  v53 = 0;
  v204 = 0;
  v194 = v48 + 1;
  v54 = 0;
  v200 = v181 + 40;
  v55 = v196;
  while (1)
  {
    v197 = v53;
    v56 = &__base[16 * v53];
    v57 = *(v56 + 1);
    v58 = v55;
    v192 = v55[10];
    v59 = *v56;
    v60 = &v238[v54];
    v199 = v57;
    if (v57)
    {
      if (*v60)
      {
        v61 = sub_10004C01C(*v60);
        if (v61)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v61 = sub_100049EE0(*(v8 + 392), 0x140000000, v57, &xmmword_1000814B0, 0, 0, 0, 0, &v238[v54]);
        if (v61)
        {
LABEL_325:
          v159 = v61;
          sub_10003E5FC("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4057, (*(v8 + 384) + 212), v178, *v56, v199, v61);
          if (*v60)
          {
            sub_100046D50(*v60);
            *v60 = 0;
          }

          v160 = 0;
          v161 = 1;
          a4 = v210;
          v11 = v58;
          v9 = v159;
          goto LABEL_329;
        }
      }

      v213 = *(*v60 + 56);
      v62 = *v56;
    }

    else
    {
      v213 = 0;
      v62 = *v56;
    }

    if ((a2 & 0x40) != 0 && v62)
    {
      *&v15[8 * v62] = *&v15[8 * v62 - 8];
      *&v15[8 * *v56 - 8] = 0;
      v62 = *v56;
    }

    v63 = 0;
    v191 = v59;
    v207 = &v15[8 * v62];
    v211 = v200 + 32 * v59;
    v64 = *(v211 + 16);
    v236 = 0;
    v205 = v229;
    v65 = v186;
    if (*&v229[23].__opaque[8 * v214 + 16])
    {
      v65 = a2;
    }

    v216 = v65;
    if ((v65 & 0x40) != 0)
    {
      v63 = *v207;
    }

    v190 = *&v229[23].__opaque[8 * v214 + 16];
    v195 = &v238[v54];
    v198 = v54;
    v66 = *&v64 & 0xFFFFFLL;
    v237 = 0xAAAAAAAAAAAAAAAALL;
    if ((v64 & 0xFFFFFu) <= v38)
    {
      LODWORD(v68) = 0;
      v218 = 0;
      v67 = 0;
      v71 = v213;
LABEL_144:
      LODWORD(v37) = v193;
      v54 = v198;
      if ((v216 & 0x40) != 0)
      {
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v67 = 0;
    v218 = 0;
    v68 = 0;
    v209 = &v229[24].__opaque[32];
    v69 = 1;
    v70 = v38;
    v71 = v213;
    while (1)
    {
      if (!v71)
      {
        v236 = v66;
        v237 = v70;
        v72 = v66;
        v73 = v70;
        goto LABEL_102;
      }

      if (!sub_100019C6C(0, v71, v70, v66 - v70, &v237))
      {
        break;
      }

      if (sub_100019C6C(1, v71, v237, v66 - v237, &v236))
      {
        v72 = v236;
      }

      else
      {
        v236 = v66;
        v72 = v66;
      }

      v73 = v237;
LABEL_102:
      v70 = v72;
      v74 = 100 * (v69 / 0x64) - 1;
      v75 = v72 - v73;
      if (v72 - v73 > v68)
      {
        v68 = v72 - v73;
      }

      if ((v216 & 0x40) != 0)
      {
        if (v63 && v73)
        {
          v76 = *(v211 + 8) - v63;
          sub_100011764(*&v209[8 * v214], 0, v76, v63);
          if (v210)
          {
            v77 = v210(a5, v76, v63);
            if (BYTE6(v234[7]) == 1)
            {
              v78.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v78.i64[1] = v63;
              *&v234[5] = vaddq_s64(*&v234[5], v78);
            }
          }

          else
          {
            v77 = 0;
          }

          v71 = v213;
          v74 = 100 * (v69 / 0x64) - 1;
          v63 = 0;
          if (v218)
          {
            v81 = 1;
          }

          else
          {
            v81 = v77 == 0;
          }

          if (v81)
          {
            v82 = v218;
          }

          else
          {
            v82 = v77;
          }

          v218 = v82;
          v72 = v236;
        }

        if (v72 != v66)
        {
          v208 = v74;
          v79 = *(v211 + 8) - v63;
          v80 = v63 + v75;
LABEL_127:
          sub_100011764(*&v209[8 * v214], 0, v79 + v73, v80);
          if (v210)
          {
            v83 = v210(a5, v79 + v73, v80);
            if (BYTE6(v234[7]) == 1)
            {
              v84 = 1;
              v85.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v85.i64[1] = v80;
              *&v234[5] = vaddq_s64(*&v234[5], v85);
            }

            else
            {
              v84 = 0;
            }
          }

          else
          {
            v83 = 0;
            v84 = BYTE6(v234[7]);
          }

          v71 = v213;
          v63 = 0;
          if (v218)
          {
            v86 = 1;
          }

          else
          {
            v86 = v83 == 0;
          }

          if (v86)
          {
            v87 = v218;
          }

          else
          {
            v87 = v83;
          }

          v218 = v87;
          if ((v84 & 1) != 0 && v208 == v67)
          {
            sub_10005E24C(*(v205->__sig + 392), v234);
            v63 = 0;
          }

          goto LABEL_141;
        }

        v63 += v75;
      }

      else if (v73)
      {
        if (v72 != v66)
        {
          v208 = 100 * (v69 / 0x64) - 1;
          v79 = *(v211 + 8) - v63;
          v80 = v75 + v63;
          goto LABEL_127;
        }

        *(v207 + 1) = v75;
      }

      else
      {
        *v207 = v72;
      }

LABEL_141:
      ++v69;
      ++v67;
      if (v70 >= v66)
      {
        goto LABEL_144;
      }
    }

    if ((v216 & 0x40) == 0 || !v63 || v67)
    {
      goto LABEL_144;
    }

    v95 = *(v211 + 8) - v63;
    sub_100011764(*&v209[8 * v214], 0, v95, v63);
    if (v210)
    {
      v96 = v210(a5, v95, v63);
      LODWORD(v37) = v193;
      v54 = v198;
      if (BYTE6(v234[7]) == 1)
      {
        v97.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v97.i64[1] = v63;
        *&v234[5] = vaddq_s64(*&v234[5], v97);
      }
    }

    else
    {
      v96 = 0;
      LODWORD(v37) = v193;
      v54 = v198;
    }

    v67 = 0;
    v63 = 0;
    if (v218)
    {
      v125 = 1;
    }

    else
    {
      v125 = v96 == 0;
    }

    if (v125)
    {
      v126 = v218;
    }

    else
    {
      v126 = v96;
    }

    v218 = v126;
LABEL_145:
    *v207 = v63;
LABEL_146:
    v9 = v218;
    if ((v216 & 1) == 0)
    {
      goto LABEL_186;
    }

    v88 = v191 + v192 * v185;
    v89 = *(v190 + 4 * v88);
    v90 = v89 & 0xFF000000 | v68 & 0xFFFFFF;
    *(v190 + 4 * v88) = v90;
    if (v71)
    {
      v91 = v89 & 0xFE000000 | v68 & 0xFFFFFF;
      v92 = v90 | 0x1000000;
      if (*v71)
      {
        v92 = v91;
      }

      *(v190 + 4 * v88) = v92;
      v93 = v190;
      if (v66 < 0x40 || (v71[(v66 >> 6) - 1] & 0x8000000000000000) != 0)
      {
        v94 = v92 & 0xFDFFFFFF;
        goto LABEL_161;
      }
    }

    else
    {
      v92 = v90 | 0x1000000;
      v93 = v190;
    }

    v94 = v92 | 0x2000000;
LABEL_161:
    *(v93 + 4 * v88) = v94;
    if (!v228)
    {
      goto LABEL_186;
    }

    v98 = *(v211 + 20) & 0xFFFFF;
    if (v98 == *(*&v205[5].__opaque[48] + 36))
    {
      v235 = 0;
      v99 = sub_100051034(v205, v214, v88, &v235);
      if (v99)
      {
        v100 = *v205->__opaque;
        if (v100)
        {
          v101 = (v100 + 4040);
        }

        else
        {
          v101 = (*(*(v205->__sig + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s failed to evaluate free chunk %llu for disabled allocation zone, error %d\n", "spaceman_iterate_process_bitmap_block", 3702, v101, v88, v99);
      }

      if (v235 == 1)
      {
        LODWORD(v228) = v228 - 1;
      }

      goto LABEL_186;
    }

    if (!v67 || v98 < 4)
    {
      goto LABEL_186;
    }

    v102 = v98 / v67;
    v103 = &v220 + HIDWORD(v228);
    v104 = v94 & 0xC000000;
    v105 = v94 & 0xFFFFFC;
    v106 = v102 > *(v103 + 2) && v104 == 0;
    if (!v106 || v105 == 0)
    {
      goto LABEL_186;
    }

    v108 = 0;
    *(v103 + 2) = v102;
    *v103 = v88;
    v109 = -7;
    v110 = DWORD2(v220);
    v111 = &v221 + 2;
    while (2)
    {
      v113 = *v111;
      v111 += 4;
      v112 = v113;
      if (v113 >= v110)
      {
LABEL_179:
        v121 = __CFADD__(v109++, 1);
        if (v121)
        {
          goto LABEL_224;
        }

        continue;
      }

      break;
    }

    if (v112)
    {
      v108 = v109 + 8;
      v110 = v112;
      goto LABEL_179;
    }

    v108 = v109 + 8;
LABEL_224:
    HIDWORD(v228) = v108;
LABEL_186:
    v114 = v204;
    if (v204)
    {
      v115 = 1;
    }

    else
    {
      v115 = v218 == 0;
    }

    if (!v115)
    {
      v114 = v218;
    }

    LOBYTE(a2) = v202;
    if ((v202 & 0x40) != 0)
    {
      if (v114)
      {
        break;
      }
    }

    v204 = v114;
    v8 = v187;
    v55 = v196;
    v15 = v201;
    if (!v199)
    {
      v116 = __nel;
      v124 = v197;
      goto LABEL_213;
    }

    sub_100046D50(*v195);
    *v195 = 0;
    v116 = __nel;
    if (v194 >= __nel)
    {
      goto LABEL_208;
    }

    v117 = &v184[16 * v194];
    v118 = v194;
    v119 = v194 + 1;
    do
    {
      v120 = *(v117 + 3);
      v117 += 16;
      ++v118;
      if (v120)
      {
        v121 = 1;
      }

      else
      {
        v121 = v119 >= __nel;
      }

      ++v119;
    }

    while (!v121);
    v194 = v118;
    if (!v120)
    {
LABEL_208:
      v124 = v197;
      goto LABEL_212;
    }

    v122 = sub_100049EE0(*(v187 + 392), 0x140000080, v120, &xmmword_1000814B0, 0, 0, 0, 0, v195);
    if (v122 == 45 || v122 == 16)
    {
      v9 = 0;
      *v195 = 0;
      goto LABEL_211;
    }

    v9 = v122;
    if (v122)
    {
      sub_10003E5FC("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4106, (*(v187 + 384) + 212), v178, *v117, v120, v122);
      v160 = 0;
      v161 = 1;
      a4 = v210;
      v11 = v196;
      goto LABEL_329;
    }

LABEL_211:
    v116 = __nel;
    v55 = v196;
    v124 = v197;
LABEL_212:
    v54 = (v54 + 1) & 0xF;
LABEL_213:
    v38 = 0;
    v53 = v124 + 1;
    if (v53 >= v116)
    {
      v127 = 0;
      v128 = 0;
      v129 = 0;
      while (1)
      {
        v130 = (v127 + v188);
        v131 = v200 + 32 * v130;
        v132 = &v201[8 * v130];
        if ((v202 & 0x40) != 0)
        {
          if (*v132)
          {
            v129 = *(v131 + 8) - *v132 + (*(v131 + 16) & 0xFFFFF);
            v116 = __nel;
            v128 = *v132;
          }

          goto LABEL_270;
        }

        v133 = *v132;
        if (v133)
        {
          break;
        }

        v136 = v9;
LABEL_252:
        v140 = *(v132 + 1);
        LODWORD(v37) = v193;
        if (v140)
        {
          v141 = *(v131 + 8) + (*(v131 + 16) & 0xFFFFF) - v140;
          if (v128)
          {
            if (v128 + v129 == v141)
            {
              v9 = 0;
              v140 += v128;
              v141 = v129;
              goto LABEL_258;
            }

            sub_100011764(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
            if (v210)
            {
              v9 = v210(a5, v129, v128);
              if (BYTE6(v234[7]) == 1)
              {
                v143.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v143.i64[1] = v128;
                *&v234[5] = vaddq_s64(*&v234[5], v143);
              }
            }

            else
            {
              v9 = 0;
            }

            v142 = v204;
            v116 = __nel;
          }

          else
          {
            v9 = 0;
LABEL_258:
            v142 = v204;
          }

          if (v142)
          {
            v144 = 1;
          }

          else
          {
            v144 = v9 == 0;
          }

          if (!v144)
          {
            v142 = v9;
          }

          v204 = v142;
          v129 = v141;
          v128 = v140;
          goto LABEL_270;
        }

        v9 = v136;
LABEL_270:
        if (++v127 >= v116)
        {
          a4 = v210;
          v12 = v182;
          if (!v128)
          {
            v11 = v196;
            v23 = v171;
            goto LABEL_230;
          }

          sub_100011764(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
          v22 = v178;
          if (v210)
          {
            v9 = v210(a5, v129, v128);
            if (BYTE6(v234[7]) == 1)
            {
              v145.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v145.i64[1] = v128;
              *&v234[5] = vaddq_s64(*&v234[5], v145);
            }
          }

          else
          {
            v9 = 0;
          }

          v11 = v196;
          v23 = v171;
          v146 = v204;
          if (v204)
          {
            v147 = 1;
          }

          else
          {
            v147 = v9 == 0;
          }

          if (!v147)
          {
            v146 = v9;
          }

          v204 = v146;
LABEL_283:
          if (a4 == sub_100058190)
          {
            sub_100058344(v8);
          }

          sub_10004BE88(v232, 1);
          if (BYTE6(v234[7]) == 1)
          {
            if (sub_100056014(v8, v234))
            {
              if (v12 <= 1)
              {
                v12 = 1;
              }

              else
              {
                v12 >>= 1;
              }

              v148 = 1;
            }

            else
            {
              v149 = v11[10];
              v150 = 4 * v12;
              if (v149 < 4 * v12)
              {
                v150 = v11[10];
              }

              if (v149 >= v12 + 1)
              {
                v149 = v12 + 1;
              }

              if (v172)
              {
                v12 = v149;
              }

              else
              {
                v12 = v150;
              }

              v148 = v172;
            }

            v172 = v148;
          }

          if (*(v181 + 36) == v37)
          {
            sub_100046D50(v232);
            v232 = 0;
            v22 = (v22 + 1);
          }

          v21 = &v174[12 * v214];
          if (v204)
          {
            v160 = 0;
            v161 = 0;
            v9 = v204;
            goto LABEL_329;
          }

          goto LABEL_33;
        }
      }

      v134 = *(v131 + 8);
      if (v128)
      {
        if (v128 + v129 == v134)
        {
          v135 = 0;
          v133 += v128;
          v134 = v129;
          goto LABEL_240;
        }

        sub_100011764(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
        if (v210)
        {
          v135 = v210(a5, v129, v128);
          if (BYTE6(v234[7]) == 1)
          {
            v138.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v138.i64[1] = v128;
            *&v234[5] = vaddq_s64(*&v234[5], v138);
          }
        }

        else
        {
          v135 = 0;
        }

        v137 = v204;
        v116 = __nel;
      }

      else
      {
        v135 = 0;
LABEL_240:
        v137 = v204;
      }

      if (v137)
      {
        v139 = 1;
      }

      else
      {
        v139 = v135 == 0;
      }

      v136 = v135;
      if (!v139)
      {
        v137 = v135;
      }

      v204 = v137;
      v129 = v134;
      v128 = v133;
      goto LABEL_252;
    }
  }

  v160 = 0;
  v161 = 1;
  v8 = v187;
LABEL_328:
  v11 = v196;
  a4 = v210;
  v15 = v201;
LABEL_329:
  if (((v9 != 0) & v175) != 0)
  {
LABEL_330:
    sub_1000133C8(*&v229[24].__opaque[8 * v214 + 32], v219, 0);
    if (v160)
    {
      v162 = v214;
      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (!v160)
  {
    goto LABEL_335;
  }

LABEL_333:
  v162 = v214;
LABEL_334:
  pthread_mutex_unlock(&v229[v162 + 10]);
LABEL_335:
  if (v233 && (v179 & 1) != 0)
  {
    sub_10004BE88(v233, 1);
  }

  v163 = v161 ^ 1;
  if (!v232)
  {
    v163 = 1;
  }

  if ((v163 & 1) == 0)
  {
    sub_100056014(v8, v234);
    if (a4 == sub_100058190)
    {
      sub_100058344(v8);
    }

    sub_10004BE88(v232, 1);
  }

LABEL_344:
  if (v233)
  {
    sub_100046D50(v233);
  }

  if (v232)
  {
    sub_100046D50(v232);
  }

  for (i = 0; i != 16; ++i)
  {
    v165 = v238[i];
    if (v165)
    {
      sub_10004C01C(v165);
      sub_100046D50(v238[i]);
    }
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_unlock(v229 + 6);
  }

  v13 = __base;
LABEL_355:
  if (v15)
  {
    sub_10003FB5C(v15, 8 * v11[10]);
  }

  if (v13)
  {
    sub_10003FB5C(v13, 16 * v11[10]);
  }

  sub_100046D50(v229);
LABEL_360:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v9;
}