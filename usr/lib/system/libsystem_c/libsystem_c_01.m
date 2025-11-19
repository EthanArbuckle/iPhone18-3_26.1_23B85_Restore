tm *__cdecl localtime_r(const time_t *a1, tm *a2)
{
  pthread_rwlock_rdlock(&lcl_rwlock);
  _st_tzset_basic(1);
  v4 = _st_localsub(a1, 0, a2);
  pthread_rwlock_unlock(&lcl_rwlock);
  return v4;
}

void _st_tzset_basic(int a1)
{
  v2 = getenv_copy_np("TZ");
  if (v2)
  {
    v3 = v2;
    notify_check_tz(&lcl_notify);
    if (!a1)
    {
      pthread_rwlock_rdlock(&lcl_rwlock);
    }

    if (dword_1ED3F0B44 < 1 || j__strncasecmp_l(lcl_TZname, v3, v4, v5))
    {
      pthread_rwlock_unlock(&lcl_rwlock);
      pthread_rwlock_wrlock(&lcl_rwlock);
      v8 = j__strsignal_r(v3, v6, v7);
      dword_1ED3F0B44 = v8 < 0x100;
      if (v8 <= 0xFF)
      {
        j__strnstr(lcl_TZname, v3, v9);
      }

      v10 = lclptr;
      if (lclptr || (v10 = malloc_type_calloc(1uLL, 0x4768uLL, 0x10000402151C985uLL), (lclptr = v10) != 0))
      {
        if (*v3)
        {
          v11 = v15;
          if (tzload(v3, v10, v15, 1))
          {
            if (*v3 == 58 || tzparse(v3, lclptr, 0))
            {
              v11 = v15;
              if (v15[0])
              {
                v14 = 0;
              }

              else
              {
                v14 = v15;
              }

              gmtload(lclptr, v14);
            }

            else
            {
              v11 = 0;
            }
          }

          notify_register_tz(v11, &lcl_notify, v12, v13);
        }

        else
        {
          *v10 = 0;
          *(v10 + 2) = 0;
          *(v10 + 10824) = 0u;
          *(v10 + 4242) = 4412501;
          if (*MEMORY[0x1E69E99F8])
          {
            if ((lcl_notify & 0x80000000) == 0)
            {
              notify_cancel(lcl_notify);
            }

            lcl_notify = -1;
          }
        }

        settzname();
        pthread_rwlock_unlock(&lcl_rwlock);
        if (a1)
        {
          pthread_rwlock_rdlock(&lcl_rwlock);
        }

        free(v3);
        return;
      }

      settzname();
      pthread_rwlock_unlock(&lcl_rwlock);
      if (a1)
      {
        pthread_rwlock_rdlock(&lcl_rwlock);
      }
    }

    else if (!a1)
    {
      pthread_rwlock_unlock(&lcl_rwlock);
    }

    free(v3);
  }

  else
  {

    tzsetwall_basic(a1);
  }
}

uint64_t tzsetwall_basic(int a1)
{
  if (*MEMORY[0x1E69E99F8])
  {
    result = notify_check_tz(&lcl_notify);
    if (!a1)
    {
      goto LABEL_13;
    }

LABEL_6:
    if (dword_1ED3F0B44 < 0)
    {
      return result;
    }

    goto LABEL_14;
  }

  memset(v7, 0, 144);
  result = lstat("/var/db/timezone/localtime", v7);
  if (result)
  {
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v7[0].st_mtimespec.tv_sec > last_default_tzload_mtimespec || v7[0].st_mtimespec.tv_sec == last_default_tzload_mtimespec && v7[0].st_mtimespec.tv_nsec > *(&last_default_tzload_mtimespec + 1))
  {
    dword_1ED3F0B44 = 0;
  }

  last_default_tzload_mtimespec = v7[0].st_mtimespec;
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_13:
  pthread_rwlock_rdlock(&lcl_rwlock);
  if (dword_1ED3F0B44 < 0)
  {
    return pthread_rwlock_unlock(&lcl_rwlock);
  }

LABEL_14:
  pthread_rwlock_unlock(&lcl_rwlock);
  pthread_rwlock_wrlock(&lcl_rwlock);
  dword_1ED3F0B44 = -1;
  v3 = lclptr;
  if (lclptr || (v3 = malloc_type_calloc(1uLL, 0x4768uLL, 0x10000402151C985uLL), (lclptr = v3) != 0))
  {
    if (tzload(0, v3, v7, 1))
    {
      last_default_tzload_mtimespec = 0uLL;
      if (LOBYTE(v7[0].st_dev))
      {
        v6 = 0;
      }

      else
      {
        v6 = v7;
      }

      gmtload(lclptr, v6);
    }

    notify_register_tz(v7, &lcl_notify, v4, v5);
  }

  settzname();
  result = pthread_rwlock_unlock(&lcl_rwlock);
  if (a1)
  {
    return pthread_rwlock_rdlock(&lcl_rwlock);
  }

  return result;
}

uint64_t _st_localsub(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v26 = *a1;
  v5 = lclptr;
  if (lclptr)
  {
    if (*(lclptr + 16))
    {
      v6 = *(lclptr + 24);
      if (v4 < v6)
      {
        goto LABEL_7;
      }
    }

    if (*(lclptr + 20))
    {
      v7 = *(lclptr + 4);
      if (v4 > *(lclptr + 24 + 8 * v7 - 8))
      {
        v6 = *(lclptr + 24);
LABEL_7:
        v8 = (lclptr + 24);
        LODWORD(v9) = v6 - v4;
        if (v6 <= v4)
        {
          v9 = v4 - v8[*(lclptr + 4) - 1];
        }

        v10 = 400 * ((v9 - 1) / -262121088);
        v11 = 31556952 * (v10 + 400);
        if (v6 <= v4)
        {
          v11 = -31556952 * (v10 + 400);
        }

        v12 = v11 + v4;
        v25 = v12;
        if (v12 < v6 || v12 > v8[*(lclptr + 4) - 1])
        {
          return 0;
        }

        result = _st_localsub(&v25, a2, a3);
        if (result == a3)
        {
          v19 = v4 >= *v8 ? v10 + 400 : -400 - v10;
          v20 = v19 + *(a3 + 20);
          *(a3 + 20) = v20;
          if (v20 != v20)
          {
            return 0;
          }
        }

        return result;
      }
    }

    else
    {
      LODWORD(v7) = *(lclptr + 4);
    }

    if (v7 && v4 >= *(lclptr + 24))
    {
      if (v7 < 2)
      {
        v14 = 0;
      }

      else
      {
        v17 = 1;
        do
        {
          v18 = (v7 + v17) >> 1;
          if (v4 < *(lclptr + 24 + 8 * v18))
          {
            LODWORD(v7) = (v7 + v17) >> 1;
          }

          else
          {
            v17 = v18 + 1;
          }
        }

        while (v17 < v7);
        v14 = (v17 - 1);
      }

      LODWORD(v14) = *(lclptr + v14 + 9624);
    }

    else
    {
      v14 = 0;
      v15 = (lclptr + 10832);
      while (1)
      {
        v16 = *v15;
        v15 += 6;
        if (!v16)
        {
          break;
        }

        if (++v14 >= *(lclptr + 8))
        {
          LODWORD(v14) = 0;
          break;
        }
      }
    }

    v21 = lclptr + 24 * v14;
    result = timesub(&v26, *(v21 + 10824), lclptr, a3);
    if (result)
    {
      v23 = *(v21 + 10832);
      v22 = *(v21 + 10836);
      *(a3 + 32) = v23;
      v24 = (v5 + 16968 + v22);
      tzname[v23] = v24;
      *(a3 + 48) = v24;
    }
  }

  else
  {

    return gmtsub(a1, a2, a3);
  }

  return result;
}

uint64_t timesub(uint64_t *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = *a3;
  }

  else
  {
    v4 = 0;
  }

  v5 = a3 + 4370;
  v6 = &a3[4 * v4 + 4368];
  v7 = &a3[4 * v4 + 4372];
  do
  {
    if (v4 < 1)
    {
      v11 = 0;
      v10 = 0;
      v8 = *a1;
      goto LABEL_13;
    }

    --v4;
    v8 = *a1;
    v9 = *(v7 - 3);
    v6 -= 2;
    v7 -= 2;
  }

  while (*a1 < v9);
  if (*a1 == v9)
  {
    v11 = *v7;
    if (v4 || v11 <= 0)
    {
      v34 = *v6;
      v35 = v11 <= v34;
      v10 = v11 > v34;
      if (v4 && !v35)
      {
        v36 = *&v5[4 * v4];
        do
        {
          v37 = v4 - 1;
          v38 = &v5[4 * (v4 - 1)];
          if (v36 != *v38 + 1)
          {
            break;
          }

          if (*&v5[4 * v4 + 2] != *(v38 + 1) + 1)
          {
            break;
          }

          ++v10;
          v36 = *v38;
          LODWORD(v4) = v4 - 1;
        }

        while ((v37 + 1) > 1);
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
    v11 = *v7;
  }

LABEL_13:
  v12 = v8 / 86400;
  v13 = v8 % 86400;
  v14 = a2 - v11 + v8 % 86400;
  if (v14 < 0)
  {
    v15 = v13 + a2;
    if (v14 <= 0xFFFFFFFFFFFEAE80)
    {
      v14 = -86400;
    }

    v16 = v11 + v14;
    if (v16 == v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 + 1;
    }

    v18 = v16 - v17;
    if (v16 == v15)
    {
      v19 = v18 / 0x15180;
    }

    else
    {
      v19 = v18 / 0x15180 + 1;
    }

    v14 = v15 + 86400 * v19 + 86400 - v11;
    v12 += ~v19;
  }

  if (v14 > 86399)
  {
    v20 = v14 - 172799;
    if (v14 < 0x2A2FF)
    {
      v20 = 0;
    }

    v21 = (v20 + 86399) / 0x15180uLL;
    v14 = v14 - 86400 * v21 - 86400;
    v12 += v21 + 1;
  }

  *(a4 + 8) = v14 / 0xE10uLL;
  v22 = v14 % 0xE10uLL;
  *a4 = v10 + v22 % 0x3Cu;
  *(a4 + 4) = v22 / 0x3Cu;
  v23 = (v12 + 4) % 7;
  if (v23 < 0)
  {
    LODWORD(v23) = v23 + 7;
  }

  *(a4 + 24) = v23;
  v24 = 1970;
  if (v12 < 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    if ((v24 & 3) != 0)
    {
      v25 = 0;
    }

    else
    {
      v26 = __ROR8__(0x8F5C28F5C28F5C29 * v24 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL;
      v25 = __ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v24, 2) > 0x28F5C28F5C28F5CuLL || v26;
    }

    if (v12 < *(&year_lengths + v25))
    {
      break;
    }

    do
    {
LABEL_36:
      v27 = v24 + v12 / 365 + (v12 >> 63);
      if (v27 < 1)
      {
        v28 = -v27 / 0x190uLL + (-v27 >> 2) - -v27 / 0x64uLL + 1;
      }

      else
      {
        v28 = (v27 - 1) / 0x64uLL - ((v27 - 1) / 0x190uLL + ((v27 - 1) >> 2));
      }

      if (v24 >= 1)
      {
        v29 = (v24 - 1) / 0x190uLL - (v24 - 1) / 0x64uLL + ((v24 - 1) >> 2);
      }

      else
      {
        v29 = ~(-v24 / 0x190uLL + (-v24 >> 2)) + -v24 / 0x64uLL;
      }

      v12 = v12 - 365 * (v12 / 365 + (v12 >> 63)) + v29 + v28;
      v24 = v27;
    }

    while (v12 < 0);
  }

  if ((v24 - 2147485548) > 0xFFFFFFFEFFFFFFFFLL)
  {
    *(a4 + 20) = v24 - 1900;
    *(a4 + 28) = v12;
    v31 = mon_lengths[12 * v25];
    if (v12 >= v31)
    {
      v32 = 0;
      do
      {
        v12 -= v31;
        v31 = mon_lengths[12 * v25 + 1 + v32++];
      }

      while (v12 >= v31);
    }

    else
    {
      LODWORD(v32) = 0;
    }

    *(a4 + 12) = v12 + 1;
    *(a4 + 16) = v32;
    *(a4 + 32) = 0;
    *(a4 + 40) = a2;
  }

  else
  {
    v30 = __error();
    a4 = 0;
    *v30 = 84;
  }

  return a4;
}

uint64_t notify_check_tz(unsigned int *a1)
{
  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    check = 0;
    result = notify_check(result, &check);
    if (result | check)
    {
      a1[1] = 0;
    }
  }

  return result;
}

uint64_t __sflush(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if ((v3 & 4) != 0)
  {
    if (*(a1 + 72))
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        if (_sseek(a1, -v6, 1) == -1)
        {
          if (*__error() == 29)
          {
            return 0;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          v7 = *(a1 + 88);
          if (v7)
          {
            if (v7 != (a1 + 116))
            {
              free(v7);
            }

            *(a1 + 88) = 0;
          }

          result = 0;
          *a1 = *(a1 + 24);
          *(a1 + 16) &= ~0x20u;
          *(a1 + 8) = 0;
          v9 = *(a1 + 104);
          v9[11] = 0u;
          v9[12] = 0u;
          v9[9] = 0u;
          v9[10] = 0u;
          v9[7] = 0u;
          v9[8] = 0u;
          v9[5] = 0u;
          v9[6] = 0u;
        }

        return result;
      }
    }

    return 0;
  }

  if ((v3 & 8) == 0)
  {
    return 0;
  }

  v4 = (*a1 - v1);
  *a1 = v1;
  v5 = (v3 & 3) != 0 ? 0 : *(a1 + 32);
  *(a1 + 12) = v5;
  if (v4 < 1)
  {
    return 0;
  }

  while (1)
  {
    v10 = _swrite(a1, v1, v4);
    if (v10 <= 0)
    {
      break;
    }

    v1 += v10;
    v11 = __OFSUB__(v4, v10);
    v4 = (v4 - v10);
    if ((v4 < 0) ^ v11 | (v4 == 0))
    {
      return 0;
    }
  }

  v12 = *a1;
  if (v1 > *a1)
  {
    j__mkostemp(v12, v1);
    v12 = *a1;
  }

  *a1 = &v12[v4];
  v13 = *(a1 + 16);
  if ((v13 & 2) == 0)
  {
    *(a1 + 12) -= v4;
  }

  *(a1 + 16) = v13 | 0x40;
  return 0xFFFFFFFFLL;
}

uint64_t strtol(const char *__str, char **__endptr, int __base)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return strtol_l(__str, __endptr, __base, v5);
}

uint64_t strtol_l(const char *a1, char **a2, int a3, locale_t a4)
{
  v6 = &__global_locale;
  if (a4 == -1)
  {
    v7 = &__global_locale;
  }

  else
  {
    v7 = a4;
  }

  if (!a4)
  {
    v7 = &__c_locale;
  }

  if (v7 != -1)
  {
    v6 = v7;
  }

  if (!v7)
  {
    v6 = &__c_locale;
  }

  v8 = a1;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 < 0)
    {
      runetype = (*(*(v6 + 166) + 120) + 60);
    }

    else
    {
      runetype = _DefaultRuneLocale.__runetype;
    }
  }

  while ((runetype[v9] & 0x4000) != 0);
  if (v9 == 43 || v9 == 45)
  {
    v13 = *v8++;
    v12 = v13;
  }

  else
  {
    v12 = v9;
  }

  if ((a3 & 0xFFFFFFEF) != 0 || v12 != 48)
  {
    v16 = a3 == 0;
    if (v12 != 48)
    {
      v17 = 10;
      goto LABEL_30;
    }
  }

  else
  {
    if ((*v8 | 0x20) == 0x78)
    {
      v12 = v8[1];
      if ((v12 - 48) < 0xAu || (v14 = *(v8 + 1) - 65, v14 <= 0x25) && ((1 << v14) & 0x3F0000003FLL) != 0)
      {
        v8 += 2;
        v15 = 16;
        goto LABEL_35;
      }
    }

    v16 = a3 == 0;
    v12 = 48;
  }

  v17 = 8;
LABEL_30:
  if (v16)
  {
    v15 = v17;
  }

  else
  {
    v15 = a3;
  }

  if (v15 - 37 < 0xFFFFFFDD)
  {
    v18 = 0;
LABEL_59:
    *__error() = 22;
    v25 = 1;
    v20 = v18;
    if (!a2)
    {
      return v20;
    }

    goto LABEL_60;
  }

LABEL_35:
  v18 = 0;
  v19 = 0;
  if (v9 == 45)
  {
    v20 = 0x8000000000000000;
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v20 / v15;
  while (1)
  {
    v22 = v12 - 48;
    if ((v12 - 48) >= 0xAu)
    {
      if ((v12 - 65) > 0x19u)
      {
        if ((v12 - 97) > 0x19u)
        {
          break;
        }

        v22 = v12 - 87;
      }

      else
      {
        v22 = v12 - 55;
      }
    }

    if (v15 <= v22)
    {
      break;
    }

    v23 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v21)
    {
      if (v18 == v21 && v22 > (v20 % v15))
      {
        v18 = v20 / v15;
      }

      else
      {
        v18 = v18 * v15 + v22;
        v23 = 1;
      }
    }

    v24 = *v8++;
    v12 = v24;
    v19 = v23;
  }

  if ((v19 & 0x80000000) == 0)
  {
    if (v19)
    {
      v25 = 0;
      if (v9 == 45)
      {
        v20 = -v18;
      }

      else
      {
        v20 = v18;
      }

      if (!a2)
      {
        return v20;
      }

      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v28 = __error();
  v25 = 0;
  *v28 = 34;
  if (!a2)
  {
    return v20;
  }

LABEL_60:
  v26 = (v8 - 1);
  if (v25)
  {
    v26 = a1;
  }

  *a2 = v26;
  return v20;
}

uint64_t _swrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 16) & 0x100) != 0)
  {
    v6 = *__error();
    if (_sseek(a1, 0, 2) == -1 && (*(a1 + 16) & 0x400) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    *__error() = v6;
  }

  result = (*(a1 + 80))(*(a1 + 48), a2, a3);
  v8 = *(a1 + 16);
  if ((result & 0x80000000) != 0 || (~v8 & 0x1100) != 0 || (v9 = *(a1 + 144), v9 > (result ^ 0x7FFFFFFFFFFFFFFFLL)))
  {
    *(a1 + 16) = v8 & 0xEFFF;
  }

  else
  {
    *(a1 + 144) = v9 + result;
  }

  return result;
}

int fclose(FILE *a1)
{
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a1, 152);
  }

  pthread_once(&__sdidinit, __sinit);
  if (!a1)
  {
    v2 = -1;
    v3 = 14;
LABEL_22:
    *__error() = v3;
    return v2;
  }

  if (!a1->_flags)
  {
    v2 = -1;
    v3 = 9;
    goto LABEL_22;
  }

  flockfile(a1);
  v2 = __sflush(a1);
  if (v2 < 0)
  {
    v3 = *__error();
  }

  else
  {
    v3 = 0;
  }

  close = a1->_close;
  if (close && ((close)(a1->_cookie) & 0x80000000) != 0)
  {
    v3 = *__error();
    v2 = -1;
  }

  if ((a1->_flags & 0x80) != 0)
  {
    free(a1->_bf._base);
  }

  base = a1->_ub._base;
  if (base)
  {
    if (base != a1->_ubuf)
    {
      free(base);
    }

    a1->_ub._base = 0;
  }

  v6 = a1->_lb._base;
  if (v6)
  {
    free(v6);
    a1->_lb._base = 0;
  }

  a1->_file = -1;
  *&a1->_r = 0;
  funlockfile(a1);
  __sfprelease(a1);
  if (v3)
  {
    goto LABEL_22;
  }

  return v2;
}

int atoi(const char *a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return strtol_l(a1, 0, 10, v3);
}

void *__cdecl rb_tree_insert_node(rb_tree_t *a1, void *a2)
{
  v2 = a2;
  v4 = a1->opaque[0];
  v5 = a1->opaque[1];
  v6 = (a2 + v5[2]);
  if (a1->opaque[0])
  {
    v7 = *v5;
    do
    {
      v8 = v4;
      v9 = v4 - v5[2];
      v10 = v7(v5[3], v9, v2);
      if (!v10)
      {
        return v9;
      }

      v11 = v10 >> 31;
      v4 = v8->opaque[v10 >> 31];
    }

    while (v4);
    v12 = v6 + 2;
    v13 = v8 & 0xFFFFFFFFFFFFFFFDLL;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    v14 = 2;
  }

  else
  {
    v11 = 0;
    v12 = v6 + 2;
    v13 = a1 & 0xFFFFFFFFFFFFFFFDLL;
    v8 = a1;
LABEL_8:
    v14 = 0;
  }

  v15 = v13 | v14;
  if (v8 == a1)
  {
    v18 = 0;
    v17 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v6[2] = v17;
    a1->opaque[2] = v6;
    a1->opaque[3] = v6;
    v16 = v11;
  }

  else
  {
    v16 = v11;
    if (v8 == a1->opaque[v11 + 2])
    {
      a1->opaque[v11 + 2] = v6;
    }

    v17 = v15 | 1;
    *v12 = v17;
    v18 = v8->opaque[2] & 1;
  }

  v19 = v8->opaque[v16];
  *v6 = v19;
  v6[1] = v19;
  v8->opaque[v16] = v6;
  ++a1->opaque[4];
  if (v18)
  {
    v20 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = ((v17 & 0xFFFFFFFFFFFFFFFCLL) + 16);
    v22 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *(v22 + 8);
    v24 = v23 == (v17 & 0xFFFFFFFFFFFFFFFCLL);
    v25 = v23 != (v17 & 0xFFFFFFFFFFFFFFFCLL);
    v26 = *(v22 + 8 * v25);
    if (v26 && (v29 = *(v26 + 16), v27 = (v26 + 16), v28 = v29, (v29 & 1) != 0))
    {
      v31 = a1->opaque[0];
      while (1)
      {
        *v27 = v28 & 0xFFFFFFFFFFFFFFFELL;
        *v21 &= ~1uLL;
        if (v31 == v22)
        {
          break;
        }

        v6 = v22;
        v32 = *(v22 + 16);
        *(v22 + 16) = v32 | 1;
        v20 = v32 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v32 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          break;
        }

        v21 = (v20 + 16);
        v33 = *(v20 + 16);
        if ((v33 & 1) == 0)
        {
          break;
        }

        v22 = v33 & 0xFFFFFFFFFFFFFFFCLL;
        v34 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        v24 = v34 == v20;
        v25 = v34 != v20;
        v35 = *(v22 + 8 * v25);
        if (v35)
        {
          v36 = *(v35 + 16);
          v27 = (v35 + 16);
          v28 = v36;
          if (v36)
          {
            continue;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
LABEL_18:
      if (v6 == *(v20 + 8 * v25))
      {
        rb_tree_reparent_nodes(v20, v25);
      }

      rb_tree_reparent_nodes(v22, v24);
      *(a1->opaque[0] + 2) &= ~1uLL;
    }
  }

  return v2;
}

uint64_t __srefill0(uint64_t a1)
{
  pthread_once(&__sdidinit, __sinit);
  v2 = *(a1 + 104);
  if ((*(v2 + 72) & 7) == 0)
  {
    *(v2 + 72) |= 7u;
  }

  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if ((v3 & 0x20) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3 & 4) != 0)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      if (v4 != (a1 + 116))
      {
        free(v4);
      }

      *(a1 + 88) = 0;
      v5 = *(a1 + 112);
      *(a1 + 8) = v5;
      if (v5)
      {
        result = 0;
        *a1 = **(a1 + 104);
        return result;
      }
    }
  }

  else
  {
    if ((v3 & 0x10) == 0)
    {
      *__error() = 9;
      *(a1 + 16) |= 0x40u;
      return 0xFFFFFFFFLL;
    }

    if ((v3 & 8) != 0)
    {
      if (__sflush(a1))
      {
        return 0xFFFFFFFFLL;
      }

      v3 = *(a1 + 16) & 0xFFF7;
      *(a1 + 12) = 0;
      *(a1 + 40) = 0;
    }

    *(a1 + 16) = v3 | 4;
  }

  if (!*(a1 + 24))
  {
    __smakebuf(a1);
  }

  v7 = *(a1 + 16);
  if ((v7 & 3) != 0)
  {
    *(a1 + 16) = v7 | 0x8000;
    _fwalk(lflush);
    v8 = *(a1 + 16);
    *(a1 + 16) = v8 & 0x7FFF;
    if ((~v8 & 9) == 0)
    {
      __sflush(a1);
    }
  }

  return 1;
}

uint64_t __smakebuf(uint64_t result)
{
  v1 = result;
  if ((*(result + 16) & 2) != 0)
  {
    goto LABEL_56;
  }

  size = 0;
  v17 = 0;
  result = __swhatbuf(result, &size, &v17);
  v2 = result;
  v3 = *(v1 + 18);
  if ((v3 & 0x8000) != 0)
  {
    goto LABEL_48;
  }

  if (__getevp_predicate != -1)
  {
    result = __smakebuf_cold_1();
  }

  switch(v3)
  {
    case 2:
      v4 = &__stderr_evp;
LABEL_11:
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_13;
      }

      break;
    case 1:
      v4 = &__stdout_evp;
      goto LABEL_11;
    case 0:
      v4 = &__stdin_evp;
      goto LABEL_11;
  }

  v4 = &__fallback_evp;
  v5 = __fallback_evp;
  if (!__fallback_evp)
  {
    goto LABEL_40;
  }

LABEL_13:
  v6 = v5 - 66;
  if ((v5 - 66) <= 0x33)
  {
    if (((1 << v6) & 0x1000000011) != 0)
    {
      v8 = 0;
      ++v4;
      goto LABEL_23;
    }

    if (((1 << v6) & 0x40000000400) != 0)
    {
      ++v4;
      v8 = 1;
      goto LABEL_23;
    }

    if (((1 << v6) & 0x8000000080000) != 0)
    {
      goto LABEL_18;
    }
  }

  if (v5 == 48)
  {
LABEL_18:
    if (!*++v4)
    {
      v8 = 2;
      goto LABEL_23;
    }

LABEL_40:
    v12 = 0;
    goto LABEL_44;
  }

  v8 = 0;
LABEL_23:
  v9 = *v4;
  if ((v9 - 48) > 9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v10 = 10 * v10 + v9 - 48;
      v11 = *++v4;
      v9 = v11;
    }

    while ((v11 - 48) < 0xA);
  }

  v12 = 0;
  if (v9 <= 74)
  {
    if (v9 && v9 != 66)
    {
      goto LABEL_44;
    }
  }

  else if (v9 == 75 || v9 == 107)
  {
    ++v4;
    v10 <<= 10;
  }

  else
  {
    if (v9 != 77)
    {
      goto LABEL_44;
    }

    ++v4;
    v10 <<= 20;
  }

  if (*v4 == 66)
  {
    ++v4;
  }

  if (*v4)
  {
    goto LABEL_40;
  }

  v17 = 0;
  v13 = 4096;
  if (v10 < 0x1000)
  {
    v13 = v10;
  }

  size = v13;
  v12 = v8;
LABEL_44:
  v2 |= v12;
  if ((v2 & 2) == 0)
  {
    v14 = size;
    if (!size)
    {
      v14 = 1024;
    }

    size = v14;
LABEL_48:
    if (v17)
    {
      v15 = isatty(*(v1 + 18));
      v16 = size;
      if (v15)
      {
        v2 |= 1u;
        if (size > 0x1000)
        {
          v16 = 4096;
          *(v1 + 136) = 4096;
        }
      }
    }

    else
    {
      v16 = size;
    }

    result = malloc_type_malloc(v16, 0xD4B1B204uLL);
    if (result)
    {
      __cleanup = 1;
      *v1 = result;
      *(v1 + 24) = result;
      *(v1 + 32) = v16;
      *(v1 + 16) |= v2 | 0x80;
      return result;
    }
  }

  *(v1 + 16) |= 2u;
LABEL_56:
  *v1 = v1 + 119;
  *(v1 + 24) = v1 + 119;
  *(v1 + 32) = 1;
  return result;
}

uint64_t __srefill(uint64_t a1)
{
  result = __srefill0(a1);
  if (result >= 1)
  {

    return __srefill1(a1);
  }

  return result;
}

char *__cdecl fgets(char *a1, int a2, FILE *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = a1;
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a1, a2);
    if (off_1EAC9EA90)
    {
      (off_1EAC9EA90)(a3, 152);
    }
  }

  flockfile(a3);
  extra = a3->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 7u;
  }

  v7 = v5;
  v8 = a2 - 1;
  if (a2 == 1)
  {
    goto LABEL_20;
  }

  v7 = v5;
  while (1)
  {
    r = a3->_r;
    if (r)
    {
      goto LABEL_12;
    }

    if (__srefill(a3))
    {
      break;
    }

    r = a3->_r;
LABEL_12:
    p = a3->_p;
    if (r >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = r;
    }

    v12 = v11;
    v13 = j__mkdirx_np(a3->_p, 0xA);
    if (v13)
    {
      v14 = v13 + 1 - p;
      a3->_r = r - v14;
      a3->_p = (v13 + 1);
      j__mkdtempat_np(v7, p);
      v7 += v14;
      goto LABEL_20;
    }

    a3->_r = r - v12;
    a3->_p = &p[v12];
    j__mkdtempat_np(v7, p);
    v7 += v12;
    v8 -= v12;
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  if (v7 != v5)
  {
LABEL_20:
    *v7 = 0;
    goto LABEL_21;
  }

  v5 = 0;
LABEL_21:
  funlockfile(a3);
  return v5;
}

void flockfile(FILE *a1)
{
  v2 = *__error();
  pthread_mutex_lock((a1->_extra + 8));
  *__error() = v2;
}

int fileno(FILE *a1)
{
  flockfile(a1);
  file = a1->_file;
  funlockfile(a1);
  return file;
}

uint64_t __swhatbuf(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = *(a1 + 18);
  if (v6 < 0 || (memset(&v10, 0, sizeof(v10)), fstat(v6, &v10) < 0))
  {
    *a3 = 0;
    goto LABEL_12;
  }

  v7 = v10.st_mode & 0xF000;
  *a3 = v7 == 0x2000;
  if (v10.st_blksize <= 0)
  {
LABEL_12:
    *a2 = 1024;
    return 2048;
  }

  if (v10.st_blksize >= 0x1000u)
  {
    st_blksize = 4096;
  }

  else
  {
    st_blksize = v10.st_blksize;
  }

  *a2 = st_blksize;
  *(a1 + 136) = st_blksize;
  result = 2048;
  if (v7 == 0x8000)
  {
    if (*(a1 + 72) == __sseek)
    {
      return 1024;
    }

    else
    {
      return 2048;
    }
  }

  return result;
}

uint64_t __srefill1(uint64_t a1)
{
  *a1 = *(a1 + 24);
  v2 = _sread(a1);
  *(a1 + 8) = v2;
  v3 = *(a1 + 16) & 0xDFFF;
  *(a1 + 16) = v3;
  if (v2 > 0)
  {
    return 0;
  }

  if (v2)
  {
    *(a1 + 8) = 0;
    v5 = 64;
  }

  else
  {
    v5 = 32;
  }

  *(a1 + 16) = v3 | v5;
  return 0xFFFFFFFFLL;
}

uint64_t _sread(uint64_t a1)
{
  result = (*(a1 + 64))(*(a1 + 48));
  if (result < 1)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v3 = *(a1 + 16);
  }

  else
  {
    v3 = *(a1 + 16);
    if ((v3 & 0x1000) == 0)
    {
      return result;
    }

    v4 = *(a1 + 144);
    if (v4 <= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      *(a1 + 144) = v4 + result;
      return result;
    }
  }

  *(a1 + 16) = v3 & 0xEFFF;
  return result;
}

DIR *__cdecl __opendir2(const char *a1, int a2)
{
  if ((a2 & 0x18) != 0)
  {
    return 0;
  }

  v4 = open_NOCANCEL();
  if (v4 == -1)
  {
    return 0;
  }

  result = __opendir_common(v4, a2, 0);
  if (!result)
  {
    v5 = *__error();
    close_NOCANCEL();
    v6 = __error();
    result = 0;
    *v6 = v5;
  }

  return result;
}

char *__cdecl strndup(const char *__s1, size_t __n)
{
  v3 = 0;
  if (__n)
  {
    while (__s1[v3])
    {
      if (__n == ++v3)
      {
        v3 = __n;
        break;
      }
    }
  }

  v4 = malloc_type_malloc(v3 + 1, 0xFA55E140uLL);
  v5 = v4;
  if (v4)
  {
    j__mkdtempat_np(v4, __s1);
    v5[v3] = 0;
  }

  return v5;
}

uint64_t __sfprelease(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(v2 + 72);
  if ((v3 & 8) != 0)
  {
    atomic_fetch_add_explicit(&__scounted, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    *(v2 + 72) = v3 & 0xF7;
    v2 = *(a1 + 104);
  }

  pthread_mutex_destroy((v2 + 8));
  pthread_mutex_lock(&filelist_lock);
  *(a1 + 16) = 0;

  return pthread_mutex_unlock(&filelist_lock);
}

unint64_t _readdir_unlocked(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = *(a1 + 8);
  while (1)
  {
    if (v5 >= *(a1 + 16))
    {
      v7 = *(a1 + 56);
      if ((v7 & 0x28) != 0)
      {
        return 0;
      }

      v6 = v7 & 0xFFFFFFC7;
      *(a1 + 56) = v6;
      *(a1 + 8) = 0;
      v4 = v5;
    }

    else
    {
      v6 = *(a1 + 56);
      if (v5)
      {
        goto LABEL_20;
      }
    }

    if ((v6 & 0x38) != 0)
    {
      v5 = 0;
      goto LABEL_20;
    }

    v8 = *(a1 + 32);
    if (v8 == 2048)
    {
      v9 = malloc_type_malloc(0x2000uLL, 0xA7CA79B2uLL);
      v10 = *(a1 + 24);
      if (v9)
      {
        v11 = v9;
        free(*(a1 + 24));
        *(a1 + 24) = v11;
        v8 = 0x2000;
        *(a1 + 32) = 0x2000;
        v10 = v11;
      }

      else
      {
        v8 = *(a1 + 32);
      }
    }

    else
    {
      v10 = *(a1 + 24);
    }

    v12 = v10 + v8;
    *(v12 - 4) = 0;
    v13 = *(*(a1 + 128) + 16);
    result = __getdirentries64();
    *(a1 + 16) = result;
    if ((result & 0x8000000000000000) != 0)
    {
      return 0;
    }

    if (result <= *(a1 + 32) - 4)
    {
      if (*(v12 - 4))
      {
        *(a1 + 56) |= 0x20u;
      }

      if (!result)
      {
        return result;
      }
    }

    _fixtelldir(a1, v13, v4);
    v6 = *(a1 + 56);
    v5 = *(a1 + 8);
LABEL_20:
    *(a1 + 56) = v6 & 0xFFFFFFEF;
    result = *(a1 + 24) + v5;
    if ((result & 3) != 0)
    {
      return 0;
    }

    v15 = *(result + 16);
    if (!*(result + 16) || *(a1 + 32) - v5 + 1 < v15)
    {
      return 0;
    }

    v5 += v15;
    *(a1 + 8) = v5;
    if (!a2 || *result)
    {
      v16 = v6 & 1;
      if (*(result + 20) != 14 || v16 == 0)
      {
        return result;
      }
    }
  }
}

lconv *localeconv(void)
{
  v0 = __locale_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (v1)
  {
    return localeconv_l(v1);
  }

  else
  {
    return localeconv_l(&__global_locale);
  }
}

unint64_t strtoull(const char *__str, char **__endptr, int __base)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return strtoull_l(__str, __endptr, __base, v5);
}

unint64_t strtoull_l(const char *a1, char **a2, int a3, locale_t a4)
{
  v6 = &__global_locale;
  if (a4 == -1)
  {
    v7 = &__global_locale;
  }

  else
  {
    v7 = a4;
  }

  if (!a4)
  {
    v7 = &__c_locale;
  }

  if (v7 != -1)
  {
    v6 = v7;
  }

  if (!v7)
  {
    v6 = &__c_locale;
  }

  v8 = a1;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 < 0)
    {
      runetype = (*(*(v6 + 166) + 120) + 60);
    }

    else
    {
      runetype = _DefaultRuneLocale.__runetype;
    }
  }

  while ((runetype[v9] & 0x4000) != 0);
  if (v9 == 43 || v9 == 45)
  {
    v13 = *v8++;
    v12 = v13;
  }

  else
  {
    v12 = v9;
  }

  if ((a3 & 0xFFFFFFEF) != 0 || v12 != 48)
  {
    v16 = a3 == 0;
    if (v12 != 48)
    {
      v17 = 10;
      goto LABEL_30;
    }
  }

  else
  {
    if ((*v8 | 0x20) == 0x78)
    {
      v12 = v8[1];
      if ((v12 - 48) < 0xAu || (v14 = *(v8 + 1) - 65, v14 <= 0x25) && ((1 << v14) & 0x3F0000003FLL) != 0)
      {
        v8 += 2;
        v15 = 16;
        goto LABEL_35;
      }
    }

    v16 = a3 == 0;
    v12 = 48;
  }

  v17 = 8;
LABEL_30:
  if (v16)
  {
    v15 = v17;
  }

  else
  {
    v15 = a3;
  }

  if (v15 - 37 < 0xFFFFFFDD)
  {
    v18 = 0;
    goto LABEL_55;
  }

LABEL_35:
  v18 = 0;
  v19 = 0;
  v20 = 0xFFFFFFFFFFFFFFFFLL / v15;
  while (1)
  {
    v21 = v12 - 48;
    if ((v12 - 48) >= 0xAu)
    {
      if ((v12 - 65) > 0x19u)
      {
        if ((v12 - 97) > 0x19u)
        {
          break;
        }

        v21 = v12 - 87;
      }

      else
      {
        v21 = v12 - 55;
      }
    }

    if (v15 <= v21)
    {
      break;
    }

    v22 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v20)
    {
      if (v18 == v20 && v21 > ~(v20 * v15))
      {
        v18 = 0xFFFFFFFFFFFFFFFFLL / v15;
      }

      else
      {
        v18 = v18 * v15 + v21;
        v22 = 1;
      }
    }

    v23 = *v8++;
    v12 = v23;
    v19 = v22;
  }

  if (v19 < 0)
  {
    v27 = __error();
    v24 = 0;
    *v27 = 34;
    v18 = -1;
    if (!a2)
    {
      return v18;
    }

    goto LABEL_56;
  }

  if (!v19)
  {
LABEL_55:
    *__error() = 22;
    v24 = 1;
    if (!a2)
    {
      return v18;
    }

    goto LABEL_56;
  }

  v24 = 0;
  if (v9 == 45)
  {
    v18 = -v18;
  }

  if (a2)
  {
LABEL_56:
    v25 = (v8 - 1);
    if (v24)
    {
      v25 = a1;
    }

    *a2 = v25;
  }

  return v18;
}

uint64_t _libc_initializer(void *a1, uint64_t a2, char **a3, uint64_t *a4)
{
  _program_vars_init(a4);
  _libc_fork_init(a1);
  __confstr_init(a1);
  __atexit_init();
  inited = _init_clock_port();
  _arc4_fork_child(inited);
  __xlocale_init();
  __guard_setup(a3, v7, v8, v9, v10);
  v11 = _subsystem_init();

  return _arc4_fork_child(v11);
}

void *_libc_fork_init(void *result)
{
  v1 = 1;
  if (*result > 1uLL)
  {
    v1 = 5;
  }

  v2 = &_libSystem_atfork_prepare;
  if (*result > 1uLL)
  {
    v2 = &_libSystem_atfork_prepare_v2;
  }

  v3 = 2;
  if (*result > 1uLL)
  {
    v3 = 6;
  }

  v4 = &_libSystem_atfork_parent;
  if (*result > 1uLL)
  {
    v4 = &_libSystem_atfork_parent_v2;
  }

  v5 = 3;
  if (*result > 1uLL)
  {
    v5 = 7;
  }

  v6 = &_libSystem_atfork_child;
  if (*result > 1uLL)
  {
    v6 = &_libSystem_atfork_child_v2;
  }

  *v2 = result[v1];
  *v4 = result[v3];
  *v6 = result[v5];
  return result;
}

uint64_t _init_clock_port()
{
  v0 = MEMORY[0x193AD6410]();
  if (host_get_clock_service(v0, 0, &clock_port) || (v1 = MEMORY[0x1E69E9A60], semaphore_create(*MEMORY[0x1E69E9A60], &clock_sem, 0, 0)))
  {
    abort();
  }

  v2 = *v1;

  return mach_port_deallocate(v2, v0);
}

uint64_t *_program_vars_init(uint64_t *result)
{
  v1 = result[1];
  NXArgv_pointer = result[2];
  NXArgc_pointer = v1;
  v2 = result[4];
  environ_pointer = result[3];
  __progname_pointer = v2;
  _mh_execute_header_pointer = *result;
  return result;
}

uint64_t __atexit_init()
{
  if (*(MEMORY[0x1E69E99F0] + 32) == -1)
  {
    result = *(MEMORY[0x1E69E99F0] + 40);
  }

  else
  {
    result = _os_alloc_once();
  }

  __atexit = result;
  return result;
}

void uuid_unparse_upper(const uuid_t uu, uuid_string_t out)
{
  v2 = 0;
  do
  {
    if (v2 <= 0xA && ((1 << v2) & 0x550) != 0)
    {
      *out++ = 45;
    }

    *out = a0123456789abcd_0[uu[v2] >> 4];
    out[1] = a0123456789abcd_0[uu[v2] & 0xF];
    out += 2;
    ++v2;
  }

  while (v2 != 16);
  *out = 0;
}

uint64_t signal__(uint64_t a1, __sigaction_u a2, int a3)
{
  v5.__sigaction_u.__sa_handler = 0;
  *&v5.sa_mask = 0;
  v6.__sigaction_u = a2;
  v3 = 1 << (a1 - 1);
  if (a1 > 32)
  {
    v3 = 0;
  }

  v6.sa_mask = 0;
  v6.sa_flags = 2 * ((_sigintr & v3) == 0);
  if (a3)
  {
    if ((sigaction(a1, &v6, &v5) & 0x80000000) == 0)
    {
      return v5.__sigaction_u.__sa_handler;
    }
  }

  else if ((_sigaction_nobind(a1, &v6, &v5) & 0x80000000) == 0)
  {
    return v5.__sigaction_u.__sa_handler;
  }

  return -1;
}

void uuid_copy(uuid_t dst, const uuid_t src)
{
  v2 = 0;
  do
  {
    dst[v2] = src[v2];
    ++v2;
  }

  while (v2 != 16);
}

time_t time(time_t *a1)
{
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  v4.__fpsr = 0;
  v4.__fpcr = 0;
  fegetenv(&v4);
  if (gettimeofday(&v5, 0) < 0)
  {
    tv_sec = -1;
  }

  else
  {
    tv_sec = v5.tv_sec;
  }

  if (a1)
  {
    *a1 = tv_sec;
  }

  fesetenv(&v4);
  return tv_sec;
}

uint64_t __thread_stack_pcs(uint64_t a1, int a2, unsigned int *a3, int a4, uintptr_t a5, int a6)
{
  v12 = pthread_self();
  stackaddr_np = pthread_get_stackaddr_np(v12);
  stacksize_np = pthread_get_stacksize_np(v12);
  v53 = 0;
  v54 = 0;
  *a3 = 0;
  v15 = pthread_stack_frame_decode_np(&vars0, 0);
  _dyld_stack_range();
  if (&vars0)
  {
    return 0;
  }

  v50 = a2;
  v51 = a6;
  v16 = &stackaddr_np[-stacksize_np];
  if (&vars0 >= &stackaddr_np[-stacksize_np] && &vars0 <= stackaddr_np || (v17 = v53, v18 = v54, &vars0) && &vars0 >= v53 && &vars0 <= v54)
  {
    v19 = &vars0;
    v20 = &vars0;
    v49 = 0;
    goto LABEL_8;
  }

  v23 = 0;
  if (a5 || (a6 & 1) != 0)
  {
    return v23;
  }

  v35 = &vars0;
  v36 = 1 - a4;
  while (1)
  {
    if (v36 == 1)
    {
      if (v50)
      {
        v23 = 0;
        v40 = 1 - v50;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        while (1)
        {
          return_addr = 0;
          if (*v35 >> 60 == 1)
          {
            v42 = *(StatusReg + 824);
            if (v42)
            {
              if (*(v42 + 36))
              {
                v23 = 1;
              }
            }
          }

          v19 = pthread_stack_frame_decode_np(v35, &return_addr);
          v43 = *a3;
          *(a1 + 8 * v43) = return_addr;
          *a3 = v43 + 1;
          if (v19)
          {
            return v23;
          }

          if (v16 <= v19 && stackaddr_np >= v19)
          {
            break;
          }

          if (v19)
          {
            v44 = v53 > v19;
          }

          else
          {
            v44 = 1;
          }

          v46 = v44 || v54 < v19;
          if (v46 == 1 && v19 - v35 - 0x100000 < 0xFFFFFFFFFFF00001)
          {
            return v23;
          }

          if ((v46 & 1) == 0)
          {
            break;
          }

          ++v40;
          v35 = v19;
          if (v40 == 1)
          {
            return v23;
          }
        }

        a4 = 0;
        v49 = v23;
        v50 = -v40;
        v15 = v19;
        v20 = v19;
        goto LABEL_8;
      }

      return 0;
    }

    v20 = v15;
    if (v15)
    {
      return 0;
    }

    v37 = v36;
    if (v15 >= v16 && v15 <= stackaddr_np)
    {
      break;
    }

    v39 = v15 > v18 || v15 < v17 || v15 == 0;
    if (v39 && v15 - v35 - 0x100000 < 0xFFFFFFFFFFF00001)
    {
      return 0;
    }

    v15 = pthread_stack_frame_decode_np(v15, 0);
    v17 = v53;
    v18 = v54;
    v36 = v37 + 1;
    v35 = v20;
    if (v20)
    {
      v35 = v20;
      if (v20 >= v53)
      {
        v35 = v20;
        if (v20 <= v54)
        {
          goto LABEL_107;
        }
      }
    }
  }

  v15 = pthread_stack_frame_decode_np(v15, 0);
LABEL_107:
  v49 = 0;
  a4 = -v37;
  v19 = v20;
LABEL_8:
  v21 = &stackaddr_np[v19 - v15];
  while (2)
  {
    v22 = v15;
    if (a5)
    {
      if (v15 > a5)
      {
        break;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      --a4;
LABEL_14:
      if (v15 < v16 || v15 > v21)
      {
        v23 = 0;
        if (!v15 || v15 < v53 || v15 > v54)
        {
          return v23;
        }
      }

      v23 = 0;
      if ((v15 & 1) != 0 || v15 <= v20)
      {
        return v23;
      }

      v15 = pthread_stack_frame_decode_np(v15, 0);
      v20 = v22;
      continue;
    }

    break;
  }

  if (!v50)
  {
    return v49;
  }

  v24 = 1 - v50;
  v25 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = v49;
  while (1)
  {
    return_addr = 0;
    if (*v20 >> 60 == 1)
    {
      v26 = *(v25 + 824);
      if (v26)
      {
        v27 = *(v26 + 36);
        v23 = v27 ? 1 : v23;
        if (v27 && v51 != 0)
        {
          break;
        }
      }
    }

    v29 = pthread_stack_frame_decode_np(v20, &return_addr);
    v30 = *a3;
    *(a1 + 8 * v30) = return_addr;
    *a3 = v30 + 1;
    v32 = v16 > v29 || v21 < v29;
    if (v32 == 1)
    {
      if ((v29 & 1) != 0 || !v29 || v53 > v29 || v54 < v29)
      {
        return v23;
      }
    }

    else if (v29)
    {
      return v23;
    }

    if (v20 < v29 || (v20 >= v16 ? (v33 = v20 > v21) : (v33 = 1), v33 ? (v34 = 0) : (v34 = 1), v34 == v32))
    {
      ++v24;
      v20 = v29;
      if (v24 != 1)
      {
        continue;
      }
    }

    return v23;
  }

  __thread_stack_async_pcs(a1, -v24, a3, v20);
  return v27;
}

void backtrace_image_offsets(void *const *array, image_offset *image_offsets, int size)
{
  v5 = size;
  MEMORY[0x1EEE9AC00](array, array);
  v6 = (&v7 - 4 * v5);
  _dyld_images_for_addresses();
  if (size >= 1)
  {
    do
    {
      uuid_copy(image_offsets->uuid, v6);
      image_offsets->offset = *(v6 + 2);
      v6 += 32;
      ++image_offsets;
      --v5;
    }

    while (v5);
  }
}

char *__cdecl stpcpy(char *__dst, const char *__src)
{
  v5 = j__strsignal_r(__src, __src, v2);
  j__mkdtempat_np(__dst, __src);
  return &__dst[v5];
}

int usleep(useconds_t a1)
{
  v2.tv_sec = a1 / 0xF4240uLL;
  v2.tv_nsec = 1000 * (a1 % 0xF4240);
  return nanosleep(&v2, 0);
}

int nanosleep(const timespec *__rqtp, timespec *__rmtp)
{
  if (!*MEMORY[0x1E69E9B90])
  {
    *MEMORY[0x1E69E9B90] = 1;
  }

  cur_time = 0;
  v19 = 0;
  pthread_testcancel();
  if (!__rqtp || __rqtp->tv_sec < 0 || __rqtp->tv_nsec >= 0x3B9ACA00uLL)
  {
    goto LABEL_9;
  }

  if (__rmtp)
  {
    time = clock_get_time(clock_port, &cur_time);
    if (time)
    {
      v5 = __stderrp;
      v6 = mach_error_string(time);
      fprintf(v5, "clock_get_time() failed: %s\n", v6);
      goto LABEL_9;
    }
  }

  if ((__semwait_signal() & 0x80000000) == 0)
  {
    return -1;
  }

  if (*__error() != 60)
  {
    if (*__error() == 4)
    {
      if (__rmtp)
      {
        v8 = clock_get_time(clock_port, &v19);
        if (!v8)
        {
          v11 = cur_time.tv_nsec + LODWORD(__rqtp->tv_nsec);
          if (v11 <= 999999999)
          {
            tv_sec = cur_time.tv_sec;
          }

          else
          {
            v11 -= 1000000000;
            tv_sec = cur_time.tv_sec + 1;
          }

          v13 = tv_sec + LODWORD(__rqtp->tv_sec);
          if (v13 <= v19.tv_sec)
          {
            if (v13 < v19.tv_sec || (tv_nsec = v19.tv_nsec, v11 <= v19.tv_nsec))
            {
              __rmtp->tv_sec = 0;
              __rmtp->tv_nsec = 0;
              return -1;
            }
          }

          else
          {
            tv_nsec = v19.tv_nsec;
          }

          v15 = __OFSUB__(v11, tv_nsec);
          v16 = v11 - tv_nsec;
          if (v16 < 0 != v15)
          {
            v17 = v16 + 1000000000;
          }

          else
          {
            v17 = v16;
          }

          __rmtp->tv_sec = v13 + (v16 >> 31) - v19.tv_sec;
          __rmtp->tv_nsec = v17;
          return -1;
        }

        v9 = __stderrp;
        v10 = mach_error_string(v8);
        fprintf(v9, "clock_get_time() failed: %s\n", v10);
      }

      return -1;
    }

LABEL_9:
    *__error() = 22;
    return -1;
  }

  return 0;
}

unsigned int sleep(unsigned int a1)
{
  v1 = a1;
  if ((a1 & 0x80000000) != 0)
  {
    return a1 - 0x7FFFFFFF + sleep(0x7FFFFFFFu);
  }

  v3.tv_sec = 0;
  v3.tv_nsec = 0;
  __rqtp.tv_sec = a1;
  __rqtp.tv_nsec = 0;
  if (nanosleep(&__rqtp, &v3) != -1)
  {
    return 0;
  }

  if (*__error() == 4)
  {
    if (v3.tv_nsec)
    {
      return LODWORD(v3.tv_sec) + 1;
    }

    else
    {
      return v3.tv_sec;
    }
  }

  return v1;
}

FILE *__cdecl funopen(const void *a1, int (__cdecl *a2)(void *, char *, int), int (__cdecl *a3)(void *, const char *, int), fpos_t (__cdecl *a4)(void *, fpos_t, int), int (__cdecl *a5)(void *))
{
  if (a2)
  {
    if (a3)
    {
      v10 = 16;
    }

    else
    {
      v10 = 4;
    }
  }

  else
  {
    if (!a3)
    {
      v12 = __error();
      result = 0;
      *v12 = 22;
      return result;
    }

    v10 = 8;
  }

  result = __sfp(0);
  if (result)
  {
    result->_flags = v10;
    result->_file = -1;
    result->_seek = a4;
    result->_write = a3;
    result->_close = a5;
    result->_read = a2;
    result->_cookie = a1;
  }

  return result;
}

int vfprintf_l(FILE *a1, locale_t a2, const char *a3, va_list a4)
{
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a1, 152);
  }

  flockfile(a1);
  v8 = __xvprintf(0xFFFFFFFFFFFFFFFFLL, 0, a1, a2, a3, a4);
  funlockfile(a1);
  return v8;
}

int fprintf(FILE *a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vfprintf_l(a1, v5, a2, va);
}

uint64_t __xvprintf(pthread_mutex_t *a1, pthread_rwlock_t *a2, uint64_t a3, atomic_uint *a4, char *a5, __int16 *a6)
{
  v7 = *(a3 + 16);
  if ((v7 & 0x1A) != 0xA || (v8 = *(a3 + 18), v8 < 0))
  {

    return __v2printf(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v28 = 0u;
    v27 = 0u;
    v26 = 0;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v34 = 0;
    v35 = 0;
    v25 = v30;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30[0] = 0;
    v30[1] = 850045858;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    WORD4(v19) = v7 & 0xFFED;
    WORD5(v19) = v8;
    *(&v21 + 1) = *(a3 + 48);
    *(&v23 + 1) = *(a3 + 80);
    v9 = *(a3 + 104);
    LOBYTE(v35) = *(v9 + 72) & 7;
    v10 = *(v9 + 80);
    v11 = *(v9 + 96);
    v12 = *(v9 + 128);
    v38 = *(v9 + 112);
    v39 = v12;
    v36 = v10;
    v37 = v11;
    v13 = *(v9 + 144);
    v14 = *(v9 + 160);
    v15 = *(v9 + 192);
    v42 = *(v9 + 176);
    v43 = v15;
    v40 = v13;
    v41 = v14;
    v18 = v29;
    *&v20 = v29;
    DWORD1(v19) = 1024;
    DWORD2(v20) = 1024;
    LODWORD(v21) = 0;
    v16 = __v2printf(a1, a2, &v18, a4, a5, a6);
    if ((v16 & 0x80000000) == 0)
    {
      if (__fflush(&v18))
      {
        v16 = 0xFFFFFFFFLL;
      }

      else
      {
        v16 = v16;
      }
    }

    if ((BYTE8(v19) & 0x40) != 0)
    {
      *(a3 + 16) = v7 | 0x40;
    }

    return v16;
  }
}

uint64_t __swsetup(uint64_t a1)
{
  pthread_once(&__sdidinit, __sinit);
  v2 = *(a1 + 16);
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      *__error() = 9;
      *(a1 + 16) |= 0x40u;
      return 0xFFFFFFFFLL;
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(a1 + 88);
      if (v4)
      {
        if (v4 != (a1 + 116))
        {
          free(v4);
          v2 = *(a1 + 16);
        }

        *(a1 + 88) = 0;
      }

      v2 &= 0xFFDBu;
      *(a1 + 8) = 0;
      *a1 = *(a1 + 24);
    }

    v2 |= 8u;
    *(a1 + 16) = v2;
  }

  if (!*(a1 + 24))
  {
    __smakebuf(a1);
    v2 = *(a1 + 16);
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = 0;
    *(a1 + 12) = 0;
    *(a1 + 40) = -*(a1 + 32);
    return result;
  }

  if (v2)
  {
    goto LABEL_16;
  }

LABEL_13:
  if ((v2 & 2) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  result = 0;
  *(a1 + 12) = v5;
  return result;
}

int fputc(int a1, FILE *a2)
{
  flockfile(a2);
  w = a2->_w;
  a2->_w = w - 1;
  v5 = a1;
  if (w < 1 && (a1 == 10 || w <= a2->_lbfsize))
  {
    v5 = __swbuf(a1, a2);
  }

  else
  {
    v6 = a2->_p++;
    *v6 = a1;
  }

  funlockfile(a2);
  return v5;
}

int fputs(const char *a1, FILE *a2)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a1);
  }

  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a2, 152);
  }

  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = "(null)";
  }

  v10 = v5;
  v6 = j__strsignal_r(v5, a2, v2);
  v11 = v6;
  v12 = &v10;
  v13 = 1;
  v14 = v6;
  flockfile(a2);
  extra = a2->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 7u;
  }

  v8 = __sfvwrite(a2, &v12);
  funlockfile(a2);
  if (v8)
  {
    return v8;
  }

  else
  {
    return v11;
  }
}

int vsnprintf(char *__str, size_t __size, const char *__format, va_list a4)
{
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__global_locale;
  }

  return _vsnprintf(0xFFFFFFFFFFFFFFFFLL, 0, __str, __size, v6, __format, a4);
}

int vsscanf_l(const char *a1, locale_t a2, const char *a3, va_list a4)
{
  v19 = 0u;
  v18 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v17 = v20;
  v24 = 0;
  v25 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20[0] = 0;
  v20[1] = 850045858;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a1);
    v8 = v25 & 0xF8;
  }

  else
  {
    v8 = 0;
  }

  DWORD2(v11) = -65532;
  v10 = a1;
  *&v12 = a1;
  LODWORD(v11) = j__strsignal_r(a1, a2, a3);
  DWORD2(v12) = v11;
  *(&v14 + 1) = eofread;
  *&v16 = 0;
  *&v18 = 0;
  LOBYTE(v25) = v8;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  return __svfscanf_l(&v10, a2, a3, a4);
}

int sscanf(const char *a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vsscanf_l(a1, v5, a2, va);
}

uint64_t __svfscanf_l(char **a1, _xlocale *a2, unsigned __int8 *a3, __int32 **a4)
{
  v174 = a4;
  v7 = &libc_hooks;
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(a2, 1472);
  }

  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a3);
  }

  memset(&v175, 0, sizeof(v175));
  if (a2 == -1)
  {
    v8 = &__global_locale;
  }

  else
  {
    v8 = a2;
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = &__c_locale;
  }

  v10 = *(*(v9 + 166) + 64);
  v11 = a1[13];
  if ((v11[72] & 7) == 0)
  {
    v11[72] |= 7u;
  }

  v172 = v174;
  v173 = 0;
  v12 = *a3;
  if (!*a3)
  {
    return 0;
  }

  LODWORD(v13) = 0;
  v169 = v9;
  v170 = 0;
  v14 = 0;
  if (v9 == -1)
  {
    v15 = &__global_locale;
  }

  else
  {
    v15 = v9;
  }

  v163 = v10;
  v164 = v15;
LABEL_18:
  v167 = v13;
  v16 = a3;
  *base = v14;
  while (1)
  {
    a3 = v16;
LABEL_20:
    if ((v12 & 0x80) != 0)
    {
      v17 = *(*(v15 + 166) + 120);
    }

    else
    {
      v17 = &_DefaultRuneLocale;
    }

    v16 = a3 + 1;
    if ((v17->__runetype[v12] & 0x4000) != 0)
    {
      v30 = *(a1 + 2);
      while (v30 > 0 || !__srefill(a1))
      {
        v31 = *a1;
        v32 = **a1 < 0 ? *(*(v15 + 166) + 120) : &_DefaultRuneLocale;
        if ((v32->__runetype[**a1] & 0x4000) == 0)
        {
          break;
        }

        ++v170;
        v30 = *(a1 + 2) - 1;
        *(a1 + 2) = v30;
        *a1 = v31 + 1;
      }

      goto LABEL_93;
    }

    if (v12 == 37)
    {
      break;
    }

    if (*(a1 + 2) <= 0 && __srefill(a1))
    {
      goto LABEL_508;
    }

LABEL_91:
    v33 = *a1;
    if (v12 != **a1)
    {
      return v167;
    }

    --*(a1 + 2);
    *a1 = v33 + 1;
    ++v170;
LABEL_93:
    v12 = *v16;
    if (!*v16)
    {
      return v167;
    }
  }

  v18 = 0;
  v19 = 0;
  while (2)
  {
    a3 = v16 + 1;
    switch(*v16)
    {
      case '$':
        if ((v19 - 10) < 0xFFFFFFF7 || *(v16 - 2) != 37)
        {
          goto LABEL_508;
        }

        v20 = v19;
        v19 = 0;
        v174 = v172;
        ++v16;
        if (v20 < 2)
        {
          continue;
        }

        v21 = v20 + 1;
        do
        {
          ++v174;
          --v21;
        }

        while (v21 > 2);
        v19 = 0;
        goto LABEL_28;
      case '%':
        v27 = *(a1 + 2);
        while (2)
        {
          if (v27 <= 0 && __srefill(a1))
          {
            goto LABEL_508;
          }

          v28 = *a1;
          if (**a1 < 0)
          {
            v29 = *(*(v15 + 166) + 120);
          }

          else
          {
            v29 = &_DefaultRuneLocale;
          }

          if ((v29->__runetype[**a1] & 0x4000) != 0)
          {
            ++v170;
            v27 = *(a1 + 2) - 1;
            *(a1 + 2) = v27;
            *a1 = v28 + 1;
            continue;
          }

          break;
        }

        v12 = 37;
        ++v16;
        goto LABEL_91;
      case '&':
      case '\'':
      case '(':
      case ')':
      case '+':
      case ',':
      case '-':
      case '.':
      case '/':
      case ':':
      case ';':
      case '<':
      case '=':
      case '>':
      case '?':
      case '@':
      case 'B':
      case 'D':
      case 'H':
      case 'I':
      case 'J':
      case 'K':
      case 'M':
      case 'N':
      case 'O':
      case 'P':
      case 'Q':
      case 'R':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'Y':
      case 'Z':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'b':
      case 'k':
      case 'm':
      case 'r':
      case 'v':
      case 'w':
      case 'y':
        return v167;
      case '*':
        v18 |= 8u;
        goto LABEL_28;
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
        v19 = *v16 + 10 * v19 - 48;
        goto LABEL_28;
      case 'A':
      case 'E':
      case 'F':
      case 'G':
      case 'a':
      case 'e':
      case 'f':
      case 'g':
        v34 = 4;
        goto LABEL_108;
      case 'C':
        v18 |= 1u;
        goto LABEL_104;
      case 'L':
        v18 |= 2u;
        goto LABEL_28;
      case 'S':
        v18 |= 1u;
        goto LABEL_102;
      case 'X':
      case 'x':
        v35 = 33024;
        goto LABEL_106;
      case '[':
        v110 = v16[1];
        if (v110 == 94)
        {
          a3 = v16 + 3;
          v110 = v16[2];
          v111 = 1;
        }

        else
        {
          v111 = 0;
          a3 = v16 + 2;
        }

        v179 = vdupq_n_s8(v111);
        v180 = v179;
        v178[12] = v179;
        v178[13] = v179;
        v178[10] = v179;
        v178[11] = v179;
        v178[8] = v179;
        v178[9] = v179;
        v178[6] = v179;
        v178[7] = v179;
        v178[4] = v179;
        v178[5] = v179;
        v178[2] = v179;
        v178[3] = v179;
        v178[0] = v179;
        v178[1] = v179;
        if (!v110)
        {
          --a3;
          goto LABEL_480;
        }

        v146 = v111 ^ 1;
        while (2)
        {
          while (2)
          {
            *(v178 + v110) = v146;
            v147 = a3;
            v148 = v110;
LABEL_434:
            a3 = v147 + 1;
            v110 = *v147;
            if (v110 == 45)
            {
              v149 = *a3;
              if (v149 != 93)
              {
                if (!*(*(v169 + 165) + 64))
                {
                  if ((__collate_range_cmp(*a3, v148, v169) & 0x80000000) != 0)
                  {
                    v110 = 45;
                    v10 = v163;
                    continue;
                  }

                  v147 += 2;
                  if (!*(*(v169 + 165) + 64))
                  {
                    v151 = 0;
                    v10 = v163;
                    do
                    {
                      if ((__collate_range_cmp(v148, v151, v169) & 0x80000000) != 0 && __collate_range_cmp(v151, v149, v169) <= 0)
                      {
                        *(v178 + v151) = v146;
                      }

                      ++v151;
                    }

                    while (v151 != 256);
                    goto LABEL_446;
                  }

                  v10 = v163;
LABEL_442:
                  if ((v148 + 1) > v149)
                  {
                    v150 = v148 + 1;
                  }

                  else
                  {
                    v150 = v149;
                  }

                  j__mkostemps(v178 + v148 + 1, v146, v150 + ~v148 + 1);
LABEL_446:
                  v148 = v149;
                  goto LABEL_434;
                }

                v10 = v163;
                if (v148 <= v149)
                {
                  v147 += 2;
                  goto LABEL_442;
                }
              }

              v110 = 45;
              continue;
            }

            break;
          }

          v7 = &libc_hooks;
          v15 = v164;
          if (*v147)
          {
            if (v110 == 93)
            {
              goto LABEL_480;
            }

            continue;
          }

          break;
        }

        a3 = v147;
LABEL_480:
        v18 |= 0x20u;
        v34 = 1;
LABEL_108:
        if (*(a1 + 2) <= 0 && __srefill(a1))
        {
          goto LABEL_508;
        }

        if ((v18 & 0x20) == 0)
        {
          while (1)
          {
            v37 = *a1;
            v38 = **a1 < 0 ? *(*(v15 + 166) + 120) : &_DefaultRuneLocale;
            if ((v38->__runetype[**a1] & 0x4000) == 0)
            {
              break;
            }

            v39 = *(a1 + 2);
            *(a1 + 2) = v39 - 1;
            if (v39 < 2)
            {
              if (__srefill(a1))
              {
                goto LABEL_508;
              }
            }

            else
            {
              *a1 = v37 + 1;
            }

            ++v170;
          }
        }

        if (v34 <= 1)
        {
          if (!v34)
          {
            if (v19 <= 1)
            {
              v54 = 1;
            }

            else
            {
              v54 = v19;
            }

            v55 = v18 & 8;
            if (v18)
            {
              if ((v18 & 8) != 0)
              {
                v86 = 0;
              }

              else
              {
                v85 = v174++;
                v86 = *v85;
              }

              v131 = 0;
              while (1)
              {
                if (v131 == v10)
                {
                  goto LABEL_507;
                }

                v132 = (*a1 + 1);
                v133 = v131 + 1;
                nptr[v131] = **a1;
                *a1 = v132;
                --*(a1 + 2);
                memset(&v175, 0, sizeof(v175));
                v134 = mbrtowc_l(v86, nptr, v131 + 1, &v175, v169);
                if (v134 == -2)
                {
                  ++v131;
                }

                else
                {
                  if (v134)
                  {
                    if (v134 == -1)
                    {
                      goto LABEL_507;
                    }
                  }

                  else if ((v18 & 8) == 0)
                  {
                    *v86 = 0;
                  }

                  v131 = 0;
                  v170 += v133;
                  --v54;
                  v86 = (v86 + ((v55 >> 1) ^ 4));
                }

                v15 = v164;
                if (*(a1 + 2) <= 0)
                {
                  if (__srefill(a1))
                  {
                    break;
                  }
                }

                if (!v54)
                {
                  goto LABEL_482;
                }
              }

              if (v131)
              {
                goto LABEL_507;
              }

LABEL_482:
              v13 = ((v55 >> 3) ^ 1) + v167;
              v7 = &libc_hooks;
            }

            else
            {
              if ((v18 & 8) != 0)
              {
                v125 = 0;
                while (1)
                {
                  v126 = *(a1 + 2);
                  if (v54 <= v126)
                  {
                    break;
                  }

                  v125 += v126;
                  *a1 += v126;
                  v54 -= v126;
                  if (__srefill(a1))
                  {
                    if (!v125)
                    {
                      goto LABEL_508;
                    }

                    goto LABEL_459;
                  }
                }

                LODWORD(v125) = v54 + v125;
                *(a1 + 2) = v126 - v54;
                *a1 += v54;
LABEL_459:
                v170 += v125;
                goto LABEL_496;
              }

              v56 = v174++;
              v57 = __fread(*v56, 1uLL, v54, a1);
              if (!v57)
              {
                goto LABEL_508;
              }

              v170 += v57;
              v13 = v167 + 1;
            }

LABEL_500:
            v14 = *base;
            goto LABEL_501;
          }

          if (!v19)
          {
            v19 = -1;
          }

          if (v18)
          {
            v171 = 0;
            if ((v18 & 8) != 0)
            {
              v88 = &v171;
            }

            else
            {
              v87 = v174++;
              v88 = *v87;
            }

            v135 = 0;
            v78 = 0;
            while (1)
            {
              if (v135 == v10)
              {
                goto LABEL_507;
              }

              v136 = (*a1 + 1);
              v137 = v135 + 1;
              nptr[v135] = **a1;
              *a1 = v136;
              --*(a1 + 2);
              memset(&v175, 0, sizeof(v175));
              v138 = v137;
              v139 = mbrtowc_l(&v171, nptr, v137, &v175, v169);
              if (v139 == -2)
              {
                v135 = v137;
              }

              else
              {
                if (v139)
                {
                  if (v139 == -1)
                  {
                    goto LABEL_507;
                  }

                  LODWORD(v139) = v171;
                }

                else
                {
                  v171 = 0;
                }

                if (wctob_l(v139, v169) != -1 && !*(v178 + wctob_l(v171, v169)))
                {
                  if (v137)
                  {
                    v10 = v163;
                    do
                    {
                      __ungetc(nptr[--v138], a1);
                    }

                    while (v138);
                  }

                  else
                  {
                    v10 = v163;
                  }

LABEL_409:
                  if (!v78)
                  {
                    return v167;
                  }

                  v13 = v167;
                  if ((v18 & 8) == 0)
                  {
                    *v88 = 0;
                    v13 = v167 + 1;
                  }

                  v7 = &libc_hooks;
                  v15 = v164;
LABEL_413:
                  v14 = *base;
LABEL_474:
                  v154 = v78 + v170;
                  goto LABEL_475;
                }

                if ((v18 & 8) == 0)
                {
                  *v88++ = v171;
                }

                v10 = v163;
                v135 = 0;
                v170 += v137;
                --v19;
                ++v78;
              }

              if (*(a1 + 2) <= 0 && __srefill(a1) || !v19)
              {
                if (v135)
                {
                  goto LABEL_507;
                }

                goto LABEL_409;
              }
            }
          }

          if ((v18 & 8) != 0)
          {
            v127 = *a1;
            if (!*(v178 + **a1))
            {
              return v167;
            }

            v78 = 0;
            v128 = 1;
            while (1)
            {
              v129 = v128;
              v130 = *(a1 + 2);
              *(a1 + 2) = v130 - 1;
              *a1 = ++v127;
              if (v19 == v129)
              {
                break;
              }

              ++v78;
              if (v130 <= 1)
              {
                v13 = v167;
                if (__srefill(a1))
                {
                  goto LABEL_413;
                }

                v127 = *a1;
              }

              v128 = v129 + 1;
              if (!*(v178 + *v127))
              {
                v78 = v129;
                goto LABEL_472;
              }
            }

            v78 = v19;
          }

          else
          {
            v72 = v174++;
            v73 = *v72;
            v173 = v73;
            v74 = *a1;
            v75 = v73;
            if (!*(v178 + **a1))
            {
              goto LABEL_206;
            }

            while (1)
            {
              --*(a1 + 2);
              *a1 = v74 + 1;
              v76 = *v74;
              v77 = v173++;
              *v77 = v76;
              if (!--v19)
              {
LABEL_205:
                v75 = v173;
                goto LABEL_206;
              }

              if (*(a1 + 2) <= 0 && __srefill(a1))
              {
                break;
              }

              v74 = *a1;
              if (!*(v178 + **a1))
              {
                goto LABEL_205;
              }
            }

            v75 = v173;
            if (v173 == v73)
            {
              goto LABEL_508;
            }

LABEL_206:
            v78 = v75 - v73;
            if (v75 == v73)
            {
              return v167;
            }

            *v75 = 0;
            ++v167;
            v79 = v7[2];
            if (v79)
            {
              v14 = *base;
              v79(v73);
LABEL_473:
              v13 = v167;
              goto LABEL_474;
            }
          }

LABEL_472:
          v14 = *base;
          goto LABEL_473;
        }

        v13 = v167;
        if (v34 == 2)
        {
          if (v19)
          {
            v58 = v19;
          }

          else
          {
            v58 = -1;
          }

          if ((v18 & 1) == 0)
          {
            if ((v18 & 8) == 0)
            {
              v59 = v174++;
              v60 = *v59;
              v173 = *v59;
              v61 = v58 - 1;
              v14 = *base;
              while (1)
              {
                v62 = *a1;
                v63 = **a1 < 0 ? *(*(v15 + 166) + 120) : &_DefaultRuneLocale;
                if ((v63->__runetype[**a1] & 0x4000) != 0)
                {
                  break;
                }

                --*(a1 + 2);
                *a1 = v62 + 1;
                v64 = *v62;
                v65 = v173++;
                *v65 = v64;
                if (!v61 || *(a1 + 2) <= 0 && __srefill(a1))
                {
                  break;
                }

                --v61;
              }

              *v173 = 0;
              v170 += v173 - v60;
              ++v167;
              v116 = v7[2];
              if (v116)
              {
                v116(v60);
              }

              goto LABEL_497;
            }

            for (i = 0; ; ++i)
            {
              v113 = *a1;
              if (**a1 < 0)
              {
                v114 = *(*(v15 + 166) + 120);
              }

              else
              {
                v114 = &_DefaultRuneLocale;
              }

              if ((v114->__runetype[**a1] & 0x4000) != 0)
              {
                LODWORD(v58) = i;
                goto LABEL_499;
              }

              v115 = *(a1 + 2);
              *(a1 + 2) = v115 - 1;
              *a1 = v113 + 1;
              if (v58 - 1 == i)
              {
                goto LABEL_499;
              }

              if (v115 <= 1 && __srefill(a1))
              {
                break;
              }
            }

            LODWORD(v58) = i + 1;
LABEL_499:
            v170 += v58;
            goto LABEL_500;
          }

          v171 = 0;
          if ((v18 & 8) != 0)
          {
            v84 = &v171;
          }

          else
          {
            v83 = v174++;
            v84 = *v83;
          }

          v117 = 0;
          v118 = v18 & 8;
          while (2)
          {
            if (v117 == v10)
            {
              goto LABEL_507;
            }

            v119 = (*a1 + 1);
            v120 = v117 + 1;
            nptr[v117] = **a1;
            *a1 = v119;
            --*(a1 + 2);
            memset(&v175, 0, sizeof(v175));
            v121 = v120;
            v122 = mbrtowc_l(v84, nptr, v120, &v175, v169);
            if (v122 != -2)
            {
              if (v122)
              {
                if (v122 == -1)
                {
                  goto LABEL_507;
                }

                v122 = *v84;
                if (v122 > 0x7F)
                {
                  if (v122 >= 0x100)
                  {
                    LOWORD(v123) = ___runetype_l(v122, v169);
                    goto LABEL_355;
                  }

                  v124 = (*(*(v164 + 166) + 120) + 4 * v122);
LABEL_354:
                  v123 = *(v124 + 15);
LABEL_355:
                  if ((v123 & 0x4000) != 0)
                  {
                    if (v120)
                    {
                      do
                      {
                        __ungetc(nptr[--v121], a1);
                      }

                      while (v121);
                    }

LABEL_493:
                    if (!v118)
                    {
                      *v84 = 0;
                      v13 = v167 + 1;
                      v7 = &libc_hooks;
                      v15 = v164;
                      goto LABEL_500;
                    }

                    v7 = &libc_hooks;
                    v15 = v164;
LABEL_496:
                    v14 = *base;
LABEL_497:
                    v13 = v167;
                    goto LABEL_501;
                  }

                  v117 = 0;
                  v170 += v120;
                  --v58;
                  v84 = (v84 + ((v118 >> 1) ^ 4));
LABEL_358:
                  if (*(a1 + 2) <= 0 && __srefill(a1))
                  {
                    if (!v117)
                    {
                      goto LABEL_493;
                    }

LABEL_507:
                    *(a1 + 8) |= 0x40u;
LABEL_508:
                    if (v167)
                    {
                      return v167;
                    }

                    else
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  if (!v58)
                  {
                    goto LABEL_493;
                  }

                  continue;
                }
              }

              else
              {
                *v84 = 0;
              }

              v124 = &_DefaultRuneLocale.__magic[4 * v122];
              goto LABEL_354;
            }

            break;
          }

          v117 = v120;
          goto LABEL_358;
        }

        if (v34 != 3)
        {
          decimal_point = localeconv_l(v169)->decimal_point;
          if (v19)
          {
            v66 = v19 + 1;
          }

          else
          {
            v66 = 513;
          }

          v67 = __parsefloat_buf(v66);
          if (!v67)
          {
            return v13;
          }

          v168 = v67 - 1;
          v68 = &v67[v66 - 1];
          v69 = v67 < v68;
          v162 = v67;
          if (v19 && v67 >= v68)
          {
            v165 = v67;
            goto LABEL_193;
          }

          v160 = v66;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v157 = 0;
          v165 = v67;
          v93 = decimal_point;
          while (1)
          {
            v94 = **a1;
            v95 = &_DefaultRuneLocale.__runetype[v94];
            v96 = v94 & 0xFFFFFFDF;
            v97 = v90;
            while (1)
            {
              while (1)
              {
                while (v91 > 5)
                {
                  if (v91 > 7)
                  {
                    if (v91 != 9)
                    {
                      if (v91 == 8)
                      {
                        v100 = (v96 != 69) | v89;
                        v101 = v96 == 80;
                        if ((v100 & 1) == 0 || (v101 & v89) != 0)
                        {
                          if ((v97 & 1) == 0)
                          {
                            goto LABEL_193;
                          }

                          v90 = 1;
                          v91 = 9;
                          if (!v69)
                          {
                            goto LABEL_319;
                          }

                          goto LABEL_321;
                        }

                        if ((v89 & 1) == 0)
                        {
                          goto LABEL_275;
                        }

                        v102 = &_DefaultRuneLocale.__runetype[**a1];
                        if ((v94 & 0x80) != 0)
                        {
                          v102 = (*(*(v15 + 166) + 120) + 4 * v94 + 60);
                        }

                        if (*(v102 + 2))
                        {
                          v90 = 1;
                          v91 = 8;
LABEL_317:
                          v89 = 1;
                        }

                        else
                        {
LABEL_275:
                          if ((v94 & 0x80) != 0)
                          {
                            v95 = (*(*(v15 + 166) + 120) + 4 * v94 + 60);
                          }

                          if ((*(v95 + 1) & 4) == 0)
                          {
                            goto LABEL_193;
                          }

                          v90 = 1;
                          v91 = 8;
                        }
                      }

                      else
                      {
                        if ((v94 & 0x80) != 0)
                        {
                          v95 = (*(*(v15 + 166) + 120) + 4 * v94 + 60);
                        }

                        if ((*(v95 + 1) & 4) == 0)
                        {
                          goto LABEL_193;
                        }

                        v91 = 10;
LABEL_296:
                        v90 = v97;
                      }

LABEL_318:
                      v168 = v165;
                      if (v69)
                      {
                        goto LABEL_321;
                      }

                      goto LABEL_319;
                    }

                    v91 = 10;
LABEL_245:
                    if (v94 == 43 || v94 == 45)
                    {
                      goto LABEL_309;
                    }
                  }

                  else if (v91 == 6)
                  {
                    if (v89)
                    {
                      v98 = &_DefaultRuneLocale.__runetype[**a1];
                      if ((v94 & 0x80) != 0)
                      {
                        v98 = (*(*(v15 + 166) + 120) + 4 * v94 + 60);
                      }

                      if (*(v98 + 2))
                      {
                        v90 = 1;
                        v91 = 6;
                        goto LABEL_317;
                      }
                    }

                    v99 = &_DefaultRuneLocale.__runetype[**a1];
                    if ((v94 & 0x80) != 0)
                    {
                      v99 = (*(*(v15 + 166) + 120) + 4 * v94 + 60);
                    }

                    v91 = 7;
                    if ((*(v99 + 1) & 4) != 0)
                    {
                      v90 = 1;
                      v91 = 6;
                      goto LABEL_318;
                    }
                  }

                  else
                  {
                    if (v94 == v93[v92])
                    {
                      if (v93[v92 + 1])
                      {
                        v91 = 7;
                      }

                      else
                      {
                        v91 = 8;
                      }

                      v103 = v168;
                      if (((v93[v92 + 1] == 0) & v97) != 0)
                      {
                        v103 = v165;
                      }

                      v168 = v103;
                      v92 = v92 + 1;
                      goto LABEL_309;
                    }

                    v91 = 8;
                    if (v92)
                    {
                      goto LABEL_193;
                    }
                  }
                }

                if (v91 < 1)
                {
                  v91 = 1;
                  goto LABEL_245;
                }

                if (v91 > 1)
                {
                  break;
                }

                v91 = 6;
                if (v94 <= 77)
                {
                  if (v94 == 48)
                  {
                    v91 = 5;
                    goto LABEL_296;
                  }

                  if (v94 == 73)
                  {
                    goto LABEL_267;
                  }
                }

                else
                {
                  switch(v94)
                  {
                    case 'N':
                      goto LABEL_279;
                    case 'i':
                      goto LABEL_267;
                    case 'n':
LABEL_279:
                      v91 = 3;
                      goto LABEL_309;
                  }
                }
              }

              if (v91 <= 3)
              {
                break;
              }

              if (v91 == 4)
              {
                goto LABEL_193;
              }

              v97 = 1;
              v91 = 6;
              if (v96 == 88)
              {
                v89 = 1;
                if (v69)
                {
                  goto LABEL_321;
                }

LABEL_319:
                v158 = v89;
                v159 = v92;
                v104 = __parsefloat_buf(v160 + 513);
                if (v104)
                {
                  v68 = &v104[v160 + 512];
                  v165 = &v104[v165 - v162];
                  v168 = &v104[v168 - v162];
                  v162 = v104;
                  v160 += 513;
                  v15 = v164;
                  v93 = decimal_point;
                  v92 = v159;
                  v90 = v90;
                  v89 = v158;
                  goto LABEL_321;
                }

                return v167;
              }
            }

            if (v91 == 2)
            {
              if (v157 <= 6 && (v94 == aNfinity[v157] || v94 == aNfinity_0[v157]))
              {
                if (v157 == 6 || v157 == 1)
                {
                  v168 = v165;
                }

                ++v157;
LABEL_267:
                v91 = 2;
                goto LABEL_309;
              }

LABEL_193:
              for (j = v165 - 1; v168 < j; --j)
              {
                v71 = *j;
                __ungetc(v71, a1);
              }

              v168[1] = 0;
              v13 = v167;
              v7 = &libc_hooks;
              v10 = v163;
              v14 = *base;
              if (v168 + 1 == v162)
              {
                return v13;
              }

              if ((v18 & 8) == 0)
              {
                v80 = v174++;
                v81 = *v80;
                if ((v18 & 2) != 0)
                {
                  v145 = strtold_l(v162, &v173, v169);
                }

                else
                {
                  if ((v18 & 1) == 0)
                  {
                    v82 = strtof_l(v162, &v173, v169);
                    if (off_1EAC9EA90)
                    {
                      (off_1EAC9EA90)(v81, 4);
                    }

                    *v81 = v82;
                    goto LABEL_468;
                  }

                  v145 = strtod_l(v162, &v173, v169);
                }

                v153 = v145;
                if (off_1EAC9EA90)
                {
                  (off_1EAC9EA90)(v81, 8);
                }

                *v81 = v153;
LABEL_468:
                v13 = v167 + 1;
                v14 = *base;
              }

              v154 = v170 + v168 + 1 - v162;
LABEL_475:
              v170 = v154;
              goto LABEL_501;
            }

            switch(v157)
            {
              case 2:
                if (v94 != 40)
                {
                  goto LABEL_193;
                }

LABEL_304:
                v91 = 3;
                break;
              case 1:
                if (v96 != 78)
                {
                  goto LABEL_193;
                }

                v91 = 3;
LABEL_307:
                v168 = v165;
                break;
              case 0:
                if (v96 != 65)
                {
                  goto LABEL_193;
                }

                goto LABEL_304;
              default:
                if (v94 == 41)
                {
                  v91 = 4;
                  goto LABEL_307;
                }

                if ((v94 & 0x80) != 0)
                {
                  v95 = (*(*(v15 + 166) + 120) + 4 * v94 + 60);
                }

                v91 = 3;
                if ((*(v95 + 1) & 5) == 0 && v94 != 95)
                {
                  goto LABEL_193;
                }

                break;
            }

            ++v157;
LABEL_309:
            v90 = v97;
            if (!v69)
            {
              goto LABEL_319;
            }

LABEL_321:
            *v165++ = v94;
            v105 = *(a1 + 2);
            *(a1 + 2) = v105 - 1;
            if (v105 < 2)
            {
              v106 = v89;
              v107 = v92;
              v108 = __srefill(a1);
              v69 = v165 < v68;
              v109 = v19 == 0;
              if (v165 < v68)
              {
                v109 = 1;
              }

              if (v108)
              {
                goto LABEL_193;
              }

              v93 = decimal_point;
              v92 = v107;
              v89 = v106;
              if (!v109)
              {
                goto LABEL_193;
              }
            }

            else
            {
              ++*a1;
              v69 = v165 < v68;
              if (v19 && v165 >= v68)
              {
                goto LABEL_193;
              }
            }
          }
        }

        v40 = v19 - 1;
        if (v19 - 1 >= 0x1FF)
        {
          v40 = 511;
        }

        v41 = v40 + 1;
        v42 = v18 | 0x2C0;
        v173 = nptr;
        v14 = *base;
        while (1)
        {
          v43 = **a1;
          if (v43 <= 0x37)
          {
            if (**a1 <= 0x30u)
            {
              if (v43 == 43 || v43 == 45)
              {
                if ((v42 & 0x40) == 0)
                {
                  goto LABEL_158;
                }

                v42 = v42 & 0xFFFEFFBF | 0x10000;
              }

              else
              {
                if (v43 != 48)
                {
                  goto LABEL_158;
                }

                v47 = v42 | 0x100;
                v48 = v14 == 0;
                if (v14)
                {
                  v14 = v14;
                }

                else
                {
                  v14 = 8;
                }

                if (!v48)
                {
                  v47 = v42;
                }

                if ((v47 & 0x200) != 0)
                {
                  v42 = v47 & 0xFFFFFD3F;
                }

                else
                {
                  v42 = v47 & 0xFFFFFC3F;
                }
              }

              goto LABEL_133;
            }

            v14 = __svfscanf_l_basefix[v14];
            goto LABEL_132;
          }

          v44 = v43 - 65;
          if (v43 - 65 > 0x37)
          {
            break;
          }

          if (((1 << v44) & 0x3F0000003FLL) != 0)
          {
            if (v14 < 11)
            {
              goto LABEL_158;
            }

LABEL_132:
            v42 &= 0xFFFFFE3F;
            goto LABEL_133;
          }

          if (((1 << v44) & 0x80000000800000) == 0)
          {
            break;
          }

          if ((v42 & 0x100) == 0 || v173 != &nptr[(HIWORD(v42) & 1) + 1])
          {
            goto LABEL_158;
          }

          v42 &= ~0x100u;
          v14 = 16;
LABEL_133:
          v45 = v173++;
          *v45 = v43;
          v46 = *(a1 + 2);
          *(a1 + 2) = v46 - 1;
          if (v46 < 2)
          {
            if (__srefill(a1))
            {
              goto LABEL_158;
            }

            if (!--v41)
            {
              goto LABEL_158;
            }
          }

          else
          {
            ++*a1;
            if (!--v41)
            {
              goto LABEL_158;
            }
          }
        }

        if (v43 - 56 < 2)
        {
          v49 = v14;
          v14 = __svfscanf_l_basefix[v14];
          if ((v49 - 1) >= 8)
          {
            goto LABEL_132;
          }
        }

LABEL_158:
        v50 = v173;
        if ((v42 & 0x80) != 0)
        {
          if (v173 > nptr)
          {
            --v173;
            __ungetc(*(v50 - 1), a1);
          }

          return v13;
        }

        v51 = *(v173 - 1);
        if ((v51 & 0xFFFFFFDF) == 0x58)
        {
          --v173;
          __ungetc(v51, a1);
          v50 = v173;
        }

        if ((v42 & 8) == 0)
        {
          *v50 = 0;
          v52 = v7;
          if ((v42 & 0x8000) != 0)
          {
            v53 = strtoumax_l(nptr, 0, v14, v169);
          }

          else
          {
            v53 = strtoimax_l(nptr, 0, v14, v169);
          }

          v140 = v53;
          v141 = v174++;
          v142 = *v141;
          if ((v42 & 0x10) != 0)
          {
            goto LABEL_426;
          }

          if ((v42 & 0x4000) != 0)
          {
            v152 = v52[4];
            if (v152)
            {
              v152(v142, 1);
            }

            *v142 = v140;
          }

          else if ((v42 & 4) != 0)
          {
            v155 = v52[4];
            if (v155)
            {
              v155(v142, 2);
            }

            *v142 = v140;
          }

          else
          {
            if ((v42 & 1) == 0 && (v42 & 0x400) == 0 && (v42 & 0x800) == 0 && (v42 & 0x1000) == 0 && (v42 & 0x2000) == 0)
            {
              v143 = v52[4];
              if (v143)
              {
                v143(v142, 4);
              }

              *v142 = v140;
              goto LABEL_490;
            }

LABEL_426:
            v144 = v52[4];
            if (v144)
            {
              v144(v142, 8);
            }

            *v142 = v140;
          }

LABEL_490:
          v13 = v167 + 1;
          LODWORD(v50) = v173;
          v7 = v52;
        }

        v170 += v50 - nptr;
LABEL_501:
        v12 = *a3;
        if (*a3)
        {
          goto LABEL_18;
        }

        return v13;
      case 'c':
LABEL_104:
        v34 = 0;
        v18 |= 0x20u;
        goto LABEL_108;
      case 'd':
        goto LABEL_100;
      case 'h':
        if ((v18 & 4) != 0)
        {
          v18 = v18 & 0xFFFFBFFB | 0x4000;
        }

        else
        {
          v18 |= 4u;
        }

        goto LABEL_28;
      case 'i':
        *base = 0;
        v34 = 3;
        goto LABEL_108;
      case 'j':
        v18 |= 0x800u;
        goto LABEL_28;
      case 'l':
        if (v18)
        {
          v18 = v18 & 0xFFFFFBFE | 0x400;
        }

        else
        {
          ++v18;
        }

        goto LABEL_28;
      case 'n':
        if ((v18 & 8) != 0)
        {
          goto LABEL_69;
        }

        v22 = v174++;
        v23 = *v22;
        if (!*v22)
        {
          goto LABEL_69;
        }

        if ((v18 & 0x4000) != 0)
        {
          v25 = v7[4];
          if (v25)
          {
            v25(v23, 1);
          }

          *v23 = v170;
        }

        else if ((v18 & 4) != 0)
        {
          v26 = v7[4];
          if (v26)
          {
            v26(v23, 2);
          }

          *v23 = v170;
        }

        else
        {
          if ((v18 & 1) != 0 || (v18 & 0x400) != 0 || (v18 & 0x800) != 0 || (v18 & 0x2000) != 0)
          {
            v24 = v7[4];
          }

          else
          {
            v24 = v7[4];
            if ((v18 & 0x1000) == 0)
            {
              if (v24)
              {
                v24(v23, 4);
              }

              *v23 = v170;
              goto LABEL_69;
            }
          }

          if (v24)
          {
            v24(v23, 8);
          }

          *v23 = v170;
        }

LABEL_69:
        v12 = *a3;
        if (!*a3)
        {
          return v167;
        }

        goto LABEL_20;
      case 'o':
        v18 |= 0x8000u;
        v34 = 3;
        v36 = 8;
        goto LABEL_107;
      case 'p':
        v35 = 33040;
LABEL_106:
        v18 |= v35;
        v34 = 3;
        v36 = 16;
        goto LABEL_107;
      case 'q':
        v18 |= 0x400u;
        goto LABEL_28;
      case 's':
LABEL_102:
        v34 = 2;
        goto LABEL_108;
      case 't':
        v18 |= 0x1000u;
        goto LABEL_28;
      case 'u':
        v18 |= 0x8000u;
LABEL_100:
        v34 = 3;
        v36 = 10;
LABEL_107:
        *base = v36;
        goto LABEL_108;
      case 'z':
        v18 |= 0x2000u;
LABEL_28:
        v16 = a3;
        continue;
      default:
        if (*v16)
        {
          return v167;
        }

        return 0xFFFFFFFFLL;
    }
  }
}

uintmax_t strtoumax_l(const char *nptr, char **endptr, int base, locale_t a4)
{
  v6 = &__global_locale;
  if (a4 == -1)
  {
    v7 = &__global_locale;
  }

  else
  {
    v7 = a4;
  }

  if (!a4)
  {
    v7 = &__c_locale;
  }

  if (v7 != -1)
  {
    v6 = v7;
  }

  if (!v7)
  {
    v6 = &__c_locale;
  }

  v8 = nptr;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 < 0)
    {
      runetype = (*(*(v6 + 166) + 120) + 60);
    }

    else
    {
      runetype = _DefaultRuneLocale.__runetype;
    }
  }

  while ((runetype[v9] & 0x4000) != 0);
  if (v9 == 43 || v9 == 45)
  {
    v13 = *v8++;
    v12 = v13;
  }

  else
  {
    v12 = v9;
  }

  if ((base & 0xFFFFFFEF) != 0 || v12 != 48)
  {
    v16 = base == 0;
    if (v12 != 48)
    {
      v17 = 10;
      goto LABEL_30;
    }
  }

  else
  {
    if ((*v8 | 0x20) == 0x78)
    {
      v12 = v8[1];
      if ((v12 - 48) < 0xAu || (v14 = *(v8 + 1) - 65, v14 <= 0x25) && ((1 << v14) & 0x3F0000003FLL) != 0)
      {
        v8 += 2;
        v15 = 16;
        goto LABEL_35;
      }
    }

    v16 = base == 0;
    v12 = 48;
  }

  v17 = 8;
LABEL_30:
  if (v16)
  {
    v15 = v17;
  }

  else
  {
    v15 = base;
  }

  if (v15 - 37 < 0xFFFFFFDD)
  {
    v18 = 0;
    goto LABEL_55;
  }

LABEL_35:
  v18 = 0;
  v19 = 0;
  v20 = 0xFFFFFFFFFFFFFFFFLL / v15;
  while (1)
  {
    v21 = v12 - 48;
    if ((v12 - 48) >= 0xAu)
    {
      if ((v12 - 65) > 0x19u)
      {
        if ((v12 - 97) > 0x19u)
        {
          break;
        }

        v21 = v12 - 87;
      }

      else
      {
        v21 = v12 - 55;
      }
    }

    if (v15 <= v21)
    {
      break;
    }

    v22 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v20)
    {
      if (v18 == v20 && v21 > ~(v20 * v15))
      {
        v18 = 0xFFFFFFFFFFFFFFFFLL / v15;
      }

      else
      {
        v18 = v18 * v15 + v21;
        v22 = 1;
      }
    }

    v23 = *v8++;
    v12 = v23;
    v19 = v22;
  }

  if (v19 < 0)
  {
    v27 = __error();
    v24 = 0;
    *v27 = 34;
    v18 = -1;
    if (!endptr)
    {
      return v18;
    }

    goto LABEL_56;
  }

  if (!v19)
  {
LABEL_55:
    *__error() = 22;
    v24 = 1;
    if (!endptr)
    {
      return v18;
    }

    goto LABEL_56;
  }

  v24 = 0;
  if (v9 == 45)
  {
    v18 = -v18;
  }

  if (endptr)
  {
LABEL_56:
    v25 = (v8 - 1);
    if (v24)
    {
      v25 = nptr;
    }

    *endptr = v25;
  }

  return v18;
}

uint64_t gmtsub(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  notify_check_tz(&gmt_notify);
  pthread_once(&gmt_once, gmt_init);
  result = timesub(a1, a2, gmtptr, a3);
  if (result)
  {
    if (gmtptr)
    {
      v7 = (gmtptr + 16968);
    }

    else
    {
      v7 = "UTC";
    }

    if (a2)
    {
      v7 = &wildabbr;
    }

    *(a3 + 48) = v7;
  }

  return result;
}

char *__strncpy_chk_cold_1(char *a1, const char *a2, size_t a3)
{
  result = stpncpy(a1, a2, a3);
  if (__chk_assert_no_overlap)
  {
    if (result - a1 == a3)
    {
      v7 = result - a1;
    }

    else
    {
      v7 = result - a1 + 1;
    }

    return __chk_overlap(a1, v7, a2, v7);
  }

  return result;
}

char **__get_current_numeric_locale(uint64_t a1)
{
  if (*(a1 + 1314))
  {
    return (*(a1 + 1344) + 72);
  }

  else
  {
    return &_C_numeric_locale;
  }
}

size_t strftime_l(char *a1, size_t a2, const char *a3, const tm *a4, locale_t a5)
{
  v9 = &__global_locale;
  if (a5 != -1)
  {
    v9 = a5;
  }

  if (a5)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__c_locale;
  }

  tzset();
  v18 = 0;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = "%c";
  }

  v12 = &a1[a2];
  current_time_locale = __get_current_time_locale(v10);
  v14 = _st_fmt(v11, a4, a1, v12, &v18, current_time_locale, v10);
  if (v18 && getenv("CHECK_STRFTIME_FORMATS_FOR_TWO_DIGIT_YEARS"))
  {
    fputs("\n", __stderrp);
    if (a3)
    {
      fprintf_l(__stderrp, v10, "strftime format %s ", a3);
    }

    else
    {
      fputs("NULL strftime format ", __stderrp);
    }

    fputs("yields only two digits of years in ", __stderrp);
    v15 = "all locales";
    if (v18 == 2)
    {
      v15 = "the current locale";
    }

    if (v18 == 1)
    {
      v16 = "some locales";
    }

    else
    {
      v16 = v15;
    }

    fputs(v16, __stderrp);
    fputs("\n", __stderrp);
  }

  if (v14 == v12)
  {
    return 0;
  }

  *v14 = 0;
  return v14 - a1;
}

char *__cdecl ctime_r(const time_t *a1, char *a2)
{
  memset(&v4, 0, sizeof(v4));
  result = localtime_r(a1, &v4);
  if (result)
  {
    return asctime_r(&v4, a2);
  }

  return result;
}

char *__cdecl asctime_r(const tm *a1, char *a2)
{
  tm_wday = a1->tm_wday;
  if (tm_wday <= 6)
  {
    v4 = &asctime_r_wday_name + 3 * tm_wday;
  }

  else
  {
    v4 = "???";
  }

  strftime_l(v13, 0xDuLL, "%Y", a1, 0);
  if (j__strsignal_r(v13, v5, v6) >= 5)
  {
    sprintf(__little, "%.3s %.3s%3d %2.2d:%2.2d:%2.2d     %s\n", v4);
  }

  else
  {
    sprintf(__little, "%.3s %.3s%3d %2.2d:%2.2d:%2.2d %-4s\n", v4);
  }

  v9 = j__strsignal_r(__little, v7, v8);
  if (a2 == &buf_asctime || v9 <= 0x19)
  {
    j__strnstr(a2, __little, v10);
  }

  else
  {
    a2 = 0;
    *__error() = 84;
  }

  return a2;
}

_DWORD *moreglue(int a1)
{
  result = malloc_type_malloc(360 * a1 + 32, 0x102004093CA8EA1uLL);
  if (result)
  {
    v3 = (result + 6);
    *result = 0;
    if (((result + 6) & 7) != 0)
    {
      v3 = ((result + 6) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    result[2] = a1;
    *(result + 2) = v3;
    if (a1 >= 1)
    {
      v4 = v3 + 152 * a1;
      v5 = a1 + 1;
      do
      {
        *(v3 + 144) = 0;
        *(v3 + 112) = 0uLL;
        *(v3 + 128) = 0uLL;
        *(v3 + 80) = 0uLL;
        *(v3 + 96) = 0uLL;
        *(v3 + 48) = 0uLL;
        *(v3 + 64) = 0uLL;
        *(v3 + 16) = 0uLL;
        *(v3 + 32) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 104) = v4;
        *v4 = 0;
        *(v4 + 8) = 850045858;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 0uLL;
        *(v4 + 48) = 0uLL;
        *(v4 + 64) = 0;
        *(*(v3 + 104) + 72) &= 0xF8u;
        v6 = *(v3 + 104);
        v6[5] = 0uLL;
        v6[6] = 0uLL;
        v6[7] = 0uLL;
        v6[8] = 0uLL;
        v6[9] = 0uLL;
        v6[10] = 0uLL;
        v6[11] = 0uLL;
        v6[12] = 0uLL;
        *(*(v3 + 104) + 72) &= ~8u;
        v3 += 152;
        v4 += 208;
        --v5;
      }

      while (v5 > 1);
    }
  }

  return result;
}

char *__evpinit()
{
  __loadevp("STDBUF");
  __loadevp("STDBUF0");
  __loadevp("STDBUF1");
  __loadevp("STDBUF2");
  __loadevp("_STDBUF_I");
  __loadevp("_STDBUF_O");

  return __loadevp("_STDBUF_E");
}

char *__loadevp(const char *a1)
{
  result = getenv(a1);
  if (result)
  {

    JUMPOUT(0x193AD6A30);
  }

  return result;
}

int fseek(FILE *a1, uint64_t a2, int a3)
{
  v3 = *&a3;
  v6 = *__error();
  pthread_once(&__sdidinit, __sinit);
  flockfile(a1);
  _fseeko(a1, a2, v3);
  v8 = v7;
  funlockfile(a1);
  if (!v8)
  {
    *__error() = v6;
  }

  return v8;
}

double _fseeko(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  memset(&v28, 0, sizeof(v28));
  v3 = *(a1 + 72);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = a3;
  v5 = a2;
  if (!a3)
  {
    if (a2 < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_13;
  }

  if (a3 == 2)
  {
LABEL_13:
    v29 = 0;
    v8 = 1;
    goto LABEL_14;
  }

  if (a3 != 1)
  {
    goto LABEL_36;
  }

  if (_ftello(a1, &v29))
  {
    return result;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_11:
    v9 = __error();
    v10 = 29;
LABEL_37:
    *v9 = v10;
    return result;
  }

  if (v5 >= 1 && v29 > (v5 ^ 0x7FFFFFFFFFFFFFFFuLL))
  {
LABEL_29:
    v9 = __error();
    v10 = 84;
    goto LABEL_37;
  }

  v5 += v29;
  if (v5 < 0)
  {
    goto LABEL_36;
  }

  v4 = 0;
  v8 = 0;
LABEL_14:
  if (!*(a1 + 24))
  {
    __smakebuf(a1);
  }

  v11 = *(a1 + 16);
  if ((v11 & 0x81A) != 0)
  {
    goto LABEL_57;
  }

  if ((*(a1 + 16) & 0x400) == 0)
  {
    if (v3 != __sseek)
    {
      goto LABEL_19;
    }

    v12 = *(a1 + 18);
    if (v12 < 0)
    {
      goto LABEL_19;
    }

    if (fstat(v12, &v28))
    {
      v11 = *(a1 + 16);
LABEL_19:
      *(a1 + 16) = v11 | 0x800;
      goto LABEL_57;
    }

    v11 = *(a1 + 16);
    if ((v28.st_mode & 0xF000) != 0x8000)
    {
      goto LABEL_19;
    }

    *(a1 + 136) = v28.st_blksize;
    *(a1 + 16) = v11 | 0x400;
  }

  v13 = v5;
  if (v4)
  {
    if (fstat(*(a1 + 18), &v28))
    {
      goto LABEL_57;
    }

    if (v5 >= 1 && v28.st_size > (v5 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      goto LABEL_29;
    }

    v13 = v28.st_size + v5;
    if (v28.st_size + v5 < 0)
    {
LABEL_36:
      v9 = __error();
      v10 = 22;
      goto LABEL_37;
    }
  }

  if (!v8 || !_ftello(a1, &v29))
  {
    v14 = *(a1 + 16);
    if ((v14 & 0x2000) == 0)
    {
      v15 = *(a1 + 88);
      v16 = *(a1 + 24);
      if (v15)
      {
        v17 = **(a1 + 104) - v16;
        v18 = v29 + *(a1 + 8) - v17;
        v19 = 112;
      }

      else
      {
        v17 = *a1 - v16;
        v18 = v29 - v17;
        v19 = 8;
      }

      v20 = *(a1 + v19);
      v29 = v18;
      v21 = v13 - v18;
      if (v13 >= v18)
      {
        v22 = v17 + v20;
        if (v13 < (v18 + v22))
        {
          *a1 = v16 + v21;
          *(a1 + 8) = v22 - v21;
          if (v15)
          {
            if (v15 != (a1 + 116))
            {
              free(v15);
              v14 = *(a1 + 16);
            }

            *(a1 + 88) = 0;
          }

          goto LABEL_54;
        }
      }
    }

    v29 = v13 & -*(a1 + 136);
    if (_sseek(a1, v29, 0) == -1)
    {
      goto LABEL_57;
    }

    *(a1 + 8) = 0;
    *a1 = *(a1 + 24);
    v23 = *(a1 + 88);
    if (v23)
    {
      if (v23 != (a1 + 116))
      {
        free(v23);
      }

      *(a1 + 88) = 0;
    }

    v24 = v13 - v29;
    if (!v24)
    {
LABEL_53:
      v14 = *(a1 + 16);
LABEL_54:
      *(a1 + 16) = v14 & 0xFFDF;
LABEL_64:
      v27 = *(a1 + 104);
      result = 0.0;
      v27[11] = 0u;
      v27[12] = 0u;
      v27[9] = 0u;
      v27[10] = 0u;
      v27[7] = 0u;
      v27[8] = 0u;
      v27[5] = 0u;
      v27[6] = 0u;
      return result;
    }

    if (!__srefill(a1))
    {
      v25 = *(a1 + 8);
      if (v24 <= v25)
      {
        *a1 += v24;
        *(a1 + 8) = v25 - v24;
        goto LABEL_53;
      }
    }
  }

LABEL_57:
  if (!__sflush(a1) && _sseek(a1, v5, v4) != -1)
  {
    v26 = *(a1 + 88);
    if (v26)
    {
      if (v26 != (a1 + 116))
      {
        free(v26);
      }

      *(a1 + 88) = 0;
    }

    *a1 = *(a1 + 24);
    *(a1 + 16) &= ~0x20u;
    *(a1 + 8) = 0;
    goto LABEL_64;
  }

  return result;
}

uint64_t _ftello(uint64_t a1, int64_t *a2)
{
  if (*(a1 + 72))
  {
    if (__ftell_conformance_fix == 1)
    {
      if ((*(a1 + 16) & 0xC) == 8 && *a1 && (*(a1 + 16) & 0x100) != 0 && (*a1 - *(a1 + 24)) >= 1)
      {
        v4 = _sseek(a1, 0, 2);
        if (v4 == -1)
        {
          return 1;
        }

LABEL_18:
        v8 = *(a1 + 16);
        if ((v8 & 4) != 0)
        {
          v13 = *(a1 + 88);
          v14 = 112;
          if (!v13)
          {
            v14 = 8;
          }

          v4 -= *(a1 + v14);
          if (v4 < 0)
          {
            *(a1 + 16) = v8 | 0x40;
            v5 = __error();
            v6 = 5;
            goto LABEL_10;
          }

          if (v13)
          {
            v4 -= *(a1 + 8);
          }
        }

        else if ((v8 & 8) != 0)
        {
          v9 = *a1;
          if (*a1)
          {
            v10 = *(a1 + 24);
            if (__ftell_conformance_fix != 1 || v9 != v10)
            {
              v12 = v9 - v10;
              if (v4 > (v12 ^ 0x7FFFFFFFFFFFFFFFuLL))
              {
                v5 = __error();
                v6 = 84;
                goto LABEL_10;
              }

              v4 += v12;
            }
          }
        }

        v7 = 0;
        *a2 = v4;
        return v7;
      }

      if ((*(a1 + 16) & 0x1000) == 0)
      {
LABEL_14:
        v7 = 1;
        v4 = _sseek(a1, 0, 1);
        if (v4 == -1)
        {
          return v7;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (__sflush(a1))
      {
        return 1;
      }

      if ((*(a1 + 16) & 0x1000) == 0)
      {
        goto LABEL_14;
      }
    }

    v4 = *(a1 + 144);
    goto LABEL_18;
  }

  v5 = __error();
  v6 = 29;
LABEL_10:
  *v5 = v6;
  return 1;
}

uint64_t _sseek(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  *__error() = 0;
  v7 = (*(a1 + 72))(*(a1 + 48), a2, a3);
  v8 = *__error();
  if (*__error())
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__error() = v6;
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 16) & 0x400) != 0)
      {
        *(a1 + 16) |= 0x1000u;
        *(a1 + 144) = v7;
      }

      return v7;
    }
  }

  if (v8 == 29)
  {
    *(a1 + 16) &= ~0x100u;
  }

  else if (!v8)
  {
    if (a2 || a3 != 1)
    {
      v10 = *(a1 + 88);
      if (v10)
      {
        if (v10 != (a1 + 116))
        {
          free(v10);
        }

        *(a1 + 88) = 0;
      }

      *a1 = *(a1 + 24);
      *(a1 + 8) = 0;
      v9 = *(a1 + 16) & 0xFFDF;
    }

    else
    {
      v9 = *(a1 + 16);
    }

    *(a1 + 16) = v9 | 0x40;
    *__error() = 22;
  }

  *(a1 + 16) &= ~0x1000u;
  return -1;
}

size_t fread(void *__ptr, size_t __size, size_t __nitems, FILE *__stream)
{
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(__stream, 152);
  }

  flockfile(__stream);
  v8 = __fread(__ptr, __size, __nitems, __stream);
  funlockfile(__stream);
  return v8;
}

unint64_t __fread(uint64_t dfd, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = dfd;
  v8 = a3 * a2;
  v9 = a3 * a2;
  if (off_1EAC9EA90)
  {
    (off_1EAC9EA90)(dfd, a3 * a2);
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *(a4 + 104);
  if ((*(v10 + 72) & 7) == 0)
  {
    *(v10 + 72) |= 7u;
  }

  v25 = v8;
  v26 = a3;
  if ((*(a4 + 8) & 0x80000000) != 0)
  {
    *(a4 + 8) = 0;
  }

  while (2)
  {
    if (v9 >> 31)
    {
      v11 = 2147482624;
    }

    else
    {
      v11 = v9;
    }

    v12 = v11;
    v13 = v7;
    while (1)
    {
      v14 = *(a4 + 8);
      if (v12 <= v14)
      {
        break;
      }

      v15 = *a4;
      j__mkdtempat_np(v13, *a4);
      *a4 = &v15[v14];
      v13 += v14;
      v12 -= v14;
      v16 = __srefill0(a4);
      if (v16 > 0)
      {
        break;
      }

      if (v16)
      {
LABEL_25:
        if (v12)
        {
          return (v25 - v9 + v11 - v12) / a2;
        }

        goto LABEL_29;
      }
    }

    if ((*(a4 + 16) & 0x82) != 0 && v12 > *(a4 + 32))
    {
      v27 = *(a4 + 24);
      *(a4 + 24) = v13;
      *(a4 + 32) = v12;
      if (v12 < 1)
      {
LABEL_22:
        *(a4 + 24) = v27;
        v20 = (v12 - 1) / *(a4 + 32) * *(a4 + 32);
        v21 = v12 - v20;
        j__mkdtempat_np(*(a4 + 24), (v13 + v20));
        *a4 = *(a4 + 24) + v21;
        *(a4 + 8) = 0;
      }

      else
      {
        while (!__srefill1(a4))
        {
          v17 = *(a4 + 8);
          *(a4 + 24) += v17;
          v18 = *(a4 + 32);
          v19 = __OFSUB__(v18, v17);
          LODWORD(v17) = v18 - v17;
          *(a4 + 32) = v17;
          if ((v17 < 0) ^ v19 | (v17 == 0))
          {
            goto LABEL_22;
          }
        }

        v12 = *(a4 + 32);
        *(a4 + 24) = v27;
        *a4 = *(a4 + 24);
        if (v12)
        {
          return (v25 - v9 + v11 - v12) / a2;
        }
      }
    }

    else
    {
      while (1)
      {
        v22 = *(a4 + 8);
        v23 = *a4;
        if (v12 <= v22)
        {
          break;
        }

        j__mkdtempat_np(v13, v23);
        *a4 += v22;
        LODWORD(v13) = v13 + v22;
        v12 -= v22;
        if (__srefill1(a4))
        {
          goto LABEL_25;
        }
      }

      j__mkdtempat_np(v13, v23);
      *(a4 + 8) -= v12;
      *a4 += v12;
    }

LABEL_29:
    v7 += v11;
    v9 -= v11;
    if (v9)
    {
      continue;
    }

    return v26;
  }
}

uint64_t atol(const char *a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return strtol_l(a1, 0, 10, v3);
}

int getpagesize(void)
{
  result = getpagesize_value;
  if (!getpagesize_value)
  {
    *v2 = 0x700000006;
    v1 = 4;
    if (sysctl(v2, 2u, &getpagesize_value, &v1, 0, 0) == -1)
    {
      return -1;
    }

    else
    {
      return getpagesize_value;
    }
  }

  return result;
}

off_t ftello(FILE *__stream)
{
  v4 = 0;
  flockfile(__stream);
  v2 = _ftello(__stream, &v4);
  funlockfile(__stream);
  if (v2)
  {
    return -1;
  }

  result = v4;
  if (v4 < 0)
  {
    *__error() = 29;
    return -1;
  }

  return result;
}

uint64_t strtoll(const char *__str, char **__endptr, int __base)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return strtoll_l(__str, __endptr, __base, v5);
}

uint64_t strtoll_l(const char *a1, char **a2, int a3, locale_t a4)
{
  v6 = &__global_locale;
  if (a4 == -1)
  {
    v7 = &__global_locale;
  }

  else
  {
    v7 = a4;
  }

  if (!a4)
  {
    v7 = &__c_locale;
  }

  if (v7 != -1)
  {
    v6 = v7;
  }

  if (!v7)
  {
    v6 = &__c_locale;
  }

  v8 = a1;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 < 0)
    {
      runetype = (*(*(v6 + 166) + 120) + 60);
    }

    else
    {
      runetype = _DefaultRuneLocale.__runetype;
    }
  }

  while ((runetype[v9] & 0x4000) != 0);
  if (v9 == 43 || v9 == 45)
  {
    v13 = *v8++;
    v12 = v13;
  }

  else
  {
    v12 = v9;
  }

  if ((a3 & 0xFFFFFFEF) != 0 || v12 != 48)
  {
    v16 = a3 == 0;
    if (v12 != 48)
    {
      v17 = 10;
      goto LABEL_30;
    }
  }

  else
  {
    if ((*v8 | 0x20) == 0x78)
    {
      v12 = v8[1];
      if ((v12 - 48) < 0xAu || (v14 = *(v8 + 1) - 65, v14 <= 0x25) && ((1 << v14) & 0x3F0000003FLL) != 0)
      {
        v8 += 2;
        v15 = 16;
        goto LABEL_35;
      }
    }

    v16 = a3 == 0;
    v12 = 48;
  }

  v17 = 8;
LABEL_30:
  if (v16)
  {
    v15 = v17;
  }

  else
  {
    v15 = a3;
  }

  if (v15 - 37 < 0xFFFFFFDD)
  {
    v18 = 0;
LABEL_59:
    *__error() = 22;
    v25 = 1;
    v20 = v18;
    if (!a2)
    {
      return v20;
    }

    goto LABEL_60;
  }

LABEL_35:
  v18 = 0;
  v19 = 0;
  if (v9 == 45)
  {
    v20 = 0x8000000000000000;
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v20 / v15;
  while (1)
  {
    v22 = v12 - 48;
    if ((v12 - 48) >= 0xAu)
    {
      if ((v12 - 65) > 0x19u)
      {
        if ((v12 - 97) > 0x19u)
        {
          break;
        }

        v22 = v12 - 87;
      }

      else
      {
        v22 = v12 - 55;
      }
    }

    if (v15 <= v22)
    {
      break;
    }

    v23 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v21)
    {
      if (v18 == v21 && v22 > (v20 % v15))
      {
        v18 = v20 / v15;
      }

      else
      {
        v18 = v18 * v15 + v22;
        v23 = 1;
      }
    }

    v24 = *v8++;
    v12 = v24;
    v19 = v23;
  }

  if ((v19 & 0x80000000) == 0)
  {
    if (v19)
    {
      v25 = 0;
      if (v9 == 45)
      {
        v20 = -v18;
      }

      else
      {
        v20 = v18;
      }

      if (!a2)
      {
        return v20;
      }

      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v28 = __error();
  v25 = 0;
  *v28 = 34;
  if (!a2)
  {
    return v20;
  }

LABEL_60:
  v26 = (v8 - 1);
  if (v25)
  {
    v26 = a1;
  }

  *a2 = v26;
  return v20;
}

_UNKNOWN **__get_current_monetary_locale(uint64_t a1)
{
  if (*(a1 + 1313))
  {
    return (*(a1 + 1336) + 72);
  }

  else
  {
    return &_C_monetary_locale;
  }
}

int setenv(const char *__name, const char *__value, int __overwrite)
{
  if (!__name || !*__name || (j__strmode(__name, 0x3D), v6))
  {
    *__error() = 22;
    return -1;
  }

  environ_lock_np();
  if (!__env_owned)
  {
    __env_owned = _owned_ptr_alloc();
    if (!__env_owned)
    {
      environ_unlock_np();
      return -1;
    }
  }

  v8 = _NSGetEnviron();
  v9 = __setenv_locked(__name, __value, __overwrite, 1, v8, __env_owned);
  environ_unlock_np();
  return v9;
}

void *_owned_ptr_alloc()
{
  v0 = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
  if (v0)
  {
    v1 = malloc_type_malloc(0x40uLL, 0xC0040B8AA526DuLL);
    *v0 = v1;
    if (v1)
    {
      *v1 = 0;
      v0[1] = 0x800000001;
    }

    else
    {
      v2 = *__error();
      free(v0);
      v0 = 0;
      *__error() = v2;
    }
  }

  return v0;
}

uint64_t __setenv_locked(char *a1, unsigned __int8 *a2, int a3, int a4, char **a5, uint64_t a6)
{
  v11 = a1;
  v42 = 0;
  v12 = __findenv_locked(a1, &v42 + 1, *a5);
  if (!v12)
  {
    v23 = *a5;
    if (**a5)
    {
      v24 = 0;
        ;
      }
    }

    else
    {
      LODWORD(v24) = 0;
    }

    if (_owned_ptr_search(a6, *a5, &v42))
    {
      v26 = malloc_type_malloc(8 * (v24 + 2), 0x10040436913F5uLL);
      if (!v26)
      {
        return 0xFFFFFFFFLL;
      }

      v27 = v26;
      _owned_ptr_add(a6, v26);
      j__mkostemp(v27, *a5);
    }

    else
    {
      v28 = malloc_type_realloc(v23, 8 * (v24 + 2), 0x10040436913F5uLL);
      if (!v28)
      {
        return 0xFFFFFFFFLL;
      }

      v27 = v28;
      if (*a5 == v28)
      {
        v27 = *a5;
        goto LABEL_28;
      }

      if (v42 && *(a6 + 8) > v42)
      {
        j__mkostemp((*a6 + 8 * v42), *a6 + 8 * v42 + 8);
        --*(a6 + 8);
      }

      _owned_ptr_add(a6, v27);
    }

    *a5 = v27;
LABEL_28:
    *&v27[8 * v24 + 8] = 0;
    HIDWORD(v42) = v24;
    goto LABEL_29;
  }

  if (a3)
  {
    v13 = v12;
    v14 = *&(*a5)[8 * SHIDWORD(v42)];
    if (!_owned_ptr_search(a6, v14, &v42))
    {
      if (a4 >= 1)
      {
        v17 = j__strsignal_r(a2, v15, v16);
        if (j__strsignal_r(v13, v18, v19) >= v17)
        {
          goto LABEL_60;
        }

        v20 = malloc_type_realloc(v14, v13 - v14 + v17 + 1, 0xB2309601uLL);
        v21 = v20;
        if (v20)
        {
          v22 = v20 == v14;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          *&(*a5)[8 * SHIDWORD(v42)] = v20;
          v13 = &v20[v13 - v14];
          if (v42 && *(a6 + 8) > v42)
          {
            j__mkostemp((*a6 + 8 * v42), *a6 + 8 * v42 + 8);
            --*(a6 + 8);
          }

          _owned_ptr_add(a6, v21);
          goto LABEL_56;
        }

        if (v20)
        {
LABEL_60:
          do
          {
LABEL_56:
            v41 = *a2++;
            *v13++ = v41;
          }

          while (v41);
          return 0;
        }

        return 0xFFFFFFFFLL;
      }

      if (v42 && *(a6 + 8) > v42)
      {
        j__mkostemp((*a6 + 8 * v42), *a6 + 8 * v42 + 8);
        --*(a6 + 8);
      }

      free(v14);
      goto LABEL_46;
    }

LABEL_29:
    if (a4 >= 1)
    {
      v29 = 0;
      for (i = v11; *i && *i != 61; ++i)
      {
        v29 += 0x100000000;
      }

      v31 = j__strsignal_r(a2, v15, v16);
      v32 = malloc_type_malloc(v31 + (v29 >> 32) + 2, 0x430A4455uLL);
      v33 = SHIDWORD(v42);
      *&(*a5)[8 * SHIDWORD(v42)] = v32;
      if (v32)
      {
        _owned_ptr_add(a6, *&(*a5)[8 * v33]);
        v34 = *&(*a5)[8 * SHIDWORD(v42)];
        while (1)
        {
          ++v34;
          v35 = *v11;
          *(v34 - 1) = v35;
          if (!v35 || v35 == 61)
          {
            break;
          }

          ++v11;
        }

        *(v34 - 1) = 61;
        do
        {
          v36 = *a2++;
          *v34++ = v36;
        }

        while (v36);
        return 0;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_46:
    if (a4 < 0)
    {
      v37 = j__strsignal_r(v11, v15, v16);
      v38 = malloc_type_malloc(v37 + 1, 0x99ACB16EuLL);
      if (!v38)
      {
        return 0xFFFFFFFFLL;
      }

      v39 = v38;
      _owned_ptr_add(a6, v38);
      j__mkdtempat_np(v39, v11);
      v11 = v39;
    }

    result = 0;
    *&(*a5)[8 * SHIDWORD(v42)] = v11;
    return result;
  }

  return 0;
}

uint64_t _owned_ptr_search(uint64_t a1, unint64_t a2, int *a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - 1;
  v5 = *(*a1 + 8 * (v3 - 1));
  if (v5 < a2)
  {
    result = 0xFFFFFFFFLL;
    if (!a3)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v5 == a2)
  {
LABEL_14:
    result = 0;
    if (!a3)
    {
      return result;
    }

LABEL_3:
    *a3 = v4;
    return result;
  }

  if (v3 < 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = v4;
    do
    {
      v4 = (v8 + v7) / 2;
      v9 = *(*a1 + 8 * v4);
      if (v9 >= a2)
      {
        if (v9 <= a2)
        {
          goto LABEL_14;
        }

        v8 = (v8 + v7) / 2;
      }

      else
      {
        v7 = (v8 + v7) / 2;
      }
    }

    while (v8 - v7 > 1);
  }

  result = 0xFFFFFFFFLL;
  v4 = v7;
  if (a3)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t atexit_register(_OWORD *a1)
{
  v1 = __atexit;
  if (!__atexit)
  {
    atexit_register_cold_1();
  }

  pthread_mutex_lock(&atexit_mutex);
  v3 = v1[2];
  if (v3 >= 32)
  {
    v4 = __atexit;
    while (1)
    {
      pthread_mutex_unlock(&atexit_mutex);
      v5 = malloc_type_malloc(0x410uLL, 0x10A00403E527AF6uLL);
      if (!v5)
      {
        return 0xFFFFFFFFLL;
      }

      v1 = v5;
      pthread_mutex_lock(&atexit_mutex);
      v6 = __atexit;
      if (v4 == __atexit)
      {
        break;
      }

      pthread_mutex_unlock(&atexit_mutex);
      free(v1);
      pthread_mutex_lock(&atexit_mutex);
      v4 = __atexit;
      v3 = *(__atexit + 8);
      if (v3 <= 31)
      {
        v1 = __atexit;
        goto LABEL_10;
      }
    }

    v3 = 0;
    v1[2] = 0;
    *v1 = v6;
    __atexit = v1;
  }

LABEL_10:
  v8 = &v1[8 * v3];
  v1[2] = v3 + 1;
  v9 = a1[1];
  *(v8 + 1) = *a1;
  *(v8 + 2) = v9;
  __atexit_new_registration = 1;
  pthread_mutex_unlock(&atexit_mutex);
  return 0;
}

int __cxa_atexit(void (*lpfunc)(void *), void *obj, void *lpdso_handle)
{
  *(&v4 + 1) = lpfunc;
  *&v4 = 2;
  v5 = obj;
  v6 = lpdso_handle;
  return atexit_register(&v4);
}

uint64_t _owned_ptr_add(uint64_t a1, unint64_t a2)
{
  v8 = 0;
  result = _owned_ptr_search(a1, a2, &v8);
  if (result)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *a1;
    if (v5 >= v6)
    {
      result = malloc_type_realloc(*a1, 16 * v6, 0xC0040B8AA526DuLL);
      if (!result)
      {
        return result;
      }

      v7 = result;
      *a1 = result;
      *(a1 + 12) = 2 * v6;
    }

    result = j__mkostemp(&v7[8 * v8 + 16], v7 + 8 * v8 + 8);
    *&v7[8 * v8 + 8] = a2;
    *(a1 + 8) = v5 + 1;
  }

  return result;
}

size_t __strlcat_chk(unint64_t a1, char *__sig, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  v7 = j__strsignal_r(__sig, __sig, a3);
  v8 = MEMORY[0x193AD6A70](a1, a3);
  v9 = a3 - v8;
  if (a3 == v8)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
    if (v7 >= v9)
    {
      __chk_overlap(a1, a3, __sig, v9 - 1);
      j__mkdtempat_np(a1 + v10, __sig);
      *(a1 + a3 - 1) = 0;
    }

    else
    {
      __chk_overlap(a1, v7 + 1 + v8, __sig, v7 + 1);
      j__mkdtempat_np(a1 + v10, __sig);
    }
  }

  return v10 + v7;
}

int mkstemp(char *a1)
{
  v2 = 0;
  if (find_temp_path(4294967294, a1, 0, 1, _mkostemps_action, 0, &v2))
  {
    return v2;
  }

  else
  {
    return -1;
  }
}

uint64_t _os_crash(uint64_t result)
{
  qword_1EAC9CAC0 = result;
  if (_os_crash_callback)
  {
    return _os_crash_callback();
  }

  return result;
}

uint64_t rb_tree_reparent_nodes(uint64_t result, unsigned int a2)
{
  v2 = *(result + 16);
  v3 = *(result + 8 * a2);
  *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 8 * ((v2 >> 1) & 1)) = v3;
  *(result + 8 * a2) = *(v3 + 8 * (a2 ^ 1));
  *(v3 + 8 * (a2 ^ 1)) = result;
  *(v3 + 16) = v2 & 0xFFFFFFFFFFFFFFFCLL | *(v3 + 16) & 3;
  v4 = *(result + 16) & 3 | v3;
  *(result + 16) = v4;
  v5 = *(v3 + 16);
  v6 = (v5 ^ v4) & 3;
  *(v3 + 16) = v6 ^ v5;
  *(result + 16) = (*(result + 16) ^ v6) & 0xFFFFFFFFFFFFFFFDLL | (2 * (a2 != 1));
  v7 = *(result + 8 * a2);
  if (v7)
  {
    *(v7 + 16) = *(v7 + 16) & 1 | result & 0xFFFFFFFFFFFFFFFDLL | (2 * (a2 != 0));
  }

  return result;
}

char *__cdecl strncat(char *__s1, const char *__s2, size_t __n)
{
  v3 = __n;
  v6 = j__strsignal_r(__s1, __s2, __n);
  v7 = MEMORY[0x193AD6A70](__s2, v3);
  if (v7 < v3)
  {
    v3 = v7;
  }

  v8 = &__s1[v6];
  j__mkdtempat_np(v8, __s2);
  v8[v3] = 0;
  return __s1;
}

char *__cdecl strnstr(const char *__big, const char *__little, size_t __len)
{
  v4 = __little + 1;
  v5 = *__little;
  if (*__little)
  {
    v9 = j__strsignal_r(__little + 1, __little, __len);
    for (i = __len - 1; i != -1 && *__big; --i)
    {
      if (*__big == v5)
      {
        if (v9 > i)
        {
          return 0;
        }

        if (!j__strsvisx(__big + 1, v4, v9, v7, v8))
        {
          return __big;
        }
      }

      ++__big;
    }

    return 0;
  }

  return __big;
}

char *__cdecl dirname_r(const char *a1, char *a2)
{
  v3 = a2;
  if (a1 && *a1)
  {
    v5 = j__strsignal_r(a1, a2, v2);
    if (v5 >= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    while (v5 >= 2)
    {
      v7 = v5 - 1;
      v8 = a1[--v5];
      if (v8 != 47)
      {
        v6 = v7 + 1;
        break;
      }
    }

    v9 = v6 & (v6 >> 63);
    v10 = v6;
    while (1)
    {
      v11 = v10 - 1;
      if (v10 < 1)
      {
        break;
      }

      v12 = a1[--v10];
      if (v12 == 47)
      {
        v9 = v11 + 1;
        goto LABEL_16;
      }
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    if (v9 >= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v9;
    }

    while (v9 >= 2)
    {
      v15 = v9 - 1;
      v16 = a1[--v9];
      if (v16 != 47)
      {
        v14 = v15 + 1;
        break;
      }
    }

    if (v14 < 0x400)
    {
      j__mkostemp(v3, a1);
      v3[v14] = 0;
    }

    else
    {
      v3 = 0;
      *__error() = 63;
    }
  }

  else
  {
LABEL_14:
    *v3 = 46;
  }

  return v3;
}

char *__cdecl basename_r(const char *a1, char *a2)
{
  v3 = a2;
  if (a1 && *a1)
  {
    v5 = j__strsignal_r(a1, a2, v2);
    if (v5 >= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    while (v5 >= 2)
    {
      v7 = v5 - 1;
      v8 = a1[--v5];
      if (v8 != 47)
      {
        v6 = v7 + 1;
        break;
      }
    }

    v9 = &a1[v6 - 1];
    v10 = 1;
    do
    {
      v11 = v9;
      v12 = v10;
      if (v9 <= a1)
      {
        break;
      }

      --v9;
      ++v10;
    }

    while (*(v11 - 1) != 47);
    if (v12 < 0x400)
    {
      j__mkdtempat_np(v3, v11);
      v3[v12] = 0;
    }

    else
    {
      v3 = 0;
      *__error() = 63;
    }
  }

  else
  {
    *a2 = 46;
  }

  return v3;
}

uint64_t __memset_chk(char *a1, int a2, unint64_t a3, unint64_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  return j__mkostemps(a1, a2, a3);
}

char *__cdecl mktemp(char *a1)
{
  if (find_temp_path(4294967294, a1, 0, 0, _mktemp_action, 0, 0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _mktemp_action(int a1, const char *a2)
{
  memset(&v3, 0, sizeof(v3));
  if (fstatat(a1, a2, &v3, 32))
  {
    return 2 * (*__error() != 2);
  }

  else
  {
    return 1;
  }
}

int asprintf(char **a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__global_locale;
  }

  return vasprintf_l(a1, v5, a2, va);
}

int sysctl(int *a1, u_int a2, void *a3, size_t *a4, void *a5, size_t a6)
{
  if (*a1 != 8)
  {
    if (a2 != 2 || *a1 != 1 || a1[1] != 45)
    {
      return __sysctl();
    }

    if (a5)
    {
      goto LABEL_3;
    }

    if (a3)
    {
      if (!a4)
      {
        v6 = __error();
        v7 = 14;
        goto LABEL_4;
      }

      if (*a4 <= 1)
      {
        goto LABEL_22;
      }

      result = 0;
      *a3 = 47;
    }

    else
    {
      result = 0;
      if (!a4)
      {
        return result;
      }
    }

    v10 = 2;
LABEL_27:
    *a4 = v10;
    return result;
  }

  if (a5)
  {
LABEL_3:
    v6 = __error();
    v7 = 1;
LABEL_4:
    *v6 = v7;
    return -1;
  }

  if (a2 != 2)
  {
LABEL_30:
    v6 = __error();
    v7 = 22;
    goto LABEL_4;
  }

  v9 = a1[1];
  if (v9 == 1)
  {
    if (a3)
    {
      if (*a4 > 0x1D)
      {
        result = 0;
        *a4 = 30;
        strcpy(a3, "/usr/bin:/bin:/usr/sbin:/sbin");
        return result;
      }

LABEL_22:
      v6 = __error();
      v7 = 12;
      goto LABEL_4;
    }

    result = 0;
    v10 = 30;
    goto LABEL_27;
  }

  if (!a3)
  {
    result = 0;
    v10 = 4;
    goto LABEL_27;
  }

  if (*a4 <= 3)
  {
    goto LABEL_22;
  }

  *a4 = 4;
  switch(v9)
  {
    case 2:
    case 4:
      result = 0;
      v11 = 99;
      goto LABEL_40;
    case 3:
    case 8:
      result = 0;
      v11 = 2048;
      goto LABEL_40;
    case 5:
      result = 0;
      v11 = 1000;
      goto LABEL_40;
    case 6:
      result = 0;
      v11 = 2;
      goto LABEL_40;
    case 7:
      result = 0;
      v11 = 32;
      goto LABEL_40;
    case 9:
    case 20:
      result = 0;
      v11 = 255;
      goto LABEL_40;
    case 10:
      result = 0;
      v11 = 200112;
      goto LABEL_40;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
      result = 0;
      *a3 = 0;
      return result;
    case 19:
      result = 0;
      v11 = 20;
LABEL_40:
      *a3 = v11;
      break;
    default:
      goto LABEL_30;
  }

  return result;
}

uint64_t _fixtelldir(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 128);
  v4 = *v3;
  if (*v3 && *(v4 + 32) == a3 && *(v4 + 24) == a2)
  {
    v5 = *(result + 8);
    *(v4 + 24) = v3[2];
    *(v4 + 32) = v5;
  }

  return result;
}

dirent *__cdecl readdir(DIR *a1)
{
  pthread_mutex_lock(&a1->__dd_lock);
  v2 = _readdir_unlocked(a1, 1);
  pthread_mutex_unlock(&a1->__dd_lock);
  return v2;
}

int closedir(DIR *a1)
{
  pthread_mutex_lock(&a1->__dd_lock);
  a1->__dd_fd = -1;
  a1->__dd_loc = 0;
  free(a1->__dd_buf);
  _reclaim_telldir(a1);
  pthread_mutex_unlock(&a1->__dd_lock);
  pthread_mutex_destroy(&a1->__dd_lock);
  free(a1);

  return close_NOCANCEL();
}

uint64_t __opendir_common(int a1, int a2, int a3)
{
  v6 = malloc_type_malloc(0xA0uLL, 0x10300408E0C5890uLL);
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  *(v6 + 3) = 0;
  *v6 = a1;
  *(v6 + 14) = a2;
  *(v6 + 1) = 0;
  *(v6 + 8) = 850045863;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 17) = 0;
  *(v6 + 15) = 0;
  *(v6 + 16) = v6 + 136;
  *(v6 + 18) = 0;
  if ((a2 & 2) != 0)
  {
    if (__kernel_supports_unionfs_kernel_supports_unionfs == 255)
    {
      v15 = 0;
      *&v16.f_bsize = 4;
      sysctlbyname("kern.secure_kernel", &v15, &v16.f_bsize, 0, 0);
      __kernel_supports_unionfs_kernel_supports_unionfs = v15 == 0;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else if (!__kernel_supports_unionfs_kernel_supports_unionfs)
    {
      goto LABEL_9;
    }

    memset(&v16, 0, 512);
    if (fstatfs(a1, &v16) < 0)
    {
LABEL_19:
      v13 = *__error();
      free(*(v7 + 24));
      free(v7);
      v7 = 0;
      *__error() = v13;
      return v7;
    }

    if ((v16.f_flags & 0x20) != 0)
    {
      if (_filldir(v7, a3))
      {
        v12 = *(v7 + 56) | 8;
LABEL_22:
        *(v7 + 56) = v12;
        return v7;
      }

      goto LABEL_19;
    }
  }

LABEL_9:
  *(v7 + 32) = 2048;
  v8 = malloc_type_malloc(0x800uLL, 0x9F650C1DuLL);
  *(v7 + 24) = v8;
  if (!v8)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    v9 = &v8[*(v7 + 32)];
    *(v9 - 1) = 0;
    v10 = __getdirentries64();
    *(v7 + 16) = v10;
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 <= *(v7 + 32) - 4)
      {
        v11 = *(v7 + 56) | (32 * (*(v9 - 1) & 1));
      }

      else
      {
        v11 = *(v7 + 56);
      }

      v12 = v11 | 0x10;
      goto LABEL_22;
    }

    if (*__error() == 22)
    {
      *__error() = 20;
    }

    goto LABEL_19;
  }

  *(v7 + 16) = 0;
  *(*(v7 + 128) + 16) = 0;
  return v7;
}

void *_reclaim_telldir(uint64_t a1)
{
  v2 = *(a1 + 128);
  result = *v2;
  if (*v2)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  *v2 = 0;
  return result;
}

int sysctlbyname(const char *a1, void *a2, size_t *a3, void *a4, size_t a5)
{
  j__strsignal_r(a1, a2, a3);
  result = __sysctl();
  if ((result & 0x80000000) == 0)
  {
    return __sysctl();
  }

  return result;
}

int isatty(int a1)
{
  v4 = 0;
  memset(&v5, 0, sizeof(v5));
  if (ioctl(a1, 0x4004667AuLL, &v4) == -1)
  {
    return tcgetattr(a1, &v5) != -1;
  }

  if (v4 == 3)
  {
    return 1;
  }

  v3 = __error();
  result = 0;
  *v3 = 25;
  return result;
}

double __guard_setup(char **a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = a1;
  if (a1)
  {
    v6 = *a1;
    if (*a1)
    {
      do
      {
        if (!j__strsvisx(v6, "stack_guard", 0xBuLL, a4, a5))
        {
          j__strmode(v6, 0x3D);
          if (v7)
          {
            v10 = 0;
            v11 = v7 + 1;
            do
            {
              MEMORY[0x193AD6A30](__str, v11, 20);
              j__strmode(__str, 0x2C);
              if (v12)
              {
                *v12 = 0;
              }

              __stack_chk_guard[v10] = strtoull(__str, 0, 0);
              j__strmode(v11, 0x2C);
              if (v13)
              {
                v11 = v13 + 1;
              }

              else
              {
                v11 = 0;
              }

              if (!v13)
              {
                break;
              }
            }

            while (v10++ < 7);
            v6 = *v5;
          }

          v15 = j__strsignal_r(v6, v8, v9);
          MEMORY[0x193AD5FD0](v6, v15);
        }

        v16 = v5[1];
        ++v5;
        v6 = v16;
      }

      while (v16);
    }
  }

  if (open_NOCANCEL() != -1)
  {
    read_NOCANCEL();
    close_NOCANCEL();
  }

  *&result = 0xF5000000F5;
  LODWORD(__stack_chk_guard[0]) = 245;
  return result;
}

uint64_t __xlocale_init()
{
  if (__locale_key == -1)
  {
    __locale_key = 10;
    return pthread_key_init_np();
  }

  return result;
}

uint64_t _subsystem_init()
{
  result = _simple_getenv();
  if (result)
  {
    subsystem_root_path = result;
  }

  return result;
}

char *__cdecl stpncpy(char *__dst, const char *__src, size_t __n)
{
  v6 = MEMORY[0x193AD6A70](__src, __n);
  v7 = __n - v6;
  if (__n <= v6)
  {
    j__mkdtempat_np(__dst, __src);
    return &__dst[__n];
  }

  else
  {
    v8 = v6;
    j__mkdtempat_np(__dst, __src);
    MEMORY[0x193AD5FD0](&__dst[v8], v7);
    return &__dst[v8];
  }
}

uint64_t find_temp_path(uint64_t a1, const char *a2, unsigned int a3, int a4, uint64_t (*a5)(uint64_t, const char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  memset(&v29, 0, sizeof(v29));
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v13 = 0;
    ;
  }

  if (v13 - 1 >= 1024)
  {
    v15 = __error();
    result = 0;
    v17 = 63;
LABEL_9:
    *v15 = v17;
    return result;
  }

  v18 = &a2[v13 - a3];
  v19 = (v18 - 2);
  if (v18 - 2 < a2 || (v20 = v18 - 1, j__strmode(v18 - 1, 0x2F), v21))
  {
LABEL_8:
    v15 = __error();
    result = 0;
    v17 = 22;
    goto LABEL_9;
  }

  do
  {
    if (*v19 != 88)
    {
      break;
    }

    *v19-- = padchar[arc4random_uniform(0x3Eu)];
  }

  while (v19 >= a2);
  v28 = v19 + 1;
  j__mkdtempat_np(v30, v19 + 1);
  if (v19 <= a2 || !a4)
  {
LABEL_17:
    v22 = a5(a1, a2, a6, a7);
    if (!v22)
    {
      return 1;
    }

    if (v22 == 2)
    {
      return 0;
    }

    if (v20 == v28)
    {
LABEL_27:
      v15 = __error();
      result = 0;
      v17 = 17;
    }

    else
    {
      v23 = v30;
      v24 = v28;
      while (1)
      {
        v25 = j__mkdirx_np("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", *v24);
        if (!v25)
        {
          break;
        }

        if (*(v25 + 1))
        {
          v26 = *(v25 + 1);
        }

        else
        {
          v26 = 48;
        }

        *v24 = v26;
        if (v26 != *v23)
        {
          goto LABEL_17;
        }

        ++v24;
        ++v23;
        if (v20 == v24)
        {
          goto LABEL_27;
        }
      }

      v15 = __error();
      result = 0;
      v17 = 5;
    }

    goto LABEL_9;
  }

  while (*v19 != 47)
  {
    if (--v19 <= a2)
    {
      goto LABEL_17;
    }
  }

  *v19 = 0;
  v27 = fstatat(a1, a2, &v29, 0);
  result = 0;
  *v19 = 47;
  if (!v27)
  {
    if ((v29.st_mode & 0xF000) != 0x4000)
    {
      v15 = __error();
      result = 0;
      v17 = 20;
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  return result;
}

char *__cdecl realpath_DARWIN_EXTSN(const char *a1, char *a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  memset(&v45, 0, sizeof(v45));
  memset(&v47, 0, 512);
  if (!v2)
  {
    v13 = __error();
    v6 = 0;
    v14 = 22;
LABEL_14:
    *v13 = v14;
    return v6;
  }

  v4 = v2;
  if (!*v2)
  {
    v13 = __error();
    v6 = 0;
    v14 = 2;
    goto LABEL_14;
  }

  v5 = v3;
  v6 = v3;
  if (!v3)
  {
    v6 = malloc_type_malloc(0x400uLL, 0x4A14BC86uLL);
    if (!v6)
    {
      return v6;
    }
  }

  if ((realpath_DARWIN_EXTSN_rootdev_inited & 1) == 0)
  {
    realpath_DARWIN_EXTSN_rootdev_inited = 1;
    if (stat("/", &v45) < 0)
    {
      goto LABEL_90;
    }

    realpath_DARWIN_EXTSN_rootdev = v45.st_dev;
  }

  __error();
  if (*v4 == 47)
  {
    *v6 = 47;
    v8 = v4[1];
    v7 = v4 + 1;
    if (!v8)
    {
      return v6;
    }

    v9 = MEMORY[0x193AD6A30](v51, v7, 1024);
    if (v9 >= 0x400)
    {
      goto LABEL_87;
    }

    v10 = v9;
    v11 = &realpath_DARWIN_EXTSN_rootdev;
    v12 = 1;
  }

  else
  {
    if (!__private_getcwd(v6, 1024, 1))
    {
      *v6 = 46;
      goto LABEL_90;
    }

    v12 = j__strsignal_r(v6, v16, v17);
    v18 = MEMORY[0x193AD6A30](v51, v4, 1024);
    if (v18 > 0x3FF || v12 > 0x3FF)
    {
      goto LABEL_87;
    }

    v10 = v18;
    if (v12 < 2)
    {
      v11 = &realpath_DARWIN_EXTSN_rootdev;
    }

    else
    {
      v11 = &v45;
      if (stat(v6, &v45) < 0)
      {
        goto LABEL_90;
      }
    }
  }

  if (!v10)
  {
LABEL_84:
    if (v12 >= 2 && v6[v12 - 1] == 47)
    {
      v6[v12 - 1] = 0;
    }

    return v6;
  }

  v42 = 0;
  v43 = 0;
  LODWORD(v19) = 0;
  st_dev = v11->st_dev;
  while (2)
  {
    v44 = v19;
    v19 = st_dev;
    while (1)
    {
      v21 = v19;
      j__strmode(v51, 0x2F);
      v23 = v22;
      v24 = v22 - v51;
      if (v22)
      {
        v25 = v22 - v51;
      }

      else
      {
        v25 = v10;
      }

      j__mkdtempat_np(&v49, v51);
      *(&v49 + v25) = 0;
      if (v23)
      {
        j__mkostemp(v51, v23 + 1);
        v10 += ~v24;
      }

      else
      {
        v10 = 0;
        v51[0] = 0;
      }

      v19 = v21;
      if (v6[v12 - 1] != 47)
      {
        if (v12 + 1 >= 0x400)
        {
          goto LABEL_87;
        }

        v6[v12] = 47;
        v6[++v12] = 0;
      }

      if (!v49 || v49 == 46)
      {
        goto LABEL_41;
      }

      if (v49 ^ 0x2E2E | v50)
      {
        break;
      }

      if (v12 >= 2)
      {
        v6[v12 - 1] = 0;
        v26 = strrchr(v6, 47);
        v26[1] = 0;
        v12 = v26 + 1 - v6;
      }

LABEL_41:
      if (!v10)
      {
        goto LABEL_84;
      }
    }

    v27 = MEMORY[0x193AD6A20](v6, &v49, 1024);
    if (v27 >= 0x400)
    {
      goto LABEL_87;
    }

    v28 = v27;
    if (!getattrlist(v6, &_rp_alist, &v52, 0x41CuLL, 1u))
    {
      v30 = 0;
      v31 = HIDWORD(v52);
      HIDWORD(v42) = v53 == 5;
      st_ino = DWORD1(v53);
      goto LABEL_52;
    }

    if (*__error() != 45 && *__error() != 22)
    {
      goto LABEL_90;
    }

    v29 = lstat(v6, &v45);
    if (!v29)
    {
      HIDWORD(v42) = (v45.st_mode & 0xF000) == 40960;
      v31 = v45.st_dev;
      v30 = 1;
      st_ino = v45.st_ino;
LABEL_52:
      v43 = st_ino;
LABEL_53:
      v44 = v31;
      if (v31 != v19)
      {
        if (statfs(v6, &v47))
        {
          v19 = v44;
        }

        else
        {
          v19 = v44;
          if (!lstat(v47.f_mntonname, &v45) && v44 == v45.st_dev && v43 == v45.st_ino)
          {
            j__strnstr(__big, v47.f_mntonname, v33);
            do
            {
              v34 = strrchr(__big, 47);
              if (!v34)
              {
                break;
              }

              if (v34 <= __big)
              {
                v12 = MEMORY[0x193AD6A30](v6, v47.f_mntonname, 1024);
                goto LABEL_41;
              }

              *v34 = 0;
            }

            while ((lstat(__big, &v45) & 0x80000000) == 0 && (v45.st_mode & 0xF000) == 0x4000);
          }
        }
      }

      if (!HIDWORD(v42))
      {
        if (v30)
        {
          v12 = v28;
        }

        else
        {
          v6[v12] = 0;
          v38 = MEMORY[0x193AD6A20](v6, &v52 + SDWORD1(v52) + 4, 1024);
          if (v38 >= 0x400)
          {
            goto LABEL_87;
          }

          v12 = v38;
        }

        st_dev = v19;
LABEL_83:
        if (!v10)
        {
          goto LABEL_84;
        }

        continue;
      }

      if (v42 >= 0x21)
      {
        v39 = __error();
        v40 = 62;
        goto LABEL_89;
      }

      v35 = readlink(v6, v48, 0x400uLL);
      v36 = v35;
      if ((v35 - 1024) <= 0xFFFFFFFFFFFFFC00)
      {
        if (v35 < 0)
        {
          goto LABEL_90;
        }

        v39 = __error();
        if (!v36)
        {
          v40 = 2;
          goto LABEL_89;
        }

        goto LABEL_88;
      }

      v48[v35] = 0;
      if (v48[0] == 47)
      {
        v6[1] = 0;
        st_dev = realpath_DARWIN_EXTSN_rootdev;
        v12 = 1;
      }

      else
      {
        v37 = strrchr(v6, 47);
        v37[1] = 0;
        v12 = v37 + 1 - v6;
        st_dev = v19;
      }

      if (!v23)
      {
        goto LABEL_79;
      }

      if (v48[v36 - 1] != 47)
      {
        if (v36 >= 0x3FF)
        {
          goto LABEL_87;
        }

        *&v48[v36] = 47;
      }

      if (MEMORY[0x193AD6A20](v48, v51, 1024) < 0x400)
      {
LABEL_79:
        LODWORD(v42) = v42 + 1;
        v10 = MEMORY[0x193AD6A30](v51, v48, 1024);
        goto LABEL_83;
      }

LABEL_87:
      v39 = __error();
LABEL_88:
      v40 = 63;
LABEL_89:
      *v39 = v40;
      goto LABEL_90;
    }

    break;
  }

  if ((v29 & 0x80000000) == 0)
  {
    v30 = 0;
    v31 = v44;
    goto LABEL_53;
  }

LABEL_90:
  if (v5)
  {
    return 0;
  }

  v41 = *__error();
  free(v6);
  v6 = 0;
  *__error() = v41;
  return v6;
}

char *__cdecl strerror(int __errnum)
{
  if ((__errnum & 0x80000000) == 0 && __errnum < 108)
  {
    return sys_errlist[__errnum];
  }

  v3 = __strerror_ebuf;
  if (__strerror_ebuf || (result = malloc_type_calloc(1uLL, 0x800uLL, 0x4D8BB7E5uLL), v3 = result, (__strerror_ebuf = result) != 0))
  {
    if (strerror_r(__errnum, v3, 0x800uLL))
    {
      *__error() = 22;
    }

    return __strerror_ebuf;
  }

  return result;
}

void rewinddir(DIR *a1)
{
  pthread_mutex_lock(&a1->__dd_lock);
  dd_flags = a1->__dd_flags;
  a1->__dd_flags = dd_flags & 0xFFFFFFCF;
  if ((dd_flags & 8) != 0)
  {
    _filldir(a1, 0);
  }

  else
  {
    lseek(a1->__dd_fd, 0, 0);
    *(a1->__dd_td + 2) = 0;
  }

  a1->__dd_loc = 0;
  _reclaim_telldir(a1);

  pthread_mutex_unlock(&a1->__dd_lock);
}

int readdir_r(DIR *a1, dirent *a2, dirent **a3)
{
  v6 = *__error();
  *__error() = 0;
  pthread_mutex_lock(&a1->__dd_lock);
  v7 = _readdir_unlocked(a1, 1);
  if (v7)
  {
    j__mkdtempat_np(a2, v7);
  }

  pthread_mutex_unlock(&a1->__dd_lock);
  if (*__error())
  {
    if (!v7)
    {
      return *__error();
    }
  }

  else
  {
    *__error() = v6;
  }

  result = 0;
  if (v7)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

int mkostempsat_np(int dfd, char *path, int slen, int oflags)
{
  v6 = oflags;
  v5 = 0;
  if ((oflags & 0xFEFFFFC7) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else if (find_temp_path(*&dfd, path, slen, 1, _mkostemps_action, &v6, &v5))
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

int sysctlnametomib(const char *a1, int *a2, size_t *a3)
{
  *a3 *= 4;
  j__strsignal_r(a1, a2, a3);
  result = __sysctl();
  *a3 >>= 2;
  return result;
}

DIR *__cdecl fdopendir(int a1)
{
  memset(&v4, 0, sizeof(v4));
  if (fstat(a1, &v4))
  {
    return 0;
  }

  if ((v4.st_mode & 0xF000) == 0x4000)
  {
    if (fcntl_NOCANCEL() == -1)
    {
      return 0;
    }

    return __opendir_common(a1, 3, 1);
  }

  else
  {
    v3 = __error();
    result = 0;
    *v3 = 20;
  }

  return result;
}

uint64_t _mkostemps_action(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = openat_NOCANCEL();
  if (v5 < 0)
  {
    if (*__error() == 17)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v6 = v5;
    result = 0;
    *a4 = v6;
  }

  return result;
}

char *_st_fmt(char *a1, unsigned int *a2, char *a3, char *a4, int *a5, void *a6, _xlocale *a7)
{
  v14 = a6 + 24;
  v15 = a6 + 31;
  while (*a1 == 37)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 12;
    while (2)
    {
      v21 = *++a1;
      v20 = v21;
      switch(v21)
      {
        case '+':
          v39 = a6[43];
          goto LABEL_170;
        case ',':
        case '.':
        case '/':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
        case ':':
        case ';':
        case '<':
        case '=':
        case '>':
        case '?':
        case '@':
        case 'J':
        case 'K':
        case 'L':
        case 'N':
        case 'P':
        case 'Q':
        case '[':
        case '\\':
        case ']':
        case '^':
        case 'f':
        case 'i':
        case 'o':
        case 'q':
          goto LABEL_4;
        case '-':
          if (v18)
          {
            goto LABEL_4;
          }

          v18 = 1;
          continue;
        case '0':
          if (v18)
          {
            goto LABEL_4;
          }

          v18 = 3;
          continue;
        case 'A':
          v84 = a2[6];
          if (v84 <= 6)
          {
            v85 = v15[v84];
          }

          else
          {
            v85 = "?";
          }

          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          while (1)
          {
            v98 = *v85;
            *a3 = v98;
            if (!v98)
            {
              goto LABEL_231;
            }

            ++v85;
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'B':
          v86 = a2[4];
          if (v86 <= 0xB)
          {
            v87 = a6[v19 + v86];
          }

          else
          {
            v87 = "?";
          }

          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          while (1)
          {
            v99 = *v87;
            *a3 = v99;
            if (!v99)
            {
              goto LABEL_231;
            }

            ++v87;
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'C':
          v25 = a2[5];
          v27 = 1900;
          v53 = 1;
          v54 = 0;
          goto LABEL_127;
        case 'D':
          v39 = "%m/%d/%y";
          goto LABEL_170;
        case 'E':
          v19 = 12;
          v23 = v16 | v17;
          v17 = 0;
          v16 = 1;
          if (v23)
          {
            goto LABEL_4;
          }

          continue;
        case 'F':
          v39 = "%Y-%m-%d";
          goto LABEL_170;
        case 'G':
        case 'V':
        case 'g':
          v24 = a2[7];
          v25 = a2[5];
          v26 = v25 % 400;
          v27 = 1901;
          while (2)
          {
            v28 = (v27 - 1) % 400 + v26;
            if ((v28 & 3) != 0)
            {
              v29 = 365;
            }

            else if ((((23593 * v28 + 1308) << 14) | ((23593 * v28 + 1308) >> 2)) <= 0x28Eu)
            {
              if ((((23593 * v28 + 1296) << 12) | ((23593 * v28 + 1296) >> 4)) >= 0xA3u)
              {
                v29 = 365;
              }

              else
              {
                v29 = 366;
              }
            }

            else
            {
              v29 = 366;
            }

            v30 = (v24 - a2[6] + 11) % 7 - 3;
            v31 = v30 - (v29 - 7 * ((((v29 - ((9363 * v29) >> 16)) >> 1) + ((9363 * v29) >> 16)) >> 2));
            if (v31 < -3)
            {
              v31 += 7;
            }

            if (v24 >= v31 + v29)
            {
              v36 = 1;
            }

            else
            {
              if (v24 < v30)
              {
                v32 = (v27 - 2) % 400 + v26;
                if ((v32 & 3) != 0)
                {
                  v33 = 365;
                }

                else if ((((23593 * v32 + 1308) << 14) | ((23593 * v32 + 1308) >> 2)) <= 0x28Eu)
                {
                  if ((((23593 * v32 + 1296) << 12) | ((23593 * v32 + 1296) >> 4)) >= 0xA3u)
                  {
                    v33 = 365;
                  }

                  else
                  {
                    v33 = 366;
                  }
                }

                else
                {
                  v33 = 366;
                }

                v24 += v33;
                --v27;
                continue;
              }

              v36 = ((v24 - v30) / 7 + 1);
              --v27;
            }

            break;
          }

          if (v20 == 103)
          {
            *a5 = 3;
LABEL_124:
            v53 = 0;
            goto LABEL_126;
          }

          if (v20 != 86)
          {
LABEL_125:
            v53 = 1;
LABEL_126:
            v54 = 1;
LABEL_127:
            v71 = _yconv(v25, v27, v53, v54, a3, a4, a7);
LABEL_171:
            a3 = v71;
            goto LABEL_231;
          }

          sprintf_l(&v110, a7, fmt_padding[v18], v36);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v37 = &v110;
          do
          {
            tm_sec_low = LOBYTE(v37->tm_sec);
            *a3 = tm_sec_low;
            if (!tm_sec_low)
            {
              goto LABEL_231;
            }

            v37 = (v37 + 1);
            ++a3;
          }

          while (a3 != a4);
LABEL_230:
          a3 = a4;
LABEL_231:
          ++a1;
          break;
        case 'H':
          sprintf_l(&v110, a7, fmt_padding[v18], a2[2]);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v61 = &v110;
          while (1)
          {
            v62 = LOBYTE(v61->tm_sec);
            *a3 = v62;
            if (!v62)
            {
              goto LABEL_231;
            }

            v61 = (v61 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'I':
          LODWORD(v50) = a2[2] % 12;
          if (v50)
          {
            v50 = v50;
          }

          else
          {
            v50 = 12;
          }

          sprintf_l(&v110, a7, fmt_padding[v18], v50);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v51 = &v110;
          while (1)
          {
            v52 = LOBYTE(v51->tm_sec);
            *a3 = v52;
            if (!v52)
            {
              goto LABEL_231;
            }

            v51 = (v51 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'M':
          sprintf_l(&v110, a7, fmt_padding[v18], a2[1]);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v47 = &v110;
          while (1)
          {
            v48 = LOBYTE(v47->tm_sec);
            *a3 = v48;
            if (!v48)
            {
              goto LABEL_231;
            }

            v47 = (v47 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'O':
          v19 = 44;
          v22 = v16 | v17;
          v16 = 0;
          v17 = 1;
          if (v22)
          {
            goto LABEL_4;
          }

          continue;
        case 'R':
          v39 = "%H:%M";
          goto LABEL_170;
        case 'S':
          sprintf_l(&v110, a7, fmt_padding[v18], *a2);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v88 = &v110;
          while (1)
          {
            v89 = LOBYTE(v88->tm_sec);
            *a3 = v89;
            if (!v89)
            {
              goto LABEL_231;
            }

            v88 = (v88 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'T':
          v39 = "%H:%M:%S";
          goto LABEL_170;
        case 'U':
          sprintf_l(&v110, a7, fmt_padding[v18], ((a2[7] - a2[6] + 7) / 7));
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v90 = &v110;
          while (1)
          {
            v91 = LOBYTE(v90->tm_sec);
            *a3 = v91;
            if (!v91)
            {
              goto LABEL_231;
            }

            v90 = (v90 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'W':
          v43 = a2[6];
          if (v43)
          {
            v44 = 1 - v43;
          }

          else
          {
            v44 = -6;
          }

          sprintf_l(&v110, a7, fmt_padding[v18], ((a2[7] + v44 + 7) / 7));
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v45 = &v110;
          while (1)
          {
            v46 = LOBYTE(v45->tm_sec);
            *a3 = v46;
            if (!v46)
            {
              goto LABEL_231;
            }

            v45 = (v45 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'X':
          v39 = a6[38];
          goto LABEL_170;
        case 'Y':
          v25 = a2[5];
          v27 = 1900;
          goto LABEL_125;
        case 'Z':
          v80 = *(a2 + 6);
          if (v80)
          {
            if (a3 >= a4)
            {
              goto LABEL_231;
            }

            do
            {
              v81 = *v80;
              *a3 = v81;
              if (!v81)
              {
                goto LABEL_231;
              }

              ++v80;
              ++a3;
            }

            while (a3 != a4);
          }

          else
          {
            v100 = a2[8];
            if ((v100 & 0x80000000) != 0 || a3 >= a4)
            {
              goto LABEL_231;
            }

            v101 = tzname[v100 != 0];
            do
            {
              v102 = *v101;
              *a3 = v102;
              if (!v102)
              {
                goto LABEL_231;
              }

              ++v101;
              ++a3;
            }

            while (a3 != a4);
          }

          goto LABEL_230;
        case '_':
          if (v18)
          {
            goto LABEL_4;
          }

          v18 = 2;
          continue;
        case 'a':
          v68 = a2[6];
          if (v68 <= 6)
          {
            v69 = v14[v68];
          }

          else
          {
            v69 = "?";
          }

          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          while (1)
          {
            v97 = *v69;
            *a3 = v97;
            if (!v97)
            {
              goto LABEL_231;
            }

            ++v69;
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'b':
        case 'h':
          v34 = a2[4];
          if (v34 <= 0xB)
          {
            v35 = a6[v34];
          }

          else
          {
            v35 = "?";
          }

          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          while (1)
          {
            v70 = *v35;
            *a3 = v70;
            if (!v70)
            {
              goto LABEL_231;
            }

            ++v35;
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'c':
          v110.tm_sec = 1;
          v49 = a6[40];
          goto LABEL_112;
        case 'd':
          sprintf_l(&v110, a7, fmt_padding[v18], a2[3]);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v92 = &v110;
          while (1)
          {
            v93 = LOBYTE(v92->tm_sec);
            *a3 = v93;
            if (!v93)
            {
              goto LABEL_231;
            }

            v92 = (v92 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'e':
          sprintf_l(&v110, a7, fmt_padding[v18 + 4], a2[3]);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v82 = &v110;
          while (1)
          {
            v83 = LOBYTE(v82->tm_sec);
            *a3 = v83;
            if (!v83)
            {
              goto LABEL_231;
            }

            v82 = (v82 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'j':
          sprintf_l(&v110, a7, fmt_padding[v18 + 8], a2[7] + 1);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v55 = &v110;
          while (1)
          {
            v56 = LOBYTE(v55->tm_sec);
            *a3 = v56;
            if (!v56)
            {
              goto LABEL_231;
            }

            v55 = (v55 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'k':
          sprintf_l(&v110, a7, fmt_padding[v18 + 4], a2[2]);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v72 = &v110;
          while (1)
          {
            v73 = LOBYTE(v72->tm_sec);
            *a3 = v73;
            if (!v73)
            {
              goto LABEL_231;
            }

            v72 = (v72 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'l':
          LODWORD(v74) = a2[2] % 12;
          if (v74)
          {
            v74 = v74;
          }

          else
          {
            v74 = 12;
          }

          sprintf_l(&v110, a7, fmt_padding[v18 + 4], v74);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v75 = &v110;
          while (1)
          {
            v76 = LOBYTE(v75->tm_sec);
            *a3 = v76;
            if (!v76)
            {
              goto LABEL_231;
            }

            v75 = (v75 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'm':
          sprintf_l(&v110, a7, fmt_padding[v18], a2[4] + 1);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v40 = &v110;
          while (1)
          {
            v41 = LOBYTE(v40->tm_sec);
            *a3 = v41;
            if (!v41)
            {
              goto LABEL_231;
            }

            v40 = (v40 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'n':
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v42 = 10;
          goto LABEL_130;
        case 'p':
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v94 = 41;
          if (a2[2] > 11)
          {
            v94 = 42;
          }

          v95 = a6[v94];
          while (1)
          {
            v96 = *v95;
            *a3 = v96;
            if (!v96)
            {
              goto LABEL_231;
            }

            ++v95;
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'r':
          v39 = a6[57];
          goto LABEL_170;
        case 's':
          v57 = *(a2 + 1);
          *&v110.tm_sec = *a2;
          *&v110.tm_mon = v57;
          *&v110.tm_isdst = *(a2 + 2);
          v110.tm_zone = *(a2 + 6);
          v58 = mktime(&v110);
          sprintf_l(v109, a7, "%ld", v58);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v59 = v109;
          while (1)
          {
            v60 = *v59;
            *a3 = v60;
            if (!v60)
            {
              goto LABEL_231;
            }

            ++v59;
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 't':
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v42 = 9;
LABEL_130:
          *a3++ = v42;
          if (a3 == a4)
          {
            goto LABEL_230;
          }

          *a3 = 0;
          goto LABEL_231;
        case 'u':
          v77 = a2[6];
          if (!v77)
          {
            v77 = 7;
          }

          sprintf_l(&v110, a7, "%d", v77);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v78 = &v110;
          while (1)
          {
            v79 = LOBYTE(v78->tm_sec);
            *a3 = v79;
            if (!v79)
            {
              goto LABEL_231;
            }

            v78 = (v78 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'v':
          v39 = "%e-%b-%Y";
LABEL_170:
          v71 = _st_fmt(v39, a2, a3, a4, a5, a6, a7);
          goto LABEL_171;
        case 'w':
          sprintf_l(&v110, a7, "%d", a2[6]);
          if (a3 >= a4)
          {
            goto LABEL_231;
          }

          v63 = &v110;
          while (1)
          {
            v64 = LOBYTE(v63->tm_sec);
            *a3 = v64;
            if (!v64)
            {
              goto LABEL_231;
            }

            v63 = (v63 + 1);
            if (++a3 == a4)
            {
              goto LABEL_230;
            }
          }

        case 'x':
          v110.tm_sec = 1;
          v49 = a6[39];
LABEL_112:
          a3 = _st_fmt(v49, a2, a3, a4, &v110, a6, a7);
          tm_sec = v110.tm_sec;
          if (v110.tm_sec == 3)
          {
            tm_sec = 2;
          }

          if (tm_sec > *a5)
          {
            *a5 = tm_sec;
          }

          goto LABEL_231;
        case 'y':
          *a5 = 3;
          v25 = a2[5];
          v27 = 1900;
          goto LABEL_124;
        case 'z':
          v65 = a2[8];
          if ((v65 & 0x80000000) != 0)
          {
            goto LABEL_231;
          }

          if (v65)
          {
            timezone = __darwin_altzone;
          }

          else
          {
            timezone = _st_get_timezone();
          }

          if (timezone >= 0)
          {
            v103 = timezone;
          }

          else
          {
            v103 = -timezone;
          }

          if (a3 >= a4)
          {
            goto LABEL_226;
          }

          if (timezone <= 0)
          {
            v104 = "+";
          }

          else
          {
            v104 = "-";
          }

          while (1)
          {
            v105 = *v104;
            *a3 = v105;
            if (!v105)
            {
              break;
            }

            ++v104;
            if (++a3 == a4)
            {
              a3 = a4;
              break;
            }
          }

LABEL_226:
          sprintf_l(&v110, a7, fmt_padding[v18 + 12], v103 / 0x3C - 60 * (((143165577 * (v103 / 0x3C)) >> 32) >> 1) + 100 * (v103 / 0xE10));
          if (a3 < a4)
          {
            v106 = &v110;
            while (1)
            {
              v107 = LOBYTE(v106->tm_sec);
              *a3 = v107;
              if (!v107)
              {
                break;
              }

              v106 = (v106 + 1);
              if (++a3 == a4)
              {
                goto LABEL_230;
              }
            }
          }

          goto LABEL_231;
        default:
          if (!v20)
          {
            --a1;
          }

          goto LABEL_4;
      }

      break;
    }
  }

  if (!*a1)
  {
    return a3;
  }

LABEL_4:
  if (a3 != a4)
  {
    *a3++ = *a1;
    goto LABEL_231;
  }

  return a3;
}

int vsprintf_l(char *a1, locale_t a2, const char *a3, va_list a4)
{
  v15 = 0u;
  v14 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v6 = 0u;
  v13 = v16;
  v20 = 0;
  v21 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16[0] = 0;
  v16[1] = 850045858;
  v5 = a1;
  v7 = a1;
  *(&v6 + 4) = 0xFFFF02087FFFFFFFLL;
  v8 = 0x7FFFFFFFLL;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  result = __v2printf(0xFFFFFFFFFFFFFFFFLL, 0, &v5);
  *v5 = 0;
  return result;
}

_BYTE *_yconv(int a1, int a2, int a3, int a4, _BYTE *a5, _BYTE *a6, locale_t a7)
{
  v9 = a5;
  v11 = 5243 * (a2 % 100 + a1 % 100);
  v12 = (v11 >> 19) + (v11 >> 31);
  v13 = a2 / 100 + a1 / 100 + v12;
  v14 = a2 % 100 + a1 % 100 - 100 * v12;
  v15 = (a2 % 100 + a1 % 100 - 100 * v12);
  if ((v14 & 0x8000) != 0 && (v16 = v13 - 1, v13 >= 1))
  {
    v17 = v15 + 100;
    if (!a3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v13 >= 0)
    {
      v18 = v13;
    }

    else
    {
      v18 = v13 + 1;
    }

    if (v13 < 0)
    {
      v19 = v15 - 100;
    }

    else
    {
      v19 = v15;
    }

    if (v15 >= 1)
    {
      v16 = v18;
    }

    else
    {
      v16 = v13;
    }

    if (v15 >= 1)
    {
      v17 = v19;
    }

    else
    {
      v17 = v15;
    }

    if (!a3)
    {
      goto LABEL_30;
    }
  }

  if (v16 || (v17 & 0x80000000) == 0)
  {
    sprintf_l(v29, a7, "%02d", v16);
    if (v9 < a6)
    {
      v23 = v29;
      while (1)
      {
        v24 = *v23;
        *v9 = v24;
        if (!v24)
        {
          break;
        }

        ++v23;
        if (++v9 == a6)
        {
LABEL_29:
          v9 = a6;
          break;
        }
      }
    }
  }

  else if (a5 < a6)
  {
    v20 = "-0";
    v21 = 2;
    while (1)
    {
      v22 = *v20++;
      *v9 = v22;
      if (!v21)
      {
        break;
      }

      ++v9;
      --v21;
      if (v9 == a6)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_30:
  if (a4)
  {
    v25 = v17 >= 0 ? v17 : -v17;
    sprintf_l(v29, a7, "%02d", v25);
    if (v9 < a6)
    {
      for (i = v29; ; ++i)
      {
        v27 = *i;
        *v9 = v27;
        if (!v27)
        {
          break;
        }

        if (++v9 == a6)
        {
          return a6;
        }
      }
    }
  }

  return v9;
}

char **__get_current_time_locale(uint64_t a1)
{
  if (*(a1 + 1315))
  {
    return (*(a1 + 1352) + 72);
  }

  else
  {
    return _C_time_locale;
  }
}

tm *__cdecl gmtime(const time_t *a1)
{
  pthread_once(&gmtime_once, gmtime_key_init);
  v2 = gmtime_key_error;
  if (gmtime_key_error)
  {
    *__error() = v2;
    return 0;
  }

  if (gmtime_key)
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  v5 = pthread_getspecific(v4);
  if (!v5)
  {
    v6 = malloc_type_malloc(0x38uLL, 0x10100404E507D7FuLL);
    if (!v6)
    {
      return 0;
    }

    v5 = v6;
    if (gmtime_key)
    {
      v7 = 13;
    }

    else
    {
      v7 = 0;
    }

    pthread_setspecific(v7, v5);
  }

  return gmtsub(a1, 0, v5);
}

double strtod_l(const char *a1, char **a2, locale_t a3)
{
  v4 = 0.0;
  _ffpp_strtoencf64_l(&v4, a1, a2, a3);
  return v4;
}

uint64_t _ffpp_strtoencf64_l(double *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = xmmword_18E989830;
  v39 = 0x136FFFFFEBBLL;
  v40 = 768;
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = 0uLL;
  v46 = 0uLL;
  result = fastParse64(&v38);
  if (!result)
  {
    return result;
  }

  v5 = WORD2(v46);
  if ((DWORD1(v46) + 22) >= 0x29)
  {
    v6 = v45;
    goto LABEL_10;
  }

  if ((DWORD1(v46) & 0x80000000) != 0)
  {
    v6 = v45;
    if (v45 <= 15)
    {
      v29 = *(&v44 + 1);
      v7 = v41;
      if (BYTE8(v46))
      {
        v29 = -*(&v44 + 1);
      }

      v9 = v29 / _ffpp_strtoencf64_l_doublePowerOf10[-DWORD1(v46)];
      goto LABEL_48;
    }
  }

  else
  {
    v6 = v45;
    if (!DWORD1(v46))
    {
      if (v45 > 19)
      {
        goto LABEL_10;
      }

      if (BYTE8(v46))
      {
        if ((*(&v44 + 1) & 0x8000000000000000) != 0)
        {
          goto LABEL_10;
        }

        v30 = -*(&v44 + 1);
      }

      else
      {
        v30 = *(&v44 + 1);
      }

      *v41 = v30;
      return result;
    }

    if (v45 <= 19)
    {
      v7 = v41;
      v8 = _ffpp_strtoencf64_l_doublePowerOf10[DWORD1(v46)];
      if (BYTE8(v46))
      {
        v8 = -v8;
      }

      v9 = (WORD4(v44) & 0x7FF) * v8 + (*(&v44 + 1) & 0xFFFFFFFFFFFFF800) * v8;
LABEL_48:
      *v7 = v9;
      return result;
    }
  }

LABEL_10:
  result = fegetround();
  if (v6 >= 20)
  {
    v10 = 80;
  }

  else
  {
    v10 = 12;
  }

  if (!(*(&v44 + 1) >> 59) && v6 >= 20)
  {
    _ffpp_strtoencf64_l_cold_3();
  }

  if (v6 >= 20)
  {
    v11 = v5 + v6 - 19;
  }

  else
  {
    v11 = v5;
  }

  v12 = __clz(*(&v44 + 1));
  v13 = (585 * v11 + 256) >> 14;
  v14 = 28 * v13;
  v15 = v11 - 28 * v13;
  v16 = (((powersOf10_Float[v15 + 70] * powersOf10_CoarseBinary64[v13 + 15]) >> 64) * (*(&v44 + 1) << v12)) >> 64;
  if (!(v16 >> 61))
  {
    _ffpp_strtoencf64_l_cold_2();
  }

  v17 = __clz(v16);
  v18 = v16 << v17;
  v19 = ((55732705 * v14) >> 24) - v12 + ((55732705 * v15) >> 24) - v17 + 66;
  HIDWORD(v21) = result;
  LODWORD(v21) = result;
  v20 = v21 >> 22;
  switch(v20)
  {
    case 3:
      v25 = 0;
      v24 = v10;
      goto LABEL_32;
    case 2:
      v22 = BYTE8(v46);
      break;
    case 1:
      v22 = BYTE8(v46) ^ 1;
      break;
    default:
      v24 = v10 | 0x400;
      v25 = 1023;
      goto LABEL_32;
  }

  v23 = v22 == 0;
  if (v22)
  {
    v24 = v10 | 0x800;
  }

  else
  {
    v24 = v10;
  }

  v25 = 2047;
  if (v23)
  {
    v25 = 0;
  }

LABEL_32:
  v26 = v25 + v18;
  if (v26 >= 0x800)
  {
    v27 = v19;
  }

  else
  {
    v27 = v19 + 1;
  }

  if (v27 >= 1025)
  {
    return overflow(&v38);
  }

  if (v27 <= -1022)
  {
    if (v27 <= 0xFFFFFBCD)
    {
      return underflow(&v38);
    }

    v31 = -1010 - v19;
    if (-1010 - v19 > 63)
    {
      return generalSlowpath(&v38, result, v47, 164);
    }

    if (v31 <= 0)
    {
      _ffpp_strtoencf64_l_cold_1();
    }

    if (v20 != 3)
    {
      if (v20 == 2)
      {
        if (BYTE8(v46))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v20 != 1)
        {
          v33 = 1 << (13 - v19);
          v32 = v33 - 1;
          v10 = v33 + v10;
LABEL_65:
          v34 = (v32 + v18) >> v31;
          if ((v10 + v18) >> v31 == v34)
          {
            v35 = 1 << (v19 + 50);
            if (v34)
            {
              v35 = v34;
            }

            v36 = 0x8000000000000000;
            if (!BYTE8(v46))
            {
              v36 = 0;
            }

            v37 = v35 | v36;
            if ((v35 | v36) != 0x10000000000000)
            {
              result = __error();
              *result = 34;
            }

            *v41 = v37;
            return result;
          }

          return generalSlowpath(&v38, result, v47, 164);
        }

        if ((BYTE8(v46) & 1) == 0)
        {
LABEL_59:
          v32 = ~(-1 << v31);
          v10 = v32 + v10;
          goto LABEL_65;
        }
      }
    }

    v32 = 0;
    goto LABEL_65;
  }

  if ((v18 + v24) >> 11 != v26 >> 11)
  {
    return generalSlowpath(&v38, result, v47, 164);
  }

  v28 = 0x8000000000000000;
  if (!BYTE8(v46))
  {
    v28 = 0;
  }

  *v41 = v28 & 0xFFF0000000000000 | ((v27 + 1022) << 52) | (v26 >> 11) & 0xFFFFFFFFFFFFFLL;
  return result;
}