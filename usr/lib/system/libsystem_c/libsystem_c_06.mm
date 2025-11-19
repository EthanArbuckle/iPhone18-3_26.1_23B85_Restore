int sync_volume_np(const char *a1, int a2)
{
  v7 = a2 & 3;
  v3 = *__error();
  v4 = fsctl(a1, 0x80044101uLL, &v7, 0);
  v5 = 0;
  if (v4 == -1)
  {
    v5 = *__error();
  }

  *__error() = v3;
  return v5;
}

int fsync_volume_np(int a1, int a2)
{
  v7 = a2 & 3;
  v3 = *__error();
  v4 = ffsctl(a1, 0x80004101uLL, &v7, 0);
  v5 = 0;
  if (v4 == -1)
  {
    v5 = *__error();
  }

  *__error() = v3;
  return v5;
}

void *libc_set_introspection_hooks(void *result, void *a2, unint64_t a3)
{
  if (a3 <= 7)
  {
    libc_set_introspection_hooks_cold_4();
  }

  v5 = result;
  if (a2)
  {
    if (a3 <= 0x27)
    {
      libc_set_introspection_hooks_cold_1();
    }

    if (a3 != 40)
    {
      MEMORY[0x193AD5FD0](a2 + 200, a3 - 40);
    }

    result = __copy_assignment_8_8_t0w8_pa0_28660_8_pa0_36689_16_pa0_31171_24_pa0_29245_32(a2, &libc_hooks);
  }

  if (v5)
  {
    if (!*v5)
    {
      libc_set_introspection_hooks_cold_3();
    }

    if (a3 <= 0x27)
    {
      libc_set_introspection_hooks_cold_2();
    }

    result = __copy_assignment_8_8_t0w8_pa0_28660_8_pa0_36689_16_pa0_31171_24_pa0_29245_32(&libc_hooks, v5);
    libc_hooks = 1;
  }

  return result;
}

void *__copy_assignment_8_8_t0w8_pa0_28660_8_pa0_36689_16_pa0_31171_24_pa0_29245_32(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  return result;
}

uint64_t _os_crash_msg(uint64_t a1)
{
  if (a1)
  {
    qword_1EAC9CAC0 = a1;
    if (_os_crash_callback)
    {
      _os_crash_callback();
    }
  }

  v1 = abort_with_payload();
  return _os_crash_fmt(v1);
}

void *_os_crash_fmt(uint64_t a1)
{
  v1 = *(a1 + 40);
  qword_1EAC9CAC0 = v1;
  if (_os_crash_callback)
  {
    _os_crash_callback(v1);
  }

  result = dlopen("libsystem_trace.dylib", 17);
  if (result)
  {
    _os_crash_fmt_cold_1();
  }

  return result;
}

uint64_t gethostid(void)
{
  v3 = 0;
  *v5 = 0xB00000001;
  v4 = 4;
  v0 = sysctl(v5, 2u, &v3, &v4, 0, 0);
  v1 = v3;
  if (v0 == -1)
  {
    return -1;
  }

  return v1;
}

char *__cdecl getwd(char *a1)
{
  v2 = getcwd(a1, 0x400uLL);
  if (!v2)
  {
    v3 = __error();
    strerror_r(*v3, a1, 0x400uLL);
  }

  return v2;
}

void sethostid(uint64_t a1)
{
  v1 = a1;
  *v2 = 0xB00000001;
  sysctl(v2, 2u, 0, 0, &v1, 8uLL);
}

pid_t setpgrp(void)
{
  v0 = getpgrp();
  v1 = getpid();
  v2 = v1;
  if (v0 != v1)
  {
    setpgid(v1, v1);
  }

  return v2;
}

uint64_t __bt_close(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 32);
  if (v3)
  {
    mpool_put(*v2, v3, 0);
    *(v2 + 32) = 0;
  }

  result = __bt_sync(a1, 0);
  if (result != -1)
  {
    result = mpool_close(*v2);
    if (result != -1)
    {
      v5 = *(v2 + 48);
      if (v5)
      {
        free(v5);
        *(v2 + 48) = 0;
        *(v2 + 56) = 0;
      }

      v6 = *(v2 + 480);
      if (v6)
      {
        free(v6);
        *(v2 + 480) = 0;
        *(v2 + 488) = 0;
      }

      v7 = *(v2 + 496);
      if (v7)
      {
        free(v7);
      }

      free(v2);
      free(a1);
      if (close_NOCANCEL())
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t __bt_sync(uint64_t a1, int a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  if (v4)
  {
    mpool_put(*v3, v4, 0);
    *(v3 + 32) = 0;
  }

  if (a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v6 = *(v3 + 636);
  if ((v6 & 0x15) != 4)
  {
    return 0;
  }

  if ((v6 & 2) != 0)
  {
    v7 = mpool_get(*v3, 0, 0);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = *(v3 + 520);
    v9 = *(v3 + 516);
    v10 = *(v3 + 616);
    v11 = *(v3 + 636) & 0xA0;
    *v7 = 0x300053162;
    v7[2] = v8;
    v7[3] = v9;
    v7[4] = v10;
    v7[5] = v11;
    mpool_put(*v3, v7, 1u);
  }

  result = mpool_sync(*v3);
  if (!result)
  {
    *(v3 + 636) &= ~4u;
  }

  return result;
}

unsigned int *__bt_pgin(unsigned int *result, int a2, uint64_t a3)
{
  if ((result[159] & 8) != 0)
  {
    if (a2)
    {
      v3 = bswap32(*(a3 + 4));
      *a3 = bswap32(*a3);
      *(a3 + 4) = v3;
      v4 = bswap32(*(a3 + 12));
      *(a3 + 8) = bswap32(*(a3 + 8));
      *(a3 + 12) = v4;
      v5 = bswap32(*(a3 + 16)) >> 16;
      *(a3 + 16) = v5;
      *(a3 + 18) = bswap32(*(a3 + 18)) >> 16;
      v6 = v5 + 131052;
      v7 = v4 & 0x1F;
      if (v7 == 1)
      {
        v18 = (v6 >> 1);
        if (v18)
        {
          v19 = (a3 + 20);
          do
          {
            v20 = bswap32(*v19) >> 16;
            *v19++ = v20;
            v21 = a3 + v20;
            v22 = bswap32(*(v21 + 4));
            *v21 = bswap32(*v21);
            *(v21 + 4) = v22;
            if ((*(v21 + 8) & 2) != 0)
            {
              *(v21 + 9) = bswap32(*(v21 + 9));
              *(v21 + 13) = bswap32(*(v21 + 13));
            }

            --v18;
          }

          while (v18);
        }
      }

      else
      {
        v8 = (v6 >> 1);
        if (v7 == 2 && v8 != 0)
        {
          v10 = (a3 + 20);
          do
          {
            v11 = bswap32(*v10) >> 16;
            *v10++ = v11;
            v12 = a3 + v11;
            v13 = bswap32(*(v12 + 4));
            *v12 = bswap32(*v12);
            *(v12 + 4) = v13;
            v14 = *(v12 + 8);
            if ((v14 & 3) != 0)
            {
              if ((*(v12 + 8) & 2) == 0)
              {
                v15 = 9;
                if ((*(v12 + 8) & 1) == 0)
                {
                  goto LABEL_15;
                }

LABEL_14:
                v16 = v12 + v15;
                v17 = bswap32(*(v16 + 8));
                *(v16 + 4) = bswap32(*(v16 + 4));
                *(v16 + 8) = v17;
                goto LABEL_15;
              }

              *(v12 + 9) = bswap32(*(v12 + 9));
              *(v12 + 13) = bswap32(*(v12 + 13));
              v15 = 13;
              if (v14)
              {
                goto LABEL_14;
              }
            }

LABEL_15:
            --v8;
          }

          while (v8);
        }
      }
    }

    else
    {
      return mswap(a3);
    }
  }

  return result;
}

unsigned int *mswap(unsigned int *result)
{
  v1 = bswap32(result[1]);
  *result = bswap32(*result);
  result[1] = v1;
  v2 = bswap32(result[3]);
  result[2] = bswap32(result[2]);
  result[3] = v2;
  v3 = bswap32(result[5]);
  result[4] = bswap32(result[4]);
  result[5] = v3;
  return result;
}

unsigned int *__bt_pgout(unsigned int *result, int a2, uint64_t a3)
{
  if ((result[159] & 8) != 0)
  {
    if (a2)
    {
      v3 = *(a3 + 16) + 131052;
      if ((*(a3 + 12) & 0x1F) == 1)
      {
        v13 = (v3 >> 1);
        if (v13)
        {
          v14 = (a3 + 20);
          do
          {
            v15 = a3 + *v14;
            v16 = bswap32(*(v15 + 4));
            *v15 = bswap32(*v15);
            *(v15 + 4) = v16;
            if ((*(v15 + 8) & 2) != 0)
            {
              *(v15 + 9) = bswap32(*(v15 + 9));
              *(v15 + 13) = bswap32(*(v15 + 13));
            }

            *v14 = bswap32(*v14) >> 16;
            ++v14;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        v4 = (v3 >> 1);
        if ((*(a3 + 12) & 0x1F) == 2 && v4 != 0)
        {
          v6 = (a3 + 20);
          do
          {
            v7 = a3 + *v6;
            v8 = bswap32(*(v7 + 4));
            *v7 = bswap32(*v7);
            *(v7 + 4) = v8;
            v9 = *(v7 + 8);
            if ((v9 & 3) != 0)
            {
              if ((*(v7 + 8) & 2) == 0)
              {
                v10 = 9;
                if ((*(v7 + 8) & 1) == 0)
                {
                  goto LABEL_15;
                }

LABEL_14:
                v11 = v7 + v10;
                v12 = bswap32(*(v11 + 8));
                *(v11 + 4) = bswap32(*(v11 + 4));
                *(v11 + 8) = v12;
                goto LABEL_15;
              }

              *(v7 + 9) = bswap32(*(v7 + 9));
              *(v7 + 13) = bswap32(*(v7 + 13));
              v10 = 13;
              if (v9)
              {
                goto LABEL_14;
              }
            }

LABEL_15:
            *v6 = bswap32(*v6) >> 16;
            ++v6;
            --v4;
          }

          while (v4);
        }
      }

      v17 = bswap32(*(a3 + 4));
      *a3 = bswap32(*a3);
      *(a3 + 4) = v17;
      v18 = bswap32(*(a3 + 12));
      *(a3 + 8) = bswap32(*(a3 + 8));
      *(a3 + 12) = v18;
      *(a3 + 16) = bswap32(*(a3 + 16)) >> 16;
      *(a3 + 18) = bswap32(*(a3 + 18)) >> 16;
    }

    else
    {
      return mswap(a3);
    }
  }

  return result;
}

uint64_t __bt_delete(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(v5 + 32);
  if (v6)
  {
    mpool_put(*v5, v6, 0);
    *(v5 + 32) = 0;
  }

  if ((*(v5 + 636) & 0x10) != 0)
  {
    v17 = __error();
    v18 = 1;
LABEL_30:
    *v17 = v18;
    return 0xFFFFFFFFLL;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      v28 = 0;
      v7 = __bt_search(v5, a2, &v28);
      if (!v7)
      {
        return 0xFFFFFFFFLL;
      }

      v8 = v7;
      if (v28)
      {
        while (2)
        {
          v9 = *v8;
          while (1)
          {
            if (__bt_dleaf(v5, a2, v9, *(v8 + 4)))
            {
LABEL_39:
              mpool_put(*v5, v9, 0);
              return 0xFFFFFFFFLL;
            }

            if ((*(v5 + 636) & 0x20) != 0)
            {
              if ((v9[4] & 0xFFFE) == 0x14)
              {
                if (__bt_pdelete(v5, v9))
                {
                  return 0xFFFFFFFFLL;
                }
              }

              else
              {
                mpool_put(*v5, v9, 1u);
              }

              goto LABEL_41;
            }

            v10 = *(v8 + 4);
            v11 = *(v9 + 8);
            v12 = (v11 - 20) >> 1;
            if (v12 <= v10)
            {
              break;
            }

            if (__bt_cmp(v5, a2, v8))
            {
              v10 = *(v8 + 4);
              v11 = *(v9 + 8);
              v12 = (v11 - 20) >> 1;
              break;
            }
          }

          v13 = v12 == v10;
          *(v8 + 4) = v10 - 1;
          if (v10)
          {
            while (!__bt_cmp(v5, a2, v8))
            {
              if (__bt_dleaf(v5, a2, v9, *(v8 + 4)) == -1)
              {
                goto LABEL_39;
              }

              v14 = *(v8 + 4);
              *(v8 + 4) = v14 - 1;
              if (!v14)
              {
                v13 = 1;
                break;
              }
            }

            LOWORD(v11) = *(v9 + 8);
          }

          if ((v11 & 0xFFFE) == 0x14)
          {
            if (__bt_pdelete(v5, v9))
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            mpool_put(*v5, v9, 1u);
            if (!v13)
            {
              goto LABEL_41;
            }
          }

          v15 = __bt_search(v5, a2, &v28);
          if (!v15)
          {
            goto LABEL_41;
          }

          v8 = v15;
          if (v28)
          {
            continue;
          }

          break;
        }

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v20 = *v5;
      v21 = *v8;
      v22 = 0;
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  if ((*(v5 + 68) & 8) == 0)
  {
LABEL_29:
    v17 = __error();
    v18 = 22;
    goto LABEL_30;
  }

  if ((*(v5 + 68) & 7) != 0)
  {
    return 1;
  }

  v23 = mpool_get(*v5, *(v5 + 40), 0);
  v27 = v23;
  if (!v23)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = v23;
  if ((v23[4] & 0xFFFE) == 0x16)
  {
    if (__bt_stkacq(v5, &v27, (v5 + 40)))
    {
      return 0xFFFFFFFFLL;
    }

    v24 = v27;
  }

  v25 = __bt_dleaf(v5, 0, v24, *(v5 + 44));
  if ((v24[4] & 0xFFFE) == 0x14 && v25 == 0)
  {
    if (!__bt_pdelete(v5, v24))
    {
      goto LABEL_41;
    }

    return 0xFFFFFFFFLL;
  }

  v16 = v25;
  v22 = v25 == 0;
  v20 = *v5;
  v21 = v24;
LABEL_37:
  mpool_put(v20, v21, v22);
  if (!v16)
  {
LABEL_41:
    v16 = 0;
    *(v5 + 636) |= 4u;
  }

  return v16;
}

BOOL __bt_stkacq(uint64_t a1, void **a2, pgno_t *a3)
{
  v34 = 0;
  mpool_put(*a1, *a2, 0);
  v6 = __bt_search(a1, (a3 + 2), &v34);
  if (!v6)
  {
    return 1;
  }

  v7 = *v6;
  if (**v6 != *a3)
  {
    v10 = 0;
    v11 = a1 + 72;
    while (*v7 != *a3)
    {
      v12 = v7[2];
      mpool_put(*a1, v7, 0);
      if (!v12)
      {
        v22 = __bt_search(a1, (a3 + 2), &v34);
        if (!v22)
        {
          return 1;
        }

        v7 = *v22;
        LOWORD(v23) = v10;
        while (*v7 != *a3)
        {
          v24 = v7[1];
          if (!v24)
          {
            break;
          }

          mpool_put(*a1, v7, 0);
          v25 = *(a1 + 472);
          if (v25 != v11)
          {
            v26 = 0;
            while (1)
            {
              v27 = *(v25 - 8);
              *(a1 + 472) = v25 - 8;
              v28 = mpool_get(*a1, v27, 0);
              if (!v28)
              {
                return 1;
              }

              v7 = v28;
              v29 = *(v25 - 4);
              if (v29)
              {
                LOWORD(v23) = v29 - 1;
                v30 = *(a1 + 472);
                *v30 = *v28;
                *(v30 + 4) = v29 - 1;
                *(a1 + 472) = v30 + 8;
                if (v26)
                {
                  goto LABEL_32;
                }

                break;
              }

              mpool_put(*a1, v28, 0);
              ++v26;
              v25 = *(a1 + 472);
              if (v25 == v11)
              {
LABEL_32:
                while (1)
                {
                  v31 = *(v7 + *(v7 + v23 + 10) + 4);
                  mpool_put(*a1, v7, 0);
                  v32 = mpool_get(*a1, v31, 0);
                  if (!v32)
                  {
                    return 1;
                  }

                  v7 = v32;
                  v23 = ((*(v32 + 8) + 131052) >> 1) - 1;
                  v33 = *(a1 + 472);
                  *v33 = v31;
                  *(v33 + 4) = v23;
                  *(a1 + 472) = v33 + 8;
                  if (!--v26)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }
          }

LABEL_34:
          mpool_put(*a1, v7, 0);
          v7 = mpool_get(*a1, v24, 0);
          result = 1;
          if (!v7)
          {
            return result;
          }
        }

        break;
      }

      v13 = *(a1 + 472);
      if (v13 != v11)
      {
        v14 = 0;
        while (1)
        {
          v15 = *(v13 - 8);
          *(a1 + 472) = v13 - 8;
          v16 = mpool_get(*a1, v15, 0);
          if (!v16)
          {
            return 1;
          }

          v7 = v16;
          v17 = *(v13 - 4);
          if (((*(v16 + 8) - 20) >> 1) - 1 != v17)
          {
            v10 = v17 + 1;
            v18 = *(a1 + 472);
            *v18 = *v16;
            *(v18 + 4) = v17 + 1;
            *(a1 + 472) = v18 + 8;
            goto LABEL_15;
          }

          mpool_put(*a1, v16, 0);
          ++v14;
          v13 = *(a1 + 472);
          if (v13 == v11)
          {
            goto LABEL_15;
          }
        }
      }

      v14 = 0;
LABEL_15:
      v19 = v14 + 1;
      while (--v19)
      {
        v20 = *(v7 + *(v7 + v10 + 10) + 4);
        v21 = *(a1 + 472);
        *v21 = v20;
        *(v21 + 4) = 0;
        *(a1 + 472) = v21 + 8;
        mpool_put(*a1, v7, 0);
        v7 = mpool_get(*a1, v20, 0);
        v10 = 0;
        if (!v7)
        {
          return 1;
        }
      }

      mpool_put(*a1, v7, 0);
      v7 = mpool_get(*a1, v12, 0);
      result = 1;
      if (!v7)
      {
        return result;
      }
    }
  }

  mpool_put(*a1, v7, 0);
  v8 = mpool_get(*a1, *a3, 0);
  *a2 = v8;
  return v8 == 0;
}

uint64_t __bt_dleaf(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v7 = *(a1 + 68);
  if ((v7 & 9) == 8 && *(a1 + 40) == *a3 && *(a1 + 44) == a4)
  {
    v32 = 0;
    v33 = 0;
    *(a1 + 68) = v7 & 0xF8;
    if ((*(a1 + 636) & 0x20) != 0)
    {
      v32 = a3;
      LOWORD(v33) = a4;
      goto LABEL_19;
    }

    v9 = a2;
    if (!a2)
    {
      v32 = a3;
      LOWORD(v33) = a4;
      v9 = a1 + 48;
      if (__bt_ret(a1, &v32, (a1 + 48), a1 + 48, 0, 0, 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (a4 && (v32 = a3, LOWORD(v33) = a4 - 1, !__bt_cmp(a1, v9, &v32)))
    {
      v14 = *(a1 + 68) | 4;
    }

    else
    {
      if (((*(a3 + 8) - 20) >> 1) - 1 <= a4 || (v32 = a3, LOWORD(v33) = a4 + 1, __bt_cmp(a1, v9, &v32)))
      {
        if (!a4)
        {
          v15 = a3[1];
          if (v15)
          {
            v16 = mpool_get(*a1, v15, 0);
            if (!v16)
            {
              return 0xFFFFFFFFLL;
            }

            v12 = v16;
            v32 = v16;
            LOWORD(v33) = ((*(v16 + 8) + 131052) >> 1) - 1;
            if (!__bt_cmp(a1, v9, &v32))
            {
              v31 = 4;
LABEL_56:
              *(a1 + 68) |= v31;
              mpool_put(*a1, v12, 0);
              goto LABEL_30;
            }

            mpool_put(*a1, v12, 0);
          }
        }

        if (((*(a3 + 8) - 20) >> 1) - 1 != a4 || (v10 = a3[2]) == 0)
        {
LABEL_16:
          v32 = a3;
          LOWORD(v33) = a4;
          if (!a2)
          {
            goto LABEL_20;
          }

LABEL_19:
          if (!__bt_ret(a1, &v32, (a1 + 48), a1 + 48, 0, 0, 1))
          {
LABEL_20:
            *(a1 + 68) |= 1u;
            goto LABEL_31;
          }

          return 0xFFFFFFFFLL;
        }

        v11 = mpool_get(*a1, v10, 0);
        if (!v11)
        {
          return 0xFFFFFFFFLL;
        }

        v12 = v11;
        v32 = v11;
        LOWORD(v33) = 0;
        if (__bt_cmp(a1, v9, &v32))
        {
          mpool_put(*a1, v12, 0);
          goto LABEL_16;
        }

        v31 = 2;
        goto LABEL_56;
      }

      v14 = *(a1 + 68) | 2;
    }

    *(a1 + 68) = v14;
LABEL_30:
    *(a1 + 40) = *v32;
    *(a1 + 44) = v33;
  }

LABEL_31:
  v17 = a3 + 5;
  v18 = *(a3 + a4 + 10);
  v19 = (a3 + v18);
  v20 = *(a3 + v18 + 8);
  if ((v20 & 2) != 0)
  {
    result = __ovfl_delete(a1, (v19 + 9));
    if (result == -1)
    {
      return result;
    }

    v20 = *(v19 + 8);
  }

  if ((v20 & 1) == 0 || (result = __ovfl_delete(a1, (v19 + *v19 + 9)), result != -1))
  {
    v21 = (*(a3 + v18) + v19[1] + 12) & 0xFFFFFFFC;
    j__mkostemp(a3 + *(a3 + 9) + v21, a3 + *(a3 + 9));
    *(a3 + 9) += v21;
    v22 = v17[a4];
    if (a4)
    {
      v23 = a4;
      do
      {
        v24 = *v17;
        if (v24 < v22)
        {
          *v17 = v24 + v21;
        }

        --v23;
        ++v17;
      }

      while (v23);
    }

    v25 = *(a3 + 8);
    v26 = ~a4 + ((v25 + 131052) >> 1);
    if (~a4 + ((v25 + 131052) >> 1))
    {
      v27 = v17 + 1;
      do
      {
        v28 = *v27;
        if (v28 >= v22)
        {
          v29 = 0;
        }

        else
        {
          v29 = v21;
        }

        *(v27 - 1) = v29 + v28;
        --v26;
        ++v27;
      }

      while (v26);
      LOWORD(v25) = *(a3 + 8);
    }

    *(a3 + 8) = v25 - 2;
    if ((*(a1 + 68) & 9) == 8 && *(a1 + 40) == *a3 && (v30 = *(a1 + 44), v30 > a4))
    {
      result = 0;
      *(a1 + 44) = v30 - 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __bt_pdelete(uint64_t a1, _DWORD *a2)
{
  v4 = a1 + 72;
  while (1)
  {
    v5 = *(a1 + 472);
    if (v5 == v4)
    {
      break;
    }

    v6 = *(v5 - 8);
    *(a1 + 472) = v5 - 8;
    v7 = mpool_get(*a1, v6, 0);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = v7;
    v9 = *(v5 - 4);
    v10 = v7 + 20;
    v11 = *&v7[2 * v9 + 20];
    if ((v7[v11 + 8] & 2) != 0 && __ovfl_delete(a1, &v7[v11 + 9]) == -1)
    {
      mpool_put(*a1, v8, 0);
      return 0xFFFFFFFFLL;
    }

    if ((v8[4] & 0xFFFE) != 0x16)
    {
      v12 = (*(v8 + v11) & 0xFFFFFFFC) + 12;
      j__mkostemp(v8 + *(v8 + 9) + v12, v8 + *(v8 + 9));
      *(v8 + 9) += v12;
      v13 = v10[v9];
      if (v9)
      {
        v14 = v9;
        do
        {
          v15 = *v10;
          if (v15 < v13)
          {
            *v10 = v15 + v12;
          }

          --v14;
          ++v10;
        }

        while (v14);
      }

      v16 = *(v8 + 8);
      v17 = ~v9 + ((v16 + 131052) >> 1);
      if (~v9 + ((v16 + 131052) >> 1))
      {
        v18 = v10 + 1;
        do
        {
          v19 = *v18;
          if (v19 >= v13)
          {
            v20 = 0;
          }

          else
          {
            v20 = v12;
          }

          *(v18 - 1) = v20 + v19;
          --v17;
          ++v18;
        }

        while (v17);
        LOWORD(v16) = *(v8 + 8);
      }

      *(v8 + 8) = v16 - 2;
      goto LABEL_25;
    }

    if (*v8 == 1)
    {
      *(v8 + 8) = 20;
      *(v8 + 9) = *(a1 + 520);
      v8[3] = 2;
LABEL_25:
      mpool_put(*a1, v8, 1u);
      break;
    }

    if (__bt_relink(a1, v8) || __bt_free(a1, v8))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*a2 == 1)
  {
    mpool_put(*a1, a2, 1u);
    return 0;
  }

  else
  {
    return __bt_relink(a1, a2) || __bt_free(a1, a2) != 0;
  }
}

uint64_t __bt_relink(MPOOL **a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = mpool_get(*a1, v4, 0);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    v5[1] = *(a2 + 4);
    mpool_put(*a1, v5, 1u);
  }

  v6 = *(a2 + 4);
  if (!v6)
  {
    return 0;
  }

  v7 = mpool_get(*a1, v6, 0);
  if (v7)
  {
    v7[2] = *(a2 + 8);
    mpool_put(*a1, v7, 1u);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t __bt_get(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = *(a1 + 56);
  v8 = *(v7 + 32);
  if (v8)
  {
    mpool_put(*v7, v8, 0);
    *(v7 + 32) = 0;
  }

  v13 = 0;
  if (a4)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v11 = __bt_search(v7, a2, &v13);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  if (v13)
  {
    v9 = __bt_ret(v7, v11, 0, 0, a3, (v7 + 496), 0);
    if ((*(v7 + 637) & 0x40) != 0)
    {
      mpool_put(*v7, *v12, 0);
    }

    else
    {
      *(v7 + 32) = *v12;
    }
  }

  else
  {
    mpool_put(*v7, *v11, 0);
    return 1;
  }

  return v9;
}

MPOOL *__bt_open(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, int a5)
{
  memset(&v35, 0, sizeof(v35));
  v7 = __bt_defpfx;
  if (a4)
  {
    v8 = *a4;
    if (*a4 > 1)
    {
LABEL_30:
      v12 = 0;
      goto LABEL_31;
    }

    v10 = *(a4 + 4);
    v9 = *(a4 + 5);
    v11 = *(a4 + 10);
    if (v9)
    {
      v12 = 0;
      if (v9 - 512 > 0xFE00 || (v9 & 1) != 0)
      {
        goto LABEL_31;
      }
    }

    if (v10)
    {
      if (v10 < 2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v10 = 2;
    }

    if (*(a4 + 3) == 0)
    {
      v7 = __bt_defpfx;
    }

    else
    {
      v7 = a4[4];
    }

    if (a4[3])
    {
      v13 = a4[3];
    }

    else
    {
      v13 = __bt_defcmp;
    }

    if (v11)
    {
      if (v11 != 4321 && v11 != 1234)
      {
        goto LABEL_30;
      }

      v33 = a5;
      v34 = *(a4 + 2);
    }

    else
    {
      v33 = a5;
      v34 = *(a4 + 2);
      v11 = 1234;
    }
  }

  else
  {
    v13 = __bt_defcmp;
    v33 = a5;
    v34 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 1234;
    v10 = 2;
  }

  v14 = malloc_type_calloc(1uLL, 0x280uLL, 0x10B004045B545B8uLL);
  if (!v14)
  {
    v18 = *__error();
LABEL_86:
    v16 = 0;
    *__error() = v18;
    return v16;
  }

  v12 = v14;
  *(v14 + 128) = -1;
  *(v14 + 132) = v11;
  *(v14 + 133) = 0;
  v14[68] = v13;
  v14[69] = v7;
  *(v14 + 144) = -1;
  v15 = malloc_type_calloc(1uLL, 0x48uLL, 0x10800406ECF7772uLL);
  v12[1] = v15;
  if (!v15)
  {
    goto LABEL_80;
  }

  v16 = v15;
  if (*(v12 + 132) != 1234)
  {
    *(v12 + 159) |= 8u;
  }

  LODWORD(v15->lqh.tqh_first) = 0;
  v15->lqh.tqh_last = __bt_close;
  v15->hqh[0].tqh_first = __bt_delete;
  v15->hqh[2].tqh_last = v12;
  v15->hqh[3].tqh_first = __bt_fd;
  v15->hqh[0].tqh_last = __bt_get;
  v15->hqh[1].tqh_first = __bt_put;
  v15->hqh[1].tqh_last = __bt_seq;
  v15->hqh[2].tqh_first = __bt_sync;
  v17 = a2 & 3;
  if (!a1)
  {
    if (v17 == 2)
    {
      if (issetugid())
      {
        v19 = 0;
      }

      else
      {
        v19 = getenv("TMPDIR");
      }

      v36 = 0;
      v21 = "/tmp";
      if (v19)
      {
        v21 = v19;
      }

      if (snprintf(__str, 0x400uLL, "%s/bt.XXXXXXXXXX", v21) < 0x400)
      {
        v37 = -1;
        sigprocmask(1, &v37, &v36);
        v22 = mkstemp(__str);
        if (v22 != -1)
        {
          v23 = v22;
          unlink(__str);
          sigprocmask(3, &v36, 0);
          *(v12 + 128) = v23;
          *(v12 + 159) |= 1u;
          goto LABEL_47;
        }

        sigprocmask(3, &v36, 0);
        *(v12 + 128) = -1;
      }

      else
      {
        *__error() = 63;
        *(v12 + 128) = -1;
      }

LABEL_80:
      v18 = *__error();
      goto LABEL_81;
    }

    goto LABEL_31;
  }

  if ((a2 & 3u) > 1)
  {
    if (v17 == 2)
    {
      goto LABEL_37;
    }

LABEL_31:
    *__error() = 22;
    v18 = *__error();
    if (!v12)
    {
      goto LABEL_86;
    }

LABEL_81:
    v31 = v12[1];
    if (v31)
    {
      free(v31);
    }

    if (*(v12 + 128) != -1)
    {
      close_NOCANCEL();
    }

    free(v12);
    goto LABEL_86;
  }

  if ((a2 & 3) != 0)
  {
    goto LABEL_31;
  }

  *(v12 + 159) |= 0x10u;
LABEL_37:
  v20 = open_NOCANCEL();
  *(v12 + 128) = v20;
  if (v20 < 0)
  {
    goto LABEL_80;
  }

LABEL_47:
  if (fcntl_NOCANCEL() == -1 || fstat(*(v12 + 128), &v35))
  {
    goto LABEL_80;
  }

  if (v35.st_size)
  {
    NOCANCEL = read_NOCANCEL();
    if ((NOCANCEL & 0x8000000000000000) == 0)
    {
      if (NOCANCEL == 24)
      {
        *(v12 + 159) |= 8u;
      }

      *__error() = 79;
    }

    goto LABEL_80;
  }

  if (!v9)
  {
    st_blksize = v35.st_blksize;
    if (v35.st_blksize <= 0x200u)
    {
      st_blksize = 512;
    }

    if (st_blksize >= 0x10000)
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = st_blksize;
    }
  }

  v26 = *(v12 + 159);
  if (!v8)
  {
    v26 |= 0x20u;
  }

  *(v12 + 129) = 0;
  *(v12 + 154) = 0;
  *(v12 + 159) = v26 | 2;
  *(v12 + 130) = v9;
  if (((v9 - 1) & v34) != 0)
  {
    v27 = ((v9 - 1) | v34) + 1;
  }

  else
  {
    v27 = v34;
  }

  if (!v34)
  {
    v27 = 0;
  }

  if (v27 <= 5 * v9)
  {
    v27 = 5 * v9;
  }

  v28 = v9 - 1 + v27;
  v29 = ((v9 - 20) / v10 - 14);
  if (v29 <= 0x1E)
  {
    LOWORD(v29) = 30;
  }

  *(v12 + 262) = v29;
  v30 = mpool_open(0, *(v12 + 128), v9, v28 / v9);
  *v12 = v30;
  if (!v30)
  {
    goto LABEL_80;
  }

  if ((*(v12 + 636) & 1) == 0)
  {
    mpool_filter(v30, __bt_pgin, __bt_pgout, v12);
  }

  if (nroot(v12) == -1)
  {
    goto LABEL_80;
  }

  if ((v33 & 0x20000000) == 0)
  {
    if ((v33 & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_89:
    *(v12 + 159) |= 0x8000u;
    if ((v33 & 0x80000000) == 0)
    {
      return v16;
    }

LABEL_90:
    *(v12 + 159) |= 0x10000u;
    return v16;
  }

  *(v12 + 159) |= 0x4000u;
  if ((v33 & 0x40000000) != 0)
  {
    goto LABEL_89;
  }

LABEL_77:
  if (v33 < 0)
  {
    goto LABEL_90;
  }

  return v16;
}

uint64_t __bt_fd(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 32);
  if (v2)
  {
    mpool_put(*v1, v2, 0);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 636) & 1) == 0)
  {
    return *(v1 + 512);
  }

  *__error() = 2;
  return 0xFFFFFFFFLL;
}

uint64_t nroot(uint64_t a1)
{
  v2 = mpool_get(*a1, 0, 0);
  if (v2)
  {
    v3 = v2;
    v4 = *a1;
    v5 = 0;
LABEL_3:
    mpool_put(v4, v3, v5);
    return 0;
  }

  v10 = 0;
  if (*__error() != 22)
  {
    return 0xFFFFFFFFLL;
  }

  *__error() = 0;
  v7 = mpool_new(*a1, &v10);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = mpool_new(*a1, &v10);
  result = 0xFFFFFFFFLL;
  if (v9 && v10 == 1)
  {
    v9[1] = 0x200000000;
    *v9 = 1;
    *(v9 + 8) = 20;
    *(v9 + 9) = *(a1 + 520);
    MEMORY[0x193AD5FD0](v8);
    mpool_put(*a1, v8, 1u);
    v4 = *a1;
    v3 = v9;
    v5 = 1;
    goto LABEL_3;
  }

  return result;
}

uint64_t __ovfl_get(uint64_t a1, pgno_t *a2, size_t *a3, void **a4, size_t *a5)
{
  v7 = *a2;
  v6 = a2[1];
  *a3 = v6;
  v8 = *a4;
  if (*a5 < v6)
  {
    v11 = reallocf(*a4, v6);
    *a4 = v11;
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = v11;
    *a5 = v6;
  }

  v12 = *(a1 + 520);
  v13 = mpool_get(*a1, v7, 0);
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v13;
  v15 = v12 - 20;
  while (1)
  {
    v16 = v15 >= v6 ? v6 : v15;
    j__mkostemp(v8, v14 + 20);
    mpool_put(*a1, v14, 0);
    LODWORD(v6) = v6 - v16;
    if (!v6)
    {
      break;
    }

    v8 += v16;
    v14 = mpool_get(*a1, v14[2], 0);
    if (!v14)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t __ovfl_put(uint64_t a1, uint64_t *a2, pgno_t *a3)
{
  v15 = 0;
  v5 = *(a1 + 520);
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = __bt_new(a1, &v15);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  v10 = v5 - 20;
  while (1)
  {
    v11 = v8;
    v12 = v15;
    v8[1] = 0;
    v8[2] = 0;
    *v8 = v12;
    *(v8 + 3) = 4;
    v13 = v7;
    if (v7 >= v10)
    {
      v7 = v10;
    }

    j__mkostemp(v8 + 20, v6);
    if (v9)
    {
      v9[2] = v12;
      mpool_put(*a1, v9, 1u);
    }

    else
    {
      *a3 = v12;
    }

    v7 = v13 - v7;
    if (!v7)
    {
      break;
    }

    LODWORD(v6) = v6 + v10;
    v8 = __bt_new(a1, &v15);
    v9 = v11;
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  mpool_put(*a1, v11, 1u);
  return 0;
}

uint64_t __ovfl_delete(uint64_t a1, pgno_t *a2)
{
  v3 = a2[1];
  v4 = mpool_get(*a1, *a2, 0);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v4[3] & 0x20) != 0)
  {
    mpool_put(*a1, v4, 0);
  }

  else
  {
    v5 = *(a1 + 520);
    v6 = v5 - 20;
    v7 = v4[2];
    __bt_free(a1, v4);
    if (v5 - 20 < v3)
    {
      v8 = v3 - v5 + 20;
      v9 = 20 - v5;
      while (1)
      {
        v10 = mpool_get(*a1, v7, 0);
        if (!v10)
        {
          break;
        }

        v7 = v10[2];
        __bt_free(a1, v10);
        v11 = v6 >= v8;
        v8 += v9;
        if (v11)
        {
          return 0;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t __bt_free(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 516);
  a2[1] = 0;
  a2[2] = v2;
  *(a1 + 516) = *a2;
  *(a1 + 636) |= 2u;
  return mpool_put(*a1, a2, 1u);
}

_DWORD *__bt_new(uint64_t a1, pgno_t *a2)
{
  v4 = *(a1 + 516);
  if (v4 && (result = mpool_get(*a1, v4, 0)) != 0)
  {
    *a2 = *(a1 + 516);
    *(a1 + 516) = result[2];
    *(a1 + 636) |= 2u;
  }

  else
  {
    v6 = *a1;

    return mpool_new(v6, a2);
  }

  return result;
}

uint64_t __bt_put(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v7 = *(a1 + 56);
  v8 = *(v7 + 32);
  if (v8)
  {
    mpool_put(*v7, v8, 0);
    *(v7 + 32) = 0;
  }

  v40 = 0;
  if ((*(v7 + 636) & 0x10) != 0)
  {
    v14 = __error();
    v15 = 1;
LABEL_13:
    *v14 = v15;
    return 0xFFFFFFFFLL;
  }

  if (a4 && a4 != 8 && (a4 != 1 || (*(v7 + 68) & 0xF) != 8))
  {
    v14 = __error();
    v15 = 22;
    goto LABEL_13;
  }

  v9 = (a2 + 1);
  v10 = a2[1];
  v11 = a3[1];
  v12 = *(v7 + 524);
  if (v11 + v10 <= v12)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = 0;
    if (v10 > v12)
    {
      goto LABEL_17;
    }

    while (1)
    {
      if (v11 + v10 > v12)
      {
        result = __ovfl_put(v7, a3, &v40 + 1);
        if (result == -1)
        {
          return result;
        }

        v11 = 8;
        v41 = v46;
        v42 = 8;
        v18 = a3[1];
        v46[0] = HIDWORD(v40);
        v46[1] = v18;
        v13 |= 1u;
        v10 = *v9;
        v12 = *(v7 + 524);
        a3 = &v41;
      }

      if (v11 + v10 <= v12)
      {
        break;
      }

LABEL_17:
      result = __ovfl_put(v7, a2, &v40 + 1);
      if (result == -1)
      {
        return result;
      }

      v10 = 8;
      v43 = v45;
      v44 = 8;
      v17 = a2[1];
      v45[0] = HIDWORD(v40);
      v45[1] = v17;
      v13 |= 2u;
      v11 = a3[1];
      v12 = *(v7 + 524);
      a2 = &v43;
      v9 = &v44;
    }
  }

  if (a4 == 1)
  {
    v19 = mpool_get(*v7, *(v7 + 40), 0);
    if (v19)
    {
      v20 = v19;
      v21 = *(v7 + 44);
      goto LABEL_26;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(v7 + 532))
  {
    goto LABEL_45;
  }

  v22 = mpool_get(*v7, *(v7 + 536), 0);
  if (!v22)
  {
    *(v7 + 532) = 0;
    goto LABEL_45;
  }

  v23 = v22;
  *(v7 + 16) = v22;
  v24 = (v7 + 16);
  v25 = *(v7 + 540);
  *(v7 + 24) = v25;
  v26 = v22[8];
  if (v22[9] - v26 < ((*(a2 + 2) + *(a3 + 2) + 12) & 0xFFFFFFFC | 2uLL))
  {
    goto LABEL_44;
  }

  if (*(v7 + 532) == 2)
  {
    if (!*(v22 + 2) && ((v26 - 20) >> 1) - 1 == v25)
    {
      v27 = __bt_cmp(v7, a2, (v7 + 16));
      if ((v27 & 0x80000000) == 0)
      {
        v28 = *(v7 + 24);
        if (v27)
        {
          *(v7 + 24) = ++v28;
          v27 = 1;
        }

        goto LABEL_71;
      }
    }

    goto LABEL_44;
  }

  v29 = !*(v22 + 1) && v25 == 0;
  if (!v29 || (v27 = __bt_cmp(v7, a2, (v7 + 16)), v27 >= 1))
  {
LABEL_44:
    *(v7 + 532) = 0;
    mpool_put(*v7, v23, 0);
LABEL_45:
    v24 = __bt_search(v7, a2, &v40);
    if (!v24)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_46;
  }

  v28 = 0;
LABEL_71:
  *(v7 + 540) = v28;
  LODWORD(v40) = v27 == 0;
LABEL_46:
  v20 = *v24;
  v21 = *(v24 + 4);
  if (a4 == 8)
  {
    if (v40)
    {
      mpool_put(*v7, *v24, 0);
      return 1;
    }

    goto LABEL_51;
  }

  if (!v40 || (*(v7 + 636) & 0x20) == 0)
  {
    goto LABEL_51;
  }

LABEL_26:
  if (__bt_dleaf(v7, a2, v20, v21) == -1)
  {
    mpool_put(*v7, v20, 0);
    return 0xFFFFFFFFLL;
  }

LABEL_51:
  v30 = a2[1];
  v31 = a3[1];
  v32 = (v30 + v31 + 12) & 0xFFFFFFFC;
  v33 = *(v20 + 9);
  v34 = *(v20 + 8);
  if ((v33 - v34) >= (v32 | 2uLL))
  {
    if (((v34 + 131052) >> 1) > v21)
    {
      j__mkostemp(v20 + 2 * v21 + 22, v20 + 2 * v21 + 20);
      LOWORD(v34) = *(v20 + 8);
      LOWORD(v33) = *(v20 + 9);
      v30 = a2[1];
      v31 = a3[1];
    }

    *(v20 + 8) = v34 + 2;
    v35 = v33 - v32;
    *(v20 + 9) = v35;
    *(v20 + v21 + 10) = v35;
    v36 = v20 + v35;
    *v36 = v30;
    *(v36 + 1) = v31;
    v36[8] = v13;
    v37 = v36 + 9;
    j__mkostemp(v36 + 9, *a2);
    j__mkostemp(&v37[a2[1]], *a3);
    if ((*(v7 + 68) & 9) == 8 && *(v7 + 40) == *v20)
    {
      v38 = *(v7 + 44);
      if (v38 >= v21)
      {
        *(v7 + 44) = v38 + 1;
      }
    }

    if (*(v7 + 532))
    {
      goto LABEL_68;
    }

    if (v20[2])
    {
      if (v20[1] || v21)
      {
        goto LABEL_68;
      }

      v39 = 1;
    }

    else
    {
      if (((*(v20 + 8) - 20) >> 1) - 1 != v21)
      {
LABEL_68:
        mpool_put(*v7, v20, 1u);
LABEL_69:
        result = 0;
        *(v7 + 636) |= 4u;
        return result;
      }

      v39 = 2;
    }

    *(v7 + 532) = v39;
    *(v7 + 540) = v21;
    *(v7 + 536) = *v20;
    goto LABEL_68;
  }

  result = __bt_split(v7, v20, a2, a3, v13, (v30 + v31 + 12) & 0xFFFC, v21);
  if (!result)
  {
    goto LABEL_69;
  }

  return result;
}

pgno_t **__bt_search(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *(a1 + 472) = a1 + 72;
  v6 = mpool_get(*a1, 1u, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = (a1 + 16);
  while (1)
  {
    *v8 = v7;
    v9 = *(v7 + 8) + 131052;
    if ((v9 & 0x1FFFE) == 0)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      v11 = ((v9 >> 2) & 0x7FFF) + v10;
      *(a1 + 24) = ((v9 >> 2) & 0x7FFF) + v10;
      v12 = __bt_cmp(a1, a2, (a1 + 16));
      if (!v12)
      {
        break;
      }

      v13 = v9 >> 1;
      if (v12 > 0)
      {
        v10 = v11 + 1;
        LOWORD(v13) = (v9 >> 1) - 1;
      }

      v9 = v13;
      if ((v13 & 0xFFFE) == 0)
      {
        goto LABEL_11;
      }
    }

    if ((v7[3] & 2) != 0)
    {
      goto LABEL_31;
    }

LABEL_16:
    v14 = *(a1 + 472);
    *v14 = *v7;
    *(v14 + 4) = v11;
    *(a1 + 472) = v14 + 8;
    v15 = *(v7 + *(v7 + v11 + 10) + 4);
    mpool_put(*a1, v7, 0);
    v7 = mpool_get(*a1, v15, 0);
    if (!v7)
    {
      return 0;
    }
  }

  LOWORD(v10) = 0;
LABEL_11:
  if ((v7[3] & 2) == 0)
  {
    if (v10)
    {
      LOWORD(v11) = v10 - 1;
    }

    else
    {
      LOWORD(v11) = 0;
    }

    goto LABEL_16;
  }

  if ((*(a1 + 636) & 0x20) != 0)
  {
LABEL_25:
    *a3 = 0;
    *(a1 + 24) = v10;
    return v8;
  }

  if (v10 || (v19 = v7[1]) == 0 || (v20 = mpool_get(*a1, v19, 0), (v23[0] = v20) == 0))
  {
LABEL_20:
    if ((*(v7 + 8) - 20) >> 1 == v10)
    {
      v16 = v7[2];
      if (v16)
      {
        v23[0] = mpool_get(*a1, v16, 0);
        if (v23[0])
        {
          v23[1] = 0;
          v17 = __bt_cmp(a1, a2, v23);
          v18 = *a1;
          if (!v17)
          {
            goto LABEL_30;
          }

          mpool_put(v18, v23[0], 0);
        }
      }
    }

    goto LABEL_25;
  }

  v23[1] = 0;
  LOWORD(v23[1]) = ((v20[8] + 131052) >> 1) - 1;
  v21 = __bt_cmp(a1, a2, v23);
  v18 = *a1;
  if (v21)
  {
    mpool_put(v18, v23[0], 0);
    goto LABEL_20;
  }

LABEL_30:
  mpool_put(v18, v7, 0);
  *v8 = *v23;
LABEL_31:
  *a3 = 1;
  return v8;
}

uint64_t __bt_seq(uint64_t a1, void *a2, void *a3, int a4)
{
  v33 = 0;
  v34 = 0;
  v7 = *(a1 + 56);
  v8 = *(v7 + 32);
  if (v8)
  {
    mpool_put(*v7, v8, 0);
    *(v7 + 32) = 0;
  }

  if (a4 > 9)
  {
    goto LABEL_35;
  }

  if (((1 << a4) & 0x4A) != 0)
  {
LABEL_7:
    v9 = 0;
    v35 = 0;
    if (a4 > 5)
    {
      if (a4 == 6)
      {
        goto LABEL_11;
      }

      if (a4 != 7)
      {
        if (a4 != 9)
        {
          goto LABEL_45;
        }

LABEL_11:
        v10 = mpool_get(*v7, 1u, 0);
        if (v10)
        {
          v11 = v10;
          while (1)
          {
            v12 = v11[8];
            if ((v12 - 20) <= 1)
            {
              break;
            }

            if ((v11[6] & 0x12) != 0)
            {
              v9 = 0;
              v33 = v11;
              v29 = ((v12 + 131052) >> 1) - 1;
              goto LABEL_59;
            }

            v13 = *(v11 + v11[((v12 - 20) >> 1) + 9] + 4);
            mpool_put(*v7, v11, 0);
            v11 = mpool_get(*v7, v13, 0);
            if (!v11)
            {
              goto LABEL_44;
            }
          }

LABEL_39:
          mpool_put(*v7, v11, 0);
          goto LABEL_40;
        }

        goto LABEL_44;
      }

LABEL_19:
      v14 = mpool_get(*v7, 1u, 0);
      if (v14)
      {
        v11 = v14;
        while ((v11[8] & 0xFFFE) != 0x14)
        {
          if ((v11[6] & 0x12) != 0)
          {
            v9 = 0;
            v33 = v11;
            LOWORD(v34) = 0;
            goto LABEL_45;
          }

          v15 = *(v11 + v11[10] + 4);
          mpool_put(*v7, v11, 0);
          v11 = mpool_get(*v7, v15, 0);
          if (!v11)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_39;
      }

      goto LABEL_44;
    }

    if (a4 != 1)
    {
      if (a4 != 3)
      {
        goto LABEL_45;
      }

      goto LABEL_19;
    }

    if (*a2 && a2[1])
    {
      v22 = v7;
      v23 = a2;
LABEL_42:
      v9 = __bt_first(v22, v23, &v33, &v35);
      goto LABEL_45;
    }

    *__error() = 22;
    goto LABEL_44;
  }

  if (((1 << a4) & 0x280) == 0)
  {
LABEL_35:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  if ((*(v7 + 68) & 8) == 0)
  {
    goto LABEL_7;
  }

  if (*(v7 + 68))
  {
    v35 = 0;
    v23 = v7 + 48;
    v22 = v7;
    goto LABEL_42;
  }

  v16 = mpool_get(*v7, *(v7 + 40), 0);
  if (!v16)
  {
LABEL_44:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_45;
  }

  v17 = v16;
  if (a4 == 9)
  {
    v18 = *(v7 + 68);
    if ((v18 & 4) == 0)
    {
      LOWORD(v30) = *(v7 + 44);
      if (!v30)
      {
        v31 = v16[1];
        mpool_put(*v7, v16, 0);
        if (!v31)
        {
          goto LABEL_40;
        }

        v32 = mpool_get(*v7, v31, 0);
        if (!v32)
        {
          goto LABEL_44;
        }

        v17 = v32;
        v30 = (*(v32 + 8) + 131052) >> 1;
      }

      v19 = v30 - 1;
      goto LABEL_57;
    }

LABEL_58:
    v9 = 0;
    *(v7 + 68) = v18 & 0xF9;
    v33 = v16;
    LOWORD(v29) = *(v7 + 44);
LABEL_59:
    LOWORD(v34) = v29;
    goto LABEL_45;
  }

  if (a4 != 7)
  {
LABEL_34:
    v19 = 0;
    goto LABEL_57;
  }

  v18 = *(v7 + 68);
  if ((v18 & 2) != 0)
  {
    goto LABEL_58;
  }

  v19 = *(v7 + 44) + 1;
  if ((*(v16 + 8) - 20) >> 1 == v19)
  {
    v20 = v16[2];
    mpool_put(*v7, v16, 0);
    if (!v20)
    {
LABEL_40:
      v9 = 1;
      goto LABEL_45;
    }

    v21 = mpool_get(*v7, v20, 0);
    if (!v21)
    {
      goto LABEL_44;
    }

    v17 = v21;
    goto LABEL_34;
  }

LABEL_57:
  v9 = 0;
  v33 = v17;
  LOWORD(v34) = v19;
LABEL_45:
  if (!v9)
  {
    v24 = *v33;
    v25 = v34;
    v26 = *(v7 + 48);
    if (v26)
    {
      free(v26);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
    }

    v27 = *(v7 + 68) & 0xF0;
    *(v7 + 40) = v24;
    *(v7 + 44) = v25;
    *(v7 + 68) = v27 | 8;
    v9 = __bt_ret(v7, &v33, a2, v7 + 480, a3, (v7 + 496), 0);
    if ((*(v7 + 637) & 0x40) != 0)
    {
      mpool_put(*v7, v33, 0);
    }

    else
    {
      *(v7 + 32) = v33;
    }
  }

  return v9;
}

void __bt_setcur(uint64_t a1, int a2, __int16 a3)
{
  v7 = (a1 + 48);
  v6 = *(a1 + 48);
  if (v6)
  {
    free(v6);
    *v7 = 0;
    v7[1] = 0;
  }

  v8 = *(a1 + 68) & 0xF0;
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  *(a1 + 68) = v8 | 8;
}

uint64_t __bt_first(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = __bt_search(a1, a2, a4);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (!*a4)
  {
    v19 = *v8;
    if (*(v8 + 4) != (*(*v8 + 8) - 20) >> 1)
    {
      goto LABEL_23;
    }

    v20 = v19[2];
    mpool_put(*a1, v19, 0);
    if (v20)
    {
      v21 = mpool_get(*a1, v20, 0);
      if (!v21)
      {
        return 0xFFFFFFFFLL;
      }

      *(v9 + 4) = 0;
      *v9 = v21;
      goto LABEL_23;
    }

    return 1;
  }

  if ((*(a1 + 636) & 0x20) != 0)
  {
LABEL_23:
    result = 0;
    *a3 = *v9;
    return result;
  }

  v10 = (v8 + 10);
  v11 = *v8;
  v22 = *(v8 + 10);
  v23 = *(v8 + 7);
  v12 = *v8;
  while (*v12 == **v9)
  {
    v13 = *(v9 + 4);
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_7:
    LOWORD(v14) = v13;
LABEL_14:
    *(v9 + 4) = v14 - 1;
    if (__bt_cmp(a1, a2, v9))
    {
      v16 = *v12;
LABEL_16:
      if (*v11 != v16)
      {
        mpool_put(*a1, v11, 0);
      }

      result = 0;
      *a3 = v12;
      *(a3 + 8) = v13;
      *(a3 + 10) = v22;
      *(a3 + 14) = v23;
      return result;
    }
  }

  mpool_put(*a1, v12, 0);
  v12 = *v9;
  v13 = *(v9 + 4);
  v22 = *v10;
  v23 = *(v9 + 7);
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_9:
  v15 = v11[1];
  v16 = *v12;
  if (!v15)
  {
    goto LABEL_16;
  }

  if (*v11 != v16)
  {
    mpool_put(*a1, v11, 0);
    v15 = v11[1];
  }

  v17 = mpool_get(*a1, v15, 0);
  if (v17)
  {
    *v9 = v17;
    v14 = (*(v17 + 8) + 131052) >> 1;
    v11 = v17;
    goto LABEL_14;
  }

  if (*v11 == *v12)
  {
    mpool_put(*a1, v12, 0);
  }

  return 0xFFFFFFFFLL;
}

uint64_t __bt_split(uint64_t a1, _DWORD *a2, void *a3, void *a4, char a5, __int16 a6, unsigned __int16 a7)
{
  v11 = a2;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v70 = a7;
  if (*a2 == 1)
  {
    v13 = bt_root(a1, a2, &v72, &v71, &v70, a6);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_5;
  }

  v13 = bt_page(a1, a2, &v72, &v71, &v70, a6);
  if (v13)
  {
LABEL_5:
    v14 = *(v13 + 18) - a6;
    *(v13 + 18) = v14;
    *(v13 + 2 * v70 + 20) = v14;
    v15 = v13 + v14;
    if ((*(a1 + 636) & 0x80) != 0)
    {
      *v15 = a4[1];
      *(v15 + 4) = a5;
      v18 = (v15 + 5);
    }

    else
    {
      v16 = a4[1];
      *v15 = a3[1];
      *(v15 + 4) = v16;
      *(v15 + 8) = a5;
      v17 = v15 + 9;
      j__mkostemp((v15 + 9), *a3);
      v18 = (v17 + a3[1]);
    }

    j__mkostemp(v18, *a4);
    if (*v11 == 1)
    {
      v19 = v71;
      v20 = v72;
      if ((*(a1 + 636) & 0x80) != 0)
      {
        bt_rroot(a1, v11, v72, v71);
      }

      else if (bt_broot(a1, v11, v72, v71) == -1)
      {
LABEL_88:
        mpool_put(*a1, v20, 0);
        mpool_put(*a1, v19, 0);
        __dbpanic(*(a1 + 8));
        return 0xFFFFFFFFLL;
      }
    }

    v21 = *(a1 + 472);
    if (v21 == a1 + 72)
    {
LABEL_86:
      mpool_put(*a1, v72, 1u);
      mpool_put(*a1, v71, 1u);
      return 0;
    }

    v68 = 0;
    v22 = 0;
    LODWORD(oflags) = 0;
    while (1)
    {
      v23 = *(v21 - 8);
      *(a1 + 472) = v21 - 8;
      v19 = v71;
      v20 = v72;
      v24 = mpool_get(*a1, v23, 0);
      if (!v24)
      {
        goto LABEL_88;
      }

      v25 = v24;
      v26 = *(v21 - 4) + 1;
      v70 = v26;
      v27 = *(v19 + 3) & 0x1F;
      if (v27 > 7)
      {
        if (v27 != 8 && v27 != 16)
        {
LABEL_90:
          abort_report_np("%s:%s:%u: illegal rchild->flags & P_TYPE (0x%x)");
        }

        v29 = 8;
      }

      else if (v27 == 1)
      {
        oflags = (v19 + v19[10]);
        v29 = (*oflags & 0xFFFFFFFC) + 12;
      }

      else
      {
        if (v27 != 2)
        {
          goto LABEL_90;
        }

        if ((v22 = (v19 + v19[10]), v28 = *v22, v29 = (v28 & 0xFFFFFFFC) + 12, (v30 = *(a1 + 552)) != 0) && (v22[2] & 2) == 0 && (!*(v24 + 1) ? (v31 = v26 >= 2u) : (v31 = 1), v31))
        {
          v32 = (v20 + *(v20 + ((v20[8] - 20) & 0xFFFFFFFFFFFFFFFELL) + 18));
          v33 = *v32;
          v75 = v32 + 9;
          v76 = v33;
          v73 = v22 + 9;
          v74 = v28;
          v34 = v30(&v75, &v73);
          if ((v34 & 0xFFFFFFFC) + 12 >= v29)
          {
            v35 = 0;
          }

          else
          {
            v29 = (v34 & 0xFFFFFFFC) + 12;
            v35 = v34;
          }

          v68 = v35;
        }

        else
        {
          v68 = 0;
        }
      }

      v37 = v25[8];
      v38 = v25[9] - v37;
      v39 = v29 + 2;
      if (v38 >= v39)
      {
        if (((v37 + 131052) >> 1) > v26)
        {
          j__mkostemp(&v25[v26 + 11], v25 + 2 * v26 + 20);
          LOWORD(v37) = v25[8];
        }

        v25[8] = v37 + 2;
      }

      else
      {
        if (*v25 == 1)
        {
          v40 = bt_root(a1, v25, &v72, &v71, &v70, v29);
        }

        else
        {
          v40 = bt_page(a1, v25, &v72, &v71, &v70, v29);
        }

        v11 = v25;
        v25 = v40;
        if (!v40)
        {
          goto LABEL_87;
        }
      }

      v41 = *(v19 + 3) & 0x1F;
      if (v41 > 7)
      {
        break;
      }

      if (v41 == 1)
      {
        v47 = v25[9] - v29;
        v25[9] = v47;
        v25[v70 + 10] = v47;
        v48 = v25 + v25[v70 + 10];
        j__mkostemp(v48, oflags);
LABEL_76:
        *(v48 + 1) = *v19;
        goto LABEL_77;
      }

      if (v41 != 2)
      {
        goto LABEL_90;
      }

      v42 = v25[9] - v29;
      v25[9] = v42;
      v25[v70 + 10] = v42;
      v43 = v25 + v25[v70 + 10];
      if (v68)
      {
        *v43 = v68;
      }

      else
      {
        *v43 = *v22;
      }

      *(v43 + 1) = *v19;
      v43[8] = v22[2] & 2;
      j__mkostemp(v43 + 9, v22 + 9);
      if ((v22[2] & 2) != 0 && bt_preserve(a1, *(v22 + 9)) == -1)
      {
LABEL_87:
        mpool_put(*a1, v20, 1u);
        mpool_put(*a1, v19, 1u);
        v19 = v71;
        v20 = v72;
        goto LABEL_88;
      }

LABEL_77:
      if (v38 >= v39)
      {
        mpool_put(*a1, v25, 1u);
        goto LABEL_86;
      }

      if (*v11 == 1)
      {
        if ((*(a1 + 636) & 0x80) != 0)
        {
          bt_rroot(a1, v11, v72, v71);
        }

        else if (bt_broot(a1, v11, v72, v71) == -1)
        {
          goto LABEL_87;
        }
      }

      mpool_put(*a1, v20, 1u);
      mpool_put(*a1, v19, 1u);
      v21 = *(a1 + 472);
      if (v21 == a1 + 72)
      {
        goto LABEL_86;
      }
    }

    if (v41 == 8)
    {
      v49 = v70;
      if (v70)
      {
        v50 = &v25[v70 + 9];
        v51 = v25;
      }

      else
      {
        v51 = v72;
        v50 = (v72 + ((*(v72 + 8) - 20) & 0xFFFFFFFFFFFFFFFELL) + 18);
      }

      v52 = v20[8] + 131052;
      v53 = (v52 >> 1);
      if ((v52 >> 1))
      {
        v54 = 0;
        v55 = v20 + 10;
        do
        {
          v56 = *v55++;
          v54 += *(v20 + v56);
          --v53;
        }

        while (v53);
      }

      else
      {
        v54 = 0;
      }

      v57 = &v51[*v50];
      v58 = *v20;
      *v57 = v54;
      *(v57 + 1) = v58;
      LOWORD(v58) = v25[9] - v29;
      v25[9] = v58;
      v25[v49 + 10] = v58;
      v59 = v19[8] + 131052;
      v60 = (v59 >> 1);
      if ((v59 >> 1))
      {
        v61 = 0;
        v62 = v19 + 10;
        do
        {
          v63 = *v62++;
          v61 += *(v19 + v63);
          --v60;
        }

        while (v60);
      }

      else
      {
        v61 = 0;
      }

      v48 = v25 + v25[v70 + 10];
      *v48 = v61;
    }

    else
    {
      if (v41 != 16)
      {
        goto LABEL_90;
      }

      v44 = v70;
      if (v70)
      {
        v45 = &v25[v70 + 9];
        v46 = v25;
      }

      else
      {
        v46 = v72;
        v45 = (v72 + ((*(v72 + 8) - 20) & 0xFFFFFFFFFFFFFFFELL) + 18);
      }

      v64 = &v46[*v45];
      v65 = *v20;
      *v64 = (v20[8] + 0x1FFFFFFECLL) >> 1;
      *(v64 + 1) = v65;
      LOWORD(v64) = v25[9] - v29;
      v25[v44 + 10] = v64;
      v66 = v25[v70 + 10];
      v25[9] = v64;
      v48 = v25 + v66;
      *(v25 + v66) = (v19[8] + 0x1FFFFFFECLL) >> 1;
    }

    goto LABEL_76;
  }

  return 0xFFFFFFFFLL;
}

uint64_t bt_root(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, _WORD *a5, unsigned int a6)
{
  *v17 = 0;
  result = __bt_new(a1, &v17[1]);
  if (result)
  {
    v13 = result;
    result = __bt_new(a1, v17);
    if (result)
    {
      v14 = result;
      *v13 = v17[1];
      v15 = v17[0];
      *result = v17[0];
      *(result + 4) = *v13;
      *(v13 + 4) = 0;
      *(v13 + 8) = v15;
      *(result + 16) = 20;
      *(v13 + 16) = 20;
      LOWORD(v15) = *(a1 + 520);
      *(result + 18) = v15;
      *(v13 + 18) = v15;
      v16 = *(a2 + 12) & 0x1F;
      *(result + 8) = 0;
      *(result + 12) = v16;
      *(v13 + 12) = v16;
      result = bt_psplit(a1, a2, v13, result, a5, a6);
      *a3 = v13;
      *a4 = v14;
    }
  }

  return result;
}

_DWORD *bt_page(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unsigned __int16 *a5, unsigned int a6)
{
  v24 = 0;
  v12 = __bt_new(a1, &v24);
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  v14 = v24;
  *v12 = v24;
  *(v12 + 8) = 20;
  v15 = *(a1 + 520);
  *(v12 + 9) = v15;
  v16 = *(a2 + 8);
  v17 = *(a2 + 12);
  v12[1] = *a2;
  v12[2] = v16;
  v12[3] = v17 & 0x1F;
  if (!v16 && *a5 == (*(a2 + 16) - 20) >> 1)
  {
    *(a2 + 8) = v14;
    *(v12 + 8) = 22;
    *a5 = 0;
    *a3 = a2;
    *a4 = v12;
    return v13;
  }

  v18 = malloc_type_calloc(1uLL, v15, 0x100004020B92A0BuLL);
  if (!v18)
  {
    mpool_put(*a1, v13, 0);
    return 0;
  }

  v19 = v18;
  *v18 = *a2;
  *(v18 + 2) = *v13;
  *(v18 + 8) = 20;
  *(v18 + 9) = *(a1 + 520);
  v20 = *(a2 + 8);
  *(v18 + 3) = *(a2 + 12) & 0x1F;
  if (v20)
  {
    v21 = mpool_get(*a1, v20, 0);
    if (v21)
    {
      v21[1] = *v13;
      mpool_put(*a1, v21, 1u);
      goto LABEL_9;
    }

    free(v19);
    return 0;
  }

LABEL_9:
  v22 = bt_psplit(a1, a2, v19, v13, a5, a6);
  j__mkostemp(a2, v19);
  if (v22 == v19)
  {
    v22 = a2;
  }

  free(v19);
  *a3 = a2;
  *a4 = v13;
  return v22;
}

uint64_t bt_rroot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 520);
  *(a2 + 18) = v4 - 8;
  *(a2 + 20) = v4 - 8;
  v5 = (a2 + (v4 - 8));
  v6 = *(a3 + 16);
  if ((*(a3 + 12) & 0x10) != 0)
  {
    v9 = (v6 + 0x1FFFFFFECLL) >> 1;
  }

  else
  {
    v7 = v6 + 131052;
    v8 = (v7 >> 1);
    if ((v7 >> 1))
    {
      LODWORD(v9) = 0;
      v10 = (a3 + 20);
      do
      {
        v11 = *v10++;
        LODWORD(v9) = *(a3 + v11) + v9;
        --v8;
      }

      while (v8);
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  *v5 = v9;
  v5[1] = *a3;
  v12 = v4 - 16;
  *(a2 + 18) = v12;
  *(a2 + 22) = v12;
  v13 = *(a4 + 16);
  if ((*(a4 + 12) & 0x10) != 0)
  {
    v15 = (v13 + 0x1FFFFFFECLL) >> 1;
  }

  else
  {
    v14 = ((v13 + 131052) >> 1);
    if (((v13 + 131052) >> 1))
    {
      LODWORD(v15) = 0;
      v16 = (a4 + 20);
      do
      {
        v17 = *v16++;
        LODWORD(v15) = *(a4 + v17) + v15;
        --v14;
      }

      while (v14);
    }

    else
    {
      LODWORD(v15) = 0;
    }
  }

  v18 = (a2 + v12);
  *v18 = v15;
  v18[1] = *a4;
  *(a2 + 16) = 24;
  *(a2 + 12) = *(a2 + 12) & 0xFFFFFFE0 | 8;
  return mpool_put(*a1, a2, 1u);
}

uint64_t bt_broot(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = *(a1 + 520) - 12;
  *(a2 + 18) = v7;
  *(a2 + 20) = v7;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = *a3;
  *(v8 + 8) = 0;
  if ((*(a2 + 12) & 0x1F) == 1)
  {
    v14 = *(a4 + 20);
    v15 = *(a2 + 18) - ((*(a4 + v14) & 0xFFFC) + 12);
    *(a2 + 18) = v15;
    *(a2 + 22) = v15;
    v16 = a2 + v15;
    j__mkostemp(v16, a4 + v14);
    *(v16 + 4) = *a4;
LABEL_7:
    *(a2 + 16) = 24;
    *(a2 + 12) = *(a2 + 12) & 0xFFFFFFE0 | 1;
    mpool_put(*a1, a2, 1u);
    return 0;
  }

  if ((*(a2 + 12) & 0x1F) != 2)
  {
    abort_report_np("%s:%s:%u: illegal h->flags & P_TYPE (0x%x)");
  }

  v9 = (a4 + *(a4 + 20));
  v10 = *v9;
  v11 = *(a2 + 18) - (*v9 & 0xFFFC) - 12;
  *(a2 + 18) = v11;
  *(a2 + 22) = v11;
  v12 = a2 + v11;
  *v12 = v10;
  *(v12 + 4) = *a4;
  *(v12 + 8) = 0;
  j__mkostemp((v12 + 9), v9 + 9);
  if ((v9[2] & 2) == 0)
  {
    goto LABEL_7;
  }

  result = bt_preserve(a1, *(v9 + 9));
  if (result != -1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t bt_preserve(MPOOL **a1, pgno_t a2)
{
  v3 = mpool_get(*a1, a2, 0);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v3[3] |= 0x20u;
  mpool_put(*a1, v3, 1u);
  return 0;
}

uint64_t bt_psplit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, unsigned int a6)
{
  v6 = a4;
  v7 = a2;
  v8 = *a5;
  v43 = *(a2 + 16) + 131052;
  v9 = (v43 >> 1);
  if ((v43 >> 1))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = (*(a1 + 520) - 20) >> 1;
    v48 = a2 + 20;
    v49 = (*(a1 + 520) - 20);
    v17 = (v9 - 1);
    v46 = a3 + 20;
    v47 = *a5;
    while (1)
    {
      if (v8 == v13)
      {
        v18 = 0;
        v19 = a6;
      }

      else
      {
        v20 = v7[3] & 0x1F;
        if (v20 > 7)
        {
          if (v20 == 8)
          {
            v18 = 0;
            LODWORD(v15) = v7 + *(v48 + 2 * v14);
            v19 = 8;
          }

          else
          {
            if (v20 != 16)
            {
LABEL_64:
              abort_report_np("%s:%s:%u: illegal h->flags & P_TYPE (0x%x)");
            }

            v18 = 0;
            v15 = v7 + *(v48 + 2 * v14);
            v19 = (*v15 & 0xFFFFFFFC) + 8;
          }
        }

        else
        {
          if (v20 == 1)
          {
            v15 = v7 + *(v48 + 2 * v14);
            v19 = (*v15 & 0xFFFFFFFC) + 12;
          }

          else
          {
            if (v20 != 2)
            {
              goto LABEL_64;
            }

            v15 = v7 + *(v48 + 2 * v14);
            v19 = (*v15 + *(v15 + 1) + 12) & 0xFFFFFFFC;
          }

          v18 = v15[8] & 2;
        }
      }

      if (v8 <= v13)
      {
        if ((v19 + v12) + 2 >= v49 || v17 == v10)
        {
LABEL_31:
          LOWORD(v13) = v13 - 1;
          goto LABEL_32;
        }
      }

      else if (v17 == v10)
      {
        goto LABEL_31;
      }

      if (v8 != v13)
      {
        v22 = *(a3 + 18) - v19;
        v52 = v18;
        *(v46 + 2 * v13) = v22;
        *(a3 + 18) = v22;
        v23 = v9;
        v24 = v11;
        v25 = v7;
        v26 = v14 + 1;
        v27 = v17;
        v28 = v13;
        j__mkostemp((a3 + v22), v15);
        v13 = v28;
        v18 = v52;
        v17 = v27;
        v14 = v26;
        v7 = v25;
        v6 = a4;
        v11 = v24;
        v9 = v23;
        v8 = v47;
      }

      v29 = v12 + v19;
      v12 += v19 + 2;
      if (v16 <= (v29 + 2))
      {
        if (!v18 || v11 == 3)
        {
          goto LABEL_32;
        }

        v11 = (v11 + 1);
      }

      ++v13;
      v10 = v14;
      if (v9 <= v14)
      {
        goto LABEL_32;
      }
    }
  }

  LOWORD(v14) = 0;
  LOWORD(v13) = 0;
LABEL_32:
  v30 = a3;
  *(a3 + 16) += 2 * v13 + 2;
  if ((*(a1 + 68) & 8) != 0 && *(a1 + 40) == *v7)
  {
    v31 = *(a1 + 44);
    if (v31 >= v8)
    {
      LOWORD(v31) = v31 + 1;
      *(a1 + 44) = v31;
    }

    if (v31 >= v14)
    {
      *(a1 + 40) = *v6;
      *(a1 + 44) = v31 - v14;
    }

    else
    {
      *(a1 + 40) = *a3;
    }
  }

  if (v8 <= v13)
  {
    LOWORD(v8) = -1;
  }

  else
  {
    *a5 -= v14;
    v30 = v6;
  }

  if (v9 <= v14)
  {
    v39 = 0;
  }

  else
  {
    v32 = 0;
    v33 = v7 + 5;
    do
    {
      if (v8 == v14)
      {
        v34 = v32 + 1;
      }

      else
      {
        v34 = v32;
      }

      if (v8 == v14)
      {
        LOWORD(v8) = -1;
      }

      v35 = v7[3] & 0x1F;
      if (v35 > 7)
      {
        if (v35 == 8)
        {
          LODWORD(v36) = v7 + *(v33 + v14);
          LOWORD(v37) = 8;
        }

        else
        {
          if (v35 != 16)
          {
            goto LABEL_64;
          }

          v36 = (v7 + *(v33 + v14));
          v37 = (*v36 & 0xFFFFFFFC) + 8;
        }
      }

      else if (v35 == 1)
      {
        v36 = (v7 + *(v33 + v14));
        v37 = (*v36 & 0xFFFFFFFC) + 12;
      }

      else
      {
        if (v35 != 2)
        {
          goto LABEL_64;
        }

        v36 = (v7 + *(v33 + v14));
        v37 = (*v36 + v36[1] + 12) & 0xFFFFFFFC;
      }

      v38 = *(v6 + 18) - v37;
      *(v6 + 20 + 2 * v34) = v38;
      LOWORD(v14) = v14 + 1;
      *(v6 + 18) = v38;
      j__mkostemp((v6 + v38), v36);
      v32 = v34 + 1;
    }

    while (v9 > v14);
    v39 = 2 * v32;
  }

  v40 = *(v6 + 16) + v39;
  if (v8 == (v43 >> 1))
  {
    v40 += 2;
  }

  *(v6 + 16) = v40;
  return v30;
}

uint64_t __bt_ret(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char **a6, int a7)
{
  v11 = (*a2 + *(*a2 + 2 * *(a2 + 8) + 20));
  if (a3)
  {
    if ((v11[2] & 2) != 0)
    {
      if (__ovfl_get(a1, (v11 + 9), a3 + 1, a4, (a4 + 8)))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (!a7 && (*(a1 + 637) & 0x40) == 0)
      {
        v14 = v11 + 9;
        a3[1] = *v11;
LABEL_13:
        *a3 = v14;
        goto LABEL_14;
      }

      v15 = *a4;
      if (*(a4 + 8) < *v11)
      {
        v15 = malloc_type_realloc(v15, *v11, 0x1604DE2FuLL);
        if (!v15)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = *v11;
        *a4 = v15;
        *(a4 + 8) = v16;
      }

      j__mkostemp(v15, v11 + 9);
      a3[1] = *v11;
    }

    v14 = *a4;
    goto LABEL_13;
  }

LABEL_14:
  if (!a5)
  {
    return 0;
  }

  if (v11[2])
  {
    if (!__ovfl_get(a1, (v11 + *v11 + 9), a5 + 1, a6, a6 + 1))
    {
LABEL_26:
      v18 = *a6;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (a7 || (*(a1 + 637) & 0x40) != 0)
  {
    v20 = v11[1] + 1;
    v21 = *a6;
    if (a6[1] >= v20)
    {
LABEL_25:
      j__mkostemp(v21, v11 + *v11 + 9);
      a5[1] = v11[1];
      goto LABEL_26;
    }

    v21 = malloc_type_realloc(v21, v20, 0xF25BBEE6uLL);
    if (v21)
    {
      v22 = v11[1];
      *a6 = v21;
      a6[1] = (v22 + 1);
      goto LABEL_25;
    }

    return 0xFFFFFFFFLL;
  }

  v17 = *v11;
  a5[1] = v11[1];
  v18 = v11 + v17 + 9;
LABEL_27:
  result = 0;
  *a5 = v18;
  return result;
}

uint64_t __bt_cmp(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v5 = *a3;
  if (!*(a3 + 4) && !*(v5 + 4) && (*(v5 + 12) & 2) == 0)
  {
    return 1;
  }

  v7 = (v5 + *(v5 + 2 * *(a3 + 4) + 20));
  if ((v7[2] & 2) != 0)
  {
    if (__ovfl_get(a1, (v7 + 9), &v10, (a1 + 496), (a1 + 504)))
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *(a1 + 496);
  }

  else
  {
    v8 = *v7;
    v9 = v7 + 9;
    v10 = v8;
  }

  return (*(a1 + 544))(a2, &v9);
}

uint64_t __bt_defcmp(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 >= v3)
  {
    v4 = a2[1];
  }

  else
  {
    v4 = a1[1];
  }

  if (!v4)
  {
    return (v2 - v3);
  }

  v5 = *a2;
  for (i = *a1; ; ++i)
  {
    v7 = *i;
    v8 = *v5;
    result = (v7 - v8);
    if (v7 != v8)
    {
      break;
    }

    ++v5;
    if (!--v4)
    {
      return (v2 - v3);
    }
  }

  return result;
}

unint64_t __bt_defpfx(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 >= v3)
  {
    v4 = a2[1];
  }

  else
  {
    v4 = a1[1];
  }

  if (v4)
  {
    v5 = 0;
    while (*(*a1 + v5) == *(*a2 + v5))
    {
      if (v4 == ++v5)
      {
        goto LABEL_8;
      }
    }

    return v5 + 1;
  }

  else
  {
LABEL_8:
    if (v2 >= v3)
    {
      return a1[1];
    }

    else
    {
      return v2 + 1;
    }
  }
}

DB *__cdecl dbopen(const char *a1, int a2, int a3, DBTYPE a4, const void *a5)
{
  if ((a2 & 0x1FFFF1C9) != 0)
  {
    goto LABEL_2;
  }

  if (a4 == DB_RECNO)
  {
    v10 = a2 & 0x36;

    return __rec_open(a1, v10, *&a3, a5, a2 & 0xE0000000);
  }

  else if (a4 == DB_HASH)
  {
    v9 = a2 & 0xE36;

    return __hash_open(a1, v9, *&a3, a5);
  }

  else
  {
    if (a4)
    {
LABEL_2:
      *__error() = 22;
      return 0;
    }

    v8 = a2 & 0x36;

    return __bt_open(a1, v8, *&a3, a5, a2 & 0xE0000000);
  }
}

void *__dbpanic(void *result)
{
  result[8] = __dberr;
  result[2] = __dberr;
  result[3] = __dberr;
  result[4] = __dberr;
  result[5] = __dberr;
  result[6] = __dberr;
  return result;
}

_DWORD *__hash_open(const char *a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 3) == 1)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  result = malloc_type_calloc(1uLL, 0x298uLL, 0x10B00404C34C173uLL);
  if (result)
  {
    v8 = result;
    v9 = 0;
    memset(&v45, 0, sizeof(v45));
    result[71] = -1;
    result[70] = v6;
    if (!a1)
    {
      goto LABEL_10;
    }

    v10 = open_NOCANCEL();
    v8[71] = v10;
    if (v10 == -1)
    {
      v19 = __error();
LABEL_50:
      v32 = *v19;
LABEL_51:
      free(v8);
LABEL_52:
      v43 = __error();
      result = 0;
      *v43 = v32;
      return result;
    }

    fcntl_NOCANCEL();
    v11 = fstat(v8[71], &v45);
    v9 = 0;
    if (!v11 && !v45.st_size && (v6 & 0x203) != 0)
    {
LABEL_10:
      *&v46.st_blksize = v9;
      *v46.st_qspare = v9;
      v46.st_birthtimespec = v9;
      *&v46.st_size = v9;
      v46.st_mtimespec = v9;
      v46.st_ctimespec = v9;
      *&v46.st_uid = v9;
      v46.st_atimespec = v9;
      *&v46.st_dev = v9;
      *(v8 + 17) = v9;
      v12 = v8 + 17;
      *(v8 + 3) = 0x800000100;
      *(v8 + 2) = xmmword_18E98A4F0;
      *(v8 + 13) = 0x10000;
      *(v8 + 34) = __default_hash[0];
      *(v8 + 21) = v9;
      *(v8 + 25) = v9;
      *(v8 + 29) = v9;
      *(v8 + 33) = v9;
      *(v8 + 37) = v9;
      *(v8 + 41) = v9;
      *(v8 + 45) = v9;
      *(v8 + 49) = v9;
      *(v8 + 53) = v9;
      *(v8 + 57) = v9;
      *(v8 + 61) = v9;
      if (a1)
      {
        if (stat(a1, &v46))
        {
          goto LABEL_49;
        }

        st_blksize = v46.st_blksize;
        v8[3] = v46.st_blksize;
        v8[4] = __log2(st_blksize);
      }

      if (!a4)
      {
        v17 = 1;
        goto LABEL_36;
      }

      if (!*a4 || (v14 = __log2(*a4), v8[3] = 1 << v14, v8[4] = v14, 1 << v14 <= 0x10000))
      {
        v15 = *(a4 + 4);
        if (v15)
        {
          v8[13] = v15;
        }

        v16 = *(a4 + 16);
        if (v16)
        {
          *(v8 + 34) = v16;
        }

        v17 = *(a4 + 8);
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = *(a4 + 24);
        if (!v18)
        {
LABEL_36:
          v33 = (v17 - 1) / v8[13];
          if ((v33 + 1) > 2)
          {
            v34 = v33 + 1;
          }

          else
          {
            v34 = 2;
          }

          v35 = __log2(v34);
          v36 = v35;
          v37 = v35 + 1;
          v12[v35] = v37;
          v12[v37] = v37;
          v8[8] = v35;
          v8[9] = 2;
          if (!__ibitmap(v8, (v35 << 11) | 1u, v37, 0))
          {
            v38 = ~(-1 << v36);
            v8[10] = v38;
            v8[11] = (2 << v36) - 1;
            v8[12] = v38;
            v8[15] = (0x1FFuLL >> v8[4]) + 1;
            v39 = 1 << __log2(v38 / v8[6] + 1);
            if (v39 > v8[5])
            {
              v8[5] = v39;
            }

            if (!alloc_segs(v8, v39))
            {
              v40 = 1;
              if (!a4)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }

          goto LABEL_49;
        }

        if (v18 == 4321 || v18 == 1234)
        {
          v8[2] = v18;
          goto LABEL_36;
        }
      }

      *__error() = 22;
LABEL_49:
      v19 = __error();
      v8 = 0;
      goto LABEL_50;
    }

    if (!a4 || (v20 = *(a4 + 16)) == 0)
    {
      v20 = __default_hash[0];
    }

    *(v8 + 34) = v20;
    NOCANCEL = read_NOCANCEL();
    v22 = 0;
    v23 = bswap32(v8[1]);
    *v8 = bswap32(*v8);
    v8[1] = v23;
    v24 = bswap32(v8[3]);
    v8[2] = bswap32(v8[2]);
    v8[3] = v24;
    v25 = bswap32(v8[5]);
    v8[4] = bswap32(v8[4]);
    v8[5] = v25;
    v26 = bswap32(v8[7]);
    v8[6] = bswap32(v8[6]);
    v8[7] = v26;
    v27 = bswap32(v8[9]);
    v8[8] = bswap32(v8[8]);
    v8[9] = v27;
    v28 = bswap32(v8[11]);
    v8[10] = bswap32(v8[10]);
    v8[11] = v28;
    v29 = bswap32(v8[13]);
    v8[12] = bswap32(v8[12]);
    v8[13] = v29;
    v30 = bswap32(v8[15]);
    v8[14] = bswap32(v8[14]);
    v8[15] = v30;
    v8[16] = bswap32(v8[16]);
    v31 = v8 + 197;
    do
    {
      v8[v22 + 17] = bswap32(v8[v22 + 17]);
      *(v31 - 1) = bswap32(*(v31 - 1)) >> 16;
      ++v22;
      v31 += 2;
    }

    while (v22 != 32);
    if (NOCANCEL == 260)
    {
      if (*v8 == 398689 && (v8[1] - 1) <= 1 && (*(v8 + 34))("%$sniglet^&", 12, 1) == v8[16])
      {
        if (alloc_segs(v8, (v8[6] + v8[10]) / v8[6]))
        {
          return 0;
        }

        v44 = (v8[v8[8] + 17] + 8 * v8[3] - 1) >> (v8[4] + 3);
        v8[148] = v44;
        MEMORY[0x193AD5FD0](v8 + 84, 8 * v44);
        v40 = 0;
        if (!a4)
        {
          goto LABEL_45;
        }

LABEL_44:
        v41 = *(a4 + 12);
        if (v41)
        {
LABEL_46:
          __buf_init(v8, v41);
          v8[81] = v40;
          if (a1)
          {
            v42 = (v8[70] >> 1) & 1;
          }

          else
          {
            v42 = 0;
          }

          v8[82] = v42;
          v8[78] = -1;
          result = malloc_type_malloc(0x48uLL, 0x10800406ECF7772uLL);
          if (result)
          {
            *(result + 1) = hash_close;
            *(result + 2) = hash_delete;
            *(result + 7) = v8;
            *(result + 8) = hash_fd;
            *(result + 3) = hash_get;
            *(result + 4) = hash_put;
            *(result + 5) = hash_seq;
            *(result + 6) = hash_sync;
            *result = 1;
            return result;
          }

          v32 = *__error();
          hdestroy();
          goto LABEL_52;
        }

LABEL_45:
        v41 = 0x10000;
        goto LABEL_46;
      }
    }

    else if (NOCANCEL == -1)
    {
      v32 = *__error();
LABEL_60:
      close_NOCANCEL();
      goto LABEL_51;
    }

    v32 = 79;
    goto LABEL_60;
  }

  return result;
}

uint64_t alloc_segs(uint64_t a1, int a2)
{
  v4 = malloc_type_calloc(*(a1 + 20), 8uLL, 0x80040B8603338uLL);
  *(a1 + 648) = v4;
  if (v4)
  {
    *(a1 + 260) = a2;
    if (!a2)
    {
      return 0;
    }

    v5 = malloc_type_calloc(a2 << *(a1 + 28), 8uLL, 0x80040B8603338uLL);
    if (v5)
    {
      if (a2 >= 1)
      {
        v6 = 0;
        v7 = *(a1 + 28);
        do
        {
          *(*(a1 + 648) + 8 * v6) = &v5[8 * (v6 << v7)];
          ++v6;
        }

        while (a2 != v6);
      }

      return 0;
    }
  }

  v9 = *__error();
  hdestroy();
  *__error() = v9;
  return 0xFFFFFFFFLL;
}

void hdestroy(void)
{
  v1 = v0;
  if (__buf_free(v0, 1, *(v0 + 328)))
  {
    v2 = *__error();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 648);
  if (v3)
  {
    for (i = *v3; ; i = *(v6 + 8 * v7))
    {
      free(i);
      v5 = *(v1 + 264);
      *(v1 + 264) = v5 - 1;
      if (!v5)
      {
        break;
      }

      v6 = *(v1 + 648);
      v7 = *(v1 + 260) - 1;
      *(v1 + 260) = v7;
    }

    free(*(v1 + 648));
  }

  if (flush_meta(v1) && !v2)
  {
    v2 = *__error();
  }

  v8 = *(v1 + 592);
  if (v8 >= 1)
  {
    for (j = 0; j < v8; ++j)
    {
      v10 = *(v1 + 336 + 8 * j);
      if (v10)
      {
        free(v10);
        v8 = *(v1 + 592);
      }
    }
  }

  v11 = *(v1 + 296);
  if (v11)
  {
    free(v11);
  }

  v12 = *(v1 + 288);
  if (v12)
  {
    free(v12);
  }

  if (*(v1 + 284) != -1)
  {
    close_NOCANCEL();
  }

  free(v1);
  if (v2)
  {
    *__error() = v2;
  }
}

uint64_t hash_close(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  hdestroy();
  v3 = v2;
  free(a1);
  return v3;
}

uint64_t hash_delete(uint64_t a1, char **a2, unsigned int a3)
{
  v3 = *(a1 + 56);
  if (a3 >= 2)
  {
    v4 = __error();
    v5 = 22;
LABEL_8:
    *v4 = v5;
    *(v3 + 320) = v5;
    return 0xFFFFFFFFLL;
  }

  if ((*(v3 + 280) & 3) == 0)
  {
    v4 = __error();
    v5 = 1;
    goto LABEL_8;
  }

  v6 = *(a1 + 56);

  return hash_access(v6, 3, a2, 0);
}

uint64_t hash_fd(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(*(a1 + 56) + 284);
  if (result == -1)
  {
    *__error() = 2;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t hash_get(uint64_t a1, char **a2, void *a3, int a4)
{
  v4 = *(a1 + 56);
  if (a4)
  {
    *__error() = 22;
    *(v4 + 320) = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = *(a1 + 56);

    return hash_access(v6, 0, a2, a3);
  }
}

uint64_t hash_put(uint64_t a1, char **a2, void *a3, int a4)
{
  v4 = *(a1 + 56);
  if ((a4 & 0xFFFFFFF7) != 0)
  {
    v5 = __error();
    v6 = 22;
LABEL_3:
    *v5 = v6;
    *(v4 + 320) = v6;
    return 0xFFFFFFFFLL;
  }

  if ((*(v4 + 280) & 3) == 0)
  {
    v5 = __error();
    v6 = 1;
    goto LABEL_3;
  }

  if (a4 == 8)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a1 + 56);

  return hash_access(v11, v10, a2, a3);
}

uint64_t hash_seq(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v4 = *(a1 + 56);
  if (a4 <= 7 && ((1 << a4) & 0x89) != 0)
  {
    if (a4 == 3 || (*(v4 + 312) & 0x80000000) != 0)
    {
      *(v4 + 312) = 0x100000000;
      *(v4 + 304) = 0;
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      while (1)
      {
        if (v9 && *v9)
        {
          v16 = *(v4 + 316);
          v17 = v9[v16 + 1];
          if (v17 > 3)
          {
            v18 = *(v4 + 304);
            if (!v18)
            {
              return 0xFFFFFFFFLL;
            }

            v19 = *(v18 + 32);
            v20 = v9[*(v4 + 316)];
            *a2 = v19 + v20;
            if (v16 < 2)
            {
              v21 = *(v4 + 12);
            }

            else
            {
              v21 = v9[(v16 - 1)];
            }

            a2[1] = v21 - v20;
            *a3 = v19 + v17;
            a3[1] = v20 - v17;
          }

          else if (__big_keydata(v4, v8, a2, a3, 1))
          {
            return 0xFFFFFFFFLL;
          }

          return 0;
        }

        v8 = *(v4 + 304);
        if (v8)
        {
          break;
        }

        v11 = *(v4 + 312);
        v12 = *(v4 + 40);
        if (v11 <= v12)
        {
          while (1)
          {
            buf = __get_buf(v4, v11, 0, 0);
            if (!buf)
            {
              return 0xFFFFFFFFLL;
            }

            v8 = buf;
            *(v4 + 304) = buf;
            v9 = *(buf + 32);
            v12 = *(v4 + 40);
            if (!*v9)
            {
              ++v11;
              *(v4 + 316) = 1;
              if (v11 <= v12)
              {
                continue;
              }
            }

            goto LABEL_18;
          }
        }

        v8 = 0;
LABEL_18:
        *(v4 + 312) = v11;
        if (v11 > v12)
        {
          *(v4 + 312) = -1;
          return 1;
        }

        LODWORD(v10) = *(v4 + 316);
LABEL_20:
        if (!v9[v10 + 1])
        {
          v10 = v10;
          do
          {
            v14 = __get_buf(v4, v9[v10], v8, 0);
            *(v4 + 304) = v14;
            if (!v14)
            {
              return 0xFFFFFFFFLL;
            }

            v8 = v14;
            v9 = *(v14 + 32);
            *(v4 + 316) = 1;
            v10 = 1;
          }

          while (!v9[2]);
        }

        if (!*v9)
        {
          *(v4 + 304) = 0;
          ++*(v4 + 312);
        }
      }

      v9 = *(v8 + 32);
      LODWORD(v10) = *(v4 + 316);
      if (a4 != 7)
      {
        goto LABEL_20;
      }

      LODWORD(v10) = v10 + 2;
      *(v4 + 316) = v10;
      if (v10 <= *v9)
      {
        goto LABEL_20;
      }

      v9 = 0;
      *(v4 + 304) = 0;
      ++*(v4 + 312);
      *(v4 + 316) = 1;
    }
  }

  *__error() = 22;
  *(v4 + 320) = 22;
  return 0xFFFFFFFFLL;
}

uint64_t hash_sync(uint64_t a1, int a2)
{
  if (a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 56);
  if (!*(v3 + 328))
  {
    return 0;
  }

  if (__buf_free(*(a1 + 56), 0, 1))
  {
    return 0xFFFFFFFFLL;
  }

  result = flush_meta(v3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(v3 + 324) = 0;
  return result;
}

uint64_t __expand_table(uint64_t a1)
{
  v2 = *(a1 + 40) + 1;
  *(a1 + 40) = v2;
  v3 = *(a1 + 48);
  v4 = v2 >> *(a1 + 28);
  v5 = v2;
  if (v4 < *(a1 + 260))
  {
    goto LABEL_7;
  }

  v6 = *(a1 + 20);
  if (v4 >= v6)
  {
    v7 = malloc_type_malloc(16 * v6, 0x5AFC2E3FuLL);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = v7;
    j__mkostemp(v7, *(a1 + 648));
    MEMORY[0x193AD5FD0](&v8[8 * v6], 8 * v6);
    free(*(a1 + 648));
    *(a1 + 648) = v8;
    *(a1 + 20) = 16 * v6;
  }

  v9 = malloc_type_calloc(*(a1 + 24), 8uLL, 0x80040B8603338uLL);
  *(*(a1 + 648) + 8 * v4) = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 260) = vadd_s32(*(a1 + 260), 0x100000001);
  v5 = *(a1 + 40);
LABEL_7:
  v10 = __log2(v5 + 1);
  v11 = *(a1 + 32);
  if (v10 > v11)
  {
    *(a1 + 68 + 4 * v10) = *(a1 + 68 + 4 * v11);
    *(a1 + 32) = v10;
  }

  v12 = *(a1 + 44);
  if (v2 > v12)
  {
    *(a1 + 44) = v12 | v2;
    *(a1 + 48) = v12;
  }

  return __split_page(a1, v3 & v2, v2);
}

uint64_t __call_hash(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 44) & (*(a1 + 272))(a2, a3);
  if (result > *(a1 + 40))
  {
    return *(a1 + 48) & result;
  }

  return result;
}

uint64_t flush_meta(uint64_t a1)
{
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  if (!*(a1 + 328))
  {
    return 0;
  }

  *a1 = 0x200061561;
  v2 = (*(a1 + 272))("%$sniglet^&", 12);
  v3 = 0;
  *(a1 + 64) = v2;
  v4 = vrev32q_s8(*(a1 + 32));
  v4.i32[0] = *(a1 + 64);
  *v4.i8 = vrev64_s16(*&vmovl_u8(*v4.i8));
  v5 = vuzp1_s8(*v4.i8, *v4.i8);
  v6 = a1 + 197;
  v7 = -128;
  do
  {
    v5.i32[0] = *(v6 + v7 - 1);
    v8 = vrev64_s16(*&vmovl_u8(v5));
    v5 = vuzp1_s8(v8, v8);
    *(v21 + v7) = v5.i32[0];
    v9 = v21 + v3;
    *v9 = *(v6 + v3);
    v9[1] = *(v6 + v3 - 1);
    v3 += 2;
    v7 += 4;
  }

  while (v7);
  result = pwrite_NOCANCEL();
  if (result != -1)
  {
    if (result == 260)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(a1 + 8 * v11 + 336);
        if (v12)
        {
          if (__put_page(a1, v12, *(a1 + 2 * v11 + 196), 0, 1))
          {
            break;
          }
        }

        if (++v11 == 32)
        {
          return 0;
        }
      }
    }

    else
    {
      *__error() = 79;
      *(a1 + 320) = *__error();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t hash_access(uint64_t a1, int a2, char **a3, void *a4)
{
  v8 = *(a1 + 12);
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a1 + 44) & (*(a1 + 272))(*a3, v10);
  if (v11 > *(a1 + 40))
  {
    v11 &= *(a1 + 48);
  }

  buf = __get_buf(a1, v11, 0, 0);
  if (!buf)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = buf;
  v37 = a2;
  v35 = a3;
  v36 = a4;
  v38 = 0;
  *(buf + 40) |= 8u;
  v14 = *(buf + 32);
  v15 = *v14;
  v16 = buf;
  if (v15 < 2)
  {
LABEL_26:
    if ((v37 - 1) > 1)
    {
LABEL_33:
      *(v13 + 40) &= ~8u;
      return 1;
    }

    else
    {
      v31 = __addel(a1, v16, v35, v36);
      *(v13 + 40) &= ~8u;
      if (v31)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v14 + 1;
  v18 = 1;
  v16 = buf;
  while (1)
  {
    v19 = v17[1];
    if (v19 >= 4)
    {
      break;
    }

    if (v17[1])
    {
      bigpair = __find_bigpair(a1, v16, v18, v9, v10);
      v18 = bigpair;
      if (bigpair >= 1)
      {
        goto LABEL_20;
      }

      if (bigpair != -2)
      {
        goto LABEL_36;
      }

      v38 = v16;
      last_page = __find_last_page(a1, &v38);
      if (!last_page)
      {
        v16 = v38;
        goto LABEL_26;
      }

      v22 = last_page;
      v23 = v38;
      v24 = a1;
    }

    else
    {
      v22 = *v17;
      v24 = a1;
      v23 = v16;
    }

    v25 = __get_buf(v24, v22, v23, 0);
    if (!v25)
    {
      goto LABEL_36;
    }

    v16 = v25;
    v26 = *(v25 + 32);
    v27 = *v26;
    v17 = v26 + 1;
    v15 = v27;
    v8 = *(a1 + 12);
    v18 = 1;
LABEL_18:
    if (v18 >= v15)
    {
      goto LABEL_26;
    }
  }

  if (v8 - *v17 != v10 || j__mkdtemp(v9))
  {
    v17 += 2;
    v18 += 2;
    v8 = v19;
    goto LABEL_18;
  }

LABEL_20:
  if (v37 > 1)
  {
    if (v37 != 3)
    {
      goto LABEL_33;
    }

    if (!__delpair(a1, v16, v18))
    {
      goto LABEL_39;
    }

    return 0xFFFFFFFFLL;
  }

  if (v37)
  {
    if (__delpair(a1, v16, v18) || __addel(a1, v16, v35, v36))
    {
LABEL_36:
      *(v13 + 40) &= ~8u;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v28 = *(v16 + 32);
    v29 = (v28 + 2 * v18);
    v30 = v29[1];
    if (v30 > 3)
    {
      v33 = v28 + v30;
      v34 = *v29 - v30;
      *v36 = v33;
      v36[1] = v34;
    }

    else if (__big_return(a1, v16, v18, v36, 0))
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_39:
  result = 0;
  *(v13 + 40) &= ~8u;
  return result;
}

uint64_t __big_insert(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v5 = a2;
  v7 = *(a2 + 32);
  v8 = *(a3 + 2);
  v9 = *a4;
  v10 = a4[1];
  v11 = *v7;
  if (v8)
  {
    v12 = &v7[2 * v11];
    v13 = *a3;
    while (1)
    {
      if (v8 >= (*(v12 + 1) - 8))
      {
        v14 = *(v12 + 1) - 8;
      }

      else
      {
        v14 = v8;
      }

      v15 = *&v7[2 * v11 + 4] - v14;
      j__mkostemp(&v7[v15], v13);
      v16 = *v7;
      *&v7[2 * v16 + 2] = v15;
      *v7 = v16 + 2;
      *&v7[2 * (v16 + 2) + 2] = v15 - 2 * v16 - 10;
      *&v7[2 * (v16 + 2) + 4] = v15;
      *&v7[2 * v16 + 4] = 1;
      v17 = __add_ovflpage(a1, v5);
      if (!v17)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = v17;
      v8 -= v14;
      if (!v8)
      {
        break;
      }

      LODWORD(v13) = v13 + v14;
      v7 = *(v17 + 32);
      *(v17 + 40) |= 1u;
      v11 = *v7;
      v12 = &v7[2 * v11];
    }

    v18 = *v7;
    v19 = &v7[2 * v18];
    v20 = *(v19 + 1);
    if (!*(v19 + 1) || (v10 >= v20 ? (v21 = *(v19 + 1)) : (v21 = v10), v10 == v20 && a4[1] == v10))
    {
      v22 = v18 - 2;
      v23 = 2;
    }

    else
    {
      v24 = &v7[2 * *v7];
      v23 = v24[2] - v21;
      j__mkostemp(&v7[v23], v9);
      LODWORD(v9) = v9 + v21;
      LODWORD(v10) = v10 - v21;
      *v24 = v23;
      *(v19 - 2) = 3;
      v25 = *v7;
      *&v7[2 * v25 + 2] -= v21;
      v22 = v25 + 2;
    }

    *&v7[2 * v22] = v23;
    v7 = *(v5 + 32);
    *(v5 + 40) |= 1u;
    v11 = *v7;
    v4 = a4;
  }

  if (!v10)
  {
    return 0;
  }

  while (1)
  {
    v26 = v10 >= (*&v7[2 * v11 + 2] - 8) ? *&v7[2 * v11 + 2] - 8 : v10;
    if (v10 == (*&v7[2 * v11 + 2] - 8))
    {
      v26 -= v4[1] == v10;
    }

    v27 = *&v7[2 * v11 + 4] - v26;
    j__mkostemp(&v7[v27], v9);
    LODWORD(v10) = v10 - v26;
    v28 = *v7;
    *&v7[2 * v28 + 2] = v27;
    v29 = v28 + 2;
    *v7 = v28 + 2;
    *&v7[2 * (v28 + 2) + 2] = v27 - 2 * v28 - 10;
    *&v7[2 * (v28 + 2) + 4] = v27;
    if (!v10)
    {
      break;
    }

    *&v7[2 * v29] = 2;
    v30 = __add_ovflpage(a1, v5);
    if (!v30)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v30;
    LODWORD(v9) = v9 + v26;
    v7 = *(v30 + 32);
    v11 = *v7;
    *(v30 + 40) |= 1u;
  }

  result = 0;
  *&v7[2 * v29] = 3;
  *(v5 + 40) |= 1u;
  return result;
}

uint64_t __big_delete(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = 0;
  buf = a2;
  while (1)
  {
    v7 = *(buf + 32);
    v8 = v7[2];
    if (v5)
    {
      break;
    }

    v5 = (v8 & 0xFFFE) == 2;
    v9 = *v7;
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    if (v7[v9 + 1])
    {
      goto LABEL_16;
    }

LABEL_11:
    v10 = v7[v9 - 1];
    *(buf + 40) |= 1u;
    buf = __get_buf(a1, v10, buf, 0);
    if (v4)
    {
      __free_ovflpage(a1, v4);
    }

    v4 = buf;
    if (!buf)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v8 != 3)
  {
    if ((v8 & 0xFFFE) == 2)
    {
      v5 = 1;
    }

    LODWORD(v9) = *v7;
LABEL_10:
    v9 = v9;
    goto LABEL_11;
  }

  LODWORD(v9) = *v7;
LABEL_16:
  v12 = *(a2 + 32);
  if (v9 < 3)
  {
    v13 = 0;
  }

  else
  {
    v12[1] = v7[v9 - 1];
    v12[2] = 0;
    v13 = *(buf + 16);
  }

  *(a2 + 16) = v13;
  *v12 = v9 - 2;
  v14 = *(a1 + 12);
  v15 = &v12[(v9 - 2)];
  v15[1] = v14 - 2 * v9 - 2;
  v15[2] = v14;
  *(a2 + 40) |= 1u;
  if (buf)
  {
    __free_ovflpage(a1, buf);
  }

  if (v4 && v4 != buf)
  {
    __free_ovflpage(a1, v4);
  }

  result = 0;
  --*(a1 + 56);
  return result;
}

uint64_t __find_bigpair(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v7 = a3;
  v8 = *(a2 + 32);
  v9 = *(a1 + 12) - *(v8 + 2 * a3);
  v10 = v9;
  if (v9 <= a5)
  {
    v13 = a2;
    v11 = a5;
    while (*(v8 + 2 * v7 + 2) == 1)
    {
      v15 = v7;
      v16 = *(v8 + 2 * v7);
      v17 = v9;
      if (j__mkdtemp((v8 + v16)))
      {
        return 4294967294;
      }

      buf = __get_buf(a1, *(v8 + 2 * v15 + 4), v13, 0);
      if (!buf)
      {
        return 4294967293;
      }

      v13 = buf;
      v11 -= v10;
      a4 += v17;
      v8 = *(buf + 32);
      v9 = *(a1 + 12) - *(v8 + 2);
      v10 = v9;
      v7 = 1;
      if (v9 > a5)
      {
        break;
      }
    }
  }

  else
  {
    v11 = a5;
  }

  v12 = 4294967294;
  if (v11 == v10)
  {
    if (j__mkdtemp((v8 + *(v8 + 2 * v7))))
    {
      return 4294967294;
    }

    else
    {
      return v7;
    }
  }

  return v12;
}

unint64_t __find_last_page(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  while (1)
  {
    v5 = *(v4 + 32);
    v6 = *v5;
    v7 = &v5[v6];
    if (v5[2] == 3)
    {
      if (v6 == 2)
      {
        result = 0;
        *a2 = v4;
        return result;
      }

      if (!*v7 || v7[1])
      {
        break;
      }
    }

    result = __get_buf(a1, *(v7 - 1), v4, 0);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  *a2 = v4;
  if (v6 < 3)
  {
    return 0;
  }

  else
  {
    return v5[3];
  }
}

uint64_t __big_return(uint64_t a1, unint64_t buf, int a3, void *a4, uint64_t a5)
{
  for (i = a3 + 1; ; i = 2)
  {
    v10 = *(buf + 32);
    v11 = v10[i];
    v12 = *v10;
    v13 = &v10[v12];
    if (v11 != 1)
    {
      break;
    }

    buf = __get_buf(a1, *(v13 - 1), buf, 0);
    if (!buf)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v11 == 2)
  {
    v14 = __get_buf(a1, *(v13 - 1), buf, 0);
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *(v14 + 24);
      LODWORD(v18) = *(*(v14 + 32) + 2);
      buf = v14;
LABEL_14:
      result = collect_data(a1, v15, v16, a5);
      a4[1] = result;
      if (result == -1)
      {
        return result;
      }

      if (*(buf + 24) == v17)
      {
        j__mkostemp(*(a1 + 288), *(buf + 32) + v18);
        result = 0;
        *a4 = *(a1 + 288);
        return result;
      }

      *__error() = 22;
    }
  }

  else
  {
    v18 = *v13;
    if (v13[1])
    {
      v19 = v10 + v18;
      v20 = v10[1] - v18;
      *a4 = v19;
      a4[1] = v20;
      if (a5)
      {
        if (v12 == 2)
        {
          result = 0;
          *(a1 + 304) = 0;
          ++*(a1 + 312);
          *(a1 + 316) = 1;
          return result;
        }

        v24 = __get_buf(a1, *(v13 - 1), buf, 0);
        *(a1 + 304) = v24;
        if (!v24)
        {
          return 0xFFFFFFFFLL;
        }

        *(a1 + 316) = 1;
        if (!**(v24 + 32))
        {
          result = 0;
          ++*(a1 + 312);
          *(a1 + 304) = 0;
          return result;
        }
      }

      return 0;
    }

    v22 = v10[1];
    v17 = *(buf + 24);
    v23 = __get_buf(a1, *(v13 - 1), buf, 0);
    if (v23)
    {
      v15 = v23;
      v16 = v22 - v18;
      goto LABEL_14;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t collect_data(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a2 + 32);
  v9 = *(a1 + 12) - v8[1];
  v10 = *(a2 + 24);
  if (v8[2] == 3)
  {
    v11 = (v9 + a3);
    v12 = *(a1 + 288);
    if (v12)
    {
      free(v12);
    }

    v13 = malloc_type_malloc(v11, 0x100004077774924uLL);
    *(a1 + 288) = v13;
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    if (a4)
    {
      *(a1 + 316) = 1;
      v14 = *v8;
      if (v14 == 2)
      {
        *(a1 + 304) = 0;
        ++*(a1 + 312);
      }

      else
      {
        buf = __get_buf(a1, v8[v14 - 1], a2, 0);
        *(a1 + 304) = buf;
        if (!buf)
        {
          return 0xFFFFFFFFLL;
        }

        if (!**(buf + 32))
        {
          ++*(a1 + 312);
          *(a1 + 304) = 0;
        }
      }
    }
  }

  else
  {
    v15 = __get_buf(a1, v8[*v8 - 1], a2, 0);
    if (!v15)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = collect_data(a1, v15, (v9 + a3), a4);
    if (v11 < 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(a2 + 24) != v10)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  j__mkostemp((*(a1 + 288) + a3), *(a2 + 32) + v8[1]);
  return v11;
}

uint64_t __big_keydata(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  result = collect_key(a1, a2, 0, a4, a5);
  a3[1] = result;
  if (result != -1)
  {
    result = 0;
    *a3 = *(a1 + 296);
  }

  return result;
}

uint64_t collect_key(uint64_t a1, unint64_t a2, int a3, void *a4, uint64_t a5)
{
  v10 = *(a2 + 32);
  v11 = *(a2 + 24);
  v12 = *(a1 + 12) - v10[1] + a3;
  if ((v10[2] & 0xFFFE) == 2)
  {
    v13 = *(a1 + 296);
    if (v13)
    {
      free(v13);
    }

    v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
    *(a1 + 296) = v14;
    if (!v14 || __big_return(a1, a2, 1, a4, a5))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    buf = __get_buf(a1, v10[*v10 - 1], a2, 0);
    if (!buf)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = collect_key(a1, buf, v12, a4, a5);
    if (v12 < 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(a2 + 24) != v11)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  j__mkostemp((*(a1 + 296) + a3), *(a2 + 32) + v10[1]);
  return v12;
}

uint64_t __big_split(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int16 a5, int a6, uint64_t a7)
{
  v34 = a4;
  result = collect_key(a1, a4, 0, &v33, 0);
  if (result != -1)
  {
    v15 = __call_hash(a1, *(a1 + 296), result);
    last_page = __find_last_page(a1, &v34);
    *(a7 + 24) = last_page;
    if (last_page)
    {
      v17 = v34;
      buf = __get_buf(a1, last_page, v34, 0);
      *(a7 + 16) = buf;
      if (!buf)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      *(a7 + 16) = 0;
      v17 = v34;
    }

    if (v15 == a6)
    {
      v19 = a2;
    }

    else
    {
      v19 = a3;
    }

    *(v19 + 40) |= 1u;
    *(v19 + 16) = a4;
    v20 = *(v19 + 32);
    v21 = *v20;
    v22 = &v20[v21];
    v23 = v22[2];
    LOWORD(v22) = v22[1];
    v20[(v21 + 1)] = a5;
    LOWORD(v21) = v21 + 2;
    v24 = &v20[v21];
    *v24 = 0;
    *v20 = v21;
    v24[2] = v23;
    v24[1] = v22 - 4;
    *a7 = a3;
    *(a7 + 8) = a2;
    v25 = *(v17 + 32);
    *(v17 + 40) |= 1u;
    v26 = *v25;
    if (v26 >= 3)
    {
      v27 = v25[4];
      v28 = &v25[v26];
      v29 = v28[1];
      LOWORD(v28) = v28[2];
      v30 = v26 - 2;
      *v25 = v30;
      v31 = &v25[v30];
      v31[1] = v29 + 4;
      v31[2] = v28;
      v32 = __add_ovflpage(a1, v17);
      if (!v32)
      {
        return 0xFFFFFFFFLL;
      }

      v17 = v32;
      v25[4] = v27;
    }

    result = 0;
    *(a7 + 8 * (v15 == a6)) = v17;
  }

  return result;
}

unint64_t __get_buf(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    v9 = (*(a1 + 24) - 1) & a2;
    v10 = *(*(a1 + 648) + 8 * (a2 >> *(a1 + 28)));
    v12 = *(v10 + 8 * v9);
    result = v12 & 0xFFFFFFFFFFFFFFFCLL;
    if ((v12 & 2) != 0)
    {
      v8 = *(v10 + 8 * v9) & 2;
      v11 = 1;
      if (!result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = 0;
      v11 = *(a1 + 324) == 0;
      if (!result)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v14 = *result;
    v13 = *(result + 8);
    *(v14 + 8) = v13;
    *v13 = v14;
    v15 = *(a1 + 608);
    *result = a1 + 600;
    *(result + 8) = v15;
    *(a1 + 608) = result;
    **(result + 8) = result;
    return result;
  }

  result = *(a3 + 16);
  if (!result || *(result + 24) != a2)
  {
    result = 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2 * (a4 == 0);
  if (result)
  {
    goto LABEL_9;
  }

LABEL_12:
  v16 = a1 + 600;
  v17 = *(a1 + 600);
  v18 = *(a1 + 304);
  if (v17 == v18)
  {
    v20 = *v17;
    v19 = *(v17 + 8);
    *(v20 + 8) = v19;
    *v19 = v20;
    v21 = *(a1 + 608);
    *v17 = v16;
    *(v17 + 8) = v21;
    *(a1 + 608) = v17;
    **(v17 + 8) = v17;
    v17 = *(a1 + 600);
  }

  v22 = *(a1 + 596);
  if (!a3 || v22)
  {
    if (v22)
    {
LABEL_28:
      result = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040DD04DACBuLL);
      if (!result)
      {
        return result;
      }

      v17 = result;
      v30 = malloc_type_calloc(1uLL, *(a1 + 12), 0x100004077774924uLL);
      *(v17 + 32) = v30;
      if (v30)
      {
        v31 = *(a1 + 596);
        if (v31)
        {
          *(a1 + 596) = v31 - 1;
        }

        goto LABEL_53;
      }

      free(v17);
      return 0;
    }
  }

  else
  {
    v23 = *(v17 + 16);
    if (v23)
    {
      while (v23 != a3)
      {
        v23 = *(v23 + 16);
        if (!v23)
        {
          goto LABEL_21;
        }
      }

      *(a1 + 596) = 1;
      goto LABEL_28;
    }
  }

LABEL_21:
  v24 = *(v17 + 40);
  if ((v24 & 8) != 0 || v17 == v18)
  {
    goto LABEL_28;
  }

  v26 = *v17;
  v25 = *(v17 + 8);
  *(v26 + 8) = v25;
  *v25 = v26;
  v27 = *(v17 + 24);
  if (v24 & 4 | v27)
  {
    v28 = *(v17 + 32);
    if (*v28)
    {
      v29 = v28[*v28 - 1];
      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v29 = 0;
      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    if (__put_page(a1, v28, v27, v24 & 4, 0))
    {
      return 0;
    }

    v24 = *(v17 + 40);
LABEL_37:
    v47 = v8;
    v48 = (a1 + 600);
    if ((v24 & 4) != 0)
    {
      v32 = *(v17 + 24);
      v33 = (*(a1 + 24) - 1) & v32;
      v34 = *(*(a1 + 648) + 8 * (v32 >> *(a1 + 28)));
      if (*(a1 + 324) && ((v33 = v33, (v24 & 1) != 0) || (*(v34 + 8 * v33) & 2) != 0))
      {
        v35 = 2;
      }

      else
      {
        v35 = 0;
      }

      *(v34 + 8 * v33) = v35;
    }

    v36 = (v17 + 16);
    for (i = *(v17 + 16); i; v29 = v39)
    {
      *v36 = 0;
      if ((i[5] & 4) != 0 || *(i + 6) != v29)
      {
        break;
      }

      v38 = i[4];
      v39 = v29;
      if (*v38)
      {
        v39 = v38[*v38 - 1];
      }

      if ((i[5] & 1) != 0 && __put_page(a1, v38, v29, 0, 0))
      {
        return 0;
      }

      *(i + 6) = 0;
      *(i + 40) = 0;
      v41 = *i;
      v40 = i[1];
      *(v41 + 8) = v40;
      *v40 = v41;
      v42 = *v48;
      v43 = *(*v48 + 8);
      *i = *v48;
      i[1] = v43;
      *(v42 + 8) = i;
      *i[1] = i;
      v36 = i + 2;
      i = i[2];
    }

    v8 = v47;
    v16 = a1 + 600;
  }

LABEL_53:
  *(v17 + 24) = a2;
  *(v17 + 16) = 0;
  if (a3)
  {
    v44 = 0;
    *(a3 + 16) = v17;
  }

  else
  {
    v44 = 4;
  }

  *(v17 + 40) = v44;
  v45 = *(a1 + 608);
  *v17 = v16;
  *(v17 + 8) = v45;
  *(a1 + 608) = v17;
  **(v17 + 8) = v17;
  page = __get_page(a1, *(v17 + 32), a2, a3 == 0, v11, 0);
  if (page)
  {
    result = 0;
  }

  else
  {
    result = v17;
  }

  if (!a3 && !page)
  {
    *(v10 + 8 * v9) = v8 | v17;
    return v17;
  }

  return result;
}

uint64_t __buf_init(uint64_t result, int a2)
{
  v2 = (a2 + *(result + 12) - 1) >> *(result + 16);
  if (v2 <= 6)
  {
    v2 = 6;
  }

  *(result + 596) = v2;
  *(result + 608) = result + 600;
  *(result + 600) = result + 600;
  return result;
}

uint64_t __buf_free(uint64_t a1, int a2, int a3)
{
  v3 = (a1 + 600);
  v4 = *(a1 + 600);
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  while (1)
  {
    v9 = *(v4 + 6);
    if (!v9)
    {
      break;
    }

    if (a3)
    {
      v10 = *(v4 + 40);
      goto LABEL_10;
    }

LABEL_12:
    if (a2)
    {
      v11 = v4[4];
      if (v11)
      {
        MEMORY[0x193AD5FD0](v11, *(a1 + 12));
        free(v4[4]);
      }

      v13 = *v4;
      v12 = v4[1];
      v13[1] = v12;
      *v12 = v13;
      free(v4);
      v4 = v3;
    }

    v4 = *v4;
    if (v4 == v3)
    {
      return 0;
    }
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  v10 = *(v4 + 40);
  if ((v10 & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if ((v10 & 1) == 0 || !__put_page(a1, v4[4], v9, v10 & 4, 0))
  {
    goto LABEL_12;
  }

  return 0xFFFFFFFFLL;
}

uint64_t __reclaim_buf(uint64_t result, uint64_t *a2)
{
  a2[2] = 0;
  *(a2 + 6) = 0;
  *(a2 + 40) = 0;
  v3 = *a2;
  v2 = a2[1];
  *(v3 + 8) = v2;
  *v2 = v3;
  v4 = *(result + 600);
  v5 = *(v4 + 8);
  *a2 = v4;
  a2[1] = v5;
  *(v4 + 8) = a2;
  *a2[1] = a2;
  return result;
}

uint64_t hash4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = (a2 + 7) >> 3;
    v4 = a2 & 7;
    if (v4 > 3)
    {
      if ((a2 & 7u) <= 5uLL)
      {
        if (v4 == 4)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (v4 == 6)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if ((a2 & 7u) > 1uLL)
    {
      if (v4 == 2)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if ((a2 & 7) == 0)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v12 = *a1++;
      v2 = (v2 + v12);
      if (!--v3)
      {
        break;
      }

LABEL_13:
      v5 = *a1++;
      LODWORD(v2) = 33 * (33 * v2 + v5);
LABEL_14:
      v6 = *a1++;
      LODWORD(v2) = 33 * (v2 + v6);
LABEL_15:
      v7 = *a1++;
      LODWORD(v2) = 33 * (v2 + v7);
LABEL_16:
      v8 = *a1++;
      LODWORD(v2) = 33 * (v2 + v8);
LABEL_17:
      v9 = *a1++;
      LODWORD(v2) = 33 * (v2 + v9);
LABEL_18:
      v10 = *a1++;
      LODWORD(v2) = 33 * (v2 + v10);
LABEL_19:
      v11 = *a1++;
      LODWORD(v2) = 33 * (v2 + v11);
    }
  }

  return v2;
}

uint64_t __log2(unsigned int a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  LODWORD(v1) = 0;
  for (i = 1; i < a1; i *= 2)
  {
    v1 = (v1 + 1);
  }

  return v1;
}

uint64_t __delpair(_DWORD *a1, unint64_t a2, int a3)
{
  v5 = *(a2 + 32);
  v6 = &v5[2 * a3];
  v7 = *(v6 + 1);
  if (v7 > 3)
  {
    v10 = *v5;
    if (a3 == 1)
    {
      LODWORD(v6) = a1[3];
    }

    else
    {
      LOWORD(v6) = *(v6 - 1);
    }

    v11 = v6 - v7;
    if (v10 - 1 != a3)
    {
      v12 = *&v5[2 * v10 + 4];
      j__mkostemp(&v5[v12 + v11], v5 + v12);
      LODWORD(v13) = a3 + 2;
      if (a3 + 2 <= v10)
      {
        v13 = v13;
        v14 = a3;
        do
        {
          v15 = &v5[2 * v14];
          v16 = *(v15 + 3);
          v17 = v16 + v11;
          v18 = v16 == 0;
          if (*(v15 + 3))
          {
            v19 = v11;
          }

          else
          {
            v19 = 0;
          }

          v20 = *&v5[2 * v13] + v19;
          if (v18)
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

          *v15 = v20;
          *(v15 + 1) = v21;
          v13 += 2;
          v14 += 2;
        }

        while (v13 <= v10);
      }

      if (a1[79] == a3)
      {
        a1[79] = a3 - 2;
      }
    }

    v22 = &v5[2 * v10];
    *v22 = *&v5[2 * *v5 + 4] + v11;
    *&v5[2 * v10 - 2] = v11 + *(v22 + 1) + 4;
    *v5 = v10 - 2;
    --a1[14];
    *(a2 + 40) |= 1u;
    return 0;
  }

  else
  {

    return __big_delete(a1, a2);
  }
}

uint64_t __split_page(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 12);
  buf = __get_buf(a1, a2, 0, 0);
  if (!buf)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = buf;
  v9 = __get_buf(v5, a3, 0, 0);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  *(v8 + 40) |= 9u;
  *(v9 + 40) |= 9u;
  v11 = *(v8 + 32);
  LODWORD(v12) = *v11;
  if (v12 < 2)
  {
    LOWORD(v14) = 0;
    goto LABEL_16;
  }

  v63 = v9;
  v64 = v8;
  v13 = 0;
  v14 = 0;
  v67 = *(v9 + 32);
  v73 = 1;
  v15 = v6;
  v70 = v5;
  v69 = v4;
  while (1)
  {
    v16 = &v11[2 * v13];
    if (*(v16 + 2) <= 3u)
    {
      break;
    }

    v17 = *(v16 + 1);
    v18 = v15 - v17;
    if (__call_hash(v5, &v11[v17], v15 - v17) == v4)
    {
      if (v6 == v15)
      {
        v6 = *(v16 + 2);
        v19 = v73;
      }

      else
      {
        v27 = v6 - v15;
        v28 = *(v16 + 2);
        v6 = (v28 + v6 - v15);
        j__mkostemp(&v11[(v28 + v27)], v11 + v28);
        v19 = v73;
        v29 = &v11[2 * v73];
        *v29 = *(v16 + 1) + v6 - *(v16 + 2);
        *(v29 + 1) = v6;
      }

      v73 = v19 + 2;
    }

    else
    {
      v20 = *(v16 + 2);
      v21 = *(v16 + 1) - v20;
      v22 = *v67;
      v71 = v14;
      v23 = *&v67[2 * v22 + 4] - v18;
      j__mkostemp(&v67[v23], v11 + v17);
      *&v67[2 * (v22 + 1)] = v23;
      v24 = v11 + v20;
      v5 = v70;
      j__mkostemp(&v67[(v23 - v21)], v24);
      v25 = v22 + 2;
      v4 = v69;
      v26 = &v67[2 * v25];
      *v26 = v23 - v21;
      *v67 = v25;
      *(v26 + 1) = v23 - v21 - 2 * v25 - 6;
      *(v26 + 2) = v23 - v21;
      v14 = v71 + 2;
    }

    v15 = *(v16 + 2);
    v12 = *v11;
    v30 = v13 + 3;
    v13 += 2;
    if (v30 >= v12)
    {
      v10 = v63;
      v8 = v64;
LABEL_16:
      result = 0;
      v32 = v12 - v14;
      *v11 = v32;
      v33 = v6 - 2 * v32 - 6;
      v34 = &v11[2 * v32];
      *(v34 + 1) = v33;
      *(v34 + 2) = v6;
      goto LABEL_17;
    }
  }

  v76 = 0u;
  v77 = 0u;
  v8 = v64;
  v35 = *(v64 + 32);
  LOWORD(v36) = *v35;
  if (!*v35)
  {
    result = 0;
    v10 = v63;
    goto LABEL_17;
  }

  v37 = v6;
  *&v61[8] = 0;
  v62 = v64;
  *v61 = v14;
  v38 = v36 - 1;
  v10 = v63;
  v65 = *(v63 + 32);
  v66 = *(v64 + 32);
  v72 = v63;
  v68 = v64;
  do
  {
    if (v35[2] - 4 >= 0xFFFFFFFD)
    {
      if (__big_split(v5, v68, v72, v62, *(v62 + 24), v4, &v76) || !*(&v76 + 1) || (v72 = v76) == 0)
      {
LABEL_56:
        result = 0xFFFFFFFFLL;
        goto LABEL_17;
      }

      if (!v77)
      {
        goto LABEL_59;
      }

      v68 = *(&v76 + 1);
      v65 = *(v76 + 32);
      v66 = *(*(&v76 + 1) + 32);
      *&v61[4] = v77;
      v62 = v77;
      v35 = *(v77 + 32);
LABEL_31:
      v44 = v37;
      goto LABEL_32;
    }

    if (v35[v38 + 1])
    {
      goto LABEL_31;
    }

    v39 = v35[v38];
    v40 = v36 - *v61 - 2;
    *v35 = v40;
    v41 = v37 - 2 * v40 - 6;
    v42 = &v35[v40];
    v42[1] = v41;
    v42[2] = v37;
    v43 = __get_buf(v5, v39, v62, 0);
    if (!v43)
    {
      goto LABEL_56;
    }

    v35 = *(v43 + 32);
    v44 = v5[3];
    v62 = v43;
    if (*&v61[4])
    {
      v45 = v43;
      __free_ovflpage(v5, *&v61[4]);
      *v61 = 0;
      *&v61[4] = v45;
    }

    else
    {
      *v61 = 0;
      *&v61[4] = v43;
    }

LABEL_32:
    v36 = *v35;
    v75 = v44;
    if (v36 >= 2)
    {
      v46 = v35[2];
      if (v46 >= 4)
      {
        v47 = *(v5 + 6);
        v48 = 1;
        v38 = 1;
        while (1)
        {
          v49 = v46;
          v50 = v35[v48];
          v51 = v47 - v50;
          v52 = v50 - v46;
          v74 = v50 - v46;
          if (__call_hash(v5, v35 + v50, v51) == v4)
          {
            if (*(v66 + 2) >= 4u && (v53 = *v66, v54 = &v66[2 * v53], v51 + v52 + 8 <= v54[1]))
            {
              v57 = v66;
              v56 = v68;
            }

            else
            {
              v55 = __add_ovflpage(v5, v68);
              if (!v55)
              {
                goto LABEL_55;
              }

              v56 = v55;
              v57 = *(v55 + 32);
              v53 = *v57;
              v54 = &v57[2 * v53];
              v66 = v57;
              v68 = v55;
            }
          }

          else if (*(v65 + 2) >= 4u && (v53 = *v65, v54 = &v65[2 * v53], v51 + v52 + 8 <= v54[1]))
          {
            v57 = v65;
            v56 = v72;
          }

          else
          {
            v58 = __add_ovflpage(v5, v72);
            if (!v58)
            {
LABEL_55:
              result = 0xFFFFFFFFLL;
              v10 = v63;
              v8 = v64;
              goto LABEL_17;
            }

            v56 = v58;
            v57 = *(v58 + 32);
            v53 = *v57;
            v54 = &v57[2 * v53];
            v72 = v58;
            v65 = v57;
          }

          v47 = v49;
          v59 = v54[2] - v51;
          j__mkostemp(&v57[v59], v35 + v50);
          *&v57[2 * (v53 + 1)] = v59;
          j__mkostemp(&v57[(v59 - v74)], v35 + v49);
          v60 = &v57[2 * (v53 + 2)];
          *v60 = v59 - v74;
          *v57 = v53 + 2;
          *(v60 + 1) = v59 - v74 - 2 * (v53 + 2) - 6;
          *(v60 + 2) = v59 - v74;
          *(v56 + 40) |= 1u;
          v38 += 2;
          v36 = *v35;
          if (v36 <= v38)
          {
            v5 = v70;
            v4 = v69;
            goto LABEL_50;
          }

          v48 = v38;
          v46 = v35[v38 + 1];
          v5 = v70;
          v4 = v69;
          if (v46 < 4)
          {
            goto LABEL_50;
          }
        }
      }
    }

    v38 = 1;
LABEL_50:
    v10 = v63;
    v8 = v64;
    v37 = v75;
  }

  while (v36 > v38);
  if (*&v61[4])
  {
    __free_ovflpage(v5, *&v61[4]);
  }

LABEL_59:
  result = 0;
LABEL_17:
  *(v8 + 40) &= ~8u;
  *(v10 + 40) &= ~8u;
  return result;
}

uint64_t __addel(_DWORD *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = a2;
  for (i = *(a2 + 32); ; i = *(buf + 32))
  {
    v9 = *i;
    if (!*i)
    {
      goto LABEL_15;
    }

    v10 = i[2];
    if (v10 >= 4)
    {
      break;
    }

    if (*i == 2 && v10 == 3)
    {
      v9 = 2;
LABEL_15:
      if (i[2] >= 4u)
      {
        v17 = a3[1];
        v18 = &i[v9];
        if (v17 + a4[1] + 8 <= v18[1])
        {
          v26 = v18[2] - v17;
          j__mkostemp(i + v26, *a3);
          i[(v9 + 1)] = v26;
          v27 = *a4;
          v28 = v26 - a4[1];
          j__mkostemp(i + v28, v27);
          v29 = &i[(v9 + 2)];
          *v29 = v28;
          *i = v9 + 2;
          LOWORD(v30) = v28 - 2 * (v9 + 2) - 6;
          v31 = v28;
          goto LABEL_24;
        }
      }

      v19 = __add_ovflpage(a1, v6);
      if (v19)
      {
        v20 = v19;
        v21 = *(v19 + 32);
        if (*(v21 + 2) >= 4u && (v22 = a3[1], v23 = *v21, v24 = &v21[2 * v23], v22 + a4[1] + 8 <= v24[1]))
        {
          v38 = v24[2] - v22;
          j__mkostemp(&v21[v38], *a3);
          *&v21[2 * (v23 + 1)] = v38;
          v39 = *a4;
          v40 = v38 - a4[1];
          j__mkostemp(&v21[v40], v39);
          v41 = &v21[2 * (v23 + 2)];
          *v41 = v40;
          *v21 = v23 + 2;
          v41[1] = v40 - 2 * (v23 + 2) - 6;
          v41[2] = v40;
        }

        else if (__big_insert(a1, v19, a3, a4))
        {
          return 0xFFFFFFFFLL;
        }

        *(v20 + 40) |= 1u;
        ++a1[14];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    v11 = &i[v9];
    if (*v11)
    {
      goto LABEL_12;
    }

    v12 = *i;
LABEL_11:
    v11 = &i[v12];
LABEL_12:
    buf = __get_buf(a1, *(v11 - 1), v6, 0);
    if (!buf)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = buf;
  }

  v13 = &i[v9];
  if (*v13)
  {
    goto LABEL_15;
  }

  v14 = v13[1];
  v15 = a3[1];
  if (v15 + a4[1] + 4 > v14)
  {
    v12 = v9;
    goto LABEL_11;
  }

  v32 = *i + 2;
  v33 = *(v13 - 1);
  v34 = i[v32] - v15;
  *(v13 - 1) = v34;
  j__mkostemp(i + v34, *a3);
  v35 = *a4;
  v31 = v34 - a4[1];
  *v13 = v31;
  j__mkostemp(i + v31, v35);
  *i = v32;
  v13[1] = v33;
  i[v32] = 0;
  v30 = v14 - (*(a3 + 2) + *(a4 + 2)) - 4;
  v29 = &i[v32];
LABEL_24:
  v29[1] = v30;
  v29[2] = v31;
  *(v6 + 40) |= 1u;
  v36 = a1[13];
  v37 = a1[14] + 1;
  a1[14] = v37;
  if (v37 / (a1[10] + 1) <= v36)
  {
    return 0;
  }

LABEL_28:

  return __expand_table(a1);
}

unint64_t __add_ovflpage(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 32);
  if (*(a1 + 52) == 0x10000)
  {
    v5 = *v4;
    if (v5 >= 8)
    {
      v6 = v5 >> 1;
    }

    else
    {
      v6 = 4;
    }

    *(a1 + 52) = v6;
  }

  *(a2 + 40) |= 1u;
  v7 = a1 + 68;
  v8 = *(a1 + 32);
  v9 = *(a1 + 68 + 4 * v8);
  v10 = (8 * *(a1 + 12) - 1) & (v9 - 1);
  v11 = (v9 - 1) >> (*(a1 + 16) + 3);
  v12 = *(a1 + 36) >> (*(a1 + 16) + 3);
  if (v12 <= v11)
  {
    v51 = v4;
    v16 = v12;
    v17 = v11;
    v49 = (v9 - 1) >> (*(a1 + 16) + 3);
    v18 = v11 + 1;
    v19 = 8 * v12;
    v20 = v12;
    while (1)
    {
      result = *(a1 + 336 + 8 * v20);
      if (!result)
      {
        result = fetch_bitmap(a1, v20);
        if (!result)
        {
          return result;
        }
      }

      v21 = v10;
      if (v20 != v17)
      {
        v21 = 8 * *(a1 + 12) - 1;
      }

      if (v20 == v16)
      {
        v22 = (8 * *(a1 + 12) - 1) & *(a1 + 36);
        v23 = v22 + 31;
        if (v22 < 0 == __OFSUB__(v20, v16))
        {
          v23 = (8 * *(a1 + 12) - 1) & *(a1 + 36);
        }

        v24 = v22 & 0xFFFFFFE0;
        v25 = v23 >> 5;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      if (v24 <= v21)
      {
        v26 = (result + 4 * v25);
        while (1)
        {
          v28 = *v26++;
          v27 = v28;
          if (v28 != -1)
          {
            break;
          }

          v24 += 32;
          if (v24 > v21)
          {
            goto LABEL_26;
          }
        }

        v29 = 0;
        if (v27)
        {
          v30 = 1;
          v2 = a2;
          v4 = v51;
          do
          {
            v31 = v29++;
            if (v31 > 0x1E)
            {
              break;
            }

            v32 = v27 & (2 * v30);
            v30 *= 2;
          }

          while (v32);
        }

        else
        {
          v2 = a2;
          v4 = v51;
        }

        v33 = v29 + v24 + 31;
        if ((v29 + v24) >= 0)
        {
          v33 = v29 + v24;
        }

        *(result + 4 * (v33 >> 5)) |= 1 << v29;
        v34 = *(a1 + 12);
        v35 = v29 + v24 + v34 * v19;
        v36 = v35 + 1;
        if (v35 + 1 >= *(a1 + 36))
        {
          *(a1 + 36) = v35;
        }

        if (v8 < 1)
        {
          goto LABEL_44;
        }

        v37 = 0;
        while (v36 > *(v7 + 4 * v37))
        {
          if (v8 == ++v37)
          {
            LODWORD(v37) = v8;
            break;
          }
        }

        if (v37)
        {
          v36 = v29 + v34 * v19 - *(v7 + 4 * v37 - 4) + v24 + 1;
          v38 = v37 << 11;
        }

        else
        {
LABEL_44:
          v38 = 0;
        }

        if (v36 < 2047)
        {
          v39 = v36 + v38;
          goto LABEL_57;
        }

        goto LABEL_52;
      }

LABEL_26:
      ++v20;
      v19 += 8;
      if (v18 == v20)
      {
        v9 = *(v7 + 4 * v8);
        v2 = a2;
        v4 = v51;
        v11 = v49;
        goto LABEL_8;
      }
    }
  }

  result = 0;
LABEL_8:
  *(a1 + 36) = v9;
  v14 = *(v7 + 4 * v8);
  v15 = v14 + 1;
  *(v7 + 4 * v8) = v14 + 1;
  if (!v8)
  {
    if (v14 <= 2046)
    {
      LODWORD(v8) = 0;
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v15 -= *(v7 + 4 * v8 - 4);
  if (v15 > 2047)
  {
    if (v8 >= 31)
    {
      goto LABEL_52;
    }

LABEL_48:
    *(a1 + 32) = v8 + 1;
    v40 = *(v7 + 4 * v8);
    *(v7 + 4 * (v8 + 1)) = v40;
    *(v7 + 4 * v8) = v40 - 1;
    v15 = 1;
    LODWORD(v8) = v8 + 1;
  }

LABEL_50:
  if (v10 == 8 * *(a1 + 12) - 1)
  {
    if (v11 >= 31)
    {
LABEL_52:
      write_NOCANCEL();
      v41 = __error();
      result = 0;
      *v41 = 27;
      return result;
    }

    if (__ibitmap(a1, v15 + (v8 << 11), 1, v11 + 1))
    {
      return 0;
    }

    ++*(v7 + 4 * v8);
    if (v15 < 2047)
    {
      LOWORD(v15) = v15 + 1;
    }

    else
    {
      if (v8 >= 31)
      {
        goto LABEL_52;
      }

      LOWORD(v15) = 0;
      v47 = v8;
      v8 = v8 + 1;
      *(a1 + 32) = v8;
      v48 = *(v7 + 4 * v47);
      *(v7 + 4 * v8) = v48;
      *(v7 + 4 * v47) = v48 - 1;
    }
  }

  else
  {
    v42 = v10 + 32;
    if (v10 >= -1)
    {
      v42 = v10 + 1;
    }

    *(result + 4 * (v42 >> 5)) |= 1 << (v10 + 1);
  }

  v39 = v15 + (v8 << 11);
LABEL_57:
  if (!v39)
  {
    return 0;
  }

  result = __get_buf(a1, v39, v2, 1);
  *(v2 + 16) = result;
  if (result)
  {
    *(result + 40) |= 1u;
    v43 = *v4;
    v44 = v43 + 2;
    v45 = v4[v43 + 2];
    v46 = &v4[v43];
    v46[4] = v45;
    v46[3] = v46[1] - 4;
    v46[1] = v39;
    v4[v44] = 0;
    *v4 = v44;
  }

  return result;
}

uint64_t __get_page(_DWORD *a1, unsigned __int16 *a2, unsigned int a3, int a4, int a5, int a6)
{
  v7 = a1[3];
  if (!a5 || a1[71] == -1)
  {
    result = 0;
    *a2 = 0;
    a2[1] = v7 - 6;
    a2[2] = v7;
    return result;
  }

  if (a4)
  {
    if (a3)
    {
      __log2(a3 + 1);
    }
  }

  else
  {
    v11 = 1 << (a3 >> 11);
    if (v11 != 1)
    {
      __log2(v11);
    }
  }

  result = pread_NOCANCEL();
  if (result != -1)
  {
    if (result)
    {
      if (v7 != result)
      {
        *__error() = 79;
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      *a2 = 0;
    }

    if (a6)
    {
      if (a1[2] != 1234)
      {
        v12 = (a1[3] >> 2);
        if (v12 >= 1)
        {
          v13 = a2 + 1;
          do
          {
            *(v13 - 1) = bswap32(*(v13 - 1));
            v13 += 4;
            --v12;
          }

          while (v12);
        }
      }

      return 0;
    }

    v14 = *a2;
    if (*a2)
    {
      if (a1[2] == 1234)
      {
        return 0;
      }

      *a2 = HIBYTE(v14);
      *(a2 + 1) = v14;
      v16 = *a2 + 2;
      v17 = a2 + 3;
      do
      {
        result = 0;
        *(v17 - 1) = bswap32(*(v17 - 1)) >> 16;
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    else
    {
      result = 0;
      v15 = *(a1 + 6);
      a2[1] = v15 - 6;
      a2[2] = v15;
    }
  }

  return result;
}

uint64_t __put_page(_DWORD *a1, _WORD *a2, unsigned int a3, int a4, int a5)
{
  v10 = a1[3];
  if (a1[71] == -1)
  {
    if (issetugid())
    {
      v12 = 0;
    }

    else
    {
      v12 = getenv("TMPDIR");
    }

    v27 = 0;
    v15 = "/tmp";
    if (v12)
    {
      v15 = v12;
    }

    if (snprintf(__str, 0x400uLL, "%s/_hash.XXXXXX", v15) >= 0x400)
    {
      v16 = __error();
      v17 = 63;
LABEL_38:
      *v16 = v17;
      return 0xFFFFFFFFLL;
    }

    v28 = -1;
    sigprocmask(1, &v28, &v27);
    v18 = mkstemp(__str);
    a1[71] = v18;
    if (v18 != -1)
    {
      unlink(__str);
      fcntl_NOCANCEL();
    }

    sigprocmask(3, &v27, 0);
    if (a1[71] == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (a1[2] == 1234)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }
  }

  else if (a5)
  {
    v11 = a1[3] >> 2;
    if (v11 >= 1)
    {
      v13 = a2 + 1;
      v14 = (a1[3] >> 2);
      do
      {
        *(v13 - 1) = bswap32(*(v13 - 1));
        v13 += 4;
        --v14;
      }

      while (v14);
    }

    if (!a4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v19 = *a2;
    v20 = v19 + 3;
    v21 = a2;
    do
    {
      *v21 = bswap32(*v21) >> 16;
      ++v21;
      --v20;
    }

    while (v20);
    v11 = v19 + 2;
    if (!a4)
    {
LABEL_27:
      v22 = 1 << (a3 >> 11);
      if (v22 != 1)
      {
        __log2(v22);
      }

      goto LABEL_29;
    }
  }

  if (a3)
  {
    __log2(a3 + 1);
  }

LABEL_29:
  result = pwrite_NOCANCEL();
  if (result == -1)
  {
    return result;
  }

  if (v10 != result)
  {
    v16 = __error();
    v17 = 79;
    goto LABEL_38;
  }

  if (a1[2] == 1234)
  {
    return 0;
  }

  if (a5)
  {
    if (v11 >= 1)
    {
      v24 = v11;
      v25 = a2 + 1;
      do
      {
        *(v25 - 1) = bswap32(*(v25 - 1));
        v25 += 4;
        --v24;
      }

      while (v24);
    }

    return 0;
  }

  if (v11 < 0)
  {
    return 0;
  }

  v26 = (v11 + 1);
  result = 0;
  do
  {
    *a2 = bswap32(*a2) >> 16;
    ++a2;
    --v26;
  }

  while (v26);
  return result;
}

uint64_t __ibitmap(uint64_t a1, __int16 a2, int a3, int a4)
{
  v8 = malloc_type_malloc(*(a1 + 12), 0x100004052888210uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  ++*(a1 + 592);
  v10 = (a3 - 1) >> 5;
  MEMORY[0x193AD5FD0](v8, 4 * v10 + 4);
  j__mkostemps(&v9[v10 + 1], 255, *(a1 + 12) - (4 * v10 + 4));
  result = 0;
  v9[v10] = -1 << a3;
  *v9 |= 1u;
  *(a1 + 2 * a4 + 196) = a2;
  *(a1 + 8 * a4 + 336) = v9;
  return result;
}

uint64_t __free_ovflpage(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 >= 0x800)
  {
    v5 = a1[(v4 >> 11) + 16];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + (v4 & 0x7FF);
  v7 = v6 - 1;
  v8 = a1[9];
  v9 = __OFSUB__(v6, v8);
  if (v6 <= v8)
  {
    a1[9] = v7;
  }

  v10 = a1[3];
  v11 = v7 >> (a1[4] + 3);
  bitmap = *&a1[2 * v11 + 84];
  if (!bitmap)
  {
    bitmap = fetch_bitmap(a1, v11);
  }

  v13 = (8 * v10 - 1) & v7;
  v14 = v13 + 31;
  if (v13 < 0 == v9)
  {
    v14 = (8 * v10 - 1) & v7;
  }

  *&bitmap[2 * (v14 >> 5)] &= ~(1 << v13);

  return __reclaim_buf(a1, a2);
}

unsigned __int16 *fetch_bitmap(_DWORD *a1, int a2)
{
  if (a1[148] <= a2)
  {
    return 0;
  }

  result = malloc_type_malloc(a1[3], 0x100004052888210uLL);
  *&a1[2 * a2 + 84] = result;
  if (result)
  {
    page = __get_page(a1, result, *(a1 + a2 + 98), 0, 1, 1);
    result = *&a1[2 * a2 + 84];
    if (page)
    {
      free(result);
      return 0;
    }
  }

  return result;
}

DBM *__cdecl dbm_open(const char *a1, int a2, mode_t a3)
{
  v3 = a3;
  v15 = 0;
  v11 = 0x2800001000;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  if (j__strsignal_r(a1, *&a2, a3) < 0x3FD)
  {
    j__strnstr(__big, a1, v6);
    *&__big[j__strsignal_r(__big, v9, v10)] = 6448174;
    return __hash_open(__big, a2, v3, &v11);
  }

  else
  {
    v7 = __error();
    result = 0;
    *v7 = 63;
  }

  return result;
}

datum dbm_fetch(DBM *a1, datum a2)
{
  v5 = 0;
  v6 = 0;
  v7 = a2;
  v2 = (*&a1->__opaque[24])(a1, &v7, &v5, 0);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v6;
  }

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  result.dsize = v3;
  result.dptr = v4;
  return result;
}

datum dbm_firstkey(DBM *a1)
{
  v7 = 0;
  v8 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v1 = *&a1->__opaque[56];
  v2 = (*&a1->__opaque[40])(a1, &v7, v6, 3);
  v3 = *(v1 + 656);
  if (v2)
  {
    v4 = 0;
    *(v1 + 656) = v3 | 1;
  }

  else
  {
    *(v1 + 656) = v3 & 0xFE;
    v4 = v7;
  }

  v5 = v8;
  result.dsize = v5;
  result.dptr = v4;
  return result;
}

datum dbm_nextkey(DBM *a1)
{
  v2 = 0;
  v6 = 0;
  v7 = 0;
  v3 = *&a1->__opaque[56];
  if ((*(v3 + 656) & 1) == 0)
  {
    v5[0] = 0;
    v5[1] = 0;
    if ((*&a1->__opaque[40])(a1, &v6, v5, 7))
    {
      v2 = 0;
      *(v3 + 656) |= 1u;
    }

    else
    {
      v2 = v6;
    }
  }

  v4 = v7;
  result.dsize = v4;
  result.dptr = v2;
  return result;
}

int dbm_delete(DBM *a1, datum a2)
{
  v3 = a2;
  if ((*&a1->__opaque[16])(a1, &v3, 0))
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int dbm_store(DBM *a1, datum a2, datum a3, int a4)
{
  v6 = a2;
  v5 = a3;
  return (*&a1->__opaque[32])(a1, &v6, &v5, 8 * (a4 == 0));
}

MPOOL *__cdecl mpool_open(void *a1, int a2, pgno_t a3, pgno_t a4)
{
  memset(&v13, 0, sizeof(v13));
  if (fstat(a2, &v13))
  {
    return 0;
  }

  if ((v13.st_mode & 0xF000) == 0x8000)
  {
    result = malloc_type_calloc(1uLL, 0x848uLL, 0x10A004011CD96E6uLL);
    if (result)
    {
      v8 = 0;
      result->lqh.tqh_first = 0;
      result->lqh.tqh_last = &result->lqh.tqh_first;
      v9 = 0uLL;
      do
      {
        v10 = &result->hqh[v8];
        v11 = &result->hqh[v8 + 1];
        vst2q_f64(v10, *&v9);
        v8 += 2;
      }

      while (v8 != 128);
      result->maxcache = a4;
      result->npages = v13.st_size / a3;
      result->pagesize = a3;
      result->fd = a2;
    }
  }

  else
  {
    v12 = __error();
    result = 0;
    *v12 = 29;
  }

  return result;
}

void mpool_filter(MPOOL *a1, void (__cdecl *a2)(void *, pgno_t, void *), void (__cdecl *a3)(void *, pgno_t, void *), void *a4)
{
  a1->pgin = a2;
  a1->pgout = a3;
  a1->pgcookie = a4;
}

void *__cdecl mpool_new(MPOOL *a1, pgno_t *a2)
{
  if (a1->npages == -1)
  {
    mpool_new_cold_1();
  }

  result = mpool_bkt(a1);
  if (result)
  {
    npages = a1->npages;
    a1->npages = npages + 1;
    *(result + 10) = npages;
    *a2 = npages;
    *(result + 44) = 2;
    v6 = &a1->lqh + ((*(result + 10) - 1) & 0x7F);
    tqh_first = v6[1].tqh_first;
    p_tqh_first = &v6[1].tqh_first;
    p_tqe_next = &tqh_first->hq.tqe_next;
    *result = tqh_first;
    if (!tqh_first)
    {
      p_tqe_next = p_tqh_first;
    }

    p_tqe_next[1] = result;
    *p_tqh_first = result;
    *(result + 2) = 0;
    *(result + 1) = p_tqh_first;
    tqh_last = a1->lqh.tqh_last;
    *(result + 3) = tqh_last;
    *tqh_last = result;
    a1->lqh.tqh_last = (result + 16);
    return *(result + 4);
  }

  return result;
}

uint64_t mpool_bkt(uint64_t a1)
{
  if (*(a1 + 2064) >= *(a1 + 2068) && (v2 = *a1) != 0)
  {
    while ((*(v2 + 44) & 2) != 0)
    {
      v2 = *(v2 + 16);
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    if ((*(v2 + 44) & 1) != 0 && mpool_write(a1, v2) == -1)
    {
      return 0;
    }

    else
    {
      v5 = *v2;
      v6 = *(v2 + 8);
      if (*v2)
      {
        *(v5 + 8) = v6;
      }

      else
      {
        *(a1 + 16 * ((*(v2 + 40) - 1) & 0x7F) + 24) = v6;
      }

      *v6 = v5;
      v7 = *(v2 + 16);
      v8 = *(v2 + 24);
      v9 = (a1 + 8);
      if (v7)
      {
        v9 = (v7 + 24);
      }

      *v9 = v8;
      *v8 = v7;
    }
  }

  else
  {
LABEL_5:
    v3 = malloc_type_calloc(1uLL, *(a1 + 2080) + 48, 0x10A0040FFF6D027uLL);
    v2 = v3;
    if (v3)
    {
      v3[4] = v3 + 6;
      ++*(a1 + 2064);
    }
  }

  return v2;
}

void *__cdecl mpool_get(MPOOL *a1, pgno_t a2, unsigned int a3)
{
  if (a1->npages <= a2)
  {
    v17 = __error();
    result = 0;
    v18 = 22;
LABEL_14:
    *v17 = v18;
  }

  else
  {
    v3 = *&a2;
    v5 = &a1->hqh[(a2 - 1) & 0x7F];
    v6 = v5;
    while (1)
    {
      v6 = v6->tqh_first;
      if (!v6)
      {
        break;
      }

      if (LODWORD(v6[2].tqh_last) == a2)
      {
        tqh_first = v6->tqh_first;
        tqh_last = v6->tqh_last;
        if (v6->tqh_first)
        {
          v9 = v6->tqh_first;
        }

        else
        {
          v9 = &a1->hqh[(a2 - 1) & 0x7F];
        }

        v9->tqh_last = tqh_last;
        *tqh_last = tqh_first;
        v10 = v5->tqh_first;
        v6->tqh_first = v5->tqh_first;
        if (!v10)
        {
          v10 = &a1->hqh[(a2 - 1) & 0x7F];
        }

        v10->tqh_last = &v6->tqh_first;
        v5->tqh_first = v6;
        v6->tqh_last = &v5->tqh_first;
        p_tqh_first = &v6[1].tqh_first;
        v12 = v6[1].tqh_first;
        v13 = v6[1].tqh_last;
        p_tqh_last = &a1->lqh.tqh_last;
        if (v12)
        {
          p_tqh_last = &v12->q.tqe_prev;
        }

        *p_tqh_last = v13;
        *v13 = v12;
        *p_tqh_first = 0;
        v15 = a1->lqh.tqh_last;
        v6[1].tqh_last = v15;
        *v15 = v6;
        a1->lqh.tqh_last = p_tqh_first;
        BYTE4(v6[2].tqh_last) |= 2u;
        return v6[2].tqh_first;
      }
    }

    result = mpool_bkt(a1);
    if (!result)
    {
      return result;
    }

    v19 = result;
    v20 = pread_NOCANCEL();
    if (a1->pagesize == v20)
    {
      *(v19 + 10) = v3;
      v19[44] = 2;
      p_tqe_next = &v5->tqh_first->hq.tqe_next;
      *v19 = v5->tqh_first;
      if (!p_tqe_next)
      {
        p_tqe_next = &v5->tqh_first;
      }

      p_tqe_next[1] = v19;
      v5->tqh_first = v19;
      *(v19 + 2) = 0;
      *(v19 + 1) = v5;
      v22 = a1->lqh.tqh_last;
      *(v19 + 3) = v22;
      *v22 = v19;
      a1->lqh.tqh_last = (v19 + 16);
      pgin = a1->pgin;
      if (pgin)
      {
        (pgin)(a1->pgcookie, v3, *(v19 + 4));
      }

      return *(v19 + 4);
    }

    else
    {
      if ((v20 & 0x80000000) == 0)
      {
        v17 = __error();
        result = 0;
        v18 = 79;
        goto LABEL_14;
      }

      return 0;
    }
  }

  return result;
}

int mpool_close(MPOOL *a1)
{
  tqh_first = a1->lqh.tqh_first;
  if (tqh_first)
  {
    do
    {
      tqe_next = tqh_first->q.tqe_next;
      tqe_prev = tqh_first->q.tqe_prev;
      p_tqe_prev = &tqe_next->q.tqe_prev;
      if (!tqe_next)
      {
        p_tqe_prev = &a1->lqh.tqh_last;
      }

      *p_tqe_prev = tqe_prev;
      *tqe_prev = tqe_next;
      free(tqh_first);
      tqh_first = a1->lqh.tqh_first;
    }

    while (a1->lqh.tqh_first);
  }

  free(a1);
  return 0;
}

int mpool_sync(MPOOL *a1)
{
  for (i = a1->lqh.tqh_first; i; i = i->q.tqe_next)
  {
    if (i->flags)
    {
      result = mpool_write(a1, i);
      if (result == -1)
      {
        return result;
      }

      pgin = a1->pgin;
      if (pgin)
      {
        (pgin)(a1->pgcookie, i->pgno, i->page);
      }
    }
  }

  if (fsync_NOCANCEL())
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t mpool_write(void *a1, uint64_t a2)
{
  v4 = a1[263];
  if (v4)
  {
    v4(a1[264], *(a2 + 40), *(a2 + 32));
  }

  if (pwrite_NOCANCEL() != a1[260])
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a2 + 44) &= ~1u;
  return result;
}

uint64_t __rec_close(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 32);
  if (v3)
  {
    mpool_put(*v2, v3, 0);
    *(v2 + 32) = 0;
  }

  result = __rec_sync(a1, 0);
  if (result != -1)
  {
    v5 = *(v2 + 636);
    if ((v5 & 0x400) != 0)
    {
      if (munmap(*(v2 + 592), *(v2 + 608)))
      {
        v6 = -1;
      }

      else
      {
        v6 = 0;
      }

      v5 = *(v2 + 636);
      if ((v5 & 0x800) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
      if ((v5 & 0x800) != 0)
      {
LABEL_16:
        if (__bt_close(a1) == -1)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return v6;
        }
      }
    }

    if ((v5 & 0x40) != 0)
    {
      v7 = fclose(*(v2 + 568));
    }

    else
    {
      v7 = close_NOCANCEL();
    }

    if (v7)
    {
      v6 = -1;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t __rec_sync(uint64_t a1, int a2)
{
  v14 = 0;
  v15 = 0;
  v4 = *(a1 + 56);
  v5 = *(v4 + 32);
  if (v5)
  {
    mpool_put(*v4, v5, 0);
    *(v4 + 32) = 0;
  }

  if (a2 == 11)
  {

    return __bt_sync(a1, 0);
  }

  else
  {
    v7 = *(v4 + 636);
    if ((v7 & 0x3800) != 0x1000)
    {
      return 0;
    }

    if ((v7 & 0x100) != 0 || (v8 = 0xFFFFFFFFLL, (*(v4 + 560))(v4, 0xFFFFFFFFLL) != -1))
    {
      if (lseek(*(v4 + 576), 0, 0))
      {
        return 0xFFFFFFFFLL;
      }

      v12 = 0;
      v9 = *(v4 + 64);
      v13[0] = &v12;
      v13[1] = 4;
      if ((*(v4 + 637) & 2) != 0)
      {
        for (i = (*(a1 + 40))(a1, v13, &v14, 3); !i; i = (*(a1 + 40))(a1, v13, &v14, 7))
        {
          if (write_NOCANCEL() != v15)
          {
            return 0xFFFFFFFFLL;
          }
        }
      }

      else
      {
        v18 = v4 + 632;
        v19 = 1;
        for (i = (*(a1 + 40))(a1, v13, &v14, 3); !i; i = (*(a1 + 40))(a1, v13, &v14, 7))
        {
          v16 = v14;
          v17 = v15;
          if (writev_NOCANCEL() != v15 + 1)
          {
            return 0xFFFFFFFFLL;
          }
        }
      }

      *(v4 + 64) = v9;
      if (i == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v11 = lseek(*(v4 + 576), 0, 1);
      if (v11 == -1 || ftruncate(*(v4 + 576), v11))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        v8 = 0;
        *(v4 + 636) &= ~0x1000u;
      }
    }

    return v8;
  }
}

uint64_t __rec_delete(uint64_t a1, unsigned int **a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(v5 + 32);
  if (v6)
  {
    mpool_put(*v5, v6, 0);
    *(v5 + 32) = 0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      v7 = **a2;
      if (v7)
      {
        if (v7 <= *(v5 + 616))
        {
          result = rec_rdelete(v5, v7 - 1);
          if (result)
          {
            return result;
          }

LABEL_14:
          result = 0;
          *(v5 + 636) |= 0x1004u;
          return result;
        }

        return 1;
      }
    }

LABEL_10:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  if ((*(v5 + 68) & 8) == 0)
  {
    goto LABEL_10;
  }

  if (*(v5 + 616))
  {
    result = rec_rdelete(v5, *(v5 + 64) - 1);
    if (result)
    {
      return result;
    }

    --*(v5 + 64);
    goto LABEL_14;
  }

  return 1;
}

uint64_t rec_rdelete(MPOOL **a1, unsigned int a2)
{
  v3 = __rec_search(a1, a2, 0);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *v3;
  v5 = __rec_dleaf(a1, *v3, *(v3 + 8)) == 0;
  v6 = *a1;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  mpool_put(v6, v4, v5);
  return v7;
}

uint64_t __rec_dleaf(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v3 = a3;
  v6 = a2 + 10;
  v7 = a2[a3 + 10];
  if ((*(a2 + v7 + 4) & 1) == 0 || (result = __ovfl_delete(a1, (a2 + v7 + 5)), result != -1))
  {
    v9 = (*(a2 + v7) & 0xFFFFFFFC) + 8;
    j__mkostemp(a2 + a2[9] + v9, a2 + a2[9]);
    a2[9] += v9;
    v10 = v6[v3];
    v11 = v6;
    if (v3)
    {
      v11 = v6;
      do
      {
        v12 = *v11;
        if (v12 < v10)
        {
          *v11 = v12 + v9;
        }

        --v3;
        ++v11;
      }

      while (v3);
    }

    v13 = a2[8];
    v14 = ((v6 + ((v13 - 20) & 0x1FFFE) - v11) >> 1) - 1;
    if (((v6 + ((v13 - 20) & 0x1FFFE) - v11) >> 1) != 1)
    {
      v15 = v11 + 1;
      do
      {
        v16 = *v15;
        if (v16 >= v10)
        {
          v17 = 0;
        }

        else
        {
          v17 = v9;
        }

        *(v15 - 1) = v17 + v16;
        --v14;
        ++v15;
      }

      while (v14);
      LOWORD(v13) = a2[8];
    }

    result = 0;
    a2[8] = v13 - 2;
    --*(a1 + 616);
  }

  return result;
}

uint64_t __rec_get(uint64_t a1, unsigned int **a2, void *a3, int a4)
{
  v7 = *(a1 + 56);
  v8 = *(v7 + 32);
  if (v8)
  {
    mpool_put(*v7, v8, 0);
    *(v7 + 32) = 0;
  }

  if (a4 || (v11 = **a2) == 0)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  if (v11 > *(v7 + 616))
  {
    if ((*(v7 + 637) & 9) != 0)
    {
      return 1;
    }

    v9 = (*(v7 + 560))(v7, **a2);
    if (v9)
    {
      return v9;
    }
  }

  v12 = __rec_search(v7, v11 - 1, 2);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  v9 = __rec_ret(v7, v12, 0, 0, a3);
  if ((*(v7 + 637) & 0x40) != 0)
  {
    mpool_put(*v7, *v13, 0);
  }

  else
  {
    *(v7 + 32) = *v13;
  }

  return v9;
}

uint64_t __rec_fpipe(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 624);
  v6 = a1 + 496;
  v5 = *(a1 + 496);
  if (*(v6 + 8) < v4)
  {
    v5 = reallocf(v5, v4);
    *(a1 + 496) = v5;
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *(a1 + 624);
    *(a1 + 504) = v4;
  }

  v13[0] = v5;
  v13[1] = v4;
  v7 = *(a1 + 616);
  if (v7 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = *(a1 + 616);
  }

  while (v7 != v8)
  {
    v9 = *(a1 + 624);
    v10 = *(a1 + 496);
    v11 = getc(*(a1 + 568));
    if (v11 == -1)
    {
      if (v9)
      {
LABEL_13:
        j__mkostemps(v10, *(a1 + 632), v9);
      }

      LOBYTE(v9) = 1;
    }

    else
    {
      while (--v9)
      {
        *v10++ = v11;
        v11 = getc(*(a1 + 568));
        if (v11 == -1)
        {
          goto LABEL_13;
        }
      }

      *v10 = v11;
    }

    if (__rec_iput(a1, v7, v13, 0))
    {
      return 0xFFFFFFFFLL;
    }

    ++v7;
    if (v9)
    {
      if (v7 < a2)
      {
        *(a1 + 636) |= 0x100u;
        return 1;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t __rec_vpipe(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 616);
  if (v2 >= a2)
  {
    return 0;
  }

  v5 = *(a1 + 632);
  v19 = 0;
  v20 = 0;
  while (1)
  {
    v7 = *(a1 + 496);
    v6 = *(a1 + 504);
    v8 = getc(*(a1 + 568));
    v9 = v8 == -1;
    if (v8 != -1 && v8 != v5)
    {
      v11 = v8;
      do
      {
        if (!v6)
        {
          v12 = *(a1 + 496);
          v13 = *(a1 + 504) + 256;
          *(a1 + 504) = v13;
          v14 = reallocf(v12, v13);
          *(a1 + 496) = v14;
          if (!v14)
          {
            return 0xFFFFFFFFLL;
          }

          v7 = &v14[v7 - v12];
          v6 = 256;
        }

        *v7++ = v11;
        --v6;
        v15 = getc(*(a1 + 568));
        v11 = v15;
        v9 = v15 == -1;
      }

      while (v15 != -1 && v15 != v5);
    }

    v19 = *(a1 + 496);
    v20 = (v7 - v19);
    if (v9 && v7 == v19)
    {
      break;
    }

    if (__rec_iput(a1, v2, &v19, 0))
    {
      return 0xFFFFFFFFLL;
    }

    if (v9)
    {
      break;
    }

    if (++v2 == a2)
    {
      return 0;
    }
  }

  *(a1 + 636) |= 0x100u;
  return 1;
}

uint64_t __rec_fmap(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 624);
  v6 = a1 + 496;
  v5 = *(a1 + 496);
  if (*(v6 + 8) < v4)
  {
    v5 = reallocf(v5, v4);
    *(a1 + 496) = v5;
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *(a1 + 624);
    *(a1 + 504) = v4;
  }

  v16[0] = v5;
  v16[1] = v4;
  v7 = *(a1 + 584);
  v8 = *(a1 + 616);
  if (v8 >= a2)
  {
LABEL_18:
    result = 0;
    *(a1 + 584) = v7;
  }

  else
  {
    v9 = *(a1 + 600);
    while (v7 < v9)
    {
      v10 = *(a1 + 624);
      if (v10)
      {
        v11 = 0;
        v12 = *(a1 + 496);
        do
        {
          *(v12 + v11) = *(v7 + v11);
          v13 = v11 + 1;
          v14 = v7 + v11 + 1 >= v9 || v10 - 1 == v11;
          ++v11;
        }

        while (!v14);
        v7 += v13;
        if (v10 != v13)
        {
          j__mkostemps((v12 + v13), *(a1 + 632), v10 - v13);
        }
      }

      if (__rec_iput(a1, v8, v16, 0))
      {
        return 0xFFFFFFFFLL;
      }

      if (++v8 == a2)
      {
        goto LABEL_18;
      }
    }

    *(a1 + 636) |= 0x100u;
    return 1;
  }

  return result;
}

uint64_t __rec_vmap(uint64_t a1, unsigned int a2)
{
  v12 = 0;
  v3 = *(a1 + 584);
  v4 = *(a1 + 616);
  if (v4 >= a2)
  {
LABEL_10:
    result = 0;
    *(a1 + 584) = v3;
  }

  else
  {
    v6 = *(a1 + 600);
    v7 = *(a1 + 632);
    while (1)
    {
      if (v3 >= v6)
      {
        *(a1 + 636) |= 0x100u;
        return 1;
      }

      v11 = v3;
      v8 = &v6[-v3];
      v9 = v3;
      while (*v9 != v7)
      {
        ++v9;
        if (!--v8)
        {
          v9 = v6;
          break;
        }
      }

      v12 = &v9[-v3];
      if (__rec_iput(a1, v4, &v11, 0))
      {
        return 0xFFFFFFFFLL;
      }

      v3 = (v9 + 1);
      if (++v4 == a2)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

MPOOL *__rec_open(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a1)
  {
    v9 = open_NOCANCEL();
    if (v9 < 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  memset(&v27, 0, sizeof(v27));
  if (a4)
  {
    if (*a4 >= 8uLL)
    {
      v10 = 0;
      goto LABEL_19;
    }

    *&v28[0] = 0;
    v11 = *(a4 + 12);
    DWORD2(v28[0]) = *(a4 + 8);
    *(v28 + 12) = 0;
    DWORD1(v28[1]) = v11;
    *(&v28[1] + 1) = 0;
    *&v29 = 0;
    DWORD2(v29) = *(a4 + 16);
    v12 = __bt_open(*(a4 + 40), 2, 384, v28, a5);
    if (v12)
    {
      v10 = v12;
      tqh_last = v12->hqh[2].tqh_last;
      if (*a4)
      {
        *(tqh_last + 159) |= 0x200u;
        v14 = *(a4 + 24);
        tqh_last[78] = v14;
        if (!v14)
        {
          goto LABEL_19;
        }
      }

      v15 = *(a4 + 32);
LABEL_13:
      *(tqh_last + 632) = v15;
      v17 = *(tqh_last + 159);
      *(tqh_last + 159) = v17 | 0x80;
      if (a1)
      {
        *(tqh_last + 144) = v9;
        *__error() = 0;
        if (lseek(v9, 0, 1) == -1 && *__error() == 29)
        {
          if ((a2 & 3) == 0)
          {
            *(tqh_last + 159) |= 0x2000u;
            goto LABEL_27;
          }

LABEL_19:
          *__error() = 22;
          v18 = *__error();
          if (!v10)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if ((a2 & 3) != 2)
        {
          if ((a2 & 3) != 0)
          {
            goto LABEL_19;
          }

          *(tqh_last + 159) |= 0x2000u;
        }

        if (fstat(v9, &v27))
        {
          goto LABEL_41;
        }

        if (v27.st_size)
        {
LABEL_27:
          v19 = fdopen_DARWIN_EXTSN(v9, "r");
          tqh_last[71] = v19;
          if (v19)
          {
            v20 = *(tqh_last + 159);
            *(tqh_last + 159) = v20 | 0x40;
            v21 = (v20 & 0x200) == 0;
            v22 = __rec_fpipe;
            if (v21)
            {
              v22 = __rec_vpipe;
            }

            tqh_last[70] = v22;
LABEL_33:
            v10->lqh.tqh_last = __rec_close;
            v10->hqh[0].tqh_first = __rec_delete;
            v10->hqh[3].tqh_first = __rec_fd;
            v10->hqh[0].tqh_last = __rec_get;
            v10->hqh[1].tqh_first = __rec_put;
            v10->hqh[1].tqh_last = __rec_seq;
            v10->hqh[2].tqh_first = __rec_sync;
            v24 = mpool_get(*tqh_last, 1u, 0);
            if (v24)
            {
              if ((v24[3] & 0x1F) == 2)
              {
                v24[3] = v24[3] & 0xFFFFFFE0 | 0x10;
                v25 = 1;
              }

              else
              {
                v25 = 0;
              }

              mpool_put(*tqh_last, v24, v25);
              if (!a4 || (*a4 & 4) == 0 || (*(tqh_last + 637) & 9) != 0 || (tqh_last[70])(tqh_last, 0xFFFFFFFFLL) != -1)
              {
                return v10;
              }
            }
          }

LABEL_41:
          v18 = *__error();
LABEL_42:
          __bt_close(v10);
          goto LABEL_43;
        }

        v23 = *(tqh_last + 159) | 0x100;
      }

      else
      {
        v23 = v17 | 0x980;
      }

      *(tqh_last + 159) = v23;
      goto LABEL_33;
    }
  }

  else
  {
    v16 = __bt_open(0, 2, 384, 0, a5);
    if (v16)
    {
      v10 = v16;
      tqh_last = v16->hqh[2].tqh_last;
      v15 = 10;
      goto LABEL_13;
    }
  }

  v18 = *__error();
LABEL_43:
  if (a1)
  {
    close_NOCANCEL();
  }

  v10 = 0;
  *__error() = v18;
  return v10;
}

uint64_t __rec_fd(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 32);
  if (v2)
  {
    mpool_put(*v1, v2, 0);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 637) & 8) == 0)
  {
    return *(v1 + 576);
  }

  *__error() = 2;
  return 0xFFFFFFFFLL;
}

uint64_t __rec_put(uint64_t a1, unsigned int **a2, uint64_t *a3, int a4)
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v7 = *(a1 + 56);
  v8 = *(v7 + 32);
  if (v8)
  {
    mpool_put(*v7, v8, 0);
    *(v7 + 32) = 0;
  }

  v9 = a3[1];
  if ((*(v7 + 637) & 2) != 0 && (v10 = *(v7 + 624), v9 != v10))
  {
    if (v9 > v10)
    {
      goto LABEL_40;
    }

    v13 = *(v7 + 496);
    if (*(v7 + 504) < v10)
    {
      v13 = reallocf(v13, v10);
      *(v7 + 496) = v13;
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }

      *(v7 + 504) = *(v7 + 624);
    }

    j__mkostemp(v13, *a3);
    j__mkostemps((*(v7 + 496) + a3[1]), *(v7 + 632), *(v7 + 624) - a3[1]);
    v20 = *(v7 + 496);
    v9 = *(v7 + 624);
  }

  else
  {
    v20 = *a3;
  }

  v21 = v9;
  if (a4 > 4)
  {
    if (a4 != 5)
    {
      if (a4 == 8)
      {
        v12 = **a2;
        if (!v12)
        {
          goto LABEL_40;
        }

        if (v12 <= *(v7 + 616))
        {
          return 1;
        }

        a4 = 8;
      }

      else
      {
        if (a4 != 10)
        {
          goto LABEL_40;
        }

        v12 = **a2;
        if (!v12)
        {
          goto LABEL_40;
        }

        a4 = 10;
      }

      goto LABEL_33;
    }

LABEL_26:
    v12 = **a2;
    if (!v12)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  if (!a4)
  {
    goto LABEL_26;
  }

  if (a4 != 1)
  {
    if (a4 == 4)
    {
      v11 = **a2;
      if (v11)
      {
        a4 = 4;
      }

      else
      {
        a4 = 5;
      }

      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      goto LABEL_33;
    }

LABEL_40:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  if ((*(v7 + 68) & 8) == 0)
  {
    goto LABEL_40;
  }

  v12 = *(v7 + 64);
  a4 = 1;
LABEL_33:
  v14 = *(v7 + 616);
  if (v12 <= v14)
  {
    goto LABEL_49;
  }

  if ((*(v7 + 637) & 9) == 0)
  {
    result = (*(v7 + 560))(v7, v12);
    if (result == -1)
    {
      return result;
    }

    v14 = *(v7 + 616);
  }

  if (v12 <= v14 + 1)
  {
    goto LABEL_49;
  }

  if ((*(v7 + 637) & 2) == 0)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_44;
  }

  v16 = malloc_type_malloc(*(v7 + 624), 0xB22F057DuLL);
  v18 = v16;
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = *(v7 + 624);
  j__mkostemps(v16, *(v7 + 632), v19);
LABEL_44:
  while (1)
  {
    v17 = *(v7 + 616);
    if (v12 <= v17 + 1)
    {
      break;
    }

    if (__rec_iput(v7, v17, &v18, 0))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((*(v7 + 637) & 2) != 0)
  {
    free(v18);
  }

LABEL_49:
  result = __rec_iput(v7, v12 - 1, &v20, a4);
  if (!result)
  {
    if (a4 == 10)
    {
      *(v7 + 64) = v12;
    }

    else if (a4 == 4)
    {
      LODWORD(v12) = v12 + 1;
    }

    *(v7 + 636) |= 0x1000u;
    return __rec_ret(v7, 0, v12, a2, 0);
  }

  return result;
}

uint64_t __rec_iput(uint64_t a1, unsigned int a2, uint64_t *a3, int a4)
{
  v5 = a3;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v8 = a3 + 1;
  if (a3[1] <= *(a1 + 524))
  {
    v11 = 0;
  }

  else
  {
    result = __ovfl_put(a1, a3, &v23);
    if (result == -1)
    {
      return result;
    }

    v10 = *v8;
    v8 = &v25;
    v24 = v26;
    v25 = 8;
    v26[0] = v23;
    v26[1] = v10;
    v11 = 1;
    v5 = &v24;
  }

  if (*(a1 + 616) < a2 || (a4 & 0xFFFFFFFE) == 4)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = __rec_search(a1, a2, v13);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = *v14;
  v16 = *(v14 + 8);
  if (a4 == 5)
  {
    goto LABEL_17;
  }

  if (a4 == 4)
  {
    LOWORD(v16) = v16 + 1;
    goto LABEL_17;
  }

  if (*(a1 + 616) > a2 && __rec_dleaf(a1, v15, v16) == -1)
  {
    mpool_put(*a1, v15, 0);
    return 0xFFFFFFFFLL;
  }

LABEL_17:
  v17 = *v8;
  v18 = (*v8 & 0xFFFFFFFC) + 8;
  v19 = v15[9];
  v20 = v15[8];
  if ((v19 - v20) >= (v18 | 2uLL))
  {
    if (((v20 + 131052) >> 1) > v16)
    {
      j__mkostemp(&v15[v16 + 11], v15 + 2 * v16 + 20);
      LOWORD(v20) = v15[8];
      LOWORD(v19) = v15[9];
      v17 = *v8;
    }

    v15[8] = v20 + 2;
    v21 = v19 - v18;
    v15[9] = v21;
    v15[v16 + 10] = v21;
    v22 = v15 + v21;
    *v22 = v17;
    v22[4] = v11;
    j__mkostemp(v22 + 5, *v5);
    ++*(a1 + 616);
    *(a1 + 636) |= 4u;
    mpool_put(*a1, v15, 1u);
    return 0;
  }

  else
  {
    result = __bt_split(a1, v15, 0, v5, v11, (v17 & 0xFFFCu) + 8, v16);
    if (!result)
    {
      ++*(a1 + 616);
    }
  }

  return result;
}

uint64_t __rec_search(uint64_t a1, unsigned int a2, int a3)
{
  v6 = a1 + 72;
  *(a1 + 472) = a1 + 72;
  v7 = mpool_get(*a1, 1u, 0);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if ((v8[12] & 0x10) != 0)
      {
        *(a1 + 16) = v8;
        v25 = a1 + 16;
        *(v25 + 8) = a2 - v9;
        return v25;
      }

      v11 = 0;
      v12 = v8 + 20;
      v13 = v9;
      while (1)
      {
        v9 = v13;
        v14 = &v8[*&v12[2 * v11++]];
        if (v11 == ((*(v8 + 8) + 131052) >> 1))
        {
          break;
        }

        v13 = (*v14 + v13);
        if (v13 > a2)
        {
          goto LABEL_9;
        }
      }

      v11 = (*(v8 + 8) + 131052) >> 1;
LABEL_9:
      v15 = *(a1 + 472);
      *v15 = v10;
      v16 = v11 - 1;
      *(v15 + 4) = v16;
      *(a1 + 472) = v15 + 8;
      v10 = *(v14 + 1);
      if (!a3)
      {
        break;
      }

      if (a3 == 2)
      {
        v18 = 0;
        goto LABEL_16;
      }

      if (a3 == 1)
      {
        v17 = 1;
        goto LABEL_15;
      }

LABEL_17:
      v8 = mpool_get(*a1, v10, 0);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    v17 = -1;
LABEL_15:
    *&v8[*&v12[2 * v16]] += v17;
    v18 = 1;
LABEL_16:
    mpool_put(*a1, v8, v18);
    goto LABEL_17;
  }

LABEL_18:
  v19 = *__error();
  if (a3 != 2)
  {
    v20 = *(a1 + 472);
    if (v20 != v6)
    {
      if (a3 == 1)
      {
        v21 = -1;
      }

      else
      {
        v21 = 1;
      }

      do
      {
        v22 = *(v20 - 8);
        *(a1 + 472) = v20 - 8;
        v23 = mpool_get(*a1, v22, 0);
        if (!v23)
        {
          break;
        }

        v24 = v23[*(v20 - 4) + 10];
        *(v23 + v24) += v21;
        mpool_put(*a1, v23, 1u);
        v20 = *(a1 + 472);
      }

      while (v20 != v6);
    }
  }

  v25 = 0;
  *__error() = v19;
  return v25;
}

uint64_t __rec_seq(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = *(a1 + 56);
  v8 = *(v7 + 32);
  if (v8)
  {
    mpool_put(*v7, v8, 0);
    *(v7 + 32) = 0;
  }

  if (a4 <= 5)
  {
    if (a4 == 1)
    {
      v10 = **a2;
      if (v10)
      {
        goto LABEL_20;
      }

LABEL_17:
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }

    if (a4 != 3)
    {
      goto LABEL_17;
    }

LABEL_15:
    v10 = 1;
    goto LABEL_20;
  }

  if (a4 == 6)
  {
    goto LABEL_8;
  }

  if (a4 == 7)
  {
    if ((*(v7 + 68) & 8) != 0)
    {
      v10 = (*(v7 + 64) + 1);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (a4 != 9)
  {
    goto LABEL_17;
  }

  if ((*(v7 + 68) & 8) != 0)
  {
    v11 = *(v7 + 64);
    v10 = (v11 - 1);
    if (v11 == 1)
    {
      return 1;
    }

    goto LABEL_20;
  }

LABEL_8:
  if ((*(v7 + 637) & 9) != 0 || (v9 = 0xFFFFFFFFLL, (*(v7 + 560))(v7, 0xFFFFFFFFLL) != -1))
  {
    v10 = *(v7 + 616);
LABEL_20:
    v12 = *(v7 + 616);
    if (v12)
    {
      v13 = v10 > v12;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      goto LABEL_32;
    }

    if ((*(v7 + 637) & 9) == 0)
    {
      v9 = (*(v7 + 560))(v7, v10);
      if (v9)
      {
        return v9;
      }

      v12 = *(v7 + 616);
    }

    if (v12 && v10 <= v12)
    {
LABEL_32:
      v15 = __rec_search(v7, v10 - 1, 2);
      if (v15)
      {
        v16 = v15;
        *(v7 + 68) |= 8u;
        *(v7 + 64) = v10;
        v9 = __rec_ret(v7, v15, v10, a2, a3);
        if ((*(v7 + 637) & 0x40) != 0)
        {
          mpool_put(*v7, *v16, 0);
        }

        else
        {
          *(v7 + 32) = *v16;
        }

        return v9;
      }

      return 0xFFFFFFFFLL;
    }

    return 1;
  }

  return v9;
}

uint64_t __rec_ret(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a4)
  {
    v10 = *(a1 + 480);
    if (*(a1 + 488) <= 3uLL)
    {
      v10 = malloc_type_realloc(v10, 4uLL, 0x100004052888210uLL);
      if (!v10)
      {
        return 0xFFFFFFFFLL;
      }

      *(a1 + 480) = v10;
      *(a1 + 488) = 4;
    }

    *v10 = a3;
    *a4 = *(a1 + 480);
    a4[1] = 4;
  }

  if (!a5)
  {
    return 0;
  }

  v11 = (*a2 + *(*a2 + 2 * *(a2 + 8) + 20));
  if (v11[1])
  {
    if (!__ovfl_get(a1, (v11 + 5), a5 + 1, (a1 + 496), (a1 + 504)))
    {
LABEL_17:
      v13 = *(a1 + 496);
      goto LABEL_18;
    }

    return 0xFFFFFFFFLL;
  }

  v12 = *v11;
  if ((*(a1 + 637) & 0x40) != 0)
  {
    v15 = (v12 + 1);
    v16 = *(a1 + 496);
    if (*(a1 + 504) >= v15)
    {
LABEL_16:
      j__mkostemp(v16, v11 + 5);
      a5[1] = *v11;
      goto LABEL_17;
    }

    v16 = malloc_type_realloc(v16, v15, 0xE10D5801uLL);
    if (v16)
    {
      v17 = *v11;
      *(a1 + 496) = v16;
      *(a1 + 504) = (v17 + 1);
      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  a5[1] = v12;
  v13 = v11 + 5;
LABEL_18:
  result = 0;
  *a5 = v13;
  return result;
}

_DWORD *__hdtoa(uint64_t a1, unsigned int a2, _DWORD *a3, _DWORD *a4, void *a5, double a6)
{
  v10 = a6;
  v11 = a6;
  *a4 = *&a6 >> 63;
  v12 = __fpclassifyd(a6);
  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      *a3 = 0x7FFFFFFF;
      v13 = "NaN";
      v14 = a5;
      v15 = 3;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_71;
      }

      *a3 = 0x7FFFFFFF;
      v13 = "Infinity";
      v14 = a5;
      v15 = 8;
    }

    goto LABEL_13;
  }

  switch(v12)
  {
    case 5:
      if (v10 == 0.0)
      {
LABEL_10:
        *a3 = 1;
        v13 = "0";
        v14 = a5;
        v15 = 1;
LABEL_13:

        return __nrv_alloc_D2A(v13, v14, v15);
      }

      v10 = v10 * 5.36312317e154;
      v11 = v10;
      v16 = -1536;
      break;
    case 4:
      v16 = -1022;
      break;
    case 3:
      goto LABEL_10;
    default:
LABEL_71:
      abort_report_np("%s:%s:%u: fpclassify returned %d");
  }

  *a3 = ((*&v11 >> 52) & 0x7FF) + v16;
  if (a2 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a2;
  }

  if (v18 <= 14)
  {
    v19 = 14;
  }

  else
  {
    v19 = v18;
  }

  v20 = __rv_alloc_D2A(v19);
  v21 = v20;
  if (v18 >= 15)
  {
    v22 = v19 - 1;
    if ((v19 - 1) >= 0xE)
    {
      v22 = 14;
    }

    MEMORY[0x193AD5FD0](v20 + v22, v19 - v22);
  }

  v23 = v21 + 13;
  v24 = *&v10;
  v25 = 13;
  do
  {
    v21[v25] = v24 & 0xF;
    v24 = v24 & 0xFFFFFFFF00000000 | (v24 >> 4);
    v26 = v25 - 1;
  }

  while (v25-- > 6);
  v28 = &v21[v26];
  do
  {
    v29 = v24;
    *v28-- = BYTE4(v24) & 0xF;
    v24 = (v24 >> 4) & 0xFFFF00000000 | v24 & 0xFFF00000FFFFFFFFLL;
  }

  while (v28 > v21);
  *v28 = (v29 >> 36) | 1;
  if (v18 < 0)
  {
    v18 = 15;
    do
    {
      v30 = *v23--;
      --v18;
    }

    while (!v30);
  }

  if (v18 >= 14)
  {
    v31 = v18;
  }

  else
  {
    v31 = v18;
    v32 = &v21[v18];
    v33 = *v32;
    if (*v32)
    {
      v34 = ((_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 4, 0)) + 0x400000) >> 22) & 3;
      if (v34 == 3)
      {
        if ((v29 & 0x8000000000000000) != 0)
        {
          v42 = *(v32 - 1);
          v35 = (v32 - 1);
          LOBYTE(v36) = v42;
          if (v42 == 15)
          {
            v38 = v18 - 1;
            while (v38)
            {
              v21[v38] = 0;
              v36 = v21[--v38];
              if (v36 != 15)
              {
LABEL_63:
                v35 = &v21[v38];
                goto LABEL_64;
              }
            }

            goto LABEL_68;
          }

          goto LABEL_64;
        }
      }

      else
      {
        if (v34 != 2)
        {
          if (v34 != 1 || v33 <= 8 && (v33 != 8 || (v32[1] & 1) == 0))
          {
            goto LABEL_46;
          }

          v37 = *(v32 - 1);
          v35 = (v32 - 1);
          LOBYTE(v36) = v37;
          if (v37 == 15)
          {
            v38 = v18 - 1;
            while (v38)
            {
              v21[v38] = 0;
              v36 = v21[--v38];
              if (v36 != 15)
              {
                goto LABEL_63;
              }
            }

LABEL_68:
            v44 = 1;
            v35 = v21;
            v43 = 1;
LABEL_69:
            *v35 = v44;
            if (v43)
            {
              *a3 += 4;
            }

            goto LABEL_46;
          }

          goto LABEL_64;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          v41 = *(v32 - 1);
          v35 = (v32 - 1);
          LOBYTE(v36) = v41;
          if (v41 == 15)
          {
            v38 = v18 - 1;
            while (v38)
            {
              v21[v38] = 0;
              v36 = v21[--v38];
              if (v36 != 15)
              {
                goto LABEL_63;
              }
            }

            goto LABEL_68;
          }

LABEL_64:
          v43 = 0;
          v44 = v36 + 1;
          goto LABEL_69;
        }
      }
    }
  }

LABEL_46:
  v39 = &v21[v31];
  if (a5)
  {
    *a5 = v39;
  }

  *v39 = 0;
  for (i = v39 - 1; i >= v21; --i)
  {
    *i = *(a1 + *i);
  }

  return v21;
}

char *__gdtoa(int *a1, int a2, _DWORD *a3, _DWORD *a4, unsigned int a5, int a6, _DWORD *a7, char **a8)
{
  result = 0;
  v10 = *a4;
  *a4 &= 0xFFFFFFCF;
  v11 = v10 & 7;
  if (v11 > 2)
  {
    if (v11 == 4)
    {
      *a7 = -32768;
      v27 = "NaN";
      v28 = a8;
      v29 = 3;
    }

    else
    {
      if (v11 != 3)
      {
        return result;
      }

      *a7 = -32768;
      v27 = "Infinity";
      v28 = a8;
      v29 = 8;
    }

    goto LABEL_33;
  }

  if (v11 - 1 >= 2)
  {
    if ((v10 & 7) != 0)
    {
      return result;
    }

    goto LABEL_32;
  }

  v13 = a4;
  v16 = *a1;
  v167 = a7;
  v168 = a8;
  v17 = 0;
  if (*a1 >= 33)
  {
    v18 = 32;
    do
    {
      v18 *= 2;
      ++v17;
    }

    while (v18 < v16);
  }

  v171 = 0;
  v19 = __Balloc_D2A(v17);
  v20 = v19;
  v21 = 0;
  v22 = 0;
  do
  {
    v19[v21 + 6] = a3[v21];
    v22 += 0x100000000;
    ++v21;
  }

  while (&a3[v21] <= &a3[(v16 - 1) >> 5]);
  v23 = v22 >> 32;
  v24 = -32 * v23;
  while (1)
  {
    v25 = &v19[v23];
    if (v25[5])
    {
      break;
    }

    v24 += 32;
    if (!--v23)
    {
      v26 = 0;
      v19[5] = 0;
      goto LABEL_18;
    }
  }

  v19[5] = v23;
  v26 = -v24 - __hi0bits_D2A(v25[5]);
LABEL_18:
  v30 = __trailz_D2A(v20);
  v171 = v30;
  v154 = a2;
  if (v30)
  {
    v31 = v30;
    __rshift_D2A(v20, v30);
    a2 += v31;
    v32 = v26 - v31;
  }

  else
  {
    v32 = v26;
  }

  if (!v20[5])
  {
    __Bfree_D2A(v20);
    a7 = v167;
    a8 = v168;
LABEL_32:
    *a7 = 1;
    v27 = "0";
    v28 = a8;
    v29 = 1;
LABEL_33:

    return __nrv_alloc_D2A(v27, v28, v29);
  }

  v33 = __b2d_D2A(v20, &v171);
  v34 = 1 - (a2 + v32);
  v35 = LODWORD(v33);
  v36 = (*&v33 & 0xFFFFFFFFFFFFFLL | 0x3FF0000000000000uLL) >> 32;
  v37 = (COERCE_DOUBLE(*&v33 & 0xFFFFFFFFFFFFFLL | 0x3FF0000000000000) + -1.5) * 0.289529655 + 0.176091259 + (a2 + v32 - 1) * 0.301029996;
  if (a2 + v32 >= 1)
  {
    v34 = a2 + v32 - 1;
  }

  if (v34 > 1077)
  {
    v37 = v37 + (v34 - 1077) * 7.0e-17;
  }

  v38 = v37;
  v39 = v37 < 0.0;
  if (v37 == v37)
  {
    v39 = 0;
  }

  v40 = v38 - v39;
  *&v41 = v35 | ((v36 + ((a2 + v32) << 20) - 0x100000) << 32);
  if ((v38 - v39) <= 0x16)
  {
    if (__tens_D2A[v40] <= v41)
    {
      if (a2 > 0)
      {
        v47 = a2;
      }

      else
      {
        v47 = 0;
      }

      v158 = v47;
      v44 = -a2 & ~(-a2 >> 31);
      v42 = v40;
      goto LABEL_48;
    }

    v42 = v40 - 1;
  }

  else
  {
    v42 = v38 - v39;
  }

  if (a2 > 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = 0;
  }

  v44 = -a2 & ~(-a2 >> 31);
  if ((v42 & 0x80000000) != 0)
  {
    v45 = 0;
    v158 = v43 - v42;
    v46 = -v42;
    goto LABEL_49;
  }

  v158 = v43;
LABEL_48:
  v46 = 0;
  v44 += v42;
  v45 = v42;
LABEL_49:
  v155 = v46;
  if (a5 > 9)
  {
    a5 = 0;
  }

  v48 = a5 - 4;
  if (a5 <= 5)
  {
    v48 = a5;
  }

  v163 = v42;
  v166 = v48;
  v150 = v32;
  v151 = v45;
  v152 = v44;
  if (v48 <= 2)
  {
    if (v48 < 2)
    {
      a6 = 0;
      v49 = (v16 * 0.30103) + 3;
      v171 = v49;
      v157 = 1;
      v50 = -1;
      v161 = -1;
      goto LABEL_69;
    }

    v157 = 0;
    goto LABEL_60;
  }

  if (v48 == 3)
  {
    v157 = 0;
  }

  else
  {
    v157 = 1;
    if (v48 == 4)
    {
LABEL_60:
      if (a6 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = a6;
      }

      v171 = v49;
      a6 = v49;
      v50 = v49;
      v161 = v49;
      goto LABEL_69;
    }
  }

  v51 = __OFADD__(v42, a6);
  v52 = v42 + a6;
  v50 = v52 + 1;
  v161 = v52;
  if (v52 < 0 != v51)
  {
    v49 = 1;
  }

  else
  {
    v49 = v52 + 1;
  }

  v171 = v49;
LABEL_69:
  v53 = __rv_alloc_D2A(v49);
  v54 = a1[3];
  v55 = v54 - 1;
  if (v54 == 1)
  {
    v56 = 0;
  }

  else
  {
    if (v54 < 1)
    {
      v55 = 2;
    }

    if ((v10 & 8) != 0)
    {
      v56 = 3 - v55;
    }

    else
    {
      v56 = v55;
    }
  }

  v165 = v53;
  v57 = v163;
  if (a5 > 5)
  {
    goto LABEL_114;
  }

  v58 = v50 <= 0xE && (v56 | v163) == 0;
  if (!v58)
  {
    goto LABEL_114;
  }

  v171 = 0;
  if (v40 < 0x17 || v41 >= 1.0 || v50 == 0)
  {
    v61 = 0;
    v62 = 2.0;
    v63 = v50;
    v64 = v41;
  }

  else
  {
    if (v161 < 1)
    {
      goto LABEL_114;
    }

    v64 = v41 * 10.0;
    v61 = -1;
    v62 = 3.0;
    v63 = v161;
  }

  *&v65 = COERCE__INT64(v62 * v64 + 7.0) - 0x340000000000000;
  if (v63)
  {
    v66 = __tens_D2A[v63 - 1];
    v67 = v64;
    v68 = v64 - v64;
    v69 = v67 + 48;
    v70 = v53 + 1;
    if (v157)
    {
      v71 = 0.5 / v66 - v65;
      *v53 = v69;
      if (v68 < v71)
      {
LABEL_99:
        if (v68 == 0.0)
        {
          v74 = 0;
        }

        else
        {
          v74 = 16;
        }

        v75 = v61;
        goto LABEL_269;
      }

      while (1.0 - v68 >= v71)
      {
        if (++v171 >= v63)
        {
          goto LABEL_114;
        }

        v72 = v68 * 10.0;
        v73 = v72;
        v71 = v71 * 10.0;
        v68 = v72 - v72;
        *v70++ = v73 + 48;
        if (v68 < v71)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_108;
    }

    v79 = v66 * v65;
    v171 = 1;
    *v53 = v69;
    for (i = v171; v171 != v63; i = v171)
    {
      v171 = i + 1;
      v81 = v68 * 10.0;
      v82 = v81;
      v68 = v81 - v81;
      *v70++ = v82 + 48;
    }

    if (v68 > v79 + 0.5)
    {
LABEL_108:
      v75 = v61;
      goto LABEL_247;
    }

    if (v68 < 0.5 - v79)
    {
      v75 = v61;
      if (v68 == 0.0)
      {
        v74 = 0;
      }

      else
      {
        v74 = 16;
      }

      goto LABEL_267;
    }
  }

  else
  {
    v76 = v64 + -5.0;
    if (v76 > v65)
    {
      v77 = 0;
      v78 = 0;
      v57 = v61;
      goto LABEL_185;
    }

    if (v76 < -v65)
    {
      v77 = 0;
      v78 = 0;
      goto LABEL_196;
    }
  }

LABEL_114:
  if ((a2 & 0x80000000) == 0 && v163 <= 14)
  {
    v83 = __tens_D2A[v163];
    v84 = a6;
    if (a6 < 0 && v50 <= 0)
    {
      v77 = 0;
      if ((v50 & 0x80000000) == 0)
      {
        v78 = 0;
        if (v83 * 5.0 >= v41)
        {
          goto LABEL_197;
        }

LABEL_185:
        v116 = 0;
        *v53 = 49;
        v70 = v53 + 1;
        v75 = v57 + 1;
LABEL_186:
        v74 = 32;
        goto LABEL_198;
      }

      v78 = 0;
LABEL_197:
      v116 = 0;
      v75 = ~v84;
      v74 = 16;
      v70 = v53;
      goto LABEL_198;
    }

    v171 = 1;
    v90 = (v41 / v83);
    v91 = v41 - v90 * v83;
    *v53 = v90 + 48;
    v70 = v53 + 1;
    if (v91 == 0.0)
    {
      goto LABEL_127;
    }

    v96 = v171;
    if (v171 != v50)
    {
      while (1)
      {
        v97 = v91 * 10.0;
        v90 = (v97 / v83);
        v171 = v96 + 1;
        v91 = v97 - v90 * v83;
        *v70++ = v90 + 48;
        if (v91 == 0.0)
        {
          break;
        }

        v96 = v171;
        if (v171 == v50)
        {
          goto LABEL_143;
        }
      }

LABEL_127:
      v74 = 0;
LABEL_128:
      v75 = v163;
      goto LABEL_269;
    }

LABEL_143:
    if (v56)
    {
      if (v56 != 1)
      {
        v74 = 16;
        goto LABEL_128;
      }

      goto LABEL_246;
    }

    v133 = v91 + v91;
    if (v133 > v83 || ((v134 = v90 & 1, v133 == v83) ? (v135 = v134 == 0) : (v135 = 1), !v135))
    {
LABEL_246:
      v75 = v163;
LABEL_247:
      v136 = v53 + 1;
      v137 = v70 - 1;
      while (1)
      {
        v138 = *v137;
        if (v138 != 57)
        {
          break;
        }

        v58 = v137-- == v53;
        if (v58)
        {
          ++v75;
          *v53 = 48;
          v139 = 49;
          v137 = v53;
          goto LABEL_253;
        }
      }

      v139 = v138 + 1;
      v136 = v137 + 1;
LABEL_253:
      *v137 = v139;
      v74 = 32;
      v70 = v136;
      goto LABEL_269;
    }

    v74 = 16;
    v75 = v163;
LABEL_267:
    ++v70;
    do
    {
      v142 = *(v70 - 2);
      --v70;
    }

    while (v142 == 48);
    goto LABEL_269;
  }

  v149 = v56;
  if (v157)
  {
    v85 = v155;
    if (v166 > 1)
    {
      if (v155 <= v50 - 1)
      {
        v85 = v50 - 1;
      }

      if (v155 >= v50 - 1)
      {
        v89 = v155 - (v50 - 1);
      }

      else
      {
        v89 = 0;
      }

      if (v155 >= v50 - 1)
      {
        v95 = 0;
      }

      else
      {
        v95 = v50 - 1 - v155;
      }

      v171 = v50;
      v151 += v95;
      v155 = v85;
      if (v50 < 0)
      {
        v86 = 0;
        v88 = v158 - v50;
        v171 = 0;
      }

      else
      {
        v86 = v50;
        v88 = v158;
      }
    }

    else
    {
      v86 = v16 - v150 + 1;
      v171 = v86;
      v87 = a1[1];
      if (a2 - (v16 - v150) < v87)
      {
        v86 = a2 - v87 + 1;
        v171 = v86;
      }

      v88 = v158;
      v89 = v155;
    }

    v92 = v86 + v158;
    v152 += v86;
    v77 = __i2b_D2A(1);
    v93 = v155;
    v94 = v89;
  }

  else
  {
    v77 = 0;
    v92 = v158;
    v88 = v158;
    v93 = v155;
    v94 = v155;
  }

  if (v88 < 1)
  {
    v98 = v152;
  }

  else
  {
    v98 = v152;
    if (v152 >= 1)
    {
      if (v88 >= v152)
      {
        v99 = v152;
      }

      else
      {
        v99 = v88;
      }

      v171 = v99;
      v92 -= v99;
      v88 -= v99;
      v98 = v152 - v99;
    }
  }

  v159 = v92;
  v153 = v88;
  if (v93 >= 1)
  {
    if (!v157)
    {
      v103 = v20;
      v102 = v93;
      goto LABEL_163;
    }

    if (v94 >= 1)
    {
      v100 = v94;
      v156 = v93;
      v77 = __pow5mult_D2A(v77, v94);
      v101 = __mult_D2A(v77, v20);
      __Bfree_D2A(v20);
      v94 = v100;
      v93 = v156;
      v20 = v101;
    }

    v102 = v93 - v94;
    if (v93 != v94)
    {
      v103 = v20;
LABEL_163:
      v20 = __pow5mult_D2A(v103, v102);
    }
  }

  v104 = __i2b_D2A(1);
  v78 = v104;
  v105 = v151;
  if (v151 >= 1)
  {
    v106 = __pow5mult_D2A(v104, v151);
    v105 = v151;
    v78 = v106;
  }

  v107 = 1;
  if (v166 <= 1 && v150 == 1 && a1[1] + 1 < v154)
  {
    v107 = 0;
    ++v159;
    ++v98;
  }

  if (v105)
  {
    v108 = __hi0bits_D2A(v78[v78[5] + 5]);
  }

  else
  {
    v108 = 31;
  }

  v109 = (v108 - v98 + 28) & 0x1F;
  v171 = v109;
  if (v109 + v159 < 1)
  {
    v110 = (v108 - v98 + 28) & 0x1F;
  }

  else
  {
    v20 = __lshift_D2A(v20, v109 + v159);
    v110 = v171;
  }

  if (v110 + v98 >= 1)
  {
    v78 = __lshift_D2A(v78, v110 + v98);
  }

  v111 = v163;
  v112 = v166;
  v160 = v78;
  if (v40 >= 0x17)
  {
    v113 = __cmp_D2A(v20, v78);
    v112 = v166;
    v111 = v163;
    if (v113 < 0)
    {
      v117 = v163 - 1;
      v20 = __multadd_D2A(v20, 10, 0);
      v164 = v163 - 1;
      if (v157)
      {
        v77 = __multadd_D2A(v77, 10, 0);
        if (v166 < 3)
        {
          v50 = v161;
        }

        else
        {
          v50 = v161;
          if (v161 <= 0)
          {
            goto LABEL_183;
          }
        }

        goto LABEL_189;
      }

      if (v166 < 3)
      {
        v111 = v117;
        v50 = v161;
      }

      else
      {
        v50 = v161;
        if (v161 < 1)
        {
          goto LABEL_183;
        }

        v111 = v164;
      }

LABEL_275:
      v131 = v111;
      v171 = 1;
      LOBYTE(v78) = __quorem_D2A(v20, v78) + 48;
      v129 = v165;
      *v165 = v78;
      v130 = v165 + 1;
      if (v171 >= v50)
      {
        v116 = 0;
      }

      else
      {
        do
        {
          v20 = __multadd_D2A(v20, 10, 0);
          ++v171;
          LOBYTE(v78) = __quorem_D2A(v20, v160) + 48;
          *v130++ = v78;
        }

        while (v171 < v50);
        v116 = 0;
        v129 = v165;
      }

      v127 = v149;
LABEL_280:
      if (v127)
      {
        if (v127 == 2)
        {
LABEL_282:
          v78 = v160;
LABEL_283:
          v75 = v131;
          if (v20[5] > 1 || v20[6])
          {
            v74 = 16;
          }

          else
          {
            v74 = 0;
          }

          v70 = v130 + 1;
          do
          {
            v143 = *(v70 - 2);
            --v70;
          }

          while (v143 == 48);
          goto LABEL_198;
        }

        v78 = v160;
        if (v20[5] <= 1 && !v20[6])
        {
          goto LABEL_283;
        }

        v75 = v131;
      }

      else
      {
        v20 = __lshift_D2A(v20, 1);
        v144 = __cmp_D2A(v20, v160);
        if (v144 <= 0)
        {
          if (v144)
          {
            goto LABEL_282;
          }

          v129 = v165;
          if ((v78 & 1) == 0)
          {
            goto LABEL_282;
          }

          v75 = v131;
        }

        else
        {
          v75 = v131;
          v129 = v165;
        }

        v78 = v160;
      }

LABEL_298:
      v70 = v129 + 1;
      v145 = v130;
      v146 = v130;
      while (1)
      {
        v148 = *--v146;
        v147 = v148;
        if (v148 != 57)
        {
          break;
        }

        v145 = v146;
        if (v146 == v129)
        {
          ++v75;
          *v129 = 49;
          goto LABEL_186;
        }
      }

      *(v145 - 1) = v147 + 1;
      v74 = 32;
      v70 = v145;
      goto LABEL_198;
    }
  }

  if (v112 >= 3 && v50 < 1)
  {
    v164 = v111;
LABEL_183:
    if ((v50 & 0x80000000) == 0)
    {
      v78 = __multadd_D2A(v78, 5, 0);
      v114 = __cmp_D2A(v20, v78);
      v57 = v164;
      v115 = v114 <= 0;
      v53 = v165;
      v84 = a6;
      if (!v115)
      {
        goto LABEL_185;
      }

      goto LABEL_197;
    }

    v53 = v165;
LABEL_196:
    v84 = a6;
    goto LABEL_197;
  }

  if (!v157)
  {
    goto LABEL_275;
  }

  v164 = v111;
LABEL_189:
  v162 = v50;
  if (v109 + v153 < 1)
  {
    v116 = v77;
  }

  else
  {
    v116 = __lshift_D2A(v77, v109 + v153);
    v77 = v116;
  }

  v118 = v165;
  v170 = v13;
  if ((v107 & 1) == 0)
  {
    v119 = __Balloc_D2A(*(v116 + 2));
    j__mkdtempat_np(v119 + 16, v116 + 16);
    v77 = __lshift_D2A(v119, 1);
    v118 = v165;
  }

  v120 = 1;
  for (j = v118; ; ++j)
  {
    v171 = v120;
    v122 = __quorem_D2A(v20, v78);
    v123 = __cmp_D2A(v20, v116);
    v124 = v77;
    v125 = __diff_D2A(v78, v77);
    if (v125[4])
    {
      v126 = 1;
    }

    else
    {
      v126 = __cmp_D2A(v20, v125);
    }

    LODWORD(v78) = v122 + 48;
    __Bfree_D2A(v125);
    v127 = v149;
    if (!(v126 | v166) && !(*a3 & 1 | v149))
    {
      v129 = v165;
      if (v122 != 9)
      {
        v77 = v124;
        if (v123 <= 0)
        {
          v13 = v170;
          if (v20[5] > 1 || v20[6])
          {
            v74 = 16;
          }

          else
          {
            v74 = 0;
          }
        }

        else
        {
          LOBYTE(v78) = v122 + 49;
          v74 = 32;
LABEL_306:
          v13 = v170;
        }

        goto LABEL_318;
      }

      goto LABEL_256;
    }

    if (v123 < 0 || !(v123 | v166) && (*a3 & 1) == 0)
    {
      break;
    }

    if (v126 >= 1 && v149 != 2)
    {
      v77 = v124;
      if (v122 != 9)
      {
        *j = v122 + 49;
        v70 = j + 1;
        v74 = 32;
        v13 = v170;
        v78 = v160;
        v75 = v164;
        goto LABEL_198;
      }

      v129 = v165;
      goto LABEL_257;
    }

    *j = v78;
    v77 = v124;
    if (v171 == v162)
    {
      v130 = j + 1;
      v131 = v164;
      v129 = v165;
      v13 = v170;
      goto LABEL_280;
    }

    v20 = __multadd_D2A(v20, 10, 0);
    if (v116 == v124)
    {
      v128 = __multadd_D2A(v124, 10, 0);
      v116 = v128;
    }

    else
    {
      v116 = __multadd_D2A(v116, 10, 0);
      v128 = __multadd_D2A(v124, 10, 0);
    }

    v77 = v128;
    v78 = v160;
    v120 = v171 + 1;
  }

  if (!v149 || v20[5] <= 1 && !v20[6])
  {
    if (v126 < 1)
    {
      v74 = 0;
    }

    else
    {
      v20 = __lshift_D2A(v20, 1);
      v132 = __cmp_D2A(v20, v160);
      if (v132 > 0 || (v74 = 32, !v132) && (v122 & 1) != 0)
      {
        if (v122 == 9)
        {
          v129 = v165;
LABEL_256:
          v77 = v124;
LABEL_257:
          v13 = v170;
LABEL_258:
          v78 = v160;
          *j = 57;
          v130 = j + 1;
          v75 = v164;
          goto LABEL_298;
        }

        LOBYTE(v78) = v122 + 49;
        v74 = 32;
      }
    }

    v77 = v124;
    v13 = v170;
    v75 = v164;
    if (v20[5] > 1 || v20[6])
    {
      v74 = 16;
    }

    goto LABEL_319;
  }

  if (v149 == 2)
  {
    v74 = 16;
    v77 = v124;
    goto LABEL_306;
  }

  v140 = v124;
  if (__cmp_D2A(v160, v124) < 1)
  {
    v77 = v124;
    v13 = v170;
  }

  else
  {
    v13 = v170;
    do
    {
      *j++ = v78;
      v141 = __multadd_D2A(v140, 10, 0);
      v77 = v141;
      if (v116 == v140)
      {
        v116 = v141;
      }

      v20 = __multadd_D2A(v20, 10, 0);
      LODWORD(v78) = __quorem_D2A(v20, v160) + 48;
      v140 = v77;
    }

    while (__cmp_D2A(v160, v77) > 0);
  }

  if (v78 == 57)
  {
    v129 = v165;
    goto LABEL_258;
  }

  LOBYTE(v78) = v78 + 1;
  v74 = 32;
LABEL_318:
  v75 = v164;
LABEL_319:
  *j = v78;
  v70 = j + 1;
  v78 = v160;
LABEL_198:
  __Bfree_D2A(v78);
  if (v77)
  {
    if (v116 && v116 != v77)
    {
      __Bfree_D2A(v116);
    }

    __Bfree_D2A(v77);
  }

LABEL_269:
  __Bfree_D2A(v20);
  *v70 = 0;
  *v167 = v75 + 1;
  if (v168)
  {
    *v168 = v70;
  }

  *v13 |= v74;
  return v165;
}